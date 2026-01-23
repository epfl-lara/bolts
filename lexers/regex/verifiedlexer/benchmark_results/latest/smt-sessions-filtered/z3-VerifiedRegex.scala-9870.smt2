; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!517328 () Bool)

(assert start!517328)

(declare-fun b!4926461 () Bool)

(declare-fun e!3078140 () Bool)

(declare-datatypes ((C!26964 0))(
  ( (C!26965 (val!22816 Int)) )
))
(declare-datatypes ((List!56821 0))(
  ( (Nil!56697) (Cons!56697 (h!63145 C!26964) (t!367283 List!56821)) )
))
(declare-datatypes ((IArray!29813 0))(
  ( (IArray!29814 (innerList!14964 List!56821)) )
))
(declare-datatypes ((Conc!14876 0))(
  ( (Node!14876 (left!41344 Conc!14876) (right!41674 Conc!14876) (csize!29982 Int) (cheight!15087 Int)) (Leaf!24747 (xs!18198 IArray!29813) (csize!29983 Int)) (Empty!14876) )
))
(declare-datatypes ((BalanceConc!29182 0))(
  ( (BalanceConc!29183 (c!839087 Conc!14876)) )
))
(declare-fun input!5492 () BalanceConc!29182)

(declare-fun tp!1383591 () Bool)

(declare-fun inv!73492 (Conc!14876) Bool)

(assert (=> b!4926461 (= e!3078140 (and (inv!73492 (c!839087 input!5492)) tp!1383591))))

(declare-fun b!4926462 () Bool)

(declare-fun e!3078141 () Bool)

(declare-fun lt!2026994 () List!56821)

(declare-datatypes ((tuple2!61192 0))(
  ( (tuple2!61193 (_1!33899 List!56821) (_2!33899 List!56821)) )
))
(declare-fun lt!2026999 () tuple2!61192)

(declare-fun size!37489 (List!56821) Int)

(assert (=> b!4926462 (= e!3078141 (not (= (size!37489 lt!2026994) (size!37489 (_1!33899 lt!2026999)))))))

(declare-fun setIsEmpty!27550 () Bool)

(declare-fun setRes!27550 () Bool)

(assert (=> setIsEmpty!27550 setRes!27550))

(declare-fun tp!1383593 () Bool)

(declare-fun e!3078142 () Bool)

(declare-datatypes ((Regex!13377 0))(
  ( (ElementMatch!13377 (c!839088 C!26964)) (Concat!21950 (regOne!27266 Regex!13377) (regTwo!27266 Regex!13377)) (EmptyExpr!13377) (Star!13377 (reg!13706 Regex!13377)) (EmptyLang!13377) (Union!13377 (regOne!27267 Regex!13377) (regTwo!27267 Regex!13377)) )
))
(declare-datatypes ((List!56822 0))(
  ( (Nil!56698) (Cons!56698 (h!63146 Regex!13377) (t!367284 List!56822)) )
))
(declare-datatypes ((Context!6038 0))(
  ( (Context!6039 (exprs!3519 List!56822)) )
))
(declare-fun setElem!27550 () Context!6038)

(declare-fun setNonEmpty!27550 () Bool)

(declare-fun inv!73493 (Context!6038) Bool)

(assert (=> setNonEmpty!27550 (= setRes!27550 (and tp!1383593 (inv!73493 setElem!27550) e!3078142))))

(define-sort InoxSet (T) (Array T Bool))

(declare-fun z!3559 () (InoxSet Context!6038))

(declare-fun setRest!27550 () (InoxSet Context!6038))

(assert (=> setNonEmpty!27550 (= z!3559 ((_ map or) (store ((as const (Array Context!6038 Bool)) false) setElem!27550 true) setRest!27550))))

(declare-fun res!2102700 () Bool)

(assert (=> start!517328 (=> (not res!2102700) (not e!3078141))))

(declare-fun lt!2026998 () List!56821)

(declare-fun ++!12330 (List!56821 List!56821) List!56821)

(assert (=> start!517328 (= res!2102700 (= (++!12330 lt!2026994 lt!2026998) (++!12330 (_1!33899 lt!2026999) (_2!33899 lt!2026999))))))

(declare-fun lt!2026996 () Int)

(declare-fun lt!2026995 () List!56821)

(declare-fun findLongestMatchInnerZipper!62 ((InoxSet Context!6038) List!56821 Int List!56821 List!56821 Int) tuple2!61192)

(assert (=> start!517328 (= lt!2026999 (findLongestMatchInnerZipper!62 z!3559 Nil!56697 0 lt!2026995 lt!2026995 lt!2026996))))

(declare-datatypes ((tuple2!61194 0))(
  ( (tuple2!61195 (_1!33900 BalanceConc!29182) (_2!33900 BalanceConc!29182)) )
))
(declare-fun lt!2026997 () tuple2!61194)

(declare-fun list!17959 (BalanceConc!29182) List!56821)

(assert (=> start!517328 (= lt!2026998 (list!17959 (_2!33900 lt!2026997)))))

(assert (=> start!517328 (= lt!2026994 (list!17959 (_1!33900 lt!2026997)))))

(declare-fun splitAt!277 (BalanceConc!29182 Int) tuple2!61194)

(declare-fun findLongestMatchInnerZipperFast!89 ((InoxSet Context!6038) List!56821 Int List!56821 BalanceConc!29182 Int) Int)

(assert (=> start!517328 (= lt!2026997 (splitAt!277 input!5492 (findLongestMatchInnerZipperFast!89 z!3559 Nil!56697 0 lt!2026995 input!5492 lt!2026996)))))

(declare-fun size!37490 (BalanceConc!29182) Int)

(assert (=> start!517328 (= lt!2026996 (size!37490 input!5492))))

(assert (=> start!517328 (= lt!2026995 (list!17959 input!5492))))

(assert (=> start!517328 e!3078141))

(declare-fun inv!73494 (BalanceConc!29182) Bool)

(assert (=> start!517328 (and (inv!73494 input!5492) e!3078140)))

(declare-fun condSetEmpty!27550 () Bool)

(assert (=> start!517328 (= condSetEmpty!27550 (= z!3559 ((as const (Array Context!6038 Bool)) false)))))

(assert (=> start!517328 setRes!27550))

(declare-fun b!4926463 () Bool)

(declare-fun tp!1383592 () Bool)

(assert (=> b!4926463 (= e!3078142 tp!1383592)))

(assert (= (and start!517328 res!2102700) b!4926462))

(assert (= start!517328 b!4926461))

(assert (= (and start!517328 condSetEmpty!27550) setIsEmpty!27550))

(assert (= (and start!517328 (not condSetEmpty!27550)) setNonEmpty!27550))

(assert (= setNonEmpty!27550 b!4926463))

(declare-fun m!5944332 () Bool)

(assert (=> b!4926461 m!5944332))

(declare-fun m!5944334 () Bool)

(assert (=> b!4926462 m!5944334))

(declare-fun m!5944336 () Bool)

(assert (=> b!4926462 m!5944336))

(declare-fun m!5944338 () Bool)

(assert (=> setNonEmpty!27550 m!5944338))

(declare-fun m!5944340 () Bool)

(assert (=> start!517328 m!5944340))

(declare-fun m!5944342 () Bool)

(assert (=> start!517328 m!5944342))

(declare-fun m!5944344 () Bool)

(assert (=> start!517328 m!5944344))

(declare-fun m!5944346 () Bool)

(assert (=> start!517328 m!5944346))

(declare-fun m!5944348 () Bool)

(assert (=> start!517328 m!5944348))

(declare-fun m!5944350 () Bool)

(assert (=> start!517328 m!5944350))

(declare-fun m!5944352 () Bool)

(assert (=> start!517328 m!5944352))

(declare-fun m!5944354 () Bool)

(assert (=> start!517328 m!5944354))

(assert (=> start!517328 m!5944352))

(declare-fun m!5944356 () Bool)

(assert (=> start!517328 m!5944356))

(declare-fun m!5944358 () Bool)

(assert (=> start!517328 m!5944358))

(check-sat (not b!4926462) (not start!517328) (not b!4926463) (not b!4926461) (not setNonEmpty!27550))
(check-sat)
(get-model)

(declare-fun d!1585443 () Bool)

(declare-fun lambda!245281 () Int)

(declare-fun forall!13140 (List!56822 Int) Bool)

(assert (=> d!1585443 (= (inv!73493 setElem!27550) (forall!13140 (exprs!3519 setElem!27550) lambda!245281))))

(declare-fun bs!1179766 () Bool)

(assert (= bs!1179766 d!1585443))

(declare-fun m!5944532 () Bool)

(assert (=> bs!1179766 m!5944532))

(assert (=> setNonEmpty!27550 d!1585443))

(declare-fun b!4926605 () Bool)

(declare-fun e!3078223 () Int)

(assert (=> b!4926605 (= e!3078223 0)))

(declare-fun b!4926606 () Bool)

(declare-fun c!839149 () Bool)

(declare-fun call!343629 () Bool)

(assert (=> b!4926606 (= c!839149 call!343629)))

(declare-datatypes ((Unit!147242 0))(
  ( (Unit!147243) )
))
(declare-fun lt!2027325 () Unit!147242)

(declare-fun lt!2027320 () Unit!147242)

(assert (=> b!4926606 (= lt!2027325 lt!2027320)))

(declare-fun lt!2027340 () C!26964)

(declare-fun lt!2027336 () List!56821)

(declare-fun lt!2027328 () List!56821)

(assert (=> b!4926606 (= (++!12330 (++!12330 Nil!56697 (Cons!56697 lt!2027340 Nil!56697)) lt!2027336) lt!2027328)))

(declare-fun lemmaMoveElementToOtherListKeepsConcatEq!1395 (List!56821 C!26964 List!56821 List!56821) Unit!147242)

(assert (=> b!4926606 (= lt!2027320 (lemmaMoveElementToOtherListKeepsConcatEq!1395 Nil!56697 lt!2027340 lt!2027336 lt!2027328))))

(assert (=> b!4926606 (= lt!2027328 (list!17959 input!5492))))

(declare-fun tail!9671 (List!56821) List!56821)

(assert (=> b!4926606 (= lt!2027336 (tail!9671 lt!2026995))))

(declare-fun apply!13667 (BalanceConc!29182 Int) C!26964)

(assert (=> b!4926606 (= lt!2027340 (apply!13667 input!5492 0))))

(declare-fun lt!2027334 () Unit!147242)

(declare-fun lt!2027346 () Unit!147242)

(assert (=> b!4926606 (= lt!2027334 lt!2027346)))

(declare-fun lt!2027335 () List!56821)

(declare-fun isPrefix!4965 (List!56821 List!56821) Bool)

(declare-fun head!10524 (List!56821) C!26964)

(declare-fun getSuffix!2953 (List!56821 List!56821) List!56821)

(assert (=> b!4926606 (isPrefix!4965 (++!12330 Nil!56697 (Cons!56697 (head!10524 (getSuffix!2953 lt!2027335 Nil!56697)) Nil!56697)) lt!2027335)))

(declare-fun lemmaAddHeadSuffixToPrefixStillPrefix!777 (List!56821 List!56821) Unit!147242)

(assert (=> b!4926606 (= lt!2027346 (lemmaAddHeadSuffixToPrefixStillPrefix!777 Nil!56697 lt!2027335))))

(assert (=> b!4926606 (= lt!2027335 (list!17959 input!5492))))

(declare-fun lt!2027307 () Unit!147242)

(declare-fun e!3078220 () Unit!147242)

(assert (=> b!4926606 (= lt!2027307 e!3078220)))

(declare-fun c!839150 () Bool)

(assert (=> b!4926606 (= c!839150 (= (size!37489 Nil!56697) (size!37490 input!5492)))))

(declare-fun lt!2027326 () Unit!147242)

(declare-fun lt!2027306 () Unit!147242)

(assert (=> b!4926606 (= lt!2027326 lt!2027306)))

(declare-fun lt!2027342 () List!56821)

(assert (=> b!4926606 (<= (size!37489 Nil!56697) (size!37489 lt!2027342))))

(declare-fun lemmaIsPrefixThenSmallerEqSize!689 (List!56821 List!56821) Unit!147242)

(assert (=> b!4926606 (= lt!2027306 (lemmaIsPrefixThenSmallerEqSize!689 Nil!56697 lt!2027342))))

(assert (=> b!4926606 (= lt!2027342 (list!17959 input!5492))))

(declare-fun lt!2027310 () Unit!147242)

(declare-fun lt!2027344 () Unit!147242)

(assert (=> b!4926606 (= lt!2027310 lt!2027344)))

(declare-fun lt!2027331 () List!56821)

(declare-fun drop!2227 (List!56821 Int) List!56821)

(declare-fun apply!13668 (List!56821 Int) C!26964)

(assert (=> b!4926606 (= (head!10524 (drop!2227 lt!2027331 0)) (apply!13668 lt!2027331 0))))

(declare-fun lemmaDropApply!1285 (List!56821 Int) Unit!147242)

(assert (=> b!4926606 (= lt!2027344 (lemmaDropApply!1285 lt!2027331 0))))

(assert (=> b!4926606 (= lt!2027331 (list!17959 input!5492))))

(declare-fun lt!2027313 () Unit!147242)

(declare-fun lt!2027323 () Unit!147242)

(assert (=> b!4926606 (= lt!2027313 lt!2027323)))

(declare-fun lt!2027311 () List!56821)

(declare-fun lt!2027345 () List!56821)

(assert (=> b!4926606 (and (= lt!2027311 Nil!56697) (= lt!2027345 lt!2026995))))

(declare-fun lemmaConcatSameAndSameSizesThenSameLists!660 (List!56821 List!56821 List!56821 List!56821) Unit!147242)

(assert (=> b!4926606 (= lt!2027323 (lemmaConcatSameAndSameSizesThenSameLists!660 lt!2027311 lt!2027345 Nil!56697 lt!2026995))))

(declare-fun lt!2027332 () tuple2!61194)

(assert (=> b!4926606 (= lt!2027345 (list!17959 (_2!33900 lt!2027332)))))

(declare-fun call!343631 () List!56821)

(assert (=> b!4926606 (= lt!2027311 call!343631)))

(assert (=> b!4926606 (= lt!2027332 (splitAt!277 input!5492 0))))

(declare-fun e!3078219 () Int)

(declare-fun e!3078222 () Int)

(assert (=> b!4926606 (= e!3078219 e!3078222)))

(declare-fun b!4926607 () Bool)

(declare-fun call!343628 () Int)

(assert (=> b!4926607 (= e!3078222 call!343628)))

(declare-fun lt!2027343 () List!56821)

(declare-fun bm!343620 () Bool)

(declare-fun call!343634 () Bool)

(declare-fun lt!2027309 () List!56821)

(declare-fun lt!2027308 () List!56821)

(declare-fun c!839148 () Bool)

(declare-fun lt!2027318 () List!56821)

(assert (=> bm!343620 (= call!343634 (isPrefix!4965 (ite c!839148 lt!2027318 lt!2027308) (ite c!839148 lt!2027309 lt!2027343)))))

(declare-fun b!4926608 () Bool)

(declare-fun e!3078218 () List!56821)

(assert (=> b!4926608 (= e!3078218 call!343631)))

(declare-fun b!4926609 () Bool)

(assert (=> b!4926609 (= e!3078223 0)))

(declare-fun b!4926610 () Bool)

(declare-fun Unit!147244 () Unit!147242)

(assert (=> b!4926610 (= e!3078220 Unit!147244)))

(assert (=> b!4926610 (= lt!2027308 (list!17959 input!5492))))

(assert (=> b!4926610 (= lt!2027343 (list!17959 input!5492))))

(declare-fun lt!2027338 () Unit!147242)

(declare-fun call!343632 () Unit!147242)

(assert (=> b!4926610 (= lt!2027338 call!343632)))

(assert (=> b!4926610 call!343634))

(declare-fun lt!2027330 () Unit!147242)

(assert (=> b!4926610 (= lt!2027330 lt!2027338)))

(declare-fun lt!2027341 () List!56821)

(assert (=> b!4926610 (= lt!2027341 (list!17959 input!5492))))

(declare-fun lt!2027333 () Unit!147242)

(declare-fun call!343625 () Unit!147242)

(assert (=> b!4926610 (= lt!2027333 call!343625)))

(assert (=> b!4926610 (= lt!2027341 Nil!56697)))

(declare-fun lt!2027316 () Unit!147242)

(assert (=> b!4926610 (= lt!2027316 lt!2027333)))

(assert (=> b!4926610 false))

(declare-fun b!4926611 () Bool)

(declare-fun e!3078221 () Int)

(assert (=> b!4926611 (= e!3078221 0)))

(declare-fun bm!343621 () Bool)

(declare-fun call!343633 () List!56821)

(declare-fun call!343630 () C!26964)

(assert (=> bm!343621 (= call!343633 (++!12330 Nil!56697 (Cons!56697 call!343630 Nil!56697)))))

(declare-fun b!4926612 () Bool)

(declare-fun c!839151 () Bool)

(assert (=> b!4926612 (= c!839151 call!343629)))

(declare-fun lt!2027324 () Unit!147242)

(declare-fun lt!2027312 () Unit!147242)

(assert (=> b!4926612 (= lt!2027324 lt!2027312)))

(declare-fun lt!2027305 () List!56821)

(assert (=> b!4926612 (= lt!2027305 Nil!56697)))

(assert (=> b!4926612 (= lt!2027312 call!343625)))

(assert (=> b!4926612 (= lt!2027305 call!343631)))

(declare-fun lt!2027315 () Unit!147242)

(declare-fun lt!2027314 () Unit!147242)

(assert (=> b!4926612 (= lt!2027315 lt!2027314)))

(assert (=> b!4926612 call!343634))

(assert (=> b!4926612 (= lt!2027314 call!343632)))

(assert (=> b!4926612 (= lt!2027309 call!343631)))

(assert (=> b!4926612 (= lt!2027318 call!343631)))

(assert (=> b!4926612 (= e!3078219 e!3078223)))

(declare-fun bm!343622 () Bool)

(declare-fun nullableZipper!814 ((InoxSet Context!6038)) Bool)

(assert (=> bm!343622 (= call!343629 (nullableZipper!814 z!3559))))

(declare-fun bm!343623 () Bool)

(assert (=> bm!343623 (= call!343631 (list!17959 (ite c!839148 input!5492 (_1!33900 lt!2027332))))))

(declare-fun lt!2027327 () Int)

(declare-fun d!1585473 () Bool)

(assert (=> d!1585473 (= (size!37489 (_1!33899 (findLongestMatchInnerZipper!62 z!3559 Nil!56697 0 lt!2026995 (list!17959 input!5492) lt!2026996))) lt!2027327)))

(assert (=> d!1585473 (= lt!2027327 e!3078221)))

(declare-fun c!839153 () Bool)

(declare-fun lostCauseZipper!695 ((InoxSet Context!6038)) Bool)

(assert (=> d!1585473 (= c!839153 (lostCauseZipper!695 z!3559))))

(declare-fun lt!2027321 () Unit!147242)

(declare-fun Unit!147245 () Unit!147242)

(assert (=> d!1585473 (= lt!2027321 Unit!147245)))

(assert (=> d!1585473 (= (getSuffix!2953 (list!17959 input!5492) Nil!56697) lt!2026995)))

(declare-fun lt!2027322 () Unit!147242)

(declare-fun lt!2027319 () Unit!147242)

(assert (=> d!1585473 (= lt!2027322 lt!2027319)))

(declare-fun lt!2027317 () List!56821)

(assert (=> d!1585473 (= lt!2026995 lt!2027317)))

(declare-fun lemmaSamePrefixThenSameSuffix!2369 (List!56821 List!56821 List!56821 List!56821 List!56821) Unit!147242)

(assert (=> d!1585473 (= lt!2027319 (lemmaSamePrefixThenSameSuffix!2369 Nil!56697 lt!2026995 Nil!56697 lt!2027317 (list!17959 input!5492)))))

(assert (=> d!1585473 (= lt!2027317 (getSuffix!2953 (list!17959 input!5492) Nil!56697))))

(declare-fun lt!2027337 () Unit!147242)

(declare-fun lt!2027329 () Unit!147242)

(assert (=> d!1585473 (= lt!2027337 lt!2027329)))

(assert (=> d!1585473 (isPrefix!4965 Nil!56697 (++!12330 Nil!56697 lt!2026995))))

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!3189 (List!56821 List!56821) Unit!147242)

(assert (=> d!1585473 (= lt!2027329 (lemmaConcatTwoListThenFirstIsPrefix!3189 Nil!56697 lt!2026995))))

(assert (=> d!1585473 (= (++!12330 Nil!56697 lt!2026995) (list!17959 input!5492))))

(assert (=> d!1585473 (= (findLongestMatchInnerZipperFast!89 z!3559 Nil!56697 0 lt!2026995 input!5492 lt!2026996) lt!2027327)))

(declare-fun bm!343624 () Bool)

(assert (=> bm!343624 (= call!343630 (apply!13667 input!5492 0))))

(declare-fun bm!343625 () Bool)

(declare-fun lemmaIsPrefixRefl!3361 (List!56821 List!56821) Unit!147242)

(assert (=> bm!343625 (= call!343632 (lemmaIsPrefixRefl!3361 (ite c!839148 lt!2027318 lt!2027308) (ite c!839148 lt!2027309 lt!2027343)))))

(declare-fun call!343626 () List!56821)

(declare-fun bm!343626 () Bool)

(declare-fun call!343627 () (InoxSet Context!6038))

(assert (=> bm!343626 (= call!343628 (findLongestMatchInnerZipperFast!89 call!343627 call!343633 (+ 0 1) call!343626 input!5492 lt!2026996))))

(declare-fun b!4926613 () Bool)

(declare-fun Unit!147248 () Unit!147242)

(assert (=> b!4926613 (= e!3078220 Unit!147248)))

(declare-fun b!4926614 () Bool)

(declare-fun lt!2027339 () Int)

(assert (=> b!4926614 (= e!3078222 (ite (= lt!2027339 0) 0 lt!2027339))))

(assert (=> b!4926614 (= lt!2027339 call!343628)))

(declare-fun bm!343627 () Bool)

(declare-fun derivationStepZipper!592 ((InoxSet Context!6038) C!26964) (InoxSet Context!6038))

(assert (=> bm!343627 (= call!343627 (derivationStepZipper!592 z!3559 call!343630))))

(declare-fun bm!343628 () Bool)

(declare-fun c!839152 () Bool)

(assert (=> bm!343628 (= c!839152 c!839148)))

(declare-fun lemmaIsPrefixSameLengthThenSameList!1123 (List!56821 List!56821 List!56821) Unit!147242)

(assert (=> bm!343628 (= call!343625 (lemmaIsPrefixSameLengthThenSameList!1123 (ite c!839148 lt!2027305 lt!2027341) Nil!56697 e!3078218))))

(declare-fun b!4926615 () Bool)

(assert (=> b!4926615 (= e!3078218 (list!17959 input!5492))))

(declare-fun bm!343629 () Bool)

(assert (=> bm!343629 (= call!343626 (tail!9671 lt!2026995))))

(declare-fun b!4926616 () Bool)

(assert (=> b!4926616 (= e!3078221 e!3078219)))

(assert (=> b!4926616 (= c!839148 (= 0 lt!2026996))))

(assert (= (and d!1585473 c!839153) b!4926611))

(assert (= (and d!1585473 (not c!839153)) b!4926616))

(assert (= (and b!4926616 c!839148) b!4926612))

(assert (= (and b!4926616 (not c!839148)) b!4926606))

(assert (= (and b!4926612 c!839151) b!4926609))

(assert (= (and b!4926612 (not c!839151)) b!4926605))

(assert (= (and b!4926606 c!839150) b!4926610))

(assert (= (and b!4926606 (not c!839150)) b!4926613))

(assert (= (and b!4926606 c!839149) b!4926614))

(assert (= (and b!4926606 (not c!839149)) b!4926607))

(assert (= (or b!4926614 b!4926607) bm!343624))

(assert (= (or b!4926614 b!4926607) bm!343629))

(assert (= (or b!4926614 b!4926607) bm!343627))

(assert (= (or b!4926614 b!4926607) bm!343621))

(assert (= (or b!4926614 b!4926607) bm!343626))

(assert (= (or b!4926612 b!4926606) bm!343622))

(assert (= (or b!4926612 b!4926610) bm!343620))

(assert (= (or b!4926612 b!4926610) bm!343625))

(assert (= (or b!4926612 b!4926606) bm!343623))

(assert (= (or b!4926612 b!4926610) bm!343628))

(assert (= (and bm!343628 c!839152) b!4926608))

(assert (= (and bm!343628 (not c!839152)) b!4926615))

(declare-fun m!5944534 () Bool)

(assert (=> bm!343621 m!5944534))

(declare-fun m!5944536 () Bool)

(assert (=> bm!343627 m!5944536))

(declare-fun m!5944538 () Bool)

(assert (=> bm!343624 m!5944538))

(assert (=> b!4926610 m!5944346))

(declare-fun m!5944540 () Bool)

(assert (=> bm!343622 m!5944540))

(declare-fun m!5944542 () Bool)

(assert (=> bm!343625 m!5944542))

(assert (=> b!4926615 m!5944346))

(declare-fun m!5944544 () Bool)

(assert (=> b!4926606 m!5944544))

(declare-fun m!5944546 () Bool)

(assert (=> b!4926606 m!5944546))

(declare-fun m!5944548 () Bool)

(assert (=> b!4926606 m!5944548))

(declare-fun m!5944550 () Bool)

(assert (=> b!4926606 m!5944550))

(declare-fun m!5944552 () Bool)

(assert (=> b!4926606 m!5944552))

(declare-fun m!5944554 () Bool)

(assert (=> b!4926606 m!5944554))

(declare-fun m!5944556 () Bool)

(assert (=> b!4926606 m!5944556))

(assert (=> b!4926606 m!5944552))

(declare-fun m!5944558 () Bool)

(assert (=> b!4926606 m!5944558))

(assert (=> b!4926606 m!5944358))

(declare-fun m!5944560 () Bool)

(assert (=> b!4926606 m!5944560))

(assert (=> b!4926606 m!5944544))

(assert (=> b!4926606 m!5944548))

(declare-fun m!5944562 () Bool)

(assert (=> b!4926606 m!5944562))

(declare-fun m!5944564 () Bool)

(assert (=> b!4926606 m!5944564))

(declare-fun m!5944566 () Bool)

(assert (=> b!4926606 m!5944566))

(declare-fun m!5944568 () Bool)

(assert (=> b!4926606 m!5944568))

(declare-fun m!5944570 () Bool)

(assert (=> b!4926606 m!5944570))

(assert (=> b!4926606 m!5944346))

(declare-fun m!5944572 () Bool)

(assert (=> b!4926606 m!5944572))

(declare-fun m!5944574 () Bool)

(assert (=> b!4926606 m!5944574))

(assert (=> b!4926606 m!5944538))

(declare-fun m!5944576 () Bool)

(assert (=> b!4926606 m!5944576))

(assert (=> b!4926606 m!5944572))

(declare-fun m!5944578 () Bool)

(assert (=> b!4926606 m!5944578))

(declare-fun m!5944580 () Bool)

(assert (=> b!4926606 m!5944580))

(declare-fun m!5944582 () Bool)

(assert (=> bm!343620 m!5944582))

(assert (=> d!1585473 m!5944346))

(declare-fun m!5944584 () Bool)

(assert (=> d!1585473 m!5944584))

(declare-fun m!5944586 () Bool)

(assert (=> d!1585473 m!5944586))

(assert (=> d!1585473 m!5944346))

(declare-fun m!5944588 () Bool)

(assert (=> d!1585473 m!5944588))

(declare-fun m!5944590 () Bool)

(assert (=> d!1585473 m!5944590))

(assert (=> d!1585473 m!5944590))

(declare-fun m!5944592 () Bool)

(assert (=> d!1585473 m!5944592))

(assert (=> d!1585473 m!5944346))

(declare-fun m!5944594 () Bool)

(assert (=> d!1585473 m!5944594))

(assert (=> d!1585473 m!5944346))

(declare-fun m!5944596 () Bool)

(assert (=> d!1585473 m!5944596))

(declare-fun m!5944598 () Bool)

(assert (=> d!1585473 m!5944598))

(declare-fun m!5944600 () Bool)

(assert (=> bm!343626 m!5944600))

(declare-fun m!5944602 () Bool)

(assert (=> bm!343628 m!5944602))

(declare-fun m!5944604 () Bool)

(assert (=> bm!343623 m!5944604))

(assert (=> bm!343629 m!5944554))

(assert (=> start!517328 d!1585473))

(declare-fun b!4926625 () Bool)

(declare-fun e!3078228 () List!56821)

(assert (=> b!4926625 (= e!3078228 lt!2026998)))

(declare-fun b!4926628 () Bool)

(declare-fun e!3078229 () Bool)

(declare-fun lt!2027349 () List!56821)

(assert (=> b!4926628 (= e!3078229 (or (not (= lt!2026998 Nil!56697)) (= lt!2027349 lt!2026994)))))

(declare-fun b!4926627 () Bool)

(declare-fun res!2102728 () Bool)

(assert (=> b!4926627 (=> (not res!2102728) (not e!3078229))))

(assert (=> b!4926627 (= res!2102728 (= (size!37489 lt!2027349) (+ (size!37489 lt!2026994) (size!37489 lt!2026998))))))

(declare-fun d!1585475 () Bool)

(assert (=> d!1585475 e!3078229))

(declare-fun res!2102729 () Bool)

(assert (=> d!1585475 (=> (not res!2102729) (not e!3078229))))

(declare-fun content!10073 (List!56821) (InoxSet C!26964))

(assert (=> d!1585475 (= res!2102729 (= (content!10073 lt!2027349) ((_ map or) (content!10073 lt!2026994) (content!10073 lt!2026998))))))

(assert (=> d!1585475 (= lt!2027349 e!3078228)))

(declare-fun c!839156 () Bool)

(get-info :version)

(assert (=> d!1585475 (= c!839156 ((_ is Nil!56697) lt!2026994))))

(assert (=> d!1585475 (= (++!12330 lt!2026994 lt!2026998) lt!2027349)))

(declare-fun b!4926626 () Bool)

(assert (=> b!4926626 (= e!3078228 (Cons!56697 (h!63145 lt!2026994) (++!12330 (t!367283 lt!2026994) lt!2026998)))))

(assert (= (and d!1585475 c!839156) b!4926625))

(assert (= (and d!1585475 (not c!839156)) b!4926626))

(assert (= (and d!1585475 res!2102729) b!4926627))

(assert (= (and b!4926627 res!2102728) b!4926628))

(declare-fun m!5944606 () Bool)

(assert (=> b!4926627 m!5944606))

(assert (=> b!4926627 m!5944334))

(declare-fun m!5944608 () Bool)

(assert (=> b!4926627 m!5944608))

(declare-fun m!5944610 () Bool)

(assert (=> d!1585475 m!5944610))

(declare-fun m!5944612 () Bool)

(assert (=> d!1585475 m!5944612))

(declare-fun m!5944614 () Bool)

(assert (=> d!1585475 m!5944614))

(declare-fun m!5944616 () Bool)

(assert (=> b!4926626 m!5944616))

(assert (=> start!517328 d!1585475))

(declare-fun d!1585477 () Bool)

(declare-fun list!17961 (Conc!14876) List!56821)

(assert (=> d!1585477 (= (list!17959 (_1!33900 lt!2026997)) (list!17961 (c!839087 (_1!33900 lt!2026997))))))

(declare-fun bs!1179767 () Bool)

(assert (= bs!1179767 d!1585477))

(declare-fun m!5944618 () Bool)

(assert (=> bs!1179767 m!5944618))

(assert (=> start!517328 d!1585477))

(declare-fun b!4926629 () Bool)

(declare-fun e!3078230 () List!56821)

(assert (=> b!4926629 (= e!3078230 (_2!33899 lt!2026999))))

(declare-fun b!4926632 () Bool)

(declare-fun e!3078231 () Bool)

(declare-fun lt!2027350 () List!56821)

(assert (=> b!4926632 (= e!3078231 (or (not (= (_2!33899 lt!2026999) Nil!56697)) (= lt!2027350 (_1!33899 lt!2026999))))))

(declare-fun b!4926631 () Bool)

(declare-fun res!2102730 () Bool)

(assert (=> b!4926631 (=> (not res!2102730) (not e!3078231))))

(assert (=> b!4926631 (= res!2102730 (= (size!37489 lt!2027350) (+ (size!37489 (_1!33899 lt!2026999)) (size!37489 (_2!33899 lt!2026999)))))))

(declare-fun d!1585479 () Bool)

(assert (=> d!1585479 e!3078231))

(declare-fun res!2102731 () Bool)

(assert (=> d!1585479 (=> (not res!2102731) (not e!3078231))))

(assert (=> d!1585479 (= res!2102731 (= (content!10073 lt!2027350) ((_ map or) (content!10073 (_1!33899 lt!2026999)) (content!10073 (_2!33899 lt!2026999)))))))

(assert (=> d!1585479 (= lt!2027350 e!3078230)))

(declare-fun c!839157 () Bool)

(assert (=> d!1585479 (= c!839157 ((_ is Nil!56697) (_1!33899 lt!2026999)))))

(assert (=> d!1585479 (= (++!12330 (_1!33899 lt!2026999) (_2!33899 lt!2026999)) lt!2027350)))

(declare-fun b!4926630 () Bool)

(assert (=> b!4926630 (= e!3078230 (Cons!56697 (h!63145 (_1!33899 lt!2026999)) (++!12330 (t!367283 (_1!33899 lt!2026999)) (_2!33899 lt!2026999))))))

(assert (= (and d!1585479 c!839157) b!4926629))

(assert (= (and d!1585479 (not c!839157)) b!4926630))

(assert (= (and d!1585479 res!2102731) b!4926631))

(assert (= (and b!4926631 res!2102730) b!4926632))

(declare-fun m!5944620 () Bool)

(assert (=> b!4926631 m!5944620))

(assert (=> b!4926631 m!5944336))

(declare-fun m!5944622 () Bool)

(assert (=> b!4926631 m!5944622))

(declare-fun m!5944624 () Bool)

(assert (=> d!1585479 m!5944624))

(declare-fun m!5944626 () Bool)

(assert (=> d!1585479 m!5944626))

(declare-fun m!5944628 () Bool)

(assert (=> d!1585479 m!5944628))

(declare-fun m!5944630 () Bool)

(assert (=> b!4926630 m!5944630))

(assert (=> start!517328 d!1585479))

(declare-fun d!1585481 () Bool)

(declare-fun lt!2027353 () Int)

(assert (=> d!1585481 (= lt!2027353 (size!37489 (list!17959 input!5492)))))

(declare-fun size!37492 (Conc!14876) Int)

(assert (=> d!1585481 (= lt!2027353 (size!37492 (c!839087 input!5492)))))

(assert (=> d!1585481 (= (size!37490 input!5492) lt!2027353)))

(declare-fun bs!1179768 () Bool)

(assert (= bs!1179768 d!1585481))

(assert (=> bs!1179768 m!5944346))

(assert (=> bs!1179768 m!5944346))

(declare-fun m!5944632 () Bool)

(assert (=> bs!1179768 m!5944632))

(declare-fun m!5944634 () Bool)

(assert (=> bs!1179768 m!5944634))

(assert (=> start!517328 d!1585481))

(declare-fun d!1585483 () Bool)

(declare-fun e!3078234 () Bool)

(assert (=> d!1585483 e!3078234))

(declare-fun res!2102736 () Bool)

(assert (=> d!1585483 (=> (not res!2102736) (not e!3078234))))

(declare-fun lt!2027359 () tuple2!61194)

(declare-fun isBalanced!4089 (Conc!14876) Bool)

(assert (=> d!1585483 (= res!2102736 (isBalanced!4089 (c!839087 (_1!33900 lt!2027359))))))

(declare-datatypes ((tuple2!61198 0))(
  ( (tuple2!61199 (_1!33902 Conc!14876) (_2!33902 Conc!14876)) )
))
(declare-fun lt!2027358 () tuple2!61198)

(assert (=> d!1585483 (= lt!2027359 (tuple2!61195 (BalanceConc!29183 (_1!33902 lt!2027358)) (BalanceConc!29183 (_2!33902 lt!2027358))))))

(declare-fun splitAt!279 (Conc!14876 Int) tuple2!61198)

(assert (=> d!1585483 (= lt!2027358 (splitAt!279 (c!839087 input!5492) (findLongestMatchInnerZipperFast!89 z!3559 Nil!56697 0 lt!2026995 input!5492 lt!2026996)))))

(assert (=> d!1585483 (isBalanced!4089 (c!839087 input!5492))))

(assert (=> d!1585483 (= (splitAt!277 input!5492 (findLongestMatchInnerZipperFast!89 z!3559 Nil!56697 0 lt!2026995 input!5492 lt!2026996)) lt!2027359)))

(declare-fun b!4926637 () Bool)

(declare-fun res!2102737 () Bool)

(assert (=> b!4926637 (=> (not res!2102737) (not e!3078234))))

(assert (=> b!4926637 (= res!2102737 (isBalanced!4089 (c!839087 (_2!33900 lt!2027359))))))

(declare-fun b!4926638 () Bool)

(declare-fun splitAtIndex!105 (List!56821 Int) tuple2!61192)

(assert (=> b!4926638 (= e!3078234 (= (tuple2!61193 (list!17959 (_1!33900 lt!2027359)) (list!17959 (_2!33900 lt!2027359))) (splitAtIndex!105 (list!17959 input!5492) (findLongestMatchInnerZipperFast!89 z!3559 Nil!56697 0 lt!2026995 input!5492 lt!2026996))))))

(assert (= (and d!1585483 res!2102736) b!4926637))

(assert (= (and b!4926637 res!2102737) b!4926638))

(declare-fun m!5944636 () Bool)

(assert (=> d!1585483 m!5944636))

(assert (=> d!1585483 m!5944352))

(declare-fun m!5944638 () Bool)

(assert (=> d!1585483 m!5944638))

(declare-fun m!5944640 () Bool)

(assert (=> d!1585483 m!5944640))

(declare-fun m!5944642 () Bool)

(assert (=> b!4926637 m!5944642))

(declare-fun m!5944644 () Bool)

(assert (=> b!4926638 m!5944644))

(declare-fun m!5944646 () Bool)

(assert (=> b!4926638 m!5944646))

(assert (=> b!4926638 m!5944346))

(assert (=> b!4926638 m!5944346))

(assert (=> b!4926638 m!5944352))

(declare-fun m!5944648 () Bool)

(assert (=> b!4926638 m!5944648))

(assert (=> start!517328 d!1585483))

(declare-fun d!1585485 () Bool)

(assert (=> d!1585485 (= (list!17959 (_2!33900 lt!2026997)) (list!17961 (c!839087 (_2!33900 lt!2026997))))))

(declare-fun bs!1179769 () Bool)

(assert (= bs!1179769 d!1585485))

(declare-fun m!5944650 () Bool)

(assert (=> bs!1179769 m!5944650))

(assert (=> start!517328 d!1585485))

(declare-fun b!4926688 () Bool)

(declare-fun e!3078263 () tuple2!61192)

(assert (=> b!4926688 (= e!3078263 (tuple2!61193 Nil!56697 lt!2026995))))

(declare-fun bm!343646 () Bool)

(declare-fun call!343655 () Unit!147242)

(assert (=> bm!343646 (= call!343655 (lemmaIsPrefixSameLengthThenSameList!1123 lt!2026995 Nil!56697 lt!2026995))))

(declare-fun bm!343647 () Bool)

(declare-fun call!343652 () List!56821)

(assert (=> bm!343647 (= call!343652 (tail!9671 lt!2026995))))

(declare-fun b!4926689 () Bool)

(declare-fun c!839173 () Bool)

(declare-fun call!343653 () Bool)

(assert (=> b!4926689 (= c!839173 call!343653)))

(declare-fun lt!2027431 () Unit!147242)

(declare-fun lt!2027434 () Unit!147242)

(assert (=> b!4926689 (= lt!2027431 lt!2027434)))

(declare-fun lt!2027437 () C!26964)

(declare-fun lt!2027436 () List!56821)

(assert (=> b!4926689 (= (++!12330 (++!12330 Nil!56697 (Cons!56697 lt!2027437 Nil!56697)) lt!2027436) lt!2026995)))

(assert (=> b!4926689 (= lt!2027434 (lemmaMoveElementToOtherListKeepsConcatEq!1395 Nil!56697 lt!2027437 lt!2027436 lt!2026995))))

(assert (=> b!4926689 (= lt!2027436 (tail!9671 lt!2026995))))

(assert (=> b!4926689 (= lt!2027437 (head!10524 lt!2026995))))

(declare-fun lt!2027432 () Unit!147242)

(declare-fun lt!2027430 () Unit!147242)

(assert (=> b!4926689 (= lt!2027432 lt!2027430)))

(assert (=> b!4926689 (isPrefix!4965 (++!12330 Nil!56697 (Cons!56697 (head!10524 (getSuffix!2953 lt!2026995 Nil!56697)) Nil!56697)) lt!2026995)))

(assert (=> b!4926689 (= lt!2027430 (lemmaAddHeadSuffixToPrefixStillPrefix!777 Nil!56697 lt!2026995))))

(declare-fun lt!2027417 () List!56821)

(assert (=> b!4926689 (= lt!2027417 (++!12330 Nil!56697 (Cons!56697 (head!10524 lt!2026995) Nil!56697)))))

(declare-fun lt!2027414 () Unit!147242)

(declare-fun e!3078265 () Unit!147242)

(assert (=> b!4926689 (= lt!2027414 e!3078265)))

(declare-fun c!839171 () Bool)

(assert (=> b!4926689 (= c!839171 (= (size!37489 Nil!56697) (size!37489 lt!2026995)))))

(declare-fun lt!2027416 () Unit!147242)

(declare-fun lt!2027419 () Unit!147242)

(assert (=> b!4926689 (= lt!2027416 lt!2027419)))

(assert (=> b!4926689 (<= (size!37489 Nil!56697) (size!37489 lt!2026995))))

(assert (=> b!4926689 (= lt!2027419 (lemmaIsPrefixThenSmallerEqSize!689 Nil!56697 lt!2026995))))

(declare-fun e!3078267 () tuple2!61192)

(declare-fun e!3078268 () tuple2!61192)

(assert (=> b!4926689 (= e!3078267 e!3078268)))

(declare-fun b!4926690 () Bool)

(declare-fun e!3078266 () tuple2!61192)

(assert (=> b!4926690 (= e!3078266 (tuple2!61193 Nil!56697 lt!2026995))))

(declare-fun bm!343648 () Bool)

(declare-fun call!343657 () Bool)

(assert (=> bm!343648 (= call!343657 (isPrefix!4965 lt!2026995 lt!2026995))))

(declare-fun b!4926691 () Bool)

(declare-fun e!3078264 () tuple2!61192)

(declare-fun lt!2027433 () tuple2!61192)

(assert (=> b!4926691 (= e!3078264 lt!2027433)))

(declare-fun d!1585487 () Bool)

(declare-fun e!3078269 () Bool)

(assert (=> d!1585487 e!3078269))

(declare-fun res!2102743 () Bool)

(assert (=> d!1585487 (=> (not res!2102743) (not e!3078269))))

(declare-fun lt!2027415 () tuple2!61192)

(assert (=> d!1585487 (= res!2102743 (= (++!12330 (_1!33899 lt!2027415) (_2!33899 lt!2027415)) lt!2026995))))

(assert (=> d!1585487 (= lt!2027415 e!3078266)))

(declare-fun c!839172 () Bool)

(assert (=> d!1585487 (= c!839172 (lostCauseZipper!695 z!3559))))

(declare-fun lt!2027418 () Unit!147242)

(declare-fun Unit!147250 () Unit!147242)

(assert (=> d!1585487 (= lt!2027418 Unit!147250)))

(assert (=> d!1585487 (= (getSuffix!2953 lt!2026995 Nil!56697) lt!2026995)))

(declare-fun lt!2027425 () Unit!147242)

(declare-fun lt!2027429 () Unit!147242)

(assert (=> d!1585487 (= lt!2027425 lt!2027429)))

(declare-fun lt!2027435 () List!56821)

(assert (=> d!1585487 (= lt!2026995 lt!2027435)))

(assert (=> d!1585487 (= lt!2027429 (lemmaSamePrefixThenSameSuffix!2369 Nil!56697 lt!2026995 Nil!56697 lt!2027435 lt!2026995))))

(assert (=> d!1585487 (= lt!2027435 (getSuffix!2953 lt!2026995 Nil!56697))))

(declare-fun lt!2027426 () Unit!147242)

(declare-fun lt!2027424 () Unit!147242)

(assert (=> d!1585487 (= lt!2027426 lt!2027424)))

(assert (=> d!1585487 (isPrefix!4965 Nil!56697 (++!12330 Nil!56697 lt!2026995))))

(assert (=> d!1585487 (= lt!2027424 (lemmaConcatTwoListThenFirstIsPrefix!3189 Nil!56697 lt!2026995))))

(assert (=> d!1585487 (= (++!12330 Nil!56697 lt!2026995) lt!2026995)))

(assert (=> d!1585487 (= (findLongestMatchInnerZipper!62 z!3559 Nil!56697 0 lt!2026995 lt!2026995 lt!2026996) lt!2027415)))

(declare-fun b!4926692 () Bool)

(declare-fun Unit!147251 () Unit!147242)

(assert (=> b!4926692 (= e!3078265 Unit!147251)))

(declare-fun b!4926693 () Bool)

(assert (=> b!4926693 (= e!3078268 e!3078264)))

(declare-fun call!343658 () tuple2!61192)

(assert (=> b!4926693 (= lt!2027433 call!343658)))

(declare-fun c!839170 () Bool)

(declare-fun isEmpty!30579 (List!56821) Bool)

(assert (=> b!4926693 (= c!839170 (isEmpty!30579 (_1!33899 lt!2027433)))))

(declare-fun bm!343649 () Bool)

(declare-fun call!343654 () C!26964)

(assert (=> bm!343649 (= call!343654 (head!10524 lt!2026995))))

(declare-fun bm!343650 () Bool)

(assert (=> bm!343650 (= call!343653 (nullableZipper!814 z!3559))))

(declare-fun b!4926694 () Bool)

(declare-fun e!3078270 () Bool)

(assert (=> b!4926694 (= e!3078270 (>= (size!37489 (_1!33899 lt!2027415)) (size!37489 Nil!56697)))))

(declare-fun b!4926695 () Bool)

(declare-fun Unit!147252 () Unit!147242)

(assert (=> b!4926695 (= e!3078265 Unit!147252)))

(declare-fun lt!2027412 () Unit!147242)

(declare-fun call!343656 () Unit!147242)

(assert (=> b!4926695 (= lt!2027412 call!343656)))

(assert (=> b!4926695 call!343657))

(declare-fun lt!2027428 () Unit!147242)

(assert (=> b!4926695 (= lt!2027428 lt!2027412)))

(declare-fun lt!2027413 () Unit!147242)

(assert (=> b!4926695 (= lt!2027413 call!343655)))

(assert (=> b!4926695 (= lt!2026995 Nil!56697)))

(declare-fun lt!2027427 () Unit!147242)

(assert (=> b!4926695 (= lt!2027427 lt!2027413)))

(assert (=> b!4926695 false))

(declare-fun b!4926696 () Bool)

(declare-fun c!839175 () Bool)

(assert (=> b!4926696 (= c!839175 call!343653)))

(declare-fun lt!2027420 () Unit!147242)

(declare-fun lt!2027423 () Unit!147242)

(assert (=> b!4926696 (= lt!2027420 lt!2027423)))

(assert (=> b!4926696 (= lt!2026995 Nil!56697)))

(assert (=> b!4926696 (= lt!2027423 call!343655)))

(declare-fun lt!2027421 () Unit!147242)

(declare-fun lt!2027422 () Unit!147242)

(assert (=> b!4926696 (= lt!2027421 lt!2027422)))

(assert (=> b!4926696 call!343657))

(assert (=> b!4926696 (= lt!2027422 call!343656)))

(assert (=> b!4926696 (= e!3078267 e!3078263)))

(declare-fun b!4926697 () Bool)

(assert (=> b!4926697 (= e!3078266 e!3078267)))

(declare-fun c!839174 () Bool)

(assert (=> b!4926697 (= c!839174 (= 0 lt!2026996))))

(declare-fun call!343651 () (InoxSet Context!6038))

(declare-fun bm!343651 () Bool)

(assert (=> bm!343651 (= call!343658 (findLongestMatchInnerZipper!62 call!343651 lt!2027417 (+ 0 1) call!343652 lt!2026995 lt!2026996))))

(declare-fun bm!343652 () Bool)

(assert (=> bm!343652 (= call!343656 (lemmaIsPrefixRefl!3361 lt!2026995 lt!2026995))))

(declare-fun b!4926698 () Bool)

(assert (=> b!4926698 (= e!3078268 call!343658)))

(declare-fun b!4926699 () Bool)

(assert (=> b!4926699 (= e!3078263 (tuple2!61193 Nil!56697 Nil!56697))))

(declare-fun b!4926700 () Bool)

(assert (=> b!4926700 (= e!3078264 (tuple2!61193 Nil!56697 lt!2026995))))

(declare-fun b!4926701 () Bool)

(assert (=> b!4926701 (= e!3078269 e!3078270)))

(declare-fun res!2102742 () Bool)

(assert (=> b!4926701 (=> res!2102742 e!3078270)))

(assert (=> b!4926701 (= res!2102742 (isEmpty!30579 (_1!33899 lt!2027415)))))

(declare-fun bm!343653 () Bool)

(assert (=> bm!343653 (= call!343651 (derivationStepZipper!592 z!3559 call!343654))))

(assert (= (and d!1585487 c!839172) b!4926690))

(assert (= (and d!1585487 (not c!839172)) b!4926697))

(assert (= (and b!4926697 c!839174) b!4926696))

(assert (= (and b!4926697 (not c!839174)) b!4926689))

(assert (= (and b!4926696 c!839175) b!4926699))

(assert (= (and b!4926696 (not c!839175)) b!4926688))

(assert (= (and b!4926689 c!839171) b!4926695))

(assert (= (and b!4926689 (not c!839171)) b!4926692))

(assert (= (and b!4926689 c!839173) b!4926693))

(assert (= (and b!4926689 (not c!839173)) b!4926698))

(assert (= (and b!4926693 c!839170) b!4926700))

(assert (= (and b!4926693 (not c!839170)) b!4926691))

(assert (= (or b!4926693 b!4926698) bm!343647))

(assert (= (or b!4926693 b!4926698) bm!343649))

(assert (= (or b!4926693 b!4926698) bm!343653))

(assert (= (or b!4926693 b!4926698) bm!343651))

(assert (= (or b!4926696 b!4926695) bm!343648))

(assert (= (or b!4926696 b!4926695) bm!343652))

(assert (= (or b!4926696 b!4926695) bm!343646))

(assert (= (or b!4926696 b!4926689) bm!343650))

(assert (= (and d!1585487 res!2102743) b!4926701))

(assert (= (and b!4926701 (not res!2102742)) b!4926694))

(declare-fun m!5944662 () Bool)

(assert (=> b!4926689 m!5944662))

(declare-fun m!5944664 () Bool)

(assert (=> b!4926689 m!5944664))

(declare-fun m!5944666 () Bool)

(assert (=> b!4926689 m!5944666))

(assert (=> b!4926689 m!5944576))

(declare-fun m!5944668 () Bool)

(assert (=> b!4926689 m!5944668))

(declare-fun m!5944670 () Bool)

(assert (=> b!4926689 m!5944670))

(declare-fun m!5944672 () Bool)

(assert (=> b!4926689 m!5944672))

(assert (=> b!4926689 m!5944668))

(declare-fun m!5944674 () Bool)

(assert (=> b!4926689 m!5944674))

(assert (=> b!4926689 m!5944662))

(declare-fun m!5944676 () Bool)

(assert (=> b!4926689 m!5944676))

(declare-fun m!5944678 () Bool)

(assert (=> b!4926689 m!5944678))

(declare-fun m!5944680 () Bool)

(assert (=> b!4926689 m!5944680))

(assert (=> b!4926689 m!5944678))

(declare-fun m!5944682 () Bool)

(assert (=> b!4926689 m!5944682))

(assert (=> b!4926689 m!5944554))

(declare-fun m!5944684 () Bool)

(assert (=> b!4926689 m!5944684))

(declare-fun m!5944686 () Bool)

(assert (=> bm!343651 m!5944686))

(declare-fun m!5944688 () Bool)

(assert (=> bm!343646 m!5944688))

(declare-fun m!5944690 () Bool)

(assert (=> bm!343652 m!5944690))

(assert (=> d!1585487 m!5944590))

(assert (=> d!1585487 m!5944590))

(assert (=> d!1585487 m!5944592))

(declare-fun m!5944692 () Bool)

(assert (=> d!1585487 m!5944692))

(assert (=> d!1585487 m!5944678))

(declare-fun m!5944694 () Bool)

(assert (=> d!1585487 m!5944694))

(assert (=> d!1585487 m!5944598))

(assert (=> d!1585487 m!5944586))

(declare-fun m!5944696 () Bool)

(assert (=> bm!343648 m!5944696))

(assert (=> bm!343650 m!5944540))

(declare-fun m!5944698 () Bool)

(assert (=> b!4926694 m!5944698))

(assert (=> b!4926694 m!5944576))

(declare-fun m!5944700 () Bool)

(assert (=> b!4926701 m!5944700))

(assert (=> bm!343649 m!5944672))

(declare-fun m!5944702 () Bool)

(assert (=> b!4926693 m!5944702))

(assert (=> bm!343647 m!5944554))

(declare-fun m!5944704 () Bool)

(assert (=> bm!343653 m!5944704))

(assert (=> start!517328 d!1585487))

(declare-fun d!1585489 () Bool)

(assert (=> d!1585489 (= (list!17959 input!5492) (list!17961 (c!839087 input!5492)))))

(declare-fun bs!1179771 () Bool)

(assert (= bs!1179771 d!1585489))

(declare-fun m!5944706 () Bool)

(assert (=> bs!1179771 m!5944706))

(assert (=> start!517328 d!1585489))

(declare-fun d!1585491 () Bool)

(assert (=> d!1585491 (= (inv!73494 input!5492) (isBalanced!4089 (c!839087 input!5492)))))

(declare-fun bs!1179772 () Bool)

(assert (= bs!1179772 d!1585491))

(assert (=> bs!1179772 m!5944640))

(assert (=> start!517328 d!1585491))

(declare-fun d!1585493 () Bool)

(declare-fun lt!2027440 () Int)

(assert (=> d!1585493 (>= lt!2027440 0)))

(declare-fun e!3078273 () Int)

(assert (=> d!1585493 (= lt!2027440 e!3078273)))

(declare-fun c!839178 () Bool)

(assert (=> d!1585493 (= c!839178 ((_ is Nil!56697) lt!2026994))))

(assert (=> d!1585493 (= (size!37489 lt!2026994) lt!2027440)))

(declare-fun b!4926706 () Bool)

(assert (=> b!4926706 (= e!3078273 0)))

(declare-fun b!4926707 () Bool)

(assert (=> b!4926707 (= e!3078273 (+ 1 (size!37489 (t!367283 lt!2026994))))))

(assert (= (and d!1585493 c!839178) b!4926706))

(assert (= (and d!1585493 (not c!839178)) b!4926707))

(declare-fun m!5944708 () Bool)

(assert (=> b!4926707 m!5944708))

(assert (=> b!4926462 d!1585493))

(declare-fun d!1585495 () Bool)

(declare-fun lt!2027441 () Int)

(assert (=> d!1585495 (>= lt!2027441 0)))

(declare-fun e!3078274 () Int)

(assert (=> d!1585495 (= lt!2027441 e!3078274)))

(declare-fun c!839179 () Bool)

(assert (=> d!1585495 (= c!839179 ((_ is Nil!56697) (_1!33899 lt!2026999)))))

(assert (=> d!1585495 (= (size!37489 (_1!33899 lt!2026999)) lt!2027441)))

(declare-fun b!4926708 () Bool)

(assert (=> b!4926708 (= e!3078274 0)))

(declare-fun b!4926709 () Bool)

(assert (=> b!4926709 (= e!3078274 (+ 1 (size!37489 (t!367283 (_1!33899 lt!2026999)))))))

(assert (= (and d!1585495 c!839179) b!4926708))

(assert (= (and d!1585495 (not c!839179)) b!4926709))

(declare-fun m!5944710 () Bool)

(assert (=> b!4926709 m!5944710))

(assert (=> b!4926462 d!1585495))

(declare-fun d!1585497 () Bool)

(declare-fun c!839182 () Bool)

(assert (=> d!1585497 (= c!839182 ((_ is Node!14876) (c!839087 input!5492)))))

(declare-fun e!3078279 () Bool)

(assert (=> d!1585497 (= (inv!73492 (c!839087 input!5492)) e!3078279)))

(declare-fun b!4926716 () Bool)

(declare-fun inv!73498 (Conc!14876) Bool)

(assert (=> b!4926716 (= e!3078279 (inv!73498 (c!839087 input!5492)))))

(declare-fun b!4926717 () Bool)

(declare-fun e!3078280 () Bool)

(assert (=> b!4926717 (= e!3078279 e!3078280)))

(declare-fun res!2102746 () Bool)

(assert (=> b!4926717 (= res!2102746 (not ((_ is Leaf!24747) (c!839087 input!5492))))))

(assert (=> b!4926717 (=> res!2102746 e!3078280)))

(declare-fun b!4926718 () Bool)

(declare-fun inv!73499 (Conc!14876) Bool)

(assert (=> b!4926718 (= e!3078280 (inv!73499 (c!839087 input!5492)))))

(assert (= (and d!1585497 c!839182) b!4926716))

(assert (= (and d!1585497 (not c!839182)) b!4926717))

(assert (= (and b!4926717 (not res!2102746)) b!4926718))

(declare-fun m!5944712 () Bool)

(assert (=> b!4926716 m!5944712))

(declare-fun m!5944714 () Bool)

(assert (=> b!4926718 m!5944714))

(assert (=> b!4926461 d!1585497))

(declare-fun condSetEmpty!27556 () Bool)

(assert (=> setNonEmpty!27550 (= condSetEmpty!27556 (= setRest!27550 ((as const (Array Context!6038 Bool)) false)))))

(declare-fun setRes!27556 () Bool)

(assert (=> setNonEmpty!27550 (= tp!1383593 setRes!27556)))

(declare-fun setIsEmpty!27556 () Bool)

(assert (=> setIsEmpty!27556 setRes!27556))

(declare-fun setNonEmpty!27556 () Bool)

(declare-fun setElem!27556 () Context!6038)

(declare-fun e!3078283 () Bool)

(declare-fun tp!1383619 () Bool)

(assert (=> setNonEmpty!27556 (= setRes!27556 (and tp!1383619 (inv!73493 setElem!27556) e!3078283))))

(declare-fun setRest!27556 () (InoxSet Context!6038))

(assert (=> setNonEmpty!27556 (= setRest!27550 ((_ map or) (store ((as const (Array Context!6038 Bool)) false) setElem!27556 true) setRest!27556))))

(declare-fun b!4926723 () Bool)

(declare-fun tp!1383620 () Bool)

(assert (=> b!4926723 (= e!3078283 tp!1383620)))

(assert (= (and setNonEmpty!27550 condSetEmpty!27556) setIsEmpty!27556))

(assert (= (and setNonEmpty!27550 (not condSetEmpty!27556)) setNonEmpty!27556))

(assert (= setNonEmpty!27556 b!4926723))

(declare-fun m!5944716 () Bool)

(assert (=> setNonEmpty!27556 m!5944716))

(declare-fun b!4926728 () Bool)

(declare-fun e!3078286 () Bool)

(declare-fun tp!1383625 () Bool)

(declare-fun tp!1383626 () Bool)

(assert (=> b!4926728 (= e!3078286 (and tp!1383625 tp!1383626))))

(assert (=> b!4926463 (= tp!1383592 e!3078286)))

(assert (= (and b!4926463 ((_ is Cons!56698) (exprs!3519 setElem!27550))) b!4926728))

(declare-fun b!4926737 () Bool)

(declare-fun tp!1383635 () Bool)

(declare-fun e!3078292 () Bool)

(declare-fun tp!1383634 () Bool)

(assert (=> b!4926737 (= e!3078292 (and (inv!73492 (left!41344 (c!839087 input!5492))) tp!1383634 (inv!73492 (right!41674 (c!839087 input!5492))) tp!1383635))))

(declare-fun b!4926739 () Bool)

(declare-fun e!3078291 () Bool)

(declare-fun tp!1383633 () Bool)

(assert (=> b!4926739 (= e!3078291 tp!1383633)))

(declare-fun b!4926738 () Bool)

(declare-fun inv!73500 (IArray!29813) Bool)

(assert (=> b!4926738 (= e!3078292 (and (inv!73500 (xs!18198 (c!839087 input!5492))) e!3078291))))

(assert (=> b!4926461 (= tp!1383591 (and (inv!73492 (c!839087 input!5492)) e!3078292))))

(assert (= (and b!4926461 ((_ is Node!14876) (c!839087 input!5492))) b!4926737))

(assert (= b!4926738 b!4926739))

(assert (= (and b!4926461 ((_ is Leaf!24747) (c!839087 input!5492))) b!4926738))

(declare-fun m!5944718 () Bool)

(assert (=> b!4926737 m!5944718))

(declare-fun m!5944720 () Bool)

(assert (=> b!4926737 m!5944720))

(declare-fun m!5944722 () Bool)

(assert (=> b!4926738 m!5944722))

(assert (=> b!4926461 m!5944332))

(check-sat (not bm!343649) (not d!1585481) (not d!1585485) (not d!1585473) (not b!4926615) (not b!4926689) (not setNonEmpty!27556) (not b!4926694) (not d!1585483) (not b!4926606) (not bm!343624) (not d!1585475) (not bm!343646) (not bm!343622) (not d!1585491) (not bm!343626) (not bm!343629) (not b!4926631) (not b!4926718) (not d!1585489) (not b!4926738) (not b!4926739) (not b!4926610) (not bm!343652) (not b!4926716) (not bm!343628) (not b!4926709) (not b!4926630) (not d!1585479) (not b!4926723) (not b!4926701) (not bm!343648) (not d!1585477) (not d!1585443) (not b!4926637) (not b!4926707) (not b!4926728) (not bm!343621) (not b!4926627) (not b!4926626) (not bm!343653) (not bm!343650) (not b!4926638) (not bm!343623) (not bm!343620) (not b!4926461) (not bm!343651) (not bm!343627) (not bm!343647) (not d!1585487) (not bm!343625) (not b!4926737) (not b!4926693))
(check-sat)
(get-model)

(declare-fun d!1585499 () Bool)

(assert (=> d!1585499 (= lt!2026995 Nil!56697)))

(declare-fun lt!2027444 () Unit!147242)

(declare-fun choose!36084 (List!56821 List!56821 List!56821) Unit!147242)

(assert (=> d!1585499 (= lt!2027444 (choose!36084 lt!2026995 Nil!56697 lt!2026995))))

(assert (=> d!1585499 (isPrefix!4965 lt!2026995 lt!2026995)))

(assert (=> d!1585499 (= (lemmaIsPrefixSameLengthThenSameList!1123 lt!2026995 Nil!56697 lt!2026995) lt!2027444)))

(declare-fun bs!1179773 () Bool)

(assert (= bs!1179773 d!1585499))

(declare-fun m!5944724 () Bool)

(assert (=> bs!1179773 m!5944724))

(assert (=> bs!1179773 m!5944696))

(assert (=> bm!343646 d!1585499))

(declare-fun d!1585501 () Bool)

(declare-fun lt!2027447 () List!56821)

(assert (=> d!1585501 (= (++!12330 Nil!56697 lt!2027447) lt!2027335)))

(declare-fun e!3078295 () List!56821)

(assert (=> d!1585501 (= lt!2027447 e!3078295)))

(declare-fun c!839185 () Bool)

(assert (=> d!1585501 (= c!839185 ((_ is Cons!56697) Nil!56697))))

(assert (=> d!1585501 (>= (size!37489 lt!2027335) (size!37489 Nil!56697))))

(assert (=> d!1585501 (= (getSuffix!2953 lt!2027335 Nil!56697) lt!2027447)))

(declare-fun b!4926744 () Bool)

(assert (=> b!4926744 (= e!3078295 (getSuffix!2953 (tail!9671 lt!2027335) (t!367283 Nil!56697)))))

(declare-fun b!4926745 () Bool)

(assert (=> b!4926745 (= e!3078295 lt!2027335)))

(assert (= (and d!1585501 c!839185) b!4926744))

(assert (= (and d!1585501 (not c!839185)) b!4926745))

(declare-fun m!5944726 () Bool)

(assert (=> d!1585501 m!5944726))

(declare-fun m!5944728 () Bool)

(assert (=> d!1585501 m!5944728))

(assert (=> d!1585501 m!5944576))

(declare-fun m!5944730 () Bool)

(assert (=> b!4926744 m!5944730))

(assert (=> b!4926744 m!5944730))

(declare-fun m!5944732 () Bool)

(assert (=> b!4926744 m!5944732))

(assert (=> b!4926606 d!1585501))

(declare-fun b!4926746 () Bool)

(declare-fun e!3078296 () List!56821)

(assert (=> b!4926746 (= e!3078296 (Cons!56697 (head!10524 (getSuffix!2953 lt!2027335 Nil!56697)) Nil!56697))))

(declare-fun b!4926749 () Bool)

(declare-fun e!3078297 () Bool)

(declare-fun lt!2027448 () List!56821)

(assert (=> b!4926749 (= e!3078297 (or (not (= (Cons!56697 (head!10524 (getSuffix!2953 lt!2027335 Nil!56697)) Nil!56697) Nil!56697)) (= lt!2027448 Nil!56697)))))

(declare-fun b!4926748 () Bool)

(declare-fun res!2102747 () Bool)

(assert (=> b!4926748 (=> (not res!2102747) (not e!3078297))))

(assert (=> b!4926748 (= res!2102747 (= (size!37489 lt!2027448) (+ (size!37489 Nil!56697) (size!37489 (Cons!56697 (head!10524 (getSuffix!2953 lt!2027335 Nil!56697)) Nil!56697)))))))

(declare-fun d!1585503 () Bool)

(assert (=> d!1585503 e!3078297))

(declare-fun res!2102748 () Bool)

(assert (=> d!1585503 (=> (not res!2102748) (not e!3078297))))

(assert (=> d!1585503 (= res!2102748 (= (content!10073 lt!2027448) ((_ map or) (content!10073 Nil!56697) (content!10073 (Cons!56697 (head!10524 (getSuffix!2953 lt!2027335 Nil!56697)) Nil!56697)))))))

(assert (=> d!1585503 (= lt!2027448 e!3078296)))

(declare-fun c!839186 () Bool)

(assert (=> d!1585503 (= c!839186 ((_ is Nil!56697) Nil!56697))))

(assert (=> d!1585503 (= (++!12330 Nil!56697 (Cons!56697 (head!10524 (getSuffix!2953 lt!2027335 Nil!56697)) Nil!56697)) lt!2027448)))

(declare-fun b!4926747 () Bool)

(assert (=> b!4926747 (= e!3078296 (Cons!56697 (h!63145 Nil!56697) (++!12330 (t!367283 Nil!56697) (Cons!56697 (head!10524 (getSuffix!2953 lt!2027335 Nil!56697)) Nil!56697))))))

(assert (= (and d!1585503 c!839186) b!4926746))

(assert (= (and d!1585503 (not c!839186)) b!4926747))

(assert (= (and d!1585503 res!2102748) b!4926748))

(assert (= (and b!4926748 res!2102747) b!4926749))

(declare-fun m!5944734 () Bool)

(assert (=> b!4926748 m!5944734))

(assert (=> b!4926748 m!5944576))

(declare-fun m!5944736 () Bool)

(assert (=> b!4926748 m!5944736))

(declare-fun m!5944738 () Bool)

(assert (=> d!1585503 m!5944738))

(declare-fun m!5944740 () Bool)

(assert (=> d!1585503 m!5944740))

(declare-fun m!5944742 () Bool)

(assert (=> d!1585503 m!5944742))

(declare-fun m!5944744 () Bool)

(assert (=> b!4926747 m!5944744))

(assert (=> b!4926606 d!1585503))

(declare-fun d!1585505 () Bool)

(declare-fun lt!2027449 () Int)

(assert (=> d!1585505 (>= lt!2027449 0)))

(declare-fun e!3078298 () Int)

(assert (=> d!1585505 (= lt!2027449 e!3078298)))

(declare-fun c!839187 () Bool)

(assert (=> d!1585505 (= c!839187 ((_ is Nil!56697) lt!2027342))))

(assert (=> d!1585505 (= (size!37489 lt!2027342) lt!2027449)))

(declare-fun b!4926750 () Bool)

(assert (=> b!4926750 (= e!3078298 0)))

(declare-fun b!4926751 () Bool)

(assert (=> b!4926751 (= e!3078298 (+ 1 (size!37489 (t!367283 lt!2027342))))))

(assert (= (and d!1585505 c!839187) b!4926750))

(assert (= (and d!1585505 (not c!839187)) b!4926751))

(declare-fun m!5944746 () Bool)

(assert (=> b!4926751 m!5944746))

(assert (=> b!4926606 d!1585505))

(declare-fun d!1585507 () Bool)

(assert (=> d!1585507 (= (++!12330 (++!12330 Nil!56697 (Cons!56697 lt!2027340 Nil!56697)) lt!2027336) lt!2027328)))

(declare-fun lt!2027452 () Unit!147242)

(declare-fun choose!36085 (List!56821 C!26964 List!56821 List!56821) Unit!147242)

(assert (=> d!1585507 (= lt!2027452 (choose!36085 Nil!56697 lt!2027340 lt!2027336 lt!2027328))))

(assert (=> d!1585507 (= (++!12330 Nil!56697 (Cons!56697 lt!2027340 lt!2027336)) lt!2027328)))

(assert (=> d!1585507 (= (lemmaMoveElementToOtherListKeepsConcatEq!1395 Nil!56697 lt!2027340 lt!2027336 lt!2027328) lt!2027452)))

(declare-fun bs!1179774 () Bool)

(assert (= bs!1179774 d!1585507))

(assert (=> bs!1179774 m!5944548))

(assert (=> bs!1179774 m!5944548))

(assert (=> bs!1179774 m!5944562))

(declare-fun m!5944748 () Bool)

(assert (=> bs!1179774 m!5944748))

(declare-fun m!5944750 () Bool)

(assert (=> bs!1179774 m!5944750))

(assert (=> b!4926606 d!1585507))

(declare-fun d!1585509 () Bool)

(assert (=> d!1585509 (= (tail!9671 lt!2026995) (t!367283 lt!2026995))))

(assert (=> b!4926606 d!1585509))

(declare-fun d!1585511 () Bool)

(declare-fun lt!2027455 () C!26964)

(assert (=> d!1585511 (= lt!2027455 (apply!13668 (list!17959 input!5492) 0))))

(declare-fun apply!13671 (Conc!14876 Int) C!26964)

(assert (=> d!1585511 (= lt!2027455 (apply!13671 (c!839087 input!5492) 0))))

(declare-fun e!3078301 () Bool)

(assert (=> d!1585511 e!3078301))

(declare-fun res!2102751 () Bool)

(assert (=> d!1585511 (=> (not res!2102751) (not e!3078301))))

(assert (=> d!1585511 (= res!2102751 (<= 0 0))))

(assert (=> d!1585511 (= (apply!13667 input!5492 0) lt!2027455)))

(declare-fun b!4926754 () Bool)

(assert (=> b!4926754 (= e!3078301 (< 0 (size!37490 input!5492)))))

(assert (= (and d!1585511 res!2102751) b!4926754))

(assert (=> d!1585511 m!5944346))

(assert (=> d!1585511 m!5944346))

(declare-fun m!5944752 () Bool)

(assert (=> d!1585511 m!5944752))

(declare-fun m!5944754 () Bool)

(assert (=> d!1585511 m!5944754))

(assert (=> b!4926754 m!5944358))

(assert (=> b!4926606 d!1585511))

(declare-fun d!1585513 () Bool)

(assert (=> d!1585513 (= (head!10524 (drop!2227 lt!2027331 0)) (h!63145 (drop!2227 lt!2027331 0)))))

(assert (=> b!4926606 d!1585513))

(declare-fun d!1585515 () Bool)

(assert (=> d!1585515 (= (head!10524 (drop!2227 lt!2027331 0)) (apply!13668 lt!2027331 0))))

(declare-fun lt!2027458 () Unit!147242)

(declare-fun choose!36086 (List!56821 Int) Unit!147242)

(assert (=> d!1585515 (= lt!2027458 (choose!36086 lt!2027331 0))))

(declare-fun e!3078304 () Bool)

(assert (=> d!1585515 e!3078304))

(declare-fun res!2102754 () Bool)

(assert (=> d!1585515 (=> (not res!2102754) (not e!3078304))))

(assert (=> d!1585515 (= res!2102754 (>= 0 0))))

(assert (=> d!1585515 (= (lemmaDropApply!1285 lt!2027331 0) lt!2027458)))

(declare-fun b!4926757 () Bool)

(assert (=> b!4926757 (= e!3078304 (< 0 (size!37489 lt!2027331)))))

(assert (= (and d!1585515 res!2102754) b!4926757))

(assert (=> d!1585515 m!5944544))

(assert (=> d!1585515 m!5944544))

(assert (=> d!1585515 m!5944546))

(assert (=> d!1585515 m!5944564))

(declare-fun m!5944756 () Bool)

(assert (=> d!1585515 m!5944756))

(declare-fun m!5944758 () Bool)

(assert (=> b!4926757 m!5944758))

(assert (=> b!4926606 d!1585515))

(declare-fun d!1585517 () Bool)

(assert (=> d!1585517 (isPrefix!4965 (++!12330 Nil!56697 (Cons!56697 (head!10524 (getSuffix!2953 lt!2027335 Nil!56697)) Nil!56697)) lt!2027335)))

(declare-fun lt!2027461 () Unit!147242)

(declare-fun choose!36087 (List!56821 List!56821) Unit!147242)

(assert (=> d!1585517 (= lt!2027461 (choose!36087 Nil!56697 lt!2027335))))

(assert (=> d!1585517 (isPrefix!4965 Nil!56697 lt!2027335)))

(assert (=> d!1585517 (= (lemmaAddHeadSuffixToPrefixStillPrefix!777 Nil!56697 lt!2027335) lt!2027461)))

(declare-fun bs!1179775 () Bool)

(assert (= bs!1179775 d!1585517))

(declare-fun m!5944760 () Bool)

(assert (=> bs!1179775 m!5944760))

(declare-fun m!5944762 () Bool)

(assert (=> bs!1179775 m!5944762))

(assert (=> bs!1179775 m!5944572))

(assert (=> bs!1179775 m!5944552))

(assert (=> bs!1179775 m!5944552))

(assert (=> bs!1179775 m!5944558))

(assert (=> bs!1179775 m!5944572))

(assert (=> bs!1179775 m!5944574))

(assert (=> b!4926606 d!1585517))

(declare-fun d!1585519 () Bool)

(assert (=> d!1585519 (and (= lt!2027311 Nil!56697) (= lt!2027345 lt!2026995))))

(declare-fun lt!2027464 () Unit!147242)

(declare-fun choose!36088 (List!56821 List!56821 List!56821 List!56821) Unit!147242)

(assert (=> d!1585519 (= lt!2027464 (choose!36088 lt!2027311 lt!2027345 Nil!56697 lt!2026995))))

(assert (=> d!1585519 (= (++!12330 lt!2027311 lt!2027345) (++!12330 Nil!56697 lt!2026995))))

(assert (=> d!1585519 (= (lemmaConcatSameAndSameSizesThenSameLists!660 lt!2027311 lt!2027345 Nil!56697 lt!2026995) lt!2027464)))

(declare-fun bs!1179776 () Bool)

(assert (= bs!1179776 d!1585519))

(declare-fun m!5944764 () Bool)

(assert (=> bs!1179776 m!5944764))

(declare-fun m!5944766 () Bool)

(assert (=> bs!1179776 m!5944766))

(assert (=> bs!1179776 m!5944590))

(assert (=> b!4926606 d!1585519))

(declare-fun d!1585521 () Bool)

(declare-fun e!3078305 () Bool)

(assert (=> d!1585521 e!3078305))

(declare-fun res!2102755 () Bool)

(assert (=> d!1585521 (=> (not res!2102755) (not e!3078305))))

(declare-fun lt!2027466 () tuple2!61194)

(assert (=> d!1585521 (= res!2102755 (isBalanced!4089 (c!839087 (_1!33900 lt!2027466))))))

(declare-fun lt!2027465 () tuple2!61198)

(assert (=> d!1585521 (= lt!2027466 (tuple2!61195 (BalanceConc!29183 (_1!33902 lt!2027465)) (BalanceConc!29183 (_2!33902 lt!2027465))))))

(assert (=> d!1585521 (= lt!2027465 (splitAt!279 (c!839087 input!5492) 0))))

(assert (=> d!1585521 (isBalanced!4089 (c!839087 input!5492))))

(assert (=> d!1585521 (= (splitAt!277 input!5492 0) lt!2027466)))

(declare-fun b!4926758 () Bool)

(declare-fun res!2102756 () Bool)

(assert (=> b!4926758 (=> (not res!2102756) (not e!3078305))))

(assert (=> b!4926758 (= res!2102756 (isBalanced!4089 (c!839087 (_2!33900 lt!2027466))))))

(declare-fun b!4926759 () Bool)

(assert (=> b!4926759 (= e!3078305 (= (tuple2!61193 (list!17959 (_1!33900 lt!2027466)) (list!17959 (_2!33900 lt!2027466))) (splitAtIndex!105 (list!17959 input!5492) 0)))))

(assert (= (and d!1585521 res!2102755) b!4926758))

(assert (= (and b!4926758 res!2102756) b!4926759))

(declare-fun m!5944768 () Bool)

(assert (=> d!1585521 m!5944768))

(declare-fun m!5944770 () Bool)

(assert (=> d!1585521 m!5944770))

(assert (=> d!1585521 m!5944640))

(declare-fun m!5944772 () Bool)

(assert (=> b!4926758 m!5944772))

(declare-fun m!5944774 () Bool)

(assert (=> b!4926759 m!5944774))

(declare-fun m!5944776 () Bool)

(assert (=> b!4926759 m!5944776))

(assert (=> b!4926759 m!5944346))

(assert (=> b!4926759 m!5944346))

(declare-fun m!5944778 () Bool)

(assert (=> b!4926759 m!5944778))

(assert (=> b!4926606 d!1585521))

(assert (=> b!4926606 d!1585489))

(declare-fun b!4926778 () Bool)

(declare-fun e!3078320 () List!56821)

(declare-fun e!3078318 () List!56821)

(assert (=> b!4926778 (= e!3078320 e!3078318)))

(declare-fun c!839198 () Bool)

(assert (=> b!4926778 (= c!839198 (<= 0 0))))

(declare-fun b!4926779 () Bool)

(declare-fun e!3078316 () Int)

(assert (=> b!4926779 (= e!3078316 0)))

(declare-fun b!4926780 () Bool)

(assert (=> b!4926780 (= e!3078320 Nil!56697)))

(declare-fun b!4926781 () Bool)

(declare-fun e!3078319 () Bool)

(declare-fun lt!2027469 () List!56821)

(declare-fun e!3078317 () Int)

(assert (=> b!4926781 (= e!3078319 (= (size!37489 lt!2027469) e!3078317))))

(declare-fun c!839199 () Bool)

(assert (=> b!4926781 (= c!839199 (<= 0 0))))

(declare-fun b!4926782 () Bool)

(assert (=> b!4926782 (= e!3078317 e!3078316)))

(declare-fun c!839197 () Bool)

(declare-fun call!343661 () Int)

(assert (=> b!4926782 (= c!839197 (>= 0 call!343661))))

(declare-fun b!4926783 () Bool)

(assert (=> b!4926783 (= e!3078318 lt!2027331)))

(declare-fun b!4926784 () Bool)

(assert (=> b!4926784 (= e!3078317 call!343661)))

(declare-fun d!1585523 () Bool)

(assert (=> d!1585523 e!3078319))

(declare-fun res!2102759 () Bool)

(assert (=> d!1585523 (=> (not res!2102759) (not e!3078319))))

(assert (=> d!1585523 (= res!2102759 (= ((_ map implies) (content!10073 lt!2027469) (content!10073 lt!2027331)) ((as const (InoxSet C!26964)) true)))))

(assert (=> d!1585523 (= lt!2027469 e!3078320)))

(declare-fun c!839196 () Bool)

(assert (=> d!1585523 (= c!839196 ((_ is Nil!56697) lt!2027331))))

(assert (=> d!1585523 (= (drop!2227 lt!2027331 0) lt!2027469)))

(declare-fun bm!343656 () Bool)

(assert (=> bm!343656 (= call!343661 (size!37489 lt!2027331))))

(declare-fun b!4926785 () Bool)

(assert (=> b!4926785 (= e!3078318 (drop!2227 (t!367283 lt!2027331) (- 0 1)))))

(declare-fun b!4926786 () Bool)

(assert (=> b!4926786 (= e!3078316 (- call!343661 0))))

(assert (= (and d!1585523 c!839196) b!4926780))

(assert (= (and d!1585523 (not c!839196)) b!4926778))

(assert (= (and b!4926778 c!839198) b!4926783))

(assert (= (and b!4926778 (not c!839198)) b!4926785))

(assert (= (and d!1585523 res!2102759) b!4926781))

(assert (= (and b!4926781 c!839199) b!4926784))

(assert (= (and b!4926781 (not c!839199)) b!4926782))

(assert (= (and b!4926782 c!839197) b!4926779))

(assert (= (and b!4926782 (not c!839197)) b!4926786))

(assert (= (or b!4926784 b!4926782 b!4926786) bm!343656))

(declare-fun m!5944780 () Bool)

(assert (=> b!4926781 m!5944780))

(declare-fun m!5944782 () Bool)

(assert (=> d!1585523 m!5944782))

(declare-fun m!5944784 () Bool)

(assert (=> d!1585523 m!5944784))

(assert (=> bm!343656 m!5944758))

(declare-fun m!5944786 () Bool)

(assert (=> b!4926785 m!5944786))

(assert (=> b!4926606 d!1585523))

(declare-fun b!4926787 () Bool)

(declare-fun e!3078321 () List!56821)

(assert (=> b!4926787 (= e!3078321 lt!2027336)))

(declare-fun lt!2027470 () List!56821)

(declare-fun b!4926790 () Bool)

(declare-fun e!3078322 () Bool)

(assert (=> b!4926790 (= e!3078322 (or (not (= lt!2027336 Nil!56697)) (= lt!2027470 (++!12330 Nil!56697 (Cons!56697 lt!2027340 Nil!56697)))))))

(declare-fun b!4926789 () Bool)

(declare-fun res!2102760 () Bool)

(assert (=> b!4926789 (=> (not res!2102760) (not e!3078322))))

(assert (=> b!4926789 (= res!2102760 (= (size!37489 lt!2027470) (+ (size!37489 (++!12330 Nil!56697 (Cons!56697 lt!2027340 Nil!56697))) (size!37489 lt!2027336))))))

(declare-fun d!1585525 () Bool)

(assert (=> d!1585525 e!3078322))

(declare-fun res!2102761 () Bool)

(assert (=> d!1585525 (=> (not res!2102761) (not e!3078322))))

(assert (=> d!1585525 (= res!2102761 (= (content!10073 lt!2027470) ((_ map or) (content!10073 (++!12330 Nil!56697 (Cons!56697 lt!2027340 Nil!56697))) (content!10073 lt!2027336))))))

(assert (=> d!1585525 (= lt!2027470 e!3078321)))

(declare-fun c!839200 () Bool)

(assert (=> d!1585525 (= c!839200 ((_ is Nil!56697) (++!12330 Nil!56697 (Cons!56697 lt!2027340 Nil!56697))))))

(assert (=> d!1585525 (= (++!12330 (++!12330 Nil!56697 (Cons!56697 lt!2027340 Nil!56697)) lt!2027336) lt!2027470)))

(declare-fun b!4926788 () Bool)

(assert (=> b!4926788 (= e!3078321 (Cons!56697 (h!63145 (++!12330 Nil!56697 (Cons!56697 lt!2027340 Nil!56697))) (++!12330 (t!367283 (++!12330 Nil!56697 (Cons!56697 lt!2027340 Nil!56697))) lt!2027336)))))

(assert (= (and d!1585525 c!839200) b!4926787))

(assert (= (and d!1585525 (not c!839200)) b!4926788))

(assert (= (and d!1585525 res!2102761) b!4926789))

(assert (= (and b!4926789 res!2102760) b!4926790))

(declare-fun m!5944788 () Bool)

(assert (=> b!4926789 m!5944788))

(assert (=> b!4926789 m!5944548))

(declare-fun m!5944790 () Bool)

(assert (=> b!4926789 m!5944790))

(declare-fun m!5944792 () Bool)

(assert (=> b!4926789 m!5944792))

(declare-fun m!5944794 () Bool)

(assert (=> d!1585525 m!5944794))

(assert (=> d!1585525 m!5944548))

(declare-fun m!5944796 () Bool)

(assert (=> d!1585525 m!5944796))

(declare-fun m!5944798 () Bool)

(assert (=> d!1585525 m!5944798))

(declare-fun m!5944800 () Bool)

(assert (=> b!4926788 m!5944800))

(assert (=> b!4926606 d!1585525))

(declare-fun d!1585527 () Bool)

(declare-fun lt!2027471 () Int)

(assert (=> d!1585527 (>= lt!2027471 0)))

(declare-fun e!3078323 () Int)

(assert (=> d!1585527 (= lt!2027471 e!3078323)))

(declare-fun c!839201 () Bool)

(assert (=> d!1585527 (= c!839201 ((_ is Nil!56697) Nil!56697))))

(assert (=> d!1585527 (= (size!37489 Nil!56697) lt!2027471)))

(declare-fun b!4926791 () Bool)

(assert (=> b!4926791 (= e!3078323 0)))

(declare-fun b!4926792 () Bool)

(assert (=> b!4926792 (= e!3078323 (+ 1 (size!37489 (t!367283 Nil!56697))))))

(assert (= (and d!1585527 c!839201) b!4926791))

(assert (= (and d!1585527 (not c!839201)) b!4926792))

(declare-fun m!5944802 () Bool)

(assert (=> b!4926792 m!5944802))

(assert (=> b!4926606 d!1585527))

(declare-fun d!1585529 () Bool)

(assert (=> d!1585529 (<= (size!37489 Nil!56697) (size!37489 lt!2027342))))

(declare-fun lt!2027516 () Unit!147242)

(declare-fun choose!36089 (List!56821 List!56821) Unit!147242)

(assert (=> d!1585529 (= lt!2027516 (choose!36089 Nil!56697 lt!2027342))))

(assert (=> d!1585529 (isPrefix!4965 Nil!56697 lt!2027342)))

(assert (=> d!1585529 (= (lemmaIsPrefixThenSmallerEqSize!689 Nil!56697 lt!2027342) lt!2027516)))

(declare-fun bs!1179777 () Bool)

(assert (= bs!1179777 d!1585529))

(assert (=> bs!1179777 m!5944576))

(assert (=> bs!1179777 m!5944570))

(declare-fun m!5944804 () Bool)

(assert (=> bs!1179777 m!5944804))

(declare-fun m!5944806 () Bool)

(assert (=> bs!1179777 m!5944806))

(assert (=> b!4926606 d!1585529))

(declare-fun b!4926816 () Bool)

(declare-fun e!3078338 () Bool)

(assert (=> b!4926816 (= e!3078338 (>= (size!37489 lt!2027335) (size!37489 (++!12330 Nil!56697 (Cons!56697 (head!10524 (getSuffix!2953 lt!2027335 Nil!56697)) Nil!56697)))))))

(declare-fun d!1585533 () Bool)

(assert (=> d!1585533 e!3078338))

(declare-fun res!2102770 () Bool)

(assert (=> d!1585533 (=> res!2102770 e!3078338)))

(declare-fun lt!2027519 () Bool)

(assert (=> d!1585533 (= res!2102770 (not lt!2027519))))

(declare-fun e!3078337 () Bool)

(assert (=> d!1585533 (= lt!2027519 e!3078337)))

(declare-fun res!2102772 () Bool)

(assert (=> d!1585533 (=> res!2102772 e!3078337)))

(assert (=> d!1585533 (= res!2102772 ((_ is Nil!56697) (++!12330 Nil!56697 (Cons!56697 (head!10524 (getSuffix!2953 lt!2027335 Nil!56697)) Nil!56697))))))

(assert (=> d!1585533 (= (isPrefix!4965 (++!12330 Nil!56697 (Cons!56697 (head!10524 (getSuffix!2953 lt!2027335 Nil!56697)) Nil!56697)) lt!2027335) lt!2027519)))

(declare-fun b!4926814 () Bool)

(declare-fun res!2102771 () Bool)

(declare-fun e!3078336 () Bool)

(assert (=> b!4926814 (=> (not res!2102771) (not e!3078336))))

(assert (=> b!4926814 (= res!2102771 (= (head!10524 (++!12330 Nil!56697 (Cons!56697 (head!10524 (getSuffix!2953 lt!2027335 Nil!56697)) Nil!56697))) (head!10524 lt!2027335)))))

(declare-fun b!4926813 () Bool)

(assert (=> b!4926813 (= e!3078337 e!3078336)))

(declare-fun res!2102773 () Bool)

(assert (=> b!4926813 (=> (not res!2102773) (not e!3078336))))

(assert (=> b!4926813 (= res!2102773 (not ((_ is Nil!56697) lt!2027335)))))

(declare-fun b!4926815 () Bool)

(assert (=> b!4926815 (= e!3078336 (isPrefix!4965 (tail!9671 (++!12330 Nil!56697 (Cons!56697 (head!10524 (getSuffix!2953 lt!2027335 Nil!56697)) Nil!56697))) (tail!9671 lt!2027335)))))

(assert (= (and d!1585533 (not res!2102772)) b!4926813))

(assert (= (and b!4926813 res!2102773) b!4926814))

(assert (= (and b!4926814 res!2102771) b!4926815))

(assert (= (and d!1585533 (not res!2102770)) b!4926816))

(assert (=> b!4926816 m!5944728))

(assert (=> b!4926816 m!5944572))

(declare-fun m!5944880 () Bool)

(assert (=> b!4926816 m!5944880))

(assert (=> b!4926814 m!5944572))

(declare-fun m!5944882 () Bool)

(assert (=> b!4926814 m!5944882))

(declare-fun m!5944884 () Bool)

(assert (=> b!4926814 m!5944884))

(assert (=> b!4926815 m!5944572))

(declare-fun m!5944886 () Bool)

(assert (=> b!4926815 m!5944886))

(assert (=> b!4926815 m!5944730))

(assert (=> b!4926815 m!5944886))

(assert (=> b!4926815 m!5944730))

(declare-fun m!5944888 () Bool)

(assert (=> b!4926815 m!5944888))

(assert (=> b!4926606 d!1585533))

(declare-fun d!1585537 () Bool)

(assert (=> d!1585537 (= (list!17959 (_2!33900 lt!2027332)) (list!17961 (c!839087 (_2!33900 lt!2027332))))))

(declare-fun bs!1179778 () Bool)

(assert (= bs!1179778 d!1585537))

(declare-fun m!5944890 () Bool)

(assert (=> bs!1179778 m!5944890))

(assert (=> b!4926606 d!1585537))

(declare-fun b!4926817 () Bool)

(declare-fun e!3078339 () List!56821)

(assert (=> b!4926817 (= e!3078339 (Cons!56697 lt!2027340 Nil!56697))))

(declare-fun b!4926820 () Bool)

(declare-fun e!3078340 () Bool)

(declare-fun lt!2027520 () List!56821)

(assert (=> b!4926820 (= e!3078340 (or (not (= (Cons!56697 lt!2027340 Nil!56697) Nil!56697)) (= lt!2027520 Nil!56697)))))

(declare-fun b!4926819 () Bool)

(declare-fun res!2102774 () Bool)

(assert (=> b!4926819 (=> (not res!2102774) (not e!3078340))))

(assert (=> b!4926819 (= res!2102774 (= (size!37489 lt!2027520) (+ (size!37489 Nil!56697) (size!37489 (Cons!56697 lt!2027340 Nil!56697)))))))

(declare-fun d!1585539 () Bool)

(assert (=> d!1585539 e!3078340))

(declare-fun res!2102775 () Bool)

(assert (=> d!1585539 (=> (not res!2102775) (not e!3078340))))

(assert (=> d!1585539 (= res!2102775 (= (content!10073 lt!2027520) ((_ map or) (content!10073 Nil!56697) (content!10073 (Cons!56697 lt!2027340 Nil!56697)))))))

(assert (=> d!1585539 (= lt!2027520 e!3078339)))

(declare-fun c!839210 () Bool)

(assert (=> d!1585539 (= c!839210 ((_ is Nil!56697) Nil!56697))))

(assert (=> d!1585539 (= (++!12330 Nil!56697 (Cons!56697 lt!2027340 Nil!56697)) lt!2027520)))

(declare-fun b!4926818 () Bool)

(assert (=> b!4926818 (= e!3078339 (Cons!56697 (h!63145 Nil!56697) (++!12330 (t!367283 Nil!56697) (Cons!56697 lt!2027340 Nil!56697))))))

(assert (= (and d!1585539 c!839210) b!4926817))

(assert (= (and d!1585539 (not c!839210)) b!4926818))

(assert (= (and d!1585539 res!2102775) b!4926819))

(assert (= (and b!4926819 res!2102774) b!4926820))

(declare-fun m!5944892 () Bool)

(assert (=> b!4926819 m!5944892))

(assert (=> b!4926819 m!5944576))

(declare-fun m!5944894 () Bool)

(assert (=> b!4926819 m!5944894))

(declare-fun m!5944896 () Bool)

(assert (=> d!1585539 m!5944896))

(assert (=> d!1585539 m!5944740))

(declare-fun m!5944898 () Bool)

(assert (=> d!1585539 m!5944898))

(declare-fun m!5944900 () Bool)

(assert (=> b!4926818 m!5944900))

(assert (=> b!4926606 d!1585539))

(declare-fun d!1585541 () Bool)

(assert (=> d!1585541 (= (head!10524 (getSuffix!2953 lt!2027335 Nil!56697)) (h!63145 (getSuffix!2953 lt!2027335 Nil!56697)))))

(assert (=> b!4926606 d!1585541))

(declare-fun d!1585543 () Bool)

(declare-fun lt!2027523 () C!26964)

(declare-fun contains!19458 (List!56821 C!26964) Bool)

(assert (=> d!1585543 (contains!19458 lt!2027331 lt!2027523)))

(declare-fun e!3078352 () C!26964)

(assert (=> d!1585543 (= lt!2027523 e!3078352)))

(declare-fun c!839219 () Bool)

(assert (=> d!1585543 (= c!839219 (= 0 0))))

(declare-fun e!3078351 () Bool)

(assert (=> d!1585543 e!3078351))

(declare-fun res!2102778 () Bool)

(assert (=> d!1585543 (=> (not res!2102778) (not e!3078351))))

(assert (=> d!1585543 (= res!2102778 (<= 0 0))))

(assert (=> d!1585543 (= (apply!13668 lt!2027331 0) lt!2027523)))

(declare-fun b!4926839 () Bool)

(assert (=> b!4926839 (= e!3078351 (< 0 (size!37489 lt!2027331)))))

(declare-fun b!4926840 () Bool)

(assert (=> b!4926840 (= e!3078352 (head!10524 lt!2027331))))

(declare-fun b!4926841 () Bool)

(assert (=> b!4926841 (= e!3078352 (apply!13668 (tail!9671 lt!2027331) (- 0 1)))))

(assert (= (and d!1585543 res!2102778) b!4926839))

(assert (= (and d!1585543 c!839219) b!4926840))

(assert (= (and d!1585543 (not c!839219)) b!4926841))

(declare-fun m!5944912 () Bool)

(assert (=> d!1585543 m!5944912))

(assert (=> b!4926839 m!5944758))

(declare-fun m!5944914 () Bool)

(assert (=> b!4926840 m!5944914))

(declare-fun m!5944916 () Bool)

(assert (=> b!4926841 m!5944916))

(assert (=> b!4926841 m!5944916))

(declare-fun m!5944918 () Bool)

(assert (=> b!4926841 m!5944918))

(assert (=> b!4926606 d!1585543))

(assert (=> b!4926606 d!1585481))

(declare-fun d!1585549 () Bool)

(declare-fun lt!2027524 () Int)

(assert (=> d!1585549 (>= lt!2027524 0)))

(declare-fun e!3078355 () Int)

(assert (=> d!1585549 (= lt!2027524 e!3078355)))

(declare-fun c!839222 () Bool)

(assert (=> d!1585549 (= c!839222 ((_ is Nil!56697) (t!367283 (_1!33899 lt!2026999))))))

(assert (=> d!1585549 (= (size!37489 (t!367283 (_1!33899 lt!2026999))) lt!2027524)))

(declare-fun b!4926846 () Bool)

(assert (=> b!4926846 (= e!3078355 0)))

(declare-fun b!4926847 () Bool)

(assert (=> b!4926847 (= e!3078355 (+ 1 (size!37489 (t!367283 (t!367283 (_1!33899 lt!2026999))))))))

(assert (= (and d!1585549 c!839222) b!4926846))

(assert (= (and d!1585549 (not c!839222)) b!4926847))

(declare-fun m!5944928 () Bool)

(assert (=> b!4926847 m!5944928))

(assert (=> b!4926709 d!1585549))

(declare-fun b!4926848 () Bool)

(declare-fun e!3078356 () List!56821)

(assert (=> b!4926848 (= e!3078356 lt!2026998)))

(declare-fun lt!2027525 () List!56821)

(declare-fun b!4926851 () Bool)

(declare-fun e!3078357 () Bool)

(assert (=> b!4926851 (= e!3078357 (or (not (= lt!2026998 Nil!56697)) (= lt!2027525 (t!367283 lt!2026994))))))

(declare-fun b!4926850 () Bool)

(declare-fun res!2102779 () Bool)

(assert (=> b!4926850 (=> (not res!2102779) (not e!3078357))))

(assert (=> b!4926850 (= res!2102779 (= (size!37489 lt!2027525) (+ (size!37489 (t!367283 lt!2026994)) (size!37489 lt!2026998))))))

(declare-fun d!1585553 () Bool)

(assert (=> d!1585553 e!3078357))

(declare-fun res!2102780 () Bool)

(assert (=> d!1585553 (=> (not res!2102780) (not e!3078357))))

(assert (=> d!1585553 (= res!2102780 (= (content!10073 lt!2027525) ((_ map or) (content!10073 (t!367283 lt!2026994)) (content!10073 lt!2026998))))))

(assert (=> d!1585553 (= lt!2027525 e!3078356)))

(declare-fun c!839223 () Bool)

(assert (=> d!1585553 (= c!839223 ((_ is Nil!56697) (t!367283 lt!2026994)))))

(assert (=> d!1585553 (= (++!12330 (t!367283 lt!2026994) lt!2026998) lt!2027525)))

(declare-fun b!4926849 () Bool)

(assert (=> b!4926849 (= e!3078356 (Cons!56697 (h!63145 (t!367283 lt!2026994)) (++!12330 (t!367283 (t!367283 lt!2026994)) lt!2026998)))))

(assert (= (and d!1585553 c!839223) b!4926848))

(assert (= (and d!1585553 (not c!839223)) b!4926849))

(assert (= (and d!1585553 res!2102780) b!4926850))

(assert (= (and b!4926850 res!2102779) b!4926851))

(declare-fun m!5944930 () Bool)

(assert (=> b!4926850 m!5944930))

(assert (=> b!4926850 m!5944708))

(assert (=> b!4926850 m!5944608))

(declare-fun m!5944932 () Bool)

(assert (=> d!1585553 m!5944932))

(declare-fun m!5944934 () Bool)

(assert (=> d!1585553 m!5944934))

(assert (=> d!1585553 m!5944614))

(declare-fun m!5944936 () Bool)

(assert (=> b!4926849 m!5944936))

(assert (=> b!4926626 d!1585553))

(assert (=> bm!343629 d!1585509))

(declare-fun d!1585557 () Bool)

(assert (=> d!1585557 (= (list!17959 (_1!33900 lt!2027359)) (list!17961 (c!839087 (_1!33900 lt!2027359))))))

(declare-fun bs!1179780 () Bool)

(assert (= bs!1179780 d!1585557))

(declare-fun m!5944938 () Bool)

(assert (=> bs!1179780 m!5944938))

(assert (=> b!4926638 d!1585557))

(declare-fun d!1585559 () Bool)

(assert (=> d!1585559 (= (list!17959 (_2!33900 lt!2027359)) (list!17961 (c!839087 (_2!33900 lt!2027359))))))

(declare-fun bs!1179781 () Bool)

(assert (= bs!1179781 d!1585559))

(declare-fun m!5944940 () Bool)

(assert (=> bs!1179781 m!5944940))

(assert (=> b!4926638 d!1585559))

(declare-fun d!1585561 () Bool)

(declare-fun e!3078375 () Bool)

(assert (=> d!1585561 e!3078375))

(declare-fun res!2102791 () Bool)

(assert (=> d!1585561 (=> (not res!2102791) (not e!3078375))))

(declare-fun lt!2027534 () tuple2!61192)

(assert (=> d!1585561 (= res!2102791 (= (++!12330 (_1!33899 lt!2027534) (_2!33899 lt!2027534)) (list!17959 input!5492)))))

(declare-fun e!3078374 () tuple2!61192)

(assert (=> d!1585561 (= lt!2027534 e!3078374)))

(declare-fun c!839234 () Bool)

(assert (=> d!1585561 (= c!839234 ((_ is Nil!56697) (list!17959 input!5492)))))

(assert (=> d!1585561 (= (splitAtIndex!105 (list!17959 input!5492) (findLongestMatchInnerZipperFast!89 z!3559 Nil!56697 0 lt!2026995 input!5492 lt!2026996)) lt!2027534)))

(declare-fun b!4926882 () Bool)

(declare-fun e!3078373 () tuple2!61192)

(assert (=> b!4926882 (= e!3078373 (tuple2!61193 Nil!56697 (list!17959 input!5492)))))

(declare-fun b!4926883 () Bool)

(assert (=> b!4926883 (= e!3078374 (tuple2!61193 Nil!56697 Nil!56697))))

(declare-fun b!4926884 () Bool)

(assert (=> b!4926884 (= e!3078375 (= (_2!33899 lt!2027534) (drop!2227 (list!17959 input!5492) (findLongestMatchInnerZipperFast!89 z!3559 Nil!56697 0 lt!2026995 input!5492 lt!2026996))))))

(declare-fun lt!2027535 () tuple2!61192)

(declare-fun b!4926885 () Bool)

(assert (=> b!4926885 (= lt!2027535 (splitAtIndex!105 (t!367283 (list!17959 input!5492)) (- (findLongestMatchInnerZipperFast!89 z!3559 Nil!56697 0 lt!2026995 input!5492 lt!2026996) 1)))))

(assert (=> b!4926885 (= e!3078373 (tuple2!61193 (Cons!56697 (h!63145 (list!17959 input!5492)) (_1!33899 lt!2027535)) (_2!33899 lt!2027535)))))

(declare-fun b!4926886 () Bool)

(assert (=> b!4926886 (= e!3078374 e!3078373)))

(declare-fun c!839235 () Bool)

(assert (=> b!4926886 (= c!839235 (<= (findLongestMatchInnerZipperFast!89 z!3559 Nil!56697 0 lt!2026995 input!5492 lt!2026996) 0))))

(declare-fun b!4926887 () Bool)

(declare-fun res!2102792 () Bool)

(assert (=> b!4926887 (=> (not res!2102792) (not e!3078375))))

(declare-fun take!580 (List!56821 Int) List!56821)

(assert (=> b!4926887 (= res!2102792 (= (_1!33899 lt!2027534) (take!580 (list!17959 input!5492) (findLongestMatchInnerZipperFast!89 z!3559 Nil!56697 0 lt!2026995 input!5492 lt!2026996))))))

(assert (= (and d!1585561 c!839234) b!4926883))

(assert (= (and d!1585561 (not c!839234)) b!4926886))

(assert (= (and b!4926886 c!839235) b!4926882))

(assert (= (and b!4926886 (not c!839235)) b!4926885))

(assert (= (and d!1585561 res!2102791) b!4926887))

(assert (= (and b!4926887 res!2102792) b!4926884))

(declare-fun m!5944964 () Bool)

(assert (=> d!1585561 m!5944964))

(assert (=> b!4926884 m!5944346))

(assert (=> b!4926884 m!5944352))

(declare-fun m!5944966 () Bool)

(assert (=> b!4926884 m!5944966))

(declare-fun m!5944968 () Bool)

(assert (=> b!4926885 m!5944968))

(assert (=> b!4926887 m!5944346))

(assert (=> b!4926887 m!5944352))

(declare-fun m!5944970 () Bool)

(assert (=> b!4926887 m!5944970))

(assert (=> b!4926638 d!1585561))

(assert (=> b!4926638 d!1585489))

(declare-fun bs!1179785 () Bool)

(declare-fun b!4926927 () Bool)

(declare-fun d!1585579 () Bool)

(assert (= bs!1179785 (and b!4926927 d!1585579)))

(declare-fun lambda!245304 () Int)

(declare-fun lambda!245303 () Int)

(assert (=> bs!1179785 (not (= lambda!245304 lambda!245303))))

(declare-fun bs!1179786 () Bool)

(declare-fun b!4926928 () Bool)

(assert (= bs!1179786 (and b!4926928 d!1585579)))

(declare-fun lambda!245305 () Int)

(assert (=> bs!1179786 (not (= lambda!245305 lambda!245303))))

(declare-fun bs!1179787 () Bool)

(assert (= bs!1179787 (and b!4926928 b!4926927)))

(assert (=> bs!1179787 (= lambda!245305 lambda!245304)))

(declare-fun bm!343672 () Bool)

(declare-datatypes ((List!56823 0))(
  ( (Nil!56699) (Cons!56699 (h!63147 Context!6038) (t!367293 List!56823)) )
))
(declare-fun call!343677 () List!56823)

(declare-fun toList!7945 ((InoxSet Context!6038)) List!56823)

(assert (=> bm!343672 (= call!343677 (toList!7945 z!3559))))

(declare-fun e!3078398 () Unit!147242)

(declare-fun Unit!147256 () Unit!147242)

(assert (=> b!4926927 (= e!3078398 Unit!147256)))

(declare-fun lt!2027559 () List!56823)

(assert (=> b!4926927 (= lt!2027559 call!343677)))

(declare-fun lt!2027561 () Unit!147242)

(declare-fun lemmaNotForallThenExists!183 (List!56823 Int) Unit!147242)

(assert (=> b!4926927 (= lt!2027561 (lemmaNotForallThenExists!183 lt!2027559 lambda!245303))))

(declare-fun call!343676 () Bool)

(assert (=> b!4926927 call!343676))

(declare-fun lt!2027562 () Unit!147242)

(assert (=> b!4926927 (= lt!2027562 lt!2027561)))

(declare-fun c!839252 () Bool)

(declare-fun bm!343671 () Bool)

(declare-fun lt!2027557 () List!56823)

(declare-fun exists!1251 (List!56823 Int) Bool)

(assert (=> bm!343671 (= call!343676 (exists!1251 (ite c!839252 lt!2027559 lt!2027557) (ite c!839252 lambda!245304 lambda!245305)))))

(declare-fun Unit!147257 () Unit!147242)

(assert (=> b!4926928 (= e!3078398 Unit!147257)))

(assert (=> b!4926928 (= lt!2027557 call!343677)))

(declare-fun lt!2027560 () Unit!147242)

(declare-fun lemmaForallThenNotExists!166 (List!56823 Int) Unit!147242)

(assert (=> b!4926928 (= lt!2027560 (lemmaForallThenNotExists!166 lt!2027557 lambda!245303))))

(assert (=> b!4926928 (not call!343676)))

(declare-fun lt!2027564 () Unit!147242)

(assert (=> b!4926928 (= lt!2027564 lt!2027560)))

(declare-fun lt!2027558 () Bool)

(declare-datatypes ((Option!14163 0))(
  ( (None!14162) (Some!14162 (v!50130 List!56821)) )
))
(declare-fun isEmpty!30580 (Option!14163) Bool)

(declare-fun getLanguageWitness!619 ((InoxSet Context!6038)) Option!14163)

(assert (=> d!1585579 (= lt!2027558 (isEmpty!30580 (getLanguageWitness!619 z!3559)))))

(declare-fun forall!13142 ((InoxSet Context!6038) Int) Bool)

(assert (=> d!1585579 (= lt!2027558 (forall!13142 z!3559 lambda!245303))))

(declare-fun lt!2027563 () Unit!147242)

(assert (=> d!1585579 (= lt!2027563 e!3078398)))

(assert (=> d!1585579 (= c!839252 (not (forall!13142 z!3559 lambda!245303)))))

(assert (=> d!1585579 (= (lostCauseZipper!695 z!3559) lt!2027558)))

(assert (= (and d!1585579 c!839252) b!4926927))

(assert (= (and d!1585579 (not c!839252)) b!4926928))

(assert (= (or b!4926927 b!4926928) bm!343671))

(assert (= (or b!4926927 b!4926928) bm!343672))

(declare-fun m!5945032 () Bool)

(assert (=> bm!343671 m!5945032))

(declare-fun m!5945034 () Bool)

(assert (=> bm!343672 m!5945034))

(declare-fun m!5945036 () Bool)

(assert (=> d!1585579 m!5945036))

(assert (=> d!1585579 m!5945036))

(declare-fun m!5945038 () Bool)

(assert (=> d!1585579 m!5945038))

(declare-fun m!5945040 () Bool)

(assert (=> d!1585579 m!5945040))

(assert (=> d!1585579 m!5945040))

(declare-fun m!5945042 () Bool)

(assert (=> b!4926928 m!5945042))

(declare-fun m!5945044 () Bool)

(assert (=> b!4926927 m!5945044))

(assert (=> d!1585487 d!1585579))

(declare-fun d!1585605 () Bool)

(assert (=> d!1585605 (isPrefix!4965 Nil!56697 (++!12330 Nil!56697 lt!2026995))))

(declare-fun lt!2027568 () Unit!147242)

(declare-fun choose!36091 (List!56821 List!56821) Unit!147242)

(assert (=> d!1585605 (= lt!2027568 (choose!36091 Nil!56697 lt!2026995))))

(assert (=> d!1585605 (= (lemmaConcatTwoListThenFirstIsPrefix!3189 Nil!56697 lt!2026995) lt!2027568)))

(declare-fun bs!1179788 () Bool)

(assert (= bs!1179788 d!1585605))

(assert (=> bs!1179788 m!5944590))

(assert (=> bs!1179788 m!5944590))

(assert (=> bs!1179788 m!5944592))

(declare-fun m!5945046 () Bool)

(assert (=> bs!1179788 m!5945046))

(assert (=> d!1585487 d!1585605))

(declare-fun d!1585607 () Bool)

(assert (=> d!1585607 (= lt!2026995 lt!2027435)))

(declare-fun lt!2027574 () Unit!147242)

(declare-fun choose!36092 (List!56821 List!56821 List!56821 List!56821 List!56821) Unit!147242)

(assert (=> d!1585607 (= lt!2027574 (choose!36092 Nil!56697 lt!2026995 Nil!56697 lt!2027435 lt!2026995))))

(assert (=> d!1585607 (isPrefix!4965 Nil!56697 lt!2026995)))

(assert (=> d!1585607 (= (lemmaSamePrefixThenSameSuffix!2369 Nil!56697 lt!2026995 Nil!56697 lt!2027435 lt!2026995) lt!2027574)))

(declare-fun bs!1179789 () Bool)

(assert (= bs!1179789 d!1585607))

(declare-fun m!5945052 () Bool)

(assert (=> bs!1179789 m!5945052))

(declare-fun m!5945054 () Bool)

(assert (=> bs!1179789 m!5945054))

(assert (=> d!1585487 d!1585607))

(declare-fun d!1585611 () Bool)

(declare-fun lt!2027575 () List!56821)

(assert (=> d!1585611 (= (++!12330 Nil!56697 lt!2027575) lt!2026995)))

(declare-fun e!3078408 () List!56821)

(assert (=> d!1585611 (= lt!2027575 e!3078408)))

(declare-fun c!839260 () Bool)

(assert (=> d!1585611 (= c!839260 ((_ is Cons!56697) Nil!56697))))

(assert (=> d!1585611 (>= (size!37489 lt!2026995) (size!37489 Nil!56697))))

(assert (=> d!1585611 (= (getSuffix!2953 lt!2026995 Nil!56697) lt!2027575)))

(declare-fun b!4926949 () Bool)

(assert (=> b!4926949 (= e!3078408 (getSuffix!2953 (tail!9671 lt!2026995) (t!367283 Nil!56697)))))

(declare-fun b!4926950 () Bool)

(assert (=> b!4926950 (= e!3078408 lt!2026995)))

(assert (= (and d!1585611 c!839260) b!4926949))

(assert (= (and d!1585611 (not c!839260)) b!4926950))

(declare-fun m!5945056 () Bool)

(assert (=> d!1585611 m!5945056))

(assert (=> d!1585611 m!5944674))

(assert (=> d!1585611 m!5944576))

(assert (=> b!4926949 m!5944554))

(assert (=> b!4926949 m!5944554))

(declare-fun m!5945058 () Bool)

(assert (=> b!4926949 m!5945058))

(assert (=> d!1585487 d!1585611))

(declare-fun b!4926954 () Bool)

(declare-fun e!3078411 () Bool)

(assert (=> b!4926954 (= e!3078411 (>= (size!37489 (++!12330 Nil!56697 lt!2026995)) (size!37489 Nil!56697)))))

(declare-fun d!1585613 () Bool)

(assert (=> d!1585613 e!3078411))

(declare-fun res!2102824 () Bool)

(assert (=> d!1585613 (=> res!2102824 e!3078411)))

(declare-fun lt!2027576 () Bool)

(assert (=> d!1585613 (= res!2102824 (not lt!2027576))))

(declare-fun e!3078410 () Bool)

(assert (=> d!1585613 (= lt!2027576 e!3078410)))

(declare-fun res!2102826 () Bool)

(assert (=> d!1585613 (=> res!2102826 e!3078410)))

(assert (=> d!1585613 (= res!2102826 ((_ is Nil!56697) Nil!56697))))

(assert (=> d!1585613 (= (isPrefix!4965 Nil!56697 (++!12330 Nil!56697 lt!2026995)) lt!2027576)))

(declare-fun b!4926952 () Bool)

(declare-fun res!2102825 () Bool)

(declare-fun e!3078409 () Bool)

(assert (=> b!4926952 (=> (not res!2102825) (not e!3078409))))

(assert (=> b!4926952 (= res!2102825 (= (head!10524 Nil!56697) (head!10524 (++!12330 Nil!56697 lt!2026995))))))

(declare-fun b!4926951 () Bool)

(assert (=> b!4926951 (= e!3078410 e!3078409)))

(declare-fun res!2102827 () Bool)

(assert (=> b!4926951 (=> (not res!2102827) (not e!3078409))))

(assert (=> b!4926951 (= res!2102827 (not ((_ is Nil!56697) (++!12330 Nil!56697 lt!2026995))))))

(declare-fun b!4926953 () Bool)

(assert (=> b!4926953 (= e!3078409 (isPrefix!4965 (tail!9671 Nil!56697) (tail!9671 (++!12330 Nil!56697 lt!2026995))))))

(assert (= (and d!1585613 (not res!2102826)) b!4926951))

(assert (= (and b!4926951 res!2102827) b!4926952))

(assert (= (and b!4926952 res!2102825) b!4926953))

(assert (= (and d!1585613 (not res!2102824)) b!4926954))

(assert (=> b!4926954 m!5944590))

(declare-fun m!5945060 () Bool)

(assert (=> b!4926954 m!5945060))

(assert (=> b!4926954 m!5944576))

(declare-fun m!5945062 () Bool)

(assert (=> b!4926952 m!5945062))

(assert (=> b!4926952 m!5944590))

(declare-fun m!5945064 () Bool)

(assert (=> b!4926952 m!5945064))

(declare-fun m!5945066 () Bool)

(assert (=> b!4926953 m!5945066))

(assert (=> b!4926953 m!5944590))

(declare-fun m!5945068 () Bool)

(assert (=> b!4926953 m!5945068))

(assert (=> b!4926953 m!5945066))

(assert (=> b!4926953 m!5945068))

(declare-fun m!5945070 () Bool)

(assert (=> b!4926953 m!5945070))

(assert (=> d!1585487 d!1585613))

(declare-fun b!4926955 () Bool)

(declare-fun e!3078412 () List!56821)

(assert (=> b!4926955 (= e!3078412 (_2!33899 lt!2027415))))

(declare-fun b!4926958 () Bool)

(declare-fun e!3078413 () Bool)

(declare-fun lt!2027577 () List!56821)

(assert (=> b!4926958 (= e!3078413 (or (not (= (_2!33899 lt!2027415) Nil!56697)) (= lt!2027577 (_1!33899 lt!2027415))))))

(declare-fun b!4926957 () Bool)

(declare-fun res!2102828 () Bool)

(assert (=> b!4926957 (=> (not res!2102828) (not e!3078413))))

(assert (=> b!4926957 (= res!2102828 (= (size!37489 lt!2027577) (+ (size!37489 (_1!33899 lt!2027415)) (size!37489 (_2!33899 lt!2027415)))))))

(declare-fun d!1585615 () Bool)

(assert (=> d!1585615 e!3078413))

(declare-fun res!2102829 () Bool)

(assert (=> d!1585615 (=> (not res!2102829) (not e!3078413))))

(assert (=> d!1585615 (= res!2102829 (= (content!10073 lt!2027577) ((_ map or) (content!10073 (_1!33899 lt!2027415)) (content!10073 (_2!33899 lt!2027415)))))))

(assert (=> d!1585615 (= lt!2027577 e!3078412)))

(declare-fun c!839261 () Bool)

(assert (=> d!1585615 (= c!839261 ((_ is Nil!56697) (_1!33899 lt!2027415)))))

(assert (=> d!1585615 (= (++!12330 (_1!33899 lt!2027415) (_2!33899 lt!2027415)) lt!2027577)))

(declare-fun b!4926956 () Bool)

(assert (=> b!4926956 (= e!3078412 (Cons!56697 (h!63145 (_1!33899 lt!2027415)) (++!12330 (t!367283 (_1!33899 lt!2027415)) (_2!33899 lt!2027415))))))

(assert (= (and d!1585615 c!839261) b!4926955))

(assert (= (and d!1585615 (not c!839261)) b!4926956))

(assert (= (and d!1585615 res!2102829) b!4926957))

(assert (= (and b!4926957 res!2102828) b!4926958))

(declare-fun m!5945072 () Bool)

(assert (=> b!4926957 m!5945072))

(assert (=> b!4926957 m!5944698))

(declare-fun m!5945074 () Bool)

(assert (=> b!4926957 m!5945074))

(declare-fun m!5945076 () Bool)

(assert (=> d!1585615 m!5945076))

(declare-fun m!5945078 () Bool)

(assert (=> d!1585615 m!5945078))

(declare-fun m!5945080 () Bool)

(assert (=> d!1585615 m!5945080))

(declare-fun m!5945082 () Bool)

(assert (=> b!4926956 m!5945082))

(assert (=> d!1585487 d!1585615))

(declare-fun b!4926959 () Bool)

(declare-fun e!3078414 () List!56821)

(assert (=> b!4926959 (= e!3078414 lt!2026995)))

(declare-fun b!4926962 () Bool)

(declare-fun e!3078415 () Bool)

(declare-fun lt!2027578 () List!56821)

(assert (=> b!4926962 (= e!3078415 (or (not (= lt!2026995 Nil!56697)) (= lt!2027578 Nil!56697)))))

(declare-fun b!4926961 () Bool)

(declare-fun res!2102830 () Bool)

(assert (=> b!4926961 (=> (not res!2102830) (not e!3078415))))

(assert (=> b!4926961 (= res!2102830 (= (size!37489 lt!2027578) (+ (size!37489 Nil!56697) (size!37489 lt!2026995))))))

(declare-fun d!1585617 () Bool)

(assert (=> d!1585617 e!3078415))

(declare-fun res!2102831 () Bool)

(assert (=> d!1585617 (=> (not res!2102831) (not e!3078415))))

(assert (=> d!1585617 (= res!2102831 (= (content!10073 lt!2027578) ((_ map or) (content!10073 Nil!56697) (content!10073 lt!2026995))))))

(assert (=> d!1585617 (= lt!2027578 e!3078414)))

(declare-fun c!839262 () Bool)

(assert (=> d!1585617 (= c!839262 ((_ is Nil!56697) Nil!56697))))

(assert (=> d!1585617 (= (++!12330 Nil!56697 lt!2026995) lt!2027578)))

(declare-fun b!4926960 () Bool)

(assert (=> b!4926960 (= e!3078414 (Cons!56697 (h!63145 Nil!56697) (++!12330 (t!367283 Nil!56697) lt!2026995)))))

(assert (= (and d!1585617 c!839262) b!4926959))

(assert (= (and d!1585617 (not c!839262)) b!4926960))

(assert (= (and d!1585617 res!2102831) b!4926961))

(assert (= (and b!4926961 res!2102830) b!4926962))

(declare-fun m!5945084 () Bool)

(assert (=> b!4926961 m!5945084))

(assert (=> b!4926961 m!5944576))

(assert (=> b!4926961 m!5944674))

(declare-fun m!5945086 () Bool)

(assert (=> d!1585617 m!5945086))

(assert (=> d!1585617 m!5944740))

(declare-fun m!5945088 () Bool)

(assert (=> d!1585617 m!5945088))

(declare-fun m!5945090 () Bool)

(assert (=> b!4926960 m!5945090))

(assert (=> d!1585487 d!1585617))

(declare-fun e!3078418 () Bool)

(declare-fun b!4926966 () Bool)

(assert (=> b!4926966 (= e!3078418 (>= (size!37489 (ite c!839148 lt!2027309 lt!2027343)) (size!37489 (ite c!839148 lt!2027318 lt!2027308))))))

(declare-fun d!1585619 () Bool)

(assert (=> d!1585619 e!3078418))

(declare-fun res!2102832 () Bool)

(assert (=> d!1585619 (=> res!2102832 e!3078418)))

(declare-fun lt!2027579 () Bool)

(assert (=> d!1585619 (= res!2102832 (not lt!2027579))))

(declare-fun e!3078417 () Bool)

(assert (=> d!1585619 (= lt!2027579 e!3078417)))

(declare-fun res!2102834 () Bool)

(assert (=> d!1585619 (=> res!2102834 e!3078417)))

(assert (=> d!1585619 (= res!2102834 ((_ is Nil!56697) (ite c!839148 lt!2027318 lt!2027308)))))

(assert (=> d!1585619 (= (isPrefix!4965 (ite c!839148 lt!2027318 lt!2027308) (ite c!839148 lt!2027309 lt!2027343)) lt!2027579)))

(declare-fun b!4926964 () Bool)

(declare-fun res!2102833 () Bool)

(declare-fun e!3078416 () Bool)

(assert (=> b!4926964 (=> (not res!2102833) (not e!3078416))))

(assert (=> b!4926964 (= res!2102833 (= (head!10524 (ite c!839148 lt!2027318 lt!2027308)) (head!10524 (ite c!839148 lt!2027309 lt!2027343))))))

(declare-fun b!4926963 () Bool)

(assert (=> b!4926963 (= e!3078417 e!3078416)))

(declare-fun res!2102835 () Bool)

(assert (=> b!4926963 (=> (not res!2102835) (not e!3078416))))

(assert (=> b!4926963 (= res!2102835 (not ((_ is Nil!56697) (ite c!839148 lt!2027309 lt!2027343))))))

(declare-fun b!4926965 () Bool)

(assert (=> b!4926965 (= e!3078416 (isPrefix!4965 (tail!9671 (ite c!839148 lt!2027318 lt!2027308)) (tail!9671 (ite c!839148 lt!2027309 lt!2027343))))))

(assert (= (and d!1585619 (not res!2102834)) b!4926963))

(assert (= (and b!4926963 res!2102835) b!4926964))

(assert (= (and b!4926964 res!2102833) b!4926965))

(assert (= (and d!1585619 (not res!2102832)) b!4926966))

(declare-fun m!5945092 () Bool)

(assert (=> b!4926966 m!5945092))

(declare-fun m!5945094 () Bool)

(assert (=> b!4926966 m!5945094))

(declare-fun m!5945096 () Bool)

(assert (=> b!4926964 m!5945096))

(declare-fun m!5945098 () Bool)

(assert (=> b!4926964 m!5945098))

(declare-fun m!5945100 () Bool)

(assert (=> b!4926965 m!5945100))

(declare-fun m!5945102 () Bool)

(assert (=> b!4926965 m!5945102))

(assert (=> b!4926965 m!5945100))

(assert (=> b!4926965 m!5945102))

(declare-fun m!5945104 () Bool)

(assert (=> b!4926965 m!5945104))

(assert (=> bm!343620 d!1585619))

(declare-fun b!4926978 () Bool)

(declare-fun e!3078424 () List!56821)

(assert (=> b!4926978 (= e!3078424 (++!12330 (list!17961 (left!41344 (c!839087 input!5492))) (list!17961 (right!41674 (c!839087 input!5492)))))))

(declare-fun b!4926977 () Bool)

(declare-fun list!17963 (IArray!29813) List!56821)

(assert (=> b!4926977 (= e!3078424 (list!17963 (xs!18198 (c!839087 input!5492))))))

(declare-fun d!1585621 () Bool)

(declare-fun c!839267 () Bool)

(assert (=> d!1585621 (= c!839267 ((_ is Empty!14876) (c!839087 input!5492)))))

(declare-fun e!3078423 () List!56821)

(assert (=> d!1585621 (= (list!17961 (c!839087 input!5492)) e!3078423)))

(declare-fun b!4926975 () Bool)

(assert (=> b!4926975 (= e!3078423 Nil!56697)))

(declare-fun b!4926976 () Bool)

(assert (=> b!4926976 (= e!3078423 e!3078424)))

(declare-fun c!839268 () Bool)

(assert (=> b!4926976 (= c!839268 ((_ is Leaf!24747) (c!839087 input!5492)))))

(assert (= (and d!1585621 c!839267) b!4926975))

(assert (= (and d!1585621 (not c!839267)) b!4926976))

(assert (= (and b!4926976 c!839268) b!4926977))

(assert (= (and b!4926976 (not c!839268)) b!4926978))

(declare-fun m!5945106 () Bool)

(assert (=> b!4926978 m!5945106))

(declare-fun m!5945108 () Bool)

(assert (=> b!4926978 m!5945108))

(assert (=> b!4926978 m!5945106))

(assert (=> b!4926978 m!5945108))

(declare-fun m!5945110 () Bool)

(assert (=> b!4926978 m!5945110))

(declare-fun m!5945112 () Bool)

(assert (=> b!4926977 m!5945112))

(assert (=> d!1585489 d!1585621))

(declare-fun b!4926979 () Bool)

(declare-fun e!3078425 () List!56821)

(assert (=> b!4926979 (= e!3078425 lt!2027436)))

(declare-fun e!3078426 () Bool)

(declare-fun lt!2027580 () List!56821)

(declare-fun b!4926982 () Bool)

(assert (=> b!4926982 (= e!3078426 (or (not (= lt!2027436 Nil!56697)) (= lt!2027580 (++!12330 Nil!56697 (Cons!56697 lt!2027437 Nil!56697)))))))

(declare-fun b!4926981 () Bool)

(declare-fun res!2102836 () Bool)

(assert (=> b!4926981 (=> (not res!2102836) (not e!3078426))))

(assert (=> b!4926981 (= res!2102836 (= (size!37489 lt!2027580) (+ (size!37489 (++!12330 Nil!56697 (Cons!56697 lt!2027437 Nil!56697))) (size!37489 lt!2027436))))))

(declare-fun d!1585623 () Bool)

(assert (=> d!1585623 e!3078426))

(declare-fun res!2102837 () Bool)

(assert (=> d!1585623 (=> (not res!2102837) (not e!3078426))))

(assert (=> d!1585623 (= res!2102837 (= (content!10073 lt!2027580) ((_ map or) (content!10073 (++!12330 Nil!56697 (Cons!56697 lt!2027437 Nil!56697))) (content!10073 lt!2027436))))))

(assert (=> d!1585623 (= lt!2027580 e!3078425)))

(declare-fun c!839269 () Bool)

(assert (=> d!1585623 (= c!839269 ((_ is Nil!56697) (++!12330 Nil!56697 (Cons!56697 lt!2027437 Nil!56697))))))

(assert (=> d!1585623 (= (++!12330 (++!12330 Nil!56697 (Cons!56697 lt!2027437 Nil!56697)) lt!2027436) lt!2027580)))

(declare-fun b!4926980 () Bool)

(assert (=> b!4926980 (= e!3078425 (Cons!56697 (h!63145 (++!12330 Nil!56697 (Cons!56697 lt!2027437 Nil!56697))) (++!12330 (t!367283 (++!12330 Nil!56697 (Cons!56697 lt!2027437 Nil!56697))) lt!2027436)))))

(assert (= (and d!1585623 c!839269) b!4926979))

(assert (= (and d!1585623 (not c!839269)) b!4926980))

(assert (= (and d!1585623 res!2102837) b!4926981))

(assert (= (and b!4926981 res!2102836) b!4926982))

(declare-fun m!5945114 () Bool)

(assert (=> b!4926981 m!5945114))

(assert (=> b!4926981 m!5944662))

(declare-fun m!5945116 () Bool)

(assert (=> b!4926981 m!5945116))

(declare-fun m!5945118 () Bool)

(assert (=> b!4926981 m!5945118))

(declare-fun m!5945120 () Bool)

(assert (=> d!1585623 m!5945120))

(assert (=> d!1585623 m!5944662))

(declare-fun m!5945122 () Bool)

(assert (=> d!1585623 m!5945122))

(declare-fun m!5945124 () Bool)

(assert (=> d!1585623 m!5945124))

(declare-fun m!5945126 () Bool)

(assert (=> b!4926980 m!5945126))

(assert (=> b!4926689 d!1585623))

(assert (=> b!4926689 d!1585527))

(declare-fun d!1585625 () Bool)

(assert (=> d!1585625 (= (++!12330 (++!12330 Nil!56697 (Cons!56697 lt!2027437 Nil!56697)) lt!2027436) lt!2026995)))

(declare-fun lt!2027585 () Unit!147242)

(assert (=> d!1585625 (= lt!2027585 (choose!36085 Nil!56697 lt!2027437 lt!2027436 lt!2026995))))

(assert (=> d!1585625 (= (++!12330 Nil!56697 (Cons!56697 lt!2027437 lt!2027436)) lt!2026995)))

(assert (=> d!1585625 (= (lemmaMoveElementToOtherListKeepsConcatEq!1395 Nil!56697 lt!2027437 lt!2027436 lt!2026995) lt!2027585)))

(declare-fun bs!1179790 () Bool)

(assert (= bs!1179790 d!1585625))

(assert (=> bs!1179790 m!5944662))

(assert (=> bs!1179790 m!5944662))

(assert (=> bs!1179790 m!5944664))

(declare-fun m!5945128 () Bool)

(assert (=> bs!1179790 m!5945128))

(declare-fun m!5945130 () Bool)

(assert (=> bs!1179790 m!5945130))

(assert (=> b!4926689 d!1585625))

(declare-fun b!4926987 () Bool)

(declare-fun e!3078429 () List!56821)

(assert (=> b!4926987 (= e!3078429 (Cons!56697 (head!10524 (getSuffix!2953 lt!2026995 Nil!56697)) Nil!56697))))

(declare-fun b!4926990 () Bool)

(declare-fun e!3078430 () Bool)

(declare-fun lt!2027592 () List!56821)

(assert (=> b!4926990 (= e!3078430 (or (not (= (Cons!56697 (head!10524 (getSuffix!2953 lt!2026995 Nil!56697)) Nil!56697) Nil!56697)) (= lt!2027592 Nil!56697)))))

(declare-fun b!4926989 () Bool)

(declare-fun res!2102838 () Bool)

(assert (=> b!4926989 (=> (not res!2102838) (not e!3078430))))

(assert (=> b!4926989 (= res!2102838 (= (size!37489 lt!2027592) (+ (size!37489 Nil!56697) (size!37489 (Cons!56697 (head!10524 (getSuffix!2953 lt!2026995 Nil!56697)) Nil!56697)))))))

(declare-fun d!1585627 () Bool)

(assert (=> d!1585627 e!3078430))

(declare-fun res!2102839 () Bool)

(assert (=> d!1585627 (=> (not res!2102839) (not e!3078430))))

(assert (=> d!1585627 (= res!2102839 (= (content!10073 lt!2027592) ((_ map or) (content!10073 Nil!56697) (content!10073 (Cons!56697 (head!10524 (getSuffix!2953 lt!2026995 Nil!56697)) Nil!56697)))))))

(assert (=> d!1585627 (= lt!2027592 e!3078429)))

(declare-fun c!839276 () Bool)

(assert (=> d!1585627 (= c!839276 ((_ is Nil!56697) Nil!56697))))

(assert (=> d!1585627 (= (++!12330 Nil!56697 (Cons!56697 (head!10524 (getSuffix!2953 lt!2026995 Nil!56697)) Nil!56697)) lt!2027592)))

(declare-fun b!4926988 () Bool)

(assert (=> b!4926988 (= e!3078429 (Cons!56697 (h!63145 Nil!56697) (++!12330 (t!367283 Nil!56697) (Cons!56697 (head!10524 (getSuffix!2953 lt!2026995 Nil!56697)) Nil!56697))))))

(assert (= (and d!1585627 c!839276) b!4926987))

(assert (= (and d!1585627 (not c!839276)) b!4926988))

(assert (= (and d!1585627 res!2102839) b!4926989))

(assert (= (and b!4926989 res!2102838) b!4926990))

(declare-fun m!5945132 () Bool)

(assert (=> b!4926989 m!5945132))

(assert (=> b!4926989 m!5944576))

(declare-fun m!5945134 () Bool)

(assert (=> b!4926989 m!5945134))

(declare-fun m!5945136 () Bool)

(assert (=> d!1585627 m!5945136))

(assert (=> d!1585627 m!5944740))

(declare-fun m!5945138 () Bool)

(assert (=> d!1585627 m!5945138))

(declare-fun m!5945140 () Bool)

(assert (=> b!4926988 m!5945140))

(assert (=> b!4926689 d!1585627))

(declare-fun d!1585629 () Bool)

(declare-fun lt!2027593 () Int)

(assert (=> d!1585629 (>= lt!2027593 0)))

(declare-fun e!3078433 () Int)

(assert (=> d!1585629 (= lt!2027593 e!3078433)))

(declare-fun c!839277 () Bool)

(assert (=> d!1585629 (= c!839277 ((_ is Nil!56697) lt!2026995))))

(assert (=> d!1585629 (= (size!37489 lt!2026995) lt!2027593)))

(declare-fun b!4926991 () Bool)

(assert (=> b!4926991 (= e!3078433 0)))

(declare-fun b!4926992 () Bool)

(assert (=> b!4926992 (= e!3078433 (+ 1 (size!37489 (t!367283 lt!2026995))))))

(assert (= (and d!1585629 c!839277) b!4926991))

(assert (= (and d!1585629 (not c!839277)) b!4926992))

(declare-fun m!5945142 () Bool)

(assert (=> b!4926992 m!5945142))

(assert (=> b!4926689 d!1585629))

(assert (=> b!4926689 d!1585509))

(declare-fun d!1585631 () Bool)

(assert (=> d!1585631 (<= (size!37489 Nil!56697) (size!37489 lt!2026995))))

(declare-fun lt!2027594 () Unit!147242)

(assert (=> d!1585631 (= lt!2027594 (choose!36089 Nil!56697 lt!2026995))))

(assert (=> d!1585631 (isPrefix!4965 Nil!56697 lt!2026995)))

(assert (=> d!1585631 (= (lemmaIsPrefixThenSmallerEqSize!689 Nil!56697 lt!2026995) lt!2027594)))

(declare-fun bs!1179791 () Bool)

(assert (= bs!1179791 d!1585631))

(assert (=> bs!1179791 m!5944576))

(assert (=> bs!1179791 m!5944674))

(declare-fun m!5945144 () Bool)

(assert (=> bs!1179791 m!5945144))

(assert (=> bs!1179791 m!5945054))

(assert (=> b!4926689 d!1585631))

(assert (=> b!4926689 d!1585611))

(declare-fun d!1585633 () Bool)

(assert (=> d!1585633 (isPrefix!4965 (++!12330 Nil!56697 (Cons!56697 (head!10524 (getSuffix!2953 lt!2026995 Nil!56697)) Nil!56697)) lt!2026995)))

(declare-fun lt!2027595 () Unit!147242)

(assert (=> d!1585633 (= lt!2027595 (choose!36087 Nil!56697 lt!2026995))))

(assert (=> d!1585633 (isPrefix!4965 Nil!56697 lt!2026995)))

(assert (=> d!1585633 (= (lemmaAddHeadSuffixToPrefixStillPrefix!777 Nil!56697 lt!2026995) lt!2027595)))

(declare-fun bs!1179792 () Bool)

(assert (= bs!1179792 d!1585633))

(declare-fun m!5945146 () Bool)

(assert (=> bs!1179792 m!5945146))

(assert (=> bs!1179792 m!5945054))

(assert (=> bs!1179792 m!5944668))

(assert (=> bs!1179792 m!5944678))

(assert (=> bs!1179792 m!5944678))

(assert (=> bs!1179792 m!5944682))

(assert (=> bs!1179792 m!5944668))

(assert (=> bs!1179792 m!5944670))

(assert (=> b!4926689 d!1585633))

(declare-fun d!1585635 () Bool)

(assert (=> d!1585635 (= (head!10524 lt!2026995) (h!63145 lt!2026995))))

(assert (=> b!4926689 d!1585635))

(declare-fun b!4926993 () Bool)

(declare-fun e!3078434 () List!56821)

(assert (=> b!4926993 (= e!3078434 (Cons!56697 (head!10524 lt!2026995) Nil!56697))))

(declare-fun b!4926996 () Bool)

(declare-fun e!3078435 () Bool)

(declare-fun lt!2027602 () List!56821)

(assert (=> b!4926996 (= e!3078435 (or (not (= (Cons!56697 (head!10524 lt!2026995) Nil!56697) Nil!56697)) (= lt!2027602 Nil!56697)))))

(declare-fun b!4926995 () Bool)

(declare-fun res!2102840 () Bool)

(assert (=> b!4926995 (=> (not res!2102840) (not e!3078435))))

(assert (=> b!4926995 (= res!2102840 (= (size!37489 lt!2027602) (+ (size!37489 Nil!56697) (size!37489 (Cons!56697 (head!10524 lt!2026995) Nil!56697)))))))

(declare-fun d!1585637 () Bool)

(assert (=> d!1585637 e!3078435))

(declare-fun res!2102841 () Bool)

(assert (=> d!1585637 (=> (not res!2102841) (not e!3078435))))

(assert (=> d!1585637 (= res!2102841 (= (content!10073 lt!2027602) ((_ map or) (content!10073 Nil!56697) (content!10073 (Cons!56697 (head!10524 lt!2026995) Nil!56697)))))))

(assert (=> d!1585637 (= lt!2027602 e!3078434)))

(declare-fun c!839280 () Bool)

(assert (=> d!1585637 (= c!839280 ((_ is Nil!56697) Nil!56697))))

(assert (=> d!1585637 (= (++!12330 Nil!56697 (Cons!56697 (head!10524 lt!2026995) Nil!56697)) lt!2027602)))

(declare-fun b!4926994 () Bool)

(assert (=> b!4926994 (= e!3078434 (Cons!56697 (h!63145 Nil!56697) (++!12330 (t!367283 Nil!56697) (Cons!56697 (head!10524 lt!2026995) Nil!56697))))))

(assert (= (and d!1585637 c!839280) b!4926993))

(assert (= (and d!1585637 (not c!839280)) b!4926994))

(assert (= (and d!1585637 res!2102841) b!4926995))

(assert (= (and b!4926995 res!2102840) b!4926996))

(declare-fun m!5945148 () Bool)

(assert (=> b!4926995 m!5945148))

(assert (=> b!4926995 m!5944576))

(declare-fun m!5945150 () Bool)

(assert (=> b!4926995 m!5945150))

(declare-fun m!5945152 () Bool)

(assert (=> d!1585637 m!5945152))

(assert (=> d!1585637 m!5944740))

(declare-fun m!5945154 () Bool)

(assert (=> d!1585637 m!5945154))

(declare-fun m!5945156 () Bool)

(assert (=> b!4926994 m!5945156))

(assert (=> b!4926689 d!1585637))

(declare-fun b!4926997 () Bool)

(declare-fun e!3078438 () List!56821)

(assert (=> b!4926997 (= e!3078438 (Cons!56697 lt!2027437 Nil!56697))))

(declare-fun b!4927000 () Bool)

(declare-fun e!3078439 () Bool)

(declare-fun lt!2027603 () List!56821)

(assert (=> b!4927000 (= e!3078439 (or (not (= (Cons!56697 lt!2027437 Nil!56697) Nil!56697)) (= lt!2027603 Nil!56697)))))

(declare-fun b!4926999 () Bool)

(declare-fun res!2102842 () Bool)

(assert (=> b!4926999 (=> (not res!2102842) (not e!3078439))))

(assert (=> b!4926999 (= res!2102842 (= (size!37489 lt!2027603) (+ (size!37489 Nil!56697) (size!37489 (Cons!56697 lt!2027437 Nil!56697)))))))

(declare-fun d!1585639 () Bool)

(assert (=> d!1585639 e!3078439))

(declare-fun res!2102843 () Bool)

(assert (=> d!1585639 (=> (not res!2102843) (not e!3078439))))

(assert (=> d!1585639 (= res!2102843 (= (content!10073 lt!2027603) ((_ map or) (content!10073 Nil!56697) (content!10073 (Cons!56697 lt!2027437 Nil!56697)))))))

(assert (=> d!1585639 (= lt!2027603 e!3078438)))

(declare-fun c!839281 () Bool)

(assert (=> d!1585639 (= c!839281 ((_ is Nil!56697) Nil!56697))))

(assert (=> d!1585639 (= (++!12330 Nil!56697 (Cons!56697 lt!2027437 Nil!56697)) lt!2027603)))

(declare-fun b!4926998 () Bool)

(assert (=> b!4926998 (= e!3078438 (Cons!56697 (h!63145 Nil!56697) (++!12330 (t!367283 Nil!56697) (Cons!56697 lt!2027437 Nil!56697))))))

(assert (= (and d!1585639 c!839281) b!4926997))

(assert (= (and d!1585639 (not c!839281)) b!4926998))

(assert (= (and d!1585639 res!2102843) b!4926999))

(assert (= (and b!4926999 res!2102842) b!4927000))

(declare-fun m!5945158 () Bool)

(assert (=> b!4926999 m!5945158))

(assert (=> b!4926999 m!5944576))

(declare-fun m!5945160 () Bool)

(assert (=> b!4926999 m!5945160))

(declare-fun m!5945162 () Bool)

(assert (=> d!1585639 m!5945162))

(assert (=> d!1585639 m!5944740))

(declare-fun m!5945164 () Bool)

(assert (=> d!1585639 m!5945164))

(declare-fun m!5945166 () Bool)

(assert (=> b!4926998 m!5945166))

(assert (=> b!4926689 d!1585639))

(declare-fun d!1585641 () Bool)

(assert (=> d!1585641 (= (head!10524 (getSuffix!2953 lt!2026995 Nil!56697)) (h!63145 (getSuffix!2953 lt!2026995 Nil!56697)))))

(assert (=> b!4926689 d!1585641))

(declare-fun b!4927004 () Bool)

(declare-fun e!3078442 () Bool)

(assert (=> b!4927004 (= e!3078442 (>= (size!37489 lt!2026995) (size!37489 (++!12330 Nil!56697 (Cons!56697 (head!10524 (getSuffix!2953 lt!2026995 Nil!56697)) Nil!56697)))))))

(declare-fun d!1585643 () Bool)

(assert (=> d!1585643 e!3078442))

(declare-fun res!2102844 () Bool)

(assert (=> d!1585643 (=> res!2102844 e!3078442)))

(declare-fun lt!2027604 () Bool)

(assert (=> d!1585643 (= res!2102844 (not lt!2027604))))

(declare-fun e!3078441 () Bool)

(assert (=> d!1585643 (= lt!2027604 e!3078441)))

(declare-fun res!2102846 () Bool)

(assert (=> d!1585643 (=> res!2102846 e!3078441)))

(assert (=> d!1585643 (= res!2102846 ((_ is Nil!56697) (++!12330 Nil!56697 (Cons!56697 (head!10524 (getSuffix!2953 lt!2026995 Nil!56697)) Nil!56697))))))

(assert (=> d!1585643 (= (isPrefix!4965 (++!12330 Nil!56697 (Cons!56697 (head!10524 (getSuffix!2953 lt!2026995 Nil!56697)) Nil!56697)) lt!2026995) lt!2027604)))

(declare-fun b!4927002 () Bool)

(declare-fun res!2102845 () Bool)

(declare-fun e!3078440 () Bool)

(assert (=> b!4927002 (=> (not res!2102845) (not e!3078440))))

(assert (=> b!4927002 (= res!2102845 (= (head!10524 (++!12330 Nil!56697 (Cons!56697 (head!10524 (getSuffix!2953 lt!2026995 Nil!56697)) Nil!56697))) (head!10524 lt!2026995)))))

(declare-fun b!4927001 () Bool)

(assert (=> b!4927001 (= e!3078441 e!3078440)))

(declare-fun res!2102847 () Bool)

(assert (=> b!4927001 (=> (not res!2102847) (not e!3078440))))

(assert (=> b!4927001 (= res!2102847 (not ((_ is Nil!56697) lt!2026995)))))

(declare-fun b!4927003 () Bool)

(assert (=> b!4927003 (= e!3078440 (isPrefix!4965 (tail!9671 (++!12330 Nil!56697 (Cons!56697 (head!10524 (getSuffix!2953 lt!2026995 Nil!56697)) Nil!56697))) (tail!9671 lt!2026995)))))

(assert (= (and d!1585643 (not res!2102846)) b!4927001))

(assert (= (and b!4927001 res!2102847) b!4927002))

(assert (= (and b!4927002 res!2102845) b!4927003))

(assert (= (and d!1585643 (not res!2102844)) b!4927004))

(assert (=> b!4927004 m!5944674))

(assert (=> b!4927004 m!5944668))

(declare-fun m!5945168 () Bool)

(assert (=> b!4927004 m!5945168))

(assert (=> b!4927002 m!5944668))

(declare-fun m!5945170 () Bool)

(assert (=> b!4927002 m!5945170))

(assert (=> b!4927002 m!5944672))

(assert (=> b!4927003 m!5944668))

(declare-fun m!5945172 () Bool)

(assert (=> b!4927003 m!5945172))

(assert (=> b!4927003 m!5944554))

(assert (=> b!4927003 m!5945172))

(assert (=> b!4927003 m!5944554))

(declare-fun m!5945174 () Bool)

(assert (=> b!4927003 m!5945174))

(assert (=> b!4926689 d!1585643))

(declare-fun d!1585645 () Bool)

(assert (=> d!1585645 (isPrefix!4965 lt!2026995 lt!2026995)))

(declare-fun lt!2027607 () Unit!147242)

(declare-fun choose!36095 (List!56821 List!56821) Unit!147242)

(assert (=> d!1585645 (= lt!2027607 (choose!36095 lt!2026995 lt!2026995))))

(assert (=> d!1585645 (= (lemmaIsPrefixRefl!3361 lt!2026995 lt!2026995) lt!2027607)))

(declare-fun bs!1179793 () Bool)

(assert (= bs!1179793 d!1585645))

(assert (=> bs!1179793 m!5944696))

(declare-fun m!5945176 () Bool)

(assert (=> bs!1179793 m!5945176))

(assert (=> bm!343652 d!1585645))

(declare-fun d!1585647 () Bool)

(declare-fun res!2102852 () Bool)

(declare-fun e!3078448 () Bool)

(assert (=> d!1585647 (=> res!2102852 e!3078448)))

(assert (=> d!1585647 (= res!2102852 ((_ is Nil!56698) (exprs!3519 setElem!27550)))))

(assert (=> d!1585647 (= (forall!13140 (exprs!3519 setElem!27550) lambda!245281) e!3078448)))

(declare-fun b!4927011 () Bool)

(declare-fun e!3078449 () Bool)

(assert (=> b!4927011 (= e!3078448 e!3078449)))

(declare-fun res!2102853 () Bool)

(assert (=> b!4927011 (=> (not res!2102853) (not e!3078449))))

(declare-fun dynLambda!23011 (Int Regex!13377) Bool)

(assert (=> b!4927011 (= res!2102853 (dynLambda!23011 lambda!245281 (h!63146 (exprs!3519 setElem!27550))))))

(declare-fun b!4927012 () Bool)

(assert (=> b!4927012 (= e!3078449 (forall!13140 (t!367284 (exprs!3519 setElem!27550)) lambda!245281))))

(assert (= (and d!1585647 (not res!2102852)) b!4927011))

(assert (= (and b!4927011 res!2102853) b!4927012))

(declare-fun b_lambda!196297 () Bool)

(assert (=> (not b_lambda!196297) (not b!4927011)))

(declare-fun m!5945186 () Bool)

(assert (=> b!4927011 m!5945186))

(declare-fun m!5945190 () Bool)

(assert (=> b!4927012 m!5945190))

(assert (=> d!1585443 d!1585647))

(declare-fun d!1585649 () Bool)

(assert (=> d!1585649 (= (isEmpty!30579 (_1!33899 lt!2027415)) ((_ is Nil!56697) (_1!33899 lt!2027415)))))

(assert (=> b!4926701 d!1585649))

(declare-fun b!4927033 () Bool)

(declare-fun res!2102872 () Bool)

(declare-fun e!3078459 () Bool)

(assert (=> b!4927033 (=> (not res!2102872) (not e!3078459))))

(assert (=> b!4927033 (= res!2102872 (isBalanced!4089 (left!41344 (c!839087 (_1!33900 lt!2027359)))))))

(declare-fun b!4927034 () Bool)

(declare-fun res!2102875 () Bool)

(assert (=> b!4927034 (=> (not res!2102875) (not e!3078459))))

(declare-fun height!1986 (Conc!14876) Int)

(assert (=> b!4927034 (= res!2102875 (<= (- (height!1986 (left!41344 (c!839087 (_1!33900 lt!2027359)))) (height!1986 (right!41674 (c!839087 (_1!33900 lt!2027359))))) 1))))

(declare-fun b!4927035 () Bool)

(declare-fun res!2102874 () Bool)

(assert (=> b!4927035 (=> (not res!2102874) (not e!3078459))))

(declare-fun isEmpty!30583 (Conc!14876) Bool)

(assert (=> b!4927035 (= res!2102874 (not (isEmpty!30583 (left!41344 (c!839087 (_1!33900 lt!2027359))))))))

(declare-fun b!4927036 () Bool)

(declare-fun res!2102871 () Bool)

(assert (=> b!4927036 (=> (not res!2102871) (not e!3078459))))

(assert (=> b!4927036 (= res!2102871 (isBalanced!4089 (right!41674 (c!839087 (_1!33900 lt!2027359)))))))

(declare-fun b!4927037 () Bool)

(declare-fun e!3078458 () Bool)

(assert (=> b!4927037 (= e!3078458 e!3078459)))

(declare-fun res!2102870 () Bool)

(assert (=> b!4927037 (=> (not res!2102870) (not e!3078459))))

(assert (=> b!4927037 (= res!2102870 (<= (- 1) (- (height!1986 (left!41344 (c!839087 (_1!33900 lt!2027359)))) (height!1986 (right!41674 (c!839087 (_1!33900 lt!2027359)))))))))

(declare-fun d!1585653 () Bool)

(declare-fun res!2102873 () Bool)

(assert (=> d!1585653 (=> res!2102873 e!3078458)))

(assert (=> d!1585653 (= res!2102873 (not ((_ is Node!14876) (c!839087 (_1!33900 lt!2027359)))))))

(assert (=> d!1585653 (= (isBalanced!4089 (c!839087 (_1!33900 lt!2027359))) e!3078458)))

(declare-fun b!4927038 () Bool)

(assert (=> b!4927038 (= e!3078459 (not (isEmpty!30583 (right!41674 (c!839087 (_1!33900 lt!2027359))))))))

(assert (= (and d!1585653 (not res!2102873)) b!4927037))

(assert (= (and b!4927037 res!2102870) b!4927034))

(assert (= (and b!4927034 res!2102875) b!4927033))

(assert (= (and b!4927033 res!2102872) b!4927036))

(assert (= (and b!4927036 res!2102871) b!4927035))

(assert (= (and b!4927035 res!2102874) b!4927038))

(declare-fun m!5945224 () Bool)

(assert (=> b!4927035 m!5945224))

(declare-fun m!5945226 () Bool)

(assert (=> b!4927036 m!5945226))

(declare-fun m!5945228 () Bool)

(assert (=> b!4927034 m!5945228))

(declare-fun m!5945230 () Bool)

(assert (=> b!4927034 m!5945230))

(assert (=> b!4927037 m!5945228))

(assert (=> b!4927037 m!5945230))

(declare-fun m!5945232 () Bool)

(assert (=> b!4927038 m!5945232))

(declare-fun m!5945234 () Bool)

(assert (=> b!4927033 m!5945234))

(assert (=> d!1585483 d!1585653))

(declare-fun e!3078578 () Int)

(declare-fun b!4927225 () Bool)

(assert (=> b!4927225 (= e!3078578 (findLongestMatchInnerZipperFast!89 z!3559 Nil!56697 0 lt!2026995 input!5492 lt!2026996))))

(declare-fun b!4927226 () Bool)

(declare-fun lt!2027736 () tuple2!61198)

(declare-fun call!343710 () tuple2!61198)

(assert (=> b!4927226 (= lt!2027736 call!343710)))

(declare-fun e!3078572 () tuple2!61198)

(declare-fun call!343711 () Conc!14876)

(assert (=> b!4927226 (= e!3078572 (tuple2!61199 call!343711 (_2!33902 lt!2027736)))))

(declare-fun lt!2027738 () List!56821)

(declare-fun bm!343702 () Bool)

(declare-fun lt!2027730 () List!56821)

(declare-fun call!343707 () List!56821)

(declare-fun lt!2027740 () tuple2!61192)

(declare-fun lt!2027734 () tuple2!61192)

(declare-fun c!839354 () Bool)

(assert (=> bm!343702 (= call!343707 (++!12330 (ite c!839354 (_2!33899 lt!2027740) lt!2027730) (ite c!839354 lt!2027738 (_1!33899 lt!2027734))))))

(declare-fun lt!2027735 () tuple2!61198)

(declare-fun bm!343703 () Bool)

(declare-fun c!839345 () Bool)

(declare-fun ++!12331 (Conc!14876 Conc!14876) Conc!14876)

(assert (=> bm!343703 (= call!343711 (++!12331 (ite c!839345 (_2!33902 lt!2027735) (left!41344 (c!839087 input!5492))) (ite c!839345 (right!41674 (c!839087 input!5492)) (_1!33902 lt!2027736))))))

(declare-fun b!4927227 () Bool)

(assert (=> b!4927227 (= e!3078578 (- (findLongestMatchInnerZipperFast!89 z!3559 Nil!56697 0 lt!2026995 input!5492 lt!2026996) (size!37492 (left!41344 (c!839087 input!5492)))))))

(declare-fun b!4927228 () Bool)

(assert (=> b!4927228 (= lt!2027735 call!343710)))

(assert (=> b!4927228 (= e!3078572 (tuple2!61199 (_1!33902 lt!2027735) call!343711))))

(declare-fun c!839347 () Bool)

(declare-fun b!4927229 () Bool)

(assert (=> b!4927229 (= c!839347 (<= (findLongestMatchInnerZipperFast!89 z!3559 Nil!56697 0 lt!2026995 input!5492 lt!2026996) 0))))

(declare-fun e!3078575 () tuple2!61198)

(declare-fun e!3078573 () tuple2!61198)

(assert (=> b!4927229 (= e!3078575 e!3078573)))

(declare-fun call!343708 () Int)

(declare-fun e!3078570 () Int)

(declare-fun b!4927230 () Bool)

(assert (=> b!4927230 (= e!3078570 (- (findLongestMatchInnerZipperFast!89 z!3559 Nil!56697 0 lt!2026995 input!5492 lt!2026996) call!343708))))

(declare-fun bm!343704 () Bool)

(declare-fun c!839349 () Bool)

(assert (=> bm!343704 (= c!839349 c!839354)))

(declare-fun call!343712 () tuple2!61192)

(declare-fun call!343709 () tuple2!61192)

(assert (=> bm!343704 (= call!343712 call!343709)))

(declare-fun b!4927231 () Bool)

(assert (=> b!4927231 (= lt!2027734 call!343712)))

(declare-fun e!3078567 () tuple2!61192)

(assert (=> b!4927231 (= e!3078567 (tuple2!61193 call!343707 (_2!33899 lt!2027734)))))

(declare-fun b!4927232 () Bool)

(declare-fun lt!2027733 () Unit!147242)

(declare-fun lt!2027731 () Unit!147242)

(assert (=> b!4927232 (= lt!2027733 lt!2027731)))

(declare-fun lt!2027737 () List!56821)

(declare-fun slice!774 (List!56821 Int Int) List!56821)

(assert (=> b!4927232 (= (drop!2227 lt!2027737 (findLongestMatchInnerZipperFast!89 z!3559 Nil!56697 0 lt!2026995 input!5492 lt!2026996)) (slice!774 lt!2027737 (findLongestMatchInnerZipperFast!89 z!3559 Nil!56697 0 lt!2026995 input!5492 lt!2026996) call!343708))))

(declare-fun dropLemma!29 (List!56821 Int) Unit!147242)

(assert (=> b!4927232 (= lt!2027731 (dropLemma!29 lt!2027737 (findLongestMatchInnerZipperFast!89 z!3559 Nil!56697 0 lt!2026995 input!5492 lt!2026996)))))

(assert (=> b!4927232 (= lt!2027737 (list!17963 (xs!18198 (c!839087 input!5492))))))

(declare-fun lt!2027732 () tuple2!61192)

(assert (=> b!4927232 (= lt!2027732 call!343709)))

(declare-fun e!3078569 () tuple2!61198)

(declare-fun slice!775 (IArray!29813 Int Int) IArray!29813)

(assert (=> b!4927232 (= e!3078569 (tuple2!61199 (Leaf!24747 (slice!775 (xs!18198 (c!839087 input!5492)) 0 (findLongestMatchInnerZipperFast!89 z!3559 Nil!56697 0 lt!2026995 input!5492 lt!2026996)) (findLongestMatchInnerZipperFast!89 z!3559 Nil!56697 0 lt!2026995 input!5492 lt!2026996)) (Leaf!24747 (slice!775 (xs!18198 (c!839087 input!5492)) (findLongestMatchInnerZipperFast!89 z!3559 Nil!56697 0 lt!2026995 input!5492 lt!2026996) (csize!29983 (c!839087 input!5492))) (- (csize!29983 (c!839087 input!5492)) (findLongestMatchInnerZipperFast!89 z!3559 Nil!56697 0 lt!2026995 input!5492 lt!2026996)))))))

(declare-fun b!4927233 () Bool)

(declare-fun e!3078577 () tuple2!61198)

(assert (=> b!4927233 (= e!3078577 (tuple2!61199 (left!41344 (c!839087 input!5492)) (right!41674 (c!839087 input!5492))))))

(declare-fun b!4927234 () Bool)

(declare-fun e!3078571 () tuple2!61192)

(assert (=> b!4927234 (= e!3078571 e!3078567)))

(assert (=> b!4927234 (= c!839354 (< (findLongestMatchInnerZipperFast!89 z!3559 Nil!56697 0 lt!2026995 input!5492 lt!2026996) call!343708))))

(declare-fun b!4927235 () Bool)

(declare-fun e!3078568 () tuple2!61198)

(assert (=> b!4927235 (= e!3078568 e!3078575)))

(declare-fun c!839351 () Bool)

(assert (=> b!4927235 (= c!839351 ((_ is Leaf!24747) (c!839087 input!5492)))))

(declare-fun b!4927236 () Bool)

(declare-fun e!3078574 () List!56821)

(assert (=> b!4927236 (= e!3078574 (list!17963 (xs!18198 (c!839087 input!5492))))))

(declare-fun b!4927237 () Bool)

(assert (=> b!4927237 (= lt!2027740 call!343712)))

(assert (=> b!4927237 (= e!3078567 (tuple2!61193 (_1!33899 lt!2027740) call!343707))))

(declare-fun bm!343705 () Bool)

(declare-fun c!839346 () Bool)

(assert (=> bm!343705 (= c!839346 c!839351)))

(assert (=> bm!343705 (= call!343709 (splitAtIndex!105 e!3078574 (ite c!839351 (findLongestMatchInnerZipperFast!89 z!3559 Nil!56697 0 lt!2026995 input!5492 lt!2026996) e!3078570)))))

(declare-fun b!4927238 () Bool)

(assert (=> b!4927238 (= e!3078573 e!3078569)))

(declare-fun c!839348 () Bool)

(assert (=> b!4927238 (= c!839348 (= (findLongestMatchInnerZipperFast!89 z!3559 Nil!56697 0 lt!2026995 input!5492 lt!2026996) (csize!29983 (c!839087 input!5492))))))

(declare-fun b!4927239 () Bool)

(assert (=> b!4927239 (= e!3078568 (tuple2!61199 (c!839087 input!5492) (c!839087 input!5492)))))

(declare-fun d!1585663 () Bool)

(declare-fun e!3078576 () Bool)

(assert (=> d!1585663 e!3078576))

(declare-fun res!2102948 () Bool)

(assert (=> d!1585663 (=> (not res!2102948) (not e!3078576))))

(declare-fun lt!2027728 () tuple2!61198)

(assert (=> d!1585663 (= res!2102948 (isBalanced!4089 (_1!33902 lt!2027728)))))

(assert (=> d!1585663 (= lt!2027728 e!3078568)))

(declare-fun c!839344 () Bool)

(assert (=> d!1585663 (= c!839344 ((_ is Empty!14876) (c!839087 input!5492)))))

(assert (=> d!1585663 (isBalanced!4089 (c!839087 input!5492))))

(assert (=> d!1585663 (= (splitAt!279 (c!839087 input!5492) (findLongestMatchInnerZipperFast!89 z!3559 Nil!56697 0 lt!2026995 input!5492 lt!2026996)) lt!2027728)))

(declare-fun bm!343706 () Bool)

(assert (=> bm!343706 (= call!343708 (size!37489 (ite c!839351 lt!2027737 lt!2027730)))))

(declare-fun b!4927240 () Bool)

(declare-fun res!2102949 () Bool)

(assert (=> b!4927240 (=> (not res!2102949) (not e!3078576))))

(assert (=> b!4927240 (= res!2102949 (isBalanced!4089 (_2!33902 lt!2027728)))))

(declare-fun b!4927241 () Bool)

(assert (=> b!4927241 (= e!3078573 (tuple2!61199 Empty!14876 (c!839087 input!5492)))))

(declare-fun b!4927242 () Bool)

(declare-fun c!839352 () Bool)

(assert (=> b!4927242 (= c!839352 (= (size!37492 (left!41344 (c!839087 input!5492))) (findLongestMatchInnerZipperFast!89 z!3559 Nil!56697 0 lt!2026995 input!5492 lt!2026996)))))

(declare-fun lt!2027729 () Unit!147242)

(declare-fun lt!2027739 () Unit!147242)

(assert (=> b!4927242 (= lt!2027729 lt!2027739)))

(assert (=> b!4927242 (= (splitAtIndex!105 (++!12330 lt!2027730 lt!2027738) (findLongestMatchInnerZipperFast!89 z!3559 Nil!56697 0 lt!2026995 input!5492 lt!2026996)) e!3078571)))

(declare-fun c!839353 () Bool)

(assert (=> b!4927242 (= c!839353 (= call!343708 (findLongestMatchInnerZipperFast!89 z!3559 Nil!56697 0 lt!2026995 input!5492 lt!2026996)))))

(declare-fun splitAtLemma!29 (List!56821 List!56821 Int) Unit!147242)

(assert (=> b!4927242 (= lt!2027739 (splitAtLemma!29 lt!2027730 lt!2027738 (findLongestMatchInnerZipperFast!89 z!3559 Nil!56697 0 lt!2026995 input!5492 lt!2026996)))))

(assert (=> b!4927242 (= lt!2027738 (list!17961 (right!41674 (c!839087 input!5492))))))

(assert (=> b!4927242 (= lt!2027730 (list!17961 (left!41344 (c!839087 input!5492))))))

(assert (=> b!4927242 (= e!3078575 e!3078577)))

(declare-fun b!4927243 () Bool)

(assert (=> b!4927243 (= e!3078570 (findLongestMatchInnerZipperFast!89 z!3559 Nil!56697 0 lt!2026995 input!5492 lt!2026996))))

(declare-fun b!4927244 () Bool)

(assert (=> b!4927244 (= e!3078574 (ite c!839354 lt!2027730 lt!2027738))))

(declare-fun bm!343707 () Bool)

(declare-fun c!839350 () Bool)

(assert (=> bm!343707 (= c!839350 c!839345)))

(assert (=> bm!343707 (= call!343710 (splitAt!279 (ite c!839345 (left!41344 (c!839087 input!5492)) (right!41674 (c!839087 input!5492))) e!3078578))))

(declare-fun b!4927245 () Bool)

(assert (=> b!4927245 (= e!3078576 (= (tuple2!61193 (list!17961 (_1!33902 lt!2027728)) (list!17961 (_2!33902 lt!2027728))) (splitAtIndex!105 (list!17961 (c!839087 input!5492)) (findLongestMatchInnerZipperFast!89 z!3559 Nil!56697 0 lt!2026995 input!5492 lt!2026996))))))

(declare-fun b!4927246 () Bool)

(assert (=> b!4927246 (= e!3078577 e!3078572)))

(assert (=> b!4927246 (= c!839345 (< (findLongestMatchInnerZipperFast!89 z!3559 Nil!56697 0 lt!2026995 input!5492 lt!2026996) (size!37492 (left!41344 (c!839087 input!5492)))))))

(declare-fun b!4927247 () Bool)

(assert (=> b!4927247 (= e!3078569 (tuple2!61199 (c!839087 input!5492) Empty!14876))))

(declare-fun b!4927248 () Bool)

(assert (=> b!4927248 (= e!3078571 (tuple2!61193 lt!2027730 lt!2027738))))

(assert (= (and d!1585663 c!839344) b!4927239))

(assert (= (and d!1585663 (not c!839344)) b!4927235))

(assert (= (and b!4927235 c!839351) b!4927229))

(assert (= (and b!4927235 (not c!839351)) b!4927242))

(assert (= (and b!4927229 c!839347) b!4927241))

(assert (= (and b!4927229 (not c!839347)) b!4927238))

(assert (= (and b!4927238 c!839348) b!4927247))

(assert (= (and b!4927238 (not c!839348)) b!4927232))

(assert (= (and b!4927242 c!839353) b!4927248))

(assert (= (and b!4927242 (not c!839353)) b!4927234))

(assert (= (and b!4927234 c!839354) b!4927237))

(assert (= (and b!4927234 (not c!839354)) b!4927231))

(assert (= (or b!4927237 b!4927231) bm!343702))

(assert (= (or b!4927237 b!4927231) bm!343704))

(assert (= (and bm!343704 c!839349) b!4927243))

(assert (= (and bm!343704 (not c!839349)) b!4927230))

(assert (= (and b!4927242 c!839352) b!4927233))

(assert (= (and b!4927242 (not c!839352)) b!4927246))

(assert (= (and b!4927246 c!839345) b!4927228))

(assert (= (and b!4927246 (not c!839345)) b!4927226))

(assert (= (or b!4927228 b!4927226) bm!343703))

(assert (= (or b!4927228 b!4927226) bm!343707))

(assert (= (and bm!343707 c!839350) b!4927225))

(assert (= (and bm!343707 (not c!839350)) b!4927227))

(assert (= (or b!4927232 b!4927230 b!4927242 b!4927234) bm!343706))

(assert (= (or b!4927232 bm!343704) bm!343705))

(assert (= (and bm!343705 c!839346) b!4927236))

(assert (= (and bm!343705 (not c!839346)) b!4927244))

(assert (= (and d!1585663 res!2102948) b!4927240))

(assert (= (and b!4927240 res!2102949) b!4927245))

(declare-fun m!5945486 () Bool)

(assert (=> b!4927240 m!5945486))

(declare-fun m!5945488 () Bool)

(assert (=> b!4927227 m!5945488))

(declare-fun m!5945490 () Bool)

(assert (=> bm!343707 m!5945490))

(declare-fun m!5945494 () Bool)

(assert (=> bm!343706 m!5945494))

(assert (=> b!4927232 m!5944352))

(declare-fun m!5945498 () Bool)

(assert (=> b!4927232 m!5945498))

(assert (=> b!4927232 m!5944352))

(declare-fun m!5945500 () Bool)

(assert (=> b!4927232 m!5945500))

(assert (=> b!4927232 m!5944352))

(declare-fun m!5945502 () Bool)

(assert (=> b!4927232 m!5945502))

(assert (=> b!4927232 m!5945112))

(assert (=> b!4927232 m!5944352))

(declare-fun m!5945504 () Bool)

(assert (=> b!4927232 m!5945504))

(assert (=> b!4927232 m!5944352))

(declare-fun m!5945506 () Bool)

(assert (=> b!4927232 m!5945506))

(declare-fun m!5945508 () Bool)

(assert (=> d!1585663 m!5945508))

(assert (=> d!1585663 m!5944640))

(assert (=> b!4927246 m!5945488))

(declare-fun m!5945510 () Bool)

(assert (=> bm!343703 m!5945510))

(declare-fun m!5945512 () Bool)

(assert (=> bm!343702 m!5945512))

(declare-fun m!5945514 () Bool)

(assert (=> bm!343705 m!5945514))

(declare-fun m!5945516 () Bool)

(assert (=> b!4927242 m!5945516))

(assert (=> b!4927242 m!5945108))

(assert (=> b!4927242 m!5945516))

(assert (=> b!4927242 m!5944352))

(declare-fun m!5945522 () Bool)

(assert (=> b!4927242 m!5945522))

(assert (=> b!4927242 m!5944352))

(declare-fun m!5945528 () Bool)

(assert (=> b!4927242 m!5945528))

(assert (=> b!4927242 m!5945106))

(assert (=> b!4927242 m!5945488))

(assert (=> b!4927236 m!5945112))

(declare-fun m!5945536 () Bool)

(assert (=> b!4927245 m!5945536))

(declare-fun m!5945538 () Bool)

(assert (=> b!4927245 m!5945538))

(assert (=> b!4927245 m!5944706))

(assert (=> b!4927245 m!5944706))

(assert (=> b!4927245 m!5944352))

(declare-fun m!5945540 () Bool)

(assert (=> b!4927245 m!5945540))

(assert (=> d!1585483 d!1585663))

(declare-fun b!4927255 () Bool)

(declare-fun res!2102954 () Bool)

(declare-fun e!3078583 () Bool)

(assert (=> b!4927255 (=> (not res!2102954) (not e!3078583))))

(assert (=> b!4927255 (= res!2102954 (isBalanced!4089 (left!41344 (c!839087 input!5492))))))

(declare-fun b!4927258 () Bool)

(declare-fun res!2102957 () Bool)

(assert (=> b!4927258 (=> (not res!2102957) (not e!3078583))))

(assert (=> b!4927258 (= res!2102957 (<= (- (height!1986 (left!41344 (c!839087 input!5492))) (height!1986 (right!41674 (c!839087 input!5492)))) 1))))

(declare-fun b!4927259 () Bool)

(declare-fun res!2102956 () Bool)

(assert (=> b!4927259 (=> (not res!2102956) (not e!3078583))))

(assert (=> b!4927259 (= res!2102956 (not (isEmpty!30583 (left!41344 (c!839087 input!5492)))))))

(declare-fun b!4927260 () Bool)

(declare-fun res!2102953 () Bool)

(assert (=> b!4927260 (=> (not res!2102953) (not e!3078583))))

(assert (=> b!4927260 (= res!2102953 (isBalanced!4089 (right!41674 (c!839087 input!5492))))))

(declare-fun b!4927261 () Bool)

(declare-fun e!3078582 () Bool)

(assert (=> b!4927261 (= e!3078582 e!3078583)))

(declare-fun res!2102952 () Bool)

(assert (=> b!4927261 (=> (not res!2102952) (not e!3078583))))

(assert (=> b!4927261 (= res!2102952 (<= (- 1) (- (height!1986 (left!41344 (c!839087 input!5492))) (height!1986 (right!41674 (c!839087 input!5492))))))))

(declare-fun d!1585757 () Bool)

(declare-fun res!2102955 () Bool)

(assert (=> d!1585757 (=> res!2102955 e!3078582)))

(assert (=> d!1585757 (= res!2102955 (not ((_ is Node!14876) (c!839087 input!5492))))))

(assert (=> d!1585757 (= (isBalanced!4089 (c!839087 input!5492)) e!3078582)))

(declare-fun b!4927262 () Bool)

(assert (=> b!4927262 (= e!3078583 (not (isEmpty!30583 (right!41674 (c!839087 input!5492)))))))

(assert (= (and d!1585757 (not res!2102955)) b!4927261))

(assert (= (and b!4927261 res!2102952) b!4927258))

(assert (= (and b!4927258 res!2102957) b!4927255))

(assert (= (and b!4927255 res!2102954) b!4927260))

(assert (= (and b!4927260 res!2102953) b!4927259))

(assert (= (and b!4927259 res!2102956) b!4927262))

(declare-fun m!5945546 () Bool)

(assert (=> b!4927259 m!5945546))

(declare-fun m!5945550 () Bool)

(assert (=> b!4927260 m!5945550))

(declare-fun m!5945552 () Bool)

(assert (=> b!4927258 m!5945552))

(declare-fun m!5945554 () Bool)

(assert (=> b!4927258 m!5945554))

(assert (=> b!4927261 m!5945552))

(assert (=> b!4927261 m!5945554))

(declare-fun m!5945556 () Bool)

(assert (=> b!4927262 m!5945556))

(declare-fun m!5945558 () Bool)

(assert (=> b!4927255 m!5945558))

(assert (=> d!1585483 d!1585757))

(declare-fun d!1585765 () Bool)

(assert (=> d!1585765 (= (ite c!839148 lt!2027305 lt!2027341) Nil!56697)))

(declare-fun lt!2027748 () Unit!147242)

(assert (=> d!1585765 (= lt!2027748 (choose!36084 (ite c!839148 lt!2027305 lt!2027341) Nil!56697 e!3078218))))

(assert (=> d!1585765 (isPrefix!4965 (ite c!839148 lt!2027305 lt!2027341) e!3078218)))

(assert (=> d!1585765 (= (lemmaIsPrefixSameLengthThenSameList!1123 (ite c!839148 lt!2027305 lt!2027341) Nil!56697 e!3078218) lt!2027748)))

(declare-fun bs!1179819 () Bool)

(assert (= bs!1179819 d!1585765))

(declare-fun m!5945560 () Bool)

(assert (=> bs!1179819 m!5945560))

(declare-fun m!5945564 () Bool)

(assert (=> bs!1179819 m!5945564))

(assert (=> bm!343628 d!1585765))

(declare-fun d!1585767 () Bool)

(assert (=> d!1585767 (= (list!17959 (ite c!839148 input!5492 (_1!33900 lt!2027332))) (list!17961 (c!839087 (ite c!839148 input!5492 (_1!33900 lt!2027332)))))))

(declare-fun bs!1179820 () Bool)

(assert (= bs!1179820 d!1585767))

(declare-fun m!5945574 () Bool)

(assert (=> bs!1179820 m!5945574))

(assert (=> bm!343623 d!1585767))

(declare-fun b!4927273 () Bool)

(declare-fun e!3078589 () tuple2!61192)

(assert (=> b!4927273 (= e!3078589 (tuple2!61193 Nil!56697 (list!17959 input!5492)))))

(declare-fun bm!343708 () Bool)

(declare-fun call!343717 () Unit!147242)

(assert (=> bm!343708 (= call!343717 (lemmaIsPrefixSameLengthThenSameList!1123 (list!17959 input!5492) Nil!56697 (list!17959 input!5492)))))

(declare-fun bm!343709 () Bool)

(declare-fun call!343714 () List!56821)

(assert (=> bm!343709 (= call!343714 (tail!9671 lt!2026995))))

(declare-fun b!4927274 () Bool)

(declare-fun c!839362 () Bool)

(declare-fun call!343715 () Bool)

(assert (=> b!4927274 (= c!839362 call!343715)))

(declare-fun lt!2027768 () Unit!147242)

(declare-fun lt!2027771 () Unit!147242)

(assert (=> b!4927274 (= lt!2027768 lt!2027771)))

(declare-fun lt!2027774 () C!26964)

(declare-fun lt!2027773 () List!56821)

(assert (=> b!4927274 (= (++!12330 (++!12330 Nil!56697 (Cons!56697 lt!2027774 Nil!56697)) lt!2027773) (list!17959 input!5492))))

(assert (=> b!4927274 (= lt!2027771 (lemmaMoveElementToOtherListKeepsConcatEq!1395 Nil!56697 lt!2027774 lt!2027773 (list!17959 input!5492)))))

(assert (=> b!4927274 (= lt!2027773 (tail!9671 lt!2026995))))

(assert (=> b!4927274 (= lt!2027774 (head!10524 lt!2026995))))

(declare-fun lt!2027769 () Unit!147242)

(declare-fun lt!2027767 () Unit!147242)

(assert (=> b!4927274 (= lt!2027769 lt!2027767)))

(assert (=> b!4927274 (isPrefix!4965 (++!12330 Nil!56697 (Cons!56697 (head!10524 (getSuffix!2953 (list!17959 input!5492) Nil!56697)) Nil!56697)) (list!17959 input!5492))))

(assert (=> b!4927274 (= lt!2027767 (lemmaAddHeadSuffixToPrefixStillPrefix!777 Nil!56697 (list!17959 input!5492)))))

(declare-fun lt!2027754 () List!56821)

(assert (=> b!4927274 (= lt!2027754 (++!12330 Nil!56697 (Cons!56697 (head!10524 lt!2026995) Nil!56697)))))

(declare-fun lt!2027751 () Unit!147242)

(declare-fun e!3078591 () Unit!147242)

(assert (=> b!4927274 (= lt!2027751 e!3078591)))

(declare-fun c!839360 () Bool)

(assert (=> b!4927274 (= c!839360 (= (size!37489 Nil!56697) (size!37489 (list!17959 input!5492))))))

(declare-fun lt!2027753 () Unit!147242)

(declare-fun lt!2027756 () Unit!147242)

(assert (=> b!4927274 (= lt!2027753 lt!2027756)))

(assert (=> b!4927274 (<= (size!37489 Nil!56697) (size!37489 (list!17959 input!5492)))))

(assert (=> b!4927274 (= lt!2027756 (lemmaIsPrefixThenSmallerEqSize!689 Nil!56697 (list!17959 input!5492)))))

(declare-fun e!3078593 () tuple2!61192)

(declare-fun e!3078594 () tuple2!61192)

(assert (=> b!4927274 (= e!3078593 e!3078594)))

(declare-fun b!4927275 () Bool)

(declare-fun e!3078592 () tuple2!61192)

(assert (=> b!4927275 (= e!3078592 (tuple2!61193 Nil!56697 (list!17959 input!5492)))))

(declare-fun bm!343710 () Bool)

(declare-fun call!343719 () Bool)

(assert (=> bm!343710 (= call!343719 (isPrefix!4965 (list!17959 input!5492) (list!17959 input!5492)))))

(declare-fun b!4927276 () Bool)

(declare-fun e!3078590 () tuple2!61192)

(declare-fun lt!2027770 () tuple2!61192)

(assert (=> b!4927276 (= e!3078590 lt!2027770)))

(declare-fun d!1585771 () Bool)

(declare-fun e!3078595 () Bool)

(assert (=> d!1585771 e!3078595))

(declare-fun res!2102967 () Bool)

(assert (=> d!1585771 (=> (not res!2102967) (not e!3078595))))

(declare-fun lt!2027752 () tuple2!61192)

(assert (=> d!1585771 (= res!2102967 (= (++!12330 (_1!33899 lt!2027752) (_2!33899 lt!2027752)) (list!17959 input!5492)))))

(assert (=> d!1585771 (= lt!2027752 e!3078592)))

(declare-fun c!839361 () Bool)

(assert (=> d!1585771 (= c!839361 (lostCauseZipper!695 z!3559))))

(declare-fun lt!2027755 () Unit!147242)

(declare-fun Unit!147260 () Unit!147242)

(assert (=> d!1585771 (= lt!2027755 Unit!147260)))

(assert (=> d!1585771 (= (getSuffix!2953 (list!17959 input!5492) Nil!56697) lt!2026995)))

(declare-fun lt!2027762 () Unit!147242)

(declare-fun lt!2027766 () Unit!147242)

(assert (=> d!1585771 (= lt!2027762 lt!2027766)))

(declare-fun lt!2027772 () List!56821)

(assert (=> d!1585771 (= lt!2026995 lt!2027772)))

(assert (=> d!1585771 (= lt!2027766 (lemmaSamePrefixThenSameSuffix!2369 Nil!56697 lt!2026995 Nil!56697 lt!2027772 (list!17959 input!5492)))))

(assert (=> d!1585771 (= lt!2027772 (getSuffix!2953 (list!17959 input!5492) Nil!56697))))

(declare-fun lt!2027763 () Unit!147242)

(declare-fun lt!2027761 () Unit!147242)

(assert (=> d!1585771 (= lt!2027763 lt!2027761)))

(assert (=> d!1585771 (isPrefix!4965 Nil!56697 (++!12330 Nil!56697 lt!2026995))))

(assert (=> d!1585771 (= lt!2027761 (lemmaConcatTwoListThenFirstIsPrefix!3189 Nil!56697 lt!2026995))))

(assert (=> d!1585771 (= (++!12330 Nil!56697 lt!2026995) (list!17959 input!5492))))

(assert (=> d!1585771 (= (findLongestMatchInnerZipper!62 z!3559 Nil!56697 0 lt!2026995 (list!17959 input!5492) lt!2026996) lt!2027752)))

(declare-fun b!4927277 () Bool)

(declare-fun Unit!147261 () Unit!147242)

(assert (=> b!4927277 (= e!3078591 Unit!147261)))

(declare-fun b!4927278 () Bool)

(assert (=> b!4927278 (= e!3078594 e!3078590)))

(declare-fun call!343720 () tuple2!61192)

(assert (=> b!4927278 (= lt!2027770 call!343720)))

(declare-fun c!839359 () Bool)

(assert (=> b!4927278 (= c!839359 (isEmpty!30579 (_1!33899 lt!2027770)))))

(declare-fun bm!343711 () Bool)

(declare-fun call!343716 () C!26964)

(assert (=> bm!343711 (= call!343716 (head!10524 lt!2026995))))

(declare-fun bm!343712 () Bool)

(assert (=> bm!343712 (= call!343715 (nullableZipper!814 z!3559))))

(declare-fun b!4927279 () Bool)

(declare-fun e!3078596 () Bool)

(assert (=> b!4927279 (= e!3078596 (>= (size!37489 (_1!33899 lt!2027752)) (size!37489 Nil!56697)))))

(declare-fun b!4927280 () Bool)

(declare-fun Unit!147262 () Unit!147242)

(assert (=> b!4927280 (= e!3078591 Unit!147262)))

(declare-fun lt!2027749 () Unit!147242)

(declare-fun call!343718 () Unit!147242)

(assert (=> b!4927280 (= lt!2027749 call!343718)))

(assert (=> b!4927280 call!343719))

(declare-fun lt!2027765 () Unit!147242)

(assert (=> b!4927280 (= lt!2027765 lt!2027749)))

(declare-fun lt!2027750 () Unit!147242)

(assert (=> b!4927280 (= lt!2027750 call!343717)))

(assert (=> b!4927280 (= (list!17959 input!5492) Nil!56697)))

(declare-fun lt!2027764 () Unit!147242)

(assert (=> b!4927280 (= lt!2027764 lt!2027750)))

(assert (=> b!4927280 false))

(declare-fun b!4927281 () Bool)

(declare-fun c!839364 () Bool)

(assert (=> b!4927281 (= c!839364 call!343715)))

(declare-fun lt!2027757 () Unit!147242)

(declare-fun lt!2027760 () Unit!147242)

(assert (=> b!4927281 (= lt!2027757 lt!2027760)))

(assert (=> b!4927281 (= (list!17959 input!5492) Nil!56697)))

(assert (=> b!4927281 (= lt!2027760 call!343717)))

(declare-fun lt!2027758 () Unit!147242)

(declare-fun lt!2027759 () Unit!147242)

(assert (=> b!4927281 (= lt!2027758 lt!2027759)))

(assert (=> b!4927281 call!343719))

(assert (=> b!4927281 (= lt!2027759 call!343718)))

(assert (=> b!4927281 (= e!3078593 e!3078589)))

(declare-fun b!4927282 () Bool)

(assert (=> b!4927282 (= e!3078592 e!3078593)))

(declare-fun c!839363 () Bool)

(assert (=> b!4927282 (= c!839363 (= 0 lt!2026996))))

(declare-fun bm!343713 () Bool)

(declare-fun call!343713 () (InoxSet Context!6038))

(assert (=> bm!343713 (= call!343720 (findLongestMatchInnerZipper!62 call!343713 lt!2027754 (+ 0 1) call!343714 (list!17959 input!5492) lt!2026996))))

(declare-fun bm!343714 () Bool)

(assert (=> bm!343714 (= call!343718 (lemmaIsPrefixRefl!3361 (list!17959 input!5492) (list!17959 input!5492)))))

(declare-fun b!4927283 () Bool)

(assert (=> b!4927283 (= e!3078594 call!343720)))

(declare-fun b!4927284 () Bool)

(assert (=> b!4927284 (= e!3078589 (tuple2!61193 Nil!56697 Nil!56697))))

(declare-fun b!4927285 () Bool)

(assert (=> b!4927285 (= e!3078590 (tuple2!61193 Nil!56697 lt!2026995))))

(declare-fun b!4927286 () Bool)

(assert (=> b!4927286 (= e!3078595 e!3078596)))

(declare-fun res!2102966 () Bool)

(assert (=> b!4927286 (=> res!2102966 e!3078596)))

(assert (=> b!4927286 (= res!2102966 (isEmpty!30579 (_1!33899 lt!2027752)))))

(declare-fun bm!343715 () Bool)

(assert (=> bm!343715 (= call!343713 (derivationStepZipper!592 z!3559 call!343716))))

(assert (= (and d!1585771 c!839361) b!4927275))

(assert (= (and d!1585771 (not c!839361)) b!4927282))

(assert (= (and b!4927282 c!839363) b!4927281))

(assert (= (and b!4927282 (not c!839363)) b!4927274))

(assert (= (and b!4927281 c!839364) b!4927284))

(assert (= (and b!4927281 (not c!839364)) b!4927273))

(assert (= (and b!4927274 c!839360) b!4927280))

(assert (= (and b!4927274 (not c!839360)) b!4927277))

(assert (= (and b!4927274 c!839362) b!4927278))

(assert (= (and b!4927274 (not c!839362)) b!4927283))

(assert (= (and b!4927278 c!839359) b!4927285))

(assert (= (and b!4927278 (not c!839359)) b!4927276))

(assert (= (or b!4927278 b!4927283) bm!343709))

(assert (= (or b!4927278 b!4927283) bm!343711))

(assert (= (or b!4927278 b!4927283) bm!343715))

(assert (= (or b!4927278 b!4927283) bm!343713))

(assert (= (or b!4927281 b!4927280) bm!343710))

(assert (= (or b!4927281 b!4927280) bm!343714))

(assert (= (or b!4927281 b!4927280) bm!343708))

(assert (= (or b!4927281 b!4927274) bm!343712))

(assert (= (and d!1585771 res!2102967) b!4927286))

(assert (= (and b!4927286 (not res!2102966)) b!4927279))

(declare-fun m!5945588 () Bool)

(assert (=> b!4927274 m!5945588))

(declare-fun m!5945590 () Bool)

(assert (=> b!4927274 m!5945590))

(assert (=> b!4927274 m!5944346))

(declare-fun m!5945592 () Bool)

(assert (=> b!4927274 m!5945592))

(assert (=> b!4927274 m!5944576))

(declare-fun m!5945594 () Bool)

(assert (=> b!4927274 m!5945594))

(assert (=> b!4927274 m!5944346))

(declare-fun m!5945596 () Bool)

(assert (=> b!4927274 m!5945596))

(assert (=> b!4927274 m!5944672))

(assert (=> b!4927274 m!5945594))

(assert (=> b!4927274 m!5944346))

(assert (=> b!4927274 m!5944632))

(assert (=> b!4927274 m!5945588))

(assert (=> b!4927274 m!5944346))

(declare-fun m!5945598 () Bool)

(assert (=> b!4927274 m!5945598))

(assert (=> b!4927274 m!5944346))

(assert (=> b!4927274 m!5944594))

(assert (=> b!4927274 m!5944680))

(assert (=> b!4927274 m!5944594))

(declare-fun m!5945600 () Bool)

(assert (=> b!4927274 m!5945600))

(assert (=> b!4927274 m!5944554))

(assert (=> b!4927274 m!5944346))

(declare-fun m!5945602 () Bool)

(assert (=> b!4927274 m!5945602))

(assert (=> bm!343713 m!5944346))

(declare-fun m!5945604 () Bool)

(assert (=> bm!343713 m!5945604))

(assert (=> bm!343708 m!5944346))

(assert (=> bm!343708 m!5944346))

(declare-fun m!5945606 () Bool)

(assert (=> bm!343708 m!5945606))

(assert (=> bm!343714 m!5944346))

(assert (=> bm!343714 m!5944346))

(declare-fun m!5945608 () Bool)

(assert (=> bm!343714 m!5945608))

(assert (=> d!1585771 m!5944590))

(assert (=> d!1585771 m!5944590))

(assert (=> d!1585771 m!5944592))

(assert (=> d!1585771 m!5944346))

(declare-fun m!5945610 () Bool)

(assert (=> d!1585771 m!5945610))

(assert (=> d!1585771 m!5944346))

(assert (=> d!1585771 m!5944594))

(declare-fun m!5945612 () Bool)

(assert (=> d!1585771 m!5945612))

(assert (=> d!1585771 m!5944598))

(assert (=> d!1585771 m!5944586))

(assert (=> bm!343710 m!5944346))

(assert (=> bm!343710 m!5944346))

(declare-fun m!5945614 () Bool)

(assert (=> bm!343710 m!5945614))

(assert (=> bm!343712 m!5944540))

(declare-fun m!5945616 () Bool)

(assert (=> b!4927279 m!5945616))

(assert (=> b!4927279 m!5944576))

(declare-fun m!5945618 () Bool)

(assert (=> b!4927286 m!5945618))

(assert (=> bm!343711 m!5944672))

(declare-fun m!5945620 () Bool)

(assert (=> b!4927278 m!5945620))

(assert (=> bm!343709 m!5944554))

(declare-fun m!5945622 () Bool)

(assert (=> bm!343715 m!5945622))

(assert (=> d!1585473 d!1585771))

(assert (=> d!1585473 d!1585579))

(assert (=> d!1585473 d!1585605))

(declare-fun d!1585775 () Bool)

(declare-fun lt!2027775 () List!56821)

(assert (=> d!1585775 (= (++!12330 Nil!56697 lt!2027775) (list!17959 input!5492))))

(declare-fun e!3078597 () List!56821)

(assert (=> d!1585775 (= lt!2027775 e!3078597)))

(declare-fun c!839365 () Bool)

(assert (=> d!1585775 (= c!839365 ((_ is Cons!56697) Nil!56697))))

(assert (=> d!1585775 (>= (size!37489 (list!17959 input!5492)) (size!37489 Nil!56697))))

(assert (=> d!1585775 (= (getSuffix!2953 (list!17959 input!5492) Nil!56697) lt!2027775)))

(declare-fun b!4927287 () Bool)

(assert (=> b!4927287 (= e!3078597 (getSuffix!2953 (tail!9671 (list!17959 input!5492)) (t!367283 Nil!56697)))))

(declare-fun b!4927288 () Bool)

(assert (=> b!4927288 (= e!3078597 (list!17959 input!5492))))

(assert (= (and d!1585775 c!839365) b!4927287))

(assert (= (and d!1585775 (not c!839365)) b!4927288))

(declare-fun m!5945624 () Bool)

(assert (=> d!1585775 m!5945624))

(assert (=> d!1585775 m!5944346))

(assert (=> d!1585775 m!5944632))

(assert (=> d!1585775 m!5944576))

(assert (=> b!4927287 m!5944346))

(declare-fun m!5945626 () Bool)

(assert (=> b!4927287 m!5945626))

(assert (=> b!4927287 m!5945626))

(declare-fun m!5945628 () Bool)

(assert (=> b!4927287 m!5945628))

(assert (=> d!1585473 d!1585775))

(declare-fun d!1585777 () Bool)

(assert (=> d!1585777 (= lt!2026995 lt!2027317)))

(declare-fun lt!2027776 () Unit!147242)

(assert (=> d!1585777 (= lt!2027776 (choose!36092 Nil!56697 lt!2026995 Nil!56697 lt!2027317 (list!17959 input!5492)))))

(assert (=> d!1585777 (isPrefix!4965 Nil!56697 (list!17959 input!5492))))

(assert (=> d!1585777 (= (lemmaSamePrefixThenSameSuffix!2369 Nil!56697 lt!2026995 Nil!56697 lt!2027317 (list!17959 input!5492)) lt!2027776)))

(declare-fun bs!1179821 () Bool)

(assert (= bs!1179821 d!1585777))

(assert (=> bs!1179821 m!5944346))

(declare-fun m!5945630 () Bool)

(assert (=> bs!1179821 m!5945630))

(assert (=> bs!1179821 m!5944346))

(declare-fun m!5945632 () Bool)

(assert (=> bs!1179821 m!5945632))

(assert (=> d!1585473 d!1585777))

(assert (=> d!1585473 d!1585613))

(assert (=> d!1585473 d!1585617))

(declare-fun d!1585779 () Bool)

(declare-fun lt!2027777 () Int)

(assert (=> d!1585779 (>= lt!2027777 0)))

(declare-fun e!3078598 () Int)

(assert (=> d!1585779 (= lt!2027777 e!3078598)))

(declare-fun c!839366 () Bool)

(assert (=> d!1585779 (= c!839366 ((_ is Nil!56697) (_1!33899 (findLongestMatchInnerZipper!62 z!3559 Nil!56697 0 lt!2026995 (list!17959 input!5492) lt!2026996))))))

(assert (=> d!1585779 (= (size!37489 (_1!33899 (findLongestMatchInnerZipper!62 z!3559 Nil!56697 0 lt!2026995 (list!17959 input!5492) lt!2026996))) lt!2027777)))

(declare-fun b!4927289 () Bool)

(assert (=> b!4927289 (= e!3078598 0)))

(declare-fun b!4927290 () Bool)

(assert (=> b!4927290 (= e!3078598 (+ 1 (size!37489 (t!367283 (_1!33899 (findLongestMatchInnerZipper!62 z!3559 Nil!56697 0 lt!2026995 (list!17959 input!5492) lt!2026996))))))))

(assert (= (and d!1585779 c!839366) b!4927289))

(assert (= (and d!1585779 (not c!839366)) b!4927290))

(declare-fun m!5945634 () Bool)

(assert (=> b!4927290 m!5945634))

(assert (=> d!1585473 d!1585779))

(assert (=> d!1585473 d!1585489))

(declare-fun d!1585781 () Bool)

(declare-fun lt!2027778 () Int)

(assert (=> d!1585781 (>= lt!2027778 0)))

(declare-fun e!3078599 () Int)

(assert (=> d!1585781 (= lt!2027778 e!3078599)))

(declare-fun c!839367 () Bool)

(assert (=> d!1585781 (= c!839367 ((_ is Nil!56697) lt!2027350))))

(assert (=> d!1585781 (= (size!37489 lt!2027350) lt!2027778)))

(declare-fun b!4927291 () Bool)

(assert (=> b!4927291 (= e!3078599 0)))

(declare-fun b!4927292 () Bool)

(assert (=> b!4927292 (= e!3078599 (+ 1 (size!37489 (t!367283 lt!2027350))))))

(assert (= (and d!1585781 c!839367) b!4927291))

(assert (= (and d!1585781 (not c!839367)) b!4927292))

(declare-fun m!5945636 () Bool)

(assert (=> b!4927292 m!5945636))

(assert (=> b!4926631 d!1585781))

(assert (=> b!4926631 d!1585495))

(declare-fun d!1585783 () Bool)

(declare-fun lt!2027779 () Int)

(assert (=> d!1585783 (>= lt!2027779 0)))

(declare-fun e!3078600 () Int)

(assert (=> d!1585783 (= lt!2027779 e!3078600)))

(declare-fun c!839368 () Bool)

(assert (=> d!1585783 (= c!839368 ((_ is Nil!56697) (_2!33899 lt!2026999)))))

(assert (=> d!1585783 (= (size!37489 (_2!33899 lt!2026999)) lt!2027779)))

(declare-fun b!4927293 () Bool)

(assert (=> b!4927293 (= e!3078600 0)))

(declare-fun b!4927294 () Bool)

(assert (=> b!4927294 (= e!3078600 (+ 1 (size!37489 (t!367283 (_2!33899 lt!2026999)))))))

(assert (= (and d!1585783 c!839368) b!4927293))

(assert (= (and d!1585783 (not c!839368)) b!4927294))

(declare-fun m!5945638 () Bool)

(assert (=> b!4927294 m!5945638))

(assert (=> b!4926631 d!1585783))

(declare-fun d!1585785 () Bool)

(declare-fun c!839371 () Bool)

(assert (=> d!1585785 (= c!839371 ((_ is Nil!56697) lt!2027349))))

(declare-fun e!3078603 () (InoxSet C!26964))

(assert (=> d!1585785 (= (content!10073 lt!2027349) e!3078603)))

(declare-fun b!4927299 () Bool)

(assert (=> b!4927299 (= e!3078603 ((as const (Array C!26964 Bool)) false))))

(declare-fun b!4927300 () Bool)

(assert (=> b!4927300 (= e!3078603 ((_ map or) (store ((as const (Array C!26964 Bool)) false) (h!63145 lt!2027349) true) (content!10073 (t!367283 lt!2027349))))))

(assert (= (and d!1585785 c!839371) b!4927299))

(assert (= (and d!1585785 (not c!839371)) b!4927300))

(declare-fun m!5945640 () Bool)

(assert (=> b!4927300 m!5945640))

(declare-fun m!5945642 () Bool)

(assert (=> b!4927300 m!5945642))

(assert (=> d!1585475 d!1585785))

(declare-fun d!1585787 () Bool)

(declare-fun c!839372 () Bool)

(assert (=> d!1585787 (= c!839372 ((_ is Nil!56697) lt!2026994))))

(declare-fun e!3078604 () (InoxSet C!26964))

(assert (=> d!1585787 (= (content!10073 lt!2026994) e!3078604)))

(declare-fun b!4927301 () Bool)

(assert (=> b!4927301 (= e!3078604 ((as const (Array C!26964 Bool)) false))))

(declare-fun b!4927302 () Bool)

(assert (=> b!4927302 (= e!3078604 ((_ map or) (store ((as const (Array C!26964 Bool)) false) (h!63145 lt!2026994) true) (content!10073 (t!367283 lt!2026994))))))

(assert (= (and d!1585787 c!839372) b!4927301))

(assert (= (and d!1585787 (not c!839372)) b!4927302))

(declare-fun m!5945644 () Bool)

(assert (=> b!4927302 m!5945644))

(assert (=> b!4927302 m!5944934))

(assert (=> d!1585475 d!1585787))

(declare-fun d!1585789 () Bool)

(declare-fun c!839373 () Bool)

(assert (=> d!1585789 (= c!839373 ((_ is Nil!56697) lt!2026998))))

(declare-fun e!3078605 () (InoxSet C!26964))

(assert (=> d!1585789 (= (content!10073 lt!2026998) e!3078605)))

(declare-fun b!4927303 () Bool)

(assert (=> b!4927303 (= e!3078605 ((as const (Array C!26964 Bool)) false))))

(declare-fun b!4927304 () Bool)

(assert (=> b!4927304 (= e!3078605 ((_ map or) (store ((as const (Array C!26964 Bool)) false) (h!63145 lt!2026998) true) (content!10073 (t!367283 lt!2026998))))))

(assert (= (and d!1585789 c!839373) b!4927303))

(assert (= (and d!1585789 (not c!839373)) b!4927304))

(declare-fun m!5945646 () Bool)

(assert (=> b!4927304 m!5945646))

(declare-fun m!5945648 () Bool)

(assert (=> b!4927304 m!5945648))

(assert (=> d!1585475 d!1585789))

(declare-fun d!1585791 () Bool)

(declare-fun lt!2027780 () Int)

(assert (=> d!1585791 (>= lt!2027780 0)))

(declare-fun e!3078606 () Int)

(assert (=> d!1585791 (= lt!2027780 e!3078606)))

(declare-fun c!839374 () Bool)

(assert (=> d!1585791 (= c!839374 ((_ is Nil!56697) (_1!33899 lt!2027415)))))

(assert (=> d!1585791 (= (size!37489 (_1!33899 lt!2027415)) lt!2027780)))

(declare-fun b!4927305 () Bool)

(assert (=> b!4927305 (= e!3078606 0)))

(declare-fun b!4927306 () Bool)

(assert (=> b!4927306 (= e!3078606 (+ 1 (size!37489 (t!367283 (_1!33899 lt!2027415)))))))

(assert (= (and d!1585791 c!839374) b!4927305))

(assert (= (and d!1585791 (not c!839374)) b!4927306))

(declare-fun m!5945650 () Bool)

(assert (=> b!4927306 m!5945650))

(assert (=> b!4926694 d!1585791))

(assert (=> b!4926694 d!1585527))

(declare-fun b!4927307 () Bool)

(declare-fun e!3078607 () tuple2!61192)

(assert (=> b!4927307 (= e!3078607 (tuple2!61193 Nil!56697 lt!2026995))))

(declare-fun bm!343716 () Bool)

(declare-fun call!343725 () Unit!147242)

(assert (=> bm!343716 (= call!343725 (lemmaIsPrefixSameLengthThenSameList!1123 lt!2026995 lt!2027417 lt!2026995))))

(declare-fun bm!343717 () Bool)

(declare-fun call!343722 () List!56821)

(assert (=> bm!343717 (= call!343722 (tail!9671 call!343652))))

(declare-fun b!4927308 () Bool)

(declare-fun c!839378 () Bool)

(declare-fun call!343723 () Bool)

(assert (=> b!4927308 (= c!839378 call!343723)))

(declare-fun lt!2027800 () Unit!147242)

(declare-fun lt!2027803 () Unit!147242)

(assert (=> b!4927308 (= lt!2027800 lt!2027803)))

(declare-fun lt!2027806 () C!26964)

(declare-fun lt!2027805 () List!56821)

(assert (=> b!4927308 (= (++!12330 (++!12330 lt!2027417 (Cons!56697 lt!2027806 Nil!56697)) lt!2027805) lt!2026995)))

(assert (=> b!4927308 (= lt!2027803 (lemmaMoveElementToOtherListKeepsConcatEq!1395 lt!2027417 lt!2027806 lt!2027805 lt!2026995))))

(assert (=> b!4927308 (= lt!2027805 (tail!9671 call!343652))))

(assert (=> b!4927308 (= lt!2027806 (head!10524 call!343652))))

(declare-fun lt!2027801 () Unit!147242)

(declare-fun lt!2027799 () Unit!147242)

(assert (=> b!4927308 (= lt!2027801 lt!2027799)))

(assert (=> b!4927308 (isPrefix!4965 (++!12330 lt!2027417 (Cons!56697 (head!10524 (getSuffix!2953 lt!2026995 lt!2027417)) Nil!56697)) lt!2026995)))

(assert (=> b!4927308 (= lt!2027799 (lemmaAddHeadSuffixToPrefixStillPrefix!777 lt!2027417 lt!2026995))))

(declare-fun lt!2027786 () List!56821)

(assert (=> b!4927308 (= lt!2027786 (++!12330 lt!2027417 (Cons!56697 (head!10524 call!343652) Nil!56697)))))

(declare-fun lt!2027783 () Unit!147242)

(declare-fun e!3078609 () Unit!147242)

(assert (=> b!4927308 (= lt!2027783 e!3078609)))

(declare-fun c!839376 () Bool)

(assert (=> b!4927308 (= c!839376 (= (size!37489 lt!2027417) (size!37489 lt!2026995)))))

(declare-fun lt!2027785 () Unit!147242)

(declare-fun lt!2027788 () Unit!147242)

(assert (=> b!4927308 (= lt!2027785 lt!2027788)))

(assert (=> b!4927308 (<= (size!37489 lt!2027417) (size!37489 lt!2026995))))

(assert (=> b!4927308 (= lt!2027788 (lemmaIsPrefixThenSmallerEqSize!689 lt!2027417 lt!2026995))))

(declare-fun e!3078611 () tuple2!61192)

(declare-fun e!3078612 () tuple2!61192)

(assert (=> b!4927308 (= e!3078611 e!3078612)))

(declare-fun b!4927309 () Bool)

(declare-fun e!3078610 () tuple2!61192)

(assert (=> b!4927309 (= e!3078610 (tuple2!61193 Nil!56697 lt!2026995))))

(declare-fun bm!343718 () Bool)

(declare-fun call!343727 () Bool)

(assert (=> bm!343718 (= call!343727 (isPrefix!4965 lt!2026995 lt!2026995))))

(declare-fun b!4927310 () Bool)

(declare-fun e!3078608 () tuple2!61192)

(declare-fun lt!2027802 () tuple2!61192)

(assert (=> b!4927310 (= e!3078608 lt!2027802)))

(declare-fun d!1585793 () Bool)

(declare-fun e!3078613 () Bool)

(assert (=> d!1585793 e!3078613))

(declare-fun res!2102969 () Bool)

(assert (=> d!1585793 (=> (not res!2102969) (not e!3078613))))

(declare-fun lt!2027784 () tuple2!61192)

(assert (=> d!1585793 (= res!2102969 (= (++!12330 (_1!33899 lt!2027784) (_2!33899 lt!2027784)) lt!2026995))))

(assert (=> d!1585793 (= lt!2027784 e!3078610)))

(declare-fun c!839377 () Bool)

(assert (=> d!1585793 (= c!839377 (lostCauseZipper!695 call!343651))))

(declare-fun lt!2027787 () Unit!147242)

(declare-fun Unit!147266 () Unit!147242)

(assert (=> d!1585793 (= lt!2027787 Unit!147266)))

(assert (=> d!1585793 (= (getSuffix!2953 lt!2026995 lt!2027417) call!343652)))

(declare-fun lt!2027794 () Unit!147242)

(declare-fun lt!2027798 () Unit!147242)

(assert (=> d!1585793 (= lt!2027794 lt!2027798)))

(declare-fun lt!2027804 () List!56821)

(assert (=> d!1585793 (= call!343652 lt!2027804)))

(assert (=> d!1585793 (= lt!2027798 (lemmaSamePrefixThenSameSuffix!2369 lt!2027417 call!343652 lt!2027417 lt!2027804 lt!2026995))))

(assert (=> d!1585793 (= lt!2027804 (getSuffix!2953 lt!2026995 lt!2027417))))

(declare-fun lt!2027795 () Unit!147242)

(declare-fun lt!2027793 () Unit!147242)

(assert (=> d!1585793 (= lt!2027795 lt!2027793)))

(assert (=> d!1585793 (isPrefix!4965 lt!2027417 (++!12330 lt!2027417 call!343652))))

(assert (=> d!1585793 (= lt!2027793 (lemmaConcatTwoListThenFirstIsPrefix!3189 lt!2027417 call!343652))))

(assert (=> d!1585793 (= (++!12330 lt!2027417 call!343652) lt!2026995)))

(assert (=> d!1585793 (= (findLongestMatchInnerZipper!62 call!343651 lt!2027417 (+ 0 1) call!343652 lt!2026995 lt!2026996) lt!2027784)))

(declare-fun b!4927311 () Bool)

(declare-fun Unit!147267 () Unit!147242)

(assert (=> b!4927311 (= e!3078609 Unit!147267)))

(declare-fun b!4927312 () Bool)

(assert (=> b!4927312 (= e!3078612 e!3078608)))

(declare-fun call!343728 () tuple2!61192)

(assert (=> b!4927312 (= lt!2027802 call!343728)))

(declare-fun c!839375 () Bool)

(assert (=> b!4927312 (= c!839375 (isEmpty!30579 (_1!33899 lt!2027802)))))

(declare-fun bm!343719 () Bool)

(declare-fun call!343724 () C!26964)

(assert (=> bm!343719 (= call!343724 (head!10524 call!343652))))

(declare-fun bm!343720 () Bool)

(assert (=> bm!343720 (= call!343723 (nullableZipper!814 call!343651))))

(declare-fun b!4927313 () Bool)

(declare-fun e!3078614 () Bool)

(assert (=> b!4927313 (= e!3078614 (>= (size!37489 (_1!33899 lt!2027784)) (size!37489 lt!2027417)))))

(declare-fun b!4927314 () Bool)

(declare-fun Unit!147268 () Unit!147242)

(assert (=> b!4927314 (= e!3078609 Unit!147268)))

(declare-fun lt!2027781 () Unit!147242)

(declare-fun call!343726 () Unit!147242)

(assert (=> b!4927314 (= lt!2027781 call!343726)))

(assert (=> b!4927314 call!343727))

(declare-fun lt!2027797 () Unit!147242)

(assert (=> b!4927314 (= lt!2027797 lt!2027781)))

(declare-fun lt!2027782 () Unit!147242)

(assert (=> b!4927314 (= lt!2027782 call!343725)))

(assert (=> b!4927314 (= lt!2026995 lt!2027417)))

(declare-fun lt!2027796 () Unit!147242)

(assert (=> b!4927314 (= lt!2027796 lt!2027782)))

(assert (=> b!4927314 false))

(declare-fun b!4927315 () Bool)

(declare-fun c!839380 () Bool)

(assert (=> b!4927315 (= c!839380 call!343723)))

(declare-fun lt!2027789 () Unit!147242)

(declare-fun lt!2027792 () Unit!147242)

(assert (=> b!4927315 (= lt!2027789 lt!2027792)))

(assert (=> b!4927315 (= lt!2026995 lt!2027417)))

(assert (=> b!4927315 (= lt!2027792 call!343725)))

(declare-fun lt!2027790 () Unit!147242)

(declare-fun lt!2027791 () Unit!147242)

(assert (=> b!4927315 (= lt!2027790 lt!2027791)))

(assert (=> b!4927315 call!343727))

(assert (=> b!4927315 (= lt!2027791 call!343726)))

(assert (=> b!4927315 (= e!3078611 e!3078607)))

(declare-fun b!4927316 () Bool)

(assert (=> b!4927316 (= e!3078610 e!3078611)))

(declare-fun c!839379 () Bool)

(assert (=> b!4927316 (= c!839379 (= (+ 0 1) lt!2026996))))

(declare-fun call!343721 () (InoxSet Context!6038))

(declare-fun bm!343721 () Bool)

(assert (=> bm!343721 (= call!343728 (findLongestMatchInnerZipper!62 call!343721 lt!2027786 (+ 0 1 1) call!343722 lt!2026995 lt!2026996))))

(declare-fun bm!343722 () Bool)

(assert (=> bm!343722 (= call!343726 (lemmaIsPrefixRefl!3361 lt!2026995 lt!2026995))))

(declare-fun b!4927317 () Bool)

(assert (=> b!4927317 (= e!3078612 call!343728)))

(declare-fun b!4927318 () Bool)

(assert (=> b!4927318 (= e!3078607 (tuple2!61193 lt!2027417 Nil!56697))))

(declare-fun b!4927319 () Bool)

(assert (=> b!4927319 (= e!3078608 (tuple2!61193 lt!2027417 call!343652))))

(declare-fun b!4927320 () Bool)

(assert (=> b!4927320 (= e!3078613 e!3078614)))

(declare-fun res!2102968 () Bool)

(assert (=> b!4927320 (=> res!2102968 e!3078614)))

(assert (=> b!4927320 (= res!2102968 (isEmpty!30579 (_1!33899 lt!2027784)))))

(declare-fun bm!343723 () Bool)

(assert (=> bm!343723 (= call!343721 (derivationStepZipper!592 call!343651 call!343724))))

(assert (= (and d!1585793 c!839377) b!4927309))

(assert (= (and d!1585793 (not c!839377)) b!4927316))

(assert (= (and b!4927316 c!839379) b!4927315))

(assert (= (and b!4927316 (not c!839379)) b!4927308))

(assert (= (and b!4927315 c!839380) b!4927318))

(assert (= (and b!4927315 (not c!839380)) b!4927307))

(assert (= (and b!4927308 c!839376) b!4927314))

(assert (= (and b!4927308 (not c!839376)) b!4927311))

(assert (= (and b!4927308 c!839378) b!4927312))

(assert (= (and b!4927308 (not c!839378)) b!4927317))

(assert (= (and b!4927312 c!839375) b!4927319))

(assert (= (and b!4927312 (not c!839375)) b!4927310))

(assert (= (or b!4927312 b!4927317) bm!343717))

(assert (= (or b!4927312 b!4927317) bm!343719))

(assert (= (or b!4927312 b!4927317) bm!343723))

(assert (= (or b!4927312 b!4927317) bm!343721))

(assert (= (or b!4927315 b!4927314) bm!343718))

(assert (= (or b!4927315 b!4927314) bm!343722))

(assert (= (or b!4927315 b!4927314) bm!343716))

(assert (= (or b!4927315 b!4927308) bm!343720))

(assert (= (and d!1585793 res!2102969) b!4927320))

(assert (= (and b!4927320 (not res!2102968)) b!4927313))

(declare-fun m!5945652 () Bool)

(assert (=> b!4927308 m!5945652))

(declare-fun m!5945654 () Bool)

(assert (=> b!4927308 m!5945654))

(declare-fun m!5945656 () Bool)

(assert (=> b!4927308 m!5945656))

(declare-fun m!5945658 () Bool)

(assert (=> b!4927308 m!5945658))

(declare-fun m!5945660 () Bool)

(assert (=> b!4927308 m!5945660))

(declare-fun m!5945662 () Bool)

(assert (=> b!4927308 m!5945662))

(declare-fun m!5945664 () Bool)

(assert (=> b!4927308 m!5945664))

(assert (=> b!4927308 m!5945660))

(assert (=> b!4927308 m!5944674))

(assert (=> b!4927308 m!5945652))

(declare-fun m!5945666 () Bool)

(assert (=> b!4927308 m!5945666))

(declare-fun m!5945668 () Bool)

(assert (=> b!4927308 m!5945668))

(declare-fun m!5945670 () Bool)

(assert (=> b!4927308 m!5945670))

(assert (=> b!4927308 m!5945668))

(declare-fun m!5945672 () Bool)

(assert (=> b!4927308 m!5945672))

(declare-fun m!5945674 () Bool)

(assert (=> b!4927308 m!5945674))

(declare-fun m!5945676 () Bool)

(assert (=> b!4927308 m!5945676))

(declare-fun m!5945678 () Bool)

(assert (=> bm!343721 m!5945678))

(declare-fun m!5945680 () Bool)

(assert (=> bm!343716 m!5945680))

(assert (=> bm!343722 m!5944690))

(declare-fun m!5945682 () Bool)

(assert (=> d!1585793 m!5945682))

(assert (=> d!1585793 m!5945682))

(declare-fun m!5945684 () Bool)

(assert (=> d!1585793 m!5945684))

(declare-fun m!5945686 () Bool)

(assert (=> d!1585793 m!5945686))

(assert (=> d!1585793 m!5945668))

(declare-fun m!5945688 () Bool)

(assert (=> d!1585793 m!5945688))

(declare-fun m!5945690 () Bool)

(assert (=> d!1585793 m!5945690))

(declare-fun m!5945692 () Bool)

(assert (=> d!1585793 m!5945692))

(assert (=> bm!343718 m!5944696))

(declare-fun m!5945694 () Bool)

(assert (=> bm!343720 m!5945694))

(declare-fun m!5945696 () Bool)

(assert (=> b!4927313 m!5945696))

(assert (=> b!4927313 m!5945658))

(declare-fun m!5945698 () Bool)

(assert (=> b!4927320 m!5945698))

(assert (=> bm!343719 m!5945664))

(declare-fun m!5945700 () Bool)

(assert (=> b!4927312 m!5945700))

(assert (=> bm!343717 m!5945674))

(declare-fun m!5945702 () Bool)

(assert (=> bm!343723 m!5945702))

(assert (=> bm!343651 d!1585793))

(declare-fun d!1585795 () Bool)

(assert (=> d!1585795 (isPrefix!4965 (ite c!839148 lt!2027318 lt!2027308) (ite c!839148 lt!2027309 lt!2027343))))

(declare-fun lt!2027807 () Unit!147242)

(assert (=> d!1585795 (= lt!2027807 (choose!36095 (ite c!839148 lt!2027318 lt!2027308) (ite c!839148 lt!2027309 lt!2027343)))))

(assert (=> d!1585795 (= (lemmaIsPrefixRefl!3361 (ite c!839148 lt!2027318 lt!2027308) (ite c!839148 lt!2027309 lt!2027343)) lt!2027807)))

(declare-fun bs!1179822 () Bool)

(assert (= bs!1179822 d!1585795))

(assert (=> bs!1179822 m!5944582))

(declare-fun m!5945704 () Bool)

(assert (=> bs!1179822 m!5945704))

(assert (=> bm!343625 d!1585795))

(declare-fun d!1585797 () Bool)

(declare-fun lt!2027808 () Int)

(assert (=> d!1585797 (>= lt!2027808 0)))

(declare-fun e!3078615 () Int)

(assert (=> d!1585797 (= lt!2027808 e!3078615)))

(declare-fun c!839381 () Bool)

(assert (=> d!1585797 (= c!839381 ((_ is Nil!56697) (t!367283 lt!2026994)))))

(assert (=> d!1585797 (= (size!37489 (t!367283 lt!2026994)) lt!2027808)))

(declare-fun b!4927321 () Bool)

(assert (=> b!4927321 (= e!3078615 0)))

(declare-fun b!4927322 () Bool)

(assert (=> b!4927322 (= e!3078615 (+ 1 (size!37489 (t!367283 (t!367283 lt!2026994)))))))

(assert (= (and d!1585797 c!839381) b!4927321))

(assert (= (and d!1585797 (not c!839381)) b!4927322))

(declare-fun m!5945706 () Bool)

(assert (=> b!4927322 m!5945706))

(assert (=> b!4926707 d!1585797))

(declare-fun b!4927326 () Bool)

(declare-fun e!3078618 () Bool)

(assert (=> b!4927326 (= e!3078618 (>= (size!37489 lt!2026995) (size!37489 lt!2026995)))))

(declare-fun d!1585799 () Bool)

(assert (=> d!1585799 e!3078618))

(declare-fun res!2102970 () Bool)

(assert (=> d!1585799 (=> res!2102970 e!3078618)))

(declare-fun lt!2027809 () Bool)

(assert (=> d!1585799 (= res!2102970 (not lt!2027809))))

(declare-fun e!3078617 () Bool)

(assert (=> d!1585799 (= lt!2027809 e!3078617)))

(declare-fun res!2102972 () Bool)

(assert (=> d!1585799 (=> res!2102972 e!3078617)))

(assert (=> d!1585799 (= res!2102972 ((_ is Nil!56697) lt!2026995))))

(assert (=> d!1585799 (= (isPrefix!4965 lt!2026995 lt!2026995) lt!2027809)))

(declare-fun b!4927324 () Bool)

(declare-fun res!2102971 () Bool)

(declare-fun e!3078616 () Bool)

(assert (=> b!4927324 (=> (not res!2102971) (not e!3078616))))

(assert (=> b!4927324 (= res!2102971 (= (head!10524 lt!2026995) (head!10524 lt!2026995)))))

(declare-fun b!4927323 () Bool)

(assert (=> b!4927323 (= e!3078617 e!3078616)))

(declare-fun res!2102973 () Bool)

(assert (=> b!4927323 (=> (not res!2102973) (not e!3078616))))

(assert (=> b!4927323 (= res!2102973 (not ((_ is Nil!56697) lt!2026995)))))

(declare-fun b!4927325 () Bool)

(assert (=> b!4927325 (= e!3078616 (isPrefix!4965 (tail!9671 lt!2026995) (tail!9671 lt!2026995)))))

(assert (= (and d!1585799 (not res!2102972)) b!4927323))

(assert (= (and b!4927323 res!2102973) b!4927324))

(assert (= (and b!4927324 res!2102971) b!4927325))

(assert (= (and d!1585799 (not res!2102970)) b!4927326))

(assert (=> b!4927326 m!5944674))

(assert (=> b!4927326 m!5944674))

(assert (=> b!4927324 m!5944672))

(assert (=> b!4927324 m!5944672))

(assert (=> b!4927325 m!5944554))

(assert (=> b!4927325 m!5944554))

(assert (=> b!4927325 m!5944554))

(assert (=> b!4927325 m!5944554))

(declare-fun m!5945708 () Bool)

(assert (=> b!4927325 m!5945708))

(assert (=> bm!343648 d!1585799))

(declare-fun d!1585801 () Bool)

(declare-fun lt!2027810 () Int)

(assert (=> d!1585801 (>= lt!2027810 0)))

(declare-fun e!3078619 () Int)

(assert (=> d!1585801 (= lt!2027810 e!3078619)))

(declare-fun c!839382 () Bool)

(assert (=> d!1585801 (= c!839382 ((_ is Nil!56697) (list!17959 input!5492)))))

(assert (=> d!1585801 (= (size!37489 (list!17959 input!5492)) lt!2027810)))

(declare-fun b!4927327 () Bool)

(assert (=> b!4927327 (= e!3078619 0)))

(declare-fun b!4927328 () Bool)

(assert (=> b!4927328 (= e!3078619 (+ 1 (size!37489 (t!367283 (list!17959 input!5492)))))))

(assert (= (and d!1585801 c!839382) b!4927327))

(assert (= (and d!1585801 (not c!839382)) b!4927328))

(declare-fun m!5945710 () Bool)

(assert (=> b!4927328 m!5945710))

(assert (=> d!1585481 d!1585801))

(assert (=> d!1585481 d!1585489))

(declare-fun d!1585803 () Bool)

(declare-fun lt!2027813 () Int)

(assert (=> d!1585803 (= lt!2027813 (size!37489 (list!17961 (c!839087 input!5492))))))

(assert (=> d!1585803 (= lt!2027813 (ite ((_ is Empty!14876) (c!839087 input!5492)) 0 (ite ((_ is Leaf!24747) (c!839087 input!5492)) (csize!29983 (c!839087 input!5492)) (csize!29982 (c!839087 input!5492)))))))

(assert (=> d!1585803 (= (size!37492 (c!839087 input!5492)) lt!2027813)))

(declare-fun bs!1179823 () Bool)

(assert (= bs!1179823 d!1585803))

(assert (=> bs!1179823 m!5944706))

(assert (=> bs!1179823 m!5944706))

(declare-fun m!5945712 () Bool)

(assert (=> bs!1179823 m!5945712))

(assert (=> d!1585481 d!1585803))

(assert (=> bm!343649 d!1585635))

(assert (=> b!4926461 d!1585497))

(declare-fun bs!1179824 () Bool)

(declare-fun d!1585805 () Bool)

(assert (= bs!1179824 (and d!1585805 d!1585443)))

(declare-fun lambda!245323 () Int)

(assert (=> bs!1179824 (= lambda!245323 lambda!245281)))

(assert (=> d!1585805 (= (inv!73493 setElem!27556) (forall!13140 (exprs!3519 setElem!27556) lambda!245323))))

(declare-fun bs!1179825 () Bool)

(assert (= bs!1179825 d!1585805))

(declare-fun m!5945714 () Bool)

(assert (=> bs!1179825 m!5945714))

(assert (=> setNonEmpty!27556 d!1585805))

(declare-fun d!1585807 () Bool)

(declare-fun lt!2027814 () Int)

(assert (=> d!1585807 (>= lt!2027814 0)))

(declare-fun e!3078620 () Int)

(assert (=> d!1585807 (= lt!2027814 e!3078620)))

(declare-fun c!839383 () Bool)

(assert (=> d!1585807 (= c!839383 ((_ is Nil!56697) lt!2027349))))

(assert (=> d!1585807 (= (size!37489 lt!2027349) lt!2027814)))

(declare-fun b!4927329 () Bool)

(assert (=> b!4927329 (= e!3078620 0)))

(declare-fun b!4927330 () Bool)

(assert (=> b!4927330 (= e!3078620 (+ 1 (size!37489 (t!367283 lt!2027349))))))

(assert (= (and d!1585807 c!839383) b!4927329))

(assert (= (and d!1585807 (not c!839383)) b!4927330))

(declare-fun m!5945716 () Bool)

(assert (=> b!4927330 m!5945716))

(assert (=> b!4926627 d!1585807))

(assert (=> b!4926627 d!1585493))

(declare-fun d!1585809 () Bool)

(declare-fun lt!2027815 () Int)

(assert (=> d!1585809 (>= lt!2027815 0)))

(declare-fun e!3078621 () Int)

(assert (=> d!1585809 (= lt!2027815 e!3078621)))

(declare-fun c!839384 () Bool)

(assert (=> d!1585809 (= c!839384 ((_ is Nil!56697) lt!2026998))))

(assert (=> d!1585809 (= (size!37489 lt!2026998) lt!2027815)))

(declare-fun b!4927331 () Bool)

(assert (=> b!4927331 (= e!3078621 0)))

(declare-fun b!4927332 () Bool)

(assert (=> b!4927332 (= e!3078621 (+ 1 (size!37489 (t!367283 lt!2026998))))))

(assert (= (and d!1585809 c!839384) b!4927331))

(assert (= (and d!1585809 (not c!839384)) b!4927332))

(declare-fun m!5945718 () Bool)

(assert (=> b!4927332 m!5945718))

(assert (=> b!4926627 d!1585809))

(declare-fun d!1585811 () Bool)

(assert (=> d!1585811 true))

(declare-fun lambda!245326 () Int)

(declare-fun flatMap!267 ((InoxSet Context!6038) Int) (InoxSet Context!6038))

(assert (=> d!1585811 (= (derivationStepZipper!592 z!3559 call!343654) (flatMap!267 z!3559 lambda!245326))))

(declare-fun bs!1179826 () Bool)

(assert (= bs!1179826 d!1585811))

(declare-fun m!5945720 () Bool)

(assert (=> bs!1179826 m!5945720))

(assert (=> bm!343653 d!1585811))

(declare-fun b!4927335 () Bool)

(declare-fun res!2102976 () Bool)

(declare-fun e!3078623 () Bool)

(assert (=> b!4927335 (=> (not res!2102976) (not e!3078623))))

(assert (=> b!4927335 (= res!2102976 (isBalanced!4089 (left!41344 (c!839087 (_2!33900 lt!2027359)))))))

(declare-fun b!4927336 () Bool)

(declare-fun res!2102979 () Bool)

(assert (=> b!4927336 (=> (not res!2102979) (not e!3078623))))

(assert (=> b!4927336 (= res!2102979 (<= (- (height!1986 (left!41344 (c!839087 (_2!33900 lt!2027359)))) (height!1986 (right!41674 (c!839087 (_2!33900 lt!2027359))))) 1))))

(declare-fun b!4927337 () Bool)

(declare-fun res!2102978 () Bool)

(assert (=> b!4927337 (=> (not res!2102978) (not e!3078623))))

(assert (=> b!4927337 (= res!2102978 (not (isEmpty!30583 (left!41344 (c!839087 (_2!33900 lt!2027359))))))))

(declare-fun b!4927338 () Bool)

(declare-fun res!2102975 () Bool)

(assert (=> b!4927338 (=> (not res!2102975) (not e!3078623))))

(assert (=> b!4927338 (= res!2102975 (isBalanced!4089 (right!41674 (c!839087 (_2!33900 lt!2027359)))))))

(declare-fun b!4927339 () Bool)

(declare-fun e!3078622 () Bool)

(assert (=> b!4927339 (= e!3078622 e!3078623)))

(declare-fun res!2102974 () Bool)

(assert (=> b!4927339 (=> (not res!2102974) (not e!3078623))))

(assert (=> b!4927339 (= res!2102974 (<= (- 1) (- (height!1986 (left!41344 (c!839087 (_2!33900 lt!2027359)))) (height!1986 (right!41674 (c!839087 (_2!33900 lt!2027359)))))))))

(declare-fun d!1585813 () Bool)

(declare-fun res!2102977 () Bool)

(assert (=> d!1585813 (=> res!2102977 e!3078622)))

(assert (=> d!1585813 (= res!2102977 (not ((_ is Node!14876) (c!839087 (_2!33900 lt!2027359)))))))

(assert (=> d!1585813 (= (isBalanced!4089 (c!839087 (_2!33900 lt!2027359))) e!3078622)))

(declare-fun b!4927340 () Bool)

(assert (=> b!4927340 (= e!3078623 (not (isEmpty!30583 (right!41674 (c!839087 (_2!33900 lt!2027359))))))))

(assert (= (and d!1585813 (not res!2102977)) b!4927339))

(assert (= (and b!4927339 res!2102974) b!4927336))

(assert (= (and b!4927336 res!2102979) b!4927335))

(assert (= (and b!4927335 res!2102976) b!4927338))

(assert (= (and b!4927338 res!2102975) b!4927337))

(assert (= (and b!4927337 res!2102978) b!4927340))

(declare-fun m!5945722 () Bool)

(assert (=> b!4927337 m!5945722))

(declare-fun m!5945724 () Bool)

(assert (=> b!4927338 m!5945724))

(declare-fun m!5945726 () Bool)

(assert (=> b!4927336 m!5945726))

(declare-fun m!5945728 () Bool)

(assert (=> b!4927336 m!5945728))

(assert (=> b!4927339 m!5945726))

(assert (=> b!4927339 m!5945728))

(declare-fun m!5945730 () Bool)

(assert (=> b!4927340 m!5945730))

(declare-fun m!5945732 () Bool)

(assert (=> b!4927335 m!5945732))

(assert (=> b!4926637 d!1585813))

(declare-fun d!1585815 () Bool)

(declare-fun c!839387 () Bool)

(assert (=> d!1585815 (= c!839387 ((_ is Nil!56697) lt!2027350))))

(declare-fun e!3078624 () (InoxSet C!26964))

(assert (=> d!1585815 (= (content!10073 lt!2027350) e!3078624)))

(declare-fun b!4927341 () Bool)

(assert (=> b!4927341 (= e!3078624 ((as const (Array C!26964 Bool)) false))))

(declare-fun b!4927342 () Bool)

(assert (=> b!4927342 (= e!3078624 ((_ map or) (store ((as const (Array C!26964 Bool)) false) (h!63145 lt!2027350) true) (content!10073 (t!367283 lt!2027350))))))

(assert (= (and d!1585815 c!839387) b!4927341))

(assert (= (and d!1585815 (not c!839387)) b!4927342))

(declare-fun m!5945734 () Bool)

(assert (=> b!4927342 m!5945734))

(declare-fun m!5945736 () Bool)

(assert (=> b!4927342 m!5945736))

(assert (=> d!1585479 d!1585815))

(declare-fun d!1585817 () Bool)

(declare-fun c!839388 () Bool)

(assert (=> d!1585817 (= c!839388 ((_ is Nil!56697) (_1!33899 lt!2026999)))))

(declare-fun e!3078625 () (InoxSet C!26964))

(assert (=> d!1585817 (= (content!10073 (_1!33899 lt!2026999)) e!3078625)))

(declare-fun b!4927343 () Bool)

(assert (=> b!4927343 (= e!3078625 ((as const (Array C!26964 Bool)) false))))

(declare-fun b!4927344 () Bool)

(assert (=> b!4927344 (= e!3078625 ((_ map or) (store ((as const (Array C!26964 Bool)) false) (h!63145 (_1!33899 lt!2026999)) true) (content!10073 (t!367283 (_1!33899 lt!2026999)))))))

(assert (= (and d!1585817 c!839388) b!4927343))

(assert (= (and d!1585817 (not c!839388)) b!4927344))

(declare-fun m!5945738 () Bool)

(assert (=> b!4927344 m!5945738))

(declare-fun m!5945740 () Bool)

(assert (=> b!4927344 m!5945740))

(assert (=> d!1585479 d!1585817))

(declare-fun d!1585819 () Bool)

(declare-fun c!839389 () Bool)

(assert (=> d!1585819 (= c!839389 ((_ is Nil!56697) (_2!33899 lt!2026999)))))

(declare-fun e!3078626 () (InoxSet C!26964))

(assert (=> d!1585819 (= (content!10073 (_2!33899 lt!2026999)) e!3078626)))

(declare-fun b!4927345 () Bool)

(assert (=> b!4927345 (= e!3078626 ((as const (Array C!26964 Bool)) false))))

(declare-fun b!4927346 () Bool)

(assert (=> b!4927346 (= e!3078626 ((_ map or) (store ((as const (Array C!26964 Bool)) false) (h!63145 (_2!33899 lt!2026999)) true) (content!10073 (t!367283 (_2!33899 lt!2026999)))))))

(assert (= (and d!1585819 c!839389) b!4927345))

(assert (= (and d!1585819 (not c!839389)) b!4927346))

(declare-fun m!5945742 () Bool)

(assert (=> b!4927346 m!5945742))

(declare-fun m!5945744 () Bool)

(assert (=> b!4927346 m!5945744))

(assert (=> d!1585479 d!1585819))

(assert (=> bm!343647 d!1585509))

(declare-fun bs!1179827 () Bool)

(declare-fun d!1585821 () Bool)

(assert (= bs!1179827 (and d!1585821 d!1585811)))

(declare-fun lambda!245327 () Int)

(assert (=> bs!1179827 (= (= call!343630 call!343654) (= lambda!245327 lambda!245326))))

(assert (=> d!1585821 true))

(assert (=> d!1585821 (= (derivationStepZipper!592 z!3559 call!343630) (flatMap!267 z!3559 lambda!245327))))

(declare-fun bs!1179828 () Bool)

(assert (= bs!1179828 d!1585821))

(declare-fun m!5945746 () Bool)

(assert (=> bs!1179828 m!5945746))

(assert (=> bm!343627 d!1585821))

(declare-fun b!4927350 () Bool)

(declare-fun e!3078628 () List!56821)

(assert (=> b!4927350 (= e!3078628 (++!12330 (list!17961 (left!41344 (c!839087 (_1!33900 lt!2026997)))) (list!17961 (right!41674 (c!839087 (_1!33900 lt!2026997))))))))

(declare-fun b!4927349 () Bool)

(assert (=> b!4927349 (= e!3078628 (list!17963 (xs!18198 (c!839087 (_1!33900 lt!2026997)))))))

(declare-fun d!1585823 () Bool)

(declare-fun c!839390 () Bool)

(assert (=> d!1585823 (= c!839390 ((_ is Empty!14876) (c!839087 (_1!33900 lt!2026997))))))

(declare-fun e!3078627 () List!56821)

(assert (=> d!1585823 (= (list!17961 (c!839087 (_1!33900 lt!2026997))) e!3078627)))

(declare-fun b!4927347 () Bool)

(assert (=> b!4927347 (= e!3078627 Nil!56697)))

(declare-fun b!4927348 () Bool)

(assert (=> b!4927348 (= e!3078627 e!3078628)))

(declare-fun c!839391 () Bool)

(assert (=> b!4927348 (= c!839391 ((_ is Leaf!24747) (c!839087 (_1!33900 lt!2026997))))))

(assert (= (and d!1585823 c!839390) b!4927347))

(assert (= (and d!1585823 (not c!839390)) b!4927348))

(assert (= (and b!4927348 c!839391) b!4927349))

(assert (= (and b!4927348 (not c!839391)) b!4927350))

(declare-fun m!5945748 () Bool)

(assert (=> b!4927350 m!5945748))

(declare-fun m!5945750 () Bool)

(assert (=> b!4927350 m!5945750))

(assert (=> b!4927350 m!5945748))

(assert (=> b!4927350 m!5945750))

(declare-fun m!5945752 () Bool)

(assert (=> b!4927350 m!5945752))

(declare-fun m!5945754 () Bool)

(assert (=> b!4927349 m!5945754))

(assert (=> d!1585477 d!1585823))

(declare-fun d!1585825 () Bool)

(assert (=> d!1585825 (= (inv!73500 (xs!18198 (c!839087 input!5492))) (<= (size!37489 (innerList!14964 (xs!18198 (c!839087 input!5492)))) 2147483647))))

(declare-fun bs!1179829 () Bool)

(assert (= bs!1179829 d!1585825))

(declare-fun m!5945756 () Bool)

(assert (=> bs!1179829 m!5945756))

(assert (=> b!4926738 d!1585825))

(declare-fun b!4927354 () Bool)

(declare-fun e!3078630 () List!56821)

(assert (=> b!4927354 (= e!3078630 (++!12330 (list!17961 (left!41344 (c!839087 (_2!33900 lt!2026997)))) (list!17961 (right!41674 (c!839087 (_2!33900 lt!2026997))))))))

(declare-fun b!4927353 () Bool)

(assert (=> b!4927353 (= e!3078630 (list!17963 (xs!18198 (c!839087 (_2!33900 lt!2026997)))))))

(declare-fun d!1585827 () Bool)

(declare-fun c!839392 () Bool)

(assert (=> d!1585827 (= c!839392 ((_ is Empty!14876) (c!839087 (_2!33900 lt!2026997))))))

(declare-fun e!3078629 () List!56821)

(assert (=> d!1585827 (= (list!17961 (c!839087 (_2!33900 lt!2026997))) e!3078629)))

(declare-fun b!4927351 () Bool)

(assert (=> b!4927351 (= e!3078629 Nil!56697)))

(declare-fun b!4927352 () Bool)

(assert (=> b!4927352 (= e!3078629 e!3078630)))

(declare-fun c!839393 () Bool)

(assert (=> b!4927352 (= c!839393 ((_ is Leaf!24747) (c!839087 (_2!33900 lt!2026997))))))

(assert (= (and d!1585827 c!839392) b!4927351))

(assert (= (and d!1585827 (not c!839392)) b!4927352))

(assert (= (and b!4927352 c!839393) b!4927353))

(assert (= (and b!4927352 (not c!839393)) b!4927354))

(declare-fun m!5945758 () Bool)

(assert (=> b!4927354 m!5945758))

(declare-fun m!5945760 () Bool)

(assert (=> b!4927354 m!5945760))

(assert (=> b!4927354 m!5945758))

(assert (=> b!4927354 m!5945760))

(declare-fun m!5945762 () Bool)

(assert (=> b!4927354 m!5945762))

(declare-fun m!5945764 () Bool)

(assert (=> b!4927353 m!5945764))

(assert (=> d!1585485 d!1585827))

(assert (=> b!4926615 d!1585489))

(declare-fun d!1585829 () Bool)

(declare-fun res!2102984 () Bool)

(declare-fun e!3078633 () Bool)

(assert (=> d!1585829 (=> (not res!2102984) (not e!3078633))))

(assert (=> d!1585829 (= res!2102984 (<= (size!37489 (list!17963 (xs!18198 (c!839087 input!5492)))) 512))))

(assert (=> d!1585829 (= (inv!73499 (c!839087 input!5492)) e!3078633)))

(declare-fun b!4927359 () Bool)

(declare-fun res!2102985 () Bool)

(assert (=> b!4927359 (=> (not res!2102985) (not e!3078633))))

(assert (=> b!4927359 (= res!2102985 (= (csize!29983 (c!839087 input!5492)) (size!37489 (list!17963 (xs!18198 (c!839087 input!5492))))))))

(declare-fun b!4927360 () Bool)

(assert (=> b!4927360 (= e!3078633 (and (> (csize!29983 (c!839087 input!5492)) 0) (<= (csize!29983 (c!839087 input!5492)) 512)))))

(assert (= (and d!1585829 res!2102984) b!4927359))

(assert (= (and b!4927359 res!2102985) b!4927360))

(assert (=> d!1585829 m!5945112))

(assert (=> d!1585829 m!5945112))

(declare-fun m!5945766 () Bool)

(assert (=> d!1585829 m!5945766))

(assert (=> b!4927359 m!5945112))

(assert (=> b!4927359 m!5945112))

(assert (=> b!4927359 m!5945766))

(assert (=> b!4926718 d!1585829))

(declare-fun b!4927361 () Bool)

(declare-fun e!3078634 () List!56821)

(assert (=> b!4927361 (= e!3078634 (_2!33899 lt!2026999))))

(declare-fun b!4927364 () Bool)

(declare-fun e!3078635 () Bool)

(declare-fun lt!2027816 () List!56821)

(assert (=> b!4927364 (= e!3078635 (or (not (= (_2!33899 lt!2026999) Nil!56697)) (= lt!2027816 (t!367283 (_1!33899 lt!2026999)))))))

(declare-fun b!4927363 () Bool)

(declare-fun res!2102986 () Bool)

(assert (=> b!4927363 (=> (not res!2102986) (not e!3078635))))

(assert (=> b!4927363 (= res!2102986 (= (size!37489 lt!2027816) (+ (size!37489 (t!367283 (_1!33899 lt!2026999))) (size!37489 (_2!33899 lt!2026999)))))))

(declare-fun d!1585831 () Bool)

(assert (=> d!1585831 e!3078635))

(declare-fun res!2102987 () Bool)

(assert (=> d!1585831 (=> (not res!2102987) (not e!3078635))))

(assert (=> d!1585831 (= res!2102987 (= (content!10073 lt!2027816) ((_ map or) (content!10073 (t!367283 (_1!33899 lt!2026999))) (content!10073 (_2!33899 lt!2026999)))))))

(assert (=> d!1585831 (= lt!2027816 e!3078634)))

(declare-fun c!839394 () Bool)

(assert (=> d!1585831 (= c!839394 ((_ is Nil!56697) (t!367283 (_1!33899 lt!2026999))))))

(assert (=> d!1585831 (= (++!12330 (t!367283 (_1!33899 lt!2026999)) (_2!33899 lt!2026999)) lt!2027816)))

(declare-fun b!4927362 () Bool)

(assert (=> b!4927362 (= e!3078634 (Cons!56697 (h!63145 (t!367283 (_1!33899 lt!2026999))) (++!12330 (t!367283 (t!367283 (_1!33899 lt!2026999))) (_2!33899 lt!2026999))))))

(assert (= (and d!1585831 c!839394) b!4927361))

(assert (= (and d!1585831 (not c!839394)) b!4927362))

(assert (= (and d!1585831 res!2102987) b!4927363))

(assert (= (and b!4927363 res!2102986) b!4927364))

(declare-fun m!5945768 () Bool)

(assert (=> b!4927363 m!5945768))

(assert (=> b!4927363 m!5944710))

(assert (=> b!4927363 m!5944622))

(declare-fun m!5945770 () Bool)

(assert (=> d!1585831 m!5945770))

(assert (=> d!1585831 m!5945740))

(assert (=> d!1585831 m!5944628))

(declare-fun m!5945772 () Bool)

(assert (=> b!4927362 m!5945772))

(assert (=> b!4926630 d!1585831))

(declare-fun d!1585833 () Bool)

(declare-fun res!2102994 () Bool)

(declare-fun e!3078638 () Bool)

(assert (=> d!1585833 (=> (not res!2102994) (not e!3078638))))

(assert (=> d!1585833 (= res!2102994 (= (csize!29982 (c!839087 input!5492)) (+ (size!37492 (left!41344 (c!839087 input!5492))) (size!37492 (right!41674 (c!839087 input!5492))))))))

(assert (=> d!1585833 (= (inv!73498 (c!839087 input!5492)) e!3078638)))

(declare-fun b!4927371 () Bool)

(declare-fun res!2102995 () Bool)

(assert (=> b!4927371 (=> (not res!2102995) (not e!3078638))))

(assert (=> b!4927371 (= res!2102995 (and (not (= (left!41344 (c!839087 input!5492)) Empty!14876)) (not (= (right!41674 (c!839087 input!5492)) Empty!14876))))))

(declare-fun b!4927372 () Bool)

(declare-fun res!2102996 () Bool)

(assert (=> b!4927372 (=> (not res!2102996) (not e!3078638))))

(declare-fun max!0 (Int Int) Int)

(assert (=> b!4927372 (= res!2102996 (= (cheight!15087 (c!839087 input!5492)) (+ (max!0 (height!1986 (left!41344 (c!839087 input!5492))) (height!1986 (right!41674 (c!839087 input!5492)))) 1)))))

(declare-fun b!4927373 () Bool)

(assert (=> b!4927373 (= e!3078638 (<= 0 (cheight!15087 (c!839087 input!5492))))))

(assert (= (and d!1585833 res!2102994) b!4927371))

(assert (= (and b!4927371 res!2102995) b!4927372))

(assert (= (and b!4927372 res!2102996) b!4927373))

(assert (=> d!1585833 m!5945488))

(declare-fun m!5945774 () Bool)

(assert (=> d!1585833 m!5945774))

(assert (=> b!4927372 m!5945552))

(assert (=> b!4927372 m!5945554))

(assert (=> b!4927372 m!5945552))

(assert (=> b!4927372 m!5945554))

(declare-fun m!5945776 () Bool)

(assert (=> b!4927372 m!5945776))

(assert (=> b!4926716 d!1585833))

(declare-fun bs!1179830 () Bool)

(declare-fun d!1585835 () Bool)

(assert (= bs!1179830 (and d!1585835 d!1585579)))

(declare-fun lambda!245330 () Int)

(assert (=> bs!1179830 (not (= lambda!245330 lambda!245303))))

(declare-fun bs!1179831 () Bool)

(assert (= bs!1179831 (and d!1585835 b!4926927)))

(assert (=> bs!1179831 (not (= lambda!245330 lambda!245304))))

(declare-fun bs!1179832 () Bool)

(assert (= bs!1179832 (and d!1585835 b!4926928)))

(assert (=> bs!1179832 (not (= lambda!245330 lambda!245305))))

(declare-fun exists!1253 ((InoxSet Context!6038) Int) Bool)

(assert (=> d!1585835 (= (nullableZipper!814 z!3559) (exists!1253 z!3559 lambda!245330))))

(declare-fun bs!1179833 () Bool)

(assert (= bs!1179833 d!1585835))

(declare-fun m!5945778 () Bool)

(assert (=> bs!1179833 m!5945778))

(assert (=> bm!343650 d!1585835))

(assert (=> bm!343622 d!1585835))

(declare-fun d!1585837 () Bool)

(declare-fun c!839397 () Bool)

(assert (=> d!1585837 (= c!839397 ((_ is Node!14876) (left!41344 (c!839087 input!5492))))))

(declare-fun e!3078639 () Bool)

(assert (=> d!1585837 (= (inv!73492 (left!41344 (c!839087 input!5492))) e!3078639)))

(declare-fun b!4927374 () Bool)

(assert (=> b!4927374 (= e!3078639 (inv!73498 (left!41344 (c!839087 input!5492))))))

(declare-fun b!4927375 () Bool)

(declare-fun e!3078640 () Bool)

(assert (=> b!4927375 (= e!3078639 e!3078640)))

(declare-fun res!2102997 () Bool)

(assert (=> b!4927375 (= res!2102997 (not ((_ is Leaf!24747) (left!41344 (c!839087 input!5492)))))))

(assert (=> b!4927375 (=> res!2102997 e!3078640)))

(declare-fun b!4927376 () Bool)

(assert (=> b!4927376 (= e!3078640 (inv!73499 (left!41344 (c!839087 input!5492))))))

(assert (= (and d!1585837 c!839397) b!4927374))

(assert (= (and d!1585837 (not c!839397)) b!4927375))

(assert (= (and b!4927375 (not res!2102997)) b!4927376))

(declare-fun m!5945780 () Bool)

(assert (=> b!4927374 m!5945780))

(declare-fun m!5945782 () Bool)

(assert (=> b!4927376 m!5945782))

(assert (=> b!4926737 d!1585837))

(declare-fun d!1585839 () Bool)

(declare-fun c!839398 () Bool)

(assert (=> d!1585839 (= c!839398 ((_ is Node!14876) (right!41674 (c!839087 input!5492))))))

(declare-fun e!3078641 () Bool)

(assert (=> d!1585839 (= (inv!73492 (right!41674 (c!839087 input!5492))) e!3078641)))

(declare-fun b!4927377 () Bool)

(assert (=> b!4927377 (= e!3078641 (inv!73498 (right!41674 (c!839087 input!5492))))))

(declare-fun b!4927378 () Bool)

(declare-fun e!3078642 () Bool)

(assert (=> b!4927378 (= e!3078641 e!3078642)))

(declare-fun res!2102998 () Bool)

(assert (=> b!4927378 (= res!2102998 (not ((_ is Leaf!24747) (right!41674 (c!839087 input!5492)))))))

(assert (=> b!4927378 (=> res!2102998 e!3078642)))

(declare-fun b!4927379 () Bool)

(assert (=> b!4927379 (= e!3078642 (inv!73499 (right!41674 (c!839087 input!5492))))))

(assert (= (and d!1585839 c!839398) b!4927377))

(assert (= (and d!1585839 (not c!839398)) b!4927378))

(assert (= (and b!4927378 (not res!2102998)) b!4927379))

(declare-fun m!5945784 () Bool)

(assert (=> b!4927377 m!5945784))

(declare-fun m!5945786 () Bool)

(assert (=> b!4927379 m!5945786))

(assert (=> b!4926737 d!1585839))

(declare-fun b!4927380 () Bool)

(declare-fun e!3078648 () Int)

(assert (=> b!4927380 (= e!3078648 0)))

(declare-fun b!4927381 () Bool)

(declare-fun c!839400 () Bool)

(declare-fun call!343733 () Bool)

(assert (=> b!4927381 (= c!839400 call!343733)))

(declare-fun lt!2027837 () Unit!147242)

(declare-fun lt!2027832 () Unit!147242)

(assert (=> b!4927381 (= lt!2027837 lt!2027832)))

(declare-fun lt!2027848 () List!56821)

(declare-fun lt!2027840 () List!56821)

(declare-fun lt!2027852 () C!26964)

(assert (=> b!4927381 (= (++!12330 (++!12330 call!343633 (Cons!56697 lt!2027852 Nil!56697)) lt!2027848) lt!2027840)))

(assert (=> b!4927381 (= lt!2027832 (lemmaMoveElementToOtherListKeepsConcatEq!1395 call!343633 lt!2027852 lt!2027848 lt!2027840))))

(assert (=> b!4927381 (= lt!2027840 (list!17959 input!5492))))

(assert (=> b!4927381 (= lt!2027848 (tail!9671 call!343626))))

(assert (=> b!4927381 (= lt!2027852 (apply!13667 input!5492 (+ 0 1)))))

(declare-fun lt!2027846 () Unit!147242)

(declare-fun lt!2027858 () Unit!147242)

(assert (=> b!4927381 (= lt!2027846 lt!2027858)))

(declare-fun lt!2027847 () List!56821)

(assert (=> b!4927381 (isPrefix!4965 (++!12330 call!343633 (Cons!56697 (head!10524 (getSuffix!2953 lt!2027847 call!343633)) Nil!56697)) lt!2027847)))

(assert (=> b!4927381 (= lt!2027858 (lemmaAddHeadSuffixToPrefixStillPrefix!777 call!343633 lt!2027847))))

(assert (=> b!4927381 (= lt!2027847 (list!17959 input!5492))))

(declare-fun lt!2027819 () Unit!147242)

(declare-fun e!3078645 () Unit!147242)

(assert (=> b!4927381 (= lt!2027819 e!3078645)))

(declare-fun c!839401 () Bool)

(assert (=> b!4927381 (= c!839401 (= (size!37489 call!343633) (size!37490 input!5492)))))

(declare-fun lt!2027838 () Unit!147242)

(declare-fun lt!2027818 () Unit!147242)

(assert (=> b!4927381 (= lt!2027838 lt!2027818)))

(declare-fun lt!2027854 () List!56821)

(assert (=> b!4927381 (<= (size!37489 call!343633) (size!37489 lt!2027854))))

(assert (=> b!4927381 (= lt!2027818 (lemmaIsPrefixThenSmallerEqSize!689 call!343633 lt!2027854))))

(assert (=> b!4927381 (= lt!2027854 (list!17959 input!5492))))

(declare-fun lt!2027822 () Unit!147242)

(declare-fun lt!2027856 () Unit!147242)

(assert (=> b!4927381 (= lt!2027822 lt!2027856)))

(declare-fun lt!2027843 () List!56821)

(assert (=> b!4927381 (= (head!10524 (drop!2227 lt!2027843 (+ 0 1))) (apply!13668 lt!2027843 (+ 0 1)))))

(assert (=> b!4927381 (= lt!2027856 (lemmaDropApply!1285 lt!2027843 (+ 0 1)))))

(assert (=> b!4927381 (= lt!2027843 (list!17959 input!5492))))

(declare-fun lt!2027825 () Unit!147242)

(declare-fun lt!2027835 () Unit!147242)

(assert (=> b!4927381 (= lt!2027825 lt!2027835)))

(declare-fun lt!2027857 () List!56821)

(declare-fun lt!2027823 () List!56821)

(assert (=> b!4927381 (and (= lt!2027823 call!343633) (= lt!2027857 call!343626))))

(assert (=> b!4927381 (= lt!2027835 (lemmaConcatSameAndSameSizesThenSameLists!660 lt!2027823 lt!2027857 call!343633 call!343626))))

(declare-fun lt!2027844 () tuple2!61194)

(assert (=> b!4927381 (= lt!2027857 (list!17959 (_2!33900 lt!2027844)))))

(declare-fun call!343735 () List!56821)

(assert (=> b!4927381 (= lt!2027823 call!343735)))

(assert (=> b!4927381 (= lt!2027844 (splitAt!277 input!5492 (+ 0 1)))))

(declare-fun e!3078644 () Int)

(declare-fun e!3078647 () Int)

(assert (=> b!4927381 (= e!3078644 e!3078647)))

(declare-fun b!4927382 () Bool)

(declare-fun call!343732 () Int)

(assert (=> b!4927382 (= e!3078647 call!343732)))

(declare-fun lt!2027855 () List!56821)

(declare-fun lt!2027820 () List!56821)

(declare-fun lt!2027821 () List!56821)

(declare-fun c!839399 () Bool)

(declare-fun call!343738 () Bool)

(declare-fun lt!2027830 () List!56821)

(declare-fun bm!343724 () Bool)

(assert (=> bm!343724 (= call!343738 (isPrefix!4965 (ite c!839399 lt!2027830 lt!2027820) (ite c!839399 lt!2027821 lt!2027855)))))

(declare-fun b!4927383 () Bool)

(declare-fun e!3078643 () List!56821)

(assert (=> b!4927383 (= e!3078643 call!343735)))

(declare-fun b!4927384 () Bool)

(assert (=> b!4927384 (= e!3078648 (+ 0 1))))

(declare-fun b!4927385 () Bool)

(declare-fun Unit!147269 () Unit!147242)

(assert (=> b!4927385 (= e!3078645 Unit!147269)))

(assert (=> b!4927385 (= lt!2027820 (list!17959 input!5492))))

(assert (=> b!4927385 (= lt!2027855 (list!17959 input!5492))))

(declare-fun lt!2027850 () Unit!147242)

(declare-fun call!343736 () Unit!147242)

(assert (=> b!4927385 (= lt!2027850 call!343736)))

(assert (=> b!4927385 call!343738))

(declare-fun lt!2027842 () Unit!147242)

(assert (=> b!4927385 (= lt!2027842 lt!2027850)))

(declare-fun lt!2027853 () List!56821)

(assert (=> b!4927385 (= lt!2027853 (list!17959 input!5492))))

(declare-fun lt!2027845 () Unit!147242)

(declare-fun call!343729 () Unit!147242)

(assert (=> b!4927385 (= lt!2027845 call!343729)))

(assert (=> b!4927385 (= lt!2027853 call!343633)))

(declare-fun lt!2027828 () Unit!147242)

(assert (=> b!4927385 (= lt!2027828 lt!2027845)))

(assert (=> b!4927385 false))

(declare-fun b!4927386 () Bool)

(declare-fun e!3078646 () Int)

(assert (=> b!4927386 (= e!3078646 0)))

(declare-fun bm!343725 () Bool)

(declare-fun call!343737 () List!56821)

(declare-fun call!343734 () C!26964)

(assert (=> bm!343725 (= call!343737 (++!12330 call!343633 (Cons!56697 call!343734 Nil!56697)))))

(declare-fun b!4927387 () Bool)

(declare-fun c!839402 () Bool)

(assert (=> b!4927387 (= c!839402 call!343733)))

(declare-fun lt!2027836 () Unit!147242)

(declare-fun lt!2027824 () Unit!147242)

(assert (=> b!4927387 (= lt!2027836 lt!2027824)))

(declare-fun lt!2027817 () List!56821)

(assert (=> b!4927387 (= lt!2027817 call!343633)))

(assert (=> b!4927387 (= lt!2027824 call!343729)))

(assert (=> b!4927387 (= lt!2027817 call!343735)))

(declare-fun lt!2027827 () Unit!147242)

(declare-fun lt!2027826 () Unit!147242)

(assert (=> b!4927387 (= lt!2027827 lt!2027826)))

(assert (=> b!4927387 call!343738))

(assert (=> b!4927387 (= lt!2027826 call!343736)))

(assert (=> b!4927387 (= lt!2027821 call!343735)))

(assert (=> b!4927387 (= lt!2027830 call!343735)))

(assert (=> b!4927387 (= e!3078644 e!3078648)))

(declare-fun bm!343726 () Bool)

(assert (=> bm!343726 (= call!343733 (nullableZipper!814 call!343627))))

(declare-fun bm!343727 () Bool)

(assert (=> bm!343727 (= call!343735 (list!17959 (ite c!839399 input!5492 (_1!33900 lt!2027844))))))

(declare-fun d!1585841 () Bool)

(declare-fun lt!2027839 () Int)

(assert (=> d!1585841 (= (size!37489 (_1!33899 (findLongestMatchInnerZipper!62 call!343627 call!343633 (+ 0 1) call!343626 (list!17959 input!5492) lt!2026996))) lt!2027839)))

(assert (=> d!1585841 (= lt!2027839 e!3078646)))

(declare-fun c!839404 () Bool)

(assert (=> d!1585841 (= c!839404 (lostCauseZipper!695 call!343627))))

(declare-fun lt!2027833 () Unit!147242)

(declare-fun Unit!147270 () Unit!147242)

(assert (=> d!1585841 (= lt!2027833 Unit!147270)))

(assert (=> d!1585841 (= (getSuffix!2953 (list!17959 input!5492) call!343633) call!343626)))

(declare-fun lt!2027834 () Unit!147242)

(declare-fun lt!2027831 () Unit!147242)

(assert (=> d!1585841 (= lt!2027834 lt!2027831)))

(declare-fun lt!2027829 () List!56821)

(assert (=> d!1585841 (= call!343626 lt!2027829)))

(assert (=> d!1585841 (= lt!2027831 (lemmaSamePrefixThenSameSuffix!2369 call!343633 call!343626 call!343633 lt!2027829 (list!17959 input!5492)))))

(assert (=> d!1585841 (= lt!2027829 (getSuffix!2953 (list!17959 input!5492) call!343633))))

(declare-fun lt!2027849 () Unit!147242)

(declare-fun lt!2027841 () Unit!147242)

(assert (=> d!1585841 (= lt!2027849 lt!2027841)))

(assert (=> d!1585841 (isPrefix!4965 call!343633 (++!12330 call!343633 call!343626))))

(assert (=> d!1585841 (= lt!2027841 (lemmaConcatTwoListThenFirstIsPrefix!3189 call!343633 call!343626))))

(assert (=> d!1585841 (= (++!12330 call!343633 call!343626) (list!17959 input!5492))))

(assert (=> d!1585841 (= (findLongestMatchInnerZipperFast!89 call!343627 call!343633 (+ 0 1) call!343626 input!5492 lt!2026996) lt!2027839)))

(declare-fun bm!343728 () Bool)

(assert (=> bm!343728 (= call!343734 (apply!13667 input!5492 (+ 0 1)))))

(declare-fun bm!343729 () Bool)

(assert (=> bm!343729 (= call!343736 (lemmaIsPrefixRefl!3361 (ite c!839399 lt!2027830 lt!2027820) (ite c!839399 lt!2027821 lt!2027855)))))

(declare-fun call!343730 () List!56821)

(declare-fun call!343731 () (InoxSet Context!6038))

(declare-fun bm!343730 () Bool)

(assert (=> bm!343730 (= call!343732 (findLongestMatchInnerZipperFast!89 call!343731 call!343737 (+ 0 1 1) call!343730 input!5492 lt!2026996))))

(declare-fun b!4927388 () Bool)

(declare-fun Unit!147271 () Unit!147242)

(assert (=> b!4927388 (= e!3078645 Unit!147271)))

(declare-fun b!4927389 () Bool)

(declare-fun lt!2027851 () Int)

(assert (=> b!4927389 (= e!3078647 (ite (= lt!2027851 0) (+ 0 1) lt!2027851))))

(assert (=> b!4927389 (= lt!2027851 call!343732)))

(declare-fun bm!343731 () Bool)

(assert (=> bm!343731 (= call!343731 (derivationStepZipper!592 call!343627 call!343734))))

(declare-fun bm!343732 () Bool)

(declare-fun c!839403 () Bool)

(assert (=> bm!343732 (= c!839403 c!839399)))

(assert (=> bm!343732 (= call!343729 (lemmaIsPrefixSameLengthThenSameList!1123 (ite c!839399 lt!2027817 lt!2027853) call!343633 e!3078643))))

(declare-fun b!4927390 () Bool)

(assert (=> b!4927390 (= e!3078643 (list!17959 input!5492))))

(declare-fun bm!343733 () Bool)

(assert (=> bm!343733 (= call!343730 (tail!9671 call!343626))))

(declare-fun b!4927391 () Bool)

(assert (=> b!4927391 (= e!3078646 e!3078644)))

(assert (=> b!4927391 (= c!839399 (= (+ 0 1) lt!2026996))))

(assert (= (and d!1585841 c!839404) b!4927386))

(assert (= (and d!1585841 (not c!839404)) b!4927391))

(assert (= (and b!4927391 c!839399) b!4927387))

(assert (= (and b!4927391 (not c!839399)) b!4927381))

(assert (= (and b!4927387 c!839402) b!4927384))

(assert (= (and b!4927387 (not c!839402)) b!4927380))

(assert (= (and b!4927381 c!839401) b!4927385))

(assert (= (and b!4927381 (not c!839401)) b!4927388))

(assert (= (and b!4927381 c!839400) b!4927389))

(assert (= (and b!4927381 (not c!839400)) b!4927382))

(assert (= (or b!4927389 b!4927382) bm!343728))

(assert (= (or b!4927389 b!4927382) bm!343733))

(assert (= (or b!4927389 b!4927382) bm!343731))

(assert (= (or b!4927389 b!4927382) bm!343725))

(assert (= (or b!4927389 b!4927382) bm!343730))

(assert (= (or b!4927387 b!4927381) bm!343726))

(assert (= (or b!4927387 b!4927385) bm!343724))

(assert (= (or b!4927387 b!4927385) bm!343729))

(assert (= (or b!4927387 b!4927381) bm!343727))

(assert (= (or b!4927387 b!4927385) bm!343732))

(assert (= (and bm!343732 c!839403) b!4927383))

(assert (= (and bm!343732 (not c!839403)) b!4927390))

(declare-fun m!5945788 () Bool)

(assert (=> bm!343725 m!5945788))

(declare-fun m!5945790 () Bool)

(assert (=> bm!343731 m!5945790))

(declare-fun m!5945792 () Bool)

(assert (=> bm!343728 m!5945792))

(assert (=> b!4927385 m!5944346))

(declare-fun m!5945794 () Bool)

(assert (=> bm!343726 m!5945794))

(declare-fun m!5945796 () Bool)

(assert (=> bm!343729 m!5945796))

(assert (=> b!4927390 m!5944346))

(declare-fun m!5945798 () Bool)

(assert (=> b!4927381 m!5945798))

(declare-fun m!5945800 () Bool)

(assert (=> b!4927381 m!5945800))

(declare-fun m!5945802 () Bool)

(assert (=> b!4927381 m!5945802))

(declare-fun m!5945804 () Bool)

(assert (=> b!4927381 m!5945804))

(declare-fun m!5945806 () Bool)

(assert (=> b!4927381 m!5945806))

(declare-fun m!5945808 () Bool)

(assert (=> b!4927381 m!5945808))

(declare-fun m!5945810 () Bool)

(assert (=> b!4927381 m!5945810))

(assert (=> b!4927381 m!5945806))

(declare-fun m!5945812 () Bool)

(assert (=> b!4927381 m!5945812))

(assert (=> b!4927381 m!5944358))

(declare-fun m!5945814 () Bool)

(assert (=> b!4927381 m!5945814))

(assert (=> b!4927381 m!5945798))

(assert (=> b!4927381 m!5945802))

(declare-fun m!5945816 () Bool)

(assert (=> b!4927381 m!5945816))

(declare-fun m!5945818 () Bool)

(assert (=> b!4927381 m!5945818))

(declare-fun m!5945820 () Bool)

(assert (=> b!4927381 m!5945820))

(declare-fun m!5945822 () Bool)

(assert (=> b!4927381 m!5945822))

(declare-fun m!5945824 () Bool)

(assert (=> b!4927381 m!5945824))

(assert (=> b!4927381 m!5944346))

(declare-fun m!5945826 () Bool)

(assert (=> b!4927381 m!5945826))

(declare-fun m!5945828 () Bool)

(assert (=> b!4927381 m!5945828))

(assert (=> b!4927381 m!5945792))

(declare-fun m!5945830 () Bool)

(assert (=> b!4927381 m!5945830))

(assert (=> b!4927381 m!5945826))

(declare-fun m!5945832 () Bool)

(assert (=> b!4927381 m!5945832))

(declare-fun m!5945834 () Bool)

(assert (=> b!4927381 m!5945834))

(declare-fun m!5945836 () Bool)

(assert (=> bm!343724 m!5945836))

(assert (=> d!1585841 m!5944346))

(declare-fun m!5945838 () Bool)

(assert (=> d!1585841 m!5945838))

(declare-fun m!5945840 () Bool)

(assert (=> d!1585841 m!5945840))

(assert (=> d!1585841 m!5944346))

(declare-fun m!5945842 () Bool)

(assert (=> d!1585841 m!5945842))

(declare-fun m!5945844 () Bool)

(assert (=> d!1585841 m!5945844))

(assert (=> d!1585841 m!5945844))

(declare-fun m!5945846 () Bool)

(assert (=> d!1585841 m!5945846))

(assert (=> d!1585841 m!5944346))

(declare-fun m!5945848 () Bool)

(assert (=> d!1585841 m!5945848))

(assert (=> d!1585841 m!5944346))

(declare-fun m!5945850 () Bool)

(assert (=> d!1585841 m!5945850))

(declare-fun m!5945852 () Bool)

(assert (=> d!1585841 m!5945852))

(declare-fun m!5945854 () Bool)

(assert (=> bm!343730 m!5945854))

(declare-fun m!5945856 () Bool)

(assert (=> bm!343732 m!5945856))

(declare-fun m!5945858 () Bool)

(assert (=> bm!343727 m!5945858))

(assert (=> bm!343733 m!5945808))

(assert (=> bm!343626 d!1585841))

(assert (=> bm!343624 d!1585511))

(assert (=> b!4926610 d!1585489))

(assert (=> d!1585491 d!1585757))

(declare-fun b!4927392 () Bool)

(declare-fun e!3078649 () List!56821)

(assert (=> b!4927392 (= e!3078649 (Cons!56697 call!343630 Nil!56697))))

(declare-fun b!4927395 () Bool)

(declare-fun e!3078650 () Bool)

(declare-fun lt!2027859 () List!56821)

(assert (=> b!4927395 (= e!3078650 (or (not (= (Cons!56697 call!343630 Nil!56697) Nil!56697)) (= lt!2027859 Nil!56697)))))

(declare-fun b!4927394 () Bool)

(declare-fun res!2102999 () Bool)

(assert (=> b!4927394 (=> (not res!2102999) (not e!3078650))))

(assert (=> b!4927394 (= res!2102999 (= (size!37489 lt!2027859) (+ (size!37489 Nil!56697) (size!37489 (Cons!56697 call!343630 Nil!56697)))))))

(declare-fun d!1585843 () Bool)

(assert (=> d!1585843 e!3078650))

(declare-fun res!2103000 () Bool)

(assert (=> d!1585843 (=> (not res!2103000) (not e!3078650))))

(assert (=> d!1585843 (= res!2103000 (= (content!10073 lt!2027859) ((_ map or) (content!10073 Nil!56697) (content!10073 (Cons!56697 call!343630 Nil!56697)))))))

(assert (=> d!1585843 (= lt!2027859 e!3078649)))

(declare-fun c!839405 () Bool)

(assert (=> d!1585843 (= c!839405 ((_ is Nil!56697) Nil!56697))))

(assert (=> d!1585843 (= (++!12330 Nil!56697 (Cons!56697 call!343630 Nil!56697)) lt!2027859)))

(declare-fun b!4927393 () Bool)

(assert (=> b!4927393 (= e!3078649 (Cons!56697 (h!63145 Nil!56697) (++!12330 (t!367283 Nil!56697) (Cons!56697 call!343630 Nil!56697))))))

(assert (= (and d!1585843 c!839405) b!4927392))

(assert (= (and d!1585843 (not c!839405)) b!4927393))

(assert (= (and d!1585843 res!2103000) b!4927394))

(assert (= (and b!4927394 res!2102999) b!4927395))

(declare-fun m!5945860 () Bool)

(assert (=> b!4927394 m!5945860))

(assert (=> b!4927394 m!5944576))

(declare-fun m!5945862 () Bool)

(assert (=> b!4927394 m!5945862))

(declare-fun m!5945864 () Bool)

(assert (=> d!1585843 m!5945864))

(assert (=> d!1585843 m!5944740))

(declare-fun m!5945866 () Bool)

(assert (=> d!1585843 m!5945866))

(declare-fun m!5945868 () Bool)

(assert (=> b!4927393 m!5945868))

(assert (=> bm!343621 d!1585843))

(declare-fun d!1585845 () Bool)

(assert (=> d!1585845 (= (isEmpty!30579 (_1!33899 lt!2027433)) ((_ is Nil!56697) (_1!33899 lt!2027433)))))

(assert (=> b!4926693 d!1585845))

(declare-fun b!4927400 () Bool)

(declare-fun e!3078653 () Bool)

(declare-fun tp_is_empty!35913 () Bool)

(declare-fun tp!1383638 () Bool)

(assert (=> b!4927400 (= e!3078653 (and tp_is_empty!35913 tp!1383638))))

(assert (=> b!4926739 (= tp!1383633 e!3078653)))

(assert (= (and b!4926739 ((_ is Cons!56697) (innerList!14964 (xs!18198 (c!839087 input!5492))))) b!4927400))

(declare-fun b!4927401 () Bool)

(declare-fun tp!1383641 () Bool)

(declare-fun tp!1383640 () Bool)

(declare-fun e!3078655 () Bool)

(assert (=> b!4927401 (= e!3078655 (and (inv!73492 (left!41344 (left!41344 (c!839087 input!5492)))) tp!1383640 (inv!73492 (right!41674 (left!41344 (c!839087 input!5492)))) tp!1383641))))

(declare-fun b!4927403 () Bool)

(declare-fun e!3078654 () Bool)

(declare-fun tp!1383639 () Bool)

(assert (=> b!4927403 (= e!3078654 tp!1383639)))

(declare-fun b!4927402 () Bool)

(assert (=> b!4927402 (= e!3078655 (and (inv!73500 (xs!18198 (left!41344 (c!839087 input!5492)))) e!3078654))))

(assert (=> b!4926737 (= tp!1383634 (and (inv!73492 (left!41344 (c!839087 input!5492))) e!3078655))))

(assert (= (and b!4926737 ((_ is Node!14876) (left!41344 (c!839087 input!5492)))) b!4927401))

(assert (= b!4927402 b!4927403))

(assert (= (and b!4926737 ((_ is Leaf!24747) (left!41344 (c!839087 input!5492)))) b!4927402))

(declare-fun m!5945870 () Bool)

(assert (=> b!4927401 m!5945870))

(declare-fun m!5945872 () Bool)

(assert (=> b!4927401 m!5945872))

(declare-fun m!5945874 () Bool)

(assert (=> b!4927402 m!5945874))

(assert (=> b!4926737 m!5944718))

(declare-fun e!3078657 () Bool)

(declare-fun tp!1383644 () Bool)

(declare-fun b!4927404 () Bool)

(declare-fun tp!1383643 () Bool)

(assert (=> b!4927404 (= e!3078657 (and (inv!73492 (left!41344 (right!41674 (c!839087 input!5492)))) tp!1383643 (inv!73492 (right!41674 (right!41674 (c!839087 input!5492)))) tp!1383644))))

(declare-fun b!4927406 () Bool)

(declare-fun e!3078656 () Bool)

(declare-fun tp!1383642 () Bool)

(assert (=> b!4927406 (= e!3078656 tp!1383642)))

(declare-fun b!4927405 () Bool)

(assert (=> b!4927405 (= e!3078657 (and (inv!73500 (xs!18198 (right!41674 (c!839087 input!5492)))) e!3078656))))

(assert (=> b!4926737 (= tp!1383635 (and (inv!73492 (right!41674 (c!839087 input!5492))) e!3078657))))

(assert (= (and b!4926737 ((_ is Node!14876) (right!41674 (c!839087 input!5492)))) b!4927404))

(assert (= b!4927405 b!4927406))

(assert (= (and b!4926737 ((_ is Leaf!24747) (right!41674 (c!839087 input!5492)))) b!4927405))

(declare-fun m!5945876 () Bool)

(assert (=> b!4927404 m!5945876))

(declare-fun m!5945878 () Bool)

(assert (=> b!4927404 m!5945878))

(declare-fun m!5945880 () Bool)

(assert (=> b!4927405 m!5945880))

(assert (=> b!4926737 m!5944720))

(declare-fun b!4927409 () Bool)

(declare-fun e!3078658 () Bool)

(declare-fun tp!1383645 () Bool)

(declare-fun tp!1383646 () Bool)

(assert (=> b!4927409 (= e!3078658 (and tp!1383645 tp!1383646))))

(assert (=> b!4926723 (= tp!1383620 e!3078658)))

(assert (= (and b!4926723 ((_ is Cons!56698) (exprs!3519 setElem!27556))) b!4927409))

(declare-fun e!3078669 () Bool)

(assert (=> b!4926728 (= tp!1383625 e!3078669)))

(declare-fun b!4927435 () Bool)

(declare-fun tp!1383659 () Bool)

(declare-fun tp!1383661 () Bool)

(assert (=> b!4927435 (= e!3078669 (and tp!1383659 tp!1383661))))

(declare-fun b!4927437 () Bool)

(declare-fun tp!1383658 () Bool)

(declare-fun tp!1383657 () Bool)

(assert (=> b!4927437 (= e!3078669 (and tp!1383658 tp!1383657))))

(declare-fun b!4927436 () Bool)

(declare-fun tp!1383660 () Bool)

(assert (=> b!4927436 (= e!3078669 tp!1383660)))

(declare-fun b!4927434 () Bool)

(assert (=> b!4927434 (= e!3078669 tp_is_empty!35913)))

(assert (= (and b!4926728 ((_ is ElementMatch!13377) (h!63146 (exprs!3519 setElem!27550)))) b!4927434))

(assert (= (and b!4926728 ((_ is Concat!21950) (h!63146 (exprs!3519 setElem!27550)))) b!4927435))

(assert (= (and b!4926728 ((_ is Star!13377) (h!63146 (exprs!3519 setElem!27550)))) b!4927436))

(assert (= (and b!4926728 ((_ is Union!13377) (h!63146 (exprs!3519 setElem!27550)))) b!4927437))

(declare-fun b!4927438 () Bool)

(declare-fun e!3078670 () Bool)

(declare-fun tp!1383662 () Bool)

(declare-fun tp!1383663 () Bool)

(assert (=> b!4927438 (= e!3078670 (and tp!1383662 tp!1383663))))

(assert (=> b!4926728 (= tp!1383626 e!3078670)))

(assert (= (and b!4926728 ((_ is Cons!56698) (t!367284 (exprs!3519 setElem!27550)))) b!4927438))

(declare-fun condSetEmpty!27557 () Bool)

(assert (=> setNonEmpty!27556 (= condSetEmpty!27557 (= setRest!27556 ((as const (Array Context!6038 Bool)) false)))))

(declare-fun setRes!27557 () Bool)

(assert (=> setNonEmpty!27556 (= tp!1383619 setRes!27557)))

(declare-fun setIsEmpty!27557 () Bool)

(assert (=> setIsEmpty!27557 setRes!27557))

(declare-fun e!3078671 () Bool)

(declare-fun setNonEmpty!27557 () Bool)

(declare-fun setElem!27557 () Context!6038)

(declare-fun tp!1383664 () Bool)

(assert (=> setNonEmpty!27557 (= setRes!27557 (and tp!1383664 (inv!73493 setElem!27557) e!3078671))))

(declare-fun setRest!27557 () (InoxSet Context!6038))

(assert (=> setNonEmpty!27557 (= setRest!27556 ((_ map or) (store ((as const (Array Context!6038 Bool)) false) setElem!27557 true) setRest!27557))))

(declare-fun b!4927439 () Bool)

(declare-fun tp!1383665 () Bool)

(assert (=> b!4927439 (= e!3078671 tp!1383665)))

(assert (= (and setNonEmpty!27556 condSetEmpty!27557) setIsEmpty!27557))

(assert (= (and setNonEmpty!27556 (not condSetEmpty!27557)) setNonEmpty!27557))

(assert (= setNonEmpty!27557 b!4927439))

(declare-fun m!5945882 () Bool)

(assert (=> setNonEmpty!27557 m!5945882))

(declare-fun b_lambda!196301 () Bool)

(assert (= b_lambda!196297 (or d!1585443 b_lambda!196301)))

(declare-fun bs!1179834 () Bool)

(declare-fun d!1585847 () Bool)

(assert (= bs!1179834 (and d!1585847 d!1585443)))

(declare-fun validRegex!5945 (Regex!13377) Bool)

(assert (=> bs!1179834 (= (dynLambda!23011 lambda!245281 (h!63146 (exprs!3519 setElem!27550))) (validRegex!5945 (h!63146 (exprs!3519 setElem!27550))))))

(declare-fun m!5945884 () Bool)

(assert (=> bs!1179834 m!5945884))

(assert (=> b!4927011 d!1585847))

(check-sat (not b!4926789) (not b!4927353) (not d!1585529) (not bm!343721) (not b!4927255) (not b!4926818) (not bs!1179834) (not bm!343705) tp_is_empty!35913 (not b!4926956) (not b!4927242) (not b!4926748) (not d!1585833) (not b!4927437) (not b!4926815) (not b!4927236) (not b!4926751) (not d!1585825) (not bm!343708) (not d!1585639) (not d!1585633) (not b!4926816) (not b!4926847) (not b!4927034) (not b!4927274) (not b!4927325) (not bm!343713) (not b!4927036) (not b!4927346) (not b!4927394) (not b!4927004) (not b!4927400) (not b!4927372) (not d!1585503) (not bm!343728) (not b!4927302) (not d!1585499) (not b!4927335) (not b!4927227) (not d!1585525) (not d!1585623) (not b!4927332) (not bm!343724) (not bm!343725) (not bm!343672) (not b!4927278) (not bm!343732) (not d!1585537) (not b!4926949) (not b!4927002) (not d!1585663) (not d!1585637) (not b!4927435) (not b!4926792) (not d!1585771) (not d!1585561) (not b!4927308) (not b!4927313) (not b!4927290) (not b!4927379) (not d!1585611) (not d!1585831) (not bm!343703) (not bm!343714) (not b!4927403) (not b!4927401) (not d!1585605) (not b!4926998) (not d!1585821) (not b!4926785) (not d!1585835) (not b!4926839) (not d!1585521) (not b!4926992) (not b!4927409) (not b!4926814) (not b!4926747) (not b!4926952) (not b!4926781) (not d!1585579) (not b!4927260) (not b!4927349) (not b!4927286) (not d!1585519) (not b!4927304) (not d!1585793) (not b!4926966) (not b!4927003) (not b!4926788) (not b!4927328) (not b!4927245) (not b!4926884) (not b!4927336) (not d!1585805) (not b!4926999) (not b!4927381) (not b!4926964) (not b!4927404) (not b!4927287) (not d!1585625) (not b!4927359) (not b!4927259) (not b!4927439) (not d!1585775) (not b!4926757) (not b!4926754) (not b!4927339) (not b!4926994) (not b!4926953) (not b!4927035) (not b!4926744) (not b!4927324) (not d!1585617) (not b!4927326) (not d!1585627) (not b!4927436) (not d!1585777) (not b!4927337) (not b!4927240) (not b!4927292) (not bm!343671) (not b!4926819) (not b!4926840) (not b!4926980) (not bm!343723) (not b!4926960) (not d!1585501) (not b!4927362) (not b!4926988) (not b!4927232) (not b!4927393) (not bm!343711) (not b!4926978) (not setNonEmpty!27557) (not bm!343718) (not bm!343656) (not b!4927350) (not b!4927344) (not b!4926759) (not d!1585765) (not d!1585645) (not bm!343722) (not bm!343719) (not bm!343715) (not b!4927406) (not b!4927405) (not bm!343702) (not bm!343706) (not d!1585841) (not b!4927340) (not b_lambda!196301) (not b!4926957) (not d!1585767) (not b!4926927) (not b!4926995) (not d!1585515) (not b!4927390) (not d!1585539) (not b!4927438) (not d!1585631) (not d!1585511) (not b!4927312) (not b!4927033) (not b!4926849) (not b!4926989) (not bm!343717) (not d!1585607) (not b!4927294) (not d!1585843) (not bm!343720) (not bm!343709) (not b!4926961) (not b!4927402) (not bm!343716) (not b!4926928) (not b!4926965) (not d!1585557) (not bm!343727) (not b!4926841) (not b!4927376) (not b!4927038) (not b!4927012) (not d!1585795) (not b!4927385) (not b!4926887) (not d!1585615) (not bm!343710) (not b!4927363) (not d!1585507) (not d!1585553) (not b!4926850) (not b!4926758) (not b!4927037) (not d!1585829) (not b!4927320) (not b!4927300) (not bm!343730) (not d!1585523) (not b!4927306) (not b!4927330) (not bm!343733) (not b!4926954) (not b!4927338) (not b!4927261) (not b!4926977) (not bm!343726) (not d!1585559) (not b!4927262) (not d!1585811) (not b!4927322) (not b!4927374) (not b!4927246) (not b!4927354) (not b!4927377) (not d!1585517) (not bm!343729) (not d!1585803) (not bm!343731) (not bm!343712) (not d!1585543) (not b!4927342) (not b!4926885) (not b!4927279) (not b!4926737) (not b!4927258) (not bm!343707) (not b!4926981))
(check-sat)
(get-model)

(declare-fun b!4927566 () Bool)

(declare-fun e!3078735 () List!56821)

(assert (=> b!4927566 (= e!3078735 lt!2027436)))

(declare-fun lt!2027934 () List!56821)

(declare-fun e!3078736 () Bool)

(declare-fun b!4927569 () Bool)

(assert (=> b!4927569 (= e!3078736 (or (not (= lt!2027436 Nil!56697)) (= lt!2027934 (t!367283 (++!12330 Nil!56697 (Cons!56697 lt!2027437 Nil!56697))))))))

(declare-fun b!4927568 () Bool)

(declare-fun res!2103017 () Bool)

(assert (=> b!4927568 (=> (not res!2103017) (not e!3078736))))

(assert (=> b!4927568 (= res!2103017 (= (size!37489 lt!2027934) (+ (size!37489 (t!367283 (++!12330 Nil!56697 (Cons!56697 lt!2027437 Nil!56697)))) (size!37489 lt!2027436))))))

(declare-fun d!1585867 () Bool)

(assert (=> d!1585867 e!3078736))

(declare-fun res!2103018 () Bool)

(assert (=> d!1585867 (=> (not res!2103018) (not e!3078736))))

(assert (=> d!1585867 (= res!2103018 (= (content!10073 lt!2027934) ((_ map or) (content!10073 (t!367283 (++!12330 Nil!56697 (Cons!56697 lt!2027437 Nil!56697)))) (content!10073 lt!2027436))))))

(assert (=> d!1585867 (= lt!2027934 e!3078735)))

(declare-fun c!839455 () Bool)

(assert (=> d!1585867 (= c!839455 ((_ is Nil!56697) (t!367283 (++!12330 Nil!56697 (Cons!56697 lt!2027437 Nil!56697)))))))

(assert (=> d!1585867 (= (++!12330 (t!367283 (++!12330 Nil!56697 (Cons!56697 lt!2027437 Nil!56697))) lt!2027436) lt!2027934)))

(declare-fun b!4927567 () Bool)

(assert (=> b!4927567 (= e!3078735 (Cons!56697 (h!63145 (t!367283 (++!12330 Nil!56697 (Cons!56697 lt!2027437 Nil!56697)))) (++!12330 (t!367283 (t!367283 (++!12330 Nil!56697 (Cons!56697 lt!2027437 Nil!56697)))) lt!2027436)))))

(assert (= (and d!1585867 c!839455) b!4927566))

(assert (= (and d!1585867 (not c!839455)) b!4927567))

(assert (= (and d!1585867 res!2103018) b!4927568))

(assert (= (and b!4927568 res!2103017) b!4927569))

(declare-fun m!5946020 () Bool)

(assert (=> b!4927568 m!5946020))

(declare-fun m!5946022 () Bool)

(assert (=> b!4927568 m!5946022))

(assert (=> b!4927568 m!5945118))

(declare-fun m!5946024 () Bool)

(assert (=> d!1585867 m!5946024))

(declare-fun m!5946026 () Bool)

(assert (=> d!1585867 m!5946026))

(assert (=> d!1585867 m!5945124))

(declare-fun m!5946028 () Bool)

(assert (=> b!4927567 m!5946028))

(assert (=> b!4926980 d!1585867))

(declare-fun d!1585869 () Bool)

(assert (=> d!1585869 (= (max!0 (height!1986 (left!41344 (c!839087 input!5492))) (height!1986 (right!41674 (c!839087 input!5492)))) (ite (< (height!1986 (left!41344 (c!839087 input!5492))) (height!1986 (right!41674 (c!839087 input!5492)))) (height!1986 (right!41674 (c!839087 input!5492))) (height!1986 (left!41344 (c!839087 input!5492)))))))

(assert (=> b!4927372 d!1585869))

(declare-fun d!1585871 () Bool)

(assert (=> d!1585871 (= (height!1986 (left!41344 (c!839087 input!5492))) (ite ((_ is Empty!14876) (left!41344 (c!839087 input!5492))) 0 (ite ((_ is Leaf!24747) (left!41344 (c!839087 input!5492))) 1 (cheight!15087 (left!41344 (c!839087 input!5492))))))))

(assert (=> b!4927372 d!1585871))

(declare-fun d!1585873 () Bool)

(assert (=> d!1585873 (= (height!1986 (right!41674 (c!839087 input!5492))) (ite ((_ is Empty!14876) (right!41674 (c!839087 input!5492))) 0 (ite ((_ is Leaf!24747) (right!41674 (c!839087 input!5492))) 1 (cheight!15087 (right!41674 (c!839087 input!5492))))))))

(assert (=> b!4927372 d!1585873))

(declare-fun d!1585875 () Bool)

(declare-fun lt!2027935 () Int)

(assert (=> d!1585875 (>= lt!2027935 0)))

(declare-fun e!3078737 () Int)

(assert (=> d!1585875 (= lt!2027935 e!3078737)))

(declare-fun c!839456 () Bool)

(assert (=> d!1585875 (= c!839456 ((_ is Nil!56697) lt!2027578))))

(assert (=> d!1585875 (= (size!37489 lt!2027578) lt!2027935)))

(declare-fun b!4927570 () Bool)

(assert (=> b!4927570 (= e!3078737 0)))

(declare-fun b!4927571 () Bool)

(assert (=> b!4927571 (= e!3078737 (+ 1 (size!37489 (t!367283 lt!2027578))))))

(assert (= (and d!1585875 c!839456) b!4927570))

(assert (= (and d!1585875 (not c!839456)) b!4927571))

(declare-fun m!5946030 () Bool)

(assert (=> b!4927571 m!5946030))

(assert (=> b!4926961 d!1585875))

(assert (=> b!4926961 d!1585527))

(assert (=> b!4926961 d!1585629))

(assert (=> d!1585795 d!1585619))

(declare-fun d!1585877 () Bool)

(assert (=> d!1585877 (isPrefix!4965 (ite c!839148 lt!2027318 lt!2027308) (ite c!839148 lt!2027309 lt!2027343))))

(assert (=> d!1585877 true))

(declare-fun _$45!2222 () Unit!147242)

(assert (=> d!1585877 (= (choose!36095 (ite c!839148 lt!2027318 lt!2027308) (ite c!839148 lt!2027309 lt!2027343)) _$45!2222)))

(declare-fun bs!1179839 () Bool)

(assert (= bs!1179839 d!1585877))

(assert (=> bs!1179839 m!5944582))

(assert (=> d!1585795 d!1585877))

(declare-fun bs!1179840 () Bool)

(declare-fun d!1585879 () Bool)

(assert (= bs!1179840 (and d!1585879 d!1585579)))

(declare-fun lambda!245331 () Int)

(assert (=> bs!1179840 (= lambda!245331 lambda!245303)))

(declare-fun bs!1179841 () Bool)

(assert (= bs!1179841 (and d!1585879 b!4926927)))

(assert (=> bs!1179841 (not (= lambda!245331 lambda!245304))))

(declare-fun bs!1179842 () Bool)

(assert (= bs!1179842 (and d!1585879 b!4926928)))

(assert (=> bs!1179842 (not (= lambda!245331 lambda!245305))))

(declare-fun bs!1179843 () Bool)

(assert (= bs!1179843 (and d!1585879 d!1585835)))

(assert (=> bs!1179843 (not (= lambda!245331 lambda!245330))))

(declare-fun bs!1179844 () Bool)

(declare-fun b!4927572 () Bool)

(assert (= bs!1179844 (and b!4927572 d!1585879)))

(declare-fun lambda!245332 () Int)

(assert (=> bs!1179844 (not (= lambda!245332 lambda!245331))))

(declare-fun bs!1179845 () Bool)

(assert (= bs!1179845 (and b!4927572 d!1585835)))

(assert (=> bs!1179845 (not (= lambda!245332 lambda!245330))))

(declare-fun bs!1179846 () Bool)

(assert (= bs!1179846 (and b!4927572 b!4926928)))

(assert (=> bs!1179846 (= lambda!245332 lambda!245305)))

(declare-fun bs!1179847 () Bool)

(assert (= bs!1179847 (and b!4927572 b!4926927)))

(assert (=> bs!1179847 (= lambda!245332 lambda!245304)))

(declare-fun bs!1179848 () Bool)

(assert (= bs!1179848 (and b!4927572 d!1585579)))

(assert (=> bs!1179848 (not (= lambda!245332 lambda!245303))))

(declare-fun bs!1179849 () Bool)

(declare-fun b!4927573 () Bool)

(assert (= bs!1179849 (and b!4927573 d!1585879)))

(declare-fun lambda!245333 () Int)

(assert (=> bs!1179849 (not (= lambda!245333 lambda!245331))))

(declare-fun bs!1179850 () Bool)

(assert (= bs!1179850 (and b!4927573 d!1585835)))

(assert (=> bs!1179850 (not (= lambda!245333 lambda!245330))))

(declare-fun bs!1179851 () Bool)

(assert (= bs!1179851 (and b!4927573 b!4926928)))

(assert (=> bs!1179851 (= lambda!245333 lambda!245305)))

(declare-fun bs!1179852 () Bool)

(assert (= bs!1179852 (and b!4927573 b!4927572)))

(assert (=> bs!1179852 (= lambda!245333 lambda!245332)))

(declare-fun bs!1179853 () Bool)

(assert (= bs!1179853 (and b!4927573 b!4926927)))

(assert (=> bs!1179853 (= lambda!245333 lambda!245304)))

(declare-fun bs!1179854 () Bool)

(assert (= bs!1179854 (and b!4927573 d!1585579)))

(assert (=> bs!1179854 (not (= lambda!245333 lambda!245303))))

(declare-fun bm!343761 () Bool)

(declare-fun call!343766 () List!56823)

(assert (=> bm!343761 (= call!343766 (toList!7945 call!343651))))

(declare-fun e!3078738 () Unit!147242)

(declare-fun Unit!147275 () Unit!147242)

(assert (=> b!4927572 (= e!3078738 Unit!147275)))

(declare-fun lt!2027938 () List!56823)

(assert (=> b!4927572 (= lt!2027938 call!343766)))

(declare-fun lt!2027940 () Unit!147242)

(assert (=> b!4927572 (= lt!2027940 (lemmaNotForallThenExists!183 lt!2027938 lambda!245331))))

(declare-fun call!343765 () Bool)

(assert (=> b!4927572 call!343765))

(declare-fun lt!2027941 () Unit!147242)

(assert (=> b!4927572 (= lt!2027941 lt!2027940)))

(declare-fun bm!343760 () Bool)

(declare-fun c!839457 () Bool)

(declare-fun lt!2027936 () List!56823)

(assert (=> bm!343760 (= call!343765 (exists!1251 (ite c!839457 lt!2027938 lt!2027936) (ite c!839457 lambda!245332 lambda!245333)))))

(declare-fun Unit!147276 () Unit!147242)

(assert (=> b!4927573 (= e!3078738 Unit!147276)))

(assert (=> b!4927573 (= lt!2027936 call!343766)))

(declare-fun lt!2027939 () Unit!147242)

(assert (=> b!4927573 (= lt!2027939 (lemmaForallThenNotExists!166 lt!2027936 lambda!245331))))

(assert (=> b!4927573 (not call!343765)))

(declare-fun lt!2027943 () Unit!147242)

(assert (=> b!4927573 (= lt!2027943 lt!2027939)))

(declare-fun lt!2027937 () Bool)

(assert (=> d!1585879 (= lt!2027937 (isEmpty!30580 (getLanguageWitness!619 call!343651)))))

(assert (=> d!1585879 (= lt!2027937 (forall!13142 call!343651 lambda!245331))))

(declare-fun lt!2027942 () Unit!147242)

(assert (=> d!1585879 (= lt!2027942 e!3078738)))

(assert (=> d!1585879 (= c!839457 (not (forall!13142 call!343651 lambda!245331)))))

(assert (=> d!1585879 (= (lostCauseZipper!695 call!343651) lt!2027937)))

(assert (= (and d!1585879 c!839457) b!4927572))

(assert (= (and d!1585879 (not c!839457)) b!4927573))

(assert (= (or b!4927572 b!4927573) bm!343760))

(assert (= (or b!4927572 b!4927573) bm!343761))

(declare-fun m!5946032 () Bool)

(assert (=> bm!343760 m!5946032))

(declare-fun m!5946034 () Bool)

(assert (=> bm!343761 m!5946034))

(declare-fun m!5946036 () Bool)

(assert (=> d!1585879 m!5946036))

(assert (=> d!1585879 m!5946036))

(declare-fun m!5946038 () Bool)

(assert (=> d!1585879 m!5946038))

(declare-fun m!5946040 () Bool)

(assert (=> d!1585879 m!5946040))

(assert (=> d!1585879 m!5946040))

(declare-fun m!5946042 () Bool)

(assert (=> b!4927573 m!5946042))

(declare-fun m!5946044 () Bool)

(assert (=> b!4927572 m!5946044))

(assert (=> d!1585793 d!1585879))

(declare-fun b!4927574 () Bool)

(declare-fun e!3078739 () List!56821)

(assert (=> b!4927574 (= e!3078739 (_2!33899 lt!2027784))))

(declare-fun b!4927577 () Bool)

(declare-fun e!3078740 () Bool)

(declare-fun lt!2027944 () List!56821)

(assert (=> b!4927577 (= e!3078740 (or (not (= (_2!33899 lt!2027784) Nil!56697)) (= lt!2027944 (_1!33899 lt!2027784))))))

(declare-fun b!4927576 () Bool)

(declare-fun res!2103019 () Bool)

(assert (=> b!4927576 (=> (not res!2103019) (not e!3078740))))

(assert (=> b!4927576 (= res!2103019 (= (size!37489 lt!2027944) (+ (size!37489 (_1!33899 lt!2027784)) (size!37489 (_2!33899 lt!2027784)))))))

(declare-fun d!1585881 () Bool)

(assert (=> d!1585881 e!3078740))

(declare-fun res!2103020 () Bool)

(assert (=> d!1585881 (=> (not res!2103020) (not e!3078740))))

(assert (=> d!1585881 (= res!2103020 (= (content!10073 lt!2027944) ((_ map or) (content!10073 (_1!33899 lt!2027784)) (content!10073 (_2!33899 lt!2027784)))))))

(assert (=> d!1585881 (= lt!2027944 e!3078739)))

(declare-fun c!839458 () Bool)

(assert (=> d!1585881 (= c!839458 ((_ is Nil!56697) (_1!33899 lt!2027784)))))

(assert (=> d!1585881 (= (++!12330 (_1!33899 lt!2027784) (_2!33899 lt!2027784)) lt!2027944)))

(declare-fun b!4927575 () Bool)

(assert (=> b!4927575 (= e!3078739 (Cons!56697 (h!63145 (_1!33899 lt!2027784)) (++!12330 (t!367283 (_1!33899 lt!2027784)) (_2!33899 lt!2027784))))))

(assert (= (and d!1585881 c!839458) b!4927574))

(assert (= (and d!1585881 (not c!839458)) b!4927575))

(assert (= (and d!1585881 res!2103020) b!4927576))

(assert (= (and b!4927576 res!2103019) b!4927577))

(declare-fun m!5946046 () Bool)

(assert (=> b!4927576 m!5946046))

(assert (=> b!4927576 m!5945696))

(declare-fun m!5946048 () Bool)

(assert (=> b!4927576 m!5946048))

(declare-fun m!5946050 () Bool)

(assert (=> d!1585881 m!5946050))

(declare-fun m!5946052 () Bool)

(assert (=> d!1585881 m!5946052))

(declare-fun m!5946054 () Bool)

(assert (=> d!1585881 m!5946054))

(declare-fun m!5946056 () Bool)

(assert (=> b!4927575 m!5946056))

(assert (=> d!1585793 d!1585881))

(declare-fun d!1585883 () Bool)

(declare-fun lt!2027945 () List!56821)

(assert (=> d!1585883 (= (++!12330 lt!2027417 lt!2027945) lt!2026995)))

(declare-fun e!3078741 () List!56821)

(assert (=> d!1585883 (= lt!2027945 e!3078741)))

(declare-fun c!839459 () Bool)

(assert (=> d!1585883 (= c!839459 ((_ is Cons!56697) lt!2027417))))

(assert (=> d!1585883 (>= (size!37489 lt!2026995) (size!37489 lt!2027417))))

(assert (=> d!1585883 (= (getSuffix!2953 lt!2026995 lt!2027417) lt!2027945)))

(declare-fun b!4927578 () Bool)

(assert (=> b!4927578 (= e!3078741 (getSuffix!2953 (tail!9671 lt!2026995) (t!367283 lt!2027417)))))

(declare-fun b!4927579 () Bool)

(assert (=> b!4927579 (= e!3078741 lt!2026995)))

(assert (= (and d!1585883 c!839459) b!4927578))

(assert (= (and d!1585883 (not c!839459)) b!4927579))

(declare-fun m!5946058 () Bool)

(assert (=> d!1585883 m!5946058))

(assert (=> d!1585883 m!5944674))

(assert (=> d!1585883 m!5945658))

(assert (=> b!4927578 m!5944554))

(assert (=> b!4927578 m!5944554))

(declare-fun m!5946060 () Bool)

(assert (=> b!4927578 m!5946060))

(assert (=> d!1585793 d!1585883))

(declare-fun d!1585885 () Bool)

(assert (=> d!1585885 (= call!343652 lt!2027804)))

(declare-fun lt!2027946 () Unit!147242)

(assert (=> d!1585885 (= lt!2027946 (choose!36092 lt!2027417 call!343652 lt!2027417 lt!2027804 lt!2026995))))

(assert (=> d!1585885 (isPrefix!4965 lt!2027417 lt!2026995)))

(assert (=> d!1585885 (= (lemmaSamePrefixThenSameSuffix!2369 lt!2027417 call!343652 lt!2027417 lt!2027804 lt!2026995) lt!2027946)))

(declare-fun bs!1179855 () Bool)

(assert (= bs!1179855 d!1585885))

(declare-fun m!5946062 () Bool)

(assert (=> bs!1179855 m!5946062))

(declare-fun m!5946064 () Bool)

(assert (=> bs!1179855 m!5946064))

(assert (=> d!1585793 d!1585885))

(declare-fun d!1585887 () Bool)

(assert (=> d!1585887 (isPrefix!4965 lt!2027417 (++!12330 lt!2027417 call!343652))))

(declare-fun lt!2027947 () Unit!147242)

(assert (=> d!1585887 (= lt!2027947 (choose!36091 lt!2027417 call!343652))))

(assert (=> d!1585887 (= (lemmaConcatTwoListThenFirstIsPrefix!3189 lt!2027417 call!343652) lt!2027947)))

(declare-fun bs!1179856 () Bool)

(assert (= bs!1179856 d!1585887))

(assert (=> bs!1179856 m!5945682))

(assert (=> bs!1179856 m!5945682))

(assert (=> bs!1179856 m!5945684))

(declare-fun m!5946066 () Bool)

(assert (=> bs!1179856 m!5946066))

(assert (=> d!1585793 d!1585887))

(declare-fun b!4927580 () Bool)

(declare-fun e!3078742 () List!56821)

(assert (=> b!4927580 (= e!3078742 call!343652)))

(declare-fun lt!2027948 () List!56821)

(declare-fun b!4927583 () Bool)

(declare-fun e!3078743 () Bool)

(assert (=> b!4927583 (= e!3078743 (or (not (= call!343652 Nil!56697)) (= lt!2027948 lt!2027417)))))

(declare-fun b!4927582 () Bool)

(declare-fun res!2103021 () Bool)

(assert (=> b!4927582 (=> (not res!2103021) (not e!3078743))))

(assert (=> b!4927582 (= res!2103021 (= (size!37489 lt!2027948) (+ (size!37489 lt!2027417) (size!37489 call!343652))))))

(declare-fun d!1585889 () Bool)

(assert (=> d!1585889 e!3078743))

(declare-fun res!2103022 () Bool)

(assert (=> d!1585889 (=> (not res!2103022) (not e!3078743))))

(assert (=> d!1585889 (= res!2103022 (= (content!10073 lt!2027948) ((_ map or) (content!10073 lt!2027417) (content!10073 call!343652))))))

(assert (=> d!1585889 (= lt!2027948 e!3078742)))

(declare-fun c!839460 () Bool)

(assert (=> d!1585889 (= c!839460 ((_ is Nil!56697) lt!2027417))))

(assert (=> d!1585889 (= (++!12330 lt!2027417 call!343652) lt!2027948)))

(declare-fun b!4927581 () Bool)

(assert (=> b!4927581 (= e!3078742 (Cons!56697 (h!63145 lt!2027417) (++!12330 (t!367283 lt!2027417) call!343652)))))

(assert (= (and d!1585889 c!839460) b!4927580))

(assert (= (and d!1585889 (not c!839460)) b!4927581))

(assert (= (and d!1585889 res!2103022) b!4927582))

(assert (= (and b!4927582 res!2103021) b!4927583))

(declare-fun m!5946068 () Bool)

(assert (=> b!4927582 m!5946068))

(assert (=> b!4927582 m!5945658))

(declare-fun m!5946070 () Bool)

(assert (=> b!4927582 m!5946070))

(declare-fun m!5946072 () Bool)

(assert (=> d!1585889 m!5946072))

(declare-fun m!5946074 () Bool)

(assert (=> d!1585889 m!5946074))

(declare-fun m!5946076 () Bool)

(assert (=> d!1585889 m!5946076))

(declare-fun m!5946078 () Bool)

(assert (=> b!4927581 m!5946078))

(assert (=> d!1585793 d!1585889))

(declare-fun b!4927587 () Bool)

(declare-fun e!3078746 () Bool)

(assert (=> b!4927587 (= e!3078746 (>= (size!37489 (++!12330 lt!2027417 call!343652)) (size!37489 lt!2027417)))))

(declare-fun d!1585891 () Bool)

(assert (=> d!1585891 e!3078746))

(declare-fun res!2103023 () Bool)

(assert (=> d!1585891 (=> res!2103023 e!3078746)))

(declare-fun lt!2027949 () Bool)

(assert (=> d!1585891 (= res!2103023 (not lt!2027949))))

(declare-fun e!3078745 () Bool)

(assert (=> d!1585891 (= lt!2027949 e!3078745)))

(declare-fun res!2103025 () Bool)

(assert (=> d!1585891 (=> res!2103025 e!3078745)))

(assert (=> d!1585891 (= res!2103025 ((_ is Nil!56697) lt!2027417))))

(assert (=> d!1585891 (= (isPrefix!4965 lt!2027417 (++!12330 lt!2027417 call!343652)) lt!2027949)))

(declare-fun b!4927585 () Bool)

(declare-fun res!2103024 () Bool)

(declare-fun e!3078744 () Bool)

(assert (=> b!4927585 (=> (not res!2103024) (not e!3078744))))

(assert (=> b!4927585 (= res!2103024 (= (head!10524 lt!2027417) (head!10524 (++!12330 lt!2027417 call!343652))))))

(declare-fun b!4927584 () Bool)

(assert (=> b!4927584 (= e!3078745 e!3078744)))

(declare-fun res!2103026 () Bool)

(assert (=> b!4927584 (=> (not res!2103026) (not e!3078744))))

(assert (=> b!4927584 (= res!2103026 (not ((_ is Nil!56697) (++!12330 lt!2027417 call!343652))))))

(declare-fun b!4927586 () Bool)

(assert (=> b!4927586 (= e!3078744 (isPrefix!4965 (tail!9671 lt!2027417) (tail!9671 (++!12330 lt!2027417 call!343652))))))

(assert (= (and d!1585891 (not res!2103025)) b!4927584))

(assert (= (and b!4927584 res!2103026) b!4927585))

(assert (= (and b!4927585 res!2103024) b!4927586))

(assert (= (and d!1585891 (not res!2103023)) b!4927587))

(assert (=> b!4927587 m!5945682))

(declare-fun m!5946080 () Bool)

(assert (=> b!4927587 m!5946080))

(assert (=> b!4927587 m!5945658))

(declare-fun m!5946082 () Bool)

(assert (=> b!4927585 m!5946082))

(assert (=> b!4927585 m!5945682))

(declare-fun m!5946084 () Bool)

(assert (=> b!4927585 m!5946084))

(declare-fun m!5946086 () Bool)

(assert (=> b!4927586 m!5946086))

(assert (=> b!4927586 m!5945682))

(declare-fun m!5946088 () Bool)

(assert (=> b!4927586 m!5946088))

(assert (=> b!4927586 m!5946086))

(assert (=> b!4927586 m!5946088))

(declare-fun m!5946090 () Bool)

(assert (=> b!4927586 m!5946090))

(assert (=> d!1585793 d!1585891))

(assert (=> b!4927324 d!1585635))

(declare-fun d!1585893 () Bool)

(assert (not d!1585893))

(assert (=> b!4927287 d!1585893))

(declare-fun d!1585895 () Bool)

(assert (=> d!1585895 (= (tail!9671 (list!17959 input!5492)) (t!367283 (list!17959 input!5492)))))

(assert (=> b!4927287 d!1585895))

(declare-fun b!4927588 () Bool)

(declare-fun e!3078747 () List!56821)

(assert (=> b!4927588 (= e!3078747 (_2!33899 lt!2027415))))

(declare-fun b!4927591 () Bool)

(declare-fun e!3078748 () Bool)

(declare-fun lt!2027950 () List!56821)

(assert (=> b!4927591 (= e!3078748 (or (not (= (_2!33899 lt!2027415) Nil!56697)) (= lt!2027950 (t!367283 (_1!33899 lt!2027415)))))))

(declare-fun b!4927590 () Bool)

(declare-fun res!2103027 () Bool)

(assert (=> b!4927590 (=> (not res!2103027) (not e!3078748))))

(assert (=> b!4927590 (= res!2103027 (= (size!37489 lt!2027950) (+ (size!37489 (t!367283 (_1!33899 lt!2027415))) (size!37489 (_2!33899 lt!2027415)))))))

(declare-fun d!1585897 () Bool)

(assert (=> d!1585897 e!3078748))

(declare-fun res!2103028 () Bool)

(assert (=> d!1585897 (=> (not res!2103028) (not e!3078748))))

(assert (=> d!1585897 (= res!2103028 (= (content!10073 lt!2027950) ((_ map or) (content!10073 (t!367283 (_1!33899 lt!2027415))) (content!10073 (_2!33899 lt!2027415)))))))

(assert (=> d!1585897 (= lt!2027950 e!3078747)))

(declare-fun c!839461 () Bool)

(assert (=> d!1585897 (= c!839461 ((_ is Nil!56697) (t!367283 (_1!33899 lt!2027415))))))

(assert (=> d!1585897 (= (++!12330 (t!367283 (_1!33899 lt!2027415)) (_2!33899 lt!2027415)) lt!2027950)))

(declare-fun b!4927589 () Bool)

(assert (=> b!4927589 (= e!3078747 (Cons!56697 (h!63145 (t!367283 (_1!33899 lt!2027415))) (++!12330 (t!367283 (t!367283 (_1!33899 lt!2027415))) (_2!33899 lt!2027415))))))

(assert (= (and d!1585897 c!839461) b!4927588))

(assert (= (and d!1585897 (not c!839461)) b!4927589))

(assert (= (and d!1585897 res!2103028) b!4927590))

(assert (= (and b!4927590 res!2103027) b!4927591))

(declare-fun m!5946092 () Bool)

(assert (=> b!4927590 m!5946092))

(assert (=> b!4927590 m!5945650))

(assert (=> b!4927590 m!5945074))

(declare-fun m!5946094 () Bool)

(assert (=> d!1585897 m!5946094))

(declare-fun m!5946096 () Bool)

(assert (=> d!1585897 m!5946096))

(assert (=> d!1585897 m!5945080))

(declare-fun m!5946098 () Bool)

(assert (=> b!4927589 m!5946098))

(assert (=> b!4926956 d!1585897))

(declare-fun d!1585899 () Bool)

(declare-fun lt!2027953 () Bool)

(assert (=> d!1585899 (= lt!2027953 (isEmpty!30579 (list!17961 (left!41344 (c!839087 (_1!33900 lt!2027359))))))))

(assert (=> d!1585899 (= lt!2027953 (= (size!37492 (left!41344 (c!839087 (_1!33900 lt!2027359)))) 0))))

(assert (=> d!1585899 (= (isEmpty!30583 (left!41344 (c!839087 (_1!33900 lt!2027359)))) lt!2027953)))

(declare-fun bs!1179857 () Bool)

(assert (= bs!1179857 d!1585899))

(declare-fun m!5946100 () Bool)

(assert (=> bs!1179857 m!5946100))

(assert (=> bs!1179857 m!5946100))

(declare-fun m!5946102 () Bool)

(assert (=> bs!1179857 m!5946102))

(declare-fun m!5946104 () Bool)

(assert (=> bs!1179857 m!5946104))

(assert (=> b!4927035 d!1585899))

(declare-fun d!1585901 () Bool)

(assert (=> d!1585901 (= (isEmpty!30579 (_1!33899 lt!2027802)) ((_ is Nil!56697) (_1!33899 lt!2027802)))))

(assert (=> b!4927312 d!1585901))

(declare-fun bs!1179858 () Bool)

(declare-fun d!1585903 () Bool)

(assert (= bs!1179858 (and d!1585903 d!1585879)))

(declare-fun lambda!245336 () Int)

(assert (=> bs!1179858 (not (= lambda!245336 lambda!245331))))

(declare-fun bs!1179859 () Bool)

(assert (= bs!1179859 (and d!1585903 d!1585835)))

(assert (=> bs!1179859 (not (= lambda!245336 lambda!245330))))

(declare-fun bs!1179860 () Bool)

(assert (= bs!1179860 (and d!1585903 b!4927573)))

(assert (=> bs!1179860 (not (= lambda!245336 lambda!245333))))

(declare-fun bs!1179861 () Bool)

(assert (= bs!1179861 (and d!1585903 b!4926928)))

(assert (=> bs!1179861 (not (= lambda!245336 lambda!245305))))

(declare-fun bs!1179862 () Bool)

(assert (= bs!1179862 (and d!1585903 b!4927572)))

(assert (=> bs!1179862 (not (= lambda!245336 lambda!245332))))

(declare-fun bs!1179863 () Bool)

(assert (= bs!1179863 (and d!1585903 b!4926927)))

(assert (=> bs!1179863 (not (= lambda!245336 lambda!245304))))

(declare-fun bs!1179864 () Bool)

(assert (= bs!1179864 (and d!1585903 d!1585579)))

(assert (=> bs!1179864 (not (= lambda!245336 lambda!245303))))

(assert (=> d!1585903 true))

(declare-fun order!25979 () Int)

(declare-fun dynLambda!23013 (Int Int) Int)

(assert (=> d!1585903 (< (dynLambda!23013 order!25979 lambda!245303) (dynLambda!23013 order!25979 lambda!245336))))

(assert (=> d!1585903 (exists!1251 lt!2027559 lambda!245336)))

(declare-fun lt!2027956 () Unit!147242)

(declare-fun choose!36102 (List!56823 Int) Unit!147242)

(assert (=> d!1585903 (= lt!2027956 (choose!36102 lt!2027559 lambda!245303))))

(declare-fun forall!13144 (List!56823 Int) Bool)

(assert (=> d!1585903 (not (forall!13144 lt!2027559 lambda!245303))))

(assert (=> d!1585903 (= (lemmaNotForallThenExists!183 lt!2027559 lambda!245303) lt!2027956)))

(declare-fun bs!1179865 () Bool)

(assert (= bs!1179865 d!1585903))

(declare-fun m!5946106 () Bool)

(assert (=> bs!1179865 m!5946106))

(declare-fun m!5946108 () Bool)

(assert (=> bs!1179865 m!5946108))

(declare-fun m!5946110 () Bool)

(assert (=> bs!1179865 m!5946110))

(assert (=> b!4926927 d!1585903))

(declare-fun b!4927597 () Bool)

(declare-fun e!3078752 () List!56821)

(assert (=> b!4927597 (= e!3078752 (++!12330 (list!17961 (left!41344 (right!41674 (c!839087 input!5492)))) (list!17961 (right!41674 (right!41674 (c!839087 input!5492))))))))

(declare-fun b!4927596 () Bool)

(assert (=> b!4927596 (= e!3078752 (list!17963 (xs!18198 (right!41674 (c!839087 input!5492)))))))

(declare-fun d!1585905 () Bool)

(declare-fun c!839462 () Bool)

(assert (=> d!1585905 (= c!839462 ((_ is Empty!14876) (right!41674 (c!839087 input!5492))))))

(declare-fun e!3078751 () List!56821)

(assert (=> d!1585905 (= (list!17961 (right!41674 (c!839087 input!5492))) e!3078751)))

(declare-fun b!4927594 () Bool)

(assert (=> b!4927594 (= e!3078751 Nil!56697)))

(declare-fun b!4927595 () Bool)

(assert (=> b!4927595 (= e!3078751 e!3078752)))

(declare-fun c!839463 () Bool)

(assert (=> b!4927595 (= c!839463 ((_ is Leaf!24747) (right!41674 (c!839087 input!5492))))))

(assert (= (and d!1585905 c!839462) b!4927594))

(assert (= (and d!1585905 (not c!839462)) b!4927595))

(assert (= (and b!4927595 c!839463) b!4927596))

(assert (= (and b!4927595 (not c!839463)) b!4927597))

(declare-fun m!5946112 () Bool)

(assert (=> b!4927597 m!5946112))

(declare-fun m!5946114 () Bool)

(assert (=> b!4927597 m!5946114))

(assert (=> b!4927597 m!5946112))

(assert (=> b!4927597 m!5946114))

(declare-fun m!5946116 () Bool)

(assert (=> b!4927597 m!5946116))

(declare-fun m!5946118 () Bool)

(assert (=> b!4927596 m!5946118))

(assert (=> b!4927242 d!1585905))

(declare-fun d!1585907 () Bool)

(declare-fun e!3078755 () Bool)

(assert (=> d!1585907 e!3078755))

(declare-fun res!2103029 () Bool)

(assert (=> d!1585907 (=> (not res!2103029) (not e!3078755))))

(declare-fun lt!2027957 () tuple2!61192)

(assert (=> d!1585907 (= res!2103029 (= (++!12330 (_1!33899 lt!2027957) (_2!33899 lt!2027957)) (++!12330 lt!2027730 lt!2027738)))))

(declare-fun e!3078754 () tuple2!61192)

(assert (=> d!1585907 (= lt!2027957 e!3078754)))

(declare-fun c!839464 () Bool)

(assert (=> d!1585907 (= c!839464 ((_ is Nil!56697) (++!12330 lt!2027730 lt!2027738)))))

(assert (=> d!1585907 (= (splitAtIndex!105 (++!12330 lt!2027730 lt!2027738) (findLongestMatchInnerZipperFast!89 z!3559 Nil!56697 0 lt!2026995 input!5492 lt!2026996)) lt!2027957)))

(declare-fun b!4927598 () Bool)

(declare-fun e!3078753 () tuple2!61192)

(assert (=> b!4927598 (= e!3078753 (tuple2!61193 Nil!56697 (++!12330 lt!2027730 lt!2027738)))))

(declare-fun b!4927599 () Bool)

(assert (=> b!4927599 (= e!3078754 (tuple2!61193 Nil!56697 Nil!56697))))

(declare-fun b!4927600 () Bool)

(assert (=> b!4927600 (= e!3078755 (= (_2!33899 lt!2027957) (drop!2227 (++!12330 lt!2027730 lt!2027738) (findLongestMatchInnerZipperFast!89 z!3559 Nil!56697 0 lt!2026995 input!5492 lt!2026996))))))

(declare-fun b!4927601 () Bool)

(declare-fun lt!2027958 () tuple2!61192)

(assert (=> b!4927601 (= lt!2027958 (splitAtIndex!105 (t!367283 (++!12330 lt!2027730 lt!2027738)) (- (findLongestMatchInnerZipperFast!89 z!3559 Nil!56697 0 lt!2026995 input!5492 lt!2026996) 1)))))

(assert (=> b!4927601 (= e!3078753 (tuple2!61193 (Cons!56697 (h!63145 (++!12330 lt!2027730 lt!2027738)) (_1!33899 lt!2027958)) (_2!33899 lt!2027958)))))

(declare-fun b!4927602 () Bool)

(assert (=> b!4927602 (= e!3078754 e!3078753)))

(declare-fun c!839465 () Bool)

(assert (=> b!4927602 (= c!839465 (<= (findLongestMatchInnerZipperFast!89 z!3559 Nil!56697 0 lt!2026995 input!5492 lt!2026996) 0))))

(declare-fun b!4927603 () Bool)

(declare-fun res!2103030 () Bool)

(assert (=> b!4927603 (=> (not res!2103030) (not e!3078755))))

(assert (=> b!4927603 (= res!2103030 (= (_1!33899 lt!2027957) (take!580 (++!12330 lt!2027730 lt!2027738) (findLongestMatchInnerZipperFast!89 z!3559 Nil!56697 0 lt!2026995 input!5492 lt!2026996))))))

(assert (= (and d!1585907 c!839464) b!4927599))

(assert (= (and d!1585907 (not c!839464)) b!4927602))

(assert (= (and b!4927602 c!839465) b!4927598))

(assert (= (and b!4927602 (not c!839465)) b!4927601))

(assert (= (and d!1585907 res!2103029) b!4927603))

(assert (= (and b!4927603 res!2103030) b!4927600))

(declare-fun m!5946120 () Bool)

(assert (=> d!1585907 m!5946120))

(assert (=> b!4927600 m!5945516))

(assert (=> b!4927600 m!5944352))

(declare-fun m!5946122 () Bool)

(assert (=> b!4927600 m!5946122))

(declare-fun m!5946124 () Bool)

(assert (=> b!4927601 m!5946124))

(assert (=> b!4927603 m!5945516))

(assert (=> b!4927603 m!5944352))

(declare-fun m!5946126 () Bool)

(assert (=> b!4927603 m!5946126))

(assert (=> b!4927242 d!1585907))

(declare-fun b!4927604 () Bool)

(declare-fun e!3078756 () List!56821)

(assert (=> b!4927604 (= e!3078756 lt!2027738)))

(declare-fun b!4927607 () Bool)

(declare-fun e!3078757 () Bool)

(declare-fun lt!2027959 () List!56821)

(assert (=> b!4927607 (= e!3078757 (or (not (= lt!2027738 Nil!56697)) (= lt!2027959 lt!2027730)))))

(declare-fun b!4927606 () Bool)

(declare-fun res!2103031 () Bool)

(assert (=> b!4927606 (=> (not res!2103031) (not e!3078757))))

(assert (=> b!4927606 (= res!2103031 (= (size!37489 lt!2027959) (+ (size!37489 lt!2027730) (size!37489 lt!2027738))))))

(declare-fun d!1585909 () Bool)

(assert (=> d!1585909 e!3078757))

(declare-fun res!2103032 () Bool)

(assert (=> d!1585909 (=> (not res!2103032) (not e!3078757))))

(assert (=> d!1585909 (= res!2103032 (= (content!10073 lt!2027959) ((_ map or) (content!10073 lt!2027730) (content!10073 lt!2027738))))))

(assert (=> d!1585909 (= lt!2027959 e!3078756)))

(declare-fun c!839466 () Bool)

(assert (=> d!1585909 (= c!839466 ((_ is Nil!56697) lt!2027730))))

(assert (=> d!1585909 (= (++!12330 lt!2027730 lt!2027738) lt!2027959)))

(declare-fun b!4927605 () Bool)

(assert (=> b!4927605 (= e!3078756 (Cons!56697 (h!63145 lt!2027730) (++!12330 (t!367283 lt!2027730) lt!2027738)))))

(assert (= (and d!1585909 c!839466) b!4927604))

(assert (= (and d!1585909 (not c!839466)) b!4927605))

(assert (= (and d!1585909 res!2103032) b!4927606))

(assert (= (and b!4927606 res!2103031) b!4927607))

(declare-fun m!5946128 () Bool)

(assert (=> b!4927606 m!5946128))

(declare-fun m!5946130 () Bool)

(assert (=> b!4927606 m!5946130))

(declare-fun m!5946132 () Bool)

(assert (=> b!4927606 m!5946132))

(declare-fun m!5946134 () Bool)

(assert (=> d!1585909 m!5946134))

(declare-fun m!5946136 () Bool)

(assert (=> d!1585909 m!5946136))

(declare-fun m!5946138 () Bool)

(assert (=> d!1585909 m!5946138))

(declare-fun m!5946140 () Bool)

(assert (=> b!4927605 m!5946140))

(assert (=> b!4927242 d!1585909))

(declare-fun b!4927611 () Bool)

(declare-fun e!3078759 () List!56821)

(assert (=> b!4927611 (= e!3078759 (++!12330 (list!17961 (left!41344 (left!41344 (c!839087 input!5492)))) (list!17961 (right!41674 (left!41344 (c!839087 input!5492))))))))

(declare-fun b!4927610 () Bool)

(assert (=> b!4927610 (= e!3078759 (list!17963 (xs!18198 (left!41344 (c!839087 input!5492)))))))

(declare-fun d!1585911 () Bool)

(declare-fun c!839467 () Bool)

(assert (=> d!1585911 (= c!839467 ((_ is Empty!14876) (left!41344 (c!839087 input!5492))))))

(declare-fun e!3078758 () List!56821)

(assert (=> d!1585911 (= (list!17961 (left!41344 (c!839087 input!5492))) e!3078758)))

(declare-fun b!4927608 () Bool)

(assert (=> b!4927608 (= e!3078758 Nil!56697)))

(declare-fun b!4927609 () Bool)

(assert (=> b!4927609 (= e!3078758 e!3078759)))

(declare-fun c!839468 () Bool)

(assert (=> b!4927609 (= c!839468 ((_ is Leaf!24747) (left!41344 (c!839087 input!5492))))))

(assert (= (and d!1585911 c!839467) b!4927608))

(assert (= (and d!1585911 (not c!839467)) b!4927609))

(assert (= (and b!4927609 c!839468) b!4927610))

(assert (= (and b!4927609 (not c!839468)) b!4927611))

(declare-fun m!5946142 () Bool)

(assert (=> b!4927611 m!5946142))

(declare-fun m!5946144 () Bool)

(assert (=> b!4927611 m!5946144))

(assert (=> b!4927611 m!5946142))

(assert (=> b!4927611 m!5946144))

(declare-fun m!5946146 () Bool)

(assert (=> b!4927611 m!5946146))

(declare-fun m!5946148 () Bool)

(assert (=> b!4927610 m!5946148))

(assert (=> b!4927242 d!1585911))

(declare-fun d!1585913 () Bool)

(declare-fun lt!2027960 () Int)

(assert (=> d!1585913 (= lt!2027960 (size!37489 (list!17961 (left!41344 (c!839087 input!5492)))))))

(assert (=> d!1585913 (= lt!2027960 (ite ((_ is Empty!14876) (left!41344 (c!839087 input!5492))) 0 (ite ((_ is Leaf!24747) (left!41344 (c!839087 input!5492))) (csize!29983 (left!41344 (c!839087 input!5492))) (csize!29982 (left!41344 (c!839087 input!5492))))))))

(assert (=> d!1585913 (= (size!37492 (left!41344 (c!839087 input!5492))) lt!2027960)))

(declare-fun bs!1179866 () Bool)

(assert (= bs!1179866 d!1585913))

(assert (=> bs!1179866 m!5945106))

(assert (=> bs!1179866 m!5945106))

(declare-fun m!5946150 () Bool)

(assert (=> bs!1179866 m!5946150))

(assert (=> b!4927242 d!1585913))

(declare-fun b!4927626 () Bool)

(declare-fun e!3078770 () Bool)

(assert (=> b!4927626 (= e!3078770 (<= (findLongestMatchInnerZipperFast!89 z!3559 Nil!56697 0 lt!2026995 input!5492 lt!2026996) (+ (size!37489 lt!2027730) (size!37489 lt!2027738))))))

(declare-fun b!4927627 () Bool)

(declare-fun e!3078768 () tuple2!61192)

(declare-fun e!3078771 () tuple2!61192)

(assert (=> b!4927627 (= e!3078768 e!3078771)))

(declare-fun c!839475 () Bool)

(assert (=> b!4927627 (= c!839475 (< (findLongestMatchInnerZipperFast!89 z!3559 Nil!56697 0 lt!2026995 input!5492 lt!2026996) (size!37489 lt!2027730)))))

(declare-fun e!3078769 () Int)

(declare-fun b!4927628 () Bool)

(assert (=> b!4927628 (= e!3078769 (findLongestMatchInnerZipperFast!89 z!3559 Nil!56697 0 lt!2026995 input!5492 lt!2026996))))

(declare-fun b!4927629 () Bool)

(declare-fun lt!2027968 () tuple2!61192)

(declare-fun call!343771 () tuple2!61192)

(assert (=> b!4927629 (= lt!2027968 call!343771)))

(declare-fun call!343772 () List!56821)

(assert (=> b!4927629 (= e!3078771 (tuple2!61193 call!343772 (_2!33899 lt!2027968)))))

(declare-fun bm!343766 () Bool)

(declare-fun lt!2027967 () tuple2!61192)

(assert (=> bm!343766 (= call!343772 (++!12330 (ite c!839475 (_2!33899 lt!2027967) lt!2027730) (ite c!839475 lt!2027738 (_1!33899 lt!2027968))))))

(declare-fun d!1585915 () Bool)

(assert (=> d!1585915 (= (splitAtIndex!105 (++!12330 lt!2027730 lt!2027738) (findLongestMatchInnerZipperFast!89 z!3559 Nil!56697 0 lt!2026995 input!5492 lt!2026996)) e!3078768)))

(declare-fun c!839476 () Bool)

(assert (=> d!1585915 (= c!839476 (= (size!37489 lt!2027730) (findLongestMatchInnerZipperFast!89 z!3559 Nil!56697 0 lt!2026995 input!5492 lt!2026996)))))

(declare-fun lt!2027969 () Unit!147242)

(declare-fun choose!36103 (List!56821 List!56821 Int) Unit!147242)

(assert (=> d!1585915 (= lt!2027969 (choose!36103 lt!2027730 lt!2027738 (findLongestMatchInnerZipperFast!89 z!3559 Nil!56697 0 lt!2026995 input!5492 lt!2026996)))))

(assert (=> d!1585915 e!3078770))

(declare-fun res!2103035 () Bool)

(assert (=> d!1585915 (=> (not res!2103035) (not e!3078770))))

(assert (=> d!1585915 (= res!2103035 (<= 0 (findLongestMatchInnerZipperFast!89 z!3559 Nil!56697 0 lt!2026995 input!5492 lt!2026996)))))

(assert (=> d!1585915 (= (splitAtLemma!29 lt!2027730 lt!2027738 (findLongestMatchInnerZipperFast!89 z!3559 Nil!56697 0 lt!2026995 input!5492 lt!2026996)) lt!2027969)))

(declare-fun bm!343767 () Bool)

(declare-fun c!839477 () Bool)

(assert (=> bm!343767 (= c!839477 c!839475)))

(assert (=> bm!343767 (= call!343771 (splitAtIndex!105 (ite c!839475 lt!2027730 lt!2027738) e!3078769))))

(declare-fun b!4927630 () Bool)

(assert (=> b!4927630 (= e!3078768 (tuple2!61193 lt!2027730 lt!2027738))))

(declare-fun b!4927631 () Bool)

(assert (=> b!4927631 (= lt!2027967 call!343771)))

(assert (=> b!4927631 (= e!3078771 (tuple2!61193 (_1!33899 lt!2027967) call!343772))))

(declare-fun b!4927632 () Bool)

(assert (=> b!4927632 (= e!3078769 (- (findLongestMatchInnerZipperFast!89 z!3559 Nil!56697 0 lt!2026995 input!5492 lt!2026996) (size!37489 lt!2027730)))))

(assert (= (and d!1585915 res!2103035) b!4927626))

(assert (= (and d!1585915 c!839476) b!4927630))

(assert (= (and d!1585915 (not c!839476)) b!4927627))

(assert (= (and b!4927627 c!839475) b!4927631))

(assert (= (and b!4927627 (not c!839475)) b!4927629))

(assert (= (or b!4927631 b!4927629) bm!343766))

(assert (= (or b!4927631 b!4927629) bm!343767))

(assert (= (and bm!343767 c!839477) b!4927628))

(assert (= (and bm!343767 (not c!839477)) b!4927632))

(declare-fun m!5946152 () Bool)

(assert (=> bm!343766 m!5946152))

(assert (=> d!1585915 m!5945516))

(assert (=> d!1585915 m!5945516))

(assert (=> d!1585915 m!5944352))

(assert (=> d!1585915 m!5945522))

(assert (=> d!1585915 m!5946130))

(assert (=> d!1585915 m!5944352))

(declare-fun m!5946154 () Bool)

(assert (=> d!1585915 m!5946154))

(assert (=> b!4927632 m!5946130))

(assert (=> b!4927627 m!5946130))

(assert (=> b!4927626 m!5946130))

(assert (=> b!4927626 m!5946132))

(declare-fun m!5946156 () Bool)

(assert (=> bm!343767 m!5946156))

(assert (=> b!4927242 d!1585915))

(declare-fun d!1585917 () Bool)

(declare-fun lt!2027970 () C!26964)

(assert (=> d!1585917 (= lt!2027970 (apply!13668 (list!17959 input!5492) (+ 0 1)))))

(assert (=> d!1585917 (= lt!2027970 (apply!13671 (c!839087 input!5492) (+ 0 1)))))

(declare-fun e!3078772 () Bool)

(assert (=> d!1585917 e!3078772))

(declare-fun res!2103036 () Bool)

(assert (=> d!1585917 (=> (not res!2103036) (not e!3078772))))

(assert (=> d!1585917 (= res!2103036 (<= 0 (+ 0 1)))))

(assert (=> d!1585917 (= (apply!13667 input!5492 (+ 0 1)) lt!2027970)))

(declare-fun b!4927633 () Bool)

(assert (=> b!4927633 (= e!3078772 (< (+ 0 1) (size!37490 input!5492)))))

(assert (= (and d!1585917 res!2103036) b!4927633))

(assert (=> d!1585917 m!5944346))

(assert (=> d!1585917 m!5944346))

(declare-fun m!5946158 () Bool)

(assert (=> d!1585917 m!5946158))

(declare-fun m!5946160 () Bool)

(assert (=> d!1585917 m!5946160))

(assert (=> b!4927633 m!5944358))

(assert (=> bm!343728 d!1585917))

(declare-fun d!1585919 () Bool)

(declare-fun lt!2027971 () Int)

(assert (=> d!1585919 (>= lt!2027971 0)))

(declare-fun e!3078773 () Int)

(assert (=> d!1585919 (= lt!2027971 e!3078773)))

(declare-fun c!839478 () Bool)

(assert (=> d!1585919 (= c!839478 ((_ is Nil!56697) (t!367283 lt!2026995)))))

(assert (=> d!1585919 (= (size!37489 (t!367283 lt!2026995)) lt!2027971)))

(declare-fun b!4927634 () Bool)

(assert (=> b!4927634 (= e!3078773 0)))

(declare-fun b!4927635 () Bool)

(assert (=> b!4927635 (= e!3078773 (+ 1 (size!37489 (t!367283 (t!367283 lt!2026995)))))))

(assert (= (and d!1585919 c!839478) b!4927634))

(assert (= (and d!1585919 (not c!839478)) b!4927635))

(declare-fun m!5946162 () Bool)

(assert (=> b!4927635 m!5946162))

(assert (=> b!4926992 d!1585919))

(declare-fun b!4927636 () Bool)

(declare-fun res!2103039 () Bool)

(declare-fun e!3078775 () Bool)

(assert (=> b!4927636 (=> (not res!2103039) (not e!3078775))))

(assert (=> b!4927636 (= res!2103039 (isBalanced!4089 (left!41344 (right!41674 (c!839087 (_2!33900 lt!2027359))))))))

(declare-fun b!4927637 () Bool)

(declare-fun res!2103042 () Bool)

(assert (=> b!4927637 (=> (not res!2103042) (not e!3078775))))

(assert (=> b!4927637 (= res!2103042 (<= (- (height!1986 (left!41344 (right!41674 (c!839087 (_2!33900 lt!2027359))))) (height!1986 (right!41674 (right!41674 (c!839087 (_2!33900 lt!2027359)))))) 1))))

(declare-fun b!4927638 () Bool)

(declare-fun res!2103041 () Bool)

(assert (=> b!4927638 (=> (not res!2103041) (not e!3078775))))

(assert (=> b!4927638 (= res!2103041 (not (isEmpty!30583 (left!41344 (right!41674 (c!839087 (_2!33900 lt!2027359)))))))))

(declare-fun b!4927639 () Bool)

(declare-fun res!2103038 () Bool)

(assert (=> b!4927639 (=> (not res!2103038) (not e!3078775))))

(assert (=> b!4927639 (= res!2103038 (isBalanced!4089 (right!41674 (right!41674 (c!839087 (_2!33900 lt!2027359))))))))

(declare-fun b!4927640 () Bool)

(declare-fun e!3078774 () Bool)

(assert (=> b!4927640 (= e!3078774 e!3078775)))

(declare-fun res!2103037 () Bool)

(assert (=> b!4927640 (=> (not res!2103037) (not e!3078775))))

(assert (=> b!4927640 (= res!2103037 (<= (- 1) (- (height!1986 (left!41344 (right!41674 (c!839087 (_2!33900 lt!2027359))))) (height!1986 (right!41674 (right!41674 (c!839087 (_2!33900 lt!2027359))))))))))

(declare-fun d!1585921 () Bool)

(declare-fun res!2103040 () Bool)

(assert (=> d!1585921 (=> res!2103040 e!3078774)))

(assert (=> d!1585921 (= res!2103040 (not ((_ is Node!14876) (right!41674 (c!839087 (_2!33900 lt!2027359))))))))

(assert (=> d!1585921 (= (isBalanced!4089 (right!41674 (c!839087 (_2!33900 lt!2027359)))) e!3078774)))

(declare-fun b!4927641 () Bool)

(assert (=> b!4927641 (= e!3078775 (not (isEmpty!30583 (right!41674 (right!41674 (c!839087 (_2!33900 lt!2027359)))))))))

(assert (= (and d!1585921 (not res!2103040)) b!4927640))

(assert (= (and b!4927640 res!2103037) b!4927637))

(assert (= (and b!4927637 res!2103042) b!4927636))

(assert (= (and b!4927636 res!2103039) b!4927639))

(assert (= (and b!4927639 res!2103038) b!4927638))

(assert (= (and b!4927638 res!2103041) b!4927641))

(declare-fun m!5946164 () Bool)

(assert (=> b!4927638 m!5946164))

(declare-fun m!5946166 () Bool)

(assert (=> b!4927639 m!5946166))

(declare-fun m!5946168 () Bool)

(assert (=> b!4927637 m!5946168))

(declare-fun m!5946170 () Bool)

(assert (=> b!4927637 m!5946170))

(assert (=> b!4927640 m!5946168))

(assert (=> b!4927640 m!5946170))

(declare-fun m!5946172 () Bool)

(assert (=> b!4927641 m!5946172))

(declare-fun m!5946174 () Bool)

(assert (=> b!4927636 m!5946174))

(assert (=> b!4927338 d!1585921))

(declare-fun b!4927645 () Bool)

(declare-fun e!3078778 () Bool)

(assert (=> b!4927645 (= e!3078778 (>= (size!37489 (ite c!839399 lt!2027821 lt!2027855)) (size!37489 (ite c!839399 lt!2027830 lt!2027820))))))

(declare-fun d!1585923 () Bool)

(assert (=> d!1585923 e!3078778))

(declare-fun res!2103043 () Bool)

(assert (=> d!1585923 (=> res!2103043 e!3078778)))

(declare-fun lt!2027972 () Bool)

(assert (=> d!1585923 (= res!2103043 (not lt!2027972))))

(declare-fun e!3078777 () Bool)

(assert (=> d!1585923 (= lt!2027972 e!3078777)))

(declare-fun res!2103045 () Bool)

(assert (=> d!1585923 (=> res!2103045 e!3078777)))

(assert (=> d!1585923 (= res!2103045 ((_ is Nil!56697) (ite c!839399 lt!2027830 lt!2027820)))))

(assert (=> d!1585923 (= (isPrefix!4965 (ite c!839399 lt!2027830 lt!2027820) (ite c!839399 lt!2027821 lt!2027855)) lt!2027972)))

(declare-fun b!4927643 () Bool)

(declare-fun res!2103044 () Bool)

(declare-fun e!3078776 () Bool)

(assert (=> b!4927643 (=> (not res!2103044) (not e!3078776))))

(assert (=> b!4927643 (= res!2103044 (= (head!10524 (ite c!839399 lt!2027830 lt!2027820)) (head!10524 (ite c!839399 lt!2027821 lt!2027855))))))

(declare-fun b!4927642 () Bool)

(assert (=> b!4927642 (= e!3078777 e!3078776)))

(declare-fun res!2103046 () Bool)

(assert (=> b!4927642 (=> (not res!2103046) (not e!3078776))))

(assert (=> b!4927642 (= res!2103046 (not ((_ is Nil!56697) (ite c!839399 lt!2027821 lt!2027855))))))

(declare-fun b!4927644 () Bool)

(assert (=> b!4927644 (= e!3078776 (isPrefix!4965 (tail!9671 (ite c!839399 lt!2027830 lt!2027820)) (tail!9671 (ite c!839399 lt!2027821 lt!2027855))))))

(assert (= (and d!1585923 (not res!2103045)) b!4927642))

(assert (= (and b!4927642 res!2103046) b!4927643))

(assert (= (and b!4927643 res!2103044) b!4927644))

(assert (= (and d!1585923 (not res!2103043)) b!4927645))

(declare-fun m!5946176 () Bool)

(assert (=> b!4927645 m!5946176))

(declare-fun m!5946178 () Bool)

(assert (=> b!4927645 m!5946178))

(declare-fun m!5946180 () Bool)

(assert (=> b!4927643 m!5946180))

(declare-fun m!5946182 () Bool)

(assert (=> b!4927643 m!5946182))

(declare-fun m!5946184 () Bool)

(assert (=> b!4927644 m!5946184))

(declare-fun m!5946186 () Bool)

(assert (=> b!4927644 m!5946186))

(assert (=> b!4927644 m!5946184))

(assert (=> b!4927644 m!5946186))

(declare-fun m!5946188 () Bool)

(assert (=> b!4927644 m!5946188))

(assert (=> bm!343724 d!1585923))

(declare-fun d!1585925 () Bool)

(declare-fun c!839479 () Bool)

(assert (=> d!1585925 (= c!839479 ((_ is Node!14876) (left!41344 (right!41674 (c!839087 input!5492)))))))

(declare-fun e!3078779 () Bool)

(assert (=> d!1585925 (= (inv!73492 (left!41344 (right!41674 (c!839087 input!5492)))) e!3078779)))

(declare-fun b!4927646 () Bool)

(assert (=> b!4927646 (= e!3078779 (inv!73498 (left!41344 (right!41674 (c!839087 input!5492)))))))

(declare-fun b!4927647 () Bool)

(declare-fun e!3078780 () Bool)

(assert (=> b!4927647 (= e!3078779 e!3078780)))

(declare-fun res!2103047 () Bool)

(assert (=> b!4927647 (= res!2103047 (not ((_ is Leaf!24747) (left!41344 (right!41674 (c!839087 input!5492))))))))

(assert (=> b!4927647 (=> res!2103047 e!3078780)))

(declare-fun b!4927648 () Bool)

(assert (=> b!4927648 (= e!3078780 (inv!73499 (left!41344 (right!41674 (c!839087 input!5492)))))))

(assert (= (and d!1585925 c!839479) b!4927646))

(assert (= (and d!1585925 (not c!839479)) b!4927647))

(assert (= (and b!4927647 (not res!2103047)) b!4927648))

(declare-fun m!5946190 () Bool)

(assert (=> b!4927646 m!5946190))

(declare-fun m!5946192 () Bool)

(assert (=> b!4927648 m!5946192))

(assert (=> b!4927404 d!1585925))

(declare-fun d!1585927 () Bool)

(declare-fun c!839480 () Bool)

(assert (=> d!1585927 (= c!839480 ((_ is Node!14876) (right!41674 (right!41674 (c!839087 input!5492)))))))

(declare-fun e!3078781 () Bool)

(assert (=> d!1585927 (= (inv!73492 (right!41674 (right!41674 (c!839087 input!5492)))) e!3078781)))

(declare-fun b!4927649 () Bool)

(assert (=> b!4927649 (= e!3078781 (inv!73498 (right!41674 (right!41674 (c!839087 input!5492)))))))

(declare-fun b!4927650 () Bool)

(declare-fun e!3078782 () Bool)

(assert (=> b!4927650 (= e!3078781 e!3078782)))

(declare-fun res!2103048 () Bool)

(assert (=> b!4927650 (= res!2103048 (not ((_ is Leaf!24747) (right!41674 (right!41674 (c!839087 input!5492))))))))

(assert (=> b!4927650 (=> res!2103048 e!3078782)))

(declare-fun b!4927651 () Bool)

(assert (=> b!4927651 (= e!3078782 (inv!73499 (right!41674 (right!41674 (c!839087 input!5492)))))))

(assert (= (and d!1585927 c!839480) b!4927649))

(assert (= (and d!1585927 (not c!839480)) b!4927650))

(assert (= (and b!4927650 (not res!2103048)) b!4927651))

(declare-fun m!5946194 () Bool)

(assert (=> b!4927649 m!5946194))

(declare-fun m!5946196 () Bool)

(assert (=> b!4927651 m!5946196))

(assert (=> b!4927404 d!1585927))

(declare-fun d!1585929 () Bool)

(declare-fun c!839481 () Bool)

(assert (=> d!1585929 (= c!839481 ((_ is Nil!56697) lt!2027578))))

(declare-fun e!3078783 () (InoxSet C!26964))

(assert (=> d!1585929 (= (content!10073 lt!2027578) e!3078783)))

(declare-fun b!4927652 () Bool)

(assert (=> b!4927652 (= e!3078783 ((as const (Array C!26964 Bool)) false))))

(declare-fun b!4927653 () Bool)

(assert (=> b!4927653 (= e!3078783 ((_ map or) (store ((as const (Array C!26964 Bool)) false) (h!63145 lt!2027578) true) (content!10073 (t!367283 lt!2027578))))))

(assert (= (and d!1585929 c!839481) b!4927652))

(assert (= (and d!1585929 (not c!839481)) b!4927653))

(declare-fun m!5946198 () Bool)

(assert (=> b!4927653 m!5946198))

(declare-fun m!5946200 () Bool)

(assert (=> b!4927653 m!5946200))

(assert (=> d!1585617 d!1585929))

(declare-fun d!1585931 () Bool)

(assert (=> d!1585931 (= (content!10073 Nil!56697) ((as const (Array C!26964 Bool)) false))))

(assert (=> d!1585617 d!1585931))

(declare-fun d!1585933 () Bool)

(declare-fun c!839482 () Bool)

(assert (=> d!1585933 (= c!839482 ((_ is Nil!56697) lt!2026995))))

(declare-fun e!3078784 () (InoxSet C!26964))

(assert (=> d!1585933 (= (content!10073 lt!2026995) e!3078784)))

(declare-fun b!4927654 () Bool)

(assert (=> b!4927654 (= e!3078784 ((as const (Array C!26964 Bool)) false))))

(declare-fun b!4927655 () Bool)

(assert (=> b!4927655 (= e!3078784 ((_ map or) (store ((as const (Array C!26964 Bool)) false) (h!63145 lt!2026995) true) (content!10073 (t!367283 lt!2026995))))))

(assert (= (and d!1585933 c!839482) b!4927654))

(assert (= (and d!1585933 (not c!839482)) b!4927655))

(declare-fun m!5946202 () Bool)

(assert (=> b!4927655 m!5946202))

(declare-fun m!5946204 () Bool)

(assert (=> b!4927655 m!5946204))

(assert (=> d!1585617 d!1585933))

(assert (=> b!4927004 d!1585629))

(declare-fun d!1585935 () Bool)

(declare-fun lt!2027973 () Int)

(assert (=> d!1585935 (>= lt!2027973 0)))

(declare-fun e!3078785 () Int)

(assert (=> d!1585935 (= lt!2027973 e!3078785)))

(declare-fun c!839483 () Bool)

(assert (=> d!1585935 (= c!839483 ((_ is Nil!56697) (++!12330 Nil!56697 (Cons!56697 (head!10524 (getSuffix!2953 lt!2026995 Nil!56697)) Nil!56697))))))

(assert (=> d!1585935 (= (size!37489 (++!12330 Nil!56697 (Cons!56697 (head!10524 (getSuffix!2953 lt!2026995 Nil!56697)) Nil!56697))) lt!2027973)))

(declare-fun b!4927656 () Bool)

(assert (=> b!4927656 (= e!3078785 0)))

(declare-fun b!4927657 () Bool)

(assert (=> b!4927657 (= e!3078785 (+ 1 (size!37489 (t!367283 (++!12330 Nil!56697 (Cons!56697 (head!10524 (getSuffix!2953 lt!2026995 Nil!56697)) Nil!56697))))))))

(assert (= (and d!1585935 c!839483) b!4927656))

(assert (= (and d!1585935 (not c!839483)) b!4927657))

(declare-fun m!5946206 () Bool)

(assert (=> b!4927657 m!5946206))

(assert (=> b!4927004 d!1585935))

(assert (=> bm!343711 d!1585635))

(declare-fun b!4927661 () Bool)

(declare-fun e!3078788 () Bool)

(assert (=> b!4927661 (= e!3078788 (>= (size!37489 (tail!9671 lt!2027335)) (size!37489 (tail!9671 (++!12330 Nil!56697 (Cons!56697 (head!10524 (getSuffix!2953 lt!2027335 Nil!56697)) Nil!56697))))))))

(declare-fun d!1585937 () Bool)

(assert (=> d!1585937 e!3078788))

(declare-fun res!2103049 () Bool)

(assert (=> d!1585937 (=> res!2103049 e!3078788)))

(declare-fun lt!2027974 () Bool)

(assert (=> d!1585937 (= res!2103049 (not lt!2027974))))

(declare-fun e!3078787 () Bool)

(assert (=> d!1585937 (= lt!2027974 e!3078787)))

(declare-fun res!2103051 () Bool)

(assert (=> d!1585937 (=> res!2103051 e!3078787)))

(assert (=> d!1585937 (= res!2103051 ((_ is Nil!56697) (tail!9671 (++!12330 Nil!56697 (Cons!56697 (head!10524 (getSuffix!2953 lt!2027335 Nil!56697)) Nil!56697)))))))

(assert (=> d!1585937 (= (isPrefix!4965 (tail!9671 (++!12330 Nil!56697 (Cons!56697 (head!10524 (getSuffix!2953 lt!2027335 Nil!56697)) Nil!56697))) (tail!9671 lt!2027335)) lt!2027974)))

(declare-fun b!4927659 () Bool)

(declare-fun res!2103050 () Bool)

(declare-fun e!3078786 () Bool)

(assert (=> b!4927659 (=> (not res!2103050) (not e!3078786))))

(assert (=> b!4927659 (= res!2103050 (= (head!10524 (tail!9671 (++!12330 Nil!56697 (Cons!56697 (head!10524 (getSuffix!2953 lt!2027335 Nil!56697)) Nil!56697)))) (head!10524 (tail!9671 lt!2027335))))))

(declare-fun b!4927658 () Bool)

(assert (=> b!4927658 (= e!3078787 e!3078786)))

(declare-fun res!2103052 () Bool)

(assert (=> b!4927658 (=> (not res!2103052) (not e!3078786))))

(assert (=> b!4927658 (= res!2103052 (not ((_ is Nil!56697) (tail!9671 lt!2027335))))))

(declare-fun b!4927660 () Bool)

(assert (=> b!4927660 (= e!3078786 (isPrefix!4965 (tail!9671 (tail!9671 (++!12330 Nil!56697 (Cons!56697 (head!10524 (getSuffix!2953 lt!2027335 Nil!56697)) Nil!56697)))) (tail!9671 (tail!9671 lt!2027335))))))

(assert (= (and d!1585937 (not res!2103051)) b!4927658))

(assert (= (and b!4927658 res!2103052) b!4927659))

(assert (= (and b!4927659 res!2103050) b!4927660))

(assert (= (and d!1585937 (not res!2103049)) b!4927661))

(assert (=> b!4927661 m!5944730))

(declare-fun m!5946208 () Bool)

(assert (=> b!4927661 m!5946208))

(assert (=> b!4927661 m!5944886))

(declare-fun m!5946210 () Bool)

(assert (=> b!4927661 m!5946210))

(assert (=> b!4927659 m!5944886))

(declare-fun m!5946212 () Bool)

(assert (=> b!4927659 m!5946212))

(assert (=> b!4927659 m!5944730))

(declare-fun m!5946214 () Bool)

(assert (=> b!4927659 m!5946214))

(assert (=> b!4927660 m!5944886))

(declare-fun m!5946216 () Bool)

(assert (=> b!4927660 m!5946216))

(assert (=> b!4927660 m!5944730))

(declare-fun m!5946218 () Bool)

(assert (=> b!4927660 m!5946218))

(assert (=> b!4927660 m!5946216))

(assert (=> b!4927660 m!5946218))

(declare-fun m!5946220 () Bool)

(assert (=> b!4927660 m!5946220))

(assert (=> b!4926815 d!1585937))

(declare-fun d!1585939 () Bool)

(assert (=> d!1585939 (= (tail!9671 (++!12330 Nil!56697 (Cons!56697 (head!10524 (getSuffix!2953 lt!2027335 Nil!56697)) Nil!56697))) (t!367283 (++!12330 Nil!56697 (Cons!56697 (head!10524 (getSuffix!2953 lt!2027335 Nil!56697)) Nil!56697))))))

(assert (=> b!4926815 d!1585939))

(declare-fun d!1585941 () Bool)

(assert (=> d!1585941 (= (tail!9671 lt!2027335) (t!367283 lt!2027335))))

(assert (=> b!4926815 d!1585941))

(declare-fun d!1585943 () Bool)

(declare-fun lt!2027975 () Int)

(assert (=> d!1585943 (>= lt!2027975 0)))

(declare-fun e!3078789 () Int)

(assert (=> d!1585943 (= lt!2027975 e!3078789)))

(declare-fun c!839484 () Bool)

(assert (=> d!1585943 (= c!839484 ((_ is Nil!56697) lt!2027859))))

(assert (=> d!1585943 (= (size!37489 lt!2027859) lt!2027975)))

(declare-fun b!4927662 () Bool)

(assert (=> b!4927662 (= e!3078789 0)))

(declare-fun b!4927663 () Bool)

(assert (=> b!4927663 (= e!3078789 (+ 1 (size!37489 (t!367283 lt!2027859))))))

(assert (= (and d!1585943 c!839484) b!4927662))

(assert (= (and d!1585943 (not c!839484)) b!4927663))

(declare-fun m!5946222 () Bool)

(assert (=> b!4927663 m!5946222))

(assert (=> b!4927394 d!1585943))

(assert (=> b!4927394 d!1585527))

(declare-fun d!1585945 () Bool)

(declare-fun lt!2027976 () Int)

(assert (=> d!1585945 (>= lt!2027976 0)))

(declare-fun e!3078790 () Int)

(assert (=> d!1585945 (= lt!2027976 e!3078790)))

(declare-fun c!839485 () Bool)

(assert (=> d!1585945 (= c!839485 ((_ is Nil!56697) (Cons!56697 call!343630 Nil!56697)))))

(assert (=> d!1585945 (= (size!37489 (Cons!56697 call!343630 Nil!56697)) lt!2027976)))

(declare-fun b!4927664 () Bool)

(assert (=> b!4927664 (= e!3078790 0)))

(declare-fun b!4927665 () Bool)

(assert (=> b!4927665 (= e!3078790 (+ 1 (size!37489 (t!367283 (Cons!56697 call!343630 Nil!56697)))))))

(assert (= (and d!1585945 c!839485) b!4927664))

(assert (= (and d!1585945 (not c!839485)) b!4927665))

(declare-fun m!5946224 () Bool)

(assert (=> b!4927665 m!5946224))

(assert (=> b!4927394 d!1585945))

(assert (=> bm!343722 d!1585645))

(declare-fun d!1585947 () Bool)

(assert (=> d!1585947 (= (list!17959 input!5492) Nil!56697)))

(declare-fun lt!2027977 () Unit!147242)

(assert (=> d!1585947 (= lt!2027977 (choose!36084 (list!17959 input!5492) Nil!56697 (list!17959 input!5492)))))

(assert (=> d!1585947 (isPrefix!4965 (list!17959 input!5492) (list!17959 input!5492))))

(assert (=> d!1585947 (= (lemmaIsPrefixSameLengthThenSameList!1123 (list!17959 input!5492) Nil!56697 (list!17959 input!5492)) lt!2027977)))

(declare-fun bs!1179867 () Bool)

(assert (= bs!1179867 d!1585947))

(assert (=> bs!1179867 m!5944346))

(assert (=> bs!1179867 m!5944346))

(declare-fun m!5946226 () Bool)

(assert (=> bs!1179867 m!5946226))

(assert (=> bs!1179867 m!5944346))

(assert (=> bs!1179867 m!5944346))

(assert (=> bs!1179867 m!5945614))

(assert (=> bm!343708 d!1585947))

(declare-fun d!1585949 () Bool)

(assert (=> d!1585949 (= (tail!9671 call!343626) (t!367283 call!343626))))

(assert (=> bm!343733 d!1585949))

(declare-fun d!1585951 () Bool)

(declare-fun lt!2027978 () Bool)

(assert (=> d!1585951 (= lt!2027978 (isEmpty!30579 (list!17961 (right!41674 (c!839087 input!5492)))))))

(assert (=> d!1585951 (= lt!2027978 (= (size!37492 (right!41674 (c!839087 input!5492))) 0))))

(assert (=> d!1585951 (= (isEmpty!30583 (right!41674 (c!839087 input!5492))) lt!2027978)))

(declare-fun bs!1179868 () Bool)

(assert (= bs!1179868 d!1585951))

(assert (=> bs!1179868 m!5945108))

(assert (=> bs!1179868 m!5945108))

(declare-fun m!5946228 () Bool)

(assert (=> bs!1179868 m!5946228))

(assert (=> bs!1179868 m!5945774))

(assert (=> b!4927262 d!1585951))

(declare-fun d!1585953 () Bool)

(assert (not d!1585953))

(assert (=> b!4926960 d!1585953))

(declare-fun b!4927666 () Bool)

(declare-fun e!3078795 () List!56821)

(declare-fun e!3078793 () List!56821)

(assert (=> b!4927666 (= e!3078795 e!3078793)))

(declare-fun c!839488 () Bool)

(assert (=> b!4927666 (= c!839488 (<= (- 0 1) 0))))

(declare-fun b!4927667 () Bool)

(declare-fun e!3078791 () Int)

(assert (=> b!4927667 (= e!3078791 0)))

(declare-fun b!4927668 () Bool)

(assert (=> b!4927668 (= e!3078795 Nil!56697)))

(declare-fun b!4927669 () Bool)

(declare-fun e!3078794 () Bool)

(declare-fun lt!2027979 () List!56821)

(declare-fun e!3078792 () Int)

(assert (=> b!4927669 (= e!3078794 (= (size!37489 lt!2027979) e!3078792))))

(declare-fun c!839489 () Bool)

(assert (=> b!4927669 (= c!839489 (<= (- 0 1) 0))))

(declare-fun b!4927670 () Bool)

(assert (=> b!4927670 (= e!3078792 e!3078791)))

(declare-fun c!839487 () Bool)

(declare-fun call!343773 () Int)

(assert (=> b!4927670 (= c!839487 (>= (- 0 1) call!343773))))

(declare-fun b!4927671 () Bool)

(assert (=> b!4927671 (= e!3078793 (t!367283 lt!2027331))))

(declare-fun b!4927672 () Bool)

(assert (=> b!4927672 (= e!3078792 call!343773)))

(declare-fun d!1585955 () Bool)

(assert (=> d!1585955 e!3078794))

(declare-fun res!2103053 () Bool)

(assert (=> d!1585955 (=> (not res!2103053) (not e!3078794))))

(assert (=> d!1585955 (= res!2103053 (= ((_ map implies) (content!10073 lt!2027979) (content!10073 (t!367283 lt!2027331))) ((as const (InoxSet C!26964)) true)))))

(assert (=> d!1585955 (= lt!2027979 e!3078795)))

(declare-fun c!839486 () Bool)

(assert (=> d!1585955 (= c!839486 ((_ is Nil!56697) (t!367283 lt!2027331)))))

(assert (=> d!1585955 (= (drop!2227 (t!367283 lt!2027331) (- 0 1)) lt!2027979)))

(declare-fun bm!343768 () Bool)

(assert (=> bm!343768 (= call!343773 (size!37489 (t!367283 lt!2027331)))))

(declare-fun b!4927673 () Bool)

(assert (=> b!4927673 (= e!3078793 (drop!2227 (t!367283 (t!367283 lt!2027331)) (- (- 0 1) 1)))))

(declare-fun b!4927674 () Bool)

(assert (=> b!4927674 (= e!3078791 (- call!343773 (- 0 1)))))

(assert (= (and d!1585955 c!839486) b!4927668))

(assert (= (and d!1585955 (not c!839486)) b!4927666))

(assert (= (and b!4927666 c!839488) b!4927671))

(assert (= (and b!4927666 (not c!839488)) b!4927673))

(assert (= (and d!1585955 res!2103053) b!4927669))

(assert (= (and b!4927669 c!839489) b!4927672))

(assert (= (and b!4927669 (not c!839489)) b!4927670))

(assert (= (and b!4927670 c!839487) b!4927667))

(assert (= (and b!4927670 (not c!839487)) b!4927674))

(assert (= (or b!4927672 b!4927670 b!4927674) bm!343768))

(declare-fun m!5946230 () Bool)

(assert (=> b!4927669 m!5946230))

(declare-fun m!5946232 () Bool)

(assert (=> d!1585955 m!5946232))

(declare-fun m!5946234 () Bool)

(assert (=> d!1585955 m!5946234))

(declare-fun m!5946236 () Bool)

(assert (=> bm!343768 m!5946236))

(declare-fun m!5946238 () Bool)

(assert (=> b!4927673 m!5946238))

(assert (=> b!4926785 d!1585955))

(declare-fun d!1585957 () Bool)

(assert (not d!1585957))

(assert (=> b!4926792 d!1585957))

(declare-fun b!4927675 () Bool)

(declare-fun e!3078796 () List!56821)

(assert (=> b!4927675 (= e!3078796 (list!17961 (right!41674 (c!839087 input!5492))))))

(declare-fun b!4927678 () Bool)

(declare-fun e!3078797 () Bool)

(declare-fun lt!2027980 () List!56821)

(assert (=> b!4927678 (= e!3078797 (or (not (= (list!17961 (right!41674 (c!839087 input!5492))) Nil!56697)) (= lt!2027980 (list!17961 (left!41344 (c!839087 input!5492))))))))

(declare-fun b!4927677 () Bool)

(declare-fun res!2103054 () Bool)

(assert (=> b!4927677 (=> (not res!2103054) (not e!3078797))))

(assert (=> b!4927677 (= res!2103054 (= (size!37489 lt!2027980) (+ (size!37489 (list!17961 (left!41344 (c!839087 input!5492)))) (size!37489 (list!17961 (right!41674 (c!839087 input!5492)))))))))

(declare-fun d!1585959 () Bool)

(assert (=> d!1585959 e!3078797))

(declare-fun res!2103055 () Bool)

(assert (=> d!1585959 (=> (not res!2103055) (not e!3078797))))

(assert (=> d!1585959 (= res!2103055 (= (content!10073 lt!2027980) ((_ map or) (content!10073 (list!17961 (left!41344 (c!839087 input!5492)))) (content!10073 (list!17961 (right!41674 (c!839087 input!5492)))))))))

(assert (=> d!1585959 (= lt!2027980 e!3078796)))

(declare-fun c!839490 () Bool)

(assert (=> d!1585959 (= c!839490 ((_ is Nil!56697) (list!17961 (left!41344 (c!839087 input!5492)))))))

(assert (=> d!1585959 (= (++!12330 (list!17961 (left!41344 (c!839087 input!5492))) (list!17961 (right!41674 (c!839087 input!5492)))) lt!2027980)))

(declare-fun b!4927676 () Bool)

(assert (=> b!4927676 (= e!3078796 (Cons!56697 (h!63145 (list!17961 (left!41344 (c!839087 input!5492)))) (++!12330 (t!367283 (list!17961 (left!41344 (c!839087 input!5492)))) (list!17961 (right!41674 (c!839087 input!5492))))))))

(assert (= (and d!1585959 c!839490) b!4927675))

(assert (= (and d!1585959 (not c!839490)) b!4927676))

(assert (= (and d!1585959 res!2103055) b!4927677))

(assert (= (and b!4927677 res!2103054) b!4927678))

(declare-fun m!5946240 () Bool)

(assert (=> b!4927677 m!5946240))

(assert (=> b!4927677 m!5945106))

(assert (=> b!4927677 m!5946150))

(assert (=> b!4927677 m!5945108))

(declare-fun m!5946242 () Bool)

(assert (=> b!4927677 m!5946242))

(declare-fun m!5946244 () Bool)

(assert (=> d!1585959 m!5946244))

(assert (=> d!1585959 m!5945106))

(declare-fun m!5946246 () Bool)

(assert (=> d!1585959 m!5946246))

(assert (=> d!1585959 m!5945108))

(declare-fun m!5946248 () Bool)

(assert (=> d!1585959 m!5946248))

(assert (=> b!4927676 m!5945108))

(declare-fun m!5946250 () Bool)

(assert (=> b!4927676 m!5946250))

(assert (=> b!4926978 d!1585959))

(assert (=> b!4926978 d!1585911))

(assert (=> b!4926978 d!1585905))

(declare-fun d!1585961 () Bool)

(assert (not d!1585961))

(assert (=> b!4927393 d!1585961))

(declare-fun d!1585963 () Bool)

(declare-fun lt!2027981 () Int)

(assert (=> d!1585963 (>= lt!2027981 0)))

(declare-fun e!3078798 () Int)

(assert (=> d!1585963 (= lt!2027981 e!3078798)))

(declare-fun c!839491 () Bool)

(assert (=> d!1585963 (= c!839491 ((_ is Nil!56697) lt!2027448))))

(assert (=> d!1585963 (= (size!37489 lt!2027448) lt!2027981)))

(declare-fun b!4927679 () Bool)

(assert (=> b!4927679 (= e!3078798 0)))

(declare-fun b!4927680 () Bool)

(assert (=> b!4927680 (= e!3078798 (+ 1 (size!37489 (t!367283 lt!2027448))))))

(assert (= (and d!1585963 c!839491) b!4927679))

(assert (= (and d!1585963 (not c!839491)) b!4927680))

(declare-fun m!5946252 () Bool)

(assert (=> b!4927680 m!5946252))

(assert (=> b!4926748 d!1585963))

(assert (=> b!4926748 d!1585527))

(declare-fun d!1585965 () Bool)

(declare-fun lt!2027982 () Int)

(assert (=> d!1585965 (>= lt!2027982 0)))

(declare-fun e!3078799 () Int)

(assert (=> d!1585965 (= lt!2027982 e!3078799)))

(declare-fun c!839492 () Bool)

(assert (=> d!1585965 (= c!839492 ((_ is Nil!56697) (Cons!56697 (head!10524 (getSuffix!2953 lt!2027335 Nil!56697)) Nil!56697)))))

(assert (=> d!1585965 (= (size!37489 (Cons!56697 (head!10524 (getSuffix!2953 lt!2027335 Nil!56697)) Nil!56697)) lt!2027982)))

(declare-fun b!4927681 () Bool)

(assert (=> b!4927681 (= e!3078799 0)))

(declare-fun b!4927682 () Bool)

(assert (=> b!4927682 (= e!3078799 (+ 1 (size!37489 (t!367283 (Cons!56697 (head!10524 (getSuffix!2953 lt!2027335 Nil!56697)) Nil!56697)))))))

(assert (= (and d!1585965 c!839492) b!4927681))

(assert (= (and d!1585965 (not c!839492)) b!4927682))

(declare-fun m!5946254 () Bool)

(assert (=> b!4927682 m!5946254))

(assert (=> b!4926748 d!1585965))

(declare-fun d!1585967 () Bool)

(declare-fun c!839493 () Bool)

(assert (=> d!1585967 (= c!839493 ((_ is Nil!56697) lt!2027859))))

(declare-fun e!3078800 () (InoxSet C!26964))

(assert (=> d!1585967 (= (content!10073 lt!2027859) e!3078800)))

(declare-fun b!4927683 () Bool)

(assert (=> b!4927683 (= e!3078800 ((as const (Array C!26964 Bool)) false))))

(declare-fun b!4927684 () Bool)

(assert (=> b!4927684 (= e!3078800 ((_ map or) (store ((as const (Array C!26964 Bool)) false) (h!63145 lt!2027859) true) (content!10073 (t!367283 lt!2027859))))))

(assert (= (and d!1585967 c!839493) b!4927683))

(assert (= (and d!1585967 (not c!839493)) b!4927684))

(declare-fun m!5946256 () Bool)

(assert (=> b!4927684 m!5946256))

(declare-fun m!5946258 () Bool)

(assert (=> b!4927684 m!5946258))

(assert (=> d!1585843 d!1585967))

(assert (=> d!1585843 d!1585931))

(declare-fun d!1585969 () Bool)

(declare-fun c!839494 () Bool)

(assert (=> d!1585969 (= c!839494 ((_ is Nil!56697) (Cons!56697 call!343630 Nil!56697)))))

(declare-fun e!3078801 () (InoxSet C!26964))

(assert (=> d!1585969 (= (content!10073 (Cons!56697 call!343630 Nil!56697)) e!3078801)))

(declare-fun b!4927685 () Bool)

(assert (=> b!4927685 (= e!3078801 ((as const (Array C!26964 Bool)) false))))

(declare-fun b!4927686 () Bool)

(assert (=> b!4927686 (= e!3078801 ((_ map or) (store ((as const (Array C!26964 Bool)) false) (h!63145 (Cons!56697 call!343630 Nil!56697)) true) (content!10073 (t!367283 (Cons!56697 call!343630 Nil!56697)))))))

(assert (= (and d!1585969 c!839494) b!4927685))

(assert (= (and d!1585969 (not c!839494)) b!4927686))

(declare-fun m!5946260 () Bool)

(assert (=> b!4927686 m!5946260))

(declare-fun m!5946262 () Bool)

(assert (=> b!4927686 m!5946262))

(assert (=> d!1585843 d!1585969))

(declare-fun d!1585971 () Bool)

(assert (=> d!1585971 (= (height!1986 (left!41344 (c!839087 (_1!33900 lt!2027359)))) (ite ((_ is Empty!14876) (left!41344 (c!839087 (_1!33900 lt!2027359)))) 0 (ite ((_ is Leaf!24747) (left!41344 (c!839087 (_1!33900 lt!2027359)))) 1 (cheight!15087 (left!41344 (c!839087 (_1!33900 lt!2027359)))))))))

(assert (=> b!4927034 d!1585971))

(declare-fun d!1585973 () Bool)

(assert (=> d!1585973 (= (height!1986 (right!41674 (c!839087 (_1!33900 lt!2027359)))) (ite ((_ is Empty!14876) (right!41674 (c!839087 (_1!33900 lt!2027359)))) 0 (ite ((_ is Leaf!24747) (right!41674 (c!839087 (_1!33900 lt!2027359)))) 1 (cheight!15087 (right!41674 (c!839087 (_1!33900 lt!2027359)))))))))

(assert (=> b!4927034 d!1585973))

(declare-fun d!1585975 () Bool)

(assert (=> d!1585975 (= (list!17959 (ite c!839399 input!5492 (_1!33900 lt!2027844))) (list!17961 (c!839087 (ite c!839399 input!5492 (_1!33900 lt!2027844)))))))

(declare-fun bs!1179869 () Bool)

(assert (= bs!1179869 d!1585975))

(declare-fun m!5946264 () Bool)

(assert (=> bs!1179869 m!5946264))

(assert (=> bm!343727 d!1585975))

(declare-fun d!1585977 () Bool)

(declare-fun res!2103056 () Bool)

(declare-fun e!3078802 () Bool)

(assert (=> d!1585977 (=> (not res!2103056) (not e!3078802))))

(assert (=> d!1585977 (= res!2103056 (= (csize!29982 (right!41674 (c!839087 input!5492))) (+ (size!37492 (left!41344 (right!41674 (c!839087 input!5492)))) (size!37492 (right!41674 (right!41674 (c!839087 input!5492)))))))))

(assert (=> d!1585977 (= (inv!73498 (right!41674 (c!839087 input!5492))) e!3078802)))

(declare-fun b!4927687 () Bool)

(declare-fun res!2103057 () Bool)

(assert (=> b!4927687 (=> (not res!2103057) (not e!3078802))))

(assert (=> b!4927687 (= res!2103057 (and (not (= (left!41344 (right!41674 (c!839087 input!5492))) Empty!14876)) (not (= (right!41674 (right!41674 (c!839087 input!5492))) Empty!14876))))))

(declare-fun b!4927688 () Bool)

(declare-fun res!2103058 () Bool)

(assert (=> b!4927688 (=> (not res!2103058) (not e!3078802))))

(assert (=> b!4927688 (= res!2103058 (= (cheight!15087 (right!41674 (c!839087 input!5492))) (+ (max!0 (height!1986 (left!41344 (right!41674 (c!839087 input!5492)))) (height!1986 (right!41674 (right!41674 (c!839087 input!5492))))) 1)))))

(declare-fun b!4927689 () Bool)

(assert (=> b!4927689 (= e!3078802 (<= 0 (cheight!15087 (right!41674 (c!839087 input!5492)))))))

(assert (= (and d!1585977 res!2103056) b!4927687))

(assert (= (and b!4927687 res!2103057) b!4927688))

(assert (= (and b!4927688 res!2103058) b!4927689))

(declare-fun m!5946266 () Bool)

(assert (=> d!1585977 m!5946266))

(declare-fun m!5946268 () Bool)

(assert (=> d!1585977 m!5946268))

(declare-fun m!5946270 () Bool)

(assert (=> b!4927688 m!5946270))

(declare-fun m!5946272 () Bool)

(assert (=> b!4927688 m!5946272))

(assert (=> b!4927688 m!5946270))

(assert (=> b!4927688 m!5946272))

(declare-fun m!5946274 () Bool)

(assert (=> b!4927688 m!5946274))

(assert (=> b!4927377 d!1585977))

(declare-fun d!1585979 () Bool)

(declare-fun lt!2027983 () Bool)

(assert (=> d!1585979 (= lt!2027983 (isEmpty!30579 (list!17961 (left!41344 (c!839087 (_2!33900 lt!2027359))))))))

(assert (=> d!1585979 (= lt!2027983 (= (size!37492 (left!41344 (c!839087 (_2!33900 lt!2027359)))) 0))))

(assert (=> d!1585979 (= (isEmpty!30583 (left!41344 (c!839087 (_2!33900 lt!2027359)))) lt!2027983)))

(declare-fun bs!1179870 () Bool)

(assert (= bs!1179870 d!1585979))

(declare-fun m!5946276 () Bool)

(assert (=> bs!1179870 m!5946276))

(assert (=> bs!1179870 m!5946276))

(declare-fun m!5946278 () Bool)

(assert (=> bs!1179870 m!5946278))

(declare-fun m!5946280 () Bool)

(assert (=> bs!1179870 m!5946280))

(assert (=> b!4927337 d!1585979))

(declare-fun b!4927693 () Bool)

(declare-fun e!3078805 () Bool)

(assert (=> b!4927693 (= e!3078805 (>= (size!37489 (tail!9671 lt!2026995)) (size!37489 (tail!9671 (++!12330 Nil!56697 (Cons!56697 (head!10524 (getSuffix!2953 lt!2026995 Nil!56697)) Nil!56697))))))))

(declare-fun d!1585981 () Bool)

(assert (=> d!1585981 e!3078805))

(declare-fun res!2103059 () Bool)

(assert (=> d!1585981 (=> res!2103059 e!3078805)))

(declare-fun lt!2027984 () Bool)

(assert (=> d!1585981 (= res!2103059 (not lt!2027984))))

(declare-fun e!3078804 () Bool)

(assert (=> d!1585981 (= lt!2027984 e!3078804)))

(declare-fun res!2103061 () Bool)

(assert (=> d!1585981 (=> res!2103061 e!3078804)))

(assert (=> d!1585981 (= res!2103061 ((_ is Nil!56697) (tail!9671 (++!12330 Nil!56697 (Cons!56697 (head!10524 (getSuffix!2953 lt!2026995 Nil!56697)) Nil!56697)))))))

(assert (=> d!1585981 (= (isPrefix!4965 (tail!9671 (++!12330 Nil!56697 (Cons!56697 (head!10524 (getSuffix!2953 lt!2026995 Nil!56697)) Nil!56697))) (tail!9671 lt!2026995)) lt!2027984)))

(declare-fun b!4927691 () Bool)

(declare-fun res!2103060 () Bool)

(declare-fun e!3078803 () Bool)

(assert (=> b!4927691 (=> (not res!2103060) (not e!3078803))))

(assert (=> b!4927691 (= res!2103060 (= (head!10524 (tail!9671 (++!12330 Nil!56697 (Cons!56697 (head!10524 (getSuffix!2953 lt!2026995 Nil!56697)) Nil!56697)))) (head!10524 (tail!9671 lt!2026995))))))

(declare-fun b!4927690 () Bool)

(assert (=> b!4927690 (= e!3078804 e!3078803)))

(declare-fun res!2103062 () Bool)

(assert (=> b!4927690 (=> (not res!2103062) (not e!3078803))))

(assert (=> b!4927690 (= res!2103062 (not ((_ is Nil!56697) (tail!9671 lt!2026995))))))

(declare-fun b!4927692 () Bool)

(assert (=> b!4927692 (= e!3078803 (isPrefix!4965 (tail!9671 (tail!9671 (++!12330 Nil!56697 (Cons!56697 (head!10524 (getSuffix!2953 lt!2026995 Nil!56697)) Nil!56697)))) (tail!9671 (tail!9671 lt!2026995))))))

(assert (= (and d!1585981 (not res!2103061)) b!4927690))

(assert (= (and b!4927690 res!2103062) b!4927691))

(assert (= (and b!4927691 res!2103060) b!4927692))

(assert (= (and d!1585981 (not res!2103059)) b!4927693))

(assert (=> b!4927693 m!5944554))

(declare-fun m!5946282 () Bool)

(assert (=> b!4927693 m!5946282))

(assert (=> b!4927693 m!5945172))

(declare-fun m!5946284 () Bool)

(assert (=> b!4927693 m!5946284))

(assert (=> b!4927691 m!5945172))

(declare-fun m!5946286 () Bool)

(assert (=> b!4927691 m!5946286))

(assert (=> b!4927691 m!5944554))

(declare-fun m!5946288 () Bool)

(assert (=> b!4927691 m!5946288))

(assert (=> b!4927692 m!5945172))

(declare-fun m!5946290 () Bool)

(assert (=> b!4927692 m!5946290))

(assert (=> b!4927692 m!5944554))

(declare-fun m!5946292 () Bool)

(assert (=> b!4927692 m!5946292))

(assert (=> b!4927692 m!5946290))

(assert (=> b!4927692 m!5946292))

(declare-fun m!5946294 () Bool)

(assert (=> b!4927692 m!5946294))

(assert (=> b!4927003 d!1585981))

(declare-fun d!1585983 () Bool)

(assert (=> d!1585983 (= (tail!9671 (++!12330 Nil!56697 (Cons!56697 (head!10524 (getSuffix!2953 lt!2026995 Nil!56697)) Nil!56697))) (t!367283 (++!12330 Nil!56697 (Cons!56697 (head!10524 (getSuffix!2953 lt!2026995 Nil!56697)) Nil!56697))))))

(assert (=> b!4927003 d!1585983))

(assert (=> b!4927003 d!1585509))

(declare-fun d!1585985 () Bool)

(assert (=> d!1585985 (= (isEmpty!30579 (_1!33899 lt!2027770)) ((_ is Nil!56697) (_1!33899 lt!2027770)))))

(assert (=> b!4927278 d!1585985))

(declare-fun d!1585987 () Bool)

(declare-fun lt!2027985 () Int)

(assert (=> d!1585987 (>= lt!2027985 0)))

(declare-fun e!3078806 () Int)

(assert (=> d!1585987 (= lt!2027985 e!3078806)))

(declare-fun c!839495 () Bool)

(assert (=> d!1585987 (= c!839495 ((_ is Nil!56697) (t!367283 (_2!33899 lt!2026999))))))

(assert (=> d!1585987 (= (size!37489 (t!367283 (_2!33899 lt!2026999))) lt!2027985)))

(declare-fun b!4927694 () Bool)

(assert (=> b!4927694 (= e!3078806 0)))

(declare-fun b!4927695 () Bool)

(assert (=> b!4927695 (= e!3078806 (+ 1 (size!37489 (t!367283 (t!367283 (_2!33899 lt!2026999))))))))

(assert (= (and d!1585987 c!839495) b!4927694))

(assert (= (and d!1585987 (not c!839495)) b!4927695))

(declare-fun m!5946296 () Bool)

(assert (=> b!4927695 m!5946296))

(assert (=> b!4927294 d!1585987))

(declare-fun b!4927696 () Bool)

(declare-fun e!3078807 () tuple2!61192)

(assert (=> b!4927696 (= e!3078807 (tuple2!61193 Nil!56697 lt!2026995))))

(declare-fun bm!343769 () Bool)

(declare-fun call!343778 () Unit!147242)

(assert (=> bm!343769 (= call!343778 (lemmaIsPrefixSameLengthThenSameList!1123 lt!2026995 lt!2027786 lt!2026995))))

(declare-fun bm!343770 () Bool)

(declare-fun call!343775 () List!56821)

(assert (=> bm!343770 (= call!343775 (tail!9671 call!343722))))

(declare-fun b!4927697 () Bool)

(declare-fun c!839499 () Bool)

(declare-fun call!343776 () Bool)

(assert (=> b!4927697 (= c!839499 call!343776)))

(declare-fun lt!2028005 () Unit!147242)

(declare-fun lt!2028008 () Unit!147242)

(assert (=> b!4927697 (= lt!2028005 lt!2028008)))

(declare-fun lt!2028010 () List!56821)

(declare-fun lt!2028011 () C!26964)

(assert (=> b!4927697 (= (++!12330 (++!12330 lt!2027786 (Cons!56697 lt!2028011 Nil!56697)) lt!2028010) lt!2026995)))

(assert (=> b!4927697 (= lt!2028008 (lemmaMoveElementToOtherListKeepsConcatEq!1395 lt!2027786 lt!2028011 lt!2028010 lt!2026995))))

(assert (=> b!4927697 (= lt!2028010 (tail!9671 call!343722))))

(assert (=> b!4927697 (= lt!2028011 (head!10524 call!343722))))

(declare-fun lt!2028006 () Unit!147242)

(declare-fun lt!2028004 () Unit!147242)

(assert (=> b!4927697 (= lt!2028006 lt!2028004)))

(assert (=> b!4927697 (isPrefix!4965 (++!12330 lt!2027786 (Cons!56697 (head!10524 (getSuffix!2953 lt!2026995 lt!2027786)) Nil!56697)) lt!2026995)))

(assert (=> b!4927697 (= lt!2028004 (lemmaAddHeadSuffixToPrefixStillPrefix!777 lt!2027786 lt!2026995))))

(declare-fun lt!2027991 () List!56821)

(assert (=> b!4927697 (= lt!2027991 (++!12330 lt!2027786 (Cons!56697 (head!10524 call!343722) Nil!56697)))))

(declare-fun lt!2027988 () Unit!147242)

(declare-fun e!3078809 () Unit!147242)

(assert (=> b!4927697 (= lt!2027988 e!3078809)))

(declare-fun c!839497 () Bool)

(assert (=> b!4927697 (= c!839497 (= (size!37489 lt!2027786) (size!37489 lt!2026995)))))

(declare-fun lt!2027990 () Unit!147242)

(declare-fun lt!2027993 () Unit!147242)

(assert (=> b!4927697 (= lt!2027990 lt!2027993)))

(assert (=> b!4927697 (<= (size!37489 lt!2027786) (size!37489 lt!2026995))))

(assert (=> b!4927697 (= lt!2027993 (lemmaIsPrefixThenSmallerEqSize!689 lt!2027786 lt!2026995))))

(declare-fun e!3078811 () tuple2!61192)

(declare-fun e!3078812 () tuple2!61192)

(assert (=> b!4927697 (= e!3078811 e!3078812)))

(declare-fun b!4927698 () Bool)

(declare-fun e!3078810 () tuple2!61192)

(assert (=> b!4927698 (= e!3078810 (tuple2!61193 Nil!56697 lt!2026995))))

(declare-fun bm!343771 () Bool)

(declare-fun call!343780 () Bool)

(assert (=> bm!343771 (= call!343780 (isPrefix!4965 lt!2026995 lt!2026995))))

(declare-fun b!4927699 () Bool)

(declare-fun e!3078808 () tuple2!61192)

(declare-fun lt!2028007 () tuple2!61192)

(assert (=> b!4927699 (= e!3078808 lt!2028007)))

(declare-fun d!1585989 () Bool)

(declare-fun e!3078813 () Bool)

(assert (=> d!1585989 e!3078813))

(declare-fun res!2103064 () Bool)

(assert (=> d!1585989 (=> (not res!2103064) (not e!3078813))))

(declare-fun lt!2027989 () tuple2!61192)

(assert (=> d!1585989 (= res!2103064 (= (++!12330 (_1!33899 lt!2027989) (_2!33899 lt!2027989)) lt!2026995))))

(assert (=> d!1585989 (= lt!2027989 e!3078810)))

(declare-fun c!839498 () Bool)

(assert (=> d!1585989 (= c!839498 (lostCauseZipper!695 call!343721))))

(declare-fun lt!2027992 () Unit!147242)

(declare-fun Unit!147277 () Unit!147242)

(assert (=> d!1585989 (= lt!2027992 Unit!147277)))

(assert (=> d!1585989 (= (getSuffix!2953 lt!2026995 lt!2027786) call!343722)))

(declare-fun lt!2027999 () Unit!147242)

(declare-fun lt!2028003 () Unit!147242)

(assert (=> d!1585989 (= lt!2027999 lt!2028003)))

(declare-fun lt!2028009 () List!56821)

(assert (=> d!1585989 (= call!343722 lt!2028009)))

(assert (=> d!1585989 (= lt!2028003 (lemmaSamePrefixThenSameSuffix!2369 lt!2027786 call!343722 lt!2027786 lt!2028009 lt!2026995))))

(assert (=> d!1585989 (= lt!2028009 (getSuffix!2953 lt!2026995 lt!2027786))))

(declare-fun lt!2028000 () Unit!147242)

(declare-fun lt!2027998 () Unit!147242)

(assert (=> d!1585989 (= lt!2028000 lt!2027998)))

(assert (=> d!1585989 (isPrefix!4965 lt!2027786 (++!12330 lt!2027786 call!343722))))

(assert (=> d!1585989 (= lt!2027998 (lemmaConcatTwoListThenFirstIsPrefix!3189 lt!2027786 call!343722))))

(assert (=> d!1585989 (= (++!12330 lt!2027786 call!343722) lt!2026995)))

(assert (=> d!1585989 (= (findLongestMatchInnerZipper!62 call!343721 lt!2027786 (+ 0 1 1) call!343722 lt!2026995 lt!2026996) lt!2027989)))

(declare-fun b!4927700 () Bool)

(declare-fun Unit!147278 () Unit!147242)

(assert (=> b!4927700 (= e!3078809 Unit!147278)))

(declare-fun b!4927701 () Bool)

(assert (=> b!4927701 (= e!3078812 e!3078808)))

(declare-fun call!343781 () tuple2!61192)

(assert (=> b!4927701 (= lt!2028007 call!343781)))

(declare-fun c!839496 () Bool)

(assert (=> b!4927701 (= c!839496 (isEmpty!30579 (_1!33899 lt!2028007)))))

(declare-fun bm!343772 () Bool)

(declare-fun call!343777 () C!26964)

(assert (=> bm!343772 (= call!343777 (head!10524 call!343722))))

(declare-fun bm!343773 () Bool)

(assert (=> bm!343773 (= call!343776 (nullableZipper!814 call!343721))))

(declare-fun b!4927702 () Bool)

(declare-fun e!3078814 () Bool)

(assert (=> b!4927702 (= e!3078814 (>= (size!37489 (_1!33899 lt!2027989)) (size!37489 lt!2027786)))))

(declare-fun b!4927703 () Bool)

(declare-fun Unit!147279 () Unit!147242)

(assert (=> b!4927703 (= e!3078809 Unit!147279)))

(declare-fun lt!2027986 () Unit!147242)

(declare-fun call!343779 () Unit!147242)

(assert (=> b!4927703 (= lt!2027986 call!343779)))

(assert (=> b!4927703 call!343780))

(declare-fun lt!2028002 () Unit!147242)

(assert (=> b!4927703 (= lt!2028002 lt!2027986)))

(declare-fun lt!2027987 () Unit!147242)

(assert (=> b!4927703 (= lt!2027987 call!343778)))

(assert (=> b!4927703 (= lt!2026995 lt!2027786)))

(declare-fun lt!2028001 () Unit!147242)

(assert (=> b!4927703 (= lt!2028001 lt!2027987)))

(assert (=> b!4927703 false))

(declare-fun b!4927704 () Bool)

(declare-fun c!839501 () Bool)

(assert (=> b!4927704 (= c!839501 call!343776)))

(declare-fun lt!2027994 () Unit!147242)

(declare-fun lt!2027997 () Unit!147242)

(assert (=> b!4927704 (= lt!2027994 lt!2027997)))

(assert (=> b!4927704 (= lt!2026995 lt!2027786)))

(assert (=> b!4927704 (= lt!2027997 call!343778)))

(declare-fun lt!2027995 () Unit!147242)

(declare-fun lt!2027996 () Unit!147242)

(assert (=> b!4927704 (= lt!2027995 lt!2027996)))

(assert (=> b!4927704 call!343780))

(assert (=> b!4927704 (= lt!2027996 call!343779)))

(assert (=> b!4927704 (= e!3078811 e!3078807)))

(declare-fun b!4927705 () Bool)

(assert (=> b!4927705 (= e!3078810 e!3078811)))

(declare-fun c!839500 () Bool)

(assert (=> b!4927705 (= c!839500 (= (+ 0 1 1) lt!2026996))))

(declare-fun bm!343774 () Bool)

(declare-fun call!343774 () (InoxSet Context!6038))

(assert (=> bm!343774 (= call!343781 (findLongestMatchInnerZipper!62 call!343774 lt!2027991 (+ 0 1 1 1) call!343775 lt!2026995 lt!2026996))))

(declare-fun bm!343775 () Bool)

(assert (=> bm!343775 (= call!343779 (lemmaIsPrefixRefl!3361 lt!2026995 lt!2026995))))

(declare-fun b!4927706 () Bool)

(assert (=> b!4927706 (= e!3078812 call!343781)))

(declare-fun b!4927707 () Bool)

(assert (=> b!4927707 (= e!3078807 (tuple2!61193 lt!2027786 Nil!56697))))

(declare-fun b!4927708 () Bool)

(assert (=> b!4927708 (= e!3078808 (tuple2!61193 lt!2027786 call!343722))))

(declare-fun b!4927709 () Bool)

(assert (=> b!4927709 (= e!3078813 e!3078814)))

(declare-fun res!2103063 () Bool)

(assert (=> b!4927709 (=> res!2103063 e!3078814)))

(assert (=> b!4927709 (= res!2103063 (isEmpty!30579 (_1!33899 lt!2027989)))))

(declare-fun bm!343776 () Bool)

(assert (=> bm!343776 (= call!343774 (derivationStepZipper!592 call!343721 call!343777))))

(assert (= (and d!1585989 c!839498) b!4927698))

(assert (= (and d!1585989 (not c!839498)) b!4927705))

(assert (= (and b!4927705 c!839500) b!4927704))

(assert (= (and b!4927705 (not c!839500)) b!4927697))

(assert (= (and b!4927704 c!839501) b!4927707))

(assert (= (and b!4927704 (not c!839501)) b!4927696))

(assert (= (and b!4927697 c!839497) b!4927703))

(assert (= (and b!4927697 (not c!839497)) b!4927700))

(assert (= (and b!4927697 c!839499) b!4927701))

(assert (= (and b!4927697 (not c!839499)) b!4927706))

(assert (= (and b!4927701 c!839496) b!4927708))

(assert (= (and b!4927701 (not c!839496)) b!4927699))

(assert (= (or b!4927701 b!4927706) bm!343770))

(assert (= (or b!4927701 b!4927706) bm!343772))

(assert (= (or b!4927701 b!4927706) bm!343776))

(assert (= (or b!4927701 b!4927706) bm!343774))

(assert (= (or b!4927704 b!4927703) bm!343771))

(assert (= (or b!4927704 b!4927703) bm!343775))

(assert (= (or b!4927704 b!4927703) bm!343769))

(assert (= (or b!4927704 b!4927697) bm!343773))

(assert (= (and d!1585989 res!2103064) b!4927709))

(assert (= (and b!4927709 (not res!2103063)) b!4927702))

(declare-fun m!5946298 () Bool)

(assert (=> b!4927697 m!5946298))

(declare-fun m!5946300 () Bool)

(assert (=> b!4927697 m!5946300))

(declare-fun m!5946302 () Bool)

(assert (=> b!4927697 m!5946302))

(declare-fun m!5946304 () Bool)

(assert (=> b!4927697 m!5946304))

(declare-fun m!5946306 () Bool)

(assert (=> b!4927697 m!5946306))

(declare-fun m!5946308 () Bool)

(assert (=> b!4927697 m!5946308))

(declare-fun m!5946310 () Bool)

(assert (=> b!4927697 m!5946310))

(assert (=> b!4927697 m!5946306))

(assert (=> b!4927697 m!5944674))

(assert (=> b!4927697 m!5946298))

(declare-fun m!5946312 () Bool)

(assert (=> b!4927697 m!5946312))

(declare-fun m!5946314 () Bool)

(assert (=> b!4927697 m!5946314))

(declare-fun m!5946316 () Bool)

(assert (=> b!4927697 m!5946316))

(assert (=> b!4927697 m!5946314))

(declare-fun m!5946318 () Bool)

(assert (=> b!4927697 m!5946318))

(declare-fun m!5946320 () Bool)

(assert (=> b!4927697 m!5946320))

(declare-fun m!5946322 () Bool)

(assert (=> b!4927697 m!5946322))

(declare-fun m!5946324 () Bool)

(assert (=> bm!343774 m!5946324))

(declare-fun m!5946326 () Bool)

(assert (=> bm!343769 m!5946326))

(assert (=> bm!343775 m!5944690))

(declare-fun m!5946328 () Bool)

(assert (=> d!1585989 m!5946328))

(assert (=> d!1585989 m!5946328))

(declare-fun m!5946330 () Bool)

(assert (=> d!1585989 m!5946330))

(declare-fun m!5946332 () Bool)

(assert (=> d!1585989 m!5946332))

(assert (=> d!1585989 m!5946314))

(declare-fun m!5946334 () Bool)

(assert (=> d!1585989 m!5946334))

(declare-fun m!5946336 () Bool)

(assert (=> d!1585989 m!5946336))

(declare-fun m!5946338 () Bool)

(assert (=> d!1585989 m!5946338))

(assert (=> bm!343771 m!5944696))

(declare-fun m!5946340 () Bool)

(assert (=> bm!343773 m!5946340))

(declare-fun m!5946342 () Bool)

(assert (=> b!4927702 m!5946342))

(assert (=> b!4927702 m!5946304))

(declare-fun m!5946344 () Bool)

(assert (=> b!4927709 m!5946344))

(assert (=> bm!343772 m!5946310))

(declare-fun m!5946346 () Bool)

(assert (=> b!4927701 m!5946346))

(assert (=> bm!343770 m!5946320))

(declare-fun m!5946348 () Bool)

(assert (=> bm!343776 m!5946348))

(assert (=> bm!343721 d!1585989))

(assert (=> b!4927390 d!1585489))

(assert (=> b!4927261 d!1585871))

(assert (=> b!4927261 d!1585873))

(declare-fun d!1585991 () Bool)

(assert (=> d!1585991 (= (head!10524 (++!12330 Nil!56697 (Cons!56697 (head!10524 (getSuffix!2953 lt!2027335 Nil!56697)) Nil!56697))) (h!63145 (++!12330 Nil!56697 (Cons!56697 (head!10524 (getSuffix!2953 lt!2027335 Nil!56697)) Nil!56697))))))

(assert (=> b!4926814 d!1585991))

(declare-fun d!1585993 () Bool)

(assert (=> d!1585993 (= (head!10524 lt!2027335) (h!63145 lt!2027335))))

(assert (=> b!4926814 d!1585993))

(declare-fun b!4927713 () Bool)

(declare-fun e!3078817 () Bool)

(assert (=> b!4927713 (= e!3078817 (>= (size!37489 (++!12330 call!343633 call!343626)) (size!37489 call!343633)))))

(declare-fun d!1585995 () Bool)

(assert (=> d!1585995 e!3078817))

(declare-fun res!2103065 () Bool)

(assert (=> d!1585995 (=> res!2103065 e!3078817)))

(declare-fun lt!2028012 () Bool)

(assert (=> d!1585995 (= res!2103065 (not lt!2028012))))

(declare-fun e!3078816 () Bool)

(assert (=> d!1585995 (= lt!2028012 e!3078816)))

(declare-fun res!2103067 () Bool)

(assert (=> d!1585995 (=> res!2103067 e!3078816)))

(assert (=> d!1585995 (= res!2103067 ((_ is Nil!56697) call!343633))))

(assert (=> d!1585995 (= (isPrefix!4965 call!343633 (++!12330 call!343633 call!343626)) lt!2028012)))

(declare-fun b!4927711 () Bool)

(declare-fun res!2103066 () Bool)

(declare-fun e!3078815 () Bool)

(assert (=> b!4927711 (=> (not res!2103066) (not e!3078815))))

(assert (=> b!4927711 (= res!2103066 (= (head!10524 call!343633) (head!10524 (++!12330 call!343633 call!343626))))))

(declare-fun b!4927710 () Bool)

(assert (=> b!4927710 (= e!3078816 e!3078815)))

(declare-fun res!2103068 () Bool)

(assert (=> b!4927710 (=> (not res!2103068) (not e!3078815))))

(assert (=> b!4927710 (= res!2103068 (not ((_ is Nil!56697) (++!12330 call!343633 call!343626))))))

(declare-fun b!4927712 () Bool)

(assert (=> b!4927712 (= e!3078815 (isPrefix!4965 (tail!9671 call!343633) (tail!9671 (++!12330 call!343633 call!343626))))))

(assert (= (and d!1585995 (not res!2103067)) b!4927710))

(assert (= (and b!4927710 res!2103068) b!4927711))

(assert (= (and b!4927711 res!2103066) b!4927712))

(assert (= (and d!1585995 (not res!2103065)) b!4927713))

(assert (=> b!4927713 m!5945844))

(declare-fun m!5946350 () Bool)

(assert (=> b!4927713 m!5946350))

(assert (=> b!4927713 m!5945830))

(declare-fun m!5946352 () Bool)

(assert (=> b!4927711 m!5946352))

(assert (=> b!4927711 m!5945844))

(declare-fun m!5946354 () Bool)

(assert (=> b!4927711 m!5946354))

(declare-fun m!5946356 () Bool)

(assert (=> b!4927712 m!5946356))

(assert (=> b!4927712 m!5945844))

(declare-fun m!5946358 () Bool)

(assert (=> b!4927712 m!5946358))

(assert (=> b!4927712 m!5946356))

(assert (=> b!4927712 m!5946358))

(declare-fun m!5946360 () Bool)

(assert (=> b!4927712 m!5946360))

(assert (=> d!1585841 d!1585995))

(declare-fun b!4927714 () Bool)

(declare-fun e!3078818 () List!56821)

(assert (=> b!4927714 (= e!3078818 call!343626)))

(declare-fun e!3078819 () Bool)

(declare-fun lt!2028013 () List!56821)

(declare-fun b!4927717 () Bool)

(assert (=> b!4927717 (= e!3078819 (or (not (= call!343626 Nil!56697)) (= lt!2028013 call!343633)))))

(declare-fun b!4927716 () Bool)

(declare-fun res!2103069 () Bool)

(assert (=> b!4927716 (=> (not res!2103069) (not e!3078819))))

(assert (=> b!4927716 (= res!2103069 (= (size!37489 lt!2028013) (+ (size!37489 call!343633) (size!37489 call!343626))))))

(declare-fun d!1585997 () Bool)

(assert (=> d!1585997 e!3078819))

(declare-fun res!2103070 () Bool)

(assert (=> d!1585997 (=> (not res!2103070) (not e!3078819))))

(assert (=> d!1585997 (= res!2103070 (= (content!10073 lt!2028013) ((_ map or) (content!10073 call!343633) (content!10073 call!343626))))))

(assert (=> d!1585997 (= lt!2028013 e!3078818)))

(declare-fun c!839502 () Bool)

(assert (=> d!1585997 (= c!839502 ((_ is Nil!56697) call!343633))))

(assert (=> d!1585997 (= (++!12330 call!343633 call!343626) lt!2028013)))

(declare-fun b!4927715 () Bool)

(assert (=> b!4927715 (= e!3078818 (Cons!56697 (h!63145 call!343633) (++!12330 (t!367283 call!343633) call!343626)))))

(assert (= (and d!1585997 c!839502) b!4927714))

(assert (= (and d!1585997 (not c!839502)) b!4927715))

(assert (= (and d!1585997 res!2103070) b!4927716))

(assert (= (and b!4927716 res!2103069) b!4927717))

(declare-fun m!5946362 () Bool)

(assert (=> b!4927716 m!5946362))

(assert (=> b!4927716 m!5945830))

(declare-fun m!5946364 () Bool)

(assert (=> b!4927716 m!5946364))

(declare-fun m!5946366 () Bool)

(assert (=> d!1585997 m!5946366))

(declare-fun m!5946368 () Bool)

(assert (=> d!1585997 m!5946368))

(declare-fun m!5946370 () Bool)

(assert (=> d!1585997 m!5946370))

(declare-fun m!5946372 () Bool)

(assert (=> b!4927715 m!5946372))

(assert (=> d!1585841 d!1585997))

(assert (=> d!1585841 d!1585489))

(declare-fun d!1585999 () Bool)

(assert (=> d!1585999 (= call!343626 lt!2027829)))

(declare-fun lt!2028014 () Unit!147242)

(assert (=> d!1585999 (= lt!2028014 (choose!36092 call!343633 call!343626 call!343633 lt!2027829 (list!17959 input!5492)))))

(assert (=> d!1585999 (isPrefix!4965 call!343633 (list!17959 input!5492))))

(assert (=> d!1585999 (= (lemmaSamePrefixThenSameSuffix!2369 call!343633 call!343626 call!343633 lt!2027829 (list!17959 input!5492)) lt!2028014)))

(declare-fun bs!1179871 () Bool)

(assert (= bs!1179871 d!1585999))

(assert (=> bs!1179871 m!5944346))

(declare-fun m!5946374 () Bool)

(assert (=> bs!1179871 m!5946374))

(assert (=> bs!1179871 m!5944346))

(declare-fun m!5946376 () Bool)

(assert (=> bs!1179871 m!5946376))

(assert (=> d!1585841 d!1585999))

(declare-fun d!1586001 () Bool)

(declare-fun lt!2028015 () Int)

(assert (=> d!1586001 (>= lt!2028015 0)))

(declare-fun e!3078820 () Int)

(assert (=> d!1586001 (= lt!2028015 e!3078820)))

(declare-fun c!839503 () Bool)

(assert (=> d!1586001 (= c!839503 ((_ is Nil!56697) (_1!33899 (findLongestMatchInnerZipper!62 call!343627 call!343633 (+ 0 1) call!343626 (list!17959 input!5492) lt!2026996))))))

(assert (=> d!1586001 (= (size!37489 (_1!33899 (findLongestMatchInnerZipper!62 call!343627 call!343633 (+ 0 1) call!343626 (list!17959 input!5492) lt!2026996))) lt!2028015)))

(declare-fun b!4927718 () Bool)

(assert (=> b!4927718 (= e!3078820 0)))

(declare-fun b!4927719 () Bool)

(assert (=> b!4927719 (= e!3078820 (+ 1 (size!37489 (t!367283 (_1!33899 (findLongestMatchInnerZipper!62 call!343627 call!343633 (+ 0 1) call!343626 (list!17959 input!5492) lt!2026996))))))))

(assert (= (and d!1586001 c!839503) b!4927718))

(assert (= (and d!1586001 (not c!839503)) b!4927719))

(declare-fun m!5946378 () Bool)

(assert (=> b!4927719 m!5946378))

(assert (=> d!1585841 d!1586001))

(declare-fun bs!1179872 () Bool)

(declare-fun d!1586003 () Bool)

(assert (= bs!1179872 (and d!1586003 d!1585879)))

(declare-fun lambda!245337 () Int)

(assert (=> bs!1179872 (= lambda!245337 lambda!245331)))

(declare-fun bs!1179873 () Bool)

(assert (= bs!1179873 (and d!1586003 d!1585835)))

(assert (=> bs!1179873 (not (= lambda!245337 lambda!245330))))

(declare-fun bs!1179874 () Bool)

(assert (= bs!1179874 (and d!1586003 b!4927573)))

(assert (=> bs!1179874 (not (= lambda!245337 lambda!245333))))

(declare-fun bs!1179875 () Bool)

(assert (= bs!1179875 (and d!1586003 b!4926928)))

(assert (=> bs!1179875 (not (= lambda!245337 lambda!245305))))

(declare-fun bs!1179876 () Bool)

(assert (= bs!1179876 (and d!1586003 b!4927572)))

(assert (=> bs!1179876 (not (= lambda!245337 lambda!245332))))

(declare-fun bs!1179877 () Bool)

(assert (= bs!1179877 (and d!1586003 d!1585903)))

(assert (=> bs!1179877 (not (= lambda!245337 lambda!245336))))

(declare-fun bs!1179878 () Bool)

(assert (= bs!1179878 (and d!1586003 b!4926927)))

(assert (=> bs!1179878 (not (= lambda!245337 lambda!245304))))

(declare-fun bs!1179879 () Bool)

(assert (= bs!1179879 (and d!1586003 d!1585579)))

(assert (=> bs!1179879 (= lambda!245337 lambda!245303)))

(declare-fun bs!1179880 () Bool)

(declare-fun b!4927720 () Bool)

(assert (= bs!1179880 (and b!4927720 d!1586003)))

(declare-fun lambda!245338 () Int)

(assert (=> bs!1179880 (not (= lambda!245338 lambda!245337))))

(declare-fun bs!1179881 () Bool)

(assert (= bs!1179881 (and b!4927720 d!1585879)))

(assert (=> bs!1179881 (not (= lambda!245338 lambda!245331))))

(declare-fun bs!1179882 () Bool)

(assert (= bs!1179882 (and b!4927720 d!1585835)))

(assert (=> bs!1179882 (not (= lambda!245338 lambda!245330))))

(declare-fun bs!1179883 () Bool)

(assert (= bs!1179883 (and b!4927720 b!4927573)))

(assert (=> bs!1179883 (= lambda!245338 lambda!245333)))

(declare-fun bs!1179884 () Bool)

(assert (= bs!1179884 (and b!4927720 b!4926928)))

(assert (=> bs!1179884 (= lambda!245338 lambda!245305)))

(declare-fun bs!1179885 () Bool)

(assert (= bs!1179885 (and b!4927720 b!4927572)))

(assert (=> bs!1179885 (= lambda!245338 lambda!245332)))

(declare-fun bs!1179886 () Bool)

(assert (= bs!1179886 (and b!4927720 d!1585903)))

(assert (=> bs!1179886 (not (= lambda!245338 lambda!245336))))

(declare-fun bs!1179887 () Bool)

(assert (= bs!1179887 (and b!4927720 b!4926927)))

(assert (=> bs!1179887 (= lambda!245338 lambda!245304)))

(declare-fun bs!1179888 () Bool)

(assert (= bs!1179888 (and b!4927720 d!1585579)))

(assert (=> bs!1179888 (not (= lambda!245338 lambda!245303))))

(declare-fun bs!1179889 () Bool)

(declare-fun b!4927721 () Bool)

(assert (= bs!1179889 (and b!4927721 d!1586003)))

(declare-fun lambda!245339 () Int)

(assert (=> bs!1179889 (not (= lambda!245339 lambda!245337))))

(declare-fun bs!1179890 () Bool)

(assert (= bs!1179890 (and b!4927721 d!1585879)))

(assert (=> bs!1179890 (not (= lambda!245339 lambda!245331))))

(declare-fun bs!1179891 () Bool)

(assert (= bs!1179891 (and b!4927721 d!1585835)))

(assert (=> bs!1179891 (not (= lambda!245339 lambda!245330))))

(declare-fun bs!1179892 () Bool)

(assert (= bs!1179892 (and b!4927721 b!4927573)))

(assert (=> bs!1179892 (= lambda!245339 lambda!245333)))

(declare-fun bs!1179893 () Bool)

(assert (= bs!1179893 (and b!4927721 b!4926928)))

(assert (=> bs!1179893 (= lambda!245339 lambda!245305)))

(declare-fun bs!1179894 () Bool)

(assert (= bs!1179894 (and b!4927721 b!4927572)))

(assert (=> bs!1179894 (= lambda!245339 lambda!245332)))

(declare-fun bs!1179895 () Bool)

(assert (= bs!1179895 (and b!4927721 d!1585903)))

(assert (=> bs!1179895 (not (= lambda!245339 lambda!245336))))

(declare-fun bs!1179896 () Bool)

(assert (= bs!1179896 (and b!4927721 b!4927720)))

(assert (=> bs!1179896 (= lambda!245339 lambda!245338)))

(declare-fun bs!1179897 () Bool)

(assert (= bs!1179897 (and b!4927721 b!4926927)))

(assert (=> bs!1179897 (= lambda!245339 lambda!245304)))

(declare-fun bs!1179898 () Bool)

(assert (= bs!1179898 (and b!4927721 d!1585579)))

(assert (=> bs!1179898 (not (= lambda!245339 lambda!245303))))

(declare-fun bm!343778 () Bool)

(declare-fun call!343783 () List!56823)

(assert (=> bm!343778 (= call!343783 (toList!7945 call!343627))))

(declare-fun e!3078821 () Unit!147242)

(declare-fun Unit!147280 () Unit!147242)

(assert (=> b!4927720 (= e!3078821 Unit!147280)))

(declare-fun lt!2028018 () List!56823)

(assert (=> b!4927720 (= lt!2028018 call!343783)))

(declare-fun lt!2028020 () Unit!147242)

(assert (=> b!4927720 (= lt!2028020 (lemmaNotForallThenExists!183 lt!2028018 lambda!245337))))

(declare-fun call!343782 () Bool)

(assert (=> b!4927720 call!343782))

(declare-fun lt!2028021 () Unit!147242)

(assert (=> b!4927720 (= lt!2028021 lt!2028020)))

(declare-fun c!839504 () Bool)

(declare-fun lt!2028016 () List!56823)

(declare-fun bm!343777 () Bool)

(assert (=> bm!343777 (= call!343782 (exists!1251 (ite c!839504 lt!2028018 lt!2028016) (ite c!839504 lambda!245338 lambda!245339)))))

(declare-fun Unit!147281 () Unit!147242)

(assert (=> b!4927721 (= e!3078821 Unit!147281)))

(assert (=> b!4927721 (= lt!2028016 call!343783)))

(declare-fun lt!2028019 () Unit!147242)

(assert (=> b!4927721 (= lt!2028019 (lemmaForallThenNotExists!166 lt!2028016 lambda!245337))))

(assert (=> b!4927721 (not call!343782)))

(declare-fun lt!2028023 () Unit!147242)

(assert (=> b!4927721 (= lt!2028023 lt!2028019)))

(declare-fun lt!2028017 () Bool)

(assert (=> d!1586003 (= lt!2028017 (isEmpty!30580 (getLanguageWitness!619 call!343627)))))

(assert (=> d!1586003 (= lt!2028017 (forall!13142 call!343627 lambda!245337))))

(declare-fun lt!2028022 () Unit!147242)

(assert (=> d!1586003 (= lt!2028022 e!3078821)))

(assert (=> d!1586003 (= c!839504 (not (forall!13142 call!343627 lambda!245337)))))

(assert (=> d!1586003 (= (lostCauseZipper!695 call!343627) lt!2028017)))

(assert (= (and d!1586003 c!839504) b!4927720))

(assert (= (and d!1586003 (not c!839504)) b!4927721))

(assert (= (or b!4927720 b!4927721) bm!343777))

(assert (= (or b!4927720 b!4927721) bm!343778))

(declare-fun m!5946380 () Bool)

(assert (=> bm!343777 m!5946380))

(declare-fun m!5946382 () Bool)

(assert (=> bm!343778 m!5946382))

(declare-fun m!5946384 () Bool)

(assert (=> d!1586003 m!5946384))

(assert (=> d!1586003 m!5946384))

(declare-fun m!5946386 () Bool)

(assert (=> d!1586003 m!5946386))

(declare-fun m!5946388 () Bool)

(assert (=> d!1586003 m!5946388))

(assert (=> d!1586003 m!5946388))

(declare-fun m!5946390 () Bool)

(assert (=> b!4927721 m!5946390))

(declare-fun m!5946392 () Bool)

(assert (=> b!4927720 m!5946392))

(assert (=> d!1585841 d!1586003))

(declare-fun b!4927722 () Bool)

(declare-fun e!3078822 () tuple2!61192)

(assert (=> b!4927722 (= e!3078822 (tuple2!61193 Nil!56697 (list!17959 input!5492)))))

(declare-fun bm!343779 () Bool)

(declare-fun call!343788 () Unit!147242)

(assert (=> bm!343779 (= call!343788 (lemmaIsPrefixSameLengthThenSameList!1123 (list!17959 input!5492) call!343633 (list!17959 input!5492)))))

(declare-fun bm!343780 () Bool)

(declare-fun call!343785 () List!56821)

(assert (=> bm!343780 (= call!343785 (tail!9671 call!343626))))

(declare-fun b!4927723 () Bool)

(declare-fun c!839508 () Bool)

(declare-fun call!343786 () Bool)

(assert (=> b!4927723 (= c!839508 call!343786)))

(declare-fun lt!2028043 () Unit!147242)

(declare-fun lt!2028046 () Unit!147242)

(assert (=> b!4927723 (= lt!2028043 lt!2028046)))

(declare-fun lt!2028048 () List!56821)

(declare-fun lt!2028049 () C!26964)

(assert (=> b!4927723 (= (++!12330 (++!12330 call!343633 (Cons!56697 lt!2028049 Nil!56697)) lt!2028048) (list!17959 input!5492))))

(assert (=> b!4927723 (= lt!2028046 (lemmaMoveElementToOtherListKeepsConcatEq!1395 call!343633 lt!2028049 lt!2028048 (list!17959 input!5492)))))

(assert (=> b!4927723 (= lt!2028048 (tail!9671 call!343626))))

(assert (=> b!4927723 (= lt!2028049 (head!10524 call!343626))))

(declare-fun lt!2028044 () Unit!147242)

(declare-fun lt!2028042 () Unit!147242)

(assert (=> b!4927723 (= lt!2028044 lt!2028042)))

(assert (=> b!4927723 (isPrefix!4965 (++!12330 call!343633 (Cons!56697 (head!10524 (getSuffix!2953 (list!17959 input!5492) call!343633)) Nil!56697)) (list!17959 input!5492))))

(assert (=> b!4927723 (= lt!2028042 (lemmaAddHeadSuffixToPrefixStillPrefix!777 call!343633 (list!17959 input!5492)))))

(declare-fun lt!2028029 () List!56821)

(assert (=> b!4927723 (= lt!2028029 (++!12330 call!343633 (Cons!56697 (head!10524 call!343626) Nil!56697)))))

(declare-fun lt!2028026 () Unit!147242)

(declare-fun e!3078824 () Unit!147242)

(assert (=> b!4927723 (= lt!2028026 e!3078824)))

(declare-fun c!839506 () Bool)

(assert (=> b!4927723 (= c!839506 (= (size!37489 call!343633) (size!37489 (list!17959 input!5492))))))

(declare-fun lt!2028028 () Unit!147242)

(declare-fun lt!2028031 () Unit!147242)

(assert (=> b!4927723 (= lt!2028028 lt!2028031)))

(assert (=> b!4927723 (<= (size!37489 call!343633) (size!37489 (list!17959 input!5492)))))

(assert (=> b!4927723 (= lt!2028031 (lemmaIsPrefixThenSmallerEqSize!689 call!343633 (list!17959 input!5492)))))

(declare-fun e!3078826 () tuple2!61192)

(declare-fun e!3078827 () tuple2!61192)

(assert (=> b!4927723 (= e!3078826 e!3078827)))

(declare-fun b!4927724 () Bool)

(declare-fun e!3078825 () tuple2!61192)

(assert (=> b!4927724 (= e!3078825 (tuple2!61193 Nil!56697 (list!17959 input!5492)))))

(declare-fun bm!343781 () Bool)

(declare-fun call!343790 () Bool)

(assert (=> bm!343781 (= call!343790 (isPrefix!4965 (list!17959 input!5492) (list!17959 input!5492)))))

(declare-fun b!4927725 () Bool)

(declare-fun e!3078823 () tuple2!61192)

(declare-fun lt!2028045 () tuple2!61192)

(assert (=> b!4927725 (= e!3078823 lt!2028045)))

(declare-fun d!1586005 () Bool)

(declare-fun e!3078828 () Bool)

(assert (=> d!1586005 e!3078828))

(declare-fun res!2103072 () Bool)

(assert (=> d!1586005 (=> (not res!2103072) (not e!3078828))))

(declare-fun lt!2028027 () tuple2!61192)

(assert (=> d!1586005 (= res!2103072 (= (++!12330 (_1!33899 lt!2028027) (_2!33899 lt!2028027)) (list!17959 input!5492)))))

(assert (=> d!1586005 (= lt!2028027 e!3078825)))

(declare-fun c!839507 () Bool)

(assert (=> d!1586005 (= c!839507 (lostCauseZipper!695 call!343627))))

(declare-fun lt!2028030 () Unit!147242)

(declare-fun Unit!147282 () Unit!147242)

(assert (=> d!1586005 (= lt!2028030 Unit!147282)))

(assert (=> d!1586005 (= (getSuffix!2953 (list!17959 input!5492) call!343633) call!343626)))

(declare-fun lt!2028037 () Unit!147242)

(declare-fun lt!2028041 () Unit!147242)

(assert (=> d!1586005 (= lt!2028037 lt!2028041)))

(declare-fun lt!2028047 () List!56821)

(assert (=> d!1586005 (= call!343626 lt!2028047)))

(assert (=> d!1586005 (= lt!2028041 (lemmaSamePrefixThenSameSuffix!2369 call!343633 call!343626 call!343633 lt!2028047 (list!17959 input!5492)))))

(assert (=> d!1586005 (= lt!2028047 (getSuffix!2953 (list!17959 input!5492) call!343633))))

(declare-fun lt!2028038 () Unit!147242)

(declare-fun lt!2028036 () Unit!147242)

(assert (=> d!1586005 (= lt!2028038 lt!2028036)))

(assert (=> d!1586005 (isPrefix!4965 call!343633 (++!12330 call!343633 call!343626))))

(assert (=> d!1586005 (= lt!2028036 (lemmaConcatTwoListThenFirstIsPrefix!3189 call!343633 call!343626))))

(assert (=> d!1586005 (= (++!12330 call!343633 call!343626) (list!17959 input!5492))))

(assert (=> d!1586005 (= (findLongestMatchInnerZipper!62 call!343627 call!343633 (+ 0 1) call!343626 (list!17959 input!5492) lt!2026996) lt!2028027)))

(declare-fun b!4927726 () Bool)

(declare-fun Unit!147283 () Unit!147242)

(assert (=> b!4927726 (= e!3078824 Unit!147283)))

(declare-fun b!4927727 () Bool)

(assert (=> b!4927727 (= e!3078827 e!3078823)))

(declare-fun call!343791 () tuple2!61192)

(assert (=> b!4927727 (= lt!2028045 call!343791)))

(declare-fun c!839505 () Bool)

(assert (=> b!4927727 (= c!839505 (isEmpty!30579 (_1!33899 lt!2028045)))))

(declare-fun bm!343782 () Bool)

(declare-fun call!343787 () C!26964)

(assert (=> bm!343782 (= call!343787 (head!10524 call!343626))))

(declare-fun bm!343783 () Bool)

(assert (=> bm!343783 (= call!343786 (nullableZipper!814 call!343627))))

(declare-fun b!4927728 () Bool)

(declare-fun e!3078829 () Bool)

(assert (=> b!4927728 (= e!3078829 (>= (size!37489 (_1!33899 lt!2028027)) (size!37489 call!343633)))))

(declare-fun b!4927729 () Bool)

(declare-fun Unit!147284 () Unit!147242)

(assert (=> b!4927729 (= e!3078824 Unit!147284)))

(declare-fun lt!2028024 () Unit!147242)

(declare-fun call!343789 () Unit!147242)

(assert (=> b!4927729 (= lt!2028024 call!343789)))

(assert (=> b!4927729 call!343790))

(declare-fun lt!2028040 () Unit!147242)

(assert (=> b!4927729 (= lt!2028040 lt!2028024)))

(declare-fun lt!2028025 () Unit!147242)

(assert (=> b!4927729 (= lt!2028025 call!343788)))

(assert (=> b!4927729 (= (list!17959 input!5492) call!343633)))

(declare-fun lt!2028039 () Unit!147242)

(assert (=> b!4927729 (= lt!2028039 lt!2028025)))

(assert (=> b!4927729 false))

(declare-fun b!4927730 () Bool)

(declare-fun c!839510 () Bool)

(assert (=> b!4927730 (= c!839510 call!343786)))

(declare-fun lt!2028032 () Unit!147242)

(declare-fun lt!2028035 () Unit!147242)

(assert (=> b!4927730 (= lt!2028032 lt!2028035)))

(assert (=> b!4927730 (= (list!17959 input!5492) call!343633)))

(assert (=> b!4927730 (= lt!2028035 call!343788)))

(declare-fun lt!2028033 () Unit!147242)

(declare-fun lt!2028034 () Unit!147242)

(assert (=> b!4927730 (= lt!2028033 lt!2028034)))

(assert (=> b!4927730 call!343790))

(assert (=> b!4927730 (= lt!2028034 call!343789)))

(assert (=> b!4927730 (= e!3078826 e!3078822)))

(declare-fun b!4927731 () Bool)

(assert (=> b!4927731 (= e!3078825 e!3078826)))

(declare-fun c!839509 () Bool)

(assert (=> b!4927731 (= c!839509 (= (+ 0 1) lt!2026996))))

(declare-fun call!343784 () (InoxSet Context!6038))

(declare-fun bm!343784 () Bool)

(assert (=> bm!343784 (= call!343791 (findLongestMatchInnerZipper!62 call!343784 lt!2028029 (+ 0 1 1) call!343785 (list!17959 input!5492) lt!2026996))))

(declare-fun bm!343785 () Bool)

(assert (=> bm!343785 (= call!343789 (lemmaIsPrefixRefl!3361 (list!17959 input!5492) (list!17959 input!5492)))))

(declare-fun b!4927732 () Bool)

(assert (=> b!4927732 (= e!3078827 call!343791)))

(declare-fun b!4927733 () Bool)

(assert (=> b!4927733 (= e!3078822 (tuple2!61193 call!343633 Nil!56697))))

(declare-fun b!4927734 () Bool)

(assert (=> b!4927734 (= e!3078823 (tuple2!61193 call!343633 call!343626))))

(declare-fun b!4927735 () Bool)

(assert (=> b!4927735 (= e!3078828 e!3078829)))

(declare-fun res!2103071 () Bool)

(assert (=> b!4927735 (=> res!2103071 e!3078829)))

(assert (=> b!4927735 (= res!2103071 (isEmpty!30579 (_1!33899 lt!2028027)))))

(declare-fun bm!343786 () Bool)

(assert (=> bm!343786 (= call!343784 (derivationStepZipper!592 call!343627 call!343787))))

(assert (= (and d!1586005 c!839507) b!4927724))

(assert (= (and d!1586005 (not c!839507)) b!4927731))

(assert (= (and b!4927731 c!839509) b!4927730))

(assert (= (and b!4927731 (not c!839509)) b!4927723))

(assert (= (and b!4927730 c!839510) b!4927733))

(assert (= (and b!4927730 (not c!839510)) b!4927722))

(assert (= (and b!4927723 c!839506) b!4927729))

(assert (= (and b!4927723 (not c!839506)) b!4927726))

(assert (= (and b!4927723 c!839508) b!4927727))

(assert (= (and b!4927723 (not c!839508)) b!4927732))

(assert (= (and b!4927727 c!839505) b!4927734))

(assert (= (and b!4927727 (not c!839505)) b!4927725))

(assert (= (or b!4927727 b!4927732) bm!343780))

(assert (= (or b!4927727 b!4927732) bm!343782))

(assert (= (or b!4927727 b!4927732) bm!343786))

(assert (= (or b!4927727 b!4927732) bm!343784))

(assert (= (or b!4927730 b!4927729) bm!343781))

(assert (= (or b!4927730 b!4927729) bm!343785))

(assert (= (or b!4927730 b!4927729) bm!343779))

(assert (= (or b!4927730 b!4927723) bm!343783))

(assert (= (and d!1586005 res!2103072) b!4927735))

(assert (= (and b!4927735 (not res!2103071)) b!4927728))

(declare-fun m!5946394 () Bool)

(assert (=> b!4927723 m!5946394))

(declare-fun m!5946396 () Bool)

(assert (=> b!4927723 m!5946396))

(assert (=> b!4927723 m!5944346))

(declare-fun m!5946398 () Bool)

(assert (=> b!4927723 m!5946398))

(assert (=> b!4927723 m!5945830))

(declare-fun m!5946400 () Bool)

(assert (=> b!4927723 m!5946400))

(assert (=> b!4927723 m!5944346))

(declare-fun m!5946402 () Bool)

(assert (=> b!4927723 m!5946402))

(declare-fun m!5946404 () Bool)

(assert (=> b!4927723 m!5946404))

(assert (=> b!4927723 m!5946400))

(assert (=> b!4927723 m!5944346))

(assert (=> b!4927723 m!5944632))

(assert (=> b!4927723 m!5946394))

(assert (=> b!4927723 m!5944346))

(declare-fun m!5946406 () Bool)

(assert (=> b!4927723 m!5946406))

(assert (=> b!4927723 m!5944346))

(assert (=> b!4927723 m!5945848))

(declare-fun m!5946408 () Bool)

(assert (=> b!4927723 m!5946408))

(assert (=> b!4927723 m!5945848))

(declare-fun m!5946410 () Bool)

(assert (=> b!4927723 m!5946410))

(assert (=> b!4927723 m!5945808))

(assert (=> b!4927723 m!5944346))

(declare-fun m!5946412 () Bool)

(assert (=> b!4927723 m!5946412))

(assert (=> bm!343784 m!5944346))

(declare-fun m!5946414 () Bool)

(assert (=> bm!343784 m!5946414))

(assert (=> bm!343779 m!5944346))

(assert (=> bm!343779 m!5944346))

(declare-fun m!5946416 () Bool)

(assert (=> bm!343779 m!5946416))

(assert (=> bm!343785 m!5944346))

(assert (=> bm!343785 m!5944346))

(assert (=> bm!343785 m!5945608))

(assert (=> d!1586005 m!5945844))

(assert (=> d!1586005 m!5945844))

(assert (=> d!1586005 m!5945846))

(assert (=> d!1586005 m!5944346))

(declare-fun m!5946418 () Bool)

(assert (=> d!1586005 m!5946418))

(assert (=> d!1586005 m!5944346))

(assert (=> d!1586005 m!5945848))

(declare-fun m!5946420 () Bool)

(assert (=> d!1586005 m!5946420))

(assert (=> d!1586005 m!5945852))

(assert (=> d!1586005 m!5945840))

(assert (=> bm!343781 m!5944346))

(assert (=> bm!343781 m!5944346))

(assert (=> bm!343781 m!5945614))

(assert (=> bm!343783 m!5945794))

(declare-fun m!5946422 () Bool)

(assert (=> b!4927728 m!5946422))

(assert (=> b!4927728 m!5945830))

(declare-fun m!5946424 () Bool)

(assert (=> b!4927735 m!5946424))

(assert (=> bm!343782 m!5946404))

(declare-fun m!5946426 () Bool)

(assert (=> b!4927727 m!5946426))

(assert (=> bm!343780 m!5945808))

(declare-fun m!5946428 () Bool)

(assert (=> bm!343786 m!5946428))

(assert (=> d!1585841 d!1586005))

(declare-fun d!1586007 () Bool)

(assert (=> d!1586007 (isPrefix!4965 call!343633 (++!12330 call!343633 call!343626))))

(declare-fun lt!2028050 () Unit!147242)

(assert (=> d!1586007 (= lt!2028050 (choose!36091 call!343633 call!343626))))

(assert (=> d!1586007 (= (lemmaConcatTwoListThenFirstIsPrefix!3189 call!343633 call!343626) lt!2028050)))

(declare-fun bs!1179899 () Bool)

(assert (= bs!1179899 d!1586007))

(assert (=> bs!1179899 m!5945844))

(assert (=> bs!1179899 m!5945844))

(assert (=> bs!1179899 m!5945846))

(declare-fun m!5946430 () Bool)

(assert (=> bs!1179899 m!5946430))

(assert (=> d!1585841 d!1586007))

(declare-fun d!1586009 () Bool)

(declare-fun lt!2028051 () List!56821)

(assert (=> d!1586009 (= (++!12330 call!343633 lt!2028051) (list!17959 input!5492))))

(declare-fun e!3078830 () List!56821)

(assert (=> d!1586009 (= lt!2028051 e!3078830)))

(declare-fun c!839511 () Bool)

(assert (=> d!1586009 (= c!839511 ((_ is Cons!56697) call!343633))))

(assert (=> d!1586009 (>= (size!37489 (list!17959 input!5492)) (size!37489 call!343633))))

(assert (=> d!1586009 (= (getSuffix!2953 (list!17959 input!5492) call!343633) lt!2028051)))

(declare-fun b!4927736 () Bool)

(assert (=> b!4927736 (= e!3078830 (getSuffix!2953 (tail!9671 (list!17959 input!5492)) (t!367283 call!343633)))))

(declare-fun b!4927737 () Bool)

(assert (=> b!4927737 (= e!3078830 (list!17959 input!5492))))

(assert (= (and d!1586009 c!839511) b!4927736))

(assert (= (and d!1586009 (not c!839511)) b!4927737))

(declare-fun m!5946432 () Bool)

(assert (=> d!1586009 m!5946432))

(assert (=> d!1586009 m!5944346))

(assert (=> d!1586009 m!5944632))

(assert (=> d!1586009 m!5945830))

(assert (=> b!4927736 m!5944346))

(assert (=> b!4927736 m!5945626))

(assert (=> b!4927736 m!5945626))

(declare-fun m!5946434 () Bool)

(assert (=> b!4927736 m!5946434))

(assert (=> d!1585841 d!1586009))

(declare-fun d!1586011 () Bool)

(declare-fun c!839512 () Bool)

(assert (=> d!1586011 (= c!839512 ((_ is Nil!56697) lt!2027448))))

(declare-fun e!3078831 () (InoxSet C!26964))

(assert (=> d!1586011 (= (content!10073 lt!2027448) e!3078831)))

(declare-fun b!4927738 () Bool)

(assert (=> b!4927738 (= e!3078831 ((as const (Array C!26964 Bool)) false))))

(declare-fun b!4927739 () Bool)

(assert (=> b!4927739 (= e!3078831 ((_ map or) (store ((as const (Array C!26964 Bool)) false) (h!63145 lt!2027448) true) (content!10073 (t!367283 lt!2027448))))))

(assert (= (and d!1586011 c!839512) b!4927738))

(assert (= (and d!1586011 (not c!839512)) b!4927739))

(declare-fun m!5946436 () Bool)

(assert (=> b!4927739 m!5946436))

(declare-fun m!5946438 () Bool)

(assert (=> b!4927739 m!5946438))

(assert (=> d!1585503 d!1586011))

(assert (=> d!1585503 d!1585931))

(declare-fun d!1586013 () Bool)

(declare-fun c!839513 () Bool)

(assert (=> d!1586013 (= c!839513 ((_ is Nil!56697) (Cons!56697 (head!10524 (getSuffix!2953 lt!2027335 Nil!56697)) Nil!56697)))))

(declare-fun e!3078832 () (InoxSet C!26964))

(assert (=> d!1586013 (= (content!10073 (Cons!56697 (head!10524 (getSuffix!2953 lt!2027335 Nil!56697)) Nil!56697)) e!3078832)))

(declare-fun b!4927740 () Bool)

(assert (=> b!4927740 (= e!3078832 ((as const (Array C!26964 Bool)) false))))

(declare-fun b!4927741 () Bool)

(assert (=> b!4927741 (= e!3078832 ((_ map or) (store ((as const (Array C!26964 Bool)) false) (h!63145 (Cons!56697 (head!10524 (getSuffix!2953 lt!2027335 Nil!56697)) Nil!56697)) true) (content!10073 (t!367283 (Cons!56697 (head!10524 (getSuffix!2953 lt!2027335 Nil!56697)) Nil!56697)))))))

(assert (= (and d!1586013 c!839513) b!4927740))

(assert (= (and d!1586013 (not c!839513)) b!4927741))

(declare-fun m!5946440 () Bool)

(assert (=> b!4927741 m!5946440))

(declare-fun m!5946442 () Bool)

(assert (=> b!4927741 m!5946442))

(assert (=> d!1585503 d!1586013))

(declare-fun d!1586015 () Bool)

(declare-fun lt!2028054 () Bool)

(assert (=> d!1586015 (= lt!2028054 (exists!1251 (toList!7945 z!3559) lambda!245330))))

(declare-fun choose!36104 ((InoxSet Context!6038) Int) Bool)

(assert (=> d!1586015 (= lt!2028054 (choose!36104 z!3559 lambda!245330))))

(assert (=> d!1586015 (= (exists!1253 z!3559 lambda!245330) lt!2028054)))

(declare-fun bs!1179900 () Bool)

(assert (= bs!1179900 d!1586015))

(assert (=> bs!1179900 m!5945034))

(assert (=> bs!1179900 m!5945034))

(declare-fun m!5946444 () Bool)

(assert (=> bs!1179900 m!5946444))

(declare-fun m!5946446 () Bool)

(assert (=> bs!1179900 m!5946446))

(assert (=> d!1585835 d!1586015))

(declare-fun d!1586017 () Bool)

(assert (=> d!1586017 (= lt!2026995 Nil!56697)))

(assert (=> d!1586017 true))

(declare-fun _$60!876 () Unit!147242)

(assert (=> d!1586017 (= (choose!36084 lt!2026995 Nil!56697 lt!2026995) _$60!876)))

(assert (=> d!1585499 d!1586017))

(assert (=> d!1585499 d!1585799))

(declare-fun bm!343793 () Bool)

(declare-fun call!343800 () Bool)

(declare-fun call!343799 () Bool)

(assert (=> bm!343793 (= call!343800 call!343799)))

(declare-fun b!4927760 () Bool)

(declare-fun e!3078847 () Bool)

(declare-fun e!3078851 () Bool)

(assert (=> b!4927760 (= e!3078847 e!3078851)))

(declare-fun res!2103084 () Bool)

(declare-fun nullable!4609 (Regex!13377) Bool)

(assert (=> b!4927760 (= res!2103084 (not (nullable!4609 (reg!13706 (h!63146 (exprs!3519 setElem!27550))))))))

(assert (=> b!4927760 (=> (not res!2103084) (not e!3078851))))

(declare-fun b!4927761 () Bool)

(declare-fun e!3078853 () Bool)

(assert (=> b!4927761 (= e!3078853 call!343800)))

(declare-fun b!4927762 () Bool)

(declare-fun e!3078849 () Bool)

(assert (=> b!4927762 (= e!3078847 e!3078849)))

(declare-fun c!839519 () Bool)

(assert (=> b!4927762 (= c!839519 ((_ is Union!13377) (h!63146 (exprs!3519 setElem!27550))))))

(declare-fun b!4927763 () Bool)

(declare-fun e!3078852 () Bool)

(declare-fun e!3078848 () Bool)

(assert (=> b!4927763 (= e!3078852 e!3078848)))

(declare-fun res!2103083 () Bool)

(assert (=> b!4927763 (=> (not res!2103083) (not e!3078848))))

(declare-fun call!343798 () Bool)

(assert (=> b!4927763 (= res!2103083 call!343798)))

(declare-fun d!1586019 () Bool)

(declare-fun res!2103087 () Bool)

(declare-fun e!3078850 () Bool)

(assert (=> d!1586019 (=> res!2103087 e!3078850)))

(assert (=> d!1586019 (= res!2103087 ((_ is ElementMatch!13377) (h!63146 (exprs!3519 setElem!27550))))))

(assert (=> d!1586019 (= (validRegex!5945 (h!63146 (exprs!3519 setElem!27550))) e!3078850)))

(declare-fun bm!343794 () Bool)

(declare-fun c!839518 () Bool)

(assert (=> bm!343794 (= call!343799 (validRegex!5945 (ite c!839518 (reg!13706 (h!63146 (exprs!3519 setElem!27550))) (ite c!839519 (regTwo!27267 (h!63146 (exprs!3519 setElem!27550))) (regTwo!27266 (h!63146 (exprs!3519 setElem!27550)))))))))

(declare-fun b!4927764 () Bool)

(assert (=> b!4927764 (= e!3078850 e!3078847)))

(assert (=> b!4927764 (= c!839518 ((_ is Star!13377) (h!63146 (exprs!3519 setElem!27550))))))

(declare-fun b!4927765 () Bool)

(assert (=> b!4927765 (= e!3078851 call!343799)))

(declare-fun b!4927766 () Bool)

(declare-fun res!2103085 () Bool)

(assert (=> b!4927766 (=> (not res!2103085) (not e!3078853))))

(assert (=> b!4927766 (= res!2103085 call!343798)))

(assert (=> b!4927766 (= e!3078849 e!3078853)))

(declare-fun b!4927767 () Bool)

(declare-fun res!2103086 () Bool)

(assert (=> b!4927767 (=> res!2103086 e!3078852)))

(assert (=> b!4927767 (= res!2103086 (not ((_ is Concat!21950) (h!63146 (exprs!3519 setElem!27550)))))))

(assert (=> b!4927767 (= e!3078849 e!3078852)))

(declare-fun b!4927768 () Bool)

(assert (=> b!4927768 (= e!3078848 call!343800)))

(declare-fun bm!343795 () Bool)

(assert (=> bm!343795 (= call!343798 (validRegex!5945 (ite c!839519 (regOne!27267 (h!63146 (exprs!3519 setElem!27550))) (regOne!27266 (h!63146 (exprs!3519 setElem!27550))))))))

(assert (= (and d!1586019 (not res!2103087)) b!4927764))

(assert (= (and b!4927764 c!839518) b!4927760))

(assert (= (and b!4927764 (not c!839518)) b!4927762))

(assert (= (and b!4927760 res!2103084) b!4927765))

(assert (= (and b!4927762 c!839519) b!4927766))

(assert (= (and b!4927762 (not c!839519)) b!4927767))

(assert (= (and b!4927766 res!2103085) b!4927761))

(assert (= (and b!4927767 (not res!2103086)) b!4927763))

(assert (= (and b!4927763 res!2103083) b!4927768))

(assert (= (or b!4927761 b!4927768) bm!343793))

(assert (= (or b!4927766 b!4927763) bm!343795))

(assert (= (or b!4927765 bm!343793) bm!343794))

(declare-fun m!5946448 () Bool)

(assert (=> b!4927760 m!5946448))

(declare-fun m!5946450 () Bool)

(assert (=> bm!343794 m!5946450))

(declare-fun m!5946452 () Bool)

(assert (=> bm!343795 m!5946452))

(assert (=> bs!1179834 d!1586019))

(declare-fun d!1586021 () Bool)

(declare-fun lt!2028055 () Int)

(assert (=> d!1586021 (>= lt!2028055 0)))

(declare-fun e!3078854 () Int)

(assert (=> d!1586021 (= lt!2028055 e!3078854)))

(declare-fun c!839520 () Bool)

(assert (=> d!1586021 (= c!839520 ((_ is Nil!56697) lt!2027603))))

(assert (=> d!1586021 (= (size!37489 lt!2027603) lt!2028055)))

(declare-fun b!4927769 () Bool)

(assert (=> b!4927769 (= e!3078854 0)))

(declare-fun b!4927770 () Bool)

(assert (=> b!4927770 (= e!3078854 (+ 1 (size!37489 (t!367283 lt!2027603))))))

(assert (= (and d!1586021 c!839520) b!4927769))

(assert (= (and d!1586021 (not c!839520)) b!4927770))

(declare-fun m!5946454 () Bool)

(assert (=> b!4927770 m!5946454))

(assert (=> b!4926999 d!1586021))

(assert (=> b!4926999 d!1585527))

(declare-fun d!1586023 () Bool)

(declare-fun lt!2028056 () Int)

(assert (=> d!1586023 (>= lt!2028056 0)))

(declare-fun e!3078855 () Int)

(assert (=> d!1586023 (= lt!2028056 e!3078855)))

(declare-fun c!839521 () Bool)

(assert (=> d!1586023 (= c!839521 ((_ is Nil!56697) (Cons!56697 lt!2027437 Nil!56697)))))

(assert (=> d!1586023 (= (size!37489 (Cons!56697 lt!2027437 Nil!56697)) lt!2028056)))

(declare-fun b!4927771 () Bool)

(assert (=> b!4927771 (= e!3078855 0)))

(declare-fun b!4927772 () Bool)

(assert (=> b!4927772 (= e!3078855 (+ 1 (size!37489 (t!367283 (Cons!56697 lt!2027437 Nil!56697)))))))

(assert (= (and d!1586023 c!839521) b!4927771))

(assert (= (and d!1586023 (not c!839521)) b!4927772))

(declare-fun m!5946456 () Bool)

(assert (=> b!4927772 m!5946456))

(assert (=> b!4926999 d!1586023))

(declare-fun d!1586025 () Bool)

(declare-fun lt!2028057 () Int)

(assert (=> d!1586025 (>= lt!2028057 0)))

(declare-fun e!3078856 () Int)

(assert (=> d!1586025 (= lt!2028057 e!3078856)))

(declare-fun c!839522 () Bool)

(assert (=> d!1586025 (= c!839522 ((_ is Nil!56697) lt!2027331))))

(assert (=> d!1586025 (= (size!37489 lt!2027331) lt!2028057)))

(declare-fun b!4927773 () Bool)

(assert (=> b!4927773 (= e!3078856 0)))

(declare-fun b!4927774 () Bool)

(assert (=> b!4927774 (= e!3078856 (+ 1 (size!37489 (t!367283 lt!2027331))))))

(assert (= (and d!1586025 c!839522) b!4927773))

(assert (= (and d!1586025 (not c!839522)) b!4927774))

(assert (=> b!4927774 m!5946236))

(assert (=> bm!343656 d!1586025))

(declare-fun d!1586027 () Bool)

(declare-fun lt!2028058 () Int)

(assert (=> d!1586027 (>= lt!2028058 0)))

(declare-fun e!3078857 () Int)

(assert (=> d!1586027 (= lt!2028058 e!3078857)))

(declare-fun c!839523 () Bool)

(assert (=> d!1586027 (= c!839523 ((_ is Nil!56697) (ite c!839148 lt!2027309 lt!2027343)))))

(assert (=> d!1586027 (= (size!37489 (ite c!839148 lt!2027309 lt!2027343)) lt!2028058)))

(declare-fun b!4927775 () Bool)

(assert (=> b!4927775 (= e!3078857 0)))

(declare-fun b!4927776 () Bool)

(assert (=> b!4927776 (= e!3078857 (+ 1 (size!37489 (t!367283 (ite c!839148 lt!2027309 lt!2027343)))))))

(assert (= (and d!1586027 c!839523) b!4927775))

(assert (= (and d!1586027 (not c!839523)) b!4927776))

(declare-fun m!5946458 () Bool)

(assert (=> b!4927776 m!5946458))

(assert (=> b!4926966 d!1586027))

(declare-fun d!1586029 () Bool)

(declare-fun lt!2028059 () Int)

(assert (=> d!1586029 (>= lt!2028059 0)))

(declare-fun e!3078858 () Int)

(assert (=> d!1586029 (= lt!2028059 e!3078858)))

(declare-fun c!839524 () Bool)

(assert (=> d!1586029 (= c!839524 ((_ is Nil!56697) (ite c!839148 lt!2027318 lt!2027308)))))

(assert (=> d!1586029 (= (size!37489 (ite c!839148 lt!2027318 lt!2027308)) lt!2028059)))

(declare-fun b!4927777 () Bool)

(assert (=> b!4927777 (= e!3078858 0)))

(declare-fun b!4927778 () Bool)

(assert (=> b!4927778 (= e!3078858 (+ 1 (size!37489 (t!367283 (ite c!839148 lt!2027318 lt!2027308)))))))

(assert (= (and d!1586029 c!839524) b!4927777))

(assert (= (and d!1586029 (not c!839524)) b!4927778))

(declare-fun m!5946460 () Bool)

(assert (=> b!4927778 m!5946460))

(assert (=> b!4926966 d!1586029))

(declare-fun d!1586031 () Bool)

(assert (=> d!1586031 (= (list!17963 (xs!18198 (c!839087 input!5492))) (innerList!14964 (xs!18198 (c!839087 input!5492))))))

(assert (=> b!4926977 d!1586031))

(declare-fun d!1586033 () Bool)

(assert (=> d!1586033 (= (ite c!839399 lt!2027817 lt!2027853) call!343633)))

(declare-fun lt!2028060 () Unit!147242)

(assert (=> d!1586033 (= lt!2028060 (choose!36084 (ite c!839399 lt!2027817 lt!2027853) call!343633 e!3078643))))

(assert (=> d!1586033 (isPrefix!4965 (ite c!839399 lt!2027817 lt!2027853) e!3078643)))

(assert (=> d!1586033 (= (lemmaIsPrefixSameLengthThenSameList!1123 (ite c!839399 lt!2027817 lt!2027853) call!343633 e!3078643) lt!2028060)))

(declare-fun bs!1179901 () Bool)

(assert (= bs!1179901 d!1586033))

(declare-fun m!5946462 () Bool)

(assert (=> bs!1179901 m!5946462))

(declare-fun m!5946464 () Bool)

(assert (=> bs!1179901 m!5946464))

(assert (=> bm!343732 d!1586033))

(declare-fun d!1586035 () Bool)

(assert (not d!1586035))

(assert (=> b!4926747 d!1586035))

(declare-fun b!4927779 () Bool)

(declare-fun res!2103090 () Bool)

(declare-fun e!3078860 () Bool)

(assert (=> b!4927779 (=> (not res!2103090) (not e!3078860))))

(assert (=> b!4927779 (= res!2103090 (isBalanced!4089 (left!41344 (_2!33902 lt!2027728))))))

(declare-fun b!4927780 () Bool)

(declare-fun res!2103093 () Bool)

(assert (=> b!4927780 (=> (not res!2103093) (not e!3078860))))

(assert (=> b!4927780 (= res!2103093 (<= (- (height!1986 (left!41344 (_2!33902 lt!2027728))) (height!1986 (right!41674 (_2!33902 lt!2027728)))) 1))))

(declare-fun b!4927781 () Bool)

(declare-fun res!2103092 () Bool)

(assert (=> b!4927781 (=> (not res!2103092) (not e!3078860))))

(assert (=> b!4927781 (= res!2103092 (not (isEmpty!30583 (left!41344 (_2!33902 lt!2027728)))))))

(declare-fun b!4927782 () Bool)

(declare-fun res!2103089 () Bool)

(assert (=> b!4927782 (=> (not res!2103089) (not e!3078860))))

(assert (=> b!4927782 (= res!2103089 (isBalanced!4089 (right!41674 (_2!33902 lt!2027728))))))

(declare-fun b!4927783 () Bool)

(declare-fun e!3078859 () Bool)

(assert (=> b!4927783 (= e!3078859 e!3078860)))

(declare-fun res!2103088 () Bool)

(assert (=> b!4927783 (=> (not res!2103088) (not e!3078860))))

(assert (=> b!4927783 (= res!2103088 (<= (- 1) (- (height!1986 (left!41344 (_2!33902 lt!2027728))) (height!1986 (right!41674 (_2!33902 lt!2027728))))))))

(declare-fun d!1586037 () Bool)

(declare-fun res!2103091 () Bool)

(assert (=> d!1586037 (=> res!2103091 e!3078859)))

(assert (=> d!1586037 (= res!2103091 (not ((_ is Node!14876) (_2!33902 lt!2027728))))))

(assert (=> d!1586037 (= (isBalanced!4089 (_2!33902 lt!2027728)) e!3078859)))

(declare-fun b!4927784 () Bool)

(assert (=> b!4927784 (= e!3078860 (not (isEmpty!30583 (right!41674 (_2!33902 lt!2027728)))))))

(assert (= (and d!1586037 (not res!2103091)) b!4927783))

(assert (= (and b!4927783 res!2103088) b!4927780))

(assert (= (and b!4927780 res!2103093) b!4927779))

(assert (= (and b!4927779 res!2103090) b!4927782))

(assert (= (and b!4927782 res!2103089) b!4927781))

(assert (= (and b!4927781 res!2103092) b!4927784))

(declare-fun m!5946466 () Bool)

(assert (=> b!4927781 m!5946466))

(declare-fun m!5946468 () Bool)

(assert (=> b!4927782 m!5946468))

(declare-fun m!5946470 () Bool)

(assert (=> b!4927780 m!5946470))

(declare-fun m!5946472 () Bool)

(assert (=> b!4927780 m!5946472))

(assert (=> b!4927783 m!5946470))

(assert (=> b!4927783 m!5946472))

(declare-fun m!5946474 () Bool)

(assert (=> b!4927784 m!5946474))

(declare-fun m!5946476 () Bool)

(assert (=> b!4927779 m!5946476))

(assert (=> b!4927240 d!1586037))

(declare-fun d!1586039 () Bool)

(assert (=> d!1586039 (= (isEmpty!30580 (getLanguageWitness!619 z!3559)) (not ((_ is Some!14162) (getLanguageWitness!619 z!3559))))))

(assert (=> d!1585579 d!1586039))

(declare-fun bs!1179902 () Bool)

(declare-fun d!1586041 () Bool)

(assert (= bs!1179902 (and d!1586041 d!1586003)))

(declare-fun lambda!245346 () Int)

(assert (=> bs!1179902 (not (= lambda!245346 lambda!245337))))

(declare-fun bs!1179903 () Bool)

(assert (= bs!1179903 (and d!1586041 d!1585879)))

(assert (=> bs!1179903 (not (= lambda!245346 lambda!245331))))

(declare-fun bs!1179904 () Bool)

(assert (= bs!1179904 (and d!1586041 d!1585835)))

(assert (=> bs!1179904 (not (= lambda!245346 lambda!245330))))

(declare-fun bs!1179905 () Bool)

(assert (= bs!1179905 (and d!1586041 b!4927721)))

(assert (=> bs!1179905 (= lambda!245346 lambda!245339)))

(declare-fun bs!1179906 () Bool)

(assert (= bs!1179906 (and d!1586041 b!4927573)))

(assert (=> bs!1179906 (= lambda!245346 lambda!245333)))

(declare-fun bs!1179907 () Bool)

(assert (= bs!1179907 (and d!1586041 b!4926928)))

(assert (=> bs!1179907 (= lambda!245346 lambda!245305)))

(declare-fun bs!1179908 () Bool)

(assert (= bs!1179908 (and d!1586041 b!4927572)))

(assert (=> bs!1179908 (= lambda!245346 lambda!245332)))

(declare-fun bs!1179909 () Bool)

(assert (= bs!1179909 (and d!1586041 d!1585903)))

(assert (=> bs!1179909 (not (= lambda!245346 lambda!245336))))

(declare-fun bs!1179910 () Bool)

(assert (= bs!1179910 (and d!1586041 b!4927720)))

(assert (=> bs!1179910 (= lambda!245346 lambda!245338)))

(declare-fun bs!1179911 () Bool)

(assert (= bs!1179911 (and d!1586041 b!4926927)))

(assert (=> bs!1179911 (= lambda!245346 lambda!245304)))

(declare-fun bs!1179912 () Bool)

(assert (= bs!1179912 (and d!1586041 d!1585579)))

(assert (=> bs!1179912 (not (= lambda!245346 lambda!245303))))

(declare-fun lt!2028063 () Option!14163)

(declare-fun isDefined!11168 (Option!14163) Bool)

(assert (=> d!1586041 (= (isDefined!11168 lt!2028063) (exists!1253 z!3559 lambda!245346))))

(declare-fun e!3078863 () Option!14163)

(assert (=> d!1586041 (= lt!2028063 e!3078863)))

(declare-fun c!839533 () Bool)

(assert (=> d!1586041 (= c!839533 (exists!1253 z!3559 lambda!245346))))

(assert (=> d!1586041 (= (getLanguageWitness!619 z!3559) lt!2028063)))

(declare-fun b!4927789 () Bool)

(declare-fun getLanguageWitness!621 (Context!6038) Option!14163)

(declare-fun getWitness!633 ((InoxSet Context!6038) Int) Context!6038)

(assert (=> b!4927789 (= e!3078863 (getLanguageWitness!621 (getWitness!633 z!3559 lambda!245346)))))

(declare-fun b!4927790 () Bool)

(assert (=> b!4927790 (= e!3078863 None!14162)))

(assert (= (and d!1586041 c!839533) b!4927789))

(assert (= (and d!1586041 (not c!839533)) b!4927790))

(declare-fun m!5946478 () Bool)

(assert (=> d!1586041 m!5946478))

(declare-fun m!5946480 () Bool)

(assert (=> d!1586041 m!5946480))

(assert (=> d!1586041 m!5946480))

(declare-fun m!5946482 () Bool)

(assert (=> b!4927789 m!5946482))

(assert (=> b!4927789 m!5946482))

(declare-fun m!5946484 () Bool)

(assert (=> b!4927789 m!5946484))

(assert (=> d!1585579 d!1586041))

(declare-fun d!1586043 () Bool)

(declare-fun lt!2028066 () Bool)

(assert (=> d!1586043 (= lt!2028066 (forall!13144 (toList!7945 z!3559) lambda!245303))))

(declare-fun choose!36105 ((InoxSet Context!6038) Int) Bool)

(assert (=> d!1586043 (= lt!2028066 (choose!36105 z!3559 lambda!245303))))

(assert (=> d!1586043 (= (forall!13142 z!3559 lambda!245303) lt!2028066)))

(declare-fun bs!1179913 () Bool)

(assert (= bs!1179913 d!1586043))

(assert (=> bs!1179913 m!5945034))

(assert (=> bs!1179913 m!5945034))

(declare-fun m!5946486 () Bool)

(assert (=> bs!1179913 m!5946486))

(declare-fun m!5946488 () Bool)

(assert (=> bs!1179913 m!5946488))

(assert (=> d!1585579 d!1586043))

(declare-fun b!4927791 () Bool)

(declare-fun res!2103096 () Bool)

(declare-fun e!3078865 () Bool)

(assert (=> b!4927791 (=> (not res!2103096) (not e!3078865))))

(assert (=> b!4927791 (= res!2103096 (isBalanced!4089 (left!41344 (left!41344 (c!839087 (_1!33900 lt!2027359))))))))

(declare-fun b!4927792 () Bool)

(declare-fun res!2103099 () Bool)

(assert (=> b!4927792 (=> (not res!2103099) (not e!3078865))))

(assert (=> b!4927792 (= res!2103099 (<= (- (height!1986 (left!41344 (left!41344 (c!839087 (_1!33900 lt!2027359))))) (height!1986 (right!41674 (left!41344 (c!839087 (_1!33900 lt!2027359)))))) 1))))

(declare-fun b!4927793 () Bool)

(declare-fun res!2103098 () Bool)

(assert (=> b!4927793 (=> (not res!2103098) (not e!3078865))))

(assert (=> b!4927793 (= res!2103098 (not (isEmpty!30583 (left!41344 (left!41344 (c!839087 (_1!33900 lt!2027359)))))))))

(declare-fun b!4927794 () Bool)

(declare-fun res!2103095 () Bool)

(assert (=> b!4927794 (=> (not res!2103095) (not e!3078865))))

(assert (=> b!4927794 (= res!2103095 (isBalanced!4089 (right!41674 (left!41344 (c!839087 (_1!33900 lt!2027359))))))))

(declare-fun b!4927795 () Bool)

(declare-fun e!3078864 () Bool)

(assert (=> b!4927795 (= e!3078864 e!3078865)))

(declare-fun res!2103094 () Bool)

(assert (=> b!4927795 (=> (not res!2103094) (not e!3078865))))

(assert (=> b!4927795 (= res!2103094 (<= (- 1) (- (height!1986 (left!41344 (left!41344 (c!839087 (_1!33900 lt!2027359))))) (height!1986 (right!41674 (left!41344 (c!839087 (_1!33900 lt!2027359))))))))))

(declare-fun d!1586045 () Bool)

(declare-fun res!2103097 () Bool)

(assert (=> d!1586045 (=> res!2103097 e!3078864)))

(assert (=> d!1586045 (= res!2103097 (not ((_ is Node!14876) (left!41344 (c!839087 (_1!33900 lt!2027359))))))))

(assert (=> d!1586045 (= (isBalanced!4089 (left!41344 (c!839087 (_1!33900 lt!2027359)))) e!3078864)))

(declare-fun b!4927796 () Bool)

(assert (=> b!4927796 (= e!3078865 (not (isEmpty!30583 (right!41674 (left!41344 (c!839087 (_1!33900 lt!2027359)))))))))

(assert (= (and d!1586045 (not res!2103097)) b!4927795))

(assert (= (and b!4927795 res!2103094) b!4927792))

(assert (= (and b!4927792 res!2103099) b!4927791))

(assert (= (and b!4927791 res!2103096) b!4927794))

(assert (= (and b!4927794 res!2103095) b!4927793))

(assert (= (and b!4927793 res!2103098) b!4927796))

(declare-fun m!5946490 () Bool)

(assert (=> b!4927793 m!5946490))

(declare-fun m!5946492 () Bool)

(assert (=> b!4927794 m!5946492))

(declare-fun m!5946494 () Bool)

(assert (=> b!4927792 m!5946494))

(declare-fun m!5946496 () Bool)

(assert (=> b!4927792 m!5946496))

(assert (=> b!4927795 m!5946494))

(assert (=> b!4927795 m!5946496))

(declare-fun m!5946498 () Bool)

(assert (=> b!4927796 m!5946498))

(declare-fun m!5946500 () Bool)

(assert (=> b!4927791 m!5946500))

(assert (=> b!4927033 d!1586045))

(declare-fun bs!1179914 () Bool)

(declare-fun d!1586047 () Bool)

(assert (= bs!1179914 (and d!1586047 d!1586003)))

(declare-fun lambda!245347 () Int)

(assert (=> bs!1179914 (not (= lambda!245347 lambda!245337))))

(declare-fun bs!1179915 () Bool)

(assert (= bs!1179915 (and d!1586047 d!1585879)))

(assert (=> bs!1179915 (not (= lambda!245347 lambda!245331))))

(declare-fun bs!1179916 () Bool)

(assert (= bs!1179916 (and d!1586047 d!1585835)))

(assert (=> bs!1179916 (= lambda!245347 lambda!245330)))

(declare-fun bs!1179917 () Bool)

(assert (= bs!1179917 (and d!1586047 b!4927721)))

(assert (=> bs!1179917 (not (= lambda!245347 lambda!245339))))

(declare-fun bs!1179918 () Bool)

(assert (= bs!1179918 (and d!1586047 b!4927573)))

(assert (=> bs!1179918 (not (= lambda!245347 lambda!245333))))

(declare-fun bs!1179919 () Bool)

(assert (= bs!1179919 (and d!1586047 b!4926928)))

(assert (=> bs!1179919 (not (= lambda!245347 lambda!245305))))

(declare-fun bs!1179920 () Bool)

(assert (= bs!1179920 (and d!1586047 d!1585903)))

(assert (=> bs!1179920 (not (= lambda!245347 lambda!245336))))

(declare-fun bs!1179921 () Bool)

(assert (= bs!1179921 (and d!1586047 b!4927720)))

(assert (=> bs!1179921 (not (= lambda!245347 lambda!245338))))

(declare-fun bs!1179922 () Bool)

(assert (= bs!1179922 (and d!1586047 b!4926927)))

(assert (=> bs!1179922 (not (= lambda!245347 lambda!245304))))

(declare-fun bs!1179923 () Bool)

(assert (= bs!1179923 (and d!1586047 d!1585579)))

(assert (=> bs!1179923 (not (= lambda!245347 lambda!245303))))

(declare-fun bs!1179924 () Bool)

(assert (= bs!1179924 (and d!1586047 b!4927572)))

(assert (=> bs!1179924 (not (= lambda!245347 lambda!245332))))

(declare-fun bs!1179925 () Bool)

(assert (= bs!1179925 (and d!1586047 d!1586041)))

(assert (=> bs!1179925 (not (= lambda!245347 lambda!245346))))

(assert (=> d!1586047 (= (nullableZipper!814 call!343627) (exists!1253 call!343627 lambda!245347))))

(declare-fun bs!1179926 () Bool)

(assert (= bs!1179926 d!1586047))

(declare-fun m!5946502 () Bool)

(assert (=> bs!1179926 m!5946502))

(assert (=> bm!343726 d!1586047))

(assert (=> d!1585507 d!1585525))

(assert (=> d!1585507 d!1585539))

(declare-fun d!1586049 () Bool)

(assert (=> d!1586049 (= (++!12330 (++!12330 Nil!56697 (Cons!56697 lt!2027340 Nil!56697)) lt!2027336) lt!2027328)))

(assert (=> d!1586049 true))

(declare-fun _$68!808 () Unit!147242)

(assert (=> d!1586049 (= (choose!36085 Nil!56697 lt!2027340 lt!2027336 lt!2027328) _$68!808)))

(declare-fun bs!1179927 () Bool)

(assert (= bs!1179927 d!1586049))

(assert (=> bs!1179927 m!5944548))

(assert (=> bs!1179927 m!5944548))

(assert (=> bs!1179927 m!5944562))

(assert (=> d!1585507 d!1586049))

(declare-fun b!4927797 () Bool)

(declare-fun e!3078866 () List!56821)

(assert (=> b!4927797 (= e!3078866 (Cons!56697 lt!2027340 lt!2027336))))

(declare-fun b!4927800 () Bool)

(declare-fun e!3078867 () Bool)

(declare-fun lt!2028067 () List!56821)

(assert (=> b!4927800 (= e!3078867 (or (not (= (Cons!56697 lt!2027340 lt!2027336) Nil!56697)) (= lt!2028067 Nil!56697)))))

(declare-fun b!4927799 () Bool)

(declare-fun res!2103100 () Bool)

(assert (=> b!4927799 (=> (not res!2103100) (not e!3078867))))

(assert (=> b!4927799 (= res!2103100 (= (size!37489 lt!2028067) (+ (size!37489 Nil!56697) (size!37489 (Cons!56697 lt!2027340 lt!2027336)))))))

(declare-fun d!1586051 () Bool)

(assert (=> d!1586051 e!3078867))

(declare-fun res!2103101 () Bool)

(assert (=> d!1586051 (=> (not res!2103101) (not e!3078867))))

(assert (=> d!1586051 (= res!2103101 (= (content!10073 lt!2028067) ((_ map or) (content!10073 Nil!56697) (content!10073 (Cons!56697 lt!2027340 lt!2027336)))))))

(assert (=> d!1586051 (= lt!2028067 e!3078866)))

(declare-fun c!839534 () Bool)

(assert (=> d!1586051 (= c!839534 ((_ is Nil!56697) Nil!56697))))

(assert (=> d!1586051 (= (++!12330 Nil!56697 (Cons!56697 lt!2027340 lt!2027336)) lt!2028067)))

(declare-fun b!4927798 () Bool)

(assert (=> b!4927798 (= e!3078866 (Cons!56697 (h!63145 Nil!56697) (++!12330 (t!367283 Nil!56697) (Cons!56697 lt!2027340 lt!2027336))))))

(assert (= (and d!1586051 c!839534) b!4927797))

(assert (= (and d!1586051 (not c!839534)) b!4927798))

(assert (= (and d!1586051 res!2103101) b!4927799))

(assert (= (and b!4927799 res!2103100) b!4927800))

(declare-fun m!5946504 () Bool)

(assert (=> b!4927799 m!5946504))

(assert (=> b!4927799 m!5944576))

(declare-fun m!5946506 () Bool)

(assert (=> b!4927799 m!5946506))

(declare-fun m!5946508 () Bool)

(assert (=> d!1586051 m!5946508))

(assert (=> d!1586051 m!5944740))

(declare-fun m!5946510 () Bool)

(assert (=> d!1586051 m!5946510))

(declare-fun m!5946512 () Bool)

(assert (=> b!4927798 m!5946512))

(assert (=> d!1585507 d!1586051))

(declare-fun d!1586053 () Bool)

(declare-fun lt!2028068 () Int)

(assert (=> d!1586053 (>= lt!2028068 0)))

(declare-fun e!3078868 () Int)

(assert (=> d!1586053 (= lt!2028068 e!3078868)))

(declare-fun c!839535 () Bool)

(assert (=> d!1586053 (= c!839535 ((_ is Nil!56697) (list!17961 (c!839087 input!5492))))))

(assert (=> d!1586053 (= (size!37489 (list!17961 (c!839087 input!5492))) lt!2028068)))

(declare-fun b!4927801 () Bool)

(assert (=> b!4927801 (= e!3078868 0)))

(declare-fun b!4927802 () Bool)

(assert (=> b!4927802 (= e!3078868 (+ 1 (size!37489 (t!367283 (list!17961 (c!839087 input!5492))))))))

(assert (= (and d!1586053 c!839535) b!4927801))

(assert (= (and d!1586053 (not c!839535)) b!4927802))

(declare-fun m!5946514 () Bool)

(assert (=> b!4927802 m!5946514))

(assert (=> d!1585803 d!1586053))

(assert (=> d!1585803 d!1585621))

(declare-fun d!1586055 () Bool)

(assert (=> d!1586055 (isPrefix!4965 (list!17959 input!5492) (list!17959 input!5492))))

(declare-fun lt!2028069 () Unit!147242)

(assert (=> d!1586055 (= lt!2028069 (choose!36095 (list!17959 input!5492) (list!17959 input!5492)))))

(assert (=> d!1586055 (= (lemmaIsPrefixRefl!3361 (list!17959 input!5492) (list!17959 input!5492)) lt!2028069)))

(declare-fun bs!1179928 () Bool)

(assert (= bs!1179928 d!1586055))

(assert (=> bs!1179928 m!5944346))

(assert (=> bs!1179928 m!5944346))

(assert (=> bs!1179928 m!5945614))

(assert (=> bs!1179928 m!5944346))

(assert (=> bs!1179928 m!5944346))

(declare-fun m!5946516 () Bool)

(assert (=> bs!1179928 m!5946516))

(assert (=> bm!343714 d!1586055))

(declare-fun d!1586057 () Bool)

(assert (=> d!1586057 (and (= lt!2027311 Nil!56697) (= lt!2027345 lt!2026995))))

(assert (=> d!1586057 true))

(declare-fun _$50!407 () Unit!147242)

(assert (=> d!1586057 (= (choose!36088 lt!2027311 lt!2027345 Nil!56697 lt!2026995) _$50!407)))

(assert (=> d!1585519 d!1586057))

(declare-fun b!4927803 () Bool)

(declare-fun e!3078869 () List!56821)

(assert (=> b!4927803 (= e!3078869 lt!2027345)))

(declare-fun b!4927806 () Bool)

(declare-fun e!3078870 () Bool)

(declare-fun lt!2028070 () List!56821)

(assert (=> b!4927806 (= e!3078870 (or (not (= lt!2027345 Nil!56697)) (= lt!2028070 lt!2027311)))))

(declare-fun b!4927805 () Bool)

(declare-fun res!2103102 () Bool)

(assert (=> b!4927805 (=> (not res!2103102) (not e!3078870))))

(assert (=> b!4927805 (= res!2103102 (= (size!37489 lt!2028070) (+ (size!37489 lt!2027311) (size!37489 lt!2027345))))))

(declare-fun d!1586059 () Bool)

(assert (=> d!1586059 e!3078870))

(declare-fun res!2103103 () Bool)

(assert (=> d!1586059 (=> (not res!2103103) (not e!3078870))))

(assert (=> d!1586059 (= res!2103103 (= (content!10073 lt!2028070) ((_ map or) (content!10073 lt!2027311) (content!10073 lt!2027345))))))

(assert (=> d!1586059 (= lt!2028070 e!3078869)))

(declare-fun c!839536 () Bool)

(assert (=> d!1586059 (= c!839536 ((_ is Nil!56697) lt!2027311))))

(assert (=> d!1586059 (= (++!12330 lt!2027311 lt!2027345) lt!2028070)))

(declare-fun b!4927804 () Bool)

(assert (=> b!4927804 (= e!3078869 (Cons!56697 (h!63145 lt!2027311) (++!12330 (t!367283 lt!2027311) lt!2027345)))))

(assert (= (and d!1586059 c!839536) b!4927803))

(assert (= (and d!1586059 (not c!839536)) b!4927804))

(assert (= (and d!1586059 res!2103103) b!4927805))

(assert (= (and b!4927805 res!2103102) b!4927806))

(declare-fun m!5946518 () Bool)

(assert (=> b!4927805 m!5946518))

(declare-fun m!5946520 () Bool)

(assert (=> b!4927805 m!5946520))

(declare-fun m!5946522 () Bool)

(assert (=> b!4927805 m!5946522))

(declare-fun m!5946524 () Bool)

(assert (=> d!1586059 m!5946524))

(declare-fun m!5946526 () Bool)

(assert (=> d!1586059 m!5946526))

(declare-fun m!5946528 () Bool)

(assert (=> d!1586059 m!5946528))

(declare-fun m!5946530 () Bool)

(assert (=> b!4927804 m!5946530))

(assert (=> d!1585519 d!1586059))

(assert (=> d!1585519 d!1585617))

(declare-fun d!1586061 () Bool)

(declare-fun c!839537 () Bool)

(assert (=> d!1586061 (= c!839537 ((_ is Nil!56697) lt!2027603))))

(declare-fun e!3078871 () (InoxSet C!26964))

(assert (=> d!1586061 (= (content!10073 lt!2027603) e!3078871)))

(declare-fun b!4927807 () Bool)

(assert (=> b!4927807 (= e!3078871 ((as const (Array C!26964 Bool)) false))))

(declare-fun b!4927808 () Bool)

(assert (=> b!4927808 (= e!3078871 ((_ map or) (store ((as const (Array C!26964 Bool)) false) (h!63145 lt!2027603) true) (content!10073 (t!367283 lt!2027603))))))

(assert (= (and d!1586061 c!839537) b!4927807))

(assert (= (and d!1586061 (not c!839537)) b!4927808))

(declare-fun m!5946532 () Bool)

(assert (=> b!4927808 m!5946532))

(declare-fun m!5946534 () Bool)

(assert (=> b!4927808 m!5946534))

(assert (=> d!1585639 d!1586061))

(assert (=> d!1585639 d!1585931))

(declare-fun d!1586063 () Bool)

(declare-fun c!839538 () Bool)

(assert (=> d!1586063 (= c!839538 ((_ is Nil!56697) (Cons!56697 lt!2027437 Nil!56697)))))

(declare-fun e!3078872 () (InoxSet C!26964))

(assert (=> d!1586063 (= (content!10073 (Cons!56697 lt!2027437 Nil!56697)) e!3078872)))

(declare-fun b!4927809 () Bool)

(assert (=> b!4927809 (= e!3078872 ((as const (Array C!26964 Bool)) false))))

(declare-fun b!4927810 () Bool)

(assert (=> b!4927810 (= e!3078872 ((_ map or) (store ((as const (Array C!26964 Bool)) false) (h!63145 (Cons!56697 lt!2027437 Nil!56697)) true) (content!10073 (t!367283 (Cons!56697 lt!2027437 Nil!56697)))))))

(assert (= (and d!1586063 c!839538) b!4927809))

(assert (= (and d!1586063 (not c!839538)) b!4927810))

(declare-fun m!5946536 () Bool)

(assert (=> b!4927810 m!5946536))

(declare-fun m!5946538 () Bool)

(assert (=> b!4927810 m!5946538))

(assert (=> d!1585639 d!1586063))

(declare-fun d!1586065 () Bool)

(assert (=> d!1586065 (= (head!10524 (++!12330 Nil!56697 (Cons!56697 (head!10524 (getSuffix!2953 lt!2026995 Nil!56697)) Nil!56697))) (h!63145 (++!12330 Nil!56697 (Cons!56697 (head!10524 (getSuffix!2953 lt!2026995 Nil!56697)) Nil!56697))))))

(assert (=> b!4927002 d!1586065))

(assert (=> b!4927002 d!1585635))

(declare-fun bs!1179929 () Bool)

(declare-fun d!1586067 () Bool)

(assert (= bs!1179929 (and d!1586067 d!1585443)))

(declare-fun lambda!245348 () Int)

(assert (=> bs!1179929 (= lambda!245348 lambda!245281)))

(declare-fun bs!1179930 () Bool)

(assert (= bs!1179930 (and d!1586067 d!1585805)))

(assert (=> bs!1179930 (= lambda!245348 lambda!245323)))

(assert (=> d!1586067 (= (inv!73493 setElem!27557) (forall!13140 (exprs!3519 setElem!27557) lambda!245348))))

(declare-fun bs!1179931 () Bool)

(assert (= bs!1179931 d!1586067))

(declare-fun m!5946540 () Bool)

(assert (=> bs!1179931 m!5946540))

(assert (=> setNonEmpty!27557 d!1586067))

(declare-fun b!4927811 () Bool)

(declare-fun res!2103106 () Bool)

(declare-fun e!3078874 () Bool)

(assert (=> b!4927811 (=> (not res!2103106) (not e!3078874))))

(assert (=> b!4927811 (= res!2103106 (isBalanced!4089 (left!41344 (c!839087 (_1!33900 lt!2027466)))))))

(declare-fun b!4927812 () Bool)

(declare-fun res!2103109 () Bool)

(assert (=> b!4927812 (=> (not res!2103109) (not e!3078874))))

(assert (=> b!4927812 (= res!2103109 (<= (- (height!1986 (left!41344 (c!839087 (_1!33900 lt!2027466)))) (height!1986 (right!41674 (c!839087 (_1!33900 lt!2027466))))) 1))))

(declare-fun b!4927813 () Bool)

(declare-fun res!2103108 () Bool)

(assert (=> b!4927813 (=> (not res!2103108) (not e!3078874))))

(assert (=> b!4927813 (= res!2103108 (not (isEmpty!30583 (left!41344 (c!839087 (_1!33900 lt!2027466))))))))

(declare-fun b!4927814 () Bool)

(declare-fun res!2103105 () Bool)

(assert (=> b!4927814 (=> (not res!2103105) (not e!3078874))))

(assert (=> b!4927814 (= res!2103105 (isBalanced!4089 (right!41674 (c!839087 (_1!33900 lt!2027466)))))))

(declare-fun b!4927815 () Bool)

(declare-fun e!3078873 () Bool)

(assert (=> b!4927815 (= e!3078873 e!3078874)))

(declare-fun res!2103104 () Bool)

(assert (=> b!4927815 (=> (not res!2103104) (not e!3078874))))

(assert (=> b!4927815 (= res!2103104 (<= (- 1) (- (height!1986 (left!41344 (c!839087 (_1!33900 lt!2027466)))) (height!1986 (right!41674 (c!839087 (_1!33900 lt!2027466)))))))))

(declare-fun d!1586069 () Bool)

(declare-fun res!2103107 () Bool)

(assert (=> d!1586069 (=> res!2103107 e!3078873)))

(assert (=> d!1586069 (= res!2103107 (not ((_ is Node!14876) (c!839087 (_1!33900 lt!2027466)))))))

(assert (=> d!1586069 (= (isBalanced!4089 (c!839087 (_1!33900 lt!2027466))) e!3078873)))

(declare-fun b!4927816 () Bool)

(assert (=> b!4927816 (= e!3078874 (not (isEmpty!30583 (right!41674 (c!839087 (_1!33900 lt!2027466))))))))

(assert (= (and d!1586069 (not res!2103107)) b!4927815))

(assert (= (and b!4927815 res!2103104) b!4927812))

(assert (= (and b!4927812 res!2103109) b!4927811))

(assert (= (and b!4927811 res!2103106) b!4927814))

(assert (= (and b!4927814 res!2103105) b!4927813))

(assert (= (and b!4927813 res!2103108) b!4927816))

(declare-fun m!5946542 () Bool)

(assert (=> b!4927813 m!5946542))

(declare-fun m!5946544 () Bool)

(assert (=> b!4927814 m!5946544))

(declare-fun m!5946546 () Bool)

(assert (=> b!4927812 m!5946546))

(declare-fun m!5946548 () Bool)

(assert (=> b!4927812 m!5946548))

(assert (=> b!4927815 m!5946546))

(assert (=> b!4927815 m!5946548))

(declare-fun m!5946550 () Bool)

(assert (=> b!4927816 m!5946550))

(declare-fun m!5946552 () Bool)

(assert (=> b!4927811 m!5946552))

(assert (=> d!1585521 d!1586069))

(declare-fun b!4927817 () Bool)

(declare-fun e!3078886 () Int)

(assert (=> b!4927817 (= e!3078886 0)))

(declare-fun b!4927818 () Bool)

(declare-fun lt!2028079 () tuple2!61198)

(declare-fun call!343804 () tuple2!61198)

(assert (=> b!4927818 (= lt!2028079 call!343804)))

(declare-fun e!3078880 () tuple2!61198)

(declare-fun call!343805 () Conc!14876)

(assert (=> b!4927818 (= e!3078880 (tuple2!61199 call!343805 (_2!33902 lt!2028079)))))

(declare-fun lt!2028073 () List!56821)

(declare-fun bm!343796 () Bool)

(declare-fun lt!2028077 () tuple2!61192)

(declare-fun c!839549 () Bool)

(declare-fun lt!2028083 () tuple2!61192)

(declare-fun lt!2028081 () List!56821)

(declare-fun call!343801 () List!56821)

(assert (=> bm!343796 (= call!343801 (++!12330 (ite c!839549 (_2!33899 lt!2028083) lt!2028073) (ite c!839549 lt!2028081 (_1!33899 lt!2028077))))))

(declare-fun c!839540 () Bool)

(declare-fun lt!2028078 () tuple2!61198)

(declare-fun bm!343797 () Bool)

(assert (=> bm!343797 (= call!343805 (++!12331 (ite c!839540 (_2!33902 lt!2028078) (left!41344 (c!839087 input!5492))) (ite c!839540 (right!41674 (c!839087 input!5492)) (_1!33902 lt!2028079))))))

(declare-fun b!4927819 () Bool)

(assert (=> b!4927819 (= e!3078886 (- 0 (size!37492 (left!41344 (c!839087 input!5492)))))))

(declare-fun b!4927820 () Bool)

(assert (=> b!4927820 (= lt!2028078 call!343804)))

(assert (=> b!4927820 (= e!3078880 (tuple2!61199 (_1!33902 lt!2028078) call!343805))))

(declare-fun b!4927821 () Bool)

(declare-fun c!839542 () Bool)

(assert (=> b!4927821 (= c!839542 (<= 0 0))))

(declare-fun e!3078883 () tuple2!61198)

(declare-fun e!3078881 () tuple2!61198)

(assert (=> b!4927821 (= e!3078883 e!3078881)))

(declare-fun b!4927822 () Bool)

(declare-fun e!3078878 () Int)

(declare-fun call!343802 () Int)

(assert (=> b!4927822 (= e!3078878 (- 0 call!343802))))

(declare-fun bm!343798 () Bool)

(declare-fun c!839544 () Bool)

(assert (=> bm!343798 (= c!839544 c!839549)))

(declare-fun call!343806 () tuple2!61192)

(declare-fun call!343803 () tuple2!61192)

(assert (=> bm!343798 (= call!343806 call!343803)))

(declare-fun b!4927823 () Bool)

(assert (=> b!4927823 (= lt!2028077 call!343806)))

(declare-fun e!3078875 () tuple2!61192)

(assert (=> b!4927823 (= e!3078875 (tuple2!61193 call!343801 (_2!33899 lt!2028077)))))

(declare-fun b!4927824 () Bool)

(declare-fun lt!2028076 () Unit!147242)

(declare-fun lt!2028074 () Unit!147242)

(assert (=> b!4927824 (= lt!2028076 lt!2028074)))

(declare-fun lt!2028080 () List!56821)

(assert (=> b!4927824 (= (drop!2227 lt!2028080 0) (slice!774 lt!2028080 0 call!343802))))

(assert (=> b!4927824 (= lt!2028074 (dropLemma!29 lt!2028080 0))))

(assert (=> b!4927824 (= lt!2028080 (list!17963 (xs!18198 (c!839087 input!5492))))))

(declare-fun lt!2028075 () tuple2!61192)

(assert (=> b!4927824 (= lt!2028075 call!343803)))

(declare-fun e!3078877 () tuple2!61198)

(assert (=> b!4927824 (= e!3078877 (tuple2!61199 (Leaf!24747 (slice!775 (xs!18198 (c!839087 input!5492)) 0 0) 0) (Leaf!24747 (slice!775 (xs!18198 (c!839087 input!5492)) 0 (csize!29983 (c!839087 input!5492))) (- (csize!29983 (c!839087 input!5492)) 0))))))

(declare-fun b!4927825 () Bool)

(declare-fun e!3078885 () tuple2!61198)

(assert (=> b!4927825 (= e!3078885 (tuple2!61199 (left!41344 (c!839087 input!5492)) (right!41674 (c!839087 input!5492))))))

(declare-fun b!4927826 () Bool)

(declare-fun e!3078879 () tuple2!61192)

(assert (=> b!4927826 (= e!3078879 e!3078875)))

(assert (=> b!4927826 (= c!839549 (< 0 call!343802))))

(declare-fun b!4927827 () Bool)

(declare-fun e!3078876 () tuple2!61198)

(assert (=> b!4927827 (= e!3078876 e!3078883)))

(declare-fun c!839546 () Bool)

(assert (=> b!4927827 (= c!839546 ((_ is Leaf!24747) (c!839087 input!5492)))))

(declare-fun b!4927828 () Bool)

(declare-fun e!3078882 () List!56821)

(assert (=> b!4927828 (= e!3078882 (list!17963 (xs!18198 (c!839087 input!5492))))))

(declare-fun b!4927829 () Bool)

(assert (=> b!4927829 (= lt!2028083 call!343806)))

(assert (=> b!4927829 (= e!3078875 (tuple2!61193 (_1!33899 lt!2028083) call!343801))))

(declare-fun bm!343799 () Bool)

(declare-fun c!839541 () Bool)

(assert (=> bm!343799 (= c!839541 c!839546)))

(assert (=> bm!343799 (= call!343803 (splitAtIndex!105 e!3078882 (ite c!839546 0 e!3078878)))))

(declare-fun b!4927830 () Bool)

(assert (=> b!4927830 (= e!3078881 e!3078877)))

(declare-fun c!839543 () Bool)

(assert (=> b!4927830 (= c!839543 (= 0 (csize!29983 (c!839087 input!5492))))))

(declare-fun b!4927831 () Bool)

(assert (=> b!4927831 (= e!3078876 (tuple2!61199 (c!839087 input!5492) (c!839087 input!5492)))))

(declare-fun d!1586071 () Bool)

(declare-fun e!3078884 () Bool)

(assert (=> d!1586071 e!3078884))

(declare-fun res!2103110 () Bool)

(assert (=> d!1586071 (=> (not res!2103110) (not e!3078884))))

(declare-fun lt!2028071 () tuple2!61198)

(assert (=> d!1586071 (= res!2103110 (isBalanced!4089 (_1!33902 lt!2028071)))))

(assert (=> d!1586071 (= lt!2028071 e!3078876)))

(declare-fun c!839539 () Bool)

(assert (=> d!1586071 (= c!839539 ((_ is Empty!14876) (c!839087 input!5492)))))

(assert (=> d!1586071 (isBalanced!4089 (c!839087 input!5492))))

(assert (=> d!1586071 (= (splitAt!279 (c!839087 input!5492) 0) lt!2028071)))

(declare-fun bm!343800 () Bool)

(assert (=> bm!343800 (= call!343802 (size!37489 (ite c!839546 lt!2028080 lt!2028073)))))

(declare-fun b!4927832 () Bool)

(declare-fun res!2103111 () Bool)

(assert (=> b!4927832 (=> (not res!2103111) (not e!3078884))))

(assert (=> b!4927832 (= res!2103111 (isBalanced!4089 (_2!33902 lt!2028071)))))

(declare-fun b!4927833 () Bool)

(assert (=> b!4927833 (= e!3078881 (tuple2!61199 Empty!14876 (c!839087 input!5492)))))

(declare-fun b!4927834 () Bool)

(declare-fun c!839547 () Bool)

(assert (=> b!4927834 (= c!839547 (= (size!37492 (left!41344 (c!839087 input!5492))) 0))))

(declare-fun lt!2028072 () Unit!147242)

(declare-fun lt!2028082 () Unit!147242)

(assert (=> b!4927834 (= lt!2028072 lt!2028082)))

(assert (=> b!4927834 (= (splitAtIndex!105 (++!12330 lt!2028073 lt!2028081) 0) e!3078879)))

(declare-fun c!839548 () Bool)

(assert (=> b!4927834 (= c!839548 (= call!343802 0))))

(assert (=> b!4927834 (= lt!2028082 (splitAtLemma!29 lt!2028073 lt!2028081 0))))

(assert (=> b!4927834 (= lt!2028081 (list!17961 (right!41674 (c!839087 input!5492))))))

(assert (=> b!4927834 (= lt!2028073 (list!17961 (left!41344 (c!839087 input!5492))))))

(assert (=> b!4927834 (= e!3078883 e!3078885)))

(declare-fun b!4927835 () Bool)

(assert (=> b!4927835 (= e!3078878 0)))

(declare-fun b!4927836 () Bool)

(assert (=> b!4927836 (= e!3078882 (ite c!839549 lt!2028073 lt!2028081))))

(declare-fun bm!343801 () Bool)

(declare-fun c!839545 () Bool)

(assert (=> bm!343801 (= c!839545 c!839540)))

(assert (=> bm!343801 (= call!343804 (splitAt!279 (ite c!839540 (left!41344 (c!839087 input!5492)) (right!41674 (c!839087 input!5492))) e!3078886))))

(declare-fun b!4927837 () Bool)

(assert (=> b!4927837 (= e!3078884 (= (tuple2!61193 (list!17961 (_1!33902 lt!2028071)) (list!17961 (_2!33902 lt!2028071))) (splitAtIndex!105 (list!17961 (c!839087 input!5492)) 0)))))

(declare-fun b!4927838 () Bool)

(assert (=> b!4927838 (= e!3078885 e!3078880)))

(assert (=> b!4927838 (= c!839540 (< 0 (size!37492 (left!41344 (c!839087 input!5492)))))))

(declare-fun b!4927839 () Bool)

(assert (=> b!4927839 (= e!3078877 (tuple2!61199 (c!839087 input!5492) Empty!14876))))

(declare-fun b!4927840 () Bool)

(assert (=> b!4927840 (= e!3078879 (tuple2!61193 lt!2028073 lt!2028081))))

(assert (= (and d!1586071 c!839539) b!4927831))

(assert (= (and d!1586071 (not c!839539)) b!4927827))

(assert (= (and b!4927827 c!839546) b!4927821))

(assert (= (and b!4927827 (not c!839546)) b!4927834))

(assert (= (and b!4927821 c!839542) b!4927833))

(assert (= (and b!4927821 (not c!839542)) b!4927830))

(assert (= (and b!4927830 c!839543) b!4927839))

(assert (= (and b!4927830 (not c!839543)) b!4927824))

(assert (= (and b!4927834 c!839548) b!4927840))

(assert (= (and b!4927834 (not c!839548)) b!4927826))

(assert (= (and b!4927826 c!839549) b!4927829))

(assert (= (and b!4927826 (not c!839549)) b!4927823))

(assert (= (or b!4927829 b!4927823) bm!343796))

(assert (= (or b!4927829 b!4927823) bm!343798))

(assert (= (and bm!343798 c!839544) b!4927835))

(assert (= (and bm!343798 (not c!839544)) b!4927822))

(assert (= (and b!4927834 c!839547) b!4927825))

(assert (= (and b!4927834 (not c!839547)) b!4927838))

(assert (= (and b!4927838 c!839540) b!4927820))

(assert (= (and b!4927838 (not c!839540)) b!4927818))

(assert (= (or b!4927820 b!4927818) bm!343797))

(assert (= (or b!4927820 b!4927818) bm!343801))

(assert (= (and bm!343801 c!839545) b!4927817))

(assert (= (and bm!343801 (not c!839545)) b!4927819))

(assert (= (or b!4927824 b!4927822 b!4927834 b!4927826) bm!343800))

(assert (= (or b!4927824 bm!343798) bm!343799))

(assert (= (and bm!343799 c!839541) b!4927828))

(assert (= (and bm!343799 (not c!839541)) b!4927836))

(assert (= (and d!1586071 res!2103110) b!4927832))

(assert (= (and b!4927832 res!2103111) b!4927837))

(declare-fun m!5946554 () Bool)

(assert (=> b!4927832 m!5946554))

(assert (=> b!4927819 m!5945488))

(declare-fun m!5946556 () Bool)

(assert (=> bm!343801 m!5946556))

(declare-fun m!5946558 () Bool)

(assert (=> bm!343800 m!5946558))

(declare-fun m!5946560 () Bool)

(assert (=> b!4927824 m!5946560))

(declare-fun m!5946562 () Bool)

(assert (=> b!4927824 m!5946562))

(declare-fun m!5946564 () Bool)

(assert (=> b!4927824 m!5946564))

(assert (=> b!4927824 m!5945112))

(declare-fun m!5946566 () Bool)

(assert (=> b!4927824 m!5946566))

(declare-fun m!5946568 () Bool)

(assert (=> b!4927824 m!5946568))

(declare-fun m!5946570 () Bool)

(assert (=> d!1586071 m!5946570))

(assert (=> d!1586071 m!5944640))

(assert (=> b!4927838 m!5945488))

(declare-fun m!5946572 () Bool)

(assert (=> bm!343797 m!5946572))

(declare-fun m!5946574 () Bool)

(assert (=> bm!343796 m!5946574))

(declare-fun m!5946576 () Bool)

(assert (=> bm!343799 m!5946576))

(declare-fun m!5946578 () Bool)

(assert (=> b!4927834 m!5946578))

(assert (=> b!4927834 m!5945108))

(assert (=> b!4927834 m!5946578))

(declare-fun m!5946580 () Bool)

(assert (=> b!4927834 m!5946580))

(declare-fun m!5946582 () Bool)

(assert (=> b!4927834 m!5946582))

(assert (=> b!4927834 m!5945106))

(assert (=> b!4927834 m!5945488))

(assert (=> b!4927828 m!5945112))

(declare-fun m!5946584 () Bool)

(assert (=> b!4927837 m!5946584))

(declare-fun m!5946586 () Bool)

(assert (=> b!4927837 m!5946586))

(assert (=> b!4927837 m!5944706))

(assert (=> b!4927837 m!5944706))

(declare-fun m!5946588 () Bool)

(assert (=> b!4927837 m!5946588))

(assert (=> d!1585521 d!1586071))

(assert (=> d!1585521 d!1585757))

(declare-fun d!1586073 () Bool)

(declare-fun lt!2028084 () Int)

(assert (=> d!1586073 (>= lt!2028084 0)))

(declare-fun e!3078887 () Int)

(assert (=> d!1586073 (= lt!2028084 e!3078887)))

(declare-fun c!839550 () Bool)

(assert (=> d!1586073 (= c!839550 ((_ is Nil!56697) (t!367283 lt!2027350)))))

(assert (=> d!1586073 (= (size!37489 (t!367283 lt!2027350)) lt!2028084)))

(declare-fun b!4927841 () Bool)

(assert (=> b!4927841 (= e!3078887 0)))

(declare-fun b!4927842 () Bool)

(assert (=> b!4927842 (= e!3078887 (+ 1 (size!37489 (t!367283 (t!367283 lt!2027350)))))))

(assert (= (and d!1586073 c!839550) b!4927841))

(assert (= (and d!1586073 (not c!839550)) b!4927842))

(declare-fun m!5946590 () Bool)

(assert (=> b!4927842 m!5946590))

(assert (=> b!4927292 d!1586073))

(declare-fun b!4927843 () Bool)

(declare-fun res!2103114 () Bool)

(declare-fun e!3078889 () Bool)

(assert (=> b!4927843 (=> (not res!2103114) (not e!3078889))))

(assert (=> b!4927843 (= res!2103114 (isBalanced!4089 (left!41344 (right!41674 (c!839087 input!5492)))))))

(declare-fun b!4927844 () Bool)

(declare-fun res!2103117 () Bool)

(assert (=> b!4927844 (=> (not res!2103117) (not e!3078889))))

(assert (=> b!4927844 (= res!2103117 (<= (- (height!1986 (left!41344 (right!41674 (c!839087 input!5492)))) (height!1986 (right!41674 (right!41674 (c!839087 input!5492))))) 1))))

(declare-fun b!4927845 () Bool)

(declare-fun res!2103116 () Bool)

(assert (=> b!4927845 (=> (not res!2103116) (not e!3078889))))

(assert (=> b!4927845 (= res!2103116 (not (isEmpty!30583 (left!41344 (right!41674 (c!839087 input!5492))))))))

(declare-fun b!4927846 () Bool)

(declare-fun res!2103113 () Bool)

(assert (=> b!4927846 (=> (not res!2103113) (not e!3078889))))

(assert (=> b!4927846 (= res!2103113 (isBalanced!4089 (right!41674 (right!41674 (c!839087 input!5492)))))))

(declare-fun b!4927847 () Bool)

(declare-fun e!3078888 () Bool)

(assert (=> b!4927847 (= e!3078888 e!3078889)))

(declare-fun res!2103112 () Bool)

(assert (=> b!4927847 (=> (not res!2103112) (not e!3078889))))

(assert (=> b!4927847 (= res!2103112 (<= (- 1) (- (height!1986 (left!41344 (right!41674 (c!839087 input!5492)))) (height!1986 (right!41674 (right!41674 (c!839087 input!5492)))))))))

(declare-fun d!1586075 () Bool)

(declare-fun res!2103115 () Bool)

(assert (=> d!1586075 (=> res!2103115 e!3078888)))

(assert (=> d!1586075 (= res!2103115 (not ((_ is Node!14876) (right!41674 (c!839087 input!5492)))))))

(assert (=> d!1586075 (= (isBalanced!4089 (right!41674 (c!839087 input!5492))) e!3078888)))

(declare-fun b!4927848 () Bool)

(assert (=> b!4927848 (= e!3078889 (not (isEmpty!30583 (right!41674 (right!41674 (c!839087 input!5492))))))))

(assert (= (and d!1586075 (not res!2103115)) b!4927847))

(assert (= (and b!4927847 res!2103112) b!4927844))

(assert (= (and b!4927844 res!2103117) b!4927843))

(assert (= (and b!4927843 res!2103114) b!4927846))

(assert (= (and b!4927846 res!2103113) b!4927845))

(assert (= (and b!4927845 res!2103116) b!4927848))

(declare-fun m!5946592 () Bool)

(assert (=> b!4927845 m!5946592))

(declare-fun m!5946594 () Bool)

(assert (=> b!4927846 m!5946594))

(assert (=> b!4927844 m!5946270))

(assert (=> b!4927844 m!5946272))

(assert (=> b!4927847 m!5946270))

(assert (=> b!4927847 m!5946272))

(declare-fun m!5946596 () Bool)

(assert (=> b!4927848 m!5946596))

(declare-fun m!5946598 () Bool)

(assert (=> b!4927843 m!5946598))

(assert (=> b!4927260 d!1586075))

(declare-fun b!4927852 () Bool)

(declare-fun e!3078891 () List!56821)

(assert (=> b!4927852 (= e!3078891 (++!12330 (list!17961 (left!41344 (c!839087 (_2!33900 lt!2027359)))) (list!17961 (right!41674 (c!839087 (_2!33900 lt!2027359))))))))

(declare-fun b!4927851 () Bool)

(assert (=> b!4927851 (= e!3078891 (list!17963 (xs!18198 (c!839087 (_2!33900 lt!2027359)))))))

(declare-fun d!1586077 () Bool)

(declare-fun c!839551 () Bool)

(assert (=> d!1586077 (= c!839551 ((_ is Empty!14876) (c!839087 (_2!33900 lt!2027359))))))

(declare-fun e!3078890 () List!56821)

(assert (=> d!1586077 (= (list!17961 (c!839087 (_2!33900 lt!2027359))) e!3078890)))

(declare-fun b!4927849 () Bool)

(assert (=> b!4927849 (= e!3078890 Nil!56697)))

(declare-fun b!4927850 () Bool)

(assert (=> b!4927850 (= e!3078890 e!3078891)))

(declare-fun c!839552 () Bool)

(assert (=> b!4927850 (= c!839552 ((_ is Leaf!24747) (c!839087 (_2!33900 lt!2027359))))))

(assert (= (and d!1586077 c!839551) b!4927849))

(assert (= (and d!1586077 (not c!839551)) b!4927850))

(assert (= (and b!4927850 c!839552) b!4927851))

(assert (= (and b!4927850 (not c!839552)) b!4927852))

(assert (=> b!4927852 m!5946276))

(declare-fun m!5946600 () Bool)

(assert (=> b!4927852 m!5946600))

(assert (=> b!4927852 m!5946276))

(assert (=> b!4927852 m!5946600))

(declare-fun m!5946602 () Bool)

(assert (=> b!4927852 m!5946602))

(declare-fun m!5946604 () Bool)

(assert (=> b!4927851 m!5946604))

(assert (=> d!1585559 d!1586077))

(declare-fun d!1586079 () Bool)

(declare-fun lt!2028085 () Int)

(assert (=> d!1586079 (>= lt!2028085 0)))

(declare-fun e!3078892 () Int)

(assert (=> d!1586079 (= lt!2028085 e!3078892)))

(declare-fun c!839553 () Bool)

(assert (=> d!1586079 (= c!839553 ((_ is Nil!56697) (t!367283 (t!367283 (_1!33899 lt!2026999)))))))

(assert (=> d!1586079 (= (size!37489 (t!367283 (t!367283 (_1!33899 lt!2026999)))) lt!2028085)))

(declare-fun b!4927853 () Bool)

(assert (=> b!4927853 (= e!3078892 0)))

(declare-fun b!4927854 () Bool)

(assert (=> b!4927854 (= e!3078892 (+ 1 (size!37489 (t!367283 (t!367283 (t!367283 (_1!33899 lt!2026999)))))))))

(assert (= (and d!1586079 c!839553) b!4927853))

(assert (= (and d!1586079 (not c!839553)) b!4927854))

(declare-fun m!5946606 () Bool)

(assert (=> b!4927854 m!5946606))

(assert (=> b!4926847 d!1586079))

(declare-fun d!1586081 () Bool)

(declare-fun c!839554 () Bool)

(assert (=> d!1586081 (= c!839554 ((_ is Nil!56697) (t!367283 (_2!33899 lt!2026999))))))

(declare-fun e!3078893 () (InoxSet C!26964))

(assert (=> d!1586081 (= (content!10073 (t!367283 (_2!33899 lt!2026999))) e!3078893)))

(declare-fun b!4927855 () Bool)

(assert (=> b!4927855 (= e!3078893 ((as const (Array C!26964 Bool)) false))))

(declare-fun b!4927856 () Bool)

(assert (=> b!4927856 (= e!3078893 ((_ map or) (store ((as const (Array C!26964 Bool)) false) (h!63145 (t!367283 (_2!33899 lt!2026999))) true) (content!10073 (t!367283 (t!367283 (_2!33899 lt!2026999))))))))

(assert (= (and d!1586081 c!839554) b!4927855))

(assert (= (and d!1586081 (not c!839554)) b!4927856))

(declare-fun m!5946608 () Bool)

(assert (=> b!4927856 m!5946608))

(declare-fun m!5946610 () Bool)

(assert (=> b!4927856 m!5946610))

(assert (=> b!4927346 d!1586081))

(declare-fun d!1586083 () Bool)

(assert (=> d!1586083 (= (height!1986 (left!41344 (c!839087 (_2!33900 lt!2027359)))) (ite ((_ is Empty!14876) (left!41344 (c!839087 (_2!33900 lt!2027359)))) 0 (ite ((_ is Leaf!24747) (left!41344 (c!839087 (_2!33900 lt!2027359)))) 1 (cheight!15087 (left!41344 (c!839087 (_2!33900 lt!2027359)))))))))

(assert (=> b!4927336 d!1586083))

(declare-fun d!1586085 () Bool)

(assert (=> d!1586085 (= (height!1986 (right!41674 (c!839087 (_2!33900 lt!2027359)))) (ite ((_ is Empty!14876) (right!41674 (c!839087 (_2!33900 lt!2027359)))) 0 (ite ((_ is Leaf!24747) (right!41674 (c!839087 (_2!33900 lt!2027359)))) 1 (cheight!15087 (right!41674 (c!839087 (_2!33900 lt!2027359)))))))))

(assert (=> b!4927336 d!1586085))

(declare-fun d!1586087 () Bool)

(assert (=> d!1586087 (= (head!10524 (drop!2227 lt!2027843 (+ 0 1))) (h!63145 (drop!2227 lt!2027843 (+ 0 1))))))

(assert (=> b!4927381 d!1586087))

(declare-fun d!1586089 () Bool)

(assert (=> d!1586089 (= (++!12330 (++!12330 call!343633 (Cons!56697 lt!2027852 Nil!56697)) lt!2027848) lt!2027840)))

(declare-fun lt!2028086 () Unit!147242)

(assert (=> d!1586089 (= lt!2028086 (choose!36085 call!343633 lt!2027852 lt!2027848 lt!2027840))))

(assert (=> d!1586089 (= (++!12330 call!343633 (Cons!56697 lt!2027852 lt!2027848)) lt!2027840)))

(assert (=> d!1586089 (= (lemmaMoveElementToOtherListKeepsConcatEq!1395 call!343633 lt!2027852 lt!2027848 lt!2027840) lt!2028086)))

(declare-fun bs!1179932 () Bool)

(assert (= bs!1179932 d!1586089))

(assert (=> bs!1179932 m!5945802))

(assert (=> bs!1179932 m!5945802))

(assert (=> bs!1179932 m!5945816))

(declare-fun m!5946612 () Bool)

(assert (=> bs!1179932 m!5946612))

(declare-fun m!5946614 () Bool)

(assert (=> bs!1179932 m!5946614))

(assert (=> b!4927381 d!1586089))

(declare-fun d!1586091 () Bool)

(declare-fun lt!2028087 () Int)

(assert (=> d!1586091 (>= lt!2028087 0)))

(declare-fun e!3078894 () Int)

(assert (=> d!1586091 (= lt!2028087 e!3078894)))

(declare-fun c!839555 () Bool)

(assert (=> d!1586091 (= c!839555 ((_ is Nil!56697) call!343633))))

(assert (=> d!1586091 (= (size!37489 call!343633) lt!2028087)))

(declare-fun b!4927857 () Bool)

(assert (=> b!4927857 (= e!3078894 0)))

(declare-fun b!4927858 () Bool)

(assert (=> b!4927858 (= e!3078894 (+ 1 (size!37489 (t!367283 call!343633))))))

(assert (= (and d!1586091 c!839555) b!4927857))

(assert (= (and d!1586091 (not c!839555)) b!4927858))

(declare-fun m!5946616 () Bool)

(assert (=> b!4927858 m!5946616))

(assert (=> b!4927381 d!1586091))

(declare-fun b!4927859 () Bool)

(declare-fun e!3078895 () List!56821)

(assert (=> b!4927859 (= e!3078895 lt!2027848)))

(declare-fun e!3078896 () Bool)

(declare-fun lt!2028088 () List!56821)

(declare-fun b!4927862 () Bool)

(assert (=> b!4927862 (= e!3078896 (or (not (= lt!2027848 Nil!56697)) (= lt!2028088 (++!12330 call!343633 (Cons!56697 lt!2027852 Nil!56697)))))))

(declare-fun b!4927861 () Bool)

(declare-fun res!2103118 () Bool)

(assert (=> b!4927861 (=> (not res!2103118) (not e!3078896))))

(assert (=> b!4927861 (= res!2103118 (= (size!37489 lt!2028088) (+ (size!37489 (++!12330 call!343633 (Cons!56697 lt!2027852 Nil!56697))) (size!37489 lt!2027848))))))

(declare-fun d!1586093 () Bool)

(assert (=> d!1586093 e!3078896))

(declare-fun res!2103119 () Bool)

(assert (=> d!1586093 (=> (not res!2103119) (not e!3078896))))

(assert (=> d!1586093 (= res!2103119 (= (content!10073 lt!2028088) ((_ map or) (content!10073 (++!12330 call!343633 (Cons!56697 lt!2027852 Nil!56697))) (content!10073 lt!2027848))))))

(assert (=> d!1586093 (= lt!2028088 e!3078895)))

(declare-fun c!839556 () Bool)

(assert (=> d!1586093 (= c!839556 ((_ is Nil!56697) (++!12330 call!343633 (Cons!56697 lt!2027852 Nil!56697))))))

(assert (=> d!1586093 (= (++!12330 (++!12330 call!343633 (Cons!56697 lt!2027852 Nil!56697)) lt!2027848) lt!2028088)))

(declare-fun b!4927860 () Bool)

(assert (=> b!4927860 (= e!3078895 (Cons!56697 (h!63145 (++!12330 call!343633 (Cons!56697 lt!2027852 Nil!56697))) (++!12330 (t!367283 (++!12330 call!343633 (Cons!56697 lt!2027852 Nil!56697))) lt!2027848)))))

(assert (= (and d!1586093 c!839556) b!4927859))

(assert (= (and d!1586093 (not c!839556)) b!4927860))

(assert (= (and d!1586093 res!2103119) b!4927861))

(assert (= (and b!4927861 res!2103118) b!4927862))

(declare-fun m!5946618 () Bool)

(assert (=> b!4927861 m!5946618))

(assert (=> b!4927861 m!5945802))

(declare-fun m!5946620 () Bool)

(assert (=> b!4927861 m!5946620))

(declare-fun m!5946622 () Bool)

(assert (=> b!4927861 m!5946622))

(declare-fun m!5946624 () Bool)

(assert (=> d!1586093 m!5946624))

(assert (=> d!1586093 m!5945802))

(declare-fun m!5946626 () Bool)

(assert (=> d!1586093 m!5946626))

(declare-fun m!5946628 () Bool)

(assert (=> d!1586093 m!5946628))

(declare-fun m!5946630 () Bool)

(assert (=> b!4927860 m!5946630))

(assert (=> b!4927381 d!1586093))

(declare-fun d!1586095 () Bool)

(assert (=> d!1586095 (= (head!10524 (drop!2227 lt!2027843 (+ 0 1))) (apply!13668 lt!2027843 (+ 0 1)))))

(declare-fun lt!2028089 () Unit!147242)

(assert (=> d!1586095 (= lt!2028089 (choose!36086 lt!2027843 (+ 0 1)))))

(declare-fun e!3078897 () Bool)

(assert (=> d!1586095 e!3078897))

(declare-fun res!2103120 () Bool)

(assert (=> d!1586095 (=> (not res!2103120) (not e!3078897))))

(assert (=> d!1586095 (= res!2103120 (>= (+ 0 1) 0))))

(assert (=> d!1586095 (= (lemmaDropApply!1285 lt!2027843 (+ 0 1)) lt!2028089)))

(declare-fun b!4927863 () Bool)

(assert (=> b!4927863 (= e!3078897 (< (+ 0 1) (size!37489 lt!2027843)))))

(assert (= (and d!1586095 res!2103120) b!4927863))

(assert (=> d!1586095 m!5945798))

(assert (=> d!1586095 m!5945798))

(assert (=> d!1586095 m!5945800))

(assert (=> d!1586095 m!5945818))

(declare-fun m!5946632 () Bool)

(assert (=> d!1586095 m!5946632))

(declare-fun m!5946634 () Bool)

(assert (=> b!4927863 m!5946634))

(assert (=> b!4927381 d!1586095))

(declare-fun d!1586097 () Bool)

(declare-fun e!3078898 () Bool)

(assert (=> d!1586097 e!3078898))

(declare-fun res!2103121 () Bool)

(assert (=> d!1586097 (=> (not res!2103121) (not e!3078898))))

(declare-fun lt!2028091 () tuple2!61194)

(assert (=> d!1586097 (= res!2103121 (isBalanced!4089 (c!839087 (_1!33900 lt!2028091))))))

(declare-fun lt!2028090 () tuple2!61198)

(assert (=> d!1586097 (= lt!2028091 (tuple2!61195 (BalanceConc!29183 (_1!33902 lt!2028090)) (BalanceConc!29183 (_2!33902 lt!2028090))))))

(assert (=> d!1586097 (= lt!2028090 (splitAt!279 (c!839087 input!5492) (+ 0 1)))))

(assert (=> d!1586097 (isBalanced!4089 (c!839087 input!5492))))

(assert (=> d!1586097 (= (splitAt!277 input!5492 (+ 0 1)) lt!2028091)))

(declare-fun b!4927864 () Bool)

(declare-fun res!2103122 () Bool)

(assert (=> b!4927864 (=> (not res!2103122) (not e!3078898))))

(assert (=> b!4927864 (= res!2103122 (isBalanced!4089 (c!839087 (_2!33900 lt!2028091))))))

(declare-fun b!4927865 () Bool)

(assert (=> b!4927865 (= e!3078898 (= (tuple2!61193 (list!17959 (_1!33900 lt!2028091)) (list!17959 (_2!33900 lt!2028091))) (splitAtIndex!105 (list!17959 input!5492) (+ 0 1))))))

(assert (= (and d!1586097 res!2103121) b!4927864))

(assert (= (and b!4927864 res!2103122) b!4927865))

(declare-fun m!5946636 () Bool)

(assert (=> d!1586097 m!5946636))

(declare-fun m!5946638 () Bool)

(assert (=> d!1586097 m!5946638))

(assert (=> d!1586097 m!5944640))

(declare-fun m!5946640 () Bool)

(assert (=> b!4927864 m!5946640))

(declare-fun m!5946642 () Bool)

(assert (=> b!4927865 m!5946642))

(declare-fun m!5946644 () Bool)

(assert (=> b!4927865 m!5946644))

(assert (=> b!4927865 m!5944346))

(assert (=> b!4927865 m!5944346))

(declare-fun m!5946646 () Bool)

(assert (=> b!4927865 m!5946646))

(assert (=> b!4927381 d!1586097))

(assert (=> b!4927381 d!1585481))

(declare-fun b!4927866 () Bool)

(declare-fun e!3078903 () List!56821)

(declare-fun e!3078901 () List!56821)

(assert (=> b!4927866 (= e!3078903 e!3078901)))

(declare-fun c!839559 () Bool)

(assert (=> b!4927866 (= c!839559 (<= (+ 0 1) 0))))

(declare-fun b!4927867 () Bool)

(declare-fun e!3078899 () Int)

(assert (=> b!4927867 (= e!3078899 0)))

(declare-fun b!4927868 () Bool)

(assert (=> b!4927868 (= e!3078903 Nil!56697)))

(declare-fun b!4927869 () Bool)

(declare-fun e!3078902 () Bool)

(declare-fun lt!2028092 () List!56821)

(declare-fun e!3078900 () Int)

(assert (=> b!4927869 (= e!3078902 (= (size!37489 lt!2028092) e!3078900))))

(declare-fun c!839560 () Bool)

(assert (=> b!4927869 (= c!839560 (<= (+ 0 1) 0))))

(declare-fun b!4927870 () Bool)

(assert (=> b!4927870 (= e!3078900 e!3078899)))

(declare-fun c!839558 () Bool)

(declare-fun call!343807 () Int)

(assert (=> b!4927870 (= c!839558 (>= (+ 0 1) call!343807))))

(declare-fun b!4927871 () Bool)

(assert (=> b!4927871 (= e!3078901 lt!2027843)))

(declare-fun b!4927872 () Bool)

(assert (=> b!4927872 (= e!3078900 call!343807)))

(declare-fun d!1586099 () Bool)

(assert (=> d!1586099 e!3078902))

(declare-fun res!2103123 () Bool)

(assert (=> d!1586099 (=> (not res!2103123) (not e!3078902))))

(assert (=> d!1586099 (= res!2103123 (= ((_ map implies) (content!10073 lt!2028092) (content!10073 lt!2027843)) ((as const (InoxSet C!26964)) true)))))

(assert (=> d!1586099 (= lt!2028092 e!3078903)))

(declare-fun c!839557 () Bool)

(assert (=> d!1586099 (= c!839557 ((_ is Nil!56697) lt!2027843))))

(assert (=> d!1586099 (= (drop!2227 lt!2027843 (+ 0 1)) lt!2028092)))

(declare-fun bm!343802 () Bool)

(assert (=> bm!343802 (= call!343807 (size!37489 lt!2027843))))

(declare-fun b!4927873 () Bool)

(assert (=> b!4927873 (= e!3078901 (drop!2227 (t!367283 lt!2027843) (- (+ 0 1) 1)))))

(declare-fun b!4927874 () Bool)

(assert (=> b!4927874 (= e!3078899 (- call!343807 (+ 0 1)))))

(assert (= (and d!1586099 c!839557) b!4927868))

(assert (= (and d!1586099 (not c!839557)) b!4927866))

(assert (= (and b!4927866 c!839559) b!4927871))

(assert (= (and b!4927866 (not c!839559)) b!4927873))

(assert (= (and d!1586099 res!2103123) b!4927869))

(assert (= (and b!4927869 c!839560) b!4927872))

(assert (= (and b!4927869 (not c!839560)) b!4927870))

(assert (= (and b!4927870 c!839558) b!4927867))

(assert (= (and b!4927870 (not c!839558)) b!4927874))

(assert (= (or b!4927872 b!4927870 b!4927874) bm!343802))

(declare-fun m!5946648 () Bool)

(assert (=> b!4927869 m!5946648))

(declare-fun m!5946650 () Bool)

(assert (=> d!1586099 m!5946650))

(declare-fun m!5946652 () Bool)

(assert (=> d!1586099 m!5946652))

(assert (=> bm!343802 m!5946634))

(declare-fun m!5946654 () Bool)

(assert (=> b!4927873 m!5946654))

(assert (=> b!4927381 d!1586099))

(declare-fun d!1586101 () Bool)

(assert (=> d!1586101 (<= (size!37489 call!343633) (size!37489 lt!2027854))))

(declare-fun lt!2028093 () Unit!147242)

(assert (=> d!1586101 (= lt!2028093 (choose!36089 call!343633 lt!2027854))))

(assert (=> d!1586101 (isPrefix!4965 call!343633 lt!2027854)))

(assert (=> d!1586101 (= (lemmaIsPrefixThenSmallerEqSize!689 call!343633 lt!2027854) lt!2028093)))

(declare-fun bs!1179933 () Bool)

(assert (= bs!1179933 d!1586101))

(assert (=> bs!1179933 m!5945830))

(assert (=> bs!1179933 m!5945824))

(declare-fun m!5946656 () Bool)

(assert (=> bs!1179933 m!5946656))

(declare-fun m!5946658 () Bool)

(assert (=> bs!1179933 m!5946658))

(assert (=> b!4927381 d!1586101))

(declare-fun b!4927878 () Bool)

(declare-fun e!3078906 () Bool)

(assert (=> b!4927878 (= e!3078906 (>= (size!37489 lt!2027847) (size!37489 (++!12330 call!343633 (Cons!56697 (head!10524 (getSuffix!2953 lt!2027847 call!343633)) Nil!56697)))))))

(declare-fun d!1586103 () Bool)

(assert (=> d!1586103 e!3078906))

(declare-fun res!2103124 () Bool)

(assert (=> d!1586103 (=> res!2103124 e!3078906)))

(declare-fun lt!2028094 () Bool)

(assert (=> d!1586103 (= res!2103124 (not lt!2028094))))

(declare-fun e!3078905 () Bool)

(assert (=> d!1586103 (= lt!2028094 e!3078905)))

(declare-fun res!2103126 () Bool)

(assert (=> d!1586103 (=> res!2103126 e!3078905)))

(assert (=> d!1586103 (= res!2103126 ((_ is Nil!56697) (++!12330 call!343633 (Cons!56697 (head!10524 (getSuffix!2953 lt!2027847 call!343633)) Nil!56697))))))

(assert (=> d!1586103 (= (isPrefix!4965 (++!12330 call!343633 (Cons!56697 (head!10524 (getSuffix!2953 lt!2027847 call!343633)) Nil!56697)) lt!2027847) lt!2028094)))

(declare-fun b!4927876 () Bool)

(declare-fun res!2103125 () Bool)

(declare-fun e!3078904 () Bool)

(assert (=> b!4927876 (=> (not res!2103125) (not e!3078904))))

(assert (=> b!4927876 (= res!2103125 (= (head!10524 (++!12330 call!343633 (Cons!56697 (head!10524 (getSuffix!2953 lt!2027847 call!343633)) Nil!56697))) (head!10524 lt!2027847)))))

(declare-fun b!4927875 () Bool)

(assert (=> b!4927875 (= e!3078905 e!3078904)))

(declare-fun res!2103127 () Bool)

(assert (=> b!4927875 (=> (not res!2103127) (not e!3078904))))

(assert (=> b!4927875 (= res!2103127 (not ((_ is Nil!56697) lt!2027847)))))

(declare-fun b!4927877 () Bool)

(assert (=> b!4927877 (= e!3078904 (isPrefix!4965 (tail!9671 (++!12330 call!343633 (Cons!56697 (head!10524 (getSuffix!2953 lt!2027847 call!343633)) Nil!56697))) (tail!9671 lt!2027847)))))

(assert (= (and d!1586103 (not res!2103126)) b!4927875))

(assert (= (and b!4927875 res!2103127) b!4927876))

(assert (= (and b!4927876 res!2103125) b!4927877))

(assert (= (and d!1586103 (not res!2103124)) b!4927878))

(declare-fun m!5946660 () Bool)

(assert (=> b!4927878 m!5946660))

(assert (=> b!4927878 m!5945826))

(declare-fun m!5946662 () Bool)

(assert (=> b!4927878 m!5946662))

(assert (=> b!4927876 m!5945826))

(declare-fun m!5946664 () Bool)

(assert (=> b!4927876 m!5946664))

(declare-fun m!5946666 () Bool)

(assert (=> b!4927876 m!5946666))

(assert (=> b!4927877 m!5945826))

(declare-fun m!5946668 () Bool)

(assert (=> b!4927877 m!5946668))

(declare-fun m!5946670 () Bool)

(assert (=> b!4927877 m!5946670))

(assert (=> b!4927877 m!5946668))

(assert (=> b!4927877 m!5946670))

(declare-fun m!5946672 () Bool)

(assert (=> b!4927877 m!5946672))

(assert (=> b!4927381 d!1586103))

(declare-fun d!1586105 () Bool)

(declare-fun lt!2028095 () C!26964)

(assert (=> d!1586105 (contains!19458 lt!2027843 lt!2028095)))

(declare-fun e!3078908 () C!26964)

(assert (=> d!1586105 (= lt!2028095 e!3078908)))

(declare-fun c!839561 () Bool)

(assert (=> d!1586105 (= c!839561 (= (+ 0 1) 0))))

(declare-fun e!3078907 () Bool)

(assert (=> d!1586105 e!3078907))

(declare-fun res!2103128 () Bool)

(assert (=> d!1586105 (=> (not res!2103128) (not e!3078907))))

(assert (=> d!1586105 (= res!2103128 (<= 0 (+ 0 1)))))

(assert (=> d!1586105 (= (apply!13668 lt!2027843 (+ 0 1)) lt!2028095)))

(declare-fun b!4927879 () Bool)

(assert (=> b!4927879 (= e!3078907 (< (+ 0 1) (size!37489 lt!2027843)))))

(declare-fun b!4927880 () Bool)

(assert (=> b!4927880 (= e!3078908 (head!10524 lt!2027843))))

(declare-fun b!4927881 () Bool)

(assert (=> b!4927881 (= e!3078908 (apply!13668 (tail!9671 lt!2027843) (- (+ 0 1) 1)))))

(assert (= (and d!1586105 res!2103128) b!4927879))

(assert (= (and d!1586105 c!839561) b!4927880))

(assert (= (and d!1586105 (not c!839561)) b!4927881))

(declare-fun m!5946674 () Bool)

(assert (=> d!1586105 m!5946674))

(assert (=> b!4927879 m!5946634))

(declare-fun m!5946676 () Bool)

(assert (=> b!4927880 m!5946676))

(declare-fun m!5946678 () Bool)

(assert (=> b!4927881 m!5946678))

(assert (=> b!4927881 m!5946678))

(declare-fun m!5946680 () Bool)

(assert (=> b!4927881 m!5946680))

(assert (=> b!4927381 d!1586105))

(declare-fun d!1586107 () Bool)

(declare-fun lt!2028096 () Int)

(assert (=> d!1586107 (>= lt!2028096 0)))

(declare-fun e!3078909 () Int)

(assert (=> d!1586107 (= lt!2028096 e!3078909)))

(declare-fun c!839562 () Bool)

(assert (=> d!1586107 (= c!839562 ((_ is Nil!56697) lt!2027854))))

(assert (=> d!1586107 (= (size!37489 lt!2027854) lt!2028096)))

(declare-fun b!4927882 () Bool)

(assert (=> b!4927882 (= e!3078909 0)))

(declare-fun b!4927883 () Bool)

(assert (=> b!4927883 (= e!3078909 (+ 1 (size!37489 (t!367283 lt!2027854))))))

(assert (= (and d!1586107 c!839562) b!4927882))

(assert (= (and d!1586107 (not c!839562)) b!4927883))

(declare-fun m!5946682 () Bool)

(assert (=> b!4927883 m!5946682))

(assert (=> b!4927381 d!1586107))

(declare-fun d!1586109 () Bool)

(assert (=> d!1586109 (= (head!10524 (getSuffix!2953 lt!2027847 call!343633)) (h!63145 (getSuffix!2953 lt!2027847 call!343633)))))

(assert (=> b!4927381 d!1586109))

(assert (=> b!4927381 d!1585949))

(declare-fun b!4927884 () Bool)

(declare-fun e!3078910 () List!56821)

(assert (=> b!4927884 (= e!3078910 (Cons!56697 lt!2027852 Nil!56697))))

(declare-fun e!3078911 () Bool)

(declare-fun b!4927887 () Bool)

(declare-fun lt!2028097 () List!56821)

(assert (=> b!4927887 (= e!3078911 (or (not (= (Cons!56697 lt!2027852 Nil!56697) Nil!56697)) (= lt!2028097 call!343633)))))

(declare-fun b!4927886 () Bool)

(declare-fun res!2103129 () Bool)

(assert (=> b!4927886 (=> (not res!2103129) (not e!3078911))))

(assert (=> b!4927886 (= res!2103129 (= (size!37489 lt!2028097) (+ (size!37489 call!343633) (size!37489 (Cons!56697 lt!2027852 Nil!56697)))))))

(declare-fun d!1586111 () Bool)

(assert (=> d!1586111 e!3078911))

(declare-fun res!2103130 () Bool)

(assert (=> d!1586111 (=> (not res!2103130) (not e!3078911))))

(assert (=> d!1586111 (= res!2103130 (= (content!10073 lt!2028097) ((_ map or) (content!10073 call!343633) (content!10073 (Cons!56697 lt!2027852 Nil!56697)))))))

(assert (=> d!1586111 (= lt!2028097 e!3078910)))

(declare-fun c!839563 () Bool)

(assert (=> d!1586111 (= c!839563 ((_ is Nil!56697) call!343633))))

(assert (=> d!1586111 (= (++!12330 call!343633 (Cons!56697 lt!2027852 Nil!56697)) lt!2028097)))

(declare-fun b!4927885 () Bool)

(assert (=> b!4927885 (= e!3078910 (Cons!56697 (h!63145 call!343633) (++!12330 (t!367283 call!343633) (Cons!56697 lt!2027852 Nil!56697))))))

(assert (= (and d!1586111 c!839563) b!4927884))

(assert (= (and d!1586111 (not c!839563)) b!4927885))

(assert (= (and d!1586111 res!2103130) b!4927886))

(assert (= (and b!4927886 res!2103129) b!4927887))

(declare-fun m!5946684 () Bool)

(assert (=> b!4927886 m!5946684))

(assert (=> b!4927886 m!5945830))

(declare-fun m!5946686 () Bool)

(assert (=> b!4927886 m!5946686))

(declare-fun m!5946688 () Bool)

(assert (=> d!1586111 m!5946688))

(assert (=> d!1586111 m!5946368))

(declare-fun m!5946690 () Bool)

(assert (=> d!1586111 m!5946690))

(declare-fun m!5946692 () Bool)

(assert (=> b!4927885 m!5946692))

(assert (=> b!4927381 d!1586111))

(declare-fun d!1586113 () Bool)

(assert (=> d!1586113 (= (list!17959 (_2!33900 lt!2027844)) (list!17961 (c!839087 (_2!33900 lt!2027844))))))

(declare-fun bs!1179934 () Bool)

(assert (= bs!1179934 d!1586113))

(declare-fun m!5946694 () Bool)

(assert (=> bs!1179934 m!5946694))

(assert (=> b!4927381 d!1586113))

(declare-fun d!1586115 () Bool)

(assert (=> d!1586115 (and (= lt!2027823 call!343633) (= lt!2027857 call!343626))))

(declare-fun lt!2028098 () Unit!147242)

(assert (=> d!1586115 (= lt!2028098 (choose!36088 lt!2027823 lt!2027857 call!343633 call!343626))))

(assert (=> d!1586115 (= (++!12330 lt!2027823 lt!2027857) (++!12330 call!343633 call!343626))))

(assert (=> d!1586115 (= (lemmaConcatSameAndSameSizesThenSameLists!660 lt!2027823 lt!2027857 call!343633 call!343626) lt!2028098)))

(declare-fun bs!1179935 () Bool)

(assert (= bs!1179935 d!1586115))

(declare-fun m!5946696 () Bool)

(assert (=> bs!1179935 m!5946696))

(declare-fun m!5946698 () Bool)

(assert (=> bs!1179935 m!5946698))

(assert (=> bs!1179935 m!5945844))

(assert (=> b!4927381 d!1586115))

(assert (=> b!4927381 d!1585917))

(declare-fun d!1586117 () Bool)

(declare-fun lt!2028099 () List!56821)

(assert (=> d!1586117 (= (++!12330 call!343633 lt!2028099) lt!2027847)))

(declare-fun e!3078912 () List!56821)

(assert (=> d!1586117 (= lt!2028099 e!3078912)))

(declare-fun c!839564 () Bool)

(assert (=> d!1586117 (= c!839564 ((_ is Cons!56697) call!343633))))

(assert (=> d!1586117 (>= (size!37489 lt!2027847) (size!37489 call!343633))))

(assert (=> d!1586117 (= (getSuffix!2953 lt!2027847 call!343633) lt!2028099)))

(declare-fun b!4927888 () Bool)

(assert (=> b!4927888 (= e!3078912 (getSuffix!2953 (tail!9671 lt!2027847) (t!367283 call!343633)))))

(declare-fun b!4927889 () Bool)

(assert (=> b!4927889 (= e!3078912 lt!2027847)))

(assert (= (and d!1586117 c!839564) b!4927888))

(assert (= (and d!1586117 (not c!839564)) b!4927889))

(declare-fun m!5946700 () Bool)

(assert (=> d!1586117 m!5946700))

(assert (=> d!1586117 m!5946660))

(assert (=> d!1586117 m!5945830))

(assert (=> b!4927888 m!5946670))

(assert (=> b!4927888 m!5946670))

(declare-fun m!5946702 () Bool)

(assert (=> b!4927888 m!5946702))

(assert (=> b!4927381 d!1586117))

(declare-fun d!1586119 () Bool)

(assert (=> d!1586119 (isPrefix!4965 (++!12330 call!343633 (Cons!56697 (head!10524 (getSuffix!2953 lt!2027847 call!343633)) Nil!56697)) lt!2027847)))

(declare-fun lt!2028100 () Unit!147242)

(assert (=> d!1586119 (= lt!2028100 (choose!36087 call!343633 lt!2027847))))

(assert (=> d!1586119 (isPrefix!4965 call!343633 lt!2027847)))

(assert (=> d!1586119 (= (lemmaAddHeadSuffixToPrefixStillPrefix!777 call!343633 lt!2027847) lt!2028100)))

(declare-fun bs!1179936 () Bool)

(assert (= bs!1179936 d!1586119))

(declare-fun m!5946704 () Bool)

(assert (=> bs!1179936 m!5946704))

(declare-fun m!5946706 () Bool)

(assert (=> bs!1179936 m!5946706))

(assert (=> bs!1179936 m!5945826))

(assert (=> bs!1179936 m!5945806))

(assert (=> bs!1179936 m!5945806))

(assert (=> bs!1179936 m!5945812))

(assert (=> bs!1179936 m!5945826))

(assert (=> bs!1179936 m!5945828))

(assert (=> b!4927381 d!1586119))

(declare-fun b!4927890 () Bool)

(declare-fun e!3078913 () List!56821)

(assert (=> b!4927890 (= e!3078913 (Cons!56697 (head!10524 (getSuffix!2953 lt!2027847 call!343633)) Nil!56697))))

(declare-fun e!3078914 () Bool)

(declare-fun lt!2028101 () List!56821)

(declare-fun b!4927893 () Bool)

(assert (=> b!4927893 (= e!3078914 (or (not (= (Cons!56697 (head!10524 (getSuffix!2953 lt!2027847 call!343633)) Nil!56697) Nil!56697)) (= lt!2028101 call!343633)))))

(declare-fun b!4927892 () Bool)

(declare-fun res!2103131 () Bool)

(assert (=> b!4927892 (=> (not res!2103131) (not e!3078914))))

(assert (=> b!4927892 (= res!2103131 (= (size!37489 lt!2028101) (+ (size!37489 call!343633) (size!37489 (Cons!56697 (head!10524 (getSuffix!2953 lt!2027847 call!343633)) Nil!56697)))))))

(declare-fun d!1586121 () Bool)

(assert (=> d!1586121 e!3078914))

(declare-fun res!2103132 () Bool)

(assert (=> d!1586121 (=> (not res!2103132) (not e!3078914))))

(assert (=> d!1586121 (= res!2103132 (= (content!10073 lt!2028101) ((_ map or) (content!10073 call!343633) (content!10073 (Cons!56697 (head!10524 (getSuffix!2953 lt!2027847 call!343633)) Nil!56697)))))))

(assert (=> d!1586121 (= lt!2028101 e!3078913)))

(declare-fun c!839565 () Bool)

(assert (=> d!1586121 (= c!839565 ((_ is Nil!56697) call!343633))))

(assert (=> d!1586121 (= (++!12330 call!343633 (Cons!56697 (head!10524 (getSuffix!2953 lt!2027847 call!343633)) Nil!56697)) lt!2028101)))

(declare-fun b!4927891 () Bool)

(assert (=> b!4927891 (= e!3078913 (Cons!56697 (h!63145 call!343633) (++!12330 (t!367283 call!343633) (Cons!56697 (head!10524 (getSuffix!2953 lt!2027847 call!343633)) Nil!56697))))))

(assert (= (and d!1586121 c!839565) b!4927890))

(assert (= (and d!1586121 (not c!839565)) b!4927891))

(assert (= (and d!1586121 res!2103132) b!4927892))

(assert (= (and b!4927892 res!2103131) b!4927893))

(declare-fun m!5946708 () Bool)

(assert (=> b!4927892 m!5946708))

(assert (=> b!4927892 m!5945830))

(declare-fun m!5946710 () Bool)

(assert (=> b!4927892 m!5946710))

(declare-fun m!5946712 () Bool)

(assert (=> d!1586121 m!5946712))

(assert (=> d!1586121 m!5946368))

(declare-fun m!5946714 () Bool)

(assert (=> d!1586121 m!5946714))

(declare-fun m!5946716 () Bool)

(assert (=> b!4927891 m!5946716))

(assert (=> b!4927381 d!1586121))

(assert (=> b!4927381 d!1585489))

(declare-fun d!1586123 () Bool)

(declare-fun res!2103133 () Bool)

(declare-fun e!3078915 () Bool)

(assert (=> d!1586123 (=> res!2103133 e!3078915)))

(assert (=> d!1586123 (= res!2103133 ((_ is Nil!56698) (t!367284 (exprs!3519 setElem!27550))))))

(assert (=> d!1586123 (= (forall!13140 (t!367284 (exprs!3519 setElem!27550)) lambda!245281) e!3078915)))

(declare-fun b!4927894 () Bool)

(declare-fun e!3078916 () Bool)

(assert (=> b!4927894 (= e!3078915 e!3078916)))

(declare-fun res!2103134 () Bool)

(assert (=> b!4927894 (=> (not res!2103134) (not e!3078916))))

(assert (=> b!4927894 (= res!2103134 (dynLambda!23011 lambda!245281 (h!63146 (t!367284 (exprs!3519 setElem!27550)))))))

(declare-fun b!4927895 () Bool)

(assert (=> b!4927895 (= e!3078916 (forall!13140 (t!367284 (t!367284 (exprs!3519 setElem!27550))) lambda!245281))))

(assert (= (and d!1586123 (not res!2103133)) b!4927894))

(assert (= (and b!4927894 res!2103134) b!4927895))

(declare-fun b_lambda!196305 () Bool)

(assert (=> (not b_lambda!196305) (not b!4927894)))

(declare-fun m!5946718 () Bool)

(assert (=> b!4927894 m!5946718))

(declare-fun m!5946720 () Bool)

(assert (=> b!4927895 m!5946720))

(assert (=> b!4927012 d!1586123))

(assert (=> b!4927246 d!1585913))

(declare-fun b!4927899 () Bool)

(declare-fun e!3078919 () Bool)

(assert (=> b!4927899 (= e!3078919 (>= (size!37489 (tail!9671 (ite c!839148 lt!2027309 lt!2027343))) (size!37489 (tail!9671 (ite c!839148 lt!2027318 lt!2027308)))))))

(declare-fun d!1586125 () Bool)

(assert (=> d!1586125 e!3078919))

(declare-fun res!2103135 () Bool)

(assert (=> d!1586125 (=> res!2103135 e!3078919)))

(declare-fun lt!2028102 () Bool)

(assert (=> d!1586125 (= res!2103135 (not lt!2028102))))

(declare-fun e!3078918 () Bool)

(assert (=> d!1586125 (= lt!2028102 e!3078918)))

(declare-fun res!2103137 () Bool)

(assert (=> d!1586125 (=> res!2103137 e!3078918)))

(assert (=> d!1586125 (= res!2103137 ((_ is Nil!56697) (tail!9671 (ite c!839148 lt!2027318 lt!2027308))))))

(assert (=> d!1586125 (= (isPrefix!4965 (tail!9671 (ite c!839148 lt!2027318 lt!2027308)) (tail!9671 (ite c!839148 lt!2027309 lt!2027343))) lt!2028102)))

(declare-fun b!4927897 () Bool)

(declare-fun res!2103136 () Bool)

(declare-fun e!3078917 () Bool)

(assert (=> b!4927897 (=> (not res!2103136) (not e!3078917))))

(assert (=> b!4927897 (= res!2103136 (= (head!10524 (tail!9671 (ite c!839148 lt!2027318 lt!2027308))) (head!10524 (tail!9671 (ite c!839148 lt!2027309 lt!2027343)))))))

(declare-fun b!4927896 () Bool)

(assert (=> b!4927896 (= e!3078918 e!3078917)))

(declare-fun res!2103138 () Bool)

(assert (=> b!4927896 (=> (not res!2103138) (not e!3078917))))

(assert (=> b!4927896 (= res!2103138 (not ((_ is Nil!56697) (tail!9671 (ite c!839148 lt!2027309 lt!2027343)))))))

(declare-fun b!4927898 () Bool)

(assert (=> b!4927898 (= e!3078917 (isPrefix!4965 (tail!9671 (tail!9671 (ite c!839148 lt!2027318 lt!2027308))) (tail!9671 (tail!9671 (ite c!839148 lt!2027309 lt!2027343)))))))

(assert (= (and d!1586125 (not res!2103137)) b!4927896))

(assert (= (and b!4927896 res!2103138) b!4927897))

(assert (= (and b!4927897 res!2103136) b!4927898))

(assert (= (and d!1586125 (not res!2103135)) b!4927899))

(assert (=> b!4927899 m!5945102))

(declare-fun m!5946722 () Bool)

(assert (=> b!4927899 m!5946722))

(assert (=> b!4927899 m!5945100))

(declare-fun m!5946724 () Bool)

(assert (=> b!4927899 m!5946724))

(assert (=> b!4927897 m!5945100))

(declare-fun m!5946726 () Bool)

(assert (=> b!4927897 m!5946726))

(assert (=> b!4927897 m!5945102))

(declare-fun m!5946728 () Bool)

(assert (=> b!4927897 m!5946728))

(assert (=> b!4927898 m!5945100))

(declare-fun m!5946730 () Bool)

(assert (=> b!4927898 m!5946730))

(assert (=> b!4927898 m!5945102))

(declare-fun m!5946732 () Bool)

(assert (=> b!4927898 m!5946732))

(assert (=> b!4927898 m!5946730))

(assert (=> b!4927898 m!5946732))

(declare-fun m!5946734 () Bool)

(assert (=> b!4927898 m!5946734))

(assert (=> b!4926965 d!1586125))

(declare-fun d!1586127 () Bool)

(assert (=> d!1586127 (= (tail!9671 (ite c!839148 lt!2027318 lt!2027308)) (t!367283 (ite c!839148 lt!2027318 lt!2027308)))))

(assert (=> b!4926965 d!1586127))

(declare-fun d!1586129 () Bool)

(assert (=> d!1586129 (= (tail!9671 (ite c!839148 lt!2027309 lt!2027343)) (t!367283 (ite c!839148 lt!2027309 lt!2027343)))))

(assert (=> b!4926965 d!1586129))

(declare-fun bs!1179937 () Bool)

(declare-fun d!1586131 () Bool)

(assert (= bs!1179937 (and d!1586131 d!1585811)))

(declare-fun lambda!245349 () Int)

(assert (=> bs!1179937 (= (= call!343734 call!343654) (= lambda!245349 lambda!245326))))

(declare-fun bs!1179938 () Bool)

(assert (= bs!1179938 (and d!1586131 d!1585821)))

(assert (=> bs!1179938 (= (= call!343734 call!343630) (= lambda!245349 lambda!245327))))

(assert (=> d!1586131 true))

(assert (=> d!1586131 (= (derivationStepZipper!592 call!343627 call!343734) (flatMap!267 call!343627 lambda!245349))))

(declare-fun bs!1179939 () Bool)

(assert (= bs!1179939 d!1586131))

(declare-fun m!5946736 () Bool)

(assert (=> bs!1179939 m!5946736))

(assert (=> bm!343731 d!1586131))

(declare-fun d!1586133 () Bool)

(declare-fun lt!2028103 () Bool)

(assert (=> d!1586133 (= lt!2028103 (isEmpty!30579 (list!17961 (left!41344 (c!839087 input!5492)))))))

(assert (=> d!1586133 (= lt!2028103 (= (size!37492 (left!41344 (c!839087 input!5492))) 0))))

(assert (=> d!1586133 (= (isEmpty!30583 (left!41344 (c!839087 input!5492))) lt!2028103)))

(declare-fun bs!1179940 () Bool)

(assert (= bs!1179940 d!1586133))

(assert (=> bs!1179940 m!5945106))

(assert (=> bs!1179940 m!5945106))

(declare-fun m!5946738 () Bool)

(assert (=> bs!1179940 m!5946738))

(assert (=> bs!1179940 m!5945488))

(assert (=> b!4927259 d!1586133))

(declare-fun d!1586135 () Bool)

(declare-fun lt!2028104 () Int)

(assert (=> d!1586135 (>= lt!2028104 0)))

(declare-fun e!3078920 () Int)

(assert (=> d!1586135 (= lt!2028104 e!3078920)))

(declare-fun c!839566 () Bool)

(assert (=> d!1586135 (= c!839566 ((_ is Nil!56697) lt!2027602))))

(assert (=> d!1586135 (= (size!37489 lt!2027602) lt!2028104)))

(declare-fun b!4927900 () Bool)

(assert (=> b!4927900 (= e!3078920 0)))

(declare-fun b!4927901 () Bool)

(assert (=> b!4927901 (= e!3078920 (+ 1 (size!37489 (t!367283 lt!2027602))))))

(assert (= (and d!1586135 c!839566) b!4927900))

(assert (= (and d!1586135 (not c!839566)) b!4927901))

(declare-fun m!5946740 () Bool)

(assert (=> b!4927901 m!5946740))

(assert (=> b!4926995 d!1586135))

(assert (=> b!4926995 d!1585527))

(declare-fun d!1586137 () Bool)

(declare-fun lt!2028105 () Int)

(assert (=> d!1586137 (>= lt!2028105 0)))

(declare-fun e!3078921 () Int)

(assert (=> d!1586137 (= lt!2028105 e!3078921)))

(declare-fun c!839567 () Bool)

(assert (=> d!1586137 (= c!839567 ((_ is Nil!56697) (Cons!56697 (head!10524 lt!2026995) Nil!56697)))))

(assert (=> d!1586137 (= (size!37489 (Cons!56697 (head!10524 lt!2026995) Nil!56697)) lt!2028105)))

(declare-fun b!4927902 () Bool)

(assert (=> b!4927902 (= e!3078921 0)))

(declare-fun b!4927903 () Bool)

(assert (=> b!4927903 (= e!3078921 (+ 1 (size!37489 (t!367283 (Cons!56697 (head!10524 lt!2026995) Nil!56697)))))))

(assert (= (and d!1586137 c!839567) b!4927902))

(assert (= (and d!1586137 (not c!839567)) b!4927903))

(declare-fun m!5946742 () Bool)

(assert (=> b!4927903 m!5946742))

(assert (=> b!4926995 d!1586137))

(declare-fun d!1586139 () Bool)

(declare-fun lt!2028106 () Int)

(assert (=> d!1586139 (>= lt!2028106 0)))

(declare-fun e!3078922 () Int)

(assert (=> d!1586139 (= lt!2028106 e!3078922)))

(declare-fun c!839568 () Bool)

(assert (=> d!1586139 (= c!839568 ((_ is Nil!56697) (ite c!839351 lt!2027737 lt!2027730)))))

(assert (=> d!1586139 (= (size!37489 (ite c!839351 lt!2027737 lt!2027730)) lt!2028106)))

(declare-fun b!4927904 () Bool)

(assert (=> b!4927904 (= e!3078922 0)))

(declare-fun b!4927905 () Bool)

(assert (=> b!4927905 (= e!3078922 (+ 1 (size!37489 (t!367283 (ite c!839351 lt!2027737 lt!2027730)))))))

(assert (= (and d!1586139 c!839568) b!4927904))

(assert (= (and d!1586139 (not c!839568)) b!4927905))

(declare-fun m!5946744 () Bool)

(assert (=> b!4927905 m!5946744))

(assert (=> bm!343706 d!1586139))

(assert (=> bm!343718 d!1585799))

(declare-fun d!1586141 () Bool)

(assert (=> d!1586141 (= (ite c!839148 lt!2027305 lt!2027341) Nil!56697)))

(assert (=> d!1586141 true))

(declare-fun _$60!877 () Unit!147242)

(assert (=> d!1586141 (= (choose!36084 (ite c!839148 lt!2027305 lt!2027341) Nil!56697 e!3078218) _$60!877)))

(assert (=> d!1585765 d!1586141))

(declare-fun e!3078925 () Bool)

(declare-fun b!4927909 () Bool)

(assert (=> b!4927909 (= e!3078925 (>= (size!37489 e!3078218) (size!37489 (ite c!839148 lt!2027305 lt!2027341))))))

(declare-fun d!1586143 () Bool)

(assert (=> d!1586143 e!3078925))

(declare-fun res!2103139 () Bool)

(assert (=> d!1586143 (=> res!2103139 e!3078925)))

(declare-fun lt!2028107 () Bool)

(assert (=> d!1586143 (= res!2103139 (not lt!2028107))))

(declare-fun e!3078924 () Bool)

(assert (=> d!1586143 (= lt!2028107 e!3078924)))

(declare-fun res!2103141 () Bool)

(assert (=> d!1586143 (=> res!2103141 e!3078924)))

(assert (=> d!1586143 (= res!2103141 ((_ is Nil!56697) (ite c!839148 lt!2027305 lt!2027341)))))

(assert (=> d!1586143 (= (isPrefix!4965 (ite c!839148 lt!2027305 lt!2027341) e!3078218) lt!2028107)))

(declare-fun b!4927907 () Bool)

(declare-fun res!2103140 () Bool)

(declare-fun e!3078923 () Bool)

(assert (=> b!4927907 (=> (not res!2103140) (not e!3078923))))

(assert (=> b!4927907 (= res!2103140 (= (head!10524 (ite c!839148 lt!2027305 lt!2027341)) (head!10524 e!3078218)))))

(declare-fun b!4927906 () Bool)

(assert (=> b!4927906 (= e!3078924 e!3078923)))

(declare-fun res!2103142 () Bool)

(assert (=> b!4927906 (=> (not res!2103142) (not e!3078923))))

(assert (=> b!4927906 (= res!2103142 (not ((_ is Nil!56697) e!3078218)))))

(declare-fun b!4927908 () Bool)

(assert (=> b!4927908 (= e!3078923 (isPrefix!4965 (tail!9671 (ite c!839148 lt!2027305 lt!2027341)) (tail!9671 e!3078218)))))

(assert (= (and d!1586143 (not res!2103141)) b!4927906))

(assert (= (and b!4927906 res!2103142) b!4927907))

(assert (= (and b!4927907 res!2103140) b!4927908))

(assert (= (and d!1586143 (not res!2103139)) b!4927909))

(declare-fun m!5946746 () Bool)

(assert (=> b!4927909 m!5946746))

(declare-fun m!5946748 () Bool)

(assert (=> b!4927909 m!5946748))

(declare-fun m!5946750 () Bool)

(assert (=> b!4927907 m!5946750))

(declare-fun m!5946752 () Bool)

(assert (=> b!4927907 m!5946752))

(declare-fun m!5946754 () Bool)

(assert (=> b!4927908 m!5946754))

(declare-fun m!5946756 () Bool)

(assert (=> b!4927908 m!5946756))

(assert (=> b!4927908 m!5946754))

(assert (=> b!4927908 m!5946756))

(declare-fun m!5946758 () Bool)

(assert (=> b!4927908 m!5946758))

(assert (=> d!1585765 d!1586143))

(declare-fun b!4927910 () Bool)

(declare-fun e!3078926 () List!56821)

(assert (=> b!4927910 (= e!3078926 lt!2027575)))

(declare-fun b!4927913 () Bool)

(declare-fun e!3078927 () Bool)

(declare-fun lt!2028108 () List!56821)

(assert (=> b!4927913 (= e!3078927 (or (not (= lt!2027575 Nil!56697)) (= lt!2028108 Nil!56697)))))

(declare-fun b!4927912 () Bool)

(declare-fun res!2103143 () Bool)

(assert (=> b!4927912 (=> (not res!2103143) (not e!3078927))))

(assert (=> b!4927912 (= res!2103143 (= (size!37489 lt!2028108) (+ (size!37489 Nil!56697) (size!37489 lt!2027575))))))

(declare-fun d!1586145 () Bool)

(assert (=> d!1586145 e!3078927))

(declare-fun res!2103144 () Bool)

(assert (=> d!1586145 (=> (not res!2103144) (not e!3078927))))

(assert (=> d!1586145 (= res!2103144 (= (content!10073 lt!2028108) ((_ map or) (content!10073 Nil!56697) (content!10073 lt!2027575))))))

(assert (=> d!1586145 (= lt!2028108 e!3078926)))

(declare-fun c!839569 () Bool)

(assert (=> d!1586145 (= c!839569 ((_ is Nil!56697) Nil!56697))))

(assert (=> d!1586145 (= (++!12330 Nil!56697 lt!2027575) lt!2028108)))

(declare-fun b!4927911 () Bool)

(assert (=> b!4927911 (= e!3078926 (Cons!56697 (h!63145 Nil!56697) (++!12330 (t!367283 Nil!56697) lt!2027575)))))

(assert (= (and d!1586145 c!839569) b!4927910))

(assert (= (and d!1586145 (not c!839569)) b!4927911))

(assert (= (and d!1586145 res!2103144) b!4927912))

(assert (= (and b!4927912 res!2103143) b!4927913))

(declare-fun m!5946760 () Bool)

(assert (=> b!4927912 m!5946760))

(assert (=> b!4927912 m!5944576))

(declare-fun m!5946762 () Bool)

(assert (=> b!4927912 m!5946762))

(declare-fun m!5946764 () Bool)

(assert (=> d!1586145 m!5946764))

(assert (=> d!1586145 m!5944740))

(declare-fun m!5946766 () Bool)

(assert (=> d!1586145 m!5946766))

(declare-fun m!5946768 () Bool)

(assert (=> b!4927911 m!5946768))

(assert (=> d!1585611 d!1586145))

(assert (=> d!1585611 d!1585629))

(assert (=> d!1585611 d!1585527))

(declare-fun d!1586147 () Bool)

(declare-fun lt!2028109 () Int)

(assert (=> d!1586147 (>= lt!2028109 0)))

(declare-fun e!3078928 () Int)

(assert (=> d!1586147 (= lt!2028109 e!3078928)))

(declare-fun c!839570 () Bool)

(assert (=> d!1586147 (= c!839570 ((_ is Nil!56697) (t!367283 (_1!33899 (findLongestMatchInnerZipper!62 z!3559 Nil!56697 0 lt!2026995 (list!17959 input!5492) lt!2026996)))))))

(assert (=> d!1586147 (= (size!37489 (t!367283 (_1!33899 (findLongestMatchInnerZipper!62 z!3559 Nil!56697 0 lt!2026995 (list!17959 input!5492) lt!2026996)))) lt!2028109)))

(declare-fun b!4927914 () Bool)

(assert (=> b!4927914 (= e!3078928 0)))

(declare-fun b!4927915 () Bool)

(assert (=> b!4927915 (= e!3078928 (+ 1 (size!37489 (t!367283 (t!367283 (_1!33899 (findLongestMatchInnerZipper!62 z!3559 Nil!56697 0 lt!2026995 (list!17959 input!5492) lt!2026996)))))))))

(assert (= (and d!1586147 c!839570) b!4927914))

(assert (= (and d!1586147 (not c!839570)) b!4927915))

(declare-fun m!5946770 () Bool)

(assert (=> b!4927915 m!5946770))

(assert (=> b!4927290 d!1586147))

(declare-fun d!1586149 () Bool)

(assert (not d!1586149))

(assert (=> b!4926998 d!1586149))

(declare-fun b!4927916 () Bool)

(declare-fun e!3078929 () tuple2!61192)

(assert (=> b!4927916 (= e!3078929 (tuple2!61193 Nil!56697 (list!17959 input!5492)))))

(declare-fun bm!343803 () Bool)

(declare-fun call!343812 () Unit!147242)

(assert (=> bm!343803 (= call!343812 (lemmaIsPrefixSameLengthThenSameList!1123 (list!17959 input!5492) lt!2027754 (list!17959 input!5492)))))

(declare-fun bm!343804 () Bool)

(declare-fun call!343809 () List!56821)

(assert (=> bm!343804 (= call!343809 (tail!9671 call!343714))))

(declare-fun b!4927917 () Bool)

(declare-fun c!839574 () Bool)

(declare-fun call!343810 () Bool)

(assert (=> b!4927917 (= c!839574 call!343810)))

(declare-fun lt!2028129 () Unit!147242)

(declare-fun lt!2028132 () Unit!147242)

(assert (=> b!4927917 (= lt!2028129 lt!2028132)))

(declare-fun lt!2028135 () C!26964)

(declare-fun lt!2028134 () List!56821)

(assert (=> b!4927917 (= (++!12330 (++!12330 lt!2027754 (Cons!56697 lt!2028135 Nil!56697)) lt!2028134) (list!17959 input!5492))))

(assert (=> b!4927917 (= lt!2028132 (lemmaMoveElementToOtherListKeepsConcatEq!1395 lt!2027754 lt!2028135 lt!2028134 (list!17959 input!5492)))))

(assert (=> b!4927917 (= lt!2028134 (tail!9671 call!343714))))

(assert (=> b!4927917 (= lt!2028135 (head!10524 call!343714))))

(declare-fun lt!2028130 () Unit!147242)

(declare-fun lt!2028128 () Unit!147242)

(assert (=> b!4927917 (= lt!2028130 lt!2028128)))

(assert (=> b!4927917 (isPrefix!4965 (++!12330 lt!2027754 (Cons!56697 (head!10524 (getSuffix!2953 (list!17959 input!5492) lt!2027754)) Nil!56697)) (list!17959 input!5492))))

(assert (=> b!4927917 (= lt!2028128 (lemmaAddHeadSuffixToPrefixStillPrefix!777 lt!2027754 (list!17959 input!5492)))))

(declare-fun lt!2028115 () List!56821)

(assert (=> b!4927917 (= lt!2028115 (++!12330 lt!2027754 (Cons!56697 (head!10524 call!343714) Nil!56697)))))

(declare-fun lt!2028112 () Unit!147242)

(declare-fun e!3078931 () Unit!147242)

(assert (=> b!4927917 (= lt!2028112 e!3078931)))

(declare-fun c!839572 () Bool)

(assert (=> b!4927917 (= c!839572 (= (size!37489 lt!2027754) (size!37489 (list!17959 input!5492))))))

(declare-fun lt!2028114 () Unit!147242)

(declare-fun lt!2028117 () Unit!147242)

(assert (=> b!4927917 (= lt!2028114 lt!2028117)))

(assert (=> b!4927917 (<= (size!37489 lt!2027754) (size!37489 (list!17959 input!5492)))))

(assert (=> b!4927917 (= lt!2028117 (lemmaIsPrefixThenSmallerEqSize!689 lt!2027754 (list!17959 input!5492)))))

(declare-fun e!3078933 () tuple2!61192)

(declare-fun e!3078934 () tuple2!61192)

(assert (=> b!4927917 (= e!3078933 e!3078934)))

(declare-fun b!4927918 () Bool)

(declare-fun e!3078932 () tuple2!61192)

(assert (=> b!4927918 (= e!3078932 (tuple2!61193 Nil!56697 (list!17959 input!5492)))))

(declare-fun bm!343805 () Bool)

(declare-fun call!343814 () Bool)

(assert (=> bm!343805 (= call!343814 (isPrefix!4965 (list!17959 input!5492) (list!17959 input!5492)))))

(declare-fun b!4927919 () Bool)

(declare-fun e!3078930 () tuple2!61192)

(declare-fun lt!2028131 () tuple2!61192)

(assert (=> b!4927919 (= e!3078930 lt!2028131)))

(declare-fun d!1586151 () Bool)

(declare-fun e!3078935 () Bool)

(assert (=> d!1586151 e!3078935))

(declare-fun res!2103146 () Bool)

(assert (=> d!1586151 (=> (not res!2103146) (not e!3078935))))

(declare-fun lt!2028113 () tuple2!61192)

(assert (=> d!1586151 (= res!2103146 (= (++!12330 (_1!33899 lt!2028113) (_2!33899 lt!2028113)) (list!17959 input!5492)))))

(assert (=> d!1586151 (= lt!2028113 e!3078932)))

(declare-fun c!839573 () Bool)

(assert (=> d!1586151 (= c!839573 (lostCauseZipper!695 call!343713))))

(declare-fun lt!2028116 () Unit!147242)

(declare-fun Unit!147288 () Unit!147242)

(assert (=> d!1586151 (= lt!2028116 Unit!147288)))

(assert (=> d!1586151 (= (getSuffix!2953 (list!17959 input!5492) lt!2027754) call!343714)))

(declare-fun lt!2028123 () Unit!147242)

(declare-fun lt!2028127 () Unit!147242)

(assert (=> d!1586151 (= lt!2028123 lt!2028127)))

(declare-fun lt!2028133 () List!56821)

(assert (=> d!1586151 (= call!343714 lt!2028133)))

(assert (=> d!1586151 (= lt!2028127 (lemmaSamePrefixThenSameSuffix!2369 lt!2027754 call!343714 lt!2027754 lt!2028133 (list!17959 input!5492)))))

(assert (=> d!1586151 (= lt!2028133 (getSuffix!2953 (list!17959 input!5492) lt!2027754))))

(declare-fun lt!2028124 () Unit!147242)

(declare-fun lt!2028122 () Unit!147242)

(assert (=> d!1586151 (= lt!2028124 lt!2028122)))

(assert (=> d!1586151 (isPrefix!4965 lt!2027754 (++!12330 lt!2027754 call!343714))))

(assert (=> d!1586151 (= lt!2028122 (lemmaConcatTwoListThenFirstIsPrefix!3189 lt!2027754 call!343714))))

(assert (=> d!1586151 (= (++!12330 lt!2027754 call!343714) (list!17959 input!5492))))

(assert (=> d!1586151 (= (findLongestMatchInnerZipper!62 call!343713 lt!2027754 (+ 0 1) call!343714 (list!17959 input!5492) lt!2026996) lt!2028113)))

(declare-fun b!4927920 () Bool)

(declare-fun Unit!147289 () Unit!147242)

(assert (=> b!4927920 (= e!3078931 Unit!147289)))

(declare-fun b!4927921 () Bool)

(assert (=> b!4927921 (= e!3078934 e!3078930)))

(declare-fun call!343815 () tuple2!61192)

(assert (=> b!4927921 (= lt!2028131 call!343815)))

(declare-fun c!839571 () Bool)

(assert (=> b!4927921 (= c!839571 (isEmpty!30579 (_1!33899 lt!2028131)))))

(declare-fun bm!343806 () Bool)

(declare-fun call!343811 () C!26964)

(assert (=> bm!343806 (= call!343811 (head!10524 call!343714))))

(declare-fun bm!343807 () Bool)

(assert (=> bm!343807 (= call!343810 (nullableZipper!814 call!343713))))

(declare-fun b!4927922 () Bool)

(declare-fun e!3078936 () Bool)

(assert (=> b!4927922 (= e!3078936 (>= (size!37489 (_1!33899 lt!2028113)) (size!37489 lt!2027754)))))

(declare-fun b!4927923 () Bool)

(declare-fun Unit!147290 () Unit!147242)

(assert (=> b!4927923 (= e!3078931 Unit!147290)))

(declare-fun lt!2028110 () Unit!147242)

(declare-fun call!343813 () Unit!147242)

(assert (=> b!4927923 (= lt!2028110 call!343813)))

(assert (=> b!4927923 call!343814))

(declare-fun lt!2028126 () Unit!147242)

(assert (=> b!4927923 (= lt!2028126 lt!2028110)))

(declare-fun lt!2028111 () Unit!147242)

(assert (=> b!4927923 (= lt!2028111 call!343812)))

(assert (=> b!4927923 (= (list!17959 input!5492) lt!2027754)))

(declare-fun lt!2028125 () Unit!147242)

(assert (=> b!4927923 (= lt!2028125 lt!2028111)))

(assert (=> b!4927923 false))

(declare-fun b!4927924 () Bool)

(declare-fun c!839576 () Bool)

(assert (=> b!4927924 (= c!839576 call!343810)))

(declare-fun lt!2028118 () Unit!147242)

(declare-fun lt!2028121 () Unit!147242)

(assert (=> b!4927924 (= lt!2028118 lt!2028121)))

(assert (=> b!4927924 (= (list!17959 input!5492) lt!2027754)))

(assert (=> b!4927924 (= lt!2028121 call!343812)))

(declare-fun lt!2028119 () Unit!147242)

(declare-fun lt!2028120 () Unit!147242)

(assert (=> b!4927924 (= lt!2028119 lt!2028120)))

(assert (=> b!4927924 call!343814))

(assert (=> b!4927924 (= lt!2028120 call!343813)))

(assert (=> b!4927924 (= e!3078933 e!3078929)))

(declare-fun b!4927925 () Bool)

(assert (=> b!4927925 (= e!3078932 e!3078933)))

(declare-fun c!839575 () Bool)

(assert (=> b!4927925 (= c!839575 (= (+ 0 1) lt!2026996))))

(declare-fun call!343808 () (InoxSet Context!6038))

(declare-fun bm!343808 () Bool)

(assert (=> bm!343808 (= call!343815 (findLongestMatchInnerZipper!62 call!343808 lt!2028115 (+ 0 1 1) call!343809 (list!17959 input!5492) lt!2026996))))

(declare-fun bm!343809 () Bool)

(assert (=> bm!343809 (= call!343813 (lemmaIsPrefixRefl!3361 (list!17959 input!5492) (list!17959 input!5492)))))

(declare-fun b!4927926 () Bool)

(assert (=> b!4927926 (= e!3078934 call!343815)))

(declare-fun b!4927927 () Bool)

(assert (=> b!4927927 (= e!3078929 (tuple2!61193 lt!2027754 Nil!56697))))

(declare-fun b!4927928 () Bool)

(assert (=> b!4927928 (= e!3078930 (tuple2!61193 lt!2027754 call!343714))))

(declare-fun b!4927929 () Bool)

(assert (=> b!4927929 (= e!3078935 e!3078936)))

(declare-fun res!2103145 () Bool)

(assert (=> b!4927929 (=> res!2103145 e!3078936)))

(assert (=> b!4927929 (= res!2103145 (isEmpty!30579 (_1!33899 lt!2028113)))))

(declare-fun bm!343810 () Bool)

(assert (=> bm!343810 (= call!343808 (derivationStepZipper!592 call!343713 call!343811))))

(assert (= (and d!1586151 c!839573) b!4927918))

(assert (= (and d!1586151 (not c!839573)) b!4927925))

(assert (= (and b!4927925 c!839575) b!4927924))

(assert (= (and b!4927925 (not c!839575)) b!4927917))

(assert (= (and b!4927924 c!839576) b!4927927))

(assert (= (and b!4927924 (not c!839576)) b!4927916))

(assert (= (and b!4927917 c!839572) b!4927923))

(assert (= (and b!4927917 (not c!839572)) b!4927920))

(assert (= (and b!4927917 c!839574) b!4927921))

(assert (= (and b!4927917 (not c!839574)) b!4927926))

(assert (= (and b!4927921 c!839571) b!4927928))

(assert (= (and b!4927921 (not c!839571)) b!4927919))

(assert (= (or b!4927921 b!4927926) bm!343804))

(assert (= (or b!4927921 b!4927926) bm!343806))

(assert (= (or b!4927921 b!4927926) bm!343810))

(assert (= (or b!4927921 b!4927926) bm!343808))

(assert (= (or b!4927924 b!4927923) bm!343805))

(assert (= (or b!4927924 b!4927923) bm!343809))

(assert (= (or b!4927924 b!4927923) bm!343803))

(assert (= (or b!4927924 b!4927917) bm!343807))

(assert (= (and d!1586151 res!2103146) b!4927929))

(assert (= (and b!4927929 (not res!2103145)) b!4927922))

(declare-fun m!5946772 () Bool)

(assert (=> b!4927917 m!5946772))

(declare-fun m!5946774 () Bool)

(assert (=> b!4927917 m!5946774))

(assert (=> b!4927917 m!5944346))

(declare-fun m!5946776 () Bool)

(assert (=> b!4927917 m!5946776))

(declare-fun m!5946778 () Bool)

(assert (=> b!4927917 m!5946778))

(declare-fun m!5946780 () Bool)

(assert (=> b!4927917 m!5946780))

(assert (=> b!4927917 m!5944346))

(declare-fun m!5946782 () Bool)

(assert (=> b!4927917 m!5946782))

(declare-fun m!5946784 () Bool)

(assert (=> b!4927917 m!5946784))

(assert (=> b!4927917 m!5946780))

(assert (=> b!4927917 m!5944346))

(assert (=> b!4927917 m!5944632))

(assert (=> b!4927917 m!5946772))

(assert (=> b!4927917 m!5944346))

(declare-fun m!5946786 () Bool)

(assert (=> b!4927917 m!5946786))

(assert (=> b!4927917 m!5944346))

(declare-fun m!5946788 () Bool)

(assert (=> b!4927917 m!5946788))

(declare-fun m!5946790 () Bool)

(assert (=> b!4927917 m!5946790))

(assert (=> b!4927917 m!5946788))

(declare-fun m!5946792 () Bool)

(assert (=> b!4927917 m!5946792))

(declare-fun m!5946794 () Bool)

(assert (=> b!4927917 m!5946794))

(assert (=> b!4927917 m!5944346))

(declare-fun m!5946796 () Bool)

(assert (=> b!4927917 m!5946796))

(assert (=> bm!343808 m!5944346))

(declare-fun m!5946798 () Bool)

(assert (=> bm!343808 m!5946798))

(assert (=> bm!343803 m!5944346))

(assert (=> bm!343803 m!5944346))

(declare-fun m!5946800 () Bool)

(assert (=> bm!343803 m!5946800))

(assert (=> bm!343809 m!5944346))

(assert (=> bm!343809 m!5944346))

(assert (=> bm!343809 m!5945608))

(declare-fun m!5946802 () Bool)

(assert (=> d!1586151 m!5946802))

(assert (=> d!1586151 m!5946802))

(declare-fun m!5946804 () Bool)

(assert (=> d!1586151 m!5946804))

(assert (=> d!1586151 m!5944346))

(declare-fun m!5946806 () Bool)

(assert (=> d!1586151 m!5946806))

(assert (=> d!1586151 m!5944346))

(assert (=> d!1586151 m!5946788))

(declare-fun m!5946808 () Bool)

(assert (=> d!1586151 m!5946808))

(declare-fun m!5946810 () Bool)

(assert (=> d!1586151 m!5946810))

(declare-fun m!5946812 () Bool)

(assert (=> d!1586151 m!5946812))

(assert (=> bm!343805 m!5944346))

(assert (=> bm!343805 m!5944346))

(assert (=> bm!343805 m!5945614))

(declare-fun m!5946814 () Bool)

(assert (=> bm!343807 m!5946814))

(declare-fun m!5946816 () Bool)

(assert (=> b!4927922 m!5946816))

(assert (=> b!4927922 m!5946778))

(declare-fun m!5946818 () Bool)

(assert (=> b!4927929 m!5946818))

(assert (=> bm!343806 m!5946784))

(declare-fun m!5946820 () Bool)

(assert (=> b!4927921 m!5946820))

(assert (=> bm!343804 m!5946794))

(declare-fun m!5946822 () Bool)

(assert (=> bm!343810 m!5946822))

(assert (=> bm!343713 d!1586151))

(assert (=> b!4927227 d!1585913))

(declare-fun bs!1179941 () Bool)

(declare-fun d!1586153 () Bool)

(assert (= bs!1179941 (and d!1586153 d!1585811)))

(declare-fun lambda!245350 () Int)

(assert (=> bs!1179941 (= (= call!343724 call!343654) (= lambda!245350 lambda!245326))))

(declare-fun bs!1179942 () Bool)

(assert (= bs!1179942 (and d!1586153 d!1585821)))

(assert (=> bs!1179942 (= (= call!343724 call!343630) (= lambda!245350 lambda!245327))))

(declare-fun bs!1179943 () Bool)

(assert (= bs!1179943 (and d!1586153 d!1586131)))

(assert (=> bs!1179943 (= (= call!343724 call!343734) (= lambda!245350 lambda!245349))))

(assert (=> d!1586153 true))

(assert (=> d!1586153 (= (derivationStepZipper!592 call!343651 call!343724) (flatMap!267 call!343651 lambda!245350))))

(declare-fun bs!1179944 () Bool)

(assert (= bs!1179944 d!1586153))

(declare-fun m!5946824 () Bool)

(assert (=> bs!1179944 m!5946824))

(assert (=> bm!343723 d!1586153))

(declare-fun b!4927930 () Bool)

(declare-fun e!3078937 () List!56821)

(assert (=> b!4927930 (= e!3078937 lt!2027775)))

(declare-fun b!4927933 () Bool)

(declare-fun e!3078938 () Bool)

(declare-fun lt!2028136 () List!56821)

(assert (=> b!4927933 (= e!3078938 (or (not (= lt!2027775 Nil!56697)) (= lt!2028136 Nil!56697)))))

(declare-fun b!4927932 () Bool)

(declare-fun res!2103147 () Bool)

(assert (=> b!4927932 (=> (not res!2103147) (not e!3078938))))

(assert (=> b!4927932 (= res!2103147 (= (size!37489 lt!2028136) (+ (size!37489 Nil!56697) (size!37489 lt!2027775))))))

(declare-fun d!1586155 () Bool)

(assert (=> d!1586155 e!3078938))

(declare-fun res!2103148 () Bool)

(assert (=> d!1586155 (=> (not res!2103148) (not e!3078938))))

(assert (=> d!1586155 (= res!2103148 (= (content!10073 lt!2028136) ((_ map or) (content!10073 Nil!56697) (content!10073 lt!2027775))))))

(assert (=> d!1586155 (= lt!2028136 e!3078937)))

(declare-fun c!839577 () Bool)

(assert (=> d!1586155 (= c!839577 ((_ is Nil!56697) Nil!56697))))

(assert (=> d!1586155 (= (++!12330 Nil!56697 lt!2027775) lt!2028136)))

(declare-fun b!4927931 () Bool)

(assert (=> b!4927931 (= e!3078937 (Cons!56697 (h!63145 Nil!56697) (++!12330 (t!367283 Nil!56697) lt!2027775)))))

(assert (= (and d!1586155 c!839577) b!4927930))

(assert (= (and d!1586155 (not c!839577)) b!4927931))

(assert (= (and d!1586155 res!2103148) b!4927932))

(assert (= (and b!4927932 res!2103147) b!4927933))

(declare-fun m!5946826 () Bool)

(assert (=> b!4927932 m!5946826))

(assert (=> b!4927932 m!5944576))

(declare-fun m!5946828 () Bool)

(assert (=> b!4927932 m!5946828))

(declare-fun m!5946830 () Bool)

(assert (=> d!1586155 m!5946830))

(assert (=> d!1586155 m!5944740))

(declare-fun m!5946832 () Bool)

(assert (=> d!1586155 m!5946832))

(declare-fun m!5946834 () Bool)

(assert (=> b!4927931 m!5946834))

(assert (=> d!1585775 d!1586155))

(assert (=> d!1585775 d!1585801))

(assert (=> d!1585775 d!1585527))

(declare-fun d!1586157 () Bool)

(declare-fun lt!2028137 () C!26964)

(assert (=> d!1586157 (contains!19458 (tail!9671 lt!2027331) lt!2028137)))

(declare-fun e!3078940 () C!26964)

(assert (=> d!1586157 (= lt!2028137 e!3078940)))

(declare-fun c!839578 () Bool)

(assert (=> d!1586157 (= c!839578 (= (- 0 1) 0))))

(declare-fun e!3078939 () Bool)

(assert (=> d!1586157 e!3078939))

(declare-fun res!2103149 () Bool)

(assert (=> d!1586157 (=> (not res!2103149) (not e!3078939))))

(assert (=> d!1586157 (= res!2103149 (<= 0 (- 0 1)))))

(assert (=> d!1586157 (= (apply!13668 (tail!9671 lt!2027331) (- 0 1)) lt!2028137)))

(declare-fun b!4927934 () Bool)

(assert (=> b!4927934 (= e!3078939 (< (- 0 1) (size!37489 (tail!9671 lt!2027331))))))

(declare-fun b!4927935 () Bool)

(assert (=> b!4927935 (= e!3078940 (head!10524 (tail!9671 lt!2027331)))))

(declare-fun b!4927936 () Bool)

(assert (=> b!4927936 (= e!3078940 (apply!13668 (tail!9671 (tail!9671 lt!2027331)) (- (- 0 1) 1)))))

(assert (= (and d!1586157 res!2103149) b!4927934))

(assert (= (and d!1586157 c!839578) b!4927935))

(assert (= (and d!1586157 (not c!839578)) b!4927936))

(assert (=> d!1586157 m!5944916))

(declare-fun m!5946836 () Bool)

(assert (=> d!1586157 m!5946836))

(assert (=> b!4927934 m!5944916))

(declare-fun m!5946838 () Bool)

(assert (=> b!4927934 m!5946838))

(assert (=> b!4927935 m!5944916))

(declare-fun m!5946840 () Bool)

(assert (=> b!4927935 m!5946840))

(assert (=> b!4927936 m!5944916))

(declare-fun m!5946842 () Bool)

(assert (=> b!4927936 m!5946842))

(assert (=> b!4927936 m!5946842))

(declare-fun m!5946844 () Bool)

(assert (=> b!4927936 m!5946844))

(assert (=> b!4926841 d!1586157))

(declare-fun d!1586159 () Bool)

(assert (=> d!1586159 (= (tail!9671 lt!2027331) (t!367283 lt!2027331))))

(assert (=> b!4926841 d!1586159))

(declare-fun b!4927951 () Bool)

(declare-fun e!3078950 () Bool)

(declare-fun lt!2028140 () List!56821)

(declare-fun e!3078952 () Int)

(assert (=> b!4927951 (= e!3078950 (= (size!37489 lt!2028140) e!3078952))))

(declare-fun c!839585 () Bool)

(assert (=> b!4927951 (= c!839585 (<= (findLongestMatchInnerZipperFast!89 z!3559 Nil!56697 0 lt!2026995 input!5492 lt!2026996) 0))))

(declare-fun b!4927952 () Bool)

(declare-fun e!3078951 () List!56821)

(assert (=> b!4927952 (= e!3078951 Nil!56697)))

(declare-fun b!4927953 () Bool)

(declare-fun e!3078949 () Int)

(assert (=> b!4927953 (= e!3078949 (size!37489 (list!17959 input!5492)))))

(declare-fun b!4927954 () Bool)

(assert (=> b!4927954 (= e!3078952 0)))

(declare-fun b!4927955 () Bool)

(assert (=> b!4927955 (= e!3078952 e!3078949)))

(declare-fun c!839587 () Bool)

(assert (=> b!4927955 (= c!839587 (>= (findLongestMatchInnerZipperFast!89 z!3559 Nil!56697 0 lt!2026995 input!5492 lt!2026996) (size!37489 (list!17959 input!5492))))))

(declare-fun b!4927957 () Bool)

(assert (=> b!4927957 (= e!3078951 (Cons!56697 (h!63145 (list!17959 input!5492)) (take!580 (t!367283 (list!17959 input!5492)) (- (findLongestMatchInnerZipperFast!89 z!3559 Nil!56697 0 lt!2026995 input!5492 lt!2026996) 1))))))

(declare-fun d!1586161 () Bool)

(assert (=> d!1586161 e!3078950))

(declare-fun res!2103152 () Bool)

(assert (=> d!1586161 (=> (not res!2103152) (not e!3078950))))

(assert (=> d!1586161 (= res!2103152 (= ((_ map implies) (content!10073 lt!2028140) (content!10073 (list!17959 input!5492))) ((as const (InoxSet C!26964)) true)))))

(assert (=> d!1586161 (= lt!2028140 e!3078951)))

(declare-fun c!839586 () Bool)

(assert (=> d!1586161 (= c!839586 (or ((_ is Nil!56697) (list!17959 input!5492)) (<= (findLongestMatchInnerZipperFast!89 z!3559 Nil!56697 0 lt!2026995 input!5492 lt!2026996) 0)))))

(assert (=> d!1586161 (= (take!580 (list!17959 input!5492) (findLongestMatchInnerZipperFast!89 z!3559 Nil!56697 0 lt!2026995 input!5492 lt!2026996)) lt!2028140)))

(declare-fun b!4927956 () Bool)

(assert (=> b!4927956 (= e!3078949 (findLongestMatchInnerZipperFast!89 z!3559 Nil!56697 0 lt!2026995 input!5492 lt!2026996))))

(assert (= (and d!1586161 c!839586) b!4927952))

(assert (= (and d!1586161 (not c!839586)) b!4927957))

(assert (= (and d!1586161 res!2103152) b!4927951))

(assert (= (and b!4927951 c!839585) b!4927954))

(assert (= (and b!4927951 (not c!839585)) b!4927955))

(assert (= (and b!4927955 c!839587) b!4927953))

(assert (= (and b!4927955 (not c!839587)) b!4927956))

(declare-fun m!5946846 () Bool)

(assert (=> d!1586161 m!5946846))

(assert (=> d!1586161 m!5944346))

(declare-fun m!5946848 () Bool)

(assert (=> d!1586161 m!5946848))

(assert (=> b!4927955 m!5944346))

(assert (=> b!4927955 m!5944632))

(declare-fun m!5946850 () Bool)

(assert (=> b!4927951 m!5946850))

(assert (=> b!4927953 m!5944346))

(assert (=> b!4927953 m!5944632))

(declare-fun m!5946852 () Bool)

(assert (=> b!4927957 m!5946852))

(assert (=> b!4926887 d!1586161))

(assert (=> d!1585645 d!1585799))

(declare-fun d!1586163 () Bool)

(assert (=> d!1586163 (isPrefix!4965 lt!2026995 lt!2026995)))

(assert (=> d!1586163 true))

(declare-fun _$45!2223 () Unit!147242)

(assert (=> d!1586163 (= (choose!36095 lt!2026995 lt!2026995) _$45!2223)))

(declare-fun bs!1179945 () Bool)

(assert (= bs!1179945 d!1586163))

(assert (=> bs!1179945 m!5944696))

(assert (=> d!1585645 d!1586163))

(assert (=> b!4927232 d!1586031))

(declare-fun b!4927958 () Bool)

(declare-fun e!3078957 () List!56821)

(declare-fun e!3078955 () List!56821)

(assert (=> b!4927958 (= e!3078957 e!3078955)))

(declare-fun c!839590 () Bool)

(assert (=> b!4927958 (= c!839590 (<= (findLongestMatchInnerZipperFast!89 z!3559 Nil!56697 0 lt!2026995 input!5492 lt!2026996) 0))))

(declare-fun b!4927959 () Bool)

(declare-fun e!3078953 () Int)

(assert (=> b!4927959 (= e!3078953 0)))

(declare-fun b!4927960 () Bool)

(assert (=> b!4927960 (= e!3078957 Nil!56697)))

(declare-fun b!4927961 () Bool)

(declare-fun e!3078956 () Bool)

(declare-fun lt!2028141 () List!56821)

(declare-fun e!3078954 () Int)

(assert (=> b!4927961 (= e!3078956 (= (size!37489 lt!2028141) e!3078954))))

(declare-fun c!839591 () Bool)

(assert (=> b!4927961 (= c!839591 (<= (findLongestMatchInnerZipperFast!89 z!3559 Nil!56697 0 lt!2026995 input!5492 lt!2026996) 0))))

(declare-fun b!4927962 () Bool)

(assert (=> b!4927962 (= e!3078954 e!3078953)))

(declare-fun call!343816 () Int)

(declare-fun c!839589 () Bool)

(assert (=> b!4927962 (= c!839589 (>= (findLongestMatchInnerZipperFast!89 z!3559 Nil!56697 0 lt!2026995 input!5492 lt!2026996) call!343816))))

(declare-fun b!4927963 () Bool)

(assert (=> b!4927963 (= e!3078955 lt!2027737)))

(declare-fun b!4927964 () Bool)

(assert (=> b!4927964 (= e!3078954 call!343816)))

(declare-fun d!1586165 () Bool)

(assert (=> d!1586165 e!3078956))

(declare-fun res!2103153 () Bool)

(assert (=> d!1586165 (=> (not res!2103153) (not e!3078956))))

(assert (=> d!1586165 (= res!2103153 (= ((_ map implies) (content!10073 lt!2028141) (content!10073 lt!2027737)) ((as const (InoxSet C!26964)) true)))))

(assert (=> d!1586165 (= lt!2028141 e!3078957)))

(declare-fun c!839588 () Bool)

(assert (=> d!1586165 (= c!839588 ((_ is Nil!56697) lt!2027737))))

(assert (=> d!1586165 (= (drop!2227 lt!2027737 (findLongestMatchInnerZipperFast!89 z!3559 Nil!56697 0 lt!2026995 input!5492 lt!2026996)) lt!2028141)))

(declare-fun bm!343811 () Bool)

(assert (=> bm!343811 (= call!343816 (size!37489 lt!2027737))))

(declare-fun b!4927965 () Bool)

(assert (=> b!4927965 (= e!3078955 (drop!2227 (t!367283 lt!2027737) (- (findLongestMatchInnerZipperFast!89 z!3559 Nil!56697 0 lt!2026995 input!5492 lt!2026996) 1)))))

(declare-fun b!4927966 () Bool)

(assert (=> b!4927966 (= e!3078953 (- call!343816 (findLongestMatchInnerZipperFast!89 z!3559 Nil!56697 0 lt!2026995 input!5492 lt!2026996)))))

(assert (= (and d!1586165 c!839588) b!4927960))

(assert (= (and d!1586165 (not c!839588)) b!4927958))

(assert (= (and b!4927958 c!839590) b!4927963))

(assert (= (and b!4927958 (not c!839590)) b!4927965))

(assert (= (and d!1586165 res!2103153) b!4927961))

(assert (= (and b!4927961 c!839591) b!4927964))

(assert (= (and b!4927961 (not c!839591)) b!4927962))

(assert (= (and b!4927962 c!839589) b!4927959))

(assert (= (and b!4927962 (not c!839589)) b!4927966))

(assert (= (or b!4927964 b!4927962 b!4927966) bm!343811))

(declare-fun m!5946854 () Bool)

(assert (=> b!4927961 m!5946854))

(declare-fun m!5946856 () Bool)

(assert (=> d!1586165 m!5946856))

(declare-fun m!5946858 () Bool)

(assert (=> d!1586165 m!5946858))

(declare-fun m!5946860 () Bool)

(assert (=> bm!343811 m!5946860))

(declare-fun m!5946862 () Bool)

(assert (=> b!4927965 m!5946862))

(assert (=> b!4927232 d!1586165))

(declare-fun d!1586167 () Bool)

(assert (=> d!1586167 (= (slice!774 lt!2027737 (findLongestMatchInnerZipperFast!89 z!3559 Nil!56697 0 lt!2026995 input!5492 lt!2026996) call!343708) (take!580 (drop!2227 lt!2027737 (findLongestMatchInnerZipperFast!89 z!3559 Nil!56697 0 lt!2026995 input!5492 lt!2026996)) (- call!343708 (findLongestMatchInnerZipperFast!89 z!3559 Nil!56697 0 lt!2026995 input!5492 lt!2026996))))))

(declare-fun bs!1179946 () Bool)

(assert (= bs!1179946 d!1586167))

(assert (=> bs!1179946 m!5944352))

(assert (=> bs!1179946 m!5945504))

(assert (=> bs!1179946 m!5945504))

(declare-fun m!5946864 () Bool)

(assert (=> bs!1179946 m!5946864))

(assert (=> b!4927232 d!1586167))

(declare-fun d!1586169 () Bool)

(assert (=> d!1586169 (= (drop!2227 lt!2027737 (findLongestMatchInnerZipperFast!89 z!3559 Nil!56697 0 lt!2026995 input!5492 lt!2026996)) (slice!774 lt!2027737 (findLongestMatchInnerZipperFast!89 z!3559 Nil!56697 0 lt!2026995 input!5492 lt!2026996) (size!37489 lt!2027737)))))

(declare-fun lt!2028144 () Unit!147242)

(declare-fun choose!36109 (List!56821 Int) Unit!147242)

(assert (=> d!1586169 (= lt!2028144 (choose!36109 lt!2027737 (findLongestMatchInnerZipperFast!89 z!3559 Nil!56697 0 lt!2026995 input!5492 lt!2026996)))))

(declare-fun e!3078960 () Bool)

(assert (=> d!1586169 e!3078960))

(declare-fun res!2103156 () Bool)

(assert (=> d!1586169 (=> (not res!2103156) (not e!3078960))))

(assert (=> d!1586169 (= res!2103156 (<= 0 (findLongestMatchInnerZipperFast!89 z!3559 Nil!56697 0 lt!2026995 input!5492 lt!2026996)))))

(assert (=> d!1586169 (= (dropLemma!29 lt!2027737 (findLongestMatchInnerZipperFast!89 z!3559 Nil!56697 0 lt!2026995 input!5492 lt!2026996)) lt!2028144)))

(declare-fun b!4927969 () Bool)

(assert (=> b!4927969 (= e!3078960 (<= (findLongestMatchInnerZipperFast!89 z!3559 Nil!56697 0 lt!2026995 input!5492 lt!2026996) (size!37489 lt!2027737)))))

(assert (= (and d!1586169 res!2103156) b!4927969))

(assert (=> d!1586169 m!5944352))

(assert (=> d!1586169 m!5945504))

(assert (=> d!1586169 m!5946860))

(assert (=> d!1586169 m!5944352))

(assert (=> d!1586169 m!5946860))

(declare-fun m!5946866 () Bool)

(assert (=> d!1586169 m!5946866))

(assert (=> d!1586169 m!5944352))

(declare-fun m!5946868 () Bool)

(assert (=> d!1586169 m!5946868))

(assert (=> b!4927969 m!5946860))

(assert (=> b!4927232 d!1586169))

(declare-fun d!1586171 () Bool)

(declare-fun lt!2028147 () IArray!29813)

(assert (=> d!1586171 (= lt!2028147 (IArray!29814 (slice!774 (list!17963 (xs!18198 (c!839087 input!5492))) 0 (findLongestMatchInnerZipperFast!89 z!3559 Nil!56697 0 lt!2026995 input!5492 lt!2026996))))))

(declare-fun choose!36110 (IArray!29813 Int Int) IArray!29813)

(assert (=> d!1586171 (= lt!2028147 (choose!36110 (xs!18198 (c!839087 input!5492)) 0 (findLongestMatchInnerZipperFast!89 z!3559 Nil!56697 0 lt!2026995 input!5492 lt!2026996)))))

(declare-fun e!3078963 () Bool)

(assert (=> d!1586171 e!3078963))

(declare-fun res!2103159 () Bool)

(assert (=> d!1586171 (=> (not res!2103159) (not e!3078963))))

(assert (=> d!1586171 (= res!2103159 (and (<= 0 0) (<= 0 (findLongestMatchInnerZipperFast!89 z!3559 Nil!56697 0 lt!2026995 input!5492 lt!2026996))))))

(assert (=> d!1586171 (= (slice!775 (xs!18198 (c!839087 input!5492)) 0 (findLongestMatchInnerZipperFast!89 z!3559 Nil!56697 0 lt!2026995 input!5492 lt!2026996)) lt!2028147)))

(declare-fun b!4927972 () Bool)

(declare-fun size!37493 (IArray!29813) Int)

(assert (=> b!4927972 (= e!3078963 (<= (findLongestMatchInnerZipperFast!89 z!3559 Nil!56697 0 lt!2026995 input!5492 lt!2026996) (size!37493 (xs!18198 (c!839087 input!5492)))))))

(assert (= (and d!1586171 res!2103159) b!4927972))

(assert (=> d!1586171 m!5945112))

(assert (=> d!1586171 m!5945112))

(assert (=> d!1586171 m!5944352))

(declare-fun m!5946870 () Bool)

(assert (=> d!1586171 m!5946870))

(assert (=> d!1586171 m!5944352))

(declare-fun m!5946872 () Bool)

(assert (=> d!1586171 m!5946872))

(declare-fun m!5946874 () Bool)

(assert (=> b!4927972 m!5946874))

(assert (=> b!4927232 d!1586171))

(declare-fun lt!2028148 () IArray!29813)

(declare-fun d!1586173 () Bool)

(assert (=> d!1586173 (= lt!2028148 (IArray!29814 (slice!774 (list!17963 (xs!18198 (c!839087 input!5492))) (findLongestMatchInnerZipperFast!89 z!3559 Nil!56697 0 lt!2026995 input!5492 lt!2026996) (csize!29983 (c!839087 input!5492)))))))

(assert (=> d!1586173 (= lt!2028148 (choose!36110 (xs!18198 (c!839087 input!5492)) (findLongestMatchInnerZipperFast!89 z!3559 Nil!56697 0 lt!2026995 input!5492 lt!2026996) (csize!29983 (c!839087 input!5492))))))

(declare-fun e!3078964 () Bool)

(assert (=> d!1586173 e!3078964))

(declare-fun res!2103160 () Bool)

(assert (=> d!1586173 (=> (not res!2103160) (not e!3078964))))

(assert (=> d!1586173 (= res!2103160 (and (<= 0 (findLongestMatchInnerZipperFast!89 z!3559 Nil!56697 0 lt!2026995 input!5492 lt!2026996)) (<= (findLongestMatchInnerZipperFast!89 z!3559 Nil!56697 0 lt!2026995 input!5492 lt!2026996) (csize!29983 (c!839087 input!5492)))))))

(assert (=> d!1586173 (= (slice!775 (xs!18198 (c!839087 input!5492)) (findLongestMatchInnerZipperFast!89 z!3559 Nil!56697 0 lt!2026995 input!5492 lt!2026996) (csize!29983 (c!839087 input!5492))) lt!2028148)))

(declare-fun b!4927973 () Bool)

(assert (=> b!4927973 (= e!3078964 (<= (csize!29983 (c!839087 input!5492)) (size!37493 (xs!18198 (c!839087 input!5492)))))))

(assert (= (and d!1586173 res!2103160) b!4927973))

(assert (=> d!1586173 m!5945112))

(assert (=> d!1586173 m!5945112))

(assert (=> d!1586173 m!5944352))

(declare-fun m!5946876 () Bool)

(assert (=> d!1586173 m!5946876))

(assert (=> d!1586173 m!5944352))

(declare-fun m!5946878 () Bool)

(assert (=> d!1586173 m!5946878))

(assert (=> b!4927973 m!5946874))

(assert (=> b!4927232 d!1586173))

(declare-fun d!1586175 () Bool)

(declare-fun c!839592 () Bool)

(assert (=> d!1586175 (= c!839592 ((_ is Nil!56697) lt!2027602))))

(declare-fun e!3078965 () (InoxSet C!26964))

(assert (=> d!1586175 (= (content!10073 lt!2027602) e!3078965)))

(declare-fun b!4927974 () Bool)

(assert (=> b!4927974 (= e!3078965 ((as const (Array C!26964 Bool)) false))))

(declare-fun b!4927975 () Bool)

(assert (=> b!4927975 (= e!3078965 ((_ map or) (store ((as const (Array C!26964 Bool)) false) (h!63145 lt!2027602) true) (content!10073 (t!367283 lt!2027602))))))

(assert (= (and d!1586175 c!839592) b!4927974))

(assert (= (and d!1586175 (not c!839592)) b!4927975))

(declare-fun m!5946880 () Bool)

(assert (=> b!4927975 m!5946880))

(declare-fun m!5946882 () Bool)

(assert (=> b!4927975 m!5946882))

(assert (=> d!1585637 d!1586175))

(assert (=> d!1585637 d!1585931))

(declare-fun d!1586177 () Bool)

(declare-fun c!839593 () Bool)

(assert (=> d!1586177 (= c!839593 ((_ is Nil!56697) (Cons!56697 (head!10524 lt!2026995) Nil!56697)))))

(declare-fun e!3078966 () (InoxSet C!26964))

(assert (=> d!1586177 (= (content!10073 (Cons!56697 (head!10524 lt!2026995) Nil!56697)) e!3078966)))

(declare-fun b!4927976 () Bool)

(assert (=> b!4927976 (= e!3078966 ((as const (Array C!26964 Bool)) false))))

(declare-fun b!4927977 () Bool)

(assert (=> b!4927977 (= e!3078966 ((_ map or) (store ((as const (Array C!26964 Bool)) false) (h!63145 (Cons!56697 (head!10524 lt!2026995) Nil!56697)) true) (content!10073 (t!367283 (Cons!56697 (head!10524 lt!2026995) Nil!56697)))))))

(assert (= (and d!1586177 c!839593) b!4927976))

(assert (= (and d!1586177 (not c!839593)) b!4927977))

(declare-fun m!5946884 () Bool)

(assert (=> b!4927977 m!5946884))

(declare-fun m!5946886 () Bool)

(assert (=> b!4927977 m!5946886))

(assert (=> d!1585637 d!1586177))

(declare-fun b!4927978 () Bool)

(declare-fun res!2103163 () Bool)

(declare-fun e!3078968 () Bool)

(assert (=> b!4927978 (=> (not res!2103163) (not e!3078968))))

(assert (=> b!4927978 (= res!2103163 (isBalanced!4089 (left!41344 (left!41344 (c!839087 (_2!33900 lt!2027359))))))))

(declare-fun b!4927979 () Bool)

(declare-fun res!2103166 () Bool)

(assert (=> b!4927979 (=> (not res!2103166) (not e!3078968))))

(assert (=> b!4927979 (= res!2103166 (<= (- (height!1986 (left!41344 (left!41344 (c!839087 (_2!33900 lt!2027359))))) (height!1986 (right!41674 (left!41344 (c!839087 (_2!33900 lt!2027359)))))) 1))))

(declare-fun b!4927980 () Bool)

(declare-fun res!2103165 () Bool)

(assert (=> b!4927980 (=> (not res!2103165) (not e!3078968))))

(assert (=> b!4927980 (= res!2103165 (not (isEmpty!30583 (left!41344 (left!41344 (c!839087 (_2!33900 lt!2027359)))))))))

(declare-fun b!4927981 () Bool)

(declare-fun res!2103162 () Bool)

(assert (=> b!4927981 (=> (not res!2103162) (not e!3078968))))

(assert (=> b!4927981 (= res!2103162 (isBalanced!4089 (right!41674 (left!41344 (c!839087 (_2!33900 lt!2027359))))))))

(declare-fun b!4927982 () Bool)

(declare-fun e!3078967 () Bool)

(assert (=> b!4927982 (= e!3078967 e!3078968)))

(declare-fun res!2103161 () Bool)

(assert (=> b!4927982 (=> (not res!2103161) (not e!3078968))))

(assert (=> b!4927982 (= res!2103161 (<= (- 1) (- (height!1986 (left!41344 (left!41344 (c!839087 (_2!33900 lt!2027359))))) (height!1986 (right!41674 (left!41344 (c!839087 (_2!33900 lt!2027359))))))))))

(declare-fun d!1586179 () Bool)

(declare-fun res!2103164 () Bool)

(assert (=> d!1586179 (=> res!2103164 e!3078967)))

(assert (=> d!1586179 (= res!2103164 (not ((_ is Node!14876) (left!41344 (c!839087 (_2!33900 lt!2027359))))))))

(assert (=> d!1586179 (= (isBalanced!4089 (left!41344 (c!839087 (_2!33900 lt!2027359)))) e!3078967)))

(declare-fun b!4927983 () Bool)

(assert (=> b!4927983 (= e!3078968 (not (isEmpty!30583 (right!41674 (left!41344 (c!839087 (_2!33900 lt!2027359)))))))))

(assert (= (and d!1586179 (not res!2103164)) b!4927982))

(assert (= (and b!4927982 res!2103161) b!4927979))

(assert (= (and b!4927979 res!2103166) b!4927978))

(assert (= (and b!4927978 res!2103163) b!4927981))

(assert (= (and b!4927981 res!2103162) b!4927980))

(assert (= (and b!4927980 res!2103165) b!4927983))

(declare-fun m!5946888 () Bool)

(assert (=> b!4927980 m!5946888))

(declare-fun m!5946890 () Bool)

(assert (=> b!4927981 m!5946890))

(declare-fun m!5946892 () Bool)

(assert (=> b!4927979 m!5946892))

(declare-fun m!5946894 () Bool)

(assert (=> b!4927979 m!5946894))

(assert (=> b!4927982 m!5946892))

(assert (=> b!4927982 m!5946894))

(declare-fun m!5946896 () Bool)

(assert (=> b!4927983 m!5946896))

(declare-fun m!5946898 () Bool)

(assert (=> b!4927978 m!5946898))

(assert (=> b!4927335 d!1586179))

(declare-fun d!1586181 () Bool)

(declare-fun res!2103167 () Bool)

(declare-fun e!3078969 () Bool)

(assert (=> d!1586181 (=> (not res!2103167) (not e!3078969))))

(assert (=> d!1586181 (= res!2103167 (<= (size!37489 (list!17963 (xs!18198 (left!41344 (c!839087 input!5492))))) 512))))

(assert (=> d!1586181 (= (inv!73499 (left!41344 (c!839087 input!5492))) e!3078969)))

(declare-fun b!4927984 () Bool)

(declare-fun res!2103168 () Bool)

(assert (=> b!4927984 (=> (not res!2103168) (not e!3078969))))

(assert (=> b!4927984 (= res!2103168 (= (csize!29983 (left!41344 (c!839087 input!5492))) (size!37489 (list!17963 (xs!18198 (left!41344 (c!839087 input!5492)))))))))

(declare-fun b!4927985 () Bool)

(assert (=> b!4927985 (= e!3078969 (and (> (csize!29983 (left!41344 (c!839087 input!5492))) 0) (<= (csize!29983 (left!41344 (c!839087 input!5492))) 512)))))

(assert (= (and d!1586181 res!2103167) b!4927984))

(assert (= (and b!4927984 res!2103168) b!4927985))

(assert (=> d!1586181 m!5946148))

(assert (=> d!1586181 m!5946148))

(declare-fun m!5946900 () Bool)

(assert (=> d!1586181 m!5946900))

(assert (=> b!4927984 m!5946148))

(assert (=> b!4927984 m!5946148))

(assert (=> b!4927984 m!5946900))

(assert (=> b!4927376 d!1586181))

(declare-fun d!1586183 () Bool)

(declare-fun lt!2028149 () Int)

(assert (=> d!1586183 (>= lt!2028149 0)))

(declare-fun e!3078970 () Int)

(assert (=> d!1586183 (= lt!2028149 e!3078970)))

(declare-fun c!839594 () Bool)

(assert (=> d!1586183 (= c!839594 ((_ is Nil!56697) (t!367283 lt!2026998)))))

(assert (=> d!1586183 (= (size!37489 (t!367283 lt!2026998)) lt!2028149)))

(declare-fun b!4927986 () Bool)

(assert (=> b!4927986 (= e!3078970 0)))

(declare-fun b!4927987 () Bool)

(assert (=> b!4927987 (= e!3078970 (+ 1 (size!37489 (t!367283 (t!367283 lt!2026998)))))))

(assert (= (and d!1586183 c!839594) b!4927986))

(assert (= (and d!1586183 (not c!839594)) b!4927987))

(declare-fun m!5946902 () Bool)

(assert (=> b!4927987 m!5946902))

(assert (=> b!4927332 d!1586183))

(declare-fun d!1586185 () Bool)

(declare-fun lt!2028150 () Int)

(assert (=> d!1586185 (>= lt!2028150 0)))

(declare-fun e!3078971 () Int)

(assert (=> d!1586185 (= lt!2028150 e!3078971)))

(declare-fun c!839595 () Bool)

(assert (=> d!1586185 (= c!839595 ((_ is Nil!56697) (t!367283 lt!2027349)))))

(assert (=> d!1586185 (= (size!37489 (t!367283 lt!2027349)) lt!2028150)))

(declare-fun b!4927988 () Bool)

(assert (=> b!4927988 (= e!3078971 0)))

(declare-fun b!4927989 () Bool)

(assert (=> b!4927989 (= e!3078971 (+ 1 (size!37489 (t!367283 (t!367283 lt!2027349)))))))

(assert (= (and d!1586185 c!839595) b!4927988))

(assert (= (and d!1586185 (not c!839595)) b!4927989))

(declare-fun m!5946904 () Bool)

(assert (=> b!4927989 m!5946904))

(assert (=> b!4927330 d!1586185))

(declare-fun d!1586187 () Bool)

(declare-fun lt!2028151 () Int)

(assert (=> d!1586187 (>= lt!2028151 0)))

(declare-fun e!3078972 () Int)

(assert (=> d!1586187 (= lt!2028151 e!3078972)))

(declare-fun c!839596 () Bool)

(assert (=> d!1586187 (= c!839596 ((_ is Nil!56697) lt!2027520))))

(assert (=> d!1586187 (= (size!37489 lt!2027520) lt!2028151)))

(declare-fun b!4927990 () Bool)

(assert (=> b!4927990 (= e!3078972 0)))

(declare-fun b!4927991 () Bool)

(assert (=> b!4927991 (= e!3078972 (+ 1 (size!37489 (t!367283 lt!2027520))))))

(assert (= (and d!1586187 c!839596) b!4927990))

(assert (= (and d!1586187 (not c!839596)) b!4927991))

(declare-fun m!5946906 () Bool)

(assert (=> b!4927991 m!5946906))

(assert (=> b!4926819 d!1586187))

(assert (=> b!4926819 d!1585527))

(declare-fun d!1586189 () Bool)

(declare-fun lt!2028152 () Int)

(assert (=> d!1586189 (>= lt!2028152 0)))

(declare-fun e!3078973 () Int)

(assert (=> d!1586189 (= lt!2028152 e!3078973)))

(declare-fun c!839597 () Bool)

(assert (=> d!1586189 (= c!839597 ((_ is Nil!56697) (Cons!56697 lt!2027340 Nil!56697)))))

(assert (=> d!1586189 (= (size!37489 (Cons!56697 lt!2027340 Nil!56697)) lt!2028152)))

(declare-fun b!4927992 () Bool)

(assert (=> b!4927992 (= e!3078973 0)))

(declare-fun b!4927993 () Bool)

(assert (=> b!4927993 (= e!3078973 (+ 1 (size!37489 (t!367283 (Cons!56697 lt!2027340 Nil!56697)))))))

(assert (= (and d!1586189 c!839597) b!4927992))

(assert (= (and d!1586189 (not c!839597)) b!4927993))

(declare-fun m!5946908 () Bool)

(assert (=> b!4927993 m!5946908))

(assert (=> b!4926819 d!1586189))

(declare-fun d!1586191 () Bool)

(assert (=> d!1586191 (= (list!17959 (_1!33900 lt!2027466)) (list!17961 (c!839087 (_1!33900 lt!2027466))))))

(declare-fun bs!1179947 () Bool)

(assert (= bs!1179947 d!1586191))

(declare-fun m!5946910 () Bool)

(assert (=> bs!1179947 m!5946910))

(assert (=> b!4926759 d!1586191))

(declare-fun d!1586193 () Bool)

(assert (=> d!1586193 (= (list!17959 (_2!33900 lt!2027466)) (list!17961 (c!839087 (_2!33900 lt!2027466))))))

(declare-fun bs!1179948 () Bool)

(assert (= bs!1179948 d!1586193))

(declare-fun m!5946912 () Bool)

(assert (=> bs!1179948 m!5946912))

(assert (=> b!4926759 d!1586193))

(declare-fun d!1586195 () Bool)

(declare-fun e!3078976 () Bool)

(assert (=> d!1586195 e!3078976))

(declare-fun res!2103169 () Bool)

(assert (=> d!1586195 (=> (not res!2103169) (not e!3078976))))

(declare-fun lt!2028153 () tuple2!61192)

(assert (=> d!1586195 (= res!2103169 (= (++!12330 (_1!33899 lt!2028153) (_2!33899 lt!2028153)) (list!17959 input!5492)))))

(declare-fun e!3078975 () tuple2!61192)

(assert (=> d!1586195 (= lt!2028153 e!3078975)))

(declare-fun c!839598 () Bool)

(assert (=> d!1586195 (= c!839598 ((_ is Nil!56697) (list!17959 input!5492)))))

(assert (=> d!1586195 (= (splitAtIndex!105 (list!17959 input!5492) 0) lt!2028153)))

(declare-fun b!4927994 () Bool)

(declare-fun e!3078974 () tuple2!61192)

(assert (=> b!4927994 (= e!3078974 (tuple2!61193 Nil!56697 (list!17959 input!5492)))))

(declare-fun b!4927995 () Bool)

(assert (=> b!4927995 (= e!3078975 (tuple2!61193 Nil!56697 Nil!56697))))

(declare-fun b!4927996 () Bool)

(assert (=> b!4927996 (= e!3078976 (= (_2!33899 lt!2028153) (drop!2227 (list!17959 input!5492) 0)))))

(declare-fun b!4927997 () Bool)

(declare-fun lt!2028154 () tuple2!61192)

(assert (=> b!4927997 (= lt!2028154 (splitAtIndex!105 (t!367283 (list!17959 input!5492)) (- 0 1)))))

(assert (=> b!4927997 (= e!3078974 (tuple2!61193 (Cons!56697 (h!63145 (list!17959 input!5492)) (_1!33899 lt!2028154)) (_2!33899 lt!2028154)))))

(declare-fun b!4927998 () Bool)

(assert (=> b!4927998 (= e!3078975 e!3078974)))

(declare-fun c!839599 () Bool)

(assert (=> b!4927998 (= c!839599 (<= 0 0))))

(declare-fun b!4927999 () Bool)

(declare-fun res!2103170 () Bool)

(assert (=> b!4927999 (=> (not res!2103170) (not e!3078976))))

(assert (=> b!4927999 (= res!2103170 (= (_1!33899 lt!2028153) (take!580 (list!17959 input!5492) 0)))))

(assert (= (and d!1586195 c!839598) b!4927995))

(assert (= (and d!1586195 (not c!839598)) b!4927998))

(assert (= (and b!4927998 c!839599) b!4927994))

(assert (= (and b!4927998 (not c!839599)) b!4927997))

(assert (= (and d!1586195 res!2103169) b!4927999))

(assert (= (and b!4927999 res!2103170) b!4927996))

(declare-fun m!5946914 () Bool)

(assert (=> d!1586195 m!5946914))

(assert (=> b!4927996 m!5944346))

(declare-fun m!5946916 () Bool)

(assert (=> b!4927996 m!5946916))

(declare-fun m!5946918 () Bool)

(assert (=> b!4927997 m!5946918))

(assert (=> b!4927999 m!5944346))

(declare-fun m!5946920 () Bool)

(assert (=> b!4927999 m!5946920))

(assert (=> b!4926759 d!1586195))

(assert (=> b!4926759 d!1585489))

(declare-fun d!1586197 () Bool)

(assert (=> d!1586197 (= (head!10524 (ite c!839148 lt!2027318 lt!2027308)) (h!63145 (ite c!839148 lt!2027318 lt!2027308)))))

(assert (=> b!4926964 d!1586197))

(declare-fun d!1586199 () Bool)

(assert (=> d!1586199 (= (head!10524 (ite c!839148 lt!2027309 lt!2027343)) (h!63145 (ite c!839148 lt!2027309 lt!2027343)))))

(assert (=> b!4926964 d!1586199))

(declare-fun b!4928003 () Bool)

(declare-fun e!3078978 () List!56821)

(assert (=> b!4928003 (= e!3078978 (++!12330 (list!17961 (left!41344 (_1!33902 lt!2027728))) (list!17961 (right!41674 (_1!33902 lt!2027728)))))))

(declare-fun b!4928002 () Bool)

(assert (=> b!4928002 (= e!3078978 (list!17963 (xs!18198 (_1!33902 lt!2027728))))))

(declare-fun d!1586201 () Bool)

(declare-fun c!839600 () Bool)

(assert (=> d!1586201 (= c!839600 ((_ is Empty!14876) (_1!33902 lt!2027728)))))

(declare-fun e!3078977 () List!56821)

(assert (=> d!1586201 (= (list!17961 (_1!33902 lt!2027728)) e!3078977)))

(declare-fun b!4928000 () Bool)

(assert (=> b!4928000 (= e!3078977 Nil!56697)))

(declare-fun b!4928001 () Bool)

(assert (=> b!4928001 (= e!3078977 e!3078978)))

(declare-fun c!839601 () Bool)

(assert (=> b!4928001 (= c!839601 ((_ is Leaf!24747) (_1!33902 lt!2027728)))))

(assert (= (and d!1586201 c!839600) b!4928000))

(assert (= (and d!1586201 (not c!839600)) b!4928001))

(assert (= (and b!4928001 c!839601) b!4928002))

(assert (= (and b!4928001 (not c!839601)) b!4928003))

(declare-fun m!5946922 () Bool)

(assert (=> b!4928003 m!5946922))

(declare-fun m!5946924 () Bool)

(assert (=> b!4928003 m!5946924))

(assert (=> b!4928003 m!5946922))

(assert (=> b!4928003 m!5946924))

(declare-fun m!5946926 () Bool)

(assert (=> b!4928003 m!5946926))

(declare-fun m!5946928 () Bool)

(assert (=> b!4928002 m!5946928))

(assert (=> b!4927245 d!1586201))

(declare-fun b!4928007 () Bool)

(declare-fun e!3078980 () List!56821)

(assert (=> b!4928007 (= e!3078980 (++!12330 (list!17961 (left!41344 (_2!33902 lt!2027728))) (list!17961 (right!41674 (_2!33902 lt!2027728)))))))

(declare-fun b!4928006 () Bool)

(assert (=> b!4928006 (= e!3078980 (list!17963 (xs!18198 (_2!33902 lt!2027728))))))

(declare-fun d!1586203 () Bool)

(declare-fun c!839602 () Bool)

(assert (=> d!1586203 (= c!839602 ((_ is Empty!14876) (_2!33902 lt!2027728)))))

(declare-fun e!3078979 () List!56821)

(assert (=> d!1586203 (= (list!17961 (_2!33902 lt!2027728)) e!3078979)))

(declare-fun b!4928004 () Bool)

(assert (=> b!4928004 (= e!3078979 Nil!56697)))

(declare-fun b!4928005 () Bool)

(assert (=> b!4928005 (= e!3078979 e!3078980)))

(declare-fun c!839603 () Bool)

(assert (=> b!4928005 (= c!839603 ((_ is Leaf!24747) (_2!33902 lt!2027728)))))

(assert (= (and d!1586203 c!839602) b!4928004))

(assert (= (and d!1586203 (not c!839602)) b!4928005))

(assert (= (and b!4928005 c!839603) b!4928006))

(assert (= (and b!4928005 (not c!839603)) b!4928007))

(declare-fun m!5946930 () Bool)

(assert (=> b!4928007 m!5946930))

(declare-fun m!5946932 () Bool)

(assert (=> b!4928007 m!5946932))

(assert (=> b!4928007 m!5946930))

(assert (=> b!4928007 m!5946932))

(declare-fun m!5946934 () Bool)

(assert (=> b!4928007 m!5946934))

(declare-fun m!5946936 () Bool)

(assert (=> b!4928006 m!5946936))

(assert (=> b!4927245 d!1586203))

(declare-fun d!1586205 () Bool)

(declare-fun e!3078983 () Bool)

(assert (=> d!1586205 e!3078983))

(declare-fun res!2103171 () Bool)

(assert (=> d!1586205 (=> (not res!2103171) (not e!3078983))))

(declare-fun lt!2028155 () tuple2!61192)

(assert (=> d!1586205 (= res!2103171 (= (++!12330 (_1!33899 lt!2028155) (_2!33899 lt!2028155)) (list!17961 (c!839087 input!5492))))))

(declare-fun e!3078982 () tuple2!61192)

(assert (=> d!1586205 (= lt!2028155 e!3078982)))

(declare-fun c!839604 () Bool)

(assert (=> d!1586205 (= c!839604 ((_ is Nil!56697) (list!17961 (c!839087 input!5492))))))

(assert (=> d!1586205 (= (splitAtIndex!105 (list!17961 (c!839087 input!5492)) (findLongestMatchInnerZipperFast!89 z!3559 Nil!56697 0 lt!2026995 input!5492 lt!2026996)) lt!2028155)))

(declare-fun b!4928008 () Bool)

(declare-fun e!3078981 () tuple2!61192)

(assert (=> b!4928008 (= e!3078981 (tuple2!61193 Nil!56697 (list!17961 (c!839087 input!5492))))))

(declare-fun b!4928009 () Bool)

(assert (=> b!4928009 (= e!3078982 (tuple2!61193 Nil!56697 Nil!56697))))

(declare-fun b!4928010 () Bool)

(assert (=> b!4928010 (= e!3078983 (= (_2!33899 lt!2028155) (drop!2227 (list!17961 (c!839087 input!5492)) (findLongestMatchInnerZipperFast!89 z!3559 Nil!56697 0 lt!2026995 input!5492 lt!2026996))))))

(declare-fun b!4928011 () Bool)

(declare-fun lt!2028156 () tuple2!61192)

(assert (=> b!4928011 (= lt!2028156 (splitAtIndex!105 (t!367283 (list!17961 (c!839087 input!5492))) (- (findLongestMatchInnerZipperFast!89 z!3559 Nil!56697 0 lt!2026995 input!5492 lt!2026996) 1)))))

(assert (=> b!4928011 (= e!3078981 (tuple2!61193 (Cons!56697 (h!63145 (list!17961 (c!839087 input!5492))) (_1!33899 lt!2028156)) (_2!33899 lt!2028156)))))

(declare-fun b!4928012 () Bool)

(assert (=> b!4928012 (= e!3078982 e!3078981)))

(declare-fun c!839605 () Bool)

(assert (=> b!4928012 (= c!839605 (<= (findLongestMatchInnerZipperFast!89 z!3559 Nil!56697 0 lt!2026995 input!5492 lt!2026996) 0))))

(declare-fun b!4928013 () Bool)

(declare-fun res!2103172 () Bool)

(assert (=> b!4928013 (=> (not res!2103172) (not e!3078983))))

(assert (=> b!4928013 (= res!2103172 (= (_1!33899 lt!2028155) (take!580 (list!17961 (c!839087 input!5492)) (findLongestMatchInnerZipperFast!89 z!3559 Nil!56697 0 lt!2026995 input!5492 lt!2026996))))))

(assert (= (and d!1586205 c!839604) b!4928009))

(assert (= (and d!1586205 (not c!839604)) b!4928012))

(assert (= (and b!4928012 c!839605) b!4928008))

(assert (= (and b!4928012 (not c!839605)) b!4928011))

(assert (= (and d!1586205 res!2103171) b!4928013))

(assert (= (and b!4928013 res!2103172) b!4928010))

(declare-fun m!5946938 () Bool)

(assert (=> d!1586205 m!5946938))

(assert (=> b!4928010 m!5944706))

(assert (=> b!4928010 m!5944352))

(declare-fun m!5946940 () Bool)

(assert (=> b!4928010 m!5946940))

(declare-fun m!5946942 () Bool)

(assert (=> b!4928011 m!5946942))

(assert (=> b!4928013 m!5944706))

(assert (=> b!4928013 m!5944352))

(declare-fun m!5946944 () Bool)

(assert (=> b!4928013 m!5946944))

(assert (=> b!4927245 d!1586205))

(assert (=> b!4927245 d!1585621))

(declare-fun d!1586207 () Bool)

(declare-fun lt!2028157 () Int)

(assert (=> d!1586207 (>= lt!2028157 0)))

(declare-fun e!3078984 () Int)

(assert (=> d!1586207 (= lt!2028157 e!3078984)))

(declare-fun c!839606 () Bool)

(assert (=> d!1586207 (= c!839606 ((_ is Nil!56697) (list!17963 (xs!18198 (c!839087 input!5492)))))))

(assert (=> d!1586207 (= (size!37489 (list!17963 (xs!18198 (c!839087 input!5492)))) lt!2028157)))

(declare-fun b!4928014 () Bool)

(assert (=> b!4928014 (= e!3078984 0)))

(declare-fun b!4928015 () Bool)

(assert (=> b!4928015 (= e!3078984 (+ 1 (size!37489 (t!367283 (list!17963 (xs!18198 (c!839087 input!5492)))))))))

(assert (= (and d!1586207 c!839606) b!4928014))

(assert (= (and d!1586207 (not c!839606)) b!4928015))

(declare-fun m!5946946 () Bool)

(assert (=> b!4928015 m!5946946))

(assert (=> d!1585829 d!1586207))

(assert (=> d!1585829 d!1586031))

(assert (=> d!1585631 d!1585527))

(assert (=> d!1585631 d!1585629))

(declare-fun d!1586209 () Bool)

(assert (=> d!1586209 (<= (size!37489 Nil!56697) (size!37489 lt!2026995))))

(assert (=> d!1586209 true))

(declare-fun _$64!614 () Unit!147242)

(assert (=> d!1586209 (= (choose!36089 Nil!56697 lt!2026995) _$64!614)))

(declare-fun bs!1179949 () Bool)

(assert (= bs!1179949 d!1586209))

(assert (=> bs!1179949 m!5944576))

(assert (=> bs!1179949 m!5944674))

(assert (=> d!1585631 d!1586209))

(declare-fun b!4928019 () Bool)

(declare-fun e!3078987 () Bool)

(assert (=> b!4928019 (= e!3078987 (>= (size!37489 lt!2026995) (size!37489 Nil!56697)))))

(declare-fun d!1586211 () Bool)

(assert (=> d!1586211 e!3078987))

(declare-fun res!2103173 () Bool)

(assert (=> d!1586211 (=> res!2103173 e!3078987)))

(declare-fun lt!2028158 () Bool)

(assert (=> d!1586211 (= res!2103173 (not lt!2028158))))

(declare-fun e!3078986 () Bool)

(assert (=> d!1586211 (= lt!2028158 e!3078986)))

(declare-fun res!2103175 () Bool)

(assert (=> d!1586211 (=> res!2103175 e!3078986)))

(assert (=> d!1586211 (= res!2103175 ((_ is Nil!56697) Nil!56697))))

(assert (=> d!1586211 (= (isPrefix!4965 Nil!56697 lt!2026995) lt!2028158)))

(declare-fun b!4928017 () Bool)

(declare-fun res!2103174 () Bool)

(declare-fun e!3078985 () Bool)

(assert (=> b!4928017 (=> (not res!2103174) (not e!3078985))))

(assert (=> b!4928017 (= res!2103174 (= (head!10524 Nil!56697) (head!10524 lt!2026995)))))

(declare-fun b!4928016 () Bool)

(assert (=> b!4928016 (= e!3078986 e!3078985)))

(declare-fun res!2103176 () Bool)

(assert (=> b!4928016 (=> (not res!2103176) (not e!3078985))))

(assert (=> b!4928016 (= res!2103176 (not ((_ is Nil!56697) lt!2026995)))))

(declare-fun b!4928018 () Bool)

(assert (=> b!4928018 (= e!3078985 (isPrefix!4965 (tail!9671 Nil!56697) (tail!9671 lt!2026995)))))

(assert (= (and d!1586211 (not res!2103175)) b!4928016))

(assert (= (and b!4928016 res!2103176) b!4928017))

(assert (= (and b!4928017 res!2103174) b!4928018))

(assert (= (and d!1586211 (not res!2103173)) b!4928019))

(assert (=> b!4928019 m!5944674))

(assert (=> b!4928019 m!5944576))

(assert (=> b!4928017 m!5945062))

(assert (=> b!4928017 m!5944672))

(assert (=> b!4928018 m!5945066))

(assert (=> b!4928018 m!5944554))

(assert (=> b!4928018 m!5945066))

(assert (=> b!4928018 m!5944554))

(declare-fun m!5946948 () Bool)

(assert (=> b!4928018 m!5946948))

(assert (=> d!1585631 d!1586211))

(assert (=> d!1585515 d!1585513))

(assert (=> d!1585515 d!1585523))

(assert (=> d!1585515 d!1585543))

(declare-fun d!1586213 () Bool)

(assert (=> d!1586213 (= (head!10524 (drop!2227 lt!2027331 0)) (apply!13668 lt!2027331 0))))

(assert (=> d!1586213 true))

(declare-fun _$27!1660 () Unit!147242)

(assert (=> d!1586213 (= (choose!36086 lt!2027331 0) _$27!1660)))

(declare-fun bs!1179950 () Bool)

(assert (= bs!1179950 d!1586213))

(assert (=> bs!1179950 m!5944544))

(assert (=> bs!1179950 m!5944544))

(assert (=> bs!1179950 m!5944546))

(assert (=> bs!1179950 m!5944564))

(assert (=> d!1585515 d!1586213))

(assert (=> b!4927258 d!1585871))

(assert (=> b!4927258 d!1585873))

(declare-fun b!4928020 () Bool)

(declare-fun e!3078988 () List!56821)

(assert (=> b!4928020 (= e!3078988 (Cons!56697 call!343734 Nil!56697))))

(declare-fun lt!2028159 () List!56821)

(declare-fun e!3078989 () Bool)

(declare-fun b!4928023 () Bool)

(assert (=> b!4928023 (= e!3078989 (or (not (= (Cons!56697 call!343734 Nil!56697) Nil!56697)) (= lt!2028159 call!343633)))))

(declare-fun b!4928022 () Bool)

(declare-fun res!2103177 () Bool)

(assert (=> b!4928022 (=> (not res!2103177) (not e!3078989))))

(assert (=> b!4928022 (= res!2103177 (= (size!37489 lt!2028159) (+ (size!37489 call!343633) (size!37489 (Cons!56697 call!343734 Nil!56697)))))))

(declare-fun d!1586215 () Bool)

(assert (=> d!1586215 e!3078989))

(declare-fun res!2103178 () Bool)

(assert (=> d!1586215 (=> (not res!2103178) (not e!3078989))))

(assert (=> d!1586215 (= res!2103178 (= (content!10073 lt!2028159) ((_ map or) (content!10073 call!343633) (content!10073 (Cons!56697 call!343734 Nil!56697)))))))

(assert (=> d!1586215 (= lt!2028159 e!3078988)))

(declare-fun c!839607 () Bool)

(assert (=> d!1586215 (= c!839607 ((_ is Nil!56697) call!343633))))

(assert (=> d!1586215 (= (++!12330 call!343633 (Cons!56697 call!343734 Nil!56697)) lt!2028159)))

(declare-fun b!4928021 () Bool)

(assert (=> b!4928021 (= e!3078988 (Cons!56697 (h!63145 call!343633) (++!12330 (t!367283 call!343633) (Cons!56697 call!343734 Nil!56697))))))

(assert (= (and d!1586215 c!839607) b!4928020))

(assert (= (and d!1586215 (not c!839607)) b!4928021))

(assert (= (and d!1586215 res!2103178) b!4928022))

(assert (= (and b!4928022 res!2103177) b!4928023))

(declare-fun m!5946950 () Bool)

(assert (=> b!4928022 m!5946950))

(assert (=> b!4928022 m!5945830))

(declare-fun m!5946952 () Bool)

(assert (=> b!4928022 m!5946952))

(declare-fun m!5946954 () Bool)

(assert (=> d!1586215 m!5946954))

(assert (=> d!1586215 m!5946368))

(declare-fun m!5946956 () Bool)

(assert (=> d!1586215 m!5946956))

(declare-fun m!5946958 () Bool)

(assert (=> b!4928021 m!5946958))

(assert (=> bm!343725 d!1586215))

(declare-fun d!1586217 () Bool)

(assert (not d!1586217))

(assert (=> b!4926994 d!1586217))

(declare-fun bm!343844 () Bool)

(declare-fun call!343850 () Conc!14876)

(declare-fun call!343862 () Conc!14876)

(assert (=> bm!343844 (= call!343850 call!343862)))

(declare-fun b!4928066 () Bool)

(declare-fun e!3079013 () Conc!14876)

(declare-fun call!343863 () Conc!14876)

(assert (=> b!4928066 (= e!3079013 call!343863)))

(declare-fun e!3079014 () Bool)

(declare-fun lt!2028168 () Conc!14876)

(declare-fun b!4928067 () Bool)

(assert (=> b!4928067 (= e!3079014 (= (list!17961 lt!2028168) (++!12330 (list!17961 (ite c!839345 (_2!33902 lt!2027735) (left!41344 (c!839087 input!5492)))) (list!17961 (ite c!839345 (right!41674 (c!839087 input!5492)) (_1!33902 lt!2027736))))))))

(declare-fun b!4928068 () Bool)

(declare-fun res!2103191 () Bool)

(assert (=> b!4928068 (=> (not res!2103191) (not e!3079014))))

(assert (=> b!4928068 (= res!2103191 (<= (height!1986 lt!2028168) (+ (max!0 (height!1986 (ite c!839345 (_2!33902 lt!2027735) (left!41344 (c!839087 input!5492)))) (height!1986 (ite c!839345 (right!41674 (c!839087 input!5492)) (_1!33902 lt!2027736)))) 1)))))

(declare-fun c!839627 () Bool)

(declare-fun call!343861 () Int)

(declare-fun bm!343845 () Bool)

(assert (=> bm!343845 (= call!343861 (height!1986 (ite c!839627 (left!41344 (ite c!839345 (_2!33902 lt!2027735) (left!41344 (c!839087 input!5492)))) (right!41674 (ite c!839345 (right!41674 (c!839087 input!5492)) (_1!33902 lt!2027736))))))))

(declare-fun b!4928069 () Bool)

(declare-fun res!2103189 () Bool)

(assert (=> b!4928069 (=> (not res!2103189) (not e!3079014))))

(assert (=> b!4928069 (= res!2103189 (isBalanced!4089 lt!2028168))))

(declare-fun bm!343846 () Bool)

(declare-fun call!343859 () Conc!14876)

(declare-fun call!343853 () Conc!14876)

(assert (=> bm!343846 (= call!343859 call!343853)))

(declare-fun e!3079018 () Conc!14876)

(declare-fun b!4928070 () Bool)

(assert (=> b!4928070 (= e!3079018 (ite c!839345 (_2!33902 lt!2027735) (left!41344 (c!839087 input!5492))))))

(declare-fun call!343851 () Int)

(declare-fun bm!343847 () Bool)

(assert (=> bm!343847 (= call!343851 (height!1986 (ite c!839627 (ite c!839345 (_2!33902 lt!2027735) (left!41344 (c!839087 input!5492))) (left!41344 (ite c!839345 (right!41674 (c!839087 input!5492)) (_1!33902 lt!2027736))))))))

(declare-fun b!4928071 () Bool)

(declare-fun e!3079015 () Conc!14876)

(assert (=> b!4928071 (= e!3079015 call!343853)))

(declare-fun c!839625 () Bool)

(declare-fun c!839626 () Bool)

(declare-fun bm!343848 () Bool)

(assert (=> bm!343848 (= call!343862 (++!12331 (ite c!839627 (ite c!839626 (right!41674 (ite c!839345 (_2!33902 lt!2027735) (left!41344 (c!839087 input!5492)))) (right!41674 (right!41674 (ite c!839345 (_2!33902 lt!2027735) (left!41344 (c!839087 input!5492)))))) (ite c!839345 (_2!33902 lt!2027735) (left!41344 (c!839087 input!5492)))) (ite c!839627 (ite c!839345 (right!41674 (c!839087 input!5492)) (_1!33902 lt!2027736)) (ite c!839625 (left!41344 (ite c!839345 (right!41674 (c!839087 input!5492)) (_1!33902 lt!2027736))) (left!41344 (left!41344 (ite c!839345 (right!41674 (c!839087 input!5492)) (_1!33902 lt!2027736))))))))))

(declare-fun lt!2028170 () Conc!14876)

(declare-fun c!839630 () Bool)

(declare-fun c!839631 () Bool)

(declare-fun call!343860 () Conc!14876)

(declare-fun c!839624 () Bool)

(declare-fun bm!343849 () Bool)

(declare-fun lt!2028171 () Conc!14876)

(declare-fun <>!382 (Conc!14876 Conc!14876) Conc!14876)

(assert (=> bm!343849 (= call!343860 (<>!382 (ite c!839631 (ite c!839345 (_2!33902 lt!2027735) (left!41344 (c!839087 input!5492))) (ite c!839627 (ite c!839624 (left!41344 (right!41674 (ite c!839345 (_2!33902 lt!2027735) (left!41344 (c!839087 input!5492))))) (left!41344 (ite c!839345 (_2!33902 lt!2027735) (left!41344 (c!839087 input!5492))))) (ite c!839625 call!343850 (ite c!839630 lt!2028171 (right!41674 (left!41344 (ite c!839345 (right!41674 (c!839087 input!5492)) (_1!33902 lt!2027736)))))))) (ite c!839631 (ite c!839345 (right!41674 (c!839087 input!5492)) (_1!33902 lt!2027736)) (ite c!839627 (ite c!839624 lt!2028170 (left!41344 (right!41674 (ite c!839345 (_2!33902 lt!2027735) (left!41344 (c!839087 input!5492)))))) (ite c!839625 (right!41674 (ite c!839345 (right!41674 (c!839087 input!5492)) (_1!33902 lt!2027736))) (ite c!839630 (right!41674 (left!41344 (ite c!839345 (right!41674 (c!839087 input!5492)) (_1!33902 lt!2027736)))) (right!41674 (ite c!839345 (right!41674 (c!839087 input!5492)) (_1!33902 lt!2027736)))))))))))

(declare-fun b!4928072 () Bool)

(declare-fun e!3079016 () Conc!14876)

(declare-fun e!3079019 () Conc!14876)

(assert (=> b!4928072 (= e!3079016 e!3079019)))

(declare-fun lt!2028169 () Int)

(assert (=> b!4928072 (= c!839627 (< lt!2028169 (- 1)))))

(declare-fun b!4928073 () Bool)

(assert (=> b!4928073 (= e!3079016 call!343860)))

(declare-fun b!4928074 () Bool)

(declare-fun e!3079012 () Conc!14876)

(assert (=> b!4928074 (= e!3079015 e!3079012)))

(assert (=> b!4928074 (= lt!2028171 call!343850)))

(declare-fun call!343864 () Int)

(declare-fun call!343849 () Int)

(assert (=> b!4928074 (= c!839630 (= call!343864 (- call!343849 3)))))

(declare-fun b!4928075 () Bool)

(declare-fun e!3079011 () Conc!14876)

(assert (=> b!4928075 (= e!3079011 (ite c!839345 (right!41674 (c!839087 input!5492)) (_1!33902 lt!2027736)))))

(declare-fun b!4928076 () Bool)

(declare-fun e!3079017 () Conc!14876)

(assert (=> b!4928076 (= e!3079013 e!3079017)))

(declare-fun call!343858 () Conc!14876)

(assert (=> b!4928076 (= lt!2028170 call!343858)))

(assert (=> b!4928076 (= c!839624 (= call!343864 (- call!343851 3)))))

(declare-fun bm!343850 () Bool)

(declare-fun call!343854 () Conc!14876)

(assert (=> bm!343850 (= call!343853 call!343854)))

(declare-fun b!4928077 () Bool)

(declare-fun call!343856 () Conc!14876)

(assert (=> b!4928077 (= e!3079012 call!343856)))

(declare-fun bm!343851 () Bool)

(declare-fun call!343852 () Conc!14876)

(assert (=> bm!343851 (= call!343863 call!343852)))

(declare-fun b!4928078 () Bool)

(assert (=> b!4928078 (= c!839625 (>= call!343861 call!343851))))

(assert (=> b!4928078 (= e!3079019 e!3079015)))

(declare-fun d!1586219 () Bool)

(assert (=> d!1586219 e!3079014))

(declare-fun res!2103192 () Bool)

(assert (=> d!1586219 (=> (not res!2103192) (not e!3079014))))

(declare-fun appendAssocInst!892 (Conc!14876 Conc!14876) Bool)

(assert (=> d!1586219 (= res!2103192 (appendAssocInst!892 (ite c!839345 (_2!33902 lt!2027735) (left!41344 (c!839087 input!5492))) (ite c!839345 (right!41674 (c!839087 input!5492)) (_1!33902 lt!2027736))))))

(assert (=> d!1586219 (= lt!2028168 e!3079011)))

(declare-fun c!839628 () Bool)

(assert (=> d!1586219 (= c!839628 (= (ite c!839345 (_2!33902 lt!2027735) (left!41344 (c!839087 input!5492))) Empty!14876))))

(declare-fun e!3079010 () Bool)

(assert (=> d!1586219 e!3079010))

(declare-fun res!2103190 () Bool)

(assert (=> d!1586219 (=> (not res!2103190) (not e!3079010))))

(assert (=> d!1586219 (= res!2103190 (isBalanced!4089 (ite c!839345 (_2!33902 lt!2027735) (left!41344 (c!839087 input!5492)))))))

(assert (=> d!1586219 (= (++!12331 (ite c!839345 (_2!33902 lt!2027735) (left!41344 (c!839087 input!5492))) (ite c!839345 (right!41674 (c!839087 input!5492)) (_1!33902 lt!2027736))) lt!2028168)))

(declare-fun call!343857 () Conc!14876)

(declare-fun bm!343852 () Bool)

(assert (=> bm!343852 (= call!343852 (<>!382 (ite c!839627 (ite (or c!839626 c!839624) (left!41344 (ite c!839345 (_2!33902 lt!2027735) (left!41344 (c!839087 input!5492)))) call!343857) (ite c!839630 call!343859 lt!2028171)) (ite c!839627 (ite c!839626 call!343858 (ite c!839624 call!343857 lt!2028170)) (ite c!839630 (right!41674 (ite c!839345 (right!41674 (c!839087 input!5492)) (_1!33902 lt!2027736))) call!343859))))))

(declare-fun bm!343853 () Bool)

(assert (=> bm!343853 (= call!343856 call!343852)))

(declare-fun b!4928079 () Bool)

(assert (=> b!4928079 (= c!839631 (and (<= (- 1) lt!2028169) (<= lt!2028169 1)))))

(assert (=> b!4928079 (= lt!2028169 (- (height!1986 (ite c!839345 (right!41674 (c!839087 input!5492)) (_1!33902 lt!2027736))) (height!1986 (ite c!839345 (_2!33902 lt!2027735) (left!41344 (c!839087 input!5492))))))))

(assert (=> b!4928079 (= e!3079018 e!3079016)))

(declare-fun b!4928080 () Bool)

(declare-fun call!343855 () Conc!14876)

(assert (=> b!4928080 (= e!3079017 call!343855)))

(declare-fun bm!343854 () Bool)

(assert (=> bm!343854 (= call!343857 call!343854)))

(declare-fun bm!343855 () Bool)

(assert (=> bm!343855 (= call!343849 (height!1986 (ite c!839627 (right!41674 (ite c!839345 (_2!33902 lt!2027735) (left!41344 (c!839087 input!5492)))) (ite c!839345 (right!41674 (c!839087 input!5492)) (_1!33902 lt!2027736)))))))

(declare-fun b!4928081 () Bool)

(declare-fun res!2103193 () Bool)

(assert (=> b!4928081 (=> (not res!2103193) (not e!3079014))))

(assert (=> b!4928081 (= res!2103193 (>= (height!1986 lt!2028168) (max!0 (height!1986 (ite c!839345 (_2!33902 lt!2027735) (left!41344 (c!839087 input!5492)))) (height!1986 (ite c!839345 (right!41674 (c!839087 input!5492)) (_1!33902 lt!2027736))))))))

(declare-fun b!4928082 () Bool)

(assert (=> b!4928082 (= e!3079017 call!343855)))

(declare-fun b!4928083 () Bool)

(assert (=> b!4928083 (= e!3079012 call!343856)))

(declare-fun bm!343856 () Bool)

(assert (=> bm!343856 (= call!343858 call!343862)))

(declare-fun bm!343857 () Bool)

(assert (=> bm!343857 (= call!343864 (height!1986 (ite c!839627 lt!2028170 lt!2028171)))))

(declare-fun bm!343858 () Bool)

(assert (=> bm!343858 (= call!343855 call!343863)))

(declare-fun b!4928084 () Bool)

(assert (=> b!4928084 (= e!3079011 e!3079018)))

(declare-fun c!839629 () Bool)

(assert (=> b!4928084 (= c!839629 (= (ite c!839345 (right!41674 (c!839087 input!5492)) (_1!33902 lt!2027736)) Empty!14876))))

(declare-fun bm!343859 () Bool)

(assert (=> bm!343859 (= call!343854 call!343860)))

(declare-fun b!4928085 () Bool)

(assert (=> b!4928085 (= c!839626 (>= call!343861 call!343849))))

(assert (=> b!4928085 (= e!3079019 e!3079013)))

(declare-fun b!4928086 () Bool)

(assert (=> b!4928086 (= e!3079010 (isBalanced!4089 (ite c!839345 (right!41674 (c!839087 input!5492)) (_1!33902 lt!2027736))))))

(assert (= (and d!1586219 res!2103190) b!4928086))

(assert (= (and d!1586219 c!839628) b!4928075))

(assert (= (and d!1586219 (not c!839628)) b!4928084))

(assert (= (and b!4928084 c!839629) b!4928070))

(assert (= (and b!4928084 (not c!839629)) b!4928079))

(assert (= (and b!4928079 c!839631) b!4928073))

(assert (= (and b!4928079 (not c!839631)) b!4928072))

(assert (= (and b!4928072 c!839627) b!4928085))

(assert (= (and b!4928072 (not c!839627)) b!4928078))

(assert (= (and b!4928085 c!839626) b!4928066))

(assert (= (and b!4928085 (not c!839626)) b!4928076))

(assert (= (and b!4928076 c!839624) b!4928082))

(assert (= (and b!4928076 (not c!839624)) b!4928080))

(assert (= (or b!4928082 b!4928080) bm!343854))

(assert (= (or b!4928082 b!4928080) bm!343858))

(assert (= (or b!4928066 b!4928076) bm!343856))

(assert (= (or b!4928066 bm!343858) bm!343851))

(assert (= (and b!4928078 c!839625) b!4928071))

(assert (= (and b!4928078 (not c!839625)) b!4928074))

(assert (= (and b!4928074 c!839630) b!4928083))

(assert (= (and b!4928074 (not c!839630)) b!4928077))

(assert (= (or b!4928083 b!4928077) bm!343846))

(assert (= (or b!4928083 b!4928077) bm!343853))

(assert (= (or b!4928071 b!4928074) bm!343844))

(assert (= (or b!4928071 bm!343846) bm!343850))

(assert (= (or b!4928076 b!4928074) bm!343857))

(assert (= (or bm!343856 bm!343844) bm!343848))

(assert (= (or b!4928085 b!4928074) bm!343855))

(assert (= (or b!4928076 b!4928078) bm!343847))

(assert (= (or bm!343851 bm!343853) bm!343852))

(assert (= (or b!4928085 b!4928078) bm!343845))

(assert (= (or bm!343854 bm!343850) bm!343859))

(assert (= (or b!4928073 bm!343859) bm!343849))

(assert (= (and d!1586219 res!2103192) b!4928069))

(assert (= (and b!4928069 res!2103189) b!4928068))

(assert (= (and b!4928068 res!2103191) b!4928081))

(assert (= (and b!4928081 res!2103193) b!4928067))

(declare-fun m!5946960 () Bool)

(assert (=> b!4928069 m!5946960))

(declare-fun m!5946962 () Bool)

(assert (=> b!4928081 m!5946962))

(declare-fun m!5946964 () Bool)

(assert (=> b!4928081 m!5946964))

(declare-fun m!5946966 () Bool)

(assert (=> b!4928081 m!5946966))

(assert (=> b!4928081 m!5946964))

(assert (=> b!4928081 m!5946966))

(declare-fun m!5946968 () Bool)

(assert (=> b!4928081 m!5946968))

(assert (=> b!4928068 m!5946962))

(assert (=> b!4928068 m!5946964))

(assert (=> b!4928068 m!5946966))

(assert (=> b!4928068 m!5946964))

(assert (=> b!4928068 m!5946966))

(assert (=> b!4928068 m!5946968))

(declare-fun m!5946970 () Bool)

(assert (=> bm!343848 m!5946970))

(declare-fun m!5946972 () Bool)

(assert (=> bm!343847 m!5946972))

(declare-fun m!5946974 () Bool)

(assert (=> bm!343852 m!5946974))

(declare-fun m!5946976 () Bool)

(assert (=> bm!343845 m!5946976))

(declare-fun m!5946978 () Bool)

(assert (=> bm!343855 m!5946978))

(declare-fun m!5946980 () Bool)

(assert (=> b!4928086 m!5946980))

(declare-fun m!5946982 () Bool)

(assert (=> b!4928067 m!5946982))

(declare-fun m!5946984 () Bool)

(assert (=> b!4928067 m!5946984))

(declare-fun m!5946986 () Bool)

(assert (=> b!4928067 m!5946986))

(assert (=> b!4928067 m!5946984))

(assert (=> b!4928067 m!5946986))

(declare-fun m!5946988 () Bool)

(assert (=> b!4928067 m!5946988))

(declare-fun m!5946990 () Bool)

(assert (=> bm!343849 m!5946990))

(assert (=> b!4928079 m!5946966))

(assert (=> b!4928079 m!5946964))

(declare-fun m!5946992 () Bool)

(assert (=> d!1586219 m!5946992))

(declare-fun m!5946994 () Bool)

(assert (=> d!1586219 m!5946994))

(declare-fun m!5946996 () Bool)

(assert (=> bm!343857 m!5946996))

(assert (=> bm!343703 d!1586219))

(assert (=> b!4927359 d!1586207))

(assert (=> b!4927359 d!1586031))

(declare-fun d!1586221 () Bool)

(declare-fun c!839632 () Bool)

(assert (=> d!1586221 (= c!839632 ((_ is Nil!56697) (t!367283 (_1!33899 lt!2026999))))))

(declare-fun e!3079020 () (InoxSet C!26964))

(assert (=> d!1586221 (= (content!10073 (t!367283 (_1!33899 lt!2026999))) e!3079020)))

(declare-fun b!4928087 () Bool)

(assert (=> b!4928087 (= e!3079020 ((as const (Array C!26964 Bool)) false))))

(declare-fun b!4928088 () Bool)

(assert (=> b!4928088 (= e!3079020 ((_ map or) (store ((as const (Array C!26964 Bool)) false) (h!63145 (t!367283 (_1!33899 lt!2026999))) true) (content!10073 (t!367283 (t!367283 (_1!33899 lt!2026999))))))))

(assert (= (and d!1586221 c!839632) b!4928087))

(assert (= (and d!1586221 (not c!839632)) b!4928088))

(declare-fun m!5946998 () Bool)

(assert (=> b!4928088 m!5946998))

(declare-fun m!5947000 () Bool)

(assert (=> b!4928088 m!5947000))

(assert (=> b!4927344 d!1586221))

(declare-fun d!1586223 () Bool)

(assert (not d!1586223))

(assert (=> b!4926744 d!1586223))

(assert (=> b!4926744 d!1585941))

(declare-fun d!1586225 () Bool)

(declare-fun lt!2028172 () Int)

(assert (=> d!1586225 (>= lt!2028172 0)))

(declare-fun e!3079021 () Int)

(assert (=> d!1586225 (= lt!2028172 e!3079021)))

(declare-fun c!839633 () Bool)

(assert (=> d!1586225 (= c!839633 ((_ is Nil!56697) (t!367283 (_1!33899 lt!2027415))))))

(assert (=> d!1586225 (= (size!37489 (t!367283 (_1!33899 lt!2027415))) lt!2028172)))

(declare-fun b!4928089 () Bool)

(assert (=> b!4928089 (= e!3079021 0)))

(declare-fun b!4928090 () Bool)

(assert (=> b!4928090 (= e!3079021 (+ 1 (size!37489 (t!367283 (t!367283 (_1!33899 lt!2027415))))))))

(assert (= (and d!1586225 c!839633) b!4928089))

(assert (= (and d!1586225 (not c!839633)) b!4928090))

(declare-fun m!5947002 () Bool)

(assert (=> b!4928090 m!5947002))

(assert (=> b!4927306 d!1586225))

(declare-fun d!1586227 () Bool)

(assert (=> d!1586227 (isPrefix!4965 (++!12330 Nil!56697 (Cons!56697 (head!10524 (getSuffix!2953 lt!2026995 Nil!56697)) Nil!56697)) lt!2026995)))

(assert (=> d!1586227 true))

(declare-fun _$65!1701 () Unit!147242)

(assert (=> d!1586227 (= (choose!36087 Nil!56697 lt!2026995) _$65!1701)))

(declare-fun bs!1179951 () Bool)

(assert (= bs!1179951 d!1586227))

(assert (=> bs!1179951 m!5944678))

(assert (=> bs!1179951 m!5944678))

(assert (=> bs!1179951 m!5944682))

(assert (=> bs!1179951 m!5944668))

(assert (=> bs!1179951 m!5944668))

(assert (=> bs!1179951 m!5944670))

(assert (=> d!1585633 d!1586227))

(assert (=> d!1585633 d!1585627))

(assert (=> d!1585633 d!1586211))

(assert (=> d!1585633 d!1585611))

(assert (=> d!1585633 d!1585641))

(assert (=> d!1585633 d!1585643))

(declare-fun d!1586229 () Bool)

(assert (=> d!1586229 (= (head!10524 lt!2027331) (h!63145 lt!2027331))))

(assert (=> b!4926840 d!1586229))

(declare-fun d!1586231 () Bool)

(declare-fun choose!36113 ((InoxSet Context!6038) Int) (InoxSet Context!6038))

(assert (=> d!1586231 (= (flatMap!267 z!3559 lambda!245327) (choose!36113 z!3559 lambda!245327))))

(declare-fun bs!1179952 () Bool)

(assert (= bs!1179952 d!1586231))

(declare-fun m!5947004 () Bool)

(assert (=> bs!1179952 m!5947004))

(assert (=> d!1585821 d!1586231))

(declare-fun d!1586233 () Bool)

(assert (=> d!1586233 (= (head!10524 (getSuffix!2953 lt!2026995 lt!2027417)) (h!63145 (getSuffix!2953 lt!2026995 lt!2027417)))))

(assert (=> b!4927308 d!1586233))

(declare-fun d!1586235 () Bool)

(assert (=> d!1586235 (<= (size!37489 lt!2027417) (size!37489 lt!2026995))))

(declare-fun lt!2028173 () Unit!147242)

(assert (=> d!1586235 (= lt!2028173 (choose!36089 lt!2027417 lt!2026995))))

(assert (=> d!1586235 (isPrefix!4965 lt!2027417 lt!2026995)))

(assert (=> d!1586235 (= (lemmaIsPrefixThenSmallerEqSize!689 lt!2027417 lt!2026995) lt!2028173)))

(declare-fun bs!1179953 () Bool)

(assert (= bs!1179953 d!1586235))

(assert (=> bs!1179953 m!5945658))

(assert (=> bs!1179953 m!5944674))

(declare-fun m!5947006 () Bool)

(assert (=> bs!1179953 m!5947006))

(assert (=> bs!1179953 m!5946064))

(assert (=> b!4927308 d!1586235))

(declare-fun d!1586237 () Bool)

(assert (=> d!1586237 (= (head!10524 call!343652) (h!63145 call!343652))))

(assert (=> b!4927308 d!1586237))

(declare-fun b!4928091 () Bool)

(declare-fun e!3079022 () List!56821)

(assert (=> b!4928091 (= e!3079022 (Cons!56697 lt!2027806 Nil!56697))))

(declare-fun b!4928094 () Bool)

(declare-fun lt!2028174 () List!56821)

(declare-fun e!3079023 () Bool)

(assert (=> b!4928094 (= e!3079023 (or (not (= (Cons!56697 lt!2027806 Nil!56697) Nil!56697)) (= lt!2028174 lt!2027417)))))

(declare-fun b!4928093 () Bool)

(declare-fun res!2103194 () Bool)

(assert (=> b!4928093 (=> (not res!2103194) (not e!3079023))))

(assert (=> b!4928093 (= res!2103194 (= (size!37489 lt!2028174) (+ (size!37489 lt!2027417) (size!37489 (Cons!56697 lt!2027806 Nil!56697)))))))

(declare-fun d!1586239 () Bool)

(assert (=> d!1586239 e!3079023))

(declare-fun res!2103195 () Bool)

(assert (=> d!1586239 (=> (not res!2103195) (not e!3079023))))

(assert (=> d!1586239 (= res!2103195 (= (content!10073 lt!2028174) ((_ map or) (content!10073 lt!2027417) (content!10073 (Cons!56697 lt!2027806 Nil!56697)))))))

(assert (=> d!1586239 (= lt!2028174 e!3079022)))

(declare-fun c!839634 () Bool)

(assert (=> d!1586239 (= c!839634 ((_ is Nil!56697) lt!2027417))))

(assert (=> d!1586239 (= (++!12330 lt!2027417 (Cons!56697 lt!2027806 Nil!56697)) lt!2028174)))

(declare-fun b!4928092 () Bool)

(assert (=> b!4928092 (= e!3079022 (Cons!56697 (h!63145 lt!2027417) (++!12330 (t!367283 lt!2027417) (Cons!56697 lt!2027806 Nil!56697))))))

(assert (= (and d!1586239 c!839634) b!4928091))

(assert (= (and d!1586239 (not c!839634)) b!4928092))

(assert (= (and d!1586239 res!2103195) b!4928093))

(assert (= (and b!4928093 res!2103194) b!4928094))

(declare-fun m!5947008 () Bool)

(assert (=> b!4928093 m!5947008))

(assert (=> b!4928093 m!5945658))

(declare-fun m!5947010 () Bool)

(assert (=> b!4928093 m!5947010))

(declare-fun m!5947012 () Bool)

(assert (=> d!1586239 m!5947012))

(assert (=> d!1586239 m!5946074))

(declare-fun m!5947014 () Bool)

(assert (=> d!1586239 m!5947014))

(declare-fun m!5947016 () Bool)

(assert (=> b!4928092 m!5947016))

(assert (=> b!4927308 d!1586239))

(declare-fun b!4928095 () Bool)

(declare-fun e!3079024 () List!56821)

(assert (=> b!4928095 (= e!3079024 (Cons!56697 (head!10524 (getSuffix!2953 lt!2026995 lt!2027417)) Nil!56697))))

(declare-fun e!3079025 () Bool)

(declare-fun lt!2028175 () List!56821)

(declare-fun b!4928098 () Bool)

(assert (=> b!4928098 (= e!3079025 (or (not (= (Cons!56697 (head!10524 (getSuffix!2953 lt!2026995 lt!2027417)) Nil!56697) Nil!56697)) (= lt!2028175 lt!2027417)))))

(declare-fun b!4928097 () Bool)

(declare-fun res!2103196 () Bool)

(assert (=> b!4928097 (=> (not res!2103196) (not e!3079025))))

(assert (=> b!4928097 (= res!2103196 (= (size!37489 lt!2028175) (+ (size!37489 lt!2027417) (size!37489 (Cons!56697 (head!10524 (getSuffix!2953 lt!2026995 lt!2027417)) Nil!56697)))))))

(declare-fun d!1586241 () Bool)

(assert (=> d!1586241 e!3079025))

(declare-fun res!2103197 () Bool)

(assert (=> d!1586241 (=> (not res!2103197) (not e!3079025))))

(assert (=> d!1586241 (= res!2103197 (= (content!10073 lt!2028175) ((_ map or) (content!10073 lt!2027417) (content!10073 (Cons!56697 (head!10524 (getSuffix!2953 lt!2026995 lt!2027417)) Nil!56697)))))))

(assert (=> d!1586241 (= lt!2028175 e!3079024)))

(declare-fun c!839635 () Bool)

(assert (=> d!1586241 (= c!839635 ((_ is Nil!56697) lt!2027417))))

(assert (=> d!1586241 (= (++!12330 lt!2027417 (Cons!56697 (head!10524 (getSuffix!2953 lt!2026995 lt!2027417)) Nil!56697)) lt!2028175)))

(declare-fun b!4928096 () Bool)

(assert (=> b!4928096 (= e!3079024 (Cons!56697 (h!63145 lt!2027417) (++!12330 (t!367283 lt!2027417) (Cons!56697 (head!10524 (getSuffix!2953 lt!2026995 lt!2027417)) Nil!56697))))))

(assert (= (and d!1586241 c!839635) b!4928095))

(assert (= (and d!1586241 (not c!839635)) b!4928096))

(assert (= (and d!1586241 res!2103197) b!4928097))

(assert (= (and b!4928097 res!2103196) b!4928098))

(declare-fun m!5947018 () Bool)

(assert (=> b!4928097 m!5947018))

(assert (=> b!4928097 m!5945658))

(declare-fun m!5947020 () Bool)

(assert (=> b!4928097 m!5947020))

(declare-fun m!5947022 () Bool)

(assert (=> d!1586241 m!5947022))

(assert (=> d!1586241 m!5946074))

(declare-fun m!5947024 () Bool)

(assert (=> d!1586241 m!5947024))

(declare-fun m!5947026 () Bool)

(assert (=> b!4928096 m!5947026))

(assert (=> b!4927308 d!1586241))

(declare-fun d!1586243 () Bool)

(declare-fun lt!2028176 () Int)

(assert (=> d!1586243 (>= lt!2028176 0)))

(declare-fun e!3079026 () Int)

(assert (=> d!1586243 (= lt!2028176 e!3079026)))

(declare-fun c!839636 () Bool)

(assert (=> d!1586243 (= c!839636 ((_ is Nil!56697) lt!2027417))))

(assert (=> d!1586243 (= (size!37489 lt!2027417) lt!2028176)))

(declare-fun b!4928099 () Bool)

(assert (=> b!4928099 (= e!3079026 0)))

(declare-fun b!4928100 () Bool)

(assert (=> b!4928100 (= e!3079026 (+ 1 (size!37489 (t!367283 lt!2027417))))))

(assert (= (and d!1586243 c!839636) b!4928099))

(assert (= (and d!1586243 (not c!839636)) b!4928100))

(declare-fun m!5947028 () Bool)

(assert (=> b!4928100 m!5947028))

(assert (=> b!4927308 d!1586243))

(declare-fun b!4928104 () Bool)

(declare-fun e!3079029 () Bool)

(assert (=> b!4928104 (= e!3079029 (>= (size!37489 lt!2026995) (size!37489 (++!12330 lt!2027417 (Cons!56697 (head!10524 (getSuffix!2953 lt!2026995 lt!2027417)) Nil!56697)))))))

(declare-fun d!1586245 () Bool)

(assert (=> d!1586245 e!3079029))

(declare-fun res!2103198 () Bool)

(assert (=> d!1586245 (=> res!2103198 e!3079029)))

(declare-fun lt!2028177 () Bool)

(assert (=> d!1586245 (= res!2103198 (not lt!2028177))))

(declare-fun e!3079028 () Bool)

(assert (=> d!1586245 (= lt!2028177 e!3079028)))

(declare-fun res!2103200 () Bool)

(assert (=> d!1586245 (=> res!2103200 e!3079028)))

(assert (=> d!1586245 (= res!2103200 ((_ is Nil!56697) (++!12330 lt!2027417 (Cons!56697 (head!10524 (getSuffix!2953 lt!2026995 lt!2027417)) Nil!56697))))))

(assert (=> d!1586245 (= (isPrefix!4965 (++!12330 lt!2027417 (Cons!56697 (head!10524 (getSuffix!2953 lt!2026995 lt!2027417)) Nil!56697)) lt!2026995) lt!2028177)))

(declare-fun b!4928102 () Bool)

(declare-fun res!2103199 () Bool)

(declare-fun e!3079027 () Bool)

(assert (=> b!4928102 (=> (not res!2103199) (not e!3079027))))

(assert (=> b!4928102 (= res!2103199 (= (head!10524 (++!12330 lt!2027417 (Cons!56697 (head!10524 (getSuffix!2953 lt!2026995 lt!2027417)) Nil!56697))) (head!10524 lt!2026995)))))

(declare-fun b!4928101 () Bool)

(assert (=> b!4928101 (= e!3079028 e!3079027)))

(declare-fun res!2103201 () Bool)

(assert (=> b!4928101 (=> (not res!2103201) (not e!3079027))))

(assert (=> b!4928101 (= res!2103201 (not ((_ is Nil!56697) lt!2026995)))))

(declare-fun b!4928103 () Bool)

(assert (=> b!4928103 (= e!3079027 (isPrefix!4965 (tail!9671 (++!12330 lt!2027417 (Cons!56697 (head!10524 (getSuffix!2953 lt!2026995 lt!2027417)) Nil!56697))) (tail!9671 lt!2026995)))))

(assert (= (and d!1586245 (not res!2103200)) b!4928101))

(assert (= (and b!4928101 res!2103201) b!4928102))

(assert (= (and b!4928102 res!2103199) b!4928103))

(assert (= (and d!1586245 (not res!2103198)) b!4928104))

(assert (=> b!4928104 m!5944674))

(assert (=> b!4928104 m!5945660))

(declare-fun m!5947030 () Bool)

(assert (=> b!4928104 m!5947030))

(assert (=> b!4928102 m!5945660))

(declare-fun m!5947032 () Bool)

(assert (=> b!4928102 m!5947032))

(assert (=> b!4928102 m!5944672))

(assert (=> b!4928103 m!5945660))

(declare-fun m!5947034 () Bool)

(assert (=> b!4928103 m!5947034))

(assert (=> b!4928103 m!5944554))

(assert (=> b!4928103 m!5947034))

(assert (=> b!4928103 m!5944554))

(declare-fun m!5947036 () Bool)

(assert (=> b!4928103 m!5947036))

(assert (=> b!4927308 d!1586245))

(declare-fun d!1586247 () Bool)

(assert (=> d!1586247 (isPrefix!4965 (++!12330 lt!2027417 (Cons!56697 (head!10524 (getSuffix!2953 lt!2026995 lt!2027417)) Nil!56697)) lt!2026995)))

(declare-fun lt!2028178 () Unit!147242)

(assert (=> d!1586247 (= lt!2028178 (choose!36087 lt!2027417 lt!2026995))))

(assert (=> d!1586247 (isPrefix!4965 lt!2027417 lt!2026995)))

(assert (=> d!1586247 (= (lemmaAddHeadSuffixToPrefixStillPrefix!777 lt!2027417 lt!2026995) lt!2028178)))

(declare-fun bs!1179954 () Bool)

(assert (= bs!1179954 d!1586247))

(declare-fun m!5947038 () Bool)

(assert (=> bs!1179954 m!5947038))

(assert (=> bs!1179954 m!5946064))

(assert (=> bs!1179954 m!5945660))

(assert (=> bs!1179954 m!5945668))

(assert (=> bs!1179954 m!5945668))

(assert (=> bs!1179954 m!5945672))

(assert (=> bs!1179954 m!5945660))

(assert (=> bs!1179954 m!5945662))

(assert (=> b!4927308 d!1586247))

(assert (=> b!4927308 d!1585629))

(declare-fun d!1586249 () Bool)

(assert (=> d!1586249 (= (tail!9671 call!343652) (t!367283 call!343652))))

(assert (=> b!4927308 d!1586249))

(assert (=> b!4927308 d!1585883))

(declare-fun d!1586251 () Bool)

(assert (=> d!1586251 (= (++!12330 (++!12330 lt!2027417 (Cons!56697 lt!2027806 Nil!56697)) lt!2027805) lt!2026995)))

(declare-fun lt!2028179 () Unit!147242)

(assert (=> d!1586251 (= lt!2028179 (choose!36085 lt!2027417 lt!2027806 lt!2027805 lt!2026995))))

(assert (=> d!1586251 (= (++!12330 lt!2027417 (Cons!56697 lt!2027806 lt!2027805)) lt!2026995)))

(assert (=> d!1586251 (= (lemmaMoveElementToOtherListKeepsConcatEq!1395 lt!2027417 lt!2027806 lt!2027805 lt!2026995) lt!2028179)))

(declare-fun bs!1179955 () Bool)

(assert (= bs!1179955 d!1586251))

(assert (=> bs!1179955 m!5945652))

(assert (=> bs!1179955 m!5945652))

(assert (=> bs!1179955 m!5945654))

(declare-fun m!5947040 () Bool)

(assert (=> bs!1179955 m!5947040))

(declare-fun m!5947042 () Bool)

(assert (=> bs!1179955 m!5947042))

(assert (=> b!4927308 d!1586251))

(declare-fun b!4928105 () Bool)

(declare-fun e!3079030 () List!56821)

(assert (=> b!4928105 (= e!3079030 (Cons!56697 (head!10524 call!343652) Nil!56697))))

(declare-fun lt!2028180 () List!56821)

(declare-fun b!4928108 () Bool)

(declare-fun e!3079031 () Bool)

(assert (=> b!4928108 (= e!3079031 (or (not (= (Cons!56697 (head!10524 call!343652) Nil!56697) Nil!56697)) (= lt!2028180 lt!2027417)))))

(declare-fun b!4928107 () Bool)

(declare-fun res!2103202 () Bool)

(assert (=> b!4928107 (=> (not res!2103202) (not e!3079031))))

(assert (=> b!4928107 (= res!2103202 (= (size!37489 lt!2028180) (+ (size!37489 lt!2027417) (size!37489 (Cons!56697 (head!10524 call!343652) Nil!56697)))))))

(declare-fun d!1586253 () Bool)

(assert (=> d!1586253 e!3079031))

(declare-fun res!2103203 () Bool)

(assert (=> d!1586253 (=> (not res!2103203) (not e!3079031))))

(assert (=> d!1586253 (= res!2103203 (= (content!10073 lt!2028180) ((_ map or) (content!10073 lt!2027417) (content!10073 (Cons!56697 (head!10524 call!343652) Nil!56697)))))))

(assert (=> d!1586253 (= lt!2028180 e!3079030)))

(declare-fun c!839637 () Bool)

(assert (=> d!1586253 (= c!839637 ((_ is Nil!56697) lt!2027417))))

(assert (=> d!1586253 (= (++!12330 lt!2027417 (Cons!56697 (head!10524 call!343652) Nil!56697)) lt!2028180)))

(declare-fun b!4928106 () Bool)

(assert (=> b!4928106 (= e!3079030 (Cons!56697 (h!63145 lt!2027417) (++!12330 (t!367283 lt!2027417) (Cons!56697 (head!10524 call!343652) Nil!56697))))))

(assert (= (and d!1586253 c!839637) b!4928105))

(assert (= (and d!1586253 (not c!839637)) b!4928106))

(assert (= (and d!1586253 res!2103203) b!4928107))

(assert (= (and b!4928107 res!2103202) b!4928108))

(declare-fun m!5947044 () Bool)

(assert (=> b!4928107 m!5947044))

(assert (=> b!4928107 m!5945658))

(declare-fun m!5947046 () Bool)

(assert (=> b!4928107 m!5947046))

(declare-fun m!5947048 () Bool)

(assert (=> d!1586253 m!5947048))

(assert (=> d!1586253 m!5946074))

(declare-fun m!5947050 () Bool)

(assert (=> d!1586253 m!5947050))

(declare-fun m!5947052 () Bool)

(assert (=> b!4928106 m!5947052))

(assert (=> b!4927308 d!1586253))

(declare-fun b!4928109 () Bool)

(declare-fun e!3079032 () List!56821)

(assert (=> b!4928109 (= e!3079032 lt!2027805)))

(declare-fun b!4928112 () Bool)

(declare-fun e!3079033 () Bool)

(declare-fun lt!2028181 () List!56821)

(assert (=> b!4928112 (= e!3079033 (or (not (= lt!2027805 Nil!56697)) (= lt!2028181 (++!12330 lt!2027417 (Cons!56697 lt!2027806 Nil!56697)))))))

(declare-fun b!4928111 () Bool)

(declare-fun res!2103204 () Bool)

(assert (=> b!4928111 (=> (not res!2103204) (not e!3079033))))

(assert (=> b!4928111 (= res!2103204 (= (size!37489 lt!2028181) (+ (size!37489 (++!12330 lt!2027417 (Cons!56697 lt!2027806 Nil!56697))) (size!37489 lt!2027805))))))

(declare-fun d!1586255 () Bool)

(assert (=> d!1586255 e!3079033))

(declare-fun res!2103205 () Bool)

(assert (=> d!1586255 (=> (not res!2103205) (not e!3079033))))

(assert (=> d!1586255 (= res!2103205 (= (content!10073 lt!2028181) ((_ map or) (content!10073 (++!12330 lt!2027417 (Cons!56697 lt!2027806 Nil!56697))) (content!10073 lt!2027805))))))

(assert (=> d!1586255 (= lt!2028181 e!3079032)))

(declare-fun c!839638 () Bool)

(assert (=> d!1586255 (= c!839638 ((_ is Nil!56697) (++!12330 lt!2027417 (Cons!56697 lt!2027806 Nil!56697))))))

(assert (=> d!1586255 (= (++!12330 (++!12330 lt!2027417 (Cons!56697 lt!2027806 Nil!56697)) lt!2027805) lt!2028181)))

(declare-fun b!4928110 () Bool)

(assert (=> b!4928110 (= e!3079032 (Cons!56697 (h!63145 (++!12330 lt!2027417 (Cons!56697 lt!2027806 Nil!56697))) (++!12330 (t!367283 (++!12330 lt!2027417 (Cons!56697 lt!2027806 Nil!56697))) lt!2027805)))))

(assert (= (and d!1586255 c!839638) b!4928109))

(assert (= (and d!1586255 (not c!839638)) b!4928110))

(assert (= (and d!1586255 res!2103205) b!4928111))

(assert (= (and b!4928111 res!2103204) b!4928112))

(declare-fun m!5947054 () Bool)

(assert (=> b!4928111 m!5947054))

(assert (=> b!4928111 m!5945652))

(declare-fun m!5947056 () Bool)

(assert (=> b!4928111 m!5947056))

(declare-fun m!5947058 () Bool)

(assert (=> b!4928111 m!5947058))

(declare-fun m!5947060 () Bool)

(assert (=> d!1586255 m!5947060))

(assert (=> d!1586255 m!5945652))

(declare-fun m!5947062 () Bool)

(assert (=> d!1586255 m!5947062))

(declare-fun m!5947064 () Bool)

(assert (=> d!1586255 m!5947064))

(declare-fun m!5947066 () Bool)

(assert (=> b!4928110 m!5947066))

(assert (=> b!4927308 d!1586255))

(declare-fun d!1586257 () Bool)

(declare-fun c!839639 () Bool)

(assert (=> d!1586257 (= c!839639 ((_ is Nil!56697) lt!2027520))))

(declare-fun e!3079034 () (InoxSet C!26964))

(assert (=> d!1586257 (= (content!10073 lt!2027520) e!3079034)))

(declare-fun b!4928113 () Bool)

(assert (=> b!4928113 (= e!3079034 ((as const (Array C!26964 Bool)) false))))

(declare-fun b!4928114 () Bool)

(assert (=> b!4928114 (= e!3079034 ((_ map or) (store ((as const (Array C!26964 Bool)) false) (h!63145 lt!2027520) true) (content!10073 (t!367283 lt!2027520))))))

(assert (= (and d!1586257 c!839639) b!4928113))

(assert (= (and d!1586257 (not c!839639)) b!4928114))

(declare-fun m!5947068 () Bool)

(assert (=> b!4928114 m!5947068))

(declare-fun m!5947070 () Bool)

(assert (=> b!4928114 m!5947070))

(assert (=> d!1585539 d!1586257))

(assert (=> d!1585539 d!1585931))

(declare-fun d!1586259 () Bool)

(declare-fun c!839640 () Bool)

(assert (=> d!1586259 (= c!839640 ((_ is Nil!56697) (Cons!56697 lt!2027340 Nil!56697)))))

(declare-fun e!3079035 () (InoxSet C!26964))

(assert (=> d!1586259 (= (content!10073 (Cons!56697 lt!2027340 Nil!56697)) e!3079035)))

(declare-fun b!4928115 () Bool)

(assert (=> b!4928115 (= e!3079035 ((as const (Array C!26964 Bool)) false))))

(declare-fun b!4928116 () Bool)

(assert (=> b!4928116 (= e!3079035 ((_ map or) (store ((as const (Array C!26964 Bool)) false) (h!63145 (Cons!56697 lt!2027340 Nil!56697)) true) (content!10073 (t!367283 (Cons!56697 lt!2027340 Nil!56697)))))))

(assert (= (and d!1586259 c!839640) b!4928115))

(assert (= (and d!1586259 (not c!839640)) b!4928116))

(declare-fun m!5947072 () Bool)

(assert (=> b!4928116 m!5947072))

(declare-fun m!5947074 () Bool)

(assert (=> b!4928116 m!5947074))

(assert (=> d!1585539 d!1586259))

(declare-fun d!1586261 () Bool)

(assert (=> d!1586261 (= (isEmpty!30579 (_1!33899 lt!2027784)) ((_ is Nil!56697) (_1!33899 lt!2027784)))))

(assert (=> b!4927320 d!1586261))

(declare-fun b!4928120 () Bool)

(declare-fun e!3079038 () Bool)

(assert (=> b!4928120 (= e!3079038 (>= (size!37489 (list!17959 input!5492)) (size!37489 (list!17959 input!5492))))))

(declare-fun d!1586263 () Bool)

(assert (=> d!1586263 e!3079038))

(declare-fun res!2103206 () Bool)

(assert (=> d!1586263 (=> res!2103206 e!3079038)))

(declare-fun lt!2028182 () Bool)

(assert (=> d!1586263 (= res!2103206 (not lt!2028182))))

(declare-fun e!3079037 () Bool)

(assert (=> d!1586263 (= lt!2028182 e!3079037)))

(declare-fun res!2103208 () Bool)

(assert (=> d!1586263 (=> res!2103208 e!3079037)))

(assert (=> d!1586263 (= res!2103208 ((_ is Nil!56697) (list!17959 input!5492)))))

(assert (=> d!1586263 (= (isPrefix!4965 (list!17959 input!5492) (list!17959 input!5492)) lt!2028182)))

(declare-fun b!4928118 () Bool)

(declare-fun res!2103207 () Bool)

(declare-fun e!3079036 () Bool)

(assert (=> b!4928118 (=> (not res!2103207) (not e!3079036))))

(assert (=> b!4928118 (= res!2103207 (= (head!10524 (list!17959 input!5492)) (head!10524 (list!17959 input!5492))))))

(declare-fun b!4928117 () Bool)

(assert (=> b!4928117 (= e!3079037 e!3079036)))

(declare-fun res!2103209 () Bool)

(assert (=> b!4928117 (=> (not res!2103209) (not e!3079036))))

(assert (=> b!4928117 (= res!2103209 (not ((_ is Nil!56697) (list!17959 input!5492))))))

(declare-fun b!4928119 () Bool)

(assert (=> b!4928119 (= e!3079036 (isPrefix!4965 (tail!9671 (list!17959 input!5492)) (tail!9671 (list!17959 input!5492))))))

(assert (= (and d!1586263 (not res!2103208)) b!4928117))

(assert (= (and b!4928117 res!2103209) b!4928118))

(assert (= (and b!4928118 res!2103207) b!4928119))

(assert (= (and d!1586263 (not res!2103206)) b!4928120))

(assert (=> b!4928120 m!5944346))

(assert (=> b!4928120 m!5944632))

(assert (=> b!4928120 m!5944346))

(assert (=> b!4928120 m!5944632))

(assert (=> b!4928118 m!5944346))

(declare-fun m!5947076 () Bool)

(assert (=> b!4928118 m!5947076))

(assert (=> b!4928118 m!5944346))

(assert (=> b!4928118 m!5947076))

(assert (=> b!4928119 m!5944346))

(assert (=> b!4928119 m!5945626))

(assert (=> b!4928119 m!5944346))

(assert (=> b!4928119 m!5945626))

(assert (=> b!4928119 m!5945626))

(assert (=> b!4928119 m!5945626))

(declare-fun m!5947078 () Bool)

(assert (=> b!4928119 m!5947078))

(assert (=> bm!343710 d!1586263))

(declare-fun b!4928121 () Bool)

(declare-fun e!3079050 () Int)

(assert (=> b!4928121 (= e!3079050 e!3078578)))

(declare-fun b!4928122 () Bool)

(declare-fun lt!2028191 () tuple2!61198)

(declare-fun call!343868 () tuple2!61198)

(assert (=> b!4928122 (= lt!2028191 call!343868)))

(declare-fun e!3079044 () tuple2!61198)

(declare-fun call!343869 () Conc!14876)

(assert (=> b!4928122 (= e!3079044 (tuple2!61199 call!343869 (_2!33902 lt!2028191)))))

(declare-fun lt!2028185 () List!56821)

(declare-fun lt!2028193 () List!56821)

(declare-fun c!839651 () Bool)

(declare-fun lt!2028195 () tuple2!61192)

(declare-fun bm!343860 () Bool)

(declare-fun call!343865 () List!56821)

(declare-fun lt!2028189 () tuple2!61192)

(assert (=> bm!343860 (= call!343865 (++!12330 (ite c!839651 (_2!33899 lt!2028195) lt!2028185) (ite c!839651 lt!2028193 (_1!33899 lt!2028189))))))

(declare-fun bm!343861 () Bool)

(declare-fun c!839642 () Bool)

(declare-fun lt!2028190 () tuple2!61198)

(assert (=> bm!343861 (= call!343869 (++!12331 (ite c!839642 (_2!33902 lt!2028190) (left!41344 (ite c!839345 (left!41344 (c!839087 input!5492)) (right!41674 (c!839087 input!5492))))) (ite c!839642 (right!41674 (ite c!839345 (left!41344 (c!839087 input!5492)) (right!41674 (c!839087 input!5492)))) (_1!33902 lt!2028191))))))

(declare-fun b!4928123 () Bool)

(assert (=> b!4928123 (= e!3079050 (- e!3078578 (size!37492 (left!41344 (ite c!839345 (left!41344 (c!839087 input!5492)) (right!41674 (c!839087 input!5492)))))))))

(declare-fun b!4928124 () Bool)

(assert (=> b!4928124 (= lt!2028190 call!343868)))

(assert (=> b!4928124 (= e!3079044 (tuple2!61199 (_1!33902 lt!2028190) call!343869))))

(declare-fun b!4928125 () Bool)

(declare-fun c!839644 () Bool)

(assert (=> b!4928125 (= c!839644 (<= e!3078578 0))))

(declare-fun e!3079047 () tuple2!61198)

(declare-fun e!3079045 () tuple2!61198)

(assert (=> b!4928125 (= e!3079047 e!3079045)))

(declare-fun b!4928126 () Bool)

(declare-fun e!3079042 () Int)

(declare-fun call!343866 () Int)

(assert (=> b!4928126 (= e!3079042 (- e!3078578 call!343866))))

(declare-fun bm!343862 () Bool)

(declare-fun c!839646 () Bool)

(assert (=> bm!343862 (= c!839646 c!839651)))

(declare-fun call!343870 () tuple2!61192)

(declare-fun call!343867 () tuple2!61192)

(assert (=> bm!343862 (= call!343870 call!343867)))

(declare-fun b!4928127 () Bool)

(assert (=> b!4928127 (= lt!2028189 call!343870)))

(declare-fun e!3079039 () tuple2!61192)

(assert (=> b!4928127 (= e!3079039 (tuple2!61193 call!343865 (_2!33899 lt!2028189)))))

(declare-fun b!4928128 () Bool)

(declare-fun lt!2028188 () Unit!147242)

(declare-fun lt!2028186 () Unit!147242)

(assert (=> b!4928128 (= lt!2028188 lt!2028186)))

(declare-fun lt!2028192 () List!56821)

(assert (=> b!4928128 (= (drop!2227 lt!2028192 e!3078578) (slice!774 lt!2028192 e!3078578 call!343866))))

(assert (=> b!4928128 (= lt!2028186 (dropLemma!29 lt!2028192 e!3078578))))

(assert (=> b!4928128 (= lt!2028192 (list!17963 (xs!18198 (ite c!839345 (left!41344 (c!839087 input!5492)) (right!41674 (c!839087 input!5492))))))))

(declare-fun lt!2028187 () tuple2!61192)

(assert (=> b!4928128 (= lt!2028187 call!343867)))

(declare-fun e!3079041 () tuple2!61198)

(assert (=> b!4928128 (= e!3079041 (tuple2!61199 (Leaf!24747 (slice!775 (xs!18198 (ite c!839345 (left!41344 (c!839087 input!5492)) (right!41674 (c!839087 input!5492)))) 0 e!3078578) e!3078578) (Leaf!24747 (slice!775 (xs!18198 (ite c!839345 (left!41344 (c!839087 input!5492)) (right!41674 (c!839087 input!5492)))) e!3078578 (csize!29983 (ite c!839345 (left!41344 (c!839087 input!5492)) (right!41674 (c!839087 input!5492))))) (- (csize!29983 (ite c!839345 (left!41344 (c!839087 input!5492)) (right!41674 (c!839087 input!5492)))) e!3078578))))))

(declare-fun b!4928129 () Bool)

(declare-fun e!3079049 () tuple2!61198)

(assert (=> b!4928129 (= e!3079049 (tuple2!61199 (left!41344 (ite c!839345 (left!41344 (c!839087 input!5492)) (right!41674 (c!839087 input!5492)))) (right!41674 (ite c!839345 (left!41344 (c!839087 input!5492)) (right!41674 (c!839087 input!5492))))))))

(declare-fun b!4928130 () Bool)

(declare-fun e!3079043 () tuple2!61192)

(assert (=> b!4928130 (= e!3079043 e!3079039)))

(assert (=> b!4928130 (= c!839651 (< e!3078578 call!343866))))

(declare-fun b!4928131 () Bool)

(declare-fun e!3079040 () tuple2!61198)

(assert (=> b!4928131 (= e!3079040 e!3079047)))

(declare-fun c!839648 () Bool)

(assert (=> b!4928131 (= c!839648 ((_ is Leaf!24747) (ite c!839345 (left!41344 (c!839087 input!5492)) (right!41674 (c!839087 input!5492)))))))

(declare-fun b!4928132 () Bool)

(declare-fun e!3079046 () List!56821)

(assert (=> b!4928132 (= e!3079046 (list!17963 (xs!18198 (ite c!839345 (left!41344 (c!839087 input!5492)) (right!41674 (c!839087 input!5492))))))))

(declare-fun b!4928133 () Bool)

(assert (=> b!4928133 (= lt!2028195 call!343870)))

(assert (=> b!4928133 (= e!3079039 (tuple2!61193 (_1!33899 lt!2028195) call!343865))))

(declare-fun bm!343863 () Bool)

(declare-fun c!839643 () Bool)

(assert (=> bm!343863 (= c!839643 c!839648)))

(assert (=> bm!343863 (= call!343867 (splitAtIndex!105 e!3079046 (ite c!839648 e!3078578 e!3079042)))))

(declare-fun b!4928134 () Bool)

(assert (=> b!4928134 (= e!3079045 e!3079041)))

(declare-fun c!839645 () Bool)

(assert (=> b!4928134 (= c!839645 (= e!3078578 (csize!29983 (ite c!839345 (left!41344 (c!839087 input!5492)) (right!41674 (c!839087 input!5492))))))))

(declare-fun b!4928135 () Bool)

(assert (=> b!4928135 (= e!3079040 (tuple2!61199 (ite c!839345 (left!41344 (c!839087 input!5492)) (right!41674 (c!839087 input!5492))) (ite c!839345 (left!41344 (c!839087 input!5492)) (right!41674 (c!839087 input!5492)))))))

(declare-fun d!1586265 () Bool)

(declare-fun e!3079048 () Bool)

(assert (=> d!1586265 e!3079048))

(declare-fun res!2103210 () Bool)

(assert (=> d!1586265 (=> (not res!2103210) (not e!3079048))))

(declare-fun lt!2028183 () tuple2!61198)

(assert (=> d!1586265 (= res!2103210 (isBalanced!4089 (_1!33902 lt!2028183)))))

(assert (=> d!1586265 (= lt!2028183 e!3079040)))

(declare-fun c!839641 () Bool)

(assert (=> d!1586265 (= c!839641 ((_ is Empty!14876) (ite c!839345 (left!41344 (c!839087 input!5492)) (right!41674 (c!839087 input!5492)))))))

(assert (=> d!1586265 (isBalanced!4089 (ite c!839345 (left!41344 (c!839087 input!5492)) (right!41674 (c!839087 input!5492))))))

(assert (=> d!1586265 (= (splitAt!279 (ite c!839345 (left!41344 (c!839087 input!5492)) (right!41674 (c!839087 input!5492))) e!3078578) lt!2028183)))

(declare-fun bm!343864 () Bool)

(assert (=> bm!343864 (= call!343866 (size!37489 (ite c!839648 lt!2028192 lt!2028185)))))

(declare-fun b!4928136 () Bool)

(declare-fun res!2103211 () Bool)

(assert (=> b!4928136 (=> (not res!2103211) (not e!3079048))))

(assert (=> b!4928136 (= res!2103211 (isBalanced!4089 (_2!33902 lt!2028183)))))

(declare-fun b!4928137 () Bool)

(assert (=> b!4928137 (= e!3079045 (tuple2!61199 Empty!14876 (ite c!839345 (left!41344 (c!839087 input!5492)) (right!41674 (c!839087 input!5492)))))))

(declare-fun c!839649 () Bool)

(declare-fun b!4928138 () Bool)

(assert (=> b!4928138 (= c!839649 (= (size!37492 (left!41344 (ite c!839345 (left!41344 (c!839087 input!5492)) (right!41674 (c!839087 input!5492))))) e!3078578))))

(declare-fun lt!2028184 () Unit!147242)

(declare-fun lt!2028194 () Unit!147242)

(assert (=> b!4928138 (= lt!2028184 lt!2028194)))

(assert (=> b!4928138 (= (splitAtIndex!105 (++!12330 lt!2028185 lt!2028193) e!3078578) e!3079043)))

(declare-fun c!839650 () Bool)

(assert (=> b!4928138 (= c!839650 (= call!343866 e!3078578))))

(assert (=> b!4928138 (= lt!2028194 (splitAtLemma!29 lt!2028185 lt!2028193 e!3078578))))

(assert (=> b!4928138 (= lt!2028193 (list!17961 (right!41674 (ite c!839345 (left!41344 (c!839087 input!5492)) (right!41674 (c!839087 input!5492))))))))

(assert (=> b!4928138 (= lt!2028185 (list!17961 (left!41344 (ite c!839345 (left!41344 (c!839087 input!5492)) (right!41674 (c!839087 input!5492))))))))

(assert (=> b!4928138 (= e!3079047 e!3079049)))

(declare-fun b!4928139 () Bool)

(assert (=> b!4928139 (= e!3079042 e!3078578)))

(declare-fun b!4928140 () Bool)

(assert (=> b!4928140 (= e!3079046 (ite c!839651 lt!2028185 lt!2028193))))

(declare-fun bm!343865 () Bool)

(declare-fun c!839647 () Bool)

(assert (=> bm!343865 (= c!839647 c!839642)))

(assert (=> bm!343865 (= call!343868 (splitAt!279 (ite c!839642 (left!41344 (ite c!839345 (left!41344 (c!839087 input!5492)) (right!41674 (c!839087 input!5492)))) (right!41674 (ite c!839345 (left!41344 (c!839087 input!5492)) (right!41674 (c!839087 input!5492))))) e!3079050))))

(declare-fun b!4928141 () Bool)

(assert (=> b!4928141 (= e!3079048 (= (tuple2!61193 (list!17961 (_1!33902 lt!2028183)) (list!17961 (_2!33902 lt!2028183))) (splitAtIndex!105 (list!17961 (ite c!839345 (left!41344 (c!839087 input!5492)) (right!41674 (c!839087 input!5492)))) e!3078578)))))

(declare-fun b!4928142 () Bool)

(assert (=> b!4928142 (= e!3079049 e!3079044)))

(assert (=> b!4928142 (= c!839642 (< e!3078578 (size!37492 (left!41344 (ite c!839345 (left!41344 (c!839087 input!5492)) (right!41674 (c!839087 input!5492)))))))))

(declare-fun b!4928143 () Bool)

(assert (=> b!4928143 (= e!3079041 (tuple2!61199 (ite c!839345 (left!41344 (c!839087 input!5492)) (right!41674 (c!839087 input!5492))) Empty!14876))))

(declare-fun b!4928144 () Bool)

(assert (=> b!4928144 (= e!3079043 (tuple2!61193 lt!2028185 lt!2028193))))

(assert (= (and d!1586265 c!839641) b!4928135))

(assert (= (and d!1586265 (not c!839641)) b!4928131))

(assert (= (and b!4928131 c!839648) b!4928125))

(assert (= (and b!4928131 (not c!839648)) b!4928138))

(assert (= (and b!4928125 c!839644) b!4928137))

(assert (= (and b!4928125 (not c!839644)) b!4928134))

(assert (= (and b!4928134 c!839645) b!4928143))

(assert (= (and b!4928134 (not c!839645)) b!4928128))

(assert (= (and b!4928138 c!839650) b!4928144))

(assert (= (and b!4928138 (not c!839650)) b!4928130))

(assert (= (and b!4928130 c!839651) b!4928133))

(assert (= (and b!4928130 (not c!839651)) b!4928127))

(assert (= (or b!4928133 b!4928127) bm!343860))

(assert (= (or b!4928133 b!4928127) bm!343862))

(assert (= (and bm!343862 c!839646) b!4928139))

(assert (= (and bm!343862 (not c!839646)) b!4928126))

(assert (= (and b!4928138 c!839649) b!4928129))

(assert (= (and b!4928138 (not c!839649)) b!4928142))

(assert (= (and b!4928142 c!839642) b!4928124))

(assert (= (and b!4928142 (not c!839642)) b!4928122))

(assert (= (or b!4928124 b!4928122) bm!343861))

(assert (= (or b!4928124 b!4928122) bm!343865))

(assert (= (and bm!343865 c!839647) b!4928121))

(assert (= (and bm!343865 (not c!839647)) b!4928123))

(assert (= (or b!4928128 b!4928126 b!4928138 b!4928130) bm!343864))

(assert (= (or b!4928128 bm!343862) bm!343863))

(assert (= (and bm!343863 c!839643) b!4928132))

(assert (= (and bm!343863 (not c!839643)) b!4928140))

(assert (= (and d!1586265 res!2103210) b!4928136))

(assert (= (and b!4928136 res!2103211) b!4928141))

(declare-fun m!5947080 () Bool)

(assert (=> b!4928136 m!5947080))

(declare-fun m!5947082 () Bool)

(assert (=> b!4928123 m!5947082))

(declare-fun m!5947084 () Bool)

(assert (=> bm!343865 m!5947084))

(declare-fun m!5947086 () Bool)

(assert (=> bm!343864 m!5947086))

(declare-fun m!5947088 () Bool)

(assert (=> b!4928128 m!5947088))

(declare-fun m!5947090 () Bool)

(assert (=> b!4928128 m!5947090))

(declare-fun m!5947092 () Bool)

(assert (=> b!4928128 m!5947092))

(declare-fun m!5947094 () Bool)

(assert (=> b!4928128 m!5947094))

(declare-fun m!5947096 () Bool)

(assert (=> b!4928128 m!5947096))

(declare-fun m!5947098 () Bool)

(assert (=> b!4928128 m!5947098))

(declare-fun m!5947100 () Bool)

(assert (=> d!1586265 m!5947100))

(declare-fun m!5947102 () Bool)

(assert (=> d!1586265 m!5947102))

(assert (=> b!4928142 m!5947082))

(declare-fun m!5947104 () Bool)

(assert (=> bm!343861 m!5947104))

(declare-fun m!5947106 () Bool)

(assert (=> bm!343860 m!5947106))

(declare-fun m!5947108 () Bool)

(assert (=> bm!343863 m!5947108))

(declare-fun m!5947110 () Bool)

(assert (=> b!4928138 m!5947110))

(declare-fun m!5947112 () Bool)

(assert (=> b!4928138 m!5947112))

(assert (=> b!4928138 m!5947110))

(declare-fun m!5947114 () Bool)

(assert (=> b!4928138 m!5947114))

(declare-fun m!5947116 () Bool)

(assert (=> b!4928138 m!5947116))

(declare-fun m!5947118 () Bool)

(assert (=> b!4928138 m!5947118))

(assert (=> b!4928138 m!5947082))

(assert (=> b!4928132 m!5947094))

(declare-fun m!5947120 () Bool)

(assert (=> b!4928141 m!5947120))

(declare-fun m!5947122 () Bool)

(assert (=> b!4928141 m!5947122))

(declare-fun m!5947124 () Bool)

(assert (=> b!4928141 m!5947124))

(assert (=> b!4928141 m!5947124))

(declare-fun m!5947126 () Bool)

(assert (=> b!4928141 m!5947126))

(assert (=> bm!343707 d!1586265))

(declare-fun b!4928145 () Bool)

(declare-fun e!3079051 () List!56821)

(assert (=> b!4928145 (= e!3079051 lt!2027447)))

(declare-fun b!4928148 () Bool)

(declare-fun e!3079052 () Bool)

(declare-fun lt!2028196 () List!56821)

(assert (=> b!4928148 (= e!3079052 (or (not (= lt!2027447 Nil!56697)) (= lt!2028196 Nil!56697)))))

(declare-fun b!4928147 () Bool)

(declare-fun res!2103212 () Bool)

(assert (=> b!4928147 (=> (not res!2103212) (not e!3079052))))

(assert (=> b!4928147 (= res!2103212 (= (size!37489 lt!2028196) (+ (size!37489 Nil!56697) (size!37489 lt!2027447))))))

(declare-fun d!1586267 () Bool)

(assert (=> d!1586267 e!3079052))

(declare-fun res!2103213 () Bool)

(assert (=> d!1586267 (=> (not res!2103213) (not e!3079052))))

(assert (=> d!1586267 (= res!2103213 (= (content!10073 lt!2028196) ((_ map or) (content!10073 Nil!56697) (content!10073 lt!2027447))))))

(assert (=> d!1586267 (= lt!2028196 e!3079051)))

(declare-fun c!839652 () Bool)

(assert (=> d!1586267 (= c!839652 ((_ is Nil!56697) Nil!56697))))

(assert (=> d!1586267 (= (++!12330 Nil!56697 lt!2027447) lt!2028196)))

(declare-fun b!4928146 () Bool)

(assert (=> b!4928146 (= e!3079051 (Cons!56697 (h!63145 Nil!56697) (++!12330 (t!367283 Nil!56697) lt!2027447)))))

(assert (= (and d!1586267 c!839652) b!4928145))

(assert (= (and d!1586267 (not c!839652)) b!4928146))

(assert (= (and d!1586267 res!2103213) b!4928147))

(assert (= (and b!4928147 res!2103212) b!4928148))

(declare-fun m!5947128 () Bool)

(assert (=> b!4928147 m!5947128))

(assert (=> b!4928147 m!5944576))

(declare-fun m!5947130 () Bool)

(assert (=> b!4928147 m!5947130))

(declare-fun m!5947132 () Bool)

(assert (=> d!1586267 m!5947132))

(assert (=> d!1586267 m!5944740))

(declare-fun m!5947134 () Bool)

(assert (=> d!1586267 m!5947134))

(declare-fun m!5947136 () Bool)

(assert (=> b!4928146 m!5947136))

(assert (=> d!1585501 d!1586267))

(declare-fun d!1586269 () Bool)

(declare-fun lt!2028197 () Int)

(assert (=> d!1586269 (>= lt!2028197 0)))

(declare-fun e!3079053 () Int)

(assert (=> d!1586269 (= lt!2028197 e!3079053)))

(declare-fun c!839653 () Bool)

(assert (=> d!1586269 (= c!839653 ((_ is Nil!56697) lt!2027335))))

(assert (=> d!1586269 (= (size!37489 lt!2027335) lt!2028197)))

(declare-fun b!4928149 () Bool)

(assert (=> b!4928149 (= e!3079053 0)))

(declare-fun b!4928150 () Bool)

(assert (=> b!4928150 (= e!3079053 (+ 1 (size!37489 (t!367283 lt!2027335))))))

(assert (= (and d!1586269 c!839653) b!4928149))

(assert (= (and d!1586269 (not c!839653)) b!4928150))

(declare-fun m!5947138 () Bool)

(assert (=> b!4928150 m!5947138))

(assert (=> d!1585501 d!1586269))

(assert (=> d!1585501 d!1585527))

(declare-fun d!1586271 () Bool)

(assert (=> d!1586271 (= (inv!73500 (xs!18198 (left!41344 (c!839087 input!5492)))) (<= (size!37489 (innerList!14964 (xs!18198 (left!41344 (c!839087 input!5492))))) 2147483647))))

(declare-fun bs!1179956 () Bool)

(assert (= bs!1179956 d!1586271))

(declare-fun m!5947140 () Bool)

(assert (=> bs!1179956 m!5947140))

(assert (=> b!4927402 d!1586271))

(declare-fun d!1586273 () Bool)

(declare-fun e!3079056 () Bool)

(assert (=> d!1586273 e!3079056))

(declare-fun res!2103216 () Bool)

(assert (=> d!1586273 (=> (not res!2103216) (not e!3079056))))

(declare-fun lt!2028200 () List!56823)

(declare-fun noDuplicate!991 (List!56823) Bool)

(assert (=> d!1586273 (= res!2103216 (noDuplicate!991 lt!2028200))))

(declare-fun choose!36115 ((InoxSet Context!6038)) List!56823)

(assert (=> d!1586273 (= lt!2028200 (choose!36115 z!3559))))

(assert (=> d!1586273 (= (toList!7945 z!3559) lt!2028200)))

(declare-fun b!4928153 () Bool)

(declare-fun content!10075 (List!56823) (InoxSet Context!6038))

(assert (=> b!4928153 (= e!3079056 (= (content!10075 lt!2028200) z!3559))))

(assert (= (and d!1586273 res!2103216) b!4928153))

(declare-fun m!5947142 () Bool)

(assert (=> d!1586273 m!5947142))

(declare-fun m!5947144 () Bool)

(assert (=> d!1586273 m!5947144))

(declare-fun m!5947146 () Bool)

(assert (=> b!4928153 m!5947146))

(assert (=> bm!343672 d!1586273))

(declare-fun d!1586275 () Bool)

(declare-fun lt!2028201 () Int)

(assert (=> d!1586275 (>= lt!2028201 0)))

(declare-fun e!3079057 () Int)

(assert (=> d!1586275 (= lt!2028201 e!3079057)))

(declare-fun c!839654 () Bool)

(assert (=> d!1586275 (= c!839654 ((_ is Nil!56697) (_1!33899 lt!2027784)))))

(assert (=> d!1586275 (= (size!37489 (_1!33899 lt!2027784)) lt!2028201)))

(declare-fun b!4928154 () Bool)

(assert (=> b!4928154 (= e!3079057 0)))

(declare-fun b!4928155 () Bool)

(assert (=> b!4928155 (= e!3079057 (+ 1 (size!37489 (t!367283 (_1!33899 lt!2027784)))))))

(assert (= (and d!1586275 c!839654) b!4928154))

(assert (= (and d!1586275 (not c!839654)) b!4928155))

(declare-fun m!5947148 () Bool)

(assert (=> b!4928155 m!5947148))

(assert (=> b!4927313 d!1586275))

(assert (=> b!4927313 d!1586243))

(declare-fun d!1586277 () Bool)

(assert (not d!1586277))

(assert (=> b!4926818 d!1586277))

(declare-fun d!1586279 () Bool)

(declare-fun lt!2028202 () Bool)

(assert (=> d!1586279 (= lt!2028202 (isEmpty!30579 (list!17961 (right!41674 (c!839087 (_1!33900 lt!2027359))))))))

(assert (=> d!1586279 (= lt!2028202 (= (size!37492 (right!41674 (c!839087 (_1!33900 lt!2027359)))) 0))))

(assert (=> d!1586279 (= (isEmpty!30583 (right!41674 (c!839087 (_1!33900 lt!2027359)))) lt!2028202)))

(declare-fun bs!1179957 () Bool)

(assert (= bs!1179957 d!1586279))

(declare-fun m!5947150 () Bool)

(assert (=> bs!1179957 m!5947150))

(assert (=> bs!1179957 m!5947150))

(declare-fun m!5947152 () Bool)

(assert (=> bs!1179957 m!5947152))

(declare-fun m!5947154 () Bool)

(assert (=> bs!1179957 m!5947154))

(assert (=> b!4927038 d!1586279))

(declare-fun d!1586281 () Bool)

(declare-fun c!839655 () Bool)

(assert (=> d!1586281 (= c!839655 ((_ is Nil!56697) lt!2027592))))

(declare-fun e!3079058 () (InoxSet C!26964))

(assert (=> d!1586281 (= (content!10073 lt!2027592) e!3079058)))

(declare-fun b!4928156 () Bool)

(assert (=> b!4928156 (= e!3079058 ((as const (Array C!26964 Bool)) false))))

(declare-fun b!4928157 () Bool)

(assert (=> b!4928157 (= e!3079058 ((_ map or) (store ((as const (Array C!26964 Bool)) false) (h!63145 lt!2027592) true) (content!10073 (t!367283 lt!2027592))))))

(assert (= (and d!1586281 c!839655) b!4928156))

(assert (= (and d!1586281 (not c!839655)) b!4928157))

(declare-fun m!5947156 () Bool)

(assert (=> b!4928157 m!5947156))

(declare-fun m!5947158 () Bool)

(assert (=> b!4928157 m!5947158))

(assert (=> d!1585627 d!1586281))

(assert (=> d!1585627 d!1585931))

(declare-fun d!1586283 () Bool)

(declare-fun c!839656 () Bool)

(assert (=> d!1586283 (= c!839656 ((_ is Nil!56697) (Cons!56697 (head!10524 (getSuffix!2953 lt!2026995 Nil!56697)) Nil!56697)))))

(declare-fun e!3079059 () (InoxSet C!26964))

(assert (=> d!1586283 (= (content!10073 (Cons!56697 (head!10524 (getSuffix!2953 lt!2026995 Nil!56697)) Nil!56697)) e!3079059)))

(declare-fun b!4928158 () Bool)

(assert (=> b!4928158 (= e!3079059 ((as const (Array C!26964 Bool)) false))))

(declare-fun b!4928159 () Bool)

(assert (=> b!4928159 (= e!3079059 ((_ map or) (store ((as const (Array C!26964 Bool)) false) (h!63145 (Cons!56697 (head!10524 (getSuffix!2953 lt!2026995 Nil!56697)) Nil!56697)) true) (content!10073 (t!367283 (Cons!56697 (head!10524 (getSuffix!2953 lt!2026995 Nil!56697)) Nil!56697)))))))

(assert (= (and d!1586283 c!839656) b!4928158))

(assert (= (and d!1586283 (not c!839656)) b!4928159))

(declare-fun m!5947160 () Bool)

(assert (=> b!4928159 m!5947160))

(declare-fun m!5947162 () Bool)

(assert (=> b!4928159 m!5947162))

(assert (=> d!1585627 d!1586283))

(assert (=> d!1585529 d!1585527))

(assert (=> d!1585529 d!1585505))

(declare-fun d!1586285 () Bool)

(assert (=> d!1586285 (<= (size!37489 Nil!56697) (size!37489 lt!2027342))))

(assert (=> d!1586285 true))

(declare-fun _$64!615 () Unit!147242)

(assert (=> d!1586285 (= (choose!36089 Nil!56697 lt!2027342) _$64!615)))

(declare-fun bs!1179958 () Bool)

(assert (= bs!1179958 d!1586285))

(assert (=> bs!1179958 m!5944576))

(assert (=> bs!1179958 m!5944570))

(assert (=> d!1585529 d!1586285))

(declare-fun b!4928163 () Bool)

(declare-fun e!3079062 () Bool)

(assert (=> b!4928163 (= e!3079062 (>= (size!37489 lt!2027342) (size!37489 Nil!56697)))))

(declare-fun d!1586287 () Bool)

(assert (=> d!1586287 e!3079062))

(declare-fun res!2103217 () Bool)

(assert (=> d!1586287 (=> res!2103217 e!3079062)))

(declare-fun lt!2028203 () Bool)

(assert (=> d!1586287 (= res!2103217 (not lt!2028203))))

(declare-fun e!3079061 () Bool)

(assert (=> d!1586287 (= lt!2028203 e!3079061)))

(declare-fun res!2103219 () Bool)

(assert (=> d!1586287 (=> res!2103219 e!3079061)))

(assert (=> d!1586287 (= res!2103219 ((_ is Nil!56697) Nil!56697))))

(assert (=> d!1586287 (= (isPrefix!4965 Nil!56697 lt!2027342) lt!2028203)))

(declare-fun b!4928161 () Bool)

(declare-fun res!2103218 () Bool)

(declare-fun e!3079060 () Bool)

(assert (=> b!4928161 (=> (not res!2103218) (not e!3079060))))

(assert (=> b!4928161 (= res!2103218 (= (head!10524 Nil!56697) (head!10524 lt!2027342)))))

(declare-fun b!4928160 () Bool)

(assert (=> b!4928160 (= e!3079061 e!3079060)))

(declare-fun res!2103220 () Bool)

(assert (=> b!4928160 (=> (not res!2103220) (not e!3079060))))

(assert (=> b!4928160 (= res!2103220 (not ((_ is Nil!56697) lt!2027342)))))

(declare-fun b!4928162 () Bool)

(assert (=> b!4928162 (= e!3079060 (isPrefix!4965 (tail!9671 Nil!56697) (tail!9671 lt!2027342)))))

(assert (= (and d!1586287 (not res!2103219)) b!4928160))

(assert (= (and b!4928160 res!2103220) b!4928161))

(assert (= (and b!4928161 res!2103218) b!4928162))

(assert (= (and d!1586287 (not res!2103217)) b!4928163))

(assert (=> b!4928163 m!5944570))

(assert (=> b!4928163 m!5944576))

(assert (=> b!4928161 m!5945062))

(declare-fun m!5947164 () Bool)

(assert (=> b!4928161 m!5947164))

(assert (=> b!4928162 m!5945066))

(declare-fun m!5947166 () Bool)

(assert (=> b!4928162 m!5947166))

(assert (=> b!4928162 m!5945066))

(assert (=> b!4928162 m!5947166))

(declare-fun m!5947168 () Bool)

(assert (=> b!4928162 m!5947168))

(assert (=> d!1585529 d!1586287))

(declare-fun d!1586289 () Bool)

(declare-fun e!3079065 () Bool)

(assert (=> d!1586289 e!3079065))

(declare-fun res!2103221 () Bool)

(assert (=> d!1586289 (=> (not res!2103221) (not e!3079065))))

(declare-fun lt!2028204 () tuple2!61192)

(assert (=> d!1586289 (= res!2103221 (= (++!12330 (_1!33899 lt!2028204) (_2!33899 lt!2028204)) (t!367283 (list!17959 input!5492))))))

(declare-fun e!3079064 () tuple2!61192)

(assert (=> d!1586289 (= lt!2028204 e!3079064)))

(declare-fun c!839657 () Bool)

(assert (=> d!1586289 (= c!839657 ((_ is Nil!56697) (t!367283 (list!17959 input!5492))))))

(assert (=> d!1586289 (= (splitAtIndex!105 (t!367283 (list!17959 input!5492)) (- (findLongestMatchInnerZipperFast!89 z!3559 Nil!56697 0 lt!2026995 input!5492 lt!2026996) 1)) lt!2028204)))

(declare-fun b!4928164 () Bool)

(declare-fun e!3079063 () tuple2!61192)

(assert (=> b!4928164 (= e!3079063 (tuple2!61193 Nil!56697 (t!367283 (list!17959 input!5492))))))

(declare-fun b!4928165 () Bool)

(assert (=> b!4928165 (= e!3079064 (tuple2!61193 Nil!56697 Nil!56697))))

(declare-fun b!4928166 () Bool)

(assert (=> b!4928166 (= e!3079065 (= (_2!33899 lt!2028204) (drop!2227 (t!367283 (list!17959 input!5492)) (- (findLongestMatchInnerZipperFast!89 z!3559 Nil!56697 0 lt!2026995 input!5492 lt!2026996) 1))))))

(declare-fun lt!2028205 () tuple2!61192)

(declare-fun b!4928167 () Bool)

(assert (=> b!4928167 (= lt!2028205 (splitAtIndex!105 (t!367283 (t!367283 (list!17959 input!5492))) (- (- (findLongestMatchInnerZipperFast!89 z!3559 Nil!56697 0 lt!2026995 input!5492 lt!2026996) 1) 1)))))

(assert (=> b!4928167 (= e!3079063 (tuple2!61193 (Cons!56697 (h!63145 (t!367283 (list!17959 input!5492))) (_1!33899 lt!2028205)) (_2!33899 lt!2028205)))))

(declare-fun b!4928168 () Bool)

(assert (=> b!4928168 (= e!3079064 e!3079063)))

(declare-fun c!839658 () Bool)

(assert (=> b!4928168 (= c!839658 (<= (- (findLongestMatchInnerZipperFast!89 z!3559 Nil!56697 0 lt!2026995 input!5492 lt!2026996) 1) 0))))

(declare-fun b!4928169 () Bool)

(declare-fun res!2103222 () Bool)

(assert (=> b!4928169 (=> (not res!2103222) (not e!3079065))))

(assert (=> b!4928169 (= res!2103222 (= (_1!33899 lt!2028204) (take!580 (t!367283 (list!17959 input!5492)) (- (findLongestMatchInnerZipperFast!89 z!3559 Nil!56697 0 lt!2026995 input!5492 lt!2026996) 1))))))

(assert (= (and d!1586289 c!839657) b!4928165))

(assert (= (and d!1586289 (not c!839657)) b!4928168))

(assert (= (and b!4928168 c!839658) b!4928164))

(assert (= (and b!4928168 (not c!839658)) b!4928167))

(assert (= (and d!1586289 res!2103221) b!4928169))

(assert (= (and b!4928169 res!2103222) b!4928166))

(declare-fun m!5947170 () Bool)

(assert (=> d!1586289 m!5947170))

(declare-fun m!5947172 () Bool)

(assert (=> b!4928166 m!5947172))

(declare-fun m!5947174 () Bool)

(assert (=> b!4928167 m!5947174))

(assert (=> b!4928169 m!5946852))

(assert (=> b!4926885 d!1586289))

(declare-fun bs!1179959 () Bool)

(declare-fun d!1586291 () Bool)

(assert (= bs!1179959 (and d!1586291 d!1585811)))

(declare-fun lambda!245351 () Int)

(assert (=> bs!1179959 (= (= call!343716 call!343654) (= lambda!245351 lambda!245326))))

(declare-fun bs!1179960 () Bool)

(assert (= bs!1179960 (and d!1586291 d!1585821)))

(assert (=> bs!1179960 (= (= call!343716 call!343630) (= lambda!245351 lambda!245327))))

(declare-fun bs!1179961 () Bool)

(assert (= bs!1179961 (and d!1586291 d!1586131)))

(assert (=> bs!1179961 (= (= call!343716 call!343734) (= lambda!245351 lambda!245349))))

(declare-fun bs!1179962 () Bool)

(assert (= bs!1179962 (and d!1586291 d!1586153)))

(assert (=> bs!1179962 (= (= call!343716 call!343724) (= lambda!245351 lambda!245350))))

(assert (=> d!1586291 true))

(assert (=> d!1586291 (= (derivationStepZipper!592 z!3559 call!343716) (flatMap!267 z!3559 lambda!245351))))

(declare-fun bs!1179963 () Bool)

(assert (= bs!1179963 d!1586291))

(declare-fun m!5947176 () Bool)

(assert (=> bs!1179963 m!5947176))

(assert (=> bm!343715 d!1586291))

(declare-fun d!1586293 () Bool)

(declare-fun lt!2028208 () Bool)

(assert (=> d!1586293 (= lt!2028208 (select (content!10073 lt!2027331) lt!2027523))))

(declare-fun e!3079070 () Bool)

(assert (=> d!1586293 (= lt!2028208 e!3079070)))

(declare-fun res!2103227 () Bool)

(assert (=> d!1586293 (=> (not res!2103227) (not e!3079070))))

(assert (=> d!1586293 (= res!2103227 ((_ is Cons!56697) lt!2027331))))

(assert (=> d!1586293 (= (contains!19458 lt!2027331 lt!2027523) lt!2028208)))

(declare-fun b!4928174 () Bool)

(declare-fun e!3079071 () Bool)

(assert (=> b!4928174 (= e!3079070 e!3079071)))

(declare-fun res!2103228 () Bool)

(assert (=> b!4928174 (=> res!2103228 e!3079071)))

(assert (=> b!4928174 (= res!2103228 (= (h!63145 lt!2027331) lt!2027523))))

(declare-fun b!4928175 () Bool)

(assert (=> b!4928175 (= e!3079071 (contains!19458 (t!367283 lt!2027331) lt!2027523))))

(assert (= (and d!1586293 res!2103227) b!4928174))

(assert (= (and b!4928174 (not res!2103228)) b!4928175))

(assert (=> d!1586293 m!5944784))

(declare-fun m!5947178 () Bool)

(assert (=> d!1586293 m!5947178))

(declare-fun m!5947180 () Bool)

(assert (=> b!4928175 m!5947180))

(assert (=> d!1585543 d!1586293))

(declare-fun e!3079072 () List!56821)

(declare-fun b!4928176 () Bool)

(assert (=> b!4928176 (= e!3079072 (ite c!839354 lt!2027738 (_1!33899 lt!2027734)))))

(declare-fun b!4928179 () Bool)

(declare-fun lt!2028209 () List!56821)

(declare-fun e!3079073 () Bool)

(assert (=> b!4928179 (= e!3079073 (or (not (= (ite c!839354 lt!2027738 (_1!33899 lt!2027734)) Nil!56697)) (= lt!2028209 (ite c!839354 (_2!33899 lt!2027740) lt!2027730))))))

(declare-fun b!4928178 () Bool)

(declare-fun res!2103229 () Bool)

(assert (=> b!4928178 (=> (not res!2103229) (not e!3079073))))

(assert (=> b!4928178 (= res!2103229 (= (size!37489 lt!2028209) (+ (size!37489 (ite c!839354 (_2!33899 lt!2027740) lt!2027730)) (size!37489 (ite c!839354 lt!2027738 (_1!33899 lt!2027734))))))))

(declare-fun d!1586295 () Bool)

(assert (=> d!1586295 e!3079073))

(declare-fun res!2103230 () Bool)

(assert (=> d!1586295 (=> (not res!2103230) (not e!3079073))))

(assert (=> d!1586295 (= res!2103230 (= (content!10073 lt!2028209) ((_ map or) (content!10073 (ite c!839354 (_2!33899 lt!2027740) lt!2027730)) (content!10073 (ite c!839354 lt!2027738 (_1!33899 lt!2027734))))))))

(assert (=> d!1586295 (= lt!2028209 e!3079072)))

(declare-fun c!839659 () Bool)

(assert (=> d!1586295 (= c!839659 ((_ is Nil!56697) (ite c!839354 (_2!33899 lt!2027740) lt!2027730)))))

(assert (=> d!1586295 (= (++!12330 (ite c!839354 (_2!33899 lt!2027740) lt!2027730) (ite c!839354 lt!2027738 (_1!33899 lt!2027734))) lt!2028209)))

(declare-fun b!4928177 () Bool)

(assert (=> b!4928177 (= e!3079072 (Cons!56697 (h!63145 (ite c!839354 (_2!33899 lt!2027740) lt!2027730)) (++!12330 (t!367283 (ite c!839354 (_2!33899 lt!2027740) lt!2027730)) (ite c!839354 lt!2027738 (_1!33899 lt!2027734)))))))

(assert (= (and d!1586295 c!839659) b!4928176))

(assert (= (and d!1586295 (not c!839659)) b!4928177))

(assert (= (and d!1586295 res!2103230) b!4928178))

(assert (= (and b!4928178 res!2103229) b!4928179))

(declare-fun m!5947182 () Bool)

(assert (=> b!4928178 m!5947182))

(declare-fun m!5947184 () Bool)

(assert (=> b!4928178 m!5947184))

(declare-fun m!5947186 () Bool)

(assert (=> b!4928178 m!5947186))

(declare-fun m!5947188 () Bool)

(assert (=> d!1586295 m!5947188))

(declare-fun m!5947190 () Bool)

(assert (=> d!1586295 m!5947190))

(declare-fun m!5947192 () Bool)

(assert (=> d!1586295 m!5947192))

(declare-fun m!5947194 () Bool)

(assert (=> b!4928177 m!5947194))

(assert (=> bm!343702 d!1586295))

(declare-fun b!4928180 () Bool)

(declare-fun res!2103233 () Bool)

(declare-fun e!3079075 () Bool)

(assert (=> b!4928180 (=> (not res!2103233) (not e!3079075))))

(assert (=> b!4928180 (= res!2103233 (isBalanced!4089 (left!41344 (c!839087 (_2!33900 lt!2027466)))))))

(declare-fun b!4928181 () Bool)

(declare-fun res!2103236 () Bool)

(assert (=> b!4928181 (=> (not res!2103236) (not e!3079075))))

(assert (=> b!4928181 (= res!2103236 (<= (- (height!1986 (left!41344 (c!839087 (_2!33900 lt!2027466)))) (height!1986 (right!41674 (c!839087 (_2!33900 lt!2027466))))) 1))))

(declare-fun b!4928182 () Bool)

(declare-fun res!2103235 () Bool)

(assert (=> b!4928182 (=> (not res!2103235) (not e!3079075))))

(assert (=> b!4928182 (= res!2103235 (not (isEmpty!30583 (left!41344 (c!839087 (_2!33900 lt!2027466))))))))

(declare-fun b!4928183 () Bool)

(declare-fun res!2103232 () Bool)

(assert (=> b!4928183 (=> (not res!2103232) (not e!3079075))))

(assert (=> b!4928183 (= res!2103232 (isBalanced!4089 (right!41674 (c!839087 (_2!33900 lt!2027466)))))))

(declare-fun b!4928184 () Bool)

(declare-fun e!3079074 () Bool)

(assert (=> b!4928184 (= e!3079074 e!3079075)))

(declare-fun res!2103231 () Bool)

(assert (=> b!4928184 (=> (not res!2103231) (not e!3079075))))

(assert (=> b!4928184 (= res!2103231 (<= (- 1) (- (height!1986 (left!41344 (c!839087 (_2!33900 lt!2027466)))) (height!1986 (right!41674 (c!839087 (_2!33900 lt!2027466)))))))))

(declare-fun d!1586297 () Bool)

(declare-fun res!2103234 () Bool)

(assert (=> d!1586297 (=> res!2103234 e!3079074)))

(assert (=> d!1586297 (= res!2103234 (not ((_ is Node!14876) (c!839087 (_2!33900 lt!2027466)))))))

(assert (=> d!1586297 (= (isBalanced!4089 (c!839087 (_2!33900 lt!2027466))) e!3079074)))

(declare-fun b!4928185 () Bool)

(assert (=> b!4928185 (= e!3079075 (not (isEmpty!30583 (right!41674 (c!839087 (_2!33900 lt!2027466))))))))

(assert (= (and d!1586297 (not res!2103234)) b!4928184))

(assert (= (and b!4928184 res!2103231) b!4928181))

(assert (= (and b!4928181 res!2103236) b!4928180))

(assert (= (and b!4928180 res!2103233) b!4928183))

(assert (= (and b!4928183 res!2103232) b!4928182))

(assert (= (and b!4928182 res!2103235) b!4928185))

(declare-fun m!5947196 () Bool)

(assert (=> b!4928182 m!5947196))

(declare-fun m!5947198 () Bool)

(assert (=> b!4928183 m!5947198))

(declare-fun m!5947200 () Bool)

(assert (=> b!4928181 m!5947200))

(declare-fun m!5947202 () Bool)

(assert (=> b!4928181 m!5947202))

(assert (=> b!4928184 m!5947200))

(assert (=> b!4928184 m!5947202))

(declare-fun m!5947204 () Bool)

(assert (=> b!4928185 m!5947204))

(declare-fun m!5947206 () Bool)

(assert (=> b!4928180 m!5947206))

(assert (=> b!4926758 d!1586297))

(declare-fun d!1586299 () Bool)

(declare-fun lt!2028210 () Int)

(assert (=> d!1586299 (>= lt!2028210 0)))

(declare-fun e!3079076 () Int)

(assert (=> d!1586299 (= lt!2028210 e!3079076)))

(declare-fun c!839660 () Bool)

(assert (=> d!1586299 (= c!839660 ((_ is Nil!56697) (innerList!14964 (xs!18198 (c!839087 input!5492)))))))

(assert (=> d!1586299 (= (size!37489 (innerList!14964 (xs!18198 (c!839087 input!5492)))) lt!2028210)))

(declare-fun b!4928186 () Bool)

(assert (=> b!4928186 (= e!3079076 0)))

(declare-fun b!4928187 () Bool)

(assert (=> b!4928187 (= e!3079076 (+ 1 (size!37489 (t!367283 (innerList!14964 (xs!18198 (c!839087 input!5492)))))))))

(assert (= (and d!1586299 c!839660) b!4928186))

(assert (= (and d!1586299 (not c!839660)) b!4928187))

(declare-fun m!5947208 () Bool)

(assert (=> b!4928187 m!5947208))

(assert (=> d!1585825 d!1586299))

(declare-fun d!1586301 () Bool)

(declare-fun lt!2028211 () Int)

(assert (=> d!1586301 (>= lt!2028211 0)))

(declare-fun e!3079077 () Int)

(assert (=> d!1586301 (= lt!2028211 e!3079077)))

(declare-fun c!839661 () Bool)

(assert (=> d!1586301 (= c!839661 ((_ is Nil!56697) (++!12330 Nil!56697 lt!2026995)))))

(assert (=> d!1586301 (= (size!37489 (++!12330 Nil!56697 lt!2026995)) lt!2028211)))

(declare-fun b!4928188 () Bool)

(assert (=> b!4928188 (= e!3079077 0)))

(declare-fun b!4928189 () Bool)

(assert (=> b!4928189 (= e!3079077 (+ 1 (size!37489 (t!367283 (++!12330 Nil!56697 lt!2026995)))))))

(assert (= (and d!1586301 c!839661) b!4928188))

(assert (= (and d!1586301 (not c!839661)) b!4928189))

(declare-fun m!5947210 () Bool)

(assert (=> b!4928189 m!5947210))

(assert (=> b!4926954 d!1586301))

(assert (=> b!4926954 d!1585527))

(assert (=> b!4926757 d!1586025))

(declare-fun d!1586303 () Bool)

(declare-fun lt!2028212 () Int)

(assert (=> d!1586303 (>= lt!2028212 0)))

(declare-fun e!3079078 () Int)

(assert (=> d!1586303 (= lt!2028212 e!3079078)))

(declare-fun c!839662 () Bool)

(assert (=> d!1586303 (= c!839662 ((_ is Nil!56697) lt!2027592))))

(assert (=> d!1586303 (= (size!37489 lt!2027592) lt!2028212)))

(declare-fun b!4928190 () Bool)

(assert (=> b!4928190 (= e!3079078 0)))

(declare-fun b!4928191 () Bool)

(assert (=> b!4928191 (= e!3079078 (+ 1 (size!37489 (t!367283 lt!2027592))))))

(assert (= (and d!1586303 c!839662) b!4928190))

(assert (= (and d!1586303 (not c!839662)) b!4928191))

(declare-fun m!5947212 () Bool)

(assert (=> b!4928191 m!5947212))

(assert (=> b!4926989 d!1586303))

(assert (=> b!4926989 d!1585527))

(declare-fun d!1586305 () Bool)

(declare-fun lt!2028213 () Int)

(assert (=> d!1586305 (>= lt!2028213 0)))

(declare-fun e!3079079 () Int)

(assert (=> d!1586305 (= lt!2028213 e!3079079)))

(declare-fun c!839663 () Bool)

(assert (=> d!1586305 (= c!839663 ((_ is Nil!56697) (Cons!56697 (head!10524 (getSuffix!2953 lt!2026995 Nil!56697)) Nil!56697)))))

(assert (=> d!1586305 (= (size!37489 (Cons!56697 (head!10524 (getSuffix!2953 lt!2026995 Nil!56697)) Nil!56697)) lt!2028213)))

(declare-fun b!4928192 () Bool)

(assert (=> b!4928192 (= e!3079079 0)))

(declare-fun b!4928193 () Bool)

(assert (=> b!4928193 (= e!3079079 (+ 1 (size!37489 (t!367283 (Cons!56697 (head!10524 (getSuffix!2953 lt!2026995 Nil!56697)) Nil!56697)))))))

(assert (= (and d!1586305 c!839663) b!4928192))

(assert (= (and d!1586305 (not c!839663)) b!4928193))

(declare-fun m!5947214 () Bool)

(assert (=> b!4928193 m!5947214))

(assert (=> b!4926989 d!1586305))

(assert (=> b!4926839 d!1586025))

(declare-fun d!1586307 () Bool)

(assert (=> d!1586307 (= lt!2026995 lt!2027435)))

(assert (=> d!1586307 true))

(declare-fun _$63!1184 () Unit!147242)

(assert (=> d!1586307 (= (choose!36092 Nil!56697 lt!2026995 Nil!56697 lt!2027435 lt!2026995) _$63!1184)))

(assert (=> d!1585607 d!1586307))

(assert (=> d!1585607 d!1586211))

(declare-fun b!4928194 () Bool)

(declare-fun e!3079080 () List!56821)

(assert (=> b!4928194 (= e!3079080 (_2!33899 lt!2027534))))

(declare-fun b!4928197 () Bool)

(declare-fun e!3079081 () Bool)

(declare-fun lt!2028214 () List!56821)

(assert (=> b!4928197 (= e!3079081 (or (not (= (_2!33899 lt!2027534) Nil!56697)) (= lt!2028214 (_1!33899 lt!2027534))))))

(declare-fun b!4928196 () Bool)

(declare-fun res!2103237 () Bool)

(assert (=> b!4928196 (=> (not res!2103237) (not e!3079081))))

(assert (=> b!4928196 (= res!2103237 (= (size!37489 lt!2028214) (+ (size!37489 (_1!33899 lt!2027534)) (size!37489 (_2!33899 lt!2027534)))))))

(declare-fun d!1586309 () Bool)

(assert (=> d!1586309 e!3079081))

(declare-fun res!2103238 () Bool)

(assert (=> d!1586309 (=> (not res!2103238) (not e!3079081))))

(assert (=> d!1586309 (= res!2103238 (= (content!10073 lt!2028214) ((_ map or) (content!10073 (_1!33899 lt!2027534)) (content!10073 (_2!33899 lt!2027534)))))))

(assert (=> d!1586309 (= lt!2028214 e!3079080)))

(declare-fun c!839664 () Bool)

(assert (=> d!1586309 (= c!839664 ((_ is Nil!56697) (_1!33899 lt!2027534)))))

(assert (=> d!1586309 (= (++!12330 (_1!33899 lt!2027534) (_2!33899 lt!2027534)) lt!2028214)))

(declare-fun b!4928195 () Bool)

(assert (=> b!4928195 (= e!3079080 (Cons!56697 (h!63145 (_1!33899 lt!2027534)) (++!12330 (t!367283 (_1!33899 lt!2027534)) (_2!33899 lt!2027534))))))

(assert (= (and d!1586309 c!839664) b!4928194))

(assert (= (and d!1586309 (not c!839664)) b!4928195))

(assert (= (and d!1586309 res!2103238) b!4928196))

(assert (= (and b!4928196 res!2103237) b!4928197))

(declare-fun m!5947216 () Bool)

(assert (=> b!4928196 m!5947216))

(declare-fun m!5947218 () Bool)

(assert (=> b!4928196 m!5947218))

(declare-fun m!5947220 () Bool)

(assert (=> b!4928196 m!5947220))

(declare-fun m!5947222 () Bool)

(assert (=> d!1586309 m!5947222))

(declare-fun m!5947224 () Bool)

(assert (=> d!1586309 m!5947224))

(declare-fun m!5947226 () Bool)

(assert (=> d!1586309 m!5947226))

(declare-fun m!5947228 () Bool)

(assert (=> b!4928195 m!5947228))

(assert (=> d!1585561 d!1586309))

(declare-fun d!1586311 () Bool)

(declare-fun lt!2028215 () Int)

(assert (=> d!1586311 (>= lt!2028215 0)))

(declare-fun e!3079082 () Int)

(assert (=> d!1586311 (= lt!2028215 e!3079082)))

(declare-fun c!839665 () Bool)

(assert (=> d!1586311 (= c!839665 ((_ is Nil!56697) (t!367283 (t!367283 lt!2026994))))))

(assert (=> d!1586311 (= (size!37489 (t!367283 (t!367283 lt!2026994))) lt!2028215)))

(declare-fun b!4928198 () Bool)

(assert (=> b!4928198 (= e!3079082 0)))

(declare-fun b!4928199 () Bool)

(assert (=> b!4928199 (= e!3079082 (+ 1 (size!37489 (t!367283 (t!367283 (t!367283 lt!2026994))))))))

(assert (= (and d!1586311 c!839665) b!4928198))

(assert (= (and d!1586311 (not c!839665)) b!4928199))

(declare-fun m!5947230 () Bool)

(assert (=> b!4928199 m!5947230))

(assert (=> b!4927322 d!1586311))

(declare-fun d!1586313 () Bool)

(declare-fun e!3079085 () Bool)

(assert (=> d!1586313 e!3079085))

(declare-fun res!2103239 () Bool)

(assert (=> d!1586313 (=> (not res!2103239) (not e!3079085))))

(declare-fun lt!2028216 () tuple2!61192)

(assert (=> d!1586313 (= res!2103239 (= (++!12330 (_1!33899 lt!2028216) (_2!33899 lt!2028216)) e!3078574))))

(declare-fun e!3079084 () tuple2!61192)

(assert (=> d!1586313 (= lt!2028216 e!3079084)))

(declare-fun c!839666 () Bool)

(assert (=> d!1586313 (= c!839666 ((_ is Nil!56697) e!3078574))))

(assert (=> d!1586313 (= (splitAtIndex!105 e!3078574 (ite c!839351 (findLongestMatchInnerZipperFast!89 z!3559 Nil!56697 0 lt!2026995 input!5492 lt!2026996) e!3078570)) lt!2028216)))

(declare-fun b!4928200 () Bool)

(declare-fun e!3079083 () tuple2!61192)

(assert (=> b!4928200 (= e!3079083 (tuple2!61193 Nil!56697 e!3078574))))

(declare-fun b!4928201 () Bool)

(assert (=> b!4928201 (= e!3079084 (tuple2!61193 Nil!56697 Nil!56697))))

(declare-fun b!4928202 () Bool)

(assert (=> b!4928202 (= e!3079085 (= (_2!33899 lt!2028216) (drop!2227 e!3078574 (ite c!839351 (findLongestMatchInnerZipperFast!89 z!3559 Nil!56697 0 lt!2026995 input!5492 lt!2026996) e!3078570))))))

(declare-fun b!4928203 () Bool)

(declare-fun lt!2028217 () tuple2!61192)

(assert (=> b!4928203 (= lt!2028217 (splitAtIndex!105 (t!367283 e!3078574) (- (ite c!839351 (findLongestMatchInnerZipperFast!89 z!3559 Nil!56697 0 lt!2026995 input!5492 lt!2026996) e!3078570) 1)))))

(assert (=> b!4928203 (= e!3079083 (tuple2!61193 (Cons!56697 (h!63145 e!3078574) (_1!33899 lt!2028217)) (_2!33899 lt!2028217)))))

(declare-fun b!4928204 () Bool)

(assert (=> b!4928204 (= e!3079084 e!3079083)))

(declare-fun c!839667 () Bool)

(assert (=> b!4928204 (= c!839667 (<= (ite c!839351 (findLongestMatchInnerZipperFast!89 z!3559 Nil!56697 0 lt!2026995 input!5492 lt!2026996) e!3078570) 0))))

(declare-fun b!4928205 () Bool)

(declare-fun res!2103240 () Bool)

(assert (=> b!4928205 (=> (not res!2103240) (not e!3079085))))

(assert (=> b!4928205 (= res!2103240 (= (_1!33899 lt!2028216) (take!580 e!3078574 (ite c!839351 (findLongestMatchInnerZipperFast!89 z!3559 Nil!56697 0 lt!2026995 input!5492 lt!2026996) e!3078570))))))

(assert (= (and d!1586313 c!839666) b!4928201))

(assert (= (and d!1586313 (not c!839666)) b!4928204))

(assert (= (and b!4928204 c!839667) b!4928200))

(assert (= (and b!4928204 (not c!839667)) b!4928203))

(assert (= (and d!1586313 res!2103239) b!4928205))

(assert (= (and b!4928205 res!2103240) b!4928202))

(declare-fun m!5947232 () Bool)

(assert (=> d!1586313 m!5947232))

(declare-fun m!5947234 () Bool)

(assert (=> b!4928202 m!5947234))

(declare-fun m!5947236 () Bool)

(assert (=> b!4928203 m!5947236))

(declare-fun m!5947238 () Bool)

(assert (=> b!4928205 m!5947238))

(assert (=> bm!343705 d!1586313))

(assert (=> bm!343717 d!1586249))

(declare-fun b!4928206 () Bool)

(declare-fun e!3079086 () List!56821)

(assert (=> b!4928206 (= e!3079086 (list!17961 (right!41674 (c!839087 (_2!33900 lt!2026997)))))))

(declare-fun b!4928209 () Bool)

(declare-fun e!3079087 () Bool)

(declare-fun lt!2028218 () List!56821)

(assert (=> b!4928209 (= e!3079087 (or (not (= (list!17961 (right!41674 (c!839087 (_2!33900 lt!2026997)))) Nil!56697)) (= lt!2028218 (list!17961 (left!41344 (c!839087 (_2!33900 lt!2026997)))))))))

(declare-fun b!4928208 () Bool)

(declare-fun res!2103241 () Bool)

(assert (=> b!4928208 (=> (not res!2103241) (not e!3079087))))

(assert (=> b!4928208 (= res!2103241 (= (size!37489 lt!2028218) (+ (size!37489 (list!17961 (left!41344 (c!839087 (_2!33900 lt!2026997))))) (size!37489 (list!17961 (right!41674 (c!839087 (_2!33900 lt!2026997))))))))))

(declare-fun d!1586315 () Bool)

(assert (=> d!1586315 e!3079087))

(declare-fun res!2103242 () Bool)

(assert (=> d!1586315 (=> (not res!2103242) (not e!3079087))))

(assert (=> d!1586315 (= res!2103242 (= (content!10073 lt!2028218) ((_ map or) (content!10073 (list!17961 (left!41344 (c!839087 (_2!33900 lt!2026997))))) (content!10073 (list!17961 (right!41674 (c!839087 (_2!33900 lt!2026997))))))))))

(assert (=> d!1586315 (= lt!2028218 e!3079086)))

(declare-fun c!839668 () Bool)

(assert (=> d!1586315 (= c!839668 ((_ is Nil!56697) (list!17961 (left!41344 (c!839087 (_2!33900 lt!2026997))))))))

(assert (=> d!1586315 (= (++!12330 (list!17961 (left!41344 (c!839087 (_2!33900 lt!2026997)))) (list!17961 (right!41674 (c!839087 (_2!33900 lt!2026997))))) lt!2028218)))

(declare-fun b!4928207 () Bool)

(assert (=> b!4928207 (= e!3079086 (Cons!56697 (h!63145 (list!17961 (left!41344 (c!839087 (_2!33900 lt!2026997))))) (++!12330 (t!367283 (list!17961 (left!41344 (c!839087 (_2!33900 lt!2026997))))) (list!17961 (right!41674 (c!839087 (_2!33900 lt!2026997)))))))))

(assert (= (and d!1586315 c!839668) b!4928206))

(assert (= (and d!1586315 (not c!839668)) b!4928207))

(assert (= (and d!1586315 res!2103242) b!4928208))

(assert (= (and b!4928208 res!2103241) b!4928209))

(declare-fun m!5947240 () Bool)

(assert (=> b!4928208 m!5947240))

(assert (=> b!4928208 m!5945758))

(declare-fun m!5947242 () Bool)

(assert (=> b!4928208 m!5947242))

(assert (=> b!4928208 m!5945760))

(declare-fun m!5947244 () Bool)

(assert (=> b!4928208 m!5947244))

(declare-fun m!5947246 () Bool)

(assert (=> d!1586315 m!5947246))

(assert (=> d!1586315 m!5945758))

(declare-fun m!5947248 () Bool)

(assert (=> d!1586315 m!5947248))

(assert (=> d!1586315 m!5945760))

(declare-fun m!5947250 () Bool)

(assert (=> d!1586315 m!5947250))

(assert (=> b!4928207 m!5945760))

(declare-fun m!5947252 () Bool)

(assert (=> b!4928207 m!5947252))

(assert (=> b!4927354 d!1586315))

(declare-fun b!4928213 () Bool)

(declare-fun e!3079089 () List!56821)

(assert (=> b!4928213 (= e!3079089 (++!12330 (list!17961 (left!41344 (left!41344 (c!839087 (_2!33900 lt!2026997))))) (list!17961 (right!41674 (left!41344 (c!839087 (_2!33900 lt!2026997)))))))))

(declare-fun b!4928212 () Bool)

(assert (=> b!4928212 (= e!3079089 (list!17963 (xs!18198 (left!41344 (c!839087 (_2!33900 lt!2026997))))))))

(declare-fun d!1586317 () Bool)

(declare-fun c!839669 () Bool)

(assert (=> d!1586317 (= c!839669 ((_ is Empty!14876) (left!41344 (c!839087 (_2!33900 lt!2026997)))))))

(declare-fun e!3079088 () List!56821)

(assert (=> d!1586317 (= (list!17961 (left!41344 (c!839087 (_2!33900 lt!2026997)))) e!3079088)))

(declare-fun b!4928210 () Bool)

(assert (=> b!4928210 (= e!3079088 Nil!56697)))

(declare-fun b!4928211 () Bool)

(assert (=> b!4928211 (= e!3079088 e!3079089)))

(declare-fun c!839670 () Bool)

(assert (=> b!4928211 (= c!839670 ((_ is Leaf!24747) (left!41344 (c!839087 (_2!33900 lt!2026997)))))))

(assert (= (and d!1586317 c!839669) b!4928210))

(assert (= (and d!1586317 (not c!839669)) b!4928211))

(assert (= (and b!4928211 c!839670) b!4928212))

(assert (= (and b!4928211 (not c!839670)) b!4928213))

(declare-fun m!5947254 () Bool)

(assert (=> b!4928213 m!5947254))

(declare-fun m!5947256 () Bool)

(assert (=> b!4928213 m!5947256))

(assert (=> b!4928213 m!5947254))

(assert (=> b!4928213 m!5947256))

(declare-fun m!5947258 () Bool)

(assert (=> b!4928213 m!5947258))

(declare-fun m!5947260 () Bool)

(assert (=> b!4928212 m!5947260))

(assert (=> b!4927354 d!1586317))

(declare-fun b!4928217 () Bool)

(declare-fun e!3079091 () List!56821)

(assert (=> b!4928217 (= e!3079091 (++!12330 (list!17961 (left!41344 (right!41674 (c!839087 (_2!33900 lt!2026997))))) (list!17961 (right!41674 (right!41674 (c!839087 (_2!33900 lt!2026997)))))))))

(declare-fun b!4928216 () Bool)

(assert (=> b!4928216 (= e!3079091 (list!17963 (xs!18198 (right!41674 (c!839087 (_2!33900 lt!2026997))))))))

(declare-fun d!1586319 () Bool)

(declare-fun c!839671 () Bool)

(assert (=> d!1586319 (= c!839671 ((_ is Empty!14876) (right!41674 (c!839087 (_2!33900 lt!2026997)))))))

(declare-fun e!3079090 () List!56821)

(assert (=> d!1586319 (= (list!17961 (right!41674 (c!839087 (_2!33900 lt!2026997)))) e!3079090)))

(declare-fun b!4928214 () Bool)

(assert (=> b!4928214 (= e!3079090 Nil!56697)))

(declare-fun b!4928215 () Bool)

(assert (=> b!4928215 (= e!3079090 e!3079091)))

(declare-fun c!839672 () Bool)

(assert (=> b!4928215 (= c!839672 ((_ is Leaf!24747) (right!41674 (c!839087 (_2!33900 lt!2026997)))))))

(assert (= (and d!1586319 c!839671) b!4928214))

(assert (= (and d!1586319 (not c!839671)) b!4928215))

(assert (= (and b!4928215 c!839672) b!4928216))

(assert (= (and b!4928215 (not c!839672)) b!4928217))

(declare-fun m!5947262 () Bool)

(assert (=> b!4928217 m!5947262))

(declare-fun m!5947264 () Bool)

(assert (=> b!4928217 m!5947264))

(assert (=> b!4928217 m!5947262))

(assert (=> b!4928217 m!5947264))

(declare-fun m!5947266 () Bool)

(assert (=> b!4928217 m!5947266))

(declare-fun m!5947268 () Bool)

(assert (=> b!4928216 m!5947268))

(assert (=> b!4927354 d!1586319))

(assert (=> b!4926737 d!1585837))

(assert (=> b!4926737 d!1585839))

(assert (=> b!4927385 d!1585489))

(declare-fun d!1586321 () Bool)

(declare-fun res!2103243 () Bool)

(declare-fun e!3079092 () Bool)

(assert (=> d!1586321 (=> (not res!2103243) (not e!3079092))))

(assert (=> d!1586321 (= res!2103243 (= (csize!29982 (left!41344 (c!839087 input!5492))) (+ (size!37492 (left!41344 (left!41344 (c!839087 input!5492)))) (size!37492 (right!41674 (left!41344 (c!839087 input!5492)))))))))

(assert (=> d!1586321 (= (inv!73498 (left!41344 (c!839087 input!5492))) e!3079092)))

(declare-fun b!4928218 () Bool)

(declare-fun res!2103244 () Bool)

(assert (=> b!4928218 (=> (not res!2103244) (not e!3079092))))

(assert (=> b!4928218 (= res!2103244 (and (not (= (left!41344 (left!41344 (c!839087 input!5492))) Empty!14876)) (not (= (right!41674 (left!41344 (c!839087 input!5492))) Empty!14876))))))

(declare-fun b!4928219 () Bool)

(declare-fun res!2103245 () Bool)

(assert (=> b!4928219 (=> (not res!2103245) (not e!3079092))))

(assert (=> b!4928219 (= res!2103245 (= (cheight!15087 (left!41344 (c!839087 input!5492))) (+ (max!0 (height!1986 (left!41344 (left!41344 (c!839087 input!5492)))) (height!1986 (right!41674 (left!41344 (c!839087 input!5492))))) 1)))))

(declare-fun b!4928220 () Bool)

(assert (=> b!4928220 (= e!3079092 (<= 0 (cheight!15087 (left!41344 (c!839087 input!5492)))))))

(assert (= (and d!1586321 res!2103243) b!4928218))

(assert (= (and b!4928218 res!2103244) b!4928219))

(assert (= (and b!4928219 res!2103245) b!4928220))

(declare-fun m!5947270 () Bool)

(assert (=> d!1586321 m!5947270))

(declare-fun m!5947272 () Bool)

(assert (=> d!1586321 m!5947272))

(declare-fun m!5947274 () Bool)

(assert (=> b!4928219 m!5947274))

(declare-fun m!5947276 () Bool)

(assert (=> b!4928219 m!5947276))

(assert (=> b!4928219 m!5947274))

(assert (=> b!4928219 m!5947276))

(declare-fun m!5947278 () Bool)

(assert (=> b!4928219 m!5947278))

(assert (=> b!4927374 d!1586321))

(declare-fun e!3079094 () List!56821)

(declare-fun b!4928224 () Bool)

(assert (=> b!4928224 (= e!3079094 (++!12330 (list!17961 (left!41344 (c!839087 (ite c!839148 input!5492 (_1!33900 lt!2027332))))) (list!17961 (right!41674 (c!839087 (ite c!839148 input!5492 (_1!33900 lt!2027332)))))))))

(declare-fun b!4928223 () Bool)

(assert (=> b!4928223 (= e!3079094 (list!17963 (xs!18198 (c!839087 (ite c!839148 input!5492 (_1!33900 lt!2027332))))))))

(declare-fun c!839673 () Bool)

(declare-fun d!1586323 () Bool)

(assert (=> d!1586323 (= c!839673 ((_ is Empty!14876) (c!839087 (ite c!839148 input!5492 (_1!33900 lt!2027332)))))))

(declare-fun e!3079093 () List!56821)

(assert (=> d!1586323 (= (list!17961 (c!839087 (ite c!839148 input!5492 (_1!33900 lt!2027332)))) e!3079093)))

(declare-fun b!4928221 () Bool)

(assert (=> b!4928221 (= e!3079093 Nil!56697)))

(declare-fun b!4928222 () Bool)

(assert (=> b!4928222 (= e!3079093 e!3079094)))

(declare-fun c!839674 () Bool)

(assert (=> b!4928222 (= c!839674 ((_ is Leaf!24747) (c!839087 (ite c!839148 input!5492 (_1!33900 lt!2027332)))))))

(assert (= (and d!1586323 c!839673) b!4928221))

(assert (= (and d!1586323 (not c!839673)) b!4928222))

(assert (= (and b!4928222 c!839674) b!4928223))

(assert (= (and b!4928222 (not c!839674)) b!4928224))

(declare-fun m!5947280 () Bool)

(assert (=> b!4928224 m!5947280))

(declare-fun m!5947282 () Bool)

(assert (=> b!4928224 m!5947282))

(assert (=> b!4928224 m!5947280))

(assert (=> b!4928224 m!5947282))

(declare-fun m!5947284 () Bool)

(assert (=> b!4928224 m!5947284))

(declare-fun m!5947286 () Bool)

(assert (=> b!4928223 m!5947286))

(assert (=> d!1585767 d!1586323))

(declare-fun d!1586325 () Bool)

(declare-fun c!839675 () Bool)

(assert (=> d!1586325 (= c!839675 ((_ is Nil!56697) (t!367283 lt!2027350)))))

(declare-fun e!3079095 () (InoxSet C!26964))

(assert (=> d!1586325 (= (content!10073 (t!367283 lt!2027350)) e!3079095)))

(declare-fun b!4928225 () Bool)

(assert (=> b!4928225 (= e!3079095 ((as const (Array C!26964 Bool)) false))))

(declare-fun b!4928226 () Bool)

(assert (=> b!4928226 (= e!3079095 ((_ map or) (store ((as const (Array C!26964 Bool)) false) (h!63145 (t!367283 lt!2027350)) true) (content!10073 (t!367283 (t!367283 lt!2027350)))))))

(assert (= (and d!1586325 c!839675) b!4928225))

(assert (= (and d!1586325 (not c!839675)) b!4928226))

(declare-fun m!5947288 () Bool)

(assert (=> b!4928226 m!5947288))

(declare-fun m!5947290 () Bool)

(assert (=> b!4928226 m!5947290))

(assert (=> b!4927342 d!1586325))

(declare-fun bs!1179964 () Bool)

(declare-fun d!1586327 () Bool)

(assert (= bs!1179964 (and d!1586327 d!1586003)))

(declare-fun lambda!245352 () Int)

(assert (=> bs!1179964 (not (= lambda!245352 lambda!245337))))

(declare-fun bs!1179965 () Bool)

(assert (= bs!1179965 (and d!1586327 d!1585879)))

(assert (=> bs!1179965 (not (= lambda!245352 lambda!245331))))

(declare-fun bs!1179966 () Bool)

(assert (= bs!1179966 (and d!1586327 d!1585835)))

(assert (=> bs!1179966 (= lambda!245352 lambda!245330)))

(declare-fun bs!1179967 () Bool)

(assert (= bs!1179967 (and d!1586327 b!4927721)))

(assert (=> bs!1179967 (not (= lambda!245352 lambda!245339))))

(declare-fun bs!1179968 () Bool)

(assert (= bs!1179968 (and d!1586327 b!4927573)))

(assert (=> bs!1179968 (not (= lambda!245352 lambda!245333))))

(declare-fun bs!1179969 () Bool)

(assert (= bs!1179969 (and d!1586327 d!1586047)))

(assert (=> bs!1179969 (= lambda!245352 lambda!245347)))

(declare-fun bs!1179970 () Bool)

(assert (= bs!1179970 (and d!1586327 b!4926928)))

(assert (=> bs!1179970 (not (= lambda!245352 lambda!245305))))

(declare-fun bs!1179971 () Bool)

(assert (= bs!1179971 (and d!1586327 d!1585903)))

(assert (=> bs!1179971 (not (= lambda!245352 lambda!245336))))

(declare-fun bs!1179972 () Bool)

(assert (= bs!1179972 (and d!1586327 b!4927720)))

(assert (=> bs!1179972 (not (= lambda!245352 lambda!245338))))

(declare-fun bs!1179973 () Bool)

(assert (= bs!1179973 (and d!1586327 b!4926927)))

(assert (=> bs!1179973 (not (= lambda!245352 lambda!245304))))

(declare-fun bs!1179974 () Bool)

(assert (= bs!1179974 (and d!1586327 d!1585579)))

(assert (=> bs!1179974 (not (= lambda!245352 lambda!245303))))

(declare-fun bs!1179975 () Bool)

(assert (= bs!1179975 (and d!1586327 b!4927572)))

(assert (=> bs!1179975 (not (= lambda!245352 lambda!245332))))

(declare-fun bs!1179976 () Bool)

(assert (= bs!1179976 (and d!1586327 d!1586041)))

(assert (=> bs!1179976 (not (= lambda!245352 lambda!245346))))

(assert (=> d!1586327 (= (nullableZipper!814 call!343651) (exists!1253 call!343651 lambda!245352))))

(declare-fun bs!1179977 () Bool)

(assert (= bs!1179977 d!1586327))

(declare-fun m!5947292 () Bool)

(assert (=> bs!1179977 m!5947292))

(assert (=> bm!343720 d!1586327))

(assert (=> b!4927037 d!1585971))

(assert (=> b!4927037 d!1585973))

(declare-fun b!4928227 () Bool)

(declare-fun e!3079101 () Int)

(assert (=> b!4928227 (= e!3079101 0)))

(declare-fun b!4928228 () Bool)

(declare-fun c!839677 () Bool)

(declare-fun call!343875 () Bool)

(assert (=> b!4928228 (= c!839677 call!343875)))

(declare-fun lt!2028239 () Unit!147242)

(declare-fun lt!2028234 () Unit!147242)

(assert (=> b!4928228 (= lt!2028239 lt!2028234)))

(declare-fun lt!2028250 () List!56821)

(declare-fun lt!2028242 () List!56821)

(declare-fun lt!2028254 () C!26964)

(assert (=> b!4928228 (= (++!12330 (++!12330 call!343737 (Cons!56697 lt!2028254 Nil!56697)) lt!2028250) lt!2028242)))

(assert (=> b!4928228 (= lt!2028234 (lemmaMoveElementToOtherListKeepsConcatEq!1395 call!343737 lt!2028254 lt!2028250 lt!2028242))))

(assert (=> b!4928228 (= lt!2028242 (list!17959 input!5492))))

(assert (=> b!4928228 (= lt!2028250 (tail!9671 call!343730))))

(assert (=> b!4928228 (= lt!2028254 (apply!13667 input!5492 (+ 0 1 1)))))

(declare-fun lt!2028248 () Unit!147242)

(declare-fun lt!2028260 () Unit!147242)

(assert (=> b!4928228 (= lt!2028248 lt!2028260)))

(declare-fun lt!2028249 () List!56821)

(assert (=> b!4928228 (isPrefix!4965 (++!12330 call!343737 (Cons!56697 (head!10524 (getSuffix!2953 lt!2028249 call!343737)) Nil!56697)) lt!2028249)))

(assert (=> b!4928228 (= lt!2028260 (lemmaAddHeadSuffixToPrefixStillPrefix!777 call!343737 lt!2028249))))

(assert (=> b!4928228 (= lt!2028249 (list!17959 input!5492))))

(declare-fun lt!2028221 () Unit!147242)

(declare-fun e!3079098 () Unit!147242)

(assert (=> b!4928228 (= lt!2028221 e!3079098)))

(declare-fun c!839678 () Bool)

(assert (=> b!4928228 (= c!839678 (= (size!37489 call!343737) (size!37490 input!5492)))))

(declare-fun lt!2028240 () Unit!147242)

(declare-fun lt!2028220 () Unit!147242)

(assert (=> b!4928228 (= lt!2028240 lt!2028220)))

(declare-fun lt!2028256 () List!56821)

(assert (=> b!4928228 (<= (size!37489 call!343737) (size!37489 lt!2028256))))

(assert (=> b!4928228 (= lt!2028220 (lemmaIsPrefixThenSmallerEqSize!689 call!343737 lt!2028256))))

(assert (=> b!4928228 (= lt!2028256 (list!17959 input!5492))))

(declare-fun lt!2028224 () Unit!147242)

(declare-fun lt!2028258 () Unit!147242)

(assert (=> b!4928228 (= lt!2028224 lt!2028258)))

(declare-fun lt!2028245 () List!56821)

(assert (=> b!4928228 (= (head!10524 (drop!2227 lt!2028245 (+ 0 1 1))) (apply!13668 lt!2028245 (+ 0 1 1)))))

(assert (=> b!4928228 (= lt!2028258 (lemmaDropApply!1285 lt!2028245 (+ 0 1 1)))))

(assert (=> b!4928228 (= lt!2028245 (list!17959 input!5492))))

(declare-fun lt!2028227 () Unit!147242)

(declare-fun lt!2028237 () Unit!147242)

(assert (=> b!4928228 (= lt!2028227 lt!2028237)))

(declare-fun lt!2028259 () List!56821)

(declare-fun lt!2028225 () List!56821)

(assert (=> b!4928228 (and (= lt!2028225 call!343737) (= lt!2028259 call!343730))))

(assert (=> b!4928228 (= lt!2028237 (lemmaConcatSameAndSameSizesThenSameLists!660 lt!2028225 lt!2028259 call!343737 call!343730))))

(declare-fun lt!2028246 () tuple2!61194)

(assert (=> b!4928228 (= lt!2028259 (list!17959 (_2!33900 lt!2028246)))))

(declare-fun call!343877 () List!56821)

(assert (=> b!4928228 (= lt!2028225 call!343877)))

(assert (=> b!4928228 (= lt!2028246 (splitAt!277 input!5492 (+ 0 1 1)))))

(declare-fun e!3079097 () Int)

(declare-fun e!3079100 () Int)

(assert (=> b!4928228 (= e!3079097 e!3079100)))

(declare-fun b!4928229 () Bool)

(declare-fun call!343874 () Int)

(assert (=> b!4928229 (= e!3079100 call!343874)))

(declare-fun lt!2028232 () List!56821)

(declare-fun lt!2028222 () List!56821)

(declare-fun bm!343866 () Bool)

(declare-fun lt!2028223 () List!56821)

(declare-fun lt!2028257 () List!56821)

(declare-fun c!839676 () Bool)

(declare-fun call!343880 () Bool)

(assert (=> bm!343866 (= call!343880 (isPrefix!4965 (ite c!839676 lt!2028232 lt!2028222) (ite c!839676 lt!2028223 lt!2028257)))))

(declare-fun b!4928230 () Bool)

(declare-fun e!3079096 () List!56821)

(assert (=> b!4928230 (= e!3079096 call!343877)))

(declare-fun b!4928231 () Bool)

(assert (=> b!4928231 (= e!3079101 (+ 0 1 1))))

(declare-fun b!4928232 () Bool)

(declare-fun Unit!147298 () Unit!147242)

(assert (=> b!4928232 (= e!3079098 Unit!147298)))

(assert (=> b!4928232 (= lt!2028222 (list!17959 input!5492))))

(assert (=> b!4928232 (= lt!2028257 (list!17959 input!5492))))

(declare-fun lt!2028252 () Unit!147242)

(declare-fun call!343878 () Unit!147242)

(assert (=> b!4928232 (= lt!2028252 call!343878)))

(assert (=> b!4928232 call!343880))

(declare-fun lt!2028244 () Unit!147242)

(assert (=> b!4928232 (= lt!2028244 lt!2028252)))

(declare-fun lt!2028255 () List!56821)

(assert (=> b!4928232 (= lt!2028255 (list!17959 input!5492))))

(declare-fun lt!2028247 () Unit!147242)

(declare-fun call!343871 () Unit!147242)

(assert (=> b!4928232 (= lt!2028247 call!343871)))

(assert (=> b!4928232 (= lt!2028255 call!343737)))

(declare-fun lt!2028230 () Unit!147242)

(assert (=> b!4928232 (= lt!2028230 lt!2028247)))

(assert (=> b!4928232 false))

(declare-fun b!4928233 () Bool)

(declare-fun e!3079099 () Int)

(assert (=> b!4928233 (= e!3079099 0)))

(declare-fun bm!343867 () Bool)

(declare-fun call!343879 () List!56821)

(declare-fun call!343876 () C!26964)

(assert (=> bm!343867 (= call!343879 (++!12330 call!343737 (Cons!56697 call!343876 Nil!56697)))))

(declare-fun b!4928234 () Bool)

(declare-fun c!839679 () Bool)

(assert (=> b!4928234 (= c!839679 call!343875)))

(declare-fun lt!2028238 () Unit!147242)

(declare-fun lt!2028226 () Unit!147242)

(assert (=> b!4928234 (= lt!2028238 lt!2028226)))

(declare-fun lt!2028219 () List!56821)

(assert (=> b!4928234 (= lt!2028219 call!343737)))

(assert (=> b!4928234 (= lt!2028226 call!343871)))

(assert (=> b!4928234 (= lt!2028219 call!343877)))

(declare-fun lt!2028229 () Unit!147242)

(declare-fun lt!2028228 () Unit!147242)

(assert (=> b!4928234 (= lt!2028229 lt!2028228)))

(assert (=> b!4928234 call!343880))

(assert (=> b!4928234 (= lt!2028228 call!343878)))

(assert (=> b!4928234 (= lt!2028223 call!343877)))

(assert (=> b!4928234 (= lt!2028232 call!343877)))

(assert (=> b!4928234 (= e!3079097 e!3079101)))

(declare-fun bm!343868 () Bool)

(assert (=> bm!343868 (= call!343875 (nullableZipper!814 call!343731))))

(declare-fun bm!343869 () Bool)

(assert (=> bm!343869 (= call!343877 (list!17959 (ite c!839676 input!5492 (_1!33900 lt!2028246))))))

(declare-fun lt!2028241 () Int)

(declare-fun d!1586329 () Bool)

(assert (=> d!1586329 (= (size!37489 (_1!33899 (findLongestMatchInnerZipper!62 call!343731 call!343737 (+ 0 1 1) call!343730 (list!17959 input!5492) lt!2026996))) lt!2028241)))

(assert (=> d!1586329 (= lt!2028241 e!3079099)))

(declare-fun c!839681 () Bool)

(assert (=> d!1586329 (= c!839681 (lostCauseZipper!695 call!343731))))

(declare-fun lt!2028235 () Unit!147242)

(declare-fun Unit!147299 () Unit!147242)

(assert (=> d!1586329 (= lt!2028235 Unit!147299)))

(assert (=> d!1586329 (= (getSuffix!2953 (list!17959 input!5492) call!343737) call!343730)))

(declare-fun lt!2028236 () Unit!147242)

(declare-fun lt!2028233 () Unit!147242)

(assert (=> d!1586329 (= lt!2028236 lt!2028233)))

(declare-fun lt!2028231 () List!56821)

(assert (=> d!1586329 (= call!343730 lt!2028231)))

(assert (=> d!1586329 (= lt!2028233 (lemmaSamePrefixThenSameSuffix!2369 call!343737 call!343730 call!343737 lt!2028231 (list!17959 input!5492)))))

(assert (=> d!1586329 (= lt!2028231 (getSuffix!2953 (list!17959 input!5492) call!343737))))

(declare-fun lt!2028251 () Unit!147242)

(declare-fun lt!2028243 () Unit!147242)

(assert (=> d!1586329 (= lt!2028251 lt!2028243)))

(assert (=> d!1586329 (isPrefix!4965 call!343737 (++!12330 call!343737 call!343730))))

(assert (=> d!1586329 (= lt!2028243 (lemmaConcatTwoListThenFirstIsPrefix!3189 call!343737 call!343730))))

(assert (=> d!1586329 (= (++!12330 call!343737 call!343730) (list!17959 input!5492))))

(assert (=> d!1586329 (= (findLongestMatchInnerZipperFast!89 call!343731 call!343737 (+ 0 1 1) call!343730 input!5492 lt!2026996) lt!2028241)))

(declare-fun bm!343870 () Bool)

(assert (=> bm!343870 (= call!343876 (apply!13667 input!5492 (+ 0 1 1)))))

(declare-fun bm!343871 () Bool)

(assert (=> bm!343871 (= call!343878 (lemmaIsPrefixRefl!3361 (ite c!839676 lt!2028232 lt!2028222) (ite c!839676 lt!2028223 lt!2028257)))))

(declare-fun call!343872 () List!56821)

(declare-fun bm!343872 () Bool)

(declare-fun call!343873 () (InoxSet Context!6038))

(assert (=> bm!343872 (= call!343874 (findLongestMatchInnerZipperFast!89 call!343873 call!343879 (+ 0 1 1 1) call!343872 input!5492 lt!2026996))))

(declare-fun b!4928235 () Bool)

(declare-fun Unit!147300 () Unit!147242)

(assert (=> b!4928235 (= e!3079098 Unit!147300)))

(declare-fun b!4928236 () Bool)

(declare-fun lt!2028253 () Int)

(assert (=> b!4928236 (= e!3079100 (ite (= lt!2028253 0) (+ 0 1 1) lt!2028253))))

(assert (=> b!4928236 (= lt!2028253 call!343874)))

(declare-fun bm!343873 () Bool)

(assert (=> bm!343873 (= call!343873 (derivationStepZipper!592 call!343731 call!343876))))

(declare-fun bm!343874 () Bool)

(declare-fun c!839680 () Bool)

(assert (=> bm!343874 (= c!839680 c!839676)))

(assert (=> bm!343874 (= call!343871 (lemmaIsPrefixSameLengthThenSameList!1123 (ite c!839676 lt!2028219 lt!2028255) call!343737 e!3079096))))

(declare-fun b!4928237 () Bool)

(assert (=> b!4928237 (= e!3079096 (list!17959 input!5492))))

(declare-fun bm!343875 () Bool)

(assert (=> bm!343875 (= call!343872 (tail!9671 call!343730))))

(declare-fun b!4928238 () Bool)

(assert (=> b!4928238 (= e!3079099 e!3079097)))

(assert (=> b!4928238 (= c!839676 (= (+ 0 1 1) lt!2026996))))

(assert (= (and d!1586329 c!839681) b!4928233))

(assert (= (and d!1586329 (not c!839681)) b!4928238))

(assert (= (and b!4928238 c!839676) b!4928234))

(assert (= (and b!4928238 (not c!839676)) b!4928228))

(assert (= (and b!4928234 c!839679) b!4928231))

(assert (= (and b!4928234 (not c!839679)) b!4928227))

(assert (= (and b!4928228 c!839678) b!4928232))

(assert (= (and b!4928228 (not c!839678)) b!4928235))

(assert (= (and b!4928228 c!839677) b!4928236))

(assert (= (and b!4928228 (not c!839677)) b!4928229))

(assert (= (or b!4928236 b!4928229) bm!343870))

(assert (= (or b!4928236 b!4928229) bm!343875))

(assert (= (or b!4928236 b!4928229) bm!343873))

(assert (= (or b!4928236 b!4928229) bm!343867))

(assert (= (or b!4928236 b!4928229) bm!343872))

(assert (= (or b!4928234 b!4928228) bm!343868))

(assert (= (or b!4928234 b!4928232) bm!343866))

(assert (= (or b!4928234 b!4928232) bm!343871))

(assert (= (or b!4928234 b!4928228) bm!343869))

(assert (= (or b!4928234 b!4928232) bm!343874))

(assert (= (and bm!343874 c!839680) b!4928230))

(assert (= (and bm!343874 (not c!839680)) b!4928237))

(declare-fun m!5947294 () Bool)

(assert (=> bm!343867 m!5947294))

(declare-fun m!5947296 () Bool)

(assert (=> bm!343873 m!5947296))

(declare-fun m!5947298 () Bool)

(assert (=> bm!343870 m!5947298))

(assert (=> b!4928232 m!5944346))

(declare-fun m!5947300 () Bool)

(assert (=> bm!343868 m!5947300))

(declare-fun m!5947302 () Bool)

(assert (=> bm!343871 m!5947302))

(assert (=> b!4928237 m!5944346))

(declare-fun m!5947304 () Bool)

(assert (=> b!4928228 m!5947304))

(declare-fun m!5947306 () Bool)

(assert (=> b!4928228 m!5947306))

(declare-fun m!5947308 () Bool)

(assert (=> b!4928228 m!5947308))

(declare-fun m!5947310 () Bool)

(assert (=> b!4928228 m!5947310))

(declare-fun m!5947312 () Bool)

(assert (=> b!4928228 m!5947312))

(declare-fun m!5947314 () Bool)

(assert (=> b!4928228 m!5947314))

(declare-fun m!5947316 () Bool)

(assert (=> b!4928228 m!5947316))

(assert (=> b!4928228 m!5947312))

(declare-fun m!5947318 () Bool)

(assert (=> b!4928228 m!5947318))

(assert (=> b!4928228 m!5944358))

(declare-fun m!5947320 () Bool)

(assert (=> b!4928228 m!5947320))

(assert (=> b!4928228 m!5947304))

(assert (=> b!4928228 m!5947308))

(declare-fun m!5947322 () Bool)

(assert (=> b!4928228 m!5947322))

(declare-fun m!5947324 () Bool)

(assert (=> b!4928228 m!5947324))

(declare-fun m!5947326 () Bool)

(assert (=> b!4928228 m!5947326))

(declare-fun m!5947328 () Bool)

(assert (=> b!4928228 m!5947328))

(declare-fun m!5947330 () Bool)

(assert (=> b!4928228 m!5947330))

(assert (=> b!4928228 m!5944346))

(declare-fun m!5947332 () Bool)

(assert (=> b!4928228 m!5947332))

(declare-fun m!5947334 () Bool)

(assert (=> b!4928228 m!5947334))

(assert (=> b!4928228 m!5947298))

(declare-fun m!5947336 () Bool)

(assert (=> b!4928228 m!5947336))

(assert (=> b!4928228 m!5947332))

(declare-fun m!5947338 () Bool)

(assert (=> b!4928228 m!5947338))

(declare-fun m!5947340 () Bool)

(assert (=> b!4928228 m!5947340))

(declare-fun m!5947342 () Bool)

(assert (=> bm!343866 m!5947342))

(assert (=> d!1586329 m!5944346))

(declare-fun m!5947344 () Bool)

(assert (=> d!1586329 m!5947344))

(declare-fun m!5947346 () Bool)

(assert (=> d!1586329 m!5947346))

(assert (=> d!1586329 m!5944346))

(declare-fun m!5947348 () Bool)

(assert (=> d!1586329 m!5947348))

(declare-fun m!5947350 () Bool)

(assert (=> d!1586329 m!5947350))

(assert (=> d!1586329 m!5947350))

(declare-fun m!5947352 () Bool)

(assert (=> d!1586329 m!5947352))

(assert (=> d!1586329 m!5944346))

(declare-fun m!5947354 () Bool)

(assert (=> d!1586329 m!5947354))

(assert (=> d!1586329 m!5944346))

(declare-fun m!5947356 () Bool)

(assert (=> d!1586329 m!5947356))

(declare-fun m!5947358 () Bool)

(assert (=> d!1586329 m!5947358))

(declare-fun m!5947360 () Bool)

(assert (=> bm!343872 m!5947360))

(declare-fun m!5947362 () Bool)

(assert (=> bm!343874 m!5947362))

(declare-fun m!5947364 () Bool)

(assert (=> bm!343869 m!5947364))

(assert (=> bm!343875 m!5947314))

(assert (=> bm!343730 d!1586329))

(declare-fun d!1586331 () Bool)

(declare-fun c!839682 () Bool)

(assert (=> d!1586331 (= c!839682 ((_ is Nil!56697) (t!367283 lt!2026994)))))

(declare-fun e!3079102 () (InoxSet C!26964))

(assert (=> d!1586331 (= (content!10073 (t!367283 lt!2026994)) e!3079102)))

(declare-fun b!4928239 () Bool)

(assert (=> b!4928239 (= e!3079102 ((as const (Array C!26964 Bool)) false))))

(declare-fun b!4928240 () Bool)

(assert (=> b!4928240 (= e!3079102 ((_ map or) (store ((as const (Array C!26964 Bool)) false) (h!63145 (t!367283 lt!2026994)) true) (content!10073 (t!367283 (t!367283 lt!2026994)))))))

(assert (= (and d!1586331 c!839682) b!4928239))

(assert (= (and d!1586331 (not c!839682)) b!4928240))

(declare-fun m!5947366 () Bool)

(assert (=> b!4928240 m!5947366))

(declare-fun m!5947368 () Bool)

(assert (=> b!4928240 m!5947368))

(assert (=> b!4927302 d!1586331))

(declare-fun d!1586333 () Bool)

(declare-fun lt!2028261 () Int)

(assert (=> d!1586333 (>= lt!2028261 0)))

(declare-fun e!3079103 () Int)

(assert (=> d!1586333 (= lt!2028261 e!3079103)))

(declare-fun c!839683 () Bool)

(assert (=> d!1586333 (= c!839683 ((_ is Nil!56697) lt!2027470))))

(assert (=> d!1586333 (= (size!37489 lt!2027470) lt!2028261)))

(declare-fun b!4928241 () Bool)

(assert (=> b!4928241 (= e!3079103 0)))

(declare-fun b!4928242 () Bool)

(assert (=> b!4928242 (= e!3079103 (+ 1 (size!37489 (t!367283 lt!2027470))))))

(assert (= (and d!1586333 c!839683) b!4928241))

(assert (= (and d!1586333 (not c!839683)) b!4928242))

(declare-fun m!5947370 () Bool)

(assert (=> b!4928242 m!5947370))

(assert (=> b!4926789 d!1586333))

(declare-fun d!1586335 () Bool)

(declare-fun lt!2028262 () Int)

(assert (=> d!1586335 (>= lt!2028262 0)))

(declare-fun e!3079104 () Int)

(assert (=> d!1586335 (= lt!2028262 e!3079104)))

(declare-fun c!839684 () Bool)

(assert (=> d!1586335 (= c!839684 ((_ is Nil!56697) (++!12330 Nil!56697 (Cons!56697 lt!2027340 Nil!56697))))))

(assert (=> d!1586335 (= (size!37489 (++!12330 Nil!56697 (Cons!56697 lt!2027340 Nil!56697))) lt!2028262)))

(declare-fun b!4928243 () Bool)

(assert (=> b!4928243 (= e!3079104 0)))

(declare-fun b!4928244 () Bool)

(assert (=> b!4928244 (= e!3079104 (+ 1 (size!37489 (t!367283 (++!12330 Nil!56697 (Cons!56697 lt!2027340 Nil!56697))))))))

(assert (= (and d!1586335 c!839684) b!4928243))

(assert (= (and d!1586335 (not c!839684)) b!4928244))

(declare-fun m!5947372 () Bool)

(assert (=> b!4928244 m!5947372))

(assert (=> b!4926789 d!1586335))

(declare-fun d!1586337 () Bool)

(declare-fun lt!2028263 () Int)

(assert (=> d!1586337 (>= lt!2028263 0)))

(declare-fun e!3079105 () Int)

(assert (=> d!1586337 (= lt!2028263 e!3079105)))

(declare-fun c!839685 () Bool)

(assert (=> d!1586337 (= c!839685 ((_ is Nil!56697) lt!2027336))))

(assert (=> d!1586337 (= (size!37489 lt!2027336) lt!2028263)))

(declare-fun b!4928245 () Bool)

(assert (=> b!4928245 (= e!3079105 0)))

(declare-fun b!4928246 () Bool)

(assert (=> b!4928246 (= e!3079105 (+ 1 (size!37489 (t!367283 lt!2027336))))))

(assert (= (and d!1586337 c!839685) b!4928245))

(assert (= (and d!1586337 (not c!839685)) b!4928246))

(declare-fun m!5947374 () Bool)

(assert (=> b!4928246 m!5947374))

(assert (=> b!4926789 d!1586337))

(declare-fun b!4928250 () Bool)

(declare-fun e!3079107 () List!56821)

(assert (=> b!4928250 (= e!3079107 (++!12330 (list!17961 (left!41344 (c!839087 (_2!33900 lt!2027332)))) (list!17961 (right!41674 (c!839087 (_2!33900 lt!2027332))))))))

(declare-fun b!4928249 () Bool)

(assert (=> b!4928249 (= e!3079107 (list!17963 (xs!18198 (c!839087 (_2!33900 lt!2027332)))))))

(declare-fun d!1586339 () Bool)

(declare-fun c!839686 () Bool)

(assert (=> d!1586339 (= c!839686 ((_ is Empty!14876) (c!839087 (_2!33900 lt!2027332))))))

(declare-fun e!3079106 () List!56821)

(assert (=> d!1586339 (= (list!17961 (c!839087 (_2!33900 lt!2027332))) e!3079106)))

(declare-fun b!4928247 () Bool)

(assert (=> b!4928247 (= e!3079106 Nil!56697)))

(declare-fun b!4928248 () Bool)

(assert (=> b!4928248 (= e!3079106 e!3079107)))

(declare-fun c!839687 () Bool)

(assert (=> b!4928248 (= c!839687 ((_ is Leaf!24747) (c!839087 (_2!33900 lt!2027332))))))

(assert (= (and d!1586339 c!839686) b!4928247))

(assert (= (and d!1586339 (not c!839686)) b!4928248))

(assert (= (and b!4928248 c!839687) b!4928249))

(assert (= (and b!4928248 (not c!839687)) b!4928250))

(declare-fun m!5947376 () Bool)

(assert (=> b!4928250 m!5947376))

(declare-fun m!5947378 () Bool)

(assert (=> b!4928250 m!5947378))

(assert (=> b!4928250 m!5947376))

(assert (=> b!4928250 m!5947378))

(declare-fun m!5947380 () Bool)

(assert (=> b!4928250 m!5947380))

(declare-fun m!5947382 () Bool)

(assert (=> b!4928249 m!5947382))

(assert (=> d!1585537 d!1586339))

(declare-fun b!4928251 () Bool)

(declare-fun e!3079112 () List!56821)

(declare-fun e!3079110 () List!56821)

(assert (=> b!4928251 (= e!3079112 e!3079110)))

(declare-fun c!839690 () Bool)

(assert (=> b!4928251 (= c!839690 (<= (findLongestMatchInnerZipperFast!89 z!3559 Nil!56697 0 lt!2026995 input!5492 lt!2026996) 0))))

(declare-fun b!4928252 () Bool)

(declare-fun e!3079108 () Int)

(assert (=> b!4928252 (= e!3079108 0)))

(declare-fun b!4928253 () Bool)

(assert (=> b!4928253 (= e!3079112 Nil!56697)))

(declare-fun b!4928254 () Bool)

(declare-fun e!3079111 () Bool)

(declare-fun lt!2028264 () List!56821)

(declare-fun e!3079109 () Int)

(assert (=> b!4928254 (= e!3079111 (= (size!37489 lt!2028264) e!3079109))))

(declare-fun c!839691 () Bool)

(assert (=> b!4928254 (= c!839691 (<= (findLongestMatchInnerZipperFast!89 z!3559 Nil!56697 0 lt!2026995 input!5492 lt!2026996) 0))))

(declare-fun b!4928255 () Bool)

(assert (=> b!4928255 (= e!3079109 e!3079108)))

(declare-fun call!343881 () Int)

(declare-fun c!839689 () Bool)

(assert (=> b!4928255 (= c!839689 (>= (findLongestMatchInnerZipperFast!89 z!3559 Nil!56697 0 lt!2026995 input!5492 lt!2026996) call!343881))))

(declare-fun b!4928256 () Bool)

(assert (=> b!4928256 (= e!3079110 (list!17959 input!5492))))

(declare-fun b!4928257 () Bool)

(assert (=> b!4928257 (= e!3079109 call!343881)))

(declare-fun d!1586341 () Bool)

(assert (=> d!1586341 e!3079111))

(declare-fun res!2103246 () Bool)

(assert (=> d!1586341 (=> (not res!2103246) (not e!3079111))))

(assert (=> d!1586341 (= res!2103246 (= ((_ map implies) (content!10073 lt!2028264) (content!10073 (list!17959 input!5492))) ((as const (InoxSet C!26964)) true)))))

(assert (=> d!1586341 (= lt!2028264 e!3079112)))

(declare-fun c!839688 () Bool)

(assert (=> d!1586341 (= c!839688 ((_ is Nil!56697) (list!17959 input!5492)))))

(assert (=> d!1586341 (= (drop!2227 (list!17959 input!5492) (findLongestMatchInnerZipperFast!89 z!3559 Nil!56697 0 lt!2026995 input!5492 lt!2026996)) lt!2028264)))

(declare-fun bm!343876 () Bool)

(assert (=> bm!343876 (= call!343881 (size!37489 (list!17959 input!5492)))))

(declare-fun b!4928258 () Bool)

(assert (=> b!4928258 (= e!3079110 (drop!2227 (t!367283 (list!17959 input!5492)) (- (findLongestMatchInnerZipperFast!89 z!3559 Nil!56697 0 lt!2026995 input!5492 lt!2026996) 1)))))

(declare-fun b!4928259 () Bool)

(assert (=> b!4928259 (= e!3079108 (- call!343881 (findLongestMatchInnerZipperFast!89 z!3559 Nil!56697 0 lt!2026995 input!5492 lt!2026996)))))

(assert (= (and d!1586341 c!839688) b!4928253))

(assert (= (and d!1586341 (not c!839688)) b!4928251))

(assert (= (and b!4928251 c!839690) b!4928256))

(assert (= (and b!4928251 (not c!839690)) b!4928258))

(assert (= (and d!1586341 res!2103246) b!4928254))

(assert (= (and b!4928254 c!839691) b!4928257))

(assert (= (and b!4928254 (not c!839691)) b!4928255))

(assert (= (and b!4928255 c!839689) b!4928252))

(assert (= (and b!4928255 (not c!839689)) b!4928259))

(assert (= (or b!4928257 b!4928255 b!4928259) bm!343876))

(declare-fun m!5947384 () Bool)

(assert (=> b!4928254 m!5947384))

(declare-fun m!5947386 () Bool)

(assert (=> d!1586341 m!5947386))

(assert (=> d!1586341 m!5944346))

(assert (=> d!1586341 m!5946848))

(assert (=> bm!343876 m!5944346))

(assert (=> bm!343876 m!5944632))

(assert (=> b!4928258 m!5947172))

(assert (=> b!4926884 d!1586341))

(declare-fun d!1586343 () Bool)

(assert (=> d!1586343 (= (isEmpty!30579 (_1!33899 lt!2027752)) ((_ is Nil!56697) (_1!33899 lt!2027752)))))

(assert (=> b!4927286 d!1586343))

(declare-fun d!1586345 () Bool)

(declare-fun lt!2028265 () Int)

(assert (=> d!1586345 (>= lt!2028265 0)))

(declare-fun e!3079113 () Int)

(assert (=> d!1586345 (= lt!2028265 e!3079113)))

(declare-fun c!839692 () Bool)

(assert (=> d!1586345 (= c!839692 ((_ is Nil!56697) (t!367283 (list!17959 input!5492))))))

(assert (=> d!1586345 (= (size!37489 (t!367283 (list!17959 input!5492))) lt!2028265)))

(declare-fun b!4928260 () Bool)

(assert (=> b!4928260 (= e!3079113 0)))

(declare-fun b!4928261 () Bool)

(assert (=> b!4928261 (= e!3079113 (+ 1 (size!37489 (t!367283 (t!367283 (list!17959 input!5492))))))))

(assert (= (and d!1586345 c!839692) b!4928260))

(assert (= (and d!1586345 (not c!839692)) b!4928261))

(declare-fun m!5947388 () Bool)

(assert (=> b!4928261 m!5947388))

(assert (=> b!4927328 d!1586345))

(declare-fun d!1586347 () Bool)

(declare-fun lt!2028266 () Int)

(assert (=> d!1586347 (>= lt!2028266 0)))

(declare-fun e!3079114 () Int)

(assert (=> d!1586347 (= lt!2028266 e!3079114)))

(declare-fun c!839693 () Bool)

(assert (=> d!1586347 (= c!839693 ((_ is Nil!56697) lt!2027469))))

(assert (=> d!1586347 (= (size!37489 lt!2027469) lt!2028266)))

(declare-fun b!4928262 () Bool)

(assert (=> b!4928262 (= e!3079114 0)))

(declare-fun b!4928263 () Bool)

(assert (=> b!4928263 (= e!3079114 (+ 1 (size!37489 (t!367283 lt!2027469))))))

(assert (= (and d!1586347 c!839693) b!4928262))

(assert (= (and d!1586347 (not c!839693)) b!4928263))

(declare-fun m!5947390 () Bool)

(assert (=> b!4928263 m!5947390))

(assert (=> b!4926781 d!1586347))

(declare-fun d!1586349 () Bool)

(assert (not d!1586349))

(assert (=> b!4926953 d!1586349))

(declare-fun d!1586351 () Bool)

(assert (not d!1586351))

(assert (=> b!4926953 d!1586351))

(declare-fun d!1586353 () Bool)

(assert (=> d!1586353 (= (tail!9671 (++!12330 Nil!56697 lt!2026995)) (t!367283 (++!12330 Nil!56697 lt!2026995)))))

(assert (=> b!4926953 d!1586353))

(declare-fun d!1586355 () Bool)

(declare-fun lt!2028267 () Int)

(assert (=> d!1586355 (>= lt!2028267 0)))

(declare-fun e!3079115 () Int)

(assert (=> d!1586355 (= lt!2028267 e!3079115)))

(declare-fun c!839694 () Bool)

(assert (=> d!1586355 (= c!839694 ((_ is Nil!56697) (t!367283 lt!2027342)))))

(assert (=> d!1586355 (= (size!37489 (t!367283 lt!2027342)) lt!2028267)))

(declare-fun b!4928264 () Bool)

(assert (=> b!4928264 (= e!3079115 0)))

(declare-fun b!4928265 () Bool)

(assert (=> b!4928265 (= e!3079115 (+ 1 (size!37489 (t!367283 (t!367283 lt!2027342)))))))

(assert (= (and d!1586355 c!839694) b!4928264))

(assert (= (and d!1586355 (not c!839694)) b!4928265))

(declare-fun m!5947392 () Bool)

(assert (=> b!4928265 m!5947392))

(assert (=> b!4926751 d!1586355))

(declare-fun d!1586357 () Bool)

(declare-fun lt!2028268 () C!26964)

(assert (=> d!1586357 (contains!19458 (list!17959 input!5492) lt!2028268)))

(declare-fun e!3079117 () C!26964)

(assert (=> d!1586357 (= lt!2028268 e!3079117)))

(declare-fun c!839695 () Bool)

(assert (=> d!1586357 (= c!839695 (= 0 0))))

(declare-fun e!3079116 () Bool)

(assert (=> d!1586357 e!3079116))

(declare-fun res!2103247 () Bool)

(assert (=> d!1586357 (=> (not res!2103247) (not e!3079116))))

(assert (=> d!1586357 (= res!2103247 (<= 0 0))))

(assert (=> d!1586357 (= (apply!13668 (list!17959 input!5492) 0) lt!2028268)))

(declare-fun b!4928266 () Bool)

(assert (=> b!4928266 (= e!3079116 (< 0 (size!37489 (list!17959 input!5492))))))

(declare-fun b!4928267 () Bool)

(assert (=> b!4928267 (= e!3079117 (head!10524 (list!17959 input!5492)))))

(declare-fun b!4928268 () Bool)

(assert (=> b!4928268 (= e!3079117 (apply!13668 (tail!9671 (list!17959 input!5492)) (- 0 1)))))

(assert (= (and d!1586357 res!2103247) b!4928266))

(assert (= (and d!1586357 c!839695) b!4928267))

(assert (= (and d!1586357 (not c!839695)) b!4928268))

(assert (=> d!1586357 m!5944346))

(declare-fun m!5947394 () Bool)

(assert (=> d!1586357 m!5947394))

(assert (=> b!4928266 m!5944346))

(assert (=> b!4928266 m!5944632))

(assert (=> b!4928267 m!5944346))

(assert (=> b!4928267 m!5947076))

(assert (=> b!4928268 m!5944346))

(assert (=> b!4928268 m!5945626))

(assert (=> b!4928268 m!5945626))

(declare-fun m!5947396 () Bool)

(assert (=> b!4928268 m!5947396))

(assert (=> d!1585511 d!1586357))

(assert (=> d!1585511 d!1585489))

(declare-fun b!4928283 () Bool)

(declare-fun e!3079126 () C!26964)

(declare-fun e!3079128 () C!26964)

(assert (=> b!4928283 (= e!3079126 e!3079128)))

(declare-fun lt!2028273 () Bool)

(declare-fun appendIndex!379 (List!56821 List!56821 Int) Bool)

(assert (=> b!4928283 (= lt!2028273 (appendIndex!379 (list!17961 (left!41344 (c!839087 input!5492))) (list!17961 (right!41674 (c!839087 input!5492))) 0))))

(declare-fun c!839702 () Bool)

(assert (=> b!4928283 (= c!839702 (< 0 (size!37492 (left!41344 (c!839087 input!5492)))))))

(declare-fun b!4928284 () Bool)

(declare-fun e!3079127 () Int)

(assert (=> b!4928284 (= e!3079127 0)))

(declare-fun b!4928285 () Bool)

(assert (=> b!4928285 (= e!3079127 (- 0 (size!37492 (left!41344 (c!839087 input!5492)))))))

(declare-fun bm!343879 () Bool)

(declare-fun c!839704 () Bool)

(assert (=> bm!343879 (= c!839704 c!839702)))

(declare-fun call!343884 () C!26964)

(assert (=> bm!343879 (= call!343884 (apply!13671 (ite c!839702 (left!41344 (c!839087 input!5492)) (right!41674 (c!839087 input!5492))) e!3079127))))

(declare-fun b!4928287 () Bool)

(declare-fun apply!13674 (IArray!29813 Int) C!26964)

(assert (=> b!4928287 (= e!3079126 (apply!13674 (xs!18198 (c!839087 input!5492)) 0))))

(declare-fun b!4928288 () Bool)

(declare-fun e!3079129 () Bool)

(assert (=> b!4928288 (= e!3079129 (< 0 (size!37492 (c!839087 input!5492))))))

(declare-fun b!4928289 () Bool)

(assert (=> b!4928289 (= e!3079128 call!343884)))

(declare-fun b!4928286 () Bool)

(assert (=> b!4928286 (= e!3079128 call!343884)))

(declare-fun d!1586359 () Bool)

(declare-fun lt!2028274 () C!26964)

(assert (=> d!1586359 (= lt!2028274 (apply!13668 (list!17961 (c!839087 input!5492)) 0))))

(assert (=> d!1586359 (= lt!2028274 e!3079126)))

(declare-fun c!839703 () Bool)

(assert (=> d!1586359 (= c!839703 ((_ is Leaf!24747) (c!839087 input!5492)))))

(assert (=> d!1586359 e!3079129))

(declare-fun res!2103250 () Bool)

(assert (=> d!1586359 (=> (not res!2103250) (not e!3079129))))

(assert (=> d!1586359 (= res!2103250 (<= 0 0))))

(assert (=> d!1586359 (= (apply!13671 (c!839087 input!5492) 0) lt!2028274)))

(assert (= (and d!1586359 res!2103250) b!4928288))

(assert (= (and d!1586359 c!839703) b!4928287))

(assert (= (and d!1586359 (not c!839703)) b!4928283))

(assert (= (and b!4928283 c!839702) b!4928289))

(assert (= (and b!4928283 (not c!839702)) b!4928286))

(assert (= (or b!4928289 b!4928286) bm!343879))

(assert (= (and bm!343879 c!839704) b!4928284))

(assert (= (and bm!343879 (not c!839704)) b!4928285))

(assert (=> b!4928288 m!5944634))

(declare-fun m!5947398 () Bool)

(assert (=> bm!343879 m!5947398))

(assert (=> b!4928283 m!5945106))

(assert (=> b!4928283 m!5945108))

(assert (=> b!4928283 m!5945106))

(assert (=> b!4928283 m!5945108))

(declare-fun m!5947400 () Bool)

(assert (=> b!4928283 m!5947400))

(assert (=> b!4928283 m!5945488))

(assert (=> b!4928285 m!5945488))

(declare-fun m!5947402 () Bool)

(assert (=> b!4928287 m!5947402))

(assert (=> d!1586359 m!5944706))

(assert (=> d!1586359 m!5944706))

(declare-fun m!5947404 () Bool)

(assert (=> d!1586359 m!5947404))

(assert (=> d!1585511 d!1586359))

(declare-fun d!1586361 () Bool)

(assert (not d!1586361))

(assert (=> b!4926988 d!1586361))

(declare-fun d!1586363 () Bool)

(declare-fun c!839705 () Bool)

(assert (=> d!1586363 (= c!839705 ((_ is Node!14876) (left!41344 (left!41344 (c!839087 input!5492)))))))

(declare-fun e!3079130 () Bool)

(assert (=> d!1586363 (= (inv!73492 (left!41344 (left!41344 (c!839087 input!5492)))) e!3079130)))

(declare-fun b!4928290 () Bool)

(assert (=> b!4928290 (= e!3079130 (inv!73498 (left!41344 (left!41344 (c!839087 input!5492)))))))

(declare-fun b!4928291 () Bool)

(declare-fun e!3079131 () Bool)

(assert (=> b!4928291 (= e!3079130 e!3079131)))

(declare-fun res!2103251 () Bool)

(assert (=> b!4928291 (= res!2103251 (not ((_ is Leaf!24747) (left!41344 (left!41344 (c!839087 input!5492))))))))

(assert (=> b!4928291 (=> res!2103251 e!3079131)))

(declare-fun b!4928292 () Bool)

(assert (=> b!4928292 (= e!3079131 (inv!73499 (left!41344 (left!41344 (c!839087 input!5492)))))))

(assert (= (and d!1586363 c!839705) b!4928290))

(assert (= (and d!1586363 (not c!839705)) b!4928291))

(assert (= (and b!4928291 (not res!2103251)) b!4928292))

(declare-fun m!5947406 () Bool)

(assert (=> b!4928290 m!5947406))

(declare-fun m!5947408 () Bool)

(assert (=> b!4928292 m!5947408))

(assert (=> b!4927401 d!1586363))

(declare-fun d!1586365 () Bool)

(declare-fun c!839706 () Bool)

(assert (=> d!1586365 (= c!839706 ((_ is Node!14876) (right!41674 (left!41344 (c!839087 input!5492)))))))

(declare-fun e!3079132 () Bool)

(assert (=> d!1586365 (= (inv!73492 (right!41674 (left!41344 (c!839087 input!5492)))) e!3079132)))

(declare-fun b!4928293 () Bool)

(assert (=> b!4928293 (= e!3079132 (inv!73498 (right!41674 (left!41344 (c!839087 input!5492)))))))

(declare-fun b!4928294 () Bool)

(declare-fun e!3079133 () Bool)

(assert (=> b!4928294 (= e!3079132 e!3079133)))

(declare-fun res!2103252 () Bool)

(assert (=> b!4928294 (= res!2103252 (not ((_ is Leaf!24747) (right!41674 (left!41344 (c!839087 input!5492))))))))

(assert (=> b!4928294 (=> res!2103252 e!3079133)))

(declare-fun b!4928295 () Bool)

(assert (=> b!4928295 (= e!3079133 (inv!73499 (right!41674 (left!41344 (c!839087 input!5492)))))))

(assert (= (and d!1586365 c!839706) b!4928293))

(assert (= (and d!1586365 (not c!839706)) b!4928294))

(assert (= (and b!4928294 (not res!2103252)) b!4928295))

(declare-fun m!5947410 () Bool)

(assert (=> b!4928293 m!5947410))

(declare-fun m!5947412 () Bool)

(assert (=> b!4928295 m!5947412))

(assert (=> b!4927401 d!1586365))

(declare-fun bs!1179978 () Bool)

(declare-fun d!1586367 () Bool)

(assert (= bs!1179978 (and d!1586367 d!1586003)))

(declare-fun lambda!245355 () Int)

(assert (=> bs!1179978 (not (= lambda!245355 lambda!245337))))

(declare-fun bs!1179979 () Bool)

(assert (= bs!1179979 (and d!1586367 d!1586327)))

(assert (=> bs!1179979 (not (= lambda!245355 lambda!245352))))

(declare-fun bs!1179980 () Bool)

(assert (= bs!1179980 (and d!1586367 d!1585879)))

(assert (=> bs!1179980 (not (= lambda!245355 lambda!245331))))

(declare-fun bs!1179981 () Bool)

(assert (= bs!1179981 (and d!1586367 d!1585835)))

(assert (=> bs!1179981 (not (= lambda!245355 lambda!245330))))

(declare-fun bs!1179982 () Bool)

(assert (= bs!1179982 (and d!1586367 b!4927721)))

(assert (=> bs!1179982 (not (= lambda!245355 lambda!245339))))

(declare-fun bs!1179983 () Bool)

(assert (= bs!1179983 (and d!1586367 b!4927573)))

(assert (=> bs!1179983 (not (= lambda!245355 lambda!245333))))

(declare-fun bs!1179984 () Bool)

(assert (= bs!1179984 (and d!1586367 d!1586047)))

(assert (=> bs!1179984 (not (= lambda!245355 lambda!245347))))

(declare-fun bs!1179985 () Bool)

(assert (= bs!1179985 (and d!1586367 b!4926928)))

(assert (=> bs!1179985 (not (= lambda!245355 lambda!245305))))

(declare-fun bs!1179986 () Bool)

(assert (= bs!1179986 (and d!1586367 d!1585903)))

(assert (=> bs!1179986 (= (= (ite c!839252 lambda!245304 lambda!245305) lambda!245303) (= lambda!245355 lambda!245336))))

(declare-fun bs!1179987 () Bool)

(assert (= bs!1179987 (and d!1586367 b!4927720)))

(assert (=> bs!1179987 (not (= lambda!245355 lambda!245338))))

(declare-fun bs!1179988 () Bool)

(assert (= bs!1179988 (and d!1586367 b!4926927)))

(assert (=> bs!1179988 (not (= lambda!245355 lambda!245304))))

(declare-fun bs!1179989 () Bool)

(assert (= bs!1179989 (and d!1586367 d!1585579)))

(assert (=> bs!1179989 (not (= lambda!245355 lambda!245303))))

(declare-fun bs!1179990 () Bool)

(assert (= bs!1179990 (and d!1586367 b!4927572)))

(assert (=> bs!1179990 (not (= lambda!245355 lambda!245332))))

(declare-fun bs!1179991 () Bool)

(assert (= bs!1179991 (and d!1586367 d!1586041)))

(assert (=> bs!1179991 (not (= lambda!245355 lambda!245346))))

(assert (=> d!1586367 true))

(assert (=> d!1586367 (< (dynLambda!23013 order!25979 (ite c!839252 lambda!245304 lambda!245305)) (dynLambda!23013 order!25979 lambda!245355))))

(assert (=> d!1586367 (= (exists!1251 (ite c!839252 lt!2027559 lt!2027557) (ite c!839252 lambda!245304 lambda!245305)) (not (forall!13144 (ite c!839252 lt!2027559 lt!2027557) lambda!245355)))))

(declare-fun bs!1179992 () Bool)

(assert (= bs!1179992 d!1586367))

(declare-fun m!5947414 () Bool)

(assert (=> bs!1179992 m!5947414))

(assert (=> bm!343671 d!1586367))

(assert (=> d!1585833 d!1585913))

(declare-fun d!1586369 () Bool)

(declare-fun lt!2028275 () Int)

(assert (=> d!1586369 (= lt!2028275 (size!37489 (list!17961 (right!41674 (c!839087 input!5492)))))))

(assert (=> d!1586369 (= lt!2028275 (ite ((_ is Empty!14876) (right!41674 (c!839087 input!5492))) 0 (ite ((_ is Leaf!24747) (right!41674 (c!839087 input!5492))) (csize!29983 (right!41674 (c!839087 input!5492))) (csize!29982 (right!41674 (c!839087 input!5492))))))))

(assert (=> d!1586369 (= (size!37492 (right!41674 (c!839087 input!5492))) lt!2028275)))

(declare-fun bs!1179993 () Bool)

(assert (= bs!1179993 d!1586369))

(assert (=> bs!1179993 m!5945108))

(assert (=> bs!1179993 m!5945108))

(assert (=> bs!1179993 m!5946242))

(assert (=> d!1585833 d!1586369))

(declare-fun d!1586371 () Bool)

(declare-fun c!839707 () Bool)

(assert (=> d!1586371 (= c!839707 ((_ is Nil!56697) lt!2027470))))

(declare-fun e!3079134 () (InoxSet C!26964))

(assert (=> d!1586371 (= (content!10073 lt!2027470) e!3079134)))

(declare-fun b!4928296 () Bool)

(assert (=> b!4928296 (= e!3079134 ((as const (Array C!26964 Bool)) false))))

(declare-fun b!4928297 () Bool)

(assert (=> b!4928297 (= e!3079134 ((_ map or) (store ((as const (Array C!26964 Bool)) false) (h!63145 lt!2027470) true) (content!10073 (t!367283 lt!2027470))))))

(assert (= (and d!1586371 c!839707) b!4928296))

(assert (= (and d!1586371 (not c!839707)) b!4928297))

(declare-fun m!5947416 () Bool)

(assert (=> b!4928297 m!5947416))

(declare-fun m!5947418 () Bool)

(assert (=> b!4928297 m!5947418))

(assert (=> d!1585525 d!1586371))

(declare-fun d!1586373 () Bool)

(declare-fun c!839708 () Bool)

(assert (=> d!1586373 (= c!839708 ((_ is Nil!56697) (++!12330 Nil!56697 (Cons!56697 lt!2027340 Nil!56697))))))

(declare-fun e!3079135 () (InoxSet C!26964))

(assert (=> d!1586373 (= (content!10073 (++!12330 Nil!56697 (Cons!56697 lt!2027340 Nil!56697))) e!3079135)))

(declare-fun b!4928298 () Bool)

(assert (=> b!4928298 (= e!3079135 ((as const (Array C!26964 Bool)) false))))

(declare-fun b!4928299 () Bool)

(assert (=> b!4928299 (= e!3079135 ((_ map or) (store ((as const (Array C!26964 Bool)) false) (h!63145 (++!12330 Nil!56697 (Cons!56697 lt!2027340 Nil!56697))) true) (content!10073 (t!367283 (++!12330 Nil!56697 (Cons!56697 lt!2027340 Nil!56697))))))))

(assert (= (and d!1586373 c!839708) b!4928298))

(assert (= (and d!1586373 (not c!839708)) b!4928299))

(declare-fun m!5947420 () Bool)

(assert (=> b!4928299 m!5947420))

(declare-fun m!5947422 () Bool)

(assert (=> b!4928299 m!5947422))

(assert (=> d!1585525 d!1586373))

(declare-fun d!1586375 () Bool)

(declare-fun c!839709 () Bool)

(assert (=> d!1586375 (= c!839709 ((_ is Nil!56697) lt!2027336))))

(declare-fun e!3079136 () (InoxSet C!26964))

(assert (=> d!1586375 (= (content!10073 lt!2027336) e!3079136)))

(declare-fun b!4928300 () Bool)

(assert (=> b!4928300 (= e!3079136 ((as const (Array C!26964 Bool)) false))))

(declare-fun b!4928301 () Bool)

(assert (=> b!4928301 (= e!3079136 ((_ map or) (store ((as const (Array C!26964 Bool)) false) (h!63145 lt!2027336) true) (content!10073 (t!367283 lt!2027336))))))

(assert (= (and d!1586375 c!839709) b!4928300))

(assert (= (and d!1586375 (not c!839709)) b!4928301))

(declare-fun m!5947424 () Bool)

(assert (=> b!4928301 m!5947424))

(declare-fun m!5947426 () Bool)

(assert (=> b!4928301 m!5947426))

(assert (=> d!1585525 d!1586375))

(declare-fun d!1586377 () Bool)

(declare-fun lt!2028276 () Int)

(assert (=> d!1586377 (>= lt!2028276 0)))

(declare-fun e!3079137 () Int)

(assert (=> d!1586377 (= lt!2028276 e!3079137)))

(declare-fun c!839710 () Bool)

(assert (=> d!1586377 (= c!839710 ((_ is Nil!56697) lt!2027816))))

(assert (=> d!1586377 (= (size!37489 lt!2027816) lt!2028276)))

(declare-fun b!4928302 () Bool)

(assert (=> b!4928302 (= e!3079137 0)))

(declare-fun b!4928303 () Bool)

(assert (=> b!4928303 (= e!3079137 (+ 1 (size!37489 (t!367283 lt!2027816))))))

(assert (= (and d!1586377 c!839710) b!4928302))

(assert (= (and d!1586377 (not c!839710)) b!4928303))

(declare-fun m!5947428 () Bool)

(assert (=> b!4928303 m!5947428))

(assert (=> b!4927363 d!1586377))

(assert (=> b!4927363 d!1585549))

(assert (=> b!4927363 d!1585783))

(declare-fun d!1586379 () Bool)

(assert (=> d!1586379 (= (list!17963 (xs!18198 (c!839087 (_2!33900 lt!2026997)))) (innerList!14964 (xs!18198 (c!839087 (_2!33900 lt!2026997)))))))

(assert (=> b!4927353 d!1586379))

(declare-fun d!1586381 () Bool)

(assert (=> d!1586381 (= lt!2026995 lt!2027417)))

(declare-fun lt!2028277 () Unit!147242)

(assert (=> d!1586381 (= lt!2028277 (choose!36084 lt!2026995 lt!2027417 lt!2026995))))

(assert (=> d!1586381 (isPrefix!4965 lt!2026995 lt!2026995)))

(assert (=> d!1586381 (= (lemmaIsPrefixSameLengthThenSameList!1123 lt!2026995 lt!2027417 lt!2026995) lt!2028277)))

(declare-fun bs!1179994 () Bool)

(assert (= bs!1179994 d!1586381))

(declare-fun m!5947430 () Bool)

(assert (=> bs!1179994 m!5947430))

(assert (=> bs!1179994 m!5944696))

(assert (=> bm!343716 d!1586381))

(assert (=> d!1585625 d!1585623))

(assert (=> d!1585625 d!1585639))

(declare-fun d!1586383 () Bool)

(assert (=> d!1586383 (= (++!12330 (++!12330 Nil!56697 (Cons!56697 lt!2027437 Nil!56697)) lt!2027436) lt!2026995)))

(assert (=> d!1586383 true))

(declare-fun _$68!809 () Unit!147242)

(assert (=> d!1586383 (= (choose!36085 Nil!56697 lt!2027437 lt!2027436 lt!2026995) _$68!809)))

(declare-fun bs!1179995 () Bool)

(assert (= bs!1179995 d!1586383))

(assert (=> bs!1179995 m!5944662))

(assert (=> bs!1179995 m!5944662))

(assert (=> bs!1179995 m!5944664))

(assert (=> d!1585625 d!1586383))

(declare-fun b!4928304 () Bool)

(declare-fun e!3079138 () List!56821)

(assert (=> b!4928304 (= e!3079138 (Cons!56697 lt!2027437 lt!2027436))))

(declare-fun lt!2028278 () List!56821)

(declare-fun b!4928307 () Bool)

(declare-fun e!3079139 () Bool)

(assert (=> b!4928307 (= e!3079139 (or (not (= (Cons!56697 lt!2027437 lt!2027436) Nil!56697)) (= lt!2028278 Nil!56697)))))

(declare-fun b!4928306 () Bool)

(declare-fun res!2103253 () Bool)

(assert (=> b!4928306 (=> (not res!2103253) (not e!3079139))))

(assert (=> b!4928306 (= res!2103253 (= (size!37489 lt!2028278) (+ (size!37489 Nil!56697) (size!37489 (Cons!56697 lt!2027437 lt!2027436)))))))

(declare-fun d!1586385 () Bool)

(assert (=> d!1586385 e!3079139))

(declare-fun res!2103254 () Bool)

(assert (=> d!1586385 (=> (not res!2103254) (not e!3079139))))

(assert (=> d!1586385 (= res!2103254 (= (content!10073 lt!2028278) ((_ map or) (content!10073 Nil!56697) (content!10073 (Cons!56697 lt!2027437 lt!2027436)))))))

(assert (=> d!1586385 (= lt!2028278 e!3079138)))

(declare-fun c!839711 () Bool)

(assert (=> d!1586385 (= c!839711 ((_ is Nil!56697) Nil!56697))))

(assert (=> d!1586385 (= (++!12330 Nil!56697 (Cons!56697 lt!2027437 lt!2027436)) lt!2028278)))

(declare-fun b!4928305 () Bool)

(assert (=> b!4928305 (= e!3079138 (Cons!56697 (h!63145 Nil!56697) (++!12330 (t!367283 Nil!56697) (Cons!56697 lt!2027437 lt!2027436))))))

(assert (= (and d!1586385 c!839711) b!4928304))

(assert (= (and d!1586385 (not c!839711)) b!4928305))

(assert (= (and d!1586385 res!2103254) b!4928306))

(assert (= (and b!4928306 res!2103253) b!4928307))

(declare-fun m!5947432 () Bool)

(assert (=> b!4928306 m!5947432))

(assert (=> b!4928306 m!5944576))

(declare-fun m!5947434 () Bool)

(assert (=> b!4928306 m!5947434))

(declare-fun m!5947436 () Bool)

(assert (=> d!1586385 m!5947436))

(assert (=> d!1586385 m!5944740))

(declare-fun m!5947438 () Bool)

(assert (=> d!1586385 m!5947438))

(declare-fun m!5947440 () Bool)

(assert (=> b!4928305 m!5947440))

(assert (=> d!1585625 d!1586385))

(declare-fun d!1586387 () Bool)

(declare-fun lt!2028279 () Bool)

(assert (=> d!1586387 (= lt!2028279 (isEmpty!30579 (list!17961 (right!41674 (c!839087 (_2!33900 lt!2027359))))))))

(assert (=> d!1586387 (= lt!2028279 (= (size!37492 (right!41674 (c!839087 (_2!33900 lt!2027359)))) 0))))

(assert (=> d!1586387 (= (isEmpty!30583 (right!41674 (c!839087 (_2!33900 lt!2027359)))) lt!2028279)))

(declare-fun bs!1179996 () Bool)

(assert (= bs!1179996 d!1586387))

(assert (=> bs!1179996 m!5946600))

(assert (=> bs!1179996 m!5946600))

(declare-fun m!5947442 () Bool)

(assert (=> bs!1179996 m!5947442))

(declare-fun m!5947444 () Bool)

(assert (=> bs!1179996 m!5947444))

(assert (=> b!4927340 d!1586387))

(assert (=> b!4926754 d!1585481))

(declare-fun d!1586389 () Bool)

(declare-fun c!839712 () Bool)

(assert (=> d!1586389 (= c!839712 ((_ is Nil!56697) lt!2027469))))

(declare-fun e!3079140 () (InoxSet C!26964))

(assert (=> d!1586389 (= (content!10073 lt!2027469) e!3079140)))

(declare-fun b!4928308 () Bool)

(assert (=> b!4928308 (= e!3079140 ((as const (Array C!26964 Bool)) false))))

(declare-fun b!4928309 () Bool)

(assert (=> b!4928309 (= e!3079140 ((_ map or) (store ((as const (Array C!26964 Bool)) false) (h!63145 lt!2027469) true) (content!10073 (t!367283 lt!2027469))))))

(assert (= (and d!1586389 c!839712) b!4928308))

(assert (= (and d!1586389 (not c!839712)) b!4928309))

(declare-fun m!5947446 () Bool)

(assert (=> b!4928309 m!5947446))

(declare-fun m!5947448 () Bool)

(assert (=> b!4928309 m!5947448))

(assert (=> d!1585523 d!1586389))

(declare-fun d!1586391 () Bool)

(declare-fun c!839713 () Bool)

(assert (=> d!1586391 (= c!839713 ((_ is Nil!56697) lt!2027331))))

(declare-fun e!3079141 () (InoxSet C!26964))

(assert (=> d!1586391 (= (content!10073 lt!2027331) e!3079141)))

(declare-fun b!4928310 () Bool)

(assert (=> b!4928310 (= e!3079141 ((as const (Array C!26964 Bool)) false))))

(declare-fun b!4928311 () Bool)

(assert (=> b!4928311 (= e!3079141 ((_ map or) (store ((as const (Array C!26964 Bool)) false) (h!63145 lt!2027331) true) (content!10073 (t!367283 lt!2027331))))))

(assert (= (and d!1586391 c!839713) b!4928310))

(assert (= (and d!1586391 (not c!839713)) b!4928311))

(declare-fun m!5947450 () Bool)

(assert (=> b!4928311 m!5947450))

(assert (=> b!4928311 m!5946234))

(assert (=> d!1585523 d!1586391))

(assert (=> d!1585605 d!1585613))

(assert (=> d!1585605 d!1585617))

(declare-fun d!1586393 () Bool)

(assert (=> d!1586393 (isPrefix!4965 Nil!56697 (++!12330 Nil!56697 lt!2026995))))

(assert (=> d!1586393 true))

(declare-fun _$46!1882 () Unit!147242)

(assert (=> d!1586393 (= (choose!36091 Nil!56697 lt!2026995) _$46!1882)))

(declare-fun bs!1179997 () Bool)

(assert (= bs!1179997 d!1586393))

(assert (=> bs!1179997 m!5944590))

(assert (=> bs!1179997 m!5944590))

(assert (=> bs!1179997 m!5944592))

(assert (=> d!1585605 d!1586393))

(assert (=> b!4927326 d!1585629))

(declare-fun d!1586395 () Bool)

(declare-fun lt!2028280 () Int)

(assert (=> d!1586395 (>= lt!2028280 0)))

(declare-fun e!3079142 () Int)

(assert (=> d!1586395 (= lt!2028280 e!3079142)))

(declare-fun c!839714 () Bool)

(assert (=> d!1586395 (= c!839714 ((_ is Nil!56697) lt!2027525))))

(assert (=> d!1586395 (= (size!37489 lt!2027525) lt!2028280)))

(declare-fun b!4928312 () Bool)

(assert (=> b!4928312 (= e!3079142 0)))

(declare-fun b!4928313 () Bool)

(assert (=> b!4928313 (= e!3079142 (+ 1 (size!37489 (t!367283 lt!2027525))))))

(assert (= (and d!1586395 c!839714) b!4928312))

(assert (= (and d!1586395 (not c!839714)) b!4928313))

(declare-fun m!5947452 () Bool)

(assert (=> b!4928313 m!5947452))

(assert (=> b!4926850 d!1586395))

(assert (=> b!4926850 d!1585797))

(assert (=> b!4926850 d!1585809))

(assert (=> b!4927274 d!1585527))

(assert (=> b!4927274 d!1585637))

(declare-fun d!1586397 () Bool)

(assert (=> d!1586397 (isPrefix!4965 (++!12330 Nil!56697 (Cons!56697 (head!10524 (getSuffix!2953 (list!17959 input!5492) Nil!56697)) Nil!56697)) (list!17959 input!5492))))

(declare-fun lt!2028281 () Unit!147242)

(assert (=> d!1586397 (= lt!2028281 (choose!36087 Nil!56697 (list!17959 input!5492)))))

(assert (=> d!1586397 (isPrefix!4965 Nil!56697 (list!17959 input!5492))))

(assert (=> d!1586397 (= (lemmaAddHeadSuffixToPrefixStillPrefix!777 Nil!56697 (list!17959 input!5492)) lt!2028281)))

(declare-fun bs!1179998 () Bool)

(assert (= bs!1179998 d!1586397))

(assert (=> bs!1179998 m!5944346))

(declare-fun m!5947454 () Bool)

(assert (=> bs!1179998 m!5947454))

(assert (=> bs!1179998 m!5944346))

(assert (=> bs!1179998 m!5945632))

(assert (=> bs!1179998 m!5945594))

(assert (=> bs!1179998 m!5944346))

(assert (=> bs!1179998 m!5944594))

(assert (=> bs!1179998 m!5944594))

(assert (=> bs!1179998 m!5945600))

(assert (=> bs!1179998 m!5945594))

(assert (=> bs!1179998 m!5944346))

(assert (=> bs!1179998 m!5945596))

(assert (=> b!4927274 d!1586397))

(assert (=> b!4927274 d!1585775))

(assert (=> b!4927274 d!1585509))

(declare-fun b!4928314 () Bool)

(declare-fun e!3079143 () List!56821)

(assert (=> b!4928314 (= e!3079143 (Cons!56697 lt!2027774 Nil!56697))))

(declare-fun b!4928317 () Bool)

(declare-fun e!3079144 () Bool)

(declare-fun lt!2028282 () List!56821)

(assert (=> b!4928317 (= e!3079144 (or (not (= (Cons!56697 lt!2027774 Nil!56697) Nil!56697)) (= lt!2028282 Nil!56697)))))

(declare-fun b!4928316 () Bool)

(declare-fun res!2103255 () Bool)

(assert (=> b!4928316 (=> (not res!2103255) (not e!3079144))))

(assert (=> b!4928316 (= res!2103255 (= (size!37489 lt!2028282) (+ (size!37489 Nil!56697) (size!37489 (Cons!56697 lt!2027774 Nil!56697)))))))

(declare-fun d!1586399 () Bool)

(assert (=> d!1586399 e!3079144))

(declare-fun res!2103256 () Bool)

(assert (=> d!1586399 (=> (not res!2103256) (not e!3079144))))

(assert (=> d!1586399 (= res!2103256 (= (content!10073 lt!2028282) ((_ map or) (content!10073 Nil!56697) (content!10073 (Cons!56697 lt!2027774 Nil!56697)))))))

(assert (=> d!1586399 (= lt!2028282 e!3079143)))

(declare-fun c!839715 () Bool)

(assert (=> d!1586399 (= c!839715 ((_ is Nil!56697) Nil!56697))))

(assert (=> d!1586399 (= (++!12330 Nil!56697 (Cons!56697 lt!2027774 Nil!56697)) lt!2028282)))

(declare-fun b!4928315 () Bool)

(assert (=> b!4928315 (= e!3079143 (Cons!56697 (h!63145 Nil!56697) (++!12330 (t!367283 Nil!56697) (Cons!56697 lt!2027774 Nil!56697))))))

(assert (= (and d!1586399 c!839715) b!4928314))

(assert (= (and d!1586399 (not c!839715)) b!4928315))

(assert (= (and d!1586399 res!2103256) b!4928316))

(assert (= (and b!4928316 res!2103255) b!4928317))

(declare-fun m!5947456 () Bool)

(assert (=> b!4928316 m!5947456))

(assert (=> b!4928316 m!5944576))

(declare-fun m!5947458 () Bool)

(assert (=> b!4928316 m!5947458))

(declare-fun m!5947460 () Bool)

(assert (=> d!1586399 m!5947460))

(assert (=> d!1586399 m!5944740))

(declare-fun m!5947462 () Bool)

(assert (=> d!1586399 m!5947462))

(declare-fun m!5947464 () Bool)

(assert (=> b!4928315 m!5947464))

(assert (=> b!4927274 d!1586399))

(assert (=> b!4927274 d!1585635))

(declare-fun d!1586401 () Bool)

(assert (=> d!1586401 (<= (size!37489 Nil!56697) (size!37489 (list!17959 input!5492)))))

(declare-fun lt!2028283 () Unit!147242)

(assert (=> d!1586401 (= lt!2028283 (choose!36089 Nil!56697 (list!17959 input!5492)))))

(assert (=> d!1586401 (isPrefix!4965 Nil!56697 (list!17959 input!5492))))

(assert (=> d!1586401 (= (lemmaIsPrefixThenSmallerEqSize!689 Nil!56697 (list!17959 input!5492)) lt!2028283)))

(declare-fun bs!1179999 () Bool)

(assert (= bs!1179999 d!1586401))

(assert (=> bs!1179999 m!5944576))

(assert (=> bs!1179999 m!5944346))

(assert (=> bs!1179999 m!5944632))

(assert (=> bs!1179999 m!5944346))

(declare-fun m!5947466 () Bool)

(assert (=> bs!1179999 m!5947466))

(assert (=> bs!1179999 m!5944346))

(assert (=> bs!1179999 m!5945632))

(assert (=> b!4927274 d!1586401))

(assert (=> b!4927274 d!1585801))

(declare-fun b!4928321 () Bool)

(declare-fun e!3079147 () Bool)

(assert (=> b!4928321 (= e!3079147 (>= (size!37489 (list!17959 input!5492)) (size!37489 (++!12330 Nil!56697 (Cons!56697 (head!10524 (getSuffix!2953 (list!17959 input!5492) Nil!56697)) Nil!56697)))))))

(declare-fun d!1586403 () Bool)

(assert (=> d!1586403 e!3079147))

(declare-fun res!2103257 () Bool)

(assert (=> d!1586403 (=> res!2103257 e!3079147)))

(declare-fun lt!2028284 () Bool)

(assert (=> d!1586403 (= res!2103257 (not lt!2028284))))

(declare-fun e!3079146 () Bool)

(assert (=> d!1586403 (= lt!2028284 e!3079146)))

(declare-fun res!2103259 () Bool)

(assert (=> d!1586403 (=> res!2103259 e!3079146)))

(assert (=> d!1586403 (= res!2103259 ((_ is Nil!56697) (++!12330 Nil!56697 (Cons!56697 (head!10524 (getSuffix!2953 (list!17959 input!5492) Nil!56697)) Nil!56697))))))

(assert (=> d!1586403 (= (isPrefix!4965 (++!12330 Nil!56697 (Cons!56697 (head!10524 (getSuffix!2953 (list!17959 input!5492) Nil!56697)) Nil!56697)) (list!17959 input!5492)) lt!2028284)))

(declare-fun b!4928319 () Bool)

(declare-fun res!2103258 () Bool)

(declare-fun e!3079145 () Bool)

(assert (=> b!4928319 (=> (not res!2103258) (not e!3079145))))

(assert (=> b!4928319 (= res!2103258 (= (head!10524 (++!12330 Nil!56697 (Cons!56697 (head!10524 (getSuffix!2953 (list!17959 input!5492) Nil!56697)) Nil!56697))) (head!10524 (list!17959 input!5492))))))

(declare-fun b!4928318 () Bool)

(assert (=> b!4928318 (= e!3079146 e!3079145)))

(declare-fun res!2103260 () Bool)

(assert (=> b!4928318 (=> (not res!2103260) (not e!3079145))))

(assert (=> b!4928318 (= res!2103260 (not ((_ is Nil!56697) (list!17959 input!5492))))))

(declare-fun b!4928320 () Bool)

(assert (=> b!4928320 (= e!3079145 (isPrefix!4965 (tail!9671 (++!12330 Nil!56697 (Cons!56697 (head!10524 (getSuffix!2953 (list!17959 input!5492) Nil!56697)) Nil!56697))) (tail!9671 (list!17959 input!5492))))))

(assert (= (and d!1586403 (not res!2103259)) b!4928318))

(assert (= (and b!4928318 res!2103260) b!4928319))

(assert (= (and b!4928319 res!2103258) b!4928320))

(assert (= (and d!1586403 (not res!2103257)) b!4928321))

(assert (=> b!4928321 m!5944346))

(assert (=> b!4928321 m!5944632))

(assert (=> b!4928321 m!5945594))

(declare-fun m!5947468 () Bool)

(assert (=> b!4928321 m!5947468))

(assert (=> b!4928319 m!5945594))

(declare-fun m!5947470 () Bool)

(assert (=> b!4928319 m!5947470))

(assert (=> b!4928319 m!5944346))

(assert (=> b!4928319 m!5947076))

(assert (=> b!4928320 m!5945594))

(declare-fun m!5947472 () Bool)

(assert (=> b!4928320 m!5947472))

(assert (=> b!4928320 m!5944346))

(assert (=> b!4928320 m!5945626))

(assert (=> b!4928320 m!5947472))

(assert (=> b!4928320 m!5945626))

(declare-fun m!5947474 () Bool)

(assert (=> b!4928320 m!5947474))

(assert (=> b!4927274 d!1586403))

(declare-fun d!1586405 () Bool)

(assert (=> d!1586405 (= (head!10524 (getSuffix!2953 (list!17959 input!5492) Nil!56697)) (h!63145 (getSuffix!2953 (list!17959 input!5492) Nil!56697)))))

(assert (=> b!4927274 d!1586405))

(declare-fun b!4928322 () Bool)

(declare-fun e!3079148 () List!56821)

(assert (=> b!4928322 (= e!3079148 (Cons!56697 (head!10524 (getSuffix!2953 (list!17959 input!5492) Nil!56697)) Nil!56697))))

(declare-fun b!4928325 () Bool)

(declare-fun e!3079149 () Bool)

(declare-fun lt!2028285 () List!56821)

(assert (=> b!4928325 (= e!3079149 (or (not (= (Cons!56697 (head!10524 (getSuffix!2953 (list!17959 input!5492) Nil!56697)) Nil!56697) Nil!56697)) (= lt!2028285 Nil!56697)))))

(declare-fun b!4928324 () Bool)

(declare-fun res!2103261 () Bool)

(assert (=> b!4928324 (=> (not res!2103261) (not e!3079149))))

(assert (=> b!4928324 (= res!2103261 (= (size!37489 lt!2028285) (+ (size!37489 Nil!56697) (size!37489 (Cons!56697 (head!10524 (getSuffix!2953 (list!17959 input!5492) Nil!56697)) Nil!56697)))))))

(declare-fun d!1586407 () Bool)

(assert (=> d!1586407 e!3079149))

(declare-fun res!2103262 () Bool)

(assert (=> d!1586407 (=> (not res!2103262) (not e!3079149))))

(assert (=> d!1586407 (= res!2103262 (= (content!10073 lt!2028285) ((_ map or) (content!10073 Nil!56697) (content!10073 (Cons!56697 (head!10524 (getSuffix!2953 (list!17959 input!5492) Nil!56697)) Nil!56697)))))))

(assert (=> d!1586407 (= lt!2028285 e!3079148)))

(declare-fun c!839716 () Bool)

(assert (=> d!1586407 (= c!839716 ((_ is Nil!56697) Nil!56697))))

(assert (=> d!1586407 (= (++!12330 Nil!56697 (Cons!56697 (head!10524 (getSuffix!2953 (list!17959 input!5492) Nil!56697)) Nil!56697)) lt!2028285)))

(declare-fun b!4928323 () Bool)

(assert (=> b!4928323 (= e!3079148 (Cons!56697 (h!63145 Nil!56697) (++!12330 (t!367283 Nil!56697) (Cons!56697 (head!10524 (getSuffix!2953 (list!17959 input!5492) Nil!56697)) Nil!56697))))))

(assert (= (and d!1586407 c!839716) b!4928322))

(assert (= (and d!1586407 (not c!839716)) b!4928323))

(assert (= (and d!1586407 res!2103262) b!4928324))

(assert (= (and b!4928324 res!2103261) b!4928325))

(declare-fun m!5947476 () Bool)

(assert (=> b!4928324 m!5947476))

(assert (=> b!4928324 m!5944576))

(declare-fun m!5947478 () Bool)

(assert (=> b!4928324 m!5947478))

(declare-fun m!5947480 () Bool)

(assert (=> d!1586407 m!5947480))

(assert (=> d!1586407 m!5944740))

(declare-fun m!5947482 () Bool)

(assert (=> d!1586407 m!5947482))

(declare-fun m!5947484 () Bool)

(assert (=> b!4928323 m!5947484))

(assert (=> b!4927274 d!1586407))

(declare-fun b!4928326 () Bool)

(declare-fun e!3079150 () List!56821)

(assert (=> b!4928326 (= e!3079150 lt!2027773)))

(declare-fun e!3079151 () Bool)

(declare-fun b!4928329 () Bool)

(declare-fun lt!2028286 () List!56821)

(assert (=> b!4928329 (= e!3079151 (or (not (= lt!2027773 Nil!56697)) (= lt!2028286 (++!12330 Nil!56697 (Cons!56697 lt!2027774 Nil!56697)))))))

(declare-fun b!4928328 () Bool)

(declare-fun res!2103263 () Bool)

(assert (=> b!4928328 (=> (not res!2103263) (not e!3079151))))

(assert (=> b!4928328 (= res!2103263 (= (size!37489 lt!2028286) (+ (size!37489 (++!12330 Nil!56697 (Cons!56697 lt!2027774 Nil!56697))) (size!37489 lt!2027773))))))

(declare-fun d!1586409 () Bool)

(assert (=> d!1586409 e!3079151))

(declare-fun res!2103264 () Bool)

(assert (=> d!1586409 (=> (not res!2103264) (not e!3079151))))

(assert (=> d!1586409 (= res!2103264 (= (content!10073 lt!2028286) ((_ map or) (content!10073 (++!12330 Nil!56697 (Cons!56697 lt!2027774 Nil!56697))) (content!10073 lt!2027773))))))

(assert (=> d!1586409 (= lt!2028286 e!3079150)))

(declare-fun c!839717 () Bool)

(assert (=> d!1586409 (= c!839717 ((_ is Nil!56697) (++!12330 Nil!56697 (Cons!56697 lt!2027774 Nil!56697))))))

(assert (=> d!1586409 (= (++!12330 (++!12330 Nil!56697 (Cons!56697 lt!2027774 Nil!56697)) lt!2027773) lt!2028286)))

(declare-fun b!4928327 () Bool)

(assert (=> b!4928327 (= e!3079150 (Cons!56697 (h!63145 (++!12330 Nil!56697 (Cons!56697 lt!2027774 Nil!56697))) (++!12330 (t!367283 (++!12330 Nil!56697 (Cons!56697 lt!2027774 Nil!56697))) lt!2027773)))))

(assert (= (and d!1586409 c!839717) b!4928326))

(assert (= (and d!1586409 (not c!839717)) b!4928327))

(assert (= (and d!1586409 res!2103264) b!4928328))

(assert (= (and b!4928328 res!2103263) b!4928329))

(declare-fun m!5947486 () Bool)

(assert (=> b!4928328 m!5947486))

(assert (=> b!4928328 m!5945588))

(declare-fun m!5947488 () Bool)

(assert (=> b!4928328 m!5947488))

(declare-fun m!5947490 () Bool)

(assert (=> b!4928328 m!5947490))

(declare-fun m!5947492 () Bool)

(assert (=> d!1586409 m!5947492))

(assert (=> d!1586409 m!5945588))

(declare-fun m!5947494 () Bool)

(assert (=> d!1586409 m!5947494))

(declare-fun m!5947496 () Bool)

(assert (=> d!1586409 m!5947496))

(declare-fun m!5947498 () Bool)

(assert (=> b!4928327 m!5947498))

(assert (=> b!4927274 d!1586409))

(declare-fun d!1586411 () Bool)

(assert (=> d!1586411 (= (++!12330 (++!12330 Nil!56697 (Cons!56697 lt!2027774 Nil!56697)) lt!2027773) (list!17959 input!5492))))

(declare-fun lt!2028287 () Unit!147242)

(assert (=> d!1586411 (= lt!2028287 (choose!36085 Nil!56697 lt!2027774 lt!2027773 (list!17959 input!5492)))))

(assert (=> d!1586411 (= (++!12330 Nil!56697 (Cons!56697 lt!2027774 lt!2027773)) (list!17959 input!5492))))

(assert (=> d!1586411 (= (lemmaMoveElementToOtherListKeepsConcatEq!1395 Nil!56697 lt!2027774 lt!2027773 (list!17959 input!5492)) lt!2028287)))

(declare-fun bs!1180000 () Bool)

(assert (= bs!1180000 d!1586411))

(assert (=> bs!1180000 m!5945588))

(assert (=> bs!1180000 m!5945588))

(assert (=> bs!1180000 m!5945590))

(assert (=> bs!1180000 m!5944346))

(declare-fun m!5947500 () Bool)

(assert (=> bs!1180000 m!5947500))

(declare-fun m!5947502 () Bool)

(assert (=> bs!1180000 m!5947502))

(assert (=> b!4927274 d!1586411))

(declare-fun b!4928330 () Bool)

(declare-fun e!3079152 () List!56821)

(assert (=> b!4928330 (= e!3079152 (list!17961 (right!41674 (c!839087 (_1!33900 lt!2026997)))))))

(declare-fun b!4928333 () Bool)

(declare-fun e!3079153 () Bool)

(declare-fun lt!2028288 () List!56821)

(assert (=> b!4928333 (= e!3079153 (or (not (= (list!17961 (right!41674 (c!839087 (_1!33900 lt!2026997)))) Nil!56697)) (= lt!2028288 (list!17961 (left!41344 (c!839087 (_1!33900 lt!2026997)))))))))

(declare-fun b!4928332 () Bool)

(declare-fun res!2103265 () Bool)

(assert (=> b!4928332 (=> (not res!2103265) (not e!3079153))))

(assert (=> b!4928332 (= res!2103265 (= (size!37489 lt!2028288) (+ (size!37489 (list!17961 (left!41344 (c!839087 (_1!33900 lt!2026997))))) (size!37489 (list!17961 (right!41674 (c!839087 (_1!33900 lt!2026997))))))))))

(declare-fun d!1586413 () Bool)

(assert (=> d!1586413 e!3079153))

(declare-fun res!2103266 () Bool)

(assert (=> d!1586413 (=> (not res!2103266) (not e!3079153))))

(assert (=> d!1586413 (= res!2103266 (= (content!10073 lt!2028288) ((_ map or) (content!10073 (list!17961 (left!41344 (c!839087 (_1!33900 lt!2026997))))) (content!10073 (list!17961 (right!41674 (c!839087 (_1!33900 lt!2026997))))))))))

(assert (=> d!1586413 (= lt!2028288 e!3079152)))

(declare-fun c!839718 () Bool)

(assert (=> d!1586413 (= c!839718 ((_ is Nil!56697) (list!17961 (left!41344 (c!839087 (_1!33900 lt!2026997))))))))

(assert (=> d!1586413 (= (++!12330 (list!17961 (left!41344 (c!839087 (_1!33900 lt!2026997)))) (list!17961 (right!41674 (c!839087 (_1!33900 lt!2026997))))) lt!2028288)))

(declare-fun b!4928331 () Bool)

(assert (=> b!4928331 (= e!3079152 (Cons!56697 (h!63145 (list!17961 (left!41344 (c!839087 (_1!33900 lt!2026997))))) (++!12330 (t!367283 (list!17961 (left!41344 (c!839087 (_1!33900 lt!2026997))))) (list!17961 (right!41674 (c!839087 (_1!33900 lt!2026997)))))))))

(assert (= (and d!1586413 c!839718) b!4928330))

(assert (= (and d!1586413 (not c!839718)) b!4928331))

(assert (= (and d!1586413 res!2103266) b!4928332))

(assert (= (and b!4928332 res!2103265) b!4928333))

(declare-fun m!5947504 () Bool)

(assert (=> b!4928332 m!5947504))

(assert (=> b!4928332 m!5945748))

(declare-fun m!5947506 () Bool)

(assert (=> b!4928332 m!5947506))

(assert (=> b!4928332 m!5945750))

(declare-fun m!5947508 () Bool)

(assert (=> b!4928332 m!5947508))

(declare-fun m!5947510 () Bool)

(assert (=> d!1586413 m!5947510))

(assert (=> d!1586413 m!5945748))

(declare-fun m!5947512 () Bool)

(assert (=> d!1586413 m!5947512))

(assert (=> d!1586413 m!5945750))

(declare-fun m!5947514 () Bool)

(assert (=> d!1586413 m!5947514))

(assert (=> b!4928331 m!5945750))

(declare-fun m!5947516 () Bool)

(assert (=> b!4928331 m!5947516))

(assert (=> b!4927350 d!1586413))

(declare-fun b!4928337 () Bool)

(declare-fun e!3079155 () List!56821)

(assert (=> b!4928337 (= e!3079155 (++!12330 (list!17961 (left!41344 (left!41344 (c!839087 (_1!33900 lt!2026997))))) (list!17961 (right!41674 (left!41344 (c!839087 (_1!33900 lt!2026997)))))))))

(declare-fun b!4928336 () Bool)

(assert (=> b!4928336 (= e!3079155 (list!17963 (xs!18198 (left!41344 (c!839087 (_1!33900 lt!2026997))))))))

(declare-fun d!1586415 () Bool)

(declare-fun c!839719 () Bool)

(assert (=> d!1586415 (= c!839719 ((_ is Empty!14876) (left!41344 (c!839087 (_1!33900 lt!2026997)))))))

(declare-fun e!3079154 () List!56821)

(assert (=> d!1586415 (= (list!17961 (left!41344 (c!839087 (_1!33900 lt!2026997)))) e!3079154)))

(declare-fun b!4928334 () Bool)

(assert (=> b!4928334 (= e!3079154 Nil!56697)))

(declare-fun b!4928335 () Bool)

(assert (=> b!4928335 (= e!3079154 e!3079155)))

(declare-fun c!839720 () Bool)

(assert (=> b!4928335 (= c!839720 ((_ is Leaf!24747) (left!41344 (c!839087 (_1!33900 lt!2026997)))))))

(assert (= (and d!1586415 c!839719) b!4928334))

(assert (= (and d!1586415 (not c!839719)) b!4928335))

(assert (= (and b!4928335 c!839720) b!4928336))

(assert (= (and b!4928335 (not c!839720)) b!4928337))

(declare-fun m!5947518 () Bool)

(assert (=> b!4928337 m!5947518))

(declare-fun m!5947520 () Bool)

(assert (=> b!4928337 m!5947520))

(assert (=> b!4928337 m!5947518))

(assert (=> b!4928337 m!5947520))

(declare-fun m!5947522 () Bool)

(assert (=> b!4928337 m!5947522))

(declare-fun m!5947524 () Bool)

(assert (=> b!4928336 m!5947524))

(assert (=> b!4927350 d!1586415))

(declare-fun b!4928341 () Bool)

(declare-fun e!3079157 () List!56821)

(assert (=> b!4928341 (= e!3079157 (++!12330 (list!17961 (left!41344 (right!41674 (c!839087 (_1!33900 lt!2026997))))) (list!17961 (right!41674 (right!41674 (c!839087 (_1!33900 lt!2026997)))))))))

(declare-fun b!4928340 () Bool)

(assert (=> b!4928340 (= e!3079157 (list!17963 (xs!18198 (right!41674 (c!839087 (_1!33900 lt!2026997))))))))

(declare-fun d!1586417 () Bool)

(declare-fun c!839721 () Bool)

(assert (=> d!1586417 (= c!839721 ((_ is Empty!14876) (right!41674 (c!839087 (_1!33900 lt!2026997)))))))

(declare-fun e!3079156 () List!56821)

(assert (=> d!1586417 (= (list!17961 (right!41674 (c!839087 (_1!33900 lt!2026997)))) e!3079156)))

(declare-fun b!4928338 () Bool)

(assert (=> b!4928338 (= e!3079156 Nil!56697)))

(declare-fun b!4928339 () Bool)

(assert (=> b!4928339 (= e!3079156 e!3079157)))

(declare-fun c!839722 () Bool)

(assert (=> b!4928339 (= c!839722 ((_ is Leaf!24747) (right!41674 (c!839087 (_1!33900 lt!2026997)))))))

(assert (= (and d!1586417 c!839721) b!4928338))

(assert (= (and d!1586417 (not c!839721)) b!4928339))

(assert (= (and b!4928339 c!839722) b!4928340))

(assert (= (and b!4928339 (not c!839722)) b!4928341))

(declare-fun m!5947526 () Bool)

(assert (=> b!4928341 m!5947526))

(declare-fun m!5947528 () Bool)

(assert (=> b!4928341 m!5947528))

(assert (=> b!4928341 m!5947526))

(assert (=> b!4928341 m!5947528))

(declare-fun m!5947530 () Bool)

(assert (=> b!4928341 m!5947530))

(declare-fun m!5947532 () Bool)

(assert (=> b!4928340 m!5947532))

(assert (=> b!4927350 d!1586417))

(declare-fun d!1586419 () Bool)

(declare-fun c!839723 () Bool)

(assert (=> d!1586419 (= c!839723 ((_ is Nil!56697) (t!367283 lt!2026998)))))

(declare-fun e!3079158 () (InoxSet C!26964))

(assert (=> d!1586419 (= (content!10073 (t!367283 lt!2026998)) e!3079158)))

(declare-fun b!4928342 () Bool)

(assert (=> b!4928342 (= e!3079158 ((as const (Array C!26964 Bool)) false))))

(declare-fun b!4928343 () Bool)

(assert (=> b!4928343 (= e!3079158 ((_ map or) (store ((as const (Array C!26964 Bool)) false) (h!63145 (t!367283 lt!2026998)) true) (content!10073 (t!367283 (t!367283 lt!2026998)))))))

(assert (= (and d!1586419 c!839723) b!4928342))

(assert (= (and d!1586419 (not c!839723)) b!4928343))

(declare-fun m!5947534 () Bool)

(assert (=> b!4928343 m!5947534))

(declare-fun m!5947536 () Bool)

(assert (=> b!4928343 m!5947536))

(assert (=> b!4927304 d!1586419))

(declare-fun b!4928344 () Bool)

(declare-fun res!2103269 () Bool)

(declare-fun e!3079160 () Bool)

(assert (=> b!4928344 (=> (not res!2103269) (not e!3079160))))

(assert (=> b!4928344 (= res!2103269 (isBalanced!4089 (left!41344 (left!41344 (c!839087 input!5492)))))))

(declare-fun b!4928345 () Bool)

(declare-fun res!2103272 () Bool)

(assert (=> b!4928345 (=> (not res!2103272) (not e!3079160))))

(assert (=> b!4928345 (= res!2103272 (<= (- (height!1986 (left!41344 (left!41344 (c!839087 input!5492)))) (height!1986 (right!41674 (left!41344 (c!839087 input!5492))))) 1))))

(declare-fun b!4928346 () Bool)

(declare-fun res!2103271 () Bool)

(assert (=> b!4928346 (=> (not res!2103271) (not e!3079160))))

(assert (=> b!4928346 (= res!2103271 (not (isEmpty!30583 (left!41344 (left!41344 (c!839087 input!5492))))))))

(declare-fun b!4928347 () Bool)

(declare-fun res!2103268 () Bool)

(assert (=> b!4928347 (=> (not res!2103268) (not e!3079160))))

(assert (=> b!4928347 (= res!2103268 (isBalanced!4089 (right!41674 (left!41344 (c!839087 input!5492)))))))

(declare-fun b!4928348 () Bool)

(declare-fun e!3079159 () Bool)

(assert (=> b!4928348 (= e!3079159 e!3079160)))

(declare-fun res!2103267 () Bool)

(assert (=> b!4928348 (=> (not res!2103267) (not e!3079160))))

(assert (=> b!4928348 (= res!2103267 (<= (- 1) (- (height!1986 (left!41344 (left!41344 (c!839087 input!5492)))) (height!1986 (right!41674 (left!41344 (c!839087 input!5492)))))))))

(declare-fun d!1586421 () Bool)

(declare-fun res!2103270 () Bool)

(assert (=> d!1586421 (=> res!2103270 e!3079159)))

(assert (=> d!1586421 (= res!2103270 (not ((_ is Node!14876) (left!41344 (c!839087 input!5492)))))))

(assert (=> d!1586421 (= (isBalanced!4089 (left!41344 (c!839087 input!5492))) e!3079159)))

(declare-fun b!4928349 () Bool)

(assert (=> b!4928349 (= e!3079160 (not (isEmpty!30583 (right!41674 (left!41344 (c!839087 input!5492))))))))

(assert (= (and d!1586421 (not res!2103270)) b!4928348))

(assert (= (and b!4928348 res!2103267) b!4928345))

(assert (= (and b!4928345 res!2103272) b!4928344))

(assert (= (and b!4928344 res!2103269) b!4928347))

(assert (= (and b!4928347 res!2103268) b!4928346))

(assert (= (and b!4928346 res!2103271) b!4928349))

(declare-fun m!5947538 () Bool)

(assert (=> b!4928346 m!5947538))

(declare-fun m!5947540 () Bool)

(assert (=> b!4928347 m!5947540))

(assert (=> b!4928345 m!5947274))

(assert (=> b!4928345 m!5947276))

(assert (=> b!4928348 m!5947274))

(assert (=> b!4928348 m!5947276))

(declare-fun m!5947542 () Bool)

(assert (=> b!4928349 m!5947542))

(declare-fun m!5947544 () Bool)

(assert (=> b!4928344 m!5947544))

(assert (=> b!4927255 d!1586421))

(declare-fun d!1586423 () Bool)

(assert (=> d!1586423 (isPrefix!4965 (ite c!839399 lt!2027830 lt!2027820) (ite c!839399 lt!2027821 lt!2027855))))

(declare-fun lt!2028289 () Unit!147242)

(assert (=> d!1586423 (= lt!2028289 (choose!36095 (ite c!839399 lt!2027830 lt!2027820) (ite c!839399 lt!2027821 lt!2027855)))))

(assert (=> d!1586423 (= (lemmaIsPrefixRefl!3361 (ite c!839399 lt!2027830 lt!2027820) (ite c!839399 lt!2027821 lt!2027855)) lt!2028289)))

(declare-fun bs!1180001 () Bool)

(assert (= bs!1180001 d!1586423))

(assert (=> bs!1180001 m!5945836))

(declare-fun m!5947546 () Bool)

(assert (=> bs!1180001 m!5947546))

(assert (=> bm!343729 d!1586423))

(declare-fun d!1586425 () Bool)

(assert (not d!1586425))

(assert (=> b!4926949 d!1586425))

(assert (=> b!4926949 d!1585509))

(declare-fun d!1586427 () Bool)

(declare-fun res!2103273 () Bool)

(declare-fun e!3079161 () Bool)

(assert (=> d!1586427 (=> (not res!2103273) (not e!3079161))))

(assert (=> d!1586427 (= res!2103273 (<= (size!37489 (list!17963 (xs!18198 (right!41674 (c!839087 input!5492))))) 512))))

(assert (=> d!1586427 (= (inv!73499 (right!41674 (c!839087 input!5492))) e!3079161)))

(declare-fun b!4928350 () Bool)

(declare-fun res!2103274 () Bool)

(assert (=> b!4928350 (=> (not res!2103274) (not e!3079161))))

(assert (=> b!4928350 (= res!2103274 (= (csize!29983 (right!41674 (c!839087 input!5492))) (size!37489 (list!17963 (xs!18198 (right!41674 (c!839087 input!5492)))))))))

(declare-fun b!4928351 () Bool)

(assert (=> b!4928351 (= e!3079161 (and (> (csize!29983 (right!41674 (c!839087 input!5492))) 0) (<= (csize!29983 (right!41674 (c!839087 input!5492))) 512)))))

(assert (= (and d!1586427 res!2103273) b!4928350))

(assert (= (and b!4928350 res!2103274) b!4928351))

(assert (=> d!1586427 m!5946118))

(assert (=> d!1586427 m!5946118))

(declare-fun m!5947548 () Bool)

(assert (=> d!1586427 m!5947548))

(assert (=> b!4928350 m!5946118))

(assert (=> b!4928350 m!5946118))

(assert (=> b!4928350 m!5947548))

(assert (=> b!4927379 d!1586427))

(declare-fun b!4928355 () Bool)

(declare-fun e!3079163 () List!56821)

(assert (=> b!4928355 (= e!3079163 (++!12330 (list!17961 (left!41344 (c!839087 (_1!33900 lt!2027359)))) (list!17961 (right!41674 (c!839087 (_1!33900 lt!2027359))))))))

(declare-fun b!4928354 () Bool)

(assert (=> b!4928354 (= e!3079163 (list!17963 (xs!18198 (c!839087 (_1!33900 lt!2027359)))))))

(declare-fun d!1586429 () Bool)

(declare-fun c!839724 () Bool)

(assert (=> d!1586429 (= c!839724 ((_ is Empty!14876) (c!839087 (_1!33900 lt!2027359))))))

(declare-fun e!3079162 () List!56821)

(assert (=> d!1586429 (= (list!17961 (c!839087 (_1!33900 lt!2027359))) e!3079162)))

(declare-fun b!4928352 () Bool)

(assert (=> b!4928352 (= e!3079162 Nil!56697)))

(declare-fun b!4928353 () Bool)

(assert (=> b!4928353 (= e!3079162 e!3079163)))

(declare-fun c!839725 () Bool)

(assert (=> b!4928353 (= c!839725 ((_ is Leaf!24747) (c!839087 (_1!33900 lt!2027359))))))

(assert (= (and d!1586429 c!839724) b!4928352))

(assert (= (and d!1586429 (not c!839724)) b!4928353))

(assert (= (and b!4928353 c!839725) b!4928354))

(assert (= (and b!4928353 (not c!839725)) b!4928355))

(assert (=> b!4928355 m!5946100))

(assert (=> b!4928355 m!5947150))

(assert (=> b!4928355 m!5946100))

(assert (=> b!4928355 m!5947150))

(declare-fun m!5947550 () Bool)

(assert (=> b!4928355 m!5947550))

(declare-fun m!5947552 () Bool)

(assert (=> b!4928354 m!5947552))

(assert (=> d!1585557 d!1586429))

(declare-fun d!1586431 () Bool)

(declare-fun lt!2028290 () Int)

(assert (=> d!1586431 (>= lt!2028290 0)))

(declare-fun e!3079164 () Int)

(assert (=> d!1586431 (= lt!2028290 e!3079164)))

(declare-fun c!839726 () Bool)

(assert (=> d!1586431 (= c!839726 ((_ is Nil!56697) lt!2027580))))

(assert (=> d!1586431 (= (size!37489 lt!2027580) lt!2028290)))

(declare-fun b!4928356 () Bool)

(assert (=> b!4928356 (= e!3079164 0)))

(declare-fun b!4928357 () Bool)

(assert (=> b!4928357 (= e!3079164 (+ 1 (size!37489 (t!367283 lt!2027580))))))

(assert (= (and d!1586431 c!839726) b!4928356))

(assert (= (and d!1586431 (not c!839726)) b!4928357))

(declare-fun m!5947554 () Bool)

(assert (=> b!4928357 m!5947554))

(assert (=> b!4926981 d!1586431))

(declare-fun d!1586433 () Bool)

(declare-fun lt!2028291 () Int)

(assert (=> d!1586433 (>= lt!2028291 0)))

(declare-fun e!3079165 () Int)

(assert (=> d!1586433 (= lt!2028291 e!3079165)))

(declare-fun c!839727 () Bool)

(assert (=> d!1586433 (= c!839727 ((_ is Nil!56697) (++!12330 Nil!56697 (Cons!56697 lt!2027437 Nil!56697))))))

(assert (=> d!1586433 (= (size!37489 (++!12330 Nil!56697 (Cons!56697 lt!2027437 Nil!56697))) lt!2028291)))

(declare-fun b!4928358 () Bool)

(assert (=> b!4928358 (= e!3079165 0)))

(declare-fun b!4928359 () Bool)

(assert (=> b!4928359 (= e!3079165 (+ 1 (size!37489 (t!367283 (++!12330 Nil!56697 (Cons!56697 lt!2027437 Nil!56697))))))))

(assert (= (and d!1586433 c!839727) b!4928358))

(assert (= (and d!1586433 (not c!839727)) b!4928359))

(assert (=> b!4928359 m!5946022))

(assert (=> b!4926981 d!1586433))

(declare-fun d!1586435 () Bool)

(declare-fun lt!2028292 () Int)

(assert (=> d!1586435 (>= lt!2028292 0)))

(declare-fun e!3079166 () Int)

(assert (=> d!1586435 (= lt!2028292 e!3079166)))

(declare-fun c!839728 () Bool)

(assert (=> d!1586435 (= c!839728 ((_ is Nil!56697) lt!2027436))))

(assert (=> d!1586435 (= (size!37489 lt!2027436) lt!2028292)))

(declare-fun b!4928360 () Bool)

(assert (=> b!4928360 (= e!3079166 0)))

(declare-fun b!4928361 () Bool)

(assert (=> b!4928361 (= e!3079166 (+ 1 (size!37489 (t!367283 lt!2027436))))))

(assert (= (and d!1586435 c!839728) b!4928360))

(assert (= (and d!1586435 (not c!839728)) b!4928361))

(declare-fun m!5947556 () Bool)

(assert (=> b!4928361 m!5947556))

(assert (=> b!4926981 d!1586435))

(declare-fun d!1586437 () Bool)

(declare-fun c!839729 () Bool)

(assert (=> d!1586437 (= c!839729 ((_ is Nil!56697) lt!2027816))))

(declare-fun e!3079167 () (InoxSet C!26964))

(assert (=> d!1586437 (= (content!10073 lt!2027816) e!3079167)))

(declare-fun b!4928362 () Bool)

(assert (=> b!4928362 (= e!3079167 ((as const (Array C!26964 Bool)) false))))

(declare-fun b!4928363 () Bool)

(assert (=> b!4928363 (= e!3079167 ((_ map or) (store ((as const (Array C!26964 Bool)) false) (h!63145 lt!2027816) true) (content!10073 (t!367283 lt!2027816))))))

(assert (= (and d!1586437 c!839729) b!4928362))

(assert (= (and d!1586437 (not c!839729)) b!4928363))

(declare-fun m!5947558 () Bool)

(assert (=> b!4928363 m!5947558))

(declare-fun m!5947560 () Bool)

(assert (=> b!4928363 m!5947560))

(assert (=> d!1585831 d!1586437))

(assert (=> d!1585831 d!1586221))

(assert (=> d!1585831 d!1585819))

(declare-fun b!4928364 () Bool)

(declare-fun e!3079168 () List!56821)

(assert (=> b!4928364 (= e!3079168 lt!2026998)))

(declare-fun e!3079169 () Bool)

(declare-fun b!4928367 () Bool)

(declare-fun lt!2028293 () List!56821)

(assert (=> b!4928367 (= e!3079169 (or (not (= lt!2026998 Nil!56697)) (= lt!2028293 (t!367283 (t!367283 lt!2026994)))))))

(declare-fun b!4928366 () Bool)

(declare-fun res!2103275 () Bool)

(assert (=> b!4928366 (=> (not res!2103275) (not e!3079169))))

(assert (=> b!4928366 (= res!2103275 (= (size!37489 lt!2028293) (+ (size!37489 (t!367283 (t!367283 lt!2026994))) (size!37489 lt!2026998))))))

(declare-fun d!1586439 () Bool)

(assert (=> d!1586439 e!3079169))

(declare-fun res!2103276 () Bool)

(assert (=> d!1586439 (=> (not res!2103276) (not e!3079169))))

(assert (=> d!1586439 (= res!2103276 (= (content!10073 lt!2028293) ((_ map or) (content!10073 (t!367283 (t!367283 lt!2026994))) (content!10073 lt!2026998))))))

(assert (=> d!1586439 (= lt!2028293 e!3079168)))

(declare-fun c!839730 () Bool)

(assert (=> d!1586439 (= c!839730 ((_ is Nil!56697) (t!367283 (t!367283 lt!2026994))))))

(assert (=> d!1586439 (= (++!12330 (t!367283 (t!367283 lt!2026994)) lt!2026998) lt!2028293)))

(declare-fun b!4928365 () Bool)

(assert (=> b!4928365 (= e!3079168 (Cons!56697 (h!63145 (t!367283 (t!367283 lt!2026994))) (++!12330 (t!367283 (t!367283 (t!367283 lt!2026994))) lt!2026998)))))

(assert (= (and d!1586439 c!839730) b!4928364))

(assert (= (and d!1586439 (not c!839730)) b!4928365))

(assert (= (and d!1586439 res!2103276) b!4928366))

(assert (= (and b!4928366 res!2103275) b!4928367))

(declare-fun m!5947562 () Bool)

(assert (=> b!4928366 m!5947562))

(assert (=> b!4928366 m!5945706))

(assert (=> b!4928366 m!5944608))

(declare-fun m!5947564 () Bool)

(assert (=> d!1586439 m!5947564))

(assert (=> d!1586439 m!5947368))

(assert (=> d!1586439 m!5944614))

(declare-fun m!5947566 () Bool)

(assert (=> b!4928365 m!5947566))

(assert (=> b!4926849 d!1586439))

(declare-fun d!1586441 () Bool)

(assert (=> d!1586441 (= lt!2026995 lt!2027772)))

(declare-fun lt!2028294 () Unit!147242)

(assert (=> d!1586441 (= lt!2028294 (choose!36092 Nil!56697 lt!2026995 Nil!56697 lt!2027772 (list!17959 input!5492)))))

(assert (=> d!1586441 (isPrefix!4965 Nil!56697 (list!17959 input!5492))))

(assert (=> d!1586441 (= (lemmaSamePrefixThenSameSuffix!2369 Nil!56697 lt!2026995 Nil!56697 lt!2027772 (list!17959 input!5492)) lt!2028294)))

(declare-fun bs!1180002 () Bool)

(assert (= bs!1180002 d!1586441))

(assert (=> bs!1180002 m!5944346))

(declare-fun m!5947568 () Bool)

(assert (=> bs!1180002 m!5947568))

(assert (=> bs!1180002 m!5944346))

(assert (=> bs!1180002 m!5945632))

(assert (=> d!1585771 d!1586441))

(assert (=> d!1585771 d!1585605))

(assert (=> d!1585771 d!1585775))

(assert (=> d!1585771 d!1585613))

(assert (=> d!1585771 d!1585617))

(declare-fun b!4928368 () Bool)

(declare-fun e!3079170 () List!56821)

(assert (=> b!4928368 (= e!3079170 (_2!33899 lt!2027752))))

(declare-fun b!4928371 () Bool)

(declare-fun e!3079171 () Bool)

(declare-fun lt!2028295 () List!56821)

(assert (=> b!4928371 (= e!3079171 (or (not (= (_2!33899 lt!2027752) Nil!56697)) (= lt!2028295 (_1!33899 lt!2027752))))))

(declare-fun b!4928370 () Bool)

(declare-fun res!2103277 () Bool)

(assert (=> b!4928370 (=> (not res!2103277) (not e!3079171))))

(assert (=> b!4928370 (= res!2103277 (= (size!37489 lt!2028295) (+ (size!37489 (_1!33899 lt!2027752)) (size!37489 (_2!33899 lt!2027752)))))))

(declare-fun d!1586443 () Bool)

(assert (=> d!1586443 e!3079171))

(declare-fun res!2103278 () Bool)

(assert (=> d!1586443 (=> (not res!2103278) (not e!3079171))))

(assert (=> d!1586443 (= res!2103278 (= (content!10073 lt!2028295) ((_ map or) (content!10073 (_1!33899 lt!2027752)) (content!10073 (_2!33899 lt!2027752)))))))

(assert (=> d!1586443 (= lt!2028295 e!3079170)))

(declare-fun c!839731 () Bool)

(assert (=> d!1586443 (= c!839731 ((_ is Nil!56697) (_1!33899 lt!2027752)))))

(assert (=> d!1586443 (= (++!12330 (_1!33899 lt!2027752) (_2!33899 lt!2027752)) lt!2028295)))

(declare-fun b!4928369 () Bool)

(assert (=> b!4928369 (= e!3079170 (Cons!56697 (h!63145 (_1!33899 lt!2027752)) (++!12330 (t!367283 (_1!33899 lt!2027752)) (_2!33899 lt!2027752))))))

(assert (= (and d!1586443 c!839731) b!4928368))

(assert (= (and d!1586443 (not c!839731)) b!4928369))

(assert (= (and d!1586443 res!2103278) b!4928370))

(assert (= (and b!4928370 res!2103277) b!4928371))

(declare-fun m!5947570 () Bool)

(assert (=> b!4928370 m!5947570))

(assert (=> b!4928370 m!5945616))

(declare-fun m!5947572 () Bool)

(assert (=> b!4928370 m!5947572))

(declare-fun m!5947574 () Bool)

(assert (=> d!1586443 m!5947574))

(declare-fun m!5947576 () Bool)

(assert (=> d!1586443 m!5947576))

(declare-fun m!5947578 () Bool)

(assert (=> d!1586443 m!5947578))

(declare-fun m!5947580 () Bool)

(assert (=> b!4928369 m!5947580))

(assert (=> d!1585771 d!1586443))

(assert (=> d!1585771 d!1585579))

(declare-fun d!1586445 () Bool)

(assert (not d!1586445))

(assert (=> b!4926952 d!1586445))

(declare-fun d!1586447 () Bool)

(assert (=> d!1586447 (= (head!10524 (++!12330 Nil!56697 lt!2026995)) (h!63145 (++!12330 Nil!56697 lt!2026995)))))

(assert (=> b!4926952 d!1586447))

(declare-fun d!1586449 () Bool)

(declare-fun lt!2028296 () Int)

(assert (=> d!1586449 (>= lt!2028296 0)))

(declare-fun e!3079172 () Int)

(assert (=> d!1586449 (= lt!2028296 e!3079172)))

(declare-fun c!839732 () Bool)

(assert (=> d!1586449 (= c!839732 ((_ is Nil!56697) (_1!33899 lt!2027752)))))

(assert (=> d!1586449 (= (size!37489 (_1!33899 lt!2027752)) lt!2028296)))

(declare-fun b!4928372 () Bool)

(assert (=> b!4928372 (= e!3079172 0)))

(declare-fun b!4928373 () Bool)

(assert (=> b!4928373 (= e!3079172 (+ 1 (size!37489 (t!367283 (_1!33899 lt!2027752)))))))

(assert (= (and d!1586449 c!839732) b!4928372))

(assert (= (and d!1586449 (not c!839732)) b!4928373))

(declare-fun m!5947582 () Bool)

(assert (=> b!4928373 m!5947582))

(assert (=> b!4927279 d!1586449))

(assert (=> b!4927279 d!1585527))

(declare-fun d!1586451 () Bool)

(declare-fun c!839733 () Bool)

(assert (=> d!1586451 (= c!839733 ((_ is Nil!56697) lt!2027525))))

(declare-fun e!3079173 () (InoxSet C!26964))

(assert (=> d!1586451 (= (content!10073 lt!2027525) e!3079173)))

(declare-fun b!4928374 () Bool)

(assert (=> b!4928374 (= e!3079173 ((as const (Array C!26964 Bool)) false))))

(declare-fun b!4928375 () Bool)

(assert (=> b!4928375 (= e!3079173 ((_ map or) (store ((as const (Array C!26964 Bool)) false) (h!63145 lt!2027525) true) (content!10073 (t!367283 lt!2027525))))))

(assert (= (and d!1586451 c!839733) b!4928374))

(assert (= (and d!1586451 (not c!839733)) b!4928375))

(declare-fun m!5947584 () Bool)

(assert (=> b!4928375 m!5947584))

(declare-fun m!5947586 () Bool)

(assert (=> b!4928375 m!5947586))

(assert (=> d!1585553 d!1586451))

(assert (=> d!1585553 d!1586331))

(assert (=> d!1585553 d!1585789))

(declare-fun bs!1180003 () Bool)

(declare-fun d!1586453 () Bool)

(assert (= bs!1180003 (and d!1586453 d!1586003)))

(declare-fun lambda!245358 () Int)

(assert (=> bs!1180003 (not (= lambda!245358 lambda!245337))))

(declare-fun bs!1180004 () Bool)

(assert (= bs!1180004 (and d!1586453 d!1586327)))

(assert (=> bs!1180004 (not (= lambda!245358 lambda!245352))))

(declare-fun bs!1180005 () Bool)

(assert (= bs!1180005 (and d!1586453 d!1586367)))

(assert (=> bs!1180005 (= (= lambda!245303 (ite c!839252 lambda!245304 lambda!245305)) (= lambda!245358 lambda!245355))))

(declare-fun bs!1180006 () Bool)

(assert (= bs!1180006 (and d!1586453 d!1585879)))

(assert (=> bs!1180006 (not (= lambda!245358 lambda!245331))))

(declare-fun bs!1180007 () Bool)

(assert (= bs!1180007 (and d!1586453 d!1585835)))

(assert (=> bs!1180007 (not (= lambda!245358 lambda!245330))))

(declare-fun bs!1180008 () Bool)

(assert (= bs!1180008 (and d!1586453 b!4927721)))

(assert (=> bs!1180008 (not (= lambda!245358 lambda!245339))))

(declare-fun bs!1180009 () Bool)

(assert (= bs!1180009 (and d!1586453 b!4927573)))

(assert (=> bs!1180009 (not (= lambda!245358 lambda!245333))))

(declare-fun bs!1180010 () Bool)

(assert (= bs!1180010 (and d!1586453 d!1586047)))

(assert (=> bs!1180010 (not (= lambda!245358 lambda!245347))))

(declare-fun bs!1180011 () Bool)

(assert (= bs!1180011 (and d!1586453 b!4926928)))

(assert (=> bs!1180011 (not (= lambda!245358 lambda!245305))))

(declare-fun bs!1180012 () Bool)

(assert (= bs!1180012 (and d!1586453 d!1585903)))

(assert (=> bs!1180012 (= lambda!245358 lambda!245336)))

(declare-fun bs!1180013 () Bool)

(assert (= bs!1180013 (and d!1586453 b!4927720)))

(assert (=> bs!1180013 (not (= lambda!245358 lambda!245338))))

(declare-fun bs!1180014 () Bool)

(assert (= bs!1180014 (and d!1586453 b!4926927)))

(assert (=> bs!1180014 (not (= lambda!245358 lambda!245304))))

(declare-fun bs!1180015 () Bool)

(assert (= bs!1180015 (and d!1586453 d!1585579)))

(assert (=> bs!1180015 (not (= lambda!245358 lambda!245303))))

(declare-fun bs!1180016 () Bool)

(assert (= bs!1180016 (and d!1586453 b!4927572)))

(assert (=> bs!1180016 (not (= lambda!245358 lambda!245332))))

(declare-fun bs!1180017 () Bool)

(assert (= bs!1180017 (and d!1586453 d!1586041)))

(assert (=> bs!1180017 (not (= lambda!245358 lambda!245346))))

(assert (=> d!1586453 true))

(assert (=> d!1586453 (< (dynLambda!23013 order!25979 lambda!245303) (dynLambda!23013 order!25979 lambda!245358))))

(assert (=> d!1586453 (not (exists!1251 lt!2027557 lambda!245358))))

(declare-fun lt!2028299 () Unit!147242)

(declare-fun choose!36117 (List!56823 Int) Unit!147242)

(assert (=> d!1586453 (= lt!2028299 (choose!36117 lt!2027557 lambda!245303))))

(assert (=> d!1586453 (forall!13144 lt!2027557 lambda!245303)))

(assert (=> d!1586453 (= (lemmaForallThenNotExists!166 lt!2027557 lambda!245303) lt!2028299)))

(declare-fun bs!1180018 () Bool)

(assert (= bs!1180018 d!1586453))

(declare-fun m!5947588 () Bool)

(assert (=> bs!1180018 m!5947588))

(declare-fun m!5947590 () Bool)

(assert (=> bs!1180018 m!5947590))

(declare-fun m!5947592 () Bool)

(assert (=> bs!1180018 m!5947592))

(assert (=> b!4926928 d!1586453))

(declare-fun b!4928376 () Bool)

(declare-fun e!3079176 () List!56821)

(assert (=> b!4928376 (= e!3079176 lt!2027336)))

(declare-fun e!3079177 () Bool)

(declare-fun lt!2028300 () List!56821)

(declare-fun b!4928379 () Bool)

(assert (=> b!4928379 (= e!3079177 (or (not (= lt!2027336 Nil!56697)) (= lt!2028300 (t!367283 (++!12330 Nil!56697 (Cons!56697 lt!2027340 Nil!56697))))))))

(declare-fun b!4928378 () Bool)

(declare-fun res!2103279 () Bool)

(assert (=> b!4928378 (=> (not res!2103279) (not e!3079177))))

(assert (=> b!4928378 (= res!2103279 (= (size!37489 lt!2028300) (+ (size!37489 (t!367283 (++!12330 Nil!56697 (Cons!56697 lt!2027340 Nil!56697)))) (size!37489 lt!2027336))))))

(declare-fun d!1586455 () Bool)

(assert (=> d!1586455 e!3079177))

(declare-fun res!2103280 () Bool)

(assert (=> d!1586455 (=> (not res!2103280) (not e!3079177))))

(assert (=> d!1586455 (= res!2103280 (= (content!10073 lt!2028300) ((_ map or) (content!10073 (t!367283 (++!12330 Nil!56697 (Cons!56697 lt!2027340 Nil!56697)))) (content!10073 lt!2027336))))))

(assert (=> d!1586455 (= lt!2028300 e!3079176)))

(declare-fun c!839734 () Bool)

(assert (=> d!1586455 (= c!839734 ((_ is Nil!56697) (t!367283 (++!12330 Nil!56697 (Cons!56697 lt!2027340 Nil!56697)))))))

(assert (=> d!1586455 (= (++!12330 (t!367283 (++!12330 Nil!56697 (Cons!56697 lt!2027340 Nil!56697))) lt!2027336) lt!2028300)))

(declare-fun b!4928377 () Bool)

(assert (=> b!4928377 (= e!3079176 (Cons!56697 (h!63145 (t!367283 (++!12330 Nil!56697 (Cons!56697 lt!2027340 Nil!56697)))) (++!12330 (t!367283 (t!367283 (++!12330 Nil!56697 (Cons!56697 lt!2027340 Nil!56697)))) lt!2027336)))))

(assert (= (and d!1586455 c!839734) b!4928376))

(assert (= (and d!1586455 (not c!839734)) b!4928377))

(assert (= (and d!1586455 res!2103280) b!4928378))

(assert (= (and b!4928378 res!2103279) b!4928379))

(declare-fun m!5947594 () Bool)

(assert (=> b!4928378 m!5947594))

(assert (=> b!4928378 m!5947372))

(assert (=> b!4928378 m!5944792))

(declare-fun m!5947596 () Bool)

(assert (=> d!1586455 m!5947596))

(assert (=> d!1586455 m!5947422))

(assert (=> d!1586455 m!5944798))

(declare-fun m!5947598 () Bool)

(assert (=> b!4928377 m!5947598))

(assert (=> b!4926788 d!1586455))

(declare-fun d!1586457 () Bool)

(declare-fun lt!2028301 () Int)

(assert (=> d!1586457 (>= lt!2028301 0)))

(declare-fun e!3079178 () Int)

(assert (=> d!1586457 (= lt!2028301 e!3079178)))

(declare-fun c!839735 () Bool)

(assert (=> d!1586457 (= c!839735 ((_ is Nil!56697) lt!2027577))))

(assert (=> d!1586457 (= (size!37489 lt!2027577) lt!2028301)))

(declare-fun b!4928380 () Bool)

(assert (=> b!4928380 (= e!3079178 0)))

(declare-fun b!4928381 () Bool)

(assert (=> b!4928381 (= e!3079178 (+ 1 (size!37489 (t!367283 lt!2027577))))))

(assert (= (and d!1586457 c!839735) b!4928380))

(assert (= (and d!1586457 (not c!839735)) b!4928381))

(declare-fun m!5947600 () Bool)

(assert (=> b!4928381 m!5947600))

(assert (=> b!4926957 d!1586457))

(assert (=> b!4926957 d!1585791))

(declare-fun d!1586459 () Bool)

(declare-fun lt!2028302 () Int)

(assert (=> d!1586459 (>= lt!2028302 0)))

(declare-fun e!3079179 () Int)

(assert (=> d!1586459 (= lt!2028302 e!3079179)))

(declare-fun c!839736 () Bool)

(assert (=> d!1586459 (= c!839736 ((_ is Nil!56697) (_2!33899 lt!2027415)))))

(assert (=> d!1586459 (= (size!37489 (_2!33899 lt!2027415)) lt!2028302)))

(declare-fun b!4928382 () Bool)

(assert (=> b!4928382 (= e!3079179 0)))

(declare-fun b!4928383 () Bool)

(assert (=> b!4928383 (= e!3079179 (+ 1 (size!37489 (t!367283 (_2!33899 lt!2027415)))))))

(assert (= (and d!1586459 c!839736) b!4928382))

(assert (= (and d!1586459 (not c!839736)) b!4928383))

(declare-fun m!5947602 () Bool)

(assert (=> b!4928383 m!5947602))

(assert (=> b!4926957 d!1586459))

(declare-fun b!4928384 () Bool)

(declare-fun res!2103283 () Bool)

(declare-fun e!3079181 () Bool)

(assert (=> b!4928384 (=> (not res!2103283) (not e!3079181))))

(assert (=> b!4928384 (= res!2103283 (isBalanced!4089 (left!41344 (right!41674 (c!839087 (_1!33900 lt!2027359))))))))

(declare-fun b!4928385 () Bool)

(declare-fun res!2103286 () Bool)

(assert (=> b!4928385 (=> (not res!2103286) (not e!3079181))))

(assert (=> b!4928385 (= res!2103286 (<= (- (height!1986 (left!41344 (right!41674 (c!839087 (_1!33900 lt!2027359))))) (height!1986 (right!41674 (right!41674 (c!839087 (_1!33900 lt!2027359)))))) 1))))

(declare-fun b!4928386 () Bool)

(declare-fun res!2103285 () Bool)

(assert (=> b!4928386 (=> (not res!2103285) (not e!3079181))))

(assert (=> b!4928386 (= res!2103285 (not (isEmpty!30583 (left!41344 (right!41674 (c!839087 (_1!33900 lt!2027359)))))))))

(declare-fun b!4928387 () Bool)

(declare-fun res!2103282 () Bool)

(assert (=> b!4928387 (=> (not res!2103282) (not e!3079181))))

(assert (=> b!4928387 (= res!2103282 (isBalanced!4089 (right!41674 (right!41674 (c!839087 (_1!33900 lt!2027359))))))))

(declare-fun b!4928388 () Bool)

(declare-fun e!3079180 () Bool)

(assert (=> b!4928388 (= e!3079180 e!3079181)))

(declare-fun res!2103281 () Bool)

(assert (=> b!4928388 (=> (not res!2103281) (not e!3079181))))

(assert (=> b!4928388 (= res!2103281 (<= (- 1) (- (height!1986 (left!41344 (right!41674 (c!839087 (_1!33900 lt!2027359))))) (height!1986 (right!41674 (right!41674 (c!839087 (_1!33900 lt!2027359))))))))))

(declare-fun d!1586461 () Bool)

(declare-fun res!2103284 () Bool)

(assert (=> d!1586461 (=> res!2103284 e!3079180)))

(assert (=> d!1586461 (= res!2103284 (not ((_ is Node!14876) (right!41674 (c!839087 (_1!33900 lt!2027359))))))))

(assert (=> d!1586461 (= (isBalanced!4089 (right!41674 (c!839087 (_1!33900 lt!2027359)))) e!3079180)))

(declare-fun b!4928389 () Bool)

(assert (=> b!4928389 (= e!3079181 (not (isEmpty!30583 (right!41674 (right!41674 (c!839087 (_1!33900 lt!2027359)))))))))

(assert (= (and d!1586461 (not res!2103284)) b!4928388))

(assert (= (and b!4928388 res!2103281) b!4928385))

(assert (= (and b!4928385 res!2103286) b!4928384))

(assert (= (and b!4928384 res!2103283) b!4928387))

(assert (= (and b!4928387 res!2103282) b!4928386))

(assert (= (and b!4928386 res!2103285) b!4928389))

(declare-fun m!5947604 () Bool)

(assert (=> b!4928386 m!5947604))

(declare-fun m!5947606 () Bool)

(assert (=> b!4928387 m!5947606))

(declare-fun m!5947608 () Bool)

(assert (=> b!4928385 m!5947608))

(declare-fun m!5947610 () Bool)

(assert (=> b!4928385 m!5947610))

(assert (=> b!4928388 m!5947608))

(assert (=> b!4928388 m!5947610))

(declare-fun m!5947612 () Bool)

(assert (=> b!4928389 m!5947612))

(declare-fun m!5947614 () Bool)

(assert (=> b!4928384 m!5947614))

(assert (=> b!4927036 d!1586461))

(assert (=> bm!343719 d!1586237))

(declare-fun d!1586463 () Bool)

(declare-fun c!839737 () Bool)

(assert (=> d!1586463 (= c!839737 ((_ is Nil!56697) lt!2027577))))

(declare-fun e!3079182 () (InoxSet C!26964))

(assert (=> d!1586463 (= (content!10073 lt!2027577) e!3079182)))

(declare-fun b!4928390 () Bool)

(assert (=> b!4928390 (= e!3079182 ((as const (Array C!26964 Bool)) false))))

(declare-fun b!4928391 () Bool)

(assert (=> b!4928391 (= e!3079182 ((_ map or) (store ((as const (Array C!26964 Bool)) false) (h!63145 lt!2027577) true) (content!10073 (t!367283 lt!2027577))))))

(assert (= (and d!1586463 c!839737) b!4928390))

(assert (= (and d!1586463 (not c!839737)) b!4928391))

(declare-fun m!5947616 () Bool)

(assert (=> b!4928391 m!5947616))

(declare-fun m!5947618 () Bool)

(assert (=> b!4928391 m!5947618))

(assert (=> d!1585615 d!1586463))

(declare-fun d!1586465 () Bool)

(declare-fun c!839738 () Bool)

(assert (=> d!1586465 (= c!839738 ((_ is Nil!56697) (_1!33899 lt!2027415)))))

(declare-fun e!3079183 () (InoxSet C!26964))

(assert (=> d!1586465 (= (content!10073 (_1!33899 lt!2027415)) e!3079183)))

(declare-fun b!4928392 () Bool)

(assert (=> b!4928392 (= e!3079183 ((as const (Array C!26964 Bool)) false))))

(declare-fun b!4928393 () Bool)

(assert (=> b!4928393 (= e!3079183 ((_ map or) (store ((as const (Array C!26964 Bool)) false) (h!63145 (_1!33899 lt!2027415)) true) (content!10073 (t!367283 (_1!33899 lt!2027415)))))))

(assert (= (and d!1586465 c!839738) b!4928392))

(assert (= (and d!1586465 (not c!839738)) b!4928393))

(declare-fun m!5947620 () Bool)

(assert (=> b!4928393 m!5947620))

(assert (=> b!4928393 m!5946096))

(assert (=> d!1585615 d!1586465))

(declare-fun d!1586467 () Bool)

(declare-fun c!839739 () Bool)

(assert (=> d!1586467 (= c!839739 ((_ is Nil!56697) (_2!33899 lt!2027415)))))

(declare-fun e!3079184 () (InoxSet C!26964))

(assert (=> d!1586467 (= (content!10073 (_2!33899 lt!2027415)) e!3079184)))

(declare-fun b!4928394 () Bool)

(assert (=> b!4928394 (= e!3079184 ((as const (Array C!26964 Bool)) false))))

(declare-fun b!4928395 () Bool)

(assert (=> b!4928395 (= e!3079184 ((_ map or) (store ((as const (Array C!26964 Bool)) false) (h!63145 (_2!33899 lt!2027415)) true) (content!10073 (t!367283 (_2!33899 lt!2027415)))))))

(assert (= (and d!1586467 c!839739) b!4928394))

(assert (= (and d!1586467 (not c!839739)) b!4928395))

(declare-fun m!5947622 () Bool)

(assert (=> b!4928395 m!5947622))

(declare-fun m!5947624 () Bool)

(assert (=> b!4928395 m!5947624))

(assert (=> d!1585615 d!1586467))

(declare-fun b!4928396 () Bool)

(declare-fun e!3079185 () List!56821)

(assert (=> b!4928396 (= e!3079185 (_2!33899 lt!2026999))))

(declare-fun b!4928399 () Bool)

(declare-fun e!3079186 () Bool)

(declare-fun lt!2028303 () List!56821)

(assert (=> b!4928399 (= e!3079186 (or (not (= (_2!33899 lt!2026999) Nil!56697)) (= lt!2028303 (t!367283 (t!367283 (_1!33899 lt!2026999))))))))

(declare-fun b!4928398 () Bool)

(declare-fun res!2103287 () Bool)

(assert (=> b!4928398 (=> (not res!2103287) (not e!3079186))))

(assert (=> b!4928398 (= res!2103287 (= (size!37489 lt!2028303) (+ (size!37489 (t!367283 (t!367283 (_1!33899 lt!2026999)))) (size!37489 (_2!33899 lt!2026999)))))))

(declare-fun d!1586469 () Bool)

(assert (=> d!1586469 e!3079186))

(declare-fun res!2103288 () Bool)

(assert (=> d!1586469 (=> (not res!2103288) (not e!3079186))))

(assert (=> d!1586469 (= res!2103288 (= (content!10073 lt!2028303) ((_ map or) (content!10073 (t!367283 (t!367283 (_1!33899 lt!2026999)))) (content!10073 (_2!33899 lt!2026999)))))))

(assert (=> d!1586469 (= lt!2028303 e!3079185)))

(declare-fun c!839740 () Bool)

(assert (=> d!1586469 (= c!839740 ((_ is Nil!56697) (t!367283 (t!367283 (_1!33899 lt!2026999)))))))

(assert (=> d!1586469 (= (++!12330 (t!367283 (t!367283 (_1!33899 lt!2026999))) (_2!33899 lt!2026999)) lt!2028303)))

(declare-fun b!4928397 () Bool)

(assert (=> b!4928397 (= e!3079185 (Cons!56697 (h!63145 (t!367283 (t!367283 (_1!33899 lt!2026999)))) (++!12330 (t!367283 (t!367283 (t!367283 (_1!33899 lt!2026999)))) (_2!33899 lt!2026999))))))

(assert (= (and d!1586469 c!839740) b!4928396))

(assert (= (and d!1586469 (not c!839740)) b!4928397))

(assert (= (and d!1586469 res!2103288) b!4928398))

(assert (= (and b!4928398 res!2103287) b!4928399))

(declare-fun m!5947626 () Bool)

(assert (=> b!4928398 m!5947626))

(assert (=> b!4928398 m!5944928))

(assert (=> b!4928398 m!5944622))

(declare-fun m!5947628 () Bool)

(assert (=> d!1586469 m!5947628))

(assert (=> d!1586469 m!5947000))

(assert (=> d!1586469 m!5944628))

(declare-fun m!5947630 () Bool)

(assert (=> b!4928397 m!5947630))

(assert (=> b!4927362 d!1586469))

(assert (=> b!4927236 d!1586031))

(declare-fun d!1586471 () Bool)

(declare-fun c!839741 () Bool)

(assert (=> d!1586471 (= c!839741 ((_ is Nil!56697) (t!367283 lt!2027349)))))

(declare-fun e!3079187 () (InoxSet C!26964))

(assert (=> d!1586471 (= (content!10073 (t!367283 lt!2027349)) e!3079187)))

(declare-fun b!4928400 () Bool)

(assert (=> b!4928400 (= e!3079187 ((as const (Array C!26964 Bool)) false))))

(declare-fun b!4928401 () Bool)

(assert (=> b!4928401 (= e!3079187 ((_ map or) (store ((as const (Array C!26964 Bool)) false) (h!63145 (t!367283 lt!2027349)) true) (content!10073 (t!367283 (t!367283 lt!2027349)))))))

(assert (= (and d!1586471 c!839741) b!4928400))

(assert (= (and d!1586471 (not c!839741)) b!4928401))

(declare-fun m!5947632 () Bool)

(assert (=> b!4928401 m!5947632))

(declare-fun m!5947634 () Bool)

(assert (=> b!4928401 m!5947634))

(assert (=> b!4927300 d!1586471))

(assert (=> b!4927339 d!1586083))

(assert (=> b!4927339 d!1586085))

(declare-fun d!1586473 () Bool)

(declare-fun c!839742 () Bool)

(assert (=> d!1586473 (= c!839742 ((_ is Nil!56697) lt!2027580))))

(declare-fun e!3079188 () (InoxSet C!26964))

(assert (=> d!1586473 (= (content!10073 lt!2027580) e!3079188)))

(declare-fun b!4928402 () Bool)

(assert (=> b!4928402 (= e!3079188 ((as const (Array C!26964 Bool)) false))))

(declare-fun b!4928403 () Bool)

(assert (=> b!4928403 (= e!3079188 ((_ map or) (store ((as const (Array C!26964 Bool)) false) (h!63145 lt!2027580) true) (content!10073 (t!367283 lt!2027580))))))

(assert (= (and d!1586473 c!839742) b!4928402))

(assert (= (and d!1586473 (not c!839742)) b!4928403))

(declare-fun m!5947636 () Bool)

(assert (=> b!4928403 m!5947636))

(declare-fun m!5947638 () Bool)

(assert (=> b!4928403 m!5947638))

(assert (=> d!1585623 d!1586473))

(declare-fun d!1586475 () Bool)

(declare-fun c!839743 () Bool)

(assert (=> d!1586475 (= c!839743 ((_ is Nil!56697) (++!12330 Nil!56697 (Cons!56697 lt!2027437 Nil!56697))))))

(declare-fun e!3079189 () (InoxSet C!26964))

(assert (=> d!1586475 (= (content!10073 (++!12330 Nil!56697 (Cons!56697 lt!2027437 Nil!56697))) e!3079189)))

(declare-fun b!4928404 () Bool)

(assert (=> b!4928404 (= e!3079189 ((as const (Array C!26964 Bool)) false))))

(declare-fun b!4928405 () Bool)

(assert (=> b!4928405 (= e!3079189 ((_ map or) (store ((as const (Array C!26964 Bool)) false) (h!63145 (++!12330 Nil!56697 (Cons!56697 lt!2027437 Nil!56697))) true) (content!10073 (t!367283 (++!12330 Nil!56697 (Cons!56697 lt!2027437 Nil!56697))))))))

(assert (= (and d!1586475 c!839743) b!4928404))

(assert (= (and d!1586475 (not c!839743)) b!4928405))

(declare-fun m!5947640 () Bool)

(assert (=> b!4928405 m!5947640))

(assert (=> b!4928405 m!5946026))

(assert (=> d!1585623 d!1586475))

(declare-fun d!1586477 () Bool)

(declare-fun c!839744 () Bool)

(assert (=> d!1586477 (= c!839744 ((_ is Nil!56697) lt!2027436))))

(declare-fun e!3079190 () (InoxSet C!26964))

(assert (=> d!1586477 (= (content!10073 lt!2027436) e!3079190)))

(declare-fun b!4928406 () Bool)

(assert (=> b!4928406 (= e!3079190 ((as const (Array C!26964 Bool)) false))))

(declare-fun b!4928407 () Bool)

(assert (=> b!4928407 (= e!3079190 ((_ map or) (store ((as const (Array C!26964 Bool)) false) (h!63145 lt!2027436) true) (content!10073 (t!367283 lt!2027436))))))

(assert (= (and d!1586477 c!839744) b!4928406))

(assert (= (and d!1586477 (not c!839744)) b!4928407))

(declare-fun m!5947642 () Bool)

(assert (=> b!4928407 m!5947642))

(declare-fun m!5947644 () Bool)

(assert (=> b!4928407 m!5947644))

(assert (=> d!1585623 d!1586477))

(declare-fun d!1586479 () Bool)

(assert (=> d!1586479 (= (flatMap!267 z!3559 lambda!245326) (choose!36113 z!3559 lambda!245326))))

(declare-fun bs!1180019 () Bool)

(assert (= bs!1180019 d!1586479))

(declare-fun m!5947646 () Bool)

(assert (=> bs!1180019 m!5947646))

(assert (=> d!1585811 d!1586479))

(declare-fun d!1586481 () Bool)

(assert (=> d!1586481 (= (inv!73500 (xs!18198 (right!41674 (c!839087 input!5492)))) (<= (size!37489 (innerList!14964 (xs!18198 (right!41674 (c!839087 input!5492))))) 2147483647))))

(declare-fun bs!1180020 () Bool)

(assert (= bs!1180020 d!1586481))

(declare-fun m!5947648 () Bool)

(assert (=> bs!1180020 m!5947648))

(assert (=> b!4927405 d!1586481))

(assert (=> bm!343712 d!1585835))

(declare-fun b!4928408 () Bool)

(declare-fun res!2103291 () Bool)

(declare-fun e!3079192 () Bool)

(assert (=> b!4928408 (=> (not res!2103291) (not e!3079192))))

(assert (=> b!4928408 (= res!2103291 (isBalanced!4089 (left!41344 (_1!33902 lt!2027728))))))

(declare-fun b!4928409 () Bool)

(declare-fun res!2103294 () Bool)

(assert (=> b!4928409 (=> (not res!2103294) (not e!3079192))))

(assert (=> b!4928409 (= res!2103294 (<= (- (height!1986 (left!41344 (_1!33902 lt!2027728))) (height!1986 (right!41674 (_1!33902 lt!2027728)))) 1))))

(declare-fun b!4928410 () Bool)

(declare-fun res!2103293 () Bool)

(assert (=> b!4928410 (=> (not res!2103293) (not e!3079192))))

(assert (=> b!4928410 (= res!2103293 (not (isEmpty!30583 (left!41344 (_1!33902 lt!2027728)))))))

(declare-fun b!4928411 () Bool)

(declare-fun res!2103290 () Bool)

(assert (=> b!4928411 (=> (not res!2103290) (not e!3079192))))

(assert (=> b!4928411 (= res!2103290 (isBalanced!4089 (right!41674 (_1!33902 lt!2027728))))))

(declare-fun b!4928412 () Bool)

(declare-fun e!3079191 () Bool)

(assert (=> b!4928412 (= e!3079191 e!3079192)))

(declare-fun res!2103289 () Bool)

(assert (=> b!4928412 (=> (not res!2103289) (not e!3079192))))

(assert (=> b!4928412 (= res!2103289 (<= (- 1) (- (height!1986 (left!41344 (_1!33902 lt!2027728))) (height!1986 (right!41674 (_1!33902 lt!2027728))))))))

(declare-fun d!1586483 () Bool)

(declare-fun res!2103292 () Bool)

(assert (=> d!1586483 (=> res!2103292 e!3079191)))

(assert (=> d!1586483 (= res!2103292 (not ((_ is Node!14876) (_1!33902 lt!2027728))))))

(assert (=> d!1586483 (= (isBalanced!4089 (_1!33902 lt!2027728)) e!3079191)))

(declare-fun b!4928413 () Bool)

(assert (=> b!4928413 (= e!3079192 (not (isEmpty!30583 (right!41674 (_1!33902 lt!2027728)))))))

(assert (= (and d!1586483 (not res!2103292)) b!4928412))

(assert (= (and b!4928412 res!2103289) b!4928409))

(assert (= (and b!4928409 res!2103294) b!4928408))

(assert (= (and b!4928408 res!2103291) b!4928411))

(assert (= (and b!4928411 res!2103290) b!4928410))

(assert (= (and b!4928410 res!2103293) b!4928413))

(declare-fun m!5947650 () Bool)

(assert (=> b!4928410 m!5947650))

(declare-fun m!5947652 () Bool)

(assert (=> b!4928411 m!5947652))

(declare-fun m!5947654 () Bool)

(assert (=> b!4928409 m!5947654))

(declare-fun m!5947656 () Bool)

(assert (=> b!4928409 m!5947656))

(assert (=> b!4928412 m!5947654))

(assert (=> b!4928412 m!5947656))

(declare-fun m!5947658 () Bool)

(assert (=> b!4928413 m!5947658))

(declare-fun m!5947660 () Bool)

(assert (=> b!4928408 m!5947660))

(assert (=> d!1585663 d!1586483))

(assert (=> d!1585663 d!1585757))

(declare-fun d!1586485 () Bool)

(assert (=> d!1586485 (= lt!2026995 lt!2027317)))

(assert (=> d!1586485 true))

(declare-fun _$63!1185 () Unit!147242)

(assert (=> d!1586485 (= (choose!36092 Nil!56697 lt!2026995 Nil!56697 lt!2027317 (list!17959 input!5492)) _$63!1185)))

(assert (=> d!1585777 d!1586485))

(declare-fun b!4928417 () Bool)

(declare-fun e!3079195 () Bool)

(assert (=> b!4928417 (= e!3079195 (>= (size!37489 (list!17959 input!5492)) (size!37489 Nil!56697)))))

(declare-fun d!1586487 () Bool)

(assert (=> d!1586487 e!3079195))

(declare-fun res!2103295 () Bool)

(assert (=> d!1586487 (=> res!2103295 e!3079195)))

(declare-fun lt!2028304 () Bool)

(assert (=> d!1586487 (= res!2103295 (not lt!2028304))))

(declare-fun e!3079194 () Bool)

(assert (=> d!1586487 (= lt!2028304 e!3079194)))

(declare-fun res!2103297 () Bool)

(assert (=> d!1586487 (=> res!2103297 e!3079194)))

(assert (=> d!1586487 (= res!2103297 ((_ is Nil!56697) Nil!56697))))

(assert (=> d!1586487 (= (isPrefix!4965 Nil!56697 (list!17959 input!5492)) lt!2028304)))

(declare-fun b!4928415 () Bool)

(declare-fun res!2103296 () Bool)

(declare-fun e!3079193 () Bool)

(assert (=> b!4928415 (=> (not res!2103296) (not e!3079193))))

(assert (=> b!4928415 (= res!2103296 (= (head!10524 Nil!56697) (head!10524 (list!17959 input!5492))))))

(declare-fun b!4928414 () Bool)

(assert (=> b!4928414 (= e!3079194 e!3079193)))

(declare-fun res!2103298 () Bool)

(assert (=> b!4928414 (=> (not res!2103298) (not e!3079193))))

(assert (=> b!4928414 (= res!2103298 (not ((_ is Nil!56697) (list!17959 input!5492))))))

(declare-fun b!4928416 () Bool)

(assert (=> b!4928416 (= e!3079193 (isPrefix!4965 (tail!9671 Nil!56697) (tail!9671 (list!17959 input!5492))))))

(assert (= (and d!1586487 (not res!2103297)) b!4928414))

(assert (= (and b!4928414 res!2103298) b!4928415))

(assert (= (and b!4928415 res!2103296) b!4928416))

(assert (= (and d!1586487 (not res!2103295)) b!4928417))

(assert (=> b!4928417 m!5944346))

(assert (=> b!4928417 m!5944632))

(assert (=> b!4928417 m!5944576))

(assert (=> b!4928415 m!5945062))

(assert (=> b!4928415 m!5944346))

(assert (=> b!4928415 m!5947076))

(assert (=> b!4928416 m!5945066))

(assert (=> b!4928416 m!5944346))

(assert (=> b!4928416 m!5945626))

(assert (=> b!4928416 m!5945066))

(assert (=> b!4928416 m!5945626))

(declare-fun m!5947662 () Bool)

(assert (=> b!4928416 m!5947662))

(assert (=> d!1585777 d!1586487))

(assert (=> b!4926816 d!1586269))

(declare-fun d!1586489 () Bool)

(declare-fun lt!2028305 () Int)

(assert (=> d!1586489 (>= lt!2028305 0)))

(declare-fun e!3079196 () Int)

(assert (=> d!1586489 (= lt!2028305 e!3079196)))

(declare-fun c!839745 () Bool)

(assert (=> d!1586489 (= c!839745 ((_ is Nil!56697) (++!12330 Nil!56697 (Cons!56697 (head!10524 (getSuffix!2953 lt!2027335 Nil!56697)) Nil!56697))))))

(assert (=> d!1586489 (= (size!37489 (++!12330 Nil!56697 (Cons!56697 (head!10524 (getSuffix!2953 lt!2027335 Nil!56697)) Nil!56697))) lt!2028305)))

(declare-fun b!4928418 () Bool)

(assert (=> b!4928418 (= e!3079196 0)))

(declare-fun b!4928419 () Bool)

(assert (=> b!4928419 (= e!3079196 (+ 1 (size!37489 (t!367283 (++!12330 Nil!56697 (Cons!56697 (head!10524 (getSuffix!2953 lt!2027335 Nil!56697)) Nil!56697))))))))

(assert (= (and d!1586489 c!839745) b!4928418))

(assert (= (and d!1586489 (not c!839745)) b!4928419))

(declare-fun m!5947664 () Bool)

(assert (=> b!4928419 m!5947664))

(assert (=> b!4926816 d!1586489))

(declare-fun b!4928423 () Bool)

(declare-fun e!3079199 () Bool)

(assert (=> b!4928423 (= e!3079199 (>= (size!37489 (tail!9671 lt!2026995)) (size!37489 (tail!9671 lt!2026995))))))

(declare-fun d!1586491 () Bool)

(assert (=> d!1586491 e!3079199))

(declare-fun res!2103299 () Bool)

(assert (=> d!1586491 (=> res!2103299 e!3079199)))

(declare-fun lt!2028306 () Bool)

(assert (=> d!1586491 (= res!2103299 (not lt!2028306))))

(declare-fun e!3079198 () Bool)

(assert (=> d!1586491 (= lt!2028306 e!3079198)))

(declare-fun res!2103301 () Bool)

(assert (=> d!1586491 (=> res!2103301 e!3079198)))

(assert (=> d!1586491 (= res!2103301 ((_ is Nil!56697) (tail!9671 lt!2026995)))))

(assert (=> d!1586491 (= (isPrefix!4965 (tail!9671 lt!2026995) (tail!9671 lt!2026995)) lt!2028306)))

(declare-fun b!4928421 () Bool)

(declare-fun res!2103300 () Bool)

(declare-fun e!3079197 () Bool)

(assert (=> b!4928421 (=> (not res!2103300) (not e!3079197))))

(assert (=> b!4928421 (= res!2103300 (= (head!10524 (tail!9671 lt!2026995)) (head!10524 (tail!9671 lt!2026995))))))

(declare-fun b!4928420 () Bool)

(assert (=> b!4928420 (= e!3079198 e!3079197)))

(declare-fun res!2103302 () Bool)

(assert (=> b!4928420 (=> (not res!2103302) (not e!3079197))))

(assert (=> b!4928420 (= res!2103302 (not ((_ is Nil!56697) (tail!9671 lt!2026995))))))

(declare-fun b!4928422 () Bool)

(assert (=> b!4928422 (= e!3079197 (isPrefix!4965 (tail!9671 (tail!9671 lt!2026995)) (tail!9671 (tail!9671 lt!2026995))))))

(assert (= (and d!1586491 (not res!2103301)) b!4928420))

(assert (= (and b!4928420 res!2103302) b!4928421))

(assert (= (and b!4928421 res!2103300) b!4928422))

(assert (= (and d!1586491 (not res!2103299)) b!4928423))

(assert (=> b!4928423 m!5944554))

(assert (=> b!4928423 m!5946282))

(assert (=> b!4928423 m!5944554))

(assert (=> b!4928423 m!5946282))

(assert (=> b!4928421 m!5944554))

(assert (=> b!4928421 m!5946288))

(assert (=> b!4928421 m!5944554))

(assert (=> b!4928421 m!5946288))

(assert (=> b!4928422 m!5944554))

(assert (=> b!4928422 m!5946292))

(assert (=> b!4928422 m!5944554))

(assert (=> b!4928422 m!5946292))

(assert (=> b!4928422 m!5946292))

(assert (=> b!4928422 m!5946292))

(declare-fun m!5947666 () Bool)

(assert (=> b!4928422 m!5947666))

(assert (=> b!4927325 d!1586491))

(assert (=> b!4927325 d!1585509))

(assert (=> bm!343709 d!1585509))

(assert (=> d!1585517 d!1585501))

(assert (=> d!1585517 d!1585533))

(assert (=> d!1585517 d!1585503))

(declare-fun d!1586493 () Bool)

(assert (=> d!1586493 (isPrefix!4965 (++!12330 Nil!56697 (Cons!56697 (head!10524 (getSuffix!2953 lt!2027335 Nil!56697)) Nil!56697)) lt!2027335)))

(assert (=> d!1586493 true))

(declare-fun _$65!1702 () Unit!147242)

(assert (=> d!1586493 (= (choose!36087 Nil!56697 lt!2027335) _$65!1702)))

(declare-fun bs!1180021 () Bool)

(assert (= bs!1180021 d!1586493))

(assert (=> bs!1180021 m!5944552))

(assert (=> bs!1180021 m!5944552))

(assert (=> bs!1180021 m!5944558))

(assert (=> bs!1180021 m!5944572))

(assert (=> bs!1180021 m!5944572))

(assert (=> bs!1180021 m!5944574))

(assert (=> d!1585517 d!1586493))

(assert (=> d!1585517 d!1585541))

(declare-fun b!4928427 () Bool)

(declare-fun e!3079202 () Bool)

(assert (=> b!4928427 (= e!3079202 (>= (size!37489 lt!2027335) (size!37489 Nil!56697)))))

(declare-fun d!1586495 () Bool)

(assert (=> d!1586495 e!3079202))

(declare-fun res!2103303 () Bool)

(assert (=> d!1586495 (=> res!2103303 e!3079202)))

(declare-fun lt!2028307 () Bool)

(assert (=> d!1586495 (= res!2103303 (not lt!2028307))))

(declare-fun e!3079201 () Bool)

(assert (=> d!1586495 (= lt!2028307 e!3079201)))

(declare-fun res!2103305 () Bool)

(assert (=> d!1586495 (=> res!2103305 e!3079201)))

(assert (=> d!1586495 (= res!2103305 ((_ is Nil!56697) Nil!56697))))

(assert (=> d!1586495 (= (isPrefix!4965 Nil!56697 lt!2027335) lt!2028307)))

(declare-fun b!4928425 () Bool)

(declare-fun res!2103304 () Bool)

(declare-fun e!3079200 () Bool)

(assert (=> b!4928425 (=> (not res!2103304) (not e!3079200))))

(assert (=> b!4928425 (= res!2103304 (= (head!10524 Nil!56697) (head!10524 lt!2027335)))))

(declare-fun b!4928424 () Bool)

(assert (=> b!4928424 (= e!3079201 e!3079200)))

(declare-fun res!2103306 () Bool)

(assert (=> b!4928424 (=> (not res!2103306) (not e!3079200))))

(assert (=> b!4928424 (= res!2103306 (not ((_ is Nil!56697) lt!2027335)))))

(declare-fun b!4928426 () Bool)

(assert (=> b!4928426 (= e!3079200 (isPrefix!4965 (tail!9671 Nil!56697) (tail!9671 lt!2027335)))))

(assert (= (and d!1586495 (not res!2103305)) b!4928424))

(assert (= (and b!4928424 res!2103306) b!4928425))

(assert (= (and b!4928425 res!2103304) b!4928426))

(assert (= (and d!1586495 (not res!2103303)) b!4928427))

(assert (=> b!4928427 m!5944728))

(assert (=> b!4928427 m!5944576))

(assert (=> b!4928425 m!5945062))

(assert (=> b!4928425 m!5944884))

(assert (=> b!4928426 m!5945066))

(assert (=> b!4928426 m!5944730))

(assert (=> b!4928426 m!5945066))

(assert (=> b!4928426 m!5944730))

(declare-fun m!5947668 () Bool)

(assert (=> b!4928426 m!5947668))

(assert (=> d!1585517 d!1586495))

(declare-fun d!1586497 () Bool)

(assert (=> d!1586497 (= (list!17963 (xs!18198 (c!839087 (_1!33900 lt!2026997)))) (innerList!14964 (xs!18198 (c!839087 (_1!33900 lt!2026997)))))))

(assert (=> b!4927349 d!1586497))

(declare-fun d!1586499 () Bool)

(declare-fun res!2103307 () Bool)

(declare-fun e!3079203 () Bool)

(assert (=> d!1586499 (=> res!2103307 e!3079203)))

(assert (=> d!1586499 (= res!2103307 ((_ is Nil!56698) (exprs!3519 setElem!27556)))))

(assert (=> d!1586499 (= (forall!13140 (exprs!3519 setElem!27556) lambda!245323) e!3079203)))

(declare-fun b!4928428 () Bool)

(declare-fun e!3079204 () Bool)

(assert (=> b!4928428 (= e!3079203 e!3079204)))

(declare-fun res!2103308 () Bool)

(assert (=> b!4928428 (=> (not res!2103308) (not e!3079204))))

(assert (=> b!4928428 (= res!2103308 (dynLambda!23011 lambda!245323 (h!63146 (exprs!3519 setElem!27556))))))

(declare-fun b!4928429 () Bool)

(assert (=> b!4928429 (= e!3079204 (forall!13140 (t!367284 (exprs!3519 setElem!27556)) lambda!245323))))

(assert (= (and d!1586499 (not res!2103307)) b!4928428))

(assert (= (and b!4928428 res!2103308) b!4928429))

(declare-fun b_lambda!196307 () Bool)

(assert (=> (not b_lambda!196307) (not b!4928428)))

(declare-fun m!5947670 () Bool)

(assert (=> b!4928428 m!5947670))

(declare-fun m!5947672 () Bool)

(assert (=> b!4928429 m!5947672))

(assert (=> d!1585805 d!1586499))

(declare-fun e!3079205 () Bool)

(assert (=> b!4927437 (= tp!1383658 e!3079205)))

(declare-fun b!4928431 () Bool)

(declare-fun tp!1383698 () Bool)

(declare-fun tp!1383700 () Bool)

(assert (=> b!4928431 (= e!3079205 (and tp!1383698 tp!1383700))))

(declare-fun b!4928433 () Bool)

(declare-fun tp!1383697 () Bool)

(declare-fun tp!1383696 () Bool)

(assert (=> b!4928433 (= e!3079205 (and tp!1383697 tp!1383696))))

(declare-fun b!4928432 () Bool)

(declare-fun tp!1383699 () Bool)

(assert (=> b!4928432 (= e!3079205 tp!1383699)))

(declare-fun b!4928430 () Bool)

(assert (=> b!4928430 (= e!3079205 tp_is_empty!35913)))

(assert (= (and b!4927437 ((_ is ElementMatch!13377) (regOne!27267 (h!63146 (exprs!3519 setElem!27550))))) b!4928430))

(assert (= (and b!4927437 ((_ is Concat!21950) (regOne!27267 (h!63146 (exprs!3519 setElem!27550))))) b!4928431))

(assert (= (and b!4927437 ((_ is Star!13377) (regOne!27267 (h!63146 (exprs!3519 setElem!27550))))) b!4928432))

(assert (= (and b!4927437 ((_ is Union!13377) (regOne!27267 (h!63146 (exprs!3519 setElem!27550))))) b!4928433))

(declare-fun e!3079206 () Bool)

(assert (=> b!4927437 (= tp!1383657 e!3079206)))

(declare-fun b!4928435 () Bool)

(declare-fun tp!1383703 () Bool)

(declare-fun tp!1383705 () Bool)

(assert (=> b!4928435 (= e!3079206 (and tp!1383703 tp!1383705))))

(declare-fun b!4928437 () Bool)

(declare-fun tp!1383702 () Bool)

(declare-fun tp!1383701 () Bool)

(assert (=> b!4928437 (= e!3079206 (and tp!1383702 tp!1383701))))

(declare-fun b!4928436 () Bool)

(declare-fun tp!1383704 () Bool)

(assert (=> b!4928436 (= e!3079206 tp!1383704)))

(declare-fun b!4928434 () Bool)

(assert (=> b!4928434 (= e!3079206 tp_is_empty!35913)))

(assert (= (and b!4927437 ((_ is ElementMatch!13377) (regTwo!27267 (h!63146 (exprs!3519 setElem!27550))))) b!4928434))

(assert (= (and b!4927437 ((_ is Concat!21950) (regTwo!27267 (h!63146 (exprs!3519 setElem!27550))))) b!4928435))

(assert (= (and b!4927437 ((_ is Star!13377) (regTwo!27267 (h!63146 (exprs!3519 setElem!27550))))) b!4928436))

(assert (= (and b!4927437 ((_ is Union!13377) (regTwo!27267 (h!63146 (exprs!3519 setElem!27550))))) b!4928437))

(declare-fun b!4928438 () Bool)

(declare-fun e!3079207 () Bool)

(declare-fun tp!1383706 () Bool)

(assert (=> b!4928438 (= e!3079207 (and tp_is_empty!35913 tp!1383706))))

(assert (=> b!4927403 (= tp!1383639 e!3079207)))

(assert (= (and b!4927403 ((_ is Cons!56697) (innerList!14964 (xs!18198 (left!41344 (c!839087 input!5492)))))) b!4928438))

(declare-fun e!3079208 () Bool)

(assert (=> b!4927409 (= tp!1383645 e!3079208)))

(declare-fun b!4928440 () Bool)

(declare-fun tp!1383709 () Bool)

(declare-fun tp!1383711 () Bool)

(assert (=> b!4928440 (= e!3079208 (and tp!1383709 tp!1383711))))

(declare-fun b!4928442 () Bool)

(declare-fun tp!1383708 () Bool)

(declare-fun tp!1383707 () Bool)

(assert (=> b!4928442 (= e!3079208 (and tp!1383708 tp!1383707))))

(declare-fun b!4928441 () Bool)

(declare-fun tp!1383710 () Bool)

(assert (=> b!4928441 (= e!3079208 tp!1383710)))

(declare-fun b!4928439 () Bool)

(assert (=> b!4928439 (= e!3079208 tp_is_empty!35913)))

(assert (= (and b!4927409 ((_ is ElementMatch!13377) (h!63146 (exprs!3519 setElem!27556)))) b!4928439))

(assert (= (and b!4927409 ((_ is Concat!21950) (h!63146 (exprs!3519 setElem!27556)))) b!4928440))

(assert (= (and b!4927409 ((_ is Star!13377) (h!63146 (exprs!3519 setElem!27556)))) b!4928441))

(assert (= (and b!4927409 ((_ is Union!13377) (h!63146 (exprs!3519 setElem!27556)))) b!4928442))

(declare-fun b!4928443 () Bool)

(declare-fun e!3079209 () Bool)

(declare-fun tp!1383712 () Bool)

(declare-fun tp!1383713 () Bool)

(assert (=> b!4928443 (= e!3079209 (and tp!1383712 tp!1383713))))

(assert (=> b!4927409 (= tp!1383646 e!3079209)))

(assert (= (and b!4927409 ((_ is Cons!56698) (t!367284 (exprs!3519 setElem!27556)))) b!4928443))

(declare-fun e!3079211 () Bool)

(declare-fun b!4928444 () Bool)

(declare-fun tp!1383716 () Bool)

(declare-fun tp!1383715 () Bool)

(assert (=> b!4928444 (= e!3079211 (and (inv!73492 (left!41344 (left!41344 (right!41674 (c!839087 input!5492))))) tp!1383715 (inv!73492 (right!41674 (left!41344 (right!41674 (c!839087 input!5492))))) tp!1383716))))

(declare-fun b!4928446 () Bool)

(declare-fun e!3079210 () Bool)

(declare-fun tp!1383714 () Bool)

(assert (=> b!4928446 (= e!3079210 tp!1383714)))

(declare-fun b!4928445 () Bool)

(assert (=> b!4928445 (= e!3079211 (and (inv!73500 (xs!18198 (left!41344 (right!41674 (c!839087 input!5492))))) e!3079210))))

(assert (=> b!4927404 (= tp!1383643 (and (inv!73492 (left!41344 (right!41674 (c!839087 input!5492)))) e!3079211))))

(assert (= (and b!4927404 ((_ is Node!14876) (left!41344 (right!41674 (c!839087 input!5492))))) b!4928444))

(assert (= b!4928445 b!4928446))

(assert (= (and b!4927404 ((_ is Leaf!24747) (left!41344 (right!41674 (c!839087 input!5492))))) b!4928445))

(declare-fun m!5947674 () Bool)

(assert (=> b!4928444 m!5947674))

(declare-fun m!5947676 () Bool)

(assert (=> b!4928444 m!5947676))

(declare-fun m!5947678 () Bool)

(assert (=> b!4928445 m!5947678))

(assert (=> b!4927404 m!5945876))

(declare-fun tp!1383718 () Bool)

(declare-fun tp!1383719 () Bool)

(declare-fun e!3079213 () Bool)

(declare-fun b!4928447 () Bool)

(assert (=> b!4928447 (= e!3079213 (and (inv!73492 (left!41344 (right!41674 (right!41674 (c!839087 input!5492))))) tp!1383718 (inv!73492 (right!41674 (right!41674 (right!41674 (c!839087 input!5492))))) tp!1383719))))

(declare-fun b!4928449 () Bool)

(declare-fun e!3079212 () Bool)

(declare-fun tp!1383717 () Bool)

(assert (=> b!4928449 (= e!3079212 tp!1383717)))

(declare-fun b!4928448 () Bool)

(assert (=> b!4928448 (= e!3079213 (and (inv!73500 (xs!18198 (right!41674 (right!41674 (c!839087 input!5492))))) e!3079212))))

(assert (=> b!4927404 (= tp!1383644 (and (inv!73492 (right!41674 (right!41674 (c!839087 input!5492)))) e!3079213))))

(assert (= (and b!4927404 ((_ is Node!14876) (right!41674 (right!41674 (c!839087 input!5492))))) b!4928447))

(assert (= b!4928448 b!4928449))

(assert (= (and b!4927404 ((_ is Leaf!24747) (right!41674 (right!41674 (c!839087 input!5492))))) b!4928448))

(declare-fun m!5947680 () Bool)

(assert (=> b!4928447 m!5947680))

(declare-fun m!5947682 () Bool)

(assert (=> b!4928447 m!5947682))

(declare-fun m!5947684 () Bool)

(assert (=> b!4928448 m!5947684))

(assert (=> b!4927404 m!5945878))

(declare-fun condSetEmpty!27559 () Bool)

(assert (=> setNonEmpty!27557 (= condSetEmpty!27559 (= setRest!27557 ((as const (Array Context!6038 Bool)) false)))))

(declare-fun setRes!27559 () Bool)

(assert (=> setNonEmpty!27557 (= tp!1383664 setRes!27559)))

(declare-fun setIsEmpty!27559 () Bool)

(assert (=> setIsEmpty!27559 setRes!27559))

(declare-fun setElem!27559 () Context!6038)

(declare-fun e!3079214 () Bool)

(declare-fun tp!1383720 () Bool)

(declare-fun setNonEmpty!27559 () Bool)

(assert (=> setNonEmpty!27559 (= setRes!27559 (and tp!1383720 (inv!73493 setElem!27559) e!3079214))))

(declare-fun setRest!27559 () (InoxSet Context!6038))

(assert (=> setNonEmpty!27559 (= setRest!27557 ((_ map or) (store ((as const (Array Context!6038 Bool)) false) setElem!27559 true) setRest!27559))))

(declare-fun b!4928450 () Bool)

(declare-fun tp!1383721 () Bool)

(assert (=> b!4928450 (= e!3079214 tp!1383721)))

(assert (= (and setNonEmpty!27557 condSetEmpty!27559) setIsEmpty!27559))

(assert (= (and setNonEmpty!27557 (not condSetEmpty!27559)) setNonEmpty!27559))

(assert (= setNonEmpty!27559 b!4928450))

(declare-fun m!5947686 () Bool)

(assert (=> setNonEmpty!27559 m!5947686))

(declare-fun b!4928451 () Bool)

(declare-fun e!3079215 () Bool)

(declare-fun tp!1383722 () Bool)

(assert (=> b!4928451 (= e!3079215 (and tp_is_empty!35913 tp!1383722))))

(assert (=> b!4927400 (= tp!1383638 e!3079215)))

(assert (= (and b!4927400 ((_ is Cons!56697) (t!367283 (innerList!14964 (xs!18198 (c!839087 input!5492)))))) b!4928451))

(declare-fun b!4928452 () Bool)

(declare-fun e!3079216 () Bool)

(declare-fun tp!1383723 () Bool)

(declare-fun tp!1383724 () Bool)

(assert (=> b!4928452 (= e!3079216 (and tp!1383723 tp!1383724))))

(assert (=> b!4927439 (= tp!1383665 e!3079216)))

(assert (= (and b!4927439 ((_ is Cons!56698) (exprs!3519 setElem!27557))) b!4928452))

(declare-fun b!4928453 () Bool)

(declare-fun e!3079217 () Bool)

(declare-fun tp!1383725 () Bool)

(assert (=> b!4928453 (= e!3079217 (and tp_is_empty!35913 tp!1383725))))

(assert (=> b!4927406 (= tp!1383642 e!3079217)))

(assert (= (and b!4927406 ((_ is Cons!56697) (innerList!14964 (xs!18198 (right!41674 (c!839087 input!5492)))))) b!4928453))

(declare-fun e!3079218 () Bool)

(assert (=> b!4927438 (= tp!1383662 e!3079218)))

(declare-fun b!4928455 () Bool)

(declare-fun tp!1383728 () Bool)

(declare-fun tp!1383730 () Bool)

(assert (=> b!4928455 (= e!3079218 (and tp!1383728 tp!1383730))))

(declare-fun b!4928457 () Bool)

(declare-fun tp!1383727 () Bool)

(declare-fun tp!1383726 () Bool)

(assert (=> b!4928457 (= e!3079218 (and tp!1383727 tp!1383726))))

(declare-fun b!4928456 () Bool)

(declare-fun tp!1383729 () Bool)

(assert (=> b!4928456 (= e!3079218 tp!1383729)))

(declare-fun b!4928454 () Bool)

(assert (=> b!4928454 (= e!3079218 tp_is_empty!35913)))

(assert (= (and b!4927438 ((_ is ElementMatch!13377) (h!63146 (t!367284 (exprs!3519 setElem!27550))))) b!4928454))

(assert (= (and b!4927438 ((_ is Concat!21950) (h!63146 (t!367284 (exprs!3519 setElem!27550))))) b!4928455))

(assert (= (and b!4927438 ((_ is Star!13377) (h!63146 (t!367284 (exprs!3519 setElem!27550))))) b!4928456))

(assert (= (and b!4927438 ((_ is Union!13377) (h!63146 (t!367284 (exprs!3519 setElem!27550))))) b!4928457))

(declare-fun b!4928458 () Bool)

(declare-fun e!3079219 () Bool)

(declare-fun tp!1383731 () Bool)

(declare-fun tp!1383732 () Bool)

(assert (=> b!4928458 (= e!3079219 (and tp!1383731 tp!1383732))))

(assert (=> b!4927438 (= tp!1383663 e!3079219)))

(assert (= (and b!4927438 ((_ is Cons!56698) (t!367284 (t!367284 (exprs!3519 setElem!27550))))) b!4928458))

(declare-fun e!3079220 () Bool)

(assert (=> b!4927435 (= tp!1383659 e!3079220)))

(declare-fun b!4928460 () Bool)

(declare-fun tp!1383735 () Bool)

(declare-fun tp!1383737 () Bool)

(assert (=> b!4928460 (= e!3079220 (and tp!1383735 tp!1383737))))

(declare-fun b!4928462 () Bool)

(declare-fun tp!1383734 () Bool)

(declare-fun tp!1383733 () Bool)

(assert (=> b!4928462 (= e!3079220 (and tp!1383734 tp!1383733))))

(declare-fun b!4928461 () Bool)

(declare-fun tp!1383736 () Bool)

(assert (=> b!4928461 (= e!3079220 tp!1383736)))

(declare-fun b!4928459 () Bool)

(assert (=> b!4928459 (= e!3079220 tp_is_empty!35913)))

(assert (= (and b!4927435 ((_ is ElementMatch!13377) (regOne!27266 (h!63146 (exprs!3519 setElem!27550))))) b!4928459))

(assert (= (and b!4927435 ((_ is Concat!21950) (regOne!27266 (h!63146 (exprs!3519 setElem!27550))))) b!4928460))

(assert (= (and b!4927435 ((_ is Star!13377) (regOne!27266 (h!63146 (exprs!3519 setElem!27550))))) b!4928461))

(assert (= (and b!4927435 ((_ is Union!13377) (regOne!27266 (h!63146 (exprs!3519 setElem!27550))))) b!4928462))

(declare-fun e!3079221 () Bool)

(assert (=> b!4927435 (= tp!1383661 e!3079221)))

(declare-fun b!4928464 () Bool)

(declare-fun tp!1383740 () Bool)

(declare-fun tp!1383742 () Bool)

(assert (=> b!4928464 (= e!3079221 (and tp!1383740 tp!1383742))))

(declare-fun b!4928466 () Bool)

(declare-fun tp!1383739 () Bool)

(declare-fun tp!1383738 () Bool)

(assert (=> b!4928466 (= e!3079221 (and tp!1383739 tp!1383738))))

(declare-fun b!4928465 () Bool)

(declare-fun tp!1383741 () Bool)

(assert (=> b!4928465 (= e!3079221 tp!1383741)))

(declare-fun b!4928463 () Bool)

(assert (=> b!4928463 (= e!3079221 tp_is_empty!35913)))

(assert (= (and b!4927435 ((_ is ElementMatch!13377) (regTwo!27266 (h!63146 (exprs!3519 setElem!27550))))) b!4928463))

(assert (= (and b!4927435 ((_ is Concat!21950) (regTwo!27266 (h!63146 (exprs!3519 setElem!27550))))) b!4928464))

(assert (= (and b!4927435 ((_ is Star!13377) (regTwo!27266 (h!63146 (exprs!3519 setElem!27550))))) b!4928465))

(assert (= (and b!4927435 ((_ is Union!13377) (regTwo!27266 (h!63146 (exprs!3519 setElem!27550))))) b!4928466))

(declare-fun tp!1383745 () Bool)

(declare-fun b!4928467 () Bool)

(declare-fun tp!1383744 () Bool)

(declare-fun e!3079223 () Bool)

(assert (=> b!4928467 (= e!3079223 (and (inv!73492 (left!41344 (left!41344 (left!41344 (c!839087 input!5492))))) tp!1383744 (inv!73492 (right!41674 (left!41344 (left!41344 (c!839087 input!5492))))) tp!1383745))))

(declare-fun b!4928469 () Bool)

(declare-fun e!3079222 () Bool)

(declare-fun tp!1383743 () Bool)

(assert (=> b!4928469 (= e!3079222 tp!1383743)))

(declare-fun b!4928468 () Bool)

(assert (=> b!4928468 (= e!3079223 (and (inv!73500 (xs!18198 (left!41344 (left!41344 (c!839087 input!5492))))) e!3079222))))

(assert (=> b!4927401 (= tp!1383640 (and (inv!73492 (left!41344 (left!41344 (c!839087 input!5492)))) e!3079223))))

(assert (= (and b!4927401 ((_ is Node!14876) (left!41344 (left!41344 (c!839087 input!5492))))) b!4928467))

(assert (= b!4928468 b!4928469))

(assert (= (and b!4927401 ((_ is Leaf!24747) (left!41344 (left!41344 (c!839087 input!5492))))) b!4928468))

(declare-fun m!5947688 () Bool)

(assert (=> b!4928467 m!5947688))

(declare-fun m!5947690 () Bool)

(assert (=> b!4928467 m!5947690))

(declare-fun m!5947692 () Bool)

(assert (=> b!4928468 m!5947692))

(assert (=> b!4927401 m!5945870))

(declare-fun e!3079225 () Bool)

(declare-fun b!4928470 () Bool)

(declare-fun tp!1383747 () Bool)

(declare-fun tp!1383748 () Bool)

(assert (=> b!4928470 (= e!3079225 (and (inv!73492 (left!41344 (right!41674 (left!41344 (c!839087 input!5492))))) tp!1383747 (inv!73492 (right!41674 (right!41674 (left!41344 (c!839087 input!5492))))) tp!1383748))))

(declare-fun b!4928472 () Bool)

(declare-fun e!3079224 () Bool)

(declare-fun tp!1383746 () Bool)

(assert (=> b!4928472 (= e!3079224 tp!1383746)))

(declare-fun b!4928471 () Bool)

(assert (=> b!4928471 (= e!3079225 (and (inv!73500 (xs!18198 (right!41674 (left!41344 (c!839087 input!5492))))) e!3079224))))

(assert (=> b!4927401 (= tp!1383641 (and (inv!73492 (right!41674 (left!41344 (c!839087 input!5492)))) e!3079225))))

(assert (= (and b!4927401 ((_ is Node!14876) (right!41674 (left!41344 (c!839087 input!5492))))) b!4928470))

(assert (= b!4928471 b!4928472))

(assert (= (and b!4927401 ((_ is Leaf!24747) (right!41674 (left!41344 (c!839087 input!5492))))) b!4928471))

(declare-fun m!5947694 () Bool)

(assert (=> b!4928470 m!5947694))

(declare-fun m!5947696 () Bool)

(assert (=> b!4928470 m!5947696))

(declare-fun m!5947698 () Bool)

(assert (=> b!4928471 m!5947698))

(assert (=> b!4927401 m!5945872))

(declare-fun e!3079226 () Bool)

(assert (=> b!4927436 (= tp!1383660 e!3079226)))

(declare-fun b!4928474 () Bool)

(declare-fun tp!1383751 () Bool)

(declare-fun tp!1383753 () Bool)

(assert (=> b!4928474 (= e!3079226 (and tp!1383751 tp!1383753))))

(declare-fun b!4928476 () Bool)

(declare-fun tp!1383750 () Bool)

(declare-fun tp!1383749 () Bool)

(assert (=> b!4928476 (= e!3079226 (and tp!1383750 tp!1383749))))

(declare-fun b!4928475 () Bool)

(declare-fun tp!1383752 () Bool)

(assert (=> b!4928475 (= e!3079226 tp!1383752)))

(declare-fun b!4928473 () Bool)

(assert (=> b!4928473 (= e!3079226 tp_is_empty!35913)))

(assert (= (and b!4927436 ((_ is ElementMatch!13377) (reg!13706 (h!63146 (exprs!3519 setElem!27550))))) b!4928473))

(assert (= (and b!4927436 ((_ is Concat!21950) (reg!13706 (h!63146 (exprs!3519 setElem!27550))))) b!4928474))

(assert (= (and b!4927436 ((_ is Star!13377) (reg!13706 (h!63146 (exprs!3519 setElem!27550))))) b!4928475))

(assert (= (and b!4927436 ((_ is Union!13377) (reg!13706 (h!63146 (exprs!3519 setElem!27550))))) b!4928476))

(declare-fun b_lambda!196309 () Bool)

(assert (= b_lambda!196307 (or d!1585805 b_lambda!196309)))

(declare-fun bs!1180022 () Bool)

(declare-fun d!1586501 () Bool)

(assert (= bs!1180022 (and d!1586501 d!1585805)))

(assert (=> bs!1180022 (= (dynLambda!23011 lambda!245323 (h!63146 (exprs!3519 setElem!27556))) (validRegex!5945 (h!63146 (exprs!3519 setElem!27556))))))

(declare-fun m!5947700 () Bool)

(assert (=> bs!1180022 m!5947700))

(assert (=> b!4928428 d!1586501))

(declare-fun b_lambda!196311 () Bool)

(assert (= b_lambda!196305 (or d!1585443 b_lambda!196311)))

(declare-fun bs!1180023 () Bool)

(declare-fun d!1586503 () Bool)

(assert (= bs!1180023 (and d!1586503 d!1585443)))

(assert (=> bs!1180023 (= (dynLambda!23011 lambda!245281 (h!63146 (t!367284 (exprs!3519 setElem!27550)))) (validRegex!5945 (h!63146 (t!367284 (exprs!3519 setElem!27550)))))))

(declare-fun m!5947702 () Bool)

(assert (=> bs!1180023 m!5947702))

(assert (=> b!4927894 d!1586503))

(check-sat (not bm!343760) (not b!4928405) (not d!1586367) (not d!1586439) (not b!4927983) (not b!4928421) (not b!4928415) (not b!4927791) (not bm!343807) (not d!1586003) (not b!4928213) (not b!4928341) (not b!4928467) (not b!4928261) (not d!1586427) (not b!4927877) (not b!4928331) (not b!4927784) (not b!4927779) (not b!4927915) (not b!4928202) (not b!4928069) (not b!4927812) (not b!4928470) (not d!1586215) (not d!1586329) (not bm!343808) (not b!4927863) (not b!4927997) (not d!1585889) (not b!4927993) (not b!4928263) (not b!4928250) (not b!4927655) (not b!4928437) (not d!1586041) (not b!4927989) (not b!4928355) tp_is_empty!35913 (not bs!1180022) (not b!4928327) (not b!4928153) (not bm!343861) (not b!4928093) (not b!4927935) (not bm!343879) (not b!4927837) (not b!4927901) (not b!4927686) (not b!4928223) (not b!4928422) (not b!4927856) (not b!4927669) (not d!1586113) (not b!4927843) (not b!4928021) (not b!4928451) (not b!4927880) (not d!1586157) (not b!4927736) (not bm!343770) (not b!4928013) (not d!1586369) (not b!4928107) (not bm!343768) (not b!4927571) (not b!4928088) (not b!4927813) (not b!4927651) (not b!4928444) (not bm!343785) (not b!4927601) (not b!4928464) (not b!4927585) (not b!4927575) (not b!4927776) (not b!4928290) (not d!1586247) (not d!1585913) (not d!1586469) (not bm!343864) (not d!1586227) (not b!4928119) (not b!4927643) (not d!1586359) (not b!4927682) (not b!4927969) (not b!4927697) (not b!4928183) (not b_lambda!196309) (not d!1586163) (not b!4927834) (not b!4927932) (not d!1585959) (not b!4928195) (not b!4927646) (not b!4928136) (not b!4928128) (not b!4928193) (not b!4927735) (not b!4928266) (not b!4928114) (not b!4928458) (not b!4928079) (not d!1585977) (not d!1586407) (not d!1585897) (not b!4928324) (not b!4928147) (not d!1586327) (not b!4927869) (not b!4927876) (not d!1586443) (not b!4928142) (not d!1586481) (not b!4928146) (not d!1586479) (not d!1586055) (not b!4928361) (not d!1586117) (not b!4927795) (not b!4927657) (not d!1586253) (not b!4927793) (not b!4927864) (not b!4927796) (not b!4927936) (not bm!343876) (not b!4927639) (not b!4927844) (not b!4927781) (not b!4927991) (not b!4927649) (not b!4927973) (not b!4928287) (not b!4927810) (not b!4927885) (not bs!1180023) (not d!1586271) (not b!4927903) (not b!4927789) (not b!4928081) (not b!4927572) (not b!4928067) (not b!4927636) (not bm!343868) (not b!4928357) (not b!4927760) (not b!4928301) (not b!4927772) (not b!4928381) (not b!4928288) (not b!4928388) (not b!4928224) (not b!4928403) (not b!4928228) (not b!4928456) (not d!1586285) (not b!4927589) (not b!4927692) (not d!1586423) (not bm!343799) (not bm!343874) (not b!4927905) (not d!1585879) (not d!1586015) (not b!4927808) (not b!4928370) (not b!4928387) (not bm!343781) (not bm!343797) (not b!4928182) (not b!4928106) (not b!4928199) (not b!4927886) (not b!4927684) (not b!4928258) (not b!4927401) (not b!4927712) (not b!4927861) (not b!4927865) (not b!4927873) (not bm!343811) (not d!1586291) (not b!4927860) (not b!4927888) (not b!4928440) (not b!4928323) (not d!1586279) (not bm!343863) (not d!1585887) (not bm!343777) (not d!1586171) (not b!4928457) (not b!4927811) (not d!1586009) (not d!1585867) (not b!4928216) (not b!4928103) (not b!4928157) (not d!1586401) (not b!4927794) (not b!4928359) (not b!4928002) (not bm!343869) (not bm!343767) (not b!4927999) (not d!1586101) (not b!4928226) (not b!4928375) (not b!4928303) (not d!1585989) (not b!4928017) (not b!4928010) (not b!4927727) (not d!1585955) (not b!4928232) (not bm!343865) (not b!4927804) (not b!4928413) (not b!4927846) (not d!1586397) (not d!1586493) (not d!1586399) (not d!1586043) (not b!4928377) (not b!4927653) (not b!4927899) (not b!4928366) (not d!1586219) (not b!4927838) (not d!1586413) (not b!4928313) (not b!4928249) (not b!4928472) (not b!4928019) (not b!4927895) (not d!1586267) (not b!4928475) (not b!4928177) (not b!4927828) (not b!4928438) (not b!4928429) (not d!1586059) (not d!1586173) (not b!4927931) (not d!1586169) (not b!4928293) (not b!4927568) (not b!4928435) (not b!4928348) (not b!4928090) (not b!4927641) (not bm!343776) (not b!4928166) (not d!1586265) (not d!1586131) (not b!4928011) (not b!4927610) (not b!4928343) (not b!4927815) (not b!4928181) (not b!4928150) (not bm!343860) (not d!1586289) (not b!4927688) (not d!1586121) (not b!4928116) (not d!1586051) (not b!4928185) (not b!4928299) (not b!4927979) (not b!4927824) (not b!4927929) (not b!4927702) (not d!1586161) (not b!4927711) (not d!1586133) (not b!4927832) (not d!1585947) (not b!4928187) (not d!1586293) (not b!4928340) (not d!1586193) (not b!4927633) (not d!1586309) (not bm!343855) (not b!4927805) (not b!4927680) (not b!4928320) (not b!4928003) (not b!4928385) (not d!1586409) (not d!1586005) (not d!1586385) (not b!4928246) (not b!4927638) (not b!4928132) (not b!4928244) (not b!4927404) (not b!4928205) (not b!4927854) (not b!4927582) (not b!4928169) (not d!1586071) (not b!4928354) (not b!4928410) (not bm!343772) (not b!4927847) (not b!4928442) (not b!4928446) (not d!1585997) (not b!4927739) (not bm!343761) (not b!4928309) (not b!4928141) (not b!4928431) (not b!4928391) (not b!4928123) (not b!4927701) (not b!4928452) (not b!4927852) (not d!1585877) (not b!4927721) (not b!4928217) (not b!4928445) (not bm!343774) (not b!4928416) (not b!4928110) (not d!1586393) (not b!4928203) (not d!1586153) (not d!1586231) (not b!4928395) (not b!4927909) (not b!4928409) (not b!4927848) (not bm!343852) (not bm!343873) (not bm!343848) (not b!4927975) (not b!4927792) (not b!4928455) (not b!4927713) (not bm!343875) (not b!4927586) (not b!4928219) (not b!4927709) (not d!1586093) (not bm!343801) (not bm!343773) (not b!4927715) (not setNonEmpty!27559) (not d!1586357) (not d!1586119) (not b!4928393) (not b_lambda!196311) (not b!4927897) (not b!4927982) (not d!1586151) (not b!4928407) (not bm!343867) (not d!1586381) (not d!1586111) (not bm!343803) (not b!4927728) (not bm!343845) (not b!4927912) (not b!4928242) (not b!4927635) (not b!4928466) (not b!4927695) (not b!4927770) (not b!4927660) (not d!1586441) (not b!4928092) (not bm!343871) (not d!1585907) (not b!4927581) (not b!4928297) (not b!4928411) (not bm!343766) (not d!1586235) (not d!1586295) (not b!4927719) (not bm!343805) (not b!4928383) (not b!4928419) (not b!4928417) (not d!1586089) (not d!1585903) (not b!4927573) (not b!4928208) (not b!4927934) (not b!4928443) (not b!4927892) (not b!4928006) (not d!1586181) (not b!4928163) (not b!4928178) (not b!4927951) (not b!4928212) (not b!4928461) (not b!4928189) (not b!4928328) (not bm!343796) (not b!4927741) (not b!4928321) (not b!4927644) (not bm!343849) (not d!1586033) (not b!4928369) (not b!4927881) (not b!4928425) (not b!4927922) (not b!4928207) (not d!1586455) (not b!4927645) (not b!4928161) (not b!4927637) (not d!1586383) (not d!1586145) (not b!4928386) (not b_lambda!196301) (not b!4928283) (not bm!343771) (not b!4928398) (not b!4927981) (not b!4928118) (not d!1586115) (not b!4927816) (not b!4927606) (not b!4928346) (not bm!343810) (not b!4927911) (not b!4928237) (not b!4927723) (not b!4928015) (not b!4927883) (not b!4928292) (not bm!343870) (not b!4927955) (not b!4928433) (not d!1586047) (not b!4927720) (not d!1585975) (not b!4927693) (not b!4927663) (not b!4928162) (not d!1586341) (not bm!343783) (not b!4927780) (not b!4928448) (not b!4927851) (not b!4927878) (not d!1586099) (not bm!343809) (not b!4927921) (not bm!343795) (not b!4928018) (not b!4928363) (not d!1586213) (not d!1586321) (not b!4927627) (not b!4928104) (not b!4928295) (not b!4928344) (not b!4927673) (not d!1585899) (not b!4928175) (not b!4927716) (not b!4927961) (not b!4928427) (not b!4928086) (not b!4927783) (not b!4928265) (not b!4927782) (not b!4928441) (not b!4928167) (not b!4928097) (not d!1585885) (not b!4928138) (not bm!343794) (not b!4928449) (not d!1586209) (not b!4927917) (not b!4927898) (not b!4928184) (not b!4928311) (not bm!343779) (not b!4927587) (not bm!343857) (not b!4928476) (not b!4927567) (not b!4927802) (not b!4927632) (not d!1586241) (not b!4927978) (not b!4928373) (not bm!343786) (not bm!343802) (not b!4928468) (not b!4927819) (not b!4927845) (not b!4927691) (not b!4928436) (not b!4928159) (not b!4928285) (not b!4928267) (not d!1586007) (not b!4928471) (not d!1586049) (not b!4927774) (not b!4928469) (not bm!343769) (not b!4927596) (not b!4928349) (not d!1586165) (not d!1585883) (not b!4928378) (not d!1585979) (not b!4928423) (not b!4928432) (not b!4927907) (not b!4928316) (not b!4927640) (not bm!343847) (not b!4927661) (not b!4927798) (not d!1586167) (not b!4927603) (not b!4927972) (not b!4928305) (not b!4928315) (not d!1586205) (not b!4928450) (not b!4928068) (not b!4927996) (not d!1586097) (not b!4927965) (not d!1585999) (not b!4927665) (not d!1586095) (not d!1585881) (not d!1585909) (not bm!343778) (not b!4928336) (not d!1585917) (not b!4927600) (not b!4928096) (not d!1586411) (not b!4927977) (not bm!343800) (not b!4928397) (not b!4927677) (not b!4927987) (not b!4928460) (not b!4927676) (not d!1586387) (not b!4927605) (not b!4927648) (not b!4928465) (not b!4928240) (not b!4928350) (not b!4928347) (not b!4927799) (not d!1585915) (not b!4927957) (not d!1586067) (not d!1586105) (not d!1586191) (not d!1586313) (not b!4928196) (not b!4928412) (not bm!343782) (not b!4927611) (not bm!343775) (not b!4927891) (not b!4927953) (not d!1586255) (not b!4928447) (not bm!343866) (not b!4927814) (not b!4927980) (not b!4928268) (not b!4928007) (not b!4927576) (not b!4928191) (not b!4928408) (not b!4927659) (not b!4928365) (not bm!343806) (not b!4927879) (not bm!343804) (not d!1586453) (not b!4928100) (not b!4927984) (not d!1586239) (not b!4928332) (not b!4927842) (not b!4927778) (not b!4927858) (not b!4928022) (not b!4928401) (not bm!343784) (not d!1586155) (not b!4928426) (not b!4927626) (not b!4928462) (not d!1585951) (not b!4927578) (not b!4928155) (not b!4928254) (not b!4928337) (not b!4927590) (not d!1586251) (not bm!343780) (not d!1586315) (not b!4928389) (not b!4928102) (not b!4928474) (not b!4928306) (not bm!343872) (not b!4928345) (not d!1586273) (not b!4928384) (not b!4928120) (not b!4927597) (not b!4928180) (not b!4928453) (not b!4927908) (not d!1586195) (not b!4928319) (not b!4928111))
(check-sat)
