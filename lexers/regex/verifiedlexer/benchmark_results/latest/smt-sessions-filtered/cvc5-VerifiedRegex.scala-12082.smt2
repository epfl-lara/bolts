; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!677620 () Bool)

(assert start!677620)

(declare-fun b!7022673 () Bool)

(assert (=> b!7022673 true))

(declare-fun bs!1867973 () Bool)

(declare-fun b!7022674 () Bool)

(assert (= bs!1867973 (and b!7022674 b!7022673)))

(declare-fun lambda!411943 () Int)

(declare-fun lambda!411942 () Int)

(assert (=> bs!1867973 (not (= lambda!411943 lambda!411942))))

(declare-fun b!7022666 () Bool)

(declare-fun e!4221568 () Bool)

(declare-fun e!4221567 () Bool)

(assert (=> b!7022666 (= e!4221568 e!4221567)))

(declare-fun res!2866713 () Bool)

(assert (=> b!7022666 (=> (not res!2866713) (not e!4221567))))

(declare-datatypes ((C!35090 0))(
  ( (C!35091 (val!27247 Int)) )
))
(declare-datatypes ((Regex!17410 0))(
  ( (ElementMatch!17410 (c!1305181 C!35090)) (Concat!26255 (regOne!35332 Regex!17410) (regTwo!35332 Regex!17410)) (EmptyExpr!17410) (Star!17410 (reg!17739 Regex!17410)) (EmptyLang!17410) (Union!17410 (regOne!35333 Regex!17410) (regTwo!35333 Regex!17410)) )
))
(declare-datatypes ((List!67769 0))(
  ( (Nil!67645) (Cons!67645 (h!74093 Regex!17410) (t!381524 List!67769)) )
))
(declare-datatypes ((Context!12812 0))(
  ( (Context!12813 (exprs!6906 List!67769)) )
))
(declare-fun lt!2512637 () Context!12812)

(declare-fun nullableContext!70 (Context!12812) Bool)

(assert (=> b!7022666 (= res!2866713 (nullableContext!70 lt!2512637))))

(declare-fun lt!2512641 () (Set Context!12812))

(declare-fun lambda!411940 () Int)

(declare-fun getWitness!1389 ((Set Context!12812) Int) Context!12812)

(assert (=> b!7022666 (= lt!2512637 (getWitness!1389 lt!2512641 lambda!411940))))

(declare-fun res!2866708 () Bool)

(assert (=> start!677620 (=> (not res!2866708) (not e!4221568))))

(declare-datatypes ((List!67770 0))(
  ( (Nil!67646) (Cons!67646 (h!74094 C!35090) (t!381525 List!67770)) )
))
(declare-fun s!7408 () List!67770)

(declare-fun matchZipper!2950 ((Set Context!12812) List!67770) Bool)

(assert (=> start!677620 (= res!2866708 (matchZipper!2950 lt!2512641 s!7408))))

(declare-fun z1!570 () (Set Context!12812))

(declare-fun ct2!306 () Context!12812)

(declare-fun appendTo!531 ((Set Context!12812) Context!12812) (Set Context!12812))

(assert (=> start!677620 (= lt!2512641 (appendTo!531 z1!570 ct2!306))))

(assert (=> start!677620 e!4221568))

(declare-fun condSetEmpty!48815 () Bool)

(assert (=> start!677620 (= condSetEmpty!48815 (= z1!570 (as set.empty (Set Context!12812))))))

(declare-fun setRes!48815 () Bool)

(assert (=> start!677620 setRes!48815))

(declare-fun e!4221572 () Bool)

(declare-fun inv!86385 (Context!12812) Bool)

(assert (=> start!677620 (and (inv!86385 ct2!306) e!4221572)))

(declare-fun e!4221570 () Bool)

(assert (=> start!677620 e!4221570))

(declare-fun b!7022667 () Bool)

(declare-fun res!2866711 () Bool)

(assert (=> b!7022667 (=> (not res!2866711) (not e!4221568))))

(declare-fun exists!3308 ((Set Context!12812) Int) Bool)

(assert (=> b!7022667 (= res!2866711 (exists!3308 lt!2512641 lambda!411940))))

(declare-fun setIsEmpty!48815 () Bool)

(assert (=> setIsEmpty!48815 setRes!48815))

(declare-fun b!7022668 () Bool)

(declare-fun tp!1934652 () Bool)

(assert (=> b!7022668 (= e!4221572 tp!1934652)))

(declare-fun b!7022669 () Bool)

(declare-fun res!2866714 () Bool)

(assert (=> b!7022669 (=> (not res!2866714) (not e!4221568))))

(declare-fun nullableZipper!2539 ((Set Context!12812)) Bool)

(assert (=> b!7022669 (= res!2866714 (nullableZipper!2539 lt!2512641))))

(declare-fun b!7022670 () Bool)

(declare-fun tp_is_empty!44045 () Bool)

(declare-fun tp!1934654 () Bool)

(assert (=> b!7022670 (= e!4221570 (and tp_is_empty!44045 tp!1934654))))

(declare-fun setElem!48815 () Context!12812)

(declare-fun tp!1934655 () Bool)

(declare-fun setNonEmpty!48815 () Bool)

(declare-fun e!4221571 () Bool)

(assert (=> setNonEmpty!48815 (= setRes!48815 (and tp!1934655 (inv!86385 setElem!48815) e!4221571))))

(declare-fun setRest!48815 () (Set Context!12812))

(assert (=> setNonEmpty!48815 (= z1!570 (set.union (set.insert setElem!48815 (as set.empty (Set Context!12812))) setRest!48815))))

(declare-fun b!7022671 () Bool)

(declare-fun res!2866710 () Bool)

(assert (=> b!7022671 (=> (not res!2866710) (not e!4221568))))

