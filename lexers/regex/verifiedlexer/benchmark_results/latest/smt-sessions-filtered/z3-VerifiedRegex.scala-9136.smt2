; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!487766 () Bool)

(assert start!487766)

(declare-fun b!4767388 () Bool)

(declare-fun b_free!129667 () Bool)

(declare-fun b_next!130457 () Bool)

(assert (=> b!4767388 (= b_free!129667 (not b_next!130457))))

(declare-fun tp!1355620 () Bool)

(declare-fun b_and!341383 () Bool)

(assert (=> b!4767388 (= tp!1355620 b_and!341383)))

(declare-fun b!4767392 () Bool)

(declare-fun b_free!129669 () Bool)

(declare-fun b_next!130459 () Bool)

(assert (=> b!4767392 (= b_free!129669 (not b_next!130459))))

(declare-fun tp!1355621 () Bool)

(declare-fun b_and!341385 () Bool)

(assert (=> b!4767392 (= tp!1355621 b_and!341385)))

(declare-fun b!4767380 () Bool)

(declare-fun res!2021947 () Bool)

(declare-fun e!2975723 () Bool)

(assert (=> b!4767380 (=> (not res!2021947) (not e!2975723))))

(declare-datatypes ((K!14969 0))(
  ( (K!14970 (val!20281 Int)) )
))
(declare-datatypes ((V!15215 0))(
  ( (V!15216 (val!20282 Int)) )
))
(declare-datatypes ((tuple2!55546 0))(
  ( (tuple2!55547 (_1!31067 K!14969) (_2!31067 V!15215)) )
))
(declare-datatypes ((array!18042 0))(
  ( (array!18043 (arr!8047 (Array (_ BitVec 32) (_ BitVec 64))) (size!36277 (_ BitVec 32))) )
))
(declare-datatypes ((List!53618 0))(
  ( (Nil!53494) (Cons!53494 (h!59906 tuple2!55546) (t!361042 List!53618)) )
))
(declare-datatypes ((array!18044 0))(
  ( (array!18045 (arr!8048 (Array (_ BitVec 32) List!53618)) (size!36278 (_ BitVec 32))) )
))
(declare-datatypes ((Hashable!6592 0))(
  ( (HashableExt!6591 (__x!32541 Int)) )
))
(declare-datatypes ((LongMapFixedSize!9862 0))(
  ( (LongMapFixedSize!9863 (defaultEntry!5349 Int) (mask!14692 (_ BitVec 32)) (extraKeys!5206 (_ BitVec 32)) (zeroValue!5219 List!53618) (minValue!5219 List!53618) (_size!9887 (_ BitVec 32)) (_keys!5273 array!18042) (_values!5244 array!18044) (_vacant!4996 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!19489 0))(
  ( (Cell!19490 (v!47685 LongMapFixedSize!9862)) )
))
(declare-datatypes ((MutLongMap!4931 0))(
  ( (LongMap!4931 (underlying!10069 Cell!19489)) (MutLongMapExt!4930 (__x!32542 Int)) )
))
(declare-datatypes ((Cell!19491 0))(
  ( (Cell!19492 (v!47686 MutLongMap!4931)) )
))
(declare-datatypes ((MutableMap!4815 0))(
  ( (MutableMapExt!4814 (__x!32543 Int)) (HashMap!4815 (underlying!10070 Cell!19491) (hashF!12447 Hashable!6592) (_size!9888 (_ BitVec 32)) (defaultValue!4986 Int)) )
))
(declare-fun thiss!42052 () MutableMap!4815)

(declare-fun key!1776 () K!14969)

(declare-fun contains!16844 (MutableMap!4815 K!14969) Bool)

(assert (=> b!4767380 (= res!2021947 (contains!16844 thiss!42052 key!1776))))

(declare-fun b!4767381 () Bool)

(declare-fun e!2975713 () Bool)

(declare-fun e!2975719 () Bool)

(assert (=> b!4767381 (= e!2975713 e!2975719)))

(declare-fun b!4767382 () Bool)

(declare-datatypes ((Unit!138271 0))(
  ( (Unit!138272) )
))
(declare-fun e!2975718 () Unit!138271)

(declare-fun Unit!138273 () Unit!138271)

(assert (=> b!4767382 (= e!2975718 Unit!138273)))

(declare-fun lt!1930240 () Unit!138271)

(declare-datatypes ((tuple2!55548 0))(
  ( (tuple2!55549 (_1!31068 (_ BitVec 64)) (_2!31068 List!53618)) )
))
(declare-datatypes ((List!53619 0))(
  ( (Nil!53495) (Cons!53495 (h!59907 tuple2!55548) (t!361043 List!53619)) )
))
(declare-datatypes ((ListLongMap!4695 0))(
  ( (ListLongMap!4696 (toList!6297 List!53619)) )
))
(declare-fun lt!1930230 () ListLongMap!4695)

(declare-fun lt!1930238 () (_ BitVec 64))

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!1991 (List!53619 (_ BitVec 64)) Unit!138271)

(assert (=> b!4767382 (= lt!1930240 (lemmaContainsKeyImpliesGetValueByKeyDefined!1991 (toList!6297 lt!1930230) lt!1930238))))

(declare-datatypes ((Option!12684 0))(
  ( (None!12683) (Some!12683 (v!47687 List!53618)) )
))
(declare-fun isDefined!9845 (Option!12684) Bool)

(declare-fun getValueByKey!2187 (List!53619 (_ BitVec 64)) Option!12684)

(assert (=> b!4767382 (isDefined!9845 (getValueByKey!2187 (toList!6297 lt!1930230) lt!1930238))))

(declare-fun lt!1930224 () List!53618)

(declare-fun lt!1930234 () Unit!138271)

(declare-fun lemmaGetValueByKeyImpliesContainsTuple!934 (List!53619 (_ BitVec 64) List!53618) Unit!138271)

(assert (=> b!4767382 (= lt!1930234 (lemmaGetValueByKeyImpliesContainsTuple!934 (toList!6297 lt!1930230) lt!1930238 lt!1930224))))

(assert (=> b!4767382 false))

(declare-fun res!2021952 () Bool)

(assert (=> start!487766 (=> (not res!2021952) (not e!2975723))))

(get-info :version)

(assert (=> start!487766 (= res!2021952 ((_ is HashMap!4815) thiss!42052))))

(assert (=> start!487766 e!2975723))

(declare-fun e!2975720 () Bool)

(assert (=> start!487766 e!2975720))

(declare-fun tp_is_empty!32457 () Bool)

(assert (=> start!487766 tp_is_empty!32457))

(declare-fun b!4767383 () Bool)

(declare-fun res!2021948 () Bool)

(declare-fun e!2975722 () Bool)

(assert (=> b!4767383 (=> res!2021948 e!2975722)))

(assert (=> b!4767383 (= res!2021948 (not ((_ is LongMap!4931) (v!47686 (underlying!10070 thiss!42052)))))))

(declare-fun b!4767384 () Bool)

(declare-fun Unit!138274 () Unit!138271)

(assert (=> b!4767384 (= e!2975718 Unit!138274)))

(declare-fun mapIsEmpty!21876 () Bool)

(declare-fun mapRes!21876 () Bool)

(assert (=> mapIsEmpty!21876 mapRes!21876))

(declare-fun b!4767385 () Bool)

(assert (=> b!4767385 (= e!2975723 (not e!2975722))))

(declare-fun res!2021949 () Bool)

(assert (=> b!4767385 (=> res!2021949 e!2975722)))

(declare-fun lt!1930231 () tuple2!55546)

(declare-datatypes ((Option!12685 0))(
  ( (None!12684) (Some!12684 (v!47688 V!15215)) )
))
(declare-fun get!18044 (Option!12685) V!15215)

(declare-fun getValueByKey!2188 (List!53618 K!14969) Option!12685)

(declare-datatypes ((ListMap!5793 0))(
  ( (ListMap!5794 (toList!6298 List!53618)) )
))
(declare-fun map!11994 (MutableMap!4815) ListMap!5793)

(assert (=> b!4767385 (= res!2021949 (not (= (_2!31067 lt!1930231) (get!18044 (getValueByKey!2188 (toList!6298 (map!11994 thiss!42052)) key!1776)))))))

(declare-fun e!2975721 () Bool)

(assert (=> b!4767385 e!2975721))

(declare-fun res!2021950 () Bool)

(assert (=> b!4767385 (=> (not res!2021950) (not e!2975721))))

(declare-datatypes ((Option!12686 0))(
  ( (None!12685) (Some!12685 (v!47689 tuple2!55546)) )
))
(declare-fun lt!1930237 () Option!12686)

(declare-fun isDefined!9846 (Option!12686) Bool)

(assert (=> b!4767385 (= res!2021950 (isDefined!9846 lt!1930237))))

(declare-fun lt!1930225 () List!53618)

(declare-fun getPair!648 (List!53618 K!14969) Option!12686)

(assert (=> b!4767385 (= lt!1930237 (getPair!648 lt!1930225 key!1776))))

(declare-fun lambda!224486 () Int)

(declare-fun lt!1930235 () Unit!138271)

(declare-fun lt!1930227 () tuple2!55548)

(declare-fun forallContained!3865 (List!53619 Int tuple2!55548) Unit!138271)

(assert (=> b!4767385 (= lt!1930235 (forallContained!3865 (toList!6297 lt!1930230) lambda!224486 lt!1930227))))

(declare-fun lt!1930229 () Unit!138271)

(declare-fun lemmaInGenMapThenGetPairDefined!431 (ListLongMap!4695 K!14969 Hashable!6592) Unit!138271)

(assert (=> b!4767385 (= lt!1930229 (lemmaInGenMapThenGetPairDefined!431 lt!1930230 key!1776 (hashF!12447 thiss!42052)))))

(declare-fun lt!1930239 () Unit!138271)

(assert (=> b!4767385 (= lt!1930239 (forallContained!3865 (toList!6297 lt!1930230) lambda!224486 lt!1930227))))

(declare-fun contains!16845 (List!53619 tuple2!55548) Bool)

(assert (=> b!4767385 (contains!16845 (toList!6297 lt!1930230) lt!1930227)))

(assert (=> b!4767385 (= lt!1930227 (tuple2!55549 lt!1930238 lt!1930225))))

(declare-fun lt!1930233 () Unit!138271)

(declare-fun lemmaGetValueImpliesTupleContained!440 (ListLongMap!4695 (_ BitVec 64) List!53618) Unit!138271)

(assert (=> b!4767385 (= lt!1930233 (lemmaGetValueImpliesTupleContained!440 lt!1930230 lt!1930238 lt!1930225))))

(declare-fun apply!12633 (ListLongMap!4695 (_ BitVec 64)) List!53618)

(assert (=> b!4767385 (= lt!1930225 (apply!12633 lt!1930230 lt!1930238))))

(declare-fun contains!16846 (ListLongMap!4695 (_ BitVec 64)) Bool)

(assert (=> b!4767385 (contains!16846 lt!1930230 lt!1930238)))

(declare-fun lt!1930241 () Unit!138271)

(declare-fun lemmaInGenMapThenLongMapContainsHash!841 (ListLongMap!4695 K!14969 Hashable!6592) Unit!138271)

(assert (=> b!4767385 (= lt!1930241 (lemmaInGenMapThenLongMapContainsHash!841 lt!1930230 key!1776 (hashF!12447 thiss!42052)))))

(declare-fun lt!1930236 () Unit!138271)

(declare-fun lemmaGetPairGetSameValueAsMap!63 (ListLongMap!4695 K!14969 V!15215 Hashable!6592) Unit!138271)

(assert (=> b!4767385 (= lt!1930236 (lemmaGetPairGetSameValueAsMap!63 lt!1930230 key!1776 (_2!31067 lt!1930231) (hashF!12447 thiss!42052)))))

(declare-fun get!18045 (Option!12686) tuple2!55546)

(assert (=> b!4767385 (= lt!1930231 (get!18045 (getPair!648 lt!1930224 key!1776)))))

(declare-fun lt!1930228 () tuple2!55548)

(declare-fun lt!1930223 () Unit!138271)

(assert (=> b!4767385 (= lt!1930223 (forallContained!3865 (toList!6297 lt!1930230) lambda!224486 lt!1930228))))

(declare-fun lt!1930232 () Unit!138271)

(assert (=> b!4767385 (= lt!1930232 e!2975718)))

(declare-fun c!813205 () Bool)

(assert (=> b!4767385 (= c!813205 (not (contains!16845 (toList!6297 lt!1930230) lt!1930228)))))

(assert (=> b!4767385 (= lt!1930228 (tuple2!55549 lt!1930238 lt!1930224))))

(declare-fun apply!12634 (MutLongMap!4931 (_ BitVec 64)) List!53618)

(assert (=> b!4767385 (= lt!1930224 (apply!12634 (v!47686 (underlying!10070 thiss!42052)) lt!1930238))))

(declare-fun map!11995 (MutLongMap!4931) ListLongMap!4695)

(assert (=> b!4767385 (= lt!1930230 (map!11995 (v!47686 (underlying!10070 thiss!42052))))))

(declare-fun hash!4573 (Hashable!6592 K!14969) (_ BitVec 64))

(assert (=> b!4767385 (= lt!1930238 (hash!4573 (hashF!12447 thiss!42052) key!1776))))

(declare-fun b!4767386 () Bool)

(declare-fun extractMap!2148 (List!53619) ListMap!5793)

(assert (=> b!4767386 (= e!2975721 (= (_2!31067 (get!18045 lt!1930237)) (get!18044 (getValueByKey!2188 (toList!6298 (extractMap!2148 (toList!6297 lt!1930230))) key!1776))))))

(declare-fun b!4767387 () Bool)

(declare-fun e!2975715 () Bool)

(assert (=> b!4767387 (= e!2975715 e!2975713)))

(declare-fun mapNonEmpty!21876 () Bool)

(declare-fun tp!1355617 () Bool)

(declare-fun tp!1355618 () Bool)

(assert (=> mapNonEmpty!21876 (= mapRes!21876 (and tp!1355617 tp!1355618))))

(declare-fun mapValue!21876 () List!53618)

(declare-fun mapKey!21876 () (_ BitVec 32))

(declare-fun mapRest!21876 () (Array (_ BitVec 32) List!53618))

(assert (=> mapNonEmpty!21876 (= (arr!8048 (_values!5244 (v!47685 (underlying!10069 (v!47686 (underlying!10070 thiss!42052)))))) (store mapRest!21876 mapKey!21876 mapValue!21876))))

(declare-fun e!2975717 () Bool)

(declare-fun tp!1355619 () Bool)

(declare-fun tp!1355623 () Bool)

(declare-fun array_inv!5793 (array!18042) Bool)

(declare-fun array_inv!5794 (array!18044) Bool)

(assert (=> b!4767388 (= e!2975719 (and tp!1355620 tp!1355623 tp!1355619 (array_inv!5793 (_keys!5273 (v!47685 (underlying!10069 (v!47686 (underlying!10070 thiss!42052)))))) (array_inv!5794 (_values!5244 (v!47685 (underlying!10069 (v!47686 (underlying!10070 thiss!42052)))))) e!2975717))))

(declare-fun b!4767389 () Bool)

(declare-fun valid!3934 (MutLongMap!4931) Bool)

(assert (=> b!4767389 (= e!2975722 (valid!3934 (v!47686 (underlying!10070 thiss!42052))))))

(declare-fun b!4767390 () Bool)

(declare-fun res!2021951 () Bool)

(assert (=> b!4767390 (=> (not res!2021951) (not e!2975723))))

(declare-fun valid!3935 (MutableMap!4815) Bool)

(assert (=> b!4767390 (= res!2021951 (valid!3935 thiss!42052))))

(declare-fun b!4767391 () Bool)

(declare-fun e!2975714 () Bool)

(declare-fun lt!1930226 () MutLongMap!4931)

(assert (=> b!4767391 (= e!2975714 (and e!2975715 ((_ is LongMap!4931) lt!1930226)))))

(assert (=> b!4767391 (= lt!1930226 (v!47686 (underlying!10070 thiss!42052)))))

(assert (=> b!4767392 (= e!2975720 (and e!2975714 tp!1355621))))

(declare-fun b!4767393 () Bool)

(declare-fun tp!1355622 () Bool)

(assert (=> b!4767393 (= e!2975717 (and tp!1355622 mapRes!21876))))

(declare-fun condMapEmpty!21876 () Bool)

(declare-fun mapDefault!21876 () List!53618)

(assert (=> b!4767393 (= condMapEmpty!21876 (= (arr!8048 (_values!5244 (v!47685 (underlying!10069 (v!47686 (underlying!10070 thiss!42052)))))) ((as const (Array (_ BitVec 32) List!53618)) mapDefault!21876)))))

(assert (= (and start!487766 res!2021952) b!4767390))

(assert (= (and b!4767390 res!2021951) b!4767380))

(assert (= (and b!4767380 res!2021947) b!4767385))

(assert (= (and b!4767385 c!813205) b!4767382))

(assert (= (and b!4767385 (not c!813205)) b!4767384))

(assert (= (and b!4767385 res!2021950) b!4767386))

(assert (= (and b!4767385 (not res!2021949)) b!4767383))

(assert (= (and b!4767383 (not res!2021948)) b!4767389))

(assert (= (and b!4767393 condMapEmpty!21876) mapIsEmpty!21876))

(assert (= (and b!4767393 (not condMapEmpty!21876)) mapNonEmpty!21876))

(assert (= b!4767388 b!4767393))

(assert (= b!4767381 b!4767388))

(assert (= b!4767387 b!4767381))

(assert (= (and b!4767391 ((_ is LongMap!4931) (v!47686 (underlying!10070 thiss!42052)))) b!4767387))

(assert (= b!4767392 b!4767391))

(assert (= (and start!487766 ((_ is HashMap!4815) thiss!42052)) b!4767392))

(declare-fun m!5738548 () Bool)

(assert (=> b!4767386 m!5738548))

(declare-fun m!5738550 () Bool)

(assert (=> b!4767386 m!5738550))

(declare-fun m!5738552 () Bool)

(assert (=> b!4767386 m!5738552))

(assert (=> b!4767386 m!5738552))

(declare-fun m!5738554 () Bool)

(assert (=> b!4767386 m!5738554))

(declare-fun m!5738556 () Bool)

(assert (=> b!4767380 m!5738556))

(declare-fun m!5738558 () Bool)

(assert (=> b!4767389 m!5738558))

(declare-fun m!5738560 () Bool)

(assert (=> b!4767390 m!5738560))

(declare-fun m!5738562 () Bool)

(assert (=> b!4767388 m!5738562))

(declare-fun m!5738564 () Bool)

(assert (=> b!4767388 m!5738564))

(declare-fun m!5738566 () Bool)

(assert (=> b!4767382 m!5738566))

(declare-fun m!5738568 () Bool)

(assert (=> b!4767382 m!5738568))

(assert (=> b!4767382 m!5738568))

(declare-fun m!5738570 () Bool)

(assert (=> b!4767382 m!5738570))

(declare-fun m!5738572 () Bool)

(assert (=> b!4767382 m!5738572))

(declare-fun m!5738574 () Bool)

(assert (=> b!4767385 m!5738574))

(declare-fun m!5738576 () Bool)

(assert (=> b!4767385 m!5738576))

(declare-fun m!5738578 () Bool)

(assert (=> b!4767385 m!5738578))

(declare-fun m!5738580 () Bool)

(assert (=> b!4767385 m!5738580))

(declare-fun m!5738582 () Bool)

(assert (=> b!4767385 m!5738582))

(declare-fun m!5738584 () Bool)

(assert (=> b!4767385 m!5738584))

(assert (=> b!4767385 m!5738576))

(declare-fun m!5738586 () Bool)

(assert (=> b!4767385 m!5738586))

(declare-fun m!5738588 () Bool)

(assert (=> b!4767385 m!5738588))

(declare-fun m!5738590 () Bool)

(assert (=> b!4767385 m!5738590))

(declare-fun m!5738592 () Bool)

(assert (=> b!4767385 m!5738592))

(declare-fun m!5738594 () Bool)

(assert (=> b!4767385 m!5738594))

(declare-fun m!5738596 () Bool)

(assert (=> b!4767385 m!5738596))

(declare-fun m!5738598 () Bool)

(assert (=> b!4767385 m!5738598))

(declare-fun m!5738600 () Bool)

(assert (=> b!4767385 m!5738600))

(declare-fun m!5738602 () Bool)

(assert (=> b!4767385 m!5738602))

(assert (=> b!4767385 m!5738582))

(declare-fun m!5738604 () Bool)

(assert (=> b!4767385 m!5738604))

(assert (=> b!4767385 m!5738580))

(declare-fun m!5738606 () Bool)

(assert (=> b!4767385 m!5738606))

(declare-fun m!5738608 () Bool)

(assert (=> b!4767385 m!5738608))

(declare-fun m!5738610 () Bool)

(assert (=> b!4767385 m!5738610))

(declare-fun m!5738612 () Bool)

(assert (=> b!4767385 m!5738612))

(declare-fun m!5738614 () Bool)

(assert (=> mapNonEmpty!21876 m!5738614))

(check-sat (not mapNonEmpty!21876) (not b!4767382) (not b!4767389) (not b!4767380) (not b!4767385) (not b!4767388) (not b!4767390) tp_is_empty!32457 (not b_next!130457) b_and!341383 (not b!4767393) (not b_next!130459) (not b!4767386) b_and!341385)
(check-sat b_and!341385 b_and!341383 (not b_next!130459) (not b_next!130457))
(get-model)

(declare-fun d!1523899 () Bool)

(assert (=> d!1523899 (= (get!18045 lt!1930237) (v!47689 lt!1930237))))

(assert (=> b!4767386 d!1523899))

(declare-fun d!1523901 () Bool)

(assert (=> d!1523901 (= (get!18044 (getValueByKey!2188 (toList!6298 (extractMap!2148 (toList!6297 lt!1930230))) key!1776)) (v!47688 (getValueByKey!2188 (toList!6298 (extractMap!2148 (toList!6297 lt!1930230))) key!1776)))))

(assert (=> b!4767386 d!1523901))

(declare-fun b!4767404 () Bool)

(declare-fun e!2975729 () Option!12685)

(assert (=> b!4767404 (= e!2975729 (getValueByKey!2188 (t!361042 (toList!6298 (extractMap!2148 (toList!6297 lt!1930230)))) key!1776))))

(declare-fun b!4767402 () Bool)

(declare-fun e!2975728 () Option!12685)

(assert (=> b!4767402 (= e!2975728 (Some!12684 (_2!31067 (h!59906 (toList!6298 (extractMap!2148 (toList!6297 lt!1930230)))))))))

(declare-fun d!1523903 () Bool)

(declare-fun c!813210 () Bool)

(assert (=> d!1523903 (= c!813210 (and ((_ is Cons!53494) (toList!6298 (extractMap!2148 (toList!6297 lt!1930230)))) (= (_1!31067 (h!59906 (toList!6298 (extractMap!2148 (toList!6297 lt!1930230))))) key!1776)))))

(assert (=> d!1523903 (= (getValueByKey!2188 (toList!6298 (extractMap!2148 (toList!6297 lt!1930230))) key!1776) e!2975728)))

(declare-fun b!4767403 () Bool)

(assert (=> b!4767403 (= e!2975728 e!2975729)))

(declare-fun c!813211 () Bool)

(assert (=> b!4767403 (= c!813211 (and ((_ is Cons!53494) (toList!6298 (extractMap!2148 (toList!6297 lt!1930230)))) (not (= (_1!31067 (h!59906 (toList!6298 (extractMap!2148 (toList!6297 lt!1930230))))) key!1776))))))

(declare-fun b!4767405 () Bool)

(assert (=> b!4767405 (= e!2975729 None!12684)))

(assert (= (and d!1523903 c!813210) b!4767402))

(assert (= (and d!1523903 (not c!813210)) b!4767403))

(assert (= (and b!4767403 c!813211) b!4767404))

(assert (= (and b!4767403 (not c!813211)) b!4767405))

(declare-fun m!5738616 () Bool)

(assert (=> b!4767404 m!5738616))

(assert (=> b!4767386 d!1523903))

(declare-fun bs!1149057 () Bool)

(declare-fun d!1523905 () Bool)

(assert (= bs!1149057 (and d!1523905 b!4767385)))

(declare-fun lambda!224489 () Int)

(assert (=> bs!1149057 (= lambda!224489 lambda!224486)))

(declare-fun lt!1930244 () ListMap!5793)

(declare-fun invariantList!1661 (List!53618) Bool)

(assert (=> d!1523905 (invariantList!1661 (toList!6298 lt!1930244))))

(declare-fun e!2975732 () ListMap!5793)

(assert (=> d!1523905 (= lt!1930244 e!2975732)))

(declare-fun c!813214 () Bool)

(assert (=> d!1523905 (= c!813214 ((_ is Cons!53495) (toList!6297 lt!1930230)))))

(declare-fun forall!11877 (List!53619 Int) Bool)

(assert (=> d!1523905 (forall!11877 (toList!6297 lt!1930230) lambda!224489)))

(assert (=> d!1523905 (= (extractMap!2148 (toList!6297 lt!1930230)) lt!1930244)))

(declare-fun b!4767410 () Bool)

(declare-fun addToMapMapFromBucket!1626 (List!53618 ListMap!5793) ListMap!5793)

(assert (=> b!4767410 (= e!2975732 (addToMapMapFromBucket!1626 (_2!31068 (h!59907 (toList!6297 lt!1930230))) (extractMap!2148 (t!361043 (toList!6297 lt!1930230)))))))

(declare-fun b!4767411 () Bool)

(assert (=> b!4767411 (= e!2975732 (ListMap!5794 Nil!53494))))

(assert (= (and d!1523905 c!813214) b!4767410))

(assert (= (and d!1523905 (not c!813214)) b!4767411))

(declare-fun m!5738618 () Bool)

(assert (=> d!1523905 m!5738618))

(declare-fun m!5738620 () Bool)

(assert (=> d!1523905 m!5738620))

(declare-fun m!5738622 () Bool)

(assert (=> b!4767410 m!5738622))

(assert (=> b!4767410 m!5738622))

(declare-fun m!5738624 () Bool)

(assert (=> b!4767410 m!5738624))

(assert (=> b!4767386 d!1523905))

(declare-fun bs!1149058 () Bool)

(declare-fun b!4767416 () Bool)

(assert (= bs!1149058 (and b!4767416 b!4767385)))

(declare-fun lambda!224492 () Int)

(assert (=> bs!1149058 (= lambda!224492 lambda!224486)))

(declare-fun bs!1149059 () Bool)

(assert (= bs!1149059 (and b!4767416 d!1523905)))

(assert (=> bs!1149059 (= lambda!224492 lambda!224489)))

(declare-fun d!1523907 () Bool)

(declare-fun res!2021957 () Bool)

(declare-fun e!2975735 () Bool)

(assert (=> d!1523907 (=> (not res!2021957) (not e!2975735))))

(assert (=> d!1523907 (= res!2021957 (valid!3934 (v!47686 (underlying!10070 thiss!42052))))))

(assert (=> d!1523907 (= (valid!3935 thiss!42052) e!2975735)))

(declare-fun res!2021958 () Bool)

(assert (=> b!4767416 (=> (not res!2021958) (not e!2975735))))

(assert (=> b!4767416 (= res!2021958 (forall!11877 (toList!6297 (map!11995 (v!47686 (underlying!10070 thiss!42052)))) lambda!224492))))

(declare-fun b!4767417 () Bool)

(declare-fun allKeysSameHashInMap!2022 (ListLongMap!4695 Hashable!6592) Bool)

(assert (=> b!4767417 (= e!2975735 (allKeysSameHashInMap!2022 (map!11995 (v!47686 (underlying!10070 thiss!42052))) (hashF!12447 thiss!42052)))))

(assert (= (and d!1523907 res!2021957) b!4767416))

(assert (= (and b!4767416 res!2021958) b!4767417))

(assert (=> d!1523907 m!5738558))

(assert (=> b!4767416 m!5738608))

(declare-fun m!5738626 () Bool)

(assert (=> b!4767416 m!5738626))

(assert (=> b!4767417 m!5738608))

(assert (=> b!4767417 m!5738608))

(declare-fun m!5738628 () Bool)

(assert (=> b!4767417 m!5738628))

(assert (=> b!4767390 d!1523907))

(declare-fun bs!1149060 () Bool)

(declare-fun d!1523909 () Bool)

(assert (= bs!1149060 (and d!1523909 b!4767385)))

(declare-fun lambda!224499 () Int)

(assert (=> bs!1149060 (= lambda!224499 lambda!224486)))

(declare-fun bs!1149061 () Bool)

(assert (= bs!1149061 (and d!1523909 d!1523905)))

(assert (=> bs!1149061 (= lambda!224499 lambda!224489)))

(declare-fun bs!1149062 () Bool)

(assert (= bs!1149062 (and d!1523909 b!4767416)))

(assert (=> bs!1149062 (= lambda!224499 lambda!224492)))

(declare-fun e!2975740 () Bool)

(assert (=> d!1523909 e!2975740))

(declare-fun res!2021968 () Bool)

(assert (=> d!1523909 (=> (not res!2021968) (not e!2975740))))

(assert (=> d!1523909 (= res!2021968 (forall!11877 (toList!6297 lt!1930230) lambda!224499))))

(declare-fun lt!1930261 () Unit!138271)

(declare-fun choose!33975 (ListLongMap!4695 K!14969 Hashable!6592) Unit!138271)

(assert (=> d!1523909 (= lt!1930261 (choose!33975 lt!1930230 key!1776 (hashF!12447 thiss!42052)))))

(assert (=> d!1523909 (forall!11877 (toList!6297 lt!1930230) lambda!224499)))

(assert (=> d!1523909 (= (lemmaInGenMapThenGetPairDefined!431 lt!1930230 key!1776 (hashF!12447 thiss!42052)) lt!1930261)))

(declare-fun b!4767426 () Bool)

(declare-fun res!2021969 () Bool)

(assert (=> b!4767426 (=> (not res!2021969) (not e!2975740))))

(assert (=> b!4767426 (= res!2021969 (allKeysSameHashInMap!2022 lt!1930230 (hashF!12447 thiss!42052)))))

(declare-fun b!4767427 () Bool)

(declare-fun res!2021970 () Bool)

(assert (=> b!4767427 (=> (not res!2021970) (not e!2975740))))

(declare-fun contains!16847 (ListMap!5793 K!14969) Bool)

(assert (=> b!4767427 (= res!2021970 (contains!16847 (extractMap!2148 (toList!6297 lt!1930230)) key!1776))))

(declare-fun b!4767428 () Bool)

(assert (=> b!4767428 (= e!2975740 (isDefined!9846 (getPair!648 (apply!12633 lt!1930230 (hash!4573 (hashF!12447 thiss!42052) key!1776)) key!1776)))))

(declare-fun lt!1930264 () Unit!138271)

(assert (=> b!4767428 (= lt!1930264 (forallContained!3865 (toList!6297 lt!1930230) lambda!224499 (tuple2!55549 (hash!4573 (hashF!12447 thiss!42052) key!1776) (apply!12633 lt!1930230 (hash!4573 (hashF!12447 thiss!42052) key!1776)))))))

(declare-fun lt!1930263 () Unit!138271)

(declare-fun lt!1930266 () Unit!138271)

(assert (=> b!4767428 (= lt!1930263 lt!1930266)))

(declare-fun lt!1930265 () (_ BitVec 64))

(declare-fun lt!1930268 () List!53618)

(assert (=> b!4767428 (contains!16845 (toList!6297 lt!1930230) (tuple2!55549 lt!1930265 lt!1930268))))

(assert (=> b!4767428 (= lt!1930266 (lemmaGetValueImpliesTupleContained!440 lt!1930230 lt!1930265 lt!1930268))))

(declare-fun e!2975741 () Bool)

(assert (=> b!4767428 e!2975741))

(declare-fun res!2021967 () Bool)

(assert (=> b!4767428 (=> (not res!2021967) (not e!2975741))))

(assert (=> b!4767428 (= res!2021967 (contains!16846 lt!1930230 lt!1930265))))

(assert (=> b!4767428 (= lt!1930268 (apply!12633 lt!1930230 (hash!4573 (hashF!12447 thiss!42052) key!1776)))))

(assert (=> b!4767428 (= lt!1930265 (hash!4573 (hashF!12447 thiss!42052) key!1776))))

(declare-fun lt!1930262 () Unit!138271)

(declare-fun lt!1930267 () Unit!138271)

(assert (=> b!4767428 (= lt!1930262 lt!1930267)))

(assert (=> b!4767428 (contains!16846 lt!1930230 (hash!4573 (hashF!12447 thiss!42052) key!1776))))

(assert (=> b!4767428 (= lt!1930267 (lemmaInGenMapThenLongMapContainsHash!841 lt!1930230 key!1776 (hashF!12447 thiss!42052)))))

(declare-fun b!4767429 () Bool)

(assert (=> b!4767429 (= e!2975741 (= (getValueByKey!2187 (toList!6297 lt!1930230) lt!1930265) (Some!12683 lt!1930268)))))

(assert (= (and d!1523909 res!2021968) b!4767426))

(assert (= (and b!4767426 res!2021969) b!4767427))

(assert (= (and b!4767427 res!2021970) b!4767428))

(assert (= (and b!4767428 res!2021967) b!4767429))

(declare-fun m!5738630 () Bool)

(assert (=> b!4767426 m!5738630))

(declare-fun m!5738632 () Bool)

(assert (=> b!4767428 m!5738632))

(assert (=> b!4767428 m!5738590))

(declare-fun m!5738634 () Bool)

(assert (=> b!4767428 m!5738634))

(assert (=> b!4767428 m!5738602))

(declare-fun m!5738636 () Bool)

(assert (=> b!4767428 m!5738636))

(declare-fun m!5738638 () Bool)

(assert (=> b!4767428 m!5738638))

(assert (=> b!4767428 m!5738590))

(assert (=> b!4767428 m!5738590))

(declare-fun m!5738640 () Bool)

(assert (=> b!4767428 m!5738640))

(declare-fun m!5738642 () Bool)

(assert (=> b!4767428 m!5738642))

(declare-fun m!5738644 () Bool)

(assert (=> b!4767428 m!5738644))

(declare-fun m!5738646 () Bool)

(assert (=> b!4767428 m!5738646))

(assert (=> b!4767428 m!5738640))

(assert (=> b!4767428 m!5738642))

(declare-fun m!5738648 () Bool)

(assert (=> b!4767429 m!5738648))

(declare-fun m!5738650 () Bool)

(assert (=> d!1523909 m!5738650))

(declare-fun m!5738652 () Bool)

(assert (=> d!1523909 m!5738652))

(assert (=> d!1523909 m!5738650))

(assert (=> b!4767427 m!5738550))

(assert (=> b!4767427 m!5738550))

(declare-fun m!5738654 () Bool)

(assert (=> b!4767427 m!5738654))

(assert (=> b!4767385 d!1523909))

(declare-fun bs!1149063 () Bool)

(declare-fun d!1523911 () Bool)

(assert (= bs!1149063 (and d!1523911 b!4767385)))

(declare-fun lambda!224512 () Int)

(assert (=> bs!1149063 (= lambda!224512 lambda!224486)))

(declare-fun bs!1149064 () Bool)

(assert (= bs!1149064 (and d!1523911 d!1523905)))

(assert (=> bs!1149064 (= lambda!224512 lambda!224489)))

(declare-fun bs!1149065 () Bool)

(assert (= bs!1149065 (and d!1523911 b!4767416)))

(assert (=> bs!1149065 (= lambda!224512 lambda!224492)))

(declare-fun bs!1149066 () Bool)

(assert (= bs!1149066 (and d!1523911 d!1523909)))

(assert (=> bs!1149066 (= lambda!224512 lambda!224499)))

(declare-fun b!4767451 () Bool)

(declare-fun e!2975752 () Bool)

(assert (=> b!4767451 (= e!2975752 (= (_2!31067 (get!18045 (getPair!648 (apply!12633 lt!1930230 (hash!4573 (hashF!12447 thiss!42052) key!1776)) key!1776))) (get!18044 (getValueByKey!2188 (toList!6298 (extractMap!2148 (toList!6297 lt!1930230))) key!1776))))))

(declare-fun lt!1930311 () Unit!138271)

(declare-fun lt!1930313 () Unit!138271)

(assert (=> b!4767451 (= lt!1930311 lt!1930313)))

(declare-fun e!2975755 () Bool)

(assert (=> b!4767451 e!2975755))

(declare-fun res!2021995 () Bool)

(assert (=> b!4767451 (=> (not res!2021995) (not e!2975755))))

(assert (=> b!4767451 (= res!2021995 (forall!11877 (toList!6297 lt!1930230) lambda!224512))))

(assert (=> b!4767451 (= lt!1930313 (lemmaInGenMapThenGetPairDefined!431 lt!1930230 key!1776 (hashF!12447 thiss!42052)))))

(declare-fun e!2975756 () Bool)

(assert (=> b!4767451 e!2975756))

(declare-fun res!2021996 () Bool)

(assert (=> b!4767451 (=> (not res!2021996) (not e!2975756))))

(assert (=> b!4767451 (= res!2021996 (forall!11877 (toList!6297 lt!1930230) lambda!224512))))

(declare-fun lt!1930314 () Unit!138271)

(assert (=> b!4767451 (= lt!1930314 (forallContained!3865 (toList!6297 lt!1930230) lambda!224512 (tuple2!55549 (hash!4573 (hashF!12447 thiss!42052) key!1776) (apply!12633 lt!1930230 (hash!4573 (hashF!12447 thiss!42052) key!1776)))))))

(declare-fun lt!1930318 () Unit!138271)

(declare-fun lt!1930304 () Unit!138271)

(assert (=> b!4767451 (= lt!1930318 lt!1930304)))

(declare-fun lt!1930315 () (_ BitVec 64))

(declare-fun lt!1930310 () List!53618)

(assert (=> b!4767451 (contains!16845 (toList!6297 lt!1930230) (tuple2!55549 lt!1930315 lt!1930310))))

(assert (=> b!4767451 (= lt!1930304 (lemmaGetValueImpliesTupleContained!440 lt!1930230 lt!1930315 lt!1930310))))

(declare-fun e!2975754 () Bool)

(assert (=> b!4767451 e!2975754))

(declare-fun res!2021994 () Bool)

(assert (=> b!4767451 (=> (not res!2021994) (not e!2975754))))

(assert (=> b!4767451 (= res!2021994 (contains!16846 lt!1930230 lt!1930315))))

(assert (=> b!4767451 (= lt!1930310 (apply!12633 lt!1930230 (hash!4573 (hashF!12447 thiss!42052) key!1776)))))

(assert (=> b!4767451 (= lt!1930315 (hash!4573 (hashF!12447 thiss!42052) key!1776))))

(declare-fun lt!1930316 () Unit!138271)

(declare-fun lt!1930309 () Unit!138271)

(assert (=> b!4767451 (= lt!1930316 lt!1930309)))

(assert (=> b!4767451 (contains!16846 lt!1930230 (hash!4573 (hashF!12447 thiss!42052) key!1776))))

(assert (=> b!4767451 (= lt!1930309 (lemmaInGenMapThenLongMapContainsHash!841 lt!1930230 key!1776 (hashF!12447 thiss!42052)))))

(declare-fun b!4767452 () Bool)

(assert (=> b!4767452 (= e!2975754 (= (getValueByKey!2187 (toList!6297 lt!1930230) lt!1930315) (Some!12683 lt!1930310)))))

(declare-fun b!4767453 () Bool)

(assert (=> b!4767453 (= e!2975755 (isDefined!9846 (getPair!648 (apply!12633 lt!1930230 (hash!4573 (hashF!12447 thiss!42052) key!1776)) key!1776)))))

(declare-fun lt!1930319 () Unit!138271)

(assert (=> b!4767453 (= lt!1930319 (forallContained!3865 (toList!6297 lt!1930230) lambda!224512 (tuple2!55549 (hash!4573 (hashF!12447 thiss!42052) key!1776) (apply!12633 lt!1930230 (hash!4573 (hashF!12447 thiss!42052) key!1776)))))))

(declare-fun lt!1930306 () Unit!138271)

(declare-fun lt!1930312 () Unit!138271)

(assert (=> b!4767453 (= lt!1930306 lt!1930312)))

(declare-fun lt!1930307 () (_ BitVec 64))

(declare-fun lt!1930308 () List!53618)

(assert (=> b!4767453 (contains!16845 (toList!6297 lt!1930230) (tuple2!55549 lt!1930307 lt!1930308))))

(assert (=> b!4767453 (= lt!1930312 (lemmaGetValueImpliesTupleContained!440 lt!1930230 lt!1930307 lt!1930308))))

(declare-fun e!2975753 () Bool)

(assert (=> b!4767453 e!2975753))

(declare-fun res!2021992 () Bool)

(assert (=> b!4767453 (=> (not res!2021992) (not e!2975753))))

(assert (=> b!4767453 (= res!2021992 (contains!16846 lt!1930230 lt!1930307))))

(assert (=> b!4767453 (= lt!1930308 (apply!12633 lt!1930230 (hash!4573 (hashF!12447 thiss!42052) key!1776)))))

(assert (=> b!4767453 (= lt!1930307 (hash!4573 (hashF!12447 thiss!42052) key!1776))))

(declare-fun lt!1930317 () Unit!138271)

(declare-fun lt!1930303 () Unit!138271)

(assert (=> b!4767453 (= lt!1930317 lt!1930303)))

(assert (=> b!4767453 (contains!16846 lt!1930230 (hash!4573 (hashF!12447 thiss!42052) key!1776))))

(assert (=> b!4767453 (= lt!1930303 (lemmaInGenMapThenLongMapContainsHash!841 lt!1930230 key!1776 (hashF!12447 thiss!42052)))))

(declare-fun b!4767454 () Bool)

(assert (=> b!4767454 (= e!2975756 (contains!16847 (extractMap!2148 (toList!6297 lt!1930230)) key!1776))))

(declare-fun b!4767455 () Bool)

(declare-fun res!2021997 () Bool)

(assert (=> b!4767455 (=> (not res!2021997) (not e!2975755))))

(assert (=> b!4767455 (= res!2021997 (contains!16847 (extractMap!2148 (toList!6297 lt!1930230)) key!1776))))

(declare-fun b!4767456 () Bool)

(declare-fun res!2021991 () Bool)

(assert (=> b!4767456 (=> (not res!2021991) (not e!2975752))))

(assert (=> b!4767456 (= res!2021991 (allKeysSameHashInMap!2022 lt!1930230 (hashF!12447 thiss!42052)))))

(declare-fun b!4767457 () Bool)

(declare-fun res!2022000 () Bool)

(assert (=> b!4767457 (=> (not res!2022000) (not e!2975756))))

(assert (=> b!4767457 (= res!2022000 (allKeysSameHashInMap!2022 lt!1930230 (hashF!12447 thiss!42052)))))

(declare-fun b!4767450 () Bool)

(assert (=> b!4767450 (= e!2975753 (= (getValueByKey!2187 (toList!6297 lt!1930230) lt!1930307) (Some!12683 lt!1930308)))))

(assert (=> d!1523911 e!2975752))

(declare-fun res!2021993 () Bool)

(assert (=> d!1523911 (=> (not res!2021993) (not e!2975752))))

(assert (=> d!1523911 (= res!2021993 (forall!11877 (toList!6297 lt!1930230) lambda!224512))))

(declare-fun lt!1930305 () Unit!138271)

(declare-fun choose!33976 (ListLongMap!4695 K!14969 V!15215 Hashable!6592) Unit!138271)

(assert (=> d!1523911 (= lt!1930305 (choose!33976 lt!1930230 key!1776 (_2!31067 lt!1930231) (hashF!12447 thiss!42052)))))

(assert (=> d!1523911 (forall!11877 (toList!6297 lt!1930230) lambda!224512)))

(assert (=> d!1523911 (= (lemmaGetPairGetSameValueAsMap!63 lt!1930230 key!1776 (_2!31067 lt!1930231) (hashF!12447 thiss!42052)) lt!1930305)))

(declare-fun b!4767458 () Bool)

(declare-fun res!2021998 () Bool)

(assert (=> b!4767458 (=> (not res!2021998) (not e!2975755))))

(assert (=> b!4767458 (= res!2021998 (allKeysSameHashInMap!2022 lt!1930230 (hashF!12447 thiss!42052)))))

(declare-fun b!4767459 () Bool)

(declare-fun res!2021999 () Bool)

(assert (=> b!4767459 (=> (not res!2021999) (not e!2975752))))

(assert (=> b!4767459 (= res!2021999 (contains!16847 (extractMap!2148 (toList!6297 lt!1930230)) key!1776))))

(assert (= (and d!1523911 res!2021993) b!4767456))

(assert (= (and b!4767456 res!2021991) b!4767459))

(assert (= (and b!4767459 res!2021999) b!4767451))

(assert (= (and b!4767451 res!2021994) b!4767452))

(assert (= (and b!4767451 res!2021996) b!4767457))

(assert (= (and b!4767457 res!2022000) b!4767454))

(assert (= (and b!4767451 res!2021995) b!4767458))

(assert (= (and b!4767458 res!2021998) b!4767455))

(assert (= (and b!4767455 res!2021997) b!4767453))

(assert (= (and b!4767453 res!2021992) b!4767450))

(assert (=> b!4767459 m!5738550))

(assert (=> b!4767459 m!5738550))

(assert (=> b!4767459 m!5738654))

(declare-fun m!5738656 () Bool)

(assert (=> b!4767452 m!5738656))

(assert (=> b!4767454 m!5738550))

(assert (=> b!4767454 m!5738550))

(assert (=> b!4767454 m!5738654))

(declare-fun m!5738658 () Bool)

(assert (=> b!4767450 m!5738658))

(assert (=> b!4767455 m!5738550))

(assert (=> b!4767455 m!5738550))

(assert (=> b!4767455 m!5738654))

(assert (=> b!4767457 m!5738630))

(declare-fun m!5738660 () Bool)

(assert (=> b!4767453 m!5738660))

(declare-fun m!5738662 () Bool)

(assert (=> b!4767453 m!5738662))

(assert (=> b!4767453 m!5738602))

(assert (=> b!4767453 m!5738590))

(assert (=> b!4767453 m!5738640))

(assert (=> b!4767453 m!5738590))

(assert (=> b!4767453 m!5738640))

(assert (=> b!4767453 m!5738642))

(declare-fun m!5738664 () Bool)

(assert (=> b!4767453 m!5738664))

(declare-fun m!5738666 () Bool)

(assert (=> b!4767453 m!5738666))

(assert (=> b!4767453 m!5738590))

(assert (=> b!4767453 m!5738634))

(assert (=> b!4767453 m!5738642))

(assert (=> b!4767453 m!5738644))

(assert (=> b!4767458 m!5738630))

(assert (=> b!4767456 m!5738630))

(declare-fun m!5738668 () Bool)

(assert (=> d!1523911 m!5738668))

(declare-fun m!5738670 () Bool)

(assert (=> d!1523911 m!5738670))

(assert (=> d!1523911 m!5738668))

(declare-fun m!5738672 () Bool)

(assert (=> b!4767451 m!5738672))

(assert (=> b!4767451 m!5738552))

(assert (=> b!4767451 m!5738642))

(declare-fun m!5738674 () Bool)

(assert (=> b!4767451 m!5738674))

(assert (=> b!4767451 m!5738552))

(assert (=> b!4767451 m!5738554))

(assert (=> b!4767451 m!5738668))

(assert (=> b!4767451 m!5738668))

(assert (=> b!4767451 m!5738550))

(assert (=> b!4767451 m!5738574))

(assert (=> b!4767451 m!5738590))

(assert (=> b!4767451 m!5738634))

(declare-fun m!5738676 () Bool)

(assert (=> b!4767451 m!5738676))

(assert (=> b!4767451 m!5738602))

(declare-fun m!5738678 () Bool)

(assert (=> b!4767451 m!5738678))

(assert (=> b!4767451 m!5738590))

(assert (=> b!4767451 m!5738640))

(assert (=> b!4767451 m!5738590))

(assert (=> b!4767451 m!5738640))

(assert (=> b!4767451 m!5738642))

(assert (=> b!4767451 m!5738666))

(assert (=> b!4767385 d!1523911))

(declare-fun d!1523913 () Bool)

(declare-fun map!11996 (LongMapFixedSize!9862) ListLongMap!4695)

(assert (=> d!1523913 (= (map!11995 (v!47686 (underlying!10070 thiss!42052))) (map!11996 (v!47685 (underlying!10069 (v!47686 (underlying!10070 thiss!42052))))))))

(declare-fun bs!1149067 () Bool)

(assert (= bs!1149067 d!1523913))

(declare-fun m!5738680 () Bool)

(assert (=> bs!1149067 m!5738680))

(assert (=> b!4767385 d!1523913))

(declare-fun d!1523915 () Bool)

(declare-fun lt!1930322 () ListMap!5793)

(assert (=> d!1523915 (invariantList!1661 (toList!6298 lt!1930322))))

(assert (=> d!1523915 (= lt!1930322 (extractMap!2148 (toList!6297 (map!11995 (v!47686 (underlying!10070 thiss!42052))))))))

(assert (=> d!1523915 (valid!3935 thiss!42052)))

(assert (=> d!1523915 (= (map!11994 thiss!42052) lt!1930322)))

(declare-fun bs!1149068 () Bool)

(assert (= bs!1149068 d!1523915))

(declare-fun m!5738682 () Bool)

(assert (=> bs!1149068 m!5738682))

(assert (=> bs!1149068 m!5738608))

(declare-fun m!5738684 () Bool)

(assert (=> bs!1149068 m!5738684))

(assert (=> bs!1149068 m!5738560))

(assert (=> b!4767385 d!1523915))

(declare-fun d!1523917 () Bool)

(declare-fun dynLambda!21952 (Int tuple2!55548) Bool)

(assert (=> d!1523917 (dynLambda!21952 lambda!224486 lt!1930227)))

(declare-fun lt!1930325 () Unit!138271)

(declare-fun choose!33977 (List!53619 Int tuple2!55548) Unit!138271)

(assert (=> d!1523917 (= lt!1930325 (choose!33977 (toList!6297 lt!1930230) lambda!224486 lt!1930227))))

(declare-fun e!2975759 () Bool)

(assert (=> d!1523917 e!2975759))

(declare-fun res!2022003 () Bool)

(assert (=> d!1523917 (=> (not res!2022003) (not e!2975759))))

(assert (=> d!1523917 (= res!2022003 (forall!11877 (toList!6297 lt!1930230) lambda!224486))))

(assert (=> d!1523917 (= (forallContained!3865 (toList!6297 lt!1930230) lambda!224486 lt!1930227) lt!1930325)))

(declare-fun b!4767462 () Bool)

(assert (=> b!4767462 (= e!2975759 (contains!16845 (toList!6297 lt!1930230) lt!1930227))))

(assert (= (and d!1523917 res!2022003) b!4767462))

(declare-fun b_lambda!184415 () Bool)

(assert (=> (not b_lambda!184415) (not d!1523917)))

(declare-fun m!5738686 () Bool)

(assert (=> d!1523917 m!5738686))

(declare-fun m!5738688 () Bool)

(assert (=> d!1523917 m!5738688))

(declare-fun m!5738690 () Bool)

(assert (=> d!1523917 m!5738690))

(assert (=> b!4767462 m!5738586))

(assert (=> b!4767385 d!1523917))

(declare-fun d!1523919 () Bool)

(assert (=> d!1523919 (dynLambda!21952 lambda!224486 lt!1930228)))

(declare-fun lt!1930326 () Unit!138271)

(assert (=> d!1523919 (= lt!1930326 (choose!33977 (toList!6297 lt!1930230) lambda!224486 lt!1930228))))

(declare-fun e!2975760 () Bool)

(assert (=> d!1523919 e!2975760))

(declare-fun res!2022004 () Bool)

(assert (=> d!1523919 (=> (not res!2022004) (not e!2975760))))

(assert (=> d!1523919 (= res!2022004 (forall!11877 (toList!6297 lt!1930230) lambda!224486))))

(assert (=> d!1523919 (= (forallContained!3865 (toList!6297 lt!1930230) lambda!224486 lt!1930228) lt!1930326)))

(declare-fun b!4767463 () Bool)

(assert (=> b!4767463 (= e!2975760 (contains!16845 (toList!6297 lt!1930230) lt!1930228))))

(assert (= (and d!1523919 res!2022004) b!4767463))

(declare-fun b_lambda!184417 () Bool)

(assert (=> (not b_lambda!184417) (not d!1523919)))

(declare-fun m!5738692 () Bool)

(assert (=> d!1523919 m!5738692))

(declare-fun m!5738694 () Bool)

(assert (=> d!1523919 m!5738694))

(assert (=> d!1523919 m!5738690))

(assert (=> b!4767463 m!5738596))

(assert (=> b!4767385 d!1523919))

(declare-fun d!1523921 () Bool)

(declare-fun isEmpty!29281 (Option!12686) Bool)

(assert (=> d!1523921 (= (isDefined!9846 lt!1930237) (not (isEmpty!29281 lt!1930237)))))

(declare-fun bs!1149069 () Bool)

(assert (= bs!1149069 d!1523921))

(declare-fun m!5738696 () Bool)

(assert (=> bs!1149069 m!5738696))

(assert (=> b!4767385 d!1523921))

(declare-fun d!1523923 () Bool)

(assert (=> d!1523923 (contains!16845 (toList!6297 lt!1930230) (tuple2!55549 lt!1930238 lt!1930225))))

(declare-fun lt!1930329 () Unit!138271)

(declare-fun choose!33978 (ListLongMap!4695 (_ BitVec 64) List!53618) Unit!138271)

(assert (=> d!1523923 (= lt!1930329 (choose!33978 lt!1930230 lt!1930238 lt!1930225))))

(assert (=> d!1523923 (contains!16846 lt!1930230 lt!1930238)))

(assert (=> d!1523923 (= (lemmaGetValueImpliesTupleContained!440 lt!1930230 lt!1930238 lt!1930225) lt!1930329)))

(declare-fun bs!1149070 () Bool)

(assert (= bs!1149070 d!1523923))

(declare-fun m!5738698 () Bool)

(assert (=> bs!1149070 m!5738698))

(declare-fun m!5738700 () Bool)

(assert (=> bs!1149070 m!5738700))

(assert (=> bs!1149070 m!5738578))

(assert (=> b!4767385 d!1523923))

(declare-fun b!4767481 () Bool)

(declare-fun e!2975773 () Option!12686)

(assert (=> b!4767481 (= e!2975773 (getPair!648 (t!361042 lt!1930224) key!1776))))

(declare-fun b!4767482 () Bool)

(declare-fun e!2975774 () Option!12686)

(assert (=> b!4767482 (= e!2975774 e!2975773)))

(declare-fun c!813219 () Bool)

(assert (=> b!4767482 (= c!813219 ((_ is Cons!53494) lt!1930224))))

(declare-fun b!4767483 () Bool)

(declare-fun e!2975775 () Bool)

(declare-fun containsKey!3666 (List!53618 K!14969) Bool)

(assert (=> b!4767483 (= e!2975775 (not (containsKey!3666 lt!1930224 key!1776)))))

(declare-fun d!1523925 () Bool)

(declare-fun e!2975771 () Bool)

(assert (=> d!1523925 e!2975771))

(declare-fun res!2022015 () Bool)

(assert (=> d!1523925 (=> res!2022015 e!2975771)))

(assert (=> d!1523925 (= res!2022015 e!2975775)))

(declare-fun res!2022016 () Bool)

(assert (=> d!1523925 (=> (not res!2022016) (not e!2975775))))

(declare-fun lt!1930332 () Option!12686)

(assert (=> d!1523925 (= res!2022016 (isEmpty!29281 lt!1930332))))

(assert (=> d!1523925 (= lt!1930332 e!2975774)))

(declare-fun c!813220 () Bool)

(assert (=> d!1523925 (= c!813220 (and ((_ is Cons!53494) lt!1930224) (= (_1!31067 (h!59906 lt!1930224)) key!1776)))))

(declare-fun noDuplicateKeys!2254 (List!53618) Bool)

(assert (=> d!1523925 (noDuplicateKeys!2254 lt!1930224)))

(assert (=> d!1523925 (= (getPair!648 lt!1930224 key!1776) lt!1930332)))

(declare-fun b!4767484 () Bool)

(assert (=> b!4767484 (= e!2975773 None!12685)))

(declare-fun b!4767485 () Bool)

(declare-fun e!2975772 () Bool)

(declare-fun contains!16848 (List!53618 tuple2!55546) Bool)

(assert (=> b!4767485 (= e!2975772 (contains!16848 lt!1930224 (get!18045 lt!1930332)))))

(declare-fun b!4767486 () Bool)

(assert (=> b!4767486 (= e!2975771 e!2975772)))

(declare-fun res!2022013 () Bool)

(assert (=> b!4767486 (=> (not res!2022013) (not e!2975772))))

(assert (=> b!4767486 (= res!2022013 (isDefined!9846 lt!1930332))))

(declare-fun b!4767487 () Bool)

(assert (=> b!4767487 (= e!2975774 (Some!12685 (h!59906 lt!1930224)))))

(declare-fun b!4767488 () Bool)

(declare-fun res!2022014 () Bool)

(assert (=> b!4767488 (=> (not res!2022014) (not e!2975772))))

(assert (=> b!4767488 (= res!2022014 (= (_1!31067 (get!18045 lt!1930332)) key!1776))))

(assert (= (and d!1523925 c!813220) b!4767487))

(assert (= (and d!1523925 (not c!813220)) b!4767482))

(assert (= (and b!4767482 c!813219) b!4767481))

(assert (= (and b!4767482 (not c!813219)) b!4767484))

(assert (= (and d!1523925 res!2022016) b!4767483))

(assert (= (and d!1523925 (not res!2022015)) b!4767486))

(assert (= (and b!4767486 res!2022013) b!4767488))

(assert (= (and b!4767488 res!2022014) b!4767485))

(declare-fun m!5738702 () Bool)

(assert (=> b!4767488 m!5738702))

(declare-fun m!5738704 () Bool)

(assert (=> d!1523925 m!5738704))

(declare-fun m!5738706 () Bool)

(assert (=> d!1523925 m!5738706))

(declare-fun m!5738708 () Bool)

(assert (=> b!4767481 m!5738708))

(declare-fun m!5738710 () Bool)

(assert (=> b!4767486 m!5738710))

(assert (=> b!4767485 m!5738702))

(assert (=> b!4767485 m!5738702))

(declare-fun m!5738712 () Bool)

(assert (=> b!4767485 m!5738712))

(declare-fun m!5738714 () Bool)

(assert (=> b!4767483 m!5738714))

(assert (=> b!4767385 d!1523925))

(declare-fun d!1523927 () Bool)

(declare-fun e!2975778 () Bool)

(assert (=> d!1523927 e!2975778))

(declare-fun c!813223 () Bool)

(declare-fun contains!16849 (MutLongMap!4931 (_ BitVec 64)) Bool)

(assert (=> d!1523927 (= c!813223 (contains!16849 (v!47686 (underlying!10070 thiss!42052)) lt!1930238))))

(declare-fun lt!1930335 () List!53618)

(declare-fun apply!12635 (LongMapFixedSize!9862 (_ BitVec 64)) List!53618)

(assert (=> d!1523927 (= lt!1930335 (apply!12635 (v!47685 (underlying!10069 (v!47686 (underlying!10070 thiss!42052)))) lt!1930238))))

(assert (=> d!1523927 (valid!3934 (v!47686 (underlying!10070 thiss!42052)))))

(assert (=> d!1523927 (= (apply!12634 (v!47686 (underlying!10070 thiss!42052)) lt!1930238) lt!1930335)))

(declare-fun b!4767493 () Bool)

(declare-fun get!18046 (Option!12684) List!53618)

(assert (=> b!4767493 (= e!2975778 (= lt!1930335 (get!18046 (getValueByKey!2187 (toList!6297 (map!11995 (v!47686 (underlying!10070 thiss!42052)))) lt!1930238))))))

(declare-fun b!4767494 () Bool)

(declare-fun dynLambda!21953 (Int (_ BitVec 64)) List!53618)

(assert (=> b!4767494 (= e!2975778 (= lt!1930335 (dynLambda!21953 (defaultEntry!5349 (v!47685 (underlying!10069 (v!47686 (underlying!10070 thiss!42052))))) lt!1930238)))))

(assert (=> b!4767494 ((_ is LongMap!4931) (v!47686 (underlying!10070 thiss!42052)))))

(assert (= (and d!1523927 c!813223) b!4767493))

(assert (= (and d!1523927 (not c!813223)) b!4767494))

(declare-fun b_lambda!184419 () Bool)

(assert (=> (not b_lambda!184419) (not b!4767494)))

(declare-fun t!361045 () Bool)

(declare-fun tb!257477 () Bool)

(assert (=> (and b!4767388 (= (defaultEntry!5349 (v!47685 (underlying!10069 (v!47686 (underlying!10070 thiss!42052))))) (defaultEntry!5349 (v!47685 (underlying!10069 (v!47686 (underlying!10070 thiss!42052)))))) t!361045) tb!257477))

(assert (=> b!4767494 t!361045))

(declare-fun result!319116 () Bool)

(declare-fun b_and!341387 () Bool)

(assert (= b_and!341383 (and (=> t!361045 result!319116) b_and!341387)))

(declare-fun m!5738716 () Bool)

(assert (=> d!1523927 m!5738716))

(declare-fun m!5738718 () Bool)

(assert (=> d!1523927 m!5738718))

(assert (=> d!1523927 m!5738558))

(assert (=> b!4767493 m!5738608))

(declare-fun m!5738720 () Bool)

(assert (=> b!4767493 m!5738720))

(assert (=> b!4767493 m!5738720))

(declare-fun m!5738722 () Bool)

(assert (=> b!4767493 m!5738722))

(declare-fun m!5738724 () Bool)

(assert (=> b!4767494 m!5738724))

(assert (=> b!4767385 d!1523927))

(declare-fun d!1523929 () Bool)

(declare-fun lt!1930338 () Bool)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!9588 (List!53619) (InoxSet tuple2!55548))

