; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!711024 () Bool)

(assert start!711024)

(declare-fun b!7294779 () Bool)

(assert (=> b!7294779 true))

(declare-fun b!7294768 () Bool)

(declare-fun e!4369219 () Bool)

(declare-fun tp!2062198 () Bool)

(assert (=> b!7294768 (= e!4369219 tp!2062198)))

(declare-fun b!7294769 () Bool)

(declare-fun e!4369220 () Bool)

(declare-fun e!4369216 () Bool)

(assert (=> b!7294769 (= e!4369220 e!4369216)))

(declare-fun res!2950676 () Bool)

(assert (=> b!7294769 (=> res!2950676 e!4369216)))

(declare-datatypes ((C!37994 0))(
  ( (C!37995 (val!28945 Int)) )
))
(declare-datatypes ((Regex!18860 0))(
  ( (ElementMatch!18860 (c!1355639 C!37994)) (Concat!27705 (regOne!38232 Regex!18860) (regTwo!38232 Regex!18860)) (EmptyExpr!18860) (Star!18860 (reg!19189 Regex!18860)) (EmptyLang!18860) (Union!18860 (regOne!38233 Regex!18860) (regTwo!38233 Regex!18860)) )
))
(declare-datatypes ((List!71037 0))(
  ( (Nil!70913) (Cons!70913 (h!77361 Regex!18860) (t!385111 List!71037)) )
))
(declare-datatypes ((Context!15600 0))(
  ( (Context!15601 (exprs!8300 List!71037)) )
))
(declare-fun ct1!250 () Context!15600)

(declare-fun lt!2597651 () Context!15600)

(declare-datatypes ((List!71038 0))(
  ( (Nil!70914) (Cons!70914 (h!77362 C!37994) (t!385112 List!71038)) )
))
(declare-fun s!7854 () List!71038)

(declare-fun lt!2597655 () (Set Context!15600))

(declare-fun derivationStepZipperDown!2766 (Regex!18860 Context!15600 C!37994) (Set Context!15600))

(declare-fun derivationStepZipperUp!2610 (Context!15600 C!37994) (Set Context!15600))

(assert (=> b!7294769 (= res!2950676 (not (= lt!2597655 (set.union (derivationStepZipperDown!2766 (h!77361 (exprs!8300 ct1!250)) lt!2597651 (h!77362 s!7854)) (derivationStepZipperUp!2610 lt!2597651 (h!77362 s!7854))))))))

(declare-fun lt!2597649 () List!71037)

(declare-fun ct2!346 () Context!15600)

(declare-fun ++!16750 (List!71037 List!71037) List!71037)

(assert (=> b!7294769 (= lt!2597651 (Context!15601 (++!16750 lt!2597649 (exprs!8300 ct2!346))))))

(declare-datatypes ((Unit!164318 0))(
  ( (Unit!164319) )
))
(declare-fun lt!2597657 () Unit!164318)

(declare-fun lambda!450222 () Int)

(declare-fun lemmaConcatPreservesForall!1607 (List!71037 List!71037 Int) Unit!164318)

(assert (=> b!7294769 (= lt!2597657 (lemmaConcatPreservesForall!1607 lt!2597649 (exprs!8300 ct2!346) lambda!450222))))

(declare-fun lt!2597652 () Unit!164318)

(assert (=> b!7294769 (= lt!2597652 (lemmaConcatPreservesForall!1607 lt!2597649 (exprs!8300 ct2!346) lambda!450222))))

(declare-fun b!7294770 () Bool)

(declare-fun res!2950668 () Bool)

(declare-fun e!4369215 () Bool)

(assert (=> b!7294770 (=> (not res!2950668) (not e!4369215))))

(assert (=> b!7294770 (= res!2950668 (is-Cons!70914 s!7854))))

(declare-fun b!7294771 () Bool)

(declare-fun lt!2597659 () Context!15600)

(declare-fun nullableContext!350 (Context!15600) Bool)

(assert (=> b!7294771 (= e!4369216 (nullableContext!350 lt!2597659))))

(declare-fun b!7294772 () Bool)

(declare-fun res!2950669 () Bool)

(assert (=> b!7294772 (=> (not res!2950669) (not e!4369215))))

(assert (=> b!7294772 (= res!2950669 (nullableContext!350 ct1!250))))

(declare-fun b!7294773 () Bool)

(declare-fun res!2950673 () Bool)

(declare-fun e!4369218 () Bool)

(assert (=> b!7294773 (=> res!2950673 e!4369218)))

(declare-fun isEmpty!40789 (List!71037) Bool)

(assert (=> b!7294773 (= res!2950673 (isEmpty!40789 (exprs!8300 ct1!250)))))

(declare-fun res!2950675 () Bool)

(assert (=> start!711024 (=> (not res!2950675) (not e!4369215))))

(declare-fun matchZipper!3764 ((Set Context!15600) List!71038) Bool)

(assert (=> start!711024 (= res!2950675 (matchZipper!3764 (set.insert ct2!346 (as set.empty (Set Context!15600))) s!7854))))

(assert (=> start!711024 e!4369215))

(declare-fun e!4369217 () Bool)

(declare-fun inv!90161 (Context!15600) Bool)

(assert (=> start!711024 (and (inv!90161 ct2!346) e!4369217)))

(declare-fun e!4369221 () Bool)

(assert (=> start!711024 e!4369221))

(assert (=> start!711024 (and (inv!90161 ct1!250) e!4369219)))

(declare-fun b!7294774 () Bool)

(assert (=> b!7294774 (= e!4369218 e!4369220)))

(declare-fun res!2950672 () Bool)

(assert (=> b!7294774 (=> res!2950672 e!4369220)))

(declare-fun nullable!8037 (Regex!18860) Bool)

(assert (=> b!7294774 (= res!2950672 (not (nullable!8037 (h!77361 (exprs!8300 ct1!250)))))))

(declare-fun lt!2597658 () (Set Context!15600))

(assert (=> b!7294774 (= lt!2597658 (derivationStepZipperUp!2610 ct1!250 (h!77362 s!7854)))))

(assert (=> b!7294774 (= lt!2597659 (Context!15601 lt!2597649))))

(declare-fun tail!14572 (List!71037) List!71037)

(assert (=> b!7294774 (= lt!2597649 (tail!14572 (exprs!8300 ct1!250)))))

(declare-fun b!7294775 () Bool)

(declare-fun tp!2062199 () Bool)

(assert (=> b!7294775 (= e!4369217 tp!2062199)))

(declare-fun b!7294776 () Bool)

(declare-fun res!2950671 () Bool)

(assert (=> b!7294776 (=> res!2950671 e!4369220)))

(assert (=> b!7294776 (= res!2950671 (not (= lt!2597658 (set.union (derivationStepZipperDown!2766 (h!77361 (exprs!8300 ct1!250)) lt!2597659 (h!77362 s!7854)) (derivationStepZipperUp!2610 lt!2597659 (h!77362 s!7854))))))))

(declare-fun b!7294777 () Bool)

(declare-fun tp_is_empty!47185 () Bool)

(declare-fun tp!2062197 () Bool)

(assert (=> b!7294777 (= e!4369221 (and tp_is_empty!47185 tp!2062197))))

(declare-fun b!7294778 () Bool)

(declare-fun res!2950670 () Bool)

(assert (=> b!7294778 (=> res!2950670 e!4369218)))

(assert (=> b!7294778 (= res!2950670 (not (is-Cons!70913 (exprs!8300 ct1!250))))))

(assert (=> b!7294779 (= e!4369215 (not e!4369218))))

(declare-fun res!2950674 () Bool)

(assert (=> b!7294779 (=> res!2950674 e!4369218)))

(declare-fun lt!2597654 () (Set Context!15600))

(declare-fun derivationStepZipper!3593 ((Set Context!15600) C!37994) (Set Context!15600))

(assert (=> b!7294779 (= res!2950674 (not (= lt!2597655 (derivationStepZipper!3593 lt!2597654 (h!77362 s!7854)))))))

(declare-fun lt!2597660 () Unit!164318)

(assert (=> b!7294779 (= lt!2597660 (lemmaConcatPreservesForall!1607 (exprs!8300 ct1!250) (exprs!8300 ct2!346) lambda!450222))))

(declare-fun lt!2597647 () Context!15600)

(declare-fun lambda!450223 () Int)

(declare-fun flatMap!2955 ((Set Context!15600) Int) (Set Context!15600))

(assert (=> b!7294779 (= (flatMap!2955 lt!2597654 lambda!450223) (derivationStepZipperUp!2610 lt!2597647 (h!77362 s!7854)))))

(declare-fun lt!2597650 () Unit!164318)

(declare-fun lemmaFlatMapOnSingletonSet!2353 ((Set Context!15600) Context!15600 Int) Unit!164318)

(assert (=> b!7294779 (= lt!2597650 (lemmaFlatMapOnSingletonSet!2353 lt!2597654 lt!2597647 lambda!450223))))

(assert (=> b!7294779 (= lt!2597654 (set.insert lt!2597647 (as set.empty (Set Context!15600))))))

(declare-fun lt!2597646 () Unit!164318)

(assert (=> b!7294779 (= lt!2597646 (lemmaConcatPreservesForall!1607 (exprs!8300 ct1!250) (exprs!8300 ct2!346) lambda!450222))))

(declare-fun lt!2597648 () Unit!164318)

(assert (=> b!7294779 (= lt!2597648 (lemmaConcatPreservesForall!1607 (exprs!8300 ct1!250) (exprs!8300 ct2!346) lambda!450222))))

(declare-fun lt!2597656 () (Set Context!15600))

(assert (=> b!7294779 (= (flatMap!2955 lt!2597656 lambda!450223) (derivationStepZipperUp!2610 ct1!250 (h!77362 s!7854)))))

(declare-fun lt!2597661 () Unit!164318)

(assert (=> b!7294779 (= lt!2597661 (lemmaFlatMapOnSingletonSet!2353 lt!2597656 ct1!250 lambda!450223))))

(assert (=> b!7294779 (= lt!2597656 (set.insert ct1!250 (as set.empty (Set Context!15600))))))

(assert (=> b!7294779 (= lt!2597655 (derivationStepZipperUp!2610 lt!2597647 (h!77362 s!7854)))))

(assert (=> b!7294779 (= lt!2597647 (Context!15601 (++!16750 (exprs!8300 ct1!250) (exprs!8300 ct2!346))))))

(declare-fun lt!2597653 () Unit!164318)

(assert (=> b!7294779 (= lt!2597653 (lemmaConcatPreservesForall!1607 (exprs!8300 ct1!250) (exprs!8300 ct2!346) lambda!450222))))

(assert (= (and start!711024 res!2950675) b!7294772))

(assert (= (and b!7294772 res!2950669) b!7294770))

(assert (= (and b!7294770 res!2950668) b!7294779))

(assert (= (and b!7294779 (not res!2950674)) b!7294778))

(assert (= (and b!7294778 (not res!2950670)) b!7294773))

(assert (= (and b!7294773 (not res!2950673)) b!7294774))

(assert (= (and b!7294774 (not res!2950672)) b!7294776))

(assert (= (and b!7294776 (not res!2950671)) b!7294769))

(assert (= (and b!7294769 (not res!2950676)) b!7294771))

(assert (= start!711024 b!7294775))

(assert (= (and start!711024 (is-Cons!70914 s!7854)) b!7294777))

(assert (= start!711024 b!7294768))

(declare-fun m!7966350 () Bool)

(assert (=> b!7294771 m!7966350))

(declare-fun m!7966352 () Bool)

(assert (=> b!7294774 m!7966352))

(declare-fun m!7966354 () Bool)

(assert (=> b!7294774 m!7966354))

(declare-fun m!7966356 () Bool)

(assert (=> b!7294774 m!7966356))

(declare-fun m!7966358 () Bool)

(assert (=> b!7294773 m!7966358))

(declare-fun m!7966360 () Bool)

(assert (=> b!7294769 m!7966360))

(declare-fun m!7966362 () Bool)

(assert (=> b!7294769 m!7966362))

(assert (=> b!7294769 m!7966362))

(declare-fun m!7966364 () Bool)

(assert (=> b!7294769 m!7966364))

(declare-fun m!7966366 () Bool)

(assert (=> b!7294769 m!7966366))

(declare-fun m!7966368 () Bool)

(assert (=> b!7294772 m!7966368))

(declare-fun m!7966370 () Bool)

(assert (=> b!7294776 m!7966370))

(declare-fun m!7966372 () Bool)

(assert (=> b!7294776 m!7966372))

(declare-fun m!7966374 () Bool)

(assert (=> b!7294779 m!7966374))

(assert (=> b!7294779 m!7966374))

(declare-fun m!7966376 () Bool)

(assert (=> b!7294779 m!7966376))

(declare-fun m!7966378 () Bool)

(assert (=> b!7294779 m!7966378))

(assert (=> b!7294779 m!7966354))

(declare-fun m!7966380 () Bool)

(assert (=> b!7294779 m!7966380))

(assert (=> b!7294779 m!7966374))

(declare-fun m!7966382 () Bool)

(assert (=> b!7294779 m!7966382))

(declare-fun m!7966384 () Bool)

(assert (=> b!7294779 m!7966384))

(assert (=> b!7294779 m!7966374))

(declare-fun m!7966386 () Bool)

(assert (=> b!7294779 m!7966386))

(declare-fun m!7966388 () Bool)

(assert (=> b!7294779 m!7966388))

(declare-fun m!7966390 () Bool)

(assert (=> b!7294779 m!7966390))

(declare-fun m!7966392 () Bool)

(assert (=> b!7294779 m!7966392))

(declare-fun m!7966394 () Bool)

(assert (=> start!711024 m!7966394))

(assert (=> start!711024 m!7966394))

(declare-fun m!7966396 () Bool)

(assert (=> start!711024 m!7966396))

(declare-fun m!7966398 () Bool)

(assert (=> start!711024 m!7966398))

(declare-fun m!7966400 () Bool)

(assert (=> start!711024 m!7966400))

(push 1)

(assert (not b!7294771))

(assert (not b!7294776))

(assert (not b!7294779))

(assert (not start!711024))

(assert tp_is_empty!47185)

(assert (not b!7294768))

(assert (not b!7294777))

(assert (not b!7294772))

(assert (not b!7294774))

(assert (not b!7294775))

(assert (not b!7294773))

(assert (not b!7294769))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun bs!1912773 () Bool)

(declare-fun d!2266403 () Bool)

(assert (= bs!1912773 (and d!2266403 b!7294779)))

(declare-fun lambda!450244 () Int)

(assert (=> bs!1912773 (not (= lambda!450244 lambda!450222))))

(declare-fun forall!17683 (List!71037 Int) Bool)

(assert (=> d!2266403 (= (nullableContext!350 lt!2597659) (forall!17683 (exprs!8300 lt!2597659) lambda!450244))))

(declare-fun bs!1912774 () Bool)

(assert (= bs!1912774 d!2266403))

(declare-fun m!7966454 () Bool)

(assert (=> bs!1912774 m!7966454))

(assert (=> b!7294771 d!2266403))

(declare-fun bm!664483 () Bool)

(declare-fun call!664492 () (Set Context!15600))

(declare-fun call!664493 () (Set Context!15600))

(assert (=> bm!664483 (= call!664492 call!664493)))

(declare-fun b!7294842 () Bool)

(declare-fun c!1355656 () Bool)

(declare-fun e!4369259 () Bool)

(assert (=> b!7294842 (= c!1355656 e!4369259)))

(declare-fun res!2950706 () Bool)

(assert (=> b!7294842 (=> (not res!2950706) (not e!4369259))))

(assert (=> b!7294842 (= res!2950706 (is-Concat!27705 (h!77361 (exprs!8300 ct1!250))))))

(declare-fun e!4369257 () (Set Context!15600))

(declare-fun e!4369258 () (Set Context!15600))

(assert (=> b!7294842 (= e!4369257 e!4369258)))

(declare-fun b!7294843 () Bool)

(declare-fun e!4369260 () (Set Context!15600))

(assert (=> b!7294843 (= e!4369260 (set.insert lt!2597659 (as set.empty (Set Context!15600))))))

(declare-fun b!7294844 () Bool)

(declare-fun e!4369255 () (Set Context!15600))

(assert (=> b!7294844 (= e!4369255 call!664492)))

(declare-fun call!664491 () (Set Context!15600))

(declare-fun bm!664484 () Bool)

(declare-fun c!1355658 () Bool)

(declare-fun call!664490 () List!71037)

(declare-fun c!1355657 () Bool)

(assert (=> bm!664484 (= call!664491 (derivationStepZipperDown!2766 (ite c!1355658 (regOne!38233 (h!77361 (exprs!8300 ct1!250))) (ite c!1355656 (regTwo!38232 (h!77361 (exprs!8300 ct1!250))) (ite c!1355657 (regOne!38232 (h!77361 (exprs!8300 ct1!250))) (reg!19189 (h!77361 (exprs!8300 ct1!250)))))) (ite (or c!1355658 c!1355656) lt!2597659 (Context!15601 call!664490)) (h!77362 s!7854)))))

(declare-fun b!7294845 () Bool)

(declare-fun call!664489 () (Set Context!15600))

(assert (=> b!7294845 (= e!4369257 (set.union call!664491 call!664489))))

(declare-fun b!7294846 () Bool)

(declare-fun e!4369256 () (Set Context!15600))

(assert (=> b!7294846 (= e!4369256 call!664492)))

(declare-fun bm!664485 () Bool)

(declare-fun call!664488 () List!71037)

(assert (=> bm!664485 (= call!664489 (derivationStepZipperDown!2766 (ite c!1355658 (regTwo!38233 (h!77361 (exprs!8300 ct1!250))) (regOne!38232 (h!77361 (exprs!8300 ct1!250)))) (ite c!1355658 lt!2597659 (Context!15601 call!664488)) (h!77362 s!7854)))))

(declare-fun bm!664486 () Bool)

(declare-fun $colon$colon!2991 (List!71037 Regex!18860) List!71037)

(assert (=> bm!664486 (= call!664488 ($colon$colon!2991 (exprs!8300 lt!2597659) (ite (or c!1355656 c!1355657) (regTwo!38232 (h!77361 (exprs!8300 ct1!250))) (h!77361 (exprs!8300 ct1!250)))))))

(declare-fun b!7294847 () Bool)

(assert (=> b!7294847 (= e!4369259 (nullable!8037 (regOne!38232 (h!77361 (exprs!8300 ct1!250)))))))

(declare-fun bm!664487 () Bool)

(assert (=> bm!664487 (= call!664493 call!664491)))

(declare-fun bm!664488 () Bool)

(assert (=> bm!664488 (= call!664490 call!664488)))

(declare-fun d!2266405 () Bool)

(declare-fun c!1355659 () Bool)

(assert (=> d!2266405 (= c!1355659 (and (is-ElementMatch!18860 (h!77361 (exprs!8300 ct1!250))) (= (c!1355639 (h!77361 (exprs!8300 ct1!250))) (h!77362 s!7854))))))

(assert (=> d!2266405 (= (derivationStepZipperDown!2766 (h!77361 (exprs!8300 ct1!250)) lt!2597659 (h!77362 s!7854)) e!4369260)))

(declare-fun b!7294848 () Bool)

(assert (=> b!7294848 (= e!4369258 (set.union call!664489 call!664493))))

(declare-fun b!7294849 () Bool)

(assert (=> b!7294849 (= e!4369260 e!4369257)))

(assert (=> b!7294849 (= c!1355658 (is-Union!18860 (h!77361 (exprs!8300 ct1!250))))))

(declare-fun b!7294850 () Bool)

(assert (=> b!7294850 (= e!4369256 (as set.empty (Set Context!15600)))))

(declare-fun b!7294851 () Bool)

(assert (=> b!7294851 (= e!4369258 e!4369255)))

(assert (=> b!7294851 (= c!1355657 (is-Concat!27705 (h!77361 (exprs!8300 ct1!250))))))

(declare-fun b!7294852 () Bool)

(declare-fun c!1355660 () Bool)

(assert (=> b!7294852 (= c!1355660 (is-Star!18860 (h!77361 (exprs!8300 ct1!250))))))

(assert (=> b!7294852 (= e!4369255 e!4369256)))

(assert (= (and d!2266405 c!1355659) b!7294843))

(assert (= (and d!2266405 (not c!1355659)) b!7294849))

(assert (= (and b!7294849 c!1355658) b!7294845))

(assert (= (and b!7294849 (not c!1355658)) b!7294842))

(assert (= (and b!7294842 res!2950706) b!7294847))

(assert (= (and b!7294842 c!1355656) b!7294848))

(assert (= (and b!7294842 (not c!1355656)) b!7294851))

(assert (= (and b!7294851 c!1355657) b!7294844))

(assert (= (and b!7294851 (not c!1355657)) b!7294852))

(assert (= (and b!7294852 c!1355660) b!7294846))

(assert (= (and b!7294852 (not c!1355660)) b!7294850))

(assert (= (or b!7294844 b!7294846) bm!664488))

(assert (= (or b!7294844 b!7294846) bm!664483))

(assert (= (or b!7294848 bm!664488) bm!664486))

(assert (= (or b!7294848 bm!664483) bm!664487))

(assert (= (or b!7294845 bm!664487) bm!664484))

(assert (= (or b!7294845 b!7294848) bm!664485))

(declare-fun m!7966456 () Bool)

(assert (=> bm!664486 m!7966456))

(declare-fun m!7966458 () Bool)

(assert (=> b!7294847 m!7966458))

(declare-fun m!7966460 () Bool)

(assert (=> b!7294843 m!7966460))

(declare-fun m!7966462 () Bool)

(assert (=> bm!664485 m!7966462))

(declare-fun m!7966464 () Bool)

(assert (=> bm!664484 m!7966464))

(assert (=> b!7294776 d!2266405))

(declare-fun b!7294863 () Bool)

(declare-fun e!4369268 () (Set Context!15600))

(assert (=> b!7294863 (= e!4369268 (as set.empty (Set Context!15600)))))

(declare-fun bm!664491 () Bool)

(declare-fun call!664496 () (Set Context!15600))

(assert (=> bm!664491 (= call!664496 (derivationStepZipperDown!2766 (h!77361 (exprs!8300 lt!2597659)) (Context!15601 (t!385111 (exprs!8300 lt!2597659))) (h!77362 s!7854)))))

(declare-fun b!7294864 () Bool)

(declare-fun e!4369267 () (Set Context!15600))

(assert (=> b!7294864 (= e!4369267 (set.union call!664496 (derivationStepZipperUp!2610 (Context!15601 (t!385111 (exprs!8300 lt!2597659))) (h!77362 s!7854))))))

(declare-fun b!7294865 () Bool)

(assert (=> b!7294865 (= e!4369267 e!4369268)))

(declare-fun c!1355666 () Bool)

(assert (=> b!7294865 (= c!1355666 (is-Cons!70913 (exprs!8300 lt!2597659)))))

(declare-fun b!7294867 () Bool)

(assert (=> b!7294867 (= e!4369268 call!664496)))

(declare-fun b!7294866 () Bool)

(declare-fun e!4369269 () Bool)

(assert (=> b!7294866 (= e!4369269 (nullable!8037 (h!77361 (exprs!8300 lt!2597659))))))

(declare-fun d!2266409 () Bool)

(declare-fun c!1355665 () Bool)

(assert (=> d!2266409 (= c!1355665 e!4369269)))

(declare-fun res!2950709 () Bool)

(assert (=> d!2266409 (=> (not res!2950709) (not e!4369269))))

(assert (=> d!2266409 (= res!2950709 (is-Cons!70913 (exprs!8300 lt!2597659)))))

(assert (=> d!2266409 (= (derivationStepZipperUp!2610 lt!2597659 (h!77362 s!7854)) e!4369267)))

(assert (= (and d!2266409 res!2950709) b!7294866))

(assert (= (and d!2266409 c!1355665) b!7294864))

(assert (= (and d!2266409 (not c!1355665)) b!7294865))

(assert (= (and b!7294865 c!1355666) b!7294867))

(assert (= (and b!7294865 (not c!1355666)) b!7294863))

(assert (= (or b!7294864 b!7294867) bm!664491))

(declare-fun m!7966466 () Bool)

(assert (=> bm!664491 m!7966466))

(declare-fun m!7966468 () Bool)

(assert (=> b!7294864 m!7966468))

(declare-fun m!7966470 () Bool)

(assert (=> b!7294866 m!7966470))

(assert (=> b!7294776 d!2266409))

(declare-fun d!2266411 () Bool)

(assert (=> d!2266411 (= (isEmpty!40789 (exprs!8300 ct1!250)) (is-Nil!70913 (exprs!8300 ct1!250)))))

(assert (=> b!7294773 d!2266411))

(declare-fun bs!1912775 () Bool)

(declare-fun d!2266413 () Bool)

(assert (= bs!1912775 (and d!2266413 b!7294779)))

(declare-fun lambda!450245 () Int)

(assert (=> bs!1912775 (not (= lambda!450245 lambda!450222))))

(declare-fun bs!1912776 () Bool)

(assert (= bs!1912776 (and d!2266413 d!2266403)))

(assert (=> bs!1912776 (= lambda!450245 lambda!450244)))

(assert (=> d!2266413 (= (nullableContext!350 ct1!250) (forall!17683 (exprs!8300 ct1!250) lambda!450245))))

(declare-fun bs!1912777 () Bool)

(assert (= bs!1912777 d!2266413))

(declare-fun m!7966472 () Bool)

(assert (=> bs!1912777 m!7966472))

(assert (=> b!7294772 d!2266413))

