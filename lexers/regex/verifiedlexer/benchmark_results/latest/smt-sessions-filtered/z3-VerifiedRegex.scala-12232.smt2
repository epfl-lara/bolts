; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!689280 () Bool)

(assert start!689280)

(declare-fun b!7082867 () Bool)

(assert (=> b!7082867 true))

(declare-fun bs!1882556 () Bool)

(declare-fun b!7082865 () Bool)

(assert (= bs!1882556 (and b!7082865 b!7082867)))

(declare-fun lambda!428513 () Int)

(declare-fun lambda!428512 () Int)

(assert (=> bs!1882556 (not (= lambda!428513 lambda!428512))))

(declare-fun setIsEmpty!50605 () Bool)

(declare-fun setRes!50605 () Bool)

(assert (=> setIsEmpty!50605 setRes!50605))

(declare-fun b!7082860 () Bool)

(declare-fun res!2893432 () Bool)

(declare-fun e!4258186 () Bool)

(assert (=> b!7082860 (=> res!2893432 e!4258186)))

(declare-datatypes ((C!35692 0))(
  ( (C!35693 (val!27548 Int)) )
))
(declare-datatypes ((Regex!17711 0))(
  ( (ElementMatch!17711 (c!1322068 C!35692)) (Concat!26556 (regOne!35934 Regex!17711) (regTwo!35934 Regex!17711)) (EmptyExpr!17711) (Star!17711 (reg!18040 Regex!17711)) (EmptyLang!17711) (Union!17711 (regOne!35935 Regex!17711) (regTwo!35935 Regex!17711)) )
))
(declare-datatypes ((List!68658 0))(
  ( (Nil!68534) (Cons!68534 (h!74982 Regex!17711) (t!382443 List!68658)) )
))
(declare-datatypes ((Context!13414 0))(
  ( (Context!13415 (exprs!7207 List!68658)) )
))
(declare-fun ct2!306 () Context!13414)

(declare-fun nullableContext!122 (Context!13414) Bool)

(assert (=> b!7082860 (= res!2893432 (not (nullableContext!122 ct2!306)))))

(declare-fun b!7082861 () Bool)

(declare-fun e!4258189 () Bool)

(declare-fun e!4258187 () Bool)

(assert (=> b!7082861 (= e!4258189 e!4258187)))

(declare-fun res!2893435 () Bool)

(assert (=> b!7082861 (=> (not res!2893435) (not e!4258187))))

(declare-fun lt!2553763 () Context!13414)

(assert (=> b!7082861 (= res!2893435 (nullableContext!122 lt!2553763))))

(define-sort InoxSet (T) (Array T Bool))

(declare-fun lt!2553767 () (InoxSet Context!13414))

(declare-fun lambda!428510 () Int)

(declare-fun getWitness!1852 ((InoxSet Context!13414) Int) Context!13414)

(assert (=> b!7082861 (= lt!2553763 (getWitness!1852 lt!2553767 lambda!428510))))

(declare-fun b!7082862 () Bool)

(declare-fun e!4258188 () Bool)

(declare-fun tp_is_empty!44647 () Bool)

(declare-fun tp!1943999 () Bool)

(assert (=> b!7082862 (= e!4258188 (and tp_is_empty!44647 tp!1943999))))

(declare-fun b!7082863 () Bool)

(declare-fun e!4258185 () Bool)

(declare-fun tp!1944000 () Bool)

(assert (=> b!7082863 (= e!4258185 tp!1944000)))

(declare-fun b!7082864 () Bool)

(declare-fun res!2893434 () Bool)

(assert (=> b!7082864 (=> (not res!2893434) (not e!4258189))))

(declare-fun nullableZipper!2742 ((InoxSet Context!13414)) Bool)

(assert (=> b!7082864 (= res!2893434 (nullableZipper!2742 lt!2553767))))

(declare-fun setNonEmpty!50605 () Bool)

(declare-fun tp!1943998 () Bool)

(declare-fun e!4258190 () Bool)

(declare-fun setElem!50605 () Context!13414)

(declare-fun inv!87136 (Context!13414) Bool)

(assert (=> setNonEmpty!50605 (= setRes!50605 (and tp!1943998 (inv!87136 setElem!50605) e!4258190))))

(declare-fun z1!570 () (InoxSet Context!13414))

(declare-fun setRest!50605 () (InoxSet Context!13414))

(assert (=> setNonEmpty!50605 (= z1!570 ((_ map or) (store ((as const (Array Context!13414 Bool)) false) setElem!50605 true) setRest!50605))))

(declare-fun e!4258184 () Bool)

