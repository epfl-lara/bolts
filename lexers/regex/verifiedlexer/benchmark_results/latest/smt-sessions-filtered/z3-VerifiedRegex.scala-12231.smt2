; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!689220 () Bool)

(assert start!689220)

(declare-fun b!7082677 () Bool)

(assert (=> b!7082677 true))

(declare-fun bs!1882478 () Bool)

(declare-fun b!7082684 () Bool)

(assert (= bs!1882478 (and b!7082684 b!7082677)))

(declare-fun lambda!428439 () Int)

(declare-fun lambda!428438 () Int)

(assert (=> bs!1882478 (not (= lambda!428439 lambda!428438))))

(declare-fun setIsEmpty!50593 () Bool)

(declare-fun setRes!50593 () Bool)

(assert (=> setIsEmpty!50593 setRes!50593))

(declare-fun b!7082676 () Bool)

(declare-fun res!2893326 () Bool)

(declare-fun e!4258063 () Bool)

(assert (=> b!7082676 (=> (not res!2893326) (not e!4258063))))

(declare-datatypes ((C!35688 0))(
  ( (C!35689 (val!27546 Int)) )
))
(declare-datatypes ((List!68652 0))(
  ( (Nil!68528) (Cons!68528 (h!74976 C!35688) (t!382437 List!68652)) )
))
(declare-fun s!7408 () List!68652)

(get-info :version)

(assert (=> b!7082676 (= res!2893326 (not ((_ is Cons!68528) s!7408)))))

(declare-fun e!4258060 () Bool)

(declare-fun e!4258061 () Bool)

(assert (=> b!7082677 (= e!4258060 e!4258061)))

(declare-fun res!2893328 () Bool)

(assert (=> b!7082677 (=> (not res!2893328) (not e!4258061))))

(declare-datatypes ((Regex!17709 0))(
  ( (ElementMatch!17709 (c!1322030 C!35688)) (Concat!26554 (regOne!35930 Regex!17709) (regTwo!35930 Regex!17709)) (EmptyExpr!17709) (Star!17709 (reg!18038 Regex!17709)) (EmptyLang!17709) (Union!17709 (regOne!35931 Regex!17709) (regTwo!35931 Regex!17709)) )
))
(declare-datatypes ((List!68653 0))(
  ( (Nil!68529) (Cons!68529 (h!74977 Regex!17709) (t!382438 List!68653)) )
))
(declare-fun lt!2553648 () List!68653)

(declare-datatypes ((Context!13410 0))(
  ( (Context!13411 (exprs!7205 List!68653)) )
))
(declare-fun lt!2553650 () Context!13410)

(assert (=> b!7082677 (= res!2893328 (= (Context!13411 lt!2553648) lt!2553650))))

(declare-fun lt!2553646 () Context!13410)

(declare-fun ct2!306 () Context!13410)

(declare-fun ++!15880 (List!68653 List!68653) List!68653)

(assert (=> b!7082677 (= lt!2553648 (++!15880 (exprs!7205 lt!2553646) (exprs!7205 ct2!306)))))

(declare-datatypes ((Unit!162129 0))(
  ( (Unit!162130) )
))
(declare-fun lt!2553649 () Unit!162129)

(declare-fun lemmaConcatPreservesForall!1020 (List!68653 List!68653 Int) Unit!162129)

(assert (=> b!7082677 (= lt!2553649 (lemmaConcatPreservesForall!1020 (exprs!7205 lt!2553646) (exprs!7205 ct2!306) lambda!428438))))

(define-sort InoxSet (T) (Array T Bool))

(declare-fun z1!570 () (InoxSet Context!13410))

(declare-fun lambda!428437 () Int)

(declare-fun mapPost2!536 ((InoxSet Context!13410) Int Context!13410) Context!13410)

(assert (=> b!7082677 (= lt!2553646 (mapPost2!536 z1!570 lambda!428437 lt!2553650))))

(declare-fun b!7082679 () Bool)

(declare-fun e!4258066 () Bool)

(assert (=> b!7082679 (= e!4258066 (select z1!570 lt!2553646))))

(declare-fun b!7082680 () Bool)

(declare-fun res!2893330 () Bool)

(assert (=> b!7082680 (=> (not res!2893330) (not e!4258063))))

(declare-fun lt!2553652 () (InoxSet Context!13410))

(declare-fun lambda!428436 () Int)

(declare-fun exists!3806 ((InoxSet Context!13410) Int) Bool)

(assert (=> b!7082680 (= res!2893330 (exists!3806 lt!2553652 lambda!428436))))

(declare-fun b!7082681 () Bool)

(declare-fun e!4258064 () Bool)

(declare-fun tp!1943939 () Bool)

(assert (=> b!7082681 (= e!4258064 tp!1943939)))

(declare-fun b!7082682 () Bool)

(declare-fun e!4258062 () Bool)

(declare-fun tp!1943942 () Bool)

(assert (=> b!7082682 (= e!4258062 tp!1943942)))

(declare-fun b!7082683 () Bool)

(assert (=> b!7082683 (= e!4258063 e!4258060)))

(declare-fun res!2893325 () Bool)

(assert (=> b!7082683 (=> (not res!2893325) (not e!4258060))))

(declare-fun nullableContext!120 (Context!13410) Bool)

(assert (=> b!7082683 (= res!2893325 (nullableContext!120 lt!2553650))))

(declare-fun getWitness!1848 ((InoxSet Context!13410) Int) Context!13410)

(assert (=> b!7082683 (= lt!2553650 (getWitness!1848 lt!2553652 lambda!428436))))

(declare-fun tp!1943941 () Bool)

(declare-fun setElem!50593 () Context!13410)

(declare-fun setNonEmpty!50593 () Bool)

(declare-fun inv!87131 (Context!13410) Bool)

