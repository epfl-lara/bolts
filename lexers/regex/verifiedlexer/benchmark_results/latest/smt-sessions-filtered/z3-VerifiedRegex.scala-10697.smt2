; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!547760 () Bool)

(assert start!547760)

(declare-fun b!5173492 () Bool)

(declare-fun e!3223638 () Bool)

(declare-fun tp!1451382 () Bool)

(assert (=> b!5173492 (= e!3223638 tp!1451382)))

(declare-fun setRes!32179 () Bool)

(declare-fun tp!1451383 () Bool)

(declare-datatypes ((C!29552 0))(
  ( (C!29553 (val!24478 Int)) )
))
(declare-datatypes ((Regex!14641 0))(
  ( (ElementMatch!14641 (c!890700 C!29552)) (Concat!23486 (regOne!29794 Regex!14641) (regTwo!29794 Regex!14641)) (EmptyExpr!14641) (Star!14641 (reg!14970 Regex!14641)) (EmptyLang!14641) (Union!14641 (regOne!29795 Regex!14641) (regTwo!29795 Regex!14641)) )
))
(declare-datatypes ((List!60251 0))(
  ( (Nil!60127) (Cons!60127 (h!66575 Regex!14641) (t!373404 List!60251)) )
))
(declare-datatypes ((Context!8050 0))(
  ( (Context!8051 (exprs!4525 List!60251)) )
))
(declare-fun setElem!32180 () Context!8050)

(declare-fun setNonEmpty!32179 () Bool)

(declare-fun inv!79849 (Context!8050) Bool)

(assert (=> setNonEmpty!32179 (= setRes!32179 (and tp!1451383 (inv!79849 setElem!32180) e!3223638))))

(define-sort InoxSet (T) (Array T Bool))

(declare-fun baseZ!62 () (InoxSet Context!8050))

(declare-fun setRest!32179 () (InoxSet Context!8050))

(assert (=> setNonEmpty!32179 (= baseZ!62 ((_ map or) (store ((as const (Array Context!8050 Bool)) false) setElem!32180 true) setRest!32179))))

(declare-fun b!5173493 () Bool)

(declare-fun e!3223635 () Bool)

(declare-fun lt!2130820 () Int)

(declare-fun lt!2130815 () Int)

(assert (=> b!5173493 (= e!3223635 (not (< lt!2130820 lt!2130815)))))

(declare-datatypes ((Unit!151872 0))(
  ( (Unit!151873) )
))
(declare-fun lt!2130817 () Unit!151872)

(declare-fun e!3223639 () Unit!151872)

(assert (=> b!5173493 (= lt!2130817 e!3223639)))

(declare-fun c!890699 () Bool)

(assert (=> b!5173493 (= c!890699 (= lt!2130820 lt!2130815))))

(assert (=> b!5173493 (<= lt!2130820 lt!2130815)))

(declare-fun lt!2130819 () Unit!151872)

(declare-datatypes ((List!60252 0))(
  ( (Nil!60128) (Cons!60128 (h!66576 C!29552) (t!373405 List!60252)) )
))
(declare-fun testedP!294 () List!60252)

(declare-fun input!5817 () List!60252)

(declare-fun lemmaIsPrefixThenSmallerEqSize!937 (List!60252 List!60252) Unit!151872)

(assert (=> b!5173493 (= lt!2130819 (lemmaIsPrefixThenSmallerEqSize!937 testedP!294 input!5817))))

(declare-fun b!5173494 () Bool)

(declare-fun e!3223640 () Bool)

(declare-fun tp_is_empty!38535 () Bool)

(declare-fun tp!1451385 () Bool)

(assert (=> b!5173494 (= e!3223640 (and tp_is_empty!38535 tp!1451385))))

(declare-fun b!5173495 () Bool)

(declare-fun res!2198789 () Bool)

(assert (=> b!5173495 (=> (not res!2198789) (not e!3223635))))

