; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!488266 () Bool)

(assert start!488266)

(declare-fun b!4770259 () Bool)

(declare-fun b_free!129803 () Bool)

(declare-fun b_next!130593 () Bool)

(assert (=> b!4770259 (= b_free!129803 (not b_next!130593))))

(declare-fun tp!1356482 () Bool)

(declare-fun b_and!341545 () Bool)

(assert (=> b!4770259 (= tp!1356482 b_and!341545)))

(declare-fun b!4770262 () Bool)

(declare-fun b_free!129805 () Bool)

(declare-fun b_next!130595 () Bool)

(assert (=> b!4770262 (= b_free!129805 (not b_next!130595))))

(declare-fun tp!1356481 () Bool)

(declare-fun b_and!341547 () Bool)

(assert (=> b!4770262 (= tp!1356481 b_and!341547)))

(declare-fun b!4770254 () Bool)

(declare-fun res!2023145 () Bool)

(declare-fun e!2977820 () Bool)

(assert (=> b!4770254 (=> (not res!2023145) (not e!2977820))))

(declare-datatypes ((K!15054 0))(
  ( (K!15055 (val!20349 Int)) )
))
(declare-datatypes ((V!15300 0))(
  ( (V!15301 (val!20350 Int)) )
))
(declare-datatypes ((tuple2!55672 0))(
  ( (tuple2!55673 (_1!31130 K!15054) (_2!31130 V!15300)) )
))
(declare-datatypes ((array!18196 0))(
  ( (array!18197 (arr!8115 (Array (_ BitVec 32) (_ BitVec 64))) (size!36345 (_ BitVec 32))) )
))
(declare-datatypes ((List!53682 0))(
  ( (Nil!53558) (Cons!53558 (h!59970 tuple2!55672) (t!361126 List!53682)) )
))
(declare-datatypes ((array!18198 0))(
  ( (array!18199 (arr!8116 (Array (_ BitVec 32) List!53682)) (size!36346 (_ BitVec 32))) )
))
(declare-datatypes ((Hashable!6626 0))(
  ( (HashableExt!6625 (__x!32643 Int)) )
))
(declare-datatypes ((LongMapFixedSize!9930 0))(
  ( (LongMapFixedSize!9931 (defaultEntry!5383 Int) (mask!14743 (_ BitVec 32)) (extraKeys!5240 (_ BitVec 32)) (zeroValue!5253 List!53682) (minValue!5253 List!53682) (_size!9955 (_ BitVec 32)) (_keys!5307 array!18196) (_values!5278 array!18198) (_vacant!5030 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!19625 0))(
  ( (Cell!19626 (v!47839 LongMapFixedSize!9930)) )
))
(declare-datatypes ((MutLongMap!4965 0))(
  ( (LongMap!4965 (underlying!10137 Cell!19625)) (MutLongMapExt!4964 (__x!32644 Int)) )
))
(declare-datatypes ((Cell!19627 0))(
  ( (Cell!19628 (v!47840 MutLongMap!4965)) )
))
(declare-datatypes ((MutableMap!4849 0))(
  ( (MutableMapExt!4848 (__x!32645 Int)) (HashMap!4849 (underlying!10138 Cell!19627) (hashF!12518 Hashable!6626) (_size!9956 (_ BitVec 32)) (defaultValue!5020 Int)) )
))
(declare-fun thiss!42052 () MutableMap!4849)

(declare-fun key!1776 () K!15054)

(declare-fun contains!16928 (MutableMap!4849 K!15054) Bool)

(assert (=> b!4770254 (= res!2023145 (contains!16928 thiss!42052 key!1776))))

(declare-fun b!4770255 () Bool)

(declare-datatypes ((Unit!138420 0))(
  ( (Unit!138421) )
))
(declare-fun e!2977814 () Unit!138420)

(declare-fun Unit!138422 () Unit!138420)

(assert (=> b!4770255 (= e!2977814 Unit!138422)))

(declare-fun lt!1932767 () Unit!138420)

(declare-datatypes ((tuple2!55674 0))(
  ( (tuple2!55675 (_1!31131 (_ BitVec 64)) (_2!31131 List!53682)) )
))
(declare-datatypes ((List!53683 0))(
  ( (Nil!53559) (Cons!53559 (h!59971 tuple2!55674) (t!361127 List!53683)) )
))
(declare-datatypes ((ListLongMap!4753 0))(
  ( (ListLongMap!4754 (toList!6340 List!53683)) )
))
(declare-fun lt!1932761 () ListLongMap!4753)

(declare-fun lt!1932768 () (_ BitVec 64))

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!2013 (List!53683 (_ BitVec 64)) Unit!138420)

(assert (=> b!4770255 (= lt!1932767 (lemmaContainsKeyImpliesGetValueByKeyDefined!2013 (toList!6340 lt!1932761) lt!1932768))))

(declare-datatypes ((Option!12731 0))(
  ( (None!12730) (Some!12730 (v!47841 List!53682)) )
))
(declare-fun isDefined!9877 (Option!12731) Bool)

(declare-fun getValueByKey!2217 (List!53683 (_ BitVec 64)) Option!12731)

(assert (=> b!4770255 (isDefined!9877 (getValueByKey!2217 (toList!6340 lt!1932761) lt!1932768))))

(declare-fun lt!1932766 () Unit!138420)

(declare-fun lt!1932765 () List!53682)

(declare-fun lemmaGetValueByKeyImpliesContainsTuple!952 (List!53683 (_ BitVec 64) List!53682) Unit!138420)

(assert (=> b!4770255 (= lt!1932766 (lemmaGetValueByKeyImpliesContainsTuple!952 (toList!6340 lt!1932761) lt!1932768 lt!1932765))))

(assert (=> b!4770255 false))

(declare-fun b!4770256 () Bool)

(declare-fun e!2977822 () Bool)

(assert (=> b!4770256 (= e!2977820 e!2977822)))

(declare-fun res!2023142 () Bool)

(assert (=> b!4770256 (=> (not res!2023142) (not e!2977822))))

(declare-fun lambda!224838 () Int)

(declare-fun forall!11889 (List!53683 Int) Bool)

(assert (=> b!4770256 (= res!2023142 (forall!11889 (toList!6340 lt!1932761) lambda!224838))))

(declare-datatypes ((Option!12732 0))(
  ( (None!12731) (Some!12731 (v!47842 tuple2!55672)) )
))
(declare-fun lt!1932763 () Option!12732)

(declare-fun getPair!662 (List!53682 K!15054) Option!12732)

(assert (=> b!4770256 (= lt!1932763 (getPair!662 lt!1932765 key!1776))))

(declare-fun lt!1932769 () tuple2!55674)

(declare-fun lt!1932764 () Unit!138420)

(declare-fun forallContained!3881 (List!53683 Int tuple2!55674) Unit!138420)

(assert (=> b!4770256 (= lt!1932764 (forallContained!3881 (toList!6340 lt!1932761) lambda!224838 lt!1932769))))

(declare-fun lt!1932762 () Unit!138420)

(assert (=> b!4770256 (= lt!1932762 e!2977814)))

(declare-fun c!813656 () Bool)

(declare-fun contains!16929 (List!53683 tuple2!55674) Bool)

(assert (=> b!4770256 (= c!813656 (not (contains!16929 (toList!6340 lt!1932761) lt!1932769)))))

(assert (=> b!4770256 (= lt!1932769 (tuple2!55675 lt!1932768 lt!1932765))))

(declare-fun apply!12673 (MutLongMap!4965 (_ BitVec 64)) List!53682)

(assert (=> b!4770256 (= lt!1932765 (apply!12673 (v!47840 (underlying!10138 thiss!42052)) lt!1932768))))

(declare-fun map!12053 (MutLongMap!4965) ListLongMap!4753)

(assert (=> b!4770256 (= lt!1932761 (map!12053 (v!47840 (underlying!10138 thiss!42052))))))

(declare-fun hash!4603 (Hashable!6626 K!15054) (_ BitVec 64))

(assert (=> b!4770256 (= lt!1932768 (hash!4603 (hashF!12518 thiss!42052) key!1776))))

(declare-fun b!4770257 () Bool)

(declare-fun e!2977817 () Bool)

(declare-fun e!2977816 () Bool)

(declare-fun lt!1932770 () MutLongMap!4965)

(get-info :version)

(assert (=> b!4770257 (= e!2977817 (and e!2977816 ((_ is LongMap!4965) lt!1932770)))))

(assert (=> b!4770257 (= lt!1932770 (v!47840 (underlying!10138 thiss!42052)))))

(declare-fun b!4770258 () Bool)

(declare-fun e!2977823 () Bool)

(assert (=> b!4770258 (= e!2977816 e!2977823)))

(declare-fun tp!1356479 () Bool)

(declare-fun e!2977819 () Bool)

(declare-fun e!2977821 () Bool)

(declare-fun tp!1356480 () Bool)

(declare-fun array_inv!5847 (array!18196) Bool)

(declare-fun array_inv!5848 (array!18198) Bool)

(assert (=> b!4770259 (= e!2977821 (and tp!1356482 tp!1356480 tp!1356479 (array_inv!5847 (_keys!5307 (v!47839 (underlying!10137 (v!47840 (underlying!10138 thiss!42052)))))) (array_inv!5848 (_values!5278 (v!47839 (underlying!10137 (v!47840 (underlying!10138 thiss!42052)))))) e!2977819))))

(declare-fun b!4770260 () Bool)

(declare-fun res!2023144 () Bool)

(assert (=> b!4770260 (=> (not res!2023144) (not e!2977820))))

(declare-fun valid!3971 (MutableMap!4849) Bool)

(assert (=> b!4770260 (= res!2023144 (valid!3971 thiss!42052))))

(declare-fun b!4770261 () Bool)

(assert (=> b!4770261 (= e!2977823 e!2977821)))

(declare-fun e!2977818 () Bool)

(assert (=> b!4770262 (= e!2977818 (and e!2977817 tp!1356481))))

(declare-fun res!2023146 () Bool)

(assert (=> start!488266 (=> (not res!2023146) (not e!2977820))))

(assert (=> start!488266 (= res!2023146 ((_ is HashMap!4849) thiss!42052))))

(assert (=> start!488266 e!2977820))

(assert (=> start!488266 e!2977818))

(declare-fun tp_is_empty!32543 () Bool)

(assert (=> start!488266 tp_is_empty!32543))

(declare-fun b!4770263 () Bool)

(declare-datatypes ((ListMap!5821 0))(
  ( (ListMap!5822 (toList!6341 List!53682)) )
))
(declare-fun contains!16930 (ListMap!5821 K!15054) Bool)

(declare-fun extractMap!2162 (List!53683) ListMap!5821)

(assert (=> b!4770263 (= e!2977822 (not (contains!16930 (extractMap!2162 (toList!6340 lt!1932761)) key!1776)))))

(declare-fun b!4770264 () Bool)

(declare-fun tp!1356477 () Bool)

(declare-fun mapRes!22006 () Bool)

(assert (=> b!4770264 (= e!2977819 (and tp!1356477 mapRes!22006))))

(declare-fun condMapEmpty!22006 () Bool)

(declare-fun mapDefault!22006 () List!53682)

(assert (=> b!4770264 (= condMapEmpty!22006 (= (arr!8116 (_values!5278 (v!47839 (underlying!10137 (v!47840 (underlying!10138 thiss!42052)))))) ((as const (Array (_ BitVec 32) List!53682)) mapDefault!22006)))))

(declare-fun b!4770265 () Bool)

(declare-fun Unit!138423 () Unit!138420)

(assert (=> b!4770265 (= e!2977814 Unit!138423)))

(declare-fun b!4770266 () Bool)

(declare-fun res!2023143 () Bool)

(assert (=> b!4770266 (=> (not res!2023143) (not e!2977822))))

(declare-fun allKeysSameHashInMap!2032 (ListLongMap!4753 Hashable!6626) Bool)

(assert (=> b!4770266 (= res!2023143 (allKeysSameHashInMap!2032 lt!1932761 (hashF!12518 thiss!42052)))))

(declare-fun mapIsEmpty!22006 () Bool)

(assert (=> mapIsEmpty!22006 mapRes!22006))

(declare-fun mapNonEmpty!22006 () Bool)

(declare-fun tp!1356476 () Bool)

(declare-fun tp!1356478 () Bool)

(assert (=> mapNonEmpty!22006 (= mapRes!22006 (and tp!1356476 tp!1356478))))

(declare-fun mapValue!22006 () List!53682)

(declare-fun mapKey!22006 () (_ BitVec 32))

(declare-fun mapRest!22006 () (Array (_ BitVec 32) List!53682))

(assert (=> mapNonEmpty!22006 (= (arr!8116 (_values!5278 (v!47839 (underlying!10137 (v!47840 (underlying!10138 thiss!42052)))))) (store mapRest!22006 mapKey!22006 mapValue!22006))))

(assert (= (and start!488266 res!2023146) b!4770260))

(assert (= (and b!4770260 res!2023144) b!4770254))

(assert (= (and b!4770254 res!2023145) b!4770256))

(assert (= (and b!4770256 c!813656) b!4770255))

(assert (= (and b!4770256 (not c!813656)) b!4770265))

(assert (= (and b!4770256 res!2023142) b!4770266))

(assert (= (and b!4770266 res!2023143) b!4770263))

(assert (= (and b!4770264 condMapEmpty!22006) mapIsEmpty!22006))

(assert (= (and b!4770264 (not condMapEmpty!22006)) mapNonEmpty!22006))

(assert (= b!4770259 b!4770264))

(assert (= b!4770261 b!4770259))

(assert (= b!4770258 b!4770261))

(assert (= (and b!4770257 ((_ is LongMap!4965) (v!47840 (underlying!10138 thiss!42052)))) b!4770258))

(assert (= b!4770262 b!4770257))

(assert (= (and start!488266 ((_ is HashMap!4849) thiss!42052)) b!4770262))

(declare-fun m!5741858 () Bool)

(assert (=> b!4770255 m!5741858))

(declare-fun m!5741860 () Bool)

(assert (=> b!4770255 m!5741860))

(assert (=> b!4770255 m!5741860))

(declare-fun m!5741862 () Bool)

(assert (=> b!4770255 m!5741862))

(declare-fun m!5741864 () Bool)

(assert (=> b!4770255 m!5741864))

(declare-fun m!5741866 () Bool)

(assert (=> b!4770266 m!5741866))

(declare-fun m!5741868 () Bool)

(assert (=> b!4770259 m!5741868))

(declare-fun m!5741870 () Bool)

(assert (=> b!4770259 m!5741870))

(declare-fun m!5741872 () Bool)

(assert (=> mapNonEmpty!22006 m!5741872))

(declare-fun m!5741874 () Bool)

(assert (=> b!4770260 m!5741874))

(declare-fun m!5741876 () Bool)

(assert (=> b!4770256 m!5741876))

(declare-fun m!5741878 () Bool)

(assert (=> b!4770256 m!5741878))

(declare-fun m!5741880 () Bool)

(assert (=> b!4770256 m!5741880))

(declare-fun m!5741882 () Bool)

(assert (=> b!4770256 m!5741882))

(declare-fun m!5741884 () Bool)

(assert (=> b!4770256 m!5741884))

(declare-fun m!5741886 () Bool)

(assert (=> b!4770256 m!5741886))

(declare-fun m!5741888 () Bool)

(assert (=> b!4770256 m!5741888))

(declare-fun m!5741890 () Bool)

(assert (=> b!4770263 m!5741890))

(assert (=> b!4770263 m!5741890))

(declare-fun m!5741892 () Bool)

(assert (=> b!4770263 m!5741892))

(declare-fun m!5741894 () Bool)

(assert (=> b!4770254 m!5741894))

(check-sat (not b!4770259) (not b!4770263) (not b!4770260) (not b!4770255) tp_is_empty!32543 b_and!341547 (not b!4770266) (not b_next!130593) (not b!4770256) (not mapNonEmpty!22006) (not b!4770264) b_and!341545 (not b!4770254) (not b_next!130595))
(check-sat b_and!341547 b_and!341545 (not b_next!130595) (not b_next!130593))
(get-model)

(declare-fun b!4770285 () Bool)

(declare-fun e!2977841 () Bool)

(declare-datatypes ((List!53684 0))(
  ( (Nil!53560) (Cons!53560 (h!59972 K!15054) (t!361130 List!53684)) )
))
(declare-fun contains!16931 (List!53684 K!15054) Bool)

(declare-fun keys!19428 (ListMap!5821) List!53684)

(assert (=> b!4770285 (= e!2977841 (not (contains!16931 (keys!19428 (extractMap!2162 (toList!6340 lt!1932761))) key!1776)))))

(declare-fun b!4770286 () Bool)

(declare-fun e!2977839 () Unit!138420)

(declare-fun e!2977837 () Unit!138420)

(assert (=> b!4770286 (= e!2977839 e!2977837)))

(declare-fun c!813663 () Bool)

(declare-fun call!334419 () Bool)

(assert (=> b!4770286 (= c!813663 call!334419)))

(declare-fun b!4770287 () Bool)

(declare-fun lt!1932794 () Unit!138420)

(assert (=> b!4770287 (= e!2977839 lt!1932794)))

(declare-fun lt!1932792 () Unit!138420)

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!2014 (List!53682 K!15054) Unit!138420)

(assert (=> b!4770287 (= lt!1932792 (lemmaContainsKeyImpliesGetValueByKeyDefined!2014 (toList!6341 (extractMap!2162 (toList!6340 lt!1932761))) key!1776))))

(declare-datatypes ((Option!12733 0))(
  ( (None!12732) (Some!12732 (v!47845 V!15300)) )
))
(declare-fun isDefined!9878 (Option!12733) Bool)

(declare-fun getValueByKey!2218 (List!53682 K!15054) Option!12733)

(assert (=> b!4770287 (isDefined!9878 (getValueByKey!2218 (toList!6341 (extractMap!2162 (toList!6340 lt!1932761))) key!1776))))

(declare-fun lt!1932789 () Unit!138420)

(assert (=> b!4770287 (= lt!1932789 lt!1932792)))

(declare-fun lemmaInListThenGetKeysListContains!1003 (List!53682 K!15054) Unit!138420)

(assert (=> b!4770287 (= lt!1932794 (lemmaInListThenGetKeysListContains!1003 (toList!6341 (extractMap!2162 (toList!6340 lt!1932761))) key!1776))))

(assert (=> b!4770287 call!334419))

(declare-fun b!4770288 () Bool)

(declare-fun e!2977840 () Bool)

(declare-fun e!2977838 () Bool)

(assert (=> b!4770288 (= e!2977840 e!2977838)))

(declare-fun res!2023153 () Bool)

(assert (=> b!4770288 (=> (not res!2023153) (not e!2977838))))

(assert (=> b!4770288 (= res!2023153 (isDefined!9878 (getValueByKey!2218 (toList!6341 (extractMap!2162 (toList!6340 lt!1932761))) key!1776)))))

(declare-fun b!4770289 () Bool)

(assert (=> b!4770289 (= e!2977838 (contains!16931 (keys!19428 (extractMap!2162 (toList!6340 lt!1932761))) key!1776))))

(declare-fun b!4770290 () Bool)

(declare-fun e!2977836 () List!53684)

(assert (=> b!4770290 (= e!2977836 (keys!19428 (extractMap!2162 (toList!6340 lt!1932761))))))

(declare-fun bm!334414 () Bool)

(assert (=> bm!334414 (= call!334419 (contains!16931 e!2977836 key!1776))))

(declare-fun c!813664 () Bool)

(declare-fun c!813665 () Bool)

(assert (=> bm!334414 (= c!813664 c!813665)))

(declare-fun d!1524598 () Bool)

(assert (=> d!1524598 e!2977840))

(declare-fun res!2023155 () Bool)

(assert (=> d!1524598 (=> res!2023155 e!2977840)))

(assert (=> d!1524598 (= res!2023155 e!2977841)))

(declare-fun res!2023154 () Bool)

(assert (=> d!1524598 (=> (not res!2023154) (not e!2977841))))

(declare-fun lt!1932791 () Bool)

(assert (=> d!1524598 (= res!2023154 (not lt!1932791))))

(declare-fun lt!1932793 () Bool)

(assert (=> d!1524598 (= lt!1932791 lt!1932793)))

(declare-fun lt!1932787 () Unit!138420)

(assert (=> d!1524598 (= lt!1932787 e!2977839)))

(assert (=> d!1524598 (= c!813665 lt!1932793)))

(declare-fun containsKey!3683 (List!53682 K!15054) Bool)

(assert (=> d!1524598 (= lt!1932793 (containsKey!3683 (toList!6341 (extractMap!2162 (toList!6340 lt!1932761))) key!1776))))

(assert (=> d!1524598 (= (contains!16930 (extractMap!2162 (toList!6340 lt!1932761)) key!1776) lt!1932791)))

(declare-fun b!4770291 () Bool)

(assert (=> b!4770291 false))

(declare-fun lt!1932788 () Unit!138420)

(declare-fun lt!1932790 () Unit!138420)

(assert (=> b!4770291 (= lt!1932788 lt!1932790)))

(assert (=> b!4770291 (containsKey!3683 (toList!6341 (extractMap!2162 (toList!6340 lt!1932761))) key!1776)))

(declare-fun lemmaInGetKeysListThenContainsKey!1007 (List!53682 K!15054) Unit!138420)

(assert (=> b!4770291 (= lt!1932790 (lemmaInGetKeysListThenContainsKey!1007 (toList!6341 (extractMap!2162 (toList!6340 lt!1932761))) key!1776))))

(declare-fun Unit!138424 () Unit!138420)

(assert (=> b!4770291 (= e!2977837 Unit!138424)))

(declare-fun b!4770292 () Bool)

(declare-fun Unit!138425 () Unit!138420)

(assert (=> b!4770292 (= e!2977837 Unit!138425)))

(declare-fun b!4770293 () Bool)

(declare-fun getKeysList!1008 (List!53682) List!53684)

(assert (=> b!4770293 (= e!2977836 (getKeysList!1008 (toList!6341 (extractMap!2162 (toList!6340 lt!1932761)))))))

(assert (= (and d!1524598 c!813665) b!4770287))

(assert (= (and d!1524598 (not c!813665)) b!4770286))

(assert (= (and b!4770286 c!813663) b!4770291))

(assert (= (and b!4770286 (not c!813663)) b!4770292))

(assert (= (or b!4770287 b!4770286) bm!334414))

(assert (= (and bm!334414 c!813664) b!4770293))

(assert (= (and bm!334414 (not c!813664)) b!4770290))

(assert (= (and d!1524598 res!2023154) b!4770285))

(assert (= (and d!1524598 (not res!2023155)) b!4770288))

(assert (= (and b!4770288 res!2023153) b!4770289))

(declare-fun m!5741896 () Bool)

(assert (=> b!4770288 m!5741896))

(assert (=> b!4770288 m!5741896))

(declare-fun m!5741898 () Bool)

(assert (=> b!4770288 m!5741898))

(declare-fun m!5741900 () Bool)

(assert (=> b!4770287 m!5741900))

(assert (=> b!4770287 m!5741896))

(assert (=> b!4770287 m!5741896))

(assert (=> b!4770287 m!5741898))

(declare-fun m!5741902 () Bool)

(assert (=> b!4770287 m!5741902))

(assert (=> b!4770285 m!5741890))

(declare-fun m!5741904 () Bool)

(assert (=> b!4770285 m!5741904))

(assert (=> b!4770285 m!5741904))

(declare-fun m!5741906 () Bool)

(assert (=> b!4770285 m!5741906))

(declare-fun m!5741908 () Bool)

(assert (=> b!4770293 m!5741908))

(assert (=> b!4770289 m!5741890))

(assert (=> b!4770289 m!5741904))

(assert (=> b!4770289 m!5741904))

(assert (=> b!4770289 m!5741906))

(declare-fun m!5741910 () Bool)

(assert (=> bm!334414 m!5741910))

(declare-fun m!5741912 () Bool)

(assert (=> d!1524598 m!5741912))

(assert (=> b!4770291 m!5741912))

(declare-fun m!5741914 () Bool)

(assert (=> b!4770291 m!5741914))

(assert (=> b!4770290 m!5741890))

(assert (=> b!4770290 m!5741904))

(assert (=> b!4770263 d!1524598))

(declare-fun bs!1149416 () Bool)

(declare-fun d!1524600 () Bool)

(assert (= bs!1149416 (and d!1524600 b!4770256)))

(declare-fun lambda!224841 () Int)

(assert (=> bs!1149416 (= lambda!224841 lambda!224838)))

(declare-fun lt!1932797 () ListMap!5821)

(declare-fun invariantList!1666 (List!53682) Bool)

(assert (=> d!1524600 (invariantList!1666 (toList!6341 lt!1932797))))

(declare-fun e!2977844 () ListMap!5821)

(assert (=> d!1524600 (= lt!1932797 e!2977844)))

(declare-fun c!813668 () Bool)

(assert (=> d!1524600 (= c!813668 ((_ is Cons!53559) (toList!6340 lt!1932761)))))

(assert (=> d!1524600 (forall!11889 (toList!6340 lt!1932761) lambda!224841)))

(assert (=> d!1524600 (= (extractMap!2162 (toList!6340 lt!1932761)) lt!1932797)))

(declare-fun b!4770298 () Bool)

(declare-fun addToMapMapFromBucket!1631 (List!53682 ListMap!5821) ListMap!5821)

(assert (=> b!4770298 (= e!2977844 (addToMapMapFromBucket!1631 (_2!31131 (h!59971 (toList!6340 lt!1932761))) (extractMap!2162 (t!361127 (toList!6340 lt!1932761)))))))

(declare-fun b!4770299 () Bool)

(assert (=> b!4770299 (= e!2977844 (ListMap!5822 Nil!53558))))

(assert (= (and d!1524600 c!813668) b!4770298))

(assert (= (and d!1524600 (not c!813668)) b!4770299))

(declare-fun m!5741916 () Bool)

(assert (=> d!1524600 m!5741916))

(declare-fun m!5741918 () Bool)

(assert (=> d!1524600 m!5741918))

(declare-fun m!5741920 () Bool)

(assert (=> b!4770298 m!5741920))

(assert (=> b!4770298 m!5741920))

(declare-fun m!5741922 () Bool)

(assert (=> b!4770298 m!5741922))

(assert (=> b!4770263 d!1524600))

(declare-fun d!1524602 () Bool)

(declare-fun lt!1932800 () Bool)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!9598 (List!53683) (InoxSet tuple2!55674))

(assert (=> d!1524602 (= lt!1932800 (select (content!9598 (toList!6340 lt!1932761)) lt!1932769))))

(declare-fun e!2977849 () Bool)

(assert (=> d!1524602 (= lt!1932800 e!2977849)))

(declare-fun res!2023160 () Bool)

(assert (=> d!1524602 (=> (not res!2023160) (not e!2977849))))

(assert (=> d!1524602 (= res!2023160 ((_ is Cons!53559) (toList!6340 lt!1932761)))))

(assert (=> d!1524602 (= (contains!16929 (toList!6340 lt!1932761) lt!1932769) lt!1932800)))

(declare-fun b!4770304 () Bool)

(declare-fun e!2977850 () Bool)

(assert (=> b!4770304 (= e!2977849 e!2977850)))

(declare-fun res!2023161 () Bool)

(assert (=> b!4770304 (=> res!2023161 e!2977850)))

(assert (=> b!4770304 (= res!2023161 (= (h!59971 (toList!6340 lt!1932761)) lt!1932769))))

(declare-fun b!4770305 () Bool)

(assert (=> b!4770305 (= e!2977850 (contains!16929 (t!361127 (toList!6340 lt!1932761)) lt!1932769))))

(assert (= (and d!1524602 res!2023160) b!4770304))

(assert (= (and b!4770304 (not res!2023161)) b!4770305))

(declare-fun m!5741924 () Bool)

(assert (=> d!1524602 m!5741924))

(declare-fun m!5741926 () Bool)

(assert (=> d!1524602 m!5741926))

(declare-fun m!5741928 () Bool)

(assert (=> b!4770305 m!5741928))

(assert (=> b!4770256 d!1524602))

(declare-fun d!1524604 () Bool)

(declare-fun e!2977853 () Bool)

(assert (=> d!1524604 e!2977853))

(declare-fun c!813671 () Bool)

(declare-fun contains!16932 (MutLongMap!4965 (_ BitVec 64)) Bool)

(assert (=> d!1524604 (= c!813671 (contains!16932 (v!47840 (underlying!10138 thiss!42052)) lt!1932768))))

(declare-fun lt!1932803 () List!53682)

(declare-fun apply!12674 (LongMapFixedSize!9930 (_ BitVec 64)) List!53682)

(assert (=> d!1524604 (= lt!1932803 (apply!12674 (v!47839 (underlying!10137 (v!47840 (underlying!10138 thiss!42052)))) lt!1932768))))

(declare-fun valid!3972 (MutLongMap!4965) Bool)

(assert (=> d!1524604 (valid!3972 (v!47840 (underlying!10138 thiss!42052)))))

(assert (=> d!1524604 (= (apply!12673 (v!47840 (underlying!10138 thiss!42052)) lt!1932768) lt!1932803)))

(declare-fun b!4770310 () Bool)

(declare-fun get!18090 (Option!12731) List!53682)

(assert (=> b!4770310 (= e!2977853 (= lt!1932803 (get!18090 (getValueByKey!2217 (toList!6340 (map!12053 (v!47840 (underlying!10138 thiss!42052)))) lt!1932768))))))

(declare-fun b!4770311 () Bool)

(declare-fun dynLambda!21968 (Int (_ BitVec 64)) List!53682)

(assert (=> b!4770311 (= e!2977853 (= lt!1932803 (dynLambda!21968 (defaultEntry!5383 (v!47839 (underlying!10137 (v!47840 (underlying!10138 thiss!42052))))) lt!1932768)))))

(assert (=> b!4770311 ((_ is LongMap!4965) (v!47840 (underlying!10138 thiss!42052)))))

(assert (= (and d!1524604 c!813671) b!4770310))

(assert (= (and d!1524604 (not c!813671)) b!4770311))

(declare-fun b_lambda!184567 () Bool)

(assert (=> (not b_lambda!184567) (not b!4770311)))

(declare-fun t!361129 () Bool)

(declare-fun tb!257497 () Bool)

(assert (=> (and b!4770259 (= (defaultEntry!5383 (v!47839 (underlying!10137 (v!47840 (underlying!10138 thiss!42052))))) (defaultEntry!5383 (v!47839 (underlying!10137 (v!47840 (underlying!10138 thiss!42052)))))) t!361129) tb!257497))

(assert (=> b!4770311 t!361129))

(declare-fun result!319172 () Bool)

(declare-fun b_and!341549 () Bool)

(assert (= b_and!341545 (and (=> t!361129 result!319172) b_and!341549)))

(declare-fun m!5741930 () Bool)

(assert (=> d!1524604 m!5741930))

(declare-fun m!5741932 () Bool)

(assert (=> d!1524604 m!5741932))

(declare-fun m!5741934 () Bool)

(assert (=> d!1524604 m!5741934))

(assert (=> b!4770310 m!5741884))

(declare-fun m!5741936 () Bool)

(assert (=> b!4770310 m!5741936))

(assert (=> b!4770310 m!5741936))

(declare-fun m!5741938 () Bool)

(assert (=> b!4770310 m!5741938))

(declare-fun m!5741940 () Bool)

(assert (=> b!4770311 m!5741940))

(assert (=> b!4770256 d!1524604))

(declare-fun d!1524606 () Bool)

(declare-fun map!12054 (LongMapFixedSize!9930) ListLongMap!4753)

(assert (=> d!1524606 (= (map!12053 (v!47840 (underlying!10138 thiss!42052))) (map!12054 (v!47839 (underlying!10137 (v!47840 (underlying!10138 thiss!42052))))))))

(declare-fun bs!1149417 () Bool)

(assert (= bs!1149417 d!1524606))

(declare-fun m!5741942 () Bool)

(assert (=> bs!1149417 m!5741942))

(assert (=> b!4770256 d!1524606))

(declare-fun d!1524608 () Bool)