(declare-fun d!2266415 () Bool)

(assert (=> d!2266415 (forall!17683 (++!16750 lt!2597649 (exprs!8300 ct2!346)) lambda!450222)))

(declare-fun lt!2597712 () Unit!164318)

(declare-fun choose!56519 (List!71037 List!71037 Int) Unit!164318)

(assert (=> d!2266415 (= lt!2597712 (choose!56519 lt!2597649 (exprs!8300 ct2!346) lambda!450222))))

(assert (=> d!2266415 (forall!17683 lt!2597649 lambda!450222)))

(assert (=> d!2266415 (= (lemmaConcatPreservesForall!1607 lt!2597649 (exprs!8300 ct2!346) lambda!450222) lt!2597712)))

(declare-fun bs!1912778 () Bool)

(assert (= bs!1912778 d!2266415))

(assert (=> bs!1912778 m!7966364))

(assert (=> bs!1912778 m!7966364))

(declare-fun m!7966474 () Bool)

(assert (=> bs!1912778 m!7966474))

(declare-fun m!7966476 () Bool)

(assert (=> bs!1912778 m!7966476))

(declare-fun m!7966478 () Bool)

(assert (=> bs!1912778 m!7966478))

(assert (=> b!7294769 d!2266415))

(declare-fun b!7294872 () Bool)

(declare-fun e!4369273 () (Set Context!15600))

(assert (=> b!7294872 (= e!4369273 (as set.empty (Set Context!15600)))))

(declare-fun bm!664492 () Bool)

(declare-fun call!664497 () (Set Context!15600))

(assert (=> bm!664492 (= call!664497 (derivationStepZipperDown!2766 (h!77361 (exprs!8300 lt!2597651)) (Context!15601 (t!385111 (exprs!8300 lt!2597651))) (h!77362 s!7854)))))

(declare-fun b!7294873 () Bool)

(declare-fun e!4369272 () (Set Context!15600))

(assert (=> b!7294873 (= e!4369272 (set.union call!664497 (derivationStepZipperUp!2610 (Context!15601 (t!385111 (exprs!8300 lt!2597651))) (h!77362 s!7854))))))

(declare-fun b!7294874 () Bool)

(assert (=> b!7294874 (= e!4369272 e!4369273)))

(declare-fun c!1355670 () Bool)

(assert (=> b!7294874 (= c!1355670 (is-Cons!70913 (exprs!8300 lt!2597651)))))

(declare-fun b!7294876 () Bool)

(assert (=> b!7294876 (= e!4369273 call!664497)))

(declare-fun b!7294875 () Bool)

(declare-fun e!4369274 () Bool)

(assert (=> b!7294875 (= e!4369274 (nullable!8037 (h!77361 (exprs!8300 lt!2597651))))))

(declare-fun d!2266417 () Bool)

(declare-fun c!1355669 () Bool)

(assert (=> d!2266417 (= c!1355669 e!4369274)))

(declare-fun res!2950710 () Bool)

(assert (=> d!2266417 (=> (not res!2950710) (not e!4369274))))

(assert (=> d!2266417 (= res!2950710 (is-Cons!70913 (exprs!8300 lt!2597651)))))

(assert (=> d!2266417 (= (derivationStepZipperUp!2610 lt!2597651 (h!77362 s!7854)) e!4369272)))

(assert (= (and d!2266417 res!2950710) b!7294875))

(assert (= (and d!2266417 c!1355669) b!7294873))

(assert (= (and d!2266417 (not c!1355669)) b!7294874))

(assert (= (and b!7294874 c!1355670) b!7294876))

(assert (= (and b!7294874 (not c!1355670)) b!7294872))

(assert (= (or b!7294873 b!7294876) bm!664492))

(declare-fun m!7966480 () Bool)

(assert (=> bm!664492 m!7966480))

(declare-fun m!7966482 () Bool)

(assert (=> b!7294873 m!7966482))

(declare-fun m!7966484 () Bool)

(assert (=> b!7294875 m!7966484))

(assert (=> b!7294769 d!2266417))

(declare-fun bm!664493 () Bool)

(declare-fun call!664502 () (Set Context!15600))

(declare-fun call!664503 () (Set Context!15600))

(assert (=> bm!664493 (= call!664502 call!664503)))

(declare-fun b!7294877 () Bool)

(declare-fun c!1355671 () Bool)

(declare-fun e!4369279 () Bool)

(assert (=> b!7294877 (= c!1355671 e!4369279)))

(declare-fun res!2950711 () Bool)

(assert (=> b!7294877 (=> (not res!2950711) (not e!4369279))))

(assert (=> b!7294877 (= res!2950711 (is-Concat!27705 (h!77361 (exprs!8300 ct1!250))))))

(declare-fun e!4369277 () (Set Context!15600))

(declare-fun e!4369278 () (Set Context!15600))

(assert (=> b!7294877 (= e!4369277 e!4369278)))

(declare-fun b!7294878 () Bool)

(declare-fun e!4369280 () (Set Context!15600))

(assert (=> b!7294878 (= e!4369280 (set.insert lt!2597651 (as set.empty (Set Context!15600))))))

(declare-fun b!7294879 () Bool)

(declare-fun e!4369275 () (Set Context!15600))

(assert (=> b!7294879 (= e!4369275 call!664502)))

(declare-fun bm!664494 () Bool)

(declare-fun c!1355673 () Bool)

(declare-fun c!1355672 () Bool)

(declare-fun call!664500 () List!71037)

(declare-fun call!664501 () (Set Context!15600))

(assert (=> bm!664494 (= call!664501 (derivationStepZipperDown!2766 (ite c!1355673 (regOne!38233 (h!77361 (exprs!8300 ct1!250))) (ite c!1355671 (regTwo!38232 (h!77361 (exprs!8300 ct1!250))) (ite c!1355672 (regOne!38232 (h!77361 (exprs!8300 ct1!250))) (reg!19189 (h!77361 (exprs!8300 ct1!250)))))) (ite (or c!1355673 c!1355671) lt!2597651 (Context!15601 call!664500)) (h!77362 s!7854)))))

(declare-fun b!7294880 () Bool)

(declare-fun call!664499 () (Set Context!15600))

(assert (=> b!7294880 (= e!4369277 (set.union call!664501 call!664499))))

(declare-fun b!7294881 () Bool)

(declare-fun e!4369276 () (Set Context!15600))

(assert (=> b!7294881 (= e!4369276 call!664502)))

(declare-fun bm!664495 () Bool)

(declare-fun call!664498 () List!71037)

(assert (=> bm!664495 (= call!664499 (derivationStepZipperDown!2766 (ite c!1355673 (regTwo!38233 (h!77361 (exprs!8300 ct1!250))) (regOne!38232 (h!77361 (exprs!8300 ct1!250)))) (ite c!1355673 lt!2597651 (Context!15601 call!664498)) (h!77362 s!7854)))))

(declare-fun bm!664496 () Bool)

(assert (=> bm!664496 (= call!664498 ($colon$colon!2991 (exprs!8300 lt!2597651) (ite (or c!1355671 c!1355672) (regTwo!38232 (h!77361 (exprs!8300 ct1!250))) (h!77361 (exprs!8300 ct1!250)))))))

(declare-fun b!7294882 () Bool)

(assert (=> b!7294882 (= e!4369279 (nullable!8037 (regOne!38232 (h!77361 (exprs!8300 ct1!250)))))))

(declare-fun bm!664497 () Bool)

(assert (=> bm!664497 (= call!664503 call!664501)))

(declare-fun bm!664498 () Bool)

(assert (=> bm!664498 (= call!664500 call!664498)))

(declare-fun d!2266419 () Bool)

(declare-fun c!1355674 () Bool)

(assert (=> d!2266419 (= c!1355674 (and (is-ElementMatch!18860 (h!77361 (exprs!8300 ct1!250))) (= (c!1355639 (h!77361 (exprs!8300 ct1!250))) (h!77362 s!7854))))))

(assert (=> d!2266419 (= (derivationStepZipperDown!2766 (h!77361 (exprs!8300 ct1!250)) lt!2597651 (h!77362 s!7854)) e!4369280)))

(declare-fun b!7294883 () Bool)

(assert (=> b!7294883 (= e!4369278 (set.union call!664499 call!664503))))

(declare-fun b!7294884 () Bool)

(assert (=> b!7294884 (= e!4369280 e!4369277)))

(assert (=> b!7294884 (= c!1355673 (is-Union!18860 (h!77361 (exprs!8300 ct1!250))))))

(declare-fun b!7294885 () Bool)

(assert (=> b!7294885 (= e!4369276 (as set.empty (Set Context!15600)))))

(declare-fun b!7294886 () Bool)

(assert (=> b!7294886 (= e!4369278 e!4369275)))

(assert (=> b!7294886 (= c!1355672 (is-Concat!27705 (h!77361 (exprs!8300 ct1!250))))))

(declare-fun b!7294887 () Bool)

(declare-fun c!1355675 () Bool)

(assert (=> b!7294887 (= c!1355675 (is-Star!18860 (h!77361 (exprs!8300 ct1!250))))))

(assert (=> b!7294887 (= e!4369275 e!4369276)))

(assert (= (and d!2266419 c!1355674) b!7294878))

(assert (= (and d!2266419 (not c!1355674)) b!7294884))

(assert (= (and b!7294884 c!1355673) b!7294880))

(assert (= (and b!7294884 (not c!1355673)) b!7294877))

(assert (= (and b!7294877 res!2950711) b!7294882))

(assert (= (and b!7294877 c!1355671) b!7294883))

(assert (= (and b!7294877 (not c!1355671)) b!7294886))

(assert (= (and b!7294886 c!1355672) b!7294879))

(assert (= (and b!7294886 (not c!1355672)) b!7294887))

(assert (= (and b!7294887 c!1355675) b!7294881))

(assert (= (and b!7294887 (not c!1355675)) b!7294885))

(assert (= (or b!7294879 b!7294881) bm!664498))

(assert (= (or b!7294879 b!7294881) bm!664493))

(assert (= (or b!7294883 bm!664498) bm!664496))

(assert (= (or b!7294883 bm!664493) bm!664497))

(assert (= (or b!7294880 bm!664497) bm!664494))

(assert (= (or b!7294880 b!7294883) bm!664495))

(declare-fun m!7966486 () Bool)

(assert (=> bm!664496 m!7966486))

(assert (=> b!7294882 m!7966458))

(declare-fun m!7966488 () Bool)

(assert (=> b!7294878 m!7966488))

(declare-fun m!7966490 () Bool)

(assert (=> bm!664495 m!7966490))

(declare-fun m!7966494 () Bool)

(assert (=> bm!664494 m!7966494))

(assert (=> b!7294769 d!2266419))

(declare-fun b!7294899 () Bool)

(declare-fun e!4369287 () List!71037)

(assert (=> b!7294899 (= e!4369287 (Cons!70913 (h!77361 lt!2597649) (++!16750 (t!385111 lt!2597649) (exprs!8300 ct2!346))))))

(declare-fun b!7294900 () Bool)

(declare-fun res!2950717 () Bool)

(declare-fun e!4369286 () Bool)

(assert (=> b!7294900 (=> (not res!2950717) (not e!4369286))))

(declare-fun lt!2597715 () List!71037)

(declare-fun size!41857 (List!71037) Int)

(assert (=> b!7294900 (= res!2950717 (= (size!41857 lt!2597715) (+ (size!41857 lt!2597649) (size!41857 (exprs!8300 ct2!346)))))))

(declare-fun b!7294898 () Bool)

(assert (=> b!7294898 (= e!4369287 (exprs!8300 ct2!346))))

(declare-fun d!2266421 () Bool)

(assert (=> d!2266421 e!4369286))

(declare-fun res!2950716 () Bool)

(assert (=> d!2266421 (=> (not res!2950716) (not e!4369286))))

(declare-fun content!14811 (List!71037) (Set Regex!18860))

(assert (=> d!2266421 (= res!2950716 (= (content!14811 lt!2597715) (set.union (content!14811 lt!2597649) (content!14811 (exprs!8300 ct2!346)))))))

(assert (=> d!2266421 (= lt!2597715 e!4369287)))

(declare-fun c!1355679 () Bool)

(assert (=> d!2266421 (= c!1355679 (is-Nil!70913 lt!2597649))))

(assert (=> d!2266421 (= (++!16750 lt!2597649 (exprs!8300 ct2!346)) lt!2597715)))

(declare-fun b!7294901 () Bool)

(assert (=> b!7294901 (= e!4369286 (or (not (= (exprs!8300 ct2!346) Nil!70913)) (= lt!2597715 lt!2597649)))))

(assert (= (and d!2266421 c!1355679) b!7294898))

(assert (= (and d!2266421 (not c!1355679)) b!7294899))

(assert (= (and d!2266421 res!2950716) b!7294900))

(assert (= (and b!7294900 res!2950717) b!7294901))

(declare-fun m!7966508 () Bool)

(assert (=> b!7294899 m!7966508))

(declare-fun m!7966510 () Bool)

(assert (=> b!7294900 m!7966510))

(declare-fun m!7966512 () Bool)

(assert (=> b!7294900 m!7966512))

(declare-fun m!7966514 () Bool)

(assert (=> b!7294900 m!7966514))

(declare-fun m!7966516 () Bool)

(assert (=> d!2266421 m!7966516))

(declare-fun m!7966518 () Bool)

(assert (=> d!2266421 m!7966518))

(declare-fun m!7966520 () Bool)

(assert (=> d!2266421 m!7966520))

(assert (=> b!7294769 d!2266421))

(declare-fun d!2266427 () Bool)

(declare-fun nullableFct!3175 (Regex!18860) Bool)

(assert (=> d!2266427 (= (nullable!8037 (h!77361 (exprs!8300 ct1!250))) (nullableFct!3175 (h!77361 (exprs!8300 ct1!250))))))

(declare-fun bs!1912783 () Bool)

(assert (= bs!1912783 d!2266427))

(declare-fun m!7966522 () Bool)

(assert (=> bs!1912783 m!7966522))

(assert (=> b!7294774 d!2266427))

(declare-fun b!7294902 () Bool)

(declare-fun e!4369289 () (Set Context!15600))

(assert (=> b!7294902 (= e!4369289 (as set.empty (Set Context!15600)))))

(declare-fun bm!664499 () Bool)

(declare-fun call!664504 () (Set Context!15600))

(assert (=> bm!664499 (= call!664504 (derivationStepZipperDown!2766 (h!77361 (exprs!8300 ct1!250)) (Context!15601 (t!385111 (exprs!8300 ct1!250))) (h!77362 s!7854)))))

(declare-fun e!4369288 () (Set Context!15600))

(declare-fun b!7294903 () Bool)

(assert (=> b!7294903 (= e!4369288 (set.union call!664504 (derivationStepZipperUp!2610 (Context!15601 (t!385111 (exprs!8300 ct1!250))) (h!77362 s!7854))))))

(declare-fun b!7294904 () Bool)

(assert (=> b!7294904 (= e!4369288 e!4369289)))

(declare-fun c!1355681 () Bool)

(assert (=> b!7294904 (= c!1355681 (is-Cons!70913 (exprs!8300 ct1!250)))))

(declare-fun b!7294906 () Bool)

(assert (=> b!7294906 (= e!4369289 call!664504)))

(declare-fun b!7294905 () Bool)

(declare-fun e!4369290 () Bool)

(assert (=> b!7294905 (= e!4369290 (nullable!8037 (h!77361 (exprs!8300 ct1!250))))))

(declare-fun d!2266429 () Bool)

(declare-fun c!1355680 () Bool)

(assert (=> d!2266429 (= c!1355680 e!4369290)))

(declare-fun res!2950718 () Bool)

(assert (=> d!2266429 (=> (not res!2950718) (not e!4369290))))

(assert (=> d!2266429 (= res!2950718 (is-Cons!70913 (exprs!8300 ct1!250)))))

(assert (=> d!2266429 (= (derivationStepZipperUp!2610 ct1!250 (h!77362 s!7854)) e!4369288)))

(assert (= (and d!2266429 res!2950718) b!7294905))

(assert (= (and d!2266429 c!1355680) b!7294903))

(assert (= (and d!2266429 (not c!1355680)) b!7294904))

(assert (= (and b!7294904 c!1355681) b!7294906))

(assert (= (and b!7294904 (not c!1355681)) b!7294902))

(assert (= (or b!7294903 b!7294906) bm!664499))

(declare-fun m!7966526 () Bool)

(assert (=> bm!664499 m!7966526))

(declare-fun m!7966528 () Bool)

(assert (=> b!7294903 m!7966528))

(assert (=> b!7294905 m!7966352))

(assert (=> b!7294774 d!2266429))

(declare-fun d!2266433 () Bool)

(assert (=> d!2266433 (= (tail!14572 (exprs!8300 ct1!250)) (t!385111 (exprs!8300 ct1!250)))))

(assert (=> b!7294774 d!2266433))

(declare-fun d!2266435 () Bool)

(declare-fun c!1355685 () Bool)

(declare-fun isEmpty!40791 (List!71038) Bool)

(assert (=> d!2266435 (= c!1355685 (isEmpty!40791 s!7854))))

(declare-fun e!4369293 () Bool)

(assert (=> d!2266435 (= (matchZipper!3764 (set.insert ct2!346 (as set.empty (Set Context!15600))) s!7854) e!4369293)))

(declare-fun b!7294911 () Bool)

(declare-fun nullableZipper!3055 ((Set Context!15600)) Bool)

(assert (=> b!7294911 (= e!4369293 (nullableZipper!3055 (set.insert ct2!346 (as set.empty (Set Context!15600)))))))

(declare-fun b!7294912 () Bool)

(declare-fun head!15053 (List!71038) C!37994)

(declare-fun tail!14574 (List!71038) List!71038)

(assert (=> b!7294912 (= e!4369293 (matchZipper!3764 (derivationStepZipper!3593 (set.insert ct2!346 (as set.empty (Set Context!15600))) (head!15053 s!7854)) (tail!14574 s!7854)))))

(assert (= (and d!2266435 c!1355685) b!7294911))

(assert (= (and d!2266435 (not c!1355685)) b!7294912))

(declare-fun m!7966532 () Bool)

(assert (=> d!2266435 m!7966532))

(assert (=> b!7294911 m!7966394))

(declare-fun m!7966534 () Bool)

(assert (=> b!7294911 m!7966534))

(declare-fun m!7966536 () Bool)

(assert (=> b!7294912 m!7966536))

(assert (=> b!7294912 m!7966394))

(assert (=> b!7294912 m!7966536))

(declare-fun m!7966538 () Bool)

(assert (=> b!7294912 m!7966538))

(declare-fun m!7966540 () Bool)

(assert (=> b!7294912 m!7966540))

(assert (=> b!7294912 m!7966538))

(assert (=> b!7294912 m!7966540))

(declare-fun m!7966542 () Bool)

(assert (=> b!7294912 m!7966542))

(assert (=> start!711024 d!2266435))

(declare-fun bs!1912790 () Bool)

(declare-fun d!2266439 () Bool)

(assert (= bs!1912790 (and d!2266439 b!7294779)))

(declare-fun lambda!450255 () Int)

(assert (=> bs!1912790 (= lambda!450255 lambda!450222)))

(declare-fun bs!1912791 () Bool)

(assert (= bs!1912791 (and d!2266439 d!2266403)))

(assert (=> bs!1912791 (not (= lambda!450255 lambda!450244))))

(declare-fun bs!1912792 () Bool)

(assert (= bs!1912792 (and d!2266439 d!2266413)))

(assert (=> bs!1912792 (not (= lambda!450255 lambda!450245))))

(assert (=> d!2266439 (= (inv!90161 ct2!346) (forall!17683 (exprs!8300 ct2!346) lambda!450255))))

(declare-fun bs!1912793 () Bool)

(assert (= bs!1912793 d!2266439))

(declare-fun m!7966546 () Bool)

(assert (=> bs!1912793 m!7966546))

(assert (=> start!711024 d!2266439))

(declare-fun bs!1912794 () Bool)

(declare-fun d!2266443 () Bool)

(assert (= bs!1912794 (and d!2266443 b!7294779)))

(declare-fun lambda!450256 () Int)

(assert (=> bs!1912794 (= lambda!450256 lambda!450222)))

(declare-fun bs!1912795 () Bool)

(assert (= bs!1912795 (and d!2266443 d!2266403)))

(assert (=> bs!1912795 (not (= lambda!450256 lambda!450244))))

(declare-fun bs!1912796 () Bool)

(assert (= bs!1912796 (and d!2266443 d!2266413)))

(assert (=> bs!1912796 (not (= lambda!450256 lambda!450245))))

(declare-fun bs!1912797 () Bool)

(assert (= bs!1912797 (and d!2266443 d!2266439)))

(assert (=> bs!1912797 (= lambda!450256 lambda!450255)))

(assert (=> d!2266443 (= (inv!90161 ct1!250) (forall!17683 (exprs!8300 ct1!250) lambda!450256))))

(declare-fun bs!1912798 () Bool)

(assert (= bs!1912798 d!2266443))

(declare-fun m!7966548 () Bool)

(assert (=> bs!1912798 m!7966548))

(assert (=> start!711024 d!2266443))

(declare-fun d!2266445 () Bool)

(declare-fun choose!56520 ((Set Context!15600) Int) (Set Context!15600))

(assert (=> d!2266445 (= (flatMap!2955 lt!2597656 lambda!450223) (choose!56520 lt!2597656 lambda!450223))))

(declare-fun bs!1912799 () Bool)

(assert (= bs!1912799 d!2266445))

(declare-fun m!7966550 () Bool)

(assert (=> bs!1912799 m!7966550))

(assert (=> b!7294779 d!2266445))

(assert (=> b!7294779 d!2266429))

(declare-fun b!7294913 () Bool)

(declare-fun e!4369295 () (Set Context!15600))

(assert (=> b!7294913 (= e!4369295 (as set.empty (Set Context!15600)))))

(declare-fun bm!664500 () Bool)

(declare-fun call!664505 () (Set Context!15600))

(assert (=> bm!664500 (= call!664505 (derivationStepZipperDown!2766 (h!77361 (exprs!8300 lt!2597647)) (Context!15601 (t!385111 (exprs!8300 lt!2597647))) (h!77362 s!7854)))))

(declare-fun b!7294914 () Bool)

(declare-fun e!4369294 () (Set Context!15600))

(assert (=> b!7294914 (= e!4369294 (set.union call!664505 (derivationStepZipperUp!2610 (Context!15601 (t!385111 (exprs!8300 lt!2597647))) (h!77362 s!7854))))))

(declare-fun b!7294915 () Bool)

(assert (=> b!7294915 (= e!4369294 e!4369295)))

(declare-fun c!1355687 () Bool)

(assert (=> b!7294915 (= c!1355687 (is-Cons!70913 (exprs!8300 lt!2597647)))))

(declare-fun b!7294917 () Bool)

(assert (=> b!7294917 (= e!4369295 call!664505)))

(declare-fun b!7294916 () Bool)

(declare-fun e!4369296 () Bool)

(assert (=> b!7294916 (= e!4369296 (nullable!8037 (h!77361 (exprs!8300 lt!2597647))))))

(declare-fun d!2266447 () Bool)

(declare-fun c!1355686 () Bool)

(assert (=> d!2266447 (= c!1355686 e!4369296)))

(declare-fun res!2950719 () Bool)

(assert (=> d!2266447 (=> (not res!2950719) (not e!4369296))))

(assert (=> d!2266447 (= res!2950719 (is-Cons!70913 (exprs!8300 lt!2597647)))))

(assert (=> d!2266447 (= (derivationStepZipperUp!2610 lt!2597647 (h!77362 s!7854)) e!4369294)))

(assert (= (and d!2266447 res!2950719) b!7294916))

(assert (= (and d!2266447 c!1355686) b!7294914))

(assert (= (and d!2266447 (not c!1355686)) b!7294915))

(assert (= (and b!7294915 c!1355687) b!7294917))

(assert (= (and b!7294915 (not c!1355687)) b!7294913))

(assert (= (or b!7294914 b!7294917) bm!664500))

(declare-fun m!7966552 () Bool)

(assert (=> bm!664500 m!7966552))

(declare-fun m!7966554 () Bool)

(assert (=> b!7294914 m!7966554))

(declare-fun m!7966556 () Bool)

(assert (=> b!7294916 m!7966556))

(assert (=> b!7294779 d!2266447))

(declare-fun b!7294919 () Bool)

(declare-fun e!4369298 () List!71037)

(assert (=> b!7294919 (= e!4369298 (Cons!70913 (h!77361 (exprs!8300 ct1!250)) (++!16750 (t!385111 (exprs!8300 ct1!250)) (exprs!8300 ct2!346))))))

(declare-fun b!7294920 () Bool)

(declare-fun res!2950721 () Bool)

(declare-fun e!4369297 () Bool)

(assert (=> b!7294920 (=> (not res!2950721) (not e!4369297))))

(declare-fun lt!2597716 () List!71037)

(assert (=> b!7294920 (= res!2950721 (= (size!41857 lt!2597716) (+ (size!41857 (exprs!8300 ct1!250)) (size!41857 (exprs!8300 ct2!346)))))))

(declare-fun b!7294918 () Bool)

(assert (=> b!7294918 (= e!4369298 (exprs!8300 ct2!346))))

(declare-fun d!2266449 () Bool)

(assert (=> d!2266449 e!4369297))

(declare-fun res!2950720 () Bool)

(assert (=> d!2266449 (=> (not res!2950720) (not e!4369297))))

