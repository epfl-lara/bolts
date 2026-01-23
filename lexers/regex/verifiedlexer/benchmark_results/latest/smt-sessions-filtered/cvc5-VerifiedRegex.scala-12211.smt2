; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!687926 () Bool)

(assert start!687926)

(declare-fun b!7076806 () Bool)

(assert (=> b!7076806 true))

(declare-fun b!7076800 () Bool)

(assert (=> b!7076800 true))

(declare-fun b!7076791 () Bool)

(assert (=> b!7076791 true))

(declare-fun e!4254605 () Bool)

(declare-fun e!4254603 () Bool)

(assert (=> b!7076791 (= e!4254605 e!4254603)))

(declare-fun res!2890554 () Bool)

(assert (=> b!7076791 (=> res!2890554 e!4254603)))

(declare-datatypes ((C!35606 0))(
  ( (C!35607 (val!27505 Int)) )
))
(declare-datatypes ((Regex!17668 0))(
  ( (ElementMatch!17668 (c!1320435 C!35606)) (Concat!26513 (regOne!35848 Regex!17668) (regTwo!35848 Regex!17668)) (EmptyExpr!17668) (Star!17668 (reg!17997 Regex!17668)) (EmptyLang!17668) (Union!17668 (regOne!35849 Regex!17668) (regTwo!35849 Regex!17668)) )
))
(declare-datatypes ((List!68530 0))(
  ( (Nil!68406) (Cons!68406 (h!74854 Regex!17668) (t!382315 List!68530)) )
))
(declare-datatypes ((Context!13328 0))(
  ( (Context!13329 (exprs!7164 List!68530)) )
))
(declare-fun lt!2549486 () (Set Context!13328))

(declare-fun lt!2549490 () (Set Context!13328))

(declare-datatypes ((List!68531 0))(
  ( (Nil!68407) (Cons!68407 (h!74855 C!35606) (t!382316 List!68531)) )
))
(declare-fun s!7408 () List!68531)

(declare-fun derivationStepZipper!3118 ((Set Context!13328) C!35606) (Set Context!13328))

(assert (=> b!7076791 (= res!2890554 (not (= (derivationStepZipper!3118 lt!2549490 (h!74855 s!7408)) lt!2549486)))))

(declare-fun lt!2549489 () Context!13328)

(declare-fun lambda!426827 () Int)

(declare-fun flatMap!2594 ((Set Context!13328) Int) (Set Context!13328))

(declare-fun derivationStepZipperUp!2252 (Context!13328 C!35606) (Set Context!13328))

(assert (=> b!7076791 (= (flatMap!2594 lt!2549490 lambda!426827) (derivationStepZipperUp!2252 lt!2549489 (h!74855 s!7408)))))

(declare-datatypes ((Unit!162047 0))(
  ( (Unit!162048) )
))
(declare-fun lt!2549483 () Unit!162047)

(declare-fun lemmaFlatMapOnSingletonSet!2103 ((Set Context!13328) Context!13328 Int) Unit!162047)

(assert (=> b!7076791 (= lt!2549483 (lemmaFlatMapOnSingletonSet!2103 lt!2549490 lt!2549489 lambda!426827))))

(assert (=> b!7076791 (= lt!2549486 (derivationStepZipperUp!2252 lt!2549489 (h!74855 s!7408)))))

(declare-fun lt!2549467 () Context!13328)

(declare-fun lambda!426826 () Int)

(declare-fun ct2!306 () Context!13328)

(declare-fun lt!2549476 () Unit!162047)

(declare-fun lemmaConcatPreservesForall!979 (List!68530 List!68530 Int) Unit!162047)

(assert (=> b!7076791 (= lt!2549476 (lemmaConcatPreservesForall!979 (exprs!7164 lt!2549467) (exprs!7164 ct2!306) lambda!426826))))

(declare-fun setIsEmpty!50386 () Bool)

(declare-fun setRes!50386 () Bool)

(assert (=> setIsEmpty!50386 setRes!50386))

(declare-fun b!7076792 () Bool)

(declare-fun e!4254609 () Bool)

(declare-fun e!4254611 () Bool)

(assert (=> b!7076792 (= e!4254609 e!4254611)))

(declare-fun res!2890545 () Bool)

(assert (=> b!7076792 (=> res!2890545 e!4254611)))

(declare-fun lt!2549471 () (Set Context!13328))

(declare-fun matchZipper!3208 ((Set Context!13328) List!68531) Bool)

(assert (=> b!7076792 (= res!2890545 (not (matchZipper!3208 lt!2549471 (t!382316 s!7408))))))

(declare-fun lt!2549474 () List!68530)

(declare-fun derivationStepZipperDown!2302 (Regex!17668 Context!13328 C!35606) (Set Context!13328))

(declare-fun ++!15811 (List!68530 List!68530) List!68530)

(assert (=> b!7076792 (= lt!2549471 (derivationStepZipperDown!2302 (h!74854 (exprs!7164 lt!2549467)) (Context!13329 (++!15811 lt!2549474 (exprs!7164 ct2!306))) (h!74855 s!7408)))))

(declare-fun lt!2549468 () Unit!162047)

(assert (=> b!7076792 (= lt!2549468 (lemmaConcatPreservesForall!979 lt!2549474 (exprs!7164 ct2!306) lambda!426826))))

(declare-fun b!7076793 () Bool)

(declare-fun res!2890549 () Bool)

(declare-fun e!4254601 () Bool)

(assert (=> b!7076793 (=> (not res!2890549) (not e!4254601))))

(assert (=> b!7076793 (= res!2890549 (is-Cons!68407 s!7408))))

(declare-fun res!2890556 () Bool)

(assert (=> start!687926 (=> (not res!2890556) (not e!4254601))))

(declare-fun lt!2549478 () (Set Context!13328))

(assert (=> start!687926 (= res!2890556 (matchZipper!3208 lt!2549478 s!7408))))

(declare-fun z1!570 () (Set Context!13328))

(declare-fun appendTo!789 ((Set Context!13328) Context!13328) (Set Context!13328))

(assert (=> start!687926 (= lt!2549478 (appendTo!789 z1!570 ct2!306))))

(assert (=> start!687926 e!4254601))

(declare-fun condSetEmpty!50386 () Bool)

(assert (=> start!687926 (= condSetEmpty!50386 (= z1!570 (as set.empty (Set Context!13328))))))

(assert (=> start!687926 setRes!50386))

(declare-fun e!4254606 () Bool)

(declare-fun inv!87030 (Context!13328) Bool)

(assert (=> start!687926 (and (inv!87030 ct2!306) e!4254606)))

(declare-fun e!4254604 () Bool)

(assert (=> start!687926 e!4254604))

(declare-fun b!7076794 () Bool)

(declare-fun e!4254608 () Bool)

(declare-fun lt!2549487 () List!68531)

(declare-fun isPrefix!5859 (List!68531 List!68531) Bool)

(assert (=> b!7076794 (= e!4254608 (isPrefix!5859 Nil!68407 lt!2549487))))

(declare-fun b!7076795 () Bool)

(declare-fun res!2890544 () Bool)

(assert (=> b!7076795 (=> res!2890544 e!4254608)))

(declare-datatypes ((tuple2!68294 0))(
  ( (tuple2!68295 (_1!37450 List!68531) (_2!37450 List!68531)) )
))
(declare-fun lt!2549480 () tuple2!68294)

(declare-fun ++!15812 (List!68531 List!68531) List!68531)

(assert (=> b!7076795 (= res!2890544 (not (= (++!15812 lt!2549487 (_2!37450 lt!2549480)) s!7408)))))

(declare-fun b!7076796 () Bool)

(declare-fun e!4254612 () Bool)

(assert (=> b!7076796 (= e!4254611 e!4254612)))

(declare-fun res!2890558 () Bool)

(assert (=> b!7076796 (=> res!2890558 e!4254612)))

(declare-fun lt!2549472 () (Set Context!13328))

(assert (=> b!7076796 (= res!2890558 (not (matchZipper!3208 lt!2549472 (_1!37450 lt!2549480))))))

(declare-datatypes ((Option!16979 0))(
  ( (None!16978) (Some!16978 (v!53272 tuple2!68294)) )
))
(declare-fun lt!2549477 () Option!16979)

(declare-fun get!23964 (Option!16979) tuple2!68294)

(assert (=> b!7076796 (= lt!2549480 (get!23964 lt!2549477))))

(declare-fun isDefined!13680 (Option!16979) Bool)

(assert (=> b!7076796 (isDefined!13680 lt!2549477)))

(declare-fun lt!2549491 () (Set Context!13328))

(declare-fun findConcatSeparationZippers!495 ((Set Context!13328) (Set Context!13328) List!68531 List!68531 List!68531) Option!16979)

(assert (=> b!7076796 (= lt!2549477 (findConcatSeparationZippers!495 lt!2549472 lt!2549491 Nil!68407 (t!382316 s!7408) (t!382316 s!7408)))))

(assert (=> b!7076796 (= lt!2549491 (set.insert ct2!306 (as set.empty (Set Context!13328))))))

(declare-fun lt!2549469 () Unit!162047)

(declare-fun lemmaConcatZipperMatchesStringThenFindConcatDefined!483 ((Set Context!13328) Context!13328 List!68531) Unit!162047)

(assert (=> b!7076796 (= lt!2549469 (lemmaConcatZipperMatchesStringThenFindConcatDefined!483 lt!2549472 ct2!306 (t!382316 s!7408)))))

(assert (=> b!7076796 (= lt!2549471 (appendTo!789 lt!2549472 ct2!306))))

(declare-fun lt!2549481 () Context!13328)

(assert (=> b!7076796 (= lt!2549472 (derivationStepZipperDown!2302 (h!74854 (exprs!7164 lt!2549467)) lt!2549481 (h!74855 s!7408)))))

(declare-fun lt!2549466 () Unit!162047)

(assert (=> b!7076796 (= lt!2549466 (lemmaConcatPreservesForall!979 lt!2549474 (exprs!7164 ct2!306) lambda!426826))))

(declare-fun lt!2549479 () Unit!162047)

(declare-fun lemmaDerivativeStepZipperDownConcatCtxSameAsAppendTo!135 (Context!13328 Regex!17668 C!35606 Context!13328) Unit!162047)

(assert (=> b!7076796 (= lt!2549479 (lemmaDerivativeStepZipperDownConcatCtxSameAsAppendTo!135 lt!2549481 (h!74854 (exprs!7164 lt!2549467)) (h!74855 s!7408) ct2!306))))

(declare-fun b!7076797 () Bool)

(declare-fun tp_is_empty!44561 () Bool)

(declare-fun tp!1942963 () Bool)

(assert (=> b!7076797 (= e!4254604 (and tp_is_empty!44561 tp!1942963))))

(declare-fun b!7076798 () Bool)

(declare-fun res!2890547 () Bool)

(assert (=> b!7076798 (=> res!2890547 e!4254612)))

(assert (=> b!7076798 (= res!2890547 (not (= (++!15812 (_1!37450 lt!2549480) (_2!37450 lt!2549480)) (t!382316 s!7408))))))

(declare-fun b!7076799 () Bool)

(declare-fun e!4254607 () Bool)

(declare-fun tp!1942961 () Bool)

(assert (=> b!7076799 (= e!4254607 tp!1942961)))

(declare-fun e!4254602 () Bool)

(declare-fun e!4254610 () Bool)

(assert (=> b!7076800 (= e!4254602 e!4254610)))

(declare-fun res!2890559 () Bool)

(assert (=> b!7076800 (=> res!2890559 e!4254610)))

(declare-fun lt!2549475 () Context!13328)

(assert (=> b!7076800 (= res!2890559 (or (not (= lt!2549489 lt!2549475)) (not (set.member lt!2549467 z1!570))))))

(assert (=> b!7076800 (= lt!2549489 (Context!13329 (++!15811 (exprs!7164 lt!2549467) (exprs!7164 ct2!306))))))

(declare-fun lt!2549465 () Unit!162047)

(assert (=> b!7076800 (= lt!2549465 (lemmaConcatPreservesForall!979 (exprs!7164 lt!2549467) (exprs!7164 ct2!306) lambda!426826))))

(declare-fun lambda!426825 () Int)

(declare-fun mapPost2!497 ((Set Context!13328) Int Context!13328) Context!13328)

(assert (=> b!7076800 (= lt!2549467 (mapPost2!497 z1!570 lambda!426825 lt!2549475))))

(declare-fun b!7076801 () Bool)

(declare-fun tp!1942964 () Bool)

(assert (=> b!7076801 (= e!4254606 tp!1942964)))

(declare-fun b!7076802 () Bool)

(declare-fun res!2890552 () Bool)

(assert (=> b!7076802 (=> res!2890552 e!4254602)))

(assert (=> b!7076802 (= res!2890552 (not (set.member lt!2549475 lt!2549478)))))

(declare-fun b!7076803 () Bool)

(declare-fun res!2890553 () Bool)

(assert (=> b!7076803 (=> res!2890553 e!4254603)))

(assert (=> b!7076803 (= res!2890553 (not (is-Cons!68406 (exprs!7164 lt!2549467))))))

(declare-fun b!7076804 () Bool)

(declare-fun res!2890546 () Bool)

(assert (=> b!7076804 (=> res!2890546 e!4254612)))

(assert (=> b!7076804 (= res!2890546 (not (matchZipper!3208 lt!2549491 (_2!37450 lt!2549480))))))

(declare-fun b!7076805 () Bool)

(assert (=> b!7076805 (= e!4254603 e!4254609)))

(declare-fun res!2890550 () Bool)

