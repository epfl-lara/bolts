; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!487182 () Bool)

(assert start!487182)

(declare-fun b!4763682 () Bool)

(declare-fun b_free!129457 () Bool)

(declare-fun b_next!130247 () Bool)

(assert (=> b!4763682 (= b_free!129457 (not b_next!130247))))

(declare-fun tp!1354323 () Bool)

(declare-fun b_and!341133 () Bool)

(assert (=> b!4763682 (= tp!1354323 b_and!341133)))

(declare-fun b!4763686 () Bool)

(declare-fun b_free!129459 () Bool)

(declare-fun b_next!130249 () Bool)

(assert (=> b!4763686 (= b_free!129459 (not b_next!130249))))

(declare-fun tp!1354324 () Bool)

(declare-fun b_and!341135 () Bool)

(assert (=> b!4763686 (= tp!1354324 b_and!341135)))

(declare-fun b_free!129461 () Bool)

(declare-fun b_next!130251 () Bool)

(assert (=> start!487182 (= b_free!129461 (not b_next!130251))))

(declare-fun tp!1354321 () Bool)

(declare-fun b_and!341137 () Bool)

(assert (=> start!487182 (= tp!1354321 b_and!341137)))

(declare-fun b!4763677 () Bool)

(declare-fun res!2020474 () Bool)

(declare-fun e!2972965 () Bool)

(assert (=> b!4763677 (=> (not res!2020474) (not e!2972965))))