(assert (=> setNonEmpty!50593 (= setRes!50593 (and tp!1943941 (inv!87131 setElem!50593) e!4258064))))

(declare-fun setRest!50593 () (InoxSet Context!13410))

(assert (=> setNonEmpty!50593 (= z1!570 ((_ map or) (store ((as const (Array Context!13410 Bool)) false) setElem!50593 true) setRest!50593))))

(assert (=> b!7082684 (= e!4258061 (not e!4258066))))

(declare-fun res!2893332 () Bool)

(assert (=> b!7082684 (=> res!2893332 e!4258066)))

(assert (=> b!7082684 (= res!2893332 (not (nullableContext!120 lt!2553646)))))

(declare-fun lt!2553645 () Unit!162129)

(declare-fun lemmaContentSubsetPreservesForall!354 (List!68653 List!68653 Int) Unit!162129)

(assert (=> b!7082684 (= lt!2553645 (lemmaContentSubsetPreservesForall!354 lt!2553648 (exprs!7205 ct2!306) lambda!428439))))

(declare-fun lt!2553647 () Unit!162129)

(assert (=> b!7082684 (= lt!2553647 (lemmaContentSubsetPreservesForall!354 lt!2553648 (exprs!7205 lt!2553646) lambda!428439))))

(declare-fun subseq!703 (List!68653 List!68653) Bool)

(assert (=> b!7082684 (subseq!703 (exprs!7205 ct2!306) lt!2553648)))

(declare-fun lt!2553644 () Unit!162129)

(declare-fun lemmaConcatThenSecondSubseqOfTot!24 (List!68653 List!68653) Unit!162129)

(assert (=> b!7082684 (= lt!2553644 (lemmaConcatThenSecondSubseqOfTot!24 (exprs!7205 lt!2553646) (exprs!7205 ct2!306)))))

(assert (=> b!7082684 (subseq!703 (exprs!7205 lt!2553646) lt!2553648)))

(declare-fun lt!2553651 () Unit!162129)

(declare-fun lemmaConcatThenFirstSubseqOfTot!24 (List!68653 List!68653) Unit!162129)

(assert (=> b!7082684 (= lt!2553651 (lemmaConcatThenFirstSubseqOfTot!24 (exprs!7205 lt!2553646) (exprs!7205 ct2!306)))))

(declare-fun b!7082685 () Bool)

(declare-fun res!2893327 () Bool)

(assert (=> b!7082685 (=> (not res!2893327) (not e!4258063))))

(declare-fun nullableZipper!2740 ((InoxSet Context!13410)) Bool)

(assert (=> b!7082685 (= res!2893327 (nullableZipper!2740 lt!2553652))))

(declare-fun b!7082686 () Bool)

(declare-fun res!2893329 () Bool)

(assert (=> b!7082686 (=> res!2893329 e!4258066)))

(assert (=> b!7082686 (= res!2893329 (not (nullableContext!120 ct2!306)))))

(declare-fun res!2893331 () Bool)

(assert (=> start!689220 (=> (not res!2893331) (not e!4258063))))

(declare-fun matchZipper!3249 ((InoxSet Context!13410) List!68652) Bool)

(assert (=> start!689220 (= res!2893331 (matchZipper!3249 lt!2553652 s!7408))))

(declare-fun appendTo!830 ((InoxSet Context!13410) Context!13410) (InoxSet Context!13410))

(assert (=> start!689220 (= lt!2553652 (appendTo!830 z1!570 ct2!306))))

(assert (=> start!689220 e!4258063))

(declare-fun condSetEmpty!50593 () Bool)

(assert (=> start!689220 (= condSetEmpty!50593 (= z1!570 ((as const (Array Context!13410 Bool)) false)))))

(assert (=> start!689220 setRes!50593))

(assert (=> start!689220 (and (inv!87131 ct2!306) e!4258062)))

(declare-fun e!4258065 () Bool)

(assert (=> start!689220 e!4258065))

(declare-fun b!7082678 () Bool)

(declare-fun tp_is_empty!44643 () Bool)

(declare-fun tp!1943940 () Bool)

(assert (=> b!7082678 (= e!4258065 (and tp_is_empty!44643 tp!1943940))))

(assert (= (and start!689220 res!2893331) b!7082676))

(assert (= (and b!7082676 res!2893326) b!7082685))

(assert (= (and b!7082685 res!2893327) b!7082680))

(assert (= (and b!7082680 res!2893330) b!7082683))

(assert (= (and b!7082683 res!2893325) b!7082677))

(assert (= (and b!7082677 res!2893328) b!7082684))

(assert (= (and b!7082684 (not res!2893332)) b!7082686))

(assert (= (and b!7082686 (not res!2893329)) b!7082679))

(assert (= (and start!689220 condSetEmpty!50593) setIsEmpty!50593))

(assert (= (and start!689220 (not condSetEmpty!50593)) setNonEmpty!50593))

(assert (= setNonEmpty!50593 b!7082681))

(assert (= start!689220 b!7082682))

(assert (= (and start!689220 ((_ is Cons!68528) s!7408)) b!7082678))

(declare-fun m!7814344 () Bool)

(assert (=> b!7082680 m!7814344))

(declare-fun m!7814346 () Bool)

(assert (=> b!7082685 m!7814346))

(declare-fun m!7814348 () Bool)

(assert (=> b!7082679 m!7814348))

(declare-fun m!7814350 () Bool)

(assert (=> setNonEmpty!50593 m!7814350))

(declare-fun m!7814352 () Bool)

(assert (=> b!7082677 m!7814352))

(declare-fun m!7814354 () Bool)

(assert (=> b!7082677 m!7814354))

(declare-fun m!7814356 () Bool)

(assert (=> b!7082677 m!7814356))

(declare-fun m!7814358 () Bool)

(assert (=> b!7082684 m!7814358))

(declare-fun m!7814360 () Bool)

