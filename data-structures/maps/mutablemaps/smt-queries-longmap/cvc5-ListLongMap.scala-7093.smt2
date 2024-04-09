; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!90008 () Bool)

(assert start!90008)

(declare-fun b!1030297 () Bool)

(declare-fun b_free!20611 () Bool)

(declare-fun b_next!20611 () Bool)

(assert (=> b!1030297 (= b_free!20611 (not b_next!20611))))

(declare-fun tp!72901 () Bool)

(declare-fun b_and!33001 () Bool)

(assert (=> b!1030297 (= tp!72901 b_and!33001)))

(declare-fun b!1030289 () Bool)

(declare-fun res!689075 () Bool)

(declare-fun e!581826 () Bool)

(assert (=> b!1030289 (=> res!689075 e!581826)))

(declare-datatypes ((V!37315 0))(
  ( (V!37316 (val!12216 Int)) )
))
(declare-datatypes ((ValueCell!11462 0))(
  ( (ValueCellFull!11462 (v!14794 V!37315)) (EmptyCell!11462) )
))
(declare-datatypes ((Unit!33622 0))(
  ( (Unit!33623) )
))
(declare-datatypes ((array!64708 0))(
  ( (array!64709 (arr!31153 (Array (_ BitVec 32) (_ BitVec 64))) (size!31671 (_ BitVec 32))) )
))
(declare-datatypes ((array!64710 0))(
  ( (array!64711 (arr!31154 (Array (_ BitVec 32) ValueCell!11462)) (size!31672 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!5518 0))(
  ( (LongMapFixedSize!5519 (defaultEntry!6131 Int) (mask!29902 (_ BitVec 32)) (extraKeys!5863 (_ BitVec 32)) (zeroValue!5967 V!37315) (minValue!5967 V!37315) (_size!2814 (_ BitVec 32)) (_keys!11299 array!64708) (_values!6154 array!64710) (_vacant!2814 (_ BitVec 32))) )
))
(declare-datatypes ((tuple2!15676 0))(
  ( (tuple2!15677 (_1!7848 Unit!33622) (_2!7848 LongMapFixedSize!5518)) )
))
(declare-fun lt!454456 () tuple2!15676)

(assert (=> b!1030289 (= res!689075 (or (not (= (size!31672 (_values!6154 (_2!7848 lt!454456))) (bvadd #b00000000000000000000000000000001 (mask!29902 (_2!7848 lt!454456))))) (not (= (size!31671 (_keys!11299 (_2!7848 lt!454456))) (size!31672 (_values!6154 (_2!7848 lt!454456))))) (bvslt (mask!29902 (_2!7848 lt!454456)) #b00000000000000000000000000000000) (bvslt (extraKeys!5863 (_2!7848 lt!454456)) #b00000000000000000000000000000000) (bvsgt (extraKeys!5863 (_2!7848 lt!454456)) #b00000000000000000000000000000011)))))

(declare-fun b!1030290 () Bool)

(declare-datatypes ((List!21941 0))(
  ( (Nil!21938) (Cons!21937 (h!23139 (_ BitVec 64)) (t!31054 List!21941)) )
))
(declare-fun arrayNoDuplicates!0 (array!64708 (_ BitVec 32) List!21941) Bool)

(assert (=> b!1030290 (= e!581826 (arrayNoDuplicates!0 (_keys!11299 (_2!7848 lt!454456)) #b00000000000000000000000000000000 Nil!21938))))

(declare-fun b!1030291 () Bool)

(declare-fun e!581829 () Bool)

(assert (=> b!1030291 (= e!581829 (not e!581826))))

(declare-fun res!689074 () Bool)

(assert (=> b!1030291 (=> res!689074 e!581826)))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!1030291 (= res!689074 (not (validMask!0 (mask!29902 (_2!7848 lt!454456)))))))

(declare-fun lt!454452 () array!64710)

(declare-fun thiss!1427 () LongMapFixedSize!5518)

(declare-fun lt!454457 () array!64708)

(declare-fun Unit!33624 () Unit!33622)

(declare-fun Unit!33625 () Unit!33622)

(assert (=> b!1030291 (= lt!454456 (ite (bvsgt (bvadd #b00000000000000000000000000000001 (_vacant!2814 thiss!1427)) #b00000000000000000000000000000000) (tuple2!15677 Unit!33624 (LongMapFixedSize!5519 (defaultEntry!6131 thiss!1427) (mask!29902 thiss!1427) (extraKeys!5863 thiss!1427) (zeroValue!5967 thiss!1427) (minValue!5967 thiss!1427) (bvsub (_size!2814 thiss!1427) #b00000000000000000000000000000001) lt!454457 lt!454452 (bvadd #b00000000000000000000000000000001 (_vacant!2814 thiss!1427)))) (tuple2!15677 Unit!33625 (LongMapFixedSize!5519 (defaultEntry!6131 thiss!1427) (mask!29902 thiss!1427) (extraKeys!5863 thiss!1427) (zeroValue!5967 thiss!1427) (minValue!5967 thiss!1427) (bvsub (_size!2814 thiss!1427) #b00000000000000000000000000000001) lt!454457 lt!454452 (_vacant!2814 thiss!1427)))))))

(declare-fun key!909 () (_ BitVec 64))

(declare-datatypes ((tuple2!15678 0))(
  ( (tuple2!15679 (_1!7849 (_ BitVec 64)) (_2!7849 V!37315)) )
))
(declare-datatypes ((List!21942 0))(
  ( (Nil!21939) (Cons!21938 (h!23140 tuple2!15678) (t!31055 List!21942)) )
))
(declare-datatypes ((ListLongMap!13799 0))(
  ( (ListLongMap!13800 (toList!6915 List!21942)) )
))
(declare-fun -!491 (ListLongMap!13799 (_ BitVec 64)) ListLongMap!13799)

(declare-fun getCurrentListMap!3922 (array!64708 array!64710 (_ BitVec 32) (_ BitVec 32) V!37315 V!37315 (_ BitVec 32) Int) ListLongMap!13799)

(assert (=> b!1030291 (= (-!491 (getCurrentListMap!3922 (_keys!11299 thiss!1427) (_values!6154 thiss!1427) (mask!29902 thiss!1427) (extraKeys!5863 thiss!1427) (zeroValue!5967 thiss!1427) (minValue!5967 thiss!1427) #b00000000000000000000000000000000 (defaultEntry!6131 thiss!1427)) key!909) (getCurrentListMap!3922 lt!454457 lt!454452 (mask!29902 thiss!1427) (extraKeys!5863 thiss!1427) (zeroValue!5967 thiss!1427) (minValue!5967 thiss!1427) #b00000000000000000000000000000000 (defaultEntry!6131 thiss!1427)))))

(declare-datatypes ((SeekEntryResult!9677 0))(
  ( (MissingZero!9677 (index!41078 (_ BitVec 32))) (Found!9677 (index!41079 (_ BitVec 32))) (Intermediate!9677 (undefined!10489 Bool) (index!41080 (_ BitVec 32)) (x!91678 (_ BitVec 32))) (Undefined!9677) (MissingVacant!9677 (index!41081 (_ BitVec 32))) )
))
(declare-fun lt!454454 () SeekEntryResult!9677)

(declare-fun dynLambda!1966 (Int (_ BitVec 64)) V!37315)

(assert (=> b!1030291 (= lt!454452 (array!64711 (store (arr!31154 (_values!6154 thiss!1427)) (index!41079 lt!454454) (ValueCellFull!11462 (dynLambda!1966 (defaultEntry!6131 thiss!1427) #b0000000000000000000000000000000000000000000000000000000000000000))) (size!31672 (_values!6154 thiss!1427))))))

(declare-fun lt!454459 () Unit!33622)

(declare-fun lemmaRemoveValidKeyToArrayThenRemoveKeyFromListMap!15 (array!64708 array!64710 (_ BitVec 32) (_ BitVec 32) V!37315 V!37315 (_ BitVec 32) (_ BitVec 64) Int) Unit!33622)

(assert (=> b!1030291 (= lt!454459 (lemmaRemoveValidKeyToArrayThenRemoveKeyFromListMap!15 (_keys!11299 thiss!1427) (_values!6154 thiss!1427) (mask!29902 thiss!1427) (extraKeys!5863 thiss!1427) (zeroValue!5967 thiss!1427) (minValue!5967 thiss!1427) (index!41079 lt!454454) key!909 (defaultEntry!6131 thiss!1427)))))

(declare-fun arrayContainsKey!0 (array!64708 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1030291 (not (arrayContainsKey!0 lt!454457 key!909 #b00000000000000000000000000000000))))

(declare-fun lt!454455 () Unit!33622)

(declare-fun lemmaArrayNoDuplicateRemoveOneThenNotContain!0 (array!64708 (_ BitVec 32) (_ BitVec 64)) Unit!33622)

(assert (=> b!1030291 (= lt!454455 (lemmaArrayNoDuplicateRemoveOneThenNotContain!0 (_keys!11299 thiss!1427) (index!41079 lt!454454) key!909))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!64708 (_ BitVec 32)) Bool)

(assert (=> b!1030291 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!454457 (mask!29902 thiss!1427))))

(declare-fun lt!454451 () Unit!33622)

(declare-fun lemmaPutLongMinValuePreservesForallSeekEntryOrOpen!0 (array!64708 (_ BitVec 32) (_ BitVec 32)) Unit!33622)

(assert (=> b!1030291 (= lt!454451 (lemmaPutLongMinValuePreservesForallSeekEntryOrOpen!0 (_keys!11299 thiss!1427) (index!41079 lt!454454) (mask!29902 thiss!1427)))))

(assert (=> b!1030291 (arrayNoDuplicates!0 lt!454457 #b00000000000000000000000000000000 Nil!21938)))

(declare-fun lt!454458 () Unit!33622)

(declare-fun lemmaPutNonValidKeyPreservesNoDuplicate!0 (array!64708 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) List!21941) Unit!33622)

(assert (=> b!1030291 (= lt!454458 (lemmaPutNonValidKeyPreservesNoDuplicate!0 (_keys!11299 thiss!1427) #b1000000000000000000000000000000000000000000000000000000000000000 (index!41079 lt!454454) #b00000000000000000000000000000000 Nil!21938))))

(declare-fun arrayCountValidKeys!0 (array!64708 (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1030291 (= (arrayCountValidKeys!0 lt!454457 #b00000000000000000000000000000000 (size!31671 (_keys!11299 thiss!1427))) (bvsub (arrayCountValidKeys!0 (_keys!11299 thiss!1427) #b00000000000000000000000000000000 (size!31671 (_keys!11299 thiss!1427))) #b00000000000000000000000000000001))))

(assert (=> b!1030291 (= lt!454457 (array!64709 (store (arr!31153 (_keys!11299 thiss!1427)) (index!41079 lt!454454) #b1000000000000000000000000000000000000000000000000000000000000000) (size!31671 (_keys!11299 thiss!1427))))))

(declare-fun lt!454453 () Unit!33622)

(declare-fun lemmaRemoveValidKeyDecreasesNumberOfValidKeysInArray!0 (array!64708 (_ BitVec 32) (_ BitVec 64)) Unit!33622)

(assert (=> b!1030291 (= lt!454453 (lemmaRemoveValidKeyDecreasesNumberOfValidKeysInArray!0 (_keys!11299 thiss!1427) (index!41079 lt!454454) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1030292 () Bool)

(declare-fun res!689073 () Bool)

(declare-fun e!581825 () Bool)

(assert (=> b!1030292 (=> (not res!689073) (not e!581825))))

(assert (=> b!1030292 (= res!689073 (not (= key!909 (bvneg key!909))))))

(declare-fun b!1030293 () Bool)

(declare-fun e!581828 () Bool)

(declare-fun tp_is_empty!24331 () Bool)

(assert (=> b!1030293 (= e!581828 tp_is_empty!24331)))

(declare-fun mapIsEmpty!37947 () Bool)

(declare-fun mapRes!37947 () Bool)

(assert (=> mapIsEmpty!37947 mapRes!37947))

(declare-fun res!689076 () Bool)

(assert (=> start!90008 (=> (not res!689076) (not e!581825))))

(declare-fun valid!2043 (LongMapFixedSize!5518) Bool)

(assert (=> start!90008 (= res!689076 (valid!2043 thiss!1427))))

(assert (=> start!90008 e!581825))

(declare-fun e!581823 () Bool)

(assert (=> start!90008 e!581823))

(assert (=> start!90008 true))

(declare-fun b!1030294 () Bool)

(declare-fun e!581827 () Bool)

(declare-fun e!581824 () Bool)

(assert (=> b!1030294 (= e!581827 (and e!581824 mapRes!37947))))

(declare-fun condMapEmpty!37947 () Bool)

(declare-fun mapDefault!37947 () ValueCell!11462)