(assert (=> b!7022671 (= res!2866710 (not (is-Cons!67646 s!7408)))))

(declare-fun b!7022672 () Bool)

(declare-fun tp!1934653 () Bool)

(assert (=> b!7022672 (= e!4221571 tp!1934653)))

(declare-fun e!4221573 () Bool)

(assert (=> b!7022673 (= e!4221567 e!4221573)))

(declare-fun res!2866709 () Bool)

(assert (=> b!7022673 (=> (not res!2866709) (not e!4221573))))

(declare-fun lt!2512636 () List!67769)

(assert (=> b!7022673 (= res!2866709 (= (Context!12813 lt!2512636) lt!2512637))))

(declare-fun lt!2512635 () Context!12812)

(declare-fun ++!15445 (List!67769 List!67769) List!67769)

(assert (=> b!7022673 (= lt!2512636 (++!15445 (exprs!6906 lt!2512635) (exprs!6906 ct2!306)))))

(declare-datatypes ((Unit!161486 0))(
  ( (Unit!161487) )
))
(declare-fun lt!2512634 () Unit!161486)

(declare-fun lemmaConcatPreservesForall!737 (List!67769 List!67769 Int) Unit!161486)

(assert (=> b!7022673 (= lt!2512634 (lemmaConcatPreservesForall!737 (exprs!6906 lt!2512635) (exprs!6906 ct2!306) lambda!411942))))

(declare-fun lambda!411941 () Int)

(declare-fun mapPost2!257 ((Set Context!12812) Int Context!12812) Context!12812)

(assert (=> b!7022673 (= lt!2512635 (mapPost2!257 z1!570 lambda!411941 lt!2512637))))

(declare-fun e!4221569 () Bool)

(assert (=> b!7022674 (= e!4221573 (not e!4221569))))

(declare-fun res!2866712 () Bool)

(assert (=> b!7022674 (=> res!2866712 e!4221569)))

(declare-fun forall!16316 (List!67769 Int) Bool)

(assert (=> b!7022674 (= res!2866712 (not (forall!16316 lt!2512636 lambda!411943)))))

(declare-fun lt!2512638 () Unit!161486)

(declare-fun lemmaContentSubsetPreservesForall!337 (List!67769 List!67769 Int) Unit!161486)

(assert (=> b!7022674 (= lt!2512638 (lemmaContentSubsetPreservesForall!337 lt!2512636 (exprs!6906 lt!2512635) lambda!411943))))

(declare-fun subseq!686 (List!67769 List!67769) Bool)

(assert (=> b!7022674 (subseq!686 (exprs!6906 ct2!306) lt!2512636)))

(declare-fun lt!2512640 () Unit!161486)

(declare-fun lemmaConcatThenSecondSubseqOfTot!7 (List!67769 List!67769) Unit!161486)

(assert (=> b!7022674 (= lt!2512640 (lemmaConcatThenSecondSubseqOfTot!7 (exprs!6906 lt!2512635) (exprs!6906 ct2!306)))))

(assert (=> b!7022674 (subseq!686 (exprs!6906 lt!2512635) lt!2512636)))

(declare-fun lt!2512639 () Unit!161486)

(declare-fun lemmaConcatThenFirstSubseqOfTot!7 (List!67769 List!67769) Unit!161486)

(assert (=> b!7022674 (= lt!2512639 (lemmaConcatThenFirstSubseqOfTot!7 (exprs!6906 lt!2512635) (exprs!6906 ct2!306)))))

(declare-fun b!7022675 () Bool)

(declare-fun content!13470 (List!67769) (Set Regex!17410))

(assert (=> b!7022675 (= e!4221569 (set.subset (content!13470 (exprs!6906 ct2!306)) (content!13470 lt!2512636)))))

(assert (= (and start!677620 res!2866708) b!7022671))

(assert (= (and b!7022671 res!2866710) b!7022669))

(assert (= (and b!7022669 res!2866714) b!7022667))

(assert (= (and b!7022667 res!2866711) b!7022666))

(assert (= (and b!7022666 res!2866713) b!7022673))

(assert (= (and b!7022673 res!2866709) b!7022674))

(assert (= (and b!7022674 (not res!2866712)) b!7022675))

(assert (= (and start!677620 condSetEmpty!48815) setIsEmpty!48815))

(assert (= (and start!677620 (not condSetEmpty!48815)) setNonEmpty!48815))

(assert (= setNonEmpty!48815 b!7022672))

(assert (= start!677620 b!7022668))

(assert (= (and start!677620 (is-Cons!67646 s!7408)) b!7022670))

(declare-fun m!7724838 () Bool)

(assert (=> b!7022666 m!7724838))

(declare-fun m!7724840 () Bool)

(assert (=> b!7022666 m!7724840))

(declare-fun m!7724842 () Bool)

(assert (=> b!7022667 m!7724842))

(declare-fun m!7724844 () Bool)

(assert (=> b!7022669 m!7724844))

(declare-fun m!7724846 () Bool)

(assert (=> start!677620 m!7724846))

(declare-fun m!7724848 () Bool)

(assert (=> start!677620 m!7724848))

(declare-fun m!7724850 () Bool)

(assert (=> start!677620 m!7724850))

(declare-fun m!7724852 () Bool)

(assert (=> setNonEmpty!48815 m!7724852))

(declare-fun m!7724854 () Bool)

(assert (=> b!7022673 m!7724854))

(declare-fun m!7724856 () Bool)

(assert (=> b!7022673 m!7724856))

(declare-fun m!7724858 () Bool)

(assert (=> b!7022673 m!7724858))

(declare-fun m!7724860 () Bool)

(assert (=> b!7022675 m!7724860))

(declare-fun m!7724862 () Bool)

(assert (=> b!7022675 m!7724862))

(declare-fun m!7724864 () Bool)

(assert (=> b!7022674 m!7724864))

