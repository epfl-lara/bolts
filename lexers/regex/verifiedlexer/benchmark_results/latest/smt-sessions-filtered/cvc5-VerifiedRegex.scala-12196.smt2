; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!686762 () Bool)

(assert start!686762)

(declare-fun b!7070502 () Bool)

(assert (=> b!7070502 true))

(declare-fun b!7070506 () Bool)

(assert (=> b!7070506 true))

(declare-fun b!7070498 () Bool)

(assert (=> b!7070498 true))

(declare-fun b!7070480 () Bool)

(declare-fun e!4250776 () Bool)

(declare-fun e!4250767 () Bool)

(assert (=> b!7070480 (= e!4250776 e!4250767)))

(declare-fun res!2887454 () Bool)

(assert (=> b!7070480 (=> res!2887454 e!4250767)))

(declare-datatypes ((C!35546 0))(
  ( (C!35547 (val!27475 Int)) )
))
(declare-datatypes ((Regex!17638 0))(
  ( (ElementMatch!17638 (c!1318799 C!35546)) (Concat!26483 (regOne!35788 Regex!17638) (regTwo!35788 Regex!17638)) (EmptyExpr!17638) (Star!17638 (reg!17967 Regex!17638)) (EmptyLang!17638) (Union!17638 (regOne!35789 Regex!17638) (regTwo!35789 Regex!17638)) )
))
(declare-datatypes ((List!68440 0))(
  ( (Nil!68316) (Cons!68316 (h!74764 Regex!17638) (t!382223 List!68440)) )
))
(declare-datatypes ((Context!13268 0))(
  ( (Context!13269 (exprs!7134 List!68440)) )
))
(declare-fun lt!2544681 () Context!13268)

(declare-fun nullable!7321 (Regex!17638) Bool)

(assert (=> b!7070480 (= res!2887454 (not (nullable!7321 (h!74764 (exprs!7134 lt!2544681)))))))

(declare-fun lt!2544652 () Context!13268)

(declare-fun lt!2544678 () List!68440)

(assert (=> b!7070480 (= lt!2544652 (Context!13269 lt!2544678))))

(declare-fun tail!13817 (List!68440) List!68440)

(assert (=> b!7070480 (= lt!2544678 (tail!13817 (exprs!7134 lt!2544681)))))

(declare-fun b!7070481 () Bool)

(declare-fun res!2887442 () Bool)

(assert (=> b!7070481 (=> res!2887442 e!4250776)))

(assert (=> b!7070481 (= res!2887442 (not (is-Cons!68316 (exprs!7134 lt!2544681))))))

(declare-fun b!7070482 () Bool)

(declare-fun res!2887460 () Bool)

(assert (=> b!7070482 (=> res!2887460 e!4250776)))

(declare-fun isEmpty!39869 (List!68440) Bool)

(assert (=> b!7070482 (= res!2887460 (isEmpty!39869 (exprs!7134 lt!2544681)))))

(declare-fun b!7070483 () Bool)

(declare-fun res!2887457 () Bool)

(declare-fun e!4250779 () Bool)

(assert (=> b!7070483 (=> res!2887457 e!4250779)))

(declare-fun lt!2544695 () Context!13268)

(declare-fun lt!2544676 () (Set Context!13268))

(assert (=> b!7070483 (= res!2887457 (not (set.member lt!2544695 lt!2544676)))))

(declare-fun b!7070485 () Bool)

(declare-fun e!4250762 () Bool)

(declare-fun e!4250764 () Bool)

(assert (=> b!7070485 (= e!4250762 e!4250764)))

(declare-fun res!2887450 () Bool)

(assert (=> b!7070485 (=> res!2887450 e!4250764)))

(declare-fun lt!2544668 () (Set Context!13268))

(declare-datatypes ((List!68441 0))(
  ( (Nil!68317) (Cons!68317 (h!74765 C!35546) (t!382224 List!68441)) )
))
(declare-fun s!7408 () List!68441)

(declare-fun matchZipper!3178 ((Set Context!13268) List!68441) Bool)

(assert (=> b!7070485 (= res!2887450 (matchZipper!3178 lt!2544668 (t!382224 s!7408)))))

(declare-fun lambda!425173 () Int)

(declare-fun ct2!306 () Context!13268)

(declare-datatypes ((Unit!161986 0))(
  ( (Unit!161987) )
))
(declare-fun lt!2544675 () Unit!161986)

(declare-fun lemmaConcatPreservesForall!949 (List!68440 List!68440 Int) Unit!161986)

(assert (=> b!7070485 (= lt!2544675 (lemmaConcatPreservesForall!949 lt!2544678 (exprs!7134 ct2!306) lambda!425173))))

(declare-fun tp!1942159 () Bool)

(declare-fun setRes!50225 () Bool)

(declare-fun setNonEmpty!50225 () Bool)

(declare-fun setElem!50225 () Context!13268)

(declare-fun e!4250780 () Bool)

(declare-fun inv!86955 (Context!13268) Bool)

(assert (=> setNonEmpty!50225 (= setRes!50225 (and tp!1942159 (inv!86955 setElem!50225) e!4250780))))

(declare-fun z1!570 () (Set Context!13268))

(declare-fun setRest!50225 () (Set Context!13268))

(assert (=> setNonEmpty!50225 (= z1!570 (set.union (set.insert setElem!50225 (as set.empty (Set Context!13268))) setRest!50225))))

(declare-fun b!7070486 () Bool)

(declare-fun e!4250781 () Bool)

(declare-fun tp_is_empty!44501 () Bool)

(declare-fun tp!1942157 () Bool)

(assert (=> b!7070486 (= e!4250781 (and tp_is_empty!44501 tp!1942157))))

(declare-fun b!7070487 () Bool)

(declare-fun e!4250765 () Bool)

(declare-fun lt!2544663 () (Set Context!13268))

(declare-datatypes ((tuple2!68250 0))(
  ( (tuple2!68251 (_1!37428 List!68441) (_2!37428 List!68441)) )
))
(declare-fun lt!2544656 () tuple2!68250)

(assert (=> b!7070487 (= e!4250765 (not (matchZipper!3178 lt!2544663 (_1!37428 lt!2544656))))))

(declare-fun b!7070488 () Bool)

(declare-fun e!4250769 () Bool)

(assert (=> b!7070488 (= e!4250764 e!4250769)))

(declare-fun res!2887459 () Bool)

(assert (=> b!7070488 (=> res!2887459 e!4250769)))

(declare-fun lt!2544698 () Bool)

(assert (=> b!7070488 (= res!2887459 (not lt!2544698))))

(declare-fun lt!2544694 () Unit!161986)

(assert (=> b!7070488 (= lt!2544694 (lemmaConcatPreservesForall!949 lt!2544678 (exprs!7134 ct2!306) lambda!425173))))

(declare-fun lt!2544661 () Unit!161986)

(assert (=> b!7070488 (= lt!2544661 (lemmaConcatPreservesForall!949 lt!2544678 (exprs!7134 ct2!306) lambda!425173))))

(declare-fun b!7070489 () Bool)

(declare-fun e!4250774 () Bool)

(declare-fun lt!2544666 () List!68441)

(declare-fun isPrefix!5851 (List!68441 List!68441) Bool)

(assert (=> b!7070489 (= e!4250774 (isPrefix!5851 Nil!68317 lt!2544666))))

(declare-fun b!7070490 () Bool)

(declare-fun res!2887465 () Bool)

(assert (=> b!7070490 (=> res!2887465 e!4250774)))

(declare-fun ++!15759 (List!68441 List!68441) List!68441)

(assert (=> b!7070490 (= res!2887465 (not (= (++!15759 lt!2544666 (_2!37428 lt!2544656)) s!7408)))))

(declare-fun b!7070491 () Bool)

(declare-fun res!2887467 () Bool)

(declare-fun e!4250766 () Bool)

(assert (=> b!7070491 (=> res!2887467 e!4250766)))

(assert (=> b!7070491 (= res!2887467 (not (= (++!15759 (_1!37428 lt!2544656) (_2!37428 lt!2544656)) (t!382224 s!7408))))))

(declare-fun b!7070492 () Bool)

(declare-fun e!4250768 () Bool)

(assert (=> b!7070492 (= e!4250768 e!4250762)))

(declare-fun res!2887446 () Bool)

(assert (=> b!7070492 (=> res!2887446 e!4250762)))

(declare-fun e!4250777 () Bool)

(assert (=> b!7070492 (= res!2887446 e!4250777)))

(declare-fun res!2887461 () Bool)

(assert (=> b!7070492 (=> (not res!2887461) (not e!4250777))))

(declare-fun lt!2544673 () Bool)

(assert (=> b!7070492 (= res!2887461 (not (= lt!2544673 lt!2544698)))))

(declare-fun lt!2544658 () (Set Context!13268))

(assert (=> b!7070492 (= lt!2544673 (matchZipper!3178 lt!2544658 (t!382224 s!7408)))))

(declare-fun lt!2544664 () Unit!161986)

(assert (=> b!7070492 (= lt!2544664 (lemmaConcatPreservesForall!949 lt!2544678 (exprs!7134 ct2!306) lambda!425173))))

(declare-fun lt!2544682 () (Set Context!13268))

(declare-fun e!4250771 () Bool)

(assert (=> b!7070492 (= (matchZipper!3178 lt!2544682 (t!382224 s!7408)) e!4250771)))

(declare-fun res!2887456 () Bool)

(assert (=> b!7070492 (=> res!2887456 e!4250771)))

(assert (=> b!7070492 (= res!2887456 lt!2544698)))

(declare-fun lt!2544690 () (Set Context!13268))

(assert (=> b!7070492 (= lt!2544698 (matchZipper!3178 lt!2544690 (t!382224 s!7408)))))

(declare-fun lt!2544671 () Unit!161986)

(declare-fun lemmaZipperConcatMatchesSameAsBothZippers!1651 ((Set Context!13268) (Set Context!13268) List!68441) Unit!161986)

(assert (=> b!7070492 (= lt!2544671 (lemmaZipperConcatMatchesSameAsBothZippers!1651 lt!2544690 lt!2544668 (t!382224 s!7408)))))

(declare-fun lt!2544654 () Unit!161986)

(assert (=> b!7070492 (= lt!2544654 (lemmaConcatPreservesForall!949 lt!2544678 (exprs!7134 ct2!306) lambda!425173))))

(declare-fun lt!2544683 () Unit!161986)

(assert (=> b!7070492 (= lt!2544683 (lemmaConcatPreservesForall!949 lt!2544678 (exprs!7134 ct2!306) lambda!425173))))

(declare-fun b!7070493 () Bool)

(declare-fun res!2887466 () Bool)

(assert (=> b!7070493 (=> res!2887466 e!4250774)))

(declare-fun lt!2544677 () Bool)

(assert (=> b!7070493 (= res!2887466 (not lt!2544677))))

(declare-fun b!7070494 () Bool)

(declare-fun e!4250770 () Bool)

(declare-fun e!4250772 () Bool)

(assert (=> b!7070494 (= e!4250770 e!4250772)))

(declare-fun res!2887448 () Bool)

(assert (=> b!7070494 (=> res!2887448 e!4250772)))

(declare-fun lt!2544672 () (Set Context!13268))

(declare-fun lt!2544697 () (Set Context!13268))

(assert (=> b!7070494 (= res!2887448 (not (= lt!2544672 lt!2544697)))))

(declare-fun lt!2544667 () Context!13268)

(assert (=> b!7070494 (= lt!2544672 (set.insert lt!2544667 (as set.empty (Set Context!13268))))))

(declare-fun lt!2544696 () Unit!161986)

(assert (=> b!7070494 (= lt!2544696 (lemmaConcatPreservesForall!949 (exprs!7134 lt!2544681) (exprs!7134 ct2!306) lambda!425173))))

(declare-fun b!7070495 () Bool)

(declare-fun e!4250778 () Bool)

(declare-fun tp!1942158 () Bool)

(assert (=> b!7070495 (= e!4250778 tp!1942158)))

(declare-fun b!7070496 () Bool)

(declare-fun e!4250763 () Bool)

(assert (=> b!7070496 (= e!4250766 e!4250763)))

(declare-fun res!2887462 () Bool)

(assert (=> b!7070496 (=> res!2887462 e!4250763)))

(declare-fun lt!2544687 () (Set Context!13268))

(declare-fun lt!2544659 () (Set Context!13268))

(assert (=> b!7070496 (= res!2887462 (not (= lt!2544687 lt!2544659)))))

(declare-fun lt!2544693 () (Set Context!13268))

(declare-fun lambda!425174 () Int)

(declare-fun flatMap!2564 ((Set Context!13268) Int) (Set Context!13268))

(declare-fun derivationStepZipperUp!2222 (Context!13268 C!35546) (Set Context!13268))

(assert (=> b!7070496 (= (flatMap!2564 lt!2544693 lambda!425174) (derivationStepZipperUp!2222 lt!2544681 (h!74765 s!7408)))))

(declare-fun lt!2544669 () Unit!161986)

(declare-fun lemmaFlatMapOnSingletonSet!2073 ((Set Context!13268) Context!13268 Int) Unit!161986)

(assert (=> b!7070496 (= lt!2544669 (lemmaFlatMapOnSingletonSet!2073 lt!2544693 lt!2544681 lambda!425174))))

(assert (=> b!7070496 (= lt!2544659 (derivationStepZipperUp!2222 lt!2544681 (h!74765 s!7408)))))

(declare-fun derivationStepZipper!3088 ((Set Context!13268) C!35546) (Set Context!13268))

(assert (=> b!7070496 (= lt!2544687 (derivationStepZipper!3088 lt!2544693 (h!74765 s!7408)))))

(assert (=> b!7070496 (= lt!2544693 (set.insert lt!2544681 (as set.empty (Set Context!13268))))))

(declare-fun res!2887458 () Bool)

(declare-fun e!4250775 () Bool)

(assert (=> start!686762 (=> (not res!2887458) (not e!4250775))))

(assert (=> start!686762 (= res!2887458 (matchZipper!3178 lt!2544676 s!7408))))

(declare-fun appendTo!759 ((Set Context!13268) Context!13268) (Set Context!13268))

(assert (=> start!686762 (= lt!2544676 (appendTo!759 z1!570 ct2!306))))

(assert (=> start!686762 e!4250775))

(declare-fun condSetEmpty!50225 () Bool)

(assert (=> start!686762 (= condSetEmpty!50225 (= z1!570 (as set.empty (Set Context!13268))))))

(assert (=> start!686762 setRes!50225))

(assert (=> start!686762 (and (inv!86955 ct2!306) e!4250778)))

(assert (=> start!686762 e!4250781))

(declare-fun b!7070484 () Bool)

(assert (=> b!7070484 (= e!4250769 e!4250766)))

(declare-fun res!2887453 () Bool)

(assert (=> b!7070484 (=> res!2887453 e!4250766)))

(declare-fun lt!2544688 () (Set Context!13268))

(assert (=> b!7070484 (= res!2887453 (not (matchZipper!3178 lt!2544688 (_1!37428 lt!2544656))))))

(declare-datatypes ((Option!16957 0))(
  ( (None!16956) (Some!16956 (v!53250 tuple2!68250)) )
))
(declare-fun lt!2544692 () Option!16957)

(declare-fun get!23927 (Option!16957) tuple2!68250)

(assert (=> b!7070484 (= lt!2544656 (get!23927 lt!2544692))))

(declare-fun isDefined!13658 (Option!16957) Bool)

(assert (=> b!7070484 (isDefined!13658 lt!2544692)))

(declare-fun lt!2544660 () (Set Context!13268))

(declare-fun findConcatSeparationZippers!473 ((Set Context!13268) (Set Context!13268) List!68441 List!68441 List!68441) Option!16957)

(assert (=> b!7070484 (= lt!2544692 (findConcatSeparationZippers!473 lt!2544688 lt!2544660 Nil!68317 (t!382224 s!7408) (t!382224 s!7408)))))

(assert (=> b!7070484 (= lt!2544660 (set.insert ct2!306 (as set.empty (Set Context!13268))))))

(declare-fun lt!2544680 () Unit!161986)

(declare-fun lemmaConcatZipperMatchesStringThenFindConcatDefined!461 ((Set Context!13268) Context!13268 List!68441) Unit!161986)

(assert (=> b!7070484 (= lt!2544680 (lemmaConcatZipperMatchesStringThenFindConcatDefined!461 lt!2544688 ct2!306 (t!382224 s!7408)))))

(declare-fun lt!2544689 () Unit!161986)

(assert (=> b!7070484 (= lt!2544689 (lemmaConcatPreservesForall!949 lt!2544678 (exprs!7134 ct2!306) lambda!425173))))

(assert (=> b!7070484 (= lt!2544690 (appendTo!759 lt!2544688 ct2!306))))

