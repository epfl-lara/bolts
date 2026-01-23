; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!209356 () Bool)

(assert start!209356)

(declare-fun b!2158037 () Bool)

(declare-fun b_free!63765 () Bool)

(declare-fun b_next!64469 () Bool)

(assert (=> b!2158037 (= b_free!63765 (not b_next!64469))))

(declare-fun tp!672519 () Bool)

(declare-fun b_and!173381 () Bool)

(assert (=> b!2158037 (= tp!672519 b_and!173381)))

(declare-fun b!2158031 () Bool)

(declare-fun b_free!63767 () Bool)

(declare-fun b_next!64471 () Bool)

(assert (=> b!2158031 (= b_free!63767 (not b_next!64471))))

(declare-fun tp!672521 () Bool)

(declare-fun b_and!173383 () Bool)

(assert (=> b!2158031 (= tp!672521 b_and!173383)))

(declare-fun b!2158029 () Bool)

(assert (=> b!2158029 true))

(declare-fun b!2158028 () Bool)

(declare-fun e!1380634 () Bool)

(declare-fun lastNullablePos!109 () Int)

(declare-fun from!970 () Int)

(assert (=> b!2158028 (= e!1380634 (= lastNullablePos!109 (- from!970 1)))))

(declare-fun e!1380632 () Bool)

(declare-fun e!1380635 () Bool)

(assert (=> b!2158029 (= e!1380632 (not e!1380635))))

(declare-fun res!930021 () Bool)

(assert (=> b!2158029 (=> res!930021 e!1380635)))

(declare-datatypes ((C!12032 0))(
  ( (C!12033 (val!7002 Int)) )
))
(declare-datatypes ((List!25036 0))(
  ( (Nil!24952) (Cons!24952 (h!30353 C!12032) (t!197584 List!25036)) )
))
(declare-datatypes ((Regex!5943 0))(
  ( (ElementMatch!5943 (c!341672 C!12032)) (Concat!10245 (regOne!12398 Regex!5943) (regTwo!12398 Regex!5943)) (EmptyExpr!5943) (Star!5943 (reg!6272 Regex!5943)) (EmptyLang!5943) (Union!5943 (regOne!12399 Regex!5943) (regTwo!12399 Regex!5943)) )
))
(declare-datatypes ((List!25037 0))(
  ( (Nil!24953) (Cons!24953 (h!30354 Regex!5943) (t!197585 List!25037)) )
))
(declare-datatypes ((Context!3026 0))(
  ( (Context!3027 (exprs!2013 List!25037)) )
))
(define-sort InoxSet (T) (Array T Bool))