(declare-fun m!7724866 () Bool)

(assert (=> b!7022674 m!7724866))

(declare-fun m!7724868 () Bool)

(assert (=> b!7022674 m!7724868))

(declare-fun m!7724870 () Bool)

(assert (=> b!7022674 m!7724870))

(declare-fun m!7724872 () Bool)

(assert (=> b!7022674 m!7724872))

(declare-fun m!7724874 () Bool)

(assert (=> b!7022674 m!7724874))

(push 1)

(assert (not b!7022669))

(assert (not b!7022673))

(assert (not b!7022668))

(assert (not b!7022672))

(assert (not setNonEmpty!48815))

(assert tp_is_empty!44045)

(assert (not b!7022666))

(assert (not b!7022667))

(assert (not start!677620))

(assert (not b!7022675))

(assert (not b!7022670))

(assert (not b!7022674))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun bs!1867975 () Bool)

(declare-fun d!2189177 () Bool)

(assert (= bs!1867975 (and d!2189177 b!7022673)))

(declare-fun lambda!411964 () Int)

(assert (=> bs!1867975 (= lambda!411964 lambda!411942)))

(declare-fun bs!1867976 () Bool)

(assert (= bs!1867976 (and d!2189177 b!7022674)))

(assert (=> bs!1867976 (not (= lambda!411964 lambda!411943))))

(assert (=> d!2189177 (= (inv!86385 setElem!48815) (forall!16316 (exprs!6906 setElem!48815) lambda!411964))))

(declare-fun bs!1867977 () Bool)

(assert (= bs!1867977 d!2189177))

(declare-fun m!7724914 () Bool)

(assert (=> bs!1867977 m!7724914))

(assert (=> setNonEmpty!48815 d!2189177))

(declare-fun d!2189179 () Bool)

(declare-fun lt!2512670 () Bool)

(declare-datatypes ((List!67773 0))(
  ( (Nil!67649) (Cons!67649 (h!74097 Context!12812) (t!381528 List!67773)) )
))
(declare-fun exists!3310 (List!67773 Int) Bool)

(declare-fun toList!10764 ((Set Context!12812)) List!67773)

(assert (=> d!2189179 (= lt!2512670 (exists!3310 (toList!10764 lt!2512641) lambda!411940))))

(declare-fun choose!53007 ((Set Context!12812) Int) Bool)

(assert (=> d!2189179 (= lt!2512670 (choose!53007 lt!2512641 lambda!411940))))

(assert (=> d!2189179 (= (exists!3308 lt!2512641 lambda!411940) lt!2512670)))

(declare-fun bs!1867978 () Bool)

(assert (= bs!1867978 d!2189179))

(declare-fun m!7724916 () Bool)

(assert (=> bs!1867978 m!7724916))

(assert (=> bs!1867978 m!7724916))

(declare-fun m!7724918 () Bool)

(assert (=> bs!1867978 m!7724918))

(declare-fun m!7724920 () Bool)

(assert (=> bs!1867978 m!7724920))

(assert (=> b!7022667 d!2189179))

(declare-fun d!2189181 () Bool)

(declare-fun c!1305191 () Bool)

(declare-fun isEmpty!39468 (List!67770) Bool)

(assert (=> d!2189181 (= c!1305191 (isEmpty!39468 s!7408))))

(declare-fun e!4221597 () Bool)

(assert (=> d!2189181 (= (matchZipper!2950 lt!2512641 s!7408) e!4221597)))

(declare-fun b!7022714 () Bool)

(assert (=> b!7022714 (= e!4221597 (nullableZipper!2539 lt!2512641))))

(declare-fun b!7022715 () Bool)

(declare-fun derivationStepZipper!2880 ((Set Context!12812) C!35090) (Set Context!12812))

(declare-fun head!14223 (List!67770) C!35090)

(declare-fun tail!13490 (List!67770) List!67770)

(assert (=> b!7022715 (= e!4221597 (matchZipper!2950 (derivationStepZipper!2880 lt!2512641 (head!14223 s!7408)) (tail!13490 s!7408)))))

(assert (= (and d!2189181 c!1305191) b!7022714))

(assert (= (and d!2189181 (not c!1305191)) b!7022715))

(declare-fun m!7724922 () Bool)

(assert (=> d!2189181 m!7724922))

(assert (=> b!7022714 m!7724844))

(declare-fun m!7724924 () Bool)

(assert (=> b!7022715 m!7724924))

(assert (=> b!7022715 m!7724924))

(declare-fun m!7724926 () Bool)

(assert (=> b!7022715 m!7724926))

(declare-fun m!7724928 () Bool)

(assert (=> b!7022715 m!7724928))

(assert (=> b!7022715 m!7724926))

(assert (=> b!7022715 m!7724928))

(declare-fun m!7724930 () Bool)

(assert (=> b!7022715 m!7724930))

(assert (=> start!677620 d!2189181))

(declare-fun bs!1867982 () Bool)

(declare-fun d!2189185 () Bool)

(assert (= bs!1867982 (and d!2189185 b!7022673)))

(declare-fun lambda!411972 () Int)

(assert (=> bs!1867982 (= lambda!411972 lambda!411941)))

(assert (=> d!2189185 true))

(declare-fun map!15700 ((Set Context!12812) Int) (Set Context!12812))

(assert (=> d!2189185 (= (appendTo!531 z1!570 ct2!306) (map!15700 z1!570 lambda!411972))))

(declare-fun bs!1867983 () Bool)

(assert (= bs!1867983 d!2189185))

(declare-fun m!7724934 () Bool)

(assert (=> bs!1867983 m!7724934))

(assert (=> start!677620 d!2189185))

(declare-fun bs!1867984 () Bool)

(declare-fun d!2189189 () Bool)

(assert (= bs!1867984 (and d!2189189 b!7022673)))