(declare-fun dynLambda!21969 (Int tuple2!55674) Bool)

(assert (=> d!1524608 (dynLambda!21969 lambda!224838 lt!1932769)))

(declare-fun lt!1932806 () Unit!138420)

(declare-fun choose!34021 (List!53683 Int tuple2!55674) Unit!138420)

(assert (=> d!1524608 (= lt!1932806 (choose!34021 (toList!6340 lt!1932761) lambda!224838 lt!1932769))))

(declare-fun e!2977856 () Bool)

(assert (=> d!1524608 e!2977856))

(declare-fun res!2023164 () Bool)

(assert (=> d!1524608 (=> (not res!2023164) (not e!2977856))))

(assert (=> d!1524608 (= res!2023164 (forall!11889 (toList!6340 lt!1932761) lambda!224838))))

(assert (=> d!1524608 (= (forallContained!3881 (toList!6340 lt!1932761) lambda!224838 lt!1932769) lt!1932806)))

(declare-fun b!4770314 () Bool)

(assert (=> b!4770314 (= e!2977856 (contains!16929 (toList!6340 lt!1932761) lt!1932769))))

(assert (= (and d!1524608 res!2023164) b!4770314))

(declare-fun b_lambda!184569 () Bool)

(assert (=> (not b_lambda!184569) (not d!1524608)))

(declare-fun m!5741944 () Bool)

(assert (=> d!1524608 m!5741944))

(declare-fun m!5741946 () Bool)

(assert (=> d!1524608 m!5741946))

(assert (=> d!1524608 m!5741876))

(assert (=> b!4770314 m!5741886))

(assert (=> b!4770256 d!1524608))

(declare-fun d!1524610 () Bool)

(declare-fun hash!4604 (Hashable!6626 K!15054) (_ BitVec 64))

(assert (=> d!1524610 (= (hash!4603 (hashF!12518 thiss!42052) key!1776) (hash!4604 (hashF!12518 thiss!42052) key!1776))))

(declare-fun bs!1149418 () Bool)

(assert (= bs!1149418 d!1524610))

(declare-fun m!5741948 () Bool)

(assert (=> bs!1149418 m!5741948))

(assert (=> b!4770256 d!1524610))

(declare-fun b!4770331 () Bool)

(declare-fun e!2977867 () Bool)

(declare-fun containsKey!3684 (List!53682 K!15054) Bool)

(assert (=> b!4770331 (= e!2977867 (not (containsKey!3684 lt!1932765 key!1776)))))

(declare-fun b!4770332 () Bool)

(declare-fun e!2977869 () Option!12732)

(assert (=> b!4770332 (= e!2977869 (getPair!662 (t!361126 lt!1932765) key!1776))))

(declare-fun b!4770333 () Bool)

(assert (=> b!4770333 (= e!2977869 None!12731)))

(declare-fun b!4770334 () Bool)

(declare-fun e!2977871 () Bool)

(declare-fun lt!1932809 () Option!12732)

(declare-fun contains!16933 (List!53682 tuple2!55672) Bool)

(declare-fun get!18091 (Option!12732) tuple2!55672)

(assert (=> b!4770334 (= e!2977871 (contains!16933 lt!1932765 (get!18091 lt!1932809)))))

(declare-fun b!4770335 () Bool)

(declare-fun res!2023174 () Bool)

(assert (=> b!4770335 (=> (not res!2023174) (not e!2977871))))

(assert (=> b!4770335 (= res!2023174 (= (_1!31130 (get!18091 lt!1932809)) key!1776))))

(declare-fun b!4770336 () Bool)

(declare-fun e!2977868 () Bool)

(assert (=> b!4770336 (= e!2977868 e!2977871)))

(declare-fun res!2023176 () Bool)

(assert (=> b!4770336 (=> (not res!2023176) (not e!2977871))))

(declare-fun isDefined!9879 (Option!12732) Bool)

(assert (=> b!4770336 (= res!2023176 (isDefined!9879 lt!1932809))))

(declare-fun b!4770337 () Bool)

(declare-fun e!2977870 () Option!12732)

(assert (=> b!4770337 (= e!2977870 (Some!12731 (h!59970 lt!1932765)))))

(declare-fun d!1524612 () Bool)

(assert (=> d!1524612 e!2977868))

(declare-fun res!2023173 () Bool)

(assert (=> d!1524612 (=> res!2023173 e!2977868)))

(assert (=> d!1524612 (= res!2023173 e!2977867)))

(declare-fun res!2023175 () Bool)

(assert (=> d!1524612 (=> (not res!2023175) (not e!2977867))))

(declare-fun isEmpty!29297 (Option!12732) Bool)

(assert (=> d!1524612 (= res!2023175 (isEmpty!29297 lt!1932809))))

(assert (=> d!1524612 (= lt!1932809 e!2977870)))

(declare-fun c!813677 () Bool)

(assert (=> d!1524612 (= c!813677 (and ((_ is Cons!53558) lt!1932765) (= (_1!31130 (h!59970 lt!1932765)) key!1776)))))

(declare-fun noDuplicateKeys!2262 (List!53682) Bool)

(assert (=> d!1524612 (noDuplicateKeys!2262 lt!1932765)))

(assert (=> d!1524612 (= (getPair!662 lt!1932765 key!1776) lt!1932809)))

(declare-fun b!4770338 () Bool)

(assert (=> b!4770338 (= e!2977870 e!2977869)))

(declare-fun c!813676 () Bool)

(assert (=> b!4770338 (= c!813676 ((_ is Cons!53558) lt!1932765))))

(assert (= (and d!1524612 c!813677) b!4770337))

(assert (= (and d!1524612 (not c!813677)) b!4770338))

(assert (= (and b!4770338 c!813676) b!4770332))

(assert (= (and b!4770338 (not c!813676)) b!4770333))

(assert (= (and d!1524612 res!2023175) b!4770331))

(assert (= (and d!1524612 (not res!2023173)) b!4770336))

(assert (= (and b!4770336 res!2023176) b!4770335))

(assert (= (and b!4770335 res!2023174) b!4770334))

(declare-fun m!5741950 () Bool)

(assert (=> d!1524612 m!5741950))

(declare-fun m!5741952 () Bool)

(assert (=> d!1524612 m!5741952))

(declare-fun m!5741954 () Bool)

(assert (=> b!4770334 m!5741954))

(assert (=> b!4770334 m!5741954))

(declare-fun m!5741956 () Bool)

(assert (=> b!4770334 m!5741956))

(declare-fun m!5741958 () Bool)

(assert (=> b!4770336 m!5741958))

(declare-fun m!5741960 () Bool)

(assert (=> b!4770332 m!5741960))

(declare-fun m!5741962 () Bool)

(assert (=> b!4770331 m!5741962))

(assert (=> b!4770335 m!5741954))

(assert (=> b!4770256 d!1524612))

(declare-fun d!1524614 () Bool)

(declare-fun res!2023181 () Bool)

(declare-fun e!2977876 () Bool)

(assert (=> d!1524614 (=> res!2023181 e!2977876)))

(assert (=> d!1524614 (= res!2023181 ((_ is Nil!53559) (toList!6340 lt!1932761)))))

(assert (=> d!1524614 (= (forall!11889 (toList!6340 lt!1932761) lambda!224838) e!2977876)))

(declare-fun b!4770343 () Bool)

(declare-fun e!2977877 () Bool)

(assert (=> b!4770343 (= e!2977876 e!2977877)))

(declare-fun res!2023182 () Bool)

(assert (=> b!4770343 (=> (not res!2023182) (not e!2977877))))

(assert (=> b!4770343 (= res!2023182 (dynLambda!21969 lambda!224838 (h!59971 (toList!6340 lt!1932761))))))

(declare-fun b!4770344 () Bool)

(assert (=> b!4770344 (= e!2977877 (forall!11889 (t!361127 (toList!6340 lt!1932761)) lambda!224838))))

(assert (= (and d!1524614 (not res!2023181)) b!4770343))

(assert (= (and b!4770343 res!2023182) b!4770344))

(declare-fun b_lambda!184571 () Bool)

(assert (=> (not b_lambda!184571) (not b!4770343)))

(declare-fun m!5741964 () Bool)

(assert (=> b!4770343 m!5741964))

(declare-fun m!5741966 () Bool)

(assert (=> b!4770344 m!5741966))

(assert (=> b!4770256 d!1524614))

(declare-fun d!1524616 () Bool)

(assert (=> d!1524616 (isDefined!9877 (getValueByKey!2217 (toList!6340 lt!1932761) lt!1932768))))

(declare-fun lt!1932812 () Unit!138420)

(declare-fun choose!34022 (List!53683 (_ BitVec 64)) Unit!138420)

(assert (=> d!1524616 (= lt!1932812 (choose!34022 (toList!6340 lt!1932761) lt!1932768))))

(declare-fun e!2977880 () Bool)

(assert (=> d!1524616 e!2977880))

(declare-fun res!2023185 () Bool)

(assert (=> d!1524616 (=> (not res!2023185) (not e!2977880))))

(declare-fun isStrictlySorted!818 (List!53683) Bool)

(assert (=> d!1524616 (= res!2023185 (isStrictlySorted!818 (toList!6340 lt!1932761)))))

(assert (=> d!1524616 (= (lemmaContainsKeyImpliesGetValueByKeyDefined!2013 (toList!6340 lt!1932761) lt!1932768) lt!1932812)))

(declare-fun b!4770347 () Bool)

(declare-fun containsKey!3685 (List!53683 (_ BitVec 64)) Bool)

(assert (=> b!4770347 (= e!2977880 (containsKey!3685 (toList!6340 lt!1932761) lt!1932768))))

(assert (= (and d!1524616 res!2023185) b!4770347))

(assert (=> d!1524616 m!5741860))

(assert (=> d!1524616 m!5741860))

(assert (=> d!1524616 m!5741862))

(declare-fun m!5741968 () Bool)

(assert (=> d!1524616 m!5741968))

(declare-fun m!5741970 () Bool)

(assert (=> d!1524616 m!5741970))

(declare-fun m!5741972 () Bool)

(assert (=> b!4770347 m!5741972))

(assert (=> b!4770255 d!1524616))

(declare-fun d!1524618 () Bool)

(declare-fun isEmpty!29298 (Option!12731) Bool)

(assert (=> d!1524618 (= (isDefined!9877 (getValueByKey!2217 (toList!6340 lt!1932761) lt!1932768)) (not (isEmpty!29298 (getValueByKey!2217 (toList!6340 lt!1932761) lt!1932768))))))

(declare-fun bs!1149419 () Bool)

(assert (= bs!1149419 d!1524618))

(assert (=> bs!1149419 m!5741860))

(declare-fun m!5741974 () Bool)

(assert (=> bs!1149419 m!5741974))

(assert (=> b!4770255 d!1524618))

(declare-fun b!4770359 () Bool)

(declare-fun e!2977886 () Option!12731)

(assert (=> b!4770359 (= e!2977886 None!12730)))

(declare-fun b!4770358 () Bool)

(assert (=> b!4770358 (= e!2977886 (getValueByKey!2217 (t!361127 (toList!6340 lt!1932761)) lt!1932768))))

(declare-fun b!4770356 () Bool)

(declare-fun e!2977885 () Option!12731)

(assert (=> b!4770356 (= e!2977885 (Some!12730 (_2!31131 (h!59971 (toList!6340 lt!1932761)))))))

(declare-fun b!4770357 () Bool)

(assert (=> b!4770357 (= e!2977885 e!2977886)))

(declare-fun c!813683 () Bool)

(assert (=> b!4770357 (= c!813683 (and ((_ is Cons!53559) (toList!6340 lt!1932761)) (not (= (_1!31131 (h!59971 (toList!6340 lt!1932761))) lt!1932768))))))

(declare-fun d!1524620 () Bool)

(declare-fun c!813682 () Bool)

(assert (=> d!1524620 (= c!813682 (and ((_ is Cons!53559) (toList!6340 lt!1932761)) (= (_1!31131 (h!59971 (toList!6340 lt!1932761))) lt!1932768)))))

(assert (=> d!1524620 (= (getValueByKey!2217 (toList!6340 lt!1932761) lt!1932768) e!2977885)))

(assert (= (and d!1524620 c!813682) b!4770356))

(assert (= (and d!1524620 (not c!813682)) b!4770357))

(assert (= (and b!4770357 c!813683) b!4770358))

(assert (= (and b!4770357 (not c!813683)) b!4770359))

(declare-fun m!5741976 () Bool)

(assert (=> b!4770358 m!5741976))

(assert (=> b!4770255 d!1524620))

(declare-fun d!1524622 () Bool)

(assert (=> d!1524622 (contains!16929 (toList!6340 lt!1932761) (tuple2!55675 lt!1932768 lt!1932765))))

(declare-fun lt!1932815 () Unit!138420)

(declare-fun choose!34023 (List!53683 (_ BitVec 64) List!53682) Unit!138420)

(assert (=> d!1524622 (= lt!1932815 (choose!34023 (toList!6340 lt!1932761) lt!1932768 lt!1932765))))

(declare-fun e!2977889 () Bool)

(assert (=> d!1524622 e!2977889))

(declare-fun res!2023188 () Bool)

(assert (=> d!1524622 (=> (not res!2023188) (not e!2977889))))

(assert (=> d!1524622 (= res!2023188 (isStrictlySorted!818 (toList!6340 lt!1932761)))))

(assert (=> d!1524622 (= (lemmaGetValueByKeyImpliesContainsTuple!952 (toList!6340 lt!1932761) lt!1932768 lt!1932765) lt!1932815)))

(declare-fun b!4770362 () Bool)

(assert (=> b!4770362 (= e!2977889 (= (getValueByKey!2217 (toList!6340 lt!1932761) lt!1932768) (Some!12730 lt!1932765)))))

(assert (= (and d!1524622 res!2023188) b!4770362))

(declare-fun m!5741978 () Bool)

(assert (=> d!1524622 m!5741978))

(declare-fun m!5741980 () Bool)

(assert (=> d!1524622 m!5741980))

(assert (=> d!1524622 m!5741970))

(assert (=> b!4770362 m!5741860))

(assert (=> b!4770255 d!1524622))

(declare-fun bs!1149420 () Bool)

(declare-fun b!4770367 () Bool)

(assert (= bs!1149420 (and b!4770367 b!4770256)))

(declare-fun lambda!224844 () Int)

(assert (=> bs!1149420 (= lambda!224844 lambda!224838)))

(declare-fun bs!1149421 () Bool)

(assert (= bs!1149421 (and b!4770367 d!1524600)))

(assert (=> bs!1149421 (= lambda!224844 lambda!224841)))

(declare-fun d!1524624 () Bool)

(declare-fun res!2023193 () Bool)

(declare-fun e!2977892 () Bool)

(assert (=> d!1524624 (=> (not res!2023193) (not e!2977892))))

(assert (=> d!1524624 (= res!2023193 (valid!3972 (v!47840 (underlying!10138 thiss!42052))))))

(assert (=> d!1524624 (= (valid!3971 thiss!42052) e!2977892)))

(declare-fun res!2023194 () Bool)

(assert (=> b!4770367 (=> (not res!2023194) (not e!2977892))))

(assert (=> b!4770367 (= res!2023194 (forall!11889 (toList!6340 (map!12053 (v!47840 (underlying!10138 thiss!42052)))) lambda!224844))))

(declare-fun b!4770368 () Bool)

(assert (=> b!4770368 (= e!2977892 (allKeysSameHashInMap!2032 (map!12053 (v!47840 (underlying!10138 thiss!42052))) (hashF!12518 thiss!42052)))))

(assert (= (and d!1524624 res!2023193) b!4770367))

(assert (= (and b!4770367 res!2023194) b!4770368))

(assert (=> d!1524624 m!5741934))

(assert (=> b!4770367 m!5741884))

(declare-fun m!5741982 () Bool)

(assert (=> b!4770367 m!5741982))

(assert (=> b!4770368 m!5741884))

(assert (=> b!4770368 m!5741884))

(declare-fun m!5741984 () Bool)

(assert (=> b!4770368 m!5741984))

(assert (=> b!4770260 d!1524624))

(declare-fun bs!1149422 () Bool)

(declare-fun d!1524626 () Bool)

(assert (= bs!1149422 (and d!1524626 b!4770256)))

(declare-fun lambda!224847 () Int)

(assert (=> bs!1149422 (not (= lambda!224847 lambda!224838))))

(declare-fun bs!1149423 () Bool)

(assert (= bs!1149423 (and d!1524626 d!1524600)))

(assert (=> bs!1149423 (not (= lambda!224847 lambda!224841))))

(declare-fun bs!1149424 () Bool)

(assert (= bs!1149424 (and d!1524626 b!4770367)))

(assert (=> bs!1149424 (not (= lambda!224847 lambda!224844))))

(assert (=> d!1524626 true))

(assert (=> d!1524626 (= (allKeysSameHashInMap!2032 lt!1932761 (hashF!12518 thiss!42052)) (forall!11889 (toList!6340 lt!1932761) lambda!224847))))

(declare-fun bs!1149425 () Bool)

(assert (= bs!1149425 d!1524626))

(declare-fun m!5741986 () Bool)

(assert (=> bs!1149425 m!5741986))

(assert (=> b!4770266 d!1524626))

(declare-fun d!1524628 () Bool)