(assert (=> b!7082684 m!7814360))

(declare-fun m!7814362 () Bool)

(assert (=> b!7082684 m!7814362))

(declare-fun m!7814364 () Bool)

(assert (=> b!7082684 m!7814364))

(declare-fun m!7814366 () Bool)

(assert (=> b!7082684 m!7814366))

(declare-fun m!7814368 () Bool)

(assert (=> b!7082684 m!7814368))

(declare-fun m!7814370 () Bool)

(assert (=> b!7082684 m!7814370))

(declare-fun m!7814372 () Bool)

(assert (=> b!7082683 m!7814372))

(declare-fun m!7814374 () Bool)

(assert (=> b!7082683 m!7814374))

(declare-fun m!7814376 () Bool)

(assert (=> start!689220 m!7814376))

(declare-fun m!7814378 () Bool)

(assert (=> start!689220 m!7814378))

(declare-fun m!7814380 () Bool)

(assert (=> start!689220 m!7814380))

(declare-fun m!7814382 () Bool)

(assert (=> b!7082686 m!7814382))

(check-sat (not b!7082685) (not b!7082682) (not b!7082680) (not b!7082681) (not b!7082684) tp_is_empty!44643 (not b!7082686) (not b!7082677) (not b!7082678) (not start!689220) (not setNonEmpty!50593) (not b!7082683))
(check-sat)
(get-model)

(declare-fun bs!1882479 () Bool)

(declare-fun d!2215352 () Bool)

(assert (= bs!1882479 (and d!2215352 b!7082677)))

(declare-fun lambda!428442 () Int)

(assert (=> bs!1882479 (not (= lambda!428442 lambda!428438))))

(declare-fun bs!1882480 () Bool)

(assert (= bs!1882480 (and d!2215352 b!7082684)))

(assert (=> bs!1882480 (= lambda!428442 lambda!428439)))

(declare-fun forall!16670 (List!68653 Int) Bool)

(assert (=> d!2215352 (= (nullableContext!120 lt!2553650) (forall!16670 (exprs!7205 lt!2553650) lambda!428442))))

(declare-fun bs!1882481 () Bool)

(assert (= bs!1882481 d!2215352))

(declare-fun m!7814384 () Bool)

(assert (=> bs!1882481 m!7814384))

(assert (=> b!7082683 d!2215352))

(declare-fun d!2215354 () Bool)

(declare-fun e!4258072 () Bool)

(assert (=> d!2215354 e!4258072))

(declare-fun res!2893337 () Bool)

(assert (=> d!2215354 (=> (not res!2893337) (not e!4258072))))

(declare-fun lt!2553655 () Context!13410)

(declare-fun dynLambda!27939 (Int Context!13410) Bool)

(assert (=> d!2215354 (= res!2893337 (dynLambda!27939 lambda!428436 lt!2553655))))

(declare-datatypes ((List!68654 0))(
  ( (Nil!68530) (Cons!68530 (h!74978 Context!13410) (t!382439 List!68654)) )
))
(declare-fun getWitness!1849 (List!68654 Int) Context!13410)

(declare-fun toList!11049 ((InoxSet Context!13410)) List!68654)

(assert (=> d!2215354 (= lt!2553655 (getWitness!1849 (toList!11049 lt!2553652) lambda!428436))))

(assert (=> d!2215354 (exists!3806 lt!2553652 lambda!428436)))

(assert (=> d!2215354 (= (getWitness!1848 lt!2553652 lambda!428436) lt!2553655)))

(declare-fun b!7082697 () Bool)

(assert (=> b!7082697 (= e!4258072 (select lt!2553652 lt!2553655))))

(assert (= (and d!2215354 res!2893337) b!7082697))

(declare-fun b_lambda!270681 () Bool)

(assert (=> (not b_lambda!270681) (not d!2215354)))

(declare-fun m!7814396 () Bool)

(assert (=> d!2215354 m!7814396))

(declare-fun m!7814398 () Bool)

(assert (=> d!2215354 m!7814398))

(assert (=> d!2215354 m!7814398))

(declare-fun m!7814400 () Bool)

(assert (=> d!2215354 m!7814400))

(assert (=> d!2215354 m!7814344))

(declare-fun m!7814402 () Bool)

(assert (=> b!7082697 m!7814402))

(assert (=> b!7082683 d!2215354))

(declare-fun bs!1882482 () Bool)

(declare-fun d!2215358 () Bool)

(assert (= bs!1882482 (and d!2215358 b!7082677)))

(declare-fun lambda!428450 () Int)

(assert (=> bs!1882482 (= lambda!428450 lambda!428438)))

(declare-fun bs!1882483 () Bool)

(assert (= bs!1882483 (and d!2215358 b!7082684)))

(assert (=> bs!1882483 (not (= lambda!428450 lambda!428439))))

(declare-fun bs!1882485 () Bool)

(assert (= bs!1882485 (and d!2215358 d!2215352)))

(assert (=> bs!1882485 (not (= lambda!428450 lambda!428442))))

(assert (=> d!2215358 (= (inv!87131 setElem!50593) (forall!16670 (exprs!7205 setElem!50593) lambda!428450))))

(declare-fun bs!1882487 () Bool)

(assert (= bs!1882487 d!2215358))

(declare-fun m!7814406 () Bool)

(assert (=> bs!1882487 m!7814406))

(assert (=> setNonEmpty!50593 d!2215358))

(declare-fun d!2215362 () Bool)

(declare-fun lt!2553660 () Bool)

(declare-fun exists!3807 (List!68654 Int) Bool)

(assert (=> d!2215362 (= lt!2553660 (exists!3807 (toList!11049 lt!2553652) lambda!428436))))

(declare-fun choose!54545 ((InoxSet Context!13410) Int) Bool)

(assert (=> d!2215362 (= lt!2553660 (choose!54545 lt!2553652 lambda!428436))))