(declare-fun lambda!411973 () Int)

(assert (=> bs!1867984 (= lambda!411973 lambda!411942)))

(declare-fun bs!1867985 () Bool)

(assert (= bs!1867985 (and d!2189189 b!7022674)))

(assert (=> bs!1867985 (not (= lambda!411973 lambda!411943))))

(declare-fun bs!1867986 () Bool)

(assert (= bs!1867986 (and d!2189189 d!2189177)))

(assert (=> bs!1867986 (= lambda!411973 lambda!411964)))

(assert (=> d!2189189 (= (inv!86385 ct2!306) (forall!16316 (exprs!6906 ct2!306) lambda!411973))))

(declare-fun bs!1867987 () Bool)

(assert (= bs!1867987 d!2189189))

(declare-fun m!7724936 () Bool)

(assert (=> bs!1867987 m!7724936))

(assert (=> start!677620 d!2189189))

(declare-fun bs!1867988 () Bool)

(declare-fun d!2189191 () Bool)

(assert (= bs!1867988 (and d!2189191 b!7022667)))

(declare-fun lambda!411976 () Int)

(assert (=> bs!1867988 (= lambda!411976 lambda!411940)))

(assert (=> d!2189191 (= (nullableZipper!2539 lt!2512641) (exists!3308 lt!2512641 lambda!411976))))

(declare-fun bs!1867989 () Bool)

(assert (= bs!1867989 d!2189191))

(declare-fun m!7724946 () Bool)

(assert (=> bs!1867989 m!7724946))

(assert (=> b!7022669 d!2189191))

(declare-fun d!2189197 () Bool)

(declare-fun e!4221609 () Bool)

(assert (=> d!2189197 e!4221609))

(declare-fun res!2866743 () Bool)

(assert (=> d!2189197 (=> (not res!2866743) (not e!4221609))))

(declare-fun lt!2512677 () List!67769)

(assert (=> d!2189197 (= res!2866743 (= (content!13470 lt!2512677) (set.union (content!13470 (exprs!6906 lt!2512635)) (content!13470 (exprs!6906 ct2!306)))))))

(declare-fun e!4221608 () List!67769)

(assert (=> d!2189197 (= lt!2512677 e!4221608)))

(declare-fun c!1305203 () Bool)

(assert (=> d!2189197 (= c!1305203 (is-Nil!67645 (exprs!6906 lt!2512635)))))

(assert (=> d!2189197 (= (++!15445 (exprs!6906 lt!2512635) (exprs!6906 ct2!306)) lt!2512677)))

(declare-fun b!7022739 () Bool)

(assert (=> b!7022739 (= e!4221609 (or (not (= (exprs!6906 ct2!306) Nil!67645)) (= lt!2512677 (exprs!6906 lt!2512635))))))

(declare-fun b!7022738 () Bool)

(declare-fun res!2866742 () Bool)

(assert (=> b!7022738 (=> (not res!2866742) (not e!4221609))))

(declare-fun size!41029 (List!67769) Int)

(assert (=> b!7022738 (= res!2866742 (= (size!41029 lt!2512677) (+ (size!41029 (exprs!6906 lt!2512635)) (size!41029 (exprs!6906 ct2!306)))))))

(declare-fun b!7022736 () Bool)

(assert (=> b!7022736 (= e!4221608 (exprs!6906 ct2!306))))

(declare-fun b!7022737 () Bool)

(assert (=> b!7022737 (= e!4221608 (Cons!67645 (h!74093 (exprs!6906 lt!2512635)) (++!15445 (t!381524 (exprs!6906 lt!2512635)) (exprs!6906 ct2!306))))))

(assert (= (and d!2189197 c!1305203) b!7022736))

(assert (= (and d!2189197 (not c!1305203)) b!7022737))

(assert (= (and d!2189197 res!2866743) b!7022738))

(assert (= (and b!7022738 res!2866742) b!7022739))

(declare-fun m!7724948 () Bool)

(assert (=> d!2189197 m!7724948))

(declare-fun m!7724950 () Bool)

(assert (=> d!2189197 m!7724950))

(assert (=> d!2189197 m!7724860))

(declare-fun m!7724952 () Bool)

(assert (=> b!7022738 m!7724952))

(declare-fun m!7724954 () Bool)

(assert (=> b!7022738 m!7724954))

(declare-fun m!7724956 () Bool)

(assert (=> b!7022738 m!7724956))

(declare-fun m!7724958 () Bool)

(assert (=> b!7022737 m!7724958))

(assert (=> b!7022673 d!2189197))

(declare-fun d!2189199 () Bool)

(assert (=> d!2189199 (forall!16316 (++!15445 (exprs!6906 lt!2512635) (exprs!6906 ct2!306)) lambda!411942)))

(declare-fun lt!2512680 () Unit!161486)

(declare-fun choose!53008 (List!67769 List!67769 Int) Unit!161486)

(assert (=> d!2189199 (= lt!2512680 (choose!53008 (exprs!6906 lt!2512635) (exprs!6906 ct2!306) lambda!411942))))

(assert (=> d!2189199 (forall!16316 (exprs!6906 lt!2512635) lambda!411942)))

(assert (=> d!2189199 (= (lemmaConcatPreservesForall!737 (exprs!6906 lt!2512635) (exprs!6906 ct2!306) lambda!411942) lt!2512680)))

(declare-fun bs!1867990 () Bool)

(assert (= bs!1867990 d!2189199))

(assert (=> bs!1867990 m!7724854))

(assert (=> bs!1867990 m!7724854))

(declare-fun m!7724960 () Bool)

(assert (=> bs!1867990 m!7724960))

(declare-fun m!7724962 () Bool)

(assert (=> bs!1867990 m!7724962))

(declare-fun m!7724964 () Bool)

(assert (=> bs!1867990 m!7724964))

