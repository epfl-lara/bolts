; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!3294 () Bool)

(assert start!3294)

(declare-fun b!20266 () Bool)

(declare-fun b_free!713 () Bool)

(declare-fun b_next!713 () Bool)

(assert (=> b!20266 (= b_free!713 (not b_next!713))))

(declare-fun tp!3367 () Bool)

(declare-fun b_and!1391 () Bool)

(assert (=> b!20266 (= tp!3367 b_and!1391)))

(declare-fun b!20258 () Bool)

(declare-fun e!13232 () Bool)

(declare-fun e!13231 () Bool)

(declare-fun mapRes!937 () Bool)

(assert (=> b!20258 (= e!13232 (and e!13231 mapRes!937))))

(declare-fun condMapEmpty!937 () Bool)

(declare-datatypes ((V!1127 0))(
  ( (V!1128 (val!515 Int)) )
))
(declare-datatypes ((ValueCell!289 0))(
  ( (ValueCellFull!289 (v!1547 V!1127)) (EmptyCell!289) )
))
(declare-datatypes ((array!1171 0))(
  ( (array!1172 (arr!557 (Array (_ BitVec 32) ValueCell!289)) (size!650 (_ BitVec 32))) )
))
(declare-datatypes ((array!1173 0))(
  ( (array!1174 (arr!558 (Array (_ BitVec 32) (_ BitVec 64))) (size!651 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!164 0))(
  ( (LongMapFixedSize!165 (defaultEntry!1705 Int) (mask!4667 (_ BitVec 32)) (extraKeys!1611 (_ BitVec 32)) (zeroValue!1635 V!1127) (minValue!1635 V!1127) (_size!120 (_ BitVec 32)) (_keys!3129 array!1173) (_values!1697 array!1171) (_vacant!120 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!164 0))(
  ( (Cell!165 (v!1548 LongMapFixedSize!164)) )
))
(declare-datatypes ((LongMap!164 0))(
  ( (LongMap!165 (underlying!93 Cell!164)) )
))
(declare-fun thiss!938 () LongMap!164)

(declare-fun mapDefault!937 () ValueCell!289)