(assert (=> b!5173495 (= res!2198789 (not (= testedP!294 input!5817)))))

(declare-fun res!2198790 () Bool)

(declare-fun e!3223637 () Bool)

(assert (=> start!547760 (=> (not res!2198790) (not e!3223637))))

(declare-fun isPrefix!5774 (List!60252 List!60252) Bool)

(assert (=> start!547760 (= res!2198790 (isPrefix!5774 testedP!294 input!5817))))

(assert (=> start!547760 e!3223637))

(declare-fun e!3223636 () Bool)

(assert (=> start!547760 e!3223636))

(assert (=> start!547760 e!3223640))

(declare-fun condSetEmpty!32180 () Bool)

(assert (=> start!547760 (= condSetEmpty!32180 (= baseZ!62 ((as const (Array Context!8050 Bool)) false)))))

(assert (=> start!547760 setRes!32179))

(declare-fun condSetEmpty!32179 () Bool)

(declare-fun z!4581 () (InoxSet Context!8050))

(assert (=> start!547760 (= condSetEmpty!32179 (= z!4581 ((as const (Array Context!8050 Bool)) false)))))

(declare-fun setRes!32180 () Bool)

(assert (=> start!547760 setRes!32180))

(declare-fun setIsEmpty!32179 () Bool)

(assert (=> setIsEmpty!32179 setRes!32180))

(declare-fun setIsEmpty!32180 () Bool)

(assert (=> setIsEmpty!32180 setRes!32179))

(declare-fun b!5173496 () Bool)

(declare-fun Unit!151874 () Unit!151872)

(assert (=> b!5173496 (= e!3223639 Unit!151874)))

(declare-fun b!5173497 () Bool)

(declare-fun Unit!151875 () Unit!151872)

(assert (=> b!5173497 (= e!3223639 Unit!151875)))

(declare-fun lt!2130818 () Unit!151872)

(declare-fun lemmaIsPrefixRefl!3781 (List!60252 List!60252) Unit!151872)

(assert (=> b!5173497 (= lt!2130818 (lemmaIsPrefixRefl!3781 input!5817 input!5817))))

(assert (=> b!5173497 (isPrefix!5774 input!5817 input!5817)))

(declare-fun lt!2130814 () Unit!151872)

(declare-fun lemmaIsPrefixSameLengthThenSameList!1423 (List!60252 List!60252 List!60252) Unit!151872)

(assert (=> b!5173497 (= lt!2130814 (lemmaIsPrefixSameLengthThenSameList!1423 input!5817 testedP!294 input!5817))))

(assert (=> b!5173497 false))

(declare-fun b!5173498 () Bool)

(declare-fun e!3223634 () Bool)

(declare-fun tp!1451387 () Bool)

(assert (=> b!5173498 (= e!3223634 tp!1451387)))

(declare-fun b!5173499 () Bool)

(declare-fun tp!1451386 () Bool)

(assert (=> b!5173499 (= e!3223636 (and tp_is_empty!38535 tp!1451386))))

(declare-fun b!5173500 () Bool)

(assert (=> b!5173500 (= e!3223637 e!3223635)))

(declare-fun res!2198787 () Bool)

(assert (=> b!5173500 (=> (not res!2198787) (not e!3223635))))

(declare-fun lt!2130816 () List!60252)

(declare-fun isEmpty!32193 (List!60252) Bool)

(declare-datatypes ((tuple2!63836 0))(
  ( (tuple2!63837 (_1!35221 List!60252) (_2!35221 List!60252)) )
))
(declare-fun findLongestMatchInnerZipper!299 ((InoxSet Context!8050) List!60252 Int List!60252 List!60252 Int) tuple2!63836)

(assert (=> b!5173500 (= res!2198787 (not (isEmpty!32193 (_1!35221 (findLongestMatchInnerZipper!299 z!4581 testedP!294 lt!2130820 lt!2130816 input!5817 lt!2130815)))))))

(declare-fun size!39677 (List!60252) Int)