(assert (=> b!7022673 d!2189199))

(declare-fun d!2189201 () Bool)

(declare-fun e!4221616 () Bool)

(assert (=> d!2189201 e!4221616))

(declare-fun res!2866752 () Bool)

(assert (=> d!2189201 (=> (not res!2866752) (not e!4221616))))

(declare-fun lt!2512684 () Context!12812)

(declare-fun dynLambda!27260 (Int Context!12812) Context!12812)

(assert (=> d!2189201 (= res!2866752 (= lt!2512637 (dynLambda!27260 lambda!411941 lt!2512684)))))

(declare-fun choose!53009 ((Set Context!12812) Int Context!12812) Context!12812)

(assert (=> d!2189201 (= lt!2512684 (choose!53009 z1!570 lambda!411941 lt!2512637))))

(assert (=> d!2189201 (set.member lt!2512637 (map!15700 z1!570 lambda!411941))))

(assert (=> d!2189201 (= (mapPost2!257 z1!570 lambda!411941 lt!2512637) lt!2512684)))

(declare-fun b!7022751 () Bool)

(assert (=> b!7022751 (= e!4221616 (set.member lt!2512684 z1!570))))

(assert (= (and d!2189201 res!2866752) b!7022751))

(declare-fun b_lambda!265315 () Bool)

(assert (=> (not b_lambda!265315) (not d!2189201)))

(declare-fun m!7724978 () Bool)

(assert (=> d!2189201 m!7724978))

(declare-fun m!7724980 () Bool)

(assert (=> d!2189201 m!7724980))

(declare-fun m!7724982 () Bool)

(assert (=> d!2189201 m!7724982))

(declare-fun m!7724984 () Bool)

(assert (=> d!2189201 m!7724984))

(declare-fun m!7724986 () Bool)

(assert (=> b!7022751 m!7724986))

(assert (=> b!7022673 d!2189201))

(declare-fun bs!1867991 () Bool)

(declare-fun d!2189205 () Bool)

(assert (= bs!1867991 (and d!2189205 b!7022673)))

(declare-fun lambda!411979 () Int)

(assert (=> bs!1867991 (not (= lambda!411979 lambda!411942))))

(declare-fun bs!1867992 () Bool)

(assert (= bs!1867992 (and d!2189205 b!7022674)))

(assert (=> bs!1867992 (= lambda!411979 lambda!411943)))

(declare-fun bs!1867993 () Bool)

(assert (= bs!1867993 (and d!2189205 d!2189177)))

(assert (=> bs!1867993 (not (= lambda!411979 lambda!411964))))

(declare-fun bs!1867994 () Bool)

(assert (= bs!1867994 (and d!2189205 d!2189189)))

(assert (=> bs!1867994 (not (= lambda!411979 lambda!411973))))

(assert (=> d!2189205 (= (nullableContext!70 lt!2512637) (forall!16316 (exprs!6906 lt!2512637) lambda!411979))))

(declare-fun bs!1867995 () Bool)

(assert (= bs!1867995 d!2189205))

(declare-fun m!7724988 () Bool)

(assert (=> bs!1867995 m!7724988))

(assert (=> b!7022666 d!2189205))

(declare-fun d!2189207 () Bool)

(declare-fun e!4221619 () Bool)

(assert (=> d!2189207 e!4221619))

(declare-fun res!2866755 () Bool)

(assert (=> d!2189207 (=> (not res!2866755) (not e!4221619))))

(declare-fun lt!2512687 () Context!12812)

(declare-fun dynLambda!27261 (Int Context!12812) Bool)

(assert (=> d!2189207 (= res!2866755 (dynLambda!27261 lambda!411940 lt!2512687))))

(declare-fun getWitness!1391 (List!67773 Int) Context!12812)

(assert (=> d!2189207 (= lt!2512687 (getWitness!1391 (toList!10764 lt!2512641) lambda!411940))))

(assert (=> d!2189207 (exists!3308 lt!2512641 lambda!411940)))

(assert (=> d!2189207 (= (getWitness!1389 lt!2512641 lambda!411940) lt!2512687)))

(declare-fun b!7022754 () Bool)

(assert (=> b!7022754 (= e!4221619 (set.member lt!2512687 lt!2512641))))

(assert (= (and d!2189207 res!2866755) b!7022754))

(declare-fun b_lambda!265317 () Bool)

(assert (=> (not b_lambda!265317) (not d!2189207)))

(declare-fun m!7724990 () Bool)

(assert (=> d!2189207 m!7724990))

(assert (=> d!2189207 m!7724916))

(assert (=> d!2189207 m!7724916))

(declare-fun m!7724992 () Bool)

(assert (=> d!2189207 m!7724992))

(assert (=> d!2189207 m!7724842))

(declare-fun m!7724994 () Bool)

(assert (=> b!7022754 m!7724994))

(assert (=> b!7022666 d!2189207))

(declare-fun d!2189209 () Bool)

(declare-fun c!1305208 () Bool)

(assert (=> d!2189209 (= c!1305208 (is-Nil!67645 (exprs!6906 ct2!306)))))

(declare-fun e!4221622 () (Set Regex!17410))

(assert (=> d!2189209 (= (content!13470 (exprs!6906 ct2!306)) e!4221622)))

(declare-fun b!7022759 () Bool)

(assert (=> b!7022759 (= e!4221622 (as set.empty (Set Regex!17410)))))

(declare-fun b!7022760 () Bool)

(assert (=> b!7022760 (= e!4221622 (set.union (set.insert (h!74093 (exprs!6906 ct2!306)) (as set.empty (Set Regex!17410))) (content!13470 (t!381524 (exprs!6906 ct2!306)))))))

(assert (= (and d!2189209 c!1305208) b!7022759))

(assert (= (and d!2189209 (not c!1305208)) b!7022760))

