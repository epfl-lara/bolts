; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!218418 () Bool)

(assert start!218418)

(declare-fun b!2241744 () Bool)

(declare-fun b_free!65121 () Bool)

(declare-fun b_next!65825 () Bool)

(assert (=> b!2241744 (= b_free!65121 (not b_next!65825))))

(declare-fun tp!706893 () Bool)

(declare-fun b_and!175149 () Bool)

(assert (=> b!2241744 (= tp!706893 b_and!175149)))

(declare-fun b!2241748 () Bool)

(declare-fun b_free!65123 () Bool)

(declare-fun b_next!65827 () Bool)

(assert (=> b!2241748 (= b_free!65123 (not b_next!65827))))

(declare-fun tp!706891 () Bool)

(declare-fun b_and!175151 () Bool)

(assert (=> b!2241748 (= tp!706891 b_and!175151)))

(declare-fun b!2241743 () Bool)

(declare-fun e!1433555 () Bool)

(declare-fun e!1433559 () Bool)

(assert (=> b!2241743 (= e!1433555 e!1433559)))

(declare-fun mapIsEmpty!14825 () Bool)

(declare-fun mapRes!14825 () Bool)

(assert (=> mapIsEmpty!14825 mapRes!14825))

(declare-fun tp!706892 () Bool)

(declare-fun tp!706886 () Bool)

(declare-fun e!1433556 () Bool)

(declare-datatypes ((C!13200 0))(
  ( (C!13201 (val!7648 Int)) )
))
(declare-datatypes ((Regex!6527 0))(
  ( (ElementMatch!6527 (c!356922 C!13200)) (Concat!10865 (regOne!13566 Regex!6527) (regTwo!13566 Regex!6527)) (EmptyExpr!6527) (Star!6527 (reg!6856 Regex!6527)) (EmptyLang!6527) (Union!6527 (regOne!13567 Regex!6527) (regTwo!13567 Regex!6527)) )
))
(declare-datatypes ((List!26553 0))(
  ( (Nil!26459) (Cons!26459 (h!31860 Regex!6527) (t!199993 List!26553)) )
))
(declare-datatypes ((Context!4150 0))(
  ( (Context!4151 (exprs!2575 List!26553)) )
))
(declare-datatypes ((tuple2!25920 0))(
  ( (tuple2!25921 (_1!15470 Context!4150) (_2!15470 C!13200)) )
))
(declare-datatypes ((array!11080 0))(
  ( (array!11081 (arr!4917 (Array (_ BitVec 32) (_ BitVec 64))) (size!20698 (_ BitVec 32))) )
))
(define-sort InoxSet (T) (Array T Bool))

