; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!414244 () Bool)

(assert start!414244)

(declare-fun b!4310402 () Bool)

(declare-fun b_free!128619 () Bool)

(declare-fun b_next!129323 () Bool)

(assert (=> b!4310402 (= b_free!128619 (not b_next!129323))))

(declare-fun tp!1324593 () Bool)

(declare-fun b_and!340049 () Bool)

(assert (=> b!4310402 (= tp!1324593 b_and!340049)))

(declare-fun b!4310405 () Bool)

(declare-fun b_free!128621 () Bool)

(declare-fun b_next!129325 () Bool)

(assert (=> b!4310405 (= b_free!128621 (not b_next!129325))))

(declare-fun tp!1324594 () Bool)

(declare-fun b_and!340051 () Bool)

(assert (=> b!4310405 (= tp!1324594 b_and!340051)))

(declare-fun b!4310401 () Bool)

(declare-fun res!1766566 () Bool)

(declare-fun e!2680727 () Bool)

(assert (=> b!4310401 (=> (not res!1766566) (not e!2680727))))

(declare-datatypes ((V!9611 0))(
  ( (V!9612 (val!15785 Int)) )
))
(declare-datatypes ((K!9409 0))(
  ( (K!9410 (val!15786 Int)) )
))
(declare-datatypes ((tuple2!46654 0))(
  ( (tuple2!46655 (_1!26607 K!9409) (_2!26607 V!9611)) )
))
(declare-datatypes ((List!48325 0))(
  ( (Nil!48201) (Cons!48201 (h!53637 tuple2!46654) (t!355134 List!48325)) )
))
(declare-datatypes ((array!16824 0))(
  ( (array!16825 (arr!7515 (Array (_ BitVec 32) (_ BitVec 64))) (size!35554 (_ BitVec 32))) )
))
(declare-datatypes ((Hashable!4581 0))(
  ( (HashableExt!4580 (__x!30020 Int)) )
))
(declare-datatypes ((array!16826 0))(
  ( (array!16827 (arr!7516 (Array (_ BitVec 32) List!48325)) (size!35555 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!9330 0))(
  ( (LongMapFixedSize!9331 (defaultEntry!5050 Int) (mask!13226 (_ BitVec 32)) (extraKeys!4914 (_ BitVec 32)) (zeroValue!4924 List!48325) (minValue!4924 List!48325) (_size!9373 (_ BitVec 32)) (_keys!4965 array!16824) (_values!4946 array!16826) (_vacant!4726 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!18469 0))(
  ( (Cell!18470 (v!42351 LongMapFixedSize!9330)) )
))
(declare-datatypes ((MutLongMap!4665 0))(
  ( (LongMap!4665 (underlying!9559 Cell!18469)) (MutLongMapExt!4664 (__x!30021 Int)) )
))
(declare-datatypes ((Cell!18471 0))(
  ( (Cell!18472 (v!42352 MutLongMap!4665)) )
))
(declare-datatypes ((MutableMap!4571 0))(
  ( (MutableMapExt!4570 (__x!30022 Int)) (HashMap!4571 (underlying!9560 Cell!18471) (hashF!6703 Hashable!4581) (_size!9374 (_ BitVec 32)) (defaultValue!4742 Int)) )
))
(declare-fun thiss!42308 () MutableMap!4571)

(declare-fun valid!3654 (MutableMap!4571) Bool)

(assert (=> b!4310401 (= res!1766566 (valid!3654 thiss!42308))))

(declare-fun e!2680733 () Bool)

(declare-fun tp!1324599 () Bool)

(declare-fun e!2680728 () Bool)

(declare-fun tp!1324598 () Bool)

(declare-fun array_inv!5395 (array!16824) Bool)

(declare-fun array_inv!5396 (array!16826) Bool)

(assert (=> b!4310402 (= e!2680733 (and tp!1324593 tp!1324598 tp!1324599 (array_inv!5395 (_keys!4965 (v!42351 (underlying!9559 (v!42352 (underlying!9560 thiss!42308)))))) (array_inv!5396 (_values!4946 (v!42351 (underlying!9559 (v!42352 (underlying!9560 thiss!42308)))))) e!2680728))))

(declare-fun b!4310403 () Bool)

(declare-fun e!2680732 () Bool)

(assert (=> b!4310403 (= e!2680727 e!2680732)))

(declare-fun res!1766564 () Bool)

(assert (=> b!4310403 (=> (not res!1766564) (not e!2680732))))

(declare-fun key!2048 () K!9409)

(declare-fun contains!10177 (MutableMap!4571 K!9409) Bool)

(assert (=> b!4310403 (= res!1766564 (contains!10177 thiss!42308 key!2048))))

(declare-datatypes ((tuple2!46656 0))(
  ( (tuple2!46657 (_1!26608 (_ BitVec 64)) (_2!26608 List!48325)) )
))
(declare-datatypes ((List!48326 0))(
  ( (Nil!48202) (Cons!48202 (h!53638 tuple2!46656) (t!355135 List!48326)) )
))
(declare-datatypes ((ListLongMap!1019 0))(
  ( (ListLongMap!1020 (toList!2407 List!48326)) )
))
(declare-fun lt!1530899 () ListLongMap!1019)

(declare-fun map!10193 (MutLongMap!4665) ListLongMap!1019)

(assert (=> b!4310403 (= lt!1530899 (map!10193 (v!42352 (underlying!9560 thiss!42308))))))

(declare-datatypes ((ListMap!1689 0))(
  ( (ListMap!1690 (toList!2408 List!48325)) )
))
(declare-fun lt!1530900 () ListMap!1689)

(declare-fun map!10194 (MutableMap!4571) ListMap!1689)

(assert (=> b!4310403 (= lt!1530900 (map!10194 thiss!42308))))

(declare-fun res!1766565 () Bool)

(assert (=> start!414244 (=> (not res!1766565) (not e!2680727))))

(get-info :version)

(assert (=> start!414244 (= res!1766565 ((_ is HashMap!4571) thiss!42308))))

(assert (=> start!414244 e!2680727))

(declare-fun e!2680724 () Bool)

(assert (=> start!414244 e!2680724))

(declare-fun tp_is_empty!23765 () Bool)

(assert (=> start!414244 tp_is_empty!23765))

(declare-fun tp_is_empty!23767 () Bool)

(assert (=> start!414244 tp_is_empty!23767))

(declare-fun b!4310404 () Bool)

(declare-fun tp!1324596 () Bool)

(declare-fun mapRes!20831 () Bool)

(assert (=> b!4310404 (= e!2680728 (and tp!1324596 mapRes!20831))))

(declare-fun condMapEmpty!20831 () Bool)

(declare-fun mapDefault!20831 () List!48325)

(assert (=> b!4310404 (= condMapEmpty!20831 (= (arr!7516 (_values!4946 (v!42351 (underlying!9559 (v!42352 (underlying!9560 thiss!42308)))))) ((as const (Array (_ BitVec 32) List!48325)) mapDefault!20831)))))

(declare-fun mapIsEmpty!20831 () Bool)

(assert (=> mapIsEmpty!20831 mapRes!20831))

(declare-fun e!2680725 () Bool)

(assert (=> b!4310405 (= e!2680724 (and e!2680725 tp!1324594))))

(declare-fun mapNonEmpty!20831 () Bool)

(declare-fun tp!1324595 () Bool)

(declare-fun tp!1324597 () Bool)

(assert (=> mapNonEmpty!20831 (= mapRes!20831 (and tp!1324595 tp!1324597))))

(declare-fun mapKey!20831 () (_ BitVec 32))

(declare-fun mapValue!20831 () List!48325)

(declare-fun mapRest!20831 () (Array (_ BitVec 32) List!48325))

(assert (=> mapNonEmpty!20831 (= (arr!7516 (_values!4946 (v!42351 (underlying!9559 (v!42352 (underlying!9560 thiss!42308)))))) (store mapRest!20831 mapKey!20831 mapValue!20831))))

(declare-fun b!4310406 () Bool)

(declare-fun e!2680730 () Bool)

(declare-fun lt!1530901 () MutLongMap!4665)

(assert (=> b!4310406 (= e!2680725 (and e!2680730 ((_ is LongMap!4665) lt!1530901)))))

(assert (=> b!4310406 (= lt!1530901 (v!42352 (underlying!9560 thiss!42308)))))

(declare-fun b!4310407 () Bool)

(declare-fun e!2680729 () Bool)

(assert (=> b!4310407 (= e!2680730 e!2680729)))

(declare-fun b!4310408 () Bool)

(declare-fun e!2680726 () Bool)

(assert (=> b!4310408 (= e!2680732 e!2680726)))

(declare-fun res!1766567 () Bool)

(assert (=> b!4310408 (=> (not res!1766567) (not e!2680726))))

(declare-fun lt!1530904 () List!48325)

(declare-fun lt!1530905 () (_ BitVec 64))

(declare-fun v!9179 () V!9611)

(declare-datatypes ((tuple2!46658 0))(
  ( (tuple2!46659 (_1!26609 Bool) (_2!26609 MutLongMap!4665)) )
))
(declare-fun update!438 (MutLongMap!4665 (_ BitVec 64) List!48325) tuple2!46658)

(assert (=> b!4310408 (= res!1766567 (_1!26609 (update!438 (v!42352 (underlying!9560 thiss!42308)) lt!1530905 (Cons!48201 (tuple2!46655 key!2048 v!9179) lt!1530904))))))

(declare-fun lt!1530902 () List!48325)

(declare-fun removePairForKey!213 (List!48325 K!9409) List!48325)

(assert (=> b!4310408 (= lt!1530904 (removePairForKey!213 lt!1530902 key!2048))))

(declare-fun apply!11018 (MutLongMap!4665 (_ BitVec 64)) List!48325)

(assert (=> b!4310408 (= lt!1530902 (apply!11018 (v!42352 (underlying!9560 thiss!42308)) lt!1530905))))

(declare-fun hash!1009 (Hashable!4581 K!9409) (_ BitVec 64))

(assert (=> b!4310408 (= lt!1530905 (hash!1009 (hashF!6703 thiss!42308) key!2048))))

(declare-fun b!4310409 () Bool)

(assert (=> b!4310409 (= e!2680729 e!2680733)))

(declare-fun b!4310410 () Bool)

(declare-fun noDuplicateKeys!212 (List!48325) Bool)

(assert (=> b!4310410 (= e!2680726 (not (noDuplicateKeys!212 lt!1530902)))))

(declare-fun allKeysSameHash!188 (List!48325 (_ BitVec 64) Hashable!4581) Bool)

(assert (=> b!4310410 (allKeysSameHash!188 lt!1530904 lt!1530905 (hashF!6703 thiss!42308))))

(declare-datatypes ((Unit!67325 0))(
  ( (Unit!67326) )
))
(declare-fun lt!1530903 () Unit!67325)

(declare-fun lemmaRemovePairForKeyPreservesHash!168 (List!48325 K!9409 (_ BitVec 64) Hashable!4581) Unit!67325)

(assert (=> b!4310410 (= lt!1530903 (lemmaRemovePairForKeyPreservesHash!168 lt!1530902 key!2048 lt!1530905 (hashF!6703 thiss!42308)))))

(assert (=> b!4310410 (allKeysSameHash!188 lt!1530902 lt!1530905 (hashF!6703 thiss!42308))))

(declare-fun lt!1530898 () Unit!67325)

(declare-fun lemmaInLongMapAllKeySameHashThenForTuple!175 (List!48326 (_ BitVec 64) List!48325 Hashable!4581) Unit!67325)

(assert (=> b!4310410 (= lt!1530898 (lemmaInLongMapAllKeySameHashThenForTuple!175 (toList!2407 lt!1530899) lt!1530905 lt!1530902 (hashF!6703 thiss!42308)))))

(assert (= (and start!414244 res!1766565) b!4310401))

(assert (= (and b!4310401 res!1766566) b!4310403))

(assert (= (and b!4310403 res!1766564) b!4310408))

(assert (= (and b!4310408 res!1766567) b!4310410))

(assert (= (and b!4310404 condMapEmpty!20831) mapIsEmpty!20831))

(assert (= (and b!4310404 (not condMapEmpty!20831)) mapNonEmpty!20831))

(assert (= b!4310402 b!4310404))

(assert (= b!4310409 b!4310402))

(assert (= b!4310407 b!4310409))

(assert (= (and b!4310406 ((_ is LongMap!4665) (v!42352 (underlying!9560 thiss!42308)))) b!4310407))

(assert (= b!4310405 b!4310406))

(assert (= (and start!414244 ((_ is HashMap!4571) thiss!42308)) b!4310405))

(declare-fun m!4903315 () Bool)

(assert (=> mapNonEmpty!20831 m!4903315))

(declare-fun m!4903317 () Bool)

(assert (=> b!4310401 m!4903317))

(declare-fun m!4903319 () Bool)

(assert (=> b!4310408 m!4903319))

(declare-fun m!4903321 () Bool)

(assert (=> b!4310408 m!4903321))

(declare-fun m!4903323 () Bool)

(assert (=> b!4310408 m!4903323))

(declare-fun m!4903325 () Bool)

(assert (=> b!4310408 m!4903325))

(declare-fun m!4903327 () Bool)

(assert (=> b!4310403 m!4903327))

(declare-fun m!4903329 () Bool)

(assert (=> b!4310403 m!4903329))

(declare-fun m!4903331 () Bool)

(assert (=> b!4310403 m!4903331))

(declare-fun m!4903333 () Bool)

(assert (=> b!4310410 m!4903333))

(declare-fun m!4903335 () Bool)

(assert (=> b!4310410 m!4903335))

(declare-fun m!4903337 () Bool)

(assert (=> b!4310410 m!4903337))

(declare-fun m!4903339 () Bool)

(assert (=> b!4310410 m!4903339))

(declare-fun m!4903341 () Bool)

(assert (=> b!4310410 m!4903341))

(declare-fun m!4903343 () Bool)

(assert (=> b!4310402 m!4903343))

(declare-fun m!4903345 () Bool)

(assert (=> b!4310402 m!4903345))

(check-sat (not b_next!129323) (not b!4310401) tp_is_empty!23767 (not b!4310404) b_and!340049 (not b!4310410) tp_is_empty!23765 (not mapNonEmpty!20831) (not b!4310408) (not b_next!129325) (not b!4310402) b_and!340051 (not b!4310403))
(check-sat b_and!340049 b_and!340051 (not b_next!129325) (not b_next!129323))
(get-model)

(declare-fun d!1268053 () Bool)

(assert (=> d!1268053 (= (array_inv!5395 (_keys!4965 (v!42351 (underlying!9559 (v!42352 (underlying!9560 thiss!42308)))))) (bvsge (size!35554 (_keys!4965 (v!42351 (underlying!9559 (v!42352 (underlying!9560 thiss!42308)))))) #b00000000000000000000000000000000))))

(assert (=> b!4310402 d!1268053))

(declare-fun d!1268055 () Bool)

(assert (=> d!1268055 (= (array_inv!5396 (_values!4946 (v!42351 (underlying!9559 (v!42352 (underlying!9560 thiss!42308)))))) (bvsge (size!35555 (_values!4946 (v!42351 (underlying!9559 (v!42352 (underlying!9560 thiss!42308)))))) #b00000000000000000000000000000000))))

(assert (=> b!4310402 d!1268055))

(declare-fun e!2680753 () Bool)

(declare-fun lt!1530947 () (_ BitVec 64))

(declare-fun b!4310433 () Bool)

(declare-datatypes ((Option!10231 0))(
  ( (None!10230) (Some!10230 (v!42357 tuple2!46654)) )
))
(declare-fun isDefined!7533 (Option!10231) Bool)

(declare-fun getPair!134 (List!48325 K!9409) Option!10231)

(assert (=> b!4310433 (= e!2680753 (isDefined!7533 (getPair!134 (apply!11018 (v!42352 (underlying!9560 thiss!42308)) lt!1530947) key!2048)))))

(declare-fun b!4310434 () Bool)

(declare-fun e!2680754 () Bool)

(declare-fun call!297961 () Bool)

(assert (=> b!4310434 (= e!2680754 call!297961)))

(declare-fun bm!297954 () Bool)

(declare-fun call!297960 () (_ BitVec 64))

(assert (=> bm!297954 (= call!297960 (hash!1009 (hashF!6703 thiss!42308) key!2048))))

(declare-fun b!4310435 () Bool)

(declare-fun e!2680749 () Unit!67325)

(declare-fun lt!1530952 () Unit!67325)

(assert (=> b!4310435 (= e!2680749 lt!1530952)))

(declare-fun lt!1530949 () ListLongMap!1019)

(declare-fun call!297962 () ListLongMap!1019)

(assert (=> b!4310435 (= lt!1530949 call!297962)))

(declare-fun lemmaInGenericMapThenInLongMap!134 (ListLongMap!1019 K!9409 Hashable!4581) Unit!67325)

(assert (=> b!4310435 (= lt!1530952 (lemmaInGenericMapThenInLongMap!134 lt!1530949 key!2048 (hashF!6703 thiss!42308)))))

(declare-fun res!1766574 () Bool)

(declare-fun call!297964 () Bool)

(assert (=> b!4310435 (= res!1766574 call!297964)))

(declare-fun e!2680748 () Bool)

(assert (=> b!4310435 (=> (not res!1766574) (not e!2680748))))

(assert (=> b!4310435 e!2680748))

(declare-fun b!4310436 () Bool)

(assert (=> b!4310436 false))

(declare-fun lt!1530960 () Unit!67325)

(declare-fun lt!1530962 () Unit!67325)

(assert (=> b!4310436 (= lt!1530960 lt!1530962)))

(declare-fun lt!1530964 () List!48326)

(declare-fun lt!1530958 () List!48325)

(declare-fun contains!10178 (List!48326 tuple2!46656) Bool)

(assert (=> b!4310436 (contains!10178 lt!1530964 (tuple2!46657 lt!1530947 lt!1530958))))

(declare-fun lemmaGetValueByKeyImpliesContainsTuple!145 (List!48326 (_ BitVec 64) List!48325) Unit!67325)

(assert (=> b!4310436 (= lt!1530962 (lemmaGetValueByKeyImpliesContainsTuple!145 lt!1530964 lt!1530947 lt!1530958))))

(assert (=> b!4310436 (= lt!1530958 (apply!11018 (v!42352 (underlying!9560 thiss!42308)) lt!1530947))))

(assert (=> b!4310436 (= lt!1530964 (toList!2407 (map!10193 (v!42352 (underlying!9560 thiss!42308)))))))

(declare-fun lt!1530956 () Unit!67325)

(declare-fun lt!1530961 () Unit!67325)

(assert (=> b!4310436 (= lt!1530956 lt!1530961)))

(declare-fun lt!1530951 () List!48326)

(declare-datatypes ((Option!10232 0))(
  ( (None!10231) (Some!10231 (v!42358 List!48325)) )
))
(declare-fun isDefined!7534 (Option!10232) Bool)

(declare-fun getValueByKey!256 (List!48326 (_ BitVec 64)) Option!10232)

(assert (=> b!4310436 (isDefined!7534 (getValueByKey!256 lt!1530951 lt!1530947))))

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!176 (List!48326 (_ BitVec 64)) Unit!67325)

(assert (=> b!4310436 (= lt!1530961 (lemmaContainsKeyImpliesGetValueByKeyDefined!176 lt!1530951 lt!1530947))))

(assert (=> b!4310436 (= lt!1530951 (toList!2407 (map!10193 (v!42352 (underlying!9560 thiss!42308)))))))

(declare-fun lt!1530946 () Unit!67325)

(declare-fun lt!1530953 () Unit!67325)

(assert (=> b!4310436 (= lt!1530946 lt!1530953)))

(declare-fun lt!1530955 () List!48326)

(declare-fun containsKey!314 (List!48326 (_ BitVec 64)) Bool)

(assert (=> b!4310436 (containsKey!314 lt!1530955 lt!1530947)))

(declare-fun lemmaGetValueByKeyIsDefinedImpliesContainsKey!135 (List!48326 (_ BitVec 64)) Unit!67325)

(assert (=> b!4310436 (= lt!1530953 (lemmaGetValueByKeyIsDefinedImpliesContainsKey!135 lt!1530955 lt!1530947))))

(assert (=> b!4310436 (= lt!1530955 (toList!2407 (map!10193 (v!42352 (underlying!9560 thiss!42308)))))))

(declare-fun e!2680751 () Unit!67325)

(declare-fun Unit!67327 () Unit!67325)

(assert (=> b!4310436 (= e!2680751 Unit!67327)))

(declare-fun bm!297955 () Bool)

(declare-fun c!732859 () Bool)

(declare-fun call!297959 () List!48325)

(declare-fun apply!11019 (ListLongMap!1019 (_ BitVec 64)) List!48325)

(assert (=> bm!297955 (= call!297959 (apply!11019 (ite c!732859 lt!1530949 call!297962) call!297960))))

(declare-fun b!4310437 () Bool)

(declare-fun e!2680750 () Unit!67325)

(assert (=> b!4310437 (= e!2680749 e!2680750)))

(declare-fun res!1766576 () Bool)

(assert (=> b!4310437 (= res!1766576 call!297964)))

(assert (=> b!4310437 (=> (not res!1766576) (not e!2680754))))

(declare-fun c!732861 () Bool)

(assert (=> b!4310437 (= c!732861 e!2680754)))

(declare-fun bm!297956 () Bool)

(declare-fun call!297963 () Option!10231)

(assert (=> bm!297956 (= call!297961 (isDefined!7533 call!297963))))

(declare-fun d!1268057 () Bool)

(declare-fun lt!1530950 () Bool)

(declare-fun contains!10179 (ListMap!1689 K!9409) Bool)

(assert (=> d!1268057 (= lt!1530950 (contains!10179 (map!10194 thiss!42308) key!2048))))

(assert (=> d!1268057 (= lt!1530950 e!2680753)))

(declare-fun res!1766575 () Bool)

(assert (=> d!1268057 (=> (not res!1766575) (not e!2680753))))

(declare-fun contains!10180 (MutLongMap!4665 (_ BitVec 64)) Bool)

(assert (=> d!1268057 (= res!1766575 (contains!10180 (v!42352 (underlying!9560 thiss!42308)) lt!1530947))))

(declare-fun lt!1530959 () Unit!67325)

(assert (=> d!1268057 (= lt!1530959 e!2680749)))

(declare-fun extractMap!329 (List!48326) ListMap!1689)

(assert (=> d!1268057 (= c!732859 (contains!10179 (extractMap!329 (toList!2407 (map!10193 (v!42352 (underlying!9560 thiss!42308))))) key!2048))))

(declare-fun lt!1530948 () Unit!67325)

(declare-fun e!2680752 () Unit!67325)

(assert (=> d!1268057 (= lt!1530948 e!2680752)))

(declare-fun c!732858 () Bool)

(assert (=> d!1268057 (= c!732858 (contains!10180 (v!42352 (underlying!9560 thiss!42308)) lt!1530947))))

(assert (=> d!1268057 (= lt!1530947 (hash!1009 (hashF!6703 thiss!42308) key!2048))))

(assert (=> d!1268057 (valid!3654 thiss!42308)))

(assert (=> d!1268057 (= (contains!10177 thiss!42308 key!2048) lt!1530950)))

(declare-fun bm!297957 () Bool)

(declare-fun contains!10181 (ListLongMap!1019 (_ BitVec 64)) Bool)

(assert (=> bm!297957 (= call!297964 (contains!10181 (ite c!732859 lt!1530949 call!297962) call!297960))))

(declare-fun bm!297958 () Bool)

(assert (=> bm!297958 (= call!297962 (map!10193 (v!42352 (underlying!9560 thiss!42308))))))

(declare-fun bm!297959 () Bool)

(assert (=> bm!297959 (= call!297963 (getPair!134 call!297959 key!2048))))

(declare-fun b!4310438 () Bool)

(declare-fun lambda!132925 () Int)

(declare-fun forallContained!1501 (List!48326 Int tuple2!46656) Unit!67325)

(assert (=> b!4310438 (= e!2680752 (forallContained!1501 (toList!2407 (map!10193 (v!42352 (underlying!9560 thiss!42308)))) lambda!132925 (tuple2!46657 lt!1530947 (apply!11018 (v!42352 (underlying!9560 thiss!42308)) lt!1530947))))))

(declare-fun c!732860 () Bool)

(assert (=> b!4310438 (= c!732860 (not (contains!10178 (toList!2407 (map!10193 (v!42352 (underlying!9560 thiss!42308)))) (tuple2!46657 lt!1530947 (apply!11018 (v!42352 (underlying!9560 thiss!42308)) lt!1530947)))))))

(declare-fun lt!1530957 () Unit!67325)

(assert (=> b!4310438 (= lt!1530957 e!2680751)))

(declare-fun b!4310439 () Bool)

(assert (=> b!4310439 false))

(declare-fun lt!1530965 () Unit!67325)

(declare-fun lt!1530954 () Unit!67325)

(assert (=> b!4310439 (= lt!1530965 lt!1530954)))

(declare-fun lt!1530963 () ListLongMap!1019)

(assert (=> b!4310439 (contains!10179 (extractMap!329 (toList!2407 lt!1530963)) key!2048)))

(declare-fun lemmaInLongMapThenInGenericMap!134 (ListLongMap!1019 K!9409 Hashable!4581) Unit!67325)

(assert (=> b!4310439 (= lt!1530954 (lemmaInLongMapThenInGenericMap!134 lt!1530963 key!2048 (hashF!6703 thiss!42308)))))

(assert (=> b!4310439 (= lt!1530963 call!297962)))

(declare-fun Unit!67328 () Unit!67325)

(assert (=> b!4310439 (= e!2680750 Unit!67328)))

(declare-fun b!4310440 () Bool)

(assert (=> b!4310440 (= e!2680748 call!297961)))

(declare-fun b!4310441 () Bool)

(declare-fun Unit!67329 () Unit!67325)

(assert (=> b!4310441 (= e!2680750 Unit!67329)))

(declare-fun b!4310442 () Bool)

(declare-fun Unit!67330 () Unit!67325)

(assert (=> b!4310442 (= e!2680752 Unit!67330)))

(declare-fun b!4310443 () Bool)

(declare-fun Unit!67331 () Unit!67325)

(assert (=> b!4310443 (= e!2680751 Unit!67331)))

(assert (= (and d!1268057 c!732858) b!4310438))

(assert (= (and d!1268057 (not c!732858)) b!4310442))

(assert (= (and b!4310438 c!732860) b!4310436))

(assert (= (and b!4310438 (not c!732860)) b!4310443))

(assert (= (and d!1268057 c!732859) b!4310435))

(assert (= (and d!1268057 (not c!732859)) b!4310437))

(assert (= (and b!4310435 res!1766574) b!4310440))

(assert (= (and b!4310437 res!1766576) b!4310434))

(assert (= (and b!4310437 c!732861) b!4310439))

(assert (= (and b!4310437 (not c!732861)) b!4310441))

(assert (= (or b!4310435 b!4310437 b!4310434 b!4310439) bm!297958))

(assert (= (or b!4310435 b!4310440 b!4310437 b!4310434) bm!297954))

(assert (= (or b!4310440 b!4310434) bm!297955))

(assert (= (or b!4310435 b!4310437) bm!297957))

(assert (= (or b!4310440 b!4310434) bm!297959))

(assert (= (or b!4310440 b!4310434) bm!297956))

(assert (= (and d!1268057 res!1766575) b!4310433))

(declare-fun m!4903347 () Bool)

(assert (=> bm!297959 m!4903347))

(declare-fun m!4903349 () Bool)

(assert (=> b!4310433 m!4903349))

(assert (=> b!4310433 m!4903349))

(declare-fun m!4903351 () Bool)

(assert (=> b!4310433 m!4903351))

(assert (=> b!4310433 m!4903351))

(declare-fun m!4903353 () Bool)

(assert (=> b!4310433 m!4903353))

(assert (=> d!1268057 m!4903329))

(assert (=> d!1268057 m!4903325))

(declare-fun m!4903355 () Bool)

(assert (=> d!1268057 m!4903355))

(declare-fun m!4903357 () Bool)

(assert (=> d!1268057 m!4903357))

(assert (=> d!1268057 m!4903317))

(assert (=> d!1268057 m!4903331))

(declare-fun m!4903359 () Bool)

(assert (=> d!1268057 m!4903359))

(assert (=> d!1268057 m!4903331))

(assert (=> d!1268057 m!4903355))

(declare-fun m!4903361 () Bool)

(assert (=> d!1268057 m!4903361))

(declare-fun m!4903363 () Bool)

(assert (=> bm!297957 m!4903363))

(assert (=> bm!297954 m!4903325))

(assert (=> b!4310438 m!4903329))

(assert (=> b!4310438 m!4903349))

(declare-fun m!4903365 () Bool)

(assert (=> b!4310438 m!4903365))

(declare-fun m!4903367 () Bool)

(assert (=> b!4310438 m!4903367))

(declare-fun m!4903369 () Bool)

(assert (=> b!4310435 m!4903369))

(assert (=> bm!297958 m!4903329))

(declare-fun m!4903371 () Bool)

(assert (=> bm!297956 m!4903371))

(assert (=> b!4310436 m!4903329))

(declare-fun m!4903373 () Bool)

(assert (=> b!4310436 m!4903373))

(declare-fun m!4903375 () Bool)

(assert (=> b!4310436 m!4903375))

(declare-fun m!4903377 () Bool)

(assert (=> b!4310436 m!4903377))

(declare-fun m!4903379 () Bool)

(assert (=> b!4310436 m!4903379))

(assert (=> b!4310436 m!4903349))

(assert (=> b!4310436 m!4903377))

(declare-fun m!4903381 () Bool)

(assert (=> b!4310436 m!4903381))

(declare-fun m!4903383 () Bool)

(assert (=> b!4310436 m!4903383))

(declare-fun m!4903385 () Bool)

(assert (=> b!4310436 m!4903385))

(declare-fun m!4903387 () Bool)

(assert (=> b!4310439 m!4903387))

(assert (=> b!4310439 m!4903387))

(declare-fun m!4903389 () Bool)

(assert (=> b!4310439 m!4903389))

(declare-fun m!4903391 () Bool)

(assert (=> b!4310439 m!4903391))

(declare-fun m!4903393 () Bool)

(assert (=> bm!297955 m!4903393))

(assert (=> b!4310403 d!1268057))

(declare-fun d!1268059 () Bool)

(declare-fun map!10195 (LongMapFixedSize!9330) ListLongMap!1019)

(assert (=> d!1268059 (= (map!10193 (v!42352 (underlying!9560 thiss!42308))) (map!10195 (v!42351 (underlying!9559 (v!42352 (underlying!9560 thiss!42308))))))))

(declare-fun bs!605061 () Bool)

(assert (= bs!605061 d!1268059))

(declare-fun m!4903395 () Bool)

(assert (=> bs!605061 m!4903395))

(assert (=> b!4310403 d!1268059))

(declare-fun d!1268061 () Bool)

(declare-fun lt!1530968 () ListMap!1689)

(declare-fun invariantList!573 (List!48325) Bool)

(assert (=> d!1268061 (invariantList!573 (toList!2408 lt!1530968))))

(assert (=> d!1268061 (= lt!1530968 (extractMap!329 (toList!2407 (map!10193 (v!42352 (underlying!9560 thiss!42308))))))))

(assert (=> d!1268061 (valid!3654 thiss!42308)))

(assert (=> d!1268061 (= (map!10194 thiss!42308) lt!1530968)))

(declare-fun bs!605062 () Bool)

(assert (= bs!605062 d!1268061))

(declare-fun m!4903397 () Bool)

(assert (=> bs!605062 m!4903397))

(assert (=> bs!605062 m!4903329))

(assert (=> bs!605062 m!4903355))

(assert (=> bs!605062 m!4903317))

(assert (=> b!4310403 d!1268061))

(declare-fun b!4310462 () Bool)

(declare-fun e!2680768 () Bool)

(declare-fun e!2680765 () Bool)

(assert (=> b!4310462 (= e!2680768 e!2680765)))

(declare-fun c!732869 () Bool)

(declare-fun lt!1530977 () tuple2!46658)

(assert (=> b!4310462 (= c!732869 (_1!26609 lt!1530977))))

(declare-fun b!4310463 () Bool)

(declare-fun e!2680766 () tuple2!46658)

(declare-fun lt!1530978 () tuple2!46658)

(assert (=> b!4310463 (= e!2680766 (tuple2!46659 false (_2!26609 lt!1530978)))))

(declare-fun b!4310464 () Bool)

(declare-fun e!2680767 () Bool)

(assert (=> b!4310464 (= e!2680765 e!2680767)))

(declare-fun res!1766584 () Bool)

(declare-fun call!297969 () ListLongMap!1019)

(assert (=> b!4310464 (= res!1766584 (contains!10181 call!297969 lt!1530905))))

(assert (=> b!4310464 (=> (not res!1766584) (not e!2680767))))

(declare-fun bm!297964 () Bool)

(assert (=> bm!297964 (= call!297969 (map!10193 (_2!26609 lt!1530977)))))

(declare-fun b!4310465 () Bool)

(declare-fun call!297970 () ListLongMap!1019)

(declare-fun +!269 (ListLongMap!1019 tuple2!46656) ListLongMap!1019)

(assert (=> b!4310465 (= e!2680767 (= call!297969 (+!269 call!297970 (tuple2!46657 lt!1530905 (Cons!48201 (tuple2!46655 key!2048 v!9179) lt!1530904)))))))

(declare-fun d!1268063 () Bool)

(assert (=> d!1268063 e!2680768))

(declare-fun res!1766585 () Bool)

(assert (=> d!1268063 (=> (not res!1766585) (not e!2680768))))

(assert (=> d!1268063 (= res!1766585 ((_ is LongMap!4665) (_2!26609 lt!1530977)))))

(assert (=> d!1268063 (= lt!1530977 e!2680766)))

(declare-fun c!732868 () Bool)

(assert (=> d!1268063 (= c!732868 (_1!26609 lt!1530978))))

(declare-fun e!2680769 () tuple2!46658)

(assert (=> d!1268063 (= lt!1530978 e!2680769)))

(declare-fun c!732870 () Bool)

(declare-fun imbalanced!52 (MutLongMap!4665) Bool)

(assert (=> d!1268063 (= c!732870 (imbalanced!52 (v!42352 (underlying!9560 thiss!42308))))))

(declare-fun valid!3655 (MutLongMap!4665) Bool)

(assert (=> d!1268063 (valid!3655 (v!42352 (underlying!9560 thiss!42308)))))

(assert (=> d!1268063 (= (update!438 (v!42352 (underlying!9560 thiss!42308)) lt!1530905 (Cons!48201 (tuple2!46655 key!2048 v!9179) lt!1530904)) lt!1530977)))

(declare-fun b!4310466 () Bool)

(assert (=> b!4310466 (= e!2680769 (tuple2!46659 true (v!42352 (underlying!9560 thiss!42308))))))

(declare-fun b!4310467 () Bool)

(declare-fun lt!1530980 () tuple2!46658)

(assert (=> b!4310467 (= e!2680769 (tuple2!46659 (_1!26609 lt!1530980) (_2!26609 lt!1530980)))))

(declare-fun repack!56 (MutLongMap!4665) tuple2!46658)

(assert (=> b!4310467 (= lt!1530980 (repack!56 (v!42352 (underlying!9560 thiss!42308))))))

(declare-fun b!4310468 () Bool)

(declare-fun res!1766583 () Bool)

(assert (=> b!4310468 (=> (not res!1766583) (not e!2680768))))

(assert (=> b!4310468 (= res!1766583 (valid!3655 (_2!26609 lt!1530977)))))

(declare-fun b!4310469 () Bool)

(assert (=> b!4310469 (= e!2680765 (= call!297969 call!297970))))

(declare-fun bm!297965 () Bool)

(assert (=> bm!297965 (= call!297970 (map!10193 (v!42352 (underlying!9560 thiss!42308))))))

(declare-fun b!4310470 () Bool)

(declare-datatypes ((tuple2!46660 0))(
  ( (tuple2!46661 (_1!26610 Bool) (_2!26610 LongMapFixedSize!9330)) )
))
(declare-fun lt!1530979 () tuple2!46660)

(assert (=> b!4310470 (= e!2680766 (tuple2!46659 (_1!26610 lt!1530979) (LongMap!4665 (Cell!18470 (_2!26610 lt!1530979)))))))

(declare-fun update!439 (LongMapFixedSize!9330 (_ BitVec 64) List!48325) tuple2!46660)

(assert (=> b!4310470 (= lt!1530979 (update!439 (v!42351 (underlying!9559 (_2!26609 lt!1530978))) lt!1530905 (Cons!48201 (tuple2!46655 key!2048 v!9179) lt!1530904)))))

(assert (= (and d!1268063 c!732870) b!4310467))

(assert (= (and d!1268063 (not c!732870)) b!4310466))

(assert (= (and d!1268063 c!732868) b!4310470))

(assert (= (and d!1268063 (not c!732868)) b!4310463))

(assert (= (and d!1268063 res!1766585) b!4310468))

(assert (= (and b!4310468 res!1766583) b!4310462))

(assert (= (and b!4310462 c!732869) b!4310464))

(assert (= (and b!4310462 (not c!732869)) b!4310469))

(assert (= (and b!4310464 res!1766584) b!4310465))

(assert (= (or b!4310465 b!4310469) bm!297965))

(assert (= (or b!4310464 b!4310465 b!4310469) bm!297964))

(declare-fun m!4903399 () Bool)

(assert (=> b!4310470 m!4903399))

(declare-fun m!4903401 () Bool)

(assert (=> b!4310468 m!4903401))

(assert (=> bm!297965 m!4903329))

(declare-fun m!4903403 () Bool)

(assert (=> b!4310467 m!4903403))

(declare-fun m!4903405 () Bool)

(assert (=> bm!297964 m!4903405))

(declare-fun m!4903407 () Bool)

(assert (=> d!1268063 m!4903407))

(declare-fun m!4903409 () Bool)

(assert (=> d!1268063 m!4903409))

(declare-fun m!4903411 () Bool)

(assert (=> b!4310465 m!4903411))

(declare-fun m!4903413 () Bool)

(assert (=> b!4310464 m!4903413))

(assert (=> b!4310408 d!1268063))

(declare-fun b!4310480 () Bool)

(declare-fun e!2680775 () List!48325)

(declare-fun e!2680774 () List!48325)

(assert (=> b!4310480 (= e!2680775 e!2680774)))

(declare-fun c!732876 () Bool)

(assert (=> b!4310480 (= c!732876 ((_ is Cons!48201) lt!1530902))))

(declare-fun b!4310479 () Bool)

(assert (=> b!4310479 (= e!2680775 (t!355134 lt!1530902))))

(declare-fun b!4310481 () Bool)

(assert (=> b!4310481 (= e!2680774 (Cons!48201 (h!53637 lt!1530902) (removePairForKey!213 (t!355134 lt!1530902) key!2048)))))

(declare-fun b!4310482 () Bool)

(assert (=> b!4310482 (= e!2680774 Nil!48201)))

(declare-fun d!1268065 () Bool)

(declare-fun lt!1530983 () List!48325)

(declare-fun containsKey!315 (List!48325 K!9409) Bool)

(assert (=> d!1268065 (not (containsKey!315 lt!1530983 key!2048))))

(assert (=> d!1268065 (= lt!1530983 e!2680775)))

(declare-fun c!732875 () Bool)

(assert (=> d!1268065 (= c!732875 (and ((_ is Cons!48201) lt!1530902) (= (_1!26607 (h!53637 lt!1530902)) key!2048)))))

(assert (=> d!1268065 (noDuplicateKeys!212 lt!1530902)))

(assert (=> d!1268065 (= (removePairForKey!213 lt!1530902 key!2048) lt!1530983)))

(assert (= (and d!1268065 c!732875) b!4310479))

(assert (= (and d!1268065 (not c!732875)) b!4310480))

(assert (= (and b!4310480 c!732876) b!4310481))

(assert (= (and b!4310480 (not c!732876)) b!4310482))

(declare-fun m!4903415 () Bool)

(assert (=> b!4310481 m!4903415))

(declare-fun m!4903417 () Bool)

(assert (=> d!1268065 m!4903417))

(assert (=> d!1268065 m!4903333))

(assert (=> b!4310408 d!1268065))

(declare-fun d!1268067 () Bool)

(declare-fun e!2680778 () Bool)

(assert (=> d!1268067 e!2680778))

(declare-fun c!732879 () Bool)

(assert (=> d!1268067 (= c!732879 (contains!10180 (v!42352 (underlying!9560 thiss!42308)) lt!1530905))))

(declare-fun lt!1530986 () List!48325)

(declare-fun apply!11020 (LongMapFixedSize!9330 (_ BitVec 64)) List!48325)

(assert (=> d!1268067 (= lt!1530986 (apply!11020 (v!42351 (underlying!9559 (v!42352 (underlying!9560 thiss!42308)))) lt!1530905))))

(assert (=> d!1268067 (valid!3655 (v!42352 (underlying!9560 thiss!42308)))))

(assert (=> d!1268067 (= (apply!11018 (v!42352 (underlying!9560 thiss!42308)) lt!1530905) lt!1530986)))

(declare-fun b!4310487 () Bool)

(declare-fun get!15597 (Option!10232) List!48325)

(assert (=> b!4310487 (= e!2680778 (= lt!1530986 (get!15597 (getValueByKey!256 (toList!2407 (map!10193 (v!42352 (underlying!9560 thiss!42308)))) lt!1530905))))))

(declare-fun b!4310488 () Bool)

(declare-fun dynLambda!20439 (Int (_ BitVec 64)) List!48325)

(assert (=> b!4310488 (= e!2680778 (= lt!1530986 (dynLambda!20439 (defaultEntry!5050 (v!42351 (underlying!9559 (v!42352 (underlying!9560 thiss!42308))))) lt!1530905)))))

(assert (=> b!4310488 ((_ is LongMap!4665) (v!42352 (underlying!9560 thiss!42308)))))

(assert (= (and d!1268067 c!732879) b!4310487))

(assert (= (and d!1268067 (not c!732879)) b!4310488))

(declare-fun b_lambda!126635 () Bool)

(assert (=> (not b_lambda!126635) (not b!4310488)))

(declare-fun t!355137 () Bool)

(declare-fun tb!257295 () Bool)

(assert (=> (and b!4310402 (= (defaultEntry!5050 (v!42351 (underlying!9559 (v!42352 (underlying!9560 thiss!42308))))) (defaultEntry!5050 (v!42351 (underlying!9559 (v!42352 (underlying!9560 thiss!42308)))))) t!355137) tb!257295))

(assert (=> b!4310488 t!355137))

(declare-fun result!314696 () Bool)

(declare-fun b_and!340053 () Bool)

(assert (= b_and!340049 (and (=> t!355137 result!314696) b_and!340053)))

(declare-fun m!4903419 () Bool)

(assert (=> d!1268067 m!4903419))

(declare-fun m!4903421 () Bool)

(assert (=> d!1268067 m!4903421))

(assert (=> d!1268067 m!4903409))

(assert (=> b!4310487 m!4903329))

(declare-fun m!4903423 () Bool)

(assert (=> b!4310487 m!4903423))

(assert (=> b!4310487 m!4903423))

(declare-fun m!4903425 () Bool)

(assert (=> b!4310487 m!4903425))

(declare-fun m!4903427 () Bool)

(assert (=> b!4310488 m!4903427))

(assert (=> b!4310408 d!1268067))

(declare-fun d!1268069 () Bool)

(declare-fun hash!1012 (Hashable!4581 K!9409) (_ BitVec 64))

(assert (=> d!1268069 (= (hash!1009 (hashF!6703 thiss!42308) key!2048) (hash!1012 (hashF!6703 thiss!42308) key!2048))))

(declare-fun bs!605063 () Bool)

(assert (= bs!605063 d!1268069))

(declare-fun m!4903429 () Bool)

(assert (=> bs!605063 m!4903429))

(assert (=> b!4310408 d!1268069))

(declare-fun bs!605064 () Bool)

(declare-fun b!4310493 () Bool)

(assert (= bs!605064 (and b!4310493 b!4310438)))

(declare-fun lambda!132928 () Int)

(assert (=> bs!605064 (= lambda!132928 lambda!132925)))

(declare-fun d!1268071 () Bool)

(declare-fun res!1766590 () Bool)

(declare-fun e!2680781 () Bool)

(assert (=> d!1268071 (=> (not res!1766590) (not e!2680781))))

(assert (=> d!1268071 (= res!1766590 (valid!3655 (v!42352 (underlying!9560 thiss!42308))))))

(assert (=> d!1268071 (= (valid!3654 thiss!42308) e!2680781)))

(declare-fun res!1766591 () Bool)

(assert (=> b!4310493 (=> (not res!1766591) (not e!2680781))))

(declare-fun forall!8732 (List!48326 Int) Bool)

(assert (=> b!4310493 (= res!1766591 (forall!8732 (toList!2407 (map!10193 (v!42352 (underlying!9560 thiss!42308)))) lambda!132928))))

(declare-fun b!4310494 () Bool)

(declare-fun allKeysSameHashInMap!337 (ListLongMap!1019 Hashable!4581) Bool)

(assert (=> b!4310494 (= e!2680781 (allKeysSameHashInMap!337 (map!10193 (v!42352 (underlying!9560 thiss!42308))) (hashF!6703 thiss!42308)))))

(assert (= (and d!1268071 res!1766590) b!4310493))

(assert (= (and b!4310493 res!1766591) b!4310494))

(assert (=> d!1268071 m!4903409))

(assert (=> b!4310493 m!4903329))

(declare-fun m!4903431 () Bool)

(assert (=> b!4310493 m!4903431))

(assert (=> b!4310494 m!4903329))

(assert (=> b!4310494 m!4903329))

(declare-fun m!4903433 () Bool)

(assert (=> b!4310494 m!4903433))

(assert (=> b!4310401 d!1268071))

(declare-fun d!1268073 () Bool)

(assert (=> d!1268073 (allKeysSameHash!188 (removePairForKey!213 lt!1530902 key!2048) lt!1530905 (hashF!6703 thiss!42308))))

(declare-fun lt!1530989 () Unit!67325)

(declare-fun choose!26256 (List!48325 K!9409 (_ BitVec 64) Hashable!4581) Unit!67325)

(assert (=> d!1268073 (= lt!1530989 (choose!26256 lt!1530902 key!2048 lt!1530905 (hashF!6703 thiss!42308)))))

(assert (=> d!1268073 (noDuplicateKeys!212 lt!1530902)))

(assert (=> d!1268073 (= (lemmaRemovePairForKeyPreservesHash!168 lt!1530902 key!2048 lt!1530905 (hashF!6703 thiss!42308)) lt!1530989)))

(declare-fun bs!605065 () Bool)

(assert (= bs!605065 d!1268073))

(assert (=> bs!605065 m!4903321))

(assert (=> bs!605065 m!4903321))

(declare-fun m!4903435 () Bool)

(assert (=> bs!605065 m!4903435))

(declare-fun m!4903437 () Bool)

(assert (=> bs!605065 m!4903437))

(assert (=> bs!605065 m!4903333))

(assert (=> b!4310410 d!1268073))

(declare-fun d!1268075 () Bool)

(assert (=> d!1268075 true))

(assert (=> d!1268075 true))

(declare-fun lambda!132931 () Int)

(declare-fun forall!8733 (List!48325 Int) Bool)

(assert (=> d!1268075 (= (allKeysSameHash!188 lt!1530904 lt!1530905 (hashF!6703 thiss!42308)) (forall!8733 lt!1530904 lambda!132931))))

(declare-fun bs!605066 () Bool)

(assert (= bs!605066 d!1268075))

(declare-fun m!4903439 () Bool)

(assert (=> bs!605066 m!4903439))

(assert (=> b!4310410 d!1268075))

(declare-fun d!1268077 () Bool)

(declare-fun res!1766596 () Bool)

(declare-fun e!2680786 () Bool)

(assert (=> d!1268077 (=> res!1766596 e!2680786)))

(assert (=> d!1268077 (= res!1766596 (not ((_ is Cons!48201) lt!1530902)))))

(assert (=> d!1268077 (= (noDuplicateKeys!212 lt!1530902) e!2680786)))

(declare-fun b!4310503 () Bool)

(declare-fun e!2680787 () Bool)

(assert (=> b!4310503 (= e!2680786 e!2680787)))

(declare-fun res!1766597 () Bool)

(assert (=> b!4310503 (=> (not res!1766597) (not e!2680787))))

(assert (=> b!4310503 (= res!1766597 (not (containsKey!315 (t!355134 lt!1530902) (_1!26607 (h!53637 lt!1530902)))))))

(declare-fun b!4310504 () Bool)

(assert (=> b!4310504 (= e!2680787 (noDuplicateKeys!212 (t!355134 lt!1530902)))))

(assert (= (and d!1268077 (not res!1766596)) b!4310503))

(assert (= (and b!4310503 res!1766597) b!4310504))

(declare-fun m!4903441 () Bool)

(assert (=> b!4310503 m!4903441))

(declare-fun m!4903443 () Bool)

(assert (=> b!4310504 m!4903443))

(assert (=> b!4310410 d!1268077))

(declare-fun bs!605067 () Bool)

(declare-fun d!1268079 () Bool)

(assert (= bs!605067 (and d!1268079 d!1268075)))

(declare-fun lambda!132932 () Int)

(assert (=> bs!605067 (= lambda!132932 lambda!132931)))

(assert (=> d!1268079 true))

(assert (=> d!1268079 true))

(assert (=> d!1268079 (= (allKeysSameHash!188 lt!1530902 lt!1530905 (hashF!6703 thiss!42308)) (forall!8733 lt!1530902 lambda!132932))))

(declare-fun bs!605068 () Bool)

(assert (= bs!605068 d!1268079))

(declare-fun m!4903445 () Bool)

(assert (=> bs!605068 m!4903445))

(assert (=> b!4310410 d!1268079))

(declare-fun bs!605069 () Bool)

(declare-fun d!1268081 () Bool)

(assert (= bs!605069 (and d!1268081 b!4310438)))

(declare-fun lambda!132935 () Int)

(assert (=> bs!605069 (not (= lambda!132935 lambda!132925))))

(declare-fun bs!605070 () Bool)

(assert (= bs!605070 (and d!1268081 b!4310493)))

(assert (=> bs!605070 (not (= lambda!132935 lambda!132928))))

(assert (=> d!1268081 true))

(assert (=> d!1268081 (allKeysSameHash!188 lt!1530902 lt!1530905 (hashF!6703 thiss!42308))))

(declare-fun lt!1530992 () Unit!67325)

(declare-fun choose!26257 (List!48326 (_ BitVec 64) List!48325 Hashable!4581) Unit!67325)

(assert (=> d!1268081 (= lt!1530992 (choose!26257 (toList!2407 lt!1530899) lt!1530905 lt!1530902 (hashF!6703 thiss!42308)))))

(assert (=> d!1268081 (forall!8732 (toList!2407 lt!1530899) lambda!132935)))

(assert (=> d!1268081 (= (lemmaInLongMapAllKeySameHashThenForTuple!175 (toList!2407 lt!1530899) lt!1530905 lt!1530902 (hashF!6703 thiss!42308)) lt!1530992)))

(declare-fun bs!605071 () Bool)

(assert (= bs!605071 d!1268081))

(assert (=> bs!605071 m!4903337))

(declare-fun m!4903447 () Bool)

(assert (=> bs!605071 m!4903447))

(declare-fun m!4903449 () Bool)

(assert (=> bs!605071 m!4903449))

(assert (=> b!4310410 d!1268081))

(declare-fun tp!1324602 () Bool)

(declare-fun b!4310511 () Bool)

(declare-fun e!2680790 () Bool)

(assert (=> b!4310511 (= e!2680790 (and tp_is_empty!23765 tp_is_empty!23767 tp!1324602))))

(assert (=> b!4310402 (= tp!1324598 e!2680790)))

(assert (= (and b!4310402 ((_ is Cons!48201) (zeroValue!4924 (v!42351 (underlying!9559 (v!42352 (underlying!9560 thiss!42308))))))) b!4310511))

(declare-fun e!2680791 () Bool)

(declare-fun tp!1324603 () Bool)

(declare-fun b!4310512 () Bool)

(assert (=> b!4310512 (= e!2680791 (and tp_is_empty!23765 tp_is_empty!23767 tp!1324603))))

(assert (=> b!4310402 (= tp!1324599 e!2680791)))

(assert (= (and b!4310402 ((_ is Cons!48201) (minValue!4924 (v!42351 (underlying!9559 (v!42352 (underlying!9560 thiss!42308))))))) b!4310512))

(declare-fun e!2680792 () Bool)

(declare-fun tp!1324604 () Bool)

(declare-fun b!4310513 () Bool)

(assert (=> b!4310513 (= e!2680792 (and tp_is_empty!23765 tp_is_empty!23767 tp!1324604))))

(assert (=> b!4310404 (= tp!1324596 e!2680792)))

(assert (= (and b!4310404 ((_ is Cons!48201) mapDefault!20831)) b!4310513))

(declare-fun mapIsEmpty!20834 () Bool)

(declare-fun mapRes!20834 () Bool)

(assert (=> mapIsEmpty!20834 mapRes!20834))

(declare-fun tp!1324612 () Bool)

(declare-fun e!2680797 () Bool)

(declare-fun b!4310521 () Bool)

(assert (=> b!4310521 (= e!2680797 (and tp_is_empty!23765 tp_is_empty!23767 tp!1324612))))

(declare-fun mapNonEmpty!20834 () Bool)

(declare-fun tp!1324611 () Bool)

(declare-fun e!2680798 () Bool)

(assert (=> mapNonEmpty!20834 (= mapRes!20834 (and tp!1324611 e!2680798))))

(declare-fun mapValue!20834 () List!48325)

(declare-fun mapRest!20834 () (Array (_ BitVec 32) List!48325))

(declare-fun mapKey!20834 () (_ BitVec 32))

(assert (=> mapNonEmpty!20834 (= mapRest!20831 (store mapRest!20834 mapKey!20834 mapValue!20834))))

(declare-fun condMapEmpty!20834 () Bool)

(declare-fun mapDefault!20834 () List!48325)

(assert (=> mapNonEmpty!20831 (= condMapEmpty!20834 (= mapRest!20831 ((as const (Array (_ BitVec 32) List!48325)) mapDefault!20834)))))

(assert (=> mapNonEmpty!20831 (= tp!1324595 (and e!2680797 mapRes!20834))))

(declare-fun tp!1324613 () Bool)

(declare-fun b!4310520 () Bool)

(assert (=> b!4310520 (= e!2680798 (and tp_is_empty!23765 tp_is_empty!23767 tp!1324613))))

(assert (= (and mapNonEmpty!20831 condMapEmpty!20834) mapIsEmpty!20834))

(assert (= (and mapNonEmpty!20831 (not condMapEmpty!20834)) mapNonEmpty!20834))

(assert (= (and mapNonEmpty!20834 ((_ is Cons!48201) mapValue!20834)) b!4310520))

(assert (= (and mapNonEmpty!20831 ((_ is Cons!48201) mapDefault!20834)) b!4310521))

(declare-fun m!4903451 () Bool)

(assert (=> mapNonEmpty!20834 m!4903451))

(declare-fun e!2680799 () Bool)

(declare-fun tp!1324614 () Bool)

(declare-fun b!4310522 () Bool)

(assert (=> b!4310522 (= e!2680799 (and tp_is_empty!23765 tp_is_empty!23767 tp!1324614))))

(assert (=> mapNonEmpty!20831 (= tp!1324597 e!2680799)))

(assert (= (and mapNonEmpty!20831 ((_ is Cons!48201) mapValue!20831)) b!4310522))

(declare-fun b_lambda!126637 () Bool)

(assert (= b_lambda!126635 (or (and b!4310402 b_free!128619) b_lambda!126637)))

(check-sat (not b_next!129323) (not b!4310467) (not b!4310439) b_and!340053 (not b!4310522) (not d!1268063) (not b!4310465) (not d!1268071) (not tb!257295) (not b!4310464) (not b!4310511) (not d!1268069) (not bm!297958) b_and!340051 (not b_lambda!126637) (not mapNonEmpty!20834) (not b!4310521) (not d!1268067) (not d!1268065) (not b!4310513) (not d!1268081) (not b!4310438) (not b!4310503) (not b!4310433) tp_is_empty!23767 (not b!4310520) (not b!4310470) (not b!4310481) (not b!4310494) (not b!4310435) (not bm!297965) (not bm!297955) tp_is_empty!23765 (not b!4310487) (not bm!297954) (not bm!297959) (not d!1268061) (not b!4310468) (not b!4310436) (not bm!297964) (not d!1268075) (not b_next!129325) (not d!1268059) (not b!4310512) (not b!4310493) (not bm!297957) (not b!4310504) (not d!1268057) (not d!1268079) (not bm!297956) (not d!1268073))
(check-sat b_and!340053 b_and!340051 (not b_next!129325) (not b_next!129323))
