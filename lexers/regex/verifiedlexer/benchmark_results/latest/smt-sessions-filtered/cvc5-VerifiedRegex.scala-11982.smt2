; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!671356 () Bool)

(assert start!671356)

(declare-fun b!6987985 () Bool)

(assert (=> b!6987985 true))

(declare-fun b!6987988 () Bool)

(assert (=> b!6987988 true))

(declare-fun b!6987978 () Bool)

(assert (=> b!6987978 true))

(declare-fun e!4200069 () Bool)

(declare-fun e!4200078 () Bool)

(assert (=> b!6987978 (= e!4200069 e!4200078)))

(declare-fun res!2849707 () Bool)

(assert (=> b!6987978 (=> res!2849707 e!4200078)))

(declare-datatypes ((C!34690 0))(
  ( (C!34691 (val!27047 Int)) )
))
(declare-datatypes ((Regex!17210 0))(
  ( (ElementMatch!17210 (c!1295956 C!34690)) (Concat!26055 (regOne!34932 Regex!17210) (regTwo!34932 Regex!17210)) (EmptyExpr!17210) (Star!17210 (reg!17539 Regex!17210)) (EmptyLang!17210) (Union!17210 (regOne!34933 Regex!17210) (regTwo!34933 Regex!17210)) )
))
(declare-datatypes ((List!67175 0))(
  ( (Nil!67051) (Cons!67051 (h!73499 Regex!17210) (t!380922 List!67175)) )
))
(declare-datatypes ((Context!12412 0))(
  ( (Context!12413 (exprs!6706 List!67175)) )
))
(declare-fun lt!2485602 () (Set Context!12412))

(declare-fun lt!2485610 () (Set Context!12412))

(declare-datatypes ((List!67176 0))(
  ( (Nil!67052) (Cons!67052 (h!73500 C!34690) (t!380923 List!67176)) )
))
(declare-fun s!7408 () List!67176)

(declare-fun derivationStepZipper!2690 ((Set Context!12412) C!34690) (Set Context!12412))

(assert (=> b!6987978 (= res!2849707 (not (= (derivationStepZipper!2690 lt!2485602 (h!73500 s!7408)) lt!2485610)))))

(declare-fun lambda!401011 () Int)

(declare-fun lt!2485596 () Context!12412)

(declare-fun flatMap!2196 ((Set Context!12412) Int) (Set Context!12412))

(declare-fun derivationStepZipperUp!1860 (Context!12412 C!34690) (Set Context!12412))

(assert (=> b!6987978 (= (flatMap!2196 lt!2485602 lambda!401011) (derivationStepZipperUp!1860 lt!2485596 (h!73500 s!7408)))))

(declare-datatypes ((Unit!161075 0))(
  ( (Unit!161076) )
))
(declare-fun lt!2485590 () Unit!161075)

(declare-fun lemmaFlatMapOnSingletonSet!1711 ((Set Context!12412) Context!12412 Int) Unit!161075)

(assert (=> b!6987978 (= lt!2485590 (lemmaFlatMapOnSingletonSet!1711 lt!2485602 lt!2485596 lambda!401011))))

(assert (=> b!6987978 (= lt!2485610 (derivationStepZipperUp!1860 lt!2485596 (h!73500 s!7408)))))

(declare-fun ct2!306 () Context!12412)

(declare-fun lt!2485598 () Unit!161075)

(declare-fun lambda!401010 () Int)

(declare-fun lt!2485603 () Context!12412)

(declare-fun lemmaConcatPreservesForall!546 (List!67175 List!67175 Int) Unit!161075)

(assert (=> b!6987978 (= lt!2485598 (lemmaConcatPreservesForall!546 (exprs!6706 lt!2485603) (exprs!6706 ct2!306) lambda!401010))))

(declare-fun e!4200071 () Bool)

(declare-fun setElem!47760 () Context!12412)

(declare-fun tp!1929448 () Bool)

(declare-fun setRes!47760 () Bool)

(declare-fun setNonEmpty!47760 () Bool)

(declare-fun inv!85885 (Context!12412) Bool)

(assert (=> setNonEmpty!47760 (= setRes!47760 (and tp!1929448 (inv!85885 setElem!47760) e!4200071))))

(declare-fun z1!570 () (Set Context!12412))

(declare-fun setRest!47760 () (Set Context!12412))

(assert (=> setNonEmpty!47760 (= z1!570 (set.union (set.insert setElem!47760 (as set.empty (Set Context!12412))) setRest!47760))))

(declare-fun b!6987979 () Bool)

(declare-fun tp!1929447 () Bool)

(assert (=> b!6987979 (= e!4200071 tp!1929447)))

(declare-fun b!6987980 () Bool)

(declare-fun res!2849694 () Bool)

(assert (=> b!6987980 (=> res!2849694 e!4200078)))

(assert (=> b!6987980 (= res!2849694 (not (is-Cons!67051 (exprs!6706 lt!2485603))))))

(declare-fun b!6987981 () Bool)

(declare-fun e!4200079 () Bool)

(assert (=> b!6987981 (= e!4200079 e!4200069)))

(declare-fun res!2849695 () Bool)

(assert (=> b!6987981 (=> res!2849695 e!4200069)))

(declare-fun lt!2485587 () (Set Context!12412))

(assert (=> b!6987981 (= res!2849695 (not (= lt!2485602 lt!2485587)))))

(assert (=> b!6987981 (= lt!2485602 (set.insert lt!2485596 (as set.empty (Set Context!12412))))))

(declare-fun lt!2485604 () Unit!161075)

(assert (=> b!6987981 (= lt!2485604 (lemmaConcatPreservesForall!546 (exprs!6706 lt!2485603) (exprs!6706 ct2!306) lambda!401010))))

(declare-fun b!6987982 () Bool)

(declare-fun e!4200080 () Bool)

(declare-fun lt!2485601 () List!67175)

(declare-fun forall!16120 (List!67175 Int) Bool)

(assert (=> b!6987982 (= e!4200080 (forall!16120 lt!2485601 lambda!401010))))

(declare-fun lt!2485581 () Unit!161075)

(assert (=> b!6987982 (= lt!2485581 (lemmaConcatPreservesForall!546 lt!2485601 (exprs!6706 ct2!306) lambda!401010))))

(declare-fun lt!2485584 () (Set Context!12412))

(declare-fun lt!2485580 () Context!12412)

(assert (=> b!6987982 (= (flatMap!2196 lt!2485584 lambda!401011) (derivationStepZipperUp!1860 lt!2485580 (h!73500 s!7408)))))

(declare-fun lt!2485607 () Unit!161075)

(assert (=> b!6987982 (= lt!2485607 (lemmaFlatMapOnSingletonSet!1711 lt!2485584 lt!2485580 lambda!401011))))

(assert (=> b!6987982 (= lt!2485584 (set.insert lt!2485580 (as set.empty (Set Context!12412))))))

(declare-fun lt!2485597 () Unit!161075)

(assert (=> b!6987982 (= lt!2485597 (lemmaConcatPreservesForall!546 lt!2485601 (exprs!6706 ct2!306) lambda!401010))))

(declare-fun lt!2485582 () Unit!161075)

(assert (=> b!6987982 (= lt!2485582 (lemmaConcatPreservesForall!546 lt!2485601 (exprs!6706 ct2!306) lambda!401010))))

(declare-fun b!6987983 () Bool)

(declare-fun e!4200072 () Bool)

(assert (=> b!6987983 (= e!4200078 e!4200072)))

(declare-fun res!2849708 () Bool)

(assert (=> b!6987983 (=> res!2849708 e!4200072)))

(declare-fun nullable!6970 (Regex!17210) Bool)

(assert (=> b!6987983 (= res!2849708 (not (nullable!6970 (h!73499 (exprs!6706 lt!2485603)))))))

(declare-fun tail!13213 (List!67175) List!67175)

(assert (=> b!6987983 (= lt!2485601 (tail!13213 (exprs!6706 lt!2485603)))))

(declare-fun b!6987984 () Bool)

(declare-fun res!2849697 () Bool)

(assert (=> b!6987984 (=> res!2849697 e!4200078)))

(declare-fun isEmpty!39137 (List!67175) Bool)

(assert (=> b!6987984 (= res!2849697 (isEmpty!39137 (exprs!6706 lt!2485603)))))

(declare-fun e!4200067 () Bool)

(declare-fun e!4200074 () Bool)

(assert (=> b!6987985 (= e!4200067 (not e!4200074))))

(declare-fun res!2849699 () Bool)

(assert (=> b!6987985 (=> res!2849699 e!4200074)))

(declare-fun matchZipper!2750 ((Set Context!12412) List!67176) Bool)

(assert (=> b!6987985 (= res!2849699 (not (matchZipper!2750 lt!2485587 s!7408)))))

(declare-fun lt!2485608 () Context!12412)

(assert (=> b!6987985 (= lt!2485587 (set.insert lt!2485608 (as set.empty (Set Context!12412))))))

(declare-fun lt!2485606 () (Set Context!12412))

(declare-fun lambda!401008 () Int)

(declare-fun getWitness!1103 ((Set Context!12412) Int) Context!12412)

(assert (=> b!6987985 (= lt!2485608 (getWitness!1103 lt!2485606 lambda!401008))))

(declare-datatypes ((List!67177 0))(
  ( (Nil!67053) (Cons!67053 (h!73501 Context!12412) (t!380924 List!67177)) )
))
(declare-fun lt!2485600 () List!67177)

(declare-fun exists!2992 (List!67177 Int) Bool)

(assert (=> b!6987985 (exists!2992 lt!2485600 lambda!401008)))

(declare-fun lt!2485585 () Unit!161075)

(declare-fun lemmaZipperMatchesExistsMatchingContext!179 (List!67177 List!67176) Unit!161075)

(assert (=> b!6987985 (= lt!2485585 (lemmaZipperMatchesExistsMatchingContext!179 lt!2485600 s!7408))))

(declare-fun toList!10570 ((Set Context!12412)) List!67177)

(assert (=> b!6987985 (= lt!2485600 (toList!10570 lt!2485606))))

(declare-fun b!6987987 () Bool)

(declare-fun e!4200077 () Bool)

(declare-fun e!4200068 () Bool)

(assert (=> b!6987987 (= e!4200077 e!4200068)))

