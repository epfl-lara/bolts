; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!725930 () Bool)

(assert start!725930)

(declare-fun b!7502611 () Bool)

(declare-fun e!4473152 () Bool)

(declare-fun tp_is_empty!49675 () Bool)

(declare-fun tp!2177916 () Bool)

(assert (=> b!7502611 (= e!4473152 (and tp_is_empty!49675 tp!2177916))))

(declare-fun b!7502612 () Bool)

(declare-datatypes ((Unit!166240 0))(
  ( (Unit!166241) )
))
(declare-fun e!4473146 () Unit!166240)

(declare-fun Unit!166242 () Unit!166240)

(assert (=> b!7502612 (= e!4473146 Unit!166242)))

(declare-fun b!7502613 () Bool)

(declare-fun e!4473153 () Bool)

(declare-fun e!4473155 () Bool)

(assert (=> b!7502613 (= e!4473153 (not e!4473155))))

(declare-fun res!3009830 () Bool)

(assert (=> b!7502613 (=> res!3009830 e!4473155)))

(declare-datatypes ((C!39660 0))(
  ( (C!39661 (val!30228 Int)) )
))
(declare-datatypes ((List!72427 0))(
  ( (Nil!72303) (Cons!72303 (h!78751 C!39660) (t!386996 List!72427)) )
))
(declare-fun testedP!204 () List!72427)

(declare-fun totalInput!779 () List!72427)

(declare-fun isPrefix!5963 (List!72427 List!72427) Bool)

(assert (=> b!7502613 (= res!3009830 (not (isPrefix!5963 testedP!204 totalInput!779)))))

(declare-fun lt!2632698 () List!72427)

(assert (=> b!7502613 (isPrefix!5963 testedP!204 lt!2632698)))

(declare-fun lt!2632702 () Unit!166240)

(declare-fun testedSuffix!164 () List!72427)

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!3676 (List!72427 List!72427) Unit!166240)

(assert (=> b!7502613 (= lt!2632702 (lemmaConcatTwoListThenFirstIsPrefix!3676 testedP!204 testedSuffix!164))))

(declare-fun setIsEmpty!56870 () Bool)

(declare-fun setRes!56870 () Bool)

(assert (=> setIsEmpty!56870 setRes!56870))

(declare-fun tp!2177913 () Bool)

(declare-fun setNonEmpty!56870 () Bool)

(declare-fun e!4473148 () Bool)

(declare-datatypes ((Regex!19677 0))(
  ( (ElementMatch!19677 (c!1385020 C!39660)) (Concat!28522 (regOne!39866 Regex!19677) (regTwo!39866 Regex!19677)) (EmptyExpr!19677) (Star!19677 (reg!20006 Regex!19677)) (EmptyLang!19677) (Union!19677 (regOne!39867 Regex!19677) (regTwo!39867 Regex!19677)) )
))
(declare-datatypes ((List!72428 0))(
  ( (Nil!72304) (Cons!72304 (h!78752 Regex!19677) (t!386997 List!72428)) )
))
(declare-datatypes ((Context!16858 0))(
  ( (Context!16859 (exprs!8929 List!72428)) )
))
(declare-fun setElem!56870 () Context!16858)

(declare-fun inv!92407 (Context!16858) Bool)

(assert (=> setNonEmpty!56870 (= setRes!56870 (and tp!2177913 (inv!92407 setElem!56870) e!4473148))))

(define-sort InoxSet (T) (Array T Bool))

(declare-fun z!3716 () (InoxSet Context!16858))

(declare-fun setRest!56870 () (InoxSet Context!16858))

(assert (=> setNonEmpty!56870 (= z!3716 ((_ map or) (store ((as const (Array Context!16858 Bool)) false) setElem!56870 true) setRest!56870))))

(declare-fun b!7502614 () Bool)

(declare-fun e!4473154 () Bool)

(assert (=> b!7502614 (= e!4473154 true)))

(declare-fun lt!2632693 () List!72427)

(declare-fun lt!2632703 () C!39660)

(declare-fun ++!17296 (List!72427 List!72427) List!72427)

(declare-fun tail!14969 (List!72427) List!72427)

(assert (=> b!7502614 (= lt!2632693 (++!17296 testedP!204 (Cons!72303 lt!2632703 (tail!14969 testedSuffix!164))))))

(declare-fun lt!2632695 () List!72427)

(declare-fun head!15403 (List!72427) C!39660)

(assert (=> b!7502614 (isPrefix!5963 (++!17296 testedP!204 (Cons!72303 (head!15403 lt!2632695) Nil!72303)) totalInput!779)))

(declare-fun lt!2632706 () Unit!166240)

(declare-fun lemmaAddHeadSuffixToPrefixStillPrefix!1104 (List!72427 List!72427) Unit!166240)

(assert (=> b!7502614 (= lt!2632706 (lemmaAddHeadSuffixToPrefixStillPrefix!1104 testedP!204 totalInput!779))))

(declare-fun lt!2632700 () List!72427)

