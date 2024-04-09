; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!89330 () Bool)

(assert start!89330)

(declare-fun b!1023837 () Bool)

(declare-fun b_free!20335 () Bool)

(declare-fun b_next!20335 () Bool)

(assert (=> b!1023837 (= b_free!20335 (not b_next!20335))))

(declare-fun tp!72040 () Bool)

(declare-fun b_and!32599 () Bool)

(assert (=> b!1023837 (= tp!72040 b_and!32599)))

(declare-fun b!1023833 () Bool)

(declare-fun e!577063 () Bool)

(declare-datatypes ((V!36947 0))(
  ( (V!36948 (val!12078 Int)) )
))
(declare-datatypes ((ValueCell!11324 0))(
  ( (ValueCellFull!11324 (v!14648 V!36947)) (EmptyCell!11324) )
))
(declare-datatypes ((array!64138 0))(
  ( (array!64139 (arr!30877 (Array (_ BitVec 32) (_ BitVec 64))) (size!31389 (_ BitVec 32))) )
))
(declare-datatypes ((array!64140 0))(
  ( (array!64141 (arr!30878 (Array (_ BitVec 32) ValueCell!11324)) (size!31390 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!5242 0))(
  ( (LongMapFixedSize!5243 (defaultEntry!5973 Int) (mask!29603 (_ BitVec 32)) (extraKeys!5705 (_ BitVec 32)) (zeroValue!5809 V!36947) (minValue!5809 V!36947) (_size!2676 (_ BitVec 32)) (_keys!11115 array!64138) (_values!5996 array!64140) (_vacant!2676 (_ BitVec 32))) )
))
(declare-fun thiss!1427 () LongMapFixedSize!5242)

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!1023833 (= e!577063 (not (validMask!0 (mask!29603 thiss!1427))))))

(declare-fun b!1023834 () Bool)

(declare-fun res!685671 () Bool)

(assert (=> b!1023834 (=> (not res!685671) (not e!577063))))

(declare-fun key!909 () (_ BitVec 64))

(assert (=> b!1023834 (= res!685671 (not (= key!909 (bvneg key!909))))))

(declare-fun b!1023835 () Bool)

(declare-fun e!577059 () Bool)

(declare-fun tp_is_empty!24055 () Bool)

(assert (=> b!1023835 (= e!577059 tp_is_empty!24055)))

(declare-fun mapNonEmpty!37500 () Bool)

(declare-fun mapRes!37500 () Bool)

(declare-fun tp!72041 () Bool)

(declare-fun e!577058 () Bool)

(assert (=> mapNonEmpty!37500 (= mapRes!37500 (and tp!72041 e!577058))))

(declare-fun mapKey!37500 () (_ BitVec 32))

(declare-fun mapRest!37500 () (Array (_ BitVec 32) ValueCell!11324))

(declare-fun mapValue!37500 () ValueCell!11324)

(assert (=> mapNonEmpty!37500 (= (arr!30878 (_values!5996 thiss!1427)) (store mapRest!37500 mapKey!37500 mapValue!37500))))

(declare-fun b!1023836 () Bool)

(declare-fun e!577061 () Bool)

(assert (=> b!1023836 (= e!577061 (and e!577059 mapRes!37500))))

(declare-fun condMapEmpty!37500 () Bool)

(declare-fun mapDefault!37500 () ValueCell!11324)