(assert (=> d!1523929 (= lt!1930338 (select (content!9588 (toList!6297 lt!1930230)) lt!1930227))))

(declare-fun e!2975783 () Bool)

(assert (=> d!1523929 (= lt!1930338 e!2975783)))

(declare-fun res!2022022 () Bool)

(assert (=> d!1523929 (=> (not res!2022022) (not e!2975783))))

(assert (=> d!1523929 (= res!2022022 ((_ is Cons!53495) (toList!6297 lt!1930230)))))

(assert (=> d!1523929 (= (contains!16845 (toList!6297 lt!1930230) lt!1930227) lt!1930338)))

(declare-fun b!4767499 () Bool)

(declare-fun e!2975784 () Bool)

(assert (=> b!4767499 (= e!2975783 e!2975784)))

(declare-fun res!2022021 () Bool)

(assert (=> b!4767499 (=> res!2022021 e!2975784)))

(assert (=> b!4767499 (= res!2022021 (= (h!59907 (toList!6297 lt!1930230)) lt!1930227))))

(declare-fun b!4767500 () Bool)

(assert (=> b!4767500 (= e!2975784 (contains!16845 (t!361043 (toList!6297 lt!1930230)) lt!1930227))))

(assert (= (and d!1523929 res!2022022) b!4767499))