(declare-fun derivationStepZipperDown!2272 (Regex!17638 Context!13268 C!35546) (Set Context!13268))

(assert (=> b!7070484 (= lt!2544688 (derivationStepZipperDown!2272 (h!74764 (exprs!7134 lt!2544681)) lt!2544652 (h!74765 s!7408)))))

(declare-fun lt!2544670 () Unit!161986)

(assert (=> b!7070484 (= lt!2544670 (lemmaConcatPreservesForall!949 lt!2544678 (exprs!7134 ct2!306) lambda!425173))))

(declare-fun lt!2544651 () Unit!161986)

(declare-fun lemmaDerivativeStepZipperDownConcatCtxSameAsAppendTo!109 (Context!13268 Regex!17638 C!35546 Context!13268) Unit!161986)

(assert (=> b!7070484 (= lt!2544651 (lemmaDerivativeStepZipperDownConcatCtxSameAsAppendTo!109 lt!2544652 (h!74764 (exprs!7134 lt!2544681)) (h!74765 s!7408) ct2!306))))

(declare-fun b!7070497 () Bool)

(declare-fun tp!1942156 () Bool)

(assert (=> b!7070497 (= e!4250780 tp!1942156)))

(declare-fun setIsEmpty!50225 () Bool)

(assert (=> setIsEmpty!50225 setRes!50225))

(assert (=> b!7070498 (= e!4250772 e!4250776)))

(declare-fun res!2887445 () Bool)

(assert (=> b!7070498 (=> res!2887445 e!4250776)))

(assert (=> b!7070498 (= res!2887445 (not (= (derivationStepZipper!3088 lt!2544672 (h!74765 s!7408)) lt!2544658)))))

(assert (=> b!7070498 (= (flatMap!2564 lt!2544672 lambda!425174) (derivationStepZipperUp!2222 lt!2544667 (h!74765 s!7408)))))

(declare-fun lt!2544679 () Unit!161986)

(assert (=> b!7070498 (= lt!2544679 (lemmaFlatMapOnSingletonSet!2073 lt!2544672 lt!2544667 lambda!425174))))

(assert (=> b!7070498 (= lt!2544658 (derivationStepZipperUp!2222 lt!2544667 (h!74765 s!7408)))))

(declare-fun lt!2544674 () Unit!161986)

(assert (=> b!7070498 (= lt!2544674 (lemmaConcatPreservesForall!949 (exprs!7134 lt!2544681) (exprs!7134 ct2!306) lambda!425173))))

(declare-fun b!7070499 () Bool)

(declare-fun res!2887444 () Bool)

(assert (=> b!7070499 (=> (not res!2887444) (not e!4250775))))

(assert (=> b!7070499 (= res!2887444 (is-Cons!68317 s!7408))))

(declare-fun b!7070500 () Bool)

(declare-fun e!4250773 () Bool)

(assert (=> b!7070500 (= e!4250763 e!4250773)))

(declare-fun res!2887452 () Bool)

(assert (=> b!7070500 (=> res!2887452 e!4250773)))

(declare-fun lt!2544662 () (Set Context!13268))

(assert (=> b!7070500 (= res!2887452 (not (= lt!2544687 lt!2544662)))))

(assert (=> b!7070500 (= lt!2544662 (set.union lt!2544688 lt!2544663))))

(assert (=> b!7070500 (= lt!2544663 (derivationStepZipperUp!2222 lt!2544652 (h!74765 s!7408)))))

(declare-fun b!7070501 () Bool)

(declare-fun res!2887455 () Bool)

(assert (=> b!7070501 (=> res!2887455 e!4250766)))

(assert (=> b!7070501 (= res!2887455 (not (matchZipper!3178 lt!2544660 (_2!37428 lt!2544656))))))

(assert (=> b!7070502 (= e!4250775 (not e!4250779))))

(declare-fun res!2887463 () Bool)

(assert (=> b!7070502 (=> res!2887463 e!4250779)))

(assert (=> b!7070502 (= res!2887463 (not (matchZipper!3178 lt!2544697 s!7408)))))

(assert (=> b!7070502 (= lt!2544697 (set.insert lt!2544695 (as set.empty (Set Context!13268))))))

(declare-fun lambda!425171 () Int)

(declare-fun getWitness!1736 ((Set Context!13268) Int) Context!13268)

(assert (=> b!7070502 (= lt!2544695 (getWitness!1736 lt!2544676 lambda!425171))))

(declare-datatypes ((List!68442 0))(
  ( (Nil!68318) (Cons!68318 (h!74766 Context!13268) (t!382225 List!68442)) )
))
(declare-fun lt!2544657 () List!68442)

(declare-fun exists!3679 (List!68442 Int) Bool)

(assert (=> b!7070502 (exists!3679 lt!2544657 lambda!425171)))

(declare-fun lt!2544691 () Unit!161986)

(declare-fun lemmaZipperMatchesExistsMatchingContext!559 (List!68442 List!68441) Unit!161986)

(assert (=> b!7070502 (= lt!2544691 (lemmaZipperMatchesExistsMatchingContext!559 lt!2544657 s!7408))))

(declare-fun toList!10979 ((Set Context!13268)) List!68442)

(assert (=> b!7070502 (= lt!2544657 (toList!10979 lt!2544676))))

(declare-fun b!7070503 () Bool)

(declare-fun res!2887451 () Bool)

(assert (=> b!7070503 (=> res!2887451 e!4250762)))

(assert (=> b!7070503 (= res!2887451 (not lt!2544673))))

(declare-fun b!7070504 () Bool)

(assert (=> b!7070504 (= e!4250773 e!4250774)))

(declare-fun res!2887443 () Bool)

(assert (=> b!7070504 (=> res!2887443 e!4250774)))

(assert (=> b!7070504 (= res!2887443 e!4250765)))

(declare-fun res!2887464 () Bool)

(assert (=> b!7070504 (=> (not res!2887464) (not e!4250765))))

(assert (=> b!7070504 (= res!2887464 (not lt!2544677))))

(assert (=> b!7070504 (= lt!2544677 (matchZipper!3178 lt!2544693 lt!2544666))))

(assert (=> b!7070504 (= lt!2544666 (Cons!68317 (h!74765 s!7408) (_1!37428 lt!2544656)))))

(assert (=> b!7070504 (matchZipper!3178 lt!2544662 (_1!37428 lt!2544656))))

(declare-fun lt!2544685 () Unit!161986)

(assert (=> b!7070504 (= lt!2544685 (lemmaZipperConcatMatchesSameAsBothZippers!1651 lt!2544688 lt!2544663 (_1!37428 lt!2544656)))))

(declare-fun b!7070505 () Bool)

(assert (=> b!7070505 (= e!4250777 (not (matchZipper!3178 lt!2544668 (t!382224 s!7408))))))

(declare-fun lt!2544686 () Unit!161986)

(assert (=> b!7070505 (= lt!2544686 (lemmaConcatPreservesForall!949 lt!2544678 (exprs!7134 ct2!306) lambda!425173))))

(assert (=> b!7070506 (= e!4250779 e!4250770)))

(declare-fun res!2887447 () Bool)

(assert (=> b!7070506 (=> res!2887447 e!4250770)))

(assert (=> b!7070506 (= res!2887447 (or (not (= lt!2544667 lt!2544695)) (not (set.member lt!2544681 z1!570))))))

(declare-fun ++!15760 (List!68440 List!68440) List!68440)

(assert (=> b!7070506 (= lt!2544667 (Context!13269 (++!15760 (exprs!7134 lt!2544681) (exprs!7134 ct2!306))))))

(declare-fun lt!2544655 () Unit!161986)

(assert (=> b!7070506 (= lt!2544655 (lemmaConcatPreservesForall!949 (exprs!7134 lt!2544681) (exprs!7134 ct2!306) lambda!425173))))

(declare-fun lambda!425172 () Int)

(declare-fun mapPost2!467 ((Set Context!13268) Int Context!13268) Context!13268)

(assert (=> b!7070506 (= lt!2544681 (mapPost2!467 z1!570 lambda!425172 lt!2544695))))

(declare-fun b!7070507 () Bool)

(assert (=> b!7070507 (= e!4250767 e!4250768)))

(declare-fun res!2887449 () Bool)

(assert (=> b!7070507 (=> res!2887449 e!4250768)))

(assert (=> b!7070507 (= res!2887449 (not (= lt!2544658 lt!2544682)))))

(assert (=> b!7070507 (= lt!2544682 (set.union lt!2544690 lt!2544668))))

(declare-fun lt!2544665 () Context!13268)

(assert (=> b!7070507 (= lt!2544668 (derivationStepZipperUp!2222 lt!2544665 (h!74765 s!7408)))))

(assert (=> b!7070507 (= lt!2544690 (derivationStepZipperDown!2272 (h!74764 (exprs!7134 lt!2544681)) lt!2544665 (h!74765 s!7408)))))

(assert (=> b!7070507 (= lt!2544665 (Context!13269 (++!15760 lt!2544678 (exprs!7134 ct2!306))))))

(declare-fun lt!2544653 () Unit!161986)

(assert (=> b!7070507 (= lt!2544653 (lemmaConcatPreservesForall!949 lt!2544678 (exprs!7134 ct2!306) lambda!425173))))

(declare-fun lt!2544684 () Unit!161986)

(assert (=> b!7070507 (= lt!2544684 (lemmaConcatPreservesForall!949 lt!2544678 (exprs!7134 ct2!306) lambda!425173))))

(declare-fun b!7070508 () Bool)

(assert (=> b!7070508 (= e!4250771 (matchZipper!3178 lt!2544668 (t!382224 s!7408)))))

(assert (= (and start!686762 res!2887458) b!7070499))

(assert (= (and b!7070499 res!2887444) b!7070502))

(assert (= (and b!7070502 (not res!2887463)) b!7070483))

(assert (= (and b!7070483 (not res!2887457)) b!7070506))

(assert (= (and b!7070506 (not res!2887447)) b!7070494))

(assert (= (and b!7070494 (not res!2887448)) b!7070498))

(assert (= (and b!7070498 (not res!2887445)) b!7070481))

(assert (= (and b!7070481 (not res!2887442)) b!7070482))

(assert (= (and b!7070482 (not res!2887460)) b!7070480))

(assert (= (and b!7070480 (not res!2887454)) b!7070507))

(assert (= (and b!7070507 (not res!2887449)) b!7070492))

(assert (= (and b!7070492 (not res!2887456)) b!7070508))

(assert (= (and b!7070492 res!2887461) b!7070505))

(assert (= (and b!7070492 (not res!2887446)) b!7070503))

(assert (= (and b!7070503 (not res!2887451)) b!7070485))

(assert (= (and b!7070485 (not res!2887450)) b!7070488))

(assert (= (and b!7070488 (not res!2887459)) b!7070484))

(assert (= (and b!7070484 (not res!2887453)) b!7070501))

(assert (= (and b!7070501 (not res!2887455)) b!7070491))

(assert (= (and b!7070491 (not res!2887467)) b!7070496))

(assert (= (and b!7070496 (not res!2887462)) b!7070500))

(assert (= (and b!7070500 (not res!2887452)) b!7070504))

(assert (= (and b!7070504 res!2887464) b!7070487))

(assert (= (and b!7070504 (not res!2887443)) b!7070493))

(assert (= (and b!7070493 (not res!2887466)) b!7070490))

(assert (= (and b!7070490 (not res!2887465)) b!7070489))

(assert (= (and start!686762 condSetEmpty!50225) setIsEmpty!50225))

(assert (= (and start!686762 (not condSetEmpty!50225)) setNonEmpty!50225))

(assert (= setNonEmpty!50225 b!7070497))

(assert (= start!686762 b!7070495))

(assert (= (and start!686762 (is-Cons!68317 s!7408)) b!7070486))

(declare-fun m!7795670 () Bool)

(assert (=> setNonEmpty!50225 m!7795670))

(declare-fun m!7795672 () Bool)

(assert (=> b!7070489 m!7795672))

(declare-fun m!7795674 () Bool)

(assert (=> b!7070501 m!7795674))

(declare-fun m!7795676 () Bool)

(assert (=> b!7070508 m!7795676))

(declare-fun m!7795678 () Bool)

(assert (=> b!7070502 m!7795678))

(declare-fun m!7795680 () Bool)

(assert (=> b!7070502 m!7795680))

(declare-fun m!7795682 () Bool)

(assert (=> b!7070502 m!7795682))

(declare-fun m!7795684 () Bool)

(assert (=> b!7070502 m!7795684))

(declare-fun m!7795686 () Bool)

(assert (=> b!7070502 m!7795686))

(declare-fun m!7795688 () Bool)

(assert (=> b!7070502 m!7795688))

(declare-fun m!7795690 () Bool)

(assert (=> b!7070496 m!7795690))

(declare-fun m!7795692 () Bool)

(assert (=> b!7070496 m!7795692))

(declare-fun m!7795694 () Bool)

(assert (=> b!7070496 m!7795694))

(declare-fun m!7795696 () Bool)

(assert (=> b!7070496 m!7795696))

(declare-fun m!7795698 () Bool)

(assert (=> b!7070496 m!7795698))

(declare-fun m!7795700 () Bool)

(assert (=> b!7070488 m!7795700))

(assert (=> b!7070488 m!7795700))

(declare-fun m!7795702 () Bool)

(assert (=> b!7070500 m!7795702))

(declare-fun m!7795704 () Bool)

(assert (=> b!7070504 m!7795704))

(declare-fun m!7795706 () Bool)

(assert (=> b!7070504 m!7795706))

(declare-fun m!7795708 () Bool)

(assert (=> b!7070504 m!7795708))

(declare-fun m!7795710 () Bool)

(assert (=> b!7070494 m!7795710))

(declare-fun m!7795712 () Bool)

(assert (=> b!7070494 m!7795712))

(declare-fun m!7795714 () Bool)

(assert (=> start!686762 m!7795714))

(declare-fun m!7795716 () Bool)

(assert (=> start!686762 m!7795716))

(declare-fun m!7795718 () Bool)

(assert (=> start!686762 m!7795718))

(assert (=> b!7070505 m!7795676))

(assert (=> b!7070505 m!7795700))

(declare-fun m!7795720 () Bool)

(assert (=> b!7070484 m!7795720))

(declare-fun m!7795722 () Bool)

(assert (=> b!7070484 m!7795722))

(declare-fun m!7795724 () Bool)

(assert (=> b!7070484 m!7795724))

(declare-fun m!7795726 () Bool)

(assert (=> b!7070484 m!7795726))

(declare-fun m!7795728 () Bool)

(assert (=> b!7070484 m!7795728))

(declare-fun m!7795730 () Bool)

(assert (=> b!7070484 m!7795730))

(declare-fun m!7795732 () Bool)

(assert (=> b!7070484 m!7795732))

(assert (=> b!7070484 m!7795700))

(declare-fun m!7795734 () Bool)

(assert (=> b!7070484 m!7795734))

(assert (=> b!7070484 m!7795700))

(declare-fun m!7795736 () Bool)

(assert (=> b!7070484 m!7795736))

(assert (=> b!7070485 m!7795676))

(assert (=> b!7070485 m!7795700))

(declare-fun m!7795738 () Bool)

(assert (=> b!7070506 m!7795738))

(declare-fun m!7795740 () Bool)

(assert (=> b!7070506 m!7795740))

(assert (=> b!7070506 m!7795712))

(declare-fun m!7795742 () Bool)

(assert (=> b!7070506 m!7795742))

(declare-fun m!7795744 () Bool)

(assert (=> b!7070507 m!7795744))

(declare-fun m!7795746 () Bool)

(assert (=> b!7070507 m!7795746))

(declare-fun m!7795748 () Bool)

(assert (=> b!7070507 m!7795748))

(assert (=> b!7070507 m!7795700))

(assert (=> b!7070507 m!7795700))

(declare-fun m!7795750 () Bool)

(assert (=> b!7070491 m!7795750))

(declare-fun m!7795752 () Bool)

(assert (=> b!7070498 m!7795752))

(assert (=> b!7070498 m!7795712))

(declare-fun m!7795754 () Bool)

(assert (=> b!7070498 m!7795754))

(declare-fun m!7795756 () Bool)

(assert (=> b!7070498 m!7795756))

(declare-fun m!7795758 () Bool)

(assert (=> b!7070498 m!7795758))

(declare-fun m!7795760 () Bool)

(assert (=> b!7070487 m!7795760))

(assert (=> b!7070492 m!7795700))

(assert (=> b!7070492 m!7795700))

(declare-fun m!7795762 () Bool)

(assert (=> b!7070492 m!7795762))

(assert (=> b!7070492 m!7795700))

(declare-fun m!7795764 () Bool)

(assert (=> b!7070492 m!7795764))

(declare-fun m!7795766 () Bool)

(assert (=> b!7070492 m!7795766))

(declare-fun m!7795768 () Bool)

