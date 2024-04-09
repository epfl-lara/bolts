; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!90082 () Bool)

(assert start!90082)

(declare-fun b!1031222 () Bool)

(declare-fun b_free!20653 () Bool)

(declare-fun b_next!20653 () Bool)

(assert (=> b!1031222 (= b_free!20653 (not b_next!20653))))

(declare-fun tp!73031 () Bool)

(declare-fun b_and!33091 () Bool)

(assert (=> b!1031222 (= tp!73031 b_and!33091)))

(declare-fun b!1031218 () Bool)

(declare-fun e!582462 () Bool)

(declare-fun tp_is_empty!24373 () Bool)

(assert (=> b!1031218 (= e!582462 tp_is_empty!24373)))

(declare-fun mapIsEmpty!38013 () Bool)

(declare-fun mapRes!38013 () Bool)

(assert (=> mapIsEmpty!38013 mapRes!38013))

(declare-fun res!689607 () Bool)

(declare-fun e!582461 () Bool)

(assert (=> start!90082 (=> (not res!689607) (not e!582461))))

(declare-datatypes ((V!37371 0))(
  ( (V!37372 (val!12237 Int)) )
))
(declare-datatypes ((ValueCell!11483 0))(
  ( (ValueCellFull!11483 (v!14815 V!37371)) (EmptyCell!11483) )
))
(declare-datatypes ((array!64794 0))(
  ( (array!64795 (arr!31195 (Array (_ BitVec 32) (_ BitVec 64))) (size!31713 (_ BitVec 32))) )
))
(declare-datatypes ((array!64796 0))(
  ( (array!64797 (arr!31196 (Array (_ BitVec 32) ValueCell!11483)) (size!31714 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!5560 0))(
  ( (LongMapFixedSize!5561 (defaultEntry!6154 Int) (mask!29943 (_ BitVec 32)) (extraKeys!5886 (_ BitVec 32)) (zeroValue!5990 V!37371) (minValue!5990 V!37371) (_size!2835 (_ BitVec 32)) (_keys!11324 array!64794) (_values!6177 array!64796) (_vacant!2835 (_ BitVec 32))) )
))
(declare-fun thiss!1427 () LongMapFixedSize!5560)

(declare-fun valid!2057 (LongMapFixedSize!5560) Bool)

(assert (=> start!90082 (= res!689607 (valid!2057 thiss!1427))))

(assert (=> start!90082 e!582461))

(declare-fun e!582458 () Bool)

(assert (=> start!90082 e!582458))

(assert (=> start!90082 true))

(declare-fun b!1031219 () Bool)

(declare-fun res!689601 () Bool)

(declare-fun e!582456 () Bool)

(assert (=> b!1031219 (=> res!689601 e!582456)))

(declare-datatypes ((Unit!33698 0))(
  ( (Unit!33699) )
))
(declare-datatypes ((tuple2!15750 0))(
  ( (tuple2!15751 (_1!7885 Unit!33698) (_2!7885 LongMapFixedSize!5560)) )
))
(declare-fun lt!455201 () tuple2!15750)

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!1031219 (= res!689601 (not (validMask!0 (mask!29943 (_2!7885 lt!455201)))))))

(declare-fun b!1031220 () Bool)

(declare-fun res!689603 () Bool)

(assert (=> b!1031220 (=> res!689603 e!582456)))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!64794 (_ BitVec 32)) Bool)

(assert (=> b!1031220 (= res!689603 (not (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 (_keys!11324 (_2!7885 lt!455201)) (mask!29943 (_2!7885 lt!455201)))))))

(declare-fun b!1031221 () Bool)

(declare-fun res!689605 () Bool)

(assert (=> b!1031221 (=> res!689605 e!582456)))

