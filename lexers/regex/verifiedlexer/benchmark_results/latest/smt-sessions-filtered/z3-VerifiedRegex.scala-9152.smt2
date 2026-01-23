; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!488230 () Bool)

(assert start!488230)

(declare-fun b!4770062 () Bool)

(declare-fun b_free!129795 () Bool)

(declare-fun b_next!130585 () Bool)

(assert (=> b!4770062 (= b_free!129795 (not b_next!130585))))

(declare-fun tp!1356420 () Bool)

(declare-fun b_and!341535 () Bool)

(assert (=> b!4770062 (= tp!1356420 b_and!341535)))

(declare-fun b!4770064 () Bool)

(declare-fun b_free!129797 () Bool)

(declare-fun b_next!130587 () Bool)

(assert (=> b!4770064 (= b_free!129797 (not b_next!130587))))

(declare-fun tp!1356422 () Bool)

(declare-fun b_and!341537 () Bool)

(assert (=> b!4770064 (= tp!1356422 b_and!341537)))

(declare-fun b!4770057 () Bool)

(declare-fun e!2977678 () Bool)

(declare-fun e!2977674 () Bool)

(declare-datatypes ((K!15049 0))(
  ( (K!15050 (val!20345 Int)) )
))
(declare-datatypes ((V!15295 0))(
  ( (V!15296 (val!20346 Int)) )
))
(declare-datatypes ((tuple2!55664 0))(
  ( (tuple2!55665 (_1!31126 K!15049) (_2!31126 V!15295)) )
))
(declare-datatypes ((List!53678 0))(
  ( (Nil!53554) (Cons!53554 (h!59966 tuple2!55664) (t!361120 List!53678)) )
))
(declare-datatypes ((array!18186 0))(
  ( (array!18187 (arr!8111 (Array (_ BitVec 32) (_ BitVec 64))) (size!36341 (_ BitVec 32))) )
))
(declare-datatypes ((array!18188 0))(
  ( (array!18189 (arr!8112 (Array (_ BitVec 32) List!53678)) (size!36342 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!9926 0))(
  ( (LongMapFixedSize!9927 (defaultEntry!5381 Int) (mask!14740 (_ BitVec 32)) (extraKeys!5238 (_ BitVec 32)) (zeroValue!5251 List!53678) (minValue!5251 List!53678) (_size!9951 (_ BitVec 32)) (_keys!5305 array!18186) (_values!5276 array!18188) (_vacant!5028 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!19617 0))(
  ( (Cell!19618 (v!47830 LongMapFixedSize!9926)) )
))
(declare-datatypes ((MutLongMap!4963 0))(
  ( (LongMap!4963 (underlying!10133 Cell!19617)) (MutLongMapExt!4962 (__x!32637 Int)) )
))
(declare-fun lt!1932631 () MutLongMap!4963)

(get-info :version)

(assert (=> b!4770057 (= e!2977678 (and e!2977674 ((_ is LongMap!4963) lt!1932631)))))

(declare-datatypes ((Hashable!6624 0))(
  ( (HashableExt!6623 (__x!32638 Int)) )
))
(declare-datatypes ((Cell!19619 0))(
  ( (Cell!19620 (v!47831 MutLongMap!4963)) )
))
(declare-datatypes ((MutableMap!4847 0))(
  ( (MutableMapExt!4846 (__x!32639 Int)) (HashMap!4847 (underlying!10134 Cell!19619) (hashF!12515 Hashable!6624) (_size!9952 (_ BitVec 32)) (defaultValue!5018 Int)) )
))
(declare-fun thiss!42052 () MutableMap!4847)

(assert (=> b!4770057 (= lt!1932631 (v!47831 (underlying!10134 thiss!42052)))))

(declare-fun b!4770058 () Bool)

(declare-fun e!2977682 () Bool)

(assert (=> b!4770058 (= e!2977674 e!2977682)))

(declare-fun b!4770059 () Bool)

(declare-fun e!2977680 () Bool)

(declare-fun tp!1356421 () Bool)

(declare-fun mapRes!21997 () Bool)

(assert (=> b!4770059 (= e!2977680 (and tp!1356421 mapRes!21997))))

(declare-fun condMapEmpty!21997 () Bool)

(declare-fun mapDefault!21997 () List!53678)

(assert (=> b!4770059 (= condMapEmpty!21997 (= (arr!8112 (_values!5276 (v!47830 (underlying!10133 (v!47831 (underlying!10134 thiss!42052)))))) ((as const (Array (_ BitVec 32) List!53678)) mapDefault!21997)))))

(declare-fun b!4770060 () Bool)

(declare-fun e!2977675 () Bool)

(declare-fun e!2977679 () Bool)

(assert (=> b!4770060 (= e!2977675 e!2977679)))

(declare-fun res!2023066 () Bool)

(assert (=> b!4770060 (=> (not res!2023066) (not e!2977679))))

(declare-datatypes ((tuple2!55666 0))(
  ( (tuple2!55667 (_1!31127 (_ BitVec 64)) (_2!31127 List!53678)) )
))
(declare-datatypes ((List!53679 0))(
  ( (Nil!53555) (Cons!53555 (h!59967 tuple2!55666) (t!361121 List!53679)) )
))
(declare-datatypes ((ListLongMap!4749 0))(
  ( (ListLongMap!4750 (toList!6336 List!53679)) )
))
(declare-fun lt!1932623 () ListLongMap!4749)

(declare-fun lambda!224819 () Int)

(declare-fun forall!11887 (List!53679 Int) Bool)

(assert (=> b!4770060 (= res!2023066 (forall!11887 (toList!6336 lt!1932623) lambda!224819))))

(declare-datatypes ((Option!12728 0))(
  ( (None!12727) (Some!12727 (v!47832 tuple2!55664)) )
))
(declare-fun lt!1932626 () Option!12728)

(declare-fun lt!1932627 () List!53678)

(declare-fun key!1776 () K!15049)

(declare-fun getPair!660 (List!53678 K!15049) Option!12728)

(assert (=> b!4770060 (= lt!1932626 (getPair!660 lt!1932627 key!1776))))

(declare-datatypes ((Unit!138408 0))(
  ( (Unit!138409) )
))
(declare-fun lt!1932625 () Unit!138408)

(declare-fun lt!1932624 () tuple2!55666)

(declare-fun forallContained!3879 (List!53679 Int tuple2!55666) Unit!138408)

(assert (=> b!4770060 (= lt!1932625 (forallContained!3879 (toList!6336 lt!1932623) lambda!224819 lt!1932624))))

(declare-fun lt!1932629 () Unit!138408)

(declare-fun e!2977681 () Unit!138408)

(assert (=> b!4770060 (= lt!1932629 e!2977681)))

(declare-fun c!813623 () Bool)

(declare-fun contains!16919 (List!53679 tuple2!55666) Bool)

(assert (=> b!4770060 (= c!813623 (not (contains!16919 (toList!6336 lt!1932623) lt!1932624)))))

(declare-fun lt!1932630 () (_ BitVec 64))

(assert (=> b!4770060 (= lt!1932624 (tuple2!55667 lt!1932630 lt!1932627))))

(declare-fun apply!12669 (MutLongMap!4963 (_ BitVec 64)) List!53678)

(assert (=> b!4770060 (= lt!1932627 (apply!12669 (v!47831 (underlying!10134 thiss!42052)) lt!1932630))))

(declare-fun map!12048 (MutLongMap!4963) ListLongMap!4749)

(assert (=> b!4770060 (= lt!1932623 (map!12048 (v!47831 (underlying!10134 thiss!42052))))))

(declare-fun hash!4600 (Hashable!6624 K!15049) (_ BitVec 64))

(assert (=> b!4770060 (= lt!1932630 (hash!4600 (hashF!12515 thiss!42052) key!1776))))

(declare-fun res!2023068 () Bool)

(assert (=> start!488230 (=> (not res!2023068) (not e!2977675))))

(assert (=> start!488230 (= res!2023068 ((_ is HashMap!4847) thiss!42052))))

(assert (=> start!488230 e!2977675))

(declare-fun e!2977677 () Bool)

(assert (=> start!488230 e!2977677))

(declare-fun tp_is_empty!32537 () Bool)

(assert (=> start!488230 tp_is_empty!32537))

(declare-fun b!4770061 () Bool)

(declare-fun Unit!138410 () Unit!138408)

(assert (=> b!4770061 (= e!2977681 Unit!138410)))

(declare-fun e!2977676 () Bool)

(declare-fun tp!1356424 () Bool)

(declare-fun tp!1356425 () Bool)

(declare-fun array_inv!5843 (array!18186) Bool)

(declare-fun array_inv!5844 (array!18188) Bool)

(assert (=> b!4770062 (= e!2977676 (and tp!1356420 tp!1356424 tp!1356425 (array_inv!5843 (_keys!5305 (v!47830 (underlying!10133 (v!47831 (underlying!10134 thiss!42052)))))) (array_inv!5844 (_values!5276 (v!47830 (underlying!10133 (v!47831 (underlying!10134 thiss!42052)))))) e!2977680))))

(declare-fun b!4770063 () Bool)

(declare-fun allKeysSameHashInMap!2031 (ListLongMap!4749 Hashable!6624) Bool)

(assert (=> b!4770063 (= e!2977679 (not (allKeysSameHashInMap!2031 lt!1932623 (hashF!12515 thiss!42052))))))

(declare-fun mapIsEmpty!21997 () Bool)

(assert (=> mapIsEmpty!21997 mapRes!21997))

(assert (=> b!4770064 (= e!2977677 (and e!2977678 tp!1356422))))

(declare-fun mapNonEmpty!21997 () Bool)

(declare-fun tp!1356419 () Bool)

(declare-fun tp!1356423 () Bool)

(assert (=> mapNonEmpty!21997 (= mapRes!21997 (and tp!1356419 tp!1356423))))

(declare-fun mapValue!21997 () List!53678)

(declare-fun mapKey!21997 () (_ BitVec 32))

(declare-fun mapRest!21997 () (Array (_ BitVec 32) List!53678))

(assert (=> mapNonEmpty!21997 (= (arr!8112 (_values!5276 (v!47830 (underlying!10133 (v!47831 (underlying!10134 thiss!42052)))))) (store mapRest!21997 mapKey!21997 mapValue!21997))))

(declare-fun b!4770065 () Bool)

(declare-fun Unit!138411 () Unit!138408)

(assert (=> b!4770065 (= e!2977681 Unit!138411)))

(declare-fun lt!1932628 () Unit!138408)

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!2012 (List!53679 (_ BitVec 64)) Unit!138408)

(assert (=> b!4770065 (= lt!1932628 (lemmaContainsKeyImpliesGetValueByKeyDefined!2012 (toList!6336 lt!1932623) lt!1932630))))

(declare-datatypes ((Option!12729 0))(
  ( (None!12728) (Some!12728 (v!47833 List!53678)) )
))
(declare-fun isDefined!9875 (Option!12729) Bool)

(declare-fun getValueByKey!2216 (List!53679 (_ BitVec 64)) Option!12729)

(assert (=> b!4770065 (isDefined!9875 (getValueByKey!2216 (toList!6336 lt!1932623) lt!1932630))))

(declare-fun lt!1932632 () Unit!138408)

(declare-fun lemmaGetValueByKeyImpliesContainsTuple!951 (List!53679 (_ BitVec 64) List!53678) Unit!138408)

(assert (=> b!4770065 (= lt!1932632 (lemmaGetValueByKeyImpliesContainsTuple!951 (toList!6336 lt!1932623) lt!1932630 lt!1932627))))

(assert (=> b!4770065 false))

(declare-fun b!4770066 () Bool)

(declare-fun res!2023067 () Bool)

(assert (=> b!4770066 (=> (not res!2023067) (not e!2977675))))

(declare-fun valid!3969 (MutableMap!4847) Bool)

(assert (=> b!4770066 (= res!2023067 (valid!3969 thiss!42052))))

(declare-fun b!4770067 () Bool)

(declare-fun res!2023065 () Bool)

(assert (=> b!4770067 (=> (not res!2023065) (not e!2977675))))

(declare-fun contains!16920 (MutableMap!4847 K!15049) Bool)

(assert (=> b!4770067 (= res!2023065 (contains!16920 thiss!42052 key!1776))))

(declare-fun b!4770068 () Bool)

(assert (=> b!4770068 (= e!2977682 e!2977676)))

(assert (= (and start!488230 res!2023068) b!4770066))

(assert (= (and b!4770066 res!2023067) b!4770067))

(assert (= (and b!4770067 res!2023065) b!4770060))

(assert (= (and b!4770060 c!813623) b!4770065))

(assert (= (and b!4770060 (not c!813623)) b!4770061))

(assert (= (and b!4770060 res!2023066) b!4770063))

(assert (= (and b!4770059 condMapEmpty!21997) mapIsEmpty!21997))

(assert (= (and b!4770059 (not condMapEmpty!21997)) mapNonEmpty!21997))

(assert (= b!4770062 b!4770059))

(assert (= b!4770068 b!4770062))

(assert (= b!4770058 b!4770068))

(assert (= (and b!4770057 ((_ is LongMap!4963) (v!47831 (underlying!10134 thiss!42052)))) b!4770058))

(assert (= b!4770064 b!4770057))

(assert (= (and start!488230 ((_ is HashMap!4847) thiss!42052)) b!4770064))

(declare-fun m!5741666 () Bool)

(assert (=> b!4770060 m!5741666))

(declare-fun m!5741668 () Bool)

(assert (=> b!4770060 m!5741668))

(declare-fun m!5741670 () Bool)

(assert (=> b!4770060 m!5741670))

(declare-fun m!5741672 () Bool)

(assert (=> b!4770060 m!5741672))

(declare-fun m!5741674 () Bool)

(assert (=> b!4770060 m!5741674))

(declare-fun m!5741676 () Bool)

(assert (=> b!4770060 m!5741676))

(declare-fun m!5741678 () Bool)

(assert (=> b!4770060 m!5741678))

(declare-fun m!5741680 () Bool)

(assert (=> b!4770066 m!5741680))

(declare-fun m!5741682 () Bool)

(assert (=> mapNonEmpty!21997 m!5741682))

(declare-fun m!5741684 () Bool)

(assert (=> b!4770065 m!5741684))

(declare-fun m!5741686 () Bool)

(assert (=> b!4770065 m!5741686))

(assert (=> b!4770065 m!5741686))

(declare-fun m!5741688 () Bool)

(assert (=> b!4770065 m!5741688))

(declare-fun m!5741690 () Bool)

(assert (=> b!4770065 m!5741690))

(declare-fun m!5741692 () Bool)

(assert (=> b!4770063 m!5741692))

(declare-fun m!5741694 () Bool)

(assert (=> b!4770062 m!5741694))

(declare-fun m!5741696 () Bool)

(assert (=> b!4770062 m!5741696))

(declare-fun m!5741698 () Bool)

(assert (=> b!4770067 m!5741698))

(check-sat b_and!341535 (not b!4770059) (not b!4770060) (not b!4770063) (not b_next!130585) (not b_next!130587) tp_is_empty!32537 b_and!341537 (not mapNonEmpty!21997) (not b!4770066) (not b!4770062) (not b!4770067) (not b!4770065))
(check-sat b_and!341537 b_and!341535 (not b_next!130587) (not b_next!130585))
(get-model)

(declare-fun bs!1149402 () Bool)

(declare-fun b!4770092 () Bool)

(assert (= bs!1149402 (and b!4770092 b!4770060)))

(declare-fun lambda!224822 () Int)

(assert (=> bs!1149402 (= lambda!224822 lambda!224819)))

(declare-fun b!4770091 () Bool)

(declare-fun e!2977702 () Bool)

(declare-fun call!334411 () Bool)

(assert (=> b!4770091 (= e!2977702 call!334411)))

(declare-fun call!334415 () ListLongMap!4749)

(declare-fun bm!334407 () Bool)

(declare-fun call!334416 () Bool)

(declare-fun call!334413 () (_ BitVec 64))

(declare-fun lt!1932676 () ListLongMap!4749)

(declare-fun c!813634 () Bool)

(declare-fun contains!16921 (ListLongMap!4749 (_ BitVec 64)) Bool)

(assert (=> bm!334407 (= call!334416 (contains!16921 (ite c!813634 lt!1932676 call!334415) call!334413))))

(declare-fun e!2977700 () Unit!138408)

(declare-fun lt!1932674 () (_ BitVec 64))

(assert (=> b!4770092 (= e!2977700 (forallContained!3879 (toList!6336 (map!12048 (v!47831 (underlying!10134 thiss!42052)))) lambda!224822 (tuple2!55667 lt!1932674 (apply!12669 (v!47831 (underlying!10134 thiss!42052)) lt!1932674))))))

(declare-fun c!813632 () Bool)

(assert (=> b!4770092 (= c!813632 (not (contains!16919 (toList!6336 (map!12048 (v!47831 (underlying!10134 thiss!42052)))) (tuple2!55667 lt!1932674 (apply!12669 (v!47831 (underlying!10134 thiss!42052)) lt!1932674)))))))

(declare-fun lt!1932673 () Unit!138408)

(declare-fun e!2977701 () Unit!138408)

(assert (=> b!4770092 (= lt!1932673 e!2977701)))

(declare-fun b!4770093 () Bool)

(declare-fun Unit!138412 () Unit!138408)

(assert (=> b!4770093 (= e!2977701 Unit!138412)))

(declare-fun b!4770094 () Bool)

(assert (=> b!4770094 false))

(declare-fun lt!1932684 () Unit!138408)

(declare-fun lt!1932692 () Unit!138408)

(assert (=> b!4770094 (= lt!1932684 lt!1932692)))

(declare-fun lt!1932679 () ListLongMap!4749)

(declare-datatypes ((ListMap!5817 0))(
  ( (ListMap!5818 (toList!6337 List!53678)) )
))
(declare-fun contains!16922 (ListMap!5817 K!15049) Bool)

(declare-fun extractMap!2160 (List!53679) ListMap!5817)

(assert (=> b!4770094 (contains!16922 (extractMap!2160 (toList!6336 lt!1932679)) key!1776)))

(declare-fun lemmaInLongMapThenInGenericMap!210 (ListLongMap!4749 K!15049 Hashable!6624) Unit!138408)

(assert (=> b!4770094 (= lt!1932692 (lemmaInLongMapThenInGenericMap!210 lt!1932679 key!1776 (hashF!12515 thiss!42052)))))

(assert (=> b!4770094 (= lt!1932679 call!334415)))

(declare-fun e!2977699 () Unit!138408)

(declare-fun Unit!138413 () Unit!138408)

(assert (=> b!4770094 (= e!2977699 Unit!138413)))

(declare-fun bm!334408 () Bool)

(declare-fun call!334414 () Option!12728)

(declare-fun call!334412 () List!53678)

(assert (=> bm!334408 (= call!334414 (getPair!660 call!334412 key!1776))))

(declare-fun bm!334409 () Bool)

(declare-fun isDefined!9876 (Option!12728) Bool)

(assert (=> bm!334409 (= call!334411 (isDefined!9876 call!334414))))

(declare-fun b!4770095 () Bool)

(declare-fun Unit!138414 () Unit!138408)

(assert (=> b!4770095 (= e!2977699 Unit!138414)))

(declare-fun b!4770096 () Bool)

(assert (=> b!4770096 false))

(declare-fun lt!1932683 () Unit!138408)

(declare-fun lt!1932685 () Unit!138408)

(assert (=> b!4770096 (= lt!1932683 lt!1932685)))

(declare-fun lt!1932690 () List!53679)

(declare-fun lt!1932686 () List!53678)

(assert (=> b!4770096 (contains!16919 lt!1932690 (tuple2!55667 lt!1932674 lt!1932686))))

(assert (=> b!4770096 (= lt!1932685 (lemmaGetValueByKeyImpliesContainsTuple!951 lt!1932690 lt!1932674 lt!1932686))))

(assert (=> b!4770096 (= lt!1932686 (apply!12669 (v!47831 (underlying!10134 thiss!42052)) lt!1932674))))

(assert (=> b!4770096 (= lt!1932690 (toList!6336 (map!12048 (v!47831 (underlying!10134 thiss!42052)))))))

(declare-fun lt!1932688 () Unit!138408)

(declare-fun lt!1932675 () Unit!138408)

(assert (=> b!4770096 (= lt!1932688 lt!1932675)))

(declare-fun lt!1932677 () List!53679)

(assert (=> b!4770096 (isDefined!9875 (getValueByKey!2216 lt!1932677 lt!1932674))))

(assert (=> b!4770096 (= lt!1932675 (lemmaContainsKeyImpliesGetValueByKeyDefined!2012 lt!1932677 lt!1932674))))

(assert (=> b!4770096 (= lt!1932677 (toList!6336 (map!12048 (v!47831 (underlying!10134 thiss!42052)))))))

(declare-fun lt!1932691 () Unit!138408)

(declare-fun lt!1932687 () Unit!138408)

(assert (=> b!4770096 (= lt!1932691 lt!1932687)))

(declare-fun lt!1932681 () List!53679)

(declare-fun containsKey!3681 (List!53679 (_ BitVec 64)) Bool)

(assert (=> b!4770096 (containsKey!3681 lt!1932681 lt!1932674)))

(declare-fun lemmaGetValueByKeyIsDefinedImpliesContainsKey!211 (List!53679 (_ BitVec 64)) Unit!138408)

(assert (=> b!4770096 (= lt!1932687 (lemmaGetValueByKeyIsDefinedImpliesContainsKey!211 lt!1932681 lt!1932674))))

(assert (=> b!4770096 (= lt!1932681 (toList!6336 (map!12048 (v!47831 (underlying!10134 thiss!42052)))))))

(declare-fun Unit!138415 () Unit!138408)

(assert (=> b!4770096 (= e!2977701 Unit!138415)))

(declare-fun bm!334410 () Bool)

(declare-fun apply!12670 (ListLongMap!4749 (_ BitVec 64)) List!53678)

(assert (=> bm!334410 (= call!334412 (apply!12670 (ite c!813634 lt!1932676 call!334415) call!334413))))

(declare-fun d!1524561 () Bool)

(declare-fun lt!1932680 () Bool)

(declare-fun map!12049 (MutableMap!4847) ListMap!5817)

(assert (=> d!1524561 (= lt!1932680 (contains!16922 (map!12049 thiss!42052) key!1776))))

(declare-fun e!2977698 () Bool)

(assert (=> d!1524561 (= lt!1932680 e!2977698)))

(declare-fun res!2023075 () Bool)

(assert (=> d!1524561 (=> (not res!2023075) (not e!2977698))))

(declare-fun contains!16923 (MutLongMap!4963 (_ BitVec 64)) Bool)

(assert (=> d!1524561 (= res!2023075 (contains!16923 (v!47831 (underlying!10134 thiss!42052)) lt!1932674))))

(declare-fun lt!1932682 () Unit!138408)

(declare-fun e!2977703 () Unit!138408)

(assert (=> d!1524561 (= lt!1932682 e!2977703)))

(assert (=> d!1524561 (= c!813634 (contains!16922 (extractMap!2160 (toList!6336 (map!12048 (v!47831 (underlying!10134 thiss!42052))))) key!1776))))

(declare-fun lt!1932689 () Unit!138408)

(assert (=> d!1524561 (= lt!1932689 e!2977700)))

(declare-fun c!813633 () Bool)

(assert (=> d!1524561 (= c!813633 (contains!16923 (v!47831 (underlying!10134 thiss!42052)) lt!1932674))))

(assert (=> d!1524561 (= lt!1932674 (hash!4600 (hashF!12515 thiss!42052) key!1776))))

(assert (=> d!1524561 (valid!3969 thiss!42052)))

(assert (=> d!1524561 (= (contains!16920 thiss!42052 key!1776) lt!1932680)))

(declare-fun bm!334406 () Bool)

(assert (=> bm!334406 (= call!334413 (hash!4600 (hashF!12515 thiss!42052) key!1776))))

(declare-fun b!4770097 () Bool)

(declare-fun Unit!138416 () Unit!138408)

(assert (=> b!4770097 (= e!2977700 Unit!138416)))

(declare-fun b!4770098 () Bool)

(declare-fun e!2977697 () Bool)

(assert (=> b!4770098 (= e!2977697 call!334411)))

(declare-fun bm!334411 () Bool)

(assert (=> bm!334411 (= call!334415 (map!12048 (v!47831 (underlying!10134 thiss!42052))))))

(declare-fun b!4770099 () Bool)

(assert (=> b!4770099 (= e!2977698 (isDefined!9876 (getPair!660 (apply!12669 (v!47831 (underlying!10134 thiss!42052)) lt!1932674) key!1776)))))

(declare-fun b!4770100 () Bool)

(declare-fun lt!1932678 () Unit!138408)

(assert (=> b!4770100 (= e!2977703 lt!1932678)))

(assert (=> b!4770100 (= lt!1932676 call!334415)))

(declare-fun lemmaInGenericMapThenInLongMap!210 (ListLongMap!4749 K!15049 Hashable!6624) Unit!138408)

(assert (=> b!4770100 (= lt!1932678 (lemmaInGenericMapThenInLongMap!210 lt!1932676 key!1776 (hashF!12515 thiss!42052)))))

(declare-fun res!2023076 () Bool)

(assert (=> b!4770100 (= res!2023076 call!334416)))

(assert (=> b!4770100 (=> (not res!2023076) (not e!2977702))))

(assert (=> b!4770100 e!2977702))

(declare-fun b!4770101 () Bool)

(assert (=> b!4770101 (= e!2977703 e!2977699)))

(declare-fun res!2023077 () Bool)

(assert (=> b!4770101 (= res!2023077 call!334416)))

(assert (=> b!4770101 (=> (not res!2023077) (not e!2977697))))

(declare-fun c!813635 () Bool)

(assert (=> b!4770101 (= c!813635 e!2977697)))

(assert (= (and d!1524561 c!813633) b!4770092))

(assert (= (and d!1524561 (not c!813633)) b!4770097))

(assert (= (and b!4770092 c!813632) b!4770096))

(assert (= (and b!4770092 (not c!813632)) b!4770093))

(assert (= (and d!1524561 c!813634) b!4770100))

(assert (= (and d!1524561 (not c!813634)) b!4770101))

(assert (= (and b!4770100 res!2023076) b!4770091))

(assert (= (and b!4770101 res!2023077) b!4770098))

(assert (= (and b!4770101 c!813635) b!4770094))

(assert (= (and b!4770101 (not c!813635)) b!4770095))

(assert (= (or b!4770100 b!4770101 b!4770098 b!4770094) bm!334411))

(assert (= (or b!4770100 b!4770091 b!4770101 b!4770098) bm!334406))

(assert (= (or b!4770091 b!4770098) bm!334410))

(assert (= (or b!4770100 b!4770101) bm!334407))

(assert (= (or b!4770091 b!4770098) bm!334408))

(assert (= (or b!4770091 b!4770098) bm!334409))

(assert (= (and d!1524561 res!2023075) b!4770099))

(declare-fun m!5741700 () Bool)

(assert (=> bm!334409 m!5741700))

(declare-fun m!5741702 () Bool)

(assert (=> d!1524561 m!5741702))

(declare-fun m!5741704 () Bool)

(assert (=> d!1524561 m!5741704))

(declare-fun m!5741706 () Bool)

(assert (=> d!1524561 m!5741706))

(assert (=> d!1524561 m!5741706))

(declare-fun m!5741708 () Bool)

(assert (=> d!1524561 m!5741708))

(assert (=> d!1524561 m!5741670))

(assert (=> d!1524561 m!5741676))

(assert (=> d!1524561 m!5741680))

(assert (=> d!1524561 m!5741704))

(declare-fun m!5741710 () Bool)

(assert (=> d!1524561 m!5741710))

(declare-fun m!5741712 () Bool)

(assert (=> bm!334410 m!5741712))

(declare-fun m!5741714 () Bool)

(assert (=> bm!334407 m!5741714))

(assert (=> bm!334411 m!5741670))

(assert (=> bm!334406 m!5741676))

(assert (=> b!4770092 m!5741670))

(declare-fun m!5741716 () Bool)

(assert (=> b!4770092 m!5741716))

(declare-fun m!5741718 () Bool)

(assert (=> b!4770092 m!5741718))

(declare-fun m!5741720 () Bool)

(assert (=> b!4770092 m!5741720))

(declare-fun m!5741722 () Bool)

(assert (=> bm!334408 m!5741722))

(assert (=> b!4770099 m!5741716))

(assert (=> b!4770099 m!5741716))

(declare-fun m!5741724 () Bool)

(assert (=> b!4770099 m!5741724))

(assert (=> b!4770099 m!5741724))

(declare-fun m!5741726 () Bool)

(assert (=> b!4770099 m!5741726))

(declare-fun m!5741728 () Bool)

(assert (=> b!4770094 m!5741728))

(assert (=> b!4770094 m!5741728))

(declare-fun m!5741730 () Bool)

(assert (=> b!4770094 m!5741730))

(declare-fun m!5741732 () Bool)

(assert (=> b!4770094 m!5741732))

(declare-fun m!5741734 () Bool)

(assert (=> b!4770100 m!5741734))

(declare-fun m!5741736 () Bool)

(assert (=> b!4770096 m!5741736))

(declare-fun m!5741738 () Bool)

(assert (=> b!4770096 m!5741738))

(declare-fun m!5741740 () Bool)

(assert (=> b!4770096 m!5741740))

(assert (=> b!4770096 m!5741736))

(declare-fun m!5741742 () Bool)

(assert (=> b!4770096 m!5741742))

(declare-fun m!5741744 () Bool)

(assert (=> b!4770096 m!5741744))

(assert (=> b!4770096 m!5741716))

(declare-fun m!5741746 () Bool)

(assert (=> b!4770096 m!5741746))

(assert (=> b!4770096 m!5741670))

(declare-fun m!5741748 () Bool)

(assert (=> b!4770096 m!5741748))

(assert (=> b!4770067 d!1524561))

(declare-fun bs!1149403 () Bool)

(declare-fun b!4770106 () Bool)

(assert (= bs!1149403 (and b!4770106 b!4770060)))

(declare-fun lambda!224825 () Int)

(assert (=> bs!1149403 (= lambda!224825 lambda!224819)))

(declare-fun bs!1149404 () Bool)

(assert (= bs!1149404 (and b!4770106 b!4770092)))

(assert (=> bs!1149404 (= lambda!224825 lambda!224822)))

(declare-fun d!1524563 () Bool)

(declare-fun res!2023082 () Bool)

(declare-fun e!2977706 () Bool)

(assert (=> d!1524563 (=> (not res!2023082) (not e!2977706))))

(declare-fun valid!3970 (MutLongMap!4963) Bool)

(assert (=> d!1524563 (= res!2023082 (valid!3970 (v!47831 (underlying!10134 thiss!42052))))))

(assert (=> d!1524563 (= (valid!3969 thiss!42052) e!2977706)))

(declare-fun res!2023083 () Bool)

(assert (=> b!4770106 (=> (not res!2023083) (not e!2977706))))

(assert (=> b!4770106 (= res!2023083 (forall!11887 (toList!6336 (map!12048 (v!47831 (underlying!10134 thiss!42052)))) lambda!224825))))

(declare-fun b!4770107 () Bool)

(assert (=> b!4770107 (= e!2977706 (allKeysSameHashInMap!2031 (map!12048 (v!47831 (underlying!10134 thiss!42052))) (hashF!12515 thiss!42052)))))

(assert (= (and d!1524563 res!2023082) b!4770106))

(assert (= (and b!4770106 res!2023083) b!4770107))

(declare-fun m!5741750 () Bool)

(assert (=> d!1524563 m!5741750))

(assert (=> b!4770106 m!5741670))

(declare-fun m!5741752 () Bool)

(assert (=> b!4770106 m!5741752))

(assert (=> b!4770107 m!5741670))

(assert (=> b!4770107 m!5741670))

(declare-fun m!5741754 () Bool)

(assert (=> b!4770107 m!5741754))

(assert (=> b!4770066 d!1524563))

(declare-fun bs!1149405 () Bool)

(declare-fun d!1524565 () Bool)

(assert (= bs!1149405 (and d!1524565 b!4770060)))

(declare-fun lambda!224828 () Int)

(assert (=> bs!1149405 (not (= lambda!224828 lambda!224819))))

(declare-fun bs!1149406 () Bool)

(assert (= bs!1149406 (and d!1524565 b!4770092)))

(assert (=> bs!1149406 (not (= lambda!224828 lambda!224822))))

(declare-fun bs!1149407 () Bool)

(assert (= bs!1149407 (and d!1524565 b!4770106)))

(assert (=> bs!1149407 (not (= lambda!224828 lambda!224825))))

(assert (=> d!1524565 true))

(assert (=> d!1524565 (= (allKeysSameHashInMap!2031 lt!1932623 (hashF!12515 thiss!42052)) (forall!11887 (toList!6336 lt!1932623) lambda!224828))))

(declare-fun bs!1149408 () Bool)

(assert (= bs!1149408 d!1524565))

(declare-fun m!5741756 () Bool)

(assert (=> bs!1149408 m!5741756))

(assert (=> b!4770063 d!1524565))

(declare-fun d!1524567 () Bool)

(assert (=> d!1524567 (= (array_inv!5843 (_keys!5305 (v!47830 (underlying!10133 (v!47831 (underlying!10134 thiss!42052)))))) (bvsge (size!36341 (_keys!5305 (v!47830 (underlying!10133 (v!47831 (underlying!10134 thiss!42052)))))) #b00000000000000000000000000000000))))

(assert (=> b!4770062 d!1524567))

(declare-fun d!1524569 () Bool)

(assert (=> d!1524569 (= (array_inv!5844 (_values!5276 (v!47830 (underlying!10133 (v!47831 (underlying!10134 thiss!42052)))))) (bvsge (size!36342 (_values!5276 (v!47830 (underlying!10133 (v!47831 (underlying!10134 thiss!42052)))))) #b00000000000000000000000000000000))))

(assert (=> b!4770062 d!1524569))

(declare-fun d!1524571 () Bool)

(assert (=> d!1524571 (isDefined!9875 (getValueByKey!2216 (toList!6336 lt!1932623) lt!1932630))))

(declare-fun lt!1932695 () Unit!138408)

(declare-fun choose!34018 (List!53679 (_ BitVec 64)) Unit!138408)

(assert (=> d!1524571 (= lt!1932695 (choose!34018 (toList!6336 lt!1932623) lt!1932630))))

(declare-fun e!2977709 () Bool)

(assert (=> d!1524571 e!2977709))

(declare-fun res!2023086 () Bool)

(assert (=> d!1524571 (=> (not res!2023086) (not e!2977709))))

(declare-fun isStrictlySorted!817 (List!53679) Bool)

(assert (=> d!1524571 (= res!2023086 (isStrictlySorted!817 (toList!6336 lt!1932623)))))

(assert (=> d!1524571 (= (lemmaContainsKeyImpliesGetValueByKeyDefined!2012 (toList!6336 lt!1932623) lt!1932630) lt!1932695)))

(declare-fun b!4770112 () Bool)

(assert (=> b!4770112 (= e!2977709 (containsKey!3681 (toList!6336 lt!1932623) lt!1932630))))

(assert (= (and d!1524571 res!2023086) b!4770112))

(assert (=> d!1524571 m!5741686))

(assert (=> d!1524571 m!5741686))

(assert (=> d!1524571 m!5741688))

(declare-fun m!5741758 () Bool)

(assert (=> d!1524571 m!5741758))

(declare-fun m!5741760 () Bool)

(assert (=> d!1524571 m!5741760))

(declare-fun m!5741762 () Bool)

(assert (=> b!4770112 m!5741762))

(assert (=> b!4770065 d!1524571))

(declare-fun d!1524573 () Bool)

(declare-fun isEmpty!29295 (Option!12729) Bool)

(assert (=> d!1524573 (= (isDefined!9875 (getValueByKey!2216 (toList!6336 lt!1932623) lt!1932630)) (not (isEmpty!29295 (getValueByKey!2216 (toList!6336 lt!1932623) lt!1932630))))))

(declare-fun bs!1149409 () Bool)

(assert (= bs!1149409 d!1524573))

(assert (=> bs!1149409 m!5741686))

(declare-fun m!5741764 () Bool)

(assert (=> bs!1149409 m!5741764))

(assert (=> b!4770065 d!1524573))

(declare-fun b!4770123 () Bool)

(declare-fun e!2977715 () Option!12729)

(assert (=> b!4770123 (= e!2977715 (getValueByKey!2216 (t!361121 (toList!6336 lt!1932623)) lt!1932630))))

(declare-fun b!4770121 () Bool)

(declare-fun e!2977714 () Option!12729)

(assert (=> b!4770121 (= e!2977714 (Some!12728 (_2!31127 (h!59967 (toList!6336 lt!1932623)))))))

(declare-fun b!4770124 () Bool)

(assert (=> b!4770124 (= e!2977715 None!12728)))

(declare-fun b!4770122 () Bool)

(assert (=> b!4770122 (= e!2977714 e!2977715)))

(declare-fun c!813641 () Bool)

(assert (=> b!4770122 (= c!813641 (and ((_ is Cons!53555) (toList!6336 lt!1932623)) (not (= (_1!31127 (h!59967 (toList!6336 lt!1932623))) lt!1932630))))))

(declare-fun d!1524575 () Bool)

(declare-fun c!813640 () Bool)

(assert (=> d!1524575 (= c!813640 (and ((_ is Cons!53555) (toList!6336 lt!1932623)) (= (_1!31127 (h!59967 (toList!6336 lt!1932623))) lt!1932630)))))

(assert (=> d!1524575 (= (getValueByKey!2216 (toList!6336 lt!1932623) lt!1932630) e!2977714)))

(assert (= (and d!1524575 c!813640) b!4770121))

(assert (= (and d!1524575 (not c!813640)) b!4770122))

(assert (= (and b!4770122 c!813641) b!4770123))

(assert (= (and b!4770122 (not c!813641)) b!4770124))

(declare-fun m!5741766 () Bool)

(assert (=> b!4770123 m!5741766))

(assert (=> b!4770065 d!1524575))

(declare-fun d!1524577 () Bool)

(assert (=> d!1524577 (contains!16919 (toList!6336 lt!1932623) (tuple2!55667 lt!1932630 lt!1932627))))

(declare-fun lt!1932698 () Unit!138408)

(declare-fun choose!34019 (List!53679 (_ BitVec 64) List!53678) Unit!138408)

(assert (=> d!1524577 (= lt!1932698 (choose!34019 (toList!6336 lt!1932623) lt!1932630 lt!1932627))))

(declare-fun e!2977718 () Bool)

(assert (=> d!1524577 e!2977718))

(declare-fun res!2023089 () Bool)

(assert (=> d!1524577 (=> (not res!2023089) (not e!2977718))))

(assert (=> d!1524577 (= res!2023089 (isStrictlySorted!817 (toList!6336 lt!1932623)))))

(assert (=> d!1524577 (= (lemmaGetValueByKeyImpliesContainsTuple!951 (toList!6336 lt!1932623) lt!1932630 lt!1932627) lt!1932698)))

(declare-fun b!4770127 () Bool)

(assert (=> b!4770127 (= e!2977718 (= (getValueByKey!2216 (toList!6336 lt!1932623) lt!1932630) (Some!12728 lt!1932627)))))

(assert (= (and d!1524577 res!2023089) b!4770127))

(declare-fun m!5741768 () Bool)

(assert (=> d!1524577 m!5741768))

(declare-fun m!5741770 () Bool)

(assert (=> d!1524577 m!5741770))

(assert (=> d!1524577 m!5741760))

(assert (=> b!4770127 m!5741686))

(assert (=> b!4770065 d!1524577))

(declare-fun d!1524579 () Bool)

(declare-fun map!12050 (LongMapFixedSize!9926) ListLongMap!4749)

(assert (=> d!1524579 (= (map!12048 (v!47831 (underlying!10134 thiss!42052))) (map!12050 (v!47830 (underlying!10133 (v!47831 (underlying!10134 thiss!42052))))))))

(declare-fun bs!1149410 () Bool)

(assert (= bs!1149410 d!1524579))

(declare-fun m!5741772 () Bool)

(assert (=> bs!1149410 m!5741772))

(assert (=> b!4770060 d!1524579))

(declare-fun d!1524581 () Bool)

(declare-fun dynLambda!21966 (Int tuple2!55666) Bool)

(assert (=> d!1524581 (dynLambda!21966 lambda!224819 lt!1932624)))

(declare-fun lt!1932701 () Unit!138408)

(declare-fun choose!34020 (List!53679 Int tuple2!55666) Unit!138408)

(assert (=> d!1524581 (= lt!1932701 (choose!34020 (toList!6336 lt!1932623) lambda!224819 lt!1932624))))

(declare-fun e!2977721 () Bool)

(assert (=> d!1524581 e!2977721))

(declare-fun res!2023092 () Bool)

(assert (=> d!1524581 (=> (not res!2023092) (not e!2977721))))

(assert (=> d!1524581 (= res!2023092 (forall!11887 (toList!6336 lt!1932623) lambda!224819))))

(assert (=> d!1524581 (= (forallContained!3879 (toList!6336 lt!1932623) lambda!224819 lt!1932624) lt!1932701)))

(declare-fun b!4770130 () Bool)

(assert (=> b!4770130 (= e!2977721 (contains!16919 (toList!6336 lt!1932623) lt!1932624))))

(assert (= (and d!1524581 res!2023092) b!4770130))

(declare-fun b_lambda!184555 () Bool)

(assert (=> (not b_lambda!184555) (not d!1524581)))

(declare-fun m!5741774 () Bool)

(assert (=> d!1524581 m!5741774))

(declare-fun m!5741776 () Bool)

(assert (=> d!1524581 m!5741776))

(assert (=> d!1524581 m!5741678))

(assert (=> b!4770130 m!5741674))

(assert (=> b!4770060 d!1524581))

(declare-fun b!4770147 () Bool)

(declare-fun e!2977735 () Bool)

(declare-fun containsKey!3682 (List!53678 K!15049) Bool)

(assert (=> b!4770147 (= e!2977735 (not (containsKey!3682 lt!1932627 key!1776)))))

(declare-fun b!4770148 () Bool)

(declare-fun e!2977732 () Bool)

(declare-fun lt!1932704 () Option!12728)

(declare-fun contains!16924 (List!53678 tuple2!55664) Bool)

(declare-fun get!18087 (Option!12728) tuple2!55664)

(assert (=> b!4770148 (= e!2977732 (contains!16924 lt!1932627 (get!18087 lt!1932704)))))

(declare-fun b!4770149 () Bool)

(declare-fun e!2977736 () Option!12728)

(assert (=> b!4770149 (= e!2977736 (Some!12727 (h!59966 lt!1932627)))))

(declare-fun b!4770150 () Bool)

(declare-fun e!2977734 () Option!12728)

(assert (=> b!4770150 (= e!2977734 (getPair!660 (t!361120 lt!1932627) key!1776))))

(declare-fun b!4770151 () Bool)

(assert (=> b!4770151 (= e!2977736 e!2977734)))

(declare-fun c!813646 () Bool)

(assert (=> b!4770151 (= c!813646 ((_ is Cons!53554) lt!1932627))))

(declare-fun b!4770152 () Bool)

(assert (=> b!4770152 (= e!2977734 None!12727)))

(declare-fun d!1524583 () Bool)

(declare-fun e!2977733 () Bool)

(assert (=> d!1524583 e!2977733))

(declare-fun res!2023103 () Bool)

(assert (=> d!1524583 (=> res!2023103 e!2977733)))

(assert (=> d!1524583 (= res!2023103 e!2977735)))

(declare-fun res!2023101 () Bool)

(assert (=> d!1524583 (=> (not res!2023101) (not e!2977735))))

(declare-fun isEmpty!29296 (Option!12728) Bool)

(assert (=> d!1524583 (= res!2023101 (isEmpty!29296 lt!1932704))))

(assert (=> d!1524583 (= lt!1932704 e!2977736)))

(declare-fun c!813647 () Bool)

(assert (=> d!1524583 (= c!813647 (and ((_ is Cons!53554) lt!1932627) (= (_1!31126 (h!59966 lt!1932627)) key!1776)))))

(declare-fun noDuplicateKeys!2261 (List!53678) Bool)

(assert (=> d!1524583 (noDuplicateKeys!2261 lt!1932627)))

(assert (=> d!1524583 (= (getPair!660 lt!1932627 key!1776) lt!1932704)))

(declare-fun b!4770153 () Bool)

(assert (=> b!4770153 (= e!2977733 e!2977732)))

(declare-fun res!2023102 () Bool)

(assert (=> b!4770153 (=> (not res!2023102) (not e!2977732))))

(assert (=> b!4770153 (= res!2023102 (isDefined!9876 lt!1932704))))

(declare-fun b!4770154 () Bool)

(declare-fun res!2023104 () Bool)

(assert (=> b!4770154 (=> (not res!2023104) (not e!2977732))))

(assert (=> b!4770154 (= res!2023104 (= (_1!31126 (get!18087 lt!1932704)) key!1776))))

(assert (= (and d!1524583 c!813647) b!4770149))

(assert (= (and d!1524583 (not c!813647)) b!4770151))

(assert (= (and b!4770151 c!813646) b!4770150))

(assert (= (and b!4770151 (not c!813646)) b!4770152))

(assert (= (and d!1524583 res!2023101) b!4770147))

(assert (= (and d!1524583 (not res!2023103)) b!4770153))

(assert (= (and b!4770153 res!2023102) b!4770154))

(assert (= (and b!4770154 res!2023104) b!4770148))

(declare-fun m!5741778 () Bool)

(assert (=> b!4770154 m!5741778))

(declare-fun m!5741780 () Bool)

(assert (=> b!4770147 m!5741780))

(declare-fun m!5741782 () Bool)

(assert (=> b!4770150 m!5741782))

(declare-fun m!5741784 () Bool)

(assert (=> d!1524583 m!5741784))

(declare-fun m!5741786 () Bool)

(assert (=> d!1524583 m!5741786))

(declare-fun m!5741788 () Bool)

(assert (=> b!4770153 m!5741788))

(assert (=> b!4770148 m!5741778))

(assert (=> b!4770148 m!5741778))

(declare-fun m!5741790 () Bool)

(assert (=> b!4770148 m!5741790))

(assert (=> b!4770060 d!1524583))

(declare-fun d!1524585 () Bool)

(declare-fun hash!4601 (Hashable!6624 K!15049) (_ BitVec 64))

(assert (=> d!1524585 (= (hash!4600 (hashF!12515 thiss!42052) key!1776) (hash!4601 (hashF!12515 thiss!42052) key!1776))))

(declare-fun bs!1149411 () Bool)

(assert (= bs!1149411 d!1524585))

(declare-fun m!5741792 () Bool)

(assert (=> bs!1149411 m!5741792))

(assert (=> b!4770060 d!1524585))

(declare-fun d!1524587 () Bool)

(declare-fun res!2023109 () Bool)

(declare-fun e!2977741 () Bool)

(assert (=> d!1524587 (=> res!2023109 e!2977741)))

(assert (=> d!1524587 (= res!2023109 ((_ is Nil!53555) (toList!6336 lt!1932623)))))

(assert (=> d!1524587 (= (forall!11887 (toList!6336 lt!1932623) lambda!224819) e!2977741)))

(declare-fun b!4770159 () Bool)

(declare-fun e!2977742 () Bool)

(assert (=> b!4770159 (= e!2977741 e!2977742)))

(declare-fun res!2023110 () Bool)

(assert (=> b!4770159 (=> (not res!2023110) (not e!2977742))))

(assert (=> b!4770159 (= res!2023110 (dynLambda!21966 lambda!224819 (h!59967 (toList!6336 lt!1932623))))))

(declare-fun b!4770160 () Bool)

(assert (=> b!4770160 (= e!2977742 (forall!11887 (t!361121 (toList!6336 lt!1932623)) lambda!224819))))

(assert (= (and d!1524587 (not res!2023109)) b!4770159))

(assert (= (and b!4770159 res!2023110) b!4770160))

(declare-fun b_lambda!184557 () Bool)

(assert (=> (not b_lambda!184557) (not b!4770159)))

(declare-fun m!5741794 () Bool)

(assert (=> b!4770159 m!5741794))

(declare-fun m!5741796 () Bool)

(assert (=> b!4770160 m!5741796))

(assert (=> b!4770060 d!1524587))

(declare-fun d!1524589 () Bool)

(declare-fun lt!1932707 () Bool)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!9597 (List!53679) (InoxSet tuple2!55666))

(assert (=> d!1524589 (= lt!1932707 (select (content!9597 (toList!6336 lt!1932623)) lt!1932624))))

(declare-fun e!2977747 () Bool)

(assert (=> d!1524589 (= lt!1932707 e!2977747)))

(declare-fun res!2023116 () Bool)

(assert (=> d!1524589 (=> (not res!2023116) (not e!2977747))))

(assert (=> d!1524589 (= res!2023116 ((_ is Cons!53555) (toList!6336 lt!1932623)))))

(assert (=> d!1524589 (= (contains!16919 (toList!6336 lt!1932623) lt!1932624) lt!1932707)))

(declare-fun b!4770165 () Bool)

(declare-fun e!2977748 () Bool)

(assert (=> b!4770165 (= e!2977747 e!2977748)))

(declare-fun res!2023115 () Bool)

(assert (=> b!4770165 (=> res!2023115 e!2977748)))

(assert (=> b!4770165 (= res!2023115 (= (h!59967 (toList!6336 lt!1932623)) lt!1932624))))

(declare-fun b!4770166 () Bool)

(assert (=> b!4770166 (= e!2977748 (contains!16919 (t!361121 (toList!6336 lt!1932623)) lt!1932624))))

(assert (= (and d!1524589 res!2023116) b!4770165))

(assert (= (and b!4770165 (not res!2023115)) b!4770166))

(declare-fun m!5741798 () Bool)

(assert (=> d!1524589 m!5741798))

(declare-fun m!5741800 () Bool)

(assert (=> d!1524589 m!5741800))

(declare-fun m!5741802 () Bool)

(assert (=> b!4770166 m!5741802))

(assert (=> b!4770060 d!1524589))

(declare-fun d!1524591 () Bool)

(declare-fun e!2977751 () Bool)

(assert (=> d!1524591 e!2977751))

(declare-fun c!813650 () Bool)

(assert (=> d!1524591 (= c!813650 (contains!16923 (v!47831 (underlying!10134 thiss!42052)) lt!1932630))))

(declare-fun lt!1932710 () List!53678)

(declare-fun apply!12671 (LongMapFixedSize!9926 (_ BitVec 64)) List!53678)

(assert (=> d!1524591 (= lt!1932710 (apply!12671 (v!47830 (underlying!10133 (v!47831 (underlying!10134 thiss!42052)))) lt!1932630))))

(assert (=> d!1524591 (valid!3970 (v!47831 (underlying!10134 thiss!42052)))))

(assert (=> d!1524591 (= (apply!12669 (v!47831 (underlying!10134 thiss!42052)) lt!1932630) lt!1932710)))

(declare-fun b!4770171 () Bool)

(declare-fun get!18088 (Option!12729) List!53678)

(assert (=> b!4770171 (= e!2977751 (= lt!1932710 (get!18088 (getValueByKey!2216 (toList!6336 (map!12048 (v!47831 (underlying!10134 thiss!42052)))) lt!1932630))))))

(declare-fun b!4770172 () Bool)

(declare-fun dynLambda!21967 (Int (_ BitVec 64)) List!53678)

(assert (=> b!4770172 (= e!2977751 (= lt!1932710 (dynLambda!21967 (defaultEntry!5381 (v!47830 (underlying!10133 (v!47831 (underlying!10134 thiss!42052))))) lt!1932630)))))

(assert (=> b!4770172 ((_ is LongMap!4963) (v!47831 (underlying!10134 thiss!42052)))))

(assert (= (and d!1524591 c!813650) b!4770171))

(assert (= (and d!1524591 (not c!813650)) b!4770172))

(declare-fun b_lambda!184559 () Bool)

(assert (=> (not b_lambda!184559) (not b!4770172)))

(declare-fun t!361123 () Bool)

(declare-fun tb!257495 () Bool)

(assert (=> (and b!4770062 (= (defaultEntry!5381 (v!47830 (underlying!10133 (v!47831 (underlying!10134 thiss!42052))))) (defaultEntry!5381 (v!47830 (underlying!10133 (v!47831 (underlying!10134 thiss!42052)))))) t!361123) tb!257495))

(assert (=> b!4770172 t!361123))

(declare-fun result!319166 () Bool)

(declare-fun b_and!341539 () Bool)

(assert (= b_and!341535 (and (=> t!361123 result!319166) b_and!341539)))

(declare-fun m!5741804 () Bool)

(assert (=> d!1524591 m!5741804))

(declare-fun m!5741806 () Bool)

(assert (=> d!1524591 m!5741806))

(assert (=> d!1524591 m!5741750))

(assert (=> b!4770171 m!5741670))

(declare-fun m!5741808 () Bool)

(assert (=> b!4770171 m!5741808))

(assert (=> b!4770171 m!5741808))

(declare-fun m!5741810 () Bool)

(assert (=> b!4770171 m!5741810))

(declare-fun m!5741812 () Bool)

(assert (=> b!4770172 m!5741812))

(assert (=> b!4770060 d!1524591))

(declare-fun b!4770177 () Bool)

(declare-fun e!2977754 () Bool)

(declare-fun tp_is_empty!32539 () Bool)

(declare-fun tp!1356428 () Bool)

(assert (=> b!4770177 (= e!2977754 (and tp_is_empty!32537 tp_is_empty!32539 tp!1356428))))

(assert (=> b!4770059 (= tp!1356421 e!2977754)))

(assert (= (and b!4770059 ((_ is Cons!53554) mapDefault!21997)) b!4770177))

(declare-fun tp!1356429 () Bool)

(declare-fun b!4770178 () Bool)

(declare-fun e!2977755 () Bool)

(assert (=> b!4770178 (= e!2977755 (and tp_is_empty!32537 tp_is_empty!32539 tp!1356429))))

(assert (=> b!4770062 (= tp!1356424 e!2977755)))

(assert (= (and b!4770062 ((_ is Cons!53554) (zeroValue!5251 (v!47830 (underlying!10133 (v!47831 (underlying!10134 thiss!42052))))))) b!4770178))

(declare-fun e!2977756 () Bool)

(declare-fun tp!1356430 () Bool)

(declare-fun b!4770179 () Bool)

(assert (=> b!4770179 (= e!2977756 (and tp_is_empty!32537 tp_is_empty!32539 tp!1356430))))

(assert (=> b!4770062 (= tp!1356425 e!2977756)))

(assert (= (and b!4770062 ((_ is Cons!53554) (minValue!5251 (v!47830 (underlying!10133 (v!47831 (underlying!10134 thiss!42052))))))) b!4770179))

(declare-fun e!2977762 () Bool)

(declare-fun b!4770186 () Bool)

(declare-fun tp!1356439 () Bool)

(assert (=> b!4770186 (= e!2977762 (and tp_is_empty!32537 tp_is_empty!32539 tp!1356439))))

(declare-fun e!2977761 () Bool)

(declare-fun tp!1356437 () Bool)

(declare-fun b!4770187 () Bool)

(assert (=> b!4770187 (= e!2977761 (and tp_is_empty!32537 tp_is_empty!32539 tp!1356437))))

(declare-fun condMapEmpty!22000 () Bool)

(declare-fun mapDefault!22000 () List!53678)

(assert (=> mapNonEmpty!21997 (= condMapEmpty!22000 (= mapRest!21997 ((as const (Array (_ BitVec 32) List!53678)) mapDefault!22000)))))

(declare-fun mapRes!22000 () Bool)

(assert (=> mapNonEmpty!21997 (= tp!1356419 (and e!2977761 mapRes!22000))))

(declare-fun mapIsEmpty!22000 () Bool)

(assert (=> mapIsEmpty!22000 mapRes!22000))

(declare-fun mapNonEmpty!22000 () Bool)

(declare-fun tp!1356438 () Bool)

(assert (=> mapNonEmpty!22000 (= mapRes!22000 (and tp!1356438 e!2977762))))

(declare-fun mapKey!22000 () (_ BitVec 32))

(declare-fun mapRest!22000 () (Array (_ BitVec 32) List!53678))

(declare-fun mapValue!22000 () List!53678)

(assert (=> mapNonEmpty!22000 (= mapRest!21997 (store mapRest!22000 mapKey!22000 mapValue!22000))))

(assert (= (and mapNonEmpty!21997 condMapEmpty!22000) mapIsEmpty!22000))

(assert (= (and mapNonEmpty!21997 (not condMapEmpty!22000)) mapNonEmpty!22000))

(assert (= (and mapNonEmpty!22000 ((_ is Cons!53554) mapValue!22000)) b!4770186))

(assert (= (and mapNonEmpty!21997 ((_ is Cons!53554) mapDefault!22000)) b!4770187))

(declare-fun m!5741814 () Bool)

(assert (=> mapNonEmpty!22000 m!5741814))

(declare-fun e!2977763 () Bool)

(declare-fun b!4770188 () Bool)

(declare-fun tp!1356440 () Bool)

(assert (=> b!4770188 (= e!2977763 (and tp_is_empty!32537 tp_is_empty!32539 tp!1356440))))

(assert (=> mapNonEmpty!21997 (= tp!1356423 e!2977763)))

(assert (= (and mapNonEmpty!21997 ((_ is Cons!53554) mapValue!21997)) b!4770188))

(declare-fun b_lambda!184561 () Bool)

(assert (= b_lambda!184559 (or (and b!4770062 b_free!129795) b_lambda!184561)))

(declare-fun b_lambda!184563 () Bool)

(assert (= b_lambda!184555 (or b!4770060 b_lambda!184563)))

(declare-fun bs!1149412 () Bool)

(declare-fun d!1524593 () Bool)

(assert (= bs!1149412 (and d!1524593 b!4770060)))

(assert (=> bs!1149412 (= (dynLambda!21966 lambda!224819 lt!1932624) (noDuplicateKeys!2261 (_2!31127 lt!1932624)))))

(declare-fun m!5741816 () Bool)

(assert (=> bs!1149412 m!5741816))

(assert (=> d!1524581 d!1524593))

(declare-fun b_lambda!184565 () Bool)

(assert (= b_lambda!184557 (or b!4770060 b_lambda!184565)))

(declare-fun bs!1149413 () Bool)

(declare-fun d!1524595 () Bool)

(assert (= bs!1149413 (and d!1524595 b!4770060)))

(assert (=> bs!1149413 (= (dynLambda!21966 lambda!224819 (h!59967 (toList!6336 lt!1932623))) (noDuplicateKeys!2261 (_2!31127 (h!59967 (toList!6336 lt!1932623)))))))

(declare-fun m!5741818 () Bool)

(assert (=> bs!1149413 m!5741818))

(assert (=> b!4770159 d!1524595))

(check-sat (not b!4770177) (not b!4770099) (not b!4770107) (not b_lambda!184561) (not bm!334410) (not mapNonEmpty!22000) (not b!4770123) (not b!4770171) (not b!4770187) (not b_next!130587) b_and!341537 (not b!4770186) (not b!4770188) (not b!4770148) (not d!1524571) (not b!4770100) (not b!4770150) (not b!4770154) (not bm!334406) (not d!1524591) (not b!4770127) (not d!1524579) (not d!1524583) (not b_lambda!184565) (not d!1524585) (not bs!1149412) (not b!4770166) (not b!4770178) (not bs!1149413) (not bm!334411) (not bm!334407) (not d!1524589) (not d!1524573) (not b!4770147) (not b_next!130585) (not bm!334408) (not b!4770112) (not tb!257495) b_and!341539 (not b!4770096) (not bm!334409) (not b!4770160) (not b!4770092) (not b!4770179) (not d!1524581) tp_is_empty!32537 (not b!4770130) (not b!4770153) tp_is_empty!32539 (not d!1524565) (not d!1524561) (not b!4770094) (not d!1524577) (not b_lambda!184563) (not b!4770106) (not d!1524563))
(check-sat b_and!341537 b_and!341539 (not b_next!130587) (not b_next!130585))
