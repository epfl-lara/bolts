; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!416564 () Bool)

(assert start!416564)

(declare-fun b!4325511 () Bool)

(declare-fun b_free!129059 () Bool)

(declare-fun b_next!129763 () Bool)

(assert (=> b!4325511 (= b_free!129059 (not b_next!129763))))

(declare-fun tp!1327551 () Bool)

(declare-fun b_and!340641 () Bool)

(assert (=> b!4325511 (= tp!1327551 b_and!340641)))

(declare-fun b!4325508 () Bool)

(declare-fun b_free!129061 () Bool)

(declare-fun b_next!129765 () Bool)

(assert (=> b!4325508 (= b_free!129061 (not b_next!129765))))

(declare-fun tp!1327553 () Bool)

(declare-fun b_and!340643 () Bool)

(assert (=> b!4325508 (= tp!1327553 b_and!340643)))

(declare-fun mapNonEmpty!21279 () Bool)

(declare-fun mapRes!21279 () Bool)

(declare-fun tp!1327550 () Bool)

(declare-fun tp!1327554 () Bool)

(assert (=> mapNonEmpty!21279 (= mapRes!21279 (and tp!1327550 tp!1327554))))

(declare-datatypes ((K!9684 0))(
  ( (K!9685 (val!16005 Int)) )
))
(declare-datatypes ((V!9886 0))(
  ( (V!9887 (val!16006 Int)) )
))
(declare-datatypes ((tuple2!47328 0))(
  ( (tuple2!47329 (_1!26952 K!9684) (_2!26952 V!9886)) )
))
(declare-datatypes ((List!48551 0))(
  ( (Nil!48427) (Cons!48427 (h!53895 tuple2!47328) (t!355453 List!48551)) )
))
(declare-fun mapValue!21279 () List!48551)

(declare-fun mapKey!21279 () (_ BitVec 32))

(declare-fun mapRest!21279 () (Array (_ BitVec 32) List!48551))