(declare-fun res!2849706 () Bool)

(assert (=> b!6987987 (=> res!2849706 e!4200068)))

(declare-fun e!4200075 () Bool)

(assert (=> b!6987987 (= res!2849706 e!4200075)))

(declare-fun res!2849705 () Bool)

(assert (=> b!6987987 (=> (not res!2849705) (not e!4200075))))

(declare-fun lt!2485589 () Bool)

(declare-fun lt!2485609 () Bool)

(assert (=> b!6987987 (= res!2849705 (not (= lt!2485589 lt!2485609)))))

(assert (=> b!6987987 (= lt!2485589 (matchZipper!2750 lt!2485610 (t!380923 s!7408)))))

(declare-fun lt!2485588 () Unit!161075)

(assert (=> b!6987987 (= lt!2485588 (lemmaConcatPreservesForall!546 lt!2485601 (exprs!6706 ct2!306) lambda!401010))))

(declare-fun lt!2485599 () (Set Context!12412))

(declare-fun e!4200070 () Bool)

(assert (=> b!6987987 (= (matchZipper!2750 lt!2485599 (t!380923 s!7408)) e!4200070)))

(declare-fun res!2849702 () Bool)

(assert (=> b!6987987 (=> res!2849702 e!4200070)))

(assert (=> b!6987987 (= res!2849702 lt!2485609)))

(declare-fun lt!2485605 () (Set Context!12412))

(assert (=> b!6987987 (= lt!2485609 (matchZipper!2750 lt!2485605 (t!380923 s!7408)))))

(declare-fun lt!2485592 () (Set Context!12412))

(declare-fun lt!2485583 () Unit!161075)

(declare-fun lemmaZipperConcatMatchesSameAsBothZippers!1383 ((Set Context!12412) (Set Context!12412) List!67176) Unit!161075)

(assert (=> b!6987987 (= lt!2485583 (lemmaZipperConcatMatchesSameAsBothZippers!1383 lt!2485605 lt!2485592 (t!380923 s!7408)))))

(declare-fun lt!2485591 () Unit!161075)

(assert (=> b!6987987 (= lt!2485591 (lemmaConcatPreservesForall!546 lt!2485601 (exprs!6706 ct2!306) lambda!401010))))

(declare-fun lt!2485593 () Unit!161075)

(assert (=> b!6987987 (= lt!2485593 (lemmaConcatPreservesForall!546 lt!2485601 (exprs!6706 ct2!306) lambda!401010))))

(declare-fun setIsEmpty!47760 () Bool)

(assert (=> setIsEmpty!47760 setRes!47760))

(assert (=> b!6987988 (= e!4200074 e!4200079)))

(declare-fun res!2849700 () Bool)

(assert (=> b!6987988 (=> res!2849700 e!4200079)))

(assert (=> b!6987988 (= res!2849700 (or (not (= lt!2485596 lt!2485608)) (not (set.member lt!2485603 z1!570))))))

(declare-fun ++!15155 (List!67175 List!67175) List!67175)

(assert (=> b!6987988 (= lt!2485596 (Context!12413 (++!15155 (exprs!6706 lt!2485603) (exprs!6706 ct2!306))))))

(declare-fun lt!2485586 () Unit!161075)

(assert (=> b!6987988 (= lt!2485586 (lemmaConcatPreservesForall!546 (exprs!6706 lt!2485603) (exprs!6706 ct2!306) lambda!401010))))

(declare-fun lambda!401009 () Int)

(declare-fun mapPost2!65 ((Set Context!12412) Int Context!12412) Context!12412)

(assert (=> b!6987988 (= lt!2485603 (mapPost2!65 z1!570 lambda!401009 lt!2485608))))

(declare-fun b!6987989 () Bool)

(declare-fun res!2849698 () Bool)

(assert (=> b!6987989 (=> (not res!2849698) (not e!4200067))))

(assert (=> b!6987989 (= res!2849698 (is-Cons!67052 s!7408))))

(declare-fun b!6987990 () Bool)

(declare-fun res!2849703 () Bool)

(assert (=> b!6987990 (=> res!2849703 e!4200074)))

(assert (=> b!6987990 (= res!2849703 (not (set.member lt!2485608 lt!2485606)))))

(declare-fun b!6987991 () Bool)

(assert (=> b!6987991 (= e!4200075 (not (matchZipper!2750 lt!2485592 (t!380923 s!7408))))))

(declare-fun lt!2485595 () Unit!161075)

(assert (=> b!6987991 (= lt!2485595 (lemmaConcatPreservesForall!546 lt!2485601 (exprs!6706 ct2!306) lambda!401010))))

(declare-fun b!6987992 () Bool)

(assert (=> b!6987992 (= e!4200072 e!4200077)))

(declare-fun res!2849701 () Bool)

(assert (=> b!6987992 (=> res!2849701 e!4200077)))

(assert (=> b!6987992 (= res!2849701 (not (= lt!2485610 lt!2485599)))))

(assert (=> b!6987992 (= lt!2485599 (set.union lt!2485605 lt!2485592))))

(assert (=> b!6987992 (= lt!2485592 (derivationStepZipperUp!1860 lt!2485580 (h!73500 s!7408)))))

(declare-fun derivationStepZipperDown!1928 (Regex!17210 Context!12412 C!34690) (Set Context!12412))

(assert (=> b!6987992 (= lt!2485605 (derivationStepZipperDown!1928 (h!73499 (exprs!6706 lt!2485603)) lt!2485580 (h!73500 s!7408)))))

(assert (=> b!6987992 (= lt!2485580 (Context!12413 (++!15155 lt!2485601 (exprs!6706 ct2!306))))))

(declare-fun lt!2485594 () Unit!161075)

(assert (=> b!6987992 (= lt!2485594 (lemmaConcatPreservesForall!546 lt!2485601 (exprs!6706 ct2!306) lambda!401010))))

(declare-fun lt!2485579 () Unit!161075)

(assert (=> b!6987992 (= lt!2485579 (lemmaConcatPreservesForall!546 lt!2485601 (exprs!6706 ct2!306) lambda!401010))))

(declare-fun b!6987986 () Bool)

(declare-fun e!4200073 () Bool)

(declare-fun tp!1929446 () Bool)

(assert (=> b!6987986 (= e!4200073 tp!1929446)))

(declare-fun res!2849696 () Bool)

(assert (=> start!671356 (=> (not res!2849696) (not e!4200067))))

(assert (=> start!671356 (= res!2849696 (matchZipper!2750 lt!2485606 s!7408))))

(declare-fun appendTo!331 ((Set Context!12412) Context!12412) (Set Context!12412))

(assert (=> start!671356 (= lt!2485606 (appendTo!331 z1!570 ct2!306))))

(assert (=> start!671356 e!4200067))

(declare-fun condSetEmpty!47760 () Bool)

(assert (=> start!671356 (= condSetEmpty!47760 (= z1!570 (as set.empty (Set Context!12412))))))

(assert (=> start!671356 setRes!47760))

(assert (=> start!671356 (and (inv!85885 ct2!306) e!4200073)))

(declare-fun e!4200076 () Bool)

(assert (=> start!671356 e!4200076))

(declare-fun b!6987993 () Bool)

(assert (=> b!6987993 (= e!4200068 e!4200080)))

(declare-fun res!2849704 () Bool)

(assert (=> b!6987993 (=> res!2849704 e!4200080)))

(assert (=> b!6987993 (= res!2849704 (not (matchZipper!2750 lt!2485592 (t!380923 s!7408))))))

(declare-fun lt!2485611 () Unit!161075)

(assert (=> b!6987993 (= lt!2485611 (lemmaConcatPreservesForall!546 lt!2485601 (exprs!6706 ct2!306) lambda!401010))))

(declare-fun b!6987994 () Bool)

(declare-fun tp_is_empty!43645 () Bool)

(declare-fun tp!1929445 () Bool)

(assert (=> b!6987994 (= e!4200076 (and tp_is_empty!43645 tp!1929445))))

(declare-fun b!6987995 () Bool)

(declare-fun res!2849693 () Bool)

(assert (=> b!6987995 (=> res!2849693 e!4200068)))

(assert (=> b!6987995 (= res!2849693 (not lt!2485589))))

(declare-fun b!6987996 () Bool)

(assert (=> b!6987996 (= e!4200070 (matchZipper!2750 lt!2485592 (t!380923 s!7408)))))

(assert (= (and start!671356 res!2849696) b!6987989))

(assert (= (and b!6987989 res!2849698) b!6987985))

(assert (= (and b!6987985 (not res!2849699)) b!6987990))

(assert (= (and b!6987990 (not res!2849703)) b!6987988))

(assert (= (and b!6987988 (not res!2849700)) b!6987981))

(assert (= (and b!6987981 (not res!2849695)) b!6987978))

(assert (= (and b!6987978 (not res!2849707)) b!6987980))

(assert (= (and b!6987980 (not res!2849694)) b!6987984))

(assert (= (and b!6987984 (not res!2849697)) b!6987983))

(assert (= (and b!6987983 (not res!2849708)) b!6987992))

(assert (= (and b!6987992 (not res!2849701)) b!6987987))

(assert (= (and b!6987987 (not res!2849702)) b!6987996))

(assert (= (and b!6987987 res!2849705) b!6987991))

(assert (= (and b!6987987 (not res!2849706)) b!6987995))

(assert (= (and b!6987995 (not res!2849693)) b!6987993))

(assert (= (and b!6987993 (not res!2849704)) b!6987982))

(assert (= (and start!671356 condSetEmpty!47760) setIsEmpty!47760))

(assert (= (and start!671356 (not condSetEmpty!47760)) setNonEmpty!47760))

(assert (= setNonEmpty!47760 b!6987979))

(assert (= start!671356 b!6987986))

(assert (= (and start!671356 (is-Cons!67052 s!7408)) b!6987994))

(declare-fun m!7676102 () Bool)

(assert (=> b!6987996 m!7676102))

(declare-fun m!7676104 () Bool)

(assert (=> setNonEmpty!47760 m!7676104))

(declare-fun m!7676106 () Bool)

(assert (=> b!6987990 m!7676106))

(declare-fun m!7676108 () Bool)

(assert (=> b!6987983 m!7676108))

