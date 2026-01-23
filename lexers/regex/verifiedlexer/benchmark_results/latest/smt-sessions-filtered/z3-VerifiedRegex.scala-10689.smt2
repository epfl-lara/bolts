; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!547428 () Bool)

(assert start!547428)

(declare-fun b!5171626 () Bool)

(declare-fun e!3222441 () Bool)

(declare-fun tp_is_empty!38503 () Bool)

(declare-fun tp!1450840 () Bool)

(assert (=> b!5171626 (= e!3222441 (and tp_is_empty!38503 tp!1450840))))

(declare-fun b!5171627 () Bool)

(declare-fun e!3222438 () Bool)

(declare-fun e!3222439 () Bool)

(assert (=> b!5171627 (= e!3222438 e!3222439)))

(declare-fun res!2198109 () Bool)

(assert (=> b!5171627 (=> (not res!2198109) (not e!3222439))))

(declare-datatypes ((C!29520 0))(
  ( (C!29521 (val!24462 Int)) )
))
(declare-datatypes ((List!60215 0))(
  ( (Nil!60091) (Cons!60091 (h!66539 C!29520) (t!373368 List!60215)) )
))
(declare-fun input!5817 () List!60215)

(declare-fun lt!2129211 () List!60215)

(declare-fun testedP!294 () List!60215)

(define-sort InoxSet (T) (Array T Bool))

(declare-datatypes ((Regex!14625 0))(
  ( (ElementMatch!14625 (c!890238 C!29520)) (Concat!23470 (regOne!29762 Regex!14625) (regTwo!29762 Regex!14625)) (EmptyExpr!14625) (Star!14625 (reg!14954 Regex!14625)) (EmptyLang!14625) (Union!14625 (regOne!29763 Regex!14625) (regTwo!29763 Regex!14625)) )
))
(declare-datatypes ((List!60216 0))(
  ( (Nil!60092) (Cons!60092 (h!66540 Regex!14625) (t!373369 List!60216)) )
))
(declare-datatypes ((Context!8018 0))(
  ( (Context!8019 (exprs!4509 List!60216)) )
))
(declare-fun z!4581 () (InoxSet Context!8018))

(declare-fun lt!2129205 () Int)

(declare-fun lt!2129206 () Int)

(declare-fun isEmpty!32173 (List!60215) Bool)

(declare-datatypes ((tuple2!63804 0))(
  ( (tuple2!63805 (_1!35205 List!60215) (_2!35205 List!60215)) )
))
(declare-fun findLongestMatchInnerZipper!283 ((InoxSet Context!8018) List!60215 Int List!60215 List!60215 Int) tuple2!63804)

(assert (=> b!5171627 (= res!2198109 (not (isEmpty!32173 (_1!35205 (findLongestMatchInnerZipper!283 z!4581 testedP!294 lt!2129205 lt!2129211 input!5817 lt!2129206)))))))

(declare-fun size!39661 (List!60215) Int)

(assert (=> b!5171627 (= lt!2129206 (size!39661 input!5817))))

(declare-fun getSuffix!3408 (List!60215 List!60215) List!60215)

(assert (=> b!5171627 (= lt!2129211 (getSuffix!3408 input!5817 testedP!294))))

(assert (=> b!5171627 (= lt!2129205 (size!39661 testedP!294))))

(declare-fun b!5171628 () Bool)

(declare-fun e!3222436 () Bool)

(assert (=> b!5171628 (= e!3222439 (not e!3222436))))

(declare-fun res!2198105 () Bool)

(assert (=> b!5171628 (=> res!2198105 e!3222436)))

(assert (=> b!5171628 (= res!2198105 (>= lt!2129205 lt!2129206))))

(declare-datatypes ((Unit!151764 0))(
  ( (Unit!151765) )
))
(declare-fun lt!2129204 () Unit!151764)

(declare-fun e!3222442 () Unit!151764)

(assert (=> b!5171628 (= lt!2129204 e!3222442)))

(declare-fun c!890237 () Bool)

(assert (=> b!5171628 (= c!890237 (= lt!2129205 lt!2129206))))

(assert (=> b!5171628 (<= lt!2129205 lt!2129206)))

(declare-fun lt!2129208 () Unit!151764)

(declare-fun lemmaIsPrefixThenSmallerEqSize!921 (List!60215 List!60215) Unit!151764)

(assert (=> b!5171628 (= lt!2129208 (lemmaIsPrefixThenSmallerEqSize!921 testedP!294 input!5817))))

(declare-fun b!5171629 () Bool)

(declare-fun e!3222444 () Bool)

(declare-fun tp!1450842 () Bool)

(assert (=> b!5171629 (= e!3222444 (and tp_is_empty!38503 tp!1450842))))

(declare-fun b!5171630 () Bool)

(declare-fun Unit!151766 () Unit!151764)

(assert (=> b!5171630 (= e!3222442 Unit!151766)))

(declare-fun tp!1450843 () Bool)

(declare-fun setNonEmpty!32051 () Bool)

(declare-fun setRes!32052 () Bool)

(declare-fun e!3222443 () Bool)

(declare-fun setElem!32052 () Context!8018)

(declare-fun inv!79809 (Context!8018) Bool)

(assert (=> setNonEmpty!32051 (= setRes!32052 (and tp!1450843 (inv!79809 setElem!32052) e!3222443))))

(declare-fun setRest!32052 () (InoxSet Context!8018))

(assert (=> setNonEmpty!32051 (= z!4581 ((_ map or) (store ((as const (Array Context!8018 Bool)) false) setElem!32052 true) setRest!32052))))

(declare-fun res!2198106 () Bool)

(assert (=> start!547428 (=> (not res!2198106) (not e!3222438))))

(declare-fun isPrefix!5758 (List!60215 List!60215) Bool)

(assert (=> start!547428 (= res!2198106 (isPrefix!5758 testedP!294 input!5817))))

(assert (=> start!547428 e!3222438))

(assert (=> start!547428 e!3222441))

(assert (=> start!547428 e!3222444))

(declare-fun condSetEmpty!32052 () Bool)

(declare-fun baseZ!62 () (InoxSet Context!8018))

(assert (=> start!547428 (= condSetEmpty!32052 (= baseZ!62 ((as const (Array Context!8018 Bool)) false)))))

(declare-fun setRes!32051 () Bool)

(assert (=> start!547428 setRes!32051))

(declare-fun condSetEmpty!32051 () Bool)

(assert (=> start!547428 (= condSetEmpty!32051 (= z!4581 ((as const (Array Context!8018 Bool)) false)))))

(assert (=> start!547428 setRes!32052))

(declare-fun b!5171631 () Bool)

(declare-fun res!2198108 () Bool)

(assert (=> b!5171631 (=> (not res!2198108) (not e!3222438))))

(declare-fun derivationZipper!248 ((InoxSet Context!8018) List!60215) (InoxSet Context!8018))

(assert (=> b!5171631 (= res!2198108 (= (derivationZipper!248 baseZ!62 testedP!294) z!4581))))

(declare-fun b!5171632 () Bool)

(declare-fun e!3222437 () Bool)

(assert (=> b!5171632 (= e!3222437 (not (= lt!2129211 Nil!60091)))))

(declare-fun b!5171633 () Bool)

(declare-fun Unit!151767 () Unit!151764)

(assert (=> b!5171633 (= e!3222442 Unit!151767)))

(declare-fun lt!2129210 () Unit!151764)

(declare-fun lemmaIsPrefixRefl!3765 (List!60215 List!60215) Unit!151764)

(assert (=> b!5171633 (= lt!2129210 (lemmaIsPrefixRefl!3765 input!5817 input!5817))))

(assert (=> b!5171633 (isPrefix!5758 input!5817 input!5817)))

(declare-fun lt!2129209 () Unit!151764)

(declare-fun lemmaIsPrefixSameLengthThenSameList!1407 (List!60215 List!60215 List!60215) Unit!151764)

(assert (=> b!5171633 (= lt!2129209 (lemmaIsPrefixSameLengthThenSameList!1407 input!5817 testedP!294 input!5817))))

(assert (=> b!5171633 false))

(declare-fun setIsEmpty!32051 () Bool)

(assert (=> setIsEmpty!32051 setRes!32052))

(declare-fun b!5171634 () Bool)

(declare-fun tp!1450838 () Bool)

(assert (=> b!5171634 (= e!3222443 tp!1450838)))

(declare-fun tp!1450839 () Bool)

(declare-fun e!3222440 () Bool)

(declare-fun setNonEmpty!32052 () Bool)

(declare-fun setElem!32051 () Context!8018)

(assert (=> setNonEmpty!32052 (= setRes!32051 (and tp!1450839 (inv!79809 setElem!32051) e!3222440))))

(declare-fun setRest!32051 () (InoxSet Context!8018))

(assert (=> setNonEmpty!32052 (= baseZ!62 ((_ map or) (store ((as const (Array Context!8018 Bool)) false) setElem!32051 true) setRest!32051))))

(declare-fun b!5171635 () Bool)

(assert (=> b!5171635 (= e!3222436 e!3222437)))

(declare-fun res!2198107 () Bool)

(assert (=> b!5171635 (=> res!2198107 e!3222437)))

(declare-fun nullableZipper!1171 ((InoxSet Context!8018)) Bool)

(assert (=> b!5171635 (= res!2198107 (nullableZipper!1171 z!4581))))

(declare-fun lt!2129212 () List!60215)

(assert (=> b!5171635 (isPrefix!5758 lt!2129212 input!5817)))

(declare-fun lt!2129207 () Unit!151764)

(declare-fun lemmaAddHeadSuffixToPrefixStillPrefix!1071 (List!60215 List!60215) Unit!151764)

(assert (=> b!5171635 (= lt!2129207 (lemmaAddHeadSuffixToPrefixStillPrefix!1071 testedP!294 input!5817))))

(declare-fun ++!13149 (List!60215 List!60215) List!60215)

(declare-fun head!11049 (List!60215) C!29520)

(assert (=> b!5171635 (= lt!2129212 (++!13149 testedP!294 (Cons!60091 (head!11049 lt!2129211) Nil!60091)))))

(declare-fun b!5171636 () Bool)

(declare-fun tp!1450841 () Bool)

(assert (=> b!5171636 (= e!3222440 tp!1450841)))

(declare-fun b!5171637 () Bool)

(declare-fun res!2198110 () Bool)

(assert (=> b!5171637 (=> (not res!2198110) (not e!3222439))))

(assert (=> b!5171637 (= res!2198110 (not (= testedP!294 input!5817)))))

(declare-fun setIsEmpty!32052 () Bool)

(assert (=> setIsEmpty!32052 setRes!32051))

(assert (= (and start!547428 res!2198106) b!5171631))

(assert (= (and b!5171631 res!2198108) b!5171627))

(assert (= (and b!5171627 res!2198109) b!5171637))

(assert (= (and b!5171637 res!2198110) b!5171628))

(assert (= (and b!5171628 c!890237) b!5171633))

(assert (= (and b!5171628 (not c!890237)) b!5171630))

(assert (= (and b!5171628 (not res!2198105)) b!5171635))

(assert (= (and b!5171635 (not res!2198107)) b!5171632))

(get-info :version)

(assert (= (and start!547428 ((_ is Cons!60091) testedP!294)) b!5171626))

(assert (= (and start!547428 ((_ is Cons!60091) input!5817)) b!5171629))

(assert (= (and start!547428 condSetEmpty!32052) setIsEmpty!32052))

(assert (= (and start!547428 (not condSetEmpty!32052)) setNonEmpty!32052))

(assert (= setNonEmpty!32052 b!5171636))

(assert (= (and start!547428 condSetEmpty!32051) setIsEmpty!32051))

(assert (= (and start!547428 (not condSetEmpty!32051)) setNonEmpty!32051))

(assert (= setNonEmpty!32051 b!5171634))

(declare-fun m!6224616 () Bool)

(assert (=> setNonEmpty!32051 m!6224616))

(declare-fun m!6224618 () Bool)

(assert (=> b!5171628 m!6224618))

(declare-fun m!6224620 () Bool)

(assert (=> b!5171631 m!6224620))

(declare-fun m!6224622 () Bool)

(assert (=> setNonEmpty!32052 m!6224622))

(declare-fun m!6224624 () Bool)

(assert (=> b!5171635 m!6224624))

(declare-fun m!6224626 () Bool)

(assert (=> b!5171635 m!6224626))

(declare-fun m!6224628 () Bool)

(assert (=> b!5171635 m!6224628))

(declare-fun m!6224630 () Bool)

(assert (=> b!5171635 m!6224630))

(declare-fun m!6224632 () Bool)

(assert (=> b!5171635 m!6224632))

(declare-fun m!6224634 () Bool)

(assert (=> b!5171627 m!6224634))

(declare-fun m!6224636 () Bool)

(assert (=> b!5171627 m!6224636))

(declare-fun m!6224638 () Bool)

(assert (=> b!5171627 m!6224638))

(declare-fun m!6224640 () Bool)

(assert (=> b!5171627 m!6224640))

(declare-fun m!6224642 () Bool)

(assert (=> b!5171627 m!6224642))

(declare-fun m!6224644 () Bool)

(assert (=> start!547428 m!6224644))

(declare-fun m!6224646 () Bool)

(assert (=> b!5171633 m!6224646))

(declare-fun m!6224648 () Bool)

(assert (=> b!5171633 m!6224648))

(declare-fun m!6224650 () Bool)

(assert (=> b!5171633 m!6224650))

(check-sat (not start!547428) (not b!5171628) tp_is_empty!38503 (not b!5171627) (not b!5171626) (not setNonEmpty!32052) (not b!5171631) (not b!5171629) (not b!5171635) (not b!5171633) (not b!5171636) (not setNonEmpty!32051) (not b!5171634))
(check-sat)
(get-model)

(declare-fun b!5171661 () Bool)

(declare-fun e!3222460 () Bool)

(assert (=> b!5171661 (= e!3222460 (>= (size!39661 input!5817) (size!39661 testedP!294)))))

(declare-fun b!5171660 () Bool)

(declare-fun e!3222462 () Bool)

(declare-fun tail!10158 (List!60215) List!60215)

(assert (=> b!5171660 (= e!3222462 (isPrefix!5758 (tail!10158 testedP!294) (tail!10158 input!5817)))))

(declare-fun b!5171658 () Bool)

(declare-fun e!3222461 () Bool)

(assert (=> b!5171658 (= e!3222461 e!3222462)))

(declare-fun res!2198132 () Bool)

(assert (=> b!5171658 (=> (not res!2198132) (not e!3222462))))

(assert (=> b!5171658 (= res!2198132 (not ((_ is Nil!60091) input!5817)))))

(declare-fun d!1668992 () Bool)

(assert (=> d!1668992 e!3222460))

(declare-fun res!2198131 () Bool)

(assert (=> d!1668992 (=> res!2198131 e!3222460)))

(declare-fun lt!2129223 () Bool)

(assert (=> d!1668992 (= res!2198131 (not lt!2129223))))

(assert (=> d!1668992 (= lt!2129223 e!3222461)))

(declare-fun res!2198133 () Bool)

(assert (=> d!1668992 (=> res!2198133 e!3222461)))

(assert (=> d!1668992 (= res!2198133 ((_ is Nil!60091) testedP!294))))

(assert (=> d!1668992 (= (isPrefix!5758 testedP!294 input!5817) lt!2129223)))

(declare-fun b!5171659 () Bool)

(declare-fun res!2198134 () Bool)

(assert (=> b!5171659 (=> (not res!2198134) (not e!3222462))))

(assert (=> b!5171659 (= res!2198134 (= (head!11049 testedP!294) (head!11049 input!5817)))))

(assert (= (and d!1668992 (not res!2198133)) b!5171658))

(assert (= (and b!5171658 res!2198132) b!5171659))

(assert (= (and b!5171659 res!2198134) b!5171660))

(assert (= (and d!1668992 (not res!2198131)) b!5171661))

(assert (=> b!5171661 m!6224640))

(assert (=> b!5171661 m!6224634))

(declare-fun m!6224666 () Bool)

(assert (=> b!5171660 m!6224666))

(declare-fun m!6224668 () Bool)

(assert (=> b!5171660 m!6224668))

(assert (=> b!5171660 m!6224666))

(assert (=> b!5171660 m!6224668))

(declare-fun m!6224670 () Bool)

(assert (=> b!5171660 m!6224670))

(declare-fun m!6224672 () Bool)

(assert (=> b!5171659 m!6224672))

(declare-fun m!6224674 () Bool)

(assert (=> b!5171659 m!6224674))

(assert (=> start!547428 d!1668992))

(declare-fun d!1668998 () Bool)

(assert (=> d!1668998 (isPrefix!5758 input!5817 input!5817)))

(declare-fun lt!2129230 () Unit!151764)

(declare-fun choose!38330 (List!60215 List!60215) Unit!151764)

(assert (=> d!1668998 (= lt!2129230 (choose!38330 input!5817 input!5817))))

(assert (=> d!1668998 (= (lemmaIsPrefixRefl!3765 input!5817 input!5817) lt!2129230)))

(declare-fun bs!1203620 () Bool)

(assert (= bs!1203620 d!1668998))

(assert (=> bs!1203620 m!6224648))

(declare-fun m!6224678 () Bool)

(assert (=> bs!1203620 m!6224678))

(assert (=> b!5171633 d!1668998))

(declare-fun b!5171669 () Bool)

(declare-fun e!3222466 () Bool)

(assert (=> b!5171669 (= e!3222466 (>= (size!39661 input!5817) (size!39661 input!5817)))))

(declare-fun b!5171668 () Bool)

(declare-fun e!3222468 () Bool)

(assert (=> b!5171668 (= e!3222468 (isPrefix!5758 (tail!10158 input!5817) (tail!10158 input!5817)))))

(declare-fun b!5171666 () Bool)

(declare-fun e!3222467 () Bool)

(assert (=> b!5171666 (= e!3222467 e!3222468)))

(declare-fun res!2198140 () Bool)

(assert (=> b!5171666 (=> (not res!2198140) (not e!3222468))))

(assert (=> b!5171666 (= res!2198140 (not ((_ is Nil!60091) input!5817)))))

(declare-fun d!1669002 () Bool)

(assert (=> d!1669002 e!3222466))

(declare-fun res!2198139 () Bool)

(assert (=> d!1669002 (=> res!2198139 e!3222466)))

(declare-fun lt!2129232 () Bool)

(assert (=> d!1669002 (= res!2198139 (not lt!2129232))))

(assert (=> d!1669002 (= lt!2129232 e!3222467)))

(declare-fun res!2198141 () Bool)

(assert (=> d!1669002 (=> res!2198141 e!3222467)))

(assert (=> d!1669002 (= res!2198141 ((_ is Nil!60091) input!5817))))

(assert (=> d!1669002 (= (isPrefix!5758 input!5817 input!5817) lt!2129232)))

(declare-fun b!5171667 () Bool)

(declare-fun res!2198142 () Bool)

(assert (=> b!5171667 (=> (not res!2198142) (not e!3222468))))

(assert (=> b!5171667 (= res!2198142 (= (head!11049 input!5817) (head!11049 input!5817)))))

(assert (= (and d!1669002 (not res!2198141)) b!5171666))

(assert (= (and b!5171666 res!2198140) b!5171667))

(assert (= (and b!5171667 res!2198142) b!5171668))

(assert (= (and d!1669002 (not res!2198139)) b!5171669))

