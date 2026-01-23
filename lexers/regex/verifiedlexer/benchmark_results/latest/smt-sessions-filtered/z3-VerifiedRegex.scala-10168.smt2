; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!531106 () Bool)

(assert start!531106)

(declare-datatypes ((C!28072 0))(
  ( (C!28073 (val!23412 Int)) )
))
(declare-datatypes ((Regex!13911 0))(
  ( (ElementMatch!13911 (c!859153 C!28072)) (Concat!22704 (regOne!28334 Regex!13911) (regTwo!28334 Regex!13911)) (EmptyExpr!13911) (Star!13911 (reg!14240 Regex!13911)) (EmptyLang!13911) (Union!13911 (regOne!28335 Regex!13911) (regTwo!28335 Regex!13911)) )
))
(declare-datatypes ((List!58270 0))(
  ( (Nil!58146) (Cons!58146 (h!64594 Regex!13911) (t!370662 List!58270)) )
))
(declare-datatypes ((Context!6672 0))(
  ( (Context!6673 (exprs!3836 List!58270)) )
))
(declare-fun setElem!28862 () Context!6672)

(declare-fun tp!1408586 () Bool)

(declare-fun setNonEmpty!28862 () Bool)

(declare-fun setRes!28862 () Bool)

(declare-fun e!3138909 () Bool)

(declare-fun inv!76653 (Context!6672) Bool)

(assert (=> setNonEmpty!28862 (= setRes!28862 (and tp!1408586 (inv!76653 setElem!28862) e!3138909))))

(define-sort InoxSet (T) (Array T Bool))

(declare-fun z!4747 () (InoxSet Context!6672))

(declare-fun setRest!28862 () (InoxSet Context!6672))

(assert (=> setNonEmpty!28862 (= z!4747 ((_ map or) (store ((as const (Array Context!6672 Bool)) false) setElem!28862 true) setRest!28862))))

(declare-datatypes ((List!58271 0))(
  ( (Nil!58147) (Cons!58147 (h!64595 C!28072) (t!370663 List!58271)) )
))
(declare-datatypes ((IArray!30921 0))(
  ( (IArray!30922 (innerList!15518 List!58271)) )
))
(declare-datatypes ((Conc!15430 0))(
  ( (Node!15430 (left!42524 Conc!15430) (right!42854 Conc!15430) (csize!31090 Int) (cheight!15641 Int)) (Leaf!25599 (xs!18756 IArray!30921) (csize!31091 Int)) (Empty!15430) )
))
(declare-datatypes ((BalanceConc!30290 0))(
  ( (BalanceConc!30291 (c!859154 Conc!15430)) )
))
(declare-fun totalInput!1141 () BalanceConc!30290)

(declare-fun e!3138907 () Bool)

(declare-fun b!5024616 () Bool)

(declare-fun lt!2079717 () (InoxSet Context!6672))

(declare-fun lt!2079716 () Int)

(declare-fun from!1228 () Int)

(declare-fun matchZipper!665 ((InoxSet Context!6672) List!58271) Bool)

(declare-fun take!762 (List!58271 Int) List!58271)

(declare-fun drop!2562 (List!58271 Int) List!58271)

(declare-fun list!18766 (BalanceConc!30290) List!58271)

(assert (=> b!5024616 (= e!3138907 (matchZipper!665 lt!2079717 (take!762 (drop!2562 (list!18766 totalInput!1141) (+ 1 from!1228)) lt!2079716)))))

(declare-fun b!5024617 () Bool)

(declare-fun e!3138911 () Bool)

(declare-fun tp!1408587 () Bool)

(declare-fun inv!76654 (Conc!15430) Bool)

(assert (=> b!5024617 (= e!3138911 (and (inv!76654 (c!859154 totalInput!1141)) tp!1408587))))

(declare-fun b!5024618 () Bool)

(declare-fun e!3138910 () Bool)

(declare-fun e!3138912 () Bool)

(assert (=> b!5024618 (= e!3138910 e!3138912)))

(declare-fun res!2142362 () Bool)

(assert (=> b!5024618 (=> res!2142362 e!3138912)))

(declare-fun lt!2079714 () C!28072)

(declare-fun lt!2079719 () List!58271)

(declare-fun lt!2079715 () List!58271)

