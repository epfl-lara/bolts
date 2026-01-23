; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!677818 () Bool)

(assert start!677818)

(declare-fun b!7023589 () Bool)

(assert (=> b!7023589 true))

(declare-fun b!7023588 () Bool)

(assert (=> b!7023588 true))

(declare-fun b!7023586 () Bool)

(declare-fun e!4222152 () Bool)

(declare-fun tp!1935019 () Bool)

(assert (=> b!7023586 (= e!4222152 tp!1935019)))

(declare-fun b!7023587 () Bool)

(declare-fun res!2867170 () Bool)

(declare-fun e!4222147 () Bool)

(assert (=> b!7023587 (=> res!2867170 e!4222147)))

(declare-datatypes ((C!35128 0))(
  ( (C!35129 (val!27266 Int)) )
))
(declare-datatypes ((Regex!17429 0))(
  ( (ElementMatch!17429 (c!1305390 C!35128)) (Concat!26274 (regOne!35370 Regex!17429) (regTwo!35370 Regex!17429)) (EmptyExpr!17429) (Star!17429 (reg!17758 Regex!17429)) (EmptyLang!17429) (Union!17429 (regOne!35371 Regex!17429) (regTwo!35371 Regex!17429)) )
))
(declare-datatypes ((List!67815 0))(
  ( (Nil!67691) (Cons!67691 (h!74139 Regex!17429) (t!381570 List!67815)) )
))
(declare-datatypes ((Context!12850 0))(
  ( (Context!12851 (exprs!6925 List!67815)) )
))
(declare-fun lt!2513223 () Context!12850)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun lt!2513227 () (InoxSet Context!12850))

(assert (=> b!7023587 (= res!2867170 (not (select lt!2513227 lt!2513223)))))

(declare-fun res!2867173 () Bool)

(declare-fun e!4222150 () Bool)

(assert (=> start!677818 (=> (not res!2867173) (not e!4222150))))

(declare-datatypes ((List!67816 0))(
  ( (Nil!67692) (Cons!67692 (h!74140 C!35128) (t!381571 List!67816)) )
))
(declare-fun s!7408 () List!67816)

(declare-fun matchZipper!2969 ((InoxSet Context!12850) List!67816) Bool)

(assert (=> start!677818 (= res!2867173 (matchZipper!2969 lt!2513227 s!7408))))

(declare-fun z1!570 () (InoxSet Context!12850))

(declare-fun ct2!306 () Context!12850)

(declare-fun appendTo!550 ((InoxSet Context!12850) Context!12850) (InoxSet Context!12850))

(assert (=> start!677818 (= lt!2513227 (appendTo!550 z1!570 ct2!306))))

(assert (=> start!677818 e!4222150))

(declare-fun condSetEmpty!48896 () Bool)

(assert (=> start!677818 (= condSetEmpty!48896 (= z1!570 ((as const (Array Context!12850 Bool)) false)))))

(declare-fun setRes!48896 () Bool)

(assert (=> start!677818 setRes!48896))

(declare-fun e!4222148 () Bool)

(declare-fun inv!86431 (Context!12850) Bool)

(assert (=> start!677818 (and (inv!86431 ct2!306) e!4222148)))

(declare-fun e!4222151 () Bool)

(assert (=> start!677818 e!4222151))

(declare-fun setIsEmpty!48896 () Bool)

(assert (=> setIsEmpty!48896 setRes!48896))

(declare-fun setElem!48896 () Context!12850)

(declare-fun setNonEmpty!48896 () Bool)

(declare-fun tp!1935017 () Bool)

(assert (=> setNonEmpty!48896 (= setRes!48896 (and tp!1935017 (inv!86431 setElem!48896) e!4222152))))

(declare-fun setRest!48896 () (InoxSet Context!12850))

(assert (=> setNonEmpty!48896 (= z1!570 ((_ map or) (store ((as const (Array Context!12850 Bool)) false) setElem!48896 true) setRest!48896))))

(declare-fun e!4222149 () Bool)

(assert (=> b!7023588 (= e!4222147 e!4222149)))

(declare-fun res!2867172 () Bool)

(assert (=> b!7023588 (=> res!2867172 e!4222149)))

(declare-fun lt!2513225 () Context!12850)