(declare-fun m!7676110 () Bool)

(assert (=> b!6987983 m!7676110))

(declare-fun m!7676112 () Bool)

(assert (=> b!6987978 m!7676112))

(declare-fun m!7676114 () Bool)

(assert (=> b!6987978 m!7676114))

(declare-fun m!7676116 () Bool)

(assert (=> b!6987978 m!7676116))

(declare-fun m!7676118 () Bool)

(assert (=> b!6987978 m!7676118))

(declare-fun m!7676120 () Bool)

(assert (=> b!6987978 m!7676120))

(assert (=> b!6987993 m!7676102))

(declare-fun m!7676122 () Bool)

(assert (=> b!6987993 m!7676122))

(declare-fun m!7676124 () Bool)

(assert (=> b!6987985 m!7676124))

(declare-fun m!7676126 () Bool)

(assert (=> b!6987985 m!7676126))

(declare-fun m!7676128 () Bool)

(assert (=> b!6987985 m!7676128))

(declare-fun m!7676130 () Bool)

(assert (=> b!6987985 m!7676130))

(declare-fun m!7676132 () Bool)

(assert (=> b!6987985 m!7676132))

(declare-fun m!7676134 () Bool)

(assert (=> b!6987985 m!7676134))

(declare-fun m!7676136 () Bool)

(assert (=> b!6987981 m!7676136))

(assert (=> b!6987981 m!7676116))

(assert (=> b!6987991 m!7676102))

(assert (=> b!6987991 m!7676122))

(declare-fun m!7676138 () Bool)

(assert (=> b!6987988 m!7676138))

(declare-fun m!7676140 () Bool)

(assert (=> b!6987988 m!7676140))

(assert (=> b!6987988 m!7676116))

(declare-fun m!7676142 () Bool)

(assert (=> b!6987988 m!7676142))

(assert (=> b!6987992 m!7676122))

(assert (=> b!6987992 m!7676122))

(declare-fun m!7676144 () Bool)

(assert (=> b!6987992 m!7676144))

(declare-fun m!7676146 () Bool)

(assert (=> b!6987992 m!7676146))

(declare-fun m!7676148 () Bool)

(assert (=> b!6987992 m!7676148))

(assert (=> b!6987982 m!7676146))

(declare-fun m!7676150 () Bool)

(assert (=> b!6987982 m!7676150))

(declare-fun m!7676152 () Bool)

(assert (=> b!6987982 m!7676152))

(assert (=> b!6987982 m!7676122))

(declare-fun m!7676154 () Bool)

(assert (=> b!6987982 m!7676154))

(declare-fun m!7676156 () Bool)

(assert (=> b!6987982 m!7676156))

(assert (=> b!6987982 m!7676122))

(assert (=> b!6987982 m!7676122))

(declare-fun m!7676158 () Bool)

(assert (=> b!6987984 m!7676158))

(declare-fun m!7676160 () Bool)

(assert (=> b!6987987 m!7676160))

(declare-fun m!7676162 () Bool)

(assert (=> b!6987987 m!7676162))

(assert (=> b!6987987 m!7676122))

(declare-fun m!7676164 () Bool)

(assert (=> b!6987987 m!7676164))

(declare-fun m!7676166 () Bool)

(assert (=> b!6987987 m!7676166))

(assert (=> b!6987987 m!7676122))

(assert (=> b!6987987 m!7676122))

(declare-fun m!7676168 () Bool)

(assert (=> start!671356 m!7676168))

(declare-fun m!7676170 () Bool)

(assert (=> start!671356 m!7676170))

(declare-fun m!7676172 () Bool)

(assert (=> start!671356 m!7676172))

(push 1)

(assert (not b!6987992))

(assert (not b!6987991))

(assert (not b!6987984))

(assert tp_is_empty!43645)

(assert (not b!6987982))

(assert (not b!6987985))

(assert (not b!6987981))

(assert (not b!6987983))

(assert (not b!6987979))

(assert (not b!6987987))

(assert (not b!6987996))

(assert (not b!6987988))

(assert (not start!671356))

(assert (not b!6987993))

(assert (not b!6987986))

(assert (not setNonEmpty!47760))

(assert (not b!6987978))

(assert (not b!6987994))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!2176641 () Bool)

(assert (=> d!2176641 (forall!16120 (++!15155 lt!2485601 (exprs!6706 ct2!306)) lambda!401010)))

(declare-fun lt!2485715 () Unit!161075)

(declare-fun choose!52212 (List!67175 List!67175 Int) Unit!161075)

(assert (=> d!2176641 (= lt!2485715 (choose!52212 lt!2485601 (exprs!6706 ct2!306) lambda!401010))))

(assert (=> d!2176641 (forall!16120 lt!2485601 lambda!401010)))

(assert (=> d!2176641 (= (lemmaConcatPreservesForall!546 lt!2485601 (exprs!6706 ct2!306) lambda!401010) lt!2485715)))

(declare-fun bs!1861931 () Bool)

(assert (= bs!1861931 d!2176641))

(assert (=> bs!1861931 m!7676148))

(assert (=> bs!1861931 m!7676148))

(declare-fun m!7676246 () Bool)

(assert (=> bs!1861931 m!7676246))

(declare-fun m!7676248 () Bool)

(assert (=> bs!1861931 m!7676248))

(assert (=> bs!1861931 m!7676154))

(assert (=> b!6987992 d!2176641))

(declare-fun b!6988088 () Bool)

(declare-fun e!4200140 () (Set Context!12412))

(declare-fun call!634372 () (Set Context!12412))

(declare-fun call!634368 () (Set Context!12412))

(assert (=> b!6988088 (= e!4200140 (set.union call!634372 call!634368))))

(declare-fun b!6988089 () Bool)

(declare-fun c!1295979 () Bool)

(declare-fun e!4200135 () Bool)

(assert (=> b!6988089 (= c!1295979 e!4200135)))

(declare-fun res!2849761 () Bool)

(assert (=> b!6988089 (=> (not res!2849761) (not e!4200135))))

(assert (=> b!6988089 (= res!2849761 (is-Concat!26055 (h!73499 (exprs!6706 lt!2485603))))))

(declare-fun e!4200138 () (Set Context!12412))

(assert (=> b!6988089 (= e!4200138 e!4200140)))

(declare-fun b!6988090 () Bool)

(declare-fun e!4200136 () (Set Context!12412))

(assert (=> b!6988090 (= e!4200140 e!4200136)))

(declare-fun c!1295981 () Bool)

(assert (=> b!6988090 (= c!1295981 (is-Concat!26055 (h!73499 (exprs!6706 lt!2485603))))))

(declare-fun b!6988091 () Bool)

(declare-fun c!1295978 () Bool)

(assert (=> b!6988091 (= c!1295978 (is-Star!17210 (h!73499 (exprs!6706 lt!2485603))))))

(declare-fun e!4200139 () (Set Context!12412))

(assert (=> b!6988091 (= e!4200136 e!4200139)))

(declare-fun bm!634363 () Bool)

(declare-fun call!634371 () (Set Context!12412))

(assert (=> bm!634363 (= call!634368 call!634371)))

(declare-fun bm!634364 () Bool)

(declare-fun call!634369 () (Set Context!12412))

(assert (=> bm!634364 (= call!634369 call!634368)))

(declare-fun bm!634365 () Bool)

(declare-fun call!634373 () List!67175)

(declare-fun $colon$colon!2479 (List!67175 Regex!17210) List!67175)

(assert (=> bm!634365 (= call!634373 ($colon$colon!2479 (exprs!6706 lt!2485580) (ite (or c!1295979 c!1295981) (regTwo!34932 (h!73499 (exprs!6706 lt!2485603))) (h!73499 (exprs!6706 lt!2485603)))))))

(declare-fun bm!634366 () Bool)

(declare-fun c!1295980 () Bool)

(assert (=> bm!634366 (= call!634372 (derivationStepZipperDown!1928 (ite c!1295980 (regOne!34933 (h!73499 (exprs!6706 lt!2485603))) (regOne!34932 (h!73499 (exprs!6706 lt!2485603)))) (ite c!1295980 lt!2485580 (Context!12413 call!634373)) (h!73500 s!7408)))))

(declare-fun call!634370 () List!67175)

(declare-fun bm!634367 () Bool)

(assert (=> bm!634367 (= call!634371 (derivationStepZipperDown!1928 (ite c!1295980 (regTwo!34933 (h!73499 (exprs!6706 lt!2485603))) (ite c!1295979 (regTwo!34932 (h!73499 (exprs!6706 lt!2485603))) (ite c!1295981 (regOne!34932 (h!73499 (exprs!6706 lt!2485603))) (reg!17539 (h!73499 (exprs!6706 lt!2485603)))))) (ite (or c!1295980 c!1295979) lt!2485580 (Context!12413 call!634370)) (h!73500 s!7408)))))

(declare-fun d!2176643 () Bool)

(declare-fun c!1295982 () Bool)

(assert (=> d!2176643 (= c!1295982 (and (is-ElementMatch!17210 (h!73499 (exprs!6706 lt!2485603))) (= (c!1295956 (h!73499 (exprs!6706 lt!2485603))) (h!73500 s!7408))))))

(declare-fun e!4200137 () (Set Context!12412))

(assert (=> d!2176643 (= (derivationStepZipperDown!1928 (h!73499 (exprs!6706 lt!2485603)) lt!2485580 (h!73500 s!7408)) e!4200137)))

(declare-fun b!6988092 () Bool)

(assert (=> b!6988092 (= e!4200139 (as set.empty (Set Context!12412)))))

(declare-fun bm!634368 () Bool)

(assert (=> bm!634368 (= call!634370 call!634373)))

(declare-fun b!6988093 () Bool)

(assert (=> b!6988093 (= e!4200138 (set.union call!634372 call!634371))))

(declare-fun b!6988094 () Bool)

(assert (=> b!6988094 (= e!4200135 (nullable!6970 (regOne!34932 (h!73499 (exprs!6706 lt!2485603)))))))

(declare-fun b!6988095 () Bool)

(assert (=> b!6988095 (= e!4200137 (set.insert lt!2485580 (as set.empty (Set Context!12412))))))

(declare-fun b!6988096 () Bool)

(assert (=> b!6988096 (= e!4200137 e!4200138)))

