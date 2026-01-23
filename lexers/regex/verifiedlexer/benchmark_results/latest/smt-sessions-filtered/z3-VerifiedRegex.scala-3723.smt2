; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!209036 () Bool)

(assert start!209036)

(declare-fun b!2154898 () Bool)

(declare-fun b_free!63645 () Bool)

(declare-fun b_next!64349 () Bool)

(assert (=> b!2154898 (= b_free!63645 (not b_next!64349))))

(declare-fun tp!670531 () Bool)

(declare-fun b_and!173261 () Bool)

(assert (=> b!2154898 (= tp!670531 b_and!173261)))

(declare-fun b!2154881 () Bool)

(declare-fun b_free!63647 () Bool)

(declare-fun b_next!64351 () Bool)

(assert (=> b!2154881 (= b_free!63647 (not b_next!64351))))

(declare-fun tp!670525 () Bool)

(declare-fun b_and!173263 () Bool)

(assert (=> b!2154881 (= tp!670525 b_and!173263)))

(declare-fun b!2154888 () Bool)

(assert (=> b!2154888 true))

(declare-fun bs!445795 () Bool)

(declare-fun b!2154891 () Bool)

(assert (= bs!445795 (and b!2154891 b!2154888)))

(declare-fun lambda!81272 () Int)

(declare-fun lambda!81271 () Int)

(assert (=> bs!445795 (not (= lambda!81272 lambda!81271))))

(assert (=> b!2154891 true))

(declare-fun e!1378274 () Bool)

(declare-fun tp!670533 () Bool)

(declare-fun setRes!17536 () Bool)

(declare-datatypes ((C!11972 0))(
  ( (C!11973 (val!6972 Int)) )
))
(declare-datatypes ((Regex!5913 0))(
  ( (ElementMatch!5913 (c!341476 C!11972)) (Concat!10215 (regOne!12338 Regex!5913) (regTwo!12338 Regex!5913)) (EmptyExpr!5913) (Star!5913 (reg!6242 Regex!5913)) (EmptyLang!5913) (Union!5913 (regOne!12339 Regex!5913) (regTwo!12339 Regex!5913)) )
))
(declare-datatypes ((List!24927 0))(
  ( (Nil!24843) (Cons!24843 (h!30244 Regex!5913) (t!197475 List!24927)) )
))
(declare-datatypes ((Context!2966 0))(
  ( (Context!2967 (exprs!1983 List!24927)) )
))
(declare-fun setElem!17536 () Context!2966)

(declare-fun setNonEmpty!17536 () Bool)

(declare-fun inv!32831 (Context!2966) Bool)

(assert (=> setNonEmpty!17536 (= setRes!17536 (and tp!670533 (inv!32831 setElem!17536) e!1378274))))

(declare-datatypes ((List!24928 0))(
  ( (Nil!24844) (Cons!24844 (h!30245 C!11972) (t!197476 List!24928)) )
))
(declare-datatypes ((IArray!16103 0))(
  ( (IArray!16104 (innerList!8109 List!24928)) )
))
(declare-datatypes ((Conc!8049 0))(
  ( (Node!8049 (left!19116 Conc!8049) (right!19446 Conc!8049) (csize!16328 Int) (cheight!8260 Int)) (Leaf!11773 (xs!10991 IArray!16103) (csize!16329 Int)) (Empty!8049) )
))
(declare-datatypes ((BalanceConc!15860 0))(
  ( (BalanceConc!15861 (c!341477 Conc!8049)) )
))
(define-sort InoxSet (T) (Array T Bool))

(declare-datatypes ((StackFrame!360 0))(
  ( (StackFrame!361 (z!5987 (InoxSet Context!2966)) (from!2828 Int) (lastNullablePos!515 Int) (res!929071 Int) (totalInput!3339 BalanceConc!15860)) )
))
(declare-datatypes ((List!24929 0))(
  ( (Nil!24845) (Cons!24845 (h!30246 StackFrame!360) (t!197477 List!24929)) )
))
(declare-fun stack!12 () List!24929)

(declare-fun setRest!17536 () (InoxSet Context!2966))

(assert (=> setNonEmpty!17536 (= (z!5987 (h!30246 stack!12)) ((_ map or) (store ((as const (Array Context!2966 Bool)) false) setElem!17536 true) setRest!17536))))

(declare-fun e!1378282 () Bool)

(declare-fun e!1378280 () Bool)

(assert (=> b!2154881 (= e!1378282 (and e!1378280 tp!670525))))

(declare-fun b!2154883 () Bool)

(declare-fun e!1378272 () Bool)

(declare-fun e!1378284 () Bool)

(assert (=> b!2154883 (= e!1378272 e!1378284)))

(declare-fun b!2154884 () Bool)

(declare-fun e!1378281 () Bool)

(declare-fun tp!670529 () Bool)

(declare-fun inv!32832 (Conc!8049) Bool)

(assert (=> b!2154884 (= e!1378281 (and (inv!32832 (c!341477 (totalInput!3339 (h!30246 stack!12)))) tp!670529))))

(declare-fun b!2154885 () Bool)

(declare-fun e!1378279 () Bool)

(declare-fun tp!670523 () Bool)

(declare-fun mapRes!13772 () Bool)

(assert (=> b!2154885 (= e!1378279 (and tp!670523 mapRes!13772))))

(declare-fun condMapEmpty!13772 () Bool)