(declare-fun ++!15462 (List!67815 List!67815) List!67815)

(assert (=> b!7023588 (= res!2867172 (not (= (Context!12851 (++!15462 (exprs!6925 lt!2513225) (exprs!6925 ct2!306))) lt!2513223)))))

(declare-fun lambda!412317 () Int)

(declare-datatypes ((Unit!161520 0))(
  ( (Unit!161521) )
))
(declare-fun lt!2513222 () Unit!161520)

(declare-fun lemmaConcatPreservesForall!750 (List!67815 List!67815 Int) Unit!161520)

(assert (=> b!7023588 (= lt!2513222 (lemmaConcatPreservesForall!750 (exprs!6925 lt!2513225) (exprs!6925 ct2!306) lambda!412317))))

(declare-fun lambda!412316 () Int)

(declare-fun mapPost2!270 ((InoxSet Context!12850) Int Context!12850) Context!12850)

(assert (=> b!7023588 (= lt!2513225 (mapPost2!270 z1!570 lambda!412316 lt!2513223))))

(assert (=> b!7023589 (= e!4222150 (not e!4222147))))

(declare-fun res!2867169 () Bool)

(assert (=> b!7023589 (=> res!2867169 e!4222147)))

(assert (=> b!7023589 (= res!2867169 (not (matchZipper!2969 (store ((as const (Array Context!12850 Bool)) false) lt!2513223 true) s!7408)))))

(declare-fun lambda!412315 () Int)

(declare-fun getWitness!1411 ((InoxSet Context!12850) Int) Context!12850)

(assert (=> b!7023589 (= lt!2513223 (getWitness!1411 lt!2513227 lambda!412315))))

(declare-datatypes ((List!67817 0))(
  ( (Nil!67693) (Cons!67693 (h!74141 Context!12850) (t!381572 List!67817)) )
))
(declare-fun lt!2513226 () List!67817)

(declare-fun exists!3330 (List!67817 Int) Bool)

(assert (=> b!7023589 (exists!3330 lt!2513226 lambda!412315)))

(declare-fun lt!2513224 () Unit!161520)

(declare-fun lemmaZipperMatchesExistsMatchingContext!368 (List!67817 List!67816) Unit!161520)

(assert (=> b!7023589 (= lt!2513224 (lemmaZipperMatchesExistsMatchingContext!368 lt!2513226 s!7408))))

(declare-fun toList!10772 ((InoxSet Context!12850)) List!67817)

(assert (=> b!7023589 (= lt!2513226 (toList!10772 lt!2513227))))

(declare-fun b!7023590 () Bool)

(declare-fun tp!1935016 () Bool)

(assert (=> b!7023590 (= e!4222148 tp!1935016)))

(declare-fun b!7023591 () Bool)

(declare-fun res!2867171 () Bool)

(assert (=> b!7023591 (=> (not res!2867171) (not e!4222150))))

(get-info :version)

(assert (=> b!7023591 (= res!2867171 ((_ is Cons!67692) s!7408))))

(declare-fun b!7023592 () Bool)

(assert (=> b!7023592 (= e!4222149 (select z1!570 lt!2513225))))

(declare-fun b!7023593 () Bool)

(declare-fun tp_is_empty!44083 () Bool)

(declare-fun tp!1935018 () Bool)

(assert (=> b!7023593 (= e!4222151 (and tp_is_empty!44083 tp!1935018))))

(assert (= (and start!677818 res!2867173) b!7023591))

(assert (= (and b!7023591 res!2867171) b!7023589))

(assert (= (and b!7023589 (not res!2867169)) b!7023587))

(assert (= (and b!7023587 (not res!2867170)) b!7023588))

(assert (= (and b!7023588 (not res!2867172)) b!7023592))

(assert (= (and start!677818 condSetEmpty!48896) setIsEmpty!48896))

(assert (= (and start!677818 (not condSetEmpty!48896)) setNonEmpty!48896))

(assert (= setNonEmpty!48896 b!7023586))

(assert (= start!677818 b!7023590))

(assert (= (and start!677818 ((_ is Cons!67692) s!7408)) b!7023593))

(declare-fun m!7726096 () Bool)

(assert (=> b!7023589 m!7726096))

(declare-fun m!7726098 () Bool)