(assert (=> d!2215362 (= (exists!3806 lt!2553652 lambda!428436) lt!2553660)))

(declare-fun bs!1882491 () Bool)

(assert (= bs!1882491 d!2215362))

(assert (=> bs!1882491 m!7814398))

(assert (=> bs!1882491 m!7814398))

(declare-fun m!7814410 () Bool)

(assert (=> bs!1882491 m!7814410))

(declare-fun m!7814412 () Bool)

(assert (=> bs!1882491 m!7814412))

(assert (=> b!7082680 d!2215362))

(declare-fun d!2215366 () Bool)

(declare-fun c!1322039 () Bool)

(declare-fun isEmpty!39992 (List!68652) Bool)

(assert (=> d!2215366 (= c!1322039 (isEmpty!39992 s!7408))))

(declare-fun e!4258075 () Bool)

(assert (=> d!2215366 (= (matchZipper!3249 lt!2553652 s!7408) e!4258075)))

(declare-fun b!7082702 () Bool)

(assert (=> b!7082702 (= e!4258075 (nullableZipper!2740 lt!2553652))))

(declare-fun b!7082703 () Bool)

(declare-fun derivationStepZipper!3159 ((InoxSet Context!13410) C!35688) (InoxSet Context!13410))

(declare-fun head!14449 (List!68652) C!35688)

(declare-fun tail!13912 (List!68652) List!68652)

(assert (=> b!7082703 (= e!4258075 (matchZipper!3249 (derivationStepZipper!3159 lt!2553652 (head!14449 s!7408)) (tail!13912 s!7408)))))

(assert (= (and d!2215366 c!1322039) b!7082702))

(assert (= (and d!2215366 (not c!1322039)) b!7082703))

(declare-fun m!7814416 () Bool)

(assert (=> d!2215366 m!7814416))

(assert (=> b!7082702 m!7814346))

(declare-fun m!7814418 () Bool)

(assert (=> b!7082703 m!7814418))

(assert (=> b!7082703 m!7814418))

(declare-fun m!7814420 () Bool)

(assert (=> b!7082703 m!7814420))

(declare-fun m!7814422 () Bool)

(assert (=> b!7082703 m!7814422))

(assert (=> b!7082703 m!7814420))

(assert (=> b!7082703 m!7814422))

(declare-fun m!7814424 () Bool)

(assert (=> b!7082703 m!7814424))

(assert (=> start!689220 d!2215366))

(declare-fun bs!1882501 () Bool)

(declare-fun d!2215370 () Bool)

(assert (= bs!1882501 (and d!2215370 b!7082677)))

(declare-fun lambda!428462 () Int)

(assert (=> bs!1882501 (= lambda!428462 lambda!428437)))

(assert (=> d!2215370 true))

(declare-fun map!16062 ((InoxSet Context!13410) Int) (InoxSet Context!13410))

(assert (=> d!2215370 (= (appendTo!830 z1!570 ct2!306) (map!16062 z1!570 lambda!428462))))

(declare-fun bs!1882502 () Bool)

(assert (= bs!1882502 d!2215370))

(declare-fun m!7814436 () Bool)

(assert (=> bs!1882502 m!7814436))

(assert (=> start!689220 d!2215370))

(declare-fun bs!1882503 () Bool)

(declare-fun d!2215376 () Bool)

(assert (= bs!1882503 (and d!2215376 b!7082677)))

(declare-fun lambda!428463 () Int)

(assert (=> bs!1882503 (= lambda!428463 lambda!428438)))

(declare-fun bs!1882504 () Bool)

(assert (= bs!1882504 (and d!2215376 b!7082684)))

(assert (=> bs!1882504 (not (= lambda!428463 lambda!428439))))

(declare-fun bs!1882505 () Bool)

(assert (= bs!1882505 (and d!2215376 d!2215352)))

(assert (=> bs!1882505 (not (= lambda!428463 lambda!428442))))

(declare-fun bs!1882506 () Bool)

(assert (= bs!1882506 (and d!2215376 d!2215358)))

(assert (=> bs!1882506 (= lambda!428463 lambda!428450)))

(assert (=> d!2215376 (= (inv!87131 ct2!306) (forall!16670 (exprs!7205 ct2!306) lambda!428463))))

(declare-fun bs!1882507 () Bool)

(assert (= bs!1882507 d!2215376))

(declare-fun m!7814438 () Bool)

(assert (=> bs!1882507 m!7814438))

(assert (=> start!689220 d!2215376))

(declare-fun d!2215378 () Bool)

(assert (=> d!2215378 (forall!16670 (exprs!7205 ct2!306) lambda!428439)))

(declare-fun lt!2553668 () Unit!162129)

(declare-fun choose!54547 (List!68653 List!68653 Int) Unit!162129)

(assert (=> d!2215378 (= lt!2553668 (choose!54547 lt!2553648 (exprs!7205 ct2!306) lambda!428439))))

(assert (=> d!2215378 (forall!16670 lt!2553648 lambda!428439)))

(assert (=> d!2215378 (= (lemmaContentSubsetPreservesForall!354 lt!2553648 (exprs!7205 ct2!306) lambda!428439) lt!2553668)))

(declare-fun bs!1882514 () Bool)

(assert (= bs!1882514 d!2215378))

(declare-fun m!7814450 () Bool)

(assert (=> bs!1882514 m!7814450))

(declare-fun m!7814452 () Bool)

(assert (=> bs!1882514 m!7814452))

(declare-fun m!7814454 () Bool)

(assert (=> bs!1882514 m!7814454))

(assert (=> b!7082684 d!2215378))

(declare-fun d!2215386 () Bool)

(assert (=> d!2215386 (subseq!703 (exprs!7205 lt!2553646) (++!15880 (exprs!7205 lt!2553646) (exprs!7205 ct2!306)))))

