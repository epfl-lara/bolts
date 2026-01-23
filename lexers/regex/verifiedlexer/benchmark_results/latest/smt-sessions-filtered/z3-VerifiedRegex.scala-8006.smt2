; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!414746 () Bool)

(assert start!414746)

(declare-fun b!4313491 () Bool)

(declare-fun b_free!128731 () Bool)

(declare-fun b_next!129435 () Bool)

(assert (=> b!4313491 (= b_free!128731 (not b_next!129435))))

(declare-fun tp!1325336 () Bool)

(declare-fun b_and!340195 () Bool)

(assert (=> b!4313491 (= tp!1325336 b_and!340195)))

(declare-fun b!4313485 () Bool)

(declare-fun b_free!128733 () Bool)

(declare-fun b_next!129437 () Bool)

(assert (=> b!4313485 (= b_free!128733 (not b_next!129437))))

(declare-fun tp!1325342 () Bool)

(declare-fun b_and!340197 () Bool)

(assert (=> b!4313485 (= tp!1325342 b_and!340197)))

(declare-fun b!4313478 () Bool)

(declare-fun e!2682995 () Bool)

(declare-datatypes ((V!9681 0))(
  ( (V!9682 (val!15841 Int)) )
))
(declare-datatypes ((K!9479 0))(
  ( (K!9480 (val!15842 Int)) )
))
(declare-datatypes ((tuple2!46824 0))(
  ( (tuple2!46825 (_1!26694 K!9479) (_2!26694 V!9681)) )
))
(declare-datatypes ((List!48380 0))(
  ( (Nil!48256) (Cons!48256 (h!53701 tuple2!46824) (t!355211 List!48380)) )
))
(declare-datatypes ((tuple2!46826 0))(
  ( (tuple2!46827 (_1!26695 (_ BitVec 64)) (_2!26695 List!48380)) )
))
(declare-datatypes ((List!48381 0))(
  ( (Nil!48257) (Cons!48257 (h!53702 tuple2!46826) (t!355212 List!48381)) )
))
(declare-datatypes ((ListLongMap!1069 0))(
  ( (ListLongMap!1070 (toList!2456 List!48381)) )
))
(declare-fun lt!1533177 () ListLongMap!1069)

(declare-fun key!2048 () K!9479)

(declare-datatypes ((ListMap!1737 0))(
  ( (ListMap!1738 (toList!2457 List!48380)) )
))
(declare-fun contains!10243 (ListMap!1737 K!9479) Bool)

(declare-fun extractMap!339 (List!48381) ListMap!1737)

(assert (=> b!4313478 (= e!2682995 (contains!10243 (extractMap!339 (toList!2456 lt!1533177)) key!2048))))

(declare-fun b!4313479 () Bool)

(declare-fun res!1767896 () Bool)

(assert (=> b!4313479 (=> res!1767896 e!2682995)))