(assert (=> b!7023589 m!7726098))

(declare-fun m!7726100 () Bool)

(assert (=> b!7023589 m!7726100))

(declare-fun m!7726102 () Bool)

(assert (=> b!7023589 m!7726102))

(declare-fun m!7726104 () Bool)

(assert (=> b!7023589 m!7726104))

(declare-fun m!7726106 () Bool)

(assert (=> b!7023589 m!7726106))

(assert (=> b!7023589 m!7726104))

(declare-fun m!7726108 () Bool)

(assert (=> b!7023592 m!7726108))

(declare-fun m!7726110 () Bool)

(assert (=> b!7023587 m!7726110))

(declare-fun m!7726112 () Bool)

(assert (=> setNonEmpty!48896 m!7726112))

(declare-fun m!7726114 () Bool)

(assert (=> start!677818 m!7726114))

(declare-fun m!7726116 () Bool)

(assert (=> start!677818 m!7726116))

(declare-fun m!7726118 () Bool)

(assert (=> start!677818 m!7726118))

(declare-fun m!7726120 () Bool)

(assert (=> b!7023588 m!7726120))

(declare-fun m!7726122 () Bool)

(assert (=> b!7023588 m!7726122))

(declare-fun m!7726124 () Bool)

(assert (=> b!7023588 m!7726124))

(check-sat (not b!7023590) (not b!7023593) (not start!677818) (not setNonEmpty!48896) (not b!7023588) (not b!7023586) tp_is_empty!44083 (not b!7023589))
(check-sat)
(get-model)

(declare-fun bs!1868123 () Bool)

(declare-fun d!2189414 () Bool)

(assert (= bs!1868123 (and d!2189414 b!7023588)))

(declare-fun lambda!412326 () Int)

(assert (=> bs!1868123 (= lambda!412326 lambda!412317)))

(declare-fun forall!16329 (List!67815 Int) Bool)

(assert (=> d!2189414 (= (inv!86431 setElem!48896) (forall!16329 (exprs!6925 setElem!48896) lambda!412326))))

(declare-fun bs!1868125 () Bool)

(assert (= bs!1868125 d!2189414))

(declare-fun m!7726136 () Bool)

(assert (=> bs!1868125 m!7726136))

(assert (=> setNonEmpty!48896 d!2189414))

(declare-fun d!2189418 () Bool)

(declare-fun c!1305395 () Bool)

(declare-fun isEmpty!39475 (List!67816) Bool)

(assert (=> d!2189418 (= c!1305395 (isEmpty!39475 s!7408))))

(declare-fun e!4222158 () Bool)

(assert (=> d!2189418 (= (matchZipper!2969 lt!2513227 s!7408) e!4222158)))

(declare-fun b!7023607 () Bool)

(declare-fun nullableZipper!2554 ((InoxSet Context!12850)) Bool)

(assert (=> b!7023607 (= e!4222158 (nullableZipper!2554 lt!2513227))))

(declare-fun b!7023608 () Bool)

(declare-fun derivationStepZipper!2886 ((InoxSet Context!12850) C!35128) (InoxSet Context!12850))

(declare-fun head!14229 (List!67816) C!35128)

(declare-fun tail!13496 (List!67816) List!67816)

(assert (=> b!7023608 (= e!4222158 (matchZipper!2969 (derivationStepZipper!2886 lt!2513227 (head!14229 s!7408)) (tail!13496 s!7408)))))

(assert (= (and d!2189418 c!1305395) b!7023607))

(assert (= (and d!2189418 (not c!1305395)) b!7023608))

(declare-fun m!7726144 () Bool)

(assert (=> d!2189418 m!7726144))

(declare-fun m!7726146 () Bool)

(assert (=> b!7023607 m!7726146))

(declare-fun m!7726148 () Bool)

(assert (=> b!7023608 m!7726148))

(assert (=> b!7023608 m!7726148))

(declare-fun m!7726150 () Bool)

(assert (=> b!7023608 m!7726150))

(declare-fun m!7726152 () Bool)

(assert (=> b!7023608 m!7726152))

(assert (=> b!7023608 m!7726150))

(assert (=> b!7023608 m!7726152))

(declare-fun m!7726154 () Bool)