(assert (=> b!7076805 (=> res!2890550 e!4254609)))

(declare-fun nullable!7351 (Regex!17668) Bool)

(assert (=> b!7076805 (= res!2890550 (nullable!7351 (h!74854 (exprs!7164 lt!2549467))))))

(assert (=> b!7076805 (= lt!2549481 (Context!13329 lt!2549474))))

(declare-fun tail!13866 (List!68530) List!68530)

(assert (=> b!7076805 (= lt!2549474 (tail!13866 (exprs!7164 lt!2549467)))))

(assert (=> b!7076806 (= e!4254601 (not e!4254602))))

(declare-fun res!2890557 () Bool)

(assert (=> b!7076806 (=> res!2890557 e!4254602)))

(declare-fun lt!2549492 () (Set Context!13328))

(assert (=> b!7076806 (= res!2890557 (not (matchZipper!3208 lt!2549492 s!7408)))))

(assert (=> b!7076806 (= lt!2549492 (set.insert lt!2549475 (as set.empty (Set Context!13328))))))

(declare-fun lambda!426824 () Int)

(declare-fun getWitness!1784 ((Set Context!13328) Int) Context!13328)

(assert (=> b!7076806 (= lt!2549475 (getWitness!1784 lt!2549478 lambda!426824))))

(declare-datatypes ((List!68532 0))(
  ( (Nil!68408) (Cons!68408 (h!74856 Context!13328) (t!382317 List!68532)) )
))
(declare-fun lt!2549470 () List!68532)

(declare-fun exists!3734 (List!68532 Int) Bool)

(assert (=> b!7076806 (exists!3734 lt!2549470 lambda!426824)))

(declare-fun lt!2549484 () Unit!162047)

(declare-fun lemmaZipperMatchesExistsMatchingContext!589 (List!68532 List!68531) Unit!162047)

(assert (=> b!7076806 (= lt!2549484 (lemmaZipperMatchesExistsMatchingContext!589 lt!2549470 s!7408))))

(declare-fun toList!11009 ((Set Context!13328)) List!68532)

(assert (=> b!7076806 (= lt!2549470 (toList!11009 lt!2549478))))

(declare-fun tp!1942962 () Bool)

(declare-fun setElem!50386 () Context!13328)

(declare-fun setNonEmpty!50386 () Bool)

(assert (=> setNonEmpty!50386 (= setRes!50386 (and tp!1942962 (inv!87030 setElem!50386) e!4254607))))

(declare-fun setRest!50386 () (Set Context!13328))

(assert (=> setNonEmpty!50386 (= z1!570 (set.union (set.insert setElem!50386 (as set.empty (Set Context!13328))) setRest!50386))))

(declare-fun b!7076807 () Bool)

(declare-fun e!4254613 () Bool)

(assert (=> b!7076807 (= e!4254612 e!4254613)))

(declare-fun res!2890543 () Bool)

(assert (=> b!7076807 (=> res!2890543 e!4254613)))

(declare-fun lt!2549473 () (Set Context!13328))

(declare-fun lt!2549485 () (Set Context!13328))

(assert (=> b!7076807 (= res!2890543 (or (not (= lt!2549485 lt!2549473)) (not (= lt!2549485 lt!2549472))))))

(declare-fun lt!2549493 () (Set Context!13328))

(assert (=> b!7076807 (= (flatMap!2594 lt!2549493 lambda!426827) (derivationStepZipperUp!2252 lt!2549467 (h!74855 s!7408)))))

(declare-fun lt!2549482 () Unit!162047)

(assert (=> b!7076807 (= lt!2549482 (lemmaFlatMapOnSingletonSet!2103 lt!2549493 lt!2549467 lambda!426827))))

(assert (=> b!7076807 (= lt!2549473 (derivationStepZipperUp!2252 lt!2549467 (h!74855 s!7408)))))

(assert (=> b!7076807 (= lt!2549485 (derivationStepZipper!3118 lt!2549493 (h!74855 s!7408)))))

(assert (=> b!7076807 (= lt!2549493 (set.insert lt!2549467 (as set.empty (Set Context!13328))))))

(declare-fun b!7076808 () Bool)

(assert (=> b!7076808 (= e!4254613 e!4254608)))

(declare-fun res!2890551 () Bool)

(assert (=> b!7076808 (=> res!2890551 e!4254608)))

(assert (=> b!7076808 (= res!2890551 (not (matchZipper!3208 lt!2549493 lt!2549487)))))

(assert (=> b!7076808 (= lt!2549487 (Cons!68407 (h!74855 s!7408) (_1!37450 lt!2549480)))))

(declare-fun b!7076809 () Bool)

(declare-fun res!2890548 () Bool)

(assert (=> b!7076809 (=> res!2890548 e!4254603)))

(declare-fun isEmpty!39927 (List!68530) Bool)

(assert (=> b!7076809 (= res!2890548 (isEmpty!39927 (exprs!7164 lt!2549467)))))

(declare-fun b!7076810 () Bool)

(assert (=> b!7076810 (= e!4254610 e!4254605)))

(declare-fun res!2890555 () Bool)

(assert (=> b!7076810 (=> res!2890555 e!4254605)))

(assert (=> b!7076810 (= res!2890555 (not (= lt!2549490 lt!2549492)))))

(assert (=> b!7076810 (= lt!2549490 (set.insert lt!2549489 (as set.empty (Set Context!13328))))))

(declare-fun lt!2549488 () Unit!162047)

(assert (=> b!7076810 (= lt!2549488 (lemmaConcatPreservesForall!979 (exprs!7164 lt!2549467) (exprs!7164 ct2!306) lambda!426826))))

(assert (= (and start!687926 res!2890556) b!7076793))

(assert (= (and b!7076793 res!2890549) b!7076806))

(assert (= (and b!7076806 (not res!2890557)) b!7076802))

(assert (= (and b!7076802 (not res!2890552)) b!7076800))

(assert (= (and b!7076800 (not res!2890559)) b!7076810))

(assert (= (and b!7076810 (not res!2890555)) b!7076791))

(assert (= (and b!7076791 (not res!2890554)) b!7076803))

(assert (= (and b!7076803 (not res!2890553)) b!7076809))

(assert (= (and b!7076809 (not res!2890548)) b!7076805))

(assert (= (and b!7076805 (not res!2890550)) b!7076792))

(assert (= (and b!7076792 (not res!2890545)) b!7076796))

(assert (= (and b!7076796 (not res!2890558)) b!7076804))

(assert (= (and b!7076804 (not res!2890546)) b!7076798))

(assert (= (and b!7076798 (not res!2890547)) b!7076807))

(assert (= (and b!7076807 (not res!2890543)) b!7076808))

(assert (= (and b!7076808 (not res!2890551)) b!7076795))

(assert (= (and b!7076795 (not res!2890544)) b!7076794))

(assert (= (and start!687926 condSetEmpty!50386) setIsEmpty!50386))

(assert (= (and start!687926 (not condSetEmpty!50386)) setNonEmpty!50386))

(assert (= setNonEmpty!50386 b!7076799))

(assert (= start!687926 b!7076801))

(assert (= (and start!687926 (is-Cons!68407 s!7408)) b!7076797))

(declare-fun m!7805076 () Bool)

(assert (=> b!7076798 m!7805076))

(declare-fun m!7805078 () Bool)

(assert (=> b!7076792 m!7805078))

(declare-fun m!7805080 () Bool)

(assert (=> b!7076792 m!7805080))

(declare-fun m!7805082 () Bool)

(assert (=> b!7076792 m!7805082))

(declare-fun m!7805084 () Bool)

(assert (=> b!7076792 m!7805084))

(declare-fun m!7805086 () Bool)

(assert (=> b!7076800 m!7805086))

(declare-fun m!7805088 () Bool)

(assert (=> b!7076800 m!7805088))

(declare-fun m!7805090 () Bool)

(assert (=> b!7076800 m!7805090))

(declare-fun m!7805092 () Bool)

(assert (=> b!7076800 m!7805092))

(declare-fun m!7805094 () Bool)

(assert (=> start!687926 m!7805094))

(declare-fun m!7805096 () Bool)

(assert (=> start!687926 m!7805096))

(declare-fun m!7805098 () Bool)

(assert (=> start!687926 m!7805098))

(declare-fun m!7805100 () Bool)

(assert (=> b!7076796 m!7805100))

(declare-fun m!7805102 () Bool)

(assert (=> b!7076796 m!7805102))

(declare-fun m!7805104 () Bool)

(assert (=> b!7076796 m!7805104))

(declare-fun m!7805106 () Bool)

(assert (=> b!7076796 m!7805106))

(declare-fun m!7805108 () Bool)

(assert (=> b!7076796 m!7805108))

(declare-fun m!7805110 () Bool)

(assert (=> b!7076796 m!7805110))

(declare-fun m!7805112 () Bool)

(assert (=> b!7076796 m!7805112))

(declare-fun m!7805114 () Bool)

(assert (=> b!7076796 m!7805114))

(declare-fun m!7805116 () Bool)

(assert (=> b!7076796 m!7805116))

(assert (=> b!7076796 m!7805084))

(declare-fun m!7805118 () Bool)

(assert (=> b!7076808 m!7805118))

(declare-fun m!7805120 () Bool)

(assert (=> b!7076802 m!7805120))

(assert (=> b!7076791 m!7805090))

(declare-fun m!7805122 () Bool)

(assert (=> b!7076791 m!7805122))

(declare-fun m!7805124 () Bool)

(assert (=> b!7076791 m!7805124))

(declare-fun m!7805126 () Bool)

(assert (=> b!7076791 m!7805126))

(declare-fun m!7805128 () Bool)

(assert (=> b!7076791 m!7805128))

(declare-fun m!7805130 () Bool)

(assert (=> b!7076794 m!7805130))

(declare-fun m!7805132 () Bool)

(assert (=> b!7076809 m!7805132))

(declare-fun m!7805134 () Bool)

(assert (=> b!7076806 m!7805134))

(declare-fun m!7805136 () Bool)

(assert (=> b!7076806 m!7805136))

(declare-fun m!7805138 () Bool)

(assert (=> b!7076806 m!7805138))

(declare-fun m!7805140 () Bool)

(assert (=> b!7076806 m!7805140))

(declare-fun m!7805142 () Bool)

(assert (=> b!7076806 m!7805142))

(declare-fun m!7805144 () Bool)

(assert (=> b!7076806 m!7805144))

(declare-fun m!7805146 () Bool)

(assert (=> b!7076810 m!7805146))

(assert (=> b!7076810 m!7805090))

(declare-fun m!7805148 () Bool)

(assert (=> b!7076795 m!7805148))

(declare-fun m!7805150 () Bool)

(assert (=> b!7076805 m!7805150))

(declare-fun m!7805152 () Bool)

(assert (=> b!7076805 m!7805152))

(declare-fun m!7805154 () Bool)

(assert (=> b!7076804 m!7805154))

(declare-fun m!7805156 () Bool)

(assert (=> setNonEmpty!50386 m!7805156))

(declare-fun m!7805158 () Bool)

(assert (=> b!7076807 m!7805158))

(declare-fun m!7805160 () Bool)

(assert (=> b!7076807 m!7805160))

(declare-fun m!7805162 () Bool)

(assert (=> b!7076807 m!7805162))

(declare-fun m!7805164 () Bool)

(assert (=> b!7076807 m!7805164))

(declare-fun m!7805166 () Bool)

(assert (=> b!7076807 m!7805166))

(push 1)

(assert (not b!7076801))

(assert (not b!7076807))

(assert (not b!7076809))

(assert (not b!7076798))

(assert (not start!687926))

(assert (not b!7076808))

(assert (not b!7076810))

(assert (not b!7076806))

(assert (not b!7076797))

(assert (not b!7076804))

(assert (not b!7076791))

(assert (not b!7076792))

(assert tp_is_empty!44561)

(assert (not b!7076796))

(assert (not b!7076795))

(assert (not b!7076794))

(assert (not b!7076800))

(assert (not b!7076805))

(assert (not b!7076799))

(assert (not setNonEmpty!50386))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!2213298 () Bool)

(declare-fun c!1320449 () Bool)

(declare-fun isEmpty!39929 (List!68531) Bool)

(assert (=> d!2213298 (= c!1320449 (isEmpty!39929 (t!382316 s!7408)))))

(declare-fun e!4254655 () Bool)

(assert (=> d!2213298 (= (matchZipper!3208 lt!2549471 (t!382316 s!7408)) e!4254655)))

(declare-fun b!7076887 () Bool)

(declare-fun nullableZipper!2714 ((Set Context!13328)) Bool)

(assert (=> b!7076887 (= e!4254655 (nullableZipper!2714 lt!2549471))))

(declare-fun b!7076888 () Bool)

(declare-fun head!14423 (List!68531) C!35606)

(declare-fun tail!13868 (List!68531) List!68531)

(assert (=> b!7076888 (= e!4254655 (matchZipper!3208 (derivationStepZipper!3118 lt!2549471 (head!14423 (t!382316 s!7408))) (tail!13868 (t!382316 s!7408))))))

(assert (= (and d!2213298 c!1320449) b!7076887))

(assert (= (and d!2213298 (not c!1320449)) b!7076888))

(declare-fun m!7805260 () Bool)

(assert (=> d!2213298 m!7805260))

(declare-fun m!7805262 () Bool)

(assert (=> b!7076887 m!7805262))

(declare-fun m!7805264 () Bool)

(assert (=> b!7076888 m!7805264))

(assert (=> b!7076888 m!7805264))

(declare-fun m!7805266 () Bool)

(assert (=> b!7076888 m!7805266))

(declare-fun m!7805268 () Bool)

