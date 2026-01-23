; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!209190 () Bool)

(assert start!209190)

(declare-fun b!2156374 () Bool)

(declare-fun b_free!63693 () Bool)

(declare-fun b_next!64397 () Bool)

(assert (=> b!2156374 (= b_free!63693 (not b_next!64397))))

(declare-fun tp!671467 () Bool)

(declare-fun b_and!173309 () Bool)

(assert (=> b!2156374 (= tp!671467 b_and!173309)))

(declare-fun b!2156385 () Bool)

(declare-fun b_free!63695 () Bool)

(declare-fun b_next!64399 () Bool)

(assert (=> b!2156385 (= b_free!63695 (not b_next!64399))))

(declare-fun tp!671461 () Bool)

(declare-fun b_and!173311 () Bool)

(assert (=> b!2156385 (= tp!671461 b_and!173311)))

(declare-fun b!2156370 () Bool)

(assert (=> b!2156370 true))

(declare-fun bs!445875 () Bool)

(declare-fun b!2156373 () Bool)

(assert (= bs!445875 (and b!2156373 b!2156370)))

(declare-fun lambda!81374 () Int)

(declare-fun lambda!81373 () Int)

(assert (=> bs!445875 (not (= lambda!81374 lambda!81373))))

(assert (=> b!2156373 true))

(declare-fun b!2156369 () Bool)

(declare-fun e!1379369 () Bool)

(declare-fun e!1379372 () Bool)

(assert (=> b!2156369 (= e!1379369 e!1379372)))

(declare-fun setRes!17680 () Bool)

(declare-fun setNonEmpty!17680 () Bool)

(declare-fun e!1379364 () Bool)

(declare-datatypes ((C!11996 0))(
  ( (C!11997 (val!6984 Int)) )
))
(declare-datatypes ((Regex!5925 0))(
  ( (ElementMatch!5925 (c!341548 C!11996)) (Concat!10227 (regOne!12362 Regex!5925) (regTwo!12362 Regex!5925)) (EmptyExpr!5925) (Star!5925 (reg!6254 Regex!5925)) (EmptyLang!5925) (Union!5925 (regOne!12363 Regex!5925) (regTwo!12363 Regex!5925)) )
))
(declare-datatypes ((List!24973 0))(
  ( (Nil!24889) (Cons!24889 (h!30290 Regex!5925) (t!197521 List!24973)) )
))
(declare-datatypes ((Context!2990 0))(
  ( (Context!2991 (exprs!1995 List!24973)) )
))
(declare-fun setElem!17680 () Context!2990)

(declare-fun tp!671469 () Bool)

(declare-fun inv!32911 (Context!2990) Bool)

(assert (=> setNonEmpty!17680 (= setRes!17680 (and tp!671469 (inv!32911 setElem!17680) e!1379364))))

(declare-datatypes ((List!24974 0))(
  ( (Nil!24890) (Cons!24890 (h!30291 C!11996) (t!197522 List!24974)) )
))
(declare-datatypes ((IArray!16127 0))(
  ( (IArray!16128 (innerList!8121 List!24974)) )
))
(declare-datatypes ((Conc!8061 0))(
  ( (Node!8061 (left!19158 Conc!8061) (right!19488 Conc!8061) (csize!16352 Int) (cheight!8272 Int)) (Leaf!11791 (xs!11003 IArray!16127) (csize!16353 Int)) (Empty!8061) )
))
(declare-datatypes ((BalanceConc!15884 0))(
  ( (BalanceConc!15885 (c!341549 Conc!8061)) )
))
(define-sort InoxSet (T) (Array T Bool))

(declare-datatypes ((StackFrame!380 0))(
  ( (StackFrame!381 (z!6001 (InoxSet Context!2990)) (from!2842 Int) (lastNullablePos!529 Int) (res!929547 Int) (totalInput!3361 BalanceConc!15884)) )
))
(declare-datatypes ((List!24975 0))(
  ( (Nil!24891) (Cons!24891 (h!30292 StackFrame!380) (t!197523 List!24975)) )
))
(declare-fun stack!12 () List!24975)

(declare-fun setRest!17680 () (InoxSet Context!2990))

(assert (=> setNonEmpty!17680 (= (z!6001 (h!30292 stack!12)) ((_ map or) (store ((as const (Array Context!2990 Bool)) false) setElem!17680 true) setRest!17680))))

(declare-fun mapIsEmpty!13826 () Bool)

(declare-fun mapRes!13826 () Bool)

(assert (=> mapIsEmpty!13826 mapRes!13826))

(declare-fun res!929543 () Bool)

(declare-fun e!1379363 () Bool)

(assert (=> b!2156370 (=> (not res!929543) (not e!1379363))))

(declare-fun forall!5114 (List!24975 Int) Bool)

(assert (=> b!2156370 (= res!929543 (forall!5114 stack!12 lambda!81373))))

(declare-fun b!2156371 () Bool)

(declare-fun tp!671465 () Bool)

(assert (=> b!2156371 (= e!1379364 tp!671465)))

(declare-fun b!2156372 () Bool)

(declare-fun e!1379366 () Bool)

(assert (=> b!2156372 (= e!1379363 e!1379366)))

(declare-fun res!929544 () Bool)

(assert (=> b!2156372 (=> (not res!929544) (not e!1379366))))

(declare-fun res!17610 () Int)

(assert (=> b!2156372 (= res!929544 (and (= (res!929547 (h!30292 stack!12)) res!17610) (>= (from!2842 (h!30292 stack!12)) 0)))))

(declare-datatypes ((Unit!37963 0))(
  ( (Unit!37964) )
))
(declare-fun lt!801610 () Unit!37963)