(assert (=> b!5171669 m!6224640))

(assert (=> b!5171669 m!6224640))

(assert (=> b!5171668 m!6224668))

(assert (=> b!5171668 m!6224668))

(assert (=> b!5171668 m!6224668))

(assert (=> b!5171668 m!6224668))

(declare-fun m!6224682 () Bool)

(assert (=> b!5171668 m!6224682))

(assert (=> b!5171667 m!6224674))

(assert (=> b!5171667 m!6224674))

(assert (=> b!5171633 d!1669002))

(declare-fun d!1669006 () Bool)

(assert (=> d!1669006 (= input!5817 testedP!294)))

(declare-fun lt!2129238 () Unit!151764)

(declare-fun choose!38332 (List!60215 List!60215 List!60215) Unit!151764)

(assert (=> d!1669006 (= lt!2129238 (choose!38332 input!5817 testedP!294 input!5817))))

(assert (=> d!1669006 (isPrefix!5758 input!5817 input!5817)))

(assert (=> d!1669006 (= (lemmaIsPrefixSameLengthThenSameList!1407 input!5817 testedP!294 input!5817) lt!2129238)))

(declare-fun bs!1203622 () Bool)

(assert (= bs!1203622 d!1669006))

(declare-fun m!6224686 () Bool)

(assert (=> bs!1203622 m!6224686))

(assert (=> bs!1203622 m!6224648))

(assert (=> b!5171633 d!1669006))

(declare-fun d!1669010 () Bool)

(declare-fun lambda!258196 () Int)

(declare-fun forall!14135 (List!60216 Int) Bool)

(assert (=> d!1669010 (= (inv!79809 setElem!32051) (forall!14135 (exprs!4509 setElem!32051) lambda!258196))))

(declare-fun bs!1203623 () Bool)

(assert (= bs!1203623 d!1669010))

(declare-fun m!6224730 () Bool)

(assert (=> bs!1203623 m!6224730))

(assert (=> setNonEmpty!32052 d!1669010))

(declare-fun d!1669020 () Bool)

(declare-fun c!890266 () Bool)

(assert (=> d!1669020 (= c!890266 ((_ is Cons!60091) testedP!294))))

(declare-fun e!3222502 () (InoxSet Context!8018))

(assert (=> d!1669020 (= (derivationZipper!248 baseZ!62 testedP!294) e!3222502)))

(declare-fun b!5171730 () Bool)

(declare-fun derivationStepZipper!979 ((InoxSet Context!8018) C!29520) (InoxSet Context!8018))

(assert (=> b!5171730 (= e!3222502 (derivationZipper!248 (derivationStepZipper!979 baseZ!62 (h!66539 testedP!294)) (t!373368 testedP!294)))))

(declare-fun b!5171731 () Bool)

(assert (=> b!5171731 (= e!3222502 baseZ!62)))

(assert (= (and d!1669020 c!890266) b!5171730))

(assert (= (and d!1669020 (not c!890266)) b!5171731))

(declare-fun m!6224732 () Bool)

(assert (=> b!5171730 m!6224732))

(assert (=> b!5171730 m!6224732))

(declare-fun m!6224734 () Bool)

(assert (=> b!5171730 m!6224734))

(assert (=> b!5171631 d!1669020))

(declare-fun bs!1203624 () Bool)

(declare-fun d!1669022 () Bool)

(assert (= bs!1203624 (and d!1669022 d!1669010)))

(declare-fun lambda!258197 () Int)

(assert (=> bs!1203624 (= lambda!258197 lambda!258196)))

(assert (=> d!1669022 (= (inv!79809 setElem!32052) (forall!14135 (exprs!4509 setElem!32052) lambda!258197))))

(declare-fun bs!1203625 () Bool)

(assert (= bs!1203625 d!1669022))

(declare-fun m!6224736 () Bool)

(assert (=> bs!1203625 m!6224736))

(assert (=> setNonEmpty!32051 d!1669022))

(declare-fun d!1669024 () Bool)

(assert (=> d!1669024 (<= (size!39661 testedP!294) (size!39661 input!5817))))

(declare-fun lt!2129323 () Unit!151764)

(declare-fun choose!38333 (List!60215 List!60215) Unit!151764)

(assert (=> d!1669024 (= lt!2129323 (choose!38333 testedP!294 input!5817))))

(assert (=> d!1669024 (isPrefix!5758 testedP!294 input!5817)))

(assert (=> d!1669024 (= (lemmaIsPrefixThenSmallerEqSize!921 testedP!294 input!5817) lt!2129323)))

(declare-fun bs!1203626 () Bool)

(assert (= bs!1203626 d!1669024))

(assert (=> bs!1203626 m!6224634))

(assert (=> bs!1203626 m!6224640))

(declare-fun m!6224738 () Bool)

(assert (=> bs!1203626 m!6224738))

(assert (=> bs!1203626 m!6224644))

(assert (=> b!5171628 d!1669024))

(declare-fun d!1669026 () Bool)

(declare-fun lt!2129326 () Int)

(assert (=> d!1669026 (>= lt!2129326 0)))

(declare-fun e!3222505 () Int)

(assert (=> d!1669026 (= lt!2129326 e!3222505)))

(declare-fun c!890269 () Bool)

(assert (=> d!1669026 (= c!890269 ((_ is Nil!60091) input!5817))))

(assert (=> d!1669026 (= (size!39661 input!5817) lt!2129326)))

(declare-fun b!5171736 () Bool)

(assert (=> b!5171736 (= e!3222505 0)))

(declare-fun b!5171737 () Bool)

(assert (=> b!5171737 (= e!3222505 (+ 1 (size!39661 (t!373368 input!5817))))))

(assert (= (and d!1669026 c!890269) b!5171736))

(assert (= (and d!1669026 (not c!890269)) b!5171737))

(declare-fun m!6224740 () Bool)

(assert (=> b!5171737 m!6224740))

(assert (=> b!5171627 d!1669026))

(declare-fun d!1669028 () Bool)

(declare-fun lt!2129329 () List!60215)

(assert (=> d!1669028 (= (++!13149 testedP!294 lt!2129329) input!5817)))

(declare-fun e!3222508 () List!60215)

(assert (=> d!1669028 (= lt!2129329 e!3222508)))

(declare-fun c!890272 () Bool)

(assert (=> d!1669028 (= c!890272 ((_ is Cons!60091) testedP!294))))

(assert (=> d!1669028 (>= (size!39661 input!5817) (size!39661 testedP!294))))

(assert (=> d!1669028 (= (getSuffix!3408 input!5817 testedP!294) lt!2129329)))

(declare-fun b!5171742 () Bool)

(assert (=> b!5171742 (= e!3222508 (getSuffix!3408 (tail!10158 input!5817) (t!373368 testedP!294)))))

(declare-fun b!5171743 () Bool)

(assert (=> b!5171743 (= e!3222508 input!5817)))

(assert (= (and d!1669028 c!890272) b!5171742))

(assert (= (and d!1669028 (not c!890272)) b!5171743))

(declare-fun m!6224742 () Bool)

(assert (=> d!1669028 m!6224742))

(assert (=> d!1669028 m!6224640))

(assert (=> d!1669028 m!6224634))

(assert (=> b!5171742 m!6224668))

(assert (=> b!5171742 m!6224668))

(declare-fun m!6224744 () Bool)

(assert (=> b!5171742 m!6224744))

(assert (=> b!5171627 d!1669028))

(declare-fun bm!363103 () Bool)

(declare-fun call!363111 () Bool)

(assert (=> bm!363103 (= call!363111 (nullableZipper!1171 z!4581))))

(declare-fun bm!363104 () Bool)

(declare-fun call!363109 () List!60215)

(assert (=> bm!363104 (= call!363109 (tail!10158 lt!2129211))))

(declare-fun bm!363105 () Bool)

(declare-fun call!363108 () Bool)

(assert (=> bm!363105 (= call!363108 (isPrefix!5758 input!5817 input!5817))))

(declare-fun b!5171812 () Bool)

(declare-fun e!3222552 () tuple2!63804)

(declare-fun e!3222554 () tuple2!63804)

(assert (=> b!5171812 (= e!3222552 e!3222554)))

(declare-fun c!890295 () Bool)

(assert (=> b!5171812 (= c!890295 (= lt!2129205 lt!2129206))))

(declare-fun bm!363106 () Bool)

(declare-fun call!363115 () (InoxSet Context!8018))

(declare-fun call!363114 () C!29520)

(assert (=> bm!363106 (= call!363115 (derivationStepZipper!979 z!4581 call!363114))))

(declare-fun b!5171813 () Bool)

(declare-fun c!890293 () Bool)

(assert (=> b!5171813 (= c!890293 call!363111)))

(declare-fun lt!2129392 () Unit!151764)

(declare-fun lt!2129407 () Unit!151764)

(assert (=> b!5171813 (= lt!2129392 lt!2129407)))

(declare-fun lt!2129391 () List!60215)

(declare-fun lt!2129414 () C!29520)

(assert (=> b!5171813 (= (++!13149 (++!13149 testedP!294 (Cons!60091 lt!2129414 Nil!60091)) lt!2129391) input!5817)))

(declare-fun lemmaMoveElementToOtherListKeepsConcatEq!1578 (List!60215 C!29520 List!60215 List!60215) Unit!151764)

(assert (=> b!5171813 (= lt!2129407 (lemmaMoveElementToOtherListKeepsConcatEq!1578 testedP!294 lt!2129414 lt!2129391 input!5817))))

(assert (=> b!5171813 (= lt!2129391 (tail!10158 lt!2129211))))

(assert (=> b!5171813 (= lt!2129414 (head!11049 lt!2129211))))

(declare-fun lt!2129394 () Unit!151764)

(declare-fun lt!2129412 () Unit!151764)

(assert (=> b!5171813 (= lt!2129394 lt!2129412)))

(assert (=> b!5171813 (isPrefix!5758 (++!13149 testedP!294 (Cons!60091 (head!11049 (getSuffix!3408 input!5817 testedP!294)) Nil!60091)) input!5817)))

(assert (=> b!5171813 (= lt!2129412 (lemmaAddHeadSuffixToPrefixStillPrefix!1071 testedP!294 input!5817))))

(declare-fun lt!2129402 () List!60215)

(assert (=> b!5171813 (= lt!2129402 (++!13149 testedP!294 (Cons!60091 (head!11049 lt!2129211) Nil!60091)))))

(declare-fun lt!2129405 () Unit!151764)

(declare-fun e!3222556 () Unit!151764)

(assert (=> b!5171813 (= lt!2129405 e!3222556)))

(declare-fun c!890297 () Bool)

(assert (=> b!5171813 (= c!890297 (= (size!39661 testedP!294) (size!39661 input!5817)))))

(declare-fun lt!2129398 () Unit!151764)

(declare-fun lt!2129410 () Unit!151764)

(assert (=> b!5171813 (= lt!2129398 lt!2129410)))

(assert (=> b!5171813 (<= (size!39661 testedP!294) (size!39661 input!5817))))

(assert (=> b!5171813 (= lt!2129410 (lemmaIsPrefixThenSmallerEqSize!921 testedP!294 input!5817))))

(declare-fun e!3222549 () tuple2!63804)

(assert (=> b!5171813 (= e!3222554 e!3222549)))

(declare-fun b!5171814 () Bool)

(declare-fun e!3222550 () tuple2!63804)

(assert (=> b!5171814 (= e!3222549 e!3222550)))

(declare-fun lt!2129406 () tuple2!63804)

(declare-fun call!363110 () tuple2!63804)

(assert (=> b!5171814 (= lt!2129406 call!363110)))

(declare-fun c!890298 () Bool)

(assert (=> b!5171814 (= c!890298 (isEmpty!32173 (_1!35205 lt!2129406)))))

(declare-fun b!5171815 () Bool)

(assert (=> b!5171815 (= e!3222552 (tuple2!63805 Nil!60091 input!5817))))

(declare-fun bm!363107 () Bool)

(declare-fun call!363113 () Unit!151764)

(assert (=> bm!363107 (= call!363113 (lemmaIsPrefixSameLengthThenSameList!1407 input!5817 testedP!294 input!5817))))

(declare-fun bm!363108 () Bool)

(declare-fun call!363112 () Unit!151764)

(assert (=> bm!363108 (= call!363112 (lemmaIsPrefixRefl!3765 input!5817 input!5817))))

(declare-fun bm!363109 () Bool)

(assert (=> bm!363109 (= call!363110 (findLongestMatchInnerZipper!283 call!363115 lt!2129402 (+ lt!2129205 1) call!363109 input!5817 lt!2129206))))

(declare-fun b!5171817 () Bool)

(declare-fun e!3222553 () tuple2!63804)

(assert (=> b!5171817 (= e!3222553 (tuple2!63805 Nil!60091 input!5817))))

(declare-fun b!5171818 () Bool)

(assert (=> b!5171818 (= e!3222553 (tuple2!63805 testedP!294 Nil!60091))))

(declare-fun b!5171819 () Bool)

(declare-fun e!3222551 () Bool)

(declare-fun e!3222555 () Bool)

(assert (=> b!5171819 (= e!3222551 e!3222555)))

(declare-fun res!2198163 () Bool)

(assert (=> b!5171819 (=> res!2198163 e!3222555)))

(declare-fun lt!2129389 () tuple2!63804)

(assert (=> b!5171819 (= res!2198163 (isEmpty!32173 (_1!35205 lt!2129389)))))

(declare-fun b!5171820 () Bool)

(assert (=> b!5171820 (= e!3222550 lt!2129406)))

(declare-fun b!5171821 () Bool)

(declare-fun c!890294 () Bool)

(assert (=> b!5171821 (= c!890294 call!363111)))

(declare-fun lt!2129409 () Unit!151764)

(declare-fun lt!2129395 () Unit!151764)

(assert (=> b!5171821 (= lt!2129409 lt!2129395)))

(assert (=> b!5171821 (= input!5817 testedP!294)))

(assert (=> b!5171821 (= lt!2129395 call!363113)))

(declare-fun lt!2129396 () Unit!151764)

(declare-fun lt!2129401 () Unit!151764)

(assert (=> b!5171821 (= lt!2129396 lt!2129401)))

(assert (=> b!5171821 call!363108))

(assert (=> b!5171821 (= lt!2129401 call!363112)))

(assert (=> b!5171821 (= e!3222554 e!3222553)))

(declare-fun b!5171822 () Bool)

(declare-fun Unit!151771 () Unit!151764)

(assert (=> b!5171822 (= e!3222556 Unit!151771)))

(declare-fun lt!2129393 () Unit!151764)

(assert (=> b!5171822 (= lt!2129393 call!363112)))

(assert (=> b!5171822 call!363108))

(declare-fun lt!2129397 () Unit!151764)

(assert (=> b!5171822 (= lt!2129397 lt!2129393)))

(declare-fun lt!2129403 () Unit!151764)

(assert (=> b!5171822 (= lt!2129403 call!363113)))

(assert (=> b!5171822 (= input!5817 testedP!294)))

(declare-fun lt!2129400 () Unit!151764)

(assert (=> b!5171822 (= lt!2129400 lt!2129403)))

(assert (=> b!5171822 false))

(declare-fun b!5171823 () Bool)

(declare-fun Unit!151772 () Unit!151764)

(assert (=> b!5171823 (= e!3222556 Unit!151772)))

(declare-fun b!5171824 () Bool)

(assert (=> b!5171824 (= e!3222550 (tuple2!63805 testedP!294 lt!2129211))))

(declare-fun b!5171825 () Bool)

(assert (=> b!5171825 (= e!3222549 call!363110)))

(declare-fun bm!363110 () Bool)

(assert (=> bm!363110 (= call!363114 (head!11049 lt!2129211))))

(declare-fun d!1669030 () Bool)

(assert (=> d!1669030 e!3222551))

(declare-fun res!2198164 () Bool)

(assert (=> d!1669030 (=> (not res!2198164) (not e!3222551))))

(assert (=> d!1669030 (= res!2198164 (= (++!13149 (_1!35205 lt!2129389) (_2!35205 lt!2129389)) input!5817))))

(assert (=> d!1669030 (= lt!2129389 e!3222552)))

(declare-fun c!890296 () Bool)

(declare-fun lostCauseZipper!1330 ((InoxSet Context!8018)) Bool)

(assert (=> d!1669030 (= c!890296 (lostCauseZipper!1330 z!4581))))

(declare-fun lt!2129408 () Unit!151764)

(declare-fun Unit!151773 () Unit!151764)

(assert (=> d!1669030 (= lt!2129408 Unit!151773)))

(assert (=> d!1669030 (= (getSuffix!3408 input!5817 testedP!294) lt!2129211)))

(declare-fun lt!2129399 () Unit!151764)

(declare-fun lt!2129411 () Unit!151764)

(assert (=> d!1669030 (= lt!2129399 lt!2129411)))

(declare-fun lt!2129404 () List!60215)

(assert (=> d!1669030 (= lt!2129211 lt!2129404)))

(declare-fun lemmaSamePrefixThenSameSuffix!2697 (List!60215 List!60215 List!60215 List!60215 List!60215) Unit!151764)

(assert (=> d!1669030 (= lt!2129411 (lemmaSamePrefixThenSameSuffix!2697 testedP!294 lt!2129211 testedP!294 lt!2129404 input!5817))))

(assert (=> d!1669030 (= lt!2129404 (getSuffix!3408 input!5817 testedP!294))))

(declare-fun lt!2129390 () Unit!151764)

(declare-fun lt!2129413 () Unit!151764)

(assert (=> d!1669030 (= lt!2129390 lt!2129413)))

(assert (=> d!1669030 (isPrefix!5758 testedP!294 (++!13149 testedP!294 lt!2129211))))

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!3591 (List!60215 List!60215) Unit!151764)

(assert (=> d!1669030 (= lt!2129413 (lemmaConcatTwoListThenFirstIsPrefix!3591 testedP!294 lt!2129211))))

(assert (=> d!1669030 (= (++!13149 testedP!294 lt!2129211) input!5817)))

(assert (=> d!1669030 (= (findLongestMatchInnerZipper!283 z!4581 testedP!294 lt!2129205 lt!2129211 input!5817 lt!2129206) lt!2129389)))

(declare-fun b!5171816 () Bool)

(assert (=> b!5171816 (= e!3222555 (>= (size!39661 (_1!35205 lt!2129389)) (size!39661 testedP!294)))))

(assert (= (and d!1669030 c!890296) b!5171815))

(assert (= (and d!1669030 (not c!890296)) b!5171812))

(assert (= (and b!5171812 c!890295) b!5171821))

(assert (= (and b!5171812 (not c!890295)) b!5171813))

(assert (= (and b!5171821 c!890294) b!5171818))

(assert (= (and b!5171821 (not c!890294)) b!5171817))

(assert (= (and b!5171813 c!890297) b!5171822))

(assert (= (and b!5171813 (not c!890297)) b!5171823))

(assert (= (and b!5171813 c!890293) b!5171814))

(assert (= (and b!5171813 (not c!890293)) b!5171825))

(assert (= (and b!5171814 c!890298) b!5171824))

(assert (= (and b!5171814 (not c!890298)) b!5171820))

(assert (= (or b!5171814 b!5171825) bm!363104))

(assert (= (or b!5171814 b!5171825) bm!363110))

(assert (= (or b!5171814 b!5171825) bm!363106))

(assert (= (or b!5171814 b!5171825) bm!363109))