(assert (=> b!6988096 (= c!1295980 (is-Union!17210 (h!73499 (exprs!6706 lt!2485603))))))

(declare-fun b!6988097 () Bool)

(assert (=> b!6988097 (= e!4200136 call!634369)))

(declare-fun b!6988098 () Bool)

(assert (=> b!6988098 (= e!4200139 call!634369)))

(assert (= (and d!2176643 c!1295982) b!6988095))

(assert (= (and d!2176643 (not c!1295982)) b!6988096))

(assert (= (and b!6988096 c!1295980) b!6988093))

(assert (= (and b!6988096 (not c!1295980)) b!6988089))

(assert (= (and b!6988089 res!2849761) b!6988094))

(assert (= (and b!6988089 c!1295979) b!6988088))

(assert (= (and b!6988089 (not c!1295979)) b!6988090))

(assert (= (and b!6988090 c!1295981) b!6988097))

(assert (= (and b!6988090 (not c!1295981)) b!6988091))

(assert (= (and b!6988091 c!1295978) b!6988098))

(assert (= (and b!6988091 (not c!1295978)) b!6988092))

(assert (= (or b!6988097 b!6988098) bm!634368))

(assert (= (or b!6988097 b!6988098) bm!634364))

(assert (= (or b!6988088 bm!634364) bm!634363))

(assert (= (or b!6988088 bm!634368) bm!634365))

(assert (= (or b!6988093 b!6988088) bm!634366))

(assert (= (or b!6988093 bm!634363) bm!634367))

(declare-fun m!7676250 () Bool)

(assert (=> b!6988094 m!7676250))

(declare-fun m!7676252 () Bool)

(assert (=> bm!634366 m!7676252))

(declare-fun m!7676254 () Bool)

(assert (=> bm!634367 m!7676254))

(declare-fun m!7676256 () Bool)

(assert (=> bm!634365 m!7676256))

(assert (=> b!6988095 m!7676152))

(assert (=> b!6987992 d!2176643))

(declare-fun e!4200147 () (Set Context!12412))

(declare-fun b!6988109 () Bool)

(declare-fun call!634376 () (Set Context!12412))

(assert (=> b!6988109 (= e!4200147 (set.union call!634376 (derivationStepZipperUp!1860 (Context!12413 (t!380922 (exprs!6706 lt!2485580))) (h!73500 s!7408))))))

(declare-fun b!6988110 () Bool)

(declare-fun e!4200148 () (Set Context!12412))

(assert (=> b!6988110 (= e!4200148 call!634376)))

(declare-fun b!6988111 () Bool)

(declare-fun e!4200149 () Bool)

(assert (=> b!6988111 (= e!4200149 (nullable!6970 (h!73499 (exprs!6706 lt!2485580))))))

(declare-fun b!6988112 () Bool)

(assert (=> b!6988112 (= e!4200148 (as set.empty (Set Context!12412)))))

(declare-fun b!6988113 () Bool)

(assert (=> b!6988113 (= e!4200147 e!4200148)))

(declare-fun c!1295988 () Bool)

(assert (=> b!6988113 (= c!1295988 (is-Cons!67051 (exprs!6706 lt!2485580)))))

(declare-fun d!2176645 () Bool)

(declare-fun c!1295987 () Bool)

(assert (=> d!2176645 (= c!1295987 e!4200149)))

(declare-fun res!2849764 () Bool)

(assert (=> d!2176645 (=> (not res!2849764) (not e!4200149))))

(assert (=> d!2176645 (= res!2849764 (is-Cons!67051 (exprs!6706 lt!2485580)))))

(assert (=> d!2176645 (= (derivationStepZipperUp!1860 lt!2485580 (h!73500 s!7408)) e!4200147)))

(declare-fun bm!634371 () Bool)

(assert (=> bm!634371 (= call!634376 (derivationStepZipperDown!1928 (h!73499 (exprs!6706 lt!2485580)) (Context!12413 (t!380922 (exprs!6706 lt!2485580))) (h!73500 s!7408)))))

(assert (= (and d!2176645 res!2849764) b!6988111))

(assert (= (and d!2176645 c!1295987) b!6988109))

(assert (= (and d!2176645 (not c!1295987)) b!6988113))

(assert (= (and b!6988113 c!1295988) b!6988110))

(assert (= (and b!6988113 (not c!1295988)) b!6988112))

(assert (= (or b!6988109 b!6988110) bm!634371))

(declare-fun m!7676258 () Bool)

(assert (=> b!6988109 m!7676258))

(declare-fun m!7676260 () Bool)

(assert (=> b!6988111 m!7676260))

(declare-fun m!7676262 () Bool)

(assert (=> bm!634371 m!7676262))

(assert (=> b!6987992 d!2176645))

(declare-fun b!6988122 () Bool)

(declare-fun e!4200155 () List!67175)

(assert (=> b!6988122 (= e!4200155 (exprs!6706 ct2!306))))

(declare-fun e!4200154 () Bool)

(declare-fun b!6988125 () Bool)

(declare-fun lt!2485718 () List!67175)

(assert (=> b!6988125 (= e!4200154 (or (not (= (exprs!6706 ct2!306) Nil!67051)) (= lt!2485718 lt!2485601)))))

(declare-fun d!2176647 () Bool)

(assert (=> d!2176647 e!4200154))

(declare-fun res!2849770 () Bool)

(assert (=> d!2176647 (=> (not res!2849770) (not e!4200154))))

(declare-fun content!13247 (List!67175) (Set Regex!17210))

(assert (=> d!2176647 (= res!2849770 (= (content!13247 lt!2485718) (set.union (content!13247 lt!2485601) (content!13247 (exprs!6706 ct2!306)))))))

(assert (=> d!2176647 (= lt!2485718 e!4200155)))

(declare-fun c!1295991 () Bool)

(assert (=> d!2176647 (= c!1295991 (is-Nil!67051 lt!2485601))))

(assert (=> d!2176647 (= (++!15155 lt!2485601 (exprs!6706 ct2!306)) lt!2485718)))

(declare-fun b!6988124 () Bool)

(declare-fun res!2849769 () Bool)

(assert (=> b!6988124 (=> (not res!2849769) (not e!4200154))))

(declare-fun size!40899 (List!67175) Int)

(assert (=> b!6988124 (= res!2849769 (= (size!40899 lt!2485718) (+ (size!40899 lt!2485601) (size!40899 (exprs!6706 ct2!306)))))))

(declare-fun b!6988123 () Bool)

(assert (=> b!6988123 (= e!4200155 (Cons!67051 (h!73499 lt!2485601) (++!15155 (t!380922 lt!2485601) (exprs!6706 ct2!306))))))

(assert (= (and d!2176647 c!1295991) b!6988122))

(assert (= (and d!2176647 (not c!1295991)) b!6988123))

(assert (= (and d!2176647 res!2849770) b!6988124))

(assert (= (and b!6988124 res!2849769) b!6988125))

(declare-fun m!7676264 () Bool)

(assert (=> d!2176647 m!7676264))

(declare-fun m!7676266 () Bool)

(assert (=> d!2176647 m!7676266))

(declare-fun m!7676268 () Bool)

(assert (=> d!2176647 m!7676268))

(declare-fun m!7676270 () Bool)

(assert (=> b!6988124 m!7676270))

(declare-fun m!7676272 () Bool)

(assert (=> b!6988124 m!7676272))

(declare-fun m!7676274 () Bool)

(assert (=> b!6988124 m!7676274))

(declare-fun m!7676276 () Bool)

(assert (=> b!6988123 m!7676276))

(assert (=> b!6987992 d!2176647))

(declare-fun d!2176649 () Bool)

(declare-fun nullableFct!2631 (Regex!17210) Bool)

(assert (=> d!2176649 (= (nullable!6970 (h!73499 (exprs!6706 lt!2485603))) (nullableFct!2631 (h!73499 (exprs!6706 lt!2485603))))))

(declare-fun bs!1861932 () Bool)

(assert (= bs!1861932 d!2176649))

(declare-fun m!7676278 () Bool)

(assert (=> bs!1861932 m!7676278))

(assert (=> b!6987983 d!2176649))

(declare-fun d!2176651 () Bool)

(assert (=> d!2176651 (= (tail!13213 (exprs!6706 lt!2485603)) (t!380922 (exprs!6706 lt!2485603)))))

(assert (=> b!6987983 d!2176651))

(declare-fun d!2176653 () Bool)

(declare-fun c!1295994 () Bool)

(declare-fun isEmpty!39139 (List!67176) Bool)

(assert (=> d!2176653 (= c!1295994 (isEmpty!39139 (t!380923 s!7408)))))

(declare-fun e!4200158 () Bool)

(assert (=> d!2176653 (= (matchZipper!2750 lt!2485592 (t!380923 s!7408)) e!4200158)))

(declare-fun b!6988130 () Bool)

(declare-fun nullableZipper!2430 ((Set Context!12412)) Bool)

(assert (=> b!6988130 (= e!4200158 (nullableZipper!2430 lt!2485592))))

(declare-fun b!6988131 () Bool)

(declare-fun head!14105 (List!67176) C!34690)

(declare-fun tail!13215 (List!67176) List!67176)

(assert (=> b!6988131 (= e!4200158 (matchZipper!2750 (derivationStepZipper!2690 lt!2485592 (head!14105 (t!380923 s!7408))) (tail!13215 (t!380923 s!7408))))))

(assert (= (and d!2176653 c!1295994) b!6988130))

(assert (= (and d!2176653 (not c!1295994)) b!6988131))

(declare-fun m!7676280 () Bool)

(assert (=> d!2176653 m!7676280))

(declare-fun m!7676282 () Bool)

(assert (=> b!6988130 m!7676282))

(declare-fun m!7676284 () Bool)

(assert (=> b!6988131 m!7676284))

(assert (=> b!6988131 m!7676284))

(declare-fun m!7676286 () Bool)

(assert (=> b!6988131 m!7676286))

(declare-fun m!7676288 () Bool)

(assert (=> b!6988131 m!7676288))

(assert (=> b!6988131 m!7676286))

(assert (=> b!6988131 m!7676288))

(declare-fun m!7676290 () Bool)

(assert (=> b!6988131 m!7676290))

(assert (=> b!6987991 d!2176653))