(assert (=> d!2266449 (= res!2950720 (= (content!14811 lt!2597716) (set.union (content!14811 (exprs!8300 ct1!250)) (content!14811 (exprs!8300 ct2!346)))))))

(assert (=> d!2266449 (= lt!2597716 e!4369298)))

(declare-fun c!1355688 () Bool)

(assert (=> d!2266449 (= c!1355688 (is-Nil!70913 (exprs!8300 ct1!250)))))

(assert (=> d!2266449 (= (++!16750 (exprs!8300 ct1!250) (exprs!8300 ct2!346)) lt!2597716)))

(declare-fun b!7294921 () Bool)

(assert (=> b!7294921 (= e!4369297 (or (not (= (exprs!8300 ct2!346) Nil!70913)) (= lt!2597716 (exprs!8300 ct1!250))))))

(assert (= (and d!2266449 c!1355688) b!7294918))

(assert (= (and d!2266449 (not c!1355688)) b!7294919))

(assert (= (and d!2266449 res!2950720) b!7294920))

(assert (= (and b!7294920 res!2950721) b!7294921))

(declare-fun m!7966558 () Bool)

(assert (=> b!7294919 m!7966558))

(declare-fun m!7966560 () Bool)

(assert (=> b!7294920 m!7966560))

(declare-fun m!7966562 () Bool)

(assert (=> b!7294920 m!7966562))

(assert (=> b!7294920 m!7966514))

(declare-fun m!7966564 () Bool)

(assert (=> d!2266449 m!7966564))

(declare-fun m!7966566 () Bool)

(assert (=> d!2266449 m!7966566))

(assert (=> d!2266449 m!7966520))

(assert (=> b!7294779 d!2266449))

(declare-fun d!2266451 () Bool)

(declare-fun dynLambda!28999 (Int Context!15600) (Set Context!15600))

(assert (=> d!2266451 (= (flatMap!2955 lt!2597656 lambda!450223) (dynLambda!28999 lambda!450223 ct1!250))))

(declare-fun lt!2597719 () Unit!164318)

(declare-fun choose!56521 ((Set Context!15600) Context!15600 Int) Unit!164318)

(assert (=> d!2266451 (= lt!2597719 (choose!56521 lt!2597656 ct1!250 lambda!450223))))

(assert (=> d!2266451 (= lt!2597656 (set.insert ct1!250 (as set.empty (Set Context!15600))))))

(assert (=> d!2266451 (= (lemmaFlatMapOnSingletonSet!2353 lt!2597656 ct1!250 lambda!450223) lt!2597719)))

(declare-fun b_lambda!281261 () Bool)

(assert (=> (not b_lambda!281261) (not d!2266451)))

(declare-fun bs!1912800 () Bool)

(assert (= bs!1912800 d!2266451))

(assert (=> bs!1912800 m!7966384))

(declare-fun m!7966568 () Bool)

(assert (=> bs!1912800 m!7966568))

(declare-fun m!7966570 () Bool)

(assert (=> bs!1912800 m!7966570))

(assert (=> bs!1912800 m!7966388))

(assert (=> b!7294779 d!2266451))

(declare-fun d!2266453 () Bool)

(assert (=> d!2266453 (forall!17683 (++!16750 (exprs!8300 ct1!250) (exprs!8300 ct2!346)) lambda!450222)))

(declare-fun lt!2597720 () Unit!164318)

(assert (=> d!2266453 (= lt!2597720 (choose!56519 (exprs!8300 ct1!250) (exprs!8300 ct2!346) lambda!450222))))

(assert (=> d!2266453 (forall!17683 (exprs!8300 ct1!250) lambda!450222)))

(assert (=> d!2266453 (= (lemmaConcatPreservesForall!1607 (exprs!8300 ct1!250) (exprs!8300 ct2!346) lambda!450222) lt!2597720)))

(declare-fun bs!1912801 () Bool)

(assert (= bs!1912801 d!2266453))

(assert (=> bs!1912801 m!7966392))

(assert (=> bs!1912801 m!7966392))

(declare-fun m!7966572 () Bool)

(assert (=> bs!1912801 m!7966572))

(declare-fun m!7966574 () Bool)

(assert (=> bs!1912801 m!7966574))

(declare-fun m!7966576 () Bool)

(assert (=> bs!1912801 m!7966576))

(assert (=> b!7294779 d!2266453))

(declare-fun bs!1912802 () Bool)

(declare-fun d!2266455 () Bool)

(assert (= bs!1912802 (and d!2266455 b!7294779)))

(declare-fun lambda!450259 () Int)

(assert (=> bs!1912802 (= lambda!450259 lambda!450223)))

(assert (=> d!2266455 true))

(assert (=> d!2266455 (= (derivationStepZipper!3593 lt!2597654 (h!77362 s!7854)) (flatMap!2955 lt!2597654 lambda!450259))))

(declare-fun bs!1912803 () Bool)

(assert (= bs!1912803 d!2266455))

(declare-fun m!7966578 () Bool)

(assert (=> bs!1912803 m!7966578))

(assert (=> b!7294779 d!2266455))

(declare-fun d!2266457 () Bool)

(assert (=> d!2266457 (= (flatMap!2955 lt!2597654 lambda!450223) (choose!56520 lt!2597654 lambda!450223))))

(declare-fun bs!1912804 () Bool)

(assert (= bs!1912804 d!2266457))

(declare-fun m!7966580 () Bool)

(assert (=> bs!1912804 m!7966580))

(assert (=> b!7294779 d!2266457))

(declare-fun d!2266459 () Bool)

(assert (=> d!2266459 (= (flatMap!2955 lt!2597654 lambda!450223) (dynLambda!28999 lambda!450223 lt!2597647))))

(declare-fun lt!2597721 () Unit!164318)

(assert (=> d!2266459 (= lt!2597721 (choose!56521 lt!2597654 lt!2597647 lambda!450223))))

(assert (=> d!2266459 (= lt!2597654 (set.insert lt!2597647 (as set.empty (Set Context!15600))))))

(assert (=> d!2266459 (= (lemmaFlatMapOnSingletonSet!2353 lt!2597654 lt!2597647 lambda!450223) lt!2597721)))

(declare-fun b_lambda!281263 () Bool)

(assert (=> (not b_lambda!281263) (not d!2266459)))

(declare-fun bs!1912805 () Bool)

(assert (= bs!1912805 d!2266459))

(assert (=> bs!1912805 m!7966382))

(declare-fun m!7966582 () Bool)

(assert (=> bs!1912805 m!7966582))

(declare-fun m!7966584 () Bool)

(assert (=> bs!1912805 m!7966584))

(assert (=> bs!1912805 m!7966378))

(assert (=> b!7294779 d!2266459))

(declare-fun b!7294938 () Bool)

(declare-fun e!4369307 () Bool)

(declare-fun tp!2062211 () Bool)

(assert (=> b!7294938 (= e!4369307 (and tp_is_empty!47185 tp!2062211))))

(assert (=> b!7294777 (= tp!2062197 e!4369307)))

(assert (= (and b!7294777 (is-Cons!70914 (t!385112 s!7854))) b!7294938))

(declare-fun b!7294943 () Bool)

(declare-fun e!4369310 () Bool)

(declare-fun tp!2062216 () Bool)

(declare-fun tp!2062217 () Bool)

(assert (=> b!7294943 (= e!4369310 (and tp!2062216 tp!2062217))))

(assert (=> b!7294768 (= tp!2062198 e!4369310)))

(assert (= (and b!7294768 (is-Cons!70913 (exprs!8300 ct1!250))) b!7294943))

(declare-fun b!7294944 () Bool)

(declare-fun e!4369311 () Bool)

(declare-fun tp!2062218 () Bool)

(declare-fun tp!2062219 () Bool)

(assert (=> b!7294944 (= e!4369311 (and tp!2062218 tp!2062219))))

(assert (=> b!7294775 (= tp!2062199 e!4369311)))

(assert (= (and b!7294775 (is-Cons!70913 (exprs!8300 ct2!346))) b!7294944))

(declare-fun b_lambda!281265 () Bool)

(assert (= b_lambda!281261 (or b!7294779 b_lambda!281265)))

(declare-fun bs!1912806 () Bool)

(declare-fun d!2266461 () Bool)

(assert (= bs!1912806 (and d!2266461 b!7294779)))

(assert (=> bs!1912806 (= (dynLambda!28999 lambda!450223 ct1!250) (derivationStepZipperUp!2610 ct1!250 (h!77362 s!7854)))))

(assert (=> bs!1912806 m!7966354))

(assert (=> d!2266451 d!2266461))

(declare-fun b_lambda!281267 () Bool)

(assert (= b_lambda!281263 (or b!7294779 b_lambda!281267)))

(declare-fun bs!1912807 () Bool)

(declare-fun d!2266463 () Bool)

(assert (= bs!1912807 (and d!2266463 b!7294779)))

(assert (=> bs!1912807 (= (dynLambda!28999 lambda!450223 lt!2597647) (derivationStepZipperUp!2610 lt!2597647 (h!77362 s!7854)))))

(assert (=> bs!1912807 m!7966380))

(assert (=> d!2266459 d!2266463))

(push 1)

(assert (not b!7294905))

(assert (not bm!664484))

(assert (not b!7294943))

(assert (not b!7294938))

(assert (not bm!664486))

(assert (not d!2266413))

(assert (not b!7294944))

(assert (not b!7294882))

(assert (not b!7294914))

(assert (not d!2266453))

(assert (not b_lambda!281267))

(assert (not b!7294900))

(assert (not d!2266445))

(assert (not b!7294911))

(assert (not b!7294875))

(assert (not bm!664499))

(assert (not b!7294920))

(assert (not b!7294866))

(assert (not bm!664495))

(assert (not d!2266403))

(assert (not d!2266421))

(assert (not bm!664496))

(assert tp_is_empty!47185)

(assert (not d!2266443))

(assert (not b_lambda!281265))

(assert (not b!7294864))

(assert (not bs!1912806))

(assert (not b!7294919))

(assert (not b!7294873))

(assert (not b!7294847))

(assert (not d!2266451))

(assert (not d!2266459))

(assert (not b!7294916))

(assert (not d!2266449))

(assert (not bm!664492))

(assert (not b!7294912))

(assert (not bs!1912807))

(assert (not b!7294903))

(assert (not d!2266455))

(assert (not bm!664500))

(assert (not d!2266435))

(assert (not bm!664485))

(assert (not d!2266427))

(assert (not d!2266415))

(assert (not b!7294899))

(assert (not bm!664494))

(assert (not d!2266457))

(assert (not d!2266439))

(assert (not bm!664491))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!2266503 () Bool)

(assert (=> d!2266503 true))

(declare-fun setRes!53694 () Bool)

(assert (=> d!2266503 setRes!53694))

(declare-fun condSetEmpty!53694 () Bool)

(declare-fun res!2950742 () (Set Context!15600))

(assert (=> d!2266503 (= condSetEmpty!53694 (= res!2950742 (as set.empty (Set Context!15600))))))

(assert (=> d!2266503 (= (choose!56520 lt!2597654 lambda!450223) res!2950742)))

(declare-fun setIsEmpty!53694 () Bool)

(assert (=> setIsEmpty!53694 setRes!53694))

(declare-fun setElem!53694 () Context!15600)

(declare-fun setNonEmpty!53694 () Bool)

(declare-fun e!4369365 () Bool)

(declare-fun tp!2062236 () Bool)

(assert (=> setNonEmpty!53694 (= setRes!53694 (and tp!2062236 (inv!90161 setElem!53694) e!4369365))))

(declare-fun setRest!53694 () (Set Context!15600))

(assert (=> setNonEmpty!53694 (= res!2950742 (set.union (set.insert setElem!53694 (as set.empty (Set Context!15600))) setRest!53694))))

(declare-fun b!7295040 () Bool)

(declare-fun tp!2062235 () Bool)

(assert (=> b!7295040 (= e!4369365 tp!2062235)))

(assert (= (and d!2266503 condSetEmpty!53694) setIsEmpty!53694))

(assert (= (and d!2266503 (not condSetEmpty!53694)) setNonEmpty!53694))

(assert (= setNonEmpty!53694 b!7295040))

(declare-fun m!7966678 () Bool)

(assert (=> setNonEmpty!53694 m!7966678))

(assert (=> d!2266457 d!2266503))

(declare-fun d!2266505 () Bool)

(assert (=> d!2266505 (= (flatMap!2955 lt!2597654 lambda!450259) (choose!56520 lt!2597654 lambda!450259))))

(declare-fun bs!1912823 () Bool)

(assert (= bs!1912823 d!2266505))

(declare-fun m!7966680 () Bool)

(assert (=> bs!1912823 m!7966680))

(assert (=> d!2266455 d!2266505))

(declare-fun d!2266507 () Bool)

(assert (=> d!2266507 (= (isEmpty!40791 s!7854) (is-Nil!70914 s!7854))))

(assert (=> d!2266435 d!2266507))

(declare-fun d!2266509 () Bool)

(declare-fun lt!2597736 () Int)

(assert (=> d!2266509 (>= lt!2597736 0)))

(declare-fun e!4369368 () Int)

(assert (=> d!2266509 (= lt!2597736 e!4369368)))

(declare-fun c!1355731 () Bool)

(assert (=> d!2266509 (= c!1355731 (is-Nil!70913 lt!2597715))))

(assert (=> d!2266509 (= (size!41857 lt!2597715) lt!2597736)))

(declare-fun b!7295045 () Bool)

(assert (=> b!7295045 (= e!4369368 0)))

(declare-fun b!7295046 () Bool)

(assert (=> b!7295046 (= e!4369368 (+ 1 (size!41857 (t!385111 lt!2597715))))))

(assert (= (and d!2266509 c!1355731) b!7295045))

(assert (= (and d!2266509 (not c!1355731)) b!7295046))

(declare-fun m!7966682 () Bool)

(assert (=> b!7295046 m!7966682))

(assert (=> b!7294900 d!2266509))

(declare-fun d!2266511 () Bool)

(declare-fun lt!2597737 () Int)

(assert (=> d!2266511 (>= lt!2597737 0)))

(declare-fun e!4369369 () Int)

(assert (=> d!2266511 (= lt!2597737 e!4369369)))

(declare-fun c!1355732 () Bool)

(assert (=> d!2266511 (= c!1355732 (is-Nil!70913 lt!2597649))))

(assert (=> d!2266511 (= (size!41857 lt!2597649) lt!2597737)))

(declare-fun b!7295047 () Bool)

(assert (=> b!7295047 (= e!4369369 0)))

(declare-fun b!7295048 () Bool)

(assert (=> b!7295048 (= e!4369369 (+ 1 (size!41857 (t!385111 lt!2597649))))))

(assert (= (and d!2266511 c!1355732) b!7295047))

(assert (= (and d!2266511 (not c!1355732)) b!7295048))

(declare-fun m!7966684 () Bool)

(assert (=> b!7295048 m!7966684))

(assert (=> b!7294900 d!2266511))

(declare-fun d!2266513 () Bool)

(declare-fun lt!2597738 () Int)

(assert (=> d!2266513 (>= lt!2597738 0)))

(declare-fun e!4369370 () Int)

(assert (=> d!2266513 (= lt!2597738 e!4369370)))

(declare-fun c!1355733 () Bool)

(assert (=> d!2266513 (= c!1355733 (is-Nil!70913 (exprs!8300 ct2!346)))))

(assert (=> d!2266513 (= (size!41857 (exprs!8300 ct2!346)) lt!2597738)))

(declare-fun b!7295049 () Bool)

(assert (=> b!7295049 (= e!4369370 0)))

(declare-fun b!7295050 () Bool)

(assert (=> b!7295050 (= e!4369370 (+ 1 (size!41857 (t!385111 (exprs!8300 ct2!346)))))))

(assert (= (and d!2266513 c!1355733) b!7295049))

(assert (= (and d!2266513 (not c!1355733)) b!7295050))

(declare-fun m!7966686 () Bool)

(assert (=> b!7295050 m!7966686))

(assert (=> b!7294900 d!2266513))

(declare-fun b!7295052 () Bool)

(declare-fun e!4369372 () List!71037)

(assert (=> b!7295052 (= e!4369372 (Cons!70913 (h!77361 (t!385111 lt!2597649)) (++!16750 (t!385111 (t!385111 lt!2597649)) (exprs!8300 ct2!346))))))

(declare-fun b!7295053 () Bool)

(declare-fun res!2950744 () Bool)

(declare-fun e!4369371 () Bool)

(assert (=> b!7295053 (=> (not res!2950744) (not e!4369371))))

(declare-fun lt!2597739 () List!71037)

(assert (=> b!7295053 (= res!2950744 (= (size!41857 lt!2597739) (+ (size!41857 (t!385111 lt!2597649)) (size!41857 (exprs!8300 ct2!346)))))))

(declare-fun b!7295051 () Bool)

(assert (=> b!7295051 (= e!4369372 (exprs!8300 ct2!346))))

(declare-fun d!2266515 () Bool)

(assert (=> d!2266515 e!4369371))

(declare-fun res!2950743 () Bool)

(assert (=> d!2266515 (=> (not res!2950743) (not e!4369371))))

(assert (=> d!2266515 (= res!2950743 (= (content!14811 lt!2597739) (set.union (content!14811 (t!385111 lt!2597649)) (content!14811 (exprs!8300 ct2!346)))))))

(assert (=> d!2266515 (= lt!2597739 e!4369372)))

(declare-fun c!1355734 () Bool)

(assert (=> d!2266515 (= c!1355734 (is-Nil!70913 (t!385111 lt!2597649)))))

(assert (=> d!2266515 (= (++!16750 (t!385111 lt!2597649) (exprs!8300 ct2!346)) lt!2597739)))

(declare-fun b!7295054 () Bool)

(assert (=> b!7295054 (= e!4369371 (or (not (= (exprs!8300 ct2!346) Nil!70913)) (= lt!2597739 (t!385111 lt!2597649))))))

(assert (= (and d!2266515 c!1355734) b!7295051))

(assert (= (and d!2266515 (not c!1355734)) b!7295052))

(assert (= (and d!2266515 res!2950743) b!7295053))

(assert (= (and b!7295053 res!2950744) b!7295054))

(declare-fun m!7966688 () Bool)

(assert (=> b!7295052 m!7966688))

(declare-fun m!7966690 () Bool)

(assert (=> b!7295053 m!7966690))

(assert (=> b!7295053 m!7966684))

(assert (=> b!7295053 m!7966514))

(declare-fun m!7966692 () Bool)

(assert (=> d!2266515 m!7966692))

(declare-fun m!7966694 () Bool)

(assert (=> d!2266515 m!7966694))

(assert (=> d!2266515 m!7966520))

(assert (=> b!7294899 d!2266515))

(declare-fun bm!664531 () Bool)

(declare-fun call!664540 () (Set Context!15600))

(declare-fun call!664541 () (Set Context!15600))

(assert (=> bm!664531 (= call!664540 call!664541)))

(declare-fun b!7295055 () Bool)

(declare-fun c!1355735 () Bool)

(declare-fun e!4369377 () Bool)

(assert (=> b!7295055 (= c!1355735 e!4369377)))

(declare-fun res!2950745 () Bool)

(assert (=> b!7295055 (=> (not res!2950745) (not e!4369377))))

(assert (=> b!7295055 (= res!2950745 (is-Concat!27705 (h!77361 (exprs!8300 lt!2597659))))))

(declare-fun e!4369375 () (Set Context!15600))

(declare-fun e!4369376 () (Set Context!15600))

(assert (=> b!7295055 (= e!4369375 e!4369376)))

(declare-fun b!7295056 () Bool)

(declare-fun e!4369378 () (Set Context!15600))

(assert (=> b!7295056 (= e!4369378 (set.insert (Context!15601 (t!385111 (exprs!8300 lt!2597659))) (as set.empty (Set Context!15600))))))

(declare-fun b!7295057 () Bool)

(declare-fun e!4369373 () (Set Context!15600))

(assert (=> b!7295057 (= e!4369373 call!664540)))

(declare-fun c!1355736 () Bool)

(declare-fun call!664538 () List!71037)

(declare-fun call!664539 () (Set Context!15600))

(declare-fun bm!664532 () Bool)

(declare-fun c!1355737 () Bool)

(assert (=> bm!664532 (= call!664539 (derivationStepZipperDown!2766 (ite c!1355737 (regOne!38233 (h!77361 (exprs!8300 lt!2597659))) (ite c!1355735 (regTwo!38232 (h!77361 (exprs!8300 lt!2597659))) (ite c!1355736 (regOne!38232 (h!77361 (exprs!8300 lt!2597659))) (reg!19189 (h!77361 (exprs!8300 lt!2597659)))))) (ite (or c!1355737 c!1355735) (Context!15601 (t!385111 (exprs!8300 lt!2597659))) (Context!15601 call!664538)) (h!77362 s!7854)))))

(declare-fun b!7295058 () Bool)

(declare-fun call!664537 () (Set Context!15600))

(assert (=> b!7295058 (= e!4369375 (set.union call!664539 call!664537))))

(declare-fun b!7295059 () Bool)

(declare-fun e!4369374 () (Set Context!15600))

(assert (=> b!7295059 (= e!4369374 call!664540)))

(declare-fun bm!664533 () Bool)

(declare-fun call!664536 () List!71037)

(assert (=> bm!664533 (= call!664537 (derivationStepZipperDown!2766 (ite c!1355737 (regTwo!38233 (h!77361 (exprs!8300 lt!2597659))) (regOne!38232 (h!77361 (exprs!8300 lt!2597659)))) (ite c!1355737 (Context!15601 (t!385111 (exprs!8300 lt!2597659))) (Context!15601 call!664536)) (h!77362 s!7854)))))

(declare-fun bm!664534 () Bool)

(assert (=> bm!664534 (= call!664536 ($colon$colon!2991 (exprs!8300 (Context!15601 (t!385111 (exprs!8300 lt!2597659)))) (ite (or c!1355735 c!1355736) (regTwo!38232 (h!77361 (exprs!8300 lt!2597659))) (h!77361 (exprs!8300 lt!2597659)))))))

(declare-fun b!7295060 () Bool)

(assert (=> b!7295060 (= e!4369377 (nullable!8037 (regOne!38232 (h!77361 (exprs!8300 lt!2597659)))))))

(declare-fun bm!664535 () Bool)

(assert (=> bm!664535 (= call!664541 call!664539)))

(declare-fun bm!664536 () Bool)

(assert (=> bm!664536 (= call!664538 call!664536)))

(declare-fun d!2266517 () Bool)

(declare-fun c!1355738 () Bool)

(assert (=> d!2266517 (= c!1355738 (and (is-ElementMatch!18860 (h!77361 (exprs!8300 lt!2597659))) (= (c!1355639 (h!77361 (exprs!8300 lt!2597659))) (h!77362 s!7854))))))

(assert (=> d!2266517 (= (derivationStepZipperDown!2766 (h!77361 (exprs!8300 lt!2597659)) (Context!15601 (t!385111 (exprs!8300 lt!2597659))) (h!77362 s!7854)) e!4369378)))

(declare-fun b!7295061 () Bool)

(assert (=> b!7295061 (= e!4369376 (set.union call!664537 call!664541))))

(declare-fun b!7295062 () Bool)

(assert (=> b!7295062 (= e!4369378 e!4369375)))

(assert (=> b!7295062 (= c!1355737 (is-Union!18860 (h!77361 (exprs!8300 lt!2597659))))))

(declare-fun b!7295063 () Bool)

(assert (=> b!7295063 (= e!4369374 (as set.empty (Set Context!15600)))))

(declare-fun b!7295064 () Bool)

(assert (=> b!7295064 (= e!4369376 e!4369373)))

(assert (=> b!7295064 (= c!1355736 (is-Concat!27705 (h!77361 (exprs!8300 lt!2597659))))))

(declare-fun b!7295065 () Bool)

(declare-fun c!1355739 () Bool)

(assert (=> b!7295065 (= c!1355739 (is-Star!18860 (h!77361 (exprs!8300 lt!2597659))))))

(assert (=> b!7295065 (= e!4369373 e!4369374)))

(assert (= (and d!2266517 c!1355738) b!7295056))

(assert (= (and d!2266517 (not c!1355738)) b!7295062))

(assert (= (and b!7295062 c!1355737) b!7295058))

(assert (= (and b!7295062 (not c!1355737)) b!7295055))

(assert (= (and b!7295055 res!2950745) b!7295060))

(assert (= (and b!7295055 c!1355735) b!7295061))

(assert (= (and b!7295055 (not c!1355735)) b!7295064))

(assert (= (and b!7295064 c!1355736) b!7295057))

(assert (= (and b!7295064 (not c!1355736)) b!7295065))

(assert (= (and b!7295065 c!1355739) b!7295059))

(assert (= (and b!7295065 (not c!1355739)) b!7295063))

(assert (= (or b!7295057 b!7295059) bm!664536))

(assert (= (or b!7295057 b!7295059) bm!664531))

(assert (= (or b!7295061 bm!664536) bm!664534))

(assert (= (or b!7295061 bm!664531) bm!664535))

(assert (= (or b!7295058 bm!664535) bm!664532))

(assert (= (or b!7295058 b!7295061) bm!664533))

(declare-fun m!7966696 () Bool)

(assert (=> bm!664534 m!7966696))

(declare-fun m!7966698 () Bool)

(assert (=> b!7295060 m!7966698))

(declare-fun m!7966700 () Bool)

(assert (=> b!7295056 m!7966700))

(declare-fun m!7966702 () Bool)

(assert (=> bm!664533 m!7966702))