(assert (=> b!7076888 m!7805268))

(assert (=> b!7076888 m!7805266))

(assert (=> b!7076888 m!7805268))

(declare-fun m!7805270 () Bool)

(assert (=> b!7076888 m!7805270))

(assert (=> b!7076792 d!2213298))

(declare-fun bm!643205 () Bool)

(declare-fun call!643212 () (Set Context!13328))

(declare-fun call!643213 () (Set Context!13328))

(assert (=> bm!643205 (= call!643212 call!643213)))

(declare-fun d!2213300 () Bool)

(declare-fun c!1320461 () Bool)

(assert (=> d!2213300 (= c!1320461 (and (is-ElementMatch!17668 (h!74854 (exprs!7164 lt!2549467))) (= (c!1320435 (h!74854 (exprs!7164 lt!2549467))) (h!74855 s!7408))))))

(declare-fun e!4254669 () (Set Context!13328))

(assert (=> d!2213300 (= (derivationStepZipperDown!2302 (h!74854 (exprs!7164 lt!2549467)) (Context!13329 (++!15811 lt!2549474 (exprs!7164 ct2!306))) (h!74855 s!7408)) e!4254669)))

(declare-fun b!7076911 () Bool)

(declare-fun e!4254672 () (Set Context!13328))

(declare-fun e!4254673 () (Set Context!13328))

(assert (=> b!7076911 (= e!4254672 e!4254673)))

(declare-fun c!1320464 () Bool)

(assert (=> b!7076911 (= c!1320464 (is-Concat!26513 (h!74854 (exprs!7164 lt!2549467))))))

(declare-fun c!1320462 () Bool)

(declare-fun bm!643206 () Bool)

(declare-fun call!643215 () List!68530)

(declare-fun call!643214 () (Set Context!13328))

(assert (=> bm!643206 (= call!643214 (derivationStepZipperDown!2302 (ite c!1320462 (regTwo!35849 (h!74854 (exprs!7164 lt!2549467))) (regOne!35848 (h!74854 (exprs!7164 lt!2549467)))) (ite c!1320462 (Context!13329 (++!15811 lt!2549474 (exprs!7164 ct2!306))) (Context!13329 call!643215)) (h!74855 s!7408)))))

(declare-fun b!7076912 () Bool)

(declare-fun c!1320463 () Bool)

(declare-fun e!4254671 () Bool)

(assert (=> b!7076912 (= c!1320463 e!4254671)))

(declare-fun res!2890615 () Bool)

(assert (=> b!7076912 (=> (not res!2890615) (not e!4254671))))

(assert (=> b!7076912 (= res!2890615 (is-Concat!26513 (h!74854 (exprs!7164 lt!2549467))))))

(declare-fun e!4254668 () (Set Context!13328))

(assert (=> b!7076912 (= e!4254668 e!4254672)))

(declare-fun b!7076913 () Bool)

(assert (=> b!7076913 (= e!4254668 (set.union call!643213 call!643214))))

(declare-fun b!7076914 () Bool)

(declare-fun e!4254670 () (Set Context!13328))

(assert (=> b!7076914 (= e!4254670 (as set.empty (Set Context!13328)))))

(declare-fun b!7076915 () Bool)

(declare-fun call!643210 () (Set Context!13328))

(assert (=> b!7076915 (= e!4254673 call!643210)))

(declare-fun bm!643207 () Bool)

(declare-fun call!643211 () List!68530)

(assert (=> bm!643207 (= call!643213 (derivationStepZipperDown!2302 (ite c!1320462 (regOne!35849 (h!74854 (exprs!7164 lt!2549467))) (ite c!1320463 (regTwo!35848 (h!74854 (exprs!7164 lt!2549467))) (ite c!1320464 (regOne!35848 (h!74854 (exprs!7164 lt!2549467))) (reg!17997 (h!74854 (exprs!7164 lt!2549467)))))) (ite (or c!1320462 c!1320463) (Context!13329 (++!15811 lt!2549474 (exprs!7164 ct2!306))) (Context!13329 call!643211)) (h!74855 s!7408)))))

(declare-fun bm!643208 () Bool)

(declare-fun $colon$colon!2671 (List!68530 Regex!17668) List!68530)

(assert (=> bm!643208 (= call!643215 ($colon$colon!2671 (exprs!7164 (Context!13329 (++!15811 lt!2549474 (exprs!7164 ct2!306)))) (ite (or c!1320463 c!1320464) (regTwo!35848 (h!74854 (exprs!7164 lt!2549467))) (h!74854 (exprs!7164 lt!2549467)))))))

(declare-fun b!7076916 () Bool)

(assert (=> b!7076916 (= e!4254672 (set.union call!643214 call!643212))))

(declare-fun bm!643209 () Bool)

(assert (=> bm!643209 (= call!643211 call!643215)))

(declare-fun b!7076917 () Bool)

(assert (=> b!7076917 (= e!4254669 e!4254668)))

(assert (=> b!7076917 (= c!1320462 (is-Union!17668 (h!74854 (exprs!7164 lt!2549467))))))

(declare-fun b!7076918 () Bool)

(assert (=> b!7076918 (= e!4254671 (nullable!7351 (regOne!35848 (h!74854 (exprs!7164 lt!2549467)))))))

(declare-fun bm!643210 () Bool)

(assert (=> bm!643210 (= call!643210 call!643212)))

(declare-fun b!7076919 () Bool)

(assert (=> b!7076919 (= e!4254670 call!643210)))

(declare-fun b!7076920 () Bool)

(declare-fun c!1320460 () Bool)

(assert (=> b!7076920 (= c!1320460 (is-Star!17668 (h!74854 (exprs!7164 lt!2549467))))))

(assert (=> b!7076920 (= e!4254673 e!4254670)))

(declare-fun b!7076921 () Bool)

(assert (=> b!7076921 (= e!4254669 (set.insert (Context!13329 (++!15811 lt!2549474 (exprs!7164 ct2!306))) (as set.empty (Set Context!13328))))))

(assert (= (and d!2213300 c!1320461) b!7076921))

(assert (= (and d!2213300 (not c!1320461)) b!7076917))

(assert (= (and b!7076917 c!1320462) b!7076913))

(assert (= (and b!7076917 (not c!1320462)) b!7076912))

(assert (= (and b!7076912 res!2890615) b!7076918))

(assert (= (and b!7076912 c!1320463) b!7076916))

(assert (= (and b!7076912 (not c!1320463)) b!7076911))

(assert (= (and b!7076911 c!1320464) b!7076915))

(assert (= (and b!7076911 (not c!1320464)) b!7076920))

(assert (= (and b!7076920 c!1320460) b!7076919))

(assert (= (and b!7076920 (not c!1320460)) b!7076914))

(assert (= (or b!7076915 b!7076919) bm!643209))

(assert (= (or b!7076915 b!7076919) bm!643210))

(assert (= (or b!7076916 bm!643210) bm!643205))

(assert (= (or b!7076916 bm!643209) bm!643208))

(assert (= (or b!7076913 bm!643205) bm!643207))

(assert (= (or b!7076913 b!7076916) bm!643206))

(declare-fun m!7805272 () Bool)

(assert (=> b!7076918 m!7805272))

(declare-fun m!7805274 () Bool)

(assert (=> b!7076921 m!7805274))

(declare-fun m!7805276 () Bool)

(assert (=> bm!643207 m!7805276))

(declare-fun m!7805278 () Bool)

(assert (=> bm!643208 m!7805278))

(declare-fun m!7805280 () Bool)

(assert (=> bm!643206 m!7805280))

(assert (=> b!7076792 d!2213300))

(declare-fun b!7076930 () Bool)

(declare-fun e!4254679 () List!68530)

(assert (=> b!7076930 (= e!4254679 (exprs!7164 ct2!306))))

(declare-fun b!7076932 () Bool)

(declare-fun res!2890621 () Bool)

(declare-fun e!4254678 () Bool)

(assert (=> b!7076932 (=> (not res!2890621) (not e!4254678))))

(declare-fun lt!2549585 () List!68530)

(declare-fun size!41234 (List!68530) Int)

(assert (=> b!7076932 (= res!2890621 (= (size!41234 lt!2549585) (+ (size!41234 lt!2549474) (size!41234 (exprs!7164 ct2!306)))))))

(declare-fun d!2213302 () Bool)

(assert (=> d!2213302 e!4254678))

(declare-fun res!2890620 () Bool)

(assert (=> d!2213302 (=> (not res!2890620) (not e!4254678))))

(declare-fun content!13832 (List!68530) (Set Regex!17668))

(assert (=> d!2213302 (= res!2890620 (= (content!13832 lt!2549585) (set.union (content!13832 lt!2549474) (content!13832 (exprs!7164 ct2!306)))))))

(assert (=> d!2213302 (= lt!2549585 e!4254679)))

(declare-fun c!1320467 () Bool)

(assert (=> d!2213302 (= c!1320467 (is-Nil!68406 lt!2549474))))

(assert (=> d!2213302 (= (++!15811 lt!2549474 (exprs!7164 ct2!306)) lt!2549585)))

(declare-fun b!7076933 () Bool)

(assert (=> b!7076933 (= e!4254678 (or (not (= (exprs!7164 ct2!306) Nil!68406)) (= lt!2549585 lt!2549474)))))

(declare-fun b!7076931 () Bool)

(assert (=> b!7076931 (= e!4254679 (Cons!68406 (h!74854 lt!2549474) (++!15811 (t!382315 lt!2549474) (exprs!7164 ct2!306))))))

(assert (= (and d!2213302 c!1320467) b!7076930))

(assert (= (and d!2213302 (not c!1320467)) b!7076931))

(assert (= (and d!2213302 res!2890620) b!7076932))

(assert (= (and b!7076932 res!2890621) b!7076933))

(declare-fun m!7805282 () Bool)

(assert (=> b!7076932 m!7805282))

(declare-fun m!7805284 () Bool)

(assert (=> b!7076932 m!7805284))

(declare-fun m!7805286 () Bool)

(assert (=> b!7076932 m!7805286))

(declare-fun m!7805288 () Bool)

(assert (=> d!2213302 m!7805288))

(declare-fun m!7805290 () Bool)

(assert (=> d!2213302 m!7805290))

(declare-fun m!7805292 () Bool)

(assert (=> d!2213302 m!7805292))

(declare-fun m!7805294 () Bool)

(assert (=> b!7076931 m!7805294))

(assert (=> b!7076792 d!2213302))

(declare-fun d!2213304 () Bool)

(declare-fun forall!16626 (List!68530 Int) Bool)

(assert (=> d!2213304 (forall!16626 (++!15811 lt!2549474 (exprs!7164 ct2!306)) lambda!426826)))

(declare-fun lt!2549588 () Unit!162047)

(declare-fun choose!54334 (List!68530 List!68530 Int) Unit!162047)

(assert (=> d!2213304 (= lt!2549588 (choose!54334 lt!2549474 (exprs!7164 ct2!306) lambda!426826))))

(assert (=> d!2213304 (forall!16626 lt!2549474 lambda!426826)))

(assert (=> d!2213304 (= (lemmaConcatPreservesForall!979 lt!2549474 (exprs!7164 ct2!306) lambda!426826) lt!2549588)))

(declare-fun bs!1881431 () Bool)

(assert (= bs!1881431 d!2213304))

(assert (=> bs!1881431 m!7805080))

(assert (=> bs!1881431 m!7805080))

(declare-fun m!7805296 () Bool)

(assert (=> bs!1881431 m!7805296))

(declare-fun m!7805298 () Bool)

(assert (=> bs!1881431 m!7805298))

(declare-fun m!7805300 () Bool)

(assert (=> bs!1881431 m!7805300))

(assert (=> b!7076792 d!2213304))

(declare-fun b!7076934 () Bool)

(declare-fun e!4254681 () List!68530)

(assert (=> b!7076934 (= e!4254681 (exprs!7164 ct2!306))))

(declare-fun b!7076936 () Bool)

(declare-fun res!2890623 () Bool)

(declare-fun e!4254680 () Bool)

(assert (=> b!7076936 (=> (not res!2890623) (not e!4254680))))

(declare-fun lt!2549589 () List!68530)

(assert (=> b!7076936 (= res!2890623 (= (size!41234 lt!2549589) (+ (size!41234 (exprs!7164 lt!2549467)) (size!41234 (exprs!7164 ct2!306)))))))

(declare-fun d!2213306 () Bool)

(assert (=> d!2213306 e!4254680))

(declare-fun res!2890622 () Bool)

(assert (=> d!2213306 (=> (not res!2890622) (not e!4254680))))

(assert (=> d!2213306 (= res!2890622 (= (content!13832 lt!2549589) (set.union (content!13832 (exprs!7164 lt!2549467)) (content!13832 (exprs!7164 ct2!306)))))))

(assert (=> d!2213306 (= lt!2549589 e!4254681)))

(declare-fun c!1320468 () Bool)

(assert (=> d!2213306 (= c!1320468 (is-Nil!68406 (exprs!7164 lt!2549467)))))

(assert (=> d!2213306 (= (++!15811 (exprs!7164 lt!2549467) (exprs!7164 ct2!306)) lt!2549589)))

(declare-fun b!7076937 () Bool)

(assert (=> b!7076937 (= e!4254680 (or (not (= (exprs!7164 ct2!306) Nil!68406)) (= lt!2549589 (exprs!7164 lt!2549467))))))

(declare-fun b!7076935 () Bool)

(assert (=> b!7076935 (= e!4254681 (Cons!68406 (h!74854 (exprs!7164 lt!2549467)) (++!15811 (t!382315 (exprs!7164 lt!2549467)) (exprs!7164 ct2!306))))))