(assert (=> b!6987991 d!2176641))

(declare-fun d!2176655 () Bool)

(declare-fun c!1295995 () Bool)

(assert (=> d!2176655 (= c!1295995 (isEmpty!39139 s!7408))))

(declare-fun e!4200159 () Bool)

(assert (=> d!2176655 (= (matchZipper!2750 lt!2485606 s!7408) e!4200159)))

(declare-fun b!6988132 () Bool)

(assert (=> b!6988132 (= e!4200159 (nullableZipper!2430 lt!2485606))))

(declare-fun b!6988133 () Bool)

(assert (=> b!6988133 (= e!4200159 (matchZipper!2750 (derivationStepZipper!2690 lt!2485606 (head!14105 s!7408)) (tail!13215 s!7408)))))

(assert (= (and d!2176655 c!1295995) b!6988132))

(assert (= (and d!2176655 (not c!1295995)) b!6988133))

(declare-fun m!7676292 () Bool)

(assert (=> d!2176655 m!7676292))

(declare-fun m!7676294 () Bool)

(assert (=> b!6988132 m!7676294))

(declare-fun m!7676296 () Bool)

(assert (=> b!6988133 m!7676296))

(assert (=> b!6988133 m!7676296))

(declare-fun m!7676298 () Bool)

(assert (=> b!6988133 m!7676298))

(declare-fun m!7676300 () Bool)

(assert (=> b!6988133 m!7676300))

(assert (=> b!6988133 m!7676298))

(assert (=> b!6988133 m!7676300))

(declare-fun m!7676302 () Bool)

(assert (=> b!6988133 m!7676302))

(assert (=> start!671356 d!2176655))

(declare-fun bs!1861933 () Bool)

(declare-fun d!2176657 () Bool)

(assert (= bs!1861933 (and d!2176657 b!6987988)))

(declare-fun lambda!401060 () Int)

(assert (=> bs!1861933 (= lambda!401060 lambda!401009)))

(assert (=> d!2176657 true))

(declare-fun map!15469 ((Set Context!12412) Int) (Set Context!12412))

(assert (=> d!2176657 (= (appendTo!331 z1!570 ct2!306) (map!15469 z1!570 lambda!401060))))

(declare-fun bs!1861934 () Bool)

(assert (= bs!1861934 d!2176657))

(declare-fun m!7676304 () Bool)

(assert (=> bs!1861934 m!7676304))

(assert (=> start!671356 d!2176657))

(declare-fun bs!1861935 () Bool)

(declare-fun d!2176661 () Bool)

(assert (= bs!1861935 (and d!2176661 b!6987988)))

(declare-fun lambda!401063 () Int)

(assert (=> bs!1861935 (= lambda!401063 lambda!401010)))

(assert (=> d!2176661 (= (inv!85885 ct2!306) (forall!16120 (exprs!6706 ct2!306) lambda!401063))))

(declare-fun bs!1861936 () Bool)

(assert (= bs!1861936 d!2176661))

(declare-fun m!7676306 () Bool)

(assert (=> bs!1861936 m!7676306))

(assert (=> start!671356 d!2176661))

(declare-fun b!6988134 () Bool)

(declare-fun e!4200161 () List!67175)

(assert (=> b!6988134 (= e!4200161 (exprs!6706 ct2!306))))

(declare-fun e!4200160 () Bool)

(declare-fun lt!2485721 () List!67175)

(declare-fun b!6988137 () Bool)

(assert (=> b!6988137 (= e!4200160 (or (not (= (exprs!6706 ct2!306) Nil!67051)) (= lt!2485721 (exprs!6706 lt!2485603))))))

(declare-fun d!2176663 () Bool)

(assert (=> d!2176663 e!4200160))

(declare-fun res!2849772 () Bool)

(assert (=> d!2176663 (=> (not res!2849772) (not e!4200160))))

(assert (=> d!2176663 (= res!2849772 (= (content!13247 lt!2485721) (set.union (content!13247 (exprs!6706 lt!2485603)) (content!13247 (exprs!6706 ct2!306)))))))

(assert (=> d!2176663 (= lt!2485721 e!4200161)))

(declare-fun c!1295997 () Bool)

(assert (=> d!2176663 (= c!1295997 (is-Nil!67051 (exprs!6706 lt!2485603)))))

(assert (=> d!2176663 (= (++!15155 (exprs!6706 lt!2485603) (exprs!6706 ct2!306)) lt!2485721)))

(declare-fun b!6988136 () Bool)

(declare-fun res!2849771 () Bool)

(assert (=> b!6988136 (=> (not res!2849771) (not e!4200160))))

(assert (=> b!6988136 (= res!2849771 (= (size!40899 lt!2485721) (+ (size!40899 (exprs!6706 lt!2485603)) (size!40899 (exprs!6706 ct2!306)))))))

(declare-fun b!6988135 () Bool)

(assert (=> b!6988135 (= e!4200161 (Cons!67051 (h!73499 (exprs!6706 lt!2485603)) (++!15155 (t!380922 (exprs!6706 lt!2485603)) (exprs!6706 ct2!306))))))

(assert (= (and d!2176663 c!1295997) b!6988134))

(assert (= (and d!2176663 (not c!1295997)) b!6988135))

(assert (= (and d!2176663 res!2849772) b!6988136))

(assert (= (and b!6988136 res!2849771) b!6988137))

(declare-fun m!7676308 () Bool)

(assert (=> d!2176663 m!7676308))

(declare-fun m!7676310 () Bool)

(assert (=> d!2176663 m!7676310))

(assert (=> d!2176663 m!7676268))

(declare-fun m!7676312 () Bool)

(assert (=> b!6988136 m!7676312))

(declare-fun m!7676314 () Bool)

(assert (=> b!6988136 m!7676314))

(assert (=> b!6988136 m!7676274))

(declare-fun m!7676316 () Bool)

(assert (=> b!6988135 m!7676316))

(assert (=> b!6987988 d!2176663))

(declare-fun d!2176665 () Bool)

(assert (=> d!2176665 (forall!16120 (++!15155 (exprs!6706 lt!2485603) (exprs!6706 ct2!306)) lambda!401010)))

(declare-fun lt!2485722 () Unit!161075)

(assert (=> d!2176665 (= lt!2485722 (choose!52212 (exprs!6706 lt!2485603) (exprs!6706 ct2!306) lambda!401010))))

(assert (=> d!2176665 (forall!16120 (exprs!6706 lt!2485603) lambda!401010)))

(assert (=> d!2176665 (= (lemmaConcatPreservesForall!546 (exprs!6706 lt!2485603) (exprs!6706 ct2!306) lambda!401010) lt!2485722)))

(declare-fun bs!1861937 () Bool)

(assert (= bs!1861937 d!2176665))

(assert (=> bs!1861937 m!7676140))

(assert (=> bs!1861937 m!7676140))

(declare-fun m!7676318 () Bool)

(assert (=> bs!1861937 m!7676318))

(declare-fun m!7676320 () Bool)

(assert (=> bs!1861937 m!7676320))

(declare-fun m!7676322 () Bool)

(assert (=> bs!1861937 m!7676322))

(assert (=> b!6987988 d!2176665))

(declare-fun d!2176667 () Bool)

(declare-fun e!4200164 () Bool)

(assert (=> d!2176667 e!4200164))

(declare-fun res!2849775 () Bool)

(assert (=> d!2176667 (=> (not res!2849775) (not e!4200164))))

(declare-fun lt!2485725 () Context!12412)

(declare-fun dynLambda!26870 (Int Context!12412) Context!12412)

(assert (=> d!2176667 (= res!2849775 (= lt!2485608 (dynLambda!26870 lambda!401009 lt!2485725)))))

(declare-fun choose!52213 ((Set Context!12412) Int Context!12412) Context!12412)

(assert (=> d!2176667 (= lt!2485725 (choose!52213 z1!570 lambda!401009 lt!2485608))))

(assert (=> d!2176667 (set.member lt!2485608 (map!15469 z1!570 lambda!401009))))

(assert (=> d!2176667 (= (mapPost2!65 z1!570 lambda!401009 lt!2485608) lt!2485725)))

(declare-fun b!6988141 () Bool)

(assert (=> b!6988141 (= e!4200164 (set.member lt!2485725 z1!570))))

(assert (= (and d!2176667 res!2849775) b!6988141))

(declare-fun b_lambda!262383 () Bool)

(assert (=> (not b_lambda!262383) (not d!2176667)))

(declare-fun m!7676324 () Bool)

(assert (=> d!2176667 m!7676324))

(declare-fun m!7676326 () Bool)

(assert (=> d!2176667 m!7676326))

(declare-fun m!7676328 () Bool)

(assert (=> d!2176667 m!7676328))

(declare-fun m!7676330 () Bool)

(assert (=> d!2176667 m!7676330))

(declare-fun m!7676332 () Bool)

(assert (=> b!6988141 m!7676332))

(assert (=> b!6987988 d!2176667))

(declare-fun bs!1861938 () Bool)

(declare-fun d!2176669 () Bool)

(assert (= bs!1861938 (and d!2176669 b!6987978)))

(declare-fun lambda!401066 () Int)

(assert (=> bs!1861938 (= lambda!401066 lambda!401011)))

(assert (=> d!2176669 true))

(assert (=> d!2176669 (= (derivationStepZipper!2690 lt!2485602 (h!73500 s!7408)) (flatMap!2196 lt!2485602 lambda!401066))))

(declare-fun bs!1861939 () Bool)

(assert (= bs!1861939 d!2176669))

(declare-fun m!7676334 () Bool)

(assert (=> bs!1861939 m!7676334))

(assert (=> b!6987978 d!2176669))

(declare-fun d!2176671 () Bool)

(declare-fun dynLambda!26871 (Int Context!12412) (Set Context!12412))

(assert (=> d!2176671 (= (flatMap!2196 lt!2485602 lambda!401011) (dynLambda!26871 lambda!401011 lt!2485596))))

(declare-fun lt!2485728 () Unit!161075)

(declare-fun choose!52214 ((Set Context!12412) Context!12412 Int) Unit!161075)

(assert (=> d!2176671 (= lt!2485728 (choose!52214 lt!2485602 lt!2485596 lambda!401011))))