(assert (= (and b!4767499 (not res!2022021)) b!4767500))

(declare-fun m!5738726 () Bool)

(assert (=> d!1523929 m!5738726))

(declare-fun m!5738728 () Bool)

(assert (=> d!1523929 m!5738728))

(declare-fun m!5738730 () Bool)

(assert (=> b!4767500 m!5738730))

(assert (=> b!4767385 d!1523929))

(declare-fun d!1523931 () Bool)

(declare-fun lt!1930339 () Bool)

(assert (=> d!1523931 (= lt!1930339 (select (content!9588 (toList!6297 lt!1930230)) lt!1930228))))

(declare-fun e!2975785 () Bool)

(assert (=> d!1523931 (= lt!1930339 e!2975785)))

(declare-fun res!2022024 () Bool)

(assert (=> d!1523931 (=> (not res!2022024) (not e!2975785))))

(assert (=> d!1523931 (= res!2022024 ((_ is Cons!53495) (toList!6297 lt!1930230)))))

(assert (=> d!1523931 (= (contains!16845 (toList!6297 lt!1930230) lt!1930228) lt!1930339)))

(declare-fun b!4767501 () Bool)

(declare-fun e!2975786 () Bool)

(assert (=> b!4767501 (= e!2975785 e!2975786)))

(declare-fun res!2022023 () Bool)