(assert (=> b!7023608 m!7726154))

(assert (=> start!677818 d!2189418))

(declare-fun bs!1868126 () Bool)

(declare-fun d!2189422 () Bool)

(assert (= bs!1868126 (and d!2189422 b!7023588)))

(declare-fun lambda!412331 () Int)

(assert (=> bs!1868126 (= lambda!412331 lambda!412316)))

(assert (=> d!2189422 true))

(declare-fun map!15715 ((InoxSet Context!12850) Int) (InoxSet Context!12850))

(assert (=> d!2189422 (= (appendTo!550 z1!570 ct2!306) (map!15715 z1!570 lambda!412331))))

(declare-fun bs!1868127 () Bool)

(assert (= bs!1868127 d!2189422))

(declare-fun m!7726164 () Bool)

(assert (=> bs!1868127 m!7726164))

(assert (=> start!677818 d!2189422))

(declare-fun bs!1868128 () Bool)

(declare-fun d!2189426 () Bool)

(assert (= bs!1868128 (and d!2189426 b!7023588)))

(declare-fun lambda!412332 () Int)

(assert (=> bs!1868128 (= lambda!412332 lambda!412317)))

(declare-fun bs!1868129 () Bool)

(assert (= bs!1868129 (and d!2189426 d!2189414)))

(assert (=> bs!1868129 (= lambda!412332 lambda!412326)))

(assert (=> d!2189426 (= (inv!86431 ct2!306) (forall!16329 (exprs!6925 ct2!306) lambda!412332))))

(declare-fun bs!1868130 () Bool)

(assert (= bs!1868130 d!2189426))

(declare-fun m!7726166 () Bool)

(assert (=> bs!1868130 m!7726166))

(assert (=> start!677818 d!2189426))

(declare-fun b!7023630 () Bool)

(declare-fun res!2867186 () Bool)

(declare-fun e!4222171 () Bool)

(assert (=> b!7023630 (=> (not res!2867186) (not e!4222171))))

(declare-fun lt!2513243 () List!67815)

(declare-fun size!41032 (List!67815) Int)

(assert (=> b!7023630 (= res!2867186 (= (size!41032 lt!2513243) (+ (size!41032 (exprs!6925 lt!2513225)) (size!41032 (exprs!6925 ct2!306)))))))

(declare-fun b!7023631 () Bool)

(assert (=> b!7023631 (= e!4222171 (or (not (= (exprs!6925 ct2!306) Nil!67691)) (= lt!2513243 (exprs!6925 lt!2513225))))))

(declare-fun b!7023628 () Bool)

(declare-fun e!4222170 () List!67815)

(assert (=> b!7023628 (= e!4222170 (exprs!6925 ct2!306))))

(declare-fun b!7023629 () Bool)

(assert (=> b!7023629 (= e!4222170 (Cons!67691 (h!74139 (exprs!6925 lt!2513225)) (++!15462 (t!381570 (exprs!6925 lt!2513225)) (exprs!6925 ct2!306))))))

(declare-fun d!2189428 () Bool)

(assert (=> d!2189428 e!4222171))

(declare-fun res!2867187 () Bool)

(assert (=> d!2189428 (=> (not res!2867187) (not e!4222171))))

(declare-fun content!13479 (List!67815) (InoxSet Regex!17429))

(assert (=> d!2189428 (= res!2867187 (= (content!13479 lt!2513243) ((_ map or) (content!13479 (exprs!6925 lt!2513225)) (content!13479 (exprs!6925 ct2!306)))))))

(assert (=> d!2189428 (= lt!2513243 e!4222170)))

(declare-fun c!1305404 () Bool)

(assert (=> d!2189428 (= c!1305404 ((_ is Nil!67691) (exprs!6925 lt!2513225)))))

(assert (=> d!2189428 (= (++!15462 (exprs!6925 lt!2513225) (exprs!6925 ct2!306)) lt!2513243)))

(assert (= (and d!2189428 c!1305404) b!7023628))

(assert (= (and d!2189428 (not c!1305404)) b!7023629))

(assert (= (and d!2189428 res!2867187) b!7023630))

(assert (= (and b!7023630 res!2867186) b!7023631))

(declare-fun m!7726186 () Bool)

(assert (=> b!7023630 m!7726186))