(assert (= (or b!5171821 b!5171822) bm!363108))

(assert (= (or b!5171821 b!5171813) bm!363103))

(assert (= (or b!5171821 b!5171822) bm!363105))

(assert (= (or b!5171821 b!5171822) bm!363107))

(assert (= (and d!1669030 res!2198164) b!5171819))

(assert (= (and b!5171819 (not res!2198163)) b!5171816))

(declare-fun m!6224782 () Bool)

(assert (=> b!5171819 m!6224782))

(declare-fun m!6224784 () Bool)

(assert (=> bm!363104 m!6224784))

(declare-fun m!6224786 () Bool)

(assert (=> bm!363109 m!6224786))

(assert (=> bm!363105 m!6224648))

(declare-fun m!6224788 () Bool)

(assert (=> b!5171814 m!6224788))

(assert (=> bm!363103 m!6224632))

(assert (=> bm!363107 m!6224650))

(assert (=> d!1669030 m!6224638))

(declare-fun m!6224790 () Bool)

(assert (=> d!1669030 m!6224790))

(declare-fun m!6224792 () Bool)

(assert (=> d!1669030 m!6224792))

(declare-fun m!6224794 () Bool)

(assert (=> d!1669030 m!6224794))

(assert (=> d!1669030 m!6224790))

(declare-fun m!6224796 () Bool)

(assert (=> d!1669030 m!6224796))

(declare-fun m!6224798 () Bool)

(assert (=> d!1669030 m!6224798))

(declare-fun m!6224800 () Bool)

(assert (=> d!1669030 m!6224800))

(assert (=> bm!363108 m!6224646))

(declare-fun m!6224802 () Bool)

(assert (=> b!5171816 m!6224802))

(assert (=> b!5171816 m!6224634))

(assert (=> bm!363110 m!6224628))

(assert (=> b!5171813 m!6224626))

(assert (=> b!5171813 m!6224638))

(declare-fun m!6224804 () Bool)

(assert (=> b!5171813 m!6224804))

(declare-fun m!6224806 () Bool)

(assert (=> b!5171813 m!6224806))

(assert (=> b!5171813 m!6224784))

(assert (=> b!5171813 m!6224640))

(assert (=> b!5171813 m!6224804))

(assert (=> b!5171813 m!6224628))

(declare-fun m!6224808 () Bool)

(assert (=> b!5171813 m!6224808))

(assert (=> b!5171813 m!6224624))

(declare-fun m!6224810 () Bool)

(assert (=> b!5171813 m!6224810))

(assert (=> b!5171813 m!6224618))

(assert (=> b!5171813 m!6224638))

(declare-fun m!6224812 () Bool)

(assert (=> b!5171813 m!6224812))

(assert (=> b!5171813 m!6224634))

(assert (=> b!5171813 m!6224810))

(declare-fun m!6224814 () Bool)

(assert (=> b!5171813 m!6224814))

(declare-fun m!6224816 () Bool)

(assert (=> bm!363106 m!6224816))

(assert (=> b!5171627 d!1669030))

(declare-fun d!1669046 () Bool)

(assert (=> d!1669046 (= (isEmpty!32173 (_1!35205 (findLongestMatchInnerZipper!283 z!4581 testedP!294 lt!2129205 lt!2129211 input!5817 lt!2129206))) ((_ is Nil!60091) (_1!35205 (findLongestMatchInnerZipper!283 z!4581 testedP!294 lt!2129205 lt!2129211 input!5817 lt!2129206))))))

(assert (=> b!5171627 d!1669046))

(declare-fun d!1669048 () Bool)

(declare-fun lt!2129415 () Int)

(assert (=> d!1669048 (>= lt!2129415 0)))

(declare-fun e!3222557 () Int)

(assert (=> d!1669048 (= lt!2129415 e!3222557)))

(declare-fun c!890299 () Bool)

(assert (=> d!1669048 (= c!890299 ((_ is Nil!60091) testedP!294))))

(assert (=> d!1669048 (= (size!39661 testedP!294) lt!2129415)))

(declare-fun b!5171826 () Bool)

(assert (=> b!5171826 (= e!3222557 0)))

(declare-fun b!5171827 () Bool)

(assert (=> b!5171827 (= e!3222557 (+ 1 (size!39661 (t!373368 testedP!294))))))

(assert (= (and d!1669048 c!890299) b!5171826))

(assert (= (and d!1669048 (not c!890299)) b!5171827))

(declare-fun m!6224818 () Bool)

(assert (=> b!5171827 m!6224818))

(assert (=> b!5171627 d!1669048))

(declare-fun d!1669050 () Bool)

(assert (=> d!1669050 (isPrefix!5758 (++!13149 testedP!294 (Cons!60091 (head!11049 (getSuffix!3408 input!5817 testedP!294)) Nil!60091)) input!5817)))

(declare-fun lt!2129418 () Unit!151764)

(declare-fun choose!38334 (List!60215 List!60215) Unit!151764)

(assert (=> d!1669050 (= lt!2129418 (choose!38334 testedP!294 input!5817))))

(assert (=> d!1669050 (isPrefix!5758 testedP!294 input!5817)))

(assert (=> d!1669050 (= (lemmaAddHeadSuffixToPrefixStillPrefix!1071 testedP!294 input!5817) lt!2129418)))

(declare-fun bs!1203632 () Bool)

(assert (= bs!1203632 d!1669050))

(declare-fun m!6224820 () Bool)

(assert (=> bs!1203632 m!6224820))

(assert (=> bs!1203632 m!6224638))

(assert (=> bs!1203632 m!6224812))

(assert (=> bs!1203632 m!6224804))

(assert (=> bs!1203632 m!6224644))

(assert (=> bs!1203632 m!6224638))

(assert (=> bs!1203632 m!6224804))

(assert (=> bs!1203632 m!6224806))

(assert (=> b!5171635 d!1669050))

(declare-fun d!1669052 () Bool)

(assert (=> d!1669052 (= (head!11049 lt!2129211) (h!66539 lt!2129211))))

(assert (=> b!5171635 d!1669052))

(declare-fun d!1669054 () Bool)

(declare-fun lambda!258207 () Int)

(declare-fun exists!1918 ((InoxSet Context!8018) Int) Bool)

(assert (=> d!1669054 (= (nullableZipper!1171 z!4581) (exists!1918 z!4581 lambda!258207))))

(declare-fun bs!1203633 () Bool)

(assert (= bs!1203633 d!1669054))

(declare-fun m!6224822 () Bool)

(assert (=> bs!1203633 m!6224822))

(assert (=> b!5171635 d!1669054))

(declare-fun b!5171838 () Bool)

(declare-fun res!2198169 () Bool)

(declare-fun e!3222563 () Bool)

(assert (=> b!5171838 (=> (not res!2198169) (not e!3222563))))

(declare-fun lt!2129421 () List!60215)

(assert (=> b!5171838 (= res!2198169 (= (size!39661 lt!2129421) (+ (size!39661 testedP!294) (size!39661 (Cons!60091 (head!11049 lt!2129211) Nil!60091)))))))

(declare-fun b!5171836 () Bool)

(declare-fun e!3222562 () List!60215)

(assert (=> b!5171836 (= e!3222562 (Cons!60091 (head!11049 lt!2129211) Nil!60091))))

(declare-fun d!1669056 () Bool)

(assert (=> d!1669056 e!3222563))

(declare-fun res!2198170 () Bool)

(assert (=> d!1669056 (=> (not res!2198170) (not e!3222563))))

(declare-fun content!10649 (List!60215) (InoxSet C!29520))

(assert (=> d!1669056 (= res!2198170 (= (content!10649 lt!2129421) ((_ map or) (content!10649 testedP!294) (content!10649 (Cons!60091 (head!11049 lt!2129211) Nil!60091)))))))

(assert (=> d!1669056 (= lt!2129421 e!3222562)))

(declare-fun c!890304 () Bool)

(assert (=> d!1669056 (= c!890304 ((_ is Nil!60091) testedP!294))))

(assert (=> d!1669056 (= (++!13149 testedP!294 (Cons!60091 (head!11049 lt!2129211) Nil!60091)) lt!2129421)))

(declare-fun b!5171839 () Bool)

(assert (=> b!5171839 (= e!3222563 (or (not (= (Cons!60091 (head!11049 lt!2129211) Nil!60091) Nil!60091)) (= lt!2129421 testedP!294)))))

(declare-fun b!5171837 () Bool)

(assert (=> b!5171837 (= e!3222562 (Cons!60091 (h!66539 testedP!294) (++!13149 (t!373368 testedP!294) (Cons!60091 (head!11049 lt!2129211) Nil!60091))))))

(assert (= (and d!1669056 c!890304) b!5171836))

(assert (= (and d!1669056 (not c!890304)) b!5171837))

(assert (= (and d!1669056 res!2198170) b!5171838))

(assert (= (and b!5171838 res!2198169) b!5171839))

(declare-fun m!6224824 () Bool)

(assert (=> b!5171838 m!6224824))

(assert (=> b!5171838 m!6224634))

(declare-fun m!6224826 () Bool)

(assert (=> b!5171838 m!6224826))

(declare-fun m!6224828 () Bool)

(assert (=> d!1669056 m!6224828))

(declare-fun m!6224830 () Bool)

(assert (=> d!1669056 m!6224830))

(declare-fun m!6224832 () Bool)

(assert (=> d!1669056 m!6224832))

(declare-fun m!6224834 () Bool)

(assert (=> b!5171837 m!6224834))

(assert (=> b!5171635 d!1669056))

(declare-fun b!5171843 () Bool)

(declare-fun e!3222564 () Bool)

(assert (=> b!5171843 (= e!3222564 (>= (size!39661 input!5817) (size!39661 lt!2129212)))))

(declare-fun b!5171842 () Bool)

(declare-fun e!3222566 () Bool)

(assert (=> b!5171842 (= e!3222566 (isPrefix!5758 (tail!10158 lt!2129212) (tail!10158 input!5817)))))

(declare-fun b!5171840 () Bool)

(declare-fun e!3222565 () Bool)

(assert (=> b!5171840 (= e!3222565 e!3222566)))

(declare-fun res!2198172 () Bool)

(assert (=> b!5171840 (=> (not res!2198172) (not e!3222566))))

(assert (=> b!5171840 (= res!2198172 (not ((_ is Nil!60091) input!5817)))))

(declare-fun d!1669058 () Bool)

(assert (=> d!1669058 e!3222564))

(declare-fun res!2198171 () Bool)

(assert (=> d!1669058 (=> res!2198171 e!3222564)))

(declare-fun lt!2129422 () Bool)

(assert (=> d!1669058 (= res!2198171 (not lt!2129422))))

(assert (=> d!1669058 (= lt!2129422 e!3222565)))

(declare-fun res!2198173 () Bool)

(assert (=> d!1669058 (=> res!2198173 e!3222565)))

(assert (=> d!1669058 (= res!2198173 ((_ is Nil!60091) lt!2129212))))

(assert (=> d!1669058 (= (isPrefix!5758 lt!2129212 input!5817) lt!2129422)))

(declare-fun b!5171841 () Bool)

(declare-fun res!2198174 () Bool)

(assert (=> b!5171841 (=> (not res!2198174) (not e!3222566))))

(assert (=> b!5171841 (= res!2198174 (= (head!11049 lt!2129212) (head!11049 input!5817)))))

(assert (= (and d!1669058 (not res!2198173)) b!5171840))

(assert (= (and b!5171840 res!2198172) b!5171841))

(assert (= (and b!5171841 res!2198174) b!5171842))

(assert (= (and d!1669058 (not res!2198171)) b!5171843))

(assert (=> b!5171843 m!6224640))

(declare-fun m!6224836 () Bool)

(assert (=> b!5171843 m!6224836))

(declare-fun m!6224838 () Bool)

(assert (=> b!5171842 m!6224838))

(assert (=> b!5171842 m!6224668))

(assert (=> b!5171842 m!6224838))

(assert (=> b!5171842 m!6224668))

(declare-fun m!6224840 () Bool)

(assert (=> b!5171842 m!6224840))

(declare-fun m!6224842 () Bool)

(assert (=> b!5171841 m!6224842))

(assert (=> b!5171841 m!6224674))

(assert (=> b!5171635 d!1669058))

(declare-fun b!5171848 () Bool)

(declare-fun e!3222569 () Bool)

(declare-fun tp!1450866 () Bool)

(assert (=> b!5171848 (= e!3222569 (and tp_is_empty!38503 tp!1450866))))

(assert (=> b!5171629 (= tp!1450842 e!3222569)))

(assert (= (and b!5171629 ((_ is Cons!60091) (t!373368 input!5817))) b!5171848))

(declare-fun b!5171853 () Bool)

(declare-fun e!3222572 () Bool)

(declare-fun tp!1450871 () Bool)

(declare-fun tp!1450872 () Bool)

(assert (=> b!5171853 (= e!3222572 (and tp!1450871 tp!1450872))))

(assert (=> b!5171636 (= tp!1450841 e!3222572)))

(assert (= (and b!5171636 ((_ is Cons!60092) (exprs!4509 setElem!32051))) b!5171853))

(declare-fun b!5171854 () Bool)

(declare-fun e!3222573 () Bool)

(declare-fun tp!1450873 () Bool)

(declare-fun tp!1450874 () Bool)

(assert (=> b!5171854 (= e!3222573 (and tp!1450873 tp!1450874))))

(assert (=> b!5171634 (= tp!1450838 e!3222573)))

(assert (= (and b!5171634 ((_ is Cons!60092) (exprs!4509 setElem!32052))) b!5171854))

(declare-fun condSetEmpty!32059 () Bool)

(assert (=> setNonEmpty!32052 (= condSetEmpty!32059 (= setRest!32051 ((as const (Array Context!8018 Bool)) false)))))

(declare-fun setRes!32059 () Bool)

(assert (=> setNonEmpty!32052 (= tp!1450839 setRes!32059)))

(declare-fun setIsEmpty!32059 () Bool)

(assert (=> setIsEmpty!32059 setRes!32059))

(declare-fun tp!1450879 () Bool)

(declare-fun setNonEmpty!32059 () Bool)

(declare-fun e!3222576 () Bool)

(declare-fun setElem!32059 () Context!8018)

(assert (=> setNonEmpty!32059 (= setRes!32059 (and tp!1450879 (inv!79809 setElem!32059) e!3222576))))

(declare-fun setRest!32059 () (InoxSet Context!8018))

(assert (=> setNonEmpty!32059 (= setRest!32051 ((_ map or) (store ((as const (Array Context!8018 Bool)) false) setElem!32059 true) setRest!32059))))

(declare-fun b!5171859 () Bool)

(declare-fun tp!1450880 () Bool)

(assert (=> b!5171859 (= e!3222576 tp!1450880)))

(assert (= (and setNonEmpty!32052 condSetEmpty!32059) setIsEmpty!32059))

(assert (= (and setNonEmpty!32052 (not condSetEmpty!32059)) setNonEmpty!32059))

(assert (= setNonEmpty!32059 b!5171859))

(declare-fun m!6224844 () Bool)

(assert (=> setNonEmpty!32059 m!6224844))

(declare-fun condSetEmpty!32060 () Bool)

(assert (=> setNonEmpty!32051 (= condSetEmpty!32060 (= setRest!32052 ((as const (Array Context!8018 Bool)) false)))))

(declare-fun setRes!32060 () Bool)

(assert (=> setNonEmpty!32051 (= tp!1450843 setRes!32060)))

(declare-fun setIsEmpty!32060 () Bool)

(assert (=> setIsEmpty!32060 setRes!32060))

(declare-fun tp!1450881 () Bool)

(declare-fun e!3222577 () Bool)

(declare-fun setElem!32060 () Context!8018)

(declare-fun setNonEmpty!32060 () Bool)

(assert (=> setNonEmpty!32060 (= setRes!32060 (and tp!1450881 (inv!79809 setElem!32060) e!3222577))))

(declare-fun setRest!32060 () (InoxSet Context!8018))

(assert (=> setNonEmpty!32060 (= setRest!32052 ((_ map or) (store ((as const (Array Context!8018 Bool)) false) setElem!32060 true) setRest!32060))))

(declare-fun b!5171860 () Bool)

(declare-fun tp!1450882 () Bool)

(assert (=> b!5171860 (= e!3222577 tp!1450882)))

(assert (= (and setNonEmpty!32051 condSetEmpty!32060) setIsEmpty!32060))

(assert (= (and setNonEmpty!32051 (not condSetEmpty!32060)) setNonEmpty!32060))

(assert (= setNonEmpty!32060 b!5171860))

(declare-fun m!6224846 () Bool)

(assert (=> setNonEmpty!32060 m!6224846))

(declare-fun b!5171861 () Bool)

(declare-fun e!3222578 () Bool)

(declare-fun tp!1450883 () Bool)

(assert (=> b!5171861 (= e!3222578 (and tp_is_empty!38503 tp!1450883))))

(assert (=> b!5171626 (= tp!1450840 e!3222578)))

(assert (= (and b!5171626 ((_ is Cons!60091) (t!373368 testedP!294))) b!5171861))

(check-sat (not bm!363108) (not b!5171837) (not b!5171659) (not b!5171843) (not b!5171816) (not d!1669028) (not bm!363105) (not bm!363109) (not b!5171661) (not d!1669030) (not bm!363107) (not b!5171854) (not d!1669022) (not b!5171827) (not b!5171848) (not b!5171660) (not b!5171841) (not b!5171730) (not b!5171859) (not bm!363103) (not d!1668998) (not b!5171813) (not d!1669010) (not b!5171668) (not setNonEmpty!32059) (not b!5171814) (not d!1669050) (not b!5171737) (not b!5171838) (not bm!363106) (not b!5171819) (not b!5171853) (not d!1669054) (not b!5171667) (not b!5171742) (not b!5171669) (not d!1669024) (not setNonEmpty!32060) tp_is_empty!38503 (not d!1669006) (not b!5171861) (not b!5171842) (not bm!363104) (not d!1669056) (not bm!363110) (not b!5171860))
(check-sat)
(get-model)

(declare-fun bm!363119 () Bool)

(declare-fun call!363127 () Bool)

(assert (=> bm!363119 (= call!363127 (nullableZipper!1171 call!363115))))

(declare-fun bm!363120 () Bool)

(declare-fun call!363125 () List!60215)

(assert (=> bm!363120 (= call!363125 (tail!10158 call!363109))))

(declare-fun bm!363121 () Bool)

(declare-fun call!363124 () Bool)

(assert (=> bm!363121 (= call!363124 (isPrefix!5758 input!5817 input!5817))))

(declare-fun b!5171922 () Bool)

(declare-fun e!3222618 () tuple2!63804)

(declare-fun e!3222620 () tuple2!63804)

(assert (=> b!5171922 (= e!3222618 e!3222620)))

(declare-fun c!890324 () Bool)

(assert (=> b!5171922 (= c!890324 (= (+ lt!2129205 1) lt!2129206))))

(declare-fun bm!363122 () Bool)

(declare-fun call!363131 () (InoxSet Context!8018))

(declare-fun call!363130 () C!29520)

(assert (=> bm!363122 (= call!363131 (derivationStepZipper!979 call!363115 call!363130))))

(declare-fun b!5171923 () Bool)

(declare-fun c!890322 () Bool)

(assert (=> b!5171923 (= c!890322 call!363127)))

(declare-fun lt!2129466 () Unit!151764)