(assert (=> b!7082865 (= e!4258184 (not e!4258186))))

(declare-fun res!2893431 () Bool)

(assert (=> b!7082865 (=> res!2893431 e!4258186)))

(declare-fun lt!2553764 () Context!13414)

(assert (=> b!7082865 (= res!2893431 (not (nullableContext!122 lt!2553764)))))

(declare-fun lt!2553766 () List!68658)

(declare-datatypes ((Unit!162133 0))(
  ( (Unit!162134) )
))
(declare-fun lt!2553769 () Unit!162133)

(declare-fun lemmaContentSubsetPreservesForall!356 (List!68658 List!68658 Int) Unit!162133)

(assert (=> b!7082865 (= lt!2553769 (lemmaContentSubsetPreservesForall!356 lt!2553766 (exprs!7207 ct2!306) lambda!428513))))

(declare-fun lt!2553765 () Unit!162133)

(assert (=> b!7082865 (= lt!2553765 (lemmaContentSubsetPreservesForall!356 lt!2553766 (exprs!7207 lt!2553764) lambda!428513))))

(declare-fun subseq!705 (List!68658 List!68658) Bool)

(assert (=> b!7082865 (subseq!705 (exprs!7207 ct2!306) lt!2553766)))

(declare-fun lt!2553772 () Unit!162133)

(declare-fun lemmaConcatThenSecondSubseqOfTot!26 (List!68658 List!68658) Unit!162133)

(assert (=> b!7082865 (= lt!2553772 (lemmaConcatThenSecondSubseqOfTot!26 (exprs!7207 lt!2553764) (exprs!7207 ct2!306)))))

(assert (=> b!7082865 (subseq!705 (exprs!7207 lt!2553764) lt!2553766)))

(declare-fun lt!2553770 () Unit!162133)

(declare-fun lemmaConcatThenFirstSubseqOfTot!26 (List!68658 List!68658) Unit!162133)

(assert (=> b!7082865 (= lt!2553770 (lemmaConcatThenFirstSubseqOfTot!26 (exprs!7207 lt!2553764) (exprs!7207 ct2!306)))))

(declare-fun res!2893438 () Bool)

(assert (=> start!689280 (=> (not res!2893438) (not e!4258189))))

(declare-datatypes ((List!68659 0))(
  ( (Nil!68535) (Cons!68535 (h!74983 C!35692) (t!382444 List!68659)) )
))
(declare-fun s!7408 () List!68659)

(declare-fun matchZipper!3251 ((InoxSet Context!13414) List!68659) Bool)

(assert (=> start!689280 (= res!2893438 (matchZipper!3251 lt!2553767 s!7408))))

(declare-fun appendTo!832 ((InoxSet Context!13414) Context!13414) (InoxSet Context!13414))

(assert (=> start!689280 (= lt!2553767 (appendTo!832 z1!570 ct2!306))))

(assert (=> start!689280 e!4258189))

(declare-fun condSetEmpty!50605 () Bool)

(assert (=> start!689280 (= condSetEmpty!50605 (= z1!570 ((as const (Array Context!13414 Bool)) false)))))

(assert (=> start!689280 setRes!50605))

(assert (=> start!689280 (and (inv!87136 ct2!306) e!4258185)))

(assert (=> start!689280 e!4258188))

(declare-fun b!7082866 () Bool)

(declare-fun res!2893437 () Bool)

(assert (=> b!7082866 (=> (not res!2893437) (not e!4258189))))

(declare-fun exists!3810 ((InoxSet Context!13414) Int) Bool)

(assert (=> b!7082866 (= res!2893437 (exists!3810 lt!2553767 lambda!428510))))

(assert (=> b!7082867 (= e!4258187 e!4258184)))

(declare-fun res!2893433 () Bool)

(assert (=> b!7082867 (=> (not res!2893433) (not e!4258184))))

(assert (=> b!7082867 (= res!2893433 (= (Context!13415 lt!2553766) lt!2553763))))

(declare-fun ++!15882 (List!68658 List!68658) List!68658)

(assert (=> b!7082867 (= lt!2553766 (++!15882 (exprs!7207 lt!2553764) (exprs!7207 ct2!306)))))

(declare-fun lt!2553768 () Unit!162133)

(declare-fun lemmaConcatPreservesForall!1022 (List!68658 List!68658 Int) Unit!162133)

(assert (=> b!7082867 (= lt!2553768 (lemmaConcatPreservesForall!1022 (exprs!7207 lt!2553764) (exprs!7207 ct2!306) lambda!428512))))

(declare-fun lambda!428511 () Int)

(declare-fun mapPost2!538 ((InoxSet Context!13414) Int Context!13414) Context!13414)

