# frozen_string_literal: true

require 'spec_helper'

describe GoogleMapsPbDecoder do
  it 'decode' do
    output = GoogleMapsPbDecoder.decode('!1m6!1sConrad+Los+Angeles!2s0x80c2c64d960506bb:0x92a0c80de77ecd4e!3m2!3d34.0551769!4d-118.2485837!6e0!1m6!1sLong+Beach!2s0x80c2cae84099d759:0xa1003afac42a8faa!3m2!3d33.770050399999995!4d-118.19373949999999!6e0!3m12!1m3!1d356224.31915080006!2d-118.40386673199909!3d33.91159503906067!2m3!1f0!2f0!3f0!3m2!1i1609!2i1291!4f13.1!6m34!1m1!18b1!2m3!5m1!6e2!20e3!6m13!4b1!49b1!74i150000!75b1!85b1!89b1!91b1!114b1!149b1!169b1!170i6!176f8!179f90!10b1!12b1!13b1!14b1!16b1!17m1!3e1!20m6!1e6!2e1!5e2!6b1!8b1!14b1!8m0!15m4!1sDBomZay6JJfp1e8P68-hmA8!4m1!2i12491!7e81!20m28!1m6!1m2!1i0!2i0!2m2!1i530!2i1291!1m6!1m2!1i1559!2i0!2m2!1i1609!2i1291!1m6!1m2!1i0!2i0!2m2!1i1609!2i20!1m6!1m2!1i0!2i1271!2m2!1i1609!2i1291!27b1!28m0!40i666!47m0')
    _(output).must_equal([
      [
        'Conrad+Los+Angeles',
        '0x80c2c64d960506bb:0x92a0c80de77ecd4e',
        [ 34.0551769, -118.2485837 ],
        0
      ],
      [
        'Long+Beach',
        '0x80c2cae84099d759:0xa1003afac42a8faa',
        [ 33.770050399999995, -118.19373949999999 ],
        0
      ],
      [
        [ 356224.31915080006, -118.40386673199909, 33.91159503906067 ],
        [ 0, 0, 0 ],
        [ 1609, 1291 ],
        13.1
      ],
      [
        [ true ],
        [ [ 2 ], 3 ],
        [
          true, true, 150000,
          true, true, true,
          true, true, true,
          true, 6,    8,
          90
        ],
        true,
        true,
        true,
        true,
        true,
        [ 1 ],
        [ 6, 1, 2, true, true, true ]
      ],
      [],
      [ 'DBomZay6JJfp1e8P68-hmA8', [ 12491 ], 81 ],
      [
        [ [ 0, 0 ], [ 530, 1291 ] ],
        [ [ 1559, 0 ], [ 1609, 1291 ] ],
        [ [ 0, 0 ], [ 1609, 20 ] ],
        [ [ 0, 1271 ], [ 1609, 1291 ] ]
      ],
      true,
      [],
      666,
      []
    ])
  end

  it 'raises error for invalid input' do
    _{ GoogleMapsPbDecoder.decode('abc') }.must_raise ArgumentError
  end
end