(assert (=> b!4767501 (=> res!2022023 e!2975786)))

(assert (=> b!4767501 (= res!2022023 (= (h!59907 (toList!6297 lt!1930230)) lt!1930228))))

(declare-fun b!4767502 () Bool)

(assert (=> b!4767502 (= e!2975786 (contains!16845 (t!361043 (toList!6297 lt!1930230)) lt!1930228))))

(assert (= (and d!1523931 res!2022024) b!4767501))

(assert (= (and b!4767501 (not res!2022023)) b!4767502))

(assert (=> d!1523931 m!5738726))

(declare-fun m!5738732 () Bool)

(assert (=> d!1523931 m!5738732))

(declare-fun m!5738734 () Bool)

(assert (=> b!4767502 m!5738734))

(assert (=> b!4767385 d!1523931))

(declare-fun b!4767505 () Bool)

(declare-fun e!2975788 () Option!12685)

(assert (=> b!4767505 (= e!2975788 (getValueByKey!2188 (t!361042 (toList!6298 (map!11994 thiss!42052))) key!1776))))

(declare-fun b!4767503 () Bool)

(declare-fun e!2975787 () Option!12685)

(assert (=> b!4767503 (= e!2975787 (Some!12684 (_2!31067 (h!59906 (toList!6298 (map!11994 thiss!42052))))))))