(assert (=> b!5024618 (= res!2142362 (not (= lt!2079719 (Cons!58147 lt!2079714 lt!2079715))))))

(declare-fun lt!2079720 () List!58271)

(declare-fun apply!14140 (List!58271 Int) C!28072)

(assert (=> b!5024618 (= (Cons!58147 (apply!14140 lt!2079720 from!1228) lt!2079715) lt!2079719)))

(declare-datatypes ((Unit!149331 0))(
  ( (Unit!149332) )
))
(declare-fun lt!2079718 () Unit!149331)

(declare-fun lemmaDropTakeAddOneLeft!90 (List!58271 Int Int) Unit!149331)

(assert (=> b!5024618 (= lt!2079718 (lemmaDropTakeAddOneLeft!90 lt!2079720 from!1228 lt!2079716))))

(assert (=> b!5024618 (= lt!2079719 (take!762 (drop!2562 lt!2079720 from!1228) (+ 1 lt!2079716)))))

(declare-fun res!2142361 () Bool)

(declare-fun e!3138913 () Bool)

(assert (=> start!531106 (=> (not res!2142361) (not e!3138913))))

(assert (=> start!531106 (= res!2142361 (>= from!1228 0))))

(assert (=> start!531106 e!3138913))

(assert (=> start!531106 true))

(declare-fun inv!76655 (BalanceConc!30290) Bool)

(assert (=> start!531106 (and (inv!76655 totalInput!1141) e!3138911)))

(declare-fun condSetEmpty!28862 () Bool)

(assert (=> start!531106 (= condSetEmpty!28862 (= z!4747 ((as const (Array Context!6672 Bool)) false)))))

(assert (=> start!531106 setRes!28862))

(declare-fun b!5024619 () Bool)

(declare-fun res!2142366 () Bool)

(declare-fun e!3138908 () Bool)

(assert (=> b!5024619 (=> (not res!2142366) (not e!3138908))))

(declare-fun lt!2079722 () Int)

(assert (=> b!5024619 (= res!2142366 (not (= from!1228 lt!2079722)))))

(declare-fun setIsEmpty!28862 () Bool)

(assert (=> setIsEmpty!28862 setRes!28862))

(declare-fun b!5024620 () Bool)

(assert (=> b!5024620 (= e!3138913 e!3138908)))

(declare-fun res!2142365 () Bool)

(assert (=> b!5024620 (=> (not res!2142365) (not e!3138908))))

(assert (=> b!5024620 (= res!2142365 (<= from!1228 lt!2079722))))

(declare-fun size!38690 (BalanceConc!30290) Int)

(assert (=> b!5024620 (= lt!2079722 (size!38690 totalInput!1141))))

(declare-fun b!5024621 () Bool)

(assert (=> b!5024621 (= e!3138908 (not e!3138910))))

(declare-fun res!2142363 () Bool)

(assert (=> b!5024621 (=> res!2142363 e!3138910)))

(assert (=> b!5024621 (= res!2142363 (<= lt!2079716 0))))

(assert (=> b!5024621 (= lt!2079715 (take!762 (drop!2562 lt!2079720 (+ 1 from!1228)) lt!2079716))))

(assert (=> b!5024621 (= lt!2079720 (list!18766 totalInput!1141))))

(assert (=> b!5024621 e!3138907))

(declare-fun res!2142367 () Bool)

(assert (=> b!5024621 (=> res!2142367 e!3138907)))

(assert (=> b!5024621 (= res!2142367 (= lt!2079716 0))))

(declare-fun lt!2079721 () Unit!149331)

(declare-fun longestMatchIsAcceptedByMatchOrIsEmptyRecV2!108 ((InoxSet Context!6672) Int BalanceConc!30290) Unit!149331)

(assert (=> b!5024621 (= lt!2079721 (longestMatchIsAcceptedByMatchOrIsEmptyRecV2!108 lt!2079717 (+ 1 from!1228) totalInput!1141))))

(declare-fun findLongestMatchInnerZipperFastV2!225 ((InoxSet Context!6672) Int BalanceConc!30290 Int) Int)

(assert (=> b!5024621 (= lt!2079716 (findLongestMatchInnerZipperFastV2!225 lt!2079717 (+ 1 from!1228) totalInput!1141 lt!2079722))))