(declare-datatypes ((tuple3!3710 0))(
  ( (tuple3!3711 (_1!14604 (InoxSet Context!2966)) (_2!14604 Int) (_3!2325 Int)) )
))
(declare-datatypes ((tuple2!24558 0))(
  ( (tuple2!24559 (_1!14605 tuple3!3710) (_2!14605 Int)) )
))
(declare-datatypes ((List!24930 0))(
  ( (Nil!24846) (Cons!24846 (h!30247 tuple2!24558) (t!197478 List!24930)) )
))
(declare-datatypes ((array!9911 0))(
  ( (array!9912 (arr!4424 (Array (_ BitVec 32) (_ BitVec 64))) (size!19415 (_ BitVec 32))) )
))
(declare-datatypes ((array!9913 0))(
  ( (array!9914 (arr!4425 (Array (_ BitVec 32) List!24930)) (size!19416 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!5828 0))(
  ( (LongMapFixedSize!5829 (defaultEntry!3279 Int) (mask!7186 (_ BitVec 32)) (extraKeys!3162 (_ BitVec 32)) (zeroValue!3172 List!24930) (minValue!3172 List!24930) (_size!5879 (_ BitVec 32)) (_keys!3211 array!9911) (_values!3194 array!9913) (_vacant!2975 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!11481 0))(
  ( (Cell!11482 (v!29291 LongMapFixedSize!5828)) )
))
(declare-datatypes ((Hashable!2828 0))(
  ( (HashableExt!2827 (__x!16918 Int)) )
))
(declare-datatypes ((MutLongMap!2914 0))(
  ( (LongMap!2914 (underlying!6023 Cell!11481)) (MutLongMapExt!2913 (__x!16919 Int)) )
))
(declare-datatypes ((Cell!11483 0))(
  ( (Cell!11484 (v!29292 MutLongMap!2914)) )
))
(declare-datatypes ((MutableMap!2828 0))(
  ( (MutableMapExt!2827 (__x!16920 Int)) (HashMap!2828 (underlying!6024 Cell!11483) (hashF!4751 Hashable!2828) (_size!5880 (_ BitVec 32)) (defaultValue!2990 Int)) )
))
(declare-datatypes ((CacheFurthestNullable!1014 0))(
  ( (CacheFurthestNullable!1015 (cache!3209 MutableMap!2828) (totalInput!3340 BalanceConc!15860)) )
))
(declare-fun cacheFurthestNullable!118 () CacheFurthestNullable!1014)

(declare-fun mapDefault!13772 () List!24930)

(assert (=> b!2154885 (= condMapEmpty!13772 (= (arr!4425 (_values!3194 (v!29291 (underlying!6023 (v!29292 (underlying!6024 (cache!3209 cacheFurthestNullable!118))))))) ((as const (Array (_ BitVec 32) List!24930)) mapDefault!13772)))))

(declare-fun e!1378275 () Bool)

(declare-fun b!2154886 () Bool)

(declare-fun inv!32833 (BalanceConc!15860) Bool)

(assert (=> b!2154886 (= e!1378275 (and setRes!17536 (inv!32833 (totalInput!3339 (h!30246 stack!12))) e!1378281))))

(declare-fun condSetEmpty!17536 () Bool)

(assert (=> b!2154886 (= condSetEmpty!17536 (= (z!5987 (h!30246 stack!12)) ((as const (Array Context!2966 Bool)) false)))))

(declare-fun b!2154887 () Bool)

(declare-fun e!1378276 () Bool)

(declare-fun lt!801498 () MutLongMap!2914)

(get-info :version)

(assert (=> b!2154887 (= e!1378280 (and e!1378276 ((_ is LongMap!2914) lt!801498)))))

(assert (=> b!2154887 (= lt!801498 (v!29292 (underlying!6024 (cache!3209 cacheFurthestNullable!118))))))

(declare-fun res!929068 () Bool)

(declare-fun e!1378286 () Bool)

(assert (=> b!2154888 (=> (not res!929068) (not e!1378286))))

(declare-fun forall!5098 (List!24929 Int) Bool)

(assert (=> b!2154888 (= res!929068 (forall!5098 stack!12 lambda!81271))))

(declare-fun totalInput!880 () BalanceConc!15860)

(declare-fun b!2154889 () Bool)

(declare-datatypes ((Unit!37938 0))(
  ( (Unit!37939) )
))
(declare-datatypes ((tuple2!24560 0))(
  ( (tuple2!24561 (_1!14606 Unit!37938) (_2!14606 CacheFurthestNullable!1014)) )
))
(declare-fun e!1378277 () tuple2!24560)

(declare-fun res!17610 () Int)

(declare-fun update!91 (CacheFurthestNullable!1014 (InoxSet Context!2966) Int Int Int BalanceConc!15860) tuple2!24560)

(assert (=> b!2154889 (= e!1378277 (update!91 cacheFurthestNullable!118 (z!5987 (h!30246 stack!12)) (from!2828 (h!30246 stack!12)) (lastNullablePos!515 (h!30246 stack!12)) res!17610 totalInput!880))))

(declare-fun lt!801499 () Unit!37938)

(declare-fun lemmaInvariant!398 (CacheFurthestNullable!1014) Unit!37938)

(assert (=> b!2154889 (= lt!801499 (lemmaInvariant!398 cacheFurthestNullable!118))))

(declare-fun e!1378283 () Bool)

(declare-fun e!1378285 () Bool)

(declare-fun b!2154890 () Bool)

(assert (=> b!2154890 (= e!1378283 (and e!1378282 (inv!32833 (totalInput!3340 cacheFurthestNullable!118)) e!1378285))))

(declare-fun res!929069 () Bool)

(assert (=> b!2154891 (=> (not res!929069) (not e!1378286))))

(assert (=> b!2154891 (= res!929069 (forall!5098 stack!12 lambda!81272))))

(declare-fun setIsEmpty!17536 () Bool)

(assert (=> setIsEmpty!17536 setRes!17536))

(declare-fun e!1378287 () Bool)

(declare-fun b!2154882 () Bool)

(declare-fun tp!670524 () Bool)

(declare-fun inv!32834 (StackFrame!360) Bool)

(assert (=> b!2154882 (= e!1378287 (and (inv!32834 (h!30246 stack!12)) e!1378275 tp!670524))))

(declare-fun res!929067 () Bool)

(assert (=> start!209036 (=> (not res!929067) (not e!1378286))))

(declare-fun valid!2251 (CacheFurthestNullable!1014) Bool)

(assert (=> start!209036 (= res!929067 (valid!2251 cacheFurthestNullable!118))))

(assert (=> start!209036 e!1378286))

(declare-fun inv!32835 (CacheFurthestNullable!1014) Bool)

(assert (=> start!209036 (and (inv!32835 cacheFurthestNullable!118) e!1378283)))

(assert (=> start!209036 true))

(declare-fun e!1378278 () Bool)

(assert (=> start!209036 (and (inv!32833 totalInput!880) e!1378278)))

(assert (=> start!209036 e!1378287))

(declare-fun b!2154892 () Bool)

(assert (=> b!2154892 (= e!1378286 (not (valid!2251 (_2!14606 e!1378277))))))

(declare-fun c!341475 () Bool)

(declare-fun totalInputSize!324 () Int)

(declare-fun counter!1 () Int)

(assert (=> b!2154892 (= c!341475 (and (> totalInputSize!324 1048576) (not (= (- counter!1 (* 10 (ite (>= counter!1 0) (div counter!1 10) (- (div (- counter!1) 10))))) 0))))))

(declare-fun b!2154893 () Bool)

(declare-fun tp!670528 () Bool)

(assert (=> b!2154893 (= e!1378274 tp!670528)))

(declare-fun b!2154894 () Bool)

(declare-fun res!929066 () Bool)

(assert (=> b!2154894 (=> (not res!929066) (not e!1378286))))

(assert (=> b!2154894 (= res!929066 (= (totalInput!3340 cacheFurthestNullable!118) totalInput!880))))

(declare-fun b!2154895 () Bool)

(declare-fun res!929070 () Bool)

(assert (=> b!2154895 (=> (not res!929070) (not e!1378286))))

(assert (=> b!2154895 (= res!929070 (not ((_ is Nil!24845) stack!12)))))

(declare-fun mapIsEmpty!13772 () Bool)

(assert (=> mapIsEmpty!13772 mapRes!13772))

(declare-fun b!2154896 () Bool)

(declare-fun tp!670532 () Bool)

(assert (=> b!2154896 (= e!1378285 (and (inv!32832 (c!341477 (totalInput!3340 cacheFurthestNullable!118))) tp!670532))))

(declare-fun b!2154897 () Bool)

(declare-fun Unit!37940 () Unit!37938)

(assert (=> b!2154897 (= e!1378277 (tuple2!24561 Unit!37940 cacheFurthestNullable!118))))

(declare-fun tp!670530 () Bool)

(declare-fun tp!670534 () Bool)

(declare-fun array_inv!3176 (array!9911) Bool)

(declare-fun array_inv!3177 (array!9913) Bool)

(assert (=> b!2154898 (= e!1378284 (and tp!670531 tp!670530 tp!670534 (array_inv!3176 (_keys!3211 (v!29291 (underlying!6023 (v!29292 (underlying!6024 (cache!3209 cacheFurthestNullable!118))))))) (array_inv!3177 (_values!3194 (v!29291 (underlying!6023 (v!29292 (underlying!6024 (cache!3209 cacheFurthestNullable!118))))))) e!1378279))))

(declare-fun b!2154899 () Bool)

(assert (=> b!2154899 (= e!1378276 e!1378272)))

(declare-fun mapNonEmpty!13772 () Bool)

(declare-fun tp!670535 () Bool)

(declare-fun tp!670527 () Bool)

(assert (=> mapNonEmpty!13772 (= mapRes!13772 (and tp!670535 tp!670527))))

(declare-fun mapRest!13772 () (Array (_ BitVec 32) List!24930))

(declare-fun mapKey!13772 () (_ BitVec 32))

(declare-fun mapValue!13772 () List!24930)

(assert (=> mapNonEmpty!13772 (= (arr!4425 (_values!3194 (v!29291 (underlying!6023 (v!29292 (underlying!6024 (cache!3209 cacheFurthestNullable!118))))))) (store mapRest!13772 mapKey!13772 mapValue!13772))))

(declare-fun b!2154900 () Bool)

(declare-fun tp!670526 () Bool)

(assert (=> b!2154900 (= e!1378278 (and (inv!32832 (c!341477 totalInput!880)) tp!670526))))

(assert (= (and start!209036 res!929067) b!2154894))

(assert (= (and b!2154894 res!929066) b!2154888))

(assert (= (and b!2154888 res!929068) b!2154891))

(assert (= (and b!2154891 res!929069) b!2154895))

(assert (= (and b!2154895 res!929070) b!2154892))

(assert (= (and b!2154892 c!341475) b!2154897))

(assert (= (and b!2154892 (not c!341475)) b!2154889))

(assert (= (and b!2154885 condMapEmpty!13772) mapIsEmpty!13772))

(assert (= (and b!2154885 (not condMapEmpty!13772)) mapNonEmpty!13772))

(assert (= b!2154898 b!2154885))

(assert (= b!2154883 b!2154898))

(assert (= b!2154899 b!2154883))

(assert (= (and b!2154887 ((_ is LongMap!2914) (v!29292 (underlying!6024 (cache!3209 cacheFurthestNullable!118))))) b!2154899))

(assert (= b!2154881 b!2154887))

(assert (= (and b!2154890 ((_ is HashMap!2828) (cache!3209 cacheFurthestNullable!118))) b!2154881))

(assert (= b!2154890 b!2154896))

(assert (= start!209036 b!2154890))

(assert (= start!209036 b!2154900))

(assert (= (and b!2154886 condSetEmpty!17536) setIsEmpty!17536))

(assert (= (and b!2154886 (not condSetEmpty!17536)) setNonEmpty!17536))

(assert (= setNonEmpty!17536 b!2154893))

(assert (= b!2154886 b!2154884))

(assert (= b!2154882 b!2154886))

(assert (= (and start!209036 ((_ is Cons!24845) stack!12)) b!2154882))

(declare-fun m!2596061 () Bool)

(assert (=> b!2154890 m!2596061))

(declare-fun m!2596063 () Bool)

(assert (=> mapNonEmpty!13772 m!2596063))

(declare-fun m!2596065 () Bool)

(assert (=> b!2154884 m!2596065))

(declare-fun m!2596067 () Bool)

(assert (=> b!2154882 m!2596067))

(declare-fun m!2596069 () Bool)

(assert (=> b!2154889 m!2596069))

(declare-fun m!2596071 () Bool)

(assert (=> b!2154889 m!2596071))

(declare-fun m!2596073 () Bool)

(assert (=> b!2154888 m!2596073))

(declare-fun m!2596075 () Bool)

(assert (=> b!2154891 m!2596075))

(declare-fun m!2596077 () Bool)

(assert (=> start!209036 m!2596077))

(declare-fun m!2596079 () Bool)

(assert (=> start!209036 m!2596079))

(declare-fun m!2596081 () Bool)

(assert (=> start!209036 m!2596081))

(declare-fun m!2596083 () Bool)

(assert (=> setNonEmpty!17536 m!2596083))

(declare-fun m!2596085 () Bool)

(assert (=> b!2154896 m!2596085))

(declare-fun m!2596087 () Bool)

(assert (=> b!2154900 m!2596087))

(declare-fun m!2596089 () Bool)

(assert (=> b!2154892 m!2596089))

(declare-fun m!2596091 () Bool)

(assert (=> b!2154886 m!2596091))

(declare-fun m!2596093 () Bool)

(assert (=> b!2154898 m!2596093))

(declare-fun m!2596095 () Bool)

(assert (=> b!2154898 m!2596095))

(check-sat (not b!2154891) (not b!2154888) (not b!2154889) (not b!2154890) (not b!2154882) (not b!2154885) (not b!2154893) b_and!173261 (not mapNonEmpty!13772) (not b_next!64349) (not b!2154898) (not b!2154884) (not start!209036) (not b!2154892) b_and!173263 (not b!2154886) (not b!2154900) (not setNonEmpty!17536) (not b!2154896) (not b_next!64351))
(check-sat b_and!173263 b_and!173261 (not b_next!64351) (not b_next!64349))
(get-model)

(declare-fun d!646166 () Bool)

(declare-fun c!341480 () Bool)

(assert (=> d!646166 (= c!341480 ((_ is Node!8049) (c!341477 (totalInput!3339 (h!30246 stack!12)))))))

(declare-fun e!1378292 () Bool)

(assert (=> d!646166 (= (inv!32832 (c!341477 (totalInput!3339 (h!30246 stack!12)))) e!1378292)))

(declare-fun b!2154911 () Bool)

(declare-fun inv!32836 (Conc!8049) Bool)

(assert (=> b!2154911 (= e!1378292 (inv!32836 (c!341477 (totalInput!3339 (h!30246 stack!12)))))))

(declare-fun b!2154912 () Bool)

(declare-fun e!1378293 () Bool)

(assert (=> b!2154912 (= e!1378292 e!1378293)))

(declare-fun res!929074 () Bool)

(assert (=> b!2154912 (= res!929074 (not ((_ is Leaf!11773) (c!341477 (totalInput!3339 (h!30246 stack!12))))))))

(assert (=> b!2154912 (=> res!929074 e!1378293)))

(declare-fun b!2154913 () Bool)

(declare-fun inv!32837 (Conc!8049) Bool)

(assert (=> b!2154913 (= e!1378293 (inv!32837 (c!341477 (totalInput!3339 (h!30246 stack!12)))))))

(assert (= (and d!646166 c!341480) b!2154911))

(assert (= (and d!646166 (not c!341480)) b!2154912))

(assert (= (and b!2154912 (not res!929074)) b!2154913))

(declare-fun m!2596097 () Bool)

(assert (=> b!2154911 m!2596097))

(declare-fun m!2596099 () Bool)

(assert (=> b!2154913 m!2596099))

(assert (=> b!2154884 d!646166))

(declare-fun d!646168 () Bool)

(declare-fun validCacheMapFurthestNullable!167 (MutableMap!2828 BalanceConc!15860) Bool)

(assert (=> d!646168 (= (valid!2251 (_2!14606 e!1378277)) (validCacheMapFurthestNullable!167 (cache!3209 (_2!14606 e!1378277)) (totalInput!3340 (_2!14606 e!1378277))))))

(declare-fun bs!445796 () Bool)

(assert (= bs!445796 d!646168))

(declare-fun m!2596101 () Bool)

(assert (=> bs!445796 m!2596101))

(assert (=> b!2154892 d!646168))

(declare-fun b!2154926 () Bool)

(declare-fun res!929092 () Bool)

(declare-fun e!1378299 () Bool)

(assert (=> b!2154926 (=> (not res!929092) (not e!1378299))))

(declare-fun size!19417 (BalanceConc!15860) Int)

(assert (=> b!2154926 (= res!929092 (<= (from!2828 (h!30246 stack!12)) (size!19417 (totalInput!3339 (h!30246 stack!12)))))))

(declare-fun b!2154927 () Bool)

(declare-fun furthestNullablePosition!130 ((InoxSet Context!2966) Int BalanceConc!15860 Int Int) Int)

(assert (=> b!2154927 (= e!1378299 (= (res!929071 (h!30246 stack!12)) (furthestNullablePosition!130 (z!5987 (h!30246 stack!12)) (from!2828 (h!30246 stack!12)) (totalInput!3339 (h!30246 stack!12)) (size!19417 (totalInput!3339 (h!30246 stack!12))) (lastNullablePos!515 (h!30246 stack!12)))))))

(declare-fun b!2154928 () Bool)

(declare-fun res!929087 () Bool)

(assert (=> b!2154928 (=> (not res!929087) (not e!1378299))))

(assert (=> b!2154928 (= res!929087 (= (size!19417 (totalInput!3339 (h!30246 stack!12))) (size!19417 (totalInput!3339 (h!30246 stack!12)))))))

(declare-fun b!2154930 () Bool)

(declare-fun e!1378298 () Bool)

(assert (=> b!2154930 (= e!1378298 (= (lastNullablePos!515 (h!30246 stack!12)) (- (from!2828 (h!30246 stack!12)) 1)))))

(declare-fun b!2154931 () Bool)

(declare-fun res!929088 () Bool)

(assert (=> b!2154931 (=> (not res!929088) (not e!1378299))))

(assert (=> b!2154931 (= res!929088 e!1378298)))

(declare-fun res!929089 () Bool)

(assert (=> b!2154931 (=> res!929089 e!1378298)))

(declare-fun nullableZipper!218 ((InoxSet Context!2966)) Bool)

(assert (=> b!2154931 (= res!929089 (not (nullableZipper!218 (z!5987 (h!30246 stack!12)))))))

(declare-fun b!2154929 () Bool)

(declare-fun res!929090 () Bool)

(assert (=> b!2154929 (=> (not res!929090) (not e!1378299))))

(assert (=> b!2154929 (= res!929090 (and (>= (lastNullablePos!515 (h!30246 stack!12)) (- 1)) (< (lastNullablePos!515 (h!30246 stack!12)) (from!2828 (h!30246 stack!12)))))))

(declare-fun d!646170 () Bool)

(declare-fun res!929091 () Bool)

(assert (=> d!646170 (=> (not res!929091) (not e!1378299))))

(assert (=> d!646170 (= res!929091 (>= (from!2828 (h!30246 stack!12)) 0))))

(assert (=> d!646170 (= (inv!32834 (h!30246 stack!12)) e!1378299)))

(assert (= (and d!646170 res!929091) b!2154926))

(assert (= (and b!2154926 res!929092) b!2154928))

(assert (= (and b!2154928 res!929087) b!2154929))

(assert (= (and b!2154929 res!929090) b!2154931))

(assert (= (and b!2154931 (not res!929089)) b!2154930))

(assert (= (and b!2154931 res!929088) b!2154927))

(declare-fun m!2596103 () Bool)

(assert (=> b!2154926 m!2596103))

(assert (=> b!2154927 m!2596103))

(assert (=> b!2154927 m!2596103))

(declare-fun m!2596105 () Bool)

(assert (=> b!2154927 m!2596105))

(assert (=> b!2154928 m!2596103))

(declare-fun m!2596107 () Bool)

(assert (=> b!2154931 m!2596107))

(assert (=> b!2154882 d!646170))

(declare-fun d!646172 () Bool)

(declare-fun isBalanced!2496 (Conc!8049) Bool)

(assert (=> d!646172 (= (inv!32833 (totalInput!3339 (h!30246 stack!12))) (isBalanced!2496 (c!341477 (totalInput!3339 (h!30246 stack!12)))))))

(declare-fun bs!445797 () Bool)

(assert (= bs!445797 d!646172))

(declare-fun m!2596109 () Bool)

(assert (=> bs!445797 m!2596109))

(assert (=> b!2154886 d!646172))

(declare-fun d!646174 () Bool)

(assert (=> d!646174 (= (valid!2251 cacheFurthestNullable!118) (validCacheMapFurthestNullable!167 (cache!3209 cacheFurthestNullable!118) (totalInput!3340 cacheFurthestNullable!118)))))

(declare-fun bs!445798 () Bool)

(assert (= bs!445798 d!646174))

(declare-fun m!2596111 () Bool)

(assert (=> bs!445798 m!2596111))

(assert (=> start!209036 d!646174))

(declare-fun d!646176 () Bool)

(declare-fun res!929095 () Bool)

(declare-fun e!1378302 () Bool)

(assert (=> d!646176 (=> (not res!929095) (not e!1378302))))

(assert (=> d!646176 (= res!929095 ((_ is HashMap!2828) (cache!3209 cacheFurthestNullable!118)))))

(assert (=> d!646176 (= (inv!32835 cacheFurthestNullable!118) e!1378302)))

(declare-fun b!2154934 () Bool)

(assert (=> b!2154934 (= e!1378302 (validCacheMapFurthestNullable!167 (cache!3209 cacheFurthestNullable!118) (totalInput!3340 cacheFurthestNullable!118)))))

(assert (= (and d!646176 res!929095) b!2154934))

(assert (=> b!2154934 m!2596111))

(assert (=> start!209036 d!646176))

(declare-fun d!646178 () Bool)

(assert (=> d!646178 (= (inv!32833 totalInput!880) (isBalanced!2496 (c!341477 totalInput!880)))))

(declare-fun bs!445799 () Bool)

(assert (= bs!445799 d!646178))

(declare-fun m!2596113 () Bool)

(assert (=> bs!445799 m!2596113))

(assert (=> start!209036 d!646178))

(declare-fun d!646180 () Bool)

(assert (=> d!646180 (= (array_inv!3176 (_keys!3211 (v!29291 (underlying!6023 (v!29292 (underlying!6024 (cache!3209 cacheFurthestNullable!118))))))) (bvsge (size!19415 (_keys!3211 (v!29291 (underlying!6023 (v!29292 (underlying!6024 (cache!3209 cacheFurthestNullable!118))))))) #b00000000000000000000000000000000))))

(assert (=> b!2154898 d!646180))

(declare-fun d!646182 () Bool)

(assert (=> d!646182 (= (array_inv!3177 (_values!3194 (v!29291 (underlying!6023 (v!29292 (underlying!6024 (cache!3209 cacheFurthestNullable!118))))))) (bvsge (size!19416 (_values!3194 (v!29291 (underlying!6023 (v!29292 (underlying!6024 (cache!3209 cacheFurthestNullable!118))))))) #b00000000000000000000000000000000))))

(assert (=> b!2154898 d!646182))

(declare-fun d!646184 () Bool)

(declare-fun e!1378305 () Bool)

(assert (=> d!646184 e!1378305))

(declare-fun res!929099 () Bool)

(assert (=> d!646184 (=> (not res!929099) (not e!1378305))))

(declare-fun lt!801502 () tuple2!24560)

(assert (=> d!646184 (= res!929099 (validCacheMapFurthestNullable!167 (cache!3209 (_2!14606 lt!801502)) (totalInput!3340 (_2!14606 lt!801502))))))

(declare-fun choose!12708 (CacheFurthestNullable!1014 (InoxSet Context!2966) Int Int Int BalanceConc!15860) tuple2!24560)

(assert (=> d!646184 (= lt!801502 (choose!12708 cacheFurthestNullable!118 (z!5987 (h!30246 stack!12)) (from!2828 (h!30246 stack!12)) (lastNullablePos!515 (h!30246 stack!12)) res!17610 totalInput!880))))

(assert (=> d!646184 (= totalInput!880 (totalInput!3340 cacheFurthestNullable!118))))

(assert (=> d!646184 (= (update!91 cacheFurthestNullable!118 (z!5987 (h!30246 stack!12)) (from!2828 (h!30246 stack!12)) (lastNullablePos!515 (h!30246 stack!12)) res!17610 totalInput!880) lt!801502)))

(declare-fun b!2154937 () Bool)

(assert (=> b!2154937 (= e!1378305 (= (totalInput!3340 (_2!14606 lt!801502)) totalInput!880))))

(assert (= (and d!646184 res!929099) b!2154937))

(declare-fun m!2596115 () Bool)

(assert (=> d!646184 m!2596115))

(declare-fun m!2596117 () Bool)

(assert (=> d!646184 m!2596117))

(assert (=> b!2154889 d!646184))

(declare-fun d!646186 () Bool)

(assert (=> d!646186 (valid!2251 cacheFurthestNullable!118)))

(declare-fun Unit!37941 () Unit!37938)

(assert (=> d!646186 (= (lemmaInvariant!398 cacheFurthestNullable!118) Unit!37941)))

(declare-fun bs!445800 () Bool)

(assert (= bs!445800 d!646186))

(assert (=> bs!445800 m!2596077))

(assert (=> b!2154889 d!646186))

(declare-fun d!646188 () Bool)

(declare-fun res!929104 () Bool)

(declare-fun e!1378310 () Bool)

(assert (=> d!646188 (=> res!929104 e!1378310)))

(assert (=> d!646188 (= res!929104 ((_ is Nil!24845) stack!12))))

(assert (=> d!646188 (= (forall!5098 stack!12 lambda!81271) e!1378310)))

(declare-fun b!2154942 () Bool)

(declare-fun e!1378311 () Bool)

(assert (=> b!2154942 (= e!1378310 e!1378311)))

(declare-fun res!929105 () Bool)

(assert (=> b!2154942 (=> (not res!929105) (not e!1378311))))

(declare-fun dynLambda!11410 (Int StackFrame!360) Bool)

(assert (=> b!2154942 (= res!929105 (dynLambda!11410 lambda!81271 (h!30246 stack!12)))))

(declare-fun b!2154943 () Bool)

(assert (=> b!2154943 (= e!1378311 (forall!5098 (t!197477 stack!12) lambda!81271))))

(assert (= (and d!646188 (not res!929104)) b!2154942))

(assert (= (and b!2154942 res!929105) b!2154943))

(declare-fun b_lambda!70929 () Bool)

(assert (=> (not b_lambda!70929) (not b!2154942)))

(declare-fun m!2596119 () Bool)

(assert (=> b!2154942 m!2596119))

(declare-fun m!2596121 () Bool)

(assert (=> b!2154943 m!2596121))

(assert (=> b!2154888 d!646188))

(declare-fun d!646190 () Bool)

(declare-fun c!341481 () Bool)

(assert (=> d!646190 (= c!341481 ((_ is Node!8049) (c!341477 (totalInput!3340 cacheFurthestNullable!118))))))

(declare-fun e!1378312 () Bool)

(assert (=> d!646190 (= (inv!32832 (c!341477 (totalInput!3340 cacheFurthestNullable!118))) e!1378312)))

(declare-fun b!2154944 () Bool)

(assert (=> b!2154944 (= e!1378312 (inv!32836 (c!341477 (totalInput!3340 cacheFurthestNullable!118))))))

(declare-fun b!2154945 () Bool)

(declare-fun e!1378313 () Bool)

(assert (=> b!2154945 (= e!1378312 e!1378313)))

(declare-fun res!929106 () Bool)

(assert (=> b!2154945 (= res!929106 (not ((_ is Leaf!11773) (c!341477 (totalInput!3340 cacheFurthestNullable!118)))))))

(assert (=> b!2154945 (=> res!929106 e!1378313)))

(declare-fun b!2154946 () Bool)

(assert (=> b!2154946 (= e!1378313 (inv!32837 (c!341477 (totalInput!3340 cacheFurthestNullable!118))))))

(assert (= (and d!646190 c!341481) b!2154944))

(assert (= (and d!646190 (not c!341481)) b!2154945))

(assert (= (and b!2154945 (not res!929106)) b!2154946))

(declare-fun m!2596123 () Bool)

(assert (=> b!2154944 m!2596123))

(declare-fun m!2596125 () Bool)

(assert (=> b!2154946 m!2596125))

(assert (=> b!2154896 d!646190))

(declare-fun d!646192 () Bool)

(declare-fun c!341482 () Bool)

(assert (=> d!646192 (= c!341482 ((_ is Node!8049) (c!341477 totalInput!880)))))

(declare-fun e!1378314 () Bool)

(assert (=> d!646192 (= (inv!32832 (c!341477 totalInput!880)) e!1378314)))

(declare-fun b!2154947 () Bool)

(assert (=> b!2154947 (= e!1378314 (inv!32836 (c!341477 totalInput!880)))))

(declare-fun b!2154948 () Bool)

(declare-fun e!1378315 () Bool)

(assert (=> b!2154948 (= e!1378314 e!1378315)))

(declare-fun res!929107 () Bool)

(assert (=> b!2154948 (= res!929107 (not ((_ is Leaf!11773) (c!341477 totalInput!880))))))

(assert (=> b!2154948 (=> res!929107 e!1378315)))

(declare-fun b!2154949 () Bool)

(assert (=> b!2154949 (= e!1378315 (inv!32837 (c!341477 totalInput!880)))))

(assert (= (and d!646192 c!341482) b!2154947))

(assert (= (and d!646192 (not c!341482)) b!2154948))

(assert (= (and b!2154948 (not res!929107)) b!2154949))

(declare-fun m!2596127 () Bool)

(assert (=> b!2154947 m!2596127))

(declare-fun m!2596129 () Bool)

(assert (=> b!2154949 m!2596129))

(assert (=> b!2154900 d!646192))

(declare-fun d!646194 () Bool)

(declare-fun res!929108 () Bool)

(declare-fun e!1378316 () Bool)

(assert (=> d!646194 (=> res!929108 e!1378316)))

(assert (=> d!646194 (= res!929108 ((_ is Nil!24845) stack!12))))

(assert (=> d!646194 (= (forall!5098 stack!12 lambda!81272) e!1378316)))

(declare-fun b!2154950 () Bool)

(declare-fun e!1378317 () Bool)

(assert (=> b!2154950 (= e!1378316 e!1378317)))

(declare-fun res!929109 () Bool)

(assert (=> b!2154950 (=> (not res!929109) (not e!1378317))))

(assert (=> b!2154950 (= res!929109 (dynLambda!11410 lambda!81272 (h!30246 stack!12)))))

(declare-fun b!2154951 () Bool)

(assert (=> b!2154951 (= e!1378317 (forall!5098 (t!197477 stack!12) lambda!81272))))

(assert (= (and d!646194 (not res!929108)) b!2154950))

(assert (= (and b!2154950 res!929109) b!2154951))

(declare-fun b_lambda!70931 () Bool)

(assert (=> (not b_lambda!70931) (not b!2154950)))

(declare-fun m!2596131 () Bool)

(assert (=> b!2154950 m!2596131))

(declare-fun m!2596133 () Bool)

(assert (=> b!2154951 m!2596133))

(assert (=> b!2154891 d!646194))

(declare-fun d!646196 () Bool)

(declare-fun lambda!81275 () Int)

(declare-fun forall!5099 (List!24927 Int) Bool)

(assert (=> d!646196 (= (inv!32831 setElem!17536) (forall!5099 (exprs!1983 setElem!17536) lambda!81275))))

(declare-fun bs!445801 () Bool)

(assert (= bs!445801 d!646196))

(declare-fun m!2596135 () Bool)

(assert (=> bs!445801 m!2596135))

(assert (=> setNonEmpty!17536 d!646196))

(declare-fun d!646198 () Bool)

(assert (=> d!646198 (= (inv!32833 (totalInput!3340 cacheFurthestNullable!118)) (isBalanced!2496 (c!341477 (totalInput!3340 cacheFurthestNullable!118))))))

(declare-fun bs!445802 () Bool)

(assert (= bs!445802 d!646198))

(declare-fun m!2596137 () Bool)

(assert (=> bs!445802 m!2596137))

(assert (=> b!2154890 d!646198))

(declare-fun setRes!17539 () Bool)

(declare-fun e!1378323 () Bool)

(declare-fun setNonEmpty!17539 () Bool)

(declare-fun setElem!17539 () Context!2966)

(declare-fun tp!670542 () Bool)

(assert (=> setNonEmpty!17539 (= setRes!17539 (and tp!670542 (inv!32831 setElem!17539) e!1378323))))

(declare-fun setRest!17539 () (InoxSet Context!2966))

(assert (=> setNonEmpty!17539 (= (_1!14604 (_1!14605 (h!30247 (zeroValue!3172 (v!29291 (underlying!6023 (v!29292 (underlying!6024 (cache!3209 cacheFurthestNullable!118))))))))) ((_ map or) (store ((as const (Array Context!2966 Bool)) false) setElem!17539 true) setRest!17539))))

(declare-fun b!2154958 () Bool)

(declare-fun e!1378322 () Bool)

(declare-fun tp!670544 () Bool)

(assert (=> b!2154958 (= e!1378322 (and setRes!17539 tp!670544))))

(declare-fun condSetEmpty!17539 () Bool)

(assert (=> b!2154958 (= condSetEmpty!17539 (= (_1!14604 (_1!14605 (h!30247 (zeroValue!3172 (v!29291 (underlying!6023 (v!29292 (underlying!6024 (cache!3209 cacheFurthestNullable!118))))))))) ((as const (Array Context!2966 Bool)) false)))))

(declare-fun b!2154959 () Bool)

(declare-fun tp!670543 () Bool)

(assert (=> b!2154959 (= e!1378323 tp!670543)))

(declare-fun setIsEmpty!17539 () Bool)

(assert (=> setIsEmpty!17539 setRes!17539))

(assert (=> b!2154898 (= tp!670530 e!1378322)))

(assert (= (and b!2154958 condSetEmpty!17539) setIsEmpty!17539))

(assert (= (and b!2154958 (not condSetEmpty!17539)) setNonEmpty!17539))

(assert (= setNonEmpty!17539 b!2154959))

(assert (= (and b!2154898 ((_ is Cons!24846) (zeroValue!3172 (v!29291 (underlying!6023 (v!29292 (underlying!6024 (cache!3209 cacheFurthestNullable!118)))))))) b!2154958))

(declare-fun m!2596139 () Bool)

(assert (=> setNonEmpty!17539 m!2596139))

(declare-fun setElem!17540 () Context!2966)

(declare-fun setRes!17540 () Bool)

(declare-fun tp!670545 () Bool)

(declare-fun setNonEmpty!17540 () Bool)

(declare-fun e!1378325 () Bool)

(assert (=> setNonEmpty!17540 (= setRes!17540 (and tp!670545 (inv!32831 setElem!17540) e!1378325))))

(declare-fun setRest!17540 () (InoxSet Context!2966))

(assert (=> setNonEmpty!17540 (= (_1!14604 (_1!14605 (h!30247 (minValue!3172 (v!29291 (underlying!6023 (v!29292 (underlying!6024 (cache!3209 cacheFurthestNullable!118))))))))) ((_ map or) (store ((as const (Array Context!2966 Bool)) false) setElem!17540 true) setRest!17540))))

(declare-fun b!2154960 () Bool)

(declare-fun e!1378324 () Bool)

(declare-fun tp!670547 () Bool)

(assert (=> b!2154960 (= e!1378324 (and setRes!17540 tp!670547))))

(declare-fun condSetEmpty!17540 () Bool)

(assert (=> b!2154960 (= condSetEmpty!17540 (= (_1!14604 (_1!14605 (h!30247 (minValue!3172 (v!29291 (underlying!6023 (v!29292 (underlying!6024 (cache!3209 cacheFurthestNullable!118))))))))) ((as const (Array Context!2966 Bool)) false)))))

(declare-fun b!2154961 () Bool)

(declare-fun tp!670546 () Bool)

(assert (=> b!2154961 (= e!1378325 tp!670546)))

(declare-fun setIsEmpty!17540 () Bool)

(assert (=> setIsEmpty!17540 setRes!17540))

(assert (=> b!2154898 (= tp!670534 e!1378324)))

(assert (= (and b!2154960 condSetEmpty!17540) setIsEmpty!17540))

(assert (= (and b!2154960 (not condSetEmpty!17540)) setNonEmpty!17540))

(assert (= setNonEmpty!17540 b!2154961))

(assert (= (and b!2154898 ((_ is Cons!24846) (minValue!3172 (v!29291 (underlying!6023 (v!29292 (underlying!6024 (cache!3209 cacheFurthestNullable!118)))))))) b!2154960))

(declare-fun m!2596141 () Bool)

(assert (=> setNonEmpty!17540 m!2596141))

(declare-fun e!1378330 () Bool)

(declare-fun b!2154970 () Bool)

(declare-fun tp!670555 () Bool)

(declare-fun tp!670556 () Bool)

(assert (=> b!2154970 (= e!1378330 (and (inv!32832 (left!19116 (c!341477 (totalInput!3339 (h!30246 stack!12))))) tp!670555 (inv!32832 (right!19446 (c!341477 (totalInput!3339 (h!30246 stack!12))))) tp!670556))))

(declare-fun b!2154972 () Bool)

(declare-fun e!1378331 () Bool)

(declare-fun tp!670554 () Bool)

(assert (=> b!2154972 (= e!1378331 tp!670554)))

(declare-fun b!2154971 () Bool)

(declare-fun inv!32838 (IArray!16103) Bool)

(assert (=> b!2154971 (= e!1378330 (and (inv!32838 (xs!10991 (c!341477 (totalInput!3339 (h!30246 stack!12))))) e!1378331))))

(assert (=> b!2154884 (= tp!670529 (and (inv!32832 (c!341477 (totalInput!3339 (h!30246 stack!12)))) e!1378330))))

(assert (= (and b!2154884 ((_ is Node!8049) (c!341477 (totalInput!3339 (h!30246 stack!12))))) b!2154970))

(assert (= b!2154971 b!2154972))

(assert (= (and b!2154884 ((_ is Leaf!11773) (c!341477 (totalInput!3339 (h!30246 stack!12))))) b!2154971))

(declare-fun m!2596143 () Bool)

(assert (=> b!2154970 m!2596143))

(declare-fun m!2596145 () Bool)

(assert (=> b!2154970 m!2596145))

(declare-fun m!2596147 () Bool)

(assert (=> b!2154971 m!2596147))

(assert (=> b!2154884 m!2596065))

(declare-fun b!2154977 () Bool)

(declare-fun e!1378334 () Bool)

(declare-fun tp!670561 () Bool)

(declare-fun tp!670562 () Bool)

(assert (=> b!2154977 (= e!1378334 (and tp!670561 tp!670562))))

(assert (=> b!2154893 (= tp!670528 e!1378334)))

(assert (= (and b!2154893 ((_ is Cons!24843) (exprs!1983 setElem!17536))) b!2154977))

(declare-fun tp!670565 () Bool)

(declare-fun e!1378335 () Bool)

(declare-fun b!2154978 () Bool)

(declare-fun tp!670564 () Bool)

(assert (=> b!2154978 (= e!1378335 (and (inv!32832 (left!19116 (c!341477 (totalInput!3340 cacheFurthestNullable!118)))) tp!670564 (inv!32832 (right!19446 (c!341477 (totalInput!3340 cacheFurthestNullable!118)))) tp!670565))))

(declare-fun b!2154980 () Bool)

(declare-fun e!1378336 () Bool)

(declare-fun tp!670563 () Bool)

(assert (=> b!2154980 (= e!1378336 tp!670563)))

(declare-fun b!2154979 () Bool)

(assert (=> b!2154979 (= e!1378335 (and (inv!32838 (xs!10991 (c!341477 (totalInput!3340 cacheFurthestNullable!118)))) e!1378336))))

(assert (=> b!2154896 (= tp!670532 (and (inv!32832 (c!341477 (totalInput!3340 cacheFurthestNullable!118))) e!1378335))))

(assert (= (and b!2154896 ((_ is Node!8049) (c!341477 (totalInput!3340 cacheFurthestNullable!118)))) b!2154978))

(assert (= b!2154979 b!2154980))

(assert (= (and b!2154896 ((_ is Leaf!11773) (c!341477 (totalInput!3340 cacheFurthestNullable!118)))) b!2154979))

(declare-fun m!2596149 () Bool)

(assert (=> b!2154978 m!2596149))

(declare-fun m!2596151 () Bool)

(assert (=> b!2154978 m!2596151))

(declare-fun m!2596153 () Bool)

(assert (=> b!2154979 m!2596153))

(assert (=> b!2154896 m!2596085))

(declare-fun e!1378347 () Bool)

(assert (=> b!2154882 (= tp!670524 e!1378347)))

(declare-fun b!2154991 () Bool)

(declare-fun e!1378346 () Bool)

(declare-fun tp!670574 () Bool)

(assert (=> b!2154991 (= e!1378346 tp!670574)))

(declare-fun tp!670575 () Bool)

(declare-fun setRes!17543 () Bool)

(declare-fun setElem!17543 () Context!2966)

(declare-fun setNonEmpty!17543 () Bool)

(assert (=> setNonEmpty!17543 (= setRes!17543 (and tp!670575 (inv!32831 setElem!17543) e!1378346))))

(declare-fun setRest!17543 () (InoxSet Context!2966))

(assert (=> setNonEmpty!17543 (= (z!5987 (h!30246 (t!197477 stack!12))) ((_ map or) (store ((as const (Array Context!2966 Bool)) false) setElem!17543 true) setRest!17543))))

(declare-fun b!2154992 () Bool)

(declare-fun e!1378345 () Bool)

(declare-fun tp!670577 () Bool)

(assert (=> b!2154992 (= e!1378347 (and (inv!32834 (h!30246 (t!197477 stack!12))) e!1378345 tp!670577))))

(declare-fun b!2154993 () Bool)

(declare-fun e!1378348 () Bool)

(assert (=> b!2154993 (= e!1378345 (and setRes!17543 (inv!32833 (totalInput!3339 (h!30246 (t!197477 stack!12)))) e!1378348))))

(declare-fun condSetEmpty!17543 () Bool)

(assert (=> b!2154993 (= condSetEmpty!17543 (= (z!5987 (h!30246 (t!197477 stack!12))) ((as const (Array Context!2966 Bool)) false)))))

(declare-fun b!2154994 () Bool)

(declare-fun tp!670576 () Bool)

(assert (=> b!2154994 (= e!1378348 (and (inv!32832 (c!341477 (totalInput!3339 (h!30246 (t!197477 stack!12))))) tp!670576))))

(declare-fun setIsEmpty!17543 () Bool)

(assert (=> setIsEmpty!17543 setRes!17543))

(assert (= (and b!2154993 condSetEmpty!17543) setIsEmpty!17543))

(assert (= (and b!2154993 (not condSetEmpty!17543)) setNonEmpty!17543))

(assert (= setNonEmpty!17543 b!2154991))

(assert (= b!2154993 b!2154994))

(assert (= b!2154992 b!2154993))

(assert (= (and b!2154882 ((_ is Cons!24845) (t!197477 stack!12))) b!2154992))

(declare-fun m!2596155 () Bool)

(assert (=> setNonEmpty!17543 m!2596155))

(declare-fun m!2596157 () Bool)

(assert (=> b!2154992 m!2596157))

(declare-fun m!2596159 () Bool)

(assert (=> b!2154993 m!2596159))

(declare-fun m!2596161 () Bool)

(assert (=> b!2154994 m!2596161))

(declare-fun tp!670579 () Bool)

(declare-fun e!1378349 () Bool)

(declare-fun b!2154995 () Bool)

(declare-fun tp!670580 () Bool)

(assert (=> b!2154995 (= e!1378349 (and (inv!32832 (left!19116 (c!341477 totalInput!880))) tp!670579 (inv!32832 (right!19446 (c!341477 totalInput!880))) tp!670580))))

(declare-fun b!2154997 () Bool)

(declare-fun e!1378350 () Bool)

(declare-fun tp!670578 () Bool)

(assert (=> b!2154997 (= e!1378350 tp!670578)))

(declare-fun b!2154996 () Bool)

(assert (=> b!2154996 (= e!1378349 (and (inv!32838 (xs!10991 (c!341477 totalInput!880))) e!1378350))))

(assert (=> b!2154900 (= tp!670526 (and (inv!32832 (c!341477 totalInput!880)) e!1378349))))

(assert (= (and b!2154900 ((_ is Node!8049) (c!341477 totalInput!880))) b!2154995))

(assert (= b!2154996 b!2154997))

(assert (= (and b!2154900 ((_ is Leaf!11773) (c!341477 totalInput!880))) b!2154996))

(declare-fun m!2596163 () Bool)

(assert (=> b!2154995 m!2596163))

(declare-fun m!2596165 () Bool)

(assert (=> b!2154995 m!2596165))

(declare-fun m!2596167 () Bool)

(assert (=> b!2154996 m!2596167))

(assert (=> b!2154900 m!2596087))

(declare-fun b!2155008 () Bool)

(declare-fun e!1378361 () Bool)

(declare-fun setRes!17548 () Bool)

(declare-fun tp!670600 () Bool)

(assert (=> b!2155008 (= e!1378361 (and setRes!17548 tp!670600))))

(declare-fun condSetEmpty!17548 () Bool)

(declare-fun mapValue!13775 () List!24930)

(assert (=> b!2155008 (= condSetEmpty!17548 (= (_1!14604 (_1!14605 (h!30247 mapValue!13775))) ((as const (Array Context!2966 Bool)) false)))))

(declare-fun b!2155009 () Bool)

(declare-fun e!1378360 () Bool)

(declare-fun tp!670601 () Bool)

(assert (=> b!2155009 (= e!1378360 tp!670601)))

(declare-fun setElem!17548 () Context!2966)

(declare-fun setNonEmpty!17548 () Bool)

(declare-fun e!1378359 () Bool)

(declare-fun tp!670598 () Bool)

(assert (=> setNonEmpty!17548 (= setRes!17548 (and tp!670598 (inv!32831 setElem!17548) e!1378359))))

(declare-fun setRest!17548 () (InoxSet Context!2966))

(assert (=> setNonEmpty!17548 (= (_1!14604 (_1!14605 (h!30247 mapValue!13775))) ((_ map or) (store ((as const (Array Context!2966 Bool)) false) setElem!17548 true) setRest!17548))))

(declare-fun setIsEmpty!17548 () Bool)

(declare-fun setRes!17549 () Bool)

(assert (=> setIsEmpty!17548 setRes!17549))

(declare-fun tp!670597 () Bool)

(declare-fun setElem!17549 () Context!2966)

(declare-fun setNonEmpty!17549 () Bool)

(assert (=> setNonEmpty!17549 (= setRes!17549 (and tp!670597 (inv!32831 setElem!17549) e!1378360))))

(declare-fun mapDefault!13775 () List!24930)

(declare-fun setRest!17549 () (InoxSet Context!2966))

(assert (=> setNonEmpty!17549 (= (_1!14604 (_1!14605 (h!30247 mapDefault!13775))) ((_ map or) (store ((as const (Array Context!2966 Bool)) false) setElem!17549 true) setRest!17549))))

(declare-fun mapIsEmpty!13775 () Bool)

(declare-fun mapRes!13775 () Bool)

(assert (=> mapIsEmpty!13775 mapRes!13775))

(declare-fun setIsEmpty!17549 () Bool)

(assert (=> setIsEmpty!17549 setRes!17548))

(declare-fun mapNonEmpty!13775 () Bool)

(declare-fun tp!670595 () Bool)

(assert (=> mapNonEmpty!13775 (= mapRes!13775 (and tp!670595 e!1378361))))

(declare-fun mapKey!13775 () (_ BitVec 32))

(declare-fun mapRest!13775 () (Array (_ BitVec 32) List!24930))

(assert (=> mapNonEmpty!13775 (= mapRest!13772 (store mapRest!13775 mapKey!13775 mapValue!13775))))

(declare-fun condMapEmpty!13775 () Bool)

(assert (=> mapNonEmpty!13772 (= condMapEmpty!13775 (= mapRest!13772 ((as const (Array (_ BitVec 32) List!24930)) mapDefault!13775)))))

(declare-fun e!1378362 () Bool)

(assert (=> mapNonEmpty!13772 (= tp!670535 (and e!1378362 mapRes!13775))))

(declare-fun b!2155010 () Bool)

(declare-fun tp!670599 () Bool)

(assert (=> b!2155010 (= e!1378359 tp!670599)))

(declare-fun b!2155011 () Bool)

(declare-fun tp!670596 () Bool)

(assert (=> b!2155011 (= e!1378362 (and setRes!17549 tp!670596))))

(declare-fun condSetEmpty!17549 () Bool)

(assert (=> b!2155011 (= condSetEmpty!17549 (= (_1!14604 (_1!14605 (h!30247 mapDefault!13775))) ((as const (Array Context!2966 Bool)) false)))))

(assert (= (and mapNonEmpty!13772 condMapEmpty!13775) mapIsEmpty!13775))

(assert (= (and mapNonEmpty!13772 (not condMapEmpty!13775)) mapNonEmpty!13775))

(assert (= (and b!2155008 condSetEmpty!17548) setIsEmpty!17549))

(assert (= (and b!2155008 (not condSetEmpty!17548)) setNonEmpty!17548))

(assert (= setNonEmpty!17548 b!2155010))

(assert (= (and mapNonEmpty!13775 ((_ is Cons!24846) mapValue!13775)) b!2155008))

(assert (= (and b!2155011 condSetEmpty!17549) setIsEmpty!17548))

(assert (= (and b!2155011 (not condSetEmpty!17549)) setNonEmpty!17549))

(assert (= setNonEmpty!17549 b!2155009))

(assert (= (and mapNonEmpty!13772 ((_ is Cons!24846) mapDefault!13775)) b!2155011))

(declare-fun m!2596169 () Bool)

(assert (=> setNonEmpty!17548 m!2596169))

(declare-fun m!2596171 () Bool)

(assert (=> setNonEmpty!17549 m!2596171))

(declare-fun m!2596173 () Bool)

(assert (=> mapNonEmpty!13775 m!2596173))

(declare-fun setElem!17550 () Context!2966)

(declare-fun setRes!17550 () Bool)

(declare-fun tp!670602 () Bool)

(declare-fun setNonEmpty!17550 () Bool)

(declare-fun e!1378364 () Bool)

(assert (=> setNonEmpty!17550 (= setRes!17550 (and tp!670602 (inv!32831 setElem!17550) e!1378364))))

(declare-fun setRest!17550 () (InoxSet Context!2966))

(assert (=> setNonEmpty!17550 (= (_1!14604 (_1!14605 (h!30247 mapValue!13772))) ((_ map or) (store ((as const (Array Context!2966 Bool)) false) setElem!17550 true) setRest!17550))))

(declare-fun b!2155012 () Bool)

(declare-fun e!1378363 () Bool)

(declare-fun tp!670604 () Bool)

(assert (=> b!2155012 (= e!1378363 (and setRes!17550 tp!670604))))

(declare-fun condSetEmpty!17550 () Bool)

(assert (=> b!2155012 (= condSetEmpty!17550 (= (_1!14604 (_1!14605 (h!30247 mapValue!13772))) ((as const (Array Context!2966 Bool)) false)))))

(declare-fun b!2155013 () Bool)

(declare-fun tp!670603 () Bool)

(assert (=> b!2155013 (= e!1378364 tp!670603)))

(declare-fun setIsEmpty!17550 () Bool)

(assert (=> setIsEmpty!17550 setRes!17550))

(assert (=> mapNonEmpty!13772 (= tp!670527 e!1378363)))

(assert (= (and b!2155012 condSetEmpty!17550) setIsEmpty!17550))

(assert (= (and b!2155012 (not condSetEmpty!17550)) setNonEmpty!17550))

(assert (= setNonEmpty!17550 b!2155013))

(assert (= (and mapNonEmpty!13772 ((_ is Cons!24846) mapValue!13772)) b!2155012))

(declare-fun m!2596175 () Bool)

(assert (=> setNonEmpty!17550 m!2596175))

(declare-fun condSetEmpty!17553 () Bool)

(assert (=> setNonEmpty!17536 (= condSetEmpty!17553 (= setRest!17536 ((as const (Array Context!2966 Bool)) false)))))

(declare-fun setRes!17553 () Bool)

(assert (=> setNonEmpty!17536 (= tp!670533 setRes!17553)))

(declare-fun setIsEmpty!17553 () Bool)

(assert (=> setIsEmpty!17553 setRes!17553))

(declare-fun setElem!17553 () Context!2966)

(declare-fun setNonEmpty!17553 () Bool)

(declare-fun e!1378367 () Bool)

(declare-fun tp!670609 () Bool)

(assert (=> setNonEmpty!17553 (= setRes!17553 (and tp!670609 (inv!32831 setElem!17553) e!1378367))))

(declare-fun setRest!17553 () (InoxSet Context!2966))

(assert (=> setNonEmpty!17553 (= setRest!17536 ((_ map or) (store ((as const (Array Context!2966 Bool)) false) setElem!17553 true) setRest!17553))))

(declare-fun b!2155018 () Bool)

(declare-fun tp!670610 () Bool)

(assert (=> b!2155018 (= e!1378367 tp!670610)))

(assert (= (and setNonEmpty!17536 condSetEmpty!17553) setIsEmpty!17553))

(assert (= (and setNonEmpty!17536 (not condSetEmpty!17553)) setNonEmpty!17553))

(assert (= setNonEmpty!17553 b!2155018))

(declare-fun m!2596177 () Bool)

(assert (=> setNonEmpty!17553 m!2596177))

(declare-fun setElem!17554 () Context!2966)

(declare-fun setRes!17554 () Bool)

(declare-fun setNonEmpty!17554 () Bool)

(declare-fun e!1378369 () Bool)

(declare-fun tp!670611 () Bool)

(assert (=> setNonEmpty!17554 (= setRes!17554 (and tp!670611 (inv!32831 setElem!17554) e!1378369))))

(declare-fun setRest!17554 () (InoxSet Context!2966))

(assert (=> setNonEmpty!17554 (= (_1!14604 (_1!14605 (h!30247 mapDefault!13772))) ((_ map or) (store ((as const (Array Context!2966 Bool)) false) setElem!17554 true) setRest!17554))))

(declare-fun b!2155019 () Bool)

(declare-fun e!1378368 () Bool)

(declare-fun tp!670613 () Bool)

(assert (=> b!2155019 (= e!1378368 (and setRes!17554 tp!670613))))

(declare-fun condSetEmpty!17554 () Bool)

(assert (=> b!2155019 (= condSetEmpty!17554 (= (_1!14604 (_1!14605 (h!30247 mapDefault!13772))) ((as const (Array Context!2966 Bool)) false)))))

(declare-fun b!2155020 () Bool)

(declare-fun tp!670612 () Bool)

(assert (=> b!2155020 (= e!1378369 tp!670612)))

(declare-fun setIsEmpty!17554 () Bool)

(assert (=> setIsEmpty!17554 setRes!17554))

(assert (=> b!2154885 (= tp!670523 e!1378368)))

(assert (= (and b!2155019 condSetEmpty!17554) setIsEmpty!17554))

(assert (= (and b!2155019 (not condSetEmpty!17554)) setNonEmpty!17554))

(assert (= setNonEmpty!17554 b!2155020))

(assert (= (and b!2154885 ((_ is Cons!24846) mapDefault!13772)) b!2155019))

(declare-fun m!2596179 () Bool)

(assert (=> setNonEmpty!17554 m!2596179))

(declare-fun b_lambda!70933 () Bool)

(assert (= b_lambda!70929 (or b!2154888 b_lambda!70933)))

(declare-fun bs!445803 () Bool)

(declare-fun d!646200 () Bool)

(assert (= bs!445803 (and d!646200 b!2154888)))

(assert (=> bs!445803 (= (dynLambda!11410 lambda!81271 (h!30246 stack!12)) (= (totalInput!3339 (h!30246 stack!12)) totalInput!880))))

(assert (=> b!2154942 d!646200))

(declare-fun b_lambda!70935 () Bool)

(assert (= b_lambda!70931 (or b!2154891 b_lambda!70935)))

(declare-fun bs!445804 () Bool)

(declare-fun d!646202 () Bool)

(assert (= bs!445804 (and d!646202 b!2154891)))

(assert (=> bs!445804 (= (dynLambda!11410 lambda!81272 (h!30246 stack!12)) (= (res!929071 (h!30246 stack!12)) res!17610))))

(assert (=> b!2154950 d!646202))

(check-sat (not b!2154949) (not b!2154977) b_and!173263 (not d!646174) (not d!646184) (not b!2154944) b_and!173261 (not b_next!64349) (not b!2154884) (not b!2155008) (not b!2154943) (not b!2154926) (not b!2155013) (not b!2155012) (not b!2155020) (not b!2154978) (not b!2154951) (not b!2154996) (not d!646196) (not b!2154931) (not d!646172) (not b!2154900) (not b!2154958) (not b!2154960) (not b!2154961) (not b_lambda!70933) (not b!2154997) (not b!2155011) (not b!2154971) (not b!2154913) (not setNonEmpty!17548) (not d!646168) (not d!646178) (not b!2154995) (not b!2155009) (not b!2154947) (not b!2154992) (not b!2154896) (not b_next!64351) (not setNonEmpty!17549) (not setNonEmpty!17539) (not b!2154979) (not d!646198) (not b!2154927) (not mapNonEmpty!13775) (not b_lambda!70935) (not b!2155010) (not b!2154991) (not b!2155018) (not b!2154911) (not b!2154928) (not setNonEmpty!17554) (not b!2154959) (not b!2154980) (not b!2155019) (not setNonEmpty!17550) (not b!2154946) (not setNonEmpty!17540) (not b!2154994) (not d!646186) (not setNonEmpty!17553) (not setNonEmpty!17543) (not b!2154934) (not b!2154993) (not b!2154972) (not b!2154970))
(check-sat b_and!173263 b_and!173261 (not b_next!64351) (not b_next!64349))
