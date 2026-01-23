; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!209000 () Bool)

(assert start!209000)

(declare-fun b!2154458 () Bool)

(declare-fun b_free!63629 () Bool)

(declare-fun b_next!64333 () Bool)

(assert (=> b!2154458 (= b_free!63629 (not b_next!64333))))

(declare-fun tp!670298 () Bool)

(declare-fun b_and!173245 () Bool)

(assert (=> b!2154458 (= tp!670298 b_and!173245)))

(declare-fun b!2154471 () Bool)

(declare-fun b_free!63631 () Bool)

(declare-fun b_next!64335 () Bool)

(assert (=> b!2154471 (= b_free!63631 (not b_next!64335))))

(declare-fun tp!670291 () Bool)

(declare-fun b_and!173247 () Bool)

(assert (=> b!2154471 (= tp!670291 b_and!173247)))

(declare-fun b!2154472 () Bool)

(assert (=> b!2154472 true))

(declare-fun bs!445776 () Bool)

(declare-fun b!2154451 () Bool)

(assert (= bs!445776 (and b!2154451 b!2154472)))

(declare-fun lambda!81239 () Int)

(declare-fun lambda!81238 () Int)

(assert (=> bs!445776 (not (= lambda!81239 lambda!81238))))

(assert (=> b!2154451 true))

(declare-fun b!2154447 () Bool)

(declare-fun res!928909 () Bool)

(declare-fun e!1377974 () Bool)

(assert (=> b!2154447 (=> (not res!928909) (not e!1377974))))

(declare-datatypes ((C!11964 0))(
  ( (C!11965 (val!6968 Int)) )
))
(declare-datatypes ((Regex!5909 0))(
  ( (ElementMatch!5909 (c!341449 C!11964)) (Concat!10211 (regOne!12330 Regex!5909) (regTwo!12330 Regex!5909)) (EmptyExpr!5909) (Star!5909 (reg!6238 Regex!5909)) (EmptyLang!5909) (Union!5909 (regOne!12331 Regex!5909) (regTwo!12331 Regex!5909)) )
))
(declare-datatypes ((List!24911 0))(
  ( (Nil!24827) (Cons!24827 (h!30228 Regex!5909) (t!197459 List!24911)) )
))
(declare-datatypes ((List!24912 0))(
  ( (Nil!24828) (Cons!24828 (h!30229 C!11964) (t!197460 List!24912)) )
))
(declare-datatypes ((IArray!16095 0))(
  ( (IArray!16096 (innerList!8105 List!24912)) )
))
(declare-datatypes ((Conc!8045 0))(
  ( (Node!8045 (left!19102 Conc!8045) (right!19432 Conc!8045) (csize!16320 Int) (cheight!8256 Int)) (Leaf!11767 (xs!10987 IArray!16095) (csize!16321 Int)) (Empty!8045) )
))
(declare-datatypes ((Context!2958 0))(
  ( (Context!2959 (exprs!1979 List!24911)) )
))
(declare-datatypes ((BalanceConc!15852 0))(
  ( (BalanceConc!15853 (c!341450 Conc!8045)) )
))
(define-sort InoxSet (T) (Array T Bool))

(declare-datatypes ((StackFrame!352 0))(
  ( (StackFrame!353 (z!5981 (InoxSet Context!2958)) (from!2823 Int) (lastNullablePos!510 Int) (res!928916 Int) (totalInput!3329 BalanceConc!15852)) )
))
(declare-datatypes ((List!24913 0))(
  ( (Nil!24829) (Cons!24829 (h!30230 StackFrame!352) (t!197461 List!24913)) )
))
(declare-fun stack!12 () List!24913)

(assert (=> b!2154447 (= res!928909 (and (>= (lastNullablePos!510 (h!30230 stack!12)) (- 1)) (< (lastNullablePos!510 (h!30230 stack!12)) (from!2823 (h!30230 stack!12)))))))

(declare-fun setIsEmpty!17506 () Bool)

(declare-fun setRes!17506 () Bool)

(assert (=> setIsEmpty!17506 setRes!17506))

(declare-fun b!2154448 () Bool)

(declare-fun e!1377970 () Bool)