(declare-fun lt!2129481 () Unit!151764)

(assert (=> b!5171923 (= lt!2129466 lt!2129481)))

(declare-fun lt!2129465 () List!60215)

(declare-fun lt!2129488 () C!29520)

(assert (=> b!5171923 (= (++!13149 (++!13149 lt!2129402 (Cons!60091 lt!2129488 Nil!60091)) lt!2129465) input!5817)))

(assert (=> b!5171923 (= lt!2129481 (lemmaMoveElementToOtherListKeepsConcatEq!1578 lt!2129402 lt!2129488 lt!2129465 input!5817))))

(assert (=> b!5171923 (= lt!2129465 (tail!10158 call!363109))))

(assert (=> b!5171923 (= lt!2129488 (head!11049 call!363109))))

(declare-fun lt!2129468 () Unit!151764)

(declare-fun lt!2129486 () Unit!151764)

(assert (=> b!5171923 (= lt!2129468 lt!2129486)))

(assert (=> b!5171923 (isPrefix!5758 (++!13149 lt!2129402 (Cons!60091 (head!11049 (getSuffix!3408 input!5817 lt!2129402)) Nil!60091)) input!5817)))

(assert (=> b!5171923 (= lt!2129486 (lemmaAddHeadSuffixToPrefixStillPrefix!1071 lt!2129402 input!5817))))

(declare-fun lt!2129476 () List!60215)

(assert (=> b!5171923 (= lt!2129476 (++!13149 lt!2129402 (Cons!60091 (head!11049 call!363109) Nil!60091)))))

(declare-fun lt!2129479 () Unit!151764)

(declare-fun e!3222622 () Unit!151764)

(assert (=> b!5171923 (= lt!2129479 e!3222622)))

(declare-fun c!890326 () Bool)

(assert (=> b!5171923 (= c!890326 (= (size!39661 lt!2129402) (size!39661 input!5817)))))

(declare-fun lt!2129472 () Unit!151764)

(declare-fun lt!2129484 () Unit!151764)

(assert (=> b!5171923 (= lt!2129472 lt!2129484)))

(assert (=> b!5171923 (<= (size!39661 lt!2129402) (size!39661 input!5817))))

(assert (=> b!5171923 (= lt!2129484 (lemmaIsPrefixThenSmallerEqSize!921 lt!2129402 input!5817))))

(declare-fun e!3222615 () tuple2!63804)

(assert (=> b!5171923 (= e!3222620 e!3222615)))

(declare-fun b!5171924 () Bool)

(declare-fun e!3222616 () tuple2!63804)

(assert (=> b!5171924 (= e!3222615 e!3222616)))

(declare-fun lt!2129480 () tuple2!63804)

(declare-fun call!363126 () tuple2!63804)

(assert (=> b!5171924 (= lt!2129480 call!363126)))

(declare-fun c!890327 () Bool)

(assert (=> b!5171924 (= c!890327 (isEmpty!32173 (_1!35205 lt!2129480)))))

(declare-fun b!5171925 () Bool)

(assert (=> b!5171925 (= e!3222618 (tuple2!63805 Nil!60091 input!5817))))

(declare-fun bm!363123 () Bool)

(declare-fun call!363129 () Unit!151764)

(assert (=> bm!363123 (= call!363129 (lemmaIsPrefixSameLengthThenSameList!1407 input!5817 lt!2129402 input!5817))))

(declare-fun bm!363124 () Bool)

(declare-fun call!363128 () Unit!151764)

(assert (=> bm!363124 (= call!363128 (lemmaIsPrefixRefl!3765 input!5817 input!5817))))

(declare-fun bm!363125 () Bool)

(assert (=> bm!363125 (= call!363126 (findLongestMatchInnerZipper!283 call!363131 lt!2129476 (+ lt!2129205 1 1) call!363125 input!5817 lt!2129206))))

(declare-fun b!5171927 () Bool)

(declare-fun e!3222619 () tuple2!63804)

(assert (=> b!5171927 (= e!3222619 (tuple2!63805 Nil!60091 input!5817))))

(declare-fun b!5171928 () Bool)

(assert (=> b!5171928 (= e!3222619 (tuple2!63805 lt!2129402 Nil!60091))))

(declare-fun b!5171929 () Bool)

(declare-fun e!3222617 () Bool)

(declare-fun e!3222621 () Bool)

(assert (=> b!5171929 (= e!3222617 e!3222621)))

(declare-fun res!2198203 () Bool)

(assert (=> b!5171929 (=> res!2198203 e!3222621)))

(declare-fun lt!2129463 () tuple2!63804)

(assert (=> b!5171929 (= res!2198203 (isEmpty!32173 (_1!35205 lt!2129463)))))

(declare-fun b!5171930 () Bool)

(assert (=> b!5171930 (= e!3222616 lt!2129480)))

(declare-fun b!5171931 () Bool)

(declare-fun c!890323 () Bool)

(assert (=> b!5171931 (= c!890323 call!363127)))

(declare-fun lt!2129483 () Unit!151764)

(declare-fun lt!2129469 () Unit!151764)

(assert (=> b!5171931 (= lt!2129483 lt!2129469)))

(assert (=> b!5171931 (= input!5817 lt!2129402)))

(assert (=> b!5171931 (= lt!2129469 call!363129)))

(declare-fun lt!2129470 () Unit!151764)

(declare-fun lt!2129475 () Unit!151764)

(assert (=> b!5171931 (= lt!2129470 lt!2129475)))

(assert (=> b!5171931 call!363124))

(assert (=> b!5171931 (= lt!2129475 call!363128)))

(assert (=> b!5171931 (= e!3222620 e!3222619)))

(declare-fun b!5171932 () Bool)

(declare-fun Unit!151777 () Unit!151764)

(assert (=> b!5171932 (= e!3222622 Unit!151777)))

(declare-fun lt!2129467 () Unit!151764)

(assert (=> b!5171932 (= lt!2129467 call!363128)))

(assert (=> b!5171932 call!363124))

(declare-fun lt!2129471 () Unit!151764)

(assert (=> b!5171932 (= lt!2129471 lt!2129467)))

(declare-fun lt!2129477 () Unit!151764)

(assert (=> b!5171932 (= lt!2129477 call!363129)))

(assert (=> b!5171932 (= input!5817 lt!2129402)))

(declare-fun lt!2129474 () Unit!151764)

(assert (=> b!5171932 (= lt!2129474 lt!2129477)))

(assert (=> b!5171932 false))

(declare-fun b!5171933 () Bool)

(declare-fun Unit!151778 () Unit!151764)

(assert (=> b!5171933 (= e!3222622 Unit!151778)))

(declare-fun b!5171934 () Bool)

(assert (=> b!5171934 (= e!3222616 (tuple2!63805 lt!2129402 call!363109))))

(declare-fun b!5171935 () Bool)

(assert (=> b!5171935 (= e!3222615 call!363126)))

(declare-fun bm!363126 () Bool)

(assert (=> bm!363126 (= call!363130 (head!11049 call!363109))))

(declare-fun d!1669112 () Bool)

(assert (=> d!1669112 e!3222617))

(declare-fun res!2198204 () Bool)

(assert (=> d!1669112 (=> (not res!2198204) (not e!3222617))))

(assert (=> d!1669112 (= res!2198204 (= (++!13149 (_1!35205 lt!2129463) (_2!35205 lt!2129463)) input!5817))))

(assert (=> d!1669112 (= lt!2129463 e!3222618)))

(declare-fun c!890325 () Bool)

(assert (=> d!1669112 (= c!890325 (lostCauseZipper!1330 call!363115))))

(declare-fun lt!2129482 () Unit!151764)

(declare-fun Unit!151779 () Unit!151764)

(assert (=> d!1669112 (= lt!2129482 Unit!151779)))

(assert (=> d!1669112 (= (getSuffix!3408 input!5817 lt!2129402) call!363109)))

(declare-fun lt!2129473 () Unit!151764)

(declare-fun lt!2129485 () Unit!151764)

(assert (=> d!1669112 (= lt!2129473 lt!2129485)))

(declare-fun lt!2129478 () List!60215)

(assert (=> d!1669112 (= call!363109 lt!2129478)))

(assert (=> d!1669112 (= lt!2129485 (lemmaSamePrefixThenSameSuffix!2697 lt!2129402 call!363109 lt!2129402 lt!2129478 input!5817))))

(assert (=> d!1669112 (= lt!2129478 (getSuffix!3408 input!5817 lt!2129402))))

(declare-fun lt!2129464 () Unit!151764)

(declare-fun lt!2129487 () Unit!151764)

(assert (=> d!1669112 (= lt!2129464 lt!2129487)))

(assert (=> d!1669112 (isPrefix!5758 lt!2129402 (++!13149 lt!2129402 call!363109))))

(assert (=> d!1669112 (= lt!2129487 (lemmaConcatTwoListThenFirstIsPrefix!3591 lt!2129402 call!363109))))

(assert (=> d!1669112 (= (++!13149 lt!2129402 call!363109) input!5817)))

(assert (=> d!1669112 (= (findLongestMatchInnerZipper!283 call!363115 lt!2129402 (+ lt!2129205 1) call!363109 input!5817 lt!2129206) lt!2129463)))

(declare-fun b!5171926 () Bool)

(assert (=> b!5171926 (= e!3222621 (>= (size!39661 (_1!35205 lt!2129463)) (size!39661 lt!2129402)))))

(assert (= (and d!1669112 c!890325) b!5171925))

(assert (= (and d!1669112 (not c!890325)) b!5171922))

(assert (= (and b!5171922 c!890324) b!5171931))

(assert (= (and b!5171922 (not c!890324)) b!5171923))

(assert (= (and b!5171931 c!890323) b!5171928))

(assert (= (and b!5171931 (not c!890323)) b!5171927))

(assert (= (and b!5171923 c!890326) b!5171932))

(assert (= (and b!5171923 (not c!890326)) b!5171933))

(assert (= (and b!5171923 c!890322) b!5171924))

(assert (= (and b!5171923 (not c!890322)) b!5171935))

(assert (= (and b!5171924 c!890327) b!5171934))

(assert (= (and b!5171924 (not c!890327)) b!5171930))

(assert (= (or b!5171924 b!5171935) bm!363120))

(assert (= (or b!5171924 b!5171935) bm!363126))

(assert (= (or b!5171924 b!5171935) bm!363122))

(assert (= (or b!5171924 b!5171935) bm!363125))

(assert (= (or b!5171931 b!5171932) bm!363124))

(assert (= (or b!5171931 b!5171923) bm!363119))

(assert (= (or b!5171931 b!5171932) bm!363121))

(assert (= (or b!5171931 b!5171932) bm!363123))

(assert (= (and d!1669112 res!2198204) b!5171929))

(assert (= (and b!5171929 (not res!2198203)) b!5171926))

(declare-fun m!6225004 () Bool)

(assert (=> b!5171929 m!6225004))

(declare-fun m!6225006 () Bool)

(assert (=> bm!363120 m!6225006))

(declare-fun m!6225008 () Bool)

(assert (=> bm!363125 m!6225008))

(assert (=> bm!363121 m!6224648))

(declare-fun m!6225010 () Bool)

(assert (=> b!5171924 m!6225010))

(declare-fun m!6225012 () Bool)

(assert (=> bm!363119 m!6225012))

(declare-fun m!6225014 () Bool)

(assert (=> bm!363123 m!6225014))

(declare-fun m!6225016 () Bool)

(assert (=> d!1669112 m!6225016))

(declare-fun m!6225018 () Bool)

(assert (=> d!1669112 m!6225018))

(declare-fun m!6225020 () Bool)

(assert (=> d!1669112 m!6225020))

(declare-fun m!6225022 () Bool)

(assert (=> d!1669112 m!6225022))

(assert (=> d!1669112 m!6225018))

(declare-fun m!6225024 () Bool)

(assert (=> d!1669112 m!6225024))

(declare-fun m!6225026 () Bool)

(assert (=> d!1669112 m!6225026))

(declare-fun m!6225028 () Bool)

(assert (=> d!1669112 m!6225028))

(assert (=> bm!363124 m!6224646))

(declare-fun m!6225030 () Bool)

(assert (=> b!5171926 m!6225030))

(declare-fun m!6225032 () Bool)

(assert (=> b!5171926 m!6225032))

(declare-fun m!6225034 () Bool)

(assert (=> bm!363126 m!6225034))

(declare-fun m!6225036 () Bool)

(assert (=> b!5171923 m!6225036))

(assert (=> b!5171923 m!6225016))

(declare-fun m!6225038 () Bool)

(assert (=> b!5171923 m!6225038))

(declare-fun m!6225040 () Bool)

(assert (=> b!5171923 m!6225040))

(assert (=> b!5171923 m!6225006))

(assert (=> b!5171923 m!6224640))

(assert (=> b!5171923 m!6225038))

(assert (=> b!5171923 m!6225034))

(declare-fun m!6225042 () Bool)

(assert (=> b!5171923 m!6225042))

(declare-fun m!6225044 () Bool)

(assert (=> b!5171923 m!6225044))

(declare-fun m!6225046 () Bool)

(assert (=> b!5171923 m!6225046))

(declare-fun m!6225048 () Bool)

(assert (=> b!5171923 m!6225048))

(assert (=> b!5171923 m!6225016))

(declare-fun m!6225050 () Bool)

(assert (=> b!5171923 m!6225050))

(assert (=> b!5171923 m!6225032))

(assert (=> b!5171923 m!6225046))

(declare-fun m!6225052 () Bool)

(assert (=> b!5171923 m!6225052))

(declare-fun m!6225054 () Bool)

(assert (=> bm!363122 m!6225054))

(assert (=> bm!363109 d!1669112))

(declare-fun d!1669120 () Bool)

(declare-fun lt!2129490 () Int)

(assert (=> d!1669120 (>= lt!2129490 0)))

(declare-fun e!3222628 () Int)

(assert (=> d!1669120 (= lt!2129490 e!3222628)))

(declare-fun c!890332 () Bool)

(assert (=> d!1669120 (= c!890332 ((_ is Nil!60091) (_1!35205 lt!2129389)))))

(assert (=> d!1669120 (= (size!39661 (_1!35205 lt!2129389)) lt!2129490)))

(declare-fun b!5171946 () Bool)

(assert (=> b!5171946 (= e!3222628 0)))

(declare-fun b!5171947 () Bool)

(assert (=> b!5171947 (= e!3222628 (+ 1 (size!39661 (t!373368 (_1!35205 lt!2129389)))))))

(assert (= (and d!1669120 c!890332) b!5171946))

(assert (= (and d!1669120 (not c!890332)) b!5171947))

(declare-fun m!6225062 () Bool)

(assert (=> b!5171947 m!6225062))

(assert (=> b!5171816 d!1669120))

(assert (=> b!5171816 d!1669048))

(assert (=> d!1669050 d!1669028))

(declare-fun d!1669126 () Bool)

(assert (=> d!1669126 (= (head!11049 (getSuffix!3408 input!5817 testedP!294)) (h!66539 (getSuffix!3408 input!5817 testedP!294)))))

(assert (=> d!1669050 d!1669126))

(assert (=> d!1669050 d!1668992))

(declare-fun b!5171955 () Bool)

(declare-fun e!3222631 () Bool)

(assert (=> b!5171955 (= e!3222631 (>= (size!39661 input!5817) (size!39661 (++!13149 testedP!294 (Cons!60091 (head!11049 (getSuffix!3408 input!5817 testedP!294)) Nil!60091)))))))

(declare-fun b!5171954 () Bool)

(declare-fun e!3222633 () Bool)

(assert (=> b!5171954 (= e!3222633 (isPrefix!5758 (tail!10158 (++!13149 testedP!294 (Cons!60091 (head!11049 (getSuffix!3408 input!5817 testedP!294)) Nil!60091))) (tail!10158 input!5817)))))

(declare-fun b!5171952 () Bool)

(declare-fun e!3222632 () Bool)

(assert (=> b!5171952 (= e!3222632 e!3222633)))

(declare-fun res!2198208 () Bool)

(assert (=> b!5171952 (=> (not res!2198208) (not e!3222633))))

(assert (=> b!5171952 (= res!2198208 (not ((_ is Nil!60091) input!5817)))))

(declare-fun d!1669128 () Bool)

(assert (=> d!1669128 e!3222631))

(declare-fun res!2198207 () Bool)

(assert (=> d!1669128 (=> res!2198207 e!3222631)))

(declare-fun lt!2129491 () Bool)

(assert (=> d!1669128 (= res!2198207 (not lt!2129491))))

(assert (=> d!1669128 (= lt!2129491 e!3222632)))

(declare-fun res!2198209 () Bool)

(assert (=> d!1669128 (=> res!2198209 e!3222632)))

(assert (=> d!1669128 (= res!2198209 ((_ is Nil!60091) (++!13149 testedP!294 (Cons!60091 (head!11049 (getSuffix!3408 input!5817 testedP!294)) Nil!60091))))))

(assert (=> d!1669128 (= (isPrefix!5758 (++!13149 testedP!294 (Cons!60091 (head!11049 (getSuffix!3408 input!5817 testedP!294)) Nil!60091)) input!5817) lt!2129491)))

(declare-fun b!5171953 () Bool)

(declare-fun res!2198210 () Bool)

(assert (=> b!5171953 (=> (not res!2198210) (not e!3222633))))

(assert (=> b!5171953 (= res!2198210 (= (head!11049 (++!13149 testedP!294 (Cons!60091 (head!11049 (getSuffix!3408 input!5817 testedP!294)) Nil!60091))) (head!11049 input!5817)))))

(assert (= (and d!1669128 (not res!2198209)) b!5171952))

(assert (= (and b!5171952 res!2198208) b!5171953))

(assert (= (and b!5171953 res!2198210) b!5171954))

(assert (= (and d!1669128 (not res!2198207)) b!5171955))

(assert (=> b!5171955 m!6224640))

(assert (=> b!5171955 m!6224804))

(declare-fun m!6225070 () Bool)

(assert (=> b!5171955 m!6225070))

(assert (=> b!5171954 m!6224804))

(declare-fun m!6225072 () Bool)

(assert (=> b!5171954 m!6225072))

(assert (=> b!5171954 m!6224668))

(assert (=> b!5171954 m!6225072))

(assert (=> b!5171954 m!6224668))

(declare-fun m!6225074 () Bool)

(assert (=> b!5171954 m!6225074))

(assert (=> b!5171953 m!6224804))

(declare-fun m!6225076 () Bool)

(assert (=> b!5171953 m!6225076))

(assert (=> b!5171953 m!6224674))

(assert (=> d!1669050 d!1669128))

(declare-fun d!1669134 () Bool)

(assert (=> d!1669134 (isPrefix!5758 (++!13149 testedP!294 (Cons!60091 (head!11049 (getSuffix!3408 input!5817 testedP!294)) Nil!60091)) input!5817)))

(assert (=> d!1669134 true))

(declare-fun _$65!1811 () Unit!151764)

(assert (=> d!1669134 (= (choose!38334 testedP!294 input!5817) _$65!1811)))

(declare-fun bs!1203645 () Bool)

(assert (= bs!1203645 d!1669134))

(assert (=> bs!1203645 m!6224638))

(assert (=> bs!1203645 m!6224638))

(assert (=> bs!1203645 m!6224812))

(assert (=> bs!1203645 m!6224804))

(assert (=> bs!1203645 m!6224804))

(assert (=> bs!1203645 m!6224806))