(assert (=> b!7082867 (= lt!2553764 (mapPost2!538 z1!570 lambda!428511 lt!2553763))))

(declare-fun b!7082868 () Bool)

(declare-fun tp!1943997 () Bool)

(assert (=> b!7082868 (= e!4258190 tp!1943997)))

(declare-fun b!7082869 () Bool)

(assert (=> b!7082869 (= e!4258186 (select (store ((as const (Array Context!13414 Bool)) false) ct2!306 true) ct2!306))))

(assert (=> b!7082869 (exists!3810 z1!570 lambda!428510)))

(declare-fun lt!2553771 () Unit!162133)

(declare-fun lemmaContainsThenExists!187 ((InoxSet Context!13414) Context!13414 Int) Unit!162133)

(assert (=> b!7082869 (= lt!2553771 (lemmaContainsThenExists!187 z1!570 lt!2553764 lambda!428510))))

(declare-fun b!7082870 () Bool)

(declare-fun res!2893436 () Bool)

(assert (=> b!7082870 (=> (not res!2893436) (not e!4258189))))

(get-info :version)

(assert (=> b!7082870 (= res!2893436 (not ((_ is Cons!68535) s!7408)))))

(assert (= (and start!689280 res!2893438) b!7082870))

(assert (= (and b!7082870 res!2893436) b!7082864))

(assert (= (and b!7082864 res!2893434) b!7082866))

(assert (= (and b!7082866 res!2893437) b!7082861))

(assert (= (and b!7082861 res!2893435) b!7082867))

(assert (= (and b!7082867 res!2893433) b!7082865))

(assert (= (and b!7082865 (not res!2893431)) b!7082860))

(assert (= (and b!7082860 (not res!2893432)) b!7082869))

(assert (= (and start!689280 condSetEmpty!50605) setIsEmpty!50605))

(assert (= (and start!689280 (not condSetEmpty!50605)) setNonEmpty!50605))

(assert (= setNonEmpty!50605 b!7082868))

(assert (= start!689280 b!7082863))

(assert (= (and start!689280 ((_ is Cons!68535) s!7408)) b!7082862))

(declare-fun m!7814630 () Bool)

(assert (=> b!7082866 m!7814630))

(declare-fun m!7814632 () Bool)

(assert (=> b!7082865 m!7814632))

(declare-fun m!7814634 () Bool)

(assert (=> b!7082865 m!7814634))

(declare-fun m!7814636 () Bool)

(assert (=> b!7082865 m!7814636))

(declare-fun m!7814638 () Bool)

(assert (=> b!7082865 m!7814638))

(declare-fun m!7814640 () Bool)

(assert (=> b!7082865 m!7814640))

(declare-fun m!7814642 () Bool)

(assert (=> b!7082865 m!7814642))

(declare-fun m!7814644 () Bool)

(assert (=> b!7082865 m!7814644))

(declare-fun m!7814646 () Bool)

(assert (=> b!7082869 m!7814646))

(declare-fun m!7814648 () Bool)

(assert (=> b!7082869 m!7814648))

(declare-fun m!7814650 () Bool)

(assert (=> b!7082869 m!7814650))

(declare-fun m!7814652 () Bool)

(assert (=> b!7082869 m!7814652))

(declare-fun m!7814654 () Bool)

(assert (=> b!7082861 m!7814654))

(declare-fun m!7814656 () Bool)

(assert (=> b!7082861 m!7814656))

(declare-fun m!7814658 () Bool)

(assert (=> b!7082860 m!7814658))

(declare-fun m!7814660 () Bool)

(assert (=> b!7082867 m!7814660))

(declare-fun m!7814662 () Bool)

(assert (=> b!7082867 m!7814662))

(declare-fun m!7814664 () Bool)

(assert (=> b!7082867 m!7814664))

(declare-fun m!7814666 () Bool)

(assert (=> start!689280 m!7814666))

(declare-fun m!7814668 () Bool)

(assert (=> start!689280 m!7814668))

(declare-fun m!7814670 () Bool)

(assert (=> start!689280 m!7814670))

(declare-fun m!7814672 () Bool)

(assert (=> b!7082864 m!7814672))

(declare-fun m!7814674 () Bool)

(assert (=> setNonEmpty!50605 m!7814674))

(check-sat (not b!7082860) (not start!689280) tp_is_empty!44647 (not setNonEmpty!50605) (not b!7082869) (not b!7082862) (not b!7082863) (not b!7082865) (not b!7082866) (not b!7082868) (not b!7082864) (not b!7082867) (not b!7082861))
(check-sat)
