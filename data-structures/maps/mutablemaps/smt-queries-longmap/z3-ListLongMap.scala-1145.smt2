; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!23804 () Bool)

(assert start!23804)

(declare-fun b!249715 () Bool)

(declare-fun b_free!6621 () Bool)

(declare-fun b_next!6621 () Bool)

(assert (=> b!249715 (= b_free!6621 (not b_next!6621))))

(declare-fun tp!23124 () Bool)

(declare-fun b_and!13653 () Bool)

(assert (=> b!249715 (= tp!23124 b_and!13653)))

(declare-fun b!249696 () Bool)

(declare-fun e!161964 () Bool)

(declare-fun e!161965 () Bool)

(assert (=> b!249696 (= e!161964 e!161965)))

(declare-fun res!122334 () Bool)

(assert (=> b!249696 (=> (not res!122334) (not e!161965))))

(declare-fun index!297 () (_ BitVec 32))

(declare-datatypes ((V!8291 0))(
  ( (V!8292 (val!3286 Int)) )
))
(declare-datatypes ((ValueCell!2898 0))(
  ( (ValueCellFull!2898 (v!5345 V!8291)) (EmptyCell!2898) )
))
(declare-datatypes ((array!12280 0))(
  ( (array!12281 (arr!5823 (Array (_ BitVec 32) ValueCell!2898)) (size!6167 (_ BitVec 32))) )
))
(declare-datatypes ((array!12282 0))(
  ( (array!12283 (arr!5824 (Array (_ BitVec 32) (_ BitVec 64))) (size!6168 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!3696 0))(
  ( (LongMapFixedSize!3697 (defaultEntry!4617 Int) (mask!10789 (_ BitVec 32)) (extraKeys!4354 (_ BitVec 32)) (zeroValue!4458 V!8291) (minValue!4458 V!8291) (_size!1897 (_ BitVec 32)) (_keys!6749 array!12282) (_values!4600 array!12280) (_vacant!1897 (_ BitVec 32))) )
))
(declare-fun thiss!1504 () LongMapFixedSize!3696)

(declare-fun inRange!0 ((_ BitVec 32) (_ BitVec 32)) Bool)

(assert (=> b!249696 (= res!122334 (inRange!0 index!297 (mask!10789 thiss!1504)))))

(declare-datatypes ((Unit!7731 0))(
  ( (Unit!7732) )
))
(declare-fun lt!125124 () Unit!7731)

(declare-fun e!161966 () Unit!7731)

(assert (=> b!249696 (= lt!125124 e!161966)))

(declare-fun c!41899 () Bool)

(declare-fun key!932 () (_ BitVec 64))

(declare-datatypes ((tuple2!4834 0))(
  ( (tuple2!4835 (_1!2427 (_ BitVec 64)) (_2!2427 V!8291)) )
))
(declare-datatypes ((List!3739 0))(
  ( (Nil!3736) (Cons!3735 (h!4394 tuple2!4834) (t!8778 List!3739)) )
))
(declare-datatypes ((ListLongMap!3761 0))(
  ( (ListLongMap!3762 (toList!1896 List!3739)) )
))
(declare-fun contains!1809 (ListLongMap!3761 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!1419 (array!12282 array!12280 (_ BitVec 32) (_ BitVec 32) V!8291 V!8291 (_ BitVec 32) Int) ListLongMap!3761)

(assert (=> b!249696 (= c!41899 (contains!1809 (getCurrentListMap!1419 (_keys!6749 thiss!1504) (_values!4600 thiss!1504) (mask!10789 thiss!1504) (extraKeys!4354 thiss!1504) (zeroValue!4458 thiss!1504) (minValue!4458 thiss!1504) #b00000000000000000000000000000000 (defaultEntry!4617 thiss!1504)) key!932))))

(declare-fun b!249697 () Bool)

(declare-fun e!161962 () Bool)

(assert (=> b!249697 (= e!161962 e!161964)))

(declare-fun res!122338 () Bool)

(assert (=> b!249697 (=> (not res!122338) (not e!161964))))

(declare-datatypes ((SeekEntryResult!1129 0))(
  ( (MissingZero!1129 (index!6686 (_ BitVec 32))) (Found!1129 (index!6687 (_ BitVec 32))) (Intermediate!1129 (undefined!1941 Bool) (index!6688 (_ BitVec 32)) (x!24653 (_ BitVec 32))) (Undefined!1129) (MissingVacant!1129 (index!6689 (_ BitVec 32))) )
))
(declare-fun lt!125128 () SeekEntryResult!1129)

(assert (=> b!249697 (= res!122338 (or (= lt!125128 (MissingZero!1129 index!297)) (= lt!125128 (MissingVacant!1129 index!297))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!12282 (_ BitVec 32)) SeekEntryResult!1129)

(assert (=> b!249697 (= lt!125128 (seekEntryOrOpen!0 key!932 (_keys!6749 thiss!1504) (mask!10789 thiss!1504)))))

(declare-fun b!249698 () Bool)

(declare-fun e!161959 () Bool)

(declare-fun tp_is_empty!6483 () Bool)

(assert (=> b!249698 (= e!161959 tp_is_empty!6483)))

(declare-fun b!249699 () Bool)

(declare-fun res!122341 () Bool)

(assert (=> b!249699 (=> (not res!122341) (not e!161962))))

(assert (=> b!249699 (= res!122341 (and (not (= key!932 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= key!932 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun res!122336 () Bool)

(assert (=> start!23804 (=> (not res!122336) (not e!161962))))

(declare-fun valid!1438 (LongMapFixedSize!3696) Bool)

(assert (=> start!23804 (= res!122336 (valid!1438 thiss!1504))))

(assert (=> start!23804 e!161962))

(declare-fun e!161969 () Bool)

(assert (=> start!23804 e!161969))

(assert (=> start!23804 true))

(declare-fun b!249700 () Bool)

(declare-fun e!161972 () Bool)

(assert (=> b!249700 (= e!161965 (not e!161972))))

(declare-fun res!122340 () Bool)

(assert (=> b!249700 (=> res!122340 e!161972)))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!249700 (= res!122340 (not (validMask!0 (mask!10789 thiss!1504))))))

(declare-fun lt!125125 () array!12282)

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!12282 (_ BitVec 32)) Bool)

(assert (=> b!249700 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!125125 (mask!10789 thiss!1504))))

(declare-fun lt!125127 () Unit!7731)

(declare-fun lemmaPutValidKeyPreservesForallSeekEntryOrOpen!0 ((_ BitVec 64) array!12282 (_ BitVec 32) (_ BitVec 32)) Unit!7731)

(assert (=> b!249700 (= lt!125127 (lemmaPutValidKeyPreservesForallSeekEntryOrOpen!0 key!932 (_keys!6749 thiss!1504) index!297 (mask!10789 thiss!1504)))))

(declare-fun arrayCountValidKeys!0 (array!12282 (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!249700 (= (arrayCountValidKeys!0 lt!125125 #b00000000000000000000000000000000 (size!6168 (_keys!6749 thiss!1504))) (bvadd #b00000000000000000000000000000001 (arrayCountValidKeys!0 (_keys!6749 thiss!1504) #b00000000000000000000000000000000 (size!6168 (_keys!6749 thiss!1504)))))))

(declare-fun lt!125119 () Unit!7731)

(declare-fun lemmaAddValidKeyIncreasesNumberOfValidKeysInArray!0 (array!12282 (_ BitVec 32) (_ BitVec 64)) Unit!7731)

(assert (=> b!249700 (= lt!125119 (lemmaAddValidKeyIncreasesNumberOfValidKeysInArray!0 (_keys!6749 thiss!1504) index!297 key!932))))

(declare-datatypes ((List!3740 0))(
  ( (Nil!3737) (Cons!3736 (h!4395 (_ BitVec 64)) (t!8779 List!3740)) )
))
(declare-fun arrayNoDuplicates!0 (array!12282 (_ BitVec 32) List!3740) Bool)

(assert (=> b!249700 (arrayNoDuplicates!0 lt!125125 #b00000000000000000000000000000000 Nil!3737)))

(assert (=> b!249700 (= lt!125125 (array!12283 (store (arr!5824 (_keys!6749 thiss!1504)) index!297 key!932) (size!6168 (_keys!6749 thiss!1504))))))

(declare-fun lt!125120 () Unit!7731)

(declare-fun lemmaPutNewValidKeyPreservesNoDuplicate!0 (array!12282 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) List!3740) Unit!7731)

(assert (=> b!249700 (= lt!125120 (lemmaPutNewValidKeyPreservesNoDuplicate!0 (_keys!6749 thiss!1504) key!932 index!297 #b00000000000000000000000000000000 Nil!3737))))

(declare-fun lt!125121 () Unit!7731)

(declare-fun e!161968 () Unit!7731)

(assert (=> b!249700 (= lt!125121 e!161968)))

(declare-fun c!41898 () Bool)

(declare-fun arrayContainsKey!0 (array!12282 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!249700 (= c!41898 (arrayContainsKey!0 (_keys!6749 thiss!1504) key!932 #b00000000000000000000000000000000))))

(declare-fun b!249701 () Bool)

(declare-fun e!161967 () Bool)

(declare-fun call!23450 () Bool)

(assert (=> b!249701 (= e!161967 (not call!23450))))

(declare-fun call!23449 () Bool)

(declare-fun bm!23446 () Bool)

(declare-fun c!41900 () Bool)

(assert (=> bm!23446 (= call!23449 (inRange!0 (ite c!41900 (index!6686 lt!125128) (index!6689 lt!125128)) (mask!10789 thiss!1504)))))

(declare-fun b!249702 () Bool)

(declare-fun e!161971 () Bool)

(assert (=> b!249702 (= e!161971 tp_is_empty!6483)))

(declare-fun mapIsEmpty!11013 () Bool)

(declare-fun mapRes!11013 () Bool)

(assert (=> mapIsEmpty!11013 mapRes!11013))

(declare-fun b!249703 () Bool)

(declare-fun lt!125122 () Unit!7731)

(assert (=> b!249703 (= e!161966 lt!125122)))

(declare-fun lemmaNotInListMapThenSeekEntryOrOpenFindsFreeOrNothing!396 (array!12282 array!12280 (_ BitVec 32) (_ BitVec 32) V!8291 V!8291 (_ BitVec 64) Int) Unit!7731)

(assert (=> b!249703 (= lt!125122 (lemmaNotInListMapThenSeekEntryOrOpenFindsFreeOrNothing!396 (_keys!6749 thiss!1504) (_values!4600 thiss!1504) (mask!10789 thiss!1504) (extraKeys!4354 thiss!1504) (zeroValue!4458 thiss!1504) (minValue!4458 thiss!1504) key!932 (defaultEntry!4617 thiss!1504)))))

(get-info :version)

(assert (=> b!249703 (= c!41900 ((_ is MissingZero!1129) lt!125128))))

(declare-fun e!161958 () Bool)

(assert (=> b!249703 e!161958))

(declare-fun b!249704 () Bool)

(assert (=> b!249704 (= e!161972 (or (not (= (size!6167 (_values!4600 thiss!1504)) (bvadd #b00000000000000000000000000000001 (mask!10789 thiss!1504)))) (= (size!6168 (_keys!6749 thiss!1504)) (size!6167 (_values!4600 thiss!1504)))))))

(declare-fun b!249705 () Bool)

(declare-fun c!41897 () Bool)

(assert (=> b!249705 (= c!41897 ((_ is MissingVacant!1129) lt!125128))))

(declare-fun e!161960 () Bool)

(assert (=> b!249705 (= e!161958 e!161960)))

(declare-fun b!249706 () Bool)

(declare-fun res!122337 () Bool)

(assert (=> b!249706 (= res!122337 (= (select (arr!5824 (_keys!6749 thiss!1504)) (index!6689 lt!125128)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!161961 () Bool)

(assert (=> b!249706 (=> (not res!122337) (not e!161961))))

(declare-fun b!249707 () Bool)

(declare-fun Unit!7733 () Unit!7731)

(assert (=> b!249707 (= e!161968 Unit!7733)))

(declare-fun b!249708 () Bool)

(declare-fun res!122339 () Bool)

(assert (=> b!249708 (=> (not res!122339) (not e!161967))))

(assert (=> b!249708 (= res!122339 call!23449)))

(assert (=> b!249708 (= e!161958 e!161967)))

(declare-fun b!249709 () Bool)

(assert (=> b!249709 (= e!161961 (not call!23450))))

(declare-fun b!249710 () Bool)

(declare-fun Unit!7734 () Unit!7731)

(assert (=> b!249710 (= e!161966 Unit!7734)))

(declare-fun lt!125126 () Unit!7731)

(declare-fun lemmaInListMapThenSeekEntryOrOpenFindsIt!397 (array!12282 array!12280 (_ BitVec 32) (_ BitVec 32) V!8291 V!8291 (_ BitVec 64) Int) Unit!7731)

(assert (=> b!249710 (= lt!125126 (lemmaInListMapThenSeekEntryOrOpenFindsIt!397 (_keys!6749 thiss!1504) (_values!4600 thiss!1504) (mask!10789 thiss!1504) (extraKeys!4354 thiss!1504) (zeroValue!4458 thiss!1504) (minValue!4458 thiss!1504) key!932 (defaultEntry!4617 thiss!1504)))))

(assert (=> b!249710 false))

(declare-fun b!249711 () Bool)

(declare-fun res!122335 () Bool)

(assert (=> b!249711 (=> (not res!122335) (not e!161967))))

(assert (=> b!249711 (= res!122335 (= (select (arr!5824 (_keys!6749 thiss!1504)) (index!6686 lt!125128)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!249712 () Bool)

(assert (=> b!249712 (= e!161960 ((_ is Undefined!1129) lt!125128))))

(declare-fun bm!23447 () Bool)

(assert (=> bm!23447 (= call!23450 (arrayContainsKey!0 (_keys!6749 thiss!1504) key!932 #b00000000000000000000000000000000))))

(declare-fun b!249713 () Bool)

(declare-fun Unit!7735 () Unit!7731)

(assert (=> b!249713 (= e!161968 Unit!7735)))

(declare-fun lt!125123 () Unit!7731)

(declare-fun lemmaArrayContainsKeyThenInListMap!199 (array!12282 array!12280 (_ BitVec 32) (_ BitVec 32) V!8291 V!8291 (_ BitVec 64) (_ BitVec 32) Int) Unit!7731)

(assert (=> b!249713 (= lt!125123 (lemmaArrayContainsKeyThenInListMap!199 (_keys!6749 thiss!1504) (_values!4600 thiss!1504) (mask!10789 thiss!1504) (extraKeys!4354 thiss!1504) (zeroValue!4458 thiss!1504) (minValue!4458 thiss!1504) key!932 #b00000000000000000000000000000000 (defaultEntry!4617 thiss!1504)))))

(assert (=> b!249713 false))

(declare-fun mapNonEmpty!11013 () Bool)

(declare-fun tp!23123 () Bool)

(assert (=> mapNonEmpty!11013 (= mapRes!11013 (and tp!23123 e!161959))))

(declare-fun mapKey!11013 () (_ BitVec 32))

(declare-fun mapRest!11013 () (Array (_ BitVec 32) ValueCell!2898))

(declare-fun mapValue!11013 () ValueCell!2898)

(assert (=> mapNonEmpty!11013 (= (arr!5823 (_values!4600 thiss!1504)) (store mapRest!11013 mapKey!11013 mapValue!11013))))

(declare-fun b!249714 () Bool)

(assert (=> b!249714 (= e!161960 e!161961)))

(declare-fun res!122333 () Bool)

(assert (=> b!249714 (= res!122333 call!23449)))

(assert (=> b!249714 (=> (not res!122333) (not e!161961))))

(declare-fun e!161963 () Bool)

(declare-fun array_inv!3835 (array!12282) Bool)

(declare-fun array_inv!3836 (array!12280) Bool)

(assert (=> b!249715 (= e!161969 (and tp!23124 tp_is_empty!6483 (array_inv!3835 (_keys!6749 thiss!1504)) (array_inv!3836 (_values!4600 thiss!1504)) e!161963))))

(declare-fun b!249716 () Bool)

(assert (=> b!249716 (= e!161963 (and e!161971 mapRes!11013))))

(declare-fun condMapEmpty!11013 () Bool)

(declare-fun mapDefault!11013 () ValueCell!2898)

(assert (=> b!249716 (= condMapEmpty!11013 (= (arr!5823 (_values!4600 thiss!1504)) ((as const (Array (_ BitVec 32) ValueCell!2898)) mapDefault!11013)))))

(assert (= (and start!23804 res!122336) b!249699))

(assert (= (and b!249699 res!122341) b!249697))

(assert (= (and b!249697 res!122338) b!249696))

(assert (= (and b!249696 c!41899) b!249710))

(assert (= (and b!249696 (not c!41899)) b!249703))

(assert (= (and b!249703 c!41900) b!249708))

(assert (= (and b!249703 (not c!41900)) b!249705))

(assert (= (and b!249708 res!122339) b!249711))

(assert (= (and b!249711 res!122335) b!249701))

(assert (= (and b!249705 c!41897) b!249714))

(assert (= (and b!249705 (not c!41897)) b!249712))

(assert (= (and b!249714 res!122333) b!249706))

(assert (= (and b!249706 res!122337) b!249709))

(assert (= (or b!249708 b!249714) bm!23446))

(assert (= (or b!249701 b!249709) bm!23447))

(assert (= (and b!249696 res!122334) b!249700))

(assert (= (and b!249700 c!41898) b!249713))

(assert (= (and b!249700 (not c!41898)) b!249707))

(assert (= (and b!249700 (not res!122340)) b!249704))

(assert (= (and b!249716 condMapEmpty!11013) mapIsEmpty!11013))

(assert (= (and b!249716 (not condMapEmpty!11013)) mapNonEmpty!11013))

(assert (= (and mapNonEmpty!11013 ((_ is ValueCellFull!2898) mapValue!11013)) b!249698))

(assert (= (and b!249716 ((_ is ValueCellFull!2898) mapDefault!11013)) b!249702))

(assert (= b!249715 b!249716))

(assert (= start!23804 b!249715))

(declare-fun m!266221 () Bool)

(assert (=> bm!23447 m!266221))

(declare-fun m!266223 () Bool)

(assert (=> b!249703 m!266223))

(declare-fun m!266225 () Bool)

(assert (=> start!23804 m!266225))

(declare-fun m!266227 () Bool)

(assert (=> b!249713 m!266227))

(declare-fun m!266229 () Bool)

(assert (=> b!249715 m!266229))

(declare-fun m!266231 () Bool)

(assert (=> b!249715 m!266231))

(declare-fun m!266233 () Bool)

(assert (=> bm!23446 m!266233))

(declare-fun m!266235 () Bool)

(assert (=> b!249696 m!266235))

(declare-fun m!266237 () Bool)

(assert (=> b!249696 m!266237))

(assert (=> b!249696 m!266237))

(declare-fun m!266239 () Bool)

(assert (=> b!249696 m!266239))

(declare-fun m!266241 () Bool)

(assert (=> mapNonEmpty!11013 m!266241))

(declare-fun m!266243 () Bool)

(assert (=> b!249697 m!266243))

(declare-fun m!266245 () Bool)

(assert (=> b!249706 m!266245))

(declare-fun m!266247 () Bool)

(assert (=> b!249711 m!266247))

(declare-fun m!266249 () Bool)

(assert (=> b!249700 m!266249))

(assert (=> b!249700 m!266221))

(declare-fun m!266251 () Bool)

(assert (=> b!249700 m!266251))

(declare-fun m!266253 () Bool)

(assert (=> b!249700 m!266253))

(declare-fun m!266255 () Bool)

(assert (=> b!249700 m!266255))

(declare-fun m!266257 () Bool)

(assert (=> b!249700 m!266257))

(declare-fun m!266259 () Bool)

(assert (=> b!249700 m!266259))

(declare-fun m!266261 () Bool)

(assert (=> b!249700 m!266261))

(declare-fun m!266263 () Bool)

(assert (=> b!249700 m!266263))

(declare-fun m!266265 () Bool)

(assert (=> b!249700 m!266265))

(declare-fun m!266267 () Bool)

(assert (=> b!249710 m!266267))

(check-sat (not b!249700) (not bm!23446) (not b!249715) (not mapNonEmpty!11013) (not bm!23447) (not b!249713) (not start!23804) (not b!249710) tp_is_empty!6483 b_and!13653 (not b!249696) (not b_next!6621) (not b!249697) (not b!249703))
(check-sat b_and!13653 (not b_next!6621))
(get-model)

(declare-fun d!60687 () Bool)

(declare-fun res!122375 () Bool)

(declare-fun e!162020 () Bool)

(assert (=> d!60687 (=> (not res!122375) (not e!162020))))

(declare-fun simpleValid!261 (LongMapFixedSize!3696) Bool)

(assert (=> d!60687 (= res!122375 (simpleValid!261 thiss!1504))))

(assert (=> d!60687 (= (valid!1438 thiss!1504) e!162020)))

(declare-fun b!249786 () Bool)

(declare-fun res!122376 () Bool)

(assert (=> b!249786 (=> (not res!122376) (not e!162020))))

(assert (=> b!249786 (= res!122376 (= (arrayCountValidKeys!0 (_keys!6749 thiss!1504) #b00000000000000000000000000000000 (size!6168 (_keys!6749 thiss!1504))) (_size!1897 thiss!1504)))))

(declare-fun b!249787 () Bool)

(declare-fun res!122377 () Bool)

(assert (=> b!249787 (=> (not res!122377) (not e!162020))))

(assert (=> b!249787 (= res!122377 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 (_keys!6749 thiss!1504) (mask!10789 thiss!1504)))))

(declare-fun b!249788 () Bool)

(assert (=> b!249788 (= e!162020 (arrayNoDuplicates!0 (_keys!6749 thiss!1504) #b00000000000000000000000000000000 Nil!3737))))

(assert (= (and d!60687 res!122375) b!249786))

(assert (= (and b!249786 res!122376) b!249787))

(assert (= (and b!249787 res!122377) b!249788))

(declare-fun m!266317 () Bool)

(assert (=> d!60687 m!266317))

(assert (=> b!249786 m!266261))

(declare-fun m!266319 () Bool)

(assert (=> b!249787 m!266319))

(declare-fun m!266321 () Bool)

(assert (=> b!249788 m!266321))

(assert (=> start!23804 d!60687))

(declare-fun d!60689 () Bool)

(declare-fun e!162023 () Bool)

(assert (=> d!60689 e!162023))

(declare-fun res!122382 () Bool)

(assert (=> d!60689 (=> (not res!122382) (not e!162023))))

(declare-fun lt!125164 () SeekEntryResult!1129)

(assert (=> d!60689 (= res!122382 ((_ is Found!1129) lt!125164))))

(assert (=> d!60689 (= lt!125164 (seekEntryOrOpen!0 key!932 (_keys!6749 thiss!1504) (mask!10789 thiss!1504)))))

(declare-fun lt!125163 () Unit!7731)

(declare-fun choose!1187 (array!12282 array!12280 (_ BitVec 32) (_ BitVec 32) V!8291 V!8291 (_ BitVec 64) Int) Unit!7731)

(assert (=> d!60689 (= lt!125163 (choose!1187 (_keys!6749 thiss!1504) (_values!4600 thiss!1504) (mask!10789 thiss!1504) (extraKeys!4354 thiss!1504) (zeroValue!4458 thiss!1504) (minValue!4458 thiss!1504) key!932 (defaultEntry!4617 thiss!1504)))))

(assert (=> d!60689 (validMask!0 (mask!10789 thiss!1504))))

(assert (=> d!60689 (= (lemmaInListMapThenSeekEntryOrOpenFindsIt!397 (_keys!6749 thiss!1504) (_values!4600 thiss!1504) (mask!10789 thiss!1504) (extraKeys!4354 thiss!1504) (zeroValue!4458 thiss!1504) (minValue!4458 thiss!1504) key!932 (defaultEntry!4617 thiss!1504)) lt!125163)))

(declare-fun b!249793 () Bool)

(declare-fun res!122383 () Bool)

(assert (=> b!249793 (=> (not res!122383) (not e!162023))))

(assert (=> b!249793 (= res!122383 (inRange!0 (index!6687 lt!125164) (mask!10789 thiss!1504)))))

(declare-fun b!249794 () Bool)

(assert (=> b!249794 (= e!162023 (= (select (arr!5824 (_keys!6749 thiss!1504)) (index!6687 lt!125164)) key!932))))

(assert (=> b!249794 (and (bvsge (index!6687 lt!125164) #b00000000000000000000000000000000) (bvslt (index!6687 lt!125164) (size!6168 (_keys!6749 thiss!1504))))))

(assert (= (and d!60689 res!122382) b!249793))

(assert (= (and b!249793 res!122383) b!249794))

(assert (=> d!60689 m!266243))

(declare-fun m!266323 () Bool)

(assert (=> d!60689 m!266323))

(assert (=> d!60689 m!266249))

(declare-fun m!266325 () Bool)

(assert (=> b!249793 m!266325))

(declare-fun m!266327 () Bool)

(assert (=> b!249794 m!266327))

(assert (=> b!249710 d!60689))

(declare-fun d!60691 () Bool)

(assert (=> d!60691 (= (inRange!0 index!297 (mask!10789 thiss!1504)) (and (bvsge index!297 #b00000000000000000000000000000000) (bvslt index!297 (bvadd (mask!10789 thiss!1504) #b00000000000000000000000000000001))))))

(assert (=> b!249696 d!60691))

(declare-fun d!60693 () Bool)

(declare-fun e!162028 () Bool)

(assert (=> d!60693 e!162028))

(declare-fun res!122386 () Bool)

(assert (=> d!60693 (=> res!122386 e!162028)))

(declare-fun lt!125173 () Bool)

(assert (=> d!60693 (= res!122386 (not lt!125173))))

(declare-fun lt!125175 () Bool)

(assert (=> d!60693 (= lt!125173 lt!125175)))

(declare-fun lt!125176 () Unit!7731)

(declare-fun e!162029 () Unit!7731)

(assert (=> d!60693 (= lt!125176 e!162029)))

(declare-fun c!41915 () Bool)

(assert (=> d!60693 (= c!41915 lt!125175)))

(declare-fun containsKey!288 (List!3739 (_ BitVec 64)) Bool)

(assert (=> d!60693 (= lt!125175 (containsKey!288 (toList!1896 (getCurrentListMap!1419 (_keys!6749 thiss!1504) (_values!4600 thiss!1504) (mask!10789 thiss!1504) (extraKeys!4354 thiss!1504) (zeroValue!4458 thiss!1504) (minValue!4458 thiss!1504) #b00000000000000000000000000000000 (defaultEntry!4617 thiss!1504))) key!932))))

(assert (=> d!60693 (= (contains!1809 (getCurrentListMap!1419 (_keys!6749 thiss!1504) (_values!4600 thiss!1504) (mask!10789 thiss!1504) (extraKeys!4354 thiss!1504) (zeroValue!4458 thiss!1504) (minValue!4458 thiss!1504) #b00000000000000000000000000000000 (defaultEntry!4617 thiss!1504)) key!932) lt!125173)))

(declare-fun b!249801 () Bool)

(declare-fun lt!125174 () Unit!7731)

(assert (=> b!249801 (= e!162029 lt!125174)))

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!237 (List!3739 (_ BitVec 64)) Unit!7731)

(assert (=> b!249801 (= lt!125174 (lemmaContainsKeyImpliesGetValueByKeyDefined!237 (toList!1896 (getCurrentListMap!1419 (_keys!6749 thiss!1504) (_values!4600 thiss!1504) (mask!10789 thiss!1504) (extraKeys!4354 thiss!1504) (zeroValue!4458 thiss!1504) (minValue!4458 thiss!1504) #b00000000000000000000000000000000 (defaultEntry!4617 thiss!1504))) key!932))))

(declare-datatypes ((Option!302 0))(
  ( (Some!301 (v!5347 V!8291)) (None!300) )
))
(declare-fun isDefined!238 (Option!302) Bool)

(declare-fun getValueByKey!296 (List!3739 (_ BitVec 64)) Option!302)

(assert (=> b!249801 (isDefined!238 (getValueByKey!296 (toList!1896 (getCurrentListMap!1419 (_keys!6749 thiss!1504) (_values!4600 thiss!1504) (mask!10789 thiss!1504) (extraKeys!4354 thiss!1504) (zeroValue!4458 thiss!1504) (minValue!4458 thiss!1504) #b00000000000000000000000000000000 (defaultEntry!4617 thiss!1504))) key!932))))

(declare-fun b!249802 () Bool)

(declare-fun Unit!7736 () Unit!7731)

(assert (=> b!249802 (= e!162029 Unit!7736)))

(declare-fun b!249803 () Bool)

(assert (=> b!249803 (= e!162028 (isDefined!238 (getValueByKey!296 (toList!1896 (getCurrentListMap!1419 (_keys!6749 thiss!1504) (_values!4600 thiss!1504) (mask!10789 thiss!1504) (extraKeys!4354 thiss!1504) (zeroValue!4458 thiss!1504) (minValue!4458 thiss!1504) #b00000000000000000000000000000000 (defaultEntry!4617 thiss!1504))) key!932)))))

(assert (= (and d!60693 c!41915) b!249801))

(assert (= (and d!60693 (not c!41915)) b!249802))

(assert (= (and d!60693 (not res!122386)) b!249803))

(declare-fun m!266329 () Bool)

(assert (=> d!60693 m!266329))

(declare-fun m!266331 () Bool)

(assert (=> b!249801 m!266331))

(declare-fun m!266333 () Bool)

(assert (=> b!249801 m!266333))

(assert (=> b!249801 m!266333))

(declare-fun m!266335 () Bool)

(assert (=> b!249801 m!266335))

(assert (=> b!249803 m!266333))

(assert (=> b!249803 m!266333))

(assert (=> b!249803 m!266335))

(assert (=> b!249696 d!60693))

(declare-fun b!249846 () Bool)

(declare-fun e!162067 () Bool)

(declare-fun e!162060 () Bool)

(assert (=> b!249846 (= e!162067 e!162060)))

(declare-fun res!122407 () Bool)

(assert (=> b!249846 (=> (not res!122407) (not e!162060))))

(declare-fun lt!125222 () ListLongMap!3761)

(assert (=> b!249846 (= res!122407 (contains!1809 lt!125222 (select (arr!5824 (_keys!6749 thiss!1504)) #b00000000000000000000000000000000)))))

(assert (=> b!249846 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!6168 (_keys!6749 thiss!1504))))))

(declare-fun bm!23468 () Bool)

(declare-fun call!23475 () Bool)

(assert (=> bm!23468 (= call!23475 (contains!1809 lt!125222 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun bm!23469 () Bool)

(declare-fun call!23476 () Bool)

(assert (=> bm!23469 (= call!23476 (contains!1809 lt!125222 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!249847 () Bool)

(declare-fun e!162056 () Bool)

(assert (=> b!249847 (= e!162056 (not call!23476))))

(declare-fun b!249848 () Bool)

(declare-fun c!41930 () Bool)

(assert (=> b!249848 (= c!41930 (and (not (= (bvand (extraKeys!4354 thiss!1504) #b00000000000000000000000000000010) #b00000000000000000000000000000000)) (= (bvand (extraKeys!4354 thiss!1504) #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-fun e!162058 () ListLongMap!3761)

(declare-fun e!162057 () ListLongMap!3761)

(assert (=> b!249848 (= e!162058 e!162057)))

(declare-fun c!41928 () Bool)

(declare-fun call!23472 () ListLongMap!3761)

(declare-fun call!23473 () ListLongMap!3761)

(declare-fun c!41933 () Bool)

(declare-fun call!23477 () ListLongMap!3761)

(declare-fun bm!23470 () Bool)

(declare-fun call!23471 () ListLongMap!3761)

(declare-fun +!661 (ListLongMap!3761 tuple2!4834) ListLongMap!3761)

(assert (=> bm!23470 (= call!23473 (+!661 (ite c!41933 call!23472 (ite c!41928 call!23477 call!23471)) (ite (or c!41933 c!41928) (tuple2!4835 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!4458 thiss!1504)) (tuple2!4835 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!4458 thiss!1504)))))))

(declare-fun b!249849 () Bool)

(declare-fun call!23474 () ListLongMap!3761)

(assert (=> b!249849 (= e!162057 call!23474)))

(declare-fun b!249850 () Bool)

(declare-fun e!162066 () Bool)

(declare-fun e!162059 () Bool)

(assert (=> b!249850 (= e!162066 e!162059)))

(declare-fun c!41931 () Bool)

(assert (=> b!249850 (= c!41931 (not (= (bvand (extraKeys!4354 thiss!1504) #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun b!249852 () Bool)

(assert (=> b!249852 (= e!162059 (not call!23475))))

(declare-fun bm!23471 () Bool)

(declare-fun getCurrentListMapNoExtraKeys!558 (array!12282 array!12280 (_ BitVec 32) (_ BitVec 32) V!8291 V!8291 (_ BitVec 32) Int) ListLongMap!3761)

(assert (=> bm!23471 (= call!23472 (getCurrentListMapNoExtraKeys!558 (_keys!6749 thiss!1504) (_values!4600 thiss!1504) (mask!10789 thiss!1504) (extraKeys!4354 thiss!1504) (zeroValue!4458 thiss!1504) (minValue!4458 thiss!1504) #b00000000000000000000000000000000 (defaultEntry!4617 thiss!1504)))))

(declare-fun b!249853 () Bool)

(declare-fun e!162065 () ListLongMap!3761)

(assert (=> b!249853 (= e!162065 e!162058)))

(assert (=> b!249853 (= c!41928 (and (not (= (bvand (extraKeys!4354 thiss!1504) #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (= (bvand (extraKeys!4354 thiss!1504) #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun b!249854 () Bool)

(declare-fun e!162061 () Bool)

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!249854 (= e!162061 (validKeyInArray!0 (select (arr!5824 (_keys!6749 thiss!1504)) #b00000000000000000000000000000000)))))

(declare-fun bm!23472 () Bool)

(assert (=> bm!23472 (= call!23474 call!23473)))

(declare-fun b!249855 () Bool)

(assert (=> b!249855 (= e!162057 call!23471)))

(declare-fun b!249856 () Bool)

(declare-fun e!162068 () Bool)

(declare-fun apply!239 (ListLongMap!3761 (_ BitVec 64)) V!8291)

(assert (=> b!249856 (= e!162068 (= (apply!239 lt!125222 #b1000000000000000000000000000000000000000000000000000000000000000) (minValue!4458 thiss!1504)))))

(declare-fun b!249857 () Bool)

(declare-fun e!162064 () Unit!7731)

(declare-fun lt!125235 () Unit!7731)

(assert (=> b!249857 (= e!162064 lt!125235)))

(declare-fun lt!125231 () ListLongMap!3761)

(assert (=> b!249857 (= lt!125231 (getCurrentListMapNoExtraKeys!558 (_keys!6749 thiss!1504) (_values!4600 thiss!1504) (mask!10789 thiss!1504) (extraKeys!4354 thiss!1504) (zeroValue!4458 thiss!1504) (minValue!4458 thiss!1504) #b00000000000000000000000000000000 (defaultEntry!4617 thiss!1504)))))

(declare-fun lt!125234 () (_ BitVec 64))

(assert (=> b!249857 (= lt!125234 #b0000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!125236 () (_ BitVec 64))

(assert (=> b!249857 (= lt!125236 (select (arr!5824 (_keys!6749 thiss!1504)) #b00000000000000000000000000000000))))

(declare-fun lt!125228 () Unit!7731)

(declare-fun addStillContains!215 (ListLongMap!3761 (_ BitVec 64) V!8291 (_ BitVec 64)) Unit!7731)

(assert (=> b!249857 (= lt!125228 (addStillContains!215 lt!125231 lt!125234 (zeroValue!4458 thiss!1504) lt!125236))))

(assert (=> b!249857 (contains!1809 (+!661 lt!125231 (tuple2!4835 lt!125234 (zeroValue!4458 thiss!1504))) lt!125236)))

(declare-fun lt!125242 () Unit!7731)

(assert (=> b!249857 (= lt!125242 lt!125228)))

(declare-fun lt!125229 () ListLongMap!3761)

(assert (=> b!249857 (= lt!125229 (getCurrentListMapNoExtraKeys!558 (_keys!6749 thiss!1504) (_values!4600 thiss!1504) (mask!10789 thiss!1504) (extraKeys!4354 thiss!1504) (zeroValue!4458 thiss!1504) (minValue!4458 thiss!1504) #b00000000000000000000000000000000 (defaultEntry!4617 thiss!1504)))))

(declare-fun lt!125230 () (_ BitVec 64))

(assert (=> b!249857 (= lt!125230 #b1000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!125227 () (_ BitVec 64))

(assert (=> b!249857 (= lt!125227 (select (arr!5824 (_keys!6749 thiss!1504)) #b00000000000000000000000000000000))))

(declare-fun lt!125225 () Unit!7731)

(declare-fun addApplyDifferent!215 (ListLongMap!3761 (_ BitVec 64) V!8291 (_ BitVec 64)) Unit!7731)

(assert (=> b!249857 (= lt!125225 (addApplyDifferent!215 lt!125229 lt!125230 (minValue!4458 thiss!1504) lt!125227))))

(assert (=> b!249857 (= (apply!239 (+!661 lt!125229 (tuple2!4835 lt!125230 (minValue!4458 thiss!1504))) lt!125227) (apply!239 lt!125229 lt!125227))))

(declare-fun lt!125238 () Unit!7731)

(assert (=> b!249857 (= lt!125238 lt!125225)))

(declare-fun lt!125223 () ListLongMap!3761)

(assert (=> b!249857 (= lt!125223 (getCurrentListMapNoExtraKeys!558 (_keys!6749 thiss!1504) (_values!4600 thiss!1504) (mask!10789 thiss!1504) (extraKeys!4354 thiss!1504) (zeroValue!4458 thiss!1504) (minValue!4458 thiss!1504) #b00000000000000000000000000000000 (defaultEntry!4617 thiss!1504)))))

(declare-fun lt!125233 () (_ BitVec 64))

(assert (=> b!249857 (= lt!125233 #b0000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!125232 () (_ BitVec 64))

(assert (=> b!249857 (= lt!125232 (select (arr!5824 (_keys!6749 thiss!1504)) #b00000000000000000000000000000000))))

(declare-fun lt!125221 () Unit!7731)

(assert (=> b!249857 (= lt!125221 (addApplyDifferent!215 lt!125223 lt!125233 (zeroValue!4458 thiss!1504) lt!125232))))

(assert (=> b!249857 (= (apply!239 (+!661 lt!125223 (tuple2!4835 lt!125233 (zeroValue!4458 thiss!1504))) lt!125232) (apply!239 lt!125223 lt!125232))))

(declare-fun lt!125226 () Unit!7731)

(assert (=> b!249857 (= lt!125226 lt!125221)))

(declare-fun lt!125237 () ListLongMap!3761)

(assert (=> b!249857 (= lt!125237 (getCurrentListMapNoExtraKeys!558 (_keys!6749 thiss!1504) (_values!4600 thiss!1504) (mask!10789 thiss!1504) (extraKeys!4354 thiss!1504) (zeroValue!4458 thiss!1504) (minValue!4458 thiss!1504) #b00000000000000000000000000000000 (defaultEntry!4617 thiss!1504)))))

(declare-fun lt!125239 () (_ BitVec 64))

(assert (=> b!249857 (= lt!125239 #b1000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!125241 () (_ BitVec 64))

(assert (=> b!249857 (= lt!125241 (select (arr!5824 (_keys!6749 thiss!1504)) #b00000000000000000000000000000000))))

(assert (=> b!249857 (= lt!125235 (addApplyDifferent!215 lt!125237 lt!125239 (minValue!4458 thiss!1504) lt!125241))))

(assert (=> b!249857 (= (apply!239 (+!661 lt!125237 (tuple2!4835 lt!125239 (minValue!4458 thiss!1504))) lt!125241) (apply!239 lt!125237 lt!125241))))

(declare-fun bm!23473 () Bool)

(assert (=> bm!23473 (= call!23471 call!23477)))

(declare-fun b!249858 () Bool)

(declare-fun e!162063 () Bool)

(assert (=> b!249858 (= e!162063 (validKeyInArray!0 (select (arr!5824 (_keys!6749 thiss!1504)) #b00000000000000000000000000000000)))))

(declare-fun b!249859 () Bool)

(declare-fun e!162062 () Bool)

(assert (=> b!249859 (= e!162056 e!162062)))

(declare-fun res!122411 () Bool)

(assert (=> b!249859 (= res!122411 call!23476)))

(assert (=> b!249859 (=> (not res!122411) (not e!162062))))

(declare-fun bm!23474 () Bool)

(assert (=> bm!23474 (= call!23477 call!23472)))

(declare-fun b!249860 () Bool)

(declare-fun Unit!7737 () Unit!7731)

(assert (=> b!249860 (= e!162064 Unit!7737)))

(declare-fun b!249851 () Bool)

(declare-fun res!122413 () Bool)

(assert (=> b!249851 (=> (not res!122413) (not e!162066))))

(assert (=> b!249851 (= res!122413 e!162056)))

(declare-fun c!41932 () Bool)

(assert (=> b!249851 (= c!41932 (not (= (bvand (extraKeys!4354 thiss!1504) #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-fun d!60695 () Bool)

(assert (=> d!60695 e!162066))

(declare-fun res!122408 () Bool)

(assert (=> d!60695 (=> (not res!122408) (not e!162066))))

(assert (=> d!60695 (= res!122408 (or (bvsge #b00000000000000000000000000000000 (size!6168 (_keys!6749 thiss!1504))) (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!6168 (_keys!6749 thiss!1504))))))))

(declare-fun lt!125224 () ListLongMap!3761)

(assert (=> d!60695 (= lt!125222 lt!125224)))

(declare-fun lt!125240 () Unit!7731)

(assert (=> d!60695 (= lt!125240 e!162064)))

(declare-fun c!41929 () Bool)

(assert (=> d!60695 (= c!41929 e!162061)))

(declare-fun res!122406 () Bool)

(assert (=> d!60695 (=> (not res!122406) (not e!162061))))

(assert (=> d!60695 (= res!122406 (bvslt #b00000000000000000000000000000000 (size!6168 (_keys!6749 thiss!1504))))))

(assert (=> d!60695 (= lt!125224 e!162065)))

(assert (=> d!60695 (= c!41933 (and (not (= (bvand (extraKeys!4354 thiss!1504) #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (not (= (bvand (extraKeys!4354 thiss!1504) #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(assert (=> d!60695 (validMask!0 (mask!10789 thiss!1504))))

(assert (=> d!60695 (= (getCurrentListMap!1419 (_keys!6749 thiss!1504) (_values!4600 thiss!1504) (mask!10789 thiss!1504) (extraKeys!4354 thiss!1504) (zeroValue!4458 thiss!1504) (minValue!4458 thiss!1504) #b00000000000000000000000000000000 (defaultEntry!4617 thiss!1504)) lt!125222)))

(declare-fun b!249861 () Bool)

(assert (=> b!249861 (= e!162058 call!23474)))

(declare-fun b!249862 () Bool)

(assert (=> b!249862 (= e!162062 (= (apply!239 lt!125222 #b0000000000000000000000000000000000000000000000000000000000000000) (zeroValue!4458 thiss!1504)))))

(declare-fun b!249863 () Bool)

(assert (=> b!249863 (= e!162065 (+!661 call!23473 (tuple2!4835 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!4458 thiss!1504))))))

(declare-fun b!249864 () Bool)

(declare-fun res!122409 () Bool)

(assert (=> b!249864 (=> (not res!122409) (not e!162066))))

(assert (=> b!249864 (= res!122409 e!162067)))

(declare-fun res!122412 () Bool)

(assert (=> b!249864 (=> res!122412 e!162067)))

(assert (=> b!249864 (= res!122412 (not e!162063))))

(declare-fun res!122410 () Bool)

(assert (=> b!249864 (=> (not res!122410) (not e!162063))))

(assert (=> b!249864 (= res!122410 (bvslt #b00000000000000000000000000000000 (size!6168 (_keys!6749 thiss!1504))))))

(declare-fun b!249865 () Bool)

(declare-fun get!2992 (ValueCell!2898 V!8291) V!8291)

(declare-fun dynLambda!577 (Int (_ BitVec 64)) V!8291)

(assert (=> b!249865 (= e!162060 (= (apply!239 lt!125222 (select (arr!5824 (_keys!6749 thiss!1504)) #b00000000000000000000000000000000)) (get!2992 (select (arr!5823 (_values!4600 thiss!1504)) #b00000000000000000000000000000000) (dynLambda!577 (defaultEntry!4617 thiss!1504) #b0000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!249865 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!6167 (_values!4600 thiss!1504))))))

(assert (=> b!249865 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!6168 (_keys!6749 thiss!1504))))))

(declare-fun b!249866 () Bool)

(assert (=> b!249866 (= e!162059 e!162068)))

(declare-fun res!122405 () Bool)

(assert (=> b!249866 (= res!122405 call!23475)))

(assert (=> b!249866 (=> (not res!122405) (not e!162068))))

(assert (= (and d!60695 c!41933) b!249863))

(assert (= (and d!60695 (not c!41933)) b!249853))

(assert (= (and b!249853 c!41928) b!249861))

(assert (= (and b!249853 (not c!41928)) b!249848))

(assert (= (and b!249848 c!41930) b!249849))

(assert (= (and b!249848 (not c!41930)) b!249855))

(assert (= (or b!249849 b!249855) bm!23473))

(assert (= (or b!249861 bm!23473) bm!23474))

(assert (= (or b!249861 b!249849) bm!23472))

(assert (= (or b!249863 bm!23474) bm!23471))

(assert (= (or b!249863 bm!23472) bm!23470))

(assert (= (and d!60695 res!122406) b!249854))

(assert (= (and d!60695 c!41929) b!249857))

(assert (= (and d!60695 (not c!41929)) b!249860))

(assert (= (and d!60695 res!122408) b!249864))

(assert (= (and b!249864 res!122410) b!249858))

(assert (= (and b!249864 (not res!122412)) b!249846))

(assert (= (and b!249846 res!122407) b!249865))

(assert (= (and b!249864 res!122409) b!249851))

(assert (= (and b!249851 c!41932) b!249859))

(assert (= (and b!249851 (not c!41932)) b!249847))

(assert (= (and b!249859 res!122411) b!249862))

(assert (= (or b!249859 b!249847) bm!23469))

(assert (= (and b!249851 res!122413) b!249850))

(assert (= (and b!249850 c!41931) b!249866))

(assert (= (and b!249850 (not c!41931)) b!249852))

(assert (= (and b!249866 res!122405) b!249856))

(assert (= (or b!249866 b!249852) bm!23468))

(declare-fun b_lambda!8105 () Bool)

(assert (=> (not b_lambda!8105) (not b!249865)))

(declare-fun t!8781 () Bool)

(declare-fun tb!2999 () Bool)

(assert (=> (and b!249715 (= (defaultEntry!4617 thiss!1504) (defaultEntry!4617 thiss!1504)) t!8781) tb!2999))

(declare-fun result!5303 () Bool)

(assert (=> tb!2999 (= result!5303 tp_is_empty!6483)))

(assert (=> b!249865 t!8781))

(declare-fun b_and!13657 () Bool)

(assert (= b_and!13653 (and (=> t!8781 result!5303) b_and!13657)))

(declare-fun m!266337 () Bool)

(assert (=> bm!23471 m!266337))

(declare-fun m!266339 () Bool)

(assert (=> b!249857 m!266339))

(declare-fun m!266341 () Bool)

(assert (=> b!249857 m!266341))

(declare-fun m!266343 () Bool)

(assert (=> b!249857 m!266343))

(declare-fun m!266345 () Bool)

(assert (=> b!249857 m!266345))

(declare-fun m!266347 () Bool)

(assert (=> b!249857 m!266347))

(declare-fun m!266349 () Bool)

(assert (=> b!249857 m!266349))

(declare-fun m!266351 () Bool)

(assert (=> b!249857 m!266351))

(declare-fun m!266353 () Bool)

(assert (=> b!249857 m!266353))

(assert (=> b!249857 m!266347))

(declare-fun m!266355 () Bool)

(assert (=> b!249857 m!266355))

(declare-fun m!266357 () Bool)

(assert (=> b!249857 m!266357))

(declare-fun m!266359 () Bool)

(assert (=> b!249857 m!266359))

(assert (=> b!249857 m!266351))

(declare-fun m!266361 () Bool)

(assert (=> b!249857 m!266361))

(assert (=> b!249857 m!266357))

(declare-fun m!266363 () Bool)

(assert (=> b!249857 m!266363))

(assert (=> b!249857 m!266339))

(declare-fun m!266365 () Bool)

(assert (=> b!249857 m!266365))

(declare-fun m!266367 () Bool)

(assert (=> b!249857 m!266367))

(assert (=> b!249857 m!266337))

(declare-fun m!266369 () Bool)

(assert (=> b!249857 m!266369))

(declare-fun m!266371 () Bool)

(assert (=> b!249865 m!266371))

(declare-fun m!266373 () Bool)

(assert (=> b!249865 m!266373))

(declare-fun m!266375 () Bool)

(assert (=> b!249865 m!266375))

(assert (=> b!249865 m!266369))

(assert (=> b!249865 m!266369))

(declare-fun m!266377 () Bool)

(assert (=> b!249865 m!266377))

(assert (=> b!249865 m!266373))

(assert (=> b!249865 m!266371))

(assert (=> d!60695 m!266249))

(declare-fun m!266379 () Bool)

(assert (=> bm!23468 m!266379))

(declare-fun m!266381 () Bool)

(assert (=> b!249856 m!266381))

(declare-fun m!266383 () Bool)

(assert (=> bm!23469 m!266383))

(assert (=> b!249846 m!266369))

(assert (=> b!249846 m!266369))

(declare-fun m!266385 () Bool)

(assert (=> b!249846 m!266385))

(assert (=> b!249854 m!266369))

(assert (=> b!249854 m!266369))

(declare-fun m!266387 () Bool)

(assert (=> b!249854 m!266387))

(assert (=> b!249858 m!266369))

(assert (=> b!249858 m!266369))

(assert (=> b!249858 m!266387))

(declare-fun m!266389 () Bool)

(assert (=> bm!23470 m!266389))

(declare-fun m!266391 () Bool)

(assert (=> b!249862 m!266391))

(declare-fun m!266393 () Bool)

(assert (=> b!249863 m!266393))

(assert (=> b!249696 d!60695))

(declare-fun b!249882 () Bool)

(declare-fun e!162076 () SeekEntryResult!1129)

(declare-fun lt!125251 () SeekEntryResult!1129)

(assert (=> b!249882 (= e!162076 (MissingZero!1129 (index!6688 lt!125251)))))

(declare-fun b!249883 () Bool)

(declare-fun e!162075 () SeekEntryResult!1129)

(declare-fun e!162077 () SeekEntryResult!1129)

(assert (=> b!249883 (= e!162075 e!162077)))

(declare-fun lt!125249 () (_ BitVec 64))

(assert (=> b!249883 (= lt!125249 (select (arr!5824 (_keys!6749 thiss!1504)) (index!6688 lt!125251)))))

(declare-fun c!41940 () Bool)

(assert (=> b!249883 (= c!41940 (= lt!125249 key!932))))

(declare-fun b!249884 () Bool)

(declare-fun c!41941 () Bool)

(assert (=> b!249884 (= c!41941 (= lt!125249 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!249884 (= e!162077 e!162076)))

(declare-fun b!249885 () Bool)

(assert (=> b!249885 (= e!162075 Undefined!1129)))

(declare-fun b!249886 () Bool)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!12282 (_ BitVec 32)) SeekEntryResult!1129)

(assert (=> b!249886 (= e!162076 (seekKeyOrZeroReturnVacant!0 (x!24653 lt!125251) (index!6688 lt!125251) (index!6688 lt!125251) key!932 (_keys!6749 thiss!1504) (mask!10789 thiss!1504)))))

(declare-fun d!60697 () Bool)

(declare-fun lt!125250 () SeekEntryResult!1129)

(assert (=> d!60697 (and (or ((_ is Undefined!1129) lt!125250) (not ((_ is Found!1129) lt!125250)) (and (bvsge (index!6687 lt!125250) #b00000000000000000000000000000000) (bvslt (index!6687 lt!125250) (size!6168 (_keys!6749 thiss!1504))))) (or ((_ is Undefined!1129) lt!125250) ((_ is Found!1129) lt!125250) (not ((_ is MissingZero!1129) lt!125250)) (and (bvsge (index!6686 lt!125250) #b00000000000000000000000000000000) (bvslt (index!6686 lt!125250) (size!6168 (_keys!6749 thiss!1504))))) (or ((_ is Undefined!1129) lt!125250) ((_ is Found!1129) lt!125250) ((_ is MissingZero!1129) lt!125250) (not ((_ is MissingVacant!1129) lt!125250)) (and (bvsge (index!6689 lt!125250) #b00000000000000000000000000000000) (bvslt (index!6689 lt!125250) (size!6168 (_keys!6749 thiss!1504))))) (or ((_ is Undefined!1129) lt!125250) (ite ((_ is Found!1129) lt!125250) (= (select (arr!5824 (_keys!6749 thiss!1504)) (index!6687 lt!125250)) key!932) (ite ((_ is MissingZero!1129) lt!125250) (= (select (arr!5824 (_keys!6749 thiss!1504)) (index!6686 lt!125250)) #b0000000000000000000000000000000000000000000000000000000000000000) (and ((_ is MissingVacant!1129) lt!125250) (= (select (arr!5824 (_keys!6749 thiss!1504)) (index!6689 lt!125250)) #b1000000000000000000000000000000000000000000000000000000000000000))))))))

(assert (=> d!60697 (= lt!125250 e!162075)))

(declare-fun c!41942 () Bool)

(assert (=> d!60697 (= c!41942 (and ((_ is Intermediate!1129) lt!125251) (undefined!1941 lt!125251)))))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!12282 (_ BitVec 32)) SeekEntryResult!1129)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> d!60697 (= lt!125251 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 key!932 (mask!10789 thiss!1504)) key!932 (_keys!6749 thiss!1504) (mask!10789 thiss!1504)))))

(assert (=> d!60697 (validMask!0 (mask!10789 thiss!1504))))

(assert (=> d!60697 (= (seekEntryOrOpen!0 key!932 (_keys!6749 thiss!1504) (mask!10789 thiss!1504)) lt!125250)))

(declare-fun b!249881 () Bool)

(assert (=> b!249881 (= e!162077 (Found!1129 (index!6688 lt!125251)))))

(assert (= (and d!60697 c!41942) b!249885))

(assert (= (and d!60697 (not c!41942)) b!249883))

(assert (= (and b!249883 c!41940) b!249881))

(assert (= (and b!249883 (not c!41940)) b!249884))

(assert (= (and b!249884 c!41941) b!249882))

(assert (= (and b!249884 (not c!41941)) b!249886))

(declare-fun m!266395 () Bool)

(assert (=> b!249883 m!266395))

(declare-fun m!266397 () Bool)

(assert (=> b!249886 m!266397))

(assert (=> d!60697 m!266249))

(declare-fun m!266399 () Bool)

(assert (=> d!60697 m!266399))

(declare-fun m!266401 () Bool)

(assert (=> d!60697 m!266401))

(assert (=> d!60697 m!266399))

(declare-fun m!266403 () Bool)

(assert (=> d!60697 m!266403))

(declare-fun m!266405 () Bool)

(assert (=> d!60697 m!266405))

(declare-fun m!266407 () Bool)

(assert (=> d!60697 m!266407))

(assert (=> b!249697 d!60697))

(declare-fun d!60699 () Bool)

(assert (=> d!60699 (= (inRange!0 (ite c!41900 (index!6686 lt!125128) (index!6689 lt!125128)) (mask!10789 thiss!1504)) (and (bvsge (ite c!41900 (index!6686 lt!125128) (index!6689 lt!125128)) #b00000000000000000000000000000000) (bvslt (ite c!41900 (index!6686 lt!125128) (index!6689 lt!125128)) (bvadd (mask!10789 thiss!1504) #b00000000000000000000000000000001))))))

(assert (=> bm!23446 d!60699))

(declare-fun d!60701 () Bool)

(assert (=> d!60701 (= (array_inv!3835 (_keys!6749 thiss!1504)) (bvsge (size!6168 (_keys!6749 thiss!1504)) #b00000000000000000000000000000000))))

(assert (=> b!249715 d!60701))

(declare-fun d!60703 () Bool)

(assert (=> d!60703 (= (array_inv!3836 (_values!4600 thiss!1504)) (bvsge (size!6167 (_values!4600 thiss!1504)) #b00000000000000000000000000000000))))

(assert (=> b!249715 d!60703))

(declare-fun d!60705 () Bool)

(declare-fun res!122418 () Bool)

(declare-fun e!162082 () Bool)

(assert (=> d!60705 (=> res!122418 e!162082)))

(assert (=> d!60705 (= res!122418 (= (select (arr!5824 (_keys!6749 thiss!1504)) #b00000000000000000000000000000000) key!932))))

(assert (=> d!60705 (= (arrayContainsKey!0 (_keys!6749 thiss!1504) key!932 #b00000000000000000000000000000000) e!162082)))

(declare-fun b!249891 () Bool)

(declare-fun e!162083 () Bool)

(assert (=> b!249891 (= e!162082 e!162083)))

(declare-fun res!122419 () Bool)

(assert (=> b!249891 (=> (not res!122419) (not e!162083))))

(assert (=> b!249891 (= res!122419 (bvslt (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!6168 (_keys!6749 thiss!1504))))))

(declare-fun b!249892 () Bool)

(assert (=> b!249892 (= e!162083 (arrayContainsKey!0 (_keys!6749 thiss!1504) key!932 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)))))

(assert (= (and d!60705 (not res!122418)) b!249891))

(assert (= (and b!249891 res!122419) b!249892))

(assert (=> d!60705 m!266369))

(declare-fun m!266409 () Bool)

(assert (=> b!249892 m!266409))

(assert (=> bm!23447 d!60705))

(declare-fun b!249909 () Bool)

(declare-fun lt!125257 () SeekEntryResult!1129)

(assert (=> b!249909 (and (bvsge (index!6686 lt!125257) #b00000000000000000000000000000000) (bvslt (index!6686 lt!125257) (size!6168 (_keys!6749 thiss!1504))))))

(declare-fun res!122429 () Bool)

(assert (=> b!249909 (= res!122429 (= (select (arr!5824 (_keys!6749 thiss!1504)) (index!6686 lt!125257)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!162094 () Bool)

(assert (=> b!249909 (=> (not res!122429) (not e!162094))))

(declare-fun c!41947 () Bool)

(declare-fun bm!23479 () Bool)

(declare-fun call!23483 () Bool)

(assert (=> bm!23479 (= call!23483 (inRange!0 (ite c!41947 (index!6686 lt!125257) (index!6689 lt!125257)) (mask!10789 thiss!1504)))))

(declare-fun b!249910 () Bool)

(declare-fun e!162093 () Bool)

(assert (=> b!249910 (= e!162093 e!162094)))

(declare-fun res!122431 () Bool)

(assert (=> b!249910 (= res!122431 call!23483)))

(assert (=> b!249910 (=> (not res!122431) (not e!162094))))

(declare-fun b!249911 () Bool)

(declare-fun e!162095 () Bool)

(assert (=> b!249911 (= e!162095 ((_ is Undefined!1129) lt!125257))))

(declare-fun bm!23480 () Bool)

(declare-fun call!23482 () Bool)

(assert (=> bm!23480 (= call!23482 (arrayContainsKey!0 (_keys!6749 thiss!1504) key!932 #b00000000000000000000000000000000))))

(declare-fun b!249912 () Bool)

(declare-fun res!122428 () Bool)

(declare-fun e!162092 () Bool)

(assert (=> b!249912 (=> (not res!122428) (not e!162092))))

(assert (=> b!249912 (= res!122428 call!23483)))

(assert (=> b!249912 (= e!162095 e!162092)))

(declare-fun b!249913 () Bool)

(assert (=> b!249913 (= e!162092 (not call!23482))))

(declare-fun b!249914 () Bool)

(assert (=> b!249914 (= e!162093 e!162095)))

(declare-fun c!41948 () Bool)

(assert (=> b!249914 (= c!41948 ((_ is MissingVacant!1129) lt!125257))))

(declare-fun d!60707 () Bool)

(assert (=> d!60707 e!162093))

(assert (=> d!60707 (= c!41947 ((_ is MissingZero!1129) lt!125257))))

(assert (=> d!60707 (= lt!125257 (seekEntryOrOpen!0 key!932 (_keys!6749 thiss!1504) (mask!10789 thiss!1504)))))

(declare-fun lt!125256 () Unit!7731)

(declare-fun choose!1188 (array!12282 array!12280 (_ BitVec 32) (_ BitVec 32) V!8291 V!8291 (_ BitVec 64) Int) Unit!7731)

(assert (=> d!60707 (= lt!125256 (choose!1188 (_keys!6749 thiss!1504) (_values!4600 thiss!1504) (mask!10789 thiss!1504) (extraKeys!4354 thiss!1504) (zeroValue!4458 thiss!1504) (minValue!4458 thiss!1504) key!932 (defaultEntry!4617 thiss!1504)))))

(assert (=> d!60707 (validMask!0 (mask!10789 thiss!1504))))

(assert (=> d!60707 (= (lemmaNotInListMapThenSeekEntryOrOpenFindsFreeOrNothing!396 (_keys!6749 thiss!1504) (_values!4600 thiss!1504) (mask!10789 thiss!1504) (extraKeys!4354 thiss!1504) (zeroValue!4458 thiss!1504) (minValue!4458 thiss!1504) key!932 (defaultEntry!4617 thiss!1504)) lt!125256)))

(declare-fun b!249915 () Bool)

(assert (=> b!249915 (= e!162094 (not call!23482))))

(declare-fun b!249916 () Bool)

(declare-fun res!122430 () Bool)

(assert (=> b!249916 (=> (not res!122430) (not e!162092))))

(assert (=> b!249916 (= res!122430 (= (select (arr!5824 (_keys!6749 thiss!1504)) (index!6689 lt!125257)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!249916 (and (bvsge (index!6689 lt!125257) #b00000000000000000000000000000000) (bvslt (index!6689 lt!125257) (size!6168 (_keys!6749 thiss!1504))))))

(assert (= (and d!60707 c!41947) b!249910))

(assert (= (and d!60707 (not c!41947)) b!249914))

(assert (= (and b!249910 res!122431) b!249909))

(assert (= (and b!249909 res!122429) b!249915))

(assert (= (and b!249914 c!41948) b!249912))

(assert (= (and b!249914 (not c!41948)) b!249911))

(assert (= (and b!249912 res!122428) b!249916))

(assert (= (and b!249916 res!122430) b!249913))

(assert (= (or b!249910 b!249912) bm!23479))

(assert (= (or b!249915 b!249913) bm!23480))

(assert (=> d!60707 m!266243))

(declare-fun m!266411 () Bool)

(assert (=> d!60707 m!266411))

(assert (=> d!60707 m!266249))

(assert (=> bm!23480 m!266221))

(declare-fun m!266413 () Bool)

(assert (=> b!249909 m!266413))

(declare-fun m!266415 () Bool)

(assert (=> bm!23479 m!266415))

(declare-fun m!266417 () Bool)

(assert (=> b!249916 m!266417))

(assert (=> b!249703 d!60707))

(declare-fun d!60709 () Bool)

(assert (=> d!60709 (contains!1809 (getCurrentListMap!1419 (_keys!6749 thiss!1504) (_values!4600 thiss!1504) (mask!10789 thiss!1504) (extraKeys!4354 thiss!1504) (zeroValue!4458 thiss!1504) (minValue!4458 thiss!1504) #b00000000000000000000000000000000 (defaultEntry!4617 thiss!1504)) key!932)))

(declare-fun lt!125260 () Unit!7731)

(declare-fun choose!1189 (array!12282 array!12280 (_ BitVec 32) (_ BitVec 32) V!8291 V!8291 (_ BitVec 64) (_ BitVec 32) Int) Unit!7731)

(assert (=> d!60709 (= lt!125260 (choose!1189 (_keys!6749 thiss!1504) (_values!4600 thiss!1504) (mask!10789 thiss!1504) (extraKeys!4354 thiss!1504) (zeroValue!4458 thiss!1504) (minValue!4458 thiss!1504) key!932 #b00000000000000000000000000000000 (defaultEntry!4617 thiss!1504)))))

(assert (=> d!60709 (validMask!0 (mask!10789 thiss!1504))))

(assert (=> d!60709 (= (lemmaArrayContainsKeyThenInListMap!199 (_keys!6749 thiss!1504) (_values!4600 thiss!1504) (mask!10789 thiss!1504) (extraKeys!4354 thiss!1504) (zeroValue!4458 thiss!1504) (minValue!4458 thiss!1504) key!932 #b00000000000000000000000000000000 (defaultEntry!4617 thiss!1504)) lt!125260)))

(declare-fun bs!8964 () Bool)

(assert (= bs!8964 d!60709))

(assert (=> bs!8964 m!266237))

(assert (=> bs!8964 m!266237))

(assert (=> bs!8964 m!266239))

(declare-fun m!266419 () Bool)

(assert (=> bs!8964 m!266419))

(assert (=> bs!8964 m!266249))

(assert (=> b!249713 d!60709))

(declare-fun b!249926 () Bool)

(declare-fun res!122441 () Bool)

(declare-fun e!162101 () Bool)

(assert (=> b!249926 (=> (not res!122441) (not e!162101))))

(assert (=> b!249926 (= res!122441 (validKeyInArray!0 key!932))))

(declare-fun b!249925 () Bool)

(declare-fun res!122443 () Bool)

(assert (=> b!249925 (=> (not res!122443) (not e!162101))))

(assert (=> b!249925 (= res!122443 (not (validKeyInArray!0 (select (arr!5824 (_keys!6749 thiss!1504)) index!297))))))

(declare-fun d!60711 () Bool)

(declare-fun e!162100 () Bool)

(assert (=> d!60711 e!162100))

(declare-fun res!122442 () Bool)

(assert (=> d!60711 (=> (not res!122442) (not e!162100))))

(assert (=> d!60711 (= res!122442 (and (bvsge index!297 #b00000000000000000000000000000000) (bvslt index!297 (size!6168 (_keys!6749 thiss!1504)))))))

(declare-fun lt!125263 () Unit!7731)

(declare-fun choose!1 (array!12282 (_ BitVec 32) (_ BitVec 64)) Unit!7731)

(assert (=> d!60711 (= lt!125263 (choose!1 (_keys!6749 thiss!1504) index!297 key!932))))

(assert (=> d!60711 e!162101))

(declare-fun res!122440 () Bool)

(assert (=> d!60711 (=> (not res!122440) (not e!162101))))

(assert (=> d!60711 (= res!122440 (and (bvsge index!297 #b00000000000000000000000000000000) (bvslt index!297 (size!6168 (_keys!6749 thiss!1504)))))))

(assert (=> d!60711 (= (lemmaAddValidKeyIncreasesNumberOfValidKeysInArray!0 (_keys!6749 thiss!1504) index!297 key!932) lt!125263)))

(declare-fun b!249928 () Bool)

(assert (=> b!249928 (= e!162100 (= (arrayCountValidKeys!0 (array!12283 (store (arr!5824 (_keys!6749 thiss!1504)) index!297 key!932) (size!6168 (_keys!6749 thiss!1504))) #b00000000000000000000000000000000 (size!6168 (_keys!6749 thiss!1504))) (bvadd (arrayCountValidKeys!0 (_keys!6749 thiss!1504) #b00000000000000000000000000000000 (size!6168 (_keys!6749 thiss!1504))) #b00000000000000000000000000000001)))))

(declare-fun b!249927 () Bool)

(assert (=> b!249927 (= e!162101 (bvslt (size!6168 (_keys!6749 thiss!1504)) #b01111111111111111111111111111111))))

(assert (= (and d!60711 res!122440) b!249925))

(assert (= (and b!249925 res!122443) b!249926))

(assert (= (and b!249926 res!122441) b!249927))

(assert (= (and d!60711 res!122442) b!249928))

(declare-fun m!266421 () Bool)

(assert (=> b!249926 m!266421))

(declare-fun m!266423 () Bool)

(assert (=> b!249925 m!266423))

(assert (=> b!249925 m!266423))

(declare-fun m!266425 () Bool)

(assert (=> b!249925 m!266425))

(declare-fun m!266427 () Bool)

(assert (=> d!60711 m!266427))

(assert (=> b!249928 m!266259))

(declare-fun m!266429 () Bool)

(assert (=> b!249928 m!266429))

(assert (=> b!249928 m!266261))

(assert (=> b!249700 d!60711))

(declare-fun d!60713 () Bool)

(declare-fun res!122448 () Bool)

(declare-fun e!162110 () Bool)

(assert (=> d!60713 (=> res!122448 e!162110)))

(assert (=> d!60713 (= res!122448 (bvsge #b00000000000000000000000000000000 (size!6168 lt!125125)))))

(assert (=> d!60713 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!125125 (mask!10789 thiss!1504)) e!162110)))

(declare-fun b!249937 () Bool)

(declare-fun e!162108 () Bool)

(declare-fun e!162109 () Bool)

(assert (=> b!249937 (= e!162108 e!162109)))

(declare-fun lt!125272 () (_ BitVec 64))

(assert (=> b!249937 (= lt!125272 (select (arr!5824 lt!125125) #b00000000000000000000000000000000))))

(declare-fun lt!125270 () Unit!7731)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!12282 (_ BitVec 64) (_ BitVec 32)) Unit!7731)

(assert (=> b!249937 (= lt!125270 (lemmaArrayContainsFromImpliesContainsFromZero!0 lt!125125 lt!125272 #b00000000000000000000000000000000))))

(assert (=> b!249937 (arrayContainsKey!0 lt!125125 lt!125272 #b00000000000000000000000000000000)))

(declare-fun lt!125271 () Unit!7731)

(assert (=> b!249937 (= lt!125271 lt!125270)))

(declare-fun res!122449 () Bool)

(assert (=> b!249937 (= res!122449 (= (seekEntryOrOpen!0 (select (arr!5824 lt!125125) #b00000000000000000000000000000000) lt!125125 (mask!10789 thiss!1504)) (Found!1129 #b00000000000000000000000000000000)))))

(assert (=> b!249937 (=> (not res!122449) (not e!162109))))

(declare-fun b!249938 () Bool)

(declare-fun call!23486 () Bool)

(assert (=> b!249938 (= e!162109 call!23486)))

(declare-fun b!249939 () Bool)

(assert (=> b!249939 (= e!162108 call!23486)))

(declare-fun b!249940 () Bool)

(assert (=> b!249940 (= e!162110 e!162108)))

(declare-fun c!41951 () Bool)

(assert (=> b!249940 (= c!41951 (validKeyInArray!0 (select (arr!5824 lt!125125) #b00000000000000000000000000000000)))))

(declare-fun bm!23483 () Bool)

(assert (=> bm!23483 (= call!23486 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) lt!125125 (mask!10789 thiss!1504)))))

(assert (= (and d!60713 (not res!122448)) b!249940))

(assert (= (and b!249940 c!41951) b!249937))

(assert (= (and b!249940 (not c!41951)) b!249939))

(assert (= (and b!249937 res!122449) b!249938))

(assert (= (or b!249938 b!249939) bm!23483))

(declare-fun m!266431 () Bool)

(assert (=> b!249937 m!266431))

(declare-fun m!266433 () Bool)

(assert (=> b!249937 m!266433))

(declare-fun m!266435 () Bool)

(assert (=> b!249937 m!266435))

(assert (=> b!249937 m!266431))

(declare-fun m!266437 () Bool)

(assert (=> b!249937 m!266437))

(assert (=> b!249940 m!266431))

(assert (=> b!249940 m!266431))

(declare-fun m!266439 () Bool)

(assert (=> b!249940 m!266439))

(declare-fun m!266441 () Bool)

(assert (=> bm!23483 m!266441))

(assert (=> b!249700 d!60713))

(declare-fun b!249949 () Bool)

(declare-fun e!162116 () (_ BitVec 32))

(declare-fun call!23489 () (_ BitVec 32))

(assert (=> b!249949 (= e!162116 (bvadd #b00000000000000000000000000000001 call!23489))))

(declare-fun b!249950 () Bool)

(declare-fun e!162115 () (_ BitVec 32))

(assert (=> b!249950 (= e!162115 #b00000000000000000000000000000000)))

(declare-fun bm!23486 () Bool)

(assert (=> bm!23486 (= call!23489 (arrayCountValidKeys!0 lt!125125 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!6168 (_keys!6749 thiss!1504))))))

(declare-fun b!249951 () Bool)

(assert (=> b!249951 (= e!162116 call!23489)))

(declare-fun b!249952 () Bool)

(assert (=> b!249952 (= e!162115 e!162116)))

(declare-fun c!41957 () Bool)

(assert (=> b!249952 (= c!41957 (validKeyInArray!0 (select (arr!5824 lt!125125) #b00000000000000000000000000000000)))))

(declare-fun d!60715 () Bool)

(declare-fun lt!125275 () (_ BitVec 32))

(assert (=> d!60715 (and (bvsge lt!125275 #b00000000000000000000000000000000) (bvsle lt!125275 (bvsub (size!6168 lt!125125) #b00000000000000000000000000000000)))))

(assert (=> d!60715 (= lt!125275 e!162115)))

(declare-fun c!41956 () Bool)

(assert (=> d!60715 (= c!41956 (bvsge #b00000000000000000000000000000000 (size!6168 (_keys!6749 thiss!1504))))))

(assert (=> d!60715 (and (bvsle #b00000000000000000000000000000000 (size!6168 (_keys!6749 thiss!1504))) (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvsle (size!6168 (_keys!6749 thiss!1504)) (size!6168 lt!125125)))))

(assert (=> d!60715 (= (arrayCountValidKeys!0 lt!125125 #b00000000000000000000000000000000 (size!6168 (_keys!6749 thiss!1504))) lt!125275)))

(assert (= (and d!60715 c!41956) b!249950))

(assert (= (and d!60715 (not c!41956)) b!249952))

(assert (= (and b!249952 c!41957) b!249949))

(assert (= (and b!249952 (not c!41957)) b!249951))

(assert (= (or b!249949 b!249951) bm!23486))

(declare-fun m!266443 () Bool)

(assert (=> bm!23486 m!266443))

(assert (=> b!249952 m!266431))

(assert (=> b!249952 m!266431))

(assert (=> b!249952 m!266439))

(assert (=> b!249700 d!60715))

(declare-fun b!249953 () Bool)

(declare-fun e!162118 () (_ BitVec 32))

(declare-fun call!23490 () (_ BitVec 32))

(assert (=> b!249953 (= e!162118 (bvadd #b00000000000000000000000000000001 call!23490))))

(declare-fun b!249954 () Bool)

(declare-fun e!162117 () (_ BitVec 32))

(assert (=> b!249954 (= e!162117 #b00000000000000000000000000000000)))

(declare-fun bm!23487 () Bool)

(assert (=> bm!23487 (= call!23490 (arrayCountValidKeys!0 (_keys!6749 thiss!1504) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!6168 (_keys!6749 thiss!1504))))))

(declare-fun b!249955 () Bool)

(assert (=> b!249955 (= e!162118 call!23490)))

(declare-fun b!249956 () Bool)

(assert (=> b!249956 (= e!162117 e!162118)))

(declare-fun c!41959 () Bool)

(assert (=> b!249956 (= c!41959 (validKeyInArray!0 (select (arr!5824 (_keys!6749 thiss!1504)) #b00000000000000000000000000000000)))))

(declare-fun d!60717 () Bool)

(declare-fun lt!125276 () (_ BitVec 32))

(assert (=> d!60717 (and (bvsge lt!125276 #b00000000000000000000000000000000) (bvsle lt!125276 (bvsub (size!6168 (_keys!6749 thiss!1504)) #b00000000000000000000000000000000)))))

(assert (=> d!60717 (= lt!125276 e!162117)))

(declare-fun c!41958 () Bool)

(assert (=> d!60717 (= c!41958 (bvsge #b00000000000000000000000000000000 (size!6168 (_keys!6749 thiss!1504))))))

(assert (=> d!60717 (and (bvsle #b00000000000000000000000000000000 (size!6168 (_keys!6749 thiss!1504))) (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvsle (size!6168 (_keys!6749 thiss!1504)) (size!6168 (_keys!6749 thiss!1504))))))

(assert (=> d!60717 (= (arrayCountValidKeys!0 (_keys!6749 thiss!1504) #b00000000000000000000000000000000 (size!6168 (_keys!6749 thiss!1504))) lt!125276)))

(assert (= (and d!60717 c!41958) b!249954))

(assert (= (and d!60717 (not c!41958)) b!249956))

(assert (= (and b!249956 c!41959) b!249953))

(assert (= (and b!249956 (not c!41959)) b!249955))

(assert (= (or b!249953 b!249955) bm!23487))

(declare-fun m!266445 () Bool)

(assert (=> bm!23487 m!266445))

(assert (=> b!249956 m!266369))

(assert (=> b!249956 m!266369))

(assert (=> b!249956 m!266387))

(assert (=> b!249700 d!60717))

(declare-fun d!60719 () Bool)

(assert (=> d!60719 (= (validMask!0 (mask!10789 thiss!1504)) (and (or (= (mask!10789 thiss!1504) #b00000000000000000000000000000111) (= (mask!10789 thiss!1504) #b00000000000000000000000000001111) (= (mask!10789 thiss!1504) #b00000000000000000000000000011111) (= (mask!10789 thiss!1504) #b00000000000000000000000000111111) (= (mask!10789 thiss!1504) #b00000000000000000000000001111111) (= (mask!10789 thiss!1504) #b00000000000000000000000011111111) (= (mask!10789 thiss!1504) #b00000000000000000000000111111111) (= (mask!10789 thiss!1504) #b00000000000000000000001111111111) (= (mask!10789 thiss!1504) #b00000000000000000000011111111111) (= (mask!10789 thiss!1504) #b00000000000000000000111111111111) (= (mask!10789 thiss!1504) #b00000000000000000001111111111111) (= (mask!10789 thiss!1504) #b00000000000000000011111111111111) (= (mask!10789 thiss!1504) #b00000000000000000111111111111111) (= (mask!10789 thiss!1504) #b00000000000000001111111111111111) (= (mask!10789 thiss!1504) #b00000000000000011111111111111111) (= (mask!10789 thiss!1504) #b00000000000000111111111111111111) (= (mask!10789 thiss!1504) #b00000000000001111111111111111111) (= (mask!10789 thiss!1504) #b00000000000011111111111111111111) (= (mask!10789 thiss!1504) #b00000000000111111111111111111111) (= (mask!10789 thiss!1504) #b00000000001111111111111111111111) (= (mask!10789 thiss!1504) #b00000000011111111111111111111111) (= (mask!10789 thiss!1504) #b00000000111111111111111111111111) (= (mask!10789 thiss!1504) #b00000001111111111111111111111111) (= (mask!10789 thiss!1504) #b00000011111111111111111111111111) (= (mask!10789 thiss!1504) #b00000111111111111111111111111111) (= (mask!10789 thiss!1504) #b00001111111111111111111111111111) (= (mask!10789 thiss!1504) #b00011111111111111111111111111111) (= (mask!10789 thiss!1504) #b00111111111111111111111111111111)) (bvsle (mask!10789 thiss!1504) #b00111111111111111111111111111111)))))

(assert (=> b!249700 d!60719))

(declare-fun b!249967 () Bool)

(declare-fun e!162129 () Bool)

(declare-fun e!162130 () Bool)

(assert (=> b!249967 (= e!162129 e!162130)))

(declare-fun c!41962 () Bool)

(assert (=> b!249967 (= c!41962 (validKeyInArray!0 (select (arr!5824 lt!125125) #b00000000000000000000000000000000)))))

(declare-fun b!249968 () Bool)

(declare-fun e!162128 () Bool)

(assert (=> b!249968 (= e!162128 e!162129)))

(declare-fun res!122458 () Bool)

(assert (=> b!249968 (=> (not res!122458) (not e!162129))))

(declare-fun e!162127 () Bool)

(assert (=> b!249968 (= res!122458 (not e!162127))))

(declare-fun res!122457 () Bool)

(assert (=> b!249968 (=> (not res!122457) (not e!162127))))

(assert (=> b!249968 (= res!122457 (validKeyInArray!0 (select (arr!5824 lt!125125) #b00000000000000000000000000000000)))))

(declare-fun d!60721 () Bool)

(declare-fun res!122456 () Bool)

(assert (=> d!60721 (=> res!122456 e!162128)))

(assert (=> d!60721 (= res!122456 (bvsge #b00000000000000000000000000000000 (size!6168 lt!125125)))))

(assert (=> d!60721 (= (arrayNoDuplicates!0 lt!125125 #b00000000000000000000000000000000 Nil!3737) e!162128)))

(declare-fun b!249969 () Bool)

(declare-fun call!23493 () Bool)

(assert (=> b!249969 (= e!162130 call!23493)))

(declare-fun b!249970 () Bool)

(declare-fun contains!1810 (List!3740 (_ BitVec 64)) Bool)

(assert (=> b!249970 (= e!162127 (contains!1810 Nil!3737 (select (arr!5824 lt!125125) #b00000000000000000000000000000000)))))

(declare-fun b!249971 () Bool)

(assert (=> b!249971 (= e!162130 call!23493)))

(declare-fun bm!23490 () Bool)

(assert (=> bm!23490 (= call!23493 (arrayNoDuplicates!0 lt!125125 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (ite c!41962 (Cons!3736 (select (arr!5824 lt!125125) #b00000000000000000000000000000000) Nil!3737) Nil!3737)))))

(assert (= (and d!60721 (not res!122456)) b!249968))

(assert (= (and b!249968 res!122457) b!249970))

(assert (= (and b!249968 res!122458) b!249967))

(assert (= (and b!249967 c!41962) b!249969))

(assert (= (and b!249967 (not c!41962)) b!249971))

(assert (= (or b!249969 b!249971) bm!23490))

(assert (=> b!249967 m!266431))

(assert (=> b!249967 m!266431))

(assert (=> b!249967 m!266439))

(assert (=> b!249968 m!266431))

(assert (=> b!249968 m!266431))

(assert (=> b!249968 m!266439))

(assert (=> b!249970 m!266431))

(assert (=> b!249970 m!266431))

(declare-fun m!266447 () Bool)

(assert (=> b!249970 m!266447))

(assert (=> bm!23490 m!266431))

(declare-fun m!266449 () Bool)

(assert (=> bm!23490 m!266449))

(assert (=> b!249700 d!60721))

(declare-fun d!60723 () Bool)

(declare-fun e!162133 () Bool)

(assert (=> d!60723 e!162133))

(declare-fun res!122461 () Bool)

(assert (=> d!60723 (=> (not res!122461) (not e!162133))))

(assert (=> d!60723 (= res!122461 (and (bvsge index!297 #b00000000000000000000000000000000) (bvslt index!297 (size!6168 (_keys!6749 thiss!1504)))))))

(declare-fun lt!125279 () Unit!7731)

(declare-fun choose!41 (array!12282 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) List!3740) Unit!7731)

(assert (=> d!60723 (= lt!125279 (choose!41 (_keys!6749 thiss!1504) key!932 index!297 #b00000000000000000000000000000000 Nil!3737))))

(assert (=> d!60723 (bvslt (size!6168 (_keys!6749 thiss!1504)) #b01111111111111111111111111111111)))

(assert (=> d!60723 (= (lemmaPutNewValidKeyPreservesNoDuplicate!0 (_keys!6749 thiss!1504) key!932 index!297 #b00000000000000000000000000000000 Nil!3737) lt!125279)))

(declare-fun b!249974 () Bool)

(assert (=> b!249974 (= e!162133 (arrayNoDuplicates!0 (array!12283 (store (arr!5824 (_keys!6749 thiss!1504)) index!297 key!932) (size!6168 (_keys!6749 thiss!1504))) #b00000000000000000000000000000000 Nil!3737))))

(assert (= (and d!60723 res!122461) b!249974))

(declare-fun m!266451 () Bool)

(assert (=> d!60723 m!266451))

(assert (=> b!249974 m!266259))

(declare-fun m!266453 () Bool)

(assert (=> b!249974 m!266453))

(assert (=> b!249700 d!60723))

(assert (=> b!249700 d!60705))

(declare-fun d!60725 () Bool)

(declare-fun e!162136 () Bool)

(assert (=> d!60725 e!162136))

(declare-fun res!122464 () Bool)

(assert (=> d!60725 (=> (not res!122464) (not e!162136))))

(assert (=> d!60725 (= res!122464 (and (bvsge index!297 #b00000000000000000000000000000000) (bvslt index!297 (size!6168 (_keys!6749 thiss!1504)))))))

(declare-fun lt!125282 () Unit!7731)

(declare-fun choose!102 ((_ BitVec 64) array!12282 (_ BitVec 32) (_ BitVec 32)) Unit!7731)

(assert (=> d!60725 (= lt!125282 (choose!102 key!932 (_keys!6749 thiss!1504) index!297 (mask!10789 thiss!1504)))))

(assert (=> d!60725 (validMask!0 (mask!10789 thiss!1504))))

(assert (=> d!60725 (= (lemmaPutValidKeyPreservesForallSeekEntryOrOpen!0 key!932 (_keys!6749 thiss!1504) index!297 (mask!10789 thiss!1504)) lt!125282)))

(declare-fun b!249977 () Bool)

(assert (=> b!249977 (= e!162136 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 (array!12283 (store (arr!5824 (_keys!6749 thiss!1504)) index!297 key!932) (size!6168 (_keys!6749 thiss!1504))) (mask!10789 thiss!1504)))))

(assert (= (and d!60725 res!122464) b!249977))

(declare-fun m!266455 () Bool)

(assert (=> d!60725 m!266455))

(assert (=> d!60725 m!266249))

(assert (=> b!249977 m!266259))

(declare-fun m!266457 () Bool)

(assert (=> b!249977 m!266457))

(assert (=> b!249700 d!60725))

(declare-fun b!249984 () Bool)

(declare-fun e!162141 () Bool)

(assert (=> b!249984 (= e!162141 tp_is_empty!6483)))

(declare-fun mapNonEmpty!11019 () Bool)

(declare-fun mapRes!11019 () Bool)

(declare-fun tp!23133 () Bool)

(assert (=> mapNonEmpty!11019 (= mapRes!11019 (and tp!23133 e!162141))))

(declare-fun mapKey!11019 () (_ BitVec 32))

(declare-fun mapValue!11019 () ValueCell!2898)

(declare-fun mapRest!11019 () (Array (_ BitVec 32) ValueCell!2898))

(assert (=> mapNonEmpty!11019 (= mapRest!11013 (store mapRest!11019 mapKey!11019 mapValue!11019))))

(declare-fun b!249985 () Bool)

(declare-fun e!162142 () Bool)

(assert (=> b!249985 (= e!162142 tp_is_empty!6483)))

(declare-fun mapIsEmpty!11019 () Bool)

(assert (=> mapIsEmpty!11019 mapRes!11019))

(declare-fun condMapEmpty!11019 () Bool)

(declare-fun mapDefault!11019 () ValueCell!2898)

(assert (=> mapNonEmpty!11013 (= condMapEmpty!11019 (= mapRest!11013 ((as const (Array (_ BitVec 32) ValueCell!2898)) mapDefault!11019)))))

(assert (=> mapNonEmpty!11013 (= tp!23123 (and e!162142 mapRes!11019))))

(assert (= (and mapNonEmpty!11013 condMapEmpty!11019) mapIsEmpty!11019))

(assert (= (and mapNonEmpty!11013 (not condMapEmpty!11019)) mapNonEmpty!11019))

(assert (= (and mapNonEmpty!11019 ((_ is ValueCellFull!2898) mapValue!11019)) b!249984))

(assert (= (and mapNonEmpty!11013 ((_ is ValueCellFull!2898) mapDefault!11019)) b!249985))

(declare-fun m!266459 () Bool)

(assert (=> mapNonEmpty!11019 m!266459))

(declare-fun b_lambda!8107 () Bool)

(assert (= b_lambda!8105 (or (and b!249715 b_free!6621) b_lambda!8107)))

(check-sat (not bm!23479) (not d!60707) (not b!249854) (not bm!23469) (not bm!23471) (not b!249788) (not bm!23468) (not d!60695) (not mapNonEmpty!11019) (not bm!23470) (not b_next!6621) (not b!249801) (not b!249803) (not b!249862) (not b!249786) (not b!249940) (not d!60689) (not d!60693) (not b!249856) (not d!60711) (not b!249925) (not d!60709) (not b!249926) (not b!249787) (not b!249865) (not b!249977) (not d!60697) (not b!249863) (not b!249858) (not d!60723) (not bm!23480) (not bm!23483) (not b_lambda!8107) (not b!249892) b_and!13657 (not b!249952) (not b!249857) (not bm!23486) (not d!60687) (not b!249974) (not bm!23487) tp_is_empty!6483 (not d!60725) (not b!249937) (not b!249846) (not b!249793) (not b!249928) (not b!249968) (not b!249970) (not bm!23490) (not b!249886) (not b!249956) (not b!249967))
(check-sat b_and!13657 (not b_next!6621))
(get-model)

(declare-fun d!60727 () Bool)

(assert (=> d!60727 (= (validKeyInArray!0 (select (arr!5824 lt!125125) #b00000000000000000000000000000000)) (and (not (= (select (arr!5824 lt!125125) #b00000000000000000000000000000000) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!5824 lt!125125) #b00000000000000000000000000000000) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!249952 d!60727))

(declare-fun d!60729 () Bool)

(assert (=> d!60729 (isDefined!238 (getValueByKey!296 (toList!1896 (getCurrentListMap!1419 (_keys!6749 thiss!1504) (_values!4600 thiss!1504) (mask!10789 thiss!1504) (extraKeys!4354 thiss!1504) (zeroValue!4458 thiss!1504) (minValue!4458 thiss!1504) #b00000000000000000000000000000000 (defaultEntry!4617 thiss!1504))) key!932))))

(declare-fun lt!125285 () Unit!7731)

(declare-fun choose!1190 (List!3739 (_ BitVec 64)) Unit!7731)

(assert (=> d!60729 (= lt!125285 (choose!1190 (toList!1896 (getCurrentListMap!1419 (_keys!6749 thiss!1504) (_values!4600 thiss!1504) (mask!10789 thiss!1504) (extraKeys!4354 thiss!1504) (zeroValue!4458 thiss!1504) (minValue!4458 thiss!1504) #b00000000000000000000000000000000 (defaultEntry!4617 thiss!1504))) key!932))))

(declare-fun e!162145 () Bool)

(assert (=> d!60729 e!162145))

(declare-fun res!122467 () Bool)

(assert (=> d!60729 (=> (not res!122467) (not e!162145))))

(declare-fun isStrictlySorted!365 (List!3739) Bool)

(assert (=> d!60729 (= res!122467 (isStrictlySorted!365 (toList!1896 (getCurrentListMap!1419 (_keys!6749 thiss!1504) (_values!4600 thiss!1504) (mask!10789 thiss!1504) (extraKeys!4354 thiss!1504) (zeroValue!4458 thiss!1504) (minValue!4458 thiss!1504) #b00000000000000000000000000000000 (defaultEntry!4617 thiss!1504)))))))

(assert (=> d!60729 (= (lemmaContainsKeyImpliesGetValueByKeyDefined!237 (toList!1896 (getCurrentListMap!1419 (_keys!6749 thiss!1504) (_values!4600 thiss!1504) (mask!10789 thiss!1504) (extraKeys!4354 thiss!1504) (zeroValue!4458 thiss!1504) (minValue!4458 thiss!1504) #b00000000000000000000000000000000 (defaultEntry!4617 thiss!1504))) key!932) lt!125285)))

(declare-fun b!249988 () Bool)

(assert (=> b!249988 (= e!162145 (containsKey!288 (toList!1896 (getCurrentListMap!1419 (_keys!6749 thiss!1504) (_values!4600 thiss!1504) (mask!10789 thiss!1504) (extraKeys!4354 thiss!1504) (zeroValue!4458 thiss!1504) (minValue!4458 thiss!1504) #b00000000000000000000000000000000 (defaultEntry!4617 thiss!1504))) key!932))))

(assert (= (and d!60729 res!122467) b!249988))

(assert (=> d!60729 m!266333))

(assert (=> d!60729 m!266333))

(assert (=> d!60729 m!266335))

(declare-fun m!266461 () Bool)

(assert (=> d!60729 m!266461))

(declare-fun m!266463 () Bool)

(assert (=> d!60729 m!266463))

(assert (=> b!249988 m!266329))

(assert (=> b!249801 d!60729))

(declare-fun d!60731 () Bool)

(declare-fun isEmpty!531 (Option!302) Bool)

(assert (=> d!60731 (= (isDefined!238 (getValueByKey!296 (toList!1896 (getCurrentListMap!1419 (_keys!6749 thiss!1504) (_values!4600 thiss!1504) (mask!10789 thiss!1504) (extraKeys!4354 thiss!1504) (zeroValue!4458 thiss!1504) (minValue!4458 thiss!1504) #b00000000000000000000000000000000 (defaultEntry!4617 thiss!1504))) key!932)) (not (isEmpty!531 (getValueByKey!296 (toList!1896 (getCurrentListMap!1419 (_keys!6749 thiss!1504) (_values!4600 thiss!1504) (mask!10789 thiss!1504) (extraKeys!4354 thiss!1504) (zeroValue!4458 thiss!1504) (minValue!4458 thiss!1504) #b00000000000000000000000000000000 (defaultEntry!4617 thiss!1504))) key!932))))))

(declare-fun bs!8965 () Bool)

(assert (= bs!8965 d!60731))

(assert (=> bs!8965 m!266333))

(declare-fun m!266465 () Bool)

(assert (=> bs!8965 m!266465))

(assert (=> b!249801 d!60731))

(declare-fun b!249999 () Bool)

(declare-fun e!162151 () Option!302)

(assert (=> b!249999 (= e!162151 (getValueByKey!296 (t!8778 (toList!1896 (getCurrentListMap!1419 (_keys!6749 thiss!1504) (_values!4600 thiss!1504) (mask!10789 thiss!1504) (extraKeys!4354 thiss!1504) (zeroValue!4458 thiss!1504) (minValue!4458 thiss!1504) #b00000000000000000000000000000000 (defaultEntry!4617 thiss!1504)))) key!932))))

(declare-fun b!249998 () Bool)

(declare-fun e!162150 () Option!302)

(assert (=> b!249998 (= e!162150 e!162151)))

(declare-fun c!41968 () Bool)

(assert (=> b!249998 (= c!41968 (and ((_ is Cons!3735) (toList!1896 (getCurrentListMap!1419 (_keys!6749 thiss!1504) (_values!4600 thiss!1504) (mask!10789 thiss!1504) (extraKeys!4354 thiss!1504) (zeroValue!4458 thiss!1504) (minValue!4458 thiss!1504) #b00000000000000000000000000000000 (defaultEntry!4617 thiss!1504)))) (not (= (_1!2427 (h!4394 (toList!1896 (getCurrentListMap!1419 (_keys!6749 thiss!1504) (_values!4600 thiss!1504) (mask!10789 thiss!1504) (extraKeys!4354 thiss!1504) (zeroValue!4458 thiss!1504) (minValue!4458 thiss!1504) #b00000000000000000000000000000000 (defaultEntry!4617 thiss!1504))))) key!932))))))

(declare-fun b!250000 () Bool)

(assert (=> b!250000 (= e!162151 None!300)))

(declare-fun d!60733 () Bool)

(declare-fun c!41967 () Bool)

(assert (=> d!60733 (= c!41967 (and ((_ is Cons!3735) (toList!1896 (getCurrentListMap!1419 (_keys!6749 thiss!1504) (_values!4600 thiss!1504) (mask!10789 thiss!1504) (extraKeys!4354 thiss!1504) (zeroValue!4458 thiss!1504) (minValue!4458 thiss!1504) #b00000000000000000000000000000000 (defaultEntry!4617 thiss!1504)))) (= (_1!2427 (h!4394 (toList!1896 (getCurrentListMap!1419 (_keys!6749 thiss!1504) (_values!4600 thiss!1504) (mask!10789 thiss!1504) (extraKeys!4354 thiss!1504) (zeroValue!4458 thiss!1504) (minValue!4458 thiss!1504) #b00000000000000000000000000000000 (defaultEntry!4617 thiss!1504))))) key!932)))))

(assert (=> d!60733 (= (getValueByKey!296 (toList!1896 (getCurrentListMap!1419 (_keys!6749 thiss!1504) (_values!4600 thiss!1504) (mask!10789 thiss!1504) (extraKeys!4354 thiss!1504) (zeroValue!4458 thiss!1504) (minValue!4458 thiss!1504) #b00000000000000000000000000000000 (defaultEntry!4617 thiss!1504))) key!932) e!162150)))

(declare-fun b!249997 () Bool)

(assert (=> b!249997 (= e!162150 (Some!301 (_2!2427 (h!4394 (toList!1896 (getCurrentListMap!1419 (_keys!6749 thiss!1504) (_values!4600 thiss!1504) (mask!10789 thiss!1504) (extraKeys!4354 thiss!1504) (zeroValue!4458 thiss!1504) (minValue!4458 thiss!1504) #b00000000000000000000000000000000 (defaultEntry!4617 thiss!1504)))))))))

(assert (= (and d!60733 c!41967) b!249997))

(assert (= (and d!60733 (not c!41967)) b!249998))

(assert (= (and b!249998 c!41968) b!249999))

(assert (= (and b!249998 (not c!41968)) b!250000))

(declare-fun m!266467 () Bool)

(assert (=> b!249999 m!266467))

(assert (=> b!249801 d!60733))

(assert (=> b!249786 d!60717))

(declare-fun d!60735 () Bool)

(declare-fun get!2993 (Option!302) V!8291)

(assert (=> d!60735 (= (apply!239 lt!125222 #b0000000000000000000000000000000000000000000000000000000000000000) (get!2993 (getValueByKey!296 (toList!1896 lt!125222) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun bs!8966 () Bool)

(assert (= bs!8966 d!60735))

(declare-fun m!266469 () Bool)

(assert (=> bs!8966 m!266469))

(assert (=> bs!8966 m!266469))

(declare-fun m!266471 () Bool)

(assert (=> bs!8966 m!266471))

(assert (=> b!249862 d!60735))

(declare-fun d!60737 () Bool)

(declare-fun e!162152 () Bool)

(assert (=> d!60737 e!162152))

(declare-fun res!122468 () Bool)

(assert (=> d!60737 (=> res!122468 e!162152)))

(declare-fun lt!125286 () Bool)

(assert (=> d!60737 (= res!122468 (not lt!125286))))

(declare-fun lt!125288 () Bool)

(assert (=> d!60737 (= lt!125286 lt!125288)))

(declare-fun lt!125289 () Unit!7731)

(declare-fun e!162153 () Unit!7731)

(assert (=> d!60737 (= lt!125289 e!162153)))

(declare-fun c!41969 () Bool)

(assert (=> d!60737 (= c!41969 lt!125288)))

(assert (=> d!60737 (= lt!125288 (containsKey!288 (toList!1896 lt!125222) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> d!60737 (= (contains!1809 lt!125222 #b0000000000000000000000000000000000000000000000000000000000000000) lt!125286)))

(declare-fun b!250001 () Bool)

(declare-fun lt!125287 () Unit!7731)

(assert (=> b!250001 (= e!162153 lt!125287)))

(assert (=> b!250001 (= lt!125287 (lemmaContainsKeyImpliesGetValueByKeyDefined!237 (toList!1896 lt!125222) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!250001 (isDefined!238 (getValueByKey!296 (toList!1896 lt!125222) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!250002 () Bool)

(declare-fun Unit!7738 () Unit!7731)

(assert (=> b!250002 (= e!162153 Unit!7738)))

(declare-fun b!250003 () Bool)

(assert (=> b!250003 (= e!162152 (isDefined!238 (getValueByKey!296 (toList!1896 lt!125222) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (= (and d!60737 c!41969) b!250001))

(assert (= (and d!60737 (not c!41969)) b!250002))

(assert (= (and d!60737 (not res!122468)) b!250003))

(declare-fun m!266473 () Bool)

(assert (=> d!60737 m!266473))

(declare-fun m!266475 () Bool)

(assert (=> b!250001 m!266475))

(assert (=> b!250001 m!266469))

(assert (=> b!250001 m!266469))

(declare-fun m!266477 () Bool)

(assert (=> b!250001 m!266477))

(assert (=> b!250003 m!266469))

(assert (=> b!250003 m!266469))

(assert (=> b!250003 m!266477))

(assert (=> bm!23469 d!60737))

(declare-fun b!250004 () Bool)

(declare-fun e!162155 () (_ BitVec 32))

(declare-fun call!23494 () (_ BitVec 32))

(assert (=> b!250004 (= e!162155 (bvadd #b00000000000000000000000000000001 call!23494))))

(declare-fun b!250005 () Bool)

(declare-fun e!162154 () (_ BitVec 32))

(assert (=> b!250005 (= e!162154 #b00000000000000000000000000000000)))

(declare-fun bm!23491 () Bool)

(assert (=> bm!23491 (= call!23494 (arrayCountValidKeys!0 lt!125125 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001 #b00000000000000000000000000000001) (size!6168 (_keys!6749 thiss!1504))))))

(declare-fun b!250006 () Bool)

(assert (=> b!250006 (= e!162155 call!23494)))

(declare-fun b!250007 () Bool)

(assert (=> b!250007 (= e!162154 e!162155)))

(declare-fun c!41971 () Bool)

(assert (=> b!250007 (= c!41971 (validKeyInArray!0 (select (arr!5824 lt!125125) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001))))))

(declare-fun d!60739 () Bool)

(declare-fun lt!125290 () (_ BitVec 32))

(assert (=> d!60739 (and (bvsge lt!125290 #b00000000000000000000000000000000) (bvsle lt!125290 (bvsub (size!6168 lt!125125) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001))))))

(assert (=> d!60739 (= lt!125290 e!162154)))

(declare-fun c!41970 () Bool)

(assert (=> d!60739 (= c!41970 (bvsge (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!6168 (_keys!6749 thiss!1504))))))

(assert (=> d!60739 (and (bvsle (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!6168 (_keys!6749 thiss!1504))) (bvsge (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) #b00000000000000000000000000000000) (bvsle (size!6168 (_keys!6749 thiss!1504)) (size!6168 lt!125125)))))

(assert (=> d!60739 (= (arrayCountValidKeys!0 lt!125125 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!6168 (_keys!6749 thiss!1504))) lt!125290)))

(assert (= (and d!60739 c!41970) b!250005))

(assert (= (and d!60739 (not c!41970)) b!250007))

(assert (= (and b!250007 c!41971) b!250004))

(assert (= (and b!250007 (not c!41971)) b!250006))

(assert (= (or b!250004 b!250006) bm!23491))

(declare-fun m!266479 () Bool)

(assert (=> bm!23491 m!266479))

(declare-fun m!266481 () Bool)

(assert (=> b!250007 m!266481))

(assert (=> b!250007 m!266481))

(declare-fun m!266483 () Bool)

(assert (=> b!250007 m!266483))

(assert (=> bm!23486 d!60739))

(declare-fun b!250008 () Bool)

(declare-fun e!162158 () Bool)

(declare-fun e!162159 () Bool)

(assert (=> b!250008 (= e!162158 e!162159)))

(declare-fun c!41972 () Bool)

(assert (=> b!250008 (= c!41972 (validKeyInArray!0 (select (arr!5824 (_keys!6749 thiss!1504)) #b00000000000000000000000000000000)))))

(declare-fun b!250009 () Bool)

(declare-fun e!162157 () Bool)

(assert (=> b!250009 (= e!162157 e!162158)))

(declare-fun res!122471 () Bool)

(assert (=> b!250009 (=> (not res!122471) (not e!162158))))

(declare-fun e!162156 () Bool)

(assert (=> b!250009 (= res!122471 (not e!162156))))

(declare-fun res!122470 () Bool)

(assert (=> b!250009 (=> (not res!122470) (not e!162156))))

(assert (=> b!250009 (= res!122470 (validKeyInArray!0 (select (arr!5824 (_keys!6749 thiss!1504)) #b00000000000000000000000000000000)))))

(declare-fun d!60741 () Bool)

(declare-fun res!122469 () Bool)

(assert (=> d!60741 (=> res!122469 e!162157)))

(assert (=> d!60741 (= res!122469 (bvsge #b00000000000000000000000000000000 (size!6168 (_keys!6749 thiss!1504))))))

(assert (=> d!60741 (= (arrayNoDuplicates!0 (_keys!6749 thiss!1504) #b00000000000000000000000000000000 Nil!3737) e!162157)))

(declare-fun b!250010 () Bool)

(declare-fun call!23495 () Bool)

(assert (=> b!250010 (= e!162159 call!23495)))

(declare-fun b!250011 () Bool)

(assert (=> b!250011 (= e!162156 (contains!1810 Nil!3737 (select (arr!5824 (_keys!6749 thiss!1504)) #b00000000000000000000000000000000)))))

(declare-fun b!250012 () Bool)

(assert (=> b!250012 (= e!162159 call!23495)))

(declare-fun bm!23492 () Bool)

(assert (=> bm!23492 (= call!23495 (arrayNoDuplicates!0 (_keys!6749 thiss!1504) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (ite c!41972 (Cons!3736 (select (arr!5824 (_keys!6749 thiss!1504)) #b00000000000000000000000000000000) Nil!3737) Nil!3737)))))

(assert (= (and d!60741 (not res!122469)) b!250009))

(assert (= (and b!250009 res!122470) b!250011))

(assert (= (and b!250009 res!122471) b!250008))

(assert (= (and b!250008 c!41972) b!250010))

(assert (= (and b!250008 (not c!41972)) b!250012))

(assert (= (or b!250010 b!250012) bm!23492))

(assert (=> b!250008 m!266369))

(assert (=> b!250008 m!266369))

(assert (=> b!250008 m!266387))

(assert (=> b!250009 m!266369))

(assert (=> b!250009 m!266369))

(assert (=> b!250009 m!266387))

(assert (=> b!250011 m!266369))

(assert (=> b!250011 m!266369))

(declare-fun m!266485 () Bool)

(assert (=> b!250011 m!266485))

(assert (=> bm!23492 m!266369))

(declare-fun m!266487 () Bool)

(assert (=> bm!23492 m!266487))

(assert (=> b!249788 d!60741))

(declare-fun d!60743 () Bool)

(assert (=> d!60743 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 (array!12283 (store (arr!5824 (_keys!6749 thiss!1504)) index!297 key!932) (size!6168 (_keys!6749 thiss!1504))) (mask!10789 thiss!1504))))

(assert (=> d!60743 true))

(declare-fun _$56!24 () Unit!7731)

(assert (=> d!60743 (= (choose!102 key!932 (_keys!6749 thiss!1504) index!297 (mask!10789 thiss!1504)) _$56!24)))

(declare-fun bs!8967 () Bool)

(assert (= bs!8967 d!60743))

(assert (=> bs!8967 m!266259))

(assert (=> bs!8967 m!266457))

(assert (=> d!60725 d!60743))

(assert (=> d!60725 d!60719))

(declare-fun d!60745 () Bool)

(assert (=> d!60745 (= (inRange!0 (index!6687 lt!125164) (mask!10789 thiss!1504)) (and (bvsge (index!6687 lt!125164) #b00000000000000000000000000000000) (bvslt (index!6687 lt!125164) (bvadd (mask!10789 thiss!1504) #b00000000000000000000000000000001))))))

(assert (=> b!249793 d!60745))

(declare-fun d!60747 () Bool)

(assert (=> d!60747 (= (validKeyInArray!0 (select (arr!5824 (_keys!6749 thiss!1504)) #b00000000000000000000000000000000)) (and (not (= (select (arr!5824 (_keys!6749 thiss!1504)) #b00000000000000000000000000000000) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!5824 (_keys!6749 thiss!1504)) #b00000000000000000000000000000000) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!249956 d!60747))

(declare-fun d!60749 () Bool)

(assert (=> d!60749 (arrayNoDuplicates!0 (array!12283 (store (arr!5824 (_keys!6749 thiss!1504)) index!297 key!932) (size!6168 (_keys!6749 thiss!1504))) #b00000000000000000000000000000000 Nil!3737)))

(assert (=> d!60749 true))

(declare-fun _$65!77 () Unit!7731)

(assert (=> d!60749 (= (choose!41 (_keys!6749 thiss!1504) key!932 index!297 #b00000000000000000000000000000000 Nil!3737) _$65!77)))

(declare-fun bs!8968 () Bool)

(assert (= bs!8968 d!60749))

(assert (=> bs!8968 m!266259))

(assert (=> bs!8968 m!266453))

(assert (=> d!60723 d!60749))

(declare-fun d!60751 () Bool)

(declare-fun e!162160 () Bool)

(assert (=> d!60751 e!162160))

(declare-fun res!122472 () Bool)

(assert (=> d!60751 (=> res!122472 e!162160)))

(declare-fun lt!125291 () Bool)

(assert (=> d!60751 (= res!122472 (not lt!125291))))

(declare-fun lt!125293 () Bool)

(assert (=> d!60751 (= lt!125291 lt!125293)))

(declare-fun lt!125294 () Unit!7731)

(declare-fun e!162161 () Unit!7731)

(assert (=> d!60751 (= lt!125294 e!162161)))

(declare-fun c!41973 () Bool)

(assert (=> d!60751 (= c!41973 lt!125293)))

(assert (=> d!60751 (= lt!125293 (containsKey!288 (toList!1896 lt!125222) (select (arr!5824 (_keys!6749 thiss!1504)) #b00000000000000000000000000000000)))))

(assert (=> d!60751 (= (contains!1809 lt!125222 (select (arr!5824 (_keys!6749 thiss!1504)) #b00000000000000000000000000000000)) lt!125291)))

(declare-fun b!250013 () Bool)

(declare-fun lt!125292 () Unit!7731)

(assert (=> b!250013 (= e!162161 lt!125292)))

(assert (=> b!250013 (= lt!125292 (lemmaContainsKeyImpliesGetValueByKeyDefined!237 (toList!1896 lt!125222) (select (arr!5824 (_keys!6749 thiss!1504)) #b00000000000000000000000000000000)))))

(assert (=> b!250013 (isDefined!238 (getValueByKey!296 (toList!1896 lt!125222) (select (arr!5824 (_keys!6749 thiss!1504)) #b00000000000000000000000000000000)))))

(declare-fun b!250014 () Bool)

(declare-fun Unit!7739 () Unit!7731)

(assert (=> b!250014 (= e!162161 Unit!7739)))

(declare-fun b!250015 () Bool)

(assert (=> b!250015 (= e!162160 (isDefined!238 (getValueByKey!296 (toList!1896 lt!125222) (select (arr!5824 (_keys!6749 thiss!1504)) #b00000000000000000000000000000000))))))

(assert (= (and d!60751 c!41973) b!250013))

(assert (= (and d!60751 (not c!41973)) b!250014))

(assert (= (and d!60751 (not res!122472)) b!250015))

(assert (=> d!60751 m!266369))

(declare-fun m!266489 () Bool)

(assert (=> d!60751 m!266489))

(assert (=> b!250013 m!266369))

(declare-fun m!266491 () Bool)

(assert (=> b!250013 m!266491))

(assert (=> b!250013 m!266369))

(declare-fun m!266493 () Bool)

(assert (=> b!250013 m!266493))

(assert (=> b!250013 m!266493))

(declare-fun m!266495 () Bool)

(assert (=> b!250013 m!266495))

(assert (=> b!250015 m!266369))

(assert (=> b!250015 m!266493))

(assert (=> b!250015 m!266493))

(assert (=> b!250015 m!266495))

(assert (=> b!249846 d!60751))

(declare-fun b!250016 () Bool)

(declare-fun e!162163 () (_ BitVec 32))

(declare-fun call!23496 () (_ BitVec 32))

(assert (=> b!250016 (= e!162163 (bvadd #b00000000000000000000000000000001 call!23496))))

(declare-fun b!250017 () Bool)

(declare-fun e!162162 () (_ BitVec 32))

(assert (=> b!250017 (= e!162162 #b00000000000000000000000000000000)))

(declare-fun bm!23493 () Bool)

(assert (=> bm!23493 (= call!23496 (arrayCountValidKeys!0 (_keys!6749 thiss!1504) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001 #b00000000000000000000000000000001) (size!6168 (_keys!6749 thiss!1504))))))

(declare-fun b!250018 () Bool)

(assert (=> b!250018 (= e!162163 call!23496)))

(declare-fun b!250019 () Bool)

(assert (=> b!250019 (= e!162162 e!162163)))

(declare-fun c!41975 () Bool)

(assert (=> b!250019 (= c!41975 (validKeyInArray!0 (select (arr!5824 (_keys!6749 thiss!1504)) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001))))))

(declare-fun d!60753 () Bool)

(declare-fun lt!125295 () (_ BitVec 32))

(assert (=> d!60753 (and (bvsge lt!125295 #b00000000000000000000000000000000) (bvsle lt!125295 (bvsub (size!6168 (_keys!6749 thiss!1504)) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001))))))

(assert (=> d!60753 (= lt!125295 e!162162)))

(declare-fun c!41974 () Bool)

(assert (=> d!60753 (= c!41974 (bvsge (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!6168 (_keys!6749 thiss!1504))))))

(assert (=> d!60753 (and (bvsle (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!6168 (_keys!6749 thiss!1504))) (bvsge (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) #b00000000000000000000000000000000) (bvsle (size!6168 (_keys!6749 thiss!1504)) (size!6168 (_keys!6749 thiss!1504))))))

(assert (=> d!60753 (= (arrayCountValidKeys!0 (_keys!6749 thiss!1504) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!6168 (_keys!6749 thiss!1504))) lt!125295)))

(assert (= (and d!60753 c!41974) b!250017))

(assert (= (and d!60753 (not c!41974)) b!250019))

(assert (= (and b!250019 c!41975) b!250016))

(assert (= (and b!250019 (not c!41975)) b!250018))

(assert (= (or b!250016 b!250018) bm!23493))

(declare-fun m!266497 () Bool)

(assert (=> bm!23493 m!266497))

(declare-fun m!266499 () Bool)

(assert (=> b!250019 m!266499))

(assert (=> b!250019 m!266499))

(declare-fun m!266501 () Bool)

(assert (=> b!250019 m!266501))

(assert (=> bm!23487 d!60753))

(declare-fun b!250038 () Bool)

(declare-fun e!162174 () SeekEntryResult!1129)

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!250038 (= e!162174 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (nextIndex!0 (toIndex!0 key!932 (mask!10789 thiss!1504)) #b00000000000000000000000000000000 (mask!10789 thiss!1504)) key!932 (_keys!6749 thiss!1504) (mask!10789 thiss!1504)))))

(declare-fun b!250039 () Bool)

(declare-fun e!162175 () SeekEntryResult!1129)

(assert (=> b!250039 (= e!162175 (Intermediate!1129 true (toIndex!0 key!932 (mask!10789 thiss!1504)) #b00000000000000000000000000000000))))

(declare-fun b!250040 () Bool)

(declare-fun lt!125300 () SeekEntryResult!1129)

(assert (=> b!250040 (and (bvsge (index!6688 lt!125300) #b00000000000000000000000000000000) (bvslt (index!6688 lt!125300) (size!6168 (_keys!6749 thiss!1504))))))

(declare-fun res!122479 () Bool)

(assert (=> b!250040 (= res!122479 (= (select (arr!5824 (_keys!6749 thiss!1504)) (index!6688 lt!125300)) key!932))))

(declare-fun e!162178 () Bool)

(assert (=> b!250040 (=> res!122479 e!162178)))

(declare-fun e!162176 () Bool)

(assert (=> b!250040 (= e!162176 e!162178)))

(declare-fun b!250041 () Bool)

(declare-fun e!162177 () Bool)

(assert (=> b!250041 (= e!162177 (bvsge (x!24653 lt!125300) #b01111111111111111111111111111110))))

(declare-fun b!250042 () Bool)

(assert (=> b!250042 (and (bvsge (index!6688 lt!125300) #b00000000000000000000000000000000) (bvslt (index!6688 lt!125300) (size!6168 (_keys!6749 thiss!1504))))))

(assert (=> b!250042 (= e!162178 (= (select (arr!5824 (_keys!6749 thiss!1504)) (index!6688 lt!125300)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!250043 () Bool)

(assert (=> b!250043 (and (bvsge (index!6688 lt!125300) #b00000000000000000000000000000000) (bvslt (index!6688 lt!125300) (size!6168 (_keys!6749 thiss!1504))))))

(declare-fun res!122480 () Bool)

(assert (=> b!250043 (= res!122480 (= (select (arr!5824 (_keys!6749 thiss!1504)) (index!6688 lt!125300)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!250043 (=> res!122480 e!162178)))

(declare-fun b!250044 () Bool)

(assert (=> b!250044 (= e!162174 (Intermediate!1129 false (toIndex!0 key!932 (mask!10789 thiss!1504)) #b00000000000000000000000000000000))))

(declare-fun d!60755 () Bool)

(assert (=> d!60755 e!162177))

(declare-fun c!41983 () Bool)

(assert (=> d!60755 (= c!41983 (and ((_ is Intermediate!1129) lt!125300) (undefined!1941 lt!125300)))))

(assert (=> d!60755 (= lt!125300 e!162175)))

(declare-fun c!41984 () Bool)

(assert (=> d!60755 (= c!41984 (bvsge #b00000000000000000000000000000000 #b01111111111111111111111111111110))))

(declare-fun lt!125301 () (_ BitVec 64))

(assert (=> d!60755 (= lt!125301 (select (arr!5824 (_keys!6749 thiss!1504)) (toIndex!0 key!932 (mask!10789 thiss!1504))))))

(assert (=> d!60755 (validMask!0 (mask!10789 thiss!1504))))

(assert (=> d!60755 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 key!932 (mask!10789 thiss!1504)) key!932 (_keys!6749 thiss!1504) (mask!10789 thiss!1504)) lt!125300)))

(declare-fun b!250045 () Bool)

(assert (=> b!250045 (= e!162177 e!162176)))

(declare-fun res!122481 () Bool)

(assert (=> b!250045 (= res!122481 (and ((_ is Intermediate!1129) lt!125300) (not (undefined!1941 lt!125300)) (bvslt (x!24653 lt!125300) #b01111111111111111111111111111110) (bvsge (x!24653 lt!125300) #b00000000000000000000000000000000) (bvsge (x!24653 lt!125300) #b00000000000000000000000000000000)))))

(assert (=> b!250045 (=> (not res!122481) (not e!162176))))

(declare-fun b!250046 () Bool)

(assert (=> b!250046 (= e!162175 e!162174)))

(declare-fun c!41982 () Bool)

(assert (=> b!250046 (= c!41982 (or (= lt!125301 key!932) (= (bvadd lt!125301 lt!125301) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (= (and d!60755 c!41984) b!250039))

(assert (= (and d!60755 (not c!41984)) b!250046))

(assert (= (and b!250046 c!41982) b!250044))

(assert (= (and b!250046 (not c!41982)) b!250038))

(assert (= (and d!60755 c!41983) b!250041))

(assert (= (and d!60755 (not c!41983)) b!250045))

(assert (= (and b!250045 res!122481) b!250040))

(assert (= (and b!250040 (not res!122479)) b!250043))

(assert (= (and b!250043 (not res!122480)) b!250042))

(assert (=> d!60755 m!266399))

(declare-fun m!266503 () Bool)

(assert (=> d!60755 m!266503))

(assert (=> d!60755 m!266249))

(declare-fun m!266505 () Bool)

(assert (=> b!250043 m!266505))

(assert (=> b!250042 m!266505))

(assert (=> b!250040 m!266505))

(assert (=> b!250038 m!266399))

(declare-fun m!266507 () Bool)

(assert (=> b!250038 m!266507))

(assert (=> b!250038 m!266507))

(declare-fun m!266509 () Bool)

(assert (=> b!250038 m!266509))

(assert (=> d!60697 d!60755))

(declare-fun d!60757 () Bool)

(declare-fun lt!125307 () (_ BitVec 32))

(declare-fun lt!125306 () (_ BitVec 32))

(assert (=> d!60757 (= lt!125307 (bvmul (bvxor lt!125306 (bvlshr lt!125306 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))))

(assert (=> d!60757 (= lt!125306 ((_ extract 31 0) (bvand (bvxor key!932 (bvlshr key!932 #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))))

(assert (=> d!60757 (and (bvsge (mask!10789 thiss!1504) #b00000000000000000000000000000000) (let ((res!122482 (let ((h!4396 ((_ extract 31 0) (bvand (bvxor key!932 (bvlshr key!932 #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))) (let ((x!24669 (bvmul (bvxor h!4396 (bvlshr h!4396 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))) (bvand (bvxor x!24669 (bvlshr x!24669 #b00000000000000000000000000001101)) (mask!10789 thiss!1504)))))) (and (bvslt res!122482 (bvadd (mask!10789 thiss!1504) #b00000000000000000000000000000001)) (bvsge res!122482 #b00000000000000000000000000000000))))))

(assert (=> d!60757 (= (toIndex!0 key!932 (mask!10789 thiss!1504)) (bvand (bvxor lt!125307 (bvlshr lt!125307 #b00000000000000000000000000001101)) (mask!10789 thiss!1504)))))

(assert (=> d!60697 d!60757))

(assert (=> d!60697 d!60719))

(declare-fun b!250047 () Bool)

(declare-fun e!162181 () Bool)

(declare-fun e!162182 () Bool)

(assert (=> b!250047 (= e!162181 e!162182)))

(declare-fun c!41985 () Bool)

(assert (=> b!250047 (= c!41985 (validKeyInArray!0 (select (arr!5824 (array!12283 (store (arr!5824 (_keys!6749 thiss!1504)) index!297 key!932) (size!6168 (_keys!6749 thiss!1504)))) #b00000000000000000000000000000000)))))

(declare-fun b!250048 () Bool)

(declare-fun e!162180 () Bool)

(assert (=> b!250048 (= e!162180 e!162181)))

(declare-fun res!122485 () Bool)

(assert (=> b!250048 (=> (not res!122485) (not e!162181))))

(declare-fun e!162179 () Bool)

(assert (=> b!250048 (= res!122485 (not e!162179))))

(declare-fun res!122484 () Bool)

(assert (=> b!250048 (=> (not res!122484) (not e!162179))))

(assert (=> b!250048 (= res!122484 (validKeyInArray!0 (select (arr!5824 (array!12283 (store (arr!5824 (_keys!6749 thiss!1504)) index!297 key!932) (size!6168 (_keys!6749 thiss!1504)))) #b00000000000000000000000000000000)))))

(declare-fun d!60759 () Bool)

(declare-fun res!122483 () Bool)

(assert (=> d!60759 (=> res!122483 e!162180)))

(assert (=> d!60759 (= res!122483 (bvsge #b00000000000000000000000000000000 (size!6168 (array!12283 (store (arr!5824 (_keys!6749 thiss!1504)) index!297 key!932) (size!6168 (_keys!6749 thiss!1504))))))))

(assert (=> d!60759 (= (arrayNoDuplicates!0 (array!12283 (store (arr!5824 (_keys!6749 thiss!1504)) index!297 key!932) (size!6168 (_keys!6749 thiss!1504))) #b00000000000000000000000000000000 Nil!3737) e!162180)))

(declare-fun b!250049 () Bool)

(declare-fun call!23497 () Bool)

(assert (=> b!250049 (= e!162182 call!23497)))

(declare-fun b!250050 () Bool)

(assert (=> b!250050 (= e!162179 (contains!1810 Nil!3737 (select (arr!5824 (array!12283 (store (arr!5824 (_keys!6749 thiss!1504)) index!297 key!932) (size!6168 (_keys!6749 thiss!1504)))) #b00000000000000000000000000000000)))))

(declare-fun b!250051 () Bool)

(assert (=> b!250051 (= e!162182 call!23497)))

(declare-fun bm!23494 () Bool)

(assert (=> bm!23494 (= call!23497 (arrayNoDuplicates!0 (array!12283 (store (arr!5824 (_keys!6749 thiss!1504)) index!297 key!932) (size!6168 (_keys!6749 thiss!1504))) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (ite c!41985 (Cons!3736 (select (arr!5824 (array!12283 (store (arr!5824 (_keys!6749 thiss!1504)) index!297 key!932) (size!6168 (_keys!6749 thiss!1504)))) #b00000000000000000000000000000000) Nil!3737) Nil!3737)))))

(assert (= (and d!60759 (not res!122483)) b!250048))

(assert (= (and b!250048 res!122484) b!250050))

(assert (= (and b!250048 res!122485) b!250047))

(assert (= (and b!250047 c!41985) b!250049))

(assert (= (and b!250047 (not c!41985)) b!250051))

(assert (= (or b!250049 b!250051) bm!23494))

(declare-fun m!266511 () Bool)

(assert (=> b!250047 m!266511))

(assert (=> b!250047 m!266511))

(declare-fun m!266513 () Bool)

(assert (=> b!250047 m!266513))

(assert (=> b!250048 m!266511))

(assert (=> b!250048 m!266511))

(assert (=> b!250048 m!266513))

(assert (=> b!250050 m!266511))

(assert (=> b!250050 m!266511))

(declare-fun m!266515 () Bool)

(assert (=> b!250050 m!266515))

(assert (=> bm!23494 m!266511))

(declare-fun m!266517 () Bool)

(assert (=> bm!23494 m!266517))

(assert (=> b!249974 d!60759))

(declare-fun d!60761 () Bool)

(declare-fun res!122486 () Bool)

(declare-fun e!162183 () Bool)

(assert (=> d!60761 (=> res!122486 e!162183)))

(assert (=> d!60761 (= res!122486 (= (select (arr!5824 (_keys!6749 thiss!1504)) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)) key!932))))

(assert (=> d!60761 (= (arrayContainsKey!0 (_keys!6749 thiss!1504) key!932 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)) e!162183)))

(declare-fun b!250052 () Bool)

(declare-fun e!162184 () Bool)

(assert (=> b!250052 (= e!162183 e!162184)))

(declare-fun res!122487 () Bool)

(assert (=> b!250052 (=> (not res!122487) (not e!162184))))

(assert (=> b!250052 (= res!122487 (bvslt (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001 #b00000000000000000000000000000001) (size!6168 (_keys!6749 thiss!1504))))))

(declare-fun b!250053 () Bool)

(assert (=> b!250053 (= e!162184 (arrayContainsKey!0 (_keys!6749 thiss!1504) key!932 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001 #b00000000000000000000000000000001)))))

(assert (= (and d!60761 (not res!122486)) b!250052))

(assert (= (and b!250052 res!122487) b!250053))

(assert (=> d!60761 m!266499))

(declare-fun m!266519 () Bool)

(assert (=> b!250053 m!266519))

(assert (=> b!249892 d!60761))

(assert (=> b!249940 d!60727))

(declare-fun d!60763 () Bool)

(assert (=> d!60763 (= (apply!239 (+!661 lt!125237 (tuple2!4835 lt!125239 (minValue!4458 thiss!1504))) lt!125241) (get!2993 (getValueByKey!296 (toList!1896 (+!661 lt!125237 (tuple2!4835 lt!125239 (minValue!4458 thiss!1504)))) lt!125241)))))

(declare-fun bs!8969 () Bool)

(assert (= bs!8969 d!60763))

(declare-fun m!266521 () Bool)

(assert (=> bs!8969 m!266521))

(assert (=> bs!8969 m!266521))

(declare-fun m!266523 () Bool)

(assert (=> bs!8969 m!266523))

(assert (=> b!249857 d!60763))

(declare-fun d!60765 () Bool)

(declare-fun e!162187 () Bool)

(assert (=> d!60765 e!162187))

(declare-fun res!122492 () Bool)

(assert (=> d!60765 (=> (not res!122492) (not e!162187))))

(declare-fun lt!125319 () ListLongMap!3761)

(assert (=> d!60765 (= res!122492 (contains!1809 lt!125319 (_1!2427 (tuple2!4835 lt!125230 (minValue!4458 thiss!1504)))))))

(declare-fun lt!125317 () List!3739)

(assert (=> d!60765 (= lt!125319 (ListLongMap!3762 lt!125317))))

(declare-fun lt!125316 () Unit!7731)

(declare-fun lt!125318 () Unit!7731)

(assert (=> d!60765 (= lt!125316 lt!125318)))

(assert (=> d!60765 (= (getValueByKey!296 lt!125317 (_1!2427 (tuple2!4835 lt!125230 (minValue!4458 thiss!1504)))) (Some!301 (_2!2427 (tuple2!4835 lt!125230 (minValue!4458 thiss!1504)))))))

(declare-fun lemmaContainsTupThenGetReturnValue!159 (List!3739 (_ BitVec 64) V!8291) Unit!7731)

(assert (=> d!60765 (= lt!125318 (lemmaContainsTupThenGetReturnValue!159 lt!125317 (_1!2427 (tuple2!4835 lt!125230 (minValue!4458 thiss!1504))) (_2!2427 (tuple2!4835 lt!125230 (minValue!4458 thiss!1504)))))))

(declare-fun insertStrictlySorted!161 (List!3739 (_ BitVec 64) V!8291) List!3739)

(assert (=> d!60765 (= lt!125317 (insertStrictlySorted!161 (toList!1896 lt!125229) (_1!2427 (tuple2!4835 lt!125230 (minValue!4458 thiss!1504))) (_2!2427 (tuple2!4835 lt!125230 (minValue!4458 thiss!1504)))))))

(assert (=> d!60765 (= (+!661 lt!125229 (tuple2!4835 lt!125230 (minValue!4458 thiss!1504))) lt!125319)))

(declare-fun b!250058 () Bool)

(declare-fun res!122493 () Bool)

(assert (=> b!250058 (=> (not res!122493) (not e!162187))))

(assert (=> b!250058 (= res!122493 (= (getValueByKey!296 (toList!1896 lt!125319) (_1!2427 (tuple2!4835 lt!125230 (minValue!4458 thiss!1504)))) (Some!301 (_2!2427 (tuple2!4835 lt!125230 (minValue!4458 thiss!1504))))))))

(declare-fun b!250059 () Bool)

(declare-fun contains!1811 (List!3739 tuple2!4834) Bool)

(assert (=> b!250059 (= e!162187 (contains!1811 (toList!1896 lt!125319) (tuple2!4835 lt!125230 (minValue!4458 thiss!1504))))))

(assert (= (and d!60765 res!122492) b!250058))

(assert (= (and b!250058 res!122493) b!250059))

(declare-fun m!266525 () Bool)

(assert (=> d!60765 m!266525))

(declare-fun m!266527 () Bool)

(assert (=> d!60765 m!266527))

(declare-fun m!266529 () Bool)

(assert (=> d!60765 m!266529))

(declare-fun m!266531 () Bool)

(assert (=> d!60765 m!266531))

(declare-fun m!266533 () Bool)

(assert (=> b!250058 m!266533))

(declare-fun m!266535 () Bool)

(assert (=> b!250059 m!266535))

(assert (=> b!249857 d!60765))

(declare-fun d!60767 () Bool)

(assert (=> d!60767 (contains!1809 (+!661 lt!125231 (tuple2!4835 lt!125234 (zeroValue!4458 thiss!1504))) lt!125236)))

(declare-fun lt!125322 () Unit!7731)

(declare-fun choose!1191 (ListLongMap!3761 (_ BitVec 64) V!8291 (_ BitVec 64)) Unit!7731)

(assert (=> d!60767 (= lt!125322 (choose!1191 lt!125231 lt!125234 (zeroValue!4458 thiss!1504) lt!125236))))

(assert (=> d!60767 (contains!1809 lt!125231 lt!125236)))

(assert (=> d!60767 (= (addStillContains!215 lt!125231 lt!125234 (zeroValue!4458 thiss!1504) lt!125236) lt!125322)))

(declare-fun bs!8970 () Bool)

(assert (= bs!8970 d!60767))

(assert (=> bs!8970 m!266347))

(assert (=> bs!8970 m!266347))

(assert (=> bs!8970 m!266355))

(declare-fun m!266537 () Bool)

(assert (=> bs!8970 m!266537))

(declare-fun m!266539 () Bool)

(assert (=> bs!8970 m!266539))

(assert (=> b!249857 d!60767))

(declare-fun d!60769 () Bool)

(declare-fun e!162188 () Bool)

(assert (=> d!60769 e!162188))

(declare-fun res!122494 () Bool)

(assert (=> d!60769 (=> (not res!122494) (not e!162188))))

(declare-fun lt!125326 () ListLongMap!3761)

(assert (=> d!60769 (= res!122494 (contains!1809 lt!125326 (_1!2427 (tuple2!4835 lt!125234 (zeroValue!4458 thiss!1504)))))))

(declare-fun lt!125324 () List!3739)

(assert (=> d!60769 (= lt!125326 (ListLongMap!3762 lt!125324))))

(declare-fun lt!125323 () Unit!7731)

(declare-fun lt!125325 () Unit!7731)

(assert (=> d!60769 (= lt!125323 lt!125325)))

(assert (=> d!60769 (= (getValueByKey!296 lt!125324 (_1!2427 (tuple2!4835 lt!125234 (zeroValue!4458 thiss!1504)))) (Some!301 (_2!2427 (tuple2!4835 lt!125234 (zeroValue!4458 thiss!1504)))))))

(assert (=> d!60769 (= lt!125325 (lemmaContainsTupThenGetReturnValue!159 lt!125324 (_1!2427 (tuple2!4835 lt!125234 (zeroValue!4458 thiss!1504))) (_2!2427 (tuple2!4835 lt!125234 (zeroValue!4458 thiss!1504)))))))

(assert (=> d!60769 (= lt!125324 (insertStrictlySorted!161 (toList!1896 lt!125231) (_1!2427 (tuple2!4835 lt!125234 (zeroValue!4458 thiss!1504))) (_2!2427 (tuple2!4835 lt!125234 (zeroValue!4458 thiss!1504)))))))

(assert (=> d!60769 (= (+!661 lt!125231 (tuple2!4835 lt!125234 (zeroValue!4458 thiss!1504))) lt!125326)))

(declare-fun b!250061 () Bool)

(declare-fun res!122495 () Bool)

(assert (=> b!250061 (=> (not res!122495) (not e!162188))))

(assert (=> b!250061 (= res!122495 (= (getValueByKey!296 (toList!1896 lt!125326) (_1!2427 (tuple2!4835 lt!125234 (zeroValue!4458 thiss!1504)))) (Some!301 (_2!2427 (tuple2!4835 lt!125234 (zeroValue!4458 thiss!1504))))))))

(declare-fun b!250062 () Bool)

(assert (=> b!250062 (= e!162188 (contains!1811 (toList!1896 lt!125326) (tuple2!4835 lt!125234 (zeroValue!4458 thiss!1504))))))

(assert (= (and d!60769 res!122494) b!250061))

(assert (= (and b!250061 res!122495) b!250062))

(declare-fun m!266541 () Bool)

(assert (=> d!60769 m!266541))

(declare-fun m!266543 () Bool)

(assert (=> d!60769 m!266543))

(declare-fun m!266545 () Bool)

(assert (=> d!60769 m!266545))

(declare-fun m!266547 () Bool)

(assert (=> d!60769 m!266547))

(declare-fun m!266549 () Bool)

(assert (=> b!250061 m!266549))

(declare-fun m!266551 () Bool)

(assert (=> b!250062 m!266551))

(assert (=> b!249857 d!60769))

(declare-fun d!60771 () Bool)

(assert (=> d!60771 (= (apply!239 (+!661 lt!125223 (tuple2!4835 lt!125233 (zeroValue!4458 thiss!1504))) lt!125232) (apply!239 lt!125223 lt!125232))))

(declare-fun lt!125329 () Unit!7731)

(declare-fun choose!1192 (ListLongMap!3761 (_ BitVec 64) V!8291 (_ BitVec 64)) Unit!7731)

(assert (=> d!60771 (= lt!125329 (choose!1192 lt!125223 lt!125233 (zeroValue!4458 thiss!1504) lt!125232))))

(declare-fun e!162191 () Bool)

(assert (=> d!60771 e!162191))

(declare-fun res!122498 () Bool)

(assert (=> d!60771 (=> (not res!122498) (not e!162191))))

(assert (=> d!60771 (= res!122498 (contains!1809 lt!125223 lt!125232))))

(assert (=> d!60771 (= (addApplyDifferent!215 lt!125223 lt!125233 (zeroValue!4458 thiss!1504) lt!125232) lt!125329)))

(declare-fun b!250066 () Bool)

(assert (=> b!250066 (= e!162191 (not (= lt!125232 lt!125233)))))

(assert (= (and d!60771 res!122498) b!250066))

(assert (=> d!60771 m!266339))

(declare-fun m!266553 () Bool)

(assert (=> d!60771 m!266553))

(assert (=> d!60771 m!266339))

(assert (=> d!60771 m!266341))

(assert (=> d!60771 m!266345))

(declare-fun m!266555 () Bool)

(assert (=> d!60771 m!266555))

(assert (=> b!249857 d!60771))

(declare-fun d!60773 () Bool)

(declare-fun e!162192 () Bool)

(assert (=> d!60773 e!162192))

(declare-fun res!122499 () Bool)

(assert (=> d!60773 (=> res!122499 e!162192)))

(declare-fun lt!125330 () Bool)

(assert (=> d!60773 (= res!122499 (not lt!125330))))

(declare-fun lt!125332 () Bool)

(assert (=> d!60773 (= lt!125330 lt!125332)))

(declare-fun lt!125333 () Unit!7731)

(declare-fun e!162193 () Unit!7731)

(assert (=> d!60773 (= lt!125333 e!162193)))

(declare-fun c!41986 () Bool)

(assert (=> d!60773 (= c!41986 lt!125332)))

(assert (=> d!60773 (= lt!125332 (containsKey!288 (toList!1896 (+!661 lt!125231 (tuple2!4835 lt!125234 (zeroValue!4458 thiss!1504)))) lt!125236))))

(assert (=> d!60773 (= (contains!1809 (+!661 lt!125231 (tuple2!4835 lt!125234 (zeroValue!4458 thiss!1504))) lt!125236) lt!125330)))

(declare-fun b!250067 () Bool)

(declare-fun lt!125331 () Unit!7731)

(assert (=> b!250067 (= e!162193 lt!125331)))

(assert (=> b!250067 (= lt!125331 (lemmaContainsKeyImpliesGetValueByKeyDefined!237 (toList!1896 (+!661 lt!125231 (tuple2!4835 lt!125234 (zeroValue!4458 thiss!1504)))) lt!125236))))

(assert (=> b!250067 (isDefined!238 (getValueByKey!296 (toList!1896 (+!661 lt!125231 (tuple2!4835 lt!125234 (zeroValue!4458 thiss!1504)))) lt!125236))))

(declare-fun b!250068 () Bool)

(declare-fun Unit!7740 () Unit!7731)

(assert (=> b!250068 (= e!162193 Unit!7740)))

(declare-fun b!250069 () Bool)

(assert (=> b!250069 (= e!162192 (isDefined!238 (getValueByKey!296 (toList!1896 (+!661 lt!125231 (tuple2!4835 lt!125234 (zeroValue!4458 thiss!1504)))) lt!125236)))))

(assert (= (and d!60773 c!41986) b!250067))

(assert (= (and d!60773 (not c!41986)) b!250068))

(assert (= (and d!60773 (not res!122499)) b!250069))

(declare-fun m!266557 () Bool)

(assert (=> d!60773 m!266557))

(declare-fun m!266559 () Bool)

(assert (=> b!250067 m!266559))

(declare-fun m!266561 () Bool)

(assert (=> b!250067 m!266561))

(assert (=> b!250067 m!266561))

(declare-fun m!266563 () Bool)

(assert (=> b!250067 m!266563))

(assert (=> b!250069 m!266561))

(assert (=> b!250069 m!266561))

(assert (=> b!250069 m!266563))

(assert (=> b!249857 d!60773))

(declare-fun d!60775 () Bool)

(assert (=> d!60775 (= (apply!239 lt!125229 lt!125227) (get!2993 (getValueByKey!296 (toList!1896 lt!125229) lt!125227)))))

(declare-fun bs!8971 () Bool)

(assert (= bs!8971 d!60775))

(declare-fun m!266565 () Bool)

(assert (=> bs!8971 m!266565))

(assert (=> bs!8971 m!266565))

(declare-fun m!266567 () Bool)

(assert (=> bs!8971 m!266567))

(assert (=> b!249857 d!60775))

(declare-fun d!60777 () Bool)

(assert (=> d!60777 (= (apply!239 lt!125223 lt!125232) (get!2993 (getValueByKey!296 (toList!1896 lt!125223) lt!125232)))))

(declare-fun bs!8972 () Bool)

(assert (= bs!8972 d!60777))

(declare-fun m!266569 () Bool)

(assert (=> bs!8972 m!266569))

(assert (=> bs!8972 m!266569))

(declare-fun m!266571 () Bool)

(assert (=> bs!8972 m!266571))

(assert (=> b!249857 d!60777))

(declare-fun d!60779 () Bool)

(declare-fun e!162194 () Bool)

(assert (=> d!60779 e!162194))

(declare-fun res!122500 () Bool)

(assert (=> d!60779 (=> (not res!122500) (not e!162194))))

(declare-fun lt!125337 () ListLongMap!3761)

(assert (=> d!60779 (= res!122500 (contains!1809 lt!125337 (_1!2427 (tuple2!4835 lt!125239 (minValue!4458 thiss!1504)))))))

(declare-fun lt!125335 () List!3739)

(assert (=> d!60779 (= lt!125337 (ListLongMap!3762 lt!125335))))

(declare-fun lt!125334 () Unit!7731)

(declare-fun lt!125336 () Unit!7731)

(assert (=> d!60779 (= lt!125334 lt!125336)))

(assert (=> d!60779 (= (getValueByKey!296 lt!125335 (_1!2427 (tuple2!4835 lt!125239 (minValue!4458 thiss!1504)))) (Some!301 (_2!2427 (tuple2!4835 lt!125239 (minValue!4458 thiss!1504)))))))

(assert (=> d!60779 (= lt!125336 (lemmaContainsTupThenGetReturnValue!159 lt!125335 (_1!2427 (tuple2!4835 lt!125239 (minValue!4458 thiss!1504))) (_2!2427 (tuple2!4835 lt!125239 (minValue!4458 thiss!1504)))))))

(assert (=> d!60779 (= lt!125335 (insertStrictlySorted!161 (toList!1896 lt!125237) (_1!2427 (tuple2!4835 lt!125239 (minValue!4458 thiss!1504))) (_2!2427 (tuple2!4835 lt!125239 (minValue!4458 thiss!1504)))))))

(assert (=> d!60779 (= (+!661 lt!125237 (tuple2!4835 lt!125239 (minValue!4458 thiss!1504))) lt!125337)))

(declare-fun b!250070 () Bool)

(declare-fun res!122501 () Bool)

(assert (=> b!250070 (=> (not res!122501) (not e!162194))))

(assert (=> b!250070 (= res!122501 (= (getValueByKey!296 (toList!1896 lt!125337) (_1!2427 (tuple2!4835 lt!125239 (minValue!4458 thiss!1504)))) (Some!301 (_2!2427 (tuple2!4835 lt!125239 (minValue!4458 thiss!1504))))))))

(declare-fun b!250071 () Bool)

(assert (=> b!250071 (= e!162194 (contains!1811 (toList!1896 lt!125337) (tuple2!4835 lt!125239 (minValue!4458 thiss!1504))))))

(assert (= (and d!60779 res!122500) b!250070))

(assert (= (and b!250070 res!122501) b!250071))

(declare-fun m!266573 () Bool)

(assert (=> d!60779 m!266573))

(declare-fun m!266575 () Bool)

(assert (=> d!60779 m!266575))

(declare-fun m!266577 () Bool)

(assert (=> d!60779 m!266577))

(declare-fun m!266579 () Bool)

(assert (=> d!60779 m!266579))

(declare-fun m!266581 () Bool)

(assert (=> b!250070 m!266581))

(declare-fun m!266583 () Bool)

(assert (=> b!250071 m!266583))

(assert (=> b!249857 d!60779))

(declare-fun d!60781 () Bool)

(assert (=> d!60781 (= (apply!239 (+!661 lt!125223 (tuple2!4835 lt!125233 (zeroValue!4458 thiss!1504))) lt!125232) (get!2993 (getValueByKey!296 (toList!1896 (+!661 lt!125223 (tuple2!4835 lt!125233 (zeroValue!4458 thiss!1504)))) lt!125232)))))

(declare-fun bs!8973 () Bool)

(assert (= bs!8973 d!60781))

(declare-fun m!266585 () Bool)

(assert (=> bs!8973 m!266585))

(assert (=> bs!8973 m!266585))

(declare-fun m!266587 () Bool)

(assert (=> bs!8973 m!266587))

(assert (=> b!249857 d!60781))

(declare-fun d!60783 () Bool)

(assert (=> d!60783 (= (apply!239 (+!661 lt!125229 (tuple2!4835 lt!125230 (minValue!4458 thiss!1504))) lt!125227) (get!2993 (getValueByKey!296 (toList!1896 (+!661 lt!125229 (tuple2!4835 lt!125230 (minValue!4458 thiss!1504)))) lt!125227)))))

(declare-fun bs!8974 () Bool)

(assert (= bs!8974 d!60783))

(declare-fun m!266589 () Bool)

(assert (=> bs!8974 m!266589))

(assert (=> bs!8974 m!266589))

(declare-fun m!266591 () Bool)

(assert (=> bs!8974 m!266591))

(assert (=> b!249857 d!60783))

(declare-fun d!60785 () Bool)

(assert (=> d!60785 (= (apply!239 (+!661 lt!125229 (tuple2!4835 lt!125230 (minValue!4458 thiss!1504))) lt!125227) (apply!239 lt!125229 lt!125227))))

(declare-fun lt!125338 () Unit!7731)

(assert (=> d!60785 (= lt!125338 (choose!1192 lt!125229 lt!125230 (minValue!4458 thiss!1504) lt!125227))))

(declare-fun e!162195 () Bool)

(assert (=> d!60785 e!162195))

(declare-fun res!122502 () Bool)

(assert (=> d!60785 (=> (not res!122502) (not e!162195))))

(assert (=> d!60785 (= res!122502 (contains!1809 lt!125229 lt!125227))))

(assert (=> d!60785 (= (addApplyDifferent!215 lt!125229 lt!125230 (minValue!4458 thiss!1504) lt!125227) lt!125338)))

(declare-fun b!250072 () Bool)

(assert (=> b!250072 (= e!162195 (not (= lt!125227 lt!125230)))))

(assert (= (and d!60785 res!122502) b!250072))

(assert (=> d!60785 m!266357))

(declare-fun m!266593 () Bool)

(assert (=> d!60785 m!266593))

(assert (=> d!60785 m!266357))

(assert (=> d!60785 m!266359))

(assert (=> d!60785 m!266361))

(declare-fun m!266595 () Bool)

(assert (=> d!60785 m!266595))

(assert (=> b!249857 d!60785))

(declare-fun d!60787 () Bool)

(assert (=> d!60787 (= (apply!239 (+!661 lt!125237 (tuple2!4835 lt!125239 (minValue!4458 thiss!1504))) lt!125241) (apply!239 lt!125237 lt!125241))))

(declare-fun lt!125339 () Unit!7731)

(assert (=> d!60787 (= lt!125339 (choose!1192 lt!125237 lt!125239 (minValue!4458 thiss!1504) lt!125241))))

(declare-fun e!162196 () Bool)

(assert (=> d!60787 e!162196))

(declare-fun res!122503 () Bool)

(assert (=> d!60787 (=> (not res!122503) (not e!162196))))

(assert (=> d!60787 (= res!122503 (contains!1809 lt!125237 lt!125241))))

(assert (=> d!60787 (= (addApplyDifferent!215 lt!125237 lt!125239 (minValue!4458 thiss!1504) lt!125241) lt!125339)))

(declare-fun b!250073 () Bool)

(assert (=> b!250073 (= e!162196 (not (= lt!125241 lt!125239)))))

(assert (= (and d!60787 res!122503) b!250073))

(assert (=> d!60787 m!266351))

(declare-fun m!266597 () Bool)

(assert (=> d!60787 m!266597))

(assert (=> d!60787 m!266351))

(assert (=> d!60787 m!266353))

(assert (=> d!60787 m!266365))

(declare-fun m!266599 () Bool)

(assert (=> d!60787 m!266599))

(assert (=> b!249857 d!60787))

(declare-fun d!60789 () Bool)

(assert (=> d!60789 (= (apply!239 lt!125237 lt!125241) (get!2993 (getValueByKey!296 (toList!1896 lt!125237) lt!125241)))))

(declare-fun bs!8975 () Bool)

(assert (= bs!8975 d!60789))

(declare-fun m!266601 () Bool)

(assert (=> bs!8975 m!266601))

(assert (=> bs!8975 m!266601))

(declare-fun m!266603 () Bool)

(assert (=> bs!8975 m!266603))

(assert (=> b!249857 d!60789))

(declare-fun d!60791 () Bool)

(declare-fun e!162197 () Bool)

(assert (=> d!60791 e!162197))

(declare-fun res!122504 () Bool)

(assert (=> d!60791 (=> (not res!122504) (not e!162197))))

(declare-fun lt!125343 () ListLongMap!3761)

(assert (=> d!60791 (= res!122504 (contains!1809 lt!125343 (_1!2427 (tuple2!4835 lt!125233 (zeroValue!4458 thiss!1504)))))))

(declare-fun lt!125341 () List!3739)

(assert (=> d!60791 (= lt!125343 (ListLongMap!3762 lt!125341))))

(declare-fun lt!125340 () Unit!7731)

(declare-fun lt!125342 () Unit!7731)

(assert (=> d!60791 (= lt!125340 lt!125342)))

(assert (=> d!60791 (= (getValueByKey!296 lt!125341 (_1!2427 (tuple2!4835 lt!125233 (zeroValue!4458 thiss!1504)))) (Some!301 (_2!2427 (tuple2!4835 lt!125233 (zeroValue!4458 thiss!1504)))))))

(assert (=> d!60791 (= lt!125342 (lemmaContainsTupThenGetReturnValue!159 lt!125341 (_1!2427 (tuple2!4835 lt!125233 (zeroValue!4458 thiss!1504))) (_2!2427 (tuple2!4835 lt!125233 (zeroValue!4458 thiss!1504)))))))

(assert (=> d!60791 (= lt!125341 (insertStrictlySorted!161 (toList!1896 lt!125223) (_1!2427 (tuple2!4835 lt!125233 (zeroValue!4458 thiss!1504))) (_2!2427 (tuple2!4835 lt!125233 (zeroValue!4458 thiss!1504)))))))

(assert (=> d!60791 (= (+!661 lt!125223 (tuple2!4835 lt!125233 (zeroValue!4458 thiss!1504))) lt!125343)))

(declare-fun b!250074 () Bool)

(declare-fun res!122505 () Bool)

(assert (=> b!250074 (=> (not res!122505) (not e!162197))))

(assert (=> b!250074 (= res!122505 (= (getValueByKey!296 (toList!1896 lt!125343) (_1!2427 (tuple2!4835 lt!125233 (zeroValue!4458 thiss!1504)))) (Some!301 (_2!2427 (tuple2!4835 lt!125233 (zeroValue!4458 thiss!1504))))))))

(declare-fun b!250075 () Bool)

(assert (=> b!250075 (= e!162197 (contains!1811 (toList!1896 lt!125343) (tuple2!4835 lt!125233 (zeroValue!4458 thiss!1504))))))

(assert (= (and d!60791 res!122504) b!250074))

(assert (= (and b!250074 res!122505) b!250075))

(declare-fun m!266605 () Bool)

(assert (=> d!60791 m!266605))

(declare-fun m!266607 () Bool)

(assert (=> d!60791 m!266607))

(declare-fun m!266609 () Bool)

(assert (=> d!60791 m!266609))

(declare-fun m!266611 () Bool)

(assert (=> d!60791 m!266611))

(declare-fun m!266613 () Bool)

(assert (=> b!250074 m!266613))

(declare-fun m!266615 () Bool)

(assert (=> b!250075 m!266615))

(assert (=> b!249857 d!60791))

(declare-fun b!250100 () Bool)

(declare-fun res!122514 () Bool)

(declare-fun e!162212 () Bool)

(assert (=> b!250100 (=> (not res!122514) (not e!162212))))

(declare-fun lt!125359 () ListLongMap!3761)

(assert (=> b!250100 (= res!122514 (not (contains!1809 lt!125359 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun d!60793 () Bool)

(assert (=> d!60793 e!162212))

(declare-fun res!122516 () Bool)

(assert (=> d!60793 (=> (not res!122516) (not e!162212))))

(assert (=> d!60793 (= res!122516 (not (contains!1809 lt!125359 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun e!162217 () ListLongMap!3761)

(assert (=> d!60793 (= lt!125359 e!162217)))

(declare-fun c!41995 () Bool)

(assert (=> d!60793 (= c!41995 (bvsge #b00000000000000000000000000000000 (size!6168 (_keys!6749 thiss!1504))))))

(assert (=> d!60793 (validMask!0 (mask!10789 thiss!1504))))

(assert (=> d!60793 (= (getCurrentListMapNoExtraKeys!558 (_keys!6749 thiss!1504) (_values!4600 thiss!1504) (mask!10789 thiss!1504) (extraKeys!4354 thiss!1504) (zeroValue!4458 thiss!1504) (minValue!4458 thiss!1504) #b00000000000000000000000000000000 (defaultEntry!4617 thiss!1504)) lt!125359)))

(declare-fun b!250101 () Bool)

(declare-fun e!162213 () ListLongMap!3761)

(assert (=> b!250101 (= e!162217 e!162213)))

(declare-fun c!41996 () Bool)

(assert (=> b!250101 (= c!41996 (validKeyInArray!0 (select (arr!5824 (_keys!6749 thiss!1504)) #b00000000000000000000000000000000)))))

(declare-fun b!250102 () Bool)

(declare-fun e!162216 () Bool)

(assert (=> b!250102 (= e!162216 (= lt!125359 (getCurrentListMapNoExtraKeys!558 (_keys!6749 thiss!1504) (_values!4600 thiss!1504) (mask!10789 thiss!1504) (extraKeys!4354 thiss!1504) (zeroValue!4458 thiss!1504) (minValue!4458 thiss!1504) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (defaultEntry!4617 thiss!1504))))))

(declare-fun bm!23497 () Bool)

(declare-fun call!23500 () ListLongMap!3761)

(assert (=> bm!23497 (= call!23500 (getCurrentListMapNoExtraKeys!558 (_keys!6749 thiss!1504) (_values!4600 thiss!1504) (mask!10789 thiss!1504) (extraKeys!4354 thiss!1504) (zeroValue!4458 thiss!1504) (minValue!4458 thiss!1504) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (defaultEntry!4617 thiss!1504)))))

(declare-fun b!250103 () Bool)

(assert (=> b!250103 (= e!162217 (ListLongMap!3762 Nil!3736))))

(declare-fun b!250104 () Bool)

(declare-fun lt!125358 () Unit!7731)

(declare-fun lt!125364 () Unit!7731)

(assert (=> b!250104 (= lt!125358 lt!125364)))

(declare-fun lt!125361 () (_ BitVec 64))

(declare-fun lt!125362 () ListLongMap!3761)

(declare-fun lt!125360 () (_ BitVec 64))

(declare-fun lt!125363 () V!8291)

(assert (=> b!250104 (not (contains!1809 (+!661 lt!125362 (tuple2!4835 lt!125361 lt!125363)) lt!125360))))

(declare-fun addStillNotContains!124 (ListLongMap!3761 (_ BitVec 64) V!8291 (_ BitVec 64)) Unit!7731)

(assert (=> b!250104 (= lt!125364 (addStillNotContains!124 lt!125362 lt!125361 lt!125363 lt!125360))))

(assert (=> b!250104 (= lt!125360 #b0000000000000000000000000000000000000000000000000000000000000000)))

(assert (=> b!250104 (= lt!125363 (get!2992 (select (arr!5823 (_values!4600 thiss!1504)) #b00000000000000000000000000000000) (dynLambda!577 (defaultEntry!4617 thiss!1504) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (=> b!250104 (= lt!125361 (select (arr!5824 (_keys!6749 thiss!1504)) #b00000000000000000000000000000000))))

(assert (=> b!250104 (= lt!125362 call!23500)))

(assert (=> b!250104 (= e!162213 (+!661 call!23500 (tuple2!4835 (select (arr!5824 (_keys!6749 thiss!1504)) #b00000000000000000000000000000000) (get!2992 (select (arr!5823 (_values!4600 thiss!1504)) #b00000000000000000000000000000000) (dynLambda!577 (defaultEntry!4617 thiss!1504) #b0000000000000000000000000000000000000000000000000000000000000000)))))))

(declare-fun b!250105 () Bool)

(declare-fun e!162218 () Bool)

(assert (=> b!250105 (= e!162212 e!162218)))

(declare-fun c!41998 () Bool)

(declare-fun e!162215 () Bool)

(assert (=> b!250105 (= c!41998 e!162215)))

(declare-fun res!122517 () Bool)

(assert (=> b!250105 (=> (not res!122517) (not e!162215))))

(assert (=> b!250105 (= res!122517 (bvslt #b00000000000000000000000000000000 (size!6168 (_keys!6749 thiss!1504))))))

(declare-fun b!250106 () Bool)

(declare-fun isEmpty!532 (ListLongMap!3761) Bool)

(assert (=> b!250106 (= e!162216 (isEmpty!532 lt!125359))))

(declare-fun b!250107 () Bool)

(assert (=> b!250107 (= e!162218 e!162216)))

(declare-fun c!41997 () Bool)

(assert (=> b!250107 (= c!41997 (bvslt #b00000000000000000000000000000000 (size!6168 (_keys!6749 thiss!1504))))))

(declare-fun b!250108 () Bool)

(assert (=> b!250108 (= e!162215 (validKeyInArray!0 (select (arr!5824 (_keys!6749 thiss!1504)) #b00000000000000000000000000000000)))))

(assert (=> b!250108 (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000)))

(declare-fun b!250109 () Bool)

(assert (=> b!250109 (= e!162213 call!23500)))

(declare-fun b!250110 () Bool)

(declare-fun e!162214 () Bool)

(assert (=> b!250110 (= e!162218 e!162214)))

(assert (=> b!250110 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!6168 (_keys!6749 thiss!1504))))))

(declare-fun res!122515 () Bool)

(assert (=> b!250110 (= res!122515 (contains!1809 lt!125359 (select (arr!5824 (_keys!6749 thiss!1504)) #b00000000000000000000000000000000)))))

(assert (=> b!250110 (=> (not res!122515) (not e!162214))))

(declare-fun b!250111 () Bool)

(assert (=> b!250111 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!6168 (_keys!6749 thiss!1504))))))

(assert (=> b!250111 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!6167 (_values!4600 thiss!1504))))))

(assert (=> b!250111 (= e!162214 (= (apply!239 lt!125359 (select (arr!5824 (_keys!6749 thiss!1504)) #b00000000000000000000000000000000)) (get!2992 (select (arr!5823 (_values!4600 thiss!1504)) #b00000000000000000000000000000000) (dynLambda!577 (defaultEntry!4617 thiss!1504) #b0000000000000000000000000000000000000000000000000000000000000000))))))

(assert (= (and d!60793 c!41995) b!250103))

(assert (= (and d!60793 (not c!41995)) b!250101))

(assert (= (and b!250101 c!41996) b!250104))

(assert (= (and b!250101 (not c!41996)) b!250109))

(assert (= (or b!250104 b!250109) bm!23497))

(assert (= (and d!60793 res!122516) b!250100))

(assert (= (and b!250100 res!122514) b!250105))

(assert (= (and b!250105 res!122517) b!250108))

(assert (= (and b!250105 c!41998) b!250110))

(assert (= (and b!250105 (not c!41998)) b!250107))

(assert (= (and b!250110 res!122515) b!250111))

(assert (= (and b!250107 c!41997) b!250102))

(assert (= (and b!250107 (not c!41997)) b!250106))

(declare-fun b_lambda!8109 () Bool)

(assert (=> (not b_lambda!8109) (not b!250104)))

(assert (=> b!250104 t!8781))

(declare-fun b_and!13659 () Bool)

(assert (= b_and!13657 (and (=> t!8781 result!5303) b_and!13659)))

(declare-fun b_lambda!8111 () Bool)

(assert (=> (not b_lambda!8111) (not b!250111)))

(assert (=> b!250111 t!8781))

(declare-fun b_and!13661 () Bool)

(assert (= b_and!13659 (and (=> t!8781 result!5303) b_and!13661)))

(declare-fun m!266617 () Bool)

(assert (=> b!250102 m!266617))

(assert (=> bm!23497 m!266617))

(assert (=> b!250108 m!266369))

(assert (=> b!250108 m!266369))

(assert (=> b!250108 m!266387))

(declare-fun m!266619 () Bool)

(assert (=> b!250106 m!266619))

(assert (=> b!250101 m!266369))

(assert (=> b!250101 m!266369))

(assert (=> b!250101 m!266387))

(declare-fun m!266621 () Bool)

(assert (=> b!250100 m!266621))

(assert (=> b!250104 m!266373))

(assert (=> b!250104 m!266371))

(declare-fun m!266623 () Bool)

(assert (=> b!250104 m!266623))

(declare-fun m!266625 () Bool)

(assert (=> b!250104 m!266625))

(assert (=> b!250104 m!266623))

(assert (=> b!250104 m!266371))

(assert (=> b!250104 m!266373))

(assert (=> b!250104 m!266375))

(assert (=> b!250104 m!266369))

(declare-fun m!266627 () Bool)

(assert (=> b!250104 m!266627))

(declare-fun m!266629 () Bool)

(assert (=> b!250104 m!266629))

(declare-fun m!266631 () Bool)

(assert (=> d!60793 m!266631))

(assert (=> d!60793 m!266249))

(assert (=> b!250111 m!266373))

(assert (=> b!250111 m!266371))

(assert (=> b!250111 m!266369))

(assert (=> b!250111 m!266369))

(declare-fun m!266633 () Bool)

(assert (=> b!250111 m!266633))

(assert (=> b!250111 m!266371))

(assert (=> b!250111 m!266373))

(assert (=> b!250111 m!266375))

(assert (=> b!250110 m!266369))

(assert (=> b!250110 m!266369))

(declare-fun m!266635 () Bool)

(assert (=> b!250110 m!266635))

(assert (=> b!249857 d!60793))

(declare-fun d!60795 () Bool)

(assert (=> d!60795 (= (validKeyInArray!0 key!932) (and (not (= key!932 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= key!932 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!249926 d!60795))

(assert (=> b!249854 d!60747))

(assert (=> b!249967 d!60727))

(assert (=> bm!23471 d!60793))

(assert (=> d!60689 d!60697))

(declare-fun d!60797 () Bool)

(declare-fun e!162221 () Bool)

(assert (=> d!60797 e!162221))

(declare-fun res!122523 () Bool)

(assert (=> d!60797 (=> (not res!122523) (not e!162221))))

(declare-fun lt!125367 () SeekEntryResult!1129)

(assert (=> d!60797 (= res!122523 ((_ is Found!1129) lt!125367))))

(assert (=> d!60797 (= lt!125367 (seekEntryOrOpen!0 key!932 (_keys!6749 thiss!1504) (mask!10789 thiss!1504)))))

(assert (=> d!60797 true))

(declare-fun _$33!165 () Unit!7731)

(assert (=> d!60797 (= (choose!1187 (_keys!6749 thiss!1504) (_values!4600 thiss!1504) (mask!10789 thiss!1504) (extraKeys!4354 thiss!1504) (zeroValue!4458 thiss!1504) (minValue!4458 thiss!1504) key!932 (defaultEntry!4617 thiss!1504)) _$33!165)))

(declare-fun b!250116 () Bool)

(declare-fun res!122522 () Bool)

(assert (=> b!250116 (=> (not res!122522) (not e!162221))))

(assert (=> b!250116 (= res!122522 (inRange!0 (index!6687 lt!125367) (mask!10789 thiss!1504)))))

(declare-fun b!250117 () Bool)

(assert (=> b!250117 (= e!162221 (= (select (arr!5824 (_keys!6749 thiss!1504)) (index!6687 lt!125367)) key!932))))

(assert (= (and d!60797 res!122523) b!250116))

(assert (= (and b!250116 res!122522) b!250117))

(assert (=> d!60797 m!266243))

(declare-fun m!266637 () Bool)

(assert (=> b!250116 m!266637))

(declare-fun m!266639 () Bool)

(assert (=> b!250117 m!266639))

(assert (=> d!60689 d!60797))

(assert (=> d!60689 d!60719))

(assert (=> b!249803 d!60731))

(assert (=> b!249803 d!60733))

(declare-fun d!60799 () Bool)

(assert (=> d!60799 (= (inRange!0 (ite c!41947 (index!6686 lt!125257) (index!6689 lt!125257)) (mask!10789 thiss!1504)) (and (bvsge (ite c!41947 (index!6686 lt!125257) (index!6689 lt!125257)) #b00000000000000000000000000000000) (bvslt (ite c!41947 (index!6686 lt!125257) (index!6689 lt!125257)) (bvadd (mask!10789 thiss!1504) #b00000000000000000000000000000001))))))

(assert (=> bm!23479 d!60799))

(assert (=> d!60709 d!60693))

(assert (=> d!60709 d!60695))

(declare-fun d!60801 () Bool)

(assert (=> d!60801 (contains!1809 (getCurrentListMap!1419 (_keys!6749 thiss!1504) (_values!4600 thiss!1504) (mask!10789 thiss!1504) (extraKeys!4354 thiss!1504) (zeroValue!4458 thiss!1504) (minValue!4458 thiss!1504) #b00000000000000000000000000000000 (defaultEntry!4617 thiss!1504)) key!932)))

(assert (=> d!60801 true))

(declare-fun _$17!74 () Unit!7731)

(assert (=> d!60801 (= (choose!1189 (_keys!6749 thiss!1504) (_values!4600 thiss!1504) (mask!10789 thiss!1504) (extraKeys!4354 thiss!1504) (zeroValue!4458 thiss!1504) (minValue!4458 thiss!1504) key!932 #b00000000000000000000000000000000 (defaultEntry!4617 thiss!1504)) _$17!74)))

(declare-fun bs!8976 () Bool)

(assert (= bs!8976 d!60801))

(assert (=> bs!8976 m!266237))

(assert (=> bs!8976 m!266237))

(assert (=> bs!8976 m!266239))

(assert (=> d!60709 d!60801))

(assert (=> d!60709 d!60719))

(declare-fun d!60803 () Bool)

(assert (=> d!60803 (= (apply!239 lt!125222 (select (arr!5824 (_keys!6749 thiss!1504)) #b00000000000000000000000000000000)) (get!2993 (getValueByKey!296 (toList!1896 lt!125222) (select (arr!5824 (_keys!6749 thiss!1504)) #b00000000000000000000000000000000))))))

(declare-fun bs!8977 () Bool)

(assert (= bs!8977 d!60803))

(assert (=> bs!8977 m!266369))

(assert (=> bs!8977 m!266493))

(assert (=> bs!8977 m!266493))

(declare-fun m!266641 () Bool)

(assert (=> bs!8977 m!266641))

(assert (=> b!249865 d!60803))

(declare-fun d!60805 () Bool)

(declare-fun c!42001 () Bool)

(assert (=> d!60805 (= c!42001 ((_ is ValueCellFull!2898) (select (arr!5823 (_values!4600 thiss!1504)) #b00000000000000000000000000000000)))))

(declare-fun e!162224 () V!8291)

(assert (=> d!60805 (= (get!2992 (select (arr!5823 (_values!4600 thiss!1504)) #b00000000000000000000000000000000) (dynLambda!577 (defaultEntry!4617 thiss!1504) #b0000000000000000000000000000000000000000000000000000000000000000)) e!162224)))

(declare-fun b!250122 () Bool)

(declare-fun get!2994 (ValueCell!2898 V!8291) V!8291)

(assert (=> b!250122 (= e!162224 (get!2994 (select (arr!5823 (_values!4600 thiss!1504)) #b00000000000000000000000000000000) (dynLambda!577 (defaultEntry!4617 thiss!1504) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!250123 () Bool)

(declare-fun get!2995 (ValueCell!2898 V!8291) V!8291)

(assert (=> b!250123 (= e!162224 (get!2995 (select (arr!5823 (_values!4600 thiss!1504)) #b00000000000000000000000000000000) (dynLambda!577 (defaultEntry!4617 thiss!1504) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (= (and d!60805 c!42001) b!250122))

(assert (= (and d!60805 (not c!42001)) b!250123))

(assert (=> b!250122 m!266371))

(assert (=> b!250122 m!266373))

(declare-fun m!266643 () Bool)

(assert (=> b!250122 m!266643))

(assert (=> b!250123 m!266371))

(assert (=> b!250123 m!266373))

(declare-fun m!266645 () Bool)

(assert (=> b!250123 m!266645))

(assert (=> b!249865 d!60805))

(declare-fun d!60807 () Bool)

(declare-fun e!162225 () Bool)

(assert (=> d!60807 e!162225))

(declare-fun res!122524 () Bool)

(assert (=> d!60807 (=> (not res!122524) (not e!162225))))

(declare-fun lt!125371 () ListLongMap!3761)

(assert (=> d!60807 (= res!122524 (contains!1809 lt!125371 (_1!2427 (ite (or c!41933 c!41928) (tuple2!4835 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!4458 thiss!1504)) (tuple2!4835 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!4458 thiss!1504))))))))

(declare-fun lt!125369 () List!3739)

(assert (=> d!60807 (= lt!125371 (ListLongMap!3762 lt!125369))))

(declare-fun lt!125368 () Unit!7731)

(declare-fun lt!125370 () Unit!7731)

(assert (=> d!60807 (= lt!125368 lt!125370)))

(assert (=> d!60807 (= (getValueByKey!296 lt!125369 (_1!2427 (ite (or c!41933 c!41928) (tuple2!4835 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!4458 thiss!1504)) (tuple2!4835 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!4458 thiss!1504))))) (Some!301 (_2!2427 (ite (or c!41933 c!41928) (tuple2!4835 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!4458 thiss!1504)) (tuple2!4835 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!4458 thiss!1504))))))))

(assert (=> d!60807 (= lt!125370 (lemmaContainsTupThenGetReturnValue!159 lt!125369 (_1!2427 (ite (or c!41933 c!41928) (tuple2!4835 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!4458 thiss!1504)) (tuple2!4835 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!4458 thiss!1504)))) (_2!2427 (ite (or c!41933 c!41928) (tuple2!4835 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!4458 thiss!1504)) (tuple2!4835 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!4458 thiss!1504))))))))

(assert (=> d!60807 (= lt!125369 (insertStrictlySorted!161 (toList!1896 (ite c!41933 call!23472 (ite c!41928 call!23477 call!23471))) (_1!2427 (ite (or c!41933 c!41928) (tuple2!4835 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!4458 thiss!1504)) (tuple2!4835 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!4458 thiss!1504)))) (_2!2427 (ite (or c!41933 c!41928) (tuple2!4835 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!4458 thiss!1504)) (tuple2!4835 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!4458 thiss!1504))))))))

(assert (=> d!60807 (= (+!661 (ite c!41933 call!23472 (ite c!41928 call!23477 call!23471)) (ite (or c!41933 c!41928) (tuple2!4835 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!4458 thiss!1504)) (tuple2!4835 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!4458 thiss!1504)))) lt!125371)))

(declare-fun b!250124 () Bool)

(declare-fun res!122525 () Bool)

(assert (=> b!250124 (=> (not res!122525) (not e!162225))))

(assert (=> b!250124 (= res!122525 (= (getValueByKey!296 (toList!1896 lt!125371) (_1!2427 (ite (or c!41933 c!41928) (tuple2!4835 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!4458 thiss!1504)) (tuple2!4835 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!4458 thiss!1504))))) (Some!301 (_2!2427 (ite (or c!41933 c!41928) (tuple2!4835 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!4458 thiss!1504)) (tuple2!4835 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!4458 thiss!1504)))))))))

(declare-fun b!250125 () Bool)

(assert (=> b!250125 (= e!162225 (contains!1811 (toList!1896 lt!125371) (ite (or c!41933 c!41928) (tuple2!4835 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!4458 thiss!1504)) (tuple2!4835 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!4458 thiss!1504)))))))

(assert (= (and d!60807 res!122524) b!250124))

(assert (= (and b!250124 res!122525) b!250125))

(declare-fun m!266647 () Bool)

(assert (=> d!60807 m!266647))

(declare-fun m!266649 () Bool)

(assert (=> d!60807 m!266649))

(declare-fun m!266651 () Bool)

(assert (=> d!60807 m!266651))

(declare-fun m!266653 () Bool)

(assert (=> d!60807 m!266653))

(declare-fun m!266655 () Bool)

(assert (=> b!250124 m!266655))

(declare-fun m!266657 () Bool)

(assert (=> b!250125 m!266657))

(assert (=> bm!23470 d!60807))

(declare-fun d!60809 () Bool)

(declare-fun e!162226 () Bool)

(assert (=> d!60809 e!162226))

(declare-fun res!122526 () Bool)

(assert (=> d!60809 (=> res!122526 e!162226)))

(declare-fun lt!125372 () Bool)

(assert (=> d!60809 (= res!122526 (not lt!125372))))

(declare-fun lt!125374 () Bool)

(assert (=> d!60809 (= lt!125372 lt!125374)))

(declare-fun lt!125375 () Unit!7731)

(declare-fun e!162227 () Unit!7731)

(assert (=> d!60809 (= lt!125375 e!162227)))

(declare-fun c!42002 () Bool)

(assert (=> d!60809 (= c!42002 lt!125374)))

(assert (=> d!60809 (= lt!125374 (containsKey!288 (toList!1896 lt!125222) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> d!60809 (= (contains!1809 lt!125222 #b1000000000000000000000000000000000000000000000000000000000000000) lt!125372)))

(declare-fun b!250126 () Bool)

(declare-fun lt!125373 () Unit!7731)

(assert (=> b!250126 (= e!162227 lt!125373)))

(assert (=> b!250126 (= lt!125373 (lemmaContainsKeyImpliesGetValueByKeyDefined!237 (toList!1896 lt!125222) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!250126 (isDefined!238 (getValueByKey!296 (toList!1896 lt!125222) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!250127 () Bool)

(declare-fun Unit!7741 () Unit!7731)

(assert (=> b!250127 (= e!162227 Unit!7741)))

(declare-fun b!250128 () Bool)

(assert (=> b!250128 (= e!162226 (isDefined!238 (getValueByKey!296 (toList!1896 lt!125222) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(assert (= (and d!60809 c!42002) b!250126))

(assert (= (and d!60809 (not c!42002)) b!250127))

(assert (= (and d!60809 (not res!122526)) b!250128))

(declare-fun m!266659 () Bool)

(assert (=> d!60809 m!266659))

(declare-fun m!266661 () Bool)

(assert (=> b!250126 m!266661))

(declare-fun m!266663 () Bool)

(assert (=> b!250126 m!266663))

(assert (=> b!250126 m!266663))

(declare-fun m!266665 () Bool)

(assert (=> b!250126 m!266665))

(assert (=> b!250128 m!266663))

(assert (=> b!250128 m!266663))

(assert (=> b!250128 m!266665))

(assert (=> bm!23468 d!60809))

(declare-fun d!60811 () Bool)

(assert (=> d!60811 (= (arrayCountValidKeys!0 (array!12283 (store (arr!5824 (_keys!6749 thiss!1504)) index!297 key!932) (size!6168 (_keys!6749 thiss!1504))) #b00000000000000000000000000000000 (size!6168 (_keys!6749 thiss!1504))) (bvadd (arrayCountValidKeys!0 (_keys!6749 thiss!1504) #b00000000000000000000000000000000 (size!6168 (_keys!6749 thiss!1504))) #b00000000000000000000000000000001))))

(assert (=> d!60811 true))

(declare-fun _$84!27 () Unit!7731)

(assert (=> d!60811 (= (choose!1 (_keys!6749 thiss!1504) index!297 key!932) _$84!27)))

(declare-fun bs!8978 () Bool)

(assert (= bs!8978 d!60811))

(assert (=> bs!8978 m!266259))

(assert (=> bs!8978 m!266429))

(assert (=> bs!8978 m!266261))

(assert (=> d!60711 d!60811))

(declare-fun d!60813 () Bool)

(declare-fun res!122527 () Bool)

(declare-fun e!162230 () Bool)

(assert (=> d!60813 (=> res!122527 e!162230)))

(assert (=> d!60813 (= res!122527 (bvsge #b00000000000000000000000000000000 (size!6168 (_keys!6749 thiss!1504))))))

(assert (=> d!60813 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 (_keys!6749 thiss!1504) (mask!10789 thiss!1504)) e!162230)))

(declare-fun b!250129 () Bool)

(declare-fun e!162228 () Bool)

(declare-fun e!162229 () Bool)

(assert (=> b!250129 (= e!162228 e!162229)))

(declare-fun lt!125378 () (_ BitVec 64))

(assert (=> b!250129 (= lt!125378 (select (arr!5824 (_keys!6749 thiss!1504)) #b00000000000000000000000000000000))))

(declare-fun lt!125376 () Unit!7731)

(assert (=> b!250129 (= lt!125376 (lemmaArrayContainsFromImpliesContainsFromZero!0 (_keys!6749 thiss!1504) lt!125378 #b00000000000000000000000000000000))))

(assert (=> b!250129 (arrayContainsKey!0 (_keys!6749 thiss!1504) lt!125378 #b00000000000000000000000000000000)))

(declare-fun lt!125377 () Unit!7731)

(assert (=> b!250129 (= lt!125377 lt!125376)))

(declare-fun res!122528 () Bool)

(assert (=> b!250129 (= res!122528 (= (seekEntryOrOpen!0 (select (arr!5824 (_keys!6749 thiss!1504)) #b00000000000000000000000000000000) (_keys!6749 thiss!1504) (mask!10789 thiss!1504)) (Found!1129 #b00000000000000000000000000000000)))))

(assert (=> b!250129 (=> (not res!122528) (not e!162229))))

(declare-fun b!250130 () Bool)

(declare-fun call!23501 () Bool)

(assert (=> b!250130 (= e!162229 call!23501)))

(declare-fun b!250131 () Bool)

(assert (=> b!250131 (= e!162228 call!23501)))

(declare-fun b!250132 () Bool)

(assert (=> b!250132 (= e!162230 e!162228)))

(declare-fun c!42003 () Bool)

(assert (=> b!250132 (= c!42003 (validKeyInArray!0 (select (arr!5824 (_keys!6749 thiss!1504)) #b00000000000000000000000000000000)))))

(declare-fun bm!23498 () Bool)

(assert (=> bm!23498 (= call!23501 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (_keys!6749 thiss!1504) (mask!10789 thiss!1504)))))

(assert (= (and d!60813 (not res!122527)) b!250132))

(assert (= (and b!250132 c!42003) b!250129))

(assert (= (and b!250132 (not c!42003)) b!250131))

(assert (= (and b!250129 res!122528) b!250130))

(assert (= (or b!250130 b!250131) bm!23498))

(assert (=> b!250129 m!266369))

(declare-fun m!266667 () Bool)

(assert (=> b!250129 m!266667))

(declare-fun m!266669 () Bool)

(assert (=> b!250129 m!266669))

(assert (=> b!250129 m!266369))

(declare-fun m!266671 () Bool)

(assert (=> b!250129 m!266671))

(assert (=> b!250132 m!266369))

(assert (=> b!250132 m!266369))

(assert (=> b!250132 m!266387))

(declare-fun m!266673 () Bool)

(assert (=> bm!23498 m!266673))

(assert (=> b!249787 d!60813))

(declare-fun d!60815 () Bool)

(declare-fun e!162231 () Bool)

(assert (=> d!60815 e!162231))

(declare-fun res!122529 () Bool)

(assert (=> d!60815 (=> (not res!122529) (not e!162231))))

(declare-fun lt!125382 () ListLongMap!3761)

(assert (=> d!60815 (= res!122529 (contains!1809 lt!125382 (_1!2427 (tuple2!4835 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!4458 thiss!1504)))))))

(declare-fun lt!125380 () List!3739)

(assert (=> d!60815 (= lt!125382 (ListLongMap!3762 lt!125380))))

(declare-fun lt!125379 () Unit!7731)

(declare-fun lt!125381 () Unit!7731)

(assert (=> d!60815 (= lt!125379 lt!125381)))

(assert (=> d!60815 (= (getValueByKey!296 lt!125380 (_1!2427 (tuple2!4835 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!4458 thiss!1504)))) (Some!301 (_2!2427 (tuple2!4835 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!4458 thiss!1504)))))))

(assert (=> d!60815 (= lt!125381 (lemmaContainsTupThenGetReturnValue!159 lt!125380 (_1!2427 (tuple2!4835 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!4458 thiss!1504))) (_2!2427 (tuple2!4835 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!4458 thiss!1504)))))))

(assert (=> d!60815 (= lt!125380 (insertStrictlySorted!161 (toList!1896 call!23473) (_1!2427 (tuple2!4835 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!4458 thiss!1504))) (_2!2427 (tuple2!4835 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!4458 thiss!1504)))))))

(assert (=> d!60815 (= (+!661 call!23473 (tuple2!4835 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!4458 thiss!1504))) lt!125382)))

(declare-fun b!250133 () Bool)

(declare-fun res!122530 () Bool)

(assert (=> b!250133 (=> (not res!122530) (not e!162231))))

(assert (=> b!250133 (= res!122530 (= (getValueByKey!296 (toList!1896 lt!125382) (_1!2427 (tuple2!4835 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!4458 thiss!1504)))) (Some!301 (_2!2427 (tuple2!4835 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!4458 thiss!1504))))))))

(declare-fun b!250134 () Bool)

(assert (=> b!250134 (= e!162231 (contains!1811 (toList!1896 lt!125382) (tuple2!4835 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!4458 thiss!1504))))))

(assert (= (and d!60815 res!122529) b!250133))

(assert (= (and b!250133 res!122530) b!250134))

(declare-fun m!266675 () Bool)

(assert (=> d!60815 m!266675))

(declare-fun m!266677 () Bool)

(assert (=> d!60815 m!266677))

(declare-fun m!266679 () Bool)

(assert (=> d!60815 m!266679))

(declare-fun m!266681 () Bool)

(assert (=> d!60815 m!266681))

(declare-fun m!266683 () Bool)

(assert (=> b!250133 m!266683))

(declare-fun m!266685 () Bool)

(assert (=> b!250134 m!266685))

(assert (=> b!249863 d!60815))

(declare-fun d!60817 () Bool)

(declare-fun res!122531 () Bool)

(declare-fun e!162234 () Bool)

(assert (=> d!60817 (=> res!122531 e!162234)))

(assert (=> d!60817 (= res!122531 (bvsge #b00000000000000000000000000000000 (size!6168 (array!12283 (store (arr!5824 (_keys!6749 thiss!1504)) index!297 key!932) (size!6168 (_keys!6749 thiss!1504))))))))

(assert (=> d!60817 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 (array!12283 (store (arr!5824 (_keys!6749 thiss!1504)) index!297 key!932) (size!6168 (_keys!6749 thiss!1504))) (mask!10789 thiss!1504)) e!162234)))

(declare-fun b!250135 () Bool)

(declare-fun e!162232 () Bool)

(declare-fun e!162233 () Bool)

(assert (=> b!250135 (= e!162232 e!162233)))

(declare-fun lt!125385 () (_ BitVec 64))

(assert (=> b!250135 (= lt!125385 (select (arr!5824 (array!12283 (store (arr!5824 (_keys!6749 thiss!1504)) index!297 key!932) (size!6168 (_keys!6749 thiss!1504)))) #b00000000000000000000000000000000))))

(declare-fun lt!125383 () Unit!7731)

(assert (=> b!250135 (= lt!125383 (lemmaArrayContainsFromImpliesContainsFromZero!0 (array!12283 (store (arr!5824 (_keys!6749 thiss!1504)) index!297 key!932) (size!6168 (_keys!6749 thiss!1504))) lt!125385 #b00000000000000000000000000000000))))

(assert (=> b!250135 (arrayContainsKey!0 (array!12283 (store (arr!5824 (_keys!6749 thiss!1504)) index!297 key!932) (size!6168 (_keys!6749 thiss!1504))) lt!125385 #b00000000000000000000000000000000)))

(declare-fun lt!125384 () Unit!7731)

(assert (=> b!250135 (= lt!125384 lt!125383)))

(declare-fun res!122532 () Bool)

(assert (=> b!250135 (= res!122532 (= (seekEntryOrOpen!0 (select (arr!5824 (array!12283 (store (arr!5824 (_keys!6749 thiss!1504)) index!297 key!932) (size!6168 (_keys!6749 thiss!1504)))) #b00000000000000000000000000000000) (array!12283 (store (arr!5824 (_keys!6749 thiss!1504)) index!297 key!932) (size!6168 (_keys!6749 thiss!1504))) (mask!10789 thiss!1504)) (Found!1129 #b00000000000000000000000000000000)))))

(assert (=> b!250135 (=> (not res!122532) (not e!162233))))

(declare-fun b!250136 () Bool)

(declare-fun call!23502 () Bool)

(assert (=> b!250136 (= e!162233 call!23502)))

(declare-fun b!250137 () Bool)

(assert (=> b!250137 (= e!162232 call!23502)))

(declare-fun b!250138 () Bool)

(assert (=> b!250138 (= e!162234 e!162232)))

(declare-fun c!42004 () Bool)

(assert (=> b!250138 (= c!42004 (validKeyInArray!0 (select (arr!5824 (array!12283 (store (arr!5824 (_keys!6749 thiss!1504)) index!297 key!932) (size!6168 (_keys!6749 thiss!1504)))) #b00000000000000000000000000000000)))))

(declare-fun bm!23499 () Bool)

(assert (=> bm!23499 (= call!23502 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (array!12283 (store (arr!5824 (_keys!6749 thiss!1504)) index!297 key!932) (size!6168 (_keys!6749 thiss!1504))) (mask!10789 thiss!1504)))))

(assert (= (and d!60817 (not res!122531)) b!250138))

(assert (= (and b!250138 c!42004) b!250135))

(assert (= (and b!250138 (not c!42004)) b!250137))

(assert (= (and b!250135 res!122532) b!250136))

(assert (= (or b!250136 b!250137) bm!23499))

(assert (=> b!250135 m!266511))

(declare-fun m!266687 () Bool)

(assert (=> b!250135 m!266687))

(declare-fun m!266689 () Bool)

(assert (=> b!250135 m!266689))

(assert (=> b!250135 m!266511))

(declare-fun m!266691 () Bool)

(assert (=> b!250135 m!266691))

(assert (=> b!250138 m!266511))

(assert (=> b!250138 m!266511))

(assert (=> b!250138 m!266513))

(declare-fun m!266693 () Bool)

(assert (=> bm!23499 m!266693))

(assert (=> b!249977 d!60817))

(declare-fun d!60819 () Bool)

(declare-fun res!122541 () Bool)

(declare-fun e!162237 () Bool)

(assert (=> d!60819 (=> (not res!122541) (not e!162237))))

(assert (=> d!60819 (= res!122541 (validMask!0 (mask!10789 thiss!1504)))))

(assert (=> d!60819 (= (simpleValid!261 thiss!1504) e!162237)))

(declare-fun b!250150 () Bool)

(assert (=> b!250150 (= e!162237 (and (bvsge (extraKeys!4354 thiss!1504) #b00000000000000000000000000000000) (bvsle (extraKeys!4354 thiss!1504) #b00000000000000000000000000000011) (bvsge (_vacant!1897 thiss!1504) #b00000000000000000000000000000000)))))

(declare-fun b!250149 () Bool)

(declare-fun res!122542 () Bool)

(assert (=> b!250149 (=> (not res!122542) (not e!162237))))

(declare-fun size!6171 (LongMapFixedSize!3696) (_ BitVec 32))

(assert (=> b!250149 (= res!122542 (= (size!6171 thiss!1504) (bvadd (_size!1897 thiss!1504) (bvsdiv (bvadd (extraKeys!4354 thiss!1504) #b00000000000000000000000000000001) #b00000000000000000000000000000010))))))

(declare-fun b!250147 () Bool)

(declare-fun res!122544 () Bool)

(assert (=> b!250147 (=> (not res!122544) (not e!162237))))

(assert (=> b!250147 (= res!122544 (and (= (size!6167 (_values!4600 thiss!1504)) (bvadd (mask!10789 thiss!1504) #b00000000000000000000000000000001)) (= (size!6168 (_keys!6749 thiss!1504)) (size!6167 (_values!4600 thiss!1504))) (bvsge (_size!1897 thiss!1504) #b00000000000000000000000000000000) (bvsle (_size!1897 thiss!1504) (bvadd (mask!10789 thiss!1504) #b00000000000000000000000000000001))))))

(declare-fun b!250148 () Bool)

(declare-fun res!122543 () Bool)

(assert (=> b!250148 (=> (not res!122543) (not e!162237))))

(assert (=> b!250148 (= res!122543 (bvsge (size!6171 thiss!1504) (_size!1897 thiss!1504)))))

(assert (= (and d!60819 res!122541) b!250147))

(assert (= (and b!250147 res!122544) b!250148))

(assert (= (and b!250148 res!122543) b!250149))

(assert (= (and b!250149 res!122542) b!250150))

(assert (=> d!60819 m!266249))

(declare-fun m!266695 () Bool)

(assert (=> b!250149 m!266695))

(assert (=> b!250148 m!266695))

(assert (=> d!60687 d!60819))

(assert (=> d!60695 d!60719))

(assert (=> b!249858 d!60747))

(declare-fun b!250151 () Bool)

(declare-fun e!162239 () (_ BitVec 32))

(declare-fun call!23503 () (_ BitVec 32))

(assert (=> b!250151 (= e!162239 (bvadd #b00000000000000000000000000000001 call!23503))))

(declare-fun b!250152 () Bool)

(declare-fun e!162238 () (_ BitVec 32))

(assert (=> b!250152 (= e!162238 #b00000000000000000000000000000000)))

(declare-fun bm!23500 () Bool)

(assert (=> bm!23500 (= call!23503 (arrayCountValidKeys!0 (array!12283 (store (arr!5824 (_keys!6749 thiss!1504)) index!297 key!932) (size!6168 (_keys!6749 thiss!1504))) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!6168 (_keys!6749 thiss!1504))))))

(declare-fun b!250153 () Bool)

(assert (=> b!250153 (= e!162239 call!23503)))

(declare-fun b!250154 () Bool)

(assert (=> b!250154 (= e!162238 e!162239)))

(declare-fun c!42006 () Bool)

(assert (=> b!250154 (= c!42006 (validKeyInArray!0 (select (arr!5824 (array!12283 (store (arr!5824 (_keys!6749 thiss!1504)) index!297 key!932) (size!6168 (_keys!6749 thiss!1504)))) #b00000000000000000000000000000000)))))

(declare-fun d!60821 () Bool)

(declare-fun lt!125386 () (_ BitVec 32))

(assert (=> d!60821 (and (bvsge lt!125386 #b00000000000000000000000000000000) (bvsle lt!125386 (bvsub (size!6168 (array!12283 (store (arr!5824 (_keys!6749 thiss!1504)) index!297 key!932) (size!6168 (_keys!6749 thiss!1504)))) #b00000000000000000000000000000000)))))

(assert (=> d!60821 (= lt!125386 e!162238)))

(declare-fun c!42005 () Bool)

(assert (=> d!60821 (= c!42005 (bvsge #b00000000000000000000000000000000 (size!6168 (_keys!6749 thiss!1504))))))

(assert (=> d!60821 (and (bvsle #b00000000000000000000000000000000 (size!6168 (_keys!6749 thiss!1504))) (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvsle (size!6168 (_keys!6749 thiss!1504)) (size!6168 (array!12283 (store (arr!5824 (_keys!6749 thiss!1504)) index!297 key!932) (size!6168 (_keys!6749 thiss!1504))))))))

(assert (=> d!60821 (= (arrayCountValidKeys!0 (array!12283 (store (arr!5824 (_keys!6749 thiss!1504)) index!297 key!932) (size!6168 (_keys!6749 thiss!1504))) #b00000000000000000000000000000000 (size!6168 (_keys!6749 thiss!1504))) lt!125386)))

(assert (= (and d!60821 c!42005) b!250152))

(assert (= (and d!60821 (not c!42005)) b!250154))

(assert (= (and b!250154 c!42006) b!250151))

(assert (= (and b!250154 (not c!42006)) b!250153))

(assert (= (or b!250151 b!250153) bm!23500))

(declare-fun m!266697 () Bool)

(assert (=> bm!23500 m!266697))

(assert (=> b!250154 m!266511))

(assert (=> b!250154 m!266511))

(assert (=> b!250154 m!266513))

(assert (=> b!249928 d!60821))

(assert (=> b!249928 d!60717))

(assert (=> d!60707 d!60697))

(declare-fun b!250171 () Bool)

(declare-fun e!162250 () Bool)

(declare-fun e!162251 () Bool)

(assert (=> b!250171 (= e!162250 e!162251)))

(declare-fun res!122553 () Bool)

(declare-fun call!23508 () Bool)

(assert (=> b!250171 (= res!122553 call!23508)))

(assert (=> b!250171 (=> (not res!122553) (not e!162251))))

(declare-fun b!250172 () Bool)

(declare-fun e!162248 () Bool)

(assert (=> b!250172 (= e!162250 e!162248)))

(declare-fun c!42012 () Bool)

(declare-fun lt!125389 () SeekEntryResult!1129)

(assert (=> b!250172 (= c!42012 ((_ is MissingVacant!1129) lt!125389))))

(declare-fun bm!23505 () Bool)

(declare-fun call!23509 () Bool)

(assert (=> bm!23505 (= call!23509 (arrayContainsKey!0 (_keys!6749 thiss!1504) key!932 #b00000000000000000000000000000000))))

(declare-fun b!250173 () Bool)

(assert (=> b!250173 (= e!162251 (not call!23509))))

(declare-fun b!250174 () Bool)

(declare-fun res!122554 () Bool)

(assert (=> b!250174 (= res!122554 (= (select (arr!5824 (_keys!6749 thiss!1504)) (index!6686 lt!125389)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!250174 (=> (not res!122554) (not e!162251))))

(declare-fun b!250175 () Bool)

(declare-fun res!122555 () Bool)

(declare-fun e!162249 () Bool)

(assert (=> b!250175 (=> (not res!122555) (not e!162249))))

(assert (=> b!250175 (= res!122555 call!23508)))

(assert (=> b!250175 (= e!162248 e!162249)))

(declare-fun bm!23506 () Bool)

(declare-fun c!42011 () Bool)

(assert (=> bm!23506 (= call!23508 (inRange!0 (ite c!42011 (index!6686 lt!125389) (index!6689 lt!125389)) (mask!10789 thiss!1504)))))

(declare-fun d!60823 () Bool)

(assert (=> d!60823 e!162250))

(assert (=> d!60823 (= c!42011 ((_ is MissingZero!1129) lt!125389))))

(assert (=> d!60823 (= lt!125389 (seekEntryOrOpen!0 key!932 (_keys!6749 thiss!1504) (mask!10789 thiss!1504)))))

(assert (=> d!60823 true))

(declare-fun _$34!1107 () Unit!7731)

(assert (=> d!60823 (= (choose!1188 (_keys!6749 thiss!1504) (_values!4600 thiss!1504) (mask!10789 thiss!1504) (extraKeys!4354 thiss!1504) (zeroValue!4458 thiss!1504) (minValue!4458 thiss!1504) key!932 (defaultEntry!4617 thiss!1504)) _$34!1107)))

(declare-fun b!250176 () Bool)

(assert (=> b!250176 (= e!162249 (not call!23509))))

(declare-fun b!250177 () Bool)

(assert (=> b!250177 (= e!162248 ((_ is Undefined!1129) lt!125389))))

(declare-fun b!250178 () Bool)

(declare-fun res!122556 () Bool)

(assert (=> b!250178 (=> (not res!122556) (not e!162249))))

(assert (=> b!250178 (= res!122556 (= (select (arr!5824 (_keys!6749 thiss!1504)) (index!6689 lt!125389)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (= (and d!60823 c!42011) b!250171))

(assert (= (and d!60823 (not c!42011)) b!250172))

(assert (= (and b!250171 res!122553) b!250174))

(assert (= (and b!250174 res!122554) b!250173))

(assert (= (and b!250172 c!42012) b!250175))

(assert (= (and b!250172 (not c!42012)) b!250177))

(assert (= (and b!250175 res!122555) b!250178))

(assert (= (and b!250178 res!122556) b!250176))

(assert (= (or b!250171 b!250175) bm!23506))

(assert (= (or b!250173 b!250176) bm!23505))

(declare-fun m!266699 () Bool)

(assert (=> b!250178 m!266699))

(declare-fun m!266701 () Bool)

(assert (=> bm!23506 m!266701))

(declare-fun m!266703 () Bool)

(assert (=> b!250174 m!266703))

(assert (=> bm!23505 m!266221))

(assert (=> d!60823 m!266243))

(assert (=> d!60707 d!60823))

(assert (=> d!60707 d!60719))

(declare-fun b!250179 () Bool)

(declare-fun e!162254 () Bool)

(declare-fun e!162255 () Bool)

(assert (=> b!250179 (= e!162254 e!162255)))

(declare-fun c!42013 () Bool)

(assert (=> b!250179 (= c!42013 (validKeyInArray!0 (select (arr!5824 lt!125125) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001))))))

(declare-fun b!250180 () Bool)

(declare-fun e!162253 () Bool)

(assert (=> b!250180 (= e!162253 e!162254)))

(declare-fun res!122559 () Bool)

(assert (=> b!250180 (=> (not res!122559) (not e!162254))))

(declare-fun e!162252 () Bool)

(assert (=> b!250180 (= res!122559 (not e!162252))))

(declare-fun res!122558 () Bool)

(assert (=> b!250180 (=> (not res!122558) (not e!162252))))

(assert (=> b!250180 (= res!122558 (validKeyInArray!0 (select (arr!5824 lt!125125) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001))))))

(declare-fun d!60825 () Bool)

(declare-fun res!122557 () Bool)

(assert (=> d!60825 (=> res!122557 e!162253)))

(assert (=> d!60825 (= res!122557 (bvsge (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!6168 lt!125125)))))

(assert (=> d!60825 (= (arrayNoDuplicates!0 lt!125125 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (ite c!41962 (Cons!3736 (select (arr!5824 lt!125125) #b00000000000000000000000000000000) Nil!3737) Nil!3737)) e!162253)))

(declare-fun b!250181 () Bool)

(declare-fun call!23510 () Bool)

(assert (=> b!250181 (= e!162255 call!23510)))

(declare-fun b!250182 () Bool)

(assert (=> b!250182 (= e!162252 (contains!1810 (ite c!41962 (Cons!3736 (select (arr!5824 lt!125125) #b00000000000000000000000000000000) Nil!3737) Nil!3737) (select (arr!5824 lt!125125) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001))))))

(declare-fun b!250183 () Bool)

(assert (=> b!250183 (= e!162255 call!23510)))

(declare-fun bm!23507 () Bool)

(assert (=> bm!23507 (= call!23510 (arrayNoDuplicates!0 lt!125125 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001 #b00000000000000000000000000000001) (ite c!42013 (Cons!3736 (select (arr!5824 lt!125125) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)) (ite c!41962 (Cons!3736 (select (arr!5824 lt!125125) #b00000000000000000000000000000000) Nil!3737) Nil!3737)) (ite c!41962 (Cons!3736 (select (arr!5824 lt!125125) #b00000000000000000000000000000000) Nil!3737) Nil!3737))))))

(assert (= (and d!60825 (not res!122557)) b!250180))

(assert (= (and b!250180 res!122558) b!250182))

(assert (= (and b!250180 res!122559) b!250179))

(assert (= (and b!250179 c!42013) b!250181))

(assert (= (and b!250179 (not c!42013)) b!250183))

(assert (= (or b!250181 b!250183) bm!23507))

(assert (=> b!250179 m!266481))

(assert (=> b!250179 m!266481))

(assert (=> b!250179 m!266483))

(assert (=> b!250180 m!266481))

(assert (=> b!250180 m!266481))

(assert (=> b!250180 m!266483))

(assert (=> b!250182 m!266481))

(assert (=> b!250182 m!266481))

(declare-fun m!266705 () Bool)

(assert (=> b!250182 m!266705))

(assert (=> bm!23507 m!266481))

(declare-fun m!266707 () Bool)

(assert (=> bm!23507 m!266707))

(assert (=> bm!23490 d!60825))

(declare-fun d!60827 () Bool)

(assert (=> d!60827 (= (apply!239 lt!125222 #b1000000000000000000000000000000000000000000000000000000000000000) (get!2993 (getValueByKey!296 (toList!1896 lt!125222) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun bs!8979 () Bool)

(assert (= bs!8979 d!60827))

(assert (=> bs!8979 m!266663))

(assert (=> bs!8979 m!266663))

(declare-fun m!266709 () Bool)

(assert (=> bs!8979 m!266709))

(assert (=> b!249856 d!60827))

(declare-fun d!60829 () Bool)

(assert (=> d!60829 (= (validKeyInArray!0 (select (arr!5824 (_keys!6749 thiss!1504)) index!297)) (and (not (= (select (arr!5824 (_keys!6749 thiss!1504)) index!297) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!5824 (_keys!6749 thiss!1504)) index!297) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!249925 d!60829))

(declare-fun d!60831 () Bool)

(declare-fun res!122560 () Bool)

(declare-fun e!162258 () Bool)

(assert (=> d!60831 (=> res!122560 e!162258)))

(assert (=> d!60831 (= res!122560 (bvsge (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!6168 lt!125125)))))

(assert (=> d!60831 (= (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) lt!125125 (mask!10789 thiss!1504)) e!162258)))

(declare-fun b!250184 () Bool)

(declare-fun e!162256 () Bool)

(declare-fun e!162257 () Bool)

(assert (=> b!250184 (= e!162256 e!162257)))

(declare-fun lt!125392 () (_ BitVec 64))

(assert (=> b!250184 (= lt!125392 (select (arr!5824 lt!125125) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)))))

(declare-fun lt!125390 () Unit!7731)

(assert (=> b!250184 (= lt!125390 (lemmaArrayContainsFromImpliesContainsFromZero!0 lt!125125 lt!125392 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)))))

(assert (=> b!250184 (arrayContainsKey!0 lt!125125 lt!125392 #b00000000000000000000000000000000)))

(declare-fun lt!125391 () Unit!7731)

(assert (=> b!250184 (= lt!125391 lt!125390)))

(declare-fun res!122561 () Bool)

(assert (=> b!250184 (= res!122561 (= (seekEntryOrOpen!0 (select (arr!5824 lt!125125) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)) lt!125125 (mask!10789 thiss!1504)) (Found!1129 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001))))))

(assert (=> b!250184 (=> (not res!122561) (not e!162257))))

(declare-fun b!250185 () Bool)

(declare-fun call!23511 () Bool)

(assert (=> b!250185 (= e!162257 call!23511)))

(declare-fun b!250186 () Bool)

(assert (=> b!250186 (= e!162256 call!23511)))

(declare-fun b!250187 () Bool)

(assert (=> b!250187 (= e!162258 e!162256)))

(declare-fun c!42014 () Bool)

(assert (=> b!250187 (= c!42014 (validKeyInArray!0 (select (arr!5824 lt!125125) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001))))))

(declare-fun bm!23508 () Bool)

(assert (=> bm!23508 (= call!23511 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001 #b00000000000000000000000000000001) lt!125125 (mask!10789 thiss!1504)))))

(assert (= (and d!60831 (not res!122560)) b!250187))

(assert (= (and b!250187 c!42014) b!250184))

(assert (= (and b!250187 (not c!42014)) b!250186))

(assert (= (and b!250184 res!122561) b!250185))

(assert (= (or b!250185 b!250186) bm!23508))

(assert (=> b!250184 m!266481))

(declare-fun m!266711 () Bool)

(assert (=> b!250184 m!266711))

(declare-fun m!266713 () Bool)

(assert (=> b!250184 m!266713))

(assert (=> b!250184 m!266481))

(declare-fun m!266715 () Bool)

(assert (=> b!250184 m!266715))

(assert (=> b!250187 m!266481))

(assert (=> b!250187 m!266481))

(assert (=> b!250187 m!266483))

(declare-fun m!266717 () Bool)

(assert (=> bm!23508 m!266717))

(assert (=> bm!23483 d!60831))

(declare-fun d!60833 () Bool)

(declare-fun lt!125395 () Bool)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!164 (List!3740) (InoxSet (_ BitVec 64)))

(assert (=> d!60833 (= lt!125395 (select (content!164 Nil!3737) (select (arr!5824 lt!125125) #b00000000000000000000000000000000)))))

(declare-fun e!162264 () Bool)

(assert (=> d!60833 (= lt!125395 e!162264)))

(declare-fun res!122567 () Bool)

(assert (=> d!60833 (=> (not res!122567) (not e!162264))))

(assert (=> d!60833 (= res!122567 ((_ is Cons!3736) Nil!3737))))

(assert (=> d!60833 (= (contains!1810 Nil!3737 (select (arr!5824 lt!125125) #b00000000000000000000000000000000)) lt!125395)))

(declare-fun b!250192 () Bool)

(declare-fun e!162263 () Bool)

(assert (=> b!250192 (= e!162264 e!162263)))

(declare-fun res!122566 () Bool)

(assert (=> b!250192 (=> res!122566 e!162263)))

(assert (=> b!250192 (= res!122566 (= (h!4395 Nil!3737) (select (arr!5824 lt!125125) #b00000000000000000000000000000000)))))

(declare-fun b!250193 () Bool)

(assert (=> b!250193 (= e!162263 (contains!1810 (t!8779 Nil!3737) (select (arr!5824 lt!125125) #b00000000000000000000000000000000)))))

(assert (= (and d!60833 res!122567) b!250192))

(assert (= (and b!250192 (not res!122566)) b!250193))

(declare-fun m!266719 () Bool)

(assert (=> d!60833 m!266719))

(assert (=> d!60833 m!266431))

(declare-fun m!266721 () Bool)

(assert (=> d!60833 m!266721))

(assert (=> b!250193 m!266431))

(declare-fun m!266723 () Bool)

(assert (=> b!250193 m!266723))

(assert (=> b!249970 d!60833))

(declare-fun d!60835 () Bool)

(assert (=> d!60835 (arrayContainsKey!0 lt!125125 lt!125272 #b00000000000000000000000000000000)))

(declare-fun lt!125398 () Unit!7731)

(declare-fun choose!13 (array!12282 (_ BitVec 64) (_ BitVec 32)) Unit!7731)

(assert (=> d!60835 (= lt!125398 (choose!13 lt!125125 lt!125272 #b00000000000000000000000000000000))))

(assert (=> d!60835 (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000)))

(assert (=> d!60835 (= (lemmaArrayContainsFromImpliesContainsFromZero!0 lt!125125 lt!125272 #b00000000000000000000000000000000) lt!125398)))

(declare-fun bs!8980 () Bool)

(assert (= bs!8980 d!60835))

(assert (=> bs!8980 m!266435))

(declare-fun m!266725 () Bool)

(assert (=> bs!8980 m!266725))

(assert (=> b!249937 d!60835))

(declare-fun d!60837 () Bool)

(declare-fun res!122568 () Bool)

(declare-fun e!162265 () Bool)

(assert (=> d!60837 (=> res!122568 e!162265)))

(assert (=> d!60837 (= res!122568 (= (select (arr!5824 lt!125125) #b00000000000000000000000000000000) lt!125272))))

(assert (=> d!60837 (= (arrayContainsKey!0 lt!125125 lt!125272 #b00000000000000000000000000000000) e!162265)))

(declare-fun b!250194 () Bool)

(declare-fun e!162266 () Bool)

(assert (=> b!250194 (= e!162265 e!162266)))

(declare-fun res!122569 () Bool)

(assert (=> b!250194 (=> (not res!122569) (not e!162266))))

(assert (=> b!250194 (= res!122569 (bvslt (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!6168 lt!125125)))))

(declare-fun b!250195 () Bool)

(assert (=> b!250195 (= e!162266 (arrayContainsKey!0 lt!125125 lt!125272 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)))))

(assert (= (and d!60837 (not res!122568)) b!250194))

(assert (= (and b!250194 res!122569) b!250195))

(assert (=> d!60837 m!266431))

(declare-fun m!266727 () Bool)

(assert (=> b!250195 m!266727))

(assert (=> b!249937 d!60837))

(declare-fun b!250197 () Bool)

(declare-fun e!162268 () SeekEntryResult!1129)

(declare-fun lt!125401 () SeekEntryResult!1129)

(assert (=> b!250197 (= e!162268 (MissingZero!1129 (index!6688 lt!125401)))))

(declare-fun b!250198 () Bool)

(declare-fun e!162267 () SeekEntryResult!1129)

(declare-fun e!162269 () SeekEntryResult!1129)

(assert (=> b!250198 (= e!162267 e!162269)))

(declare-fun lt!125399 () (_ BitVec 64))

(assert (=> b!250198 (= lt!125399 (select (arr!5824 lt!125125) (index!6688 lt!125401)))))

(declare-fun c!42015 () Bool)

(assert (=> b!250198 (= c!42015 (= lt!125399 (select (arr!5824 lt!125125) #b00000000000000000000000000000000)))))

(declare-fun b!250199 () Bool)

(declare-fun c!42016 () Bool)

(assert (=> b!250199 (= c!42016 (= lt!125399 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!250199 (= e!162269 e!162268)))

(declare-fun b!250200 () Bool)

(assert (=> b!250200 (= e!162267 Undefined!1129)))

(declare-fun b!250201 () Bool)

(assert (=> b!250201 (= e!162268 (seekKeyOrZeroReturnVacant!0 (x!24653 lt!125401) (index!6688 lt!125401) (index!6688 lt!125401) (select (arr!5824 lt!125125) #b00000000000000000000000000000000) lt!125125 (mask!10789 thiss!1504)))))

(declare-fun d!60839 () Bool)

(declare-fun lt!125400 () SeekEntryResult!1129)

(assert (=> d!60839 (and (or ((_ is Undefined!1129) lt!125400) (not ((_ is Found!1129) lt!125400)) (and (bvsge (index!6687 lt!125400) #b00000000000000000000000000000000) (bvslt (index!6687 lt!125400) (size!6168 lt!125125)))) (or ((_ is Undefined!1129) lt!125400) ((_ is Found!1129) lt!125400) (not ((_ is MissingZero!1129) lt!125400)) (and (bvsge (index!6686 lt!125400) #b00000000000000000000000000000000) (bvslt (index!6686 lt!125400) (size!6168 lt!125125)))) (or ((_ is Undefined!1129) lt!125400) ((_ is Found!1129) lt!125400) ((_ is MissingZero!1129) lt!125400) (not ((_ is MissingVacant!1129) lt!125400)) (and (bvsge (index!6689 lt!125400) #b00000000000000000000000000000000) (bvslt (index!6689 lt!125400) (size!6168 lt!125125)))) (or ((_ is Undefined!1129) lt!125400) (ite ((_ is Found!1129) lt!125400) (= (select (arr!5824 lt!125125) (index!6687 lt!125400)) (select (arr!5824 lt!125125) #b00000000000000000000000000000000)) (ite ((_ is MissingZero!1129) lt!125400) (= (select (arr!5824 lt!125125) (index!6686 lt!125400)) #b0000000000000000000000000000000000000000000000000000000000000000) (and ((_ is MissingVacant!1129) lt!125400) (= (select (arr!5824 lt!125125) (index!6689 lt!125400)) #b1000000000000000000000000000000000000000000000000000000000000000))))))))

(assert (=> d!60839 (= lt!125400 e!162267)))

(declare-fun c!42017 () Bool)

(assert (=> d!60839 (= c!42017 (and ((_ is Intermediate!1129) lt!125401) (undefined!1941 lt!125401)))))

(assert (=> d!60839 (= lt!125401 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!5824 lt!125125) #b00000000000000000000000000000000) (mask!10789 thiss!1504)) (select (arr!5824 lt!125125) #b00000000000000000000000000000000) lt!125125 (mask!10789 thiss!1504)))))

(assert (=> d!60839 (validMask!0 (mask!10789 thiss!1504))))

(assert (=> d!60839 (= (seekEntryOrOpen!0 (select (arr!5824 lt!125125) #b00000000000000000000000000000000) lt!125125 (mask!10789 thiss!1504)) lt!125400)))

(declare-fun b!250196 () Bool)

(assert (=> b!250196 (= e!162269 (Found!1129 (index!6688 lt!125401)))))

(assert (= (and d!60839 c!42017) b!250200))

(assert (= (and d!60839 (not c!42017)) b!250198))

(assert (= (and b!250198 c!42015) b!250196))

(assert (= (and b!250198 (not c!42015)) b!250199))

(assert (= (and b!250199 c!42016) b!250197))

(assert (= (and b!250199 (not c!42016)) b!250201))

(declare-fun m!266729 () Bool)

(assert (=> b!250198 m!266729))

(assert (=> b!250201 m!266431))

(declare-fun m!266731 () Bool)

(assert (=> b!250201 m!266731))

(assert (=> d!60839 m!266249))

(declare-fun m!266733 () Bool)

(assert (=> d!60839 m!266733))

(assert (=> d!60839 m!266431))

(declare-fun m!266735 () Bool)

(assert (=> d!60839 m!266735))

(assert (=> d!60839 m!266431))

(assert (=> d!60839 m!266733))

(declare-fun m!266737 () Bool)

(assert (=> d!60839 m!266737))

(declare-fun m!266739 () Bool)

(assert (=> d!60839 m!266739))

(declare-fun m!266741 () Bool)

(assert (=> d!60839 m!266741))

(assert (=> b!249937 d!60839))

(declare-fun d!60841 () Bool)

(declare-fun res!122574 () Bool)

(declare-fun e!162274 () Bool)

(assert (=> d!60841 (=> res!122574 e!162274)))

(assert (=> d!60841 (= res!122574 (and ((_ is Cons!3735) (toList!1896 (getCurrentListMap!1419 (_keys!6749 thiss!1504) (_values!4600 thiss!1504) (mask!10789 thiss!1504) (extraKeys!4354 thiss!1504) (zeroValue!4458 thiss!1504) (minValue!4458 thiss!1504) #b00000000000000000000000000000000 (defaultEntry!4617 thiss!1504)))) (= (_1!2427 (h!4394 (toList!1896 (getCurrentListMap!1419 (_keys!6749 thiss!1504) (_values!4600 thiss!1504) (mask!10789 thiss!1504) (extraKeys!4354 thiss!1504) (zeroValue!4458 thiss!1504) (minValue!4458 thiss!1504) #b00000000000000000000000000000000 (defaultEntry!4617 thiss!1504))))) key!932)))))

(assert (=> d!60841 (= (containsKey!288 (toList!1896 (getCurrentListMap!1419 (_keys!6749 thiss!1504) (_values!4600 thiss!1504) (mask!10789 thiss!1504) (extraKeys!4354 thiss!1504) (zeroValue!4458 thiss!1504) (minValue!4458 thiss!1504) #b00000000000000000000000000000000 (defaultEntry!4617 thiss!1504))) key!932) e!162274)))

(declare-fun b!250206 () Bool)

(declare-fun e!162275 () Bool)

(assert (=> b!250206 (= e!162274 e!162275)))

(declare-fun res!122575 () Bool)

(assert (=> b!250206 (=> (not res!122575) (not e!162275))))

(assert (=> b!250206 (= res!122575 (and (or (not ((_ is Cons!3735) (toList!1896 (getCurrentListMap!1419 (_keys!6749 thiss!1504) (_values!4600 thiss!1504) (mask!10789 thiss!1504) (extraKeys!4354 thiss!1504) (zeroValue!4458 thiss!1504) (minValue!4458 thiss!1504) #b00000000000000000000000000000000 (defaultEntry!4617 thiss!1504))))) (bvsle (_1!2427 (h!4394 (toList!1896 (getCurrentListMap!1419 (_keys!6749 thiss!1504) (_values!4600 thiss!1504) (mask!10789 thiss!1504) (extraKeys!4354 thiss!1504) (zeroValue!4458 thiss!1504) (minValue!4458 thiss!1504) #b00000000000000000000000000000000 (defaultEntry!4617 thiss!1504))))) key!932)) ((_ is Cons!3735) (toList!1896 (getCurrentListMap!1419 (_keys!6749 thiss!1504) (_values!4600 thiss!1504) (mask!10789 thiss!1504) (extraKeys!4354 thiss!1504) (zeroValue!4458 thiss!1504) (minValue!4458 thiss!1504) #b00000000000000000000000000000000 (defaultEntry!4617 thiss!1504)))) (bvslt (_1!2427 (h!4394 (toList!1896 (getCurrentListMap!1419 (_keys!6749 thiss!1504) (_values!4600 thiss!1504) (mask!10789 thiss!1504) (extraKeys!4354 thiss!1504) (zeroValue!4458 thiss!1504) (minValue!4458 thiss!1504) #b00000000000000000000000000000000 (defaultEntry!4617 thiss!1504))))) key!932)))))

(declare-fun b!250207 () Bool)

(assert (=> b!250207 (= e!162275 (containsKey!288 (t!8778 (toList!1896 (getCurrentListMap!1419 (_keys!6749 thiss!1504) (_values!4600 thiss!1504) (mask!10789 thiss!1504) (extraKeys!4354 thiss!1504) (zeroValue!4458 thiss!1504) (minValue!4458 thiss!1504) #b00000000000000000000000000000000 (defaultEntry!4617 thiss!1504)))) key!932))))

(assert (= (and d!60841 (not res!122574)) b!250206))

(assert (= (and b!250206 res!122575) b!250207))

(declare-fun m!266743 () Bool)

(assert (=> b!250207 m!266743))

(assert (=> d!60693 d!60841))

(assert (=> b!249968 d!60727))

(assert (=> bm!23480 d!60705))

(declare-fun b!250220 () Bool)

(declare-fun e!162284 () SeekEntryResult!1129)

(assert (=> b!250220 (= e!162284 (Found!1129 (index!6688 lt!125251)))))

(declare-fun d!60843 () Bool)

(declare-fun lt!125407 () SeekEntryResult!1129)

(assert (=> d!60843 (and (or ((_ is Undefined!1129) lt!125407) (not ((_ is Found!1129) lt!125407)) (and (bvsge (index!6687 lt!125407) #b00000000000000000000000000000000) (bvslt (index!6687 lt!125407) (size!6168 (_keys!6749 thiss!1504))))) (or ((_ is Undefined!1129) lt!125407) ((_ is Found!1129) lt!125407) (not ((_ is MissingVacant!1129) lt!125407)) (not (= (index!6689 lt!125407) (index!6688 lt!125251))) (and (bvsge (index!6689 lt!125407) #b00000000000000000000000000000000) (bvslt (index!6689 lt!125407) (size!6168 (_keys!6749 thiss!1504))))) (or ((_ is Undefined!1129) lt!125407) (ite ((_ is Found!1129) lt!125407) (= (select (arr!5824 (_keys!6749 thiss!1504)) (index!6687 lt!125407)) key!932) (and ((_ is MissingVacant!1129) lt!125407) (= (index!6689 lt!125407) (index!6688 lt!125251)) (= (select (arr!5824 (_keys!6749 thiss!1504)) (index!6689 lt!125407)) #b1000000000000000000000000000000000000000000000000000000000000000)))))))

(declare-fun e!162283 () SeekEntryResult!1129)

(assert (=> d!60843 (= lt!125407 e!162283)))

(declare-fun c!42026 () Bool)

(assert (=> d!60843 (= c!42026 (bvsge (x!24653 lt!125251) #b01111111111111111111111111111110))))

(declare-fun lt!125406 () (_ BitVec 64))

(assert (=> d!60843 (= lt!125406 (select (arr!5824 (_keys!6749 thiss!1504)) (index!6688 lt!125251)))))

(assert (=> d!60843 (validMask!0 (mask!10789 thiss!1504))))

(assert (=> d!60843 (= (seekKeyOrZeroReturnVacant!0 (x!24653 lt!125251) (index!6688 lt!125251) (index!6688 lt!125251) key!932 (_keys!6749 thiss!1504) (mask!10789 thiss!1504)) lt!125407)))

(declare-fun b!250221 () Bool)

(assert (=> b!250221 (= e!162283 e!162284)))

(declare-fun c!42024 () Bool)

(assert (=> b!250221 (= c!42024 (= lt!125406 key!932))))

(declare-fun b!250222 () Bool)

(assert (=> b!250222 (= e!162283 Undefined!1129)))

(declare-fun b!250223 () Bool)

(declare-fun e!162282 () SeekEntryResult!1129)

(assert (=> b!250223 (= e!162282 (seekKeyOrZeroReturnVacant!0 (bvadd (x!24653 lt!125251) #b00000000000000000000000000000001) (nextIndex!0 (index!6688 lt!125251) (x!24653 lt!125251) (mask!10789 thiss!1504)) (index!6688 lt!125251) key!932 (_keys!6749 thiss!1504) (mask!10789 thiss!1504)))))

(declare-fun b!250224 () Bool)

(declare-fun c!42025 () Bool)

(assert (=> b!250224 (= c!42025 (= lt!125406 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!250224 (= e!162284 e!162282)))

(declare-fun b!250225 () Bool)

(assert (=> b!250225 (= e!162282 (MissingVacant!1129 (index!6688 lt!125251)))))

(assert (= (and d!60843 c!42026) b!250222))

(assert (= (and d!60843 (not c!42026)) b!250221))

(assert (= (and b!250221 c!42024) b!250220))

(assert (= (and b!250221 (not c!42024)) b!250224))

(assert (= (and b!250224 c!42025) b!250225))

(assert (= (and b!250224 (not c!42025)) b!250223))

(declare-fun m!266745 () Bool)

(assert (=> d!60843 m!266745))

(declare-fun m!266747 () Bool)

(assert (=> d!60843 m!266747))

(assert (=> d!60843 m!266395))

(assert (=> d!60843 m!266249))

(declare-fun m!266749 () Bool)

(assert (=> b!250223 m!266749))

(assert (=> b!250223 m!266749))

(declare-fun m!266751 () Bool)

(assert (=> b!250223 m!266751))

(assert (=> b!249886 d!60843))

(declare-fun b!250226 () Bool)

(declare-fun e!162285 () Bool)

(assert (=> b!250226 (= e!162285 tp_is_empty!6483)))

(declare-fun mapNonEmpty!11020 () Bool)

(declare-fun mapRes!11020 () Bool)

(declare-fun tp!23134 () Bool)

(assert (=> mapNonEmpty!11020 (= mapRes!11020 (and tp!23134 e!162285))))

(declare-fun mapKey!11020 () (_ BitVec 32))

(declare-fun mapRest!11020 () (Array (_ BitVec 32) ValueCell!2898))

(declare-fun mapValue!11020 () ValueCell!2898)

(assert (=> mapNonEmpty!11020 (= mapRest!11019 (store mapRest!11020 mapKey!11020 mapValue!11020))))

(declare-fun b!250227 () Bool)

(declare-fun e!162286 () Bool)

(assert (=> b!250227 (= e!162286 tp_is_empty!6483)))

(declare-fun mapIsEmpty!11020 () Bool)

(assert (=> mapIsEmpty!11020 mapRes!11020))

(declare-fun condMapEmpty!11020 () Bool)

(declare-fun mapDefault!11020 () ValueCell!2898)

(assert (=> mapNonEmpty!11019 (= condMapEmpty!11020 (= mapRest!11019 ((as const (Array (_ BitVec 32) ValueCell!2898)) mapDefault!11020)))))

(assert (=> mapNonEmpty!11019 (= tp!23133 (and e!162286 mapRes!11020))))

(assert (= (and mapNonEmpty!11019 condMapEmpty!11020) mapIsEmpty!11020))

(assert (= (and mapNonEmpty!11019 (not condMapEmpty!11020)) mapNonEmpty!11020))

(assert (= (and mapNonEmpty!11020 ((_ is ValueCellFull!2898) mapValue!11020)) b!250226))

(assert (= (and mapNonEmpty!11019 ((_ is ValueCellFull!2898) mapDefault!11020)) b!250227))

(declare-fun m!266753 () Bool)

(assert (=> mapNonEmpty!11020 m!266753))

(declare-fun b_lambda!8113 () Bool)

(assert (= b_lambda!8109 (or (and b!249715 b_free!6621) b_lambda!8113)))

(declare-fun b_lambda!8115 () Bool)

(assert (= b_lambda!8111 (or (and b!249715 b_free!6621) b_lambda!8115)))

(check-sat (not d!60779) (not b!250007) (not b!250011) (not b!250223) (not d!60789) (not d!60835) (not b!250154) (not d!60777) (not d!60783) (not b!250058) (not d!60827) (not b!250008) (not b!250180) (not d!60775) (not b!250125) (not b!250116) (not bm!23499) (not d!60801) (not bm!23498) (not b!249988) (not d!60803) (not b!250003) (not bm!23506) (not d!60843) (not b!250001) (not d!60743) (not d!60763) (not b!250108) (not d!60787) (not d!60755) (not b!250134) (not d!60807) (not b!250111) (not d!60809) (not d!60815) (not b!250050) (not b!250104) (not d!60765) (not d!60731) (not b!250110) (not b!250059) (not b!250129) (not d!60749) (not b!250071) (not d!60729) (not b!250019) (not b!250122) (not bm!23492) (not b!250061) (not b!250135) (not d!60785) (not b!250038) (not b!250101) (not d!60839) (not b!250100) (not d!60823) (not b!250128) (not bm!23508) (not b_lambda!8113) (not b!250062) (not b!250179) (not b!250075) (not b!250126) (not b!250009) (not b!250133) (not b_lambda!8107) (not b!250074) (not b!250201) (not d!60781) (not d!60767) (not b!250102) (not d!60737) (not b!250195) (not bm!23497) (not d!60819) (not b!250069) (not bm!23494) (not b!250132) (not d!60773) (not b!250070) (not b!250013) (not b!250123) (not b!250148) (not b!250207) (not b!250187) (not b!250047) (not b!250184) (not d!60791) (not d!60811) (not b!250106) tp_is_empty!6483 (not b_lambda!8115) (not d!60771) (not d!60793) (not b!249999) (not d!60735) (not d!60833) (not b!250138) (not d!60769) (not b!250067) (not b!250149) (not b_next!6621) (not mapNonEmpty!11020) (not bm!23491) (not b!250193) (not bm!23507) (not bm!23505) (not b!250182) (not b!250048) (not b!250053) (not d!60751) (not d!60797) (not bm!23493) (not b!250124) (not bm!23500) b_and!13661 (not b!250015))
(check-sat b_and!13661 (not b_next!6621))
