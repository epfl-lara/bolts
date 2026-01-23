; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!208904 () Bool)

(assert start!208904)

(declare-fun b!2153334 () Bool)

(declare-fun b_free!63589 () Bool)

(declare-fun b_next!64293 () Bool)

(assert (=> b!2153334 (= b_free!63589 (not b_next!64293))))

(declare-fun tp!669676 () Bool)

(declare-fun b_and!173205 () Bool)

(assert (=> b!2153334 (= tp!669676 b_and!173205)))

(declare-fun b!2153331 () Bool)

(declare-fun b_free!63591 () Bool)

(declare-fun b_next!64295 () Bool)

(assert (=> b!2153331 (= b_free!63591 (not b_next!64295))))

(declare-fun tp!669667 () Bool)

(declare-fun b_and!173207 () Bool)

(assert (=> b!2153331 (= tp!669667 b_and!173207)))

(declare-fun b!2153345 () Bool)

(assert (=> b!2153345 true))

(declare-fun bs!445727 () Bool)

(declare-fun b!2153337 () Bool)

(assert (= bs!445727 (and b!2153337 b!2153345)))

(declare-fun lambda!81161 () Int)

(declare-fun lambda!81160 () Int)

(assert (=> bs!445727 (not (= lambda!81161 lambda!81160))))

(assert (=> b!2153337 true))

(declare-fun e!1377211 () Bool)

(declare-fun e!1377205 () Bool)

(assert (=> b!2153331 (= e!1377211 (and e!1377205 tp!669667))))

(declare-fun b!2153332 () Bool)

(declare-fun res!928474 () Bool)

(declare-fun e!1377210 () Bool)

(assert (=> b!2153332 (=> (not res!928474) (not e!1377210))))

(declare-fun totalInputSize!324 () Int)

(declare-fun counter!1 () Int)

(declare-datatypes ((C!11944 0))(
  ( (C!11945 (val!6958 Int)) )
))
(declare-datatypes ((Regex!5899 0))(
  ( (ElementMatch!5899 (c!341400 C!11944)) (Concat!10201 (regOne!12310 Regex!5899) (regTwo!12310 Regex!5899)) (EmptyExpr!5899) (Star!5899 (reg!6228 Regex!5899)) (EmptyLang!5899) (Union!5899 (regOne!12311 Regex!5899) (regTwo!12311 Regex!5899)) )
))
(declare-datatypes ((List!24871 0))(
  ( (Nil!24787) (Cons!24787 (h!30188 Regex!5899) (t!197419 List!24871)) )
))
(declare-datatypes ((List!24872 0))(
  ( (Nil!24788) (Cons!24788 (h!30189 C!11944) (t!197420 List!24872)) )
))
(declare-datatypes ((IArray!16075 0))(
  ( (IArray!16076 (innerList!8095 List!24872)) )
))
(declare-datatypes ((Conc!8035 0))(
  ( (Node!8035 (left!19067 Conc!8035) (right!19397 Conc!8035) (csize!16300 Int) (cheight!8246 Int)) (Leaf!11752 (xs!10977 IArray!16075) (csize!16301 Int)) (Empty!8035) )
))
(declare-datatypes ((Context!2938 0))(
  ( (Context!2939 (exprs!1969 List!24871)) )
))
(declare-datatypes ((BalanceConc!15832 0))(
  ( (BalanceConc!15833 (c!341401 Conc!8035)) )
))
(define-sort InoxSet (T) (Array T Bool))

(declare-datatypes ((StackFrame!332 0))(
  ( (StackFrame!333 (z!5968 (InoxSet Context!2938)) (from!2811 Int) (lastNullablePos!498 Int) (res!928480 Int) (totalInput!3305 BalanceConc!15832)) )
))
(declare-datatypes ((List!24873 0))(
  ( (Nil!24789) (Cons!24789 (h!30190 StackFrame!332) (t!197421 List!24873)) )
))
(declare-fun stack!12 () List!24873)

(get-info :version)

(assert (=> b!2153332 (= res!928474 (and (not ((_ is Nil!24789) stack!12)) (or (<= totalInputSize!324 1048576) (= (- counter!1 (* 10 (ite (>= counter!1 0) (div counter!1 10) (- (div (- counter!1) 10))))) 0))))))

(declare-fun b!2153333 () Bool)

(declare-fun res!928477 () Bool)

(declare-fun e!1377213 () Bool)

(assert (=> b!2153333 (=> (not res!928477) (not e!1377213))))

(declare-fun nullableZipper!212 ((InoxSet Context!2938)) Bool)

(assert (=> b!2153333 (= res!928477 (nullableZipper!212 (z!5968 (h!30190 stack!12))))))

(declare-fun e!1377206 () Bool)