(declare-fun d!1523933 () Bool)

(declare-fun c!813224 () Bool)

(assert (=> d!1523933 (= c!813224 (and ((_ is Cons!53494) (toList!6298 (map!11994 thiss!42052))) (= (_1!31067 (h!59906 (toList!6298 (map!11994 thiss!42052)))) key!1776)))))

(assert (=> d!1523933 (= (getValueByKey!2188 (toList!6298 (map!11994 thiss!42052)) key!1776) e!2975787)))

(declare-fun b!4767504 () Bool)

(assert (=> b!4767504 (= e!2975787 e!2975788)))

(declare-fun c!813225 () Bool)

(assert (=> b!4767504 (= c!813225 (and ((_ is Cons!53494) (toList!6298 (map!11994 thiss!42052))) (not (= (_1!31067 (h!59906 (toList!6298 (map!11994 thiss!42052)))) key!1776))))))

(declare-fun b!4767506 () Bool)

(assert (=> b!4767506 (= e!2975788 None!12684)))

(assert (= (and d!1523933 c!813224) b!4767503))

(assert (= (and d!1523933 (not c!813224)) b!4767504))

(assert (= (and b!4767504 c!813225) b!4767505))

(assert (= (and b!4767504 (not c!813225)) b!4767506))

(declare-fun m!5738736 () Bool)