(assert (=> b!7070492 m!7795768))

(declare-fun m!7795770 () Bool)

(assert (=> b!7070480 m!7795770))

(declare-fun m!7795772 () Bool)

(assert (=> b!7070480 m!7795772))

(declare-fun m!7795774 () Bool)

(assert (=> b!7070482 m!7795774))

(declare-fun m!7795776 () Bool)

(assert (=> b!7070490 m!7795776))

(declare-fun m!7795778 () Bool)

(assert (=> b!7070483 m!7795778))

(push 1)

(assert (not b!7070500))

(assert (not b!7070505))

(assert (not b!7070488))

(assert (not b!7070480))

(assert (not b!7070498))

(assert (not b!7070506))

(assert (not setNonEmpty!50225))

(assert (not b!7070486))

(assert (not b!7070502))

(assert (not b!7070487))

(assert (not b!7070485))

(assert (not b!7070490))

(assert (not b!7070497))

(assert (not b!7070495))

(assert (not b!7070492))

(assert (not b!7070484))

(assert (not b!7070504))

(assert (not b!7070482))

(assert (not b!7070494))

(assert (not b!7070489))

(assert (not b!7070496))

(assert (not b!7070501))

(assert (not b!7070508))

(assert (not b!7070507))

(assert (not start!686762))

(assert tp_is_empty!44501)

(assert (not b!7070491))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!2211085 () Bool)

(declare-fun nullableFct!2810 (Regex!17638) Bool)

(assert (=> d!2211085 (= (nullable!7321 (h!74764 (exprs!7134 lt!2544681))) (nullableFct!2810 (h!74764 (exprs!7134 lt!2544681))))))

(declare-fun bs!1880507 () Bool)

(assert (= bs!1880507 d!2211085))

(declare-fun m!7795890 () Bool)

(assert (=> bs!1880507 m!7795890))

(assert (=> b!7070480 d!2211085))

(declare-fun d!2211087 () Bool)

(assert (=> d!2211087 (= (tail!13817 (exprs!7134 lt!2544681)) (t!382223 (exprs!7134 lt!2544681)))))

(assert (=> b!7070480 d!2211087))

(declare-fun call!642615 () (Set Context!13268))

(declare-fun b!7070618 () Bool)

(declare-fun e!4250848 () (Set Context!13268))

(assert (=> b!7070618 (= e!4250848 (set.union call!642615 (derivationStepZipperUp!2222 (Context!13269 (t!382223 (exprs!7134 lt!2544652))) (h!74765 s!7408))))))

(declare-fun b!7070619 () Bool)

(declare-fun e!4250850 () Bool)

(assert (=> b!7070619 (= e!4250850 (nullable!7321 (h!74764 (exprs!7134 lt!2544652))))))

(declare-fun b!7070620 () Bool)

(declare-fun e!4250849 () (Set Context!13268))

(assert (=> b!7070620 (= e!4250848 e!4250849)))

(declare-fun c!1318816 () Bool)

(assert (=> b!7070620 (= c!1318816 (is-Cons!68316 (exprs!7134 lt!2544652)))))

(declare-fun b!7070621 () Bool)

(assert (=> b!7070621 (= e!4250849 (as set.empty (Set Context!13268)))))

(declare-fun bm!642610 () Bool)

(assert (=> bm!642610 (= call!642615 (derivationStepZipperDown!2272 (h!74764 (exprs!7134 lt!2544652)) (Context!13269 (t!382223 (exprs!7134 lt!2544652))) (h!74765 s!7408)))))

(declare-fun b!7070622 () Bool)

(assert (=> b!7070622 (= e!4250849 call!642615)))

(declare-fun d!2211089 () Bool)

(declare-fun c!1318815 () Bool)

(assert (=> d!2211089 (= c!1318815 e!4250850)))

(declare-fun res!2887549 () Bool)

(assert (=> d!2211089 (=> (not res!2887549) (not e!4250850))))

(assert (=> d!2211089 (= res!2887549 (is-Cons!68316 (exprs!7134 lt!2544652)))))

(assert (=> d!2211089 (= (derivationStepZipperUp!2222 lt!2544652 (h!74765 s!7408)) e!4250848)))

(assert (= (and d!2211089 res!2887549) b!7070619))

(assert (= (and d!2211089 c!1318815) b!7070618))

(assert (= (and d!2211089 (not c!1318815)) b!7070620))

(assert (= (and b!7070620 c!1318816) b!7070622))

(assert (= (and b!7070620 (not c!1318816)) b!7070621))

(assert (= (or b!7070618 b!7070622) bm!642610))

(declare-fun m!7795892 () Bool)

(assert (=> b!7070618 m!7795892))

(declare-fun m!7795894 () Bool)

(assert (=> b!7070619 m!7795894))

(declare-fun m!7795896 () Bool)

(assert (=> bm!642610 m!7795896))

(assert (=> b!7070500 d!2211089))

(declare-fun d!2211091 () Bool)

(declare-fun c!1318819 () Bool)

(declare-fun isEmpty!39871 (List!68441) Bool)

(assert (=> d!2211091 (= c!1318819 (isEmpty!39871 (_2!37428 lt!2544656)))))

(declare-fun e!4250853 () Bool)

(assert (=> d!2211091 (= (matchZipper!3178 lt!2544660 (_2!37428 lt!2544656)) e!4250853)))

(declare-fun b!7070627 () Bool)

(declare-fun nullableZipper!2695 ((Set Context!13268)) Bool)

(assert (=> b!7070627 (= e!4250853 (nullableZipper!2695 lt!2544660))))

(declare-fun b!7070628 () Bool)

(declare-fun head!14403 (List!68441) C!35546)

(declare-fun tail!13819 (List!68441) List!68441)

(assert (=> b!7070628 (= e!4250853 (matchZipper!3178 (derivationStepZipper!3088 lt!2544660 (head!14403 (_2!37428 lt!2544656))) (tail!13819 (_2!37428 lt!2544656))))))

(assert (= (and d!2211091 c!1318819) b!7070627))

(assert (= (and d!2211091 (not c!1318819)) b!7070628))

(declare-fun m!7795898 () Bool)

(assert (=> d!2211091 m!7795898))

(declare-fun m!7795900 () Bool)

(assert (=> b!7070627 m!7795900))

(declare-fun m!7795902 () Bool)

(assert (=> b!7070628 m!7795902))

(assert (=> b!7070628 m!7795902))

(declare-fun m!7795904 () Bool)

(assert (=> b!7070628 m!7795904))

(declare-fun m!7795906 () Bool)

(assert (=> b!7070628 m!7795906))

(assert (=> b!7070628 m!7795904))

(assert (=> b!7070628 m!7795906))

(declare-fun m!7795908 () Bool)

(assert (=> b!7070628 m!7795908))

(assert (=> b!7070501 d!2211091))

(declare-fun d!2211093 () Bool)

(assert (=> d!2211093 (= (isEmpty!39869 (exprs!7134 lt!2544681)) (is-Nil!68316 (exprs!7134 lt!2544681)))))

(assert (=> b!7070482 d!2211093))

(declare-fun d!2211095 () Bool)

(declare-fun choose!54176 ((Set Context!13268) Int) (Set Context!13268))

(assert (=> d!2211095 (= (flatMap!2564 lt!2544672 lambda!425174) (choose!54176 lt!2544672 lambda!425174))))

(declare-fun bs!1880508 () Bool)

(assert (= bs!1880508 d!2211095))

(declare-fun m!7795910 () Bool)

(assert (=> bs!1880508 m!7795910))

(assert (=> b!7070498 d!2211095))

(declare-fun b!7070629 () Bool)

(declare-fun e!4250854 () (Set Context!13268))

(declare-fun call!642616 () (Set Context!13268))

(assert (=> b!7070629 (= e!4250854 (set.union call!642616 (derivationStepZipperUp!2222 (Context!13269 (t!382223 (exprs!7134 lt!2544667))) (h!74765 s!7408))))))

(declare-fun b!7070630 () Bool)

(declare-fun e!4250856 () Bool)

(assert (=> b!7070630 (= e!4250856 (nullable!7321 (h!74764 (exprs!7134 lt!2544667))))))

(declare-fun b!7070631 () Bool)

(declare-fun e!4250855 () (Set Context!13268))

(assert (=> b!7070631 (= e!4250854 e!4250855)))

(declare-fun c!1318821 () Bool)

(assert (=> b!7070631 (= c!1318821 (is-Cons!68316 (exprs!7134 lt!2544667)))))

(declare-fun b!7070632 () Bool)

(assert (=> b!7070632 (= e!4250855 (as set.empty (Set Context!13268)))))

(declare-fun bm!642611 () Bool)

(assert (=> bm!642611 (= call!642616 (derivationStepZipperDown!2272 (h!74764 (exprs!7134 lt!2544667)) (Context!13269 (t!382223 (exprs!7134 lt!2544667))) (h!74765 s!7408)))))

(declare-fun b!7070633 () Bool)

(assert (=> b!7070633 (= e!4250855 call!642616)))

(declare-fun d!2211097 () Bool)

(declare-fun c!1318820 () Bool)

(assert (=> d!2211097 (= c!1318820 e!4250856)))

(declare-fun res!2887550 () Bool)

(assert (=> d!2211097 (=> (not res!2887550) (not e!4250856))))

(assert (=> d!2211097 (= res!2887550 (is-Cons!68316 (exprs!7134 lt!2544667)))))

(assert (=> d!2211097 (= (derivationStepZipperUp!2222 lt!2544667 (h!74765 s!7408)) e!4250854)))

(assert (= (and d!2211097 res!2887550) b!7070630))

(assert (= (and d!2211097 c!1318820) b!7070629))

(assert (= (and d!2211097 (not c!1318820)) b!7070631))

(assert (= (and b!7070631 c!1318821) b!7070633))

(assert (= (and b!7070631 (not c!1318821)) b!7070632))

(assert (= (or b!7070629 b!7070633) bm!642611))

(declare-fun m!7795912 () Bool)

(assert (=> b!7070629 m!7795912))

(declare-fun m!7795914 () Bool)

(assert (=> b!7070630 m!7795914))

(declare-fun m!7795916 () Bool)

(assert (=> bm!642611 m!7795916))

(assert (=> b!7070498 d!2211097))

(declare-fun d!2211099 () Bool)

(declare-fun forall!16589 (List!68440 Int) Bool)

(assert (=> d!2211099 (forall!16589 (++!15760 (exprs!7134 lt!2544681) (exprs!7134 ct2!306)) lambda!425173)))

(declare-fun lt!2544847 () Unit!161986)

(declare-fun choose!54177 (List!68440 List!68440 Int) Unit!161986)

(assert (=> d!2211099 (= lt!2544847 (choose!54177 (exprs!7134 lt!2544681) (exprs!7134 ct2!306) lambda!425173))))

(assert (=> d!2211099 (forall!16589 (exprs!7134 lt!2544681) lambda!425173)))

(assert (=> d!2211099 (= (lemmaConcatPreservesForall!949 (exprs!7134 lt!2544681) (exprs!7134 ct2!306) lambda!425173) lt!2544847)))

(declare-fun bs!1880509 () Bool)

(assert (= bs!1880509 d!2211099))

(assert (=> bs!1880509 m!7795740))

(assert (=> bs!1880509 m!7795740))

(declare-fun m!7795918 () Bool)

(assert (=> bs!1880509 m!7795918))

(declare-fun m!7795920 () Bool)

(assert (=> bs!1880509 m!7795920))

(declare-fun m!7795922 () Bool)

(assert (=> bs!1880509 m!7795922))

(assert (=> b!7070498 d!2211099))

(declare-fun d!2211101 () Bool)

(declare-fun dynLambda!27783 (Int Context!13268) (Set Context!13268))

(assert (=> d!2211101 (= (flatMap!2564 lt!2544672 lambda!425174) (dynLambda!27783 lambda!425174 lt!2544667))))

(declare-fun lt!2544850 () Unit!161986)

(declare-fun choose!54178 ((Set Context!13268) Context!13268 Int) Unit!161986)

(assert (=> d!2211101 (= lt!2544850 (choose!54178 lt!2544672 lt!2544667 lambda!425174))))

(assert (=> d!2211101 (= lt!2544672 (set.insert lt!2544667 (as set.empty (Set Context!13268))))))

(assert (=> d!2211101 (= (lemmaFlatMapOnSingletonSet!2073 lt!2544672 lt!2544667 lambda!425174) lt!2544850)))

(declare-fun b_lambda!269927 () Bool)

(assert (=> (not b_lambda!269927) (not d!2211101)))

(declare-fun bs!1880510 () Bool)

(assert (= bs!1880510 d!2211101))

(assert (=> bs!1880510 m!7795752))

(declare-fun m!7795924 () Bool)

(assert (=> bs!1880510 m!7795924))

(declare-fun m!7795926 () Bool)

(assert (=> bs!1880510 m!7795926))

(assert (=> bs!1880510 m!7795710))

(assert (=> b!7070498 d!2211101))

(declare-fun bs!1880511 () Bool)

(declare-fun d!2211103 () Bool)

(assert (= bs!1880511 (and d!2211103 b!7070498)))

(declare-fun lambda!425221 () Int)

(assert (=> bs!1880511 (= lambda!425221 lambda!425174)))

(assert (=> d!2211103 true))

(assert (=> d!2211103 (= (derivationStepZipper!3088 lt!2544672 (h!74765 s!7408)) (flatMap!2564 lt!2544672 lambda!425221))))

(declare-fun bs!1880512 () Bool)

(assert (= bs!1880512 d!2211103))

(declare-fun m!7795928 () Bool)

(assert (=> bs!1880512 m!7795928))

(assert (=> b!7070498 d!2211103))

(declare-fun d!2211105 () Bool)

(assert (=> d!2211105 (= (flatMap!2564 lt!2544693 lambda!425174) (choose!54176 lt!2544693 lambda!425174))))

(declare-fun bs!1880513 () Bool)

(assert (= bs!1880513 d!2211105))

(declare-fun m!7795930 () Bool)

(assert (=> bs!1880513 m!7795930))

(assert (=> b!7070496 d!2211105))

(declare-fun call!642617 () (Set Context!13268))

(declare-fun e!4250857 () (Set Context!13268))

(declare-fun b!7070636 () Bool)

(assert (=> b!7070636 (= e!4250857 (set.union call!642617 (derivationStepZipperUp!2222 (Context!13269 (t!382223 (exprs!7134 lt!2544681))) (h!74765 s!7408))))))

(declare-fun b!7070637 () Bool)

(declare-fun e!4250859 () Bool)

(assert (=> b!7070637 (= e!4250859 (nullable!7321 (h!74764 (exprs!7134 lt!2544681))))))

(declare-fun b!7070638 () Bool)

(declare-fun e!4250858 () (Set Context!13268))

(assert (=> b!7070638 (= e!4250857 e!4250858)))

(declare-fun c!1318825 () Bool)

(assert (=> b!7070638 (= c!1318825 (is-Cons!68316 (exprs!7134 lt!2544681)))))

(declare-fun b!7070639 () Bool)

(assert (=> b!7070639 (= e!4250858 (as set.empty (Set Context!13268)))))

(declare-fun bm!642612 () Bool)

(assert (=> bm!642612 (= call!642617 (derivationStepZipperDown!2272 (h!74764 (exprs!7134 lt!2544681)) (Context!13269 (t!382223 (exprs!7134 lt!2544681))) (h!74765 s!7408)))))

(declare-fun b!7070640 () Bool)

(assert (=> b!7070640 (= e!4250858 call!642617)))

(declare-fun d!2211107 () Bool)

(declare-fun c!1318824 () Bool)

(assert (=> d!2211107 (= c!1318824 e!4250859)))

(declare-fun res!2887552 () Bool)

(assert (=> d!2211107 (=> (not res!2887552) (not e!4250859))))

(assert (=> d!2211107 (= res!2887552 (is-Cons!68316 (exprs!7134 lt!2544681)))))

(assert (=> d!2211107 (= (derivationStepZipperUp!2222 lt!2544681 (h!74765 s!7408)) e!4250857)))

(assert (= (and d!2211107 res!2887552) b!7070637))

(assert (= (and d!2211107 c!1318824) b!7070636))

(assert (= (and d!2211107 (not c!1318824)) b!7070638))

(assert (= (and b!7070638 c!1318825) b!7070640))

(assert (= (and b!7070638 (not c!1318825)) b!7070639))

(assert (= (or b!7070636 b!7070640) bm!642612))

(declare-fun m!7795932 () Bool)

(assert (=> b!7070636 m!7795932))

(assert (=> b!7070637 m!7795770))

(declare-fun m!7795934 () Bool)

(assert (=> bm!642612 m!7795934))

(assert (=> b!7070496 d!2211107))

(declare-fun d!2211109 () Bool)

