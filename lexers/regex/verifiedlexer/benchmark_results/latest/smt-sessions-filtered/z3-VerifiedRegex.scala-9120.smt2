; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!487296 () Bool)

(assert start!487296)

(declare-fun b!4764599 () Bool)

(declare-fun b_free!129539 () Bool)

(declare-fun b_next!130329 () Bool)

(assert (=> b!4764599 (= b_free!129539 (not b_next!130329))))

(declare-fun tp!1354804 () Bool)

(declare-fun b_and!341229 () Bool)

(assert (=> b!4764599 (= tp!1354804 b_and!341229)))

(declare-fun b!4764594 () Bool)

(declare-fun b_free!129541 () Bool)

(declare-fun b_next!130331 () Bool)

(assert (=> b!4764594 (= b_free!129541 (not b_next!130331))))

(declare-fun tp!1354805 () Bool)

(declare-fun b_and!341231 () Bool)

(assert (=> b!4764594 (= tp!1354805 b_and!341231)))

(declare-fun b!4764593 () Bool)

(declare-fun e!2973708 () Bool)

(declare-fun e!2973712 () Bool)

(assert (=> b!4764593 (= e!2973708 e!2973712)))

(declare-fun e!2973714 () Bool)

(declare-fun e!2973705 () Bool)

(assert (=> b!4764594 (= e!2973714 (and e!2973705 tp!1354805))))

(declare-fun res!2020805 () Bool)

(declare-fun e!2973710 () Bool)

(assert (=> start!487296 (=> (not res!2020805) (not e!2973710))))