(assert (=> b!7502614 (= lt!2632700 (++!17296 testedP!204 (Cons!72303 lt!2632703 Nil!72303)))))

(assert (=> b!7502614 (= lt!2632703 (head!15403 testedSuffix!164))))

(declare-fun b!7502615 () Bool)

(declare-fun e!4473149 () Bool)

(declare-fun e!4473147 () Bool)

(assert (=> b!7502615 (= e!4473149 e!4473147)))

(declare-fun res!3009827 () Bool)

(assert (=> b!7502615 (=> (not res!3009827) (not e!4473147))))

(declare-fun testedPSize!164 () Int)

(declare-fun lt!2632701 () Int)

(assert (=> b!7502615 (= res!3009827 (= testedPSize!164 lt!2632701))))

(declare-fun size!42238 (List!72427) Int)

(assert (=> b!7502615 (= lt!2632701 (size!42238 testedP!204))))

(declare-fun b!7502616 () Bool)

(declare-fun tp!2177914 () Bool)

(assert (=> b!7502616 (= e!4473148 tp!2177914)))

(declare-fun b!7502617 () Bool)

(declare-fun e!4473156 () Bool)

(assert (=> b!7502617 (= e!4473156 e!4473154)))

(declare-fun res!3009831 () Bool)

(assert (=> b!7502617 (=> res!3009831 e!4473154)))

(declare-fun lt!2632704 () Int)

(assert (=> b!7502617 (= res!3009831 (>= lt!2632701 lt!2632704))))

(declare-fun lt!2632694 () Unit!166240)

(assert (=> b!7502617 (= lt!2632694 e!4473146)))

(declare-fun c!1385019 () Bool)

(assert (=> b!7502617 (= c!1385019 (= lt!2632701 lt!2632704))))

(assert (=> b!7502617 (<= lt!2632701 lt!2632704)))

(declare-fun lt!2632696 () Unit!166240)

(declare-fun lemmaIsPrefixThenSmallerEqSize!968 (List!72427 List!72427) Unit!166240)

(assert (=> b!7502617 (= lt!2632696 (lemmaIsPrefixThenSmallerEqSize!968 testedP!204 totalInput!779))))

(declare-fun res!3009828 () Bool)

(assert (=> start!725930 (=> (not res!3009828) (not e!4473149))))

(assert (=> start!725930 (= res!3009828 (= lt!2632698 totalInput!779))))

(assert (=> start!725930 (= lt!2632698 (++!17296 testedP!204 testedSuffix!164))))

(assert (=> start!725930 e!4473149))

(declare-fun e!4473150 () Bool)

(assert (=> start!725930 e!4473150))

(assert (=> start!725930 true))

(declare-fun e!4473151 () Bool)

(assert (=> start!725930 e!4473151))

(assert (=> start!725930 e!4473152))

(declare-fun condSetEmpty!56870 () Bool)

(assert (=> start!725930 (= condSetEmpty!56870 (= z!3716 ((as const (Array Context!16858 Bool)) false)))))

(assert (=> start!725930 setRes!56870))

(declare-fun b!7502618 () Bool)

(assert (=> b!7502618 (= e!4473155 e!4473156)))

(declare-fun res!3009826 () Bool)

(assert (=> b!7502618 (=> res!3009826 e!4473156)))

(declare-fun lostCauseZipper!1365 ((InoxSet Context!16858)) Bool)

(assert (=> b!7502618 (= res!3009826 (lostCauseZipper!1365 z!3716))))

(assert (=> b!7502618 (and (= testedSuffix!164 lt!2632695) (= lt!2632695 testedSuffix!164))))

(declare-fun lt!2632697 () Unit!166240)

(declare-fun lemmaSamePrefixThenSameSuffix!2768 (List!72427 List!72427 List!72427 List!72427 List!72427) Unit!166240)

(assert (=> b!7502618 (= lt!2632697 (lemmaSamePrefixThenSameSuffix!2768 testedP!204 testedSuffix!164 testedP!204 lt!2632695 totalInput!779))))

(declare-fun getSuffix!3465 (List!72427 List!72427) List!72427)

(assert (=> b!7502618 (= lt!2632695 (getSuffix!3465 totalInput!779 testedP!204))))

(declare-fun b!7502619 () Bool)

(declare-fun res!3009832 () Bool)

(assert (=> b!7502619 (=> res!3009832 e!4473156)))

(declare-fun totalInputSize!226 () Int)

(assert (=> b!7502619 (= res!3009832 (= testedPSize!164 totalInputSize!226))))

(declare-fun b!7502620 () Bool)

(declare-fun tp!2177915 () Bool)

(assert (=> b!7502620 (= e!4473151 (and tp_is_empty!49675 tp!2177915))))

(declare-fun b!7502621 () Bool)

(declare-fun Unit!166243 () Unit!166240)

(assert (=> b!7502621 (= e!4473146 Unit!166243)))

(declare-fun lt!2632699 () Unit!166240)