(assert (=> d!2176671 (= lt!2485602 (set.insert lt!2485596 (as set.empty (Set Context!12412))))))

(assert (=> d!2176671 (= (lemmaFlatMapOnSingletonSet!1711 lt!2485602 lt!2485596 lambda!401011) lt!2485728)))

(declare-fun b_lambda!262385 () Bool)

(assert (=> (not b_lambda!262385) (not d!2176671)))

(declare-fun bs!1861940 () Bool)

(assert (= bs!1861940 d!2176671))

(assert (=> bs!1861940 m!7676118))

(declare-fun m!7676348 () Bool)

(assert (=> bs!1861940 m!7676348))

(declare-fun m!7676350 () Bool)

(assert (=> bs!1861940 m!7676350))

(assert (=> bs!1861940 m!7676136))

(assert (=> b!6987978 d!2176671))

(declare-fun d!2176675 () Bool)

(declare-fun choose!52215 ((Set Context!12412) Int) (Set Context!12412))

(assert (=> d!2176675 (= (flatMap!2196 lt!2485602 lambda!401011) (choose!52215 lt!2485602 lambda!401011))))

(declare-fun bs!1861941 () Bool)

(assert (= bs!1861941 d!2176675))

(declare-fun m!7676364 () Bool)

(assert (=> bs!1861941 m!7676364))

(assert (=> b!6987978 d!2176675))

(declare-fun e!4200169 () (Set Context!12412))

(declare-fun call!634377 () (Set Context!12412))

(declare-fun b!6988152 () Bool)

(assert (=> b!6988152 (= e!4200169 (set.union call!634377 (derivationStepZipperUp!1860 (Context!12413 (t!380922 (exprs!6706 lt!2485596))) (h!73500 s!7408))))))

(declare-fun b!6988153 () Bool)

(declare-fun e!4200170 () (Set Context!12412))

(assert (=> b!6988153 (= e!4200170 call!634377)))

(declare-fun b!6988154 () Bool)

(declare-fun e!4200171 () Bool)

(assert (=> b!6988154 (= e!4200171 (nullable!6970 (h!73499 (exprs!6706 lt!2485596))))))

(declare-fun b!6988155 () Bool)

(assert (=> b!6988155 (= e!4200170 (as set.empty (Set Context!12412)))))

(declare-fun b!6988156 () Bool)

(assert (=> b!6988156 (= e!4200169 e!4200170)))

(declare-fun c!1296005 () Bool)

(assert (=> b!6988156 (= c!1296005 (is-Cons!67051 (exprs!6706 lt!2485596)))))

(declare-fun d!2176679 () Bool)

(declare-fun c!1296004 () Bool)

(assert (=> d!2176679 (= c!1296004 e!4200171)))

(declare-fun res!2849776 () Bool)

(assert (=> d!2176679 (=> (not res!2849776) (not e!4200171))))

(assert (=> d!2176679 (= res!2849776 (is-Cons!67051 (exprs!6706 lt!2485596)))))

(assert (=> d!2176679 (= (derivationStepZipperUp!1860 lt!2485596 (h!73500 s!7408)) e!4200169)))

(declare-fun bm!634372 () Bool)

(assert (=> bm!634372 (= call!634377 (derivationStepZipperDown!1928 (h!73499 (exprs!6706 lt!2485596)) (Context!12413 (t!380922 (exprs!6706 lt!2485596))) (h!73500 s!7408)))))

(assert (= (and d!2176679 res!2849776) b!6988154))

(assert (= (and d!2176679 c!1296004) b!6988152))

(assert (= (and d!2176679 (not c!1296004)) b!6988156))

(assert (= (and b!6988156 c!1296005) b!6988153))

(assert (= (and b!6988156 (not c!1296005)) b!6988155))

(assert (= (or b!6988152 b!6988153) bm!634372))

(declare-fun m!7676366 () Bool)

(assert (=> b!6988152 m!7676366))

(declare-fun m!7676368 () Bool)

(assert (=> b!6988154 m!7676368))

(declare-fun m!7676370 () Bool)

(assert (=> bm!634372 m!7676370))

(assert (=> b!6987978 d!2176679))

(assert (=> b!6987978 d!2176665))

(declare-fun bs!1861942 () Bool)

(declare-fun d!2176681 () Bool)

(assert (= bs!1861942 (and d!2176681 b!6987988)))

(declare-fun lambda!401067 () Int)

(assert (=> bs!1861942 (= lambda!401067 lambda!401010)))

(declare-fun bs!1861943 () Bool)

(assert (= bs!1861943 (and d!2176681 d!2176661)))

(assert (=> bs!1861943 (= lambda!401067 lambda!401063)))

(assert (=> d!2176681 (= (inv!85885 setElem!47760) (forall!16120 (exprs!6706 setElem!47760) lambda!401067))))

(declare-fun bs!1861944 () Bool)

(assert (= bs!1861944 d!2176681))

(declare-fun m!7676372 () Bool)

(assert (=> bs!1861944 m!7676372))

(assert (=> setNonEmpty!47760 d!2176681))

(declare-fun d!2176683 () Bool)

(declare-fun c!1296006 () Bool)

(assert (=> d!2176683 (= c!1296006 (isEmpty!39139 (t!380923 s!7408)))))

(declare-fun e!4200172 () Bool)

(assert (=> d!2176683 (= (matchZipper!2750 lt!2485599 (t!380923 s!7408)) e!4200172)))

(declare-fun b!6988157 () Bool)

(assert (=> b!6988157 (= e!4200172 (nullableZipper!2430 lt!2485599))))

(declare-fun b!6988158 () Bool)

(assert (=> b!6988158 (= e!4200172 (matchZipper!2750 (derivationStepZipper!2690 lt!2485599 (head!14105 (t!380923 s!7408))) (tail!13215 (t!380923 s!7408))))))

(assert (= (and d!2176683 c!1296006) b!6988157))

(assert (= (and d!2176683 (not c!1296006)) b!6988158))

(assert (=> d!2176683 m!7676280))

(declare-fun m!7676374 () Bool)

(assert (=> b!6988157 m!7676374))

(assert (=> b!6988158 m!7676284))

(assert (=> b!6988158 m!7676284))

(declare-fun m!7676376 () Bool)

(assert (=> b!6988158 m!7676376))

(assert (=> b!6988158 m!7676288))

(assert (=> b!6988158 m!7676376))

(assert (=> b!6988158 m!7676288))

(declare-fun m!7676378 () Bool)

(assert (=> b!6988158 m!7676378))

(assert (=> b!6987987 d!2176683))

(declare-fun d!2176685 () Bool)

(declare-fun e!4200175 () Bool)

(assert (=> d!2176685 (= (matchZipper!2750 (set.union lt!2485605 lt!2485592) (t!380923 s!7408)) e!4200175)))

(declare-fun res!2849779 () Bool)

(assert (=> d!2176685 (=> res!2849779 e!4200175)))

(assert (=> d!2176685 (= res!2849779 (matchZipper!2750 lt!2485605 (t!380923 s!7408)))))

(declare-fun lt!2485731 () Unit!161075)

(declare-fun choose!52216 ((Set Context!12412) (Set Context!12412) List!67176) Unit!161075)

(assert (=> d!2176685 (= lt!2485731 (choose!52216 lt!2485605 lt!2485592 (t!380923 s!7408)))))

(assert (=> d!2176685 (= (lemmaZipperConcatMatchesSameAsBothZippers!1383 lt!2485605 lt!2485592 (t!380923 s!7408)) lt!2485731)))

(declare-fun b!6988161 () Bool)

(assert (=> b!6988161 (= e!4200175 (matchZipper!2750 lt!2485592 (t!380923 s!7408)))))

(assert (= (and d!2176685 (not res!2849779)) b!6988161))

(declare-fun m!7676380 () Bool)

(assert (=> d!2176685 m!7676380))

(assert (=> d!2176685 m!7676160))

(declare-fun m!7676382 () Bool)

(assert (=> d!2176685 m!7676382))

(assert (=> b!6988161 m!7676102))

(assert (=> b!6987987 d!2176685))

(declare-fun d!2176687 () Bool)

(declare-fun c!1296008 () Bool)

(assert (=> d!2176687 (= c!1296008 (isEmpty!39139 (t!380923 s!7408)))))

(declare-fun e!4200176 () Bool)

(assert (=> d!2176687 (= (matchZipper!2750 lt!2485610 (t!380923 s!7408)) e!4200176)))

(declare-fun b!6988162 () Bool)

(assert (=> b!6988162 (= e!4200176 (nullableZipper!2430 lt!2485610))))

(declare-fun b!6988163 () Bool)

(assert (=> b!6988163 (= e!4200176 (matchZipper!2750 (derivationStepZipper!2690 lt!2485610 (head!14105 (t!380923 s!7408))) (tail!13215 (t!380923 s!7408))))))

(assert (= (and d!2176687 c!1296008) b!6988162))

(assert (= (and d!2176687 (not c!1296008)) b!6988163))

(assert (=> d!2176687 m!7676280))

(declare-fun m!7676384 () Bool)

(assert (=> b!6988162 m!7676384))

(assert (=> b!6988163 m!7676284))

(assert (=> b!6988163 m!7676284))

(declare-fun m!7676386 () Bool)

(assert (=> b!6988163 m!7676386))

(assert (=> b!6988163 m!7676288))

(assert (=> b!6988163 m!7676386))

(assert (=> b!6988163 m!7676288))

(declare-fun m!7676388 () Bool)

(assert (=> b!6988163 m!7676388))

(assert (=> b!6987987 d!2176687))

(assert (=> b!6987987 d!2176641))

(declare-fun d!2176689 () Bool)

(declare-fun c!1296009 () Bool)

(assert (=> d!2176689 (= c!1296009 (isEmpty!39139 (t!380923 s!7408)))))

(declare-fun e!4200177 () Bool)

(assert (=> d!2176689 (= (matchZipper!2750 lt!2485605 (t!380923 s!7408)) e!4200177)))

(declare-fun b!6988164 () Bool)

(assert (=> b!6988164 (= e!4200177 (nullableZipper!2430 lt!2485605))))

(declare-fun b!6988165 () Bool)

(assert (=> b!6988165 (= e!4200177 (matchZipper!2750 (derivationStepZipper!2690 lt!2485605 (head!14105 (t!380923 s!7408))) (tail!13215 (t!380923 s!7408))))))

