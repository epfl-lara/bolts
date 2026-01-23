; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!547676 () Bool)

(assert start!547676)

(declare-fun b!5172979 () Bool)

(declare-fun e!3223300 () Bool)

(declare-fun tp!1451237 () Bool)

(assert (=> b!5172979 (= e!3223300 tp!1451237)))

(declare-fun b!5172980 () Bool)

(declare-fun e!3223299 () Bool)

(assert (=> b!5172980 (= e!3223299 true)))

(declare-fun e!3223297 () Bool)

(assert (=> b!5172980 e!3223297))

(declare-fun res!2198604 () Bool)

(assert (=> b!5172980 (=> res!2198604 e!3223297)))

(declare-datatypes ((C!29540 0))(
  ( (C!29541 (val!24472 Int)) )
))
(declare-datatypes ((List!60239 0))(
  ( (Nil!60115) (Cons!60115 (h!66563 C!29540) (t!373392 List!60239)) )
))
(declare-datatypes ((tuple2!63824 0))(
  ( (tuple2!63825 (_1!35215 List!60239) (_2!35215 List!60239)) )
))
(declare-fun lt!2130312 () tuple2!63824)

(declare-fun isEmpty!32187 (List!60239) Bool)

(assert (=> b!5172980 (= res!2198604 (isEmpty!32187 (_1!35215 lt!2130312)))))

(declare-fun lt!2130324 () List!60239)

(declare-fun input!5817 () List!60239)

(define-sort InoxSet (T) (Array T Bool))

(declare-datatypes ((Regex!14635 0))(
  ( (ElementMatch!14635 (c!890578 C!29540)) (Concat!23480 (regOne!29782 Regex!14635) (regTwo!29782 Regex!14635)) (EmptyExpr!14635) (Star!14635 (reg!14964 Regex!14635)) (EmptyLang!14635) (Union!14635 (regOne!29783 Regex!14635) (regTwo!29783 Regex!14635)) )
))
(declare-datatypes ((List!60240 0))(
  ( (Nil!60116) (Cons!60116 (h!66564 Regex!14635) (t!373393 List!60240)) )
))
(declare-datatypes ((Context!8038 0))(
  ( (Context!8039 (exprs!4519 List!60240)) )
))
(declare-fun lt!2130313 () (InoxSet Context!8038))

(declare-fun lt!2130318 () Int)

(declare-fun findLongestMatchInnerZipper!293 ((InoxSet Context!8038) List!60239 Int List!60239 List!60239 Int) tuple2!63824)

(declare-fun size!39671 (List!60239) Int)

(declare-fun getSuffix!3418 (List!60239 List!60239) List!60239)

(assert (=> b!5172980 (= lt!2130312 (findLongestMatchInnerZipper!293 lt!2130313 lt!2130324 (size!39671 lt!2130324) (getSuffix!3418 input!5817 lt!2130324) input!5817 lt!2130318))))

(declare-datatypes ((Unit!151836 0))(
  ( (Unit!151837) )
))
(declare-fun lt!2130317 () Unit!151836)

(declare-fun baseZ!62 () (InoxSet Context!8038))

(declare-fun longestMatchIsAcceptedByMatchOrIsEmptyRec!23 ((InoxSet Context!8038) (InoxSet Context!8038) List!60239 List!60239) Unit!151836)

(assert (=> b!5172980 (= lt!2130317 (longestMatchIsAcceptedByMatchOrIsEmptyRec!23 baseZ!62 lt!2130313 lt!2130324 input!5817))))

(declare-fun derivationZipper!258 ((InoxSet Context!8038) List!60239) (InoxSet Context!8038))

(assert (=> b!5172980 (= (derivationZipper!258 baseZ!62 lt!2130324) lt!2130313)))

(declare-fun z!4581 () (InoxSet Context!8038))

(declare-fun lt!2130316 () C!29540)

(declare-fun derivationStepZipper!987 ((InoxSet Context!8038) C!29540) (InoxSet Context!8038))

(assert (=> b!5172980 (= lt!2130313 (derivationStepZipper!987 z!4581 lt!2130316))))

(declare-fun lt!2130319 () Unit!151836)

(declare-fun testedP!294 () List!60239)

(declare-fun lemmaDerivativeOnLWithANewCharIsANewDerivativeStep!105 ((InoxSet Context!8038) (InoxSet Context!8038) List!60239 C!29540) Unit!151836)

