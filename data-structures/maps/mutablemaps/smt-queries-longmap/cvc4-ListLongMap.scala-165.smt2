; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!3156 () Bool)

(assert start!3156)

(declare-fun b!19252 () Bool)

(declare-fun b_free!671 () Bool)

(declare-fun b_next!671 () Bool)

(assert (=> b!19252 (= b_free!671 (not b_next!671))))

(declare-fun tp!3216 () Bool)

(declare-fun b_and!1333 () Bool)

(assert (=> b!19252 (= tp!3216 b_and!1333)))

(declare-fun tp_is_empty!935 () Bool)

(declare-fun e!12410 () Bool)

(declare-datatypes ((V!1071 0))(
  ( (V!1072 (val!494 Int)) )
))
(declare-datatypes ((ValueCell!268 0))(
  ( (ValueCellFull!268 (v!1504 V!1071)) (EmptyCell!268) )
))
(declare-datatypes ((array!1073 0))(
  ( (array!1074 (arr!515 (Array (_ BitVec 32) ValueCell!268)) (size!606 (_ BitVec 32))) )
))
(declare-datatypes ((array!1075 0))(
  ( (array!1076 (arr!516 (Array (_ BitVec 32) (_ BitVec 64))) (size!607 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!122 0))(
  ( (LongMapFixedSize!123 (defaultEntry!1680 Int) (mask!4623 (_ BitVec 32)) (extraKeys!1590 (_ BitVec 32)) (zeroValue!1614 V!1071) (minValue!1614 V!1071) (_size!94 (_ BitVec 32)) (_keys!3106 array!1075) (_values!1676 array!1073) (_vacant!94 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!122 0))(
  ( (Cell!123 (v!1505 LongMapFixedSize!122)) )
))
(declare-datatypes ((LongMap!122 0))(
  ( (LongMap!123 (underlying!72 Cell!122)) )
))
(declare-fun thiss!938 () LongMap!122)

(declare-fun e!12406 () Bool)

(declare-fun array_inv!367 (array!1075) Bool)

(declare-fun array_inv!368 (array!1073) Bool)

(assert (=> b!19252 (= e!12406 (and tp!3216 tp_is_empty!935 (array_inv!367 (_keys!3106 (v!1505 (underlying!72 thiss!938)))) (array_inv!368 (_values!1676 (v!1505 (underlying!72 thiss!938)))) e!12410))))

(declare-fun b!19253 () Bool)

(declare-fun e!12409 () Bool)

(assert (=> b!19253 (= e!12409 e!12406)))

(declare-fun b!19254 () Bool)

(declare-fun e!12411 () Bool)

(declare-fun mapRes!849 () Bool)

(assert (=> b!19254 (= e!12410 (and e!12411 mapRes!849))))

(declare-fun condMapEmpty!849 () Bool)

(declare-fun mapDefault!849 () ValueCell!268)