(declare-fun lt!2553674 () Unit!162129)

(declare-fun choose!54549 (List!68653 List!68653) Unit!162129)

(assert (=> d!2215386 (= lt!2553674 (choose!54549 (exprs!7205 lt!2553646) (exprs!7205 ct2!306)))))

(assert (=> d!2215386 (= (lemmaConcatThenFirstSubseqOfTot!24 (exprs!7205 lt!2553646) (exprs!7205 ct2!306)) lt!2553674)))

(declare-fun bs!1882516 () Bool)

(assert (= bs!1882516 d!2215386))

(assert (=> bs!1882516 m!7814352))

(assert (=> bs!1882516 m!7814352))

(declare-fun m!7814462 () Bool)

(assert (=> bs!1882516 m!7814462))

(declare-fun m!7814464 () Bool)

(assert (=> bs!1882516 m!7814464))

(assert (=> b!7082684 d!2215386))

(declare-fun b!7082732 () Bool)

(declare-fun e!4258105 () Bool)

(declare-fun e!4258104 () Bool)

(assert (=> b!7082732 (= e!4258105 e!4258104)))

(declare-fun res!2893365 () Bool)

(assert (=> b!7082732 (=> res!2893365 e!4258104)))

(declare-fun e!4258106 () Bool)

(assert (=> b!7082732 (= res!2893365 e!4258106)))

(declare-fun res!2893366 () Bool)

(assert (=> b!7082732 (=> (not res!2893366) (not e!4258106))))

(assert (=> b!7082732 (= res!2893366 (= (h!74977 (exprs!7205 ct2!306)) (h!74977 lt!2553648)))))

(declare-fun d!2215390 () Bool)

(declare-fun res!2893368 () Bool)

(declare-fun e!4258103 () Bool)

(assert (=> d!2215390 (=> res!2893368 e!4258103)))

(assert (=> d!2215390 (= res!2893368 ((_ is Nil!68529) (exprs!7205 ct2!306)))))

(assert (=> d!2215390 (= (subseq!703 (exprs!7205 ct2!306) lt!2553648) e!4258103)))

(declare-fun b!7082734 () Bool)

(assert (=> b!7082734 (= e!4258104 (subseq!703 (exprs!7205 ct2!306) (t!382438 lt!2553648)))))

(declare-fun b!7082731 () Bool)

(assert (=> b!7082731 (= e!4258103 e!4258105)))

(declare-fun res!2893367 () Bool)

(assert (=> b!7082731 (=> (not res!2893367) (not e!4258105))))

(assert (=> b!7082731 (= res!2893367 ((_ is Cons!68529) lt!2553648))))

(declare-fun b!7082733 () Bool)

(assert (=> b!7082733 (= e!4258106 (subseq!703 (t!382438 (exprs!7205 ct2!306)) (t!382438 lt!2553648)))))

(assert (= (and d!2215390 (not res!2893368)) b!7082731))

(assert (= (and b!7082731 res!2893367) b!7082732))

(assert (= (and b!7082732 res!2893366) b!7082733))

(assert (= (and b!7082732 (not res!2893365)) b!7082734))

(declare-fun m!7814478 () Bool)

(assert (=> b!7082734 m!7814478))

(declare-fun m!7814480 () Bool)

(assert (=> b!7082733 m!7814480))

(assert (=> b!7082684 d!2215390))

(declare-fun b!7082736 () Bool)

(declare-fun e!4258109 () Bool)

(declare-fun e!4258108 () Bool)

(assert (=> b!7082736 (= e!4258109 e!4258108)))

(declare-fun res!2893369 () Bool)

(assert (=> b!7082736 (=> res!2893369 e!4258108)))

(declare-fun e!4258110 () Bool)

(assert (=> b!7082736 (= res!2893369 e!4258110)))

(declare-fun res!2893370 () Bool)

(assert (=> b!7082736 (=> (not res!2893370) (not e!4258110))))

(assert (=> b!7082736 (= res!2893370 (= (h!74977 (exprs!7205 lt!2553646)) (h!74977 lt!2553648)))))

(declare-fun d!2215398 () Bool)

(declare-fun res!2893372 () Bool)

(declare-fun e!4258107 () Bool)

(assert (=> d!2215398 (=> res!2893372 e!4258107)))

(assert (=> d!2215398 (= res!2893372 ((_ is Nil!68529) (exprs!7205 lt!2553646)))))

(assert (=> d!2215398 (= (subseq!703 (exprs!7205 lt!2553646) lt!2553648) e!4258107)))

(declare-fun b!7082738 () Bool)

(assert (=> b!7082738 (= e!4258108 (subseq!703 (exprs!7205 lt!2553646) (t!382438 lt!2553648)))))

(declare-fun b!7082735 () Bool)

(assert (=> b!7082735 (= e!4258107 e!4258109)))

(declare-fun res!2893371 () Bool)

(assert (=> b!7082735 (=> (not res!2893371) (not e!4258109))))

(assert (=> b!7082735 (= res!2893371 ((_ is Cons!68529) lt!2553648))))

(declare-fun b!7082737 () Bool)

(assert (=> b!7082737 (= e!4258110 (subseq!703 (t!382438 (exprs!7205 lt!2553646)) (t!382438 lt!2553648)))))

(assert (= (and d!2215398 (not res!2893372)) b!7082735))

(assert (= (and b!7082735 res!2893371) b!7082736))

(assert (= (and b!7082736 res!2893370) b!7082737))

(assert (= (and b!7082736 (not res!2893369)) b!7082738))

(declare-fun m!7814482 () Bool)

(assert (=> b!7082738 m!7814482))

(declare-fun m!7814484 () Bool)

(assert (=> b!7082737 m!7814484))

(assert (=> b!7082684 d!2215398))

(declare-fun d!2215400 () Bool)