(assert (= (and d!2213306 c!1320468) b!7076934))

(assert (= (and d!2213306 (not c!1320468)) b!7076935))

(assert (= (and d!2213306 res!2890622) b!7076936))

(assert (= (and b!7076936 res!2890623) b!7076937))

(declare-fun m!7805302 () Bool)

(assert (=> b!7076936 m!7805302))

(declare-fun m!7805304 () Bool)

(assert (=> b!7076936 m!7805304))

(assert (=> b!7076936 m!7805286))

(declare-fun m!7805306 () Bool)

(assert (=> d!2213306 m!7805306))

(declare-fun m!7805308 () Bool)

(assert (=> d!2213306 m!7805308))

(assert (=> d!2213306 m!7805292))

(declare-fun m!7805310 () Bool)

(assert (=> b!7076935 m!7805310))

(assert (=> b!7076800 d!2213306))

(declare-fun d!2213308 () Bool)

(assert (=> d!2213308 (forall!16626 (++!15811 (exprs!7164 lt!2549467) (exprs!7164 ct2!306)) lambda!426826)))

(declare-fun lt!2549590 () Unit!162047)

(assert (=> d!2213308 (= lt!2549590 (choose!54334 (exprs!7164 lt!2549467) (exprs!7164 ct2!306) lambda!426826))))

(assert (=> d!2213308 (forall!16626 (exprs!7164 lt!2549467) lambda!426826)))

(assert (=> d!2213308 (= (lemmaConcatPreservesForall!979 (exprs!7164 lt!2549467) (exprs!7164 ct2!306) lambda!426826) lt!2549590)))

(declare-fun bs!1881432 () Bool)

(assert (= bs!1881432 d!2213308))

(assert (=> bs!1881432 m!7805088))

(assert (=> bs!1881432 m!7805088))

(declare-fun m!7805312 () Bool)

(assert (=> bs!1881432 m!7805312))

(declare-fun m!7805314 () Bool)

(assert (=> bs!1881432 m!7805314))

(declare-fun m!7805316 () Bool)

(assert (=> bs!1881432 m!7805316))

(assert (=> b!7076800 d!2213308))

(declare-fun d!2213310 () Bool)

(declare-fun e!4254684 () Bool)

(assert (=> d!2213310 e!4254684))

(declare-fun res!2890626 () Bool)

(assert (=> d!2213310 (=> (not res!2890626) (not e!4254684))))

(declare-fun lt!2549593 () Context!13328)

(declare-fun dynLambda!27856 (Int Context!13328) Context!13328)

(assert (=> d!2213310 (= res!2890626 (= lt!2549475 (dynLambda!27856 lambda!426825 lt!2549593)))))

(declare-fun choose!54335 ((Set Context!13328) Int Context!13328) Context!13328)

(assert (=> d!2213310 (= lt!2549593 (choose!54335 z1!570 lambda!426825 lt!2549475))))

(declare-fun map!16017 ((Set Context!13328) Int) (Set Context!13328))

(assert (=> d!2213310 (set.member lt!2549475 (map!16017 z1!570 lambda!426825))))

(assert (=> d!2213310 (= (mapPost2!497 z1!570 lambda!426825 lt!2549475) lt!2549593)))

(declare-fun b!7076941 () Bool)

(assert (=> b!7076941 (= e!4254684 (set.member lt!2549593 z1!570))))

(assert (= (and d!2213310 res!2890626) b!7076941))

(declare-fun b_lambda!270313 () Bool)

(assert (=> (not b_lambda!270313) (not d!2213310)))

(declare-fun m!7805318 () Bool)

(assert (=> d!2213310 m!7805318))

(declare-fun m!7805320 () Bool)

(assert (=> d!2213310 m!7805320))

(declare-fun m!7805322 () Bool)

(assert (=> d!2213310 m!7805322))

(declare-fun m!7805324 () Bool)

(assert (=> d!2213310 m!7805324))

(declare-fun m!7805326 () Bool)

(assert (=> b!7076941 m!7805326))

(assert (=> b!7076800 d!2213310))

(declare-fun d!2213312 () Bool)

(declare-fun choose!54336 ((Set Context!13328) Int) (Set Context!13328))

(assert (=> d!2213312 (= (flatMap!2594 lt!2549490 lambda!426827) (choose!54336 lt!2549490 lambda!426827))))

(declare-fun bs!1881433 () Bool)

(assert (= bs!1881433 d!2213312))

(declare-fun m!7805328 () Bool)

(assert (=> bs!1881433 m!7805328))

(assert (=> b!7076791 d!2213312))

(declare-fun bs!1881434 () Bool)

(declare-fun d!2213314 () Bool)

(assert (= bs!1881434 (and d!2213314 b!7076791)))

(declare-fun lambda!426856 () Int)

(assert (=> bs!1881434 (= lambda!426856 lambda!426827)))

(assert (=> d!2213314 true))

(assert (=> d!2213314 (= (derivationStepZipper!3118 lt!2549490 (h!74855 s!7408)) (flatMap!2594 lt!2549490 lambda!426856))))

(declare-fun bs!1881435 () Bool)

(assert (= bs!1881435 d!2213314))

(declare-fun m!7805330 () Bool)

(assert (=> bs!1881435 m!7805330))

(assert (=> b!7076791 d!2213314))

(assert (=> b!7076791 d!2213308))

(declare-fun d!2213316 () Bool)

(declare-fun dynLambda!27857 (Int Context!13328) (Set Context!13328))

(assert (=> d!2213316 (= (flatMap!2594 lt!2549490 lambda!426827) (dynLambda!27857 lambda!426827 lt!2549489))))

(declare-fun lt!2549596 () Unit!162047)

(declare-fun choose!54337 ((Set Context!13328) Context!13328 Int) Unit!162047)

(assert (=> d!2213316 (= lt!2549596 (choose!54337 lt!2549490 lt!2549489 lambda!426827))))

(assert (=> d!2213316 (= lt!2549490 (set.insert lt!2549489 (as set.empty (Set Context!13328))))))

(assert (=> d!2213316 (= (lemmaFlatMapOnSingletonSet!2103 lt!2549490 lt!2549489 lambda!426827) lt!2549596)))

(declare-fun b_lambda!270315 () Bool)

(assert (=> (not b_lambda!270315) (not d!2213316)))

(declare-fun bs!1881436 () Bool)

(assert (= bs!1881436 d!2213316))

(assert (=> bs!1881436 m!7805126))

(declare-fun m!7805332 () Bool)

(assert (=> bs!1881436 m!7805332))

(declare-fun m!7805334 () Bool)

(assert (=> bs!1881436 m!7805334))

(assert (=> bs!1881436 m!7805146))

(assert (=> b!7076791 d!2213316))

(declare-fun call!643218 () (Set Context!13328))

(declare-fun e!4254692 () (Set Context!13328))

(declare-fun b!7076954 () Bool)

(assert (=> b!7076954 (= e!4254692 (set.union call!643218 (derivationStepZipperUp!2252 (Context!13329 (t!382315 (exprs!7164 lt!2549489))) (h!74855 s!7408))))))

(declare-fun d!2213320 () Bool)

(declare-fun c!1320476 () Bool)

(declare-fun e!4254691 () Bool)

(assert (=> d!2213320 (= c!1320476 e!4254691)))

(declare-fun res!2890629 () Bool)

(assert (=> d!2213320 (=> (not res!2890629) (not e!4254691))))

(assert (=> d!2213320 (= res!2890629 (is-Cons!68406 (exprs!7164 lt!2549489)))))

(assert (=> d!2213320 (= (derivationStepZipperUp!2252 lt!2549489 (h!74855 s!7408)) e!4254692)))

(declare-fun b!7076955 () Bool)

(declare-fun e!4254693 () (Set Context!13328))

(assert (=> b!7076955 (= e!4254693 call!643218)))

(declare-fun bm!643213 () Bool)

(assert (=> bm!643213 (= call!643218 (derivationStepZipperDown!2302 (h!74854 (exprs!7164 lt!2549489)) (Context!13329 (t!382315 (exprs!7164 lt!2549489))) (h!74855 s!7408)))))

(declare-fun b!7076956 () Bool)

(assert (=> b!7076956 (= e!4254692 e!4254693)))

(declare-fun c!1320475 () Bool)

(assert (=> b!7076956 (= c!1320475 (is-Cons!68406 (exprs!7164 lt!2549489)))))

(declare-fun b!7076957 () Bool)

(assert (=> b!7076957 (= e!4254691 (nullable!7351 (h!74854 (exprs!7164 lt!2549489))))))

(declare-fun b!7076958 () Bool)

(assert (=> b!7076958 (= e!4254693 (as set.empty (Set Context!13328)))))

(assert (= (and d!2213320 res!2890629) b!7076957))

(assert (= (and d!2213320 c!1320476) b!7076954))

(assert (= (and d!2213320 (not c!1320476)) b!7076956))

(assert (= (and b!7076956 c!1320475) b!7076955))

(assert (= (and b!7076956 (not c!1320475)) b!7076958))

(assert (= (or b!7076954 b!7076955) bm!643213))

(declare-fun m!7805340 () Bool)

(assert (=> b!7076954 m!7805340))

(declare-fun m!7805342 () Bool)

(assert (=> bm!643213 m!7805342))

(declare-fun m!7805344 () Bool)

(assert (=> b!7076957 m!7805344))

(assert (=> b!7076791 d!2213320))

(declare-fun d!2213326 () Bool)

(declare-fun c!1320477 () Bool)

(assert (=> d!2213326 (= c!1320477 (isEmpty!39929 s!7408))))

(declare-fun e!4254694 () Bool)

(assert (=> d!2213326 (= (matchZipper!3208 lt!2549478 s!7408) e!4254694)))

(declare-fun b!7076959 () Bool)

(assert (=> b!7076959 (= e!4254694 (nullableZipper!2714 lt!2549478))))

(declare-fun b!7076960 () Bool)

(assert (=> b!7076960 (= e!4254694 (matchZipper!3208 (derivationStepZipper!3118 lt!2549478 (head!14423 s!7408)) (tail!13868 s!7408)))))

(assert (= (and d!2213326 c!1320477) b!7076959))

(assert (= (and d!2213326 (not c!1320477)) b!7076960))

(declare-fun m!7805346 () Bool)

(assert (=> d!2213326 m!7805346))

(declare-fun m!7805348 () Bool)

(assert (=> b!7076959 m!7805348))

(declare-fun m!7805350 () Bool)

(assert (=> b!7076960 m!7805350))

(assert (=> b!7076960 m!7805350))

(declare-fun m!7805352 () Bool)

(assert (=> b!7076960 m!7805352))

(declare-fun m!7805354 () Bool)

(assert (=> b!7076960 m!7805354))

(assert (=> b!7076960 m!7805352))

(assert (=> b!7076960 m!7805354))

(declare-fun m!7805356 () Bool)

(assert (=> b!7076960 m!7805356))

(assert (=> start!687926 d!2213326))

(declare-fun bs!1881440 () Bool)

(declare-fun d!2213328 () Bool)

(assert (= bs!1881440 (and d!2213328 b!7076800)))

(declare-fun lambda!426864 () Int)

(assert (=> bs!1881440 (= lambda!426864 lambda!426825)))

(assert (=> d!2213328 true))

(assert (=> d!2213328 (= (appendTo!789 z1!570 ct2!306) (map!16017 z1!570 lambda!426864))))

(declare-fun bs!1881441 () Bool)

(assert (= bs!1881441 d!2213328))

(declare-fun m!7805358 () Bool)

(assert (=> bs!1881441 m!7805358))

(assert (=> start!687926 d!2213328))

(declare-fun bs!1881442 () Bool)

(declare-fun d!2213332 () Bool)

(assert (= bs!1881442 (and d!2213332 b!7076800)))

(declare-fun lambda!426867 () Int)

(assert (=> bs!1881442 (= lambda!426867 lambda!426826)))

(assert (=> d!2213332 (= (inv!87030 ct2!306) (forall!16626 (exprs!7164 ct2!306) lambda!426867))))

(declare-fun bs!1881443 () Bool)

(assert (= bs!1881443 d!2213332))

(declare-fun m!7805360 () Bool)

(assert (=> bs!1881443 m!7805360))

(assert (=> start!687926 d!2213332))

(assert (=> b!7076810 d!2213308))

(declare-fun d!2213334 () Bool)

(declare-fun c!1320479 () Bool)

(assert (=> d!2213334 (= c!1320479 (isEmpty!39929 lt!2549487))))

(declare-fun e!4254701 () Bool)

(assert (=> d!2213334 (= (matchZipper!3208 lt!2549493 lt!2549487) e!4254701)))

(declare-fun b!7076969 () Bool)

(assert (=> b!7076969 (= e!4254701 (nullableZipper!2714 lt!2549493))))

(declare-fun b!7076970 () Bool)

(assert (=> b!7076970 (= e!4254701 (matchZipper!3208 (derivationStepZipper!3118 lt!2549493 (head!14423 lt!2549487)) (tail!13868 lt!2549487)))))

(assert (= (and d!2213334 c!1320479) b!7076969))

(assert (= (and d!2213334 (not c!1320479)) b!7076970))

(declare-fun m!7805362 () Bool)

(assert (=> d!2213334 m!7805362))

(declare-fun m!7805364 () Bool)

(assert (=> b!7076969 m!7805364))

(declare-fun m!7805366 () Bool)

(assert (=> b!7076970 m!7805366))

(assert (=> b!7076970 m!7805366))

(declare-fun m!7805368 () Bool)