(assert (=> d!1669050 d!1669134))

(declare-fun b!5171960 () Bool)

(declare-fun res!2198211 () Bool)

(declare-fun e!3222636 () Bool)

(assert (=> b!5171960 (=> (not res!2198211) (not e!3222636))))

(declare-fun lt!2129495 () List!60215)

(assert (=> b!5171960 (= res!2198211 (= (size!39661 lt!2129495) (+ (size!39661 testedP!294) (size!39661 (Cons!60091 (head!11049 (getSuffix!3408 input!5817 testedP!294)) Nil!60091)))))))

(declare-fun b!5171958 () Bool)

(declare-fun e!3222635 () List!60215)

(assert (=> b!5171958 (= e!3222635 (Cons!60091 (head!11049 (getSuffix!3408 input!5817 testedP!294)) Nil!60091))))

(declare-fun d!1669138 () Bool)

(assert (=> d!1669138 e!3222636))

(declare-fun res!2198212 () Bool)

(assert (=> d!1669138 (=> (not res!2198212) (not e!3222636))))

(assert (=> d!1669138 (= res!2198212 (= (content!10649 lt!2129495) ((_ map or) (content!10649 testedP!294) (content!10649 (Cons!60091 (head!11049 (getSuffix!3408 input!5817 testedP!294)) Nil!60091)))))))

(assert (=> d!1669138 (= lt!2129495 e!3222635)))

(declare-fun c!890336 () Bool)

(assert (=> d!1669138 (= c!890336 ((_ is Nil!60091) testedP!294))))

(assert (=> d!1669138 (= (++!13149 testedP!294 (Cons!60091 (head!11049 (getSuffix!3408 input!5817 testedP!294)) Nil!60091)) lt!2129495)))

(declare-fun b!5171961 () Bool)

(assert (=> b!5171961 (= e!3222636 (or (not (= (Cons!60091 (head!11049 (getSuffix!3408 input!5817 testedP!294)) Nil!60091) Nil!60091)) (= lt!2129495 testedP!294)))))

(declare-fun b!5171959 () Bool)

(assert (=> b!5171959 (= e!3222635 (Cons!60091 (h!66539 testedP!294) (++!13149 (t!373368 testedP!294) (Cons!60091 (head!11049 (getSuffix!3408 input!5817 testedP!294)) Nil!60091))))))

(assert (= (and d!1669138 c!890336) b!5171958))

(assert (= (and d!1669138 (not c!890336)) b!5171959))

(assert (= (and d!1669138 res!2198212) b!5171960))

(assert (= (and b!5171960 res!2198211) b!5171961))

(declare-fun m!6225082 () Bool)

(assert (=> b!5171960 m!6225082))

(assert (=> b!5171960 m!6224634))

(declare-fun m!6225086 () Bool)

(assert (=> b!5171960 m!6225086))

(declare-fun m!6225088 () Bool)

(assert (=> d!1669138 m!6225088))

(assert (=> d!1669138 m!6224830))

(declare-fun m!6225090 () Bool)

(assert (=> d!1669138 m!6225090))

(declare-fun m!6225092 () Bool)

(assert (=> b!5171959 m!6225092))

(assert (=> d!1669050 d!1669138))

(assert (=> d!1669024 d!1669048))

(assert (=> d!1669024 d!1669026))

(declare-fun d!1669142 () Bool)

(assert (=> d!1669142 (<= (size!39661 testedP!294) (size!39661 input!5817))))

(assert (=> d!1669142 true))

(declare-fun _$64!697 () Unit!151764)

(assert (=> d!1669142 (= (choose!38333 testedP!294 input!5817) _$64!697)))

(declare-fun bs!1203647 () Bool)

(assert (= bs!1203647 d!1669142))

(assert (=> bs!1203647 m!6224634))

(assert (=> bs!1203647 m!6224640))

(assert (=> d!1669024 d!1669142))

(assert (=> d!1669024 d!1668992))

(declare-fun bs!1203648 () Bool)

(declare-fun d!1669144 () Bool)

(assert (= bs!1203648 (and d!1669144 d!1669010)))

(declare-fun lambda!258213 () Int)

(assert (=> bs!1203648 (= lambda!258213 lambda!258196)))

(declare-fun bs!1203649 () Bool)

(assert (= bs!1203649 (and d!1669144 d!1669022)))

(assert (=> bs!1203649 (= lambda!258213 lambda!258197)))

(assert (=> d!1669144 (= (inv!79809 setElem!32060) (forall!14135 (exprs!4509 setElem!32060) lambda!258213))))

(declare-fun bs!1203650 () Bool)

(assert (= bs!1203650 d!1669144))

(declare-fun m!6225094 () Bool)

(assert (=> bs!1203650 m!6225094))

(assert (=> setNonEmpty!32060 d!1669144))

(assert (=> bm!363107 d!1669006))

(declare-fun d!1669146 () Bool)

(declare-fun lt!2129497 () Int)

(assert (=> d!1669146 (>= lt!2129497 0)))

(declare-fun e!3222637 () Int)

(assert (=> d!1669146 (= lt!2129497 e!3222637)))

(declare-fun c!890337 () Bool)

(assert (=> d!1669146 (= c!890337 ((_ is Nil!60091) (t!373368 testedP!294)))))

(assert (=> d!1669146 (= (size!39661 (t!373368 testedP!294)) lt!2129497)))

(declare-fun b!5171962 () Bool)

(assert (=> b!5171962 (= e!3222637 0)))

(declare-fun b!5171963 () Bool)

(assert (=> b!5171963 (= e!3222637 (+ 1 (size!39661 (t!373368 (t!373368 testedP!294)))))))

(assert (= (and d!1669146 c!890337) b!5171962))

(assert (= (and d!1669146 (not c!890337)) b!5171963))

(declare-fun m!6225096 () Bool)

(assert (=> b!5171963 m!6225096))

(assert (=> b!5171827 d!1669146))

(declare-fun d!1669148 () Bool)

(declare-fun lt!2129500 () Bool)

(declare-datatypes ((List!60217 0))(
  ( (Nil!60093) (Cons!60093 (h!66541 Context!8018) (t!373370 List!60217)) )
))
(declare-fun exists!1919 (List!60217 Int) Bool)

(declare-fun toList!8450 ((InoxSet Context!8018)) List!60217)

(assert (=> d!1669148 (= lt!2129500 (exists!1919 (toList!8450 z!4581) lambda!258207))))

(declare-fun choose!38335 ((InoxSet Context!8018) Int) Bool)

(assert (=> d!1669148 (= lt!2129500 (choose!38335 z!4581 lambda!258207))))

(assert (=> d!1669148 (= (exists!1918 z!4581 lambda!258207) lt!2129500)))

(declare-fun bs!1203651 () Bool)

(assert (= bs!1203651 d!1669148))

(declare-fun m!6225098 () Bool)

(assert (=> bs!1203651 m!6225098))

(assert (=> bs!1203651 m!6225098))

(declare-fun m!6225100 () Bool)

(assert (=> bs!1203651 m!6225100))

(declare-fun m!6225102 () Bool)

(assert (=> bs!1203651 m!6225102))

(assert (=> d!1669054 d!1669148))

(assert (=> bm!363108 d!1668998))

(declare-fun d!1669150 () Bool)

(declare-fun c!890338 () Bool)

(assert (=> d!1669150 (= c!890338 ((_ is Cons!60091) (t!373368 testedP!294)))))

(declare-fun e!3222638 () (InoxSet Context!8018))

(assert (=> d!1669150 (= (derivationZipper!248 (derivationStepZipper!979 baseZ!62 (h!66539 testedP!294)) (t!373368 testedP!294)) e!3222638)))

(declare-fun b!5171964 () Bool)

(assert (=> b!5171964 (= e!3222638 (derivationZipper!248 (derivationStepZipper!979 (derivationStepZipper!979 baseZ!62 (h!66539 testedP!294)) (h!66539 (t!373368 testedP!294))) (t!373368 (t!373368 testedP!294))))))

(declare-fun b!5171965 () Bool)

(assert (=> b!5171965 (= e!3222638 (derivationStepZipper!979 baseZ!62 (h!66539 testedP!294)))))

(assert (= (and d!1669150 c!890338) b!5171964))

(assert (= (and d!1669150 (not c!890338)) b!5171965))

(assert (=> b!5171964 m!6224732))

(declare-fun m!6225104 () Bool)

(assert (=> b!5171964 m!6225104))

(assert (=> b!5171964 m!6225104))

(declare-fun m!6225106 () Bool)

(assert (=> b!5171964 m!6225106))

(assert (=> b!5171730 d!1669150))

(declare-fun d!1669152 () Bool)

(assert (=> d!1669152 true))

(declare-fun lambda!258216 () Int)

(declare-fun flatMap!448 ((InoxSet Context!8018) Int) (InoxSet Context!8018))

(assert (=> d!1669152 (= (derivationStepZipper!979 baseZ!62 (h!66539 testedP!294)) (flatMap!448 baseZ!62 lambda!258216))))

(declare-fun bs!1203652 () Bool)

(assert (= bs!1203652 d!1669152))

(declare-fun m!6225108 () Bool)

(assert (=> bs!1203652 m!6225108))

(assert (=> b!5171730 d!1669152))

(declare-fun b!5171970 () Bool)

(declare-fun res!2198213 () Bool)

(declare-fun e!3222640 () Bool)

(assert (=> b!5171970 (=> (not res!2198213) (not e!3222640))))

(declare-fun lt!2129501 () List!60215)

(assert (=> b!5171970 (= res!2198213 (= (size!39661 lt!2129501) (+ (size!39661 (t!373368 testedP!294)) (size!39661 (Cons!60091 (head!11049 lt!2129211) Nil!60091)))))))

(declare-fun b!5171968 () Bool)

(declare-fun e!3222639 () List!60215)

(assert (=> b!5171968 (= e!3222639 (Cons!60091 (head!11049 lt!2129211) Nil!60091))))

(declare-fun d!1669154 () Bool)

(assert (=> d!1669154 e!3222640))

(declare-fun res!2198214 () Bool)

(assert (=> d!1669154 (=> (not res!2198214) (not e!3222640))))

(assert (=> d!1669154 (= res!2198214 (= (content!10649 lt!2129501) ((_ map or) (content!10649 (t!373368 testedP!294)) (content!10649 (Cons!60091 (head!11049 lt!2129211) Nil!60091)))))))

(assert (=> d!1669154 (= lt!2129501 e!3222639)))

(declare-fun c!890341 () Bool)

(assert (=> d!1669154 (= c!890341 ((_ is Nil!60091) (t!373368 testedP!294)))))

(assert (=> d!1669154 (= (++!13149 (t!373368 testedP!294) (Cons!60091 (head!11049 lt!2129211) Nil!60091)) lt!2129501)))

(declare-fun b!5171971 () Bool)

(assert (=> b!5171971 (= e!3222640 (or (not (= (Cons!60091 (head!11049 lt!2129211) Nil!60091) Nil!60091)) (= lt!2129501 (t!373368 testedP!294))))))

(declare-fun b!5171969 () Bool)

(assert (=> b!5171969 (= e!3222639 (Cons!60091 (h!66539 (t!373368 testedP!294)) (++!13149 (t!373368 (t!373368 testedP!294)) (Cons!60091 (head!11049 lt!2129211) Nil!60091))))))

(assert (= (and d!1669154 c!890341) b!5171968))

(assert (= (and d!1669154 (not c!890341)) b!5171969))

(assert (= (and d!1669154 res!2198214) b!5171970))

(assert (= (and b!5171970 res!2198213) b!5171971))

(declare-fun m!6225110 () Bool)

(assert (=> b!5171970 m!6225110))

(assert (=> b!5171970 m!6224818))

(assert (=> b!5171970 m!6224826))

(declare-fun m!6225112 () Bool)

(assert (=> d!1669154 m!6225112))

(declare-fun m!6225114 () Bool)

(assert (=> d!1669154 m!6225114))

(assert (=> d!1669154 m!6224832))

(declare-fun m!6225116 () Bool)

(assert (=> b!5171969 m!6225116))

(assert (=> b!5171837 d!1669154))

(declare-fun d!1669156 () Bool)

(declare-fun lt!2129506 () Int)

(assert (=> d!1669156 (>= lt!2129506 0)))

(declare-fun e!3222643 () Int)

(assert (=> d!1669156 (= lt!2129506 e!3222643)))

(declare-fun c!890346 () Bool)

(assert (=> d!1669156 (= c!890346 ((_ is Nil!60091) lt!2129421))))

(assert (=> d!1669156 (= (size!39661 lt!2129421) lt!2129506)))

(declare-fun b!5171976 () Bool)

(assert (=> b!5171976 (= e!3222643 0)))

(declare-fun b!5171977 () Bool)

(assert (=> b!5171977 (= e!3222643 (+ 1 (size!39661 (t!373368 lt!2129421))))))

(assert (= (and d!1669156 c!890346) b!5171976))

(assert (= (and d!1669156 (not c!890346)) b!5171977))

(declare-fun m!6225118 () Bool)

(assert (=> b!5171977 m!6225118))

(assert (=> b!5171838 d!1669156))

(assert (=> b!5171838 d!1669048))

(declare-fun d!1669158 () Bool)

(declare-fun lt!2129507 () Int)

(assert (=> d!1669158 (>= lt!2129507 0)))

(declare-fun e!3222644 () Int)

(assert (=> d!1669158 (= lt!2129507 e!3222644)))

(declare-fun c!890347 () Bool)

(assert (=> d!1669158 (= c!890347 ((_ is Nil!60091) (Cons!60091 (head!11049 lt!2129211) Nil!60091)))))

(assert (=> d!1669158 (= (size!39661 (Cons!60091 (head!11049 lt!2129211) Nil!60091)) lt!2129507)))

(declare-fun b!5171978 () Bool)

(assert (=> b!5171978 (= e!3222644 0)))

(declare-fun b!5171979 () Bool)

(assert (=> b!5171979 (= e!3222644 (+ 1 (size!39661 (t!373368 (Cons!60091 (head!11049 lt!2129211) Nil!60091)))))))

(assert (= (and d!1669158 c!890347) b!5171978))

(assert (= (and d!1669158 (not c!890347)) b!5171979))

(declare-fun m!6225120 () Bool)

(assert (=> b!5171979 m!6225120))

(assert (=> b!5171838 d!1669158))

(declare-fun d!1669160 () Bool)

(assert (=> d!1669160 (= (head!11049 input!5817) (h!66539 input!5817))))

(assert (=> b!5171667 d!1669160))

(assert (=> b!5171661 d!1669026))

(assert (=> b!5171661 d!1669048))

(declare-fun d!1669162 () Bool)

(declare-fun lt!2129512 () Int)

(assert (=> d!1669162 (>= lt!2129512 0)))

(declare-fun e!3222645 () Int)

(assert (=> d!1669162 (= lt!2129512 e!3222645)))

(declare-fun c!890348 () Bool)

(assert (=> d!1669162 (= c!890348 ((_ is Nil!60091) (t!373368 input!5817)))))

(assert (=> d!1669162 (= (size!39661 (t!373368 input!5817)) lt!2129512)))

(declare-fun b!5171980 () Bool)

(assert (=> b!5171980 (= e!3222645 0)))

(declare-fun b!5171981 () Bool)

(assert (=> b!5171981 (= e!3222645 (+ 1 (size!39661 (t!373368 (t!373368 input!5817)))))))

(assert (= (and d!1669162 c!890348) b!5171980))

(assert (= (and d!1669162 (not c!890348)) b!5171981))

(declare-fun m!6225122 () Bool)

(assert (=> b!5171981 m!6225122))

(assert (=> b!5171737 d!1669162))

(assert (=> b!5171669 d!1669026))

(declare-fun b!5171985 () Bool)

(declare-fun e!3222646 () Bool)

(assert (=> b!5171985 (= e!3222646 (>= (size!39661 (tail!10158 input!5817)) (size!39661 (tail!10158 input!5817))))))

(declare-fun b!5171984 () Bool)

(declare-fun e!3222648 () Bool)

(assert (=> b!5171984 (= e!3222648 (isPrefix!5758 (tail!10158 (tail!10158 input!5817)) (tail!10158 (tail!10158 input!5817))))))

(declare-fun b!5171982 () Bool)

(declare-fun e!3222647 () Bool)

(assert (=> b!5171982 (= e!3222647 e!3222648)))

(declare-fun res!2198216 () Bool)

(assert (=> b!5171982 (=> (not res!2198216) (not e!3222648))))

(assert (=> b!5171982 (= res!2198216 (not ((_ is Nil!60091) (tail!10158 input!5817))))))

(declare-fun d!1669164 () Bool)

(assert (=> d!1669164 e!3222646))

(declare-fun res!2198215 () Bool)

(assert (=> d!1669164 (=> res!2198215 e!3222646)))

(declare-fun lt!2129515 () Bool)

(assert (=> d!1669164 (= res!2198215 (not lt!2129515))))

(assert (=> d!1669164 (= lt!2129515 e!3222647)))

(declare-fun res!2198217 () Bool)

(assert (=> d!1669164 (=> res!2198217 e!3222647)))

(assert (=> d!1669164 (= res!2198217 ((_ is Nil!60091) (tail!10158 input!5817)))))

(assert (=> d!1669164 (= (isPrefix!5758 (tail!10158 input!5817) (tail!10158 input!5817)) lt!2129515)))

(declare-fun b!5171983 () Bool)

(declare-fun res!2198218 () Bool)

(assert (=> b!5171983 (=> (not res!2198218) (not e!3222648))))

(assert (=> b!5171983 (= res!2198218 (= (head!11049 (tail!10158 input!5817)) (head!11049 (tail!10158 input!5817))))))

(assert (= (and d!1669164 (not res!2198217)) b!5171982))

(assert (= (and b!5171982 res!2198216) b!5171983))

(assert (= (and b!5171983 res!2198218) b!5171984))

(assert (= (and d!1669164 (not res!2198215)) b!5171985))

(assert (=> b!5171985 m!6224668))

(declare-fun m!6225124 () Bool)

(assert (=> b!5171985 m!6225124))

(assert (=> b!5171985 m!6224668))

(assert (=> b!5171985 m!6225124))

(assert (=> b!5171984 m!6224668))

(declare-fun m!6225126 () Bool)

(assert (=> b!5171984 m!6225126))

(assert (=> b!5171984 m!6224668))

(assert (=> b!5171984 m!6225126))

(assert (=> b!5171984 m!6225126))

(assert (=> b!5171984 m!6225126))

(declare-fun m!6225128 () Bool)

(assert (=> b!5171984 m!6225128))

(assert (=> b!5171983 m!6224668))

(declare-fun m!6225130 () Bool)

(assert (=> b!5171983 m!6225130))

(assert (=> b!5171983 m!6224668))

(assert (=> b!5171983 m!6225130))

(assert (=> b!5171668 d!1669164))

(declare-fun d!1669166 () Bool)

(assert (=> d!1669166 (= (tail!10158 input!5817) (t!373368 input!5817))))

(assert (=> b!5171668 d!1669166))

(declare-fun d!1669168 () Bool)

(declare-fun lt!2129522 () List!60215)

(assert (=> d!1669168 (= (++!13149 (t!373368 testedP!294) lt!2129522) (tail!10158 input!5817))))

(declare-fun e!3222651 () List!60215)

(assert (=> d!1669168 (= lt!2129522 e!3222651)))

