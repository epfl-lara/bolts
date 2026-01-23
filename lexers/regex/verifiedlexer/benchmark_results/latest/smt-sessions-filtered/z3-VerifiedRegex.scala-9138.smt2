; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!487882 () Bool)

(assert start!487882)

(declare-fun b!4767942 () Bool)

(declare-fun b_free!129683 () Bool)

(declare-fun b_next!130473 () Bool)

(assert (=> b!4767942 (= b_free!129683 (not b_next!130473))))

(declare-fun tp!1355737 () Bool)

(declare-fun b_and!341403 () Bool)

(assert (=> b!4767942 (= tp!1355737 b_and!341403)))

(declare-fun b!4767940 () Bool)

(declare-fun b_free!129685 () Bool)

(declare-fun b_next!130475 () Bool)

(assert (=> b!4767940 (= b_free!129685 (not b_next!130475))))

(declare-fun tp!1355735 () Bool)

(declare-fun b_and!341405 () Bool)

(assert (=> b!4767940 (= tp!1355735 b_and!341405)))

(declare-fun b!4767937 () Bool)

(declare-datatypes ((Unit!138294 0))(
  ( (Unit!138295) )
))
(declare-fun e!2976100 () Unit!138294)

(declare-fun Unit!138296 () Unit!138294)

(assert (=> b!4767937 (= e!2976100 Unit!138296)))

(declare-fun b!4767938 () Bool)

(declare-datatypes ((K!14979 0))(
  ( (K!14980 (val!20289 Int)) )
))
(declare-fun key!1776 () K!14979)

(declare-fun e!2976099 () Bool)

(declare-datatypes ((V!15225 0))(
  ( (V!15226 (val!20290 Int)) )
))
(declare-datatypes ((tuple2!55562 0))(
  ( (tuple2!55563 (_1!31075 K!14979) (_2!31075 V!15225)) )
))
(declare-datatypes ((List!53626 0))(
  ( (Nil!53502) (Cons!53502 (h!59914 tuple2!55562) (t!361054 List!53626)) )
))
(declare-datatypes ((tuple2!55564 0))(
  ( (tuple2!55565 (_1!31076 (_ BitVec 64)) (_2!31076 List!53626)) )
))
(declare-datatypes ((List!53627 0))(
  ( (Nil!53503) (Cons!53503 (h!59915 tuple2!55564) (t!361055 List!53627)) )
))
(declare-datatypes ((ListLongMap!4703 0))(
  ( (ListLongMap!4704 (toList!6305 List!53627)) )
))
(declare-fun lt!1930827 () ListLongMap!4703)

(declare-datatypes ((Option!12695 0))(
  ( (None!12694) (Some!12694 (v!47716 tuple2!55562)) )
))
(declare-fun lt!1930820 () Option!12695)

(declare-fun get!18056 (Option!12695) tuple2!55562)

(declare-datatypes ((Option!12696 0))(
  ( (None!12695) (Some!12695 (v!47717 V!15225)) )
))
(declare-fun get!18057 (Option!12696) V!15225)

(declare-fun getValueByKey!2194 (List!53626 K!14979) Option!12696)

(declare-datatypes ((ListMap!5801 0))(
  ( (ListMap!5802 (toList!6306 List!53626)) )
))
(declare-fun extractMap!2152 (List!53627) ListMap!5801)

(assert (=> b!4767938 (= e!2976099 (= (_2!31075 (get!18056 lt!1930820)) (get!18057 (getValueByKey!2194 (toList!6306 (extractMap!2152 (toList!6305 lt!1930827))) key!1776))))))

(declare-fun b!4767939 () Bool)

(declare-fun e!2976098 () Bool)

(declare-fun e!2976103 () Bool)

(assert (=> b!4767939 (= e!2976098 e!2976103)))

(declare-fun e!2976094 () Bool)

(declare-fun e!2976097 () Bool)

(assert (=> b!4767940 (= e!2976094 (and e!2976097 tp!1355735))))

(declare-fun mapNonEmpty!21894 () Bool)

(declare-fun mapRes!21894 () Bool)

(declare-fun tp!1355732 () Bool)

(declare-fun tp!1355733 () Bool)

(assert (=> mapNonEmpty!21894 (= mapRes!21894 (and tp!1355732 tp!1355733))))

(declare-fun mapKey!21894 () (_ BitVec 32))

