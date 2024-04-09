; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!90134 () Bool)

(assert start!90134)

(declare-fun b!1032122 () Bool)

(declare-fun b_free!20705 () Bool)

(declare-fun b_next!20705 () Bool)

(assert (=> b!1032122 (= b_free!20705 (not b_next!20705))))

(declare-fun tp!73186 () Bool)

(declare-fun b_and!33191 () Bool)

(assert (=> b!1032122 (= tp!73186 b_and!33191)))

(declare-fun mapIsEmpty!38091 () Bool)

(declare-fun mapRes!38091 () Bool)

(assert (=> mapIsEmpty!38091 mapRes!38091))

(declare-fun res!689999 () Bool)

(declare-fun e!583140 () Bool)

(assert (=> start!90134 (=> (not res!689999) (not e!583140))))

(declare-datatypes ((V!37439 0))(
  ( (V!37440 (val!12263 Int)) )
))
(declare-datatypes ((ValueCell!11509 0))(
  ( (ValueCellFull!11509 (v!14841 V!37439)) (EmptyCell!11509) )
))
(declare-datatypes ((array!64898 0))(
  ( (array!64899 (arr!31247 (Array (_ BitVec 32) (_ BitVec 64))) (size!31765 (_ BitVec 32))) )
))
(declare-datatypes ((array!64900 0))(
  ( (array!64901 (arr!31248 (Array (_ BitVec 32) ValueCell!11509)) (size!31766 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!5612 0))(
  ( (LongMapFixedSize!5613 (defaultEntry!6180 Int) (mask!29985 (_ BitVec 32)) (extraKeys!5912 (_ BitVec 32)) (zeroValue!6016 V!37439) (minValue!6016 V!37439) (_size!2861 (_ BitVec 32)) (_keys!11350 array!64898) (_values!6203 array!64900) (_vacant!2861 (_ BitVec 32))) )
))
(declare-fun thiss!1427 () LongMapFixedSize!5612)

(declare-fun valid!2075 (LongMapFixedSize!5612) Bool)

(assert (=> start!90134 (= res!689999 (valid!2075 thiss!1427))))

(assert (=> start!90134 e!583140))

(declare-fun e!583138 () Bool)

(assert (=> start!90134 e!583138))

(assert (=> start!90134 true))

(declare-fun b!1032120 () Bool)

(declare-fun e!583136 () Bool)

(declare-fun tp_is_empty!24425 () Bool)

(assert (=> b!1032120 (= e!583136 tp_is_empty!24425)))

(declare-fun b!1032121 () Bool)

(declare-fun res!690000 () Bool)

(assert (=> b!1032121 (=> (not res!690000) (not e!583140))))

(declare-fun key!909 () (_ BitVec 64))

(assert (=> b!1032121 (= res!690000 (not (= key!909 (bvneg key!909))))))

(declare-fun e!583137 () Bool)

(declare-fun array_inv!24025 (array!64898) Bool)

(declare-fun array_inv!24026 (array!64900) Bool)

(assert (=> b!1032122 (= e!583138 (and tp!73186 tp_is_empty!24425 (array_inv!24025 (_keys!11350 thiss!1427)) (array_inv!24026 (_values!6203 thiss!1427)) e!583137))))

(declare-fun b!1032123 () Bool)

(assert (=> b!1032123 (= e!583140 false)))

(declare-datatypes ((SeekEntryResult!9719 0))(
  ( (MissingZero!9719 (index!41246 (_ BitVec 32))) (Found!9719 (index!41247 (_ BitVec 32))) (Intermediate!9719 (undefined!10531 Bool) (index!41248 (_ BitVec 32)) (x!91946 (_ BitVec 32))) (Undefined!9719) (MissingVacant!9719 (index!41249 (_ BitVec 32))) )
))
(declare-fun lt!455979 () SeekEntryResult!9719)

(declare-fun seekEntry!0 ((_ BitVec 64) array!64898 (_ BitVec 32)) SeekEntryResult!9719)

(assert (=> b!1032123 (= lt!455979 (seekEntry!0 key!909 (_keys!11350 thiss!1427) (mask!29985 thiss!1427)))))

(declare-fun b!1032124 () Bool)

(declare-fun e!583139 () Bool)

(assert (=> b!1032124 (= e!583139 tp_is_empty!24425)))

(declare-fun mapNonEmpty!38091 () Bool)

(declare-fun tp!73187 () Bool)

(assert (=> mapNonEmpty!38091 (= mapRes!38091 (and tp!73187 e!583136))))

(declare-fun mapValue!38091 () ValueCell!11509)

(declare-fun mapRest!38091 () (Array (_ BitVec 32) ValueCell!11509))

(declare-fun mapKey!38091 () (_ BitVec 32))

(assert (=> mapNonEmpty!38091 (= (arr!31248 (_values!6203 thiss!1427)) (store mapRest!38091 mapKey!38091 mapValue!38091))))

(declare-fun b!1032125 () Bool)

(assert (=> b!1032125 (= e!583137 (and e!583139 mapRes!38091))))

(declare-fun condMapEmpty!38091 () Bool)

(declare-fun mapDefault!38091 () ValueCell!11509)