(declare-fun m!7966704 () Bool)

(assert (=> bm!664532 m!7966704))

(assert (=> bm!664491 d!2266517))

(declare-fun b!7295066 () Bool)

(declare-fun e!4369380 () (Set Context!15600))

(assert (=> b!7295066 (= e!4369380 (as set.empty (Set Context!15600)))))

(declare-fun bm!664537 () Bool)

(declare-fun call!664542 () (Set Context!15600))

(assert (=> bm!664537 (= call!664542 (derivationStepZipperDown!2766 (h!77361 (exprs!8300 (Context!15601 (t!385111 (exprs!8300 lt!2597651))))) (Context!15601 (t!385111 (exprs!8300 (Context!15601 (t!385111 (exprs!8300 lt!2597651)))))) (h!77362 s!7854)))))

(declare-fun b!7295067 () Bool)

(declare-fun e!4369379 () (Set Context!15600))

(assert (=> b!7295067 (= e!4369379 (set.union call!664542 (derivationStepZipperUp!2610 (Context!15601 (t!385111 (exprs!8300 (Context!15601 (t!385111 (exprs!8300 lt!2597651)))))) (h!77362 s!7854))))))

(declare-fun b!7295068 () Bool)

(assert (=> b!7295068 (= e!4369379 e!4369380)))

(declare-fun c!1355741 () Bool)

(assert (=> b!7295068 (= c!1355741 (is-Cons!70913 (exprs!8300 (Context!15601 (t!385111 (exprs!8300 lt!2597651))))))))

(declare-fun b!7295070 () Bool)

(assert (=> b!7295070 (= e!4369380 call!664542)))

(declare-fun b!7295069 () Bool)

(declare-fun e!4369381 () Bool)

(assert (=> b!7295069 (= e!4369381 (nullable!8037 (h!77361 (exprs!8300 (Context!15601 (t!385111 (exprs!8300 lt!2597651)))))))))

(declare-fun d!2266519 () Bool)

(declare-fun c!1355740 () Bool)

(assert (=> d!2266519 (= c!1355740 e!4369381)))

(declare-fun res!2950746 () Bool)

(assert (=> d!2266519 (=> (not res!2950746) (not e!4369381))))

(assert (=> d!2266519 (= res!2950746 (is-Cons!70913 (exprs!8300 (Context!15601 (t!385111 (exprs!8300 lt!2597651))))))))

(assert (=> d!2266519 (= (derivationStepZipperUp!2610 (Context!15601 (t!385111 (exprs!8300 lt!2597651))) (h!77362 s!7854)) e!4369379)))

(assert (= (and d!2266519 res!2950746) b!7295069))

(assert (= (and d!2266519 c!1355740) b!7295067))

(assert (= (and d!2266519 (not c!1355740)) b!7295068))

(assert (= (and b!7295068 c!1355741) b!7295070))

(assert (= (and b!7295068 (not c!1355741)) b!7295066))

(assert (= (or b!7295067 b!7295070) bm!664537))

(declare-fun m!7966706 () Bool)

(assert (=> bm!664537 m!7966706))

(declare-fun m!7966708 () Bool)

(assert (=> b!7295067 m!7966708))

(declare-fun m!7966710 () Bool)

(assert (=> b!7295069 m!7966710))

(assert (=> b!7294873 d!2266519))

(declare-fun d!2266521 () Bool)

(declare-fun c!1355744 () Bool)

(assert (=> d!2266521 (= c!1355744 (is-Nil!70913 lt!2597715))))

(declare-fun e!4369384 () (Set Regex!18860))

(assert (=> d!2266521 (= (content!14811 lt!2597715) e!4369384)))

(declare-fun b!7295075 () Bool)

(assert (=> b!7295075 (= e!4369384 (as set.empty (Set Regex!18860)))))

(declare-fun b!7295076 () Bool)

(assert (=> b!7295076 (= e!4369384 (set.union (set.insert (h!77361 lt!2597715) (as set.empty (Set Regex!18860))) (content!14811 (t!385111 lt!2597715))))))

(assert (= (and d!2266521 c!1355744) b!7295075))

(assert (= (and d!2266521 (not c!1355744)) b!7295076))

(declare-fun m!7966712 () Bool)

(assert (=> b!7295076 m!7966712))

(declare-fun m!7966714 () Bool)

(assert (=> b!7295076 m!7966714))

(assert (=> d!2266421 d!2266521))

(declare-fun d!2266523 () Bool)

(declare-fun c!1355745 () Bool)

(assert (=> d!2266523 (= c!1355745 (is-Nil!70913 lt!2597649))))

(declare-fun e!4369385 () (Set Regex!18860))

(assert (=> d!2266523 (= (content!14811 lt!2597649) e!4369385)))

(declare-fun b!7295077 () Bool)

(assert (=> b!7295077 (= e!4369385 (as set.empty (Set Regex!18860)))))

(declare-fun b!7295078 () Bool)

(assert (=> b!7295078 (= e!4369385 (set.union (set.insert (h!77361 lt!2597649) (as set.empty (Set Regex!18860))) (content!14811 (t!385111 lt!2597649))))))

(assert (= (and d!2266523 c!1355745) b!7295077))

(assert (= (and d!2266523 (not c!1355745)) b!7295078))

(declare-fun m!7966716 () Bool)

(assert (=> b!7295078 m!7966716))

(assert (=> b!7295078 m!7966694))

(assert (=> d!2266421 d!2266523))

(declare-fun d!2266525 () Bool)

(declare-fun c!1355746 () Bool)

(assert (=> d!2266525 (= c!1355746 (is-Nil!70913 (exprs!8300 ct2!346)))))

(declare-fun e!4369386 () (Set Regex!18860))

(assert (=> d!2266525 (= (content!14811 (exprs!8300 ct2!346)) e!4369386)))

(declare-fun b!7295079 () Bool)

(assert (=> b!7295079 (= e!4369386 (as set.empty (Set Regex!18860)))))

(declare-fun b!7295080 () Bool)

(assert (=> b!7295080 (= e!4369386 (set.union (set.insert (h!77361 (exprs!8300 ct2!346)) (as set.empty (Set Regex!18860))) (content!14811 (t!385111 (exprs!8300 ct2!346)))))))

(assert (= (and d!2266525 c!1355746) b!7295079))

(assert (= (and d!2266525 (not c!1355746)) b!7295080))

(declare-fun m!7966718 () Bool)

(assert (=> b!7295080 m!7966718))

(declare-fun m!7966720 () Bool)

(assert (=> b!7295080 m!7966720))

(assert (=> d!2266421 d!2266525))

(declare-fun b!7295081 () Bool)

(declare-fun e!4369388 () (Set Context!15600))

(assert (=> b!7295081 (= e!4369388 (as set.empty (Set Context!15600)))))

(declare-fun bm!664538 () Bool)

(declare-fun call!664543 () (Set Context!15600))

(assert (=> bm!664538 (= call!664543 (derivationStepZipperDown!2766 (h!77361 (exprs!8300 (Context!15601 (t!385111 (exprs!8300 lt!2597647))))) (Context!15601 (t!385111 (exprs!8300 (Context!15601 (t!385111 (exprs!8300 lt!2597647)))))) (h!77362 s!7854)))))

(declare-fun e!4369387 () (Set Context!15600))

(declare-fun b!7295082 () Bool)

(assert (=> b!7295082 (= e!4369387 (set.union call!664543 (derivationStepZipperUp!2610 (Context!15601 (t!385111 (exprs!8300 (Context!15601 (t!385111 (exprs!8300 lt!2597647)))))) (h!77362 s!7854))))))

(declare-fun b!7295083 () Bool)

(assert (=> b!7295083 (= e!4369387 e!4369388)))

(declare-fun c!1355748 () Bool)

(assert (=> b!7295083 (= c!1355748 (is-Cons!70913 (exprs!8300 (Context!15601 (t!385111 (exprs!8300 lt!2597647))))))))

(declare-fun b!7295085 () Bool)

(assert (=> b!7295085 (= e!4369388 call!664543)))

(declare-fun b!7295084 () Bool)

(declare-fun e!4369389 () Bool)

(assert (=> b!7295084 (= e!4369389 (nullable!8037 (h!77361 (exprs!8300 (Context!15601 (t!385111 (exprs!8300 lt!2597647)))))))))

(declare-fun d!2266527 () Bool)

(declare-fun c!1355747 () Bool)

(assert (=> d!2266527 (= c!1355747 e!4369389)))

(declare-fun res!2950747 () Bool)

(assert (=> d!2266527 (=> (not res!2950747) (not e!4369389))))

(assert (=> d!2266527 (= res!2950747 (is-Cons!70913 (exprs!8300 (Context!15601 (t!385111 (exprs!8300 lt!2597647))))))))

(assert (=> d!2266527 (= (derivationStepZipperUp!2610 (Context!15601 (t!385111 (exprs!8300 lt!2597647))) (h!77362 s!7854)) e!4369387)))

(assert (= (and d!2266527 res!2950747) b!7295084))

(assert (= (and d!2266527 c!1355747) b!7295082))

(assert (= (and d!2266527 (not c!1355747)) b!7295083))

(assert (= (and b!7295083 c!1355748) b!7295085))

(assert (= (and b!7295083 (not c!1355748)) b!7295081))

(assert (= (or b!7295082 b!7295085) bm!664538))

(declare-fun m!7966722 () Bool)

(assert (=> bm!664538 m!7966722))

(declare-fun m!7966724 () Bool)

(assert (=> b!7295082 m!7966724))

(declare-fun m!7966726 () Bool)

(assert (=> b!7295084 m!7966726))

(assert (=> b!7294914 d!2266527))

(declare-fun bm!664539 () Bool)

(declare-fun call!664548 () (Set Context!15600))

(declare-fun call!664549 () (Set Context!15600))

(assert (=> bm!664539 (= call!664548 call!664549)))

(declare-fun b!7295086 () Bool)

(declare-fun c!1355749 () Bool)

(declare-fun e!4369394 () Bool)

(assert (=> b!7295086 (= c!1355749 e!4369394)))

(declare-fun res!2950748 () Bool)

(assert (=> b!7295086 (=> (not res!2950748) (not e!4369394))))

(assert (=> b!7295086 (= res!2950748 (is-Concat!27705 (ite c!1355658 (regOne!38233 (h!77361 (exprs!8300 ct1!250))) (ite c!1355656 (regTwo!38232 (h!77361 (exprs!8300 ct1!250))) (ite c!1355657 (regOne!38232 (h!77361 (exprs!8300 ct1!250))) (reg!19189 (h!77361 (exprs!8300 ct1!250))))))))))

(declare-fun e!4369392 () (Set Context!15600))

(declare-fun e!4369393 () (Set Context!15600))

(assert (=> b!7295086 (= e!4369392 e!4369393)))

(declare-fun e!4369395 () (Set Context!15600))

(declare-fun b!7295087 () Bool)

(assert (=> b!7295087 (= e!4369395 (set.insert (ite (or c!1355658 c!1355656) lt!2597659 (Context!15601 call!664490)) (as set.empty (Set Context!15600))))))

(declare-fun b!7295088 () Bool)

(declare-fun e!4369390 () (Set Context!15600))

(assert (=> b!7295088 (= e!4369390 call!664548)))

(declare-fun call!664546 () List!71037)

(declare-fun call!664547 () (Set Context!15600))

(declare-fun c!1355751 () Bool)

(declare-fun c!1355750 () Bool)

(declare-fun bm!664540 () Bool)

(assert (=> bm!664540 (= call!664547 (derivationStepZipperDown!2766 (ite c!1355751 (regOne!38233 (ite c!1355658 (regOne!38233 (h!77361 (exprs!8300 ct1!250))) (ite c!1355656 (regTwo!38232 (h!77361 (exprs!8300 ct1!250))) (ite c!1355657 (regOne!38232 (h!77361 (exprs!8300 ct1!250))) (reg!19189 (h!77361 (exprs!8300 ct1!250))))))) (ite c!1355749 (regTwo!38232 (ite c!1355658 (regOne!38233 (h!77361 (exprs!8300 ct1!250))) (ite c!1355656 (regTwo!38232 (h!77361 (exprs!8300 ct1!250))) (ite c!1355657 (regOne!38232 (h!77361 (exprs!8300 ct1!250))) (reg!19189 (h!77361 (exprs!8300 ct1!250))))))) (ite c!1355750 (regOne!38232 (ite c!1355658 (regOne!38233 (h!77361 (exprs!8300 ct1!250))) (ite c!1355656 (regTwo!38232 (h!77361 (exprs!8300 ct1!250))) (ite c!1355657 (regOne!38232 (h!77361 (exprs!8300 ct1!250))) (reg!19189 (h!77361 (exprs!8300 ct1!250))))))) (reg!19189 (ite c!1355658 (regOne!38233 (h!77361 (exprs!8300 ct1!250))) (ite c!1355656 (regTwo!38232 (h!77361 (exprs!8300 ct1!250))) (ite c!1355657 (regOne!38232 (h!77361 (exprs!8300 ct1!250))) (reg!19189 (h!77361 (exprs!8300 ct1!250)))))))))) (ite (or c!1355751 c!1355749) (ite (or c!1355658 c!1355656) lt!2597659 (Context!15601 call!664490)) (Context!15601 call!664546)) (h!77362 s!7854)))))

(declare-fun b!7295089 () Bool)

(declare-fun call!664545 () (Set Context!15600))

(assert (=> b!7295089 (= e!4369392 (set.union call!664547 call!664545))))

(declare-fun b!7295090 () Bool)

(declare-fun e!4369391 () (Set Context!15600))

(assert (=> b!7295090 (= e!4369391 call!664548)))

(declare-fun bm!664541 () Bool)

(declare-fun call!664544 () List!71037)

(assert (=> bm!664541 (= call!664545 (derivationStepZipperDown!2766 (ite c!1355751 (regTwo!38233 (ite c!1355658 (regOne!38233 (h!77361 (exprs!8300 ct1!250))) (ite c!1355656 (regTwo!38232 (h!77361 (exprs!8300 ct1!250))) (ite c!1355657 (regOne!38232 (h!77361 (exprs!8300 ct1!250))) (reg!19189 (h!77361 (exprs!8300 ct1!250))))))) (regOne!38232 (ite c!1355658 (regOne!38233 (h!77361 (exprs!8300 ct1!250))) (ite c!1355656 (regTwo!38232 (h!77361 (exprs!8300 ct1!250))) (ite c!1355657 (regOne!38232 (h!77361 (exprs!8300 ct1!250))) (reg!19189 (h!77361 (exprs!8300 ct1!250)))))))) (ite c!1355751 (ite (or c!1355658 c!1355656) lt!2597659 (Context!15601 call!664490)) (Context!15601 call!664544)) (h!77362 s!7854)))))

(declare-fun bm!664542 () Bool)

(assert (=> bm!664542 (= call!664544 ($colon$colon!2991 (exprs!8300 (ite (or c!1355658 c!1355656) lt!2597659 (Context!15601 call!664490))) (ite (or c!1355749 c!1355750) (regTwo!38232 (ite c!1355658 (regOne!38233 (h!77361 (exprs!8300 ct1!250))) (ite c!1355656 (regTwo!38232 (h!77361 (exprs!8300 ct1!250))) (ite c!1355657 (regOne!38232 (h!77361 (exprs!8300 ct1!250))) (reg!19189 (h!77361 (exprs!8300 ct1!250))))))) (ite c!1355658 (regOne!38233 (h!77361 (exprs!8300 ct1!250))) (ite c!1355656 (regTwo!38232 (h!77361 (exprs!8300 ct1!250))) (ite c!1355657 (regOne!38232 (h!77361 (exprs!8300 ct1!250))) (reg!19189 (h!77361 (exprs!8300 ct1!250)))))))))))

(declare-fun b!7295091 () Bool)

(assert (=> b!7295091 (= e!4369394 (nullable!8037 (regOne!38232 (ite c!1355658 (regOne!38233 (h!77361 (exprs!8300 ct1!250))) (ite c!1355656 (regTwo!38232 (h!77361 (exprs!8300 ct1!250))) (ite c!1355657 (regOne!38232 (h!77361 (exprs!8300 ct1!250))) (reg!19189 (h!77361 (exprs!8300 ct1!250)))))))))))

(declare-fun bm!664543 () Bool)

(assert (=> bm!664543 (= call!664549 call!664547)))

(declare-fun bm!664544 () Bool)

(assert (=> bm!664544 (= call!664546 call!664544)))

(declare-fun c!1355752 () Bool)

(declare-fun d!2266529 () Bool)

(assert (=> d!2266529 (= c!1355752 (and (is-ElementMatch!18860 (ite c!1355658 (regOne!38233 (h!77361 (exprs!8300 ct1!250))) (ite c!1355656 (regTwo!38232 (h!77361 (exprs!8300 ct1!250))) (ite c!1355657 (regOne!38232 (h!77361 (exprs!8300 ct1!250))) (reg!19189 (h!77361 (exprs!8300 ct1!250))))))) (= (c!1355639 (ite c!1355658 (regOne!38233 (h!77361 (exprs!8300 ct1!250))) (ite c!1355656 (regTwo!38232 (h!77361 (exprs!8300 ct1!250))) (ite c!1355657 (regOne!38232 (h!77361 (exprs!8300 ct1!250))) (reg!19189 (h!77361 (exprs!8300 ct1!250))))))) (h!77362 s!7854))))))

(assert (=> d!2266529 (= (derivationStepZipperDown!2766 (ite c!1355658 (regOne!38233 (h!77361 (exprs!8300 ct1!250))) (ite c!1355656 (regTwo!38232 (h!77361 (exprs!8300 ct1!250))) (ite c!1355657 (regOne!38232 (h!77361 (exprs!8300 ct1!250))) (reg!19189 (h!77361 (exprs!8300 ct1!250)))))) (ite (or c!1355658 c!1355656) lt!2597659 (Context!15601 call!664490)) (h!77362 s!7854)) e!4369395)))

(declare-fun b!7295092 () Bool)

(assert (=> b!7295092 (= e!4369393 (set.union call!664545 call!664549))))

(declare-fun b!7295093 () Bool)

(assert (=> b!7295093 (= e!4369395 e!4369392)))

(assert (=> b!7295093 (= c!1355751 (is-Union!18860 (ite c!1355658 (regOne!38233 (h!77361 (exprs!8300 ct1!250))) (ite c!1355656 (regTwo!38232 (h!77361 (exprs!8300 ct1!250))) (ite c!1355657 (regOne!38232 (h!77361 (exprs!8300 ct1!250))) (reg!19189 (h!77361 (exprs!8300 ct1!250))))))))))

(declare-fun b!7295094 () Bool)

(assert (=> b!7295094 (= e!4369391 (as set.empty (Set Context!15600)))))

(declare-fun b!7295095 () Bool)

(assert (=> b!7295095 (= e!4369393 e!4369390)))

(assert (=> b!7295095 (= c!1355750 (is-Concat!27705 (ite c!1355658 (regOne!38233 (h!77361 (exprs!8300 ct1!250))) (ite c!1355656 (regTwo!38232 (h!77361 (exprs!8300 ct1!250))) (ite c!1355657 (regOne!38232 (h!77361 (exprs!8300 ct1!250))) (reg!19189 (h!77361 (exprs!8300 ct1!250))))))))))

(declare-fun b!7295096 () Bool)

(declare-fun c!1355753 () Bool)

(assert (=> b!7295096 (= c!1355753 (is-Star!18860 (ite c!1355658 (regOne!38233 (h!77361 (exprs!8300 ct1!250))) (ite c!1355656 (regTwo!38232 (h!77361 (exprs!8300 ct1!250))) (ite c!1355657 (regOne!38232 (h!77361 (exprs!8300 ct1!250))) (reg!19189 (h!77361 (exprs!8300 ct1!250))))))))))

(assert (=> b!7295096 (= e!4369390 e!4369391)))

(assert (= (and d!2266529 c!1355752) b!7295087))

(assert (= (and d!2266529 (not c!1355752)) b!7295093))

(assert (= (and b!7295093 c!1355751) b!7295089))

(assert (= (and b!7295093 (not c!1355751)) b!7295086))

(assert (= (and b!7295086 res!2950748) b!7295091))

(assert (= (and b!7295086 c!1355749) b!7295092))

(assert (= (and b!7295086 (not c!1355749)) b!7295095))

(assert (= (and b!7295095 c!1355750) b!7295088))

(assert (= (and b!7295095 (not c!1355750)) b!7295096))

(assert (= (and b!7295096 c!1355753) b!7295090))

(assert (= (and b!7295096 (not c!1355753)) b!7295094))

(assert (= (or b!7295088 b!7295090) bm!664544))

(assert (= (or b!7295088 b!7295090) bm!664539))

(assert (= (or b!7295092 bm!664544) bm!664542))

(assert (= (or b!7295092 bm!664539) bm!664543))

(assert (= (or b!7295089 bm!664543) bm!664540))

(assert (= (or b!7295089 b!7295092) bm!664541))

(declare-fun m!7966728 () Bool)

(assert (=> bm!664542 m!7966728))

(declare-fun m!7966730 () Bool)

(assert (=> b!7295091 m!7966730))

(declare-fun m!7966732 () Bool)

(assert (=> b!7295087 m!7966732))

(declare-fun m!7966734 () Bool)

(assert (=> bm!664541 m!7966734))

(declare-fun m!7966736 () Bool)

(assert (=> bm!664540 m!7966736))

(assert (=> bm!664484 d!2266529))

(declare-fun bm!664545 () Bool)

(declare-fun call!664554 () (Set Context!15600))

(declare-fun call!664555 () (Set Context!15600))

(assert (=> bm!664545 (= call!664554 call!664555)))

(declare-fun b!7295097 () Bool)

(declare-fun c!1355754 () Bool)

(declare-fun e!4369400 () Bool)

(assert (=> b!7295097 (= c!1355754 e!4369400)))

(declare-fun res!2950749 () Bool)

(assert (=> b!7295097 (=> (not res!2950749) (not e!4369400))))

(assert (=> b!7295097 (= res!2950749 (is-Concat!27705 (h!77361 (exprs!8300 lt!2597651))))))

(declare-fun e!4369398 () (Set Context!15600))

(declare-fun e!4369399 () (Set Context!15600))

(assert (=> b!7295097 (= e!4369398 e!4369399)))

(declare-fun b!7295098 () Bool)

(declare-fun e!4369401 () (Set Context!15600))

(assert (=> b!7295098 (= e!4369401 (set.insert (Context!15601 (t!385111 (exprs!8300 lt!2597651))) (as set.empty (Set Context!15600))))))

(declare-fun b!7295099 () Bool)

(declare-fun e!4369396 () (Set Context!15600))

(assert (=> b!7295099 (= e!4369396 call!664554)))

(declare-fun c!1355755 () Bool)

(declare-fun c!1355756 () Bool)

(declare-fun call!664553 () (Set Context!15600))

(declare-fun call!664552 () List!71037)

(declare-fun bm!664546 () Bool)

(assert (=> bm!664546 (= call!664553 (derivationStepZipperDown!2766 (ite c!1355756 (regOne!38233 (h!77361 (exprs!8300 lt!2597651))) (ite c!1355754 (regTwo!38232 (h!77361 (exprs!8300 lt!2597651))) (ite c!1355755 (regOne!38232 (h!77361 (exprs!8300 lt!2597651))) (reg!19189 (h!77361 (exprs!8300 lt!2597651)))))) (ite (or c!1355756 c!1355754) (Context!15601 (t!385111 (exprs!8300 lt!2597651))) (Context!15601 call!664552)) (h!77362 s!7854)))))

(declare-fun b!7295100 () Bool)

(declare-fun call!664551 () (Set Context!15600))

(assert (=> b!7295100 (= e!4369398 (set.union call!664553 call!664551))))

(declare-fun b!7295101 () Bool)

(declare-fun e!4369397 () (Set Context!15600))

(assert (=> b!7295101 (= e!4369397 call!664554)))

(declare-fun call!664550 () List!71037)

(declare-fun bm!664547 () Bool)

(assert (=> bm!664547 (= call!664551 (derivationStepZipperDown!2766 (ite c!1355756 (regTwo!38233 (h!77361 (exprs!8300 lt!2597651))) (regOne!38232 (h!77361 (exprs!8300 lt!2597651)))) (ite c!1355756 (Context!15601 (t!385111 (exprs!8300 lt!2597651))) (Context!15601 call!664550)) (h!77362 s!7854)))))

(declare-fun bm!664548 () Bool)

(assert (=> bm!664548 (= call!664550 ($colon$colon!2991 (exprs!8300 (Context!15601 (t!385111 (exprs!8300 lt!2597651)))) (ite (or c!1355754 c!1355755) (regTwo!38232 (h!77361 (exprs!8300 lt!2597651))) (h!77361 (exprs!8300 lt!2597651)))))))

(declare-fun b!7295102 () Bool)

(assert (=> b!7295102 (= e!4369400 (nullable!8037 (regOne!38232 (h!77361 (exprs!8300 lt!2597651)))))))

(declare-fun bm!664549 () Bool)

(assert (=> bm!664549 (= call!664555 call!664553)))

(declare-fun bm!664550 () Bool)

(assert (=> bm!664550 (= call!664552 call!664550)))

(declare-fun d!2266531 () Bool)

(declare-fun c!1355757 () Bool)

(assert (=> d!2266531 (= c!1355757 (and (is-ElementMatch!18860 (h!77361 (exprs!8300 lt!2597651))) (= (c!1355639 (h!77361 (exprs!8300 lt!2597651))) (h!77362 s!7854))))))

