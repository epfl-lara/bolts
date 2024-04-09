; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!89516 () Bool)

(assert start!89516)

(declare-fun b!1026113 () Bool)

(declare-fun b_free!20479 () Bool)

(declare-fun b_next!20479 () Bool)

(assert (=> b!1026113 (= b_free!20479 (not b_next!20479))))

(declare-fun tp!72484 () Bool)

(declare-fun b_and!32743 () Bool)

(assert (=> b!1026113 (= tp!72484 b_and!32743)))

(declare-fun b!1026109 () Bool)

(declare-fun e!578810 () Bool)

(declare-fun e!578816 () Bool)

(assert (=> b!1026109 (= e!578810 e!578816)))

(declare-fun res!687007 () Bool)

(assert (=> b!1026109 (=> (not res!687007) (not e!578816))))

(declare-datatypes ((SeekEntryResult!9626 0))(
  ( (MissingZero!9626 (index!40874 (_ BitVec 32))) (Found!9626 (index!40875 (_ BitVec 32))) (Intermediate!9626 (undefined!10438 Bool) (index!40876 (_ BitVec 32)) (x!91259 (_ BitVec 32))) (Undefined!9626) (MissingVacant!9626 (index!40877 (_ BitVec 32))) )
))
(declare-fun lt!451336 () SeekEntryResult!9626)

(assert (=> b!1026109 (= res!687007 (is-Found!9626 lt!451336))))

(declare-fun key!909 () (_ BitVec 64))