(assert (=> d!2211109 (= (flatMap!2564 lt!2544693 lambda!425174) (dynLambda!27783 lambda!425174 lt!2544681))))

(declare-fun lt!2544851 () Unit!161986)

(assert (=> d!2211109 (= lt!2544851 (choose!54178 lt!2544693 lt!2544681 lambda!425174))))

(assert (=> d!2211109 (= lt!2544693 (set.insert lt!2544681 (as set.empty (Set Context!13268))))))

(assert (=> d!2211109 (= (lemmaFlatMapOnSingletonSet!2073 lt!2544693 lt!2544681 lambda!425174) lt!2544851)))

(declare-fun b_lambda!269929 () Bool)

(assert (=> (not b_lambda!269929) (not d!2211109)))

(declare-fun bs!1880514 () Bool)

(assert (= bs!1880514 d!2211109))

(assert (=> bs!1880514 m!7795694))

(declare-fun m!7795936 () Bool)

(assert (=> bs!1880514 m!7795936))

(declare-fun m!7795938 () Bool)

(assert (=> bs!1880514 m!7795938))

(assert (=> bs!1880514 m!7795698))

(assert (=> b!7070496 d!2211109))

(declare-fun bs!1880515 () Bool)

(declare-fun d!2211111 () Bool)

(assert (= bs!1880515 (and d!2211111 b!7070498)))

(declare-fun lambda!425222 () Int)

(assert (=> bs!1880515 (= lambda!425222 lambda!425174)))

(declare-fun bs!1880516 () Bool)

(assert (= bs!1880516 (and d!2211111 d!2211103)))

(assert (=> bs!1880516 (= lambda!425222 lambda!425221)))

(assert (=> d!2211111 true))

(assert (=> d!2211111 (= (derivationStepZipper!3088 lt!2544693 (h!74765 s!7408)) (flatMap!2564 lt!2544693 lambda!425222))))

(declare-fun bs!1880517 () Bool)

(assert (= bs!1880517 d!2211111))

(declare-fun m!7795940 () Bool)

(assert (=> bs!1880517 m!7795940))

(assert (=> b!7070496 d!2211111))

(assert (=> b!7070494 d!2211099))

(declare-fun d!2211113 () Bool)

(declare-fun e!4250865 () Bool)

(assert (=> d!2211113 e!4250865))

(declare-fun res!2887557 () Bool)

(assert (=> d!2211113 (=> (not res!2887557) (not e!4250865))))

(declare-fun lt!2544854 () List!68441)

(declare-fun content!13779 (List!68441) (Set C!35546))

(assert (=> d!2211113 (= res!2887557 (= (content!13779 lt!2544854) (set.union (content!13779 lt!2544666) (content!13779 (_2!37428 lt!2544656)))))))

(declare-fun e!4250864 () List!68441)

(assert (=> d!2211113 (= lt!2544854 e!4250864)))

(declare-fun c!1318828 () Bool)

(assert (=> d!2211113 (= c!1318828 (is-Nil!68317 lt!2544666))))

(assert (=> d!2211113 (= (++!15759 lt!2544666 (_2!37428 lt!2544656)) lt!2544854)))

(declare-fun b!7070649 () Bool)

(assert (=> b!7070649 (= e!4250864 (_2!37428 lt!2544656))))

(declare-fun b!7070650 () Bool)

(assert (=> b!7070650 (= e!4250864 (Cons!68317 (h!74765 lt!2544666) (++!15759 (t!382224 lt!2544666) (_2!37428 lt!2544656))))))

(declare-fun b!7070652 () Bool)

(assert (=> b!7070652 (= e!4250865 (or (not (= (_2!37428 lt!2544656) Nil!68317)) (= lt!2544854 lt!2544666)))))

(declare-fun b!7070651 () Bool)

(declare-fun res!2887558 () Bool)

(assert (=> b!7070651 (=> (not res!2887558) (not e!4250865))))

(declare-fun size!41206 (List!68441) Int)

(assert (=> b!7070651 (= res!2887558 (= (size!41206 lt!2544854) (+ (size!41206 lt!2544666) (size!41206 (_2!37428 lt!2544656)))))))

(assert (= (and d!2211113 c!1318828) b!7070649))

(assert (= (and d!2211113 (not c!1318828)) b!7070650))

(assert (= (and d!2211113 res!2887557) b!7070651))

(assert (= (and b!7070651 res!2887558) b!7070652))

(declare-fun m!7795942 () Bool)

(assert (=> d!2211113 m!7795942))

(declare-fun m!7795944 () Bool)

(assert (=> d!2211113 m!7795944))

(declare-fun m!7795946 () Bool)

(assert (=> d!2211113 m!7795946))

(declare-fun m!7795948 () Bool)

(assert (=> b!7070650 m!7795948))

(declare-fun m!7795950 () Bool)

(assert (=> b!7070651 m!7795950))

(declare-fun m!7795952 () Bool)

(assert (=> b!7070651 m!7795952))

(declare-fun m!7795954 () Bool)

(assert (=> b!7070651 m!7795954))

(assert (=> b!7070490 d!2211113))

(declare-fun d!2211115 () Bool)

(declare-fun c!1318829 () Bool)

(assert (=> d!2211115 (= c!1318829 (isEmpty!39871 s!7408))))

(declare-fun e!4250866 () Bool)

(assert (=> d!2211115 (= (matchZipper!3178 lt!2544676 s!7408) e!4250866)))

(declare-fun b!7070653 () Bool)

(assert (=> b!7070653 (= e!4250866 (nullableZipper!2695 lt!2544676))))

(declare-fun b!7070654 () Bool)

(assert (=> b!7070654 (= e!4250866 (matchZipper!3178 (derivationStepZipper!3088 lt!2544676 (head!14403 s!7408)) (tail!13819 s!7408)))))

(assert (= (and d!2211115 c!1318829) b!7070653))

(assert (= (and d!2211115 (not c!1318829)) b!7070654))

(declare-fun m!7795956 () Bool)

(assert (=> d!2211115 m!7795956))

(declare-fun m!7795958 () Bool)

(assert (=> b!7070653 m!7795958))

(declare-fun m!7795960 () Bool)

(assert (=> b!7070654 m!7795960))

(assert (=> b!7070654 m!7795960))

(declare-fun m!7795962 () Bool)

(assert (=> b!7070654 m!7795962))

(declare-fun m!7795964 () Bool)

(assert (=> b!7070654 m!7795964))

(assert (=> b!7070654 m!7795962))

(assert (=> b!7070654 m!7795964))

(declare-fun m!7795966 () Bool)

(assert (=> b!7070654 m!7795966))

(assert (=> start!686762 d!2211115))

(declare-fun bs!1880518 () Bool)

(declare-fun d!2211117 () Bool)

(assert (= bs!1880518 (and d!2211117 b!7070506)))

(declare-fun lambda!425227 () Int)

(assert (=> bs!1880518 (= lambda!425227 lambda!425172)))

(assert (=> d!2211117 true))

(declare-fun map!15983 ((Set Context!13268) Int) (Set Context!13268))

(assert (=> d!2211117 (= (appendTo!759 z1!570 ct2!306) (map!15983 z1!570 lambda!425227))))

(declare-fun bs!1880519 () Bool)

(assert (= bs!1880519 d!2211117))

(declare-fun m!7795968 () Bool)

(assert (=> bs!1880519 m!7795968))

(assert (=> start!686762 d!2211117))

(declare-fun bs!1880520 () Bool)

(declare-fun d!2211119 () Bool)

(assert (= bs!1880520 (and d!2211119 b!7070506)))

(declare-fun lambda!425230 () Int)

(assert (=> bs!1880520 (= lambda!425230 lambda!425173)))

(assert (=> d!2211119 (= (inv!86955 ct2!306) (forall!16589 (exprs!7134 ct2!306) lambda!425230))))

(declare-fun bs!1880521 () Bool)

(assert (= bs!1880521 d!2211119))

(declare-fun m!7795970 () Bool)

(assert (=> bs!1880521 m!7795970))

(assert (=> start!686762 d!2211119))

(declare-fun d!2211121 () Bool)

(declare-fun e!4250868 () Bool)

(assert (=> d!2211121 e!4250868))

(declare-fun res!2887559 () Bool)

(assert (=> d!2211121 (=> (not res!2887559) (not e!4250868))))

(declare-fun lt!2544857 () List!68441)

(assert (=> d!2211121 (= res!2887559 (= (content!13779 lt!2544857) (set.union (content!13779 (_1!37428 lt!2544656)) (content!13779 (_2!37428 lt!2544656)))))))

(declare-fun e!4250867 () List!68441)

(assert (=> d!2211121 (= lt!2544857 e!4250867)))

(declare-fun c!1318831 () Bool)

(assert (=> d!2211121 (= c!1318831 (is-Nil!68317 (_1!37428 lt!2544656)))))

(assert (=> d!2211121 (= (++!15759 (_1!37428 lt!2544656) (_2!37428 lt!2544656)) lt!2544857)))

(declare-fun b!7070655 () Bool)

(assert (=> b!7070655 (= e!4250867 (_2!37428 lt!2544656))))

(declare-fun b!7070656 () Bool)

(assert (=> b!7070656 (= e!4250867 (Cons!68317 (h!74765 (_1!37428 lt!2544656)) (++!15759 (t!382224 (_1!37428 lt!2544656)) (_2!37428 lt!2544656))))))

(declare-fun b!7070658 () Bool)

(assert (=> b!7070658 (= e!4250868 (or (not (= (_2!37428 lt!2544656) Nil!68317)) (= lt!2544857 (_1!37428 lt!2544656))))))

(declare-fun b!7070657 () Bool)

(declare-fun res!2887560 () Bool)

(assert (=> b!7070657 (=> (not res!2887560) (not e!4250868))))

(assert (=> b!7070657 (= res!2887560 (= (size!41206 lt!2544857) (+ (size!41206 (_1!37428 lt!2544656)) (size!41206 (_2!37428 lt!2544656)))))))

(assert (= (and d!2211121 c!1318831) b!7070655))

(assert (= (and d!2211121 (not c!1318831)) b!7070656))

(assert (= (and d!2211121 res!2887559) b!7070657))

(assert (= (and b!7070657 res!2887560) b!7070658))

(declare-fun m!7795972 () Bool)

(assert (=> d!2211121 m!7795972))

(declare-fun m!7795974 () Bool)

(assert (=> d!2211121 m!7795974))

(assert (=> d!2211121 m!7795946))

(declare-fun m!7795976 () Bool)

(assert (=> b!7070656 m!7795976))

(declare-fun m!7795978 () Bool)

(assert (=> b!7070657 m!7795978))

(declare-fun m!7795980 () Bool)

(assert (=> b!7070657 m!7795980))

(assert (=> b!7070657 m!7795954))

(assert (=> b!7070491 d!2211121))

(declare-fun d!2211123 () Bool)

(assert (=> d!2211123 (forall!16589 (++!15760 lt!2544678 (exprs!7134 ct2!306)) lambda!425173)))

(declare-fun lt!2544858 () Unit!161986)

(assert (=> d!2211123 (= lt!2544858 (choose!54177 lt!2544678 (exprs!7134 ct2!306) lambda!425173))))

(assert (=> d!2211123 (forall!16589 lt!2544678 lambda!425173)))

(assert (=> d!2211123 (= (lemmaConcatPreservesForall!949 lt!2544678 (exprs!7134 ct2!306) lambda!425173) lt!2544858)))

(declare-fun bs!1880522 () Bool)

(assert (= bs!1880522 d!2211123))

(assert (=> bs!1880522 m!7795748))

(assert (=> bs!1880522 m!7795748))

(declare-fun m!7795982 () Bool)

(assert (=> bs!1880522 m!7795982))

(declare-fun m!7795984 () Bool)

(assert (=> bs!1880522 m!7795984))

(declare-fun m!7795986 () Bool)

(assert (=> bs!1880522 m!7795986))

(assert (=> b!7070492 d!2211123))

(declare-fun d!2211125 () Bool)

(declare-fun e!4250871 () Bool)

(assert (=> d!2211125 (= (matchZipper!3178 (set.union lt!2544690 lt!2544668) (t!382224 s!7408)) e!4250871)))

(declare-fun res!2887563 () Bool)

(assert (=> d!2211125 (=> res!2887563 e!4250871)))

(assert (=> d!2211125 (= res!2887563 (matchZipper!3178 lt!2544690 (t!382224 s!7408)))))

(declare-fun lt!2544861 () Unit!161986)

(declare-fun choose!54179 ((Set Context!13268) (Set Context!13268) List!68441) Unit!161986)

(assert (=> d!2211125 (= lt!2544861 (choose!54179 lt!2544690 lt!2544668 (t!382224 s!7408)))))

(assert (=> d!2211125 (= (lemmaZipperConcatMatchesSameAsBothZippers!1651 lt!2544690 lt!2544668 (t!382224 s!7408)) lt!2544861)))

(declare-fun b!7070661 () Bool)

(assert (=> b!7070661 (= e!4250871 (matchZipper!3178 lt!2544668 (t!382224 s!7408)))))

(assert (= (and d!2211125 (not res!2887563)) b!7070661))

(declare-fun m!7795988 () Bool)

(assert (=> d!2211125 m!7795988))

(assert (=> d!2211125 m!7795764))

(declare-fun m!7795990 () Bool)

(assert (=> d!2211125 m!7795990))

(assert (=> b!7070661 m!7795676))

(assert (=> b!7070492 d!2211125))

(declare-fun d!2211127 () Bool)

(declare-fun c!1318832 () Bool)

(assert (=> d!2211127 (= c!1318832 (isEmpty!39871 (t!382224 s!7408)))))

(declare-fun e!4250872 () Bool)

(assert (=> d!2211127 (= (matchZipper!3178 lt!2544658 (t!382224 s!7408)) e!4250872)))

(declare-fun b!7070662 () Bool)

(assert (=> b!7070662 (= e!4250872 (nullableZipper!2695 lt!2544658))))

(declare-fun b!7070663 () Bool)

(assert (=> b!7070663 (= e!4250872 (matchZipper!3178 (derivationStepZipper!3088 lt!2544658 (head!14403 (t!382224 s!7408))) (tail!13819 (t!382224 s!7408))))))

(assert (= (and d!2211127 c!1318832) b!7070662))

(assert (= (and d!2211127 (not c!1318832)) b!7070663))

(declare-fun m!7795992 () Bool)

(assert (=> d!2211127 m!7795992))

(declare-fun m!7795994 () Bool)

(assert (=> b!7070662 m!7795994))

(declare-fun m!7795996 () Bool)

(assert (=> b!7070663 m!7795996))

(assert (=> b!7070663 m!7795996))

(declare-fun m!7795998 () Bool)

(assert (=> b!7070663 m!7795998))

(declare-fun m!7796000 () Bool)

(assert (=> b!7070663 m!7796000))

(assert (=> b!7070663 m!7795998))

(assert (=> b!7070663 m!7796000))

(declare-fun m!7796002 () Bool)

(assert (=> b!7070663 m!7796002))

(assert (=> b!7070492 d!2211127))

(declare-fun d!2211129 () Bool)

(declare-fun c!1318833 () Bool)

(assert (=> d!2211129 (= c!1318833 (isEmpty!39871 (t!382224 s!7408)))))

(declare-fun e!4250873 () Bool)

(assert (=> d!2211129 (= (matchZipper!3178 lt!2544682 (t!382224 s!7408)) e!4250873)))

(declare-fun b!7070664 () Bool)

(assert (=> b!7070664 (= e!4250873 (nullableZipper!2695 lt!2544682))))

(declare-fun b!7070665 () Bool)

(assert (=> b!7070665 (= e!4250873 (matchZipper!3178 (derivationStepZipper!3088 lt!2544682 (head!14403 (t!382224 s!7408))) (tail!13819 (t!382224 s!7408))))))

(assert (= (and d!2211129 c!1318833) b!7070664))

(assert (= (and d!2211129 (not c!1318833)) b!7070665))

(assert (=> d!2211129 m!7795992))

(declare-fun m!7796004 () Bool)

(assert (=> b!7070664 m!7796004))

(assert (=> b!7070665 m!7795996))

(assert (=> b!7070665 m!7795996))

(declare-fun m!7796006 () Bool)

(assert (=> b!7070665 m!7796006))

(assert (=> b!7070665 m!7796000))

(assert (=> b!7070665 m!7796006))

(assert (=> b!7070665 m!7796000))

(declare-fun m!7796008 () Bool)

(assert (=> b!7070665 m!7796008))

(assert (=> b!7070492 d!2211129))

(declare-fun d!2211131 () Bool)

(declare-fun c!1318834 () Bool)

(assert (=> d!2211131 (= c!1318834 (isEmpty!39871 (t!382224 s!7408)))))

(declare-fun e!4250874 () Bool)