(declare-datatypes ((tuple3!3702 0))(
  ( (tuple3!3703 (_1!14595 (InoxSet Context!2958)) (_2!14595 Int) (_3!2321 Int)) )
))
(declare-datatypes ((tuple2!24548 0))(
  ( (tuple2!24549 (_1!14596 tuple3!3702) (_2!14596 Int)) )
))
(declare-datatypes ((List!24914 0))(
  ( (Nil!24830) (Cons!24830 (h!30231 tuple2!24548) (t!197462 List!24914)) )
))
(declare-datatypes ((array!9893 0))(
  ( (array!9894 (arr!4416 (Array (_ BitVec 32) (_ BitVec 64))) (size!19402 (_ BitVec 32))) )
))
(declare-datatypes ((array!9895 0))(
  ( (array!9896 (arr!4417 (Array (_ BitVec 32) List!24914)) (size!19403 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!5820 0))(
  ( (LongMapFixedSize!5821 (defaultEntry!3275 Int) (mask!7180 (_ BitVec 32)) (extraKeys!3158 (_ BitVec 32)) (zeroValue!3168 List!24914) (minValue!3168 List!24914) (_size!5871 (_ BitVec 32)) (_keys!3207 array!9893) (_values!3190 array!9895) (_vacant!2971 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!11465 0))(
  ( (Cell!11466 (v!29283 LongMapFixedSize!5820)) )
))
(declare-datatypes ((Hashable!2824 0))(
  ( (HashableExt!2823 (__x!16906 Int)) )
))
(declare-datatypes ((MutLongMap!2910 0))(
  ( (LongMap!2910 (underlying!6015 Cell!11465)) (MutLongMapExt!2909 (__x!16907 Int)) )
))
(declare-datatypes ((Cell!11467 0))(
  ( (Cell!11468 (v!29284 MutLongMap!2910)) )
))
(declare-datatypes ((MutableMap!2824 0))(
  ( (MutableMapExt!2823 (__x!16908 Int)) (HashMap!2824 (underlying!6016 Cell!11467) (hashF!4747 Hashable!2824) (_size!5872 (_ BitVec 32)) (defaultValue!2986 Int)) )
))
(declare-datatypes ((CacheFurthestNullable!1006 0))(
  ( (CacheFurthestNullable!1007 (cache!3205 MutableMap!2824) (totalInput!3330 BalanceConc!15852)) )
))
(declare-fun cacheFurthestNullable!118 () CacheFurthestNullable!1006)

(declare-fun tp!670300 () Bool)

(declare-fun inv!32805 (Conc!8045) Bool)

(assert (=> b!2154448 (= e!1377970 (and (inv!32805 (c!341450 (totalInput!3330 cacheFurthestNullable!118))) tp!670300))))

(declare-fun b!2154449 () Bool)

(declare-fun e!1377983 () Bool)

(declare-fun e!1377985 () Bool)

(assert (=> b!2154449 (= e!1377983 e!1377985)))

(declare-fun b!2154450 () Bool)

(declare-fun res!928905 () Bool)

(assert (=> b!2154450 (=> (not res!928905) (not e!1377974))))

(declare-fun totalInput!880 () BalanceConc!15852)

(declare-fun lt!801451 () Int)

(declare-fun res!17610 () Int)

(declare-fun furthestNullablePosition!127 ((InoxSet Context!2958) Int BalanceConc!15852 Int Int) Int)

(assert (=> b!2154450 (= res!928905 (= res!17610 (furthestNullablePosition!127 (z!5981 (h!30230 stack!12)) (from!2823 (h!30230 stack!12)) totalInput!880 lt!801451 (lastNullablePos!510 (h!30230 stack!12)))))))

(declare-fun res!928912 () Bool)

(declare-fun e!1377981 () Bool)

(assert (=> b!2154451 (=> (not res!928912) (not e!1377981))))

(declare-fun forall!5092 (List!24913 Int) Bool)

(assert (=> b!2154451 (= res!928912 (forall!5092 stack!12 lambda!81239))))

(declare-fun b!2154452 () Bool)

(declare-fun e!1377977 () Bool)

(declare-fun e!1377973 () Bool)

(declare-fun inv!32806 (BalanceConc!15852) Bool)

(assert (=> b!2154452 (= e!1377977 (and setRes!17506 (inv!32806 (totalInput!3329 (h!30230 stack!12))) e!1377973))))

(declare-fun condSetEmpty!17506 () Bool)

(assert (=> b!2154452 (= condSetEmpty!17506 (= (z!5981 (h!30230 stack!12)) ((as const (Array Context!2958 Bool)) false)))))

(declare-fun b!2154453 () Bool)

(declare-fun e!1377979 () Bool)

(assert (=> b!2154453 (= e!1377979 e!1377983)))

(declare-fun b!2154454 () Bool)

(declare-fun res!928915 () Bool)

(assert (=> b!2154454 (=> (not res!928915) (not e!1377981))))

(assert (=> b!2154454 (= res!928915 (= (totalInput!3330 cacheFurthestNullable!118) totalInput!880))))

(declare-fun b!2154455 () Bool)

(declare-fun e!1377980 () Bool)

(declare-fun tp!670295 () Bool)

(assert (=> b!2154455 (= e!1377980 (and (inv!32805 (c!341450 totalInput!880)) tp!670295))))

(declare-fun setNonEmpty!17506 () Bool)

(declare-fun e!1377976 () Bool)

(declare-fun tp!670293 () Bool)

(declare-fun setElem!17506 () Context!2958)

(declare-fun inv!32807 (Context!2958) Bool)

(assert (=> setNonEmpty!17506 (= setRes!17506 (and tp!670293 (inv!32807 setElem!17506) e!1377976))))

(declare-fun setRest!17506 () (InoxSet Context!2958))

(assert (=> setNonEmpty!17506 (= (z!5981 (h!30230 stack!12)) ((_ map or) (store ((as const (Array Context!2958 Bool)) false) setElem!17506 true) setRest!17506))))

(declare-fun res!928903 () Bool)

(assert (=> start!209000 (=> (not res!928903) (not e!1377981))))

(declare-fun valid!2247 (CacheFurthestNullable!1006) Bool)

(assert (=> start!209000 (= res!928903 (valid!2247 cacheFurthestNullable!118))))

(assert (=> start!209000 e!1377981))

(declare-fun e!1377978 () Bool)

(declare-fun inv!32808 (CacheFurthestNullable!1006) Bool)

(assert (=> start!209000 (and (inv!32808 cacheFurthestNullable!118) e!1377978)))

(assert (=> start!209000 true))

(assert (=> start!209000 (and (inv!32806 totalInput!880) e!1377980)))

(declare-fun e!1377972 () Bool)

(assert (=> start!209000 e!1377972))

(declare-fun b!2154456 () Bool)

(declare-fun e!1377986 () Bool)

(declare-fun tp!670290 () Bool)

(declare-fun mapRes!13757 () Bool)

(assert (=> b!2154456 (= e!1377986 (and tp!670290 mapRes!13757))))

(declare-fun condMapEmpty!13757 () Bool)

(declare-fun mapDefault!13757 () List!24914)

(assert (=> b!2154456 (= condMapEmpty!13757 (= (arr!4417 (_values!3190 (v!29283 (underlying!6015 (v!29284 (underlying!6016 (cache!3205 cacheFurthestNullable!118))))))) ((as const (Array (_ BitVec 32) List!24914)) mapDefault!13757)))))

(declare-fun b!2154457 () Bool)

(declare-fun res!928907 () Bool)

(assert (=> b!2154457 (=> (not res!928907) (not e!1377974))))

(assert (=> b!2154457 (= res!928907 (= totalInput!880 (totalInput!3330 cacheFurthestNullable!118)))))

(declare-fun e!1377984 () Bool)

(declare-fun e!1377982 () Bool)

(assert (=> b!2154458 (= e!1377984 (and e!1377982 tp!670298))))

(declare-fun b!2154459 () Bool)

(declare-fun tp!670297 () Bool)

(assert (=> b!2154459 (= e!1377973 (and (inv!32805 (c!341450 (totalInput!3329 (h!30230 stack!12)))) tp!670297))))

(declare-fun b!2154460 () Bool)

(assert (=> b!2154460 (= e!1377974 (not (= (lastNullablePos!510 (h!30230 stack!12)) (- (from!2823 (h!30230 stack!12)) 1))))))

(declare-fun b!2154461 () Bool)

(declare-fun e!1377975 () Bool)

(assert (=> b!2154461 (= e!1377975 e!1377974)))

(declare-fun res!928914 () Bool)

(assert (=> b!2154461 (=> (not res!928914) (not e!1377974))))

(assert (=> b!2154461 (= res!928914 (<= (from!2823 (h!30230 stack!12)) lt!801451))))

(declare-fun size!19404 (BalanceConc!15852) Int)

(assert (=> b!2154461 (= lt!801451 (size!19404 totalInput!880))))

(declare-fun b!2154462 () Bool)

(declare-fun res!928908 () Bool)

(assert (=> b!2154462 (=> (not res!928908) (not e!1377974))))

(declare-fun validCacheMapFurthestNullable!164 (MutableMap!2824 BalanceConc!15852) Bool)

(assert (=> b!2154462 (= res!928908 (validCacheMapFurthestNullable!164 (cache!3205 cacheFurthestNullable!118) (totalInput!3330 cacheFurthestNullable!118)))))

(declare-fun b!2154463 () Bool)

(assert (=> b!2154463 (= e!1377978 (and e!1377984 (inv!32806 (totalInput!3330 cacheFurthestNullable!118)) e!1377970))))

(declare-fun b!2154464 () Bool)

(declare-fun tp!670292 () Bool)

(assert (=> b!2154464 (= e!1377976 tp!670292)))

(declare-fun b!2154465 () Bool)

(declare-fun tp!670299 () Bool)

(declare-fun inv!32809 (StackFrame!352) Bool)

(assert (=> b!2154465 (= e!1377972 (and (inv!32809 (h!30230 stack!12)) e!1377977 tp!670299))))

(declare-fun mapNonEmpty!13757 () Bool)

(declare-fun tp!670301 () Bool)

(declare-fun tp!670296 () Bool)

(assert (=> mapNonEmpty!13757 (= mapRes!13757 (and tp!670301 tp!670296))))

(declare-fun mapValue!13757 () List!24914)

(declare-fun mapRest!13757 () (Array (_ BitVec 32) List!24914))

(declare-fun mapKey!13757 () (_ BitVec 32))

(assert (=> mapNonEmpty!13757 (= (arr!4417 (_values!3190 (v!29283 (underlying!6015 (v!29284 (underlying!6016 (cache!3205 cacheFurthestNullable!118))))))) (store mapRest!13757 mapKey!13757 mapValue!13757))))

(declare-fun b!2154466 () Bool)

(declare-fun res!928904 () Bool)

(assert (=> b!2154466 (=> (not res!928904) (not e!1377974))))

(declare-fun nullableZipper!215 ((InoxSet Context!2958)) Bool)

(assert (=> b!2154466 (= res!928904 (nullableZipper!215 (z!5981 (h!30230 stack!12))))))

(declare-fun b!2154467 () Bool)

(declare-fun res!928906 () Bool)

(assert (=> b!2154467 (=> (not res!928906) (not e!1377981))))

(declare-fun counter!1 () Int)

(declare-fun totalInputSize!324 () Int)

(get-info :version)

(assert (=> b!2154467 (= res!928906 (and (not ((_ is Nil!24829) stack!12)) (or (<= totalInputSize!324 1048576) (= (- counter!1 (* 10 (ite (>= counter!1 0) (div counter!1 10) (- (div (- counter!1) 10))))) 0))))))

(declare-fun b!2154468 () Bool)

(assert (=> b!2154468 (= e!1377981 e!1377975)))

(declare-fun res!928910 () Bool)

(assert (=> b!2154468 (=> (not res!928910) (not e!1377975))))

(assert (=> b!2154468 (= res!928910 (and (= (res!928916 (h!30230 stack!12)) res!17610) (>= (from!2823 (h!30230 stack!12)) 0)))))

(declare-datatypes ((Unit!37930 0))(
  ( (Unit!37931) )
))
(declare-fun lt!801452 () Unit!37930)

(declare-fun lemmaInvariant!395 (CacheFurthestNullable!1006) Unit!37930)

(assert (=> b!2154468 (= lt!801452 (lemmaInvariant!395 cacheFurthestNullable!118))))

(declare-fun b!2154469 () Bool)

(declare-fun res!928913 () Bool)

(assert (=> b!2154469 (=> (not res!928913) (not e!1377974))))

(assert (=> b!2154469 (= res!928913 (<= (from!2823 (h!30230 stack!12)) (size!19404 (totalInput!3330 cacheFurthestNullable!118))))))

(declare-fun b!2154470 () Bool)

(declare-fun lt!801453 () MutLongMap!2910)

(assert (=> b!2154470 (= e!1377982 (and e!1377979 ((_ is LongMap!2910) lt!801453)))))

(assert (=> b!2154470 (= lt!801453 (v!29284 (underlying!6016 (cache!3205 cacheFurthestNullable!118))))))

(declare-fun mapIsEmpty!13757 () Bool)

(assert (=> mapIsEmpty!13757 mapRes!13757))

(declare-fun tp!670289 () Bool)

(declare-fun tp!670294 () Bool)

(declare-fun array_inv!3168 (array!9893) Bool)

(declare-fun array_inv!3169 (array!9895) Bool)

(assert (=> b!2154471 (= e!1377985 (and tp!670291 tp!670294 tp!670289 (array_inv!3168 (_keys!3207 (v!29283 (underlying!6015 (v!29284 (underlying!6016 (cache!3205 cacheFurthestNullable!118))))))) (array_inv!3169 (_values!3190 (v!29283 (underlying!6015 (v!29284 (underlying!6016 (cache!3205 cacheFurthestNullable!118))))))) e!1377986))))

(declare-fun res!928911 () Bool)

(assert (=> b!2154472 (=> (not res!928911) (not e!1377981))))

(assert (=> b!2154472 (= res!928911 (forall!5092 stack!12 lambda!81238))))

(assert (= (and start!209000 res!928903) b!2154454))

(assert (= (and b!2154454 res!928915) b!2154472))

(assert (= (and b!2154472 res!928911) b!2154451))

(assert (= (and b!2154451 res!928912) b!2154467))

(assert (= (and b!2154467 res!928906) b!2154468))

(assert (= (and b!2154468 res!928910) b!2154461))

(assert (= (and b!2154461 res!928914) b!2154450))

(assert (= (and b!2154450 res!928905) b!2154457))

(assert (= (and b!2154457 res!928907) b!2154462))

(assert (= (and b!2154462 res!928908) b!2154469))

(assert (= (and b!2154469 res!928913) b!2154447))

(assert (= (and b!2154447 res!928909) b!2154466))

(assert (= (and b!2154466 res!928904) b!2154460))

(assert (= (and b!2154456 condMapEmpty!13757) mapIsEmpty!13757))

(assert (= (and b!2154456 (not condMapEmpty!13757)) mapNonEmpty!13757))

(assert (= b!2154471 b!2154456))

(assert (= b!2154449 b!2154471))

(assert (= b!2154453 b!2154449))

(assert (= (and b!2154470 ((_ is LongMap!2910) (v!29284 (underlying!6016 (cache!3205 cacheFurthestNullable!118))))) b!2154453))

(assert (= b!2154458 b!2154470))

(assert (= (and b!2154463 ((_ is HashMap!2824) (cache!3205 cacheFurthestNullable!118))) b!2154458))

(assert (= b!2154463 b!2154448))

(assert (= start!209000 b!2154463))

(assert (= start!209000 b!2154455))

(assert (= (and b!2154452 condSetEmpty!17506) setIsEmpty!17506))

(assert (= (and b!2154452 (not condSetEmpty!17506)) setNonEmpty!17506))

(assert (= setNonEmpty!17506 b!2154464))

(assert (= b!2154452 b!2154459))

(assert (= b!2154465 b!2154452))

(assert (= (and start!209000 ((_ is Cons!24829) stack!12)) b!2154465))

(declare-fun m!2595788 () Bool)

(assert (=> b!2154450 m!2595788))

(declare-fun m!2595790 () Bool)

(assert (=> b!2154448 m!2595790))

(declare-fun m!2595792 () Bool)

(assert (=> b!2154455 m!2595792))

(declare-fun m!2595794 () Bool)

(assert (=> b!2154468 m!2595794))

(declare-fun m!2595796 () Bool)

(assert (=> b!2154452 m!2595796))

(declare-fun m!2595798 () Bool)

(assert (=> b!2154462 m!2595798))

(declare-fun m!2595800 () Bool)

(assert (=> b!2154463 m!2595800))

(declare-fun m!2595802 () Bool)

(assert (=> b!2154469 m!2595802))

(declare-fun m!2595804 () Bool)

(assert (=> b!2154459 m!2595804))

(declare-fun m!2595806 () Bool)

(assert (=> b!2154472 m!2595806))

(declare-fun m!2595808 () Bool)

(assert (=> b!2154471 m!2595808))

(declare-fun m!2595810 () Bool)

(assert (=> b!2154471 m!2595810))

(declare-fun m!2595812 () Bool)

(assert (=> b!2154451 m!2595812))

(declare-fun m!2595814 () Bool)

(assert (=> b!2154461 m!2595814))

(declare-fun m!2595816 () Bool)

(assert (=> setNonEmpty!17506 m!2595816))

(declare-fun m!2595818 () Bool)

(assert (=> start!209000 m!2595818))

(declare-fun m!2595820 () Bool)

(assert (=> start!209000 m!2595820))

(declare-fun m!2595822 () Bool)

(assert (=> start!209000 m!2595822))

(declare-fun m!2595824 () Bool)

(assert (=> mapNonEmpty!13757 m!2595824))

(declare-fun m!2595826 () Bool)

(assert (=> b!2154465 m!2595826))

(declare-fun m!2595828 () Bool)

(assert (=> b!2154466 m!2595828))

(check-sat (not b!2154469) (not b!2154456) (not b!2154451) (not b!2154463) (not b!2154448) (not b!2154465) (not mapNonEmpty!13757) (not b!2154461) b_and!173245 (not b!2154452) (not b!2154450) (not b!2154462) (not b_next!64335) (not b!2154468) (not b!2154466) b_and!173247 (not setNonEmpty!17506) (not b!2154455) (not b!2154464) (not b!2154472) (not b!2154459) (not start!209000) (not b_next!64333) (not b!2154471))
(check-sat b_and!173245 b_and!173247 (not b_next!64333) (not b_next!64335))
(get-model)

(declare-fun d!646120 () Bool)

(declare-fun c!341453 () Bool)

(assert (=> d!646120 (= c!341453 ((_ is Node!8045) (c!341450 (totalInput!3329 (h!30230 stack!12)))))))

(declare-fun e!1377991 () Bool)

(assert (=> d!646120 (= (inv!32805 (c!341450 (totalInput!3329 (h!30230 stack!12)))) e!1377991)))

(declare-fun b!2154483 () Bool)

(declare-fun inv!32810 (Conc!8045) Bool)

(assert (=> b!2154483 (= e!1377991 (inv!32810 (c!341450 (totalInput!3329 (h!30230 stack!12)))))))

(declare-fun b!2154484 () Bool)

(declare-fun e!1377992 () Bool)

(assert (=> b!2154484 (= e!1377991 e!1377992)))

(declare-fun res!928919 () Bool)

(assert (=> b!2154484 (= res!928919 (not ((_ is Leaf!11767) (c!341450 (totalInput!3329 (h!30230 stack!12))))))))

(assert (=> b!2154484 (=> res!928919 e!1377992)))

(declare-fun b!2154485 () Bool)

(declare-fun inv!32811 (Conc!8045) Bool)

(assert (=> b!2154485 (= e!1377992 (inv!32811 (c!341450 (totalInput!3329 (h!30230 stack!12)))))))

(assert (= (and d!646120 c!341453) b!2154483))

(assert (= (and d!646120 (not c!341453)) b!2154484))

(assert (= (and b!2154484 (not res!928919)) b!2154485))

(declare-fun m!2595830 () Bool)

(assert (=> b!2154483 m!2595830))

(declare-fun m!2595832 () Bool)

(assert (=> b!2154485 m!2595832))

(assert (=> b!2154459 d!646120))

(declare-fun d!646122 () Bool)

(assert (=> d!646122 (= (valid!2247 cacheFurthestNullable!118) (validCacheMapFurthestNullable!164 (cache!3205 cacheFurthestNullable!118) (totalInput!3330 cacheFurthestNullable!118)))))

(declare-fun bs!445777 () Bool)

(assert (= bs!445777 d!646122))

(assert (=> bs!445777 m!2595798))

(assert (=> start!209000 d!646122))

(declare-fun d!646124 () Bool)

(declare-fun res!928922 () Bool)

(declare-fun e!1377995 () Bool)

(assert (=> d!646124 (=> (not res!928922) (not e!1377995))))

(assert (=> d!646124 (= res!928922 ((_ is HashMap!2824) (cache!3205 cacheFurthestNullable!118)))))

(assert (=> d!646124 (= (inv!32808 cacheFurthestNullable!118) e!1377995)))

(declare-fun b!2154488 () Bool)

(assert (=> b!2154488 (= e!1377995 (validCacheMapFurthestNullable!164 (cache!3205 cacheFurthestNullable!118) (totalInput!3330 cacheFurthestNullable!118)))))

(assert (= (and d!646124 res!928922) b!2154488))

(assert (=> b!2154488 m!2595798))

(assert (=> start!209000 d!646124))

(declare-fun d!646126 () Bool)

(declare-fun isBalanced!2495 (Conc!8045) Bool)

(assert (=> d!646126 (= (inv!32806 totalInput!880) (isBalanced!2495 (c!341450 totalInput!880)))))

(declare-fun bs!445778 () Bool)

(assert (= bs!445778 d!646126))

(declare-fun m!2595834 () Bool)

(assert (=> bs!445778 m!2595834))

(assert (=> start!209000 d!646126))

(declare-fun d!646128 () Bool)

(assert (=> d!646128 (valid!2247 cacheFurthestNullable!118)))

(declare-fun Unit!37932 () Unit!37930)

(assert (=> d!646128 (= (lemmaInvariant!395 cacheFurthestNullable!118) Unit!37932)))

(declare-fun bs!445779 () Bool)

(assert (= bs!445779 d!646128))

(assert (=> bs!445779 m!2595818))

(assert (=> b!2154468 d!646128))

(declare-fun d!646130 () Bool)

(declare-fun lt!801456 () Int)

(declare-fun size!19405 (List!24912) Int)

(declare-fun list!9566 (BalanceConc!15852) List!24912)

(assert (=> d!646130 (= lt!801456 (size!19405 (list!9566 (totalInput!3330 cacheFurthestNullable!118))))))

(declare-fun size!19406 (Conc!8045) Int)

(assert (=> d!646130 (= lt!801456 (size!19406 (c!341450 (totalInput!3330 cacheFurthestNullable!118))))))

(assert (=> d!646130 (= (size!19404 (totalInput!3330 cacheFurthestNullable!118)) lt!801456)))

(declare-fun bs!445780 () Bool)

(assert (= bs!445780 d!646130))

(declare-fun m!2595836 () Bool)

(assert (=> bs!445780 m!2595836))

(assert (=> bs!445780 m!2595836))

(declare-fun m!2595838 () Bool)

(assert (=> bs!445780 m!2595838))

(declare-fun m!2595840 () Bool)

(assert (=> bs!445780 m!2595840))

(assert (=> b!2154469 d!646130))

(declare-fun d!646132 () Bool)

(declare-fun lt!801462 () Int)

(assert (=> d!646132 (and (>= lt!801462 (- 1)) (< lt!801462 lt!801451) (>= lt!801462 (lastNullablePos!510 (h!30230 stack!12))) (or (= lt!801462 (lastNullablePos!510 (h!30230 stack!12))) (>= lt!801462 (from!2823 (h!30230 stack!12)))))))

(declare-fun e!1378002 () Int)

(assert (=> d!646132 (= lt!801462 e!1378002)))

(declare-fun c!341458 () Bool)

(declare-fun e!1378004 () Bool)

(assert (=> d!646132 (= c!341458 e!1378004)))

(declare-fun res!928925 () Bool)

(assert (=> d!646132 (=> res!928925 e!1378004)))

(assert (=> d!646132 (= res!928925 (= (from!2823 (h!30230 stack!12)) lt!801451))))

(assert (=> d!646132 (and (>= (from!2823 (h!30230 stack!12)) 0) (<= (from!2823 (h!30230 stack!12)) lt!801451))))

(assert (=> d!646132 (= (furthestNullablePosition!127 (z!5981 (h!30230 stack!12)) (from!2823 (h!30230 stack!12)) totalInput!880 lt!801451 (lastNullablePos!510 (h!30230 stack!12))) lt!801462)))

(declare-fun b!2154499 () Bool)

(declare-fun lostCauseZipper!140 ((InoxSet Context!2958)) Bool)

(assert (=> b!2154499 (= e!1378004 (lostCauseZipper!140 (z!5981 (h!30230 stack!12))))))

(declare-fun b!2154500 () Bool)

(declare-fun e!1378003 () Int)

(assert (=> b!2154500 (= e!1378003 (lastNullablePos!510 (h!30230 stack!12)))))

(declare-fun b!2154501 () Bool)

(assert (=> b!2154501 (= e!1378003 (from!2823 (h!30230 stack!12)))))

(declare-fun b!2154502 () Bool)

(assert (=> b!2154502 (= e!1378002 (lastNullablePos!510 (h!30230 stack!12)))))

(declare-fun b!2154503 () Bool)

(declare-fun lt!801461 () (InoxSet Context!2958))

(assert (=> b!2154503 (= e!1378002 (furthestNullablePosition!127 lt!801461 (+ (from!2823 (h!30230 stack!12)) 1) totalInput!880 lt!801451 e!1378003))))

(declare-fun derivationStepZipper!107 ((InoxSet Context!2958) C!11964) (InoxSet Context!2958))

(declare-fun apply!6039 (BalanceConc!15852 Int) C!11964)

(assert (=> b!2154503 (= lt!801461 (derivationStepZipper!107 (z!5981 (h!30230 stack!12)) (apply!6039 totalInput!880 (from!2823 (h!30230 stack!12)))))))

(declare-fun c!341459 () Bool)

(assert (=> b!2154503 (= c!341459 (nullableZipper!215 lt!801461))))

(assert (= (and d!646132 (not res!928925)) b!2154499))

(assert (= (and d!646132 c!341458) b!2154502))

(assert (= (and d!646132 (not c!341458)) b!2154503))

(assert (= (and b!2154503 c!341459) b!2154501))

(assert (= (and b!2154503 (not c!341459)) b!2154500))

(declare-fun m!2595842 () Bool)

(assert (=> b!2154499 m!2595842))

(declare-fun m!2595844 () Bool)

(assert (=> b!2154503 m!2595844))

(declare-fun m!2595846 () Bool)

(assert (=> b!2154503 m!2595846))

(assert (=> b!2154503 m!2595846))

(declare-fun m!2595848 () Bool)

(assert (=> b!2154503 m!2595848))

(declare-fun m!2595850 () Bool)

(assert (=> b!2154503 m!2595850))

(assert (=> b!2154450 d!646132))

(declare-fun d!646134 () Bool)

(declare-fun lambda!81242 () Int)

(declare-fun exists!738 ((InoxSet Context!2958) Int) Bool)

(assert (=> d!646134 (= (nullableZipper!215 (z!5981 (h!30230 stack!12))) (exists!738 (z!5981 (h!30230 stack!12)) lambda!81242))))

(declare-fun bs!445781 () Bool)

(assert (= bs!445781 d!646134))

(declare-fun m!2595852 () Bool)

(assert (=> bs!445781 m!2595852))

(assert (=> b!2154466 d!646134))

(declare-fun d!646136 () Bool)

(declare-fun c!341462 () Bool)

(assert (=> d!646136 (= c!341462 ((_ is Node!8045) (c!341450 (totalInput!3330 cacheFurthestNullable!118))))))

(declare-fun e!1378005 () Bool)

(assert (=> d!646136 (= (inv!32805 (c!341450 (totalInput!3330 cacheFurthestNullable!118))) e!1378005)))

(declare-fun b!2154504 () Bool)

(assert (=> b!2154504 (= e!1378005 (inv!32810 (c!341450 (totalInput!3330 cacheFurthestNullable!118))))))

(declare-fun b!2154505 () Bool)

(declare-fun e!1378006 () Bool)

(assert (=> b!2154505 (= e!1378005 e!1378006)))

(declare-fun res!928926 () Bool)

(assert (=> b!2154505 (= res!928926 (not ((_ is Leaf!11767) (c!341450 (totalInput!3330 cacheFurthestNullable!118)))))))

(assert (=> b!2154505 (=> res!928926 e!1378006)))

(declare-fun b!2154506 () Bool)

(assert (=> b!2154506 (= e!1378006 (inv!32811 (c!341450 (totalInput!3330 cacheFurthestNullable!118))))))

(assert (= (and d!646136 c!341462) b!2154504))

(assert (= (and d!646136 (not c!341462)) b!2154505))

(assert (= (and b!2154505 (not res!928926)) b!2154506))

(declare-fun m!2595854 () Bool)

(assert (=> b!2154504 m!2595854))

(declare-fun m!2595856 () Bool)

(assert (=> b!2154506 m!2595856))

(assert (=> b!2154448 d!646136))

(declare-fun d!646138 () Bool)

(declare-fun res!928931 () Bool)

(declare-fun e!1378011 () Bool)

(assert (=> d!646138 (=> res!928931 e!1378011)))

(assert (=> d!646138 (= res!928931 ((_ is Nil!24829) stack!12))))

(assert (=> d!646138 (= (forall!5092 stack!12 lambda!81238) e!1378011)))

(declare-fun b!2154511 () Bool)

(declare-fun e!1378012 () Bool)

(assert (=> b!2154511 (= e!1378011 e!1378012)))

(declare-fun res!928932 () Bool)

(assert (=> b!2154511 (=> (not res!928932) (not e!1378012))))

(declare-fun dynLambda!11409 (Int StackFrame!352) Bool)

(assert (=> b!2154511 (= res!928932 (dynLambda!11409 lambda!81238 (h!30230 stack!12)))))

(declare-fun b!2154512 () Bool)

(assert (=> b!2154512 (= e!1378012 (forall!5092 (t!197461 stack!12) lambda!81238))))

(assert (= (and d!646138 (not res!928931)) b!2154511))

(assert (= (and b!2154511 res!928932) b!2154512))

(declare-fun b_lambda!70921 () Bool)

(assert (=> (not b_lambda!70921) (not b!2154511)))

(declare-fun m!2595858 () Bool)

(assert (=> b!2154511 m!2595858))

(declare-fun m!2595860 () Bool)

(assert (=> b!2154512 m!2595860))

(assert (=> b!2154472 d!646138))

(declare-fun d!646140 () Bool)

(declare-fun lambda!81245 () Int)

(declare-fun forall!5093 (List!24911 Int) Bool)

(assert (=> d!646140 (= (inv!32807 setElem!17506) (forall!5093 (exprs!1979 setElem!17506) lambda!81245))))

(declare-fun bs!445782 () Bool)

(assert (= bs!445782 d!646140))

(declare-fun m!2595862 () Bool)

(assert (=> bs!445782 m!2595862))

(assert (=> setNonEmpty!17506 d!646140))

(declare-fun d!646142 () Bool)

(declare-fun c!341463 () Bool)

(assert (=> d!646142 (= c!341463 ((_ is Node!8045) (c!341450 totalInput!880)))))

(declare-fun e!1378013 () Bool)

(assert (=> d!646142 (= (inv!32805 (c!341450 totalInput!880)) e!1378013)))

(declare-fun b!2154513 () Bool)

(assert (=> b!2154513 (= e!1378013 (inv!32810 (c!341450 totalInput!880)))))

(declare-fun b!2154514 () Bool)

(declare-fun e!1378014 () Bool)

(assert (=> b!2154514 (= e!1378013 e!1378014)))

(declare-fun res!928933 () Bool)

(assert (=> b!2154514 (= res!928933 (not ((_ is Leaf!11767) (c!341450 totalInput!880))))))

(assert (=> b!2154514 (=> res!928933 e!1378014)))

(declare-fun b!2154515 () Bool)

(assert (=> b!2154515 (= e!1378014 (inv!32811 (c!341450 totalInput!880)))))

(assert (= (and d!646142 c!341463) b!2154513))

(assert (= (and d!646142 (not c!341463)) b!2154514))

(assert (= (and b!2154514 (not res!928933)) b!2154515))

(declare-fun m!2595864 () Bool)

(assert (=> b!2154513 m!2595864))

(declare-fun m!2595866 () Bool)

(assert (=> b!2154515 m!2595866))

(assert (=> b!2154455 d!646142))

(declare-fun b!2154528 () Bool)

(declare-fun res!928946 () Bool)

(declare-fun e!1378020 () Bool)

(assert (=> b!2154528 (=> (not res!928946) (not e!1378020))))

(assert (=> b!2154528 (= res!928946 (= (size!19404 (totalInput!3329 (h!30230 stack!12))) (size!19404 (totalInput!3329 (h!30230 stack!12)))))))

(declare-fun b!2154529 () Bool)

(declare-fun res!928950 () Bool)

(assert (=> b!2154529 (=> (not res!928950) (not e!1378020))))

(assert (=> b!2154529 (= res!928950 (and (>= (lastNullablePos!510 (h!30230 stack!12)) (- 1)) (< (lastNullablePos!510 (h!30230 stack!12)) (from!2823 (h!30230 stack!12)))))))

(declare-fun d!646144 () Bool)

(declare-fun res!928947 () Bool)

(assert (=> d!646144 (=> (not res!928947) (not e!1378020))))

(assert (=> d!646144 (= res!928947 (>= (from!2823 (h!30230 stack!12)) 0))))

(assert (=> d!646144 (= (inv!32809 (h!30230 stack!12)) e!1378020)))

(declare-fun b!2154530 () Bool)

(assert (=> b!2154530 (= e!1378020 (= (res!928916 (h!30230 stack!12)) (furthestNullablePosition!127 (z!5981 (h!30230 stack!12)) (from!2823 (h!30230 stack!12)) (totalInput!3329 (h!30230 stack!12)) (size!19404 (totalInput!3329 (h!30230 stack!12))) (lastNullablePos!510 (h!30230 stack!12)))))))

(declare-fun b!2154531 () Bool)

(declare-fun res!928948 () Bool)

(assert (=> b!2154531 (=> (not res!928948) (not e!1378020))))

(assert (=> b!2154531 (= res!928948 (<= (from!2823 (h!30230 stack!12)) (size!19404 (totalInput!3329 (h!30230 stack!12)))))))

(declare-fun b!2154532 () Bool)

(declare-fun res!928951 () Bool)

(assert (=> b!2154532 (=> (not res!928951) (not e!1378020))))

(declare-fun e!1378019 () Bool)

(assert (=> b!2154532 (= res!928951 e!1378019)))

(declare-fun res!928949 () Bool)

(assert (=> b!2154532 (=> res!928949 e!1378019)))

(assert (=> b!2154532 (= res!928949 (not (nullableZipper!215 (z!5981 (h!30230 stack!12)))))))

(declare-fun b!2154533 () Bool)

(assert (=> b!2154533 (= e!1378019 (= (lastNullablePos!510 (h!30230 stack!12)) (- (from!2823 (h!30230 stack!12)) 1)))))

(assert (= (and d!646144 res!928947) b!2154531))

(assert (= (and b!2154531 res!928948) b!2154528))

(assert (= (and b!2154528 res!928946) b!2154529))

(assert (= (and b!2154529 res!928950) b!2154532))

(assert (= (and b!2154532 (not res!928949)) b!2154533))

(assert (= (and b!2154532 res!928951) b!2154530))

(declare-fun m!2595868 () Bool)

(assert (=> b!2154528 m!2595868))

(assert (=> b!2154530 m!2595868))

(assert (=> b!2154530 m!2595868))

(declare-fun m!2595870 () Bool)

(assert (=> b!2154530 m!2595870))

(assert (=> b!2154531 m!2595868))

(assert (=> b!2154532 m!2595828))

(assert (=> b!2154465 d!646144))

(declare-fun d!646146 () Bool)

(assert (=> d!646146 (= (inv!32806 (totalInput!3329 (h!30230 stack!12))) (isBalanced!2495 (c!341450 (totalInput!3329 (h!30230 stack!12)))))))

(declare-fun bs!445783 () Bool)

(assert (= bs!445783 d!646146))

(declare-fun m!2595872 () Bool)

(assert (=> bs!445783 m!2595872))

(assert (=> b!2154452 d!646146))

(declare-fun d!646148 () Bool)

(declare-fun res!928952 () Bool)

(declare-fun e!1378021 () Bool)

(assert (=> d!646148 (=> res!928952 e!1378021)))

(assert (=> d!646148 (= res!928952 ((_ is Nil!24829) stack!12))))

(assert (=> d!646148 (= (forall!5092 stack!12 lambda!81239) e!1378021)))

(declare-fun b!2154534 () Bool)

(declare-fun e!1378022 () Bool)

(assert (=> b!2154534 (= e!1378021 e!1378022)))

(declare-fun res!928953 () Bool)

(assert (=> b!2154534 (=> (not res!928953) (not e!1378022))))

(assert (=> b!2154534 (= res!928953 (dynLambda!11409 lambda!81239 (h!30230 stack!12)))))

(declare-fun b!2154535 () Bool)

(assert (=> b!2154535 (= e!1378022 (forall!5092 (t!197461 stack!12) lambda!81239))))

(assert (= (and d!646148 (not res!928952)) b!2154534))

(assert (= (and b!2154534 res!928953) b!2154535))

(declare-fun b_lambda!70923 () Bool)

(assert (=> (not b_lambda!70923) (not b!2154534)))

(declare-fun m!2595874 () Bool)

(assert (=> b!2154534 m!2595874))

(declare-fun m!2595876 () Bool)

(assert (=> b!2154535 m!2595876))

(assert (=> b!2154451 d!646148))

(declare-fun d!646150 () Bool)

(declare-fun lt!801463 () Int)

(assert (=> d!646150 (= lt!801463 (size!19405 (list!9566 totalInput!880)))))

(assert (=> d!646150 (= lt!801463 (size!19406 (c!341450 totalInput!880)))))

(assert (=> d!646150 (= (size!19404 totalInput!880) lt!801463)))

(declare-fun bs!445784 () Bool)

(assert (= bs!445784 d!646150))

(declare-fun m!2595878 () Bool)

(assert (=> bs!445784 m!2595878))

(assert (=> bs!445784 m!2595878))

(declare-fun m!2595880 () Bool)

(assert (=> bs!445784 m!2595880))

(declare-fun m!2595882 () Bool)

(assert (=> bs!445784 m!2595882))

(assert (=> b!2154461 d!646150))

(declare-fun d!646152 () Bool)

(assert (=> d!646152 (= (inv!32806 (totalInput!3330 cacheFurthestNullable!118)) (isBalanced!2495 (c!341450 (totalInput!3330 cacheFurthestNullable!118))))))

(declare-fun bs!445785 () Bool)

(assert (= bs!445785 d!646152))

(declare-fun m!2595884 () Bool)

(assert (=> bs!445785 m!2595884))

(assert (=> b!2154463 d!646152))

(declare-fun b!2154541 () Bool)

(assert (=> b!2154541 true))

(declare-fun d!646154 () Bool)

(declare-fun res!928958 () Bool)

(declare-fun e!1378025 () Bool)

(assert (=> d!646154 (=> (not res!928958) (not e!1378025))))

(declare-fun valid!2248 (MutableMap!2824) Bool)

(assert (=> d!646154 (= res!928958 (valid!2248 (cache!3205 cacheFurthestNullable!118)))))

(assert (=> d!646154 (= (validCacheMapFurthestNullable!164 (cache!3205 cacheFurthestNullable!118) (totalInput!3330 cacheFurthestNullable!118)) e!1378025)))

(declare-fun b!2154540 () Bool)

(declare-fun res!928959 () Bool)

(assert (=> b!2154540 (=> (not res!928959) (not e!1378025))))

(declare-fun invariantList!330 (List!24914) Bool)

(declare-datatypes ((ListMap!713 0))(
  ( (ListMap!714 (toList!1120 List!24914)) )
))
(declare-fun map!5001 (MutableMap!2824) ListMap!713)

(assert (=> b!2154540 (= res!928959 (invariantList!330 (toList!1120 (map!5001 (cache!3205 cacheFurthestNullable!118)))))))

(declare-fun lambda!81248 () Int)

(declare-fun forall!5094 (List!24914 Int) Bool)

(assert (=> b!2154541 (= e!1378025 (forall!5094 (toList!1120 (map!5001 (cache!3205 cacheFurthestNullable!118))) lambda!81248))))

(assert (= (and d!646154 res!928958) b!2154540))

(assert (= (and b!2154540 res!928959) b!2154541))

(declare-fun m!2595887 () Bool)

(assert (=> d!646154 m!2595887))

(declare-fun m!2595889 () Bool)

(assert (=> b!2154540 m!2595889))

(declare-fun m!2595891 () Bool)

(assert (=> b!2154540 m!2595891))

(assert (=> b!2154541 m!2595889))

(declare-fun m!2595893 () Bool)

(assert (=> b!2154541 m!2595893))

(assert (=> b!2154462 d!646154))

(declare-fun d!646156 () Bool)

(assert (=> d!646156 (= (array_inv!3168 (_keys!3207 (v!29283 (underlying!6015 (v!29284 (underlying!6016 (cache!3205 cacheFurthestNullable!118))))))) (bvsge (size!19402 (_keys!3207 (v!29283 (underlying!6015 (v!29284 (underlying!6016 (cache!3205 cacheFurthestNullable!118))))))) #b00000000000000000000000000000000))))

(assert (=> b!2154471 d!646156))

(declare-fun d!646158 () Bool)

(assert (=> d!646158 (= (array_inv!3169 (_values!3190 (v!29283 (underlying!6015 (v!29284 (underlying!6016 (cache!3205 cacheFurthestNullable!118))))))) (bvsge (size!19403 (_values!3190 (v!29283 (underlying!6015 (v!29284 (underlying!6016 (cache!3205 cacheFurthestNullable!118))))))) #b00000000000000000000000000000000))))

(assert (=> b!2154471 d!646158))

(declare-fun b!2154548 () Bool)

(declare-fun e!1378028 () Bool)

(declare-fun tp!670306 () Bool)

(declare-fun tp!670307 () Bool)

(assert (=> b!2154548 (= e!1378028 (and tp!670306 tp!670307))))

(assert (=> b!2154464 (= tp!670292 e!1378028)))

(assert (= (and b!2154464 ((_ is Cons!24827) (exprs!1979 setElem!17506))) b!2154548))

(declare-fun e!1378034 () Bool)

(declare-fun b!2154557 () Bool)

(declare-fun tp!670316 () Bool)

(declare-fun tp!670315 () Bool)

(assert (=> b!2154557 (= e!1378034 (and (inv!32805 (left!19102 (c!341450 (totalInput!3329 (h!30230 stack!12))))) tp!670316 (inv!32805 (right!19432 (c!341450 (totalInput!3329 (h!30230 stack!12))))) tp!670315))))

(declare-fun b!2154559 () Bool)

(declare-fun e!1378033 () Bool)

(declare-fun tp!670314 () Bool)

(assert (=> b!2154559 (= e!1378033 tp!670314)))

(declare-fun b!2154558 () Bool)

(declare-fun inv!32812 (IArray!16095) Bool)

(assert (=> b!2154558 (= e!1378034 (and (inv!32812 (xs!10987 (c!341450 (totalInput!3329 (h!30230 stack!12))))) e!1378033))))

(assert (=> b!2154459 (= tp!670297 (and (inv!32805 (c!341450 (totalInput!3329 (h!30230 stack!12)))) e!1378034))))

(assert (= (and b!2154459 ((_ is Node!8045) (c!341450 (totalInput!3329 (h!30230 stack!12))))) b!2154557))

(assert (= b!2154558 b!2154559))

(assert (= (and b!2154459 ((_ is Leaf!11767) (c!341450 (totalInput!3329 (h!30230 stack!12))))) b!2154558))

(declare-fun m!2595895 () Bool)

(assert (=> b!2154557 m!2595895))

(declare-fun m!2595897 () Bool)

(assert (=> b!2154557 m!2595897))

(declare-fun m!2595899 () Bool)

(assert (=> b!2154558 m!2595899))

(assert (=> b!2154459 m!2595804))

(declare-fun condSetEmpty!17509 () Bool)

(assert (=> setNonEmpty!17506 (= condSetEmpty!17509 (= setRest!17506 ((as const (Array Context!2958 Bool)) false)))))

(declare-fun setRes!17509 () Bool)

(assert (=> setNonEmpty!17506 (= tp!670293 setRes!17509)))

(declare-fun setIsEmpty!17509 () Bool)

(assert (=> setIsEmpty!17509 setRes!17509))

(declare-fun setElem!17509 () Context!2958)

(declare-fun e!1378037 () Bool)

(declare-fun tp!670322 () Bool)

(declare-fun setNonEmpty!17509 () Bool)

(assert (=> setNonEmpty!17509 (= setRes!17509 (and tp!670322 (inv!32807 setElem!17509) e!1378037))))

(declare-fun setRest!17509 () (InoxSet Context!2958))

(assert (=> setNonEmpty!17509 (= setRest!17506 ((_ map or) (store ((as const (Array Context!2958 Bool)) false) setElem!17509 true) setRest!17509))))

(declare-fun b!2154564 () Bool)

(declare-fun tp!670321 () Bool)

(assert (=> b!2154564 (= e!1378037 tp!670321)))

(assert (= (and setNonEmpty!17506 condSetEmpty!17509) setIsEmpty!17509))

(assert (= (and setNonEmpty!17506 (not condSetEmpty!17509)) setNonEmpty!17509))

(assert (= setNonEmpty!17509 b!2154564))

(declare-fun m!2595901 () Bool)

(assert (=> setNonEmpty!17509 m!2595901))

(declare-fun e!1378039 () Bool)

(declare-fun tp!670324 () Bool)

(declare-fun tp!670325 () Bool)

(declare-fun b!2154565 () Bool)

(assert (=> b!2154565 (= e!1378039 (and (inv!32805 (left!19102 (c!341450 totalInput!880))) tp!670325 (inv!32805 (right!19432 (c!341450 totalInput!880))) tp!670324))))

(declare-fun b!2154567 () Bool)

(declare-fun e!1378038 () Bool)

(declare-fun tp!670323 () Bool)

(assert (=> b!2154567 (= e!1378038 tp!670323)))

(declare-fun b!2154566 () Bool)

(assert (=> b!2154566 (= e!1378039 (and (inv!32812 (xs!10987 (c!341450 totalInput!880))) e!1378038))))

(assert (=> b!2154455 (= tp!670295 (and (inv!32805 (c!341450 totalInput!880)) e!1378039))))

(assert (= (and b!2154455 ((_ is Node!8045) (c!341450 totalInput!880))) b!2154565))

(assert (= b!2154566 b!2154567))

(assert (= (and b!2154455 ((_ is Leaf!11767) (c!341450 totalInput!880))) b!2154566))

(declare-fun m!2595903 () Bool)

(assert (=> b!2154565 m!2595903))

(declare-fun m!2595905 () Bool)

(assert (=> b!2154565 m!2595905))

(declare-fun m!2595907 () Bool)

(assert (=> b!2154566 m!2595907))

(assert (=> b!2154455 m!2595792))

(declare-fun setRes!17512 () Bool)

(declare-fun e!1378048 () Bool)

(declare-fun e!1378050 () Bool)

(declare-fun b!2154578 () Bool)

(assert (=> b!2154578 (= e!1378048 (and setRes!17512 (inv!32806 (totalInput!3329 (h!30230 (t!197461 stack!12)))) e!1378050))))

(declare-fun condSetEmpty!17512 () Bool)

(assert (=> b!2154578 (= condSetEmpty!17512 (= (z!5981 (h!30230 (t!197461 stack!12))) ((as const (Array Context!2958 Bool)) false)))))

(declare-fun e!1378049 () Bool)

(assert (=> b!2154465 (= tp!670299 e!1378049)))

(declare-fun b!2154579 () Bool)

(declare-fun e!1378051 () Bool)

(declare-fun tp!670334 () Bool)

(assert (=> b!2154579 (= e!1378051 tp!670334)))

(declare-fun setIsEmpty!17512 () Bool)

(assert (=> setIsEmpty!17512 setRes!17512))

(declare-fun tp!670335 () Bool)

(declare-fun b!2154580 () Bool)

(assert (=> b!2154580 (= e!1378049 (and (inv!32809 (h!30230 (t!197461 stack!12))) e!1378048 tp!670335))))

(declare-fun b!2154581 () Bool)

(declare-fun tp!670337 () Bool)

(assert (=> b!2154581 (= e!1378050 (and (inv!32805 (c!341450 (totalInput!3329 (h!30230 (t!197461 stack!12))))) tp!670337))))

(declare-fun tp!670336 () Bool)

(declare-fun setElem!17512 () Context!2958)

(declare-fun setNonEmpty!17512 () Bool)

(assert (=> setNonEmpty!17512 (= setRes!17512 (and tp!670336 (inv!32807 setElem!17512) e!1378051))))

(declare-fun setRest!17512 () (InoxSet Context!2958))

(assert (=> setNonEmpty!17512 (= (z!5981 (h!30230 (t!197461 stack!12))) ((_ map or) (store ((as const (Array Context!2958 Bool)) false) setElem!17512 true) setRest!17512))))

(assert (= (and b!2154578 condSetEmpty!17512) setIsEmpty!17512))

(assert (= (and b!2154578 (not condSetEmpty!17512)) setNonEmpty!17512))

(assert (= setNonEmpty!17512 b!2154579))

(assert (= b!2154578 b!2154581))

(assert (= b!2154580 b!2154578))

(assert (= (and b!2154465 ((_ is Cons!24829) (t!197461 stack!12))) b!2154580))

(declare-fun m!2595909 () Bool)

(assert (=> b!2154578 m!2595909))

(declare-fun m!2595911 () Bool)

(assert (=> b!2154580 m!2595911))

(declare-fun m!2595913 () Bool)

(assert (=> b!2154581 m!2595913))

(declare-fun m!2595915 () Bool)

(assert (=> setNonEmpty!17512 m!2595915))

(declare-fun b!2154589 () Bool)

(declare-fun e!1378056 () Bool)

(declare-fun tp!670346 () Bool)

(assert (=> b!2154589 (= e!1378056 tp!670346)))

(declare-fun e!1378057 () Bool)

(assert (=> b!2154456 (= tp!670290 e!1378057)))

(declare-fun setNonEmpty!17515 () Bool)

(declare-fun setRes!17515 () Bool)

(declare-fun tp!670345 () Bool)

(declare-fun setElem!17515 () Context!2958)

(assert (=> setNonEmpty!17515 (= setRes!17515 (and tp!670345 (inv!32807 setElem!17515) e!1378056))))

(declare-fun setRest!17515 () (InoxSet Context!2958))

(assert (=> setNonEmpty!17515 (= (_1!14595 (_1!14596 (h!30231 mapDefault!13757))) ((_ map or) (store ((as const (Array Context!2958 Bool)) false) setElem!17515 true) setRest!17515))))

(declare-fun b!2154588 () Bool)

(declare-fun tp!670344 () Bool)

(assert (=> b!2154588 (= e!1378057 (and setRes!17515 tp!670344))))

(declare-fun condSetEmpty!17515 () Bool)

(assert (=> b!2154588 (= condSetEmpty!17515 (= (_1!14595 (_1!14596 (h!30231 mapDefault!13757))) ((as const (Array Context!2958 Bool)) false)))))

(declare-fun setIsEmpty!17515 () Bool)

(assert (=> setIsEmpty!17515 setRes!17515))

(assert (= (and b!2154588 condSetEmpty!17515) setIsEmpty!17515))

(assert (= (and b!2154588 (not condSetEmpty!17515)) setNonEmpty!17515))

(assert (= setNonEmpty!17515 b!2154589))

(assert (= (and b!2154456 ((_ is Cons!24830) mapDefault!13757)) b!2154588))

(declare-fun m!2595917 () Bool)

(assert (=> setNonEmpty!17515 m!2595917))

(declare-fun setIsEmpty!17520 () Bool)

(declare-fun setRes!17521 () Bool)

(assert (=> setIsEmpty!17520 setRes!17521))

(declare-fun b!2154600 () Bool)

(declare-fun e!1378069 () Bool)

(declare-fun tp!670364 () Bool)

(assert (=> b!2154600 (= e!1378069 tp!670364)))

(declare-fun mapIsEmpty!13760 () Bool)

(declare-fun mapRes!13760 () Bool)

(assert (=> mapIsEmpty!13760 mapRes!13760))

(declare-fun b!2154601 () Bool)

(declare-fun e!1378066 () Bool)

(declare-fun tp!670365 () Bool)

(assert (=> b!2154601 (= e!1378066 tp!670365)))

(declare-fun setElem!17521 () Context!2958)

(declare-fun setNonEmpty!17520 () Bool)

(declare-fun tp!670363 () Bool)

(assert (=> setNonEmpty!17520 (= setRes!17521 (and tp!670363 (inv!32807 setElem!17521) e!1378069))))

(declare-fun mapValue!13760 () List!24914)

(declare-fun setRest!17520 () (InoxSet Context!2958))

(assert (=> setNonEmpty!17520 (= (_1!14595 (_1!14596 (h!30231 mapValue!13760))) ((_ map or) (store ((as const (Array Context!2958 Bool)) false) setElem!17521 true) setRest!17520))))

(declare-fun mapNonEmpty!13760 () Bool)

(declare-fun tp!670361 () Bool)

(declare-fun e!1378068 () Bool)

(assert (=> mapNonEmpty!13760 (= mapRes!13760 (and tp!670361 e!1378068))))

(declare-fun mapKey!13760 () (_ BitVec 32))

(declare-fun mapRest!13760 () (Array (_ BitVec 32) List!24914))

(assert (=> mapNonEmpty!13760 (= mapRest!13757 (store mapRest!13760 mapKey!13760 mapValue!13760))))

(declare-fun b!2154602 () Bool)

(declare-fun e!1378067 () Bool)

(declare-fun setRes!17520 () Bool)

(declare-fun tp!670367 () Bool)

(assert (=> b!2154602 (= e!1378067 (and setRes!17520 tp!670367))))

(declare-fun condSetEmpty!17520 () Bool)

(declare-fun mapDefault!13760 () List!24914)

(assert (=> b!2154602 (= condSetEmpty!17520 (= (_1!14595 (_1!14596 (h!30231 mapDefault!13760))) ((as const (Array Context!2958 Bool)) false)))))

(declare-fun condMapEmpty!13760 () Bool)

(assert (=> mapNonEmpty!13757 (= condMapEmpty!13760 (= mapRest!13757 ((as const (Array (_ BitVec 32) List!24914)) mapDefault!13760)))))

(assert (=> mapNonEmpty!13757 (= tp!670301 (and e!1378067 mapRes!13760))))

(declare-fun setIsEmpty!17521 () Bool)

(assert (=> setIsEmpty!17521 setRes!17520))

(declare-fun b!2154603 () Bool)

(declare-fun tp!670366 () Bool)

(assert (=> b!2154603 (= e!1378068 (and setRes!17521 tp!670366))))

(declare-fun condSetEmpty!17521 () Bool)

(assert (=> b!2154603 (= condSetEmpty!17521 (= (_1!14595 (_1!14596 (h!30231 mapValue!13760))) ((as const (Array Context!2958 Bool)) false)))))

(declare-fun tp!670362 () Bool)

(declare-fun setNonEmpty!17521 () Bool)

(declare-fun setElem!17520 () Context!2958)

(assert (=> setNonEmpty!17521 (= setRes!17520 (and tp!670362 (inv!32807 setElem!17520) e!1378066))))

(declare-fun setRest!17521 () (InoxSet Context!2958))

(assert (=> setNonEmpty!17521 (= (_1!14595 (_1!14596 (h!30231 mapDefault!13760))) ((_ map or) (store ((as const (Array Context!2958 Bool)) false) setElem!17520 true) setRest!17521))))

(assert (= (and mapNonEmpty!13757 condMapEmpty!13760) mapIsEmpty!13760))

(assert (= (and mapNonEmpty!13757 (not condMapEmpty!13760)) mapNonEmpty!13760))

(assert (= (and b!2154603 condSetEmpty!17521) setIsEmpty!17520))

(assert (= (and b!2154603 (not condSetEmpty!17521)) setNonEmpty!17520))

(assert (= setNonEmpty!17520 b!2154600))

(assert (= (and mapNonEmpty!13760 ((_ is Cons!24830) mapValue!13760)) b!2154603))

(assert (= (and b!2154602 condSetEmpty!17520) setIsEmpty!17521))

(assert (= (and b!2154602 (not condSetEmpty!17520)) setNonEmpty!17521))

(assert (= setNonEmpty!17521 b!2154601))

(assert (= (and mapNonEmpty!13757 ((_ is Cons!24830) mapDefault!13760)) b!2154602))

(declare-fun m!2595919 () Bool)

(assert (=> setNonEmpty!17520 m!2595919))

(declare-fun m!2595921 () Bool)

(assert (=> mapNonEmpty!13760 m!2595921))

(declare-fun m!2595923 () Bool)

(assert (=> setNonEmpty!17521 m!2595923))

(declare-fun b!2154605 () Bool)

(declare-fun e!1378070 () Bool)

(declare-fun tp!670370 () Bool)

(assert (=> b!2154605 (= e!1378070 tp!670370)))

(declare-fun e!1378071 () Bool)

(assert (=> mapNonEmpty!13757 (= tp!670296 e!1378071)))

(declare-fun setElem!17522 () Context!2958)

(declare-fun setRes!17522 () Bool)

(declare-fun tp!670369 () Bool)

(declare-fun setNonEmpty!17522 () Bool)

(assert (=> setNonEmpty!17522 (= setRes!17522 (and tp!670369 (inv!32807 setElem!17522) e!1378070))))

(declare-fun setRest!17522 () (InoxSet Context!2958))

(assert (=> setNonEmpty!17522 (= (_1!14595 (_1!14596 (h!30231 mapValue!13757))) ((_ map or) (store ((as const (Array Context!2958 Bool)) false) setElem!17522 true) setRest!17522))))

(declare-fun b!2154604 () Bool)

(declare-fun tp!670368 () Bool)

(assert (=> b!2154604 (= e!1378071 (and setRes!17522 tp!670368))))

(declare-fun condSetEmpty!17522 () Bool)

(assert (=> b!2154604 (= condSetEmpty!17522 (= (_1!14595 (_1!14596 (h!30231 mapValue!13757))) ((as const (Array Context!2958 Bool)) false)))))

(declare-fun setIsEmpty!17522 () Bool)

(assert (=> setIsEmpty!17522 setRes!17522))

(assert (= (and b!2154604 condSetEmpty!17522) setIsEmpty!17522))

(assert (= (and b!2154604 (not condSetEmpty!17522)) setNonEmpty!17522))

(assert (= setNonEmpty!17522 b!2154605))

(assert (= (and mapNonEmpty!13757 ((_ is Cons!24830) mapValue!13757)) b!2154604))

(declare-fun m!2595925 () Bool)

(assert (=> setNonEmpty!17522 m!2595925))

(declare-fun e!1378073 () Bool)

(declare-fun tp!670372 () Bool)

(declare-fun b!2154606 () Bool)

(declare-fun tp!670373 () Bool)

(assert (=> b!2154606 (= e!1378073 (and (inv!32805 (left!19102 (c!341450 (totalInput!3330 cacheFurthestNullable!118)))) tp!670373 (inv!32805 (right!19432 (c!341450 (totalInput!3330 cacheFurthestNullable!118)))) tp!670372))))

(declare-fun b!2154608 () Bool)

(declare-fun e!1378072 () Bool)

(declare-fun tp!670371 () Bool)

(assert (=> b!2154608 (= e!1378072 tp!670371)))

(declare-fun b!2154607 () Bool)

(assert (=> b!2154607 (= e!1378073 (and (inv!32812 (xs!10987 (c!341450 (totalInput!3330 cacheFurthestNullable!118)))) e!1378072))))

(assert (=> b!2154448 (= tp!670300 (and (inv!32805 (c!341450 (totalInput!3330 cacheFurthestNullable!118))) e!1378073))))

(assert (= (and b!2154448 ((_ is Node!8045) (c!341450 (totalInput!3330 cacheFurthestNullable!118)))) b!2154606))

(assert (= b!2154607 b!2154608))

(assert (= (and b!2154448 ((_ is Leaf!11767) (c!341450 (totalInput!3330 cacheFurthestNullable!118)))) b!2154607))

(declare-fun m!2595927 () Bool)

(assert (=> b!2154606 m!2595927))

(declare-fun m!2595929 () Bool)

(assert (=> b!2154606 m!2595929))

(declare-fun m!2595931 () Bool)

(assert (=> b!2154607 m!2595931))

(assert (=> b!2154448 m!2595790))

(declare-fun b!2154610 () Bool)

(declare-fun e!1378074 () Bool)

(declare-fun tp!670376 () Bool)

(assert (=> b!2154610 (= e!1378074 tp!670376)))

(declare-fun e!1378075 () Bool)

(assert (=> b!2154471 (= tp!670294 e!1378075)))

(declare-fun tp!670375 () Bool)

(declare-fun setNonEmpty!17523 () Bool)

(declare-fun setElem!17523 () Context!2958)

(declare-fun setRes!17523 () Bool)

(assert (=> setNonEmpty!17523 (= setRes!17523 (and tp!670375 (inv!32807 setElem!17523) e!1378074))))

(declare-fun setRest!17523 () (InoxSet Context!2958))

(assert (=> setNonEmpty!17523 (= (_1!14595 (_1!14596 (h!30231 (zeroValue!3168 (v!29283 (underlying!6015 (v!29284 (underlying!6016 (cache!3205 cacheFurthestNullable!118))))))))) ((_ map or) (store ((as const (Array Context!2958 Bool)) false) setElem!17523 true) setRest!17523))))

(declare-fun b!2154609 () Bool)

(declare-fun tp!670374 () Bool)

(assert (=> b!2154609 (= e!1378075 (and setRes!17523 tp!670374))))

(declare-fun condSetEmpty!17523 () Bool)

(assert (=> b!2154609 (= condSetEmpty!17523 (= (_1!14595 (_1!14596 (h!30231 (zeroValue!3168 (v!29283 (underlying!6015 (v!29284 (underlying!6016 (cache!3205 cacheFurthestNullable!118))))))))) ((as const (Array Context!2958 Bool)) false)))))

(declare-fun setIsEmpty!17523 () Bool)

(assert (=> setIsEmpty!17523 setRes!17523))

(assert (= (and b!2154609 condSetEmpty!17523) setIsEmpty!17523))

(assert (= (and b!2154609 (not condSetEmpty!17523)) setNonEmpty!17523))

(assert (= setNonEmpty!17523 b!2154610))

(assert (= (and b!2154471 ((_ is Cons!24830) (zeroValue!3168 (v!29283 (underlying!6015 (v!29284 (underlying!6016 (cache!3205 cacheFurthestNullable!118)))))))) b!2154609))

(declare-fun m!2595933 () Bool)

(assert (=> setNonEmpty!17523 m!2595933))

(declare-fun b!2154612 () Bool)

(declare-fun e!1378076 () Bool)

(declare-fun tp!670379 () Bool)

(assert (=> b!2154612 (= e!1378076 tp!670379)))

(declare-fun e!1378077 () Bool)

(assert (=> b!2154471 (= tp!670289 e!1378077)))

(declare-fun tp!670378 () Bool)

(declare-fun setNonEmpty!17524 () Bool)

(declare-fun setRes!17524 () Bool)

(declare-fun setElem!17524 () Context!2958)

(assert (=> setNonEmpty!17524 (= setRes!17524 (and tp!670378 (inv!32807 setElem!17524) e!1378076))))

(declare-fun setRest!17524 () (InoxSet Context!2958))

(assert (=> setNonEmpty!17524 (= (_1!14595 (_1!14596 (h!30231 (minValue!3168 (v!29283 (underlying!6015 (v!29284 (underlying!6016 (cache!3205 cacheFurthestNullable!118))))))))) ((_ map or) (store ((as const (Array Context!2958 Bool)) false) setElem!17524 true) setRest!17524))))

(declare-fun b!2154611 () Bool)

(declare-fun tp!670377 () Bool)

(assert (=> b!2154611 (= e!1378077 (and setRes!17524 tp!670377))))

(declare-fun condSetEmpty!17524 () Bool)

(assert (=> b!2154611 (= condSetEmpty!17524 (= (_1!14595 (_1!14596 (h!30231 (minValue!3168 (v!29283 (underlying!6015 (v!29284 (underlying!6016 (cache!3205 cacheFurthestNullable!118))))))))) ((as const (Array Context!2958 Bool)) false)))))

(declare-fun setIsEmpty!17524 () Bool)

(assert (=> setIsEmpty!17524 setRes!17524))

(assert (= (and b!2154611 condSetEmpty!17524) setIsEmpty!17524))

(assert (= (and b!2154611 (not condSetEmpty!17524)) setNonEmpty!17524))

(assert (= setNonEmpty!17524 b!2154612))

(assert (= (and b!2154471 ((_ is Cons!24830) (minValue!3168 (v!29283 (underlying!6015 (v!29284 (underlying!6016 (cache!3205 cacheFurthestNullable!118)))))))) b!2154611))

(declare-fun m!2595935 () Bool)

(assert (=> setNonEmpty!17524 m!2595935))

(declare-fun b_lambda!70925 () Bool)

(assert (= b_lambda!70923 (or b!2154451 b_lambda!70925)))

(declare-fun bs!445786 () Bool)

(declare-fun d!646160 () Bool)

(assert (= bs!445786 (and d!646160 b!2154451)))

(assert (=> bs!445786 (= (dynLambda!11409 lambda!81239 (h!30230 stack!12)) (= (res!928916 (h!30230 stack!12)) res!17610))))

(assert (=> b!2154534 d!646160))

(declare-fun b_lambda!70927 () Bool)

(assert (= b_lambda!70921 (or b!2154472 b_lambda!70927)))

(declare-fun bs!445787 () Bool)

(declare-fun d!646162 () Bool)

(assert (= bs!445787 (and d!646162 b!2154472)))

(assert (=> bs!445787 (= (dynLambda!11409 lambda!81238 (h!30230 stack!12)) (= (totalInput!3329 (h!30230 stack!12)) totalInput!880))))

(assert (=> b!2154511 d!646162))

(check-sat (not b!2154602) (not d!646146) (not b!2154601) (not b!2154506) (not b!2154459) (not b!2154581) (not b_next!64333) (not b!2154567) (not d!646134) (not b!2154488) (not b!2154588) (not b!2154603) (not b!2154512) (not b!2154605) (not b!2154589) (not b!2154499) (not setNonEmpty!17509) (not setNonEmpty!17523) (not b_next!64335) (not b_lambda!70925) b_and!173247 (not b!2154564) (not b!2154565) (not setNonEmpty!17521) (not setNonEmpty!17524) (not d!646154) (not b!2154566) (not b!2154540) (not setNonEmpty!17512) (not b!2154559) (not setNonEmpty!17522) (not d!646140) (not d!646122) (not b!2154606) (not b!2154448) (not b!2154548) (not b!2154513) (not b!2154557) (not b!2154531) (not b!2154535) (not b!2154503) (not b!2154610) (not b!2154504) (not b!2154558) (not b!2154578) (not b!2154541) (not d!646130) (not mapNonEmpty!13760) (not b!2154455) (not b!2154530) (not b!2154580) (not b!2154600) (not b!2154611) (not b!2154608) (not b!2154532) (not setNonEmpty!17515) (not d!646126) (not b!2154579) (not d!646150) (not b!2154528) (not b!2154607) (not b!2154515) b_and!173245 (not d!646152) (not d!646128) (not b_lambda!70927) (not b!2154485) (not b!2154483) (not setNonEmpty!17520) (not b!2154612) (not b!2154604) (not b!2154609))
(check-sat b_and!173245 b_and!173247 (not b_next!64333) (not b_next!64335))