(declare-datatypes ((tuple2!25922 0))(
  ( (tuple2!25923 (_1!15471 tuple2!25920) (_2!15471 (InoxSet Context!4150))) )
))
(declare-datatypes ((List!26554 0))(
  ( (Nil!26460) (Cons!26460 (h!31861 tuple2!25922) (t!199994 List!26554)) )
))
(declare-datatypes ((array!11082 0))(
  ( (array!11083 (arr!4918 (Array (_ BitVec 32) List!26554)) (size!20699 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!6330 0))(
  ( (LongMapFixedSize!6331 (defaultEntry!3530 Int) (mask!7782 (_ BitVec 32)) (extraKeys!3413 (_ BitVec 32)) (zeroValue!3423 List!26554) (minValue!3423 List!26554) (_size!6377 (_ BitVec 32)) (_keys!3462 array!11080) (_values!3445 array!11082) (_vacant!3226 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!12477 0))(
  ( (Cell!12478 (v!30098 LongMapFixedSize!6330)) )
))
(declare-datatypes ((MutLongMap!3165 0))(
  ( (LongMap!3165 (underlying!6531 Cell!12477)) (MutLongMapExt!3164 (__x!17721 Int)) )
))
(declare-datatypes ((Cell!12479 0))(
  ( (Cell!12480 (v!30099 MutLongMap!3165)) )
))
(declare-datatypes ((Hashable!3075 0))(
  ( (HashableExt!3074 (__x!17722 Int)) )
))
(declare-datatypes ((MutableMap!3075 0))(
  ( (MutableMapExt!3074 (__x!17723 Int)) (HashMap!3075 (underlying!6532 Cell!12479) (hashF!4998 Hashable!3075) (_size!6378 (_ BitVec 32)) (defaultValue!3237 Int)) )
))
(declare-datatypes ((CacheUp!2020 0))(
  ( (CacheUp!2021 (cache!3456 MutableMap!3075)) )
))
(declare-fun thiss!28603 () CacheUp!2020)

(declare-fun array_inv!3531 (array!11080) Bool)

(declare-fun array_inv!3532 (array!11082) Bool)

(assert (=> b!2241744 (= e!1433559 (and tp!706893 tp!706892 tp!706886 (array_inv!3531 (_keys!3462 (v!30098 (underlying!6531 (v!30099 (underlying!6532 (cache!3456 thiss!28603))))))) (array_inv!3532 (_values!3445 (v!30098 (underlying!6531 (v!30099 (underlying!6532 (cache!3456 thiss!28603))))))) e!1433556))))

(declare-fun res!958004 () Bool)

(declare-fun e!1433552 () Bool)

(assert (=> start!218418 (=> (not res!958004) (not e!1433552))))

(declare-fun validCacheMapUp!307 (MutableMap!3075) Bool)

(assert (=> start!218418 (= res!958004 (validCacheMapUp!307 (cache!3456 thiss!28603)))))

(assert (=> start!218418 e!1433552))

(declare-fun e!1433558 () Bool)

(declare-fun inv!35934 (CacheUp!2020) Bool)

(assert (=> start!218418 (and (inv!35934 thiss!28603) e!1433558)))

(declare-fun ctx!36 () Context!4150)

(declare-fun e!1433553 () Bool)

(declare-fun inv!35935 (Context!4150) Bool)

(assert (=> start!218418 (and (inv!35935 ctx!36) e!1433553)))

(declare-fun tp_is_empty!10275 () Bool)

(assert (=> start!218418 tp_is_empty!10275))

(declare-fun mapNonEmpty!14825 () Bool)

(declare-fun tp!706890 () Bool)

(declare-fun tp!706889 () Bool)

(assert (=> mapNonEmpty!14825 (= mapRes!14825 (and tp!706890 tp!706889))))

(declare-fun mapRest!14825 () (Array (_ BitVec 32) List!26554))

(declare-fun mapValue!14825 () List!26554)

(declare-fun mapKey!14825 () (_ BitVec 32))

(assert (=> mapNonEmpty!14825 (= (arr!4918 (_values!3445 (v!30098 (underlying!6531 (v!30099 (underlying!6532 (cache!3456 thiss!28603))))))) (store mapRest!14825 mapKey!14825 mapValue!14825))))

(declare-fun b!2241745 () Bool)

(declare-fun res!958002 () Bool)

(assert (=> b!2241745 (=> (not res!958002) (not e!1433552))))

(get-info :version)

(assert (=> b!2241745 (= res!958002 ((_ is HashMap!3075) (cache!3456 thiss!28603)))))

(declare-fun b!2241746 () Bool)

(declare-fun res!958003 () Bool)

(assert (=> b!2241746 (=> (not res!958003) (not e!1433552))))

(declare-fun a!922 () C!13200)

(declare-fun contains!4511 (MutableMap!3075 tuple2!25920) Bool)

(assert (=> b!2241746 (= res!958003 (not (contains!4511 (cache!3456 thiss!28603) (tuple2!25921 ctx!36 a!922))))))

(declare-fun b!2241747 () Bool)

(declare-fun e!1433551 () Bool)

(assert (=> b!2241747 (= e!1433558 e!1433551)))

(declare-fun e!1433550 () Bool)

(assert (=> b!2241748 (= e!1433551 (and e!1433550 tp!706891))))

(declare-fun b!2241749 () Bool)

(declare-fun e!1433554 () Bool)

(assert (=> b!2241749 (= e!1433554 e!1433555)))

(declare-fun b!2241750 () Bool)

(declare-fun valid!2378 (MutableMap!3075) Bool)

(assert (=> b!2241750 (= e!1433552 (not (valid!2378 (cache!3456 thiss!28603))))))

(declare-fun b!2241751 () Bool)

(declare-fun tp!706888 () Bool)

(assert (=> b!2241751 (= e!1433553 tp!706888)))

(declare-fun b!2241752 () Bool)

(declare-fun tp!706887 () Bool)

(assert (=> b!2241752 (= e!1433556 (and tp!706887 mapRes!14825))))

(declare-fun condMapEmpty!14825 () Bool)

(declare-fun mapDefault!14825 () List!26554)

(assert (=> b!2241752 (= condMapEmpty!14825 (= (arr!4918 (_values!3445 (v!30098 (underlying!6531 (v!30099 (underlying!6532 (cache!3456 thiss!28603))))))) ((as const (Array (_ BitVec 32) List!26554)) mapDefault!14825)))))

(declare-fun b!2241753 () Bool)

(declare-fun lt!834603 () MutLongMap!3165)

(assert (=> b!2241753 (= e!1433550 (and e!1433554 ((_ is LongMap!3165) lt!834603)))))

(assert (=> b!2241753 (= lt!834603 (v!30099 (underlying!6532 (cache!3456 thiss!28603))))))

(assert (= (and start!218418 res!958004) b!2241746))

(assert (= (and b!2241746 res!958003) b!2241745))

(assert (= (and b!2241745 res!958002) b!2241750))

(assert (= (and b!2241752 condMapEmpty!14825) mapIsEmpty!14825))

(assert (= (and b!2241752 (not condMapEmpty!14825)) mapNonEmpty!14825))

(assert (= b!2241744 b!2241752))

(assert (= b!2241743 b!2241744))

(assert (= b!2241749 b!2241743))

(assert (= (and b!2241753 ((_ is LongMap!3165) (v!30099 (underlying!6532 (cache!3456 thiss!28603))))) b!2241749))

(assert (= b!2241748 b!2241753))

(assert (= (and b!2241747 ((_ is HashMap!3075) (cache!3456 thiss!28603))) b!2241748))

(assert (= start!218418 b!2241747))

(assert (= start!218418 b!2241751))

(declare-fun m!2674005 () Bool)

(assert (=> start!218418 m!2674005))

(declare-fun m!2674007 () Bool)

(assert (=> start!218418 m!2674007))

(declare-fun m!2674009 () Bool)

(assert (=> start!218418 m!2674009))

(declare-fun m!2674011 () Bool)

(assert (=> b!2241744 m!2674011))

(declare-fun m!2674013 () Bool)

(assert (=> b!2241744 m!2674013))

(declare-fun m!2674015 () Bool)

(assert (=> mapNonEmpty!14825 m!2674015))

(declare-fun m!2674017 () Bool)

(assert (=> b!2241750 m!2674017))

(declare-fun m!2674019 () Bool)

(assert (=> b!2241746 m!2674019))

(check-sat b_and!175149 (not b!2241744) (not b_next!65825) (not b!2241750) (not b_next!65827) (not b!2241751) (not mapNonEmpty!14825) (not start!218418) b_and!175151 (not b!2241746) tp_is_empty!10275 (not b!2241752))
(check-sat b_and!175151 b_and!175149 (not b_next!65825) (not b_next!65827))
(get-model)

(declare-fun d!665857 () Bool)

(assert (=> d!665857 (= (array_inv!3531 (_keys!3462 (v!30098 (underlying!6531 (v!30099 (underlying!6532 (cache!3456 thiss!28603))))))) (bvsge (size!20698 (_keys!3462 (v!30098 (underlying!6531 (v!30099 (underlying!6532 (cache!3456 thiss!28603))))))) #b00000000000000000000000000000000))))

(assert (=> b!2241744 d!665857))

(declare-fun d!665859 () Bool)

(assert (=> d!665859 (= (array_inv!3532 (_values!3445 (v!30098 (underlying!6531 (v!30099 (underlying!6532 (cache!3456 thiss!28603))))))) (bvsge (size!20699 (_values!3445 (v!30098 (underlying!6531 (v!30099 (underlying!6532 (cache!3456 thiss!28603))))))) #b00000000000000000000000000000000))))

(assert (=> b!2241744 d!665859))

(declare-fun d!665861 () Bool)

(declare-fun res!958009 () Bool)

(declare-fun e!1433562 () Bool)

(assert (=> d!665861 (=> (not res!958009) (not e!1433562))))

(declare-fun valid!2379 (MutLongMap!3165) Bool)

(assert (=> d!665861 (= res!958009 (valid!2379 (v!30099 (underlying!6532 (cache!3456 thiss!28603)))))))

(assert (=> d!665861 (= (valid!2378 (cache!3456 thiss!28603)) e!1433562)))

(declare-fun b!2241758 () Bool)

(declare-fun res!958010 () Bool)

(assert (=> b!2241758 (=> (not res!958010) (not e!1433562))))

(declare-fun lambda!84855 () Int)

(declare-datatypes ((tuple2!25924 0))(
  ( (tuple2!25925 (_1!15472 (_ BitVec 64)) (_2!15472 List!26554)) )
))
(declare-datatypes ((List!26555 0))(
  ( (Nil!26461) (Cons!26461 (h!31862 tuple2!25924) (t!199995 List!26555)) )
))
(declare-fun forall!5452 (List!26555 Int) Bool)

(declare-datatypes ((ListLongMap!365 0))(
  ( (ListLongMap!366 (toList!1397 List!26555)) )
))
(declare-fun map!5482 (MutLongMap!3165) ListLongMap!365)

(assert (=> b!2241758 (= res!958010 (forall!5452 (toList!1397 (map!5482 (v!30099 (underlying!6532 (cache!3456 thiss!28603))))) lambda!84855))))

(declare-fun b!2241759 () Bool)

(declare-fun allKeysSameHashInMap!117 (ListLongMap!365 Hashable!3075) Bool)

(assert (=> b!2241759 (= e!1433562 (allKeysSameHashInMap!117 (map!5482 (v!30099 (underlying!6532 (cache!3456 thiss!28603)))) (hashF!4998 (cache!3456 thiss!28603))))))

(assert (= (and d!665861 res!958009) b!2241758))

(assert (= (and b!2241758 res!958010) b!2241759))

(declare-fun m!2674021 () Bool)

(assert (=> d!665861 m!2674021))

(declare-fun m!2674023 () Bool)

(assert (=> b!2241758 m!2674023))

(declare-fun m!2674025 () Bool)

(assert (=> b!2241758 m!2674025))

(assert (=> b!2241759 m!2674023))

(assert (=> b!2241759 m!2674023))

(declare-fun m!2674027 () Bool)

(assert (=> b!2241759 m!2674027))

(assert (=> b!2241750 d!665861))

(declare-fun d!665863 () Bool)

(declare-fun res!958015 () Bool)

(declare-fun e!1433565 () Bool)

(assert (=> d!665863 (=> (not res!958015) (not e!1433565))))

(assert (=> d!665863 (= res!958015 (valid!2378 (cache!3456 thiss!28603)))))

(assert (=> d!665863 (= (validCacheMapUp!307 (cache!3456 thiss!28603)) e!1433565)))

(declare-fun b!2241764 () Bool)

(declare-fun res!958016 () Bool)

(assert (=> b!2241764 (=> (not res!958016) (not e!1433565))))

(declare-fun invariantList!393 (List!26554) Bool)

(declare-datatypes ((ListMap!883 0))(
  ( (ListMap!884 (toList!1398 List!26554)) )
))
(declare-fun map!5483 (MutableMap!3075) ListMap!883)

(assert (=> b!2241764 (= res!958016 (invariantList!393 (toList!1398 (map!5483 (cache!3456 thiss!28603)))))))

(declare-fun b!2241765 () Bool)

(declare-fun lambda!84858 () Int)

(declare-fun forall!5453 (List!26554 Int) Bool)

(assert (=> b!2241765 (= e!1433565 (forall!5453 (toList!1398 (map!5483 (cache!3456 thiss!28603))) lambda!84858))))

(assert (= (and d!665863 res!958015) b!2241764))

(assert (= (and b!2241764 res!958016) b!2241765))

(assert (=> d!665863 m!2674017))

(declare-fun m!2674030 () Bool)

(assert (=> b!2241764 m!2674030))

(declare-fun m!2674032 () Bool)

(assert (=> b!2241764 m!2674032))

(assert (=> b!2241765 m!2674030))

(declare-fun m!2674034 () Bool)

(assert (=> b!2241765 m!2674034))

(assert (=> start!218418 d!665863))

(declare-fun d!665865 () Bool)

(declare-fun res!958019 () Bool)

(declare-fun e!1433568 () Bool)

(assert (=> d!665865 (=> (not res!958019) (not e!1433568))))

(assert (=> d!665865 (= res!958019 ((_ is HashMap!3075) (cache!3456 thiss!28603)))))

(assert (=> d!665865 (= (inv!35934 thiss!28603) e!1433568)))

(declare-fun b!2241768 () Bool)

(assert (=> b!2241768 (= e!1433568 (validCacheMapUp!307 (cache!3456 thiss!28603)))))

(assert (= (and d!665865 res!958019) b!2241768))

(assert (=> b!2241768 m!2674005))

(assert (=> start!218418 d!665865))

(declare-fun d!665867 () Bool)

(declare-fun lambda!84861 () Int)

(declare-fun forall!5454 (List!26553 Int) Bool)

(assert (=> d!665867 (= (inv!35935 ctx!36) (forall!5454 (exprs!2575 ctx!36) lambda!84861))))

(declare-fun bs!454344 () Bool)

(assert (= bs!454344 d!665867))

(declare-fun m!2674036 () Bool)

(assert (=> bs!454344 m!2674036))

(assert (=> start!218418 d!665867))

(declare-fun bs!454345 () Bool)

(declare-fun b!2241799 () Bool)

(assert (= bs!454345 (and b!2241799 b!2241758)))

(declare-fun lambda!84864 () Int)

(assert (=> bs!454345 (= lambda!84864 lambda!84855)))

(declare-fun b!2241791 () Bool)

(assert (=> b!2241791 false))

(declare-datatypes ((Unit!39446 0))(
  ( (Unit!39447) )
))
(declare-fun lt!834649 () Unit!39446)

(declare-fun lt!834655 () Unit!39446)

(assert (=> b!2241791 (= lt!834649 lt!834655)))

(declare-fun lt!834651 () List!26555)

(declare-fun lt!834662 () (_ BitVec 64))

(declare-fun lt!834657 () List!26554)

(declare-fun contains!4512 (List!26555 tuple2!25924) Bool)

(assert (=> b!2241791 (contains!4512 lt!834651 (tuple2!25925 lt!834662 lt!834657))))

(declare-fun lemmaGetValueByKeyImpliesContainsTuple!48 (List!26555 (_ BitVec 64) List!26554) Unit!39446)

(assert (=> b!2241791 (= lt!834655 (lemmaGetValueByKeyImpliesContainsTuple!48 lt!834651 lt!834662 lt!834657))))

(declare-fun apply!6534 (MutLongMap!3165 (_ BitVec 64)) List!26554)

(assert (=> b!2241791 (= lt!834657 (apply!6534 (v!30099 (underlying!6532 (cache!3456 thiss!28603))) lt!834662))))

(assert (=> b!2241791 (= lt!834651 (toList!1397 (map!5482 (v!30099 (underlying!6532 (cache!3456 thiss!28603))))))))

(declare-fun lt!834650 () Unit!39446)

(declare-fun lt!834648 () Unit!39446)

(assert (=> b!2241791 (= lt!834650 lt!834648)))

(declare-fun lt!834661 () List!26555)

(declare-datatypes ((Option!5171 0))(
  ( (None!5170) (Some!5170 (v!30100 List!26554)) )
))
(declare-fun isDefined!4173 (Option!5171) Bool)

(declare-fun getValueByKey!101 (List!26555 (_ BitVec 64)) Option!5171)

(assert (=> b!2241791 (isDefined!4173 (getValueByKey!101 lt!834661 lt!834662))))

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!65 (List!26555 (_ BitVec 64)) Unit!39446)

(assert (=> b!2241791 (= lt!834648 (lemmaContainsKeyImpliesGetValueByKeyDefined!65 lt!834661 lt!834662))))

(assert (=> b!2241791 (= lt!834661 (toList!1397 (map!5482 (v!30099 (underlying!6532 (cache!3456 thiss!28603))))))))

(declare-fun lt!834647 () Unit!39446)

(declare-fun lt!834652 () Unit!39446)

(assert (=> b!2241791 (= lt!834647 lt!834652)))

(declare-fun lt!834646 () List!26555)

(declare-fun containsKey!96 (List!26555 (_ BitVec 64)) Bool)

(assert (=> b!2241791 (containsKey!96 lt!834646 lt!834662)))

(declare-fun lemmaGetValueByKeyIsDefinedImpliesContainsKey!48 (List!26555 (_ BitVec 64)) Unit!39446)

(assert (=> b!2241791 (= lt!834652 (lemmaGetValueByKeyIsDefinedImpliesContainsKey!48 lt!834646 lt!834662))))

(assert (=> b!2241791 (= lt!834646 (toList!1397 (map!5482 (v!30099 (underlying!6532 (cache!3456 thiss!28603))))))))

(declare-fun e!1433585 () Unit!39446)

(declare-fun Unit!39448 () Unit!39446)

(assert (=> b!2241791 (= e!1433585 Unit!39448)))

(declare-fun lt!834663 () ListLongMap!365)

(declare-fun call!135328 () (_ BitVec 64))

(declare-fun call!135329 () ListLongMap!365)

(declare-fun call!135330 () List!26554)

(declare-fun bm!135320 () Bool)

(declare-fun c!356932 () Bool)

(declare-fun apply!6535 (ListLongMap!365 (_ BitVec 64)) List!26554)

(assert (=> bm!135320 (= call!135330 (apply!6535 (ite c!356932 lt!834663 call!135329) call!135328))))

(declare-fun b!2241792 () Bool)

(declare-fun Unit!39449 () Unit!39446)

(assert (=> b!2241792 (= e!1433585 Unit!39449)))

(declare-fun bm!135321 () Bool)

(assert (=> bm!135321 (= call!135329 (map!5482 (v!30099 (underlying!6532 (cache!3456 thiss!28603)))))))

(declare-fun bm!135322 () Bool)

(declare-fun call!135325 () Bool)

(declare-fun contains!4513 (ListLongMap!365 (_ BitVec 64)) Bool)

(assert (=> bm!135322 (= call!135325 (contains!4513 (ite c!356932 lt!834663 call!135329) call!135328))))

(declare-fun b!2241793 () Bool)

(declare-fun e!1433587 () Unit!39446)

(declare-fun Unit!39450 () Unit!39446)

(assert (=> b!2241793 (= e!1433587 Unit!39450)))

(declare-fun bm!135323 () Bool)

(declare-fun call!135326 () Bool)

(declare-datatypes ((Option!5172 0))(
  ( (None!5171) (Some!5171 (v!30101 tuple2!25922)) )
))
(declare-fun call!135327 () Option!5172)

(declare-fun isDefined!4174 (Option!5172) Bool)

(assert (=> bm!135323 (= call!135326 (isDefined!4174 call!135327))))

(declare-fun b!2241794 () Bool)

(declare-fun e!1433586 () Unit!39446)

(declare-fun lt!834644 () Unit!39446)

(assert (=> b!2241794 (= e!1433586 lt!834644)))

(assert (=> b!2241794 (= lt!834663 call!135329)))

(declare-fun lemmaInGenericMapThenInLongMap!47 (ListLongMap!365 tuple2!25920 Hashable!3075) Unit!39446)

(assert (=> b!2241794 (= lt!834644 (lemmaInGenericMapThenInLongMap!47 lt!834663 (tuple2!25921 ctx!36 a!922) (hashF!4998 (cache!3456 thiss!28603))))))

(declare-fun res!958027 () Bool)

(assert (=> b!2241794 (= res!958027 call!135325)))

(declare-fun e!1433583 () Bool)

(assert (=> b!2241794 (=> (not res!958027) (not e!1433583))))

(assert (=> b!2241794 e!1433583))

(declare-fun b!2241795 () Bool)

(assert (=> b!2241795 false))

(declare-fun lt!834660 () Unit!39446)

(declare-fun lt!834659 () Unit!39446)

(assert (=> b!2241795 (= lt!834660 lt!834659)))

(declare-fun lt!834653 () ListLongMap!365)

(declare-fun contains!4514 (ListMap!883 tuple2!25920) Bool)

(declare-fun extractMap!127 (List!26555) ListMap!883)

(assert (=> b!2241795 (contains!4514 (extractMap!127 (toList!1397 lt!834653)) (tuple2!25921 ctx!36 a!922))))

(declare-fun lemmaInLongMapThenInGenericMap!47 (ListLongMap!365 tuple2!25920 Hashable!3075) Unit!39446)

(assert (=> b!2241795 (= lt!834659 (lemmaInLongMapThenInGenericMap!47 lt!834653 (tuple2!25921 ctx!36 a!922) (hashF!4998 (cache!3456 thiss!28603))))))

(assert (=> b!2241795 (= lt!834653 call!135329)))

(declare-fun Unit!39451 () Unit!39446)

(assert (=> b!2241795 (= e!1433587 Unit!39451)))

(declare-fun d!665869 () Bool)

(declare-fun lt!834658 () Bool)

(assert (=> d!665869 (= lt!834658 (contains!4514 (map!5483 (cache!3456 thiss!28603)) (tuple2!25921 ctx!36 a!922)))))

(declare-fun e!1433588 () Bool)

(assert (=> d!665869 (= lt!834658 e!1433588)))

(declare-fun res!958028 () Bool)

(assert (=> d!665869 (=> (not res!958028) (not e!1433588))))

(declare-fun contains!4515 (MutLongMap!3165 (_ BitVec 64)) Bool)

(assert (=> d!665869 (= res!958028 (contains!4515 (v!30099 (underlying!6532 (cache!3456 thiss!28603))) lt!834662))))

(declare-fun lt!834654 () Unit!39446)

(assert (=> d!665869 (= lt!834654 e!1433586)))

(assert (=> d!665869 (= c!356932 (contains!4514 (extractMap!127 (toList!1397 (map!5482 (v!30099 (underlying!6532 (cache!3456 thiss!28603)))))) (tuple2!25921 ctx!36 a!922)))))

(declare-fun lt!834645 () Unit!39446)

(declare-fun e!1433589 () Unit!39446)

(assert (=> d!665869 (= lt!834645 e!1433589)))

(declare-fun c!356934 () Bool)

(assert (=> d!665869 (= c!356934 (contains!4515 (v!30099 (underlying!6532 (cache!3456 thiss!28603))) lt!834662))))

(declare-fun hash!594 (Hashable!3075 tuple2!25920) (_ BitVec 64))

(assert (=> d!665869 (= lt!834662 (hash!594 (hashF!4998 (cache!3456 thiss!28603)) (tuple2!25921 ctx!36 a!922)))))

(assert (=> d!665869 (valid!2378 (cache!3456 thiss!28603))))

(assert (=> d!665869 (= (contains!4511 (cache!3456 thiss!28603) (tuple2!25921 ctx!36 a!922)) lt!834658)))

(declare-fun b!2241796 () Bool)

(declare-fun e!1433584 () Bool)

(assert (=> b!2241796 (= e!1433584 call!135326)))

(declare-fun bm!135324 () Bool)

(assert (=> bm!135324 (= call!135328 (hash!594 (hashF!4998 (cache!3456 thiss!28603)) (tuple2!25921 ctx!36 a!922)))))

(declare-fun b!2241797 () Bool)

(declare-fun getPair!47 (List!26554 tuple2!25920) Option!5172)

(assert (=> b!2241797 (= e!1433588 (isDefined!4174 (getPair!47 (apply!6534 (v!30099 (underlying!6532 (cache!3456 thiss!28603))) lt!834662) (tuple2!25921 ctx!36 a!922))))))

(declare-fun b!2241798 () Bool)

(assert (=> b!2241798 (= e!1433583 call!135326)))

(declare-fun forallContained!794 (List!26555 Int tuple2!25924) Unit!39446)

(assert (=> b!2241799 (= e!1433589 (forallContained!794 (toList!1397 (map!5482 (v!30099 (underlying!6532 (cache!3456 thiss!28603))))) lambda!84864 (tuple2!25925 lt!834662 (apply!6534 (v!30099 (underlying!6532 (cache!3456 thiss!28603))) lt!834662))))))

(declare-fun c!356931 () Bool)

(assert (=> b!2241799 (= c!356931 (not (contains!4512 (toList!1397 (map!5482 (v!30099 (underlying!6532 (cache!3456 thiss!28603))))) (tuple2!25925 lt!834662 (apply!6534 (v!30099 (underlying!6532 (cache!3456 thiss!28603))) lt!834662)))))))

(declare-fun lt!834656 () Unit!39446)

(assert (=> b!2241799 (= lt!834656 e!1433585)))

(declare-fun bm!135325 () Bool)

(assert (=> bm!135325 (= call!135327 (getPair!47 call!135330 (tuple2!25921 ctx!36 a!922)))))

(declare-fun b!2241800 () Bool)

(assert (=> b!2241800 (= e!1433586 e!1433587)))

(declare-fun res!958026 () Bool)

(assert (=> b!2241800 (= res!958026 call!135325)))

(assert (=> b!2241800 (=> (not res!958026) (not e!1433584))))

(declare-fun c!356933 () Bool)

(assert (=> b!2241800 (= c!356933 e!1433584)))

(declare-fun b!2241801 () Bool)

(declare-fun Unit!39452 () Unit!39446)

(assert (=> b!2241801 (= e!1433589 Unit!39452)))

(assert (= (and d!665869 c!356934) b!2241799))

(assert (= (and d!665869 (not c!356934)) b!2241801))

(assert (= (and b!2241799 c!356931) b!2241791))

(assert (= (and b!2241799 (not c!356931)) b!2241792))

(assert (= (and d!665869 c!356932) b!2241794))

(assert (= (and d!665869 (not c!356932)) b!2241800))

(assert (= (and b!2241794 res!958027) b!2241798))

(assert (= (and b!2241800 res!958026) b!2241796))

(assert (= (and b!2241800 c!356933) b!2241795))

(assert (= (and b!2241800 (not c!356933)) b!2241793))

(assert (= (or b!2241794 b!2241798 b!2241800 b!2241796) bm!135324))

(assert (= (or b!2241794 b!2241800 b!2241796 b!2241795) bm!135321))

(assert (= (or b!2241798 b!2241796) bm!135320))

(assert (= (or b!2241794 b!2241800) bm!135322))

(assert (= (or b!2241798 b!2241796) bm!135325))

(assert (= (or b!2241798 b!2241796) bm!135323))

(assert (= (and d!665869 res!958028) b!2241797))

(declare-fun m!2674038 () Bool)

(assert (=> bm!135325 m!2674038))

(declare-fun m!2674040 () Bool)

(assert (=> b!2241797 m!2674040))

(assert (=> b!2241797 m!2674040))

(declare-fun m!2674042 () Bool)

(assert (=> b!2241797 m!2674042))

(assert (=> b!2241797 m!2674042))

(declare-fun m!2674044 () Bool)

(assert (=> b!2241797 m!2674044))

(declare-fun m!2674046 () Bool)

(assert (=> bm!135323 m!2674046))

(declare-fun m!2674048 () Bool)

(assert (=> b!2241795 m!2674048))

(assert (=> b!2241795 m!2674048))

(declare-fun m!2674050 () Bool)

(assert (=> b!2241795 m!2674050))

(declare-fun m!2674052 () Bool)

(assert (=> b!2241795 m!2674052))

(assert (=> bm!135321 m!2674023))

(declare-fun m!2674054 () Bool)

(assert (=> b!2241791 m!2674054))

(declare-fun m!2674056 () Bool)

(assert (=> b!2241791 m!2674056))

(assert (=> b!2241791 m!2674023))

(declare-fun m!2674058 () Bool)

(assert (=> b!2241791 m!2674058))

(declare-fun m!2674060 () Bool)

(assert (=> b!2241791 m!2674060))

(declare-fun m!2674062 () Bool)

(assert (=> b!2241791 m!2674062))

(assert (=> b!2241791 m!2674060))

(declare-fun m!2674064 () Bool)

(assert (=> b!2241791 m!2674064))

(assert (=> b!2241791 m!2674040))

(declare-fun m!2674066 () Bool)

(assert (=> b!2241791 m!2674066))

(declare-fun m!2674068 () Bool)

(assert (=> bm!135320 m!2674068))

(declare-fun m!2674070 () Bool)

(assert (=> d!665869 m!2674070))

(declare-fun m!2674072 () Bool)

(assert (=> d!665869 m!2674072))

(assert (=> d!665869 m!2674030))

(assert (=> d!665869 m!2674017))

(declare-fun m!2674074 () Bool)

(assert (=> d!665869 m!2674074))

(assert (=> d!665869 m!2674070))

(assert (=> d!665869 m!2674030))

(declare-fun m!2674076 () Bool)

(assert (=> d!665869 m!2674076))

(declare-fun m!2674078 () Bool)

(assert (=> d!665869 m!2674078))

(assert (=> d!665869 m!2674023))

(declare-fun m!2674080 () Bool)

(assert (=> bm!135322 m!2674080))

(declare-fun m!2674082 () Bool)

(assert (=> b!2241794 m!2674082))

(assert (=> bm!135324 m!2674078))

(assert (=> b!2241799 m!2674023))

(assert (=> b!2241799 m!2674040))

(declare-fun m!2674084 () Bool)

(assert (=> b!2241799 m!2674084))

(declare-fun m!2674086 () Bool)

(assert (=> b!2241799 m!2674086))

(assert (=> b!2241746 d!665869))

(declare-fun setIsEmpty!20638 () Bool)

(declare-fun setRes!20638 () Bool)

(assert (=> setIsEmpty!20638 setRes!20638))

(declare-fun e!1433597 () Bool)

(assert (=> b!2241744 (= tp!706892 e!1433597)))

(declare-fun tp!706905 () Bool)

(declare-fun e!1433596 () Bool)

(declare-fun b!2241810 () Bool)

(assert (=> b!2241810 (= e!1433597 (and (inv!35935 (_1!15470 (_1!15471 (h!31861 (zeroValue!3423 (v!30098 (underlying!6531 (v!30099 (underlying!6532 (cache!3456 thiss!28603)))))))))) e!1433596 tp_is_empty!10275 setRes!20638 tp!706905))))

(declare-fun condSetEmpty!20638 () Bool)

(assert (=> b!2241810 (= condSetEmpty!20638 (= (_2!15471 (h!31861 (zeroValue!3423 (v!30098 (underlying!6531 (v!30099 (underlying!6532 (cache!3456 thiss!28603)))))))) ((as const (Array Context!4150 Bool)) false)))))

(declare-fun tp!706904 () Bool)

(declare-fun setNonEmpty!20638 () Bool)

(declare-fun setElem!20638 () Context!4150)

(declare-fun e!1433598 () Bool)

(assert (=> setNonEmpty!20638 (= setRes!20638 (and tp!706904 (inv!35935 setElem!20638) e!1433598))))

(declare-fun setRest!20638 () (InoxSet Context!4150))

(assert (=> setNonEmpty!20638 (= (_2!15471 (h!31861 (zeroValue!3423 (v!30098 (underlying!6531 (v!30099 (underlying!6532 (cache!3456 thiss!28603)))))))) ((_ map or) (store ((as const (Array Context!4150 Bool)) false) setElem!20638 true) setRest!20638))))

(declare-fun b!2241811 () Bool)

(declare-fun tp!706903 () Bool)

(assert (=> b!2241811 (= e!1433598 tp!706903)))

(declare-fun b!2241812 () Bool)

(declare-fun tp!706902 () Bool)

(assert (=> b!2241812 (= e!1433596 tp!706902)))

(assert (= b!2241810 b!2241812))

(assert (= (and b!2241810 condSetEmpty!20638) setIsEmpty!20638))

(assert (= (and b!2241810 (not condSetEmpty!20638)) setNonEmpty!20638))

(assert (= setNonEmpty!20638 b!2241811))

(assert (= (and b!2241744 ((_ is Cons!26460) (zeroValue!3423 (v!30098 (underlying!6531 (v!30099 (underlying!6532 (cache!3456 thiss!28603)))))))) b!2241810))

(declare-fun m!2674088 () Bool)

(assert (=> b!2241810 m!2674088))

(declare-fun m!2674090 () Bool)

(assert (=> setNonEmpty!20638 m!2674090))

(declare-fun setIsEmpty!20639 () Bool)

(declare-fun setRes!20639 () Bool)

(assert (=> setIsEmpty!20639 setRes!20639))

(declare-fun e!1433600 () Bool)

(assert (=> b!2241744 (= tp!706886 e!1433600)))

(declare-fun tp!706909 () Bool)

(declare-fun e!1433599 () Bool)

(declare-fun b!2241813 () Bool)

(assert (=> b!2241813 (= e!1433600 (and (inv!35935 (_1!15470 (_1!15471 (h!31861 (minValue!3423 (v!30098 (underlying!6531 (v!30099 (underlying!6532 (cache!3456 thiss!28603)))))))))) e!1433599 tp_is_empty!10275 setRes!20639 tp!706909))))

(declare-fun condSetEmpty!20639 () Bool)

(assert (=> b!2241813 (= condSetEmpty!20639 (= (_2!15471 (h!31861 (minValue!3423 (v!30098 (underlying!6531 (v!30099 (underlying!6532 (cache!3456 thiss!28603)))))))) ((as const (Array Context!4150 Bool)) false)))))

(declare-fun setElem!20639 () Context!4150)

(declare-fun e!1433601 () Bool)

(declare-fun setNonEmpty!20639 () Bool)

(declare-fun tp!706908 () Bool)

(assert (=> setNonEmpty!20639 (= setRes!20639 (and tp!706908 (inv!35935 setElem!20639) e!1433601))))

(declare-fun setRest!20639 () (InoxSet Context!4150))

(assert (=> setNonEmpty!20639 (= (_2!15471 (h!31861 (minValue!3423 (v!30098 (underlying!6531 (v!30099 (underlying!6532 (cache!3456 thiss!28603)))))))) ((_ map or) (store ((as const (Array Context!4150 Bool)) false) setElem!20639 true) setRest!20639))))

(declare-fun b!2241814 () Bool)

(declare-fun tp!706907 () Bool)

(assert (=> b!2241814 (= e!1433601 tp!706907)))

(declare-fun b!2241815 () Bool)

(declare-fun tp!706906 () Bool)

(assert (=> b!2241815 (= e!1433599 tp!706906)))

(assert (= b!2241813 b!2241815))

(assert (= (and b!2241813 condSetEmpty!20639) setIsEmpty!20639))

(assert (= (and b!2241813 (not condSetEmpty!20639)) setNonEmpty!20639))

(assert (= setNonEmpty!20639 b!2241814))

(assert (= (and b!2241744 ((_ is Cons!26460) (minValue!3423 (v!30098 (underlying!6531 (v!30099 (underlying!6532 (cache!3456 thiss!28603)))))))) b!2241813))

(declare-fun m!2674092 () Bool)

(assert (=> b!2241813 m!2674092))

(declare-fun m!2674094 () Bool)

(assert (=> setNonEmpty!20639 m!2674094))

(declare-fun condMapEmpty!14828 () Bool)

(declare-fun mapDefault!14828 () List!26554)

(assert (=> mapNonEmpty!14825 (= condMapEmpty!14828 (= mapRest!14825 ((as const (Array (_ BitVec 32) List!26554)) mapDefault!14828)))))

(declare-fun e!1433614 () Bool)

(declare-fun mapRes!14828 () Bool)

(assert (=> mapNonEmpty!14825 (= tp!706890 (and e!1433614 mapRes!14828))))

(declare-fun setIsEmpty!20644 () Bool)

(declare-fun setRes!20644 () Bool)

(assert (=> setIsEmpty!20644 setRes!20644))

(declare-fun setRes!20645 () Bool)

(declare-fun setNonEmpty!20644 () Bool)

(declare-fun setElem!20645 () Context!4150)

(declare-fun tp!706929 () Bool)

(declare-fun e!1433617 () Bool)

(assert (=> setNonEmpty!20644 (= setRes!20645 (and tp!706929 (inv!35935 setElem!20645) e!1433617))))

(declare-fun setRest!20645 () (InoxSet Context!4150))

(assert (=> setNonEmpty!20644 (= (_2!15471 (h!31861 mapDefault!14828)) ((_ map or) (store ((as const (Array Context!4150 Bool)) false) setElem!20645 true) setRest!20645))))

(declare-fun e!1433619 () Bool)

(declare-fun tp!706932 () Bool)

(declare-fun b!2241830 () Bool)

(assert (=> b!2241830 (= e!1433614 (and (inv!35935 (_1!15470 (_1!15471 (h!31861 mapDefault!14828)))) e!1433619 tp_is_empty!10275 setRes!20645 tp!706932))))

(declare-fun condSetEmpty!20645 () Bool)

(assert (=> b!2241830 (= condSetEmpty!20645 (= (_2!15471 (h!31861 mapDefault!14828)) ((as const (Array Context!4150 Bool)) false)))))

(declare-fun b!2241831 () Bool)

(declare-fun e!1433615 () Bool)

(declare-fun tp!706936 () Bool)

(assert (=> b!2241831 (= e!1433615 tp!706936)))

(declare-fun b!2241832 () Bool)

(declare-fun tp!706933 () Bool)

(assert (=> b!2241832 (= e!1433619 tp!706933)))

(declare-fun b!2241833 () Bool)

(declare-fun tp!706934 () Bool)

(assert (=> b!2241833 (= e!1433617 tp!706934)))

(declare-fun mapNonEmpty!14828 () Bool)

(declare-fun tp!706930 () Bool)

(declare-fun e!1433616 () Bool)

(assert (=> mapNonEmpty!14828 (= mapRes!14828 (and tp!706930 e!1433616))))

(declare-fun mapValue!14828 () List!26554)

(declare-fun mapKey!14828 () (_ BitVec 32))

(declare-fun mapRest!14828 () (Array (_ BitVec 32) List!26554))

(assert (=> mapNonEmpty!14828 (= mapRest!14825 (store mapRest!14828 mapKey!14828 mapValue!14828))))

(declare-fun setIsEmpty!20645 () Bool)

(assert (=> setIsEmpty!20645 setRes!20645))

(declare-fun b!2241834 () Bool)

(declare-fun e!1433618 () Bool)

(declare-fun tp!706935 () Bool)

(assert (=> b!2241834 (= e!1433618 tp!706935)))

(declare-fun tp!706928 () Bool)

(declare-fun b!2241835 () Bool)

(assert (=> b!2241835 (= e!1433616 (and (inv!35935 (_1!15470 (_1!15471 (h!31861 mapValue!14828)))) e!1433618 tp_is_empty!10275 setRes!20644 tp!706928))))

(declare-fun condSetEmpty!20644 () Bool)

(assert (=> b!2241835 (= condSetEmpty!20644 (= (_2!15471 (h!31861 mapValue!14828)) ((as const (Array Context!4150 Bool)) false)))))

(declare-fun tp!706931 () Bool)

(declare-fun setElem!20644 () Context!4150)

(declare-fun setNonEmpty!20645 () Bool)

(assert (=> setNonEmpty!20645 (= setRes!20644 (and tp!706931 (inv!35935 setElem!20644) e!1433615))))

(declare-fun setRest!20644 () (InoxSet Context!4150))

(assert (=> setNonEmpty!20645 (= (_2!15471 (h!31861 mapValue!14828)) ((_ map or) (store ((as const (Array Context!4150 Bool)) false) setElem!20644 true) setRest!20644))))

(declare-fun mapIsEmpty!14828 () Bool)

(assert (=> mapIsEmpty!14828 mapRes!14828))

(assert (= (and mapNonEmpty!14825 condMapEmpty!14828) mapIsEmpty!14828))

(assert (= (and mapNonEmpty!14825 (not condMapEmpty!14828)) mapNonEmpty!14828))

(assert (= b!2241835 b!2241834))

(assert (= (and b!2241835 condSetEmpty!20644) setIsEmpty!20644))

(assert (= (and b!2241835 (not condSetEmpty!20644)) setNonEmpty!20645))

(assert (= setNonEmpty!20645 b!2241831))

(assert (= (and mapNonEmpty!14828 ((_ is Cons!26460) mapValue!14828)) b!2241835))

(assert (= b!2241830 b!2241832))

(assert (= (and b!2241830 condSetEmpty!20645) setIsEmpty!20645))

(assert (= (and b!2241830 (not condSetEmpty!20645)) setNonEmpty!20644))

(assert (= setNonEmpty!20644 b!2241833))

(assert (= (and mapNonEmpty!14825 ((_ is Cons!26460) mapDefault!14828)) b!2241830))

(declare-fun m!2674096 () Bool)

(assert (=> setNonEmpty!20645 m!2674096))

(declare-fun m!2674098 () Bool)

(assert (=> mapNonEmpty!14828 m!2674098))

(declare-fun m!2674100 () Bool)

(assert (=> setNonEmpty!20644 m!2674100))

(declare-fun m!2674102 () Bool)

(assert (=> b!2241830 m!2674102))

(declare-fun m!2674104 () Bool)

(assert (=> b!2241835 m!2674104))

(declare-fun setIsEmpty!20646 () Bool)

(declare-fun setRes!20646 () Bool)

(assert (=> setIsEmpty!20646 setRes!20646))

(declare-fun e!1433621 () Bool)

(assert (=> mapNonEmpty!14825 (= tp!706889 e!1433621)))

(declare-fun tp!706940 () Bool)

(declare-fun b!2241836 () Bool)

(declare-fun e!1433620 () Bool)

(assert (=> b!2241836 (= e!1433621 (and (inv!35935 (_1!15470 (_1!15471 (h!31861 mapValue!14825)))) e!1433620 tp_is_empty!10275 setRes!20646 tp!706940))))

(declare-fun condSetEmpty!20646 () Bool)

(assert (=> b!2241836 (= condSetEmpty!20646 (= (_2!15471 (h!31861 mapValue!14825)) ((as const (Array Context!4150 Bool)) false)))))

(declare-fun setElem!20646 () Context!4150)

(declare-fun e!1433622 () Bool)

(declare-fun setNonEmpty!20646 () Bool)

(declare-fun tp!706939 () Bool)

(assert (=> setNonEmpty!20646 (= setRes!20646 (and tp!706939 (inv!35935 setElem!20646) e!1433622))))

(declare-fun setRest!20646 () (InoxSet Context!4150))

(assert (=> setNonEmpty!20646 (= (_2!15471 (h!31861 mapValue!14825)) ((_ map or) (store ((as const (Array Context!4150 Bool)) false) setElem!20646 true) setRest!20646))))

(declare-fun b!2241837 () Bool)

(declare-fun tp!706938 () Bool)

(assert (=> b!2241837 (= e!1433622 tp!706938)))

(declare-fun b!2241838 () Bool)

(declare-fun tp!706937 () Bool)

(assert (=> b!2241838 (= e!1433620 tp!706937)))

(assert (= b!2241836 b!2241838))

(assert (= (and b!2241836 condSetEmpty!20646) setIsEmpty!20646))

(assert (= (and b!2241836 (not condSetEmpty!20646)) setNonEmpty!20646))

(assert (= setNonEmpty!20646 b!2241837))

(assert (= (and mapNonEmpty!14825 ((_ is Cons!26460) mapValue!14825)) b!2241836))

(declare-fun m!2674106 () Bool)

(assert (=> b!2241836 m!2674106))

(declare-fun m!2674108 () Bool)

(assert (=> setNonEmpty!20646 m!2674108))

(declare-fun b!2241843 () Bool)

(declare-fun e!1433625 () Bool)

(declare-fun tp!706945 () Bool)

(declare-fun tp!706946 () Bool)

(assert (=> b!2241843 (= e!1433625 (and tp!706945 tp!706946))))

(assert (=> b!2241751 (= tp!706888 e!1433625)))

(assert (= (and b!2241751 ((_ is Cons!26459) (exprs!2575 ctx!36))) b!2241843))

(declare-fun setIsEmpty!20647 () Bool)

(declare-fun setRes!20647 () Bool)

(assert (=> setIsEmpty!20647 setRes!20647))

(declare-fun e!1433627 () Bool)

(assert (=> b!2241752 (= tp!706887 e!1433627)))

(declare-fun b!2241844 () Bool)

(declare-fun tp!706950 () Bool)

(declare-fun e!1433626 () Bool)

(assert (=> b!2241844 (= e!1433627 (and (inv!35935 (_1!15470 (_1!15471 (h!31861 mapDefault!14825)))) e!1433626 tp_is_empty!10275 setRes!20647 tp!706950))))

(declare-fun condSetEmpty!20647 () Bool)

(assert (=> b!2241844 (= condSetEmpty!20647 (= (_2!15471 (h!31861 mapDefault!14825)) ((as const (Array Context!4150 Bool)) false)))))

(declare-fun setElem!20647 () Context!4150)

(declare-fun tp!706949 () Bool)

(declare-fun e!1433628 () Bool)

(declare-fun setNonEmpty!20647 () Bool)

(assert (=> setNonEmpty!20647 (= setRes!20647 (and tp!706949 (inv!35935 setElem!20647) e!1433628))))

(declare-fun setRest!20647 () (InoxSet Context!4150))

(assert (=> setNonEmpty!20647 (= (_2!15471 (h!31861 mapDefault!14825)) ((_ map or) (store ((as const (Array Context!4150 Bool)) false) setElem!20647 true) setRest!20647))))

(declare-fun b!2241845 () Bool)

(declare-fun tp!706948 () Bool)

(assert (=> b!2241845 (= e!1433628 tp!706948)))

(declare-fun b!2241846 () Bool)

(declare-fun tp!706947 () Bool)

(assert (=> b!2241846 (= e!1433626 tp!706947)))

(assert (= b!2241844 b!2241846))

(assert (= (and b!2241844 condSetEmpty!20647) setIsEmpty!20647))

(assert (= (and b!2241844 (not condSetEmpty!20647)) setNonEmpty!20647))

(assert (= setNonEmpty!20647 b!2241845))

(assert (= (and b!2241752 ((_ is Cons!26460) mapDefault!14825)) b!2241844))

(declare-fun m!2674110 () Bool)

(assert (=> b!2241844 m!2674110))

(declare-fun m!2674112 () Bool)

(assert (=> setNonEmpty!20647 m!2674112))

(check-sat (not b!2241791) (not d!665867) (not b_next!65827) (not b!2241846) (not b!2241812) (not setNonEmpty!20644) (not b!2241764) (not bm!135322) (not d!665861) (not b!2241836) b_and!175149 (not b!2241759) (not b!2241830) (not d!665869) b_and!175151 (not setNonEmpty!20647) (not b!2241768) (not b!2241794) (not b!2241833) (not b!2241758) tp_is_empty!10275 (not b!2241813) (not bm!135320) (not bm!135324) (not bm!135321) (not b_next!65825) (not b!2241799) (not b!2241831) (not d!665863) (not bm!135323) (not b!2241837) (not b!2241845) (not setNonEmpty!20639) (not setNonEmpty!20646) (not setNonEmpty!20645) (not b!2241832) (not b!2241815) (not b!2241843) (not b!2241838) (not setNonEmpty!20638) (not b!2241834) (not b!2241811) (not b!2241844) (not b!2241765) (not b!2241814) (not b!2241795) (not b!2241797) (not b!2241835) (not bm!135325) (not b!2241810) (not mapNonEmpty!14828))
(check-sat b_and!175151 b_and!175149 (not b_next!65825) (not b_next!65827))