(assert (=> b!4767505 m!5738736))

(assert (=> b!4767385 d!1523933))

(declare-fun d!1523935 () Bool)

(assert (=> d!1523935 (= (get!18045 (getPair!648 lt!1930224 key!1776)) (v!47689 (getPair!648 lt!1930224 key!1776)))))

(assert (=> b!4767385 d!1523935))

(declare-fun d!1523937 () Bool)

(assert (=> d!1523937 (= (get!18044 (getValueByKey!2188 (toList!6298 (map!11994 thiss!42052)) key!1776)) (v!47688 (getValueByKey!2188 (toList!6298 (map!11994 thiss!42052)) key!1776)))))

(assert (=> b!4767385 d!1523937))

(declare-fun d!1523939 () Bool)

(declare-fun e!2975794 () Bool)

(assert (=> d!1523939 e!2975794))

(declare-fun res!2022027 () Bool)

(assert (=> d!1523939 (=> res!2022027 e!2975794)))

(declare-fun lt!1930350 () Bool)

(assert (=> d!1523939 (= res!2022027 (not lt!1930350))))

(declare-fun lt!1930348 () Bool)

(assert (=> d!1523939 (= lt!1930350 lt!1930348)))

(declare-fun lt!1930351 () Unit!138271)

(declare-fun e!2975793 () Unit!138271)

(assert (=> d!1523939 (= lt!1930351 e!2975793)))

(declare-fun c!813228 () Bool)

(assert (=> d!1523939 (= c!813228 lt!1930348)))

(declare-fun containsKey!3667 (List!53619 (_ BitVec 64)) Bool)

(assert (=> d!1523939 (= lt!1930348 (containsKey!3667 (toList!6297 lt!1930230) lt!1930238))))

(assert (=> d!1523939 (= (contains!16846 lt!1930230 lt!1930238) lt!1930350)))

(declare-fun b!4767513 () Bool)

(declare-fun lt!1930349 () Unit!138271)

(assert (=> b!4767513 (= e!2975793 lt!1930349)))

(assert (=> b!4767513 (= lt!1930349 (lemmaContainsKeyImpliesGetValueByKeyDefined!1991 (toList!6297 lt!1930230) lt!1930238))))

(assert (=> b!4767513 (isDefined!9845 (getValueByKey!2187 (toList!6297 lt!1930230) lt!1930238))))

(declare-fun b!4767514 () Bool)

(declare-fun Unit!138275 () Unit!138271)

(assert (=> b!4767514 (= e!2975793 Unit!138275)))

(declare-fun b!4767515 () Bool)

(assert (=> b!4767515 (= e!2975794 (isDefined!9845 (getValueByKey!2187 (toList!6297 lt!1930230) lt!1930238)))))

(assert (= (and d!1523939 c!813228) b!4767513))

(assert (= (and d!1523939 (not c!813228)) b!4767514))

(assert (= (and d!1523939 (not res!2022027)) b!4767515))

(declare-fun m!5738738 () Bool)

(assert (=> d!1523939 m!5738738))

(assert (=> b!4767513 m!5738566))

(assert (=> b!4767513 m!5738568))

(assert (=> b!4767513 m!5738568))

(assert (=> b!4767513 m!5738570))

(assert (=> b!4767515 m!5738568))

(assert (=> b!4767515 m!5738568))

(assert (=> b!4767515 m!5738570))

(assert (=> b!4767385 d!1523939))

(declare-fun b!4767516 () Bool)

(declare-fun e!2975797 () Option!12686)

(assert (=> b!4767516 (= e!2975797 (getPair!648 (t!361042 lt!1930225) key!1776))))

(declare-fun b!4767517 () Bool)

(declare-fun e!2975798 () Option!12686)

(assert (=> b!4767517 (= e!2975798 e!2975797)))

(declare-fun c!813229 () Bool)

(assert (=> b!4767517 (= c!813229 ((_ is Cons!53494) lt!1930225))))

(declare-fun b!4767518 () Bool)

(declare-fun e!2975799 () Bool)

(assert (=> b!4767518 (= e!2975799 (not (containsKey!3666 lt!1930225 key!1776)))))

(declare-fun d!1523941 () Bool)

(declare-fun e!2975795 () Bool)

(assert (=> d!1523941 e!2975795))

(declare-fun res!2022030 () Bool)

(assert (=> d!1523941 (=> res!2022030 e!2975795)))

(assert (=> d!1523941 (= res!2022030 e!2975799)))

(declare-fun res!2022031 () Bool)

(assert (=> d!1523941 (=> (not res!2022031) (not e!2975799))))

(declare-fun lt!1930352 () Option!12686)

(assert (=> d!1523941 (= res!2022031 (isEmpty!29281 lt!1930352))))

(assert (=> d!1523941 (= lt!1930352 e!2975798)))

(declare-fun c!813230 () Bool)

(assert (=> d!1523941 (= c!813230 (and ((_ is Cons!53494) lt!1930225) (= (_1!31067 (h!59906 lt!1930225)) key!1776)))))

(assert (=> d!1523941 (noDuplicateKeys!2254 lt!1930225)))

(assert (=> d!1523941 (= (getPair!648 lt!1930225 key!1776) lt!1930352)))

(declare-fun b!4767519 () Bool)

(assert (=> b!4767519 (= e!2975797 None!12685)))

(declare-fun b!4767520 () Bool)

(declare-fun e!2975796 () Bool)

(assert (=> b!4767520 (= e!2975796 (contains!16848 lt!1930225 (get!18045 lt!1930352)))))

(declare-fun b!4767521 () Bool)

(assert (=> b!4767521 (= e!2975795 e!2975796)))

(declare-fun res!2022028 () Bool)

(assert (=> b!4767521 (=> (not res!2022028) (not e!2975796))))

(assert (=> b!4767521 (= res!2022028 (isDefined!9846 lt!1930352))))

(declare-fun b!4767522 () Bool)

(assert (=> b!4767522 (= e!2975798 (Some!12685 (h!59906 lt!1930225)))))

(declare-fun b!4767523 () Bool)

(declare-fun res!2022029 () Bool)

(assert (=> b!4767523 (=> (not res!2022029) (not e!2975796))))

(assert (=> b!4767523 (= res!2022029 (= (_1!31067 (get!18045 lt!1930352)) key!1776))))

(assert (= (and d!1523941 c!813230) b!4767522))

(assert (= (and d!1523941 (not c!813230)) b!4767517))

(assert (= (and b!4767517 c!813229) b!4767516))

(assert (= (and b!4767517 (not c!813229)) b!4767519))

(assert (= (and d!1523941 res!2022031) b!4767518))

(assert (= (and d!1523941 (not res!2022030)) b!4767521))

(assert (= (and b!4767521 res!2022028) b!4767523))

(assert (= (and b!4767523 res!2022029) b!4767520))

(declare-fun m!5738740 () Bool)

(assert (=> b!4767523 m!5738740))

(declare-fun m!5738742 () Bool)

(assert (=> d!1523941 m!5738742))

(declare-fun m!5738744 () Bool)

(assert (=> d!1523941 m!5738744))

(declare-fun m!5738746 () Bool)

(assert (=> b!4767516 m!5738746))

(declare-fun m!5738748 () Bool)

(assert (=> b!4767521 m!5738748))

(assert (=> b!4767520 m!5738740))

(assert (=> b!4767520 m!5738740))

(declare-fun m!5738750 () Bool)

(assert (=> b!4767520 m!5738750))

(declare-fun m!5738752 () Bool)

(assert (=> b!4767518 m!5738752))

(assert (=> b!4767385 d!1523941))

(declare-fun d!1523943 () Bool)

(declare-fun hash!4574 (Hashable!6592 K!14969) (_ BitVec 64))

(assert (=> d!1523943 (= (hash!4573 (hashF!12447 thiss!42052) key!1776) (hash!4574 (hashF!12447 thiss!42052) key!1776))))

(declare-fun bs!1149071 () Bool)

(assert (= bs!1149071 d!1523943))

(declare-fun m!5738754 () Bool)

(assert (=> bs!1149071 m!5738754))

(assert (=> b!4767385 d!1523943))

(declare-fun d!1523945 () Bool)

(assert (=> d!1523945 (= (apply!12633 lt!1930230 lt!1930238) (get!18046 (getValueByKey!2187 (toList!6297 lt!1930230) lt!1930238)))))

(declare-fun bs!1149072 () Bool)

(assert (= bs!1149072 d!1523945))

(assert (=> bs!1149072 m!5738568))

(assert (=> bs!1149072 m!5738568))

(declare-fun m!5738756 () Bool)

(assert (=> bs!1149072 m!5738756))

(assert (=> b!4767385 d!1523945))

(declare-fun bs!1149073 () Bool)

(declare-fun d!1523947 () Bool)

(assert (= bs!1149073 (and d!1523947 b!4767385)))

(declare-fun lambda!224515 () Int)

(assert (=> bs!1149073 (= lambda!224515 lambda!224486)))

(declare-fun bs!1149074 () Bool)

(assert (= bs!1149074 (and d!1523947 b!4767416)))

(assert (=> bs!1149074 (= lambda!224515 lambda!224492)))

(declare-fun bs!1149075 () Bool)

(assert (= bs!1149075 (and d!1523947 d!1523905)))

(assert (=> bs!1149075 (= lambda!224515 lambda!224489)))

(declare-fun bs!1149076 () Bool)

(assert (= bs!1149076 (and d!1523947 d!1523911)))

(assert (=> bs!1149076 (= lambda!224515 lambda!224512)))

(declare-fun bs!1149077 () Bool)

(assert (= bs!1149077 (and d!1523947 d!1523909)))

(assert (=> bs!1149077 (= lambda!224515 lambda!224499)))

(assert (=> d!1523947 (contains!16846 lt!1930230 (hash!4573 (hashF!12447 thiss!42052) key!1776))))

(declare-fun lt!1930355 () Unit!138271)

(declare-fun choose!33979 (ListLongMap!4695 K!14969 Hashable!6592) Unit!138271)

(assert (=> d!1523947 (= lt!1930355 (choose!33979 lt!1930230 key!1776 (hashF!12447 thiss!42052)))))

(assert (=> d!1523947 (forall!11877 (toList!6297 lt!1930230) lambda!224515)))

(assert (=> d!1523947 (= (lemmaInGenMapThenLongMapContainsHash!841 lt!1930230 key!1776 (hashF!12447 thiss!42052)) lt!1930355)))

(declare-fun bs!1149078 () Bool)

(assert (= bs!1149078 d!1523947))

(assert (=> bs!1149078 m!5738590))

(assert (=> bs!1149078 m!5738590))

(assert (=> bs!1149078 m!5738634))

(declare-fun m!5738758 () Bool)

(assert (=> bs!1149078 m!5738758))

(declare-fun m!5738760 () Bool)

(assert (=> bs!1149078 m!5738760))

(assert (=> b!4767385 d!1523947))

(declare-fun d!1523949 () Bool)

(assert (=> d!1523949 (isDefined!9845 (getValueByKey!2187 (toList!6297 lt!1930230) lt!1930238))))

(declare-fun lt!1930358 () Unit!138271)

(declare-fun choose!33980 (List!53619 (_ BitVec 64)) Unit!138271)

(assert (=> d!1523949 (= lt!1930358 (choose!33980 (toList!6297 lt!1930230) lt!1930238))))

(declare-fun e!2975802 () Bool)

(assert (=> d!1523949 e!2975802))

(declare-fun res!2022034 () Bool)

(assert (=> d!1523949 (=> (not res!2022034) (not e!2975802))))

(declare-fun isStrictlySorted!808 (List!53619) Bool)

(assert (=> d!1523949 (= res!2022034 (isStrictlySorted!808 (toList!6297 lt!1930230)))))

(assert (=> d!1523949 (= (lemmaContainsKeyImpliesGetValueByKeyDefined!1991 (toList!6297 lt!1930230) lt!1930238) lt!1930358)))

(declare-fun b!4767526 () Bool)

(assert (=> b!4767526 (= e!2975802 (containsKey!3667 (toList!6297 lt!1930230) lt!1930238))))

(assert (= (and d!1523949 res!2022034) b!4767526))

(assert (=> d!1523949 m!5738568))

(assert (=> d!1523949 m!5738568))

(assert (=> d!1523949 m!5738570))

(declare-fun m!5738762 () Bool)

(assert (=> d!1523949 m!5738762))

(declare-fun m!5738764 () Bool)

(assert (=> d!1523949 m!5738764))

(assert (=> b!4767526 m!5738738))

(assert (=> b!4767382 d!1523949))

(declare-fun d!1523951 () Bool)

(declare-fun isEmpty!29282 (Option!12684) Bool)

(assert (=> d!1523951 (= (isDefined!9845 (getValueByKey!2187 (toList!6297 lt!1930230) lt!1930238)) (not (isEmpty!29282 (getValueByKey!2187 (toList!6297 lt!1930230) lt!1930238))))))

(declare-fun bs!1149079 () Bool)

(assert (= bs!1149079 d!1523951))

(assert (=> bs!1149079 m!5738568))

(declare-fun m!5738766 () Bool)

(assert (=> bs!1149079 m!5738766))

(assert (=> b!4767382 d!1523951))

(declare-fun b!4767537 () Bool)

(declare-fun e!2975808 () Option!12684)

(assert (=> b!4767537 (= e!2975808 (getValueByKey!2187 (t!361043 (toList!6297 lt!1930230)) lt!1930238))))