(declare-datatypes ((tuple3!3734 0))(
  ( (tuple3!3735 (_1!14633 (InoxSet Context!2990)) (_2!14633 Int) (_3!2337 Int)) )
))
(declare-datatypes ((tuple2!24592 0))(
  ( (tuple2!24593 (_1!14634 tuple3!3734) (_2!14634 Int)) )
))
(declare-datatypes ((List!24976 0))(
  ( (Nil!24892) (Cons!24892 (h!30293 tuple2!24592) (t!197524 List!24976)) )
))
(declare-datatypes ((array!9971 0))(
  ( (array!9972 (arr!4448 (Array (_ BitVec 32) (_ BitVec 64))) (size!19448 (_ BitVec 32))) )
))
(declare-datatypes ((array!9973 0))(
  ( (array!9974 (arr!4449 (Array (_ BitVec 32) List!24976)) (size!19449 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!5852 0))(
  ( (LongMapFixedSize!5853 (defaultEntry!3291 Int) (mask!7204 (_ BitVec 32)) (extraKeys!3174 (_ BitVec 32)) (zeroValue!3184 List!24976) (minValue!3184 List!24976) (_size!5903 (_ BitVec 32)) (_keys!3223 array!9971) (_values!3206 array!9973) (_vacant!2987 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!11529 0))(
  ( (Cell!11530 (v!29315 LongMapFixedSize!5852)) )
))
(declare-datatypes ((Hashable!2840 0))(
  ( (HashableExt!2839 (__x!16954 Int)) )
))
(declare-datatypes ((MutLongMap!2926 0))(
  ( (LongMap!2926 (underlying!6047 Cell!11529)) (MutLongMapExt!2925 (__x!16955 Int)) )
))
(declare-datatypes ((Cell!11531 0))(
  ( (Cell!11532 (v!29316 MutLongMap!2926)) )
))
(declare-datatypes ((MutableMap!2840 0))(
  ( (MutableMapExt!2839 (__x!16956 Int)) (HashMap!2840 (underlying!6048 Cell!11531) (hashF!4763 Hashable!2840) (_size!5904 (_ BitVec 32)) (defaultValue!3002 Int)) )
))
(declare-datatypes ((CacheFurthestNullable!1038 0))(
  ( (CacheFurthestNullable!1039 (cache!3221 MutableMap!2840) (totalInput!3362 BalanceConc!15884)) )
))
(declare-fun cacheFurthestNullable!118 () CacheFurthestNullable!1038)

(declare-fun lemmaInvariant!405 (CacheFurthestNullable!1038) Unit!37963)

(assert (=> b!2156372 (= lt!801610 (lemmaInvariant!405 cacheFurthestNullable!118))))

(declare-fun res!929542 () Bool)

(assert (=> b!2156373 (=> (not res!929542) (not e!1379363))))

(assert (=> b!2156373 (= res!929542 (forall!5114 stack!12 lambda!81374))))

(declare-fun mapNonEmpty!13826 () Bool)

(declare-fun tp!671470 () Bool)

(declare-fun tp!671462 () Bool)

(assert (=> mapNonEmpty!13826 (= mapRes!13826 (and tp!671470 tp!671462))))

(declare-fun mapKey!13826 () (_ BitVec 32))

(declare-fun mapRest!13826 () (Array (_ BitVec 32) List!24976))

(declare-fun mapValue!13826 () List!24976)

(assert (=> mapNonEmpty!13826 (= (arr!4449 (_values!3206 (v!29315 (underlying!6047 (v!29316 (underlying!6048 (cache!3221 cacheFurthestNullable!118))))))) (store mapRest!13826 mapKey!13826 mapValue!13826))))

(declare-fun setIsEmpty!17680 () Bool)

(assert (=> setIsEmpty!17680 setRes!17680))

(declare-fun e!1379370 () Bool)

(declare-fun e!1379367 () Bool)

(assert (=> b!2156374 (= e!1379370 (and e!1379367 tp!671467))))

(declare-fun b!2156375 () Bool)

(declare-fun e!1379368 () Bool)

(assert (=> b!2156375 (= e!1379366 e!1379368)))

(declare-fun res!929546 () Bool)

(assert (=> b!2156375 (=> (not res!929546) (not e!1379368))))

(declare-fun lt!801608 () Int)

(assert (=> b!2156375 (= res!929546 (<= (from!2842 (h!30292 stack!12)) lt!801608))))

(declare-fun totalInput!880 () BalanceConc!15884)

(declare-fun size!19450 (BalanceConc!15884) Int)

(assert (=> b!2156375 (= lt!801608 (size!19450 totalInput!880))))

(declare-fun b!2156377 () Bool)

(declare-fun e!1379375 () Bool)

(assert (=> b!2156377 (= e!1379372 e!1379375)))

(declare-fun e!1379365 () Bool)

(declare-fun b!2156378 () Bool)

(declare-fun e!1379374 () Bool)

(declare-fun inv!32912 (BalanceConc!15884) Bool)

(assert (=> b!2156378 (= e!1379374 (and setRes!17680 (inv!32912 (totalInput!3361 (h!30292 stack!12))) e!1379365))))

(declare-fun condSetEmpty!17680 () Bool)

(assert (=> b!2156378 (= condSetEmpty!17680 (= (z!6001 (h!30292 stack!12)) ((as const (Array Context!2990 Bool)) false)))))

(declare-fun b!2156379 () Bool)

(declare-fun e!1379378 () Bool)

(declare-fun tp!671459 () Bool)

(declare-fun inv!32913 (Conc!8061) Bool)

(assert (=> b!2156379 (= e!1379378 (and (inv!32913 (c!341549 totalInput!880)) tp!671459))))

(declare-fun b!2156380 () Bool)

(declare-fun res!929540 () Bool)

(assert (=> b!2156380 (=> (not res!929540) (not e!1379363))))

(declare-fun totalInputSize!324 () Int)

(declare-fun counter!1 () Int)

(get-info :version)

(assert (=> b!2156380 (= res!929540 (and (not ((_ is Nil!24891) stack!12)) (or (<= totalInputSize!324 1048576) (= (- counter!1 (* 10 (ite (>= counter!1 0) (div counter!1 10) (- (div (- counter!1) 10))))) 0))))))

(declare-fun b!2156381 () Bool)

(declare-fun e!1379377 () Bool)

(declare-fun e!1379376 () Bool)

(assert (=> b!2156381 (= e!1379376 (and e!1379370 (inv!32912 (totalInput!3362 cacheFurthestNullable!118)) e!1379377))))

(declare-fun b!2156382 () Bool)

(declare-fun lt!801609 () MutLongMap!2926)

(assert (=> b!2156382 (= e!1379367 (and e!1379369 ((_ is LongMap!2926) lt!801609)))))

(assert (=> b!2156382 (= lt!801609 (v!29316 (underlying!6048 (cache!3221 cacheFurthestNullable!118))))))

(declare-fun b!2156383 () Bool)

(declare-fun furthestNullablePosition!136 ((InoxSet Context!2990) Int BalanceConc!15884 Int Int) Int)

(assert (=> b!2156383 (= e!1379368 (not (= res!17610 (furthestNullablePosition!136 (z!6001 (h!30292 stack!12)) (from!2842 (h!30292 stack!12)) totalInput!880 lt!801608 (lastNullablePos!529 (h!30292 stack!12))))))))

(declare-fun b!2156384 () Bool)

(declare-fun tp!671468 () Bool)

(assert (=> b!2156384 (= e!1379377 (and (inv!32913 (c!341549 (totalInput!3362 cacheFurthestNullable!118))) tp!671468))))

(declare-fun tp!671471 () Bool)

(declare-fun e!1379373 () Bool)

(declare-fun tp!671463 () Bool)

(declare-fun array_inv!3192 (array!9971) Bool)

(declare-fun array_inv!3193 (array!9973) Bool)

(assert (=> b!2156385 (= e!1379375 (and tp!671461 tp!671471 tp!671463 (array_inv!3192 (_keys!3223 (v!29315 (underlying!6047 (v!29316 (underlying!6048 (cache!3221 cacheFurthestNullable!118))))))) (array_inv!3193 (_values!3206 (v!29315 (underlying!6047 (v!29316 (underlying!6048 (cache!3221 cacheFurthestNullable!118))))))) e!1379373))))

(declare-fun b!2156386 () Bool)

(declare-fun tp!671464 () Bool)

(assert (=> b!2156386 (= e!1379365 (and (inv!32913 (c!341549 (totalInput!3361 (h!30292 stack!12)))) tp!671464))))

(declare-fun b!2156387 () Bool)

(declare-fun res!929545 () Bool)

(assert (=> b!2156387 (=> (not res!929545) (not e!1379363))))

(assert (=> b!2156387 (= res!929545 (= (totalInput!3362 cacheFurthestNullable!118) totalInput!880))))

(declare-fun b!2156388 () Bool)

(declare-fun e!1379371 () Bool)

(declare-fun tp!671466 () Bool)

(declare-fun inv!32914 (StackFrame!380) Bool)

(assert (=> b!2156388 (= e!1379371 (and (inv!32914 (h!30292 stack!12)) e!1379374 tp!671466))))

(declare-fun b!2156376 () Bool)

(declare-fun tp!671460 () Bool)

(assert (=> b!2156376 (= e!1379373 (and tp!671460 mapRes!13826))))

(declare-fun condMapEmpty!13826 () Bool)

(declare-fun mapDefault!13826 () List!24976)

(assert (=> b!2156376 (= condMapEmpty!13826 (= (arr!4449 (_values!3206 (v!29315 (underlying!6047 (v!29316 (underlying!6048 (cache!3221 cacheFurthestNullable!118))))))) ((as const (Array (_ BitVec 32) List!24976)) mapDefault!13826)))))

(declare-fun res!929541 () Bool)

(assert (=> start!209190 (=> (not res!929541) (not e!1379363))))

(declare-fun valid!2259 (CacheFurthestNullable!1038) Bool)

(assert (=> start!209190 (= res!929541 (valid!2259 cacheFurthestNullable!118))))

(assert (=> start!209190 e!1379363))

(declare-fun inv!32915 (CacheFurthestNullable!1038) Bool)

(assert (=> start!209190 (and (inv!32915 cacheFurthestNullable!118) e!1379376)))

(assert (=> start!209190 true))

(assert (=> start!209190 (and (inv!32912 totalInput!880) e!1379378)))

(assert (=> start!209190 e!1379371))

(assert (= (and start!209190 res!929541) b!2156387))

(assert (= (and b!2156387 res!929545) b!2156370))

(assert (= (and b!2156370 res!929543) b!2156373))

(assert (= (and b!2156373 res!929542) b!2156380))

(assert (= (and b!2156380 res!929540) b!2156372))

(assert (= (and b!2156372 res!929544) b!2156375))

(assert (= (and b!2156375 res!929546) b!2156383))

(assert (= (and b!2156376 condMapEmpty!13826) mapIsEmpty!13826))

(assert (= (and b!2156376 (not condMapEmpty!13826)) mapNonEmpty!13826))

(assert (= b!2156385 b!2156376))

(assert (= b!2156377 b!2156385))

(assert (= b!2156369 b!2156377))

(assert (= (and b!2156382 ((_ is LongMap!2926) (v!29316 (underlying!6048 (cache!3221 cacheFurthestNullable!118))))) b!2156369))

(assert (= b!2156374 b!2156382))

(assert (= (and b!2156381 ((_ is HashMap!2840) (cache!3221 cacheFurthestNullable!118))) b!2156374))

(assert (= b!2156381 b!2156384))

(assert (= start!209190 b!2156381))

(assert (= start!209190 b!2156379))

(assert (= (and b!2156378 condSetEmpty!17680) setIsEmpty!17680))

(assert (= (and b!2156378 (not condSetEmpty!17680)) setNonEmpty!17680))

(assert (= setNonEmpty!17680 b!2156371))

(assert (= b!2156378 b!2156386))

(assert (= b!2156388 b!2156378))

(assert (= (and start!209190 ((_ is Cons!24891) stack!12)) b!2156388))

(declare-fun m!2596997 () Bool)

(assert (=> b!2156384 m!2596997))

(declare-fun m!2596999 () Bool)

(assert (=> b!2156372 m!2596999))

(declare-fun m!2597001 () Bool)

(assert (=> b!2156378 m!2597001))

(declare-fun m!2597003 () Bool)

(assert (=> b!2156383 m!2597003))

(declare-fun m!2597005 () Bool)

(assert (=> setNonEmpty!17680 m!2597005))

(declare-fun m!2597007 () Bool)

(assert (=> b!2156381 m!2597007))

(declare-fun m!2597009 () Bool)

(assert (=> start!209190 m!2597009))

(declare-fun m!2597011 () Bool)

(assert (=> start!209190 m!2597011))

(declare-fun m!2597013 () Bool)

(assert (=> start!209190 m!2597013))

(declare-fun m!2597015 () Bool)

(assert (=> b!2156388 m!2597015))

(declare-fun m!2597017 () Bool)

(assert (=> b!2156370 m!2597017))

(declare-fun m!2597019 () Bool)

(assert (=> b!2156375 m!2597019))

(declare-fun m!2597021 () Bool)

(assert (=> b!2156373 m!2597021))

(declare-fun m!2597023 () Bool)

(assert (=> mapNonEmpty!13826 m!2597023))

(declare-fun m!2597025 () Bool)

(assert (=> b!2156386 m!2597025))

(declare-fun m!2597027 () Bool)

(assert (=> b!2156385 m!2597027))

(declare-fun m!2597029 () Bool)

(assert (=> b!2156385 m!2597029))

(declare-fun m!2597031 () Bool)

(assert (=> b!2156379 m!2597031))

(check-sat (not b!2156383) (not b!2156376) (not start!209190) b_and!173309 (not b!2156373) (not b!2156386) (not b_next!64399) (not b!2156384) (not b!2156378) (not b_next!64397) (not b!2156388) b_and!173311 (not b!2156385) (not b!2156370) (not b!2156371) (not mapNonEmpty!13826) (not b!2156381) (not setNonEmpty!17680) (not b!2156379) (not b!2156372) (not b!2156375))
(check-sat b_and!173309 b_and!173311 (not b_next!64397) (not b_next!64399))
(get-model)

(declare-fun d!646406 () Bool)

(declare-fun res!929552 () Bool)

(declare-fun e!1379384 () Bool)

(assert (=> d!646406 (=> res!929552 e!1379384)))

(assert (=> d!646406 (= res!929552 ((_ is Nil!24891) stack!12))))

(assert (=> d!646406 (= (forall!5114 stack!12 lambda!81373) e!1379384)))

(declare-fun b!2156397 () Bool)

(declare-fun e!1379385 () Bool)

(assert (=> b!2156397 (= e!1379384 e!1379385)))

(declare-fun res!929553 () Bool)

(assert (=> b!2156397 (=> (not res!929553) (not e!1379385))))

(declare-fun dynLambda!11416 (Int StackFrame!380) Bool)

(assert (=> b!2156397 (= res!929553 (dynLambda!11416 lambda!81373 (h!30292 stack!12)))))

(declare-fun b!2156398 () Bool)

(assert (=> b!2156398 (= e!1379385 (forall!5114 (t!197523 stack!12) lambda!81373))))

(assert (= (and d!646406 (not res!929552)) b!2156397))

(assert (= (and b!2156397 res!929553) b!2156398))

(declare-fun b_lambda!70989 () Bool)

(assert (=> (not b_lambda!70989) (not b!2156397)))

(declare-fun m!2597033 () Bool)

(assert (=> b!2156397 m!2597033))

(declare-fun m!2597035 () Bool)

(assert (=> b!2156398 m!2597035))

(assert (=> b!2156370 d!646406))

(declare-fun d!646408 () Bool)

(declare-fun isBalanced!2502 (Conc!8061) Bool)

(assert (=> d!646408 (= (inv!32912 (totalInput!3361 (h!30292 stack!12))) (isBalanced!2502 (c!341549 (totalInput!3361 (h!30292 stack!12)))))))

(declare-fun bs!445876 () Bool)

(assert (= bs!445876 d!646408))

(declare-fun m!2597037 () Bool)

(assert (=> bs!445876 m!2597037))

(assert (=> b!2156378 d!646408))

(declare-fun b!2156411 () Bool)

(declare-fun e!1379391 () Bool)

(assert (=> b!2156411 (= e!1379391 (= (lastNullablePos!529 (h!30292 stack!12)) (- (from!2842 (h!30292 stack!12)) 1)))))

(declare-fun d!646410 () Bool)

(declare-fun res!929566 () Bool)

(declare-fun e!1379390 () Bool)

(assert (=> d!646410 (=> (not res!929566) (not e!1379390))))

(assert (=> d!646410 (= res!929566 (>= (from!2842 (h!30292 stack!12)) 0))))

(assert (=> d!646410 (= (inv!32914 (h!30292 stack!12)) e!1379390)))

(declare-fun b!2156412 () Bool)

(declare-fun res!929567 () Bool)

(assert (=> b!2156412 (=> (not res!929567) (not e!1379390))))

(assert (=> b!2156412 (= res!929567 (= (size!19450 (totalInput!3361 (h!30292 stack!12))) (size!19450 (totalInput!3361 (h!30292 stack!12)))))))

(declare-fun b!2156413 () Bool)

(declare-fun res!929571 () Bool)

(assert (=> b!2156413 (=> (not res!929571) (not e!1379390))))

(assert (=> b!2156413 (= res!929571 e!1379391)))

(declare-fun res!929568 () Bool)

(assert (=> b!2156413 (=> res!929568 e!1379391)))

(declare-fun nullableZipper!224 ((InoxSet Context!2990)) Bool)

(assert (=> b!2156413 (= res!929568 (not (nullableZipper!224 (z!6001 (h!30292 stack!12)))))))

(declare-fun b!2156414 () Bool)

(declare-fun res!929569 () Bool)

(assert (=> b!2156414 (=> (not res!929569) (not e!1379390))))

(assert (=> b!2156414 (= res!929569 (<= (from!2842 (h!30292 stack!12)) (size!19450 (totalInput!3361 (h!30292 stack!12)))))))

(declare-fun b!2156415 () Bool)

(assert (=> b!2156415 (= e!1379390 (= (res!929547 (h!30292 stack!12)) (furthestNullablePosition!136 (z!6001 (h!30292 stack!12)) (from!2842 (h!30292 stack!12)) (totalInput!3361 (h!30292 stack!12)) (size!19450 (totalInput!3361 (h!30292 stack!12))) (lastNullablePos!529 (h!30292 stack!12)))))))

(declare-fun b!2156416 () Bool)

(declare-fun res!929570 () Bool)

(assert (=> b!2156416 (=> (not res!929570) (not e!1379390))))

(assert (=> b!2156416 (= res!929570 (and (>= (lastNullablePos!529 (h!30292 stack!12)) (- 1)) (< (lastNullablePos!529 (h!30292 stack!12)) (from!2842 (h!30292 stack!12)))))))

(assert (= (and d!646410 res!929566) b!2156414))

(assert (= (and b!2156414 res!929569) b!2156412))

(assert (= (and b!2156412 res!929567) b!2156416))

(assert (= (and b!2156416 res!929570) b!2156413))

(assert (= (and b!2156413 (not res!929568)) b!2156411))

(assert (= (and b!2156413 res!929571) b!2156415))

(declare-fun m!2597039 () Bool)

(assert (=> b!2156412 m!2597039))

(declare-fun m!2597041 () Bool)

(assert (=> b!2156413 m!2597041))

(assert (=> b!2156414 m!2597039))

(assert (=> b!2156415 m!2597039))

(assert (=> b!2156415 m!2597039))

(declare-fun m!2597043 () Bool)

(assert (=> b!2156415 m!2597043))

(assert (=> b!2156388 d!646410))

(declare-fun d!646412 () Bool)

(declare-fun lambda!81377 () Int)

(declare-fun forall!5115 (List!24973 Int) Bool)

(assert (=> d!646412 (= (inv!32911 setElem!17680) (forall!5115 (exprs!1995 setElem!17680) lambda!81377))))

(declare-fun bs!445877 () Bool)

(assert (= bs!445877 d!646412))

(declare-fun m!2597045 () Bool)

(assert (=> bs!445877 m!2597045))

(assert (=> setNonEmpty!17680 d!646412))

(declare-fun d!646414 () Bool)

(declare-fun validCacheMapFurthestNullable!173 (MutableMap!2840 BalanceConc!15884) Bool)

(assert (=> d!646414 (= (valid!2259 cacheFurthestNullable!118) (validCacheMapFurthestNullable!173 (cache!3221 cacheFurthestNullable!118) (totalInput!3362 cacheFurthestNullable!118)))))

(declare-fun bs!445878 () Bool)

(assert (= bs!445878 d!646414))

(declare-fun m!2597047 () Bool)

(assert (=> bs!445878 m!2597047))

(assert (=> start!209190 d!646414))

(declare-fun d!646416 () Bool)

(declare-fun res!929574 () Bool)

(declare-fun e!1379394 () Bool)

(assert (=> d!646416 (=> (not res!929574) (not e!1379394))))

(assert (=> d!646416 (= res!929574 ((_ is HashMap!2840) (cache!3221 cacheFurthestNullable!118)))))

(assert (=> d!646416 (= (inv!32915 cacheFurthestNullable!118) e!1379394)))

(declare-fun b!2156419 () Bool)

(assert (=> b!2156419 (= e!1379394 (validCacheMapFurthestNullable!173 (cache!3221 cacheFurthestNullable!118) (totalInput!3362 cacheFurthestNullable!118)))))

(assert (= (and d!646416 res!929574) b!2156419))

(assert (=> b!2156419 m!2597047))

(assert (=> start!209190 d!646416))

(declare-fun d!646418 () Bool)

(assert (=> d!646418 (= (inv!32912 totalInput!880) (isBalanced!2502 (c!341549 totalInput!880)))))

(declare-fun bs!445879 () Bool)

(assert (= bs!445879 d!646418))

(declare-fun m!2597049 () Bool)

(assert (=> bs!445879 m!2597049))

(assert (=> start!209190 d!646418))

(declare-fun d!646420 () Bool)

(declare-fun lt!801613 () Int)

(declare-fun size!19451 (List!24974) Int)

(declare-fun list!9568 (BalanceConc!15884) List!24974)

(assert (=> d!646420 (= lt!801613 (size!19451 (list!9568 totalInput!880)))))

(declare-fun size!19452 (Conc!8061) Int)

(assert (=> d!646420 (= lt!801613 (size!19452 (c!341549 totalInput!880)))))

(assert (=> d!646420 (= (size!19450 totalInput!880) lt!801613)))

(declare-fun bs!445880 () Bool)

(assert (= bs!445880 d!646420))

(declare-fun m!2597051 () Bool)

(assert (=> bs!445880 m!2597051))

(assert (=> bs!445880 m!2597051))

(declare-fun m!2597053 () Bool)

(assert (=> bs!445880 m!2597053))

(declare-fun m!2597055 () Bool)

(assert (=> bs!445880 m!2597055))

(assert (=> b!2156375 d!646420))

(declare-fun d!646422 () Bool)

(declare-fun c!341552 () Bool)

(assert (=> d!646422 (= c!341552 ((_ is Node!8061) (c!341549 (totalInput!3361 (h!30292 stack!12)))))))

(declare-fun e!1379399 () Bool)

(assert (=> d!646422 (= (inv!32913 (c!341549 (totalInput!3361 (h!30292 stack!12)))) e!1379399)))

(declare-fun b!2156426 () Bool)

(declare-fun inv!32916 (Conc!8061) Bool)

(assert (=> b!2156426 (= e!1379399 (inv!32916 (c!341549 (totalInput!3361 (h!30292 stack!12)))))))

(declare-fun b!2156427 () Bool)

(declare-fun e!1379400 () Bool)

(assert (=> b!2156427 (= e!1379399 e!1379400)))

(declare-fun res!929577 () Bool)

(assert (=> b!2156427 (= res!929577 (not ((_ is Leaf!11791) (c!341549 (totalInput!3361 (h!30292 stack!12))))))))

(assert (=> b!2156427 (=> res!929577 e!1379400)))

(declare-fun b!2156428 () Bool)

(declare-fun inv!32917 (Conc!8061) Bool)

(assert (=> b!2156428 (= e!1379400 (inv!32917 (c!341549 (totalInput!3361 (h!30292 stack!12)))))))

(assert (= (and d!646422 c!341552) b!2156426))

(assert (= (and d!646422 (not c!341552)) b!2156427))

(assert (= (and b!2156427 (not res!929577)) b!2156428))

(declare-fun m!2597057 () Bool)

(assert (=> b!2156426 m!2597057))

(declare-fun m!2597059 () Bool)

(assert (=> b!2156428 m!2597059))

(assert (=> b!2156386 d!646422))

(declare-fun d!646424 () Bool)

(assert (=> d!646424 (= (array_inv!3192 (_keys!3223 (v!29315 (underlying!6047 (v!29316 (underlying!6048 (cache!3221 cacheFurthestNullable!118))))))) (bvsge (size!19448 (_keys!3223 (v!29315 (underlying!6047 (v!29316 (underlying!6048 (cache!3221 cacheFurthestNullable!118))))))) #b00000000000000000000000000000000))))

(assert (=> b!2156385 d!646424))

(declare-fun d!646426 () Bool)

(assert (=> d!646426 (= (array_inv!3193 (_values!3206 (v!29315 (underlying!6047 (v!29316 (underlying!6048 (cache!3221 cacheFurthestNullable!118))))))) (bvsge (size!19449 (_values!3206 (v!29315 (underlying!6047 (v!29316 (underlying!6048 (cache!3221 cacheFurthestNullable!118))))))) #b00000000000000000000000000000000))))

(assert (=> b!2156385 d!646426))

(declare-fun d!646428 () Bool)

(declare-fun c!341553 () Bool)

(assert (=> d!646428 (= c!341553 ((_ is Node!8061) (c!341549 (totalInput!3362 cacheFurthestNullable!118))))))

(declare-fun e!1379401 () Bool)

(assert (=> d!646428 (= (inv!32913 (c!341549 (totalInput!3362 cacheFurthestNullable!118))) e!1379401)))

(declare-fun b!2156429 () Bool)

(assert (=> b!2156429 (= e!1379401 (inv!32916 (c!341549 (totalInput!3362 cacheFurthestNullable!118))))))

(declare-fun b!2156430 () Bool)

(declare-fun e!1379402 () Bool)

(assert (=> b!2156430 (= e!1379401 e!1379402)))

(declare-fun res!929578 () Bool)

(assert (=> b!2156430 (= res!929578 (not ((_ is Leaf!11791) (c!341549 (totalInput!3362 cacheFurthestNullable!118)))))))

(assert (=> b!2156430 (=> res!929578 e!1379402)))

(declare-fun b!2156431 () Bool)

(assert (=> b!2156431 (= e!1379402 (inv!32917 (c!341549 (totalInput!3362 cacheFurthestNullable!118))))))

(assert (= (and d!646428 c!341553) b!2156429))

(assert (= (and d!646428 (not c!341553)) b!2156430))

(assert (= (and b!2156430 (not res!929578)) b!2156431))

(declare-fun m!2597061 () Bool)

(assert (=> b!2156429 m!2597061))

(declare-fun m!2597063 () Bool)

(assert (=> b!2156431 m!2597063))

(assert (=> b!2156384 d!646428))

(declare-fun b!2156442 () Bool)

(declare-fun e!1379409 () Int)

(assert (=> b!2156442 (= e!1379409 (lastNullablePos!529 (h!30292 stack!12)))))

(declare-fun b!2156443 () Bool)

(declare-fun e!1379411 () Bool)

(declare-fun lostCauseZipper!141 ((InoxSet Context!2990)) Bool)

(assert (=> b!2156443 (= e!1379411 (lostCauseZipper!141 (z!6001 (h!30292 stack!12))))))

(declare-fun d!646430 () Bool)

(declare-fun lt!801618 () Int)

(assert (=> d!646430 (and (>= lt!801618 (- 1)) (< lt!801618 lt!801608) (>= lt!801618 (lastNullablePos!529 (h!30292 stack!12))) (or (= lt!801618 (lastNullablePos!529 (h!30292 stack!12))) (>= lt!801618 (from!2842 (h!30292 stack!12)))))))

(assert (=> d!646430 (= lt!801618 e!1379409)))

(declare-fun c!341558 () Bool)

(assert (=> d!646430 (= c!341558 e!1379411)))

(declare-fun res!929581 () Bool)

(assert (=> d!646430 (=> res!929581 e!1379411)))

(assert (=> d!646430 (= res!929581 (= (from!2842 (h!30292 stack!12)) lt!801608))))

(assert (=> d!646430 (and (>= (from!2842 (h!30292 stack!12)) 0) (<= (from!2842 (h!30292 stack!12)) lt!801608))))

(assert (=> d!646430 (= (furthestNullablePosition!136 (z!6001 (h!30292 stack!12)) (from!2842 (h!30292 stack!12)) totalInput!880 lt!801608 (lastNullablePos!529 (h!30292 stack!12))) lt!801618)))

(declare-fun b!2156444 () Bool)

(declare-fun e!1379410 () Int)

(assert (=> b!2156444 (= e!1379410 (lastNullablePos!529 (h!30292 stack!12)))))

(declare-fun lt!801619 () (InoxSet Context!2990))

(declare-fun b!2156445 () Bool)

(assert (=> b!2156445 (= e!1379409 (furthestNullablePosition!136 lt!801619 (+ (from!2842 (h!30292 stack!12)) 1) totalInput!880 lt!801608 e!1379410))))

(declare-fun derivationStepZipper!108 ((InoxSet Context!2990) C!11996) (InoxSet Context!2990))

(declare-fun apply!6040 (BalanceConc!15884 Int) C!11996)

(assert (=> b!2156445 (= lt!801619 (derivationStepZipper!108 (z!6001 (h!30292 stack!12)) (apply!6040 totalInput!880 (from!2842 (h!30292 stack!12)))))))

(declare-fun c!341559 () Bool)

(assert (=> b!2156445 (= c!341559 (nullableZipper!224 lt!801619))))

(declare-fun b!2156446 () Bool)

(assert (=> b!2156446 (= e!1379410 (from!2842 (h!30292 stack!12)))))

(assert (= (and d!646430 (not res!929581)) b!2156443))

(assert (= (and d!646430 c!341558) b!2156442))

(assert (= (and d!646430 (not c!341558)) b!2156445))

(assert (= (and b!2156445 c!341559) b!2156446))

(assert (= (and b!2156445 (not c!341559)) b!2156444))

(declare-fun m!2597065 () Bool)

(assert (=> b!2156443 m!2597065))

(declare-fun m!2597067 () Bool)

(assert (=> b!2156445 m!2597067))

(declare-fun m!2597069 () Bool)

(assert (=> b!2156445 m!2597069))

(assert (=> b!2156445 m!2597069))

(declare-fun m!2597071 () Bool)

(assert (=> b!2156445 m!2597071))

(declare-fun m!2597073 () Bool)

(assert (=> b!2156445 m!2597073))

(assert (=> b!2156383 d!646430))

(declare-fun d!646432 () Bool)

(declare-fun res!929582 () Bool)

(declare-fun e!1379412 () Bool)

(assert (=> d!646432 (=> res!929582 e!1379412)))

(assert (=> d!646432 (= res!929582 ((_ is Nil!24891) stack!12))))

(assert (=> d!646432 (= (forall!5114 stack!12 lambda!81374) e!1379412)))

(declare-fun b!2156447 () Bool)

(declare-fun e!1379413 () Bool)

(assert (=> b!2156447 (= e!1379412 e!1379413)))

(declare-fun res!929583 () Bool)

(assert (=> b!2156447 (=> (not res!929583) (not e!1379413))))

(assert (=> b!2156447 (= res!929583 (dynLambda!11416 lambda!81374 (h!30292 stack!12)))))

(declare-fun b!2156448 () Bool)

(assert (=> b!2156448 (= e!1379413 (forall!5114 (t!197523 stack!12) lambda!81374))))

(assert (= (and d!646432 (not res!929582)) b!2156447))

(assert (= (and b!2156447 res!929583) b!2156448))

(declare-fun b_lambda!70991 () Bool)

(assert (=> (not b_lambda!70991) (not b!2156447)))

(declare-fun m!2597075 () Bool)

(assert (=> b!2156447 m!2597075))

(declare-fun m!2597077 () Bool)

(assert (=> b!2156448 m!2597077))

(assert (=> b!2156373 d!646432))

(declare-fun d!646434 () Bool)

(assert (=> d!646434 (= (inv!32912 (totalInput!3362 cacheFurthestNullable!118)) (isBalanced!2502 (c!341549 (totalInput!3362 cacheFurthestNullable!118))))))

(declare-fun bs!445881 () Bool)

(assert (= bs!445881 d!646434))

(declare-fun m!2597079 () Bool)

(assert (=> bs!445881 m!2597079))

(assert (=> b!2156381 d!646434))

(declare-fun d!646436 () Bool)

(assert (=> d!646436 (valid!2259 cacheFurthestNullable!118)))

(declare-fun Unit!37965 () Unit!37963)

(assert (=> d!646436 (= (lemmaInvariant!405 cacheFurthestNullable!118) Unit!37965)))

(declare-fun bs!445882 () Bool)

(assert (= bs!445882 d!646436))

(assert (=> bs!445882 m!2597009))

(assert (=> b!2156372 d!646436))

(declare-fun d!646438 () Bool)

(declare-fun c!341560 () Bool)

(assert (=> d!646438 (= c!341560 ((_ is Node!8061) (c!341549 totalInput!880)))))

(declare-fun e!1379414 () Bool)

(assert (=> d!646438 (= (inv!32913 (c!341549 totalInput!880)) e!1379414)))

(declare-fun b!2156449 () Bool)

(assert (=> b!2156449 (= e!1379414 (inv!32916 (c!341549 totalInput!880)))))

(declare-fun b!2156450 () Bool)

(declare-fun e!1379415 () Bool)

(assert (=> b!2156450 (= e!1379414 e!1379415)))

(declare-fun res!929584 () Bool)

(assert (=> b!2156450 (= res!929584 (not ((_ is Leaf!11791) (c!341549 totalInput!880))))))

(assert (=> b!2156450 (=> res!929584 e!1379415)))

(declare-fun b!2156451 () Bool)

(assert (=> b!2156451 (= e!1379415 (inv!32917 (c!341549 totalInput!880)))))

(assert (= (and d!646438 c!341560) b!2156449))

(assert (= (and d!646438 (not c!341560)) b!2156450))

(assert (= (and b!2156450 (not res!929584)) b!2156451))

(declare-fun m!2597081 () Bool)

(assert (=> b!2156449 m!2597081))

(declare-fun m!2597083 () Bool)

(assert (=> b!2156451 m!2597083))

(assert (=> b!2156379 d!646438))

(declare-fun tp!671480 () Bool)

(declare-fun e!1379420 () Bool)

(declare-fun tp!671479 () Bool)

(declare-fun b!2156460 () Bool)

(assert (=> b!2156460 (= e!1379420 (and (inv!32913 (left!19158 (c!341549 (totalInput!3362 cacheFurthestNullable!118)))) tp!671480 (inv!32913 (right!19488 (c!341549 (totalInput!3362 cacheFurthestNullable!118)))) tp!671479))))

(declare-fun b!2156462 () Bool)

(declare-fun e!1379421 () Bool)

(declare-fun tp!671478 () Bool)

(assert (=> b!2156462 (= e!1379421 tp!671478)))

(declare-fun b!2156461 () Bool)

(declare-fun inv!32918 (IArray!16127) Bool)

(assert (=> b!2156461 (= e!1379420 (and (inv!32918 (xs!11003 (c!341549 (totalInput!3362 cacheFurthestNullable!118)))) e!1379421))))

(assert (=> b!2156384 (= tp!671468 (and (inv!32913 (c!341549 (totalInput!3362 cacheFurthestNullable!118))) e!1379420))))

(assert (= (and b!2156384 ((_ is Node!8061) (c!341549 (totalInput!3362 cacheFurthestNullable!118)))) b!2156460))

(assert (= b!2156461 b!2156462))

(assert (= (and b!2156384 ((_ is Leaf!11791) (c!341549 (totalInput!3362 cacheFurthestNullable!118)))) b!2156461))

(declare-fun m!2597085 () Bool)

(assert (=> b!2156460 m!2597085))

(declare-fun m!2597087 () Bool)

(assert (=> b!2156460 m!2597087))

(declare-fun m!2597089 () Bool)

(assert (=> b!2156461 m!2597089))

(assert (=> b!2156384 m!2596997))

(declare-fun b!2156473 () Bool)

(declare-fun e!1379433 () Bool)

(declare-fun setRes!17686 () Bool)

(declare-fun tp!671495 () Bool)

(assert (=> b!2156473 (= e!1379433 (and setRes!17686 tp!671495))))

(declare-fun condSetEmpty!17686 () Bool)

(declare-fun mapValue!13829 () List!24976)

(assert (=> b!2156473 (= condSetEmpty!17686 (= (_1!14633 (_1!14634 (h!30293 mapValue!13829))) ((as const (Array Context!2990 Bool)) false)))))

(declare-fun setIsEmpty!17685 () Bool)

(declare-fun setRes!17685 () Bool)

(assert (=> setIsEmpty!17685 setRes!17685))

(declare-fun mapIsEmpty!13829 () Bool)

(declare-fun mapRes!13829 () Bool)

(assert (=> mapIsEmpty!13829 mapRes!13829))

(declare-fun setElem!17686 () Context!2990)

(declare-fun e!1379430 () Bool)

(declare-fun tp!671497 () Bool)

(declare-fun setNonEmpty!17685 () Bool)

(assert (=> setNonEmpty!17685 (= setRes!17685 (and tp!671497 (inv!32911 setElem!17686) e!1379430))))

(declare-fun mapDefault!13829 () List!24976)

(declare-fun setRest!17685 () (InoxSet Context!2990))

(assert (=> setNonEmpty!17685 (= (_1!14633 (_1!14634 (h!30293 mapDefault!13829))) ((_ map or) (store ((as const (Array Context!2990 Bool)) false) setElem!17686 true) setRest!17685))))

(declare-fun b!2156474 () Bool)

(declare-fun e!1379432 () Bool)

(declare-fun tp!671496 () Bool)

(assert (=> b!2156474 (= e!1379432 tp!671496)))

(declare-fun mapNonEmpty!13829 () Bool)

(declare-fun tp!671501 () Bool)

(assert (=> mapNonEmpty!13829 (= mapRes!13829 (and tp!671501 e!1379433))))

(declare-fun mapRest!13829 () (Array (_ BitVec 32) List!24976))

(declare-fun mapKey!13829 () (_ BitVec 32))

(assert (=> mapNonEmpty!13829 (= mapRest!13826 (store mapRest!13829 mapKey!13829 mapValue!13829))))

(declare-fun condMapEmpty!13829 () Bool)

(assert (=> mapNonEmpty!13826 (= condMapEmpty!13829 (= mapRest!13826 ((as const (Array (_ BitVec 32) List!24976)) mapDefault!13829)))))

(declare-fun e!1379431 () Bool)

(assert (=> mapNonEmpty!13826 (= tp!671470 (and e!1379431 mapRes!13829))))

(declare-fun b!2156475 () Bool)

(declare-fun tp!671498 () Bool)

(assert (=> b!2156475 (= e!1379431 (and setRes!17685 tp!671498))))

(declare-fun condSetEmpty!17685 () Bool)

(assert (=> b!2156475 (= condSetEmpty!17685 (= (_1!14633 (_1!14634 (h!30293 mapDefault!13829))) ((as const (Array Context!2990 Bool)) false)))))

(declare-fun b!2156476 () Bool)

(declare-fun tp!671500 () Bool)

(assert (=> b!2156476 (= e!1379430 tp!671500)))

(declare-fun setIsEmpty!17686 () Bool)

(assert (=> setIsEmpty!17686 setRes!17686))

(declare-fun setNonEmpty!17686 () Bool)

(declare-fun setElem!17685 () Context!2990)

(declare-fun tp!671499 () Bool)

(assert (=> setNonEmpty!17686 (= setRes!17686 (and tp!671499 (inv!32911 setElem!17685) e!1379432))))

(declare-fun setRest!17686 () (InoxSet Context!2990))

(assert (=> setNonEmpty!17686 (= (_1!14633 (_1!14634 (h!30293 mapValue!13829))) ((_ map or) (store ((as const (Array Context!2990 Bool)) false) setElem!17685 true) setRest!17686))))

(assert (= (and mapNonEmpty!13826 condMapEmpty!13829) mapIsEmpty!13829))

(assert (= (and mapNonEmpty!13826 (not condMapEmpty!13829)) mapNonEmpty!13829))

(assert (= (and b!2156473 condSetEmpty!17686) setIsEmpty!17686))

(assert (= (and b!2156473 (not condSetEmpty!17686)) setNonEmpty!17686))

(assert (= setNonEmpty!17686 b!2156474))

(assert (= (and mapNonEmpty!13829 ((_ is Cons!24892) mapValue!13829)) b!2156473))

(assert (= (and b!2156475 condSetEmpty!17685) setIsEmpty!17685))

(assert (= (and b!2156475 (not condSetEmpty!17685)) setNonEmpty!17685))

(assert (= setNonEmpty!17685 b!2156476))

(assert (= (and mapNonEmpty!13826 ((_ is Cons!24892) mapDefault!13829)) b!2156475))

(declare-fun m!2597091 () Bool)

(assert (=> setNonEmpty!17685 m!2597091))

(declare-fun m!2597093 () Bool)

(assert (=> mapNonEmpty!13829 m!2597093))

(declare-fun m!2597095 () Bool)

(assert (=> setNonEmpty!17686 m!2597095))

(declare-fun e!1379439 () Bool)

(assert (=> mapNonEmpty!13826 (= tp!671462 e!1379439)))

(declare-fun b!2156483 () Bool)

(declare-fun setRes!17689 () Bool)

(declare-fun tp!671509 () Bool)

(assert (=> b!2156483 (= e!1379439 (and setRes!17689 tp!671509))))

(declare-fun condSetEmpty!17689 () Bool)

(assert (=> b!2156483 (= condSetEmpty!17689 (= (_1!14633 (_1!14634 (h!30293 mapValue!13826))) ((as const (Array Context!2990 Bool)) false)))))

(declare-fun setIsEmpty!17689 () Bool)

(assert (=> setIsEmpty!17689 setRes!17689))

(declare-fun b!2156484 () Bool)

(declare-fun e!1379438 () Bool)

(declare-fun tp!671510 () Bool)

(assert (=> b!2156484 (= e!1379438 tp!671510)))

(declare-fun setNonEmpty!17689 () Bool)

(declare-fun tp!671508 () Bool)

(declare-fun setElem!17689 () Context!2990)

(assert (=> setNonEmpty!17689 (= setRes!17689 (and tp!671508 (inv!32911 setElem!17689) e!1379438))))

(declare-fun setRest!17689 () (InoxSet Context!2990))

(assert (=> setNonEmpty!17689 (= (_1!14633 (_1!14634 (h!30293 mapValue!13826))) ((_ map or) (store ((as const (Array Context!2990 Bool)) false) setElem!17689 true) setRest!17689))))

(assert (= (and b!2156483 condSetEmpty!17689) setIsEmpty!17689))

(assert (= (and b!2156483 (not condSetEmpty!17689)) setNonEmpty!17689))

(assert (= setNonEmpty!17689 b!2156484))

(assert (= (and mapNonEmpty!13826 ((_ is Cons!24892) mapValue!13826)) b!2156483))

(declare-fun m!2597097 () Bool)

(assert (=> setNonEmpty!17689 m!2597097))

(declare-fun setIsEmpty!17692 () Bool)

(declare-fun setRes!17692 () Bool)

(assert (=> setIsEmpty!17692 setRes!17692))

(declare-fun e!1379449 () Bool)

(assert (=> b!2156388 (= tp!671466 e!1379449)))

(declare-fun b!2156495 () Bool)

(declare-fun e!1379451 () Bool)

(declare-fun tp!671521 () Bool)

(assert (=> b!2156495 (= e!1379451 tp!671521)))

(declare-fun e!1379450 () Bool)

(declare-fun b!2156496 () Bool)

(declare-fun e!1379448 () Bool)

(assert (=> b!2156496 (= e!1379448 (and setRes!17692 (inv!32912 (totalInput!3361 (h!30292 (t!197523 stack!12)))) e!1379450))))

(declare-fun condSetEmpty!17692 () Bool)

(assert (=> b!2156496 (= condSetEmpty!17692 (= (z!6001 (h!30292 (t!197523 stack!12))) ((as const (Array Context!2990 Bool)) false)))))

(declare-fun b!2156497 () Bool)

(declare-fun tp!671519 () Bool)

(assert (=> b!2156497 (= e!1379450 (and (inv!32913 (c!341549 (totalInput!3361 (h!30292 (t!197523 stack!12))))) tp!671519))))

(declare-fun b!2156498 () Bool)

(declare-fun tp!671522 () Bool)

(assert (=> b!2156498 (= e!1379449 (and (inv!32914 (h!30292 (t!197523 stack!12))) e!1379448 tp!671522))))

(declare-fun setNonEmpty!17692 () Bool)

(declare-fun tp!671520 () Bool)

(declare-fun setElem!17692 () Context!2990)

(assert (=> setNonEmpty!17692 (= setRes!17692 (and tp!671520 (inv!32911 setElem!17692) e!1379451))))

(declare-fun setRest!17692 () (InoxSet Context!2990))

(assert (=> setNonEmpty!17692 (= (z!6001 (h!30292 (t!197523 stack!12))) ((_ map or) (store ((as const (Array Context!2990 Bool)) false) setElem!17692 true) setRest!17692))))

(assert (= (and b!2156496 condSetEmpty!17692) setIsEmpty!17692))

(assert (= (and b!2156496 (not condSetEmpty!17692)) setNonEmpty!17692))

(assert (= setNonEmpty!17692 b!2156495))

(assert (= b!2156496 b!2156497))

(assert (= b!2156498 b!2156496))

(assert (= (and b!2156388 ((_ is Cons!24891) (t!197523 stack!12))) b!2156498))

(declare-fun m!2597099 () Bool)

(assert (=> b!2156496 m!2597099))

(declare-fun m!2597101 () Bool)

(assert (=> b!2156497 m!2597101))

(declare-fun m!2597103 () Bool)

(assert (=> b!2156498 m!2597103))

(declare-fun m!2597105 () Bool)

(assert (=> setNonEmpty!17692 m!2597105))

(declare-fun condSetEmpty!17695 () Bool)

(assert (=> setNonEmpty!17680 (= condSetEmpty!17695 (= setRest!17680 ((as const (Array Context!2990 Bool)) false)))))

(declare-fun setRes!17695 () Bool)

(assert (=> setNonEmpty!17680 (= tp!671469 setRes!17695)))

(declare-fun setIsEmpty!17695 () Bool)

(assert (=> setIsEmpty!17695 setRes!17695))

(declare-fun setElem!17695 () Context!2990)

(declare-fun tp!671528 () Bool)

(declare-fun setNonEmpty!17695 () Bool)

(declare-fun e!1379454 () Bool)

(assert (=> setNonEmpty!17695 (= setRes!17695 (and tp!671528 (inv!32911 setElem!17695) e!1379454))))

(declare-fun setRest!17695 () (InoxSet Context!2990))

(assert (=> setNonEmpty!17695 (= setRest!17680 ((_ map or) (store ((as const (Array Context!2990 Bool)) false) setElem!17695 true) setRest!17695))))

(declare-fun b!2156503 () Bool)

(declare-fun tp!671527 () Bool)

(assert (=> b!2156503 (= e!1379454 tp!671527)))

(assert (= (and setNonEmpty!17680 condSetEmpty!17695) setIsEmpty!17695))

(assert (= (and setNonEmpty!17680 (not condSetEmpty!17695)) setNonEmpty!17695))

(assert (= setNonEmpty!17695 b!2156503))

(declare-fun m!2597107 () Bool)

(assert (=> setNonEmpty!17695 m!2597107))

(declare-fun e!1379456 () Bool)

(assert (=> b!2156376 (= tp!671460 e!1379456)))

(declare-fun b!2156504 () Bool)

(declare-fun setRes!17696 () Bool)

(declare-fun tp!671530 () Bool)

(assert (=> b!2156504 (= e!1379456 (and setRes!17696 tp!671530))))

(declare-fun condSetEmpty!17696 () Bool)

(assert (=> b!2156504 (= condSetEmpty!17696 (= (_1!14633 (_1!14634 (h!30293 mapDefault!13826))) ((as const (Array Context!2990 Bool)) false)))))

(declare-fun setIsEmpty!17696 () Bool)

(assert (=> setIsEmpty!17696 setRes!17696))

(declare-fun b!2156505 () Bool)

(declare-fun e!1379455 () Bool)

(declare-fun tp!671531 () Bool)

(assert (=> b!2156505 (= e!1379455 tp!671531)))

(declare-fun setElem!17696 () Context!2990)

(declare-fun tp!671529 () Bool)

(declare-fun setNonEmpty!17696 () Bool)

(assert (=> setNonEmpty!17696 (= setRes!17696 (and tp!671529 (inv!32911 setElem!17696) e!1379455))))

(declare-fun setRest!17696 () (InoxSet Context!2990))

(assert (=> setNonEmpty!17696 (= (_1!14633 (_1!14634 (h!30293 mapDefault!13826))) ((_ map or) (store ((as const (Array Context!2990 Bool)) false) setElem!17696 true) setRest!17696))))

(assert (= (and b!2156504 condSetEmpty!17696) setIsEmpty!17696))

(assert (= (and b!2156504 (not condSetEmpty!17696)) setNonEmpty!17696))

(assert (= setNonEmpty!17696 b!2156505))

(assert (= (and b!2156376 ((_ is Cons!24892) mapDefault!13826)) b!2156504))

(declare-fun m!2597109 () Bool)

(assert (=> setNonEmpty!17696 m!2597109))

(declare-fun e!1379457 () Bool)

(declare-fun tp!671534 () Bool)

(declare-fun tp!671533 () Bool)

(declare-fun b!2156506 () Bool)

(assert (=> b!2156506 (= e!1379457 (and (inv!32913 (left!19158 (c!341549 (totalInput!3361 (h!30292 stack!12))))) tp!671534 (inv!32913 (right!19488 (c!341549 (totalInput!3361 (h!30292 stack!12))))) tp!671533))))

(declare-fun b!2156508 () Bool)

(declare-fun e!1379458 () Bool)

(declare-fun tp!671532 () Bool)

(assert (=> b!2156508 (= e!1379458 tp!671532)))

(declare-fun b!2156507 () Bool)

(assert (=> b!2156507 (= e!1379457 (and (inv!32918 (xs!11003 (c!341549 (totalInput!3361 (h!30292 stack!12))))) e!1379458))))

(assert (=> b!2156386 (= tp!671464 (and (inv!32913 (c!341549 (totalInput!3361 (h!30292 stack!12)))) e!1379457))))

(assert (= (and b!2156386 ((_ is Node!8061) (c!341549 (totalInput!3361 (h!30292 stack!12))))) b!2156506))

(assert (= b!2156507 b!2156508))

(assert (= (and b!2156386 ((_ is Leaf!11791) (c!341549 (totalInput!3361 (h!30292 stack!12))))) b!2156507))

(declare-fun m!2597111 () Bool)

(assert (=> b!2156506 m!2597111))

(declare-fun m!2597113 () Bool)

(assert (=> b!2156506 m!2597113))

(declare-fun m!2597115 () Bool)

(assert (=> b!2156507 m!2597115))

(assert (=> b!2156386 m!2597025))

(declare-fun b!2156513 () Bool)

(declare-fun e!1379461 () Bool)

(declare-fun tp!671539 () Bool)

(declare-fun tp!671540 () Bool)

(assert (=> b!2156513 (= e!1379461 (and tp!671539 tp!671540))))

(assert (=> b!2156371 (= tp!671465 e!1379461)))

(assert (= (and b!2156371 ((_ is Cons!24889) (exprs!1995 setElem!17680))) b!2156513))

(declare-fun e!1379463 () Bool)

(assert (=> b!2156385 (= tp!671471 e!1379463)))

(declare-fun b!2156514 () Bool)

(declare-fun setRes!17697 () Bool)

(declare-fun tp!671542 () Bool)

(assert (=> b!2156514 (= e!1379463 (and setRes!17697 tp!671542))))

(declare-fun condSetEmpty!17697 () Bool)

(assert (=> b!2156514 (= condSetEmpty!17697 (= (_1!14633 (_1!14634 (h!30293 (zeroValue!3184 (v!29315 (underlying!6047 (v!29316 (underlying!6048 (cache!3221 cacheFurthestNullable!118))))))))) ((as const (Array Context!2990 Bool)) false)))))

(declare-fun setIsEmpty!17697 () Bool)

(assert (=> setIsEmpty!17697 setRes!17697))

(declare-fun b!2156515 () Bool)

(declare-fun e!1379462 () Bool)

(declare-fun tp!671543 () Bool)

(assert (=> b!2156515 (= e!1379462 tp!671543)))

(declare-fun setElem!17697 () Context!2990)

(declare-fun tp!671541 () Bool)

(declare-fun setNonEmpty!17697 () Bool)

(assert (=> setNonEmpty!17697 (= setRes!17697 (and tp!671541 (inv!32911 setElem!17697) e!1379462))))

(declare-fun setRest!17697 () (InoxSet Context!2990))

(assert (=> setNonEmpty!17697 (= (_1!14633 (_1!14634 (h!30293 (zeroValue!3184 (v!29315 (underlying!6047 (v!29316 (underlying!6048 (cache!3221 cacheFurthestNullable!118))))))))) ((_ map or) (store ((as const (Array Context!2990 Bool)) false) setElem!17697 true) setRest!17697))))

(assert (= (and b!2156514 condSetEmpty!17697) setIsEmpty!17697))

(assert (= (and b!2156514 (not condSetEmpty!17697)) setNonEmpty!17697))

(assert (= setNonEmpty!17697 b!2156515))

(assert (= (and b!2156385 ((_ is Cons!24892) (zeroValue!3184 (v!29315 (underlying!6047 (v!29316 (underlying!6048 (cache!3221 cacheFurthestNullable!118)))))))) b!2156514))

(declare-fun m!2597117 () Bool)

(assert (=> setNonEmpty!17697 m!2597117))

(declare-fun e!1379465 () Bool)

(assert (=> b!2156385 (= tp!671463 e!1379465)))

(declare-fun b!2156516 () Bool)

(declare-fun setRes!17698 () Bool)

(declare-fun tp!671545 () Bool)

(assert (=> b!2156516 (= e!1379465 (and setRes!17698 tp!671545))))

(declare-fun condSetEmpty!17698 () Bool)

(assert (=> b!2156516 (= condSetEmpty!17698 (= (_1!14633 (_1!14634 (h!30293 (minValue!3184 (v!29315 (underlying!6047 (v!29316 (underlying!6048 (cache!3221 cacheFurthestNullable!118))))))))) ((as const (Array Context!2990 Bool)) false)))))

(declare-fun setIsEmpty!17698 () Bool)

(assert (=> setIsEmpty!17698 setRes!17698))

(declare-fun b!2156517 () Bool)

(declare-fun e!1379464 () Bool)

(declare-fun tp!671546 () Bool)

(assert (=> b!2156517 (= e!1379464 tp!671546)))

(declare-fun tp!671544 () Bool)

(declare-fun setNonEmpty!17698 () Bool)

(declare-fun setElem!17698 () Context!2990)

(assert (=> setNonEmpty!17698 (= setRes!17698 (and tp!671544 (inv!32911 setElem!17698) e!1379464))))

(declare-fun setRest!17698 () (InoxSet Context!2990))

(assert (=> setNonEmpty!17698 (= (_1!14633 (_1!14634 (h!30293 (minValue!3184 (v!29315 (underlying!6047 (v!29316 (underlying!6048 (cache!3221 cacheFurthestNullable!118))))))))) ((_ map or) (store ((as const (Array Context!2990 Bool)) false) setElem!17698 true) setRest!17698))))

(assert (= (and b!2156516 condSetEmpty!17698) setIsEmpty!17698))

(assert (= (and b!2156516 (not condSetEmpty!17698)) setNonEmpty!17698))

(assert (= setNonEmpty!17698 b!2156517))

(assert (= (and b!2156385 ((_ is Cons!24892) (minValue!3184 (v!29315 (underlying!6047 (v!29316 (underlying!6048 (cache!3221 cacheFurthestNullable!118)))))))) b!2156516))

(declare-fun m!2597119 () Bool)

(assert (=> setNonEmpty!17698 m!2597119))

(declare-fun b!2156518 () Bool)

(declare-fun tp!671548 () Bool)

(declare-fun tp!671549 () Bool)

(declare-fun e!1379466 () Bool)

(assert (=> b!2156518 (= e!1379466 (and (inv!32913 (left!19158 (c!341549 totalInput!880))) tp!671549 (inv!32913 (right!19488 (c!341549 totalInput!880))) tp!671548))))

(declare-fun b!2156520 () Bool)

(declare-fun e!1379467 () Bool)

(declare-fun tp!671547 () Bool)

(assert (=> b!2156520 (= e!1379467 tp!671547)))

(declare-fun b!2156519 () Bool)

(assert (=> b!2156519 (= e!1379466 (and (inv!32918 (xs!11003 (c!341549 totalInput!880))) e!1379467))))

(assert (=> b!2156379 (= tp!671459 (and (inv!32913 (c!341549 totalInput!880)) e!1379466))))

(assert (= (and b!2156379 ((_ is Node!8061) (c!341549 totalInput!880))) b!2156518))

(assert (= b!2156519 b!2156520))

(assert (= (and b!2156379 ((_ is Leaf!11791) (c!341549 totalInput!880))) b!2156519))

(declare-fun m!2597121 () Bool)

(assert (=> b!2156518 m!2597121))

(declare-fun m!2597123 () Bool)

(assert (=> b!2156518 m!2597123))

(declare-fun m!2597125 () Bool)

(assert (=> b!2156519 m!2597125))

(assert (=> b!2156379 m!2597031))

(declare-fun b_lambda!70993 () Bool)

(assert (= b_lambda!70991 (or b!2156373 b_lambda!70993)))

(declare-fun bs!445883 () Bool)

(declare-fun d!646440 () Bool)

(assert (= bs!445883 (and d!646440 b!2156373)))

(assert (=> bs!445883 (= (dynLambda!11416 lambda!81374 (h!30292 stack!12)) (= (res!929547 (h!30292 stack!12)) res!17610))))

(assert (=> b!2156447 d!646440))

(declare-fun b_lambda!70995 () Bool)

(assert (= b_lambda!70989 (or b!2156370 b_lambda!70995)))

(declare-fun bs!445884 () Bool)

(declare-fun d!646442 () Bool)

(assert (= bs!445884 (and d!646442 b!2156370)))

(assert (=> bs!445884 (= (dynLambda!11416 lambda!81373 (h!30292 stack!12)) (= (totalInput!3361 (h!30292 stack!12)) totalInput!880))))

(assert (=> b!2156397 d!646442))

(check-sat (not b!2156496) (not b!2156415) (not b!2156414) (not b!2156426) (not b_next!64399) (not b!2156461) (not mapNonEmpty!13829) (not setNonEmpty!17686) (not setNonEmpty!17689) (not d!646434) (not b!2156508) (not d!646414) (not b!2156448) (not d!646418) (not b!2156506) (not b!2156504) (not b!2156498) (not b!2156484) (not b!2156412) (not d!646408) b_and!173309 (not b!2156503) (not b!2156505) (not b!2156516) (not setNonEmpty!17696) (not b!2156413) (not b!2156419) (not b!2156483) (not b!2156451) (not setNonEmpty!17695) (not b!2156386) (not d!646436) (not b!2156517) (not b!2156515) (not b!2156513) (not b!2156379) (not b!2156497) (not b!2156473) (not b!2156429) (not b!2156384) (not b!2156519) (not setNonEmpty!17685) (not b_lambda!70995) (not b!2156514) (not setNonEmpty!17697) (not b!2156474) (not b_next!64397) (not d!646420) (not b!2156445) (not b!2156431) (not b!2156476) (not setNonEmpty!17692) (not setNonEmpty!17698) (not b!2156428) (not b_lambda!70993) (not b!2156495) (not b!2156462) (not b!2156507) (not b!2156443) b_and!173311 (not b!2156398) (not b!2156460) (not b!2156520) (not b!2156475) (not d!646412) (not b!2156518) (not b!2156449))
(check-sat b_and!173309 b_and!173311 (not b_next!64397) (not b_next!64399))