(assert (=> d!2211131 (= (matchZipper!3178 lt!2544690 (t!382224 s!7408)) e!4250874)))

(declare-fun b!7070666 () Bool)

(assert (=> b!7070666 (= e!4250874 (nullableZipper!2695 lt!2544690))))

(declare-fun b!7070667 () Bool)

(assert (=> b!7070667 (= e!4250874 (matchZipper!3178 (derivationStepZipper!3088 lt!2544690 (head!14403 (t!382224 s!7408))) (tail!13819 (t!382224 s!7408))))))

(assert (= (and d!2211131 c!1318834) b!7070666))

(assert (= (and d!2211131 (not c!1318834)) b!7070667))

(assert (=> d!2211131 m!7795992))

(declare-fun m!7796010 () Bool)

(assert (=> b!7070666 m!7796010))

(assert (=> b!7070667 m!7795996))

(assert (=> b!7070667 m!7795996))

(declare-fun m!7796012 () Bool)

(assert (=> b!7070667 m!7796012))

(assert (=> b!7070667 m!7796000))

(assert (=> b!7070667 m!7796012))

(assert (=> b!7070667 m!7796000))

(declare-fun m!7796014 () Bool)

(assert (=> b!7070667 m!7796014))

(assert (=> b!7070492 d!2211131))

(declare-fun d!2211133 () Bool)

(declare-fun c!1318835 () Bool)

(assert (=> d!2211133 (= c!1318835 (isEmpty!39871 (_1!37428 lt!2544656)))))

(declare-fun e!4250875 () Bool)

(assert (=> d!2211133 (= (matchZipper!3178 lt!2544663 (_1!37428 lt!2544656)) e!4250875)))

(declare-fun b!7070668 () Bool)

(assert (=> b!7070668 (= e!4250875 (nullableZipper!2695 lt!2544663))))

(declare-fun b!7070669 () Bool)

(assert (=> b!7070669 (= e!4250875 (matchZipper!3178 (derivationStepZipper!3088 lt!2544663 (head!14403 (_1!37428 lt!2544656))) (tail!13819 (_1!37428 lt!2544656))))))

(assert (= (and d!2211133 c!1318835) b!7070668))

(assert (= (and d!2211133 (not c!1318835)) b!7070669))

(declare-fun m!7796016 () Bool)

(assert (=> d!2211133 m!7796016))

(declare-fun m!7796018 () Bool)

(assert (=> b!7070668 m!7796018))

(declare-fun m!7796020 () Bool)

(assert (=> b!7070669 m!7796020))

(assert (=> b!7070669 m!7796020))

(declare-fun m!7796022 () Bool)

(assert (=> b!7070669 m!7796022))

(declare-fun m!7796024 () Bool)

(assert (=> b!7070669 m!7796024))

(assert (=> b!7070669 m!7796022))

(assert (=> b!7070669 m!7796024))

(declare-fun m!7796026 () Bool)

(assert (=> b!7070669 m!7796026))

(assert (=> b!7070487 d!2211133))

(assert (=> b!7070488 d!2211123))

(declare-fun d!2211135 () Bool)

(declare-fun c!1318836 () Bool)

(assert (=> d!2211135 (= c!1318836 (isEmpty!39871 (t!382224 s!7408)))))

(declare-fun e!4250876 () Bool)

(assert (=> d!2211135 (= (matchZipper!3178 lt!2544668 (t!382224 s!7408)) e!4250876)))

(declare-fun b!7070670 () Bool)

(assert (=> b!7070670 (= e!4250876 (nullableZipper!2695 lt!2544668))))

(declare-fun b!7070671 () Bool)

(assert (=> b!7070671 (= e!4250876 (matchZipper!3178 (derivationStepZipper!3088 lt!2544668 (head!14403 (t!382224 s!7408))) (tail!13819 (t!382224 s!7408))))))

(assert (= (and d!2211135 c!1318836) b!7070670))

(assert (= (and d!2211135 (not c!1318836)) b!7070671))

(assert (=> d!2211135 m!7795992))

(declare-fun m!7796028 () Bool)

(assert (=> b!7070670 m!7796028))

(assert (=> b!7070671 m!7795996))

(assert (=> b!7070671 m!7795996))

(declare-fun m!7796030 () Bool)

(assert (=> b!7070671 m!7796030))

(assert (=> b!7070671 m!7796000))

(assert (=> b!7070671 m!7796030))

(assert (=> b!7070671 m!7796000))

(declare-fun m!7796032 () Bool)

(assert (=> b!7070671 m!7796032))

(assert (=> b!7070508 d!2211135))

(declare-fun d!2211137 () Bool)

(declare-fun e!4250883 () Bool)

(assert (=> d!2211137 e!4250883))

(declare-fun res!2887572 () Bool)

(assert (=> d!2211137 (=> res!2887572 e!4250883)))

(declare-fun lt!2544864 () Bool)

(assert (=> d!2211137 (= res!2887572 (not lt!2544864))))

(declare-fun e!4250884 () Bool)

(assert (=> d!2211137 (= lt!2544864 e!4250884)))

(declare-fun res!2887575 () Bool)

(assert (=> d!2211137 (=> res!2887575 e!4250884)))

(assert (=> d!2211137 (= res!2887575 (is-Nil!68317 Nil!68317))))

(assert (=> d!2211137 (= (isPrefix!5851 Nil!68317 lt!2544666) lt!2544864)))

(declare-fun b!7070682 () Bool)

(declare-fun e!4250885 () Bool)

(assert (=> b!7070682 (= e!4250885 (isPrefix!5851 (tail!13819 Nil!68317) (tail!13819 lt!2544666)))))

(declare-fun b!7070681 () Bool)

(declare-fun res!2887573 () Bool)

(assert (=> b!7070681 (=> (not res!2887573) (not e!4250885))))

(assert (=> b!7070681 (= res!2887573 (= (head!14403 Nil!68317) (head!14403 lt!2544666)))))

(declare-fun b!7070680 () Bool)

(assert (=> b!7070680 (= e!4250884 e!4250885)))

(declare-fun res!2887574 () Bool)

(assert (=> b!7070680 (=> (not res!2887574) (not e!4250885))))

(assert (=> b!7070680 (= res!2887574 (not (is-Nil!68317 lt!2544666)))))

(declare-fun b!7070683 () Bool)

(assert (=> b!7070683 (= e!4250883 (>= (size!41206 lt!2544666) (size!41206 Nil!68317)))))

(assert (= (and d!2211137 (not res!2887575)) b!7070680))

(assert (= (and b!7070680 res!2887574) b!7070681))

(assert (= (and b!7070681 res!2887573) b!7070682))

(assert (= (and d!2211137 (not res!2887572)) b!7070683))

(declare-fun m!7796034 () Bool)

(assert (=> b!7070682 m!7796034))

(declare-fun m!7796036 () Bool)

(assert (=> b!7070682 m!7796036))

(assert (=> b!7070682 m!7796034))

(assert (=> b!7070682 m!7796036))

(declare-fun m!7796038 () Bool)

(assert (=> b!7070682 m!7796038))

(declare-fun m!7796040 () Bool)

(assert (=> b!7070681 m!7796040))

(declare-fun m!7796042 () Bool)

(assert (=> b!7070681 m!7796042))

(assert (=> b!7070683 m!7795952))

(declare-fun m!7796044 () Bool)

(assert (=> b!7070683 m!7796044))

(assert (=> b!7070489 d!2211137))

(assert (=> b!7070505 d!2211135))

(assert (=> b!7070505 d!2211123))

(declare-fun bs!1880523 () Bool)

(declare-fun d!2211139 () Bool)

(assert (= bs!1880523 (and d!2211139 b!7070506)))

(declare-fun lambda!425231 () Int)

(assert (=> bs!1880523 (= lambda!425231 lambda!425173)))

(declare-fun bs!1880524 () Bool)

(assert (= bs!1880524 (and d!2211139 d!2211119)))

(assert (=> bs!1880524 (= lambda!425231 lambda!425230)))

(assert (=> d!2211139 (= (inv!86955 setElem!50225) (forall!16589 (exprs!7134 setElem!50225) lambda!425231))))

(declare-fun bs!1880525 () Bool)

(assert (= bs!1880525 d!2211139))

(declare-fun m!7796046 () Bool)

(assert (=> bs!1880525 m!7796046))

(assert (=> setNonEmpty!50225 d!2211139))

(declare-fun b!7070692 () Bool)

(declare-fun e!4250890 () List!68440)

(assert (=> b!7070692 (= e!4250890 (exprs!7134 ct2!306))))

(declare-fun d!2211141 () Bool)

(declare-fun e!4250891 () Bool)

(assert (=> d!2211141 e!4250891))

(declare-fun res!2887580 () Bool)

(assert (=> d!2211141 (=> (not res!2887580) (not e!4250891))))

(declare-fun lt!2544867 () List!68440)

(declare-fun content!13780 (List!68440) (Set Regex!17638))

(assert (=> d!2211141 (= res!2887580 (= (content!13780 lt!2544867) (set.union (content!13780 (exprs!7134 lt!2544681)) (content!13780 (exprs!7134 ct2!306)))))))

(assert (=> d!2211141 (= lt!2544867 e!4250890)))

(declare-fun c!1318839 () Bool)

(assert (=> d!2211141 (= c!1318839 (is-Nil!68316 (exprs!7134 lt!2544681)))))

(assert (=> d!2211141 (= (++!15760 (exprs!7134 lt!2544681) (exprs!7134 ct2!306)) lt!2544867)))

(declare-fun b!7070693 () Bool)

(assert (=> b!7070693 (= e!4250890 (Cons!68316 (h!74764 (exprs!7134 lt!2544681)) (++!15760 (t!382223 (exprs!7134 lt!2544681)) (exprs!7134 ct2!306))))))

(declare-fun b!7070694 () Bool)

(declare-fun res!2887581 () Bool)

(assert (=> b!7070694 (=> (not res!2887581) (not e!4250891))))

(declare-fun size!41207 (List!68440) Int)

(assert (=> b!7070694 (= res!2887581 (= (size!41207 lt!2544867) (+ (size!41207 (exprs!7134 lt!2544681)) (size!41207 (exprs!7134 ct2!306)))))))

(declare-fun b!7070695 () Bool)

(assert (=> b!7070695 (= e!4250891 (or (not (= (exprs!7134 ct2!306) Nil!68316)) (= lt!2544867 (exprs!7134 lt!2544681))))))

(assert (= (and d!2211141 c!1318839) b!7070692))

(assert (= (and d!2211141 (not c!1318839)) b!7070693))

(assert (= (and d!2211141 res!2887580) b!7070694))

(assert (= (and b!7070694 res!2887581) b!7070695))

(declare-fun m!7796048 () Bool)

(assert (=> d!2211141 m!7796048))

(declare-fun m!7796050 () Bool)

(assert (=> d!2211141 m!7796050))

(declare-fun m!7796052 () Bool)

(assert (=> d!2211141 m!7796052))

(declare-fun m!7796054 () Bool)

(assert (=> b!7070693 m!7796054))

(declare-fun m!7796056 () Bool)

(assert (=> b!7070694 m!7796056))

(declare-fun m!7796058 () Bool)

(assert (=> b!7070694 m!7796058))

(declare-fun m!7796060 () Bool)

(assert (=> b!7070694 m!7796060))

(assert (=> b!7070506 d!2211141))

(assert (=> b!7070506 d!2211099))

(declare-fun d!2211143 () Bool)

(declare-fun e!4250894 () Bool)

(assert (=> d!2211143 e!4250894))

(declare-fun res!2887584 () Bool)

(assert (=> d!2211143 (=> (not res!2887584) (not e!4250894))))

(declare-fun lt!2544870 () Context!13268)

(declare-fun dynLambda!27784 (Int Context!13268) Context!13268)

(assert (=> d!2211143 (= res!2887584 (= lt!2544695 (dynLambda!27784 lambda!425172 lt!2544870)))))

(declare-fun choose!54180 ((Set Context!13268) Int Context!13268) Context!13268)

(assert (=> d!2211143 (= lt!2544870 (choose!54180 z1!570 lambda!425172 lt!2544695))))

(assert (=> d!2211143 (set.member lt!2544695 (map!15983 z1!570 lambda!425172))))

(assert (=> d!2211143 (= (mapPost2!467 z1!570 lambda!425172 lt!2544695) lt!2544870)))

(declare-fun b!7070699 () Bool)

(assert (=> b!7070699 (= e!4250894 (set.member lt!2544870 z1!570))))

(assert (= (and d!2211143 res!2887584) b!7070699))

(declare-fun b_lambda!269931 () Bool)

(assert (=> (not b_lambda!269931) (not d!2211143)))

(declare-fun m!7796062 () Bool)

(assert (=> d!2211143 m!7796062))

(declare-fun m!7796064 () Bool)

(assert (=> d!2211143 m!7796064))

(declare-fun m!7796066 () Bool)

(assert (=> d!2211143 m!7796066))

(declare-fun m!7796068 () Bool)

(assert (=> d!2211143 m!7796068))

(declare-fun m!7796070 () Bool)

(assert (=> b!7070699 m!7796070))

(assert (=> b!7070506 d!2211143))

(assert (=> b!7070507 d!2211123))

(declare-fun b!7070700 () Bool)

(declare-fun e!4250895 () List!68440)

(assert (=> b!7070700 (= e!4250895 (exprs!7134 ct2!306))))

(declare-fun d!2211145 () Bool)

(declare-fun e!4250896 () Bool)

(assert (=> d!2211145 e!4250896))

(declare-fun res!2887585 () Bool)

(assert (=> d!2211145 (=> (not res!2887585) (not e!4250896))))

(declare-fun lt!2544871 () List!68440)

(assert (=> d!2211145 (= res!2887585 (= (content!13780 lt!2544871) (set.union (content!13780 lt!2544678) (content!13780 (exprs!7134 ct2!306)))))))

(assert (=> d!2211145 (= lt!2544871 e!4250895)))

(declare-fun c!1318840 () Bool)

(assert (=> d!2211145 (= c!1318840 (is-Nil!68316 lt!2544678))))

(assert (=> d!2211145 (= (++!15760 lt!2544678 (exprs!7134 ct2!306)) lt!2544871)))

(declare-fun b!7070701 () Bool)

(assert (=> b!7070701 (= e!4250895 (Cons!68316 (h!74764 lt!2544678) (++!15760 (t!382223 lt!2544678) (exprs!7134 ct2!306))))))

(declare-fun b!7070702 () Bool)

(declare-fun res!2887586 () Bool)

(assert (=> b!7070702 (=> (not res!2887586) (not e!4250896))))

(assert (=> b!7070702 (= res!2887586 (= (size!41207 lt!2544871) (+ (size!41207 lt!2544678) (size!41207 (exprs!7134 ct2!306)))))))

(declare-fun b!7070703 () Bool)

(assert (=> b!7070703 (= e!4250896 (or (not (= (exprs!7134 ct2!306) Nil!68316)) (= lt!2544871 lt!2544678)))))

(assert (= (and d!2211145 c!1318840) b!7070700))

(assert (= (and d!2211145 (not c!1318840)) b!7070701))

(assert (= (and d!2211145 res!2887585) b!7070702))

(assert (= (and b!7070702 res!2887586) b!7070703))

(declare-fun m!7796072 () Bool)

(assert (=> d!2211145 m!7796072))

(declare-fun m!7796074 () Bool)

(assert (=> d!2211145 m!7796074))

(assert (=> d!2211145 m!7796052))

(declare-fun m!7796076 () Bool)

(assert (=> b!7070701 m!7796076))

(declare-fun m!7796078 () Bool)

(assert (=> b!7070702 m!7796078))

(declare-fun m!7796080 () Bool)

(assert (=> b!7070702 m!7796080))

(assert (=> b!7070702 m!7796060))

(assert (=> b!7070507 d!2211145))

(declare-fun b!7070726 () Bool)

(declare-fun c!1318855 () Bool)

(declare-fun e!4250909 () Bool)

(assert (=> b!7070726 (= c!1318855 e!4250909)))

(declare-fun res!2887589 () Bool)

(assert (=> b!7070726 (=> (not res!2887589) (not e!4250909))))

(assert (=> b!7070726 (= res!2887589 (is-Concat!26483 (h!74764 (exprs!7134 lt!2544681))))))

(declare-fun e!4250912 () (Set Context!13268))

(declare-fun e!4250913 () (Set Context!13268))

(assert (=> b!7070726 (= e!4250912 e!4250913)))

(declare-fun c!1318851 () Bool)

(declare-fun call!642634 () List!68440)

(declare-fun bm!642625 () Bool)

(declare-fun $colon$colon!2656 (List!68440 Regex!17638) List!68440)

(assert (=> bm!642625 (= call!642634 ($colon$colon!2656 (exprs!7134 lt!2544665) (ite (or c!1318855 c!1318851) (regTwo!35788 (h!74764 (exprs!7134 lt!2544681))) (h!74764 (exprs!7134 lt!2544681)))))))