(assert (=> d!2266531 (= (derivationStepZipperDown!2766 (h!77361 (exprs!8300 lt!2597651)) (Context!15601 (t!385111 (exprs!8300 lt!2597651))) (h!77362 s!7854)) e!4369401)))

(declare-fun b!7295103 () Bool)

(assert (=> b!7295103 (= e!4369399 (set.union call!664551 call!664555))))

(declare-fun b!7295104 () Bool)

(assert (=> b!7295104 (= e!4369401 e!4369398)))

(assert (=> b!7295104 (= c!1355756 (is-Union!18860 (h!77361 (exprs!8300 lt!2597651))))))

(declare-fun b!7295105 () Bool)

(assert (=> b!7295105 (= e!4369397 (as set.empty (Set Context!15600)))))

(declare-fun b!7295106 () Bool)

(assert (=> b!7295106 (= e!4369399 e!4369396)))

(assert (=> b!7295106 (= c!1355755 (is-Concat!27705 (h!77361 (exprs!8300 lt!2597651))))))

(declare-fun b!7295107 () Bool)

(declare-fun c!1355758 () Bool)

(assert (=> b!7295107 (= c!1355758 (is-Star!18860 (h!77361 (exprs!8300 lt!2597651))))))

(assert (=> b!7295107 (= e!4369396 e!4369397)))

(assert (= (and d!2266531 c!1355757) b!7295098))

(assert (= (and d!2266531 (not c!1355757)) b!7295104))

(assert (= (and b!7295104 c!1355756) b!7295100))

(assert (= (and b!7295104 (not c!1355756)) b!7295097))

(assert (= (and b!7295097 res!2950749) b!7295102))

(assert (= (and b!7295097 c!1355754) b!7295103))

(assert (= (and b!7295097 (not c!1355754)) b!7295106))

(assert (= (and b!7295106 c!1355755) b!7295099))

(assert (= (and b!7295106 (not c!1355755)) b!7295107))

(assert (= (and b!7295107 c!1355758) b!7295101))

(assert (= (and b!7295107 (not c!1355758)) b!7295105))

(assert (= (or b!7295099 b!7295101) bm!664550))

(assert (= (or b!7295099 b!7295101) bm!664545))

(assert (= (or b!7295103 bm!664550) bm!664548))

(assert (= (or b!7295103 bm!664545) bm!664549))

(assert (= (or b!7295100 bm!664549) bm!664546))

(assert (= (or b!7295100 b!7295103) bm!664547))

(declare-fun m!7966738 () Bool)

(assert (=> bm!664548 m!7966738))

(declare-fun m!7966740 () Bool)

(assert (=> b!7295102 m!7966740))

(declare-fun m!7966742 () Bool)

(assert (=> b!7295098 m!7966742))

(declare-fun m!7966744 () Bool)

(assert (=> bm!664547 m!7966744))

(declare-fun m!7966746 () Bool)

(assert (=> bm!664546 m!7966746))

(assert (=> bm!664492 d!2266531))

(declare-fun d!2266533 () Bool)

(declare-fun res!2950754 () Bool)

(declare-fun e!4369406 () Bool)

(assert (=> d!2266533 (=> res!2950754 e!4369406)))

(assert (=> d!2266533 (= res!2950754 (is-Nil!70913 (exprs!8300 lt!2597659)))))

(assert (=> d!2266533 (= (forall!17683 (exprs!8300 lt!2597659) lambda!450244) e!4369406)))

(declare-fun b!7295112 () Bool)

(declare-fun e!4369407 () Bool)

(assert (=> b!7295112 (= e!4369406 e!4369407)))

(declare-fun res!2950755 () Bool)

(assert (=> b!7295112 (=> (not res!2950755) (not e!4369407))))

(declare-fun dynLambda!29001 (Int Regex!18860) Bool)

(assert (=> b!7295112 (= res!2950755 (dynLambda!29001 lambda!450244 (h!77361 (exprs!8300 lt!2597659))))))

(declare-fun b!7295113 () Bool)

(assert (=> b!7295113 (= e!4369407 (forall!17683 (t!385111 (exprs!8300 lt!2597659)) lambda!450244))))

(assert (= (and d!2266533 (not res!2950754)) b!7295112))

(assert (= (and b!7295112 res!2950755) b!7295113))

(declare-fun b_lambda!281277 () Bool)

(assert (=> (not b_lambda!281277) (not b!7295112)))

(declare-fun m!7966748 () Bool)

(assert (=> b!7295112 m!7966748))

(declare-fun m!7966750 () Bool)

(assert (=> b!7295113 m!7966750))

(assert (=> d!2266403 d!2266533))

(assert (=> bs!1912807 d!2266447))

(declare-fun b!7295114 () Bool)

(declare-fun e!4369409 () (Set Context!15600))

(assert (=> b!7295114 (= e!4369409 (as set.empty (Set Context!15600)))))

(declare-fun bm!664551 () Bool)

(declare-fun call!664556 () (Set Context!15600))

(assert (=> bm!664551 (= call!664556 (derivationStepZipperDown!2766 (h!77361 (exprs!8300 (Context!15601 (t!385111 (exprs!8300 lt!2597659))))) (Context!15601 (t!385111 (exprs!8300 (Context!15601 (t!385111 (exprs!8300 lt!2597659)))))) (h!77362 s!7854)))))

(declare-fun e!4369408 () (Set Context!15600))

(declare-fun b!7295115 () Bool)

(assert (=> b!7295115 (= e!4369408 (set.union call!664556 (derivationStepZipperUp!2610 (Context!15601 (t!385111 (exprs!8300 (Context!15601 (t!385111 (exprs!8300 lt!2597659)))))) (h!77362 s!7854))))))

(declare-fun b!7295116 () Bool)

(assert (=> b!7295116 (= e!4369408 e!4369409)))

(declare-fun c!1355760 () Bool)

(assert (=> b!7295116 (= c!1355760 (is-Cons!70913 (exprs!8300 (Context!15601 (t!385111 (exprs!8300 lt!2597659))))))))

(declare-fun b!7295118 () Bool)

(assert (=> b!7295118 (= e!4369409 call!664556)))

(declare-fun b!7295117 () Bool)

(declare-fun e!4369410 () Bool)

(assert (=> b!7295117 (= e!4369410 (nullable!8037 (h!77361 (exprs!8300 (Context!15601 (t!385111 (exprs!8300 lt!2597659)))))))))

(declare-fun d!2266535 () Bool)

(declare-fun c!1355759 () Bool)

(assert (=> d!2266535 (= c!1355759 e!4369410)))

(declare-fun res!2950756 () Bool)

(assert (=> d!2266535 (=> (not res!2950756) (not e!4369410))))

(assert (=> d!2266535 (= res!2950756 (is-Cons!70913 (exprs!8300 (Context!15601 (t!385111 (exprs!8300 lt!2597659))))))))

(assert (=> d!2266535 (= (derivationStepZipperUp!2610 (Context!15601 (t!385111 (exprs!8300 lt!2597659))) (h!77362 s!7854)) e!4369408)))

(assert (= (and d!2266535 res!2950756) b!7295117))

(assert (= (and d!2266535 c!1355759) b!7295115))

(assert (= (and d!2266535 (not c!1355759)) b!7295116))

(assert (= (and b!7295116 c!1355760) b!7295118))

(assert (= (and b!7295116 (not c!1355760)) b!7295114))

(assert (= (or b!7295115 b!7295118) bm!664551))

(declare-fun m!7966752 () Bool)

(assert (=> bm!664551 m!7966752))

(declare-fun m!7966754 () Bool)

(assert (=> b!7295115 m!7966754))

(declare-fun m!7966756 () Bool)

(assert (=> b!7295117 m!7966756))

(assert (=> b!7294864 d!2266535))

(declare-fun bm!664552 () Bool)

(declare-fun call!664561 () (Set Context!15600))

(declare-fun call!664562 () (Set Context!15600))

(assert (=> bm!664552 (= call!664561 call!664562)))

(declare-fun b!7295119 () Bool)

(declare-fun c!1355761 () Bool)

(declare-fun e!4369415 () Bool)

(assert (=> b!7295119 (= c!1355761 e!4369415)))

(declare-fun res!2950757 () Bool)

(assert (=> b!7295119 (=> (not res!2950757) (not e!4369415))))

(assert (=> b!7295119 (= res!2950757 (is-Concat!27705 (ite c!1355658 (regTwo!38233 (h!77361 (exprs!8300 ct1!250))) (regOne!38232 (h!77361 (exprs!8300 ct1!250))))))))

(declare-fun e!4369413 () (Set Context!15600))

(declare-fun e!4369414 () (Set Context!15600))

(assert (=> b!7295119 (= e!4369413 e!4369414)))

(declare-fun e!4369416 () (Set Context!15600))

(declare-fun b!7295120 () Bool)

(assert (=> b!7295120 (= e!4369416 (set.insert (ite c!1355658 lt!2597659 (Context!15601 call!664488)) (as set.empty (Set Context!15600))))))

(declare-fun b!7295121 () Bool)

(declare-fun e!4369411 () (Set Context!15600))

(assert (=> b!7295121 (= e!4369411 call!664561)))

(declare-fun c!1355762 () Bool)

(declare-fun call!664559 () List!71037)

(declare-fun bm!664553 () Bool)

(declare-fun call!664560 () (Set Context!15600))

(declare-fun c!1355763 () Bool)

(assert (=> bm!664553 (= call!664560 (derivationStepZipperDown!2766 (ite c!1355763 (regOne!38233 (ite c!1355658 (regTwo!38233 (h!77361 (exprs!8300 ct1!250))) (regOne!38232 (h!77361 (exprs!8300 ct1!250))))) (ite c!1355761 (regTwo!38232 (ite c!1355658 (regTwo!38233 (h!77361 (exprs!8300 ct1!250))) (regOne!38232 (h!77361 (exprs!8300 ct1!250))))) (ite c!1355762 (regOne!38232 (ite c!1355658 (regTwo!38233 (h!77361 (exprs!8300 ct1!250))) (regOne!38232 (h!77361 (exprs!8300 ct1!250))))) (reg!19189 (ite c!1355658 (regTwo!38233 (h!77361 (exprs!8300 ct1!250))) (regOne!38232 (h!77361 (exprs!8300 ct1!250)))))))) (ite (or c!1355763 c!1355761) (ite c!1355658 lt!2597659 (Context!15601 call!664488)) (Context!15601 call!664559)) (h!77362 s!7854)))))

(declare-fun b!7295122 () Bool)

(declare-fun call!664558 () (Set Context!15600))

(assert (=> b!7295122 (= e!4369413 (set.union call!664560 call!664558))))

(declare-fun b!7295123 () Bool)

(declare-fun e!4369412 () (Set Context!15600))

(assert (=> b!7295123 (= e!4369412 call!664561)))

(declare-fun bm!664554 () Bool)

(declare-fun call!664557 () List!71037)

(assert (=> bm!664554 (= call!664558 (derivationStepZipperDown!2766 (ite c!1355763 (regTwo!38233 (ite c!1355658 (regTwo!38233 (h!77361 (exprs!8300 ct1!250))) (regOne!38232 (h!77361 (exprs!8300 ct1!250))))) (regOne!38232 (ite c!1355658 (regTwo!38233 (h!77361 (exprs!8300 ct1!250))) (regOne!38232 (h!77361 (exprs!8300 ct1!250)))))) (ite c!1355763 (ite c!1355658 lt!2597659 (Context!15601 call!664488)) (Context!15601 call!664557)) (h!77362 s!7854)))))

(declare-fun bm!664555 () Bool)

(assert (=> bm!664555 (= call!664557 ($colon$colon!2991 (exprs!8300 (ite c!1355658 lt!2597659 (Context!15601 call!664488))) (ite (or c!1355761 c!1355762) (regTwo!38232 (ite c!1355658 (regTwo!38233 (h!77361 (exprs!8300 ct1!250))) (regOne!38232 (h!77361 (exprs!8300 ct1!250))))) (ite c!1355658 (regTwo!38233 (h!77361 (exprs!8300 ct1!250))) (regOne!38232 (h!77361 (exprs!8300 ct1!250)))))))))

(declare-fun b!7295124 () Bool)

(assert (=> b!7295124 (= e!4369415 (nullable!8037 (regOne!38232 (ite c!1355658 (regTwo!38233 (h!77361 (exprs!8300 ct1!250))) (regOne!38232 (h!77361 (exprs!8300 ct1!250)))))))))

(declare-fun bm!664556 () Bool)

(assert (=> bm!664556 (= call!664562 call!664560)))

(declare-fun bm!664557 () Bool)

(assert (=> bm!664557 (= call!664559 call!664557)))

(declare-fun d!2266537 () Bool)

(declare-fun c!1355764 () Bool)

(assert (=> d!2266537 (= c!1355764 (and (is-ElementMatch!18860 (ite c!1355658 (regTwo!38233 (h!77361 (exprs!8300 ct1!250))) (regOne!38232 (h!77361 (exprs!8300 ct1!250))))) (= (c!1355639 (ite c!1355658 (regTwo!38233 (h!77361 (exprs!8300 ct1!250))) (regOne!38232 (h!77361 (exprs!8300 ct1!250))))) (h!77362 s!7854))))))

(assert (=> d!2266537 (= (derivationStepZipperDown!2766 (ite c!1355658 (regTwo!38233 (h!77361 (exprs!8300 ct1!250))) (regOne!38232 (h!77361 (exprs!8300 ct1!250)))) (ite c!1355658 lt!2597659 (Context!15601 call!664488)) (h!77362 s!7854)) e!4369416)))

(declare-fun b!7295125 () Bool)

(assert (=> b!7295125 (= e!4369414 (set.union call!664558 call!664562))))

(declare-fun b!7295126 () Bool)

(assert (=> b!7295126 (= e!4369416 e!4369413)))

(assert (=> b!7295126 (= c!1355763 (is-Union!18860 (ite c!1355658 (regTwo!38233 (h!77361 (exprs!8300 ct1!250))) (regOne!38232 (h!77361 (exprs!8300 ct1!250))))))))

(declare-fun b!7295127 () Bool)

(assert (=> b!7295127 (= e!4369412 (as set.empty (Set Context!15600)))))

(declare-fun b!7295128 () Bool)

(assert (=> b!7295128 (= e!4369414 e!4369411)))

(assert (=> b!7295128 (= c!1355762 (is-Concat!27705 (ite c!1355658 (regTwo!38233 (h!77361 (exprs!8300 ct1!250))) (regOne!38232 (h!77361 (exprs!8300 ct1!250))))))))

(declare-fun b!7295129 () Bool)

(declare-fun c!1355765 () Bool)

(assert (=> b!7295129 (= c!1355765 (is-Star!18860 (ite c!1355658 (regTwo!38233 (h!77361 (exprs!8300 ct1!250))) (regOne!38232 (h!77361 (exprs!8300 ct1!250))))))))

(assert (=> b!7295129 (= e!4369411 e!4369412)))

(assert (= (and d!2266537 c!1355764) b!7295120))

(assert (= (and d!2266537 (not c!1355764)) b!7295126))

(assert (= (and b!7295126 c!1355763) b!7295122))

(assert (= (and b!7295126 (not c!1355763)) b!7295119))

(assert (= (and b!7295119 res!2950757) b!7295124))

(assert (= (and b!7295119 c!1355761) b!7295125))

(assert (= (and b!7295119 (not c!1355761)) b!7295128))

(assert (= (and b!7295128 c!1355762) b!7295121))

(assert (= (and b!7295128 (not c!1355762)) b!7295129))

(assert (= (and b!7295129 c!1355765) b!7295123))

(assert (= (and b!7295129 (not c!1355765)) b!7295127))

(assert (= (or b!7295121 b!7295123) bm!664557))

(assert (= (or b!7295121 b!7295123) bm!664552))

(assert (= (or b!7295125 bm!664557) bm!664555))

(assert (= (or b!7295125 bm!664552) bm!664556))

(assert (= (or b!7295122 bm!664556) bm!664553))

(assert (= (or b!7295122 b!7295125) bm!664554))

(declare-fun m!7966758 () Bool)

(assert (=> bm!664555 m!7966758))

(declare-fun m!7966760 () Bool)

(assert (=> b!7295124 m!7966760))

(declare-fun m!7966762 () Bool)

(assert (=> b!7295120 m!7966762))

(declare-fun m!7966764 () Bool)

(assert (=> bm!664554 m!7966764))

(declare-fun m!7966766 () Bool)

(assert (=> bm!664553 m!7966766))

(assert (=> bm!664485 d!2266537))

(declare-fun d!2266539 () Bool)

(assert (=> d!2266539 (= (nullable!8037 (h!77361 (exprs!8300 lt!2597651))) (nullableFct!3175 (h!77361 (exprs!8300 lt!2597651))))))

(declare-fun bs!1912824 () Bool)

(assert (= bs!1912824 d!2266539))

(declare-fun m!7966768 () Bool)

(assert (=> bs!1912824 m!7966768))

(assert (=> b!7294875 d!2266539))

(declare-fun d!2266541 () Bool)

(assert (=> d!2266541 true))

(declare-fun setRes!53695 () Bool)

(assert (=> d!2266541 setRes!53695))

(declare-fun condSetEmpty!53695 () Bool)

(declare-fun res!2950758 () (Set Context!15600))

(assert (=> d!2266541 (= condSetEmpty!53695 (= res!2950758 (as set.empty (Set Context!15600))))))

(assert (=> d!2266541 (= (choose!56520 lt!2597656 lambda!450223) res!2950758)))

(declare-fun setIsEmpty!53695 () Bool)

(assert (=> setIsEmpty!53695 setRes!53695))

(declare-fun setElem!53695 () Context!15600)

(declare-fun setNonEmpty!53695 () Bool)

(declare-fun tp!2062238 () Bool)

(declare-fun e!4369417 () Bool)

(assert (=> setNonEmpty!53695 (= setRes!53695 (and tp!2062238 (inv!90161 setElem!53695) e!4369417))))

(declare-fun setRest!53695 () (Set Context!15600))

(assert (=> setNonEmpty!53695 (= res!2950758 (set.union (set.insert setElem!53695 (as set.empty (Set Context!15600))) setRest!53695))))

(declare-fun b!7295130 () Bool)

(declare-fun tp!2062237 () Bool)

(assert (=> b!7295130 (= e!4369417 tp!2062237)))

(assert (= (and d!2266541 condSetEmpty!53695) setIsEmpty!53695))

(assert (= (and d!2266541 (not condSetEmpty!53695)) setNonEmpty!53695))

(assert (= setNonEmpty!53695 b!7295130))

(declare-fun m!7966770 () Bool)

(assert (=> setNonEmpty!53695 m!7966770))

(assert (=> d!2266445 d!2266541))

(declare-fun d!2266543 () Bool)

(assert (=> d!2266543 (= (nullable!8037 (h!77361 (exprs!8300 lt!2597647))) (nullableFct!3175 (h!77361 (exprs!8300 lt!2597647))))))

(declare-fun bs!1912825 () Bool)

(assert (= bs!1912825 d!2266543))

(declare-fun m!7966772 () Bool)

(assert (=> bs!1912825 m!7966772))

(assert (=> b!7294916 d!2266543))

(declare-fun d!2266545 () Bool)

(assert (=> d!2266545 (= (nullable!8037 (regOne!38232 (h!77361 (exprs!8300 ct1!250)))) (nullableFct!3175 (regOne!38232 (h!77361 (exprs!8300 ct1!250)))))))

(declare-fun bs!1912826 () Bool)

(assert (= bs!1912826 d!2266545))

(declare-fun m!7966774 () Bool)

(assert (=> bs!1912826 m!7966774))

(assert (=> b!7294847 d!2266545))

(declare-fun d!2266547 () Bool)

(declare-fun res!2950759 () Bool)

(declare-fun e!4369418 () Bool)

(assert (=> d!2266547 (=> res!2950759 e!4369418)))

(assert (=> d!2266547 (= res!2950759 (is-Nil!70913 (++!16750 lt!2597649 (exprs!8300 ct2!346))))))

(assert (=> d!2266547 (= (forall!17683 (++!16750 lt!2597649 (exprs!8300 ct2!346)) lambda!450222) e!4369418)))

(declare-fun b!7295131 () Bool)

(declare-fun e!4369419 () Bool)

(assert (=> b!7295131 (= e!4369418 e!4369419)))

(declare-fun res!2950760 () Bool)

(assert (=> b!7295131 (=> (not res!2950760) (not e!4369419))))

(assert (=> b!7295131 (= res!2950760 (dynLambda!29001 lambda!450222 (h!77361 (++!16750 lt!2597649 (exprs!8300 ct2!346)))))))

(declare-fun b!7295132 () Bool)

(assert (=> b!7295132 (= e!4369419 (forall!17683 (t!385111 (++!16750 lt!2597649 (exprs!8300 ct2!346))) lambda!450222))))

(assert (= (and d!2266547 (not res!2950759)) b!7295131))

(assert (= (and b!7295131 res!2950760) b!7295132))

(declare-fun b_lambda!281279 () Bool)

(assert (=> (not b_lambda!281279) (not b!7295131)))

(declare-fun m!7966776 () Bool)

(assert (=> b!7295131 m!7966776))

(declare-fun m!7966778 () Bool)

(assert (=> b!7295132 m!7966778))

(assert (=> d!2266415 d!2266547))

(assert (=> d!2266415 d!2266421))

(declare-fun d!2266549 () Bool)

(assert (=> d!2266549 (forall!17683 (++!16750 lt!2597649 (exprs!8300 ct2!346)) lambda!450222)))

(assert (=> d!2266549 true))

(declare-fun _$78!852 () Unit!164318)

(assert (=> d!2266549 (= (choose!56519 lt!2597649 (exprs!8300 ct2!346) lambda!450222) _$78!852)))

(declare-fun bs!1912827 () Bool)

(assert (= bs!1912827 d!2266549))

(assert (=> bs!1912827 m!7966364))

(assert (=> bs!1912827 m!7966364))

(assert (=> bs!1912827 m!7966474))

(assert (=> d!2266415 d!2266549))

(declare-fun d!2266551 () Bool)

(declare-fun res!2950761 () Bool)

(declare-fun e!4369420 () Bool)

(assert (=> d!2266551 (=> res!2950761 e!4369420)))

(assert (=> d!2266551 (= res!2950761 (is-Nil!70913 lt!2597649))))

(assert (=> d!2266551 (= (forall!17683 lt!2597649 lambda!450222) e!4369420)))

(declare-fun b!7295133 () Bool)

(declare-fun e!4369421 () Bool)

(assert (=> b!7295133 (= e!4369420 e!4369421)))

(declare-fun res!2950762 () Bool)

(assert (=> b!7295133 (=> (not res!2950762) (not e!4369421))))

(assert (=> b!7295133 (= res!2950762 (dynLambda!29001 lambda!450222 (h!77361 lt!2597649)))))

(declare-fun b!7295134 () Bool)

(assert (=> b!7295134 (= e!4369421 (forall!17683 (t!385111 lt!2597649) lambda!450222))))

(assert (= (and d!2266551 (not res!2950761)) b!7295133))

(assert (= (and b!7295133 res!2950762) b!7295134))

(declare-fun b_lambda!281281 () Bool)

(assert (=> (not b_lambda!281281) (not b!7295133)))

(declare-fun m!7966780 () Bool)

(assert (=> b!7295133 m!7966780))

(declare-fun m!7966782 () Bool)

(assert (=> b!7295134 m!7966782))

(assert (=> d!2266415 d!2266551))

(declare-fun d!2266553 () Bool)

(assert (=> d!2266553 (= ($colon$colon!2991 (exprs!8300 lt!2597659) (ite (or c!1355656 c!1355657) (regTwo!38232 (h!77361 (exprs!8300 ct1!250))) (h!77361 (exprs!8300 ct1!250)))) (Cons!70913 (ite (or c!1355656 c!1355657) (regTwo!38232 (h!77361 (exprs!8300 ct1!250))) (h!77361 (exprs!8300 ct1!250))) (exprs!8300 lt!2597659)))))

(assert (=> bm!664486 d!2266553))

(declare-fun d!2266555 () Bool)

(assert (=> d!2266555 (= (nullable!8037 (h!77361 (exprs!8300 lt!2597659))) (nullableFct!3175 (h!77361 (exprs!8300 lt!2597659))))))

(declare-fun bs!1912828 () Bool)

(assert (= bs!1912828 d!2266555))

(declare-fun m!7966784 () Bool)

(assert (=> bs!1912828 m!7966784))

(assert (=> b!7294866 d!2266555))

(declare-fun bm!664558 () Bool)

(declare-fun call!664567 () (Set Context!15600))

(declare-fun call!664568 () (Set Context!15600))

(assert (=> bm!664558 (= call!664567 call!664568)))

(declare-fun b!7295135 () Bool)

(declare-fun c!1355766 () Bool)

(declare-fun e!4369426 () Bool)

(assert (=> b!7295135 (= c!1355766 e!4369426)))

(declare-fun res!2950763 () Bool)

(assert (=> b!7295135 (=> (not res!2950763) (not e!4369426))))

(assert (=> b!7295135 (= res!2950763 (is-Concat!27705 (ite c!1355673 (regTwo!38233 (h!77361 (exprs!8300 ct1!250))) (regOne!38232 (h!77361 (exprs!8300 ct1!250))))))))

(declare-fun e!4369424 () (Set Context!15600))

(declare-fun e!4369425 () (Set Context!15600))

(assert (=> b!7295135 (= e!4369424 e!4369425)))

(declare-fun b!7295136 () Bool)