(assert (=> b!5173500 (= lt!2130815 (size!39677 input!5817))))

(declare-fun getSuffix!3424 (List!60252 List!60252) List!60252)

(assert (=> b!5173500 (= lt!2130816 (getSuffix!3424 input!5817 testedP!294))))

(assert (=> b!5173500 (= lt!2130820 (size!39677 testedP!294))))

(declare-fun tp!1451384 () Bool)

(declare-fun setNonEmpty!32180 () Bool)

(declare-fun setElem!32179 () Context!8050)

(assert (=> setNonEmpty!32180 (= setRes!32180 (and tp!1451384 (inv!79849 setElem!32179) e!3223634))))

(declare-fun setRest!32180 () (InoxSet Context!8050))

(assert (=> setNonEmpty!32180 (= z!4581 ((_ map or) (store ((as const (Array Context!8050 Bool)) false) setElem!32179 true) setRest!32180))))

(declare-fun b!5173501 () Bool)

(declare-fun res!2198788 () Bool)

(assert (=> b!5173501 (=> (not res!2198788) (not e!3223637))))

(declare-fun derivationZipper!264 ((InoxSet Context!8050) List!60252) (InoxSet Context!8050))

(assert (=> b!5173501 (= res!2198788 (= (derivationZipper!264 baseZ!62 testedP!294) z!4581))))

(assert (= (and start!547760 res!2198790) b!5173501))

(assert (= (and b!5173501 res!2198788) b!5173500))

(assert (= (and b!5173500 res!2198787) b!5173495))

(assert (= (and b!5173495 res!2198789) b!5173493))

(assert (= (and b!5173493 c!890699) b!5173497))

(assert (= (and b!5173493 (not c!890699)) b!5173496))

(get-info :version)

(assert (= (and start!547760 ((_ is Cons!60128) testedP!294)) b!5173499))

(assert (= (and start!547760 ((_ is Cons!60128) input!5817)) b!5173494))

(assert (= (and start!547760 condSetEmpty!32180) setIsEmpty!32180))

(assert (= (and start!547760 (not condSetEmpty!32180)) setNonEmpty!32179))

(assert (= setNonEmpty!32179 b!5173492))

(assert (= (and start!547760 condSetEmpty!32179) setIsEmpty!32179))

(assert (= (and start!547760 (not condSetEmpty!32179)) setNonEmpty!32180))

(assert (= setNonEmpty!32180 b!5173498))

(declare-fun m!6227170 () Bool)

(assert (=> b!5173500 m!6227170))

(declare-fun m!6227172 () Bool)

(assert (=> b!5173500 m!6227172))

(declare-fun m!6227174 () Bool)

(assert (=> b!5173500 m!6227174))

(declare-fun m!6227176 () Bool)

(assert (=> b!5173500 m!6227176))

(declare-fun m!6227178 () Bool)

(assert (=> b!5173500 m!6227178))

(declare-fun m!6227180 () Bool)

(assert (=> b!5173497 m!6227180))

(declare-fun m!6227182 () Bool)

(assert (=> b!5173497 m!6227182))

(declare-fun m!6227184 () Bool)

(assert (=> b!5173497 m!6227184))

(declare-fun m!6227186 () Bool)

(assert (=> setNonEmpty!32179 m!6227186))

(declare-fun m!6227188 () Bool)

(assert (=> b!5173493 m!6227188))

(declare-fun m!6227190 () Bool)

(assert (=> setNonEmpty!32180 m!6227190))

(declare-fun m!6227192 () Bool)

(assert (=> b!5173501 m!6227192))

(declare-fun m!6227194 () Bool)

(assert (=> start!547760 m!6227194))

(check-sat (not setNonEmpty!32179) (not b!5173498) (not b!5173499) (not start!547760) (not b!5173494) (not b!5173493) (not b!5173501) (not b!5173500) (not b!5173497) (not setNonEmpty!32180) tp_is_empty!38535 (not b!5173492))
(check-sat)