(assert (=> b!7076970 m!7805368))

(declare-fun m!7805370 () Bool)

(assert (=> b!7076970 m!7805370))

(assert (=> b!7076970 m!7805368))

(assert (=> b!7076970 m!7805370))

(declare-fun m!7805372 () Bool)

(assert (=> b!7076970 m!7805372))

(assert (=> b!7076808 d!2213334))

(declare-fun d!2213336 () Bool)

(assert (=> d!2213336 (= (isEmpty!39927 (exprs!7164 lt!2549467)) (is-Nil!68406 (exprs!7164 lt!2549467)))))

(assert (=> b!7076809 d!2213336))

(declare-fun d!2213338 () Bool)

(assert (=> d!2213338 (= (flatMap!2594 lt!2549493 lambda!426827) (choose!54336 lt!2549493 lambda!426827))))

(declare-fun bs!1881444 () Bool)

(assert (= bs!1881444 d!2213338))

(declare-fun m!7805374 () Bool)

(assert (=> bs!1881444 m!7805374))

(assert (=> b!7076807 d!2213338))

(declare-fun call!643219 () (Set Context!13328))

(declare-fun b!7076971 () Bool)

(declare-fun e!4254703 () (Set Context!13328))

(assert (=> b!7076971 (= e!4254703 (set.union call!643219 (derivationStepZipperUp!2252 (Context!13329 (t!382315 (exprs!7164 lt!2549467))) (h!74855 s!7408))))))

(declare-fun d!2213340 () Bool)

(declare-fun c!1320481 () Bool)

(declare-fun e!4254702 () Bool)

(assert (=> d!2213340 (= c!1320481 e!4254702)))

(declare-fun res!2890638 () Bool)

(assert (=> d!2213340 (=> (not res!2890638) (not e!4254702))))

(assert (=> d!2213340 (= res!2890638 (is-Cons!68406 (exprs!7164 lt!2549467)))))

(assert (=> d!2213340 (= (derivationStepZipperUp!2252 lt!2549467 (h!74855 s!7408)) e!4254703)))

(declare-fun b!7076972 () Bool)

(declare-fun e!4254704 () (Set Context!13328))

(assert (=> b!7076972 (= e!4254704 call!643219)))

(declare-fun bm!643214 () Bool)

(assert (=> bm!643214 (= call!643219 (derivationStepZipperDown!2302 (h!74854 (exprs!7164 lt!2549467)) (Context!13329 (t!382315 (exprs!7164 lt!2549467))) (h!74855 s!7408)))))

(declare-fun b!7076973 () Bool)

(assert (=> b!7076973 (= e!4254703 e!4254704)))

(declare-fun c!1320480 () Bool)

(assert (=> b!7076973 (= c!1320480 (is-Cons!68406 (exprs!7164 lt!2549467)))))

(declare-fun b!7076974 () Bool)

(assert (=> b!7076974 (= e!4254702 (nullable!7351 (h!74854 (exprs!7164 lt!2549467))))))

(declare-fun b!7076975 () Bool)

(assert (=> b!7076975 (= e!4254704 (as set.empty (Set Context!13328)))))

(assert (= (and d!2213340 res!2890638) b!7076974))

(assert (= (and d!2213340 c!1320481) b!7076971))

(assert (= (and d!2213340 (not c!1320481)) b!7076973))

(assert (= (and b!7076973 c!1320480) b!7076972))

(assert (= (and b!7076973 (not c!1320480)) b!7076975))

(assert (= (or b!7076971 b!7076972) bm!643214))

(declare-fun m!7805376 () Bool)

(assert (=> b!7076971 m!7805376))

(declare-fun m!7805378 () Bool)

(assert (=> bm!643214 m!7805378))

(assert (=> b!7076974 m!7805150))

(assert (=> b!7076807 d!2213340))

(declare-fun d!2213342 () Bool)

(assert (=> d!2213342 (= (flatMap!2594 lt!2549493 lambda!426827) (dynLambda!27857 lambda!426827 lt!2549467))))

(declare-fun lt!2549601 () Unit!162047)

(assert (=> d!2213342 (= lt!2549601 (choose!54337 lt!2549493 lt!2549467 lambda!426827))))

(assert (=> d!2213342 (= lt!2549493 (set.insert lt!2549467 (as set.empty (Set Context!13328))))))

(assert (=> d!2213342 (= (lemmaFlatMapOnSingletonSet!2103 lt!2549493 lt!2549467 lambda!426827) lt!2549601)))

(declare-fun b_lambda!270317 () Bool)

(assert (=> (not b_lambda!270317) (not d!2213342)))

(declare-fun bs!1881445 () Bool)

(assert (= bs!1881445 d!2213342))

(assert (=> bs!1881445 m!7805166))

(declare-fun m!7805380 () Bool)

(assert (=> bs!1881445 m!7805380))

(declare-fun m!7805382 () Bool)

(assert (=> bs!1881445 m!7805382))

(assert (=> bs!1881445 m!7805158))

(assert (=> b!7076807 d!2213342))

(declare-fun bs!1881446 () Bool)

(declare-fun d!2213344 () Bool)

(assert (= bs!1881446 (and d!2213344 b!7076791)))

(declare-fun lambda!426868 () Int)

(assert (=> bs!1881446 (= lambda!426868 lambda!426827)))

(declare-fun bs!1881447 () Bool)

(assert (= bs!1881447 (and d!2213344 d!2213314)))

(assert (=> bs!1881447 (= lambda!426868 lambda!426856)))

(assert (=> d!2213344 true))

(assert (=> d!2213344 (= (derivationStepZipper!3118 lt!2549493 (h!74855 s!7408)) (flatMap!2594 lt!2549493 lambda!426868))))

(declare-fun bs!1881448 () Bool)

(assert (= bs!1881448 d!2213344))

(declare-fun m!7805384 () Bool)

(assert (=> bs!1881448 m!7805384))

(assert (=> b!7076807 d!2213344))

(declare-fun b!7076988 () Bool)

(declare-fun e!4254713 () List!68531)

(assert (=> b!7076988 (= e!4254713 (_2!37450 lt!2549480))))

(declare-fun b!7076990 () Bool)

(declare-fun res!2890648 () Bool)

(declare-fun e!4254712 () Bool)

(assert (=> b!7076990 (=> (not res!2890648) (not e!4254712))))

(declare-fun lt!2549605 () List!68531)

(declare-fun size!41235 (List!68531) Int)

(assert (=> b!7076990 (= res!2890648 (= (size!41235 lt!2549605) (+ (size!41235 (_1!37450 lt!2549480)) (size!41235 (_2!37450 lt!2549480)))))))

(declare-fun b!7076991 () Bool)

(assert (=> b!7076991 (= e!4254712 (or (not (= (_2!37450 lt!2549480) Nil!68407)) (= lt!2549605 (_1!37450 lt!2549480))))))

(declare-fun d!2213346 () Bool)

(assert (=> d!2213346 e!4254712))

(declare-fun res!2890647 () Bool)

(assert (=> d!2213346 (=> (not res!2890647) (not e!4254712))))

(declare-fun content!13833 (List!68531) (Set C!35606))

(assert (=> d!2213346 (= res!2890647 (= (content!13833 lt!2549605) (set.union (content!13833 (_1!37450 lt!2549480)) (content!13833 (_2!37450 lt!2549480)))))))

(assert (=> d!2213346 (= lt!2549605 e!4254713)))

(declare-fun c!1320484 () Bool)

(assert (=> d!2213346 (= c!1320484 (is-Nil!68407 (_1!37450 lt!2549480)))))

(assert (=> d!2213346 (= (++!15812 (_1!37450 lt!2549480) (_2!37450 lt!2549480)) lt!2549605)))

(declare-fun b!7076989 () Bool)

(assert (=> b!7076989 (= e!4254713 (Cons!68407 (h!74855 (_1!37450 lt!2549480)) (++!15812 (t!382316 (_1!37450 lt!2549480)) (_2!37450 lt!2549480))))))

(assert (= (and d!2213346 c!1320484) b!7076988))

(assert (= (and d!2213346 (not c!1320484)) b!7076989))

(assert (= (and d!2213346 res!2890647) b!7076990))

(assert (= (and b!7076990 res!2890648) b!7076991))

(declare-fun m!7805400 () Bool)

(assert (=> b!7076990 m!7805400))

(declare-fun m!7805402 () Bool)

(assert (=> b!7076990 m!7805402))

(declare-fun m!7805404 () Bool)

(assert (=> b!7076990 m!7805404))

(declare-fun m!7805406 () Bool)

(assert (=> d!2213346 m!7805406))

(declare-fun m!7805408 () Bool)

(assert (=> d!2213346 m!7805408))

(declare-fun m!7805410 () Bool)

(assert (=> d!2213346 m!7805410))

(declare-fun m!7805412 () Bool)

(assert (=> b!7076989 m!7805412))

(assert (=> b!7076798 d!2213346))

(declare-fun bs!1881449 () Bool)

(declare-fun d!2213352 () Bool)

(assert (= bs!1881449 (and d!2213352 b!7076800)))

(declare-fun lambda!426869 () Int)

(assert (=> bs!1881449 (= lambda!426869 lambda!426825)))

(declare-fun bs!1881450 () Bool)

(assert (= bs!1881450 (and d!2213352 d!2213328)))

(assert (=> bs!1881450 (= lambda!426869 lambda!426864)))

(assert (=> d!2213352 true))

(assert (=> d!2213352 (= (appendTo!789 lt!2549472 ct2!306) (map!16017 lt!2549472 lambda!426869))))

(declare-fun bs!1881451 () Bool)

(assert (= bs!1881451 d!2213352))

(declare-fun m!7805414 () Bool)

(assert (=> bs!1881451 m!7805414))

(assert (=> b!7076796 d!2213352))

(declare-fun d!2213354 () Bool)

(declare-fun c!1320485 () Bool)

(assert (=> d!2213354 (= c!1320485 (isEmpty!39929 (_1!37450 lt!2549480)))))

(declare-fun e!4254714 () Bool)

(assert (=> d!2213354 (= (matchZipper!3208 lt!2549472 (_1!37450 lt!2549480)) e!4254714)))

(declare-fun b!7076992 () Bool)

(assert (=> b!7076992 (= e!4254714 (nullableZipper!2714 lt!2549472))))

(declare-fun b!7076993 () Bool)

(assert (=> b!7076993 (= e!4254714 (matchZipper!3208 (derivationStepZipper!3118 lt!2549472 (head!14423 (_1!37450 lt!2549480))) (tail!13868 (_1!37450 lt!2549480))))))

(assert (= (and d!2213354 c!1320485) b!7076992))

(assert (= (and d!2213354 (not c!1320485)) b!7076993))

(declare-fun m!7805416 () Bool)

(assert (=> d!2213354 m!7805416))

(declare-fun m!7805418 () Bool)

(assert (=> b!7076992 m!7805418))

(declare-fun m!7805420 () Bool)

(assert (=> b!7076993 m!7805420))

(assert (=> b!7076993 m!7805420))

(declare-fun m!7805422 () Bool)

(assert (=> b!7076993 m!7805422))

(declare-fun m!7805424 () Bool)

(assert (=> b!7076993 m!7805424))

(assert (=> b!7076993 m!7805422))

(assert (=> b!7076993 m!7805424))

(declare-fun m!7805426 () Bool)

(assert (=> b!7076993 m!7805426))

(assert (=> b!7076796 d!2213354))

(declare-fun d!2213356 () Bool)

(declare-fun isEmpty!39930 (Option!16979) Bool)

(assert (=> d!2213356 (= (isDefined!13680 lt!2549477) (not (isEmpty!39930 lt!2549477)))))

(declare-fun bs!1881453 () Bool)

(assert (= bs!1881453 d!2213356))

(declare-fun m!7805434 () Bool)

(assert (=> bs!1881453 m!7805434))

(assert (=> b!7076796 d!2213356))

(declare-fun bs!1881454 () Bool)

(declare-fun d!2213360 () Bool)

(assert (= bs!1881454 (and d!2213360 b!7076800)))

(declare-fun lambda!426872 () Int)

(assert (=> bs!1881454 (= lambda!426872 lambda!426826)))

(declare-fun bs!1881455 () Bool)

(assert (= bs!1881455 (and d!2213360 d!2213332)))

(assert (=> bs!1881455 (= lambda!426872 lambda!426867)))

(assert (=> d!2213360 (= (derivationStepZipperDown!2302 (h!74854 (exprs!7164 lt!2549467)) (Context!13329 (++!15811 (exprs!7164 lt!2549481) (exprs!7164 ct2!306))) (h!74855 s!7408)) (appendTo!789 (derivationStepZipperDown!2302 (h!74854 (exprs!7164 lt!2549467)) lt!2549481 (h!74855 s!7408)) ct2!306))))

(declare-fun lt!2549614 () Unit!162047)

(assert (=> d!2213360 (= lt!2549614 (lemmaConcatPreservesForall!979 (exprs!7164 lt!2549481) (exprs!7164 ct2!306) lambda!426872))))

(declare-fun lt!2549613 () Unit!162047)

(declare-fun choose!54338 (Context!13328 Regex!17668 C!35606 Context!13328) Unit!162047)

(assert (=> d!2213360 (= lt!2549613 (choose!54338 lt!2549481 (h!74854 (exprs!7164 lt!2549467)) (h!74855 s!7408) ct2!306))))

(declare-fun validRegex!8982 (Regex!17668) Bool)

(assert (=> d!2213360 (validRegex!8982 (h!74854 (exprs!7164 lt!2549467)))))

