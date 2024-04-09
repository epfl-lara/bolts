; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!13140 () Bool)

(assert start!13140)

(declare-fun b!115241 () Bool)

(declare-fun b_free!2665 () Bool)

(declare-fun b_next!2665 () Bool)

(assert (=> b!115241 (= b_free!2665 (not b_next!2665))))

(declare-fun tp!10358 () Bool)

(declare-fun b_and!7157 () Bool)

(assert (=> b!115241 (= tp!10358 b_and!7157)))

(declare-fun b!115232 () Bool)

(declare-fun b_free!2667 () Bool)

(declare-fun b_next!2667 () Bool)

(assert (=> b!115232 (= b_free!2667 (not b_next!2667))))

(declare-fun tp!10360 () Bool)

(declare-fun b_and!7159 () Bool)

(assert (=> b!115232 (= tp!10360 b_and!7159)))

(declare-fun tp_is_empty!2749 () Bool)

(declare-datatypes ((V!3313 0))(
  ( (V!3314 (val!1419 Int)) )
))
(declare-datatypes ((array!4500 0))(
  ( (array!4501 (arr!2132 (Array (_ BitVec 32) (_ BitVec 64))) (size!2392 (_ BitVec 32))) )
))
(declare-datatypes ((ValueCell!1031 0))(
  ( (ValueCellFull!1031 (v!3005 V!3313)) (EmptyCell!1031) )
))
(declare-datatypes ((array!4502 0))(
  ( (array!4503 (arr!2133 (Array (_ BitVec 32) ValueCell!1031)) (size!2393 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!970 0))(
  ( (LongMapFixedSize!971 (defaultEntry!2694 Int) (mask!6896 (_ BitVec 32)) (extraKeys!2483 (_ BitVec 32)) (zeroValue!2561 V!3313) (minValue!2561 V!3313) (_size!534 (_ BitVec 32)) (_keys!4416 array!4500) (_values!2677 array!4502) (_vacant!534 (_ BitVec 32))) )
))
(declare-fun newMap!16 () LongMapFixedSize!970)

(declare-fun e!75060 () Bool)

(declare-fun e!75058 () Bool)

(declare-fun array_inv!1289 (array!4500) Bool)

(declare-fun array_inv!1290 (array!4502) Bool)

(assert (=> b!115232 (= e!75058 (and tp!10360 tp_is_empty!2749 (array_inv!1289 (_keys!4416 newMap!16)) (array_inv!1290 (_values!2677 newMap!16)) e!75060))))

(declare-fun mapIsEmpty!4179 () Bool)

(declare-fun mapRes!4180 () Bool)

(assert (=> mapIsEmpty!4179 mapRes!4180))

(declare-fun b!115233 () Bool)

(declare-fun e!75062 () Bool)

(assert (=> b!115233 (= e!75062 tp_is_empty!2749)))

(declare-fun b!115234 () Bool)

(declare-fun res!56596 () Bool)

(declare-fun e!75055 () Bool)

(assert (=> b!115234 (=> (not res!56596) (not e!75055))))

(declare-datatypes ((Cell!768 0))(
  ( (Cell!769 (v!3006 LongMapFixedSize!970)) )
))
(declare-datatypes ((LongMap!768 0))(
  ( (LongMap!769 (underlying!395 Cell!768)) )
))
(declare-fun thiss!992 () LongMap!768)

(assert (=> b!115234 (= res!56596 (bvsge (bvadd #b00000000000000000000000000000001 (mask!6896 newMap!16)) (_size!534 (v!3006 (underlying!395 thiss!992)))))))

(declare-fun mapNonEmpty!4179 () Bool)

(declare-fun tp!10359 () Bool)

(declare-fun e!75065 () Bool)

(assert (=> mapNonEmpty!4179 (= mapRes!4180 (and tp!10359 e!75065))))

(declare-fun mapValue!4180 () ValueCell!1031)

(declare-fun mapRest!4180 () (Array (_ BitVec 32) ValueCell!1031))

(declare-fun mapKey!4180 () (_ BitVec 32))

(assert (=> mapNonEmpty!4179 (= (arr!2133 (_values!2677 newMap!16)) (store mapRest!4180 mapKey!4180 mapValue!4180))))

(declare-fun b!115235 () Bool)

(assert (=> b!115235 (= e!75060 (and e!75062 mapRes!4180))))

(declare-fun condMapEmpty!4180 () Bool)

(declare-fun mapDefault!4179 () ValueCell!1031)