(declare-fun c!890353 () Bool)

(assert (=> d!1669168 (= c!890353 ((_ is Cons!60091) (t!373368 testedP!294)))))

(assert (=> d!1669168 (>= (size!39661 (tail!10158 input!5817)) (size!39661 (t!373368 testedP!294)))))

(assert (=> d!1669168 (= (getSuffix!3408 (tail!10158 input!5817) (t!373368 testedP!294)) lt!2129522)))

(declare-fun b!5171986 () Bool)

(assert (=> b!5171986 (= e!3222651 (getSuffix!3408 (tail!10158 (tail!10158 input!5817)) (t!373368 (t!373368 testedP!294))))))

(declare-fun b!5171987 () Bool)

(assert (=> b!5171987 (= e!3222651 (tail!10158 input!5817))))

(assert (= (and d!1669168 c!890353) b!5171986))

(assert (= (and d!1669168 (not c!890353)) b!5171987))

(declare-fun m!6225132 () Bool)

(assert (=> d!1669168 m!6225132))

(assert (=> d!1669168 m!6224668))

(assert (=> d!1669168 m!6225124))

(assert (=> d!1669168 m!6224818))

(assert (=> b!5171986 m!6224668))

(assert (=> b!5171986 m!6225126))

(assert (=> b!5171986 m!6225126))

(declare-fun m!6225134 () Bool)

(assert (=> b!5171986 m!6225134))

(assert (=> b!5171742 d!1669168))

(assert (=> b!5171742 d!1669166))

(declare-fun bs!1203653 () Bool)

(declare-fun d!1669170 () Bool)

(assert (= bs!1203653 (and d!1669170 d!1669010)))

(declare-fun lambda!258225 () Int)

(assert (=> bs!1203653 (= lambda!258225 lambda!258196)))

(declare-fun bs!1203654 () Bool)

(assert (= bs!1203654 (and d!1669170 d!1669022)))

(assert (=> bs!1203654 (= lambda!258225 lambda!258197)))

(declare-fun bs!1203655 () Bool)

(assert (= bs!1203655 (and d!1669170 d!1669144)))

(assert (=> bs!1203655 (= lambda!258225 lambda!258213)))

(assert (=> d!1669170 (= (inv!79809 setElem!32059) (forall!14135 (exprs!4509 setElem!32059) lambda!258225))))

(declare-fun bs!1203656 () Bool)

(assert (= bs!1203656 d!1669170))

(declare-fun m!6225136 () Bool)

(assert (=> bs!1203656 m!6225136))

(assert (=> setNonEmpty!32059 d!1669170))

(declare-fun d!1669172 () Bool)

(assert (=> d!1669172 (= (head!11049 testedP!294) (h!66539 testedP!294))))

(assert (=> b!5171659 d!1669172))

(assert (=> b!5171659 d!1669160))

(declare-fun b!5171991 () Bool)

(declare-fun e!3222654 () Bool)

(assert (=> b!5171991 (= e!3222654 (>= (size!39661 (tail!10158 input!5817)) (size!39661 (tail!10158 testedP!294))))))

(declare-fun b!5171990 () Bool)

(declare-fun e!3222656 () Bool)

(assert (=> b!5171990 (= e!3222656 (isPrefix!5758 (tail!10158 (tail!10158 testedP!294)) (tail!10158 (tail!10158 input!5817))))))

(declare-fun b!5171988 () Bool)

(declare-fun e!3222655 () Bool)

(assert (=> b!5171988 (= e!3222655 e!3222656)))

(declare-fun res!2198220 () Bool)

(assert (=> b!5171988 (=> (not res!2198220) (not e!3222656))))

(assert (=> b!5171988 (= res!2198220 (not ((_ is Nil!60091) (tail!10158 input!5817))))))

(declare-fun d!1669174 () Bool)

(assert (=> d!1669174 e!3222654))

(declare-fun res!2198219 () Bool)

(assert (=> d!1669174 (=> res!2198219 e!3222654)))

(declare-fun lt!2129523 () Bool)

(assert (=> d!1669174 (= res!2198219 (not lt!2129523))))

(assert (=> d!1669174 (= lt!2129523 e!3222655)))

(declare-fun res!2198221 () Bool)

(assert (=> d!1669174 (=> res!2198221 e!3222655)))

(assert (=> d!1669174 (= res!2198221 ((_ is Nil!60091) (tail!10158 testedP!294)))))

(assert (=> d!1669174 (= (isPrefix!5758 (tail!10158 testedP!294) (tail!10158 input!5817)) lt!2129523)))

(declare-fun b!5171989 () Bool)

(declare-fun res!2198222 () Bool)

(assert (=> b!5171989 (=> (not res!2198222) (not e!3222656))))

(assert (=> b!5171989 (= res!2198222 (= (head!11049 (tail!10158 testedP!294)) (head!11049 (tail!10158 input!5817))))))

(assert (= (and d!1669174 (not res!2198221)) b!5171988))

(assert (= (and b!5171988 res!2198220) b!5171989))

(assert (= (and b!5171989 res!2198222) b!5171990))

(assert (= (and d!1669174 (not res!2198219)) b!5171991))

(assert (=> b!5171991 m!6224668))

(assert (=> b!5171991 m!6225124))

(assert (=> b!5171991 m!6224666))

(declare-fun m!6225138 () Bool)

(assert (=> b!5171991 m!6225138))

(assert (=> b!5171990 m!6224666))

(declare-fun m!6225140 () Bool)

(assert (=> b!5171990 m!6225140))

(assert (=> b!5171990 m!6224668))

(assert (=> b!5171990 m!6225126))

(assert (=> b!5171990 m!6225140))

(assert (=> b!5171990 m!6225126))

(declare-fun m!6225142 () Bool)

(assert (=> b!5171990 m!6225142))

(assert (=> b!5171989 m!6224666))

(declare-fun m!6225144 () Bool)

(assert (=> b!5171989 m!6225144))

(assert (=> b!5171989 m!6224668))

(assert (=> b!5171989 m!6225130))

(assert (=> b!5171660 d!1669174))

(declare-fun d!1669176 () Bool)

(assert (=> d!1669176 (= (tail!10158 testedP!294) (t!373368 testedP!294))))

(assert (=> b!5171660 d!1669176))

(assert (=> b!5171660 d!1669166))

(declare-fun d!1669178 () Bool)

(assert (=> d!1669178 (= (isEmpty!32173 (_1!35205 lt!2129389)) ((_ is Nil!60091) (_1!35205 lt!2129389)))))

(assert (=> b!5171819 d!1669178))

(declare-fun b!5171994 () Bool)

(declare-fun res!2198223 () Bool)

(declare-fun e!3222658 () Bool)

(assert (=> b!5171994 (=> (not res!2198223) (not e!3222658))))

(declare-fun lt!2129524 () List!60215)

(assert (=> b!5171994 (= res!2198223 (= (size!39661 lt!2129524) (+ (size!39661 testedP!294) (size!39661 lt!2129329))))))

(declare-fun b!5171992 () Bool)

(declare-fun e!3222657 () List!60215)

(assert (=> b!5171992 (= e!3222657 lt!2129329)))

(declare-fun d!1669180 () Bool)

(assert (=> d!1669180 e!3222658))

(declare-fun res!2198224 () Bool)

(assert (=> d!1669180 (=> (not res!2198224) (not e!3222658))))

(assert (=> d!1669180 (= res!2198224 (= (content!10649 lt!2129524) ((_ map or) (content!10649 testedP!294) (content!10649 lt!2129329))))))

(assert (=> d!1669180 (= lt!2129524 e!3222657)))

(declare-fun c!890354 () Bool)

(assert (=> d!1669180 (= c!890354 ((_ is Nil!60091) testedP!294))))

(assert (=> d!1669180 (= (++!13149 testedP!294 lt!2129329) lt!2129524)))

(declare-fun b!5171995 () Bool)

(assert (=> b!5171995 (= e!3222658 (or (not (= lt!2129329 Nil!60091)) (= lt!2129524 testedP!294)))))

(declare-fun b!5171993 () Bool)

(assert (=> b!5171993 (= e!3222657 (Cons!60091 (h!66539 testedP!294) (++!13149 (t!373368 testedP!294) lt!2129329)))))

(assert (= (and d!1669180 c!890354) b!5171992))

(assert (= (and d!1669180 (not c!890354)) b!5171993))

(assert (= (and d!1669180 res!2198224) b!5171994))

(assert (= (and b!5171994 res!2198223) b!5171995))

(declare-fun m!6225146 () Bool)

(assert (=> b!5171994 m!6225146))

(assert (=> b!5171994 m!6224634))

(declare-fun m!6225148 () Bool)

(assert (=> b!5171994 m!6225148))

(declare-fun m!6225150 () Bool)

(assert (=> d!1669180 m!6225150))

(assert (=> d!1669180 m!6224830))

(declare-fun m!6225152 () Bool)

(assert (=> d!1669180 m!6225152))

(declare-fun m!6225154 () Bool)

(assert (=> b!5171993 m!6225154))

(assert (=> d!1669028 d!1669180))

(assert (=> d!1669028 d!1669026))

(assert (=> d!1669028 d!1669048))

(declare-fun b!5171999 () Bool)

(declare-fun e!3222659 () Bool)

(assert (=> b!5171999 (= e!3222659 (>= (size!39661 (tail!10158 input!5817)) (size!39661 (tail!10158 lt!2129212))))))

(declare-fun b!5171998 () Bool)

(declare-fun e!3222661 () Bool)

(assert (=> b!5171998 (= e!3222661 (isPrefix!5758 (tail!10158 (tail!10158 lt!2129212)) (tail!10158 (tail!10158 input!5817))))))

(declare-fun b!5171996 () Bool)

(declare-fun e!3222660 () Bool)

(assert (=> b!5171996 (= e!3222660 e!3222661)))

(declare-fun res!2198226 () Bool)

(assert (=> b!5171996 (=> (not res!2198226) (not e!3222661))))

(assert (=> b!5171996 (= res!2198226 (not ((_ is Nil!60091) (tail!10158 input!5817))))))

(declare-fun d!1669182 () Bool)

(assert (=> d!1669182 e!3222659))

(declare-fun res!2198225 () Bool)

(assert (=> d!1669182 (=> res!2198225 e!3222659)))

(declare-fun lt!2129525 () Bool)

(assert (=> d!1669182 (= res!2198225 (not lt!2129525))))

(assert (=> d!1669182 (= lt!2129525 e!3222660)))

(declare-fun res!2198227 () Bool)

(assert (=> d!1669182 (=> res!2198227 e!3222660)))

(assert (=> d!1669182 (= res!2198227 ((_ is Nil!60091) (tail!10158 lt!2129212)))))

(assert (=> d!1669182 (= (isPrefix!5758 (tail!10158 lt!2129212) (tail!10158 input!5817)) lt!2129525)))

(declare-fun b!5171997 () Bool)

(declare-fun res!2198228 () Bool)

(assert (=> b!5171997 (=> (not res!2198228) (not e!3222661))))

(assert (=> b!5171997 (= res!2198228 (= (head!11049 (tail!10158 lt!2129212)) (head!11049 (tail!10158 input!5817))))))

(assert (= (and d!1669182 (not res!2198227)) b!5171996))

(assert (= (and b!5171996 res!2198226) b!5171997))

(assert (= (and b!5171997 res!2198228) b!5171998))

(assert (= (and d!1669182 (not res!2198225)) b!5171999))

(assert (=> b!5171999 m!6224668))

(assert (=> b!5171999 m!6225124))

(assert (=> b!5171999 m!6224838))

(declare-fun m!6225156 () Bool)

(assert (=> b!5171999 m!6225156))

(assert (=> b!5171998 m!6224838))

(declare-fun m!6225158 () Bool)

(assert (=> b!5171998 m!6225158))

(assert (=> b!5171998 m!6224668))

(assert (=> b!5171998 m!6225126))

(assert (=> b!5171998 m!6225158))

(assert (=> b!5171998 m!6225126))

(declare-fun m!6225160 () Bool)

(assert (=> b!5171998 m!6225160))

(assert (=> b!5171997 m!6224838))

(declare-fun m!6225162 () Bool)

(assert (=> b!5171997 m!6225162))

(assert (=> b!5171997 m!6224668))

(assert (=> b!5171997 m!6225130))

(assert (=> b!5171842 d!1669182))

(declare-fun d!1669184 () Bool)

(assert (=> d!1669184 (= (tail!10158 lt!2129212) (t!373368 lt!2129212))))

(assert (=> b!5171842 d!1669184))

(assert (=> b!5171842 d!1669166))

(assert (=> bm!363103 d!1669054))

(assert (=> bm!363110 d!1669052))

(assert (=> b!5171843 d!1669026))

(declare-fun d!1669186 () Bool)

(declare-fun lt!2129526 () Int)

(assert (=> d!1669186 (>= lt!2129526 0)))

(declare-fun e!3222662 () Int)

(assert (=> d!1669186 (= lt!2129526 e!3222662)))

(declare-fun c!890357 () Bool)

(assert (=> d!1669186 (= c!890357 ((_ is Nil!60091) lt!2129212))))

(assert (=> d!1669186 (= (size!39661 lt!2129212) lt!2129526)))

(declare-fun b!5172000 () Bool)

(assert (=> b!5172000 (= e!3222662 0)))

(declare-fun b!5172001 () Bool)

(assert (=> b!5172001 (= e!3222662 (+ 1 (size!39661 (t!373368 lt!2129212))))))

(assert (= (and d!1669186 c!890357) b!5172000))

(assert (= (and d!1669186 (not c!890357)) b!5172001))

(declare-fun m!6225164 () Bool)

(assert (=> b!5172001 m!6225164))

(assert (=> b!5171843 d!1669186))

(declare-fun d!1669188 () Bool)

(declare-fun res!2198233 () Bool)

(declare-fun e!3222668 () Bool)

(assert (=> d!1669188 (=> res!2198233 e!3222668)))

(assert (=> d!1669188 (= res!2198233 ((_ is Nil!60092) (exprs!4509 setElem!32052)))))

(assert (=> d!1669188 (= (forall!14135 (exprs!4509 setElem!32052) lambda!258197) e!3222668)))

(declare-fun b!5172008 () Bool)

(declare-fun e!3222669 () Bool)

(assert (=> b!5172008 (= e!3222668 e!3222669)))

(declare-fun res!2198234 () Bool)

(assert (=> b!5172008 (=> (not res!2198234) (not e!3222669))))

(declare-fun dynLambda!23872 (Int Regex!14625) Bool)

(assert (=> b!5172008 (= res!2198234 (dynLambda!23872 lambda!258197 (h!66540 (exprs!4509 setElem!32052))))))

(declare-fun b!5172009 () Bool)

(assert (=> b!5172009 (= e!3222669 (forall!14135 (t!373369 (exprs!4509 setElem!32052)) lambda!258197))))

(assert (= (and d!1669188 (not res!2198233)) b!5172008))

(assert (= (and b!5172008 res!2198234) b!5172009))

(declare-fun b_lambda!200883 () Bool)

(assert (=> (not b_lambda!200883) (not b!5172008)))

(declare-fun m!6225166 () Bool)

(assert (=> b!5172008 m!6225166))

(declare-fun m!6225168 () Bool)

(assert (=> b!5172009 m!6225168))

(assert (=> d!1669022 d!1669188))

(declare-fun d!1669190 () Bool)

(assert (=> d!1669190 (= (tail!10158 lt!2129211) (t!373368 lt!2129211))))

(assert (=> bm!363104 d!1669190))

(declare-fun d!1669192 () Bool)

(declare-fun res!2198235 () Bool)

(declare-fun e!3222670 () Bool)

(assert (=> d!1669192 (=> res!2198235 e!3222670)))

(assert (=> d!1669192 (= res!2198235 ((_ is Nil!60092) (exprs!4509 setElem!32051)))))

(assert (=> d!1669192 (= (forall!14135 (exprs!4509 setElem!32051) lambda!258196) e!3222670)))

(declare-fun b!5172010 () Bool)

(declare-fun e!3222671 () Bool)

(assert (=> b!5172010 (= e!3222670 e!3222671)))

(declare-fun res!2198236 () Bool)

(assert (=> b!5172010 (=> (not res!2198236) (not e!3222671))))

(assert (=> b!5172010 (= res!2198236 (dynLambda!23872 lambda!258196 (h!66540 (exprs!4509 setElem!32051))))))

(declare-fun b!5172011 () Bool)

(assert (=> b!5172011 (= e!3222671 (forall!14135 (t!373369 (exprs!4509 setElem!32051)) lambda!258196))))

(assert (= (and d!1669192 (not res!2198235)) b!5172010))

(assert (= (and b!5172010 res!2198236) b!5172011))

(declare-fun b_lambda!200885 () Bool)

(assert (=> (not b_lambda!200885) (not b!5172010)))

(declare-fun m!6225170 () Bool)

(assert (=> b!5172010 m!6225170))

(declare-fun m!6225172 () Bool)

(assert (=> b!5172011 m!6225172))

(assert (=> d!1669010 d!1669192))

(declare-fun d!1669194 () Bool)

(assert (=> d!1669194 (= (head!11049 lt!2129212) (h!66539 lt!2129212))))

(assert (=> b!5171841 d!1669194))

(assert (=> b!5171841 d!1669160))

(declare-fun d!1669196 () Bool)

(assert (=> d!1669196 (= input!5817 testedP!294)))

(assert (=> d!1669196 true))

(declare-fun _$60!964 () Unit!151764)

(assert (=> d!1669196 (= (choose!38332 input!5817 testedP!294 input!5817) _$60!964)))

(assert (=> d!1669006 d!1669196))

(assert (=> d!1669006 d!1669002))

(assert (=> b!5171813 d!1669138))

(assert (=> b!5171813 d!1669024))

(assert (=> b!5171813 d!1669028))

(declare-fun d!1669200 () Bool)

(assert (=> d!1669200 (= (++!13149 (++!13149 testedP!294 (Cons!60091 lt!2129414 Nil!60091)) lt!2129391) input!5817)))

(declare-fun lt!2129542 () Unit!151764)

(declare-fun choose!38338 (List!60215 C!29520 List!60215 List!60215) Unit!151764)

(assert (=> d!1669200 (= lt!2129542 (choose!38338 testedP!294 lt!2129414 lt!2129391 input!5817))))

(assert (=> d!1669200 (= (++!13149 testedP!294 (Cons!60091 lt!2129414 lt!2129391)) input!5817)))

(assert (=> d!1669200 (= (lemmaMoveElementToOtherListKeepsConcatEq!1578 testedP!294 lt!2129414 lt!2129391 input!5817) lt!2129542)))

(declare-fun bs!1203664 () Bool)

(assert (= bs!1203664 d!1669200))

(assert (=> bs!1203664 m!6224810))

(assert (=> bs!1203664 m!6224810))

(assert (=> bs!1203664 m!6224814))

(declare-fun m!6225208 () Bool)

(assert (=> bs!1203664 m!6225208))

(declare-fun m!6225210 () Bool)

(assert (=> bs!1203664 m!6225210))

(assert (=> b!5171813 d!1669200))

(declare-fun b!5172026 () Bool)

(declare-fun res!2198245 () Bool)

(declare-fun e!3222680 () Bool)

(assert (=> b!5172026 (=> (not res!2198245) (not e!3222680))))

(declare-fun lt!2129544 () List!60215)