(declare-fun m!7726188 () Bool)

(assert (=> b!7023630 m!7726188))

(declare-fun m!7726190 () Bool)

(assert (=> b!7023630 m!7726190))

(declare-fun m!7726192 () Bool)

(assert (=> b!7023629 m!7726192))

(declare-fun m!7726194 () Bool)

(assert (=> d!2189428 m!7726194))

(declare-fun m!7726196 () Bool)

(assert (=> d!2189428 m!7726196))

(declare-fun m!7726198 () Bool)

(assert (=> d!2189428 m!7726198))

(assert (=> b!7023588 d!2189428))

(declare-fun d!2189434 () Bool)

(assert (=> d!2189434 (forall!16329 (++!15462 (exprs!6925 lt!2513225) (exprs!6925 ct2!306)) lambda!412317)))

(declare-fun lt!2513246 () Unit!161520)

(declare-fun choose!53025 (List!67815 List!67815 Int) Unit!161520)

(assert (=> d!2189434 (= lt!2513246 (choose!53025 (exprs!6925 lt!2513225) (exprs!6925 ct2!306) lambda!412317))))

(assert (=> d!2189434 (forall!16329 (exprs!6925 lt!2513225) lambda!412317)))

(assert (=> d!2189434 (= (lemmaConcatPreservesForall!750 (exprs!6925 lt!2513225) (exprs!6925 ct2!306) lambda!412317) lt!2513246)))

(declare-fun bs!1868134 () Bool)

(assert (= bs!1868134 d!2189434))

(assert (=> bs!1868134 m!7726120))

(assert (=> bs!1868134 m!7726120))

(declare-fun m!7726204 () Bool)

(assert (=> bs!1868134 m!7726204))

(declare-fun m!7726206 () Bool)

(assert (=> bs!1868134 m!7726206))

(declare-fun m!7726208 () Bool)

(assert (=> bs!1868134 m!7726208))

(assert (=> b!7023588 d!2189434))

(declare-fun d!2189440 () Bool)

(declare-fun e!4222178 () Bool)

(assert (=> d!2189440 e!4222178))

(declare-fun res!2867192 () Bool)

(assert (=> d!2189440 (=> (not res!2867192) (not e!4222178))))

(declare-fun lt!2513251 () Context!12850)

(declare-fun dynLambda!27274 (Int Context!12850) Context!12850)

(assert (=> d!2189440 (= res!2867192 (= lt!2513223 (dynLambda!27274 lambda!412316 lt!2513251)))))

(declare-fun choose!53026 ((InoxSet Context!12850) Int Context!12850) Context!12850)

(assert (=> d!2189440 (= lt!2513251 (choose!53026 z1!570 lambda!412316 lt!2513223))))

(assert (=> d!2189440 (select (map!15715 z1!570 lambda!412316) lt!2513223)))

(assert (=> d!2189440 (= (mapPost2!270 z1!570 lambda!412316 lt!2513223) lt!2513251)))

(declare-fun b!7023641 () Bool)

(assert (=> b!7023641 (= e!4222178 (select z1!570 lt!2513251))))

(assert (= (and d!2189440 res!2867192) b!7023641))

(declare-fun b_lambda!265373 () Bool)

(assert (=> (not b_lambda!265373) (not d!2189440)))

(declare-fun m!7726210 () Bool)

(assert (=> d!2189440 m!7726210))

(declare-fun m!7726212 () Bool)

(assert (=> d!2189440 m!7726212))

(declare-fun m!7726214 () Bool)

(assert (=> d!2189440 m!7726214))

(declare-fun m!7726216 () Bool)

(assert (=> d!2189440 m!7726216))

(declare-fun m!7726218 () Bool)

(assert (=> b!7023641 m!7726218))

(assert (=> b!7023588 d!2189440))

(declare-fun d!2189442 () Bool)

(declare-fun e!4222183 () Bool)

(assert (=> d!2189442 e!4222183))

(declare-fun res!2867199 () Bool)

(assert (=> d!2189442 (=> (not res!2867199) (not e!4222183))))

(declare-fun lt!2513257 () Context!12850)

(declare-fun dynLambda!27275 (Int Context!12850) Bool)

(assert (=> d!2189442 (= res!2867199 (dynLambda!27275 lambda!412315 lt!2513257))))

