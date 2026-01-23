; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!415134 () Bool)

(assert start!415134)

(declare-fun b!4315613 () Bool)

(declare-fun b_free!128811 () Bool)

(declare-fun b_next!129515 () Bool)

(assert (=> b!4315613 (= b_free!128811 (not b_next!129515))))

(declare-fun tp!1325862 () Bool)

(declare-fun b_and!340289 () Bool)

(assert (=> b!4315613 (= tp!1325862 b_and!340289)))

(declare-fun b!4315609 () Bool)

(declare-fun b_free!128813 () Bool)

(declare-fun b_next!129517 () Bool)

(assert (=> b!4315609 (= b_free!128813 (not b_next!129517))))

(declare-fun tp!1325867 () Bool)

(declare-fun b_and!340291 () Bool)

(assert (=> b!4315609 (= tp!1325867 b_and!340291)))

(declare-fun res!1768893 () Bool)

(declare-fun e!2684546 () Bool)

(assert (=> start!415134 (=> (not res!1768893) (not e!2684546))))

(declare-datatypes ((V!9731 0))(
  ( (V!9732 (val!15881 Int)) )
))
(declare-datatypes ((K!9529 0))(
  ( (K!9530 (val!15882 Int)) )
))
(declare-datatypes ((tuple2!46940 0))(
  ( (tuple2!46941 (_1!26752 K!9529) (_2!26752 V!9731)) )
))
(declare-datatypes ((List!48422 0))(
  ( (Nil!48298) (Cons!48298 (h!53750 tuple2!46940) (t!355267 List!48422)) )
))
(declare-datatypes ((array!17048 0))(
  ( (array!17049 (arr!7611 (Array (_ BitVec 32) (_ BitVec 64))) (size!35650 (_ BitVec 32))) )
))
(declare-datatypes ((Hashable!4629 0))(
  ( (HashableExt!4628 (__x!30164 Int)) )
))
(declare-datatypes ((array!17050 0))(
  ( (array!17051 (arr!7612 (Array (_ BitVec 32) List!48422)) (size!35651 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!9426 0))(
  ( (LongMapFixedSize!9427 (defaultEntry!5098 Int) (mask!13298 (_ BitVec 32)) (extraKeys!4962 (_ BitVec 32)) (zeroValue!4972 List!48422) (minValue!4972 List!48422) (_size!9469 (_ BitVec 32)) (_keys!5013 array!17048) (_values!4994 array!17050) (_vacant!4774 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!18661 0))(
  ( (Cell!18662 (v!42566 LongMapFixedSize!9426)) )
))
(declare-datatypes ((MutLongMap!4713 0))(
  ( (LongMap!4713 (underlying!9655 Cell!18661)) (MutLongMapExt!4712 (__x!30165 Int)) )
))
(declare-datatypes ((Cell!18663 0))(
  ( (Cell!18664 (v!42567 MutLongMap!4713)) )
))
(declare-datatypes ((MutableMap!4619 0))(
  ( (MutableMapExt!4618 (__x!30166 Int)) (HashMap!4619 (underlying!9656 Cell!18663) (hashF!6834 Hashable!4629) (_size!9470 (_ BitVec 32)) (defaultValue!4790 Int)) )
))
(declare-fun thiss!42308 () MutableMap!4619)

(get-info :version)

(assert (=> start!415134 (= res!1768893 ((_ is HashMap!4619) thiss!42308))))

(assert (=> start!415134 e!2684546))

(declare-fun e!2684547 () Bool)

(assert (=> start!415134 e!2684547))

(declare-fun tp_is_empty!23957 () Bool)

(assert (=> start!415134 tp_is_empty!23957))

(declare-fun tp_is_empty!23959 () Bool)

(assert (=> start!415134 tp_is_empty!23959))

(declare-fun b!4315604 () Bool)

(declare-fun e!2684541 () Bool)

(declare-datatypes ((tuple2!46942 0))(
  ( (tuple2!46943 (_1!26753 Bool) (_2!26753 MutLongMap!4713)) )
))
(declare-fun lt!1535193 () tuple2!46942)

(declare-fun valid!3712 (MutableMap!4619) Bool)

(assert (=> b!4315604 (= e!2684541 (not (valid!3712 (HashMap!4619 (Cell!18664 (_2!26753 lt!1535193)) (hashF!6834 thiss!42308) (_size!9470 thiss!42308) (defaultValue!4790 thiss!42308)))))))

(declare-fun b!4315605 () Bool)

(declare-fun e!2684540 () Bool)

(declare-fun e!2684542 () Bool)

(assert (=> b!4315605 (= e!2684540 e!2684542)))

(declare-fun b!4315606 () Bool)

(declare-fun e!2684545 () Bool)

(assert (=> b!4315606 (= e!2684546 e!2684545)))

(declare-fun res!1768894 () Bool)

(assert (=> b!4315606 (=> (not res!1768894) (not e!2684545))))

(declare-fun key!2048 () K!9529)

(declare-fun contains!10306 (MutableMap!4619 K!9529) Bool)

(assert (=> b!4315606 (= res!1768894 (contains!10306 thiss!42308 key!2048))))

(declare-datatypes ((tuple2!46944 0))(
  ( (tuple2!46945 (_1!26754 (_ BitVec 64)) (_2!26754 List!48422)) )
))
(declare-datatypes ((List!48423 0))(
  ( (Nil!48299) (Cons!48299 (h!53751 tuple2!46944) (t!355268 List!48423)) )
))
(declare-datatypes ((ListLongMap!1101 0))(
  ( (ListLongMap!1102 (toList!2487 List!48423)) )
))
(declare-fun lt!1535191 () ListLongMap!1101)

(declare-fun map!10309 (MutLongMap!4713) ListLongMap!1101)

(assert (=> b!4315606 (= lt!1535191 (map!10309 (v!42567 (underlying!9656 thiss!42308))))))

(declare-datatypes ((ListMap!1767 0))(
  ( (ListMap!1768 (toList!2488 List!48422)) )
))
(declare-fun lt!1535194 () ListMap!1767)

(declare-fun map!10310 (MutableMap!4619) ListMap!1767)

(assert (=> b!4315606 (= lt!1535194 (map!10310 thiss!42308))))

(declare-fun b!4315607 () Bool)

(declare-fun res!1768892 () Bool)

(assert (=> b!4315607 (=> (not res!1768892) (not e!2684546))))

(assert (=> b!4315607 (= res!1768892 (valid!3712 thiss!42308))))

(declare-fun b!4315608 () Bool)

(declare-fun e!2684549 () Bool)

(declare-fun e!2684544 () Bool)

(declare-fun lt!1535190 () MutLongMap!4713)

(assert (=> b!4315608 (= e!2684549 (and e!2684544 ((_ is LongMap!4713) lt!1535190)))))

(assert (=> b!4315608 (= lt!1535190 (v!42567 (underlying!9656 thiss!42308)))))

(assert (=> b!4315609 (= e!2684547 (and e!2684549 tp!1325867))))

(declare-fun mapIsEmpty!21025 () Bool)

(declare-fun mapRes!21025 () Bool)

(assert (=> mapIsEmpty!21025 mapRes!21025))

(declare-fun b!4315610 () Bool)

(declare-fun e!2684543 () Bool)

(declare-fun tp!1325861 () Bool)

(assert (=> b!4315610 (= e!2684543 (and tp!1325861 mapRes!21025))))

(declare-fun condMapEmpty!21025 () Bool)

(declare-fun mapDefault!21025 () List!48422)

(assert (=> b!4315610 (= condMapEmpty!21025 (= (arr!7612 (_values!4994 (v!42566 (underlying!9655 (v!42567 (underlying!9656 thiss!42308)))))) ((as const (Array (_ BitVec 32) List!48422)) mapDefault!21025)))))

(declare-fun b!4315611 () Bool)

(assert (=> b!4315611 (= e!2684544 e!2684540)))

(declare-fun b!4315612 () Bool)

(assert (=> b!4315612 (= e!2684545 e!2684541)))

(declare-fun res!1768891 () Bool)

(assert (=> b!4315612 (=> (not res!1768891) (not e!2684541))))

(assert (=> b!4315612 (= res!1768891 (not (_1!26753 lt!1535193)))))

(declare-fun lt!1535192 () (_ BitVec 64))

(declare-fun v!9179 () V!9731)

(declare-fun update!489 (MutLongMap!4713 (_ BitVec 64) List!48422) tuple2!46942)

(declare-fun removePairForKey!248 (List!48422 K!9529) List!48422)

(declare-fun apply!11086 (MutLongMap!4713 (_ BitVec 64)) List!48422)

(assert (=> b!4315612 (= lt!1535193 (update!489 (v!42567 (underlying!9656 thiss!42308)) lt!1535192 (Cons!48298 (tuple2!46941 key!2048 v!9179) (removePairForKey!248 (apply!11086 (v!42567 (underlying!9656 thiss!42308)) lt!1535192) key!2048))))))

(declare-fun hash!1111 (Hashable!4629 K!9529) (_ BitVec 64))

(assert (=> b!4315612 (= lt!1535192 (hash!1111 (hashF!6834 thiss!42308) key!2048))))

(declare-fun tp!1325863 () Bool)

(declare-fun tp!1325865 () Bool)

(declare-fun array_inv!5473 (array!17048) Bool)

(declare-fun array_inv!5474 (array!17050) Bool)

(assert (=> b!4315613 (= e!2684542 (and tp!1325862 tp!1325865 tp!1325863 (array_inv!5473 (_keys!5013 (v!42566 (underlying!9655 (v!42567 (underlying!9656 thiss!42308)))))) (array_inv!5474 (_values!4994 (v!42566 (underlying!9655 (v!42567 (underlying!9656 thiss!42308)))))) e!2684543))))

(declare-fun mapNonEmpty!21025 () Bool)

(declare-fun tp!1325864 () Bool)

(declare-fun tp!1325866 () Bool)

(assert (=> mapNonEmpty!21025 (= mapRes!21025 (and tp!1325864 tp!1325866))))

(declare-fun mapValue!21025 () List!48422)

(declare-fun mapKey!21025 () (_ BitVec 32))

(declare-fun mapRest!21025 () (Array (_ BitVec 32) List!48422))

(assert (=> mapNonEmpty!21025 (= (arr!7612 (_values!4994 (v!42566 (underlying!9655 (v!42567 (underlying!9656 thiss!42308)))))) (store mapRest!21025 mapKey!21025 mapValue!21025))))

(assert (= (and start!415134 res!1768893) b!4315607))

(assert (= (and b!4315607 res!1768892) b!4315606))

(assert (= (and b!4315606 res!1768894) b!4315612))

(assert (= (and b!4315612 res!1768891) b!4315604))

(assert (= (and b!4315610 condMapEmpty!21025) mapIsEmpty!21025))

(assert (= (and b!4315610 (not condMapEmpty!21025)) mapNonEmpty!21025))

(assert (= b!4315613 b!4315610))

(assert (= b!4315605 b!4315613))

(assert (= b!4315611 b!4315605))

(assert (= (and b!4315608 ((_ is LongMap!4713) (v!42567 (underlying!9656 thiss!42308)))) b!4315611))

(assert (= b!4315609 b!4315608))

(assert (= (and start!415134 ((_ is HashMap!4619) thiss!42308)) b!4315609))

(declare-fun m!4909473 () Bool)

(assert (=> b!4315612 m!4909473))

(assert (=> b!4315612 m!4909473))

(declare-fun m!4909475 () Bool)

(assert (=> b!4315612 m!4909475))

(declare-fun m!4909477 () Bool)

(assert (=> b!4315612 m!4909477))

(declare-fun m!4909479 () Bool)

(assert (=> b!4315612 m!4909479))

(declare-fun m!4909481 () Bool)

(assert (=> b!4315613 m!4909481))

(declare-fun m!4909483 () Bool)

(assert (=> b!4315613 m!4909483))

(declare-fun m!4909485 () Bool)

(assert (=> b!4315604 m!4909485))

(declare-fun m!4909487 () Bool)

(assert (=> b!4315606 m!4909487))

(declare-fun m!4909489 () Bool)

(assert (=> b!4315606 m!4909489))

(declare-fun m!4909491 () Bool)

(assert (=> b!4315606 m!4909491))

(declare-fun m!4909493 () Bool)

(assert (=> b!4315607 m!4909493))

(declare-fun m!4909495 () Bool)

(assert (=> mapNonEmpty!21025 m!4909495))

(check-sat (not b!4315604) (not b!4315606) (not b_next!129517) (not b_next!129515) b_and!340291 (not b!4315610) (not mapNonEmpty!21025) (not b!4315612) tp_is_empty!23959 b_and!340289 (not b!4315607) (not b!4315613) tp_is_empty!23957)
(check-sat b_and!340289 b_and!340291 (not b_next!129517) (not b_next!129515))
(get-model)

(declare-fun d!1269243 () Bool)

(declare-fun res!1768899 () Bool)

(declare-fun e!2684552 () Bool)

(assert (=> d!1269243 (=> (not res!1768899) (not e!2684552))))

(declare-fun valid!3713 (MutLongMap!4713) Bool)

(assert (=> d!1269243 (= res!1768899 (valid!3713 (v!42567 (underlying!9656 thiss!42308))))))

(assert (=> d!1269243 (= (valid!3712 thiss!42308) e!2684552)))

(declare-fun b!4315618 () Bool)

(declare-fun res!1768900 () Bool)

(assert (=> b!4315618 (=> (not res!1768900) (not e!2684552))))

(declare-fun lambda!133466 () Int)

(declare-fun forall!8780 (List!48423 Int) Bool)

(assert (=> b!4315618 (= res!1768900 (forall!8780 (toList!2487 (map!10309 (v!42567 (underlying!9656 thiss!42308)))) lambda!133466))))

(declare-fun b!4315619 () Bool)

(declare-fun allKeysSameHashInMap!369 (ListLongMap!1101 Hashable!4629) Bool)

(assert (=> b!4315619 (= e!2684552 (allKeysSameHashInMap!369 (map!10309 (v!42567 (underlying!9656 thiss!42308))) (hashF!6834 thiss!42308)))))

(assert (= (and d!1269243 res!1768899) b!4315618))

(assert (= (and b!4315618 res!1768900) b!4315619))

(declare-fun m!4909497 () Bool)

(assert (=> d!1269243 m!4909497))

(assert (=> b!4315618 m!4909489))

(declare-fun m!4909499 () Bool)

(assert (=> b!4315618 m!4909499))

(assert (=> b!4315619 m!4909489))

(assert (=> b!4315619 m!4909489))

(declare-fun m!4909501 () Bool)

(assert (=> b!4315619 m!4909501))

(assert (=> b!4315607 d!1269243))

(declare-fun bs!605836 () Bool)

(declare-fun b!4315642 () Bool)

(assert (= bs!605836 (and b!4315642 b!4315618)))

(declare-fun lambda!133469 () Int)

(assert (=> bs!605836 (= lambda!133469 lambda!133466)))

(declare-datatypes ((Unit!67514 0))(
  ( (Unit!67515) )
))
(declare-fun e!2684570 () Unit!67514)

(declare-fun lt!1535252 () (_ BitVec 64))

(declare-fun forallContained!1518 (List!48423 Int tuple2!46944) Unit!67514)

(assert (=> b!4315642 (= e!2684570 (forallContained!1518 (toList!2487 (map!10309 (v!42567 (underlying!9656 thiss!42308)))) lambda!133469 (tuple2!46945 lt!1535252 (apply!11086 (v!42567 (underlying!9656 thiss!42308)) lt!1535252))))))

(declare-fun c!733679 () Bool)

(declare-fun contains!10307 (List!48423 tuple2!46944) Bool)

(assert (=> b!4315642 (= c!733679 (not (contains!10307 (toList!2487 (map!10309 (v!42567 (underlying!9656 thiss!42308)))) (tuple2!46945 lt!1535252 (apply!11086 (v!42567 (underlying!9656 thiss!42308)) lt!1535252)))))))

(declare-fun lt!1535240 () Unit!67514)

(declare-fun e!2684567 () Unit!67514)

(assert (=> b!4315642 (= lt!1535240 e!2684567)))

(declare-fun b!4315644 () Bool)

(declare-fun e!2684569 () Unit!67514)

(declare-fun e!2684573 () Unit!67514)

(assert (=> b!4315644 (= e!2684569 e!2684573)))

(declare-fun res!1768909 () Bool)

(declare-fun call!298580 () Bool)

(assert (=> b!4315644 (= res!1768909 call!298580)))

(declare-fun e!2684568 () Bool)

(assert (=> b!4315644 (=> (not res!1768909) (not e!2684568))))

(declare-fun c!733680 () Bool)

(assert (=> b!4315644 (= c!733680 e!2684568)))

(declare-fun b!4315645 () Bool)

(declare-fun Unit!67516 () Unit!67514)

(assert (=> b!4315645 (= e!2684567 Unit!67516)))

(declare-fun b!4315646 () Bool)

(assert (=> b!4315646 false))

(declare-fun lt!1535253 () Unit!67514)

(declare-fun lt!1535241 () Unit!67514)

(assert (=> b!4315646 (= lt!1535253 lt!1535241)))

(declare-fun lt!1535236 () List!48423)

(declare-fun lt!1535235 () List!48422)

(assert (=> b!4315646 (contains!10307 lt!1535236 (tuple2!46945 lt!1535252 lt!1535235))))

(declare-fun lemmaGetValueByKeyImpliesContainsTuple!162 (List!48423 (_ BitVec 64) List!48422) Unit!67514)

(assert (=> b!4315646 (= lt!1535241 (lemmaGetValueByKeyImpliesContainsTuple!162 lt!1535236 lt!1535252 lt!1535235))))

(assert (=> b!4315646 (= lt!1535235 (apply!11086 (v!42567 (underlying!9656 thiss!42308)) lt!1535252))))

(assert (=> b!4315646 (= lt!1535236 (toList!2487 (map!10309 (v!42567 (underlying!9656 thiss!42308)))))))

(declare-fun lt!1535244 () Unit!67514)

(declare-fun lt!1535251 () Unit!67514)

(assert (=> b!4315646 (= lt!1535244 lt!1535251)))

(declare-fun lt!1535250 () List!48423)

(declare-datatypes ((Option!10272 0))(
  ( (None!10271) (Some!10271 (v!42572 List!48422)) )
))
(declare-fun isDefined!7573 (Option!10272) Bool)

(declare-fun getValueByKey!281 (List!48423 (_ BitVec 64)) Option!10272)

(assert (=> b!4315646 (isDefined!7573 (getValueByKey!281 lt!1535250 lt!1535252))))

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!200 (List!48423 (_ BitVec 64)) Unit!67514)

(assert (=> b!4315646 (= lt!1535251 (lemmaContainsKeyImpliesGetValueByKeyDefined!200 lt!1535250 lt!1535252))))

(assert (=> b!4315646 (= lt!1535250 (toList!2487 (map!10309 (v!42567 (underlying!9656 thiss!42308)))))))

(declare-fun lt!1535239 () Unit!67514)

(declare-fun lt!1535238 () Unit!67514)

(assert (=> b!4315646 (= lt!1535239 lt!1535238)))

(declare-fun lt!1535248 () List!48423)

(declare-fun containsKey!371 (List!48423 (_ BitVec 64)) Bool)

(assert (=> b!4315646 (containsKey!371 lt!1535248 lt!1535252)))

(declare-fun lemmaGetValueByKeyIsDefinedImpliesContainsKey!151 (List!48423 (_ BitVec 64)) Unit!67514)

(assert (=> b!4315646 (= lt!1535238 (lemmaGetValueByKeyIsDefinedImpliesContainsKey!151 lt!1535248 lt!1535252))))

(assert (=> b!4315646 (= lt!1535248 (toList!2487 (map!10309 (v!42567 (underlying!9656 thiss!42308)))))))

(declare-fun Unit!67517 () Unit!67514)

(assert (=> b!4315646 (= e!2684567 Unit!67517)))

(declare-fun b!4315647 () Bool)

(declare-fun lt!1535243 () Unit!67514)

(assert (=> b!4315647 (= e!2684569 lt!1535243)))

(declare-fun lt!1535249 () ListLongMap!1101)

(declare-fun call!298579 () ListLongMap!1101)

(assert (=> b!4315647 (= lt!1535249 call!298579)))

(declare-fun lemmaInGenericMapThenInLongMap!150 (ListLongMap!1101 K!9529 Hashable!4629) Unit!67514)

(assert (=> b!4315647 (= lt!1535243 (lemmaInGenericMapThenInLongMap!150 lt!1535249 key!2048 (hashF!6834 thiss!42308)))))

(declare-fun res!1768907 () Bool)

(assert (=> b!4315647 (= res!1768907 call!298580)))

(declare-fun e!2684572 () Bool)

(assert (=> b!4315647 (=> (not res!1768907) (not e!2684572))))

(assert (=> b!4315647 e!2684572))

(declare-fun bm!298570 () Bool)

(assert (=> bm!298570 (= call!298579 (map!10309 (v!42567 (underlying!9656 thiss!42308))))))

(declare-fun b!4315648 () Bool)

(declare-fun Unit!67518 () Unit!67514)

(assert (=> b!4315648 (= e!2684570 Unit!67518)))

(declare-fun bm!298571 () Bool)

(declare-datatypes ((Option!10273 0))(
  ( (None!10272) (Some!10272 (v!42573 tuple2!46940)) )
))
(declare-fun call!298578 () Option!10273)

(declare-fun call!298576 () List!48422)

(declare-fun getPair!150 (List!48422 K!9529) Option!10273)

(assert (=> bm!298571 (= call!298578 (getPair!150 call!298576 key!2048))))

(declare-fun b!4315649 () Bool)

(declare-fun call!298575 () Bool)

(assert (=> b!4315649 (= e!2684568 call!298575)))

(declare-fun call!298577 () (_ BitVec 64))

(declare-fun bm!298572 () Bool)

(declare-fun c!733682 () Bool)

(declare-fun apply!11087 (ListLongMap!1101 (_ BitVec 64)) List!48422)

(assert (=> bm!298572 (= call!298576 (apply!11087 (ite c!733682 lt!1535249 call!298579) call!298577))))

(declare-fun d!1269245 () Bool)

(declare-fun lt!1535254 () Bool)

(declare-fun contains!10308 (ListMap!1767 K!9529) Bool)

(assert (=> d!1269245 (= lt!1535254 (contains!10308 (map!10310 thiss!42308) key!2048))))

(declare-fun e!2684571 () Bool)

(assert (=> d!1269245 (= lt!1535254 e!2684571)))

(declare-fun res!1768908 () Bool)

(assert (=> d!1269245 (=> (not res!1768908) (not e!2684571))))

(declare-fun contains!10309 (MutLongMap!4713 (_ BitVec 64)) Bool)

(assert (=> d!1269245 (= res!1768908 (contains!10309 (v!42567 (underlying!9656 thiss!42308)) lt!1535252))))

(declare-fun lt!1535245 () Unit!67514)

(assert (=> d!1269245 (= lt!1535245 e!2684569)))

(declare-fun extractMap!353 (List!48423) ListMap!1767)

(assert (=> d!1269245 (= c!733682 (contains!10308 (extractMap!353 (toList!2487 (map!10309 (v!42567 (underlying!9656 thiss!42308))))) key!2048))))

(declare-fun lt!1535242 () Unit!67514)

(assert (=> d!1269245 (= lt!1535242 e!2684570)))

(declare-fun c!733681 () Bool)

(assert (=> d!1269245 (= c!733681 (contains!10309 (v!42567 (underlying!9656 thiss!42308)) lt!1535252))))

(assert (=> d!1269245 (= lt!1535252 (hash!1111 (hashF!6834 thiss!42308) key!2048))))

(assert (=> d!1269245 (valid!3712 thiss!42308)))

(assert (=> d!1269245 (= (contains!10306 thiss!42308 key!2048) lt!1535254)))

(declare-fun b!4315643 () Bool)

(assert (=> b!4315643 (= e!2684572 call!298575)))

(declare-fun b!4315650 () Bool)

(assert (=> b!4315650 false))

(declare-fun lt!1535246 () Unit!67514)

(declare-fun lt!1535247 () Unit!67514)

(assert (=> b!4315650 (= lt!1535246 lt!1535247)))

(declare-fun lt!1535237 () ListLongMap!1101)

(assert (=> b!4315650 (contains!10308 (extractMap!353 (toList!2487 lt!1535237)) key!2048)))

(declare-fun lemmaInLongMapThenInGenericMap!150 (ListLongMap!1101 K!9529 Hashable!4629) Unit!67514)

(assert (=> b!4315650 (= lt!1535247 (lemmaInLongMapThenInGenericMap!150 lt!1535237 key!2048 (hashF!6834 thiss!42308)))))

(assert (=> b!4315650 (= lt!1535237 call!298579)))

(declare-fun Unit!67519 () Unit!67514)

(assert (=> b!4315650 (= e!2684573 Unit!67519)))

(declare-fun bm!298573 () Bool)

(declare-fun contains!10310 (ListLongMap!1101 (_ BitVec 64)) Bool)

(assert (=> bm!298573 (= call!298580 (contains!10310 (ite c!733682 lt!1535249 call!298579) call!298577))))

(declare-fun bm!298574 () Bool)

(assert (=> bm!298574 (= call!298577 (hash!1111 (hashF!6834 thiss!42308) key!2048))))

(declare-fun bm!298575 () Bool)

(declare-fun isDefined!7574 (Option!10273) Bool)

(assert (=> bm!298575 (= call!298575 (isDefined!7574 call!298578))))

(declare-fun b!4315651 () Bool)

(declare-fun Unit!67520 () Unit!67514)

(assert (=> b!4315651 (= e!2684573 Unit!67520)))

(declare-fun b!4315652 () Bool)

(assert (=> b!4315652 (= e!2684571 (isDefined!7574 (getPair!150 (apply!11086 (v!42567 (underlying!9656 thiss!42308)) lt!1535252) key!2048)))))

(assert (= (and d!1269245 c!733681) b!4315642))

(assert (= (and d!1269245 (not c!733681)) b!4315648))

(assert (= (and b!4315642 c!733679) b!4315646))

(assert (= (and b!4315642 (not c!733679)) b!4315645))

(assert (= (and d!1269245 c!733682) b!4315647))

(assert (= (and d!1269245 (not c!733682)) b!4315644))

(assert (= (and b!4315647 res!1768907) b!4315643))

(assert (= (and b!4315644 res!1768909) b!4315649))

(assert (= (and b!4315644 c!733680) b!4315650))

(assert (= (and b!4315644 (not c!733680)) b!4315651))

(assert (= (or b!4315647 b!4315644 b!4315649 b!4315650) bm!298570))

(assert (= (or b!4315647 b!4315643 b!4315644 b!4315649) bm!298574))

(assert (= (or b!4315643 b!4315649) bm!298572))

(assert (= (or b!4315647 b!4315644) bm!298573))

(assert (= (or b!4315643 b!4315649) bm!298571))

(assert (= (or b!4315643 b!4315649) bm!298575))

(assert (= (and d!1269245 res!1768908) b!4315652))

(declare-fun m!4909503 () Bool)

(assert (=> bm!298575 m!4909503))

(declare-fun m!4909505 () Bool)

(assert (=> b!4315652 m!4909505))

(assert (=> b!4315652 m!4909505))

(declare-fun m!4909507 () Bool)

(assert (=> b!4315652 m!4909507))

(assert (=> b!4315652 m!4909507))

(declare-fun m!4909509 () Bool)

(assert (=> b!4315652 m!4909509))

(assert (=> b!4315646 m!4909505))

(declare-fun m!4909511 () Bool)

(assert (=> b!4315646 m!4909511))

(declare-fun m!4909513 () Bool)

(assert (=> b!4315646 m!4909513))

(assert (=> b!4315646 m!4909489))

(declare-fun m!4909515 () Bool)

(assert (=> b!4315646 m!4909515))

(declare-fun m!4909517 () Bool)

(assert (=> b!4315646 m!4909517))

(declare-fun m!4909519 () Bool)

(assert (=> b!4315646 m!4909519))

(declare-fun m!4909521 () Bool)

(assert (=> b!4315646 m!4909521))

(declare-fun m!4909523 () Bool)

(assert (=> b!4315646 m!4909523))

(assert (=> b!4315646 m!4909511))

(declare-fun m!4909525 () Bool)

(assert (=> bm!298573 m!4909525))

(declare-fun m!4909527 () Bool)

(assert (=> bm!298572 m!4909527))

(declare-fun m!4909529 () Bool)

(assert (=> b!4315647 m!4909529))

(assert (=> b!4315642 m!4909489))

(assert (=> b!4315642 m!4909505))

(declare-fun m!4909531 () Bool)

(assert (=> b!4315642 m!4909531))

(declare-fun m!4909533 () Bool)

(assert (=> b!4315642 m!4909533))

(assert (=> bm!298574 m!4909479))

(assert (=> bm!298570 m!4909489))

(assert (=> d!1269245 m!4909493))

(assert (=> d!1269245 m!4909489))

(assert (=> d!1269245 m!4909491))

(declare-fun m!4909535 () Bool)

(assert (=> d!1269245 m!4909535))

(assert (=> d!1269245 m!4909535))

(declare-fun m!4909537 () Bool)

(assert (=> d!1269245 m!4909537))

(declare-fun m!4909539 () Bool)

(assert (=> d!1269245 m!4909539))

(assert (=> d!1269245 m!4909479))

(assert (=> d!1269245 m!4909491))

(declare-fun m!4909541 () Bool)

(assert (=> d!1269245 m!4909541))

(declare-fun m!4909543 () Bool)

(assert (=> bm!298571 m!4909543))

(declare-fun m!4909545 () Bool)

(assert (=> b!4315650 m!4909545))

(assert (=> b!4315650 m!4909545))

(declare-fun m!4909547 () Bool)

(assert (=> b!4315650 m!4909547))

(declare-fun m!4909549 () Bool)

(assert (=> b!4315650 m!4909549))

(assert (=> b!4315606 d!1269245))

(declare-fun d!1269247 () Bool)

(declare-fun map!10311 (LongMapFixedSize!9426) ListLongMap!1101)

(assert (=> d!1269247 (= (map!10309 (v!42567 (underlying!9656 thiss!42308))) (map!10311 (v!42566 (underlying!9655 (v!42567 (underlying!9656 thiss!42308))))))))

(declare-fun bs!605837 () Bool)

(assert (= bs!605837 d!1269247))

(declare-fun m!4909551 () Bool)

(assert (=> bs!605837 m!4909551))

(assert (=> b!4315606 d!1269247))

(declare-fun d!1269249 () Bool)

(declare-fun lt!1535257 () ListMap!1767)

(declare-fun invariantList!589 (List!48422) Bool)

(assert (=> d!1269249 (invariantList!589 (toList!2488 lt!1535257))))

(assert (=> d!1269249 (= lt!1535257 (extractMap!353 (toList!2487 (map!10309 (v!42567 (underlying!9656 thiss!42308))))))))

(assert (=> d!1269249 (valid!3712 thiss!42308)))

(assert (=> d!1269249 (= (map!10310 thiss!42308) lt!1535257)))

(declare-fun bs!605838 () Bool)

(assert (= bs!605838 d!1269249))

(declare-fun m!4909553 () Bool)

(assert (=> bs!605838 m!4909553))

(assert (=> bs!605838 m!4909489))

(assert (=> bs!605838 m!4909535))

(assert (=> bs!605838 m!4909493))

(assert (=> b!4315606 d!1269249))

(declare-fun b!4315671 () Bool)

(declare-fun e!2684588 () tuple2!46942)

(declare-fun lt!1535267 () tuple2!46942)

(assert (=> b!4315671 (= e!2684588 (tuple2!46943 (_1!26753 lt!1535267) (_2!26753 lt!1535267)))))

(declare-fun repack!72 (MutLongMap!4713) tuple2!46942)

(assert (=> b!4315671 (= lt!1535267 (repack!72 (v!42567 (underlying!9656 thiss!42308))))))

(declare-fun b!4315672 () Bool)

(declare-fun e!2684586 () tuple2!46942)

(declare-fun lt!1535268 () tuple2!46942)

(assert (=> b!4315672 (= e!2684586 (tuple2!46943 false (_2!26753 lt!1535268)))))

(declare-fun d!1269251 () Bool)

(declare-fun e!2684587 () Bool)

(assert (=> d!1269251 e!2684587))

(declare-fun res!1768918 () Bool)

(assert (=> d!1269251 (=> (not res!1768918) (not e!2684587))))

(declare-fun lt!1535269 () tuple2!46942)

(assert (=> d!1269251 (= res!1768918 ((_ is LongMap!4713) (_2!26753 lt!1535269)))))

(assert (=> d!1269251 (= lt!1535269 e!2684586)))

(declare-fun c!733689 () Bool)

(assert (=> d!1269251 (= c!733689 (_1!26753 lt!1535268))))

(assert (=> d!1269251 (= lt!1535268 e!2684588)))

(declare-fun c!733691 () Bool)

(declare-fun imbalanced!68 (MutLongMap!4713) Bool)

(assert (=> d!1269251 (= c!733691 (imbalanced!68 (v!42567 (underlying!9656 thiss!42308))))))

(assert (=> d!1269251 (valid!3713 (v!42567 (underlying!9656 thiss!42308)))))

(assert (=> d!1269251 (= (update!489 (v!42567 (underlying!9656 thiss!42308)) lt!1535192 (Cons!48298 (tuple2!46941 key!2048 v!9179) (removePairForKey!248 (apply!11086 (v!42567 (underlying!9656 thiss!42308)) lt!1535192) key!2048))) lt!1535269)))

(declare-fun b!4315673 () Bool)

(declare-fun e!2684584 () Bool)

(declare-fun e!2684585 () Bool)

(assert (=> b!4315673 (= e!2684584 e!2684585)))

(declare-fun res!1768917 () Bool)

(declare-fun call!298585 () ListLongMap!1101)

(assert (=> b!4315673 (= res!1768917 (contains!10310 call!298585 lt!1535192))))

(assert (=> b!4315673 (=> (not res!1768917) (not e!2684585))))

(declare-fun b!4315674 () Bool)

(assert (=> b!4315674 (= e!2684588 (tuple2!46943 true (v!42567 (underlying!9656 thiss!42308))))))

(declare-fun b!4315675 () Bool)

(declare-fun res!1768916 () Bool)

(assert (=> b!4315675 (=> (not res!1768916) (not e!2684587))))

(assert (=> b!4315675 (= res!1768916 (valid!3713 (_2!26753 lt!1535269)))))

(declare-fun bm!298580 () Bool)

(assert (=> bm!298580 (= call!298585 (map!10309 (_2!26753 lt!1535269)))))

(declare-fun bm!298581 () Bool)

(declare-fun call!298586 () ListLongMap!1101)

(assert (=> bm!298581 (= call!298586 (map!10309 (v!42567 (underlying!9656 thiss!42308))))))

(declare-fun b!4315676 () Bool)

(assert (=> b!4315676 (= e!2684584 (= call!298585 call!298586))))

(declare-fun b!4315677 () Bool)

(declare-datatypes ((tuple2!46946 0))(
  ( (tuple2!46947 (_1!26755 Bool) (_2!26755 LongMapFixedSize!9426)) )
))
(declare-fun lt!1535266 () tuple2!46946)

(assert (=> b!4315677 (= e!2684586 (tuple2!46943 (_1!26755 lt!1535266) (LongMap!4713 (Cell!18662 (_2!26755 lt!1535266)))))))

(declare-fun update!490 (LongMapFixedSize!9426 (_ BitVec 64) List!48422) tuple2!46946)

(assert (=> b!4315677 (= lt!1535266 (update!490 (v!42566 (underlying!9655 (_2!26753 lt!1535268))) lt!1535192 (Cons!48298 (tuple2!46941 key!2048 v!9179) (removePairForKey!248 (apply!11086 (v!42567 (underlying!9656 thiss!42308)) lt!1535192) key!2048))))))

(declare-fun b!4315678 () Bool)

(assert (=> b!4315678 (= e!2684587 e!2684584)))

(declare-fun c!733690 () Bool)

(assert (=> b!4315678 (= c!733690 (_1!26753 lt!1535269))))

(declare-fun b!4315679 () Bool)

(declare-fun +!307 (ListLongMap!1101 tuple2!46944) ListLongMap!1101)

(assert (=> b!4315679 (= e!2684585 (= call!298585 (+!307 call!298586 (tuple2!46945 lt!1535192 (Cons!48298 (tuple2!46941 key!2048 v!9179) (removePairForKey!248 (apply!11086 (v!42567 (underlying!9656 thiss!42308)) lt!1535192) key!2048))))))))

(assert (= (and d!1269251 c!733691) b!4315671))

(assert (= (and d!1269251 (not c!733691)) b!4315674))

(assert (= (and d!1269251 c!733689) b!4315677))

(assert (= (and d!1269251 (not c!733689)) b!4315672))

(assert (= (and d!1269251 res!1768918) b!4315675))

(assert (= (and b!4315675 res!1768916) b!4315678))

(assert (= (and b!4315678 c!733690) b!4315673))

(assert (= (and b!4315678 (not c!733690)) b!4315676))

(assert (= (and b!4315673 res!1768917) b!4315679))

(assert (= (or b!4315673 b!4315679 b!4315676) bm!298580))

(assert (= (or b!4315679 b!4315676) bm!298581))

(declare-fun m!4909555 () Bool)

(assert (=> bm!298580 m!4909555))

(declare-fun m!4909557 () Bool)

(assert (=> b!4315673 m!4909557))

(declare-fun m!4909559 () Bool)

(assert (=> b!4315677 m!4909559))

(assert (=> bm!298581 m!4909489))

(declare-fun m!4909561 () Bool)

(assert (=> b!4315679 m!4909561))

(declare-fun m!4909563 () Bool)

(assert (=> b!4315671 m!4909563))

(declare-fun m!4909565 () Bool)

(assert (=> d!1269251 m!4909565))

(assert (=> d!1269251 m!4909497))

(declare-fun m!4909567 () Bool)

(assert (=> b!4315675 m!4909567))

(assert (=> b!4315612 d!1269251))

(declare-fun b!4315690 () Bool)

(declare-fun e!2684593 () List!48422)

(assert (=> b!4315690 (= e!2684593 (Cons!48298 (h!53750 (apply!11086 (v!42567 (underlying!9656 thiss!42308)) lt!1535192)) (removePairForKey!248 (t!355267 (apply!11086 (v!42567 (underlying!9656 thiss!42308)) lt!1535192)) key!2048)))))

(declare-fun b!4315689 () Bool)

(declare-fun e!2684594 () List!48422)

(assert (=> b!4315689 (= e!2684594 e!2684593)))

(declare-fun c!733696 () Bool)

(assert (=> b!4315689 (= c!733696 ((_ is Cons!48298) (apply!11086 (v!42567 (underlying!9656 thiss!42308)) lt!1535192)))))

(declare-fun b!4315691 () Bool)

(assert (=> b!4315691 (= e!2684593 Nil!48298)))

(declare-fun d!1269253 () Bool)

(declare-fun lt!1535272 () List!48422)

(declare-fun containsKey!372 (List!48422 K!9529) Bool)

(assert (=> d!1269253 (not (containsKey!372 lt!1535272 key!2048))))

(assert (=> d!1269253 (= lt!1535272 e!2684594)))

(declare-fun c!733697 () Bool)

(assert (=> d!1269253 (= c!733697 (and ((_ is Cons!48298) (apply!11086 (v!42567 (underlying!9656 thiss!42308)) lt!1535192)) (= (_1!26752 (h!53750 (apply!11086 (v!42567 (underlying!9656 thiss!42308)) lt!1535192))) key!2048)))))

(declare-fun noDuplicateKeys!249 (List!48422) Bool)

(assert (=> d!1269253 (noDuplicateKeys!249 (apply!11086 (v!42567 (underlying!9656 thiss!42308)) lt!1535192))))

(assert (=> d!1269253 (= (removePairForKey!248 (apply!11086 (v!42567 (underlying!9656 thiss!42308)) lt!1535192) key!2048) lt!1535272)))

(declare-fun b!4315688 () Bool)

(assert (=> b!4315688 (= e!2684594 (t!355267 (apply!11086 (v!42567 (underlying!9656 thiss!42308)) lt!1535192)))))

(assert (= (and d!1269253 c!733697) b!4315688))

(assert (= (and d!1269253 (not c!733697)) b!4315689))

(assert (= (and b!4315689 c!733696) b!4315690))

(assert (= (and b!4315689 (not c!733696)) b!4315691))

(declare-fun m!4909569 () Bool)

(assert (=> b!4315690 m!4909569))

(declare-fun m!4909571 () Bool)

(assert (=> d!1269253 m!4909571))

(assert (=> d!1269253 m!4909473))

(declare-fun m!4909573 () Bool)

(assert (=> d!1269253 m!4909573))

(assert (=> b!4315612 d!1269253))

(declare-fun d!1269255 () Bool)

(declare-fun e!2684597 () Bool)

(assert (=> d!1269255 e!2684597))

(declare-fun c!733700 () Bool)

(assert (=> d!1269255 (= c!733700 (contains!10309 (v!42567 (underlying!9656 thiss!42308)) lt!1535192))))

(declare-fun lt!1535275 () List!48422)

(declare-fun apply!11088 (LongMapFixedSize!9426 (_ BitVec 64)) List!48422)

(assert (=> d!1269255 (= lt!1535275 (apply!11088 (v!42566 (underlying!9655 (v!42567 (underlying!9656 thiss!42308)))) lt!1535192))))

(assert (=> d!1269255 (valid!3713 (v!42567 (underlying!9656 thiss!42308)))))

(assert (=> d!1269255 (= (apply!11086 (v!42567 (underlying!9656 thiss!42308)) lt!1535192) lt!1535275)))

(declare-fun b!4315696 () Bool)

(declare-fun get!15639 (Option!10272) List!48422)

(assert (=> b!4315696 (= e!2684597 (= lt!1535275 (get!15639 (getValueByKey!281 (toList!2487 (map!10309 (v!42567 (underlying!9656 thiss!42308)))) lt!1535192))))))

(declare-fun b!4315697 () Bool)

(declare-fun dynLambda!20470 (Int (_ BitVec 64)) List!48422)

(assert (=> b!4315697 (= e!2684597 (= lt!1535275 (dynLambda!20470 (defaultEntry!5098 (v!42566 (underlying!9655 (v!42567 (underlying!9656 thiss!42308))))) lt!1535192)))))

(assert (=> b!4315697 ((_ is LongMap!4713) (v!42567 (underlying!9656 thiss!42308)))))

(assert (= (and d!1269255 c!733700) b!4315696))

(assert (= (and d!1269255 (not c!733700)) b!4315697))

(declare-fun b_lambda!126903 () Bool)

(assert (=> (not b_lambda!126903) (not b!4315697)))

(declare-fun t!355270 () Bool)

(declare-fun tb!257331 () Bool)

(assert (=> (and b!4315613 (= (defaultEntry!5098 (v!42566 (underlying!9655 (v!42567 (underlying!9656 thiss!42308))))) (defaultEntry!5098 (v!42566 (underlying!9655 (v!42567 (underlying!9656 thiss!42308)))))) t!355270) tb!257331))

(assert (=> b!4315697 t!355270))

(declare-fun result!314796 () Bool)

(declare-fun b_and!340293 () Bool)

(assert (= b_and!340289 (and (=> t!355270 result!314796) b_and!340293)))

(declare-fun m!4909575 () Bool)

(assert (=> d!1269255 m!4909575))

(declare-fun m!4909577 () Bool)

(assert (=> d!1269255 m!4909577))

(assert (=> d!1269255 m!4909497))

(assert (=> b!4315696 m!4909489))

(declare-fun m!4909579 () Bool)

(assert (=> b!4315696 m!4909579))

(assert (=> b!4315696 m!4909579))

(declare-fun m!4909581 () Bool)

(assert (=> b!4315696 m!4909581))

(declare-fun m!4909583 () Bool)

(assert (=> b!4315697 m!4909583))

(assert (=> b!4315612 d!1269255))

(declare-fun d!1269257 () Bool)

(declare-fun hash!1112 (Hashable!4629 K!9529) (_ BitVec 64))

(assert (=> d!1269257 (= (hash!1111 (hashF!6834 thiss!42308) key!2048) (hash!1112 (hashF!6834 thiss!42308) key!2048))))

(declare-fun bs!605839 () Bool)

(assert (= bs!605839 d!1269257))

(declare-fun m!4909585 () Bool)

(assert (=> bs!605839 m!4909585))

(assert (=> b!4315612 d!1269257))

(declare-fun bs!605840 () Bool)

(declare-fun b!4315698 () Bool)

(assert (= bs!605840 (and b!4315698 b!4315618)))

(declare-fun lambda!133470 () Int)

(assert (=> bs!605840 (= lambda!133470 lambda!133466)))

(declare-fun bs!605841 () Bool)

(assert (= bs!605841 (and b!4315698 b!4315642)))

(assert (=> bs!605841 (= lambda!133470 lambda!133469)))

(declare-fun d!1269259 () Bool)

(declare-fun res!1768919 () Bool)

(declare-fun e!2684598 () Bool)

(assert (=> d!1269259 (=> (not res!1768919) (not e!2684598))))

(assert (=> d!1269259 (= res!1768919 (valid!3713 (v!42567 (underlying!9656 (HashMap!4619 (Cell!18664 (_2!26753 lt!1535193)) (hashF!6834 thiss!42308) (_size!9470 thiss!42308) (defaultValue!4790 thiss!42308))))))))

(assert (=> d!1269259 (= (valid!3712 (HashMap!4619 (Cell!18664 (_2!26753 lt!1535193)) (hashF!6834 thiss!42308) (_size!9470 thiss!42308) (defaultValue!4790 thiss!42308))) e!2684598)))

(declare-fun res!1768920 () Bool)

(assert (=> b!4315698 (=> (not res!1768920) (not e!2684598))))

(assert (=> b!4315698 (= res!1768920 (forall!8780 (toList!2487 (map!10309 (v!42567 (underlying!9656 (HashMap!4619 (Cell!18664 (_2!26753 lt!1535193)) (hashF!6834 thiss!42308) (_size!9470 thiss!42308) (defaultValue!4790 thiss!42308)))))) lambda!133470))))

(declare-fun b!4315699 () Bool)

(assert (=> b!4315699 (= e!2684598 (allKeysSameHashInMap!369 (map!10309 (v!42567 (underlying!9656 (HashMap!4619 (Cell!18664 (_2!26753 lt!1535193)) (hashF!6834 thiss!42308) (_size!9470 thiss!42308) (defaultValue!4790 thiss!42308))))) (hashF!6834 (HashMap!4619 (Cell!18664 (_2!26753 lt!1535193)) (hashF!6834 thiss!42308) (_size!9470 thiss!42308) (defaultValue!4790 thiss!42308)))))))

(assert (= (and d!1269259 res!1768919) b!4315698))

(assert (= (and b!4315698 res!1768920) b!4315699))

(declare-fun m!4909587 () Bool)

(assert (=> d!1269259 m!4909587))

(declare-fun m!4909589 () Bool)

(assert (=> b!4315698 m!4909589))

(declare-fun m!4909591 () Bool)

(assert (=> b!4315698 m!4909591))

(assert (=> b!4315699 m!4909589))

(assert (=> b!4315699 m!4909589))

(declare-fun m!4909593 () Bool)

(assert (=> b!4315699 m!4909593))

(assert (=> b!4315604 d!1269259))

(declare-fun d!1269261 () Bool)

(assert (=> d!1269261 (= (array_inv!5473 (_keys!5013 (v!42566 (underlying!9655 (v!42567 (underlying!9656 thiss!42308)))))) (bvsge (size!35650 (_keys!5013 (v!42566 (underlying!9655 (v!42567 (underlying!9656 thiss!42308)))))) #b00000000000000000000000000000000))))

(assert (=> b!4315613 d!1269261))

(declare-fun d!1269263 () Bool)

(assert (=> d!1269263 (= (array_inv!5474 (_values!4994 (v!42566 (underlying!9655 (v!42567 (underlying!9656 thiss!42308)))))) (bvsge (size!35651 (_values!4994 (v!42566 (underlying!9655 (v!42567 (underlying!9656 thiss!42308)))))) #b00000000000000000000000000000000))))

(assert (=> b!4315613 d!1269263))

(declare-fun tp!1325870 () Bool)

(declare-fun e!2684601 () Bool)

(declare-fun b!4315704 () Bool)

(assert (=> b!4315704 (= e!2684601 (and tp_is_empty!23957 tp_is_empty!23959 tp!1325870))))

(assert (=> b!4315610 (= tp!1325861 e!2684601)))

(assert (= (and b!4315610 ((_ is Cons!48298) mapDefault!21025)) b!4315704))

(declare-fun b!4315711 () Bool)

(declare-fun tp!1325879 () Bool)

(declare-fun e!2684607 () Bool)

(assert (=> b!4315711 (= e!2684607 (and tp_is_empty!23957 tp_is_empty!23959 tp!1325879))))

(declare-fun b!4315712 () Bool)

(declare-fun e!2684606 () Bool)

(declare-fun tp!1325878 () Bool)

(assert (=> b!4315712 (= e!2684606 (and tp_is_empty!23957 tp_is_empty!23959 tp!1325878))))

(declare-fun condMapEmpty!21028 () Bool)

(declare-fun mapDefault!21028 () List!48422)

(assert (=> mapNonEmpty!21025 (= condMapEmpty!21028 (= mapRest!21025 ((as const (Array (_ BitVec 32) List!48422)) mapDefault!21028)))))

(declare-fun mapRes!21028 () Bool)

(assert (=> mapNonEmpty!21025 (= tp!1325864 (and e!2684606 mapRes!21028))))

(declare-fun mapNonEmpty!21028 () Bool)

(declare-fun tp!1325877 () Bool)

(assert (=> mapNonEmpty!21028 (= mapRes!21028 (and tp!1325877 e!2684607))))

(declare-fun mapRest!21028 () (Array (_ BitVec 32) List!48422))

(declare-fun mapValue!21028 () List!48422)

(declare-fun mapKey!21028 () (_ BitVec 32))

(assert (=> mapNonEmpty!21028 (= mapRest!21025 (store mapRest!21028 mapKey!21028 mapValue!21028))))

(declare-fun mapIsEmpty!21028 () Bool)

(assert (=> mapIsEmpty!21028 mapRes!21028))

(assert (= (and mapNonEmpty!21025 condMapEmpty!21028) mapIsEmpty!21028))

(assert (= (and mapNonEmpty!21025 (not condMapEmpty!21028)) mapNonEmpty!21028))

(assert (= (and mapNonEmpty!21028 ((_ is Cons!48298) mapValue!21028)) b!4315711))

(assert (= (and mapNonEmpty!21025 ((_ is Cons!48298) mapDefault!21028)) b!4315712))

(declare-fun m!4909595 () Bool)

(assert (=> mapNonEmpty!21028 m!4909595))

(declare-fun e!2684608 () Bool)

(declare-fun b!4315713 () Bool)

(declare-fun tp!1325880 () Bool)

(assert (=> b!4315713 (= e!2684608 (and tp_is_empty!23957 tp_is_empty!23959 tp!1325880))))

(assert (=> mapNonEmpty!21025 (= tp!1325866 e!2684608)))

(assert (= (and mapNonEmpty!21025 ((_ is Cons!48298) mapValue!21025)) b!4315713))

(declare-fun e!2684609 () Bool)

(declare-fun b!4315714 () Bool)

(declare-fun tp!1325881 () Bool)

(assert (=> b!4315714 (= e!2684609 (and tp_is_empty!23957 tp_is_empty!23959 tp!1325881))))

(assert (=> b!4315613 (= tp!1325865 e!2684609)))

(assert (= (and b!4315613 ((_ is Cons!48298) (zeroValue!4972 (v!42566 (underlying!9655 (v!42567 (underlying!9656 thiss!42308))))))) b!4315714))

(declare-fun tp!1325882 () Bool)

(declare-fun b!4315715 () Bool)

(declare-fun e!2684610 () Bool)

(assert (=> b!4315715 (= e!2684610 (and tp_is_empty!23957 tp_is_empty!23959 tp!1325882))))

(assert (=> b!4315613 (= tp!1325863 e!2684610)))

(assert (= (and b!4315613 ((_ is Cons!48298) (minValue!4972 (v!42566 (underlying!9655 (v!42567 (underlying!9656 thiss!42308))))))) b!4315715))

(declare-fun b_lambda!126905 () Bool)

(assert (= b_lambda!126903 (or (and b!4315613 b_free!128811) b_lambda!126905)))

(check-sat (not tb!257331) (not d!1269249) (not d!1269259) (not d!1269253) (not d!1269243) (not b!4315618) (not b!4315642) (not bm!298581) tp_is_empty!23959 (not b!4315673) (not mapNonEmpty!21028) (not b!4315690) (not b!4315677) (not bm!298580) (not b!4315699) (not b_next!129515) b_and!340291 (not bm!298573) (not d!1269255) (not bm!298572) (not bm!298570) (not d!1269247) (not b!4315711) (not b!4315696) (not b!4315698) (not b!4315647) (not b!4315714) (not bm!298574) (not b!4315715) (not b!4315652) (not b!4315712) (not b!4315679) (not d!1269245) b_and!340293 (not d!1269251) (not b!4315675) (not b!4315646) (not b_lambda!126905) (not b!4315704) (not b!4315619) (not b_next!129517) (not d!1269257) (not b!4315671) (not bm!298575) (not b!4315713) tp_is_empty!23957 (not bm!298571) (not b!4315650))
(check-sat b_and!340293 b_and!340291 (not b_next!129517) (not b_next!129515))