(declare-fun lemmaIsPrefixRefl!3812 (List!72427 List!72427) Unit!166240)

(assert (=> b!7502621 (= lt!2632699 (lemmaIsPrefixRefl!3812 totalInput!779 totalInput!779))))

(assert (=> b!7502621 (isPrefix!5963 totalInput!779 totalInput!779)))

(declare-fun lt!2632705 () Unit!166240)

(declare-fun lemmaIsPrefixSameLengthThenSameList!1466 (List!72427 List!72427 List!72427) Unit!166240)

(assert (=> b!7502621 (= lt!2632705 (lemmaIsPrefixSameLengthThenSameList!1466 totalInput!779 testedP!204 totalInput!779))))

(assert (=> b!7502621 false))

(declare-fun b!7502622 () Bool)

(declare-fun tp!2177917 () Bool)

(assert (=> b!7502622 (= e!4473150 (and tp_is_empty!49675 tp!2177917))))

(declare-fun b!7502623 () Bool)

(assert (=> b!7502623 (= e!4473147 e!4473153)))

(declare-fun res!3009829 () Bool)

(assert (=> b!7502623 (=> (not res!3009829) (not e!4473153))))

(assert (=> b!7502623 (= res!3009829 (= totalInputSize!226 lt!2632704))))

(assert (=> b!7502623 (= lt!2632704 (size!42238 totalInput!779))))

(assert (= (and start!725930 res!3009828) b!7502615))

(assert (= (and b!7502615 res!3009827) b!7502623))

(assert (= (and b!7502623 res!3009829) b!7502613))

(assert (= (and b!7502613 (not res!3009830)) b!7502618))

(assert (= (and b!7502618 (not res!3009826)) b!7502619))

(assert (= (and b!7502619 (not res!3009832)) b!7502617))

(assert (= (and b!7502617 c!1385019) b!7502621))

(assert (= (and b!7502617 (not c!1385019)) b!7502612))

(assert (= (and b!7502617 (not res!3009831)) b!7502614))

(get-info :version)

(assert (= (and start!725930 ((_ is Cons!72303) testedSuffix!164)) b!7502622))

(assert (= (and start!725930 ((_ is Cons!72303) totalInput!779)) b!7502620))

(assert (= (and start!725930 ((_ is Cons!72303) testedP!204)) b!7502611))

(assert (= (and start!725930 condSetEmpty!56870) setIsEmpty!56870))

(assert (= (and start!725930 (not condSetEmpty!56870)) setNonEmpty!56870))

(assert (= setNonEmpty!56870 b!7502616))

(declare-fun m!8084190 () Bool)

(assert (=> b!7502618 m!8084190))

(declare-fun m!8084192 () Bool)

(assert (=> b!7502618 m!8084192))

(declare-fun m!8084194 () Bool)

(assert (=> b!7502618 m!8084194))

(declare-fun m!8084196 () Bool)

(assert (=> b!7502613 m!8084196))

(declare-fun m!8084198 () Bool)

(assert (=> b!7502613 m!8084198))

(declare-fun m!8084200 () Bool)

(assert (=> b!7502613 m!8084200))

(declare-fun m!8084202 () Bool)

(assert (=> setNonEmpty!56870 m!8084202))

(declare-fun m!8084204 () Bool)

(assert (=> b!7502621 m!8084204))

(declare-fun m!8084206 () Bool)

(assert (=> b!7502621 m!8084206))

(declare-fun m!8084208 () Bool)

(assert (=> b!7502621 m!8084208))

(declare-fun m!8084210 () Bool)

(assert (=> b!7502615 m!8084210))

(declare-fun m!8084212 () Bool)

(assert (=> b!7502617 m!8084212))

(declare-fun m!8084214 () Bool)

(assert (=> start!725930 m!8084214))

(declare-fun m!8084216 () Bool)

(assert (=> b!7502623 m!8084216))

(declare-fun m!8084218 () Bool)

(assert (=> b!7502614 m!8084218))

(declare-fun m!8084220 () Bool)

(assert (=> b!7502614 m!8084220))

(assert (=> b!7502614 m!8084218))

(declare-fun m!8084222 () Bool)

(assert (=> b!7502614 m!8084222))

(declare-fun m!8084224 () Bool)

(assert (=> b!7502614 m!8084224))

(declare-fun m!8084226 () Bool)

(assert (=> b!7502614 m!8084226))

(declare-fun m!8084228 () Bool)

(assert (=> b!7502614 m!8084228))

(declare-fun m!8084230 () Bool)

(assert (=> b!7502614 m!8084230))

(declare-fun m!8084232 () Bool)

(assert (=> b!7502614 m!8084232))

(check-sat (not start!725930) tp_is_empty!49675 (not b!7502616) (not b!7502618) (not b!7502617) (not b!7502620) (not setNonEmpty!56870) (not b!7502614) (not b!7502615) (not b!7502611) (not b!7502622) (not b!7502621) (not b!7502613) (not b!7502623))
(check-sat)