(assert (= (and d!2176689 c!1296009) b!6988164))

(assert (= (and d!2176689 (not c!1296009)) b!6988165))

(assert (=> d!2176689 m!7676280))

(declare-fun m!7676390 () Bool)

(assert (=> b!6988164 m!7676390))

(assert (=> b!6988165 m!7676284))

(assert (=> b!6988165 m!7676284))

(declare-fun m!7676392 () Bool)

(assert (=> b!6988165 m!7676392))

(assert (=> b!6988165 m!7676288))

(assert (=> b!6988165 m!7676392))

(assert (=> b!6988165 m!7676288))

(declare-fun m!7676394 () Bool)

(assert (=> b!6988165 m!7676394))

(assert (=> b!6987987 d!2176689))

(assert (=> b!6987996 d!2176653))

(declare-fun d!2176691 () Bool)

(declare-fun e!4200180 () Bool)

(assert (=> d!2176691 e!4200180))

(declare-fun res!2849782 () Bool)

(assert (=> d!2176691 (=> (not res!2849782) (not e!4200180))))

(declare-fun lt!2485736 () Context!12412)

(declare-fun dynLambda!26872 (Int Context!12412) Bool)

(assert (=> d!2176691 (= res!2849782 (dynLambda!26872 lambda!401008 lt!2485736))))

(declare-fun getWitness!1105 (List!67177 Int) Context!12412)

(assert (=> d!2176691 (= lt!2485736 (getWitness!1105 (toList!10570 lt!2485606) lambda!401008))))

(declare-fun exists!2994 ((Set Context!12412) Int) Bool)

(assert (=> d!2176691 (exists!2994 lt!2485606 lambda!401008)))

(assert (=> d!2176691 (= (getWitness!1103 lt!2485606 lambda!401008) lt!2485736)))

(declare-fun b!6988168 () Bool)

(assert (=> b!6988168 (= e!4200180 (set.member lt!2485736 lt!2485606))))

(assert (= (and d!2176691 res!2849782) b!6988168))

(declare-fun b_lambda!262387 () Bool)

(assert (=> (not b_lambda!262387) (not d!2176691)))

(declare-fun m!7676396 () Bool)

(assert (=> d!2176691 m!7676396))

(assert (=> d!2176691 m!7676124))

(assert (=> d!2176691 m!7676124))

(declare-fun m!7676398 () Bool)

(assert (=> d!2176691 m!7676398))

(declare-fun m!7676400 () Bool)

(assert (=> d!2176691 m!7676400))

(declare-fun m!7676402 () Bool)

(assert (=> b!6988168 m!7676402))

(assert (=> b!6987985 d!2176691))

(declare-fun d!2176693 () Bool)

(declare-fun e!4200183 () Bool)

(assert (=> d!2176693 e!4200183))

(declare-fun res!2849785 () Bool)

(assert (=> d!2176693 (=> (not res!2849785) (not e!4200183))))

(declare-fun lt!2485739 () List!67177)

(declare-fun noDuplicate!2517 (List!67177) Bool)

(assert (=> d!2176693 (= res!2849785 (noDuplicate!2517 lt!2485739))))

(declare-fun choose!52217 ((Set Context!12412)) List!67177)

(assert (=> d!2176693 (= lt!2485739 (choose!52217 lt!2485606))))

(assert (=> d!2176693 (= (toList!10570 lt!2485606) lt!2485739)))

(declare-fun b!6988171 () Bool)

(declare-fun content!13248 (List!67177) (Set Context!12412))

(assert (=> b!6988171 (= e!4200183 (= (content!13248 lt!2485739) lt!2485606))))

(assert (= (and d!2176693 res!2849785) b!6988171))

(declare-fun m!7676406 () Bool)

(assert (=> d!2176693 m!7676406))

(declare-fun m!7676408 () Bool)

(assert (=> d!2176693 m!7676408))

(declare-fun m!7676410 () Bool)

(assert (=> b!6988171 m!7676410))

(assert (=> b!6987985 d!2176693))

(declare-fun bs!1861950 () Bool)

(declare-fun d!2176697 () Bool)

(assert (= bs!1861950 (and d!2176697 b!6987985)))

(declare-fun lambda!401078 () Int)

(assert (=> bs!1861950 (= lambda!401078 lambda!401008)))

(assert (=> d!2176697 true))

(assert (=> d!2176697 (exists!2992 lt!2485600 lambda!401078)))

(declare-fun lt!2485742 () Unit!161075)

(declare-fun choose!52218 (List!67177 List!67176) Unit!161075)

(assert (=> d!2176697 (= lt!2485742 (choose!52218 lt!2485600 s!7408))))

(assert (=> d!2176697 (matchZipper!2750 (content!13248 lt!2485600) s!7408)))

(assert (=> d!2176697 (= (lemmaZipperMatchesExistsMatchingContext!179 lt!2485600 s!7408) lt!2485742)))

(declare-fun bs!1861951 () Bool)

(assert (= bs!1861951 d!2176697))

(declare-fun m!7676416 () Bool)

(assert (=> bs!1861951 m!7676416))

(declare-fun m!7676418 () Bool)

(assert (=> bs!1861951 m!7676418))

(declare-fun m!7676420 () Bool)

(assert (=> bs!1861951 m!7676420))

(assert (=> bs!1861951 m!7676420))

(declare-fun m!7676422 () Bool)

(assert (=> bs!1861951 m!7676422))

(assert (=> b!6987985 d!2176697))

(declare-fun bs!1861952 () Bool)

(declare-fun d!2176705 () Bool)

(assert (= bs!1861952 (and d!2176705 b!6987985)))

(declare-fun lambda!401081 () Int)

(assert (=> bs!1861952 (not (= lambda!401081 lambda!401008))))

(declare-fun bs!1861953 () Bool)

(assert (= bs!1861953 (and d!2176705 d!2176697)))

(assert (=> bs!1861953 (not (= lambda!401081 lambda!401078))))

(assert (=> d!2176705 true))

(declare-fun order!27905 () Int)

(declare-fun dynLambda!26873 (Int Int) Int)

(assert (=> d!2176705 (< (dynLambda!26873 order!27905 lambda!401008) (dynLambda!26873 order!27905 lambda!401081))))

(declare-fun forall!16122 (List!67177 Int) Bool)

(assert (=> d!2176705 (= (exists!2992 lt!2485600 lambda!401008) (not (forall!16122 lt!2485600 lambda!401081)))))

(declare-fun bs!1861954 () Bool)

(assert (= bs!1861954 d!2176705))

(declare-fun m!7676424 () Bool)

(assert (=> bs!1861954 m!7676424))

(assert (=> b!6987985 d!2176705))

(declare-fun d!2176707 () Bool)

(declare-fun c!1296012 () Bool)

(assert (=> d!2176707 (= c!1296012 (isEmpty!39139 s!7408))))

(declare-fun e!4200184 () Bool)

(assert (=> d!2176707 (= (matchZipper!2750 lt!2485587 s!7408) e!4200184)))

(declare-fun b!6988174 () Bool)

(assert (=> b!6988174 (= e!4200184 (nullableZipper!2430 lt!2485587))))

(declare-fun b!6988175 () Bool)

(assert (=> b!6988175 (= e!4200184 (matchZipper!2750 (derivationStepZipper!2690 lt!2485587 (head!14105 s!7408)) (tail!13215 s!7408)))))

(assert (= (and d!2176707 c!1296012) b!6988174))

(assert (= (and d!2176707 (not c!1296012)) b!6988175))

(assert (=> d!2176707 m!7676292))

(declare-fun m!7676426 () Bool)

(assert (=> b!6988174 m!7676426))

(assert (=> b!6988175 m!7676296))

(assert (=> b!6988175 m!7676296))

(declare-fun m!7676428 () Bool)

(assert (=> b!6988175 m!7676428))

(assert (=> b!6988175 m!7676300))

(assert (=> b!6988175 m!7676428))

(assert (=> b!6988175 m!7676300))

(declare-fun m!7676430 () Bool)

(assert (=> b!6988175 m!7676430))

(assert (=> b!6987985 d!2176707))

(assert (=> b!6987981 d!2176665))

(declare-fun d!2176709 () Bool)

(assert (=> d!2176709 (= (isEmpty!39137 (exprs!6706 lt!2485603)) (is-Nil!67051 (exprs!6706 lt!2485603)))))

(assert (=> b!6987984 d!2176709))

(assert (=> b!6987993 d!2176653))

(assert (=> b!6987993 d!2176641))

(declare-fun d!2176711 () Bool)

(assert (=> d!2176711 (= (flatMap!2196 lt!2485584 lambda!401011) (dynLambda!26871 lambda!401011 lt!2485580))))

(declare-fun lt!2485743 () Unit!161075)

(assert (=> d!2176711 (= lt!2485743 (choose!52214 lt!2485584 lt!2485580 lambda!401011))))

(assert (=> d!2176711 (= lt!2485584 (set.insert lt!2485580 (as set.empty (Set Context!12412))))))

(assert (=> d!2176711 (= (lemmaFlatMapOnSingletonSet!1711 lt!2485584 lt!2485580 lambda!401011) lt!2485743)))

(declare-fun b_lambda!262389 () Bool)

(assert (=> (not b_lambda!262389) (not d!2176711)))

(declare-fun bs!1861955 () Bool)

(assert (= bs!1861955 d!2176711))

(assert (=> bs!1861955 m!7676150))

(declare-fun m!7676432 () Bool)

(assert (=> bs!1861955 m!7676432))

(declare-fun m!7676434 () Bool)

(assert (=> bs!1861955 m!7676434))

(assert (=> bs!1861955 m!7676152))

(assert (=> b!6987982 d!2176711))

(declare-fun d!2176713 () Bool)

(assert (=> d!2176713 (= (flatMap!2196 lt!2485584 lambda!401011) (choose!52215 lt!2485584 lambda!401011))))

(declare-fun bs!1861956 () Bool)

(assert (= bs!1861956 d!2176713))

(declare-fun m!7676436 () Bool)

(assert (=> bs!1861956 m!7676436))

(assert (=> b!6987982 d!2176713))

(assert (=> b!6987982 d!2176641))