(declare-fun getWitness!1413 (List!67817 Int) Context!12850)

(assert (=> d!2189442 (= lt!2513257 (getWitness!1413 (toList!10772 lt!2513227) lambda!412315))))

(declare-fun exists!3332 ((InoxSet Context!12850) Int) Bool)

(assert (=> d!2189442 (exists!3332 lt!2513227 lambda!412315)))

(assert (=> d!2189442 (= (getWitness!1411 lt!2513227 lambda!412315) lt!2513257)))

(declare-fun b!7023650 () Bool)

(assert (=> b!7023650 (= e!4222183 (select lt!2513227 lt!2513257))))

(assert (= (and d!2189442 res!2867199) b!7023650))

(declare-fun b_lambda!265375 () Bool)

(assert (=> (not b_lambda!265375) (not d!2189442)))

(declare-fun m!7726234 () Bool)

(assert (=> d!2189442 m!7726234))

(assert (=> d!2189442 m!7726098))

(assert (=> d!2189442 m!7726098))

(declare-fun m!7726236 () Bool)

(assert (=> d!2189442 m!7726236))

(declare-fun m!7726238 () Bool)

(assert (=> d!2189442 m!7726238))

(declare-fun m!7726240 () Bool)

(assert (=> b!7023650 m!7726240))

(assert (=> b!7023589 d!2189442))

(declare-fun d!2189446 () Bool)

(declare-fun c!1305408 () Bool)

(assert (=> d!2189446 (= c!1305408 (isEmpty!39475 s!7408))))

(declare-fun e!4222184 () Bool)

(assert (=> d!2189446 (= (matchZipper!2969 (store ((as const (Array Context!12850 Bool)) false) lt!2513223 true) s!7408) e!4222184)))

(declare-fun b!7023651 () Bool)

(assert (=> b!7023651 (= e!4222184 (nullableZipper!2554 (store ((as const (Array Context!12850 Bool)) false) lt!2513223 true)))))

(declare-fun b!7023652 () Bool)

(assert (=> b!7023652 (= e!4222184 (matchZipper!2969 (derivationStepZipper!2886 (store ((as const (Array Context!12850 Bool)) false) lt!2513223 true) (head!14229 s!7408)) (tail!13496 s!7408)))))

(assert (= (and d!2189446 c!1305408) b!7023651))

(assert (= (and d!2189446 (not c!1305408)) b!7023652))

(assert (=> d!2189446 m!7726144))

(assert (=> b!7023651 m!7726104))

(declare-fun m!7726242 () Bool)

(assert (=> b!7023651 m!7726242))

(assert (=> b!7023652 m!7726148))

(assert (=> b!7023652 m!7726104))

(assert (=> b!7023652 m!7726148))

(declare-fun m!7726248 () Bool)

(assert (=> b!7023652 m!7726248))

(assert (=> b!7023652 m!7726152))

(assert (=> b!7023652 m!7726248))

(assert (=> b!7023652 m!7726152))

(declare-fun m!7726252 () Bool)

(assert (=> b!7023652 m!7726252))

(assert (=> b!7023589 d!2189446))

(declare-fun bs!1868137 () Bool)

(declare-fun d!2189450 () Bool)

(assert (= bs!1868137 (and d!2189450 b!7023589)))

(declare-fun lambda!412343 () Int)

(assert (=> bs!1868137 (not (= lambda!412343 lambda!412315))))

(assert (=> d!2189450 true))

(declare-fun order!28123 () Int)

(declare-fun dynLambda!27277 (Int Int) Int)

(assert (=> d!2189450 (< (dynLambda!27277 order!28123 lambda!412315) (dynLambda!27277 order!28123 lambda!412343))))

(declare-fun forall!16331 (List!67817 Int) Bool)

(assert (=> d!2189450 (= (exists!3330 lt!2513226 lambda!412315) (not (forall!16331 lt!2513226 lambda!412343)))))

(declare-fun bs!1868138 () Bool)

(assert (= bs!1868138 d!2189450))

(declare-fun m!7726254 () Bool)

(assert (=> bs!1868138 m!7726254))

(assert (=> b!7023589 d!2189450))

(declare-fun bs!1868144 () Bool)