(declare-datatypes ((array!17808 0))(
  ( (array!17809 (arr!7943 (Array (_ BitVec 32) (_ BitVec 64))) (size!36173 (_ BitVec 32))) )
))
(declare-datatypes ((K!14839 0))(
  ( (K!14840 (val!20177 Int)) )
))
(declare-datatypes ((V!15085 0))(
  ( (V!15086 (val!20178 Int)) )
))
(declare-datatypes ((tuple2!55366 0))(
  ( (tuple2!55367 (_1!30977 K!14839) (_2!30977 V!15085)) )
))
(declare-datatypes ((List!53527 0))(
  ( (Nil!53403) (Cons!53403 (h!59815 tuple2!55366) (t!360923 List!53527)) )
))
(declare-datatypes ((array!17810 0))(
  ( (array!17811 (arr!7944 (Array (_ BitVec 32) List!53527)) (size!36174 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!9758 0))(
  ( (LongMapFixedSize!9759 (defaultEntry!5297 Int) (mask!14614 (_ BitVec 32)) (extraKeys!5154 (_ BitVec 32)) (zeroValue!5167 List!53527) (minValue!5167 List!53527) (_size!9783 (_ BitVec 32)) (_keys!5221 array!17808) (_values!5192 array!17810) (_vacant!4944 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!19281 0))(
  ( (Cell!19282 (v!47475 LongMapFixedSize!9758)) )
))
(declare-datatypes ((MutLongMap!4879 0))(
  ( (LongMap!4879 (underlying!9965 Cell!19281)) (MutLongMapExt!4878 (__x!32385 Int)) )
))
(declare-datatypes ((Cell!19283 0))(
  ( (Cell!19284 (v!47476 MutLongMap!4879)) )
))
(declare-datatypes ((Hashable!6540 0))(
  ( (HashableExt!6539 (__x!32386 Int)) )
))
(declare-datatypes ((MutableMap!4763 0))(
  ( (MutableMapExt!4762 (__x!32387 Int)) (HashMap!4763 (underlying!9966 Cell!19283) (hashF!12365 Hashable!6540) (_size!9784 (_ BitVec 32)) (defaultValue!4934 Int)) )
))
(declare-fun hm!63 () MutableMap!4763)

(declare-fun valid!3874 (MutableMap!4763) Bool)

(assert (=> b!4763677 (= res!2020474 (valid!3874 hm!63))))

(declare-fun b!4763678 () Bool)

(declare-fun e!2972971 () Bool)

(assert (=> b!4763678 (= e!2972965 e!2972971)))

(declare-fun res!2020476 () Bool)

(assert (=> b!4763678 (=> (not res!2020476) (not e!2972971))))

(declare-datatypes ((ListMap!5745 0))(
  ( (ListMap!5746 (toList!6235 List!53527)) )
))
(declare-fun lt!1926831 () ListMap!5745)

(declare-fun p!6026 () Int)

(declare-fun forall!11857 (List!53527 Int) Bool)

(assert (=> b!4763678 (= res!2020476 (forall!11857 (toList!6235 lt!1926831) p!6026))))

(declare-fun map!11905 (MutableMap!4763) ListMap!5745)

(assert (=> b!4763678 (= lt!1926831 (map!11905 hm!63))))

(declare-fun b!4763679 () Bool)

(declare-fun res!2020475 () Bool)

(assert (=> b!4763679 (=> (not res!2020475) (not e!2972971))))

(declare-fun k0!1662 () K!14839)

(declare-fun contains!16712 (MutableMap!4763 K!14839) Bool)

(assert (=> b!4763679 (= res!2020475 (contains!16712 hm!63 k0!1662))))

(declare-fun b!4763680 () Bool)

(declare-fun e!2972970 () Bool)

(declare-fun e!2972966 () Bool)

(declare-fun lt!1926830 () MutLongMap!4879)

(get-info :version)

(assert (=> b!4763680 (= e!2972970 (and e!2972966 ((_ is LongMap!4879) lt!1926830)))))

(assert (=> b!4763680 (= lt!1926830 (v!47476 (underlying!9966 hm!63)))))

(declare-fun b!4763681 () Bool)

(declare-fun e!2972968 () Bool)

(assert (=> b!4763681 (= e!2972966 e!2972968)))

(declare-fun e!2972969 () Bool)

(declare-fun tp!1354325 () Bool)

(declare-fun tp!1354322 () Bool)

(declare-fun e!2972967 () Bool)

(declare-fun array_inv!5715 (array!17808) Bool)

(declare-fun array_inv!5716 (array!17810) Bool)

(assert (=> b!4763682 (= e!2972967 (and tp!1354323 tp!1354322 tp!1354325 (array_inv!5715 (_keys!5221 (v!47475 (underlying!9965 (v!47476 (underlying!9966 hm!63)))))) (array_inv!5716 (_values!5192 (v!47475 (underlying!9965 (v!47476 (underlying!9966 hm!63)))))) e!2972969))))

(declare-fun mapNonEmpty!21680 () Bool)

(declare-fun mapRes!21680 () Bool)

(declare-fun tp!1354320 () Bool)

(declare-fun tp!1354319 () Bool)

(assert (=> mapNonEmpty!21680 (= mapRes!21680 (and tp!1354320 tp!1354319))))

(declare-fun mapValue!21680 () List!53527)

(declare-fun mapKey!21680 () (_ BitVec 32))

(declare-fun mapRest!21680 () (Array (_ BitVec 32) List!53527))

(assert (=> mapNonEmpty!21680 (= (arr!7944 (_values!5192 (v!47475 (underlying!9965 (v!47476 (underlying!9966 hm!63)))))) (store mapRest!21680 mapKey!21680 mapValue!21680))))

(declare-fun res!2020477 () Bool)

(assert (=> start!487182 (=> (not res!2020477) (not e!2972965))))

(assert (=> start!487182 (= res!2020477 ((_ is HashMap!4763) hm!63))))

(assert (=> start!487182 e!2972965))

(declare-fun e!2972973 () Bool)

(assert (=> start!487182 e!2972973))

(assert (=> start!487182 tp!1354321))

(declare-fun tp_is_empty!32327 () Bool)

(assert (=> start!487182 tp_is_empty!32327))

(declare-fun b!4763683 () Bool)

(assert (=> b!4763683 (= e!2972968 e!2972967)))

(declare-fun b!4763684 () Bool)

(declare-fun tp!1354326 () Bool)

(assert (=> b!4763684 (= e!2972969 (and tp!1354326 mapRes!21680))))

(declare-fun condMapEmpty!21680 () Bool)

(declare-fun mapDefault!21680 () List!53527)

(assert (=> b!4763684 (= condMapEmpty!21680 (= (arr!7944 (_values!5192 (v!47475 (underlying!9965 (v!47476 (underlying!9966 hm!63)))))) ((as const (Array (_ BitVec 32) List!53527)) mapDefault!21680)))))

(declare-fun mapIsEmpty!21680 () Bool)

(assert (=> mapIsEmpty!21680 mapRes!21680))

(declare-fun b!4763685 () Bool)

(declare-fun lt!1926829 () tuple2!55366)

(declare-fun dynLambda!21931 (Int tuple2!55366) Bool)

(assert (=> b!4763685 (= e!2972971 (not (dynLambda!21931 p!6026 lt!1926829)))))

(declare-datatypes ((Unit!138062 0))(
  ( (Unit!138063) )
))
(declare-fun lt!1926833 () Unit!138062)

(declare-fun forallContained!3839 (List!53527 Int tuple2!55366) Unit!138062)

(assert (=> b!4763685 (= lt!1926833 (forallContained!3839 (toList!6235 lt!1926831) p!6026 lt!1926829))))

(declare-fun contains!16713 (List!53527 tuple2!55366) Bool)

(assert (=> b!4763685 (contains!16713 (toList!6235 lt!1926831) lt!1926829)))

(declare-fun lt!1926828 () V!15085)

(assert (=> b!4763685 (= lt!1926829 (tuple2!55367 k0!1662 lt!1926828))))

(declare-fun lt!1926832 () Unit!138062)

(declare-fun lemmaGetValueByKeyImpliesContainsTuple!907 (List!53527 K!14839 V!15085) Unit!138062)

(assert (=> b!4763685 (= lt!1926832 (lemmaGetValueByKeyImpliesContainsTuple!907 (toList!6235 lt!1926831) k0!1662 lt!1926828))))

(declare-fun apply!12563 (MutableMap!4763 K!14839) V!15085)

(assert (=> b!4763685 (= lt!1926828 (apply!12563 hm!63 k0!1662))))

(assert (=> b!4763686 (= e!2972973 (and e!2972970 tp!1354324))))

(assert (= (and start!487182 res!2020477) b!4763677))

(assert (= (and b!4763677 res!2020474) b!4763678))

(assert (= (and b!4763678 res!2020476) b!4763679))

(assert (= (and b!4763679 res!2020475) b!4763685))

(assert (= (and b!4763684 condMapEmpty!21680) mapIsEmpty!21680))

(assert (= (and b!4763684 (not condMapEmpty!21680)) mapNonEmpty!21680))

(assert (= b!4763682 b!4763684))

(assert (= b!4763683 b!4763682))

(assert (= b!4763681 b!4763683))

(assert (= (and b!4763680 ((_ is LongMap!4879) (v!47476 (underlying!9966 hm!63)))) b!4763681))

(assert (= b!4763686 b!4763680))

(assert (= (and start!487182 ((_ is HashMap!4763) hm!63)) b!4763686))

(declare-fun b_lambda!184243 () Bool)

(assert (=> (not b_lambda!184243) (not b!4763685)))

(declare-fun t!360922 () Bool)

(declare-fun tb!257447 () Bool)

(assert (=> (and start!487182 (= p!6026 p!6026) t!360922) tb!257447))

(declare-fun result!319032 () Bool)

(assert (=> tb!257447 (= result!319032 true)))

(assert (=> b!4763685 t!360922))

(declare-fun b_and!341139 () Bool)

(assert (= b_and!341137 (and (=> t!360922 result!319032) b_and!341139)))

(declare-fun m!5734290 () Bool)

(assert (=> b!4763678 m!5734290))

(declare-fun m!5734292 () Bool)

(assert (=> b!4763678 m!5734292))

(declare-fun m!5734294 () Bool)

(assert (=> b!4763682 m!5734294))

(declare-fun m!5734296 () Bool)

(assert (=> b!4763682 m!5734296))

(declare-fun m!5734298 () Bool)

(assert (=> b!4763679 m!5734298))

(declare-fun m!5734300 () Bool)

(assert (=> b!4763685 m!5734300))

(declare-fun m!5734302 () Bool)

(assert (=> b!4763685 m!5734302))

(declare-fun m!5734304 () Bool)

(assert (=> b!4763685 m!5734304))

(declare-fun m!5734306 () Bool)

(assert (=> b!4763685 m!5734306))

(declare-fun m!5734308 () Bool)

(assert (=> b!4763685 m!5734308))

(declare-fun m!5734310 () Bool)

(assert (=> b!4763677 m!5734310))

(declare-fun m!5734312 () Bool)

(assert (=> mapNonEmpty!21680 m!5734312))

(check-sat (not mapNonEmpty!21680) (not b!4763677) (not b!4763682) (not b!4763679) (not b_next!130247) (not b!4763684) b_and!341139 b_and!341135 b_and!341133 (not b_lambda!184243) tp_is_empty!32327 (not b!4763685) (not b_next!130249) (not b_next!130251) (not b!4763678))
(check-sat b_and!341133 (not b_next!130249) (not b_next!130247) b_and!341139 b_and!341135 (not b_next!130251))
(get-model)

(declare-fun b_lambda!184245 () Bool)

(assert (= b_lambda!184243 (or (and start!487182 b_free!129461) b_lambda!184245)))

(check-sat (not mapNonEmpty!21680) (not b!4763677) (not b!4763679) (not b_next!130247) (not b!4763684) b_and!341139 b_and!341135 b_and!341133 tp_is_empty!32327 (not b_lambda!184245) (not b!4763682) (not b!4763685) (not b_next!130249) (not b_next!130251) (not b!4763678))
(check-sat b_and!341133 (not b_next!130249) (not b_next!130247) b_and!341139 b_and!341135 (not b_next!130251))
(get-model)

(declare-fun d!1523173 () Bool)

(declare-fun res!2020482 () Bool)

(declare-fun e!2972978 () Bool)

(assert (=> d!1523173 (=> res!2020482 e!2972978)))

(assert (=> d!1523173 (= res!2020482 ((_ is Nil!53403) (toList!6235 lt!1926831)))))

(assert (=> d!1523173 (= (forall!11857 (toList!6235 lt!1926831) p!6026) e!2972978)))

(declare-fun b!4763691 () Bool)

(declare-fun e!2972979 () Bool)

(assert (=> b!4763691 (= e!2972978 e!2972979)))

(declare-fun res!2020483 () Bool)

(assert (=> b!4763691 (=> (not res!2020483) (not e!2972979))))

(assert (=> b!4763691 (= res!2020483 (dynLambda!21931 p!6026 (h!59815 (toList!6235 lt!1926831))))))

(declare-fun b!4763692 () Bool)

(assert (=> b!4763692 (= e!2972979 (forall!11857 (t!360923 (toList!6235 lt!1926831)) p!6026))))

(assert (= (and d!1523173 (not res!2020482)) b!4763691))

(assert (= (and b!4763691 res!2020483) b!4763692))

(declare-fun b_lambda!184247 () Bool)

(assert (=> (not b_lambda!184247) (not b!4763691)))

(declare-fun t!360925 () Bool)

(declare-fun tb!257449 () Bool)

(assert (=> (and start!487182 (= p!6026 p!6026) t!360925) tb!257449))

(declare-fun result!319034 () Bool)

(assert (=> tb!257449 (= result!319034 true)))

(assert (=> b!4763691 t!360925))

(declare-fun b_and!341141 () Bool)

(assert (= b_and!341139 (and (=> t!360925 result!319034) b_and!341141)))

(declare-fun m!5734314 () Bool)

(assert (=> b!4763691 m!5734314))

(declare-fun m!5734316 () Bool)

(assert (=> b!4763692 m!5734316))

(assert (=> b!4763678 d!1523173))

(declare-fun d!1523175 () Bool)

(declare-fun lt!1926836 () ListMap!5745)

(declare-fun invariantList!1656 (List!53527) Bool)

(assert (=> d!1523175 (invariantList!1656 (toList!6235 lt!1926836))))

(declare-datatypes ((tuple2!55368 0))(
  ( (tuple2!55369 (_1!30978 (_ BitVec 64)) (_2!30978 List!53527)) )
))
(declare-datatypes ((List!53528 0))(
  ( (Nil!53404) (Cons!53404 (h!59816 tuple2!55368) (t!360928 List!53528)) )
))
(declare-fun extractMap!2125 (List!53528) ListMap!5745)

(declare-datatypes ((ListLongMap!4619 0))(
  ( (ListLongMap!4620 (toList!6236 List!53528)) )
))
(declare-fun map!11906 (MutLongMap!4879) ListLongMap!4619)

(assert (=> d!1523175 (= lt!1926836 (extractMap!2125 (toList!6236 (map!11906 (v!47476 (underlying!9966 hm!63))))))))

(assert (=> d!1523175 (valid!3874 hm!63)))

(assert (=> d!1523175 (= (map!11905 hm!63) lt!1926836)))

(declare-fun bs!1148689 () Bool)

(assert (= bs!1148689 d!1523175))

(declare-fun m!5734318 () Bool)

(assert (=> bs!1148689 m!5734318))

(declare-fun m!5734320 () Bool)

(assert (=> bs!1148689 m!5734320))

(declare-fun m!5734322 () Bool)

(assert (=> bs!1148689 m!5734322))

(assert (=> bs!1148689 m!5734310))

(assert (=> b!4763678 d!1523175))

(declare-fun b!4763715 () Bool)

(declare-fun e!2972995 () Bool)

(declare-fun call!333984 () Bool)

(assert (=> b!4763715 (= e!2972995 call!333984)))

(declare-fun d!1523177 () Bool)

(declare-fun lt!1926885 () Bool)

(declare-fun contains!16714 (ListMap!5745 K!14839) Bool)

(assert (=> d!1523177 (= lt!1926885 (contains!16714 (map!11905 hm!63) k0!1662))))

(declare-fun e!2972999 () Bool)

(assert (=> d!1523177 (= lt!1926885 e!2972999)))

(declare-fun res!2020491 () Bool)

(assert (=> d!1523177 (=> (not res!2020491) (not e!2972999))))

(declare-fun lt!1926893 () (_ BitVec 64))

(declare-fun contains!16715 (MutLongMap!4879 (_ BitVec 64)) Bool)

(assert (=> d!1523177 (= res!2020491 (contains!16715 (v!47476 (underlying!9966 hm!63)) lt!1926893))))

(declare-fun lt!1926886 () Unit!138062)

(declare-fun e!2972997 () Unit!138062)

(assert (=> d!1523177 (= lt!1926886 e!2972997)))

(declare-fun c!812680 () Bool)

(assert (=> d!1523177 (= c!812680 (contains!16714 (extractMap!2125 (toList!6236 (map!11906 (v!47476 (underlying!9966 hm!63))))) k0!1662))))

(declare-fun lt!1926894 () Unit!138062)

(declare-fun e!2972996 () Unit!138062)

(assert (=> d!1523177 (= lt!1926894 e!2972996)))

(declare-fun c!812682 () Bool)

(assert (=> d!1523177 (= c!812682 (contains!16715 (v!47476 (underlying!9966 hm!63)) lt!1926893))))

(declare-fun hash!4527 (Hashable!6540 K!14839) (_ BitVec 64))

(assert (=> d!1523177 (= lt!1926893 (hash!4527 (hashF!12365 hm!63) k0!1662))))

(assert (=> d!1523177 (valid!3874 hm!63)))

(assert (=> d!1523177 (= (contains!16712 hm!63 k0!1662) lt!1926885)))

(declare-fun b!4763716 () Bool)

(assert (=> b!4763716 false))

(declare-fun lt!1926884 () Unit!138062)

(declare-fun lt!1926895 () Unit!138062)

(assert (=> b!4763716 (= lt!1926884 lt!1926895)))

(declare-fun lt!1926881 () List!53528)

(declare-fun lt!1926879 () List!53527)

(declare-fun contains!16716 (List!53528 tuple2!55368) Bool)

(assert (=> b!4763716 (contains!16716 lt!1926881 (tuple2!55369 lt!1926893 lt!1926879))))

(declare-fun lemmaGetValueByKeyImpliesContainsTuple!908 (List!53528 (_ BitVec 64) List!53527) Unit!138062)

(assert (=> b!4763716 (= lt!1926895 (lemmaGetValueByKeyImpliesContainsTuple!908 lt!1926881 lt!1926893 lt!1926879))))

(declare-fun apply!12564 (MutLongMap!4879 (_ BitVec 64)) List!53527)

(assert (=> b!4763716 (= lt!1926879 (apply!12564 (v!47476 (underlying!9966 hm!63)) lt!1926893))))

(assert (=> b!4763716 (= lt!1926881 (toList!6236 (map!11906 (v!47476 (underlying!9966 hm!63)))))))

(declare-fun lt!1926883 () Unit!138062)

(declare-fun lt!1926882 () Unit!138062)

(assert (=> b!4763716 (= lt!1926883 lt!1926882)))

(declare-fun lt!1926892 () List!53528)

(declare-datatypes ((Option!12619 0))(
  ( (None!12618) (Some!12618 (v!47479 List!53527)) )
))
(declare-fun isDefined!9793 (Option!12619) Bool)

(declare-fun getValueByKey!2147 (List!53528 (_ BitVec 64)) Option!12619)

(assert (=> b!4763716 (isDefined!9793 (getValueByKey!2147 lt!1926892 lt!1926893))))

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!1962 (List!53528 (_ BitVec 64)) Unit!138062)

(assert (=> b!4763716 (= lt!1926882 (lemmaContainsKeyImpliesGetValueByKeyDefined!1962 lt!1926892 lt!1926893))))

(assert (=> b!4763716 (= lt!1926892 (toList!6236 (map!11906 (v!47476 (underlying!9966 hm!63)))))))

(declare-fun lt!1926890 () Unit!138062)

(declare-fun lt!1926880 () Unit!138062)

(assert (=> b!4763716 (= lt!1926890 lt!1926880)))

(declare-fun lt!1926887 () List!53528)

(declare-fun containsKey!3646 (List!53528 (_ BitVec 64)) Bool)

(assert (=> b!4763716 (containsKey!3646 lt!1926887 lt!1926893)))

(declare-fun lemmaGetValueByKeyIsDefinedImpliesContainsKey!190 (List!53528 (_ BitVec 64)) Unit!138062)

(assert (=> b!4763716 (= lt!1926880 (lemmaGetValueByKeyIsDefinedImpliesContainsKey!190 lt!1926887 lt!1926893))))

(assert (=> b!4763716 (= lt!1926887 (toList!6236 (map!11906 (v!47476 (underlying!9966 hm!63)))))))

(declare-fun e!2972998 () Unit!138062)

(declare-fun Unit!138064 () Unit!138062)

(assert (=> b!4763716 (= e!2972998 Unit!138064)))

(declare-fun b!4763717 () Bool)

(declare-fun Unit!138065 () Unit!138062)

(assert (=> b!4763717 (= e!2972998 Unit!138065)))

(declare-fun b!4763718 () Bool)

(declare-fun e!2973000 () Unit!138062)

(declare-fun Unit!138066 () Unit!138062)

(assert (=> b!4763718 (= e!2973000 Unit!138066)))

(declare-fun bm!333974 () Bool)

(declare-fun call!333983 () ListLongMap!4619)

(assert (=> bm!333974 (= call!333983 (map!11906 (v!47476 (underlying!9966 hm!63))))))

(declare-fun call!333980 () (_ BitVec 64))

(declare-fun bm!333975 () Bool)

(declare-fun call!333982 () List!53527)

(declare-fun lt!1926889 () ListLongMap!4619)

(declare-fun apply!12565 (ListLongMap!4619 (_ BitVec 64)) List!53527)

(assert (=> bm!333975 (= call!333982 (apply!12565 (ite c!812680 lt!1926889 call!333983) call!333980))))

(declare-fun bm!333976 () Bool)

(assert (=> bm!333976 (= call!333980 (hash!4527 (hashF!12365 hm!63) k0!1662))))

(declare-fun bm!333977 () Bool)

(declare-datatypes ((Option!12620 0))(
  ( (None!12619) (Some!12619 (v!47480 tuple2!55366)) )
))
(declare-fun call!333979 () Option!12620)

(declare-fun isDefined!9794 (Option!12620) Bool)

(assert (=> bm!333977 (= call!333984 (isDefined!9794 call!333979))))

(declare-fun b!4763719 () Bool)

(declare-fun lambda!224035 () Int)

(declare-fun forallContained!3840 (List!53528 Int tuple2!55368) Unit!138062)

(assert (=> b!4763719 (= e!2972996 (forallContained!3840 (toList!6236 (map!11906 (v!47476 (underlying!9966 hm!63)))) lambda!224035 (tuple2!55369 lt!1926893 (apply!12564 (v!47476 (underlying!9966 hm!63)) lt!1926893))))))

(declare-fun c!812681 () Bool)

(assert (=> b!4763719 (= c!812681 (not (contains!16716 (toList!6236 (map!11906 (v!47476 (underlying!9966 hm!63)))) (tuple2!55369 lt!1926893 (apply!12564 (v!47476 (underlying!9966 hm!63)) lt!1926893)))))))

(declare-fun lt!1926891 () Unit!138062)

(assert (=> b!4763719 (= lt!1926891 e!2972998)))

(declare-fun bm!333978 () Bool)

(declare-fun getPair!625 (List!53527 K!14839) Option!12620)

(assert (=> bm!333978 (= call!333979 (getPair!625 call!333982 k0!1662))))

(declare-fun bm!333979 () Bool)

(declare-fun call!333981 () Bool)

(declare-fun contains!16717 (ListLongMap!4619 (_ BitVec 64)) Bool)

(assert (=> bm!333979 (= call!333981 (contains!16717 (ite c!812680 lt!1926889 call!333983) call!333980))))

(declare-fun b!4763720 () Bool)

(assert (=> b!4763720 false))

(declare-fun lt!1926888 () Unit!138062)

(declare-fun lt!1926896 () Unit!138062)

(assert (=> b!4763720 (= lt!1926888 lt!1926896)))

(declare-fun lt!1926878 () ListLongMap!4619)

(assert (=> b!4763720 (contains!16714 (extractMap!2125 (toList!6236 lt!1926878)) k0!1662)))

(declare-fun lemmaInLongMapThenInGenericMap!189 (ListLongMap!4619 K!14839 Hashable!6540) Unit!138062)

(assert (=> b!4763720 (= lt!1926896 (lemmaInLongMapThenInGenericMap!189 lt!1926878 k0!1662 (hashF!12365 hm!63)))))

(assert (=> b!4763720 (= lt!1926878 call!333983)))

(declare-fun Unit!138067 () Unit!138062)

(assert (=> b!4763720 (= e!2973000 Unit!138067)))

(declare-fun b!4763721 () Bool)

(assert (=> b!4763721 (= e!2972997 e!2973000)))

(declare-fun res!2020492 () Bool)

(assert (=> b!4763721 (= res!2020492 call!333981)))

(declare-fun e!2972994 () Bool)

(assert (=> b!4763721 (=> (not res!2020492) (not e!2972994))))

(declare-fun c!812683 () Bool)

(assert (=> b!4763721 (= c!812683 e!2972994)))

(declare-fun b!4763722 () Bool)

(declare-fun Unit!138068 () Unit!138062)

(assert (=> b!4763722 (= e!2972996 Unit!138068)))

(declare-fun b!4763723 () Bool)

(declare-fun lt!1926877 () Unit!138062)

(assert (=> b!4763723 (= e!2972997 lt!1926877)))

(assert (=> b!4763723 (= lt!1926889 call!333983)))

(declare-fun lemmaInGenericMapThenInLongMap!189 (ListLongMap!4619 K!14839 Hashable!6540) Unit!138062)

(assert (=> b!4763723 (= lt!1926877 (lemmaInGenericMapThenInLongMap!189 lt!1926889 k0!1662 (hashF!12365 hm!63)))))

(declare-fun res!2020490 () Bool)

(assert (=> b!4763723 (= res!2020490 call!333981)))

(assert (=> b!4763723 (=> (not res!2020490) (not e!2972995))))

(assert (=> b!4763723 e!2972995))

(declare-fun b!4763724 () Bool)

(assert (=> b!4763724 (= e!2972999 (isDefined!9794 (getPair!625 (apply!12564 (v!47476 (underlying!9966 hm!63)) lt!1926893) k0!1662)))))

(declare-fun b!4763725 () Bool)

(assert (=> b!4763725 (= e!2972994 call!333984)))

(assert (= (and d!1523177 c!812682) b!4763719))

(assert (= (and d!1523177 (not c!812682)) b!4763722))

(assert (= (and b!4763719 c!812681) b!4763716))

(assert (= (and b!4763719 (not c!812681)) b!4763717))

(assert (= (and d!1523177 c!812680) b!4763723))

(assert (= (and d!1523177 (not c!812680)) b!4763721))

(assert (= (and b!4763723 res!2020490) b!4763715))

(assert (= (and b!4763721 res!2020492) b!4763725))

(assert (= (and b!4763721 c!812683) b!4763720))

(assert (= (and b!4763721 (not c!812683)) b!4763718))

(assert (= (or b!4763723 b!4763715 b!4763721 b!4763725) bm!333976))

(assert (= (or b!4763723 b!4763721 b!4763725 b!4763720) bm!333974))

(assert (= (or b!4763723 b!4763721) bm!333979))

(assert (= (or b!4763715 b!4763725) bm!333975))

(assert (= (or b!4763715 b!4763725) bm!333978))

(assert (= (or b!4763715 b!4763725) bm!333977))

(assert (= (and d!1523177 res!2020491) b!4763724))

(assert (=> d!1523177 m!5734322))

(declare-fun m!5734324 () Bool)

(assert (=> d!1523177 m!5734324))

(assert (=> d!1523177 m!5734292))

(assert (=> d!1523177 m!5734310))

(assert (=> d!1523177 m!5734322))

(declare-fun m!5734326 () Bool)

(assert (=> d!1523177 m!5734326))

(assert (=> d!1523177 m!5734320))

(declare-fun m!5734328 () Bool)

(assert (=> d!1523177 m!5734328))

(assert (=> d!1523177 m!5734292))

(declare-fun m!5734330 () Bool)

(assert (=> d!1523177 m!5734330))

(assert (=> b!4763719 m!5734320))

(declare-fun m!5734332 () Bool)

(assert (=> b!4763719 m!5734332))

(declare-fun m!5734334 () Bool)

(assert (=> b!4763719 m!5734334))

(declare-fun m!5734336 () Bool)

(assert (=> b!4763719 m!5734336))

(assert (=> b!4763724 m!5734332))

(assert (=> b!4763724 m!5734332))

(declare-fun m!5734338 () Bool)

(assert (=> b!4763724 m!5734338))

(assert (=> b!4763724 m!5734338))

(declare-fun m!5734340 () Bool)

(assert (=> b!4763724 m!5734340))

(declare-fun m!5734342 () Bool)

(assert (=> b!4763723 m!5734342))

(declare-fun m!5734344 () Bool)

(assert (=> b!4763716 m!5734344))

(declare-fun m!5734346 () Bool)

(assert (=> b!4763716 m!5734346))

(declare-fun m!5734348 () Bool)

(assert (=> b!4763716 m!5734348))

(declare-fun m!5734350 () Bool)

(assert (=> b!4763716 m!5734350))

(declare-fun m!5734352 () Bool)

(assert (=> b!4763716 m!5734352))

(assert (=> b!4763716 m!5734346))

(declare-fun m!5734354 () Bool)

(assert (=> b!4763716 m!5734354))

(assert (=> b!4763716 m!5734320))

(declare-fun m!5734356 () Bool)

(assert (=> b!4763716 m!5734356))

(assert (=> b!4763716 m!5734332))

(declare-fun m!5734358 () Bool)

(assert (=> b!4763720 m!5734358))

(assert (=> b!4763720 m!5734358))

(declare-fun m!5734360 () Bool)

(assert (=> b!4763720 m!5734360))

(declare-fun m!5734362 () Bool)

(assert (=> b!4763720 m!5734362))

(declare-fun m!5734364 () Bool)

(assert (=> bm!333978 m!5734364))

(assert (=> bm!333976 m!5734328))

(declare-fun m!5734366 () Bool)

(assert (=> bm!333979 m!5734366))

(assert (=> bm!333974 m!5734320))

(declare-fun m!5734368 () Bool)

(assert (=> bm!333977 m!5734368))

(declare-fun m!5734370 () Bool)

(assert (=> bm!333975 m!5734370))

(assert (=> b!4763679 d!1523177))

(declare-fun d!1523179 () Bool)

(assert (=> d!1523179 (dynLambda!21931 p!6026 lt!1926829)))

(declare-fun lt!1926899 () Unit!138062)

(declare-fun choose!33927 (List!53527 Int tuple2!55366) Unit!138062)

(assert (=> d!1523179 (= lt!1926899 (choose!33927 (toList!6235 lt!1926831) p!6026 lt!1926829))))

(declare-fun e!2973003 () Bool)

(assert (=> d!1523179 e!2973003))

(declare-fun res!2020495 () Bool)

(assert (=> d!1523179 (=> (not res!2020495) (not e!2973003))))

(assert (=> d!1523179 (= res!2020495 (forall!11857 (toList!6235 lt!1926831) p!6026))))

(assert (=> d!1523179 (= (forallContained!3839 (toList!6235 lt!1926831) p!6026 lt!1926829) lt!1926899)))

(declare-fun b!4763728 () Bool)

(assert (=> b!4763728 (= e!2973003 (contains!16713 (toList!6235 lt!1926831) lt!1926829))))

(assert (= (and d!1523179 res!2020495) b!4763728))

(declare-fun b_lambda!184249 () Bool)

(assert (=> (not b_lambda!184249) (not d!1523179)))

(assert (=> d!1523179 t!360922))

(declare-fun b_and!341143 () Bool)

(assert (= b_and!341141 (and (=> t!360922 result!319032) b_and!341143)))

(assert (=> d!1523179 m!5734300))

(declare-fun m!5734372 () Bool)

(assert (=> d!1523179 m!5734372))

(assert (=> d!1523179 m!5734290))

(assert (=> b!4763728 m!5734302))

(assert (=> b!4763685 d!1523179))

(declare-fun d!1523181 () Bool)

(declare-fun lt!1926902 () Bool)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!9575 (List!53527) (InoxSet tuple2!55366))

(assert (=> d!1523181 (= lt!1926902 (select (content!9575 (toList!6235 lt!1926831)) lt!1926829))))

(declare-fun e!2973008 () Bool)

(assert (=> d!1523181 (= lt!1926902 e!2973008)))

(declare-fun res!2020500 () Bool)

(assert (=> d!1523181 (=> (not res!2020500) (not e!2973008))))

(assert (=> d!1523181 (= res!2020500 ((_ is Cons!53403) (toList!6235 lt!1926831)))))

(assert (=> d!1523181 (= (contains!16713 (toList!6235 lt!1926831) lt!1926829) lt!1926902)))

(declare-fun b!4763733 () Bool)

(declare-fun e!2973009 () Bool)

(assert (=> b!4763733 (= e!2973008 e!2973009)))

(declare-fun res!2020501 () Bool)

(assert (=> b!4763733 (=> res!2020501 e!2973009)))

(assert (=> b!4763733 (= res!2020501 (= (h!59815 (toList!6235 lt!1926831)) lt!1926829))))

(declare-fun b!4763734 () Bool)

(assert (=> b!4763734 (= e!2973009 (contains!16713 (t!360923 (toList!6235 lt!1926831)) lt!1926829))))

(assert (= (and d!1523181 res!2020500) b!4763733))

(assert (= (and b!4763733 (not res!2020501)) b!4763734))

(declare-fun m!5734374 () Bool)

(assert (=> d!1523181 m!5734374))

(declare-fun m!5734376 () Bool)

(assert (=> d!1523181 m!5734376))

(declare-fun m!5734378 () Bool)

(assert (=> b!4763734 m!5734378))

(assert (=> b!4763685 d!1523181))

(declare-fun d!1523183 () Bool)

(assert (=> d!1523183 (contains!16713 (toList!6235 lt!1926831) (tuple2!55367 k0!1662 lt!1926828))))

(declare-fun lt!1926905 () Unit!138062)

(declare-fun choose!33928 (List!53527 K!14839 V!15085) Unit!138062)

(assert (=> d!1523183 (= lt!1926905 (choose!33928 (toList!6235 lt!1926831) k0!1662 lt!1926828))))

(assert (=> d!1523183 (invariantList!1656 (toList!6235 lt!1926831))))

(assert (=> d!1523183 (= (lemmaGetValueByKeyImpliesContainsTuple!907 (toList!6235 lt!1926831) k0!1662 lt!1926828) lt!1926905)))

(declare-fun bs!1148690 () Bool)

(assert (= bs!1148690 d!1523183))

(declare-fun m!5734380 () Bool)

(assert (=> bs!1148690 m!5734380))

(declare-fun m!5734382 () Bool)

(assert (=> bs!1148690 m!5734382))

(declare-fun m!5734384 () Bool)

(assert (=> bs!1148690 m!5734384))

(assert (=> b!4763685 d!1523183))

(declare-fun bs!1148691 () Bool)

(declare-fun b!4763752 () Bool)

(assert (= bs!1148691 (and b!4763752 b!4763719)))

(declare-fun lambda!224042 () Int)

(assert (=> bs!1148691 (= lambda!224042 lambda!224035)))

(declare-fun b!4763747 () Bool)

(assert (=> b!4763747 false))

(declare-fun lt!1926977 () Unit!138062)

(declare-fun lt!1926981 () Unit!138062)

(assert (=> b!4763747 (= lt!1926977 lt!1926981)))

(declare-fun lt!1926974 () List!53528)

(declare-fun lt!1926983 () (_ BitVec 64))

(declare-fun lt!1926968 () List!53527)

(assert (=> b!4763747 (contains!16716 lt!1926974 (tuple2!55369 lt!1926983 lt!1926968))))

(assert (=> b!4763747 (= lt!1926981 (lemmaGetValueByKeyImpliesContainsTuple!908 lt!1926974 lt!1926983 lt!1926968))))

(assert (=> b!4763747 (= lt!1926968 (apply!12564 (v!47476 (underlying!9966 hm!63)) lt!1926983))))

(assert (=> b!4763747 (= lt!1926974 (toList!6236 (map!11906 (v!47476 (underlying!9966 hm!63)))))))

(declare-fun lt!1926976 () Unit!138062)

(declare-fun lt!1926971 () Unit!138062)

(assert (=> b!4763747 (= lt!1926976 lt!1926971)))

(declare-fun lt!1926990 () List!53528)

(assert (=> b!4763747 (isDefined!9793 (getValueByKey!2147 lt!1926990 lt!1926983))))

(assert (=> b!4763747 (= lt!1926971 (lemmaContainsKeyImpliesGetValueByKeyDefined!1962 lt!1926990 lt!1926983))))

(assert (=> b!4763747 (= lt!1926990 (toList!6236 (map!11906 (v!47476 (underlying!9966 hm!63)))))))

(declare-fun e!2973018 () Unit!138062)

(declare-fun Unit!138069 () Unit!138062)

(assert (=> b!4763747 (= e!2973018 Unit!138069)))

(declare-fun b!4763748 () Bool)

(declare-fun e!2973017 () V!15085)

(declare-fun dynLambda!21932 (Int K!14839) V!15085)

(assert (=> b!4763748 (= e!2973017 (dynLambda!21932 (defaultValue!4934 hm!63) k0!1662))))

(declare-fun b!4763749 () Bool)

(declare-fun e!2973016 () Bool)

(declare-fun lt!1926984 () V!15085)

(declare-datatypes ((Option!12621 0))(
  ( (None!12620) (Some!12620 (v!47481 V!15085)) )
))
(declare-fun get!17978 (Option!12621) V!15085)

(declare-fun getValueByKey!2148 (List!53527 K!14839) Option!12621)

(assert (=> b!4763749 (= e!2973016 (= lt!1926984 (get!17978 (getValueByKey!2148 (toList!6235 (map!11905 hm!63)) k0!1662))))))

(declare-fun d!1523185 () Bool)

(assert (=> d!1523185 e!2973016))

(declare-fun c!812690 () Bool)

(assert (=> d!1523185 (= c!812690 (contains!16712 hm!63 k0!1662))))

(assert (=> d!1523185 (= lt!1926984 e!2973017)))

(declare-fun c!812692 () Bool)

(assert (=> d!1523185 (= c!812692 (not (contains!16712 hm!63 k0!1662)))))

(assert (=> d!1523185 (valid!3874 hm!63)))

(assert (=> d!1523185 (= (apply!12563 hm!63 k0!1662) lt!1926984)))

(declare-fun b!4763750 () Bool)

(assert (=> b!4763750 (= e!2973016 (= lt!1926984 (dynLambda!21932 (defaultValue!4934 hm!63) k0!1662)))))

(declare-fun b!4763751 () Bool)

(declare-fun Unit!138070 () Unit!138062)

(assert (=> b!4763751 (= e!2973018 Unit!138070)))

(declare-fun get!17979 (Option!12620) tuple2!55366)

(assert (=> b!4763752 (= e!2973017 (_2!30977 (get!17979 (getPair!625 (apply!12564 (v!47476 (underlying!9966 hm!63)) lt!1926983) k0!1662))))))

(assert (=> b!4763752 (= lt!1926983 (hash!4527 (hashF!12365 hm!63) k0!1662))))

(declare-fun c!812691 () Bool)

(assert (=> b!4763752 (= c!812691 (not (contains!16716 (toList!6236 (map!11906 (v!47476 (underlying!9966 hm!63)))) (tuple2!55369 lt!1926983 (apply!12564 (v!47476 (underlying!9966 hm!63)) lt!1926983)))))))

(declare-fun lt!1926995 () Unit!138062)

(assert (=> b!4763752 (= lt!1926995 e!2973018)))

(declare-fun lt!1926966 () Unit!138062)

(assert (=> b!4763752 (= lt!1926966 (forallContained!3840 (toList!6236 (map!11906 (v!47476 (underlying!9966 hm!63)))) lambda!224042 (tuple2!55369 lt!1926983 (apply!12564 (v!47476 (underlying!9966 hm!63)) lt!1926983))))))

(declare-fun lt!1926978 () ListLongMap!4619)

(assert (=> b!4763752 (= lt!1926978 (map!11906 (v!47476 (underlying!9966 hm!63))))))

(declare-fun lt!1926975 () Unit!138062)

(declare-fun lemmaGetPairGetSameValueAsMap!52 (ListLongMap!4619 K!14839 V!15085 Hashable!6540) Unit!138062)

(assert (=> b!4763752 (= lt!1926975 (lemmaGetPairGetSameValueAsMap!52 lt!1926978 k0!1662 (_2!30977 (get!17979 (getPair!625 (apply!12564 (v!47476 (underlying!9966 hm!63)) lt!1926983) k0!1662))) (hashF!12365 hm!63)))))

(declare-fun lt!1926967 () Unit!138062)

(declare-fun lemmaInGenMapThenLongMapContainsHash!826 (ListLongMap!4619 K!14839 Hashable!6540) Unit!138062)

(assert (=> b!4763752 (= lt!1926967 (lemmaInGenMapThenLongMapContainsHash!826 lt!1926978 k0!1662 (hashF!12365 hm!63)))))

(assert (=> b!4763752 (contains!16717 lt!1926978 (hash!4527 (hashF!12365 hm!63) k0!1662))))

(declare-fun lt!1926969 () Unit!138062)

(assert (=> b!4763752 (= lt!1926969 lt!1926967)))

(declare-fun lt!1926986 () (_ BitVec 64))

(assert (=> b!4763752 (= lt!1926986 (hash!4527 (hashF!12365 hm!63) k0!1662))))

(declare-fun lt!1926989 () List!53527)

(assert (=> b!4763752 (= lt!1926989 (apply!12565 lt!1926978 (hash!4527 (hashF!12365 hm!63) k0!1662)))))

(declare-fun lt!1926992 () Unit!138062)

(declare-fun lemmaGetValueImpliesTupleContained!425 (ListLongMap!4619 (_ BitVec 64) List!53527) Unit!138062)

(assert (=> b!4763752 (= lt!1926992 (lemmaGetValueImpliesTupleContained!425 lt!1926978 lt!1926986 lt!1926989))))

(assert (=> b!4763752 (contains!16716 (toList!6236 lt!1926978) (tuple2!55369 lt!1926986 lt!1926989))))

(declare-fun lt!1926987 () Unit!138062)

(assert (=> b!4763752 (= lt!1926987 lt!1926992)))

(declare-fun lt!1926973 () Unit!138062)

(assert (=> b!4763752 (= lt!1926973 (forallContained!3840 (toList!6236 lt!1926978) lambda!224042 (tuple2!55369 (hash!4527 (hashF!12365 hm!63) k0!1662) (apply!12565 lt!1926978 (hash!4527 (hashF!12365 hm!63) k0!1662)))))))

(declare-fun lt!1926994 () Unit!138062)

(declare-fun lemmaInGenMapThenGetPairDefined!416 (ListLongMap!4619 K!14839 Hashable!6540) Unit!138062)

(assert (=> b!4763752 (= lt!1926994 (lemmaInGenMapThenGetPairDefined!416 lt!1926978 k0!1662 (hashF!12365 hm!63)))))

(declare-fun lt!1926988 () Unit!138062)

(assert (=> b!4763752 (= lt!1926988 (lemmaInGenMapThenLongMapContainsHash!826 lt!1926978 k0!1662 (hashF!12365 hm!63)))))

(declare-fun lt!1926982 () Unit!138062)

(assert (=> b!4763752 (= lt!1926982 lt!1926988)))

(declare-fun lt!1926972 () (_ BitVec 64))

(assert (=> b!4763752 (= lt!1926972 (hash!4527 (hashF!12365 hm!63) k0!1662))))

(declare-fun lt!1926991 () List!53527)

(assert (=> b!4763752 (= lt!1926991 (apply!12565 lt!1926978 (hash!4527 (hashF!12365 hm!63) k0!1662)))))

(declare-fun lt!1926993 () Unit!138062)

(assert (=> b!4763752 (= lt!1926993 (lemmaGetValueImpliesTupleContained!425 lt!1926978 lt!1926972 lt!1926991))))

(assert (=> b!4763752 (contains!16716 (toList!6236 lt!1926978) (tuple2!55369 lt!1926972 lt!1926991))))

(declare-fun lt!1926970 () Unit!138062)

(assert (=> b!4763752 (= lt!1926970 lt!1926993)))

(declare-fun lt!1926980 () Unit!138062)

(assert (=> b!4763752 (= lt!1926980 (forallContained!3840 (toList!6236 lt!1926978) lambda!224042 (tuple2!55369 (hash!4527 (hashF!12365 hm!63) k0!1662) (apply!12565 lt!1926978 (hash!4527 (hashF!12365 hm!63) k0!1662)))))))

(assert (=> b!4763752 (isDefined!9794 (getPair!625 (apply!12565 lt!1926978 (hash!4527 (hashF!12365 hm!63) k0!1662)) k0!1662))))

(declare-fun lt!1926979 () Unit!138062)

(assert (=> b!4763752 (= lt!1926979 lt!1926994)))

(assert (=> b!4763752 (= (_2!30977 (get!17979 (getPair!625 (apply!12565 lt!1926978 (hash!4527 (hashF!12365 hm!63) k0!1662)) k0!1662))) (get!17978 (getValueByKey!2148 (toList!6235 (extractMap!2125 (toList!6236 lt!1926978))) k0!1662)))))

(declare-fun lt!1926985 () Unit!138062)

(assert (=> b!4763752 (= lt!1926985 lt!1926975)))

(assert (= (and d!1523185 c!812692) b!4763748))

(assert (= (and d!1523185 (not c!812692)) b!4763752))

(assert (= (and b!4763752 c!812691) b!4763747))

(assert (= (and b!4763752 (not c!812691)) b!4763751))

(assert (= (and d!1523185 c!812690) b!4763749))

(assert (= (and d!1523185 (not c!812690)) b!4763750))

(declare-fun b_lambda!184251 () Bool)

(assert (=> (not b_lambda!184251) (not b!4763748)))

(declare-fun t!360927 () Bool)

(declare-fun tb!257451 () Bool)

(assert (=> (and b!4763686 (= (defaultValue!4934 hm!63) (defaultValue!4934 hm!63)) t!360927) tb!257451))

(declare-fun result!319036 () Bool)

(declare-fun tp_is_empty!32329 () Bool)

(assert (=> tb!257451 (= result!319036 tp_is_empty!32329)))

(assert (=> b!4763748 t!360927))

(declare-fun b_and!341145 () Bool)

(assert (= b_and!341135 (and (=> t!360927 result!319036) b_and!341145)))

(declare-fun b_lambda!184253 () Bool)

(assert (=> (not b_lambda!184253) (not b!4763750)))

(assert (=> b!4763750 t!360927))

(declare-fun b_and!341147 () Bool)

(assert (= b_and!341145 (and (=> t!360927 result!319036) b_and!341147)))

(declare-fun m!5734386 () Bool)

(assert (=> b!4763750 m!5734386))

(declare-fun m!5734388 () Bool)

(assert (=> b!4763752 m!5734388))

(declare-fun m!5734390 () Bool)

(assert (=> b!4763752 m!5734390))

(declare-fun m!5734392 () Bool)

(assert (=> b!4763752 m!5734392))

(declare-fun m!5734394 () Bool)

(assert (=> b!4763752 m!5734394))

(assert (=> b!4763752 m!5734392))

(declare-fun m!5734396 () Bool)

(assert (=> b!4763752 m!5734396))

(declare-fun m!5734398 () Bool)

(assert (=> b!4763752 m!5734398))

(assert (=> b!4763752 m!5734392))

(declare-fun m!5734400 () Bool)

(assert (=> b!4763752 m!5734400))

(declare-fun m!5734402 () Bool)

(assert (=> b!4763752 m!5734402))

(assert (=> b!4763752 m!5734328))

(declare-fun m!5734404 () Bool)

(assert (=> b!4763752 m!5734404))

(assert (=> b!4763752 m!5734328))

(declare-fun m!5734406 () Bool)

(assert (=> b!4763752 m!5734406))

(declare-fun m!5734408 () Bool)

(assert (=> b!4763752 m!5734408))

(declare-fun m!5734410 () Bool)

(assert (=> b!4763752 m!5734410))

(declare-fun m!5734412 () Bool)

(assert (=> b!4763752 m!5734412))

(declare-fun m!5734414 () Bool)

(assert (=> b!4763752 m!5734414))

(declare-fun m!5734416 () Bool)

(assert (=> b!4763752 m!5734416))

(assert (=> b!4763752 m!5734320))

(declare-fun m!5734418 () Bool)

(assert (=> b!4763752 m!5734418))

(assert (=> b!4763752 m!5734402))

(declare-fun m!5734420 () Bool)

(assert (=> b!4763752 m!5734420))

(assert (=> b!4763752 m!5734410))

(declare-fun m!5734422 () Bool)

(assert (=> b!4763752 m!5734422))

(assert (=> b!4763752 m!5734398))

(declare-fun m!5734424 () Bool)

(assert (=> b!4763752 m!5734424))

(declare-fun m!5734426 () Bool)

(assert (=> b!4763752 m!5734426))

(assert (=> b!4763752 m!5734420))

(declare-fun m!5734428 () Bool)

(assert (=> b!4763752 m!5734428))

(assert (=> b!4763752 m!5734328))

(assert (=> b!4763752 m!5734390))

(declare-fun m!5734430 () Bool)

(assert (=> b!4763747 m!5734430))

(declare-fun m!5734432 () Bool)

(assert (=> b!4763747 m!5734432))

(declare-fun m!5734434 () Bool)

(assert (=> b!4763747 m!5734434))

(assert (=> b!4763747 m!5734320))

(declare-fun m!5734436 () Bool)

(assert (=> b!4763747 m!5734436))

(assert (=> b!4763747 m!5734430))

(declare-fun m!5734438 () Bool)

(assert (=> b!4763747 m!5734438))

(assert (=> b!4763747 m!5734420))

(assert (=> b!4763748 m!5734386))

(assert (=> b!4763749 m!5734292))

(declare-fun m!5734440 () Bool)

(assert (=> b!4763749 m!5734440))

(assert (=> b!4763749 m!5734440))

(declare-fun m!5734442 () Bool)

(assert (=> b!4763749 m!5734442))

(assert (=> d!1523185 m!5734298))

(assert (=> d!1523185 m!5734310))

(assert (=> b!4763685 d!1523185))

(declare-fun d!1523187 () Bool)

(assert (=> d!1523187 (= (array_inv!5715 (_keys!5221 (v!47475 (underlying!9965 (v!47476 (underlying!9966 hm!63)))))) (bvsge (size!36173 (_keys!5221 (v!47475 (underlying!9965 (v!47476 (underlying!9966 hm!63)))))) #b00000000000000000000000000000000))))

(assert (=> b!4763682 d!1523187))

(declare-fun d!1523189 () Bool)

(assert (=> d!1523189 (= (array_inv!5716 (_values!5192 (v!47475 (underlying!9965 (v!47476 (underlying!9966 hm!63)))))) (bvsge (size!36174 (_values!5192 (v!47475 (underlying!9965 (v!47476 (underlying!9966 hm!63)))))) #b00000000000000000000000000000000))))

(assert (=> b!4763682 d!1523189))

(declare-fun bs!1148692 () Bool)

(declare-fun b!4763759 () Bool)

(assert (= bs!1148692 (and b!4763759 b!4763719)))

(declare-fun lambda!224045 () Int)

(assert (=> bs!1148692 (= lambda!224045 lambda!224035)))

(declare-fun bs!1148693 () Bool)

(assert (= bs!1148693 (and b!4763759 b!4763752)))

(assert (=> bs!1148693 (= lambda!224045 lambda!224042)))

(declare-fun d!1523191 () Bool)

(declare-fun res!2020506 () Bool)

(declare-fun e!2973021 () Bool)

(assert (=> d!1523191 (=> (not res!2020506) (not e!2973021))))

(declare-fun valid!3875 (MutLongMap!4879) Bool)

(assert (=> d!1523191 (= res!2020506 (valid!3875 (v!47476 (underlying!9966 hm!63))))))

(assert (=> d!1523191 (= (valid!3874 hm!63) e!2973021)))

(declare-fun res!2020507 () Bool)

(assert (=> b!4763759 (=> (not res!2020507) (not e!2973021))))

(declare-fun forall!11858 (List!53528 Int) Bool)

(assert (=> b!4763759 (= res!2020507 (forall!11858 (toList!6236 (map!11906 (v!47476 (underlying!9966 hm!63)))) lambda!224045))))

(declare-fun b!4763760 () Bool)

(declare-fun allKeysSameHashInMap!2006 (ListLongMap!4619 Hashable!6540) Bool)

(assert (=> b!4763760 (= e!2973021 (allKeysSameHashInMap!2006 (map!11906 (v!47476 (underlying!9966 hm!63))) (hashF!12365 hm!63)))))

(assert (= (and d!1523191 res!2020506) b!4763759))

(assert (= (and b!4763759 res!2020507) b!4763760))

(declare-fun m!5734444 () Bool)

(assert (=> d!1523191 m!5734444))

(assert (=> b!4763759 m!5734320))

(declare-fun m!5734446 () Bool)

(assert (=> b!4763759 m!5734446))

(assert (=> b!4763760 m!5734320))

(assert (=> b!4763760 m!5734320))

(declare-fun m!5734448 () Bool)

(assert (=> b!4763760 m!5734448))

(assert (=> b!4763677 d!1523191))

(declare-fun mapNonEmpty!21683 () Bool)

(declare-fun mapRes!21683 () Bool)

(declare-fun tp!1354335 () Bool)

(declare-fun e!2973027 () Bool)

(assert (=> mapNonEmpty!21683 (= mapRes!21683 (and tp!1354335 e!2973027))))

(declare-fun mapRest!21683 () (Array (_ BitVec 32) List!53527))

(declare-fun mapKey!21683 () (_ BitVec 32))

(declare-fun mapValue!21683 () List!53527)

(assert (=> mapNonEmpty!21683 (= mapRest!21680 (store mapRest!21683 mapKey!21683 mapValue!21683))))

(declare-fun tp!1354333 () Bool)

(declare-fun b!4763767 () Bool)

(assert (=> b!4763767 (= e!2973027 (and tp_is_empty!32327 tp_is_empty!32329 tp!1354333))))

(declare-fun tp!1354334 () Bool)

(declare-fun e!2973026 () Bool)

(declare-fun b!4763768 () Bool)

(assert (=> b!4763768 (= e!2973026 (and tp_is_empty!32327 tp_is_empty!32329 tp!1354334))))

(declare-fun condMapEmpty!21683 () Bool)

(declare-fun mapDefault!21683 () List!53527)

(assert (=> mapNonEmpty!21680 (= condMapEmpty!21683 (= mapRest!21680 ((as const (Array (_ BitVec 32) List!53527)) mapDefault!21683)))))

(assert (=> mapNonEmpty!21680 (= tp!1354320 (and e!2973026 mapRes!21683))))

(declare-fun mapIsEmpty!21683 () Bool)

(assert (=> mapIsEmpty!21683 mapRes!21683))

(assert (= (and mapNonEmpty!21680 condMapEmpty!21683) mapIsEmpty!21683))

(assert (= (and mapNonEmpty!21680 (not condMapEmpty!21683)) mapNonEmpty!21683))

(assert (= (and mapNonEmpty!21683 ((_ is Cons!53403) mapValue!21683)) b!4763767))

(assert (= (and mapNonEmpty!21680 ((_ is Cons!53403) mapDefault!21683)) b!4763768))

(declare-fun m!5734450 () Bool)

(assert (=> mapNonEmpty!21683 m!5734450))

(declare-fun b!4763773 () Bool)

(declare-fun tp!1354338 () Bool)

(declare-fun e!2973030 () Bool)

(assert (=> b!4763773 (= e!2973030 (and tp_is_empty!32327 tp_is_empty!32329 tp!1354338))))

(assert (=> mapNonEmpty!21680 (= tp!1354319 e!2973030)))

(assert (= (and mapNonEmpty!21680 ((_ is Cons!53403) mapValue!21680)) b!4763773))

(declare-fun e!2973031 () Bool)

(declare-fun b!4763774 () Bool)

(declare-fun tp!1354339 () Bool)

(assert (=> b!4763774 (= e!2973031 (and tp_is_empty!32327 tp_is_empty!32329 tp!1354339))))

(assert (=> b!4763684 (= tp!1354326 e!2973031)))

(assert (= (and b!4763684 ((_ is Cons!53403) mapDefault!21680)) b!4763774))

(declare-fun e!2973032 () Bool)

(declare-fun tp!1354340 () Bool)

(declare-fun b!4763775 () Bool)

(assert (=> b!4763775 (= e!2973032 (and tp_is_empty!32327 tp_is_empty!32329 tp!1354340))))

(assert (=> b!4763682 (= tp!1354322 e!2973032)))

(assert (= (and b!4763682 ((_ is Cons!53403) (zeroValue!5167 (v!47475 (underlying!9965 (v!47476 (underlying!9966 hm!63))))))) b!4763775))

(declare-fun e!2973033 () Bool)

(declare-fun b!4763776 () Bool)

(declare-fun tp!1354341 () Bool)

(assert (=> b!4763776 (= e!2973033 (and tp_is_empty!32327 tp_is_empty!32329 tp!1354341))))

(assert (=> b!4763682 (= tp!1354325 e!2973033)))

(assert (= (and b!4763682 ((_ is Cons!53403) (minValue!5167 (v!47475 (underlying!9965 (v!47476 (underlying!9966 hm!63))))))) b!4763776))

(declare-fun b_lambda!184255 () Bool)

(assert (= b_lambda!184253 (or (and b!4763686 b_free!129459) b_lambda!184255)))

(declare-fun b_lambda!184257 () Bool)

(assert (= b_lambda!184251 (or (and b!4763686 b_free!129459) b_lambda!184257)))

(declare-fun b_lambda!184259 () Bool)

(assert (= b_lambda!184249 (or (and start!487182 b_free!129461) b_lambda!184259)))

(declare-fun b_lambda!184261 () Bool)

(assert (= b_lambda!184247 (or (and start!487182 b_free!129461) b_lambda!184261)))

(check-sat (not b_lambda!184257) (not b!4763775) (not b_next!130247) tp_is_empty!32329 b_and!341143 (not b!4763720) (not b!4763719) (not b!4763767) (not b_next!130251) (not b!4763724) (not b!4763692) (not b!4763760) (not d!1523179) (not b!4763776) (not bm!333975) (not b!4763723) (not d!1523175) (not bm!333976) (not bm!333977) (not b!4763774) (not d!1523181) b_and!341133 b_and!341147 tp_is_empty!32327 (not d!1523183) (not b!4763728) (not b_lambda!184245) (not b_lambda!184255) (not b_next!130249) (not b!4763759) (not b!4763749) (not b_lambda!184259) (not bm!333974) (not bm!333979) (not d!1523191) (not b!4763716) (not mapNonEmpty!21683) (not b!4763773) (not b!4763768) (not b!4763747) (not b!4763752) (not d!1523185) (not b_lambda!184261) (not bm!333978) (not b!4763734) (not d!1523177))
(check-sat (not b_next!130249) (not b_next!130247) b_and!341143 (not b_next!130251) b_and!341133 b_and!341147)