(assert (=> b!5172026 (= res!2198245 (= (size!39661 lt!2129544) (+ (size!39661 (++!13149 testedP!294 (Cons!60091 lt!2129414 Nil!60091))) (size!39661 lt!2129391))))))

(declare-fun b!5172024 () Bool)

(declare-fun e!3222679 () List!60215)

(assert (=> b!5172024 (= e!3222679 lt!2129391)))

(declare-fun d!1669208 () Bool)

(assert (=> d!1669208 e!3222680))

(declare-fun res!2198246 () Bool)

(assert (=> d!1669208 (=> (not res!2198246) (not e!3222680))))

(assert (=> d!1669208 (= res!2198246 (= (content!10649 lt!2129544) ((_ map or) (content!10649 (++!13149 testedP!294 (Cons!60091 lt!2129414 Nil!60091))) (content!10649 lt!2129391))))))

(assert (=> d!1669208 (= lt!2129544 e!3222679)))

(declare-fun c!890361 () Bool)

(assert (=> d!1669208 (= c!890361 ((_ is Nil!60091) (++!13149 testedP!294 (Cons!60091 lt!2129414 Nil!60091))))))

(assert (=> d!1669208 (= (++!13149 (++!13149 testedP!294 (Cons!60091 lt!2129414 Nil!60091)) lt!2129391) lt!2129544)))

(declare-fun b!5172027 () Bool)

(assert (=> b!5172027 (= e!3222680 (or (not (= lt!2129391 Nil!60091)) (= lt!2129544 (++!13149 testedP!294 (Cons!60091 lt!2129414 Nil!60091)))))))

(declare-fun b!5172025 () Bool)

(assert (=> b!5172025 (= e!3222679 (Cons!60091 (h!66539 (++!13149 testedP!294 (Cons!60091 lt!2129414 Nil!60091))) (++!13149 (t!373368 (++!13149 testedP!294 (Cons!60091 lt!2129414 Nil!60091))) lt!2129391)))))

(assert (= (and d!1669208 c!890361) b!5172024))

(assert (= (and d!1669208 (not c!890361)) b!5172025))

(assert (= (and d!1669208 res!2198246) b!5172026))

(assert (= (and b!5172026 res!2198245) b!5172027))

(declare-fun m!6225222 () Bool)

(assert (=> b!5172026 m!6225222))

(assert (=> b!5172026 m!6224810))

(declare-fun m!6225224 () Bool)

(assert (=> b!5172026 m!6225224))

(declare-fun m!6225226 () Bool)

(assert (=> b!5172026 m!6225226))

(declare-fun m!6225228 () Bool)

(assert (=> d!1669208 m!6225228))

(assert (=> d!1669208 m!6224810))

(declare-fun m!6225230 () Bool)

(assert (=> d!1669208 m!6225230))

(declare-fun m!6225232 () Bool)

(assert (=> d!1669208 m!6225232))

(declare-fun m!6225234 () Bool)

(assert (=> b!5172025 m!6225234))

(assert (=> b!5171813 d!1669208))

(assert (=> b!5171813 d!1669126))

(assert (=> b!5171813 d!1669050))

(assert (=> b!5171813 d!1669052))

(assert (=> b!5171813 d!1669026))

(assert (=> b!5171813 d!1669190))

(declare-fun b!5172030 () Bool)

(declare-fun res!2198247 () Bool)

(declare-fun e!3222682 () Bool)

(assert (=> b!5172030 (=> (not res!2198247) (not e!3222682))))

(declare-fun lt!2129545 () List!60215)

(assert (=> b!5172030 (= res!2198247 (= (size!39661 lt!2129545) (+ (size!39661 testedP!294) (size!39661 (Cons!60091 lt!2129414 Nil!60091)))))))

(declare-fun b!5172028 () Bool)

(declare-fun e!3222681 () List!60215)

(assert (=> b!5172028 (= e!3222681 (Cons!60091 lt!2129414 Nil!60091))))

(declare-fun d!1669212 () Bool)

(assert (=> d!1669212 e!3222682))

(declare-fun res!2198248 () Bool)

(assert (=> d!1669212 (=> (not res!2198248) (not e!3222682))))

(assert (=> d!1669212 (= res!2198248 (= (content!10649 lt!2129545) ((_ map or) (content!10649 testedP!294) (content!10649 (Cons!60091 lt!2129414 Nil!60091)))))))

(assert (=> d!1669212 (= lt!2129545 e!3222681)))

(declare-fun c!890362 () Bool)

(assert (=> d!1669212 (= c!890362 ((_ is Nil!60091) testedP!294))))

(assert (=> d!1669212 (= (++!13149 testedP!294 (Cons!60091 lt!2129414 Nil!60091)) lt!2129545)))

(declare-fun b!5172031 () Bool)

(assert (=> b!5172031 (= e!3222682 (or (not (= (Cons!60091 lt!2129414 Nil!60091) Nil!60091)) (= lt!2129545 testedP!294)))))

(declare-fun b!5172029 () Bool)

(assert (=> b!5172029 (= e!3222681 (Cons!60091 (h!66539 testedP!294) (++!13149 (t!373368 testedP!294) (Cons!60091 lt!2129414 Nil!60091))))))

(assert (= (and d!1669212 c!890362) b!5172028))

(assert (= (and d!1669212 (not c!890362)) b!5172029))

(assert (= (and d!1669212 res!2198248) b!5172030))

(assert (= (and b!5172030 res!2198247) b!5172031))

(declare-fun m!6225236 () Bool)

(assert (=> b!5172030 m!6225236))

(assert (=> b!5172030 m!6224634))

(declare-fun m!6225238 () Bool)

(assert (=> b!5172030 m!6225238))

(declare-fun m!6225240 () Bool)

(assert (=> d!1669212 m!6225240))

(assert (=> d!1669212 m!6224830))

(declare-fun m!6225242 () Bool)

(assert (=> d!1669212 m!6225242))

(declare-fun m!6225244 () Bool)

(assert (=> b!5172029 m!6225244))

(assert (=> b!5171813 d!1669212))

(assert (=> b!5171813 d!1669048))

(assert (=> b!5171813 d!1669128))

(assert (=> b!5171813 d!1669056))

(declare-fun d!1669214 () Bool)

(assert (=> d!1669214 (= (isEmpty!32173 (_1!35205 lt!2129406)) ((_ is Nil!60091) (_1!35205 lt!2129406)))))

(assert (=> b!5171814 d!1669214))

(assert (=> bm!363105 d!1669002))

(assert (=> d!1668998 d!1669002))

(declare-fun d!1669216 () Bool)

(assert (=> d!1669216 (isPrefix!5758 input!5817 input!5817)))

(assert (=> d!1669216 true))

(declare-fun _$45!2347 () Unit!151764)

(assert (=> d!1669216 (= (choose!38330 input!5817 input!5817) _$45!2347)))

(declare-fun bs!1203666 () Bool)

(assert (= bs!1203666 d!1669216))

(assert (=> bs!1203666 m!6224648))

(assert (=> d!1668998 d!1669216))

(declare-fun d!1669220 () Bool)

(declare-fun c!890365 () Bool)

(assert (=> d!1669220 (= c!890365 ((_ is Nil!60091) lt!2129421))))

(declare-fun e!3222690 () (InoxSet C!29520))

(assert (=> d!1669220 (= (content!10649 lt!2129421) e!3222690)))

(declare-fun b!5172042 () Bool)

(assert (=> b!5172042 (= e!3222690 ((as const (Array C!29520 Bool)) false))))

(declare-fun b!5172043 () Bool)

(assert (=> b!5172043 (= e!3222690 ((_ map or) (store ((as const (Array C!29520 Bool)) false) (h!66539 lt!2129421) true) (content!10649 (t!373368 lt!2129421))))))

(assert (= (and d!1669220 c!890365) b!5172042))

(assert (= (and d!1669220 (not c!890365)) b!5172043))

(declare-fun m!6225260 () Bool)

(assert (=> b!5172043 m!6225260))

(declare-fun m!6225262 () Bool)

(assert (=> b!5172043 m!6225262))

(assert (=> d!1669056 d!1669220))

(declare-fun d!1669230 () Bool)

(declare-fun c!890366 () Bool)

(assert (=> d!1669230 (= c!890366 ((_ is Nil!60091) testedP!294))))

(declare-fun e!3222691 () (InoxSet C!29520))

(assert (=> d!1669230 (= (content!10649 testedP!294) e!3222691)))

(declare-fun b!5172044 () Bool)

(assert (=> b!5172044 (= e!3222691 ((as const (Array C!29520 Bool)) false))))

(declare-fun b!5172045 () Bool)

(assert (=> b!5172045 (= e!3222691 ((_ map or) (store ((as const (Array C!29520 Bool)) false) (h!66539 testedP!294) true) (content!10649 (t!373368 testedP!294))))))

(assert (= (and d!1669230 c!890366) b!5172044))

(assert (= (and d!1669230 (not c!890366)) b!5172045))

(declare-fun m!6225264 () Bool)

(assert (=> b!5172045 m!6225264))

(assert (=> b!5172045 m!6225114))

(assert (=> d!1669056 d!1669230))

(declare-fun d!1669234 () Bool)

(declare-fun c!890367 () Bool)

(assert (=> d!1669234 (= c!890367 ((_ is Nil!60091) (Cons!60091 (head!11049 lt!2129211) Nil!60091)))))

(declare-fun e!3222692 () (InoxSet C!29520))

(assert (=> d!1669234 (= (content!10649 (Cons!60091 (head!11049 lt!2129211) Nil!60091)) e!3222692)))

(declare-fun b!5172046 () Bool)

(assert (=> b!5172046 (= e!3222692 ((as const (Array C!29520 Bool)) false))))

(declare-fun b!5172047 () Bool)

(assert (=> b!5172047 (= e!3222692 ((_ map or) (store ((as const (Array C!29520 Bool)) false) (h!66539 (Cons!60091 (head!11049 lt!2129211) Nil!60091)) true) (content!10649 (t!373368 (Cons!60091 (head!11049 lt!2129211) Nil!60091)))))))

(assert (= (and d!1669234 c!890367) b!5172046))

(assert (= (and d!1669234 (not c!890367)) b!5172047))

(declare-fun m!6225266 () Bool)

(assert (=> b!5172047 m!6225266))

(declare-fun m!6225268 () Bool)

(assert (=> b!5172047 m!6225268))

(assert (=> d!1669056 d!1669234))

(declare-fun b!5172051 () Bool)

(declare-fun e!3222693 () Bool)

(assert (=> b!5172051 (= e!3222693 (>= (size!39661 (++!13149 testedP!294 lt!2129211)) (size!39661 testedP!294)))))

(declare-fun b!5172050 () Bool)

(declare-fun e!3222695 () Bool)

(assert (=> b!5172050 (= e!3222695 (isPrefix!5758 (tail!10158 testedP!294) (tail!10158 (++!13149 testedP!294 lt!2129211))))))

(declare-fun b!5172048 () Bool)

(declare-fun e!3222694 () Bool)

(assert (=> b!5172048 (= e!3222694 e!3222695)))

(declare-fun res!2198256 () Bool)

(assert (=> b!5172048 (=> (not res!2198256) (not e!3222695))))

(assert (=> b!5172048 (= res!2198256 (not ((_ is Nil!60091) (++!13149 testedP!294 lt!2129211))))))

(declare-fun d!1669236 () Bool)

(assert (=> d!1669236 e!3222693))

(declare-fun res!2198255 () Bool)

(assert (=> d!1669236 (=> res!2198255 e!3222693)))

(declare-fun lt!2129550 () Bool)

(assert (=> d!1669236 (= res!2198255 (not lt!2129550))))

(assert (=> d!1669236 (= lt!2129550 e!3222694)))

(declare-fun res!2198257 () Bool)

(assert (=> d!1669236 (=> res!2198257 e!3222694)))

(assert (=> d!1669236 (= res!2198257 ((_ is Nil!60091) testedP!294))))

(assert (=> d!1669236 (= (isPrefix!5758 testedP!294 (++!13149 testedP!294 lt!2129211)) lt!2129550)))

(declare-fun b!5172049 () Bool)

(declare-fun res!2198258 () Bool)

(assert (=> b!5172049 (=> (not res!2198258) (not e!3222695))))

(assert (=> b!5172049 (= res!2198258 (= (head!11049 testedP!294) (head!11049 (++!13149 testedP!294 lt!2129211))))))

(assert (= (and d!1669236 (not res!2198257)) b!5172048))

(assert (= (and b!5172048 res!2198256) b!5172049))

(assert (= (and b!5172049 res!2198258) b!5172050))

(assert (= (and d!1669236 (not res!2198255)) b!5172051))

(assert (=> b!5172051 m!6224790))

(declare-fun m!6225270 () Bool)

(assert (=> b!5172051 m!6225270))

(assert (=> b!5172051 m!6224634))

(assert (=> b!5172050 m!6224666))

(assert (=> b!5172050 m!6224790))

(declare-fun m!6225272 () Bool)

(assert (=> b!5172050 m!6225272))

(assert (=> b!5172050 m!6224666))

(assert (=> b!5172050 m!6225272))

(declare-fun m!6225274 () Bool)

(assert (=> b!5172050 m!6225274))

(assert (=> b!5172049 m!6224672))

(assert (=> b!5172049 m!6224790))

(declare-fun m!6225276 () Bool)

(assert (=> b!5172049 m!6225276))

(assert (=> d!1669030 d!1669236))

(declare-fun b!5172054 () Bool)

(declare-fun res!2198259 () Bool)

(declare-fun e!3222697 () Bool)

(assert (=> b!5172054 (=> (not res!2198259) (not e!3222697))))

(declare-fun lt!2129551 () List!60215)

(assert (=> b!5172054 (= res!2198259 (= (size!39661 lt!2129551) (+ (size!39661 testedP!294) (size!39661 lt!2129211))))))

(declare-fun b!5172052 () Bool)

(declare-fun e!3222696 () List!60215)

(assert (=> b!5172052 (= e!3222696 lt!2129211)))

(declare-fun d!1669238 () Bool)

(assert (=> d!1669238 e!3222697))

(declare-fun res!2198260 () Bool)

(assert (=> d!1669238 (=> (not res!2198260) (not e!3222697))))

(assert (=> d!1669238 (= res!2198260 (= (content!10649 lt!2129551) ((_ map or) (content!10649 testedP!294) (content!10649 lt!2129211))))))

(assert (=> d!1669238 (= lt!2129551 e!3222696)))

(declare-fun c!890368 () Bool)

(assert (=> d!1669238 (= c!890368 ((_ is Nil!60091) testedP!294))))

(assert (=> d!1669238 (= (++!13149 testedP!294 lt!2129211) lt!2129551)))

(declare-fun b!5172055 () Bool)

(assert (=> b!5172055 (= e!3222697 (or (not (= lt!2129211 Nil!60091)) (= lt!2129551 testedP!294)))))

(declare-fun b!5172053 () Bool)

(assert (=> b!5172053 (= e!3222696 (Cons!60091 (h!66539 testedP!294) (++!13149 (t!373368 testedP!294) lt!2129211)))))

(assert (= (and d!1669238 c!890368) b!5172052))

(assert (= (and d!1669238 (not c!890368)) b!5172053))

(assert (= (and d!1669238 res!2198260) b!5172054))

(assert (= (and b!5172054 res!2198259) b!5172055))

(declare-fun m!6225278 () Bool)

(assert (=> b!5172054 m!6225278))

(assert (=> b!5172054 m!6224634))

(declare-fun m!6225280 () Bool)

(assert (=> b!5172054 m!6225280))

(declare-fun m!6225282 () Bool)

(assert (=> d!1669238 m!6225282))

(assert (=> d!1669238 m!6224830))

(declare-fun m!6225284 () Bool)

(assert (=> d!1669238 m!6225284))

(declare-fun m!6225286 () Bool)

(assert (=> b!5172053 m!6225286))

(assert (=> d!1669030 d!1669238))

(assert (=> d!1669030 d!1669028))

(declare-fun d!1669240 () Bool)

(assert (=> d!1669240 (isPrefix!5758 testedP!294 (++!13149 testedP!294 lt!2129211))))

(declare-fun lt!2129556 () Unit!151764)

(declare-fun choose!38341 (List!60215 List!60215) Unit!151764)

(assert (=> d!1669240 (= lt!2129556 (choose!38341 testedP!294 lt!2129211))))

(assert (=> d!1669240 (= (lemmaConcatTwoListThenFirstIsPrefix!3591 testedP!294 lt!2129211) lt!2129556)))

(declare-fun bs!1203670 () Bool)

(assert (= bs!1203670 d!1669240))

(assert (=> bs!1203670 m!6224790))

(assert (=> bs!1203670 m!6224790))

(assert (=> bs!1203670 m!6224792))

(declare-fun m!6225294 () Bool)

(assert (=> bs!1203670 m!6225294))

(assert (=> d!1669030 d!1669240))

(declare-fun b!5172063 () Bool)

(declare-fun res!2198261 () Bool)

(declare-fun e!3222702 () Bool)

(assert (=> b!5172063 (=> (not res!2198261) (not e!3222702))))

(declare-fun lt!2129557 () List!60215)

(assert (=> b!5172063 (= res!2198261 (= (size!39661 lt!2129557) (+ (size!39661 (_1!35205 lt!2129389)) (size!39661 (_2!35205 lt!2129389)))))))

(declare-fun b!5172061 () Bool)

(declare-fun e!3222701 () List!60215)

(assert (=> b!5172061 (= e!3222701 (_2!35205 lt!2129389))))

(declare-fun d!1669248 () Bool)

(assert (=> d!1669248 e!3222702))

(declare-fun res!2198262 () Bool)

(assert (=> d!1669248 (=> (not res!2198262) (not e!3222702))))

(assert (=> d!1669248 (= res!2198262 (= (content!10649 lt!2129557) ((_ map or) (content!10649 (_1!35205 lt!2129389)) (content!10649 (_2!35205 lt!2129389)))))))

(assert (=> d!1669248 (= lt!2129557 e!3222701)))

(declare-fun c!890371 () Bool)

(assert (=> d!1669248 (= c!890371 ((_ is Nil!60091) (_1!35205 lt!2129389)))))

(assert (=> d!1669248 (= (++!13149 (_1!35205 lt!2129389) (_2!35205 lt!2129389)) lt!2129557)))

(declare-fun b!5172064 () Bool)

(assert (=> b!5172064 (= e!3222702 (or (not (= (_2!35205 lt!2129389) Nil!60091)) (= lt!2129557 (_1!35205 lt!2129389))))))

(declare-fun b!5172062 () Bool)

(assert (=> b!5172062 (= e!3222701 (Cons!60091 (h!66539 (_1!35205 lt!2129389)) (++!13149 (t!373368 (_1!35205 lt!2129389)) (_2!35205 lt!2129389))))))

(assert (= (and d!1669248 c!890371) b!5172061))

(assert (= (and d!1669248 (not c!890371)) b!5172062))

(assert (= (and d!1669248 res!2198262) b!5172063))

(assert (= (and b!5172063 res!2198261) b!5172064))

(declare-fun m!6225298 () Bool)

(assert (=> b!5172063 m!6225298))

(assert (=> b!5172063 m!6224802))

(declare-fun m!6225300 () Bool)

(assert (=> b!5172063 m!6225300))

(declare-fun m!6225302 () Bool)

(assert (=> d!1669248 m!6225302))

(declare-fun m!6225306 () Bool)

