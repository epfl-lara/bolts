; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!13976 () Bool)

(assert start!13976)

(declare-fun b!129445 () Bool)

(declare-fun b_free!2889 () Bool)

(declare-fun b_next!2889 () Bool)

(assert (=> b!129445 (= b_free!2889 (not b_next!2889))))

(declare-fun tp!11091 () Bool)

(declare-fun b_and!8029 () Bool)

(assert (=> b!129445 (= tp!11091 b_and!8029)))

(declare-fun b!129450 () Bool)

(declare-fun b_free!2891 () Bool)

(declare-fun b_next!2891 () Bool)

(assert (=> b!129450 (= b_free!2891 (not b_next!2891))))

(declare-fun tp!11090 () Bool)

(declare-fun b_and!8031 () Bool)

(assert (=> b!129450 (= tp!11090 b_and!8031)))

(declare-fun b!129437 () Bool)

(declare-fun e!84505 () Bool)

(declare-fun e!84514 () Bool)

(declare-fun mapRes!4576 () Bool)

(assert (=> b!129437 (= e!84505 (and e!84514 mapRes!4576))))

(declare-fun condMapEmpty!4575 () Bool)

(declare-datatypes ((V!3461 0))(
  ( (V!3462 (val!1475 Int)) )
))
(declare-datatypes ((array!4742 0))(
  ( (array!4743 (arr!2244 (Array (_ BitVec 32) (_ BitVec 64))) (size!2510 (_ BitVec 32))) )
))
(declare-datatypes ((ValueCell!1087 0))(
  ( (ValueCellFull!1087 (v!3160 V!3461)) (EmptyCell!1087) )
))
(declare-datatypes ((array!4744 0))(
  ( (array!4745 (arr!2245 (Array (_ BitVec 32) ValueCell!1087)) (size!2511 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!1082 0))(
  ( (LongMapFixedSize!1083 (defaultEntry!2825 Int) (mask!7103 (_ BitVec 32)) (extraKeys!2598 (_ BitVec 32)) (zeroValue!2684 V!3461) (minValue!2684 V!3461) (_size!590 (_ BitVec 32)) (_keys!4566 array!4742) (_values!2808 array!4744) (_vacant!590 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!872 0))(
  ( (Cell!873 (v!3161 LongMapFixedSize!1082)) )
))
(declare-datatypes ((LongMap!872 0))(
  ( (LongMap!873 (underlying!447 Cell!872)) )
))
(declare-fun thiss!992 () LongMap!872)

(declare-fun mapDefault!4575 () ValueCell!1087)