(assert (=> d!2215400 (forall!16670 (exprs!7205 lt!2553646) lambda!428439)))

(declare-fun lt!2553682 () Unit!162129)

(assert (=> d!2215400 (= lt!2553682 (choose!54547 lt!2553648 (exprs!7205 lt!2553646) lambda!428439))))

(assert (=> d!2215400 (forall!16670 lt!2553648 lambda!428439)))

(assert (=> d!2215400 (= (lemmaContentSubsetPreservesForall!354 lt!2553648 (exprs!7205 lt!2553646) lambda!428439) lt!2553682)))

(declare-fun bs!1882520 () Bool)

(assert (= bs!1882520 d!2215400))

(declare-fun m!7814486 () Bool)

(assert (=> bs!1882520 m!7814486))

(declare-fun m!7814488 () Bool)

(assert (=> bs!1882520 m!7814488))

(assert (=> bs!1882520 m!7814454))

(assert (=> b!7082684 d!2215400))

(declare-fun d!2215402 () Bool)

(assert (=> d!2215402 (subseq!703 (exprs!7205 ct2!306) (++!15880 (exprs!7205 lt!2553646) (exprs!7205 ct2!306)))))

(declare-fun lt!2553685 () Unit!162129)

(declare-fun choose!54553 (List!68653 List!68653) Unit!162129)

(assert (=> d!2215402 (= lt!2553685 (choose!54553 (exprs!7205 lt!2553646) (exprs!7205 ct2!306)))))

(assert (=> d!2215402 (= (lemmaConcatThenSecondSubseqOfTot!24 (exprs!7205 lt!2553646) (exprs!7205 ct2!306)) lt!2553685)))

(declare-fun bs!1882530 () Bool)

(assert (= bs!1882530 d!2215402))

(assert (=> bs!1882530 m!7814352))

(assert (=> bs!1882530 m!7814352))

(declare-fun m!7814494 () Bool)

(assert (=> bs!1882530 m!7814494))

(declare-fun m!7814496 () Bool)

(assert (=> bs!1882530 m!7814496))

(assert (=> b!7082684 d!2215402))

(declare-fun bs!1882531 () Bool)

(declare-fun d!2215408 () Bool)

(assert (= bs!1882531 (and d!2215408 d!2215358)))

(declare-fun lambda!428469 () Int)

(assert (=> bs!1882531 (not (= lambda!428469 lambda!428450))))

(declare-fun bs!1882532 () Bool)

(assert (= bs!1882532 (and d!2215408 b!7082677)))

(assert (=> bs!1882532 (not (= lambda!428469 lambda!428438))))

(declare-fun bs!1882533 () Bool)

(assert (= bs!1882533 (and d!2215408 d!2215352)))

(assert (=> bs!1882533 (= lambda!428469 lambda!428442)))

(declare-fun bs!1882534 () Bool)

(assert (= bs!1882534 (and d!2215408 b!7082684)))

(assert (=> bs!1882534 (= lambda!428469 lambda!428439)))

(declare-fun bs!1882535 () Bool)

(assert (= bs!1882535 (and d!2215408 d!2215376)))

(assert (=> bs!1882535 (not (= lambda!428469 lambda!428463))))

(assert (=> d!2215408 (= (nullableContext!120 lt!2553646) (forall!16670 (exprs!7205 lt!2553646) lambda!428469))))

(declare-fun bs!1882536 () Bool)

(assert (= bs!1882536 d!2215408))

(declare-fun m!7814498 () Bool)

(assert (=> bs!1882536 m!7814498))

(assert (=> b!7082684 d!2215408))

(declare-fun bs!1882538 () Bool)

(declare-fun d!2215410 () Bool)

(assert (= bs!1882538 (and d!2215410 b!7082680)))

(declare-fun lambda!428472 () Int)

(assert (=> bs!1882538 (= lambda!428472 lambda!428436)))

(assert (=> d!2215410 (= (nullableZipper!2740 lt!2553652) (exists!3806 lt!2553652 lambda!428472))))

(declare-fun bs!1882539 () Bool)

(assert (= bs!1882539 d!2215410))

(declare-fun m!7814504 () Bool)

(assert (=> bs!1882539 m!7814504))

(assert (=> b!7082685 d!2215410))

(declare-fun bs!1882540 () Bool)

(declare-fun d!2215414 () Bool)

(assert (= bs!1882540 (and d!2215414 d!2215358)))

(declare-fun lambda!428473 () Int)

(assert (=> bs!1882540 (not (= lambda!428473 lambda!428450))))

(declare-fun bs!1882541 () Bool)

(assert (= bs!1882541 (and d!2215414 b!7082677)))

(assert (=> bs!1882541 (not (= lambda!428473 lambda!428438))))

(declare-fun bs!1882542 () Bool)

(assert (= bs!1882542 (and d!2215414 d!2215352)))

(assert (=> bs!1882542 (= lambda!428473 lambda!428442)))

(declare-fun bs!1882543 () Bool)

(assert (= bs!1882543 (and d!2215414 b!7082684)))

(assert (=> bs!1882543 (= lambda!428473 lambda!428439)))

(declare-fun bs!1882544 () Bool)

(assert (= bs!1882544 (and d!2215414 d!2215408)))

(assert (=> bs!1882544 (= lambda!428473 lambda!428469)))

(declare-fun bs!1882545 () Bool)

(assert (= bs!1882545 (and d!2215414 d!2215376)))

(assert (=> bs!1882545 (not (= lambda!428473 lambda!428463))))

(assert (=> d!2215414 (= (nullableContext!120 ct2!306) (forall!16670 (exprs!7205 ct2!306) lambda!428473))))

(declare-fun bs!1882546 () Bool)

(assert (= bs!1882546 d!2215414))

(declare-fun m!7814506 () Bool)

(assert (=> bs!1882546 m!7814506))