(declare-datatypes ((tuple3!3682 0))(
  ( (tuple3!3683 (_1!14575 (InoxSet Context!2938)) (_2!14575 Int) (_3!2311 Int)) )
))
(declare-datatypes ((tuple2!24528 0))(
  ( (tuple2!24529 (_1!14576 tuple3!3682) (_2!14576 Int)) )
))
(declare-datatypes ((List!24874 0))(
  ( (Nil!24790) (Cons!24790 (h!30191 tuple2!24528) (t!197422 List!24874)) )
))
(declare-datatypes ((array!9847 0))(
  ( (array!9848 (arr!4396 (Array (_ BitVec 32) (_ BitVec 64))) (size!19369 (_ BitVec 32))) )
))
(declare-datatypes ((array!9849 0))(
  ( (array!9850 (arr!4397 (Array (_ BitVec 32) List!24874)) (size!19370 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!5800 0))(
  ( (LongMapFixedSize!5801 (defaultEntry!3265 Int) (mask!7165 (_ BitVec 32)) (extraKeys!3148 (_ BitVec 32)) (zeroValue!3158 List!24874) (minValue!3158 List!24874) (_size!5851 (_ BitVec 32)) (_keys!3197 array!9847) (_values!3180 array!9849) (_vacant!2961 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!11425 0))(
  ( (Cell!11426 (v!29263 LongMapFixedSize!5800)) )
))
(declare-datatypes ((Hashable!2814 0))(
  ( (HashableExt!2813 (__x!16876 Int)) )
))
(declare-datatypes ((MutLongMap!2900 0))(
  ( (LongMap!2900 (underlying!5995 Cell!11425)) (MutLongMapExt!2899 (__x!16877 Int)) )
))
(declare-datatypes ((Cell!11427 0))(
  ( (Cell!11428 (v!29264 MutLongMap!2900)) )
))
(declare-datatypes ((MutableMap!2814 0))(
  ( (MutableMapExt!2813 (__x!16878 Int)) (HashMap!2814 (underlying!5996 Cell!11427) (hashF!4737 Hashable!2814) (_size!5852 (_ BitVec 32)) (defaultValue!2976 Int)) )
))
(declare-datatypes ((CacheFurthestNullable!986 0))(
  ( (CacheFurthestNullable!987 (cache!3195 MutableMap!2814) (totalInput!3306 BalanceConc!15832)) )
))
(declare-fun cacheFurthestNullable!118 () CacheFurthestNullable!986)

(declare-fun tp!669673 () Bool)

(declare-fun tp!669675 () Bool)

(declare-fun e!1377209 () Bool)

(declare-fun array_inv!3152 (array!9847) Bool)

(declare-fun array_inv!3153 (array!9849) Bool)

(assert (=> b!2153334 (= e!1377206 (and tp!669676 tp!669673 tp!669675 (array_inv!3152 (_keys!3197 (v!29263 (underlying!5995 (v!29264 (underlying!5996 (cache!3195 cacheFurthestNullable!118))))))) (array_inv!3153 (_values!3180 (v!29263 (underlying!5995 (v!29264 (underlying!5996 (cache!3195 cacheFurthestNullable!118))))))) e!1377209))))

(declare-fun b!2153335 () Bool)

(declare-fun e!1377204 () Bool)

(declare-fun tp!669670 () Bool)

(declare-fun inv!32739 (Conc!8035) Bool)

(assert (=> b!2153335 (= e!1377204 (and (inv!32739 (c!341401 (totalInput!3306 cacheFurthestNullable!118))) tp!669670))))

(declare-fun b!2153336 () Bool)

(declare-fun e!1377202 () Bool)

(declare-fun inv!32740 (BalanceConc!15832) Bool)

(assert (=> b!2153336 (= e!1377202 (and e!1377211 (inv!32740 (totalInput!3306 cacheFurthestNullable!118)) e!1377204))))

(declare-fun res!928475 () Bool)

(assert (=> b!2153337 (=> (not res!928475) (not e!1377210))))

(declare-fun forall!5078 (List!24873 Int) Bool)

(assert (=> b!2153337 (= res!928475 (forall!5078 stack!12 lambda!81161))))

(declare-fun b!2153338 () Bool)

(declare-fun e!1377214 () Bool)

(declare-fun totalInput!880 () BalanceConc!15832)

(declare-fun tp!669671 () Bool)

(assert (=> b!2153338 (= e!1377214 (and (inv!32739 (c!341401 totalInput!880)) tp!669671))))

(declare-fun mapNonEmpty!13718 () Bool)

(declare-fun mapRes!13718 () Bool)

(declare-fun tp!669665 () Bool)

(declare-fun tp!669666 () Bool)

(assert (=> mapNonEmpty!13718 (= mapRes!13718 (and tp!669665 tp!669666))))

(declare-fun mapRest!13718 () (Array (_ BitVec 32) List!24874))

(declare-fun mapKey!13718 () (_ BitVec 32))

(declare-fun mapValue!13718 () List!24874)

(assert (=> mapNonEmpty!13718 (= (arr!4397 (_values!3180 (v!29263 (underlying!5995 (v!29264 (underlying!5996 (cache!3195 cacheFurthestNullable!118))))))) (store mapRest!13718 mapKey!13718 mapValue!13718))))

(declare-fun b!2153330 () Bool)

(declare-fun e!1377201 () Bool)

(assert (=> b!2153330 (= e!1377201 e!1377206)))

(declare-fun res!928471 () Bool)

(assert (=> start!208904 (=> (not res!928471) (not e!1377210))))

(declare-fun valid!2237 (CacheFurthestNullable!986) Bool)

(assert (=> start!208904 (= res!928471 (valid!2237 cacheFurthestNullable!118))))

(assert (=> start!208904 e!1377210))

(declare-fun inv!32741 (CacheFurthestNullable!986) Bool)

(assert (=> start!208904 (and (inv!32741 cacheFurthestNullable!118) e!1377202)))

(assert (=> start!208904 true))

(assert (=> start!208904 (and (inv!32740 totalInput!880) e!1377214)))

(declare-fun e!1377212 () Bool)

(assert (=> start!208904 e!1377212))

(declare-fun setIsEmpty!17422 () Bool)

(declare-fun setRes!17422 () Bool)

(assert (=> setIsEmpty!17422 setRes!17422))

(declare-fun b!2153339 () Bool)

(declare-fun e!1377207 () Bool)

(declare-fun tp!669672 () Bool)

(assert (=> b!2153339 (= e!1377207 tp!669672)))

(declare-fun b!2153340 () Bool)

(assert (=> b!2153340 (= e!1377210 e!1377213)))

(declare-fun res!928476 () Bool)

(assert (=> b!2153340 (=> (not res!928476) (not e!1377213))))

(declare-fun res!17610 () Int)

(assert (=> b!2153340 (= res!928476 (and (= (res!928480 (h!30190 stack!12)) res!17610) (>= (from!2811 (h!30190 stack!12)) 0)))))

(declare-datatypes ((Unit!37913 0))(
  ( (Unit!37914) )
))
(declare-fun lt!801341 () Unit!37913)

(declare-fun lemmaInvariant!388 (CacheFurthestNullable!986) Unit!37913)

(assert (=> b!2153340 (= lt!801341 (lemmaInvariant!388 cacheFurthestNullable!118))))

(declare-fun b!2153341 () Bool)

(declare-fun e!1377208 () Bool)

(assert (=> b!2153341 (= e!1377208 e!1377201)))

(declare-fun mapIsEmpty!13718 () Bool)

(assert (=> mapIsEmpty!13718 mapRes!13718))

(declare-fun e!1377200 () Bool)

(declare-fun e!1377215 () Bool)

(declare-fun b!2153342 () Bool)

(assert (=> b!2153342 (= e!1377215 (and setRes!17422 (inv!32740 (totalInput!3305 (h!30190 stack!12))) e!1377200))))

(declare-fun condSetEmpty!17422 () Bool)

(assert (=> b!2153342 (= condSetEmpty!17422 (= (z!5968 (h!30190 stack!12)) ((as const (Array Context!2938 Bool)) false)))))

(declare-fun b!2153343 () Bool)

(declare-fun tp!669669 () Bool)

(declare-fun inv!32742 (StackFrame!332) Bool)

(assert (=> b!2153343 (= e!1377212 (and (inv!32742 (h!30190 stack!12)) e!1377215 tp!669669))))

(declare-fun tp!669668 () Bool)

(declare-fun setNonEmpty!17422 () Bool)

(declare-fun setElem!17422 () Context!2938)

(declare-fun inv!32743 (Context!2938) Bool)

(assert (=> setNonEmpty!17422 (= setRes!17422 (and tp!669668 (inv!32743 setElem!17422) e!1377207))))

(declare-fun setRest!17422 () (InoxSet Context!2938))

(assert (=> setNonEmpty!17422 (= (z!5968 (h!30190 stack!12)) ((_ map or) (store ((as const (Array Context!2938 Bool)) false) setElem!17422 true) setRest!17422))))

(declare-fun b!2153344 () Bool)

(declare-fun tp!669674 () Bool)

(assert (=> b!2153344 (= e!1377200 (and (inv!32739 (c!341401 (totalInput!3305 (h!30190 stack!12)))) tp!669674))))

(declare-fun res!928478 () Bool)

(assert (=> b!2153345 (=> (not res!928478) (not e!1377210))))

(assert (=> b!2153345 (= res!928478 (forall!5078 stack!12 lambda!81160))))

(declare-fun b!2153346 () Bool)

(declare-fun res!928472 () Bool)

(assert (=> b!2153346 (=> (not res!928472) (not e!1377213))))

(declare-fun size!19371 (BalanceConc!15832) Int)

(assert (=> b!2153346 (= res!928472 (<= (from!2811 (h!30190 stack!12)) (size!19371 totalInput!880)))))

(declare-fun b!2153347 () Bool)

(assert (=> b!2153347 (= e!1377213 (not (= (lastNullablePos!498 (h!30190 stack!12)) (- (from!2811 (h!30190 stack!12)) 1))))))

(declare-fun b!2153348 () Bool)

(declare-fun res!928473 () Bool)

(assert (=> b!2153348 (=> (not res!928473) (not e!1377213))))

(assert (=> b!2153348 (= res!928473 (and (>= (lastNullablePos!498 (h!30190 stack!12)) (- 1)) (< (lastNullablePos!498 (h!30190 stack!12)) (from!2811 (h!30190 stack!12)))))))

(declare-fun b!2153349 () Bool)

(declare-fun lt!801340 () MutLongMap!2900)

(assert (=> b!2153349 (= e!1377205 (and e!1377208 ((_ is LongMap!2900) lt!801340)))))

(assert (=> b!2153349 (= lt!801340 (v!29264 (underlying!5996 (cache!3195 cacheFurthestNullable!118))))))

(declare-fun b!2153350 () Bool)

(declare-fun tp!669677 () Bool)

(assert (=> b!2153350 (= e!1377209 (and tp!669677 mapRes!13718))))

(declare-fun condMapEmpty!13718 () Bool)

(declare-fun mapDefault!13718 () List!24874)

(assert (=> b!2153350 (= condMapEmpty!13718 (= (arr!4397 (_values!3180 (v!29263 (underlying!5995 (v!29264 (underlying!5996 (cache!3195 cacheFurthestNullable!118))))))) ((as const (Array (_ BitVec 32) List!24874)) mapDefault!13718)))))

(declare-fun b!2153351 () Bool)

(declare-fun res!928479 () Bool)

(assert (=> b!2153351 (=> (not res!928479) (not e!1377210))))

(assert (=> b!2153351 (= res!928479 (= (totalInput!3306 cacheFurthestNullable!118) totalInput!880))))

(assert (= (and start!208904 res!928471) b!2153351))

(assert (= (and b!2153351 res!928479) b!2153345))

(assert (= (and b!2153345 res!928478) b!2153337))

(assert (= (and b!2153337 res!928475) b!2153332))

(assert (= (and b!2153332 res!928474) b!2153340))

(assert (= (and b!2153340 res!928476) b!2153346))

(assert (= (and b!2153346 res!928472) b!2153348))

(assert (= (and b!2153348 res!928473) b!2153333))

(assert (= (and b!2153333 res!928477) b!2153347))

(assert (= (and b!2153350 condMapEmpty!13718) mapIsEmpty!13718))

(assert (= (and b!2153350 (not condMapEmpty!13718)) mapNonEmpty!13718))

(assert (= b!2153334 b!2153350))

(assert (= b!2153330 b!2153334))

(assert (= b!2153341 b!2153330))

(assert (= (and b!2153349 ((_ is LongMap!2900) (v!29264 (underlying!5996 (cache!3195 cacheFurthestNullable!118))))) b!2153341))

(assert (= b!2153331 b!2153349))

(assert (= (and b!2153336 ((_ is HashMap!2814) (cache!3195 cacheFurthestNullable!118))) b!2153331))

(assert (= b!2153336 b!2153335))

(assert (= start!208904 b!2153336))

(assert (= start!208904 b!2153338))

(assert (= (and b!2153342 condSetEmpty!17422) setIsEmpty!17422))

(assert (= (and b!2153342 (not condSetEmpty!17422)) setNonEmpty!17422))

(assert (= setNonEmpty!17422 b!2153339))

(assert (= b!2153342 b!2153344))

(assert (= b!2153343 b!2153342))

(assert (= (and start!208904 ((_ is Cons!24789) stack!12)) b!2153343))

(declare-fun m!2595110 () Bool)

(assert (=> b!2153338 m!2595110))

(declare-fun m!2595112 () Bool)

(assert (=> b!2153342 m!2595112))

(declare-fun m!2595114 () Bool)

(assert (=> b!2153345 m!2595114))

(declare-fun m!2595116 () Bool)

(assert (=> start!208904 m!2595116))

(declare-fun m!2595118 () Bool)

(assert (=> start!208904 m!2595118))

(declare-fun m!2595120 () Bool)

(assert (=> start!208904 m!2595120))

(declare-fun m!2595122 () Bool)

(assert (=> b!2153337 m!2595122))

(declare-fun m!2595124 () Bool)

(assert (=> b!2153336 m!2595124))

(declare-fun m!2595126 () Bool)

(assert (=> b!2153335 m!2595126))

(declare-fun m!2595128 () Bool)

(assert (=> b!2153334 m!2595128))

(declare-fun m!2595130 () Bool)

(assert (=> b!2153334 m!2595130))

(declare-fun m!2595132 () Bool)

(assert (=> b!2153344 m!2595132))

(declare-fun m!2595134 () Bool)

(assert (=> b!2153346 m!2595134))

(declare-fun m!2595136 () Bool)

(assert (=> b!2153340 m!2595136))

(declare-fun m!2595138 () Bool)

(assert (=> b!2153343 m!2595138))

(declare-fun m!2595140 () Bool)

(assert (=> b!2153333 m!2595140))

(declare-fun m!2595142 () Bool)

(assert (=> mapNonEmpty!13718 m!2595142))

(declare-fun m!2595144 () Bool)

(assert (=> setNonEmpty!17422 m!2595144))

(check-sat (not b!2153333) (not b!2153337) (not b!2153343) (not setNonEmpty!17422) (not b!2153339) (not b!2153344) (not b!2153346) (not b!2153342) (not start!208904) (not b!2153336) (not b!2153345) (not b!2153340) (not b_next!64295) (not b!2153335) (not b!2153338) (not b!2153350) (not b!2153334) (not b_next!64293) b_and!173205 (not mapNonEmpty!13718) b_and!173207)
(check-sat b_and!173207 b_and!173205 (not b_next!64295) (not b_next!64293))
(get-model)

(declare-fun d!645995 () Bool)

(declare-fun c!341404 () Bool)

(assert (=> d!645995 (= c!341404 ((_ is Node!8035) (c!341401 (totalInput!3305 (h!30190 stack!12)))))))

(declare-fun e!1377220 () Bool)

(assert (=> d!645995 (= (inv!32739 (c!341401 (totalInput!3305 (h!30190 stack!12)))) e!1377220)))

(declare-fun b!2153362 () Bool)

(declare-fun inv!32744 (Conc!8035) Bool)

(assert (=> b!2153362 (= e!1377220 (inv!32744 (c!341401 (totalInput!3305 (h!30190 stack!12)))))))

(declare-fun b!2153363 () Bool)

(declare-fun e!1377221 () Bool)

(assert (=> b!2153363 (= e!1377220 e!1377221)))

(declare-fun res!928483 () Bool)

(assert (=> b!2153363 (= res!928483 (not ((_ is Leaf!11752) (c!341401 (totalInput!3305 (h!30190 stack!12))))))))

(assert (=> b!2153363 (=> res!928483 e!1377221)))

(declare-fun b!2153364 () Bool)

(declare-fun inv!32745 (Conc!8035) Bool)

(assert (=> b!2153364 (= e!1377221 (inv!32745 (c!341401 (totalInput!3305 (h!30190 stack!12)))))))

(assert (= (and d!645995 c!341404) b!2153362))

(assert (= (and d!645995 (not c!341404)) b!2153363))

(assert (= (and b!2153363 (not res!928483)) b!2153364))

(declare-fun m!2595146 () Bool)

(assert (=> b!2153362 m!2595146))

(declare-fun m!2595148 () Bool)

(assert (=> b!2153364 m!2595148))

(assert (=> b!2153344 d!645995))

(declare-fun d!645997 () Bool)

(declare-fun c!341405 () Bool)

(assert (=> d!645997 (= c!341405 ((_ is Node!8035) (c!341401 totalInput!880)))))

(declare-fun e!1377222 () Bool)

(assert (=> d!645997 (= (inv!32739 (c!341401 totalInput!880)) e!1377222)))

(declare-fun b!2153365 () Bool)

(assert (=> b!2153365 (= e!1377222 (inv!32744 (c!341401 totalInput!880)))))

(declare-fun b!2153366 () Bool)

(declare-fun e!1377223 () Bool)

(assert (=> b!2153366 (= e!1377222 e!1377223)))

(declare-fun res!928484 () Bool)

(assert (=> b!2153366 (= res!928484 (not ((_ is Leaf!11752) (c!341401 totalInput!880))))))

(assert (=> b!2153366 (=> res!928484 e!1377223)))

(declare-fun b!2153367 () Bool)

(assert (=> b!2153367 (= e!1377223 (inv!32745 (c!341401 totalInput!880)))))

(assert (= (and d!645997 c!341405) b!2153365))

(assert (= (and d!645997 (not c!341405)) b!2153366))

(assert (= (and b!2153366 (not res!928484)) b!2153367))

(declare-fun m!2595150 () Bool)

(assert (=> b!2153365 m!2595150))

(declare-fun m!2595152 () Bool)

(assert (=> b!2153367 m!2595152))

(assert (=> b!2153338 d!645997))

(declare-fun d!645999 () Bool)

(declare-fun res!928489 () Bool)

(declare-fun e!1377228 () Bool)

(assert (=> d!645999 (=> res!928489 e!1377228)))

(assert (=> d!645999 (= res!928489 ((_ is Nil!24789) stack!12))))

(assert (=> d!645999 (= (forall!5078 stack!12 lambda!81160) e!1377228)))

(declare-fun b!2153372 () Bool)

(declare-fun e!1377229 () Bool)

(assert (=> b!2153372 (= e!1377228 e!1377229)))

(declare-fun res!928490 () Bool)

(assert (=> b!2153372 (=> (not res!928490) (not e!1377229))))

(declare-fun dynLambda!11406 (Int StackFrame!332) Bool)

(assert (=> b!2153372 (= res!928490 (dynLambda!11406 lambda!81160 (h!30190 stack!12)))))

(declare-fun b!2153373 () Bool)

(assert (=> b!2153373 (= e!1377229 (forall!5078 (t!197421 stack!12) lambda!81160))))

(assert (= (and d!645999 (not res!928489)) b!2153372))

(assert (= (and b!2153372 res!928490) b!2153373))

(declare-fun b_lambda!70897 () Bool)

(assert (=> (not b_lambda!70897) (not b!2153372)))

(declare-fun m!2595154 () Bool)

(assert (=> b!2153372 m!2595154))

(declare-fun m!2595156 () Bool)

(assert (=> b!2153373 m!2595156))

(assert (=> b!2153345 d!645999))

(declare-fun d!646001 () Bool)

(declare-fun lt!801344 () Int)

(declare-fun size!19372 (List!24872) Int)

(declare-fun list!9563 (BalanceConc!15832) List!24872)

(assert (=> d!646001 (= lt!801344 (size!19372 (list!9563 totalInput!880)))))

(declare-fun size!19373 (Conc!8035) Int)

(assert (=> d!646001 (= lt!801344 (size!19373 (c!341401 totalInput!880)))))

(assert (=> d!646001 (= (size!19371 totalInput!880) lt!801344)))

(declare-fun bs!445728 () Bool)

(assert (= bs!445728 d!646001))

(declare-fun m!2595158 () Bool)

(assert (=> bs!445728 m!2595158))

(assert (=> bs!445728 m!2595158))

(declare-fun m!2595160 () Bool)

(assert (=> bs!445728 m!2595160))

(declare-fun m!2595162 () Bool)

(assert (=> bs!445728 m!2595162))

(assert (=> b!2153346 d!646001))

(declare-fun d!646003 () Bool)

(assert (=> d!646003 (valid!2237 cacheFurthestNullable!118)))

(declare-fun Unit!37915 () Unit!37913)

(assert (=> d!646003 (= (lemmaInvariant!388 cacheFurthestNullable!118) Unit!37915)))

(declare-fun bs!445729 () Bool)

(assert (= bs!445729 d!646003))

(assert (=> bs!445729 m!2595116))

(assert (=> b!2153340 d!646003))

(declare-fun d!646005 () Bool)

(declare-fun lambda!81164 () Int)

(declare-fun exists!737 ((InoxSet Context!2938) Int) Bool)

(assert (=> d!646005 (= (nullableZipper!212 (z!5968 (h!30190 stack!12))) (exists!737 (z!5968 (h!30190 stack!12)) lambda!81164))))

(declare-fun bs!445730 () Bool)

(assert (= bs!445730 d!646005))

(declare-fun m!2595164 () Bool)

(assert (=> bs!445730 m!2595164))

(assert (=> b!2153333 d!646005))

(declare-fun d!646007 () Bool)

(assert (=> d!646007 (= (array_inv!3152 (_keys!3197 (v!29263 (underlying!5995 (v!29264 (underlying!5996 (cache!3195 cacheFurthestNullable!118))))))) (bvsge (size!19369 (_keys!3197 (v!29263 (underlying!5995 (v!29264 (underlying!5996 (cache!3195 cacheFurthestNullable!118))))))) #b00000000000000000000000000000000))))

(assert (=> b!2153334 d!646007))

(declare-fun d!646009 () Bool)

(assert (=> d!646009 (= (array_inv!3153 (_values!3180 (v!29263 (underlying!5995 (v!29264 (underlying!5996 (cache!3195 cacheFurthestNullable!118))))))) (bvsge (size!19370 (_values!3180 (v!29263 (underlying!5995 (v!29264 (underlying!5996 (cache!3195 cacheFurthestNullable!118))))))) #b00000000000000000000000000000000))))

(assert (=> b!2153334 d!646009))

(declare-fun d!646011 () Bool)

(declare-fun isBalanced!2492 (Conc!8035) Bool)

(assert (=> d!646011 (= (inv!32740 (totalInput!3305 (h!30190 stack!12))) (isBalanced!2492 (c!341401 (totalInput!3305 (h!30190 stack!12)))))))

(declare-fun bs!445731 () Bool)

(assert (= bs!445731 d!646011))

(declare-fun m!2595166 () Bool)

(assert (=> bs!445731 m!2595166))

(assert (=> b!2153342 d!646011))

(declare-fun d!646013 () Bool)

(declare-fun c!341408 () Bool)

(assert (=> d!646013 (= c!341408 ((_ is Node!8035) (c!341401 (totalInput!3306 cacheFurthestNullable!118))))))

(declare-fun e!1377230 () Bool)

(assert (=> d!646013 (= (inv!32739 (c!341401 (totalInput!3306 cacheFurthestNullable!118))) e!1377230)))

(declare-fun b!2153374 () Bool)

(assert (=> b!2153374 (= e!1377230 (inv!32744 (c!341401 (totalInput!3306 cacheFurthestNullable!118))))))

(declare-fun b!2153375 () Bool)

(declare-fun e!1377231 () Bool)

(assert (=> b!2153375 (= e!1377230 e!1377231)))

(declare-fun res!928491 () Bool)

(assert (=> b!2153375 (= res!928491 (not ((_ is Leaf!11752) (c!341401 (totalInput!3306 cacheFurthestNullable!118)))))))

(assert (=> b!2153375 (=> res!928491 e!1377231)))

(declare-fun b!2153376 () Bool)

(assert (=> b!2153376 (= e!1377231 (inv!32745 (c!341401 (totalInput!3306 cacheFurthestNullable!118))))))

(assert (= (and d!646013 c!341408) b!2153374))

(assert (= (and d!646013 (not c!341408)) b!2153375))

(assert (= (and b!2153375 (not res!928491)) b!2153376))

(declare-fun m!2595168 () Bool)

(assert (=> b!2153374 m!2595168))

(declare-fun m!2595170 () Bool)

(assert (=> b!2153376 m!2595170))

(assert (=> b!2153335 d!646013))

(declare-fun b!2153389 () Bool)

(declare-fun res!928504 () Bool)

(declare-fun e!1377237 () Bool)

(assert (=> b!2153389 (=> (not res!928504) (not e!1377237))))

(assert (=> b!2153389 (= res!928504 (and (>= (lastNullablePos!498 (h!30190 stack!12)) (- 1)) (< (lastNullablePos!498 (h!30190 stack!12)) (from!2811 (h!30190 stack!12)))))))

(declare-fun b!2153390 () Bool)

(declare-fun res!928509 () Bool)

(assert (=> b!2153390 (=> (not res!928509) (not e!1377237))))

(declare-fun e!1377236 () Bool)

(assert (=> b!2153390 (= res!928509 e!1377236)))

(declare-fun res!928508 () Bool)

(assert (=> b!2153390 (=> res!928508 e!1377236)))

(assert (=> b!2153390 (= res!928508 (not (nullableZipper!212 (z!5968 (h!30190 stack!12)))))))

(declare-fun b!2153391 () Bool)

(assert (=> b!2153391 (= e!1377236 (= (lastNullablePos!498 (h!30190 stack!12)) (- (from!2811 (h!30190 stack!12)) 1)))))

(declare-fun b!2153392 () Bool)

(declare-fun furthestNullablePosition!120 ((InoxSet Context!2938) Int BalanceConc!15832 Int Int) Int)

(assert (=> b!2153392 (= e!1377237 (= (res!928480 (h!30190 stack!12)) (furthestNullablePosition!120 (z!5968 (h!30190 stack!12)) (from!2811 (h!30190 stack!12)) (totalInput!3305 (h!30190 stack!12)) (size!19371 (totalInput!3305 (h!30190 stack!12))) (lastNullablePos!498 (h!30190 stack!12)))))))

(declare-fun b!2153393 () Bool)

(declare-fun res!928506 () Bool)

(assert (=> b!2153393 (=> (not res!928506) (not e!1377237))))

(assert (=> b!2153393 (= res!928506 (<= (from!2811 (h!30190 stack!12)) (size!19371 (totalInput!3305 (h!30190 stack!12)))))))

(declare-fun d!646015 () Bool)

(declare-fun res!928505 () Bool)

(assert (=> d!646015 (=> (not res!928505) (not e!1377237))))

(assert (=> d!646015 (= res!928505 (>= (from!2811 (h!30190 stack!12)) 0))))

(assert (=> d!646015 (= (inv!32742 (h!30190 stack!12)) e!1377237)))

(declare-fun b!2153394 () Bool)

(declare-fun res!928507 () Bool)

(assert (=> b!2153394 (=> (not res!928507) (not e!1377237))))

(assert (=> b!2153394 (= res!928507 (= (size!19371 (totalInput!3305 (h!30190 stack!12))) (size!19371 (totalInput!3305 (h!30190 stack!12)))))))

(assert (= (and d!646015 res!928505) b!2153393))

(assert (= (and b!2153393 res!928506) b!2153394))

(assert (= (and b!2153394 res!928507) b!2153389))

(assert (= (and b!2153389 res!928504) b!2153390))

(assert (= (and b!2153390 (not res!928508)) b!2153391))

(assert (= (and b!2153390 res!928509) b!2153392))

(assert (=> b!2153390 m!2595140))

(declare-fun m!2595172 () Bool)

(assert (=> b!2153392 m!2595172))

(assert (=> b!2153392 m!2595172))

(declare-fun m!2595174 () Bool)

(assert (=> b!2153392 m!2595174))

(assert (=> b!2153393 m!2595172))

(assert (=> b!2153394 m!2595172))

(assert (=> b!2153343 d!646015))

(declare-fun d!646017 () Bool)

(assert (=> d!646017 (= (inv!32740 (totalInput!3306 cacheFurthestNullable!118)) (isBalanced!2492 (c!341401 (totalInput!3306 cacheFurthestNullable!118))))))

(declare-fun bs!445732 () Bool)

(assert (= bs!445732 d!646017))

(declare-fun m!2595176 () Bool)

(assert (=> bs!445732 m!2595176))

(assert (=> b!2153336 d!646017))

(declare-fun d!646019 () Bool)

(declare-fun lambda!81167 () Int)

(declare-fun forall!5079 (List!24871 Int) Bool)

(assert (=> d!646019 (= (inv!32743 setElem!17422) (forall!5079 (exprs!1969 setElem!17422) lambda!81167))))

(declare-fun bs!445733 () Bool)

(assert (= bs!445733 d!646019))

(declare-fun m!2595178 () Bool)

(assert (=> bs!445733 m!2595178))

(assert (=> setNonEmpty!17422 d!646019))

(declare-fun d!646021 () Bool)

(declare-fun validCacheMapFurthestNullable!160 (MutableMap!2814 BalanceConc!15832) Bool)

(assert (=> d!646021 (= (valid!2237 cacheFurthestNullable!118) (validCacheMapFurthestNullable!160 (cache!3195 cacheFurthestNullable!118) (totalInput!3306 cacheFurthestNullable!118)))))

(declare-fun bs!445734 () Bool)

(assert (= bs!445734 d!646021))

(declare-fun m!2595180 () Bool)

(assert (=> bs!445734 m!2595180))

(assert (=> start!208904 d!646021))

(declare-fun d!646023 () Bool)

(declare-fun res!928512 () Bool)

(declare-fun e!1377240 () Bool)

(assert (=> d!646023 (=> (not res!928512) (not e!1377240))))

(assert (=> d!646023 (= res!928512 ((_ is HashMap!2814) (cache!3195 cacheFurthestNullable!118)))))

(assert (=> d!646023 (= (inv!32741 cacheFurthestNullable!118) e!1377240)))

(declare-fun b!2153397 () Bool)

(assert (=> b!2153397 (= e!1377240 (validCacheMapFurthestNullable!160 (cache!3195 cacheFurthestNullable!118) (totalInput!3306 cacheFurthestNullable!118)))))

(assert (= (and d!646023 res!928512) b!2153397))

(assert (=> b!2153397 m!2595180))

(assert (=> start!208904 d!646023))

(declare-fun d!646025 () Bool)

(assert (=> d!646025 (= (inv!32740 totalInput!880) (isBalanced!2492 (c!341401 totalInput!880)))))

(declare-fun bs!445735 () Bool)

(assert (= bs!445735 d!646025))

(declare-fun m!2595182 () Bool)

(assert (=> bs!445735 m!2595182))

(assert (=> start!208904 d!646025))

(declare-fun d!646027 () Bool)

(declare-fun res!928513 () Bool)

(declare-fun e!1377241 () Bool)

(assert (=> d!646027 (=> res!928513 e!1377241)))

(assert (=> d!646027 (= res!928513 ((_ is Nil!24789) stack!12))))

(assert (=> d!646027 (= (forall!5078 stack!12 lambda!81161) e!1377241)))

(declare-fun b!2153398 () Bool)

(declare-fun e!1377242 () Bool)

(assert (=> b!2153398 (= e!1377241 e!1377242)))

(declare-fun res!928514 () Bool)

(assert (=> b!2153398 (=> (not res!928514) (not e!1377242))))

(assert (=> b!2153398 (= res!928514 (dynLambda!11406 lambda!81161 (h!30190 stack!12)))))

(declare-fun b!2153399 () Bool)

(assert (=> b!2153399 (= e!1377242 (forall!5078 (t!197421 stack!12) lambda!81161))))

(assert (= (and d!646027 (not res!928513)) b!2153398))

(assert (= (and b!2153398 res!928514) b!2153399))

(declare-fun b_lambda!70899 () Bool)

(assert (=> (not b_lambda!70899) (not b!2153398)))

(declare-fun m!2595184 () Bool)

(assert (=> b!2153398 m!2595184))

(declare-fun m!2595186 () Bool)

(assert (=> b!2153399 m!2595186))

(assert (=> b!2153337 d!646027))

(declare-fun tp!669684 () Bool)

(declare-fun b!2153408 () Bool)

(declare-fun e!1377248 () Bool)

(declare-fun tp!669686 () Bool)

(assert (=> b!2153408 (= e!1377248 (and (inv!32739 (left!19067 (c!341401 (totalInput!3305 (h!30190 stack!12))))) tp!669684 (inv!32739 (right!19397 (c!341401 (totalInput!3305 (h!30190 stack!12))))) tp!669686))))

(declare-fun b!2153410 () Bool)

(declare-fun e!1377247 () Bool)

(declare-fun tp!669685 () Bool)

(assert (=> b!2153410 (= e!1377247 tp!669685)))

(declare-fun b!2153409 () Bool)

(declare-fun inv!32746 (IArray!16075) Bool)

(assert (=> b!2153409 (= e!1377248 (and (inv!32746 (xs!10977 (c!341401 (totalInput!3305 (h!30190 stack!12))))) e!1377247))))

(assert (=> b!2153344 (= tp!669674 (and (inv!32739 (c!341401 (totalInput!3305 (h!30190 stack!12)))) e!1377248))))

(assert (= (and b!2153344 ((_ is Node!8035) (c!341401 (totalInput!3305 (h!30190 stack!12))))) b!2153408))

(assert (= b!2153409 b!2153410))

(assert (= (and b!2153344 ((_ is Leaf!11752) (c!341401 (totalInput!3305 (h!30190 stack!12))))) b!2153409))

(declare-fun m!2595188 () Bool)

(assert (=> b!2153408 m!2595188))

(declare-fun m!2595190 () Bool)

(assert (=> b!2153408 m!2595190))

(declare-fun m!2595192 () Bool)

(assert (=> b!2153409 m!2595192))

(assert (=> b!2153344 m!2595132))

(declare-fun b!2153418 () Bool)

(declare-fun e!1377254 () Bool)

(declare-fun tp!669694 () Bool)

(assert (=> b!2153418 (= e!1377254 tp!669694)))

(declare-fun setIsEmpty!17425 () Bool)

(declare-fun setRes!17425 () Bool)

(assert (=> setIsEmpty!17425 setRes!17425))

(declare-fun e!1377253 () Bool)

(assert (=> b!2153350 (= tp!669677 e!1377253)))

(declare-fun setNonEmpty!17425 () Bool)

(declare-fun tp!669693 () Bool)

(declare-fun setElem!17425 () Context!2938)

(assert (=> setNonEmpty!17425 (= setRes!17425 (and tp!669693 (inv!32743 setElem!17425) e!1377254))))

(declare-fun setRest!17425 () (InoxSet Context!2938))

(assert (=> setNonEmpty!17425 (= (_1!14575 (_1!14576 (h!30191 mapDefault!13718))) ((_ map or) (store ((as const (Array Context!2938 Bool)) false) setElem!17425 true) setRest!17425))))

(declare-fun b!2153417 () Bool)

(declare-fun tp!669695 () Bool)

(assert (=> b!2153417 (= e!1377253 (and setRes!17425 tp!669695))))

(declare-fun condSetEmpty!17425 () Bool)

(assert (=> b!2153417 (= condSetEmpty!17425 (= (_1!14575 (_1!14576 (h!30191 mapDefault!13718))) ((as const (Array Context!2938 Bool)) false)))))

(assert (= (and b!2153417 condSetEmpty!17425) setIsEmpty!17425))

(assert (= (and b!2153417 (not condSetEmpty!17425)) setNonEmpty!17425))

(assert (= setNonEmpty!17425 b!2153418))

(assert (= (and b!2153350 ((_ is Cons!24790) mapDefault!13718)) b!2153417))

(declare-fun m!2595194 () Bool)

(assert (=> setNonEmpty!17425 m!2595194))

(declare-fun b!2153419 () Bool)

(declare-fun e!1377256 () Bool)

(declare-fun tp!669698 () Bool)

(declare-fun tp!669696 () Bool)

(assert (=> b!2153419 (= e!1377256 (and (inv!32739 (left!19067 (c!341401 totalInput!880))) tp!669696 (inv!32739 (right!19397 (c!341401 totalInput!880))) tp!669698))))

(declare-fun b!2153421 () Bool)

(declare-fun e!1377255 () Bool)

(declare-fun tp!669697 () Bool)

(assert (=> b!2153421 (= e!1377255 tp!669697)))

(declare-fun b!2153420 () Bool)

(assert (=> b!2153420 (= e!1377256 (and (inv!32746 (xs!10977 (c!341401 totalInput!880))) e!1377255))))

(assert (=> b!2153338 (= tp!669671 (and (inv!32739 (c!341401 totalInput!880)) e!1377256))))

(assert (= (and b!2153338 ((_ is Node!8035) (c!341401 totalInput!880))) b!2153419))

(assert (= b!2153420 b!2153421))

(assert (= (and b!2153338 ((_ is Leaf!11752) (c!341401 totalInput!880))) b!2153420))

(declare-fun m!2595196 () Bool)

(assert (=> b!2153419 m!2595196))

(declare-fun m!2595198 () Bool)

(assert (=> b!2153419 m!2595198))

(declare-fun m!2595200 () Bool)

(assert (=> b!2153420 m!2595200))

(assert (=> b!2153338 m!2595110))

(declare-fun mapIsEmpty!13721 () Bool)

(declare-fun mapRes!13721 () Bool)

(assert (=> mapIsEmpty!13721 mapRes!13721))

(declare-fun setIsEmpty!17430 () Bool)

(declare-fun setRes!17431 () Bool)

(assert (=> setIsEmpty!17430 setRes!17431))

(declare-fun b!2153432 () Bool)

(declare-fun e!1377266 () Bool)

(declare-fun tp!669719 () Bool)

(assert (=> b!2153432 (= e!1377266 tp!669719)))

(declare-fun condMapEmpty!13721 () Bool)

(declare-fun mapDefault!13721 () List!24874)

(assert (=> mapNonEmpty!13718 (= condMapEmpty!13721 (= mapRest!13718 ((as const (Array (_ BitVec 32) List!24874)) mapDefault!13721)))))

(declare-fun e!1377265 () Bool)

(assert (=> mapNonEmpty!13718 (= tp!669665 (and e!1377265 mapRes!13721))))

(declare-fun b!2153433 () Bool)

(declare-fun setRes!17430 () Bool)

(declare-fun tp!669718 () Bool)

(assert (=> b!2153433 (= e!1377265 (and setRes!17430 tp!669718))))

(declare-fun condSetEmpty!17430 () Bool)

(assert (=> b!2153433 (= condSetEmpty!17430 (= (_1!14575 (_1!14576 (h!30191 mapDefault!13721))) ((as const (Array Context!2938 Bool)) false)))))

(declare-fun setNonEmpty!17430 () Bool)

(declare-fun e!1377268 () Bool)

(declare-fun tp!669715 () Bool)

(declare-fun setElem!17430 () Context!2938)

(assert (=> setNonEmpty!17430 (= setRes!17431 (and tp!669715 (inv!32743 setElem!17430) e!1377268))))

(declare-fun mapValue!13721 () List!24874)

(declare-fun setRest!17430 () (InoxSet Context!2938))

(assert (=> setNonEmpty!17430 (= (_1!14575 (_1!14576 (h!30191 mapValue!13721))) ((_ map or) (store ((as const (Array Context!2938 Bool)) false) setElem!17430 true) setRest!17430))))

(declare-fun mapNonEmpty!13721 () Bool)

(declare-fun tp!669716 () Bool)

(declare-fun e!1377267 () Bool)

(assert (=> mapNonEmpty!13721 (= mapRes!13721 (and tp!669716 e!1377267))))

(declare-fun mapRest!13721 () (Array (_ BitVec 32) List!24874))

(declare-fun mapKey!13721 () (_ BitVec 32))

(assert (=> mapNonEmpty!13721 (= mapRest!13718 (store mapRest!13721 mapKey!13721 mapValue!13721))))

(declare-fun setElem!17431 () Context!2938)

(declare-fun tp!669717 () Bool)

(declare-fun setNonEmpty!17431 () Bool)

(assert (=> setNonEmpty!17431 (= setRes!17430 (and tp!669717 (inv!32743 setElem!17431) e!1377266))))

(declare-fun setRest!17431 () (InoxSet Context!2938))

(assert (=> setNonEmpty!17431 (= (_1!14575 (_1!14576 (h!30191 mapDefault!13721))) ((_ map or) (store ((as const (Array Context!2938 Bool)) false) setElem!17431 true) setRest!17431))))

(declare-fun b!2153434 () Bool)

(declare-fun tp!669713 () Bool)

(assert (=> b!2153434 (= e!1377267 (and setRes!17431 tp!669713))))

(declare-fun condSetEmpty!17431 () Bool)

(assert (=> b!2153434 (= condSetEmpty!17431 (= (_1!14575 (_1!14576 (h!30191 mapValue!13721))) ((as const (Array Context!2938 Bool)) false)))))

(declare-fun setIsEmpty!17431 () Bool)

(assert (=> setIsEmpty!17431 setRes!17430))

(declare-fun b!2153435 () Bool)

(declare-fun tp!669714 () Bool)

(assert (=> b!2153435 (= e!1377268 tp!669714)))

(assert (= (and mapNonEmpty!13718 condMapEmpty!13721) mapIsEmpty!13721))

(assert (= (and mapNonEmpty!13718 (not condMapEmpty!13721)) mapNonEmpty!13721))

(assert (= (and b!2153434 condSetEmpty!17431) setIsEmpty!17430))

(assert (= (and b!2153434 (not condSetEmpty!17431)) setNonEmpty!17430))

(assert (= setNonEmpty!17430 b!2153435))

(assert (= (and mapNonEmpty!13721 ((_ is Cons!24790) mapValue!13721)) b!2153434))

(assert (= (and b!2153433 condSetEmpty!17430) setIsEmpty!17431))

(assert (= (and b!2153433 (not condSetEmpty!17430)) setNonEmpty!17431))

(assert (= setNonEmpty!17431 b!2153432))

(assert (= (and mapNonEmpty!13718 ((_ is Cons!24790) mapDefault!13721)) b!2153433))

(declare-fun m!2595202 () Bool)

(assert (=> setNonEmpty!17430 m!2595202))

(declare-fun m!2595204 () Bool)

(assert (=> mapNonEmpty!13721 m!2595204))

(declare-fun m!2595206 () Bool)

(assert (=> setNonEmpty!17431 m!2595206))

(declare-fun b!2153437 () Bool)

(declare-fun e!1377270 () Bool)

(declare-fun tp!669721 () Bool)

(assert (=> b!2153437 (= e!1377270 tp!669721)))

(declare-fun setIsEmpty!17432 () Bool)

(declare-fun setRes!17432 () Bool)

(assert (=> setIsEmpty!17432 setRes!17432))

(declare-fun e!1377269 () Bool)

(assert (=> mapNonEmpty!13718 (= tp!669666 e!1377269)))

(declare-fun setNonEmpty!17432 () Bool)

(declare-fun tp!669720 () Bool)

(declare-fun setElem!17432 () Context!2938)

(assert (=> setNonEmpty!17432 (= setRes!17432 (and tp!669720 (inv!32743 setElem!17432) e!1377270))))

(declare-fun setRest!17432 () (InoxSet Context!2938))

(assert (=> setNonEmpty!17432 (= (_1!14575 (_1!14576 (h!30191 mapValue!13718))) ((_ map or) (store ((as const (Array Context!2938 Bool)) false) setElem!17432 true) setRest!17432))))

(declare-fun b!2153436 () Bool)

(declare-fun tp!669722 () Bool)

(assert (=> b!2153436 (= e!1377269 (and setRes!17432 tp!669722))))

(declare-fun condSetEmpty!17432 () Bool)

(assert (=> b!2153436 (= condSetEmpty!17432 (= (_1!14575 (_1!14576 (h!30191 mapValue!13718))) ((as const (Array Context!2938 Bool)) false)))))

(assert (= (and b!2153436 condSetEmpty!17432) setIsEmpty!17432))

(assert (= (and b!2153436 (not condSetEmpty!17432)) setNonEmpty!17432))

(assert (= setNonEmpty!17432 b!2153437))

(assert (= (and mapNonEmpty!13718 ((_ is Cons!24790) mapValue!13718)) b!2153436))

(declare-fun m!2595208 () Bool)

(assert (=> setNonEmpty!17432 m!2595208))

(declare-fun b!2153439 () Bool)

(declare-fun e!1377272 () Bool)

(declare-fun tp!669724 () Bool)

(assert (=> b!2153439 (= e!1377272 tp!669724)))

(declare-fun setIsEmpty!17433 () Bool)

(declare-fun setRes!17433 () Bool)

(assert (=> setIsEmpty!17433 setRes!17433))

(declare-fun e!1377271 () Bool)

(assert (=> b!2153334 (= tp!669673 e!1377271)))

(declare-fun setNonEmpty!17433 () Bool)

(declare-fun setElem!17433 () Context!2938)

(declare-fun tp!669723 () Bool)

(assert (=> setNonEmpty!17433 (= setRes!17433 (and tp!669723 (inv!32743 setElem!17433) e!1377272))))

(declare-fun setRest!17433 () (InoxSet Context!2938))

(assert (=> setNonEmpty!17433 (= (_1!14575 (_1!14576 (h!30191 (zeroValue!3158 (v!29263 (underlying!5995 (v!29264 (underlying!5996 (cache!3195 cacheFurthestNullable!118))))))))) ((_ map or) (store ((as const (Array Context!2938 Bool)) false) setElem!17433 true) setRest!17433))))

(declare-fun b!2153438 () Bool)

(declare-fun tp!669725 () Bool)

(assert (=> b!2153438 (= e!1377271 (and setRes!17433 tp!669725))))

(declare-fun condSetEmpty!17433 () Bool)

(assert (=> b!2153438 (= condSetEmpty!17433 (= (_1!14575 (_1!14576 (h!30191 (zeroValue!3158 (v!29263 (underlying!5995 (v!29264 (underlying!5996 (cache!3195 cacheFurthestNullable!118))))))))) ((as const (Array Context!2938 Bool)) false)))))

(assert (= (and b!2153438 condSetEmpty!17433) setIsEmpty!17433))

(assert (= (and b!2153438 (not condSetEmpty!17433)) setNonEmpty!17433))

(assert (= setNonEmpty!17433 b!2153439))

(assert (= (and b!2153334 ((_ is Cons!24790) (zeroValue!3158 (v!29263 (underlying!5995 (v!29264 (underlying!5996 (cache!3195 cacheFurthestNullable!118)))))))) b!2153438))

(declare-fun m!2595210 () Bool)

(assert (=> setNonEmpty!17433 m!2595210))

(declare-fun b!2153441 () Bool)

(declare-fun e!1377274 () Bool)

(declare-fun tp!669727 () Bool)

(assert (=> b!2153441 (= e!1377274 tp!669727)))

(declare-fun setIsEmpty!17434 () Bool)

(declare-fun setRes!17434 () Bool)

(assert (=> setIsEmpty!17434 setRes!17434))

(declare-fun e!1377273 () Bool)

(assert (=> b!2153334 (= tp!669675 e!1377273)))

(declare-fun setElem!17434 () Context!2938)

(declare-fun setNonEmpty!17434 () Bool)

(declare-fun tp!669726 () Bool)

(assert (=> setNonEmpty!17434 (= setRes!17434 (and tp!669726 (inv!32743 setElem!17434) e!1377274))))

(declare-fun setRest!17434 () (InoxSet Context!2938))

(assert (=> setNonEmpty!17434 (= (_1!14575 (_1!14576 (h!30191 (minValue!3158 (v!29263 (underlying!5995 (v!29264 (underlying!5996 (cache!3195 cacheFurthestNullable!118))))))))) ((_ map or) (store ((as const (Array Context!2938 Bool)) false) setElem!17434 true) setRest!17434))))

(declare-fun b!2153440 () Bool)

(declare-fun tp!669728 () Bool)

(assert (=> b!2153440 (= e!1377273 (and setRes!17434 tp!669728))))

(declare-fun condSetEmpty!17434 () Bool)

(assert (=> b!2153440 (= condSetEmpty!17434 (= (_1!14575 (_1!14576 (h!30191 (minValue!3158 (v!29263 (underlying!5995 (v!29264 (underlying!5996 (cache!3195 cacheFurthestNullable!118))))))))) ((as const (Array Context!2938 Bool)) false)))))

(assert (= (and b!2153440 condSetEmpty!17434) setIsEmpty!17434))

(assert (= (and b!2153440 (not condSetEmpty!17434)) setNonEmpty!17434))

(assert (= setNonEmpty!17434 b!2153441))

(assert (= (and b!2153334 ((_ is Cons!24790) (minValue!3158 (v!29263 (underlying!5995 (v!29264 (underlying!5996 (cache!3195 cacheFurthestNullable!118)))))))) b!2153440))

(declare-fun m!2595212 () Bool)

(assert (=> setNonEmpty!17434 m!2595212))

(declare-fun e!1377276 () Bool)

(declare-fun b!2153442 () Bool)

(declare-fun tp!669729 () Bool)

(declare-fun tp!669731 () Bool)

(assert (=> b!2153442 (= e!1377276 (and (inv!32739 (left!19067 (c!341401 (totalInput!3306 cacheFurthestNullable!118)))) tp!669729 (inv!32739 (right!19397 (c!341401 (totalInput!3306 cacheFurthestNullable!118)))) tp!669731))))

(declare-fun b!2153444 () Bool)

(declare-fun e!1377275 () Bool)

(declare-fun tp!669730 () Bool)

(assert (=> b!2153444 (= e!1377275 tp!669730)))

(declare-fun b!2153443 () Bool)

(assert (=> b!2153443 (= e!1377276 (and (inv!32746 (xs!10977 (c!341401 (totalInput!3306 cacheFurthestNullable!118)))) e!1377275))))

(assert (=> b!2153335 (= tp!669670 (and (inv!32739 (c!341401 (totalInput!3306 cacheFurthestNullable!118))) e!1377276))))

(assert (= (and b!2153335 ((_ is Node!8035) (c!341401 (totalInput!3306 cacheFurthestNullable!118)))) b!2153442))

(assert (= b!2153443 b!2153444))

(assert (= (and b!2153335 ((_ is Leaf!11752) (c!341401 (totalInput!3306 cacheFurthestNullable!118)))) b!2153443))

(declare-fun m!2595214 () Bool)

(assert (=> b!2153442 m!2595214))

(declare-fun m!2595216 () Bool)

(assert (=> b!2153442 m!2595216))

(declare-fun m!2595218 () Bool)

(assert (=> b!2153443 m!2595218))

(assert (=> b!2153335 m!2595126))

(declare-fun e!1377286 () Bool)

(declare-fun setNonEmpty!17437 () Bool)

(declare-fun setElem!17437 () Context!2938)

(declare-fun setRes!17437 () Bool)

(declare-fun tp!669741 () Bool)

(assert (=> setNonEmpty!17437 (= setRes!17437 (and tp!669741 (inv!32743 setElem!17437) e!1377286))))

(declare-fun setRest!17437 () (InoxSet Context!2938))

(assert (=> setNonEmpty!17437 (= (z!5968 (h!30190 (t!197421 stack!12))) ((_ map or) (store ((as const (Array Context!2938 Bool)) false) setElem!17437 true) setRest!17437))))

(declare-fun e!1377288 () Bool)

(assert (=> b!2153343 (= tp!669669 e!1377288)))

(declare-fun b!2153455 () Bool)

(declare-fun e!1377287 () Bool)

(declare-fun tp!669743 () Bool)

(assert (=> b!2153455 (= e!1377287 (and (inv!32739 (c!341401 (totalInput!3305 (h!30190 (t!197421 stack!12))))) tp!669743))))

(declare-fun b!2153456 () Bool)

(declare-fun tp!669742 () Bool)

(assert (=> b!2153456 (= e!1377286 tp!669742)))

(declare-fun e!1377285 () Bool)

(declare-fun b!2153457 () Bool)

(assert (=> b!2153457 (= e!1377285 (and setRes!17437 (inv!32740 (totalInput!3305 (h!30190 (t!197421 stack!12)))) e!1377287))))

(declare-fun condSetEmpty!17437 () Bool)

(assert (=> b!2153457 (= condSetEmpty!17437 (= (z!5968 (h!30190 (t!197421 stack!12))) ((as const (Array Context!2938 Bool)) false)))))

(declare-fun setIsEmpty!17437 () Bool)

(assert (=> setIsEmpty!17437 setRes!17437))

(declare-fun b!2153458 () Bool)

(declare-fun tp!669740 () Bool)

(assert (=> b!2153458 (= e!1377288 (and (inv!32742 (h!30190 (t!197421 stack!12))) e!1377285 tp!669740))))

(assert (= (and b!2153457 condSetEmpty!17437) setIsEmpty!17437))

(assert (= (and b!2153457 (not condSetEmpty!17437)) setNonEmpty!17437))

(assert (= setNonEmpty!17437 b!2153456))

(assert (= b!2153457 b!2153455))

(assert (= b!2153458 b!2153457))

(assert (= (and b!2153343 ((_ is Cons!24789) (t!197421 stack!12))) b!2153458))

(declare-fun m!2595220 () Bool)

(assert (=> setNonEmpty!17437 m!2595220))

(declare-fun m!2595222 () Bool)

(assert (=> b!2153455 m!2595222))

(declare-fun m!2595224 () Bool)

(assert (=> b!2153457 m!2595224))

(declare-fun m!2595226 () Bool)

(assert (=> b!2153458 m!2595226))

(declare-fun b!2153463 () Bool)

(declare-fun e!1377291 () Bool)

(declare-fun tp!669748 () Bool)

(declare-fun tp!669749 () Bool)

(assert (=> b!2153463 (= e!1377291 (and tp!669748 tp!669749))))

(assert (=> b!2153339 (= tp!669672 e!1377291)))

(assert (= (and b!2153339 ((_ is Cons!24787) (exprs!1969 setElem!17422))) b!2153463))

(declare-fun condSetEmpty!17440 () Bool)

(assert (=> setNonEmpty!17422 (= condSetEmpty!17440 (= setRest!17422 ((as const (Array Context!2938 Bool)) false)))))

(declare-fun setRes!17440 () Bool)

(assert (=> setNonEmpty!17422 (= tp!669668 setRes!17440)))

(declare-fun setIsEmpty!17440 () Bool)

(assert (=> setIsEmpty!17440 setRes!17440))

(declare-fun tp!669754 () Bool)

(declare-fun setNonEmpty!17440 () Bool)

(declare-fun setElem!17440 () Context!2938)

(declare-fun e!1377294 () Bool)

(assert (=> setNonEmpty!17440 (= setRes!17440 (and tp!669754 (inv!32743 setElem!17440) e!1377294))))

(declare-fun setRest!17440 () (InoxSet Context!2938))

(assert (=> setNonEmpty!17440 (= setRest!17422 ((_ map or) (store ((as const (Array Context!2938 Bool)) false) setElem!17440 true) setRest!17440))))

(declare-fun b!2153468 () Bool)

(declare-fun tp!669755 () Bool)

(assert (=> b!2153468 (= e!1377294 tp!669755)))

(assert (= (and setNonEmpty!17422 condSetEmpty!17440) setIsEmpty!17440))

(assert (= (and setNonEmpty!17422 (not condSetEmpty!17440)) setNonEmpty!17440))

(assert (= setNonEmpty!17440 b!2153468))

(declare-fun m!2595228 () Bool)

(assert (=> setNonEmpty!17440 m!2595228))

(declare-fun b_lambda!70901 () Bool)

(assert (= b_lambda!70897 (or b!2153345 b_lambda!70901)))

(declare-fun bs!445736 () Bool)

(declare-fun d!646029 () Bool)

(assert (= bs!445736 (and d!646029 b!2153345)))

(assert (=> bs!445736 (= (dynLambda!11406 lambda!81160 (h!30190 stack!12)) (= (totalInput!3305 (h!30190 stack!12)) totalInput!880))))

(assert (=> b!2153372 d!646029))

(declare-fun b_lambda!70903 () Bool)

(assert (= b_lambda!70899 (or b!2153337 b_lambda!70903)))

(declare-fun bs!445737 () Bool)

(declare-fun d!646031 () Bool)

(assert (= bs!445737 (and d!646031 b!2153337)))

(assert (=> bs!445737 (= (dynLambda!11406 lambda!81161 (h!30190 stack!12)) (= (res!928480 (h!30190 stack!12)) res!17610))))

(assert (=> b!2153398 d!646031))

(check-sat (not b!2153439) (not b!2153373) (not setNonEmpty!17425) (not setNonEmpty!17433) (not b!2153419) (not b!2153435) (not b!2153417) (not b!2153362) (not b!2153434) (not b!2153410) (not d!646011) (not d!646021) (not b_lambda!70903) (not b!2153468) (not b!2153408) (not b!2153421) (not b!2153365) (not d!646025) (not setNonEmpty!17434) (not b!2153456) (not b!2153438) (not b!2153367) (not b!2153440) (not b!2153392) (not setNonEmpty!17431) (not b!2153344) (not b!2153397) (not b_lambda!70901) (not b!2153409) (not b!2153364) (not b!2153393) (not b!2153390) (not b_next!64293) (not b!2153437) (not d!646019) b_and!173205 (not b!2153442) (not b!2153433) (not b!2153441) (not setNonEmpty!17440) (not d!646017) (not b!2153458) (not b!2153436) (not b!2153394) (not mapNonEmpty!13721) (not b!2153418) (not setNonEmpty!17437) (not setNonEmpty!17430) b_and!173207 (not b!2153376) (not setNonEmpty!17432) (not d!646001) (not d!646003) (not b!2153443) (not b_next!64295) (not b!2153463) (not b!2153432) (not b!2153457) (not b!2153374) (not b!2153420) (not b!2153455) (not b!2153335) (not d!646005) (not b!2153399) (not b!2153444) (not b!2153338))
(check-sat b_and!173207 b_and!173205 (not b_next!64295) (not b_next!64293))