(declare-fun b!7070727 () Bool)

(assert (=> b!7070727 (= e!4250909 (nullable!7321 (regOne!35788 (h!74764 (exprs!7134 lt!2544681)))))))

(declare-fun b!7070728 () Bool)

(declare-fun e!4250911 () (Set Context!13268))

(declare-fun call!642630 () (Set Context!13268))

(assert (=> b!7070728 (= e!4250911 call!642630)))

(declare-fun call!642635 () (Set Context!13268))

(declare-fun c!1318852 () Bool)

(declare-fun call!642633 () List!68440)

(declare-fun bm!642626 () Bool)

(assert (=> bm!642626 (= call!642635 (derivationStepZipperDown!2272 (ite c!1318852 (regOne!35789 (h!74764 (exprs!7134 lt!2544681))) (ite c!1318855 (regTwo!35788 (h!74764 (exprs!7134 lt!2544681))) (ite c!1318851 (regOne!35788 (h!74764 (exprs!7134 lt!2544681))) (reg!17967 (h!74764 (exprs!7134 lt!2544681)))))) (ite (or c!1318852 c!1318855) lt!2544665 (Context!13269 call!642633)) (h!74765 s!7408)))))

(declare-fun b!7070729 () Bool)

(declare-fun e!4250910 () (Set Context!13268))

(assert (=> b!7070729 (= e!4250910 call!642630)))

(declare-fun b!7070730 () Bool)

(declare-fun call!642632 () (Set Context!13268))

(assert (=> b!7070730 (= e!4250912 (set.union call!642635 call!642632))))

(declare-fun b!7070731 () Bool)

(assert (=> b!7070731 (= e!4250910 (as set.empty (Set Context!13268)))))

(declare-fun b!7070732 () Bool)

(declare-fun call!642631 () (Set Context!13268))

(assert (=> b!7070732 (= e!4250913 (set.union call!642632 call!642631))))

(declare-fun bm!642628 () Bool)

(assert (=> bm!642628 (= call!642631 call!642635)))

(declare-fun b!7070733 () Bool)

(declare-fun c!1318853 () Bool)

(assert (=> b!7070733 (= c!1318853 (is-Star!17638 (h!74764 (exprs!7134 lt!2544681))))))

(assert (=> b!7070733 (= e!4250911 e!4250910)))

(declare-fun bm!642629 () Bool)

(assert (=> bm!642629 (= call!642633 call!642634)))

(declare-fun b!7070734 () Bool)

(declare-fun e!4250914 () (Set Context!13268))

(assert (=> b!7070734 (= e!4250914 (set.insert lt!2544665 (as set.empty (Set Context!13268))))))

(declare-fun b!7070735 () Bool)

(assert (=> b!7070735 (= e!4250914 e!4250912)))

(assert (=> b!7070735 (= c!1318852 (is-Union!17638 (h!74764 (exprs!7134 lt!2544681))))))

(declare-fun d!2211147 () Bool)

(declare-fun c!1318854 () Bool)

(assert (=> d!2211147 (= c!1318854 (and (is-ElementMatch!17638 (h!74764 (exprs!7134 lt!2544681))) (= (c!1318799 (h!74764 (exprs!7134 lt!2544681))) (h!74765 s!7408))))))

(assert (=> d!2211147 (= (derivationStepZipperDown!2272 (h!74764 (exprs!7134 lt!2544681)) lt!2544665 (h!74765 s!7408)) e!4250914)))

(declare-fun bm!642627 () Bool)

(assert (=> bm!642627 (= call!642630 call!642631)))

(declare-fun bm!642630 () Bool)

(assert (=> bm!642630 (= call!642632 (derivationStepZipperDown!2272 (ite c!1318852 (regTwo!35789 (h!74764 (exprs!7134 lt!2544681))) (regOne!35788 (h!74764 (exprs!7134 lt!2544681)))) (ite c!1318852 lt!2544665 (Context!13269 call!642634)) (h!74765 s!7408)))))

(declare-fun b!7070736 () Bool)

(assert (=> b!7070736 (= e!4250913 e!4250911)))

(assert (=> b!7070736 (= c!1318851 (is-Concat!26483 (h!74764 (exprs!7134 lt!2544681))))))

(assert (= (and d!2211147 c!1318854) b!7070734))

(assert (= (and d!2211147 (not c!1318854)) b!7070735))

(assert (= (and b!7070735 c!1318852) b!7070730))

(assert (= (and b!7070735 (not c!1318852)) b!7070726))

(assert (= (and b!7070726 res!2887589) b!7070727))

(assert (= (and b!7070726 c!1318855) b!7070732))

(assert (= (and b!7070726 (not c!1318855)) b!7070736))

(assert (= (and b!7070736 c!1318851) b!7070728))

(assert (= (and b!7070736 (not c!1318851)) b!7070733))

(assert (= (and b!7070733 c!1318853) b!7070729))

(assert (= (and b!7070733 (not c!1318853)) b!7070731))

(assert (= (or b!7070728 b!7070729) bm!642629))

(assert (= (or b!7070728 b!7070729) bm!642627))

(assert (= (or b!7070732 bm!642627) bm!642628))

(assert (= (or b!7070732 bm!642629) bm!642625))

(assert (= (or b!7070730 bm!642628) bm!642626))

(assert (= (or b!7070730 b!7070732) bm!642630))

(declare-fun m!7796082 () Bool)

(assert (=> b!7070727 m!7796082))

(declare-fun m!7796084 () Bool)

(assert (=> bm!642630 m!7796084))

(declare-fun m!7796086 () Bool)

(assert (=> b!7070734 m!7796086))

(declare-fun m!7796088 () Bool)

(assert (=> bm!642625 m!7796088))

(declare-fun m!7796090 () Bool)

(assert (=> bm!642626 m!7796090))

(assert (=> b!7070507 d!2211147))

(declare-fun e!4250915 () (Set Context!13268))

(declare-fun call!642636 () (Set Context!13268))

(declare-fun b!7070737 () Bool)

(assert (=> b!7070737 (= e!4250915 (set.union call!642636 (derivationStepZipperUp!2222 (Context!13269 (t!382223 (exprs!7134 lt!2544665))) (h!74765 s!7408))))))

(declare-fun b!7070738 () Bool)

(declare-fun e!4250917 () Bool)

(assert (=> b!7070738 (= e!4250917 (nullable!7321 (h!74764 (exprs!7134 lt!2544665))))))

(declare-fun b!7070739 () Bool)

(declare-fun e!4250916 () (Set Context!13268))

(assert (=> b!7070739 (= e!4250915 e!4250916)))

(declare-fun c!1318857 () Bool)

(assert (=> b!7070739 (= c!1318857 (is-Cons!68316 (exprs!7134 lt!2544665)))))

(declare-fun b!7070740 () Bool)

(assert (=> b!7070740 (= e!4250916 (as set.empty (Set Context!13268)))))

(declare-fun bm!642631 () Bool)

(assert (=> bm!642631 (= call!642636 (derivationStepZipperDown!2272 (h!74764 (exprs!7134 lt!2544665)) (Context!13269 (t!382223 (exprs!7134 lt!2544665))) (h!74765 s!7408)))))

(declare-fun b!7070741 () Bool)

(assert (=> b!7070741 (= e!4250916 call!642636)))

(declare-fun d!2211149 () Bool)

(declare-fun c!1318856 () Bool)

(assert (=> d!2211149 (= c!1318856 e!4250917)))

(declare-fun res!2887590 () Bool)

(assert (=> d!2211149 (=> (not res!2887590) (not e!4250917))))

(assert (=> d!2211149 (= res!2887590 (is-Cons!68316 (exprs!7134 lt!2544665)))))

(assert (=> d!2211149 (= (derivationStepZipperUp!2222 lt!2544665 (h!74765 s!7408)) e!4250915)))

(assert (= (and d!2211149 res!2887590) b!7070738))

(assert (= (and d!2211149 c!1318856) b!7070737))

(assert (= (and d!2211149 (not c!1318856)) b!7070739))

(assert (= (and b!7070739 c!1318857) b!7070741))

(assert (= (and b!7070739 (not c!1318857)) b!7070740))

(assert (= (or b!7070737 b!7070741) bm!642631))

(declare-fun m!7796092 () Bool)

(assert (=> b!7070737 m!7796092))

(declare-fun m!7796094 () Bool)

(assert (=> b!7070738 m!7796094))

(declare-fun m!7796096 () Bool)

(assert (=> bm!642631 m!7796096))

(assert (=> b!7070507 d!2211149))

(declare-fun bs!1880526 () Bool)

(declare-fun d!2211151 () Bool)

(assert (= bs!1880526 (and d!2211151 b!7070502)))

(declare-fun lambda!425234 () Int)

(assert (=> bs!1880526 (not (= lambda!425234 lambda!425171))))

(assert (=> d!2211151 true))

(declare-fun order!28399 () Int)

(declare-fun dynLambda!27785 (Int Int) Int)

(assert (=> d!2211151 (< (dynLambda!27785 order!28399 lambda!425171) (dynLambda!27785 order!28399 lambda!425234))))

(declare-fun forall!16590 (List!68442 Int) Bool)

(assert (=> d!2211151 (= (exists!3679 lt!2544657 lambda!425171) (not (forall!16590 lt!2544657 lambda!425234)))))

(declare-fun bs!1880527 () Bool)

(assert (= bs!1880527 d!2211151))

(declare-fun m!7796098 () Bool)

(assert (=> bs!1880527 m!7796098))

(assert (=> b!7070502 d!2211151))

(declare-fun d!2211153 () Bool)

(declare-fun e!4250920 () Bool)

(assert (=> d!2211153 e!4250920))

(declare-fun res!2887593 () Bool)

(assert (=> d!2211153 (=> (not res!2887593) (not e!4250920))))

(declare-fun lt!2544874 () Context!13268)

(declare-fun dynLambda!27786 (Int Context!13268) Bool)

(assert (=> d!2211153 (= res!2887593 (dynLambda!27786 lambda!425171 lt!2544874))))

(declare-fun getWitness!1738 (List!68442 Int) Context!13268)

(assert (=> d!2211153 (= lt!2544874 (getWitness!1738 (toList!10979 lt!2544676) lambda!425171))))

(declare-fun exists!3681 ((Set Context!13268) Int) Bool)

(assert (=> d!2211153 (exists!3681 lt!2544676 lambda!425171)))

(assert (=> d!2211153 (= (getWitness!1736 lt!2544676 lambda!425171) lt!2544874)))

(declare-fun b!7070746 () Bool)

(assert (=> b!7070746 (= e!4250920 (set.member lt!2544874 lt!2544676))))

(assert (= (and d!2211153 res!2887593) b!7070746))

(declare-fun b_lambda!269933 () Bool)

(assert (=> (not b_lambda!269933) (not d!2211153)))

(declare-fun m!7796100 () Bool)

(assert (=> d!2211153 m!7796100))

(assert (=> d!2211153 m!7795684))

(assert (=> d!2211153 m!7795684))

(declare-fun m!7796102 () Bool)

(assert (=> d!2211153 m!7796102))

(declare-fun m!7796104 () Bool)

(assert (=> d!2211153 m!7796104))

(declare-fun m!7796106 () Bool)

(assert (=> b!7070746 m!7796106))

(assert (=> b!7070502 d!2211153))

(declare-fun d!2211155 () Bool)

(declare-fun e!4250923 () Bool)

(assert (=> d!2211155 e!4250923))

(declare-fun res!2887596 () Bool)

(assert (=> d!2211155 (=> (not res!2887596) (not e!4250923))))

(declare-fun lt!2544877 () List!68442)

(declare-fun noDuplicate!2724 (List!68442) Bool)

(assert (=> d!2211155 (= res!2887596 (noDuplicate!2724 lt!2544877))))

(declare-fun choose!54181 ((Set Context!13268)) List!68442)

(assert (=> d!2211155 (= lt!2544877 (choose!54181 lt!2544676))))

(assert (=> d!2211155 (= (toList!10979 lt!2544676) lt!2544877)))

(declare-fun b!7070749 () Bool)

(declare-fun content!13781 (List!68442) (Set Context!13268))

(assert (=> b!7070749 (= e!4250923 (= (content!13781 lt!2544877) lt!2544676))))

(assert (= (and d!2211155 res!2887596) b!7070749))

(declare-fun m!7796108 () Bool)

(assert (=> d!2211155 m!7796108))

(declare-fun m!7796110 () Bool)

(assert (=> d!2211155 m!7796110))

(declare-fun m!7796112 () Bool)

(assert (=> b!7070749 m!7796112))

(assert (=> b!7070502 d!2211155))

(declare-fun d!2211157 () Bool)

(declare-fun c!1318858 () Bool)

(assert (=> d!2211157 (= c!1318858 (isEmpty!39871 s!7408))))

(declare-fun e!4250924 () Bool)

(assert (=> d!2211157 (= (matchZipper!3178 lt!2544697 s!7408) e!4250924)))

(declare-fun b!7070750 () Bool)

(assert (=> b!7070750 (= e!4250924 (nullableZipper!2695 lt!2544697))))

(declare-fun b!7070751 () Bool)

(assert (=> b!7070751 (= e!4250924 (matchZipper!3178 (derivationStepZipper!3088 lt!2544697 (head!14403 s!7408)) (tail!13819 s!7408)))))

(assert (= (and d!2211157 c!1318858) b!7070750))

(assert (= (and d!2211157 (not c!1318858)) b!7070751))

(assert (=> d!2211157 m!7795956))

(declare-fun m!7796114 () Bool)

(assert (=> b!7070750 m!7796114))

(assert (=> b!7070751 m!7795960))

(assert (=> b!7070751 m!7795960))

(declare-fun m!7796116 () Bool)

(assert (=> b!7070751 m!7796116))

(assert (=> b!7070751 m!7795964))

(assert (=> b!7070751 m!7796116))

(assert (=> b!7070751 m!7795964))

(declare-fun m!7796118 () Bool)

(assert (=> b!7070751 m!7796118))

(assert (=> b!7070502 d!2211157))

(declare-fun bs!1880528 () Bool)

(declare-fun d!2211159 () Bool)

(assert (= bs!1880528 (and d!2211159 b!7070502)))

(declare-fun lambda!425237 () Int)

(assert (=> bs!1880528 (= lambda!425237 lambda!425171)))

(declare-fun bs!1880529 () Bool)

(assert (= bs!1880529 (and d!2211159 d!2211151)))

(assert (=> bs!1880529 (not (= lambda!425237 lambda!425234))))

(assert (=> d!2211159 true))

(assert (=> d!2211159 (exists!3679 lt!2544657 lambda!425237)))

(declare-fun lt!2544880 () Unit!161986)

(declare-fun choose!54182 (List!68442 List!68441) Unit!161986)

(assert (=> d!2211159 (= lt!2544880 (choose!54182 lt!2544657 s!7408))))

(assert (=> d!2211159 (matchZipper!3178 (content!13781 lt!2544657) s!7408)))

(assert (=> d!2211159 (= (lemmaZipperMatchesExistsMatchingContext!559 lt!2544657 s!7408) lt!2544880)))

(declare-fun bs!1880530 () Bool)

(assert (= bs!1880530 d!2211159))

(declare-fun m!7796120 () Bool)

(assert (=> bs!1880530 m!7796120))

(declare-fun m!7796122 () Bool)

(assert (=> bs!1880530 m!7796122))

(declare-fun m!7796124 () Bool)

(assert (=> bs!1880530 m!7796124))

(assert (=> bs!1880530 m!7796124))

(declare-fun m!7796126 () Bool)

(assert (=> bs!1880530 m!7796126))

(assert (=> b!7070502 d!2211159))

(declare-fun b!7070771 () Bool)

(declare-fun e!4250935 () Bool)

(declare-fun lt!2544889 () Option!16957)

(assert (=> b!7070771 (= e!4250935 (not (isDefined!13658 lt!2544889)))))

(declare-fun b!7070772 () Bool)

(declare-fun lt!2544888 () Unit!161986)

(declare-fun lt!2544887 () Unit!161986)

(assert (=> b!7070772 (= lt!2544888 lt!2544887)))

(assert (=> b!7070772 (= (++!15759 (++!15759 Nil!68317 (Cons!68317 (h!74765 (t!382224 s!7408)) Nil!68317)) (t!382224 (t!382224 s!7408))) (t!382224 s!7408))))

(declare-fun lemmaMoveElementToOtherListKeepsConcatEq!2972 (List!68441 C!35546 List!68441 List!68441) Unit!161986)

(assert (=> b!7070772 (= lt!2544887 (lemmaMoveElementToOtherListKeepsConcatEq!2972 Nil!68317 (h!74765 (t!382224 s!7408)) (t!382224 (t!382224 s!7408)) (t!382224 s!7408)))))