(assert (=> b!7082686 d!2215414))

(declare-fun lt!2553696 () List!68653)

(declare-fun b!7082762 () Bool)

(declare-fun e!4258122 () Bool)

(assert (=> b!7082762 (= e!4258122 (or (not (= (exprs!7205 ct2!306) Nil!68529)) (= lt!2553696 (exprs!7205 lt!2553646))))))

(declare-fun b!7082759 () Bool)

(declare-fun e!4258121 () List!68653)

(assert (=> b!7082759 (= e!4258121 (exprs!7205 ct2!306))))

(declare-fun d!2215416 () Bool)

(assert (=> d!2215416 e!4258122))

(declare-fun res!2893383 () Bool)

(assert (=> d!2215416 (=> (not res!2893383) (not e!4258122))))

(declare-fun content!13899 (List!68653) (InoxSet Regex!17709))

(assert (=> d!2215416 (= res!2893383 (= (content!13899 lt!2553696) ((_ map or) (content!13899 (exprs!7205 lt!2553646)) (content!13899 (exprs!7205 ct2!306)))))))

(assert (=> d!2215416 (= lt!2553696 e!4258121)))

(declare-fun c!1322050 () Bool)

(assert (=> d!2215416 (= c!1322050 ((_ is Nil!68529) (exprs!7205 lt!2553646)))))

(assert (=> d!2215416 (= (++!15880 (exprs!7205 lt!2553646) (exprs!7205 ct2!306)) lt!2553696)))

(declare-fun b!7082760 () Bool)

(assert (=> b!7082760 (= e!4258121 (Cons!68529 (h!74977 (exprs!7205 lt!2553646)) (++!15880 (t!382438 (exprs!7205 lt!2553646)) (exprs!7205 ct2!306))))))

(declare-fun b!7082761 () Bool)

(declare-fun res!2893384 () Bool)

(assert (=> b!7082761 (=> (not res!2893384) (not e!4258122))))

(declare-fun size!41274 (List!68653) Int)

(assert (=> b!7082761 (= res!2893384 (= (size!41274 lt!2553696) (+ (size!41274 (exprs!7205 lt!2553646)) (size!41274 (exprs!7205 ct2!306)))))))

(assert (= (and d!2215416 c!1322050) b!7082759))

(assert (= (and d!2215416 (not c!1322050)) b!7082760))

(assert (= (and d!2215416 res!2893383) b!7082761))

(assert (= (and b!7082761 res!2893384) b!7082762))

(declare-fun m!7814522 () Bool)

(assert (=> d!2215416 m!7814522))

(declare-fun m!7814524 () Bool)

(assert (=> d!2215416 m!7814524))

(declare-fun m!7814526 () Bool)

(assert (=> d!2215416 m!7814526))

(declare-fun m!7814528 () Bool)

(assert (=> b!7082760 m!7814528))

(declare-fun m!7814530 () Bool)

(assert (=> b!7082761 m!7814530))

(declare-fun m!7814532 () Bool)

(assert (=> b!7082761 m!7814532))

(declare-fun m!7814534 () Bool)

(assert (=> b!7082761 m!7814534))

(assert (=> b!7082677 d!2215416))

(declare-fun d!2215420 () Bool)

(assert (=> d!2215420 (forall!16670 (++!15880 (exprs!7205 lt!2553646) (exprs!7205 ct2!306)) lambda!428438)))

(declare-fun lt!2553702 () Unit!162129)

(declare-fun choose!54555 (List!68653 List!68653 Int) Unit!162129)

(assert (=> d!2215420 (= lt!2553702 (choose!54555 (exprs!7205 lt!2553646) (exprs!7205 ct2!306) lambda!428438))))

(assert (=> d!2215420 (forall!16670 (exprs!7205 lt!2553646) lambda!428438)))

(assert (=> d!2215420 (= (lemmaConcatPreservesForall!1020 (exprs!7205 lt!2553646) (exprs!7205 ct2!306) lambda!428438) lt!2553702)))

(declare-fun bs!1882548 () Bool)

(assert (= bs!1882548 d!2215420))

(assert (=> bs!1882548 m!7814352))

(assert (=> bs!1882548 m!7814352))

(declare-fun m!7814542 () Bool)

(assert (=> bs!1882548 m!7814542))

(declare-fun m!7814544 () Bool)

(assert (=> bs!1882548 m!7814544))

(declare-fun m!7814546 () Bool)

(assert (=> bs!1882548 m!7814546))

(assert (=> b!7082677 d!2215420))

(declare-fun d!2215424 () Bool)

(declare-fun e!4258135 () Bool)

(assert (=> d!2215424 e!4258135))

(declare-fun res!2893390 () Bool)

(assert (=> d!2215424 (=> (not res!2893390) (not e!4258135))))

(declare-fun lt!2553706 () Context!13410)

(declare-fun dynLambda!27942 (Int Context!13410) Context!13410)

(assert (=> d!2215424 (= res!2893390 (= lt!2553650 (dynLambda!27942 lambda!428437 lt!2553706)))))

(declare-fun choose!54556 ((InoxSet Context!13410) Int Context!13410) Context!13410)

(assert (=> d!2215424 (= lt!2553706 (choose!54556 z1!570 lambda!428437 lt!2553650))))

(assert (=> d!2215424 (select (map!16062 z1!570 lambda!428437) lt!2553650)))

(assert (=> d!2215424 (= (mapPost2!536 z1!570 lambda!428437 lt!2553650) lt!2553706)))

(declare-fun b!7082783 () Bool)

(assert (=> b!7082783 (= e!4258135 (select z1!570 lt!2553706))))

(assert (= (and d!2215424 res!2893390) b!7082783))

(declare-fun b_lambda!270687 () Bool)

(assert (=> (not b_lambda!270687) (not d!2215424)))

