# frozen_string_literal: true

require_relative "google_maps_pb_decoder/version"

module GoogleMapsPbDecoder
  class InvalidParameterError < StandardError; end

  # Original script: https://gist.github.com/jeteon/e71fa21c1feb48fe4b5eeec045229a0c
  def self.decode(str)
    parts = str.split('!').select { |s| s.size > 0 }
    root = []                      # Root elemet
    curr = root                    # Current array element being appended to
    m_stack = [root]               # Stack of "m" elements
    m_count = [parts.size]         # Number of elements to put under each level

    parts.each do |e|
      match = e.match(/\d+([a-z])(.*)/)
      if match&.size != 3
        raise InvalidParameterError.new
      end

      kind = match[1]
      value = match[2]

      # Decrement all the m_counts
      (0...m_count.size).each do |i|
        m_count[i] -= 1
      end

      if kind == 'm'
        new_arr = []
        m_count << value.to_i
        curr << new_arr
        m_stack << new_arr
        curr = new_arr
      else
        if kind == 'b'                                    # Assuming these are boolean
          curr << value == '1'
        elsif kind == 'd' || kind == 'f'                  # Float or double
          curr << value.to_f
        elsif kind == 'i' || kind == 'u' || kind == 'e'   # Integer, unsigned or enum as int
          curr << value.to_i
        else                                              # Store anything else as a string
          curr << value
        end
      end

      # Pop off all the arrays that have their values already
      while m_count[m_count.size - 1] == 0
        m_stack.pop
        m_count.pop
        curr = m_stack[m_stack.size - 1]
      end
    end

    root
  end
end