(declare-fun e!4250936 () Option!16957)

(assert (=> b!7070772 (= e!4250936 (findConcatSeparationZippers!473 lt!2544688 lt!2544660 (++!15759 Nil!68317 (Cons!68317 (h!74765 (t!382224 s!7408)) Nil!68317)) (t!382224 (t!382224 s!7408)) (t!382224 s!7408)))))

(declare-fun b!7070773 () Bool)

(declare-fun e!4250937 () Option!16957)

(assert (=> b!7070773 (= e!4250937 e!4250936)))

(declare-fun c!1318865 () Bool)

(assert (=> b!7070773 (= c!1318865 (is-Nil!68317 (t!382224 s!7408)))))

(declare-fun b!7070774 () Bool)

(declare-fun e!4250938 () Bool)

(assert (=> b!7070774 (= e!4250938 (= (++!15759 (_1!37428 (get!23927 lt!2544889)) (_2!37428 (get!23927 lt!2544889))) (t!382224 s!7408)))))

(declare-fun b!7070775 () Bool)

(assert (=> b!7070775 (= e!4250937 (Some!16956 (tuple2!68251 Nil!68317 (t!382224 s!7408))))))

(declare-fun b!7070776 () Bool)

(declare-fun res!2887611 () Bool)

(assert (=> b!7070776 (=> (not res!2887611) (not e!4250938))))

(assert (=> b!7070776 (= res!2887611 (matchZipper!3178 lt!2544660 (_2!37428 (get!23927 lt!2544889))))))

(declare-fun d!2211161 () Bool)

(assert (=> d!2211161 e!4250935))

(declare-fun res!2887607 () Bool)

(assert (=> d!2211161 (=> res!2887607 e!4250935)))

(assert (=> d!2211161 (= res!2887607 e!4250938)))

(declare-fun res!2887609 () Bool)

(assert (=> d!2211161 (=> (not res!2887609) (not e!4250938))))

(assert (=> d!2211161 (= res!2887609 (isDefined!13658 lt!2544889))))

(assert (=> d!2211161 (= lt!2544889 e!4250937)))

(declare-fun c!1318866 () Bool)

(declare-fun e!4250939 () Bool)

(assert (=> d!2211161 (= c!1318866 e!4250939)))

(declare-fun res!2887608 () Bool)

(assert (=> d!2211161 (=> (not res!2887608) (not e!4250939))))

(assert (=> d!2211161 (= res!2887608 (matchZipper!3178 lt!2544688 Nil!68317))))

(assert (=> d!2211161 (= (++!15759 Nil!68317 (t!382224 s!7408)) (t!382224 s!7408))))

(assert (=> d!2211161 (= (findConcatSeparationZippers!473 lt!2544688 lt!2544660 Nil!68317 (t!382224 s!7408) (t!382224 s!7408)) lt!2544889)))

(declare-fun b!7070770 () Bool)

(assert (=> b!7070770 (= e!4250939 (matchZipper!3178 lt!2544660 (t!382224 s!7408)))))

(declare-fun b!7070777 () Bool)

(declare-fun res!2887610 () Bool)

(assert (=> b!7070777 (=> (not res!2887610) (not e!4250938))))

(assert (=> b!7070777 (= res!2887610 (matchZipper!3178 lt!2544688 (_1!37428 (get!23927 lt!2544889))))))

(declare-fun b!7070778 () Bool)

(assert (=> b!7070778 (= e!4250936 None!16956)))

(assert (= (and d!2211161 res!2887608) b!7070770))

(assert (= (and d!2211161 c!1318866) b!7070775))

(assert (= (and d!2211161 (not c!1318866)) b!7070773))

(assert (= (and b!7070773 c!1318865) b!7070778))

(assert (= (and b!7070773 (not c!1318865)) b!7070772))

(assert (= (and d!2211161 res!2887609) b!7070777))

(assert (= (and b!7070777 res!2887610) b!7070776))

(assert (= (and b!7070776 res!2887611) b!7070774))

(assert (= (and d!2211161 (not res!2887607)) b!7070771))

(declare-fun m!7796128 () Bool)

(assert (=> b!7070774 m!7796128))

(declare-fun m!7796130 () Bool)

(assert (=> b!7070774 m!7796130))

(declare-fun m!7796132 () Bool)

(assert (=> b!7070772 m!7796132))

(assert (=> b!7070772 m!7796132))

(declare-fun m!7796134 () Bool)

(assert (=> b!7070772 m!7796134))

(declare-fun m!7796136 () Bool)

(assert (=> b!7070772 m!7796136))

(assert (=> b!7070772 m!7796132))

(declare-fun m!7796138 () Bool)

(assert (=> b!7070772 m!7796138))

(assert (=> b!7070776 m!7796128))

(declare-fun m!7796140 () Bool)

(assert (=> b!7070776 m!7796140))

(declare-fun m!7796142 () Bool)

(assert (=> b!7070770 m!7796142))

(assert (=> b!7070777 m!7796128))

(declare-fun m!7796144 () Bool)

(assert (=> b!7070777 m!7796144))

(declare-fun m!7796146 () Bool)

(assert (=> b!7070771 m!7796146))

(assert (=> d!2211161 m!7796146))

(declare-fun m!7796148 () Bool)

(assert (=> d!2211161 m!7796148))

(declare-fun m!7796150 () Bool)

(assert (=> d!2211161 m!7796150))

(assert (=> b!7070484 d!2211161))

(declare-fun d!2211163 () Bool)

(assert (=> d!2211163 (= (get!23927 lt!2544692) (v!53250 lt!2544692))))

(assert (=> b!7070484 d!2211163))

(declare-fun b!7070779 () Bool)

(declare-fun c!1318871 () Bool)

(declare-fun e!4250940 () Bool)

(assert (=> b!7070779 (= c!1318871 e!4250940)))

(declare-fun res!2887612 () Bool)

(assert (=> b!7070779 (=> (not res!2887612) (not e!4250940))))

(assert (=> b!7070779 (= res!2887612 (is-Concat!26483 (h!74764 (exprs!7134 lt!2544681))))))

(declare-fun e!4250943 () (Set Context!13268))

(declare-fun e!4250944 () (Set Context!13268))

(assert (=> b!7070779 (= e!4250943 e!4250944)))

(declare-fun bm!642632 () Bool)

(declare-fun call!642641 () List!68440)

(declare-fun c!1318867 () Bool)

(assert (=> bm!642632 (= call!642641 ($colon$colon!2656 (exprs!7134 lt!2544652) (ite (or c!1318871 c!1318867) (regTwo!35788 (h!74764 (exprs!7134 lt!2544681))) (h!74764 (exprs!7134 lt!2544681)))))))

(declare-fun b!7070780 () Bool)

(assert (=> b!7070780 (= e!4250940 (nullable!7321 (regOne!35788 (h!74764 (exprs!7134 lt!2544681)))))))

(declare-fun b!7070781 () Bool)

(declare-fun e!4250942 () (Set Context!13268))

(declare-fun call!642637 () (Set Context!13268))

(assert (=> b!7070781 (= e!4250942 call!642637)))

(declare-fun bm!642633 () Bool)

(declare-fun call!642642 () (Set Context!13268))

(declare-fun call!642640 () List!68440)

(declare-fun c!1318868 () Bool)

(assert (=> bm!642633 (= call!642642 (derivationStepZipperDown!2272 (ite c!1318868 (regOne!35789 (h!74764 (exprs!7134 lt!2544681))) (ite c!1318871 (regTwo!35788 (h!74764 (exprs!7134 lt!2544681))) (ite c!1318867 (regOne!35788 (h!74764 (exprs!7134 lt!2544681))) (reg!17967 (h!74764 (exprs!7134 lt!2544681)))))) (ite (or c!1318868 c!1318871) lt!2544652 (Context!13269 call!642640)) (h!74765 s!7408)))))

(declare-fun b!7070782 () Bool)

(declare-fun e!4250941 () (Set Context!13268))

(assert (=> b!7070782 (= e!4250941 call!642637)))

(declare-fun b!7070783 () Bool)

(declare-fun call!642639 () (Set Context!13268))

(assert (=> b!7070783 (= e!4250943 (set.union call!642642 call!642639))))

(declare-fun b!7070784 () Bool)

(assert (=> b!7070784 (= e!4250941 (as set.empty (Set Context!13268)))))

(declare-fun b!7070785 () Bool)

(declare-fun call!642638 () (Set Context!13268))

(assert (=> b!7070785 (= e!4250944 (set.union call!642639 call!642638))))

(declare-fun bm!642635 () Bool)

(assert (=> bm!642635 (= call!642638 call!642642)))

(declare-fun b!7070786 () Bool)

(declare-fun c!1318869 () Bool)

(assert (=> b!7070786 (= c!1318869 (is-Star!17638 (h!74764 (exprs!7134 lt!2544681))))))

(assert (=> b!7070786 (= e!4250942 e!4250941)))

(declare-fun bm!642636 () Bool)

(assert (=> bm!642636 (= call!642640 call!642641)))

(declare-fun b!7070787 () Bool)

(declare-fun e!4250945 () (Set Context!13268))

(assert (=> b!7070787 (= e!4250945 (set.insert lt!2544652 (as set.empty (Set Context!13268))))))

(declare-fun b!7070788 () Bool)

(assert (=> b!7070788 (= e!4250945 e!4250943)))

(assert (=> b!7070788 (= c!1318868 (is-Union!17638 (h!74764 (exprs!7134 lt!2544681))))))

(declare-fun d!2211165 () Bool)

(declare-fun c!1318870 () Bool)

(assert (=> d!2211165 (= c!1318870 (and (is-ElementMatch!17638 (h!74764 (exprs!7134 lt!2544681))) (= (c!1318799 (h!74764 (exprs!7134 lt!2544681))) (h!74765 s!7408))))))

(assert (=> d!2211165 (= (derivationStepZipperDown!2272 (h!74764 (exprs!7134 lt!2544681)) lt!2544652 (h!74765 s!7408)) e!4250945)))

(declare-fun bm!642634 () Bool)

(assert (=> bm!642634 (= call!642637 call!642638)))

(declare-fun bm!642637 () Bool)

(assert (=> bm!642637 (= call!642639 (derivationStepZipperDown!2272 (ite c!1318868 (regTwo!35789 (h!74764 (exprs!7134 lt!2544681))) (regOne!35788 (h!74764 (exprs!7134 lt!2544681)))) (ite c!1318868 lt!2544652 (Context!13269 call!642641)) (h!74765 s!7408)))))

(declare-fun b!7070789 () Bool)

(assert (=> b!7070789 (= e!4250944 e!4250942)))

(assert (=> b!7070789 (= c!1318867 (is-Concat!26483 (h!74764 (exprs!7134 lt!2544681))))))

(assert (= (and d!2211165 c!1318870) b!7070787))

(assert (= (and d!2211165 (not c!1318870)) b!7070788))

(assert (= (and b!7070788 c!1318868) b!7070783))

(assert (= (and b!7070788 (not c!1318868)) b!7070779))

(assert (= (and b!7070779 res!2887612) b!7070780))

(assert (= (and b!7070779 c!1318871) b!7070785))

(assert (= (and b!7070779 (not c!1318871)) b!7070789))

(assert (= (and b!7070789 c!1318867) b!7070781))

(assert (= (and b!7070789 (not c!1318867)) b!7070786))

(assert (= (and b!7070786 c!1318869) b!7070782))

(assert (= (and b!7070786 (not c!1318869)) b!7070784))

(assert (= (or b!7070781 b!7070782) bm!642636))

(assert (= (or b!7070781 b!7070782) bm!642634))

(assert (= (or b!7070785 bm!642634) bm!642635))

(assert (= (or b!7070785 bm!642636) bm!642632))

(assert (= (or b!7070783 bm!642635) bm!642633))

(assert (= (or b!7070783 b!7070785) bm!642637))

(assert (=> b!7070780 m!7796082))

(declare-fun m!7796152 () Bool)

(assert (=> bm!642637 m!7796152))

(declare-fun m!7796154 () Bool)

(assert (=> b!7070787 m!7796154))

(declare-fun m!7796156 () Bool)

(assert (=> bm!642632 m!7796156))

(declare-fun m!7796158 () Bool)

(assert (=> bm!642633 m!7796158))

(assert (=> b!7070484 d!2211165))

(declare-fun bs!1880531 () Bool)

(declare-fun d!2211167 () Bool)

(assert (= bs!1880531 (and d!2211167 b!7070506)))

(declare-fun lambda!425238 () Int)

(assert (=> bs!1880531 (= lambda!425238 lambda!425172)))

(declare-fun bs!1880532 () Bool)

(assert (= bs!1880532 (and d!2211167 d!2211117)))

(assert (=> bs!1880532 (= lambda!425238 lambda!425227)))

(assert (=> d!2211167 true))

(assert (=> d!2211167 (= (appendTo!759 lt!2544688 ct2!306) (map!15983 lt!2544688 lambda!425238))))

(declare-fun bs!1880533 () Bool)

(assert (= bs!1880533 d!2211167))

(declare-fun m!7796160 () Bool)

(assert (=> bs!1880533 m!7796160))

(assert (=> b!7070484 d!2211167))

(declare-fun d!2211169 () Bool)

(declare-fun c!1318872 () Bool)

(assert (=> d!2211169 (= c!1318872 (isEmpty!39871 (_1!37428 lt!2544656)))))

(declare-fun e!4250946 () Bool)

(assert (=> d!2211169 (= (matchZipper!3178 lt!2544688 (_1!37428 lt!2544656)) e!4250946)))

(declare-fun b!7070790 () Bool)

(assert (=> b!7070790 (= e!4250946 (nullableZipper!2695 lt!2544688))))

(declare-fun b!7070791 () Bool)

(assert (=> b!7070791 (= e!4250946 (matchZipper!3178 (derivationStepZipper!3088 lt!2544688 (head!14403 (_1!37428 lt!2544656))) (tail!13819 (_1!37428 lt!2544656))))))

(assert (= (and d!2211169 c!1318872) b!7070790))

(assert (= (and d!2211169 (not c!1318872)) b!7070791))

(assert (=> d!2211169 m!7796016))

(declare-fun m!7796162 () Bool)

(assert (=> b!7070790 m!7796162))

(assert (=> b!7070791 m!7796020))

(assert (=> b!7070791 m!7796020))

(declare-fun m!7796164 () Bool)

(assert (=> b!7070791 m!7796164))

(assert (=> b!7070791 m!7796024))

(assert (=> b!7070791 m!7796164))

(assert (=> b!7070791 m!7796024))

(declare-fun m!7796166 () Bool)

(assert (=> b!7070791 m!7796166))

(assert (=> b!7070484 d!2211169))

(declare-fun bs!1880534 () Bool)

(declare-fun d!2211171 () Bool)

(assert (= bs!1880534 (and d!2211171 b!7070506)))

(declare-fun lambda!425241 () Int)

(assert (=> bs!1880534 (= lambda!425241 lambda!425173)))

(declare-fun bs!1880535 () Bool)

(assert (= bs!1880535 (and d!2211171 d!2211119)))

(assert (=> bs!1880535 (= lambda!425241 lambda!425230)))

(declare-fun bs!1880536 () Bool)

(assert (= bs!1880536 (and d!2211171 d!2211139)))

(assert (=> bs!1880536 (= lambda!425241 lambda!425231)))

(assert (=> d!2211171 (= (derivationStepZipperDown!2272 (h!74764 (exprs!7134 lt!2544681)) (Context!13269 (++!15760 (exprs!7134 lt!2544652) (exprs!7134 ct2!306))) (h!74765 s!7408)) (appendTo!759 (derivationStepZipperDown!2272 (h!74764 (exprs!7134 lt!2544681)) lt!2544652 (h!74765 s!7408)) ct2!306))))

(declare-fun lt!2544895 () Unit!161986)

(assert (=> d!2211171 (= lt!2544895 (lemmaConcatPreservesForall!949 (exprs!7134 lt!2544652) (exprs!7134 ct2!306) lambda!425241))))

(declare-fun lt!2544894 () Unit!161986)

(declare-fun choose!54183 (Context!13268 Regex!17638 C!35546 Context!13268) Unit!161986)

(assert (=> d!2211171 (= lt!2544894 (choose!54183 lt!2544652 (h!74764 (exprs!7134 lt!2544681)) (h!74765 s!7408) ct2!306))))

(declare-fun validRegex!8970 (Regex!17638) Bool)

(assert (=> d!2211171 (validRegex!8970 (h!74764 (exprs!7134 lt!2544681)))))

(assert (=> d!2211171 (= (lemmaDerivativeStepZipperDownConcatCtxSameAsAppendTo!109 lt!2544652 (h!74764 (exprs!7134 lt!2544681)) (h!74765 s!7408) ct2!306) lt!2544894)))