(declare-fun d!2189452 () Bool)

(assert (= bs!1868144 (and d!2189452 b!7023589)))

(declare-fun lambda!412347 () Int)

(assert (=> bs!1868144 (= lambda!412347 lambda!412315)))

(declare-fun bs!1868145 () Bool)

(assert (= bs!1868145 (and d!2189452 d!2189450)))

(assert (=> bs!1868145 (not (= lambda!412347 lambda!412343))))

(assert (=> d!2189452 true))

(assert (=> d!2189452 (exists!3330 lt!2513226 lambda!412347)))

(declare-fun lt!2513265 () Unit!161520)

(declare-fun choose!53029 (List!67817 List!67816) Unit!161520)

(assert (=> d!2189452 (= lt!2513265 (choose!53029 lt!2513226 s!7408))))

(declare-fun content!13481 (List!67817) (InoxSet Context!12850))

(assert (=> d!2189452 (matchZipper!2969 (content!13481 lt!2513226) s!7408)))

(assert (=> d!2189452 (= (lemmaZipperMatchesExistsMatchingContext!368 lt!2513226 s!7408) lt!2513265)))

(declare-fun bs!1868146 () Bool)

(assert (= bs!1868146 d!2189452))

(declare-fun m!7726278 () Bool)

(assert (=> bs!1868146 m!7726278))

(declare-fun m!7726280 () Bool)

(assert (=> bs!1868146 m!7726280))

(declare-fun m!7726282 () Bool)

(assert (=> bs!1868146 m!7726282))

(assert (=> bs!1868146 m!7726282))

(declare-fun m!7726284 () Bool)

(assert (=> bs!1868146 m!7726284))

(assert (=> b!7023589 d!2189452))

(declare-fun d!2189460 () Bool)

(declare-fun e!4222200 () Bool)

(assert (=> d!2189460 e!4222200))

(declare-fun res!2867205 () Bool)

(assert (=> d!2189460 (=> (not res!2867205) (not e!4222200))))

(declare-fun lt!2513268 () List!67817)

(declare-fun noDuplicate!2604 (List!67817) Bool)

(assert (=> d!2189460 (= res!2867205 (noDuplicate!2604 lt!2513268))))

(declare-fun choose!53030 ((InoxSet Context!12850)) List!67817)

(assert (=> d!2189460 (= lt!2513268 (choose!53030 lt!2513227))))

(assert (=> d!2189460 (= (toList!10772 lt!2513227) lt!2513268)))

(declare-fun b!7023677 () Bool)

(assert (=> b!7023677 (= e!4222200 (= (content!13481 lt!2513268) lt!2513227))))

(assert (= (and d!2189460 res!2867205) b!7023677))

(declare-fun m!7726286 () Bool)

(assert (=> d!2189460 m!7726286))

(declare-fun m!7726288 () Bool)

(assert (=> d!2189460 m!7726288))

(declare-fun m!7726290 () Bool)

(assert (=> b!7023677 m!7726290))

(assert (=> b!7023589 d!2189460))

(declare-fun b!7023682 () Bool)

(declare-fun e!4222203 () Bool)

(declare-fun tp!1935041 () Bool)

(declare-fun tp!1935042 () Bool)

(assert (=> b!7023682 (= e!4222203 (and tp!1935041 tp!1935042))))

(assert (=> b!7023590 (= tp!1935016 e!4222203)))

(assert (= (and b!7023590 ((_ is Cons!67691) (exprs!6925 ct2!306))) b!7023682))

(declare-fun condSetEmpty!48902 () Bool)

(assert (=> setNonEmpty!48896 (= condSetEmpty!48902 (= setRest!48896 ((as const (Array Context!12850 Bool)) false)))))

(declare-fun setRes!48902 () Bool)

(assert (=> setNonEmpty!48896 (= tp!1935017 setRes!48902)))

(declare-fun setIsEmpty!48902 () Bool)

(assert (=> setIsEmpty!48902 setRes!48902))

(declare-fun setElem!48902 () Context!12850)

(declare-fun e!4222206 () Bool)

(declare-fun tp!1935048 () Bool)

(declare-fun setNonEmpty!48902 () Bool)

