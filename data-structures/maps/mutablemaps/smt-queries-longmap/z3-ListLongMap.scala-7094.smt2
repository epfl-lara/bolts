; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!90016 () Bool)

(assert start!90016)

(declare-fun b!1030426 () Bool)

(declare-fun b_free!20619 () Bool)

(declare-fun b_next!20619 () Bool)

(assert (=> b!1030426 (= b_free!20619 (not b_next!20619))))

(declare-fun tp!72926 () Bool)

(declare-fun b_and!33017 () Bool)

(assert (=> b!1030426 (= tp!72926 b_and!33017)))

(declare-fun b!1030422 () Bool)

(declare-fun e!581923 () Bool)

(declare-fun tp_is_empty!24339 () Bool)

(assert (=> b!1030422 (= e!581923 tp_is_empty!24339)))

(declare-fun b!1030423 () Bool)

(declare-fun e!581922 () Bool)

(declare-fun mapRes!37959 () Bool)

(assert (=> b!1030423 (= e!581922 (and e!581923 mapRes!37959))))

(declare-fun condMapEmpty!37959 () Bool)

(declare-datatypes ((V!37325 0))(
  ( (V!37326 (val!12220 Int)) )
))
(declare-datatypes ((ValueCell!11466 0))(
  ( (ValueCellFull!11466 (v!14798 V!37325)) (EmptyCell!11466) )
))
(declare-datatypes ((array!64724 0))(
  ( (array!64725 (arr!31161 (Array (_ BitVec 32) (_ BitVec 64))) (size!31679 (_ BitVec 32))) )
))
(declare-datatypes ((array!64726 0))(
  ( (array!64727 (arr!31162 (Array (_ BitVec 32) ValueCell!11466)) (size!31680 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!5526 0))(
  ( (LongMapFixedSize!5527 (defaultEntry!6135 Int) (mask!29908 (_ BitVec 32)) (extraKeys!5867 (_ BitVec 32)) (zeroValue!5971 V!37325) (minValue!5971 V!37325) (_size!2818 (_ BitVec 32)) (_keys!11303 array!64724) (_values!6158 array!64726) (_vacant!2818 (_ BitVec 32))) )
))
(declare-fun thiss!1427 () LongMapFixedSize!5526)

(declare-fun mapDefault!37959 () ValueCell!11466)

(assert (=> b!1030423 (= condMapEmpty!37959 (= (arr!31162 (_values!6158 thiss!1427)) ((as const (Array (_ BitVec 32) ValueCell!11466)) mapDefault!37959)))))

(declare-fun b!1030424 () Bool)

(declare-fun e!581921 () Bool)

(declare-fun e!581918 () Bool)

(assert (=> b!1030424 (= e!581921 (not e!581918))))

(declare-fun res!689152 () Bool)

(assert (=> b!1030424 (=> res!689152 e!581918)))

(declare-datatypes ((Unit!33636 0))(
  ( (Unit!33637) )
))
(declare-datatypes ((tuple2!15690 0))(
  ( (tuple2!15691 (_1!7855 Unit!33636) (_2!7855 LongMapFixedSize!5526)) )
))
(declare-fun lt!454561 () tuple2!15690)

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!1030424 (= res!689152 (not (validMask!0 (mask!29908 (_2!7855 lt!454561)))))))

(declare-fun lt!454567 () array!64726)

(declare-fun lt!454560 () array!64724)

(declare-fun Unit!33638 () Unit!33636)

(declare-fun Unit!33639 () Unit!33636)

