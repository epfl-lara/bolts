; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!89448 () Bool)

(assert start!89448)

(declare-fun b!1025109 () Bool)

(declare-fun b_free!20411 () Bool)

(declare-fun b_next!20411 () Bool)

(assert (=> b!1025109 (= b_free!20411 (not b_next!20411))))

(declare-fun tp!72279 () Bool)

(declare-fun b_and!32675 () Bool)

(assert (=> b!1025109 (= tp!72279 b_and!32675)))

(declare-fun b!1025101 () Bool)

(declare-fun e!577996 () Bool)

(declare-fun tp_is_empty!24131 () Bool)

(assert (=> b!1025101 (= e!577996 tp_is_empty!24131)))

(declare-fun b!1025102 () Bool)

(declare-fun res!686410 () Bool)

(declare-fun e!577993 () Bool)

(assert (=> b!1025102 (=> (not res!686410) (not e!577993))))

(declare-fun key!909 () (_ BitVec 64))

(assert (=> b!1025102 (= res!686410 (not (= key!909 (bvneg key!909))))))

(declare-fun mapNonEmpty!37625 () Bool)

(declare-fun mapRes!37625 () Bool)

(declare-fun tp!72280 () Bool)

(declare-fun e!577995 () Bool)

(assert (=> mapNonEmpty!37625 (= mapRes!37625 (and tp!72280 e!577995))))

(declare-datatypes ((V!37047 0))(
  ( (V!37048 (val!12116 Int)) )
))
(declare-datatypes ((ValueCell!11362 0))(
  ( (ValueCellFull!11362 (v!14686 V!37047)) (EmptyCell!11362) )
))
(declare-fun mapValue!37625 () ValueCell!11362)

(declare-fun mapKey!37625 () (_ BitVec 32))

(declare-datatypes ((array!64296 0))(
  ( (array!64297 (arr!30953 (Array (_ BitVec 32) (_ BitVec 64))) (size!31467 (_ BitVec 32))) )
))
(declare-datatypes ((array!64298 0))(
  ( (array!64299 (arr!30954 (Array (_ BitVec 32) ValueCell!11362)) (size!31468 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!5318 0))(
  ( (LongMapFixedSize!5319 (defaultEntry!6011 Int) (mask!29670 (_ BitVec 32)) (extraKeys!5743 (_ BitVec 32)) (zeroValue!5847 V!37047) (minValue!5847 V!37047) (_size!2714 (_ BitVec 32)) (_keys!11155 array!64296) (_values!6034 array!64298) (_vacant!2714 (_ BitVec 32))) )
))
(declare-fun thiss!1427 () LongMapFixedSize!5318)

(declare-fun mapRest!37625 () (Array (_ BitVec 32) ValueCell!11362))

(assert (=> mapNonEmpty!37625 (= (arr!30954 (_values!6034 thiss!1427)) (store mapRest!37625 mapKey!37625 mapValue!37625))))

(declare-fun mapIsEmpty!37625 () Bool)

(assert (=> mapIsEmpty!37625 mapRes!37625))

(declare-fun b!1025103 () Bool)

(declare-fun e!577998 () Bool)

(assert (=> b!1025103 (= e!577998 (and e!577996 mapRes!37625))))

(declare-fun condMapEmpty!37625 () Bool)

(declare-fun mapDefault!37625 () ValueCell!11362)