(declare-fun m!7724996 () Bool)

(assert (=> b!7022760 m!7724996))

(declare-fun m!7724998 () Bool)

(assert (=> b!7022760 m!7724998))

(assert (=> b!7022675 d!2189209))

(declare-fun d!2189211 () Bool)

(declare-fun c!1305209 () Bool)

(assert (=> d!2189211 (= c!1305209 (is-Nil!67645 lt!2512636))))

(declare-fun e!4221623 () (Set Regex!17410))

(assert (=> d!2189211 (= (content!13470 lt!2512636) e!4221623)))

(declare-fun b!7022761 () Bool)

(assert (=> b!7022761 (= e!4221623 (as set.empty (Set Regex!17410)))))

(declare-fun b!7022762 () Bool)

(assert (=> b!7022762 (= e!4221623 (set.union (set.insert (h!74093 lt!2512636) (as set.empty (Set Regex!17410))) (content!13470 (t!381524 lt!2512636))))))

(assert (= (and d!2189211 c!1305209) b!7022761))

(assert (= (and d!2189211 (not c!1305209)) b!7022762))

(declare-fun m!7725000 () Bool)

(assert (=> b!7022762 m!7725000))

(declare-fun m!7725002 () Bool)

(assert (=> b!7022762 m!7725002))

(assert (=> b!7022675 d!2189211))

(declare-fun d!2189213 () Bool)

(assert (=> d!2189213 (subseq!686 (exprs!6906 ct2!306) (++!15445 (exprs!6906 lt!2512635) (exprs!6906 ct2!306)))))

(declare-fun lt!2512690 () Unit!161486)

(declare-fun choose!53010 (List!67769 List!67769) Unit!161486)

(assert (=> d!2189213 (= lt!2512690 (choose!53010 (exprs!6906 lt!2512635) (exprs!6906 ct2!306)))))

(assert (=> d!2189213 (= (lemmaConcatThenSecondSubseqOfTot!7 (exprs!6906 lt!2512635) (exprs!6906 ct2!306)) lt!2512690)))

(declare-fun bs!1867996 () Bool)

(assert (= bs!1867996 d!2189213))

(assert (=> bs!1867996 m!7724854))

(assert (=> bs!1867996 m!7724854))

(declare-fun m!7725004 () Bool)

(assert (=> bs!1867996 m!7725004))

(declare-fun m!7725006 () Bool)

(assert (=> bs!1867996 m!7725006))

(assert (=> b!7022674 d!2189213))

(declare-fun d!2189215 () Bool)

(assert (=> d!2189215 (forall!16316 (exprs!6906 lt!2512635) lambda!411943)))

(declare-fun lt!2512693 () Unit!161486)

(declare-fun choose!53011 (List!67769 List!67769 Int) Unit!161486)

(assert (=> d!2189215 (= lt!2512693 (choose!53011 lt!2512636 (exprs!6906 lt!2512635) lambda!411943))))

(assert (=> d!2189215 (forall!16316 lt!2512636 lambda!411943)))

(assert (=> d!2189215 (= (lemmaContentSubsetPreservesForall!337 lt!2512636 (exprs!6906 lt!2512635) lambda!411943) lt!2512693)))

(declare-fun bs!1867997 () Bool)

(assert (= bs!1867997 d!2189215))

(declare-fun m!7725008 () Bool)

(assert (=> bs!1867997 m!7725008))

(declare-fun m!7725010 () Bool)

(assert (=> bs!1867997 m!7725010))

(assert (=> bs!1867997 m!7724870))

(assert (=> b!7022674 d!2189215))

(declare-fun d!2189217 () Bool)

(assert (=> d!2189217 (subseq!686 (exprs!6906 lt!2512635) (++!15445 (exprs!6906 lt!2512635) (exprs!6906 ct2!306)))))

(declare-fun lt!2512696 () Unit!161486)

(declare-fun choose!53012 (List!67769 List!67769) Unit!161486)

(assert (=> d!2189217 (= lt!2512696 (choose!53012 (exprs!6906 lt!2512635) (exprs!6906 ct2!306)))))

(assert (=> d!2189217 (= (lemmaConcatThenFirstSubseqOfTot!7 (exprs!6906 lt!2512635) (exprs!6906 ct2!306)) lt!2512696)))

(declare-fun bs!1867998 () Bool)

(assert (= bs!1867998 d!2189217))

(assert (=> bs!1867998 m!7724854))

(assert (=> bs!1867998 m!7724854))

(declare-fun m!7725012 () Bool)

(assert (=> bs!1867998 m!7725012))

(declare-fun m!7725014 () Bool)

(assert (=> bs!1867998 m!7725014))

(assert (=> b!7022674 d!2189217))

(declare-fun b!7022771 () Bool)

(declare-fun e!4221634 () Bool)

(declare-fun e!4221633 () Bool)

(assert (=> b!7022771 (= e!4221634 e!4221633)))

(declare-fun res!2866765 () Bool)

(assert (=> b!7022771 (=> (not res!2866765) (not e!4221633))))

(assert (=> b!7022771 (= res!2866765 (is-Cons!67645 lt!2512636))))

(declare-fun b!7022774 () Bool)

(declare-fun e!4221632 () Bool)

(assert (=> b!7022774 (= e!4221632 (subseq!686 (exprs!6906 ct2!306) (t!381524 lt!2512636)))))

(declare-fun d!2189219 () Bool)

(declare-fun res!2866766 () Bool)

(assert (=> d!2189219 (=> res!2866766 e!4221634)))

(assert (=> d!2189219 (= res!2866766 (is-Nil!67645 (exprs!6906 ct2!306)))))

(assert (=> d!2189219 (= (subseq!686 (exprs!6906 ct2!306) lt!2512636) e!4221634)))

(declare-fun b!7022772 () Bool)

