; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!209032 () Bool)

(assert start!209032)

(declare-fun b!2154770 () Bool)

(declare-fun b_free!63637 () Bool)

(declare-fun b_next!64341 () Bool)

(assert (=> b!2154770 (= b_free!63637 (not b_next!64341))))

(declare-fun tp!670454 () Bool)

(declare-fun b_and!173253 () Bool)

(assert (=> b!2154770 (= tp!670454 b_and!173253)))

(declare-fun b!2154761 () Bool)

(declare-fun b_free!63639 () Bool)

(declare-fun b_next!64343 () Bool)

(assert (=> b!2154761 (= b_free!63639 (not b_next!64343))))

(declare-fun tp!670453 () Bool)

(declare-fun b_and!173255 () Bool)

(assert (=> b!2154761 (= tp!670453 b_and!173255)))

(declare-fun b!2154763 () Bool)

(assert (=> b!2154763 true))

(declare-fun bs!445791 () Bool)

(declare-fun b!2154766 () Bool)

(assert (= bs!445791 (and b!2154766 b!2154763)))

(declare-fun lambda!81260 () Int)

(declare-fun lambda!81259 () Int)

(assert (=> bs!445791 (not (= lambda!81260 lambda!81259))))

(assert (=> b!2154766 true))

(declare-fun b!2154747 () Bool)

(declare-fun e!1378180 () Bool)

(declare-datatypes ((C!11968 0))(
  ( (C!11969 (val!6970 Int)) )
))
(declare-datatypes ((Regex!5911 0))(
  ( (ElementMatch!5911 (c!341466 C!11968)) (Concat!10213 (regOne!12334 Regex!5911) (regTwo!12334 Regex!5911)) (EmptyExpr!5911) (Star!5911 (reg!6240 Regex!5911)) (EmptyLang!5911) (Union!5911 (regOne!12335 Regex!5911) (regTwo!12335 Regex!5911)) )
))
(declare-datatypes ((List!24919 0))(
  ( (Nil!24835) (Cons!24835 (h!30236 Regex!5911) (t!197467 List!24919)) )
))
(declare-datatypes ((List!24920 0))(
  ( (Nil!24836) (Cons!24836 (h!30237 C!11968) (t!197468 List!24920)) )
))
(declare-datatypes ((IArray!16099 0))(
  ( (IArray!16100 (innerList!8107 List!24920)) )
))
(declare-datatypes ((Conc!8047 0))(
  ( (Node!8047 (left!19109 Conc!8047) (right!19439 Conc!8047) (csize!16324 Int) (cheight!8258 Int)) (Leaf!11770 (xs!10989 IArray!16099) (csize!16325 Int)) (Empty!8047) )
))
(declare-datatypes ((Context!2962 0))(
  ( (Context!2963 (exprs!1981 List!24919)) )
))
(declare-datatypes ((BalanceConc!15856 0))(
  ( (BalanceConc!15857 (c!341467 Conc!8047)) )
))
(define-sort InoxSet (T) (Array T Bool))

(declare-datatypes ((StackFrame!356 0))(
  ( (StackFrame!357 (z!5985 (InoxSet Context!2962)) (from!2826 Int) (lastNullablePos!513 Int) (res!929039 Int) (totalInput!3335 BalanceConc!15856)) )
))
(declare-datatypes ((List!24921 0))(
  ( (Nil!24837) (Cons!24837 (h!30238 StackFrame!356) (t!197469 List!24921)) )
))
(declare-fun stack!12 () List!24921)

(declare-fun tp!670447 () Bool)

(declare-fun inv!32819 (Conc!8047) Bool)

(assert (=> b!2154747 (= e!1378180 (and (inv!32819 (c!341467 (totalInput!3335 (h!30238 stack!12)))) tp!670447))))

(declare-fun b!2154748 () Bool)

(declare-fun e!1378186 () Bool)

(declare-fun e!1378175 () Bool)

(assert (=> b!2154748 (= e!1378186 e!1378175)))