(assert (=> d!2213360 (= (lemmaDerivativeStepZipperDownConcatCtxSameAsAppendTo!135 lt!2549481 (h!74854 (exprs!7164 lt!2549467)) (h!74855 s!7408) ct2!306) lt!2549613)))

(declare-fun bs!1881456 () Bool)

(assert (= bs!1881456 d!2213360))

(declare-fun m!7805442 () Bool)

(assert (=> bs!1881456 m!7805442))

(declare-fun m!7805446 () Bool)

(assert (=> bs!1881456 m!7805446))

(assert (=> bs!1881456 m!7805108))

(declare-fun m!7805448 () Bool)

(assert (=> bs!1881456 m!7805448))

(declare-fun m!7805450 () Bool)

(assert (=> bs!1881456 m!7805450))

(declare-fun m!7805452 () Bool)

(assert (=> bs!1881456 m!7805452))

(declare-fun m!7805454 () Bool)

(assert (=> bs!1881456 m!7805454))

(assert (=> bs!1881456 m!7805108))

(assert (=> b!7076796 d!2213360))

(declare-fun d!2213364 () Bool)

(assert (=> d!2213364 (isDefined!13680 (findConcatSeparationZippers!495 lt!2549472 (set.insert ct2!306 (as set.empty (Set Context!13328))) Nil!68407 (t!382316 s!7408) (t!382316 s!7408)))))

(declare-fun lt!2549617 () Unit!162047)

(declare-fun choose!54339 ((Set Context!13328) Context!13328 List!68531) Unit!162047)

(assert (=> d!2213364 (= lt!2549617 (choose!54339 lt!2549472 ct2!306 (t!382316 s!7408)))))

(assert (=> d!2213364 (matchZipper!3208 (appendTo!789 lt!2549472 ct2!306) (t!382316 s!7408))))

(assert (=> d!2213364 (= (lemmaConcatZipperMatchesStringThenFindConcatDefined!483 lt!2549472 ct2!306 (t!382316 s!7408)) lt!2549617)))

(declare-fun bs!1881457 () Bool)

(assert (= bs!1881457 d!2213364))

(assert (=> bs!1881457 m!7805114))

(declare-fun m!7805468 () Bool)

(assert (=> bs!1881457 m!7805468))

(assert (=> bs!1881457 m!7805102))

(declare-fun m!7805470 () Bool)

(assert (=> bs!1881457 m!7805470))

(declare-fun m!7805472 () Bool)

(assert (=> bs!1881457 m!7805472))

(assert (=> bs!1881457 m!7805470))

(declare-fun m!7805474 () Bool)

(assert (=> bs!1881457 m!7805474))

(assert (=> bs!1881457 m!7805114))

(assert (=> bs!1881457 m!7805102))

(assert (=> b!7076796 d!2213364))

(declare-fun bm!643215 () Bool)

(declare-fun call!643222 () (Set Context!13328))

(declare-fun call!643223 () (Set Context!13328))

(assert (=> bm!643215 (= call!643222 call!643223)))

(declare-fun d!2213368 () Bool)

(declare-fun c!1320492 () Bool)

(assert (=> d!2213368 (= c!1320492 (and (is-ElementMatch!17668 (h!74854 (exprs!7164 lt!2549467))) (= (c!1320435 (h!74854 (exprs!7164 lt!2549467))) (h!74855 s!7408))))))

(declare-fun e!4254720 () (Set Context!13328))

(assert (=> d!2213368 (= (derivationStepZipperDown!2302 (h!74854 (exprs!7164 lt!2549467)) lt!2549481 (h!74855 s!7408)) e!4254720)))

(declare-fun b!7077002 () Bool)

(declare-fun e!4254723 () (Set Context!13328))

(declare-fun e!4254724 () (Set Context!13328))

(assert (=> b!7077002 (= e!4254723 e!4254724)))

(declare-fun c!1320495 () Bool)

(assert (=> b!7077002 (= c!1320495 (is-Concat!26513 (h!74854 (exprs!7164 lt!2549467))))))

(declare-fun bm!643216 () Bool)

(declare-fun c!1320493 () Bool)

(declare-fun call!643225 () List!68530)

(declare-fun call!643224 () (Set Context!13328))

(assert (=> bm!643216 (= call!643224 (derivationStepZipperDown!2302 (ite c!1320493 (regTwo!35849 (h!74854 (exprs!7164 lt!2549467))) (regOne!35848 (h!74854 (exprs!7164 lt!2549467)))) (ite c!1320493 lt!2549481 (Context!13329 call!643225)) (h!74855 s!7408)))))

(declare-fun b!7077003 () Bool)

(declare-fun c!1320494 () Bool)

(declare-fun e!4254722 () Bool)

(assert (=> b!7077003 (= c!1320494 e!4254722)))

(declare-fun res!2890649 () Bool)

(assert (=> b!7077003 (=> (not res!2890649) (not e!4254722))))

(assert (=> b!7077003 (= res!2890649 (is-Concat!26513 (h!74854 (exprs!7164 lt!2549467))))))

(declare-fun e!4254719 () (Set Context!13328))

(assert (=> b!7077003 (= e!4254719 e!4254723)))

(declare-fun b!7077004 () Bool)

(assert (=> b!7077004 (= e!4254719 (set.union call!643223 call!643224))))

(declare-fun b!7077005 () Bool)

(declare-fun e!4254721 () (Set Context!13328))

(assert (=> b!7077005 (= e!4254721 (as set.empty (Set Context!13328)))))

(declare-fun b!7077006 () Bool)

(declare-fun call!643220 () (Set Context!13328))

(assert (=> b!7077006 (= e!4254724 call!643220)))

(declare-fun call!643221 () List!68530)

(declare-fun bm!643217 () Bool)

(assert (=> bm!643217 (= call!643223 (derivationStepZipperDown!2302 (ite c!1320493 (regOne!35849 (h!74854 (exprs!7164 lt!2549467))) (ite c!1320494 (regTwo!35848 (h!74854 (exprs!7164 lt!2549467))) (ite c!1320495 (regOne!35848 (h!74854 (exprs!7164 lt!2549467))) (reg!17997 (h!74854 (exprs!7164 lt!2549467)))))) (ite (or c!1320493 c!1320494) lt!2549481 (Context!13329 call!643221)) (h!74855 s!7408)))))

(declare-fun bm!643218 () Bool)

(assert (=> bm!643218 (= call!643225 ($colon$colon!2671 (exprs!7164 lt!2549481) (ite (or c!1320494 c!1320495) (regTwo!35848 (h!74854 (exprs!7164 lt!2549467))) (h!74854 (exprs!7164 lt!2549467)))))))

(declare-fun b!7077007 () Bool)

(assert (=> b!7077007 (= e!4254723 (set.union call!643224 call!643222))))

(declare-fun bm!643219 () Bool)

(assert (=> bm!643219 (= call!643221 call!643225)))

(declare-fun b!7077008 () Bool)

(assert (=> b!7077008 (= e!4254720 e!4254719)))

(assert (=> b!7077008 (= c!1320493 (is-Union!17668 (h!74854 (exprs!7164 lt!2549467))))))

(declare-fun b!7077009 () Bool)

(assert (=> b!7077009 (= e!4254722 (nullable!7351 (regOne!35848 (h!74854 (exprs!7164 lt!2549467)))))))

(declare-fun bm!643220 () Bool)

(assert (=> bm!643220 (= call!643220 call!643222)))

(declare-fun b!7077010 () Bool)

(assert (=> b!7077010 (= e!4254721 call!643220)))

(declare-fun b!7077011 () Bool)

(declare-fun c!1320491 () Bool)

(assert (=> b!7077011 (= c!1320491 (is-Star!17668 (h!74854 (exprs!7164 lt!2549467))))))

(assert (=> b!7077011 (= e!4254724 e!4254721)))

(declare-fun b!7077012 () Bool)

(assert (=> b!7077012 (= e!4254720 (set.insert lt!2549481 (as set.empty (Set Context!13328))))))

(assert (= (and d!2213368 c!1320492) b!7077012))

(assert (= (and d!2213368 (not c!1320492)) b!7077008))

(assert (= (and b!7077008 c!1320493) b!7077004))

(assert (= (and b!7077008 (not c!1320493)) b!7077003))

(assert (= (and b!7077003 res!2890649) b!7077009))

(assert (= (and b!7077003 c!1320494) b!7077007))

(assert (= (and b!7077003 (not c!1320494)) b!7077002))

(assert (= (and b!7077002 c!1320495) b!7077006))

(assert (= (and b!7077002 (not c!1320495)) b!7077011))

(assert (= (and b!7077011 c!1320491) b!7077010))

(assert (= (and b!7077011 (not c!1320491)) b!7077005))

(assert (= (or b!7077006 b!7077010) bm!643219))

(assert (= (or b!7077006 b!7077010) bm!643220))

(assert (= (or b!7077007 bm!643220) bm!643215))

(assert (= (or b!7077007 bm!643219) bm!643218))

(assert (= (or b!7077004 bm!643215) bm!643217))

(assert (= (or b!7077004 b!7077007) bm!643216))

(assert (=> b!7077009 m!7805272))

(declare-fun m!7805476 () Bool)

(assert (=> b!7077012 m!7805476))

(declare-fun m!7805478 () Bool)

(assert (=> bm!643217 m!7805478))

(declare-fun m!7805480 () Bool)

(assert (=> bm!643218 m!7805480))

(declare-fun m!7805482 () Bool)

(assert (=> bm!643216 m!7805482))

(assert (=> b!7076796 d!2213368))

(declare-fun b!7077064 () Bool)

(declare-fun res!2890665 () Bool)

(declare-fun e!4254754 () Bool)

(assert (=> b!7077064 (=> (not res!2890665) (not e!4254754))))

(declare-fun lt!2549626 () Option!16979)

(assert (=> b!7077064 (= res!2890665 (matchZipper!3208 lt!2549491 (_2!37450 (get!23964 lt!2549626))))))

(declare-fun d!2213370 () Bool)

(declare-fun e!4254757 () Bool)

(assert (=> d!2213370 e!4254757))

(declare-fun res!2890663 () Bool)

(assert (=> d!2213370 (=> res!2890663 e!4254757)))

(assert (=> d!2213370 (= res!2890663 e!4254754)))

(declare-fun res!2890664 () Bool)

(assert (=> d!2213370 (=> (not res!2890664) (not e!4254754))))

(assert (=> d!2213370 (= res!2890664 (isDefined!13680 lt!2549626))))

(declare-fun e!4254756 () Option!16979)

(assert (=> d!2213370 (= lt!2549626 e!4254756)))

(declare-fun c!1320516 () Bool)

(declare-fun e!4254753 () Bool)

(assert (=> d!2213370 (= c!1320516 e!4254753)))

(declare-fun res!2890667 () Bool)

(assert (=> d!2213370 (=> (not res!2890667) (not e!4254753))))

(assert (=> d!2213370 (= res!2890667 (matchZipper!3208 lt!2549472 Nil!68407))))

(assert (=> d!2213370 (= (++!15812 Nil!68407 (t!382316 s!7408)) (t!382316 s!7408))))

(assert (=> d!2213370 (= (findConcatSeparationZippers!495 lt!2549472 lt!2549491 Nil!68407 (t!382316 s!7408) (t!382316 s!7408)) lt!2549626)))

(declare-fun b!7077065 () Bool)

(assert (=> b!7077065 (= e!4254757 (not (isDefined!13680 lt!2549626)))))

(declare-fun b!7077066 () Bool)

(assert (=> b!7077066 (= e!4254753 (matchZipper!3208 lt!2549491 (t!382316 s!7408)))))

(declare-fun b!7077067 () Bool)

(assert (=> b!7077067 (= e!4254756 (Some!16978 (tuple2!68295 Nil!68407 (t!382316 s!7408))))))

(declare-fun b!7077068 () Bool)

(declare-fun e!4254755 () Option!16979)

(assert (=> b!7077068 (= e!4254755 None!16978)))

(declare-fun b!7077069 () Bool)

(assert (=> b!7077069 (= e!4254756 e!4254755)))

(declare-fun c!1320515 () Bool)

(assert (=> b!7077069 (= c!1320515 (is-Nil!68407 (t!382316 s!7408)))))

(declare-fun b!7077070 () Bool)

(assert (=> b!7077070 (= e!4254754 (= (++!15812 (_1!37450 (get!23964 lt!2549626)) (_2!37450 (get!23964 lt!2549626))) (t!382316 s!7408)))))

(declare-fun b!7077071 () Bool)

(declare-fun res!2890666 () Bool)

(assert (=> b!7077071 (=> (not res!2890666) (not e!4254754))))

(assert (=> b!7077071 (= res!2890666 (matchZipper!3208 lt!2549472 (_1!37450 (get!23964 lt!2549626))))))

(declare-fun b!7077072 () Bool)

(declare-fun lt!2549625 () Unit!162047)

(declare-fun lt!2549624 () Unit!162047)

(assert (=> b!7077072 (= lt!2549625 lt!2549624)))

(assert (=> b!7077072 (= (++!15812 (++!15812 Nil!68407 (Cons!68407 (h!74855 (t!382316 s!7408)) Nil!68407)) (t!382316 (t!382316 s!7408))) (t!382316 s!7408))))

(declare-fun lemmaMoveElementToOtherListKeepsConcatEq!2982 (List!68531 C!35606 List!68531 List!68531) Unit!162047)

(assert (=> b!7077072 (= lt!2549624 (lemmaMoveElementToOtherListKeepsConcatEq!2982 Nil!68407 (h!74855 (t!382316 s!7408)) (t!382316 (t!382316 s!7408)) (t!382316 s!7408)))))