(declare-datatypes ((K!14889 0))(
  ( (K!14890 (val!20217 Int)) )
))
(declare-datatypes ((V!15135 0))(
  ( (V!15136 (val!20218 Int)) )
))
(declare-datatypes ((tuple2!55436 0))(
  ( (tuple2!55437 (_1!31012 K!14889) (_2!31012 V!15135)) )
))
(declare-datatypes ((array!17896 0))(
  ( (array!17897 (arr!7983 (Array (_ BitVec 32) (_ BitVec 64))) (size!36213 (_ BitVec 32))) )
))
(declare-datatypes ((List!53562 0))(
  ( (Nil!53438) (Cons!53438 (h!59850 tuple2!55436) (t!360966 List!53562)) )
))
(declare-datatypes ((array!17898 0))(
  ( (array!17899 (arr!7984 (Array (_ BitVec 32) List!53562)) (size!36214 (_ BitVec 32))) )
))
(declare-datatypes ((Hashable!6560 0))(
  ( (HashableExt!6559 (__x!32445 Int)) )
))
(declare-datatypes ((LongMapFixedSize!9798 0))(
  ( (LongMapFixedSize!9799 (defaultEntry!5317 Int) (mask!14644 (_ BitVec 32)) (extraKeys!5174 (_ BitVec 32)) (zeroValue!5187 List!53562) (minValue!5187 List!53562) (_size!9823 (_ BitVec 32)) (_keys!5241 array!17896) (_values!5212 array!17898) (_vacant!4964 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!19361 0))(
  ( (Cell!19362 (v!47531 LongMapFixedSize!9798)) )
))
(declare-datatypes ((MutLongMap!4899 0))(
  ( (LongMap!4899 (underlying!10005 Cell!19361)) (MutLongMapExt!4898 (__x!32446 Int)) )
))
(declare-datatypes ((Cell!19363 0))(
  ( (Cell!19364 (v!47532 MutLongMap!4899)) )
))
(declare-datatypes ((MutableMap!4783 0))(
  ( (MutableMapExt!4782 (__x!32447 Int)) (HashMap!4783 (underlying!10006 Cell!19363) (hashF!12385 Hashable!6560) (_size!9824 (_ BitVec 32)) (defaultValue!4954 Int)) )
))
(declare-fun thiss!42052 () MutableMap!4783)

(get-info :version)

(assert (=> start!487296 (= res!2020805 ((_ is HashMap!4783) thiss!42052))))

(assert (=> start!487296 e!2973710))

(assert (=> start!487296 e!2973714))

(declare-fun tp_is_empty!32375 () Bool)

(assert (=> start!487296 tp_is_empty!32375))

(declare-fun b!4764595 () Bool)

(declare-fun e!2973711 () Bool)

(declare-fun lt!1927402 () MutLongMap!4899)

(assert (=> b!4764595 (= e!2973705 (and e!2973711 ((_ is LongMap!4899) lt!1927402)))))

(assert (=> b!4764595 (= lt!1927402 (v!47532 (underlying!10006 thiss!42052)))))

(declare-fun mapIsEmpty!21752 () Bool)

(declare-fun mapRes!21752 () Bool)

(assert (=> mapIsEmpty!21752 mapRes!21752))

(declare-fun b!4764596 () Bool)

(declare-fun res!2020806 () Bool)

(assert (=> b!4764596 (=> (not res!2020806) (not e!2973710))))

(declare-fun key!1776 () K!14889)

(declare-fun contains!16753 (MutableMap!4783 K!14889) Bool)

(assert (=> b!4764596 (= res!2020806 (contains!16753 thiss!42052 key!1776))))

(declare-fun b!4764597 () Bool)

(declare-fun res!2020807 () Bool)

(assert (=> b!4764597 (=> (not res!2020807) (not e!2973710))))

(declare-fun valid!3896 (MutableMap!4783) Bool)

(assert (=> b!4764597 (= res!2020807 (valid!3896 thiss!42052))))

(declare-fun b!4764598 () Bool)

(assert (=> b!4764598 (= e!2973711 e!2973708)))

(declare-fun e!2973709 () Bool)

(declare-fun tp!1354801 () Bool)

(declare-fun tp!1354802 () Bool)

(declare-fun array_inv!5743 (array!17896) Bool)

(declare-fun array_inv!5744 (array!17898) Bool)

(assert (=> b!4764599 (= e!2973712 (and tp!1354804 tp!1354802 tp!1354801 (array_inv!5743 (_keys!5241 (v!47531 (underlying!10005 (v!47532 (underlying!10006 thiss!42052)))))) (array_inv!5744 (_values!5212 (v!47531 (underlying!10005 (v!47532 (underlying!10006 thiss!42052)))))) e!2973709))))

(declare-fun b!4764600 () Bool)

(declare-datatypes ((Unit!138103 0))(
  ( (Unit!138104) )
))
(declare-fun e!2973707 () Unit!138103)

(declare-fun Unit!138105 () Unit!138103)

(assert (=> b!4764600 (= e!2973707 Unit!138105)))

(declare-fun lt!1927405 () Unit!138103)

(declare-datatypes ((tuple2!55438 0))(
  ( (tuple2!55439 (_1!31013 (_ BitVec 64)) (_2!31013 List!53562)) )
))
(declare-datatypes ((List!53563 0))(
  ( (Nil!53439) (Cons!53439 (h!59851 tuple2!55438) (t!360967 List!53563)) )
))
(declare-datatypes ((ListLongMap!4649 0))(
  ( (ListLongMap!4650 (toList!6254 List!53563)) )
))
(declare-fun lt!1927400 () ListLongMap!4649)

(declare-fun lt!1927404 () (_ BitVec 64))

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!1969 (List!53563 (_ BitVec 64)) Unit!138103)

(assert (=> b!4764600 (= lt!1927405 (lemmaContainsKeyImpliesGetValueByKeyDefined!1969 (toList!6254 lt!1927400) lt!1927404))))

(declare-datatypes ((Option!12631 0))(
  ( (None!12630) (Some!12630 (v!47533 List!53562)) )
))
(declare-fun isDefined!9804 (Option!12631) Bool)

(declare-fun getValueByKey!2155 (List!53563 (_ BitVec 64)) Option!12631)

(assert (=> b!4764600 (isDefined!9804 (getValueByKey!2155 (toList!6254 lt!1927400) lt!1927404))))

(declare-fun lt!1927406 () List!53562)

(declare-fun lt!1927403 () Unit!138103)

(declare-fun lemmaGetValueByKeyImpliesContainsTuple!913 (List!53563 (_ BitVec 64) List!53562) Unit!138103)

(assert (=> b!4764600 (= lt!1927403 (lemmaGetValueByKeyImpliesContainsTuple!913 (toList!6254 lt!1927400) lt!1927404 lt!1927406))))

(assert (=> b!4764600 false))

(declare-fun mapNonEmpty!21752 () Bool)

(declare-fun tp!1354803 () Bool)

(declare-fun tp!1354806 () Bool)

(assert (=> mapNonEmpty!21752 (= mapRes!21752 (and tp!1354803 tp!1354806))))

(declare-fun mapValue!21752 () List!53562)

(declare-fun mapKey!21752 () (_ BitVec 32))

(declare-fun mapRest!21752 () (Array (_ BitVec 32) List!53562))

(assert (=> mapNonEmpty!21752 (= (arr!7984 (_values!5212 (v!47531 (underlying!10005 (v!47532 (underlying!10006 thiss!42052)))))) (store mapRest!21752 mapKey!21752 mapValue!21752))))

(declare-fun b!4764601 () Bool)

(declare-fun e!2973713 () Bool)

(declare-fun valid!3897 (MutLongMap!4899) Bool)

(assert (=> b!4764601 (= e!2973713 (not (valid!3897 (v!47532 (underlying!10006 thiss!42052)))))))

(declare-fun b!4764602 () Bool)

(declare-fun tp!1354800 () Bool)

(assert (=> b!4764602 (= e!2973709 (and tp!1354800 mapRes!21752))))

(declare-fun condMapEmpty!21752 () Bool)

(declare-fun mapDefault!21752 () List!53562)

(assert (=> b!4764602 (= condMapEmpty!21752 (= (arr!7984 (_values!5212 (v!47531 (underlying!10005 (v!47532 (underlying!10006 thiss!42052)))))) ((as const (Array (_ BitVec 32) List!53562)) mapDefault!21752)))))

(declare-fun b!4764603 () Bool)

(declare-fun Unit!138106 () Unit!138103)

(assert (=> b!4764603 (= e!2973707 Unit!138106)))

(declare-fun b!4764604 () Bool)

(assert (=> b!4764604 (= e!2973710 e!2973713)))

(declare-fun res!2020804 () Bool)

(assert (=> b!4764604 (=> (not res!2020804) (not e!2973713))))

(assert (=> b!4764604 (= res!2020804 ((_ is LongMap!4899) (v!47532 (underlying!10006 thiss!42052))))))

(declare-fun lt!1927401 () Unit!138103)

(assert (=> b!4764604 (= lt!1927401 e!2973707)))

(declare-fun c!812752 () Bool)

(declare-fun contains!16754 (List!53563 tuple2!55438) Bool)

(assert (=> b!4764604 (= c!812752 (not (contains!16754 (toList!6254 lt!1927400) (tuple2!55439 lt!1927404 lt!1927406))))))

(declare-fun apply!12584 (MutLongMap!4899 (_ BitVec 64)) List!53562)

(assert (=> b!4764604 (= lt!1927406 (apply!12584 (v!47532 (underlying!10006 thiss!42052)) lt!1927404))))

(declare-fun map!11937 (MutLongMap!4899) ListLongMap!4649)

(assert (=> b!4764604 (= lt!1927400 (map!11937 (v!47532 (underlying!10006 thiss!42052))))))

(declare-fun hash!4543 (Hashable!6560 K!14889) (_ BitVec 64))

(assert (=> b!4764604 (= lt!1927404 (hash!4543 (hashF!12385 thiss!42052) key!1776))))

(assert (= (and start!487296 res!2020805) b!4764597))

(assert (= (and b!4764597 res!2020807) b!4764596))

(assert (= (and b!4764596 res!2020806) b!4764604))

(assert (= (and b!4764604 c!812752) b!4764600))

(assert (= (and b!4764604 (not c!812752)) b!4764603))

(assert (= (and b!4764604 res!2020804) b!4764601))

(assert (= (and b!4764602 condMapEmpty!21752) mapIsEmpty!21752))

(assert (= (and b!4764602 (not condMapEmpty!21752)) mapNonEmpty!21752))

(assert (= b!4764599 b!4764602))

(assert (= b!4764593 b!4764599))

(assert (= b!4764598 b!4764593))

(assert (= (and b!4764595 ((_ is LongMap!4899) (v!47532 (underlying!10006 thiss!42052)))) b!4764598))

(assert (= b!4764594 b!4764595))

(assert (= (and start!487296 ((_ is HashMap!4783) thiss!42052)) b!4764594))

(declare-fun m!5735072 () Bool)

(assert (=> b!4764596 m!5735072))

(declare-fun m!5735074 () Bool)

(assert (=> b!4764604 m!5735074))

(declare-fun m!5735076 () Bool)

(assert (=> b!4764604 m!5735076))

(declare-fun m!5735078 () Bool)

(assert (=> b!4764604 m!5735078))

(declare-fun m!5735080 () Bool)

(assert (=> b!4764604 m!5735080))

(declare-fun m!5735082 () Bool)

(assert (=> b!4764599 m!5735082))

(declare-fun m!5735084 () Bool)

(assert (=> b!4764599 m!5735084))

(declare-fun m!5735086 () Bool)

(assert (=> b!4764601 m!5735086))

(declare-fun m!5735088 () Bool)

(assert (=> mapNonEmpty!21752 m!5735088))

(declare-fun m!5735090 () Bool)

(assert (=> b!4764600 m!5735090))

(declare-fun m!5735092 () Bool)

(assert (=> b!4764600 m!5735092))

(assert (=> b!4764600 m!5735092))

(declare-fun m!5735094 () Bool)

(assert (=> b!4764600 m!5735094))

(declare-fun m!5735096 () Bool)

(assert (=> b!4764600 m!5735096))

(declare-fun m!5735098 () Bool)

(assert (=> b!4764597 m!5735098))

(check-sat (not b_next!130331) (not b!4764604) (not mapNonEmpty!21752) b_and!341229 (not b!4764600) (not b!4764597) (not b!4764602) (not b!4764596) (not b!4764601) (not b_next!130329) tp_is_empty!32375 b_and!341231 (not b!4764599))
(check-sat b_and!341231 b_and!341229 (not b_next!130331) (not b_next!130329))
(get-model)

(declare-fun d!1523257 () Bool)

(assert (=> d!1523257 (isDefined!9804 (getValueByKey!2155 (toList!6254 lt!1927400) lt!1927404))))

(declare-fun lt!1927409 () Unit!138103)

(declare-fun choose!33930 (List!53563 (_ BitVec 64)) Unit!138103)

(assert (=> d!1523257 (= lt!1927409 (choose!33930 (toList!6254 lt!1927400) lt!1927404))))

(declare-fun e!2973717 () Bool)

(assert (=> d!1523257 e!2973717))

(declare-fun res!2020810 () Bool)

(assert (=> d!1523257 (=> (not res!2020810) (not e!2973717))))

(declare-fun isStrictlySorted!799 (List!53563) Bool)

(assert (=> d!1523257 (= res!2020810 (isStrictlySorted!799 (toList!6254 lt!1927400)))))

(assert (=> d!1523257 (= (lemmaContainsKeyImpliesGetValueByKeyDefined!1969 (toList!6254 lt!1927400) lt!1927404) lt!1927409)))

(declare-fun b!4764607 () Bool)

(declare-fun containsKey!3650 (List!53563 (_ BitVec 64)) Bool)

(assert (=> b!4764607 (= e!2973717 (containsKey!3650 (toList!6254 lt!1927400) lt!1927404))))

(assert (= (and d!1523257 res!2020810) b!4764607))

(assert (=> d!1523257 m!5735092))

(assert (=> d!1523257 m!5735092))

(assert (=> d!1523257 m!5735094))

(declare-fun m!5735100 () Bool)

(assert (=> d!1523257 m!5735100))

(declare-fun m!5735102 () Bool)

(assert (=> d!1523257 m!5735102))

(declare-fun m!5735104 () Bool)

(assert (=> b!4764607 m!5735104))

(assert (=> b!4764600 d!1523257))

(declare-fun d!1523259 () Bool)

(declare-fun isEmpty!29266 (Option!12631) Bool)

(assert (=> d!1523259 (= (isDefined!9804 (getValueByKey!2155 (toList!6254 lt!1927400) lt!1927404)) (not (isEmpty!29266 (getValueByKey!2155 (toList!6254 lt!1927400) lt!1927404))))))

(declare-fun bs!1148726 () Bool)

(assert (= bs!1148726 d!1523259))

(assert (=> bs!1148726 m!5735092))

(declare-fun m!5735106 () Bool)

(assert (=> bs!1148726 m!5735106))

(assert (=> b!4764600 d!1523259))

(declare-fun b!4764619 () Bool)

(declare-fun e!2973723 () Option!12631)

(assert (=> b!4764619 (= e!2973723 None!12630)))

(declare-fun b!4764618 () Bool)

(assert (=> b!4764618 (= e!2973723 (getValueByKey!2155 (t!360967 (toList!6254 lt!1927400)) lt!1927404))))

(declare-fun d!1523261 () Bool)

(declare-fun c!812757 () Bool)

(assert (=> d!1523261 (= c!812757 (and ((_ is Cons!53439) (toList!6254 lt!1927400)) (= (_1!31013 (h!59851 (toList!6254 lt!1927400))) lt!1927404)))))

(declare-fun e!2973722 () Option!12631)

(assert (=> d!1523261 (= (getValueByKey!2155 (toList!6254 lt!1927400) lt!1927404) e!2973722)))

(declare-fun b!4764616 () Bool)

(assert (=> b!4764616 (= e!2973722 (Some!12630 (_2!31013 (h!59851 (toList!6254 lt!1927400)))))))

(declare-fun b!4764617 () Bool)

(assert (=> b!4764617 (= e!2973722 e!2973723)))

(declare-fun c!812758 () Bool)

(assert (=> b!4764617 (= c!812758 (and ((_ is Cons!53439) (toList!6254 lt!1927400)) (not (= (_1!31013 (h!59851 (toList!6254 lt!1927400))) lt!1927404))))))

(assert (= (and d!1523261 c!812757) b!4764616))

(assert (= (and d!1523261 (not c!812757)) b!4764617))

(assert (= (and b!4764617 c!812758) b!4764618))

(assert (= (and b!4764617 (not c!812758)) b!4764619))

(declare-fun m!5735108 () Bool)

(assert (=> b!4764618 m!5735108))

(assert (=> b!4764600 d!1523261))

(declare-fun d!1523263 () Bool)

(assert (=> d!1523263 (contains!16754 (toList!6254 lt!1927400) (tuple2!55439 lt!1927404 lt!1927406))))

(declare-fun lt!1927412 () Unit!138103)

(declare-fun choose!33931 (List!53563 (_ BitVec 64) List!53562) Unit!138103)

(assert (=> d!1523263 (= lt!1927412 (choose!33931 (toList!6254 lt!1927400) lt!1927404 lt!1927406))))

(declare-fun e!2973726 () Bool)

(assert (=> d!1523263 e!2973726))

(declare-fun res!2020813 () Bool)

(assert (=> d!1523263 (=> (not res!2020813) (not e!2973726))))

(assert (=> d!1523263 (= res!2020813 (isStrictlySorted!799 (toList!6254 lt!1927400)))))

(assert (=> d!1523263 (= (lemmaGetValueByKeyImpliesContainsTuple!913 (toList!6254 lt!1927400) lt!1927404 lt!1927406) lt!1927412)))

(declare-fun b!4764622 () Bool)

(assert (=> b!4764622 (= e!2973726 (= (getValueByKey!2155 (toList!6254 lt!1927400) lt!1927404) (Some!12630 lt!1927406)))))

(assert (= (and d!1523263 res!2020813) b!4764622))

(assert (=> d!1523263 m!5735074))

(declare-fun m!5735110 () Bool)

(assert (=> d!1523263 m!5735110))

(assert (=> d!1523263 m!5735102))

(assert (=> b!4764622 m!5735092))

(assert (=> b!4764600 d!1523263))

(declare-fun bm!334046 () Bool)

(declare-fun call!334055 () Bool)

(declare-datatypes ((Option!12632 0))(
  ( (None!12631) (Some!12631 (v!47536 tuple2!55436)) )
))
(declare-fun call!334051 () Option!12632)

(declare-fun isDefined!9805 (Option!12632) Bool)

(assert (=> bm!334046 (= call!334055 (isDefined!9805 call!334051))))

(declare-fun bm!334047 () Bool)

(declare-fun call!334054 () List!53562)

(declare-fun getPair!629 (List!53562 K!14889) Option!12632)

(assert (=> bm!334047 (= call!334051 (getPair!629 call!334054 key!1776))))

(declare-fun b!4764645 () Bool)

(declare-fun e!2973744 () Unit!138103)

(declare-fun Unit!138107 () Unit!138103)

(assert (=> b!4764645 (= e!2973744 Unit!138107)))

(declare-fun b!4764646 () Bool)

(declare-fun e!2973746 () Unit!138103)

(declare-fun lt!1927461 () Unit!138103)

(assert (=> b!4764646 (= e!2973746 lt!1927461)))

(declare-fun lt!1927470 () ListLongMap!4649)

(declare-fun call!334056 () ListLongMap!4649)

(assert (=> b!4764646 (= lt!1927470 call!334056)))

(declare-fun lemmaInGenericMapThenInLongMap!193 (ListLongMap!4649 K!14889 Hashable!6560) Unit!138103)

(assert (=> b!4764646 (= lt!1927461 (lemmaInGenericMapThenInLongMap!193 lt!1927470 key!1776 (hashF!12385 thiss!42052)))))

(declare-fun res!2020821 () Bool)

(declare-fun call!334053 () Bool)

(assert (=> b!4764646 (= res!2020821 call!334053)))

(declare-fun e!2973741 () Bool)

(assert (=> b!4764646 (=> (not res!2020821) (not e!2973741))))

(assert (=> b!4764646 e!2973741))

(declare-fun b!4764648 () Bool)

(declare-fun lt!1927464 () (_ BitVec 64))

(declare-fun e!2973747 () Bool)

(assert (=> b!4764648 (= e!2973747 (isDefined!9805 (getPair!629 (apply!12584 (v!47532 (underlying!10006 thiss!42052)) lt!1927464) key!1776)))))

(declare-fun bm!334048 () Bool)

(declare-fun call!334052 () (_ BitVec 64))

(assert (=> bm!334048 (= call!334052 (hash!4543 (hashF!12385 thiss!42052) key!1776))))

(declare-fun b!4764649 () Bool)

(declare-fun e!2973743 () Unit!138103)

(declare-fun Unit!138108 () Unit!138103)

(assert (=> b!4764649 (= e!2973743 Unit!138108)))

(declare-fun bm!334049 () Bool)

(assert (=> bm!334049 (= call!334056 (map!11937 (v!47532 (underlying!10006 thiss!42052))))))

(declare-fun c!812768 () Bool)

(declare-fun bm!334050 () Bool)

(declare-fun contains!16755 (ListLongMap!4649 (_ BitVec 64)) Bool)

(assert (=> bm!334050 (= call!334053 (contains!16755 (ite c!812768 lt!1927470 call!334056) call!334052))))

(declare-fun b!4764650 () Bool)

(declare-fun e!2973742 () Unit!138103)

(assert (=> b!4764650 (= e!2973746 e!2973742)))

(declare-fun res!2020822 () Bool)

(assert (=> b!4764650 (= res!2020822 call!334053)))

(declare-fun e!2973745 () Bool)

(assert (=> b!4764650 (=> (not res!2020822) (not e!2973745))))

(declare-fun c!812769 () Bool)

(assert (=> b!4764650 (= c!812769 e!2973745)))

(declare-fun b!4764651 () Bool)

(assert (=> b!4764651 (= e!2973745 call!334055)))

(declare-fun b!4764652 () Bool)

(declare-fun lambda!224066 () Int)

(declare-fun forallContained!3844 (List!53563 Int tuple2!55438) Unit!138103)

(assert (=> b!4764652 (= e!2973743 (forallContained!3844 (toList!6254 (map!11937 (v!47532 (underlying!10006 thiss!42052)))) lambda!224066 (tuple2!55439 lt!1927464 (apply!12584 (v!47532 (underlying!10006 thiss!42052)) lt!1927464))))))

(declare-fun c!812770 () Bool)

(assert (=> b!4764652 (= c!812770 (not (contains!16754 (toList!6254 (map!11937 (v!47532 (underlying!10006 thiss!42052)))) (tuple2!55439 lt!1927464 (apply!12584 (v!47532 (underlying!10006 thiss!42052)) lt!1927464)))))))

(declare-fun lt!1927456 () Unit!138103)

(assert (=> b!4764652 (= lt!1927456 e!2973744)))

(declare-fun d!1523265 () Bool)

(declare-fun lt!1927463 () Bool)

(declare-datatypes ((ListMap!5753 0))(
  ( (ListMap!5754 (toList!6255 List!53562)) )
))
(declare-fun contains!16756 (ListMap!5753 K!14889) Bool)

(declare-fun map!11938 (MutableMap!4783) ListMap!5753)

(assert (=> d!1523265 (= lt!1927463 (contains!16756 (map!11938 thiss!42052) key!1776))))

(assert (=> d!1523265 (= lt!1927463 e!2973747)))

(declare-fun res!2020820 () Bool)

(assert (=> d!1523265 (=> (not res!2020820) (not e!2973747))))

(declare-fun contains!16757 (MutLongMap!4899 (_ BitVec 64)) Bool)

(assert (=> d!1523265 (= res!2020820 (contains!16757 (v!47532 (underlying!10006 thiss!42052)) lt!1927464))))

(declare-fun lt!1927459 () Unit!138103)

(assert (=> d!1523265 (= lt!1927459 e!2973746)))

(declare-fun extractMap!2129 (List!53563) ListMap!5753)

(assert (=> d!1523265 (= c!812768 (contains!16756 (extractMap!2129 (toList!6254 (map!11937 (v!47532 (underlying!10006 thiss!42052))))) key!1776))))

(declare-fun lt!1927453 () Unit!138103)

(assert (=> d!1523265 (= lt!1927453 e!2973743)))

(declare-fun c!812767 () Bool)

(assert (=> d!1523265 (= c!812767 (contains!16757 (v!47532 (underlying!10006 thiss!42052)) lt!1927464))))

(assert (=> d!1523265 (= lt!1927464 (hash!4543 (hashF!12385 thiss!42052) key!1776))))

(assert (=> d!1523265 (valid!3896 thiss!42052)))

(assert (=> d!1523265 (= (contains!16753 thiss!42052 key!1776) lt!1927463)))

(declare-fun b!4764647 () Bool)

(declare-fun Unit!138109 () Unit!138103)

(assert (=> b!4764647 (= e!2973742 Unit!138109)))

(declare-fun b!4764653 () Bool)

(assert (=> b!4764653 false))

(declare-fun lt!1927455 () Unit!138103)

(declare-fun lt!1927460 () Unit!138103)

(assert (=> b!4764653 (= lt!1927455 lt!1927460)))

(declare-fun lt!1927467 () List!53563)

(declare-fun lt!1927471 () List!53562)

(assert (=> b!4764653 (contains!16754 lt!1927467 (tuple2!55439 lt!1927464 lt!1927471))))

(assert (=> b!4764653 (= lt!1927460 (lemmaGetValueByKeyImpliesContainsTuple!913 lt!1927467 lt!1927464 lt!1927471))))

(assert (=> b!4764653 (= lt!1927471 (apply!12584 (v!47532 (underlying!10006 thiss!42052)) lt!1927464))))

(assert (=> b!4764653 (= lt!1927467 (toList!6254 (map!11937 (v!47532 (underlying!10006 thiss!42052)))))))

(declare-fun lt!1927469 () Unit!138103)

(declare-fun lt!1927468 () Unit!138103)

(assert (=> b!4764653 (= lt!1927469 lt!1927468)))

(declare-fun lt!1927454 () List!53563)

(assert (=> b!4764653 (isDefined!9804 (getValueByKey!2155 lt!1927454 lt!1927464))))

(assert (=> b!4764653 (= lt!1927468 (lemmaContainsKeyImpliesGetValueByKeyDefined!1969 lt!1927454 lt!1927464))))

(assert (=> b!4764653 (= lt!1927454 (toList!6254 (map!11937 (v!47532 (underlying!10006 thiss!42052)))))))

(declare-fun lt!1927472 () Unit!138103)

(declare-fun lt!1927457 () Unit!138103)

(assert (=> b!4764653 (= lt!1927472 lt!1927457)))

(declare-fun lt!1927458 () List!53563)

(assert (=> b!4764653 (containsKey!3650 lt!1927458 lt!1927464)))

(declare-fun lemmaGetValueByKeyIsDefinedImpliesContainsKey!194 (List!53563 (_ BitVec 64)) Unit!138103)

(assert (=> b!4764653 (= lt!1927457 (lemmaGetValueByKeyIsDefinedImpliesContainsKey!194 lt!1927458 lt!1927464))))

(assert (=> b!4764653 (= lt!1927458 (toList!6254 (map!11937 (v!47532 (underlying!10006 thiss!42052)))))))

(declare-fun Unit!138110 () Unit!138103)

(assert (=> b!4764653 (= e!2973744 Unit!138110)))

(declare-fun b!4764654 () Bool)

(assert (=> b!4764654 (= e!2973741 call!334055)))

(declare-fun bm!334051 () Bool)

(declare-fun apply!12585 (ListLongMap!4649 (_ BitVec 64)) List!53562)

(assert (=> bm!334051 (= call!334054 (apply!12585 (ite c!812768 lt!1927470 call!334056) call!334052))))

(declare-fun b!4764655 () Bool)

(assert (=> b!4764655 false))

(declare-fun lt!1927465 () Unit!138103)

(declare-fun lt!1927462 () Unit!138103)

(assert (=> b!4764655 (= lt!1927465 lt!1927462)))

(declare-fun lt!1927466 () ListLongMap!4649)

(assert (=> b!4764655 (contains!16756 (extractMap!2129 (toList!6254 lt!1927466)) key!1776)))

(declare-fun lemmaInLongMapThenInGenericMap!193 (ListLongMap!4649 K!14889 Hashable!6560) Unit!138103)

(assert (=> b!4764655 (= lt!1927462 (lemmaInLongMapThenInGenericMap!193 lt!1927466 key!1776 (hashF!12385 thiss!42052)))))

(assert (=> b!4764655 (= lt!1927466 call!334056)))

(declare-fun Unit!138111 () Unit!138103)

(assert (=> b!4764655 (= e!2973742 Unit!138111)))

(assert (= (and d!1523265 c!812767) b!4764652))

(assert (= (and d!1523265 (not c!812767)) b!4764649))

(assert (= (and b!4764652 c!812770) b!4764653))

(assert (= (and b!4764652 (not c!812770)) b!4764645))

(assert (= (and d!1523265 c!812768) b!4764646))

(assert (= (and d!1523265 (not c!812768)) b!4764650))

(assert (= (and b!4764646 res!2020821) b!4764654))

(assert (= (and b!4764650 res!2020822) b!4764651))

(assert (= (and b!4764650 c!812769) b!4764655))

(assert (= (and b!4764650 (not c!812769)) b!4764647))

(assert (= (or b!4764646 b!4764650 b!4764651 b!4764655) bm!334049))

(assert (= (or b!4764646 b!4764654 b!4764650 b!4764651) bm!334048))

(assert (= (or b!4764654 b!4764651) bm!334051))

(assert (= (or b!4764646 b!4764650) bm!334050))

(assert (= (or b!4764654 b!4764651) bm!334047))

(assert (= (or b!4764654 b!4764651) bm!334046))

(assert (= (and d!1523265 res!2020820) b!4764648))

(declare-fun m!5735112 () Bool)

(assert (=> bm!334046 m!5735112))

(declare-fun m!5735114 () Bool)

(assert (=> bm!334050 m!5735114))

(declare-fun m!5735116 () Bool)

(assert (=> bm!334047 m!5735116))

(declare-fun m!5735118 () Bool)

(assert (=> b!4764646 m!5735118))

(declare-fun m!5735120 () Bool)

(assert (=> b!4764648 m!5735120))

(assert (=> b!4764648 m!5735120))

(declare-fun m!5735122 () Bool)

(assert (=> b!4764648 m!5735122))

(assert (=> b!4764648 m!5735122))

(declare-fun m!5735124 () Bool)

(assert (=> b!4764648 m!5735124))

(assert (=> b!4764652 m!5735078))

(assert (=> b!4764652 m!5735120))

(declare-fun m!5735126 () Bool)

(assert (=> b!4764652 m!5735126))

(declare-fun m!5735128 () Bool)

(assert (=> b!4764652 m!5735128))

(declare-fun m!5735130 () Bool)

(assert (=> bm!334051 m!5735130))

(declare-fun m!5735132 () Bool)

(assert (=> b!4764655 m!5735132))

(assert (=> b!4764655 m!5735132))

(declare-fun m!5735134 () Bool)

(assert (=> b!4764655 m!5735134))

(declare-fun m!5735136 () Bool)

(assert (=> b!4764655 m!5735136))

(declare-fun m!5735138 () Bool)

(assert (=> d!1523265 m!5735138))

(assert (=> d!1523265 m!5735080))

(declare-fun m!5735140 () Bool)

(assert (=> d!1523265 m!5735140))

(declare-fun m!5735142 () Bool)

(assert (=> d!1523265 m!5735142))

(assert (=> d!1523265 m!5735098))

(assert (=> d!1523265 m!5735078))

(assert (=> d!1523265 m!5735142))

(declare-fun m!5735144 () Bool)

(assert (=> d!1523265 m!5735144))

(assert (=> d!1523265 m!5735138))

(declare-fun m!5735146 () Bool)

(assert (=> d!1523265 m!5735146))

(assert (=> bm!334048 m!5735080))

(declare-fun m!5735148 () Bool)

(assert (=> b!4764653 m!5735148))

(assert (=> b!4764653 m!5735148))

(declare-fun m!5735150 () Bool)

(assert (=> b!4764653 m!5735150))

(declare-fun m!5735152 () Bool)

(assert (=> b!4764653 m!5735152))

(assert (=> b!4764653 m!5735078))

(declare-fun m!5735154 () Bool)

(assert (=> b!4764653 m!5735154))

(declare-fun m!5735156 () Bool)

(assert (=> b!4764653 m!5735156))

(declare-fun m!5735158 () Bool)

(assert (=> b!4764653 m!5735158))

(assert (=> b!4764653 m!5735120))

(declare-fun m!5735160 () Bool)

(assert (=> b!4764653 m!5735160))

(assert (=> bm!334049 m!5735078))

(assert (=> b!4764596 d!1523265))

(declare-fun d!1523267 () Bool)

(declare-fun valid!3898 (LongMapFixedSize!9798) Bool)

(assert (=> d!1523267 (= (valid!3897 (v!47532 (underlying!10006 thiss!42052))) (valid!3898 (v!47531 (underlying!10005 (v!47532 (underlying!10006 thiss!42052))))))))

(declare-fun bs!1148727 () Bool)

(assert (= bs!1148727 d!1523267))

(declare-fun m!5735162 () Bool)

(assert (=> bs!1148727 m!5735162))

(assert (=> b!4764601 d!1523267))

(declare-fun bs!1148728 () Bool)

(declare-fun b!4764660 () Bool)

(assert (= bs!1148728 (and b!4764660 b!4764652)))

(declare-fun lambda!224069 () Int)

(assert (=> bs!1148728 (= lambda!224069 lambda!224066)))

(declare-fun d!1523269 () Bool)

(declare-fun res!2020827 () Bool)

(declare-fun e!2973750 () Bool)

(assert (=> d!1523269 (=> (not res!2020827) (not e!2973750))))

(assert (=> d!1523269 (= res!2020827 (valid!3897 (v!47532 (underlying!10006 thiss!42052))))))

(assert (=> d!1523269 (= (valid!3896 thiss!42052) e!2973750)))

(declare-fun res!2020828 () Bool)

(assert (=> b!4764660 (=> (not res!2020828) (not e!2973750))))

(declare-fun forall!11862 (List!53563 Int) Bool)

(assert (=> b!4764660 (= res!2020828 (forall!11862 (toList!6254 (map!11937 (v!47532 (underlying!10006 thiss!42052)))) lambda!224069))))

(declare-fun b!4764661 () Bool)

(declare-fun allKeysSameHashInMap!2010 (ListLongMap!4649 Hashable!6560) Bool)

(assert (=> b!4764661 (= e!2973750 (allKeysSameHashInMap!2010 (map!11937 (v!47532 (underlying!10006 thiss!42052))) (hashF!12385 thiss!42052)))))

(assert (= (and d!1523269 res!2020827) b!4764660))

(assert (= (and b!4764660 res!2020828) b!4764661))

(assert (=> d!1523269 m!5735086))

(assert (=> b!4764660 m!5735078))

(declare-fun m!5735164 () Bool)

(assert (=> b!4764660 m!5735164))

(assert (=> b!4764661 m!5735078))

(assert (=> b!4764661 m!5735078))

(declare-fun m!5735166 () Bool)

(assert (=> b!4764661 m!5735166))

(assert (=> b!4764597 d!1523269))

(declare-fun d!1523271 () Bool)

(assert (=> d!1523271 (= (array_inv!5743 (_keys!5241 (v!47531 (underlying!10005 (v!47532 (underlying!10006 thiss!42052)))))) (bvsge (size!36213 (_keys!5241 (v!47531 (underlying!10005 (v!47532 (underlying!10006 thiss!42052)))))) #b00000000000000000000000000000000))))

(assert (=> b!4764599 d!1523271))

(declare-fun d!1523273 () Bool)

(assert (=> d!1523273 (= (array_inv!5744 (_values!5212 (v!47531 (underlying!10005 (v!47532 (underlying!10006 thiss!42052)))))) (bvsge (size!36214 (_values!5212 (v!47531 (underlying!10005 (v!47532 (underlying!10006 thiss!42052)))))) #b00000000000000000000000000000000))))

(assert (=> b!4764599 d!1523273))

(declare-fun lt!1927475 () Bool)

(declare-fun d!1523275 () Bool)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!9578 (List!53563) (InoxSet tuple2!55438))

(assert (=> d!1523275 (= lt!1927475 (select (content!9578 (toList!6254 lt!1927400)) (tuple2!55439 lt!1927404 lt!1927406)))))

(declare-fun e!2973755 () Bool)

(assert (=> d!1523275 (= lt!1927475 e!2973755)))

(declare-fun res!2020833 () Bool)

(assert (=> d!1523275 (=> (not res!2020833) (not e!2973755))))

(assert (=> d!1523275 (= res!2020833 ((_ is Cons!53439) (toList!6254 lt!1927400)))))

(assert (=> d!1523275 (= (contains!16754 (toList!6254 lt!1927400) (tuple2!55439 lt!1927404 lt!1927406)) lt!1927475)))

(declare-fun b!4764666 () Bool)

(declare-fun e!2973756 () Bool)

(assert (=> b!4764666 (= e!2973755 e!2973756)))

(declare-fun res!2020834 () Bool)

(assert (=> b!4764666 (=> res!2020834 e!2973756)))

(assert (=> b!4764666 (= res!2020834 (= (h!59851 (toList!6254 lt!1927400)) (tuple2!55439 lt!1927404 lt!1927406)))))

(declare-fun b!4764667 () Bool)

(assert (=> b!4764667 (= e!2973756 (contains!16754 (t!360967 (toList!6254 lt!1927400)) (tuple2!55439 lt!1927404 lt!1927406)))))

(assert (= (and d!1523275 res!2020833) b!4764666))

(assert (= (and b!4764666 (not res!2020834)) b!4764667))

(declare-fun m!5735168 () Bool)

(assert (=> d!1523275 m!5735168))

(declare-fun m!5735170 () Bool)

(assert (=> d!1523275 m!5735170))

(declare-fun m!5735172 () Bool)

(assert (=> b!4764667 m!5735172))

(assert (=> b!4764604 d!1523275))

(declare-fun d!1523277 () Bool)

(declare-fun e!2973759 () Bool)

(assert (=> d!1523277 e!2973759))

(declare-fun c!812773 () Bool)

(assert (=> d!1523277 (= c!812773 (contains!16757 (v!47532 (underlying!10006 thiss!42052)) lt!1927404))))

(declare-fun lt!1927478 () List!53562)

(declare-fun apply!12586 (LongMapFixedSize!9798 (_ BitVec 64)) List!53562)

(assert (=> d!1523277 (= lt!1927478 (apply!12586 (v!47531 (underlying!10005 (v!47532 (underlying!10006 thiss!42052)))) lt!1927404))))

(assert (=> d!1523277 (valid!3897 (v!47532 (underlying!10006 thiss!42052)))))

(assert (=> d!1523277 (= (apply!12584 (v!47532 (underlying!10006 thiss!42052)) lt!1927404) lt!1927478)))

(declare-fun b!4764672 () Bool)

(declare-fun get!17992 (Option!12631) List!53562)

(assert (=> b!4764672 (= e!2973759 (= lt!1927478 (get!17992 (getValueByKey!2155 (toList!6254 (map!11937 (v!47532 (underlying!10006 thiss!42052)))) lt!1927404))))))

(declare-fun b!4764673 () Bool)

(declare-fun dynLambda!21935 (Int (_ BitVec 64)) List!53562)

(assert (=> b!4764673 (= e!2973759 (= lt!1927478 (dynLambda!21935 (defaultEntry!5317 (v!47531 (underlying!10005 (v!47532 (underlying!10006 thiss!42052))))) lt!1927404)))))

(assert (=> b!4764673 ((_ is LongMap!4899) (v!47532 (underlying!10006 thiss!42052)))))

(assert (= (and d!1523277 c!812773) b!4764672))

(assert (= (and d!1523277 (not c!812773)) b!4764673))

(declare-fun b_lambda!184271 () Bool)

(assert (=> (not b_lambda!184271) (not b!4764673)))

(declare-fun t!360969 () Bool)

(declare-fun tb!257457 () Bool)

(assert (=> (and b!4764599 (= (defaultEntry!5317 (v!47531 (underlying!10005 (v!47532 (underlying!10006 thiss!42052))))) (defaultEntry!5317 (v!47531 (underlying!10005 (v!47532 (underlying!10006 thiss!42052)))))) t!360969) tb!257457))

(assert (=> b!4764673 t!360969))

(declare-fun result!319060 () Bool)

(declare-fun b_and!341233 () Bool)

(assert (= b_and!341229 (and (=> t!360969 result!319060) b_and!341233)))

(declare-fun m!5735174 () Bool)

(assert (=> d!1523277 m!5735174))

(declare-fun m!5735176 () Bool)

(assert (=> d!1523277 m!5735176))

(assert (=> d!1523277 m!5735086))

(assert (=> b!4764672 m!5735078))

(declare-fun m!5735178 () Bool)

(assert (=> b!4764672 m!5735178))

(assert (=> b!4764672 m!5735178))

(declare-fun m!5735180 () Bool)

(assert (=> b!4764672 m!5735180))

(declare-fun m!5735182 () Bool)

(assert (=> b!4764673 m!5735182))

(assert (=> b!4764604 d!1523277))

(declare-fun d!1523279 () Bool)

(declare-fun map!11939 (LongMapFixedSize!9798) ListLongMap!4649)

(assert (=> d!1523279 (= (map!11937 (v!47532 (underlying!10006 thiss!42052))) (map!11939 (v!47531 (underlying!10005 (v!47532 (underlying!10006 thiss!42052))))))))

(declare-fun bs!1148729 () Bool)

(assert (= bs!1148729 d!1523279))

(declare-fun m!5735184 () Bool)

(assert (=> bs!1148729 m!5735184))

(assert (=> b!4764604 d!1523279))

(declare-fun d!1523281 () Bool)

(declare-fun hash!4544 (Hashable!6560 K!14889) (_ BitVec 64))

(assert (=> d!1523281 (= (hash!4543 (hashF!12385 thiss!42052) key!1776) (hash!4544 (hashF!12385 thiss!42052) key!1776))))

(declare-fun bs!1148730 () Bool)

(assert (= bs!1148730 d!1523281))

(declare-fun m!5735186 () Bool)

(assert (=> bs!1148730 m!5735186))

(assert (=> b!4764604 d!1523281))

(declare-fun mapNonEmpty!21755 () Bool)

(declare-fun mapRes!21755 () Bool)

(declare-fun tp!1354813 () Bool)

(declare-fun e!2973765 () Bool)

(assert (=> mapNonEmpty!21755 (= mapRes!21755 (and tp!1354813 e!2973765))))

(declare-fun mapValue!21755 () List!53562)

(declare-fun mapKey!21755 () (_ BitVec 32))

(declare-fun mapRest!21755 () (Array (_ BitVec 32) List!53562))

(assert (=> mapNonEmpty!21755 (= mapRest!21752 (store mapRest!21755 mapKey!21755 mapValue!21755))))

(declare-fun b!4764680 () Bool)

(declare-fun tp!1354814 () Bool)

(declare-fun tp_is_empty!32377 () Bool)

(assert (=> b!4764680 (= e!2973765 (and tp_is_empty!32375 tp_is_empty!32377 tp!1354814))))

(declare-fun condMapEmpty!21755 () Bool)

(declare-fun mapDefault!21755 () List!53562)

(assert (=> mapNonEmpty!21752 (= condMapEmpty!21755 (= mapRest!21752 ((as const (Array (_ BitVec 32) List!53562)) mapDefault!21755)))))

(declare-fun e!2973764 () Bool)

(assert (=> mapNonEmpty!21752 (= tp!1354803 (and e!2973764 mapRes!21755))))

(declare-fun mapIsEmpty!21755 () Bool)

(assert (=> mapIsEmpty!21755 mapRes!21755))

(declare-fun b!4764681 () Bool)

(declare-fun tp!1354815 () Bool)

(assert (=> b!4764681 (= e!2973764 (and tp_is_empty!32375 tp_is_empty!32377 tp!1354815))))

(assert (= (and mapNonEmpty!21752 condMapEmpty!21755) mapIsEmpty!21755))

(assert (= (and mapNonEmpty!21752 (not condMapEmpty!21755)) mapNonEmpty!21755))

(assert (= (and mapNonEmpty!21755 ((_ is Cons!53438) mapValue!21755)) b!4764680))

(assert (= (and mapNonEmpty!21752 ((_ is Cons!53438) mapDefault!21755)) b!4764681))

(declare-fun m!5735188 () Bool)

(assert (=> mapNonEmpty!21755 m!5735188))

(declare-fun b!4764686 () Bool)

(declare-fun e!2973768 () Bool)

(declare-fun tp!1354818 () Bool)

(assert (=> b!4764686 (= e!2973768 (and tp_is_empty!32375 tp_is_empty!32377 tp!1354818))))

(assert (=> mapNonEmpty!21752 (= tp!1354806 e!2973768)))

(assert (= (and mapNonEmpty!21752 ((_ is Cons!53438) mapValue!21752)) b!4764686))

(declare-fun b!4764687 () Bool)

(declare-fun e!2973769 () Bool)

(declare-fun tp!1354819 () Bool)

(assert (=> b!4764687 (= e!2973769 (and tp_is_empty!32375 tp_is_empty!32377 tp!1354819))))

(assert (=> b!4764602 (= tp!1354800 e!2973769)))

(assert (= (and b!4764602 ((_ is Cons!53438) mapDefault!21752)) b!4764687))

(declare-fun tp!1354820 () Bool)

(declare-fun e!2973770 () Bool)

(declare-fun b!4764688 () Bool)

(assert (=> b!4764688 (= e!2973770 (and tp_is_empty!32375 tp_is_empty!32377 tp!1354820))))

(assert (=> b!4764599 (= tp!1354802 e!2973770)))

(assert (= (and b!4764599 ((_ is Cons!53438) (zeroValue!5187 (v!47531 (underlying!10005 (v!47532 (underlying!10006 thiss!42052))))))) b!4764688))

(declare-fun tp!1354821 () Bool)

(declare-fun b!4764689 () Bool)

(declare-fun e!2973771 () Bool)

(assert (=> b!4764689 (= e!2973771 (and tp_is_empty!32375 tp_is_empty!32377 tp!1354821))))

(assert (=> b!4764599 (= tp!1354801 e!2973771)))

(assert (= (and b!4764599 ((_ is Cons!53438) (minValue!5187 (v!47531 (underlying!10005 (v!47532 (underlying!10006 thiss!42052))))))) b!4764689))

(declare-fun b_lambda!184273 () Bool)

(assert (= b_lambda!184271 (or (and b!4764599 b_free!129539) b_lambda!184273)))

(check-sat (not mapNonEmpty!21755) (not d!1523257) (not b!4764607) (not d!1523275) (not b!4764648) (not b!4764661) (not b!4764689) (not b!4764618) (not b!4764667) (not b!4764652) (not tb!257457) (not b!4764687) tp_is_empty!32377 (not bm!334050) (not b_next!130331) (not b!4764686) (not bm!334049) (not d!1523263) (not d!1523265) (not b_next!130329) tp_is_empty!32375 (not b!4764680) (not b!4764622) (not bm!334048) (not bm!334047) (not b_lambda!184273) (not d!1523279) b_and!341233 (not b!4764646) (not b!4764672) (not d!1523277) (not b!4764655) (not d!1523269) (not bm!334046) (not d!1523259) (not bm!334051) (not b!4764681) (not b!4764660) (not b!4764653) b_and!341231 (not d!1523267) (not d!1523281) (not b!4764688))
(check-sat b_and!341231 b_and!341233 (not b_next!130331) (not b_next!130329))
