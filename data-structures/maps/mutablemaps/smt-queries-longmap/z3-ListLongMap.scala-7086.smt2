; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!89608 () Bool)

(assert start!89608)

(declare-fun b!1027444 () Bool)

(declare-fun b_free!20571 () Bool)

(declare-fun b_next!20571 () Bool)

(assert (=> b!1027444 (= b_free!20571 (not b_next!20571))))

(declare-fun tp!72759 () Bool)

(declare-fun b_and!32837 () Bool)

(assert (=> b!1027444 (= tp!72759 b_and!32837)))

(declare-datatypes ((V!37261 0))(
  ( (V!37262 (val!12196 Int)) )
))
(declare-datatypes ((ValueCell!11442 0))(
  ( (ValueCellFull!11442 (v!14766 V!37261)) (EmptyCell!11442) )
))
(declare-datatypes ((array!64616 0))(
  ( (array!64617 (arr!31113 (Array (_ BitVec 32) (_ BitVec 64))) (size!31627 (_ BitVec 32))) )
))
(declare-datatypes ((array!64618 0))(
  ( (array!64619 (arr!31114 (Array (_ BitVec 32) ValueCell!11442)) (size!31628 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!5478 0))(
  ( (LongMapFixedSize!5479 (defaultEntry!6091 Int) (mask!29804 (_ BitVec 32)) (extraKeys!5823 (_ BitVec 32)) (zeroValue!5927 V!37261) (minValue!5927 V!37261) (_size!2794 (_ BitVec 32)) (_keys!11235 array!64616) (_values!6114 array!64618) (_vacant!2794 (_ BitVec 32))) )
))
(declare-fun thiss!1427 () LongMapFixedSize!5478)

(declare-fun e!579912 () Bool)

(declare-fun tp_is_empty!24291 () Bool)

(declare-fun e!579914 () Bool)

(declare-fun array_inv!23937 (array!64616) Bool)

(declare-fun array_inv!23938 (array!64618) Bool)

(assert (=> b!1027444 (= e!579914 (and tp!72759 tp_is_empty!24291 (array_inv!23937 (_keys!11235 thiss!1427)) (array_inv!23938 (_values!6114 thiss!1427)) e!579912))))

(declare-fun res!687788 () Bool)

(declare-fun e!579909 () Bool)

(assert (=> start!89608 (=> (not res!687788) (not e!579909))))

(declare-fun valid!2029 (LongMapFixedSize!5478) Bool)

(assert (=> start!89608 (= res!687788 (valid!2029 thiss!1427))))

(assert (=> start!89608 e!579909))

(assert (=> start!89608 e!579914))

(assert (=> start!89608 true))

(declare-fun b!1027445 () Bool)

(declare-fun e!579913 () Bool)

(assert (=> b!1027445 (= e!579913 tp_is_empty!24291)))

(declare-fun b!1027446 () Bool)

(declare-fun res!687789 () Bool)

(assert (=> b!1027446 (=> (not res!687789) (not e!579909))))

(declare-fun key!909 () (_ BitVec 64))

(assert (=> b!1027446 (= res!687789 (not (= key!909 (bvneg key!909))))))

(declare-fun b!1027447 () Bool)

(declare-fun e!579910 () Bool)

(assert (=> b!1027447 (= e!579909 e!579910)))

(declare-fun res!687787 () Bool)

(assert (=> b!1027447 (=> (not res!687787) (not e!579910))))

(declare-datatypes ((SeekEntryResult!9661 0))(
  ( (MissingZero!9661 (index!41014 (_ BitVec 32))) (Found!9661 (index!41015 (_ BitVec 32))) (Intermediate!9661 (undefined!10473 Bool) (index!41016 (_ BitVec 32)) (x!91418 (_ BitVec 32))) (Undefined!9661) (MissingVacant!9661 (index!41017 (_ BitVec 32))) )
))
(declare-fun lt!452296 () SeekEntryResult!9661)

(get-info :version)

(assert (=> b!1027447 (= res!687787 ((_ is Found!9661) lt!452296))))

(declare-fun seekEntry!0 ((_ BitVec 64) array!64616 (_ BitVec 32)) SeekEntryResult!9661)

(assert (=> b!1027447 (= lt!452296 (seekEntry!0 key!909 (_keys!11235 thiss!1427) (mask!29804 thiss!1427)))))

(declare-fun mapNonEmpty!37865 () Bool)

(declare-fun mapRes!37865 () Bool)

(declare-fun tp!72760 () Bool)

(assert (=> mapNonEmpty!37865 (= mapRes!37865 (and tp!72760 e!579913))))

(declare-fun mapKey!37865 () (_ BitVec 32))

(declare-fun mapValue!37865 () ValueCell!11442)

(declare-fun mapRest!37865 () (Array (_ BitVec 32) ValueCell!11442))

(assert (=> mapNonEmpty!37865 (= (arr!31114 (_values!6114 thiss!1427)) (store mapRest!37865 mapKey!37865 mapValue!37865))))

(declare-fun b!1027448 () Bool)

(declare-fun e!579911 () Bool)

(assert (=> b!1027448 (= e!579911 tp_is_empty!24291)))

(declare-fun b!1027449 () Bool)

(assert (=> b!1027449 (= e!579912 (and e!579911 mapRes!37865))))

(declare-fun condMapEmpty!37865 () Bool)

(declare-fun mapDefault!37865 () ValueCell!11442)

(assert (=> b!1027449 (= condMapEmpty!37865 (= (arr!31114 (_values!6114 thiss!1427)) ((as const (Array (_ BitVec 32) ValueCell!11442)) mapDefault!37865)))))

(declare-fun b!1027450 () Bool)

(declare-fun lt!452290 () array!64618)

(declare-fun lt!452292 () array!64616)

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(declare-datatypes ((Unit!33448 0))(
  ( (Unit!33449) )
))
(declare-datatypes ((tuple2!15614 0))(
  ( (tuple2!15615 (_1!7817 Unit!33448) (_2!7817 LongMapFixedSize!5478)) )
))
(declare-fun Unit!33450 () Unit!33448)

(declare-fun Unit!33451 () Unit!33448)

(assert (=> b!1027450 (= e!579910 (not (validMask!0 (mask!29804 (_2!7817 (ite (bvsgt (bvadd #b00000000000000000000000000000001 (_vacant!2794 thiss!1427)) #b00000000000000000000000000000000) (tuple2!15615 Unit!33450 (LongMapFixedSize!5479 (defaultEntry!6091 thiss!1427) (mask!29804 thiss!1427) (extraKeys!5823 thiss!1427) (zeroValue!5927 thiss!1427) (minValue!5927 thiss!1427) (bvsub (_size!2794 thiss!1427) #b00000000000000000000000000000001) lt!452292 lt!452290 (bvadd #b00000000000000000000000000000001 (_vacant!2794 thiss!1427)))) (tuple2!15615 Unit!33451 (LongMapFixedSize!5479 (defaultEntry!6091 thiss!1427) (mask!29804 thiss!1427) (extraKeys!5823 thiss!1427) (zeroValue!5927 thiss!1427) (minValue!5927 thiss!1427) (bvsub (_size!2794 thiss!1427) #b00000000000000000000000000000001) lt!452292 lt!452290 (_vacant!2794 thiss!1427)))))))))))

(declare-datatypes ((tuple2!15616 0))(
  ( (tuple2!15617 (_1!7818 (_ BitVec 64)) (_2!7818 V!37261)) )
))
(declare-datatypes ((List!21915 0))(
  ( (Nil!21912) (Cons!21911 (h!23109 tuple2!15616) (t!30988 List!21915)) )
))
(declare-datatypes ((ListLongMap!13773 0))(
  ( (ListLongMap!13774 (toList!6902 List!21915)) )
))
(declare-fun -!478 (ListLongMap!13773 (_ BitVec 64)) ListLongMap!13773)

(declare-fun getCurrentListMap!3909 (array!64616 array!64618 (_ BitVec 32) (_ BitVec 32) V!37261 V!37261 (_ BitVec 32) Int) ListLongMap!13773)

(assert (=> b!1027450 (= (-!478 (getCurrentListMap!3909 (_keys!11235 thiss!1427) (_values!6114 thiss!1427) (mask!29804 thiss!1427) (extraKeys!5823 thiss!1427) (zeroValue!5927 thiss!1427) (minValue!5927 thiss!1427) #b00000000000000000000000000000000 (defaultEntry!6091 thiss!1427)) key!909) (getCurrentListMap!3909 lt!452292 lt!452290 (mask!29804 thiss!1427) (extraKeys!5823 thiss!1427) (zeroValue!5927 thiss!1427) (minValue!5927 thiss!1427) #b00000000000000000000000000000000 (defaultEntry!6091 thiss!1427)))))

(declare-fun dynLambda!1953 (Int (_ BitVec 64)) V!37261)

(assert (=> b!1027450 (= lt!452290 (array!64619 (store (arr!31114 (_values!6114 thiss!1427)) (index!41015 lt!452296) (ValueCellFull!11442 (dynLambda!1953 (defaultEntry!6091 thiss!1427) #b0000000000000000000000000000000000000000000000000000000000000000))) (size!31628 (_values!6114 thiss!1427))))))

(declare-fun lt!452289 () Unit!33448)

(declare-fun lemmaRemoveValidKeyToArrayThenRemoveKeyFromListMap!2 (array!64616 array!64618 (_ BitVec 32) (_ BitVec 32) V!37261 V!37261 (_ BitVec 32) (_ BitVec 64) Int) Unit!33448)

(assert (=> b!1027450 (= lt!452289 (lemmaRemoveValidKeyToArrayThenRemoveKeyFromListMap!2 (_keys!11235 thiss!1427) (_values!6114 thiss!1427) (mask!29804 thiss!1427) (extraKeys!5823 thiss!1427) (zeroValue!5927 thiss!1427) (minValue!5927 thiss!1427) (index!41015 lt!452296) key!909 (defaultEntry!6091 thiss!1427)))))

(declare-fun arrayContainsKey!0 (array!64616 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1027450 (not (arrayContainsKey!0 lt!452292 key!909 #b00000000000000000000000000000000))))

(declare-fun lt!452293 () Unit!33448)

(declare-fun lemmaArrayNoDuplicateRemoveOneThenNotContain!0 (array!64616 (_ BitVec 32) (_ BitVec 64)) Unit!33448)

(assert (=> b!1027450 (= lt!452293 (lemmaArrayNoDuplicateRemoveOneThenNotContain!0 (_keys!11235 thiss!1427) (index!41015 lt!452296) key!909))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!64616 (_ BitVec 32)) Bool)

(assert (=> b!1027450 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!452292 (mask!29804 thiss!1427))))

(declare-fun lt!452294 () Unit!33448)

(declare-fun lemmaPutLongMinValuePreservesForallSeekEntryOrOpen!0 (array!64616 (_ BitVec 32) (_ BitVec 32)) Unit!33448)

(assert (=> b!1027450 (= lt!452294 (lemmaPutLongMinValuePreservesForallSeekEntryOrOpen!0 (_keys!11235 thiss!1427) (index!41015 lt!452296) (mask!29804 thiss!1427)))))

(declare-datatypes ((List!21916 0))(
  ( (Nil!21913) (Cons!21912 (h!23110 (_ BitVec 64)) (t!30989 List!21916)) )
))
(declare-fun arrayNoDuplicates!0 (array!64616 (_ BitVec 32) List!21916) Bool)

(assert (=> b!1027450 (arrayNoDuplicates!0 lt!452292 #b00000000000000000000000000000000 Nil!21913)))

(declare-fun lt!452295 () Unit!33448)

(declare-fun lemmaPutNonValidKeyPreservesNoDuplicate!0 (array!64616 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) List!21916) Unit!33448)

(assert (=> b!1027450 (= lt!452295 (lemmaPutNonValidKeyPreservesNoDuplicate!0 (_keys!11235 thiss!1427) #b1000000000000000000000000000000000000000000000000000000000000000 (index!41015 lt!452296) #b00000000000000000000000000000000 Nil!21913))))

(declare-fun arrayCountValidKeys!0 (array!64616 (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1027450 (= (arrayCountValidKeys!0 lt!452292 #b00000000000000000000000000000000 (size!31627 (_keys!11235 thiss!1427))) (bvsub (arrayCountValidKeys!0 (_keys!11235 thiss!1427) #b00000000000000000000000000000000 (size!31627 (_keys!11235 thiss!1427))) #b00000000000000000000000000000001))))

(assert (=> b!1027450 (= lt!452292 (array!64617 (store (arr!31113 (_keys!11235 thiss!1427)) (index!41015 lt!452296) #b1000000000000000000000000000000000000000000000000000000000000000) (size!31627 (_keys!11235 thiss!1427))))))

(declare-fun lt!452291 () Unit!33448)

(declare-fun lemmaRemoveValidKeyDecreasesNumberOfValidKeysInArray!0 (array!64616 (_ BitVec 32) (_ BitVec 64)) Unit!33448)

(assert (=> b!1027450 (= lt!452291 (lemmaRemoveValidKeyDecreasesNumberOfValidKeysInArray!0 (_keys!11235 thiss!1427) (index!41015 lt!452296) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun mapIsEmpty!37865 () Bool)

(assert (=> mapIsEmpty!37865 mapRes!37865))

(assert (= (and start!89608 res!687788) b!1027446))

(assert (= (and b!1027446 res!687789) b!1027447))

(assert (= (and b!1027447 res!687787) b!1027450))

(assert (= (and b!1027449 condMapEmpty!37865) mapIsEmpty!37865))

(assert (= (and b!1027449 (not condMapEmpty!37865)) mapNonEmpty!37865))

(assert (= (and mapNonEmpty!37865 ((_ is ValueCellFull!11442) mapValue!37865)) b!1027445))

(assert (= (and b!1027449 ((_ is ValueCellFull!11442) mapDefault!37865)) b!1027448))

(assert (= b!1027444 b!1027449))

(assert (= start!89608 b!1027444))

(declare-fun b_lambda!15751 () Bool)

(assert (=> (not b_lambda!15751) (not b!1027450)))

(declare-fun t!30987 () Bool)

(declare-fun tb!6897 () Bool)

(assert (=> (and b!1027444 (= (defaultEntry!6091 thiss!1427) (defaultEntry!6091 thiss!1427)) t!30987) tb!6897))

(declare-fun result!14101 () Bool)

(assert (=> tb!6897 (= result!14101 tp_is_empty!24291)))

(assert (=> b!1027450 t!30987))

(declare-fun b_and!32839 () Bool)

(assert (= b_and!32837 (and (=> t!30987 result!14101) b_and!32839)))

(declare-fun m!946083 () Bool)

(assert (=> b!1027447 m!946083))

(declare-fun m!946085 () Bool)

(assert (=> start!89608 m!946085))

(declare-fun m!946087 () Bool)

(assert (=> b!1027450 m!946087))

(declare-fun m!946089 () Bool)

(assert (=> b!1027450 m!946089))

(declare-fun m!946091 () Bool)

(assert (=> b!1027450 m!946091))

(declare-fun m!946093 () Bool)

(assert (=> b!1027450 m!946093))

(declare-fun m!946095 () Bool)

(assert (=> b!1027450 m!946095))

(declare-fun m!946097 () Bool)

(assert (=> b!1027450 m!946097))

(declare-fun m!946099 () Bool)

(assert (=> b!1027450 m!946099))

(declare-fun m!946101 () Bool)

(assert (=> b!1027450 m!946101))

(declare-fun m!946103 () Bool)

(assert (=> b!1027450 m!946103))

(declare-fun m!946105 () Bool)

(assert (=> b!1027450 m!946105))

(declare-fun m!946107 () Bool)

(assert (=> b!1027450 m!946107))

(declare-fun m!946109 () Bool)

(assert (=> b!1027450 m!946109))

(declare-fun m!946111 () Bool)

(assert (=> b!1027450 m!946111))

(assert (=> b!1027450 m!946109))

(declare-fun m!946113 () Bool)

(assert (=> b!1027450 m!946113))

(declare-fun m!946115 () Bool)

(assert (=> b!1027450 m!946115))

(declare-fun m!946117 () Bool)

(assert (=> b!1027450 m!946117))

(declare-fun m!946119 () Bool)

(assert (=> b!1027450 m!946119))

(declare-fun m!946121 () Bool)

(assert (=> b!1027444 m!946121))

(declare-fun m!946123 () Bool)

(assert (=> b!1027444 m!946123))

(declare-fun m!946125 () Bool)

(assert (=> mapNonEmpty!37865 m!946125))

(check-sat b_and!32839 (not mapNonEmpty!37865) (not start!89608) (not b_next!20571) tp_is_empty!24291 (not b_lambda!15751) (not b!1027444) (not b!1027447) (not b!1027450))
(check-sat b_and!32839 (not b_next!20571))
(get-model)

(declare-fun b_lambda!15755 () Bool)

(assert (= b_lambda!15751 (or (and b!1027444 b_free!20571) b_lambda!15755)))

(check-sat b_and!32839 (not mapNonEmpty!37865) (not start!89608) (not b_next!20571) tp_is_empty!24291 (not b_lambda!15755) (not b!1027444) (not b!1027447) (not b!1027450))
(check-sat b_and!32839 (not b_next!20571))
(get-model)

(declare-fun b!1027488 () Bool)

(declare-fun c!103525 () Bool)

(declare-fun lt!452329 () (_ BitVec 64))

(assert (=> b!1027488 (= c!103525 (= lt!452329 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!579942 () SeekEntryResult!9661)

(declare-fun e!579943 () SeekEntryResult!9661)

(assert (=> b!1027488 (= e!579942 e!579943)))

(declare-fun b!1027489 () Bool)

(declare-fun e!579944 () SeekEntryResult!9661)

(assert (=> b!1027489 (= e!579944 Undefined!9661)))

(declare-fun b!1027490 () Bool)

(declare-fun lt!452330 () SeekEntryResult!9661)

(assert (=> b!1027490 (= e!579943 (ite ((_ is MissingVacant!9661) lt!452330) (MissingZero!9661 (index!41017 lt!452330)) lt!452330))))

(declare-fun lt!452331 () SeekEntryResult!9661)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!64616 (_ BitVec 32)) SeekEntryResult!9661)

(assert (=> b!1027490 (= lt!452330 (seekKeyOrZeroReturnVacant!0 (x!91418 lt!452331) (index!41016 lt!452331) (index!41016 lt!452331) key!909 (_keys!11235 thiss!1427) (mask!29804 thiss!1427)))))

(declare-fun b!1027491 () Bool)

(assert (=> b!1027491 (= e!579944 e!579942)))

(assert (=> b!1027491 (= lt!452329 (select (arr!31113 (_keys!11235 thiss!1427)) (index!41016 lt!452331)))))

(declare-fun c!103526 () Bool)

(assert (=> b!1027491 (= c!103526 (= lt!452329 key!909))))

(declare-fun b!1027492 () Bool)

(assert (=> b!1027492 (= e!579942 (Found!9661 (index!41016 lt!452331)))))

(declare-fun b!1027493 () Bool)

(assert (=> b!1027493 (= e!579943 (MissingZero!9661 (index!41016 lt!452331)))))

(declare-fun d!122661 () Bool)

(declare-fun lt!452332 () SeekEntryResult!9661)

(assert (=> d!122661 (and (or ((_ is MissingVacant!9661) lt!452332) (not ((_ is Found!9661) lt!452332)) (and (bvsge (index!41015 lt!452332) #b00000000000000000000000000000000) (bvslt (index!41015 lt!452332) (size!31627 (_keys!11235 thiss!1427))))) (not ((_ is MissingVacant!9661) lt!452332)) (or (not ((_ is Found!9661) lt!452332)) (= (select (arr!31113 (_keys!11235 thiss!1427)) (index!41015 lt!452332)) key!909)))))

(assert (=> d!122661 (= lt!452332 e!579944)))

(declare-fun c!103527 () Bool)

(assert (=> d!122661 (= c!103527 (and ((_ is Intermediate!9661) lt!452331) (undefined!10473 lt!452331)))))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!64616 (_ BitVec 32)) SeekEntryResult!9661)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> d!122661 (= lt!452331 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 key!909 (mask!29804 thiss!1427)) key!909 (_keys!11235 thiss!1427) (mask!29804 thiss!1427)))))

(assert (=> d!122661 (validMask!0 (mask!29804 thiss!1427))))

(assert (=> d!122661 (= (seekEntry!0 key!909 (_keys!11235 thiss!1427) (mask!29804 thiss!1427)) lt!452332)))

(assert (= (and d!122661 c!103527) b!1027489))

(assert (= (and d!122661 (not c!103527)) b!1027491))

(assert (= (and b!1027491 c!103526) b!1027492))

(assert (= (and b!1027491 (not c!103526)) b!1027488))

(assert (= (and b!1027488 c!103525) b!1027493))

(assert (= (and b!1027488 (not c!103525)) b!1027490))

(declare-fun m!946171 () Bool)

(assert (=> b!1027490 m!946171))

(declare-fun m!946173 () Bool)

(assert (=> b!1027491 m!946173))

(declare-fun m!946175 () Bool)

(assert (=> d!122661 m!946175))

(declare-fun m!946177 () Bool)

(assert (=> d!122661 m!946177))

(assert (=> d!122661 m!946177))

(declare-fun m!946179 () Bool)

(assert (=> d!122661 m!946179))

(declare-fun m!946181 () Bool)

(assert (=> d!122661 m!946181))

(assert (=> b!1027447 d!122661))

(declare-fun d!122663 () Bool)

(declare-fun res!687805 () Bool)

(declare-fun e!579947 () Bool)

(assert (=> d!122663 (=> (not res!687805) (not e!579947))))

(declare-fun simpleValid!389 (LongMapFixedSize!5478) Bool)

(assert (=> d!122663 (= res!687805 (simpleValid!389 thiss!1427))))

(assert (=> d!122663 (= (valid!2029 thiss!1427) e!579947)))

(declare-fun b!1027500 () Bool)

(declare-fun res!687806 () Bool)

(assert (=> b!1027500 (=> (not res!687806) (not e!579947))))

(assert (=> b!1027500 (= res!687806 (= (arrayCountValidKeys!0 (_keys!11235 thiss!1427) #b00000000000000000000000000000000 (size!31627 (_keys!11235 thiss!1427))) (_size!2794 thiss!1427)))))

(declare-fun b!1027501 () Bool)

(declare-fun res!687807 () Bool)

(assert (=> b!1027501 (=> (not res!687807) (not e!579947))))

(assert (=> b!1027501 (= res!687807 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 (_keys!11235 thiss!1427) (mask!29804 thiss!1427)))))

(declare-fun b!1027502 () Bool)

(assert (=> b!1027502 (= e!579947 (arrayNoDuplicates!0 (_keys!11235 thiss!1427) #b00000000000000000000000000000000 Nil!21913))))

(assert (= (and d!122663 res!687805) b!1027500))

(assert (= (and b!1027500 res!687806) b!1027501))

(assert (= (and b!1027501 res!687807) b!1027502))

(declare-fun m!946183 () Bool)

(assert (=> d!122663 m!946183))

(assert (=> b!1027500 m!946097))

(declare-fun m!946185 () Bool)

(assert (=> b!1027501 m!946185))

(declare-fun m!946187 () Bool)

(assert (=> b!1027502 m!946187))

(assert (=> start!89608 d!122663))

(declare-fun d!122665 () Bool)

(declare-fun res!687812 () Bool)

(declare-fun e!579952 () Bool)

(assert (=> d!122665 (=> res!687812 e!579952)))

(assert (=> d!122665 (= res!687812 (= (select (arr!31113 lt!452292) #b00000000000000000000000000000000) key!909))))

(assert (=> d!122665 (= (arrayContainsKey!0 lt!452292 key!909 #b00000000000000000000000000000000) e!579952)))

(declare-fun b!1027507 () Bool)

(declare-fun e!579953 () Bool)

(assert (=> b!1027507 (= e!579952 e!579953)))

(declare-fun res!687813 () Bool)

(assert (=> b!1027507 (=> (not res!687813) (not e!579953))))

(assert (=> b!1027507 (= res!687813 (bvslt (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!31627 lt!452292)))))

(declare-fun b!1027508 () Bool)

(assert (=> b!1027508 (= e!579953 (arrayContainsKey!0 lt!452292 key!909 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)))))

(assert (= (and d!122665 (not res!687812)) b!1027507))

(assert (= (and b!1027507 res!687813) b!1027508))

(declare-fun m!946189 () Bool)

(assert (=> d!122665 m!946189))

(declare-fun m!946191 () Bool)

(assert (=> b!1027508 m!946191))

(assert (=> b!1027450 d!122665))

(declare-fun b!1027551 () Bool)

(declare-fun e!579983 () ListLongMap!13773)

(declare-fun e!579986 () ListLongMap!13773)

(assert (=> b!1027551 (= e!579983 e!579986)))

(declare-fun c!103542 () Bool)

(assert (=> b!1027551 (= c!103542 (and (not (= (bvand (extraKeys!5823 thiss!1427) #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (= (bvand (extraKeys!5823 thiss!1427) #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun call!43258 () ListLongMap!13773)

(declare-fun call!43259 () ListLongMap!13773)

(declare-fun call!43263 () ListLongMap!13773)

(declare-fun bm!43255 () Bool)

(declare-fun call!43264 () ListLongMap!13773)

(declare-fun c!103540 () Bool)

(declare-fun +!3057 (ListLongMap!13773 tuple2!15616) ListLongMap!13773)

(assert (=> bm!43255 (= call!43258 (+!3057 (ite c!103540 call!43259 (ite c!103542 call!43264 call!43263)) (ite (or c!103540 c!103542) (tuple2!15617 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!5927 thiss!1427)) (tuple2!15617 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!5927 thiss!1427)))))))

(declare-fun b!1027552 () Bool)

(declare-fun e!579991 () Bool)

(declare-fun lt!452396 () ListLongMap!13773)

(declare-fun apply!934 (ListLongMap!13773 (_ BitVec 64)) V!37261)

(assert (=> b!1027552 (= e!579991 (= (apply!934 lt!452396 #b0000000000000000000000000000000000000000000000000000000000000000) (zeroValue!5927 thiss!1427)))))

(declare-fun b!1027553 () Bool)

(declare-fun e!579980 () ListLongMap!13773)

(declare-fun call!43262 () ListLongMap!13773)

(assert (=> b!1027553 (= e!579980 call!43262)))

(declare-fun d!122667 () Bool)

(declare-fun e!579989 () Bool)

(assert (=> d!122667 e!579989))

(declare-fun res!687834 () Bool)

(assert (=> d!122667 (=> (not res!687834) (not e!579989))))

(assert (=> d!122667 (= res!687834 (or (bvsge #b00000000000000000000000000000000 (size!31627 (_keys!11235 thiss!1427))) (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!31627 (_keys!11235 thiss!1427))))))))

(declare-fun lt!452390 () ListLongMap!13773)

(assert (=> d!122667 (= lt!452396 lt!452390)))

(declare-fun lt!452393 () Unit!33448)

(declare-fun e!579982 () Unit!33448)

(assert (=> d!122667 (= lt!452393 e!579982)))

(declare-fun c!103545 () Bool)

(declare-fun e!579985 () Bool)

(assert (=> d!122667 (= c!103545 e!579985)))

(declare-fun res!687839 () Bool)

(assert (=> d!122667 (=> (not res!687839) (not e!579985))))

(assert (=> d!122667 (= res!687839 (bvslt #b00000000000000000000000000000000 (size!31627 (_keys!11235 thiss!1427))))))

(assert (=> d!122667 (= lt!452390 e!579983)))

(assert (=> d!122667 (= c!103540 (and (not (= (bvand (extraKeys!5823 thiss!1427) #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (not (= (bvand (extraKeys!5823 thiss!1427) #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(assert (=> d!122667 (validMask!0 (mask!29804 thiss!1427))))

(assert (=> d!122667 (= (getCurrentListMap!3909 (_keys!11235 thiss!1427) (_values!6114 thiss!1427) (mask!29804 thiss!1427) (extraKeys!5823 thiss!1427) (zeroValue!5927 thiss!1427) (minValue!5927 thiss!1427) #b00000000000000000000000000000000 (defaultEntry!6091 thiss!1427)) lt!452396)))

(declare-fun bm!43256 () Bool)

(declare-fun call!43261 () Bool)

(declare-fun contains!5980 (ListLongMap!13773 (_ BitVec 64)) Bool)

(assert (=> bm!43256 (= call!43261 (contains!5980 lt!452396 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun bm!43257 () Bool)

(assert (=> bm!43257 (= call!43262 call!43258)))

(declare-fun b!1027554 () Bool)

(declare-fun e!579988 () Bool)

(assert (=> b!1027554 (= e!579989 e!579988)))

(declare-fun c!103541 () Bool)

(assert (=> b!1027554 (= c!103541 (not (= (bvand (extraKeys!5823 thiss!1427) #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun b!1027555 () Bool)

(assert (=> b!1027555 (= e!579983 (+!3057 call!43258 (tuple2!15617 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!5927 thiss!1427))))))

(declare-fun b!1027556 () Bool)

(declare-fun e!579984 () Bool)

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1027556 (= e!579984 (validKeyInArray!0 (select (arr!31113 (_keys!11235 thiss!1427)) #b00000000000000000000000000000000)))))

(declare-fun b!1027557 () Bool)

(declare-fun e!579990 () Bool)

(assert (=> b!1027557 (= e!579988 e!579990)))

(declare-fun res!687833 () Bool)

(assert (=> b!1027557 (= res!687833 call!43261)))

(assert (=> b!1027557 (=> (not res!687833) (not e!579990))))

(declare-fun b!1027558 () Bool)

(assert (=> b!1027558 (= e!579990 (= (apply!934 lt!452396 #b1000000000000000000000000000000000000000000000000000000000000000) (minValue!5927 thiss!1427)))))

(declare-fun b!1027559 () Bool)

(declare-fun e!579992 () Bool)

(declare-fun e!579987 () Bool)

(assert (=> b!1027559 (= e!579992 e!579987)))

(declare-fun res!687838 () Bool)

(assert (=> b!1027559 (=> (not res!687838) (not e!579987))))

(assert (=> b!1027559 (= res!687838 (contains!5980 lt!452396 (select (arr!31113 (_keys!11235 thiss!1427)) #b00000000000000000000000000000000)))))

(assert (=> b!1027559 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!31627 (_keys!11235 thiss!1427))))))

(declare-fun b!1027560 () Bool)

(declare-fun lt!452388 () Unit!33448)

(assert (=> b!1027560 (= e!579982 lt!452388)))

(declare-fun lt!452389 () ListLongMap!13773)

(declare-fun getCurrentListMapNoExtraKeys!3527 (array!64616 array!64618 (_ BitVec 32) (_ BitVec 32) V!37261 V!37261 (_ BitVec 32) Int) ListLongMap!13773)

(assert (=> b!1027560 (= lt!452389 (getCurrentListMapNoExtraKeys!3527 (_keys!11235 thiss!1427) (_values!6114 thiss!1427) (mask!29804 thiss!1427) (extraKeys!5823 thiss!1427) (zeroValue!5927 thiss!1427) (minValue!5927 thiss!1427) #b00000000000000000000000000000000 (defaultEntry!6091 thiss!1427)))))

(declare-fun lt!452382 () (_ BitVec 64))

(assert (=> b!1027560 (= lt!452382 #b0000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!452379 () (_ BitVec 64))

(assert (=> b!1027560 (= lt!452379 (select (arr!31113 (_keys!11235 thiss!1427)) #b00000000000000000000000000000000))))

(declare-fun lt!452394 () Unit!33448)

(declare-fun addStillContains!622 (ListLongMap!13773 (_ BitVec 64) V!37261 (_ BitVec 64)) Unit!33448)

(assert (=> b!1027560 (= lt!452394 (addStillContains!622 lt!452389 lt!452382 (zeroValue!5927 thiss!1427) lt!452379))))

(assert (=> b!1027560 (contains!5980 (+!3057 lt!452389 (tuple2!15617 lt!452382 (zeroValue!5927 thiss!1427))) lt!452379)))

(declare-fun lt!452378 () Unit!33448)

(assert (=> b!1027560 (= lt!452378 lt!452394)))

(declare-fun lt!452397 () ListLongMap!13773)

(assert (=> b!1027560 (= lt!452397 (getCurrentListMapNoExtraKeys!3527 (_keys!11235 thiss!1427) (_values!6114 thiss!1427) (mask!29804 thiss!1427) (extraKeys!5823 thiss!1427) (zeroValue!5927 thiss!1427) (minValue!5927 thiss!1427) #b00000000000000000000000000000000 (defaultEntry!6091 thiss!1427)))))

(declare-fun lt!452384 () (_ BitVec 64))

(assert (=> b!1027560 (= lt!452384 #b1000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!452380 () (_ BitVec 64))

(assert (=> b!1027560 (= lt!452380 (select (arr!31113 (_keys!11235 thiss!1427)) #b00000000000000000000000000000000))))

(declare-fun lt!452392 () Unit!33448)

(declare-fun addApplyDifferent!474 (ListLongMap!13773 (_ BitVec 64) V!37261 (_ BitVec 64)) Unit!33448)

(assert (=> b!1027560 (= lt!452392 (addApplyDifferent!474 lt!452397 lt!452384 (minValue!5927 thiss!1427) lt!452380))))

(assert (=> b!1027560 (= (apply!934 (+!3057 lt!452397 (tuple2!15617 lt!452384 (minValue!5927 thiss!1427))) lt!452380) (apply!934 lt!452397 lt!452380))))

(declare-fun lt!452383 () Unit!33448)

(assert (=> b!1027560 (= lt!452383 lt!452392)))

(declare-fun lt!452387 () ListLongMap!13773)

(assert (=> b!1027560 (= lt!452387 (getCurrentListMapNoExtraKeys!3527 (_keys!11235 thiss!1427) (_values!6114 thiss!1427) (mask!29804 thiss!1427) (extraKeys!5823 thiss!1427) (zeroValue!5927 thiss!1427) (minValue!5927 thiss!1427) #b00000000000000000000000000000000 (defaultEntry!6091 thiss!1427)))))

(declare-fun lt!452391 () (_ BitVec 64))

(assert (=> b!1027560 (= lt!452391 #b0000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!452381 () (_ BitVec 64))

(assert (=> b!1027560 (= lt!452381 (select (arr!31113 (_keys!11235 thiss!1427)) #b00000000000000000000000000000000))))

(declare-fun lt!452386 () Unit!33448)

(assert (=> b!1027560 (= lt!452386 (addApplyDifferent!474 lt!452387 lt!452391 (zeroValue!5927 thiss!1427) lt!452381))))

(assert (=> b!1027560 (= (apply!934 (+!3057 lt!452387 (tuple2!15617 lt!452391 (zeroValue!5927 thiss!1427))) lt!452381) (apply!934 lt!452387 lt!452381))))

(declare-fun lt!452398 () Unit!33448)

(assert (=> b!1027560 (= lt!452398 lt!452386)))

(declare-fun lt!452395 () ListLongMap!13773)

(assert (=> b!1027560 (= lt!452395 (getCurrentListMapNoExtraKeys!3527 (_keys!11235 thiss!1427) (_values!6114 thiss!1427) (mask!29804 thiss!1427) (extraKeys!5823 thiss!1427) (zeroValue!5927 thiss!1427) (minValue!5927 thiss!1427) #b00000000000000000000000000000000 (defaultEntry!6091 thiss!1427)))))

(declare-fun lt!452377 () (_ BitVec 64))

(assert (=> b!1027560 (= lt!452377 #b1000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!452385 () (_ BitVec 64))

(assert (=> b!1027560 (= lt!452385 (select (arr!31113 (_keys!11235 thiss!1427)) #b00000000000000000000000000000000))))

(assert (=> b!1027560 (= lt!452388 (addApplyDifferent!474 lt!452395 lt!452377 (minValue!5927 thiss!1427) lt!452385))))

(assert (=> b!1027560 (= (apply!934 (+!3057 lt!452395 (tuple2!15617 lt!452377 (minValue!5927 thiss!1427))) lt!452385) (apply!934 lt!452395 lt!452385))))

(declare-fun b!1027561 () Bool)

(declare-fun res!687837 () Bool)

(assert (=> b!1027561 (=> (not res!687837) (not e!579989))))

(declare-fun e!579981 () Bool)

(assert (=> b!1027561 (= res!687837 e!579981)))

(declare-fun c!103544 () Bool)

(assert (=> b!1027561 (= c!103544 (not (= (bvand (extraKeys!5823 thiss!1427) #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-fun bm!43258 () Bool)

(assert (=> bm!43258 (= call!43264 call!43259)))

(declare-fun b!1027562 () Bool)

(assert (=> b!1027562 (= e!579980 call!43263)))

(declare-fun b!1027563 () Bool)

(declare-fun Unit!33452 () Unit!33448)

(assert (=> b!1027563 (= e!579982 Unit!33452)))

(declare-fun b!1027564 () Bool)

(declare-fun c!103543 () Bool)

(assert (=> b!1027564 (= c!103543 (and (not (= (bvand (extraKeys!5823 thiss!1427) #b00000000000000000000000000000010) #b00000000000000000000000000000000)) (= (bvand (extraKeys!5823 thiss!1427) #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(assert (=> b!1027564 (= e!579986 e!579980)))

(declare-fun bm!43259 () Bool)

(declare-fun call!43260 () Bool)

(assert (=> bm!43259 (= call!43260 (contains!5980 lt!452396 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1027565 () Bool)

(declare-fun res!687835 () Bool)

(assert (=> b!1027565 (=> (not res!687835) (not e!579989))))

(assert (=> b!1027565 (= res!687835 e!579992)))

(declare-fun res!687840 () Bool)

(assert (=> b!1027565 (=> res!687840 e!579992)))

(assert (=> b!1027565 (= res!687840 (not e!579984))))

(declare-fun res!687832 () Bool)

(assert (=> b!1027565 (=> (not res!687832) (not e!579984))))

(assert (=> b!1027565 (= res!687832 (bvslt #b00000000000000000000000000000000 (size!31627 (_keys!11235 thiss!1427))))))

(declare-fun b!1027566 () Bool)

(assert (=> b!1027566 (= e!579985 (validKeyInArray!0 (select (arr!31113 (_keys!11235 thiss!1427)) #b00000000000000000000000000000000)))))

(declare-fun b!1027567 () Bool)

(declare-fun get!16349 (ValueCell!11442 V!37261) V!37261)

(assert (=> b!1027567 (= e!579987 (= (apply!934 lt!452396 (select (arr!31113 (_keys!11235 thiss!1427)) #b00000000000000000000000000000000)) (get!16349 (select (arr!31114 (_values!6114 thiss!1427)) #b00000000000000000000000000000000) (dynLambda!1953 (defaultEntry!6091 thiss!1427) #b0000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!1027567 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!31628 (_values!6114 thiss!1427))))))

(assert (=> b!1027567 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!31627 (_keys!11235 thiss!1427))))))

(declare-fun bm!43260 () Bool)

(assert (=> bm!43260 (= call!43259 (getCurrentListMapNoExtraKeys!3527 (_keys!11235 thiss!1427) (_values!6114 thiss!1427) (mask!29804 thiss!1427) (extraKeys!5823 thiss!1427) (zeroValue!5927 thiss!1427) (minValue!5927 thiss!1427) #b00000000000000000000000000000000 (defaultEntry!6091 thiss!1427)))))

(declare-fun b!1027568 () Bool)

(assert (=> b!1027568 (= e!579986 call!43262)))

(declare-fun b!1027569 () Bool)

(assert (=> b!1027569 (= e!579981 e!579991)))

(declare-fun res!687836 () Bool)

(assert (=> b!1027569 (= res!687836 call!43260)))

(assert (=> b!1027569 (=> (not res!687836) (not e!579991))))

(declare-fun b!1027570 () Bool)

(assert (=> b!1027570 (= e!579988 (not call!43261))))

(declare-fun b!1027571 () Bool)

(assert (=> b!1027571 (= e!579981 (not call!43260))))

(declare-fun bm!43261 () Bool)

(assert (=> bm!43261 (= call!43263 call!43264)))

(assert (= (and d!122667 c!103540) b!1027555))

(assert (= (and d!122667 (not c!103540)) b!1027551))

(assert (= (and b!1027551 c!103542) b!1027568))

(assert (= (and b!1027551 (not c!103542)) b!1027564))

(assert (= (and b!1027564 c!103543) b!1027553))

(assert (= (and b!1027564 (not c!103543)) b!1027562))

(assert (= (or b!1027553 b!1027562) bm!43261))

(assert (= (or b!1027568 bm!43261) bm!43258))

(assert (= (or b!1027568 b!1027553) bm!43257))

(assert (= (or b!1027555 bm!43258) bm!43260))

(assert (= (or b!1027555 bm!43257) bm!43255))

(assert (= (and d!122667 res!687839) b!1027566))

(assert (= (and d!122667 c!103545) b!1027560))

(assert (= (and d!122667 (not c!103545)) b!1027563))

(assert (= (and d!122667 res!687834) b!1027565))

(assert (= (and b!1027565 res!687832) b!1027556))

(assert (= (and b!1027565 (not res!687840)) b!1027559))

(assert (= (and b!1027559 res!687838) b!1027567))

(assert (= (and b!1027565 res!687835) b!1027561))

(assert (= (and b!1027561 c!103544) b!1027569))

(assert (= (and b!1027561 (not c!103544)) b!1027571))

(assert (= (and b!1027569 res!687836) b!1027552))

(assert (= (or b!1027569 b!1027571) bm!43259))

(assert (= (and b!1027561 res!687837) b!1027554))

(assert (= (and b!1027554 c!103541) b!1027557))

(assert (= (and b!1027554 (not c!103541)) b!1027570))

(assert (= (and b!1027557 res!687833) b!1027558))

(assert (= (or b!1027557 b!1027570) bm!43256))

(declare-fun b_lambda!15757 () Bool)

(assert (=> (not b_lambda!15757) (not b!1027567)))

(assert (=> b!1027567 t!30987))

(declare-fun b_and!32845 () Bool)

(assert (= b_and!32839 (and (=> t!30987 result!14101) b_and!32845)))

(declare-fun m!946193 () Bool)

(assert (=> bm!43255 m!946193))

(declare-fun m!946195 () Bool)

(assert (=> b!1027566 m!946195))

(assert (=> b!1027566 m!946195))

(declare-fun m!946197 () Bool)

(assert (=> b!1027566 m!946197))

(declare-fun m!946199 () Bool)

(assert (=> b!1027558 m!946199))

(assert (=> d!122667 m!946181))

(declare-fun m!946201 () Bool)

(assert (=> bm!43260 m!946201))

(declare-fun m!946203 () Bool)

(assert (=> bm!43256 m!946203))

(assert (=> b!1027567 m!946195))

(declare-fun m!946205 () Bool)

(assert (=> b!1027567 m!946205))

(declare-fun m!946207 () Bool)

(assert (=> b!1027567 m!946207))

(assert (=> b!1027567 m!946113))

(declare-fun m!946209 () Bool)

(assert (=> b!1027567 m!946209))

(assert (=> b!1027567 m!946195))

(assert (=> b!1027567 m!946113))

(assert (=> b!1027567 m!946207))

(assert (=> b!1027560 m!946201))

(declare-fun m!946211 () Bool)

(assert (=> b!1027560 m!946211))

(declare-fun m!946213 () Bool)

(assert (=> b!1027560 m!946213))

(declare-fun m!946215 () Bool)

(assert (=> b!1027560 m!946215))

(declare-fun m!946217 () Bool)

(assert (=> b!1027560 m!946217))

(declare-fun m!946219 () Bool)

(assert (=> b!1027560 m!946219))

(declare-fun m!946221 () Bool)

(assert (=> b!1027560 m!946221))

(assert (=> b!1027560 m!946195))

(assert (=> b!1027560 m!946215))

(declare-fun m!946223 () Bool)

(assert (=> b!1027560 m!946223))

(declare-fun m!946225 () Bool)

(assert (=> b!1027560 m!946225))

(declare-fun m!946227 () Bool)

(assert (=> b!1027560 m!946227))

(declare-fun m!946229 () Bool)

(assert (=> b!1027560 m!946229))

(declare-fun m!946231 () Bool)

(assert (=> b!1027560 m!946231))

(declare-fun m!946233 () Bool)

(assert (=> b!1027560 m!946233))

(declare-fun m!946235 () Bool)

(assert (=> b!1027560 m!946235))

(assert (=> b!1027560 m!946221))

(declare-fun m!946237 () Bool)

(assert (=> b!1027560 m!946237))

(assert (=> b!1027560 m!946225))

(assert (=> b!1027560 m!946233))

(declare-fun m!946239 () Bool)

(assert (=> b!1027560 m!946239))

(declare-fun m!946241 () Bool)

(assert (=> bm!43259 m!946241))

(assert (=> b!1027556 m!946195))

(assert (=> b!1027556 m!946195))

(assert (=> b!1027556 m!946197))

(declare-fun m!946243 () Bool)

(assert (=> b!1027552 m!946243))

(assert (=> b!1027559 m!946195))

(assert (=> b!1027559 m!946195))

(declare-fun m!946245 () Bool)

(assert (=> b!1027559 m!946245))

(declare-fun m!946247 () Bool)

(assert (=> b!1027555 m!946247))

(assert (=> b!1027450 d!122667))

(declare-fun b!1027572 () Bool)

(declare-fun e!579996 () ListLongMap!13773)

(declare-fun e!579999 () ListLongMap!13773)

(assert (=> b!1027572 (= e!579996 e!579999)))

(declare-fun c!103548 () Bool)

(assert (=> b!1027572 (= c!103548 (and (not (= (bvand (extraKeys!5823 thiss!1427) #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (= (bvand (extraKeys!5823 thiss!1427) #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun call!43265 () ListLongMap!13773)

(declare-fun call!43270 () ListLongMap!13773)

(declare-fun c!103546 () Bool)

(declare-fun call!43266 () ListLongMap!13773)

(declare-fun bm!43262 () Bool)

(declare-fun call!43271 () ListLongMap!13773)

(assert (=> bm!43262 (= call!43265 (+!3057 (ite c!103546 call!43266 (ite c!103548 call!43271 call!43270)) (ite (or c!103546 c!103548) (tuple2!15617 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!5927 thiss!1427)) (tuple2!15617 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!5927 thiss!1427)))))))

(declare-fun b!1027573 () Bool)

(declare-fun e!580004 () Bool)

(declare-fun lt!452418 () ListLongMap!13773)

(assert (=> b!1027573 (= e!580004 (= (apply!934 lt!452418 #b0000000000000000000000000000000000000000000000000000000000000000) (zeroValue!5927 thiss!1427)))))

(declare-fun b!1027574 () Bool)

(declare-fun e!579993 () ListLongMap!13773)

(declare-fun call!43269 () ListLongMap!13773)

(assert (=> b!1027574 (= e!579993 call!43269)))

(declare-fun d!122669 () Bool)

(declare-fun e!580002 () Bool)

(assert (=> d!122669 e!580002))

(declare-fun res!687843 () Bool)

(assert (=> d!122669 (=> (not res!687843) (not e!580002))))

(assert (=> d!122669 (= res!687843 (or (bvsge #b00000000000000000000000000000000 (size!31627 lt!452292)) (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!31627 lt!452292)))))))

(declare-fun lt!452412 () ListLongMap!13773)

(assert (=> d!122669 (= lt!452418 lt!452412)))

(declare-fun lt!452415 () Unit!33448)

(declare-fun e!579995 () Unit!33448)

(assert (=> d!122669 (= lt!452415 e!579995)))

(declare-fun c!103551 () Bool)

(declare-fun e!579998 () Bool)

(assert (=> d!122669 (= c!103551 e!579998)))

(declare-fun res!687848 () Bool)

(assert (=> d!122669 (=> (not res!687848) (not e!579998))))

(assert (=> d!122669 (= res!687848 (bvslt #b00000000000000000000000000000000 (size!31627 lt!452292)))))

(assert (=> d!122669 (= lt!452412 e!579996)))

(assert (=> d!122669 (= c!103546 (and (not (= (bvand (extraKeys!5823 thiss!1427) #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (not (= (bvand (extraKeys!5823 thiss!1427) #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(assert (=> d!122669 (validMask!0 (mask!29804 thiss!1427))))

(assert (=> d!122669 (= (getCurrentListMap!3909 lt!452292 lt!452290 (mask!29804 thiss!1427) (extraKeys!5823 thiss!1427) (zeroValue!5927 thiss!1427) (minValue!5927 thiss!1427) #b00000000000000000000000000000000 (defaultEntry!6091 thiss!1427)) lt!452418)))

(declare-fun bm!43263 () Bool)

(declare-fun call!43268 () Bool)

(assert (=> bm!43263 (= call!43268 (contains!5980 lt!452418 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun bm!43264 () Bool)

(assert (=> bm!43264 (= call!43269 call!43265)))

(declare-fun b!1027575 () Bool)

(declare-fun e!580001 () Bool)

(assert (=> b!1027575 (= e!580002 e!580001)))

(declare-fun c!103547 () Bool)

(assert (=> b!1027575 (= c!103547 (not (= (bvand (extraKeys!5823 thiss!1427) #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun b!1027576 () Bool)

(assert (=> b!1027576 (= e!579996 (+!3057 call!43265 (tuple2!15617 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!5927 thiss!1427))))))

(declare-fun b!1027577 () Bool)

(declare-fun e!579997 () Bool)

(assert (=> b!1027577 (= e!579997 (validKeyInArray!0 (select (arr!31113 lt!452292) #b00000000000000000000000000000000)))))

(declare-fun b!1027578 () Bool)

(declare-fun e!580003 () Bool)

(assert (=> b!1027578 (= e!580001 e!580003)))

(declare-fun res!687842 () Bool)

(assert (=> b!1027578 (= res!687842 call!43268)))

(assert (=> b!1027578 (=> (not res!687842) (not e!580003))))

(declare-fun b!1027579 () Bool)

(assert (=> b!1027579 (= e!580003 (= (apply!934 lt!452418 #b1000000000000000000000000000000000000000000000000000000000000000) (minValue!5927 thiss!1427)))))

(declare-fun b!1027580 () Bool)

(declare-fun e!580005 () Bool)

(declare-fun e!580000 () Bool)

(assert (=> b!1027580 (= e!580005 e!580000)))

(declare-fun res!687847 () Bool)

(assert (=> b!1027580 (=> (not res!687847) (not e!580000))))

(assert (=> b!1027580 (= res!687847 (contains!5980 lt!452418 (select (arr!31113 lt!452292) #b00000000000000000000000000000000)))))

(assert (=> b!1027580 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!31627 lt!452292)))))

(declare-fun b!1027581 () Bool)

(declare-fun lt!452410 () Unit!33448)

(assert (=> b!1027581 (= e!579995 lt!452410)))

(declare-fun lt!452411 () ListLongMap!13773)

(assert (=> b!1027581 (= lt!452411 (getCurrentListMapNoExtraKeys!3527 lt!452292 lt!452290 (mask!29804 thiss!1427) (extraKeys!5823 thiss!1427) (zeroValue!5927 thiss!1427) (minValue!5927 thiss!1427) #b00000000000000000000000000000000 (defaultEntry!6091 thiss!1427)))))

(declare-fun lt!452404 () (_ BitVec 64))

(assert (=> b!1027581 (= lt!452404 #b0000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!452401 () (_ BitVec 64))

(assert (=> b!1027581 (= lt!452401 (select (arr!31113 lt!452292) #b00000000000000000000000000000000))))

(declare-fun lt!452416 () Unit!33448)

(assert (=> b!1027581 (= lt!452416 (addStillContains!622 lt!452411 lt!452404 (zeroValue!5927 thiss!1427) lt!452401))))

(assert (=> b!1027581 (contains!5980 (+!3057 lt!452411 (tuple2!15617 lt!452404 (zeroValue!5927 thiss!1427))) lt!452401)))

(declare-fun lt!452400 () Unit!33448)

(assert (=> b!1027581 (= lt!452400 lt!452416)))

(declare-fun lt!452419 () ListLongMap!13773)

(assert (=> b!1027581 (= lt!452419 (getCurrentListMapNoExtraKeys!3527 lt!452292 lt!452290 (mask!29804 thiss!1427) (extraKeys!5823 thiss!1427) (zeroValue!5927 thiss!1427) (minValue!5927 thiss!1427) #b00000000000000000000000000000000 (defaultEntry!6091 thiss!1427)))))

(declare-fun lt!452406 () (_ BitVec 64))

(assert (=> b!1027581 (= lt!452406 #b1000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!452402 () (_ BitVec 64))

(assert (=> b!1027581 (= lt!452402 (select (arr!31113 lt!452292) #b00000000000000000000000000000000))))

(declare-fun lt!452414 () Unit!33448)

(assert (=> b!1027581 (= lt!452414 (addApplyDifferent!474 lt!452419 lt!452406 (minValue!5927 thiss!1427) lt!452402))))

(assert (=> b!1027581 (= (apply!934 (+!3057 lt!452419 (tuple2!15617 lt!452406 (minValue!5927 thiss!1427))) lt!452402) (apply!934 lt!452419 lt!452402))))

(declare-fun lt!452405 () Unit!33448)

(assert (=> b!1027581 (= lt!452405 lt!452414)))

(declare-fun lt!452409 () ListLongMap!13773)

(assert (=> b!1027581 (= lt!452409 (getCurrentListMapNoExtraKeys!3527 lt!452292 lt!452290 (mask!29804 thiss!1427) (extraKeys!5823 thiss!1427) (zeroValue!5927 thiss!1427) (minValue!5927 thiss!1427) #b00000000000000000000000000000000 (defaultEntry!6091 thiss!1427)))))

(declare-fun lt!452413 () (_ BitVec 64))

(assert (=> b!1027581 (= lt!452413 #b0000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!452403 () (_ BitVec 64))

(assert (=> b!1027581 (= lt!452403 (select (arr!31113 lt!452292) #b00000000000000000000000000000000))))

(declare-fun lt!452408 () Unit!33448)

(assert (=> b!1027581 (= lt!452408 (addApplyDifferent!474 lt!452409 lt!452413 (zeroValue!5927 thiss!1427) lt!452403))))

(assert (=> b!1027581 (= (apply!934 (+!3057 lt!452409 (tuple2!15617 lt!452413 (zeroValue!5927 thiss!1427))) lt!452403) (apply!934 lt!452409 lt!452403))))

(declare-fun lt!452420 () Unit!33448)

(assert (=> b!1027581 (= lt!452420 lt!452408)))

(declare-fun lt!452417 () ListLongMap!13773)

(assert (=> b!1027581 (= lt!452417 (getCurrentListMapNoExtraKeys!3527 lt!452292 lt!452290 (mask!29804 thiss!1427) (extraKeys!5823 thiss!1427) (zeroValue!5927 thiss!1427) (minValue!5927 thiss!1427) #b00000000000000000000000000000000 (defaultEntry!6091 thiss!1427)))))

(declare-fun lt!452399 () (_ BitVec 64))

(assert (=> b!1027581 (= lt!452399 #b1000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!452407 () (_ BitVec 64))

(assert (=> b!1027581 (= lt!452407 (select (arr!31113 lt!452292) #b00000000000000000000000000000000))))

(assert (=> b!1027581 (= lt!452410 (addApplyDifferent!474 lt!452417 lt!452399 (minValue!5927 thiss!1427) lt!452407))))

(assert (=> b!1027581 (= (apply!934 (+!3057 lt!452417 (tuple2!15617 lt!452399 (minValue!5927 thiss!1427))) lt!452407) (apply!934 lt!452417 lt!452407))))

(declare-fun b!1027582 () Bool)

(declare-fun res!687846 () Bool)

(assert (=> b!1027582 (=> (not res!687846) (not e!580002))))

(declare-fun e!579994 () Bool)

(assert (=> b!1027582 (= res!687846 e!579994)))

(declare-fun c!103550 () Bool)

(assert (=> b!1027582 (= c!103550 (not (= (bvand (extraKeys!5823 thiss!1427) #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-fun bm!43265 () Bool)

(assert (=> bm!43265 (= call!43271 call!43266)))

(declare-fun b!1027583 () Bool)

(assert (=> b!1027583 (= e!579993 call!43270)))

(declare-fun b!1027584 () Bool)

(declare-fun Unit!33453 () Unit!33448)

(assert (=> b!1027584 (= e!579995 Unit!33453)))

(declare-fun b!1027585 () Bool)

(declare-fun c!103549 () Bool)

(assert (=> b!1027585 (= c!103549 (and (not (= (bvand (extraKeys!5823 thiss!1427) #b00000000000000000000000000000010) #b00000000000000000000000000000000)) (= (bvand (extraKeys!5823 thiss!1427) #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(assert (=> b!1027585 (= e!579999 e!579993)))

(declare-fun bm!43266 () Bool)

(declare-fun call!43267 () Bool)

(assert (=> bm!43266 (= call!43267 (contains!5980 lt!452418 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1027586 () Bool)

(declare-fun res!687844 () Bool)

(assert (=> b!1027586 (=> (not res!687844) (not e!580002))))

(assert (=> b!1027586 (= res!687844 e!580005)))

(declare-fun res!687849 () Bool)

(assert (=> b!1027586 (=> res!687849 e!580005)))

(assert (=> b!1027586 (= res!687849 (not e!579997))))

(declare-fun res!687841 () Bool)

(assert (=> b!1027586 (=> (not res!687841) (not e!579997))))

(assert (=> b!1027586 (= res!687841 (bvslt #b00000000000000000000000000000000 (size!31627 lt!452292)))))

(declare-fun b!1027587 () Bool)

(assert (=> b!1027587 (= e!579998 (validKeyInArray!0 (select (arr!31113 lt!452292) #b00000000000000000000000000000000)))))

(declare-fun b!1027588 () Bool)

(assert (=> b!1027588 (= e!580000 (= (apply!934 lt!452418 (select (arr!31113 lt!452292) #b00000000000000000000000000000000)) (get!16349 (select (arr!31114 lt!452290) #b00000000000000000000000000000000) (dynLambda!1953 (defaultEntry!6091 thiss!1427) #b0000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!1027588 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!31628 lt!452290)))))

(assert (=> b!1027588 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!31627 lt!452292)))))

(declare-fun bm!43267 () Bool)

(assert (=> bm!43267 (= call!43266 (getCurrentListMapNoExtraKeys!3527 lt!452292 lt!452290 (mask!29804 thiss!1427) (extraKeys!5823 thiss!1427) (zeroValue!5927 thiss!1427) (minValue!5927 thiss!1427) #b00000000000000000000000000000000 (defaultEntry!6091 thiss!1427)))))

(declare-fun b!1027589 () Bool)

(assert (=> b!1027589 (= e!579999 call!43269)))

(declare-fun b!1027590 () Bool)

(assert (=> b!1027590 (= e!579994 e!580004)))

(declare-fun res!687845 () Bool)

(assert (=> b!1027590 (= res!687845 call!43267)))

(assert (=> b!1027590 (=> (not res!687845) (not e!580004))))

(declare-fun b!1027591 () Bool)

(assert (=> b!1027591 (= e!580001 (not call!43268))))

(declare-fun b!1027592 () Bool)

(assert (=> b!1027592 (= e!579994 (not call!43267))))

(declare-fun bm!43268 () Bool)

(assert (=> bm!43268 (= call!43270 call!43271)))

(assert (= (and d!122669 c!103546) b!1027576))

(assert (= (and d!122669 (not c!103546)) b!1027572))

(assert (= (and b!1027572 c!103548) b!1027589))

(assert (= (and b!1027572 (not c!103548)) b!1027585))

(assert (= (and b!1027585 c!103549) b!1027574))

(assert (= (and b!1027585 (not c!103549)) b!1027583))

(assert (= (or b!1027574 b!1027583) bm!43268))

(assert (= (or b!1027589 bm!43268) bm!43265))

(assert (= (or b!1027589 b!1027574) bm!43264))

(assert (= (or b!1027576 bm!43265) bm!43267))

(assert (= (or b!1027576 bm!43264) bm!43262))

(assert (= (and d!122669 res!687848) b!1027587))

(assert (= (and d!122669 c!103551) b!1027581))

(assert (= (and d!122669 (not c!103551)) b!1027584))

(assert (= (and d!122669 res!687843) b!1027586))

(assert (= (and b!1027586 res!687841) b!1027577))

(assert (= (and b!1027586 (not res!687849)) b!1027580))

(assert (= (and b!1027580 res!687847) b!1027588))

(assert (= (and b!1027586 res!687844) b!1027582))

(assert (= (and b!1027582 c!103550) b!1027590))

(assert (= (and b!1027582 (not c!103550)) b!1027592))

(assert (= (and b!1027590 res!687845) b!1027573))

(assert (= (or b!1027590 b!1027592) bm!43266))

(assert (= (and b!1027582 res!687846) b!1027575))

(assert (= (and b!1027575 c!103547) b!1027578))

(assert (= (and b!1027575 (not c!103547)) b!1027591))

(assert (= (and b!1027578 res!687842) b!1027579))

(assert (= (or b!1027578 b!1027591) bm!43263))

(declare-fun b_lambda!15759 () Bool)

(assert (=> (not b_lambda!15759) (not b!1027588)))

(assert (=> b!1027588 t!30987))

(declare-fun b_and!32847 () Bool)

(assert (= b_and!32845 (and (=> t!30987 result!14101) b_and!32847)))

(declare-fun m!946249 () Bool)

(assert (=> bm!43262 m!946249))

(assert (=> b!1027587 m!946189))

(assert (=> b!1027587 m!946189))

(declare-fun m!946251 () Bool)

(assert (=> b!1027587 m!946251))

(declare-fun m!946253 () Bool)

(assert (=> b!1027579 m!946253))

(assert (=> d!122669 m!946181))

(declare-fun m!946255 () Bool)

(assert (=> bm!43267 m!946255))

(declare-fun m!946257 () Bool)

(assert (=> bm!43263 m!946257))

(assert (=> b!1027588 m!946189))

(declare-fun m!946259 () Bool)

(assert (=> b!1027588 m!946259))

(declare-fun m!946261 () Bool)

(assert (=> b!1027588 m!946261))

(assert (=> b!1027588 m!946113))

(declare-fun m!946263 () Bool)

(assert (=> b!1027588 m!946263))

(assert (=> b!1027588 m!946189))

(assert (=> b!1027588 m!946113))

(assert (=> b!1027588 m!946261))

(assert (=> b!1027581 m!946255))

(declare-fun m!946265 () Bool)

(assert (=> b!1027581 m!946265))

(declare-fun m!946267 () Bool)

(assert (=> b!1027581 m!946267))

(declare-fun m!946269 () Bool)

(assert (=> b!1027581 m!946269))

(declare-fun m!946271 () Bool)

(assert (=> b!1027581 m!946271))

(declare-fun m!946273 () Bool)

(assert (=> b!1027581 m!946273))

(declare-fun m!946275 () Bool)

(assert (=> b!1027581 m!946275))

(assert (=> b!1027581 m!946189))

(assert (=> b!1027581 m!946269))

(declare-fun m!946277 () Bool)

(assert (=> b!1027581 m!946277))

(declare-fun m!946279 () Bool)

(assert (=> b!1027581 m!946279))

(declare-fun m!946281 () Bool)

(assert (=> b!1027581 m!946281))

(declare-fun m!946283 () Bool)

(assert (=> b!1027581 m!946283))

(declare-fun m!946285 () Bool)

(assert (=> b!1027581 m!946285))

(declare-fun m!946287 () Bool)

(assert (=> b!1027581 m!946287))

(declare-fun m!946289 () Bool)

(assert (=> b!1027581 m!946289))

(assert (=> b!1027581 m!946275))

(declare-fun m!946291 () Bool)

(assert (=> b!1027581 m!946291))

(assert (=> b!1027581 m!946279))

(assert (=> b!1027581 m!946287))

(declare-fun m!946293 () Bool)

(assert (=> b!1027581 m!946293))

(declare-fun m!946295 () Bool)

(assert (=> bm!43266 m!946295))

(assert (=> b!1027577 m!946189))

(assert (=> b!1027577 m!946189))

(assert (=> b!1027577 m!946251))

(declare-fun m!946297 () Bool)

(assert (=> b!1027573 m!946297))

(assert (=> b!1027580 m!946189))

(assert (=> b!1027580 m!946189))

(declare-fun m!946299 () Bool)

(assert (=> b!1027580 m!946299))

(declare-fun m!946301 () Bool)

(assert (=> b!1027576 m!946301))

(assert (=> b!1027450 d!122669))

(declare-fun d!122671 () Bool)

(declare-fun lt!452423 () ListLongMap!13773)

(assert (=> d!122671 (not (contains!5980 lt!452423 key!909))))

(declare-fun removeStrictlySorted!50 (List!21915 (_ BitVec 64)) List!21915)

(assert (=> d!122671 (= lt!452423 (ListLongMap!13774 (removeStrictlySorted!50 (toList!6902 (getCurrentListMap!3909 (_keys!11235 thiss!1427) (_values!6114 thiss!1427) (mask!29804 thiss!1427) (extraKeys!5823 thiss!1427) (zeroValue!5927 thiss!1427) (minValue!5927 thiss!1427) #b00000000000000000000000000000000 (defaultEntry!6091 thiss!1427))) key!909)))))

(assert (=> d!122671 (= (-!478 (getCurrentListMap!3909 (_keys!11235 thiss!1427) (_values!6114 thiss!1427) (mask!29804 thiss!1427) (extraKeys!5823 thiss!1427) (zeroValue!5927 thiss!1427) (minValue!5927 thiss!1427) #b00000000000000000000000000000000 (defaultEntry!6091 thiss!1427)) key!909) lt!452423)))

(declare-fun bs!29986 () Bool)

(assert (= bs!29986 d!122671))

(declare-fun m!946303 () Bool)

(assert (=> bs!29986 m!946303))

(declare-fun m!946305 () Bool)

(assert (=> bs!29986 m!946305))

(assert (=> b!1027450 d!122671))

(declare-fun b!1027603 () Bool)

(declare-fun e!580010 () Bool)

(assert (=> b!1027603 (= e!580010 (bvslt (size!31627 (_keys!11235 thiss!1427)) #b01111111111111111111111111111111))))

(declare-fun b!1027601 () Bool)

(declare-fun res!687861 () Bool)

(assert (=> b!1027601 (=> (not res!687861) (not e!580010))))

(assert (=> b!1027601 (= res!687861 (validKeyInArray!0 (select (arr!31113 (_keys!11235 thiss!1427)) (index!41015 lt!452296))))))

(declare-fun d!122673 () Bool)

(declare-fun e!580011 () Bool)

(assert (=> d!122673 e!580011))

(declare-fun res!687859 () Bool)

(assert (=> d!122673 (=> (not res!687859) (not e!580011))))

(assert (=> d!122673 (= res!687859 (and (bvsge (index!41015 lt!452296) #b00000000000000000000000000000000) (bvslt (index!41015 lt!452296) (size!31627 (_keys!11235 thiss!1427)))))))

(declare-fun lt!452426 () Unit!33448)

(declare-fun choose!82 (array!64616 (_ BitVec 32) (_ BitVec 64)) Unit!33448)

(assert (=> d!122673 (= lt!452426 (choose!82 (_keys!11235 thiss!1427) (index!41015 lt!452296) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> d!122673 e!580010))

(declare-fun res!687860 () Bool)

(assert (=> d!122673 (=> (not res!687860) (not e!580010))))

(assert (=> d!122673 (= res!687860 (and (bvsge (index!41015 lt!452296) #b00000000000000000000000000000000) (bvslt (index!41015 lt!452296) (size!31627 (_keys!11235 thiss!1427)))))))

(assert (=> d!122673 (= (lemmaRemoveValidKeyDecreasesNumberOfValidKeysInArray!0 (_keys!11235 thiss!1427) (index!41015 lt!452296) #b1000000000000000000000000000000000000000000000000000000000000000) lt!452426)))

(declare-fun b!1027604 () Bool)

(assert (=> b!1027604 (= e!580011 (= (arrayCountValidKeys!0 (array!64617 (store (arr!31113 (_keys!11235 thiss!1427)) (index!41015 lt!452296) #b1000000000000000000000000000000000000000000000000000000000000000) (size!31627 (_keys!11235 thiss!1427))) #b00000000000000000000000000000000 (size!31627 (_keys!11235 thiss!1427))) (bvsub (arrayCountValidKeys!0 (_keys!11235 thiss!1427) #b00000000000000000000000000000000 (size!31627 (_keys!11235 thiss!1427))) #b00000000000000000000000000000001)))))

(declare-fun b!1027602 () Bool)

(declare-fun res!687858 () Bool)

(assert (=> b!1027602 (=> (not res!687858) (not e!580010))))

(assert (=> b!1027602 (= res!687858 (not (validKeyInArray!0 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(assert (= (and d!122673 res!687860) b!1027601))

(assert (= (and b!1027601 res!687861) b!1027602))

(assert (= (and b!1027602 res!687858) b!1027603))

(assert (= (and d!122673 res!687859) b!1027604))

(declare-fun m!946307 () Bool)

(assert (=> b!1027601 m!946307))

(assert (=> b!1027601 m!946307))

(declare-fun m!946309 () Bool)

(assert (=> b!1027601 m!946309))

(declare-fun m!946311 () Bool)

(assert (=> d!122673 m!946311))

(assert (=> b!1027604 m!946093))

(declare-fun m!946313 () Bool)

(assert (=> b!1027604 m!946313))

(assert (=> b!1027604 m!946097))

(declare-fun m!946315 () Bool)

(assert (=> b!1027602 m!946315))

(assert (=> b!1027450 d!122673))

(declare-fun d!122675 () Bool)

(declare-fun e!580014 () Bool)

(assert (=> d!122675 e!580014))

(declare-fun res!687864 () Bool)

(assert (=> d!122675 (=> (not res!687864) (not e!580014))))

(assert (=> d!122675 (= res!687864 (bvslt (index!41015 lt!452296) (size!31627 (_keys!11235 thiss!1427))))))

(declare-fun lt!452429 () Unit!33448)

(declare-fun choose!121 (array!64616 (_ BitVec 32) (_ BitVec 64)) Unit!33448)

(assert (=> d!122675 (= lt!452429 (choose!121 (_keys!11235 thiss!1427) (index!41015 lt!452296) key!909))))

(assert (=> d!122675 (bvsge (index!41015 lt!452296) #b00000000000000000000000000000000)))

(assert (=> d!122675 (= (lemmaArrayNoDuplicateRemoveOneThenNotContain!0 (_keys!11235 thiss!1427) (index!41015 lt!452296) key!909) lt!452429)))

(declare-fun b!1027607 () Bool)

(assert (=> b!1027607 (= e!580014 (not (arrayContainsKey!0 (array!64617 (store (arr!31113 (_keys!11235 thiss!1427)) (index!41015 lt!452296) #b1000000000000000000000000000000000000000000000000000000000000000) (size!31627 (_keys!11235 thiss!1427))) key!909 #b00000000000000000000000000000000)))))

(assert (= (and d!122675 res!687864) b!1027607))

(declare-fun m!946317 () Bool)

(assert (=> d!122675 m!946317))

(assert (=> b!1027607 m!946093))

(declare-fun m!946319 () Bool)

(assert (=> b!1027607 m!946319))

(assert (=> b!1027450 d!122675))

(declare-fun d!122677 () Bool)

(declare-fun e!580017 () Bool)

(assert (=> d!122677 e!580017))

(declare-fun res!687867 () Bool)

(assert (=> d!122677 (=> (not res!687867) (not e!580017))))

(assert (=> d!122677 (= res!687867 (and (bvsge (index!41015 lt!452296) #b00000000000000000000000000000000) (bvslt (index!41015 lt!452296) (size!31627 (_keys!11235 thiss!1427)))))))

(declare-fun lt!452432 () Unit!33448)

(declare-fun choose!1687 (array!64616 array!64618 (_ BitVec 32) (_ BitVec 32) V!37261 V!37261 (_ BitVec 32) (_ BitVec 64) Int) Unit!33448)

(assert (=> d!122677 (= lt!452432 (choose!1687 (_keys!11235 thiss!1427) (_values!6114 thiss!1427) (mask!29804 thiss!1427) (extraKeys!5823 thiss!1427) (zeroValue!5927 thiss!1427) (minValue!5927 thiss!1427) (index!41015 lt!452296) key!909 (defaultEntry!6091 thiss!1427)))))

(assert (=> d!122677 (validMask!0 (mask!29804 thiss!1427))))

(assert (=> d!122677 (= (lemmaRemoveValidKeyToArrayThenRemoveKeyFromListMap!2 (_keys!11235 thiss!1427) (_values!6114 thiss!1427) (mask!29804 thiss!1427) (extraKeys!5823 thiss!1427) (zeroValue!5927 thiss!1427) (minValue!5927 thiss!1427) (index!41015 lt!452296) key!909 (defaultEntry!6091 thiss!1427)) lt!452432)))

(declare-fun b!1027610 () Bool)

(assert (=> b!1027610 (= e!580017 (= (-!478 (getCurrentListMap!3909 (_keys!11235 thiss!1427) (_values!6114 thiss!1427) (mask!29804 thiss!1427) (extraKeys!5823 thiss!1427) (zeroValue!5927 thiss!1427) (minValue!5927 thiss!1427) #b00000000000000000000000000000000 (defaultEntry!6091 thiss!1427)) key!909) (getCurrentListMap!3909 (array!64617 (store (arr!31113 (_keys!11235 thiss!1427)) (index!41015 lt!452296) #b1000000000000000000000000000000000000000000000000000000000000000) (size!31627 (_keys!11235 thiss!1427))) (array!64619 (store (arr!31114 (_values!6114 thiss!1427)) (index!41015 lt!452296) (ValueCellFull!11442 (dynLambda!1953 (defaultEntry!6091 thiss!1427) #b0000000000000000000000000000000000000000000000000000000000000000))) (size!31628 (_values!6114 thiss!1427))) (mask!29804 thiss!1427) (extraKeys!5823 thiss!1427) (zeroValue!5927 thiss!1427) (minValue!5927 thiss!1427) #b00000000000000000000000000000000 (defaultEntry!6091 thiss!1427))))))

(assert (=> b!1027610 (bvslt (index!41015 lt!452296) (size!31628 (_values!6114 thiss!1427)))))

(assert (= (and d!122677 res!687867) b!1027610))

(declare-fun b_lambda!15761 () Bool)

(assert (=> (not b_lambda!15761) (not b!1027610)))

(assert (=> b!1027610 t!30987))

(declare-fun b_and!32849 () Bool)

(assert (= b_and!32847 (and (=> t!30987 result!14101) b_and!32849)))

(declare-fun m!946321 () Bool)

(assert (=> d!122677 m!946321))

(assert (=> d!122677 m!946181))

(assert (=> b!1027610 m!946109))

(assert (=> b!1027610 m!946117))

(declare-fun m!946323 () Bool)

(assert (=> b!1027610 m!946323))

(assert (=> b!1027610 m!946109))

(assert (=> b!1027610 m!946111))

(assert (=> b!1027610 m!946113))

(assert (=> b!1027610 m!946093))

(assert (=> b!1027450 d!122677))

(declare-fun d!122679 () Bool)

(declare-fun Unit!33454 () Unit!33448)

(declare-fun Unit!33455 () Unit!33448)

(declare-fun Unit!33456 () Unit!33448)

(declare-fun Unit!33457 () Unit!33448)

(declare-fun Unit!33458 () Unit!33448)

(declare-fun Unit!33459 () Unit!33448)

(declare-fun Unit!33460 () Unit!33448)

(declare-fun Unit!33461 () Unit!33448)

(declare-fun Unit!33462 () Unit!33448)

(declare-fun Unit!33463 () Unit!33448)

(declare-fun Unit!33464 () Unit!33448)

(declare-fun Unit!33465 () Unit!33448)

(declare-fun Unit!33466 () Unit!33448)

(declare-fun Unit!33467 () Unit!33448)

(declare-fun Unit!33468 () Unit!33448)

(declare-fun Unit!33469 () Unit!33448)

(declare-fun Unit!33470 () Unit!33448)

(declare-fun Unit!33471 () Unit!33448)

(declare-fun Unit!33472 () Unit!33448)

(declare-fun Unit!33473 () Unit!33448)

(declare-fun Unit!33474 () Unit!33448)

(declare-fun Unit!33475 () Unit!33448)

(declare-fun Unit!33476 () Unit!33448)

(declare-fun Unit!33477 () Unit!33448)

(declare-fun Unit!33478 () Unit!33448)

(declare-fun Unit!33479 () Unit!33448)

(declare-fun Unit!33480 () Unit!33448)

(declare-fun Unit!33481 () Unit!33448)

(declare-fun Unit!33482 () Unit!33448)

(declare-fun Unit!33483 () Unit!33448)

(declare-fun Unit!33484 () Unit!33448)

(declare-fun Unit!33485 () Unit!33448)

(declare-fun Unit!33486 () Unit!33448)

(declare-fun Unit!33487 () Unit!33448)

(declare-fun Unit!33488 () Unit!33448)

(declare-fun Unit!33489 () Unit!33448)

(declare-fun Unit!33490 () Unit!33448)

(declare-fun Unit!33491 () Unit!33448)

(declare-fun Unit!33492 () Unit!33448)

(declare-fun Unit!33493 () Unit!33448)

(declare-fun Unit!33494 () Unit!33448)

(declare-fun Unit!33495 () Unit!33448)

(declare-fun Unit!33496 () Unit!33448)

(declare-fun Unit!33497 () Unit!33448)

(declare-fun Unit!33498 () Unit!33448)

(declare-fun Unit!33499 () Unit!33448)

(declare-fun Unit!33500 () Unit!33448)

(declare-fun Unit!33501 () Unit!33448)

(declare-fun Unit!33502 () Unit!33448)

(declare-fun Unit!33503 () Unit!33448)

(declare-fun Unit!33504 () Unit!33448)

(declare-fun Unit!33505 () Unit!33448)

(declare-fun Unit!33506 () Unit!33448)

(declare-fun Unit!33507 () Unit!33448)

(declare-fun Unit!33508 () Unit!33448)

(declare-fun Unit!33509 () Unit!33448)

(declare-fun Unit!33510 () Unit!33448)

(declare-fun Unit!33511 () Unit!33448)

(declare-fun Unit!33512 () Unit!33448)

(declare-fun Unit!33513 () Unit!33448)

(assert (=> d!122679 (= (validMask!0 (mask!29804 (_2!7817 (ite (bvsgt (bvadd #b00000000000000000000000000000001 (_vacant!2794 thiss!1427)) #b00000000000000000000000000000000) (tuple2!15615 Unit!33454 (LongMapFixedSize!5479 (defaultEntry!6091 thiss!1427) (mask!29804 thiss!1427) (extraKeys!5823 thiss!1427) (zeroValue!5927 thiss!1427) (minValue!5927 thiss!1427) (bvsub (_size!2794 thiss!1427) #b00000000000000000000000000000001) lt!452292 lt!452290 (bvadd #b00000000000000000000000000000001 (_vacant!2794 thiss!1427)))) (tuple2!15615 Unit!33455 (LongMapFixedSize!5479 (defaultEntry!6091 thiss!1427) (mask!29804 thiss!1427) (extraKeys!5823 thiss!1427) (zeroValue!5927 thiss!1427) (minValue!5927 thiss!1427) (bvsub (_size!2794 thiss!1427) #b00000000000000000000000000000001) lt!452292 lt!452290 (_vacant!2794 thiss!1427))))))) (and (or (= (mask!29804 (_2!7817 (ite (bvsgt (bvadd #b00000000000000000000000000000001 (_vacant!2794 thiss!1427)) #b00000000000000000000000000000000) (tuple2!15615 Unit!33456 (LongMapFixedSize!5479 (defaultEntry!6091 thiss!1427) (mask!29804 thiss!1427) (extraKeys!5823 thiss!1427) (zeroValue!5927 thiss!1427) (minValue!5927 thiss!1427) (bvsub (_size!2794 thiss!1427) #b00000000000000000000000000000001) lt!452292 lt!452290 (bvadd #b00000000000000000000000000000001 (_vacant!2794 thiss!1427)))) (tuple2!15615 Unit!33457 (LongMapFixedSize!5479 (defaultEntry!6091 thiss!1427) (mask!29804 thiss!1427) (extraKeys!5823 thiss!1427) (zeroValue!5927 thiss!1427) (minValue!5927 thiss!1427) (bvsub (_size!2794 thiss!1427) #b00000000000000000000000000000001) lt!452292 lt!452290 (_vacant!2794 thiss!1427)))))) #b00000000000000000000000000000111) (= (mask!29804 (_2!7817 (ite (bvsgt (bvadd #b00000000000000000000000000000001 (_vacant!2794 thiss!1427)) #b00000000000000000000000000000000) (tuple2!15615 Unit!33458 (LongMapFixedSize!5479 (defaultEntry!6091 thiss!1427) (mask!29804 thiss!1427) (extraKeys!5823 thiss!1427) (zeroValue!5927 thiss!1427) (minValue!5927 thiss!1427) (bvsub (_size!2794 thiss!1427) #b00000000000000000000000000000001) lt!452292 lt!452290 (bvadd #b00000000000000000000000000000001 (_vacant!2794 thiss!1427)))) (tuple2!15615 Unit!33459 (LongMapFixedSize!5479 (defaultEntry!6091 thiss!1427) (mask!29804 thiss!1427) (extraKeys!5823 thiss!1427) (zeroValue!5927 thiss!1427) (minValue!5927 thiss!1427) (bvsub (_size!2794 thiss!1427) #b00000000000000000000000000000001) lt!452292 lt!452290 (_vacant!2794 thiss!1427)))))) #b00000000000000000000000000001111) (= (mask!29804 (_2!7817 (ite (bvsgt (bvadd #b00000000000000000000000000000001 (_vacant!2794 thiss!1427)) #b00000000000000000000000000000000) (tuple2!15615 Unit!33460 (LongMapFixedSize!5479 (defaultEntry!6091 thiss!1427) (mask!29804 thiss!1427) (extraKeys!5823 thiss!1427) (zeroValue!5927 thiss!1427) (minValue!5927 thiss!1427) (bvsub (_size!2794 thiss!1427) #b00000000000000000000000000000001) lt!452292 lt!452290 (bvadd #b00000000000000000000000000000001 (_vacant!2794 thiss!1427)))) (tuple2!15615 Unit!33461 (LongMapFixedSize!5479 (defaultEntry!6091 thiss!1427) (mask!29804 thiss!1427) (extraKeys!5823 thiss!1427) (zeroValue!5927 thiss!1427) (minValue!5927 thiss!1427) (bvsub (_size!2794 thiss!1427) #b00000000000000000000000000000001) lt!452292 lt!452290 (_vacant!2794 thiss!1427)))))) #b00000000000000000000000000011111) (= (mask!29804 (_2!7817 (ite (bvsgt (bvadd #b00000000000000000000000000000001 (_vacant!2794 thiss!1427)) #b00000000000000000000000000000000) (tuple2!15615 Unit!33462 (LongMapFixedSize!5479 (defaultEntry!6091 thiss!1427) (mask!29804 thiss!1427) (extraKeys!5823 thiss!1427) (zeroValue!5927 thiss!1427) (minValue!5927 thiss!1427) (bvsub (_size!2794 thiss!1427) #b00000000000000000000000000000001) lt!452292 lt!452290 (bvadd #b00000000000000000000000000000001 (_vacant!2794 thiss!1427)))) (tuple2!15615 Unit!33463 (LongMapFixedSize!5479 (defaultEntry!6091 thiss!1427) (mask!29804 thiss!1427) (extraKeys!5823 thiss!1427) (zeroValue!5927 thiss!1427) (minValue!5927 thiss!1427) (bvsub (_size!2794 thiss!1427) #b00000000000000000000000000000001) lt!452292 lt!452290 (_vacant!2794 thiss!1427)))))) #b00000000000000000000000000111111) (= (mask!29804 (_2!7817 (ite (bvsgt (bvadd #b00000000000000000000000000000001 (_vacant!2794 thiss!1427)) #b00000000000000000000000000000000) (tuple2!15615 Unit!33464 (LongMapFixedSize!5479 (defaultEntry!6091 thiss!1427) (mask!29804 thiss!1427) (extraKeys!5823 thiss!1427) (zeroValue!5927 thiss!1427) (minValue!5927 thiss!1427) (bvsub (_size!2794 thiss!1427) #b00000000000000000000000000000001) lt!452292 lt!452290 (bvadd #b00000000000000000000000000000001 (_vacant!2794 thiss!1427)))) (tuple2!15615 Unit!33465 (LongMapFixedSize!5479 (defaultEntry!6091 thiss!1427) (mask!29804 thiss!1427) (extraKeys!5823 thiss!1427) (zeroValue!5927 thiss!1427) (minValue!5927 thiss!1427) (bvsub (_size!2794 thiss!1427) #b00000000000000000000000000000001) lt!452292 lt!452290 (_vacant!2794 thiss!1427)))))) #b00000000000000000000000001111111) (= (mask!29804 (_2!7817 (ite (bvsgt (bvadd #b00000000000000000000000000000001 (_vacant!2794 thiss!1427)) #b00000000000000000000000000000000) (tuple2!15615 Unit!33466 (LongMapFixedSize!5479 (defaultEntry!6091 thiss!1427) (mask!29804 thiss!1427) (extraKeys!5823 thiss!1427) (zeroValue!5927 thiss!1427) (minValue!5927 thiss!1427) (bvsub (_size!2794 thiss!1427) #b00000000000000000000000000000001) lt!452292 lt!452290 (bvadd #b00000000000000000000000000000001 (_vacant!2794 thiss!1427)))) (tuple2!15615 Unit!33467 (LongMapFixedSize!5479 (defaultEntry!6091 thiss!1427) (mask!29804 thiss!1427) (extraKeys!5823 thiss!1427) (zeroValue!5927 thiss!1427) (minValue!5927 thiss!1427) (bvsub (_size!2794 thiss!1427) #b00000000000000000000000000000001) lt!452292 lt!452290 (_vacant!2794 thiss!1427)))))) #b00000000000000000000000011111111) (= (mask!29804 (_2!7817 (ite (bvsgt (bvadd #b00000000000000000000000000000001 (_vacant!2794 thiss!1427)) #b00000000000000000000000000000000) (tuple2!15615 Unit!33468 (LongMapFixedSize!5479 (defaultEntry!6091 thiss!1427) (mask!29804 thiss!1427) (extraKeys!5823 thiss!1427) (zeroValue!5927 thiss!1427) (minValue!5927 thiss!1427) (bvsub (_size!2794 thiss!1427) #b00000000000000000000000000000001) lt!452292 lt!452290 (bvadd #b00000000000000000000000000000001 (_vacant!2794 thiss!1427)))) (tuple2!15615 Unit!33469 (LongMapFixedSize!5479 (defaultEntry!6091 thiss!1427) (mask!29804 thiss!1427) (extraKeys!5823 thiss!1427) (zeroValue!5927 thiss!1427) (minValue!5927 thiss!1427) (bvsub (_size!2794 thiss!1427) #b00000000000000000000000000000001) lt!452292 lt!452290 (_vacant!2794 thiss!1427)))))) #b00000000000000000000000111111111) (= (mask!29804 (_2!7817 (ite (bvsgt (bvadd #b00000000000000000000000000000001 (_vacant!2794 thiss!1427)) #b00000000000000000000000000000000) (tuple2!15615 Unit!33470 (LongMapFixedSize!5479 (defaultEntry!6091 thiss!1427) (mask!29804 thiss!1427) (extraKeys!5823 thiss!1427) (zeroValue!5927 thiss!1427) (minValue!5927 thiss!1427) (bvsub (_size!2794 thiss!1427) #b00000000000000000000000000000001) lt!452292 lt!452290 (bvadd #b00000000000000000000000000000001 (_vacant!2794 thiss!1427)))) (tuple2!15615 Unit!33471 (LongMapFixedSize!5479 (defaultEntry!6091 thiss!1427) (mask!29804 thiss!1427) (extraKeys!5823 thiss!1427) (zeroValue!5927 thiss!1427) (minValue!5927 thiss!1427) (bvsub (_size!2794 thiss!1427) #b00000000000000000000000000000001) lt!452292 lt!452290 (_vacant!2794 thiss!1427)))))) #b00000000000000000000001111111111) (= (mask!29804 (_2!7817 (ite (bvsgt (bvadd #b00000000000000000000000000000001 (_vacant!2794 thiss!1427)) #b00000000000000000000000000000000) (tuple2!15615 Unit!33472 (LongMapFixedSize!5479 (defaultEntry!6091 thiss!1427) (mask!29804 thiss!1427) (extraKeys!5823 thiss!1427) (zeroValue!5927 thiss!1427) (minValue!5927 thiss!1427) (bvsub (_size!2794 thiss!1427) #b00000000000000000000000000000001) lt!452292 lt!452290 (bvadd #b00000000000000000000000000000001 (_vacant!2794 thiss!1427)))) (tuple2!15615 Unit!33473 (LongMapFixedSize!5479 (defaultEntry!6091 thiss!1427) (mask!29804 thiss!1427) (extraKeys!5823 thiss!1427) (zeroValue!5927 thiss!1427) (minValue!5927 thiss!1427) (bvsub (_size!2794 thiss!1427) #b00000000000000000000000000000001) lt!452292 lt!452290 (_vacant!2794 thiss!1427)))))) #b00000000000000000000011111111111) (= (mask!29804 (_2!7817 (ite (bvsgt (bvadd #b00000000000000000000000000000001 (_vacant!2794 thiss!1427)) #b00000000000000000000000000000000) (tuple2!15615 Unit!33474 (LongMapFixedSize!5479 (defaultEntry!6091 thiss!1427) (mask!29804 thiss!1427) (extraKeys!5823 thiss!1427) (zeroValue!5927 thiss!1427) (minValue!5927 thiss!1427) (bvsub (_size!2794 thiss!1427) #b00000000000000000000000000000001) lt!452292 lt!452290 (bvadd #b00000000000000000000000000000001 (_vacant!2794 thiss!1427)))) (tuple2!15615 Unit!33475 (LongMapFixedSize!5479 (defaultEntry!6091 thiss!1427) (mask!29804 thiss!1427) (extraKeys!5823 thiss!1427) (zeroValue!5927 thiss!1427) (minValue!5927 thiss!1427) (bvsub (_size!2794 thiss!1427) #b00000000000000000000000000000001) lt!452292 lt!452290 (_vacant!2794 thiss!1427)))))) #b00000000000000000000111111111111) (= (mask!29804 (_2!7817 (ite (bvsgt (bvadd #b00000000000000000000000000000001 (_vacant!2794 thiss!1427)) #b00000000000000000000000000000000) (tuple2!15615 Unit!33476 (LongMapFixedSize!5479 (defaultEntry!6091 thiss!1427) (mask!29804 thiss!1427) (extraKeys!5823 thiss!1427) (zeroValue!5927 thiss!1427) (minValue!5927 thiss!1427) (bvsub (_size!2794 thiss!1427) #b00000000000000000000000000000001) lt!452292 lt!452290 (bvadd #b00000000000000000000000000000001 (_vacant!2794 thiss!1427)))) (tuple2!15615 Unit!33477 (LongMapFixedSize!5479 (defaultEntry!6091 thiss!1427) (mask!29804 thiss!1427) (extraKeys!5823 thiss!1427) (zeroValue!5927 thiss!1427) (minValue!5927 thiss!1427) (bvsub (_size!2794 thiss!1427) #b00000000000000000000000000000001) lt!452292 lt!452290 (_vacant!2794 thiss!1427)))))) #b00000000000000000001111111111111) (= (mask!29804 (_2!7817 (ite (bvsgt (bvadd #b00000000000000000000000000000001 (_vacant!2794 thiss!1427)) #b00000000000000000000000000000000) (tuple2!15615 Unit!33478 (LongMapFixedSize!5479 (defaultEntry!6091 thiss!1427) (mask!29804 thiss!1427) (extraKeys!5823 thiss!1427) (zeroValue!5927 thiss!1427) (minValue!5927 thiss!1427) (bvsub (_size!2794 thiss!1427) #b00000000000000000000000000000001) lt!452292 lt!452290 (bvadd #b00000000000000000000000000000001 (_vacant!2794 thiss!1427)))) (tuple2!15615 Unit!33479 (LongMapFixedSize!5479 (defaultEntry!6091 thiss!1427) (mask!29804 thiss!1427) (extraKeys!5823 thiss!1427) (zeroValue!5927 thiss!1427) (minValue!5927 thiss!1427) (bvsub (_size!2794 thiss!1427) #b00000000000000000000000000000001) lt!452292 lt!452290 (_vacant!2794 thiss!1427)))))) #b00000000000000000011111111111111) (= (mask!29804 (_2!7817 (ite (bvsgt (bvadd #b00000000000000000000000000000001 (_vacant!2794 thiss!1427)) #b00000000000000000000000000000000) (tuple2!15615 Unit!33480 (LongMapFixedSize!5479 (defaultEntry!6091 thiss!1427) (mask!29804 thiss!1427) (extraKeys!5823 thiss!1427) (zeroValue!5927 thiss!1427) (minValue!5927 thiss!1427) (bvsub (_size!2794 thiss!1427) #b00000000000000000000000000000001) lt!452292 lt!452290 (bvadd #b00000000000000000000000000000001 (_vacant!2794 thiss!1427)))) (tuple2!15615 Unit!33481 (LongMapFixedSize!5479 (defaultEntry!6091 thiss!1427) (mask!29804 thiss!1427) (extraKeys!5823 thiss!1427) (zeroValue!5927 thiss!1427) (minValue!5927 thiss!1427) (bvsub (_size!2794 thiss!1427) #b00000000000000000000000000000001) lt!452292 lt!452290 (_vacant!2794 thiss!1427)))))) #b00000000000000000111111111111111) (= (mask!29804 (_2!7817 (ite (bvsgt (bvadd #b00000000000000000000000000000001 (_vacant!2794 thiss!1427)) #b00000000000000000000000000000000) (tuple2!15615 Unit!33482 (LongMapFixedSize!5479 (defaultEntry!6091 thiss!1427) (mask!29804 thiss!1427) (extraKeys!5823 thiss!1427) (zeroValue!5927 thiss!1427) (minValue!5927 thiss!1427) (bvsub (_size!2794 thiss!1427) #b00000000000000000000000000000001) lt!452292 lt!452290 (bvadd #b00000000000000000000000000000001 (_vacant!2794 thiss!1427)))) (tuple2!15615 Unit!33483 (LongMapFixedSize!5479 (defaultEntry!6091 thiss!1427) (mask!29804 thiss!1427) (extraKeys!5823 thiss!1427) (zeroValue!5927 thiss!1427) (minValue!5927 thiss!1427) (bvsub (_size!2794 thiss!1427) #b00000000000000000000000000000001) lt!452292 lt!452290 (_vacant!2794 thiss!1427)))))) #b00000000000000001111111111111111) (= (mask!29804 (_2!7817 (ite (bvsgt (bvadd #b00000000000000000000000000000001 (_vacant!2794 thiss!1427)) #b00000000000000000000000000000000) (tuple2!15615 Unit!33484 (LongMapFixedSize!5479 (defaultEntry!6091 thiss!1427) (mask!29804 thiss!1427) (extraKeys!5823 thiss!1427) (zeroValue!5927 thiss!1427) (minValue!5927 thiss!1427) (bvsub (_size!2794 thiss!1427) #b00000000000000000000000000000001) lt!452292 lt!452290 (bvadd #b00000000000000000000000000000001 (_vacant!2794 thiss!1427)))) (tuple2!15615 Unit!33485 (LongMapFixedSize!5479 (defaultEntry!6091 thiss!1427) (mask!29804 thiss!1427) (extraKeys!5823 thiss!1427) (zeroValue!5927 thiss!1427) (minValue!5927 thiss!1427) (bvsub (_size!2794 thiss!1427) #b00000000000000000000000000000001) lt!452292 lt!452290 (_vacant!2794 thiss!1427)))))) #b00000000000000011111111111111111) (= (mask!29804 (_2!7817 (ite (bvsgt (bvadd #b00000000000000000000000000000001 (_vacant!2794 thiss!1427)) #b00000000000000000000000000000000) (tuple2!15615 Unit!33486 (LongMapFixedSize!5479 (defaultEntry!6091 thiss!1427) (mask!29804 thiss!1427) (extraKeys!5823 thiss!1427) (zeroValue!5927 thiss!1427) (minValue!5927 thiss!1427) (bvsub (_size!2794 thiss!1427) #b00000000000000000000000000000001) lt!452292 lt!452290 (bvadd #b00000000000000000000000000000001 (_vacant!2794 thiss!1427)))) (tuple2!15615 Unit!33487 (LongMapFixedSize!5479 (defaultEntry!6091 thiss!1427) (mask!29804 thiss!1427) (extraKeys!5823 thiss!1427) (zeroValue!5927 thiss!1427) (minValue!5927 thiss!1427) (bvsub (_size!2794 thiss!1427) #b00000000000000000000000000000001) lt!452292 lt!452290 (_vacant!2794 thiss!1427)))))) #b00000000000000111111111111111111) (= (mask!29804 (_2!7817 (ite (bvsgt (bvadd #b00000000000000000000000000000001 (_vacant!2794 thiss!1427)) #b00000000000000000000000000000000) (tuple2!15615 Unit!33488 (LongMapFixedSize!5479 (defaultEntry!6091 thiss!1427) (mask!29804 thiss!1427) (extraKeys!5823 thiss!1427) (zeroValue!5927 thiss!1427) (minValue!5927 thiss!1427) (bvsub (_size!2794 thiss!1427) #b00000000000000000000000000000001) lt!452292 lt!452290 (bvadd #b00000000000000000000000000000001 (_vacant!2794 thiss!1427)))) (tuple2!15615 Unit!33489 (LongMapFixedSize!5479 (defaultEntry!6091 thiss!1427) (mask!29804 thiss!1427) (extraKeys!5823 thiss!1427) (zeroValue!5927 thiss!1427) (minValue!5927 thiss!1427) (bvsub (_size!2794 thiss!1427) #b00000000000000000000000000000001) lt!452292 lt!452290 (_vacant!2794 thiss!1427)))))) #b00000000000001111111111111111111) (= (mask!29804 (_2!7817 (ite (bvsgt (bvadd #b00000000000000000000000000000001 (_vacant!2794 thiss!1427)) #b00000000000000000000000000000000) (tuple2!15615 Unit!33490 (LongMapFixedSize!5479 (defaultEntry!6091 thiss!1427) (mask!29804 thiss!1427) (extraKeys!5823 thiss!1427) (zeroValue!5927 thiss!1427) (minValue!5927 thiss!1427) (bvsub (_size!2794 thiss!1427) #b00000000000000000000000000000001) lt!452292 lt!452290 (bvadd #b00000000000000000000000000000001 (_vacant!2794 thiss!1427)))) (tuple2!15615 Unit!33491 (LongMapFixedSize!5479 (defaultEntry!6091 thiss!1427) (mask!29804 thiss!1427) (extraKeys!5823 thiss!1427) (zeroValue!5927 thiss!1427) (minValue!5927 thiss!1427) (bvsub (_size!2794 thiss!1427) #b00000000000000000000000000000001) lt!452292 lt!452290 (_vacant!2794 thiss!1427)))))) #b00000000000011111111111111111111) (= (mask!29804 (_2!7817 (ite (bvsgt (bvadd #b00000000000000000000000000000001 (_vacant!2794 thiss!1427)) #b00000000000000000000000000000000) (tuple2!15615 Unit!33492 (LongMapFixedSize!5479 (defaultEntry!6091 thiss!1427) (mask!29804 thiss!1427) (extraKeys!5823 thiss!1427) (zeroValue!5927 thiss!1427) (minValue!5927 thiss!1427) (bvsub (_size!2794 thiss!1427) #b00000000000000000000000000000001) lt!452292 lt!452290 (bvadd #b00000000000000000000000000000001 (_vacant!2794 thiss!1427)))) (tuple2!15615 Unit!33493 (LongMapFixedSize!5479 (defaultEntry!6091 thiss!1427) (mask!29804 thiss!1427) (extraKeys!5823 thiss!1427) (zeroValue!5927 thiss!1427) (minValue!5927 thiss!1427) (bvsub (_size!2794 thiss!1427) #b00000000000000000000000000000001) lt!452292 lt!452290 (_vacant!2794 thiss!1427)))))) #b00000000000111111111111111111111) (= (mask!29804 (_2!7817 (ite (bvsgt (bvadd #b00000000000000000000000000000001 (_vacant!2794 thiss!1427)) #b00000000000000000000000000000000) (tuple2!15615 Unit!33494 (LongMapFixedSize!5479 (defaultEntry!6091 thiss!1427) (mask!29804 thiss!1427) (extraKeys!5823 thiss!1427) (zeroValue!5927 thiss!1427) (minValue!5927 thiss!1427) (bvsub (_size!2794 thiss!1427) #b00000000000000000000000000000001) lt!452292 lt!452290 (bvadd #b00000000000000000000000000000001 (_vacant!2794 thiss!1427)))) (tuple2!15615 Unit!33495 (LongMapFixedSize!5479 (defaultEntry!6091 thiss!1427) (mask!29804 thiss!1427) (extraKeys!5823 thiss!1427) (zeroValue!5927 thiss!1427) (minValue!5927 thiss!1427) (bvsub (_size!2794 thiss!1427) #b00000000000000000000000000000001) lt!452292 lt!452290 (_vacant!2794 thiss!1427)))))) #b00000000001111111111111111111111) (= (mask!29804 (_2!7817 (ite (bvsgt (bvadd #b00000000000000000000000000000001 (_vacant!2794 thiss!1427)) #b00000000000000000000000000000000) (tuple2!15615 Unit!33496 (LongMapFixedSize!5479 (defaultEntry!6091 thiss!1427) (mask!29804 thiss!1427) (extraKeys!5823 thiss!1427) (zeroValue!5927 thiss!1427) (minValue!5927 thiss!1427) (bvsub (_size!2794 thiss!1427) #b00000000000000000000000000000001) lt!452292 lt!452290 (bvadd #b00000000000000000000000000000001 (_vacant!2794 thiss!1427)))) (tuple2!15615 Unit!33497 (LongMapFixedSize!5479 (defaultEntry!6091 thiss!1427) (mask!29804 thiss!1427) (extraKeys!5823 thiss!1427) (zeroValue!5927 thiss!1427) (minValue!5927 thiss!1427) (bvsub (_size!2794 thiss!1427) #b00000000000000000000000000000001) lt!452292 lt!452290 (_vacant!2794 thiss!1427)))))) #b00000000011111111111111111111111) (= (mask!29804 (_2!7817 (ite (bvsgt (bvadd #b00000000000000000000000000000001 (_vacant!2794 thiss!1427)) #b00000000000000000000000000000000) (tuple2!15615 Unit!33498 (LongMapFixedSize!5479 (defaultEntry!6091 thiss!1427) (mask!29804 thiss!1427) (extraKeys!5823 thiss!1427) (zeroValue!5927 thiss!1427) (minValue!5927 thiss!1427) (bvsub (_size!2794 thiss!1427) #b00000000000000000000000000000001) lt!452292 lt!452290 (bvadd #b00000000000000000000000000000001 (_vacant!2794 thiss!1427)))) (tuple2!15615 Unit!33499 (LongMapFixedSize!5479 (defaultEntry!6091 thiss!1427) (mask!29804 thiss!1427) (extraKeys!5823 thiss!1427) (zeroValue!5927 thiss!1427) (minValue!5927 thiss!1427) (bvsub (_size!2794 thiss!1427) #b00000000000000000000000000000001) lt!452292 lt!452290 (_vacant!2794 thiss!1427)))))) #b00000000111111111111111111111111) (= (mask!29804 (_2!7817 (ite (bvsgt (bvadd #b00000000000000000000000000000001 (_vacant!2794 thiss!1427)) #b00000000000000000000000000000000) (tuple2!15615 Unit!33500 (LongMapFixedSize!5479 (defaultEntry!6091 thiss!1427) (mask!29804 thiss!1427) (extraKeys!5823 thiss!1427) (zeroValue!5927 thiss!1427) (minValue!5927 thiss!1427) (bvsub (_size!2794 thiss!1427) #b00000000000000000000000000000001) lt!452292 lt!452290 (bvadd #b00000000000000000000000000000001 (_vacant!2794 thiss!1427)))) (tuple2!15615 Unit!33501 (LongMapFixedSize!5479 (defaultEntry!6091 thiss!1427) (mask!29804 thiss!1427) (extraKeys!5823 thiss!1427) (zeroValue!5927 thiss!1427) (minValue!5927 thiss!1427) (bvsub (_size!2794 thiss!1427) #b00000000000000000000000000000001) lt!452292 lt!452290 (_vacant!2794 thiss!1427)))))) #b00000001111111111111111111111111) (= (mask!29804 (_2!7817 (ite (bvsgt (bvadd #b00000000000000000000000000000001 (_vacant!2794 thiss!1427)) #b00000000000000000000000000000000) (tuple2!15615 Unit!33502 (LongMapFixedSize!5479 (defaultEntry!6091 thiss!1427) (mask!29804 thiss!1427) (extraKeys!5823 thiss!1427) (zeroValue!5927 thiss!1427) (minValue!5927 thiss!1427) (bvsub (_size!2794 thiss!1427) #b00000000000000000000000000000001) lt!452292 lt!452290 (bvadd #b00000000000000000000000000000001 (_vacant!2794 thiss!1427)))) (tuple2!15615 Unit!33503 (LongMapFixedSize!5479 (defaultEntry!6091 thiss!1427) (mask!29804 thiss!1427) (extraKeys!5823 thiss!1427) (zeroValue!5927 thiss!1427) (minValue!5927 thiss!1427) (bvsub (_size!2794 thiss!1427) #b00000000000000000000000000000001) lt!452292 lt!452290 (_vacant!2794 thiss!1427)))))) #b00000011111111111111111111111111) (= (mask!29804 (_2!7817 (ite (bvsgt (bvadd #b00000000000000000000000000000001 (_vacant!2794 thiss!1427)) #b00000000000000000000000000000000) (tuple2!15615 Unit!33504 (LongMapFixedSize!5479 (defaultEntry!6091 thiss!1427) (mask!29804 thiss!1427) (extraKeys!5823 thiss!1427) (zeroValue!5927 thiss!1427) (minValue!5927 thiss!1427) (bvsub (_size!2794 thiss!1427) #b00000000000000000000000000000001) lt!452292 lt!452290 (bvadd #b00000000000000000000000000000001 (_vacant!2794 thiss!1427)))) (tuple2!15615 Unit!33505 (LongMapFixedSize!5479 (defaultEntry!6091 thiss!1427) (mask!29804 thiss!1427) (extraKeys!5823 thiss!1427) (zeroValue!5927 thiss!1427) (minValue!5927 thiss!1427) (bvsub (_size!2794 thiss!1427) #b00000000000000000000000000000001) lt!452292 lt!452290 (_vacant!2794 thiss!1427)))))) #b00000111111111111111111111111111) (= (mask!29804 (_2!7817 (ite (bvsgt (bvadd #b00000000000000000000000000000001 (_vacant!2794 thiss!1427)) #b00000000000000000000000000000000) (tuple2!15615 Unit!33506 (LongMapFixedSize!5479 (defaultEntry!6091 thiss!1427) (mask!29804 thiss!1427) (extraKeys!5823 thiss!1427) (zeroValue!5927 thiss!1427) (minValue!5927 thiss!1427) (bvsub (_size!2794 thiss!1427) #b00000000000000000000000000000001) lt!452292 lt!452290 (bvadd #b00000000000000000000000000000001 (_vacant!2794 thiss!1427)))) (tuple2!15615 Unit!33507 (LongMapFixedSize!5479 (defaultEntry!6091 thiss!1427) (mask!29804 thiss!1427) (extraKeys!5823 thiss!1427) (zeroValue!5927 thiss!1427) (minValue!5927 thiss!1427) (bvsub (_size!2794 thiss!1427) #b00000000000000000000000000000001) lt!452292 lt!452290 (_vacant!2794 thiss!1427)))))) #b00001111111111111111111111111111) (= (mask!29804 (_2!7817 (ite (bvsgt (bvadd #b00000000000000000000000000000001 (_vacant!2794 thiss!1427)) #b00000000000000000000000000000000) (tuple2!15615 Unit!33508 (LongMapFixedSize!5479 (defaultEntry!6091 thiss!1427) (mask!29804 thiss!1427) (extraKeys!5823 thiss!1427) (zeroValue!5927 thiss!1427) (minValue!5927 thiss!1427) (bvsub (_size!2794 thiss!1427) #b00000000000000000000000000000001) lt!452292 lt!452290 (bvadd #b00000000000000000000000000000001 (_vacant!2794 thiss!1427)))) (tuple2!15615 Unit!33509 (LongMapFixedSize!5479 (defaultEntry!6091 thiss!1427) (mask!29804 thiss!1427) (extraKeys!5823 thiss!1427) (zeroValue!5927 thiss!1427) (minValue!5927 thiss!1427) (bvsub (_size!2794 thiss!1427) #b00000000000000000000000000000001) lt!452292 lt!452290 (_vacant!2794 thiss!1427)))))) #b00011111111111111111111111111111) (= (mask!29804 (_2!7817 (ite (bvsgt (bvadd #b00000000000000000000000000000001 (_vacant!2794 thiss!1427)) #b00000000000000000000000000000000) (tuple2!15615 Unit!33510 (LongMapFixedSize!5479 (defaultEntry!6091 thiss!1427) (mask!29804 thiss!1427) (extraKeys!5823 thiss!1427) (zeroValue!5927 thiss!1427) (minValue!5927 thiss!1427) (bvsub (_size!2794 thiss!1427) #b00000000000000000000000000000001) lt!452292 lt!452290 (bvadd #b00000000000000000000000000000001 (_vacant!2794 thiss!1427)))) (tuple2!15615 Unit!33511 (LongMapFixedSize!5479 (defaultEntry!6091 thiss!1427) (mask!29804 thiss!1427) (extraKeys!5823 thiss!1427) (zeroValue!5927 thiss!1427) (minValue!5927 thiss!1427) (bvsub (_size!2794 thiss!1427) #b00000000000000000000000000000001) lt!452292 lt!452290 (_vacant!2794 thiss!1427)))))) #b00111111111111111111111111111111)) (bvsle (mask!29804 (_2!7817 (ite (bvsgt (bvadd #b00000000000000000000000000000001 (_vacant!2794 thiss!1427)) #b00000000000000000000000000000000) (tuple2!15615 Unit!33512 (LongMapFixedSize!5479 (defaultEntry!6091 thiss!1427) (mask!29804 thiss!1427) (extraKeys!5823 thiss!1427) (zeroValue!5927 thiss!1427) (minValue!5927 thiss!1427) (bvsub (_size!2794 thiss!1427) #b00000000000000000000000000000001) lt!452292 lt!452290 (bvadd #b00000000000000000000000000000001 (_vacant!2794 thiss!1427)))) (tuple2!15615 Unit!33513 (LongMapFixedSize!5479 (defaultEntry!6091 thiss!1427) (mask!29804 thiss!1427) (extraKeys!5823 thiss!1427) (zeroValue!5927 thiss!1427) (minValue!5927 thiss!1427) (bvsub (_size!2794 thiss!1427) #b00000000000000000000000000000001) lt!452292 lt!452290 (_vacant!2794 thiss!1427)))))) #b00111111111111111111111111111111)))))

(assert (=> b!1027450 d!122679))

(declare-fun b!1027621 () Bool)

(declare-fun e!580026 () Bool)

(declare-fun contains!5981 (List!21916 (_ BitVec 64)) Bool)

(assert (=> b!1027621 (= e!580026 (contains!5981 Nil!21913 (select (arr!31113 lt!452292) #b00000000000000000000000000000000)))))

(declare-fun d!122681 () Bool)

(declare-fun res!687876 () Bool)

(declare-fun e!580027 () Bool)

(assert (=> d!122681 (=> res!687876 e!580027)))

(assert (=> d!122681 (= res!687876 (bvsge #b00000000000000000000000000000000 (size!31627 lt!452292)))))

(assert (=> d!122681 (= (arrayNoDuplicates!0 lt!452292 #b00000000000000000000000000000000 Nil!21913) e!580027)))

(declare-fun b!1027622 () Bool)

(declare-fun e!580029 () Bool)

(declare-fun call!43274 () Bool)

(assert (=> b!1027622 (= e!580029 call!43274)))

(declare-fun b!1027623 () Bool)

(assert (=> b!1027623 (= e!580029 call!43274)))

(declare-fun b!1027624 () Bool)

(declare-fun e!580028 () Bool)

(assert (=> b!1027624 (= e!580027 e!580028)))

(declare-fun res!687874 () Bool)

(assert (=> b!1027624 (=> (not res!687874) (not e!580028))))

(assert (=> b!1027624 (= res!687874 (not e!580026))))

(declare-fun res!687875 () Bool)

(assert (=> b!1027624 (=> (not res!687875) (not e!580026))))

(assert (=> b!1027624 (= res!687875 (validKeyInArray!0 (select (arr!31113 lt!452292) #b00000000000000000000000000000000)))))

(declare-fun b!1027625 () Bool)

(assert (=> b!1027625 (= e!580028 e!580029)))

(declare-fun c!103554 () Bool)

(assert (=> b!1027625 (= c!103554 (validKeyInArray!0 (select (arr!31113 lt!452292) #b00000000000000000000000000000000)))))

(declare-fun bm!43271 () Bool)

(assert (=> bm!43271 (= call!43274 (arrayNoDuplicates!0 lt!452292 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (ite c!103554 (Cons!21912 (select (arr!31113 lt!452292) #b00000000000000000000000000000000) Nil!21913) Nil!21913)))))

(assert (= (and d!122681 (not res!687876)) b!1027624))

(assert (= (and b!1027624 res!687875) b!1027621))

(assert (= (and b!1027624 res!687874) b!1027625))

(assert (= (and b!1027625 c!103554) b!1027623))

(assert (= (and b!1027625 (not c!103554)) b!1027622))

(assert (= (or b!1027623 b!1027622) bm!43271))

(assert (=> b!1027621 m!946189))

(assert (=> b!1027621 m!946189))

(declare-fun m!946325 () Bool)

(assert (=> b!1027621 m!946325))

(assert (=> b!1027624 m!946189))

(assert (=> b!1027624 m!946189))

(assert (=> b!1027624 m!946251))

(assert (=> b!1027625 m!946189))

(assert (=> b!1027625 m!946189))

(assert (=> b!1027625 m!946251))

(assert (=> bm!43271 m!946189))

(declare-fun m!946327 () Bool)

(assert (=> bm!43271 m!946327))

(assert (=> b!1027450 d!122681))

(declare-fun d!122683 () Bool)

(declare-fun lt!452435 () (_ BitVec 32))

(assert (=> d!122683 (and (bvsge lt!452435 #b00000000000000000000000000000000) (bvsle lt!452435 (bvsub (size!31627 (_keys!11235 thiss!1427)) #b00000000000000000000000000000000)))))

(declare-fun e!580034 () (_ BitVec 32))

(assert (=> d!122683 (= lt!452435 e!580034)))

(declare-fun c!103559 () Bool)

(assert (=> d!122683 (= c!103559 (bvsge #b00000000000000000000000000000000 (size!31627 (_keys!11235 thiss!1427))))))

(assert (=> d!122683 (and (bvsle #b00000000000000000000000000000000 (size!31627 (_keys!11235 thiss!1427))) (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvsle (size!31627 (_keys!11235 thiss!1427)) (size!31627 (_keys!11235 thiss!1427))))))

(assert (=> d!122683 (= (arrayCountValidKeys!0 (_keys!11235 thiss!1427) #b00000000000000000000000000000000 (size!31627 (_keys!11235 thiss!1427))) lt!452435)))

(declare-fun b!1027634 () Bool)

(declare-fun e!580035 () (_ BitVec 32))

(declare-fun call!43277 () (_ BitVec 32))

(assert (=> b!1027634 (= e!580035 (bvadd #b00000000000000000000000000000001 call!43277))))

(declare-fun b!1027635 () Bool)

(assert (=> b!1027635 (= e!580034 e!580035)))

(declare-fun c!103560 () Bool)

(assert (=> b!1027635 (= c!103560 (validKeyInArray!0 (select (arr!31113 (_keys!11235 thiss!1427)) #b00000000000000000000000000000000)))))

(declare-fun b!1027636 () Bool)

(assert (=> b!1027636 (= e!580034 #b00000000000000000000000000000000)))

(declare-fun bm!43274 () Bool)

(assert (=> bm!43274 (= call!43277 (arrayCountValidKeys!0 (_keys!11235 thiss!1427) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!31627 (_keys!11235 thiss!1427))))))

(declare-fun b!1027637 () Bool)

(assert (=> b!1027637 (= e!580035 call!43277)))

(assert (= (and d!122683 c!103559) b!1027636))

(assert (= (and d!122683 (not c!103559)) b!1027635))

(assert (= (and b!1027635 c!103560) b!1027634))

(assert (= (and b!1027635 (not c!103560)) b!1027637))

(assert (= (or b!1027634 b!1027637) bm!43274))

(assert (=> b!1027635 m!946195))

(assert (=> b!1027635 m!946195))

(assert (=> b!1027635 m!946197))

(declare-fun m!946329 () Bool)

(assert (=> bm!43274 m!946329))

(assert (=> b!1027450 d!122683))

(declare-fun d!122685 () Bool)

(declare-fun e!580038 () Bool)

(assert (=> d!122685 e!580038))

(declare-fun res!687879 () Bool)

(assert (=> d!122685 (=> (not res!687879) (not e!580038))))

(assert (=> d!122685 (= res!687879 (and (bvsge (index!41015 lt!452296) #b00000000000000000000000000000000) (bvslt (index!41015 lt!452296) (size!31627 (_keys!11235 thiss!1427)))))))

(declare-fun lt!452438 () Unit!33448)

(declare-fun choose!53 (array!64616 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) List!21916) Unit!33448)

(assert (=> d!122685 (= lt!452438 (choose!53 (_keys!11235 thiss!1427) #b1000000000000000000000000000000000000000000000000000000000000000 (index!41015 lt!452296) #b00000000000000000000000000000000 Nil!21913))))

(assert (=> d!122685 (bvslt (size!31627 (_keys!11235 thiss!1427)) #b01111111111111111111111111111111)))

(assert (=> d!122685 (= (lemmaPutNonValidKeyPreservesNoDuplicate!0 (_keys!11235 thiss!1427) #b1000000000000000000000000000000000000000000000000000000000000000 (index!41015 lt!452296) #b00000000000000000000000000000000 Nil!21913) lt!452438)))

(declare-fun b!1027640 () Bool)

(assert (=> b!1027640 (= e!580038 (arrayNoDuplicates!0 (array!64617 (store (arr!31113 (_keys!11235 thiss!1427)) (index!41015 lt!452296) #b1000000000000000000000000000000000000000000000000000000000000000) (size!31627 (_keys!11235 thiss!1427))) #b00000000000000000000000000000000 Nil!21913))))

(assert (= (and d!122685 res!687879) b!1027640))

(declare-fun m!946331 () Bool)

(assert (=> d!122685 m!946331))

(assert (=> b!1027640 m!946093))

(declare-fun m!946333 () Bool)

(assert (=> b!1027640 m!946333))

(assert (=> b!1027450 d!122685))

(declare-fun d!122687 () Bool)

(declare-fun e!580041 () Bool)

(assert (=> d!122687 e!580041))

(declare-fun res!687882 () Bool)

(assert (=> d!122687 (=> (not res!687882) (not e!580041))))

(assert (=> d!122687 (= res!687882 (and (bvsge (index!41015 lt!452296) #b00000000000000000000000000000000) (bvslt (index!41015 lt!452296) (size!31627 (_keys!11235 thiss!1427)))))))

(declare-fun lt!452441 () Unit!33448)

(declare-fun choose!25 (array!64616 (_ BitVec 32) (_ BitVec 32)) Unit!33448)

(assert (=> d!122687 (= lt!452441 (choose!25 (_keys!11235 thiss!1427) (index!41015 lt!452296) (mask!29804 thiss!1427)))))

(assert (=> d!122687 (validMask!0 (mask!29804 thiss!1427))))

(assert (=> d!122687 (= (lemmaPutLongMinValuePreservesForallSeekEntryOrOpen!0 (_keys!11235 thiss!1427) (index!41015 lt!452296) (mask!29804 thiss!1427)) lt!452441)))

(declare-fun b!1027643 () Bool)

(assert (=> b!1027643 (= e!580041 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 (array!64617 (store (arr!31113 (_keys!11235 thiss!1427)) (index!41015 lt!452296) #b1000000000000000000000000000000000000000000000000000000000000000) (size!31627 (_keys!11235 thiss!1427))) (mask!29804 thiss!1427)))))

(assert (= (and d!122687 res!687882) b!1027643))

(declare-fun m!946335 () Bool)

(assert (=> d!122687 m!946335))

(assert (=> d!122687 m!946181))

(assert (=> b!1027643 m!946093))

(declare-fun m!946337 () Bool)

(assert (=> b!1027643 m!946337))

(assert (=> b!1027450 d!122687))

(declare-fun b!1027652 () Bool)

(declare-fun e!580048 () Bool)

(declare-fun call!43280 () Bool)

(assert (=> b!1027652 (= e!580048 call!43280)))

(declare-fun b!1027653 () Bool)

(declare-fun e!580050 () Bool)

(assert (=> b!1027653 (= e!580050 call!43280)))

(declare-fun b!1027654 () Bool)

(declare-fun e!580049 () Bool)

(assert (=> b!1027654 (= e!580049 e!580050)))

(declare-fun c!103563 () Bool)

(assert (=> b!1027654 (= c!103563 (validKeyInArray!0 (select (arr!31113 lt!452292) #b00000000000000000000000000000000)))))

(declare-fun bm!43277 () Bool)

(assert (=> bm!43277 (= call!43280 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) lt!452292 (mask!29804 thiss!1427)))))

(declare-fun d!122689 () Bool)

(declare-fun res!687888 () Bool)

(assert (=> d!122689 (=> res!687888 e!580049)))

(assert (=> d!122689 (= res!687888 (bvsge #b00000000000000000000000000000000 (size!31627 lt!452292)))))

(assert (=> d!122689 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!452292 (mask!29804 thiss!1427)) e!580049)))

(declare-fun b!1027655 () Bool)

(assert (=> b!1027655 (= e!580050 e!580048)))

(declare-fun lt!452449 () (_ BitVec 64))

(assert (=> b!1027655 (= lt!452449 (select (arr!31113 lt!452292) #b00000000000000000000000000000000))))

(declare-fun lt!452450 () Unit!33448)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!64616 (_ BitVec 64) (_ BitVec 32)) Unit!33448)

(assert (=> b!1027655 (= lt!452450 (lemmaArrayContainsFromImpliesContainsFromZero!0 lt!452292 lt!452449 #b00000000000000000000000000000000))))

(assert (=> b!1027655 (arrayContainsKey!0 lt!452292 lt!452449 #b00000000000000000000000000000000)))

(declare-fun lt!452448 () Unit!33448)

(assert (=> b!1027655 (= lt!452448 lt!452450)))

(declare-fun res!687887 () Bool)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!64616 (_ BitVec 32)) SeekEntryResult!9661)

(assert (=> b!1027655 (= res!687887 (= (seekEntryOrOpen!0 (select (arr!31113 lt!452292) #b00000000000000000000000000000000) lt!452292 (mask!29804 thiss!1427)) (Found!9661 #b00000000000000000000000000000000)))))

(assert (=> b!1027655 (=> (not res!687887) (not e!580048))))

(assert (= (and d!122689 (not res!687888)) b!1027654))

(assert (= (and b!1027654 c!103563) b!1027655))

(assert (= (and b!1027654 (not c!103563)) b!1027653))

(assert (= (and b!1027655 res!687887) b!1027652))

(assert (= (or b!1027652 b!1027653) bm!43277))

(assert (=> b!1027654 m!946189))

(assert (=> b!1027654 m!946189))

(assert (=> b!1027654 m!946251))

(declare-fun m!946339 () Bool)

(assert (=> bm!43277 m!946339))

(assert (=> b!1027655 m!946189))

(declare-fun m!946341 () Bool)

(assert (=> b!1027655 m!946341))

(declare-fun m!946343 () Bool)

(assert (=> b!1027655 m!946343))

(assert (=> b!1027655 m!946189))

(declare-fun m!946345 () Bool)

(assert (=> b!1027655 m!946345))

(assert (=> b!1027450 d!122689))

(declare-fun d!122691 () Bool)

(declare-fun lt!452451 () (_ BitVec 32))

(assert (=> d!122691 (and (bvsge lt!452451 #b00000000000000000000000000000000) (bvsle lt!452451 (bvsub (size!31627 lt!452292) #b00000000000000000000000000000000)))))

(declare-fun e!580051 () (_ BitVec 32))

(assert (=> d!122691 (= lt!452451 e!580051)))

(declare-fun c!103564 () Bool)

(assert (=> d!122691 (= c!103564 (bvsge #b00000000000000000000000000000000 (size!31627 (_keys!11235 thiss!1427))))))

(assert (=> d!122691 (and (bvsle #b00000000000000000000000000000000 (size!31627 (_keys!11235 thiss!1427))) (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvsle (size!31627 (_keys!11235 thiss!1427)) (size!31627 lt!452292)))))

(assert (=> d!122691 (= (arrayCountValidKeys!0 lt!452292 #b00000000000000000000000000000000 (size!31627 (_keys!11235 thiss!1427))) lt!452451)))

(declare-fun b!1027656 () Bool)

(declare-fun e!580052 () (_ BitVec 32))

(declare-fun call!43281 () (_ BitVec 32))

(assert (=> b!1027656 (= e!580052 (bvadd #b00000000000000000000000000000001 call!43281))))

(declare-fun b!1027657 () Bool)

(assert (=> b!1027657 (= e!580051 e!580052)))

(declare-fun c!103565 () Bool)

(assert (=> b!1027657 (= c!103565 (validKeyInArray!0 (select (arr!31113 lt!452292) #b00000000000000000000000000000000)))))

(declare-fun b!1027658 () Bool)

(assert (=> b!1027658 (= e!580051 #b00000000000000000000000000000000)))

(declare-fun bm!43278 () Bool)

(assert (=> bm!43278 (= call!43281 (arrayCountValidKeys!0 lt!452292 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!31627 (_keys!11235 thiss!1427))))))

(declare-fun b!1027659 () Bool)

(assert (=> b!1027659 (= e!580052 call!43281)))

(assert (= (and d!122691 c!103564) b!1027658))

(assert (= (and d!122691 (not c!103564)) b!1027657))

(assert (= (and b!1027657 c!103565) b!1027656))

(assert (= (and b!1027657 (not c!103565)) b!1027659))

(assert (= (or b!1027656 b!1027659) bm!43278))

(assert (=> b!1027657 m!946189))

(assert (=> b!1027657 m!946189))

(assert (=> b!1027657 m!946251))

(declare-fun m!946347 () Bool)

(assert (=> bm!43278 m!946347))

(assert (=> b!1027450 d!122691))

(declare-fun d!122693 () Bool)

(assert (=> d!122693 (= (array_inv!23937 (_keys!11235 thiss!1427)) (bvsge (size!31627 (_keys!11235 thiss!1427)) #b00000000000000000000000000000000))))

(assert (=> b!1027444 d!122693))

(declare-fun d!122695 () Bool)

(assert (=> d!122695 (= (array_inv!23938 (_values!6114 thiss!1427)) (bvsge (size!31628 (_values!6114 thiss!1427)) #b00000000000000000000000000000000))))

(assert (=> b!1027444 d!122695))

(declare-fun mapNonEmpty!37871 () Bool)

(declare-fun mapRes!37871 () Bool)

(declare-fun tp!72769 () Bool)

(declare-fun e!580058 () Bool)

(assert (=> mapNonEmpty!37871 (= mapRes!37871 (and tp!72769 e!580058))))

(declare-fun mapKey!37871 () (_ BitVec 32))

(declare-fun mapValue!37871 () ValueCell!11442)

(declare-fun mapRest!37871 () (Array (_ BitVec 32) ValueCell!11442))

(assert (=> mapNonEmpty!37871 (= mapRest!37865 (store mapRest!37871 mapKey!37871 mapValue!37871))))

(declare-fun mapIsEmpty!37871 () Bool)

(assert (=> mapIsEmpty!37871 mapRes!37871))

(declare-fun b!1027667 () Bool)

(declare-fun e!580057 () Bool)

(assert (=> b!1027667 (= e!580057 tp_is_empty!24291)))

(declare-fun b!1027666 () Bool)

(assert (=> b!1027666 (= e!580058 tp_is_empty!24291)))

(declare-fun condMapEmpty!37871 () Bool)

(declare-fun mapDefault!37871 () ValueCell!11442)

(assert (=> mapNonEmpty!37865 (= condMapEmpty!37871 (= mapRest!37865 ((as const (Array (_ BitVec 32) ValueCell!11442)) mapDefault!37871)))))

(assert (=> mapNonEmpty!37865 (= tp!72760 (and e!580057 mapRes!37871))))

(assert (= (and mapNonEmpty!37865 condMapEmpty!37871) mapIsEmpty!37871))

(assert (= (and mapNonEmpty!37865 (not condMapEmpty!37871)) mapNonEmpty!37871))

(assert (= (and mapNonEmpty!37871 ((_ is ValueCellFull!11442) mapValue!37871)) b!1027666))

(assert (= (and mapNonEmpty!37865 ((_ is ValueCellFull!11442) mapDefault!37871)) b!1027667))

(declare-fun m!946349 () Bool)

(assert (=> mapNonEmpty!37871 m!946349))

(declare-fun b_lambda!15763 () Bool)

(assert (= b_lambda!15759 (or (and b!1027444 b_free!20571) b_lambda!15763)))

(declare-fun b_lambda!15765 () Bool)

(assert (= b_lambda!15761 (or (and b!1027444 b_free!20571) b_lambda!15765)))

(declare-fun b_lambda!15767 () Bool)

(assert (= b_lambda!15757 (or (and b!1027444 b_free!20571) b_lambda!15767)))

(check-sat (not d!122675) (not d!122687) (not b!1027621) (not b!1027501) (not b!1027654) (not b!1027508) (not b!1027577) (not d!122667) (not b_lambda!15765) (not b!1027602) (not bm!43262) (not bm!43267) (not bm!43266) (not b!1027500) (not b!1027558) (not bm!43256) (not b!1027566) (not b!1027560) (not bm!43274) (not b!1027610) (not b!1027579) (not b!1027552) (not mapNonEmpty!37871) (not b!1027556) (not b!1027607) (not b!1027624) (not b!1027502) (not b_lambda!15767) (not b_lambda!15763) (not b_next!20571) (not b!1027604) (not b!1027588) (not b!1027657) (not bm!43277) (not b!1027580) (not b!1027581) (not b!1027635) (not b!1027567) (not b!1027490) (not b!1027555) (not bm!43278) (not b!1027576) (not d!122671) b_and!32849 (not b!1027643) (not d!122685) (not b!1027625) (not bm!43260) (not d!122677) (not b!1027559) (not bm!43263) (not bm!43271) (not bm!43259) (not b!1027640) (not d!122663) tp_is_empty!24291 (not b!1027573) (not b!1027587) (not b_lambda!15755) (not d!122669) (not b!1027601) (not d!122661) (not b!1027655) (not d!122673) (not bm!43255))
(check-sat b_and!32849 (not b_next!20571))