(assert (=> b!5172980 (= lt!2130319 (lemmaDerivativeOnLWithANewCharIsANewDerivativeStep!105 baseZ!62 z!4581 testedP!294 lt!2130316))))

(declare-fun setElem!32135 () Context!8038)

(declare-fun tp!1451235 () Bool)

(declare-fun setRes!32136 () Bool)

(declare-fun setNonEmpty!32135 () Bool)

(declare-fun inv!79834 (Context!8038) Bool)

(assert (=> setNonEmpty!32135 (= setRes!32136 (and tp!1451235 (inv!79834 setElem!32135) e!3223300))))

(declare-fun setRest!32136 () (InoxSet Context!8038))

(assert (=> setNonEmpty!32135 (= z!4581 ((_ map or) (store ((as const (Array Context!8038 Bool)) false) setElem!32135 true) setRest!32136))))

(declare-fun b!5172981 () Bool)

(declare-fun res!2198598 () Bool)

(declare-fun e!3223303 () Bool)

(assert (=> b!5172981 (=> (not res!2198598) (not e!3223303))))

(assert (=> b!5172981 (= res!2198598 (not (= testedP!294 input!5817)))))

(declare-fun b!5172982 () Bool)

(declare-fun e!3223306 () Bool)

(declare-fun tp!1451236 () Bool)

(assert (=> b!5172982 (= e!3223306 tp!1451236)))

(declare-fun b!5172983 () Bool)

(declare-fun matchZipper!975 ((InoxSet Context!8038) List!60239) Bool)

(assert (=> b!5172983 (= e!3223297 (matchZipper!975 baseZ!62 (_1!35215 lt!2130312)))))

(declare-fun res!2198601 () Bool)

(declare-fun e!3223301 () Bool)

(assert (=> start!547676 (=> (not res!2198601) (not e!3223301))))

(declare-fun isPrefix!5768 (List!60239 List!60239) Bool)

(assert (=> start!547676 (= res!2198601 (isPrefix!5768 testedP!294 input!5817))))

(assert (=> start!547676 e!3223301))

(declare-fun e!3223298 () Bool)

(assert (=> start!547676 e!3223298))

(declare-fun e!3223304 () Bool)

(assert (=> start!547676 e!3223304))

(declare-fun condSetEmpty!32135 () Bool)

(assert (=> start!547676 (= condSetEmpty!32135 (= baseZ!62 ((as const (Array Context!8038 Bool)) false)))))

(declare-fun setRes!32135 () Bool)

(assert (=> start!547676 setRes!32135))

(declare-fun condSetEmpty!32136 () Bool)

(assert (=> start!547676 (= condSetEmpty!32136 (= z!4581 ((as const (Array Context!8038 Bool)) false)))))

(assert (=> start!547676 setRes!32136))

(declare-fun b!5172984 () Bool)

(declare-fun e!3223305 () Bool)

(assert (=> b!5172984 (= e!3223305 e!3223299)))

(declare-fun res!2198600 () Bool)

(assert (=> b!5172984 (=> res!2198600 e!3223299)))

(declare-fun nullableZipper!1181 ((InoxSet Context!8038)) Bool)

(assert (=> b!5172984 (= res!2198600 (nullableZipper!1181 z!4581))))

(assert (=> b!5172984 (isPrefix!5768 lt!2130324 input!5817)))

(declare-fun lt!2130311 () Unit!151836)

(declare-fun lemmaAddHeadSuffixToPrefixStillPrefix!1081 (List!60239 List!60239) Unit!151836)

(assert (=> b!5172984 (= lt!2130311 (lemmaAddHeadSuffixToPrefixStillPrefix!1081 testedP!294 input!5817))))

(declare-fun ++!13159 (List!60239 List!60239) List!60239)

(assert (=> b!5172984 (= lt!2130324 (++!13159 testedP!294 (Cons!60115 lt!2130316 Nil!60115)))))

(declare-fun lt!2130321 () List!60239)

(declare-fun head!11059 (List!60239) C!29540)

(assert (=> b!5172984 (= lt!2130316 (head!11059 lt!2130321))))

(declare-fun b!5172985 () Bool)

(declare-fun tp_is_empty!38523 () Bool)

(declare-fun tp!1451238 () Bool)