(declare-datatypes ((array!18062 0))(
  ( (array!18063 (arr!8055 (Array (_ BitVec 32) (_ BitVec 64))) (size!36285 (_ BitVec 32))) )
))
(declare-datatypes ((array!18064 0))(
  ( (array!18065 (arr!8056 (Array (_ BitVec 32) List!53626)) (size!36286 (_ BitVec 32))) )
))
(declare-datatypes ((Hashable!6596 0))(
  ( (HashableExt!6595 (__x!32553 Int)) )
))
(declare-datatypes ((LongMapFixedSize!9870 0))(
  ( (LongMapFixedSize!9871 (defaultEntry!5353 Int) (mask!14698 (_ BitVec 32)) (extraKeys!5210 (_ BitVec 32)) (zeroValue!5223 List!53626) (minValue!5223 List!53626) (_size!9895 (_ BitVec 32)) (_keys!5277 array!18062) (_values!5248 array!18064) (_vacant!5000 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!19505 0))(
  ( (Cell!19506 (v!47718 LongMapFixedSize!9870)) )
))
(declare-datatypes ((MutLongMap!4935 0))(
  ( (LongMap!4935 (underlying!10077 Cell!19505)) (MutLongMapExt!4934 (__x!32554 Int)) )
))
(declare-datatypes ((Cell!19507 0))(
  ( (Cell!19508 (v!47719 MutLongMap!4935)) )
))
(declare-datatypes ((MutableMap!4819 0))(
  ( (MutableMapExt!4818 (__x!32555 Int)) (HashMap!4819 (underlying!10078 Cell!19507) (hashF!12463 Hashable!6596) (_size!9896 (_ BitVec 32)) (defaultValue!4990 Int)) )
))
(declare-fun thiss!42052 () MutableMap!4819)

(declare-fun mapRest!21894 () (Array (_ BitVec 32) List!53626))

(declare-fun mapValue!21894 () List!53626)

(assert (=> mapNonEmpty!21894 (= (arr!8056 (_values!5248 (v!47718 (underlying!10077 (v!47719 (underlying!10078 thiss!42052)))))) (store mapRest!21894 mapKey!21894 mapValue!21894))))

(declare-fun b!4767941 () Bool)

(declare-fun e!2976101 () Bool)

(declare-fun e!2976102 () Bool)

(assert (=> b!4767941 (= e!2976101 (not e!2976102))))

(declare-fun res!2022202 () Bool)

(assert (=> b!4767941 (=> res!2022202 e!2976102)))

(declare-fun lt!1930834 () tuple2!55562)

(declare-fun map!12002 (MutableMap!4819) ListMap!5801)

(assert (=> b!4767941 (= res!2022202 (not (= (_2!31075 lt!1930834) (get!18057 (getValueByKey!2194 (toList!6306 (map!12002 thiss!42052)) key!1776)))))))

(assert (=> b!4767941 e!2976099))

(declare-fun res!2022203 () Bool)

(assert (=> b!4767941 (=> (not res!2022203) (not e!2976099))))

(declare-fun isDefined!9850 (Option!12695) Bool)

(assert (=> b!4767941 (= res!2022203 (isDefined!9850 lt!1930820))))

(declare-fun lt!1930822 () List!53626)

(declare-fun getPair!650 (List!53626 K!14979) Option!12695)

(assert (=> b!4767941 (= lt!1930820 (getPair!650 lt!1930822 key!1776))))

(declare-fun lt!1930826 () Unit!138294)

(declare-fun lt!1930819 () tuple2!55564)

(declare-fun lambda!224578 () Int)

(declare-fun forallContained!3867 (List!53627 Int tuple2!55564) Unit!138294)

(assert (=> b!4767941 (= lt!1930826 (forallContained!3867 (toList!6305 lt!1930827) lambda!224578 lt!1930819))))

(declare-fun lt!1930829 () Unit!138294)

(declare-fun lemmaInGenMapThenGetPairDefined!433 (ListLongMap!4703 K!14979 Hashable!6596) Unit!138294)

(assert (=> b!4767941 (= lt!1930829 (lemmaInGenMapThenGetPairDefined!433 lt!1930827 key!1776 (hashF!12463 thiss!42052)))))

(declare-fun lt!1930816 () Unit!138294)

(assert (=> b!4767941 (= lt!1930816 (forallContained!3867 (toList!6305 lt!1930827) lambda!224578 lt!1930819))))

(declare-fun contains!16856 (List!53627 tuple2!55564) Bool)

(assert (=> b!4767941 (contains!16856 (toList!6305 lt!1930827) lt!1930819)))

(declare-fun lt!1930821 () (_ BitVec 64))

(assert (=> b!4767941 (= lt!1930819 (tuple2!55565 lt!1930821 lt!1930822))))

(declare-fun lt!1930825 () Unit!138294)

(declare-fun lemmaGetValueImpliesTupleContained!442 (ListLongMap!4703 (_ BitVec 64) List!53626) Unit!138294)

(assert (=> b!4767941 (= lt!1930825 (lemmaGetValueImpliesTupleContained!442 lt!1930827 lt!1930821 lt!1930822))))

(declare-fun apply!12639 (ListLongMap!4703 (_ BitVec 64)) List!53626)

(assert (=> b!4767941 (= lt!1930822 (apply!12639 lt!1930827 lt!1930821))))

(declare-fun contains!16857 (ListLongMap!4703 (_ BitVec 64)) Bool)

(assert (=> b!4767941 (contains!16857 lt!1930827 lt!1930821)))

(declare-fun lt!1930832 () Unit!138294)

(declare-fun lemmaInGenMapThenLongMapContainsHash!843 (ListLongMap!4703 K!14979 Hashable!6596) Unit!138294)

(assert (=> b!4767941 (= lt!1930832 (lemmaInGenMapThenLongMapContainsHash!843 lt!1930827 key!1776 (hashF!12463 thiss!42052)))))

(declare-fun lt!1930835 () Unit!138294)

(declare-fun lemmaGetPairGetSameValueAsMap!65 (ListLongMap!4703 K!14979 V!15225 Hashable!6596) Unit!138294)

(assert (=> b!4767941 (= lt!1930835 (lemmaGetPairGetSameValueAsMap!65 lt!1930827 key!1776 (_2!31075 lt!1930834) (hashF!12463 thiss!42052)))))

(declare-fun lt!1930828 () Option!12695)

(assert (=> b!4767941 (= lt!1930834 (get!18056 lt!1930828))))

(declare-fun lt!1930817 () List!53626)

(assert (=> b!4767941 (= lt!1930828 (getPair!650 lt!1930817 key!1776))))

(declare-fun lt!1930833 () tuple2!55564)

(declare-fun lt!1930824 () Unit!138294)

(assert (=> b!4767941 (= lt!1930824 (forallContained!3867 (toList!6305 lt!1930827) lambda!224578 lt!1930833))))

(declare-fun lt!1930823 () Unit!138294)

(assert (=> b!4767941 (= lt!1930823 e!2976100)))

(declare-fun c!813303 () Bool)

(assert (=> b!4767941 (= c!813303 (not (contains!16856 (toList!6305 lt!1930827) lt!1930833)))))

(assert (=> b!4767941 (= lt!1930833 (tuple2!55565 lt!1930821 lt!1930817))))

(declare-fun apply!12640 (MutLongMap!4935 (_ BitVec 64)) List!53626)

(assert (=> b!4767941 (= lt!1930817 (apply!12640 (v!47719 (underlying!10078 thiss!42052)) lt!1930821))))

(declare-fun map!12003 (MutLongMap!4935) ListLongMap!4703)

(assert (=> b!4767941 (= lt!1930827 (map!12003 (v!47719 (underlying!10078 thiss!42052))))))

(declare-fun hash!4577 (Hashable!6596 K!14979) (_ BitVec 64))

(assert (=> b!4767941 (= lt!1930821 (hash!4577 (hashF!12463 thiss!42052) key!1776))))

(declare-fun e!2976095 () Bool)

(declare-fun tp!1355731 () Bool)

(declare-fun e!2976096 () Bool)

(declare-fun tp!1355734 () Bool)

(declare-fun array_inv!5799 (array!18062) Bool)

(declare-fun array_inv!5800 (array!18064) Bool)

(assert (=> b!4767942 (= e!2976096 (and tp!1355737 tp!1355734 tp!1355731 (array_inv!5799 (_keys!5277 (v!47718 (underlying!10077 (v!47719 (underlying!10078 thiss!42052)))))) (array_inv!5800 (_values!5248 (v!47718 (underlying!10077 (v!47719 (underlying!10078 thiss!42052)))))) e!2976095))))

(declare-fun b!4767943 () Bool)

(declare-fun res!2022205 () Bool)

(assert (=> b!4767943 (=> (not res!2022205) (not e!2976101))))

(declare-fun contains!16858 (MutableMap!4819 K!14979) Bool)

(assert (=> b!4767943 (= res!2022205 (contains!16858 thiss!42052 key!1776))))

(declare-fun b!4767944 () Bool)

(assert (=> b!4767944 (= e!2976102 (isDefined!9850 lt!1930828))))

(declare-fun b!4767945 () Bool)

(declare-fun lt!1930818 () MutLongMap!4935)

(get-info :version)

(assert (=> b!4767945 (= e!2976097 (and e!2976098 ((_ is LongMap!4935) lt!1930818)))))

(assert (=> b!4767945 (= lt!1930818 (v!47719 (underlying!10078 thiss!42052)))))

(declare-fun b!4767946 () Bool)

(declare-fun res!2022206 () Bool)

(assert (=> b!4767946 (=> (not res!2022206) (not e!2976101))))

(declare-fun valid!3940 (MutableMap!4819) Bool)

(assert (=> b!4767946 (= res!2022206 (valid!3940 thiss!42052))))

(declare-fun b!4767947 () Bool)

(declare-fun Unit!138297 () Unit!138294)

(assert (=> b!4767947 (= e!2976100 Unit!138297)))

(declare-fun lt!1930831 () Unit!138294)

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!1994 (List!53627 (_ BitVec 64)) Unit!138294)

(assert (=> b!4767947 (= lt!1930831 (lemmaContainsKeyImpliesGetValueByKeyDefined!1994 (toList!6305 lt!1930827) lt!1930821))))

(declare-datatypes ((Option!12697 0))(
  ( (None!12696) (Some!12696 (v!47720 List!53626)) )
))
(declare-fun isDefined!9851 (Option!12697) Bool)

(declare-fun getValueByKey!2195 (List!53627 (_ BitVec 64)) Option!12697)

(assert (=> b!4767947 (isDefined!9851 (getValueByKey!2195 (toList!6305 lt!1930827) lt!1930821))))

(declare-fun lt!1930830 () Unit!138294)

(declare-fun lemmaGetValueByKeyImpliesContainsTuple!937 (List!53627 (_ BitVec 64) List!53626) Unit!138294)

(assert (=> b!4767947 (= lt!1930830 (lemmaGetValueByKeyImpliesContainsTuple!937 (toList!6305 lt!1930827) lt!1930821 lt!1930817))))

(assert (=> b!4767947 false))

(declare-fun b!4767948 () Bool)

(declare-fun tp!1355736 () Bool)

(assert (=> b!4767948 (= e!2976095 (and tp!1355736 mapRes!21894))))

(declare-fun condMapEmpty!21894 () Bool)

(declare-fun mapDefault!21894 () List!53626)

(assert (=> b!4767948 (= condMapEmpty!21894 (= (arr!8056 (_values!5248 (v!47718 (underlying!10077 (v!47719 (underlying!10078 thiss!42052)))))) ((as const (Array (_ BitVec 32) List!53626)) mapDefault!21894)))))

(declare-fun b!4767949 () Bool)

(assert (=> b!4767949 (= e!2976103 e!2976096)))

(declare-fun res!2022204 () Bool)

(assert (=> start!487882 (=> (not res!2022204) (not e!2976101))))

(assert (=> start!487882 (= res!2022204 ((_ is HashMap!4819) thiss!42052))))

(assert (=> start!487882 e!2976101))

(assert (=> start!487882 e!2976094))

(declare-fun tp_is_empty!32469 () Bool)

(assert (=> start!487882 tp_is_empty!32469))

(declare-fun mapIsEmpty!21894 () Bool)

(assert (=> mapIsEmpty!21894 mapRes!21894))

(assert (= (and start!487882 res!2022204) b!4767946))

(assert (= (and b!4767946 res!2022206) b!4767943))

(assert (= (and b!4767943 res!2022205) b!4767941))

(assert (= (and b!4767941 c!813303) b!4767947))

(assert (= (and b!4767941 (not c!813303)) b!4767937))

(assert (= (and b!4767941 res!2022203) b!4767938))

(assert (= (and b!4767941 (not res!2022202)) b!4767944))

(assert (= (and b!4767948 condMapEmpty!21894) mapIsEmpty!21894))

(assert (= (and b!4767948 (not condMapEmpty!21894)) mapNonEmpty!21894))

(assert (= b!4767942 b!4767948))

(assert (= b!4767949 b!4767942))

(assert (= b!4767939 b!4767949))

(assert (= (and b!4767945 ((_ is LongMap!4935) (v!47719 (underlying!10078 thiss!42052)))) b!4767939))

(assert (= b!4767940 b!4767945))

(assert (= (and start!487882 ((_ is HashMap!4819) thiss!42052)) b!4767940))

(declare-fun m!5739246 () Bool)

(assert (=> b!4767941 m!5739246))

(declare-fun m!5739248 () Bool)

(assert (=> b!4767941 m!5739248))

(declare-fun m!5739250 () Bool)

(assert (=> b!4767941 m!5739250))

(declare-fun m!5739252 () Bool)

(assert (=> b!4767941 m!5739252))

(declare-fun m!5739254 () Bool)

(assert (=> b!4767941 m!5739254))

(declare-fun m!5739256 () Bool)

(assert (=> b!4767941 m!5739256))

(declare-fun m!5739258 () Bool)

(assert (=> b!4767941 m!5739258))

(declare-fun m!5739260 () Bool)

(assert (=> b!4767941 m!5739260))

(declare-fun m!5739262 () Bool)

(assert (=> b!4767941 m!5739262))

(declare-fun m!5739264 () Bool)

(assert (=> b!4767941 m!5739264))

(declare-fun m!5739266 () Bool)

(assert (=> b!4767941 m!5739266))

(declare-fun m!5739268 () Bool)

(assert (=> b!4767941 m!5739268))

(declare-fun m!5739270 () Bool)

(assert (=> b!4767941 m!5739270))

(assert (=> b!4767941 m!5739246))

(declare-fun m!5739272 () Bool)

(assert (=> b!4767941 m!5739272))

(declare-fun m!5739274 () Bool)

(assert (=> b!4767941 m!5739274))

(declare-fun m!5739276 () Bool)

(assert (=> b!4767941 m!5739276))

(declare-fun m!5739278 () Bool)

(assert (=> b!4767941 m!5739278))

(declare-fun m!5739280 () Bool)

(assert (=> b!4767941 m!5739280))

(declare-fun m!5739282 () Bool)

(assert (=> b!4767941 m!5739282))

(declare-fun m!5739284 () Bool)

(assert (=> b!4767941 m!5739284))

(assert (=> b!4767941 m!5739248))

(declare-fun m!5739286 () Bool)

(assert (=> b!4767947 m!5739286))

(declare-fun m!5739288 () Bool)

(assert (=> b!4767947 m!5739288))

(assert (=> b!4767947 m!5739288))

(declare-fun m!5739290 () Bool)

(assert (=> b!4767947 m!5739290))

(declare-fun m!5739292 () Bool)

(assert (=> b!4767947 m!5739292))

(declare-fun m!5739294 () Bool)

(assert (=> mapNonEmpty!21894 m!5739294))

(declare-fun m!5739296 () Bool)

(assert (=> b!4767938 m!5739296))

(declare-fun m!5739298 () Bool)

(assert (=> b!4767938 m!5739298))

(declare-fun m!5739300 () Bool)

(assert (=> b!4767938 m!5739300))

(assert (=> b!4767938 m!5739300))

(declare-fun m!5739302 () Bool)

(assert (=> b!4767938 m!5739302))

(declare-fun m!5739304 () Bool)

(assert (=> b!4767946 m!5739304))

(declare-fun m!5739306 () Bool)

(assert (=> b!4767943 m!5739306))

(declare-fun m!5739308 () Bool)

(assert (=> b!4767944 m!5739308))

(declare-fun m!5739310 () Bool)

(assert (=> b!4767942 m!5739310))

(declare-fun m!5739312 () Bool)

(assert (=> b!4767942 m!5739312))

(check-sat (not b!4767946) (not b!4767948) (not b!4767943) (not b_next!130475) (not b_next!130473) (not b!4767944) b_and!341403 (not mapNonEmpty!21894) (not b!4767941) (not b!4767938) (not b!4767947) (not b!4767942) tp_is_empty!32469 b_and!341405)
(check-sat b_and!341405 b_and!341403 (not b_next!130475) (not b_next!130473))
(get-model)

(declare-fun d!1524041 () Bool)

(assert (=> d!1524041 (= (get!18056 lt!1930820) (v!47716 lt!1930820))))

(assert (=> b!4767938 d!1524041))

(declare-fun d!1524043 () Bool)

(assert (=> d!1524043 (= (get!18057 (getValueByKey!2194 (toList!6306 (extractMap!2152 (toList!6305 lt!1930827))) key!1776)) (v!47717 (getValueByKey!2194 (toList!6306 (extractMap!2152 (toList!6305 lt!1930827))) key!1776)))))

(assert (=> b!4767938 d!1524043))

(declare-fun b!4767959 () Bool)

(declare-fun e!2976108 () Option!12696)

(declare-fun e!2976109 () Option!12696)

(assert (=> b!4767959 (= e!2976108 e!2976109)))

(declare-fun c!813309 () Bool)

(assert (=> b!4767959 (= c!813309 (and ((_ is Cons!53502) (toList!6306 (extractMap!2152 (toList!6305 lt!1930827)))) (not (= (_1!31075 (h!59914 (toList!6306 (extractMap!2152 (toList!6305 lt!1930827))))) key!1776))))))

(declare-fun b!4767960 () Bool)

(assert (=> b!4767960 (= e!2976109 (getValueByKey!2194 (t!361054 (toList!6306 (extractMap!2152 (toList!6305 lt!1930827)))) key!1776))))

(declare-fun d!1524045 () Bool)

(declare-fun c!813308 () Bool)

(assert (=> d!1524045 (= c!813308 (and ((_ is Cons!53502) (toList!6306 (extractMap!2152 (toList!6305 lt!1930827)))) (= (_1!31075 (h!59914 (toList!6306 (extractMap!2152 (toList!6305 lt!1930827))))) key!1776)))))

(assert (=> d!1524045 (= (getValueByKey!2194 (toList!6306 (extractMap!2152 (toList!6305 lt!1930827))) key!1776) e!2976108)))

(declare-fun b!4767958 () Bool)

(assert (=> b!4767958 (= e!2976108 (Some!12695 (_2!31075 (h!59914 (toList!6306 (extractMap!2152 (toList!6305 lt!1930827)))))))))

(declare-fun b!4767961 () Bool)

(assert (=> b!4767961 (= e!2976109 None!12695)))

(assert (= (and d!1524045 c!813308) b!4767958))

(assert (= (and d!1524045 (not c!813308)) b!4767959))

(assert (= (and b!4767959 c!813309) b!4767960))

(assert (= (and b!4767959 (not c!813309)) b!4767961))

(declare-fun m!5739314 () Bool)

(assert (=> b!4767960 m!5739314))

(assert (=> b!4767938 d!1524045))

(declare-fun bs!1149124 () Bool)

(declare-fun d!1524047 () Bool)

(assert (= bs!1149124 (and d!1524047 b!4767941)))

(declare-fun lambda!224581 () Int)

(assert (=> bs!1149124 (= lambda!224581 lambda!224578)))

(declare-fun lt!1930838 () ListMap!5801)

(declare-fun invariantList!1663 (List!53626) Bool)

(assert (=> d!1524047 (invariantList!1663 (toList!6306 lt!1930838))))

(declare-fun e!2976112 () ListMap!5801)

(assert (=> d!1524047 (= lt!1930838 e!2976112)))

(declare-fun c!813312 () Bool)

(assert (=> d!1524047 (= c!813312 ((_ is Cons!53503) (toList!6305 lt!1930827)))))

(declare-fun forall!11879 (List!53627 Int) Bool)

(assert (=> d!1524047 (forall!11879 (toList!6305 lt!1930827) lambda!224581)))

(assert (=> d!1524047 (= (extractMap!2152 (toList!6305 lt!1930827)) lt!1930838)))

(declare-fun b!4767966 () Bool)

(declare-fun addToMapMapFromBucket!1628 (List!53626 ListMap!5801) ListMap!5801)

(assert (=> b!4767966 (= e!2976112 (addToMapMapFromBucket!1628 (_2!31076 (h!59915 (toList!6305 lt!1930827))) (extractMap!2152 (t!361055 (toList!6305 lt!1930827)))))))

(declare-fun b!4767967 () Bool)

(assert (=> b!4767967 (= e!2976112 (ListMap!5802 Nil!53502))))

(assert (= (and d!1524047 c!813312) b!4767966))

(assert (= (and d!1524047 (not c!813312)) b!4767967))

(declare-fun m!5739316 () Bool)

(assert (=> d!1524047 m!5739316))

(declare-fun m!5739318 () Bool)

(assert (=> d!1524047 m!5739318))

(declare-fun m!5739320 () Bool)

(assert (=> b!4767966 m!5739320))

(assert (=> b!4767966 m!5739320))

(declare-fun m!5739322 () Bool)

(assert (=> b!4767966 m!5739322))

(assert (=> b!4767938 d!1524047))

(declare-fun d!1524049 () Bool)

(assert (=> d!1524049 (= (array_inv!5799 (_keys!5277 (v!47718 (underlying!10077 (v!47719 (underlying!10078 thiss!42052)))))) (bvsge (size!36285 (_keys!5277 (v!47718 (underlying!10077 (v!47719 (underlying!10078 thiss!42052)))))) #b00000000000000000000000000000000))))

(assert (=> b!4767942 d!1524049))

(declare-fun d!1524051 () Bool)

(assert (=> d!1524051 (= (array_inv!5800 (_values!5248 (v!47718 (underlying!10077 (v!47719 (underlying!10078 thiss!42052)))))) (bvsge (size!36286 (_values!5248 (v!47718 (underlying!10077 (v!47719 (underlying!10078 thiss!42052)))))) #b00000000000000000000000000000000))))

(assert (=> b!4767942 d!1524051))

(declare-fun d!1524053 () Bool)

(assert (=> d!1524053 (isDefined!9851 (getValueByKey!2195 (toList!6305 lt!1930827) lt!1930821))))

(declare-fun lt!1930841 () Unit!138294)

(declare-fun choose!33989 (List!53627 (_ BitVec 64)) Unit!138294)

(assert (=> d!1524053 (= lt!1930841 (choose!33989 (toList!6305 lt!1930827) lt!1930821))))

(declare-fun e!2976115 () Bool)

(assert (=> d!1524053 e!2976115))

(declare-fun res!2022209 () Bool)

(assert (=> d!1524053 (=> (not res!2022209) (not e!2976115))))

(declare-fun isStrictlySorted!810 (List!53627) Bool)

(assert (=> d!1524053 (= res!2022209 (isStrictlySorted!810 (toList!6305 lt!1930827)))))

(assert (=> d!1524053 (= (lemmaContainsKeyImpliesGetValueByKeyDefined!1994 (toList!6305 lt!1930827) lt!1930821) lt!1930841)))

(declare-fun b!4767970 () Bool)

(declare-fun containsKey!3670 (List!53627 (_ BitVec 64)) Bool)

(assert (=> b!4767970 (= e!2976115 (containsKey!3670 (toList!6305 lt!1930827) lt!1930821))))

(assert (= (and d!1524053 res!2022209) b!4767970))

(assert (=> d!1524053 m!5739288))

(assert (=> d!1524053 m!5739288))

(assert (=> d!1524053 m!5739290))

(declare-fun m!5739324 () Bool)

(assert (=> d!1524053 m!5739324))

(declare-fun m!5739326 () Bool)

(assert (=> d!1524053 m!5739326))

(declare-fun m!5739328 () Bool)

(assert (=> b!4767970 m!5739328))

(assert (=> b!4767947 d!1524053))

(declare-fun d!1524055 () Bool)

(declare-fun isEmpty!29285 (Option!12697) Bool)

(assert (=> d!1524055 (= (isDefined!9851 (getValueByKey!2195 (toList!6305 lt!1930827) lt!1930821)) (not (isEmpty!29285 (getValueByKey!2195 (toList!6305 lt!1930827) lt!1930821))))))

(declare-fun bs!1149125 () Bool)

(assert (= bs!1149125 d!1524055))

(assert (=> bs!1149125 m!5739288))

(declare-fun m!5739330 () Bool)

(assert (=> bs!1149125 m!5739330))

(assert (=> b!4767947 d!1524055))

(declare-fun d!1524057 () Bool)

(declare-fun c!813317 () Bool)

(assert (=> d!1524057 (= c!813317 (and ((_ is Cons!53503) (toList!6305 lt!1930827)) (= (_1!31076 (h!59915 (toList!6305 lt!1930827))) lt!1930821)))))

(declare-fun e!2976120 () Option!12697)

(assert (=> d!1524057 (= (getValueByKey!2195 (toList!6305 lt!1930827) lt!1930821) e!2976120)))

(declare-fun b!4767982 () Bool)

(declare-fun e!2976121 () Option!12697)

(assert (=> b!4767982 (= e!2976121 None!12696)))

(declare-fun b!4767980 () Bool)

(assert (=> b!4767980 (= e!2976120 e!2976121)))

(declare-fun c!813318 () Bool)

(assert (=> b!4767980 (= c!813318 (and ((_ is Cons!53503) (toList!6305 lt!1930827)) (not (= (_1!31076 (h!59915 (toList!6305 lt!1930827))) lt!1930821))))))

(declare-fun b!4767979 () Bool)

(assert (=> b!4767979 (= e!2976120 (Some!12696 (_2!31076 (h!59915 (toList!6305 lt!1930827)))))))

(declare-fun b!4767981 () Bool)

(assert (=> b!4767981 (= e!2976121 (getValueByKey!2195 (t!361055 (toList!6305 lt!1930827)) lt!1930821))))

(assert (= (and d!1524057 c!813317) b!4767979))

(assert (= (and d!1524057 (not c!813317)) b!4767980))

(assert (= (and b!4767980 c!813318) b!4767981))

(assert (= (and b!4767980 (not c!813318)) b!4767982))

(declare-fun m!5739332 () Bool)

(assert (=> b!4767981 m!5739332))

(assert (=> b!4767947 d!1524057))

(declare-fun d!1524059 () Bool)

(assert (=> d!1524059 (contains!16856 (toList!6305 lt!1930827) (tuple2!55565 lt!1930821 lt!1930817))))

(declare-fun lt!1930844 () Unit!138294)

(declare-fun choose!33990 (List!53627 (_ BitVec 64) List!53626) Unit!138294)

(assert (=> d!1524059 (= lt!1930844 (choose!33990 (toList!6305 lt!1930827) lt!1930821 lt!1930817))))

(declare-fun e!2976124 () Bool)

(assert (=> d!1524059 e!2976124))

(declare-fun res!2022212 () Bool)

(assert (=> d!1524059 (=> (not res!2022212) (not e!2976124))))

(assert (=> d!1524059 (= res!2022212 (isStrictlySorted!810 (toList!6305 lt!1930827)))))

(assert (=> d!1524059 (= (lemmaGetValueByKeyImpliesContainsTuple!937 (toList!6305 lt!1930827) lt!1930821 lt!1930817) lt!1930844)))

(declare-fun b!4767985 () Bool)

(assert (=> b!4767985 (= e!2976124 (= (getValueByKey!2195 (toList!6305 lt!1930827) lt!1930821) (Some!12696 lt!1930817)))))

(assert (= (and d!1524059 res!2022212) b!4767985))

(declare-fun m!5739334 () Bool)

(assert (=> d!1524059 m!5739334))

(declare-fun m!5739336 () Bool)

(assert (=> d!1524059 m!5739336))

(assert (=> d!1524059 m!5739326))

(assert (=> b!4767985 m!5739288))

(assert (=> b!4767947 d!1524059))

(declare-fun d!1524061 () Bool)

(assert (=> d!1524061 (= (get!18056 lt!1930828) (v!47716 lt!1930828))))

(assert (=> b!4767941 d!1524061))

(declare-fun d!1524063 () Bool)

(assert (=> d!1524063 (contains!16856 (toList!6305 lt!1930827) (tuple2!55565 lt!1930821 lt!1930822))))

(declare-fun lt!1930847 () Unit!138294)

(declare-fun choose!33991 (ListLongMap!4703 (_ BitVec 64) List!53626) Unit!138294)

(assert (=> d!1524063 (= lt!1930847 (choose!33991 lt!1930827 lt!1930821 lt!1930822))))

(assert (=> d!1524063 (contains!16857 lt!1930827 lt!1930821)))

(assert (=> d!1524063 (= (lemmaGetValueImpliesTupleContained!442 lt!1930827 lt!1930821 lt!1930822) lt!1930847)))

(declare-fun bs!1149126 () Bool)

(assert (= bs!1149126 d!1524063))

(declare-fun m!5739338 () Bool)

(assert (=> bs!1149126 m!5739338))

(declare-fun m!5739340 () Bool)

(assert (=> bs!1149126 m!5739340))

(assert (=> bs!1149126 m!5739252))

(assert (=> b!4767941 d!1524063))

(declare-fun d!1524065 () Bool)

(assert (=> d!1524065 (= (get!18057 (getValueByKey!2194 (toList!6306 (map!12002 thiss!42052)) key!1776)) (v!47717 (getValueByKey!2194 (toList!6306 (map!12002 thiss!42052)) key!1776)))))

(assert (=> b!4767941 d!1524065))

(declare-fun d!1524067 () Bool)

(declare-fun map!12004 (LongMapFixedSize!9870) ListLongMap!4703)

(assert (=> d!1524067 (= (map!12003 (v!47719 (underlying!10078 thiss!42052))) (map!12004 (v!47718 (underlying!10077 (v!47719 (underlying!10078 thiss!42052))))))))

(declare-fun bs!1149127 () Bool)

(assert (= bs!1149127 d!1524067))

(declare-fun m!5739342 () Bool)

(assert (=> bs!1149127 m!5739342))

(assert (=> b!4767941 d!1524067))

(declare-fun d!1524069 () Bool)

(declare-fun lt!1930850 () Bool)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!9590 (List!53627) (InoxSet tuple2!55564))

(assert (=> d!1524069 (= lt!1930850 (select (content!9590 (toList!6305 lt!1930827)) lt!1930819))))

(declare-fun e!2976129 () Bool)

(assert (=> d!1524069 (= lt!1930850 e!2976129)))

(declare-fun res!2022217 () Bool)

(assert (=> d!1524069 (=> (not res!2022217) (not e!2976129))))

(assert (=> d!1524069 (= res!2022217 ((_ is Cons!53503) (toList!6305 lt!1930827)))))

(assert (=> d!1524069 (= (contains!16856 (toList!6305 lt!1930827) lt!1930819) lt!1930850)))

(declare-fun b!4767991 () Bool)

(declare-fun e!2976130 () Bool)

(assert (=> b!4767991 (= e!2976129 e!2976130)))

(declare-fun res!2022218 () Bool)

(assert (=> b!4767991 (=> res!2022218 e!2976130)))

(assert (=> b!4767991 (= res!2022218 (= (h!59915 (toList!6305 lt!1930827)) lt!1930819))))

(declare-fun b!4767992 () Bool)

(assert (=> b!4767992 (= e!2976130 (contains!16856 (t!361055 (toList!6305 lt!1930827)) lt!1930819))))

(assert (= (and d!1524069 res!2022217) b!4767991))

(assert (= (and b!4767991 (not res!2022218)) b!4767992))

(declare-fun m!5739344 () Bool)

(assert (=> d!1524069 m!5739344))

(declare-fun m!5739346 () Bool)

(assert (=> d!1524069 m!5739346))

(declare-fun m!5739348 () Bool)

(assert (=> b!4767992 m!5739348))

(assert (=> b!4767941 d!1524069))

(declare-fun d!1524071 () Bool)

(declare-fun e!2976133 () Bool)

(assert (=> d!1524071 e!2976133))

(declare-fun c!813321 () Bool)

(declare-fun contains!16859 (MutLongMap!4935 (_ BitVec 64)) Bool)

(assert (=> d!1524071 (= c!813321 (contains!16859 (v!47719 (underlying!10078 thiss!42052)) lt!1930821))))

(declare-fun lt!1930853 () List!53626)

(declare-fun apply!12641 (LongMapFixedSize!9870 (_ BitVec 64)) List!53626)

(assert (=> d!1524071 (= lt!1930853 (apply!12641 (v!47718 (underlying!10077 (v!47719 (underlying!10078 thiss!42052)))) lt!1930821))))

(declare-fun valid!3941 (MutLongMap!4935) Bool)

(assert (=> d!1524071 (valid!3941 (v!47719 (underlying!10078 thiss!42052)))))

(assert (=> d!1524071 (= (apply!12640 (v!47719 (underlying!10078 thiss!42052)) lt!1930821) lt!1930853)))

(declare-fun b!4767997 () Bool)

(declare-fun get!18058 (Option!12697) List!53626)

(assert (=> b!4767997 (= e!2976133 (= lt!1930853 (get!18058 (getValueByKey!2195 (toList!6305 (map!12003 (v!47719 (underlying!10078 thiss!42052)))) lt!1930821))))))

(declare-fun b!4767998 () Bool)

(declare-fun dynLambda!21956 (Int (_ BitVec 64)) List!53626)

(assert (=> b!4767998 (= e!2976133 (= lt!1930853 (dynLambda!21956 (defaultEntry!5353 (v!47718 (underlying!10077 (v!47719 (underlying!10078 thiss!42052))))) lt!1930821)))))

(assert (=> b!4767998 ((_ is LongMap!4935) (v!47719 (underlying!10078 thiss!42052)))))

(assert (= (and d!1524071 c!813321) b!4767997))

(assert (= (and d!1524071 (not c!813321)) b!4767998))

(declare-fun b_lambda!184439 () Bool)

(assert (=> (not b_lambda!184439) (not b!4767998)))

(declare-fun t!361057 () Bool)

(declare-fun tb!257481 () Bool)

(assert (=> (and b!4767942 (= (defaultEntry!5353 (v!47718 (underlying!10077 (v!47719 (underlying!10078 thiss!42052))))) (defaultEntry!5353 (v!47718 (underlying!10077 (v!47719 (underlying!10078 thiss!42052)))))) t!361057) tb!257481))

(assert (=> b!4767998 t!361057))

(declare-fun result!319128 () Bool)

(declare-fun b_and!341407 () Bool)

(assert (= b_and!341403 (and (=> t!361057 result!319128) b_and!341407)))

(declare-fun m!5739350 () Bool)

(assert (=> d!1524071 m!5739350))

(declare-fun m!5739352 () Bool)

(assert (=> d!1524071 m!5739352))

(declare-fun m!5739354 () Bool)

(assert (=> d!1524071 m!5739354))

(assert (=> b!4767997 m!5739274))

(declare-fun m!5739356 () Bool)

(assert (=> b!4767997 m!5739356))

(assert (=> b!4767997 m!5739356))

(declare-fun m!5739358 () Bool)

(assert (=> b!4767997 m!5739358))

(declare-fun m!5739360 () Bool)

(assert (=> b!4767998 m!5739360))

(assert (=> b!4767941 d!1524071))

(declare-fun b!4768015 () Bool)

(declare-fun e!2976146 () Option!12695)

(assert (=> b!4768015 (= e!2976146 None!12694)))

(declare-fun b!4768016 () Bool)

(declare-fun e!2976148 () Bool)

(declare-fun containsKey!3671 (List!53626 K!14979) Bool)

(assert (=> b!4768016 (= e!2976148 (not (containsKey!3671 lt!1930817 key!1776)))))

(declare-fun b!4768018 () Bool)

(declare-fun e!2976145 () Bool)

(declare-fun lt!1930856 () Option!12695)

(declare-fun contains!16860 (List!53626 tuple2!55562) Bool)

(assert (=> b!4768018 (= e!2976145 (contains!16860 lt!1930817 (get!18056 lt!1930856)))))

(declare-fun d!1524073 () Bool)

(declare-fun e!2976144 () Bool)

(assert (=> d!1524073 e!2976144))

(declare-fun res!2022229 () Bool)

(assert (=> d!1524073 (=> res!2022229 e!2976144)))

(assert (=> d!1524073 (= res!2022229 e!2976148)))

(declare-fun res!2022228 () Bool)

(assert (=> d!1524073 (=> (not res!2022228) (not e!2976148))))

(declare-fun isEmpty!29286 (Option!12695) Bool)

(assert (=> d!1524073 (= res!2022228 (isEmpty!29286 lt!1930856))))

(declare-fun e!2976147 () Option!12695)

(assert (=> d!1524073 (= lt!1930856 e!2976147)))

(declare-fun c!813327 () Bool)

(assert (=> d!1524073 (= c!813327 (and ((_ is Cons!53502) lt!1930817) (= (_1!31075 (h!59914 lt!1930817)) key!1776)))))

(declare-fun noDuplicateKeys!2257 (List!53626) Bool)

(assert (=> d!1524073 (noDuplicateKeys!2257 lt!1930817)))

(assert (=> d!1524073 (= (getPair!650 lt!1930817 key!1776) lt!1930856)))

(declare-fun b!4768017 () Bool)

(assert (=> b!4768017 (= e!2976144 e!2976145)))

(declare-fun res!2022230 () Bool)

(assert (=> b!4768017 (=> (not res!2022230) (not e!2976145))))

(assert (=> b!4768017 (= res!2022230 (isDefined!9850 lt!1930856))))

(declare-fun b!4768019 () Bool)

(assert (=> b!4768019 (= e!2976147 (Some!12694 (h!59914 lt!1930817)))))

(declare-fun b!4768020 () Bool)

(declare-fun res!2022227 () Bool)

(assert (=> b!4768020 (=> (not res!2022227) (not e!2976145))))

(assert (=> b!4768020 (= res!2022227 (= (_1!31075 (get!18056 lt!1930856)) key!1776))))

(declare-fun b!4768021 () Bool)

(assert (=> b!4768021 (= e!2976146 (getPair!650 (t!361054 lt!1930817) key!1776))))

(declare-fun b!4768022 () Bool)

(assert (=> b!4768022 (= e!2976147 e!2976146)))

(declare-fun c!813326 () Bool)

(assert (=> b!4768022 (= c!813326 ((_ is Cons!53502) lt!1930817))))

(assert (= (and d!1524073 c!813327) b!4768019))

(assert (= (and d!1524073 (not c!813327)) b!4768022))

(assert (= (and b!4768022 c!813326) b!4768021))

(assert (= (and b!4768022 (not c!813326)) b!4768015))

(assert (= (and d!1524073 res!2022228) b!4768016))

(assert (= (and d!1524073 (not res!2022229)) b!4768017))

(assert (= (and b!4768017 res!2022230) b!4768020))

(assert (= (and b!4768020 res!2022227) b!4768018))

(declare-fun m!5739362 () Bool)

(assert (=> b!4768018 m!5739362))

(assert (=> b!4768018 m!5739362))

(declare-fun m!5739364 () Bool)

(assert (=> b!4768018 m!5739364))

(declare-fun m!5739366 () Bool)

(assert (=> d!1524073 m!5739366))

(declare-fun m!5739368 () Bool)

(assert (=> d!1524073 m!5739368))

(assert (=> b!4768020 m!5739362))

(declare-fun m!5739370 () Bool)

(assert (=> b!4768021 m!5739370))

(declare-fun m!5739372 () Bool)

(assert (=> b!4768016 m!5739372))

(declare-fun m!5739374 () Bool)

(assert (=> b!4768017 m!5739374))

(assert (=> b!4767941 d!1524073))

(declare-fun d!1524075 () Bool)

(declare-fun hash!4578 (Hashable!6596 K!14979) (_ BitVec 64))

(assert (=> d!1524075 (= (hash!4577 (hashF!12463 thiss!42052) key!1776) (hash!4578 (hashF!12463 thiss!42052) key!1776))))

(declare-fun bs!1149128 () Bool)

(assert (= bs!1149128 d!1524075))

(declare-fun m!5739376 () Bool)

(assert (=> bs!1149128 m!5739376))

(assert (=> b!4767941 d!1524075))

(declare-fun d!1524077 () Bool)

(declare-fun dynLambda!21957 (Int tuple2!55564) Bool)

(assert (=> d!1524077 (dynLambda!21957 lambda!224578 lt!1930833)))

(declare-fun lt!1930859 () Unit!138294)

(declare-fun choose!33992 (List!53627 Int tuple2!55564) Unit!138294)

(assert (=> d!1524077 (= lt!1930859 (choose!33992 (toList!6305 lt!1930827) lambda!224578 lt!1930833))))

(declare-fun e!2976151 () Bool)

(assert (=> d!1524077 e!2976151))

(declare-fun res!2022233 () Bool)

(assert (=> d!1524077 (=> (not res!2022233) (not e!2976151))))

(assert (=> d!1524077 (= res!2022233 (forall!11879 (toList!6305 lt!1930827) lambda!224578))))

(assert (=> d!1524077 (= (forallContained!3867 (toList!6305 lt!1930827) lambda!224578 lt!1930833) lt!1930859)))

(declare-fun b!4768025 () Bool)

(assert (=> b!4768025 (= e!2976151 (contains!16856 (toList!6305 lt!1930827) lt!1930833))))

(assert (= (and d!1524077 res!2022233) b!4768025))

(declare-fun b_lambda!184441 () Bool)

(assert (=> (not b_lambda!184441) (not d!1524077)))

(declare-fun m!5739378 () Bool)

(assert (=> d!1524077 m!5739378))

(declare-fun m!5739380 () Bool)

(assert (=> d!1524077 m!5739380))

(declare-fun m!5739382 () Bool)

(assert (=> d!1524077 m!5739382))

(assert (=> b!4768025 m!5739262))

(assert (=> b!4767941 d!1524077))

(declare-fun bs!1149129 () Bool)

(declare-fun d!1524079 () Bool)

(assert (= bs!1149129 (and d!1524079 b!4767941)))

(declare-fun lambda!224584 () Int)

(assert (=> bs!1149129 (= lambda!224584 lambda!224578)))

(declare-fun bs!1149130 () Bool)

(assert (= bs!1149130 (and d!1524079 d!1524047)))

(assert (=> bs!1149130 (= lambda!224584 lambda!224581)))

(assert (=> d!1524079 (contains!16857 lt!1930827 (hash!4577 (hashF!12463 thiss!42052) key!1776))))

(declare-fun lt!1930862 () Unit!138294)

(declare-fun choose!33993 (ListLongMap!4703 K!14979 Hashable!6596) Unit!138294)

(assert (=> d!1524079 (= lt!1930862 (choose!33993 lt!1930827 key!1776 (hashF!12463 thiss!42052)))))

(assert (=> d!1524079 (forall!11879 (toList!6305 lt!1930827) lambda!224584)))

(assert (=> d!1524079 (= (lemmaInGenMapThenLongMapContainsHash!843 lt!1930827 key!1776 (hashF!12463 thiss!42052)) lt!1930862)))

(declare-fun bs!1149131 () Bool)

(assert (= bs!1149131 d!1524079))

(assert (=> bs!1149131 m!5739258))

(assert (=> bs!1149131 m!5739258))

(declare-fun m!5739384 () Bool)

(assert (=> bs!1149131 m!5739384))

(declare-fun m!5739386 () Bool)

(assert (=> bs!1149131 m!5739386))

(declare-fun m!5739388 () Bool)

(assert (=> bs!1149131 m!5739388))

(assert (=> b!4767941 d!1524079))

(declare-fun d!1524081 () Bool)

(assert (=> d!1524081 (dynLambda!21957 lambda!224578 lt!1930819)))

(declare-fun lt!1930863 () Unit!138294)

(assert (=> d!1524081 (= lt!1930863 (choose!33992 (toList!6305 lt!1930827) lambda!224578 lt!1930819))))

(declare-fun e!2976152 () Bool)

(assert (=> d!1524081 e!2976152))

(declare-fun res!2022234 () Bool)

(assert (=> d!1524081 (=> (not res!2022234) (not e!2976152))))

(assert (=> d!1524081 (= res!2022234 (forall!11879 (toList!6305 lt!1930827) lambda!224578))))

(assert (=> d!1524081 (= (forallContained!3867 (toList!6305 lt!1930827) lambda!224578 lt!1930819) lt!1930863)))

(declare-fun b!4768026 () Bool)

(assert (=> b!4768026 (= e!2976152 (contains!16856 (toList!6305 lt!1930827) lt!1930819))))

(assert (= (and d!1524081 res!2022234) b!4768026))

(declare-fun b_lambda!184443 () Bool)

(assert (=> (not b_lambda!184443) (not d!1524081)))

(declare-fun m!5739390 () Bool)

(assert (=> d!1524081 m!5739390))

(declare-fun m!5739392 () Bool)

(assert (=> d!1524081 m!5739392))

(assert (=> d!1524081 m!5739382))

(assert (=> b!4768026 m!5739270))

(assert (=> b!4767941 d!1524081))

(declare-fun bs!1149132 () Bool)

(declare-fun d!1524083 () Bool)

(assert (= bs!1149132 (and d!1524083 b!4767941)))

(declare-fun lambda!224591 () Int)

(assert (=> bs!1149132 (= lambda!224591 lambda!224578)))

(declare-fun bs!1149133 () Bool)

(assert (= bs!1149133 (and d!1524083 d!1524047)))

(assert (=> bs!1149133 (= lambda!224591 lambda!224581)))

(declare-fun bs!1149134 () Bool)

(assert (= bs!1149134 (and d!1524083 d!1524079)))

(assert (=> bs!1149134 (= lambda!224591 lambda!224584)))

(declare-fun b!4768035 () Bool)

(declare-fun res!2022245 () Bool)

(declare-fun e!2976158 () Bool)

(assert (=> b!4768035 (=> (not res!2022245) (not e!2976158))))

(declare-fun allKeysSameHashInMap!2024 (ListLongMap!4703 Hashable!6596) Bool)

(assert (=> b!4768035 (= res!2022245 (allKeysSameHashInMap!2024 lt!1930827 (hashF!12463 thiss!42052)))))

(declare-fun lt!1930883 () (_ BitVec 64))

(declare-fun e!2976157 () Bool)

(declare-fun b!4768038 () Bool)

(declare-fun lt!1930885 () List!53626)

(assert (=> b!4768038 (= e!2976157 (= (getValueByKey!2195 (toList!6305 lt!1930827) lt!1930883) (Some!12696 lt!1930885)))))

(declare-fun b!4768036 () Bool)

(declare-fun res!2022246 () Bool)

(assert (=> b!4768036 (=> (not res!2022246) (not e!2976158))))

(declare-fun contains!16861 (ListMap!5801 K!14979) Bool)

(assert (=> b!4768036 (= res!2022246 (contains!16861 (extractMap!2152 (toList!6305 lt!1930827)) key!1776))))

(assert (=> d!1524083 e!2976158))

(declare-fun res!2022243 () Bool)

(assert (=> d!1524083 (=> (not res!2022243) (not e!2976158))))

(assert (=> d!1524083 (= res!2022243 (forall!11879 (toList!6305 lt!1930827) lambda!224591))))

(declare-fun lt!1930887 () Unit!138294)

(declare-fun choose!33994 (ListLongMap!4703 K!14979 Hashable!6596) Unit!138294)

(assert (=> d!1524083 (= lt!1930887 (choose!33994 lt!1930827 key!1776 (hashF!12463 thiss!42052)))))

(assert (=> d!1524083 (forall!11879 (toList!6305 lt!1930827) lambda!224591)))

(assert (=> d!1524083 (= (lemmaInGenMapThenGetPairDefined!433 lt!1930827 key!1776 (hashF!12463 thiss!42052)) lt!1930887)))

(declare-fun b!4768037 () Bool)

(assert (=> b!4768037 (= e!2976158 (isDefined!9850 (getPair!650 (apply!12639 lt!1930827 (hash!4577 (hashF!12463 thiss!42052) key!1776)) key!1776)))))

(declare-fun lt!1930881 () Unit!138294)

(assert (=> b!4768037 (= lt!1930881 (forallContained!3867 (toList!6305 lt!1930827) lambda!224591 (tuple2!55565 (hash!4577 (hashF!12463 thiss!42052) key!1776) (apply!12639 lt!1930827 (hash!4577 (hashF!12463 thiss!42052) key!1776)))))))

(declare-fun lt!1930880 () Unit!138294)

(declare-fun lt!1930886 () Unit!138294)

(assert (=> b!4768037 (= lt!1930880 lt!1930886)))

(assert (=> b!4768037 (contains!16856 (toList!6305 lt!1930827) (tuple2!55565 lt!1930883 lt!1930885))))

(assert (=> b!4768037 (= lt!1930886 (lemmaGetValueImpliesTupleContained!442 lt!1930827 lt!1930883 lt!1930885))))

(assert (=> b!4768037 e!2976157))

(declare-fun res!2022244 () Bool)

(assert (=> b!4768037 (=> (not res!2022244) (not e!2976157))))

(assert (=> b!4768037 (= res!2022244 (contains!16857 lt!1930827 lt!1930883))))

(assert (=> b!4768037 (= lt!1930885 (apply!12639 lt!1930827 (hash!4577 (hashF!12463 thiss!42052) key!1776)))))

(assert (=> b!4768037 (= lt!1930883 (hash!4577 (hashF!12463 thiss!42052) key!1776))))

(declare-fun lt!1930884 () Unit!138294)

(declare-fun lt!1930882 () Unit!138294)

(assert (=> b!4768037 (= lt!1930884 lt!1930882)))

(assert (=> b!4768037 (contains!16857 lt!1930827 (hash!4577 (hashF!12463 thiss!42052) key!1776))))

(assert (=> b!4768037 (= lt!1930882 (lemmaInGenMapThenLongMapContainsHash!843 lt!1930827 key!1776 (hashF!12463 thiss!42052)))))

(assert (= (and d!1524083 res!2022243) b!4768035))

(assert (= (and b!4768035 res!2022245) b!4768036))

(assert (= (and b!4768036 res!2022246) b!4768037))

(assert (= (and b!4768037 res!2022244) b!4768038))

(declare-fun m!5739394 () Bool)

(assert (=> b!4768038 m!5739394))

(declare-fun m!5739396 () Bool)

(assert (=> b!4768035 m!5739396))

(assert (=> b!4768036 m!5739298))

(assert (=> b!4768036 m!5739298))

(declare-fun m!5739398 () Bool)

(assert (=> b!4768036 m!5739398))

(declare-fun m!5739400 () Bool)

(assert (=> d!1524083 m!5739400))

(declare-fun m!5739402 () Bool)

(assert (=> d!1524083 m!5739402))

(assert (=> d!1524083 m!5739400))

(assert (=> b!4768037 m!5739266))

(declare-fun m!5739404 () Bool)

(assert (=> b!4768037 m!5739404))

(declare-fun m!5739406 () Bool)

(assert (=> b!4768037 m!5739406))

(declare-fun m!5739408 () Bool)

(assert (=> b!4768037 m!5739408))

(declare-fun m!5739410 () Bool)

(assert (=> b!4768037 m!5739410))

(assert (=> b!4768037 m!5739258))

(declare-fun m!5739412 () Bool)

(assert (=> b!4768037 m!5739412))

(assert (=> b!4768037 m!5739408))

(declare-fun m!5739414 () Bool)

(assert (=> b!4768037 m!5739414))

(assert (=> b!4768037 m!5739258))

(assert (=> b!4768037 m!5739406))

(declare-fun m!5739416 () Bool)

(assert (=> b!4768037 m!5739416))

(assert (=> b!4768037 m!5739258))

(assert (=> b!4768037 m!5739384))

(assert (=> b!4767941 d!1524083))

(declare-fun b!4768040 () Bool)

(declare-fun e!2976159 () Option!12696)

(declare-fun e!2976160 () Option!12696)

(assert (=> b!4768040 (= e!2976159 e!2976160)))

(declare-fun c!813329 () Bool)

(assert (=> b!4768040 (= c!813329 (and ((_ is Cons!53502) (toList!6306 (map!12002 thiss!42052))) (not (= (_1!31075 (h!59914 (toList!6306 (map!12002 thiss!42052)))) key!1776))))))

(declare-fun b!4768041 () Bool)

(assert (=> b!4768041 (= e!2976160 (getValueByKey!2194 (t!361054 (toList!6306 (map!12002 thiss!42052))) key!1776))))

(declare-fun d!1524085 () Bool)

(declare-fun c!813328 () Bool)

(assert (=> d!1524085 (= c!813328 (and ((_ is Cons!53502) (toList!6306 (map!12002 thiss!42052))) (= (_1!31075 (h!59914 (toList!6306 (map!12002 thiss!42052)))) key!1776)))))

(assert (=> d!1524085 (= (getValueByKey!2194 (toList!6306 (map!12002 thiss!42052)) key!1776) e!2976159)))

(declare-fun b!4768039 () Bool)

(assert (=> b!4768039 (= e!2976159 (Some!12695 (_2!31075 (h!59914 (toList!6306 (map!12002 thiss!42052))))))))

(declare-fun b!4768042 () Bool)

(assert (=> b!4768042 (= e!2976160 None!12695)))

(assert (= (and d!1524085 c!813328) b!4768039))

(assert (= (and d!1524085 (not c!813328)) b!4768040))

(assert (= (and b!4768040 c!813329) b!4768041))

(assert (= (and b!4768040 (not c!813329)) b!4768042))

(declare-fun m!5739418 () Bool)

(assert (=> b!4768041 m!5739418))

(assert (=> b!4767941 d!1524085))

(declare-fun d!1524087 () Bool)

(assert (=> d!1524087 (= (isDefined!9850 lt!1930820) (not (isEmpty!29286 lt!1930820)))))

(declare-fun bs!1149135 () Bool)

(assert (= bs!1149135 d!1524087))

(declare-fun m!5739420 () Bool)

(assert (=> bs!1149135 m!5739420))

(assert (=> b!4767941 d!1524087))

(declare-fun d!1524089 () Bool)

(declare-fun lt!1930890 () ListMap!5801)

(assert (=> d!1524089 (invariantList!1663 (toList!6306 lt!1930890))))

(assert (=> d!1524089 (= lt!1930890 (extractMap!2152 (toList!6305 (map!12003 (v!47719 (underlying!10078 thiss!42052))))))))

(assert (=> d!1524089 (valid!3940 thiss!42052)))

(assert (=> d!1524089 (= (map!12002 thiss!42052) lt!1930890)))

(declare-fun bs!1149136 () Bool)

(assert (= bs!1149136 d!1524089))

(declare-fun m!5739422 () Bool)

(assert (=> bs!1149136 m!5739422))

(assert (=> bs!1149136 m!5739274))

(declare-fun m!5739424 () Bool)

(assert (=> bs!1149136 m!5739424))

(assert (=> bs!1149136 m!5739304))

(assert (=> b!4767941 d!1524089))

(declare-fun bs!1149137 () Bool)

(declare-fun d!1524091 () Bool)

(assert (= bs!1149137 (and d!1524091 b!4767941)))

(declare-fun lambda!224604 () Int)

(assert (=> bs!1149137 (= lambda!224604 lambda!224578)))

(declare-fun bs!1149138 () Bool)

(assert (= bs!1149138 (and d!1524091 d!1524047)))

(assert (=> bs!1149138 (= lambda!224604 lambda!224581)))

(declare-fun bs!1149139 () Bool)

(assert (= bs!1149139 (and d!1524091 d!1524079)))

(assert (=> bs!1149139 (= lambda!224604 lambda!224584)))

(declare-fun bs!1149140 () Bool)

(assert (= bs!1149140 (and d!1524091 d!1524083)))

(assert (=> bs!1149140 (= lambda!224604 lambda!224591)))

(declare-fun b!4768063 () Bool)

(declare-fun res!2022272 () Bool)

(declare-fun e!2976171 () Bool)

(assert (=> b!4768063 (=> (not res!2022272) (not e!2976171))))

(assert (=> b!4768063 (= res!2022272 (allKeysSameHashInMap!2024 lt!1930827 (hashF!12463 thiss!42052)))))

(declare-fun b!4768064 () Bool)

(assert (=> b!4768064 (= e!2976171 (= (_2!31075 (get!18056 (getPair!650 (apply!12639 lt!1930827 (hash!4577 (hashF!12463 thiss!42052) key!1776)) key!1776))) (get!18057 (getValueByKey!2194 (toList!6306 (extractMap!2152 (toList!6305 lt!1930827))) key!1776))))))

(declare-fun lt!1930932 () Unit!138294)

(declare-fun lt!1930930 () Unit!138294)

(assert (=> b!4768064 (= lt!1930932 lt!1930930)))

(declare-fun e!2976175 () Bool)

(assert (=> b!4768064 e!2976175))

(declare-fun res!2022269 () Bool)

(assert (=> b!4768064 (=> (not res!2022269) (not e!2976175))))

(assert (=> b!4768064 (= res!2022269 (forall!11879 (toList!6305 lt!1930827) lambda!224604))))

(assert (=> b!4768064 (= lt!1930930 (lemmaInGenMapThenGetPairDefined!433 lt!1930827 key!1776 (hashF!12463 thiss!42052)))))

(declare-fun e!2976172 () Bool)

(assert (=> b!4768064 e!2976172))

(declare-fun res!2022268 () Bool)

(assert (=> b!4768064 (=> (not res!2022268) (not e!2976172))))

(assert (=> b!4768064 (= res!2022268 (forall!11879 (toList!6305 lt!1930827) lambda!224604))))

(declare-fun lt!1930926 () Unit!138294)

(assert (=> b!4768064 (= lt!1930926 (forallContained!3867 (toList!6305 lt!1930827) lambda!224604 (tuple2!55565 (hash!4577 (hashF!12463 thiss!42052) key!1776) (apply!12639 lt!1930827 (hash!4577 (hashF!12463 thiss!42052) key!1776)))))))

(declare-fun lt!1930941 () Unit!138294)

(declare-fun lt!1930940 () Unit!138294)

(assert (=> b!4768064 (= lt!1930941 lt!1930940)))

(declare-fun lt!1930929 () (_ BitVec 64))

(declare-fun lt!1930927 () List!53626)

(assert (=> b!4768064 (contains!16856 (toList!6305 lt!1930827) (tuple2!55565 lt!1930929 lt!1930927))))

(assert (=> b!4768064 (= lt!1930940 (lemmaGetValueImpliesTupleContained!442 lt!1930827 lt!1930929 lt!1930927))))

(declare-fun e!2976173 () Bool)

(assert (=> b!4768064 e!2976173))

(declare-fun res!2022271 () Bool)

(assert (=> b!4768064 (=> (not res!2022271) (not e!2976173))))

(assert (=> b!4768064 (= res!2022271 (contains!16857 lt!1930827 lt!1930929))))

(assert (=> b!4768064 (= lt!1930927 (apply!12639 lt!1930827 (hash!4577 (hashF!12463 thiss!42052) key!1776)))))

(assert (=> b!4768064 (= lt!1930929 (hash!4577 (hashF!12463 thiss!42052) key!1776))))

(declare-fun lt!1930928 () Unit!138294)

(declare-fun lt!1930931 () Unit!138294)

(assert (=> b!4768064 (= lt!1930928 lt!1930931)))

(assert (=> b!4768064 (contains!16857 lt!1930827 (hash!4577 (hashF!12463 thiss!42052) key!1776))))

(assert (=> b!4768064 (= lt!1930931 (lemmaInGenMapThenLongMapContainsHash!843 lt!1930827 key!1776 (hashF!12463 thiss!42052)))))

(declare-fun b!4768065 () Bool)

(declare-fun res!2022274 () Bool)

(assert (=> b!4768065 (=> (not res!2022274) (not e!2976175))))

(assert (=> b!4768065 (= res!2022274 (allKeysSameHashInMap!2024 lt!1930827 (hashF!12463 thiss!42052)))))

(declare-fun b!4768066 () Bool)

(assert (=> b!4768066 (= e!2976173 (= (getValueByKey!2195 (toList!6305 lt!1930827) lt!1930929) (Some!12696 lt!1930927)))))

(declare-fun e!2976174 () Bool)

(declare-fun lt!1930939 () List!53626)

(declare-fun b!4768067 () Bool)

(declare-fun lt!1930938 () (_ BitVec 64))

(assert (=> b!4768067 (= e!2976174 (= (getValueByKey!2195 (toList!6305 lt!1930827) lt!1930938) (Some!12696 lt!1930939)))))

(declare-fun b!4768068 () Bool)

(declare-fun res!2022267 () Bool)

(assert (=> b!4768068 (=> (not res!2022267) (not e!2976171))))

(assert (=> b!4768068 (= res!2022267 (contains!16861 (extractMap!2152 (toList!6305 lt!1930827)) key!1776))))

(declare-fun b!4768069 () Bool)

(assert (=> b!4768069 (= e!2976172 (contains!16861 (extractMap!2152 (toList!6305 lt!1930827)) key!1776))))

(declare-fun b!4768070 () Bool)

(assert (=> b!4768070 (= e!2976175 (isDefined!9850 (getPair!650 (apply!12639 lt!1930827 (hash!4577 (hashF!12463 thiss!42052) key!1776)) key!1776)))))

(declare-fun lt!1930936 () Unit!138294)

(assert (=> b!4768070 (= lt!1930936 (forallContained!3867 (toList!6305 lt!1930827) lambda!224604 (tuple2!55565 (hash!4577 (hashF!12463 thiss!42052) key!1776) (apply!12639 lt!1930827 (hash!4577 (hashF!12463 thiss!42052) key!1776)))))))

(declare-fun lt!1930934 () Unit!138294)

(declare-fun lt!1930925 () Unit!138294)

(assert (=> b!4768070 (= lt!1930934 lt!1930925)))

(assert (=> b!4768070 (contains!16856 (toList!6305 lt!1930827) (tuple2!55565 lt!1930938 lt!1930939))))

(assert (=> b!4768070 (= lt!1930925 (lemmaGetValueImpliesTupleContained!442 lt!1930827 lt!1930938 lt!1930939))))

(assert (=> b!4768070 e!2976174))

(declare-fun res!2022275 () Bool)

(assert (=> b!4768070 (=> (not res!2022275) (not e!2976174))))

(assert (=> b!4768070 (= res!2022275 (contains!16857 lt!1930827 lt!1930938))))

(assert (=> b!4768070 (= lt!1930939 (apply!12639 lt!1930827 (hash!4577 (hashF!12463 thiss!42052) key!1776)))))

(assert (=> b!4768070 (= lt!1930938 (hash!4577 (hashF!12463 thiss!42052) key!1776))))

(declare-fun lt!1930933 () Unit!138294)

(declare-fun lt!1930937 () Unit!138294)

(assert (=> b!4768070 (= lt!1930933 lt!1930937)))

(assert (=> b!4768070 (contains!16857 lt!1930827 (hash!4577 (hashF!12463 thiss!42052) key!1776))))

(assert (=> b!4768070 (= lt!1930937 (lemmaInGenMapThenLongMapContainsHash!843 lt!1930827 key!1776 (hashF!12463 thiss!42052)))))

(assert (=> d!1524091 e!2976171))

(declare-fun res!2022273 () Bool)

(assert (=> d!1524091 (=> (not res!2022273) (not e!2976171))))

(assert (=> d!1524091 (= res!2022273 (forall!11879 (toList!6305 lt!1930827) lambda!224604))))

(declare-fun lt!1930935 () Unit!138294)

(declare-fun choose!33995 (ListLongMap!4703 K!14979 V!15225 Hashable!6596) Unit!138294)

(assert (=> d!1524091 (= lt!1930935 (choose!33995 lt!1930827 key!1776 (_2!31075 lt!1930834) (hashF!12463 thiss!42052)))))

(assert (=> d!1524091 (forall!11879 (toList!6305 lt!1930827) lambda!224604)))

(assert (=> d!1524091 (= (lemmaGetPairGetSameValueAsMap!65 lt!1930827 key!1776 (_2!31075 lt!1930834) (hashF!12463 thiss!42052)) lt!1930935)))

(declare-fun b!4768071 () Bool)

(declare-fun res!2022270 () Bool)

(assert (=> b!4768071 (=> (not res!2022270) (not e!2976175))))

(assert (=> b!4768071 (= res!2022270 (contains!16861 (extractMap!2152 (toList!6305 lt!1930827)) key!1776))))

(declare-fun b!4768072 () Bool)

(declare-fun res!2022276 () Bool)

(assert (=> b!4768072 (=> (not res!2022276) (not e!2976172))))

(assert (=> b!4768072 (= res!2022276 (allKeysSameHashInMap!2024 lt!1930827 (hashF!12463 thiss!42052)))))

(assert (= (and d!1524091 res!2022273) b!4768063))

(assert (= (and b!4768063 res!2022272) b!4768068))

(assert (= (and b!4768068 res!2022267) b!4768064))

(assert (= (and b!4768064 res!2022271) b!4768066))

(assert (= (and b!4768064 res!2022268) b!4768072))

(assert (= (and b!4768072 res!2022276) b!4768069))

(assert (= (and b!4768064 res!2022269) b!4768065))

(assert (= (and b!4768065 res!2022274) b!4768071))

(assert (= (and b!4768071 res!2022270) b!4768070))

(assert (= (and b!4768070 res!2022275) b!4768067))

(declare-fun m!5739426 () Bool)

(assert (=> b!4768066 m!5739426))

(assert (=> b!4768064 m!5739264))

(assert (=> b!4768064 m!5739300))

(assert (=> b!4768064 m!5739266))

(declare-fun m!5739428 () Bool)

(assert (=> b!4768064 m!5739428))

(assert (=> b!4768064 m!5739258))

(assert (=> b!4768064 m!5739384))

(assert (=> b!4768064 m!5739408))

(declare-fun m!5739430 () Bool)

(assert (=> b!4768064 m!5739430))

(assert (=> b!4768064 m!5739258))

(declare-fun m!5739432 () Bool)

(assert (=> b!4768064 m!5739432))

(declare-fun m!5739434 () Bool)

(assert (=> b!4768064 m!5739434))

(assert (=> b!4768064 m!5739298))

(assert (=> b!4768064 m!5739300))

(assert (=> b!4768064 m!5739302))

(declare-fun m!5739436 () Bool)

(assert (=> b!4768064 m!5739436))

(assert (=> b!4768064 m!5739434))

(assert (=> b!4768064 m!5739406))

(assert (=> b!4768064 m!5739408))

(assert (=> b!4768064 m!5739258))

(assert (=> b!4768064 m!5739406))

(declare-fun m!5739438 () Bool)

(assert (=> b!4768064 m!5739438))

(assert (=> b!4768072 m!5739396))

(assert (=> b!4768068 m!5739298))

(assert (=> b!4768068 m!5739298))

(assert (=> b!4768068 m!5739398))

(declare-fun m!5739440 () Bool)

(assert (=> b!4768070 m!5739440))

(assert (=> b!4768070 m!5739428))

(assert (=> b!4768070 m!5739266))

(assert (=> b!4768070 m!5739258))

(assert (=> b!4768070 m!5739384))

(assert (=> b!4768070 m!5739258))

(assert (=> b!4768070 m!5739258))

(assert (=> b!4768070 m!5739406))

(declare-fun m!5739442 () Bool)

(assert (=> b!4768070 m!5739442))

(assert (=> b!4768070 m!5739408))

(assert (=> b!4768070 m!5739414))

(declare-fun m!5739444 () Bool)

(assert (=> b!4768070 m!5739444))

(assert (=> b!4768070 m!5739406))

(assert (=> b!4768070 m!5739408))

(assert (=> b!4768071 m!5739298))

(assert (=> b!4768071 m!5739298))

(assert (=> b!4768071 m!5739398))

(assert (=> b!4768063 m!5739396))

(assert (=> b!4768065 m!5739396))

(assert (=> d!1524091 m!5739434))

(declare-fun m!5739446 () Bool)

(assert (=> d!1524091 m!5739446))

(assert (=> d!1524091 m!5739434))

(assert (=> b!4768069 m!5739298))

(assert (=> b!4768069 m!5739298))

(assert (=> b!4768069 m!5739398))

(declare-fun m!5739448 () Bool)

(assert (=> b!4768067 m!5739448))

(assert (=> b!4767941 d!1524091))

(declare-fun d!1524093 () Bool)

(declare-fun e!2976180 () Bool)

(assert (=> d!1524093 e!2976180))

(declare-fun res!2022279 () Bool)

(assert (=> d!1524093 (=> res!2022279 e!2976180)))

(declare-fun lt!1930951 () Bool)

(assert (=> d!1524093 (= res!2022279 (not lt!1930951))))

(declare-fun lt!1930953 () Bool)

(assert (=> d!1524093 (= lt!1930951 lt!1930953)))

(declare-fun lt!1930952 () Unit!138294)

(declare-fun e!2976181 () Unit!138294)

(assert (=> d!1524093 (= lt!1930952 e!2976181)))

(declare-fun c!813332 () Bool)

(assert (=> d!1524093 (= c!813332 lt!1930953)))

(assert (=> d!1524093 (= lt!1930953 (containsKey!3670 (toList!6305 lt!1930827) lt!1930821))))

(assert (=> d!1524093 (= (contains!16857 lt!1930827 lt!1930821) lt!1930951)))

(declare-fun b!4768079 () Bool)

(declare-fun lt!1930950 () Unit!138294)

(assert (=> b!4768079 (= e!2976181 lt!1930950)))

(assert (=> b!4768079 (= lt!1930950 (lemmaContainsKeyImpliesGetValueByKeyDefined!1994 (toList!6305 lt!1930827) lt!1930821))))

(assert (=> b!4768079 (isDefined!9851 (getValueByKey!2195 (toList!6305 lt!1930827) lt!1930821))))

(declare-fun b!4768080 () Bool)

(declare-fun Unit!138298 () Unit!138294)

(assert (=> b!4768080 (= e!2976181 Unit!138298)))

(declare-fun b!4768081 () Bool)

(assert (=> b!4768081 (= e!2976180 (isDefined!9851 (getValueByKey!2195 (toList!6305 lt!1930827) lt!1930821)))))

(assert (= (and d!1524093 c!813332) b!4768079))

(assert (= (and d!1524093 (not c!813332)) b!4768080))

(assert (= (and d!1524093 (not res!2022279)) b!4768081))

(assert (=> d!1524093 m!5739328))

(assert (=> b!4768079 m!5739286))

(assert (=> b!4768079 m!5739288))

(assert (=> b!4768079 m!5739288))

(assert (=> b!4768079 m!5739290))

(assert (=> b!4768081 m!5739288))

(assert (=> b!4768081 m!5739288))

(assert (=> b!4768081 m!5739290))

(assert (=> b!4767941 d!1524093))

(declare-fun b!4768082 () Bool)

(declare-fun e!2976184 () Option!12695)

(assert (=> b!4768082 (= e!2976184 None!12694)))

(declare-fun b!4768083 () Bool)

(declare-fun e!2976186 () Bool)

(assert (=> b!4768083 (= e!2976186 (not (containsKey!3671 lt!1930822 key!1776)))))

(declare-fun b!4768085 () Bool)

(declare-fun e!2976183 () Bool)

(declare-fun lt!1930954 () Option!12695)

(assert (=> b!4768085 (= e!2976183 (contains!16860 lt!1930822 (get!18056 lt!1930954)))))

(declare-fun d!1524095 () Bool)

(declare-fun e!2976182 () Bool)

(assert (=> d!1524095 e!2976182))

(declare-fun res!2022282 () Bool)

(assert (=> d!1524095 (=> res!2022282 e!2976182)))

(assert (=> d!1524095 (= res!2022282 e!2976186)))

(declare-fun res!2022281 () Bool)

(assert (=> d!1524095 (=> (not res!2022281) (not e!2976186))))

(assert (=> d!1524095 (= res!2022281 (isEmpty!29286 lt!1930954))))

(declare-fun e!2976185 () Option!12695)

(assert (=> d!1524095 (= lt!1930954 e!2976185)))

(declare-fun c!813334 () Bool)

(assert (=> d!1524095 (= c!813334 (and ((_ is Cons!53502) lt!1930822) (= (_1!31075 (h!59914 lt!1930822)) key!1776)))))

(assert (=> d!1524095 (noDuplicateKeys!2257 lt!1930822)))

(assert (=> d!1524095 (= (getPair!650 lt!1930822 key!1776) lt!1930954)))

(declare-fun b!4768084 () Bool)

(assert (=> b!4768084 (= e!2976182 e!2976183)))

(declare-fun res!2022283 () Bool)

(assert (=> b!4768084 (=> (not res!2022283) (not e!2976183))))

(assert (=> b!4768084 (= res!2022283 (isDefined!9850 lt!1930954))))

(declare-fun b!4768086 () Bool)

(assert (=> b!4768086 (= e!2976185 (Some!12694 (h!59914 lt!1930822)))))

(declare-fun b!4768087 () Bool)

(declare-fun res!2022280 () Bool)

(assert (=> b!4768087 (=> (not res!2022280) (not e!2976183))))

(assert (=> b!4768087 (= res!2022280 (= (_1!31075 (get!18056 lt!1930954)) key!1776))))

(declare-fun b!4768088 () Bool)

(assert (=> b!4768088 (= e!2976184 (getPair!650 (t!361054 lt!1930822) key!1776))))

(declare-fun b!4768089 () Bool)

(assert (=> b!4768089 (= e!2976185 e!2976184)))

(declare-fun c!813333 () Bool)

(assert (=> b!4768089 (= c!813333 ((_ is Cons!53502) lt!1930822))))

(assert (= (and d!1524095 c!813334) b!4768086))

(assert (= (and d!1524095 (not c!813334)) b!4768089))

(assert (= (and b!4768089 c!813333) b!4768088))

(assert (= (and b!4768089 (not c!813333)) b!4768082))

(assert (= (and d!1524095 res!2022281) b!4768083))

(assert (= (and d!1524095 (not res!2022282)) b!4768084))

(assert (= (and b!4768084 res!2022283) b!4768087))

(assert (= (and b!4768087 res!2022280) b!4768085))

(declare-fun m!5739450 () Bool)

(assert (=> b!4768085 m!5739450))

(assert (=> b!4768085 m!5739450))

(declare-fun m!5739452 () Bool)

(assert (=> b!4768085 m!5739452))

(declare-fun m!5739454 () Bool)

(assert (=> d!1524095 m!5739454))

(declare-fun m!5739456 () Bool)

(assert (=> d!1524095 m!5739456))

(assert (=> b!4768087 m!5739450))

(declare-fun m!5739458 () Bool)

(assert (=> b!4768088 m!5739458))

(declare-fun m!5739460 () Bool)

(assert (=> b!4768083 m!5739460))

(declare-fun m!5739462 () Bool)

(assert (=> b!4768084 m!5739462))

(assert (=> b!4767941 d!1524095))

(declare-fun d!1524097 () Bool)

(assert (=> d!1524097 (= (apply!12639 lt!1930827 lt!1930821) (get!18058 (getValueByKey!2195 (toList!6305 lt!1930827) lt!1930821)))))

(declare-fun bs!1149141 () Bool)

(assert (= bs!1149141 d!1524097))

(assert (=> bs!1149141 m!5739288))

(assert (=> bs!1149141 m!5739288))

(declare-fun m!5739464 () Bool)

(assert (=> bs!1149141 m!5739464))

(assert (=> b!4767941 d!1524097))

(declare-fun d!1524099 () Bool)

(declare-fun lt!1930955 () Bool)

(assert (=> d!1524099 (= lt!1930955 (select (content!9590 (toList!6305 lt!1930827)) lt!1930833))))

(declare-fun e!2976187 () Bool)

(assert (=> d!1524099 (= lt!1930955 e!2976187)))

(declare-fun res!2022284 () Bool)

(assert (=> d!1524099 (=> (not res!2022284) (not e!2976187))))

(assert (=> d!1524099 (= res!2022284 ((_ is Cons!53503) (toList!6305 lt!1930827)))))

(assert (=> d!1524099 (= (contains!16856 (toList!6305 lt!1930827) lt!1930833) lt!1930955)))

(declare-fun b!4768090 () Bool)

(declare-fun e!2976188 () Bool)

(assert (=> b!4768090 (= e!2976187 e!2976188)))

(declare-fun res!2022285 () Bool)

(assert (=> b!4768090 (=> res!2022285 e!2976188)))

(assert (=> b!4768090 (= res!2022285 (= (h!59915 (toList!6305 lt!1930827)) lt!1930833))))

(declare-fun b!4768091 () Bool)

(assert (=> b!4768091 (= e!2976188 (contains!16856 (t!361055 (toList!6305 lt!1930827)) lt!1930833))))

(assert (= (and d!1524099 res!2022284) b!4768090))

(assert (= (and b!4768090 (not res!2022285)) b!4768091))

(assert (=> d!1524099 m!5739344))

(declare-fun m!5739466 () Bool)

(assert (=> d!1524099 m!5739466))

(declare-fun m!5739468 () Bool)

(assert (=> b!4768091 m!5739468))

(assert (=> b!4767941 d!1524099))

(declare-fun bs!1149142 () Bool)

(declare-fun b!4768096 () Bool)

(assert (= bs!1149142 (and b!4768096 b!4767941)))

(declare-fun lambda!224607 () Int)

(assert (=> bs!1149142 (= lambda!224607 lambda!224578)))

(declare-fun bs!1149143 () Bool)

(assert (= bs!1149143 (and b!4768096 d!1524047)))

(assert (=> bs!1149143 (= lambda!224607 lambda!224581)))

(declare-fun bs!1149144 () Bool)

(assert (= bs!1149144 (and b!4768096 d!1524083)))

(assert (=> bs!1149144 (= lambda!224607 lambda!224591)))

(declare-fun bs!1149145 () Bool)

(assert (= bs!1149145 (and b!4768096 d!1524091)))

(assert (=> bs!1149145 (= lambda!224607 lambda!224604)))

(declare-fun bs!1149146 () Bool)

(assert (= bs!1149146 (and b!4768096 d!1524079)))

(assert (=> bs!1149146 (= lambda!224607 lambda!224584)))

(declare-fun d!1524101 () Bool)

(declare-fun res!2022290 () Bool)

(declare-fun e!2976191 () Bool)

(assert (=> d!1524101 (=> (not res!2022290) (not e!2976191))))

(assert (=> d!1524101 (= res!2022290 (valid!3941 (v!47719 (underlying!10078 thiss!42052))))))

(assert (=> d!1524101 (= (valid!3940 thiss!42052) e!2976191)))

(declare-fun res!2022291 () Bool)

(assert (=> b!4768096 (=> (not res!2022291) (not e!2976191))))

(assert (=> b!4768096 (= res!2022291 (forall!11879 (toList!6305 (map!12003 (v!47719 (underlying!10078 thiss!42052)))) lambda!224607))))

(declare-fun b!4768097 () Bool)

(assert (=> b!4768097 (= e!2976191 (allKeysSameHashInMap!2024 (map!12003 (v!47719 (underlying!10078 thiss!42052))) (hashF!12463 thiss!42052)))))

(assert (= (and d!1524101 res!2022290) b!4768096))

(assert (= (and b!4768096 res!2022291) b!4768097))

(assert (=> d!1524101 m!5739354))

(assert (=> b!4768096 m!5739274))

(declare-fun m!5739470 () Bool)

(assert (=> b!4768096 m!5739470))

(assert (=> b!4768097 m!5739274))

(assert (=> b!4768097 m!5739274))

(declare-fun m!5739472 () Bool)

(assert (=> b!4768097 m!5739472))

(assert (=> b!4767946 d!1524101))

(declare-fun d!1524103 () Bool)

(assert (=> d!1524103 (= (isDefined!9850 lt!1930828) (not (isEmpty!29286 lt!1930828)))))

(declare-fun bs!1149147 () Bool)

(assert (= bs!1149147 d!1524103))

(declare-fun m!5739474 () Bool)

(assert (=> bs!1149147 m!5739474))

(assert (=> b!4767944 d!1524103))

(declare-fun bs!1149148 () Bool)

(declare-fun b!4768125 () Bool)

(assert (= bs!1149148 (and b!4768125 b!4768096)))

(declare-fun lambda!224610 () Int)

(assert (=> bs!1149148 (= lambda!224610 lambda!224607)))

(declare-fun bs!1149149 () Bool)

(assert (= bs!1149149 (and b!4768125 b!4767941)))

(assert (=> bs!1149149 (= lambda!224610 lambda!224578)))

(declare-fun bs!1149150 () Bool)

(assert (= bs!1149150 (and b!4768125 d!1524047)))

(assert (=> bs!1149150 (= lambda!224610 lambda!224581)))

(declare-fun bs!1149151 () Bool)

(assert (= bs!1149151 (and b!4768125 d!1524083)))

(assert (=> bs!1149151 (= lambda!224610 lambda!224591)))

(declare-fun bs!1149152 () Bool)

(assert (= bs!1149152 (and b!4768125 d!1524091)))

(assert (=> bs!1149152 (= lambda!224610 lambda!224604)))

(declare-fun bs!1149153 () Bool)

(assert (= bs!1149153 (and b!4768125 d!1524079)))

(assert (=> bs!1149153 (= lambda!224610 lambda!224584)))

(declare-fun b!4768120 () Bool)

(declare-fun e!2976207 () Unit!138294)

(declare-fun Unit!138299 () Unit!138294)

(assert (=> b!4768120 (= e!2976207 Unit!138299)))

(declare-fun c!813344 () Bool)

(declare-fun call!334279 () (_ BitVec 64))

(declare-fun call!334278 () List!53626)

(declare-fun bm!334271 () Bool)

(declare-fun call!334276 () ListLongMap!4703)

(declare-fun lt!1930998 () ListLongMap!4703)

(assert (=> bm!334271 (= call!334278 (apply!12639 (ite c!813344 lt!1930998 call!334276) call!334279))))

(declare-fun b!4768121 () Bool)

(assert (=> b!4768121 false))

(declare-fun lt!1931008 () Unit!138294)

(declare-fun lt!1931015 () Unit!138294)

(assert (=> b!4768121 (= lt!1931008 lt!1931015)))

(declare-fun lt!1931011 () List!53627)

(declare-fun lt!1931001 () (_ BitVec 64))

(declare-fun lt!1931012 () List!53626)

(assert (=> b!4768121 (contains!16856 lt!1931011 (tuple2!55565 lt!1931001 lt!1931012))))

(assert (=> b!4768121 (= lt!1931015 (lemmaGetValueByKeyImpliesContainsTuple!937 lt!1931011 lt!1931001 lt!1931012))))

(assert (=> b!4768121 (= lt!1931012 (apply!12640 (v!47719 (underlying!10078 thiss!42052)) lt!1931001))))

(assert (=> b!4768121 (= lt!1931011 (toList!6305 (map!12003 (v!47719 (underlying!10078 thiss!42052)))))))

(declare-fun lt!1931007 () Unit!138294)

(declare-fun lt!1931014 () Unit!138294)

(assert (=> b!4768121 (= lt!1931007 lt!1931014)))

(declare-fun lt!1931003 () List!53627)

(assert (=> b!4768121 (isDefined!9851 (getValueByKey!2195 lt!1931003 lt!1931001))))

(assert (=> b!4768121 (= lt!1931014 (lemmaContainsKeyImpliesGetValueByKeyDefined!1994 lt!1931003 lt!1931001))))

(assert (=> b!4768121 (= lt!1931003 (toList!6305 (map!12003 (v!47719 (underlying!10078 thiss!42052)))))))

(declare-fun lt!1931013 () Unit!138294)

(declare-fun lt!1931000 () Unit!138294)

(assert (=> b!4768121 (= lt!1931013 lt!1931000)))

(declare-fun lt!1931006 () List!53627)

(assert (=> b!4768121 (containsKey!3670 lt!1931006 lt!1931001)))

(declare-fun lemmaGetValueByKeyIsDefinedImpliesContainsKey!205 (List!53627 (_ BitVec 64)) Unit!138294)

(assert (=> b!4768121 (= lt!1931000 (lemmaGetValueByKeyIsDefinedImpliesContainsKey!205 lt!1931006 lt!1931001))))

(assert (=> b!4768121 (= lt!1931006 (toList!6305 (map!12003 (v!47719 (underlying!10078 thiss!42052)))))))

(declare-fun e!2976206 () Unit!138294)

(declare-fun Unit!138300 () Unit!138294)

(assert (=> b!4768121 (= e!2976206 Unit!138300)))

(declare-fun bm!334272 () Bool)

(declare-fun call!334281 () Bool)

(declare-fun call!334277 () Option!12695)

(assert (=> bm!334272 (= call!334281 (isDefined!9850 call!334277))))

(declare-fun b!4768122 () Bool)

(declare-fun Unit!138301 () Unit!138294)

(assert (=> b!4768122 (= e!2976206 Unit!138301)))

(declare-fun d!1524105 () Bool)

(declare-fun lt!1931002 () Bool)

(assert (=> d!1524105 (= lt!1931002 (contains!16861 (map!12002 thiss!42052) key!1776))))

(declare-fun e!2976211 () Bool)

(assert (=> d!1524105 (= lt!1931002 e!2976211)))

(declare-fun res!2022298 () Bool)

(assert (=> d!1524105 (=> (not res!2022298) (not e!2976211))))

(assert (=> d!1524105 (= res!2022298 (contains!16859 (v!47719 (underlying!10078 thiss!42052)) lt!1931001))))

(declare-fun lt!1930999 () Unit!138294)

(declare-fun e!2976210 () Unit!138294)

(assert (=> d!1524105 (= lt!1930999 e!2976210)))

(assert (=> d!1524105 (= c!813344 (contains!16861 (extractMap!2152 (toList!6305 (map!12003 (v!47719 (underlying!10078 thiss!42052))))) key!1776))))

(declare-fun lt!1930996 () Unit!138294)

(declare-fun e!2976212 () Unit!138294)

(assert (=> d!1524105 (= lt!1930996 e!2976212)))

(declare-fun c!813345 () Bool)

(assert (=> d!1524105 (= c!813345 (contains!16859 (v!47719 (underlying!10078 thiss!42052)) lt!1931001))))

(assert (=> d!1524105 (= lt!1931001 (hash!4577 (hashF!12463 thiss!42052) key!1776))))

(assert (=> d!1524105 (valid!3940 thiss!42052)))

(assert (=> d!1524105 (= (contains!16858 thiss!42052 key!1776) lt!1931002)))

(declare-fun call!334280 () Bool)

(declare-fun bm!334273 () Bool)

(assert (=> bm!334273 (= call!334280 (contains!16857 (ite c!813344 lt!1930998 call!334276) call!334279))))

(declare-fun bm!334274 () Bool)

(assert (=> bm!334274 (= call!334276 (map!12003 (v!47719 (underlying!10078 thiss!42052))))))

(declare-fun b!4768123 () Bool)

(declare-fun e!2976208 () Bool)

(assert (=> b!4768123 (= e!2976208 call!334281)))

(declare-fun b!4768124 () Bool)

(declare-fun e!2976209 () Bool)

(assert (=> b!4768124 (= e!2976209 call!334281)))

(assert (=> b!4768125 (= e!2976212 (forallContained!3867 (toList!6305 (map!12003 (v!47719 (underlying!10078 thiss!42052)))) lambda!224610 (tuple2!55565 lt!1931001 (apply!12640 (v!47719 (underlying!10078 thiss!42052)) lt!1931001))))))

(declare-fun c!813343 () Bool)

(assert (=> b!4768125 (= c!813343 (not (contains!16856 (toList!6305 (map!12003 (v!47719 (underlying!10078 thiss!42052)))) (tuple2!55565 lt!1931001 (apply!12640 (v!47719 (underlying!10078 thiss!42052)) lt!1931001)))))))

(declare-fun lt!1931010 () Unit!138294)

(assert (=> b!4768125 (= lt!1931010 e!2976206)))

(declare-fun bm!334275 () Bool)

(assert (=> bm!334275 (= call!334277 (getPair!650 call!334278 key!1776))))

(declare-fun b!4768126 () Bool)

(assert (=> b!4768126 false))

(declare-fun lt!1931005 () Unit!138294)

(declare-fun lt!1931004 () Unit!138294)

(assert (=> b!4768126 (= lt!1931005 lt!1931004)))

(declare-fun lt!1930997 () ListLongMap!4703)

(assert (=> b!4768126 (contains!16861 (extractMap!2152 (toList!6305 lt!1930997)) key!1776)))

(declare-fun lemmaInLongMapThenInGenericMap!204 (ListLongMap!4703 K!14979 Hashable!6596) Unit!138294)

(assert (=> b!4768126 (= lt!1931004 (lemmaInLongMapThenInGenericMap!204 lt!1930997 key!1776 (hashF!12463 thiss!42052)))))

(assert (=> b!4768126 (= lt!1930997 call!334276)))

(declare-fun Unit!138302 () Unit!138294)

(assert (=> b!4768126 (= e!2976207 Unit!138302)))

(declare-fun b!4768127 () Bool)

(assert (=> b!4768127 (= e!2976211 (isDefined!9850 (getPair!650 (apply!12640 (v!47719 (underlying!10078 thiss!42052)) lt!1931001) key!1776)))))

(declare-fun b!4768128 () Bool)

(declare-fun lt!1931009 () Unit!138294)

(assert (=> b!4768128 (= e!2976210 lt!1931009)))

(assert (=> b!4768128 (= lt!1930998 call!334276)))

(declare-fun lemmaInGenericMapThenInLongMap!204 (ListLongMap!4703 K!14979 Hashable!6596) Unit!138294)

(assert (=> b!4768128 (= lt!1931009 (lemmaInGenericMapThenInLongMap!204 lt!1930998 key!1776 (hashF!12463 thiss!42052)))))

(declare-fun res!2022300 () Bool)

(assert (=> b!4768128 (= res!2022300 call!334280)))

(assert (=> b!4768128 (=> (not res!2022300) (not e!2976208))))

(assert (=> b!4768128 e!2976208))

(declare-fun bm!334276 () Bool)

(assert (=> bm!334276 (= call!334279 (hash!4577 (hashF!12463 thiss!42052) key!1776))))

(declare-fun b!4768129 () Bool)

(assert (=> b!4768129 (= e!2976210 e!2976207)))

(declare-fun res!2022299 () Bool)

(assert (=> b!4768129 (= res!2022299 call!334280)))

(assert (=> b!4768129 (=> (not res!2022299) (not e!2976209))))

(declare-fun c!813346 () Bool)

(assert (=> b!4768129 (= c!813346 e!2976209)))

(declare-fun b!4768130 () Bool)

(declare-fun Unit!138303 () Unit!138294)

(assert (=> b!4768130 (= e!2976212 Unit!138303)))

(assert (= (and d!1524105 c!813345) b!4768125))

(assert (= (and d!1524105 (not c!813345)) b!4768130))

(assert (= (and b!4768125 c!813343) b!4768121))

(assert (= (and b!4768125 (not c!813343)) b!4768122))

(assert (= (and d!1524105 c!813344) b!4768128))

(assert (= (and d!1524105 (not c!813344)) b!4768129))

(assert (= (and b!4768128 res!2022300) b!4768123))

(assert (= (and b!4768129 res!2022299) b!4768124))

(assert (= (and b!4768129 c!813346) b!4768126))

(assert (= (and b!4768129 (not c!813346)) b!4768120))

(assert (= (or b!4768128 b!4768123 b!4768129 b!4768124) bm!334276))

(assert (= (or b!4768128 b!4768129 b!4768124 b!4768126) bm!334274))

(assert (= (or b!4768128 b!4768129) bm!334273))

(assert (= (or b!4768123 b!4768124) bm!334271))

(assert (= (or b!4768123 b!4768124) bm!334275))

(assert (= (or b!4768123 b!4768124) bm!334272))

(assert (= (and d!1524105 res!2022298) b!4768127))

(declare-fun m!5739476 () Bool)

(assert (=> bm!334272 m!5739476))

(assert (=> d!1524105 m!5739274))

(assert (=> d!1524105 m!5739424))

(declare-fun m!5739478 () Bool)

(assert (=> d!1524105 m!5739478))

(assert (=> d!1524105 m!5739424))

(declare-fun m!5739480 () Bool)

(assert (=> d!1524105 m!5739480))

(assert (=> d!1524105 m!5739250))

(declare-fun m!5739482 () Bool)

(assert (=> d!1524105 m!5739482))

(assert (=> d!1524105 m!5739250))

(assert (=> d!1524105 m!5739258))

(assert (=> d!1524105 m!5739304))

(declare-fun m!5739484 () Bool)

(assert (=> b!4768126 m!5739484))

(assert (=> b!4768126 m!5739484))

(declare-fun m!5739486 () Bool)

(assert (=> b!4768126 m!5739486))

(declare-fun m!5739488 () Bool)

(assert (=> b!4768126 m!5739488))

(declare-fun m!5739490 () Bool)

(assert (=> b!4768127 m!5739490))

(assert (=> b!4768127 m!5739490))

(declare-fun m!5739492 () Bool)

(assert (=> b!4768127 m!5739492))

(assert (=> b!4768127 m!5739492))

(declare-fun m!5739494 () Bool)

(assert (=> b!4768127 m!5739494))

(assert (=> bm!334276 m!5739258))

(assert (=> b!4768125 m!5739274))

(assert (=> b!4768125 m!5739490))

(declare-fun m!5739496 () Bool)

(assert (=> b!4768125 m!5739496))

(declare-fun m!5739498 () Bool)

(assert (=> b!4768125 m!5739498))

(assert (=> b!4768121 m!5739274))

(declare-fun m!5739500 () Bool)

(assert (=> b!4768121 m!5739500))

(declare-fun m!5739502 () Bool)

(assert (=> b!4768121 m!5739502))

(declare-fun m!5739504 () Bool)

(assert (=> b!4768121 m!5739504))

(assert (=> b!4768121 m!5739490))

(declare-fun m!5739506 () Bool)

(assert (=> b!4768121 m!5739506))

(declare-fun m!5739508 () Bool)

(assert (=> b!4768121 m!5739508))

(declare-fun m!5739510 () Bool)

(assert (=> b!4768121 m!5739510))

(declare-fun m!5739512 () Bool)

(assert (=> b!4768121 m!5739512))

(assert (=> b!4768121 m!5739500))

(assert (=> bm!334274 m!5739274))

(declare-fun m!5739514 () Bool)

(assert (=> bm!334273 m!5739514))

(declare-fun m!5739516 () Bool)

(assert (=> b!4768128 m!5739516))

(declare-fun m!5739518 () Bool)

(assert (=> bm!334271 m!5739518))

(declare-fun m!5739520 () Bool)

(assert (=> bm!334275 m!5739520))

(assert (=> b!4767943 d!1524105))

(declare-fun b!4768135 () Bool)

(declare-fun e!2976215 () Bool)

(declare-fun tp_is_empty!32471 () Bool)

(declare-fun tp!1355740 () Bool)

(assert (=> b!4768135 (= e!2976215 (and tp_is_empty!32469 tp_is_empty!32471 tp!1355740))))

(assert (=> b!4767948 (= tp!1355736 e!2976215)))

(assert (= (and b!4767948 ((_ is Cons!53502) mapDefault!21894)) b!4768135))

(declare-fun e!2976216 () Bool)

(declare-fun tp!1355741 () Bool)

(declare-fun b!4768136 () Bool)

(assert (=> b!4768136 (= e!2976216 (and tp_is_empty!32469 tp_is_empty!32471 tp!1355741))))

(assert (=> b!4767942 (= tp!1355734 e!2976216)))

(assert (= (and b!4767942 ((_ is Cons!53502) (zeroValue!5223 (v!47718 (underlying!10077 (v!47719 (underlying!10078 thiss!42052))))))) b!4768136))

(declare-fun tp!1355742 () Bool)

(declare-fun e!2976217 () Bool)

(declare-fun b!4768137 () Bool)

(assert (=> b!4768137 (= e!2976217 (and tp_is_empty!32469 tp_is_empty!32471 tp!1355742))))

(assert (=> b!4767942 (= tp!1355731 e!2976217)))

(assert (= (and b!4767942 ((_ is Cons!53502) (minValue!5223 (v!47718 (underlying!10077 (v!47719 (underlying!10078 thiss!42052))))))) b!4768137))

(declare-fun mapNonEmpty!21897 () Bool)

(declare-fun mapRes!21897 () Bool)

(declare-fun tp!1355750 () Bool)

(declare-fun e!2976222 () Bool)

(assert (=> mapNonEmpty!21897 (= mapRes!21897 (and tp!1355750 e!2976222))))

(declare-fun mapRest!21897 () (Array (_ BitVec 32) List!53626))

(declare-fun mapValue!21897 () List!53626)

(declare-fun mapKey!21897 () (_ BitVec 32))

(assert (=> mapNonEmpty!21897 (= mapRest!21894 (store mapRest!21897 mapKey!21897 mapValue!21897))))

(declare-fun tp!1355751 () Bool)

(declare-fun b!4768144 () Bool)

(assert (=> b!4768144 (= e!2976222 (and tp_is_empty!32469 tp_is_empty!32471 tp!1355751))))

(declare-fun tp!1355749 () Bool)

(declare-fun b!4768145 () Bool)

(declare-fun e!2976223 () Bool)

(assert (=> b!4768145 (= e!2976223 (and tp_is_empty!32469 tp_is_empty!32471 tp!1355749))))

(declare-fun condMapEmpty!21897 () Bool)

(declare-fun mapDefault!21897 () List!53626)

(assert (=> mapNonEmpty!21894 (= condMapEmpty!21897 (= mapRest!21894 ((as const (Array (_ BitVec 32) List!53626)) mapDefault!21897)))))

(assert (=> mapNonEmpty!21894 (= tp!1355732 (and e!2976223 mapRes!21897))))

(declare-fun mapIsEmpty!21897 () Bool)

(assert (=> mapIsEmpty!21897 mapRes!21897))

(assert (= (and mapNonEmpty!21894 condMapEmpty!21897) mapIsEmpty!21897))

(assert (= (and mapNonEmpty!21894 (not condMapEmpty!21897)) mapNonEmpty!21897))

(assert (= (and mapNonEmpty!21897 ((_ is Cons!53502) mapValue!21897)) b!4768144))

(assert (= (and mapNonEmpty!21894 ((_ is Cons!53502) mapDefault!21897)) b!4768145))

(declare-fun m!5739522 () Bool)

(assert (=> mapNonEmpty!21897 m!5739522))

(declare-fun b!4768146 () Bool)

(declare-fun tp!1355752 () Bool)

(declare-fun e!2976224 () Bool)

(assert (=> b!4768146 (= e!2976224 (and tp_is_empty!32469 tp_is_empty!32471 tp!1355752))))

(assert (=> mapNonEmpty!21894 (= tp!1355733 e!2976224)))

(assert (= (and mapNonEmpty!21894 ((_ is Cons!53502) mapValue!21894)) b!4768146))

(declare-fun b_lambda!184445 () Bool)

(assert (= b_lambda!184443 (or b!4767941 b_lambda!184445)))

(declare-fun bs!1149154 () Bool)

(declare-fun d!1524107 () Bool)

(assert (= bs!1149154 (and d!1524107 b!4767941)))

(assert (=> bs!1149154 (= (dynLambda!21957 lambda!224578 lt!1930819) (noDuplicateKeys!2257 (_2!31076 lt!1930819)))))

(declare-fun m!5739524 () Bool)

(assert (=> bs!1149154 m!5739524))

(assert (=> d!1524081 d!1524107))

(declare-fun b_lambda!184447 () Bool)

(assert (= b_lambda!184439 (or (and b!4767942 b_free!129683) b_lambda!184447)))

(declare-fun b_lambda!184449 () Bool)

(assert (= b_lambda!184441 (or b!4767941 b_lambda!184449)))

(declare-fun bs!1149155 () Bool)

(declare-fun d!1524109 () Bool)

(assert (= bs!1149155 (and d!1524109 b!4767941)))

(assert (=> bs!1149155 (= (dynLambda!21957 lambda!224578 lt!1930833) (noDuplicateKeys!2257 (_2!31076 lt!1930833)))))

(declare-fun m!5739526 () Bool)

(assert (=> bs!1149155 m!5739526))

(assert (=> d!1524077 d!1524109))

(check-sat tp_is_empty!32471 (not b!4768063) (not b!4768036) (not b!4768069) (not b!4768066) (not bm!334273) b_and!341407 (not d!1524083) tp_is_empty!32469 b_and!341405 (not b!4767992) (not d!1524097) (not b!4767997) (not b!4768085) (not b!4768146) (not b!4768025) (not b!4768145) (not b!4768067) (not d!1524103) (not b!4768121) (not b!4768127) (not d!1524089) (not b!4768096) (not d!1524047) (not b!4768088) (not d!1524095) (not b!4767981) (not d!1524055) (not d!1524069) (not b!4768135) (not d!1524059) (not b!4768083) (not b!4768065) (not b!4768038) (not bs!1149155) (not bm!334271) (not b!4767970) (not b!4768035) (not bm!334274) (not b!4768087) (not d!1524063) (not d!1524087) (not mapNonEmpty!21897) (not d!1524079) (not b_next!130475) (not bm!334276) (not b!4768079) (not b!4768071) (not b!4768081) (not b!4768144) (not b_next!130473) (not b!4768068) (not d!1524067) (not tb!257481) (not b!4768064) (not b!4768126) (not b_lambda!184449) (not b!4768125) (not b!4768021) (not d!1524101) (not b!4768137) (not b!4768136) (not b!4768018) (not b!4768128) (not b!4768017) (not b!4767966) (not b_lambda!184445) (not bs!1149154) (not d!1524099) (not d!1524105) (not d!1524071) (not b!4768091) (not bm!334272) (not b!4768037) (not b!4768070) (not b_lambda!184447) (not d!1524077) (not d!1524073) (not d!1524081) (not b!4767960) (not b!4768020) (not b!4768026) (not b!4767985) (not bm!334275) (not d!1524093) (not b!4768072) (not b!4768097) (not b!4768016) (not d!1524053) (not b!4768084) (not d!1524075) (not d!1524091) (not b!4768041))
(check-sat b_and!341405 b_and!341407 (not b_next!130475) (not b_next!130473))