(assert (=> d!1524628 (= (array_inv!5847 (_keys!5307 (v!47839 (underlying!10137 (v!47840 (underlying!10138 thiss!42052)))))) (bvsge (size!36345 (_keys!5307 (v!47839 (underlying!10137 (v!47840 (underlying!10138 thiss!42052)))))) #b00000000000000000000000000000000))))

(assert (=> b!4770259 d!1524628))

(declare-fun d!1524630 () Bool)

(assert (=> d!1524630 (= (array_inv!5848 (_values!5278 (v!47839 (underlying!10137 (v!47840 (underlying!10138 thiss!42052)))))) (bvsge (size!36346 (_values!5278 (v!47839 (underlying!10137 (v!47840 (underlying!10138 thiss!42052)))))) #b00000000000000000000000000000000))))

(assert (=> b!4770259 d!1524630))

(declare-fun bs!1149426 () Bool)

(declare-fun b!4770395 () Bool)

(assert (= bs!1149426 (and b!4770395 b!4770256)))

(declare-fun lambda!224850 () Int)

(assert (=> bs!1149426 (= lambda!224850 lambda!224838)))

(declare-fun bs!1149427 () Bool)

(assert (= bs!1149427 (and b!4770395 d!1524600)))

(assert (=> bs!1149427 (= lambda!224850 lambda!224841)))

(declare-fun bs!1149428 () Bool)

(assert (= bs!1149428 (and b!4770395 b!4770367)))

(assert (=> bs!1149428 (= lambda!224850 lambda!224844)))

(declare-fun bs!1149429 () Bool)

(assert (= bs!1149429 (and b!4770395 d!1524626)))

(assert (=> bs!1149429 (not (= lambda!224850 lambda!224847))))

(declare-fun bm!334427 () Bool)

(declare-fun call!334434 () ListLongMap!4753)

(assert (=> bm!334427 (= call!334434 (map!12053 (v!47840 (underlying!10138 thiss!42052))))))

(declare-fun b!4770393 () Bool)

(declare-fun e!2977911 () Unit!138420)

(declare-fun e!2977907 () Unit!138420)

(assert (=> b!4770393 (= e!2977911 e!2977907)))

(declare-fun res!2023201 () Bool)

(declare-fun call!334436 () Bool)

(assert (=> b!4770393 (= res!2023201 call!334436)))

(declare-fun e!2977913 () Bool)

(assert (=> b!4770393 (=> (not res!2023201) (not e!2977913))))

(declare-fun c!813695 () Bool)

(assert (=> b!4770393 (= c!813695 e!2977913)))

(declare-fun b!4770394 () Bool)

(declare-fun e!2977908 () Bool)

(declare-fun call!334437 () Bool)

(assert (=> b!4770394 (= e!2977908 call!334437)))

(declare-fun d!1524632 () Bool)

(declare-fun lt!1932875 () Bool)

(declare-fun map!12055 (MutableMap!4849) ListMap!5821)

(assert (=> d!1524632 (= lt!1932875 (contains!16930 (map!12055 thiss!42052) key!1776))))

(declare-fun e!2977910 () Bool)

(assert (=> d!1524632 (= lt!1932875 e!2977910)))

(declare-fun res!2023203 () Bool)

(assert (=> d!1524632 (=> (not res!2023203) (not e!2977910))))

(declare-fun lt!1932867 () (_ BitVec 64))

(assert (=> d!1524632 (= res!2023203 (contains!16932 (v!47840 (underlying!10138 thiss!42052)) lt!1932867))))

(declare-fun lt!1932857 () Unit!138420)

(assert (=> d!1524632 (= lt!1932857 e!2977911)))

(declare-fun c!813694 () Bool)

(assert (=> d!1524632 (= c!813694 (contains!16930 (extractMap!2162 (toList!6340 (map!12053 (v!47840 (underlying!10138 thiss!42052))))) key!1776))))

(declare-fun lt!1932869 () Unit!138420)

(declare-fun e!2977912 () Unit!138420)

(assert (=> d!1524632 (= lt!1932869 e!2977912)))

(declare-fun c!813692 () Bool)

(assert (=> d!1524632 (= c!813692 (contains!16932 (v!47840 (underlying!10138 thiss!42052)) lt!1932867))))

(assert (=> d!1524632 (= lt!1932867 (hash!4603 (hashF!12518 thiss!42052) key!1776))))

(assert (=> d!1524632 (valid!3971 thiss!42052)))

(assert (=> d!1524632 (= (contains!16928 thiss!42052 key!1776) lt!1932875)))

(assert (=> b!4770395 (= e!2977912 (forallContained!3881 (toList!6340 (map!12053 (v!47840 (underlying!10138 thiss!42052)))) lambda!224850 (tuple2!55675 lt!1932867 (apply!12673 (v!47840 (underlying!10138 thiss!42052)) lt!1932867))))))

(declare-fun c!813693 () Bool)

(assert (=> b!4770395 (= c!813693 (not (contains!16929 (toList!6340 (map!12053 (v!47840 (underlying!10138 thiss!42052)))) (tuple2!55675 lt!1932867 (apply!12673 (v!47840 (underlying!10138 thiss!42052)) lt!1932867)))))))

(declare-fun lt!1932873 () Unit!138420)

(declare-fun e!2977909 () Unit!138420)

(assert (=> b!4770395 (= lt!1932873 e!2977909)))

(declare-fun b!4770396 () Bool)

(declare-fun Unit!138426 () Unit!138420)

(assert (=> b!4770396 (= e!2977912 Unit!138426)))

(declare-fun b!4770397 () Bool)

(declare-fun Unit!138427 () Unit!138420)

(assert (=> b!4770397 (= e!2977909 Unit!138427)))

(declare-fun lt!1932859 () ListLongMap!4753)

(declare-fun call!334433 () (_ BitVec 64))

(declare-fun bm!334428 () Bool)

(declare-fun call!334432 () List!53682)

(declare-fun apply!12675 (ListLongMap!4753 (_ BitVec 64)) List!53682)

(assert (=> bm!334428 (= call!334432 (apply!12675 (ite c!813694 lt!1932859 call!334434) call!334433))))

(declare-fun b!4770398 () Bool)

(assert (=> b!4770398 false))

(declare-fun lt!1932872 () Unit!138420)

(declare-fun lt!1932871 () Unit!138420)

(assert (=> b!4770398 (= lt!1932872 lt!1932871)))

(declare-fun lt!1932862 () List!53683)

(declare-fun lt!1932861 () List!53682)

(assert (=> b!4770398 (contains!16929 lt!1932862 (tuple2!55675 lt!1932867 lt!1932861))))

(assert (=> b!4770398 (= lt!1932871 (lemmaGetValueByKeyImpliesContainsTuple!952 lt!1932862 lt!1932867 lt!1932861))))

(assert (=> b!4770398 (= lt!1932861 (apply!12673 (v!47840 (underlying!10138 thiss!42052)) lt!1932867))))

(assert (=> b!4770398 (= lt!1932862 (toList!6340 (map!12053 (v!47840 (underlying!10138 thiss!42052)))))))

(declare-fun lt!1932870 () Unit!138420)

(declare-fun lt!1932858 () Unit!138420)

(assert (=> b!4770398 (= lt!1932870 lt!1932858)))

(declare-fun lt!1932864 () List!53683)

(assert (=> b!4770398 (isDefined!9877 (getValueByKey!2217 lt!1932864 lt!1932867))))

(assert (=> b!4770398 (= lt!1932858 (lemmaContainsKeyImpliesGetValueByKeyDefined!2013 lt!1932864 lt!1932867))))

(assert (=> b!4770398 (= lt!1932864 (toList!6340 (map!12053 (v!47840 (underlying!10138 thiss!42052)))))))

(declare-fun lt!1932863 () Unit!138420)

(declare-fun lt!1932865 () Unit!138420)

(assert (=> b!4770398 (= lt!1932863 lt!1932865)))

(declare-fun lt!1932866 () List!53683)

(assert (=> b!4770398 (containsKey!3685 lt!1932866 lt!1932867)))

(declare-fun lemmaGetValueByKeyIsDefinedImpliesContainsKey!212 (List!53683 (_ BitVec 64)) Unit!138420)

(assert (=> b!4770398 (= lt!1932865 (lemmaGetValueByKeyIsDefinedImpliesContainsKey!212 lt!1932866 lt!1932867))))

(assert (=> b!4770398 (= lt!1932866 (toList!6340 (map!12053 (v!47840 (underlying!10138 thiss!42052)))))))

(declare-fun Unit!138428 () Unit!138420)

(assert (=> b!4770398 (= e!2977909 Unit!138428)))

(declare-fun bm!334429 () Bool)

(declare-fun call!334435 () Option!12732)

(assert (=> bm!334429 (= call!334437 (isDefined!9879 call!334435))))

(declare-fun b!4770399 () Bool)

(assert (=> b!4770399 (= e!2977913 call!334437)))

(declare-fun bm!334430 () Bool)

(assert (=> bm!334430 (= call!334433 (hash!4603 (hashF!12518 thiss!42052) key!1776))))

(declare-fun b!4770400 () Bool)

(assert (=> b!4770400 (= e!2977910 (isDefined!9879 (getPair!662 (apply!12673 (v!47840 (underlying!10138 thiss!42052)) lt!1932867) key!1776)))))

(declare-fun b!4770401 () Bool)

(declare-fun Unit!138429 () Unit!138420)

(assert (=> b!4770401 (= e!2977907 Unit!138429)))

(declare-fun bm!334431 () Bool)

(declare-fun contains!16934 (ListLongMap!4753 (_ BitVec 64)) Bool)

(assert (=> bm!334431 (= call!334436 (contains!16934 (ite c!813694 lt!1932859 call!334434) call!334433))))

(declare-fun b!4770402 () Bool)

(declare-fun lt!1932856 () Unit!138420)

(assert (=> b!4770402 (= e!2977911 lt!1932856)))

(assert (=> b!4770402 (= lt!1932859 call!334434)))

(declare-fun lemmaInGenericMapThenInLongMap!211 (ListLongMap!4753 K!15054 Hashable!6626) Unit!138420)

(assert (=> b!4770402 (= lt!1932856 (lemmaInGenericMapThenInLongMap!211 lt!1932859 key!1776 (hashF!12518 thiss!42052)))))

(declare-fun res!2023202 () Bool)

(assert (=> b!4770402 (= res!2023202 call!334436)))

(assert (=> b!4770402 (=> (not res!2023202) (not e!2977908))))

(assert (=> b!4770402 e!2977908))

(declare-fun bm!334432 () Bool)

(assert (=> bm!334432 (= call!334435 (getPair!662 call!334432 key!1776))))

(declare-fun b!4770403 () Bool)

(assert (=> b!4770403 false))

(declare-fun lt!1932868 () Unit!138420)

(declare-fun lt!1932874 () Unit!138420)

(assert (=> b!4770403 (= lt!1932868 lt!1932874)))

(declare-fun lt!1932860 () ListLongMap!4753)

(assert (=> b!4770403 (contains!16930 (extractMap!2162 (toList!6340 lt!1932860)) key!1776)))

(declare-fun lemmaInLongMapThenInGenericMap!211 (ListLongMap!4753 K!15054 Hashable!6626) Unit!138420)

(assert (=> b!4770403 (= lt!1932874 (lemmaInLongMapThenInGenericMap!211 lt!1932860 key!1776 (hashF!12518 thiss!42052)))))

(assert (=> b!4770403 (= lt!1932860 call!334434)))

(declare-fun Unit!138430 () Unit!138420)

(assert (=> b!4770403 (= e!2977907 Unit!138430)))

(assert (= (and d!1524632 c!813692) b!4770395))

(assert (= (and d!1524632 (not c!813692)) b!4770396))

(assert (= (and b!4770395 c!813693) b!4770398))

(assert (= (and b!4770395 (not c!813693)) b!4770397))

(assert (= (and d!1524632 c!813694) b!4770402))

(assert (= (and d!1524632 (not c!813694)) b!4770393))

(assert (= (and b!4770402 res!2023202) b!4770394))

(assert (= (and b!4770393 res!2023201) b!4770399))

(assert (= (and b!4770393 c!813695) b!4770403))

(assert (= (and b!4770393 (not c!813695)) b!4770401))

(assert (= (or b!4770402 b!4770393 b!4770399 b!4770403) bm!334427))

(assert (= (or b!4770402 b!4770394 b!4770393 b!4770399) bm!334430))

(assert (= (or b!4770402 b!4770393) bm!334431))

(assert (= (or b!4770394 b!4770399) bm!334428))

(assert (= (or b!4770394 b!4770399) bm!334432))

(assert (= (or b!4770394 b!4770399) bm!334429))

(assert (= (and d!1524632 res!2023203) b!4770400))

(declare-fun m!5741988 () Bool)

(assert (=> b!4770398 m!5741988))

(declare-fun m!5741990 () Bool)

(assert (=> b!4770398 m!5741990))

(assert (=> b!4770398 m!5741990))

(declare-fun m!5741992 () Bool)

(assert (=> b!4770398 m!5741992))

(declare-fun m!5741994 () Bool)

(assert (=> b!4770398 m!5741994))

(assert (=> b!4770398 m!5741884))

(declare-fun m!5741996 () Bool)

(assert (=> b!4770398 m!5741996))

(declare-fun m!5741998 () Bool)

(assert (=> b!4770398 m!5741998))

(declare-fun m!5742000 () Bool)

(assert (=> b!4770398 m!5742000))

(declare-fun m!5742002 () Bool)

(assert (=> b!4770398 m!5742002))

(assert (=> bm!334430 m!5741878))

(declare-fun m!5742004 () Bool)

(assert (=> bm!334431 m!5742004))

(assert (=> b!4770400 m!5742002))

(assert (=> b!4770400 m!5742002))

(declare-fun m!5742006 () Bool)

(assert (=> b!4770400 m!5742006))

(assert (=> b!4770400 m!5742006))

(declare-fun m!5742008 () Bool)

(assert (=> b!4770400 m!5742008))

(assert (=> bm!334427 m!5741884))

(declare-fun m!5742010 () Bool)

(assert (=> d!1524632 m!5742010))

(declare-fun m!5742012 () Bool)

(assert (=> d!1524632 m!5742012))

(declare-fun m!5742014 () Bool)

(assert (=> d!1524632 m!5742014))

(assert (=> d!1524632 m!5741884))

(declare-fun m!5742016 () Bool)

(assert (=> d!1524632 m!5742016))

(declare-fun m!5742018 () Bool)

(assert (=> d!1524632 m!5742018))

(assert (=> d!1524632 m!5741874))

(assert (=> d!1524632 m!5741878))

(assert (=> d!1524632 m!5742016))

(assert (=> d!1524632 m!5742010))

(assert (=> b!4770395 m!5741884))

(assert (=> b!4770395 m!5742002))

(declare-fun m!5742020 () Bool)

(assert (=> b!4770395 m!5742020))

(declare-fun m!5742022 () Bool)

(assert (=> b!4770395 m!5742022))

(declare-fun m!5742024 () Bool)

(assert (=> bm!334429 m!5742024))

(declare-fun m!5742026 () Bool)

(assert (=> b!4770403 m!5742026))

(assert (=> b!4770403 m!5742026))

(declare-fun m!5742028 () Bool)

(assert (=> b!4770403 m!5742028))

(declare-fun m!5742030 () Bool)

(assert (=> b!4770403 m!5742030))

(declare-fun m!5742032 () Bool)

(assert (=> b!4770402 m!5742032))

(declare-fun m!5742034 () Bool)

(assert (=> bm!334432 m!5742034))

(declare-fun m!5742036 () Bool)

(assert (=> bm!334428 m!5742036))

(assert (=> b!4770254 d!1524632))

(declare-fun mapNonEmpty!22009 () Bool)

(declare-fun mapRes!22009 () Bool)

(declare-fun tp!1356489 () Bool)

(declare-fun e!2977919 () Bool)

(assert (=> mapNonEmpty!22009 (= mapRes!22009 (and tp!1356489 e!2977919))))

(declare-fun mapRest!22009 () (Array (_ BitVec 32) List!53682))

(declare-fun mapValue!22009 () List!53682)

(declare-fun mapKey!22009 () (_ BitVec 32))

(assert (=> mapNonEmpty!22009 (= mapRest!22006 (store mapRest!22009 mapKey!22009 mapValue!22009))))

(declare-fun mapIsEmpty!22009 () Bool)

(assert (=> mapIsEmpty!22009 mapRes!22009))

(declare-fun tp!1356490 () Bool)

(declare-fun b!4770410 () Bool)

(declare-fun tp_is_empty!32545 () Bool)

(assert (=> b!4770410 (= e!2977919 (and tp_is_empty!32543 tp_is_empty!32545 tp!1356490))))

(declare-fun e!2977918 () Bool)

(declare-fun tp!1356491 () Bool)

(declare-fun b!4770411 () Bool)

(assert (=> b!4770411 (= e!2977918 (and tp_is_empty!32543 tp_is_empty!32545 tp!1356491))))

(declare-fun condMapEmpty!22009 () Bool)

(declare-fun mapDefault!22009 () List!53682)

(assert (=> mapNonEmpty!22006 (= condMapEmpty!22009 (= mapRest!22006 ((as const (Array (_ BitVec 32) List!53682)) mapDefault!22009)))))

(assert (=> mapNonEmpty!22006 (= tp!1356476 (and e!2977918 mapRes!22009))))

(assert (= (and mapNonEmpty!22006 condMapEmpty!22009) mapIsEmpty!22009))

(assert (= (and mapNonEmpty!22006 (not condMapEmpty!22009)) mapNonEmpty!22009))

(assert (= (and mapNonEmpty!22009 ((_ is Cons!53558) mapValue!22009)) b!4770410))

(assert (= (and mapNonEmpty!22006 ((_ is Cons!53558) mapDefault!22009)) b!4770411))

(declare-fun m!5742038 () Bool)

(assert (=> mapNonEmpty!22009 m!5742038))

(declare-fun e!2977922 () Bool)

(declare-fun tp!1356494 () Bool)

(declare-fun b!4770416 () Bool)

(assert (=> b!4770416 (= e!2977922 (and tp_is_empty!32543 tp_is_empty!32545 tp!1356494))))

(assert (=> mapNonEmpty!22006 (= tp!1356478 e!2977922)))

(assert (= (and mapNonEmpty!22006 ((_ is Cons!53558) mapValue!22006)) b!4770416))

(declare-fun b!4770417 () Bool)

(declare-fun e!2977923 () Bool)

(declare-fun tp!1356495 () Bool)

(assert (=> b!4770417 (= e!2977923 (and tp_is_empty!32543 tp_is_empty!32545 tp!1356495))))

(assert (=> b!4770259 (= tp!1356480 e!2977923)))

(assert (= (and b!4770259 ((_ is Cons!53558) (zeroValue!5253 (v!47839 (underlying!10137 (v!47840 (underlying!10138 thiss!42052))))))) b!4770417))

(declare-fun e!2977924 () Bool)

(declare-fun b!4770418 () Bool)

(declare-fun tp!1356496 () Bool)

(assert (=> b!4770418 (= e!2977924 (and tp_is_empty!32543 tp_is_empty!32545 tp!1356496))))

(assert (=> b!4770259 (= tp!1356479 e!2977924)))

(assert (= (and b!4770259 ((_ is Cons!53558) (minValue!5253 (v!47839 (underlying!10137 (v!47840 (underlying!10138 thiss!42052))))))) b!4770418))

(declare-fun e!2977925 () Bool)

(declare-fun tp!1356497 () Bool)

(declare-fun b!4770419 () Bool)

(assert (=> b!4770419 (= e!2977925 (and tp_is_empty!32543 tp_is_empty!32545 tp!1356497))))

(assert (=> b!4770264 (= tp!1356477 e!2977925)))

(assert (= (and b!4770264 ((_ is Cons!53558) mapDefault!22006)) b!4770419))

(declare-fun b_lambda!184573 () Bool)

(assert (= b_lambda!184571 (or b!4770256 b_lambda!184573)))

(declare-fun bs!1149430 () Bool)

(declare-fun d!1524634 () Bool)

(assert (= bs!1149430 (and d!1524634 b!4770256)))

(assert (=> bs!1149430 (= (dynLambda!21969 lambda!224838 (h!59971 (toList!6340 lt!1932761))) (noDuplicateKeys!2262 (_2!31131 (h!59971 (toList!6340 lt!1932761)))))))

(declare-fun m!5742040 () Bool)

(assert (=> bs!1149430 m!5742040))

(assert (=> b!4770343 d!1524634))

(declare-fun b_lambda!184575 () Bool)

(assert (= b_lambda!184569 (or b!4770256 b_lambda!184575)))

(declare-fun bs!1149431 () Bool)

(declare-fun d!1524636 () Bool)

(assert (= bs!1149431 (and d!1524636 b!4770256)))

(assert (=> bs!1149431 (= (dynLambda!21969 lambda!224838 lt!1932769) (noDuplicateKeys!2262 (_2!31131 lt!1932769)))))

(declare-fun m!5742042 () Bool)

(assert (=> bs!1149431 m!5742042))

(assert (=> d!1524608 d!1524636))

(declare-fun b_lambda!184577 () Bool)

(assert (= b_lambda!184567 (or (and b!4770259 b_free!129803) b_lambda!184577)))

(check-sat (not b!4770291) (not mapNonEmpty!22009) tp_is_empty!32545 (not tb!257497) (not b!4770298) (not b!4770290) (not bs!1149430) (not b!4770293) (not d!1524600) (not b!4770368) (not bm!334430) (not d!1524618) (not d!1524604) (not bm!334427) (not d!1524626) (not bs!1149431) (not d!1524610) (not d!1524632) (not b!4770417) (not b!4770344) (not b!4770403) (not d!1524608) (not b!4770347) (not b!4770335) (not b!4770336) (not b!4770287) (not b!4770334) (not bm!334432) (not d!1524602) tp_is_empty!32543 (not b!4770288) (not bm!334414) (not b!4770419) (not b!4770400) (not b!4770367) (not b!4770362) b_and!341547 b_and!341549 (not b!4770418) (not b!4770332) (not b!4770314) (not d!1524606) (not b!4770395) (not b!4770411) (not b!4770305) (not b!4770310) (not b!4770358) (not bm!334428) (not b_lambda!184577) (not bm!334429) (not d!1524612) (not b_next!130593) (not b!4770398) (not d!1524598) (not d!1524616) (not d!1524622) (not b_lambda!184573) (not b!4770416) (not b!4770402) (not b!4770285) (not bm!334431) (not b!4770410) (not b!4770289) (not b_next!130595) (not b_lambda!184575) (not b!4770331) (not d!1524624))
(check-sat b_and!341547 b_and!341549 (not b_next!130595) (not b_next!130593))
(get-model)

(declare-fun d!1524638 () Bool)

(declare-fun res!2023204 () Bool)

(declare-fun e!2977926 () Bool)

(assert (=> d!1524638 (=> res!2023204 e!2977926)))

(assert (=> d!1524638 (= res!2023204 ((_ is Nil!53559) (toList!6340 (map!12053 (v!47840 (underlying!10138 thiss!42052))))))))

(assert (=> d!1524638 (= (forall!11889 (toList!6340 (map!12053 (v!47840 (underlying!10138 thiss!42052)))) lambda!224844) e!2977926)))

(declare-fun b!4770420 () Bool)

(declare-fun e!2977927 () Bool)

(assert (=> b!4770420 (= e!2977926 e!2977927)))

(declare-fun res!2023205 () Bool)

(assert (=> b!4770420 (=> (not res!2023205) (not e!2977927))))

(assert (=> b!4770420 (= res!2023205 (dynLambda!21969 lambda!224844 (h!59971 (toList!6340 (map!12053 (v!47840 (underlying!10138 thiss!42052)))))))))

(declare-fun b!4770421 () Bool)

(assert (=> b!4770421 (= e!2977927 (forall!11889 (t!361127 (toList!6340 (map!12053 (v!47840 (underlying!10138 thiss!42052))))) lambda!224844))))

(assert (= (and d!1524638 (not res!2023204)) b!4770420))

(assert (= (and b!4770420 res!2023205) b!4770421))

(declare-fun b_lambda!184579 () Bool)

(assert (=> (not b_lambda!184579) (not b!4770420)))

(declare-fun m!5742044 () Bool)

(assert (=> b!4770420 m!5742044))

(declare-fun m!5742046 () Bool)

(assert (=> b!4770421 m!5742046))

(assert (=> b!4770367 d!1524638))

(assert (=> b!4770367 d!1524606))

(declare-fun d!1524640 () Bool)

(declare-fun valid!3973 (LongMapFixedSize!9930) Bool)

(assert (=> d!1524640 (= (valid!3972 (v!47840 (underlying!10138 thiss!42052))) (valid!3973 (v!47839 (underlying!10137 (v!47840 (underlying!10138 thiss!42052))))))))

(declare-fun bs!1149432 () Bool)

(assert (= bs!1149432 d!1524640))

(declare-fun m!5742048 () Bool)

(assert (=> bs!1149432 m!5742048))

(assert (=> d!1524624 d!1524640))

(declare-fun d!1524642 () Bool)

(assert (=> d!1524642 (dynLambda!21969 lambda!224850 (tuple2!55675 lt!1932867 (apply!12673 (v!47840 (underlying!10138 thiss!42052)) lt!1932867)))))

(declare-fun lt!1932876 () Unit!138420)

(assert (=> d!1524642 (= lt!1932876 (choose!34021 (toList!6340 (map!12053 (v!47840 (underlying!10138 thiss!42052)))) lambda!224850 (tuple2!55675 lt!1932867 (apply!12673 (v!47840 (underlying!10138 thiss!42052)) lt!1932867))))))

(declare-fun e!2977928 () Bool)

(assert (=> d!1524642 e!2977928))

(declare-fun res!2023206 () Bool)

(assert (=> d!1524642 (=> (not res!2023206) (not e!2977928))))

(assert (=> d!1524642 (= res!2023206 (forall!11889 (toList!6340 (map!12053 (v!47840 (underlying!10138 thiss!42052)))) lambda!224850))))

(assert (=> d!1524642 (= (forallContained!3881 (toList!6340 (map!12053 (v!47840 (underlying!10138 thiss!42052)))) lambda!224850 (tuple2!55675 lt!1932867 (apply!12673 (v!47840 (underlying!10138 thiss!42052)) lt!1932867))) lt!1932876)))

(declare-fun b!4770422 () Bool)

(assert (=> b!4770422 (= e!2977928 (contains!16929 (toList!6340 (map!12053 (v!47840 (underlying!10138 thiss!42052)))) (tuple2!55675 lt!1932867 (apply!12673 (v!47840 (underlying!10138 thiss!42052)) lt!1932867))))))

(assert (= (and d!1524642 res!2023206) b!4770422))

(declare-fun b_lambda!184581 () Bool)

(assert (=> (not b_lambda!184581) (not d!1524642)))

(declare-fun m!5742050 () Bool)

(assert (=> d!1524642 m!5742050))

(declare-fun m!5742052 () Bool)

(assert (=> d!1524642 m!5742052))

(declare-fun m!5742054 () Bool)

(assert (=> d!1524642 m!5742054))

(assert (=> b!4770422 m!5742022))

(assert (=> b!4770395 d!1524642))

(assert (=> b!4770395 d!1524606))

(declare-fun d!1524644 () Bool)

(declare-fun e!2977929 () Bool)

(assert (=> d!1524644 e!2977929))

(declare-fun c!813696 () Bool)

(assert (=> d!1524644 (= c!813696 (contains!16932 (v!47840 (underlying!10138 thiss!42052)) lt!1932867))))

(declare-fun lt!1932877 () List!53682)

(assert (=> d!1524644 (= lt!1932877 (apply!12674 (v!47839 (underlying!10137 (v!47840 (underlying!10138 thiss!42052)))) lt!1932867))))

(assert (=> d!1524644 (valid!3972 (v!47840 (underlying!10138 thiss!42052)))))

(assert (=> d!1524644 (= (apply!12673 (v!47840 (underlying!10138 thiss!42052)) lt!1932867) lt!1932877)))

(declare-fun b!4770423 () Bool)

(assert (=> b!4770423 (= e!2977929 (= lt!1932877 (get!18090 (getValueByKey!2217 (toList!6340 (map!12053 (v!47840 (underlying!10138 thiss!42052)))) lt!1932867))))))

(declare-fun b!4770424 () Bool)

(assert (=> b!4770424 (= e!2977929 (= lt!1932877 (dynLambda!21968 (defaultEntry!5383 (v!47839 (underlying!10137 (v!47840 (underlying!10138 thiss!42052))))) lt!1932867)))))

(assert (=> b!4770424 ((_ is LongMap!4965) (v!47840 (underlying!10138 thiss!42052)))))

(assert (= (and d!1524644 c!813696) b!4770423))

(assert (= (and d!1524644 (not c!813696)) b!4770424))

(declare-fun b_lambda!184583 () Bool)

(assert (=> (not b_lambda!184583) (not b!4770424)))

(declare-fun t!361132 () Bool)

(declare-fun tb!257499 () Bool)

(assert (=> (and b!4770259 (= (defaultEntry!5383 (v!47839 (underlying!10137 (v!47840 (underlying!10138 thiss!42052))))) (defaultEntry!5383 (v!47839 (underlying!10137 (v!47840 (underlying!10138 thiss!42052)))))) t!361132) tb!257499))

(assert (=> b!4770424 t!361132))

(declare-fun result!319178 () Bool)

(declare-fun b_and!341551 () Bool)

(assert (= b_and!341549 (and (=> t!361132 result!319178) b_and!341551)))

(assert (=> d!1524644 m!5742014))

(declare-fun m!5742056 () Bool)

(assert (=> d!1524644 m!5742056))

(assert (=> d!1524644 m!5741934))

(assert (=> b!4770423 m!5741884))

(declare-fun m!5742058 () Bool)

(assert (=> b!4770423 m!5742058))

(assert (=> b!4770423 m!5742058))

(declare-fun m!5742060 () Bool)

(assert (=> b!4770423 m!5742060))

(declare-fun m!5742062 () Bool)

(assert (=> b!4770424 m!5742062))

(assert (=> b!4770395 d!1524644))

(declare-fun d!1524646 () Bool)

(declare-fun lt!1932878 () Bool)

(assert (=> d!1524646 (= lt!1932878 (select (content!9598 (toList!6340 (map!12053 (v!47840 (underlying!10138 thiss!42052))))) (tuple2!55675 lt!1932867 (apply!12673 (v!47840 (underlying!10138 thiss!42052)) lt!1932867))))))

(declare-fun e!2977930 () Bool)

(assert (=> d!1524646 (= lt!1932878 e!2977930)))

(declare-fun res!2023207 () Bool)

(assert (=> d!1524646 (=> (not res!2023207) (not e!2977930))))

(assert (=> d!1524646 (= res!2023207 ((_ is Cons!53559) (toList!6340 (map!12053 (v!47840 (underlying!10138 thiss!42052))))))))

(assert (=> d!1524646 (= (contains!16929 (toList!6340 (map!12053 (v!47840 (underlying!10138 thiss!42052)))) (tuple2!55675 lt!1932867 (apply!12673 (v!47840 (underlying!10138 thiss!42052)) lt!1932867))) lt!1932878)))

(declare-fun b!4770425 () Bool)

(declare-fun e!2977931 () Bool)

(assert (=> b!4770425 (= e!2977930 e!2977931)))

(declare-fun res!2023208 () Bool)

(assert (=> b!4770425 (=> res!2023208 e!2977931)))

(assert (=> b!4770425 (= res!2023208 (= (h!59971 (toList!6340 (map!12053 (v!47840 (underlying!10138 thiss!42052))))) (tuple2!55675 lt!1932867 (apply!12673 (v!47840 (underlying!10138 thiss!42052)) lt!1932867))))))

(declare-fun b!4770426 () Bool)

(assert (=> b!4770426 (= e!2977931 (contains!16929 (t!361127 (toList!6340 (map!12053 (v!47840 (underlying!10138 thiss!42052))))) (tuple2!55675 lt!1932867 (apply!12673 (v!47840 (underlying!10138 thiss!42052)) lt!1932867))))))

(assert (= (and d!1524646 res!2023207) b!4770425))

(assert (= (and b!4770425 (not res!2023208)) b!4770426))

(declare-fun m!5742064 () Bool)

(assert (=> d!1524646 m!5742064))

(declare-fun m!5742066 () Bool)

(assert (=> d!1524646 m!5742066))

(declare-fun m!5742068 () Bool)

(assert (=> b!4770426 m!5742068))

(assert (=> b!4770395 d!1524646))

(declare-fun d!1524648 () Bool)

(declare-fun lt!1932879 () Bool)

(assert (=> d!1524648 (= lt!1932879 (select (content!9598 (toList!6340 lt!1932761)) (tuple2!55675 lt!1932768 lt!1932765)))))

(declare-fun e!2977932 () Bool)

(assert (=> d!1524648 (= lt!1932879 e!2977932)))

(declare-fun res!2023209 () Bool)

(assert (=> d!1524648 (=> (not res!2023209) (not e!2977932))))

(assert (=> d!1524648 (= res!2023209 ((_ is Cons!53559) (toList!6340 lt!1932761)))))

(assert (=> d!1524648 (= (contains!16929 (toList!6340 lt!1932761) (tuple2!55675 lt!1932768 lt!1932765)) lt!1932879)))

(declare-fun b!4770427 () Bool)

(declare-fun e!2977933 () Bool)

(assert (=> b!4770427 (= e!2977932 e!2977933)))

(declare-fun res!2023210 () Bool)

(assert (=> b!4770427 (=> res!2023210 e!2977933)))

(assert (=> b!4770427 (= res!2023210 (= (h!59971 (toList!6340 lt!1932761)) (tuple2!55675 lt!1932768 lt!1932765)))))

(declare-fun b!4770428 () Bool)

(assert (=> b!4770428 (= e!2977933 (contains!16929 (t!361127 (toList!6340 lt!1932761)) (tuple2!55675 lt!1932768 lt!1932765)))))

(assert (= (and d!1524648 res!2023209) b!4770427))

(assert (= (and b!4770427 (not res!2023210)) b!4770428))

(assert (=> d!1524648 m!5741924))

(declare-fun m!5742070 () Bool)

(assert (=> d!1524648 m!5742070))

(declare-fun m!5742072 () Bool)

(assert (=> b!4770428 m!5742072))

(assert (=> d!1524622 d!1524648))

(declare-fun d!1524650 () Bool)

(assert (=> d!1524650 (contains!16929 (toList!6340 lt!1932761) (tuple2!55675 lt!1932768 lt!1932765))))

(assert (=> d!1524650 true))

(declare-fun _$14!1562 () Unit!138420)

(assert (=> d!1524650 (= (choose!34023 (toList!6340 lt!1932761) lt!1932768 lt!1932765) _$14!1562)))

(declare-fun bs!1149433 () Bool)

(assert (= bs!1149433 d!1524650))

(assert (=> bs!1149433 m!5741978))

(assert (=> d!1524622 d!1524650))

(declare-fun d!1524652 () Bool)

(declare-fun res!2023215 () Bool)

(declare-fun e!2977938 () Bool)

(assert (=> d!1524652 (=> res!2023215 e!2977938)))

(assert (=> d!1524652 (= res!2023215 (or ((_ is Nil!53559) (toList!6340 lt!1932761)) ((_ is Nil!53559) (t!361127 (toList!6340 lt!1932761)))))))

(assert (=> d!1524652 (= (isStrictlySorted!818 (toList!6340 lt!1932761)) e!2977938)))

(declare-fun b!4770433 () Bool)

(declare-fun e!2977939 () Bool)

(assert (=> b!4770433 (= e!2977938 e!2977939)))

(declare-fun res!2023216 () Bool)

(assert (=> b!4770433 (=> (not res!2023216) (not e!2977939))))

(assert (=> b!4770433 (= res!2023216 (bvslt (_1!31131 (h!59971 (toList!6340 lt!1932761))) (_1!31131 (h!59971 (t!361127 (toList!6340 lt!1932761))))))))

(declare-fun b!4770434 () Bool)

(assert (=> b!4770434 (= e!2977939 (isStrictlySorted!818 (t!361127 (toList!6340 lt!1932761))))))

(assert (= (and d!1524652 (not res!2023215)) b!4770433))

(assert (= (and b!4770433 res!2023216) b!4770434))

(declare-fun m!5742074 () Bool)

(assert (=> b!4770434 m!5742074))

(assert (=> d!1524622 d!1524652))

(assert (=> b!4770314 d!1524602))

(declare-fun d!1524654 () Bool)

(assert (=> d!1524654 (= (isEmpty!29298 (getValueByKey!2217 (toList!6340 lt!1932761) lt!1932768)) (not ((_ is Some!12730) (getValueByKey!2217 (toList!6340 lt!1932761) lt!1932768))))))

(assert (=> d!1524618 d!1524654))

(declare-fun d!1524656 () Bool)

(assert (=> d!1524656 (= (isEmpty!29297 lt!1932809) (not ((_ is Some!12731) lt!1932809)))))

(assert (=> d!1524612 d!1524656))

(declare-fun d!1524658 () Bool)

(declare-fun res!2023221 () Bool)

(declare-fun e!2977944 () Bool)

(assert (=> d!1524658 (=> res!2023221 e!2977944)))

(assert (=> d!1524658 (= res!2023221 (not ((_ is Cons!53558) lt!1932765)))))

(assert (=> d!1524658 (= (noDuplicateKeys!2262 lt!1932765) e!2977944)))

(declare-fun b!4770439 () Bool)

(declare-fun e!2977945 () Bool)

(assert (=> b!4770439 (= e!2977944 e!2977945)))

(declare-fun res!2023222 () Bool)

(assert (=> b!4770439 (=> (not res!2023222) (not e!2977945))))

(assert (=> b!4770439 (= res!2023222 (not (containsKey!3684 (t!361126 lt!1932765) (_1!31130 (h!59970 lt!1932765)))))))

(declare-fun b!4770440 () Bool)

(assert (=> b!4770440 (= e!2977945 (noDuplicateKeys!2262 (t!361126 lt!1932765)))))

(assert (= (and d!1524658 (not res!2023221)) b!4770439))

(assert (= (and b!4770439 res!2023222) b!4770440))

(declare-fun m!5742076 () Bool)

(assert (=> b!4770439 m!5742076))

(declare-fun m!5742078 () Bool)

(assert (=> b!4770440 m!5742078))

(assert (=> d!1524612 d!1524658))

(declare-fun d!1524660 () Bool)

(declare-fun res!2023227 () Bool)

(declare-fun e!2977950 () Bool)

(assert (=> d!1524660 (=> res!2023227 e!2977950)))

(assert (=> d!1524660 (= res!2023227 (and ((_ is Cons!53559) (toList!6340 lt!1932761)) (= (_1!31131 (h!59971 (toList!6340 lt!1932761))) lt!1932768)))))

(assert (=> d!1524660 (= (containsKey!3685 (toList!6340 lt!1932761) lt!1932768) e!2977950)))

(declare-fun b!4770445 () Bool)

(declare-fun e!2977951 () Bool)

(assert (=> b!4770445 (= e!2977950 e!2977951)))

(declare-fun res!2023228 () Bool)

(assert (=> b!4770445 (=> (not res!2023228) (not e!2977951))))

(assert (=> b!4770445 (= res!2023228 (and (or (not ((_ is Cons!53559) (toList!6340 lt!1932761))) (bvsle (_1!31131 (h!59971 (toList!6340 lt!1932761))) lt!1932768)) ((_ is Cons!53559) (toList!6340 lt!1932761)) (bvslt (_1!31131 (h!59971 (toList!6340 lt!1932761))) lt!1932768)))))

(declare-fun b!4770446 () Bool)

(assert (=> b!4770446 (= e!2977951 (containsKey!3685 (t!361127 (toList!6340 lt!1932761)) lt!1932768))))

(assert (= (and d!1524660 (not res!2023227)) b!4770445))

(assert (= (and b!4770445 res!2023228) b!4770446))

(declare-fun m!5742080 () Bool)

(assert (=> b!4770446 m!5742080))

(assert (=> b!4770347 d!1524660))

(assert (=> b!4770362 d!1524620))

(declare-fun d!1524662 () Bool)

(declare-fun getCurrentListMap!31 (array!18196 array!18198 (_ BitVec 32) (_ BitVec 32) List!53682 List!53682 (_ BitVec 32) Int) ListLongMap!4753)

(assert (=> d!1524662 (= (map!12054 (v!47839 (underlying!10137 (v!47840 (underlying!10138 thiss!42052))))) (getCurrentListMap!31 (_keys!5307 (v!47839 (underlying!10137 (v!47840 (underlying!10138 thiss!42052))))) (_values!5278 (v!47839 (underlying!10137 (v!47840 (underlying!10138 thiss!42052))))) (mask!14743 (v!47839 (underlying!10137 (v!47840 (underlying!10138 thiss!42052))))) (extraKeys!5240 (v!47839 (underlying!10137 (v!47840 (underlying!10138 thiss!42052))))) (zeroValue!5253 (v!47839 (underlying!10137 (v!47840 (underlying!10138 thiss!42052))))) (minValue!5253 (v!47839 (underlying!10137 (v!47840 (underlying!10138 thiss!42052))))) #b00000000000000000000000000000000 (defaultEntry!5383 (v!47839 (underlying!10137 (v!47840 (underlying!10138 thiss!42052)))))))))

(declare-fun bs!1149434 () Bool)

(assert (= bs!1149434 d!1524662))

(declare-fun m!5742082 () Bool)

(assert (=> bs!1149434 m!5742082))

(assert (=> d!1524606 d!1524662))

(declare-fun b!4770447 () Bool)

(declare-fun e!2977952 () Bool)

(assert (=> b!4770447 (= e!2977952 (not (containsKey!3684 (t!361126 lt!1932765) key!1776)))))

(declare-fun b!4770448 () Bool)

(declare-fun e!2977954 () Option!12732)

(assert (=> b!4770448 (= e!2977954 (getPair!662 (t!361126 (t!361126 lt!1932765)) key!1776))))

(declare-fun b!4770449 () Bool)

(assert (=> b!4770449 (= e!2977954 None!12731)))

(declare-fun b!4770450 () Bool)

(declare-fun e!2977956 () Bool)

(declare-fun lt!1932880 () Option!12732)

(assert (=> b!4770450 (= e!2977956 (contains!16933 (t!361126 lt!1932765) (get!18091 lt!1932880)))))

(declare-fun b!4770451 () Bool)

(declare-fun res!2023230 () Bool)

(assert (=> b!4770451 (=> (not res!2023230) (not e!2977956))))

(assert (=> b!4770451 (= res!2023230 (= (_1!31130 (get!18091 lt!1932880)) key!1776))))

(declare-fun b!4770452 () Bool)

(declare-fun e!2977953 () Bool)

(assert (=> b!4770452 (= e!2977953 e!2977956)))

(declare-fun res!2023232 () Bool)

(assert (=> b!4770452 (=> (not res!2023232) (not e!2977956))))

(assert (=> b!4770452 (= res!2023232 (isDefined!9879 lt!1932880))))

(declare-fun b!4770453 () Bool)

(declare-fun e!2977955 () Option!12732)

(assert (=> b!4770453 (= e!2977955 (Some!12731 (h!59970 (t!361126 lt!1932765))))))

(declare-fun d!1524664 () Bool)

(assert (=> d!1524664 e!2977953))

(declare-fun res!2023229 () Bool)

(assert (=> d!1524664 (=> res!2023229 e!2977953)))

(assert (=> d!1524664 (= res!2023229 e!2977952)))

(declare-fun res!2023231 () Bool)

(assert (=> d!1524664 (=> (not res!2023231) (not e!2977952))))

(assert (=> d!1524664 (= res!2023231 (isEmpty!29297 lt!1932880))))

(assert (=> d!1524664 (= lt!1932880 e!2977955)))

(declare-fun c!813698 () Bool)

(assert (=> d!1524664 (= c!813698 (and ((_ is Cons!53558) (t!361126 lt!1932765)) (= (_1!31130 (h!59970 (t!361126 lt!1932765))) key!1776)))))

(assert (=> d!1524664 (noDuplicateKeys!2262 (t!361126 lt!1932765))))

(assert (=> d!1524664 (= (getPair!662 (t!361126 lt!1932765) key!1776) lt!1932880)))

(declare-fun b!4770454 () Bool)

(assert (=> b!4770454 (= e!2977955 e!2977954)))

(declare-fun c!813697 () Bool)

(assert (=> b!4770454 (= c!813697 ((_ is Cons!53558) (t!361126 lt!1932765)))))

(assert (= (and d!1524664 c!813698) b!4770453))

(assert (= (and d!1524664 (not c!813698)) b!4770454))

(assert (= (and b!4770454 c!813697) b!4770448))

(assert (= (and b!4770454 (not c!813697)) b!4770449))

(assert (= (and d!1524664 res!2023231) b!4770447))

(assert (= (and d!1524664 (not res!2023229)) b!4770452))

(assert (= (and b!4770452 res!2023232) b!4770451))

(assert (= (and b!4770451 res!2023230) b!4770450))

(declare-fun m!5742084 () Bool)

(assert (=> d!1524664 m!5742084))

(assert (=> d!1524664 m!5742078))

(declare-fun m!5742086 () Bool)

(assert (=> b!4770450 m!5742086))

(assert (=> b!4770450 m!5742086))

(declare-fun m!5742088 () Bool)

(assert (=> b!4770450 m!5742088))

(declare-fun m!5742090 () Bool)

(assert (=> b!4770452 m!5742090))

(declare-fun m!5742092 () Bool)

(assert (=> b!4770448 m!5742092))

(declare-fun m!5742094 () Bool)

(assert (=> b!4770447 m!5742094))

(assert (=> b!4770451 m!5742086))

(assert (=> b!4770332 d!1524664))

(declare-fun d!1524666 () Bool)

(declare-fun e!2977961 () Bool)

(assert (=> d!1524666 e!2977961))

(declare-fun res!2023235 () Bool)

(assert (=> d!1524666 (=> res!2023235 e!2977961)))

(declare-fun lt!1932891 () Bool)

(assert (=> d!1524666 (= res!2023235 (not lt!1932891))))

(declare-fun lt!1932889 () Bool)

(assert (=> d!1524666 (= lt!1932891 lt!1932889)))

(declare-fun lt!1932890 () Unit!138420)

(declare-fun e!2977962 () Unit!138420)

(assert (=> d!1524666 (= lt!1932890 e!2977962)))

(declare-fun c!813701 () Bool)

(assert (=> d!1524666 (= c!813701 lt!1932889)))

(assert (=> d!1524666 (= lt!1932889 (containsKey!3685 (toList!6340 (ite c!813694 lt!1932859 call!334434)) call!334433))))

(assert (=> d!1524666 (= (contains!16934 (ite c!813694 lt!1932859 call!334434) call!334433) lt!1932891)))

(declare-fun b!4770461 () Bool)

(declare-fun lt!1932892 () Unit!138420)

(assert (=> b!4770461 (= e!2977962 lt!1932892)))

(assert (=> b!4770461 (= lt!1932892 (lemmaContainsKeyImpliesGetValueByKeyDefined!2013 (toList!6340 (ite c!813694 lt!1932859 call!334434)) call!334433))))

(assert (=> b!4770461 (isDefined!9877 (getValueByKey!2217 (toList!6340 (ite c!813694 lt!1932859 call!334434)) call!334433))))

(declare-fun b!4770462 () Bool)

(declare-fun Unit!138431 () Unit!138420)

(assert (=> b!4770462 (= e!2977962 Unit!138431)))

(declare-fun b!4770463 () Bool)

(assert (=> b!4770463 (= e!2977961 (isDefined!9877 (getValueByKey!2217 (toList!6340 (ite c!813694 lt!1932859 call!334434)) call!334433)))))

(assert (= (and d!1524666 c!813701) b!4770461))

(assert (= (and d!1524666 (not c!813701)) b!4770462))

(assert (= (and d!1524666 (not res!2023235)) b!4770463))

(declare-fun m!5742096 () Bool)

(assert (=> d!1524666 m!5742096))

(declare-fun m!5742098 () Bool)

(assert (=> b!4770461 m!5742098))

(declare-fun m!5742100 () Bool)

(assert (=> b!4770461 m!5742100))

(assert (=> b!4770461 m!5742100))

(declare-fun m!5742102 () Bool)

(assert (=> b!4770461 m!5742102))

(assert (=> b!4770463 m!5742100))

(assert (=> b!4770463 m!5742100))

(assert (=> b!4770463 m!5742102))

(assert (=> bm!334431 d!1524666))

(declare-fun d!1524668 () Bool)

(declare-fun res!2023240 () Bool)

(declare-fun e!2977967 () Bool)

(assert (=> d!1524668 (=> res!2023240 e!2977967)))

(assert (=> d!1524668 (= res!2023240 (and ((_ is Cons!53558) (toList!6341 (extractMap!2162 (toList!6340 lt!1932761)))) (= (_1!31130 (h!59970 (toList!6341 (extractMap!2162 (toList!6340 lt!1932761))))) key!1776)))))

(assert (=> d!1524668 (= (containsKey!3683 (toList!6341 (extractMap!2162 (toList!6340 lt!1932761))) key!1776) e!2977967)))

(declare-fun b!4770468 () Bool)

(declare-fun e!2977968 () Bool)

(assert (=> b!4770468 (= e!2977967 e!2977968)))

(declare-fun res!2023241 () Bool)

(assert (=> b!4770468 (=> (not res!2023241) (not e!2977968))))

(assert (=> b!4770468 (= res!2023241 ((_ is Cons!53558) (toList!6341 (extractMap!2162 (toList!6340 lt!1932761)))))))

(declare-fun b!4770469 () Bool)

(assert (=> b!4770469 (= e!2977968 (containsKey!3683 (t!361126 (toList!6341 (extractMap!2162 (toList!6340 lt!1932761)))) key!1776))))

(assert (= (and d!1524668 (not res!2023240)) b!4770468))

(assert (= (and b!4770468 res!2023241) b!4770469))

(declare-fun m!5742104 () Bool)

(assert (=> b!4770469 m!5742104))

(assert (=> b!4770291 d!1524668))

(declare-fun d!1524670 () Bool)

(assert (=> d!1524670 (containsKey!3683 (toList!6341 (extractMap!2162 (toList!6340 lt!1932761))) key!1776)))

(declare-fun lt!1932895 () Unit!138420)

(declare-fun choose!34024 (List!53682 K!15054) Unit!138420)

(assert (=> d!1524670 (= lt!1932895 (choose!34024 (toList!6341 (extractMap!2162 (toList!6340 lt!1932761))) key!1776))))

(assert (=> d!1524670 (invariantList!1666 (toList!6341 (extractMap!2162 (toList!6340 lt!1932761))))))

(assert (=> d!1524670 (= (lemmaInGetKeysListThenContainsKey!1007 (toList!6341 (extractMap!2162 (toList!6340 lt!1932761))) key!1776) lt!1932895)))

(declare-fun bs!1149435 () Bool)

(assert (= bs!1149435 d!1524670))

(assert (=> bs!1149435 m!5741912))

(declare-fun m!5742106 () Bool)

(assert (=> bs!1149435 m!5742106))

(declare-fun m!5742108 () Bool)

(assert (=> bs!1149435 m!5742108))

(assert (=> b!4770291 d!1524670))

(declare-fun d!1524672 () Bool)

(declare-fun res!2023242 () Bool)

(declare-fun e!2977969 () Bool)

(assert (=> d!1524672 (=> res!2023242 e!2977969)))

(assert (=> d!1524672 (= res!2023242 ((_ is Nil!53559) (toList!6340 lt!1932761)))))

(assert (=> d!1524672 (= (forall!11889 (toList!6340 lt!1932761) lambda!224847) e!2977969)))

(declare-fun b!4770470 () Bool)

(declare-fun e!2977970 () Bool)

(assert (=> b!4770470 (= e!2977969 e!2977970)))

(declare-fun res!2023243 () Bool)

(assert (=> b!4770470 (=> (not res!2023243) (not e!2977970))))

(assert (=> b!4770470 (= res!2023243 (dynLambda!21969 lambda!224847 (h!59971 (toList!6340 lt!1932761))))))

(declare-fun b!4770471 () Bool)

(assert (=> b!4770471 (= e!2977970 (forall!11889 (t!361127 (toList!6340 lt!1932761)) lambda!224847))))

(assert (= (and d!1524672 (not res!2023242)) b!4770470))

(assert (= (and b!4770470 res!2023243) b!4770471))

(declare-fun b_lambda!184585 () Bool)

(assert (=> (not b_lambda!184585) (not b!4770470)))

(declare-fun m!5742110 () Bool)

(assert (=> b!4770470 m!5742110))

(declare-fun m!5742112 () Bool)

(assert (=> b!4770471 m!5742112))

(assert (=> d!1524626 d!1524672))

(declare-fun b!4770482 () Bool)

(assert (=> b!4770482 true))

(declare-fun bs!1149436 () Bool)

(declare-fun b!4770483 () Bool)

(assert (= bs!1149436 (and b!4770483 b!4770482)))

(declare-fun lambda!224880 () Int)

(declare-fun lambda!224879 () Int)

(assert (=> bs!1149436 (= lambda!224880 lambda!224879)))

(assert (=> b!4770483 true))

(declare-fun lambda!224881 () Int)

(declare-fun lt!1932949 () ListMap!5821)

(assert (=> bs!1149436 (= (= lt!1932949 (extractMap!2162 (t!361127 (toList!6340 lt!1932761)))) (= lambda!224881 lambda!224879))))

(assert (=> b!4770483 (= (= lt!1932949 (extractMap!2162 (t!361127 (toList!6340 lt!1932761)))) (= lambda!224881 lambda!224880))))

(assert (=> b!4770483 true))

(declare-fun bs!1149437 () Bool)

(declare-fun d!1524674 () Bool)

(assert (= bs!1149437 (and d!1524674 b!4770482)))

(declare-fun lambda!224882 () Int)

(declare-fun lt!1932958 () ListMap!5821)

(assert (=> bs!1149437 (= (= lt!1932958 (extractMap!2162 (t!361127 (toList!6340 lt!1932761)))) (= lambda!224882 lambda!224879))))

(declare-fun bs!1149438 () Bool)

(assert (= bs!1149438 (and d!1524674 b!4770483)))

(assert (=> bs!1149438 (= (= lt!1932958 (extractMap!2162 (t!361127 (toList!6340 lt!1932761)))) (= lambda!224882 lambda!224880))))

(assert (=> bs!1149438 (= (= lt!1932958 lt!1932949) (= lambda!224882 lambda!224881))))

(assert (=> d!1524674 true))

(declare-fun e!2977978 () ListMap!5821)

(assert (=> b!4770482 (= e!2977978 (extractMap!2162 (t!361127 (toList!6340 lt!1932761))))))

(declare-fun lt!1932942 () Unit!138420)

(declare-fun call!334444 () Unit!138420)

(assert (=> b!4770482 (= lt!1932942 call!334444)))

(declare-fun call!334446 () Bool)

(assert (=> b!4770482 call!334446))

(declare-fun lt!1932945 () Unit!138420)

(assert (=> b!4770482 (= lt!1932945 lt!1932942)))

(declare-fun call!334445 () Bool)

(assert (=> b!4770482 call!334445))

(declare-fun lt!1932956 () Unit!138420)

(declare-fun Unit!138432 () Unit!138420)

(assert (=> b!4770482 (= lt!1932956 Unit!138432)))

(declare-fun b!4770484 () Bool)

(declare-fun e!2977977 () Bool)

(declare-fun forall!11890 (List!53682 Int) Bool)

(assert (=> b!4770484 (= e!2977977 (forall!11890 (toList!6341 (extractMap!2162 (t!361127 (toList!6340 lt!1932761)))) lambda!224881))))

(declare-fun bm!334439 () Bool)

(declare-fun lemmaContainsAllItsOwnKeys!909 (ListMap!5821) Unit!138420)

(assert (=> bm!334439 (= call!334444 (lemmaContainsAllItsOwnKeys!909 (extractMap!2162 (t!361127 (toList!6340 lt!1932761)))))))

(declare-fun bm!334440 () Bool)

(declare-fun c!813704 () Bool)

(assert (=> bm!334440 (= call!334446 (forall!11890 (toList!6341 (extractMap!2162 (t!361127 (toList!6340 lt!1932761)))) (ite c!813704 lambda!224879 lambda!224881)))))

(declare-fun e!2977979 () Bool)

(assert (=> d!1524674 e!2977979))

(declare-fun res!2023252 () Bool)

(assert (=> d!1524674 (=> (not res!2023252) (not e!2977979))))

(assert (=> d!1524674 (= res!2023252 (forall!11890 (_2!31131 (h!59971 (toList!6340 lt!1932761))) lambda!224882))))

(assert (=> d!1524674 (= lt!1932958 e!2977978)))

(assert (=> d!1524674 (= c!813704 ((_ is Nil!53558) (_2!31131 (h!59971 (toList!6340 lt!1932761)))))))

(assert (=> d!1524674 (noDuplicateKeys!2262 (_2!31131 (h!59971 (toList!6340 lt!1932761))))))

(assert (=> d!1524674 (= (addToMapMapFromBucket!1631 (_2!31131 (h!59971 (toList!6340 lt!1932761))) (extractMap!2162 (t!361127 (toList!6340 lt!1932761)))) lt!1932958)))

(assert (=> b!4770483 (= e!2977978 lt!1932949)))

(declare-fun lt!1932943 () ListMap!5821)

(declare-fun +!2453 (ListMap!5821 tuple2!55672) ListMap!5821)

(assert (=> b!4770483 (= lt!1932943 (+!2453 (extractMap!2162 (t!361127 (toList!6340 lt!1932761))) (h!59970 (_2!31131 (h!59971 (toList!6340 lt!1932761))))))))

(assert (=> b!4770483 (= lt!1932949 (addToMapMapFromBucket!1631 (t!361126 (_2!31131 (h!59971 (toList!6340 lt!1932761)))) (+!2453 (extractMap!2162 (t!361127 (toList!6340 lt!1932761))) (h!59970 (_2!31131 (h!59971 (toList!6340 lt!1932761)))))))))

(declare-fun lt!1932944 () Unit!138420)

(assert (=> b!4770483 (= lt!1932944 call!334444)))

(assert (=> b!4770483 (forall!11890 (toList!6341 (extractMap!2162 (t!361127 (toList!6340 lt!1932761)))) lambda!224880)))

(declare-fun lt!1932950 () Unit!138420)

(assert (=> b!4770483 (= lt!1932950 lt!1932944)))

(assert (=> b!4770483 (forall!11890 (toList!6341 lt!1932943) lambda!224881)))

(declare-fun lt!1932952 () Unit!138420)

(declare-fun Unit!138433 () Unit!138420)

(assert (=> b!4770483 (= lt!1932952 Unit!138433)))

(assert (=> b!4770483 (forall!11890 (t!361126 (_2!31131 (h!59971 (toList!6340 lt!1932761)))) lambda!224881)))

(declare-fun lt!1932957 () Unit!138420)

(declare-fun Unit!138434 () Unit!138420)

(assert (=> b!4770483 (= lt!1932957 Unit!138434)))

(declare-fun lt!1932954 () Unit!138420)

(declare-fun Unit!138435 () Unit!138420)

(assert (=> b!4770483 (= lt!1932954 Unit!138435)))

(declare-fun lt!1932938 () Unit!138420)

(declare-fun forallContained!3882 (List!53682 Int tuple2!55672) Unit!138420)

(assert (=> b!4770483 (= lt!1932938 (forallContained!3882 (toList!6341 lt!1932943) lambda!224881 (h!59970 (_2!31131 (h!59971 (toList!6340 lt!1932761))))))))

(assert (=> b!4770483 (contains!16930 lt!1932943 (_1!31130 (h!59970 (_2!31131 (h!59971 (toList!6340 lt!1932761))))))))

(declare-fun lt!1932939 () Unit!138420)

(declare-fun Unit!138436 () Unit!138420)

(assert (=> b!4770483 (= lt!1932939 Unit!138436)))

(assert (=> b!4770483 (contains!16930 lt!1932949 (_1!31130 (h!59970 (_2!31131 (h!59971 (toList!6340 lt!1932761))))))))

(declare-fun lt!1932940 () Unit!138420)

(declare-fun Unit!138437 () Unit!138420)

(assert (=> b!4770483 (= lt!1932940 Unit!138437)))

(assert (=> b!4770483 (forall!11890 (_2!31131 (h!59971 (toList!6340 lt!1932761))) lambda!224881)))

(declare-fun lt!1932948 () Unit!138420)

(declare-fun Unit!138438 () Unit!138420)

(assert (=> b!4770483 (= lt!1932948 Unit!138438)))

(assert (=> b!4770483 call!334445))

(declare-fun lt!1932946 () Unit!138420)

(declare-fun Unit!138439 () Unit!138420)

(assert (=> b!4770483 (= lt!1932946 Unit!138439)))

(declare-fun lt!1932955 () Unit!138420)

(declare-fun Unit!138440 () Unit!138420)

(assert (=> b!4770483 (= lt!1932955 Unit!138440)))

(declare-fun lt!1932951 () Unit!138420)

(declare-fun addForallContainsKeyThenBeforeAdding!908 (ListMap!5821 ListMap!5821 K!15054 V!15300) Unit!138420)

(assert (=> b!4770483 (= lt!1932951 (addForallContainsKeyThenBeforeAdding!908 (extractMap!2162 (t!361127 (toList!6340 lt!1932761))) lt!1932949 (_1!31130 (h!59970 (_2!31131 (h!59971 (toList!6340 lt!1932761))))) (_2!31130 (h!59970 (_2!31131 (h!59971 (toList!6340 lt!1932761)))))))))

(assert (=> b!4770483 call!334446))

(declare-fun lt!1932953 () Unit!138420)

(assert (=> b!4770483 (= lt!1932953 lt!1932951)))

(assert (=> b!4770483 (forall!11890 (toList!6341 (extractMap!2162 (t!361127 (toList!6340 lt!1932761)))) lambda!224881)))

(declare-fun lt!1932941 () Unit!138420)

(declare-fun Unit!138441 () Unit!138420)

(assert (=> b!4770483 (= lt!1932941 Unit!138441)))

(declare-fun res!2023250 () Bool)

(assert (=> b!4770483 (= res!2023250 (forall!11890 (_2!31131 (h!59971 (toList!6340 lt!1932761))) lambda!224881))))

(assert (=> b!4770483 (=> (not res!2023250) (not e!2977977))))

(assert (=> b!4770483 e!2977977))

(declare-fun lt!1932947 () Unit!138420)

(declare-fun Unit!138442 () Unit!138420)

(assert (=> b!4770483 (= lt!1932947 Unit!138442)))

(declare-fun b!4770485 () Bool)

(assert (=> b!4770485 (= e!2977979 (invariantList!1666 (toList!6341 lt!1932958)))))

(declare-fun bm!334441 () Bool)

(assert (=> bm!334441 (= call!334445 (forall!11890 (ite c!813704 (toList!6341 (extractMap!2162 (t!361127 (toList!6340 lt!1932761)))) (toList!6341 lt!1932943)) (ite c!813704 lambda!224879 lambda!224881)))))

(declare-fun b!4770486 () Bool)

(declare-fun res!2023251 () Bool)

(assert (=> b!4770486 (=> (not res!2023251) (not e!2977979))))

(assert (=> b!4770486 (= res!2023251 (forall!11890 (toList!6341 (extractMap!2162 (t!361127 (toList!6340 lt!1932761)))) lambda!224882))))

(assert (= (and d!1524674 c!813704) b!4770482))

(assert (= (and d!1524674 (not c!813704)) b!4770483))

(assert (= (and b!4770483 res!2023250) b!4770484))

(assert (= (or b!4770482 b!4770483) bm!334441))

(assert (= (or b!4770482 b!4770483) bm!334440))

(assert (= (or b!4770482 b!4770483) bm!334439))

(assert (= (and d!1524674 res!2023252) b!4770486))

(assert (= (and b!4770486 res!2023251) b!4770485))

(declare-fun m!5742114 () Bool)

(assert (=> b!4770485 m!5742114))

(declare-fun m!5742116 () Bool)

(assert (=> d!1524674 m!5742116))

(assert (=> d!1524674 m!5742040))

(declare-fun m!5742118 () Bool)

(assert (=> b!4770486 m!5742118))

(declare-fun m!5742120 () Bool)

(assert (=> bm!334440 m!5742120))

(declare-fun m!5742122 () Bool)

(assert (=> bm!334441 m!5742122))

(declare-fun m!5742124 () Bool)

(assert (=> b!4770484 m!5742124))

(assert (=> bm!334439 m!5741920))

(declare-fun m!5742126 () Bool)

(assert (=> bm!334439 m!5742126))

(declare-fun m!5742128 () Bool)

(assert (=> b!4770483 m!5742128))

(declare-fun m!5742130 () Bool)

(assert (=> b!4770483 m!5742130))

(assert (=> b!4770483 m!5741920))

(declare-fun m!5742132 () Bool)

(assert (=> b!4770483 m!5742132))

(assert (=> b!4770483 m!5742132))

(declare-fun m!5742134 () Bool)

(assert (=> b!4770483 m!5742134))

(declare-fun m!5742136 () Bool)

(assert (=> b!4770483 m!5742136))

(assert (=> b!4770483 m!5741920))

(declare-fun m!5742138 () Bool)

(assert (=> b!4770483 m!5742138))

(declare-fun m!5742140 () Bool)

(assert (=> b!4770483 m!5742140))

(assert (=> b!4770483 m!5742136))

(assert (=> b!4770483 m!5742124))

(declare-fun m!5742142 () Bool)

(assert (=> b!4770483 m!5742142))

(declare-fun m!5742144 () Bool)

(assert (=> b!4770483 m!5742144))

(declare-fun m!5742146 () Bool)

(assert (=> b!4770483 m!5742146))

(assert (=> b!4770298 d!1524674))

(declare-fun bs!1149439 () Bool)

(declare-fun d!1524676 () Bool)

(assert (= bs!1149439 (and d!1524676 b!4770395)))

(declare-fun lambda!224883 () Int)

(assert (=> bs!1149439 (= lambda!224883 lambda!224850)))

(declare-fun bs!1149440 () Bool)

(assert (= bs!1149440 (and d!1524676 d!1524626)))

(assert (=> bs!1149440 (not (= lambda!224883 lambda!224847))))

(declare-fun bs!1149441 () Bool)

(assert (= bs!1149441 (and d!1524676 b!4770256)))

(assert (=> bs!1149441 (= lambda!224883 lambda!224838)))

(declare-fun bs!1149442 () Bool)

(assert (= bs!1149442 (and d!1524676 b!4770367)))

(assert (=> bs!1149442 (= lambda!224883 lambda!224844)))

(declare-fun bs!1149443 () Bool)

(assert (= bs!1149443 (and d!1524676 d!1524600)))

(assert (=> bs!1149443 (= lambda!224883 lambda!224841)))

(declare-fun lt!1932959 () ListMap!5821)

(assert (=> d!1524676 (invariantList!1666 (toList!6341 lt!1932959))))

(declare-fun e!2977980 () ListMap!5821)

(assert (=> d!1524676 (= lt!1932959 e!2977980)))

(declare-fun c!813705 () Bool)

(assert (=> d!1524676 (= c!813705 ((_ is Cons!53559) (t!361127 (toList!6340 lt!1932761))))))

(assert (=> d!1524676 (forall!11889 (t!361127 (toList!6340 lt!1932761)) lambda!224883)))

(assert (=> d!1524676 (= (extractMap!2162 (t!361127 (toList!6340 lt!1932761))) lt!1932959)))

(declare-fun b!4770489 () Bool)

(assert (=> b!4770489 (= e!2977980 (addToMapMapFromBucket!1631 (_2!31131 (h!59971 (t!361127 (toList!6340 lt!1932761)))) (extractMap!2162 (t!361127 (t!361127 (toList!6340 lt!1932761))))))))

(declare-fun b!4770490 () Bool)

(assert (=> b!4770490 (= e!2977980 (ListMap!5822 Nil!53558))))

(assert (= (and d!1524676 c!813705) b!4770489))

(assert (= (and d!1524676 (not c!813705)) b!4770490))

(declare-fun m!5742148 () Bool)

(assert (=> d!1524676 m!5742148))

(declare-fun m!5742150 () Bool)

(assert (=> d!1524676 m!5742150))

(declare-fun m!5742152 () Bool)

(assert (=> b!4770489 m!5742152))

(assert (=> b!4770489 m!5742152))

(declare-fun m!5742154 () Bool)

(assert (=> b!4770489 m!5742154))

(assert (=> b!4770298 d!1524676))

(declare-fun b!4770517 () Bool)

(assert (=> b!4770517 true))

(declare-fun bs!1149444 () Bool)

(declare-fun b!4770514 () Bool)

(assert (= bs!1149444 (and b!4770514 b!4770517)))

(declare-fun lambda!224893 () Int)

(declare-fun lambda!224892 () Int)

(assert (=> bs!1149444 (= (= (Cons!53558 (h!59970 (toList!6341 (extractMap!2162 (toList!6340 lt!1932761)))) (t!361126 (toList!6341 (extractMap!2162 (toList!6340 lt!1932761))))) (t!361126 (toList!6341 (extractMap!2162 (toList!6340 lt!1932761))))) (= lambda!224893 lambda!224892))))

(assert (=> b!4770514 true))

(declare-fun bs!1149445 () Bool)

(declare-fun b!4770512 () Bool)

(assert (= bs!1149445 (and b!4770512 b!4770517)))

(declare-fun lambda!224894 () Int)

(assert (=> bs!1149445 (= (= (toList!6341 (extractMap!2162 (toList!6340 lt!1932761))) (t!361126 (toList!6341 (extractMap!2162 (toList!6340 lt!1932761))))) (= lambda!224894 lambda!224892))))

(declare-fun bs!1149446 () Bool)

(assert (= bs!1149446 (and b!4770512 b!4770514)))

(assert (=> bs!1149446 (= (= (toList!6341 (extractMap!2162 (toList!6340 lt!1932761))) (Cons!53558 (h!59970 (toList!6341 (extractMap!2162 (toList!6340 lt!1932761)))) (t!361126 (toList!6341 (extractMap!2162 (toList!6340 lt!1932761)))))) (= lambda!224894 lambda!224893))))

(assert (=> b!4770512 true))

(declare-fun e!2977991 () Bool)

(declare-fun lt!1932978 () List!53684)

(declare-fun lambda!224895 () Int)

(declare-fun b!4770509 () Bool)

(declare-fun content!9599 (List!53684) (InoxSet K!15054))

(declare-fun map!12056 (List!53682 Int) List!53684)

(assert (=> b!4770509 (= e!2977991 (= (content!9599 lt!1932978) (content!9599 (map!12056 (toList!6341 (extractMap!2162 (toList!6340 lt!1932761))) lambda!224895))))))

(declare-fun b!4770510 () Bool)

(declare-fun res!2023261 () Bool)

(assert (=> b!4770510 (=> (not res!2023261) (not e!2977991))))

(declare-fun length!626 (List!53684) Int)

(declare-fun length!627 (List!53682) Int)

(assert (=> b!4770510 (= res!2023261 (= (length!626 lt!1932978) (length!627 (toList!6341 (extractMap!2162 (toList!6340 lt!1932761))))))))

(declare-fun b!4770511 () Bool)

(declare-fun e!2977990 () Unit!138420)

(declare-fun Unit!138443 () Unit!138420)

(assert (=> b!4770511 (= e!2977990 Unit!138443)))

(declare-fun res!2023260 () Bool)

(assert (=> b!4770512 (=> (not res!2023260) (not e!2977991))))

(declare-fun forall!11891 (List!53684 Int) Bool)

(assert (=> b!4770512 (= res!2023260 (forall!11891 lt!1932978 lambda!224894))))

(declare-fun b!4770513 () Bool)

(assert (=> b!4770513 false))

(declare-fun e!2977992 () Unit!138420)

(declare-fun Unit!138444 () Unit!138420)

(assert (=> b!4770513 (= e!2977992 Unit!138444)))

(declare-fun e!2977989 () List!53684)

(assert (=> b!4770514 (= e!2977989 (Cons!53560 (_1!31130 (h!59970 (toList!6341 (extractMap!2162 (toList!6340 lt!1932761))))) (getKeysList!1008 (t!361126 (toList!6341 (extractMap!2162 (toList!6340 lt!1932761)))))))))

(declare-fun c!813713 () Bool)

(assert (=> b!4770514 (= c!813713 (containsKey!3683 (t!361126 (toList!6341 (extractMap!2162 (toList!6340 lt!1932761)))) (_1!31130 (h!59970 (toList!6341 (extractMap!2162 (toList!6340 lt!1932761)))))))))

(declare-fun lt!1932980 () Unit!138420)

(assert (=> b!4770514 (= lt!1932980 e!2977992)))

(declare-fun c!813712 () Bool)

(assert (=> b!4770514 (= c!813712 (contains!16931 (getKeysList!1008 (t!361126 (toList!6341 (extractMap!2162 (toList!6340 lt!1932761))))) (_1!31130 (h!59970 (toList!6341 (extractMap!2162 (toList!6340 lt!1932761)))))))))

(declare-fun lt!1932977 () Unit!138420)

(assert (=> b!4770514 (= lt!1932977 e!2977990)))

(declare-fun lt!1932975 () List!53684)

(assert (=> b!4770514 (= lt!1932975 (getKeysList!1008 (t!361126 (toList!6341 (extractMap!2162 (toList!6340 lt!1932761))))))))

(declare-fun lt!1932976 () Unit!138420)

(declare-fun lemmaForallContainsAddHeadPreserves!303 (List!53682 List!53684 tuple2!55672) Unit!138420)

(assert (=> b!4770514 (= lt!1932976 (lemmaForallContainsAddHeadPreserves!303 (t!361126 (toList!6341 (extractMap!2162 (toList!6340 lt!1932761)))) lt!1932975 (h!59970 (toList!6341 (extractMap!2162 (toList!6340 lt!1932761))))))))

(assert (=> b!4770514 (forall!11891 lt!1932975 lambda!224893)))

(declare-fun lt!1932974 () Unit!138420)

(assert (=> b!4770514 (= lt!1932974 lt!1932976)))

(declare-fun b!4770515 () Bool)

(declare-fun Unit!138445 () Unit!138420)

(assert (=> b!4770515 (= e!2977992 Unit!138445)))

(assert (=> b!4770517 false))

(declare-fun lt!1932979 () Unit!138420)

(declare-fun forallContained!3883 (List!53684 Int K!15054) Unit!138420)

(assert (=> b!4770517 (= lt!1932979 (forallContained!3883 (getKeysList!1008 (t!361126 (toList!6341 (extractMap!2162 (toList!6340 lt!1932761))))) lambda!224892 (_1!31130 (h!59970 (toList!6341 (extractMap!2162 (toList!6340 lt!1932761)))))))))

(declare-fun Unit!138446 () Unit!138420)

(assert (=> b!4770517 (= e!2977990 Unit!138446)))

(declare-fun b!4770516 () Bool)

(assert (=> b!4770516 (= e!2977989 Nil!53560)))

(declare-fun d!1524678 () Bool)

(assert (=> d!1524678 e!2977991))

(declare-fun res!2023259 () Bool)

(assert (=> d!1524678 (=> (not res!2023259) (not e!2977991))))

(declare-fun noDuplicate!885 (List!53684) Bool)

(assert (=> d!1524678 (= res!2023259 (noDuplicate!885 lt!1932978))))

(assert (=> d!1524678 (= lt!1932978 e!2977989)))

(declare-fun c!813714 () Bool)

(assert (=> d!1524678 (= c!813714 ((_ is Cons!53558) (toList!6341 (extractMap!2162 (toList!6340 lt!1932761)))))))

(assert (=> d!1524678 (invariantList!1666 (toList!6341 (extractMap!2162 (toList!6340 lt!1932761))))))

(assert (=> d!1524678 (= (getKeysList!1008 (toList!6341 (extractMap!2162 (toList!6340 lt!1932761)))) lt!1932978)))

(assert (= (and d!1524678 c!813714) b!4770514))

(assert (= (and d!1524678 (not c!813714)) b!4770516))

(assert (= (and b!4770514 c!813713) b!4770513))

(assert (= (and b!4770514 (not c!813713)) b!4770515))

(assert (= (and b!4770514 c!813712) b!4770517))

(assert (= (and b!4770514 (not c!813712)) b!4770511))

(assert (= (and d!1524678 res!2023259) b!4770510))

(assert (= (and b!4770510 res!2023261) b!4770512))

(assert (= (and b!4770512 res!2023260) b!4770509))

(declare-fun m!5742156 () Bool)

(assert (=> b!4770509 m!5742156))

(declare-fun m!5742158 () Bool)

(assert (=> b!4770509 m!5742158))

(assert (=> b!4770509 m!5742158))

(declare-fun m!5742160 () Bool)

(assert (=> b!4770509 m!5742160))

(declare-fun m!5742162 () Bool)

(assert (=> b!4770517 m!5742162))

(assert (=> b!4770517 m!5742162))

(declare-fun m!5742164 () Bool)

(assert (=> b!4770517 m!5742164))

(assert (=> b!4770514 m!5742162))

(declare-fun m!5742166 () Bool)

(assert (=> b!4770514 m!5742166))

(assert (=> b!4770514 m!5742162))

(declare-fun m!5742168 () Bool)

(assert (=> b!4770514 m!5742168))

(declare-fun m!5742170 () Bool)

(assert (=> b!4770514 m!5742170))

(declare-fun m!5742172 () Bool)

(assert (=> b!4770514 m!5742172))

(declare-fun m!5742174 () Bool)

(assert (=> d!1524678 m!5742174))

(assert (=> d!1524678 m!5742108))

(declare-fun m!5742176 () Bool)

(assert (=> b!4770510 m!5742176))

(declare-fun m!5742178 () Bool)

(assert (=> b!4770510 m!5742178))

(declare-fun m!5742180 () Bool)

(assert (=> b!4770512 m!5742180))

(assert (=> b!4770293 d!1524678))

(declare-fun d!1524680 () Bool)

(declare-fun res!2023262 () Bool)

(declare-fun e!2977993 () Bool)

(assert (=> d!1524680 (=> res!2023262 e!2977993)))

(assert (=> d!1524680 (= res!2023262 ((_ is Nil!53559) (t!361127 (toList!6340 lt!1932761))))))

(assert (=> d!1524680 (= (forall!11889 (t!361127 (toList!6340 lt!1932761)) lambda!224838) e!2977993)))

(declare-fun b!4770520 () Bool)

(declare-fun e!2977994 () Bool)

(assert (=> b!4770520 (= e!2977993 e!2977994)))

(declare-fun res!2023263 () Bool)

(assert (=> b!4770520 (=> (not res!2023263) (not e!2977994))))

(assert (=> b!4770520 (= res!2023263 (dynLambda!21969 lambda!224838 (h!59971 (t!361127 (toList!6340 lt!1932761)))))))

(declare-fun b!4770521 () Bool)

(assert (=> b!4770521 (= e!2977994 (forall!11889 (t!361127 (t!361127 (toList!6340 lt!1932761))) lambda!224838))))

(assert (= (and d!1524680 (not res!2023262)) b!4770520))

(assert (= (and b!4770520 res!2023263) b!4770521))

(declare-fun b_lambda!184587 () Bool)

(assert (=> (not b_lambda!184587) (not b!4770520)))

(declare-fun m!5742182 () Bool)

(assert (=> b!4770520 m!5742182))

(declare-fun m!5742184 () Bool)

(assert (=> b!4770521 m!5742184))

(assert (=> b!4770344 d!1524680))

(declare-fun d!1524682 () Bool)

(declare-fun res!2023264 () Bool)

(declare-fun e!2977995 () Bool)

(assert (=> d!1524682 (=> res!2023264 e!2977995)))

(assert (=> d!1524682 (= res!2023264 (not ((_ is Cons!53558) (_2!31131 lt!1932769))))))

(assert (=> d!1524682 (= (noDuplicateKeys!2262 (_2!31131 lt!1932769)) e!2977995)))

(declare-fun b!4770522 () Bool)

(declare-fun e!2977996 () Bool)

(assert (=> b!4770522 (= e!2977995 e!2977996)))

(declare-fun res!2023265 () Bool)

(assert (=> b!4770522 (=> (not res!2023265) (not e!2977996))))

(assert (=> b!4770522 (= res!2023265 (not (containsKey!3684 (t!361126 (_2!31131 lt!1932769)) (_1!31130 (h!59970 (_2!31131 lt!1932769))))))))

(declare-fun b!4770523 () Bool)

(assert (=> b!4770523 (= e!2977996 (noDuplicateKeys!2262 (t!361126 (_2!31131 lt!1932769))))))

(assert (= (and d!1524682 (not res!2023264)) b!4770522))

(assert (= (and b!4770522 res!2023265) b!4770523))

(declare-fun m!5742186 () Bool)

(assert (=> b!4770522 m!5742186))

(declare-fun m!5742188 () Bool)

(assert (=> b!4770523 m!5742188))

(assert (=> bs!1149431 d!1524682))

(declare-fun d!1524684 () Bool)

(declare-fun lt!1932983 () Bool)

(declare-fun content!9600 (List!53682) (InoxSet tuple2!55672))

(assert (=> d!1524684 (= lt!1932983 (select (content!9600 lt!1932765) (get!18091 lt!1932809)))))

(declare-fun e!2978002 () Bool)

(assert (=> d!1524684 (= lt!1932983 e!2978002)))

(declare-fun res!2023271 () Bool)

(assert (=> d!1524684 (=> (not res!2023271) (not e!2978002))))

(assert (=> d!1524684 (= res!2023271 ((_ is Cons!53558) lt!1932765))))

(assert (=> d!1524684 (= (contains!16933 lt!1932765 (get!18091 lt!1932809)) lt!1932983)))

(declare-fun b!4770528 () Bool)

(declare-fun e!2978001 () Bool)

(assert (=> b!4770528 (= e!2978002 e!2978001)))

(declare-fun res!2023270 () Bool)

(assert (=> b!4770528 (=> res!2023270 e!2978001)))

(assert (=> b!4770528 (= res!2023270 (= (h!59970 lt!1932765) (get!18091 lt!1932809)))))

(declare-fun b!4770529 () Bool)

(assert (=> b!4770529 (= e!2978001 (contains!16933 (t!361126 lt!1932765) (get!18091 lt!1932809)))))

(assert (= (and d!1524684 res!2023271) b!4770528))

(assert (= (and b!4770528 (not res!2023270)) b!4770529))

(declare-fun m!5742190 () Bool)

(assert (=> d!1524684 m!5742190))

(assert (=> d!1524684 m!5741954))

(declare-fun m!5742192 () Bool)

(assert (=> d!1524684 m!5742192))

(assert (=> b!4770529 m!5741954))

(declare-fun m!5742194 () Bool)

(assert (=> b!4770529 m!5742194))

(assert (=> b!4770334 d!1524684))

(declare-fun d!1524686 () Bool)

(assert (=> d!1524686 (= (get!18091 lt!1932809) (v!47842 lt!1932809))))

(assert (=> b!4770334 d!1524686))

(declare-fun b!4770530 () Bool)

(declare-fun e!2978003 () Bool)

(assert (=> b!4770530 (= e!2978003 (not (containsKey!3684 call!334432 key!1776)))))

(declare-fun b!4770531 () Bool)

(declare-fun e!2978005 () Option!12732)

(assert (=> b!4770531 (= e!2978005 (getPair!662 (t!361126 call!334432) key!1776))))

(declare-fun b!4770532 () Bool)

(assert (=> b!4770532 (= e!2978005 None!12731)))

(declare-fun b!4770533 () Bool)

(declare-fun e!2978007 () Bool)

(declare-fun lt!1932984 () Option!12732)

(assert (=> b!4770533 (= e!2978007 (contains!16933 call!334432 (get!18091 lt!1932984)))))

(declare-fun b!4770534 () Bool)

(declare-fun res!2023273 () Bool)

(assert (=> b!4770534 (=> (not res!2023273) (not e!2978007))))

(assert (=> b!4770534 (= res!2023273 (= (_1!31130 (get!18091 lt!1932984)) key!1776))))

(declare-fun b!4770535 () Bool)

(declare-fun e!2978004 () Bool)

(assert (=> b!4770535 (= e!2978004 e!2978007)))

(declare-fun res!2023275 () Bool)

(assert (=> b!4770535 (=> (not res!2023275) (not e!2978007))))

(assert (=> b!4770535 (= res!2023275 (isDefined!9879 lt!1932984))))

(declare-fun b!4770536 () Bool)

(declare-fun e!2978006 () Option!12732)

(assert (=> b!4770536 (= e!2978006 (Some!12731 (h!59970 call!334432)))))

(declare-fun d!1524688 () Bool)

(assert (=> d!1524688 e!2978004))

(declare-fun res!2023272 () Bool)

(assert (=> d!1524688 (=> res!2023272 e!2978004)))

(assert (=> d!1524688 (= res!2023272 e!2978003)))

(declare-fun res!2023274 () Bool)

(assert (=> d!1524688 (=> (not res!2023274) (not e!2978003))))

(assert (=> d!1524688 (= res!2023274 (isEmpty!29297 lt!1932984))))

(assert (=> d!1524688 (= lt!1932984 e!2978006)))

(declare-fun c!813716 () Bool)

(assert (=> d!1524688 (= c!813716 (and ((_ is Cons!53558) call!334432) (= (_1!31130 (h!59970 call!334432)) key!1776)))))

(assert (=> d!1524688 (noDuplicateKeys!2262 call!334432)))

(assert (=> d!1524688 (= (getPair!662 call!334432 key!1776) lt!1932984)))

(declare-fun b!4770537 () Bool)

(assert (=> b!4770537 (= e!2978006 e!2978005)))

(declare-fun c!813715 () Bool)

(assert (=> b!4770537 (= c!813715 ((_ is Cons!53558) call!334432))))

(assert (= (and d!1524688 c!813716) b!4770536))

(assert (= (and d!1524688 (not c!813716)) b!4770537))

(assert (= (and b!4770537 c!813715) b!4770531))

(assert (= (and b!4770537 (not c!813715)) b!4770532))

(assert (= (and d!1524688 res!2023274) b!4770530))

(assert (= (and d!1524688 (not res!2023272)) b!4770535))

(assert (= (and b!4770535 res!2023275) b!4770534))

(assert (= (and b!4770534 res!2023273) b!4770533))

(declare-fun m!5742196 () Bool)

(assert (=> d!1524688 m!5742196))

(declare-fun m!5742198 () Bool)

(assert (=> d!1524688 m!5742198))

(declare-fun m!5742200 () Bool)

(assert (=> b!4770533 m!5742200))

(assert (=> b!4770533 m!5742200))

(declare-fun m!5742202 () Bool)

(assert (=> b!4770533 m!5742202))

(declare-fun m!5742204 () Bool)

(assert (=> b!4770535 m!5742204))

(declare-fun m!5742206 () Bool)

(assert (=> b!4770531 m!5742206))

(declare-fun m!5742208 () Bool)

(assert (=> b!4770530 m!5742208))

(assert (=> b!4770534 m!5742200))

(assert (=> bm!334432 d!1524688))

(declare-fun b!4770538 () Bool)

(declare-fun e!2978013 () Bool)

(assert (=> b!4770538 (= e!2978013 (not (contains!16931 (keys!19428 (map!12055 thiss!42052)) key!1776)))))

(declare-fun b!4770539 () Bool)

(declare-fun e!2978011 () Unit!138420)

(declare-fun e!2978009 () Unit!138420)

(assert (=> b!4770539 (= e!2978011 e!2978009)))

(declare-fun c!813717 () Bool)

(declare-fun call!334447 () Bool)

(assert (=> b!4770539 (= c!813717 call!334447)))

(declare-fun b!4770540 () Bool)

(declare-fun lt!1932992 () Unit!138420)

(assert (=> b!4770540 (= e!2978011 lt!1932992)))

(declare-fun lt!1932990 () Unit!138420)

(assert (=> b!4770540 (= lt!1932990 (lemmaContainsKeyImpliesGetValueByKeyDefined!2014 (toList!6341 (map!12055 thiss!42052)) key!1776))))

(assert (=> b!4770540 (isDefined!9878 (getValueByKey!2218 (toList!6341 (map!12055 thiss!42052)) key!1776))))

(declare-fun lt!1932987 () Unit!138420)

(assert (=> b!4770540 (= lt!1932987 lt!1932990)))

(assert (=> b!4770540 (= lt!1932992 (lemmaInListThenGetKeysListContains!1003 (toList!6341 (map!12055 thiss!42052)) key!1776))))

(assert (=> b!4770540 call!334447))

(declare-fun b!4770541 () Bool)

(declare-fun e!2978012 () Bool)

(declare-fun e!2978010 () Bool)

(assert (=> b!4770541 (= e!2978012 e!2978010)))

(declare-fun res!2023276 () Bool)

(assert (=> b!4770541 (=> (not res!2023276) (not e!2978010))))

(assert (=> b!4770541 (= res!2023276 (isDefined!9878 (getValueByKey!2218 (toList!6341 (map!12055 thiss!42052)) key!1776)))))

(declare-fun b!4770542 () Bool)

(assert (=> b!4770542 (= e!2978010 (contains!16931 (keys!19428 (map!12055 thiss!42052)) key!1776))))

(declare-fun b!4770543 () Bool)

(declare-fun e!2978008 () List!53684)

(assert (=> b!4770543 (= e!2978008 (keys!19428 (map!12055 thiss!42052)))))

(declare-fun bm!334442 () Bool)

(assert (=> bm!334442 (= call!334447 (contains!16931 e!2978008 key!1776))))

(declare-fun c!813718 () Bool)

(declare-fun c!813719 () Bool)

(assert (=> bm!334442 (= c!813718 c!813719)))

(declare-fun d!1524690 () Bool)

(assert (=> d!1524690 e!2978012))

(declare-fun res!2023278 () Bool)

(assert (=> d!1524690 (=> res!2023278 e!2978012)))

(assert (=> d!1524690 (= res!2023278 e!2978013)))

(declare-fun res!2023277 () Bool)

(assert (=> d!1524690 (=> (not res!2023277) (not e!2978013))))

(declare-fun lt!1932989 () Bool)

(assert (=> d!1524690 (= res!2023277 (not lt!1932989))))

(declare-fun lt!1932991 () Bool)

(assert (=> d!1524690 (= lt!1932989 lt!1932991)))

(declare-fun lt!1932985 () Unit!138420)

(assert (=> d!1524690 (= lt!1932985 e!2978011)))

(assert (=> d!1524690 (= c!813719 lt!1932991)))

(assert (=> d!1524690 (= lt!1932991 (containsKey!3683 (toList!6341 (map!12055 thiss!42052)) key!1776))))

(assert (=> d!1524690 (= (contains!16930 (map!12055 thiss!42052) key!1776) lt!1932989)))

(declare-fun b!4770544 () Bool)

(assert (=> b!4770544 false))

(declare-fun lt!1932986 () Unit!138420)

(declare-fun lt!1932988 () Unit!138420)

(assert (=> b!4770544 (= lt!1932986 lt!1932988)))

(assert (=> b!4770544 (containsKey!3683 (toList!6341 (map!12055 thiss!42052)) key!1776)))

(assert (=> b!4770544 (= lt!1932988 (lemmaInGetKeysListThenContainsKey!1007 (toList!6341 (map!12055 thiss!42052)) key!1776))))

(declare-fun Unit!138447 () Unit!138420)

(assert (=> b!4770544 (= e!2978009 Unit!138447)))

(declare-fun b!4770545 () Bool)

(declare-fun Unit!138448 () Unit!138420)

(assert (=> b!4770545 (= e!2978009 Unit!138448)))

(declare-fun b!4770546 () Bool)

(assert (=> b!4770546 (= e!2978008 (getKeysList!1008 (toList!6341 (map!12055 thiss!42052))))))

(assert (= (and d!1524690 c!813719) b!4770540))

(assert (= (and d!1524690 (not c!813719)) b!4770539))

(assert (= (and b!4770539 c!813717) b!4770544))

(assert (= (and b!4770539 (not c!813717)) b!4770545))

(assert (= (or b!4770540 b!4770539) bm!334442))

(assert (= (and bm!334442 c!813718) b!4770546))

(assert (= (and bm!334442 (not c!813718)) b!4770543))

(assert (= (and d!1524690 res!2023277) b!4770538))

(assert (= (and d!1524690 (not res!2023278)) b!4770541))

(assert (= (and b!4770541 res!2023276) b!4770542))

(declare-fun m!5742210 () Bool)

(assert (=> b!4770541 m!5742210))

(assert (=> b!4770541 m!5742210))

(declare-fun m!5742212 () Bool)

(assert (=> b!4770541 m!5742212))

(declare-fun m!5742214 () Bool)

(assert (=> b!4770540 m!5742214))

(assert (=> b!4770540 m!5742210))

(assert (=> b!4770540 m!5742210))

(assert (=> b!4770540 m!5742212))

(declare-fun m!5742216 () Bool)

(assert (=> b!4770540 m!5742216))

(assert (=> b!4770538 m!5742016))

(declare-fun m!5742218 () Bool)

(assert (=> b!4770538 m!5742218))

(assert (=> b!4770538 m!5742218))

(declare-fun m!5742220 () Bool)

(assert (=> b!4770538 m!5742220))

(declare-fun m!5742222 () Bool)

(assert (=> b!4770546 m!5742222))

(assert (=> b!4770542 m!5742016))

(assert (=> b!4770542 m!5742218))

(assert (=> b!4770542 m!5742218))

(assert (=> b!4770542 m!5742220))

(declare-fun m!5742224 () Bool)

(assert (=> bm!334442 m!5742224))

(declare-fun m!5742226 () Bool)

(assert (=> d!1524690 m!5742226))

(assert (=> b!4770544 m!5742226))

(declare-fun m!5742228 () Bool)

(assert (=> b!4770544 m!5742228))

(assert (=> b!4770543 m!5742016))

(assert (=> b!4770543 m!5742218))

(assert (=> d!1524632 d!1524690))

(assert (=> d!1524632 d!1524606))

(declare-fun d!1524692 () Bool)

(declare-fun lt!1932995 () ListMap!5821)

(assert (=> d!1524692 (invariantList!1666 (toList!6341 lt!1932995))))

(assert (=> d!1524692 (= lt!1932995 (extractMap!2162 (toList!6340 (map!12053 (v!47840 (underlying!10138 thiss!42052))))))))

(assert (=> d!1524692 (valid!3971 thiss!42052)))

(assert (=> d!1524692 (= (map!12055 thiss!42052) lt!1932995)))

(declare-fun bs!1149447 () Bool)

(assert (= bs!1149447 d!1524692))

(declare-fun m!5742230 () Bool)

(assert (=> bs!1149447 m!5742230))

(assert (=> bs!1149447 m!5741884))

(assert (=> bs!1149447 m!5742010))

(assert (=> bs!1149447 m!5741874))

(assert (=> d!1524632 d!1524692))

(assert (=> d!1524632 d!1524624))

(declare-fun d!1524694 () Bool)

(declare-fun lt!1932998 () Bool)

(assert (=> d!1524694 (= lt!1932998 (contains!16934 (map!12053 (v!47840 (underlying!10138 thiss!42052))) lt!1932867))))

(declare-fun contains!16935 (LongMapFixedSize!9930 (_ BitVec 64)) Bool)

(assert (=> d!1524694 (= lt!1932998 (contains!16935 (v!47839 (underlying!10137 (v!47840 (underlying!10138 thiss!42052)))) lt!1932867))))

(assert (=> d!1524694 (valid!3972 (v!47840 (underlying!10138 thiss!42052)))))

(assert (=> d!1524694 (= (contains!16932 (v!47840 (underlying!10138 thiss!42052)) lt!1932867) lt!1932998)))

(declare-fun bs!1149448 () Bool)

(assert (= bs!1149448 d!1524694))

(assert (=> bs!1149448 m!5741884))

(assert (=> bs!1149448 m!5741884))

(declare-fun m!5742232 () Bool)

(assert (=> bs!1149448 m!5742232))

(declare-fun m!5742234 () Bool)

(assert (=> bs!1149448 m!5742234))

(assert (=> bs!1149448 m!5741934))

(assert (=> d!1524632 d!1524694))

(assert (=> d!1524632 d!1524610))

(declare-fun b!4770547 () Bool)

(declare-fun e!2978019 () Bool)

(assert (=> b!4770547 (= e!2978019 (not (contains!16931 (keys!19428 (extractMap!2162 (toList!6340 (map!12053 (v!47840 (underlying!10138 thiss!42052)))))) key!1776)))))

(declare-fun b!4770548 () Bool)

(declare-fun e!2978017 () Unit!138420)

(declare-fun e!2978015 () Unit!138420)

(assert (=> b!4770548 (= e!2978017 e!2978015)))

(declare-fun c!813720 () Bool)

(declare-fun call!334448 () Bool)

(assert (=> b!4770548 (= c!813720 call!334448)))

(declare-fun b!4770549 () Bool)

(declare-fun lt!1933006 () Unit!138420)

(assert (=> b!4770549 (= e!2978017 lt!1933006)))

(declare-fun lt!1933004 () Unit!138420)

(assert (=> b!4770549 (= lt!1933004 (lemmaContainsKeyImpliesGetValueByKeyDefined!2014 (toList!6341 (extractMap!2162 (toList!6340 (map!12053 (v!47840 (underlying!10138 thiss!42052)))))) key!1776))))

(assert (=> b!4770549 (isDefined!9878 (getValueByKey!2218 (toList!6341 (extractMap!2162 (toList!6340 (map!12053 (v!47840 (underlying!10138 thiss!42052)))))) key!1776))))

(declare-fun lt!1933001 () Unit!138420)

(assert (=> b!4770549 (= lt!1933001 lt!1933004)))

(assert (=> b!4770549 (= lt!1933006 (lemmaInListThenGetKeysListContains!1003 (toList!6341 (extractMap!2162 (toList!6340 (map!12053 (v!47840 (underlying!10138 thiss!42052)))))) key!1776))))

(assert (=> b!4770549 call!334448))

(declare-fun b!4770550 () Bool)

(declare-fun e!2978018 () Bool)

(declare-fun e!2978016 () Bool)

(assert (=> b!4770550 (= e!2978018 e!2978016)))

(declare-fun res!2023279 () Bool)

(assert (=> b!4770550 (=> (not res!2023279) (not e!2978016))))

(assert (=> b!4770550 (= res!2023279 (isDefined!9878 (getValueByKey!2218 (toList!6341 (extractMap!2162 (toList!6340 (map!12053 (v!47840 (underlying!10138 thiss!42052)))))) key!1776)))))

(declare-fun b!4770551 () Bool)

(assert (=> b!4770551 (= e!2978016 (contains!16931 (keys!19428 (extractMap!2162 (toList!6340 (map!12053 (v!47840 (underlying!10138 thiss!42052)))))) key!1776))))

(declare-fun b!4770552 () Bool)

(declare-fun e!2978014 () List!53684)

(assert (=> b!4770552 (= e!2978014 (keys!19428 (extractMap!2162 (toList!6340 (map!12053 (v!47840 (underlying!10138 thiss!42052)))))))))

(declare-fun bm!334443 () Bool)

(assert (=> bm!334443 (= call!334448 (contains!16931 e!2978014 key!1776))))

(declare-fun c!813721 () Bool)

(declare-fun c!813722 () Bool)

(assert (=> bm!334443 (= c!813721 c!813722)))

(declare-fun d!1524696 () Bool)

(assert (=> d!1524696 e!2978018))

(declare-fun res!2023281 () Bool)

(assert (=> d!1524696 (=> res!2023281 e!2978018)))

(assert (=> d!1524696 (= res!2023281 e!2978019)))

(declare-fun res!2023280 () Bool)

(assert (=> d!1524696 (=> (not res!2023280) (not e!2978019))))

(declare-fun lt!1933003 () Bool)

(assert (=> d!1524696 (= res!2023280 (not lt!1933003))))

(declare-fun lt!1933005 () Bool)

(assert (=> d!1524696 (= lt!1933003 lt!1933005)))

(declare-fun lt!1932999 () Unit!138420)

(assert (=> d!1524696 (= lt!1932999 e!2978017)))

(assert (=> d!1524696 (= c!813722 lt!1933005)))

(assert (=> d!1524696 (= lt!1933005 (containsKey!3683 (toList!6341 (extractMap!2162 (toList!6340 (map!12053 (v!47840 (underlying!10138 thiss!42052)))))) key!1776))))

(assert (=> d!1524696 (= (contains!16930 (extractMap!2162 (toList!6340 (map!12053 (v!47840 (underlying!10138 thiss!42052))))) key!1776) lt!1933003)))

(declare-fun b!4770553 () Bool)

(assert (=> b!4770553 false))

(declare-fun lt!1933000 () Unit!138420)

(declare-fun lt!1933002 () Unit!138420)

(assert (=> b!4770553 (= lt!1933000 lt!1933002)))

(assert (=> b!4770553 (containsKey!3683 (toList!6341 (extractMap!2162 (toList!6340 (map!12053 (v!47840 (underlying!10138 thiss!42052)))))) key!1776)))

(assert (=> b!4770553 (= lt!1933002 (lemmaInGetKeysListThenContainsKey!1007 (toList!6341 (extractMap!2162 (toList!6340 (map!12053 (v!47840 (underlying!10138 thiss!42052)))))) key!1776))))

(declare-fun Unit!138449 () Unit!138420)

(assert (=> b!4770553 (= e!2978015 Unit!138449)))

(declare-fun b!4770554 () Bool)

(declare-fun Unit!138450 () Unit!138420)

(assert (=> b!4770554 (= e!2978015 Unit!138450)))

(declare-fun b!4770555 () Bool)

(assert (=> b!4770555 (= e!2978014 (getKeysList!1008 (toList!6341 (extractMap!2162 (toList!6340 (map!12053 (v!47840 (underlying!10138 thiss!42052))))))))))

(assert (= (and d!1524696 c!813722) b!4770549))

(assert (= (and d!1524696 (not c!813722)) b!4770548))

(assert (= (and b!4770548 c!813720) b!4770553))

(assert (= (and b!4770548 (not c!813720)) b!4770554))

(assert (= (or b!4770549 b!4770548) bm!334443))

(assert (= (and bm!334443 c!813721) b!4770555))

(assert (= (and bm!334443 (not c!813721)) b!4770552))

(assert (= (and d!1524696 res!2023280) b!4770547))

(assert (= (and d!1524696 (not res!2023281)) b!4770550))

(assert (= (and b!4770550 res!2023279) b!4770551))

(declare-fun m!5742236 () Bool)

(assert (=> b!4770550 m!5742236))

(assert (=> b!4770550 m!5742236))

(declare-fun m!5742238 () Bool)

(assert (=> b!4770550 m!5742238))

(declare-fun m!5742240 () Bool)

(assert (=> b!4770549 m!5742240))

(assert (=> b!4770549 m!5742236))

(assert (=> b!4770549 m!5742236))

(assert (=> b!4770549 m!5742238))

(declare-fun m!5742242 () Bool)

(assert (=> b!4770549 m!5742242))

(assert (=> b!4770547 m!5742010))

(declare-fun m!5742244 () Bool)

(assert (=> b!4770547 m!5742244))

(assert (=> b!4770547 m!5742244))

(declare-fun m!5742246 () Bool)

(assert (=> b!4770547 m!5742246))

(declare-fun m!5742248 () Bool)

(assert (=> b!4770555 m!5742248))

(assert (=> b!4770551 m!5742010))

(assert (=> b!4770551 m!5742244))

(assert (=> b!4770551 m!5742244))

(assert (=> b!4770551 m!5742246))

(declare-fun m!5742250 () Bool)

(assert (=> bm!334443 m!5742250))

(declare-fun m!5742252 () Bool)

(assert (=> d!1524696 m!5742252))

(assert (=> b!4770553 m!5742252))

(declare-fun m!5742254 () Bool)

(assert (=> b!4770553 m!5742254))

(assert (=> b!4770552 m!5742010))

(assert (=> b!4770552 m!5742244))

(assert (=> d!1524632 d!1524696))

(declare-fun bs!1149449 () Bool)

(declare-fun d!1524698 () Bool)

(assert (= bs!1149449 (and d!1524698 b!4770395)))

(declare-fun lambda!224896 () Int)

(assert (=> bs!1149449 (= lambda!224896 lambda!224850)))

(declare-fun bs!1149450 () Bool)

(assert (= bs!1149450 (and d!1524698 d!1524626)))

(assert (=> bs!1149450 (not (= lambda!224896 lambda!224847))))

(declare-fun bs!1149451 () Bool)

(assert (= bs!1149451 (and d!1524698 b!4770256)))

(assert (=> bs!1149451 (= lambda!224896 lambda!224838)))

(declare-fun bs!1149452 () Bool)

(assert (= bs!1149452 (and d!1524698 d!1524676)))

(assert (=> bs!1149452 (= lambda!224896 lambda!224883)))

(declare-fun bs!1149453 () Bool)

(assert (= bs!1149453 (and d!1524698 b!4770367)))

(assert (=> bs!1149453 (= lambda!224896 lambda!224844)))

(declare-fun bs!1149454 () Bool)

(assert (= bs!1149454 (and d!1524698 d!1524600)))

(assert (=> bs!1149454 (= lambda!224896 lambda!224841)))

(declare-fun lt!1933007 () ListMap!5821)

(assert (=> d!1524698 (invariantList!1666 (toList!6341 lt!1933007))))

(declare-fun e!2978020 () ListMap!5821)

(assert (=> d!1524698 (= lt!1933007 e!2978020)))

(declare-fun c!813723 () Bool)

(assert (=> d!1524698 (= c!813723 ((_ is Cons!53559) (toList!6340 (map!12053 (v!47840 (underlying!10138 thiss!42052))))))))

(assert (=> d!1524698 (forall!11889 (toList!6340 (map!12053 (v!47840 (underlying!10138 thiss!42052)))) lambda!224896)))

(assert (=> d!1524698 (= (extractMap!2162 (toList!6340 (map!12053 (v!47840 (underlying!10138 thiss!42052))))) lt!1933007)))

(declare-fun b!4770556 () Bool)

(assert (=> b!4770556 (= e!2978020 (addToMapMapFromBucket!1631 (_2!31131 (h!59971 (toList!6340 (map!12053 (v!47840 (underlying!10138 thiss!42052)))))) (extractMap!2162 (t!361127 (toList!6340 (map!12053 (v!47840 (underlying!10138 thiss!42052))))))))))

(declare-fun b!4770557 () Bool)

(assert (=> b!4770557 (= e!2978020 (ListMap!5822 Nil!53558))))

(assert (= (and d!1524698 c!813723) b!4770556))

(assert (= (and d!1524698 (not c!813723)) b!4770557))

(declare-fun m!5742256 () Bool)

(assert (=> d!1524698 m!5742256))

(declare-fun m!5742258 () Bool)

(assert (=> d!1524698 m!5742258))

(declare-fun m!5742260 () Bool)

(assert (=> b!4770556 m!5742260))

(assert (=> b!4770556 m!5742260))

(declare-fun m!5742262 () Bool)

(assert (=> b!4770556 m!5742262))

(assert (=> d!1524632 d!1524698))

(declare-fun d!1524700 () Bool)

(declare-fun c!813726 () Bool)

(assert (=> d!1524700 (= c!813726 ((_ is Nil!53559) (toList!6340 lt!1932761)))))

(declare-fun e!2978023 () (InoxSet tuple2!55674))

(assert (=> d!1524700 (= (content!9598 (toList!6340 lt!1932761)) e!2978023)))

(declare-fun b!4770562 () Bool)

(assert (=> b!4770562 (= e!2978023 ((as const (Array tuple2!55674 Bool)) false))))

(declare-fun b!4770563 () Bool)

(assert (=> b!4770563 (= e!2978023 ((_ map or) (store ((as const (Array tuple2!55674 Bool)) false) (h!59971 (toList!6340 lt!1932761)) true) (content!9598 (t!361127 (toList!6340 lt!1932761)))))))

(assert (= (and d!1524700 c!813726) b!4770562))

(assert (= (and d!1524700 (not c!813726)) b!4770563))

(declare-fun m!5742264 () Bool)

(assert (=> b!4770563 m!5742264))

(declare-fun m!5742266 () Bool)

(assert (=> b!4770563 m!5742266))

(assert (=> d!1524602 d!1524700))

(declare-fun d!1524702 () Bool)

(declare-fun isEmpty!29299 (Option!12733) Bool)

(assert (=> d!1524702 (= (isDefined!9878 (getValueByKey!2218 (toList!6341 (extractMap!2162 (toList!6340 lt!1932761))) key!1776)) (not (isEmpty!29299 (getValueByKey!2218 (toList!6341 (extractMap!2162 (toList!6340 lt!1932761))) key!1776))))))

(declare-fun bs!1149455 () Bool)

(assert (= bs!1149455 d!1524702))

(assert (=> bs!1149455 m!5741896))

(declare-fun m!5742268 () Bool)

(assert (=> bs!1149455 m!5742268))

(assert (=> b!4770288 d!1524702))

(declare-fun d!1524704 () Bool)

(declare-fun c!813731 () Bool)

(assert (=> d!1524704 (= c!813731 (and ((_ is Cons!53558) (toList!6341 (extractMap!2162 (toList!6340 lt!1932761)))) (= (_1!31130 (h!59970 (toList!6341 (extractMap!2162 (toList!6340 lt!1932761))))) key!1776)))))

(declare-fun e!2978028 () Option!12733)

(assert (=> d!1524704 (= (getValueByKey!2218 (toList!6341 (extractMap!2162 (toList!6340 lt!1932761))) key!1776) e!2978028)))

(declare-fun b!4770572 () Bool)

(assert (=> b!4770572 (= e!2978028 (Some!12732 (_2!31130 (h!59970 (toList!6341 (extractMap!2162 (toList!6340 lt!1932761)))))))))

(declare-fun b!4770573 () Bool)

(declare-fun e!2978029 () Option!12733)

(assert (=> b!4770573 (= e!2978028 e!2978029)))

(declare-fun c!813732 () Bool)

(assert (=> b!4770573 (= c!813732 (and ((_ is Cons!53558) (toList!6341 (extractMap!2162 (toList!6340 lt!1932761)))) (not (= (_1!31130 (h!59970 (toList!6341 (extractMap!2162 (toList!6340 lt!1932761))))) key!1776))))))

(declare-fun b!4770575 () Bool)

(assert (=> b!4770575 (= e!2978029 None!12732)))

(declare-fun b!4770574 () Bool)

(assert (=> b!4770574 (= e!2978029 (getValueByKey!2218 (t!361126 (toList!6341 (extractMap!2162 (toList!6340 lt!1932761)))) key!1776))))

(assert (= (and d!1524704 c!813731) b!4770572))

(assert (= (and d!1524704 (not c!813731)) b!4770573))

(assert (= (and b!4770573 c!813732) b!4770574))

(assert (= (and b!4770573 (not c!813732)) b!4770575))

(declare-fun m!5742270 () Bool)

(assert (=> b!4770574 m!5742270))

(assert (=> b!4770288 d!1524704))

(declare-fun d!1524706 () Bool)

(assert (=> d!1524706 (dynLambda!21969 lambda!224838 lt!1932769)))

(assert (=> d!1524706 true))

(declare-fun _$7!2314 () Unit!138420)

(assert (=> d!1524706 (= (choose!34021 (toList!6340 lt!1932761) lambda!224838 lt!1932769) _$7!2314)))

(declare-fun b_lambda!184589 () Bool)

(assert (=> (not b_lambda!184589) (not d!1524706)))

(declare-fun bs!1149456 () Bool)

(assert (= bs!1149456 d!1524706))

(assert (=> bs!1149456 m!5741944))

(assert (=> d!1524608 d!1524706))

(assert (=> d!1524608 d!1524614))

(declare-fun d!1524708 () Bool)

(declare-fun lt!1933008 () Bool)

(assert (=> d!1524708 (= lt!1933008 (select (content!9598 lt!1932862) (tuple2!55675 lt!1932867 lt!1932861)))))

(declare-fun e!2978030 () Bool)

(assert (=> d!1524708 (= lt!1933008 e!2978030)))

(declare-fun res!2023282 () Bool)

(assert (=> d!1524708 (=> (not res!2023282) (not e!2978030))))

(assert (=> d!1524708 (= res!2023282 ((_ is Cons!53559) lt!1932862))))

(assert (=> d!1524708 (= (contains!16929 lt!1932862 (tuple2!55675 lt!1932867 lt!1932861)) lt!1933008)))

(declare-fun b!4770576 () Bool)

(declare-fun e!2978031 () Bool)

(assert (=> b!4770576 (= e!2978030 e!2978031)))

(declare-fun res!2023283 () Bool)

(assert (=> b!4770576 (=> res!2023283 e!2978031)))

(assert (=> b!4770576 (= res!2023283 (= (h!59971 lt!1932862) (tuple2!55675 lt!1932867 lt!1932861)))))

(declare-fun b!4770577 () Bool)

(assert (=> b!4770577 (= e!2978031 (contains!16929 (t!361127 lt!1932862) (tuple2!55675 lt!1932867 lt!1932861)))))

(assert (= (and d!1524708 res!2023282) b!4770576))

(assert (= (and b!4770576 (not res!2023283)) b!4770577))

(declare-fun m!5742272 () Bool)

(assert (=> d!1524708 m!5742272))

(declare-fun m!5742274 () Bool)

(assert (=> d!1524708 m!5742274))

(declare-fun m!5742276 () Bool)

(assert (=> b!4770577 m!5742276))

(assert (=> b!4770398 d!1524708))

(declare-fun d!1524710 () Bool)

(assert (=> d!1524710 (isDefined!9877 (getValueByKey!2217 lt!1932864 lt!1932867))))

(declare-fun lt!1933009 () Unit!138420)

(assert (=> d!1524710 (= lt!1933009 (choose!34022 lt!1932864 lt!1932867))))

(declare-fun e!2978032 () Bool)

(assert (=> d!1524710 e!2978032))

(declare-fun res!2023284 () Bool)

(assert (=> d!1524710 (=> (not res!2023284) (not e!2978032))))

(assert (=> d!1524710 (= res!2023284 (isStrictlySorted!818 lt!1932864))))

(assert (=> d!1524710 (= (lemmaContainsKeyImpliesGetValueByKeyDefined!2013 lt!1932864 lt!1932867) lt!1933009)))

(declare-fun b!4770578 () Bool)

(assert (=> b!4770578 (= e!2978032 (containsKey!3685 lt!1932864 lt!1932867))))

(assert (= (and d!1524710 res!2023284) b!4770578))

(assert (=> d!1524710 m!5741990))

(assert (=> d!1524710 m!5741990))

(assert (=> d!1524710 m!5741992))

(declare-fun m!5742278 () Bool)

(assert (=> d!1524710 m!5742278))

(declare-fun m!5742280 () Bool)

(assert (=> d!1524710 m!5742280))

(declare-fun m!5742282 () Bool)

(assert (=> b!4770578 m!5742282))

(assert (=> b!4770398 d!1524710))

(declare-fun d!1524712 () Bool)

(assert (=> d!1524712 (= (isDefined!9877 (getValueByKey!2217 lt!1932864 lt!1932867)) (not (isEmpty!29298 (getValueByKey!2217 lt!1932864 lt!1932867))))))

(declare-fun bs!1149457 () Bool)

(assert (= bs!1149457 d!1524712))

(assert (=> bs!1149457 m!5741990))

(declare-fun m!5742284 () Bool)

(assert (=> bs!1149457 m!5742284))

(assert (=> b!4770398 d!1524712))

(assert (=> b!4770398 d!1524606))

(declare-fun b!4770582 () Bool)

(declare-fun e!2978034 () Option!12731)

(assert (=> b!4770582 (= e!2978034 None!12730)))

(declare-fun b!4770581 () Bool)

(assert (=> b!4770581 (= e!2978034 (getValueByKey!2217 (t!361127 lt!1932864) lt!1932867))))

(declare-fun b!4770579 () Bool)

(declare-fun e!2978033 () Option!12731)

(assert (=> b!4770579 (= e!2978033 (Some!12730 (_2!31131 (h!59971 lt!1932864))))))

(declare-fun b!4770580 () Bool)

(assert (=> b!4770580 (= e!2978033 e!2978034)))

(declare-fun c!813734 () Bool)

(assert (=> b!4770580 (= c!813734 (and ((_ is Cons!53559) lt!1932864) (not (= (_1!31131 (h!59971 lt!1932864)) lt!1932867))))))

(declare-fun d!1524714 () Bool)

(declare-fun c!813733 () Bool)

(assert (=> d!1524714 (= c!813733 (and ((_ is Cons!53559) lt!1932864) (= (_1!31131 (h!59971 lt!1932864)) lt!1932867)))))

(assert (=> d!1524714 (= (getValueByKey!2217 lt!1932864 lt!1932867) e!2978033)))

(assert (= (and d!1524714 c!813733) b!4770579))

(assert (= (and d!1524714 (not c!813733)) b!4770580))

(assert (= (and b!4770580 c!813734) b!4770581))

(assert (= (and b!4770580 (not c!813734)) b!4770582))

(declare-fun m!5742286 () Bool)

(assert (=> b!4770581 m!5742286))

(assert (=> b!4770398 d!1524714))

(declare-fun d!1524716 () Bool)

(assert (=> d!1524716 (containsKey!3685 lt!1932866 lt!1932867)))

(declare-fun lt!1933012 () Unit!138420)

(declare-fun choose!34025 (List!53683 (_ BitVec 64)) Unit!138420)

(assert (=> d!1524716 (= lt!1933012 (choose!34025 lt!1932866 lt!1932867))))

(declare-fun e!2978037 () Bool)

(assert (=> d!1524716 e!2978037))

(declare-fun res!2023287 () Bool)

(assert (=> d!1524716 (=> (not res!2023287) (not e!2978037))))

(assert (=> d!1524716 (= res!2023287 (isStrictlySorted!818 lt!1932866))))

(assert (=> d!1524716 (= (lemmaGetValueByKeyIsDefinedImpliesContainsKey!212 lt!1932866 lt!1932867) lt!1933012)))

(declare-fun b!4770585 () Bool)

(assert (=> b!4770585 (= e!2978037 (isDefined!9877 (getValueByKey!2217 lt!1932866 lt!1932867)))))

(assert (= (and d!1524716 res!2023287) b!4770585))

(assert (=> d!1524716 m!5741998))

(declare-fun m!5742288 () Bool)

(assert (=> d!1524716 m!5742288))

(declare-fun m!5742290 () Bool)

(assert (=> d!1524716 m!5742290))

(declare-fun m!5742292 () Bool)

(assert (=> b!4770585 m!5742292))

(assert (=> b!4770585 m!5742292))

(declare-fun m!5742294 () Bool)

(assert (=> b!4770585 m!5742294))

(assert (=> b!4770398 d!1524716))

(declare-fun d!1524718 () Bool)

(declare-fun res!2023288 () Bool)

(declare-fun e!2978038 () Bool)

(assert (=> d!1524718 (=> res!2023288 e!2978038)))

(assert (=> d!1524718 (= res!2023288 (and ((_ is Cons!53559) lt!1932866) (= (_1!31131 (h!59971 lt!1932866)) lt!1932867)))))

(assert (=> d!1524718 (= (containsKey!3685 lt!1932866 lt!1932867) e!2978038)))

(declare-fun b!4770586 () Bool)

(declare-fun e!2978039 () Bool)

(assert (=> b!4770586 (= e!2978038 e!2978039)))

(declare-fun res!2023289 () Bool)

(assert (=> b!4770586 (=> (not res!2023289) (not e!2978039))))

(assert (=> b!4770586 (= res!2023289 (and (or (not ((_ is Cons!53559) lt!1932866)) (bvsle (_1!31131 (h!59971 lt!1932866)) lt!1932867)) ((_ is Cons!53559) lt!1932866) (bvslt (_1!31131 (h!59971 lt!1932866)) lt!1932867)))))

(declare-fun b!4770587 () Bool)

(assert (=> b!4770587 (= e!2978039 (containsKey!3685 (t!361127 lt!1932866) lt!1932867))))

(assert (= (and d!1524718 (not res!2023288)) b!4770586))

(assert (= (and b!4770586 res!2023289) b!4770587))

(declare-fun m!5742296 () Bool)

(assert (=> b!4770587 m!5742296))

(assert (=> b!4770398 d!1524718))

(declare-fun d!1524720 () Bool)

(assert (=> d!1524720 (contains!16929 lt!1932862 (tuple2!55675 lt!1932867 lt!1932861))))

(declare-fun lt!1933013 () Unit!138420)

(assert (=> d!1524720 (= lt!1933013 (choose!34023 lt!1932862 lt!1932867 lt!1932861))))

(declare-fun e!2978040 () Bool)

(assert (=> d!1524720 e!2978040))

(declare-fun res!2023290 () Bool)

(assert (=> d!1524720 (=> (not res!2023290) (not e!2978040))))

(assert (=> d!1524720 (= res!2023290 (isStrictlySorted!818 lt!1932862))))

(assert (=> d!1524720 (= (lemmaGetValueByKeyImpliesContainsTuple!952 lt!1932862 lt!1932867 lt!1932861) lt!1933013)))

(declare-fun b!4770588 () Bool)

(assert (=> b!4770588 (= e!2978040 (= (getValueByKey!2217 lt!1932862 lt!1932867) (Some!12730 lt!1932861)))))

(assert (= (and d!1524720 res!2023290) b!4770588))

(assert (=> d!1524720 m!5742000))

(declare-fun m!5742298 () Bool)

(assert (=> d!1524720 m!5742298))

(declare-fun m!5742300 () Bool)

(assert (=> d!1524720 m!5742300))

(declare-fun m!5742302 () Bool)

(assert (=> b!4770588 m!5742302))

(assert (=> b!4770398 d!1524720))

(assert (=> b!4770398 d!1524644))

(declare-fun bs!1149458 () Bool)

(declare-fun b!4770596 () Bool)

(assert (= bs!1149458 (and b!4770596 b!4770517)))

(declare-fun lambda!224901 () Int)

(assert (=> bs!1149458 (= (= (toList!6341 (extractMap!2162 (toList!6340 lt!1932761))) (t!361126 (toList!6341 (extractMap!2162 (toList!6340 lt!1932761))))) (= lambda!224901 lambda!224892))))

(declare-fun bs!1149459 () Bool)

(assert (= bs!1149459 (and b!4770596 b!4770514)))

(assert (=> bs!1149459 (= (= (toList!6341 (extractMap!2162 (toList!6340 lt!1932761))) (Cons!53558 (h!59970 (toList!6341 (extractMap!2162 (toList!6340 lt!1932761)))) (t!361126 (toList!6341 (extractMap!2162 (toList!6340 lt!1932761)))))) (= lambda!224901 lambda!224893))))

(declare-fun bs!1149460 () Bool)

(assert (= bs!1149460 (and b!4770596 b!4770512)))

(assert (=> bs!1149460 (= lambda!224901 lambda!224894)))

(assert (=> b!4770596 true))

(declare-fun bs!1149461 () Bool)

(declare-fun b!4770597 () Bool)

(assert (= bs!1149461 (and b!4770597 b!4770509)))

(declare-fun lambda!224902 () Int)

(assert (=> bs!1149461 (= lambda!224902 lambda!224895)))

(declare-fun d!1524722 () Bool)

(declare-fun e!2978043 () Bool)

(assert (=> d!1524722 e!2978043))

(declare-fun res!2023297 () Bool)

(assert (=> d!1524722 (=> (not res!2023297) (not e!2978043))))

(declare-fun lt!1933016 () List!53684)

(assert (=> d!1524722 (= res!2023297 (noDuplicate!885 lt!1933016))))

(assert (=> d!1524722 (= lt!1933016 (getKeysList!1008 (toList!6341 (extractMap!2162 (toList!6340 lt!1932761)))))))

(assert (=> d!1524722 (= (keys!19428 (extractMap!2162 (toList!6340 lt!1932761))) lt!1933016)))

(declare-fun b!4770595 () Bool)

(declare-fun res!2023299 () Bool)

(assert (=> b!4770595 (=> (not res!2023299) (not e!2978043))))

(assert (=> b!4770595 (= res!2023299 (= (length!626 lt!1933016) (length!627 (toList!6341 (extractMap!2162 (toList!6340 lt!1932761))))))))

(declare-fun res!2023298 () Bool)

(assert (=> b!4770596 (=> (not res!2023298) (not e!2978043))))

(assert (=> b!4770596 (= res!2023298 (forall!11891 lt!1933016 lambda!224901))))

(assert (=> b!4770597 (= e!2978043 (= (content!9599 lt!1933016) (content!9599 (map!12056 (toList!6341 (extractMap!2162 (toList!6340 lt!1932761))) lambda!224902))))))

(assert (= (and d!1524722 res!2023297) b!4770595))

(assert (= (and b!4770595 res!2023299) b!4770596))

(assert (= (and b!4770596 res!2023298) b!4770597))

(declare-fun m!5742304 () Bool)

(assert (=> d!1524722 m!5742304))

(assert (=> d!1524722 m!5741908))

(declare-fun m!5742306 () Bool)

(assert (=> b!4770595 m!5742306))

(assert (=> b!4770595 m!5742178))

(declare-fun m!5742308 () Bool)

(assert (=> b!4770596 m!5742308))

(declare-fun m!5742310 () Bool)

(assert (=> b!4770597 m!5742310))

(declare-fun m!5742312 () Bool)

(assert (=> b!4770597 m!5742312))

(assert (=> b!4770597 m!5742312))

(declare-fun m!5742314 () Bool)

(assert (=> b!4770597 m!5742314))

(assert (=> b!4770290 d!1524722))

(declare-fun d!1524724 () Bool)

(assert (=> d!1524724 (= (isDefined!9879 (getPair!662 (apply!12673 (v!47840 (underlying!10138 thiss!42052)) lt!1932867) key!1776)) (not (isEmpty!29297 (getPair!662 (apply!12673 (v!47840 (underlying!10138 thiss!42052)) lt!1932867) key!1776))))))

(declare-fun bs!1149462 () Bool)

(assert (= bs!1149462 d!1524724))

(assert (=> bs!1149462 m!5742006))

(declare-fun m!5742316 () Bool)

(assert (=> bs!1149462 m!5742316))

(assert (=> b!4770400 d!1524724))

(declare-fun e!2978044 () Bool)

(declare-fun b!4770600 () Bool)

(assert (=> b!4770600 (= e!2978044 (not (containsKey!3684 (apply!12673 (v!47840 (underlying!10138 thiss!42052)) lt!1932867) key!1776)))))

(declare-fun e!2978046 () Option!12732)

(declare-fun b!4770601 () Bool)

(assert (=> b!4770601 (= e!2978046 (getPair!662 (t!361126 (apply!12673 (v!47840 (underlying!10138 thiss!42052)) lt!1932867)) key!1776))))

(declare-fun b!4770602 () Bool)

(assert (=> b!4770602 (= e!2978046 None!12731)))

(declare-fun e!2978048 () Bool)

(declare-fun b!4770603 () Bool)

(declare-fun lt!1933017 () Option!12732)

(assert (=> b!4770603 (= e!2978048 (contains!16933 (apply!12673 (v!47840 (underlying!10138 thiss!42052)) lt!1932867) (get!18091 lt!1933017)))))

(declare-fun b!4770604 () Bool)

(declare-fun res!2023301 () Bool)

(assert (=> b!4770604 (=> (not res!2023301) (not e!2978048))))

(assert (=> b!4770604 (= res!2023301 (= (_1!31130 (get!18091 lt!1933017)) key!1776))))

(declare-fun b!4770605 () Bool)

(declare-fun e!2978045 () Bool)

(assert (=> b!4770605 (= e!2978045 e!2978048)))

(declare-fun res!2023303 () Bool)

(assert (=> b!4770605 (=> (not res!2023303) (not e!2978048))))

(assert (=> b!4770605 (= res!2023303 (isDefined!9879 lt!1933017))))

(declare-fun b!4770606 () Bool)

(declare-fun e!2978047 () Option!12732)

(assert (=> b!4770606 (= e!2978047 (Some!12731 (h!59970 (apply!12673 (v!47840 (underlying!10138 thiss!42052)) lt!1932867))))))

(declare-fun d!1524726 () Bool)

(assert (=> d!1524726 e!2978045))

(declare-fun res!2023300 () Bool)

(assert (=> d!1524726 (=> res!2023300 e!2978045)))

(assert (=> d!1524726 (= res!2023300 e!2978044)))

(declare-fun res!2023302 () Bool)

(assert (=> d!1524726 (=> (not res!2023302) (not e!2978044))))

(assert (=> d!1524726 (= res!2023302 (isEmpty!29297 lt!1933017))))

(assert (=> d!1524726 (= lt!1933017 e!2978047)))

(declare-fun c!813736 () Bool)

(assert (=> d!1524726 (= c!813736 (and ((_ is Cons!53558) (apply!12673 (v!47840 (underlying!10138 thiss!42052)) lt!1932867)) (= (_1!31130 (h!59970 (apply!12673 (v!47840 (underlying!10138 thiss!42052)) lt!1932867))) key!1776)))))

(assert (=> d!1524726 (noDuplicateKeys!2262 (apply!12673 (v!47840 (underlying!10138 thiss!42052)) lt!1932867))))

(assert (=> d!1524726 (= (getPair!662 (apply!12673 (v!47840 (underlying!10138 thiss!42052)) lt!1932867) key!1776) lt!1933017)))

(declare-fun b!4770607 () Bool)

(assert (=> b!4770607 (= e!2978047 e!2978046)))

(declare-fun c!813735 () Bool)

(assert (=> b!4770607 (= c!813735 ((_ is Cons!53558) (apply!12673 (v!47840 (underlying!10138 thiss!42052)) lt!1932867)))))

(assert (= (and d!1524726 c!813736) b!4770606))

(assert (= (and d!1524726 (not c!813736)) b!4770607))

(assert (= (and b!4770607 c!813735) b!4770601))

(assert (= (and b!4770607 (not c!813735)) b!4770602))

(assert (= (and d!1524726 res!2023302) b!4770600))

(assert (= (and d!1524726 (not res!2023300)) b!4770605))

(assert (= (and b!4770605 res!2023303) b!4770604))

(assert (= (and b!4770604 res!2023301) b!4770603))

(declare-fun m!5742318 () Bool)

(assert (=> d!1524726 m!5742318))

(assert (=> d!1524726 m!5742002))

(declare-fun m!5742320 () Bool)

(assert (=> d!1524726 m!5742320))

(declare-fun m!5742322 () Bool)

(assert (=> b!4770603 m!5742322))

(assert (=> b!4770603 m!5742002))

(assert (=> b!4770603 m!5742322))

(declare-fun m!5742324 () Bool)

(assert (=> b!4770603 m!5742324))

(declare-fun m!5742326 () Bool)

(assert (=> b!4770605 m!5742326))

(declare-fun m!5742328 () Bool)

(assert (=> b!4770601 m!5742328))

(assert (=> b!4770600 m!5742002))

(declare-fun m!5742330 () Bool)

(assert (=> b!4770600 m!5742330))

(assert (=> b!4770604 m!5742322))

(assert (=> b!4770400 d!1524726))

(assert (=> b!4770400 d!1524644))

(declare-fun d!1524728 () Bool)

(declare-fun lt!1933018 () Bool)

(assert (=> d!1524728 (= lt!1933018 (select (content!9598 (t!361127 (toList!6340 lt!1932761))) lt!1932769))))

(declare-fun e!2978049 () Bool)

(assert (=> d!1524728 (= lt!1933018 e!2978049)))

(declare-fun res!2023304 () Bool)

(assert (=> d!1524728 (=> (not res!2023304) (not e!2978049))))

(assert (=> d!1524728 (= res!2023304 ((_ is Cons!53559) (t!361127 (toList!6340 lt!1932761))))))

(assert (=> d!1524728 (= (contains!16929 (t!361127 (toList!6340 lt!1932761)) lt!1932769) lt!1933018)))

(declare-fun b!4770608 () Bool)

(declare-fun e!2978050 () Bool)

(assert (=> b!4770608 (= e!2978049 e!2978050)))

(declare-fun res!2023305 () Bool)

(assert (=> b!4770608 (=> res!2023305 e!2978050)))

(assert (=> b!4770608 (= res!2023305 (= (h!59971 (t!361127 (toList!6340 lt!1932761))) lt!1932769))))

(declare-fun b!4770609 () Bool)

(assert (=> b!4770609 (= e!2978050 (contains!16929 (t!361127 (t!361127 (toList!6340 lt!1932761))) lt!1932769))))

(assert (= (and d!1524728 res!2023304) b!4770608))

(assert (= (and b!4770608 (not res!2023305)) b!4770609))

(assert (=> d!1524728 m!5742266))

(declare-fun m!5742332 () Bool)

(assert (=> d!1524728 m!5742332))

(declare-fun m!5742334 () Bool)

(assert (=> b!4770609 m!5742334))

(assert (=> b!4770305 d!1524728))

(declare-fun d!1524730 () Bool)

(declare-fun choose!34026 (Hashable!6626 K!15054) (_ BitVec 64))

(assert (=> d!1524730 (= (hash!4604 (hashF!12518 thiss!42052) key!1776) (choose!34026 (hashF!12518 thiss!42052) key!1776))))

(declare-fun bs!1149463 () Bool)

(assert (= bs!1149463 d!1524730))

(declare-fun m!5742336 () Bool)

(assert (=> bs!1149463 m!5742336))

(assert (=> d!1524610 d!1524730))

(assert (=> d!1524598 d!1524668))

(declare-fun bs!1149464 () Bool)

(declare-fun d!1524732 () Bool)

(assert (= bs!1149464 (and d!1524732 b!4770395)))

(declare-fun lambda!224903 () Int)

(assert (=> bs!1149464 (not (= lambda!224903 lambda!224850))))

(declare-fun bs!1149465 () Bool)

(assert (= bs!1149465 (and d!1524732 d!1524626)))

(assert (=> bs!1149465 (= lambda!224903 lambda!224847)))

(declare-fun bs!1149466 () Bool)

(assert (= bs!1149466 (and d!1524732 b!4770256)))

(assert (=> bs!1149466 (not (= lambda!224903 lambda!224838))))

(declare-fun bs!1149467 () Bool)

(assert (= bs!1149467 (and d!1524732 d!1524676)))

(assert (=> bs!1149467 (not (= lambda!224903 lambda!224883))))

(declare-fun bs!1149468 () Bool)

(assert (= bs!1149468 (and d!1524732 d!1524698)))

(assert (=> bs!1149468 (not (= lambda!224903 lambda!224896))))

(declare-fun bs!1149469 () Bool)

(assert (= bs!1149469 (and d!1524732 b!4770367)))

(assert (=> bs!1149469 (not (= lambda!224903 lambda!224844))))

(declare-fun bs!1149470 () Bool)

(assert (= bs!1149470 (and d!1524732 d!1524600)))

(assert (=> bs!1149470 (not (= lambda!224903 lambda!224841))))

(assert (=> d!1524732 true))

(assert (=> d!1524732 (= (allKeysSameHashInMap!2032 (map!12053 (v!47840 (underlying!10138 thiss!42052))) (hashF!12518 thiss!42052)) (forall!11889 (toList!6340 (map!12053 (v!47840 (underlying!10138 thiss!42052)))) lambda!224903))))

(declare-fun bs!1149471 () Bool)

(assert (= bs!1149471 d!1524732))

(declare-fun m!5742338 () Bool)

(assert (=> bs!1149471 m!5742338))

(assert (=> b!4770368 d!1524732))

(assert (=> b!4770368 d!1524606))

(assert (=> d!1524616 d!1524618))

(assert (=> d!1524616 d!1524620))

(declare-fun d!1524734 () Bool)

(assert (=> d!1524734 (isDefined!9877 (getValueByKey!2217 (toList!6340 lt!1932761) lt!1932768))))

(assert (=> d!1524734 true))

(declare-fun _$13!1624 () Unit!138420)

(assert (=> d!1524734 (= (choose!34022 (toList!6340 lt!1932761) lt!1932768) _$13!1624)))

(declare-fun bs!1149472 () Bool)

(assert (= bs!1149472 d!1524734))

(assert (=> bs!1149472 m!5741860))

(assert (=> bs!1149472 m!5741860))

(assert (=> bs!1149472 m!5741862))

(assert (=> d!1524616 d!1524734))

(assert (=> d!1524616 d!1524652))

(declare-fun d!1524736 () Bool)

(declare-fun lt!1933021 () Bool)

(assert (=> d!1524736 (= lt!1933021 (select (content!9599 (keys!19428 (extractMap!2162 (toList!6340 lt!1932761)))) key!1776))))

(declare-fun e!2978056 () Bool)

(assert (=> d!1524736 (= lt!1933021 e!2978056)))

(declare-fun res!2023311 () Bool)

(assert (=> d!1524736 (=> (not res!2023311) (not e!2978056))))

(assert (=> d!1524736 (= res!2023311 ((_ is Cons!53560) (keys!19428 (extractMap!2162 (toList!6340 lt!1932761)))))))

(assert (=> d!1524736 (= (contains!16931 (keys!19428 (extractMap!2162 (toList!6340 lt!1932761))) key!1776) lt!1933021)))

(declare-fun b!4770614 () Bool)

(declare-fun e!2978055 () Bool)

(assert (=> b!4770614 (= e!2978056 e!2978055)))

(declare-fun res!2023310 () Bool)

(assert (=> b!4770614 (=> res!2023310 e!2978055)))

(assert (=> b!4770614 (= res!2023310 (= (h!59972 (keys!19428 (extractMap!2162 (toList!6340 lt!1932761)))) key!1776))))

(declare-fun b!4770615 () Bool)

(assert (=> b!4770615 (= e!2978055 (contains!16931 (t!361130 (keys!19428 (extractMap!2162 (toList!6340 lt!1932761)))) key!1776))))

(assert (= (and d!1524736 res!2023311) b!4770614))

(assert (= (and b!4770614 (not res!2023310)) b!4770615))

(assert (=> d!1524736 m!5741904))

(declare-fun m!5742340 () Bool)

(assert (=> d!1524736 m!5742340))

(declare-fun m!5742342 () Bool)

(assert (=> d!1524736 m!5742342))

(declare-fun m!5742344 () Bool)

(assert (=> b!4770615 m!5742344))

(assert (=> b!4770285 d!1524736))

(assert (=> b!4770285 d!1524722))

(declare-fun d!1524738 () Bool)

(assert (=> d!1524738 (= (apply!12675 (ite c!813694 lt!1932859 call!334434) call!334433) (get!18090 (getValueByKey!2217 (toList!6340 (ite c!813694 lt!1932859 call!334434)) call!334433)))))

(declare-fun bs!1149473 () Bool)

(assert (= bs!1149473 d!1524738))

(assert (=> bs!1149473 m!5742100))

(assert (=> bs!1149473 m!5742100))

(declare-fun m!5742346 () Bool)

(assert (=> bs!1149473 m!5742346))

(assert (=> bm!334428 d!1524738))

(declare-fun d!1524740 () Bool)

(declare-fun lt!1933022 () Bool)

(assert (=> d!1524740 (= lt!1933022 (contains!16934 (map!12053 (v!47840 (underlying!10138 thiss!42052))) lt!1932768))))

(assert (=> d!1524740 (= lt!1933022 (contains!16935 (v!47839 (underlying!10137 (v!47840 (underlying!10138 thiss!42052)))) lt!1932768))))

(assert (=> d!1524740 (valid!3972 (v!47840 (underlying!10138 thiss!42052)))))

(assert (=> d!1524740 (= (contains!16932 (v!47840 (underlying!10138 thiss!42052)) lt!1932768) lt!1933022)))

(declare-fun bs!1149474 () Bool)

(assert (= bs!1149474 d!1524740))

(assert (=> bs!1149474 m!5741884))

(assert (=> bs!1149474 m!5741884))

(declare-fun m!5742348 () Bool)

(assert (=> bs!1149474 m!5742348))

(declare-fun m!5742350 () Bool)

(assert (=> bs!1149474 m!5742350))

(assert (=> bs!1149474 m!5741934))

(assert (=> d!1524604 d!1524740))

(declare-fun b!4770652 () Bool)

(declare-fun e!2978089 () List!53682)

(assert (=> b!4770652 (= e!2978089 (zeroValue!5253 (v!47839 (underlying!10137 (v!47840 (underlying!10138 thiss!42052))))))))

(declare-fun b!4770653 () Bool)

(declare-fun e!2978081 () Bool)

(declare-fun e!2978079 () Bool)

(assert (=> b!4770653 (= e!2978081 e!2978079)))

(declare-fun res!2023321 () Bool)

(assert (=> b!4770653 (= res!2023321 (not (= (bvand (extraKeys!5240 (v!47839 (underlying!10137 (v!47840 (underlying!10138 thiss!42052))))) #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(assert (=> b!4770653 (=> (not res!2023321) (not e!2978079))))

(declare-fun b!4770654 () Bool)

(declare-fun e!2978080 () List!53682)

(assert (=> b!4770654 (= e!2978080 (dynLambda!21968 (defaultEntry!5383 (v!47839 (underlying!10137 (v!47840 (underlying!10138 thiss!42052))))) lt!1932768))))

(declare-fun b!4770655 () Bool)

(declare-fun res!2023320 () Bool)

(declare-fun e!2978086 () Bool)

(assert (=> b!4770655 (=> (not res!2023320) (not e!2978086))))

(assert (=> b!4770655 (= res!2023320 (not (= (bvand (extraKeys!5240 (v!47839 (underlying!10137 (v!47840 (underlying!10138 thiss!42052))))) #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun e!2978088 () Bool)

(assert (=> b!4770655 (= e!2978088 e!2978086)))

(declare-fun bm!334452 () Bool)

(declare-fun call!334460 () ListLongMap!4753)

(assert (=> bm!334452 (= call!334460 (getCurrentListMap!31 (_keys!5307 (v!47839 (underlying!10137 (v!47840 (underlying!10138 thiss!42052))))) (_values!5278 (v!47839 (underlying!10137 (v!47840 (underlying!10138 thiss!42052))))) (mask!14743 (v!47839 (underlying!10137 (v!47840 (underlying!10138 thiss!42052))))) (extraKeys!5240 (v!47839 (underlying!10137 (v!47840 (underlying!10138 thiss!42052))))) (zeroValue!5253 (v!47839 (underlying!10137 (v!47840 (underlying!10138 thiss!42052))))) (minValue!5253 (v!47839 (underlying!10137 (v!47840 (underlying!10138 thiss!42052))))) #b00000000000000000000000000000000 (defaultEntry!5383 (v!47839 (underlying!10137 (v!47840 (underlying!10138 thiss!42052)))))))))

(declare-fun d!1524742 () Bool)

(declare-fun e!2978083 () Bool)

(assert (=> d!1524742 e!2978083))

(declare-fun c!813754 () Bool)

(assert (=> d!1524742 (= c!813754 (contains!16935 (v!47839 (underlying!10137 (v!47840 (underlying!10138 thiss!42052)))) lt!1932768))))

(declare-fun lt!1933045 () List!53682)

(declare-fun e!2978087 () List!53682)

(assert (=> d!1524742 (= lt!1933045 e!2978087)))

(declare-fun c!813752 () Bool)

(assert (=> d!1524742 (= c!813752 (= lt!1932768 (bvneg lt!1932768)))))

(assert (=> d!1524742 (valid!3973 (v!47839 (underlying!10137 (v!47840 (underlying!10138 thiss!42052)))))))

(assert (=> d!1524742 (= (apply!12674 (v!47839 (underlying!10137 (v!47840 (underlying!10138 thiss!42052)))) lt!1932768) lt!1933045)))

(declare-fun b!4770656 () Bool)

(declare-fun c!813756 () Bool)

(assert (=> b!4770656 (= c!813756 (and (= lt!1932768 #b1000000000000000000000000000000000000000000000000000000000000000) (not (= (bvand (extraKeys!5240 (v!47839 (underlying!10137 (v!47840 (underlying!10138 thiss!42052))))) #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(declare-fun e!2978084 () List!53682)

(assert (=> b!4770656 (= e!2978089 e!2978084)))

(declare-fun bm!334453 () Bool)

(declare-fun call!334458 () List!53682)

(declare-fun call!334457 () List!53682)

(assert (=> bm!334453 (= call!334458 call!334457)))

(declare-fun b!4770657 () Bool)

(assert (=> b!4770657 (= e!2978084 (minValue!5253 (v!47839 (underlying!10137 (v!47840 (underlying!10138 thiss!42052))))))))

(declare-fun b!4770658 () Bool)

(assert (=> b!4770658 (= e!2978083 (= lt!1933045 (get!18090 (getValueByKey!2217 (toList!6340 (map!12054 (v!47839 (underlying!10137 (v!47840 (underlying!10138 thiss!42052)))))) lt!1932768))))))

(declare-fun b!4770659 () Bool)

(declare-fun e!2978085 () Bool)

(declare-datatypes ((SeekEntryResult!28 0))(
  ( (Found!28 (index!1494 (_ BitVec 32))) (Undefined!28) (MissingZero!28 (index!1495 (_ BitVec 32))) (MissingVacant!28 (index!1496 (_ BitVec 32))) (Intermediate!28 (undefined!109 Bool) (index!1497 (_ BitVec 32)) (x!819778 (_ BitVec 32))) )
))
(declare-fun lt!1933051 () SeekEntryResult!28)

(declare-fun inRange!0 ((_ BitVec 32) (_ BitVec 32)) Bool)

(assert (=> b!4770659 (= e!2978085 (inRange!0 (index!1494 lt!1933051) (mask!14743 (v!47839 (underlying!10137 (v!47840 (underlying!10138 thiss!42052)))))))))

(declare-fun b!4770660 () Bool)

(declare-fun lt!1933048 () Unit!138420)

(declare-fun lt!1933053 () Unit!138420)

(assert (=> b!4770660 (= lt!1933048 lt!1933053)))

(assert (=> b!4770660 e!2978081))

(declare-fun c!813755 () Bool)

(assert (=> b!4770660 (= c!813755 (= lt!1932768 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun lt!1933047 () SeekEntryResult!28)

(declare-fun lemmaKeyInListMapThenSameValueInArray!16 (array!18196 array!18198 (_ BitVec 32) (_ BitVec 32) List!53682 List!53682 (_ BitVec 64) (_ BitVec 32) Int) Unit!138420)

(assert (=> b!4770660 (= lt!1933053 (lemmaKeyInListMapThenSameValueInArray!16 (_keys!5307 (v!47839 (underlying!10137 (v!47840 (underlying!10138 thiss!42052))))) (_values!5278 (v!47839 (underlying!10137 (v!47840 (underlying!10138 thiss!42052))))) (mask!14743 (v!47839 (underlying!10137 (v!47840 (underlying!10138 thiss!42052))))) (extraKeys!5240 (v!47839 (underlying!10137 (v!47840 (underlying!10138 thiss!42052))))) (zeroValue!5253 (v!47839 (underlying!10137 (v!47840 (underlying!10138 thiss!42052))))) (minValue!5253 (v!47839 (underlying!10137 (v!47840 (underlying!10138 thiss!42052))))) lt!1932768 (index!1494 lt!1933047) (defaultEntry!5383 (v!47839 (underlying!10137 (v!47840 (underlying!10138 thiss!42052)))))))))

(declare-fun lt!1933052 () Unit!138420)

(declare-fun lt!1933049 () Unit!138420)

(assert (=> b!4770660 (= lt!1933052 lt!1933049)))

(assert (=> b!4770660 (contains!16934 (getCurrentListMap!31 (_keys!5307 (v!47839 (underlying!10137 (v!47840 (underlying!10138 thiss!42052))))) (_values!5278 (v!47839 (underlying!10137 (v!47840 (underlying!10138 thiss!42052))))) (mask!14743 (v!47839 (underlying!10137 (v!47840 (underlying!10138 thiss!42052))))) (extraKeys!5240 (v!47839 (underlying!10137 (v!47840 (underlying!10138 thiss!42052))))) (zeroValue!5253 (v!47839 (underlying!10137 (v!47840 (underlying!10138 thiss!42052))))) (minValue!5253 (v!47839 (underlying!10137 (v!47840 (underlying!10138 thiss!42052))))) #b00000000000000000000000000000000 (defaultEntry!5383 (v!47839 (underlying!10137 (v!47840 (underlying!10138 thiss!42052)))))) (select (arr!8115 (_keys!5307 (v!47839 (underlying!10137 (v!47840 (underlying!10138 thiss!42052)))))) (index!1494 lt!1933047)))))

(declare-fun lemmaValidKeyInArrayIsInListMap!21 (array!18196 array!18198 (_ BitVec 32) (_ BitVec 32) List!53682 List!53682 (_ BitVec 32) Int) Unit!138420)

(assert (=> b!4770660 (= lt!1933049 (lemmaValidKeyInArrayIsInListMap!21 (_keys!5307 (v!47839 (underlying!10137 (v!47840 (underlying!10138 thiss!42052))))) (_values!5278 (v!47839 (underlying!10137 (v!47840 (underlying!10138 thiss!42052))))) (mask!14743 (v!47839 (underlying!10137 (v!47840 (underlying!10138 thiss!42052))))) (extraKeys!5240 (v!47839 (underlying!10137 (v!47840 (underlying!10138 thiss!42052))))) (zeroValue!5253 (v!47839 (underlying!10137 (v!47840 (underlying!10138 thiss!42052))))) (minValue!5253 (v!47839 (underlying!10137 (v!47840 (underlying!10138 thiss!42052))))) (index!1494 lt!1933047) (defaultEntry!5383 (v!47839 (underlying!10137 (v!47840 (underlying!10138 thiss!42052)))))))))

(declare-fun lt!1933050 () Unit!138420)

(declare-fun lt!1933046 () Unit!138420)

(assert (=> b!4770660 (= lt!1933050 lt!1933046)))

(declare-fun arrayContainsKey!0 (array!18196 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!4770660 (arrayContainsKey!0 (_keys!5307 (v!47839 (underlying!10137 (v!47840 (underlying!10138 thiss!42052))))) lt!1932768 #b00000000000000000000000000000000)))

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!18196 (_ BitVec 64) (_ BitVec 32)) Unit!138420)

(assert (=> b!4770660 (= lt!1933046 (lemmaArrayContainsFromImpliesContainsFromZero!0 (_keys!5307 (v!47839 (underlying!10137 (v!47840 (underlying!10138 thiss!42052))))) lt!1932768 (index!1494 lt!1933047)))))

(assert (=> b!4770660 (= e!2978080 (select (arr!8116 (_values!5278 (v!47839 (underlying!10137 (v!47840 (underlying!10138 thiss!42052)))))) (index!1494 lt!1933047)))))

(declare-fun b!4770661 () Bool)

(assert (=> b!4770661 (= e!2978086 (= call!334458 (minValue!5253 (v!47839 (underlying!10137 (v!47840 (underlying!10138 thiss!42052)))))))))

(declare-fun b!4770662 () Bool)

(assert (=> b!4770662 (= e!2978079 (= call!334457 (zeroValue!5253 (v!47839 (underlying!10137 (v!47840 (underlying!10138 thiss!42052)))))))))

(declare-fun call!334459 () ListLongMap!4753)

(declare-fun bm!334454 () Bool)

(assert (=> bm!334454 (= call!334457 (apply!12675 (ite c!813755 call!334460 call!334459) lt!1932768))))

(declare-fun b!4770663 () Bool)

(declare-fun e!2978082 () Bool)

(assert (=> b!4770663 (= e!2978082 (= call!334458 (select (arr!8116 (_values!5278 (v!47839 (underlying!10137 (v!47840 (underlying!10138 thiss!42052)))))) (index!1494 lt!1933047))))))

(declare-fun b!4770664 () Bool)

(assert (=> b!4770664 (= e!2978084 (dynLambda!21968 (defaultEntry!5383 (v!47839 (underlying!10137 (v!47840 (underlying!10138 thiss!42052))))) lt!1932768))))

(declare-fun b!4770665 () Bool)

(assert (=> b!4770665 (= e!2978083 (= lt!1933045 (dynLambda!21968 (defaultEntry!5383 (v!47839 (underlying!10137 (v!47840 (underlying!10138 thiss!42052))))) lt!1932768)))))

(declare-fun b!4770666 () Bool)

(assert (=> b!4770666 (= e!2978081 e!2978088)))

(declare-fun c!813753 () Bool)

(assert (=> b!4770666 (= c!813753 (= lt!1932768 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!4770667 () Bool)

(assert (=> b!4770667 (= e!2978087 e!2978089)))

(declare-fun c!813757 () Bool)

(assert (=> b!4770667 (= c!813757 (and (= lt!1932768 #b0000000000000000000000000000000000000000000000000000000000000000) (not (= (bvand (extraKeys!5240 (v!47839 (underlying!10137 (v!47840 (underlying!10138 thiss!42052))))) #b00000000000000000000000000000001) #b00000000000000000000000000000000))))))

(declare-fun b!4770668 () Bool)

(declare-fun res!2023323 () Bool)

(assert (=> b!4770668 (=> (not res!2023323) (not e!2978082))))

(assert (=> b!4770668 (= res!2023323 (arrayContainsKey!0 (_keys!5307 (v!47839 (underlying!10137 (v!47840 (underlying!10138 thiss!42052))))) lt!1932768 #b00000000000000000000000000000000))))

(assert (=> b!4770668 (= e!2978088 e!2978082)))

(declare-fun bm!334455 () Bool)

(assert (=> bm!334455 (= call!334459 call!334460)))

(declare-fun b!4770669 () Bool)

(assert (=> b!4770669 (= e!2978087 e!2978080)))

(declare-fun seekEntry!0 ((_ BitVec 64) array!18196 (_ BitVec 32)) SeekEntryResult!28)

(assert (=> b!4770669 (= lt!1933047 (seekEntry!0 lt!1932768 (_keys!5307 (v!47839 (underlying!10137 (v!47840 (underlying!10138 thiss!42052))))) (mask!14743 (v!47839 (underlying!10137 (v!47840 (underlying!10138 thiss!42052)))))))))

(declare-fun lt!1933055 () Unit!138420)

(declare-fun lemmaSeekEntryGivesInRangeIndex!16 (array!18196 array!18198 (_ BitVec 32) (_ BitVec 32) List!53682 List!53682 (_ BitVec 64)) Unit!138420)

(assert (=> b!4770669 (= lt!1933055 (lemmaSeekEntryGivesInRangeIndex!16 (_keys!5307 (v!47839 (underlying!10137 (v!47840 (underlying!10138 thiss!42052))))) (_values!5278 (v!47839 (underlying!10137 (v!47840 (underlying!10138 thiss!42052))))) (mask!14743 (v!47839 (underlying!10137 (v!47840 (underlying!10138 thiss!42052))))) (extraKeys!5240 (v!47839 (underlying!10137 (v!47840 (underlying!10138 thiss!42052))))) (zeroValue!5253 (v!47839 (underlying!10137 (v!47840 (underlying!10138 thiss!42052))))) (minValue!5253 (v!47839 (underlying!10137 (v!47840 (underlying!10138 thiss!42052))))) lt!1932768))))

(assert (=> b!4770669 (= lt!1933051 (seekEntry!0 lt!1932768 (_keys!5307 (v!47839 (underlying!10137 (v!47840 (underlying!10138 thiss!42052))))) (mask!14743 (v!47839 (underlying!10137 (v!47840 (underlying!10138 thiss!42052)))))))))

(declare-fun res!2023322 () Bool)

(assert (=> b!4770669 (= res!2023322 (not ((_ is Found!28) lt!1933051)))))

(assert (=> b!4770669 (=> res!2023322 e!2978085)))

(assert (=> b!4770669 e!2978085))

(declare-fun lt!1933054 () Unit!138420)

(assert (=> b!4770669 (= lt!1933054 lt!1933055)))

(declare-fun c!813751 () Bool)

(assert (=> b!4770669 (= c!813751 ((_ is Found!28) lt!1933047))))

(assert (= (and d!1524742 c!813752) b!4770667))

(assert (= (and d!1524742 (not c!813752)) b!4770669))

(assert (= (and b!4770667 c!813757) b!4770652))

(assert (= (and b!4770667 (not c!813757)) b!4770656))

(assert (= (and b!4770656 c!813756) b!4770657))

(assert (= (and b!4770656 (not c!813756)) b!4770664))

(assert (= (and b!4770669 (not res!2023322)) b!4770659))

(assert (= (and b!4770669 c!813751) b!4770660))

(assert (= (and b!4770669 (not c!813751)) b!4770654))

(assert (= (and b!4770660 c!813755) b!4770653))

(assert (= (and b!4770660 (not c!813755)) b!4770666))

(assert (= (and b!4770653 res!2023321) b!4770662))

(assert (= (and b!4770666 c!813753) b!4770655))

(assert (= (and b!4770666 (not c!813753)) b!4770668))

(assert (= (and b!4770655 res!2023320) b!4770661))

(assert (= (and b!4770668 res!2023323) b!4770663))

(assert (= (or b!4770661 b!4770663) bm!334455))

(assert (= (or b!4770661 b!4770663) bm!334453))

(assert (= (or b!4770662 bm!334455) bm!334452))

(assert (= (or b!4770662 bm!334453) bm!334454))

(assert (= (and d!1524742 c!813754) b!4770658))

(assert (= (and d!1524742 (not c!813754)) b!4770665))

(declare-fun b_lambda!184591 () Bool)

(assert (=> (not b_lambda!184591) (not b!4770654)))

(assert (=> b!4770654 t!361129))

(declare-fun b_and!341553 () Bool)

(assert (= b_and!341551 (and (=> t!361129 result!319172) b_and!341553)))

(declare-fun b_lambda!184593 () Bool)

(assert (=> (not b_lambda!184593) (not b!4770664)))

(assert (=> b!4770664 t!361129))

(declare-fun b_and!341555 () Bool)

(assert (= b_and!341553 (and (=> t!361129 result!319172) b_and!341555)))

(declare-fun b_lambda!184595 () Bool)

(assert (=> (not b_lambda!184595) (not b!4770665)))

(assert (=> b!4770665 t!361129))

(declare-fun b_and!341557 () Bool)

(assert (= b_and!341555 (and (=> t!361129 result!319172) b_and!341557)))

(assert (=> d!1524742 m!5742350))

(assert (=> d!1524742 m!5742048))

(declare-fun m!5742352 () Bool)

(assert (=> bm!334454 m!5742352))

(assert (=> bm!334452 m!5742082))

(declare-fun m!5742354 () Bool)

(assert (=> b!4770668 m!5742354))

(declare-fun m!5742356 () Bool)

(assert (=> b!4770663 m!5742356))

(declare-fun m!5742358 () Bool)

(assert (=> b!4770659 m!5742358))

(assert (=> b!4770664 m!5741940))

(assert (=> b!4770654 m!5741940))

(declare-fun m!5742360 () Bool)

(assert (=> b!4770669 m!5742360))

(declare-fun m!5742362 () Bool)

(assert (=> b!4770669 m!5742362))

(assert (=> b!4770658 m!5741942))

(declare-fun m!5742364 () Bool)

(assert (=> b!4770658 m!5742364))

(assert (=> b!4770658 m!5742364))

(declare-fun m!5742366 () Bool)

(assert (=> b!4770658 m!5742366))

(declare-fun m!5742368 () Bool)

(assert (=> b!4770660 m!5742368))

(declare-fun m!5742370 () Bool)

(assert (=> b!4770660 m!5742370))

(assert (=> b!4770660 m!5742082))

(declare-fun m!5742372 () Bool)

(assert (=> b!4770660 m!5742372))

(assert (=> b!4770660 m!5742356))

(assert (=> b!4770660 m!5742082))

(assert (=> b!4770660 m!5742370))

(declare-fun m!5742374 () Bool)

(assert (=> b!4770660 m!5742374))

(assert (=> b!4770660 m!5742354))

(declare-fun m!5742376 () Bool)

(assert (=> b!4770660 m!5742376))

(assert (=> b!4770665 m!5741940))

(assert (=> d!1524604 d!1524742))

(assert (=> d!1524604 d!1524640))

(declare-fun d!1524744 () Bool)

(assert (=> d!1524744 (= (isDefined!9879 lt!1932809) (not (isEmpty!29297 lt!1932809)))))

(declare-fun bs!1149475 () Bool)

(assert (= bs!1149475 d!1524744))

(assert (=> bs!1149475 m!5741950))

(assert (=> b!4770336 d!1524744))

(declare-fun b!4770673 () Bool)

(declare-fun e!2978091 () Option!12731)

(assert (=> b!4770673 (= e!2978091 None!12730)))

(declare-fun b!4770672 () Bool)

(assert (=> b!4770672 (= e!2978091 (getValueByKey!2217 (t!361127 (t!361127 (toList!6340 lt!1932761))) lt!1932768))))

(declare-fun b!4770670 () Bool)

(declare-fun e!2978090 () Option!12731)

(assert (=> b!4770670 (= e!2978090 (Some!12730 (_2!31131 (h!59971 (t!361127 (toList!6340 lt!1932761))))))))

(declare-fun b!4770671 () Bool)

(assert (=> b!4770671 (= e!2978090 e!2978091)))

(declare-fun c!813759 () Bool)

(assert (=> b!4770671 (= c!813759 (and ((_ is Cons!53559) (t!361127 (toList!6340 lt!1932761))) (not (= (_1!31131 (h!59971 (t!361127 (toList!6340 lt!1932761)))) lt!1932768))))))

(declare-fun d!1524746 () Bool)

(declare-fun c!813758 () Bool)

(assert (=> d!1524746 (= c!813758 (and ((_ is Cons!53559) (t!361127 (toList!6340 lt!1932761))) (= (_1!31131 (h!59971 (t!361127 (toList!6340 lt!1932761)))) lt!1932768)))))

(assert (=> d!1524746 (= (getValueByKey!2217 (t!361127 (toList!6340 lt!1932761)) lt!1932768) e!2978090)))

(assert (= (and d!1524746 c!813758) b!4770670))

(assert (= (and d!1524746 (not c!813758)) b!4770671))

(assert (= (and b!4770671 c!813759) b!4770672))

(assert (= (and b!4770671 (not c!813759)) b!4770673))

(declare-fun m!5742378 () Bool)

(assert (=> b!4770672 m!5742378))

(assert (=> b!4770358 d!1524746))

(assert (=> bm!334427 d!1524606))

(declare-fun bs!1149476 () Bool)

(declare-fun d!1524748 () Bool)

(assert (= bs!1149476 (and d!1524748 d!1524732)))

(declare-fun lambda!224906 () Int)

(assert (=> bs!1149476 (not (= lambda!224906 lambda!224903))))

(declare-fun bs!1149477 () Bool)

(assert (= bs!1149477 (and d!1524748 b!4770395)))

(assert (=> bs!1149477 (= lambda!224906 lambda!224850)))

(declare-fun bs!1149478 () Bool)

(assert (= bs!1149478 (and d!1524748 d!1524626)))

(assert (=> bs!1149478 (not (= lambda!224906 lambda!224847))))

(declare-fun bs!1149479 () Bool)

(assert (= bs!1149479 (and d!1524748 b!4770256)))

(assert (=> bs!1149479 (= lambda!224906 lambda!224838)))

(declare-fun bs!1149480 () Bool)

(assert (= bs!1149480 (and d!1524748 d!1524676)))

(assert (=> bs!1149480 (= lambda!224906 lambda!224883)))

(declare-fun bs!1149481 () Bool)

(assert (= bs!1149481 (and d!1524748 d!1524698)))

(assert (=> bs!1149481 (= lambda!224906 lambda!224896)))

(declare-fun bs!1149482 () Bool)

(assert (= bs!1149482 (and d!1524748 b!4770367)))

(assert (=> bs!1149482 (= lambda!224906 lambda!224844)))

(declare-fun bs!1149483 () Bool)

(assert (= bs!1149483 (and d!1524748 d!1524600)))

(assert (=> bs!1149483 (= lambda!224906 lambda!224841)))

(declare-fun e!2978094 () Bool)

(assert (=> d!1524748 e!2978094))

(declare-fun res!2023326 () Bool)

(assert (=> d!1524748 (=> (not res!2023326) (not e!2978094))))

(assert (=> d!1524748 (= res!2023326 (contains!16934 lt!1932859 (hash!4603 (hashF!12518 thiss!42052) key!1776)))))

(declare-fun lt!1933058 () Unit!138420)

(declare-fun choose!34027 (ListLongMap!4753 K!15054 Hashable!6626) Unit!138420)

(assert (=> d!1524748 (= lt!1933058 (choose!34027 lt!1932859 key!1776 (hashF!12518 thiss!42052)))))

(assert (=> d!1524748 (forall!11889 (toList!6340 lt!1932859) lambda!224906)))

(assert (=> d!1524748 (= (lemmaInGenericMapThenInLongMap!211 lt!1932859 key!1776 (hashF!12518 thiss!42052)) lt!1933058)))

(declare-fun b!4770676 () Bool)

(assert (=> b!4770676 (= e!2978094 (isDefined!9879 (getPair!662 (apply!12675 lt!1932859 (hash!4603 (hashF!12518 thiss!42052) key!1776)) key!1776)))))

(assert (= (and d!1524748 res!2023326) b!4770676))

(assert (=> d!1524748 m!5741878))

(assert (=> d!1524748 m!5741878))

(declare-fun m!5742380 () Bool)

(assert (=> d!1524748 m!5742380))

(declare-fun m!5742382 () Bool)

(assert (=> d!1524748 m!5742382))

(declare-fun m!5742384 () Bool)

(assert (=> d!1524748 m!5742384))

(assert (=> b!4770676 m!5741878))

(assert (=> b!4770676 m!5741878))

(declare-fun m!5742386 () Bool)

(assert (=> b!4770676 m!5742386))

(assert (=> b!4770676 m!5742386))

(declare-fun m!5742388 () Bool)

(assert (=> b!4770676 m!5742388))

(assert (=> b!4770676 m!5742388))

(declare-fun m!5742390 () Bool)

(assert (=> b!4770676 m!5742390))

(assert (=> b!4770402 d!1524748))

(declare-fun d!1524750 () Bool)

(declare-fun lt!1933059 () Bool)

(assert (=> d!1524750 (= lt!1933059 (select (content!9599 e!2977836) key!1776))))

(declare-fun e!2978096 () Bool)

(assert (=> d!1524750 (= lt!1933059 e!2978096)))

(declare-fun res!2023328 () Bool)

(assert (=> d!1524750 (=> (not res!2023328) (not e!2978096))))

(assert (=> d!1524750 (= res!2023328 ((_ is Cons!53560) e!2977836))))

(assert (=> d!1524750 (= (contains!16931 e!2977836 key!1776) lt!1933059)))

(declare-fun b!4770677 () Bool)

(declare-fun e!2978095 () Bool)

(assert (=> b!4770677 (= e!2978096 e!2978095)))

(declare-fun res!2023327 () Bool)

(assert (=> b!4770677 (=> res!2023327 e!2978095)))

(assert (=> b!4770677 (= res!2023327 (= (h!59972 e!2977836) key!1776))))

(declare-fun b!4770678 () Bool)

(assert (=> b!4770678 (= e!2978095 (contains!16931 (t!361130 e!2977836) key!1776))))

(assert (= (and d!1524750 res!2023328) b!4770677))

(assert (= (and b!4770677 (not res!2023327)) b!4770678))

(declare-fun m!5742392 () Bool)

(assert (=> d!1524750 m!5742392))

(declare-fun m!5742394 () Bool)

(assert (=> d!1524750 m!5742394))

(declare-fun m!5742396 () Bool)

(assert (=> b!4770678 m!5742396))

(assert (=> bm!334414 d!1524750))

(declare-fun d!1524752 () Bool)

(declare-fun res!2023333 () Bool)

(declare-fun e!2978101 () Bool)

(assert (=> d!1524752 (=> res!2023333 e!2978101)))

(assert (=> d!1524752 (= res!2023333 (and ((_ is Cons!53558) lt!1932765) (= (_1!31130 (h!59970 lt!1932765)) key!1776)))))

(assert (=> d!1524752 (= (containsKey!3684 lt!1932765 key!1776) e!2978101)))

(declare-fun b!4770683 () Bool)

(declare-fun e!2978102 () Bool)

(assert (=> b!4770683 (= e!2978101 e!2978102)))

(declare-fun res!2023334 () Bool)

(assert (=> b!4770683 (=> (not res!2023334) (not e!2978102))))

(assert (=> b!4770683 (= res!2023334 ((_ is Cons!53558) lt!1932765))))

(declare-fun b!4770684 () Bool)

(assert (=> b!4770684 (= e!2978102 (containsKey!3684 (t!361126 lt!1932765) key!1776))))

(assert (= (and d!1524752 (not res!2023333)) b!4770683))

(assert (= (and b!4770683 res!2023334) b!4770684))

(assert (=> b!4770684 m!5742094))

(assert (=> b!4770331 d!1524752))

(declare-fun d!1524754 () Bool)

(assert (=> d!1524754 (= (get!18090 (getValueByKey!2217 (toList!6340 (map!12053 (v!47840 (underlying!10138 thiss!42052)))) lt!1932768)) (v!47841 (getValueByKey!2217 (toList!6340 (map!12053 (v!47840 (underlying!10138 thiss!42052)))) lt!1932768)))))

(assert (=> b!4770310 d!1524754))

(declare-fun b!4770688 () Bool)

(declare-fun e!2978104 () Option!12731)

(assert (=> b!4770688 (= e!2978104 None!12730)))

(declare-fun b!4770687 () Bool)

(assert (=> b!4770687 (= e!2978104 (getValueByKey!2217 (t!361127 (toList!6340 (map!12053 (v!47840 (underlying!10138 thiss!42052))))) lt!1932768))))

(declare-fun b!4770685 () Bool)

(declare-fun e!2978103 () Option!12731)

(assert (=> b!4770685 (= e!2978103 (Some!12730 (_2!31131 (h!59971 (toList!6340 (map!12053 (v!47840 (underlying!10138 thiss!42052))))))))))

(declare-fun b!4770686 () Bool)

(assert (=> b!4770686 (= e!2978103 e!2978104)))

(declare-fun c!813761 () Bool)

(assert (=> b!4770686 (= c!813761 (and ((_ is Cons!53559) (toList!6340 (map!12053 (v!47840 (underlying!10138 thiss!42052))))) (not (= (_1!31131 (h!59971 (toList!6340 (map!12053 (v!47840 (underlying!10138 thiss!42052)))))) lt!1932768))))))

(declare-fun d!1524756 () Bool)

(declare-fun c!813760 () Bool)

(assert (=> d!1524756 (= c!813760 (and ((_ is Cons!53559) (toList!6340 (map!12053 (v!47840 (underlying!10138 thiss!42052))))) (= (_1!31131 (h!59971 (toList!6340 (map!12053 (v!47840 (underlying!10138 thiss!42052)))))) lt!1932768)))))

(assert (=> d!1524756 (= (getValueByKey!2217 (toList!6340 (map!12053 (v!47840 (underlying!10138 thiss!42052)))) lt!1932768) e!2978103)))

(assert (= (and d!1524756 c!813760) b!4770685))

(assert (= (and d!1524756 (not c!813760)) b!4770686))

(assert (= (and b!4770686 c!813761) b!4770687))

(assert (= (and b!4770686 (not c!813761)) b!4770688))

(declare-fun m!5742398 () Bool)

(assert (=> b!4770687 m!5742398))

(assert (=> b!4770310 d!1524756))

(assert (=> b!4770310 d!1524606))

(assert (=> b!4770335 d!1524686))

(declare-fun b!4770689 () Bool)

(declare-fun e!2978110 () Bool)

(assert (=> b!4770689 (= e!2978110 (not (contains!16931 (keys!19428 (extractMap!2162 (toList!6340 lt!1932860))) key!1776)))))

(declare-fun b!4770690 () Bool)

(declare-fun e!2978108 () Unit!138420)

(declare-fun e!2978106 () Unit!138420)

(assert (=> b!4770690 (= e!2978108 e!2978106)))

(declare-fun c!813762 () Bool)

(declare-fun call!334461 () Bool)

(assert (=> b!4770690 (= c!813762 call!334461)))

(declare-fun b!4770691 () Bool)

(declare-fun lt!1933067 () Unit!138420)

(assert (=> b!4770691 (= e!2978108 lt!1933067)))

(declare-fun lt!1933065 () Unit!138420)

(assert (=> b!4770691 (= lt!1933065 (lemmaContainsKeyImpliesGetValueByKeyDefined!2014 (toList!6341 (extractMap!2162 (toList!6340 lt!1932860))) key!1776))))

(assert (=> b!4770691 (isDefined!9878 (getValueByKey!2218 (toList!6341 (extractMap!2162 (toList!6340 lt!1932860))) key!1776))))

(declare-fun lt!1933062 () Unit!138420)

(assert (=> b!4770691 (= lt!1933062 lt!1933065)))

(assert (=> b!4770691 (= lt!1933067 (lemmaInListThenGetKeysListContains!1003 (toList!6341 (extractMap!2162 (toList!6340 lt!1932860))) key!1776))))

(assert (=> b!4770691 call!334461))

(declare-fun b!4770692 () Bool)

(declare-fun e!2978109 () Bool)

(declare-fun e!2978107 () Bool)

(assert (=> b!4770692 (= e!2978109 e!2978107)))

(declare-fun res!2023335 () Bool)

(assert (=> b!4770692 (=> (not res!2023335) (not e!2978107))))

(assert (=> b!4770692 (= res!2023335 (isDefined!9878 (getValueByKey!2218 (toList!6341 (extractMap!2162 (toList!6340 lt!1932860))) key!1776)))))

(declare-fun b!4770693 () Bool)

(assert (=> b!4770693 (= e!2978107 (contains!16931 (keys!19428 (extractMap!2162 (toList!6340 lt!1932860))) key!1776))))

(declare-fun b!4770694 () Bool)

(declare-fun e!2978105 () List!53684)

(assert (=> b!4770694 (= e!2978105 (keys!19428 (extractMap!2162 (toList!6340 lt!1932860))))))

(declare-fun bm!334456 () Bool)

(assert (=> bm!334456 (= call!334461 (contains!16931 e!2978105 key!1776))))

(declare-fun c!813763 () Bool)

(declare-fun c!813764 () Bool)

(assert (=> bm!334456 (= c!813763 c!813764)))

(declare-fun d!1524758 () Bool)

(assert (=> d!1524758 e!2978109))

(declare-fun res!2023337 () Bool)

(assert (=> d!1524758 (=> res!2023337 e!2978109)))

(assert (=> d!1524758 (= res!2023337 e!2978110)))

(declare-fun res!2023336 () Bool)

(assert (=> d!1524758 (=> (not res!2023336) (not e!2978110))))

(declare-fun lt!1933064 () Bool)

(assert (=> d!1524758 (= res!2023336 (not lt!1933064))))

(declare-fun lt!1933066 () Bool)

(assert (=> d!1524758 (= lt!1933064 lt!1933066)))

(declare-fun lt!1933060 () Unit!138420)

(assert (=> d!1524758 (= lt!1933060 e!2978108)))

(assert (=> d!1524758 (= c!813764 lt!1933066)))

(assert (=> d!1524758 (= lt!1933066 (containsKey!3683 (toList!6341 (extractMap!2162 (toList!6340 lt!1932860))) key!1776))))

(assert (=> d!1524758 (= (contains!16930 (extractMap!2162 (toList!6340 lt!1932860)) key!1776) lt!1933064)))

(declare-fun b!4770695 () Bool)

(assert (=> b!4770695 false))

(declare-fun lt!1933061 () Unit!138420)

(declare-fun lt!1933063 () Unit!138420)

(assert (=> b!4770695 (= lt!1933061 lt!1933063)))

(assert (=> b!4770695 (containsKey!3683 (toList!6341 (extractMap!2162 (toList!6340 lt!1932860))) key!1776)))

(assert (=> b!4770695 (= lt!1933063 (lemmaInGetKeysListThenContainsKey!1007 (toList!6341 (extractMap!2162 (toList!6340 lt!1932860))) key!1776))))

(declare-fun Unit!138451 () Unit!138420)

(assert (=> b!4770695 (= e!2978106 Unit!138451)))

(declare-fun b!4770696 () Bool)

(declare-fun Unit!138452 () Unit!138420)

(assert (=> b!4770696 (= e!2978106 Unit!138452)))

(declare-fun b!4770697 () Bool)

(assert (=> b!4770697 (= e!2978105 (getKeysList!1008 (toList!6341 (extractMap!2162 (toList!6340 lt!1932860)))))))

(assert (= (and d!1524758 c!813764) b!4770691))

(assert (= (and d!1524758 (not c!813764)) b!4770690))

(assert (= (and b!4770690 c!813762) b!4770695))

(assert (= (and b!4770690 (not c!813762)) b!4770696))

(assert (= (or b!4770691 b!4770690) bm!334456))

(assert (= (and bm!334456 c!813763) b!4770697))

(assert (= (and bm!334456 (not c!813763)) b!4770694))

(assert (= (and d!1524758 res!2023336) b!4770689))

(assert (= (and d!1524758 (not res!2023337)) b!4770692))

(assert (= (and b!4770692 res!2023335) b!4770693))

(declare-fun m!5742400 () Bool)

(assert (=> b!4770692 m!5742400))

(assert (=> b!4770692 m!5742400))

(declare-fun m!5742402 () Bool)

(assert (=> b!4770692 m!5742402))

(declare-fun m!5742404 () Bool)

(assert (=> b!4770691 m!5742404))

(assert (=> b!4770691 m!5742400))

(assert (=> b!4770691 m!5742400))

(assert (=> b!4770691 m!5742402))

(declare-fun m!5742406 () Bool)

(assert (=> b!4770691 m!5742406))

(assert (=> b!4770689 m!5742026))

(declare-fun m!5742408 () Bool)

(assert (=> b!4770689 m!5742408))

(assert (=> b!4770689 m!5742408))

(declare-fun m!5742410 () Bool)

(assert (=> b!4770689 m!5742410))

(declare-fun m!5742412 () Bool)

(assert (=> b!4770697 m!5742412))

(assert (=> b!4770693 m!5742026))

(assert (=> b!4770693 m!5742408))

(assert (=> b!4770693 m!5742408))

(assert (=> b!4770693 m!5742410))

(declare-fun m!5742414 () Bool)

(assert (=> bm!334456 m!5742414))

(declare-fun m!5742416 () Bool)

(assert (=> d!1524758 m!5742416))

(assert (=> b!4770695 m!5742416))

(declare-fun m!5742418 () Bool)

(assert (=> b!4770695 m!5742418))

(assert (=> b!4770694 m!5742026))

(assert (=> b!4770694 m!5742408))

(assert (=> b!4770403 d!1524758))

(declare-fun bs!1149484 () Bool)

(declare-fun d!1524760 () Bool)

(assert (= bs!1149484 (and d!1524760 d!1524732)))

(declare-fun lambda!224907 () Int)

(assert (=> bs!1149484 (not (= lambda!224907 lambda!224903))))

(declare-fun bs!1149485 () Bool)

(assert (= bs!1149485 (and d!1524760 b!4770395)))

(assert (=> bs!1149485 (= lambda!224907 lambda!224850)))

(declare-fun bs!1149486 () Bool)

(assert (= bs!1149486 (and d!1524760 d!1524626)))

(assert (=> bs!1149486 (not (= lambda!224907 lambda!224847))))

(declare-fun bs!1149487 () Bool)

(assert (= bs!1149487 (and d!1524760 d!1524748)))

(assert (=> bs!1149487 (= lambda!224907 lambda!224906)))

(declare-fun bs!1149488 () Bool)

(assert (= bs!1149488 (and d!1524760 b!4770256)))

(assert (=> bs!1149488 (= lambda!224907 lambda!224838)))

(declare-fun bs!1149489 () Bool)

(assert (= bs!1149489 (and d!1524760 d!1524676)))

(assert (=> bs!1149489 (= lambda!224907 lambda!224883)))

(declare-fun bs!1149490 () Bool)

(assert (= bs!1149490 (and d!1524760 d!1524698)))

(assert (=> bs!1149490 (= lambda!224907 lambda!224896)))

(declare-fun bs!1149491 () Bool)

(assert (= bs!1149491 (and d!1524760 b!4770367)))

(assert (=> bs!1149491 (= lambda!224907 lambda!224844)))

(declare-fun bs!1149492 () Bool)

(assert (= bs!1149492 (and d!1524760 d!1524600)))

(assert (=> bs!1149492 (= lambda!224907 lambda!224841)))

(declare-fun lt!1933068 () ListMap!5821)

(assert (=> d!1524760 (invariantList!1666 (toList!6341 lt!1933068))))

(declare-fun e!2978111 () ListMap!5821)

(assert (=> d!1524760 (= lt!1933068 e!2978111)))

(declare-fun c!813765 () Bool)

(assert (=> d!1524760 (= c!813765 ((_ is Cons!53559) (toList!6340 lt!1932860)))))

(assert (=> d!1524760 (forall!11889 (toList!6340 lt!1932860) lambda!224907)))

(assert (=> d!1524760 (= (extractMap!2162 (toList!6340 lt!1932860)) lt!1933068)))

(declare-fun b!4770698 () Bool)

(assert (=> b!4770698 (= e!2978111 (addToMapMapFromBucket!1631 (_2!31131 (h!59971 (toList!6340 lt!1932860))) (extractMap!2162 (t!361127 (toList!6340 lt!1932860)))))))

(declare-fun b!4770699 () Bool)

(assert (=> b!4770699 (= e!2978111 (ListMap!5822 Nil!53558))))

(assert (= (and d!1524760 c!813765) b!4770698))

(assert (= (and d!1524760 (not c!813765)) b!4770699))

(declare-fun m!5742420 () Bool)

(assert (=> d!1524760 m!5742420))

(declare-fun m!5742422 () Bool)

(assert (=> d!1524760 m!5742422))

(declare-fun m!5742424 () Bool)

(assert (=> b!4770698 m!5742424))

(assert (=> b!4770698 m!5742424))

(declare-fun m!5742426 () Bool)

(assert (=> b!4770698 m!5742426))

(assert (=> b!4770403 d!1524760))

(declare-fun bs!1149493 () Bool)

(declare-fun d!1524762 () Bool)

(assert (= bs!1149493 (and d!1524762 d!1524732)))

(declare-fun lambda!224910 () Int)

(assert (=> bs!1149493 (not (= lambda!224910 lambda!224903))))

(declare-fun bs!1149494 () Bool)

(assert (= bs!1149494 (and d!1524762 b!4770395)))

(assert (=> bs!1149494 (= lambda!224910 lambda!224850)))

(declare-fun bs!1149495 () Bool)

(assert (= bs!1149495 (and d!1524762 d!1524626)))

(assert (=> bs!1149495 (not (= lambda!224910 lambda!224847))))

(declare-fun bs!1149496 () Bool)

(assert (= bs!1149496 (and d!1524762 d!1524748)))

(assert (=> bs!1149496 (= lambda!224910 lambda!224906)))

(declare-fun bs!1149497 () Bool)

(assert (= bs!1149497 (and d!1524762 b!4770256)))

(assert (=> bs!1149497 (= lambda!224910 lambda!224838)))

(declare-fun bs!1149498 () Bool)

(assert (= bs!1149498 (and d!1524762 d!1524676)))

(assert (=> bs!1149498 (= lambda!224910 lambda!224883)))

(declare-fun bs!1149499 () Bool)

(assert (= bs!1149499 (and d!1524762 d!1524698)))

(assert (=> bs!1149499 (= lambda!224910 lambda!224896)))

(declare-fun bs!1149500 () Bool)

(assert (= bs!1149500 (and d!1524762 d!1524760)))

(assert (=> bs!1149500 (= lambda!224910 lambda!224907)))

(declare-fun bs!1149501 () Bool)

(assert (= bs!1149501 (and d!1524762 b!4770367)))

(assert (=> bs!1149501 (= lambda!224910 lambda!224844)))

(declare-fun bs!1149502 () Bool)

(assert (= bs!1149502 (and d!1524762 d!1524600)))

(assert (=> bs!1149502 (= lambda!224910 lambda!224841)))

(assert (=> d!1524762 (contains!16930 (extractMap!2162 (toList!6340 lt!1932860)) key!1776)))

(declare-fun lt!1933071 () Unit!138420)

(declare-fun choose!34028 (ListLongMap!4753 K!15054 Hashable!6626) Unit!138420)

(assert (=> d!1524762 (= lt!1933071 (choose!34028 lt!1932860 key!1776 (hashF!12518 thiss!42052)))))

(assert (=> d!1524762 (forall!11889 (toList!6340 lt!1932860) lambda!224910)))

(assert (=> d!1524762 (= (lemmaInLongMapThenInGenericMap!211 lt!1932860 key!1776 (hashF!12518 thiss!42052)) lt!1933071)))

(declare-fun bs!1149503 () Bool)

(assert (= bs!1149503 d!1524762))

(assert (=> bs!1149503 m!5742026))

(assert (=> bs!1149503 m!5742026))

(assert (=> bs!1149503 m!5742028))

(declare-fun m!5742428 () Bool)

(assert (=> bs!1149503 m!5742428))

(declare-fun m!5742430 () Bool)

(assert (=> bs!1149503 m!5742430))

(assert (=> b!4770403 d!1524762))

(declare-fun d!1524764 () Bool)

(declare-fun noDuplicatedKeys!408 (List!53682) Bool)

(assert (=> d!1524764 (= (invariantList!1666 (toList!6341 lt!1932797)) (noDuplicatedKeys!408 (toList!6341 lt!1932797)))))

(declare-fun bs!1149504 () Bool)

(assert (= bs!1149504 d!1524764))

(declare-fun m!5742432 () Bool)

(assert (=> bs!1149504 m!5742432))

(assert (=> d!1524600 d!1524764))

(declare-fun d!1524766 () Bool)

(declare-fun res!2023338 () Bool)

(declare-fun e!2978112 () Bool)

(assert (=> d!1524766 (=> res!2023338 e!2978112)))

(assert (=> d!1524766 (= res!2023338 ((_ is Nil!53559) (toList!6340 lt!1932761)))))

(assert (=> d!1524766 (= (forall!11889 (toList!6340 lt!1932761) lambda!224841) e!2978112)))

(declare-fun b!4770700 () Bool)

(declare-fun e!2978113 () Bool)

(assert (=> b!4770700 (= e!2978112 e!2978113)))

(declare-fun res!2023339 () Bool)

(assert (=> b!4770700 (=> (not res!2023339) (not e!2978113))))

(assert (=> b!4770700 (= res!2023339 (dynLambda!21969 lambda!224841 (h!59971 (toList!6340 lt!1932761))))))

(declare-fun b!4770701 () Bool)

(assert (=> b!4770701 (= e!2978113 (forall!11889 (t!361127 (toList!6340 lt!1932761)) lambda!224841))))

(assert (= (and d!1524766 (not res!2023338)) b!4770700))

(assert (= (and b!4770700 res!2023339) b!4770701))

(declare-fun b_lambda!184597 () Bool)

(assert (=> (not b_lambda!184597) (not b!4770700)))

(declare-fun m!5742434 () Bool)

(assert (=> b!4770700 m!5742434))

(declare-fun m!5742436 () Bool)

(assert (=> b!4770701 m!5742436))

(assert (=> d!1524600 d!1524766))

(declare-fun d!1524768 () Bool)

(assert (=> d!1524768 (isDefined!9878 (getValueByKey!2218 (toList!6341 (extractMap!2162 (toList!6340 lt!1932761))) key!1776))))

(declare-fun lt!1933074 () Unit!138420)

(declare-fun choose!34029 (List!53682 K!15054) Unit!138420)

(assert (=> d!1524768 (= lt!1933074 (choose!34029 (toList!6341 (extractMap!2162 (toList!6340 lt!1932761))) key!1776))))

(assert (=> d!1524768 (invariantList!1666 (toList!6341 (extractMap!2162 (toList!6340 lt!1932761))))))

(assert (=> d!1524768 (= (lemmaContainsKeyImpliesGetValueByKeyDefined!2014 (toList!6341 (extractMap!2162 (toList!6340 lt!1932761))) key!1776) lt!1933074)))

(declare-fun bs!1149505 () Bool)

(assert (= bs!1149505 d!1524768))

(assert (=> bs!1149505 m!5741896))

(assert (=> bs!1149505 m!5741896))

(assert (=> bs!1149505 m!5741898))

(declare-fun m!5742438 () Bool)

(assert (=> bs!1149505 m!5742438))

(assert (=> bs!1149505 m!5742108))

(assert (=> b!4770287 d!1524768))

(assert (=> b!4770287 d!1524702))

(assert (=> b!4770287 d!1524704))

(declare-fun d!1524770 () Bool)

(assert (=> d!1524770 (contains!16931 (getKeysList!1008 (toList!6341 (extractMap!2162 (toList!6340 lt!1932761)))) key!1776)))

(declare-fun lt!1933077 () Unit!138420)

(declare-fun choose!34030 (List!53682 K!15054) Unit!138420)

(assert (=> d!1524770 (= lt!1933077 (choose!34030 (toList!6341 (extractMap!2162 (toList!6340 lt!1932761))) key!1776))))

(assert (=> d!1524770 (invariantList!1666 (toList!6341 (extractMap!2162 (toList!6340 lt!1932761))))))

(assert (=> d!1524770 (= (lemmaInListThenGetKeysListContains!1003 (toList!6341 (extractMap!2162 (toList!6340 lt!1932761))) key!1776) lt!1933077)))

(declare-fun bs!1149506 () Bool)

(assert (= bs!1149506 d!1524770))

(assert (=> bs!1149506 m!5741908))

(assert (=> bs!1149506 m!5741908))

(declare-fun m!5742440 () Bool)

(assert (=> bs!1149506 m!5742440))

(declare-fun m!5742442 () Bool)

(assert (=> bs!1149506 m!5742442))

(assert (=> bs!1149506 m!5742108))

(assert (=> b!4770287 d!1524770))

(declare-fun d!1524772 () Bool)

(assert (=> d!1524772 (= (isDefined!9879 call!334435) (not (isEmpty!29297 call!334435)))))

(declare-fun bs!1149507 () Bool)

(assert (= bs!1149507 d!1524772))

(declare-fun m!5742444 () Bool)

(assert (=> bs!1149507 m!5742444))

(assert (=> bm!334429 d!1524772))

(declare-fun d!1524774 () Bool)

(declare-fun res!2023340 () Bool)

(declare-fun e!2978114 () Bool)

(assert (=> d!1524774 (=> res!2023340 e!2978114)))

(assert (=> d!1524774 (= res!2023340 (not ((_ is Cons!53558) (_2!31131 (h!59971 (toList!6340 lt!1932761))))))))

(assert (=> d!1524774 (= (noDuplicateKeys!2262 (_2!31131 (h!59971 (toList!6340 lt!1932761)))) e!2978114)))

(declare-fun b!4770702 () Bool)

(declare-fun e!2978115 () Bool)

(assert (=> b!4770702 (= e!2978114 e!2978115)))

(declare-fun res!2023341 () Bool)

(assert (=> b!4770702 (=> (not res!2023341) (not e!2978115))))

(assert (=> b!4770702 (= res!2023341 (not (containsKey!3684 (t!361126 (_2!31131 (h!59971 (toList!6340 lt!1932761)))) (_1!31130 (h!59970 (_2!31131 (h!59971 (toList!6340 lt!1932761))))))))))

(declare-fun b!4770703 () Bool)

(assert (=> b!4770703 (= e!2978115 (noDuplicateKeys!2262 (t!361126 (_2!31131 (h!59971 (toList!6340 lt!1932761))))))))

(assert (= (and d!1524774 (not res!2023340)) b!4770702))

(assert (= (and b!4770702 res!2023341) b!4770703))

(declare-fun m!5742446 () Bool)

(assert (=> b!4770702 m!5742446))

(declare-fun m!5742448 () Bool)

(assert (=> b!4770703 m!5742448))

(assert (=> bs!1149430 d!1524774))

(assert (=> b!4770289 d!1524736))

(assert (=> b!4770289 d!1524722))

(assert (=> bm!334430 d!1524610))

(declare-fun tp!1356498 () Bool)

(declare-fun e!2978116 () Bool)

(declare-fun b!4770704 () Bool)

(assert (=> b!4770704 (= e!2978116 (and tp_is_empty!32543 tp_is_empty!32545 tp!1356498))))

(assert (=> b!4770416 (= tp!1356494 e!2978116)))

(assert (= (and b!4770416 ((_ is Cons!53558) (t!361126 mapValue!22006))) b!4770704))

(declare-fun e!2978117 () Bool)

(declare-fun b!4770705 () Bool)

(declare-fun tp!1356499 () Bool)

(assert (=> b!4770705 (= e!2978117 (and tp_is_empty!32543 tp_is_empty!32545 tp!1356499))))

(assert (=> b!4770418 (= tp!1356496 e!2978117)))

(assert (= (and b!4770418 ((_ is Cons!53558) (t!361126 (minValue!5253 (v!47839 (underlying!10137 (v!47840 (underlying!10138 thiss!42052)))))))) b!4770705))

(declare-fun e!2978118 () Bool)

(declare-fun b!4770706 () Bool)

(declare-fun tp!1356500 () Bool)

(assert (=> b!4770706 (= e!2978118 (and tp_is_empty!32543 tp_is_empty!32545 tp!1356500))))

(assert (=> b!4770411 (= tp!1356491 e!2978118)))

(assert (= (and b!4770411 ((_ is Cons!53558) (t!361126 mapDefault!22009))) b!4770706))

(declare-fun b!4770707 () Bool)

(declare-fun tp!1356501 () Bool)

(declare-fun e!2978119 () Bool)

(assert (=> b!4770707 (= e!2978119 (and tp_is_empty!32543 tp_is_empty!32545 tp!1356501))))

(assert (=> tb!257497 (= result!319172 e!2978119)))

(assert (= (and tb!257497 ((_ is Cons!53558) (dynLambda!21968 (defaultEntry!5383 (v!47839 (underlying!10137 (v!47840 (underlying!10138 thiss!42052))))) lt!1932768))) b!4770707))

(declare-fun tp!1356502 () Bool)

(declare-fun b!4770708 () Bool)

(declare-fun e!2978120 () Bool)

(assert (=> b!4770708 (= e!2978120 (and tp_is_empty!32543 tp_is_empty!32545 tp!1356502))))

(assert (=> b!4770417 (= tp!1356495 e!2978120)))

(assert (= (and b!4770417 ((_ is Cons!53558) (t!361126 (zeroValue!5253 (v!47839 (underlying!10137 (v!47840 (underlying!10138 thiss!42052)))))))) b!4770708))

(declare-fun b!4770709 () Bool)

(declare-fun e!2978121 () Bool)

(declare-fun tp!1356503 () Bool)

(assert (=> b!4770709 (= e!2978121 (and tp_is_empty!32543 tp_is_empty!32545 tp!1356503))))

(assert (=> b!4770410 (= tp!1356490 e!2978121)))

(assert (= (and b!4770410 ((_ is Cons!53558) (t!361126 mapValue!22009))) b!4770709))

(declare-fun b!4770710 () Bool)

(declare-fun e!2978122 () Bool)

(declare-fun tp!1356504 () Bool)

(assert (=> b!4770710 (= e!2978122 (and tp_is_empty!32543 tp_is_empty!32545 tp!1356504))))

(assert (=> b!4770419 (= tp!1356497 e!2978122)))

(assert (= (and b!4770419 ((_ is Cons!53558) (t!361126 mapDefault!22006))) b!4770710))

(declare-fun mapNonEmpty!22010 () Bool)

(declare-fun mapRes!22010 () Bool)

(declare-fun tp!1356505 () Bool)

(declare-fun e!2978124 () Bool)

(assert (=> mapNonEmpty!22010 (= mapRes!22010 (and tp!1356505 e!2978124))))

(declare-fun mapRest!22010 () (Array (_ BitVec 32) List!53682))

(declare-fun mapValue!22010 () List!53682)

(declare-fun mapKey!22010 () (_ BitVec 32))

(assert (=> mapNonEmpty!22010 (= mapRest!22009 (store mapRest!22010 mapKey!22010 mapValue!22010))))

(declare-fun mapIsEmpty!22010 () Bool)

(assert (=> mapIsEmpty!22010 mapRes!22010))

(declare-fun tp!1356506 () Bool)

(declare-fun b!4770711 () Bool)

(assert (=> b!4770711 (= e!2978124 (and tp_is_empty!32543 tp_is_empty!32545 tp!1356506))))

(declare-fun tp!1356507 () Bool)

(declare-fun b!4770712 () Bool)

(declare-fun e!2978123 () Bool)

(assert (=> b!4770712 (= e!2978123 (and tp_is_empty!32543 tp_is_empty!32545 tp!1356507))))

(declare-fun condMapEmpty!22010 () Bool)

(declare-fun mapDefault!22010 () List!53682)

(assert (=> mapNonEmpty!22009 (= condMapEmpty!22010 (= mapRest!22009 ((as const (Array (_ BitVec 32) List!53682)) mapDefault!22010)))))

(assert (=> mapNonEmpty!22009 (= tp!1356489 (and e!2978123 mapRes!22010))))

(assert (= (and mapNonEmpty!22009 condMapEmpty!22010) mapIsEmpty!22010))

(assert (= (and mapNonEmpty!22009 (not condMapEmpty!22010)) mapNonEmpty!22010))

(assert (= (and mapNonEmpty!22010 ((_ is Cons!53558) mapValue!22010)) b!4770711))

(assert (= (and mapNonEmpty!22009 ((_ is Cons!53558) mapDefault!22010)) b!4770712))

(declare-fun m!5742450 () Bool)

(assert (=> mapNonEmpty!22010 m!5742450))

(declare-fun b_lambda!184599 () Bool)

(assert (= b_lambda!184587 (or b!4770256 b_lambda!184599)))

(declare-fun bs!1149508 () Bool)

(declare-fun d!1524776 () Bool)

(assert (= bs!1149508 (and d!1524776 b!4770256)))

(assert (=> bs!1149508 (= (dynLambda!21969 lambda!224838 (h!59971 (t!361127 (toList!6340 lt!1932761)))) (noDuplicateKeys!2262 (_2!31131 (h!59971 (t!361127 (toList!6340 lt!1932761))))))))

(declare-fun m!5742452 () Bool)

(assert (=> bs!1149508 m!5742452))

(assert (=> b!4770520 d!1524776))

(declare-fun b_lambda!184601 () Bool)

(assert (= b_lambda!184597 (or d!1524600 b_lambda!184601)))

(declare-fun bs!1149509 () Bool)

(declare-fun d!1524778 () Bool)

(assert (= bs!1149509 (and d!1524778 d!1524600)))

(assert (=> bs!1149509 (= (dynLambda!21969 lambda!224841 (h!59971 (toList!6340 lt!1932761))) (noDuplicateKeys!2262 (_2!31131 (h!59971 (toList!6340 lt!1932761)))))))

(assert (=> bs!1149509 m!5742040))

(assert (=> b!4770700 d!1524778))

(declare-fun b_lambda!184603 () Bool)

(assert (= b_lambda!184589 (or b!4770256 b_lambda!184603)))

(assert (=> d!1524706 d!1524636))

(declare-fun b_lambda!184605 () Bool)

(assert (= b_lambda!184585 (or d!1524626 b_lambda!184605)))

(declare-fun bs!1149510 () Bool)

(declare-fun d!1524780 () Bool)

(assert (= bs!1149510 (and d!1524780 d!1524626)))

(declare-fun allKeysSameHash!1927 (List!53682 (_ BitVec 64) Hashable!6626) Bool)

(assert (=> bs!1149510 (= (dynLambda!21969 lambda!224847 (h!59971 (toList!6340 lt!1932761))) (allKeysSameHash!1927 (_2!31131 (h!59971 (toList!6340 lt!1932761))) (_1!31131 (h!59971 (toList!6340 lt!1932761))) (hashF!12518 thiss!42052)))))

(declare-fun m!5742454 () Bool)

(assert (=> bs!1149510 m!5742454))

(assert (=> b!4770470 d!1524780))

(declare-fun b_lambda!184607 () Bool)

(assert (= b_lambda!184595 (or (and b!4770259 b_free!129803) b_lambda!184607)))

(declare-fun b_lambda!184609 () Bool)

(assert (= b_lambda!184591 (or (and b!4770259 b_free!129803) b_lambda!184609)))

(declare-fun b_lambda!184611 () Bool)

(assert (= b_lambda!184581 (or b!4770395 b_lambda!184611)))

(declare-fun bs!1149511 () Bool)

(declare-fun d!1524782 () Bool)

(assert (= bs!1149511 (and d!1524782 b!4770395)))

(assert (=> bs!1149511 (= (dynLambda!21969 lambda!224850 (tuple2!55675 lt!1932867 (apply!12673 (v!47840 (underlying!10138 thiss!42052)) lt!1932867))) (noDuplicateKeys!2262 (_2!31131 (tuple2!55675 lt!1932867 (apply!12673 (v!47840 (underlying!10138 thiss!42052)) lt!1932867)))))))

(declare-fun m!5742456 () Bool)

(assert (=> bs!1149511 m!5742456))

(assert (=> d!1524642 d!1524782))

(declare-fun b_lambda!184613 () Bool)

(assert (= b_lambda!184593 (or (and b!4770259 b_free!129803) b_lambda!184613)))

(declare-fun b_lambda!184615 () Bool)

(assert (= b_lambda!184579 (or b!4770367 b_lambda!184615)))

(declare-fun bs!1149512 () Bool)

(declare-fun d!1524784 () Bool)

(assert (= bs!1149512 (and d!1524784 b!4770367)))

(assert (=> bs!1149512 (= (dynLambda!21969 lambda!224844 (h!59971 (toList!6340 (map!12053 (v!47840 (underlying!10138 thiss!42052)))))) (noDuplicateKeys!2262 (_2!31131 (h!59971 (toList!6340 (map!12053 (v!47840 (underlying!10138 thiss!42052))))))))))

(declare-fun m!5742458 () Bool)

(assert (=> bs!1149512 m!5742458))

(assert (=> b!4770420 d!1524784))

(declare-fun b_lambda!184617 () Bool)

(assert (= b_lambda!184583 (or (and b!4770259 b_free!129803) b_lambda!184617)))

(check-sat (not d!1524740) (not b!4770659) (not b!4770542) (not bm!334440) (not bm!334456) (not b!4770707) (not b_lambda!184603) (not b!4770428) (not b!4770585) (not b!4770422) (not b!4770711) (not b!4770485) (not b!4770709) (not b!4770514) (not bs!1149508) (not bm!334454) (not d!1524696) (not b!4770538) (not b!4770702) (not b!4770469) (not b_lambda!184611) (not d!1524684) (not b!4770421) (not b!4770531) (not b!4770689) (not b!4770603) (not b!4770581) (not b!4770694) (not b!4770440) (not d!1524742) (not d!1524702) (not b!4770615) (not b!4770600) (not b_lambda!184605) (not d!1524688) (not b!4770448) (not d!1524758) (not b!4770543) (not d!1524694) (not d!1524690) (not d!1524730) (not d!1524772) (not d!1524662) (not d!1524736) (not d!1524762) (not d!1524648) (not bs!1149512) (not b!4770604) (not b!4770549) (not b!4770517) (not b!4770512) (not b!4770446) (not b!4770701) (not d!1524650) (not b!4770535) (not b!4770509) (not b!4770712) (not d!1524646) (not d!1524640) (not b!4770687) (not b_lambda!184601) (not d!1524764) tp_is_empty!32543 (not tb!257499) (not b_lambda!184607) (not d!1524760) (not b!4770676) (not b!4770577) (not b!4770544) (not b!4770555) (not d!1524722) (not b!4770426) (not b!4770693) (not b!4770708) (not b!4770471) (not b!4770534) b_and!341547 (not b!4770705) (not b!4770698) (not d!1524708) (not d!1524674) (not b!4770595) (not b!4770684) (not b!4770461) (not b!4770434) b_and!341557 (not b!4770547) (not d!1524692) (not b!4770703) tp_is_empty!32545 (not d!1524698) (not b!4770484) (not b!4770423) (not d!1524666) (not d!1524726) (not d!1524738) (not b!4770451) (not b!4770551) (not bs!1149510) (not b!4770695) (not d!1524642) (not b!4770447) (not b!4770556) (not b!4770668) (not b!4770489) (not b!4770672) (not b!4770553) (not d!1524644) (not b_lambda!184609) (not b!4770521) (not b!4770706) (not b!4770450) (not b!4770597) (not b!4770691) (not b!4770546) (not b!4770541) (not b!4770510) (not b_lambda!184599) (not bm!334442) (not d!1524748) (not bs!1149511) (not b!4770483) (not b!4770529) (not b!4770452) (not bs!1149509) (not d!1524750) (not b_lambda!184577) (not b!4770605) (not b!4770704) (not b!4770522) (not b!4770523) (not b!4770486) (not b!4770530) (not d!1524664) (not b!4770588) (not b!4770609) (not b!4770710) (not b_next!130593) (not d!1524710) (not b_lambda!184573) (not bm!334443) (not b!4770669) (not b!4770574) (not d!1524670) (not b!4770660) (not d!1524770) (not d!1524724) (not d!1524716) (not b!4770550) (not d!1524712) (not d!1524676) (not b!4770533) (not b!4770563) (not b_lambda!184615) (not d!1524744) (not d!1524732) (not b!4770596) (not b_lambda!184613) (not b!4770463) (not b!4770578) (not b!4770540) (not d!1524720) (not b!4770697) (not b!4770692) (not b_lambda!184617) (not b!4770678) (not mapNonEmpty!22010) (not b!4770601) (not d!1524728) (not d!1524768) (not b_next!130595) (not b_lambda!184575) (not b!4770552) (not bm!334452) (not bm!334441) (not d!1524734) (not b!4770658) (not b!4770439) (not b!4770587) (not bm!334439) (not d!1524678))
(check-sat b_and!341547 b_and!341557 (not b_next!130595) (not b_next!130593))