(declare-fun b!4767535 () Bool)

(declare-fun e!2975807 () Option!12684)

(assert (=> b!4767535 (= e!2975807 (Some!12683 (_2!31068 (h!59907 (toList!6297 lt!1930230)))))))

(declare-fun b!4767536 () Bool)

(assert (=> b!4767536 (= e!2975807 e!2975808)))

(declare-fun c!813236 () Bool)

(assert (=> b!4767536 (= c!813236 (and ((_ is Cons!53495) (toList!6297 lt!1930230)) (not (= (_1!31068 (h!59907 (toList!6297 lt!1930230))) lt!1930238))))))

(declare-fun b!4767538 () Bool)

(assert (=> b!4767538 (= e!2975808 None!12683)))

(declare-fun d!1523953 () Bool)

(declare-fun c!813235 () Bool)

(assert (=> d!1523953 (= c!813235 (and ((_ is Cons!53495) (toList!6297 lt!1930230)) (= (_1!31068 (h!59907 (toList!6297 lt!1930230))) lt!1930238)))))

(assert (=> d!1523953 (= (getValueByKey!2187 (toList!6297 lt!1930230) lt!1930238) e!2975807)))

(assert (= (and d!1523953 c!813235) b!4767535))

(assert (= (and d!1523953 (not c!813235)) b!4767536))

(assert (= (and b!4767536 c!813236) b!4767537))

(assert (= (and b!4767536 (not c!813236)) b!4767538))

(declare-fun m!5738768 () Bool)

(assert (=> b!4767537 m!5738768))

(assert (=> b!4767382 d!1523953))

(declare-fun d!1523955 () Bool)

(assert (=> d!1523955 (contains!16845 (toList!6297 lt!1930230) (tuple2!55549 lt!1930238 lt!1930224))))

(declare-fun lt!1930361 () Unit!138271)

(declare-fun choose!33981 (List!53619 (_ BitVec 64) List!53618) Unit!138271)

(assert (=> d!1523955 (= lt!1930361 (choose!33981 (toList!6297 lt!1930230) lt!1930238 lt!1930224))))

(declare-fun e!2975811 () Bool)

(assert (=> d!1523955 e!2975811))

(declare-fun res!2022037 () Bool)

(assert (=> d!1523955 (=> (not res!2022037) (not e!2975811))))

(assert (=> d!1523955 (= res!2022037 (isStrictlySorted!808 (toList!6297 lt!1930230)))))

(assert (=> d!1523955 (= (lemmaGetValueByKeyImpliesContainsTuple!934 (toList!6297 lt!1930230) lt!1930238 lt!1930224) lt!1930361)))

(declare-fun b!4767541 () Bool)

(assert (=> b!4767541 (= e!2975811 (= (getValueByKey!2187 (toList!6297 lt!1930230) lt!1930238) (Some!12683 lt!1930224)))))

(assert (= (and d!1523955 res!2022037) b!4767541))

(declare-fun m!5738770 () Bool)

(assert (=> d!1523955 m!5738770))

(declare-fun m!5738772 () Bool)

(assert (=> d!1523955 m!5738772))

(assert (=> d!1523955 m!5738764))

(assert (=> b!4767541 m!5738568))

(assert (=> b!4767382 d!1523955))

(declare-fun d!1523957 () Bool)

(declare-fun valid!3936 (LongMapFixedSize!9862) Bool)

(assert (=> d!1523957 (= (valid!3934 (v!47686 (underlying!10070 thiss!42052))) (valid!3936 (v!47685 (underlying!10069 (v!47686 (underlying!10070 thiss!42052))))))))

(declare-fun bs!1149080 () Bool)

(assert (= bs!1149080 d!1523957))

(declare-fun m!5738774 () Bool)

(assert (=> bs!1149080 m!5738774))

(assert (=> b!4767389 d!1523957))

(declare-fun bs!1149081 () Bool)

(declare-fun b!4767569 () Bool)

(assert (= bs!1149081 (and b!4767569 d!1523947)))

(declare-fun lambda!224518 () Int)

(assert (=> bs!1149081 (= lambda!224518 lambda!224515)))

(declare-fun bs!1149082 () Bool)

(assert (= bs!1149082 (and b!4767569 b!4767385)))

(assert (=> bs!1149082 (= lambda!224518 lambda!224486)))

(declare-fun bs!1149083 () Bool)

(assert (= bs!1149083 (and b!4767569 b!4767416)))

(assert (=> bs!1149083 (= lambda!224518 lambda!224492)))

(declare-fun bs!1149084 () Bool)

(assert (= bs!1149084 (and b!4767569 d!1523905)))

(assert (=> bs!1149084 (= lambda!224518 lambda!224489)))

(declare-fun bs!1149085 () Bool)

(assert (= bs!1149085 (and b!4767569 d!1523911)))

(assert (=> bs!1149085 (= lambda!224518 lambda!224512)))

(declare-fun bs!1149086 () Bool)

(assert (= bs!1149086 (and b!4767569 d!1523909)))

(assert (=> bs!1149086 (= lambda!224518 lambda!224499)))

(declare-fun b!4767565 () Bool)

(declare-fun e!2975827 () Bool)

(declare-fun call!334242 () Bool)

(assert (=> b!4767565 (= e!2975827 call!334242)))

(declare-fun b!4767566 () Bool)

(assert (=> b!4767566 false))

(declare-fun lt!1930407 () Unit!138271)

(declare-fun lt!1930404 () Unit!138271)

(assert (=> b!4767566 (= lt!1930407 lt!1930404)))

(declare-fun lt!1930421 () ListLongMap!4695)

(assert (=> b!4767566 (contains!16847 (extractMap!2148 (toList!6297 lt!1930421)) key!1776)))

(declare-fun lemmaInLongMapThenInGenericMap!202 (ListLongMap!4695 K!14969 Hashable!6592) Unit!138271)

(assert (=> b!4767566 (= lt!1930404 (lemmaInLongMapThenInGenericMap!202 lt!1930421 key!1776 (hashF!12447 thiss!42052)))))

(declare-fun call!334244 () ListLongMap!4695)

(assert (=> b!4767566 (= lt!1930421 call!334244)))

(declare-fun e!2975828 () Unit!138271)

(declare-fun Unit!138276 () Unit!138271)

(assert (=> b!4767566 (= e!2975828 Unit!138276)))

(declare-fun b!4767567 () Bool)

(declare-fun Unit!138277 () Unit!138271)

(assert (=> b!4767567 (= e!2975828 Unit!138277)))

(declare-fun b!4767568 () Bool)

(declare-fun e!2975826 () Unit!138271)

(declare-fun Unit!138278 () Unit!138271)

(assert (=> b!4767568 (= e!2975826 Unit!138278)))

(declare-fun e!2975832 () Unit!138271)

(declare-fun lt!1930410 () (_ BitVec 64))

(assert (=> b!4767569 (= e!2975832 (forallContained!3865 (toList!6297 (map!11995 (v!47686 (underlying!10070 thiss!42052)))) lambda!224518 (tuple2!55549 lt!1930410 (apply!12634 (v!47686 (underlying!10070 thiss!42052)) lt!1930410))))))

(declare-fun c!813248 () Bool)

(assert (=> b!4767569 (= c!813248 (not (contains!16845 (toList!6297 (map!11995 (v!47686 (underlying!10070 thiss!42052)))) (tuple2!55549 lt!1930410 (apply!12634 (v!47686 (underlying!10070 thiss!42052)) lt!1930410)))))))

(declare-fun lt!1930414 () Unit!138271)

(assert (=> b!4767569 (= lt!1930414 e!2975826)))

(declare-fun e!2975830 () Bool)

(declare-fun b!4767570 () Bool)

(assert (=> b!4767570 (= e!2975830 (isDefined!9846 (getPair!648 (apply!12634 (v!47686 (underlying!10070 thiss!42052)) lt!1930410) key!1776)))))

(declare-fun bm!334235 () Bool)

(assert (=> bm!334235 (= call!334244 (map!11995 (v!47686 (underlying!10070 thiss!42052))))))

(declare-fun c!813246 () Bool)

(declare-fun bm!334236 () Bool)

(declare-fun lt!1930411 () ListLongMap!4695)

(declare-fun call!334245 () List!53618)

(declare-fun call!334243 () (_ BitVec 64))

(assert (=> bm!334236 (= call!334245 (apply!12633 (ite c!813246 lt!1930411 call!334244) call!334243))))

(declare-fun b!4767571 () Bool)

(declare-fun e!2975831 () Bool)

(assert (=> b!4767571 (= e!2975831 call!334242)))

(declare-fun bm!334237 () Bool)

(declare-fun call!334241 () Option!12686)

(assert (=> bm!334237 (= call!334241 (getPair!648 call!334245 key!1776))))

(declare-fun d!1523959 () Bool)

(declare-fun lt!1930402 () Bool)

(assert (=> d!1523959 (= lt!1930402 (contains!16847 (map!11994 thiss!42052) key!1776))))

(assert (=> d!1523959 (= lt!1930402 e!2975830)))

(declare-fun res!2022044 () Bool)

(assert (=> d!1523959 (=> (not res!2022044) (not e!2975830))))

(assert (=> d!1523959 (= res!2022044 (contains!16849 (v!47686 (underlying!10070 thiss!42052)) lt!1930410))))

(declare-fun lt!1930409 () Unit!138271)

(declare-fun e!2975829 () Unit!138271)

(assert (=> d!1523959 (= lt!1930409 e!2975829)))

(assert (=> d!1523959 (= c!813246 (contains!16847 (extractMap!2148 (toList!6297 (map!11995 (v!47686 (underlying!10070 thiss!42052))))) key!1776))))

(declare-fun lt!1930415 () Unit!138271)

(assert (=> d!1523959 (= lt!1930415 e!2975832)))

(declare-fun c!813247 () Bool)

(assert (=> d!1523959 (= c!813247 (contains!16849 (v!47686 (underlying!10070 thiss!42052)) lt!1930410))))

(assert (=> d!1523959 (= lt!1930410 (hash!4573 (hashF!12447 thiss!42052) key!1776))))

(assert (=> d!1523959 (valid!3935 thiss!42052)))

(assert (=> d!1523959 (= (contains!16844 thiss!42052 key!1776) lt!1930402)))

(declare-fun b!4767564 () Bool)

(assert (=> b!4767564 (= e!2975829 e!2975828)))

(declare-fun res!2022045 () Bool)

(declare-fun call!334240 () Bool)

(assert (=> b!4767564 (= res!2022045 call!334240)))

(assert (=> b!4767564 (=> (not res!2022045) (not e!2975827))))

(declare-fun c!813245 () Bool)

(assert (=> b!4767564 (= c!813245 e!2975827)))

(declare-fun bm!334238 () Bool)

(assert (=> bm!334238 (= call!334243 (hash!4573 (hashF!12447 thiss!42052) key!1776))))

(declare-fun b!4767572 () Bool)

(declare-fun lt!1930413 () Unit!138271)

(assert (=> b!4767572 (= e!2975829 lt!1930413)))

(assert (=> b!4767572 (= lt!1930411 call!334244)))

(declare-fun lemmaInGenericMapThenInLongMap!202 (ListLongMap!4695 K!14969 Hashable!6592) Unit!138271)

(assert (=> b!4767572 (= lt!1930413 (lemmaInGenericMapThenInLongMap!202 lt!1930411 key!1776 (hashF!12447 thiss!42052)))))

(declare-fun res!2022046 () Bool)

(assert (=> b!4767572 (= res!2022046 call!334240)))

(assert (=> b!4767572 (=> (not res!2022046) (not e!2975831))))

(assert (=> b!4767572 e!2975831))

(declare-fun bm!334239 () Bool)

(assert (=> bm!334239 (= call!334242 (isDefined!9846 call!334241))))

(declare-fun b!4767573 () Bool)

(declare-fun Unit!138279 () Unit!138271)

(assert (=> b!4767573 (= e!2975832 Unit!138279)))

(declare-fun b!4767574 () Bool)

(assert (=> b!4767574 false))

(declare-fun lt!1930417 () Unit!138271)

(declare-fun lt!1930418 () Unit!138271)

(assert (=> b!4767574 (= lt!1930417 lt!1930418)))

(declare-fun lt!1930416 () List!53619)

(declare-fun lt!1930408 () List!53618)

(assert (=> b!4767574 (contains!16845 lt!1930416 (tuple2!55549 lt!1930410 lt!1930408))))

(assert (=> b!4767574 (= lt!1930418 (lemmaGetValueByKeyImpliesContainsTuple!934 lt!1930416 lt!1930410 lt!1930408))))

(assert (=> b!4767574 (= lt!1930408 (apply!12634 (v!47686 (underlying!10070 thiss!42052)) lt!1930410))))

(assert (=> b!4767574 (= lt!1930416 (toList!6297 (map!11995 (v!47686 (underlying!10070 thiss!42052)))))))

(declare-fun lt!1930419 () Unit!138271)

(declare-fun lt!1930403 () Unit!138271)

(assert (=> b!4767574 (= lt!1930419 lt!1930403)))

(declare-fun lt!1930412 () List!53619)

(assert (=> b!4767574 (isDefined!9845 (getValueByKey!2187 lt!1930412 lt!1930410))))

(assert (=> b!4767574 (= lt!1930403 (lemmaContainsKeyImpliesGetValueByKeyDefined!1991 lt!1930412 lt!1930410))))

(assert (=> b!4767574 (= lt!1930412 (toList!6297 (map!11995 (v!47686 (underlying!10070 thiss!42052)))))))

(declare-fun lt!1930420 () Unit!138271)