(declare-fun bs!1880537 () Bool)

(assert (= bs!1880537 d!2211171))

(assert (=> bs!1880537 m!7795734))

(assert (=> bs!1880537 m!7795734))

(declare-fun m!7796168 () Bool)

(assert (=> bs!1880537 m!7796168))

(declare-fun m!7796170 () Bool)

(assert (=> bs!1880537 m!7796170))

(declare-fun m!7796172 () Bool)

(assert (=> bs!1880537 m!7796172))

(declare-fun m!7796174 () Bool)

(assert (=> bs!1880537 m!7796174))

(declare-fun m!7796176 () Bool)

(assert (=> bs!1880537 m!7796176))

(declare-fun m!7796178 () Bool)

(assert (=> bs!1880537 m!7796178))

(assert (=> b!7070484 d!2211171))

(declare-fun d!2211173 () Bool)

(declare-fun isEmpty!39872 (Option!16957) Bool)

(assert (=> d!2211173 (= (isDefined!13658 lt!2544692) (not (isEmpty!39872 lt!2544692)))))

(declare-fun bs!1880538 () Bool)

(assert (= bs!1880538 d!2211173))

(declare-fun m!7796180 () Bool)

(assert (=> bs!1880538 m!7796180))

(assert (=> b!7070484 d!2211173))

(declare-fun d!2211175 () Bool)

(assert (=> d!2211175 (isDefined!13658 (findConcatSeparationZippers!473 lt!2544688 (set.insert ct2!306 (as set.empty (Set Context!13268))) Nil!68317 (t!382224 s!7408) (t!382224 s!7408)))))

(declare-fun lt!2544898 () Unit!161986)

(declare-fun choose!54184 ((Set Context!13268) Context!13268 List!68441) Unit!161986)

(assert (=> d!2211175 (= lt!2544898 (choose!54184 lt!2544688 ct2!306 (t!382224 s!7408)))))

(assert (=> d!2211175 (matchZipper!3178 (appendTo!759 lt!2544688 ct2!306) (t!382224 s!7408))))

(assert (=> d!2211175 (= (lemmaConcatZipperMatchesStringThenFindConcatDefined!461 lt!2544688 ct2!306 (t!382224 s!7408)) lt!2544898)))

(declare-fun bs!1880539 () Bool)

(assert (= bs!1880539 d!2211175))

(assert (=> bs!1880539 m!7795722))

(assert (=> bs!1880539 m!7795728))

(declare-fun m!7796182 () Bool)

(assert (=> bs!1880539 m!7796182))

(assert (=> bs!1880539 m!7795728))

(assert (=> bs!1880539 m!7795722))

(declare-fun m!7796184 () Bool)

(assert (=> bs!1880539 m!7796184))

(declare-fun m!7796186 () Bool)

(assert (=> bs!1880539 m!7796186))

(assert (=> bs!1880539 m!7796184))

(declare-fun m!7796188 () Bool)

(assert (=> bs!1880539 m!7796188))

(assert (=> b!7070484 d!2211175))

(assert (=> b!7070484 d!2211123))

(assert (=> b!7070485 d!2211135))

(assert (=> b!7070485 d!2211123))

(declare-fun d!2211177 () Bool)

(declare-fun c!1318874 () Bool)

(assert (=> d!2211177 (= c!1318874 (isEmpty!39871 lt!2544666))))

(declare-fun e!4250947 () Bool)

(assert (=> d!2211177 (= (matchZipper!3178 lt!2544693 lt!2544666) e!4250947)))

(declare-fun b!7070792 () Bool)

(assert (=> b!7070792 (= e!4250947 (nullableZipper!2695 lt!2544693))))

(declare-fun b!7070793 () Bool)

(assert (=> b!7070793 (= e!4250947 (matchZipper!3178 (derivationStepZipper!3088 lt!2544693 (head!14403 lt!2544666)) (tail!13819 lt!2544666)))))

(assert (= (and d!2211177 c!1318874) b!7070792))

(assert (= (and d!2211177 (not c!1318874)) b!7070793))

(declare-fun m!7796190 () Bool)

(assert (=> d!2211177 m!7796190))

(declare-fun m!7796192 () Bool)

(assert (=> b!7070792 m!7796192))

(assert (=> b!7070793 m!7796042))

(assert (=> b!7070793 m!7796042))

(declare-fun m!7796194 () Bool)

(assert (=> b!7070793 m!7796194))

(assert (=> b!7070793 m!7796036))

(assert (=> b!7070793 m!7796194))

(assert (=> b!7070793 m!7796036))

(declare-fun m!7796196 () Bool)

(assert (=> b!7070793 m!7796196))

(assert (=> b!7070504 d!2211177))

(declare-fun d!2211179 () Bool)

(declare-fun c!1318875 () Bool)

(assert (=> d!2211179 (= c!1318875 (isEmpty!39871 (_1!37428 lt!2544656)))))

(declare-fun e!4250948 () Bool)

(assert (=> d!2211179 (= (matchZipper!3178 lt!2544662 (_1!37428 lt!2544656)) e!4250948)))

(declare-fun b!7070794 () Bool)

(assert (=> b!7070794 (= e!4250948 (nullableZipper!2695 lt!2544662))))

(declare-fun b!7070795 () Bool)

(assert (=> b!7070795 (= e!4250948 (matchZipper!3178 (derivationStepZipper!3088 lt!2544662 (head!14403 (_1!37428 lt!2544656))) (tail!13819 (_1!37428 lt!2544656))))))

(assert (= (and d!2211179 c!1318875) b!7070794))

(assert (= (and d!2211179 (not c!1318875)) b!7070795))

(assert (=> d!2211179 m!7796016))

(declare-fun m!7796198 () Bool)

(assert (=> b!7070794 m!7796198))

(assert (=> b!7070795 m!7796020))

(assert (=> b!7070795 m!7796020))

(declare-fun m!7796200 () Bool)

(assert (=> b!7070795 m!7796200))

(assert (=> b!7070795 m!7796024))

(assert (=> b!7070795 m!7796200))

(assert (=> b!7070795 m!7796024))

(declare-fun m!7796202 () Bool)

(assert (=> b!7070795 m!7796202))

(assert (=> b!7070504 d!2211179))

(declare-fun d!2211181 () Bool)

(declare-fun e!4250949 () Bool)

(assert (=> d!2211181 (= (matchZipper!3178 (set.union lt!2544688 lt!2544663) (_1!37428 lt!2544656)) e!4250949)))

(declare-fun res!2887613 () Bool)

(assert (=> d!2211181 (=> res!2887613 e!4250949)))

(assert (=> d!2211181 (= res!2887613 (matchZipper!3178 lt!2544688 (_1!37428 lt!2544656)))))

(declare-fun lt!2544899 () Unit!161986)

(assert (=> d!2211181 (= lt!2544899 (choose!54179 lt!2544688 lt!2544663 (_1!37428 lt!2544656)))))

(assert (=> d!2211181 (= (lemmaZipperConcatMatchesSameAsBothZippers!1651 lt!2544688 lt!2544663 (_1!37428 lt!2544656)) lt!2544899)))

(declare-fun b!7070796 () Bool)

(assert (=> b!7070796 (= e!4250949 (matchZipper!3178 lt!2544663 (_1!37428 lt!2544656)))))

(assert (= (and d!2211181 (not res!2887613)) b!7070796))

(declare-fun m!7796204 () Bool)

(assert (=> d!2211181 m!7796204))

(assert (=> d!2211181 m!7795726))

(declare-fun m!7796206 () Bool)

(assert (=> d!2211181 m!7796206))

(assert (=> b!7070796 m!7795760))

(assert (=> b!7070504 d!2211181))

(declare-fun b!7070801 () Bool)

(declare-fun e!4250952 () Bool)

(declare-fun tp!1942176 () Bool)

(declare-fun tp!1942177 () Bool)

(assert (=> b!7070801 (= e!4250952 (and tp!1942176 tp!1942177))))

(assert (=> b!7070495 (= tp!1942158 e!4250952)))

(assert (= (and b!7070495 (is-Cons!68316 (exprs!7134 ct2!306))) b!7070801))

(declare-fun condSetEmpty!50231 () Bool)

(assert (=> setNonEmpty!50225 (= condSetEmpty!50231 (= setRest!50225 (as set.empty (Set Context!13268))))))

(declare-fun setRes!50231 () Bool)

(assert (=> setNonEmpty!50225 (= tp!1942159 setRes!50231)))

(declare-fun setIsEmpty!50231 () Bool)

(assert (=> setIsEmpty!50231 setRes!50231))

(declare-fun tp!1942183 () Bool)

(declare-fun setNonEmpty!50231 () Bool)

(declare-fun e!4250955 () Bool)

(declare-fun setElem!50231 () Context!13268)

(assert (=> setNonEmpty!50231 (= setRes!50231 (and tp!1942183 (inv!86955 setElem!50231) e!4250955))))

(declare-fun setRest!50231 () (Set Context!13268))

(assert (=> setNonEmpty!50231 (= setRest!50225 (set.union (set.insert setElem!50231 (as set.empty (Set Context!13268))) setRest!50231))))

(declare-fun b!7070806 () Bool)

(declare-fun tp!1942182 () Bool)

(assert (=> b!7070806 (= e!4250955 tp!1942182)))

(assert (= (and setNonEmpty!50225 condSetEmpty!50231) setIsEmpty!50231))

(assert (= (and setNonEmpty!50225 (not condSetEmpty!50231)) setNonEmpty!50231))

(assert (= setNonEmpty!50231 b!7070806))

(declare-fun m!7796208 () Bool)

(assert (=> setNonEmpty!50231 m!7796208))

(declare-fun b!7070811 () Bool)

(declare-fun e!4250958 () Bool)

(declare-fun tp!1942186 () Bool)

(assert (=> b!7070811 (= e!4250958 (and tp_is_empty!44501 tp!1942186))))

(assert (=> b!7070486 (= tp!1942157 e!4250958)))

(assert (= (and b!7070486 (is-Cons!68317 (t!382224 s!7408))) b!7070811))

(declare-fun b!7070812 () Bool)

(declare-fun e!4250959 () Bool)

(declare-fun tp!1942187 () Bool)

(declare-fun tp!1942188 () Bool)

(assert (=> b!7070812 (= e!4250959 (and tp!1942187 tp!1942188))))

(assert (=> b!7070497 (= tp!1942156 e!4250959)))

(assert (= (and b!7070497 (is-Cons!68316 (exprs!7134 setElem!50225))) b!7070812))

(declare-fun b_lambda!269935 () Bool)

(assert (= b_lambda!269927 (or b!7070498 b_lambda!269935)))

(declare-fun bs!1880540 () Bool)

(declare-fun d!2211183 () Bool)

(assert (= bs!1880540 (and d!2211183 b!7070498)))

(assert (=> bs!1880540 (= (dynLambda!27783 lambda!425174 lt!2544667) (derivationStepZipperUp!2222 lt!2544667 (h!74765 s!7408)))))

(assert (=> bs!1880540 m!7795758))

(assert (=> d!2211101 d!2211183))

(declare-fun b_lambda!269937 () Bool)

(assert (= b_lambda!269929 (or b!7070498 b_lambda!269937)))

(declare-fun bs!1880541 () Bool)

(declare-fun d!2211185 () Bool)

(assert (= bs!1880541 (and d!2211185 b!7070498)))

(assert (=> bs!1880541 (= (dynLambda!27783 lambda!425174 lt!2544681) (derivationStepZipperUp!2222 lt!2544681 (h!74765 s!7408)))))

(assert (=> bs!1880541 m!7795696))

(assert (=> d!2211109 d!2211185))

(declare-fun b_lambda!269939 () Bool)

(assert (= b_lambda!269933 (or b!7070502 b_lambda!269939)))

(declare-fun bs!1880542 () Bool)

(declare-fun d!2211187 () Bool)

(assert (= bs!1880542 (and d!2211187 b!7070502)))

(assert (=> bs!1880542 (= (dynLambda!27786 lambda!425171 lt!2544874) (matchZipper!3178 (set.insert lt!2544874 (as set.empty (Set Context!13268))) s!7408))))

(declare-fun m!7796210 () Bool)

(assert (=> bs!1880542 m!7796210))

(assert (=> bs!1880542 m!7796210))

(declare-fun m!7796212 () Bool)

(assert (=> bs!1880542 m!7796212))

(assert (=> d!2211153 d!2211187))

(declare-fun b_lambda!269941 () Bool)

(assert (= b_lambda!269931 (or b!7070506 b_lambda!269941)))

(declare-fun bs!1880543 () Bool)

(declare-fun d!2211189 () Bool)

(assert (= bs!1880543 (and d!2211189 b!7070506)))

(declare-fun lt!2544900 () Unit!161986)

(assert (=> bs!1880543 (= lt!2544900 (lemmaConcatPreservesForall!949 (exprs!7134 lt!2544870) (exprs!7134 ct2!306) lambda!425173))))

(assert (=> bs!1880543 (= (dynLambda!27784 lambda!425172 lt!2544870) (Context!13269 (++!15760 (exprs!7134 lt!2544870) (exprs!7134 ct2!306))))))

(declare-fun m!7796214 () Bool)

(assert (=> bs!1880543 m!7796214))

(declare-fun m!7796216 () Bool)

(assert (=> bs!1880543 m!7796216))

(assert (=> d!2211143 d!2211189))

(push 1)

(assert (not b!7070653))

(assert (not b!7070774))

(assert (not setNonEmpty!50231))

(assert (not d!2211135))

(assert (not d!2211133))

(assert (not bm!642637))

(assert (not bm!642612))

(assert (not b!7070812))

(assert (not d!2211167))

(assert (not b_lambda!269937))

(assert (not b!7070619))

(assert (not b!7070661))

(assert (not d!2211141))

(assert (not b!7070669))

(assert (not b!7070701))

(assert (not b!7070618))

(assert (not b!7070629))

(assert (not bm!642610))

(assert (not b!7070791))

(assert (not b!7070683))

(assert (not b!7070770))

(assert (not d!2211099))

(assert (not b!7070664))

(assert (not b!7070665))

(assert (not d!2211111))

(assert (not b!7070790))

(assert (not bm!642631))

(assert (not bm!642626))

(assert (not d!2211139))

(assert (not d!2211157))

(assert (not d!2211103))

(assert (not d!2211179))

(assert (not d!2211131))

(assert (not bs!1880540))

(assert (not b!7070794))

(assert (not b!7070662))

(assert (not bm!642611))

(assert (not d!2211177))

(assert (not b!7070630))

(assert (not d!2211109))

(assert (not b!7070796))

(assert (not d!2211119))

(assert (not b!7070654))

(assert (not b!7070776))

(assert (not d!2211161))

(assert (not d!2211169))

(assert (not b!7070806))

(assert (not b!7070651))

(assert (not d!2211091))

(assert (not b!7070749))

(assert (not d!2211159))

(assert (not b!7070667))

(assert (not b!7070780))

(assert (not d!2211101))

(assert (not bm!642632))

(assert (not d!2211125))

(assert (not b!7070795))

(assert (not b!7070636))

(assert (not b!7070694))

(assert (not d!2211121))

(assert (not d!2211095))

(assert (not b!7070628))

(assert (not b!7070702))

(assert (not b!7070777))

(assert (not bs!1880543))

(assert (not bm!642625))

(assert (not d!2211153))

(assert (not b!7070657))

(assert (not b!7070811))

(assert (not d!2211127))

(assert (not b!7070793))

(assert (not b!7070681))

(assert (not b!7070682))

(assert (not d!2211113))

(assert (not b!7070693))

(assert (not b!7070671))

(assert (not b_lambda!269939))

(assert (not bs!1880541))

(assert (not d!2211123))

(assert (not b!7070627))

(assert (not b!7070738))

(assert (not d!2211155))

(assert (not bm!642633))

(assert (not d!2211181))

(assert (not b!7070792))

(assert (not bs!1880542))

(assert (not d!2211143))

(assert (not b!7070772))

(assert (not b!7070663))

(assert (not b!7070666))

(assert (not b!7070637))

(assert (not d!2211115))

(assert (not b!7070737))

(assert (not d!2211171))

(assert (not b!7070727))

(assert (not bm!642630))

(assert (not d!2211175))

(assert (not b!7070670))

(assert (not b!7070668))

(assert (not d!2211173))

(assert (not d!2211105))

(assert (not b!7070801))

(assert (not d!2211117))

(assert (not b!7070750))

(assert (not b_lambda!269935))

(assert (not d!2211151))

(assert tp_is_empty!44501)

(assert (not b!7070650))

(assert (not d!2211129))

(assert (not d!2211085))

(assert (not b!7070751))

(assert (not b!7070656))

(assert (not d!2211145))

(assert (not b!7070771))

(assert (not b_lambda!269941))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