(assert (=> b!7022772 (= e!4221633 e!4221632)))

(declare-fun res!2866764 () Bool)

(assert (=> b!7022772 (=> res!2866764 e!4221632)))

(declare-fun e!4221635 () Bool)

(assert (=> b!7022772 (= res!2866764 e!4221635)))

(declare-fun res!2866767 () Bool)

(assert (=> b!7022772 (=> (not res!2866767) (not e!4221635))))

(assert (=> b!7022772 (= res!2866767 (= (h!74093 (exprs!6906 ct2!306)) (h!74093 lt!2512636)))))

(declare-fun b!7022773 () Bool)

(assert (=> b!7022773 (= e!4221635 (subseq!686 (t!381524 (exprs!6906 ct2!306)) (t!381524 lt!2512636)))))

(assert (= (and d!2189219 (not res!2866766)) b!7022771))

(assert (= (and b!7022771 res!2866765) b!7022772))

(assert (= (and b!7022772 res!2866767) b!7022773))

(assert (= (and b!7022772 (not res!2866764)) b!7022774))

(declare-fun m!7725016 () Bool)

(assert (=> b!7022774 m!7725016))

(declare-fun m!7725018 () Bool)

(assert (=> b!7022773 m!7725018))

(assert (=> b!7022674 d!2189219))

(declare-fun b!7022775 () Bool)

(declare-fun e!4221638 () Bool)

(declare-fun e!4221637 () Bool)

(assert (=> b!7022775 (= e!4221638 e!4221637)))

(declare-fun res!2866769 () Bool)

(assert (=> b!7022775 (=> (not res!2866769) (not e!4221637))))

(assert (=> b!7022775 (= res!2866769 (is-Cons!67645 lt!2512636))))

(declare-fun b!7022778 () Bool)

(declare-fun e!4221636 () Bool)

(assert (=> b!7022778 (= e!4221636 (subseq!686 (exprs!6906 lt!2512635) (t!381524 lt!2512636)))))

(declare-fun d!2189221 () Bool)

(declare-fun res!2866770 () Bool)

(assert (=> d!2189221 (=> res!2866770 e!4221638)))

(assert (=> d!2189221 (= res!2866770 (is-Nil!67645 (exprs!6906 lt!2512635)))))

(assert (=> d!2189221 (= (subseq!686 (exprs!6906 lt!2512635) lt!2512636) e!4221638)))

(declare-fun b!7022776 () Bool)

(assert (=> b!7022776 (= e!4221637 e!4221636)))

(declare-fun res!2866768 () Bool)

(assert (=> b!7022776 (=> res!2866768 e!4221636)))

(declare-fun e!4221639 () Bool)

(assert (=> b!7022776 (= res!2866768 e!4221639)))

(declare-fun res!2866771 () Bool)

(assert (=> b!7022776 (=> (not res!2866771) (not e!4221639))))

(assert (=> b!7022776 (= res!2866771 (= (h!74093 (exprs!6906 lt!2512635)) (h!74093 lt!2512636)))))

(declare-fun b!7022777 () Bool)

(assert (=> b!7022777 (= e!4221639 (subseq!686 (t!381524 (exprs!6906 lt!2512635)) (t!381524 lt!2512636)))))

(assert (= (and d!2189221 (not res!2866770)) b!7022775))

(assert (= (and b!7022775 res!2866769) b!7022776))

(assert (= (and b!7022776 res!2866771) b!7022777))

(assert (= (and b!7022776 (not res!2866768)) b!7022778))

(declare-fun m!7725020 () Bool)

(assert (=> b!7022778 m!7725020))

(declare-fun m!7725022 () Bool)

(assert (=> b!7022777 m!7725022))

(assert (=> b!7022674 d!2189221))

(declare-fun d!2189223 () Bool)

(declare-fun res!2866776 () Bool)

(declare-fun e!4221644 () Bool)

(assert (=> d!2189223 (=> res!2866776 e!4221644)))

(assert (=> d!2189223 (= res!2866776 (is-Nil!67645 lt!2512636))))

(assert (=> d!2189223 (= (forall!16316 lt!2512636 lambda!411943) e!4221644)))

(declare-fun b!7022783 () Bool)

(declare-fun e!4221645 () Bool)

(assert (=> b!7022783 (= e!4221644 e!4221645)))

(declare-fun res!2866777 () Bool)

(assert (=> b!7022783 (=> (not res!2866777) (not e!4221645))))

(declare-fun dynLambda!27262 (Int Regex!17410) Bool)

(assert (=> b!7022783 (= res!2866777 (dynLambda!27262 lambda!411943 (h!74093 lt!2512636)))))

(declare-fun b!7022784 () Bool)

(assert (=> b!7022784 (= e!4221645 (forall!16316 (t!381524 lt!2512636) lambda!411943))))

(assert (= (and d!2189223 (not res!2866776)) b!7022783))

(assert (= (and b!7022783 res!2866777) b!7022784))

(declare-fun b_lambda!265319 () Bool)

(assert (=> (not b_lambda!265319) (not b!7022783)))

(declare-fun m!7725024 () Bool)

(assert (=> b!7022783 m!7725024))

(declare-fun m!7725026 () Bool)

(assert (=> b!7022784 m!7725026))

(assert (=> b!7022674 d!2189223))

(declare-fun condSetEmpty!48821 () Bool)

(assert (=> setNonEmpty!48815 (= condSetEmpty!48821 (= setRest!48815 (as set.empty (Set Context!12812))))))

(declare-fun setRes!48821 () Bool)

(assert (=> setNonEmpty!48815 (= tp!1934655 setRes!48821)))

(declare-fun setIsEmpty!48821 () Bool)

(assert (=> setIsEmpty!48821 setRes!48821))

(declare-fun setElem!48821 () Context!12812)

(declare-fun tp!1934672 () Bool)