(declare-fun e!4369427 () (Set Context!15600))

(assert (=> b!7295136 (= e!4369427 (set.insert (ite c!1355673 lt!2597651 (Context!15601 call!664498)) (as set.empty (Set Context!15600))))))

(declare-fun b!7295137 () Bool)

(declare-fun e!4369422 () (Set Context!15600))

(assert (=> b!7295137 (= e!4369422 call!664567)))

(declare-fun bm!664559 () Bool)

(declare-fun call!664565 () List!71037)

(declare-fun c!1355768 () Bool)

(declare-fun c!1355767 () Bool)

(declare-fun call!664566 () (Set Context!15600))

(assert (=> bm!664559 (= call!664566 (derivationStepZipperDown!2766 (ite c!1355768 (regOne!38233 (ite c!1355673 (regTwo!38233 (h!77361 (exprs!8300 ct1!250))) (regOne!38232 (h!77361 (exprs!8300 ct1!250))))) (ite c!1355766 (regTwo!38232 (ite c!1355673 (regTwo!38233 (h!77361 (exprs!8300 ct1!250))) (regOne!38232 (h!77361 (exprs!8300 ct1!250))))) (ite c!1355767 (regOne!38232 (ite c!1355673 (regTwo!38233 (h!77361 (exprs!8300 ct1!250))) (regOne!38232 (h!77361 (exprs!8300 ct1!250))))) (reg!19189 (ite c!1355673 (regTwo!38233 (h!77361 (exprs!8300 ct1!250))) (regOne!38232 (h!77361 (exprs!8300 ct1!250)))))))) (ite (or c!1355768 c!1355766) (ite c!1355673 lt!2597651 (Context!15601 call!664498)) (Context!15601 call!664565)) (h!77362 s!7854)))))

(declare-fun b!7295138 () Bool)

(declare-fun call!664564 () (Set Context!15600))

(assert (=> b!7295138 (= e!4369424 (set.union call!664566 call!664564))))

(declare-fun b!7295139 () Bool)

(declare-fun e!4369423 () (Set Context!15600))

(assert (=> b!7295139 (= e!4369423 call!664567)))

(declare-fun call!664563 () List!71037)

(declare-fun bm!664560 () Bool)

(assert (=> bm!664560 (= call!664564 (derivationStepZipperDown!2766 (ite c!1355768 (regTwo!38233 (ite c!1355673 (regTwo!38233 (h!77361 (exprs!8300 ct1!250))) (regOne!38232 (h!77361 (exprs!8300 ct1!250))))) (regOne!38232 (ite c!1355673 (regTwo!38233 (h!77361 (exprs!8300 ct1!250))) (regOne!38232 (h!77361 (exprs!8300 ct1!250)))))) (ite c!1355768 (ite c!1355673 lt!2597651 (Context!15601 call!664498)) (Context!15601 call!664563)) (h!77362 s!7854)))))

(declare-fun bm!664561 () Bool)

(assert (=> bm!664561 (= call!664563 ($colon$colon!2991 (exprs!8300 (ite c!1355673 lt!2597651 (Context!15601 call!664498))) (ite (or c!1355766 c!1355767) (regTwo!38232 (ite c!1355673 (regTwo!38233 (h!77361 (exprs!8300 ct1!250))) (regOne!38232 (h!77361 (exprs!8300 ct1!250))))) (ite c!1355673 (regTwo!38233 (h!77361 (exprs!8300 ct1!250))) (regOne!38232 (h!77361 (exprs!8300 ct1!250)))))))))

(declare-fun b!7295140 () Bool)

(assert (=> b!7295140 (= e!4369426 (nullable!8037 (regOne!38232 (ite c!1355673 (regTwo!38233 (h!77361 (exprs!8300 ct1!250))) (regOne!38232 (h!77361 (exprs!8300 ct1!250)))))))))

(declare-fun bm!664562 () Bool)

(assert (=> bm!664562 (= call!664568 call!664566)))

(declare-fun bm!664563 () Bool)

(assert (=> bm!664563 (= call!664565 call!664563)))

(declare-fun d!2266557 () Bool)

(declare-fun c!1355769 () Bool)

(assert (=> d!2266557 (= c!1355769 (and (is-ElementMatch!18860 (ite c!1355673 (regTwo!38233 (h!77361 (exprs!8300 ct1!250))) (regOne!38232 (h!77361 (exprs!8300 ct1!250))))) (= (c!1355639 (ite c!1355673 (regTwo!38233 (h!77361 (exprs!8300 ct1!250))) (regOne!38232 (h!77361 (exprs!8300 ct1!250))))) (h!77362 s!7854))))))

(assert (=> d!2266557 (= (derivationStepZipperDown!2766 (ite c!1355673 (regTwo!38233 (h!77361 (exprs!8300 ct1!250))) (regOne!38232 (h!77361 (exprs!8300 ct1!250)))) (ite c!1355673 lt!2597651 (Context!15601 call!664498)) (h!77362 s!7854)) e!4369427)))

(declare-fun b!7295141 () Bool)

(assert (=> b!7295141 (= e!4369425 (set.union call!664564 call!664568))))

(declare-fun b!7295142 () Bool)

(assert (=> b!7295142 (= e!4369427 e!4369424)))

(assert (=> b!7295142 (= c!1355768 (is-Union!18860 (ite c!1355673 (regTwo!38233 (h!77361 (exprs!8300 ct1!250))) (regOne!38232 (h!77361 (exprs!8300 ct1!250))))))))

(declare-fun b!7295143 () Bool)

(assert (=> b!7295143 (= e!4369423 (as set.empty (Set Context!15600)))))

(declare-fun b!7295144 () Bool)

(assert (=> b!7295144 (= e!4369425 e!4369422)))

(assert (=> b!7295144 (= c!1355767 (is-Concat!27705 (ite c!1355673 (regTwo!38233 (h!77361 (exprs!8300 ct1!250))) (regOne!38232 (h!77361 (exprs!8300 ct1!250))))))))

(declare-fun b!7295145 () Bool)

(declare-fun c!1355770 () Bool)

(assert (=> b!7295145 (= c!1355770 (is-Star!18860 (ite c!1355673 (regTwo!38233 (h!77361 (exprs!8300 ct1!250))) (regOne!38232 (h!77361 (exprs!8300 ct1!250))))))))

(assert (=> b!7295145 (= e!4369422 e!4369423)))

(assert (= (and d!2266557 c!1355769) b!7295136))

(assert (= (and d!2266557 (not c!1355769)) b!7295142))

(assert (= (and b!7295142 c!1355768) b!7295138))

(assert (= (and b!7295142 (not c!1355768)) b!7295135))

(assert (= (and b!7295135 res!2950763) b!7295140))

(assert (= (and b!7295135 c!1355766) b!7295141))

(assert (= (and b!7295135 (not c!1355766)) b!7295144))

(assert (= (and b!7295144 c!1355767) b!7295137))

(assert (= (and b!7295144 (not c!1355767)) b!7295145))

(assert (= (and b!7295145 c!1355770) b!7295139))

(assert (= (and b!7295145 (not c!1355770)) b!7295143))

(assert (= (or b!7295137 b!7295139) bm!664563))

(assert (= (or b!7295137 b!7295139) bm!664558))

(assert (= (or b!7295141 bm!664563) bm!664561))

(assert (= (or b!7295141 bm!664558) bm!664562))

(assert (= (or b!7295138 bm!664562) bm!664559))

(assert (= (or b!7295138 b!7295141) bm!664560))

(declare-fun m!7966786 () Bool)

(assert (=> bm!664561 m!7966786))

(declare-fun m!7966788 () Bool)

(assert (=> b!7295140 m!7966788))

(declare-fun m!7966790 () Bool)

(assert (=> b!7295136 m!7966790))

(declare-fun m!7966792 () Bool)

(assert (=> bm!664560 m!7966792))

(declare-fun m!7966794 () Bool)

(assert (=> bm!664559 m!7966794))

(assert (=> bm!664495 d!2266557))

(declare-fun d!2266559 () Bool)

(declare-fun res!2950764 () Bool)

(declare-fun e!4369428 () Bool)

(assert (=> d!2266559 (=> res!2950764 e!4369428)))

(assert (=> d!2266559 (= res!2950764 (is-Nil!70913 (exprs!8300 ct1!250)))))

(assert (=> d!2266559 (= (forall!17683 (exprs!8300 ct1!250) lambda!450245) e!4369428)))

(declare-fun b!7295146 () Bool)

(declare-fun e!4369429 () Bool)

(assert (=> b!7295146 (= e!4369428 e!4369429)))

(declare-fun res!2950765 () Bool)

(assert (=> b!7295146 (=> (not res!2950765) (not e!4369429))))

(assert (=> b!7295146 (= res!2950765 (dynLambda!29001 lambda!450245 (h!77361 (exprs!8300 ct1!250))))))

(declare-fun b!7295147 () Bool)

(assert (=> b!7295147 (= e!4369429 (forall!17683 (t!385111 (exprs!8300 ct1!250)) lambda!450245))))

(assert (= (and d!2266559 (not res!2950764)) b!7295146))

(assert (= (and b!7295146 res!2950765) b!7295147))

(declare-fun b_lambda!281283 () Bool)

(assert (=> (not b_lambda!281283) (not b!7295146)))

(declare-fun m!7966796 () Bool)

(assert (=> b!7295146 m!7966796))

(declare-fun m!7966798 () Bool)

(assert (=> b!7295147 m!7966798))

(assert (=> d!2266413 d!2266559))

(declare-fun d!2266561 () Bool)

(declare-fun lambda!450266 () Int)

(declare-fun exists!4502 ((Set Context!15600) Int) Bool)

(assert (=> d!2266561 (= (nullableZipper!3055 (set.insert ct2!346 (as set.empty (Set Context!15600)))) (exists!4502 (set.insert ct2!346 (as set.empty (Set Context!15600))) lambda!450266))))

(declare-fun bs!1912829 () Bool)

(assert (= bs!1912829 d!2266561))

(assert (=> bs!1912829 m!7966394))

(declare-fun m!7966800 () Bool)

(assert (=> bs!1912829 m!7966800))

(assert (=> b!7294911 d!2266561))

(declare-fun d!2266563 () Bool)

(assert (=> d!2266563 (= ($colon$colon!2991 (exprs!8300 lt!2597651) (ite (or c!1355671 c!1355672) (regTwo!38232 (h!77361 (exprs!8300 ct1!250))) (h!77361 (exprs!8300 ct1!250)))) (Cons!70913 (ite (or c!1355671 c!1355672) (regTwo!38232 (h!77361 (exprs!8300 ct1!250))) (h!77361 (exprs!8300 ct1!250))) (exprs!8300 lt!2597651)))))

(assert (=> bm!664496 d!2266563))

(declare-fun b!7295149 () Bool)

(declare-fun e!4369431 () List!71037)

(assert (=> b!7295149 (= e!4369431 (Cons!70913 (h!77361 (t!385111 (exprs!8300 ct1!250))) (++!16750 (t!385111 (t!385111 (exprs!8300 ct1!250))) (exprs!8300 ct2!346))))))

(declare-fun b!7295150 () Bool)

(declare-fun res!2950767 () Bool)

(declare-fun e!4369430 () Bool)

(assert (=> b!7295150 (=> (not res!2950767) (not e!4369430))))

(declare-fun lt!2597740 () List!71037)

(assert (=> b!7295150 (= res!2950767 (= (size!41857 lt!2597740) (+ (size!41857 (t!385111 (exprs!8300 ct1!250))) (size!41857 (exprs!8300 ct2!346)))))))

(declare-fun b!7295148 () Bool)

(assert (=> b!7295148 (= e!4369431 (exprs!8300 ct2!346))))

(declare-fun d!2266565 () Bool)

(assert (=> d!2266565 e!4369430))

(declare-fun res!2950766 () Bool)

(assert (=> d!2266565 (=> (not res!2950766) (not e!4369430))))

(assert (=> d!2266565 (= res!2950766 (= (content!14811 lt!2597740) (set.union (content!14811 (t!385111 (exprs!8300 ct1!250))) (content!14811 (exprs!8300 ct2!346)))))))

(assert (=> d!2266565 (= lt!2597740 e!4369431)))

(declare-fun c!1355773 () Bool)

(assert (=> d!2266565 (= c!1355773 (is-Nil!70913 (t!385111 (exprs!8300 ct1!250))))))

(assert (=> d!2266565 (= (++!16750 (t!385111 (exprs!8300 ct1!250)) (exprs!8300 ct2!346)) lt!2597740)))

(declare-fun b!7295151 () Bool)

(assert (=> b!7295151 (= e!4369430 (or (not (= (exprs!8300 ct2!346) Nil!70913)) (= lt!2597740 (t!385111 (exprs!8300 ct1!250)))))))

(assert (= (and d!2266565 c!1355773) b!7295148))

(assert (= (and d!2266565 (not c!1355773)) b!7295149))

(assert (= (and d!2266565 res!2950766) b!7295150))

(assert (= (and b!7295150 res!2950767) b!7295151))

(declare-fun m!7966802 () Bool)

(assert (=> b!7295149 m!7966802))

(declare-fun m!7966804 () Bool)

(assert (=> b!7295150 m!7966804))

(declare-fun m!7966806 () Bool)

(assert (=> b!7295150 m!7966806))

(assert (=> b!7295150 m!7966514))

(declare-fun m!7966808 () Bool)

(assert (=> d!2266565 m!7966808))

(declare-fun m!7966810 () Bool)

(assert (=> d!2266565 m!7966810))

(assert (=> d!2266565 m!7966520))

(assert (=> b!7294919 d!2266565))

(declare-fun d!2266567 () Bool)

(declare-fun c!1355774 () Bool)

(assert (=> d!2266567 (= c!1355774 (isEmpty!40791 (tail!14574 s!7854)))))

(declare-fun e!4369432 () Bool)

(assert (=> d!2266567 (= (matchZipper!3764 (derivationStepZipper!3593 (set.insert ct2!346 (as set.empty (Set Context!15600))) (head!15053 s!7854)) (tail!14574 s!7854)) e!4369432)))

(declare-fun b!7295152 () Bool)

(assert (=> b!7295152 (= e!4369432 (nullableZipper!3055 (derivationStepZipper!3593 (set.insert ct2!346 (as set.empty (Set Context!15600))) (head!15053 s!7854))))))

(declare-fun b!7295153 () Bool)

(assert (=> b!7295153 (= e!4369432 (matchZipper!3764 (derivationStepZipper!3593 (derivationStepZipper!3593 (set.insert ct2!346 (as set.empty (Set Context!15600))) (head!15053 s!7854)) (head!15053 (tail!14574 s!7854))) (tail!14574 (tail!14574 s!7854))))))

(assert (= (and d!2266567 c!1355774) b!7295152))

(assert (= (and d!2266567 (not c!1355774)) b!7295153))

(assert (=> d!2266567 m!7966540))

(declare-fun m!7966812 () Bool)

(assert (=> d!2266567 m!7966812))

(assert (=> b!7295152 m!7966538))

(declare-fun m!7966814 () Bool)

(assert (=> b!7295152 m!7966814))

(assert (=> b!7295153 m!7966540))

(declare-fun m!7966816 () Bool)

(assert (=> b!7295153 m!7966816))

(assert (=> b!7295153 m!7966538))

(assert (=> b!7295153 m!7966816))

(declare-fun m!7966818 () Bool)

(assert (=> b!7295153 m!7966818))

(assert (=> b!7295153 m!7966540))

(declare-fun m!7966820 () Bool)

(assert (=> b!7295153 m!7966820))

(assert (=> b!7295153 m!7966818))

(assert (=> b!7295153 m!7966820))

(declare-fun m!7966822 () Bool)

(assert (=> b!7295153 m!7966822))

(assert (=> b!7294912 d!2266567))

(declare-fun bs!1912830 () Bool)

(declare-fun d!2266569 () Bool)

(assert (= bs!1912830 (and d!2266569 b!7294779)))

(declare-fun lambda!450267 () Int)

(assert (=> bs!1912830 (= (= (head!15053 s!7854) (h!77362 s!7854)) (= lambda!450267 lambda!450223))))

(declare-fun bs!1912831 () Bool)

(assert (= bs!1912831 (and d!2266569 d!2266455)))

(assert (=> bs!1912831 (= (= (head!15053 s!7854) (h!77362 s!7854)) (= lambda!450267 lambda!450259))))

(assert (=> d!2266569 true))

(assert (=> d!2266569 (= (derivationStepZipper!3593 (set.insert ct2!346 (as set.empty (Set Context!15600))) (head!15053 s!7854)) (flatMap!2955 (set.insert ct2!346 (as set.empty (Set Context!15600))) lambda!450267))))

(declare-fun bs!1912832 () Bool)

(assert (= bs!1912832 d!2266569))

(assert (=> bs!1912832 m!7966394))

(declare-fun m!7966824 () Bool)

(assert (=> bs!1912832 m!7966824))

(assert (=> b!7294912 d!2266569))

(declare-fun d!2266571 () Bool)

(assert (=> d!2266571 (= (head!15053 s!7854) (h!77362 s!7854))))

(assert (=> b!7294912 d!2266571))

(declare-fun d!2266573 () Bool)

(assert (=> d!2266573 (= (tail!14574 s!7854) (t!385112 s!7854))))

(assert (=> b!7294912 d!2266573))

(assert (=> b!7294882 d!2266545))

(declare-fun bm!664564 () Bool)

(declare-fun call!664573 () (Set Context!15600))

(declare-fun call!664574 () (Set Context!15600))

(assert (=> bm!664564 (= call!664573 call!664574)))

(declare-fun b!7295154 () Bool)

(declare-fun c!1355775 () Bool)

(declare-fun e!4369437 () Bool)

(assert (=> b!7295154 (= c!1355775 e!4369437)))

(declare-fun res!2950768 () Bool)

(assert (=> b!7295154 (=> (not res!2950768) (not e!4369437))))

(assert (=> b!7295154 (= res!2950768 (is-Concat!27705 (h!77361 (exprs!8300 lt!2597647))))))

(declare-fun e!4369435 () (Set Context!15600))

(declare-fun e!4369436 () (Set Context!15600))

(assert (=> b!7295154 (= e!4369435 e!4369436)))

(declare-fun b!7295155 () Bool)

(declare-fun e!4369438 () (Set Context!15600))

(assert (=> b!7295155 (= e!4369438 (set.insert (Context!15601 (t!385111 (exprs!8300 lt!2597647))) (as set.empty (Set Context!15600))))))

(declare-fun b!7295156 () Bool)

(declare-fun e!4369433 () (Set Context!15600))

(assert (=> b!7295156 (= e!4369433 call!664573)))

(declare-fun call!664572 () (Set Context!15600))

(declare-fun c!1355776 () Bool)

(declare-fun call!664571 () List!71037)

(declare-fun c!1355777 () Bool)

(declare-fun bm!664565 () Bool)

(assert (=> bm!664565 (= call!664572 (derivationStepZipperDown!2766 (ite c!1355777 (regOne!38233 (h!77361 (exprs!8300 lt!2597647))) (ite c!1355775 (regTwo!38232 (h!77361 (exprs!8300 lt!2597647))) (ite c!1355776 (regOne!38232 (h!77361 (exprs!8300 lt!2597647))) (reg!19189 (h!77361 (exprs!8300 lt!2597647)))))) (ite (or c!1355777 c!1355775) (Context!15601 (t!385111 (exprs!8300 lt!2597647))) (Context!15601 call!664571)) (h!77362 s!7854)))))

(declare-fun b!7295157 () Bool)

(declare-fun call!664570 () (Set Context!15600))

(assert (=> b!7295157 (= e!4369435 (set.union call!664572 call!664570))))

(declare-fun b!7295158 () Bool)

(declare-fun e!4369434 () (Set Context!15600))

(assert (=> b!7295158 (= e!4369434 call!664573)))

(declare-fun call!664569 () List!71037)

(declare-fun bm!664566 () Bool)

(assert (=> bm!664566 (= call!664570 (derivationStepZipperDown!2766 (ite c!1355777 (regTwo!38233 (h!77361 (exprs!8300 lt!2597647))) (regOne!38232 (h!77361 (exprs!8300 lt!2597647)))) (ite c!1355777 (Context!15601 (t!385111 (exprs!8300 lt!2597647))) (Context!15601 call!664569)) (h!77362 s!7854)))))

(declare-fun bm!664567 () Bool)

(assert (=> bm!664567 (= call!664569 ($colon$colon!2991 (exprs!8300 (Context!15601 (t!385111 (exprs!8300 lt!2597647)))) (ite (or c!1355775 c!1355776) (regTwo!38232 (h!77361 (exprs!8300 lt!2597647))) (h!77361 (exprs!8300 lt!2597647)))))))

(declare-fun b!7295159 () Bool)

(assert (=> b!7295159 (= e!4369437 (nullable!8037 (regOne!38232 (h!77361 (exprs!8300 lt!2597647)))))))

(declare-fun bm!664568 () Bool)

(assert (=> bm!664568 (= call!664574 call!664572)))

(declare-fun bm!664569 () Bool)

(assert (=> bm!664569 (= call!664571 call!664569)))

(declare-fun d!2266575 () Bool)

(declare-fun c!1355778 () Bool)

(assert (=> d!2266575 (= c!1355778 (and (is-ElementMatch!18860 (h!77361 (exprs!8300 lt!2597647))) (= (c!1355639 (h!77361 (exprs!8300 lt!2597647))) (h!77362 s!7854))))))

(assert (=> d!2266575 (= (derivationStepZipperDown!2766 (h!77361 (exprs!8300 lt!2597647)) (Context!15601 (t!385111 (exprs!8300 lt!2597647))) (h!77362 s!7854)) e!4369438)))

(declare-fun b!7295160 () Bool)

(assert (=> b!7295160 (= e!4369436 (set.union call!664570 call!664574))))

(declare-fun b!7295161 () Bool)

(assert (=> b!7295161 (= e!4369438 e!4369435)))

(assert (=> b!7295161 (= c!1355777 (is-Union!18860 (h!77361 (exprs!8300 lt!2597647))))))

(declare-fun b!7295162 () Bool)

(assert (=> b!7295162 (= e!4369434 (as set.empty (Set Context!15600)))))

(declare-fun b!7295163 () Bool)

(assert (=> b!7295163 (= e!4369436 e!4369433)))

(assert (=> b!7295163 (= c!1355776 (is-Concat!27705 (h!77361 (exprs!8300 lt!2597647))))))

(declare-fun b!7295164 () Bool)

(declare-fun c!1355779 () Bool)

(assert (=> b!7295164 (= c!1355779 (is-Star!18860 (h!77361 (exprs!8300 lt!2597647))))))

(assert (=> b!7295164 (= e!4369433 e!4369434)))

(assert (= (and d!2266575 c!1355778) b!7295155))

(assert (= (and d!2266575 (not c!1355778)) b!7295161))

(assert (= (and b!7295161 c!1355777) b!7295157))

(assert (= (and b!7295161 (not c!1355777)) b!7295154))

(assert (= (and b!7295154 res!2950768) b!7295159))

(assert (= (and b!7295154 c!1355775) b!7295160))

(assert (= (and b!7295154 (not c!1355775)) b!7295163))

(assert (= (and b!7295163 c!1355776) b!7295156))

(assert (= (and b!7295163 (not c!1355776)) b!7295164))

(assert (= (and b!7295164 c!1355779) b!7295158))

(assert (= (and b!7295164 (not c!1355779)) b!7295162))

(assert (= (or b!7295156 b!7295158) bm!664569))

(assert (= (or b!7295156 b!7295158) bm!664564))

(assert (= (or b!7295160 bm!664569) bm!664567))

(assert (= (or b!7295160 bm!664564) bm!664568))

(assert (= (or b!7295157 bm!664568) bm!664565))

(assert (= (or b!7295157 b!7295160) bm!664566))

(declare-fun m!7966826 () Bool)

(assert (=> bm!664567 m!7966826))

(declare-fun m!7966828 () Bool)

(assert (=> b!7295159 m!7966828))

(declare-fun m!7966830 () Bool)

(assert (=> b!7295155 m!7966830))

(declare-fun m!7966832 () Bool)

(assert (=> bm!664566 m!7966832))

(declare-fun m!7966834 () Bool)

(assert (=> bm!664565 m!7966834))

(assert (=> bm!664500 d!2266575))

(declare-fun d!2266577 () Bool)

(declare-fun lt!2597741 () Int)

(assert (=> d!2266577 (>= lt!2597741 0)))

(declare-fun e!4369439 () Int)

(assert (=> d!2266577 (= lt!2597741 e!4369439)))

(declare-fun c!1355780 () Bool)

(assert (=> d!2266577 (= c!1355780 (is-Nil!70913 lt!2597716))))

(assert (=> d!2266577 (= (size!41857 lt!2597716) lt!2597741)))

(declare-fun b!7295165 () Bool)

(assert (=> b!7295165 (= e!4369439 0)))

(declare-fun b!7295166 () Bool)

(assert (=> b!7295166 (= e!4369439 (+ 1 (size!41857 (t!385111 lt!2597716))))))

(assert (= (and d!2266577 c!1355780) b!7295165))

(assert (= (and d!2266577 (not c!1355780)) b!7295166))

(declare-fun m!7966836 () Bool)

(assert (=> b!7295166 m!7966836))

(assert (=> b!7294920 d!2266577))

(declare-fun d!2266579 () Bool)

(declare-fun lt!2597742 () Int)

(assert (=> d!2266579 (>= lt!2597742 0)))

(declare-fun e!4369440 () Int)