(assert (=> b!1030424 (= lt!454561 (ite (bvsgt (bvadd #b00000000000000000000000000000001 (_vacant!2818 thiss!1427)) #b00000000000000000000000000000000) (tuple2!15691 Unit!33638 (LongMapFixedSize!5527 (defaultEntry!6135 thiss!1427) (mask!29908 thiss!1427) (extraKeys!5867 thiss!1427) (zeroValue!5971 thiss!1427) (minValue!5971 thiss!1427) (bvsub (_size!2818 thiss!1427) #b00000000000000000000000000000001) lt!454560 lt!454567 (bvadd #b00000000000000000000000000000001 (_vacant!2818 thiss!1427)))) (tuple2!15691 Unit!33639 (LongMapFixedSize!5527 (defaultEntry!6135 thiss!1427) (mask!29908 thiss!1427) (extraKeys!5867 thiss!1427) (zeroValue!5971 thiss!1427) (minValue!5971 thiss!1427) (bvsub (_size!2818 thiss!1427) #b00000000000000000000000000000001) lt!454560 lt!454567 (_vacant!2818 thiss!1427)))))))

(declare-fun key!909 () (_ BitVec 64))

(declare-datatypes ((tuple2!15692 0))(
  ( (tuple2!15693 (_1!7856 (_ BitVec 64)) (_2!7856 V!37325)) )
))
(declare-datatypes ((List!21947 0))(
  ( (Nil!21944) (Cons!21943 (h!23145 tuple2!15692) (t!31068 List!21947)) )
))
(declare-datatypes ((ListLongMap!13805 0))(
  ( (ListLongMap!13806 (toList!6918 List!21947)) )
))
(declare-fun -!494 (ListLongMap!13805 (_ BitVec 64)) ListLongMap!13805)

(declare-fun getCurrentListMap!3925 (array!64724 array!64726 (_ BitVec 32) (_ BitVec 32) V!37325 V!37325 (_ BitVec 32) Int) ListLongMap!13805)

(assert (=> b!1030424 (= (-!494 (getCurrentListMap!3925 (_keys!11303 thiss!1427) (_values!6158 thiss!1427) (mask!29908 thiss!1427) (extraKeys!5867 thiss!1427) (zeroValue!5971 thiss!1427) (minValue!5971 thiss!1427) #b00000000000000000000000000000000 (defaultEntry!6135 thiss!1427)) key!909) (getCurrentListMap!3925 lt!454560 lt!454567 (mask!29908 thiss!1427) (extraKeys!5867 thiss!1427) (zeroValue!5971 thiss!1427) (minValue!5971 thiss!1427) #b00000000000000000000000000000000 (defaultEntry!6135 thiss!1427)))))

(declare-datatypes ((SeekEntryResult!9680 0))(
  ( (MissingZero!9680 (index!41090 (_ BitVec 32))) (Found!9680 (index!41091 (_ BitVec 32))) (Intermediate!9680 (undefined!10492 Bool) (index!41092 (_ BitVec 32)) (x!91697 (_ BitVec 32))) (Undefined!9680) (MissingVacant!9680 (index!41093 (_ BitVec 32))) )
))
(declare-fun lt!454563 () SeekEntryResult!9680)

(declare-fun dynLambda!1969 (Int (_ BitVec 64)) V!37325)

(assert (=> b!1030424 (= lt!454567 (array!64727 (store (arr!31162 (_values!6158 thiss!1427)) (index!41091 lt!454563) (ValueCellFull!11466 (dynLambda!1969 (defaultEntry!6135 thiss!1427) #b0000000000000000000000000000000000000000000000000000000000000000))) (size!31680 (_values!6158 thiss!1427))))))

(declare-fun lt!454559 () Unit!33636)

(declare-fun lemmaRemoveValidKeyToArrayThenRemoveKeyFromListMap!18 (array!64724 array!64726 (_ BitVec 32) (_ BitVec 32) V!37325 V!37325 (_ BitVec 32) (_ BitVec 64) Int) Unit!33636)

(assert (=> b!1030424 (= lt!454559 (lemmaRemoveValidKeyToArrayThenRemoveKeyFromListMap!18 (_keys!11303 thiss!1427) (_values!6158 thiss!1427) (mask!29908 thiss!1427) (extraKeys!5867 thiss!1427) (zeroValue!5971 thiss!1427) (minValue!5971 thiss!1427) (index!41091 lt!454563) key!909 (defaultEntry!6135 thiss!1427)))))

(declare-fun arrayContainsKey!0 (array!64724 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1030424 (not (arrayContainsKey!0 lt!454560 key!909 #b00000000000000000000000000000000))))

(declare-fun lt!454564 () Unit!33636)

(declare-fun lemmaArrayNoDuplicateRemoveOneThenNotContain!0 (array!64724 (_ BitVec 32) (_ BitVec 64)) Unit!33636)

(assert (=> b!1030424 (= lt!454564 (lemmaArrayNoDuplicateRemoveOneThenNotContain!0 (_keys!11303 thiss!1427) (index!41091 lt!454563) key!909))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!64724 (_ BitVec 32)) Bool)

(assert (=> b!1030424 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!454560 (mask!29908 thiss!1427))))

(declare-fun lt!454565 () Unit!33636)

(declare-fun lemmaPutLongMinValuePreservesForallSeekEntryOrOpen!0 (array!64724 (_ BitVec 32) (_ BitVec 32)) Unit!33636)

(assert (=> b!1030424 (= lt!454565 (lemmaPutLongMinValuePreservesForallSeekEntryOrOpen!0 (_keys!11303 thiss!1427) (index!41091 lt!454563) (mask!29908 thiss!1427)))))

(declare-datatypes ((List!21948 0))(
  ( (Nil!21945) (Cons!21944 (h!23146 (_ BitVec 64)) (t!31069 List!21948)) )
))
(declare-fun arrayNoDuplicates!0 (array!64724 (_ BitVec 32) List!21948) Bool)

(assert (=> b!1030424 (arrayNoDuplicates!0 lt!454560 #b00000000000000000000000000000000 Nil!21945)))

(declare-fun lt!454562 () Unit!33636)

(declare-fun lemmaPutNonValidKeyPreservesNoDuplicate!0 (array!64724 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) List!21948) Unit!33636)

(assert (=> b!1030424 (= lt!454562 (lemmaPutNonValidKeyPreservesNoDuplicate!0 (_keys!11303 thiss!1427) #b1000000000000000000000000000000000000000000000000000000000000000 (index!41091 lt!454563) #b00000000000000000000000000000000 Nil!21945))))

(declare-fun arrayCountValidKeys!0 (array!64724 (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1030424 (= (arrayCountValidKeys!0 lt!454560 #b00000000000000000000000000000000 (size!31679 (_keys!11303 thiss!1427))) (bvsub (arrayCountValidKeys!0 (_keys!11303 thiss!1427) #b00000000000000000000000000000000 (size!31679 (_keys!11303 thiss!1427))) #b00000000000000000000000000000001))))

(assert (=> b!1030424 (= lt!454560 (array!64725 (store (arr!31161 (_keys!11303 thiss!1427)) (index!41091 lt!454563) #b1000000000000000000000000000000000000000000000000000000000000000) (size!31679 (_keys!11303 thiss!1427))))))

(declare-fun lt!454566 () Unit!33636)

(declare-fun lemmaRemoveValidKeyDecreasesNumberOfValidKeysInArray!0 (array!64724 (_ BitVec 32) (_ BitVec 64)) Unit!33636)

(assert (=> b!1030424 (= lt!454566 (lemmaRemoveValidKeyDecreasesNumberOfValidKeysInArray!0 (_keys!11303 thiss!1427) (index!41091 lt!454563) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1030425 () Bool)

(declare-fun res!689155 () Bool)

(assert (=> b!1030425 (=> res!689155 e!581918)))

(assert (=> b!1030425 (= res!689155 (not (arrayNoDuplicates!0 (_keys!11303 (_2!7855 lt!454561)) #b00000000000000000000000000000000 Nil!21945)))))

(declare-fun mapIsEmpty!37959 () Bool)

(assert (=> mapIsEmpty!37959 mapRes!37959))

(declare-fun e!581925 () Bool)

(declare-fun array_inv!23967 (array!64724) Bool)

(declare-fun array_inv!23968 (array!64726) Bool)

(assert (=> b!1030426 (= e!581925 (and tp!72926 tp_is_empty!24339 (array_inv!23967 (_keys!11303 thiss!1427)) (array_inv!23968 (_values!6158 thiss!1427)) e!581922))))

(declare-fun b!1030427 () Bool)

(assert (=> b!1030427 (= e!581918 (bvsle #b00000000000000000000000000000000 (size!31679 (_keys!11303 (_2!7855 lt!454561)))))))

(declare-fun b!1030428 () Bool)

(declare-fun res!689151 () Bool)

(assert (=> b!1030428 (=> res!689151 e!581918)))

(assert (=> b!1030428 (= res!689151 (not (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 (_keys!11303 (_2!7855 lt!454561)) (mask!29908 (_2!7855 lt!454561)))))))

(declare-fun b!1030429 () Bool)

(declare-fun e!581919 () Bool)

(assert (=> b!1030429 (= e!581919 e!581921)))

(declare-fun res!689150 () Bool)

(assert (=> b!1030429 (=> (not res!689150) (not e!581921))))

(get-info :version)

(assert (=> b!1030429 (= res!689150 ((_ is Found!9680) lt!454563))))

(declare-fun seekEntry!0 ((_ BitVec 64) array!64724 (_ BitVec 32)) SeekEntryResult!9680)

(assert (=> b!1030429 (= lt!454563 (seekEntry!0 key!909 (_keys!11303 thiss!1427) (mask!29908 thiss!1427)))))

(declare-fun mapNonEmpty!37959 () Bool)

(declare-fun tp!72925 () Bool)

(declare-fun e!581920 () Bool)

(assert (=> mapNonEmpty!37959 (= mapRes!37959 (and tp!72925 e!581920))))

(declare-fun mapKey!37959 () (_ BitVec 32))

(declare-fun mapRest!37959 () (Array (_ BitVec 32) ValueCell!11466))

(declare-fun mapValue!37959 () ValueCell!11466)

(assert (=> mapNonEmpty!37959 (= (arr!31162 (_values!6158 thiss!1427)) (store mapRest!37959 mapKey!37959 mapValue!37959))))

(declare-fun res!689149 () Bool)

(assert (=> start!90016 (=> (not res!689149) (not e!581919))))

(declare-fun valid!2045 (LongMapFixedSize!5526) Bool)

(assert (=> start!90016 (= res!689149 (valid!2045 thiss!1427))))

(assert (=> start!90016 e!581919))

(assert (=> start!90016 e!581925))

(assert (=> start!90016 true))

(declare-fun b!1030430 () Bool)

(declare-fun res!689153 () Bool)

(assert (=> b!1030430 (=> (not res!689153) (not e!581919))))

(assert (=> b!1030430 (= res!689153 (not (= key!909 (bvneg key!909))))))

(declare-fun b!1030431 () Bool)

(declare-fun res!689154 () Bool)

(assert (=> b!1030431 (=> res!689154 e!581918)))

(assert (=> b!1030431 (= res!689154 (or (not (= (size!31680 (_values!6158 (_2!7855 lt!454561))) (bvadd #b00000000000000000000000000000001 (mask!29908 (_2!7855 lt!454561))))) (not (= (size!31679 (_keys!11303 (_2!7855 lt!454561))) (size!31680 (_values!6158 (_2!7855 lt!454561))))) (bvslt (mask!29908 (_2!7855 lt!454561)) #b00000000000000000000000000000000) (bvslt (extraKeys!5867 (_2!7855 lt!454561)) #b00000000000000000000000000000000) (bvsgt (extraKeys!5867 (_2!7855 lt!454561)) #b00000000000000000000000000000011)))))

(declare-fun b!1030432 () Bool)

(assert (=> b!1030432 (= e!581920 tp_is_empty!24339)))

(assert (= (and start!90016 res!689149) b!1030430))

(assert (= (and b!1030430 res!689153) b!1030429))

(assert (= (and b!1030429 res!689150) b!1030424))

(assert (= (and b!1030424 (not res!689152)) b!1030431))

(assert (= (and b!1030431 (not res!689154)) b!1030428))

(assert (= (and b!1030428 (not res!689151)) b!1030425))

(assert (= (and b!1030425 (not res!689155)) b!1030427))

(assert (= (and b!1030423 condMapEmpty!37959) mapIsEmpty!37959))

(assert (= (and b!1030423 (not condMapEmpty!37959)) mapNonEmpty!37959))

(assert (= (and mapNonEmpty!37959 ((_ is ValueCellFull!11466) mapValue!37959)) b!1030432))

(assert (= (and b!1030423 ((_ is ValueCellFull!11466) mapDefault!37959)) b!1030422))

(assert (= b!1030426 b!1030423))

(assert (= start!90016 b!1030426))

(declare-fun b_lambda!15979 () Bool)

(assert (=> (not b_lambda!15979) (not b!1030424)))

(declare-fun t!31067 () Bool)

(declare-fun tb!6945 () Bool)

(assert (=> (and b!1030426 (= (defaultEntry!6135 thiss!1427) (defaultEntry!6135 thiss!1427)) t!31067) tb!6945))

(declare-fun result!14209 () Bool)

(assert (=> tb!6945 (= result!14209 tp_is_empty!24339)))

(assert (=> b!1030424 t!31067))

(declare-fun b_and!33019 () Bool)

(assert (= b_and!33017 (and (=> t!31067 result!14209) b_and!33019)))

(declare-fun m!950321 () Bool)

(assert (=> start!90016 m!950321))

(declare-fun m!950323 () Bool)

(assert (=> b!1030428 m!950323))

(declare-fun m!950325 () Bool)

(assert (=> mapNonEmpty!37959 m!950325))

(declare-fun m!950327 () Bool)

(assert (=> b!1030425 m!950327))

(declare-fun m!950329 () Bool)

(assert (=> b!1030424 m!950329))

(declare-fun m!950331 () Bool)

(assert (=> b!1030424 m!950331))

(declare-fun m!950333 () Bool)

(assert (=> b!1030424 m!950333))

(declare-fun m!950335 () Bool)

(assert (=> b!1030424 m!950335))

(declare-fun m!950337 () Bool)

(assert (=> b!1030424 m!950337))

(declare-fun m!950339 () Bool)

(assert (=> b!1030424 m!950339))

(declare-fun m!950341 () Bool)

(assert (=> b!1030424 m!950341))

(declare-fun m!950343 () Bool)

(assert (=> b!1030424 m!950343))

(declare-fun m!950345 () Bool)

(assert (=> b!1030424 m!950345))

(assert (=> b!1030424 m!950343))

(declare-fun m!950347 () Bool)

(assert (=> b!1030424 m!950347))

(declare-fun m!950349 () Bool)

(assert (=> b!1030424 m!950349))

(declare-fun m!950351 () Bool)

(assert (=> b!1030424 m!950351))

(declare-fun m!950353 () Bool)

(assert (=> b!1030424 m!950353))

(declare-fun m!950355 () Bool)

(assert (=> b!1030424 m!950355))

(declare-fun m!950357 () Bool)

(assert (=> b!1030424 m!950357))

(declare-fun m!950359 () Bool)

(assert (=> b!1030424 m!950359))

(declare-fun m!950361 () Bool)

(assert (=> b!1030424 m!950361))

(declare-fun m!950363 () Bool)

(assert (=> b!1030429 m!950363))

(declare-fun m!950365 () Bool)

(assert (=> b!1030426 m!950365))

(declare-fun m!950367 () Bool)

(assert (=> b!1030426 m!950367))

(check-sat (not b!1030429) (not mapNonEmpty!37959) (not start!90016) (not b_next!20619) (not b!1030424) tp_is_empty!24339 (not b!1030425) b_and!33019 (not b!1030428) (not b_lambda!15979) (not b!1030426))
(check-sat b_and!33019 (not b_next!20619))
(get-model)

(declare-fun b_lambda!15983 () Bool)

(assert (= b_lambda!15979 (or (and b!1030426 b_free!20619) b_lambda!15983)))

(check-sat (not b!1030429) (not mapNonEmpty!37959) (not start!90016) (not b_next!20619) (not b!1030424) (not b!1030426) (not b!1030425) b_and!33019 (not b!1030428) tp_is_empty!24339 (not b_lambda!15983))
(check-sat b_and!33019 (not b_next!20619))
(get-model)

(declare-fun b!1030482 () Bool)

(declare-fun e!581956 () SeekEntryResult!9680)

(declare-fun lt!454606 () SeekEntryResult!9680)

(assert (=> b!1030482 (= e!581956 (MissingZero!9680 (index!41092 lt!454606)))))

(declare-fun b!1030483 () Bool)

(declare-fun lt!454604 () SeekEntryResult!9680)

(assert (=> b!1030483 (= e!581956 (ite ((_ is MissingVacant!9680) lt!454604) (MissingZero!9680 (index!41093 lt!454604)) lt!454604))))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!64724 (_ BitVec 32)) SeekEntryResult!9680)

(assert (=> b!1030483 (= lt!454604 (seekKeyOrZeroReturnVacant!0 (x!91697 lt!454606) (index!41092 lt!454606) (index!41092 lt!454606) key!909 (_keys!11303 thiss!1427) (mask!29908 thiss!1427)))))

(declare-fun b!1030484 () Bool)

(declare-fun c!104135 () Bool)

(declare-fun lt!454603 () (_ BitVec 64))

(assert (=> b!1030484 (= c!104135 (= lt!454603 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!581958 () SeekEntryResult!9680)

(assert (=> b!1030484 (= e!581958 e!581956)))

(declare-fun b!1030485 () Bool)

(assert (=> b!1030485 (= e!581958 (Found!9680 (index!41092 lt!454606)))))

(declare-fun b!1030486 () Bool)

(declare-fun e!581957 () SeekEntryResult!9680)

(assert (=> b!1030486 (= e!581957 e!581958)))

(assert (=> b!1030486 (= lt!454603 (select (arr!31161 (_keys!11303 thiss!1427)) (index!41092 lt!454606)))))

(declare-fun c!104137 () Bool)

(assert (=> b!1030486 (= c!104137 (= lt!454603 key!909))))

(declare-fun d!123549 () Bool)

(declare-fun lt!454605 () SeekEntryResult!9680)

(assert (=> d!123549 (and (or ((_ is MissingVacant!9680) lt!454605) (not ((_ is Found!9680) lt!454605)) (and (bvsge (index!41091 lt!454605) #b00000000000000000000000000000000) (bvslt (index!41091 lt!454605) (size!31679 (_keys!11303 thiss!1427))))) (not ((_ is MissingVacant!9680) lt!454605)) (or (not ((_ is Found!9680) lt!454605)) (= (select (arr!31161 (_keys!11303 thiss!1427)) (index!41091 lt!454605)) key!909)))))

(assert (=> d!123549 (= lt!454605 e!581957)))

(declare-fun c!104136 () Bool)

(assert (=> d!123549 (= c!104136 (and ((_ is Intermediate!9680) lt!454606) (undefined!10492 lt!454606)))))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!64724 (_ BitVec 32)) SeekEntryResult!9680)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> d!123549 (= lt!454606 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 key!909 (mask!29908 thiss!1427)) key!909 (_keys!11303 thiss!1427) (mask!29908 thiss!1427)))))

(assert (=> d!123549 (validMask!0 (mask!29908 thiss!1427))))

(assert (=> d!123549 (= (seekEntry!0 key!909 (_keys!11303 thiss!1427) (mask!29908 thiss!1427)) lt!454605)))

(declare-fun b!1030487 () Bool)

(assert (=> b!1030487 (= e!581957 Undefined!9680)))

(assert (= (and d!123549 c!104136) b!1030487))

(assert (= (and d!123549 (not c!104136)) b!1030486))

(assert (= (and b!1030486 c!104137) b!1030485))

(assert (= (and b!1030486 (not c!104137)) b!1030484))

(assert (= (and b!1030484 c!104135) b!1030482))

(assert (= (and b!1030484 (not c!104135)) b!1030483))

(declare-fun m!950417 () Bool)

(assert (=> b!1030483 m!950417))

(declare-fun m!950419 () Bool)

(assert (=> b!1030486 m!950419))

(declare-fun m!950421 () Bool)

(assert (=> d!123549 m!950421))

(declare-fun m!950423 () Bool)

(assert (=> d!123549 m!950423))

(assert (=> d!123549 m!950423))

(declare-fun m!950425 () Bool)

(assert (=> d!123549 m!950425))

(declare-fun m!950427 () Bool)

(assert (=> d!123549 m!950427))

(assert (=> b!1030429 d!123549))

(declare-fun b!1030498 () Bool)

(declare-fun e!581969 () Bool)

(declare-fun e!581970 () Bool)

(assert (=> b!1030498 (= e!581969 e!581970)))

(declare-fun res!689183 () Bool)

(assert (=> b!1030498 (=> (not res!689183) (not e!581970))))

(declare-fun e!581968 () Bool)

(assert (=> b!1030498 (= res!689183 (not e!581968))))

(declare-fun res!689184 () Bool)

(assert (=> b!1030498 (=> (not res!689184) (not e!581968))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1030498 (= res!689184 (validKeyInArray!0 (select (arr!31161 (_keys!11303 (_2!7855 lt!454561))) #b00000000000000000000000000000000)))))

(declare-fun b!1030499 () Bool)

(declare-fun e!581967 () Bool)

(declare-fun call!43554 () Bool)

(assert (=> b!1030499 (= e!581967 call!43554)))

(declare-fun b!1030500 () Bool)

(declare-fun contains!5996 (List!21948 (_ BitVec 64)) Bool)

(assert (=> b!1030500 (= e!581968 (contains!5996 Nil!21945 (select (arr!31161 (_keys!11303 (_2!7855 lt!454561))) #b00000000000000000000000000000000)))))

(declare-fun d!123551 () Bool)

(declare-fun res!689185 () Bool)

(assert (=> d!123551 (=> res!689185 e!581969)))

(assert (=> d!123551 (= res!689185 (bvsge #b00000000000000000000000000000000 (size!31679 (_keys!11303 (_2!7855 lt!454561)))))))

(assert (=> d!123551 (= (arrayNoDuplicates!0 (_keys!11303 (_2!7855 lt!454561)) #b00000000000000000000000000000000 Nil!21945) e!581969)))

(declare-fun bm!43551 () Bool)

(declare-fun c!104140 () Bool)

(assert (=> bm!43551 (= call!43554 (arrayNoDuplicates!0 (_keys!11303 (_2!7855 lt!454561)) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (ite c!104140 (Cons!21944 (select (arr!31161 (_keys!11303 (_2!7855 lt!454561))) #b00000000000000000000000000000000) Nil!21945) Nil!21945)))))

(declare-fun b!1030501 () Bool)

(assert (=> b!1030501 (= e!581967 call!43554)))

(declare-fun b!1030502 () Bool)

(assert (=> b!1030502 (= e!581970 e!581967)))

(assert (=> b!1030502 (= c!104140 (validKeyInArray!0 (select (arr!31161 (_keys!11303 (_2!7855 lt!454561))) #b00000000000000000000000000000000)))))

(assert (= (and d!123551 (not res!689185)) b!1030498))

(assert (= (and b!1030498 res!689184) b!1030500))

(assert (= (and b!1030498 res!689183) b!1030502))

(assert (= (and b!1030502 c!104140) b!1030501))

(assert (= (and b!1030502 (not c!104140)) b!1030499))

(assert (= (or b!1030501 b!1030499) bm!43551))

(declare-fun m!950429 () Bool)

(assert (=> b!1030498 m!950429))

(assert (=> b!1030498 m!950429))

(declare-fun m!950431 () Bool)

(assert (=> b!1030498 m!950431))

(assert (=> b!1030500 m!950429))

(assert (=> b!1030500 m!950429))

(declare-fun m!950433 () Bool)

(assert (=> b!1030500 m!950433))

(assert (=> bm!43551 m!950429))

(declare-fun m!950435 () Bool)

(assert (=> bm!43551 m!950435))

(assert (=> b!1030502 m!950429))

(assert (=> b!1030502 m!950429))

(assert (=> b!1030502 m!950431))

(assert (=> b!1030425 d!123551))

(declare-fun d!123553 () Bool)

(declare-fun res!689192 () Bool)

(declare-fun e!581973 () Bool)

(assert (=> d!123553 (=> (not res!689192) (not e!581973))))

(declare-fun simpleValid!395 (LongMapFixedSize!5526) Bool)

(assert (=> d!123553 (= res!689192 (simpleValid!395 thiss!1427))))

(assert (=> d!123553 (= (valid!2045 thiss!1427) e!581973)))

(declare-fun b!1030509 () Bool)

(declare-fun res!689193 () Bool)

(assert (=> b!1030509 (=> (not res!689193) (not e!581973))))

(assert (=> b!1030509 (= res!689193 (= (arrayCountValidKeys!0 (_keys!11303 thiss!1427) #b00000000000000000000000000000000 (size!31679 (_keys!11303 thiss!1427))) (_size!2818 thiss!1427)))))

(declare-fun b!1030510 () Bool)

(declare-fun res!689194 () Bool)

(assert (=> b!1030510 (=> (not res!689194) (not e!581973))))

(assert (=> b!1030510 (= res!689194 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 (_keys!11303 thiss!1427) (mask!29908 thiss!1427)))))

(declare-fun b!1030511 () Bool)

(assert (=> b!1030511 (= e!581973 (arrayNoDuplicates!0 (_keys!11303 thiss!1427) #b00000000000000000000000000000000 Nil!21945))))

(assert (= (and d!123553 res!689192) b!1030509))

(assert (= (and b!1030509 res!689193) b!1030510))

(assert (= (and b!1030510 res!689194) b!1030511))

(declare-fun m!950437 () Bool)

(assert (=> d!123553 m!950437))

(assert (=> b!1030509 m!950339))

(declare-fun m!950439 () Bool)

(assert (=> b!1030510 m!950439))

(declare-fun m!950441 () Bool)

(assert (=> b!1030511 m!950441))

(assert (=> start!90016 d!123553))

(declare-fun b!1030521 () Bool)

(declare-fun e!581982 () Bool)

(declare-fun e!581981 () Bool)

(assert (=> b!1030521 (= e!581982 e!581981)))

(declare-fun lt!454614 () (_ BitVec 64))

(assert (=> b!1030521 (= lt!454614 (select (arr!31161 (_keys!11303 (_2!7855 lt!454561))) #b00000000000000000000000000000000))))

(declare-fun lt!454615 () Unit!33636)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!64724 (_ BitVec 64) (_ BitVec 32)) Unit!33636)

(assert (=> b!1030521 (= lt!454615 (lemmaArrayContainsFromImpliesContainsFromZero!0 (_keys!11303 (_2!7855 lt!454561)) lt!454614 #b00000000000000000000000000000000))))

(assert (=> b!1030521 (arrayContainsKey!0 (_keys!11303 (_2!7855 lt!454561)) lt!454614 #b00000000000000000000000000000000)))

(declare-fun lt!454613 () Unit!33636)

(assert (=> b!1030521 (= lt!454613 lt!454615)))

(declare-fun res!689200 () Bool)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!64724 (_ BitVec 32)) SeekEntryResult!9680)

(assert (=> b!1030521 (= res!689200 (= (seekEntryOrOpen!0 (select (arr!31161 (_keys!11303 (_2!7855 lt!454561))) #b00000000000000000000000000000000) (_keys!11303 (_2!7855 lt!454561)) (mask!29908 (_2!7855 lt!454561))) (Found!9680 #b00000000000000000000000000000000)))))

(assert (=> b!1030521 (=> (not res!689200) (not e!581981))))

(declare-fun bm!43554 () Bool)

(declare-fun call!43557 () Bool)

(assert (=> bm!43554 (= call!43557 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (_keys!11303 (_2!7855 lt!454561)) (mask!29908 (_2!7855 lt!454561))))))

(declare-fun b!1030522 () Bool)

(assert (=> b!1030522 (= e!581982 call!43557)))

(declare-fun b!1030523 () Bool)

(assert (=> b!1030523 (= e!581981 call!43557)))

(declare-fun d!123555 () Bool)

(declare-fun res!689199 () Bool)

(declare-fun e!581980 () Bool)

(assert (=> d!123555 (=> res!689199 e!581980)))

(assert (=> d!123555 (= res!689199 (bvsge #b00000000000000000000000000000000 (size!31679 (_keys!11303 (_2!7855 lt!454561)))))))

(assert (=> d!123555 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 (_keys!11303 (_2!7855 lt!454561)) (mask!29908 (_2!7855 lt!454561))) e!581980)))

(declare-fun b!1030520 () Bool)

(assert (=> b!1030520 (= e!581980 e!581982)))

(declare-fun c!104143 () Bool)

(assert (=> b!1030520 (= c!104143 (validKeyInArray!0 (select (arr!31161 (_keys!11303 (_2!7855 lt!454561))) #b00000000000000000000000000000000)))))

(assert (= (and d!123555 (not res!689199)) b!1030520))

(assert (= (and b!1030520 c!104143) b!1030521))

(assert (= (and b!1030520 (not c!104143)) b!1030522))

(assert (= (and b!1030521 res!689200) b!1030523))

(assert (= (or b!1030523 b!1030522) bm!43554))

(assert (=> b!1030521 m!950429))

(declare-fun m!950443 () Bool)

(assert (=> b!1030521 m!950443))

(declare-fun m!950445 () Bool)

(assert (=> b!1030521 m!950445))

(assert (=> b!1030521 m!950429))

(declare-fun m!950447 () Bool)

(assert (=> b!1030521 m!950447))

(declare-fun m!950449 () Bool)

(assert (=> bm!43554 m!950449))

(assert (=> b!1030520 m!950429))

(assert (=> b!1030520 m!950429))

(assert (=> b!1030520 m!950431))

(assert (=> b!1030428 d!123555))

(declare-fun b!1030525 () Bool)

(declare-fun e!581985 () Bool)

(declare-fun e!581984 () Bool)

(assert (=> b!1030525 (= e!581985 e!581984)))

(declare-fun lt!454617 () (_ BitVec 64))

(assert (=> b!1030525 (= lt!454617 (select (arr!31161 lt!454560) #b00000000000000000000000000000000))))

(declare-fun lt!454618 () Unit!33636)

(assert (=> b!1030525 (= lt!454618 (lemmaArrayContainsFromImpliesContainsFromZero!0 lt!454560 lt!454617 #b00000000000000000000000000000000))))

(assert (=> b!1030525 (arrayContainsKey!0 lt!454560 lt!454617 #b00000000000000000000000000000000)))

(declare-fun lt!454616 () Unit!33636)

(assert (=> b!1030525 (= lt!454616 lt!454618)))

(declare-fun res!689202 () Bool)

(assert (=> b!1030525 (= res!689202 (= (seekEntryOrOpen!0 (select (arr!31161 lt!454560) #b00000000000000000000000000000000) lt!454560 (mask!29908 thiss!1427)) (Found!9680 #b00000000000000000000000000000000)))))

(assert (=> b!1030525 (=> (not res!689202) (not e!581984))))

(declare-fun bm!43555 () Bool)

(declare-fun call!43558 () Bool)

(assert (=> bm!43555 (= call!43558 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) lt!454560 (mask!29908 thiss!1427)))))

(declare-fun b!1030526 () Bool)

(assert (=> b!1030526 (= e!581985 call!43558)))

(declare-fun b!1030527 () Bool)

(assert (=> b!1030527 (= e!581984 call!43558)))

(declare-fun d!123557 () Bool)

(declare-fun res!689201 () Bool)

(declare-fun e!581983 () Bool)

(assert (=> d!123557 (=> res!689201 e!581983)))

(assert (=> d!123557 (= res!689201 (bvsge #b00000000000000000000000000000000 (size!31679 lt!454560)))))

(assert (=> d!123557 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!454560 (mask!29908 thiss!1427)) e!581983)))

(declare-fun b!1030524 () Bool)

(assert (=> b!1030524 (= e!581983 e!581985)))

(declare-fun c!104144 () Bool)

(assert (=> b!1030524 (= c!104144 (validKeyInArray!0 (select (arr!31161 lt!454560) #b00000000000000000000000000000000)))))

(assert (= (and d!123557 (not res!689201)) b!1030524))

(assert (= (and b!1030524 c!104144) b!1030525))

(assert (= (and b!1030524 (not c!104144)) b!1030526))

(assert (= (and b!1030525 res!689202) b!1030527))

(assert (= (or b!1030527 b!1030526) bm!43555))

(declare-fun m!950451 () Bool)

(assert (=> b!1030525 m!950451))

(declare-fun m!950453 () Bool)

(assert (=> b!1030525 m!950453))

(declare-fun m!950455 () Bool)

(assert (=> b!1030525 m!950455))

(assert (=> b!1030525 m!950451))

(declare-fun m!950457 () Bool)

(assert (=> b!1030525 m!950457))

(declare-fun m!950459 () Bool)

(assert (=> bm!43555 m!950459))

(assert (=> b!1030524 m!950451))

(assert (=> b!1030524 m!950451))

(declare-fun m!950461 () Bool)

(assert (=> b!1030524 m!950461))

(assert (=> b!1030424 d!123557))

(declare-fun d!123559 () Bool)

(declare-fun e!581988 () Bool)

(assert (=> d!123559 e!581988))

(declare-fun res!689205 () Bool)

(assert (=> d!123559 (=> (not res!689205) (not e!581988))))

(assert (=> d!123559 (= res!689205 (and (bvsge (index!41091 lt!454563) #b00000000000000000000000000000000) (bvslt (index!41091 lt!454563) (size!31679 (_keys!11303 thiss!1427)))))))

(declare-fun lt!454621 () Unit!33636)

(declare-fun choose!1701 (array!64724 array!64726 (_ BitVec 32) (_ BitVec 32) V!37325 V!37325 (_ BitVec 32) (_ BitVec 64) Int) Unit!33636)

(assert (=> d!123559 (= lt!454621 (choose!1701 (_keys!11303 thiss!1427) (_values!6158 thiss!1427) (mask!29908 thiss!1427) (extraKeys!5867 thiss!1427) (zeroValue!5971 thiss!1427) (minValue!5971 thiss!1427) (index!41091 lt!454563) key!909 (defaultEntry!6135 thiss!1427)))))

(assert (=> d!123559 (validMask!0 (mask!29908 thiss!1427))))

(assert (=> d!123559 (= (lemmaRemoveValidKeyToArrayThenRemoveKeyFromListMap!18 (_keys!11303 thiss!1427) (_values!6158 thiss!1427) (mask!29908 thiss!1427) (extraKeys!5867 thiss!1427) (zeroValue!5971 thiss!1427) (minValue!5971 thiss!1427) (index!41091 lt!454563) key!909 (defaultEntry!6135 thiss!1427)) lt!454621)))

(declare-fun b!1030530 () Bool)

(assert (=> b!1030530 (= e!581988 (= (-!494 (getCurrentListMap!3925 (_keys!11303 thiss!1427) (_values!6158 thiss!1427) (mask!29908 thiss!1427) (extraKeys!5867 thiss!1427) (zeroValue!5971 thiss!1427) (minValue!5971 thiss!1427) #b00000000000000000000000000000000 (defaultEntry!6135 thiss!1427)) key!909) (getCurrentListMap!3925 (array!64725 (store (arr!31161 (_keys!11303 thiss!1427)) (index!41091 lt!454563) #b1000000000000000000000000000000000000000000000000000000000000000) (size!31679 (_keys!11303 thiss!1427))) (array!64727 (store (arr!31162 (_values!6158 thiss!1427)) (index!41091 lt!454563) (ValueCellFull!11466 (dynLambda!1969 (defaultEntry!6135 thiss!1427) #b0000000000000000000000000000000000000000000000000000000000000000))) (size!31680 (_values!6158 thiss!1427))) (mask!29908 thiss!1427) (extraKeys!5867 thiss!1427) (zeroValue!5971 thiss!1427) (minValue!5971 thiss!1427) #b00000000000000000000000000000000 (defaultEntry!6135 thiss!1427))))))

(assert (=> b!1030530 (bvslt (index!41091 lt!454563) (size!31680 (_values!6158 thiss!1427)))))

(assert (= (and d!123559 res!689205) b!1030530))

(declare-fun b_lambda!15985 () Bool)

(assert (=> (not b_lambda!15985) (not b!1030530)))

(assert (=> b!1030530 t!31067))

(declare-fun b_and!33025 () Bool)

(assert (= b_and!33019 (and (=> t!31067 result!14209) b_and!33025)))

(declare-fun m!950463 () Bool)

(assert (=> d!123559 m!950463))

(assert (=> d!123559 m!950427))

(assert (=> b!1030530 m!950361))

(assert (=> b!1030530 m!950333))

(assert (=> b!1030530 m!950343))

(assert (=> b!1030530 m!950345))

(assert (=> b!1030530 m!950353))

(declare-fun m!950465 () Bool)

(assert (=> b!1030530 m!950465))

(assert (=> b!1030530 m!950343))

(assert (=> b!1030424 d!123559))

(declare-fun d!123561 () Bool)

(declare-fun e!581991 () Bool)

(assert (=> d!123561 e!581991))

(declare-fun res!689208 () Bool)

(assert (=> d!123561 (=> (not res!689208) (not e!581991))))

(assert (=> d!123561 (= res!689208 (and (bvsge (index!41091 lt!454563) #b00000000000000000000000000000000) (bvslt (index!41091 lt!454563) (size!31679 (_keys!11303 thiss!1427)))))))

(declare-fun lt!454624 () Unit!33636)

(declare-fun choose!53 (array!64724 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) List!21948) Unit!33636)

(assert (=> d!123561 (= lt!454624 (choose!53 (_keys!11303 thiss!1427) #b1000000000000000000000000000000000000000000000000000000000000000 (index!41091 lt!454563) #b00000000000000000000000000000000 Nil!21945))))

(assert (=> d!123561 (bvslt (size!31679 (_keys!11303 thiss!1427)) #b01111111111111111111111111111111)))

(assert (=> d!123561 (= (lemmaPutNonValidKeyPreservesNoDuplicate!0 (_keys!11303 thiss!1427) #b1000000000000000000000000000000000000000000000000000000000000000 (index!41091 lt!454563) #b00000000000000000000000000000000 Nil!21945) lt!454624)))

(declare-fun b!1030533 () Bool)

(assert (=> b!1030533 (= e!581991 (arrayNoDuplicates!0 (array!64725 (store (arr!31161 (_keys!11303 thiss!1427)) (index!41091 lt!454563) #b1000000000000000000000000000000000000000000000000000000000000000) (size!31679 (_keys!11303 thiss!1427))) #b00000000000000000000000000000000 Nil!21945))))

(assert (= (and d!123561 res!689208) b!1030533))

(declare-fun m!950467 () Bool)

(assert (=> d!123561 m!950467))

(assert (=> b!1030533 m!950353))

(declare-fun m!950469 () Bool)

(assert (=> b!1030533 m!950469))

(assert (=> b!1030424 d!123561))

(declare-fun d!123563 () Bool)

(assert (=> d!123563 (= (validMask!0 (mask!29908 (_2!7855 lt!454561))) (and (or (= (mask!29908 (_2!7855 lt!454561)) #b00000000000000000000000000000111) (= (mask!29908 (_2!7855 lt!454561)) #b00000000000000000000000000001111) (= (mask!29908 (_2!7855 lt!454561)) #b00000000000000000000000000011111) (= (mask!29908 (_2!7855 lt!454561)) #b00000000000000000000000000111111) (= (mask!29908 (_2!7855 lt!454561)) #b00000000000000000000000001111111) (= (mask!29908 (_2!7855 lt!454561)) #b00000000000000000000000011111111) (= (mask!29908 (_2!7855 lt!454561)) #b00000000000000000000000111111111) (= (mask!29908 (_2!7855 lt!454561)) #b00000000000000000000001111111111) (= (mask!29908 (_2!7855 lt!454561)) #b00000000000000000000011111111111) (= (mask!29908 (_2!7855 lt!454561)) #b00000000000000000000111111111111) (= (mask!29908 (_2!7855 lt!454561)) #b00000000000000000001111111111111) (= (mask!29908 (_2!7855 lt!454561)) #b00000000000000000011111111111111) (= (mask!29908 (_2!7855 lt!454561)) #b00000000000000000111111111111111) (= (mask!29908 (_2!7855 lt!454561)) #b00000000000000001111111111111111) (= (mask!29908 (_2!7855 lt!454561)) #b00000000000000011111111111111111) (= (mask!29908 (_2!7855 lt!454561)) #b00000000000000111111111111111111) (= (mask!29908 (_2!7855 lt!454561)) #b00000000000001111111111111111111) (= (mask!29908 (_2!7855 lt!454561)) #b00000000000011111111111111111111) (= (mask!29908 (_2!7855 lt!454561)) #b00000000000111111111111111111111) (= (mask!29908 (_2!7855 lt!454561)) #b00000000001111111111111111111111) (= (mask!29908 (_2!7855 lt!454561)) #b00000000011111111111111111111111) (= (mask!29908 (_2!7855 lt!454561)) #b00000000111111111111111111111111) (= (mask!29908 (_2!7855 lt!454561)) #b00000001111111111111111111111111) (= (mask!29908 (_2!7855 lt!454561)) #b00000011111111111111111111111111) (= (mask!29908 (_2!7855 lt!454561)) #b00000111111111111111111111111111) (= (mask!29908 (_2!7855 lt!454561)) #b00001111111111111111111111111111) (= (mask!29908 (_2!7855 lt!454561)) #b00011111111111111111111111111111) (= (mask!29908 (_2!7855 lt!454561)) #b00111111111111111111111111111111)) (bvsle (mask!29908 (_2!7855 lt!454561)) #b00111111111111111111111111111111)))))

(assert (=> b!1030424 d!123563))

(declare-fun d!123565 () Bool)

(declare-fun e!582019 () Bool)

(assert (=> d!123565 e!582019))

(declare-fun res!689235 () Bool)

(assert (=> d!123565 (=> (not res!689235) (not e!582019))))

(assert (=> d!123565 (= res!689235 (or (bvsge #b00000000000000000000000000000000 (size!31679 lt!454560)) (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!31679 lt!454560)))))))

(declare-fun lt!454690 () ListLongMap!13805)

(declare-fun lt!454674 () ListLongMap!13805)

(assert (=> d!123565 (= lt!454690 lt!454674)))

(declare-fun lt!454683 () Unit!33636)

(declare-fun e!582024 () Unit!33636)

(assert (=> d!123565 (= lt!454683 e!582024)))

(declare-fun c!104160 () Bool)

(declare-fun e!582026 () Bool)

(assert (=> d!123565 (= c!104160 e!582026)))

(declare-fun res!689231 () Bool)

(assert (=> d!123565 (=> (not res!689231) (not e!582026))))

(assert (=> d!123565 (= res!689231 (bvslt #b00000000000000000000000000000000 (size!31679 lt!454560)))))

(declare-fun e!582025 () ListLongMap!13805)

(assert (=> d!123565 (= lt!454674 e!582025)))

(declare-fun c!104161 () Bool)

(assert (=> d!123565 (= c!104161 (and (not (= (bvand (extraKeys!5867 thiss!1427) #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (not (= (bvand (extraKeys!5867 thiss!1427) #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(assert (=> d!123565 (validMask!0 (mask!29908 thiss!1427))))

(assert (=> d!123565 (= (getCurrentListMap!3925 lt!454560 lt!454567 (mask!29908 thiss!1427) (extraKeys!5867 thiss!1427) (zeroValue!5971 thiss!1427) (minValue!5971 thiss!1427) #b00000000000000000000000000000000 (defaultEntry!6135 thiss!1427)) lt!454690)))

(declare-fun b!1030576 () Bool)

(declare-fun lt!454682 () Unit!33636)

(assert (=> b!1030576 (= e!582024 lt!454682)))

(declare-fun lt!454681 () ListLongMap!13805)

(declare-fun getCurrentListMapNoExtraKeys!3533 (array!64724 array!64726 (_ BitVec 32) (_ BitVec 32) V!37325 V!37325 (_ BitVec 32) Int) ListLongMap!13805)

(assert (=> b!1030576 (= lt!454681 (getCurrentListMapNoExtraKeys!3533 lt!454560 lt!454567 (mask!29908 thiss!1427) (extraKeys!5867 thiss!1427) (zeroValue!5971 thiss!1427) (minValue!5971 thiss!1427) #b00000000000000000000000000000000 (defaultEntry!6135 thiss!1427)))))

(declare-fun lt!454684 () (_ BitVec 64))

(assert (=> b!1030576 (= lt!454684 #b0000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!454687 () (_ BitVec 64))

(assert (=> b!1030576 (= lt!454687 (select (arr!31161 lt!454560) #b00000000000000000000000000000000))))

(declare-fun lt!454685 () Unit!33636)

(declare-fun addStillContains!628 (ListLongMap!13805 (_ BitVec 64) V!37325 (_ BitVec 64)) Unit!33636)

(assert (=> b!1030576 (= lt!454685 (addStillContains!628 lt!454681 lt!454684 (zeroValue!5971 thiss!1427) lt!454687))))

(declare-fun contains!5997 (ListLongMap!13805 (_ BitVec 64)) Bool)

(declare-fun +!3063 (ListLongMap!13805 tuple2!15692) ListLongMap!13805)

(assert (=> b!1030576 (contains!5997 (+!3063 lt!454681 (tuple2!15693 lt!454684 (zeroValue!5971 thiss!1427))) lt!454687)))

(declare-fun lt!454670 () Unit!33636)

(assert (=> b!1030576 (= lt!454670 lt!454685)))

(declare-fun lt!454679 () ListLongMap!13805)

(assert (=> b!1030576 (= lt!454679 (getCurrentListMapNoExtraKeys!3533 lt!454560 lt!454567 (mask!29908 thiss!1427) (extraKeys!5867 thiss!1427) (zeroValue!5971 thiss!1427) (minValue!5971 thiss!1427) #b00000000000000000000000000000000 (defaultEntry!6135 thiss!1427)))))

(declare-fun lt!454686 () (_ BitVec 64))

(assert (=> b!1030576 (= lt!454686 #b1000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!454669 () (_ BitVec 64))

(assert (=> b!1030576 (= lt!454669 (select (arr!31161 lt!454560) #b00000000000000000000000000000000))))

(declare-fun lt!454688 () Unit!33636)

(declare-fun addApplyDifferent!480 (ListLongMap!13805 (_ BitVec 64) V!37325 (_ BitVec 64)) Unit!33636)

(assert (=> b!1030576 (= lt!454688 (addApplyDifferent!480 lt!454679 lt!454686 (minValue!5971 thiss!1427) lt!454669))))

(declare-fun apply!940 (ListLongMap!13805 (_ BitVec 64)) V!37325)

(assert (=> b!1030576 (= (apply!940 (+!3063 lt!454679 (tuple2!15693 lt!454686 (minValue!5971 thiss!1427))) lt!454669) (apply!940 lt!454679 lt!454669))))

(declare-fun lt!454677 () Unit!33636)

(assert (=> b!1030576 (= lt!454677 lt!454688)))

(declare-fun lt!454680 () ListLongMap!13805)

(assert (=> b!1030576 (= lt!454680 (getCurrentListMapNoExtraKeys!3533 lt!454560 lt!454567 (mask!29908 thiss!1427) (extraKeys!5867 thiss!1427) (zeroValue!5971 thiss!1427) (minValue!5971 thiss!1427) #b00000000000000000000000000000000 (defaultEntry!6135 thiss!1427)))))

(declare-fun lt!454672 () (_ BitVec 64))

(assert (=> b!1030576 (= lt!454672 #b0000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!454671 () (_ BitVec 64))

(assert (=> b!1030576 (= lt!454671 (select (arr!31161 lt!454560) #b00000000000000000000000000000000))))

(declare-fun lt!454689 () Unit!33636)

(assert (=> b!1030576 (= lt!454689 (addApplyDifferent!480 lt!454680 lt!454672 (zeroValue!5971 thiss!1427) lt!454671))))

(assert (=> b!1030576 (= (apply!940 (+!3063 lt!454680 (tuple2!15693 lt!454672 (zeroValue!5971 thiss!1427))) lt!454671) (apply!940 lt!454680 lt!454671))))

(declare-fun lt!454676 () Unit!33636)

(assert (=> b!1030576 (= lt!454676 lt!454689)))

(declare-fun lt!454678 () ListLongMap!13805)

(assert (=> b!1030576 (= lt!454678 (getCurrentListMapNoExtraKeys!3533 lt!454560 lt!454567 (mask!29908 thiss!1427) (extraKeys!5867 thiss!1427) (zeroValue!5971 thiss!1427) (minValue!5971 thiss!1427) #b00000000000000000000000000000000 (defaultEntry!6135 thiss!1427)))))

(declare-fun lt!454673 () (_ BitVec 64))

(assert (=> b!1030576 (= lt!454673 #b1000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!454675 () (_ BitVec 64))

(assert (=> b!1030576 (= lt!454675 (select (arr!31161 lt!454560) #b00000000000000000000000000000000))))

(assert (=> b!1030576 (= lt!454682 (addApplyDifferent!480 lt!454678 lt!454673 (minValue!5971 thiss!1427) lt!454675))))

(assert (=> b!1030576 (= (apply!940 (+!3063 lt!454678 (tuple2!15693 lt!454673 (minValue!5971 thiss!1427))) lt!454675) (apply!940 lt!454678 lt!454675))))

(declare-fun b!1030577 () Bool)

(declare-fun res!689228 () Bool)

(assert (=> b!1030577 (=> (not res!689228) (not e!582019))))

(declare-fun e!582021 () Bool)

(assert (=> b!1030577 (= res!689228 e!582021)))

(declare-fun res!689234 () Bool)

(assert (=> b!1030577 (=> res!689234 e!582021)))

(declare-fun e!582028 () Bool)

(assert (=> b!1030577 (= res!689234 (not e!582028))))

(declare-fun res!689233 () Bool)

(assert (=> b!1030577 (=> (not res!689233) (not e!582028))))

(assert (=> b!1030577 (= res!689233 (bvslt #b00000000000000000000000000000000 (size!31679 lt!454560)))))

(declare-fun bm!43570 () Bool)

(declare-fun call!43574 () Bool)

(assert (=> bm!43570 (= call!43574 (contains!5997 lt!454690 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1030578 () Bool)

(assert (=> b!1030578 (= e!582028 (validKeyInArray!0 (select (arr!31161 lt!454560) #b00000000000000000000000000000000)))))

(declare-fun b!1030579 () Bool)

(declare-fun e!582018 () ListLongMap!13805)

(declare-fun call!43579 () ListLongMap!13805)

(assert (=> b!1030579 (= e!582018 call!43579)))

(declare-fun b!1030580 () Bool)

(assert (=> b!1030580 (= e!582026 (validKeyInArray!0 (select (arr!31161 lt!454560) #b00000000000000000000000000000000)))))

(declare-fun b!1030581 () Bool)

(declare-fun e!582022 () Bool)

(declare-fun e!582020 () Bool)

(assert (=> b!1030581 (= e!582022 e!582020)))

(declare-fun res!689230 () Bool)

(assert (=> b!1030581 (= res!689230 call!43574)))

(assert (=> b!1030581 (=> (not res!689230) (not e!582020))))

(declare-fun b!1030582 () Bool)

(declare-fun call!43573 () ListLongMap!13805)

(assert (=> b!1030582 (= e!582025 (+!3063 call!43573 (tuple2!15693 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!5971 thiss!1427))))))

(declare-fun bm!43571 () Bool)

(declare-fun call!43577 () ListLongMap!13805)

(declare-fun call!43575 () ListLongMap!13805)

(assert (=> bm!43571 (= call!43577 call!43575)))

(declare-fun bm!43572 () Bool)

(declare-fun call!43578 () Bool)

(assert (=> bm!43572 (= call!43578 (contains!5997 lt!454690 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1030583 () Bool)

(declare-fun e!582029 () Bool)

(declare-fun get!16383 (ValueCell!11466 V!37325) V!37325)

(assert (=> b!1030583 (= e!582029 (= (apply!940 lt!454690 (select (arr!31161 lt!454560) #b00000000000000000000000000000000)) (get!16383 (select (arr!31162 lt!454567) #b00000000000000000000000000000000) (dynLambda!1969 (defaultEntry!6135 thiss!1427) #b0000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!1030583 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!31680 lt!454567)))))

(assert (=> b!1030583 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!31679 lt!454560)))))

(declare-fun b!1030584 () Bool)

(assert (=> b!1030584 (= e!582022 (not call!43574))))

(declare-fun b!1030585 () Bool)

(assert (=> b!1030585 (= e!582018 call!43577)))

(declare-fun b!1030586 () Bool)

(assert (=> b!1030586 (= e!582021 e!582029)))

(declare-fun res!689227 () Bool)

(assert (=> b!1030586 (=> (not res!689227) (not e!582029))))

(assert (=> b!1030586 (= res!689227 (contains!5997 lt!454690 (select (arr!31161 lt!454560) #b00000000000000000000000000000000)))))

(assert (=> b!1030586 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!31679 lt!454560)))))

(declare-fun b!1030587 () Bool)

(assert (=> b!1030587 (= e!582020 (= (apply!940 lt!454690 #b1000000000000000000000000000000000000000000000000000000000000000) (minValue!5971 thiss!1427)))))

(declare-fun b!1030588 () Bool)

(declare-fun e!582027 () ListLongMap!13805)

(assert (=> b!1030588 (= e!582027 call!43579)))

(declare-fun bm!43573 () Bool)

(assert (=> bm!43573 (= call!43579 call!43573)))

(declare-fun b!1030589 () Bool)

(declare-fun e!582030 () Bool)

(declare-fun e!582023 () Bool)

(assert (=> b!1030589 (= e!582030 e!582023)))

(declare-fun res!689232 () Bool)

(assert (=> b!1030589 (= res!689232 call!43578)))

(assert (=> b!1030589 (=> (not res!689232) (not e!582023))))

(declare-fun b!1030590 () Bool)

(declare-fun res!689229 () Bool)

(assert (=> b!1030590 (=> (not res!689229) (not e!582019))))

(assert (=> b!1030590 (= res!689229 e!582030)))

(declare-fun c!104157 () Bool)

(assert (=> b!1030590 (= c!104157 (not (= (bvand (extraKeys!5867 thiss!1427) #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-fun b!1030591 () Bool)

(declare-fun c!104162 () Bool)

(assert (=> b!1030591 (= c!104162 (and (not (= (bvand (extraKeys!5867 thiss!1427) #b00000000000000000000000000000010) #b00000000000000000000000000000000)) (= (bvand (extraKeys!5867 thiss!1427) #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(assert (=> b!1030591 (= e!582027 e!582018)))

(declare-fun bm!43574 () Bool)

(declare-fun call!43576 () ListLongMap!13805)

(assert (=> bm!43574 (= call!43575 call!43576)))

(declare-fun b!1030592 () Bool)

(declare-fun Unit!33640 () Unit!33636)

(assert (=> b!1030592 (= e!582024 Unit!33640)))

(declare-fun bm!43575 () Bool)

(declare-fun c!104159 () Bool)

(assert (=> bm!43575 (= call!43573 (+!3063 (ite c!104161 call!43576 (ite c!104159 call!43575 call!43577)) (ite (or c!104161 c!104159) (tuple2!15693 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!5971 thiss!1427)) (tuple2!15693 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!5971 thiss!1427)))))))

(declare-fun b!1030593 () Bool)

(assert (=> b!1030593 (= e!582019 e!582022)))

(declare-fun c!104158 () Bool)

(assert (=> b!1030593 (= c!104158 (not (= (bvand (extraKeys!5867 thiss!1427) #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun b!1030594 () Bool)

(assert (=> b!1030594 (= e!582030 (not call!43578))))

(declare-fun bm!43576 () Bool)

(assert (=> bm!43576 (= call!43576 (getCurrentListMapNoExtraKeys!3533 lt!454560 lt!454567 (mask!29908 thiss!1427) (extraKeys!5867 thiss!1427) (zeroValue!5971 thiss!1427) (minValue!5971 thiss!1427) #b00000000000000000000000000000000 (defaultEntry!6135 thiss!1427)))))

(declare-fun b!1030595 () Bool)

(assert (=> b!1030595 (= e!582023 (= (apply!940 lt!454690 #b0000000000000000000000000000000000000000000000000000000000000000) (zeroValue!5971 thiss!1427)))))

(declare-fun b!1030596 () Bool)

(assert (=> b!1030596 (= e!582025 e!582027)))

(assert (=> b!1030596 (= c!104159 (and (not (= (bvand (extraKeys!5867 thiss!1427) #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (= (bvand (extraKeys!5867 thiss!1427) #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(assert (= (and d!123565 c!104161) b!1030582))

(assert (= (and d!123565 (not c!104161)) b!1030596))

(assert (= (and b!1030596 c!104159) b!1030588))

(assert (= (and b!1030596 (not c!104159)) b!1030591))

(assert (= (and b!1030591 c!104162) b!1030579))

(assert (= (and b!1030591 (not c!104162)) b!1030585))

(assert (= (or b!1030579 b!1030585) bm!43571))

(assert (= (or b!1030588 bm!43571) bm!43574))

(assert (= (or b!1030588 b!1030579) bm!43573))

(assert (= (or b!1030582 bm!43574) bm!43576))

(assert (= (or b!1030582 bm!43573) bm!43575))

(assert (= (and d!123565 res!689231) b!1030580))

(assert (= (and d!123565 c!104160) b!1030576))

(assert (= (and d!123565 (not c!104160)) b!1030592))

(assert (= (and d!123565 res!689235) b!1030577))

(assert (= (and b!1030577 res!689233) b!1030578))

(assert (= (and b!1030577 (not res!689234)) b!1030586))

(assert (= (and b!1030586 res!689227) b!1030583))

(assert (= (and b!1030577 res!689228) b!1030590))

(assert (= (and b!1030590 c!104157) b!1030589))

(assert (= (and b!1030590 (not c!104157)) b!1030594))

(assert (= (and b!1030589 res!689232) b!1030595))

(assert (= (or b!1030589 b!1030594) bm!43572))

(assert (= (and b!1030590 res!689229) b!1030593))

(assert (= (and b!1030593 c!104158) b!1030581))

(assert (= (and b!1030593 (not c!104158)) b!1030584))

(assert (= (and b!1030581 res!689230) b!1030587))

(assert (= (or b!1030581 b!1030584) bm!43570))

(declare-fun b_lambda!15987 () Bool)

(assert (=> (not b_lambda!15987) (not b!1030583)))

(assert (=> b!1030583 t!31067))

(declare-fun b_and!33027 () Bool)

(assert (= b_and!33025 (and (=> t!31067 result!14209) b_and!33027)))

(assert (=> d!123565 m!950427))

(declare-fun m!950471 () Bool)

(assert (=> bm!43572 m!950471))

(assert (=> b!1030583 m!950451))

(declare-fun m!950473 () Bool)

(assert (=> b!1030583 m!950473))

(assert (=> b!1030583 m!950451))

(declare-fun m!950475 () Bool)

(assert (=> b!1030583 m!950475))

(assert (=> b!1030583 m!950361))

(assert (=> b!1030583 m!950475))

(assert (=> b!1030583 m!950361))

(declare-fun m!950477 () Bool)

(assert (=> b!1030583 m!950477))

(declare-fun m!950479 () Bool)

(assert (=> b!1030595 m!950479))

(assert (=> b!1030578 m!950451))

(assert (=> b!1030578 m!950451))

(assert (=> b!1030578 m!950461))

(declare-fun m!950481 () Bool)

(assert (=> bm!43570 m!950481))

(declare-fun m!950483 () Bool)

(assert (=> b!1030576 m!950483))

(declare-fun m!950485 () Bool)

(assert (=> b!1030576 m!950485))

(declare-fun m!950487 () Bool)

(assert (=> b!1030576 m!950487))

(declare-fun m!950489 () Bool)

(assert (=> b!1030576 m!950489))

(declare-fun m!950491 () Bool)

(assert (=> b!1030576 m!950491))

(declare-fun m!950493 () Bool)

(assert (=> b!1030576 m!950493))

(declare-fun m!950495 () Bool)

(assert (=> b!1030576 m!950495))

(declare-fun m!950497 () Bool)

(assert (=> b!1030576 m!950497))

(declare-fun m!950499 () Bool)

(assert (=> b!1030576 m!950499))

(declare-fun m!950501 () Bool)

(assert (=> b!1030576 m!950501))

(declare-fun m!950503 () Bool)

(assert (=> b!1030576 m!950503))

(declare-fun m!950505 () Bool)

(assert (=> b!1030576 m!950505))

(assert (=> b!1030576 m!950451))

(declare-fun m!950507 () Bool)

(assert (=> b!1030576 m!950507))

(assert (=> b!1030576 m!950483))

(assert (=> b!1030576 m!950503))

(declare-fun m!950509 () Bool)

(assert (=> b!1030576 m!950509))

(declare-fun m!950511 () Bool)

(assert (=> b!1030576 m!950511))

(assert (=> b!1030576 m!950495))

(assert (=> b!1030576 m!950499))

(declare-fun m!950513 () Bool)

(assert (=> b!1030576 m!950513))

(declare-fun m!950515 () Bool)

(assert (=> bm!43575 m!950515))

(assert (=> b!1030580 m!950451))

(assert (=> b!1030580 m!950451))

(assert (=> b!1030580 m!950461))

(declare-fun m!950517 () Bool)

(assert (=> b!1030587 m!950517))

(assert (=> bm!43576 m!950487))

(assert (=> b!1030586 m!950451))

(assert (=> b!1030586 m!950451))

(declare-fun m!950519 () Bool)

(assert (=> b!1030586 m!950519))

(declare-fun m!950521 () Bool)

(assert (=> b!1030582 m!950521))

(assert (=> b!1030424 d!123565))

(declare-fun d!123567 () Bool)

(declare-fun res!689240 () Bool)

(declare-fun e!582035 () Bool)

(assert (=> d!123567 (=> res!689240 e!582035)))

(assert (=> d!123567 (= res!689240 (= (select (arr!31161 lt!454560) #b00000000000000000000000000000000) key!909))))

(assert (=> d!123567 (= (arrayContainsKey!0 lt!454560 key!909 #b00000000000000000000000000000000) e!582035)))

(declare-fun b!1030601 () Bool)

(declare-fun e!582036 () Bool)

(assert (=> b!1030601 (= e!582035 e!582036)))

(declare-fun res!689241 () Bool)

(assert (=> b!1030601 (=> (not res!689241) (not e!582036))))

(assert (=> b!1030601 (= res!689241 (bvslt (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!31679 lt!454560)))))

(declare-fun b!1030602 () Bool)

(assert (=> b!1030602 (= e!582036 (arrayContainsKey!0 lt!454560 key!909 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)))))

(assert (= (and d!123567 (not res!689240)) b!1030601))

(assert (= (and b!1030601 res!689241) b!1030602))

(assert (=> d!123567 m!950451))

(declare-fun m!950523 () Bool)

(assert (=> b!1030602 m!950523))

(assert (=> b!1030424 d!123567))

(declare-fun b!1030611 () Bool)

(declare-fun e!582041 () (_ BitVec 32))

(declare-fun call!43582 () (_ BitVec 32))

(assert (=> b!1030611 (= e!582041 call!43582)))

(declare-fun bm!43579 () Bool)

(assert (=> bm!43579 (= call!43582 (arrayCountValidKeys!0 lt!454560 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!31679 (_keys!11303 thiss!1427))))))

(declare-fun b!1030612 () Bool)

(assert (=> b!1030612 (= e!582041 (bvadd #b00000000000000000000000000000001 call!43582))))

(declare-fun b!1030613 () Bool)

(declare-fun e!582042 () (_ BitVec 32))

(assert (=> b!1030613 (= e!582042 e!582041)))

(declare-fun c!104167 () Bool)

(assert (=> b!1030613 (= c!104167 (validKeyInArray!0 (select (arr!31161 lt!454560) #b00000000000000000000000000000000)))))

(declare-fun d!123569 () Bool)

(declare-fun lt!454693 () (_ BitVec 32))

(assert (=> d!123569 (and (bvsge lt!454693 #b00000000000000000000000000000000) (bvsle lt!454693 (bvsub (size!31679 lt!454560) #b00000000000000000000000000000000)))))

(assert (=> d!123569 (= lt!454693 e!582042)))

(declare-fun c!104168 () Bool)

(assert (=> d!123569 (= c!104168 (bvsge #b00000000000000000000000000000000 (size!31679 (_keys!11303 thiss!1427))))))

(assert (=> d!123569 (and (bvsle #b00000000000000000000000000000000 (size!31679 (_keys!11303 thiss!1427))) (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvsle (size!31679 (_keys!11303 thiss!1427)) (size!31679 lt!454560)))))

(assert (=> d!123569 (= (arrayCountValidKeys!0 lt!454560 #b00000000000000000000000000000000 (size!31679 (_keys!11303 thiss!1427))) lt!454693)))

(declare-fun b!1030614 () Bool)

(assert (=> b!1030614 (= e!582042 #b00000000000000000000000000000000)))

(assert (= (and d!123569 c!104168) b!1030614))

(assert (= (and d!123569 (not c!104168)) b!1030613))

(assert (= (and b!1030613 c!104167) b!1030612))

(assert (= (and b!1030613 (not c!104167)) b!1030611))

(assert (= (or b!1030612 b!1030611) bm!43579))

(declare-fun m!950525 () Bool)

(assert (=> bm!43579 m!950525))

(assert (=> b!1030613 m!950451))

(assert (=> b!1030613 m!950451))

(assert (=> b!1030613 m!950461))

(assert (=> b!1030424 d!123569))

(declare-fun b!1030615 () Bool)

(declare-fun e!582045 () Bool)

(declare-fun e!582046 () Bool)

(assert (=> b!1030615 (= e!582045 e!582046)))

(declare-fun res!689242 () Bool)

(assert (=> b!1030615 (=> (not res!689242) (not e!582046))))

(declare-fun e!582044 () Bool)

(assert (=> b!1030615 (= res!689242 (not e!582044))))

(declare-fun res!689243 () Bool)

(assert (=> b!1030615 (=> (not res!689243) (not e!582044))))

(assert (=> b!1030615 (= res!689243 (validKeyInArray!0 (select (arr!31161 lt!454560) #b00000000000000000000000000000000)))))

(declare-fun b!1030616 () Bool)

(declare-fun e!582043 () Bool)

(declare-fun call!43583 () Bool)

(assert (=> b!1030616 (= e!582043 call!43583)))

(declare-fun b!1030617 () Bool)

(assert (=> b!1030617 (= e!582044 (contains!5996 Nil!21945 (select (arr!31161 lt!454560) #b00000000000000000000000000000000)))))

(declare-fun d!123571 () Bool)

(declare-fun res!689244 () Bool)

(assert (=> d!123571 (=> res!689244 e!582045)))

(assert (=> d!123571 (= res!689244 (bvsge #b00000000000000000000000000000000 (size!31679 lt!454560)))))

(assert (=> d!123571 (= (arrayNoDuplicates!0 lt!454560 #b00000000000000000000000000000000 Nil!21945) e!582045)))

(declare-fun bm!43580 () Bool)

(declare-fun c!104169 () Bool)

(assert (=> bm!43580 (= call!43583 (arrayNoDuplicates!0 lt!454560 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (ite c!104169 (Cons!21944 (select (arr!31161 lt!454560) #b00000000000000000000000000000000) Nil!21945) Nil!21945)))))

(declare-fun b!1030618 () Bool)

(assert (=> b!1030618 (= e!582043 call!43583)))

(declare-fun b!1030619 () Bool)

(assert (=> b!1030619 (= e!582046 e!582043)))

(assert (=> b!1030619 (= c!104169 (validKeyInArray!0 (select (arr!31161 lt!454560) #b00000000000000000000000000000000)))))

(assert (= (and d!123571 (not res!689244)) b!1030615))

(assert (= (and b!1030615 res!689243) b!1030617))

(assert (= (and b!1030615 res!689242) b!1030619))

(assert (= (and b!1030619 c!104169) b!1030618))

(assert (= (and b!1030619 (not c!104169)) b!1030616))

(assert (= (or b!1030618 b!1030616) bm!43580))

(assert (=> b!1030615 m!950451))

(assert (=> b!1030615 m!950451))

(assert (=> b!1030615 m!950461))

(assert (=> b!1030617 m!950451))

(assert (=> b!1030617 m!950451))

(declare-fun m!950527 () Bool)

(assert (=> b!1030617 m!950527))

(assert (=> bm!43580 m!950451))

(declare-fun m!950529 () Bool)

(assert (=> bm!43580 m!950529))

(assert (=> b!1030619 m!950451))

(assert (=> b!1030619 m!950451))

(assert (=> b!1030619 m!950461))

(assert (=> b!1030424 d!123571))

(declare-fun d!123573 () Bool)

(declare-fun e!582049 () Bool)

(assert (=> d!123573 e!582049))

(declare-fun res!689247 () Bool)

(assert (=> d!123573 (=> (not res!689247) (not e!582049))))

(assert (=> d!123573 (= res!689247 (and (bvsge (index!41091 lt!454563) #b00000000000000000000000000000000) (bvslt (index!41091 lt!454563) (size!31679 (_keys!11303 thiss!1427)))))))

(declare-fun lt!454696 () Unit!33636)

(declare-fun choose!25 (array!64724 (_ BitVec 32) (_ BitVec 32)) Unit!33636)

(assert (=> d!123573 (= lt!454696 (choose!25 (_keys!11303 thiss!1427) (index!41091 lt!454563) (mask!29908 thiss!1427)))))

(assert (=> d!123573 (validMask!0 (mask!29908 thiss!1427))))

(assert (=> d!123573 (= (lemmaPutLongMinValuePreservesForallSeekEntryOrOpen!0 (_keys!11303 thiss!1427) (index!41091 lt!454563) (mask!29908 thiss!1427)) lt!454696)))

(declare-fun b!1030622 () Bool)

(assert (=> b!1030622 (= e!582049 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 (array!64725 (store (arr!31161 (_keys!11303 thiss!1427)) (index!41091 lt!454563) #b1000000000000000000000000000000000000000000000000000000000000000) (size!31679 (_keys!11303 thiss!1427))) (mask!29908 thiss!1427)))))

(assert (= (and d!123573 res!689247) b!1030622))

(declare-fun m!950531 () Bool)

(assert (=> d!123573 m!950531))

(assert (=> d!123573 m!950427))

(assert (=> b!1030622 m!950353))

(declare-fun m!950533 () Bool)

(assert (=> b!1030622 m!950533))

(assert (=> b!1030424 d!123573))

(declare-fun b!1030623 () Bool)

(declare-fun e!582050 () (_ BitVec 32))

(declare-fun call!43584 () (_ BitVec 32))

(assert (=> b!1030623 (= e!582050 call!43584)))

(declare-fun bm!43581 () Bool)

(assert (=> bm!43581 (= call!43584 (arrayCountValidKeys!0 (_keys!11303 thiss!1427) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!31679 (_keys!11303 thiss!1427))))))

(declare-fun b!1030624 () Bool)

(assert (=> b!1030624 (= e!582050 (bvadd #b00000000000000000000000000000001 call!43584))))

(declare-fun b!1030625 () Bool)

(declare-fun e!582051 () (_ BitVec 32))

(assert (=> b!1030625 (= e!582051 e!582050)))

(declare-fun c!104170 () Bool)

(assert (=> b!1030625 (= c!104170 (validKeyInArray!0 (select (arr!31161 (_keys!11303 thiss!1427)) #b00000000000000000000000000000000)))))

(declare-fun d!123575 () Bool)

(declare-fun lt!454697 () (_ BitVec 32))

(assert (=> d!123575 (and (bvsge lt!454697 #b00000000000000000000000000000000) (bvsle lt!454697 (bvsub (size!31679 (_keys!11303 thiss!1427)) #b00000000000000000000000000000000)))))

(assert (=> d!123575 (= lt!454697 e!582051)))

(declare-fun c!104171 () Bool)

(assert (=> d!123575 (= c!104171 (bvsge #b00000000000000000000000000000000 (size!31679 (_keys!11303 thiss!1427))))))

(assert (=> d!123575 (and (bvsle #b00000000000000000000000000000000 (size!31679 (_keys!11303 thiss!1427))) (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvsle (size!31679 (_keys!11303 thiss!1427)) (size!31679 (_keys!11303 thiss!1427))))))

(assert (=> d!123575 (= (arrayCountValidKeys!0 (_keys!11303 thiss!1427) #b00000000000000000000000000000000 (size!31679 (_keys!11303 thiss!1427))) lt!454697)))

(declare-fun b!1030626 () Bool)

(assert (=> b!1030626 (= e!582051 #b00000000000000000000000000000000)))

(assert (= (and d!123575 c!104171) b!1030626))

(assert (= (and d!123575 (not c!104171)) b!1030625))

(assert (= (and b!1030625 c!104170) b!1030624))

(assert (= (and b!1030625 (not c!104170)) b!1030623))

(assert (= (or b!1030624 b!1030623) bm!43581))

(declare-fun m!950535 () Bool)

(assert (=> bm!43581 m!950535))

(declare-fun m!950537 () Bool)

(assert (=> b!1030625 m!950537))

(assert (=> b!1030625 m!950537))

(declare-fun m!950539 () Bool)

(assert (=> b!1030625 m!950539))

(assert (=> b!1030424 d!123575))

(declare-fun b!1030637 () Bool)

(declare-fun e!582056 () Bool)

(assert (=> b!1030637 (= e!582056 (bvslt (size!31679 (_keys!11303 thiss!1427)) #b01111111111111111111111111111111))))

(declare-fun b!1030636 () Bool)

(declare-fun res!689259 () Bool)

(assert (=> b!1030636 (=> (not res!689259) (not e!582056))))

(assert (=> b!1030636 (= res!689259 (not (validKeyInArray!0 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1030635 () Bool)

(declare-fun res!689256 () Bool)

(assert (=> b!1030635 (=> (not res!689256) (not e!582056))))

(assert (=> b!1030635 (= res!689256 (validKeyInArray!0 (select (arr!31161 (_keys!11303 thiss!1427)) (index!41091 lt!454563))))))

(declare-fun b!1030638 () Bool)

(declare-fun e!582057 () Bool)

(assert (=> b!1030638 (= e!582057 (= (arrayCountValidKeys!0 (array!64725 (store (arr!31161 (_keys!11303 thiss!1427)) (index!41091 lt!454563) #b1000000000000000000000000000000000000000000000000000000000000000) (size!31679 (_keys!11303 thiss!1427))) #b00000000000000000000000000000000 (size!31679 (_keys!11303 thiss!1427))) (bvsub (arrayCountValidKeys!0 (_keys!11303 thiss!1427) #b00000000000000000000000000000000 (size!31679 (_keys!11303 thiss!1427))) #b00000000000000000000000000000001)))))

(declare-fun d!123577 () Bool)

(assert (=> d!123577 e!582057))

(declare-fun res!689258 () Bool)

(assert (=> d!123577 (=> (not res!689258) (not e!582057))))

(assert (=> d!123577 (= res!689258 (and (bvsge (index!41091 lt!454563) #b00000000000000000000000000000000) (bvslt (index!41091 lt!454563) (size!31679 (_keys!11303 thiss!1427)))))))

(declare-fun lt!454700 () Unit!33636)

(declare-fun choose!82 (array!64724 (_ BitVec 32) (_ BitVec 64)) Unit!33636)

(assert (=> d!123577 (= lt!454700 (choose!82 (_keys!11303 thiss!1427) (index!41091 lt!454563) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> d!123577 e!582056))

(declare-fun res!689257 () Bool)

(assert (=> d!123577 (=> (not res!689257) (not e!582056))))

(assert (=> d!123577 (= res!689257 (and (bvsge (index!41091 lt!454563) #b00000000000000000000000000000000) (bvslt (index!41091 lt!454563) (size!31679 (_keys!11303 thiss!1427)))))))

(assert (=> d!123577 (= (lemmaRemoveValidKeyDecreasesNumberOfValidKeysInArray!0 (_keys!11303 thiss!1427) (index!41091 lt!454563) #b1000000000000000000000000000000000000000000000000000000000000000) lt!454700)))

(assert (= (and d!123577 res!689257) b!1030635))

(assert (= (and b!1030635 res!689256) b!1030636))

(assert (= (and b!1030636 res!689259) b!1030637))

(assert (= (and d!123577 res!689258) b!1030638))

(declare-fun m!950541 () Bool)

(assert (=> b!1030636 m!950541))

(declare-fun m!950543 () Bool)

(assert (=> b!1030635 m!950543))

(assert (=> b!1030635 m!950543))

(declare-fun m!950545 () Bool)

(assert (=> b!1030635 m!950545))

(assert (=> b!1030638 m!950353))

(declare-fun m!950547 () Bool)

(assert (=> b!1030638 m!950547))

(assert (=> b!1030638 m!950339))

(declare-fun m!950549 () Bool)

(assert (=> d!123577 m!950549))

(assert (=> b!1030424 d!123577))

(declare-fun d!123579 () Bool)

(declare-fun e!582059 () Bool)

(assert (=> d!123579 e!582059))

(declare-fun res!689268 () Bool)

(assert (=> d!123579 (=> (not res!689268) (not e!582059))))

(assert (=> d!123579 (= res!689268 (or (bvsge #b00000000000000000000000000000000 (size!31679 (_keys!11303 thiss!1427))) (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!31679 (_keys!11303 thiss!1427))))))))

(declare-fun lt!454722 () ListLongMap!13805)

(declare-fun lt!454706 () ListLongMap!13805)

(assert (=> d!123579 (= lt!454722 lt!454706)))

(declare-fun lt!454715 () Unit!33636)

(declare-fun e!582064 () Unit!33636)

(assert (=> d!123579 (= lt!454715 e!582064)))

(declare-fun c!104175 () Bool)

(declare-fun e!582066 () Bool)

(assert (=> d!123579 (= c!104175 e!582066)))

(declare-fun res!689264 () Bool)

(assert (=> d!123579 (=> (not res!689264) (not e!582066))))

(assert (=> d!123579 (= res!689264 (bvslt #b00000000000000000000000000000000 (size!31679 (_keys!11303 thiss!1427))))))

(declare-fun e!582065 () ListLongMap!13805)

(assert (=> d!123579 (= lt!454706 e!582065)))

(declare-fun c!104176 () Bool)

(assert (=> d!123579 (= c!104176 (and (not (= (bvand (extraKeys!5867 thiss!1427) #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (not (= (bvand (extraKeys!5867 thiss!1427) #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(assert (=> d!123579 (validMask!0 (mask!29908 thiss!1427))))

(assert (=> d!123579 (= (getCurrentListMap!3925 (_keys!11303 thiss!1427) (_values!6158 thiss!1427) (mask!29908 thiss!1427) (extraKeys!5867 thiss!1427) (zeroValue!5971 thiss!1427) (minValue!5971 thiss!1427) #b00000000000000000000000000000000 (defaultEntry!6135 thiss!1427)) lt!454722)))

(declare-fun b!1030639 () Bool)

(declare-fun lt!454714 () Unit!33636)

(assert (=> b!1030639 (= e!582064 lt!454714)))

(declare-fun lt!454713 () ListLongMap!13805)

(assert (=> b!1030639 (= lt!454713 (getCurrentListMapNoExtraKeys!3533 (_keys!11303 thiss!1427) (_values!6158 thiss!1427) (mask!29908 thiss!1427) (extraKeys!5867 thiss!1427) (zeroValue!5971 thiss!1427) (minValue!5971 thiss!1427) #b00000000000000000000000000000000 (defaultEntry!6135 thiss!1427)))))

(declare-fun lt!454716 () (_ BitVec 64))

(assert (=> b!1030639 (= lt!454716 #b0000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!454719 () (_ BitVec 64))

(assert (=> b!1030639 (= lt!454719 (select (arr!31161 (_keys!11303 thiss!1427)) #b00000000000000000000000000000000))))

(declare-fun lt!454717 () Unit!33636)

(assert (=> b!1030639 (= lt!454717 (addStillContains!628 lt!454713 lt!454716 (zeroValue!5971 thiss!1427) lt!454719))))

(assert (=> b!1030639 (contains!5997 (+!3063 lt!454713 (tuple2!15693 lt!454716 (zeroValue!5971 thiss!1427))) lt!454719)))

(declare-fun lt!454702 () Unit!33636)

(assert (=> b!1030639 (= lt!454702 lt!454717)))

(declare-fun lt!454711 () ListLongMap!13805)

(assert (=> b!1030639 (= lt!454711 (getCurrentListMapNoExtraKeys!3533 (_keys!11303 thiss!1427) (_values!6158 thiss!1427) (mask!29908 thiss!1427) (extraKeys!5867 thiss!1427) (zeroValue!5971 thiss!1427) (minValue!5971 thiss!1427) #b00000000000000000000000000000000 (defaultEntry!6135 thiss!1427)))))

(declare-fun lt!454718 () (_ BitVec 64))

(assert (=> b!1030639 (= lt!454718 #b1000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!454701 () (_ BitVec 64))

(assert (=> b!1030639 (= lt!454701 (select (arr!31161 (_keys!11303 thiss!1427)) #b00000000000000000000000000000000))))

(declare-fun lt!454720 () Unit!33636)

(assert (=> b!1030639 (= lt!454720 (addApplyDifferent!480 lt!454711 lt!454718 (minValue!5971 thiss!1427) lt!454701))))

(assert (=> b!1030639 (= (apply!940 (+!3063 lt!454711 (tuple2!15693 lt!454718 (minValue!5971 thiss!1427))) lt!454701) (apply!940 lt!454711 lt!454701))))

(declare-fun lt!454709 () Unit!33636)

(assert (=> b!1030639 (= lt!454709 lt!454720)))

(declare-fun lt!454712 () ListLongMap!13805)

(assert (=> b!1030639 (= lt!454712 (getCurrentListMapNoExtraKeys!3533 (_keys!11303 thiss!1427) (_values!6158 thiss!1427) (mask!29908 thiss!1427) (extraKeys!5867 thiss!1427) (zeroValue!5971 thiss!1427) (minValue!5971 thiss!1427) #b00000000000000000000000000000000 (defaultEntry!6135 thiss!1427)))))

(declare-fun lt!454704 () (_ BitVec 64))

(assert (=> b!1030639 (= lt!454704 #b0000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!454703 () (_ BitVec 64))

(assert (=> b!1030639 (= lt!454703 (select (arr!31161 (_keys!11303 thiss!1427)) #b00000000000000000000000000000000))))

(declare-fun lt!454721 () Unit!33636)

(assert (=> b!1030639 (= lt!454721 (addApplyDifferent!480 lt!454712 lt!454704 (zeroValue!5971 thiss!1427) lt!454703))))

(assert (=> b!1030639 (= (apply!940 (+!3063 lt!454712 (tuple2!15693 lt!454704 (zeroValue!5971 thiss!1427))) lt!454703) (apply!940 lt!454712 lt!454703))))

(declare-fun lt!454708 () Unit!33636)

(assert (=> b!1030639 (= lt!454708 lt!454721)))

(declare-fun lt!454710 () ListLongMap!13805)

(assert (=> b!1030639 (= lt!454710 (getCurrentListMapNoExtraKeys!3533 (_keys!11303 thiss!1427) (_values!6158 thiss!1427) (mask!29908 thiss!1427) (extraKeys!5867 thiss!1427) (zeroValue!5971 thiss!1427) (minValue!5971 thiss!1427) #b00000000000000000000000000000000 (defaultEntry!6135 thiss!1427)))))

(declare-fun lt!454705 () (_ BitVec 64))

(assert (=> b!1030639 (= lt!454705 #b1000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!454707 () (_ BitVec 64))

(assert (=> b!1030639 (= lt!454707 (select (arr!31161 (_keys!11303 thiss!1427)) #b00000000000000000000000000000000))))

(assert (=> b!1030639 (= lt!454714 (addApplyDifferent!480 lt!454710 lt!454705 (minValue!5971 thiss!1427) lt!454707))))

(assert (=> b!1030639 (= (apply!940 (+!3063 lt!454710 (tuple2!15693 lt!454705 (minValue!5971 thiss!1427))) lt!454707) (apply!940 lt!454710 lt!454707))))

(declare-fun b!1030640 () Bool)

(declare-fun res!689261 () Bool)

(assert (=> b!1030640 (=> (not res!689261) (not e!582059))))

(declare-fun e!582061 () Bool)

(assert (=> b!1030640 (= res!689261 e!582061)))

(declare-fun res!689267 () Bool)

(assert (=> b!1030640 (=> res!689267 e!582061)))

(declare-fun e!582068 () Bool)

(assert (=> b!1030640 (= res!689267 (not e!582068))))

(declare-fun res!689266 () Bool)

(assert (=> b!1030640 (=> (not res!689266) (not e!582068))))

(assert (=> b!1030640 (= res!689266 (bvslt #b00000000000000000000000000000000 (size!31679 (_keys!11303 thiss!1427))))))

(declare-fun bm!43582 () Bool)

(declare-fun call!43586 () Bool)

(assert (=> bm!43582 (= call!43586 (contains!5997 lt!454722 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1030641 () Bool)

(assert (=> b!1030641 (= e!582068 (validKeyInArray!0 (select (arr!31161 (_keys!11303 thiss!1427)) #b00000000000000000000000000000000)))))

(declare-fun b!1030642 () Bool)

(declare-fun e!582058 () ListLongMap!13805)

(declare-fun call!43591 () ListLongMap!13805)

(assert (=> b!1030642 (= e!582058 call!43591)))

(declare-fun b!1030643 () Bool)

(assert (=> b!1030643 (= e!582066 (validKeyInArray!0 (select (arr!31161 (_keys!11303 thiss!1427)) #b00000000000000000000000000000000)))))

(declare-fun b!1030644 () Bool)

(declare-fun e!582062 () Bool)

(declare-fun e!582060 () Bool)

(assert (=> b!1030644 (= e!582062 e!582060)))

(declare-fun res!689263 () Bool)

(assert (=> b!1030644 (= res!689263 call!43586)))

(assert (=> b!1030644 (=> (not res!689263) (not e!582060))))

(declare-fun b!1030645 () Bool)

(declare-fun call!43585 () ListLongMap!13805)

(assert (=> b!1030645 (= e!582065 (+!3063 call!43585 (tuple2!15693 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!5971 thiss!1427))))))

(declare-fun bm!43583 () Bool)

(declare-fun call!43589 () ListLongMap!13805)

(declare-fun call!43587 () ListLongMap!13805)

(assert (=> bm!43583 (= call!43589 call!43587)))

(declare-fun bm!43584 () Bool)

(declare-fun call!43590 () Bool)

(assert (=> bm!43584 (= call!43590 (contains!5997 lt!454722 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1030646 () Bool)

(declare-fun e!582069 () Bool)

(assert (=> b!1030646 (= e!582069 (= (apply!940 lt!454722 (select (arr!31161 (_keys!11303 thiss!1427)) #b00000000000000000000000000000000)) (get!16383 (select (arr!31162 (_values!6158 thiss!1427)) #b00000000000000000000000000000000) (dynLambda!1969 (defaultEntry!6135 thiss!1427) #b0000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!1030646 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!31680 (_values!6158 thiss!1427))))))

(assert (=> b!1030646 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!31679 (_keys!11303 thiss!1427))))))

(declare-fun b!1030647 () Bool)

(assert (=> b!1030647 (= e!582062 (not call!43586))))

(declare-fun b!1030648 () Bool)

(assert (=> b!1030648 (= e!582058 call!43589)))

(declare-fun b!1030649 () Bool)

(assert (=> b!1030649 (= e!582061 e!582069)))

(declare-fun res!689260 () Bool)

(assert (=> b!1030649 (=> (not res!689260) (not e!582069))))

(assert (=> b!1030649 (= res!689260 (contains!5997 lt!454722 (select (arr!31161 (_keys!11303 thiss!1427)) #b00000000000000000000000000000000)))))

(assert (=> b!1030649 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!31679 (_keys!11303 thiss!1427))))))

(declare-fun b!1030650 () Bool)

(assert (=> b!1030650 (= e!582060 (= (apply!940 lt!454722 #b1000000000000000000000000000000000000000000000000000000000000000) (minValue!5971 thiss!1427)))))

(declare-fun b!1030651 () Bool)

(declare-fun e!582067 () ListLongMap!13805)

(assert (=> b!1030651 (= e!582067 call!43591)))

(declare-fun bm!43585 () Bool)

(assert (=> bm!43585 (= call!43591 call!43585)))

(declare-fun b!1030652 () Bool)

(declare-fun e!582070 () Bool)

(declare-fun e!582063 () Bool)

(assert (=> b!1030652 (= e!582070 e!582063)))

(declare-fun res!689265 () Bool)

(assert (=> b!1030652 (= res!689265 call!43590)))

(assert (=> b!1030652 (=> (not res!689265) (not e!582063))))

(declare-fun b!1030653 () Bool)

(declare-fun res!689262 () Bool)

(assert (=> b!1030653 (=> (not res!689262) (not e!582059))))

(assert (=> b!1030653 (= res!689262 e!582070)))

(declare-fun c!104172 () Bool)

(assert (=> b!1030653 (= c!104172 (not (= (bvand (extraKeys!5867 thiss!1427) #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-fun b!1030654 () Bool)

(declare-fun c!104177 () Bool)

(assert (=> b!1030654 (= c!104177 (and (not (= (bvand (extraKeys!5867 thiss!1427) #b00000000000000000000000000000010) #b00000000000000000000000000000000)) (= (bvand (extraKeys!5867 thiss!1427) #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(assert (=> b!1030654 (= e!582067 e!582058)))

(declare-fun bm!43586 () Bool)

(declare-fun call!43588 () ListLongMap!13805)

(assert (=> bm!43586 (= call!43587 call!43588)))

(declare-fun b!1030655 () Bool)

(declare-fun Unit!33641 () Unit!33636)

(assert (=> b!1030655 (= e!582064 Unit!33641)))

(declare-fun c!104174 () Bool)

(declare-fun bm!43587 () Bool)

(assert (=> bm!43587 (= call!43585 (+!3063 (ite c!104176 call!43588 (ite c!104174 call!43587 call!43589)) (ite (or c!104176 c!104174) (tuple2!15693 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!5971 thiss!1427)) (tuple2!15693 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!5971 thiss!1427)))))))

(declare-fun b!1030656 () Bool)

(assert (=> b!1030656 (= e!582059 e!582062)))

(declare-fun c!104173 () Bool)

(assert (=> b!1030656 (= c!104173 (not (= (bvand (extraKeys!5867 thiss!1427) #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun b!1030657 () Bool)

(assert (=> b!1030657 (= e!582070 (not call!43590))))

(declare-fun bm!43588 () Bool)

(assert (=> bm!43588 (= call!43588 (getCurrentListMapNoExtraKeys!3533 (_keys!11303 thiss!1427) (_values!6158 thiss!1427) (mask!29908 thiss!1427) (extraKeys!5867 thiss!1427) (zeroValue!5971 thiss!1427) (minValue!5971 thiss!1427) #b00000000000000000000000000000000 (defaultEntry!6135 thiss!1427)))))

(declare-fun b!1030658 () Bool)

(assert (=> b!1030658 (= e!582063 (= (apply!940 lt!454722 #b0000000000000000000000000000000000000000000000000000000000000000) (zeroValue!5971 thiss!1427)))))

(declare-fun b!1030659 () Bool)

(assert (=> b!1030659 (= e!582065 e!582067)))

(assert (=> b!1030659 (= c!104174 (and (not (= (bvand (extraKeys!5867 thiss!1427) #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (= (bvand (extraKeys!5867 thiss!1427) #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(assert (= (and d!123579 c!104176) b!1030645))

(assert (= (and d!123579 (not c!104176)) b!1030659))

(assert (= (and b!1030659 c!104174) b!1030651))

(assert (= (and b!1030659 (not c!104174)) b!1030654))

(assert (= (and b!1030654 c!104177) b!1030642))

(assert (= (and b!1030654 (not c!104177)) b!1030648))

(assert (= (or b!1030642 b!1030648) bm!43583))

(assert (= (or b!1030651 bm!43583) bm!43586))

(assert (= (or b!1030651 b!1030642) bm!43585))

(assert (= (or b!1030645 bm!43586) bm!43588))

(assert (= (or b!1030645 bm!43585) bm!43587))

(assert (= (and d!123579 res!689264) b!1030643))

(assert (= (and d!123579 c!104175) b!1030639))

(assert (= (and d!123579 (not c!104175)) b!1030655))

(assert (= (and d!123579 res!689268) b!1030640))

(assert (= (and b!1030640 res!689266) b!1030641))

(assert (= (and b!1030640 (not res!689267)) b!1030649))

(assert (= (and b!1030649 res!689260) b!1030646))

(assert (= (and b!1030640 res!689261) b!1030653))

(assert (= (and b!1030653 c!104172) b!1030652))

(assert (= (and b!1030653 (not c!104172)) b!1030657))

(assert (= (and b!1030652 res!689265) b!1030658))

(assert (= (or b!1030652 b!1030657) bm!43584))

(assert (= (and b!1030653 res!689262) b!1030656))

(assert (= (and b!1030656 c!104173) b!1030644))

(assert (= (and b!1030656 (not c!104173)) b!1030647))

(assert (= (and b!1030644 res!689263) b!1030650))

(assert (= (or b!1030644 b!1030647) bm!43582))

(declare-fun b_lambda!15989 () Bool)

(assert (=> (not b_lambda!15989) (not b!1030646)))

(assert (=> b!1030646 t!31067))

(declare-fun b_and!33029 () Bool)

(assert (= b_and!33027 (and (=> t!31067 result!14209) b_and!33029)))

(assert (=> d!123579 m!950427))

(declare-fun m!950551 () Bool)

(assert (=> bm!43584 m!950551))

(assert (=> b!1030646 m!950537))

(declare-fun m!950553 () Bool)

(assert (=> b!1030646 m!950553))

(assert (=> b!1030646 m!950537))

(declare-fun m!950555 () Bool)

(assert (=> b!1030646 m!950555))

(assert (=> b!1030646 m!950361))

(assert (=> b!1030646 m!950555))

(assert (=> b!1030646 m!950361))

(declare-fun m!950557 () Bool)

(assert (=> b!1030646 m!950557))

(declare-fun m!950559 () Bool)

(assert (=> b!1030658 m!950559))

(assert (=> b!1030641 m!950537))

(assert (=> b!1030641 m!950537))

(assert (=> b!1030641 m!950539))

(declare-fun m!950561 () Bool)

(assert (=> bm!43582 m!950561))

(declare-fun m!950563 () Bool)

(assert (=> b!1030639 m!950563))

(declare-fun m!950565 () Bool)

(assert (=> b!1030639 m!950565))

(declare-fun m!950567 () Bool)

(assert (=> b!1030639 m!950567))

(declare-fun m!950569 () Bool)

(assert (=> b!1030639 m!950569))

(declare-fun m!950571 () Bool)

(assert (=> b!1030639 m!950571))

(declare-fun m!950573 () Bool)

(assert (=> b!1030639 m!950573))

(declare-fun m!950575 () Bool)

(assert (=> b!1030639 m!950575))

(declare-fun m!950577 () Bool)

(assert (=> b!1030639 m!950577))

(declare-fun m!950579 () Bool)

(assert (=> b!1030639 m!950579))

(declare-fun m!950581 () Bool)

(assert (=> b!1030639 m!950581))

(declare-fun m!950583 () Bool)

(assert (=> b!1030639 m!950583))

(declare-fun m!950585 () Bool)

(assert (=> b!1030639 m!950585))

(assert (=> b!1030639 m!950537))

(declare-fun m!950587 () Bool)

(assert (=> b!1030639 m!950587))

(assert (=> b!1030639 m!950563))

(assert (=> b!1030639 m!950583))

(declare-fun m!950589 () Bool)

(assert (=> b!1030639 m!950589))

(declare-fun m!950591 () Bool)

(assert (=> b!1030639 m!950591))

(assert (=> b!1030639 m!950575))

(assert (=> b!1030639 m!950579))

(declare-fun m!950593 () Bool)

(assert (=> b!1030639 m!950593))

(declare-fun m!950595 () Bool)

(assert (=> bm!43587 m!950595))

(assert (=> b!1030643 m!950537))

(assert (=> b!1030643 m!950537))

(assert (=> b!1030643 m!950539))

(declare-fun m!950597 () Bool)

(assert (=> b!1030650 m!950597))

(assert (=> bm!43588 m!950567))

(assert (=> b!1030649 m!950537))

(assert (=> b!1030649 m!950537))

(declare-fun m!950599 () Bool)

(assert (=> b!1030649 m!950599))

(declare-fun m!950601 () Bool)

(assert (=> b!1030645 m!950601))

(assert (=> b!1030424 d!123579))

(declare-fun d!123581 () Bool)

(declare-fun lt!454725 () ListLongMap!13805)

(assert (=> d!123581 (not (contains!5997 lt!454725 key!909))))

(declare-fun removeStrictlySorted!56 (List!21947 (_ BitVec 64)) List!21947)

(assert (=> d!123581 (= lt!454725 (ListLongMap!13806 (removeStrictlySorted!56 (toList!6918 (getCurrentListMap!3925 (_keys!11303 thiss!1427) (_values!6158 thiss!1427) (mask!29908 thiss!1427) (extraKeys!5867 thiss!1427) (zeroValue!5971 thiss!1427) (minValue!5971 thiss!1427) #b00000000000000000000000000000000 (defaultEntry!6135 thiss!1427))) key!909)))))

(assert (=> d!123581 (= (-!494 (getCurrentListMap!3925 (_keys!11303 thiss!1427) (_values!6158 thiss!1427) (mask!29908 thiss!1427) (extraKeys!5867 thiss!1427) (zeroValue!5971 thiss!1427) (minValue!5971 thiss!1427) #b00000000000000000000000000000000 (defaultEntry!6135 thiss!1427)) key!909) lt!454725)))

(declare-fun bs!30116 () Bool)

(assert (= bs!30116 d!123581))

(declare-fun m!950603 () Bool)

(assert (=> bs!30116 m!950603))

(declare-fun m!950605 () Bool)

(assert (=> bs!30116 m!950605))

(assert (=> b!1030424 d!123581))

(declare-fun d!123583 () Bool)

(declare-fun e!582073 () Bool)

(assert (=> d!123583 e!582073))

(declare-fun res!689271 () Bool)

(assert (=> d!123583 (=> (not res!689271) (not e!582073))))

(assert (=> d!123583 (= res!689271 (bvslt (index!41091 lt!454563) (size!31679 (_keys!11303 thiss!1427))))))

(declare-fun lt!454728 () Unit!33636)

(declare-fun choose!121 (array!64724 (_ BitVec 32) (_ BitVec 64)) Unit!33636)

(assert (=> d!123583 (= lt!454728 (choose!121 (_keys!11303 thiss!1427) (index!41091 lt!454563) key!909))))

(assert (=> d!123583 (bvsge (index!41091 lt!454563) #b00000000000000000000000000000000)))

(assert (=> d!123583 (= (lemmaArrayNoDuplicateRemoveOneThenNotContain!0 (_keys!11303 thiss!1427) (index!41091 lt!454563) key!909) lt!454728)))

(declare-fun b!1030662 () Bool)

(assert (=> b!1030662 (= e!582073 (not (arrayContainsKey!0 (array!64725 (store (arr!31161 (_keys!11303 thiss!1427)) (index!41091 lt!454563) #b1000000000000000000000000000000000000000000000000000000000000000) (size!31679 (_keys!11303 thiss!1427))) key!909 #b00000000000000000000000000000000)))))

(assert (= (and d!123583 res!689271) b!1030662))

(declare-fun m!950607 () Bool)

(assert (=> d!123583 m!950607))

(assert (=> b!1030662 m!950353))

(declare-fun m!950609 () Bool)

(assert (=> b!1030662 m!950609))

(assert (=> b!1030424 d!123583))

(declare-fun d!123585 () Bool)

(assert (=> d!123585 (= (array_inv!23967 (_keys!11303 thiss!1427)) (bvsge (size!31679 (_keys!11303 thiss!1427)) #b00000000000000000000000000000000))))

(assert (=> b!1030426 d!123585))

(declare-fun d!123587 () Bool)

(assert (=> d!123587 (= (array_inv!23968 (_values!6158 thiss!1427)) (bvsge (size!31680 (_values!6158 thiss!1427)) #b00000000000000000000000000000000))))

(assert (=> b!1030426 d!123587))

(declare-fun mapNonEmpty!37965 () Bool)

(declare-fun mapRes!37965 () Bool)

(declare-fun tp!72935 () Bool)

(declare-fun e!582078 () Bool)

(assert (=> mapNonEmpty!37965 (= mapRes!37965 (and tp!72935 e!582078))))

(declare-fun mapValue!37965 () ValueCell!11466)

(declare-fun mapRest!37965 () (Array (_ BitVec 32) ValueCell!11466))

(declare-fun mapKey!37965 () (_ BitVec 32))

(assert (=> mapNonEmpty!37965 (= mapRest!37959 (store mapRest!37965 mapKey!37965 mapValue!37965))))

(declare-fun b!1030670 () Bool)

(declare-fun e!582079 () Bool)

(assert (=> b!1030670 (= e!582079 tp_is_empty!24339)))

(declare-fun b!1030669 () Bool)

(assert (=> b!1030669 (= e!582078 tp_is_empty!24339)))

(declare-fun condMapEmpty!37965 () Bool)

(declare-fun mapDefault!37965 () ValueCell!11466)

(assert (=> mapNonEmpty!37959 (= condMapEmpty!37965 (= mapRest!37959 ((as const (Array (_ BitVec 32) ValueCell!11466)) mapDefault!37965)))))

(assert (=> mapNonEmpty!37959 (= tp!72925 (and e!582079 mapRes!37965))))

(declare-fun mapIsEmpty!37965 () Bool)

(assert (=> mapIsEmpty!37965 mapRes!37965))

(assert (= (and mapNonEmpty!37959 condMapEmpty!37965) mapIsEmpty!37965))

(assert (= (and mapNonEmpty!37959 (not condMapEmpty!37965)) mapNonEmpty!37965))

(assert (= (and mapNonEmpty!37965 ((_ is ValueCellFull!11466) mapValue!37965)) b!1030669))

(assert (= (and mapNonEmpty!37959 ((_ is ValueCellFull!11466) mapDefault!37965)) b!1030670))

(declare-fun m!950611 () Bool)

(assert (=> mapNonEmpty!37965 m!950611))

(declare-fun b_lambda!15991 () Bool)

(assert (= b_lambda!15987 (or (and b!1030426 b_free!20619) b_lambda!15991)))

(declare-fun b_lambda!15993 () Bool)

(assert (= b_lambda!15985 (or (and b!1030426 b_free!20619) b_lambda!15993)))

(declare-fun b_lambda!15995 () Bool)

(assert (= b_lambda!15989 (or (and b!1030426 b_free!20619) b_lambda!15995)))

(check-sat (not b!1030643) (not b!1030615) (not b!1030658) (not mapNonEmpty!37965) (not b!1030500) (not b!1030530) (not b!1030578) (not b_lambda!15991) (not b!1030646) (not d!123561) (not d!123565) (not b!1030638) (not b!1030524) (not bm!43555) (not b!1030617) (not b!1030483) (not b!1030622) (not b!1030582) (not b!1030511) (not d!123559) (not b!1030625) (not bm!43572) (not bm!43575) (not bm!43582) (not b!1030602) (not d!123577) (not bm!43579) (not bm!43588) (not b!1030635) (not bm!43551) (not b!1030583) (not b!1030533) (not b!1030587) (not b!1030520) (not b!1030641) (not b!1030636) (not bm!43570) (not b_lambda!15993) (not b!1030649) (not b!1030580) (not b!1030645) (not b_next!20619) (not b!1030662) (not b_lambda!15995) (not b!1030525) (not b!1030595) (not d!123573) (not d!123549) (not bm!43587) (not bm!43581) (not b!1030576) (not b!1030650) (not b!1030502) (not b!1030510) b_and!33029 tp_is_empty!24339 (not b_lambda!15983) (not d!123583) (not b!1030509) (not d!123581) (not bm!43554) (not b!1030639) (not d!123553) (not b!1030498) (not bm!43580) (not bm!43576) (not d!123579) (not bm!43584) (not b!1030586) (not b!1030521) (not b!1030619) (not b!1030613))
(check-sat b_and!33029 (not b_next!20619))