(assert (=> d!1669248 m!6225306))

(declare-fun m!6225308 () Bool)

(assert (=> d!1669248 m!6225308))

(declare-fun m!6225310 () Bool)

(assert (=> b!5172062 m!6225310))

(assert (=> d!1669030 d!1669248))

(declare-fun d!1669250 () Bool)

(assert (=> d!1669250 (= lt!2129211 lt!2129404)))

(declare-fun lt!2129560 () Unit!151764)

(declare-fun choose!38342 (List!60215 List!60215 List!60215 List!60215 List!60215) Unit!151764)

(assert (=> d!1669250 (= lt!2129560 (choose!38342 testedP!294 lt!2129211 testedP!294 lt!2129404 input!5817))))

(assert (=> d!1669250 (isPrefix!5758 testedP!294 input!5817)))

(assert (=> d!1669250 (= (lemmaSamePrefixThenSameSuffix!2697 testedP!294 lt!2129211 testedP!294 lt!2129404 input!5817) lt!2129560)))

(declare-fun bs!1203671 () Bool)

(assert (= bs!1203671 d!1669250))

(declare-fun m!6225312 () Bool)

(assert (=> bs!1203671 m!6225312))

(assert (=> bs!1203671 m!6224644))

(assert (=> d!1669030 d!1669250))

(declare-fun bs!1203674 () Bool)

(declare-fun d!1669254 () Bool)

(assert (= bs!1203674 (and d!1669254 d!1669054)))

(declare-fun lambda!258246 () Int)

(assert (=> bs!1203674 (not (= lambda!258246 lambda!258207))))

(declare-fun bs!1203675 () Bool)

(declare-fun b!5172094 () Bool)

(assert (= bs!1203675 (and b!5172094 d!1669054)))

(declare-fun lambda!258247 () Int)

(assert (=> bs!1203675 (not (= lambda!258247 lambda!258207))))

(declare-fun bs!1203676 () Bool)

(assert (= bs!1203676 (and b!5172094 d!1669254)))

(assert (=> bs!1203676 (not (= lambda!258247 lambda!258246))))

(declare-fun bs!1203677 () Bool)

(declare-fun b!5172095 () Bool)

(assert (= bs!1203677 (and b!5172095 d!1669054)))

(declare-fun lambda!258248 () Int)

(assert (=> bs!1203677 (not (= lambda!258248 lambda!258207))))

(declare-fun bs!1203678 () Bool)

(assert (= bs!1203678 (and b!5172095 d!1669254)))

(assert (=> bs!1203678 (not (= lambda!258248 lambda!258246))))

(declare-fun bs!1203679 () Bool)

(assert (= bs!1203679 (and b!5172095 b!5172094)))

(assert (=> bs!1203679 (= lambda!258248 lambda!258247)))

(declare-fun lt!2129582 () Bool)

(declare-datatypes ((Option!14836 0))(
  ( (None!14835) (Some!14835 (v!50864 List!60215)) )
))
(declare-fun isEmpty!32175 (Option!14836) Bool)

(declare-fun getLanguageWitness!1007 ((InoxSet Context!8018)) Option!14836)

(assert (=> d!1669254 (= lt!2129582 (isEmpty!32175 (getLanguageWitness!1007 z!4581)))))

(declare-fun forall!14137 ((InoxSet Context!8018) Int) Bool)

(assert (=> d!1669254 (= lt!2129582 (forall!14137 z!4581 lambda!258246))))

(declare-fun lt!2129583 () Unit!151764)

(declare-fun e!3222720 () Unit!151764)

(assert (=> d!1669254 (= lt!2129583 e!3222720)))

(declare-fun c!890382 () Bool)

(assert (=> d!1669254 (= c!890382 (not (forall!14137 z!4581 lambda!258246)))))

(assert (=> d!1669254 (= (lostCauseZipper!1330 z!4581) lt!2129582)))

(declare-fun bm!363138 () Bool)

(declare-fun lt!2129580 () List!60217)

(declare-fun call!363142 () Bool)

(declare-fun lt!2129584 () List!60217)

(assert (=> bm!363138 (= call!363142 (exists!1919 (ite c!890382 lt!2129584 lt!2129580) (ite c!890382 lambda!258247 lambda!258248)))))

(declare-fun bm!363137 () Bool)

(declare-fun call!363143 () List!60217)

(assert (=> bm!363137 (= call!363143 (toList!8450 z!4581))))

(declare-fun Unit!151782 () Unit!151764)

(assert (=> b!5172094 (= e!3222720 Unit!151782)))

(assert (=> b!5172094 (= lt!2129584 call!363143)))

(declare-fun lt!2129579 () Unit!151764)

(declare-fun lemmaNotForallThenExists!471 (List!60217 Int) Unit!151764)

(assert (=> b!5172094 (= lt!2129579 (lemmaNotForallThenExists!471 lt!2129584 lambda!258246))))

(assert (=> b!5172094 call!363142))

(declare-fun lt!2129577 () Unit!151764)

(assert (=> b!5172094 (= lt!2129577 lt!2129579)))

(declare-fun Unit!151783 () Unit!151764)

(assert (=> b!5172095 (= e!3222720 Unit!151783)))

(assert (=> b!5172095 (= lt!2129580 call!363143)))

(declare-fun lt!2129578 () Unit!151764)

(declare-fun lemmaForallThenNotExists!438 (List!60217 Int) Unit!151764)

(assert (=> b!5172095 (= lt!2129578 (lemmaForallThenNotExists!438 lt!2129580 lambda!258246))))

(assert (=> b!5172095 (not call!363142)))

(declare-fun lt!2129581 () Unit!151764)

(assert (=> b!5172095 (= lt!2129581 lt!2129578)))

(assert (= (and d!1669254 c!890382) b!5172094))

(assert (= (and d!1669254 (not c!890382)) b!5172095))

(assert (= (or b!5172094 b!5172095) bm!363137))

(assert (= (or b!5172094 b!5172095) bm!363138))

(declare-fun m!6225318 () Bool)

(assert (=> b!5172094 m!6225318))

(declare-fun m!6225320 () Bool)

(assert (=> bm!363138 m!6225320))

(declare-fun m!6225322 () Bool)

(assert (=> d!1669254 m!6225322))

(assert (=> d!1669254 m!6225322))

(declare-fun m!6225324 () Bool)

(assert (=> d!1669254 m!6225324))

(declare-fun m!6225326 () Bool)

(assert (=> d!1669254 m!6225326))

(assert (=> d!1669254 m!6225326))

(declare-fun m!6225328 () Bool)

(assert (=> b!5172095 m!6225328))

(assert (=> bm!363137 m!6225098))

(assert (=> d!1669030 d!1669254))

(declare-fun bs!1203680 () Bool)

(declare-fun d!1669258 () Bool)

(assert (= bs!1203680 (and d!1669258 d!1669152)))

(declare-fun lambda!258249 () Int)

(assert (=> bs!1203680 (= (= call!363114 (h!66539 testedP!294)) (= lambda!258249 lambda!258216))))

(assert (=> d!1669258 true))

(assert (=> d!1669258 (= (derivationStepZipper!979 z!4581 call!363114) (flatMap!448 z!4581 lambda!258249))))

(declare-fun bs!1203681 () Bool)

(assert (= bs!1203681 d!1669258))

(declare-fun m!6225330 () Bool)

(assert (=> bs!1203681 m!6225330))

(assert (=> bm!363106 d!1669258))

(declare-fun condSetEmpty!32063 () Bool)

(assert (=> setNonEmpty!32059 (= condSetEmpty!32063 (= setRest!32059 ((as const (Array Context!8018 Bool)) false)))))

(declare-fun setRes!32063 () Bool)

(assert (=> setNonEmpty!32059 (= tp!1450879 setRes!32063)))

(declare-fun setIsEmpty!32063 () Bool)

(assert (=> setIsEmpty!32063 setRes!32063))

(declare-fun setElem!32063 () Context!8018)

(declare-fun e!3222721 () Bool)

(declare-fun tp!1450918 () Bool)

(declare-fun setNonEmpty!32063 () Bool)

(assert (=> setNonEmpty!32063 (= setRes!32063 (and tp!1450918 (inv!79809 setElem!32063) e!3222721))))

(declare-fun setRest!32063 () (InoxSet Context!8018))

(assert (=> setNonEmpty!32063 (= setRest!32059 ((_ map or) (store ((as const (Array Context!8018 Bool)) false) setElem!32063 true) setRest!32063))))

(declare-fun b!5172096 () Bool)

(declare-fun tp!1450919 () Bool)

(assert (=> b!5172096 (= e!3222721 tp!1450919)))

(assert (= (and setNonEmpty!32059 condSetEmpty!32063) setIsEmpty!32063))

(assert (= (and setNonEmpty!32059 (not condSetEmpty!32063)) setNonEmpty!32063))

(assert (= setNonEmpty!32063 b!5172096))

(declare-fun m!6225332 () Bool)

(assert (=> setNonEmpty!32063 m!6225332))

(declare-fun b!5172097 () Bool)

(declare-fun e!3222722 () Bool)

(declare-fun tp!1450920 () Bool)

(assert (=> b!5172097 (= e!3222722 (and tp_is_empty!38503 tp!1450920))))

(assert (=> b!5171848 (= tp!1450866 e!3222722)))

(assert (= (and b!5171848 ((_ is Cons!60091) (t!373368 (t!373368 input!5817)))) b!5172097))

(declare-fun b!5172108 () Bool)

(declare-fun e!3222725 () Bool)

(assert (=> b!5172108 (= e!3222725 tp_is_empty!38503)))

(declare-fun b!5172109 () Bool)

(declare-fun tp!1450932 () Bool)

(declare-fun tp!1450934 () Bool)

(assert (=> b!5172109 (= e!3222725 (and tp!1450932 tp!1450934))))

(declare-fun b!5172111 () Bool)

(declare-fun tp!1450931 () Bool)

(declare-fun tp!1450933 () Bool)

(assert (=> b!5172111 (= e!3222725 (and tp!1450931 tp!1450933))))

(assert (=> b!5171854 (= tp!1450873 e!3222725)))

(declare-fun b!5172110 () Bool)

(declare-fun tp!1450935 () Bool)

(assert (=> b!5172110 (= e!3222725 tp!1450935)))

(assert (= (and b!5171854 ((_ is ElementMatch!14625) (h!66540 (exprs!4509 setElem!32052)))) b!5172108))

(assert (= (and b!5171854 ((_ is Concat!23470) (h!66540 (exprs!4509 setElem!32052)))) b!5172109))

(assert (= (and b!5171854 ((_ is Star!14625) (h!66540 (exprs!4509 setElem!32052)))) b!5172110))

(assert (= (and b!5171854 ((_ is Union!14625) (h!66540 (exprs!4509 setElem!32052)))) b!5172111))

(declare-fun b!5172112 () Bool)

(declare-fun e!3222726 () Bool)

(declare-fun tp!1450936 () Bool)

(declare-fun tp!1450937 () Bool)

(assert (=> b!5172112 (= e!3222726 (and tp!1450936 tp!1450937))))

(assert (=> b!5171854 (= tp!1450874 e!3222726)))

(assert (= (and b!5171854 ((_ is Cons!60092) (t!373369 (exprs!4509 setElem!32052)))) b!5172112))

(declare-fun condSetEmpty!32064 () Bool)

(assert (=> setNonEmpty!32060 (= condSetEmpty!32064 (= setRest!32060 ((as const (Array Context!8018 Bool)) false)))))

(declare-fun setRes!32064 () Bool)

(assert (=> setNonEmpty!32060 (= tp!1450881 setRes!32064)))

(declare-fun setIsEmpty!32064 () Bool)

(assert (=> setIsEmpty!32064 setRes!32064))

(declare-fun tp!1450938 () Bool)

(declare-fun e!3222727 () Bool)

(declare-fun setElem!32064 () Context!8018)

(declare-fun setNonEmpty!32064 () Bool)

(assert (=> setNonEmpty!32064 (= setRes!32064 (and tp!1450938 (inv!79809 setElem!32064) e!3222727))))

(declare-fun setRest!32064 () (InoxSet Context!8018))

(assert (=> setNonEmpty!32064 (= setRest!32060 ((_ map or) (store ((as const (Array Context!8018 Bool)) false) setElem!32064 true) setRest!32064))))

(declare-fun b!5172113 () Bool)

(declare-fun tp!1450939 () Bool)

(assert (=> b!5172113 (= e!3222727 tp!1450939)))

(assert (= (and setNonEmpty!32060 condSetEmpty!32064) setIsEmpty!32064))

(assert (= (and setNonEmpty!32060 (not condSetEmpty!32064)) setNonEmpty!32064))

(assert (= setNonEmpty!32064 b!5172113))

(declare-fun m!6225334 () Bool)

(assert (=> setNonEmpty!32064 m!6225334))

(declare-fun b!5172114 () Bool)

(declare-fun e!3222728 () Bool)

(declare-fun tp!1450940 () Bool)

(declare-fun tp!1450941 () Bool)

(assert (=> b!5172114 (= e!3222728 (and tp!1450940 tp!1450941))))

(assert (=> b!5171859 (= tp!1450880 e!3222728)))

(assert (= (and b!5171859 ((_ is Cons!60092) (exprs!4509 setElem!32059))) b!5172114))

(declare-fun b!5172115 () Bool)

(declare-fun e!3222729 () Bool)

(declare-fun tp!1450942 () Bool)

(assert (=> b!5172115 (= e!3222729 (and tp_is_empty!38503 tp!1450942))))

(assert (=> b!5171861 (= tp!1450883 e!3222729)))

(assert (= (and b!5171861 ((_ is Cons!60091) (t!373368 (t!373368 testedP!294)))) b!5172115))

(declare-fun b!5172116 () Bool)

(declare-fun e!3222730 () Bool)

(assert (=> b!5172116 (= e!3222730 tp_is_empty!38503)))

(declare-fun b!5172117 () Bool)

(declare-fun tp!1450944 () Bool)

(declare-fun tp!1450946 () Bool)

(assert (=> b!5172117 (= e!3222730 (and tp!1450944 tp!1450946))))

(declare-fun b!5172119 () Bool)

(declare-fun tp!1450943 () Bool)

(declare-fun tp!1450945 () Bool)

(assert (=> b!5172119 (= e!3222730 (and tp!1450943 tp!1450945))))

(assert (=> b!5171853 (= tp!1450871 e!3222730)))

(declare-fun b!5172118 () Bool)

(declare-fun tp!1450947 () Bool)

(assert (=> b!5172118 (= e!3222730 tp!1450947)))

(assert (= (and b!5171853 ((_ is ElementMatch!14625) (h!66540 (exprs!4509 setElem!32051)))) b!5172116))

(assert (= (and b!5171853 ((_ is Concat!23470) (h!66540 (exprs!4509 setElem!32051)))) b!5172117))

(assert (= (and b!5171853 ((_ is Star!14625) (h!66540 (exprs!4509 setElem!32051)))) b!5172118))

(assert (= (and b!5171853 ((_ is Union!14625) (h!66540 (exprs!4509 setElem!32051)))) b!5172119))

(declare-fun b!5172120 () Bool)

(declare-fun e!3222731 () Bool)

(declare-fun tp!1450948 () Bool)

(declare-fun tp!1450949 () Bool)

(assert (=> b!5172120 (= e!3222731 (and tp!1450948 tp!1450949))))

(assert (=> b!5171853 (= tp!1450872 e!3222731)))

(assert (= (and b!5171853 ((_ is Cons!60092) (t!373369 (exprs!4509 setElem!32051)))) b!5172120))

(declare-fun b!5172121 () Bool)

(declare-fun e!3222732 () Bool)

(declare-fun tp!1450950 () Bool)

(declare-fun tp!1450951 () Bool)

(assert (=> b!5172121 (= e!3222732 (and tp!1450950 tp!1450951))))

(assert (=> b!5171860 (= tp!1450882 e!3222732)))

(assert (= (and b!5171860 ((_ is Cons!60092) (exprs!4509 setElem!32060))) b!5172121))

(declare-fun b_lambda!200893 () Bool)

(assert (= b_lambda!200885 (or d!1669010 b_lambda!200893)))

(declare-fun bs!1203682 () Bool)

(declare-fun d!1669260 () Bool)

(assert (= bs!1203682 (and d!1669260 d!1669010)))

(declare-fun validRegex!6400 (Regex!14625) Bool)

(assert (=> bs!1203682 (= (dynLambda!23872 lambda!258196 (h!66540 (exprs!4509 setElem!32051))) (validRegex!6400 (h!66540 (exprs!4509 setElem!32051))))))

(declare-fun m!6225336 () Bool)

(assert (=> bs!1203682 m!6225336))

(assert (=> b!5172010 d!1669260))

(declare-fun b_lambda!200895 () Bool)

(assert (= b_lambda!200883 (or d!1669022 b_lambda!200895)))

(declare-fun bs!1203683 () Bool)

(declare-fun d!1669262 () Bool)

(assert (= bs!1203683 (and d!1669262 d!1669022)))

(assert (=> bs!1203683 (= (dynLambda!23872 lambda!258197 (h!66540 (exprs!4509 setElem!32052))) (validRegex!6400 (h!66540 (exprs!4509 setElem!32052))))))

(declare-fun m!6225338 () Bool)

(assert (=> bs!1203683 m!6225338))

(assert (=> b!5172008 d!1669262))

(check-sat (not b!5172029) (not b!5172119) (not b!5172109) (not b!5171969) (not bs!1203682) (not b!5171989) (not b!5172051) (not d!1669134) (not d!1669112) (not b!5172025) (not b!5171955) (not b!5171984) (not b!5171926) (not d!1669250) (not b!5172026) (not bm!363121) (not b_lambda!200895) (not b!5171994) (not d!1669212) (not d!1669208) (not b!5171970) (not b!5172115) (not b!5172009) (not b!5172120) (not d!1669240) (not d!1669170) (not d!1669144) (not d!1669180) (not setNonEmpty!32064) (not b_lambda!200893) (not b!5172097) (not b!5171963) (not bm!363122) (not bm!363123) (not bm!363119) (not b!5171929) (not b!5171964) (not b!5172049) (not b!5172063) (not b!5172047) (not b!5171999) (not b!5171953) (not bm!363124) (not d!1669216) (not b!5171985) (not b!5171990) (not d!1669154) (not b!5171979) (not b!5171983) (not b!5172117) (not setNonEmpty!32063) (not d!1669200) (not b!5171998) (not b!5171924) (not bm!363125) (not b!5172050) (not b!5172096) (not b!5172001) (not b!5171960) (not b!5172121) (not bm!363137) (not b!5172030) (not b!5171923) (not b!5171947) (not b!5172118) (not b!5172095) (not b!5172062) (not d!1669138) (not d!1669258) (not b!5172054) (not bm!363120) (not b!5172111) (not d!1669248) (not d!1669254) (not d!1669238) (not bm!363138) (not b!5172094) (not b!5172043) tp_is_empty!38503 (not d!1669168) (not bs!1203683) (not b!5172053) (not b!5171959) (not d!1669148) (not b!5172113) (not bm!363126) (not b!5171981) (not d!1669152) (not b!5172011) (not b!5171977) (not b!5171954) (not b!5171997) (not d!1669142) (not b!5171993) (not b!5172114) (not b!5172112) (not b!5172110) (not b!5172045) (not b!5171991) (not b!5171986))
(check-sat)