(assert (=> b!5172985 (= e!3223298 (and tp_is_empty!38523 tp!1451238))))

(declare-fun setIsEmpty!32135 () Bool)

(assert (=> setIsEmpty!32135 setRes!32135))

(declare-fun b!5172986 () Bool)

(assert (=> b!5172986 (= e!3223303 (not e!3223305))))

(declare-fun res!2198603 () Bool)

(assert (=> b!5172986 (=> res!2198603 e!3223305)))

(declare-fun lt!2130315 () Int)

(assert (=> b!5172986 (= res!2198603 (>= lt!2130315 lt!2130318))))

(declare-fun lt!2130323 () Unit!151836)

(declare-fun e!3223302 () Unit!151836)

(assert (=> b!5172986 (= lt!2130323 e!3223302)))

(declare-fun c!890577 () Bool)

(assert (=> b!5172986 (= c!890577 (= lt!2130315 lt!2130318))))

(assert (=> b!5172986 (<= lt!2130315 lt!2130318)))

(declare-fun lt!2130320 () Unit!151836)

(declare-fun lemmaIsPrefixThenSmallerEqSize!931 (List!60239 List!60239) Unit!151836)

(assert (=> b!5172986 (= lt!2130320 (lemmaIsPrefixThenSmallerEqSize!931 testedP!294 input!5817))))

(declare-fun b!5172987 () Bool)

(declare-fun tp!1451239 () Bool)

(assert (=> b!5172987 (= e!3223304 (and tp_is_empty!38523 tp!1451239))))

(declare-fun b!5172988 () Bool)

(assert (=> b!5172988 (= e!3223301 e!3223303)))

(declare-fun res!2198599 () Bool)

(assert (=> b!5172988 (=> (not res!2198599) (not e!3223303))))

(assert (=> b!5172988 (= res!2198599 (not (isEmpty!32187 (_1!35215 (findLongestMatchInnerZipper!293 z!4581 testedP!294 lt!2130315 lt!2130321 input!5817 lt!2130318)))))))

(assert (=> b!5172988 (= lt!2130318 (size!39671 input!5817))))

(assert (=> b!5172988 (= lt!2130321 (getSuffix!3418 input!5817 testedP!294))))

(assert (=> b!5172988 (= lt!2130315 (size!39671 testedP!294))))

(declare-fun setElem!32136 () Context!8038)

(declare-fun tp!1451234 () Bool)

(declare-fun setNonEmpty!32136 () Bool)

(assert (=> setNonEmpty!32136 (= setRes!32135 (and tp!1451234 (inv!79834 setElem!32136) e!3223306))))

(declare-fun setRest!32135 () (InoxSet Context!8038))

(assert (=> setNonEmpty!32136 (= baseZ!62 ((_ map or) (store ((as const (Array Context!8038 Bool)) false) setElem!32136 true) setRest!32135))))

(declare-fun b!5172989 () Bool)

(declare-fun Unit!151838 () Unit!151836)

(assert (=> b!5172989 (= e!3223302 Unit!151838)))

(declare-fun setIsEmpty!32136 () Bool)

(assert (=> setIsEmpty!32136 setRes!32136))

(declare-fun b!5172990 () Bool)

(declare-fun res!2198602 () Bool)

(assert (=> b!5172990 (=> (not res!2198602) (not e!3223301))))

(assert (=> b!5172990 (= res!2198602 (= (derivationZipper!258 baseZ!62 testedP!294) z!4581))))

(declare-fun b!5172991 () Bool)

(declare-fun Unit!151839 () Unit!151836)

(assert (=> b!5172991 (= e!3223302 Unit!151839)))

(declare-fun lt!2130322 () Unit!151836)

(declare-fun lemmaIsPrefixRefl!3775 (List!60239 List!60239) Unit!151836)

(assert (=> b!5172991 (= lt!2130322 (lemmaIsPrefixRefl!3775 input!5817 input!5817))))

(assert (=> b!5172991 (isPrefix!5768 input!5817 input!5817)))

(declare-fun lt!2130314 () Unit!151836)

(declare-fun lemmaIsPrefixSameLengthThenSameList!1417 (List!60239 List!60239 List!60239) Unit!151836)

(assert (=> b!5172991 (= lt!2130314 (lemmaIsPrefixSameLengthThenSameList!1417 input!5817 testedP!294 input!5817))))