(assert (=> b!1031221 (= res!689605 (or (not (= (size!31714 (_values!6177 (_2!7885 lt!455201))) (bvadd #b00000000000000000000000000000001 (mask!29943 (_2!7885 lt!455201))))) (not (= (size!31713 (_keys!11324 (_2!7885 lt!455201))) (size!31714 (_values!6177 (_2!7885 lt!455201))))) (bvslt (mask!29943 (_2!7885 lt!455201)) #b00000000000000000000000000000000) (bvslt (extraKeys!5886 (_2!7885 lt!455201)) #b00000000000000000000000000000000) (bvsgt (extraKeys!5886 (_2!7885 lt!455201)) #b00000000000000000000000000000011)))))

(declare-fun e!582460 () Bool)

(declare-fun array_inv!23991 (array!64794) Bool)

(declare-fun array_inv!23992 (array!64796) Bool)

(assert (=> b!1031222 (= e!582458 (and tp!73031 tp_is_empty!24373 (array_inv!23991 (_keys!11324 thiss!1427)) (array_inv!23992 (_values!6177 thiss!1427)) e!582460))))

(declare-fun b!1031223 () Bool)

(declare-fun res!689606 () Bool)

(assert (=> b!1031223 (=> (not res!689606) (not e!582461))))

(declare-fun key!909 () (_ BitVec 64))

(assert (=> b!1031223 (= res!689606 (not (= key!909 (bvneg key!909))))))

(declare-fun b!1031224 () Bool)

(declare-fun e!582459 () Bool)

(assert (=> b!1031224 (= e!582459 tp_is_empty!24373)))

(declare-fun b!1031225 () Bool)

(declare-fun e!582463 () Bool)

(assert (=> b!1031225 (= e!582463 (not e!582456))))

(declare-fun res!689604 () Bool)

(assert (=> b!1031225 (=> res!689604 e!582456)))

(declare-datatypes ((tuple2!15752 0))(
  ( (tuple2!15753 (_1!7886 (_ BitVec 64)) (_2!7886 V!37371)) )
))
(declare-datatypes ((List!21976 0))(
  ( (Nil!21973) (Cons!21972 (h!23174 tuple2!15752) (t!31131 List!21976)) )
))
(declare-datatypes ((ListLongMap!13833 0))(
  ( (ListLongMap!13834 (toList!6932 List!21976)) )
))
(declare-fun contains!6011 (ListLongMap!13833 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!3939 (array!64794 array!64796 (_ BitVec 32) (_ BitVec 32) V!37371 V!37371 (_ BitVec 32) Int) ListLongMap!13833)

(assert (=> b!1031225 (= res!689604 (not (contains!6011 (getCurrentListMap!3939 (_keys!11324 (_2!7885 lt!455201)) (_values!6177 (_2!7885 lt!455201)) (mask!29943 (_2!7885 lt!455201)) (extraKeys!5886 (_2!7885 lt!455201)) (zeroValue!5990 (_2!7885 lt!455201)) (minValue!5990 (_2!7885 lt!455201)) #b00000000000000000000000000000000 (defaultEntry!6154 (_2!7885 lt!455201))) key!909)))))

(declare-fun lt!455206 () array!64796)

(declare-fun lt!455203 () array!64794)

(declare-fun Unit!33700 () Unit!33698)

(declare-fun Unit!33701 () Unit!33698)

(assert (=> b!1031225 (= lt!455201 (ite (bvsgt (bvadd #b00000000000000000000000000000001 (_vacant!2835 thiss!1427)) #b00000000000000000000000000000000) (tuple2!15751 Unit!33700 (LongMapFixedSize!5561 (defaultEntry!6154 thiss!1427) (mask!29943 thiss!1427) (extraKeys!5886 thiss!1427) (zeroValue!5990 thiss!1427) (minValue!5990 thiss!1427) (bvsub (_size!2835 thiss!1427) #b00000000000000000000000000000001) lt!455203 lt!455206 (bvadd #b00000000000000000000000000000001 (_vacant!2835 thiss!1427)))) (tuple2!15751 Unit!33701 (LongMapFixedSize!5561 (defaultEntry!6154 thiss!1427) (mask!29943 thiss!1427) (extraKeys!5886 thiss!1427) (zeroValue!5990 thiss!1427) (minValue!5990 thiss!1427) (bvsub (_size!2835 thiss!1427) #b00000000000000000000000000000001) lt!455203 lt!455206 (_vacant!2835 thiss!1427)))))))

(declare-fun -!508 (ListLongMap!13833 (_ BitVec 64)) ListLongMap!13833)

(assert (=> b!1031225 (= (-!508 (getCurrentListMap!3939 (_keys!11324 thiss!1427) (_values!6177 thiss!1427) (mask!29943 thiss!1427) (extraKeys!5886 thiss!1427) (zeroValue!5990 thiss!1427) (minValue!5990 thiss!1427) #b00000000000000000000000000000000 (defaultEntry!6154 thiss!1427)) key!909) (getCurrentListMap!3939 lt!455203 lt!455206 (mask!29943 thiss!1427) (extraKeys!5886 thiss!1427) (zeroValue!5990 thiss!1427) (minValue!5990 thiss!1427) #b00000000000000000000000000000000 (defaultEntry!6154 thiss!1427)))))

(declare-datatypes ((SeekEntryResult!9696 0))(
  ( (MissingZero!9696 (index!41154 (_ BitVec 32))) (Found!9696 (index!41155 (_ BitVec 32))) (Intermediate!9696 (undefined!10508 Bool) (index!41156 (_ BitVec 32)) (x!91813 (_ BitVec 32))) (Undefined!9696) (MissingVacant!9696 (index!41157 (_ BitVec 32))) )
))
(declare-fun lt!455207 () SeekEntryResult!9696)

(declare-fun dynLambda!1983 (Int (_ BitVec 64)) V!37371)

(assert (=> b!1031225 (= lt!455206 (array!64797 (store (arr!31196 (_values!6177 thiss!1427)) (index!41155 lt!455207) (ValueCellFull!11483 (dynLambda!1983 (defaultEntry!6154 thiss!1427) #b0000000000000000000000000000000000000000000000000000000000000000))) (size!31714 (_values!6177 thiss!1427))))))

(declare-fun lt!455202 () Unit!33698)

(declare-fun lemmaRemoveValidKeyToArrayThenRemoveKeyFromListMap!32 (array!64794 array!64796 (_ BitVec 32) (_ BitVec 32) V!37371 V!37371 (_ BitVec 32) (_ BitVec 64) Int) Unit!33698)

(assert (=> b!1031225 (= lt!455202 (lemmaRemoveValidKeyToArrayThenRemoveKeyFromListMap!32 (_keys!11324 thiss!1427) (_values!6177 thiss!1427) (mask!29943 thiss!1427) (extraKeys!5886 thiss!1427) (zeroValue!5990 thiss!1427) (minValue!5990 thiss!1427) (index!41155 lt!455207) key!909 (defaultEntry!6154 thiss!1427)))))

(declare-fun arrayContainsKey!0 (array!64794 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1031225 (not (arrayContainsKey!0 lt!455203 key!909 #b00000000000000000000000000000000))))

(declare-fun lt!455204 () Unit!33698)

(declare-fun lemmaArrayNoDuplicateRemoveOneThenNotContain!0 (array!64794 (_ BitVec 32) (_ BitVec 64)) Unit!33698)

(assert (=> b!1031225 (= lt!455204 (lemmaArrayNoDuplicateRemoveOneThenNotContain!0 (_keys!11324 thiss!1427) (index!41155 lt!455207) key!909))))

(assert (=> b!1031225 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!455203 (mask!29943 thiss!1427))))

(declare-fun lt!455205 () Unit!33698)

(declare-fun lemmaPutLongMinValuePreservesForallSeekEntryOrOpen!0 (array!64794 (_ BitVec 32) (_ BitVec 32)) Unit!33698)

(assert (=> b!1031225 (= lt!455205 (lemmaPutLongMinValuePreservesForallSeekEntryOrOpen!0 (_keys!11324 thiss!1427) (index!41155 lt!455207) (mask!29943 thiss!1427)))))

(declare-datatypes ((List!21977 0))(
  ( (Nil!21974) (Cons!21973 (h!23175 (_ BitVec 64)) (t!31132 List!21977)) )
))
(declare-fun arrayNoDuplicates!0 (array!64794 (_ BitVec 32) List!21977) Bool)

(assert (=> b!1031225 (arrayNoDuplicates!0 lt!455203 #b00000000000000000000000000000000 Nil!21974)))

(declare-fun lt!455208 () Unit!33698)

(declare-fun lemmaPutNonValidKeyPreservesNoDuplicate!0 (array!64794 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) List!21977) Unit!33698)

(assert (=> b!1031225 (= lt!455208 (lemmaPutNonValidKeyPreservesNoDuplicate!0 (_keys!11324 thiss!1427) #b1000000000000000000000000000000000000000000000000000000000000000 (index!41155 lt!455207) #b00000000000000000000000000000000 Nil!21974))))

(declare-fun arrayCountValidKeys!0 (array!64794 (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1031225 (= (arrayCountValidKeys!0 lt!455203 #b00000000000000000000000000000000 (size!31713 (_keys!11324 thiss!1427))) (bvsub (arrayCountValidKeys!0 (_keys!11324 thiss!1427) #b00000000000000000000000000000000 (size!31713 (_keys!11324 thiss!1427))) #b00000000000000000000000000000001))))

(assert (=> b!1031225 (= lt!455203 (array!64795 (store (arr!31195 (_keys!11324 thiss!1427)) (index!41155 lt!455207) #b1000000000000000000000000000000000000000000000000000000000000000) (size!31713 (_keys!11324 thiss!1427))))))

(declare-fun lt!455199 () Unit!33698)

(declare-fun lemmaRemoveValidKeyDecreasesNumberOfValidKeysInArray!0 (array!64794 (_ BitVec 32) (_ BitVec 64)) Unit!33698)

(assert (=> b!1031225 (= lt!455199 (lemmaRemoveValidKeyDecreasesNumberOfValidKeysInArray!0 (_keys!11324 thiss!1427) (index!41155 lt!455207) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1031226 () Bool)

(assert (=> b!1031226 (= e!582461 e!582463)))

(declare-fun res!689602 () Bool)

(assert (=> b!1031226 (=> (not res!689602) (not e!582463))))

(assert (=> b!1031226 (= res!689602 (is-Found!9696 lt!455207))))

(declare-fun seekEntry!0 ((_ BitVec 64) array!64794 (_ BitVec 32)) SeekEntryResult!9696)

(assert (=> b!1031226 (= lt!455207 (seekEntry!0 key!909 (_keys!11324 thiss!1427) (mask!29943 thiss!1427)))))

(declare-fun mapNonEmpty!38013 () Bool)

(declare-fun tp!73030 () Bool)

(assert (=> mapNonEmpty!38013 (= mapRes!38013 (and tp!73030 e!582459))))

(declare-fun mapKey!38013 () (_ BitVec 32))

(declare-fun mapValue!38013 () ValueCell!11483)

(declare-fun mapRest!38013 () (Array (_ BitVec 32) ValueCell!11483))

(assert (=> mapNonEmpty!38013 (= (arr!31196 (_values!6177 thiss!1427)) (store mapRest!38013 mapKey!38013 mapValue!38013))))

(declare-fun b!1031227 () Bool)

(assert (=> b!1031227 (= e!582460 (and e!582462 mapRes!38013))))

(declare-fun condMapEmpty!38013 () Bool)

(declare-fun mapDefault!38013 () ValueCell!11483)