(assert (=> b!7077072 (= e!4254755 (findConcatSeparationZippers!495 lt!2549472 lt!2549491 (++!15812 Nil!68407 (Cons!68407 (h!74855 (t!382316 s!7408)) Nil!68407)) (t!382316 (t!382316 s!7408)) (t!382316 s!7408)))))

(assert (= (and d!2213370 res!2890667) b!7077066))

(assert (= (and d!2213370 c!1320516) b!7077067))

(assert (= (and d!2213370 (not c!1320516)) b!7077069))

(assert (= (and b!7077069 c!1320515) b!7077068))

(assert (= (and b!7077069 (not c!1320515)) b!7077072))

(assert (= (and d!2213370 res!2890664) b!7077071))

(assert (= (and b!7077071 res!2890666) b!7077064))

(assert (= (and b!7077064 res!2890665) b!7077070))

(assert (= (and d!2213370 (not res!2890663)) b!7077065))

(declare-fun m!7805494 () Bool)

(assert (=> b!7077072 m!7805494))

(assert (=> b!7077072 m!7805494))

(declare-fun m!7805496 () Bool)

(assert (=> b!7077072 m!7805496))

(declare-fun m!7805498 () Bool)

(assert (=> b!7077072 m!7805498))

(assert (=> b!7077072 m!7805494))

(declare-fun m!7805500 () Bool)

(assert (=> b!7077072 m!7805500))

(declare-fun m!7805502 () Bool)

(assert (=> d!2213370 m!7805502))

(declare-fun m!7805504 () Bool)

(assert (=> d!2213370 m!7805504))

(declare-fun m!7805506 () Bool)

(assert (=> d!2213370 m!7805506))

(declare-fun m!7805508 () Bool)

(assert (=> b!7077070 m!7805508))

(declare-fun m!7805510 () Bool)

(assert (=> b!7077070 m!7805510))

(assert (=> b!7077071 m!7805508))

(declare-fun m!7805512 () Bool)

(assert (=> b!7077071 m!7805512))

(declare-fun m!7805514 () Bool)

(assert (=> b!7077066 m!7805514))

(assert (=> b!7077064 m!7805508))

(declare-fun m!7805516 () Bool)

(assert (=> b!7077064 m!7805516))

(assert (=> b!7077065 m!7805502))

(assert (=> b!7076796 d!2213370))

(assert (=> b!7076796 d!2213304))

(declare-fun d!2213374 () Bool)

(assert (=> d!2213374 (= (get!23964 lt!2549477) (v!53272 lt!2549477))))

(assert (=> b!7076796 d!2213374))

(declare-fun bs!1881458 () Bool)

(declare-fun d!2213376 () Bool)

(assert (= bs!1881458 (and d!2213376 b!7076800)))

(declare-fun lambda!426873 () Int)

(assert (=> bs!1881458 (= lambda!426873 lambda!426826)))

(declare-fun bs!1881459 () Bool)

(assert (= bs!1881459 (and d!2213376 d!2213332)))

(assert (=> bs!1881459 (= lambda!426873 lambda!426867)))

(declare-fun bs!1881460 () Bool)

(assert (= bs!1881460 (and d!2213376 d!2213360)))

(assert (=> bs!1881460 (= lambda!426873 lambda!426872)))

(assert (=> d!2213376 (= (inv!87030 setElem!50386) (forall!16626 (exprs!7164 setElem!50386) lambda!426873))))

(declare-fun bs!1881461 () Bool)

(assert (= bs!1881461 d!2213376))

(declare-fun m!7805518 () Bool)

(assert (=> bs!1881461 m!7805518))

(assert (=> setNonEmpty!50386 d!2213376))

(declare-fun d!2213378 () Bool)

(declare-fun nullableFct!2827 (Regex!17668) Bool)

(assert (=> d!2213378 (= (nullable!7351 (h!74854 (exprs!7164 lt!2549467))) (nullableFct!2827 (h!74854 (exprs!7164 lt!2549467))))))

(declare-fun bs!1881462 () Bool)

(assert (= bs!1881462 d!2213378))

(declare-fun m!7805520 () Bool)

(assert (=> bs!1881462 m!7805520))

(assert (=> b!7076805 d!2213378))

(declare-fun d!2213380 () Bool)

(assert (=> d!2213380 (= (tail!13866 (exprs!7164 lt!2549467)) (t!382315 (exprs!7164 lt!2549467)))))

(assert (=> b!7076805 d!2213380))

(declare-fun bs!1881463 () Bool)

(declare-fun d!2213382 () Bool)

(assert (= bs!1881463 (and d!2213382 b!7076806)))

(declare-fun lambda!426876 () Int)

(assert (=> bs!1881463 (= lambda!426876 lambda!426824)))

(assert (=> d!2213382 true))

(assert (=> d!2213382 (exists!3734 lt!2549470 lambda!426876)))

(declare-fun lt!2549631 () Unit!162047)

(declare-fun choose!54341 (List!68532 List!68531) Unit!162047)

(assert (=> d!2213382 (= lt!2549631 (choose!54341 lt!2549470 s!7408))))

(declare-fun content!13834 (List!68532) (Set Context!13328))

(assert (=> d!2213382 (matchZipper!3208 (content!13834 lt!2549470) s!7408)))

(assert (=> d!2213382 (= (lemmaZipperMatchesExistsMatchingContext!589 lt!2549470 s!7408) lt!2549631)))

(declare-fun bs!1881464 () Bool)

(assert (= bs!1881464 d!2213382))

(declare-fun m!7805522 () Bool)

(assert (=> bs!1881464 m!7805522))

(declare-fun m!7805524 () Bool)

(assert (=> bs!1881464 m!7805524))

(declare-fun m!7805526 () Bool)

(assert (=> bs!1881464 m!7805526))

(assert (=> bs!1881464 m!7805526))

(declare-fun m!7805528 () Bool)

(assert (=> bs!1881464 m!7805528))

(assert (=> b!7076806 d!2213382))

(declare-fun d!2213384 () Bool)

(declare-fun c!1320522 () Bool)

(assert (=> d!2213384 (= c!1320522 (isEmpty!39929 s!7408))))

(declare-fun e!4254764 () Bool)

(assert (=> d!2213384 (= (matchZipper!3208 lt!2549492 s!7408) e!4254764)))

(declare-fun b!7077085 () Bool)

(assert (=> b!7077085 (= e!4254764 (nullableZipper!2714 lt!2549492))))

(declare-fun b!7077086 () Bool)

(assert (=> b!7077086 (= e!4254764 (matchZipper!3208 (derivationStepZipper!3118 lt!2549492 (head!14423 s!7408)) (tail!13868 s!7408)))))

(assert (= (and d!2213384 c!1320522) b!7077085))

(assert (= (and d!2213384 (not c!1320522)) b!7077086))

(assert (=> d!2213384 m!7805346))

(declare-fun m!7805530 () Bool)

(assert (=> b!7077085 m!7805530))

(assert (=> b!7077086 m!7805350))

(assert (=> b!7077086 m!7805350))

(declare-fun m!7805532 () Bool)

(assert (=> b!7077086 m!7805532))

(assert (=> b!7077086 m!7805354))

(assert (=> b!7077086 m!7805532))

(assert (=> b!7077086 m!7805354))

(declare-fun m!7805534 () Bool)

(assert (=> b!7077086 m!7805534))

(assert (=> b!7076806 d!2213384))

(declare-fun d!2213386 () Bool)

(declare-fun e!4254767 () Bool)

(assert (=> d!2213386 e!4254767))

(declare-fun res!2890676 () Bool)

(assert (=> d!2213386 (=> (not res!2890676) (not e!4254767))))

(declare-fun lt!2549636 () Context!13328)

(declare-fun dynLambda!27858 (Int Context!13328) Bool)

(assert (=> d!2213386 (= res!2890676 (dynLambda!27858 lambda!426824 lt!2549636))))

(declare-fun getWitness!1786 (List!68532 Int) Context!13328)

(assert (=> d!2213386 (= lt!2549636 (getWitness!1786 (toList!11009 lt!2549478) lambda!426824))))

(declare-fun exists!3736 ((Set Context!13328) Int) Bool)

(assert (=> d!2213386 (exists!3736 lt!2549478 lambda!426824)))

(assert (=> d!2213386 (= (getWitness!1784 lt!2549478 lambda!426824) lt!2549636)))

(declare-fun b!7077089 () Bool)

(assert (=> b!7077089 (= e!4254767 (set.member lt!2549636 lt!2549478))))

(assert (= (and d!2213386 res!2890676) b!7077089))

(declare-fun b_lambda!270319 () Bool)

(assert (=> (not b_lambda!270319) (not d!2213386)))

(declare-fun m!7805556 () Bool)

(assert (=> d!2213386 m!7805556))

(assert (=> d!2213386 m!7805136))

(assert (=> d!2213386 m!7805136))

(declare-fun m!7805558 () Bool)

(assert (=> d!2213386 m!7805558))

(declare-fun m!7805560 () Bool)

(assert (=> d!2213386 m!7805560))

(declare-fun m!7805562 () Bool)

(assert (=> b!7077089 m!7805562))

(assert (=> b!7076806 d!2213386))

(declare-fun bs!1881466 () Bool)

(declare-fun d!2213392 () Bool)

(assert (= bs!1881466 (and d!2213392 b!7076806)))

(declare-fun lambda!426879 () Int)

(assert (=> bs!1881466 (not (= lambda!426879 lambda!426824))))

(declare-fun bs!1881467 () Bool)

(assert (= bs!1881467 (and d!2213392 d!2213382)))

(assert (=> bs!1881467 (not (= lambda!426879 lambda!426876))))

(assert (=> d!2213392 true))

(declare-fun order!28439 () Int)

(declare-fun dynLambda!27859 (Int Int) Int)

(assert (=> d!2213392 (< (dynLambda!27859 order!28439 lambda!426824) (dynLambda!27859 order!28439 lambda!426879))))

(declare-fun forall!16628 (List!68532 Int) Bool)

(assert (=> d!2213392 (= (exists!3734 lt!2549470 lambda!426824) (not (forall!16628 lt!2549470 lambda!426879)))))

(declare-fun bs!1881468 () Bool)

(assert (= bs!1881468 d!2213392))

(declare-fun m!7805564 () Bool)

(assert (=> bs!1881468 m!7805564))

(assert (=> b!7076806 d!2213392))

(declare-fun d!2213394 () Bool)

(declare-fun e!4254770 () Bool)

(assert (=> d!2213394 e!4254770))

(declare-fun res!2890679 () Bool)

(assert (=> d!2213394 (=> (not res!2890679) (not e!4254770))))

(declare-fun lt!2549641 () List!68532)

(declare-fun noDuplicate!2742 (List!68532) Bool)

(assert (=> d!2213394 (= res!2890679 (noDuplicate!2742 lt!2549641))))

(declare-fun choose!54342 ((Set Context!13328)) List!68532)

(assert (=> d!2213394 (= lt!2549641 (choose!54342 lt!2549478))))

(assert (=> d!2213394 (= (toList!11009 lt!2549478) lt!2549641)))

(declare-fun b!7077094 () Bool)

(assert (=> b!7077094 (= e!4254770 (= (content!13834 lt!2549641) lt!2549478))))

(assert (= (and d!2213394 res!2890679) b!7077094))

(declare-fun m!7805566 () Bool)

(assert (=> d!2213394 m!7805566))

(declare-fun m!7805568 () Bool)

(assert (=> d!2213394 m!7805568))

(declare-fun m!7805570 () Bool)

(assert (=> b!7077094 m!7805570))

(assert (=> b!7076806 d!2213394))

(declare-fun b!7077095 () Bool)

(declare-fun e!4254772 () List!68531)

(assert (=> b!7077095 (= e!4254772 (_2!37450 lt!2549480))))

(declare-fun b!7077097 () Bool)

(declare-fun res!2890681 () Bool)

(declare-fun e!4254771 () Bool)

(assert (=> b!7077097 (=> (not res!2890681) (not e!4254771))))

(declare-fun lt!2549642 () List!68531)

(assert (=> b!7077097 (= res!2890681 (= (size!41235 lt!2549642) (+ (size!41235 lt!2549487) (size!41235 (_2!37450 lt!2549480)))))))

(declare-fun b!7077098 () Bool)

(assert (=> b!7077098 (= e!4254771 (or (not (= (_2!37450 lt!2549480) Nil!68407)) (= lt!2549642 lt!2549487)))))

(declare-fun d!2213396 () Bool)

(assert (=> d!2213396 e!4254771))

(declare-fun res!2890680 () Bool)

(assert (=> d!2213396 (=> (not res!2890680) (not e!4254771))))

(assert (=> d!2213396 (= res!2890680 (= (content!13833 lt!2549642) (set.union (content!13833 lt!2549487) (content!13833 (_2!37450 lt!2549480)))))))

(assert (=> d!2213396 (= lt!2549642 e!4254772)))

(declare-fun c!1320524 () Bool)

(assert (=> d!2213396 (= c!1320524 (is-Nil!68407 lt!2549487))))

(assert (=> d!2213396 (= (++!15812 lt!2549487 (_2!37450 lt!2549480)) lt!2549642)))

(declare-fun b!7077096 () Bool)

(assert (=> b!7077096 (= e!4254772 (Cons!68407 (h!74855 lt!2549487) (++!15812 (t!382316 lt!2549487) (_2!37450 lt!2549480))))))

(assert (= (and d!2213396 c!1320524) b!7077095))

(assert (= (and d!2213396 (not c!1320524)) b!7077096))

(assert (= (and d!2213396 res!2890680) b!7077097))

