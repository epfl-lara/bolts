; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!241846 () Bool)

(assert start!241846)

(declare-fun b!2479067 () Bool)

(declare-fun b_free!72129 () Bool)

(declare-fun b_next!72833 () Bool)

(assert (=> b!2479067 (= b_free!72129 (not b_next!72833))))

(declare-fun tp!793414 () Bool)

(declare-fun b_and!188367 () Bool)

(assert (=> b!2479067 (= tp!793414 b_and!188367)))

(declare-fun b!2479068 () Bool)

(declare-fun b_free!72131 () Bool)

(declare-fun b_next!72835 () Bool)

(assert (=> b!2479068 (= b_free!72131 (not b_next!72835))))

(declare-fun tp!793417 () Bool)

(declare-fun b_and!188369 () Bool)

(assert (=> b!2479068 (= tp!793417 b_and!188369)))

(declare-fun b!2479062 () Bool)

(declare-fun e!1573307 () Bool)

(declare-fun e!1573311 () Bool)

(assert (=> b!2479062 (= e!1573307 (not e!1573311))))

(declare-fun res!1049331 () Bool)

(assert (=> b!2479062 (=> res!1049331 e!1573311)))

(declare-datatypes ((K!5380 0))(
  ( (K!5381 (val!8779 Int)) )
))
(declare-datatypes ((V!5582 0))(
  ( (V!5583 (val!8780 Int)) )
))
(declare-datatypes ((tuple2!28556 0))(
  ( (tuple2!28557 (_1!16819 K!5380) (_2!16819 V!5582)) )
))
(declare-datatypes ((List!29125 0))(
  ( (Nil!29025) (Cons!29025 (h!34427 tuple2!28556) (t!210774 List!29125)) )
))
(declare-datatypes ((array!11721 0))(
  ( (array!11722 (arr!5226 (Array (_ BitVec 32) List!29125)) (size!22645 (_ BitVec 32))) )
))
(declare-datatypes ((array!11723 0))(
  ( (array!11724 (arr!5227 (Array (_ BitVec 32) (_ BitVec 64))) (size!22646 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!6636 0))(
  ( (LongMapFixedSize!6637 (defaultEntry!3692 Int) (mask!8466 (_ BitVec 32)) (extraKeys!3566 (_ BitVec 32)) (zeroValue!3576 List!29125) (minValue!3576 List!29125) (_size!6683 (_ BitVec 32)) (_keys!3615 array!11723) (_values!3598 array!11721) (_vacant!3379 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!13089 0))(
  ( (Cell!13090 (v!31324 LongMapFixedSize!6636)) )
))
(declare-datatypes ((MutLongMap!3318 0))(
  ( (LongMap!3318 (underlying!6843 Cell!13089)) (MutLongMapExt!3317 (__x!18860 Int)) )
))
(declare-datatypes ((tuple2!28558 0))(
  ( (tuple2!28559 (_1!16820 Bool) (_2!16820 MutLongMap!3318)) )
))
(declare-fun lt!886078 () tuple2!28558)

(assert (=> b!2479062 (= res!1049331 (not (_1!16820 lt!886078)))))

(declare-fun lt!886077 () List!29125)

(declare-fun noDuplicateKeys!58 (List!29125) Bool)

(assert (=> b!2479062 (noDuplicateKeys!58 lt!886077)))

(declare-datatypes ((Unit!42441 0))(
  ( (Unit!42442) )
))
(declare-fun lt!886080 () Unit!42441)

(declare-fun lt!886071 () List!29125)

(declare-fun key!2246 () K!5380)

(declare-fun lemmaRemovePairForKeyPreservesNoDuplicateKeys!44 (List!29125 K!5380) Unit!42441)

(assert (=> b!2479062 (= lt!886080 (lemmaRemovePairForKeyPreservesNoDuplicateKeys!44 lt!886071 key!2246))))

(declare-datatypes ((Hashable!3228 0))(
  ( (HashableExt!3227 (__x!18861 Int)) )
))
(declare-datatypes ((Cell!13091 0))(
  ( (Cell!13092 (v!31325 MutLongMap!3318)) )
))
(declare-datatypes ((MutableMap!3228 0))(
  ( (MutableMapExt!3227 (__x!18862 Int)) (HashMap!3228 (underlying!6844 Cell!13091) (hashF!5166 Hashable!3228) (_size!6684 (_ BitVec 32)) (defaultValue!3390 Int)) )
))
(declare-datatypes ((tuple2!28560 0))(
  ( (tuple2!28561 (_1!16821 Unit!42441) (_2!16821 MutableMap!3228)) )
))
(declare-fun lt!886075 () tuple2!28560)

(declare-fun lt!886074 () Cell!13091)

(declare-fun thiss!42540 () MutableMap!3228)

(declare-fun Unit!42443 () Unit!42441)

(declare-fun Unit!42444 () Unit!42441)

(assert (=> b!2479062 (= lt!886075 (ite (_1!16820 lt!886078) (tuple2!28561 Unit!42443 (HashMap!3228 lt!886074 (hashF!5166 thiss!42540) (bvsub (_size!6684 thiss!42540) #b00000000000000000000000000000001) (defaultValue!3390 thiss!42540))) (tuple2!28561 Unit!42444 (HashMap!3228 lt!886074 (hashF!5166 thiss!42540) (_size!6684 thiss!42540) (defaultValue!3390 thiss!42540)))))))

(assert (=> b!2479062 (= lt!886074 (Cell!13092 (_2!16820 lt!886078)))))

(declare-fun lt!886070 () (_ BitVec 64))

(declare-fun update!161 (MutLongMap!3318 (_ BitVec 64) List!29125) tuple2!28558)

(assert (=> b!2479062 (= lt!886078 (update!161 (v!31325 (underlying!6844 thiss!42540)) lt!886070 lt!886077))))

(declare-fun removePairForKey!48 (List!29125 K!5380) List!29125)

(assert (=> b!2479062 (= lt!886077 (removePairForKey!48 lt!886071 key!2246))))

(declare-datatypes ((ListMap!997 0))(
  ( (ListMap!998 (toList!1512 List!29125)) )
))
(declare-fun lt!886072 () ListMap!997)

(declare-fun map!6108 (MutableMap!3228) ListMap!997)

(assert (=> b!2479062 (= lt!886072 (map!6108 thiss!42540))))

(declare-datatypes ((tuple2!28562 0))(
  ( (tuple2!28563 (_1!16822 (_ BitVec 64)) (_2!16822 List!29125)) )
))
(declare-datatypes ((List!29126 0))(
  ( (Nil!29026) (Cons!29026 (h!34428 tuple2!28562) (t!210775 List!29126)) )
))
(declare-datatypes ((ListLongMap!457 0))(
  ( (ListLongMap!458 (toList!1513 List!29126)) )
))
(declare-fun lt!886066 () ListLongMap!457)

(declare-fun lambda!93624 () Int)

(declare-fun lt!886068 () Unit!42441)

(declare-fun forallContained!829 (List!29126 Int tuple2!28562) Unit!42441)

(assert (=> b!2479062 (= lt!886068 (forallContained!829 (toList!1513 lt!886066) lambda!93624 (tuple2!28563 lt!886070 lt!886071)))))

(declare-fun map!6109 (MutLongMap!3318) ListLongMap!457)

(assert (=> b!2479062 (= lt!886066 (map!6109 (v!31325 (underlying!6844 thiss!42540))))))

(declare-fun apply!6874 (MutLongMap!3318 (_ BitVec 64)) List!29125)

(assert (=> b!2479062 (= lt!886071 (apply!6874 (v!31325 (underlying!6844 thiss!42540)) lt!886070))))

(declare-fun hash!645 (Hashable!3228 K!5380) (_ BitVec 64))

(assert (=> b!2479062 (= lt!886070 (hash!645 (hashF!5166 thiss!42540) key!2246))))

(declare-fun b!2479063 () Bool)

(declare-fun res!1049330 () Bool)

(assert (=> b!2479063 (=> (not res!1049330) (not e!1573307))))

(declare-fun valid!2527 (MutableMap!3228) Bool)

(assert (=> b!2479063 (= res!1049330 (valid!2527 thiss!42540))))

(declare-fun b!2479064 () Bool)

(declare-fun e!1573306 () Bool)

(declare-fun tp!793415 () Bool)

(declare-fun mapRes!15400 () Bool)

(assert (=> b!2479064 (= e!1573306 (and tp!793415 mapRes!15400))))

(declare-fun condMapEmpty!15400 () Bool)

(declare-fun mapDefault!15400 () List!29125)

(assert (=> b!2479064 (= condMapEmpty!15400 (= (arr!5226 (_values!3598 (v!31324 (underlying!6843 (v!31325 (underlying!6844 thiss!42540)))))) ((as const (Array (_ BitVec 32) List!29125)) mapDefault!15400)))))

(declare-fun mapNonEmpty!15400 () Bool)

(declare-fun tp!793418 () Bool)

(declare-fun tp!793413 () Bool)

(assert (=> mapNonEmpty!15400 (= mapRes!15400 (and tp!793418 tp!793413))))

(declare-fun mapKey!15400 () (_ BitVec 32))

(declare-fun mapRest!15400 () (Array (_ BitVec 32) List!29125))

(declare-fun mapValue!15400 () List!29125)

(assert (=> mapNonEmpty!15400 (= (arr!5226 (_values!3598 (v!31324 (underlying!6843 (v!31325 (underlying!6844 thiss!42540)))))) (store mapRest!15400 mapKey!15400 mapValue!15400))))

(declare-fun b!2479065 () Bool)

(declare-fun res!1049332 () Bool)

(assert (=> b!2479065 (=> (not res!1049332) (not e!1573307))))

(declare-fun contains!5019 (MutableMap!3228 K!5380) Bool)

(assert (=> b!2479065 (= res!1049332 (contains!5019 thiss!42540 key!2246))))

(declare-fun b!2479066 () Bool)

(get-info :version)

(assert (=> b!2479066 (= e!1573311 ((_ is LongMap!3318) (v!31325 (underlying!6844 (_2!16821 lt!886075)))))))

(declare-fun e!1573304 () Bool)

(assert (=> b!2479066 e!1573304))

(declare-fun res!1049328 () Bool)

(assert (=> b!2479066 (=> (not res!1049328) (not e!1573304))))

(declare-fun lt!886067 () ListLongMap!457)

(declare-fun forall!5944 (List!29126 Int) Bool)

(assert (=> b!2479066 (= res!1049328 (forall!5944 (toList!1513 lt!886067) lambda!93624))))

(declare-fun +!65 (ListLongMap!457 tuple2!28562) ListLongMap!457)

(assert (=> b!2479066 (= lt!886067 (+!65 lt!886066 (tuple2!28563 lt!886070 lt!886077)))))

(declare-fun lt!886069 () Unit!42441)

(declare-fun lemmaChangeOneBucketByAValidOnePreservesForallNoDuplicatesAndHash!36 (ListLongMap!457 (_ BitVec 64) List!29125 Hashable!3228) Unit!42441)

(assert (=> b!2479066 (= lt!886069 (lemmaChangeOneBucketByAValidOnePreservesForallNoDuplicatesAndHash!36 lt!886066 lt!886070 lt!886077 (hashF!5166 (_2!16821 lt!886075))))))

(declare-fun allKeysSameHash!46 (List!29125 (_ BitVec 64) Hashable!3228) Bool)

(assert (=> b!2479066 (allKeysSameHash!46 lt!886077 lt!886070 (hashF!5166 (_2!16821 lt!886075)))))

(declare-fun lt!886073 () Unit!42441)

(declare-fun lemmaRemovePairForKeyPreservesHash!40 (List!29125 K!5380 (_ BitVec 64) Hashable!3228) Unit!42441)

(assert (=> b!2479066 (= lt!886073 (lemmaRemovePairForKeyPreservesHash!40 lt!886071 key!2246 lt!886070 (hashF!5166 (_2!16821 lt!886075))))))

(assert (=> b!2479066 (allKeysSameHash!46 lt!886071 lt!886070 (hashF!5166 (_2!16821 lt!886075)))))

(declare-fun lt!886076 () Unit!42441)

(declare-fun lemmaInLongMapAllKeySameHashThenForTuple!42 (List!29126 (_ BitVec 64) List!29125 Hashable!3228) Unit!42441)

(assert (=> b!2479066 (= lt!886076 (lemmaInLongMapAllKeySameHashThenForTuple!42 (toList!1513 lt!886066) lt!886070 lt!886071 (hashF!5166 (_2!16821 lt!886075))))))

(declare-fun tp!793412 () Bool)

(declare-fun tp!793416 () Bool)

(declare-fun e!1573308 () Bool)

(declare-fun array_inv!3749 (array!11723) Bool)

(declare-fun array_inv!3750 (array!11721) Bool)

(assert (=> b!2479067 (= e!1573308 (and tp!793414 tp!793416 tp!793412 (array_inv!3749 (_keys!3615 (v!31324 (underlying!6843 (v!31325 (underlying!6844 thiss!42540)))))) (array_inv!3750 (_values!3598 (v!31324 (underlying!6843 (v!31325 (underlying!6844 thiss!42540)))))) e!1573306))))

(declare-fun e!1573309 () Bool)

(declare-fun e!1573312 () Bool)

(assert (=> b!2479068 (= e!1573309 (and e!1573312 tp!793417))))

(declare-fun mapIsEmpty!15400 () Bool)

(assert (=> mapIsEmpty!15400 mapRes!15400))

(declare-fun b!2479069 () Bool)

(declare-fun e!1573310 () Bool)

(declare-fun lt!886079 () MutLongMap!3318)

(assert (=> b!2479069 (= e!1573312 (and e!1573310 ((_ is LongMap!3318) lt!886079)))))

(assert (=> b!2479069 (= lt!886079 (v!31325 (underlying!6844 thiss!42540)))))

(declare-fun b!2479061 () Bool)

(declare-fun allKeysSameHashInMap!140 (ListLongMap!457 Hashable!3228) Bool)

(assert (=> b!2479061 (= e!1573304 (allKeysSameHashInMap!140 lt!886067 (hashF!5166 (_2!16821 lt!886075))))))

(declare-fun res!1049329 () Bool)

(assert (=> start!241846 (=> (not res!1049329) (not e!1573307))))

(assert (=> start!241846 (= res!1049329 ((_ is HashMap!3228) thiss!42540))))

(assert (=> start!241846 e!1573307))

(assert (=> start!241846 e!1573309))

(declare-fun tp_is_empty!12151 () Bool)

(assert (=> start!241846 tp_is_empty!12151))

(declare-fun b!2479070 () Bool)

(declare-fun e!1573305 () Bool)

(assert (=> b!2479070 (= e!1573310 e!1573305)))

(declare-fun b!2479071 () Bool)

(assert (=> b!2479071 (= e!1573305 e!1573308)))

(assert (= (and start!241846 res!1049329) b!2479063))

(assert (= (and b!2479063 res!1049330) b!2479065))

(assert (= (and b!2479065 res!1049332) b!2479062))

(assert (= (and b!2479062 (not res!1049331)) b!2479066))

(assert (= (and b!2479066 res!1049328) b!2479061))

(assert (= (and b!2479064 condMapEmpty!15400) mapIsEmpty!15400))

(assert (= (and b!2479064 (not condMapEmpty!15400)) mapNonEmpty!15400))

(assert (= b!2479067 b!2479064))

(assert (= b!2479071 b!2479067))

(assert (= b!2479070 b!2479071))

(assert (= (and b!2479069 ((_ is LongMap!3318) (v!31325 (underlying!6844 thiss!42540)))) b!2479070))

(assert (= b!2479068 b!2479069))

(assert (= (and start!241846 ((_ is HashMap!3228) thiss!42540)) b!2479068))

(declare-fun m!2846701 () Bool)

(assert (=> b!2479067 m!2846701))

(declare-fun m!2846703 () Bool)

(assert (=> b!2479067 m!2846703))

(declare-fun m!2846705 () Bool)

(assert (=> b!2479063 m!2846705))

(declare-fun m!2846707 () Bool)

(assert (=> b!2479065 m!2846707))

(declare-fun m!2846709 () Bool)

(assert (=> b!2479066 m!2846709))

(declare-fun m!2846711 () Bool)

(assert (=> b!2479066 m!2846711))

(declare-fun m!2846713 () Bool)

(assert (=> b!2479066 m!2846713))

(declare-fun m!2846715 () Bool)

(assert (=> b!2479066 m!2846715))

(declare-fun m!2846717 () Bool)

(assert (=> b!2479066 m!2846717))

(declare-fun m!2846719 () Bool)

(assert (=> b!2479066 m!2846719))

(declare-fun m!2846721 () Bool)

(assert (=> b!2479066 m!2846721))

(declare-fun m!2846723 () Bool)

(assert (=> b!2479062 m!2846723))

(declare-fun m!2846725 () Bool)

(assert (=> b!2479062 m!2846725))

(declare-fun m!2846727 () Bool)

(assert (=> b!2479062 m!2846727))

(declare-fun m!2846729 () Bool)

(assert (=> b!2479062 m!2846729))

(declare-fun m!2846731 () Bool)

(assert (=> b!2479062 m!2846731))

(declare-fun m!2846733 () Bool)

(assert (=> b!2479062 m!2846733))

(declare-fun m!2846735 () Bool)

(assert (=> b!2479062 m!2846735))

(declare-fun m!2846737 () Bool)

(assert (=> b!2479062 m!2846737))

(declare-fun m!2846739 () Bool)

(assert (=> b!2479062 m!2846739))

(declare-fun m!2846741 () Bool)

(assert (=> mapNonEmpty!15400 m!2846741))

(declare-fun m!2846743 () Bool)

(assert (=> b!2479061 m!2846743))

(check-sat (not b!2479063) b_and!188369 (not mapNonEmpty!15400) (not b!2479061) tp_is_empty!12151 (not b_next!72835) b_and!188367 (not b!2479064) (not b!2479066) (not b!2479067) (not b!2479062) (not b_next!72833) (not b!2479065))
(check-sat b_and!188369 b_and!188367 (not b_next!72833) (not b_next!72835))
(get-model)

(declare-fun d!712560 () Bool)

(declare-fun res!1049337 () Bool)

(declare-fun e!1573318 () Bool)

(assert (=> d!712560 (=> res!1049337 e!1573318)))

(assert (=> d!712560 (= res!1049337 (not ((_ is Cons!29025) lt!886077)))))

(assert (=> d!712560 (= (noDuplicateKeys!58 lt!886077) e!1573318)))

(declare-fun b!2479076 () Bool)

(declare-fun e!1573319 () Bool)

(assert (=> b!2479076 (= e!1573318 e!1573319)))

(declare-fun res!1049338 () Bool)

(assert (=> b!2479076 (=> (not res!1049338) (not e!1573319))))

(declare-fun containsKey!123 (List!29125 K!5380) Bool)

(assert (=> b!2479076 (= res!1049338 (not (containsKey!123 (t!210774 lt!886077) (_1!16819 (h!34427 lt!886077)))))))

(declare-fun b!2479077 () Bool)

(assert (=> b!2479077 (= e!1573319 (noDuplicateKeys!58 (t!210774 lt!886077)))))

(assert (= (and d!712560 (not res!1049337)) b!2479076))

(assert (= (and b!2479076 res!1049338) b!2479077))

(declare-fun m!2846745 () Bool)

(assert (=> b!2479076 m!2846745))

(declare-fun m!2846747 () Bool)

(assert (=> b!2479077 m!2846747))

(assert (=> b!2479062 d!712560))

(declare-fun d!712562 () Bool)

(assert (=> d!712562 (noDuplicateKeys!58 (removePairForKey!48 lt!886071 key!2246))))

(declare-fun lt!886083 () Unit!42441)

(declare-fun choose!14618 (List!29125 K!5380) Unit!42441)

(assert (=> d!712562 (= lt!886083 (choose!14618 lt!886071 key!2246))))

(assert (=> d!712562 (noDuplicateKeys!58 lt!886071)))

(assert (=> d!712562 (= (lemmaRemovePairForKeyPreservesNoDuplicateKeys!44 lt!886071 key!2246) lt!886083)))

(declare-fun bs!467254 () Bool)

(assert (= bs!467254 d!712562))

(assert (=> bs!467254 m!2846729))

(assert (=> bs!467254 m!2846729))

(declare-fun m!2846749 () Bool)

(assert (=> bs!467254 m!2846749))

(declare-fun m!2846751 () Bool)

(assert (=> bs!467254 m!2846751))

(declare-fun m!2846753 () Bool)

(assert (=> bs!467254 m!2846753))

(assert (=> b!2479062 d!712562))

(declare-fun b!2479087 () Bool)

(declare-fun e!1573324 () List!29125)

(declare-fun e!1573325 () List!29125)

(assert (=> b!2479087 (= e!1573324 e!1573325)))

(declare-fun c!394335 () Bool)

(assert (=> b!2479087 (= c!394335 ((_ is Cons!29025) lt!886071))))

(declare-fun d!712564 () Bool)

(declare-fun lt!886086 () List!29125)

(assert (=> d!712564 (not (containsKey!123 lt!886086 key!2246))))

(assert (=> d!712564 (= lt!886086 e!1573324)))

(declare-fun c!394334 () Bool)

(assert (=> d!712564 (= c!394334 (and ((_ is Cons!29025) lt!886071) (= (_1!16819 (h!34427 lt!886071)) key!2246)))))

(assert (=> d!712564 (noDuplicateKeys!58 lt!886071)))

(assert (=> d!712564 (= (removePairForKey!48 lt!886071 key!2246) lt!886086)))

(declare-fun b!2479089 () Bool)

(assert (=> b!2479089 (= e!1573325 Nil!29025)))

(declare-fun b!2479088 () Bool)

(assert (=> b!2479088 (= e!1573325 (Cons!29025 (h!34427 lt!886071) (removePairForKey!48 (t!210774 lt!886071) key!2246)))))

(declare-fun b!2479086 () Bool)

(assert (=> b!2479086 (= e!1573324 (t!210774 lt!886071))))

(assert (= (and d!712564 c!394334) b!2479086))

(assert (= (and d!712564 (not c!394334)) b!2479087))

(assert (= (and b!2479087 c!394335) b!2479088))

(assert (= (and b!2479087 (not c!394335)) b!2479089))

(declare-fun m!2846755 () Bool)

(assert (=> d!712564 m!2846755))

(assert (=> d!712564 m!2846753))

(declare-fun m!2846757 () Bool)

(assert (=> b!2479088 m!2846757))

(assert (=> b!2479062 d!712564))

(declare-fun d!712566 () Bool)

(declare-fun e!1573328 () Bool)

(assert (=> d!712566 e!1573328))

(declare-fun c!394338 () Bool)

(declare-fun contains!5020 (MutLongMap!3318 (_ BitVec 64)) Bool)

(assert (=> d!712566 (= c!394338 (contains!5020 (v!31325 (underlying!6844 thiss!42540)) lt!886070))))

(declare-fun lt!886089 () List!29125)

(declare-fun apply!6875 (LongMapFixedSize!6636 (_ BitVec 64)) List!29125)

(assert (=> d!712566 (= lt!886089 (apply!6875 (v!31324 (underlying!6843 (v!31325 (underlying!6844 thiss!42540)))) lt!886070))))

(declare-fun valid!2528 (MutLongMap!3318) Bool)

(assert (=> d!712566 (valid!2528 (v!31325 (underlying!6844 thiss!42540)))))

(assert (=> d!712566 (= (apply!6874 (v!31325 (underlying!6844 thiss!42540)) lt!886070) lt!886089)))

(declare-fun b!2479094 () Bool)

(declare-datatypes ((Option!5736 0))(
  ( (None!5735) (Some!5735 (v!31330 List!29125)) )
))
(declare-fun get!8948 (Option!5736) List!29125)

(declare-fun getValueByKey!130 (List!29126 (_ BitVec 64)) Option!5736)

(assert (=> b!2479094 (= e!1573328 (= lt!886089 (get!8948 (getValueByKey!130 (toList!1513 (map!6109 (v!31325 (underlying!6844 thiss!42540)))) lt!886070))))))

(declare-fun b!2479095 () Bool)

(declare-fun dynLambda!12454 (Int (_ BitVec 64)) List!29125)

(assert (=> b!2479095 (= e!1573328 (= lt!886089 (dynLambda!12454 (defaultEntry!3692 (v!31324 (underlying!6843 (v!31325 (underlying!6844 thiss!42540))))) lt!886070)))))

(assert (=> b!2479095 ((_ is LongMap!3318) (v!31325 (underlying!6844 thiss!42540)))))

(assert (= (and d!712566 c!394338) b!2479094))

(assert (= (and d!712566 (not c!394338)) b!2479095))

(declare-fun b_lambda!76039 () Bool)

(assert (=> (not b_lambda!76039) (not b!2479095)))

(declare-fun t!210777 () Bool)

(declare-fun tb!140367 () Bool)

(assert (=> (and b!2479067 (= (defaultEntry!3692 (v!31324 (underlying!6843 (v!31325 (underlying!6844 thiss!42540))))) (defaultEntry!3692 (v!31324 (underlying!6843 (v!31325 (underlying!6844 thiss!42540)))))) t!210777) tb!140367))

(assert (=> b!2479095 t!210777))

(declare-fun result!173288 () Bool)

(declare-fun b_and!188371 () Bool)

(assert (= b_and!188367 (and (=> t!210777 result!173288) b_and!188371)))

(declare-fun m!2846759 () Bool)

(assert (=> d!712566 m!2846759))

(declare-fun m!2846761 () Bool)

(assert (=> d!712566 m!2846761))

(declare-fun m!2846763 () Bool)

(assert (=> d!712566 m!2846763))

(assert (=> b!2479094 m!2846725))

(declare-fun m!2846765 () Bool)

(assert (=> b!2479094 m!2846765))

(assert (=> b!2479094 m!2846765))

(declare-fun m!2846767 () Bool)

(assert (=> b!2479094 m!2846767))

(declare-fun m!2846769 () Bool)

(assert (=> b!2479095 m!2846769))

(assert (=> b!2479062 d!712566))

(declare-fun d!712568 () Bool)

(declare-fun hash!649 (Hashable!3228 K!5380) (_ BitVec 64))

(assert (=> d!712568 (= (hash!645 (hashF!5166 thiss!42540) key!2246) (hash!649 (hashF!5166 thiss!42540) key!2246))))

(declare-fun bs!467255 () Bool)

(assert (= bs!467255 d!712568))

(declare-fun m!2846771 () Bool)

(assert (=> bs!467255 m!2846771))

(assert (=> b!2479062 d!712568))

(declare-fun e!1573342 () Bool)

(declare-fun b!2479114 () Bool)

(declare-fun call!151840 () ListLongMap!457)

(declare-fun call!151839 () ListLongMap!457)

(assert (=> b!2479114 (= e!1573342 (= call!151839 (+!65 call!151840 (tuple2!28563 lt!886070 lt!886077))))))

(declare-fun d!712570 () Bool)

(declare-fun e!1573341 () Bool)

(assert (=> d!712570 e!1573341))

(declare-fun res!1049345 () Bool)

(assert (=> d!712570 (=> (not res!1049345) (not e!1573341))))

(declare-fun lt!886101 () tuple2!28558)

(assert (=> d!712570 (= res!1049345 ((_ is LongMap!3318) (_2!16820 lt!886101)))))

(declare-fun e!1573340 () tuple2!28558)

(assert (=> d!712570 (= lt!886101 e!1573340)))

(declare-fun c!394346 () Bool)

(declare-fun lt!886099 () tuple2!28558)

(assert (=> d!712570 (= c!394346 (_1!16820 lt!886099))))

(declare-fun e!1573343 () tuple2!28558)

(assert (=> d!712570 (= lt!886099 e!1573343)))

(declare-fun c!394347 () Bool)

(declare-fun imbalanced!11 (MutLongMap!3318) Bool)

(assert (=> d!712570 (= c!394347 (imbalanced!11 (v!31325 (underlying!6844 thiss!42540))))))

(assert (=> d!712570 (valid!2528 (v!31325 (underlying!6844 thiss!42540)))))

(assert (=> d!712570 (= (update!161 (v!31325 (underlying!6844 thiss!42540)) lt!886070 lt!886077) lt!886101)))

(declare-fun b!2479115 () Bool)

(declare-fun e!1573339 () Bool)

(assert (=> b!2479115 (= e!1573339 e!1573342)))

(declare-fun res!1049346 () Bool)

(declare-fun contains!5021 (ListLongMap!457 (_ BitVec 64)) Bool)

(assert (=> b!2479115 (= res!1049346 (contains!5021 call!151839 lt!886070))))

(assert (=> b!2479115 (=> (not res!1049346) (not e!1573342))))

(declare-fun b!2479116 () Bool)

(assert (=> b!2479116 (= e!1573343 (tuple2!28559 true (v!31325 (underlying!6844 thiss!42540))))))

(declare-fun b!2479117 () Bool)

(declare-fun lt!886100 () tuple2!28558)

(assert (=> b!2479117 (= e!1573343 (tuple2!28559 (_1!16820 lt!886100) (_2!16820 lt!886100)))))

(declare-fun repack!15 (MutLongMap!3318) tuple2!28558)

(assert (=> b!2479117 (= lt!886100 (repack!15 (v!31325 (underlying!6844 thiss!42540))))))

(declare-fun b!2479118 () Bool)

(assert (=> b!2479118 (= e!1573339 (= call!151839 call!151840))))

(declare-fun bm!151834 () Bool)

(assert (=> bm!151834 (= call!151839 (map!6109 (_2!16820 lt!886101)))))

(declare-fun b!2479119 () Bool)

(assert (=> b!2479119 (= e!1573340 (tuple2!28559 false (_2!16820 lt!886099)))))

(declare-fun b!2479120 () Bool)

(assert (=> b!2479120 (= e!1573341 e!1573339)))

(declare-fun c!394345 () Bool)

(assert (=> b!2479120 (= c!394345 (_1!16820 lt!886101))))

(declare-fun bm!151835 () Bool)

(assert (=> bm!151835 (= call!151840 (map!6109 (v!31325 (underlying!6844 thiss!42540))))))

(declare-fun b!2479121 () Bool)

(declare-datatypes ((tuple2!28564 0))(
  ( (tuple2!28565 (_1!16823 Bool) (_2!16823 LongMapFixedSize!6636)) )
))
(declare-fun lt!886098 () tuple2!28564)

(assert (=> b!2479121 (= e!1573340 (tuple2!28559 (_1!16823 lt!886098) (LongMap!3318 (Cell!13090 (_2!16823 lt!886098)))))))

(declare-fun update!162 (LongMapFixedSize!6636 (_ BitVec 64) List!29125) tuple2!28564)

(assert (=> b!2479121 (= lt!886098 (update!162 (v!31324 (underlying!6843 (_2!16820 lt!886099))) lt!886070 lt!886077))))

(declare-fun b!2479122 () Bool)

(declare-fun res!1049347 () Bool)

(assert (=> b!2479122 (=> (not res!1049347) (not e!1573341))))

(assert (=> b!2479122 (= res!1049347 (valid!2528 (_2!16820 lt!886101)))))

(assert (= (and d!712570 c!394347) b!2479117))

(assert (= (and d!712570 (not c!394347)) b!2479116))

(assert (= (and d!712570 c!394346) b!2479121))

(assert (= (and d!712570 (not c!394346)) b!2479119))

(assert (= (and d!712570 res!1049345) b!2479122))

(assert (= (and b!2479122 res!1049347) b!2479120))

(assert (= (and b!2479120 c!394345) b!2479115))

(assert (= (and b!2479120 (not c!394345)) b!2479118))

(assert (= (and b!2479115 res!1049346) b!2479114))

(assert (= (or b!2479115 b!2479114 b!2479118) bm!151834))

(assert (= (or b!2479114 b!2479118) bm!151835))

(declare-fun m!2846773 () Bool)

(assert (=> b!2479117 m!2846773))

(declare-fun m!2846775 () Bool)

(assert (=> b!2479114 m!2846775))

(assert (=> bm!151835 m!2846725))

(declare-fun m!2846777 () Bool)

(assert (=> bm!151834 m!2846777))

(declare-fun m!2846779 () Bool)

(assert (=> b!2479121 m!2846779))

(declare-fun m!2846781 () Bool)

(assert (=> d!712570 m!2846781))

(assert (=> d!712570 m!2846763))

(declare-fun m!2846783 () Bool)

(assert (=> b!2479115 m!2846783))

(declare-fun m!2846785 () Bool)

(assert (=> b!2479122 m!2846785))

(assert (=> b!2479062 d!712570))

(declare-fun d!712572 () Bool)

(declare-fun map!6110 (LongMapFixedSize!6636) ListLongMap!457)

(assert (=> d!712572 (= (map!6109 (v!31325 (underlying!6844 thiss!42540))) (map!6110 (v!31324 (underlying!6843 (v!31325 (underlying!6844 thiss!42540))))))))

(declare-fun bs!467256 () Bool)

(assert (= bs!467256 d!712572))

(declare-fun m!2846787 () Bool)

(assert (=> bs!467256 m!2846787))

(assert (=> b!2479062 d!712572))

(declare-fun d!712574 () Bool)

(declare-fun dynLambda!12455 (Int tuple2!28562) Bool)

(assert (=> d!712574 (dynLambda!12455 lambda!93624 (tuple2!28563 lt!886070 lt!886071))))

(declare-fun lt!886104 () Unit!42441)

(declare-fun choose!14619 (List!29126 Int tuple2!28562) Unit!42441)

(assert (=> d!712574 (= lt!886104 (choose!14619 (toList!1513 lt!886066) lambda!93624 (tuple2!28563 lt!886070 lt!886071)))))

(declare-fun e!1573346 () Bool)

(assert (=> d!712574 e!1573346))

(declare-fun res!1049350 () Bool)

(assert (=> d!712574 (=> (not res!1049350) (not e!1573346))))

(assert (=> d!712574 (= res!1049350 (forall!5944 (toList!1513 lt!886066) lambda!93624))))

(assert (=> d!712574 (= (forallContained!829 (toList!1513 lt!886066) lambda!93624 (tuple2!28563 lt!886070 lt!886071)) lt!886104)))

(declare-fun b!2479125 () Bool)

(declare-fun contains!5022 (List!29126 tuple2!28562) Bool)

(assert (=> b!2479125 (= e!1573346 (contains!5022 (toList!1513 lt!886066) (tuple2!28563 lt!886070 lt!886071)))))

(assert (= (and d!712574 res!1049350) b!2479125))

(declare-fun b_lambda!76041 () Bool)

(assert (=> (not b_lambda!76041) (not d!712574)))

(declare-fun m!2846789 () Bool)

(assert (=> d!712574 m!2846789))

(declare-fun m!2846791 () Bool)

(assert (=> d!712574 m!2846791))

(declare-fun m!2846793 () Bool)

(assert (=> d!712574 m!2846793))

(declare-fun m!2846795 () Bool)

(assert (=> b!2479125 m!2846795))

(assert (=> b!2479062 d!712574))

(declare-fun d!712576 () Bool)

(declare-fun lt!886107 () ListMap!997)

(declare-fun invariantList!404 (List!29125) Bool)

(assert (=> d!712576 (invariantList!404 (toList!1512 lt!886107))))

(declare-fun extractMap!151 (List!29126) ListMap!997)

(assert (=> d!712576 (= lt!886107 (extractMap!151 (toList!1513 (map!6109 (v!31325 (underlying!6844 thiss!42540))))))))

(assert (=> d!712576 (valid!2527 thiss!42540)))

(assert (=> d!712576 (= (map!6108 thiss!42540) lt!886107)))

(declare-fun bs!467257 () Bool)

(assert (= bs!467257 d!712576))

(declare-fun m!2846797 () Bool)

(assert (=> bs!467257 m!2846797))

(assert (=> bs!467257 m!2846725))

(declare-fun m!2846799 () Bool)

(assert (=> bs!467257 m!2846799))

(assert (=> bs!467257 m!2846705))

(assert (=> b!2479062 d!712576))

(declare-fun bs!467258 () Bool)

(declare-fun b!2479130 () Bool)

(assert (= bs!467258 (and b!2479130 b!2479062)))

(declare-fun lambda!93627 () Int)

(assert (=> bs!467258 (= lambda!93627 lambda!93624)))

(declare-fun d!712578 () Bool)

(declare-fun res!1049355 () Bool)

(declare-fun e!1573349 () Bool)

(assert (=> d!712578 (=> (not res!1049355) (not e!1573349))))

(assert (=> d!712578 (= res!1049355 (valid!2528 (v!31325 (underlying!6844 thiss!42540))))))

(assert (=> d!712578 (= (valid!2527 thiss!42540) e!1573349)))

(declare-fun res!1049356 () Bool)

(assert (=> b!2479130 (=> (not res!1049356) (not e!1573349))))

(assert (=> b!2479130 (= res!1049356 (forall!5944 (toList!1513 (map!6109 (v!31325 (underlying!6844 thiss!42540)))) lambda!93627))))

(declare-fun b!2479131 () Bool)

(assert (=> b!2479131 (= e!1573349 (allKeysSameHashInMap!140 (map!6109 (v!31325 (underlying!6844 thiss!42540))) (hashF!5166 thiss!42540)))))

(assert (= (and d!712578 res!1049355) b!2479130))

(assert (= (and b!2479130 res!1049356) b!2479131))

(assert (=> d!712578 m!2846763))

(assert (=> b!2479130 m!2846725))

(declare-fun m!2846801 () Bool)

(assert (=> b!2479130 m!2846801))

(assert (=> b!2479131 m!2846725))

(assert (=> b!2479131 m!2846725))

(declare-fun m!2846803 () Bool)

(assert (=> b!2479131 m!2846803))

(assert (=> b!2479063 d!712578))

(declare-fun d!712580 () Bool)

(assert (=> d!712580 (= (array_inv!3749 (_keys!3615 (v!31324 (underlying!6843 (v!31325 (underlying!6844 thiss!42540)))))) (bvsge (size!22646 (_keys!3615 (v!31324 (underlying!6843 (v!31325 (underlying!6844 thiss!42540)))))) #b00000000000000000000000000000000))))

(assert (=> b!2479067 d!712580))

(declare-fun d!712582 () Bool)

(assert (=> d!712582 (= (array_inv!3750 (_values!3598 (v!31324 (underlying!6843 (v!31325 (underlying!6844 thiss!42540)))))) (bvsge (size!22645 (_values!3598 (v!31324 (underlying!6843 (v!31325 (underlying!6844 thiss!42540)))))) #b00000000000000000000000000000000))))

(assert (=> b!2479067 d!712582))

(declare-fun bs!467259 () Bool)

(declare-fun d!712584 () Bool)

(assert (= bs!467259 (and d!712584 b!2479062)))

(declare-fun lambda!93630 () Int)

(assert (=> bs!467259 (not (= lambda!93630 lambda!93624))))

(declare-fun bs!467260 () Bool)

(assert (= bs!467260 (and d!712584 b!2479130)))

(assert (=> bs!467260 (not (= lambda!93630 lambda!93627))))

(assert (=> d!712584 true))

(assert (=> d!712584 (= (allKeysSameHashInMap!140 lt!886067 (hashF!5166 (_2!16821 lt!886075))) (forall!5944 (toList!1513 lt!886067) lambda!93630))))

(declare-fun bs!467261 () Bool)

(assert (= bs!467261 d!712584))

(declare-fun m!2846805 () Bool)

(assert (=> bs!467261 m!2846805))

(assert (=> b!2479061 d!712584))

(declare-fun bs!467262 () Bool)

(declare-fun b!2479157 () Bool)

(assert (= bs!467262 (and b!2479157 b!2479062)))

(declare-fun lambda!93633 () Int)

(assert (=> bs!467262 (= lambda!93633 lambda!93624)))

(declare-fun bs!467263 () Bool)

(assert (= bs!467263 (and b!2479157 b!2479130)))

(assert (=> bs!467263 (= lambda!93633 lambda!93627)))

(declare-fun bs!467264 () Bool)

(assert (= bs!467264 (and b!2479157 d!712584)))

(assert (=> bs!467264 (not (= lambda!93633 lambda!93630))))

(declare-fun bm!151848 () Bool)

(declare-fun call!151855 () (_ BitVec 64))

(assert (=> bm!151848 (= call!151855 (hash!645 (hashF!5166 thiss!42540) key!2246))))

(declare-fun b!2479156 () Bool)

(declare-fun e!1573370 () Bool)

(declare-fun call!151858 () Bool)

(assert (=> b!2479156 (= e!1573370 call!151858)))

(declare-fun call!151854 () Bool)

(declare-fun call!151856 () ListLongMap!457)

(declare-fun c!394356 () Bool)

(declare-fun bm!151849 () Bool)

(declare-fun lt!886159 () ListLongMap!457)

(assert (=> bm!151849 (= call!151854 (contains!5021 (ite c!394356 lt!886159 call!151856) call!151855))))

(declare-fun bm!151850 () Bool)

(declare-fun call!151857 () List!29125)

(declare-fun apply!6876 (ListLongMap!457 (_ BitVec 64)) List!29125)

(assert (=> bm!151850 (= call!151857 (apply!6876 (ite c!394356 lt!886159 call!151856) call!151855))))

(declare-fun b!2479158 () Bool)

(declare-fun e!1573368 () Unit!42441)

(declare-fun Unit!42445 () Unit!42441)

(assert (=> b!2479158 (= e!1573368 Unit!42445)))

(declare-fun bm!151851 () Bool)

(declare-datatypes ((Option!5737 0))(
  ( (None!5736) (Some!5736 (v!31331 tuple2!28556)) )
))
(declare-fun call!151853 () Option!5737)

(declare-fun getPair!63 (List!29125 K!5380) Option!5737)

(assert (=> bm!151851 (= call!151853 (getPair!63 call!151857 key!2246))))

(declare-fun b!2479159 () Bool)

(assert (=> b!2479159 false))

(declare-fun lt!886167 () Unit!42441)

(declare-fun lt!886161 () Unit!42441)

(assert (=> b!2479159 (= lt!886167 lt!886161)))

(declare-fun lt!886153 () ListLongMap!457)

(declare-fun contains!5023 (ListMap!997 K!5380) Bool)

(assert (=> b!2479159 (contains!5023 (extractMap!151 (toList!1513 lt!886153)) key!2246)))

(declare-fun lemmaInLongMapThenInGenericMap!63 (ListLongMap!457 K!5380 Hashable!3228) Unit!42441)

(assert (=> b!2479159 (= lt!886161 (lemmaInLongMapThenInGenericMap!63 lt!886153 key!2246 (hashF!5166 thiss!42540)))))

(assert (=> b!2479159 (= lt!886153 call!151856)))

(declare-fun e!1573366 () Unit!42441)

(declare-fun Unit!42446 () Unit!42441)

(assert (=> b!2479159 (= e!1573366 Unit!42446)))

(declare-fun b!2479160 () Bool)

(declare-fun e!1573365 () Bool)

(assert (=> b!2479160 (= e!1573365 call!151858)))

(declare-fun b!2479161 () Bool)

(declare-fun e!1573364 () Unit!42441)

(declare-fun lt!886156 () Unit!42441)

(assert (=> b!2479161 (= e!1573364 lt!886156)))

(assert (=> b!2479161 (= lt!886159 call!151856)))

(declare-fun lemmaInGenericMapThenInLongMap!63 (ListLongMap!457 K!5380 Hashable!3228) Unit!42441)

(assert (=> b!2479161 (= lt!886156 (lemmaInGenericMapThenInLongMap!63 lt!886159 key!2246 (hashF!5166 thiss!42540)))))

(declare-fun res!1049363 () Bool)

(assert (=> b!2479161 (= res!1049363 call!151854)))

(assert (=> b!2479161 (=> (not res!1049363) (not e!1573365))))

(assert (=> b!2479161 e!1573365))

(declare-fun b!2479162 () Bool)

(assert (=> b!2479162 false))

(declare-fun lt!886162 () Unit!42441)

(declare-fun lt!886155 () Unit!42441)

(assert (=> b!2479162 (= lt!886162 lt!886155)))

(declare-fun lt!886149 () List!29126)

(declare-fun lt!886160 () (_ BitVec 64))

(declare-fun lt!886150 () List!29125)

(assert (=> b!2479162 (contains!5022 lt!886149 (tuple2!28563 lt!886160 lt!886150))))

(declare-fun lemmaGetValueByKeyImpliesContainsTuple!64 (List!29126 (_ BitVec 64) List!29125) Unit!42441)

(assert (=> b!2479162 (= lt!886155 (lemmaGetValueByKeyImpliesContainsTuple!64 lt!886149 lt!886160 lt!886150))))

(assert (=> b!2479162 (= lt!886150 (apply!6874 (v!31325 (underlying!6844 thiss!42540)) lt!886160))))

(assert (=> b!2479162 (= lt!886149 (toList!1513 (map!6109 (v!31325 (underlying!6844 thiss!42540)))))))

(declare-fun lt!886148 () Unit!42441)

(declare-fun lt!886163 () Unit!42441)

(assert (=> b!2479162 (= lt!886148 lt!886163)))

(declare-fun lt!886152 () List!29126)

(declare-fun isDefined!4558 (Option!5736) Bool)

(assert (=> b!2479162 (isDefined!4558 (getValueByKey!130 lt!886152 lt!886160))))

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!87 (List!29126 (_ BitVec 64)) Unit!42441)

(assert (=> b!2479162 (= lt!886163 (lemmaContainsKeyImpliesGetValueByKeyDefined!87 lt!886152 lt!886160))))

(assert (=> b!2479162 (= lt!886152 (toList!1513 (map!6109 (v!31325 (underlying!6844 thiss!42540)))))))

(declare-fun lt!886157 () Unit!42441)

(declare-fun lt!886154 () Unit!42441)

(assert (=> b!2479162 (= lt!886157 lt!886154)))

(declare-fun lt!886164 () List!29126)

(declare-fun containsKey!124 (List!29126 (_ BitVec 64)) Bool)

(assert (=> b!2479162 (containsKey!124 lt!886164 lt!886160)))

(declare-fun lemmaGetValueByKeyIsDefinedImpliesContainsKey!64 (List!29126 (_ BitVec 64)) Unit!42441)

(assert (=> b!2479162 (= lt!886154 (lemmaGetValueByKeyIsDefinedImpliesContainsKey!64 lt!886164 lt!886160))))

(assert (=> b!2479162 (= lt!886164 (toList!1513 (map!6109 (v!31325 (underlying!6844 thiss!42540)))))))

(declare-fun Unit!42447 () Unit!42441)

(assert (=> b!2479162 (= e!1573368 Unit!42447)))

(declare-fun d!712586 () Bool)

(declare-fun lt!886165 () Bool)

(assert (=> d!712586 (= lt!886165 (contains!5023 (map!6108 thiss!42540) key!2246))))

(declare-fun e!1573369 () Bool)

(assert (=> d!712586 (= lt!886165 e!1573369)))

(declare-fun res!1049365 () Bool)

(assert (=> d!712586 (=> (not res!1049365) (not e!1573369))))

(assert (=> d!712586 (= res!1049365 (contains!5020 (v!31325 (underlying!6844 thiss!42540)) lt!886160))))

(declare-fun lt!886151 () Unit!42441)

(assert (=> d!712586 (= lt!886151 e!1573364)))

(assert (=> d!712586 (= c!394356 (contains!5023 (extractMap!151 (toList!1513 (map!6109 (v!31325 (underlying!6844 thiss!42540))))) key!2246))))

(declare-fun lt!886166 () Unit!42441)

(declare-fun e!1573367 () Unit!42441)

(assert (=> d!712586 (= lt!886166 e!1573367)))

(declare-fun c!394358 () Bool)

(assert (=> d!712586 (= c!394358 (contains!5020 (v!31325 (underlying!6844 thiss!42540)) lt!886160))))

(assert (=> d!712586 (= lt!886160 (hash!645 (hashF!5166 thiss!42540) key!2246))))

(assert (=> d!712586 (valid!2527 thiss!42540)))

(assert (=> d!712586 (= (contains!5019 thiss!42540 key!2246) lt!886165)))

(assert (=> b!2479157 (= e!1573367 (forallContained!829 (toList!1513 (map!6109 (v!31325 (underlying!6844 thiss!42540)))) lambda!93633 (tuple2!28563 lt!886160 (apply!6874 (v!31325 (underlying!6844 thiss!42540)) lt!886160))))))

(declare-fun c!394359 () Bool)

(assert (=> b!2479157 (= c!394359 (not (contains!5022 (toList!1513 (map!6109 (v!31325 (underlying!6844 thiss!42540)))) (tuple2!28563 lt!886160 (apply!6874 (v!31325 (underlying!6844 thiss!42540)) lt!886160)))))))

(declare-fun lt!886158 () Unit!42441)

(assert (=> b!2479157 (= lt!886158 e!1573368)))

(declare-fun b!2479163 () Bool)

(declare-fun Unit!42448 () Unit!42441)

(assert (=> b!2479163 (= e!1573366 Unit!42448)))

(declare-fun bm!151852 () Bool)

(declare-fun isDefined!4559 (Option!5737) Bool)

(assert (=> bm!151852 (= call!151858 (isDefined!4559 call!151853))))

(declare-fun b!2479164 () Bool)

(assert (=> b!2479164 (= e!1573369 (isDefined!4559 (getPair!63 (apply!6874 (v!31325 (underlying!6844 thiss!42540)) lt!886160) key!2246)))))

(declare-fun bm!151853 () Bool)

(assert (=> bm!151853 (= call!151856 (map!6109 (v!31325 (underlying!6844 thiss!42540))))))

(declare-fun b!2479165 () Bool)

(declare-fun Unit!42449 () Unit!42441)

(assert (=> b!2479165 (= e!1573367 Unit!42449)))

(declare-fun b!2479166 () Bool)

(assert (=> b!2479166 (= e!1573364 e!1573366)))

(declare-fun res!1049364 () Bool)

(assert (=> b!2479166 (= res!1049364 call!151854)))

(assert (=> b!2479166 (=> (not res!1049364) (not e!1573370))))

(declare-fun c!394357 () Bool)

(assert (=> b!2479166 (= c!394357 e!1573370)))

(assert (= (and d!712586 c!394358) b!2479157))

(assert (= (and d!712586 (not c!394358)) b!2479165))

(assert (= (and b!2479157 c!394359) b!2479162))

(assert (= (and b!2479157 (not c!394359)) b!2479158))

(assert (= (and d!712586 c!394356) b!2479161))

(assert (= (and d!712586 (not c!394356)) b!2479166))

(assert (= (and b!2479161 res!1049363) b!2479160))

(assert (= (and b!2479166 res!1049364) b!2479156))

(assert (= (and b!2479166 c!394357) b!2479159))

(assert (= (and b!2479166 (not c!394357)) b!2479163))

(assert (= (or b!2479161 b!2479166 b!2479156 b!2479159) bm!151853))

(assert (= (or b!2479161 b!2479160 b!2479166 b!2479156) bm!151848))

(assert (= (or b!2479161 b!2479166) bm!151849))

(assert (= (or b!2479160 b!2479156) bm!151850))

(assert (= (or b!2479160 b!2479156) bm!151851))

(assert (= (or b!2479160 b!2479156) bm!151852))

(assert (= (and d!712586 res!1049365) b!2479164))

(declare-fun m!2846807 () Bool)

(assert (=> b!2479162 m!2846807))

(assert (=> b!2479162 m!2846725))

(declare-fun m!2846809 () Bool)

(assert (=> b!2479162 m!2846809))

(declare-fun m!2846811 () Bool)

(assert (=> b!2479162 m!2846811))

(declare-fun m!2846813 () Bool)

(assert (=> b!2479162 m!2846813))

(assert (=> b!2479162 m!2846811))

(declare-fun m!2846815 () Bool)

(assert (=> b!2479162 m!2846815))

(declare-fun m!2846817 () Bool)

(assert (=> b!2479162 m!2846817))

(declare-fun m!2846819 () Bool)

(assert (=> b!2479162 m!2846819))

(declare-fun m!2846821 () Bool)

(assert (=> b!2479162 m!2846821))

(assert (=> bm!151853 m!2846725))

(assert (=> b!2479157 m!2846725))

(assert (=> b!2479157 m!2846819))

(declare-fun m!2846823 () Bool)

(assert (=> b!2479157 m!2846823))

(declare-fun m!2846825 () Bool)

(assert (=> b!2479157 m!2846825))

(declare-fun m!2846827 () Bool)

(assert (=> bm!151852 m!2846827))

(declare-fun m!2846829 () Bool)

(assert (=> bm!151849 m!2846829))

(declare-fun m!2846831 () Bool)

(assert (=> b!2479161 m!2846831))

(assert (=> bm!151848 m!2846731))

(assert (=> b!2479164 m!2846819))

(assert (=> b!2479164 m!2846819))

(declare-fun m!2846833 () Bool)

(assert (=> b!2479164 m!2846833))

(assert (=> b!2479164 m!2846833))

(declare-fun m!2846835 () Bool)

(assert (=> b!2479164 m!2846835))

(assert (=> d!712586 m!2846799))

(declare-fun m!2846837 () Bool)

(assert (=> d!712586 m!2846837))

(assert (=> d!712586 m!2846731))

(assert (=> d!712586 m!2846739))

(assert (=> d!712586 m!2846799))

(assert (=> d!712586 m!2846739))

(declare-fun m!2846839 () Bool)

(assert (=> d!712586 m!2846839))

(assert (=> d!712586 m!2846705))

(declare-fun m!2846841 () Bool)

(assert (=> d!712586 m!2846841))

(assert (=> d!712586 m!2846725))

(declare-fun m!2846843 () Bool)

(assert (=> bm!151851 m!2846843))

(declare-fun m!2846845 () Bool)

(assert (=> bm!151850 m!2846845))

(declare-fun m!2846847 () Bool)

(assert (=> b!2479159 m!2846847))

(assert (=> b!2479159 m!2846847))

(declare-fun m!2846849 () Bool)

(assert (=> b!2479159 m!2846849))

(declare-fun m!2846851 () Bool)

(assert (=> b!2479159 m!2846851))

(assert (=> b!2479065 d!712586))

(declare-fun bs!467265 () Bool)

(declare-fun d!712588 () Bool)

(assert (= bs!467265 (and d!712588 b!2479062)))

(declare-fun lambda!93636 () Int)

(assert (=> bs!467265 (not (= lambda!93636 lambda!93624))))

(declare-fun bs!467266 () Bool)

(assert (= bs!467266 (and d!712588 b!2479130)))

(assert (=> bs!467266 (not (= lambda!93636 lambda!93627))))

(declare-fun bs!467267 () Bool)

(assert (= bs!467267 (and d!712588 d!712584)))

(assert (=> bs!467267 (= lambda!93636 lambda!93630)))

(declare-fun bs!467268 () Bool)

(assert (= bs!467268 (and d!712588 b!2479157)))

(assert (=> bs!467268 (not (= lambda!93636 lambda!93633))))

(assert (=> d!712588 true))

(assert (=> d!712588 (allKeysSameHash!46 lt!886071 lt!886070 (hashF!5166 (_2!16821 lt!886075)))))

(declare-fun lt!886170 () Unit!42441)

(declare-fun choose!14620 (List!29126 (_ BitVec 64) List!29125 Hashable!3228) Unit!42441)

(assert (=> d!712588 (= lt!886170 (choose!14620 (toList!1513 lt!886066) lt!886070 lt!886071 (hashF!5166 (_2!16821 lt!886075))))))

(assert (=> d!712588 (forall!5944 (toList!1513 lt!886066) lambda!93636)))

(assert (=> d!712588 (= (lemmaInLongMapAllKeySameHashThenForTuple!42 (toList!1513 lt!886066) lt!886070 lt!886071 (hashF!5166 (_2!16821 lt!886075))) lt!886170)))

(declare-fun bs!467269 () Bool)

(assert (= bs!467269 d!712588))

(assert (=> bs!467269 m!2846709))

(declare-fun m!2846853 () Bool)

(assert (=> bs!467269 m!2846853))

(declare-fun m!2846855 () Bool)

(assert (=> bs!467269 m!2846855))

(assert (=> b!2479066 d!712588))

(declare-fun bs!467270 () Bool)

(declare-fun d!712590 () Bool)

(assert (= bs!467270 (and d!712590 b!2479130)))

(declare-fun lambda!93641 () Int)

(assert (=> bs!467270 (= lambda!93641 lambda!93627)))

(declare-fun bs!467271 () Bool)

(assert (= bs!467271 (and d!712590 d!712588)))

(assert (=> bs!467271 (not (= lambda!93641 lambda!93636))))

(declare-fun bs!467272 () Bool)

(assert (= bs!467272 (and d!712590 d!712584)))

(assert (=> bs!467272 (not (= lambda!93641 lambda!93630))))

(declare-fun bs!467273 () Bool)

(assert (= bs!467273 (and d!712590 b!2479062)))

(assert (=> bs!467273 (= lambda!93641 lambda!93624)))

(declare-fun bs!467274 () Bool)

(assert (= bs!467274 (and d!712590 b!2479157)))

(assert (=> bs!467274 (= lambda!93641 lambda!93633)))

(declare-fun e!1573373 () Bool)

(assert (=> d!712590 e!1573373))

(declare-fun res!1049368 () Bool)

(assert (=> d!712590 (=> (not res!1049368) (not e!1573373))))

(declare-fun lt!886176 () ListLongMap!457)

(assert (=> d!712590 (= res!1049368 (forall!5944 (toList!1513 lt!886176) lambda!93641))))

(assert (=> d!712590 (= lt!886176 (+!65 lt!886066 (tuple2!28563 lt!886070 lt!886077)))))

(declare-fun lt!886175 () Unit!42441)

(declare-fun choose!14621 (ListLongMap!457 (_ BitVec 64) List!29125 Hashable!3228) Unit!42441)

(assert (=> d!712590 (= lt!886175 (choose!14621 lt!886066 lt!886070 lt!886077 (hashF!5166 (_2!16821 lt!886075))))))

(assert (=> d!712590 (forall!5944 (toList!1513 lt!886066) lambda!93641)))

(assert (=> d!712590 (= (lemmaChangeOneBucketByAValidOnePreservesForallNoDuplicatesAndHash!36 lt!886066 lt!886070 lt!886077 (hashF!5166 (_2!16821 lt!886075))) lt!886175)))

(declare-fun b!2479169 () Bool)

(assert (=> b!2479169 (= e!1573373 (allKeysSameHashInMap!140 lt!886176 (hashF!5166 (_2!16821 lt!886075))))))

(assert (= (and d!712590 res!1049368) b!2479169))

(declare-fun m!2846857 () Bool)

(assert (=> d!712590 m!2846857))

(assert (=> d!712590 m!2846715))

(declare-fun m!2846859 () Bool)

(assert (=> d!712590 m!2846859))

(declare-fun m!2846861 () Bool)

(assert (=> d!712590 m!2846861))

(declare-fun m!2846863 () Bool)

(assert (=> b!2479169 m!2846863))

(assert (=> b!2479066 d!712590))

(declare-fun d!712592 () Bool)

(declare-fun e!1573376 () Bool)

(assert (=> d!712592 e!1573376))

(declare-fun res!1049373 () Bool)

(assert (=> d!712592 (=> (not res!1049373) (not e!1573376))))

(declare-fun lt!886186 () ListLongMap!457)

(assert (=> d!712592 (= res!1049373 (contains!5021 lt!886186 (_1!16822 (tuple2!28563 lt!886070 lt!886077))))))

(declare-fun lt!886188 () List!29126)

(assert (=> d!712592 (= lt!886186 (ListLongMap!458 lt!886188))))

(declare-fun lt!886185 () Unit!42441)

(declare-fun lt!886187 () Unit!42441)

(assert (=> d!712592 (= lt!886185 lt!886187)))

(assert (=> d!712592 (= (getValueByKey!130 lt!886188 (_1!16822 (tuple2!28563 lt!886070 lt!886077))) (Some!5735 (_2!16822 (tuple2!28563 lt!886070 lt!886077))))))

(declare-fun lemmaContainsTupThenGetReturnValue!16 (List!29126 (_ BitVec 64) List!29125) Unit!42441)

(assert (=> d!712592 (= lt!886187 (lemmaContainsTupThenGetReturnValue!16 lt!886188 (_1!16822 (tuple2!28563 lt!886070 lt!886077)) (_2!16822 (tuple2!28563 lt!886070 lt!886077))))))

(declare-fun insertStrictlySorted!10 (List!29126 (_ BitVec 64) List!29125) List!29126)

(assert (=> d!712592 (= lt!886188 (insertStrictlySorted!10 (toList!1513 lt!886066) (_1!16822 (tuple2!28563 lt!886070 lt!886077)) (_2!16822 (tuple2!28563 lt!886070 lt!886077))))))

(assert (=> d!712592 (= (+!65 lt!886066 (tuple2!28563 lt!886070 lt!886077)) lt!886186)))

(declare-fun b!2479174 () Bool)

(declare-fun res!1049374 () Bool)

(assert (=> b!2479174 (=> (not res!1049374) (not e!1573376))))

(assert (=> b!2479174 (= res!1049374 (= (getValueByKey!130 (toList!1513 lt!886186) (_1!16822 (tuple2!28563 lt!886070 lt!886077))) (Some!5735 (_2!16822 (tuple2!28563 lt!886070 lt!886077)))))))

(declare-fun b!2479175 () Bool)

(assert (=> b!2479175 (= e!1573376 (contains!5022 (toList!1513 lt!886186) (tuple2!28563 lt!886070 lt!886077)))))

(assert (= (and d!712592 res!1049373) b!2479174))

(assert (= (and b!2479174 res!1049374) b!2479175))

(declare-fun m!2846865 () Bool)

(assert (=> d!712592 m!2846865))

(declare-fun m!2846867 () Bool)

(assert (=> d!712592 m!2846867))

(declare-fun m!2846869 () Bool)

(assert (=> d!712592 m!2846869))

(declare-fun m!2846871 () Bool)

(assert (=> d!712592 m!2846871))

(declare-fun m!2846873 () Bool)

(assert (=> b!2479174 m!2846873))

(declare-fun m!2846875 () Bool)

(assert (=> b!2479175 m!2846875))

(assert (=> b!2479066 d!712592))

(declare-fun d!712594 () Bool)

(assert (=> d!712594 (allKeysSameHash!46 (removePairForKey!48 lt!886071 key!2246) lt!886070 (hashF!5166 (_2!16821 lt!886075)))))

(declare-fun lt!886191 () Unit!42441)

(declare-fun choose!14622 (List!29125 K!5380 (_ BitVec 64) Hashable!3228) Unit!42441)

(assert (=> d!712594 (= lt!886191 (choose!14622 lt!886071 key!2246 lt!886070 (hashF!5166 (_2!16821 lt!886075))))))

(assert (=> d!712594 (noDuplicateKeys!58 lt!886071)))

(assert (=> d!712594 (= (lemmaRemovePairForKeyPreservesHash!40 lt!886071 key!2246 lt!886070 (hashF!5166 (_2!16821 lt!886075))) lt!886191)))

(declare-fun bs!467275 () Bool)

(assert (= bs!467275 d!712594))

(assert (=> bs!467275 m!2846729))

(assert (=> bs!467275 m!2846729))

(declare-fun m!2846877 () Bool)

(assert (=> bs!467275 m!2846877))

(declare-fun m!2846879 () Bool)

(assert (=> bs!467275 m!2846879))

(assert (=> bs!467275 m!2846753))

(assert (=> b!2479066 d!712594))

(declare-fun d!712596 () Bool)

(assert (=> d!712596 true))

(assert (=> d!712596 true))

(declare-fun lambda!93644 () Int)

(declare-fun forall!5945 (List!29125 Int) Bool)

(assert (=> d!712596 (= (allKeysSameHash!46 lt!886071 lt!886070 (hashF!5166 (_2!16821 lt!886075))) (forall!5945 lt!886071 lambda!93644))))

(declare-fun bs!467276 () Bool)

(assert (= bs!467276 d!712596))

(declare-fun m!2846881 () Bool)

(assert (=> bs!467276 m!2846881))

(assert (=> b!2479066 d!712596))

(declare-fun bs!467277 () Bool)

(declare-fun d!712598 () Bool)

(assert (= bs!467277 (and d!712598 d!712596)))

(declare-fun lambda!93645 () Int)

(assert (=> bs!467277 (= lambda!93645 lambda!93644)))

(assert (=> d!712598 true))

(assert (=> d!712598 true))

(assert (=> d!712598 (= (allKeysSameHash!46 lt!886077 lt!886070 (hashF!5166 (_2!16821 lt!886075))) (forall!5945 lt!886077 lambda!93645))))

(declare-fun bs!467278 () Bool)

(assert (= bs!467278 d!712598))

(declare-fun m!2846883 () Bool)

(assert (=> bs!467278 m!2846883))

(assert (=> b!2479066 d!712598))

(declare-fun d!712600 () Bool)

(declare-fun res!1049379 () Bool)

(declare-fun e!1573381 () Bool)

(assert (=> d!712600 (=> res!1049379 e!1573381)))

(assert (=> d!712600 (= res!1049379 ((_ is Nil!29026) (toList!1513 lt!886067)))))

(assert (=> d!712600 (= (forall!5944 (toList!1513 lt!886067) lambda!93624) e!1573381)))

(declare-fun b!2479184 () Bool)

(declare-fun e!1573382 () Bool)

(assert (=> b!2479184 (= e!1573381 e!1573382)))

(declare-fun res!1049380 () Bool)

(assert (=> b!2479184 (=> (not res!1049380) (not e!1573382))))

(assert (=> b!2479184 (= res!1049380 (dynLambda!12455 lambda!93624 (h!34428 (toList!1513 lt!886067))))))

(declare-fun b!2479185 () Bool)

(assert (=> b!2479185 (= e!1573382 (forall!5944 (t!210775 (toList!1513 lt!886067)) lambda!93624))))

(assert (= (and d!712600 (not res!1049379)) b!2479184))

(assert (= (and b!2479184 res!1049380) b!2479185))

(declare-fun b_lambda!76043 () Bool)

(assert (=> (not b_lambda!76043) (not b!2479184)))

(declare-fun m!2846885 () Bool)

(assert (=> b!2479184 m!2846885))

(declare-fun m!2846887 () Bool)

(assert (=> b!2479185 m!2846887))

(assert (=> b!2479066 d!712600))

(declare-fun condMapEmpty!15403 () Bool)

(declare-fun mapDefault!15403 () List!29125)

(assert (=> mapNonEmpty!15400 (= condMapEmpty!15403 (= mapRest!15400 ((as const (Array (_ BitVec 32) List!29125)) mapDefault!15403)))))

(declare-fun e!1573387 () Bool)

(declare-fun mapRes!15403 () Bool)

(assert (=> mapNonEmpty!15400 (= tp!793418 (and e!1573387 mapRes!15403))))

(declare-fun tp!793427 () Bool)

(declare-fun b!2479193 () Bool)

(declare-fun tp_is_empty!12153 () Bool)

(assert (=> b!2479193 (= e!1573387 (and tp_is_empty!12151 tp_is_empty!12153 tp!793427))))

(declare-fun mapNonEmpty!15403 () Bool)

(declare-fun tp!793425 () Bool)

(declare-fun e!1573388 () Bool)

(assert (=> mapNonEmpty!15403 (= mapRes!15403 (and tp!793425 e!1573388))))

(declare-fun mapValue!15403 () List!29125)

(declare-fun mapKey!15403 () (_ BitVec 32))

(declare-fun mapRest!15403 () (Array (_ BitVec 32) List!29125))

(assert (=> mapNonEmpty!15403 (= mapRest!15400 (store mapRest!15403 mapKey!15403 mapValue!15403))))

(declare-fun mapIsEmpty!15403 () Bool)

(assert (=> mapIsEmpty!15403 mapRes!15403))

(declare-fun tp!793426 () Bool)

(declare-fun b!2479192 () Bool)

(assert (=> b!2479192 (= e!1573388 (and tp_is_empty!12151 tp_is_empty!12153 tp!793426))))

(assert (= (and mapNonEmpty!15400 condMapEmpty!15403) mapIsEmpty!15403))

(assert (= (and mapNonEmpty!15400 (not condMapEmpty!15403)) mapNonEmpty!15403))

(assert (= (and mapNonEmpty!15403 ((_ is Cons!29025) mapValue!15403)) b!2479192))

(assert (= (and mapNonEmpty!15400 ((_ is Cons!29025) mapDefault!15403)) b!2479193))

(declare-fun m!2846889 () Bool)

(assert (=> mapNonEmpty!15403 m!2846889))

(declare-fun b!2479198 () Bool)

(declare-fun e!1573391 () Bool)

(declare-fun tp!793430 () Bool)

(assert (=> b!2479198 (= e!1573391 (and tp_is_empty!12151 tp_is_empty!12153 tp!793430))))

(assert (=> mapNonEmpty!15400 (= tp!793413 e!1573391)))

(assert (= (and mapNonEmpty!15400 ((_ is Cons!29025) mapValue!15400)) b!2479198))

(declare-fun tp!793431 () Bool)

(declare-fun e!1573392 () Bool)

(declare-fun b!2479199 () Bool)

(assert (=> b!2479199 (= e!1573392 (and tp_is_empty!12151 tp_is_empty!12153 tp!793431))))

(assert (=> b!2479064 (= tp!793415 e!1573392)))

(assert (= (and b!2479064 ((_ is Cons!29025) mapDefault!15400)) b!2479199))

(declare-fun e!1573393 () Bool)

(declare-fun tp!793432 () Bool)

(declare-fun b!2479200 () Bool)

(assert (=> b!2479200 (= e!1573393 (and tp_is_empty!12151 tp_is_empty!12153 tp!793432))))

(assert (=> b!2479067 (= tp!793416 e!1573393)))

(assert (= (and b!2479067 ((_ is Cons!29025) (zeroValue!3576 (v!31324 (underlying!6843 (v!31325 (underlying!6844 thiss!42540))))))) b!2479200))

(declare-fun tp!793433 () Bool)

(declare-fun b!2479201 () Bool)

(declare-fun e!1573394 () Bool)

(assert (=> b!2479201 (= e!1573394 (and tp_is_empty!12151 tp_is_empty!12153 tp!793433))))

(assert (=> b!2479067 (= tp!793412 e!1573394)))

(assert (= (and b!2479067 ((_ is Cons!29025) (minValue!3576 (v!31324 (underlying!6843 (v!31325 (underlying!6844 thiss!42540))))))) b!2479201))

(declare-fun b_lambda!76045 () Bool)

(assert (= b_lambda!76041 (or b!2479062 b_lambda!76045)))

(declare-fun bs!467279 () Bool)

(declare-fun d!712602 () Bool)

(assert (= bs!467279 (and d!712602 b!2479062)))

(assert (=> bs!467279 (= (dynLambda!12455 lambda!93624 (tuple2!28563 lt!886070 lt!886071)) (noDuplicateKeys!58 (_2!16822 (tuple2!28563 lt!886070 lt!886071))))))

(declare-fun m!2846891 () Bool)

(assert (=> bs!467279 m!2846891))

(assert (=> d!712574 d!712602))

(declare-fun b_lambda!76047 () Bool)

(assert (= b_lambda!76039 (or (and b!2479067 b_free!72129) b_lambda!76047)))

(declare-fun b_lambda!76049 () Bool)

(assert (= b_lambda!76043 (or b!2479062 b_lambda!76049)))

(declare-fun bs!467280 () Bool)

(declare-fun d!712604 () Bool)

(assert (= bs!467280 (and d!712604 b!2479062)))

(assert (=> bs!467280 (= (dynLambda!12455 lambda!93624 (h!34428 (toList!1513 lt!886067))) (noDuplicateKeys!58 (_2!16822 (h!34428 (toList!1513 lt!886067)))))))

(declare-fun m!2846893 () Bool)

(assert (=> bs!467280 m!2846893))

(assert (=> b!2479184 d!712604))

(check-sat (not b!2479175) (not d!712588) (not b!2479162) (not b_lambda!76045) tp_is_empty!12151 (not d!712586) (not bm!151848) (not b!2479088) (not d!712590) (not bm!151851) (not b!2479192) (not b!2479094) (not d!712578) (not bm!151852) b_and!188369 (not bs!467279) (not b!2479200) (not b!2479164) (not b!2479159) (not bs!467280) (not b!2479174) (not b_lambda!76049) (not bm!151853) (not b!2479193) (not b!2479201) (not bm!151849) (not d!712562) (not b!2479130) (not d!712574) tp_is_empty!12153 (not mapNonEmpty!15403) (not b_lambda!76047) (not d!712568) (not bm!151850) (not tb!140367) (not bm!151834) (not b_next!72835) (not b!2479157) (not b!2479161) (not d!712596) (not d!712594) (not b!2479131) (not b!2479122) (not bm!151835) (not b!2479117) (not d!712576) (not b!2479185) (not d!712572) (not b!2479169) (not b!2479198) (not b!2479199) (not d!712584) (not b_next!72833) (not b!2479115) (not d!712570) (not b!2479114) b_and!188371 (not b!2479076) (not d!712598) (not b!2479077) (not d!712566) (not d!712592) (not b!2479121) (not b!2479125) (not d!712564))
(check-sat b_and!188369 b_and!188371 (not b_next!72833) (not b_next!72835))