(declare-datatypes ((V!37139 0))(
  ( (V!37140 (val!12150 Int)) )
))
(declare-datatypes ((ValueCell!11396 0))(
  ( (ValueCellFull!11396 (v!14720 V!37139)) (EmptyCell!11396) )
))
(declare-datatypes ((array!64432 0))(
  ( (array!64433 (arr!31021 (Array (_ BitVec 32) (_ BitVec 64))) (size!31535 (_ BitVec 32))) )
))
(declare-datatypes ((array!64434 0))(
  ( (array!64435 (arr!31022 (Array (_ BitVec 32) ValueCell!11396)) (size!31536 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!5386 0))(
  ( (LongMapFixedSize!5387 (defaultEntry!6045 Int) (mask!29728 (_ BitVec 32)) (extraKeys!5777 (_ BitVec 32)) (zeroValue!5881 V!37139) (minValue!5881 V!37139) (_size!2748 (_ BitVec 32)) (_keys!11189 array!64432) (_values!6068 array!64434) (_vacant!2748 (_ BitVec 32))) )
))
(declare-fun thiss!1427 () LongMapFixedSize!5386)

(declare-fun seekEntry!0 ((_ BitVec 64) array!64432 (_ BitVec 32)) SeekEntryResult!9626)

(assert (=> b!1026109 (= lt!451336 (seekEntry!0 key!909 (_keys!11189 thiss!1427) (mask!29728 thiss!1427)))))

(declare-fun mapNonEmpty!37727 () Bool)

(declare-fun mapRes!37727 () Bool)

(declare-fun tp!72483 () Bool)

(declare-fun e!578812 () Bool)

(assert (=> mapNonEmpty!37727 (= mapRes!37727 (and tp!72483 e!578812))))

(declare-fun mapRest!37727 () (Array (_ BitVec 32) ValueCell!11396))

(declare-fun mapKey!37727 () (_ BitVec 32))

(declare-fun mapValue!37727 () ValueCell!11396)

(assert (=> mapNonEmpty!37727 (= (arr!31022 (_values!6068 thiss!1427)) (store mapRest!37727 mapKey!37727 mapValue!37727))))

(declare-fun b!1026110 () Bool)

(declare-fun tp_is_empty!24199 () Bool)

(assert (=> b!1026110 (= e!578812 tp_is_empty!24199)))

(declare-fun b!1026111 () Bool)

(declare-fun res!687008 () Bool)

(assert (=> b!1026111 (=> (not res!687008) (not e!578810))))

(assert (=> b!1026111 (= res!687008 (not (= key!909 (bvneg key!909))))))

(declare-fun b!1026112 () Bool)

(declare-fun e!578814 () Bool)

(assert (=> b!1026112 (= e!578816 (not e!578814))))

(declare-fun res!687006 () Bool)

(assert (=> b!1026112 (=> res!687006 e!578814)))

(assert (=> b!1026112 (= res!687006 (or (bvslt (index!40875 lt!451336) #b00000000000000000000000000000000) (bvsge (index!40875 lt!451336) (size!31535 (_keys!11189 thiss!1427))) (bvsge (size!31535 (_keys!11189 thiss!1427)) #b01111111111111111111111111111111)))))

(declare-fun lt!451335 () array!64432)

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!64432 (_ BitVec 32)) Bool)

(assert (=> b!1026112 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!451335 (mask!29728 thiss!1427))))

(declare-datatypes ((Unit!33390 0))(
  ( (Unit!33391) )
))
(declare-fun lt!451337 () Unit!33390)

(declare-fun lemmaPutLongMinValuePreservesForallSeekEntryOrOpen!0 (array!64432 (_ BitVec 32) (_ BitVec 32)) Unit!33390)

(assert (=> b!1026112 (= lt!451337 (lemmaPutLongMinValuePreservesForallSeekEntryOrOpen!0 (_keys!11189 thiss!1427) (index!40875 lt!451336) (mask!29728 thiss!1427)))))

(declare-datatypes ((List!21879 0))(
  ( (Nil!21876) (Cons!21875 (h!23073 (_ BitVec 64)) (t!30948 List!21879)) )
))
(declare-fun arrayNoDuplicates!0 (array!64432 (_ BitVec 32) List!21879) Bool)

(assert (=> b!1026112 (arrayNoDuplicates!0 lt!451335 #b00000000000000000000000000000000 Nil!21876)))

(declare-fun lt!451339 () Unit!33390)

(declare-fun lemmaPutNonValidKeyPreservesNoDuplicate!0 (array!64432 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) List!21879) Unit!33390)

(assert (=> b!1026112 (= lt!451339 (lemmaPutNonValidKeyPreservesNoDuplicate!0 (_keys!11189 thiss!1427) #b1000000000000000000000000000000000000000000000000000000000000000 (index!40875 lt!451336) #b00000000000000000000000000000000 Nil!21876))))

(declare-fun arrayCountValidKeys!0 (array!64432 (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1026112 (= (arrayCountValidKeys!0 lt!451335 #b00000000000000000000000000000000 (size!31535 (_keys!11189 thiss!1427))) (bvsub (arrayCountValidKeys!0 (_keys!11189 thiss!1427) #b00000000000000000000000000000000 (size!31535 (_keys!11189 thiss!1427))) #b00000000000000000000000000000001))))

(assert (=> b!1026112 (= lt!451335 (array!64433 (store (arr!31021 (_keys!11189 thiss!1427)) (index!40875 lt!451336) #b1000000000000000000000000000000000000000000000000000000000000000) (size!31535 (_keys!11189 thiss!1427))))))

(declare-fun lt!451334 () Unit!33390)

(declare-fun lemmaRemoveValidKeyDecreasesNumberOfValidKeysInArray!0 (array!64432 (_ BitVec 32) (_ BitVec 64)) Unit!33390)

(assert (=> b!1026112 (= lt!451334 (lemmaRemoveValidKeyDecreasesNumberOfValidKeysInArray!0 (_keys!11189 thiss!1427) (index!40875 lt!451336) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun mapIsEmpty!37727 () Bool)

(assert (=> mapIsEmpty!37727 mapRes!37727))

(declare-fun e!578813 () Bool)

(declare-fun e!578815 () Bool)

(declare-fun array_inv!23877 (array!64432) Bool)

(declare-fun array_inv!23878 (array!64434) Bool)

(assert (=> b!1026113 (= e!578815 (and tp!72484 tp_is_empty!24199 (array_inv!23877 (_keys!11189 thiss!1427)) (array_inv!23878 (_values!6068 thiss!1427)) e!578813))))

(declare-fun res!687009 () Bool)

(assert (=> start!89516 (=> (not res!687009) (not e!578810))))

(declare-fun valid!1998 (LongMapFixedSize!5386) Bool)

(assert (=> start!89516 (= res!687009 (valid!1998 thiss!1427))))

(assert (=> start!89516 e!578810))

(assert (=> start!89516 e!578815))

(assert (=> start!89516 true))

(declare-fun b!1026114 () Bool)

(assert (=> b!1026114 (= e!578814 true)))

(declare-fun lt!451338 () Bool)

(assert (=> b!1026114 (= lt!451338 (arrayNoDuplicates!0 (_keys!11189 thiss!1427) #b00000000000000000000000000000000 Nil!21876))))

(declare-fun b!1026115 () Bool)

(declare-fun e!578811 () Bool)

(assert (=> b!1026115 (= e!578811 tp_is_empty!24199)))

(declare-fun b!1026116 () Bool)

(assert (=> b!1026116 (= e!578813 (and e!578811 mapRes!37727))))

(declare-fun condMapEmpty!37727 () Bool)

(declare-fun mapDefault!37727 () ValueCell!11396)

