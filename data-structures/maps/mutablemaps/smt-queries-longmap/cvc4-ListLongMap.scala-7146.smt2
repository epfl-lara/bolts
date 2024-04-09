; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!90852 () Bool)

(assert start!90852)

(declare-fun b!1038132 () Bool)

(declare-fun b_free!20933 () Bool)

(declare-fun b_next!20933 () Bool)

(assert (=> b!1038132 (= b_free!20933 (not b_next!20933))))

(declare-fun tp!73957 () Bool)

(declare-fun b_and!33483 () Bool)

(assert (=> b!1038132 (= tp!73957 b_and!33483)))

(declare-fun b!1038127 () Bool)

(declare-fun res!692641 () Bool)

(declare-fun e!587403 () Bool)

(assert (=> b!1038127 (=> (not res!692641) (not e!587403))))

(declare-fun key!909 () (_ BitVec 64))

(assert (=> b!1038127 (= res!692641 (not (= key!909 (bvneg key!909))))))

(declare-fun b!1038128 () Bool)

(declare-fun res!692644 () Bool)

(declare-fun e!587398 () Bool)

(assert (=> b!1038128 (=> res!692644 e!587398)))

(declare-datatypes ((List!22053 0))(
  ( (Nil!22050) (Cons!22049 (h!23252 (_ BitVec 64)) (t!31274 List!22053)) )
))
(declare-fun noDuplicate!1500 (List!22053) Bool)

(assert (=> b!1038128 (= res!692644 (not (noDuplicate!1500 Nil!22050)))))

(declare-fun b!1038129 () Bool)

(declare-fun e!587404 () Bool)

(declare-fun tp_is_empty!24653 () Bool)

(assert (=> b!1038129 (= e!587404 tp_is_empty!24653)))

(declare-fun b!1038130 () Bool)

(declare-fun e!587402 () Bool)

(assert (=> b!1038130 (= e!587402 tp_is_empty!24653)))

(declare-fun b!1038131 () Bool)

(declare-fun e!587400 () Bool)

(assert (=> b!1038131 (= e!587400 (not e!587398))))

(declare-fun res!692645 () Bool)

(assert (=> b!1038131 (=> res!692645 e!587398)))