(declare-datatypes ((tuple3!3770 0))(
  ( (tuple3!3771 (_1!14678 (InoxSet Context!3026)) (_2!14678 Int) (_3!2355 Int)) )
))
(declare-datatypes ((array!10055 0))(
  ( (array!10056 (arr!4484 (Array (_ BitVec 32) (_ BitVec 64))) (size!19498 (_ BitVec 32))) )
))
(declare-datatypes ((tuple2!24646 0))(
  ( (tuple2!24647 (_1!14679 tuple3!3770) (_2!14679 Int)) )
))
(declare-datatypes ((List!25038 0))(
  ( (Nil!24954) (Cons!24954 (h!30355 tuple2!24646) (t!197586 List!25038)) )
))
(declare-datatypes ((array!10057 0))(
  ( (array!10058 (arr!4485 (Array (_ BitVec 32) List!25038)) (size!19499 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!5888 0))(
  ( (LongMapFixedSize!5889 (defaultEntry!3309 Int) (mask!7231 (_ BitVec 32)) (extraKeys!3192 (_ BitVec 32)) (zeroValue!3202 List!25038) (minValue!3202 List!25038) (_size!5939 (_ BitVec 32)) (_keys!3241 array!10055) (_values!3224 array!10057) (_vacant!3005 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!11601 0))(
  ( (Cell!11602 (v!29353 LongMapFixedSize!5888)) )
))
(declare-datatypes ((MutLongMap!2944 0))(
  ( (LongMap!2944 (underlying!6083 Cell!11601)) (MutLongMapExt!2943 (__x!17008 Int)) )
))
(declare-datatypes ((Cell!11603 0))(
  ( (Cell!11604 (v!29354 MutLongMap!2944)) )
))
(declare-datatypes ((Hashable!2858 0))(
  ( (HashableExt!2857 (__x!17009 Int)) )
))
(declare-datatypes ((MutableMap!2858 0))(
  ( (MutableMapExt!2857 (__x!17010 Int)) (HashMap!2858 (underlying!6084 Cell!11603) (hashF!4781 Hashable!2858) (_size!5940 (_ BitVec 32)) (defaultValue!3020 Int)) )
))
(declare-datatypes ((IArray!16163 0))(
  ( (IArray!16164 (innerList!8139 List!25036)) )
))
(declare-datatypes ((Conc!8079 0))(
  ( (Node!8079 (left!19209 Conc!8079) (right!19539 Conc!8079) (csize!16388 Int) (cheight!8290 Int)) (Leaf!11818 (xs!11021 IArray!16163) (csize!16389 Int)) (Empty!8079) )
))
(declare-datatypes ((BalanceConc!15920 0))(
  ( (BalanceConc!15921 (c!341673 Conc!8079)) )
))
(declare-datatypes ((CacheFurthestNullable!1074 0))(
  ( (CacheFurthestNullable!1075 (cache!3239 MutableMap!2858) (totalInput!3391 BalanceConc!15920)) )
))
(declare-fun thiss!29220 () CacheFurthestNullable!1074)

(get-info :version)

(assert (=> b!2158029 (= res!930021 (not ((_ is HashMap!2858) (cache!3239 thiss!29220))))))

(declare-fun res!14508 () Int)

(declare-fun lambda!81459 () Int)

(declare-fun lt!801971 () tuple3!3770)

(declare-fun forall!5128 (List!25038 Int) Bool)

(declare-datatypes ((ListMap!721 0))(
  ( (ListMap!722 (toList!1125 List!25038)) )
))
(declare-fun map!5023 (MutableMap!2858) ListMap!721)

(declare-datatypes ((tuple2!24648 0))(
  ( (tuple2!24649 (_1!14680 Bool) (_2!14680 MutableMap!2858)) )
))
(declare-fun update!102 (MutableMap!2858 tuple3!3770 Int) tuple2!24648)

(assert (=> b!2158029 (forall!5128 (toList!1125 (map!5023 (_2!14680 (update!102 (cache!3239 thiss!29220) lt!801971 res!14508)))) lambda!81459)))

(declare-datatypes ((Unit!38005 0))(
  ( (Unit!38006) )
))
(declare-fun lt!801968 () Unit!38005)

(declare-fun lemmaUpdatePreservesForallPairs!5 (MutableMap!2858 tuple3!3770 Int Int) Unit!38005)

(assert (=> b!2158029 (= lt!801968 (lemmaUpdatePreservesForallPairs!5 (cache!3239 thiss!29220) lt!801971 res!14508 lambda!81459))))

(declare-fun z!540 () (InoxSet Context!3026))

(assert (=> b!2158029 (= lt!801971 (tuple3!3771 z!540 from!970 lastNullablePos!109))))

(declare-fun mapIsEmpty!13898 () Bool)

(declare-fun mapRes!13898 () Bool)

(assert (=> mapIsEmpty!13898 mapRes!13898))

(declare-fun b!2158030 () Bool)

(declare-fun e!1380633 () Bool)

(assert (=> b!2158030 (= e!1380633 e!1380632)))

(declare-fun res!930026 () Bool)

(assert (=> b!2158030 (=> (not res!930026) (not e!1380632))))

(declare-fun lt!801969 () Int)

(assert (=> b!2158030 (= res!930026 (and (<= from!970 lt!801969) (>= lastNullablePos!109 (- 1)) (< lastNullablePos!109 from!970)))))

(declare-fun size!19500 (BalanceConc!15920) Int)

(assert (=> b!2158030 (= lt!801969 (size!19500 (totalInput!3391 thiss!29220)))))

(declare-fun e!1380631 () Bool)

(declare-fun tp!672524 () Bool)

(declare-fun tp!672520 () Bool)

(declare-fun e!1380638 () Bool)

(declare-fun array_inv!3214 (array!10055) Bool)

(declare-fun array_inv!3215 (array!10057) Bool)

(assert (=> b!2158031 (= e!1380638 (and tp!672521 tp!672520 tp!672524 (array_inv!3214 (_keys!3241 (v!29353 (underlying!6083 (v!29354 (underlying!6084 (cache!3239 thiss!29220))))))) (array_inv!3215 (_values!3224 (v!29353 (underlying!6083 (v!29354 (underlying!6084 (cache!3239 thiss!29220))))))) e!1380631))))

(declare-fun b!2158032 () Bool)

(declare-fun res!930023 () Bool)

(assert (=> b!2158032 (=> (not res!930023) (not e!1380632))))

(declare-fun furthestNullablePosition!143 ((InoxSet Context!3026) Int BalanceConc!15920 Int Int) Int)

(assert (=> b!2158032 (= res!930023 (= res!14508 (furthestNullablePosition!143 z!540 from!970 (totalInput!3391 thiss!29220) lt!801969 lastNullablePos!109)))))

(declare-fun b!2158033 () Bool)

(declare-fun e!1380636 () Bool)

(declare-fun tp!672527 () Bool)

(declare-fun inv!33012 (Conc!8079) Bool)

(assert (=> b!2158033 (= e!1380636 (and (inv!33012 (c!341673 (totalInput!3391 thiss!29220))) tp!672527))))

(declare-fun setIsEmpty!17827 () Bool)

(declare-fun setRes!17827 () Bool)

(assert (=> setIsEmpty!17827 setRes!17827))

(declare-fun b!2158034 () Bool)

(declare-fun res!930025 () Bool)

(assert (=> b!2158034 (=> (not res!930025) (not e!1380633))))

(assert (=> b!2158034 (= res!930025 (>= from!970 0))))

(declare-fun res!930024 () Bool)

(assert (=> start!209356 (=> (not res!930024) (not e!1380633))))

(declare-fun localTotalInput!17 () BalanceConc!15920)

(assert (=> start!209356 (= res!930024 (= localTotalInput!17 (totalInput!3391 thiss!29220)))))

(assert (=> start!209356 e!1380633))

(declare-fun e!1380627 () Bool)

(declare-fun inv!33013 (BalanceConc!15920) Bool)

(assert (=> start!209356 (and (inv!33013 localTotalInput!17) e!1380627)))

(assert (=> start!209356 true))

(declare-fun condSetEmpty!17827 () Bool)

(assert (=> start!209356 (= condSetEmpty!17827 (= z!540 ((as const (Array Context!3026 Bool)) false)))))

(assert (=> start!209356 setRes!17827))

(declare-fun e!1380630 () Bool)

(declare-fun inv!33014 (CacheFurthestNullable!1074) Bool)

(assert (=> start!209356 (and (inv!33014 thiss!29220) e!1380630)))

(declare-fun mapNonEmpty!13898 () Bool)

(declare-fun tp!672525 () Bool)

(declare-fun tp!672522 () Bool)

(assert (=> mapNonEmpty!13898 (= mapRes!13898 (and tp!672525 tp!672522))))

(declare-fun mapValue!13898 () List!25038)

(declare-fun mapRest!13898 () (Array (_ BitVec 32) List!25038))

(declare-fun mapKey!13898 () (_ BitVec 32))

(assert (=> mapNonEmpty!13898 (= (arr!4485 (_values!3224 (v!29353 (underlying!6083 (v!29354 (underlying!6084 (cache!3239 thiss!29220))))))) (store mapRest!13898 mapKey!13898 mapValue!13898))))

(declare-fun b!2158035 () Bool)

(declare-fun e!1380626 () Bool)

(declare-fun e!1380639 () Bool)

(declare-fun lt!801970 () MutLongMap!2944)

(assert (=> b!2158035 (= e!1380626 (and e!1380639 ((_ is LongMap!2944) lt!801970)))))

(assert (=> b!2158035 (= lt!801970 (v!29354 (underlying!6084 (cache!3239 thiss!29220))))))

(declare-fun b!2158036 () Bool)

(declare-fun valid!2269 (MutableMap!2858) Bool)

(assert (=> b!2158036 (= e!1380635 (valid!2269 (cache!3239 thiss!29220)))))

(declare-fun e!1380629 () Bool)

(assert (=> b!2158037 (= e!1380629 (and e!1380626 tp!672519))))

(declare-fun b!2158038 () Bool)

(declare-fun tp!672517 () Bool)

(assert (=> b!2158038 (= e!1380631 (and tp!672517 mapRes!13898))))

(declare-fun condMapEmpty!13898 () Bool)

(declare-fun mapDefault!13898 () List!25038)

(assert (=> b!2158038 (= condMapEmpty!13898 (= (arr!4485 (_values!3224 (v!29353 (underlying!6083 (v!29354 (underlying!6084 (cache!3239 thiss!29220))))))) ((as const (Array (_ BitVec 32) List!25038)) mapDefault!13898)))))

(declare-fun b!2158039 () Bool)

(declare-fun res!930028 () Bool)

(assert (=> b!2158039 (=> (not res!930028) (not e!1380633))))

(declare-fun validCacheMapFurthestNullable!182 (MutableMap!2858 BalanceConc!15920) Bool)

(assert (=> b!2158039 (= res!930028 (validCacheMapFurthestNullable!182 (cache!3239 thiss!29220) (totalInput!3391 thiss!29220)))))

(declare-fun b!2158040 () Bool)

(assert (=> b!2158040 (= e!1380630 (and e!1380629 (inv!33013 (totalInput!3391 thiss!29220)) e!1380636))))

(declare-fun b!2158041 () Bool)

(declare-fun tp!672518 () Bool)

(assert (=> b!2158041 (= e!1380627 (and (inv!33012 (c!341673 localTotalInput!17)) tp!672518))))

(declare-fun b!2158042 () Bool)

(declare-fun res!930022 () Bool)

(assert (=> b!2158042 (=> (not res!930022) (not e!1380632))))

(assert (=> b!2158042 (= res!930022 e!1380634)))

(declare-fun res!930027 () Bool)

(assert (=> b!2158042 (=> res!930027 e!1380634)))

(declare-fun nullableZipper!232 ((InoxSet Context!3026)) Bool)

(assert (=> b!2158042 (= res!930027 (not (nullableZipper!232 z!540)))))

(declare-fun b!2158043 () Bool)

(declare-fun e!1380640 () Bool)

(assert (=> b!2158043 (= e!1380639 e!1380640)))

(declare-fun b!2158044 () Bool)

(declare-fun e!1380628 () Bool)

(declare-fun tp!672526 () Bool)

(assert (=> b!2158044 (= e!1380628 tp!672526)))

(declare-fun b!2158045 () Bool)

(assert (=> b!2158045 (= e!1380640 e!1380638)))

(declare-fun setNonEmpty!17827 () Bool)

(declare-fun setElem!17827 () Context!3026)

(declare-fun tp!672523 () Bool)

(declare-fun inv!33015 (Context!3026) Bool)

(assert (=> setNonEmpty!17827 (= setRes!17827 (and tp!672523 (inv!33015 setElem!17827) e!1380628))))

(declare-fun setRest!17827 () (InoxSet Context!3026))

(assert (=> setNonEmpty!17827 (= z!540 ((_ map or) (store ((as const (Array Context!3026 Bool)) false) setElem!17827 true) setRest!17827))))

(assert (= (and start!209356 res!930024) b!2158039))

(assert (= (and b!2158039 res!930028) b!2158034))

(assert (= (and b!2158034 res!930025) b!2158030))

(assert (= (and b!2158030 res!930026) b!2158042))

(assert (= (and b!2158042 (not res!930027)) b!2158028))

(assert (= (and b!2158042 res!930022) b!2158032))

(assert (= (and b!2158032 res!930023) b!2158029))

(assert (= (and b!2158029 (not res!930021)) b!2158036))

(assert (= start!209356 b!2158041))

(assert (= (and start!209356 condSetEmpty!17827) setIsEmpty!17827))

(assert (= (and start!209356 (not condSetEmpty!17827)) setNonEmpty!17827))

(assert (= setNonEmpty!17827 b!2158044))

(assert (= (and b!2158038 condMapEmpty!13898) mapIsEmpty!13898))

(assert (= (and b!2158038 (not condMapEmpty!13898)) mapNonEmpty!13898))

(assert (= b!2158031 b!2158038))

(assert (= b!2158045 b!2158031))

(assert (= b!2158043 b!2158045))

(assert (= (and b!2158035 ((_ is LongMap!2944) (v!29354 (underlying!6084 (cache!3239 thiss!29220))))) b!2158043))

(assert (= b!2158037 b!2158035))

(assert (= (and b!2158040 ((_ is HashMap!2858) (cache!3239 thiss!29220))) b!2158037))

(assert (= b!2158040 b!2158033))

(assert (= start!209356 b!2158040))

(declare-fun m!2598120 () Bool)

(assert (=> b!2158033 m!2598120))

(declare-fun m!2598122 () Bool)

(assert (=> b!2158041 m!2598122))

(declare-fun m!2598124 () Bool)

(assert (=> b!2158036 m!2598124))

(declare-fun m!2598126 () Bool)

(assert (=> b!2158031 m!2598126))

(declare-fun m!2598128 () Bool)

(assert (=> b!2158031 m!2598128))

(declare-fun m!2598130 () Bool)

(assert (=> start!209356 m!2598130))

(declare-fun m!2598132 () Bool)

(assert (=> start!209356 m!2598132))

(declare-fun m!2598134 () Bool)

(assert (=> b!2158039 m!2598134))

(declare-fun m!2598136 () Bool)

(assert (=> b!2158042 m!2598136))

(declare-fun m!2598138 () Bool)

(assert (=> b!2158040 m!2598138))

(declare-fun m!2598140 () Bool)

(assert (=> b!2158030 m!2598140))

(declare-fun m!2598142 () Bool)

(assert (=> b!2158029 m!2598142))

(declare-fun m!2598144 () Bool)

(assert (=> b!2158029 m!2598144))

(declare-fun m!2598146 () Bool)

(assert (=> b!2158029 m!2598146))

(declare-fun m!2598148 () Bool)

(assert (=> b!2158029 m!2598148))

(declare-fun m!2598150 () Bool)

(assert (=> setNonEmpty!17827 m!2598150))

(declare-fun m!2598152 () Bool)

(assert (=> b!2158032 m!2598152))

(declare-fun m!2598154 () Bool)

(assert (=> mapNonEmpty!13898 m!2598154))

(check-sat (not b!2158033) (not start!209356) (not b!2158038) b_and!173383 (not b_next!64471) (not b!2158040) (not b!2158042) (not b!2158036) (not setNonEmpty!17827) (not b!2158029) (not b!2158041) (not b!2158031) b_and!173381 (not b!2158030) (not b!2158039) (not b_next!64469) (not mapNonEmpty!13898) (not b!2158044) (not b!2158032))
(check-sat b_and!173383 b_and!173381 (not b_next!64471) (not b_next!64469))
(get-model)

(declare-fun d!646615 () Bool)

(declare-fun res!930033 () Bool)

(declare-fun e!1380643 () Bool)

(assert (=> d!646615 (=> (not res!930033) (not e!1380643))))

(declare-fun valid!2270 (MutLongMap!2944) Bool)

(assert (=> d!646615 (= res!930033 (valid!2270 (v!29354 (underlying!6084 (cache!3239 thiss!29220)))))))

(assert (=> d!646615 (= (valid!2269 (cache!3239 thiss!29220)) e!1380643)))

(declare-fun b!2158052 () Bool)

(declare-fun res!930034 () Bool)

(assert (=> b!2158052 (=> (not res!930034) (not e!1380643))))

(declare-fun lambda!81462 () Int)

(declare-datatypes ((tuple2!24650 0))(
  ( (tuple2!24651 (_1!14681 (_ BitVec 64)) (_2!14681 List!25038)) )
))
(declare-datatypes ((List!25039 0))(
  ( (Nil!24955) (Cons!24955 (h!30356 tuple2!24650) (t!197587 List!25039)) )
))
(declare-fun forall!5129 (List!25039 Int) Bool)

(declare-datatypes ((ListLongMap!267 0))(
  ( (ListLongMap!268 (toList!1126 List!25039)) )
))
(declare-fun map!5024 (MutLongMap!2944) ListLongMap!267)

(assert (=> b!2158052 (= res!930034 (forall!5129 (toList!1126 (map!5024 (v!29354 (underlying!6084 (cache!3239 thiss!29220))))) lambda!81462))))

(declare-fun b!2158053 () Bool)

(declare-fun allKeysSameHashInMap!88 (ListLongMap!267 Hashable!2858) Bool)

(assert (=> b!2158053 (= e!1380643 (allKeysSameHashInMap!88 (map!5024 (v!29354 (underlying!6084 (cache!3239 thiss!29220)))) (hashF!4781 (cache!3239 thiss!29220))))))

(assert (= (and d!646615 res!930033) b!2158052))

(assert (= (and b!2158052 res!930034) b!2158053))

(declare-fun m!2598156 () Bool)

(assert (=> d!646615 m!2598156))

(declare-fun m!2598158 () Bool)

(assert (=> b!2158052 m!2598158))

(declare-fun m!2598160 () Bool)

(assert (=> b!2158052 m!2598160))

(assert (=> b!2158053 m!2598158))

(assert (=> b!2158053 m!2598158))

(declare-fun m!2598162 () Bool)

(assert (=> b!2158053 m!2598162))

(assert (=> b!2158036 d!646615))

(declare-fun d!646617 () Bool)

(declare-fun lambda!81465 () Int)

(declare-fun forall!5130 (List!25037 Int) Bool)

(assert (=> d!646617 (= (inv!33015 setElem!17827) (forall!5130 (exprs!2013 setElem!17827) lambda!81465))))

(declare-fun bs!445944 () Bool)

(assert (= bs!445944 d!646617))

(declare-fun m!2598164 () Bool)

(assert (=> bs!445944 m!2598164))

(assert (=> setNonEmpty!17827 d!646617))

(declare-fun d!646619 () Bool)

(declare-fun res!930039 () Bool)

(declare-fun e!1380648 () Bool)

(assert (=> d!646619 (=> res!930039 e!1380648)))

(assert (=> d!646619 (= res!930039 ((_ is Nil!24954) (toList!1125 (map!5023 (_2!14680 (update!102 (cache!3239 thiss!29220) lt!801971 res!14508))))))))

(assert (=> d!646619 (= (forall!5128 (toList!1125 (map!5023 (_2!14680 (update!102 (cache!3239 thiss!29220) lt!801971 res!14508)))) lambda!81459) e!1380648)))

(declare-fun b!2158058 () Bool)

(declare-fun e!1380649 () Bool)

(assert (=> b!2158058 (= e!1380648 e!1380649)))

(declare-fun res!930040 () Bool)

(assert (=> b!2158058 (=> (not res!930040) (not e!1380649))))

(declare-fun dynLambda!11421 (Int tuple2!24646) Bool)

(assert (=> b!2158058 (= res!930040 (dynLambda!11421 lambda!81459 (h!30355 (toList!1125 (map!5023 (_2!14680 (update!102 (cache!3239 thiss!29220) lt!801971 res!14508)))))))))

(declare-fun b!2158059 () Bool)

(assert (=> b!2158059 (= e!1380649 (forall!5128 (t!197586 (toList!1125 (map!5023 (_2!14680 (update!102 (cache!3239 thiss!29220) lt!801971 res!14508))))) lambda!81459))))

(assert (= (and d!646619 (not res!930039)) b!2158058))

(assert (= (and b!2158058 res!930040) b!2158059))

(declare-fun b_lambda!71025 () Bool)

(assert (=> (not b_lambda!71025) (not b!2158058)))

(declare-fun m!2598166 () Bool)

(assert (=> b!2158058 m!2598166))

(declare-fun m!2598168 () Bool)

(assert (=> b!2158059 m!2598168))

(assert (=> b!2158029 d!646619))

(declare-fun d!646621 () Bool)

(declare-fun lt!801974 () ListMap!721)

(declare-fun invariantList!332 (List!25038) Bool)

(assert (=> d!646621 (invariantList!332 (toList!1125 lt!801974))))

(declare-fun extractMap!84 (List!25039) ListMap!721)

(assert (=> d!646621 (= lt!801974 (extractMap!84 (toList!1126 (map!5024 (v!29354 (underlying!6084 (_2!14680 (update!102 (cache!3239 thiss!29220) lt!801971 res!14508))))))))))

(assert (=> d!646621 (valid!2269 (_2!14680 (update!102 (cache!3239 thiss!29220) lt!801971 res!14508)))))

(assert (=> d!646621 (= (map!5023 (_2!14680 (update!102 (cache!3239 thiss!29220) lt!801971 res!14508))) lt!801974)))

(declare-fun bs!445945 () Bool)

(assert (= bs!445945 d!646621))

(declare-fun m!2598170 () Bool)

(assert (=> bs!445945 m!2598170))

(declare-fun m!2598172 () Bool)

(assert (=> bs!445945 m!2598172))

(declare-fun m!2598174 () Bool)

(assert (=> bs!445945 m!2598174))

(declare-fun m!2598176 () Bool)

(assert (=> bs!445945 m!2598176))

(assert (=> b!2158029 d!646621))

(declare-fun bs!445946 () Bool)

(declare-fun b!2158110 () Bool)

(assert (= bs!445946 (and b!2158110 b!2158052)))

(declare-fun lambda!81474 () Int)

(assert (=> bs!445946 (= lambda!81474 lambda!81462)))

(declare-fun bs!445947 () Bool)

(declare-fun b!2158100 () Bool)

(assert (= bs!445947 (and b!2158100 b!2158052)))

(declare-fun lambda!81475 () Int)

(assert (=> bs!445947 (= lambda!81475 lambda!81462)))

(declare-fun bs!445948 () Bool)

(assert (= bs!445948 (and b!2158100 b!2158110)))

(assert (=> bs!445948 (= lambda!81475 lambda!81474)))

(declare-fun lt!802124 () ListMap!721)

(declare-fun bm!129243 () Bool)

(declare-fun lt!802088 () ListMap!721)

(declare-fun c!341691 () Bool)

(declare-fun call!129271 () Unit!38005)

(declare-fun lt!802107 () ListMap!721)

(declare-fun lt!802121 () ListMap!721)

(declare-fun lemmaEquivalentThenSameContains!4 (ListMap!721 ListMap!721 tuple3!3770) Unit!38005)

(assert (=> bm!129243 (= call!129271 (lemmaEquivalentThenSameContains!4 (ite c!341691 lt!802121 lt!802088) (ite c!341691 lt!802124 lt!802107) lt!801971))))

(declare-fun bm!129244 () Bool)

(declare-fun call!129272 () ListMap!721)

(declare-fun lt!802129 () ListLongMap!267)

(assert (=> bm!129244 (= call!129272 (extractMap!84 (toList!1126 lt!802129)))))

(declare-fun bm!129245 () Bool)

(declare-fun call!129274 () ListMap!721)

(declare-fun c!341694 () Bool)

(declare-fun lt!802137 () tuple2!24648)

(assert (=> bm!129245 (= call!129274 (map!5023 (ite c!341694 (_2!14680 lt!802137) (cache!3239 thiss!29220))))))

(declare-fun bm!129246 () Bool)

(declare-fun call!129277 () ListMap!721)

(declare-fun call!129267 () Bool)

(declare-fun contains!4253 (ListMap!721 tuple3!3770) Bool)

(assert (=> bm!129246 (= call!129267 (contains!4253 (ite c!341691 lt!802121 call!129277) lt!801971))))

(declare-fun lt!802118 () (_ BitVec 64))

(declare-fun bm!129247 () Bool)

(declare-fun lt!802139 () List!25038)

(declare-fun lt!802130 () List!25038)

(declare-fun call!129257 () ListLongMap!267)

(declare-fun lt!802123 () (_ BitVec 64))

(declare-fun +!41 (ListLongMap!267 tuple2!24650) ListLongMap!267)

(assert (=> bm!129247 (= call!129257 (+!41 lt!802129 (ite c!341691 (tuple2!24651 lt!802118 lt!802130) (tuple2!24651 lt!802123 lt!802139))))))

(declare-fun lt!802100 () List!25038)

(declare-fun bm!129248 () Bool)

(declare-fun lt!802125 () List!25038)

(declare-fun call!129259 () Unit!38005)

(declare-fun lemmaRemovePairForKeyPreservesHash!23 (List!25038 tuple3!3770 (_ BitVec 64) Hashable!2858) Unit!38005)

(assert (=> bm!129248 (= call!129259 (lemmaRemovePairForKeyPreservesHash!23 (ite c!341691 lt!802100 lt!802125) lt!801971 (ite c!341691 lt!802118 lt!802123) (hashF!4781 (cache!3239 thiss!29220))))))

(declare-fun bm!129249 () Bool)

(declare-fun call!129275 () ListMap!721)

(declare-fun call!129276 () ListMap!721)

(assert (=> bm!129249 (= call!129275 call!129276)))

(declare-fun b!2158098 () Bool)

(declare-fun lt!802114 () ListMap!721)

(assert (=> b!2158098 (= call!129275 lt!802114)))

(declare-fun lt!802135 () Unit!38005)

(declare-fun Unit!38007 () Unit!38005)

(assert (=> b!2158098 (= lt!802135 Unit!38007)))

(declare-fun call!129251 () Bool)

(assert (=> b!2158098 call!129251))

(declare-fun e!1380677 () Unit!38005)

(declare-fun Unit!38008 () Unit!38005)

(assert (=> b!2158098 (= e!1380677 Unit!38008)))

(declare-fun b!2158099 () Bool)

(declare-fun e!1380675 () List!25038)

(assert (=> b!2158099 (= e!1380675 Nil!24954)))

(declare-fun bm!129250 () Bool)

(declare-fun call!129265 () ListMap!721)

(assert (=> bm!129250 (= call!129265 (map!5023 (ite c!341694 (cache!3239 thiss!29220) (_2!14680 lt!802137))))))

(declare-fun lt!802119 () MutableMap!2858)

(declare-fun lt!802115 () MutableMap!2858)

(declare-fun bm!129251 () Bool)

(assert (=> bm!129251 (= call!129276 (map!5023 (ite c!341691 lt!802115 lt!802119)))))

(declare-fun call!129258 () ListLongMap!267)

(declare-fun bm!129252 () Bool)

(declare-fun call!129264 () Bool)

(assert (=> bm!129252 (= call!129264 (forall!5129 (toList!1126 call!129258) (ite c!341691 lambda!81474 lambda!81475)))))

(declare-fun bm!129253 () Bool)

(assert (=> bm!129253 (= call!129277 call!129276)))

(declare-fun call!129273 () Bool)

(declare-fun bm!129254 () Bool)

(declare-fun allKeysSameHash!27 (List!25038 (_ BitVec 64) Hashable!2858) Bool)

(assert (=> bm!129254 (= call!129273 (allKeysSameHash!27 (ite c!341691 lt!802100 lt!802125) (ite c!341691 lt!802118 lt!802123) (hashF!4781 (cache!3239 thiss!29220))))))

(assert (=> b!2158100 call!129267))

(declare-fun lt!802091 () Unit!38005)

(declare-fun Unit!38009 () Unit!38005)

(assert (=> b!2158100 (= lt!802091 Unit!38009)))

(declare-fun call!129248 () ListMap!721)

(assert (=> b!2158100 (contains!4253 call!129248 lt!801971)))

(declare-fun lt!802098 () Unit!38005)

(declare-fun lt!802138 () Unit!38005)

(assert (=> b!2158100 (= lt!802098 lt!802138)))

(declare-fun call!129250 () Bool)

(assert (=> b!2158100 (= call!129250 (contains!4253 lt!802107 lt!801971))))

(assert (=> b!2158100 (= lt!802138 call!129271)))

(assert (=> b!2158100 (= lt!802107 call!129248)))

(assert (=> b!2158100 (= lt!802088 call!129277)))

(declare-fun lt!802111 () Unit!38005)

(declare-fun Unit!38010 () Unit!38005)

(assert (=> b!2158100 (= lt!802111 Unit!38010)))

(declare-fun call!129249 () Bool)

(assert (=> b!2158100 call!129249))

(declare-fun lt!802094 () Unit!38005)

(declare-fun Unit!38011 () Unit!38005)

(assert (=> b!2158100 (= lt!802094 Unit!38011)))

(declare-fun call!129270 () Bool)

(assert (=> b!2158100 call!129270))

(declare-fun lt!802120 () Unit!38005)

(declare-fun Unit!38012 () Unit!38005)

(assert (=> b!2158100 (= lt!802120 Unit!38012)))

(assert (=> b!2158100 call!129264))

(declare-fun lt!802131 () Unit!38005)

(declare-fun lt!802110 () Unit!38005)

(assert (=> b!2158100 (= lt!802131 lt!802110)))

(declare-fun call!129266 () Bool)

(assert (=> b!2158100 call!129266))

(declare-fun lemmaChangeOneBucketToUpdateANewKeyUpdateThisKeyInGenMap!4 (ListLongMap!267 (_ BitVec 64) List!25038 tuple3!3770 Int Hashable!2858) Unit!38005)

(assert (=> b!2158100 (= lt!802110 (lemmaChangeOneBucketToUpdateANewKeyUpdateThisKeyInGenMap!4 lt!802129 lt!802123 lt!802139 lt!801971 res!14508 (hashF!4781 (cache!3239 thiss!29220))))))

(declare-fun lt!802093 () Unit!38005)

(declare-fun lt!802106 () Unit!38005)

(assert (=> b!2158100 (= lt!802093 lt!802106)))

(declare-fun e!1380679 () Bool)

(assert (=> b!2158100 e!1380679))

(declare-fun res!930053 () Bool)

(assert (=> b!2158100 (=> (not res!930053) (not e!1380679))))

(declare-fun call!129261 () Bool)

(assert (=> b!2158100 (= res!930053 call!129261)))

(declare-fun lt!802089 () ListLongMap!267)

(assert (=> b!2158100 (= lt!802089 call!129257)))

(declare-fun call!129253 () Unit!38005)

(assert (=> b!2158100 (= lt!802106 call!129253)))

(declare-fun lt!802085 () Unit!38005)

(declare-fun e!1380680 () Unit!38005)

(assert (=> b!2158100 (= lt!802085 e!1380680)))

(declare-fun c!341689 () Bool)

(declare-fun isEmpty!14348 (List!25038) Bool)

(assert (=> b!2158100 (= c!341689 (not (isEmpty!14348 lt!802125)))))

(declare-fun e!1380682 () Unit!38005)

(declare-fun Unit!38013 () Unit!38005)

(assert (=> b!2158100 (= e!1380682 Unit!38013)))

(declare-fun bm!129255 () Bool)

(declare-fun lemmaChangeOneBucketByAValidOnePreservesForallNoDuplicatesAndHash!23 (ListLongMap!267 (_ BitVec 64) List!25038 Hashable!2858) Unit!38005)

(assert (=> bm!129255 (= call!129253 (lemmaChangeOneBucketByAValidOnePreservesForallNoDuplicatesAndHash!23 lt!802129 (ite c!341691 lt!802118 lt!802123) (ite c!341691 lt!802130 lt!802139) (hashF!4781 (cache!3239 thiss!29220))))))

(declare-fun b!2158101 () Bool)

(declare-fun e!1380681 () Bool)

(declare-fun e!1380678 () Bool)

(assert (=> b!2158101 (= e!1380681 e!1380678)))

(assert (=> b!2158101 (= c!341694 (_1!14680 lt!802137))))

(declare-fun e!1380674 () tuple2!24648)

(declare-datatypes ((tuple2!24652 0))(
  ( (tuple2!24653 (_1!14682 Bool) (_2!14682 MutLongMap!2944)) )
))
(declare-fun lt!802095 () tuple2!24652)

(declare-fun b!2158102 () Bool)

(declare-datatypes ((tuple2!24654 0))(
  ( (tuple2!24655 (_1!14683 Unit!38005) (_2!14683 MutableMap!2858)) )
))
(declare-fun Unit!38014 () Unit!38005)

(declare-fun Unit!38015 () Unit!38005)

(assert (=> b!2158102 (= e!1380674 (tuple2!24649 (_1!14682 lt!802095) (_2!14683 (ite (_1!14682 lt!802095) (tuple2!24655 Unit!38014 (HashMap!2858 (Cell!11604 (_2!14682 lt!802095)) (hashF!4781 (cache!3239 thiss!29220)) (bvadd (_size!5940 (cache!3239 thiss!29220)) #b00000000000000000000000000000001) (defaultValue!3020 (cache!3239 thiss!29220)))) (tuple2!24655 Unit!38015 lt!802119)))))))

(declare-fun call!129256 () (_ BitVec 64))

(assert (=> b!2158102 (= lt!802123 call!129256)))

(declare-fun c!341688 () Bool)

(declare-fun contains!4254 (MutLongMap!2944 (_ BitVec 64)) Bool)

(assert (=> b!2158102 (= c!341688 (contains!4254 (v!29354 (underlying!6084 (cache!3239 thiss!29220))) lt!802123))))

(assert (=> b!2158102 (= lt!802125 e!1380675)))

(assert (=> b!2158102 (= lt!802139 (Cons!24954 (tuple2!24647 lt!801971 res!14508) lt!802125))))

(declare-fun call!129262 () tuple2!24652)

(assert (=> b!2158102 (= lt!802095 call!129262)))

(assert (=> b!2158102 (= lt!802119 (HashMap!2858 (Cell!11604 (_2!14682 lt!802095)) (hashF!4781 (cache!3239 thiss!29220)) (_size!5940 (cache!3239 thiss!29220)) (defaultValue!3020 (cache!3239 thiss!29220))))))

(declare-fun c!341690 () Bool)

(assert (=> b!2158102 (= c!341690 (_1!14682 lt!802095))))

(declare-fun lt!802104 () Unit!38005)

(assert (=> b!2158102 (= lt!802104 e!1380682)))

(declare-fun bm!129256 () Bool)

(assert (=> bm!129256 (= call!129250 (contains!4253 (ite c!341691 lt!802124 lt!802088) lt!801971))))

(declare-fun call!129269 () Unit!38005)

(declare-fun bm!129257 () Bool)

(declare-fun lemmaInLongMapAllKeySameHashThenForTuple!23 (List!25039 (_ BitVec 64) List!25038 Hashable!2858) Unit!38005)

(assert (=> bm!129257 (= call!129269 (lemmaInLongMapAllKeySameHashThenForTuple!23 (toList!1126 lt!802129) (ite c!341691 lt!802118 lt!802123) (ite c!341691 lt!802100 lt!802125) (hashF!4781 (cache!3239 thiss!29220))))))

(declare-fun bm!129258 () Bool)

(declare-fun call!129260 () List!25038)

(declare-fun apply!6043 (MutLongMap!2944 (_ BitVec 64)) List!25038)

(assert (=> bm!129258 (= call!129260 (apply!6043 (v!29354 (underlying!6084 (cache!3239 thiss!29220))) (ite c!341691 lt!802118 lt!802123)))))

(declare-fun lt!802126 () tuple2!24652)

(declare-fun bm!129259 () Bool)

(assert (=> bm!129259 (= call!129258 (map!5024 (ite c!341691 (_2!14682 lt!802126) (_2!14682 lt!802095))))))

(declare-fun b!2158103 () Bool)

(declare-fun Unit!38016 () Unit!38005)

(declare-fun Unit!38017 () Unit!38005)

(assert (=> b!2158103 (= e!1380674 (tuple2!24649 (_1!14682 lt!802126) (_2!14683 (ite false (tuple2!24655 Unit!38016 (HashMap!2858 (Cell!11604 (_2!14682 lt!802126)) (hashF!4781 (cache!3239 thiss!29220)) (bvadd (_size!5940 (cache!3239 thiss!29220)) #b00000000000000000000000000000001) (defaultValue!3020 (cache!3239 thiss!29220)))) (tuple2!24655 Unit!38017 lt!802115)))))))

(assert (=> b!2158103 (= lt!802118 call!129256)))

(assert (=> b!2158103 (= lt!802100 call!129260)))

(declare-fun call!129254 () List!25038)

(assert (=> b!2158103 (= lt!802130 (Cons!24954 (tuple2!24647 lt!801971 res!14508) call!129254))))

(assert (=> b!2158103 (= lt!802126 call!129262)))

(assert (=> b!2158103 (= lt!802115 (HashMap!2858 (Cell!11604 (_2!14682 lt!802126)) (hashF!4781 (cache!3239 thiss!29220)) (_size!5940 (cache!3239 thiss!29220)) (defaultValue!3020 (cache!3239 thiss!29220))))))

(declare-fun c!341692 () Bool)

(assert (=> b!2158103 (= c!341692 (_1!14682 lt!802126))))

(declare-fun lt!802113 () Unit!38005)

(assert (=> b!2158103 (= lt!802113 e!1380677)))

(declare-fun bm!129260 () Bool)

(declare-fun call!129268 () ListMap!721)

(declare-fun +!42 (ListMap!721 tuple2!24646) ListMap!721)

(assert (=> bm!129260 (= call!129268 (+!42 call!129272 (tuple2!24647 lt!801971 res!14508)))))

(declare-fun b!2158104 () Bool)

(declare-fun call!129255 () Bool)

(assert (=> b!2158104 (= e!1380679 call!129255)))

(declare-fun bm!129261 () Bool)

(declare-fun hash!556 (Hashable!2858 tuple3!3770) (_ BitVec 64))

(assert (=> bm!129261 (= call!129256 (hash!556 (hashF!4781 (cache!3239 thiss!29220)) lt!801971))))

(declare-fun bm!129262 () Bool)

(declare-fun call!129278 () Bool)

(assert (=> bm!129262 (= call!129278 (allKeysSameHash!27 call!129254 (ite c!341691 lt!802118 lt!802123) (hashF!4781 (cache!3239 thiss!29220))))))

(declare-fun bm!129263 () Bool)

(declare-fun call!129263 () ListMap!721)

(declare-fun eq!44 (ListMap!721 ListMap!721) Bool)

(assert (=> bm!129263 (= call!129266 (eq!44 call!129263 call!129268))))

(declare-fun b!2158105 () Bool)

(declare-fun e!1380673 () Bool)

(assert (=> b!2158105 (= e!1380678 e!1380673)))

(declare-fun res!930054 () Bool)

(assert (=> b!2158105 (= res!930054 (contains!4253 call!129274 lt!801971))))

(assert (=> b!2158105 (=> (not res!930054) (not e!1380673))))

(declare-fun b!2158106 () Bool)

(declare-fun call!129252 () Bool)

(assert (=> b!2158106 (= e!1380678 call!129252)))

(declare-fun b!2158107 () Bool)

(declare-fun Unit!38018 () Unit!38005)

(assert (=> b!2158107 (= e!1380680 Unit!38018)))

(declare-fun b!2158108 () Bool)

(assert (=> b!2158108 (= e!1380673 call!129252)))

(declare-fun bm!129264 () Bool)

(assert (=> bm!129264 (= call!129270 (allKeysSameHashInMap!88 call!129258 (hashF!4781 (cache!3239 thiss!29220))))))

(declare-fun bm!129265 () Bool)

(declare-fun update!103 (MutLongMap!2944 (_ BitVec 64) List!25038) tuple2!24652)

(assert (=> bm!129265 (= call!129262 (update!103 (v!29354 (underlying!6084 (cache!3239 thiss!29220))) (ite c!341691 lt!802118 lt!802123) (ite c!341691 lt!802130 lt!802139)))))

(declare-fun b!2158109 () Bool)

(assert (=> b!2158109 (= call!129277 lt!802114)))

(declare-fun lt!802128 () Unit!38005)

(declare-fun Unit!38019 () Unit!38005)

(assert (=> b!2158109 (= lt!802128 Unit!38019)))

(assert (=> b!2158109 call!129251))

(declare-fun Unit!38020 () Unit!38005)

(assert (=> b!2158109 (= e!1380682 Unit!38020)))

(declare-fun bm!129266 () Bool)

(declare-fun lt!802102 () ListLongMap!267)

(assert (=> bm!129266 (= call!129261 (forall!5129 (ite c!341691 (toList!1126 lt!802102) (toList!1126 lt!802089)) (ite c!341691 lambda!81474 lambda!81475)))))

(declare-fun bm!129267 () Bool)

(assert (=> bm!129267 (= call!129248 (+!42 lt!802114 (tuple2!24647 lt!801971 res!14508)))))

(assert (=> b!2158110 call!129249))

(declare-fun lt!802105 () Unit!38005)

(declare-fun Unit!38021 () Unit!38005)

(assert (=> b!2158110 (= lt!802105 Unit!38021)))

(assert (=> b!2158110 call!129270))

(declare-fun lt!802112 () Unit!38005)

(declare-fun Unit!38022 () Unit!38005)

(assert (=> b!2158110 (= lt!802112 Unit!38022)))

(assert (=> b!2158110 call!129264))

(declare-fun lt!802090 () Unit!38005)

(declare-fun lt!802109 () Unit!38005)

(assert (=> b!2158110 (= lt!802090 lt!802109)))

(assert (=> b!2158110 (= call!129267 call!129250)))

(assert (=> b!2158110 (= lt!802109 call!129271)))

(assert (=> b!2158110 (= lt!802124 call!129248)))

(assert (=> b!2158110 (= lt!802121 call!129275)))

(declare-fun lt!802103 () Unit!38005)

(declare-fun lt!802117 () Unit!38005)

(assert (=> b!2158110 (= lt!802103 lt!802117)))

(assert (=> b!2158110 call!129266))

(declare-fun lemmaChangeOneBucketToUpdateAnExistingKeyUpdateThisKeyInGenMap!4 (ListLongMap!267 (_ BitVec 64) List!25038 tuple3!3770 Int Hashable!2858) Unit!38005)

(assert (=> b!2158110 (= lt!802117 (lemmaChangeOneBucketToUpdateAnExistingKeyUpdateThisKeyInGenMap!4 lt!802129 lt!802118 lt!802130 lt!801971 res!14508 (hashF!4781 (cache!3239 thiss!29220))))))

(declare-fun lt!802132 () Unit!38005)

(declare-fun lt!802127 () Unit!38005)

(assert (=> b!2158110 (= lt!802132 lt!802127)))

(declare-fun e!1380672 () Bool)

(assert (=> b!2158110 e!1380672))

(declare-fun res!930052 () Bool)

(assert (=> b!2158110 (=> (not res!930052) (not e!1380672))))

(assert (=> b!2158110 (= res!930052 call!129261)))

(assert (=> b!2158110 (= lt!802102 call!129257)))

(assert (=> b!2158110 (= lt!802127 call!129253)))

(declare-fun lt!802133 () Unit!38005)

(declare-fun Unit!38023 () Unit!38005)

(assert (=> b!2158110 (= lt!802133 Unit!38023)))

(declare-fun noDuplicateKeys!29 (List!25038) Bool)

(assert (=> b!2158110 (noDuplicateKeys!29 lt!802130)))

(declare-fun lt!802101 () Unit!38005)

(declare-fun Unit!38024 () Unit!38005)

(assert (=> b!2158110 (= lt!802101 Unit!38024)))

(declare-fun containsKey!57 (List!25038 tuple3!3770) Bool)

(assert (=> b!2158110 (not (containsKey!57 call!129254 lt!801971))))

(declare-fun lt!802097 () Unit!38005)

(declare-fun Unit!38025 () Unit!38005)

(assert (=> b!2158110 (= lt!802097 Unit!38025)))

(declare-fun lt!802136 () Unit!38005)

(declare-fun lt!802092 () Unit!38005)

(assert (=> b!2158110 (= lt!802136 lt!802092)))

(assert (=> b!2158110 (noDuplicateKeys!29 call!129254)))

(declare-fun lemmaRemovePairForKeyPreservesNoDuplicateKeys!23 (List!25038 tuple3!3770) Unit!38005)

(assert (=> b!2158110 (= lt!802092 (lemmaRemovePairForKeyPreservesNoDuplicateKeys!23 lt!802100 lt!801971))))

(declare-fun lt!802116 () Unit!38005)

(declare-fun lt!802099 () Unit!38005)

(assert (=> b!2158110 (= lt!802116 lt!802099)))

(assert (=> b!2158110 call!129278))

(assert (=> b!2158110 (= lt!802099 call!129259)))

(declare-fun lt!802087 () Unit!38005)

(declare-fun lt!802096 () Unit!38005)

(assert (=> b!2158110 (= lt!802087 lt!802096)))

(assert (=> b!2158110 call!129273))

(assert (=> b!2158110 (= lt!802096 call!129269)))

(declare-fun Unit!38026 () Unit!38005)

(assert (=> b!2158110 (= e!1380677 Unit!38026)))

(declare-fun b!2158111 () Bool)

(declare-fun e!1380676 () ListMap!721)

(assert (=> b!2158111 (= e!1380676 call!129274)))

(declare-fun b!2158112 () Bool)

(assert (=> b!2158112 (= e!1380675 call!129260)))

(declare-fun d!646623 () Bool)

(assert (=> d!646623 e!1380681))

(declare-fun res!930051 () Bool)

(assert (=> d!646623 (=> (not res!930051) (not e!1380681))))

(assert (=> d!646623 (= res!930051 ((_ is HashMap!2858) (_2!14680 lt!802137)))))

(declare-fun lt!802134 () tuple2!24648)

(assert (=> d!646623 (= lt!802137 (tuple2!24649 (_1!14680 lt!802134) (_2!14680 lt!802134)))))

(assert (=> d!646623 (= lt!802134 e!1380674)))

(declare-fun contains!4255 (MutableMap!2858 tuple3!3770) Bool)

(assert (=> d!646623 (= c!341691 (contains!4255 (cache!3239 thiss!29220) lt!801971))))

(assert (=> d!646623 (= lt!802129 (map!5024 (v!29354 (underlying!6084 (cache!3239 thiss!29220)))))))

(assert (=> d!646623 (= lt!802114 (map!5023 (cache!3239 thiss!29220)))))

(assert (=> d!646623 (valid!2269 (cache!3239 thiss!29220))))

(assert (=> d!646623 (= (update!102 (cache!3239 thiss!29220) lt!801971 res!14508) lt!802137)))

(declare-fun b!2158113 () Bool)

(assert (=> b!2158113 (= e!1380676 (+!42 call!129265 (tuple2!24647 lt!801971 res!14508)))))

(declare-fun bm!129268 () Bool)

(assert (=> bm!129268 (= call!129263 (extractMap!84 (toList!1126 call!129257)))))

(declare-fun bm!129269 () Bool)

(declare-fun removePairForKey!23 (List!25038 tuple3!3770) List!25038)

(assert (=> bm!129269 (= call!129254 (removePairForKey!23 (ite c!341691 lt!802100 lt!802125) lt!801971))))

(declare-fun bm!129270 () Bool)

(assert (=> bm!129270 (= call!129252 (eq!44 (ite c!341694 call!129274 call!129265) e!1380676))))

(declare-fun c!341693 () Bool)

(assert (=> bm!129270 (= c!341693 c!341694)))

(declare-fun bm!129271 () Bool)

(assert (=> bm!129271 (= call!129251 (valid!2269 (ite c!341691 lt!802115 lt!802119)))))

(declare-fun bm!129272 () Bool)

(assert (=> bm!129272 (= call!129249 (eq!44 (ite c!341691 call!129275 call!129277) call!129248))))

(declare-fun b!2158114 () Bool)

(assert (=> b!2158114 (= e!1380672 call!129255)))

(declare-fun bm!129273 () Bool)

(assert (=> bm!129273 (= call!129255 (allKeysSameHashInMap!88 (ite c!341691 lt!802102 lt!802089) (hashF!4781 (cache!3239 thiss!29220))))))

(declare-fun b!2158115 () Bool)

(declare-fun lt!802108 () Unit!38005)

(assert (=> b!2158115 (= e!1380680 lt!802108)))

(declare-fun lt!802122 () Unit!38005)

(assert (=> b!2158115 (= lt!802122 call!129269)))

(assert (=> b!2158115 call!129273))

(declare-fun lt!802086 () Unit!38005)

(assert (=> b!2158115 (= lt!802086 lt!802122)))

(assert (=> b!2158115 (= lt!802108 call!129259)))

(assert (=> b!2158115 call!129278))

(declare-fun b!2158116 () Bool)

(declare-fun res!930055 () Bool)

(assert (=> b!2158116 (=> (not res!930055) (not e!1380681))))

(assert (=> b!2158116 (= res!930055 (valid!2269 (_2!14680 lt!802137)))))

(assert (= (and d!646623 c!341691) b!2158103))

(assert (= (and d!646623 (not c!341691)) b!2158102))

(assert (= (and b!2158103 c!341692) b!2158110))

(assert (= (and b!2158103 (not c!341692)) b!2158098))

(assert (= (and b!2158110 res!930052) b!2158114))

(assert (= (or b!2158110 b!2158098) bm!129249))

(assert (= (and b!2158102 c!341688) b!2158112))

(assert (= (and b!2158102 (not c!341688)) b!2158099))

(assert (= (and b!2158102 c!341690) b!2158100))

(assert (= (and b!2158102 (not c!341690)) b!2158109))

(assert (= (and b!2158100 c!341689) b!2158115))

(assert (= (and b!2158100 (not c!341689)) b!2158107))

(assert (= (and b!2158100 res!930053) b!2158104))

(assert (= (or b!2158100 b!2158109) bm!129253))

(assert (= (or b!2158103 b!2158110 b!2158115) bm!129269))

(assert (= (or b!2158110 b!2158115) bm!129257))

(assert (= (or b!2158110 b!2158100) bm!129246))

(assert (= (or b!2158103 b!2158112) bm!129258))

(assert (= (or b!2158110 b!2158100) bm!129244))

(assert (= (or b!2158110 b!2158100) bm!129259))

(assert (= (or b!2158110 b!2158100) bm!129247))

(assert (= (or b!2158110 b!2158115) bm!129248))

(assert (= (or b!2158110 b!2158100) bm!129255))

(assert (= (or b!2158110 b!2158100) bm!129267))

(assert (= (or b!2158103 b!2158102) bm!129261))

(assert (= (or b!2158114 b!2158104) bm!129273))

(assert (= (or b!2158110 b!2158100) bm!129266))

(assert (= (or b!2158103 b!2158102) bm!129265))

(assert (= (or b!2158110 b!2158115) bm!129254))

(assert (= (or bm!129249 bm!129253) bm!129251))

(assert (= (or b!2158110 b!2158100) bm!129243))

(assert (= (or b!2158110 b!2158100) bm!129256))

(assert (= (or b!2158098 b!2158109) bm!129271))

(assert (= (or b!2158110 b!2158115) bm!129262))

(assert (= (or b!2158110 b!2158100) bm!129268))

(assert (= (or b!2158110 b!2158100) bm!129264))

(assert (= (or b!2158110 b!2158100) bm!129260))

(assert (= (or b!2158110 b!2158100) bm!129252))

(assert (= (or b!2158110 b!2158100) bm!129272))

(assert (= (or b!2158110 b!2158100) bm!129263))

(assert (= (and d!646623 res!930051) b!2158116))

(assert (= (and b!2158116 res!930055) b!2158101))

(assert (= (and b!2158101 c!341694) b!2158105))

(assert (= (and b!2158101 (not c!341694)) b!2158106))

(assert (= (and b!2158105 res!930054) b!2158108))

(assert (= (or b!2158105 b!2158108 b!2158106) bm!129245))

(assert (= (or b!2158108 b!2158106) bm!129250))

(assert (= (or b!2158108 b!2158106) bm!129270))

(assert (= (and bm!129270 c!341693) b!2158113))

(assert (= (and bm!129270 (not c!341693)) b!2158111))

(declare-fun m!2598178 () Bool)

(assert (=> bm!129256 m!2598178))

(declare-fun m!2598180 () Bool)

(assert (=> bm!129245 m!2598180))

(declare-fun m!2598182 () Bool)

(assert (=> bm!129267 m!2598182))

(declare-fun m!2598184 () Bool)

(assert (=> bm!129271 m!2598184))

(declare-fun m!2598186 () Bool)

(assert (=> bm!129259 m!2598186))

(declare-fun m!2598188 () Bool)

(assert (=> bm!129248 m!2598188))

(declare-fun m!2598190 () Bool)

(assert (=> bm!129254 m!2598190))

(declare-fun m!2598192 () Bool)

(assert (=> bm!129252 m!2598192))

(declare-fun m!2598194 () Bool)

(assert (=> bm!129270 m!2598194))

(declare-fun m!2598196 () Bool)

(assert (=> d!646623 m!2598196))

(assert (=> d!646623 m!2598158))

(declare-fun m!2598198 () Bool)

(assert (=> d!646623 m!2598198))

(assert (=> d!646623 m!2598124))

(declare-fun m!2598200 () Bool)

(assert (=> bm!129260 m!2598200))

(declare-fun m!2598202 () Bool)

(assert (=> bm!129244 m!2598202))

(declare-fun m!2598204 () Bool)

(assert (=> bm!129251 m!2598204))

(declare-fun m!2598206 () Bool)

(assert (=> b!2158116 m!2598206))

(declare-fun m!2598208 () Bool)

(assert (=> bm!129273 m!2598208))

(declare-fun m!2598210 () Bool)

(assert (=> b!2158110 m!2598210))

(declare-fun m!2598212 () Bool)

(assert (=> b!2158110 m!2598212))

(declare-fun m!2598214 () Bool)

(assert (=> b!2158110 m!2598214))

(declare-fun m!2598216 () Bool)

(assert (=> b!2158110 m!2598216))

(declare-fun m!2598218 () Bool)

(assert (=> b!2158110 m!2598218))

(declare-fun m!2598220 () Bool)

(assert (=> b!2158102 m!2598220))

(declare-fun m!2598222 () Bool)

(assert (=> bm!129246 m!2598222))

(declare-fun m!2598224 () Bool)

(assert (=> bm!129265 m!2598224))

(declare-fun m!2598226 () Bool)

(assert (=> bm!129263 m!2598226))

(declare-fun m!2598228 () Bool)

(assert (=> b!2158100 m!2598228))

(declare-fun m!2598230 () Bool)

(assert (=> b!2158100 m!2598230))

(declare-fun m!2598232 () Bool)

(assert (=> b!2158100 m!2598232))

(declare-fun m!2598234 () Bool)

(assert (=> b!2158100 m!2598234))

(declare-fun m!2598236 () Bool)

(assert (=> bm!129247 m!2598236))

(declare-fun m!2598238 () Bool)

(assert (=> bm!129255 m!2598238))

(declare-fun m!2598240 () Bool)

(assert (=> bm!129258 m!2598240))

(declare-fun m!2598242 () Bool)

(assert (=> bm!129264 m!2598242))

(declare-fun m!2598244 () Bool)

(assert (=> bm!129268 m!2598244))

(declare-fun m!2598246 () Bool)

(assert (=> bm!129262 m!2598246))

(declare-fun m!2598248 () Bool)

(assert (=> bm!129269 m!2598248))

(declare-fun m!2598250 () Bool)

(assert (=> bm!129257 m!2598250))

(declare-fun m!2598252 () Bool)

(assert (=> bm!129266 m!2598252))

(declare-fun m!2598254 () Bool)

(assert (=> bm!129250 m!2598254))

(declare-fun m!2598256 () Bool)

(assert (=> bm!129261 m!2598256))

(declare-fun m!2598258 () Bool)

(assert (=> bm!129272 m!2598258))

(declare-fun m!2598260 () Bool)

(assert (=> bm!129243 m!2598260))

(declare-fun m!2598262 () Bool)

(assert (=> b!2158113 m!2598262))

(declare-fun m!2598264 () Bool)

(assert (=> b!2158105 m!2598264))

(assert (=> b!2158029 d!646623))

(declare-fun d!646625 () Bool)

(declare-fun e!1380685 () Bool)

(assert (=> d!646625 e!1380685))

(declare-fun res!930058 () Bool)

(assert (=> d!646625 (=> (not res!930058) (not e!1380685))))

(assert (=> d!646625 (= res!930058 (and (or (not ((_ is HashMap!2858) (cache!3239 thiss!29220))) ((_ is HashMap!2858) (cache!3239 thiss!29220))) ((_ is HashMap!2858) (cache!3239 thiss!29220))))))

(declare-fun lt!802156 () Unit!38005)

(declare-fun choose!12715 (MutableMap!2858 tuple3!3770 Int Int) Unit!38005)

(assert (=> d!646625 (= lt!802156 (choose!12715 (cache!3239 thiss!29220) lt!801971 res!14508 lambda!81459))))

(assert (=> d!646625 (valid!2269 (cache!3239 thiss!29220))))

(assert (=> d!646625 (= (lemmaUpdatePreservesForallPairs!5 (cache!3239 thiss!29220) lt!801971 res!14508 lambda!81459) lt!802156)))

(declare-fun b!2158119 () Bool)

(declare-fun lt!802155 () MutableMap!2858)

(assert (=> b!2158119 (= e!1380685 (forall!5128 (toList!1125 (map!5023 lt!802155)) lambda!81459))))

(assert (=> b!2158119 ((_ is HashMap!2858) lt!802155)))

(declare-fun lt!802153 () MutableMap!2858)

(assert (=> b!2158119 (= lt!802155 lt!802153)))

(assert (=> b!2158119 ((_ is HashMap!2858) lt!802153)))

(declare-fun lt!802154 () MutableMap!2858)

(assert (=> b!2158119 (= lt!802153 lt!802154)))

(assert (=> b!2158119 ((_ is HashMap!2858) lt!802154)))

(declare-fun lt!802152 () tuple2!24648)

(assert (=> b!2158119 (= lt!802154 (_2!14680 lt!802152))))

(assert (=> b!2158119 ((_ is HashMap!2858) (_2!14680 lt!802152))))

(declare-fun lt!802157 () tuple2!24648)

(assert (=> b!2158119 (= lt!802152 lt!802157)))

(assert (=> b!2158119 ((_ is HashMap!2858) (_2!14680 lt!802157))))

(assert (=> b!2158119 (= lt!802157 (update!102 (cache!3239 thiss!29220) lt!801971 res!14508))))

(assert (= (and d!646625 res!930058) b!2158119))

(declare-fun m!2598266 () Bool)

(assert (=> d!646625 m!2598266))

(assert (=> d!646625 m!2598124))

(declare-fun m!2598268 () Bool)

(assert (=> b!2158119 m!2598268))

(declare-fun m!2598270 () Bool)

(assert (=> b!2158119 m!2598270))

(assert (=> b!2158119 m!2598142))

(assert (=> b!2158029 d!646625))

(declare-fun bs!445949 () Bool)

(declare-fun b!2158125 () Bool)

(assert (= bs!445949 (and b!2158125 b!2158029)))

(declare-fun lambda!81478 () Int)

(assert (=> bs!445949 (= (= (totalInput!3391 thiss!29220) localTotalInput!17) (= lambda!81478 lambda!81459))))

(assert (=> b!2158125 true))

(declare-fun d!646627 () Bool)

(declare-fun res!930063 () Bool)

(declare-fun e!1380688 () Bool)

(assert (=> d!646627 (=> (not res!930063) (not e!1380688))))

(assert (=> d!646627 (= res!930063 (valid!2269 (cache!3239 thiss!29220)))))

(assert (=> d!646627 (= (validCacheMapFurthestNullable!182 (cache!3239 thiss!29220) (totalInput!3391 thiss!29220)) e!1380688)))

(declare-fun b!2158124 () Bool)

(declare-fun res!930064 () Bool)

(assert (=> b!2158124 (=> (not res!930064) (not e!1380688))))

(assert (=> b!2158124 (= res!930064 (invariantList!332 (toList!1125 (map!5023 (cache!3239 thiss!29220)))))))

(assert (=> b!2158125 (= e!1380688 (forall!5128 (toList!1125 (map!5023 (cache!3239 thiss!29220))) lambda!81478))))

(assert (= (and d!646627 res!930063) b!2158124))

(assert (= (and b!2158124 res!930064) b!2158125))

(assert (=> d!646627 m!2598124))

(assert (=> b!2158124 m!2598198))

(declare-fun m!2598273 () Bool)

(assert (=> b!2158124 m!2598273))

(assert (=> b!2158125 m!2598198))

(declare-fun m!2598275 () Bool)

(assert (=> b!2158125 m!2598275))

(assert (=> b!2158039 d!646627))

(declare-fun d!646629 () Bool)

(declare-fun lt!802160 () Int)

(declare-fun size!19501 (List!25036) Int)

(declare-fun list!9570 (BalanceConc!15920) List!25036)

(assert (=> d!646629 (= lt!802160 (size!19501 (list!9570 (totalInput!3391 thiss!29220))))))

(declare-fun size!19502 (Conc!8079) Int)

(assert (=> d!646629 (= lt!802160 (size!19502 (c!341673 (totalInput!3391 thiss!29220))))))

(assert (=> d!646629 (= (size!19500 (totalInput!3391 thiss!29220)) lt!802160)))

(declare-fun bs!445950 () Bool)

(assert (= bs!445950 d!646629))

(declare-fun m!2598277 () Bool)

(assert (=> bs!445950 m!2598277))

(assert (=> bs!445950 m!2598277))

(declare-fun m!2598279 () Bool)

(assert (=> bs!445950 m!2598279))

(declare-fun m!2598281 () Bool)

(assert (=> bs!445950 m!2598281))

(assert (=> b!2158030 d!646629))

(declare-fun d!646631 () Bool)

(declare-fun isBalanced!2508 (Conc!8079) Bool)

(assert (=> d!646631 (= (inv!33013 localTotalInput!17) (isBalanced!2508 (c!341673 localTotalInput!17)))))

(declare-fun bs!445951 () Bool)

(assert (= bs!445951 d!646631))

(declare-fun m!2598283 () Bool)

(assert (=> bs!445951 m!2598283))

(assert (=> start!209356 d!646631))

(declare-fun d!646633 () Bool)

(declare-fun res!930067 () Bool)

(declare-fun e!1380691 () Bool)

(assert (=> d!646633 (=> (not res!930067) (not e!1380691))))

(assert (=> d!646633 (= res!930067 ((_ is HashMap!2858) (cache!3239 thiss!29220)))))

(assert (=> d!646633 (= (inv!33014 thiss!29220) e!1380691)))

(declare-fun b!2158128 () Bool)

(assert (=> b!2158128 (= e!1380691 (validCacheMapFurthestNullable!182 (cache!3239 thiss!29220) (totalInput!3391 thiss!29220)))))

(assert (= (and d!646633 res!930067) b!2158128))

(assert (=> b!2158128 m!2598134))

(assert (=> start!209356 d!646633))

(declare-fun d!646635 () Bool)

(assert (=> d!646635 (= (inv!33013 (totalInput!3391 thiss!29220)) (isBalanced!2508 (c!341673 (totalInput!3391 thiss!29220))))))

(declare-fun bs!445952 () Bool)

(assert (= bs!445952 d!646635))

(declare-fun m!2598285 () Bool)

(assert (=> bs!445952 m!2598285))

(assert (=> b!2158040 d!646635))

(declare-fun b!2158139 () Bool)

(declare-fun e!1380699 () Int)

(assert (=> b!2158139 (= e!1380699 lastNullablePos!109)))

(declare-fun b!2158140 () Bool)

(declare-fun e!1380700 () Bool)

(declare-fun lostCauseZipper!143 ((InoxSet Context!3026)) Bool)

(assert (=> b!2158140 (= e!1380700 (lostCauseZipper!143 z!540))))

(declare-fun b!2158141 () Bool)

(assert (=> b!2158141 (= e!1380699 from!970)))

(declare-fun lt!802166 () (InoxSet Context!3026))

(declare-fun b!2158142 () Bool)

(declare-fun e!1380698 () Int)

(assert (=> b!2158142 (= e!1380698 (furthestNullablePosition!143 lt!802166 (+ from!970 1) (totalInput!3391 thiss!29220) lt!801969 e!1380699))))

(declare-fun derivationStepZipper!110 ((InoxSet Context!3026) C!12032) (InoxSet Context!3026))

(declare-fun apply!6044 (BalanceConc!15920 Int) C!12032)

(assert (=> b!2158142 (= lt!802166 (derivationStepZipper!110 z!540 (apply!6044 (totalInput!3391 thiss!29220) from!970)))))

(declare-fun c!341700 () Bool)

(assert (=> b!2158142 (= c!341700 (nullableZipper!232 lt!802166))))

(declare-fun lt!802165 () Int)

(declare-fun d!646637 () Bool)

(assert (=> d!646637 (and (>= lt!802165 (- 1)) (< lt!802165 lt!801969) (>= lt!802165 lastNullablePos!109) (or (= lt!802165 lastNullablePos!109) (>= lt!802165 from!970)))))

(assert (=> d!646637 (= lt!802165 e!1380698)))

(declare-fun c!341699 () Bool)

(assert (=> d!646637 (= c!341699 e!1380700)))

(declare-fun res!930070 () Bool)

(assert (=> d!646637 (=> res!930070 e!1380700)))

(assert (=> d!646637 (= res!930070 (= from!970 lt!801969))))

(assert (=> d!646637 (and (>= from!970 0) (<= from!970 lt!801969))))

(assert (=> d!646637 (= (furthestNullablePosition!143 z!540 from!970 (totalInput!3391 thiss!29220) lt!801969 lastNullablePos!109) lt!802165)))

(declare-fun b!2158143 () Bool)

(assert (=> b!2158143 (= e!1380698 lastNullablePos!109)))

(assert (= (and d!646637 (not res!930070)) b!2158140))

(assert (= (and d!646637 c!341699) b!2158143))

(assert (= (and d!646637 (not c!341699)) b!2158142))

(assert (= (and b!2158142 c!341700) b!2158141))

(assert (= (and b!2158142 (not c!341700)) b!2158139))

(declare-fun m!2598287 () Bool)

(assert (=> b!2158140 m!2598287))

(declare-fun m!2598289 () Bool)

(assert (=> b!2158142 m!2598289))

(declare-fun m!2598291 () Bool)

(assert (=> b!2158142 m!2598291))

(assert (=> b!2158142 m!2598291))

(declare-fun m!2598293 () Bool)

(assert (=> b!2158142 m!2598293))

(declare-fun m!2598295 () Bool)

(assert (=> b!2158142 m!2598295))

(assert (=> b!2158032 d!646637))

(declare-fun d!646639 () Bool)

(declare-fun c!341703 () Bool)

(assert (=> d!646639 (= c!341703 ((_ is Node!8079) (c!341673 localTotalInput!17)))))

(declare-fun e!1380705 () Bool)

(assert (=> d!646639 (= (inv!33012 (c!341673 localTotalInput!17)) e!1380705)))

(declare-fun b!2158150 () Bool)

(declare-fun inv!33016 (Conc!8079) Bool)

(assert (=> b!2158150 (= e!1380705 (inv!33016 (c!341673 localTotalInput!17)))))

(declare-fun b!2158151 () Bool)

(declare-fun e!1380706 () Bool)

(assert (=> b!2158151 (= e!1380705 e!1380706)))

(declare-fun res!930073 () Bool)

(assert (=> b!2158151 (= res!930073 (not ((_ is Leaf!11818) (c!341673 localTotalInput!17))))))

(assert (=> b!2158151 (=> res!930073 e!1380706)))

(declare-fun b!2158152 () Bool)

(declare-fun inv!33017 (Conc!8079) Bool)

(assert (=> b!2158152 (= e!1380706 (inv!33017 (c!341673 localTotalInput!17)))))

(assert (= (and d!646639 c!341703) b!2158150))

(assert (= (and d!646639 (not c!341703)) b!2158151))

(assert (= (and b!2158151 (not res!930073)) b!2158152))

(declare-fun m!2598297 () Bool)

(assert (=> b!2158150 m!2598297))

(declare-fun m!2598299 () Bool)

(assert (=> b!2158152 m!2598299))

(assert (=> b!2158041 d!646639))

(declare-fun d!646641 () Bool)

(assert (=> d!646641 (= (array_inv!3214 (_keys!3241 (v!29353 (underlying!6083 (v!29354 (underlying!6084 (cache!3239 thiss!29220))))))) (bvsge (size!19498 (_keys!3241 (v!29353 (underlying!6083 (v!29354 (underlying!6084 (cache!3239 thiss!29220))))))) #b00000000000000000000000000000000))))

(assert (=> b!2158031 d!646641))

(declare-fun d!646643 () Bool)

(assert (=> d!646643 (= (array_inv!3215 (_values!3224 (v!29353 (underlying!6083 (v!29354 (underlying!6084 (cache!3239 thiss!29220))))))) (bvsge (size!19499 (_values!3224 (v!29353 (underlying!6083 (v!29354 (underlying!6084 (cache!3239 thiss!29220))))))) #b00000000000000000000000000000000))))

(assert (=> b!2158031 d!646643))

(declare-fun d!646645 () Bool)

(declare-fun c!341704 () Bool)

(assert (=> d!646645 (= c!341704 ((_ is Node!8079) (c!341673 (totalInput!3391 thiss!29220))))))

(declare-fun e!1380707 () Bool)

(assert (=> d!646645 (= (inv!33012 (c!341673 (totalInput!3391 thiss!29220))) e!1380707)))

(declare-fun b!2158153 () Bool)

(assert (=> b!2158153 (= e!1380707 (inv!33016 (c!341673 (totalInput!3391 thiss!29220))))))

(declare-fun b!2158154 () Bool)

(declare-fun e!1380708 () Bool)

(assert (=> b!2158154 (= e!1380707 e!1380708)))

(declare-fun res!930074 () Bool)

(assert (=> b!2158154 (= res!930074 (not ((_ is Leaf!11818) (c!341673 (totalInput!3391 thiss!29220)))))))

(assert (=> b!2158154 (=> res!930074 e!1380708)))

(declare-fun b!2158155 () Bool)

(assert (=> b!2158155 (= e!1380708 (inv!33017 (c!341673 (totalInput!3391 thiss!29220))))))

(assert (= (and d!646645 c!341704) b!2158153))

(assert (= (and d!646645 (not c!341704)) b!2158154))

(assert (= (and b!2158154 (not res!930074)) b!2158155))

(declare-fun m!2598301 () Bool)

(assert (=> b!2158153 m!2598301))

(declare-fun m!2598303 () Bool)

(assert (=> b!2158155 m!2598303))

(assert (=> b!2158033 d!646645))

(declare-fun d!646647 () Bool)

(declare-fun lambda!81481 () Int)

(declare-fun exists!740 ((InoxSet Context!3026) Int) Bool)

(assert (=> d!646647 (= (nullableZipper!232 z!540) (exists!740 z!540 lambda!81481))))

(declare-fun bs!445953 () Bool)

(assert (= bs!445953 d!646647))

(declare-fun m!2598305 () Bool)

(assert (=> bs!445953 m!2598305))

(assert (=> b!2158042 d!646647))

(declare-fun tp!672534 () Bool)

(declare-fun e!1380714 () Bool)

(declare-fun b!2158164 () Bool)

(declare-fun tp!672535 () Bool)

(assert (=> b!2158164 (= e!1380714 (and (inv!33012 (left!19209 (c!341673 localTotalInput!17))) tp!672535 (inv!33012 (right!19539 (c!341673 localTotalInput!17))) tp!672534))))

(declare-fun b!2158166 () Bool)

(declare-fun e!1380713 () Bool)

(declare-fun tp!672536 () Bool)

(assert (=> b!2158166 (= e!1380713 tp!672536)))

(declare-fun b!2158165 () Bool)

(declare-fun inv!33018 (IArray!16163) Bool)

(assert (=> b!2158165 (= e!1380714 (and (inv!33018 (xs!11021 (c!341673 localTotalInput!17))) e!1380713))))

(assert (=> b!2158041 (= tp!672518 (and (inv!33012 (c!341673 localTotalInput!17)) e!1380714))))

(assert (= (and b!2158041 ((_ is Node!8079) (c!341673 localTotalInput!17))) b!2158164))

(assert (= b!2158165 b!2158166))

(assert (= (and b!2158041 ((_ is Leaf!11818) (c!341673 localTotalInput!17))) b!2158165))

(declare-fun m!2598307 () Bool)

(assert (=> b!2158164 m!2598307))

(declare-fun m!2598309 () Bool)

(assert (=> b!2158164 m!2598309))

(declare-fun m!2598311 () Bool)

(assert (=> b!2158165 m!2598311))

(assert (=> b!2158041 m!2598122))

(declare-fun condSetEmpty!17830 () Bool)

(assert (=> setNonEmpty!17827 (= condSetEmpty!17830 (= setRest!17827 ((as const (Array Context!3026 Bool)) false)))))

(declare-fun setRes!17830 () Bool)

(assert (=> setNonEmpty!17827 (= tp!672523 setRes!17830)))

(declare-fun setIsEmpty!17830 () Bool)

(assert (=> setIsEmpty!17830 setRes!17830))

(declare-fun setElem!17830 () Context!3026)

(declare-fun e!1380717 () Bool)

(declare-fun tp!672541 () Bool)

(declare-fun setNonEmpty!17830 () Bool)

(assert (=> setNonEmpty!17830 (= setRes!17830 (and tp!672541 (inv!33015 setElem!17830) e!1380717))))

(declare-fun setRest!17830 () (InoxSet Context!3026))

(assert (=> setNonEmpty!17830 (= setRest!17827 ((_ map or) (store ((as const (Array Context!3026 Bool)) false) setElem!17830 true) setRest!17830))))

(declare-fun b!2158171 () Bool)

(declare-fun tp!672542 () Bool)

(assert (=> b!2158171 (= e!1380717 tp!672542)))

(assert (= (and setNonEmpty!17827 condSetEmpty!17830) setIsEmpty!17830))

(assert (= (and setNonEmpty!17827 (not condSetEmpty!17830)) setNonEmpty!17830))

(assert (= setNonEmpty!17830 b!2158171))

(declare-fun m!2598313 () Bool)

(assert (=> setNonEmpty!17830 m!2598313))

(declare-fun e!1380723 () Bool)

(declare-fun setElem!17833 () Context!3026)

(declare-fun setRes!17833 () Bool)

(declare-fun setNonEmpty!17833 () Bool)

(declare-fun tp!672550 () Bool)

(assert (=> setNonEmpty!17833 (= setRes!17833 (and tp!672550 (inv!33015 setElem!17833) e!1380723))))

(declare-fun setRest!17833 () (InoxSet Context!3026))

(assert (=> setNonEmpty!17833 (= (_1!14678 (_1!14679 (h!30355 (zeroValue!3202 (v!29353 (underlying!6083 (v!29354 (underlying!6084 (cache!3239 thiss!29220))))))))) ((_ map or) (store ((as const (Array Context!3026 Bool)) false) setElem!17833 true) setRest!17833))))

(declare-fun b!2158178 () Bool)

(declare-fun e!1380722 () Bool)

(declare-fun tp!672549 () Bool)

(assert (=> b!2158178 (= e!1380722 (and setRes!17833 tp!672549))))

(declare-fun condSetEmpty!17833 () Bool)

(assert (=> b!2158178 (= condSetEmpty!17833 (= (_1!14678 (_1!14679 (h!30355 (zeroValue!3202 (v!29353 (underlying!6083 (v!29354 (underlying!6084 (cache!3239 thiss!29220))))))))) ((as const (Array Context!3026 Bool)) false)))))

(declare-fun setIsEmpty!17833 () Bool)

(assert (=> setIsEmpty!17833 setRes!17833))

(assert (=> b!2158031 (= tp!672520 e!1380722)))

(declare-fun b!2158179 () Bool)

(declare-fun tp!672551 () Bool)

(assert (=> b!2158179 (= e!1380723 tp!672551)))

(assert (= (and b!2158178 condSetEmpty!17833) setIsEmpty!17833))

(assert (= (and b!2158178 (not condSetEmpty!17833)) setNonEmpty!17833))

(assert (= setNonEmpty!17833 b!2158179))

(assert (= (and b!2158031 ((_ is Cons!24954) (zeroValue!3202 (v!29353 (underlying!6083 (v!29354 (underlying!6084 (cache!3239 thiss!29220)))))))) b!2158178))

(declare-fun m!2598315 () Bool)

(assert (=> setNonEmpty!17833 m!2598315))

(declare-fun setElem!17834 () Context!3026)

(declare-fun setRes!17834 () Bool)

(declare-fun setNonEmpty!17834 () Bool)

(declare-fun e!1380725 () Bool)

(declare-fun tp!672553 () Bool)

(assert (=> setNonEmpty!17834 (= setRes!17834 (and tp!672553 (inv!33015 setElem!17834) e!1380725))))

(declare-fun setRest!17834 () (InoxSet Context!3026))

(assert (=> setNonEmpty!17834 (= (_1!14678 (_1!14679 (h!30355 (minValue!3202 (v!29353 (underlying!6083 (v!29354 (underlying!6084 (cache!3239 thiss!29220))))))))) ((_ map or) (store ((as const (Array Context!3026 Bool)) false) setElem!17834 true) setRest!17834))))

(declare-fun b!2158180 () Bool)

(declare-fun e!1380724 () Bool)

(declare-fun tp!672552 () Bool)

(assert (=> b!2158180 (= e!1380724 (and setRes!17834 tp!672552))))

(declare-fun condSetEmpty!17834 () Bool)

(assert (=> b!2158180 (= condSetEmpty!17834 (= (_1!14678 (_1!14679 (h!30355 (minValue!3202 (v!29353 (underlying!6083 (v!29354 (underlying!6084 (cache!3239 thiss!29220))))))))) ((as const (Array Context!3026 Bool)) false)))))

(declare-fun setIsEmpty!17834 () Bool)

(assert (=> setIsEmpty!17834 setRes!17834))

(assert (=> b!2158031 (= tp!672524 e!1380724)))

(declare-fun b!2158181 () Bool)

(declare-fun tp!672554 () Bool)

(assert (=> b!2158181 (= e!1380725 tp!672554)))

(assert (= (and b!2158180 condSetEmpty!17834) setIsEmpty!17834))

(assert (= (and b!2158180 (not condSetEmpty!17834)) setNonEmpty!17834))

(assert (= setNonEmpty!17834 b!2158181))

(assert (= (and b!2158031 ((_ is Cons!24954) (minValue!3202 (v!29353 (underlying!6083 (v!29354 (underlying!6084 (cache!3239 thiss!29220)))))))) b!2158180))

(declare-fun m!2598317 () Bool)

(assert (=> setNonEmpty!17834 m!2598317))

(declare-fun e!1380727 () Bool)

(declare-fun b!2158182 () Bool)

(declare-fun tp!672555 () Bool)

(declare-fun tp!672556 () Bool)

(assert (=> b!2158182 (= e!1380727 (and (inv!33012 (left!19209 (c!341673 (totalInput!3391 thiss!29220)))) tp!672556 (inv!33012 (right!19539 (c!341673 (totalInput!3391 thiss!29220)))) tp!672555))))

(declare-fun b!2158184 () Bool)

(declare-fun e!1380726 () Bool)

(declare-fun tp!672557 () Bool)

(assert (=> b!2158184 (= e!1380726 tp!672557)))

(declare-fun b!2158183 () Bool)

(assert (=> b!2158183 (= e!1380727 (and (inv!33018 (xs!11021 (c!341673 (totalInput!3391 thiss!29220)))) e!1380726))))

(assert (=> b!2158033 (= tp!672527 (and (inv!33012 (c!341673 (totalInput!3391 thiss!29220))) e!1380727))))

(assert (= (and b!2158033 ((_ is Node!8079) (c!341673 (totalInput!3391 thiss!29220)))) b!2158182))

(assert (= b!2158183 b!2158184))

(assert (= (and b!2158033 ((_ is Leaf!11818) (c!341673 (totalInput!3391 thiss!29220)))) b!2158183))

(declare-fun m!2598319 () Bool)

(assert (=> b!2158182 m!2598319))

(declare-fun m!2598321 () Bool)

(assert (=> b!2158182 m!2598321))

(declare-fun m!2598323 () Bool)

(assert (=> b!2158183 m!2598323))

(assert (=> b!2158033 m!2598120))

(declare-fun b!2158189 () Bool)

(declare-fun e!1380730 () Bool)

(declare-fun tp!672562 () Bool)

(declare-fun tp!672563 () Bool)

(assert (=> b!2158189 (= e!1380730 (and tp!672562 tp!672563))))

(assert (=> b!2158044 (= tp!672526 e!1380730)))

(assert (= (and b!2158044 ((_ is Cons!24953) (exprs!2013 setElem!17827))) b!2158189))

(declare-fun setRes!17835 () Bool)

(declare-fun tp!672565 () Bool)

(declare-fun setNonEmpty!17835 () Bool)

(declare-fun setElem!17835 () Context!3026)

(declare-fun e!1380732 () Bool)

(assert (=> setNonEmpty!17835 (= setRes!17835 (and tp!672565 (inv!33015 setElem!17835) e!1380732))))

(declare-fun setRest!17835 () (InoxSet Context!3026))

(assert (=> setNonEmpty!17835 (= (_1!14678 (_1!14679 (h!30355 mapDefault!13898))) ((_ map or) (store ((as const (Array Context!3026 Bool)) false) setElem!17835 true) setRest!17835))))

(declare-fun b!2158190 () Bool)

(declare-fun e!1380731 () Bool)

(declare-fun tp!672564 () Bool)

(assert (=> b!2158190 (= e!1380731 (and setRes!17835 tp!672564))))

(declare-fun condSetEmpty!17835 () Bool)

(assert (=> b!2158190 (= condSetEmpty!17835 (= (_1!14678 (_1!14679 (h!30355 mapDefault!13898))) ((as const (Array Context!3026 Bool)) false)))))

(declare-fun setIsEmpty!17835 () Bool)

(assert (=> setIsEmpty!17835 setRes!17835))

(assert (=> b!2158038 (= tp!672517 e!1380731)))

(declare-fun b!2158191 () Bool)

(declare-fun tp!672566 () Bool)

(assert (=> b!2158191 (= e!1380732 tp!672566)))

(assert (= (and b!2158190 condSetEmpty!17835) setIsEmpty!17835))

(assert (= (and b!2158190 (not condSetEmpty!17835)) setNonEmpty!17835))

(assert (= setNonEmpty!17835 b!2158191))

(assert (= (and b!2158038 ((_ is Cons!24954) mapDefault!13898)) b!2158190))

(declare-fun m!2598325 () Bool)

(assert (=> setNonEmpty!17835 m!2598325))

(declare-fun setIsEmpty!17840 () Bool)

(declare-fun setRes!17841 () Bool)

(assert (=> setIsEmpty!17840 setRes!17841))

(declare-fun b!2158202 () Bool)

(declare-fun e!1380741 () Bool)

(declare-fun setRes!17840 () Bool)

(declare-fun tp!672586 () Bool)

(assert (=> b!2158202 (= e!1380741 (and setRes!17840 tp!672586))))

(declare-fun condSetEmpty!17840 () Bool)

(declare-fun mapDefault!13901 () List!25038)

(assert (=> b!2158202 (= condSetEmpty!17840 (= (_1!14678 (_1!14679 (h!30355 mapDefault!13901))) ((as const (Array Context!3026 Bool)) false)))))

(declare-fun b!2158203 () Bool)

(declare-fun e!1380742 () Bool)

(declare-fun tp!672581 () Bool)

(assert (=> b!2158203 (= e!1380742 tp!672581)))

(declare-fun b!2158204 () Bool)

(declare-fun e!1380743 () Bool)

(declare-fun tp!672583 () Bool)

(assert (=> b!2158204 (= e!1380743 tp!672583)))

(declare-fun tp!672584 () Bool)

(declare-fun setElem!17841 () Context!3026)

(declare-fun setNonEmpty!17840 () Bool)

(assert (=> setNonEmpty!17840 (= setRes!17840 (and tp!672584 (inv!33015 setElem!17841) e!1380743))))

(declare-fun setRest!17841 () (InoxSet Context!3026))

(assert (=> setNonEmpty!17840 (= (_1!14678 (_1!14679 (h!30355 mapDefault!13901))) ((_ map or) (store ((as const (Array Context!3026 Bool)) false) setElem!17841 true) setRest!17841))))

(declare-fun b!2158205 () Bool)

(declare-fun e!1380744 () Bool)

(declare-fun tp!672585 () Bool)

(assert (=> b!2158205 (= e!1380744 (and setRes!17841 tp!672585))))

(declare-fun condSetEmpty!17841 () Bool)

(declare-fun mapValue!13901 () List!25038)

(assert (=> b!2158205 (= condSetEmpty!17841 (= (_1!14678 (_1!14679 (h!30355 mapValue!13901))) ((as const (Array Context!3026 Bool)) false)))))

(declare-fun setIsEmpty!17841 () Bool)

(assert (=> setIsEmpty!17841 setRes!17840))

(declare-fun mapNonEmpty!13901 () Bool)

(declare-fun mapRes!13901 () Bool)

(declare-fun tp!672587 () Bool)

(assert (=> mapNonEmpty!13901 (= mapRes!13901 (and tp!672587 e!1380744))))

(declare-fun mapRest!13901 () (Array (_ BitVec 32) List!25038))

(declare-fun mapKey!13901 () (_ BitVec 32))

(assert (=> mapNonEmpty!13901 (= mapRest!13898 (store mapRest!13901 mapKey!13901 mapValue!13901))))

(declare-fun setNonEmpty!17841 () Bool)

(declare-fun setElem!17840 () Context!3026)

(declare-fun tp!672582 () Bool)

(assert (=> setNonEmpty!17841 (= setRes!17841 (and tp!672582 (inv!33015 setElem!17840) e!1380742))))

(declare-fun setRest!17840 () (InoxSet Context!3026))

(assert (=> setNonEmpty!17841 (= (_1!14678 (_1!14679 (h!30355 mapValue!13901))) ((_ map or) (store ((as const (Array Context!3026 Bool)) false) setElem!17840 true) setRest!17840))))

(declare-fun condMapEmpty!13901 () Bool)

(assert (=> mapNonEmpty!13898 (= condMapEmpty!13901 (= mapRest!13898 ((as const (Array (_ BitVec 32) List!25038)) mapDefault!13901)))))

(assert (=> mapNonEmpty!13898 (= tp!672525 (and e!1380741 mapRes!13901))))

(declare-fun mapIsEmpty!13901 () Bool)

(assert (=> mapIsEmpty!13901 mapRes!13901))

(assert (= (and mapNonEmpty!13898 condMapEmpty!13901) mapIsEmpty!13901))

(assert (= (and mapNonEmpty!13898 (not condMapEmpty!13901)) mapNonEmpty!13901))

(assert (= (and b!2158205 condSetEmpty!17841) setIsEmpty!17840))

(assert (= (and b!2158205 (not condSetEmpty!17841)) setNonEmpty!17841))

(assert (= setNonEmpty!17841 b!2158203))

(assert (= (and mapNonEmpty!13901 ((_ is Cons!24954) mapValue!13901)) b!2158205))

(assert (= (and b!2158202 condSetEmpty!17840) setIsEmpty!17841))

(assert (= (and b!2158202 (not condSetEmpty!17840)) setNonEmpty!17840))

(assert (= setNonEmpty!17840 b!2158204))

(assert (= (and mapNonEmpty!13898 ((_ is Cons!24954) mapDefault!13901)) b!2158202))

(declare-fun m!2598327 () Bool)

(assert (=> setNonEmpty!17840 m!2598327))

(declare-fun m!2598329 () Bool)

(assert (=> mapNonEmpty!13901 m!2598329))

(declare-fun m!2598331 () Bool)

(assert (=> setNonEmpty!17841 m!2598331))

(declare-fun e!1380746 () Bool)

(declare-fun tp!672589 () Bool)

(declare-fun setRes!17842 () Bool)

(declare-fun setElem!17842 () Context!3026)

(declare-fun setNonEmpty!17842 () Bool)

(assert (=> setNonEmpty!17842 (= setRes!17842 (and tp!672589 (inv!33015 setElem!17842) e!1380746))))

(declare-fun setRest!17842 () (InoxSet Context!3026))

(assert (=> setNonEmpty!17842 (= (_1!14678 (_1!14679 (h!30355 mapValue!13898))) ((_ map or) (store ((as const (Array Context!3026 Bool)) false) setElem!17842 true) setRest!17842))))

(declare-fun b!2158206 () Bool)

(declare-fun e!1380745 () Bool)

(declare-fun tp!672588 () Bool)

(assert (=> b!2158206 (= e!1380745 (and setRes!17842 tp!672588))))

(declare-fun condSetEmpty!17842 () Bool)

(assert (=> b!2158206 (= condSetEmpty!17842 (= (_1!14678 (_1!14679 (h!30355 mapValue!13898))) ((as const (Array Context!3026 Bool)) false)))))

(declare-fun setIsEmpty!17842 () Bool)

(assert (=> setIsEmpty!17842 setRes!17842))

(assert (=> mapNonEmpty!13898 (= tp!672522 e!1380745)))

(declare-fun b!2158207 () Bool)

(declare-fun tp!672590 () Bool)

(assert (=> b!2158207 (= e!1380746 tp!672590)))

(assert (= (and b!2158206 condSetEmpty!17842) setIsEmpty!17842))

(assert (= (and b!2158206 (not condSetEmpty!17842)) setNonEmpty!17842))

(assert (= setNonEmpty!17842 b!2158207))

(assert (= (and mapNonEmpty!13898 ((_ is Cons!24954) mapValue!13898)) b!2158206))

(declare-fun m!2598333 () Bool)

(assert (=> setNonEmpty!17842 m!2598333))

(declare-fun b_lambda!71027 () Bool)

(assert (= b_lambda!71025 (or b!2158029 b_lambda!71027)))

(declare-fun bs!445954 () Bool)

(declare-fun d!646649 () Bool)

(assert (= bs!445954 (and d!646649 b!2158029)))

(declare-fun validCacheMapFurthestNullableBody!32 (tuple2!24646 BalanceConc!15920) Bool)

(assert (=> bs!445954 (= (dynLambda!11421 lambda!81459 (h!30355 (toList!1125 (map!5023 (_2!14680 (update!102 (cache!3239 thiss!29220) lt!801971 res!14508)))))) (validCacheMapFurthestNullableBody!32 (h!30355 (toList!1125 (map!5023 (_2!14680 (update!102 (cache!3239 thiss!29220) lt!801971 res!14508))))) localTotalInput!17))))

(declare-fun m!2598335 () Bool)

(assert (=> bs!445954 m!2598335))

(assert (=> b!2158058 d!646649))

(check-sat (not d!646621) (not setNonEmpty!17834) (not b!2158116) (not b!2158100) (not b!2158142) (not b!2158178) (not bm!129268) (not bm!129255) (not b!2158179) (not b!2158171) (not bm!129256) (not setNonEmpty!17835) b_and!173381 (not bm!129262) (not b!2158150) (not b!2158105) (not b!2158102) (not bm!129267) (not d!646627) (not b!2158033) (not b!2158180) (not bm!129273) (not d!646615) (not bm!129252) (not b!2158113) (not b!2158140) (not bm!129266) (not b!2158110) (not b_next!64469) (not b!2158124) (not setNonEmpty!17841) (not b!2158052) (not b_lambda!71027) (not bm!129244) (not bm!129248) (not bm!129260) (not b!2158059) (not b!2158191) (not b!2158205) (not b!2158166) (not bm!129246) (not setNonEmpty!17842) (not bm!129243) (not b!2158202) (not b!2158203) (not bm!129265) (not b!2158181) (not bm!129271) (not d!646629) (not setNonEmpty!17833) (not d!646625) (not bm!129270) (not b!2158128) (not b!2158183) (not b!2158207) b_and!173383 (not b!2158189) (not b_next!64471) (not bm!129245) (not b!2158165) (not b!2158206) (not setNonEmpty!17840) (not bm!129257) (not b!2158204) (not d!646635) (not mapNonEmpty!13901) (not setNonEmpty!17830) (not bm!129250) (not bm!129259) (not b!2158184) (not bm!129261) (not d!646617) (not bm!129258) (not bm!129254) (not d!646631) (not b!2158152) (not b!2158190) (not bm!129272) (not bm!129247) (not b!2158125) (not b!2158155) (not d!646647) (not bm!129269) (not b!2158182) (not b!2158153) (not b!2158164) (not bm!129263) (not d!646623) (not b!2158053) (not bs!445954) (not b!2158041) (not b!2158119) (not bm!129251) (not bm!129264))
(check-sat b_and!173383 b_and!173381 (not b_next!64471) (not b_next!64469))