(declare-fun b!2154749 () Bool)

(declare-fun e!1378179 () Bool)

(declare-fun e!1378187 () Bool)

(assert (=> b!2154749 (= e!1378179 e!1378187)))

(declare-fun res!929030 () Bool)

(assert (=> b!2154749 (=> (not res!929030) (not e!1378187))))

(declare-fun res!17610 () Int)

(assert (=> b!2154749 (= res!929030 (and (= (res!929039 (h!30238 stack!12)) res!17610) (>= (from!2826 (h!30238 stack!12)) 0)))))

(declare-datatypes ((Unit!37933 0))(
  ( (Unit!37934) )
))
(declare-fun lt!801486 () Unit!37933)

(declare-datatypes ((tuple3!3706 0))(
  ( (tuple3!3707 (_1!14599 (InoxSet Context!2962)) (_2!14599 Int) (_3!2323 Int)) )
))
(declare-datatypes ((tuple2!24552 0))(
  ( (tuple2!24553 (_1!14600 tuple3!3706) (_2!14600 Int)) )
))
(declare-datatypes ((List!24922 0))(
  ( (Nil!24838) (Cons!24838 (h!30239 tuple2!24552) (t!197470 List!24922)) )
))
(declare-datatypes ((array!9903 0))(
  ( (array!9904 (arr!4420 (Array (_ BitVec 32) (_ BitVec 64))) (size!19410 (_ BitVec 32))) )
))
(declare-datatypes ((array!9905 0))(
  ( (array!9906 (arr!4421 (Array (_ BitVec 32) List!24922)) (size!19411 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!5824 0))(
  ( (LongMapFixedSize!5825 (defaultEntry!3277 Int) (mask!7183 (_ BitVec 32)) (extraKeys!3160 (_ BitVec 32)) (zeroValue!3170 List!24922) (minValue!3170 List!24922) (_size!5875 (_ BitVec 32)) (_keys!3209 array!9903) (_values!3192 array!9905) (_vacant!2973 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!11473 0))(
  ( (Cell!11474 (v!29287 LongMapFixedSize!5824)) )
))
(declare-datatypes ((Hashable!2826 0))(
  ( (HashableExt!2825 (__x!16912 Int)) )
))
(declare-datatypes ((MutLongMap!2912 0))(
  ( (LongMap!2912 (underlying!6019 Cell!11473)) (MutLongMapExt!2911 (__x!16913 Int)) )
))
(declare-datatypes ((Cell!11475 0))(
  ( (Cell!11476 (v!29288 MutLongMap!2912)) )
))
(declare-datatypes ((MutableMap!2826 0))(
  ( (MutableMapExt!2825 (__x!16914 Int)) (HashMap!2826 (underlying!6020 Cell!11475) (hashF!4749 Hashable!2826) (_size!5876 (_ BitVec 32)) (defaultValue!2988 Int)) )
))
(declare-datatypes ((CacheFurthestNullable!1010 0))(
  ( (CacheFurthestNullable!1011 (cache!3207 MutableMap!2826) (totalInput!3336 BalanceConc!15856)) )
))
(declare-fun cacheFurthestNullable!118 () CacheFurthestNullable!1010)

(declare-fun lemmaInvariant!396 (CacheFurthestNullable!1010) Unit!37933)

(assert (=> b!2154749 (= lt!801486 (lemmaInvariant!396 cacheFurthestNullable!118))))

(declare-fun b!2154750 () Bool)

(declare-fun res!929037 () Bool)

(declare-fun e!1378184 () Bool)

(assert (=> b!2154750 (=> (not res!929037) (not e!1378184))))

(declare-fun validCacheMapFurthestNullable!166 (MutableMap!2826 BalanceConc!15856) Bool)

(assert (=> b!2154750 (= res!929037 (validCacheMapFurthestNullable!166 (cache!3207 cacheFurthestNullable!118) (totalInput!3336 cacheFurthestNullable!118)))))

(declare-fun mapIsEmpty!13766 () Bool)

(declare-fun mapRes!13766 () Bool)

(assert (=> mapIsEmpty!13766 mapRes!13766))

(declare-fun b!2154751 () Bool)

(declare-fun e!1378174 () Bool)

(declare-fun lt!801487 () MutLongMap!2912)

(get-info :version)

(assert (=> b!2154751 (= e!1378174 (and e!1378186 ((_ is LongMap!2912) lt!801487)))))

(assert (=> b!2154751 (= lt!801487 (v!29288 (underlying!6020 (cache!3207 cacheFurthestNullable!118))))))

(declare-fun b!2154752 () Bool)

(declare-fun e!1378188 () Bool)

(declare-fun tp!670445 () Bool)

(assert (=> b!2154752 (= e!1378188 (and (inv!32819 (c!341467 (totalInput!3336 cacheFurthestNullable!118))) tp!670445))))

(declare-fun b!2154753 () Bool)

(declare-fun e!1378178 () Bool)

(declare-fun totalInput!880 () BalanceConc!15856)

(declare-fun tp!670457 () Bool)

(assert (=> b!2154753 (= e!1378178 (and (inv!32819 (c!341467 totalInput!880)) tp!670457))))

(declare-fun b!2154754 () Bool)

(declare-fun e!1378190 () Bool)

(assert (=> b!2154754 (= e!1378175 e!1378190)))

(declare-fun b!2154755 () Bool)

(assert (=> b!2154755 (= e!1378187 e!1378184)))

(declare-fun res!929028 () Bool)

(assert (=> b!2154755 (=> (not res!929028) (not e!1378184))))

(declare-fun lt!801484 () Int)

(assert (=> b!2154755 (= res!929028 (<= (from!2826 (h!30238 stack!12)) lt!801484))))

(declare-fun size!19412 (BalanceConc!15856) Int)

(assert (=> b!2154755 (= lt!801484 (size!19412 totalInput!880))))

(declare-fun e!1378173 () Bool)

(declare-fun tp!670448 () Bool)

(declare-fun e!1378183 () Bool)

(declare-fun b!2154756 () Bool)

(declare-fun inv!32820 (StackFrame!356) Bool)

(assert (=> b!2154756 (= e!1378173 (and (inv!32820 (h!30238 stack!12)) e!1378183 tp!670448))))

(declare-fun b!2154757 () Bool)

(declare-fun res!929036 () Bool)

(declare-fun e!1378176 () Bool)

(assert (=> b!2154757 (=> (not res!929036) (not e!1378176))))

(declare-fun e!1378177 () Bool)

(assert (=> b!2154757 (= res!929036 e!1378177)))

(declare-fun res!929031 () Bool)

(assert (=> b!2154757 (=> res!929031 e!1378177)))

(declare-fun nullableZipper!217 ((InoxSet Context!2962)) Bool)

(assert (=> b!2154757 (= res!929031 (not (nullableZipper!217 (z!5985 (h!30238 stack!12)))))))

(declare-fun mapNonEmpty!13766 () Bool)

(declare-fun tp!670449 () Bool)

(declare-fun tp!670455 () Bool)

(assert (=> mapNonEmpty!13766 (= mapRes!13766 (and tp!670449 tp!670455))))

(declare-fun mapRest!13766 () (Array (_ BitVec 32) List!24922))

(declare-fun mapKey!13766 () (_ BitVec 32))

(declare-fun mapValue!13766 () List!24922)

(assert (=> mapNonEmpty!13766 (= (arr!4421 (_values!3192 (v!29287 (underlying!6019 (v!29288 (underlying!6020 (cache!3207 cacheFurthestNullable!118))))))) (store mapRest!13766 mapKey!13766 mapValue!13766))))

(declare-fun b!2154758 () Bool)

(assert (=> b!2154758 (= e!1378184 e!1378176)))

(declare-fun res!929038 () Bool)

(assert (=> b!2154758 (=> (not res!929038) (not e!1378176))))

(declare-fun lt!801485 () Int)

(assert (=> b!2154758 (= res!929038 (and (<= (from!2826 (h!30238 stack!12)) lt!801485) (>= (lastNullablePos!513 (h!30238 stack!12)) (- 1)) (< (lastNullablePos!513 (h!30238 stack!12)) (from!2826 (h!30238 stack!12)))))))

(assert (=> b!2154758 (= lt!801485 (size!19412 (totalInput!3336 cacheFurthestNullable!118)))))

(declare-fun res!929026 () Bool)

(assert (=> start!209032 (=> (not res!929026) (not e!1378179))))

(declare-fun valid!2249 (CacheFurthestNullable!1010) Bool)

(assert (=> start!209032 (= res!929026 (valid!2249 cacheFurthestNullable!118))))

(assert (=> start!209032 e!1378179))

(declare-fun e!1378181 () Bool)

(declare-fun inv!32821 (CacheFurthestNullable!1010) Bool)

(assert (=> start!209032 (and (inv!32821 cacheFurthestNullable!118) e!1378181)))

(assert (=> start!209032 true))

(declare-fun inv!32822 (BalanceConc!15856) Bool)

(assert (=> start!209032 (and (inv!32822 totalInput!880) e!1378178)))

(assert (=> start!209032 e!1378173))

(declare-fun setRes!17530 () Bool)

(declare-fun b!2154759 () Bool)

(assert (=> b!2154759 (= e!1378183 (and setRes!17530 (inv!32822 (totalInput!3335 (h!30238 stack!12))) e!1378180))))

(declare-fun condSetEmpty!17530 () Bool)

(assert (=> b!2154759 (= condSetEmpty!17530 (= (z!5985 (h!30238 stack!12)) ((as const (Array Context!2962 Bool)) false)))))

(declare-fun b!2154760 () Bool)

(declare-fun res!929034 () Bool)

(assert (=> b!2154760 (=> (not res!929034) (not e!1378179))))

(declare-fun totalInputSize!324 () Int)

(declare-fun counter!1 () Int)

(assert (=> b!2154760 (= res!929034 (and (not ((_ is Nil!24837) stack!12)) (or (<= totalInputSize!324 1048576) (= (- counter!1 (* 10 (ite (>= counter!1 0) (div counter!1 10) (- (div (- counter!1) 10))))) 0))))))

(declare-fun e!1378182 () Bool)

(declare-fun tp!670456 () Bool)

(declare-fun tp!670451 () Bool)

(declare-fun array_inv!3172 (array!9903) Bool)

(declare-fun array_inv!3173 (array!9905) Bool)

(assert (=> b!2154761 (= e!1378190 (and tp!670453 tp!670451 tp!670456 (array_inv!3172 (_keys!3209 (v!29287 (underlying!6019 (v!29288 (underlying!6020 (cache!3207 cacheFurthestNullable!118))))))) (array_inv!3173 (_values!3192 (v!29287 (underlying!6019 (v!29288 (underlying!6020 (cache!3207 cacheFurthestNullable!118))))))) e!1378182))))

(declare-fun setIsEmpty!17530 () Bool)

(assert (=> setIsEmpty!17530 setRes!17530))

(declare-fun b!2154762 () Bool)

(declare-fun furthestNullablePosition!129 ((InoxSet Context!2962) Int BalanceConc!15856 Int Int) Int)

(assert (=> b!2154762 (= e!1378176 (not (= res!17610 (furthestNullablePosition!129 (z!5985 (h!30238 stack!12)) (from!2826 (h!30238 stack!12)) (totalInput!3336 cacheFurthestNullable!118) lt!801485 (lastNullablePos!513 (h!30238 stack!12))))))))

(declare-fun res!929032 () Bool)

(assert (=> b!2154763 (=> (not res!929032) (not e!1378179))))

(declare-fun forall!5096 (List!24921 Int) Bool)

(assert (=> b!2154763 (= res!929032 (forall!5096 stack!12 lambda!81259))))

(declare-fun b!2154764 () Bool)

(declare-fun res!929027 () Bool)

(assert (=> b!2154764 (=> (not res!929027) (not e!1378184))))

(assert (=> b!2154764 (= res!929027 (= totalInput!880 (totalInput!3336 cacheFurthestNullable!118)))))

(declare-fun b!2154765 () Bool)

(declare-fun e!1378191 () Bool)

(assert (=> b!2154765 (= e!1378181 (and e!1378191 (inv!32822 (totalInput!3336 cacheFurthestNullable!118)) e!1378188))))

(declare-fun res!929035 () Bool)

(assert (=> b!2154766 (=> (not res!929035) (not e!1378179))))

(assert (=> b!2154766 (= res!929035 (forall!5096 stack!12 lambda!81260))))

(declare-fun b!2154767 () Bool)

(declare-fun tp!670446 () Bool)

(assert (=> b!2154767 (= e!1378182 (and tp!670446 mapRes!13766))))

(declare-fun condMapEmpty!13766 () Bool)

(declare-fun mapDefault!13766 () List!24922)

(assert (=> b!2154767 (= condMapEmpty!13766 (= (arr!4421 (_values!3192 (v!29287 (underlying!6019 (v!29288 (underlying!6020 (cache!3207 cacheFurthestNullable!118))))))) ((as const (Array (_ BitVec 32) List!24922)) mapDefault!13766)))))

(declare-fun b!2154768 () Bool)

(declare-fun res!929033 () Bool)

(assert (=> b!2154768 (=> (not res!929033) (not e!1378179))))

(assert (=> b!2154768 (= res!929033 (= (totalInput!3336 cacheFurthestNullable!118) totalInput!880))))

(declare-fun setNonEmpty!17530 () Bool)

(declare-fun e!1378189 () Bool)

(declare-fun tp!670450 () Bool)

(declare-fun setElem!17530 () Context!2962)

(declare-fun inv!32823 (Context!2962) Bool)

(assert (=> setNonEmpty!17530 (= setRes!17530 (and tp!670450 (inv!32823 setElem!17530) e!1378189))))

(declare-fun setRest!17530 () (InoxSet Context!2962))

(assert (=> setNonEmpty!17530 (= (z!5985 (h!30238 stack!12)) ((_ map or) (store ((as const (Array Context!2962 Bool)) false) setElem!17530 true) setRest!17530))))

(declare-fun b!2154769 () Bool)

(declare-fun tp!670452 () Bool)

(assert (=> b!2154769 (= e!1378189 tp!670452)))

(assert (=> b!2154770 (= e!1378191 (and e!1378174 tp!670454))))

(declare-fun b!2154771 () Bool)

(assert (=> b!2154771 (= e!1378177 (= (lastNullablePos!513 (h!30238 stack!12)) (- (from!2826 (h!30238 stack!12)) 1)))))

(declare-fun b!2154772 () Bool)

(declare-fun res!929029 () Bool)

(assert (=> b!2154772 (=> (not res!929029) (not e!1378184))))

(assert (=> b!2154772 (= res!929029 (= res!17610 (furthestNullablePosition!129 (z!5985 (h!30238 stack!12)) (from!2826 (h!30238 stack!12)) totalInput!880 lt!801484 (lastNullablePos!513 (h!30238 stack!12)))))))

(assert (= (and start!209032 res!929026) b!2154768))

(assert (= (and b!2154768 res!929033) b!2154763))

(assert (= (and b!2154763 res!929032) b!2154766))

(assert (= (and b!2154766 res!929035) b!2154760))

(assert (= (and b!2154760 res!929034) b!2154749))

(assert (= (and b!2154749 res!929030) b!2154755))

(assert (= (and b!2154755 res!929028) b!2154772))

(assert (= (and b!2154772 res!929029) b!2154764))

(assert (= (and b!2154764 res!929027) b!2154750))

(assert (= (and b!2154750 res!929037) b!2154758))

(assert (= (and b!2154758 res!929038) b!2154757))

(assert (= (and b!2154757 (not res!929031)) b!2154771))

(assert (= (and b!2154757 res!929036) b!2154762))

(assert (= (and b!2154767 condMapEmpty!13766) mapIsEmpty!13766))

(assert (= (and b!2154767 (not condMapEmpty!13766)) mapNonEmpty!13766))

(assert (= b!2154761 b!2154767))

(assert (= b!2154754 b!2154761))

(assert (= b!2154748 b!2154754))

(assert (= (and b!2154751 ((_ is LongMap!2912) (v!29288 (underlying!6020 (cache!3207 cacheFurthestNullable!118))))) b!2154748))

(assert (= b!2154770 b!2154751))

(assert (= (and b!2154765 ((_ is HashMap!2826) (cache!3207 cacheFurthestNullable!118))) b!2154770))

(assert (= b!2154765 b!2154752))

(assert (= start!209032 b!2154765))

(assert (= start!209032 b!2154753))

(assert (= (and b!2154759 condSetEmpty!17530) setIsEmpty!17530))

(assert (= (and b!2154759 (not condSetEmpty!17530)) setNonEmpty!17530))

(assert (= setNonEmpty!17530 b!2154769))

(assert (= b!2154759 b!2154747))

(assert (= b!2154756 b!2154759))

(assert (= (and start!209032 ((_ is Cons!24837) stack!12)) b!2154756))

(declare-fun m!2595981 () Bool)

(assert (=> b!2154761 m!2595981))

(declare-fun m!2595983 () Bool)

(assert (=> b!2154761 m!2595983))

(declare-fun m!2595985 () Bool)

(assert (=> b!2154753 m!2595985))

(declare-fun m!2595987 () Bool)

(assert (=> b!2154749 m!2595987))

(declare-fun m!2595989 () Bool)

(assert (=> b!2154763 m!2595989))

(declare-fun m!2595991 () Bool)

(assert (=> mapNonEmpty!13766 m!2595991))

(declare-fun m!2595993 () Bool)

(assert (=> b!2154747 m!2595993))

(declare-fun m!2595995 () Bool)

(assert (=> b!2154757 m!2595995))

(declare-fun m!2595997 () Bool)

(assert (=> b!2154752 m!2595997))

(declare-fun m!2595999 () Bool)

(assert (=> b!2154765 m!2595999))

(declare-fun m!2596001 () Bool)

(assert (=> start!209032 m!2596001))

(declare-fun m!2596003 () Bool)

(assert (=> start!209032 m!2596003))

(declare-fun m!2596005 () Bool)

(assert (=> start!209032 m!2596005))

(declare-fun m!2596007 () Bool)

(assert (=> b!2154755 m!2596007))

(declare-fun m!2596009 () Bool)

(assert (=> b!2154759 m!2596009))

(declare-fun m!2596011 () Bool)

(assert (=> b!2154772 m!2596011))

(declare-fun m!2596013 () Bool)

(assert (=> b!2154750 m!2596013))

(declare-fun m!2596015 () Bool)

(assert (=> b!2154756 m!2596015))

(declare-fun m!2596017 () Bool)

(assert (=> b!2154766 m!2596017))

(declare-fun m!2596019 () Bool)

(assert (=> setNonEmpty!17530 m!2596019))

(declare-fun m!2596021 () Bool)

(assert (=> b!2154762 m!2596021))

(declare-fun m!2596023 () Bool)

(assert (=> b!2154758 m!2596023))

(check-sat (not b!2154755) (not b!2154752) (not b!2154769) (not b!2154765) (not b!2154749) b_and!173253 (not b!2154762) (not b!2154761) (not b!2154763) (not b!2154747) (not start!209032) (not b!2154766) (not b!2154772) (not b!2154758) (not b!2154753) (not setNonEmpty!17530) b_and!173255 (not b!2154750) (not b_next!64343) (not b!2154756) (not b_next!64341) (not b!2154757) (not mapNonEmpty!13766) (not b!2154767) (not b!2154759))
(check-sat b_and!173253 b_and!173255 (not b_next!64341) (not b_next!64343))
