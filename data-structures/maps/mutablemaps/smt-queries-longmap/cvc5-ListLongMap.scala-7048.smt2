; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!89352 () Bool)

(assert start!89352)

(declare-fun b!1023964 () Bool)

(declare-fun b_free!20341 () Bool)

(declare-fun b_next!20341 () Bool)

(assert (=> b!1023964 (= b_free!20341 (not b_next!20341))))

(declare-fun tp!72062 () Bool)

(declare-fun b_and!32605 () Bool)

(assert (=> b!1023964 (= tp!72062 b_and!32605)))

(declare-fun b!1023959 () Bool)

(declare-fun e!577158 () Bool)

(declare-fun tp_is_empty!24061 () Bool)

(assert (=> b!1023959 (= e!577158 tp_is_empty!24061)))

(declare-fun res!685727 () Bool)

(declare-fun e!577157 () Bool)

(assert (=> start!89352 (=> (not res!685727) (not e!577157))))

(declare-datatypes ((V!36955 0))(
  ( (V!36956 (val!12081 Int)) )
))
(declare-datatypes ((ValueCell!11327 0))(
  ( (ValueCellFull!11327 (v!14651 V!36955)) (EmptyCell!11327) )
))
(declare-datatypes ((array!64152 0))(
  ( (array!64153 (arr!30883 (Array (_ BitVec 32) (_ BitVec 64))) (size!31396 (_ BitVec 32))) )
))
(declare-datatypes ((array!64154 0))(
  ( (array!64155 (arr!30884 (Array (_ BitVec 32) ValueCell!11327)) (size!31397 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!5248 0))(
  ( (LongMapFixedSize!5249 (defaultEntry!5976 Int) (mask!29610 (_ BitVec 32)) (extraKeys!5708 (_ BitVec 32)) (zeroValue!5812 V!36955) (minValue!5812 V!36955) (_size!2679 (_ BitVec 32)) (_keys!11119 array!64152) (_values!5999 array!64154) (_vacant!2679 (_ BitVec 32))) )
))
(declare-fun thiss!1427 () LongMapFixedSize!5248)

(declare-fun valid!1953 (LongMapFixedSize!5248) Bool)

(assert (=> start!89352 (= res!685727 (valid!1953 thiss!1427))))

(assert (=> start!89352 e!577157))

(declare-fun e!577155 () Bool)

(assert (=> start!89352 e!577155))

(assert (=> start!89352 true))

(declare-fun b!1023960 () Bool)

(declare-fun res!685728 () Bool)

(assert (=> b!1023960 (=> (not res!685728) (not e!577157))))

(declare-fun key!909 () (_ BitVec 64))

(assert (=> b!1023960 (= res!685728 (not (= key!909 (bvneg key!909))))))

(declare-fun mapNonEmpty!37513 () Bool)

(declare-fun mapRes!37513 () Bool)

(declare-fun tp!72063 () Bool)

(assert (=> mapNonEmpty!37513 (= mapRes!37513 (and tp!72063 e!577158))))

(declare-fun mapKey!37513 () (_ BitVec 32))

(declare-fun mapValue!37513 () ValueCell!11327)

(declare-fun mapRest!37513 () (Array (_ BitVec 32) ValueCell!11327))

(assert (=> mapNonEmpty!37513 (= (arr!30884 (_values!5999 thiss!1427)) (store mapRest!37513 mapKey!37513 mapValue!37513))))

(declare-fun b!1023961 () Bool)

(declare-fun e!577156 () Bool)

(declare-fun e!577153 () Bool)

(assert (=> b!1023961 (= e!577156 (and e!577153 mapRes!37513))))

(declare-fun condMapEmpty!37513 () Bool)

(declare-fun mapDefault!37513 () ValueCell!11327)