(assert (=> b!5172991 false))

(assert (= (and start!547676 res!2198601) b!5172990))

(assert (= (and b!5172990 res!2198602) b!5172988))

(assert (= (and b!5172988 res!2198599) b!5172981))

(assert (= (and b!5172981 res!2198598) b!5172986))

(assert (= (and b!5172986 c!890577) b!5172991))

(assert (= (and b!5172986 (not c!890577)) b!5172989))

(assert (= (and b!5172986 (not res!2198603)) b!5172984))

(assert (= (and b!5172984 (not res!2198600)) b!5172980))

(assert (= (and b!5172980 (not res!2198604)) b!5172983))

(get-info :version)

(assert (= (and start!547676 ((_ is Cons!60115) testedP!294)) b!5172985))

(assert (= (and start!547676 ((_ is Cons!60115) input!5817)) b!5172987))

(assert (= (and start!547676 condSetEmpty!32135) setIsEmpty!32135))

(assert (= (and start!547676 (not condSetEmpty!32135)) setNonEmpty!32136))

(assert (= setNonEmpty!32136 b!5172982))

(assert (= (and start!547676 condSetEmpty!32136) setIsEmpty!32136))

(assert (= (and start!547676 (not condSetEmpty!32136)) setNonEmpty!32135))

(assert (= setNonEmpty!32135 b!5172979))

(declare-fun m!6226498 () Bool)

(assert (=> b!5172983 m!6226498))

(declare-fun m!6226500 () Bool)

(assert (=> b!5172984 m!6226500))

(declare-fun m!6226502 () Bool)

(assert (=> b!5172984 m!6226502))

(declare-fun m!6226504 () Bool)

(assert (=> b!5172984 m!6226504))

(declare-fun m!6226506 () Bool)

(assert (=> b!5172984 m!6226506))

(declare-fun m!6226508 () Bool)

(assert (=> b!5172984 m!6226508))

(declare-fun m!6226510 () Bool)

(assert (=> b!5172980 m!6226510))

(declare-fun m!6226512 () Bool)

(assert (=> b!5172980 m!6226512))

(declare-fun m!6226514 () Bool)

(assert (=> b!5172980 m!6226514))

(declare-fun m!6226516 () Bool)

(assert (=> b!5172980 m!6226516))

(assert (=> b!5172980 m!6226514))

(declare-fun m!6226518 () Bool)

(assert (=> b!5172980 m!6226518))

(assert (=> b!5172980 m!6226512))

(declare-fun m!6226520 () Bool)

(assert (=> b!5172980 m!6226520))

(declare-fun m!6226522 () Bool)

(assert (=> b!5172980 m!6226522))

(declare-fun m!6226524 () Bool)

(assert (=> b!5172980 m!6226524))

(declare-fun m!6226526 () Bool)

(assert (=> b!5172990 m!6226526))

(declare-fun m!6226528 () Bool)

(assert (=> b!5172988 m!6226528))

(declare-fun m!6226530 () Bool)

(assert (=> b!5172988 m!6226530))

(declare-fun m!6226532 () Bool)

(assert (=> b!5172988 m!6226532))

(declare-fun m!6226534 () Bool)

(assert (=> b!5172988 m!6226534))

(declare-fun m!6226536 () Bool)

(assert (=> b!5172988 m!6226536))

(declare-fun m!6226538 () Bool)

(assert (=> start!547676 m!6226538))

(declare-fun m!6226540 () Bool)

(assert (=> b!5172986 m!6226540))

(declare-fun m!6226542 () Bool)

(assert (=> setNonEmpty!32135 m!6226542))

(declare-fun m!6226544 () Bool)

(assert (=> b!5172991 m!6226544))

(declare-fun m!6226546 () Bool)

(assert (=> b!5172991 m!6226546))

(declare-fun m!6226548 () Bool)

(assert (=> b!5172991 m!6226548))

(declare-fun m!6226550 () Bool)

(assert (=> setNonEmpty!32136 m!6226550))

(check-sat tp_is_empty!38523 (not b!5172982) (not b!5172984) (not b!5172985) (not b!5172979) (not b!5172987) (not b!5172990) (not b!5172991) (not setNonEmpty!32136) (not start!547676) (not b!5172983) (not b!5172988) (not setNonEmpty!32135) (not b!5172986) (not b!5172980))
(check-sat)