(assert (=> d!2266579 (= lt!2597742 e!4369440)))

(declare-fun c!1355781 () Bool)

(assert (=> d!2266579 (= c!1355781 (is-Nil!70913 (exprs!8300 ct1!250)))))

(assert (=> d!2266579 (= (size!41857 (exprs!8300 ct1!250)) lt!2597742)))

(declare-fun b!7295167 () Bool)

(assert (=> b!7295167 (= e!4369440 0)))

(declare-fun b!7295168 () Bool)

(assert (=> b!7295168 (= e!4369440 (+ 1 (size!41857 (t!385111 (exprs!8300 ct1!250)))))))

(assert (= (and d!2266579 c!1355781) b!7295167))

(assert (= (and d!2266579 (not c!1355781)) b!7295168))

(assert (=> b!7295168 m!7966806))

(assert (=> b!7294920 d!2266579))

(assert (=> b!7294920 d!2266513))

(assert (=> bs!1912806 d!2266429))

(declare-fun d!2266581 () Bool)

(declare-fun c!1355782 () Bool)

(assert (=> d!2266581 (= c!1355782 (is-Nil!70913 lt!2597716))))

(declare-fun e!4369441 () (Set Regex!18860))

(assert (=> d!2266581 (= (content!14811 lt!2597716) e!4369441)))

(declare-fun b!7295169 () Bool)

(assert (=> b!7295169 (= e!4369441 (as set.empty (Set Regex!18860)))))

(declare-fun b!7295170 () Bool)

(assert (=> b!7295170 (= e!4369441 (set.union (set.insert (h!77361 lt!2597716) (as set.empty (Set Regex!18860))) (content!14811 (t!385111 lt!2597716))))))

(assert (= (and d!2266581 c!1355782) b!7295169))

(assert (= (and d!2266581 (not c!1355782)) b!7295170))

(declare-fun m!7966838 () Bool)

(assert (=> b!7295170 m!7966838))

(declare-fun m!7966840 () Bool)

(assert (=> b!7295170 m!7966840))

(assert (=> d!2266449 d!2266581))

(declare-fun d!2266583 () Bool)

(declare-fun c!1355783 () Bool)

(assert (=> d!2266583 (= c!1355783 (is-Nil!70913 (exprs!8300 ct1!250)))))

(declare-fun e!4369442 () (Set Regex!18860))

(assert (=> d!2266583 (= (content!14811 (exprs!8300 ct1!250)) e!4369442)))

(declare-fun b!7295171 () Bool)

(assert (=> b!7295171 (= e!4369442 (as set.empty (Set Regex!18860)))))

(declare-fun b!7295172 () Bool)

(assert (=> b!7295172 (= e!4369442 (set.union (set.insert (h!77361 (exprs!8300 ct1!250)) (as set.empty (Set Regex!18860))) (content!14811 (t!385111 (exprs!8300 ct1!250)))))))

(assert (= (and d!2266583 c!1355783) b!7295171))

(assert (= (and d!2266583 (not c!1355783)) b!7295172))

(declare-fun m!7966842 () Bool)

(assert (=> b!7295172 m!7966842))

(assert (=> b!7295172 m!7966810))

(assert (=> d!2266449 d!2266583))

(assert (=> d!2266449 d!2266525))

(declare-fun b!7295187 () Bool)

(declare-fun e!4369456 () Bool)

(declare-fun call!664579 () Bool)

(assert (=> b!7295187 (= e!4369456 call!664579)))

(declare-fun bm!664574 () Bool)

(declare-fun c!1355786 () Bool)

(assert (=> bm!664574 (= call!664579 (nullable!8037 (ite c!1355786 (regTwo!38233 (h!77361 (exprs!8300 ct1!250))) (regOne!38232 (h!77361 (exprs!8300 ct1!250))))))))

(declare-fun bm!664575 () Bool)

(declare-fun call!664580 () Bool)

(assert (=> bm!664575 (= call!664580 (nullable!8037 (ite c!1355786 (regOne!38233 (h!77361 (exprs!8300 ct1!250))) (regTwo!38232 (h!77361 (exprs!8300 ct1!250))))))))

(declare-fun b!7295188 () Bool)

(declare-fun e!4369460 () Bool)

(declare-fun e!4369457 () Bool)

(assert (=> b!7295188 (= e!4369460 e!4369457)))

(declare-fun res!2950779 () Bool)

(assert (=> b!7295188 (=> res!2950779 e!4369457)))

(assert (=> b!7295188 (= res!2950779 (is-Star!18860 (h!77361 (exprs!8300 ct1!250))))))

(declare-fun b!7295189 () Bool)

(declare-fun e!4369455 () Bool)

(declare-fun e!4369459 () Bool)

(assert (=> b!7295189 (= e!4369455 e!4369459)))

(declare-fun res!2950782 () Bool)

(assert (=> b!7295189 (= res!2950782 call!664579)))

(assert (=> b!7295189 (=> (not res!2950782) (not e!4369459))))

(declare-fun b!7295190 () Bool)

(declare-fun e!4369458 () Bool)

(assert (=> b!7295190 (= e!4369458 e!4369460)))

(declare-fun res!2950783 () Bool)

(assert (=> b!7295190 (=> (not res!2950783) (not e!4369460))))

(assert (=> b!7295190 (= res!2950783 (and (not (is-EmptyLang!18860 (h!77361 (exprs!8300 ct1!250)))) (not (is-ElementMatch!18860 (h!77361 (exprs!8300 ct1!250))))))))

(declare-fun d!2266585 () Bool)

(declare-fun res!2950780 () Bool)

(assert (=> d!2266585 (=> res!2950780 e!4369458)))

(assert (=> d!2266585 (= res!2950780 (is-EmptyExpr!18860 (h!77361 (exprs!8300 ct1!250))))))

(assert (=> d!2266585 (= (nullableFct!3175 (h!77361 (exprs!8300 ct1!250))) e!4369458)))

(declare-fun b!7295191 () Bool)

(assert (=> b!7295191 (= e!4369455 e!4369456)))

(declare-fun res!2950781 () Bool)

(assert (=> b!7295191 (= res!2950781 call!664580)))

(assert (=> b!7295191 (=> res!2950781 e!4369456)))

(declare-fun b!7295192 () Bool)

(assert (=> b!7295192 (= e!4369457 e!4369455)))

(assert (=> b!7295192 (= c!1355786 (is-Union!18860 (h!77361 (exprs!8300 ct1!250))))))

(declare-fun b!7295193 () Bool)

(assert (=> b!7295193 (= e!4369459 call!664580)))

(assert (= (and d!2266585 (not res!2950780)) b!7295190))

(assert (= (and b!7295190 res!2950783) b!7295188))

(assert (= (and b!7295188 (not res!2950779)) b!7295192))

(assert (= (and b!7295192 c!1355786) b!7295191))

(assert (= (and b!7295192 (not c!1355786)) b!7295189))

(assert (= (and b!7295191 (not res!2950781)) b!7295187))

(assert (= (and b!7295189 res!2950782) b!7295193))

(assert (= (or b!7295191 b!7295193) bm!664575))

(assert (= (or b!7295187 b!7295189) bm!664574))

(declare-fun m!7966844 () Bool)

(assert (=> bm!664574 m!7966844))

(declare-fun m!7966846 () Bool)

(assert (=> bm!664575 m!7966846))

(assert (=> d!2266427 d!2266585))

(assert (=> d!2266459 d!2266457))

(declare-fun d!2266587 () Bool)

(assert (=> d!2266587 (= (flatMap!2955 lt!2597654 lambda!450223) (dynLambda!28999 lambda!450223 lt!2597647))))

(assert (=> d!2266587 true))

(declare-fun _$13!4672 () Unit!164318)

(assert (=> d!2266587 (= (choose!56521 lt!2597654 lt!2597647 lambda!450223) _$13!4672)))

(declare-fun b_lambda!281285 () Bool)

(assert (=> (not b_lambda!281285) (not d!2266587)))

(declare-fun bs!1912833 () Bool)

(assert (= bs!1912833 d!2266587))

(assert (=> bs!1912833 m!7966382))

(assert (=> bs!1912833 m!7966582))

(assert (=> d!2266459 d!2266587))

(declare-fun bm!664576 () Bool)

(declare-fun call!664585 () (Set Context!15600))

(declare-fun call!664586 () (Set Context!15600))

(assert (=> bm!664576 (= call!664585 call!664586)))

(declare-fun b!7295194 () Bool)

(declare-fun c!1355787 () Bool)

(declare-fun e!4369465 () Bool)

(assert (=> b!7295194 (= c!1355787 e!4369465)))

(declare-fun res!2950784 () Bool)

(assert (=> b!7295194 (=> (not res!2950784) (not e!4369465))))

(assert (=> b!7295194 (= res!2950784 (is-Concat!27705 (h!77361 (exprs!8300 ct1!250))))))

(declare-fun e!4369463 () (Set Context!15600))

(declare-fun e!4369464 () (Set Context!15600))

(assert (=> b!7295194 (= e!4369463 e!4369464)))

(declare-fun b!7295195 () Bool)

(declare-fun e!4369466 () (Set Context!15600))

(assert (=> b!7295195 (= e!4369466 (set.insert (Context!15601 (t!385111 (exprs!8300 ct1!250))) (as set.empty (Set Context!15600))))))

(declare-fun b!7295196 () Bool)

(declare-fun e!4369461 () (Set Context!15600))

(assert (=> b!7295196 (= e!4369461 call!664585)))

(declare-fun bm!664577 () Bool)

(declare-fun c!1355789 () Bool)

(declare-fun call!664584 () (Set Context!15600))

(declare-fun call!664583 () List!71037)

(declare-fun c!1355788 () Bool)

(assert (=> bm!664577 (= call!664584 (derivationStepZipperDown!2766 (ite c!1355789 (regOne!38233 (h!77361 (exprs!8300 ct1!250))) (ite c!1355787 (regTwo!38232 (h!77361 (exprs!8300 ct1!250))) (ite c!1355788 (regOne!38232 (h!77361 (exprs!8300 ct1!250))) (reg!19189 (h!77361 (exprs!8300 ct1!250)))))) (ite (or c!1355789 c!1355787) (Context!15601 (t!385111 (exprs!8300 ct1!250))) (Context!15601 call!664583)) (h!77362 s!7854)))))

(declare-fun b!7295197 () Bool)

(declare-fun call!664582 () (Set Context!15600))

(assert (=> b!7295197 (= e!4369463 (set.union call!664584 call!664582))))

(declare-fun b!7295198 () Bool)

(declare-fun e!4369462 () (Set Context!15600))

(assert (=> b!7295198 (= e!4369462 call!664585)))

(declare-fun call!664581 () List!71037)

(declare-fun bm!664578 () Bool)

(assert (=> bm!664578 (= call!664582 (derivationStepZipperDown!2766 (ite c!1355789 (regTwo!38233 (h!77361 (exprs!8300 ct1!250))) (regOne!38232 (h!77361 (exprs!8300 ct1!250)))) (ite c!1355789 (Context!15601 (t!385111 (exprs!8300 ct1!250))) (Context!15601 call!664581)) (h!77362 s!7854)))))

(declare-fun bm!664579 () Bool)

(assert (=> bm!664579 (= call!664581 ($colon$colon!2991 (exprs!8300 (Context!15601 (t!385111 (exprs!8300 ct1!250)))) (ite (or c!1355787 c!1355788) (regTwo!38232 (h!77361 (exprs!8300 ct1!250))) (h!77361 (exprs!8300 ct1!250)))))))

(declare-fun b!7295199 () Bool)

(assert (=> b!7295199 (= e!4369465 (nullable!8037 (regOne!38232 (h!77361 (exprs!8300 ct1!250)))))))

(declare-fun bm!664580 () Bool)

(assert (=> bm!664580 (= call!664586 call!664584)))

(declare-fun bm!664581 () Bool)

(assert (=> bm!664581 (= call!664583 call!664581)))

(declare-fun d!2266589 () Bool)

(declare-fun c!1355790 () Bool)

(assert (=> d!2266589 (= c!1355790 (and (is-ElementMatch!18860 (h!77361 (exprs!8300 ct1!250))) (= (c!1355639 (h!77361 (exprs!8300 ct1!250))) (h!77362 s!7854))))))

(assert (=> d!2266589 (= (derivationStepZipperDown!2766 (h!77361 (exprs!8300 ct1!250)) (Context!15601 (t!385111 (exprs!8300 ct1!250))) (h!77362 s!7854)) e!4369466)))

(declare-fun b!7295200 () Bool)

(assert (=> b!7295200 (= e!4369464 (set.union call!664582 call!664586))))

(declare-fun b!7295201 () Bool)

(assert (=> b!7295201 (= e!4369466 e!4369463)))

(assert (=> b!7295201 (= c!1355789 (is-Union!18860 (h!77361 (exprs!8300 ct1!250))))))

(declare-fun b!7295202 () Bool)

(assert (=> b!7295202 (= e!4369462 (as set.empty (Set Context!15600)))))

(declare-fun b!7295203 () Bool)

(assert (=> b!7295203 (= e!4369464 e!4369461)))

(assert (=> b!7295203 (= c!1355788 (is-Concat!27705 (h!77361 (exprs!8300 ct1!250))))))

(declare-fun b!7295204 () Bool)

(declare-fun c!1355791 () Bool)

(assert (=> b!7295204 (= c!1355791 (is-Star!18860 (h!77361 (exprs!8300 ct1!250))))))

(assert (=> b!7295204 (= e!4369461 e!4369462)))

(assert (= (and d!2266589 c!1355790) b!7295195))

(assert (= (and d!2266589 (not c!1355790)) b!7295201))

(assert (= (and b!7295201 c!1355789) b!7295197))

(assert (= (and b!7295201 (not c!1355789)) b!7295194))

(assert (= (and b!7295194 res!2950784) b!7295199))

(assert (= (and b!7295194 c!1355787) b!7295200))

(assert (= (and b!7295194 (not c!1355787)) b!7295203))

(assert (= (and b!7295203 c!1355788) b!7295196))

(assert (= (and b!7295203 (not c!1355788)) b!7295204))

(assert (= (and b!7295204 c!1355791) b!7295198))

(assert (= (and b!7295204 (not c!1355791)) b!7295202))

(assert (= (or b!7295196 b!7295198) bm!664581))

(assert (= (or b!7295196 b!7295198) bm!664576))

(assert (= (or b!7295200 bm!664581) bm!664579))

(assert (= (or b!7295200 bm!664576) bm!664580))

(assert (= (or b!7295197 bm!664580) bm!664577))

(assert (= (or b!7295197 b!7295200) bm!664578))

(declare-fun m!7966848 () Bool)

(assert (=> bm!664579 m!7966848))

(assert (=> b!7295199 m!7966458))

(declare-fun m!7966850 () Bool)

(assert (=> b!7295195 m!7966850))

(declare-fun m!7966852 () Bool)

(assert (=> bm!664578 m!7966852))

(declare-fun m!7966854 () Bool)

(assert (=> bm!664577 m!7966854))

(assert (=> bm!664499 d!2266589))

(assert (=> d!2266451 d!2266445))

(declare-fun d!2266591 () Bool)

(assert (=> d!2266591 (= (flatMap!2955 lt!2597656 lambda!450223) (dynLambda!28999 lambda!450223 ct1!250))))

(assert (=> d!2266591 true))

(declare-fun _$13!4673 () Unit!164318)

(assert (=> d!2266591 (= (choose!56521 lt!2597656 ct1!250 lambda!450223) _$13!4673)))

(declare-fun b_lambda!281287 () Bool)

(assert (=> (not b_lambda!281287) (not d!2266591)))

(declare-fun bs!1912834 () Bool)

(assert (= bs!1912834 d!2266591))

(assert (=> bs!1912834 m!7966384))

(assert (=> bs!1912834 m!7966568))

(assert (=> d!2266451 d!2266591))

(declare-fun d!2266593 () Bool)

(declare-fun res!2950785 () Bool)

(declare-fun e!4369467 () Bool)

(assert (=> d!2266593 (=> res!2950785 e!4369467)))

(assert (=> d!2266593 (= res!2950785 (is-Nil!70913 (exprs!8300 ct1!250)))))

(assert (=> d!2266593 (= (forall!17683 (exprs!8300 ct1!250) lambda!450256) e!4369467)))

(declare-fun b!7295205 () Bool)

(declare-fun e!4369468 () Bool)

(assert (=> b!7295205 (= e!4369467 e!4369468)))

(declare-fun res!2950786 () Bool)

(assert (=> b!7295205 (=> (not res!2950786) (not e!4369468))))

(assert (=> b!7295205 (= res!2950786 (dynLambda!29001 lambda!450256 (h!77361 (exprs!8300 ct1!250))))))

(declare-fun b!7295206 () Bool)

(assert (=> b!7295206 (= e!4369468 (forall!17683 (t!385111 (exprs!8300 ct1!250)) lambda!450256))))

(assert (= (and d!2266593 (not res!2950785)) b!7295205))

(assert (= (and b!7295205 res!2950786) b!7295206))

(declare-fun b_lambda!281289 () Bool)

(assert (=> (not b_lambda!281289) (not b!7295205)))

(declare-fun m!7966856 () Bool)

(assert (=> b!7295205 m!7966856))

(declare-fun m!7966858 () Bool)

(assert (=> b!7295206 m!7966858))

(assert (=> d!2266443 d!2266593))

(declare-fun bm!664582 () Bool)

(declare-fun call!664591 () (Set Context!15600))

(declare-fun call!664592 () (Set Context!15600))

(assert (=> bm!664582 (= call!664591 call!664592)))

(declare-fun b!7295207 () Bool)

(declare-fun c!1355792 () Bool)

(declare-fun e!4369473 () Bool)

(assert (=> b!7295207 (= c!1355792 e!4369473)))

(declare-fun res!2950787 () Bool)

(assert (=> b!7295207 (=> (not res!2950787) (not e!4369473))))

(assert (=> b!7295207 (= res!2950787 (is-Concat!27705 (ite c!1355673 (regOne!38233 (h!77361 (exprs!8300 ct1!250))) (ite c!1355671 (regTwo!38232 (h!77361 (exprs!8300 ct1!250))) (ite c!1355672 (regOne!38232 (h!77361 (exprs!8300 ct1!250))) (reg!19189 (h!77361 (exprs!8300 ct1!250))))))))))

(declare-fun e!4369471 () (Set Context!15600))

(declare-fun e!4369472 () (Set Context!15600))

(assert (=> b!7295207 (= e!4369471 e!4369472)))

(declare-fun b!7295208 () Bool)

(declare-fun e!4369474 () (Set Context!15600))

(assert (=> b!7295208 (= e!4369474 (set.insert (ite (or c!1355673 c!1355671) lt!2597651 (Context!15601 call!664500)) (as set.empty (Set Context!15600))))))

(declare-fun b!7295209 () Bool)

(declare-fun e!4369469 () (Set Context!15600))

(assert (=> b!7295209 (= e!4369469 call!664591)))

(declare-fun c!1355793 () Bool)

(declare-fun call!664589 () List!71037)

(declare-fun call!664590 () (Set Context!15600))

(declare-fun bm!664583 () Bool)

(declare-fun c!1355794 () Bool)

(assert (=> bm!664583 (= call!664590 (derivationStepZipperDown!2766 (ite c!1355794 (regOne!38233 (ite c!1355673 (regOne!38233 (h!77361 (exprs!8300 ct1!250))) (ite c!1355671 (regTwo!38232 (h!77361 (exprs!8300 ct1!250))) (ite c!1355672 (regOne!38232 (h!77361 (exprs!8300 ct1!250))) (reg!19189 (h!77361 (exprs!8300 ct1!250))))))) (ite c!1355792 (regTwo!38232 (ite c!1355673 (regOne!38233 (h!77361 (exprs!8300 ct1!250))) (ite c!1355671 (regTwo!38232 (h!77361 (exprs!8300 ct1!250))) (ite c!1355672 (regOne!38232 (h!77361 (exprs!8300 ct1!250))) (reg!19189 (h!77361 (exprs!8300 ct1!250))))))) (ite c!1355793 (regOne!38232 (ite c!1355673 (regOne!38233 (h!77361 (exprs!8300 ct1!250))) (ite c!1355671 (regTwo!38232 (h!77361 (exprs!8300 ct1!250))) (ite c!1355672 (regOne!38232 (h!77361 (exprs!8300 ct1!250))) (reg!19189 (h!77361 (exprs!8300 ct1!250))))))) (reg!19189 (ite c!1355673 (regOne!38233 (h!77361 (exprs!8300 ct1!250))) (ite c!1355671 (regTwo!38232 (h!77361 (exprs!8300 ct1!250))) (ite c!1355672 (regOne!38232 (h!77361 (exprs!8300 ct1!250))) (reg!19189 (h!77361 (exprs!8300 ct1!250)))))))))) (ite (or c!1355794 c!1355792) (ite (or c!1355673 c!1355671) lt!2597651 (Context!15601 call!664500)) (Context!15601 call!664589)) (h!77362 s!7854)))))

(declare-fun b!7295210 () Bool)

(declare-fun call!664588 () (Set Context!15600))

(assert (=> b!7295210 (= e!4369471 (set.union call!664590 call!664588))))

(declare-fun b!7295211 () Bool)

(declare-fun e!4369470 () (Set Context!15600))

(assert (=> b!7295211 (= e!4369470 call!664591)))

(declare-fun call!664587 () List!71037)

(declare-fun bm!664584 () Bool)

(assert (=> bm!664584 (= call!664588 (derivationStepZipperDown!2766 (ite c!1355794 (regTwo!38233 (ite c!1355673 (regOne!38233 (h!77361 (exprs!8300 ct1!250))) (ite c!1355671 (regTwo!38232 (h!77361 (exprs!8300 ct1!250))) (ite c!1355672 (regOne!38232 (h!77361 (exprs!8300 ct1!250))) (reg!19189 (h!77361 (exprs!8300 ct1!250))))))) (regOne!38232 (ite c!1355673 (regOne!38233 (h!77361 (exprs!8300 ct1!250))) (ite c!1355671 (regTwo!38232 (h!77361 (exprs!8300 ct1!250))) (ite c!1355672 (regOne!38232 (h!77361 (exprs!8300 ct1!250))) (reg!19189 (h!77361 (exprs!8300 ct1!250)))))))) (ite c!1355794 (ite (or c!1355673 c!1355671) lt!2597651 (Context!15601 call!664500)) (Context!15601 call!664587)) (h!77362 s!7854)))))

(declare-fun bm!664585 () Bool)

(assert (=> bm!664585 (= call!664587 ($colon$colon!2991 (exprs!8300 (ite (or c!1355673 c!1355671) lt!2597651 (Context!15601 call!664500))) (ite (or c!1355792 c!1355793) (regTwo!38232 (ite c!1355673 (regOne!38233 (h!77361 (exprs!8300 ct1!250))) (ite c!1355671 (regTwo!38232 (h!77361 (exprs!8300 ct1!250))) (ite c!1355672 (regOne!38232 (h!77361 (exprs!8300 ct1!250))) (reg!19189 (h!77361 (exprs!8300 ct1!250))))))) (ite c!1355673 (regOne!38233 (h!77361 (exprs!8300 ct1!250))) (ite c!1355671 (regTwo!38232 (h!77361 (exprs!8300 ct1!250))) (ite c!1355672 (regOne!38232 (h!77361 (exprs!8300 ct1!250))) (reg!19189 (h!77361 (exprs!8300 ct1!250)))))))))))

(declare-fun b!7295212 () Bool)

(assert (=> b!7295212 (= e!4369473 (nullable!8037 (regOne!38232 (ite c!1355673 (regOne!38233 (h!77361 (exprs!8300 ct1!250))) (ite c!1355671 (regTwo!38232 (h!77361 (exprs!8300 ct1!250))) (ite c!1355672 (regOne!38232 (h!77361 (exprs!8300 ct1!250))) (reg!19189 (h!77361 (exprs!8300 ct1!250)))))))))))

(declare-fun bm!664586 () Bool)

(assert (=> bm!664586 (= call!664592 call!664590)))

(declare-fun bm!664587 () Bool)

(assert (=> bm!664587 (= call!664589 call!664587)))

(declare-fun c!1355795 () Bool)

(declare-fun d!2266595 () Bool)

(assert (=> d!2266595 (= c!1355795 (and (is-ElementMatch!18860 (ite c!1355673 (regOne!38233 (h!77361 (exprs!8300 ct1!250))) (ite c!1355671 (regTwo!38232 (h!77361 (exprs!8300 ct1!250))) (ite c!1355672 (regOne!38232 (h!77361 (exprs!8300 ct1!250))) (reg!19189 (h!77361 (exprs!8300 ct1!250))))))) (= (c!1355639 (ite c!1355673 (regOne!38233 (h!77361 (exprs!8300 ct1!250))) (ite c!1355671 (regTwo!38232 (h!77361 (exprs!8300 ct1!250))) (ite c!1355672 (regOne!38232 (h!77361 (exprs!8300 ct1!250))) (reg!19189 (h!77361 (exprs!8300 ct1!250))))))) (h!77362 s!7854))))))

(assert (=> d!2266595 (= (derivationStepZipperDown!2766 (ite c!1355673 (regOne!38233 (h!77361 (exprs!8300 ct1!250))) (ite c!1355671 (regTwo!38232 (h!77361 (exprs!8300 ct1!250))) (ite c!1355672 (regOne!38232 (h!77361 (exprs!8300 ct1!250))) (reg!19189 (h!77361 (exprs!8300 ct1!250)))))) (ite (or c!1355673 c!1355671) lt!2597651 (Context!15601 call!664500)) (h!77362 s!7854)) e!4369474)))