(assert (= (and b!7077097 res!2890681) b!7077098))

(declare-fun m!7805572 () Bool)

(assert (=> b!7077097 m!7805572))

(declare-fun m!7805574 () Bool)

(assert (=> b!7077097 m!7805574))

(assert (=> b!7077097 m!7805404))

(declare-fun m!7805576 () Bool)

(assert (=> d!2213396 m!7805576))

(declare-fun m!7805578 () Bool)

(assert (=> d!2213396 m!7805578))

(assert (=> d!2213396 m!7805410))

(declare-fun m!7805580 () Bool)

(assert (=> b!7077096 m!7805580))

(assert (=> b!7076795 d!2213396))

(declare-fun d!2213398 () Bool)

(declare-fun c!1320525 () Bool)

(assert (=> d!2213398 (= c!1320525 (isEmpty!39929 (_2!37450 lt!2549480)))))

(declare-fun e!4254773 () Bool)

(assert (=> d!2213398 (= (matchZipper!3208 lt!2549491 (_2!37450 lt!2549480)) e!4254773)))

(declare-fun b!7077099 () Bool)

(assert (=> b!7077099 (= e!4254773 (nullableZipper!2714 lt!2549491))))

(declare-fun b!7077100 () Bool)

(assert (=> b!7077100 (= e!4254773 (matchZipper!3208 (derivationStepZipper!3118 lt!2549491 (head!14423 (_2!37450 lt!2549480))) (tail!13868 (_2!37450 lt!2549480))))))

(assert (= (and d!2213398 c!1320525) b!7077099))

(assert (= (and d!2213398 (not c!1320525)) b!7077100))

(declare-fun m!7805582 () Bool)

(assert (=> d!2213398 m!7805582))

(declare-fun m!7805584 () Bool)

(assert (=> b!7077099 m!7805584))

(declare-fun m!7805586 () Bool)

(assert (=> b!7077100 m!7805586))

(assert (=> b!7077100 m!7805586))

(declare-fun m!7805588 () Bool)

(assert (=> b!7077100 m!7805588))

(declare-fun m!7805590 () Bool)

(assert (=> b!7077100 m!7805590))

(assert (=> b!7077100 m!7805588))

(assert (=> b!7077100 m!7805590))

(declare-fun m!7805592 () Bool)

(assert (=> b!7077100 m!7805592))

(assert (=> b!7076804 d!2213398))

(declare-fun b!7077120 () Bool)

(declare-fun e!4254786 () Bool)

(declare-fun e!4254787 () Bool)

(assert (=> b!7077120 (= e!4254786 e!4254787)))

(declare-fun res!2890694 () Bool)

(assert (=> b!7077120 (=> (not res!2890694) (not e!4254787))))

(assert (=> b!7077120 (= res!2890694 (not (is-Nil!68407 lt!2549487)))))

(declare-fun b!7077121 () Bool)

(declare-fun res!2890693 () Bool)

(assert (=> b!7077121 (=> (not res!2890693) (not e!4254787))))

(assert (=> b!7077121 (= res!2890693 (= (head!14423 Nil!68407) (head!14423 lt!2549487)))))

(declare-fun d!2213400 () Bool)

(declare-fun e!4254788 () Bool)

(assert (=> d!2213400 e!4254788))

(declare-fun res!2890692 () Bool)

(assert (=> d!2213400 (=> res!2890692 e!4254788)))

(declare-fun lt!2549645 () Bool)

(assert (=> d!2213400 (= res!2890692 (not lt!2549645))))

(assert (=> d!2213400 (= lt!2549645 e!4254786)))

(declare-fun res!2890691 () Bool)

(assert (=> d!2213400 (=> res!2890691 e!4254786)))

(assert (=> d!2213400 (= res!2890691 (is-Nil!68407 Nil!68407))))

(assert (=> d!2213400 (= (isPrefix!5859 Nil!68407 lt!2549487) lt!2549645)))

(declare-fun b!7077122 () Bool)

(assert (=> b!7077122 (= e!4254787 (isPrefix!5859 (tail!13868 Nil!68407) (tail!13868 lt!2549487)))))

(declare-fun b!7077123 () Bool)

(assert (=> b!7077123 (= e!4254788 (>= (size!41235 lt!2549487) (size!41235 Nil!68407)))))

(assert (= (and d!2213400 (not res!2890691)) b!7077120))

(assert (= (and b!7077120 res!2890694) b!7077121))

(assert (= (and b!7077121 res!2890693) b!7077122))

(assert (= (and d!2213400 (not res!2890692)) b!7077123))

(declare-fun m!7805604 () Bool)

(assert (=> b!7077121 m!7805604))

(assert (=> b!7077121 m!7805366))

(declare-fun m!7805606 () Bool)

(assert (=> b!7077122 m!7805606))

(assert (=> b!7077122 m!7805370))

(assert (=> b!7077122 m!7805606))

(assert (=> b!7077122 m!7805370))

(declare-fun m!7805608 () Bool)

(assert (=> b!7077122 m!7805608))

(assert (=> b!7077123 m!7805574))

(declare-fun m!7805610 () Bool)

(assert (=> b!7077123 m!7805610))

(assert (=> b!7076794 d!2213400))

(declare-fun b!7077128 () Bool)

(declare-fun e!4254791 () Bool)

(declare-fun tp!1942979 () Bool)

(assert (=> b!7077128 (= e!4254791 (and tp_is_empty!44561 tp!1942979))))

(assert (=> b!7076797 (= tp!1942963 e!4254791)))

(assert (= (and b!7076797 (is-Cons!68407 (t!382316 s!7408))) b!7077128))

(declare-fun b!7077133 () Bool)

(declare-fun e!4254794 () Bool)

(declare-fun tp!1942984 () Bool)

(declare-fun tp!1942985 () Bool)

(assert (=> b!7077133 (= e!4254794 (and tp!1942984 tp!1942985))))

(assert (=> b!7076801 (= tp!1942964 e!4254794)))

(assert (= (and b!7076801 (is-Cons!68406 (exprs!7164 ct2!306))) b!7077133))

(declare-fun condSetEmpty!50392 () Bool)

(assert (=> setNonEmpty!50386 (= condSetEmpty!50392 (= setRest!50386 (as set.empty (Set Context!13328))))))

(declare-fun setRes!50392 () Bool)

(assert (=> setNonEmpty!50386 (= tp!1942962 setRes!50392)))

(declare-fun setIsEmpty!50392 () Bool)

(assert (=> setIsEmpty!50392 setRes!50392))

(declare-fun setNonEmpty!50392 () Bool)

(declare-fun tp!1942990 () Bool)

(declare-fun setElem!50392 () Context!13328)

(declare-fun e!4254797 () Bool)

(assert (=> setNonEmpty!50392 (= setRes!50392 (and tp!1942990 (inv!87030 setElem!50392) e!4254797))))

(declare-fun setRest!50392 () (Set Context!13328))

(assert (=> setNonEmpty!50392 (= setRest!50386 (set.union (set.insert setElem!50392 (as set.empty (Set Context!13328))) setRest!50392))))

(declare-fun b!7077138 () Bool)

(declare-fun tp!1942991 () Bool)

(assert (=> b!7077138 (= e!4254797 tp!1942991)))

(assert (= (and setNonEmpty!50386 condSetEmpty!50392) setIsEmpty!50392))

(assert (= (and setNonEmpty!50386 (not condSetEmpty!50392)) setNonEmpty!50392))

(assert (= setNonEmpty!50392 b!7077138))

(declare-fun m!7805612 () Bool)

(assert (=> setNonEmpty!50392 m!7805612))

(declare-fun b!7077139 () Bool)

(declare-fun e!4254798 () Bool)

(declare-fun tp!1942992 () Bool)

(declare-fun tp!1942993 () Bool)

(assert (=> b!7077139 (= e!4254798 (and tp!1942992 tp!1942993))))

(assert (=> b!7076799 (= tp!1942961 e!4254798)))

(assert (= (and b!7076799 (is-Cons!68406 (exprs!7164 setElem!50386))) b!7077139))

(declare-fun b_lambda!270321 () Bool)

(assert (= b_lambda!270315 (or b!7076791 b_lambda!270321)))

(declare-fun bs!1881471 () Bool)

(declare-fun d!2213406 () Bool)

(assert (= bs!1881471 (and d!2213406 b!7076791)))

(assert (=> bs!1881471 (= (dynLambda!27857 lambda!426827 lt!2549489) (derivationStepZipperUp!2252 lt!2549489 (h!74855 s!7408)))))

(assert (=> bs!1881471 m!7805128))

(assert (=> d!2213316 d!2213406))

(declare-fun b_lambda!270323 () Bool)

(assert (= b_lambda!270317 (or b!7076791 b_lambda!270323)))

(declare-fun bs!1881472 () Bool)

(declare-fun d!2213408 () Bool)

(assert (= bs!1881472 (and d!2213408 b!7076791)))

(assert (=> bs!1881472 (= (dynLambda!27857 lambda!426827 lt!2549467) (derivationStepZipperUp!2252 lt!2549467 (h!74855 s!7408)))))

(assert (=> bs!1881472 m!7805160))

(assert (=> d!2213342 d!2213408))

(declare-fun b_lambda!270325 () Bool)

(assert (= b_lambda!270313 (or b!7076800 b_lambda!270325)))

(declare-fun bs!1881473 () Bool)

(declare-fun d!2213410 () Bool)

(assert (= bs!1881473 (and d!2213410 b!7076800)))

(declare-fun lt!2549646 () Unit!162047)

(assert (=> bs!1881473 (= lt!2549646 (lemmaConcatPreservesForall!979 (exprs!7164 lt!2549593) (exprs!7164 ct2!306) lambda!426826))))

(assert (=> bs!1881473 (= (dynLambda!27856 lambda!426825 lt!2549593) (Context!13329 (++!15811 (exprs!7164 lt!2549593) (exprs!7164 ct2!306))))))

(declare-fun m!7805614 () Bool)

(assert (=> bs!1881473 m!7805614))

(declare-fun m!7805616 () Bool)

(assert (=> bs!1881473 m!7805616))

(assert (=> d!2213310 d!2213410))

(declare-fun b_lambda!270327 () Bool)

(assert (= b_lambda!270319 (or b!7076806 b_lambda!270327)))

(declare-fun bs!1881474 () Bool)

(declare-fun d!2213412 () Bool)

(assert (= bs!1881474 (and d!2213412 b!7076806)))

(assert (=> bs!1881474 (= (dynLambda!27858 lambda!426824 lt!2549636) (matchZipper!3208 (set.insert lt!2549636 (as set.empty (Set Context!13328))) s!7408))))

(declare-fun m!7805618 () Bool)

(assert (=> bs!1881474 m!7805618))

(assert (=> bs!1881474 m!7805618))

(declare-fun m!7805620 () Bool)

(assert (=> bs!1881474 m!7805620))

(assert (=> d!2213386 d!2213412))

(push 1)

(assert (not d!2213354))

(assert (not d!2213302))

(assert (not d!2213360))

(assert (not b!7076971))

(assert (not b!7076969))

(assert (not b!7077086))

(assert (not b_lambda!270323))

(assert (not b!7077097))

(assert (not b!7077099))

(assert (not b!7077085))

(assert (not d!2213392))

(assert (not b!7076936))

(assert (not d!2213382))

(assert (not b!7077139))

(assert (not b_lambda!270327))

(assert (not b!7076989))

(assert (not b!7076887))

(assert (not d!2213376))

(assert (not b!7076888))

(assert (not d!2213364))

(assert (not bm!643206))

(assert (not b!7077123))

(assert (not b!7076993))

(assert (not b!7077071))

(assert (not b!7077133))

(assert (not b_lambda!270325))

(assert (not d!2213310))

(assert (not b!7076990))

(assert (not d!2213370))

(assert (not b!7077138))

(assert (not bs!1881472))

(assert (not d!2213308))

(assert (not b!7077100))

(assert (not b_lambda!270321))

(assert (not d!2213304))

(assert (not b!7077094))

(assert (not d!2213394))

(assert (not d!2213298))

(assert (not b!7077096))

(assert (not d!2213334))

(assert (not d!2213398))

(assert (not d!2213306))

(assert (not d!2213326))

(assert (not b!7076932))

(assert (not b!7076960))

(assert (not b!7077121))

(assert (not d!2213328))

(assert (not b!7077122))

(assert (not bm!643213))

(assert (not d!2213378))

(assert (not d!2213346))

(assert (not b!7076931))

(assert (not b!7076957))

(assert (not d!2213338))

(assert (not b!7076918))

(assert (not b!7076970))

(assert (not bm!643216))

(assert (not b!7076992))

(assert (not b!7077009))

(assert (not d!2213342))

(assert (not bm!643208))

(assert (not d!2213396))

(assert (not b!7076959))

(assert (not d!2213312))

(assert (not d!2213332))

(assert (not bm!643207))

(assert (not b!7076935))

(assert (not d!2213314))

(assert (not b!7076974))

(assert (not d!2213386))

(assert (not d!2213316))

(assert (not b!7077066))

(assert (not d!2213384))

(assert (not bm!643217))

(assert (not b!7076954))

(assert (not b!7077072))

(assert (not d!2213356))

(assert (not b!7077070))

(assert (not b!7077065))

(assert (not bs!1881471))

(assert (not bs!1881474))

(assert (not bs!1881473))

(assert tp_is_empty!44561)

(assert (not b!7077128))

(assert (not d!2213344))

(assert (not d!2213352))

(assert (not bm!643214))

(assert (not b!7077064))

(assert (not setNonEmpty!50392))

(assert (not bm!643218))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