(declare-fun derivationStepZipper!707 ((InoxSet Context!6672) C!28072) (InoxSet Context!6672))

(assert (=> b!5024621 (= lt!2079717 (derivationStepZipper!707 z!4747 lt!2079714))))

(declare-fun apply!14141 (BalanceConc!30290 Int) C!28072)

(assert (=> b!5024621 (= lt!2079714 (apply!14141 totalInput!1141 from!1228))))

(declare-fun b!5024622 () Bool)

(assert (=> b!5024622 (= e!3138912 (matchZipper!665 lt!2079717 lt!2079715))))

(declare-fun b!5024623 () Bool)

(declare-fun res!2142364 () Bool)

(assert (=> b!5024623 (=> (not res!2142364) (not e!3138908))))

(declare-fun lostCauseZipper!925 ((InoxSet Context!6672)) Bool)

(assert (=> b!5024623 (= res!2142364 (not (lostCauseZipper!925 z!4747)))))

(declare-fun b!5024624 () Bool)

(declare-fun tp!1408588 () Bool)

(assert (=> b!5024624 (= e!3138909 tp!1408588)))

(assert (= (and start!531106 res!2142361) b!5024620))

(assert (= (and b!5024620 res!2142365) b!5024623))

(assert (= (and b!5024623 res!2142364) b!5024619))

(assert (= (and b!5024619 res!2142366) b!5024621))

(assert (= (and b!5024621 (not res!2142367)) b!5024616))

(assert (= (and b!5024621 (not res!2142363)) b!5024618))

(assert (= (and b!5024618 (not res!2142362)) b!5024622))

(assert (= start!531106 b!5024617))

(assert (= (and start!531106 condSetEmpty!28862) setIsEmpty!28862))

(assert (= (and start!531106 (not condSetEmpty!28862)) setNonEmpty!28862))

(assert (= setNonEmpty!28862 b!5024624))

(declare-fun m!6059886 () Bool)

(assert (=> b!5024623 m!6059886))

(declare-fun m!6059888 () Bool)

(assert (=> b!5024617 m!6059888))

(declare-fun m!6059890 () Bool)

(assert (=> b!5024621 m!6059890))

(declare-fun m!6059892 () Bool)

(assert (=> b!5024621 m!6059892))

(declare-fun m!6059894 () Bool)

(assert (=> b!5024621 m!6059894))

(declare-fun m!6059896 () Bool)

(assert (=> b!5024621 m!6059896))

(declare-fun m!6059898 () Bool)

(assert (=> b!5024621 m!6059898))

(assert (=> b!5024621 m!6059896))

(declare-fun m!6059900 () Bool)

(assert (=> b!5024621 m!6059900))

(declare-fun m!6059902 () Bool)

(assert (=> b!5024621 m!6059902))

(declare-fun m!6059904 () Bool)

(assert (=> b!5024618 m!6059904))

(declare-fun m!6059906 () Bool)

(assert (=> b!5024618 m!6059906))

(declare-fun m!6059908 () Bool)

(assert (=> b!5024618 m!6059908))

(assert (=> b!5024618 m!6059908))

(declare-fun m!6059910 () Bool)

(assert (=> b!5024618 m!6059910))

(declare-fun m!6059912 () Bool)

(assert (=> b!5024620 m!6059912))

(assert (=> b!5024616 m!6059902))

(assert (=> b!5024616 m!6059902))

(declare-fun m!6059914 () Bool)

(assert (=> b!5024616 m!6059914))

(assert (=> b!5024616 m!6059914))

(declare-fun m!6059916 () Bool)

(assert (=> b!5024616 m!6059916))

(assert (=> b!5024616 m!6059916))

(declare-fun m!6059918 () Bool)

(assert (=> b!5024616 m!6059918))

(declare-fun m!6059920 () Bool)

(assert (=> b!5024622 m!6059920))

(declare-fun m!6059922 () Bool)

(assert (=> setNonEmpty!28862 m!6059922))

(declare-fun m!6059924 () Bool)

(assert (=> start!531106 m!6059924))

(check-sat (not b!5024620) (not b!5024616) (not b!5024617) (not b!5024618) (not b!5024624) (not start!531106) (not b!5024621) (not b!5024623) (not setNonEmpty!28862) (not b!5024622))
(check-sat)