(declare-fun b!7295213 () Bool)

(assert (=> b!7295213 (= e!4369472 (set.union call!664588 call!664592))))

(declare-fun b!7295214 () Bool)

(assert (=> b!7295214 (= e!4369474 e!4369471)))

(assert (=> b!7295214 (= c!1355794 (is-Union!18860 (ite c!1355673 (regOne!38233 (h!77361 (exprs!8300 ct1!250))) (ite c!1355671 (regTwo!38232 (h!77361 (exprs!8300 ct1!250))) (ite c!1355672 (regOne!38232 (h!77361 (exprs!8300 ct1!250))) (reg!19189 (h!77361 (exprs!8300 ct1!250))))))))))

(declare-fun b!7295215 () Bool)

(assert (=> b!7295215 (= e!4369470 (as set.empty (Set Context!15600)))))

(declare-fun b!7295216 () Bool)

(assert (=> b!7295216 (= e!4369472 e!4369469)))

(assert (=> b!7295216 (= c!1355793 (is-Concat!27705 (ite c!1355673 (regOne!38233 (h!77361 (exprs!8300 ct1!250))) (ite c!1355671 (regTwo!38232 (h!77361 (exprs!8300 ct1!250))) (ite c!1355672 (regOne!38232 (h!77361 (exprs!8300 ct1!250))) (reg!19189 (h!77361 (exprs!8300 ct1!250))))))))))

(declare-fun c!1355796 () Bool)

(declare-fun b!7295217 () Bool)

(assert (=> b!7295217 (= c!1355796 (is-Star!18860 (ite c!1355673 (regOne!38233 (h!77361 (exprs!8300 ct1!250))) (ite c!1355671 (regTwo!38232 (h!77361 (exprs!8300 ct1!250))) (ite c!1355672 (regOne!38232 (h!77361 (exprs!8300 ct1!250))) (reg!19189 (h!77361 (exprs!8300 ct1!250))))))))))

(assert (=> b!7295217 (= e!4369469 e!4369470)))

(assert (= (and d!2266595 c!1355795) b!7295208))

(assert (= (and d!2266595 (not c!1355795)) b!7295214))

(assert (= (and b!7295214 c!1355794) b!7295210))

(assert (= (and b!7295214 (not c!1355794)) b!7295207))

(assert (= (and b!7295207 res!2950787) b!7295212))

(assert (= (and b!7295207 c!1355792) b!7295213))

(assert (= (and b!7295207 (not c!1355792)) b!7295216))

(assert (= (and b!7295216 c!1355793) b!7295209))

(assert (= (and b!7295216 (not c!1355793)) b!7295217))

(assert (= (and b!7295217 c!1355796) b!7295211))

(assert (= (and b!7295217 (not c!1355796)) b!7295215))

(assert (= (or b!7295209 b!7295211) bm!664587))

(assert (= (or b!7295209 b!7295211) bm!664582))

(assert (= (or b!7295213 bm!664587) bm!664585))

(assert (= (or b!7295213 bm!664582) bm!664586))

(assert (= (or b!7295210 bm!664586) bm!664583))

(assert (= (or b!7295210 b!7295213) bm!664584))

(declare-fun m!7966860 () Bool)

(assert (=> bm!664585 m!7966860))

(declare-fun m!7966862 () Bool)

(assert (=> b!7295212 m!7966862))

(declare-fun m!7966864 () Bool)

(assert (=> b!7295208 m!7966864))

(declare-fun m!7966866 () Bool)

(assert (=> bm!664584 m!7966866))

(declare-fun m!7966868 () Bool)

(assert (=> bm!664583 m!7966868))

(assert (=> bm!664494 d!2266595))

(declare-fun b!7295218 () Bool)

(declare-fun e!4369476 () (Set Context!15600))

(assert (=> b!7295218 (= e!4369476 (as set.empty (Set Context!15600)))))

(declare-fun bm!664588 () Bool)

(declare-fun call!664593 () (Set Context!15600))

(assert (=> bm!664588 (= call!664593 (derivationStepZipperDown!2766 (h!77361 (exprs!8300 (Context!15601 (t!385111 (exprs!8300 ct1!250))))) (Context!15601 (t!385111 (exprs!8300 (Context!15601 (t!385111 (exprs!8300 ct1!250)))))) (h!77362 s!7854)))))

(declare-fun b!7295219 () Bool)

(declare-fun e!4369475 () (Set Context!15600))

(assert (=> b!7295219 (= e!4369475 (set.union call!664593 (derivationStepZipperUp!2610 (Context!15601 (t!385111 (exprs!8300 (Context!15601 (t!385111 (exprs!8300 ct1!250)))))) (h!77362 s!7854))))))

(declare-fun b!7295220 () Bool)

(assert (=> b!7295220 (= e!4369475 e!4369476)))

(declare-fun c!1355798 () Bool)

(assert (=> b!7295220 (= c!1355798 (is-Cons!70913 (exprs!8300 (Context!15601 (t!385111 (exprs!8300 ct1!250))))))))

(declare-fun b!7295222 () Bool)

(assert (=> b!7295222 (= e!4369476 call!664593)))

(declare-fun b!7295221 () Bool)

(declare-fun e!4369477 () Bool)

(assert (=> b!7295221 (= e!4369477 (nullable!8037 (h!77361 (exprs!8300 (Context!15601 (t!385111 (exprs!8300 ct1!250)))))))))

(declare-fun d!2266597 () Bool)

(declare-fun c!1355797 () Bool)

(assert (=> d!2266597 (= c!1355797 e!4369477)))

(declare-fun res!2950788 () Bool)

(assert (=> d!2266597 (=> (not res!2950788) (not e!4369477))))

(assert (=> d!2266597 (= res!2950788 (is-Cons!70913 (exprs!8300 (Context!15601 (t!385111 (exprs!8300 ct1!250))))))))

(assert (=> d!2266597 (= (derivationStepZipperUp!2610 (Context!15601 (t!385111 (exprs!8300 ct1!250))) (h!77362 s!7854)) e!4369475)))

(assert (= (and d!2266597 res!2950788) b!7295221))

(assert (= (and d!2266597 c!1355797) b!7295219))

(assert (= (and d!2266597 (not c!1355797)) b!7295220))

(assert (= (and b!7295220 c!1355798) b!7295222))

(assert (= (and b!7295220 (not c!1355798)) b!7295218))

(assert (= (or b!7295219 b!7295222) bm!664588))

(declare-fun m!7966870 () Bool)

(assert (=> bm!664588 m!7966870))

(declare-fun m!7966872 () Bool)

(assert (=> b!7295219 m!7966872))

(declare-fun m!7966874 () Bool)

(assert (=> b!7295221 m!7966874))

(assert (=> b!7294903 d!2266597))

(assert (=> b!7294905 d!2266427))

(declare-fun d!2266599 () Bool)

(declare-fun res!2950789 () Bool)

(declare-fun e!4369478 () Bool)

(assert (=> d!2266599 (=> res!2950789 e!4369478)))

(assert (=> d!2266599 (= res!2950789 (is-Nil!70913 (++!16750 (exprs!8300 ct1!250) (exprs!8300 ct2!346))))))

(assert (=> d!2266599 (= (forall!17683 (++!16750 (exprs!8300 ct1!250) (exprs!8300 ct2!346)) lambda!450222) e!4369478)))

(declare-fun b!7295223 () Bool)

(declare-fun e!4369479 () Bool)

(assert (=> b!7295223 (= e!4369478 e!4369479)))

(declare-fun res!2950790 () Bool)

(assert (=> b!7295223 (=> (not res!2950790) (not e!4369479))))

(assert (=> b!7295223 (= res!2950790 (dynLambda!29001 lambda!450222 (h!77361 (++!16750 (exprs!8300 ct1!250) (exprs!8300 ct2!346)))))))

(declare-fun b!7295224 () Bool)

(assert (=> b!7295224 (= e!4369479 (forall!17683 (t!385111 (++!16750 (exprs!8300 ct1!250) (exprs!8300 ct2!346))) lambda!450222))))

(assert (= (and d!2266599 (not res!2950789)) b!7295223))

(assert (= (and b!7295223 res!2950790) b!7295224))

(declare-fun b_lambda!281291 () Bool)

(assert (=> (not b_lambda!281291) (not b!7295223)))

(declare-fun m!7966876 () Bool)

(assert (=> b!7295223 m!7966876))

(declare-fun m!7966878 () Bool)

(assert (=> b!7295224 m!7966878))

(assert (=> d!2266453 d!2266599))

(assert (=> d!2266453 d!2266449))

(declare-fun d!2266601 () Bool)

(assert (=> d!2266601 (forall!17683 (++!16750 (exprs!8300 ct1!250) (exprs!8300 ct2!346)) lambda!450222)))

(assert (=> d!2266601 true))

(declare-fun _$78!853 () Unit!164318)

(assert (=> d!2266601 (= (choose!56519 (exprs!8300 ct1!250) (exprs!8300 ct2!346) lambda!450222) _$78!853)))

(declare-fun bs!1912835 () Bool)

(assert (= bs!1912835 d!2266601))

(assert (=> bs!1912835 m!7966392))

(assert (=> bs!1912835 m!7966392))

(assert (=> bs!1912835 m!7966572))

(assert (=> d!2266453 d!2266601))

(declare-fun d!2266603 () Bool)

(declare-fun res!2950791 () Bool)

(declare-fun e!4369480 () Bool)

(assert (=> d!2266603 (=> res!2950791 e!4369480)))

(assert (=> d!2266603 (= res!2950791 (is-Nil!70913 (exprs!8300 ct1!250)))))

(assert (=> d!2266603 (= (forall!17683 (exprs!8300 ct1!250) lambda!450222) e!4369480)))

(declare-fun b!7295225 () Bool)

(declare-fun e!4369481 () Bool)

(assert (=> b!7295225 (= e!4369480 e!4369481)))

(declare-fun res!2950792 () Bool)

(assert (=> b!7295225 (=> (not res!2950792) (not e!4369481))))

(assert (=> b!7295225 (= res!2950792 (dynLambda!29001 lambda!450222 (h!77361 (exprs!8300 ct1!250))))))

(declare-fun b!7295226 () Bool)

(assert (=> b!7295226 (= e!4369481 (forall!17683 (t!385111 (exprs!8300 ct1!250)) lambda!450222))))

(assert (= (and d!2266603 (not res!2950791)) b!7295225))

(assert (= (and b!7295225 res!2950792) b!7295226))

(declare-fun b_lambda!281293 () Bool)

(assert (=> (not b_lambda!281293) (not b!7295225)))

(declare-fun m!7966880 () Bool)

(assert (=> b!7295225 m!7966880))

(declare-fun m!7966882 () Bool)

(assert (=> b!7295226 m!7966882))

(assert (=> d!2266453 d!2266603))

(declare-fun d!2266605 () Bool)

(declare-fun res!2950793 () Bool)

(declare-fun e!4369482 () Bool)

(assert (=> d!2266605 (=> res!2950793 e!4369482)))

(assert (=> d!2266605 (= res!2950793 (is-Nil!70913 (exprs!8300 ct2!346)))))

(assert (=> d!2266605 (= (forall!17683 (exprs!8300 ct2!346) lambda!450255) e!4369482)))

(declare-fun b!7295227 () Bool)

(declare-fun e!4369483 () Bool)

(assert (=> b!7295227 (= e!4369482 e!4369483)))

(declare-fun res!2950794 () Bool)

(assert (=> b!7295227 (=> (not res!2950794) (not e!4369483))))

(assert (=> b!7295227 (= res!2950794 (dynLambda!29001 lambda!450255 (h!77361 (exprs!8300 ct2!346))))))

(declare-fun b!7295228 () Bool)

(assert (=> b!7295228 (= e!4369483 (forall!17683 (t!385111 (exprs!8300 ct2!346)) lambda!450255))))

(assert (= (and d!2266605 (not res!2950793)) b!7295227))

(assert (= (and b!7295227 res!2950794) b!7295228))

(declare-fun b_lambda!281295 () Bool)

(assert (=> (not b_lambda!281295) (not b!7295227)))

(declare-fun m!7966884 () Bool)

(assert (=> b!7295227 m!7966884))

(declare-fun m!7966886 () Bool)

(assert (=> b!7295228 m!7966886))

(assert (=> d!2266439 d!2266605))

(declare-fun b!7295229 () Bool)

(declare-fun e!4369484 () Bool)

(declare-fun tp!2062239 () Bool)

(assert (=> b!7295229 (= e!4369484 (and tp_is_empty!47185 tp!2062239))))

(assert (=> b!7294938 (= tp!2062211 e!4369484)))

(assert (= (and b!7294938 (is-Cons!70914 (t!385112 (t!385112 s!7854)))) b!7295229))

(declare-fun b!7295243 () Bool)

(declare-fun e!4369487 () Bool)

(declare-fun tp!2062251 () Bool)

(declare-fun tp!2062253 () Bool)

(assert (=> b!7295243 (= e!4369487 (and tp!2062251 tp!2062253))))

(declare-fun b!7295240 () Bool)

(assert (=> b!7295240 (= e!4369487 tp_is_empty!47185)))

(declare-fun b!7295241 () Bool)

(declare-fun tp!2062252 () Bool)

(declare-fun tp!2062250 () Bool)

(assert (=> b!7295241 (= e!4369487 (and tp!2062252 tp!2062250))))

(declare-fun b!7295242 () Bool)

(declare-fun tp!2062254 () Bool)

(assert (=> b!7295242 (= e!4369487 tp!2062254)))

(assert (=> b!7294944 (= tp!2062218 e!4369487)))

(assert (= (and b!7294944 (is-ElementMatch!18860 (h!77361 (exprs!8300 ct2!346)))) b!7295240))

(assert (= (and b!7294944 (is-Concat!27705 (h!77361 (exprs!8300 ct2!346)))) b!7295241))

(assert (= (and b!7294944 (is-Star!18860 (h!77361 (exprs!8300 ct2!346)))) b!7295242))

(assert (= (and b!7294944 (is-Union!18860 (h!77361 (exprs!8300 ct2!346)))) b!7295243))

(declare-fun b!7295244 () Bool)

(declare-fun e!4369488 () Bool)

(declare-fun tp!2062255 () Bool)

(declare-fun tp!2062256 () Bool)

(assert (=> b!7295244 (= e!4369488 (and tp!2062255 tp!2062256))))

(assert (=> b!7294944 (= tp!2062219 e!4369488)))

(assert (= (and b!7294944 (is-Cons!70913 (t!385111 (exprs!8300 ct2!346)))) b!7295244))

(declare-fun b!7295248 () Bool)

(declare-fun e!4369489 () Bool)

(declare-fun tp!2062258 () Bool)

(declare-fun tp!2062260 () Bool)

(assert (=> b!7295248 (= e!4369489 (and tp!2062258 tp!2062260))))

(declare-fun b!7295245 () Bool)

(assert (=> b!7295245 (= e!4369489 tp_is_empty!47185)))

(declare-fun b!7295246 () Bool)

(declare-fun tp!2062259 () Bool)

(declare-fun tp!2062257 () Bool)

(assert (=> b!7295246 (= e!4369489 (and tp!2062259 tp!2062257))))

(declare-fun b!7295247 () Bool)

(declare-fun tp!2062261 () Bool)

(assert (=> b!7295247 (= e!4369489 tp!2062261)))

(assert (=> b!7294943 (= tp!2062216 e!4369489)))

(assert (= (and b!7294943 (is-ElementMatch!18860 (h!77361 (exprs!8300 ct1!250)))) b!7295245))

(assert (= (and b!7294943 (is-Concat!27705 (h!77361 (exprs!8300 ct1!250)))) b!7295246))

(assert (= (and b!7294943 (is-Star!18860 (h!77361 (exprs!8300 ct1!250)))) b!7295247))

(assert (= (and b!7294943 (is-Union!18860 (h!77361 (exprs!8300 ct1!250)))) b!7295248))

(declare-fun b!7295249 () Bool)

(declare-fun e!4369490 () Bool)

(declare-fun tp!2062262 () Bool)

(declare-fun tp!2062263 () Bool)

(assert (=> b!7295249 (= e!4369490 (and tp!2062262 tp!2062263))))

(assert (=> b!7294943 (= tp!2062217 e!4369490)))

(assert (= (and b!7294943 (is-Cons!70913 (t!385111 (exprs!8300 ct1!250)))) b!7295249))

(declare-fun b_lambda!281297 () Bool)

(assert (= b_lambda!281277 (or d!2266403 b_lambda!281297)))

(declare-fun bs!1912836 () Bool)

(declare-fun d!2266607 () Bool)

(assert (= bs!1912836 (and d!2266607 d!2266403)))

(assert (=> bs!1912836 (= (dynLambda!29001 lambda!450244 (h!77361 (exprs!8300 lt!2597659))) (nullable!8037 (h!77361 (exprs!8300 lt!2597659))))))

(assert (=> bs!1912836 m!7966470))

(assert (=> b!7295112 d!2266607))

(declare-fun b_lambda!281299 () Bool)

(assert (= b_lambda!281281 (or b!7294779 b_lambda!281299)))

(declare-fun bs!1912837 () Bool)

(declare-fun d!2266609 () Bool)

(assert (= bs!1912837 (and d!2266609 b!7294779)))

(declare-fun validRegex!9605 (Regex!18860) Bool)

(assert (=> bs!1912837 (= (dynLambda!29001 lambda!450222 (h!77361 lt!2597649)) (validRegex!9605 (h!77361 lt!2597649)))))

(declare-fun m!7966888 () Bool)

(assert (=> bs!1912837 m!7966888))

(assert (=> b!7295133 d!2266609))

(declare-fun b_lambda!281301 () Bool)

(assert (= b_lambda!281289 (or d!2266443 b_lambda!281301)))

(declare-fun bs!1912838 () Bool)

(declare-fun d!2266611 () Bool)

(assert (= bs!1912838 (and d!2266611 d!2266443)))

(assert (=> bs!1912838 (= (dynLambda!29001 lambda!450256 (h!77361 (exprs!8300 ct1!250))) (validRegex!9605 (h!77361 (exprs!8300 ct1!250))))))

(declare-fun m!7966890 () Bool)

(assert (=> bs!1912838 m!7966890))

(assert (=> b!7295205 d!2266611))

(declare-fun b_lambda!281303 () Bool)

(assert (= b_lambda!281295 (or d!2266439 b_lambda!281303)))

(declare-fun bs!1912839 () Bool)

(declare-fun d!2266613 () Bool)

(assert (= bs!1912839 (and d!2266613 d!2266439)))

(assert (=> bs!1912839 (= (dynLambda!29001 lambda!450255 (h!77361 (exprs!8300 ct2!346))) (validRegex!9605 (h!77361 (exprs!8300 ct2!346))))))

(declare-fun m!7966892 () Bool)

(assert (=> bs!1912839 m!7966892))

(assert (=> b!7295227 d!2266613))

(declare-fun b_lambda!281305 () Bool)

(assert (= b_lambda!281287 (or b!7294779 b_lambda!281305)))

(assert (=> d!2266591 d!2266461))

(declare-fun b_lambda!281307 () Bool)

(assert (= b_lambda!281293 (or b!7294779 b_lambda!281307)))

(declare-fun bs!1912840 () Bool)

(declare-fun d!2266615 () Bool)

(assert (= bs!1912840 (and d!2266615 b!7294779)))

(assert (=> bs!1912840 (= (dynLambda!29001 lambda!450222 (h!77361 (exprs!8300 ct1!250))) (validRegex!9605 (h!77361 (exprs!8300 ct1!250))))))

(assert (=> bs!1912840 m!7966890))

(assert (=> b!7295225 d!2266615))

(declare-fun b_lambda!281309 () Bool)

(assert (= b_lambda!281285 (or b!7294779 b_lambda!281309)))

(assert (=> d!2266587 d!2266463))

(declare-fun b_lambda!281311 () Bool)

(assert (= b_lambda!281291 (or b!7294779 b_lambda!281311)))

(declare-fun bs!1912841 () Bool)

(declare-fun d!2266617 () Bool)

(assert (= bs!1912841 (and d!2266617 b!7294779)))

(assert (=> bs!1912841 (= (dynLambda!29001 lambda!450222 (h!77361 (++!16750 (exprs!8300 ct1!250) (exprs!8300 ct2!346)))) (validRegex!9605 (h!77361 (++!16750 (exprs!8300 ct1!250) (exprs!8300 ct2!346)))))))

(declare-fun m!7966894 () Bool)

(assert (=> bs!1912841 m!7966894))

(assert (=> b!7295223 d!2266617))

(declare-fun b_lambda!281313 () Bool)

(assert (= b_lambda!281279 (or b!7294779 b_lambda!281313)))

(declare-fun bs!1912842 () Bool)

(declare-fun d!2266619 () Bool)

(assert (= bs!1912842 (and d!2266619 b!7294779)))

(assert (=> bs!1912842 (= (dynLambda!29001 lambda!450222 (h!77361 (++!16750 lt!2597649 (exprs!8300 ct2!346)))) (validRegex!9605 (h!77361 (++!16750 lt!2597649 (exprs!8300 ct2!346)))))))

(declare-fun m!7966896 () Bool)

(assert (=> bs!1912842 m!7966896))

(assert (=> b!7295131 d!2266619))

(declare-fun b_lambda!281315 () Bool)

(assert (= b_lambda!281283 (or d!2266413 b_lambda!281315)))

(declare-fun bs!1912843 () Bool)

(declare-fun d!2266621 () Bool)

(assert (= bs!1912843 (and d!2266621 d!2266413)))

(assert (=> bs!1912843 (= (dynLambda!29001 lambda!450245 (h!77361 (exprs!8300 ct1!250))) (nullable!8037 (h!77361 (exprs!8300 ct1!250))))))

(assert (=> bs!1912843 m!7966352))

(assert (=> b!7295146 d!2266621))

(push 1)

(assert (not bm!664538))

(assert (not b_lambda!281311))

(assert (not b!7295246))

(assert (not b!7295091))

(assert (not b!7295249))

(assert (not b!7295080))

(assert (not bm!664584))

(assert (not b!7295248))

(assert (not bm!664542))

(assert (not b_lambda!281267))

(assert (not b!7295206))

(assert (not b!7295053))

(assert (not setNonEmpty!53694))

(assert (not d!2266545))

(assert (not b!7295168))

(assert (not bm!664548))

(assert (not b!7295221))

(assert (not bm!664555))

(assert (not d!2266555))

(assert (not bs!1912837))

(assert (not bm!664532))

(assert (not d!2266505))

(assert (not b!7295130))

(assert (not bm!664583))

(assert (not b!7295084))

(assert (not bm!664560))

(assert (not bs!1912841))

(assert (not b!7295244))

(assert (not b!7295242))

(assert (not b!7295078))

(assert (not b!7295069))

(assert (not b!7295076))

(assert (not d!2266565))

(assert (not bs!1912840))

(assert (not bm!664585))

(assert (not setNonEmpty!53695))

(assert (not b!7295172))

(assert (not bm!664537))

(assert (not b!7295212))

(assert (not bm!664554))

(assert (not bm!664541))

(assert (not bm!664565))

(assert (not d!2266569))

(assert (not b!7295170))

(assert (not bs!1912838))

(assert (not bm!664546))

(assert (not bm!664559))

(assert (not b!7295150))

(assert (not b!7295115))

(assert (not d!2266601))

(assert (not b!7295124))

(assert (not b!7295152))

(assert (not b!7295159))

(assert (not b_lambda!281303))

(assert (not bm!664561))

(assert (not bm!664579))

(assert (not bm!664578))

(assert (not b!7295226))

(assert tp_is_empty!47185)

(assert (not b_lambda!281307))

(assert (not b!7295117))

(assert (not b_lambda!281265))

(assert (not bm!664534))

(assert (not bs!1912843))

(assert (not b!7295134))

(assert (not b!7295048))

(assert (not bm!664577))

(assert (not b!7295046))

(assert (not b!7295241))

(assert (not d!2266567))

(assert (not b!7295050))

(assert (not b!7295149))

(assert (not b!7295060))

(assert (not b!7295140))

(assert (not b!7295199))

(assert (not b_lambda!281297))

(assert (not b_lambda!281299))

(assert (not b_lambda!281301))

(assert (not b!7295166))

(assert (not b!7295052))

(assert (not bm!664567))

(assert (not bm!664566))

(assert (not bm!664533))

(assert (not bs!1912842))

(assert (not b!7295147))

(assert (not bs!1912836))

(assert (not b_lambda!281315))

(assert (not d!2266543))

(assert (not b!7295113))

(assert (not b!7295082))

(assert (not b!7295219))

(assert (not b!7295243))

(assert (not b!7295040))

(assert (not bm!664547))

(assert (not b!7295102))

(assert (not b_lambda!281309))

(assert (not bm!664553))

(assert (not d!2266515))

(assert (not d!2266561))

(assert (not d!2266539))

(assert (not b!7295247))

(assert (not bm!664574))

(assert (not bm!664540))

(assert (not b!7295224))

(assert (not b!7295132))

(assert (not d!2266591))

(assert (not b!7295067))

(assert (not bm!664551))

(assert (not b!7295153))

(assert (not d!2266549))

(assert (not b!7295229))

(assert (not bm!664575))

(assert (not bs!1912839))

(assert (not d!2266587))

(assert (not bm!664588))

(assert (not b_lambda!281305))

(assert (not b_lambda!281313))

(assert (not b!7295228))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