(assert (=> b!6987982 d!2176645))

(declare-fun d!2176715 () Bool)

(declare-fun res!2849792 () Bool)

(declare-fun e!4200195 () Bool)

(assert (=> d!2176715 (=> res!2849792 e!4200195)))

(assert (=> d!2176715 (= res!2849792 (is-Nil!67051 lt!2485601))))

(assert (=> d!2176715 (= (forall!16120 lt!2485601 lambda!401010) e!4200195)))

(declare-fun b!6988190 () Bool)

(declare-fun e!4200196 () Bool)

(assert (=> b!6988190 (= e!4200195 e!4200196)))

(declare-fun res!2849793 () Bool)

(assert (=> b!6988190 (=> (not res!2849793) (not e!4200196))))

(declare-fun dynLambda!26874 (Int Regex!17210) Bool)

(assert (=> b!6988190 (= res!2849793 (dynLambda!26874 lambda!401010 (h!73499 lt!2485601)))))

(declare-fun b!6988191 () Bool)

(assert (=> b!6988191 (= e!4200196 (forall!16120 (t!380922 lt!2485601) lambda!401010))))

(assert (= (and d!2176715 (not res!2849792)) b!6988190))

(assert (= (and b!6988190 res!2849793) b!6988191))

(declare-fun b_lambda!262391 () Bool)

(assert (=> (not b_lambda!262391) (not b!6988190)))

(declare-fun m!7676438 () Bool)

(assert (=> b!6988190 m!7676438))

(declare-fun m!7676440 () Bool)

(assert (=> b!6988191 m!7676440))

(assert (=> b!6987982 d!2176715))

(declare-fun condSetEmpty!47766 () Bool)

(assert (=> setNonEmpty!47760 (= condSetEmpty!47766 (= setRest!47760 (as set.empty (Set Context!12412))))))

(declare-fun setRes!47766 () Bool)

(assert (=> setNonEmpty!47760 (= tp!1929448 setRes!47766)))

(declare-fun setIsEmpty!47766 () Bool)

(assert (=> setIsEmpty!47766 setRes!47766))

(declare-fun setNonEmpty!47766 () Bool)

(declare-fun e!4200199 () Bool)

(declare-fun tp!1929466 () Bool)

(declare-fun setElem!47766 () Context!12412)

(assert (=> setNonEmpty!47766 (= setRes!47766 (and tp!1929466 (inv!85885 setElem!47766) e!4200199))))

(declare-fun setRest!47766 () (Set Context!12412))

(assert (=> setNonEmpty!47766 (= setRest!47760 (set.union (set.insert setElem!47766 (as set.empty (Set Context!12412))) setRest!47766))))

(declare-fun b!6988196 () Bool)

(declare-fun tp!1929465 () Bool)

(assert (=> b!6988196 (= e!4200199 tp!1929465)))

(assert (= (and setNonEmpty!47760 condSetEmpty!47766) setIsEmpty!47766))

(assert (= (and setNonEmpty!47760 (not condSetEmpty!47766)) setNonEmpty!47766))

(assert (= setNonEmpty!47766 b!6988196))

(declare-fun m!7676442 () Bool)

(assert (=> setNonEmpty!47766 m!7676442))

(declare-fun b!6988201 () Bool)

(declare-fun e!4200202 () Bool)

(declare-fun tp!1929471 () Bool)

(declare-fun tp!1929472 () Bool)

(assert (=> b!6988201 (= e!4200202 (and tp!1929471 tp!1929472))))

(assert (=> b!6987979 (= tp!1929447 e!4200202)))

(assert (= (and b!6987979 (is-Cons!67051 (exprs!6706 setElem!47760))) b!6988201))

(declare-fun b!6988202 () Bool)

(declare-fun e!4200203 () Bool)

(declare-fun tp!1929473 () Bool)

(declare-fun tp!1929474 () Bool)

(assert (=> b!6988202 (= e!4200203 (and tp!1929473 tp!1929474))))

(assert (=> b!6987986 (= tp!1929446 e!4200203)))

(assert (= (and b!6987986 (is-Cons!67051 (exprs!6706 ct2!306))) b!6988202))

(declare-fun b!6988207 () Bool)

(declare-fun e!4200206 () Bool)

(declare-fun tp!1929477 () Bool)

(assert (=> b!6988207 (= e!4200206 (and tp_is_empty!43645 tp!1929477))))

(assert (=> b!6987994 (= tp!1929445 e!4200206)))

(assert (= (and b!6987994 (is-Cons!67052 (t!380923 s!7408))) b!6988207))

(declare-fun b_lambda!262393 () Bool)

(assert (= b_lambda!262383 (or b!6987988 b_lambda!262393)))

(declare-fun bs!1861957 () Bool)

(declare-fun d!2176717 () Bool)

(assert (= bs!1861957 (and d!2176717 b!6987988)))

(declare-fun lt!2485744 () Unit!161075)

(assert (=> bs!1861957 (= lt!2485744 (lemmaConcatPreservesForall!546 (exprs!6706 lt!2485725) (exprs!6706 ct2!306) lambda!401010))))

(assert (=> bs!1861957 (= (dynLambda!26870 lambda!401009 lt!2485725) (Context!12413 (++!15155 (exprs!6706 lt!2485725) (exprs!6706 ct2!306))))))

(declare-fun m!7676444 () Bool)

(assert (=> bs!1861957 m!7676444))

(declare-fun m!7676446 () Bool)

(assert (=> bs!1861957 m!7676446))

(assert (=> d!2176667 d!2176717))

(declare-fun b_lambda!262395 () Bool)

(assert (= b_lambda!262387 (or b!6987985 b_lambda!262395)))

(declare-fun bs!1861958 () Bool)

(declare-fun d!2176719 () Bool)

(assert (= bs!1861958 (and d!2176719 b!6987985)))

(assert (=> bs!1861958 (= (dynLambda!26872 lambda!401008 lt!2485736) (matchZipper!2750 (set.insert lt!2485736 (as set.empty (Set Context!12412))) s!7408))))

(declare-fun m!7676448 () Bool)

(assert (=> bs!1861958 m!7676448))

(assert (=> bs!1861958 m!7676448))

(declare-fun m!7676450 () Bool)

(assert (=> bs!1861958 m!7676450))

(assert (=> d!2176691 d!2176719))

(declare-fun b_lambda!262397 () Bool)

(assert (= b_lambda!262385 (or b!6987978 b_lambda!262397)))

(declare-fun bs!1861959 () Bool)

(declare-fun d!2176721 () Bool)

(assert (= bs!1861959 (and d!2176721 b!6987978)))

(assert (=> bs!1861959 (= (dynLambda!26871 lambda!401011 lt!2485596) (derivationStepZipperUp!1860 lt!2485596 (h!73500 s!7408)))))

(assert (=> bs!1861959 m!7676120))

(assert (=> d!2176671 d!2176721))

(declare-fun b_lambda!262399 () Bool)

(assert (= b_lambda!262389 (or b!6987978 b_lambda!262399)))

(declare-fun bs!1861960 () Bool)

(declare-fun d!2176723 () Bool)

(assert (= bs!1861960 (and d!2176723 b!6987978)))

(assert (=> bs!1861960 (= (dynLambda!26871 lambda!401011 lt!2485580) (derivationStepZipperUp!1860 lt!2485580 (h!73500 s!7408)))))

(assert (=> bs!1861960 m!7676146))

(assert (=> d!2176711 d!2176723))

(declare-fun b_lambda!262401 () Bool)

(assert (= b_lambda!262391 (or b!6987988 b_lambda!262401)))

(declare-fun bs!1861961 () Bool)

(declare-fun d!2176725 () Bool)

(assert (= bs!1861961 (and d!2176725 b!6987988)))

(declare-fun validRegex!8856 (Regex!17210) Bool)

(assert (=> bs!1861961 (= (dynLambda!26874 lambda!401010 (h!73499 lt!2485601)) (validRegex!8856 (h!73499 lt!2485601)))))

(declare-fun m!7676452 () Bool)

(assert (=> bs!1861961 m!7676452))

(assert (=> b!6988190 d!2176725))

(push 1)

(assert (not d!2176685))

(assert (not b!6988158))

(assert (not bs!1861957))

(assert (not b!6988094))

(assert (not bs!1861958))

(assert (not d!2176691))

(assert (not d!2176649))

(assert (not b!6988136))

(assert (not b!6988162))

(assert (not b_lambda!262395))

(assert (not d!2176661))

(assert (not b!6988171))

(assert (not b!6988152))

(assert (not d!2176671))

(assert (not d!2176665))

(assert (not d!2176689))

(assert (not d!2176681))

(assert (not b!6988161))

(assert (not d!2176641))

(assert (not b!6988191))

(assert (not d!2176693))

(assert (not d!2176683))

(assert (not bm!634365))

(assert (not b!6988109))

(assert (not b!6988130))

(assert (not b_lambda!262393))

(assert (not b!6988123))

(assert (not d!2176663))

(assert (not setNonEmpty!47766))

(assert (not bm!634371))

(assert (not b!6988154))

(assert (not b!6988131))

(assert (not bs!1861961))

(assert (not bs!1861959))

(assert (not d!2176705))

(assert (not d!2176687))

(assert (not d!2176675))

(assert (not d!2176697))

(assert tp_is_empty!43645)

(assert (not b!6988174))

(assert (not b!6988207))

(assert (not b!6988157))

(assert (not b_lambda!262397))

(assert (not d!2176711))

(assert (not b!6988165))

(assert (not d!2176657))

(assert (not d!2176653))

(assert (not b!6988202))

(assert (not b_lambda!262401))

(assert (not b_lambda!262399))

(assert (not b!6988111))

(assert (not bm!634367))

(assert (not bm!634366))

(assert (not b!6988135))

(assert (not d!2176713))

(assert (not bs!1861960))

(assert (not d!2176667))

(assert (not d!2176647))

(assert (not d!2176707))

(assert (not d!2176669))

(assert (not b!6988132))

(assert (not b!6988133))

(assert (not b!6988164))

(assert (not bm!634372))

(assert (not b!6988196))

(assert (not b!6988163))

(assert (not b!6988175))

(assert (not d!2176655))

(assert (not b!6988124))

(assert (not b!6988201))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