(declare-fun setNonEmpty!48821 () Bool)

(declare-fun e!4221648 () Bool)

(assert (=> setNonEmpty!48821 (= setRes!48821 (and tp!1934672 (inv!86385 setElem!48821) e!4221648))))

(declare-fun setRest!48821 () (Set Context!12812))

(assert (=> setNonEmpty!48821 (= setRest!48815 (set.union (set.insert setElem!48821 (as set.empty (Set Context!12812))) setRest!48821))))

(declare-fun b!7022789 () Bool)

(declare-fun tp!1934673 () Bool)

(assert (=> b!7022789 (= e!4221648 tp!1934673)))

(assert (= (and setNonEmpty!48815 condSetEmpty!48821) setIsEmpty!48821))

(assert (= (and setNonEmpty!48815 (not condSetEmpty!48821)) setNonEmpty!48821))

(assert (= setNonEmpty!48821 b!7022789))

(declare-fun m!7725028 () Bool)

(assert (=> setNonEmpty!48821 m!7725028))

(declare-fun b!7022794 () Bool)

(declare-fun e!4221651 () Bool)

(declare-fun tp!1934678 () Bool)

(declare-fun tp!1934679 () Bool)

(assert (=> b!7022794 (= e!4221651 (and tp!1934678 tp!1934679))))

(assert (=> b!7022672 (= tp!1934653 e!4221651)))

(assert (= (and b!7022672 (is-Cons!67645 (exprs!6906 setElem!48815))) b!7022794))

(declare-fun b!7022795 () Bool)

(declare-fun e!4221652 () Bool)

(declare-fun tp!1934680 () Bool)

(declare-fun tp!1934681 () Bool)

(assert (=> b!7022795 (= e!4221652 (and tp!1934680 tp!1934681))))

(assert (=> b!7022668 (= tp!1934652 e!4221652)))

(assert (= (and b!7022668 (is-Cons!67645 (exprs!6906 ct2!306))) b!7022795))

(declare-fun b!7022800 () Bool)

(declare-fun e!4221655 () Bool)

(declare-fun tp!1934684 () Bool)

(assert (=> b!7022800 (= e!4221655 (and tp_is_empty!44045 tp!1934684))))

(assert (=> b!7022670 (= tp!1934654 e!4221655)))

(assert (= (and b!7022670 (is-Cons!67646 (t!381525 s!7408))) b!7022800))

(declare-fun b_lambda!265321 () Bool)

(assert (= b_lambda!265315 (or b!7022673 b_lambda!265321)))

(declare-fun bs!1867999 () Bool)

(declare-fun d!2189225 () Bool)

(assert (= bs!1867999 (and d!2189225 b!7022673)))

(declare-fun lt!2512697 () Unit!161486)

(assert (=> bs!1867999 (= lt!2512697 (lemmaConcatPreservesForall!737 (exprs!6906 lt!2512684) (exprs!6906 ct2!306) lambda!411942))))

(assert (=> bs!1867999 (= (dynLambda!27260 lambda!411941 lt!2512684) (Context!12813 (++!15445 (exprs!6906 lt!2512684) (exprs!6906 ct2!306))))))

(declare-fun m!7725030 () Bool)

(assert (=> bs!1867999 m!7725030))

(declare-fun m!7725032 () Bool)

(assert (=> bs!1867999 m!7725032))

(assert (=> d!2189201 d!2189225))

(declare-fun b_lambda!265323 () Bool)

(assert (= b_lambda!265319 (or b!7022674 b_lambda!265323)))

(declare-fun bs!1868000 () Bool)

(declare-fun d!2189227 () Bool)

(assert (= bs!1868000 (and d!2189227 b!7022674)))

(declare-fun nullable!7143 (Regex!17410) Bool)

(assert (=> bs!1868000 (= (dynLambda!27262 lambda!411943 (h!74093 lt!2512636)) (nullable!7143 (h!74093 lt!2512636)))))

(declare-fun m!7725034 () Bool)

(assert (=> bs!1868000 m!7725034))

(assert (=> b!7022783 d!2189227))

(declare-fun b_lambda!265325 () Bool)

(assert (= b_lambda!265317 (or b!7022667 b_lambda!265325)))

(declare-fun bs!1868001 () Bool)

(declare-fun d!2189229 () Bool)

(assert (= bs!1868001 (and d!2189229 b!7022667)))

(assert (=> bs!1868001 (= (dynLambda!27261 lambda!411940 lt!2512687) (nullableContext!70 lt!2512687))))

(declare-fun m!7725036 () Bool)

(assert (=> bs!1868001 m!7725036))

(assert (=> d!2189207 d!2189229))

(push 1)

(assert (not setNonEmpty!48821))

(assert (not d!2189207))

(assert (not b!7022778))

(assert (not b!7022714))

(assert (not bs!1868000))

(assert (not d!2189185))

(assert (not b!7022737))

(assert (not b!7022774))

(assert (not bs!1867999))

(assert (not b!7022773))

(assert (not b!7022760))

(assert (not d!2189205))

(assert tp_is_empty!44045)

(assert (not b!7022795))

(assert (not d!2189177))

(assert (not b!7022800))

(assert (not bs!1868001))

(assert (not b_lambda!265323))

(assert (not d!2189201))

(assert (not b!7022762))

(assert (not d!2189197))

(assert (not d!2189181))

(assert (not b!7022784))

(assert (not d!2189189))

(assert (not b!7022738))

(assert (not b!7022789))

(assert (not d!2189217))

(assert (not d!2189215))

(assert (not b!7022715))

(assert (not d!2189213))

(assert (not b!7022777))

(assert (not b_lambda!265321))

(assert (not b_lambda!265325))

(assert (not b!7022794))

(assert (not d!2189179))

(assert (not d!2189191))

(assert (not d!2189199))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