(declare-datatypes ((V!37743 0))(
  ( (V!37744 (val!12377 Int)) )
))
(declare-datatypes ((ValueCell!11623 0))(
  ( (ValueCellFull!11623 (v!14963 V!37743)) (EmptyCell!11623) )
))
(declare-datatypes ((array!65402 0))(
  ( (array!65403 (arr!31475 (Array (_ BitVec 32) (_ BitVec 64))) (size!32006 (_ BitVec 32))) )
))
(declare-datatypes ((array!65404 0))(
  ( (array!65405 (arr!31476 (Array (_ BitVec 32) ValueCell!11623)) (size!32007 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!5840 0))(
  ( (LongMapFixedSize!5841 (defaultEntry!6302 Int) (mask!30230 (_ BitVec 32)) (extraKeys!6030 (_ BitVec 32)) (zeroValue!6136 V!37743) (minValue!6136 V!37743) (_size!2975 (_ BitVec 32)) (_keys!11499 array!65402) (_values!6325 array!65404) (_vacant!2975 (_ BitVec 32))) )
))
(declare-fun thiss!1427 () LongMapFixedSize!5840)

(assert (=> b!1038131 (= res!692645 (or (bvsge (size!32006 (_keys!11499 thiss!1427)) #b01111111111111111111111111111111) (bvsge #b00000000000000000000000000000000 (size!32006 (_keys!11499 thiss!1427)))))))

(declare-datatypes ((SeekEntryResult!9763 0))(
  ( (MissingZero!9763 (index!41422 (_ BitVec 32))) (Found!9763 (index!41423 (_ BitVec 32))) (Intermediate!9763 (undefined!10575 Bool) (index!41424 (_ BitVec 32)) (x!92621 (_ BitVec 32))) (Undefined!9763) (MissingVacant!9763 (index!41425 (_ BitVec 32))) )
))
(declare-fun lt!457646 () SeekEntryResult!9763)

(declare-fun arrayCountValidKeys!0 (array!65402 (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1038131 (= (arrayCountValidKeys!0 (array!65403 (store (arr!31475 (_keys!11499 thiss!1427)) (index!41423 lt!457646) #b1000000000000000000000000000000000000000000000000000000000000000) (size!32006 (_keys!11499 thiss!1427))) #b00000000000000000000000000000000 (size!32006 (_keys!11499 thiss!1427))) (bvsub (arrayCountValidKeys!0 (_keys!11499 thiss!1427) #b00000000000000000000000000000000 (size!32006 (_keys!11499 thiss!1427))) #b00000000000000000000000000000001))))

(declare-datatypes ((Unit!33956 0))(
  ( (Unit!33957) )
))
(declare-fun lt!457647 () Unit!33956)

(declare-fun lemmaRemoveValidKeyDecreasesNumberOfValidKeysInArray!0 (array!65402 (_ BitVec 32) (_ BitVec 64)) Unit!33956)

(assert (=> b!1038131 (= lt!457647 (lemmaRemoveValidKeyDecreasesNumberOfValidKeysInArray!0 (_keys!11499 thiss!1427) (index!41423 lt!457646) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!587405 () Bool)

(declare-fun e!587401 () Bool)

(declare-fun array_inv!24175 (array!65402) Bool)

(declare-fun array_inv!24176 (array!65404) Bool)

(assert (=> b!1038132 (= e!587401 (and tp!73957 tp_is_empty!24653 (array_inv!24175 (_keys!11499 thiss!1427)) (array_inv!24176 (_values!6325 thiss!1427)) e!587405))))

(declare-fun b!1038133 () Bool)

(assert (=> b!1038133 (= e!587398 (and (bvsge (index!41423 lt!457646) #b00000000000000000000000000000000) (bvslt (index!41423 lt!457646) (size!32006 (_keys!11499 thiss!1427)))))))

(declare-fun b!1038134 () Bool)

(assert (=> b!1038134 (= e!587403 e!587400)))

(declare-fun res!692646 () Bool)

(assert (=> b!1038134 (=> (not res!692646) (not e!587400))))

(assert (=> b!1038134 (= res!692646 (is-Found!9763 lt!457646))))

(declare-fun seekEntry!0 ((_ BitVec 64) array!65402 (_ BitVec 32)) SeekEntryResult!9763)

(assert (=> b!1038134 (= lt!457646 (seekEntry!0 key!909 (_keys!11499 thiss!1427) (mask!30230 thiss!1427)))))

(declare-fun mapNonEmpty!38520 () Bool)

(declare-fun mapRes!38520 () Bool)

(declare-fun tp!73958 () Bool)

(assert (=> mapNonEmpty!38520 (= mapRes!38520 (and tp!73958 e!587402))))

(declare-fun mapRest!38520 () (Array (_ BitVec 32) ValueCell!11623))

(declare-fun mapKey!38520 () (_ BitVec 32))

(declare-fun mapValue!38520 () ValueCell!11623)

(assert (=> mapNonEmpty!38520 (= (arr!31476 (_values!6325 thiss!1427)) (store mapRest!38520 mapKey!38520 mapValue!38520))))

(declare-fun b!1038135 () Bool)

(declare-fun res!692647 () Bool)

(assert (=> b!1038135 (=> res!692647 e!587398)))

(declare-fun contains!6057 (List!22053 (_ BitVec 64)) Bool)

(assert (=> b!1038135 (= res!692647 (contains!6057 Nil!22050 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1038136 () Bool)

(assert (=> b!1038136 (= e!587405 (and e!587404 mapRes!38520))))

(declare-fun condMapEmpty!38520 () Bool)

(declare-fun mapDefault!38520 () ValueCell!11623)