(declare-datatypes ((array!16954 0))(
  ( (array!16955 (arr!7571 (Array (_ BitVec 32) (_ BitVec 64))) (size!35610 (_ BitVec 32))) )
))
(declare-datatypes ((Hashable!4609 0))(
  ( (HashableExt!4608 (__x!30104 Int)) )
))
(declare-datatypes ((array!16956 0))(
  ( (array!16957 (arr!7572 (Array (_ BitVec 32) List!48380)) (size!35611 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!9386 0))(
  ( (LongMapFixedSize!9387 (defaultEntry!5078 Int) (mask!13268 (_ BitVec 32)) (extraKeys!4942 (_ BitVec 32)) (zeroValue!4952 List!48380) (minValue!4952 List!48380) (_size!9429 (_ BitVec 32)) (_keys!4993 array!16954) (_values!4974 array!16956) (_vacant!4754 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!18581 0))(
  ( (Cell!18582 (v!42475 LongMapFixedSize!9386)) )
))
(declare-datatypes ((MutLongMap!4693 0))(
  ( (LongMap!4693 (underlying!9615 Cell!18581)) (MutLongMapExt!4692 (__x!30105 Int)) )
))
(declare-datatypes ((Cell!18583 0))(
  ( (Cell!18584 (v!42476 MutLongMap!4693)) )
))
(declare-datatypes ((MutableMap!4599 0))(
  ( (MutableMapExt!4598 (__x!30106 Int)) (HashMap!4599 (underlying!9616 Cell!18583) (hashF!6775 Hashable!4609) (_size!9430 (_ BitVec 32)) (defaultValue!4770 Int)) )
))
(declare-fun thiss!42308 () MutableMap!4599)

(declare-fun allKeysSameHashInMap!355 (ListLongMap!1069 Hashable!4609) Bool)

(assert (=> b!4313479 (= res!1767896 (not (allKeysSameHashInMap!355 lt!1533177 (hashF!6775 thiss!42308))))))

(declare-fun b!4313480 () Bool)

(declare-fun e!2682992 () Bool)

(declare-fun lt!1533169 () List!48380)

(declare-fun noDuplicateKeys!235 (List!48380) Bool)

(assert (=> b!4313480 (= e!2682992 (noDuplicateKeys!235 lt!1533169))))

(declare-fun b!4313481 () Bool)

(declare-fun res!1767894 () Bool)

(assert (=> b!4313481 (=> res!1767894 e!2682995)))

(declare-fun lt!1533176 () (_ BitVec 64))

(declare-fun allKeysSameHash!208 (List!48380 (_ BitVec 64) Hashable!4609) Bool)

(assert (=> b!4313481 (= res!1767894 (not (allKeysSameHash!208 lt!1533169 lt!1533176 (hashF!6775 thiss!42308))))))

(declare-fun b!4313482 () Bool)

(declare-fun e!2682996 () Bool)

(declare-fun e!2683001 () Bool)

(assert (=> b!4313482 (= e!2682996 e!2683001)))

(declare-fun mapIsEmpty!20944 () Bool)

(declare-fun mapRes!20944 () Bool)

(assert (=> mapIsEmpty!20944 mapRes!20944))

(declare-fun b!4313483 () Bool)

(declare-fun res!1767895 () Bool)

(declare-fun e!2683000 () Bool)

(assert (=> b!4313483 (=> (not res!1767895) (not e!2683000))))

(declare-fun valid!3689 (MutableMap!4599) Bool)

(assert (=> b!4313483 (= res!1767895 (valid!3689 thiss!42308))))

(declare-fun b!4313484 () Bool)

(declare-fun e!2683003 () Bool)

(assert (=> b!4313484 (= e!2683003 (not e!2682995))))

(declare-fun res!1767900 () Bool)

(assert (=> b!4313484 (=> res!1767900 e!2682995)))

(declare-fun lambda!133181 () Int)

(declare-fun forall!8759 (List!48381 Int) Bool)

(assert (=> b!4313484 (= res!1767900 (not (forall!8759 (toList!2456 lt!1533177) lambda!133181)))))

(declare-fun e!2682993 () Bool)

(assert (=> b!4313484 e!2682993))

(declare-fun res!1767899 () Bool)

(assert (=> b!4313484 (=> (not res!1767899) (not e!2682993))))

(declare-fun lt!1533170 () ListLongMap!1069)

(assert (=> b!4313484 (= res!1767899 (forall!8759 (toList!2456 lt!1533170) lambda!133181))))

(declare-fun +!285 (ListLongMap!1069 tuple2!46826) ListLongMap!1069)

(assert (=> b!4313484 (= lt!1533170 (+!285 lt!1533177 (tuple2!46827 lt!1533176 lt!1533169)))))

(declare-datatypes ((Unit!67431 0))(
  ( (Unit!67432) )
))
(declare-fun lt!1533175 () Unit!67431)

(declare-fun lemmaChangeOneBucketByAValidOnePreservesForallNoDuplicatesAndHash!157 (ListLongMap!1069 (_ BitVec 64) List!48380 Hashable!4609) Unit!67431)

(assert (=> b!4313484 (= lt!1533175 (lemmaChangeOneBucketByAValidOnePreservesForallNoDuplicatesAndHash!157 lt!1533177 lt!1533176 lt!1533169 (hashF!6775 thiss!42308)))))

(assert (=> b!4313484 e!2682992))

(declare-fun res!1767897 () Bool)

(assert (=> b!4313484 (=> (not res!1767897) (not e!2682992))))

(declare-fun lt!1533173 () List!48380)

(assert (=> b!4313484 (= res!1767897 (noDuplicateKeys!235 lt!1533173))))

(declare-fun lt!1533178 () Unit!67431)

(declare-fun lt!1533174 () List!48380)

(declare-fun lemmaRemovePairForKeyPreservesNoDuplicateKeys!183 (List!48380 K!9479) Unit!67431)

(assert (=> b!4313484 (= lt!1533178 (lemmaRemovePairForKeyPreservesNoDuplicateKeys!183 lt!1533174 key!2048))))

(assert (=> b!4313484 (allKeysSameHash!208 lt!1533173 lt!1533176 (hashF!6775 thiss!42308))))

(declare-fun lt!1533171 () Unit!67431)

(declare-fun lemmaRemovePairForKeyPreservesHash!188 (List!48380 K!9479 (_ BitVec 64) Hashable!4609) Unit!67431)

(assert (=> b!4313484 (= lt!1533171 (lemmaRemovePairForKeyPreservesHash!188 lt!1533174 key!2048 lt!1533176 (hashF!6775 thiss!42308)))))

(assert (=> b!4313484 (allKeysSameHash!208 lt!1533174 lt!1533176 (hashF!6775 thiss!42308))))

(declare-fun lt!1533179 () Unit!67431)

(declare-fun lemmaInLongMapAllKeySameHashThenForTuple!195 (List!48381 (_ BitVec 64) List!48380 Hashable!4609) Unit!67431)

(assert (=> b!4313484 (= lt!1533179 (lemmaInLongMapAllKeySameHashThenForTuple!195 (toList!2456 lt!1533177) lt!1533176 lt!1533174 (hashF!6775 thiss!42308)))))

(declare-fun res!1767898 () Bool)

(assert (=> start!414746 (=> (not res!1767898) (not e!2683000))))

(get-info :version)

(assert (=> start!414746 (= res!1767898 ((_ is HashMap!4599) thiss!42308))))

(assert (=> start!414746 e!2683000))

(declare-fun e!2683004 () Bool)

(assert (=> start!414746 e!2683004))

(declare-fun tp_is_empty!23877 () Bool)

(assert (=> start!414746 tp_is_empty!23877))

(declare-fun tp_is_empty!23879 () Bool)

(assert (=> start!414746 tp_is_empty!23879))

(declare-fun e!2682999 () Bool)

(assert (=> b!4313485 (= e!2683004 (and e!2682999 tp!1325342))))

(declare-fun b!4313486 () Bool)

(declare-fun lt!1533180 () MutLongMap!4693)

(assert (=> b!4313486 (= e!2682999 (and e!2682996 ((_ is LongMap!4693) lt!1533180)))))

(assert (=> b!4313486 (= lt!1533180 (v!42476 (underlying!9616 thiss!42308)))))

(declare-fun mapNonEmpty!20944 () Bool)

(declare-fun tp!1325340 () Bool)

(declare-fun tp!1325339 () Bool)

(assert (=> mapNonEmpty!20944 (= mapRes!20944 (and tp!1325340 tp!1325339))))

(declare-fun mapKey!20944 () (_ BitVec 32))

(declare-fun mapRest!20944 () (Array (_ BitVec 32) List!48380))

(declare-fun mapValue!20944 () List!48380)

(assert (=> mapNonEmpty!20944 (= (arr!7572 (_values!4974 (v!42475 (underlying!9615 (v!42476 (underlying!9616 thiss!42308)))))) (store mapRest!20944 mapKey!20944 mapValue!20944))))

(declare-fun b!4313487 () Bool)

(assert (=> b!4313487 (= e!2682993 (allKeysSameHashInMap!355 lt!1533170 (hashF!6775 thiss!42308)))))

(declare-fun b!4313488 () Bool)

(declare-fun e!2683002 () Bool)

(assert (=> b!4313488 (= e!2683001 e!2683002)))

(declare-fun b!4313489 () Bool)

(declare-fun res!1767893 () Bool)

(assert (=> b!4313489 (=> (not res!1767893) (not e!2682992))))

(declare-fun containsKey!344 (List!48380 K!9479) Bool)

(assert (=> b!4313489 (= res!1767893 (not (containsKey!344 lt!1533173 key!2048)))))

(declare-fun b!4313490 () Bool)

(declare-fun e!2682998 () Bool)

(assert (=> b!4313490 (= e!2682998 e!2683003)))

(declare-fun res!1767891 () Bool)

(assert (=> b!4313490 (=> (not res!1767891) (not e!2683003))))

(declare-datatypes ((tuple2!46828 0))(
  ( (tuple2!46829 (_1!26696 Bool) (_2!26696 MutLongMap!4693)) )
))
(declare-fun update!468 (MutLongMap!4693 (_ BitVec 64) List!48380) tuple2!46828)

(assert (=> b!4313490 (= res!1767891 (_1!26696 (update!468 (v!42476 (underlying!9616 thiss!42308)) lt!1533176 lt!1533169)))))

(declare-fun v!9179 () V!9681)

(assert (=> b!4313490 (= lt!1533169 (Cons!48256 (tuple2!46825 key!2048 v!9179) lt!1533173))))

(declare-fun removePairForKey!234 (List!48380 K!9479) List!48380)

(assert (=> b!4313490 (= lt!1533173 (removePairForKey!234 lt!1533174 key!2048))))

(declare-fun apply!11057 (MutLongMap!4693 (_ BitVec 64)) List!48380)

(assert (=> b!4313490 (= lt!1533174 (apply!11057 (v!42476 (underlying!9616 thiss!42308)) lt!1533176))))

(declare-fun hash!1065 (Hashable!4609 K!9479) (_ BitVec 64))

(assert (=> b!4313490 (= lt!1533176 (hash!1065 (hashF!6775 thiss!42308) key!2048))))

(declare-fun tp!1325341 () Bool)

(declare-fun tp!1325338 () Bool)

(declare-fun e!2682994 () Bool)

(declare-fun array_inv!5441 (array!16954) Bool)

(declare-fun array_inv!5442 (array!16956) Bool)

(assert (=> b!4313491 (= e!2683002 (and tp!1325336 tp!1325341 tp!1325338 (array_inv!5441 (_keys!4993 (v!42475 (underlying!9615 (v!42476 (underlying!9616 thiss!42308)))))) (array_inv!5442 (_values!4974 (v!42475 (underlying!9615 (v!42476 (underlying!9616 thiss!42308)))))) e!2682994))))

(declare-fun b!4313492 () Bool)

(declare-fun tp!1325337 () Bool)

(assert (=> b!4313492 (= e!2682994 (and tp!1325337 mapRes!20944))))

(declare-fun condMapEmpty!20944 () Bool)

(declare-fun mapDefault!20944 () List!48380)

(assert (=> b!4313492 (= condMapEmpty!20944 (= (arr!7572 (_values!4974 (v!42475 (underlying!9615 (v!42476 (underlying!9616 thiss!42308)))))) ((as const (Array (_ BitVec 32) List!48380)) mapDefault!20944)))))

(declare-fun b!4313493 () Bool)

(assert (=> b!4313493 (= e!2683000 e!2682998)))

(declare-fun res!1767892 () Bool)

(assert (=> b!4313493 (=> (not res!1767892) (not e!2682998))))

(declare-fun contains!10244 (MutableMap!4599 K!9479) Bool)

(assert (=> b!4313493 (= res!1767892 (contains!10244 thiss!42308 key!2048))))

(declare-fun map!10262 (MutLongMap!4693) ListLongMap!1069)

(assert (=> b!4313493 (= lt!1533177 (map!10262 (v!42476 (underlying!9616 thiss!42308))))))

(declare-fun lt!1533172 () ListMap!1737)

(declare-fun map!10263 (MutableMap!4599) ListMap!1737)

(assert (=> b!4313493 (= lt!1533172 (map!10263 thiss!42308))))

(assert (= (and start!414746 res!1767898) b!4313483))

(assert (= (and b!4313483 res!1767895) b!4313493))

(assert (= (and b!4313493 res!1767892) b!4313490))

(assert (= (and b!4313490 res!1767891) b!4313484))

(assert (= (and b!4313484 res!1767897) b!4313489))

(assert (= (and b!4313489 res!1767893) b!4313480))

(assert (= (and b!4313484 res!1767899) b!4313487))

(assert (= (and b!4313484 (not res!1767900)) b!4313479))

(assert (= (and b!4313479 (not res!1767896)) b!4313481))

(assert (= (and b!4313481 (not res!1767894)) b!4313478))

(assert (= (and b!4313492 condMapEmpty!20944) mapIsEmpty!20944))

(assert (= (and b!4313492 (not condMapEmpty!20944)) mapNonEmpty!20944))

(assert (= b!4313491 b!4313492))

(assert (= b!4313488 b!4313491))

(assert (= b!4313482 b!4313488))

(assert (= (and b!4313486 ((_ is LongMap!4693) (v!42476 (underlying!9616 thiss!42308)))) b!4313482))

(assert (= b!4313485 b!4313486))

(assert (= (and start!414746 ((_ is HashMap!4599) thiss!42308)) b!4313485))

(declare-fun m!4906583 () Bool)

(assert (=> b!4313483 m!4906583))

(declare-fun m!4906585 () Bool)

(assert (=> b!4313491 m!4906585))

(declare-fun m!4906587 () Bool)

(assert (=> b!4313491 m!4906587))

(declare-fun m!4906589 () Bool)

(assert (=> b!4313479 m!4906589))

(declare-fun m!4906591 () Bool)

(assert (=> b!4313481 m!4906591))

(declare-fun m!4906593 () Bool)

(assert (=> b!4313490 m!4906593))

(declare-fun m!4906595 () Bool)

(assert (=> b!4313490 m!4906595))

(declare-fun m!4906597 () Bool)

(assert (=> b!4313490 m!4906597))

(declare-fun m!4906599 () Bool)

(assert (=> b!4313490 m!4906599))

(declare-fun m!4906601 () Bool)

(assert (=> mapNonEmpty!20944 m!4906601))

(declare-fun m!4906603 () Bool)

(assert (=> b!4313480 m!4906603))

(declare-fun m!4906605 () Bool)

(assert (=> b!4313487 m!4906605))

(declare-fun m!4906607 () Bool)

(assert (=> b!4313478 m!4906607))

(assert (=> b!4313478 m!4906607))

(declare-fun m!4906609 () Bool)

(assert (=> b!4313478 m!4906609))

(declare-fun m!4906611 () Bool)

(assert (=> b!4313493 m!4906611))

(declare-fun m!4906613 () Bool)

(assert (=> b!4313493 m!4906613))

(declare-fun m!4906615 () Bool)

(assert (=> b!4313493 m!4906615))

(declare-fun m!4906617 () Bool)

(assert (=> b!4313489 m!4906617))

(declare-fun m!4906619 () Bool)

(assert (=> b!4313484 m!4906619))

(declare-fun m!4906621 () Bool)

(assert (=> b!4313484 m!4906621))

(declare-fun m!4906623 () Bool)

(assert (=> b!4313484 m!4906623))

(declare-fun m!4906625 () Bool)

(assert (=> b!4313484 m!4906625))

(declare-fun m!4906627 () Bool)

(assert (=> b!4313484 m!4906627))

(declare-fun m!4906629 () Bool)

(assert (=> b!4313484 m!4906629))

(declare-fun m!4906631 () Bool)

(assert (=> b!4313484 m!4906631))

(declare-fun m!4906633 () Bool)

(assert (=> b!4313484 m!4906633))

(declare-fun m!4906635 () Bool)

(assert (=> b!4313484 m!4906635))

(declare-fun m!4906637 () Bool)

(assert (=> b!4313484 m!4906637))

(check-sat b_and!340197 tp_is_empty!23879 (not b!4313481) (not b!4313492) (not b!4313480) (not b!4313484) b_and!340195 (not b_next!129435) (not b!4313490) (not b!4313483) (not b!4313487) (not b!4313478) (not mapNonEmpty!20944) (not b!4313491) (not b!4313479) tp_is_empty!23877 (not b!4313489) (not b!4313493) (not b_next!129437))
(check-sat b_and!340195 b_and!340197 (not b_next!129437) (not b_next!129435))
(get-model)

(declare-fun bs!605451 () Bool)

(declare-fun d!1268759 () Bool)

(assert (= bs!605451 (and d!1268759 b!4313484)))

(declare-fun lambda!133184 () Int)

(assert (=> bs!605451 (not (= lambda!133184 lambda!133181))))

(assert (=> d!1268759 true))

(assert (=> d!1268759 (= (allKeysSameHashInMap!355 lt!1533170 (hashF!6775 thiss!42308)) (forall!8759 (toList!2456 lt!1533170) lambda!133184))))

(declare-fun bs!605452 () Bool)

(assert (= bs!605452 d!1268759))

(declare-fun m!4906639 () Bool)

(assert (=> bs!605452 m!4906639))

(assert (=> b!4313487 d!1268759))

(declare-fun bs!605453 () Bool)

(declare-fun b!4313500 () Bool)

(assert (= bs!605453 (and b!4313500 b!4313484)))

(declare-fun lambda!133187 () Int)

(assert (=> bs!605453 (= lambda!133187 lambda!133181)))

(declare-fun bs!605454 () Bool)

(assert (= bs!605454 (and b!4313500 d!1268759)))

(assert (=> bs!605454 (not (= lambda!133187 lambda!133184))))

(declare-fun d!1268761 () Bool)

(declare-fun res!1767905 () Bool)

(declare-fun e!2683007 () Bool)

(assert (=> d!1268761 (=> (not res!1767905) (not e!2683007))))

(declare-fun valid!3690 (MutLongMap!4693) Bool)

(assert (=> d!1268761 (= res!1767905 (valid!3690 (v!42476 (underlying!9616 thiss!42308))))))

(assert (=> d!1268761 (= (valid!3689 thiss!42308) e!2683007)))

(declare-fun res!1767906 () Bool)

(assert (=> b!4313500 (=> (not res!1767906) (not e!2683007))))

(assert (=> b!4313500 (= res!1767906 (forall!8759 (toList!2456 (map!10262 (v!42476 (underlying!9616 thiss!42308)))) lambda!133187))))

(declare-fun b!4313501 () Bool)

(assert (=> b!4313501 (= e!2683007 (allKeysSameHashInMap!355 (map!10262 (v!42476 (underlying!9616 thiss!42308))) (hashF!6775 thiss!42308)))))

(assert (= (and d!1268761 res!1767905) b!4313500))

(assert (= (and b!4313500 res!1767906) b!4313501))

(declare-fun m!4906641 () Bool)

(assert (=> d!1268761 m!4906641))

(assert (=> b!4313500 m!4906613))

(declare-fun m!4906643 () Bool)

(assert (=> b!4313500 m!4906643))

(assert (=> b!4313501 m!4906613))

(assert (=> b!4313501 m!4906613))

(declare-fun m!4906645 () Bool)

(assert (=> b!4313501 m!4906645))

(assert (=> b!4313483 d!1268761))

(declare-fun bs!605455 () Bool)

(declare-fun b!4313525 () Bool)

(assert (= bs!605455 (and b!4313525 b!4313484)))

(declare-fun lambda!133190 () Int)

(assert (=> bs!605455 (= lambda!133190 lambda!133181)))

(declare-fun bs!605456 () Bool)

(assert (= bs!605456 (and b!4313525 d!1268759)))

(assert (=> bs!605456 (not (= lambda!133190 lambda!133184))))

(declare-fun bs!605457 () Bool)

(assert (= bs!605457 (and b!4313525 b!4313500)))

(assert (=> bs!605457 (= lambda!133190 lambda!133187)))

(declare-fun lt!1533225 () (_ BitVec 64))

(declare-fun b!4313524 () Bool)

(declare-fun e!2683027 () Bool)

(declare-datatypes ((Option!10251 0))(
  ( (None!10250) (Some!10250 (v!42481 tuple2!46824)) )
))
(declare-fun isDefined!7553 (Option!10251) Bool)

(declare-fun getPair!143 (List!48380 K!9479) Option!10251)

(assert (=> b!4313524 (= e!2683027 (isDefined!7553 (getPair!143 (apply!11057 (v!42476 (underlying!9616 thiss!42308)) lt!1533225) key!2048)))))

(declare-fun call!298391 () ListLongMap!1069)

(declare-fun lt!1533236 () ListLongMap!1069)

(declare-fun call!298390 () (_ BitVec 64))

(declare-fun c!733375 () Bool)

(declare-fun call!298386 () Bool)

(declare-fun bm!298381 () Bool)

(declare-fun contains!10245 (ListLongMap!1069 (_ BitVec 64)) Bool)

(assert (=> bm!298381 (= call!298386 (contains!10245 (ite c!733375 lt!1533236 call!298391) call!298390))))

(declare-fun e!2683022 () Unit!67431)

(declare-fun forallContained!1510 (List!48381 Int tuple2!46826) Unit!67431)

(assert (=> b!4313525 (= e!2683022 (forallContained!1510 (toList!2456 (map!10262 (v!42476 (underlying!9616 thiss!42308)))) lambda!133190 (tuple2!46827 lt!1533225 (apply!11057 (v!42476 (underlying!9616 thiss!42308)) lt!1533225))))))

(declare-fun c!733376 () Bool)

(declare-fun contains!10246 (List!48381 tuple2!46826) Bool)

(assert (=> b!4313525 (= c!733376 (not (contains!10246 (toList!2456 (map!10262 (v!42476 (underlying!9616 thiss!42308)))) (tuple2!46827 lt!1533225 (apply!11057 (v!42476 (underlying!9616 thiss!42308)) lt!1533225)))))))

(declare-fun lt!1533235 () Unit!67431)

(declare-fun e!2683025 () Unit!67431)

(assert (=> b!4313525 (= lt!1533235 e!2683025)))

(declare-fun b!4313526 () Bool)

(declare-fun e!2683024 () Bool)

(declare-fun call!298387 () Bool)

(assert (=> b!4313526 (= e!2683024 call!298387)))

(declare-fun bm!298382 () Bool)

(assert (=> bm!298382 (= call!298391 (map!10262 (v!42476 (underlying!9616 thiss!42308))))))

(declare-fun d!1268763 () Bool)

(declare-fun lt!1533240 () Bool)

(assert (=> d!1268763 (= lt!1533240 (contains!10243 (map!10263 thiss!42308) key!2048))))

(assert (=> d!1268763 (= lt!1533240 e!2683027)))

(declare-fun res!1767914 () Bool)

(assert (=> d!1268763 (=> (not res!1767914) (not e!2683027))))

(declare-fun contains!10247 (MutLongMap!4693 (_ BitVec 64)) Bool)

(assert (=> d!1268763 (= res!1767914 (contains!10247 (v!42476 (underlying!9616 thiss!42308)) lt!1533225))))

(declare-fun lt!1533226 () Unit!67431)

(declare-fun e!2683028 () Unit!67431)

(assert (=> d!1268763 (= lt!1533226 e!2683028)))

(assert (=> d!1268763 (= c!733375 (contains!10243 (extractMap!339 (toList!2456 (map!10262 (v!42476 (underlying!9616 thiss!42308))))) key!2048))))

(declare-fun lt!1533230 () Unit!67431)

(assert (=> d!1268763 (= lt!1533230 e!2683022)))

(declare-fun c!733373 () Bool)

(assert (=> d!1268763 (= c!733373 (contains!10247 (v!42476 (underlying!9616 thiss!42308)) lt!1533225))))

(assert (=> d!1268763 (= lt!1533225 (hash!1065 (hashF!6775 thiss!42308) key!2048))))

(assert (=> d!1268763 (valid!3689 thiss!42308)))

(assert (=> d!1268763 (= (contains!10244 thiss!42308 key!2048) lt!1533240)))

(declare-fun bm!298383 () Bool)

(declare-fun call!298389 () List!48380)

(declare-fun apply!11058 (ListLongMap!1069 (_ BitVec 64)) List!48380)

(assert (=> bm!298383 (= call!298389 (apply!11058 (ite c!733375 lt!1533236 call!298391) call!298390))))

(declare-fun b!4313527 () Bool)

(assert (=> b!4313527 false))

(declare-fun lt!1533232 () Unit!67431)

(declare-fun lt!1533222 () Unit!67431)

(assert (=> b!4313527 (= lt!1533232 lt!1533222)))

(declare-fun lt!1533223 () List!48381)

(declare-fun lt!1533228 () List!48380)

(assert (=> b!4313527 (contains!10246 lt!1533223 (tuple2!46827 lt!1533225 lt!1533228))))

(declare-fun lemmaGetValueByKeyImpliesContainsTuple!154 (List!48381 (_ BitVec 64) List!48380) Unit!67431)

(assert (=> b!4313527 (= lt!1533222 (lemmaGetValueByKeyImpliesContainsTuple!154 lt!1533223 lt!1533225 lt!1533228))))

(assert (=> b!4313527 (= lt!1533228 (apply!11057 (v!42476 (underlying!9616 thiss!42308)) lt!1533225))))

(assert (=> b!4313527 (= lt!1533223 (toList!2456 (map!10262 (v!42476 (underlying!9616 thiss!42308)))))))

(declare-fun lt!1533224 () Unit!67431)

(declare-fun lt!1533227 () Unit!67431)

(assert (=> b!4313527 (= lt!1533224 lt!1533227)))

(declare-fun lt!1533233 () List!48381)

(declare-datatypes ((Option!10252 0))(
  ( (None!10251) (Some!10251 (v!42482 List!48380)) )
))
(declare-fun isDefined!7554 (Option!10252) Bool)

(declare-fun getValueByKey!267 (List!48381 (_ BitVec 64)) Option!10252)

(assert (=> b!4313527 (isDefined!7554 (getValueByKey!267 lt!1533233 lt!1533225))))

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!187 (List!48381 (_ BitVec 64)) Unit!67431)

(assert (=> b!4313527 (= lt!1533227 (lemmaContainsKeyImpliesGetValueByKeyDefined!187 lt!1533233 lt!1533225))))

(assert (=> b!4313527 (= lt!1533233 (toList!2456 (map!10262 (v!42476 (underlying!9616 thiss!42308)))))))

(declare-fun lt!1533238 () Unit!67431)

(declare-fun lt!1533234 () Unit!67431)

(assert (=> b!4313527 (= lt!1533238 lt!1533234)))

(declare-fun lt!1533239 () List!48381)

(declare-fun containsKey!345 (List!48381 (_ BitVec 64)) Bool)

(assert (=> b!4313527 (containsKey!345 lt!1533239 lt!1533225)))

(declare-fun lemmaGetValueByKeyIsDefinedImpliesContainsKey!144 (List!48381 (_ BitVec 64)) Unit!67431)

(assert (=> b!4313527 (= lt!1533234 (lemmaGetValueByKeyIsDefinedImpliesContainsKey!144 lt!1533239 lt!1533225))))

(assert (=> b!4313527 (= lt!1533239 (toList!2456 (map!10262 (v!42476 (underlying!9616 thiss!42308)))))))

(declare-fun Unit!67433 () Unit!67431)

(assert (=> b!4313527 (= e!2683025 Unit!67433)))

(declare-fun bm!298384 () Bool)

(declare-fun call!298388 () Option!10251)

(assert (=> bm!298384 (= call!298388 (getPair!143 call!298389 key!2048))))

(declare-fun b!4313528 () Bool)

(declare-fun Unit!67434 () Unit!67431)

(assert (=> b!4313528 (= e!2683025 Unit!67434)))

(declare-fun b!4313529 () Bool)

(declare-fun lt!1533221 () Unit!67431)

(assert (=> b!4313529 (= e!2683028 lt!1533221)))

(assert (=> b!4313529 (= lt!1533236 call!298391)))

(declare-fun lemmaInGenericMapThenInLongMap!143 (ListLongMap!1069 K!9479 Hashable!4609) Unit!67431)

(assert (=> b!4313529 (= lt!1533221 (lemmaInGenericMapThenInLongMap!143 lt!1533236 key!2048 (hashF!6775 thiss!42308)))))

(declare-fun res!1767913 () Bool)

(assert (=> b!4313529 (= res!1767913 call!298386)))

(declare-fun e!2683026 () Bool)

(assert (=> b!4313529 (=> (not res!1767913) (not e!2683026))))

(assert (=> b!4313529 e!2683026))

(declare-fun b!4313530 () Bool)

(assert (=> b!4313530 (= e!2683026 call!298387)))

(declare-fun bm!298385 () Bool)

(assert (=> bm!298385 (= call!298390 (hash!1065 (hashF!6775 thiss!42308) key!2048))))

(declare-fun b!4313531 () Bool)

(declare-fun e!2683023 () Unit!67431)

(declare-fun Unit!67435 () Unit!67431)

(assert (=> b!4313531 (= e!2683023 Unit!67435)))

(declare-fun b!4313532 () Bool)

(declare-fun Unit!67436 () Unit!67431)

(assert (=> b!4313532 (= e!2683022 Unit!67436)))

(declare-fun b!4313533 () Bool)

(assert (=> b!4313533 (= e!2683028 e!2683023)))

(declare-fun res!1767915 () Bool)

(assert (=> b!4313533 (= res!1767915 call!298386)))

(assert (=> b!4313533 (=> (not res!1767915) (not e!2683024))))

(declare-fun c!733374 () Bool)

(assert (=> b!4313533 (= c!733374 e!2683024)))

(declare-fun bm!298386 () Bool)

(assert (=> bm!298386 (= call!298387 (isDefined!7553 call!298388))))

(declare-fun b!4313534 () Bool)

(assert (=> b!4313534 false))

(declare-fun lt!1533231 () Unit!67431)

(declare-fun lt!1533237 () Unit!67431)

(assert (=> b!4313534 (= lt!1533231 lt!1533237)))

(declare-fun lt!1533229 () ListLongMap!1069)

(assert (=> b!4313534 (contains!10243 (extractMap!339 (toList!2456 lt!1533229)) key!2048)))

(declare-fun lemmaInLongMapThenInGenericMap!143 (ListLongMap!1069 K!9479 Hashable!4609) Unit!67431)

(assert (=> b!4313534 (= lt!1533237 (lemmaInLongMapThenInGenericMap!143 lt!1533229 key!2048 (hashF!6775 thiss!42308)))))

(assert (=> b!4313534 (= lt!1533229 call!298391)))

(declare-fun Unit!67437 () Unit!67431)

(assert (=> b!4313534 (= e!2683023 Unit!67437)))

(assert (= (and d!1268763 c!733373) b!4313525))

(assert (= (and d!1268763 (not c!733373)) b!4313532))

(assert (= (and b!4313525 c!733376) b!4313527))

(assert (= (and b!4313525 (not c!733376)) b!4313528))

(assert (= (and d!1268763 c!733375) b!4313529))

(assert (= (and d!1268763 (not c!733375)) b!4313533))

(assert (= (and b!4313529 res!1767913) b!4313530))

(assert (= (and b!4313533 res!1767915) b!4313526))

(assert (= (and b!4313533 c!733374) b!4313534))

(assert (= (and b!4313533 (not c!733374)) b!4313531))

(assert (= (or b!4313529 b!4313533 b!4313526 b!4313534) bm!298382))

(assert (= (or b!4313529 b!4313530 b!4313533 b!4313526) bm!298385))

(assert (= (or b!4313530 b!4313526) bm!298383))

(assert (= (or b!4313529 b!4313533) bm!298381))

(assert (= (or b!4313530 b!4313526) bm!298384))

(assert (= (or b!4313530 b!4313526) bm!298386))

(assert (= (and d!1268763 res!1767914) b!4313524))

(declare-fun m!4906647 () Bool)

(assert (=> b!4313524 m!4906647))

(assert (=> b!4313524 m!4906647))

(declare-fun m!4906649 () Bool)

(assert (=> b!4313524 m!4906649))

(assert (=> b!4313524 m!4906649))

(declare-fun m!4906651 () Bool)

(assert (=> b!4313524 m!4906651))

(declare-fun m!4906653 () Bool)

(assert (=> bm!298386 m!4906653))

(assert (=> bm!298385 m!4906599))

(declare-fun m!4906655 () Bool)

(assert (=> b!4313529 m!4906655))

(declare-fun m!4906657 () Bool)

(assert (=> b!4313534 m!4906657))

(assert (=> b!4313534 m!4906657))

(declare-fun m!4906659 () Bool)

(assert (=> b!4313534 m!4906659))

(declare-fun m!4906661 () Bool)

(assert (=> b!4313534 m!4906661))

(assert (=> b!4313527 m!4906647))

(declare-fun m!4906663 () Bool)

(assert (=> b!4313527 m!4906663))

(declare-fun m!4906665 () Bool)

(assert (=> b!4313527 m!4906665))

(assert (=> b!4313527 m!4906613))

(declare-fun m!4906667 () Bool)

(assert (=> b!4313527 m!4906667))

(declare-fun m!4906669 () Bool)

(assert (=> b!4313527 m!4906669))

(declare-fun m!4906671 () Bool)

(assert (=> b!4313527 m!4906671))

(declare-fun m!4906673 () Bool)

(assert (=> b!4313527 m!4906673))

(declare-fun m!4906675 () Bool)

(assert (=> b!4313527 m!4906675))

(assert (=> b!4313527 m!4906671))

(declare-fun m!4906677 () Bool)

(assert (=> bm!298381 m!4906677))

(assert (=> d!1268763 m!4906615))

(assert (=> d!1268763 m!4906613))

(declare-fun m!4906679 () Bool)

(assert (=> d!1268763 m!4906679))

(assert (=> d!1268763 m!4906583))

(assert (=> d!1268763 m!4906679))

(declare-fun m!4906681 () Bool)

(assert (=> d!1268763 m!4906681))

(assert (=> d!1268763 m!4906599))

(declare-fun m!4906683 () Bool)

(assert (=> d!1268763 m!4906683))

(assert (=> d!1268763 m!4906615))

(declare-fun m!4906685 () Bool)

(assert (=> d!1268763 m!4906685))

(declare-fun m!4906687 () Bool)

(assert (=> bm!298383 m!4906687))

(declare-fun m!4906689 () Bool)

(assert (=> bm!298384 m!4906689))

(assert (=> b!4313525 m!4906613))

(assert (=> b!4313525 m!4906647))

(declare-fun m!4906691 () Bool)

(assert (=> b!4313525 m!4906691))

(declare-fun m!4906693 () Bool)

(assert (=> b!4313525 m!4906693))

(assert (=> bm!298382 m!4906613))

(assert (=> b!4313493 d!1268763))

(declare-fun d!1268765 () Bool)

(declare-fun map!10264 (LongMapFixedSize!9386) ListLongMap!1069)

(assert (=> d!1268765 (= (map!10262 (v!42476 (underlying!9616 thiss!42308))) (map!10264 (v!42475 (underlying!9615 (v!42476 (underlying!9616 thiss!42308))))))))

(declare-fun bs!605458 () Bool)

(assert (= bs!605458 d!1268765))

(declare-fun m!4906695 () Bool)

(assert (=> bs!605458 m!4906695))

(assert (=> b!4313493 d!1268765))

(declare-fun d!1268767 () Bool)

(declare-fun lt!1533243 () ListMap!1737)

(declare-fun invariantList!582 (List!48380) Bool)

(assert (=> d!1268767 (invariantList!582 (toList!2457 lt!1533243))))

(assert (=> d!1268767 (= lt!1533243 (extractMap!339 (toList!2456 (map!10262 (v!42476 (underlying!9616 thiss!42308))))))))

(assert (=> d!1268767 (valid!3689 thiss!42308)))

(assert (=> d!1268767 (= (map!10263 thiss!42308) lt!1533243)))

(declare-fun bs!605459 () Bool)

(assert (= bs!605459 d!1268767))

(declare-fun m!4906697 () Bool)

(assert (=> bs!605459 m!4906697))

(assert (=> bs!605459 m!4906613))

(assert (=> bs!605459 m!4906679))

(assert (=> bs!605459 m!4906583))

(assert (=> b!4313493 d!1268767))

(declare-fun bs!605460 () Bool)

(declare-fun d!1268769 () Bool)

(assert (= bs!605460 (and d!1268769 b!4313484)))

(declare-fun lambda!133191 () Int)

(assert (=> bs!605460 (not (= lambda!133191 lambda!133181))))

(declare-fun bs!605461 () Bool)

(assert (= bs!605461 (and d!1268769 d!1268759)))

(assert (=> bs!605461 (= lambda!133191 lambda!133184)))

(declare-fun bs!605462 () Bool)

(assert (= bs!605462 (and d!1268769 b!4313500)))

(assert (=> bs!605462 (not (= lambda!133191 lambda!133187))))

(declare-fun bs!605463 () Bool)

(assert (= bs!605463 (and d!1268769 b!4313525)))

(assert (=> bs!605463 (not (= lambda!133191 lambda!133190))))

(assert (=> d!1268769 true))

(assert (=> d!1268769 (= (allKeysSameHashInMap!355 lt!1533177 (hashF!6775 thiss!42308)) (forall!8759 (toList!2456 lt!1533177) lambda!133191))))

(declare-fun bs!605464 () Bool)

(assert (= bs!605464 d!1268769))

(declare-fun m!4906699 () Bool)

(assert (=> bs!605464 m!4906699))

(assert (=> b!4313479 d!1268769))

(declare-fun d!1268771 () Bool)

(assert (=> d!1268771 (= (array_inv!5441 (_keys!4993 (v!42475 (underlying!9615 (v!42476 (underlying!9616 thiss!42308)))))) (bvsge (size!35610 (_keys!4993 (v!42475 (underlying!9615 (v!42476 (underlying!9616 thiss!42308)))))) #b00000000000000000000000000000000))))

(assert (=> b!4313491 d!1268771))

(declare-fun d!1268773 () Bool)

(assert (=> d!1268773 (= (array_inv!5442 (_values!4974 (v!42475 (underlying!9615 (v!42476 (underlying!9616 thiss!42308)))))) (bvsge (size!35611 (_values!4974 (v!42475 (underlying!9615 (v!42476 (underlying!9616 thiss!42308)))))) #b00000000000000000000000000000000))))

(assert (=> b!4313491 d!1268773))

(declare-fun d!1268775 () Bool)

(declare-fun e!2683046 () Bool)

(assert (=> d!1268775 e!2683046))

(declare-fun res!1767922 () Bool)

(assert (=> d!1268775 (=> res!1767922 e!2683046)))

(declare-fun e!2683044 () Bool)

(assert (=> d!1268775 (= res!1767922 e!2683044)))

(declare-fun res!1767923 () Bool)

(assert (=> d!1268775 (=> (not res!1767923) (not e!2683044))))

(declare-fun lt!1533266 () Bool)

(assert (=> d!1268775 (= res!1767923 (not lt!1533266))))

(declare-fun lt!1533262 () Bool)

(assert (=> d!1268775 (= lt!1533266 lt!1533262)))

(declare-fun lt!1533264 () Unit!67431)

(declare-fun e!2683041 () Unit!67431)

(assert (=> d!1268775 (= lt!1533264 e!2683041)))

(declare-fun c!733384 () Bool)

(assert (=> d!1268775 (= c!733384 lt!1533262)))

(declare-fun containsKey!346 (List!48380 K!9479) Bool)

(assert (=> d!1268775 (= lt!1533262 (containsKey!346 (toList!2457 (extractMap!339 (toList!2456 lt!1533177))) key!2048))))

(assert (=> d!1268775 (= (contains!10243 (extractMap!339 (toList!2456 lt!1533177)) key!2048) lt!1533266)))

(declare-fun b!4313553 () Bool)

(declare-datatypes ((List!48382 0))(
  ( (Nil!48258) (Cons!48258 (h!53704 K!9479) (t!355215 List!48382)) )
))
(declare-fun e!2683045 () List!48382)

(declare-fun keys!16103 (ListMap!1737) List!48382)

(assert (=> b!4313553 (= e!2683045 (keys!16103 (extractMap!339 (toList!2456 lt!1533177))))))

(declare-fun b!4313554 () Bool)

(declare-fun e!2683043 () Bool)

(assert (=> b!4313554 (= e!2683046 e!2683043)))

(declare-fun res!1767924 () Bool)

(assert (=> b!4313554 (=> (not res!1767924) (not e!2683043))))

(declare-datatypes ((Option!10253 0))(
  ( (None!10252) (Some!10252 (v!42483 V!9681)) )
))
(declare-fun isDefined!7555 (Option!10253) Bool)

(declare-fun getValueByKey!268 (List!48380 K!9479) Option!10253)

(assert (=> b!4313554 (= res!1767924 (isDefined!7555 (getValueByKey!268 (toList!2457 (extractMap!339 (toList!2456 lt!1533177))) key!2048)))))

(declare-fun b!4313555 () Bool)

(assert (=> b!4313555 false))

(declare-fun lt!1533261 () Unit!67431)

(declare-fun lt!1533267 () Unit!67431)

(assert (=> b!4313555 (= lt!1533261 lt!1533267)))

(assert (=> b!4313555 (containsKey!346 (toList!2457 (extractMap!339 (toList!2456 lt!1533177))) key!2048)))

(declare-fun lemmaInGetKeysListThenContainsKey!43 (List!48380 K!9479) Unit!67431)

(assert (=> b!4313555 (= lt!1533267 (lemmaInGetKeysListThenContainsKey!43 (toList!2457 (extractMap!339 (toList!2456 lt!1533177))) key!2048))))

(declare-fun e!2683042 () Unit!67431)

(declare-fun Unit!67438 () Unit!67431)

(assert (=> b!4313555 (= e!2683042 Unit!67438)))

(declare-fun b!4313556 () Bool)

(declare-fun getKeysList!46 (List!48380) List!48382)

(assert (=> b!4313556 (= e!2683045 (getKeysList!46 (toList!2457 (extractMap!339 (toList!2456 lt!1533177)))))))

(declare-fun bm!298389 () Bool)

(declare-fun call!298394 () Bool)

(declare-fun contains!10248 (List!48382 K!9479) Bool)

(assert (=> bm!298389 (= call!298394 (contains!10248 e!2683045 key!2048))))

(declare-fun c!733385 () Bool)

(assert (=> bm!298389 (= c!733385 c!733384)))

(declare-fun b!4313557 () Bool)

(assert (=> b!4313557 (= e!2683044 (not (contains!10248 (keys!16103 (extractMap!339 (toList!2456 lt!1533177))) key!2048)))))

(declare-fun b!4313558 () Bool)

(declare-fun lt!1533265 () Unit!67431)

(assert (=> b!4313558 (= e!2683041 lt!1533265)))

(declare-fun lt!1533263 () Unit!67431)

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!188 (List!48380 K!9479) Unit!67431)

(assert (=> b!4313558 (= lt!1533263 (lemmaContainsKeyImpliesGetValueByKeyDefined!188 (toList!2457 (extractMap!339 (toList!2456 lt!1533177))) key!2048))))

(assert (=> b!4313558 (isDefined!7555 (getValueByKey!268 (toList!2457 (extractMap!339 (toList!2456 lt!1533177))) key!2048))))

(declare-fun lt!1533260 () Unit!67431)

(assert (=> b!4313558 (= lt!1533260 lt!1533263)))

(declare-fun lemmaInListThenGetKeysListContains!43 (List!48380 K!9479) Unit!67431)

(assert (=> b!4313558 (= lt!1533265 (lemmaInListThenGetKeysListContains!43 (toList!2457 (extractMap!339 (toList!2456 lt!1533177))) key!2048))))

(assert (=> b!4313558 call!298394))

(declare-fun b!4313559 () Bool)

(assert (=> b!4313559 (= e!2683041 e!2683042)))

(declare-fun c!733383 () Bool)

(assert (=> b!4313559 (= c!733383 call!298394)))

(declare-fun b!4313560 () Bool)

(declare-fun Unit!67439 () Unit!67431)

(assert (=> b!4313560 (= e!2683042 Unit!67439)))

(declare-fun b!4313561 () Bool)

(assert (=> b!4313561 (= e!2683043 (contains!10248 (keys!16103 (extractMap!339 (toList!2456 lt!1533177))) key!2048))))

(assert (= (and d!1268775 c!733384) b!4313558))

(assert (= (and d!1268775 (not c!733384)) b!4313559))

(assert (= (and b!4313559 c!733383) b!4313555))

(assert (= (and b!4313559 (not c!733383)) b!4313560))

(assert (= (or b!4313558 b!4313559) bm!298389))

(assert (= (and bm!298389 c!733385) b!4313556))

(assert (= (and bm!298389 (not c!733385)) b!4313553))

(assert (= (and d!1268775 res!1767923) b!4313557))

(assert (= (and d!1268775 (not res!1767922)) b!4313554))

(assert (= (and b!4313554 res!1767924) b!4313561))

(declare-fun m!4906701 () Bool)

(assert (=> b!4313558 m!4906701))

(declare-fun m!4906703 () Bool)

(assert (=> b!4313558 m!4906703))

(assert (=> b!4313558 m!4906703))

(declare-fun m!4906705 () Bool)

(assert (=> b!4313558 m!4906705))

(declare-fun m!4906707 () Bool)

(assert (=> b!4313558 m!4906707))

(declare-fun m!4906709 () Bool)

(assert (=> d!1268775 m!4906709))

(assert (=> b!4313553 m!4906607))

(declare-fun m!4906711 () Bool)

(assert (=> b!4313553 m!4906711))

(assert (=> b!4313555 m!4906709))

(declare-fun m!4906713 () Bool)

(assert (=> b!4313555 m!4906713))

(assert (=> b!4313557 m!4906607))

(assert (=> b!4313557 m!4906711))

(assert (=> b!4313557 m!4906711))

(declare-fun m!4906715 () Bool)

(assert (=> b!4313557 m!4906715))

(declare-fun m!4906717 () Bool)

(assert (=> bm!298389 m!4906717))

(assert (=> b!4313554 m!4906703))

(assert (=> b!4313554 m!4906703))

(assert (=> b!4313554 m!4906705))

(assert (=> b!4313561 m!4906607))

(assert (=> b!4313561 m!4906711))

(assert (=> b!4313561 m!4906711))

(assert (=> b!4313561 m!4906715))

(declare-fun m!4906719 () Bool)

(assert (=> b!4313556 m!4906719))

(assert (=> b!4313478 d!1268775))

(declare-fun bs!605465 () Bool)

(declare-fun d!1268777 () Bool)

(assert (= bs!605465 (and d!1268777 d!1268759)))

(declare-fun lambda!133194 () Int)

(assert (=> bs!605465 (not (= lambda!133194 lambda!133184))))

(declare-fun bs!605466 () Bool)

(assert (= bs!605466 (and d!1268777 d!1268769)))

(assert (=> bs!605466 (not (= lambda!133194 lambda!133191))))

(declare-fun bs!605467 () Bool)

(assert (= bs!605467 (and d!1268777 b!4313484)))

(assert (=> bs!605467 (= lambda!133194 lambda!133181)))

(declare-fun bs!605468 () Bool)

(assert (= bs!605468 (and d!1268777 b!4313500)))

(assert (=> bs!605468 (= lambda!133194 lambda!133187)))

(declare-fun bs!605469 () Bool)

(assert (= bs!605469 (and d!1268777 b!4313525)))

(assert (=> bs!605469 (= lambda!133194 lambda!133190)))

(declare-fun lt!1533270 () ListMap!1737)

(assert (=> d!1268777 (invariantList!582 (toList!2457 lt!1533270))))

(declare-fun e!2683049 () ListMap!1737)

(assert (=> d!1268777 (= lt!1533270 e!2683049)))

(declare-fun c!733388 () Bool)

(assert (=> d!1268777 (= c!733388 ((_ is Cons!48257) (toList!2456 lt!1533177)))))

(assert (=> d!1268777 (forall!8759 (toList!2456 lt!1533177) lambda!133194)))

(assert (=> d!1268777 (= (extractMap!339 (toList!2456 lt!1533177)) lt!1533270)))

(declare-fun b!4313566 () Bool)

(declare-fun addToMapMapFromBucket!40 (List!48380 ListMap!1737) ListMap!1737)

(assert (=> b!4313566 (= e!2683049 (addToMapMapFromBucket!40 (_2!26695 (h!53702 (toList!2456 lt!1533177))) (extractMap!339 (t!355212 (toList!2456 lt!1533177)))))))

(declare-fun b!4313567 () Bool)

(assert (=> b!4313567 (= e!2683049 (ListMap!1738 Nil!48256))))

(assert (= (and d!1268777 c!733388) b!4313566))

(assert (= (and d!1268777 (not c!733388)) b!4313567))

(declare-fun m!4906721 () Bool)

(assert (=> d!1268777 m!4906721))

(declare-fun m!4906723 () Bool)

(assert (=> d!1268777 m!4906723))

(declare-fun m!4906725 () Bool)

(assert (=> b!4313566 m!4906725))

(assert (=> b!4313566 m!4906725))

(declare-fun m!4906727 () Bool)

(assert (=> b!4313566 m!4906727))

(assert (=> b!4313478 d!1268777))

(declare-fun d!1268779 () Bool)

(assert (=> d!1268779 true))

(assert (=> d!1268779 true))

(declare-fun lambda!133197 () Int)

(declare-fun forall!8760 (List!48380 Int) Bool)

(assert (=> d!1268779 (= (allKeysSameHash!208 lt!1533169 lt!1533176 (hashF!6775 thiss!42308)) (forall!8760 lt!1533169 lambda!133197))))

(declare-fun bs!605470 () Bool)

(assert (= bs!605470 d!1268779))

(declare-fun m!4906729 () Bool)

(assert (=> bs!605470 m!4906729))

(assert (=> b!4313481 d!1268779))

(declare-fun b!4313590 () Bool)

(declare-fun e!2683063 () Bool)

(declare-fun e!2683064 () Bool)

(assert (=> b!4313590 (= e!2683063 e!2683064)))

(declare-fun res!1767931 () Bool)

(declare-fun call!298399 () ListLongMap!1069)

(assert (=> b!4313590 (= res!1767931 (contains!10245 call!298399 lt!1533176))))

(assert (=> b!4313590 (=> (not res!1767931) (not e!2683064))))

(declare-fun b!4313591 () Bool)

(declare-fun e!2683061 () tuple2!46828)

(declare-datatypes ((tuple2!46830 0))(
  ( (tuple2!46831 (_1!26697 Bool) (_2!26697 LongMapFixedSize!9386)) )
))
(declare-fun lt!1533280 () tuple2!46830)

(assert (=> b!4313591 (= e!2683061 (tuple2!46829 (_1!26697 lt!1533280) (LongMap!4693 (Cell!18582 (_2!26697 lt!1533280)))))))

(declare-fun lt!1533281 () tuple2!46828)

(declare-fun update!469 (LongMapFixedSize!9386 (_ BitVec 64) List!48380) tuple2!46830)

(assert (=> b!4313591 (= lt!1533280 (update!469 (v!42475 (underlying!9615 (_2!26696 lt!1533281))) lt!1533176 lt!1533169))))

(declare-fun b!4313592 () Bool)

(declare-fun res!1767933 () Bool)

(declare-fun e!2683062 () Bool)

(assert (=> b!4313592 (=> (not res!1767933) (not e!2683062))))

(declare-fun lt!1533279 () tuple2!46828)

(assert (=> b!4313592 (= res!1767933 (valid!3690 (_2!26696 lt!1533279)))))

(declare-fun b!4313593 () Bool)

(declare-fun e!2683060 () tuple2!46828)

(declare-fun lt!1533282 () tuple2!46828)

(assert (=> b!4313593 (= e!2683060 (tuple2!46829 (_1!26696 lt!1533282) (_2!26696 lt!1533282)))))

(declare-fun repack!65 (MutLongMap!4693) tuple2!46828)

(assert (=> b!4313593 (= lt!1533282 (repack!65 (v!42476 (underlying!9616 thiss!42308))))))

(declare-fun b!4313594 () Bool)

(declare-fun call!298400 () ListLongMap!1069)

(assert (=> b!4313594 (= e!2683063 (= call!298399 call!298400))))

(declare-fun b!4313595 () Bool)

(assert (=> b!4313595 (= e!2683061 (tuple2!46829 false (_2!26696 lt!1533281)))))

(declare-fun b!4313596 () Bool)

(assert (=> b!4313596 (= e!2683064 (= call!298399 (+!285 call!298400 (tuple2!46827 lt!1533176 lt!1533169))))))

(declare-fun bm!298395 () Bool)

(assert (=> bm!298395 (= call!298399 (map!10262 (_2!26696 lt!1533279)))))

(declare-fun d!1268781 () Bool)

(assert (=> d!1268781 e!2683062))

(declare-fun res!1767932 () Bool)

(assert (=> d!1268781 (=> (not res!1767932) (not e!2683062))))

(assert (=> d!1268781 (= res!1767932 ((_ is LongMap!4693) (_2!26696 lt!1533279)))))

(assert (=> d!1268781 (= lt!1533279 e!2683061)))

(declare-fun c!733395 () Bool)

(assert (=> d!1268781 (= c!733395 (_1!26696 lt!1533281))))

(assert (=> d!1268781 (= lt!1533281 e!2683060)))

(declare-fun c!733397 () Bool)

(declare-fun imbalanced!61 (MutLongMap!4693) Bool)

(assert (=> d!1268781 (= c!733397 (imbalanced!61 (v!42476 (underlying!9616 thiss!42308))))))

(assert (=> d!1268781 (valid!3690 (v!42476 (underlying!9616 thiss!42308)))))

(assert (=> d!1268781 (= (update!468 (v!42476 (underlying!9616 thiss!42308)) lt!1533176 lt!1533169) lt!1533279)))

(declare-fun bm!298394 () Bool)

(assert (=> bm!298394 (= call!298400 (map!10262 (v!42476 (underlying!9616 thiss!42308))))))

(declare-fun b!4313597 () Bool)

(assert (=> b!4313597 (= e!2683060 (tuple2!46829 true (v!42476 (underlying!9616 thiss!42308))))))

(declare-fun b!4313598 () Bool)

(assert (=> b!4313598 (= e!2683062 e!2683063)))

(declare-fun c!733396 () Bool)

(assert (=> b!4313598 (= c!733396 (_1!26696 lt!1533279))))

(assert (= (and d!1268781 c!733397) b!4313593))

(assert (= (and d!1268781 (not c!733397)) b!4313597))

(assert (= (and d!1268781 c!733395) b!4313591))

(assert (= (and d!1268781 (not c!733395)) b!4313595))

(assert (= (and d!1268781 res!1767932) b!4313592))

(assert (= (and b!4313592 res!1767933) b!4313598))

(assert (= (and b!4313598 c!733396) b!4313590))

(assert (= (and b!4313598 (not c!733396)) b!4313594))

(assert (= (and b!4313590 res!1767931) b!4313596))

(assert (= (or b!4313596 b!4313594) bm!298394))

(assert (= (or b!4313590 b!4313596 b!4313594) bm!298395))

(declare-fun m!4906731 () Bool)

(assert (=> d!1268781 m!4906731))

(assert (=> d!1268781 m!4906641))

(declare-fun m!4906733 () Bool)

(assert (=> b!4313590 m!4906733))

(declare-fun m!4906735 () Bool)

(assert (=> b!4313592 m!4906735))

(declare-fun m!4906737 () Bool)

(assert (=> b!4313593 m!4906737))

(declare-fun m!4906739 () Bool)

(assert (=> b!4313596 m!4906739))

(declare-fun m!4906741 () Bool)

(assert (=> bm!298395 m!4906741))

(assert (=> bm!298394 m!4906613))

(declare-fun m!4906743 () Bool)

(assert (=> b!4313591 m!4906743))

(assert (=> b!4313490 d!1268781))

(declare-fun b!4313609 () Bool)

(declare-fun e!2683069 () List!48380)

(assert (=> b!4313609 (= e!2683069 (Cons!48256 (h!53701 lt!1533174) (removePairForKey!234 (t!355211 lt!1533174) key!2048)))))

(declare-fun b!4313610 () Bool)

(assert (=> b!4313610 (= e!2683069 Nil!48256)))

(declare-fun b!4313607 () Bool)

(declare-fun e!2683070 () List!48380)

(assert (=> b!4313607 (= e!2683070 (t!355211 lt!1533174))))

(declare-fun d!1268783 () Bool)

(declare-fun lt!1533285 () List!48380)

(assert (=> d!1268783 (not (containsKey!344 lt!1533285 key!2048))))

(assert (=> d!1268783 (= lt!1533285 e!2683070)))

(declare-fun c!733402 () Bool)

(assert (=> d!1268783 (= c!733402 (and ((_ is Cons!48256) lt!1533174) (= (_1!26694 (h!53701 lt!1533174)) key!2048)))))

(assert (=> d!1268783 (noDuplicateKeys!235 lt!1533174)))

(assert (=> d!1268783 (= (removePairForKey!234 lt!1533174 key!2048) lt!1533285)))

(declare-fun b!4313608 () Bool)

(assert (=> b!4313608 (= e!2683070 e!2683069)))

(declare-fun c!733403 () Bool)

(assert (=> b!4313608 (= c!733403 ((_ is Cons!48256) lt!1533174))))

(assert (= (and d!1268783 c!733402) b!4313607))

(assert (= (and d!1268783 (not c!733402)) b!4313608))

(assert (= (and b!4313608 c!733403) b!4313609))

(assert (= (and b!4313608 (not c!733403)) b!4313610))

(declare-fun m!4906745 () Bool)

(assert (=> b!4313609 m!4906745))

(declare-fun m!4906747 () Bool)

(assert (=> d!1268783 m!4906747))

(declare-fun m!4906749 () Bool)

(assert (=> d!1268783 m!4906749))

(assert (=> b!4313490 d!1268783))

(declare-fun d!1268785 () Bool)

(declare-fun e!2683073 () Bool)

(assert (=> d!1268785 e!2683073))

(declare-fun c!733406 () Bool)

(assert (=> d!1268785 (= c!733406 (contains!10247 (v!42476 (underlying!9616 thiss!42308)) lt!1533176))))

(declare-fun lt!1533288 () List!48380)

(declare-fun apply!11059 (LongMapFixedSize!9386 (_ BitVec 64)) List!48380)

(assert (=> d!1268785 (= lt!1533288 (apply!11059 (v!42475 (underlying!9615 (v!42476 (underlying!9616 thiss!42308)))) lt!1533176))))

(assert (=> d!1268785 (valid!3690 (v!42476 (underlying!9616 thiss!42308)))))

(assert (=> d!1268785 (= (apply!11057 (v!42476 (underlying!9616 thiss!42308)) lt!1533176) lt!1533288)))

(declare-fun b!4313615 () Bool)

(declare-fun get!15622 (Option!10252) List!48380)

(assert (=> b!4313615 (= e!2683073 (= lt!1533288 (get!15622 (getValueByKey!267 (toList!2456 (map!10262 (v!42476 (underlying!9616 thiss!42308)))) lt!1533176))))))

(declare-fun b!4313616 () Bool)

(declare-fun dynLambda!20456 (Int (_ BitVec 64)) List!48380)

(assert (=> b!4313616 (= e!2683073 (= lt!1533288 (dynLambda!20456 (defaultEntry!5078 (v!42475 (underlying!9615 (v!42476 (underlying!9616 thiss!42308))))) lt!1533176)))))

(assert (=> b!4313616 ((_ is LongMap!4693) (v!42476 (underlying!9616 thiss!42308)))))

(assert (= (and d!1268785 c!733406) b!4313615))

(assert (= (and d!1268785 (not c!733406)) b!4313616))

(declare-fun b_lambda!126819 () Bool)

(assert (=> (not b_lambda!126819) (not b!4313616)))

(declare-fun t!355214 () Bool)

(declare-fun tb!257317 () Bool)

(assert (=> (and b!4313491 (= (defaultEntry!5078 (v!42475 (underlying!9615 (v!42476 (underlying!9616 thiss!42308))))) (defaultEntry!5078 (v!42475 (underlying!9615 (v!42476 (underlying!9616 thiss!42308)))))) t!355214) tb!257317))

(assert (=> b!4313616 t!355214))

(declare-fun result!314754 () Bool)

(declare-fun b_and!340199 () Bool)

(assert (= b_and!340195 (and (=> t!355214 result!314754) b_and!340199)))

(declare-fun m!4906751 () Bool)

(assert (=> d!1268785 m!4906751))

(declare-fun m!4906753 () Bool)

(assert (=> d!1268785 m!4906753))

(assert (=> d!1268785 m!4906641))

(assert (=> b!4313615 m!4906613))

(declare-fun m!4906755 () Bool)

(assert (=> b!4313615 m!4906755))

(assert (=> b!4313615 m!4906755))

(declare-fun m!4906757 () Bool)

(assert (=> b!4313615 m!4906757))

(declare-fun m!4906759 () Bool)

(assert (=> b!4313616 m!4906759))

(assert (=> b!4313490 d!1268785))

(declare-fun d!1268787 () Bool)

(declare-fun hash!1069 (Hashable!4609 K!9479) (_ BitVec 64))

(assert (=> d!1268787 (= (hash!1065 (hashF!6775 thiss!42308) key!2048) (hash!1069 (hashF!6775 thiss!42308) key!2048))))

(declare-fun bs!605471 () Bool)

(assert (= bs!605471 d!1268787))

(declare-fun m!4906761 () Bool)

(assert (=> bs!605471 m!4906761))

(assert (=> b!4313490 d!1268787))

(declare-fun bs!605472 () Bool)

(declare-fun d!1268789 () Bool)

(assert (= bs!605472 (and d!1268789 d!1268777)))

(declare-fun lambda!133200 () Int)

(assert (=> bs!605472 (not (= lambda!133200 lambda!133194))))

(declare-fun bs!605473 () Bool)

(assert (= bs!605473 (and d!1268789 d!1268759)))

(assert (=> bs!605473 (= lambda!133200 lambda!133184)))

(declare-fun bs!605474 () Bool)

(assert (= bs!605474 (and d!1268789 d!1268769)))

(assert (=> bs!605474 (= lambda!133200 lambda!133191)))

(declare-fun bs!605475 () Bool)

(assert (= bs!605475 (and d!1268789 b!4313484)))

(assert (=> bs!605475 (not (= lambda!133200 lambda!133181))))

(declare-fun bs!605476 () Bool)

(assert (= bs!605476 (and d!1268789 b!4313500)))

(assert (=> bs!605476 (not (= lambda!133200 lambda!133187))))

(declare-fun bs!605477 () Bool)

(assert (= bs!605477 (and d!1268789 b!4313525)))

(assert (=> bs!605477 (not (= lambda!133200 lambda!133190))))

(assert (=> d!1268789 true))

(assert (=> d!1268789 (allKeysSameHash!208 lt!1533174 lt!1533176 (hashF!6775 thiss!42308))))

(declare-fun lt!1533291 () Unit!67431)

(declare-fun choose!26300 (List!48381 (_ BitVec 64) List!48380 Hashable!4609) Unit!67431)

(assert (=> d!1268789 (= lt!1533291 (choose!26300 (toList!2456 lt!1533177) lt!1533176 lt!1533174 (hashF!6775 thiss!42308)))))

(assert (=> d!1268789 (forall!8759 (toList!2456 lt!1533177) lambda!133200)))

(assert (=> d!1268789 (= (lemmaInLongMapAllKeySameHashThenForTuple!195 (toList!2456 lt!1533177) lt!1533176 lt!1533174 (hashF!6775 thiss!42308)) lt!1533291)))

(declare-fun bs!605478 () Bool)

(assert (= bs!605478 d!1268789))

(assert (=> bs!605478 m!4906627))

(declare-fun m!4906763 () Bool)

(assert (=> bs!605478 m!4906763))

(declare-fun m!4906765 () Bool)

(assert (=> bs!605478 m!4906765))

(assert (=> b!4313484 d!1268789))

(declare-fun d!1268791 () Bool)

(assert (=> d!1268791 (allKeysSameHash!208 (removePairForKey!234 lt!1533174 key!2048) lt!1533176 (hashF!6775 thiss!42308))))

(declare-fun lt!1533294 () Unit!67431)

(declare-fun choose!26301 (List!48380 K!9479 (_ BitVec 64) Hashable!4609) Unit!67431)

(assert (=> d!1268791 (= lt!1533294 (choose!26301 lt!1533174 key!2048 lt!1533176 (hashF!6775 thiss!42308)))))

(assert (=> d!1268791 (noDuplicateKeys!235 lt!1533174)))

(assert (=> d!1268791 (= (lemmaRemovePairForKeyPreservesHash!188 lt!1533174 key!2048 lt!1533176 (hashF!6775 thiss!42308)) lt!1533294)))

(declare-fun bs!605479 () Bool)

(assert (= bs!605479 d!1268791))

(assert (=> bs!605479 m!4906595))

(assert (=> bs!605479 m!4906595))

(declare-fun m!4906767 () Bool)

(assert (=> bs!605479 m!4906767))

(declare-fun m!4906769 () Bool)

(assert (=> bs!605479 m!4906769))

(assert (=> bs!605479 m!4906749))

(assert (=> b!4313484 d!1268791))

(declare-fun bs!605480 () Bool)

(declare-fun d!1268793 () Bool)

(assert (= bs!605480 (and d!1268793 d!1268779)))

(declare-fun lambda!133201 () Int)

(assert (=> bs!605480 (= lambda!133201 lambda!133197)))

(assert (=> d!1268793 true))

(assert (=> d!1268793 true))

(assert (=> d!1268793 (= (allKeysSameHash!208 lt!1533173 lt!1533176 (hashF!6775 thiss!42308)) (forall!8760 lt!1533173 lambda!133201))))

(declare-fun bs!605481 () Bool)

(assert (= bs!605481 d!1268793))

(declare-fun m!4906771 () Bool)

(assert (=> bs!605481 m!4906771))

(assert (=> b!4313484 d!1268793))

(declare-fun bs!605482 () Bool)

(declare-fun d!1268795 () Bool)

(assert (= bs!605482 (and d!1268795 d!1268779)))

(declare-fun lambda!133202 () Int)

(assert (=> bs!605482 (= lambda!133202 lambda!133197)))

(declare-fun bs!605483 () Bool)

(assert (= bs!605483 (and d!1268795 d!1268793)))

(assert (=> bs!605483 (= lambda!133202 lambda!133201)))

(assert (=> d!1268795 true))

(assert (=> d!1268795 true))

(assert (=> d!1268795 (= (allKeysSameHash!208 lt!1533174 lt!1533176 (hashF!6775 thiss!42308)) (forall!8760 lt!1533174 lambda!133202))))

(declare-fun bs!605484 () Bool)

(assert (= bs!605484 d!1268795))

(declare-fun m!4906773 () Bool)

(assert (=> bs!605484 m!4906773))

(assert (=> b!4313484 d!1268795))

(declare-fun d!1268797 () Bool)

(declare-fun res!1767938 () Bool)

(declare-fun e!2683078 () Bool)

(assert (=> d!1268797 (=> res!1767938 e!2683078)))

(assert (=> d!1268797 (= res!1767938 (not ((_ is Cons!48256) lt!1533173)))))

(assert (=> d!1268797 (= (noDuplicateKeys!235 lt!1533173) e!2683078)))

(declare-fun b!4313621 () Bool)

(declare-fun e!2683079 () Bool)

(assert (=> b!4313621 (= e!2683078 e!2683079)))

(declare-fun res!1767939 () Bool)

(assert (=> b!4313621 (=> (not res!1767939) (not e!2683079))))

(assert (=> b!4313621 (= res!1767939 (not (containsKey!344 (t!355211 lt!1533173) (_1!26694 (h!53701 lt!1533173)))))))

(declare-fun b!4313622 () Bool)

(assert (=> b!4313622 (= e!2683079 (noDuplicateKeys!235 (t!355211 lt!1533173)))))

(assert (= (and d!1268797 (not res!1767938)) b!4313621))

(assert (= (and b!4313621 res!1767939) b!4313622))

(declare-fun m!4906775 () Bool)

(assert (=> b!4313621 m!4906775))

(declare-fun m!4906777 () Bool)

(assert (=> b!4313622 m!4906777))

(assert (=> b!4313484 d!1268797))

(declare-fun d!1268799 () Bool)

(declare-fun e!2683082 () Bool)

(assert (=> d!1268799 e!2683082))

(declare-fun res!1767945 () Bool)

(assert (=> d!1268799 (=> (not res!1767945) (not e!2683082))))

(declare-fun lt!1533303 () ListLongMap!1069)

(assert (=> d!1268799 (= res!1767945 (contains!10245 lt!1533303 (_1!26695 (tuple2!46827 lt!1533176 lt!1533169))))))

(declare-fun lt!1533304 () List!48381)

(assert (=> d!1268799 (= lt!1533303 (ListLongMap!1070 lt!1533304))))

(declare-fun lt!1533306 () Unit!67431)

(declare-fun lt!1533305 () Unit!67431)

(assert (=> d!1268799 (= lt!1533306 lt!1533305)))

(assert (=> d!1268799 (= (getValueByKey!267 lt!1533304 (_1!26695 (tuple2!46827 lt!1533176 lt!1533169))) (Some!10251 (_2!26695 (tuple2!46827 lt!1533176 lt!1533169))))))

(declare-fun lemmaContainsTupThenGetReturnValue!79 (List!48381 (_ BitVec 64) List!48380) Unit!67431)

(assert (=> d!1268799 (= lt!1533305 (lemmaContainsTupThenGetReturnValue!79 lt!1533304 (_1!26695 (tuple2!46827 lt!1533176 lt!1533169)) (_2!26695 (tuple2!46827 lt!1533176 lt!1533169))))))

(declare-fun insertStrictlySorted!43 (List!48381 (_ BitVec 64) List!48380) List!48381)

(assert (=> d!1268799 (= lt!1533304 (insertStrictlySorted!43 (toList!2456 lt!1533177) (_1!26695 (tuple2!46827 lt!1533176 lt!1533169)) (_2!26695 (tuple2!46827 lt!1533176 lt!1533169))))))

(assert (=> d!1268799 (= (+!285 lt!1533177 (tuple2!46827 lt!1533176 lt!1533169)) lt!1533303)))

(declare-fun b!4313627 () Bool)

(declare-fun res!1767944 () Bool)

(assert (=> b!4313627 (=> (not res!1767944) (not e!2683082))))

(assert (=> b!4313627 (= res!1767944 (= (getValueByKey!267 (toList!2456 lt!1533303) (_1!26695 (tuple2!46827 lt!1533176 lt!1533169))) (Some!10251 (_2!26695 (tuple2!46827 lt!1533176 lt!1533169)))))))

(declare-fun b!4313628 () Bool)

(assert (=> b!4313628 (= e!2683082 (contains!10246 (toList!2456 lt!1533303) (tuple2!46827 lt!1533176 lt!1533169)))))

(assert (= (and d!1268799 res!1767945) b!4313627))

(assert (= (and b!4313627 res!1767944) b!4313628))

(declare-fun m!4906779 () Bool)

(assert (=> d!1268799 m!4906779))

(declare-fun m!4906781 () Bool)

(assert (=> d!1268799 m!4906781))

(declare-fun m!4906783 () Bool)

(assert (=> d!1268799 m!4906783))

(declare-fun m!4906785 () Bool)

(assert (=> d!1268799 m!4906785))

(declare-fun m!4906787 () Bool)

(assert (=> b!4313627 m!4906787))

(declare-fun m!4906789 () Bool)

(assert (=> b!4313628 m!4906789))

(assert (=> b!4313484 d!1268799))

(declare-fun d!1268801 () Bool)

(declare-fun res!1767950 () Bool)

(declare-fun e!2683087 () Bool)

(assert (=> d!1268801 (=> res!1767950 e!2683087)))

(assert (=> d!1268801 (= res!1767950 ((_ is Nil!48257) (toList!2456 lt!1533177)))))

(assert (=> d!1268801 (= (forall!8759 (toList!2456 lt!1533177) lambda!133181) e!2683087)))

(declare-fun b!4313633 () Bool)

(declare-fun e!2683088 () Bool)

(assert (=> b!4313633 (= e!2683087 e!2683088)))

(declare-fun res!1767951 () Bool)

(assert (=> b!4313633 (=> (not res!1767951) (not e!2683088))))

(declare-fun dynLambda!20457 (Int tuple2!46826) Bool)

(assert (=> b!4313633 (= res!1767951 (dynLambda!20457 lambda!133181 (h!53702 (toList!2456 lt!1533177))))))

(declare-fun b!4313634 () Bool)

(assert (=> b!4313634 (= e!2683088 (forall!8759 (t!355212 (toList!2456 lt!1533177)) lambda!133181))))

(assert (= (and d!1268801 (not res!1767950)) b!4313633))

(assert (= (and b!4313633 res!1767951) b!4313634))

(declare-fun b_lambda!126821 () Bool)

(assert (=> (not b_lambda!126821) (not b!4313633)))

(declare-fun m!4906791 () Bool)

(assert (=> b!4313633 m!4906791))

(declare-fun m!4906793 () Bool)

(assert (=> b!4313634 m!4906793))

(assert (=> b!4313484 d!1268801))

(declare-fun bs!605485 () Bool)

(declare-fun d!1268803 () Bool)

(assert (= bs!605485 (and d!1268803 d!1268777)))

(declare-fun lambda!133207 () Int)

(assert (=> bs!605485 (= lambda!133207 lambda!133194)))

(declare-fun bs!605486 () Bool)

(assert (= bs!605486 (and d!1268803 d!1268789)))

(assert (=> bs!605486 (not (= lambda!133207 lambda!133200))))

(declare-fun bs!605487 () Bool)

(assert (= bs!605487 (and d!1268803 d!1268759)))

(assert (=> bs!605487 (not (= lambda!133207 lambda!133184))))

(declare-fun bs!605488 () Bool)

(assert (= bs!605488 (and d!1268803 d!1268769)))

(assert (=> bs!605488 (not (= lambda!133207 lambda!133191))))

(declare-fun bs!605489 () Bool)

(assert (= bs!605489 (and d!1268803 b!4313484)))

(assert (=> bs!605489 (= lambda!133207 lambda!133181)))

(declare-fun bs!605490 () Bool)

(assert (= bs!605490 (and d!1268803 b!4313500)))

(assert (=> bs!605490 (= lambda!133207 lambda!133187)))

(declare-fun bs!605491 () Bool)

(assert (= bs!605491 (and d!1268803 b!4313525)))

(assert (=> bs!605491 (= lambda!133207 lambda!133190)))

(declare-fun e!2683091 () Bool)

(assert (=> d!1268803 e!2683091))

(declare-fun res!1767954 () Bool)

(assert (=> d!1268803 (=> (not res!1767954) (not e!2683091))))

(declare-fun lt!1533312 () ListLongMap!1069)

(assert (=> d!1268803 (= res!1767954 (forall!8759 (toList!2456 lt!1533312) lambda!133207))))

(assert (=> d!1268803 (= lt!1533312 (+!285 lt!1533177 (tuple2!46827 lt!1533176 lt!1533169)))))

(declare-fun lt!1533311 () Unit!67431)

(declare-fun choose!26302 (ListLongMap!1069 (_ BitVec 64) List!48380 Hashable!4609) Unit!67431)

(assert (=> d!1268803 (= lt!1533311 (choose!26302 lt!1533177 lt!1533176 lt!1533169 (hashF!6775 thiss!42308)))))

(assert (=> d!1268803 (forall!8759 (toList!2456 lt!1533177) lambda!133207)))

(assert (=> d!1268803 (= (lemmaChangeOneBucketByAValidOnePreservesForallNoDuplicatesAndHash!157 lt!1533177 lt!1533176 lt!1533169 (hashF!6775 thiss!42308)) lt!1533311)))

(declare-fun b!4313637 () Bool)

(assert (=> b!4313637 (= e!2683091 (allKeysSameHashInMap!355 lt!1533312 (hashF!6775 thiss!42308)))))

(assert (= (and d!1268803 res!1767954) b!4313637))

(declare-fun m!4906795 () Bool)

(assert (=> d!1268803 m!4906795))

(assert (=> d!1268803 m!4906621))

(declare-fun m!4906797 () Bool)

(assert (=> d!1268803 m!4906797))

(declare-fun m!4906799 () Bool)

(assert (=> d!1268803 m!4906799))

(declare-fun m!4906801 () Bool)

(assert (=> b!4313637 m!4906801))

(assert (=> b!4313484 d!1268803))

(declare-fun d!1268805 () Bool)

(assert (=> d!1268805 (noDuplicateKeys!235 (removePairForKey!234 lt!1533174 key!2048))))

(declare-fun lt!1533315 () Unit!67431)

(declare-fun choose!26303 (List!48380 K!9479) Unit!67431)

(assert (=> d!1268805 (= lt!1533315 (choose!26303 lt!1533174 key!2048))))

(assert (=> d!1268805 (noDuplicateKeys!235 lt!1533174)))

(assert (=> d!1268805 (= (lemmaRemovePairForKeyPreservesNoDuplicateKeys!183 lt!1533174 key!2048) lt!1533315)))

(declare-fun bs!605492 () Bool)

(assert (= bs!605492 d!1268805))

(assert (=> bs!605492 m!4906595))

(assert (=> bs!605492 m!4906595))

(declare-fun m!4906803 () Bool)

(assert (=> bs!605492 m!4906803))

(declare-fun m!4906805 () Bool)

(assert (=> bs!605492 m!4906805))

(assert (=> bs!605492 m!4906749))

(assert (=> b!4313484 d!1268805))

(declare-fun d!1268807 () Bool)

(declare-fun res!1767955 () Bool)

(declare-fun e!2683092 () Bool)

(assert (=> d!1268807 (=> res!1767955 e!2683092)))

(assert (=> d!1268807 (= res!1767955 ((_ is Nil!48257) (toList!2456 lt!1533170)))))

(assert (=> d!1268807 (= (forall!8759 (toList!2456 lt!1533170) lambda!133181) e!2683092)))

(declare-fun b!4313638 () Bool)

(declare-fun e!2683093 () Bool)

(assert (=> b!4313638 (= e!2683092 e!2683093)))

(declare-fun res!1767956 () Bool)

(assert (=> b!4313638 (=> (not res!1767956) (not e!2683093))))

(assert (=> b!4313638 (= res!1767956 (dynLambda!20457 lambda!133181 (h!53702 (toList!2456 lt!1533170))))))

(declare-fun b!4313639 () Bool)

(assert (=> b!4313639 (= e!2683093 (forall!8759 (t!355212 (toList!2456 lt!1533170)) lambda!133181))))

(assert (= (and d!1268807 (not res!1767955)) b!4313638))

(assert (= (and b!4313638 res!1767956) b!4313639))

(declare-fun b_lambda!126823 () Bool)

(assert (=> (not b_lambda!126823) (not b!4313638)))

(declare-fun m!4906807 () Bool)

(assert (=> b!4313638 m!4906807))

(declare-fun m!4906809 () Bool)

(assert (=> b!4313639 m!4906809))

(assert (=> b!4313484 d!1268807))

(declare-fun d!1268809 () Bool)

(declare-fun res!1767957 () Bool)

(declare-fun e!2683094 () Bool)

(assert (=> d!1268809 (=> res!1767957 e!2683094)))

(assert (=> d!1268809 (= res!1767957 (not ((_ is Cons!48256) lt!1533169)))))

(assert (=> d!1268809 (= (noDuplicateKeys!235 lt!1533169) e!2683094)))

(declare-fun b!4313640 () Bool)

(declare-fun e!2683095 () Bool)

(assert (=> b!4313640 (= e!2683094 e!2683095)))

(declare-fun res!1767958 () Bool)

(assert (=> b!4313640 (=> (not res!1767958) (not e!2683095))))

(assert (=> b!4313640 (= res!1767958 (not (containsKey!344 (t!355211 lt!1533169) (_1!26694 (h!53701 lt!1533169)))))))

(declare-fun b!4313641 () Bool)

(assert (=> b!4313641 (= e!2683095 (noDuplicateKeys!235 (t!355211 lt!1533169)))))

(assert (= (and d!1268809 (not res!1767957)) b!4313640))

(assert (= (and b!4313640 res!1767958) b!4313641))

(declare-fun m!4906811 () Bool)

(assert (=> b!4313640 m!4906811))

(declare-fun m!4906813 () Bool)

(assert (=> b!4313641 m!4906813))

(assert (=> b!4313480 d!1268809))

(declare-fun d!1268811 () Bool)

(declare-fun res!1767963 () Bool)

(declare-fun e!2683100 () Bool)

(assert (=> d!1268811 (=> res!1767963 e!2683100)))

(assert (=> d!1268811 (= res!1767963 (and ((_ is Cons!48256) lt!1533173) (= (_1!26694 (h!53701 lt!1533173)) key!2048)))))

(assert (=> d!1268811 (= (containsKey!344 lt!1533173 key!2048) e!2683100)))

(declare-fun b!4313646 () Bool)

(declare-fun e!2683101 () Bool)

(assert (=> b!4313646 (= e!2683100 e!2683101)))

(declare-fun res!1767964 () Bool)

(assert (=> b!4313646 (=> (not res!1767964) (not e!2683101))))

(assert (=> b!4313646 (= res!1767964 ((_ is Cons!48256) lt!1533173))))

(declare-fun b!4313647 () Bool)

(assert (=> b!4313647 (= e!2683101 (containsKey!344 (t!355211 lt!1533173) key!2048))))

(assert (= (and d!1268811 (not res!1767963)) b!4313646))

(assert (= (and b!4313646 res!1767964) b!4313647))

(declare-fun m!4906815 () Bool)

(assert (=> b!4313647 m!4906815))

(assert (=> b!4313489 d!1268811))

(declare-fun tp!1325345 () Bool)

(declare-fun e!2683104 () Bool)

(declare-fun b!4313652 () Bool)

(assert (=> b!4313652 (= e!2683104 (and tp_is_empty!23877 tp_is_empty!23879 tp!1325345))))

(assert (=> b!4313491 (= tp!1325341 e!2683104)))

(assert (= (and b!4313491 ((_ is Cons!48256) (zeroValue!4952 (v!42475 (underlying!9615 (v!42476 (underlying!9616 thiss!42308))))))) b!4313652))

(declare-fun b!4313653 () Bool)

(declare-fun tp!1325346 () Bool)

(declare-fun e!2683105 () Bool)

(assert (=> b!4313653 (= e!2683105 (and tp_is_empty!23877 tp_is_empty!23879 tp!1325346))))

(assert (=> b!4313491 (= tp!1325338 e!2683105)))

(assert (= (and b!4313491 ((_ is Cons!48256) (minValue!4952 (v!42475 (underlying!9615 (v!42476 (underlying!9616 thiss!42308))))))) b!4313653))

(declare-fun condMapEmpty!20947 () Bool)

(declare-fun mapDefault!20947 () List!48380)

(assert (=> mapNonEmpty!20944 (= condMapEmpty!20947 (= mapRest!20944 ((as const (Array (_ BitVec 32) List!48380)) mapDefault!20947)))))

(declare-fun e!2683110 () Bool)

(declare-fun mapRes!20947 () Bool)

(assert (=> mapNonEmpty!20944 (= tp!1325340 (and e!2683110 mapRes!20947))))

(declare-fun mapNonEmpty!20947 () Bool)

(declare-fun tp!1325354 () Bool)

(declare-fun e!2683111 () Bool)

(assert (=> mapNonEmpty!20947 (= mapRes!20947 (and tp!1325354 e!2683111))))

(declare-fun mapValue!20947 () List!48380)

(declare-fun mapKey!20947 () (_ BitVec 32))

(declare-fun mapRest!20947 () (Array (_ BitVec 32) List!48380))

(assert (=> mapNonEmpty!20947 (= mapRest!20944 (store mapRest!20947 mapKey!20947 mapValue!20947))))

(declare-fun tp!1325355 () Bool)

(declare-fun b!4313660 () Bool)

(assert (=> b!4313660 (= e!2683111 (and tp_is_empty!23877 tp_is_empty!23879 tp!1325355))))

(declare-fun mapIsEmpty!20947 () Bool)

(assert (=> mapIsEmpty!20947 mapRes!20947))

(declare-fun b!4313661 () Bool)

(declare-fun tp!1325353 () Bool)

(assert (=> b!4313661 (= e!2683110 (and tp_is_empty!23877 tp_is_empty!23879 tp!1325353))))

(assert (= (and mapNonEmpty!20944 condMapEmpty!20947) mapIsEmpty!20947))

(assert (= (and mapNonEmpty!20944 (not condMapEmpty!20947)) mapNonEmpty!20947))

(assert (= (and mapNonEmpty!20947 ((_ is Cons!48256) mapValue!20947)) b!4313660))

(assert (= (and mapNonEmpty!20944 ((_ is Cons!48256) mapDefault!20947)) b!4313661))

(declare-fun m!4906817 () Bool)

(assert (=> mapNonEmpty!20947 m!4906817))

(declare-fun tp!1325356 () Bool)

(declare-fun b!4313662 () Bool)

(declare-fun e!2683112 () Bool)

(assert (=> b!4313662 (= e!2683112 (and tp_is_empty!23877 tp_is_empty!23879 tp!1325356))))

(assert (=> mapNonEmpty!20944 (= tp!1325339 e!2683112)))

(assert (= (and mapNonEmpty!20944 ((_ is Cons!48256) mapValue!20944)) b!4313662))

(declare-fun b!4313663 () Bool)

(declare-fun tp!1325357 () Bool)

(declare-fun e!2683113 () Bool)

(assert (=> b!4313663 (= e!2683113 (and tp_is_empty!23877 tp_is_empty!23879 tp!1325357))))

(assert (=> b!4313492 (= tp!1325337 e!2683113)))

(assert (= (and b!4313492 ((_ is Cons!48256) mapDefault!20944)) b!4313663))

(declare-fun b_lambda!126825 () Bool)

(assert (= b_lambda!126823 (or b!4313484 b_lambda!126825)))

(declare-fun bs!605493 () Bool)

(declare-fun d!1268813 () Bool)

(assert (= bs!605493 (and d!1268813 b!4313484)))

(assert (=> bs!605493 (= (dynLambda!20457 lambda!133181 (h!53702 (toList!2456 lt!1533170))) (noDuplicateKeys!235 (_2!26695 (h!53702 (toList!2456 lt!1533170)))))))

(declare-fun m!4906819 () Bool)

(assert (=> bs!605493 m!4906819))

(assert (=> b!4313638 d!1268813))

(declare-fun b_lambda!126827 () Bool)

(assert (= b_lambda!126821 (or b!4313484 b_lambda!126827)))

(declare-fun bs!605494 () Bool)

(declare-fun d!1268815 () Bool)

(assert (= bs!605494 (and d!1268815 b!4313484)))

(assert (=> bs!605494 (= (dynLambda!20457 lambda!133181 (h!53702 (toList!2456 lt!1533177))) (noDuplicateKeys!235 (_2!26695 (h!53702 (toList!2456 lt!1533177)))))))

(declare-fun m!4906821 () Bool)

(assert (=> bs!605494 m!4906821))

(assert (=> b!4313633 d!1268815))

(declare-fun b_lambda!126829 () Bool)

(assert (= b_lambda!126819 (or (and b!4313491 b_free!128731) b_lambda!126829)))

(check-sat (not b!4313609) (not b!4313534) (not b_lambda!126827) (not b!4313593) (not d!1268793) (not d!1268763) (not bs!605494) (not bm!298385) (not b!4313501) b_and!340197 (not d!1268803) (not b!4313556) (not b!4313596) (not bm!298381) (not d!1268795) (not d!1268785) (not b!4313561) (not bm!298394) (not b!4313637) (not b!4313647) tp_is_empty!23879 (not b!4313627) (not d!1268791) (not bs!605493) (not d!1268777) (not b!4313500) (not b!4313661) (not bm!298383) (not d!1268759) (not d!1268775) (not b!4313621) (not tb!257317) (not b!4313566) (not b!4313641) (not b!4313558) (not bm!298395) (not bm!298389) (not bm!298384) (not b!4313615) (not b!4313628) (not bm!298386) (not b!4313527) (not d!1268789) (not b!4313524) (not b!4313639) tp_is_empty!23877 (not b!4313660) (not b!4313622) (not b!4313653) (not b!4313529) (not b_lambda!126825) (not b!4313634) (not b!4313640) (not d!1268805) (not d!1268765) (not d!1268783) (not b!4313652) (not b!4313663) (not b!4313557) (not d!1268787) (not d!1268761) (not b!4313662) (not d!1268767) (not b_lambda!126829) (not b!4313592) b_and!340199 (not b!4313555) (not b!4313591) (not b_next!129437) (not b_next!129435) (not d!1268781) (not b!4313554) (not d!1268799) (not b!4313590) (not b!4313525) (not b!4313553) (not mapNonEmpty!20947) (not d!1268779) (not bm!298382) (not d!1268769))
(check-sat b_and!340199 b_and!340197 (not b_next!129437) (not b_next!129435))