(assert (=> setNonEmpty!48902 (= setRes!48902 (and tp!1935048 (inv!86431 setElem!48902) e!4222206))))

(declare-fun setRest!48902 () (InoxSet Context!12850))

(assert (=> setNonEmpty!48902 (= setRest!48896 ((_ map or) (store ((as const (Array Context!12850 Bool)) false) setElem!48902 true) setRest!48902))))

(declare-fun b!7023687 () Bool)

(declare-fun tp!1935047 () Bool)

(assert (=> b!7023687 (= e!4222206 tp!1935047)))

(assert (= (and setNonEmpty!48896 condSetEmpty!48902) setIsEmpty!48902))

(assert (= (and setNonEmpty!48896 (not condSetEmpty!48902)) setNonEmpty!48902))

(assert (= setNonEmpty!48902 b!7023687))

(declare-fun m!7726292 () Bool)

(assert (=> setNonEmpty!48902 m!7726292))

(declare-fun b!7023692 () Bool)

(declare-fun e!4222209 () Bool)

(declare-fun tp!1935051 () Bool)

(assert (=> b!7023692 (= e!4222209 (and tp_is_empty!44083 tp!1935051))))

(assert (=> b!7023593 (= tp!1935018 e!4222209)))

(assert (= (and b!7023593 ((_ is Cons!67692) (t!381571 s!7408))) b!7023692))

(declare-fun b!7023693 () Bool)

(declare-fun e!4222210 () Bool)

(declare-fun tp!1935052 () Bool)

(declare-fun tp!1935053 () Bool)

(assert (=> b!7023693 (= e!4222210 (and tp!1935052 tp!1935053))))

(assert (=> b!7023586 (= tp!1935019 e!4222210)))

(assert (= (and b!7023586 ((_ is Cons!67691) (exprs!6925 setElem!48896))) b!7023693))

(declare-fun b_lambda!265383 () Bool)

(assert (= b_lambda!265373 (or b!7023588 b_lambda!265383)))

(declare-fun bs!1868147 () Bool)

(declare-fun d!2189462 () Bool)

(assert (= bs!1868147 (and d!2189462 b!7023588)))

(declare-fun lt!2513269 () Unit!161520)

(assert (=> bs!1868147 (= lt!2513269 (lemmaConcatPreservesForall!750 (exprs!6925 lt!2513251) (exprs!6925 ct2!306) lambda!412317))))

(assert (=> bs!1868147 (= (dynLambda!27274 lambda!412316 lt!2513251) (Context!12851 (++!15462 (exprs!6925 lt!2513251) (exprs!6925 ct2!306))))))

(declare-fun m!7726294 () Bool)

(assert (=> bs!1868147 m!7726294))

(declare-fun m!7726296 () Bool)

(assert (=> bs!1868147 m!7726296))

(assert (=> d!2189440 d!2189462))

(declare-fun b_lambda!265385 () Bool)

(assert (= b_lambda!265375 (or b!7023589 b_lambda!265385)))

(declare-fun bs!1868148 () Bool)

(declare-fun d!2189464 () Bool)

(assert (= bs!1868148 (and d!2189464 b!7023589)))

(assert (=> bs!1868148 (= (dynLambda!27275 lambda!412315 lt!2513257) (matchZipper!2969 (store ((as const (Array Context!12850 Bool)) false) lt!2513257 true) s!7408))))

(declare-fun m!7726298 () Bool)

(assert (=> bs!1868148 m!7726298))

(assert (=> bs!1868148 m!7726298))

(declare-fun m!7726300 () Bool)

(assert (=> bs!1868148 m!7726300))

(assert (=> d!2189442 d!2189464))

(check-sat (not d!2189440) (not b!7023693) (not b!7023677) (not b!7023651) (not d!2189442) (not d!2189452) (not d!2189434) (not b_lambda!265385) (not b!7023682) (not b!7023607) (not b!7023687) (not d!2189428) (not bs!1868147) (not b!7023629) (not d!2189450) (not d!2189414) (not d!2189422) (not b!7023692) (not b!7023608) (not d!2189418) (not b!7023630) (not d!2189446) tp_is_empty!44083 (not d!2189426) (not b_lambda!265383) (not bs!1868148) (not d!2189460) (not b!7023652) (not setNonEmpty!48902))
(check-sat)