(declare-datatypes ((array!17336 0))(
  ( (array!17337 (arr!7735 (Array (_ BitVec 32) (_ BitVec 64))) (size!35774 (_ BitVec 32))) )
))
(declare-datatypes ((Hashable!4691 0))(
  ( (HashableExt!4690 (__x!30350 Int)) )
))
(declare-datatypes ((array!17338 0))(
  ( (array!17339 (arr!7736 (Array (_ BitVec 32) List!48551)) (size!35775 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!9550 0))(
  ( (LongMapFixedSize!9551 (defaultEntry!5180 Int) (mask!13425 (_ BitVec 32)) (extraKeys!5040 (_ BitVec 32)) (zeroValue!5052 List!48551) (minValue!5052 List!48551) (_size!9595 (_ BitVec 32)) (_keys!5101 array!17336) (_values!5076 array!17338) (_vacant!4838 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!18909 0))(
  ( (Cell!18910 (v!42870 LongMapFixedSize!9550)) )
))
(declare-datatypes ((MutLongMap!4775 0))(
  ( (LongMap!4775 (underlying!9779 Cell!18909)) (MutLongMapExt!4774 (__x!30351 Int)) )
))
(declare-datatypes ((Cell!18911 0))(
  ( (Cell!18912 (v!42871 MutLongMap!4775)) )
))
(declare-datatypes ((MutableMap!4681 0))(
  ( (MutableMapExt!4680 (__x!30352 Int)) (HashMap!4681 (underlying!9780 Cell!18911) (hashF!6997 Hashable!4691) (_size!9596 (_ BitVec 32)) (defaultValue!4852 Int)) )
))
(declare-fun thiss!42308 () MutableMap!4681)

(assert (=> mapNonEmpty!21279 (= (arr!7736 (_values!5076 (v!42870 (underlying!9779 (v!42871 (underlying!9780 thiss!42308)))))) (store mapRest!21279 mapKey!21279 mapValue!21279))))

(declare-fun b!4325500 () Bool)

(declare-fun e!2691352 () Bool)

(declare-fun e!2691351 () Bool)

(assert (=> b!4325500 (= e!2691352 e!2691351)))

(declare-fun res!1772643 () Bool)

(assert (=> b!4325500 (=> (not res!1772643) (not e!2691351))))

(declare-fun key!2048 () K!9684)

(declare-fun contains!10506 (MutableMap!4681 K!9684) Bool)

(assert (=> b!4325500 (= res!1772643 (not (contains!10506 thiss!42308 key!2048)))))

(declare-datatypes ((tuple2!47330 0))(
  ( (tuple2!47331 (_1!26953 (_ BitVec 64)) (_2!26953 List!48551)) )
))
(declare-datatypes ((List!48552 0))(
  ( (Nil!48428) (Cons!48428 (h!53896 tuple2!47330) (t!355454 List!48552)) )
))
(declare-datatypes ((ListLongMap!1213 0))(
  ( (ListLongMap!1214 (toList!2596 List!48552)) )
))
(declare-fun lt!1542766 () ListLongMap!1213)

(declare-fun map!10465 (MutLongMap!4775) ListLongMap!1213)

(assert (=> b!4325500 (= lt!1542766 (map!10465 (v!42871 (underlying!9780 thiss!42308))))))

(declare-datatypes ((ListMap!1873 0))(
  ( (ListMap!1874 (toList!2597 List!48551)) )
))
(declare-fun lt!1542764 () ListMap!1873)

(declare-fun map!10466 (MutableMap!4681) ListMap!1873)

(assert (=> b!4325500 (= lt!1542764 (map!10466 thiss!42308))))

(declare-fun mapIsEmpty!21279 () Bool)

(assert (=> mapIsEmpty!21279 mapRes!21279))

(declare-fun b!4325501 () Bool)

(declare-fun e!2691349 () Bool)

(declare-fun e!2691355 () Bool)

(assert (=> b!4325501 (= e!2691349 e!2691355)))

(declare-fun res!1772642 () Bool)

(assert (=> start!416564 (=> (not res!1772642) (not e!2691352))))

(get-info :version)

(assert (=> start!416564 (= res!1772642 ((_ is HashMap!4681) thiss!42308))))

(assert (=> start!416564 e!2691352))

(declare-fun e!2691353 () Bool)

(assert (=> start!416564 e!2691353))

(declare-fun tp_is_empty!24197 () Bool)

(assert (=> start!416564 tp_is_empty!24197))

(declare-fun tp_is_empty!24199 () Bool)

(assert (=> start!416564 tp_is_empty!24199))

(declare-fun b!4325502 () Bool)

(declare-fun e!2691348 () Bool)

(declare-fun tp!1327555 () Bool)

(assert (=> b!4325502 (= e!2691348 (and tp!1327555 mapRes!21279))))

(declare-fun condMapEmpty!21279 () Bool)

(declare-fun mapDefault!21279 () List!48551)

(assert (=> b!4325502 (= condMapEmpty!21279 (= (arr!7736 (_values!5076 (v!42870 (underlying!9779 (v!42871 (underlying!9780 thiss!42308)))))) ((as const (Array (_ BitVec 32) List!48551)) mapDefault!21279)))))

(declare-fun b!4325503 () Bool)

(declare-fun e!2691357 () Bool)

(assert (=> b!4325503 (= e!2691355 e!2691357)))

(declare-fun b!4325504 () Bool)

(declare-fun res!1772644 () Bool)

(assert (=> b!4325504 (=> (not res!1772644) (not e!2691352))))

(declare-fun valid!3791 (MutableMap!4681) Bool)

(assert (=> b!4325504 (= res!1772644 (valid!3791 thiss!42308))))

(declare-fun b!4325505 () Bool)

(declare-fun e!2691354 () Bool)

(declare-datatypes ((tuple2!47332 0))(
  ( (tuple2!47333 (_1!26954 Bool) (_2!26954 MutLongMap!4775)) )
))
(declare-fun lt!1542763 () tuple2!47332)

(assert (=> b!4325505 (= e!2691354 (not (valid!3791 (HashMap!4681 (Cell!18912 (_2!26954 lt!1542763)) (hashF!6997 thiss!42308) (_size!9596 thiss!42308) (defaultValue!4852 thiss!42308)))))))

(declare-fun b!4325506 () Bool)

(assert (=> b!4325506 (= e!2691351 e!2691354)))

(declare-fun res!1772641 () Bool)

(assert (=> b!4325506 (=> (not res!1772641) (not e!2691354))))

(assert (=> b!4325506 (= res!1772641 (not (_1!26954 lt!1542763)))))

(declare-fun lt!1542765 () (_ BitVec 64))

(declare-fun e!2691350 () List!48551)

(declare-fun v!9179 () V!9886)

(declare-fun update!554 (MutLongMap!4775 (_ BitVec 64) List!48551) tuple2!47332)

(assert (=> b!4325506 (= lt!1542763 (update!554 (v!42871 (underlying!9780 thiss!42308)) lt!1542765 (Cons!48427 (tuple2!47329 key!2048 v!9179) e!2691350)))))

(declare-fun c!735899 () Bool)

(declare-fun contains!10507 (MutLongMap!4775 (_ BitVec 64)) Bool)

(assert (=> b!4325506 (= c!735899 (contains!10507 (v!42871 (underlying!9780 thiss!42308)) lt!1542765))))

(declare-fun hash!1234 (Hashable!4691 K!9684) (_ BitVec 64))

(assert (=> b!4325506 (= lt!1542765 (hash!1234 (hashF!6997 thiss!42308) key!2048))))

(declare-fun b!4325507 () Bool)

(declare-fun e!2691356 () Bool)

(declare-fun lt!1542762 () MutLongMap!4775)

(assert (=> b!4325507 (= e!2691356 (and e!2691349 ((_ is LongMap!4775) lt!1542762)))))

(assert (=> b!4325507 (= lt!1542762 (v!42871 (underlying!9780 thiss!42308)))))

(assert (=> b!4325508 (= e!2691353 (and e!2691356 tp!1327553))))

(declare-fun b!4325509 () Bool)

(declare-fun apply!11172 (MutLongMap!4775 (_ BitVec 64)) List!48551)

(assert (=> b!4325509 (= e!2691350 (apply!11172 (v!42871 (underlying!9780 thiss!42308)) lt!1542765))))

(declare-fun b!4325510 () Bool)

(assert (=> b!4325510 (= e!2691350 Nil!48427)))

(declare-fun tp!1327549 () Bool)

(declare-fun tp!1327552 () Bool)

(declare-fun array_inv!5573 (array!17336) Bool)

(declare-fun array_inv!5574 (array!17338) Bool)

(assert (=> b!4325511 (= e!2691357 (and tp!1327551 tp!1327549 tp!1327552 (array_inv!5573 (_keys!5101 (v!42870 (underlying!9779 (v!42871 (underlying!9780 thiss!42308)))))) (array_inv!5574 (_values!5076 (v!42870 (underlying!9779 (v!42871 (underlying!9780 thiss!42308)))))) e!2691348))))

(assert (= (and start!416564 res!1772642) b!4325504))

(assert (= (and b!4325504 res!1772644) b!4325500))

(assert (= (and b!4325500 res!1772643) b!4325506))

(assert (= (and b!4325506 c!735899) b!4325509))

(assert (= (and b!4325506 (not c!735899)) b!4325510))

(assert (= (and b!4325506 res!1772641) b!4325505))

(assert (= (and b!4325502 condMapEmpty!21279) mapIsEmpty!21279))

(assert (= (and b!4325502 (not condMapEmpty!21279)) mapNonEmpty!21279))

(assert (= b!4325511 b!4325502))

(assert (= b!4325503 b!4325511))

(assert (= b!4325501 b!4325503))

(assert (= (and b!4325507 ((_ is LongMap!4775) (v!42871 (underlying!9780 thiss!42308)))) b!4325501))

(assert (= b!4325508 b!4325507))

(assert (= (and start!416564 ((_ is HashMap!4681) thiss!42308)) b!4325508))

(declare-fun m!4920459 () Bool)

(assert (=> b!4325500 m!4920459))

(declare-fun m!4920461 () Bool)

(assert (=> b!4325500 m!4920461))

(declare-fun m!4920463 () Bool)

(assert (=> b!4325500 m!4920463))

(declare-fun m!4920465 () Bool)

(assert (=> mapNonEmpty!21279 m!4920465))

(declare-fun m!4920467 () Bool)

(assert (=> b!4325505 m!4920467))

(declare-fun m!4920469 () Bool)

(assert (=> b!4325509 m!4920469))

(declare-fun m!4920471 () Bool)

(assert (=> b!4325504 m!4920471))

(declare-fun m!4920473 () Bool)

(assert (=> b!4325506 m!4920473))

(declare-fun m!4920475 () Bool)

(assert (=> b!4325506 m!4920475))

(declare-fun m!4920477 () Bool)

(assert (=> b!4325506 m!4920477))

(declare-fun m!4920479 () Bool)

(assert (=> b!4325511 m!4920479))

(declare-fun m!4920481 () Bool)

(assert (=> b!4325511 m!4920481))

(check-sat (not b_next!129763) (not b_next!129765) (not b!4325506) (not b!4325500) b_and!340643 b_and!340641 (not b!4325509) tp_is_empty!24197 tp_is_empty!24199 (not mapNonEmpty!21279) (not b!4325511) (not b!4325505) (not b!4325504) (not b!4325502))
(check-sat b_and!340641 b_and!340643 (not b_next!129765) (not b_next!129763))
(get-model)

(declare-fun d!1271814 () Bool)

(declare-fun res!1772649 () Bool)

(declare-fun e!2691361 () Bool)

(assert (=> d!1271814 (=> (not res!1772649) (not e!2691361))))

(declare-fun valid!3792 (MutLongMap!4775) Bool)

(assert (=> d!1271814 (= res!1772649 (valid!3792 (v!42871 (underlying!9780 thiss!42308))))))

(assert (=> d!1271814 (= (valid!3791 thiss!42308) e!2691361)))

(declare-fun b!4325516 () Bool)

(declare-fun res!1772650 () Bool)

(assert (=> b!4325516 (=> (not res!1772650) (not e!2691361))))

(declare-fun lambda!134299 () Int)

(declare-fun forall!8838 (List!48552 Int) Bool)

(assert (=> b!4325516 (= res!1772650 (forall!8838 (toList!2596 (map!10465 (v!42871 (underlying!9780 thiss!42308)))) lambda!134299))))

(declare-fun b!4325517 () Bool)

(declare-fun allKeysSameHashInMap!405 (ListLongMap!1213 Hashable!4691) Bool)

(assert (=> b!4325517 (= e!2691361 (allKeysSameHashInMap!405 (map!10465 (v!42871 (underlying!9780 thiss!42308))) (hashF!6997 thiss!42308)))))

(assert (= (and d!1271814 res!1772649) b!4325516))

(assert (= (and b!4325516 res!1772650) b!4325517))

(declare-fun m!4920483 () Bool)

(assert (=> d!1271814 m!4920483))

(assert (=> b!4325516 m!4920461))

(declare-fun m!4920485 () Bool)

(assert (=> b!4325516 m!4920485))

(assert (=> b!4325517 m!4920461))

(assert (=> b!4325517 m!4920461))

(declare-fun m!4920487 () Bool)

(assert (=> b!4325517 m!4920487))

(assert (=> b!4325504 d!1271814))

(declare-fun d!1271816 () Bool)

(declare-fun e!2691364 () Bool)

(assert (=> d!1271816 e!2691364))

(declare-fun c!735902 () Bool)

(assert (=> d!1271816 (= c!735902 (contains!10507 (v!42871 (underlying!9780 thiss!42308)) lt!1542765))))

(declare-fun lt!1542769 () List!48551)

(declare-fun apply!11173 (LongMapFixedSize!9550 (_ BitVec 64)) List!48551)

(assert (=> d!1271816 (= lt!1542769 (apply!11173 (v!42870 (underlying!9779 (v!42871 (underlying!9780 thiss!42308)))) lt!1542765))))

(assert (=> d!1271816 (valid!3792 (v!42871 (underlying!9780 thiss!42308)))))

(assert (=> d!1271816 (= (apply!11172 (v!42871 (underlying!9780 thiss!42308)) lt!1542765) lt!1542769)))

(declare-fun b!4325522 () Bool)

(declare-datatypes ((Option!10324 0))(
  ( (None!10323) (Some!10323 (v!42876 List!48551)) )
))
(declare-fun get!15696 (Option!10324) List!48551)

(declare-fun getValueByKey!313 (List!48552 (_ BitVec 64)) Option!10324)

(assert (=> b!4325522 (= e!2691364 (= lt!1542769 (get!15696 (getValueByKey!313 (toList!2596 (map!10465 (v!42871 (underlying!9780 thiss!42308)))) lt!1542765))))))

(declare-fun b!4325523 () Bool)

(declare-fun dynLambda!20524 (Int (_ BitVec 64)) List!48551)

(assert (=> b!4325523 (= e!2691364 (= lt!1542769 (dynLambda!20524 (defaultEntry!5180 (v!42870 (underlying!9779 (v!42871 (underlying!9780 thiss!42308))))) lt!1542765)))))

(assert (=> b!4325523 ((_ is LongMap!4775) (v!42871 (underlying!9780 thiss!42308)))))

(assert (= (and d!1271816 c!735902) b!4325522))

(assert (= (and d!1271816 (not c!735902)) b!4325523))

(declare-fun b_lambda!127539 () Bool)

(assert (=> (not b_lambda!127539) (not b!4325523)))

(declare-fun t!355456 () Bool)

(declare-fun tb!257387 () Bool)

(assert (=> (and b!4325511 (= (defaultEntry!5180 (v!42870 (underlying!9779 (v!42871 (underlying!9780 thiss!42308))))) (defaultEntry!5180 (v!42870 (underlying!9779 (v!42871 (underlying!9780 thiss!42308)))))) t!355456) tb!257387))

(assert (=> b!4325523 t!355456))

(declare-fun result!314932 () Bool)

(declare-fun b_and!340645 () Bool)

(assert (= b_and!340641 (and (=> t!355456 result!314932) b_and!340645)))

(assert (=> d!1271816 m!4920475))

(declare-fun m!4920489 () Bool)

(assert (=> d!1271816 m!4920489))

(assert (=> d!1271816 m!4920483))

(assert (=> b!4325522 m!4920461))

(declare-fun m!4920491 () Bool)

(assert (=> b!4325522 m!4920491))

(assert (=> b!4325522 m!4920491))

(declare-fun m!4920493 () Bool)

(assert (=> b!4325522 m!4920493))

(declare-fun m!4920495 () Bool)

(assert (=> b!4325523 m!4920495))

(assert (=> b!4325509 d!1271816))

(declare-fun bs!607382 () Bool)

(declare-fun b!4325555 () Bool)

(assert (= bs!607382 (and b!4325555 b!4325516)))

(declare-fun lambda!134302 () Int)

(assert (=> bs!607382 (= lambda!134302 lambda!134299)))

(declare-fun bm!300137 () Bool)

(declare-datatypes ((Option!10325 0))(
  ( (None!10324) (Some!10324 (v!42877 tuple2!47328)) )
))
(declare-fun call!300147 () Option!10325)

(declare-fun call!300142 () List!48551)

(declare-fun getPair!170 (List!48551 K!9684) Option!10325)

(assert (=> bm!300137 (= call!300147 (getPair!170 call!300142 key!2048))))

(declare-fun call!300145 () ListLongMap!1213)

(declare-fun bm!300138 () Bool)

(declare-fun call!300146 () (_ BitVec 64))

(declare-fun lt!1542812 () ListLongMap!1213)

(declare-fun c!735914 () Bool)

(declare-fun apply!11174 (ListLongMap!1213 (_ BitVec 64)) List!48551)

(assert (=> bm!300138 (= call!300142 (apply!11174 (ite c!735914 lt!1542812 call!300145) call!300146))))

(declare-fun bm!300139 () Bool)

(declare-fun call!300143 () Bool)

(declare-fun isDefined!7622 (Option!10325) Bool)

(assert (=> bm!300139 (= call!300143 (isDefined!7622 call!300147))))

(declare-fun b!4325546 () Bool)

(declare-datatypes ((Unit!67981 0))(
  ( (Unit!67982) )
))
(declare-fun e!2691384 () Unit!67981)

(declare-fun Unit!67983 () Unit!67981)

(assert (=> b!4325546 (= e!2691384 Unit!67983)))

(declare-fun b!4325547 () Bool)

(declare-fun e!2691381 () Unit!67981)

(declare-fun Unit!67984 () Unit!67981)

(assert (=> b!4325547 (= e!2691381 Unit!67984)))

(declare-fun b!4325548 () Bool)

(assert (=> b!4325548 false))

(declare-fun lt!1542816 () Unit!67981)

(declare-fun lt!1542822 () Unit!67981)

(assert (=> b!4325548 (= lt!1542816 lt!1542822)))

(declare-fun lt!1542820 () ListLongMap!1213)

(declare-fun contains!10508 (ListMap!1873 K!9684) Bool)

(declare-fun extractMap!384 (List!48552) ListMap!1873)

(assert (=> b!4325548 (contains!10508 (extractMap!384 (toList!2596 lt!1542820)) key!2048)))

(declare-fun lemmaInLongMapThenInGenericMap!170 (ListLongMap!1213 K!9684 Hashable!4691) Unit!67981)

(assert (=> b!4325548 (= lt!1542822 (lemmaInLongMapThenInGenericMap!170 lt!1542820 key!2048 (hashF!6997 thiss!42308)))))

(assert (=> b!4325548 (= lt!1542820 call!300145)))

(declare-fun e!2691380 () Unit!67981)

(declare-fun Unit!67985 () Unit!67981)

(assert (=> b!4325548 (= e!2691380 Unit!67985)))

(declare-fun b!4325549 () Bool)

(declare-fun e!2691379 () Bool)

(assert (=> b!4325549 (= e!2691379 call!300143)))

(declare-fun b!4325550 () Bool)

(declare-fun e!2691385 () Bool)

(assert (=> b!4325550 (= e!2691385 call!300143)))

(declare-fun b!4325551 () Bool)

(assert (=> b!4325551 false))

(declare-fun lt!1542825 () Unit!67981)

(declare-fun lt!1542815 () Unit!67981)

(assert (=> b!4325551 (= lt!1542825 lt!1542815)))

(declare-fun lt!1542819 () List!48552)

(declare-fun lt!1542823 () (_ BitVec 64))

(declare-fun lt!1542814 () List!48551)

(declare-fun contains!10509 (List!48552 tuple2!47330) Bool)

(assert (=> b!4325551 (contains!10509 lt!1542819 (tuple2!47331 lt!1542823 lt!1542814))))

(declare-fun lemmaGetValueByKeyImpliesContainsTuple!182 (List!48552 (_ BitVec 64) List!48551) Unit!67981)

(assert (=> b!4325551 (= lt!1542815 (lemmaGetValueByKeyImpliesContainsTuple!182 lt!1542819 lt!1542823 lt!1542814))))

(assert (=> b!4325551 (= lt!1542814 (apply!11172 (v!42871 (underlying!9780 thiss!42308)) lt!1542823))))

(assert (=> b!4325551 (= lt!1542819 (toList!2596 (map!10465 (v!42871 (underlying!9780 thiss!42308)))))))

(declare-fun lt!1542828 () Unit!67981)

(declare-fun lt!1542829 () Unit!67981)

(assert (=> b!4325551 (= lt!1542828 lt!1542829)))

(declare-fun lt!1542821 () List!48552)

(declare-fun isDefined!7623 (Option!10324) Bool)

(assert (=> b!4325551 (isDefined!7623 (getValueByKey!313 lt!1542821 lt!1542823))))

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!229 (List!48552 (_ BitVec 64)) Unit!67981)

(assert (=> b!4325551 (= lt!1542829 (lemmaContainsKeyImpliesGetValueByKeyDefined!229 lt!1542821 lt!1542823))))

(assert (=> b!4325551 (= lt!1542821 (toList!2596 (map!10465 (v!42871 (underlying!9780 thiss!42308)))))))

(declare-fun lt!1542826 () Unit!67981)

(declare-fun lt!1542817 () Unit!67981)

(assert (=> b!4325551 (= lt!1542826 lt!1542817)))

(declare-fun lt!1542818 () List!48552)

(declare-fun containsKey!421 (List!48552 (_ BitVec 64)) Bool)

(assert (=> b!4325551 (containsKey!421 lt!1542818 lt!1542823)))

(declare-fun lemmaGetValueByKeyIsDefinedImpliesContainsKey!171 (List!48552 (_ BitVec 64)) Unit!67981)

(assert (=> b!4325551 (= lt!1542817 (lemmaGetValueByKeyIsDefinedImpliesContainsKey!171 lt!1542818 lt!1542823))))

(assert (=> b!4325551 (= lt!1542818 (toList!2596 (map!10465 (v!42871 (underlying!9780 thiss!42308)))))))

(declare-fun Unit!67986 () Unit!67981)

(assert (=> b!4325551 (= e!2691384 Unit!67986)))

(declare-fun b!4325552 () Bool)

(declare-fun Unit!67987 () Unit!67981)

(assert (=> b!4325552 (= e!2691380 Unit!67987)))

(declare-fun d!1271818 () Bool)

(declare-fun lt!1542813 () Bool)

(assert (=> d!1271818 (= lt!1542813 (contains!10508 (map!10466 thiss!42308) key!2048))))

(declare-fun e!2691382 () Bool)

(assert (=> d!1271818 (= lt!1542813 e!2691382)))

(declare-fun res!1772657 () Bool)

(assert (=> d!1271818 (=> (not res!1772657) (not e!2691382))))

(assert (=> d!1271818 (= res!1772657 (contains!10507 (v!42871 (underlying!9780 thiss!42308)) lt!1542823))))

(declare-fun lt!1542824 () Unit!67981)

(declare-fun e!2691383 () Unit!67981)

(assert (=> d!1271818 (= lt!1542824 e!2691383)))

(assert (=> d!1271818 (= c!735914 (contains!10508 (extractMap!384 (toList!2596 (map!10465 (v!42871 (underlying!9780 thiss!42308))))) key!2048))))

(declare-fun lt!1542827 () Unit!67981)

(assert (=> d!1271818 (= lt!1542827 e!2691381)))

(declare-fun c!735913 () Bool)

(assert (=> d!1271818 (= c!735913 (contains!10507 (v!42871 (underlying!9780 thiss!42308)) lt!1542823))))

(assert (=> d!1271818 (= lt!1542823 (hash!1234 (hashF!6997 thiss!42308) key!2048))))

(assert (=> d!1271818 (valid!3791 thiss!42308)))

(assert (=> d!1271818 (= (contains!10506 thiss!42308 key!2048) lt!1542813)))

(declare-fun bm!300140 () Bool)

(assert (=> bm!300140 (= call!300145 (map!10465 (v!42871 (underlying!9780 thiss!42308))))))

(declare-fun b!4325553 () Bool)

(assert (=> b!4325553 (= e!2691383 e!2691380)))

(declare-fun res!1772658 () Bool)

(declare-fun call!300144 () Bool)

(assert (=> b!4325553 (= res!1772658 call!300144)))

(assert (=> b!4325553 (=> (not res!1772658) (not e!2691379))))

(declare-fun c!735912 () Bool)

(assert (=> b!4325553 (= c!735912 e!2691379)))

(declare-fun b!4325554 () Bool)

(assert (=> b!4325554 (= e!2691382 (isDefined!7622 (getPair!170 (apply!11172 (v!42871 (underlying!9780 thiss!42308)) lt!1542823) key!2048)))))

(declare-fun bm!300141 () Bool)

(declare-fun contains!10510 (ListLongMap!1213 (_ BitVec 64)) Bool)

(assert (=> bm!300141 (= call!300144 (contains!10510 (ite c!735914 lt!1542812 call!300145) call!300146))))

(declare-fun bm!300142 () Bool)

(assert (=> bm!300142 (= call!300146 (hash!1234 (hashF!6997 thiss!42308) key!2048))))

(declare-fun forallContained!1544 (List!48552 Int tuple2!47330) Unit!67981)

(assert (=> b!4325555 (= e!2691381 (forallContained!1544 (toList!2596 (map!10465 (v!42871 (underlying!9780 thiss!42308)))) lambda!134302 (tuple2!47331 lt!1542823 (apply!11172 (v!42871 (underlying!9780 thiss!42308)) lt!1542823))))))

(declare-fun c!735911 () Bool)

(assert (=> b!4325555 (= c!735911 (not (contains!10509 (toList!2596 (map!10465 (v!42871 (underlying!9780 thiss!42308)))) (tuple2!47331 lt!1542823 (apply!11172 (v!42871 (underlying!9780 thiss!42308)) lt!1542823)))))))

(declare-fun lt!1542810 () Unit!67981)

(assert (=> b!4325555 (= lt!1542810 e!2691384)))

(declare-fun b!4325556 () Bool)

(declare-fun lt!1542811 () Unit!67981)

(assert (=> b!4325556 (= e!2691383 lt!1542811)))

(assert (=> b!4325556 (= lt!1542812 call!300145)))

(declare-fun lemmaInGenericMapThenInLongMap!170 (ListLongMap!1213 K!9684 Hashable!4691) Unit!67981)

(assert (=> b!4325556 (= lt!1542811 (lemmaInGenericMapThenInLongMap!170 lt!1542812 key!2048 (hashF!6997 thiss!42308)))))

(declare-fun res!1772659 () Bool)

(assert (=> b!4325556 (= res!1772659 call!300144)))

(assert (=> b!4325556 (=> (not res!1772659) (not e!2691385))))

(assert (=> b!4325556 e!2691385))

(assert (= (and d!1271818 c!735913) b!4325555))

(assert (= (and d!1271818 (not c!735913)) b!4325547))

(assert (= (and b!4325555 c!735911) b!4325551))

(assert (= (and b!4325555 (not c!735911)) b!4325546))

(assert (= (and d!1271818 c!735914) b!4325556))

(assert (= (and d!1271818 (not c!735914)) b!4325553))

(assert (= (and b!4325556 res!1772659) b!4325550))

(assert (= (and b!4325553 res!1772658) b!4325549))

(assert (= (and b!4325553 c!735912) b!4325548))

(assert (= (and b!4325553 (not c!735912)) b!4325552))

(assert (= (or b!4325556 b!4325553 b!4325549 b!4325548) bm!300140))

(assert (= (or b!4325556 b!4325550 b!4325553 b!4325549) bm!300142))

(assert (= (or b!4325556 b!4325553) bm!300141))

(assert (= (or b!4325550 b!4325549) bm!300138))

(assert (= (or b!4325550 b!4325549) bm!300137))

(assert (= (or b!4325550 b!4325549) bm!300139))

(assert (= (and d!1271818 res!1772657) b!4325554))

(assert (=> d!1271818 m!4920463))

(declare-fun m!4920497 () Bool)

(assert (=> d!1271818 m!4920497))

(assert (=> d!1271818 m!4920477))

(assert (=> d!1271818 m!4920461))

(declare-fun m!4920499 () Bool)

(assert (=> d!1271818 m!4920499))

(assert (=> d!1271818 m!4920499))

(declare-fun m!4920501 () Bool)

(assert (=> d!1271818 m!4920501))

(assert (=> d!1271818 m!4920463))

(assert (=> d!1271818 m!4920471))

(declare-fun m!4920503 () Bool)

(assert (=> d!1271818 m!4920503))

(assert (=> bm!300140 m!4920461))

(assert (=> bm!300142 m!4920477))

(declare-fun m!4920505 () Bool)

(assert (=> bm!300141 m!4920505))

(assert (=> b!4325555 m!4920461))

(declare-fun m!4920507 () Bool)

(assert (=> b!4325555 m!4920507))

(declare-fun m!4920509 () Bool)

(assert (=> b!4325555 m!4920509))

(declare-fun m!4920511 () Bool)

(assert (=> b!4325555 m!4920511))

(assert (=> b!4325554 m!4920507))

(assert (=> b!4325554 m!4920507))

(declare-fun m!4920513 () Bool)

(assert (=> b!4325554 m!4920513))

(assert (=> b!4325554 m!4920513))

(declare-fun m!4920515 () Bool)

(assert (=> b!4325554 m!4920515))

(declare-fun m!4920517 () Bool)

(assert (=> b!4325548 m!4920517))

(assert (=> b!4325548 m!4920517))

(declare-fun m!4920519 () Bool)

(assert (=> b!4325548 m!4920519))

(declare-fun m!4920521 () Bool)

(assert (=> b!4325548 m!4920521))

(declare-fun m!4920523 () Bool)

(assert (=> bm!300137 m!4920523))

(declare-fun m!4920525 () Bool)

(assert (=> b!4325556 m!4920525))

(declare-fun m!4920527 () Bool)

(assert (=> bm!300138 m!4920527))

(declare-fun m!4920529 () Bool)

(assert (=> b!4325551 m!4920529))

(assert (=> b!4325551 m!4920461))

(assert (=> b!4325551 m!4920507))

(declare-fun m!4920531 () Bool)

(assert (=> b!4325551 m!4920531))

(declare-fun m!4920533 () Bool)

(assert (=> b!4325551 m!4920533))

(declare-fun m!4920535 () Bool)

(assert (=> b!4325551 m!4920535))

(declare-fun m!4920537 () Bool)

(assert (=> b!4325551 m!4920537))

(declare-fun m!4920539 () Bool)

(assert (=> b!4325551 m!4920539))

(assert (=> b!4325551 m!4920537))

(declare-fun m!4920541 () Bool)

(assert (=> b!4325551 m!4920541))

(declare-fun m!4920543 () Bool)

(assert (=> bm!300139 m!4920543))

(assert (=> b!4325500 d!1271818))

(declare-fun d!1271820 () Bool)

(declare-fun map!10467 (LongMapFixedSize!9550) ListLongMap!1213)

(assert (=> d!1271820 (= (map!10465 (v!42871 (underlying!9780 thiss!42308))) (map!10467 (v!42870 (underlying!9779 (v!42871 (underlying!9780 thiss!42308))))))))

(declare-fun bs!607383 () Bool)

(assert (= bs!607383 d!1271820))

(declare-fun m!4920545 () Bool)

(assert (=> bs!607383 m!4920545))

(assert (=> b!4325500 d!1271820))

(declare-fun d!1271822 () Bool)

(declare-fun lt!1542832 () ListMap!1873)

(declare-fun invariantList!609 (List!48551) Bool)

(assert (=> d!1271822 (invariantList!609 (toList!2597 lt!1542832))))

(assert (=> d!1271822 (= lt!1542832 (extractMap!384 (toList!2596 (map!10465 (v!42871 (underlying!9780 thiss!42308))))))))

(assert (=> d!1271822 (valid!3791 thiss!42308)))

(assert (=> d!1271822 (= (map!10466 thiss!42308) lt!1542832)))

(declare-fun bs!607384 () Bool)

(assert (= bs!607384 d!1271822))

(declare-fun m!4920547 () Bool)

(assert (=> bs!607384 m!4920547))

(assert (=> bs!607384 m!4920461))

(assert (=> bs!607384 m!4920499))

(assert (=> bs!607384 m!4920471))

(assert (=> b!4325500 d!1271822))

(declare-fun bs!607385 () Bool)

(declare-fun b!4325557 () Bool)

(assert (= bs!607385 (and b!4325557 b!4325516)))

(declare-fun lambda!134303 () Int)

(assert (=> bs!607385 (= lambda!134303 lambda!134299)))

(declare-fun bs!607386 () Bool)

(assert (= bs!607386 (and b!4325557 b!4325555)))

(assert (=> bs!607386 (= lambda!134303 lambda!134302)))

(declare-fun d!1271824 () Bool)

(declare-fun res!1772660 () Bool)

(declare-fun e!2691386 () Bool)

(assert (=> d!1271824 (=> (not res!1772660) (not e!2691386))))

(assert (=> d!1271824 (= res!1772660 (valid!3792 (v!42871 (underlying!9780 (HashMap!4681 (Cell!18912 (_2!26954 lt!1542763)) (hashF!6997 thiss!42308) (_size!9596 thiss!42308) (defaultValue!4852 thiss!42308))))))))

(assert (=> d!1271824 (= (valid!3791 (HashMap!4681 (Cell!18912 (_2!26954 lt!1542763)) (hashF!6997 thiss!42308) (_size!9596 thiss!42308) (defaultValue!4852 thiss!42308))) e!2691386)))

(declare-fun res!1772661 () Bool)

(assert (=> b!4325557 (=> (not res!1772661) (not e!2691386))))

(assert (=> b!4325557 (= res!1772661 (forall!8838 (toList!2596 (map!10465 (v!42871 (underlying!9780 (HashMap!4681 (Cell!18912 (_2!26954 lt!1542763)) (hashF!6997 thiss!42308) (_size!9596 thiss!42308) (defaultValue!4852 thiss!42308)))))) lambda!134303))))

(declare-fun b!4325558 () Bool)

(assert (=> b!4325558 (= e!2691386 (allKeysSameHashInMap!405 (map!10465 (v!42871 (underlying!9780 (HashMap!4681 (Cell!18912 (_2!26954 lt!1542763)) (hashF!6997 thiss!42308) (_size!9596 thiss!42308) (defaultValue!4852 thiss!42308))))) (hashF!6997 (HashMap!4681 (Cell!18912 (_2!26954 lt!1542763)) (hashF!6997 thiss!42308) (_size!9596 thiss!42308) (defaultValue!4852 thiss!42308)))))))

(assert (= (and d!1271824 res!1772660) b!4325557))

(assert (= (and b!4325557 res!1772661) b!4325558))

(declare-fun m!4920549 () Bool)

(assert (=> d!1271824 m!4920549))

(declare-fun m!4920551 () Bool)

(assert (=> b!4325557 m!4920551))

(declare-fun m!4920553 () Bool)

(assert (=> b!4325557 m!4920553))

(assert (=> b!4325558 m!4920551))

(assert (=> b!4325558 m!4920551))

(declare-fun m!4920555 () Bool)

(assert (=> b!4325558 m!4920555))

(assert (=> b!4325505 d!1271824))

(declare-fun b!4325577 () Bool)

(declare-fun call!300153 () ListLongMap!1213)

(declare-fun e!2691397 () Bool)

(declare-fun call!300152 () ListLongMap!1213)

(declare-fun +!360 (ListLongMap!1213 tuple2!47330) ListLongMap!1213)

(assert (=> b!4325577 (= e!2691397 (= call!300153 (+!360 call!300152 (tuple2!47331 lt!1542765 (Cons!48427 (tuple2!47329 key!2048 v!9179) e!2691350)))))))

(declare-fun b!4325578 () Bool)

(declare-fun e!2691400 () tuple2!47332)

(declare-fun lt!1542843 () tuple2!47332)

(assert (=> b!4325578 (= e!2691400 (tuple2!47333 (_1!26954 lt!1542843) (_2!26954 lt!1542843)))))

(declare-fun repack!92 (MutLongMap!4775) tuple2!47332)

(assert (=> b!4325578 (= lt!1542843 (repack!92 (v!42871 (underlying!9780 thiss!42308))))))

(declare-fun bm!300147 () Bool)

(assert (=> bm!300147 (= call!300152 (map!10465 (v!42871 (underlying!9780 thiss!42308))))))

(declare-fun d!1271826 () Bool)

(declare-fun e!2691401 () Bool)

(assert (=> d!1271826 e!2691401))

(declare-fun res!1772669 () Bool)

(assert (=> d!1271826 (=> (not res!1772669) (not e!2691401))))

(declare-fun lt!1542844 () tuple2!47332)

(assert (=> d!1271826 (= res!1772669 ((_ is LongMap!4775) (_2!26954 lt!1542844)))))

(declare-fun e!2691399 () tuple2!47332)

(assert (=> d!1271826 (= lt!1542844 e!2691399)))

(declare-fun c!735923 () Bool)

(declare-fun lt!1542841 () tuple2!47332)

(assert (=> d!1271826 (= c!735923 (_1!26954 lt!1542841))))

(assert (=> d!1271826 (= lt!1542841 e!2691400)))

(declare-fun c!735922 () Bool)

(declare-fun imbalanced!88 (MutLongMap!4775) Bool)

(assert (=> d!1271826 (= c!735922 (imbalanced!88 (v!42871 (underlying!9780 thiss!42308))))))

(assert (=> d!1271826 (valid!3792 (v!42871 (underlying!9780 thiss!42308)))))

(assert (=> d!1271826 (= (update!554 (v!42871 (underlying!9780 thiss!42308)) lt!1542765 (Cons!48427 (tuple2!47329 key!2048 v!9179) e!2691350)) lt!1542844)))

(declare-fun b!4325579 () Bool)

(declare-datatypes ((tuple2!47334 0))(
  ( (tuple2!47335 (_1!26955 Bool) (_2!26955 LongMapFixedSize!9550)) )
))
(declare-fun lt!1542842 () tuple2!47334)

(assert (=> b!4325579 (= e!2691399 (tuple2!47333 (_1!26955 lt!1542842) (LongMap!4775 (Cell!18910 (_2!26955 lt!1542842)))))))

(declare-fun update!555 (LongMapFixedSize!9550 (_ BitVec 64) List!48551) tuple2!47334)

(assert (=> b!4325579 (= lt!1542842 (update!555 (v!42870 (underlying!9779 (_2!26954 lt!1542841))) lt!1542765 (Cons!48427 (tuple2!47329 key!2048 v!9179) e!2691350)))))

(declare-fun b!4325580 () Bool)

(assert (=> b!4325580 (= e!2691399 (tuple2!47333 false (_2!26954 lt!1542841)))))

(declare-fun b!4325581 () Bool)

(declare-fun e!2691398 () Bool)

(assert (=> b!4325581 (= e!2691398 e!2691397)))

(declare-fun res!1772670 () Bool)

(assert (=> b!4325581 (= res!1772670 (contains!10510 call!300153 lt!1542765))))

(assert (=> b!4325581 (=> (not res!1772670) (not e!2691397))))

(declare-fun b!4325582 () Bool)

(declare-fun res!1772668 () Bool)

(assert (=> b!4325582 (=> (not res!1772668) (not e!2691401))))

(assert (=> b!4325582 (= res!1772668 (valid!3792 (_2!26954 lt!1542844)))))

(declare-fun b!4325583 () Bool)

(assert (=> b!4325583 (= e!2691398 (= call!300153 call!300152))))

(declare-fun bm!300148 () Bool)

(assert (=> bm!300148 (= call!300153 (map!10465 (_2!26954 lt!1542844)))))

(declare-fun b!4325584 () Bool)

(assert (=> b!4325584 (= e!2691401 e!2691398)))

(declare-fun c!735921 () Bool)

(assert (=> b!4325584 (= c!735921 (_1!26954 lt!1542844))))

(declare-fun b!4325585 () Bool)

(assert (=> b!4325585 (= e!2691400 (tuple2!47333 true (v!42871 (underlying!9780 thiss!42308))))))

(assert (= (and d!1271826 c!735922) b!4325578))

(assert (= (and d!1271826 (not c!735922)) b!4325585))

(assert (= (and d!1271826 c!735923) b!4325579))

(assert (= (and d!1271826 (not c!735923)) b!4325580))

(assert (= (and d!1271826 res!1772669) b!4325582))

(assert (= (and b!4325582 res!1772668) b!4325584))

(assert (= (and b!4325584 c!735921) b!4325581))

(assert (= (and b!4325584 (not c!735921)) b!4325583))

(assert (= (and b!4325581 res!1772670) b!4325577))

(assert (= (or b!4325581 b!4325577 b!4325583) bm!300148))

(assert (= (or b!4325577 b!4325583) bm!300147))

(declare-fun m!4920557 () Bool)

(assert (=> d!1271826 m!4920557))

(assert (=> d!1271826 m!4920483))

(assert (=> bm!300147 m!4920461))

(declare-fun m!4920559 () Bool)

(assert (=> b!4325577 m!4920559))

(declare-fun m!4920561 () Bool)

(assert (=> b!4325581 m!4920561))

(declare-fun m!4920563 () Bool)

(assert (=> b!4325578 m!4920563))

(declare-fun m!4920565 () Bool)

(assert (=> b!4325579 m!4920565))

(declare-fun m!4920567 () Bool)

(assert (=> b!4325582 m!4920567))

(declare-fun m!4920569 () Bool)

(assert (=> bm!300148 m!4920569))

(assert (=> b!4325506 d!1271826))

(declare-fun d!1271828 () Bool)

(declare-fun lt!1542847 () Bool)

(assert (=> d!1271828 (= lt!1542847 (contains!10510 (map!10465 (v!42871 (underlying!9780 thiss!42308))) lt!1542765))))

(declare-fun contains!10511 (LongMapFixedSize!9550 (_ BitVec 64)) Bool)

(assert (=> d!1271828 (= lt!1542847 (contains!10511 (v!42870 (underlying!9779 (v!42871 (underlying!9780 thiss!42308)))) lt!1542765))))

(assert (=> d!1271828 (valid!3792 (v!42871 (underlying!9780 thiss!42308)))))

(assert (=> d!1271828 (= (contains!10507 (v!42871 (underlying!9780 thiss!42308)) lt!1542765) lt!1542847)))

(declare-fun bs!607387 () Bool)

(assert (= bs!607387 d!1271828))

(assert (=> bs!607387 m!4920461))

(assert (=> bs!607387 m!4920461))

(declare-fun m!4920571 () Bool)

(assert (=> bs!607387 m!4920571))

(declare-fun m!4920573 () Bool)

(assert (=> bs!607387 m!4920573))

(assert (=> bs!607387 m!4920483))

(assert (=> b!4325506 d!1271828))

(declare-fun d!1271830 () Bool)

(declare-fun hash!1235 (Hashable!4691 K!9684) (_ BitVec 64))

(assert (=> d!1271830 (= (hash!1234 (hashF!6997 thiss!42308) key!2048) (hash!1235 (hashF!6997 thiss!42308) key!2048))))

(declare-fun bs!607388 () Bool)

(assert (= bs!607388 d!1271830))

(declare-fun m!4920575 () Bool)

(assert (=> bs!607388 m!4920575))

(assert (=> b!4325506 d!1271830))

(declare-fun d!1271832 () Bool)

(assert (=> d!1271832 (= (array_inv!5573 (_keys!5101 (v!42870 (underlying!9779 (v!42871 (underlying!9780 thiss!42308)))))) (bvsge (size!35774 (_keys!5101 (v!42870 (underlying!9779 (v!42871 (underlying!9780 thiss!42308)))))) #b00000000000000000000000000000000))))

(assert (=> b!4325511 d!1271832))

(declare-fun d!1271834 () Bool)

(assert (=> d!1271834 (= (array_inv!5574 (_values!5076 (v!42870 (underlying!9779 (v!42871 (underlying!9780 thiss!42308)))))) (bvsge (size!35775 (_values!5076 (v!42870 (underlying!9779 (v!42871 (underlying!9780 thiss!42308)))))) #b00000000000000000000000000000000))))

(assert (=> b!4325511 d!1271834))

(declare-fun tp!1327558 () Bool)

(declare-fun b!4325590 () Bool)

(declare-fun e!2691404 () Bool)

(assert (=> b!4325590 (= e!2691404 (and tp_is_empty!24197 tp_is_empty!24199 tp!1327558))))

(assert (=> b!4325502 (= tp!1327555 e!2691404)))

(assert (= (and b!4325502 ((_ is Cons!48427) mapDefault!21279)) b!4325590))

(declare-fun mapNonEmpty!21282 () Bool)

(declare-fun mapRes!21282 () Bool)

(declare-fun tp!1327567 () Bool)

(declare-fun e!2691410 () Bool)

(assert (=> mapNonEmpty!21282 (= mapRes!21282 (and tp!1327567 e!2691410))))

(declare-fun mapValue!21282 () List!48551)

(declare-fun mapRest!21282 () (Array (_ BitVec 32) List!48551))

(declare-fun mapKey!21282 () (_ BitVec 32))

(assert (=> mapNonEmpty!21282 (= mapRest!21279 (store mapRest!21282 mapKey!21282 mapValue!21282))))

(declare-fun tp!1327566 () Bool)

(declare-fun b!4325597 () Bool)

(assert (=> b!4325597 (= e!2691410 (and tp_is_empty!24197 tp_is_empty!24199 tp!1327566))))

(declare-fun condMapEmpty!21282 () Bool)

(declare-fun mapDefault!21282 () List!48551)

(assert (=> mapNonEmpty!21279 (= condMapEmpty!21282 (= mapRest!21279 ((as const (Array (_ BitVec 32) List!48551)) mapDefault!21282)))))

(declare-fun e!2691409 () Bool)

(assert (=> mapNonEmpty!21279 (= tp!1327550 (and e!2691409 mapRes!21282))))

(declare-fun mapIsEmpty!21282 () Bool)

(assert (=> mapIsEmpty!21282 mapRes!21282))

(declare-fun tp!1327565 () Bool)

(declare-fun b!4325598 () Bool)

(assert (=> b!4325598 (= e!2691409 (and tp_is_empty!24197 tp_is_empty!24199 tp!1327565))))

(assert (= (and mapNonEmpty!21279 condMapEmpty!21282) mapIsEmpty!21282))

(assert (= (and mapNonEmpty!21279 (not condMapEmpty!21282)) mapNonEmpty!21282))

(assert (= (and mapNonEmpty!21282 ((_ is Cons!48427) mapValue!21282)) b!4325597))

(assert (= (and mapNonEmpty!21279 ((_ is Cons!48427) mapDefault!21282)) b!4325598))

(declare-fun m!4920577 () Bool)

(assert (=> mapNonEmpty!21282 m!4920577))

(declare-fun b!4325599 () Bool)

(declare-fun tp!1327568 () Bool)

(declare-fun e!2691411 () Bool)

(assert (=> b!4325599 (= e!2691411 (and tp_is_empty!24197 tp_is_empty!24199 tp!1327568))))

(assert (=> mapNonEmpty!21279 (= tp!1327554 e!2691411)))

(assert (= (and mapNonEmpty!21279 ((_ is Cons!48427) mapValue!21279)) b!4325599))

(declare-fun e!2691412 () Bool)

(declare-fun tp!1327569 () Bool)

(declare-fun b!4325600 () Bool)

(assert (=> b!4325600 (= e!2691412 (and tp_is_empty!24197 tp_is_empty!24199 tp!1327569))))

(assert (=> b!4325511 (= tp!1327549 e!2691412)))

(assert (= (and b!4325511 ((_ is Cons!48427) (zeroValue!5052 (v!42870 (underlying!9779 (v!42871 (underlying!9780 thiss!42308))))))) b!4325600))

(declare-fun e!2691413 () Bool)

(declare-fun b!4325601 () Bool)

(declare-fun tp!1327570 () Bool)

(assert (=> b!4325601 (= e!2691413 (and tp_is_empty!24197 tp_is_empty!24199 tp!1327570))))

(assert (=> b!4325511 (= tp!1327552 e!2691413)))

(assert (= (and b!4325511 ((_ is Cons!48427) (minValue!5052 (v!42870 (underlying!9779 (v!42871 (underlying!9780 thiss!42308))))))) b!4325601))

(declare-fun b_lambda!127541 () Bool)

(assert (= b_lambda!127539 (or (and b!4325511 b_free!129059) b_lambda!127541)))

(check-sat (not b_next!129765) b_and!340643 (not b!4325599) (not bm!300139) (not b!4325522) (not d!1271816) (not b!4325578) (not b!4325517) (not d!1271822) (not d!1271814) (not b_next!129763) b_and!340645 (not bm!300147) (not bm!300141) (not b!4325516) (not b!4325556) (not b!4325577) (not bm!300140) (not bm!300137) (not d!1271824) (not b!4325597) (not bm!300148) (not b!4325598) (not d!1271820) (not bm!300138) (not b!4325579) (not b!4325557) (not b!4325582) (not b!4325600) (not d!1271828) (not b!4325548) (not b!4325555) tp_is_empty!24197 (not b!4325558) (not b!4325601) tp_is_empty!24199 (not b!4325551) (not bm!300142) (not b!4325554) (not b_lambda!127541) (not mapNonEmpty!21282) (not d!1271830) (not d!1271818) (not b!4325581) (not d!1271826) (not b!4325590) (not tb!257387))
(check-sat b_and!340645 b_and!340643 (not b_next!129765) (not b_next!129763))