(declare-fun lt!1930405 () Unit!138271)

(assert (=> b!4767574 (= lt!1930420 lt!1930405)))

(declare-fun lt!1930406 () List!53619)

(assert (=> b!4767574 (containsKey!3667 lt!1930406 lt!1930410)))

(declare-fun lemmaGetValueByKeyIsDefinedImpliesContainsKey!203 (List!53619 (_ BitVec 64)) Unit!138271)

(assert (=> b!4767574 (= lt!1930405 (lemmaGetValueByKeyIsDefinedImpliesContainsKey!203 lt!1930406 lt!1930410))))

(assert (=> b!4767574 (= lt!1930406 (toList!6297 (map!11995 (v!47686 (underlying!10070 thiss!42052)))))))

(declare-fun Unit!138280 () Unit!138271)

(assert (=> b!4767574 (= e!2975826 Unit!138280)))

(declare-fun bm!334240 () Bool)

(assert (=> bm!334240 (= call!334240 (contains!16846 (ite c!813246 lt!1930411 call!334244) call!334243))))

(assert (= (and d!1523959 c!813247) b!4767569))

(assert (= (and d!1523959 (not c!813247)) b!4767573))

(assert (= (and b!4767569 c!813248) b!4767574))

(assert (= (and b!4767569 (not c!813248)) b!4767568))

(assert (= (and d!1523959 c!813246) b!4767572))

(assert (= (and d!1523959 (not c!813246)) b!4767564))

(assert (= (and b!4767572 res!2022046) b!4767571))

(assert (= (and b!4767564 res!2022045) b!4767565))

(assert (= (and b!4767564 c!813245) b!4767566))

(assert (= (and b!4767564 (not c!813245)) b!4767567))

(assert (= (or b!4767572 b!4767564 b!4767565 b!4767566) bm!334235))

(assert (= (or b!4767572 b!4767571 b!4767564 b!4767565) bm!334238))

(assert (= (or b!4767571 b!4767565) bm!334236))

(assert (= (or b!4767572 b!4767564) bm!334240))

(assert (= (or b!4767571 b!4767565) bm!334237))

(assert (= (or b!4767571 b!4767565) bm!334239))

(assert (= (and d!1523959 res!2022044) b!4767570))

(declare-fun m!5738776 () Bool)

(assert (=> bm!334236 m!5738776))

(declare-fun m!5738778 () Bool)

(assert (=> b!4767574 m!5738778))

(declare-fun m!5738780 () Bool)

(assert (=> b!4767574 m!5738780))

(assert (=> b!4767574 m!5738608))

(declare-fun m!5738782 () Bool)

(assert (=> b!4767574 m!5738782))

(declare-fun m!5738784 () Bool)

(assert (=> b!4767574 m!5738784))

(declare-fun m!5738786 () Bool)

(assert (=> b!4767574 m!5738786))

(assert (=> b!4767574 m!5738786))

(declare-fun m!5738788 () Bool)

(assert (=> b!4767574 m!5738788))

(declare-fun m!5738790 () Bool)

(assert (=> b!4767574 m!5738790))

(declare-fun m!5738792 () Bool)

(assert (=> b!4767574 m!5738792))

(assert (=> bm!334238 m!5738590))

(assert (=> b!4767569 m!5738608))

(assert (=> b!4767569 m!5738778))

(declare-fun m!5738794 () Bool)

(assert (=> b!4767569 m!5738794))

(declare-fun m!5738796 () Bool)

(assert (=> b!4767569 m!5738796))

(assert (=> b!4767570 m!5738778))

(assert (=> b!4767570 m!5738778))

(declare-fun m!5738798 () Bool)

(assert (=> b!4767570 m!5738798))

(assert (=> b!4767570 m!5738798))

(declare-fun m!5738800 () Bool)

(assert (=> b!4767570 m!5738800))

(declare-fun m!5738802 () Bool)

(assert (=> b!4767572 m!5738802))

(declare-fun m!5738804 () Bool)

(assert (=> bm!334240 m!5738804))

(assert (=> bm!334235 m!5738608))

(declare-fun m!5738806 () Bool)

(assert (=> bm!334239 m!5738806))

(declare-fun m!5738808 () Bool)

(assert (=> b!4767566 m!5738808))

(assert (=> b!4767566 m!5738808))

(declare-fun m!5738810 () Bool)

(assert (=> b!4767566 m!5738810))

(declare-fun m!5738812 () Bool)

(assert (=> b!4767566 m!5738812))

(declare-fun m!5738814 () Bool)

(assert (=> d!1523959 m!5738814))

(assert (=> d!1523959 m!5738590))

(assert (=> d!1523959 m!5738608))

(assert (=> d!1523959 m!5738584))

(declare-fun m!5738816 () Bool)

(assert (=> d!1523959 m!5738816))

(assert (=> d!1523959 m!5738684))

(assert (=> d!1523959 m!5738684))

(declare-fun m!5738818 () Bool)

(assert (=> d!1523959 m!5738818))

(assert (=> d!1523959 m!5738584))

(assert (=> d!1523959 m!5738560))

(declare-fun m!5738820 () Bool)

(assert (=> bm!334237 m!5738820))

(assert (=> b!4767380 d!1523959))

(declare-fun d!1523961 () Bool)

(assert (=> d!1523961 (= (array_inv!5793 (_keys!5273 (v!47685 (underlying!10069 (v!47686 (underlying!10070 thiss!42052)))))) (bvsge (size!36277 (_keys!5273 (v!47685 (underlying!10069 (v!47686 (underlying!10070 thiss!42052)))))) #b00000000000000000000000000000000))))

(assert (=> b!4767388 d!1523961))

(declare-fun d!1523963 () Bool)

(assert (=> d!1523963 (= (array_inv!5794 (_values!5244 (v!47685 (underlying!10069 (v!47686 (underlying!10070 thiss!42052)))))) (bvsge (size!36278 (_values!5244 (v!47685 (underlying!10069 (v!47686 (underlying!10070 thiss!42052)))))) #b00000000000000000000000000000000))))

(assert (=> b!4767388 d!1523963))

(declare-fun tp_is_empty!32459 () Bool)

(declare-fun e!2975835 () Bool)

(declare-fun tp!1355626 () Bool)

(declare-fun b!4767579 () Bool)

(assert (=> b!4767579 (= e!2975835 (and tp_is_empty!32457 tp_is_empty!32459 tp!1355626))))

(assert (=> b!4767393 (= tp!1355622 e!2975835)))

(assert (= (and b!4767393 ((_ is Cons!53494) mapDefault!21876)) b!4767579))

(declare-fun mapIsEmpty!21879 () Bool)

(declare-fun mapRes!21879 () Bool)

(assert (=> mapIsEmpty!21879 mapRes!21879))

(declare-fun e!2975841 () Bool)

(declare-fun tp!1355633 () Bool)

(declare-fun b!4767586 () Bool)

(assert (=> b!4767586 (= e!2975841 (and tp_is_empty!32457 tp_is_empty!32459 tp!1355633))))

(declare-fun condMapEmpty!21879 () Bool)

(declare-fun mapDefault!21879 () List!53618)

(assert (=> mapNonEmpty!21876 (= condMapEmpty!21879 (= mapRest!21876 ((as const (Array (_ BitVec 32) List!53618)) mapDefault!21879)))))

(declare-fun e!2975840 () Bool)

(assert (=> mapNonEmpty!21876 (= tp!1355617 (and e!2975840 mapRes!21879))))

(declare-fun tp!1355634 () Bool)

(declare-fun b!4767587 () Bool)

(assert (=> b!4767587 (= e!2975840 (and tp_is_empty!32457 tp_is_empty!32459 tp!1355634))))

(declare-fun mapNonEmpty!21879 () Bool)

(declare-fun tp!1355635 () Bool)

(assert (=> mapNonEmpty!21879 (= mapRes!21879 (and tp!1355635 e!2975841))))

(declare-fun mapRest!21879 () (Array (_ BitVec 32) List!53618))

(declare-fun mapValue!21879 () List!53618)

(declare-fun mapKey!21879 () (_ BitVec 32))

(assert (=> mapNonEmpty!21879 (= mapRest!21876 (store mapRest!21879 mapKey!21879 mapValue!21879))))

(assert (= (and mapNonEmpty!21876 condMapEmpty!21879) mapIsEmpty!21879))

(assert (= (and mapNonEmpty!21876 (not condMapEmpty!21879)) mapNonEmpty!21879))

(assert (= (and mapNonEmpty!21879 ((_ is Cons!53494) mapValue!21879)) b!4767586))

(assert (= (and mapNonEmpty!21876 ((_ is Cons!53494) mapDefault!21879)) b!4767587))

(declare-fun m!5738822 () Bool)

(assert (=> mapNonEmpty!21879 m!5738822))

(declare-fun b!4767588 () Bool)

(declare-fun tp!1355636 () Bool)

(declare-fun e!2975842 () Bool)

(assert (=> b!4767588 (= e!2975842 (and tp_is_empty!32457 tp_is_empty!32459 tp!1355636))))

(assert (=> mapNonEmpty!21876 (= tp!1355618 e!2975842)))

(assert (= (and mapNonEmpty!21876 ((_ is Cons!53494) mapValue!21876)) b!4767588))

(declare-fun tp!1355637 () Bool)

(declare-fun b!4767589 () Bool)

(declare-fun e!2975843 () Bool)

(assert (=> b!4767589 (= e!2975843 (and tp_is_empty!32457 tp_is_empty!32459 tp!1355637))))

(assert (=> b!4767388 (= tp!1355623 e!2975843)))

(assert (= (and b!4767388 ((_ is Cons!53494) (zeroValue!5219 (v!47685 (underlying!10069 (v!47686 (underlying!10070 thiss!42052))))))) b!4767589))

(declare-fun tp!1355638 () Bool)

(declare-fun b!4767590 () Bool)

(declare-fun e!2975844 () Bool)

(assert (=> b!4767590 (= e!2975844 (and tp_is_empty!32457 tp_is_empty!32459 tp!1355638))))

(assert (=> b!4767388 (= tp!1355619 e!2975844)))

(assert (= (and b!4767388 ((_ is Cons!53494) (minValue!5219 (v!47685 (underlying!10069 (v!47686 (underlying!10070 thiss!42052))))))) b!4767590))

(declare-fun b_lambda!184421 () Bool)

(assert (= b_lambda!184417 (or b!4767385 b_lambda!184421)))

(declare-fun bs!1149087 () Bool)

(declare-fun d!1523965 () Bool)

(assert (= bs!1149087 (and d!1523965 b!4767385)))

(assert (=> bs!1149087 (= (dynLambda!21952 lambda!224486 lt!1930228) (noDuplicateKeys!2254 (_2!31068 lt!1930228)))))

(declare-fun m!5738824 () Bool)

(assert (=> bs!1149087 m!5738824))

(assert (=> d!1523919 d!1523965))

(declare-fun b_lambda!184423 () Bool)

(assert (= b_lambda!184415 (or b!4767385 b_lambda!184423)))

(declare-fun bs!1149088 () Bool)

(declare-fun d!1523967 () Bool)

(assert (= bs!1149088 (and d!1523967 b!4767385)))

(assert (=> bs!1149088 (= (dynLambda!21952 lambda!224486 lt!1930227) (noDuplicateKeys!2254 (_2!31068 lt!1930227)))))

(declare-fun m!5738826 () Bool)

(assert (=> bs!1149088 m!5738826))

(assert (=> d!1523917 d!1523967))

(declare-fun b_lambda!184425 () Bool)

(assert (= b_lambda!184419 (or (and b!4767388 b_free!129667) b_lambda!184425)))

(check-sat (not b!4767579) (not b!4767520) (not b!4767426) (not d!1523927) (not d!1523925) (not bm!334240) (not d!1523951) (not b!4767515) (not b!4767523) (not d!1523941) (not b!4767502) (not b!4767570) (not bm!334237) (not d!1523959) (not d!1523939) (not b!4767459) (not d!1523915) (not b!4767462) (not b!4767588) (not d!1523955) (not d!1523923) (not b!4767463) (not b_lambda!184425) (not b!4767513) (not d!1523947) (not b!4767481) (not b!4767587) tp_is_empty!32457 (not b!4767429) (not d!1523913) (not d!1523957) (not b!4767590) (not b!4767486) (not bm!334238) (not d!1523909) (not d!1523907) (not b!4767586) tp_is_empty!32459 (not b_next!130457) (not d!1523931) (not b!4767505) (not bm!334239) (not b_next!130459) (not b!4767404) (not b!4767569) b_and!341387 (not b!4767516) (not b!4767450) (not d!1523921) (not d!1523905) (not b!4767537) (not b!4767410) (not d!1523943) (not b!4767541) b_and!341385 (not b!4767456) (not bs!1149088) (not b_lambda!184421) (not b!4767526) (not d!1523917) (not b!4767483) (not b!4767455) (not b!4767454) (not b!4767416) (not d!1523945) (not d!1523949) (not b!4767457) (not b!4767451) (not b!4767572) (not d!1523919) (not b!4767589) (not b!4767417) (not tb!257477) (not b!4767521) (not bs!1149087) (not b_lambda!184423) (not b!4767566) (not b!4767428) (not b!4767452) (not bm!334236) (not b!4767427) (not b!4767488) (not bm!334235) (not b!4767518) (not d!1523911) (not b!4767458) (not mapNonEmpty!21879) (not b!4767493) (not b!4767574) (not d!1523929) (not b!4767453) (not b!4767485) (not b!4767500))
(check-sat b_and!341385 b_and!341387 (not b_next!130459) (not b_next!130457))