(declare-fun m!7814560 () Bool)

(assert (=> d!2215424 m!7814560))

(declare-fun m!7814562 () Bool)

(assert (=> d!2215424 m!7814562))

(declare-fun m!7814564 () Bool)

(assert (=> d!2215424 m!7814564))

(declare-fun m!7814566 () Bool)

(assert (=> d!2215424 m!7814566))

(declare-fun m!7814568 () Bool)

(assert (=> b!7082783 m!7814568))

(assert (=> b!7082677 d!2215424))

(declare-fun b!7082791 () Bool)

(declare-fun e!4258141 () Bool)

(declare-fun tp!1943962 () Bool)

(assert (=> b!7082791 (= e!4258141 (and tp_is_empty!44643 tp!1943962))))

(assert (=> b!7082678 (= tp!1943940 e!4258141)))

(assert (= (and b!7082678 ((_ is Cons!68528) (t!382437 s!7408))) b!7082791))

(declare-fun condSetEmpty!50599 () Bool)

(assert (=> setNonEmpty!50593 (= condSetEmpty!50599 (= setRest!50593 ((as const (Array Context!13410 Bool)) false)))))

(declare-fun setRes!50599 () Bool)

(assert (=> setNonEmpty!50593 (= tp!1943941 setRes!50599)))

(declare-fun setIsEmpty!50599 () Bool)

(assert (=> setIsEmpty!50599 setRes!50599))

(declare-fun setNonEmpty!50599 () Bool)

(declare-fun setElem!50599 () Context!13410)

(declare-fun tp!1943968 () Bool)

(declare-fun e!4258144 () Bool)

(assert (=> setNonEmpty!50599 (= setRes!50599 (and tp!1943968 (inv!87131 setElem!50599) e!4258144))))

(declare-fun setRest!50599 () (InoxSet Context!13410))

(assert (=> setNonEmpty!50599 (= setRest!50593 ((_ map or) (store ((as const (Array Context!13410 Bool)) false) setElem!50599 true) setRest!50599))))

(declare-fun b!7082796 () Bool)

(declare-fun tp!1943967 () Bool)

(assert (=> b!7082796 (= e!4258144 tp!1943967)))

(assert (= (and setNonEmpty!50593 condSetEmpty!50599) setIsEmpty!50599))

(assert (= (and setNonEmpty!50593 (not condSetEmpty!50599)) setNonEmpty!50599))

(assert (= setNonEmpty!50599 b!7082796))

(declare-fun m!7814576 () Bool)

(assert (=> setNonEmpty!50599 m!7814576))

(declare-fun b!7082801 () Bool)

(declare-fun e!4258147 () Bool)

(declare-fun tp!1943973 () Bool)

(declare-fun tp!1943974 () Bool)

(assert (=> b!7082801 (= e!4258147 (and tp!1943973 tp!1943974))))

(assert (=> b!7082681 (= tp!1943939 e!4258147)))

(assert (= (and b!7082681 ((_ is Cons!68529) (exprs!7205 setElem!50593))) b!7082801))

(declare-fun b!7082802 () Bool)

(declare-fun e!4258148 () Bool)

(declare-fun tp!1943975 () Bool)

(declare-fun tp!1943976 () Bool)

(assert (=> b!7082802 (= e!4258148 (and tp!1943975 tp!1943976))))

(assert (=> b!7082682 (= tp!1943942 e!4258148)))

(assert (= (and b!7082682 ((_ is Cons!68529) (exprs!7205 ct2!306))) b!7082802))

(declare-fun b_lambda!270693 () Bool)

(assert (= b_lambda!270687 (or b!7082677 b_lambda!270693)))

(declare-fun bs!1882551 () Bool)

(declare-fun d!2215430 () Bool)

(assert (= bs!1882551 (and d!2215430 b!7082677)))

(declare-fun lt!2553708 () Unit!162129)

(assert (=> bs!1882551 (= lt!2553708 (lemmaConcatPreservesForall!1020 (exprs!7205 lt!2553706) (exprs!7205 ct2!306) lambda!428438))))

(assert (=> bs!1882551 (= (dynLambda!27942 lambda!428437 lt!2553706) (Context!13411 (++!15880 (exprs!7205 lt!2553706) (exprs!7205 ct2!306))))))

(declare-fun m!7814578 () Bool)

(assert (=> bs!1882551 m!7814578))

(declare-fun m!7814580 () Bool)

(assert (=> bs!1882551 m!7814580))

(assert (=> d!2215424 d!2215430))

(declare-fun b_lambda!270695 () Bool)

(assert (= b_lambda!270681 (or b!7082680 b_lambda!270695)))

(declare-fun bs!1882552 () Bool)

(declare-fun d!2215432 () Bool)

(assert (= bs!1882552 (and d!2215432 b!7082680)))

(assert (=> bs!1882552 (= (dynLambda!27939 lambda!428436 lt!2553655) (nullableContext!120 lt!2553655))))

(declare-fun m!7814582 () Bool)

(assert (=> bs!1882552 m!7814582))

(assert (=> d!2215354 d!2215432))

(check-sat (not b!7082737) (not d!2215414) (not b!7082761) (not b!7082791) (not d!2215362) (not b!7082733) (not d!2215358) (not b!7082802) (not d!2215416) (not b!7082734) (not d!2215354) (not b!7082760) (not d!2215366) (not d!2215400) (not b!7082796) (not d!2215402) (not d!2215420) (not b_lambda!270693) (not d!2215352) (not b!7082801) (not d!2215376) (not b_lambda!270695) (not d!2215386) (not d!2215424) (not d!2215378) (not d!2215408) (not b!7082702) tp_is_empty!44643 (not bs!1882552) (not d!2215370) (not setNonEmpty!50599) (not b!7082703) (not bs!1882551) (not b!7082738) (not d!2215410))
(check-sat)
