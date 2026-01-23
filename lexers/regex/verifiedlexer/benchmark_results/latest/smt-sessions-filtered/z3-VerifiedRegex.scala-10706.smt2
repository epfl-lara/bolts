; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!548376 () Bool)

(assert start!548376)

(declare-fun b!5178854 () Bool)

(declare-datatypes ((Unit!152092 0))(
  ( (Unit!152093) )
))
(declare-fun e!3226787 () Unit!152092)

(declare-fun Unit!152094 () Unit!152092)

(assert (=> b!5178854 (= e!3226787 Unit!152094)))

(declare-fun lt!2134262 () Unit!152092)

(declare-datatypes ((C!29588 0))(
  ( (C!29589 (val!24496 Int)) )
))
(declare-datatypes ((List!60293 0))(
  ( (Nil!60169) (Cons!60169 (h!66617 C!29588) (t!373446 List!60293)) )
))
(declare-fun input!5817 () List!60293)

(declare-fun lemmaIsPrefixRefl!3797 (List!60293 List!60293) Unit!152092)

(assert (=> b!5178854 (= lt!2134262 (lemmaIsPrefixRefl!3797 input!5817 input!5817))))

(declare-fun isPrefix!5792 (List!60293 List!60293) Bool)

(assert (=> b!5178854 (isPrefix!5792 input!5817 input!5817)))

(declare-fun lt!2134263 () Unit!152092)

(declare-fun testedP!294 () List!60293)

(declare-fun lemmaIsPrefixSameLengthThenSameList!1437 (List!60293 List!60293 List!60293) Unit!152092)

(assert (=> b!5178854 (= lt!2134263 (lemmaIsPrefixSameLengthThenSameList!1437 input!5817 testedP!294 input!5817))))

(assert (=> b!5178854 false))

(declare-fun b!5178855 () Bool)

(declare-fun res!2200474 () Bool)

(declare-fun e!3226794 () Bool)

(assert (=> b!5178855 (=> (not res!2200474) (not e!3226794))))

(assert (=> b!5178855 (= res!2200474 (not (= testedP!294 input!5817)))))

(declare-fun b!5178856 () Bool)

(declare-fun e!3226789 () Bool)

(assert (=> b!5178856 (= e!3226789 e!3226794)))

(declare-fun res!2200472 () Bool)

(assert (=> b!5178856 (=> (not res!2200472) (not e!3226794))))

(declare-fun lt!2134261 () Int)

(declare-fun lt!2134266 () Int)

(declare-fun lt!2134258 () List!60293)

(define-sort InoxSet (T) (Array T Bool))

(declare-datatypes ((Regex!14659 0))(
  ( (ElementMatch!14659 (c!892242 C!29588)) (Concat!23504 (regOne!29830 Regex!14659) (regTwo!29830 Regex!14659)) (EmptyExpr!14659) (Star!14659 (reg!14988 Regex!14659)) (EmptyLang!14659) (Union!14659 (regOne!29831 Regex!14659) (regTwo!29831 Regex!14659)) )
))
(declare-datatypes ((List!60294 0))(
  ( (Nil!60170) (Cons!60170 (h!66618 Regex!14659) (t!373447 List!60294)) )
))
(declare-datatypes ((Context!8086 0))(
  ( (Context!8087 (exprs!4543 List!60294)) )
))
(declare-fun z!4581 () (InoxSet Context!8086))

(declare-fun isEmpty!32215 (List!60293) Bool)

(declare-datatypes ((tuple2!63868 0))(
  ( (tuple2!63869 (_1!35237 List!60293) (_2!35237 List!60293)) )
))
(declare-fun findLongestMatchInnerZipper!315 ((InoxSet Context!8086) List!60293 Int List!60293 List!60293 Int) tuple2!63868)

(assert (=> b!5178856 (= res!2200472 (not (isEmpty!32215 (_1!35237 (findLongestMatchInnerZipper!315 z!4581 testedP!294 lt!2134266 lt!2134258 input!5817 lt!2134261)))))))

(declare-fun size!39695 (List!60293) Int)

(assert (=> b!5178856 (= lt!2134261 (size!39695 input!5817))))

(declare-fun getSuffix!3440 (List!60293 List!60293) List!60293)

(assert (=> b!5178856 (= lt!2134258 (getSuffix!3440 input!5817 testedP!294))))

(assert (=> b!5178856 (= lt!2134266 (size!39695 testedP!294))))

(declare-fun b!5178857 () Bool)

(declare-fun lt!2134268 () List!60293)

(declare-fun e!3226793 () Bool)

(assert (=> b!5178857 (= e!3226793 (< (- lt!2134261 (size!39695 lt!2134268)) (- lt!2134261 lt!2134266)))))

(declare-fun lt!2134264 () C!29588)

(declare-fun baseZ!62 () (InoxSet Context!8086))

(declare-fun derivationZipper!282 ((InoxSet Context!8086) List!60293) (InoxSet Context!8086))

(declare-fun derivationStepZipper!1005 ((InoxSet Context!8086) C!29588) (InoxSet Context!8086))

(assert (=> b!5178857 (= (derivationZipper!282 baseZ!62 lt!2134268) (derivationStepZipper!1005 z!4581 lt!2134264))))

(declare-fun lt!2134265 () Unit!152092)

(declare-fun lemmaDerivativeOnLWithANewCharIsANewDerivativeStep!115 ((InoxSet Context!8086) (InoxSet Context!8086) List!60293 C!29588) Unit!152092)

(assert (=> b!5178857 (= lt!2134265 (lemmaDerivativeOnLWithANewCharIsANewDerivativeStep!115 baseZ!62 z!4581 testedP!294 lt!2134264))))

(declare-fun b!5178858 () Bool)

(declare-fun Unit!152095 () Unit!152092)

(assert (=> b!5178858 (= e!3226787 Unit!152095)))

(declare-fun setRes!32368 () Bool)

(declare-fun tp!1452527 () Bool)

(declare-fun e!3226790 () Bool)

(declare-fun setNonEmpty!32367 () Bool)

(declare-fun setElem!32368 () Context!8086)

(declare-fun inv!79894 (Context!8086) Bool)

(assert (=> setNonEmpty!32367 (= setRes!32368 (and tp!1452527 (inv!79894 setElem!32368) e!3226790))))

(declare-fun setRest!32368 () (InoxSet Context!8086))

(assert (=> setNonEmpty!32367 (= z!4581 ((_ map or) (store ((as const (Array Context!8086 Bool)) false) setElem!32368 true) setRest!32368))))

(declare-fun setRes!32367 () Bool)

(declare-fun setElem!32367 () Context!8086)

(declare-fun e!3226791 () Bool)

(declare-fun tp!1452530 () Bool)

(declare-fun setNonEmpty!32368 () Bool)

(assert (=> setNonEmpty!32368 (= setRes!32367 (and tp!1452530 (inv!79894 setElem!32367) e!3226791))))

(declare-fun setRest!32367 () (InoxSet Context!8086))

(assert (=> setNonEmpty!32368 (= baseZ!62 ((_ map or) (store ((as const (Array Context!8086 Bool)) false) setElem!32367 true) setRest!32367))))

(declare-fun b!5178859 () Bool)

(declare-fun res!2200471 () Bool)

(assert (=> b!5178859 (=> (not res!2200471) (not e!3226789))))

(assert (=> b!5178859 (= res!2200471 (= (derivationZipper!282 baseZ!62 testedP!294) z!4581))))

(declare-fun setIsEmpty!32367 () Bool)

(assert (=> setIsEmpty!32367 setRes!32367))

(declare-fun b!5178860 () Bool)

(declare-fun e!3226788 () Bool)

(declare-fun tp_is_empty!38571 () Bool)

(declare-fun tp!1452528 () Bool)

(assert (=> b!5178860 (= e!3226788 (and tp_is_empty!38571 tp!1452528))))

(declare-fun b!5178861 () Bool)

(declare-fun tp!1452531 () Bool)

(assert (=> b!5178861 (= e!3226790 tp!1452531)))

(declare-fun b!5178862 () Bool)

(declare-fun e!3226792 () Bool)

(assert (=> b!5178862 (= e!3226792 e!3226793)))

(declare-fun res!2200470 () Bool)

(assert (=> b!5178862 (=> res!2200470 e!3226793)))

(declare-fun nullableZipper!1197 ((InoxSet Context!8086)) Bool)

(assert (=> b!5178862 (= res!2200470 (nullableZipper!1197 z!4581))))

(assert (=> b!5178862 (isPrefix!5792 lt!2134268 input!5817)))

(declare-fun lt!2134267 () Unit!152092)

(declare-fun lemmaAddHeadSuffixToPrefixStillPrefix!1097 (List!60293 List!60293) Unit!152092)

(assert (=> b!5178862 (= lt!2134267 (lemmaAddHeadSuffixToPrefixStillPrefix!1097 testedP!294 input!5817))))

(declare-fun ++!13175 (List!60293 List!60293) List!60293)

(assert (=> b!5178862 (= lt!2134268 (++!13175 testedP!294 (Cons!60169 lt!2134264 Nil!60169)))))

(declare-fun head!11077 (List!60293) C!29588)

(assert (=> b!5178862 (= lt!2134264 (head!11077 lt!2134258))))

(declare-fun b!5178863 () Bool)

(declare-fun tp!1452526 () Bool)

(assert (=> b!5178863 (= e!3226791 tp!1452526)))

(declare-fun b!5178864 () Bool)

(assert (=> b!5178864 (= e!3226794 (not e!3226792))))

(declare-fun res!2200473 () Bool)

(assert (=> b!5178864 (=> res!2200473 e!3226792)))

(assert (=> b!5178864 (= res!2200473 (>= lt!2134266 lt!2134261))))

(declare-fun lt!2134259 () Unit!152092)

(assert (=> b!5178864 (= lt!2134259 e!3226787)))

(declare-fun c!892241 () Bool)

(assert (=> b!5178864 (= c!892241 (= lt!2134266 lt!2134261))))

(assert (=> b!5178864 (<= lt!2134266 lt!2134261)))

(declare-fun lt!2134260 () Unit!152092)

(declare-fun lemmaIsPrefixThenSmallerEqSize!953 (List!60293 List!60293) Unit!152092)

(assert (=> b!5178864 (= lt!2134260 (lemmaIsPrefixThenSmallerEqSize!953 testedP!294 input!5817))))

(declare-fun res!2200469 () Bool)

(assert (=> start!548376 (=> (not res!2200469) (not e!3226789))))

(assert (=> start!548376 (= res!2200469 (isPrefix!5792 testedP!294 input!5817))))

(assert (=> start!548376 e!3226789))

(declare-fun e!3226786 () Bool)

(assert (=> start!548376 e!3226786))

(assert (=> start!548376 e!3226788))

(declare-fun condSetEmpty!32367 () Bool)

(assert (=> start!548376 (= condSetEmpty!32367 (= baseZ!62 ((as const (Array Context!8086 Bool)) false)))))

(assert (=> start!548376 setRes!32367))

(declare-fun condSetEmpty!32368 () Bool)

(assert (=> start!548376 (= condSetEmpty!32368 (= z!4581 ((as const (Array Context!8086 Bool)) false)))))

(assert (=> start!548376 setRes!32368))

(declare-fun b!5178865 () Bool)

(declare-fun tp!1452529 () Bool)

(assert (=> b!5178865 (= e!3226786 (and tp_is_empty!38571 tp!1452529))))

(declare-fun setIsEmpty!32368 () Bool)

(assert (=> setIsEmpty!32368 setRes!32368))

(assert (= (and start!548376 res!2200469) b!5178859))

(assert (= (and b!5178859 res!2200471) b!5178856))

(assert (= (and b!5178856 res!2200472) b!5178855))

(assert (= (and b!5178855 res!2200474) b!5178864))

(assert (= (and b!5178864 c!892241) b!5178854))

(assert (= (and b!5178864 (not c!892241)) b!5178858))

(assert (= (and b!5178864 (not res!2200473)) b!5178862))

(assert (= (and b!5178862 (not res!2200470)) b!5178857))

(get-info :version)

(assert (= (and start!548376 ((_ is Cons!60169) testedP!294)) b!5178865))

(assert (= (and start!548376 ((_ is Cons!60169) input!5817)) b!5178860))

(assert (= (and start!548376 condSetEmpty!32367) setIsEmpty!32367))

(assert (= (and start!548376 (not condSetEmpty!32367)) setNonEmpty!32368))

(assert (= setNonEmpty!32368 b!5178863))

(assert (= (and start!548376 condSetEmpty!32368) setIsEmpty!32368))

(assert (= (and start!548376 (not condSetEmpty!32368)) setNonEmpty!32367))

(assert (= setNonEmpty!32367 b!5178861))

(declare-fun m!6236604 () Bool)

(assert (=> setNonEmpty!32368 m!6236604))

(declare-fun m!6236606 () Bool)

(assert (=> b!5178856 m!6236606))

(declare-fun m!6236608 () Bool)

(assert (=> b!5178856 m!6236608))

(declare-fun m!6236610 () Bool)

(assert (=> b!5178856 m!6236610))

(declare-fun m!6236612 () Bool)

(assert (=> b!5178856 m!6236612))

(declare-fun m!6236614 () Bool)

(assert (=> b!5178856 m!6236614))

(declare-fun m!6236616 () Bool)

(assert (=> start!548376 m!6236616))

(declare-fun m!6236618 () Bool)

(assert (=> b!5178859 m!6236618))

(declare-fun m!6236620 () Bool)

(assert (=> setNonEmpty!32367 m!6236620))

(declare-fun m!6236622 () Bool)

(assert (=> b!5178857 m!6236622))

(declare-fun m!6236624 () Bool)

(assert (=> b!5178857 m!6236624))

(declare-fun m!6236626 () Bool)

(assert (=> b!5178857 m!6236626))

(declare-fun m!6236628 () Bool)

(assert (=> b!5178857 m!6236628))

(declare-fun m!6236630 () Bool)

(assert (=> b!5178854 m!6236630))

(declare-fun m!6236632 () Bool)

(assert (=> b!5178854 m!6236632))

(declare-fun m!6236634 () Bool)

(assert (=> b!5178854 m!6236634))

(declare-fun m!6236636 () Bool)

(assert (=> b!5178862 m!6236636))

(declare-fun m!6236638 () Bool)

(assert (=> b!5178862 m!6236638))

(declare-fun m!6236640 () Bool)

(assert (=> b!5178862 m!6236640))

(declare-fun m!6236642 () Bool)

(assert (=> b!5178862 m!6236642))

(declare-fun m!6236644 () Bool)

(assert (=> b!5178862 m!6236644))

(declare-fun m!6236646 () Bool)

(assert (=> b!5178864 m!6236646))

(check-sat (not b!5178864) (not start!548376) (not b!5178856) (not b!5178857) (not b!5178859) (not setNonEmpty!32367) (not b!5178863) (not b!5178862) (not b!5178861) (not setNonEmpty!32368) tp_is_empty!38571 (not b!5178865) (not b!5178854) (not b!5178860))
(check-sat)
(get-model)

(declare-fun d!1673277 () Bool)

(declare-fun c!892245 () Bool)

(assert (=> d!1673277 (= c!892245 ((_ is Cons!60169) testedP!294))))

(declare-fun e!3226797 () (InoxSet Context!8086))

(assert (=> d!1673277 (= (derivationZipper!282 baseZ!62 testedP!294) e!3226797)))

(declare-fun b!5178870 () Bool)

(assert (=> b!5178870 (= e!3226797 (derivationZipper!282 (derivationStepZipper!1005 baseZ!62 (h!66617 testedP!294)) (t!373446 testedP!294)))))

(declare-fun b!5178871 () Bool)

(assert (=> b!5178871 (= e!3226797 baseZ!62)))

(assert (= (and d!1673277 c!892245) b!5178870))

(assert (= (and d!1673277 (not c!892245)) b!5178871))

(declare-fun m!6236648 () Bool)

(assert (=> b!5178870 m!6236648))

(assert (=> b!5178870 m!6236648))

(declare-fun m!6236650 () Bool)

(assert (=> b!5178870 m!6236650))

(assert (=> b!5178859 d!1673277))

(declare-fun d!1673281 () Bool)

(declare-fun lt!2134274 () Int)

(assert (=> d!1673281 (>= lt!2134274 0)))

(declare-fun e!3226800 () Int)

(assert (=> d!1673281 (= lt!2134274 e!3226800)))

(declare-fun c!892248 () Bool)

(assert (=> d!1673281 (= c!892248 ((_ is Nil!60169) input!5817))))

(assert (=> d!1673281 (= (size!39695 input!5817) lt!2134274)))

(declare-fun b!5178876 () Bool)

(assert (=> b!5178876 (= e!3226800 0)))

(declare-fun b!5178877 () Bool)

(assert (=> b!5178877 (= e!3226800 (+ 1 (size!39695 (t!373446 input!5817))))))

(assert (= (and d!1673281 c!892248) b!5178876))

(assert (= (and d!1673281 (not c!892248)) b!5178877))

(declare-fun m!6236654 () Bool)

(assert (=> b!5178877 m!6236654))

(assert (=> b!5178856 d!1673281))

(declare-fun d!1673285 () Bool)

(declare-fun lt!2134282 () List!60293)

(assert (=> d!1673285 (= (++!13175 testedP!294 lt!2134282) input!5817)))

(declare-fun e!3226812 () List!60293)

(assert (=> d!1673285 (= lt!2134282 e!3226812)))

(declare-fun c!892251 () Bool)

(assert (=> d!1673285 (= c!892251 ((_ is Cons!60169) testedP!294))))

(assert (=> d!1673285 (>= (size!39695 input!5817) (size!39695 testedP!294))))

(assert (=> d!1673285 (= (getSuffix!3440 input!5817 testedP!294) lt!2134282)))

(declare-fun b!5178894 () Bool)

(declare-fun tail!10176 (List!60293) List!60293)

(assert (=> b!5178894 (= e!3226812 (getSuffix!3440 (tail!10176 input!5817) (t!373446 testedP!294)))))

(declare-fun b!5178895 () Bool)

(assert (=> b!5178895 (= e!3226812 input!5817)))

(assert (= (and d!1673285 c!892251) b!5178894))

(assert (= (and d!1673285 (not c!892251)) b!5178895))

(declare-fun m!6236662 () Bool)

(assert (=> d!1673285 m!6236662))

(assert (=> d!1673285 m!6236610))

(assert (=> d!1673285 m!6236606))

(declare-fun m!6236664 () Bool)

(assert (=> b!5178894 m!6236664))

(assert (=> b!5178894 m!6236664))

(declare-fun m!6236666 () Bool)

(assert (=> b!5178894 m!6236666))

(assert (=> b!5178856 d!1673285))

(declare-fun d!1673289 () Bool)

(declare-fun lt!2134284 () Int)

(assert (=> d!1673289 (>= lt!2134284 0)))

(declare-fun e!3226813 () Int)

(assert (=> d!1673289 (= lt!2134284 e!3226813)))

(declare-fun c!892252 () Bool)

(assert (=> d!1673289 (= c!892252 ((_ is Nil!60169) testedP!294))))

(assert (=> d!1673289 (= (size!39695 testedP!294) lt!2134284)))

(declare-fun b!5178896 () Bool)

(assert (=> b!5178896 (= e!3226813 0)))

(declare-fun b!5178897 () Bool)

(assert (=> b!5178897 (= e!3226813 (+ 1 (size!39695 (t!373446 testedP!294))))))

(assert (= (and d!1673289 c!892252) b!5178896))

(assert (= (and d!1673289 (not c!892252)) b!5178897))

(declare-fun m!6236670 () Bool)

(assert (=> b!5178897 m!6236670))

(assert (=> b!5178856 d!1673289))

(declare-fun d!1673293 () Bool)

(assert (=> d!1673293 (= (isEmpty!32215 (_1!35237 (findLongestMatchInnerZipper!315 z!4581 testedP!294 lt!2134266 lt!2134258 input!5817 lt!2134261))) ((_ is Nil!60169) (_1!35237 (findLongestMatchInnerZipper!315 z!4581 testedP!294 lt!2134266 lt!2134258 input!5817 lt!2134261))))))

(assert (=> b!5178856 d!1673293))

(declare-fun bm!363919 () Bool)

(declare-fun call!363927 () List!60293)

(assert (=> bm!363919 (= call!363927 (tail!10176 lt!2134258))))

(declare-fun b!5178926 () Bool)

(declare-fun e!3226834 () tuple2!63868)

(assert (=> b!5178926 (= e!3226834 (tuple2!63869 Nil!60169 input!5817))))

(declare-fun d!1673295 () Bool)

(declare-fun e!3226833 () Bool)

(assert (=> d!1673295 e!3226833))

(declare-fun res!2200491 () Bool)

(assert (=> d!1673295 (=> (not res!2200491) (not e!3226833))))

(declare-fun lt!2134345 () tuple2!63868)

(assert (=> d!1673295 (= res!2200491 (= (++!13175 (_1!35237 lt!2134345) (_2!35237 lt!2134345)) input!5817))))

(declare-fun e!3226836 () tuple2!63868)

(assert (=> d!1673295 (= lt!2134345 e!3226836)))

(declare-fun c!892269 () Bool)

(declare-fun lostCauseZipper!1346 ((InoxSet Context!8086)) Bool)

(assert (=> d!1673295 (= c!892269 (lostCauseZipper!1346 z!4581))))

(declare-fun lt!2134347 () Unit!152092)

(declare-fun Unit!152099 () Unit!152092)

(assert (=> d!1673295 (= lt!2134347 Unit!152099)))

(assert (=> d!1673295 (= (getSuffix!3440 input!5817 testedP!294) lt!2134258)))

(declare-fun lt!2134362 () Unit!152092)

(declare-fun lt!2134360 () Unit!152092)

(assert (=> d!1673295 (= lt!2134362 lt!2134360)))

(declare-fun lt!2134355 () List!60293)

(assert (=> d!1673295 (= lt!2134258 lt!2134355)))

(declare-fun lemmaSamePrefixThenSameSuffix!2713 (List!60293 List!60293 List!60293 List!60293 List!60293) Unit!152092)

(assert (=> d!1673295 (= lt!2134360 (lemmaSamePrefixThenSameSuffix!2713 testedP!294 lt!2134258 testedP!294 lt!2134355 input!5817))))

(assert (=> d!1673295 (= lt!2134355 (getSuffix!3440 input!5817 testedP!294))))

(declare-fun lt!2134338 () Unit!152092)

(declare-fun lt!2134339 () Unit!152092)

(assert (=> d!1673295 (= lt!2134338 lt!2134339)))

(assert (=> d!1673295 (isPrefix!5792 testedP!294 (++!13175 testedP!294 lt!2134258))))

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!3607 (List!60293 List!60293) Unit!152092)

(assert (=> d!1673295 (= lt!2134339 (lemmaConcatTwoListThenFirstIsPrefix!3607 testedP!294 lt!2134258))))

(assert (=> d!1673295 (= (++!13175 testedP!294 lt!2134258) input!5817)))

(assert (=> d!1673295 (= (findLongestMatchInnerZipper!315 z!4581 testedP!294 lt!2134266 lt!2134258 input!5817 lt!2134261) lt!2134345)))

(declare-fun bm!363920 () Bool)

(declare-fun call!363926 () (InoxSet Context!8086))

(declare-fun call!363925 () C!29588)

(assert (=> bm!363920 (= call!363926 (derivationStepZipper!1005 z!4581 call!363925))))

(declare-fun b!5178927 () Bool)

(declare-fun e!3226837 () tuple2!63868)

(declare-fun lt!2134350 () tuple2!63868)

(assert (=> b!5178927 (= e!3226837 lt!2134350)))

(declare-fun b!5178928 () Bool)

(assert (=> b!5178928 (= e!3226834 (tuple2!63869 testedP!294 Nil!60169))))

(declare-fun b!5178929 () Bool)

(declare-fun e!3226832 () Unit!152092)

(declare-fun Unit!152100 () Unit!152092)

(assert (=> b!5178929 (= e!3226832 Unit!152100)))

(declare-fun lt!2134356 () Unit!152092)

(declare-fun call!363929 () Unit!152092)

(assert (=> b!5178929 (= lt!2134356 call!363929)))

(declare-fun call!363931 () Bool)

(assert (=> b!5178929 call!363931))

(declare-fun lt!2134351 () Unit!152092)

(assert (=> b!5178929 (= lt!2134351 lt!2134356)))

(declare-fun lt!2134343 () Unit!152092)

(declare-fun call!363924 () Unit!152092)

(assert (=> b!5178929 (= lt!2134343 call!363924)))

(assert (=> b!5178929 (= input!5817 testedP!294)))

(declare-fun lt!2134361 () Unit!152092)

(assert (=> b!5178929 (= lt!2134361 lt!2134343)))

(assert (=> b!5178929 false))

(declare-fun bm!363921 () Bool)

(declare-fun call!363928 () Bool)

(assert (=> bm!363921 (= call!363928 (nullableZipper!1197 z!4581))))

(declare-fun lt!2134354 () List!60293)

(declare-fun bm!363922 () Bool)

(declare-fun call!363930 () tuple2!63868)

(assert (=> bm!363922 (= call!363930 (findLongestMatchInnerZipper!315 call!363926 lt!2134354 (+ lt!2134266 1) call!363927 input!5817 lt!2134261))))

(declare-fun b!5178930 () Bool)

(declare-fun e!3226835 () tuple2!63868)

(assert (=> b!5178930 (= e!3226836 e!3226835)))

(declare-fun c!892267 () Bool)

(assert (=> b!5178930 (= c!892267 (= lt!2134266 lt!2134261))))

(declare-fun bm!363923 () Bool)

(assert (=> bm!363923 (= call!363931 (isPrefix!5792 input!5817 input!5817))))

(declare-fun b!5178931 () Bool)

(assert (=> b!5178931 (= e!3226836 (tuple2!63869 Nil!60169 input!5817))))

(declare-fun b!5178932 () Bool)

(declare-fun c!892268 () Bool)

(assert (=> b!5178932 (= c!892268 call!363928)))

(declare-fun lt!2134346 () Unit!152092)

(declare-fun lt!2134341 () Unit!152092)

(assert (=> b!5178932 (= lt!2134346 lt!2134341)))

(assert (=> b!5178932 (= input!5817 testedP!294)))

(assert (=> b!5178932 (= lt!2134341 call!363924)))

(declare-fun lt!2134353 () Unit!152092)

(declare-fun lt!2134357 () Unit!152092)

(assert (=> b!5178932 (= lt!2134353 lt!2134357)))

(assert (=> b!5178932 call!363931))

(assert (=> b!5178932 (= lt!2134357 call!363929)))

(assert (=> b!5178932 (= e!3226835 e!3226834)))

(declare-fun b!5178933 () Bool)

(assert (=> b!5178933 (= e!3226837 (tuple2!63869 testedP!294 lt!2134258))))

(declare-fun bm!363924 () Bool)

(assert (=> bm!363924 (= call!363929 (lemmaIsPrefixRefl!3797 input!5817 input!5817))))

(declare-fun bm!363925 () Bool)

(assert (=> bm!363925 (= call!363925 (head!11077 lt!2134258))))

(declare-fun b!5178934 () Bool)

(declare-fun e!3226830 () Bool)

(assert (=> b!5178934 (= e!3226830 (>= (size!39695 (_1!35237 lt!2134345)) (size!39695 testedP!294)))))

(declare-fun b!5178935 () Bool)

(declare-fun Unit!152101 () Unit!152092)

(assert (=> b!5178935 (= e!3226832 Unit!152101)))

(declare-fun b!5178936 () Bool)

(declare-fun c!892270 () Bool)

(assert (=> b!5178936 (= c!892270 call!363928)))

(declare-fun lt!2134349 () Unit!152092)

(declare-fun lt!2134359 () Unit!152092)

(assert (=> b!5178936 (= lt!2134349 lt!2134359)))

(declare-fun lt!2134344 () C!29588)

(declare-fun lt!2134340 () List!60293)

(assert (=> b!5178936 (= (++!13175 (++!13175 testedP!294 (Cons!60169 lt!2134344 Nil!60169)) lt!2134340) input!5817)))

(declare-fun lemmaMoveElementToOtherListKeepsConcatEq!1594 (List!60293 C!29588 List!60293 List!60293) Unit!152092)

(assert (=> b!5178936 (= lt!2134359 (lemmaMoveElementToOtherListKeepsConcatEq!1594 testedP!294 lt!2134344 lt!2134340 input!5817))))

(assert (=> b!5178936 (= lt!2134340 (tail!10176 lt!2134258))))

(assert (=> b!5178936 (= lt!2134344 (head!11077 lt!2134258))))

(declare-fun lt!2134358 () Unit!152092)

(declare-fun lt!2134352 () Unit!152092)

(assert (=> b!5178936 (= lt!2134358 lt!2134352)))

(assert (=> b!5178936 (isPrefix!5792 (++!13175 testedP!294 (Cons!60169 (head!11077 (getSuffix!3440 input!5817 testedP!294)) Nil!60169)) input!5817)))

(assert (=> b!5178936 (= lt!2134352 (lemmaAddHeadSuffixToPrefixStillPrefix!1097 testedP!294 input!5817))))

(assert (=> b!5178936 (= lt!2134354 (++!13175 testedP!294 (Cons!60169 (head!11077 lt!2134258) Nil!60169)))))

(declare-fun lt!2134348 () Unit!152092)

(assert (=> b!5178936 (= lt!2134348 e!3226832)))

(declare-fun c!892265 () Bool)

(assert (=> b!5178936 (= c!892265 (= (size!39695 testedP!294) (size!39695 input!5817)))))

(declare-fun lt!2134337 () Unit!152092)

(declare-fun lt!2134342 () Unit!152092)

(assert (=> b!5178936 (= lt!2134337 lt!2134342)))

(assert (=> b!5178936 (<= (size!39695 testedP!294) (size!39695 input!5817))))

(assert (=> b!5178936 (= lt!2134342 (lemmaIsPrefixThenSmallerEqSize!953 testedP!294 input!5817))))

(declare-fun e!3226831 () tuple2!63868)

(assert (=> b!5178936 (= e!3226835 e!3226831)))

(declare-fun bm!363926 () Bool)

(assert (=> bm!363926 (= call!363924 (lemmaIsPrefixSameLengthThenSameList!1437 input!5817 testedP!294 input!5817))))

(declare-fun b!5178937 () Bool)

(assert (=> b!5178937 (= e!3226831 e!3226837)))

(assert (=> b!5178937 (= lt!2134350 call!363930)))

(declare-fun c!892266 () Bool)

(assert (=> b!5178937 (= c!892266 (isEmpty!32215 (_1!35237 lt!2134350)))))

(declare-fun b!5178938 () Bool)

(assert (=> b!5178938 (= e!3226833 e!3226830)))

(declare-fun res!2200492 () Bool)

(assert (=> b!5178938 (=> res!2200492 e!3226830)))

(assert (=> b!5178938 (= res!2200492 (isEmpty!32215 (_1!35237 lt!2134345)))))

(declare-fun b!5178939 () Bool)

(assert (=> b!5178939 (= e!3226831 call!363930)))

(assert (= (and d!1673295 c!892269) b!5178931))

(assert (= (and d!1673295 (not c!892269)) b!5178930))

(assert (= (and b!5178930 c!892267) b!5178932))

(assert (= (and b!5178930 (not c!892267)) b!5178936))

(assert (= (and b!5178932 c!892268) b!5178928))

(assert (= (and b!5178932 (not c!892268)) b!5178926))

(assert (= (and b!5178936 c!892265) b!5178929))

(assert (= (and b!5178936 (not c!892265)) b!5178935))

(assert (= (and b!5178936 c!892270) b!5178937))

(assert (= (and b!5178936 (not c!892270)) b!5178939))

(assert (= (and b!5178937 c!892266) b!5178933))

(assert (= (and b!5178937 (not c!892266)) b!5178927))

(assert (= (or b!5178937 b!5178939) bm!363919))

(assert (= (or b!5178937 b!5178939) bm!363925))

(assert (= (or b!5178937 b!5178939) bm!363920))

(assert (= (or b!5178937 b!5178939) bm!363922))

(assert (= (or b!5178932 b!5178929) bm!363924))

(assert (= (or b!5178932 b!5178936) bm!363921))

(assert (= (or b!5178932 b!5178929) bm!363923))

(assert (= (or b!5178932 b!5178929) bm!363926))

(assert (= (and d!1673295 res!2200491) b!5178938))

(assert (= (and b!5178938 (not res!2200492)) b!5178934))

(declare-fun m!6236672 () Bool)

(assert (=> b!5178937 m!6236672))

(assert (=> bm!363925 m!6236642))

(declare-fun m!6236674 () Bool)

(assert (=> b!5178934 m!6236674))

(assert (=> b!5178934 m!6236606))

(declare-fun m!6236676 () Bool)

(assert (=> bm!363919 m!6236676))

(declare-fun m!6236678 () Bool)

(assert (=> bm!363922 m!6236678))

(assert (=> bm!363924 m!6236630))

(assert (=> bm!363926 m!6236634))

(declare-fun m!6236680 () Bool)

(assert (=> bm!363920 m!6236680))

(declare-fun m!6236682 () Bool)

(assert (=> b!5178938 m!6236682))

(assert (=> bm!363921 m!6236640))

(assert (=> bm!363923 m!6236632))

(assert (=> b!5178936 m!6236608))

(declare-fun m!6236684 () Bool)

(assert (=> b!5178936 m!6236684))

(declare-fun m!6236686 () Bool)

(assert (=> b!5178936 m!6236686))

(assert (=> b!5178936 m!6236646))

(declare-fun m!6236688 () Bool)

(assert (=> b!5178936 m!6236688))

(assert (=> b!5178936 m!6236636))

(declare-fun m!6236690 () Bool)

(assert (=> b!5178936 m!6236690))

(assert (=> b!5178936 m!6236676))

(assert (=> b!5178936 m!6236608))

(declare-fun m!6236692 () Bool)

(assert (=> b!5178936 m!6236692))

(declare-fun m!6236694 () Bool)

(assert (=> b!5178936 m!6236694))

(assert (=> b!5178936 m!6236606))

(assert (=> b!5178936 m!6236610))

(assert (=> b!5178936 m!6236690))

(declare-fun m!6236696 () Bool)

(assert (=> b!5178936 m!6236696))

(assert (=> b!5178936 m!6236692))

(assert (=> b!5178936 m!6236642))

(declare-fun m!6236698 () Bool)

(assert (=> d!1673295 m!6236698))

(declare-fun m!6236700 () Bool)

(assert (=> d!1673295 m!6236700))

(declare-fun m!6236702 () Bool)

(assert (=> d!1673295 m!6236702))

(assert (=> d!1673295 m!6236700))

(assert (=> d!1673295 m!6236608))

(declare-fun m!6236704 () Bool)

(assert (=> d!1673295 m!6236704))

(declare-fun m!6236706 () Bool)

(assert (=> d!1673295 m!6236706))

(declare-fun m!6236708 () Bool)

(assert (=> d!1673295 m!6236708))

(assert (=> b!5178856 d!1673295))

(declare-fun b!5178951 () Bool)

(declare-fun e!3226844 () Bool)

(assert (=> b!5178951 (= e!3226844 (>= (size!39695 input!5817) (size!39695 testedP!294)))))

(declare-fun b!5178949 () Bool)

(declare-fun res!2200503 () Bool)

(declare-fun e!3226845 () Bool)

(assert (=> b!5178949 (=> (not res!2200503) (not e!3226845))))

(assert (=> b!5178949 (= res!2200503 (= (head!11077 testedP!294) (head!11077 input!5817)))))

(declare-fun b!5178948 () Bool)

(declare-fun e!3226846 () Bool)

(assert (=> b!5178948 (= e!3226846 e!3226845)))

(declare-fun res!2200502 () Bool)

(assert (=> b!5178948 (=> (not res!2200502) (not e!3226845))))

(assert (=> b!5178948 (= res!2200502 (not ((_ is Nil!60169) input!5817)))))

(declare-fun d!1673297 () Bool)

(assert (=> d!1673297 e!3226844))

(declare-fun res!2200504 () Bool)

(assert (=> d!1673297 (=> res!2200504 e!3226844)))

(declare-fun lt!2134365 () Bool)

(assert (=> d!1673297 (= res!2200504 (not lt!2134365))))

(assert (=> d!1673297 (= lt!2134365 e!3226846)))

(declare-fun res!2200501 () Bool)

(assert (=> d!1673297 (=> res!2200501 e!3226846)))

(assert (=> d!1673297 (= res!2200501 ((_ is Nil!60169) testedP!294))))

(assert (=> d!1673297 (= (isPrefix!5792 testedP!294 input!5817) lt!2134365)))

(declare-fun b!5178950 () Bool)

(assert (=> b!5178950 (= e!3226845 (isPrefix!5792 (tail!10176 testedP!294) (tail!10176 input!5817)))))

(assert (= (and d!1673297 (not res!2200501)) b!5178948))

(assert (= (and b!5178948 res!2200502) b!5178949))

(assert (= (and b!5178949 res!2200503) b!5178950))

(assert (= (and d!1673297 (not res!2200504)) b!5178951))

(assert (=> b!5178951 m!6236610))

(assert (=> b!5178951 m!6236606))

(declare-fun m!6236710 () Bool)

(assert (=> b!5178949 m!6236710))

(declare-fun m!6236712 () Bool)

(assert (=> b!5178949 m!6236712))

(declare-fun m!6236714 () Bool)

(assert (=> b!5178950 m!6236714))

(assert (=> b!5178950 m!6236664))

(assert (=> b!5178950 m!6236714))

(assert (=> b!5178950 m!6236664))

(declare-fun m!6236716 () Bool)

(assert (=> b!5178950 m!6236716))

(assert (=> start!548376 d!1673297))

(declare-fun d!1673299 () Bool)

(assert (=> d!1673299 (<= (size!39695 testedP!294) (size!39695 input!5817))))

(declare-fun lt!2134368 () Unit!152092)

(declare-fun choose!38466 (List!60293 List!60293) Unit!152092)

(assert (=> d!1673299 (= lt!2134368 (choose!38466 testedP!294 input!5817))))

(assert (=> d!1673299 (isPrefix!5792 testedP!294 input!5817)))

(assert (=> d!1673299 (= (lemmaIsPrefixThenSmallerEqSize!953 testedP!294 input!5817) lt!2134368)))

(declare-fun bs!1206382 () Bool)

(assert (= bs!1206382 d!1673299))

(assert (=> bs!1206382 m!6236606))

(assert (=> bs!1206382 m!6236610))

(declare-fun m!6236718 () Bool)

(assert (=> bs!1206382 m!6236718))

(assert (=> bs!1206382 m!6236616))

(assert (=> b!5178864 d!1673299))

(declare-fun d!1673301 () Bool)

(declare-fun lt!2134369 () Int)

(assert (=> d!1673301 (>= lt!2134369 0)))

(declare-fun e!3226847 () Int)

(assert (=> d!1673301 (= lt!2134369 e!3226847)))

(declare-fun c!892271 () Bool)

(assert (=> d!1673301 (= c!892271 ((_ is Nil!60169) lt!2134268))))

(assert (=> d!1673301 (= (size!39695 lt!2134268) lt!2134369)))

(declare-fun b!5178952 () Bool)

(assert (=> b!5178952 (= e!3226847 0)))

(declare-fun b!5178953 () Bool)

(assert (=> b!5178953 (= e!3226847 (+ 1 (size!39695 (t!373446 lt!2134268))))))

(assert (= (and d!1673301 c!892271) b!5178952))

(assert (= (and d!1673301 (not c!892271)) b!5178953))

(declare-fun m!6236720 () Bool)

(assert (=> b!5178953 m!6236720))

(assert (=> b!5178857 d!1673301))

(declare-fun d!1673303 () Bool)

(declare-fun c!892272 () Bool)

(assert (=> d!1673303 (= c!892272 ((_ is Cons!60169) lt!2134268))))

(declare-fun e!3226848 () (InoxSet Context!8086))

(assert (=> d!1673303 (= (derivationZipper!282 baseZ!62 lt!2134268) e!3226848)))

(declare-fun b!5178954 () Bool)

(assert (=> b!5178954 (= e!3226848 (derivationZipper!282 (derivationStepZipper!1005 baseZ!62 (h!66617 lt!2134268)) (t!373446 lt!2134268)))))

(declare-fun b!5178955 () Bool)

(assert (=> b!5178955 (= e!3226848 baseZ!62)))

(assert (= (and d!1673303 c!892272) b!5178954))

(assert (= (and d!1673303 (not c!892272)) b!5178955))

(declare-fun m!6236722 () Bool)

(assert (=> b!5178954 m!6236722))

(assert (=> b!5178954 m!6236722))

(declare-fun m!6236724 () Bool)

(assert (=> b!5178954 m!6236724))

(assert (=> b!5178857 d!1673303))

(declare-fun d!1673305 () Bool)

(assert (=> d!1673305 true))

(declare-fun lambda!258762 () Int)

(declare-fun flatMap!462 ((InoxSet Context!8086) Int) (InoxSet Context!8086))

(assert (=> d!1673305 (= (derivationStepZipper!1005 z!4581 lt!2134264) (flatMap!462 z!4581 lambda!258762))))

(declare-fun bs!1206391 () Bool)

(assert (= bs!1206391 d!1673305))

(declare-fun m!6236826 () Bool)

(assert (=> bs!1206391 m!6236826))

(assert (=> b!5178857 d!1673305))

(declare-fun d!1673343 () Bool)

(assert (=> d!1673343 (= (derivationZipper!282 baseZ!62 (++!13175 testedP!294 (Cons!60169 lt!2134264 Nil!60169))) (derivationStepZipper!1005 z!4581 lt!2134264))))

(declare-fun lt!2134472 () Unit!152092)

(declare-fun choose!38467 ((InoxSet Context!8086) (InoxSet Context!8086) List!60293 C!29588) Unit!152092)

(assert (=> d!1673343 (= lt!2134472 (choose!38467 baseZ!62 z!4581 testedP!294 lt!2134264))))

(assert (=> d!1673343 (= (derivationZipper!282 baseZ!62 testedP!294) z!4581)))

(assert (=> d!1673343 (= (lemmaDerivativeOnLWithANewCharIsANewDerivativeStep!115 baseZ!62 z!4581 testedP!294 lt!2134264) lt!2134472)))

(declare-fun bs!1206392 () Bool)

(assert (= bs!1206392 d!1673343))

(assert (=> bs!1206392 m!6236638))

(declare-fun m!6236828 () Bool)

(assert (=> bs!1206392 m!6236828))

(assert (=> bs!1206392 m!6236638))

(declare-fun m!6236830 () Bool)

(assert (=> bs!1206392 m!6236830))

(assert (=> bs!1206392 m!6236626))

(assert (=> bs!1206392 m!6236618))

(assert (=> b!5178857 d!1673343))

(declare-fun d!1673345 () Bool)

(declare-fun lambda!258765 () Int)

(declare-fun forall!14167 (List!60294 Int) Bool)

(assert (=> d!1673345 (= (inv!79894 setElem!32368) (forall!14167 (exprs!4543 setElem!32368) lambda!258765))))

(declare-fun bs!1206393 () Bool)

(assert (= bs!1206393 d!1673345))

(declare-fun m!6236832 () Bool)

(assert (=> bs!1206393 m!6236832))

(assert (=> setNonEmpty!32367 d!1673345))

(declare-fun d!1673347 () Bool)

(assert (=> d!1673347 (isPrefix!5792 input!5817 input!5817)))

(declare-fun lt!2134475 () Unit!152092)

(declare-fun choose!38468 (List!60293 List!60293) Unit!152092)

(assert (=> d!1673347 (= lt!2134475 (choose!38468 input!5817 input!5817))))

(assert (=> d!1673347 (= (lemmaIsPrefixRefl!3797 input!5817 input!5817) lt!2134475)))

(declare-fun bs!1206394 () Bool)

(assert (= bs!1206394 d!1673347))

(assert (=> bs!1206394 m!6236632))

(declare-fun m!6236834 () Bool)

(assert (=> bs!1206394 m!6236834))

(assert (=> b!5178854 d!1673347))

(declare-fun b!5179067 () Bool)

(declare-fun e!3226909 () Bool)

(assert (=> b!5179067 (= e!3226909 (>= (size!39695 input!5817) (size!39695 input!5817)))))

(declare-fun b!5179065 () Bool)

(declare-fun res!2200527 () Bool)

(declare-fun e!3226910 () Bool)

(assert (=> b!5179065 (=> (not res!2200527) (not e!3226910))))

(assert (=> b!5179065 (= res!2200527 (= (head!11077 input!5817) (head!11077 input!5817)))))

(declare-fun b!5179064 () Bool)

(declare-fun e!3226911 () Bool)

(assert (=> b!5179064 (= e!3226911 e!3226910)))

(declare-fun res!2200526 () Bool)

(assert (=> b!5179064 (=> (not res!2200526) (not e!3226910))))

(assert (=> b!5179064 (= res!2200526 (not ((_ is Nil!60169) input!5817)))))

(declare-fun d!1673349 () Bool)

(assert (=> d!1673349 e!3226909))

(declare-fun res!2200528 () Bool)

(assert (=> d!1673349 (=> res!2200528 e!3226909)))

(declare-fun lt!2134476 () Bool)

(assert (=> d!1673349 (= res!2200528 (not lt!2134476))))

(assert (=> d!1673349 (= lt!2134476 e!3226911)))

(declare-fun res!2200525 () Bool)

(assert (=> d!1673349 (=> res!2200525 e!3226911)))

(assert (=> d!1673349 (= res!2200525 ((_ is Nil!60169) input!5817))))

(assert (=> d!1673349 (= (isPrefix!5792 input!5817 input!5817) lt!2134476)))

(declare-fun b!5179066 () Bool)

(assert (=> b!5179066 (= e!3226910 (isPrefix!5792 (tail!10176 input!5817) (tail!10176 input!5817)))))

(assert (= (and d!1673349 (not res!2200525)) b!5179064))

(assert (= (and b!5179064 res!2200526) b!5179065))

(assert (= (and b!5179065 res!2200527) b!5179066))

(assert (= (and d!1673349 (not res!2200528)) b!5179067))

(assert (=> b!5179067 m!6236610))

(assert (=> b!5179067 m!6236610))

(assert (=> b!5179065 m!6236712))

(assert (=> b!5179065 m!6236712))

(assert (=> b!5179066 m!6236664))

(assert (=> b!5179066 m!6236664))

(assert (=> b!5179066 m!6236664))

(assert (=> b!5179066 m!6236664))

(declare-fun m!6236836 () Bool)

(assert (=> b!5179066 m!6236836))

(assert (=> b!5178854 d!1673349))

(declare-fun d!1673351 () Bool)

(assert (=> d!1673351 (= input!5817 testedP!294)))

(declare-fun lt!2134479 () Unit!152092)

(declare-fun choose!38469 (List!60293 List!60293 List!60293) Unit!152092)

(assert (=> d!1673351 (= lt!2134479 (choose!38469 input!5817 testedP!294 input!5817))))

(assert (=> d!1673351 (isPrefix!5792 input!5817 input!5817)))

(assert (=> d!1673351 (= (lemmaIsPrefixSameLengthThenSameList!1437 input!5817 testedP!294 input!5817) lt!2134479)))

(declare-fun bs!1206395 () Bool)

(assert (= bs!1206395 d!1673351))

(declare-fun m!6236838 () Bool)

(assert (=> bs!1206395 m!6236838))

(assert (=> bs!1206395 m!6236632))

(assert (=> b!5178854 d!1673351))

(declare-fun b!5179071 () Bool)

(declare-fun e!3226912 () Bool)

(assert (=> b!5179071 (= e!3226912 (>= (size!39695 input!5817) (size!39695 lt!2134268)))))

(declare-fun b!5179069 () Bool)

(declare-fun res!2200531 () Bool)

(declare-fun e!3226913 () Bool)

(assert (=> b!5179069 (=> (not res!2200531) (not e!3226913))))

(assert (=> b!5179069 (= res!2200531 (= (head!11077 lt!2134268) (head!11077 input!5817)))))

(declare-fun b!5179068 () Bool)

(declare-fun e!3226914 () Bool)

(assert (=> b!5179068 (= e!3226914 e!3226913)))

(declare-fun res!2200530 () Bool)

(assert (=> b!5179068 (=> (not res!2200530) (not e!3226913))))

(assert (=> b!5179068 (= res!2200530 (not ((_ is Nil!60169) input!5817)))))

(declare-fun d!1673353 () Bool)

(assert (=> d!1673353 e!3226912))

(declare-fun res!2200532 () Bool)

(assert (=> d!1673353 (=> res!2200532 e!3226912)))

(declare-fun lt!2134480 () Bool)

(assert (=> d!1673353 (= res!2200532 (not lt!2134480))))

(assert (=> d!1673353 (= lt!2134480 e!3226914)))

(declare-fun res!2200529 () Bool)

(assert (=> d!1673353 (=> res!2200529 e!3226914)))

(assert (=> d!1673353 (= res!2200529 ((_ is Nil!60169) lt!2134268))))

(assert (=> d!1673353 (= (isPrefix!5792 lt!2134268 input!5817) lt!2134480)))

(declare-fun b!5179070 () Bool)

(assert (=> b!5179070 (= e!3226913 (isPrefix!5792 (tail!10176 lt!2134268) (tail!10176 input!5817)))))

(assert (= (and d!1673353 (not res!2200529)) b!5179068))

(assert (= (and b!5179068 res!2200530) b!5179069))

(assert (= (and b!5179069 res!2200531) b!5179070))

(assert (= (and d!1673353 (not res!2200532)) b!5179071))

(assert (=> b!5179071 m!6236610))

(assert (=> b!5179071 m!6236622))

(declare-fun m!6236840 () Bool)

(assert (=> b!5179069 m!6236840))

(assert (=> b!5179069 m!6236712))

(declare-fun m!6236842 () Bool)

(assert (=> b!5179070 m!6236842))

(assert (=> b!5179070 m!6236664))

(assert (=> b!5179070 m!6236842))

(assert (=> b!5179070 m!6236664))

(declare-fun m!6236844 () Bool)

(assert (=> b!5179070 m!6236844))

(assert (=> b!5178862 d!1673353))

(declare-fun b!5179080 () Bool)

(declare-fun e!3226919 () List!60293)

(assert (=> b!5179080 (= e!3226919 (Cons!60169 lt!2134264 Nil!60169))))

(declare-fun b!5179081 () Bool)

(assert (=> b!5179081 (= e!3226919 (Cons!60169 (h!66617 testedP!294) (++!13175 (t!373446 testedP!294) (Cons!60169 lt!2134264 Nil!60169))))))

(declare-fun e!3226920 () Bool)

(declare-fun lt!2134483 () List!60293)

(declare-fun b!5179083 () Bool)

(assert (=> b!5179083 (= e!3226920 (or (not (= (Cons!60169 lt!2134264 Nil!60169) Nil!60169)) (= lt!2134483 testedP!294)))))

(declare-fun b!5179082 () Bool)

(declare-fun res!2200538 () Bool)

(assert (=> b!5179082 (=> (not res!2200538) (not e!3226920))))

(assert (=> b!5179082 (= res!2200538 (= (size!39695 lt!2134483) (+ (size!39695 testedP!294) (size!39695 (Cons!60169 lt!2134264 Nil!60169)))))))

(declare-fun d!1673355 () Bool)

(assert (=> d!1673355 e!3226920))

(declare-fun res!2200537 () Bool)

(assert (=> d!1673355 (=> (not res!2200537) (not e!3226920))))

(declare-fun content!10667 (List!60293) (InoxSet C!29588))

(assert (=> d!1673355 (= res!2200537 (= (content!10667 lt!2134483) ((_ map or) (content!10667 testedP!294) (content!10667 (Cons!60169 lt!2134264 Nil!60169)))))))

(assert (=> d!1673355 (= lt!2134483 e!3226919)))

(declare-fun c!892316 () Bool)

(assert (=> d!1673355 (= c!892316 ((_ is Nil!60169) testedP!294))))

(assert (=> d!1673355 (= (++!13175 testedP!294 (Cons!60169 lt!2134264 Nil!60169)) lt!2134483)))

(assert (= (and d!1673355 c!892316) b!5179080))

(assert (= (and d!1673355 (not c!892316)) b!5179081))

(assert (= (and d!1673355 res!2200537) b!5179082))

(assert (= (and b!5179082 res!2200538) b!5179083))

(declare-fun m!6236846 () Bool)

(assert (=> b!5179081 m!6236846))

(declare-fun m!6236848 () Bool)

(assert (=> b!5179082 m!6236848))

(assert (=> b!5179082 m!6236606))

(declare-fun m!6236850 () Bool)

(assert (=> b!5179082 m!6236850))

(declare-fun m!6236852 () Bool)

(assert (=> d!1673355 m!6236852))

(declare-fun m!6236854 () Bool)

(assert (=> d!1673355 m!6236854))

(declare-fun m!6236856 () Bool)

(assert (=> d!1673355 m!6236856))

(assert (=> b!5178862 d!1673355))

(declare-fun d!1673357 () Bool)

(assert (=> d!1673357 (isPrefix!5792 (++!13175 testedP!294 (Cons!60169 (head!11077 (getSuffix!3440 input!5817 testedP!294)) Nil!60169)) input!5817)))

(declare-fun lt!2134486 () Unit!152092)

(declare-fun choose!38470 (List!60293 List!60293) Unit!152092)

(assert (=> d!1673357 (= lt!2134486 (choose!38470 testedP!294 input!5817))))

(assert (=> d!1673357 (isPrefix!5792 testedP!294 input!5817)))

(assert (=> d!1673357 (= (lemmaAddHeadSuffixToPrefixStillPrefix!1097 testedP!294 input!5817) lt!2134486)))

(declare-fun bs!1206396 () Bool)

(assert (= bs!1206396 d!1673357))

(assert (=> bs!1206396 m!6236692))

(assert (=> bs!1206396 m!6236608))

(assert (=> bs!1206396 m!6236684))

(declare-fun m!6236858 () Bool)

(assert (=> bs!1206396 m!6236858))

(assert (=> bs!1206396 m!6236608))

(assert (=> bs!1206396 m!6236692))

(assert (=> bs!1206396 m!6236694))

(assert (=> bs!1206396 m!6236616))

(assert (=> b!5178862 d!1673357))

(declare-fun d!1673359 () Bool)

(declare-fun lambda!258768 () Int)

(declare-fun exists!1944 ((InoxSet Context!8086) Int) Bool)

(assert (=> d!1673359 (= (nullableZipper!1197 z!4581) (exists!1944 z!4581 lambda!258768))))

(declare-fun bs!1206397 () Bool)

(assert (= bs!1206397 d!1673359))

(declare-fun m!6236860 () Bool)

(assert (=> bs!1206397 m!6236860))

(assert (=> b!5178862 d!1673359))

(declare-fun d!1673361 () Bool)

(assert (=> d!1673361 (= (head!11077 lt!2134258) (h!66617 lt!2134258))))

(assert (=> b!5178862 d!1673361))

(declare-fun bs!1206398 () Bool)

(declare-fun d!1673363 () Bool)

(assert (= bs!1206398 (and d!1673363 d!1673345)))

(declare-fun lambda!258769 () Int)

(assert (=> bs!1206398 (= lambda!258769 lambda!258765)))

(assert (=> d!1673363 (= (inv!79894 setElem!32367) (forall!14167 (exprs!4543 setElem!32367) lambda!258769))))

(declare-fun bs!1206399 () Bool)

(assert (= bs!1206399 d!1673363))

(declare-fun m!6236862 () Bool)

(assert (=> bs!1206399 m!6236862))

(assert (=> setNonEmpty!32368 d!1673363))

(declare-fun b!5179088 () Bool)

(declare-fun e!3226923 () Bool)

(declare-fun tp!1452556 () Bool)

(declare-fun tp!1452557 () Bool)

(assert (=> b!5179088 (= e!3226923 (and tp!1452556 tp!1452557))))

(assert (=> b!5178863 (= tp!1452526 e!3226923)))

(assert (= (and b!5178863 ((_ is Cons!60170) (exprs!4543 setElem!32367))) b!5179088))

(declare-fun b!5179093 () Bool)

(declare-fun e!3226926 () Bool)

(declare-fun tp!1452560 () Bool)

(assert (=> b!5179093 (= e!3226926 (and tp_is_empty!38571 tp!1452560))))

(assert (=> b!5178865 (= tp!1452529 e!3226926)))

(assert (= (and b!5178865 ((_ is Cons!60169) (t!373446 testedP!294))) b!5179093))

(declare-fun b!5179094 () Bool)

(declare-fun e!3226927 () Bool)

(declare-fun tp!1452561 () Bool)

(assert (=> b!5179094 (= e!3226927 (and tp_is_empty!38571 tp!1452561))))

(assert (=> b!5178860 (= tp!1452528 e!3226927)))

(assert (= (and b!5178860 ((_ is Cons!60169) (t!373446 input!5817))) b!5179094))

(declare-fun b!5179095 () Bool)

(declare-fun e!3226928 () Bool)

(declare-fun tp!1452562 () Bool)

(declare-fun tp!1452563 () Bool)

(assert (=> b!5179095 (= e!3226928 (and tp!1452562 tp!1452563))))

(assert (=> b!5178861 (= tp!1452531 e!3226928)))

(assert (= (and b!5178861 ((_ is Cons!60170) (exprs!4543 setElem!32368))) b!5179095))

(declare-fun condSetEmpty!32375 () Bool)

(assert (=> setNonEmpty!32367 (= condSetEmpty!32375 (= setRest!32368 ((as const (Array Context!8086 Bool)) false)))))

(declare-fun setRes!32375 () Bool)

(assert (=> setNonEmpty!32367 (= tp!1452527 setRes!32375)))

(declare-fun setIsEmpty!32375 () Bool)

(assert (=> setIsEmpty!32375 setRes!32375))

(declare-fun e!3226931 () Bool)

(declare-fun setElem!32375 () Context!8086)

(declare-fun setNonEmpty!32375 () Bool)

(declare-fun tp!1452569 () Bool)

(assert (=> setNonEmpty!32375 (= setRes!32375 (and tp!1452569 (inv!79894 setElem!32375) e!3226931))))

(declare-fun setRest!32375 () (InoxSet Context!8086))

(assert (=> setNonEmpty!32375 (= setRest!32368 ((_ map or) (store ((as const (Array Context!8086 Bool)) false) setElem!32375 true) setRest!32375))))

(declare-fun b!5179100 () Bool)

(declare-fun tp!1452568 () Bool)

(assert (=> b!5179100 (= e!3226931 tp!1452568)))

(assert (= (and setNonEmpty!32367 condSetEmpty!32375) setIsEmpty!32375))

(assert (= (and setNonEmpty!32367 (not condSetEmpty!32375)) setNonEmpty!32375))

(assert (= setNonEmpty!32375 b!5179100))

(declare-fun m!6236864 () Bool)

(assert (=> setNonEmpty!32375 m!6236864))

(declare-fun condSetEmpty!32376 () Bool)

(assert (=> setNonEmpty!32368 (= condSetEmpty!32376 (= setRest!32367 ((as const (Array Context!8086 Bool)) false)))))

(declare-fun setRes!32376 () Bool)

(assert (=> setNonEmpty!32368 (= tp!1452530 setRes!32376)))

(declare-fun setIsEmpty!32376 () Bool)

(assert (=> setIsEmpty!32376 setRes!32376))

(declare-fun e!3226932 () Bool)

(declare-fun setNonEmpty!32376 () Bool)

(declare-fun setElem!32376 () Context!8086)

(declare-fun tp!1452571 () Bool)

(assert (=> setNonEmpty!32376 (= setRes!32376 (and tp!1452571 (inv!79894 setElem!32376) e!3226932))))

(declare-fun setRest!32376 () (InoxSet Context!8086))

(assert (=> setNonEmpty!32376 (= setRest!32367 ((_ map or) (store ((as const (Array Context!8086 Bool)) false) setElem!32376 true) setRest!32376))))

(declare-fun b!5179101 () Bool)

(declare-fun tp!1452570 () Bool)

(assert (=> b!5179101 (= e!3226932 tp!1452570)))

(assert (= (and setNonEmpty!32368 condSetEmpty!32376) setIsEmpty!32376))

(assert (= (and setNonEmpty!32368 (not condSetEmpty!32376)) setNonEmpty!32376))

(assert (= setNonEmpty!32376 b!5179101))

(declare-fun m!6236866 () Bool)

(assert (=> setNonEmpty!32376 m!6236866))

(check-sat (not b!5178897) (not d!1673357) (not d!1673285) (not b!5178894) (not d!1673345) (not bm!363924) (not b!5178954) (not bm!363921) (not b!5178951) (not d!1673343) (not d!1673295) (not d!1673359) (not b!5179088) (not b!5178870) (not d!1673355) (not b!5179094) (not bm!363919) (not b!5178937) (not bm!363925) (not d!1673347) (not b!5179101) tp_is_empty!38571 (not b!5178934) (not b!5179066) (not b!5178936) (not d!1673363) (not b!5179069) (not b!5179065) (not b!5178953) (not b!5179071) (not bm!363922) (not bm!363926) (not b!5179093) (not b!5179081) (not b!5179095) (not d!1673305) (not b!5178950) (not b!5178877) (not setNonEmpty!32376) (not bm!363923) (not b!5179070) (not b!5179082) (not b!5178938) (not b!5178949) (not setNonEmpty!32375) (not b!5179067) (not b!5179100) (not bm!363920) (not d!1673351) (not d!1673299))
(check-sat)
(get-model)

(assert (=> b!5178951 d!1673281))

(assert (=> b!5178951 d!1673289))

(declare-fun d!1673365 () Bool)

(assert (=> d!1673365 (= (head!11077 input!5817) (h!66617 input!5817))))

(assert (=> b!5179065 d!1673365))

(declare-fun bs!1206400 () Bool)

(declare-fun d!1673367 () Bool)

(assert (= bs!1206400 (and d!1673367 d!1673345)))

(declare-fun lambda!258770 () Int)

(assert (=> bs!1206400 (= lambda!258770 lambda!258765)))

(declare-fun bs!1206401 () Bool)

(assert (= bs!1206401 (and d!1673367 d!1673363)))

(assert (=> bs!1206401 (= lambda!258770 lambda!258769)))

(assert (=> d!1673367 (= (inv!79894 setElem!32376) (forall!14167 (exprs!4543 setElem!32376) lambda!258770))))

(declare-fun bs!1206402 () Bool)

(assert (= bs!1206402 d!1673367))

(declare-fun m!6236868 () Bool)

(assert (=> bs!1206402 m!6236868))

(assert (=> setNonEmpty!32376 d!1673367))

(assert (=> d!1673347 d!1673349))

(declare-fun d!1673369 () Bool)

(assert (=> d!1673369 (isPrefix!5792 input!5817 input!5817)))

(assert (=> d!1673369 true))

(declare-fun _$45!2368 () Unit!152092)

(assert (=> d!1673369 (= (choose!38468 input!5817 input!5817) _$45!2368)))

(declare-fun bs!1206403 () Bool)

(assert (= bs!1206403 d!1673369))

(assert (=> bs!1206403 m!6236632))

(assert (=> d!1673347 d!1673369))

(assert (=> b!5178936 d!1673281))

(declare-fun b!5179102 () Bool)

(declare-fun e!3226933 () List!60293)

(assert (=> b!5179102 (= e!3226933 (Cons!60169 (head!11077 (getSuffix!3440 input!5817 testedP!294)) Nil!60169))))

(declare-fun b!5179103 () Bool)

(assert (=> b!5179103 (= e!3226933 (Cons!60169 (h!66617 testedP!294) (++!13175 (t!373446 testedP!294) (Cons!60169 (head!11077 (getSuffix!3440 input!5817 testedP!294)) Nil!60169))))))

(declare-fun b!5179105 () Bool)

(declare-fun lt!2134487 () List!60293)

(declare-fun e!3226934 () Bool)

(assert (=> b!5179105 (= e!3226934 (or (not (= (Cons!60169 (head!11077 (getSuffix!3440 input!5817 testedP!294)) Nil!60169) Nil!60169)) (= lt!2134487 testedP!294)))))

(declare-fun b!5179104 () Bool)

(declare-fun res!2200540 () Bool)

(assert (=> b!5179104 (=> (not res!2200540) (not e!3226934))))

(assert (=> b!5179104 (= res!2200540 (= (size!39695 lt!2134487) (+ (size!39695 testedP!294) (size!39695 (Cons!60169 (head!11077 (getSuffix!3440 input!5817 testedP!294)) Nil!60169)))))))

(declare-fun d!1673371 () Bool)

(assert (=> d!1673371 e!3226934))

(declare-fun res!2200539 () Bool)

(assert (=> d!1673371 (=> (not res!2200539) (not e!3226934))))

(assert (=> d!1673371 (= res!2200539 (= (content!10667 lt!2134487) ((_ map or) (content!10667 testedP!294) (content!10667 (Cons!60169 (head!11077 (getSuffix!3440 input!5817 testedP!294)) Nil!60169)))))))

(assert (=> d!1673371 (= lt!2134487 e!3226933)))

(declare-fun c!892319 () Bool)

(assert (=> d!1673371 (= c!892319 ((_ is Nil!60169) testedP!294))))

(assert (=> d!1673371 (= (++!13175 testedP!294 (Cons!60169 (head!11077 (getSuffix!3440 input!5817 testedP!294)) Nil!60169)) lt!2134487)))

(assert (= (and d!1673371 c!892319) b!5179102))

(assert (= (and d!1673371 (not c!892319)) b!5179103))

(assert (= (and d!1673371 res!2200539) b!5179104))

(assert (= (and b!5179104 res!2200540) b!5179105))

(declare-fun m!6236870 () Bool)

(assert (=> b!5179103 m!6236870))

(declare-fun m!6236872 () Bool)

(assert (=> b!5179104 m!6236872))

(assert (=> b!5179104 m!6236606))

(declare-fun m!6236874 () Bool)

(assert (=> b!5179104 m!6236874))

(declare-fun m!6236876 () Bool)

(assert (=> d!1673371 m!6236876))

(assert (=> d!1673371 m!6236854))

(declare-fun m!6236878 () Bool)

(assert (=> d!1673371 m!6236878))

(assert (=> b!5178936 d!1673371))

(assert (=> b!5178936 d!1673299))

(declare-fun d!1673373 () Bool)

(assert (=> d!1673373 (= (head!11077 (getSuffix!3440 input!5817 testedP!294)) (h!66617 (getSuffix!3440 input!5817 testedP!294)))))

(assert (=> b!5178936 d!1673373))

(declare-fun b!5179106 () Bool)

(declare-fun e!3226935 () List!60293)

(assert (=> b!5179106 (= e!3226935 (Cons!60169 (head!11077 lt!2134258) Nil!60169))))

(declare-fun b!5179107 () Bool)

(assert (=> b!5179107 (= e!3226935 (Cons!60169 (h!66617 testedP!294) (++!13175 (t!373446 testedP!294) (Cons!60169 (head!11077 lt!2134258) Nil!60169))))))

(declare-fun e!3226936 () Bool)

(declare-fun lt!2134488 () List!60293)

(declare-fun b!5179109 () Bool)

(assert (=> b!5179109 (= e!3226936 (or (not (= (Cons!60169 (head!11077 lt!2134258) Nil!60169) Nil!60169)) (= lt!2134488 testedP!294)))))

(declare-fun b!5179108 () Bool)

(declare-fun res!2200542 () Bool)

(assert (=> b!5179108 (=> (not res!2200542) (not e!3226936))))

(assert (=> b!5179108 (= res!2200542 (= (size!39695 lt!2134488) (+ (size!39695 testedP!294) (size!39695 (Cons!60169 (head!11077 lt!2134258) Nil!60169)))))))

(declare-fun d!1673375 () Bool)

(assert (=> d!1673375 e!3226936))

(declare-fun res!2200541 () Bool)

(assert (=> d!1673375 (=> (not res!2200541) (not e!3226936))))

(assert (=> d!1673375 (= res!2200541 (= (content!10667 lt!2134488) ((_ map or) (content!10667 testedP!294) (content!10667 (Cons!60169 (head!11077 lt!2134258) Nil!60169)))))))

(assert (=> d!1673375 (= lt!2134488 e!3226935)))

(declare-fun c!892320 () Bool)

(assert (=> d!1673375 (= c!892320 ((_ is Nil!60169) testedP!294))))

(assert (=> d!1673375 (= (++!13175 testedP!294 (Cons!60169 (head!11077 lt!2134258) Nil!60169)) lt!2134488)))

(assert (= (and d!1673375 c!892320) b!5179106))

(assert (= (and d!1673375 (not c!892320)) b!5179107))

(assert (= (and d!1673375 res!2200541) b!5179108))

(assert (= (and b!5179108 res!2200542) b!5179109))

(declare-fun m!6236880 () Bool)

(assert (=> b!5179107 m!6236880))

(declare-fun m!6236882 () Bool)

(assert (=> b!5179108 m!6236882))

(assert (=> b!5179108 m!6236606))

(declare-fun m!6236884 () Bool)

(assert (=> b!5179108 m!6236884))

(declare-fun m!6236886 () Bool)

(assert (=> d!1673375 m!6236886))

(assert (=> d!1673375 m!6236854))

(declare-fun m!6236888 () Bool)

(assert (=> d!1673375 m!6236888))

(assert (=> b!5178936 d!1673375))

(assert (=> b!5178936 d!1673289))

(assert (=> b!5178936 d!1673357))

(declare-fun b!5179113 () Bool)

(declare-fun e!3226937 () Bool)

(assert (=> b!5179113 (= e!3226937 (>= (size!39695 input!5817) (size!39695 (++!13175 testedP!294 (Cons!60169 (head!11077 (getSuffix!3440 input!5817 testedP!294)) Nil!60169)))))))

(declare-fun b!5179111 () Bool)

(declare-fun res!2200545 () Bool)

(declare-fun e!3226938 () Bool)

(assert (=> b!5179111 (=> (not res!2200545) (not e!3226938))))

(assert (=> b!5179111 (= res!2200545 (= (head!11077 (++!13175 testedP!294 (Cons!60169 (head!11077 (getSuffix!3440 input!5817 testedP!294)) Nil!60169))) (head!11077 input!5817)))))

(declare-fun b!5179110 () Bool)

(declare-fun e!3226939 () Bool)

(assert (=> b!5179110 (= e!3226939 e!3226938)))

(declare-fun res!2200544 () Bool)

(assert (=> b!5179110 (=> (not res!2200544) (not e!3226938))))

(assert (=> b!5179110 (= res!2200544 (not ((_ is Nil!60169) input!5817)))))

(declare-fun d!1673377 () Bool)

(assert (=> d!1673377 e!3226937))

(declare-fun res!2200546 () Bool)

(assert (=> d!1673377 (=> res!2200546 e!3226937)))

(declare-fun lt!2134489 () Bool)

(assert (=> d!1673377 (= res!2200546 (not lt!2134489))))

(assert (=> d!1673377 (= lt!2134489 e!3226939)))

(declare-fun res!2200543 () Bool)

(assert (=> d!1673377 (=> res!2200543 e!3226939)))

(assert (=> d!1673377 (= res!2200543 ((_ is Nil!60169) (++!13175 testedP!294 (Cons!60169 (head!11077 (getSuffix!3440 input!5817 testedP!294)) Nil!60169))))))

(assert (=> d!1673377 (= (isPrefix!5792 (++!13175 testedP!294 (Cons!60169 (head!11077 (getSuffix!3440 input!5817 testedP!294)) Nil!60169)) input!5817) lt!2134489)))

(declare-fun b!5179112 () Bool)

(assert (=> b!5179112 (= e!3226938 (isPrefix!5792 (tail!10176 (++!13175 testedP!294 (Cons!60169 (head!11077 (getSuffix!3440 input!5817 testedP!294)) Nil!60169))) (tail!10176 input!5817)))))

(assert (= (and d!1673377 (not res!2200543)) b!5179110))

(assert (= (and b!5179110 res!2200544) b!5179111))

(assert (= (and b!5179111 res!2200545) b!5179112))

(assert (= (and d!1673377 (not res!2200546)) b!5179113))

(assert (=> b!5179113 m!6236610))

(assert (=> b!5179113 m!6236692))

(declare-fun m!6236890 () Bool)

(assert (=> b!5179113 m!6236890))

(assert (=> b!5179111 m!6236692))

(declare-fun m!6236892 () Bool)

(assert (=> b!5179111 m!6236892))

(assert (=> b!5179111 m!6236712))

(assert (=> b!5179112 m!6236692))

(declare-fun m!6236894 () Bool)

(assert (=> b!5179112 m!6236894))

(assert (=> b!5179112 m!6236664))

(assert (=> b!5179112 m!6236894))

(assert (=> b!5179112 m!6236664))

(declare-fun m!6236896 () Bool)

(assert (=> b!5179112 m!6236896))

(assert (=> b!5178936 d!1673377))

(assert (=> b!5178936 d!1673361))

(declare-fun d!1673379 () Bool)

(assert (=> d!1673379 (= (++!13175 (++!13175 testedP!294 (Cons!60169 lt!2134344 Nil!60169)) lt!2134340) input!5817)))

(declare-fun lt!2134492 () Unit!152092)

(declare-fun choose!38471 (List!60293 C!29588 List!60293 List!60293) Unit!152092)

(assert (=> d!1673379 (= lt!2134492 (choose!38471 testedP!294 lt!2134344 lt!2134340 input!5817))))

(assert (=> d!1673379 (= (++!13175 testedP!294 (Cons!60169 lt!2134344 lt!2134340)) input!5817)))

(assert (=> d!1673379 (= (lemmaMoveElementToOtherListKeepsConcatEq!1594 testedP!294 lt!2134344 lt!2134340 input!5817) lt!2134492)))

(declare-fun bs!1206404 () Bool)

(assert (= bs!1206404 d!1673379))

(assert (=> bs!1206404 m!6236690))

(assert (=> bs!1206404 m!6236690))

(assert (=> bs!1206404 m!6236696))

(declare-fun m!6236898 () Bool)

(assert (=> bs!1206404 m!6236898))

(declare-fun m!6236900 () Bool)

(assert (=> bs!1206404 m!6236900))

(assert (=> b!5178936 d!1673379))

(assert (=> b!5178936 d!1673285))

(declare-fun b!5179114 () Bool)

(declare-fun e!3226940 () List!60293)

(assert (=> b!5179114 (= e!3226940 lt!2134340)))

(declare-fun b!5179115 () Bool)

(assert (=> b!5179115 (= e!3226940 (Cons!60169 (h!66617 (++!13175 testedP!294 (Cons!60169 lt!2134344 Nil!60169))) (++!13175 (t!373446 (++!13175 testedP!294 (Cons!60169 lt!2134344 Nil!60169))) lt!2134340)))))

(declare-fun b!5179117 () Bool)

(declare-fun lt!2134493 () List!60293)

(declare-fun e!3226941 () Bool)

(assert (=> b!5179117 (= e!3226941 (or (not (= lt!2134340 Nil!60169)) (= lt!2134493 (++!13175 testedP!294 (Cons!60169 lt!2134344 Nil!60169)))))))

(declare-fun b!5179116 () Bool)

(declare-fun res!2200548 () Bool)

(assert (=> b!5179116 (=> (not res!2200548) (not e!3226941))))

(assert (=> b!5179116 (= res!2200548 (= (size!39695 lt!2134493) (+ (size!39695 (++!13175 testedP!294 (Cons!60169 lt!2134344 Nil!60169))) (size!39695 lt!2134340))))))

(declare-fun d!1673381 () Bool)

(assert (=> d!1673381 e!3226941))

(declare-fun res!2200547 () Bool)

(assert (=> d!1673381 (=> (not res!2200547) (not e!3226941))))

(assert (=> d!1673381 (= res!2200547 (= (content!10667 lt!2134493) ((_ map or) (content!10667 (++!13175 testedP!294 (Cons!60169 lt!2134344 Nil!60169))) (content!10667 lt!2134340))))))

(assert (=> d!1673381 (= lt!2134493 e!3226940)))

(declare-fun c!892321 () Bool)

(assert (=> d!1673381 (= c!892321 ((_ is Nil!60169) (++!13175 testedP!294 (Cons!60169 lt!2134344 Nil!60169))))))

(assert (=> d!1673381 (= (++!13175 (++!13175 testedP!294 (Cons!60169 lt!2134344 Nil!60169)) lt!2134340) lt!2134493)))

(assert (= (and d!1673381 c!892321) b!5179114))

(assert (= (and d!1673381 (not c!892321)) b!5179115))

(assert (= (and d!1673381 res!2200547) b!5179116))

(assert (= (and b!5179116 res!2200548) b!5179117))

(declare-fun m!6236902 () Bool)

(assert (=> b!5179115 m!6236902))

(declare-fun m!6236904 () Bool)

(assert (=> b!5179116 m!6236904))

(assert (=> b!5179116 m!6236690))

(declare-fun m!6236906 () Bool)

(assert (=> b!5179116 m!6236906))

(declare-fun m!6236908 () Bool)

(assert (=> b!5179116 m!6236908))

(declare-fun m!6236910 () Bool)

(assert (=> d!1673381 m!6236910))

(assert (=> d!1673381 m!6236690))

(declare-fun m!6236912 () Bool)

(assert (=> d!1673381 m!6236912))

(declare-fun m!6236914 () Bool)

(assert (=> d!1673381 m!6236914))

(assert (=> b!5178936 d!1673381))

(declare-fun d!1673383 () Bool)

(assert (=> d!1673383 (= (tail!10176 lt!2134258) (t!373446 lt!2134258))))

(assert (=> b!5178936 d!1673383))

(declare-fun b!5179118 () Bool)

(declare-fun e!3226942 () List!60293)

(assert (=> b!5179118 (= e!3226942 (Cons!60169 lt!2134344 Nil!60169))))

(declare-fun b!5179119 () Bool)

(assert (=> b!5179119 (= e!3226942 (Cons!60169 (h!66617 testedP!294) (++!13175 (t!373446 testedP!294) (Cons!60169 lt!2134344 Nil!60169))))))

(declare-fun lt!2134494 () List!60293)

(declare-fun b!5179121 () Bool)

(declare-fun e!3226943 () Bool)

(assert (=> b!5179121 (= e!3226943 (or (not (= (Cons!60169 lt!2134344 Nil!60169) Nil!60169)) (= lt!2134494 testedP!294)))))

(declare-fun b!5179120 () Bool)

(declare-fun res!2200550 () Bool)

(assert (=> b!5179120 (=> (not res!2200550) (not e!3226943))))

(assert (=> b!5179120 (= res!2200550 (= (size!39695 lt!2134494) (+ (size!39695 testedP!294) (size!39695 (Cons!60169 lt!2134344 Nil!60169)))))))

(declare-fun d!1673385 () Bool)

(assert (=> d!1673385 e!3226943))

(declare-fun res!2200549 () Bool)

(assert (=> d!1673385 (=> (not res!2200549) (not e!3226943))))

(assert (=> d!1673385 (= res!2200549 (= (content!10667 lt!2134494) ((_ map or) (content!10667 testedP!294) (content!10667 (Cons!60169 lt!2134344 Nil!60169)))))))

(assert (=> d!1673385 (= lt!2134494 e!3226942)))

(declare-fun c!892322 () Bool)

(assert (=> d!1673385 (= c!892322 ((_ is Nil!60169) testedP!294))))

(assert (=> d!1673385 (= (++!13175 testedP!294 (Cons!60169 lt!2134344 Nil!60169)) lt!2134494)))

(assert (= (and d!1673385 c!892322) b!5179118))

(assert (= (and d!1673385 (not c!892322)) b!5179119))

(assert (= (and d!1673385 res!2200549) b!5179120))

(assert (= (and b!5179120 res!2200550) b!5179121))

(declare-fun m!6236916 () Bool)

(assert (=> b!5179119 m!6236916))

(declare-fun m!6236918 () Bool)

(assert (=> b!5179120 m!6236918))

(assert (=> b!5179120 m!6236606))

(declare-fun m!6236920 () Bool)

(assert (=> b!5179120 m!6236920))

(declare-fun m!6236922 () Bool)

(assert (=> d!1673385 m!6236922))

(assert (=> d!1673385 m!6236854))

(declare-fun m!6236924 () Bool)

(assert (=> d!1673385 m!6236924))

(assert (=> b!5178936 d!1673385))

(declare-fun d!1673387 () Bool)

(declare-fun lt!2134495 () Int)

(assert (=> d!1673387 (>= lt!2134495 0)))

(declare-fun e!3226944 () Int)

(assert (=> d!1673387 (= lt!2134495 e!3226944)))

(declare-fun c!892323 () Bool)

(assert (=> d!1673387 (= c!892323 ((_ is Nil!60169) (t!373446 testedP!294)))))

(assert (=> d!1673387 (= (size!39695 (t!373446 testedP!294)) lt!2134495)))

(declare-fun b!5179122 () Bool)

(assert (=> b!5179122 (= e!3226944 0)))

(declare-fun b!5179123 () Bool)

(assert (=> b!5179123 (= e!3226944 (+ 1 (size!39695 (t!373446 (t!373446 testedP!294)))))))

(assert (= (and d!1673387 c!892323) b!5179122))

(assert (= (and d!1673387 (not c!892323)) b!5179123))

(declare-fun m!6236926 () Bool)

(assert (=> b!5179123 m!6236926))

(assert (=> b!5178897 d!1673387))

(assert (=> bm!363924 d!1673347))

(declare-fun d!1673389 () Bool)

(assert (=> d!1673389 (= (head!11077 testedP!294) (h!66617 testedP!294))))

(assert (=> b!5178949 d!1673389))

(assert (=> b!5178949 d!1673365))

(declare-fun d!1673391 () Bool)

(declare-fun choose!38472 ((InoxSet Context!8086) Int) (InoxSet Context!8086))

(assert (=> d!1673391 (= (flatMap!462 z!4581 lambda!258762) (choose!38472 z!4581 lambda!258762))))

(declare-fun bs!1206405 () Bool)

(assert (= bs!1206405 d!1673391))

(declare-fun m!6236928 () Bool)

(assert (=> bs!1206405 m!6236928))

(assert (=> d!1673305 d!1673391))

(assert (=> bm!363925 d!1673361))

(assert (=> b!5179067 d!1673281))

(assert (=> d!1673357 d!1673285))

(assert (=> d!1673357 d!1673373))

(assert (=> d!1673357 d!1673297))

(assert (=> d!1673357 d!1673377))

(declare-fun d!1673393 () Bool)

(assert (=> d!1673393 (isPrefix!5792 (++!13175 testedP!294 (Cons!60169 (head!11077 (getSuffix!3440 input!5817 testedP!294)) Nil!60169)) input!5817)))

(assert (=> d!1673393 true))

(declare-fun _$65!1839 () Unit!152092)

(assert (=> d!1673393 (= (choose!38470 testedP!294 input!5817) _$65!1839)))

(declare-fun bs!1206406 () Bool)

(assert (= bs!1206406 d!1673393))

(assert (=> bs!1206406 m!6236608))

(assert (=> bs!1206406 m!6236608))

(assert (=> bs!1206406 m!6236684))

(assert (=> bs!1206406 m!6236692))

(assert (=> bs!1206406 m!6236692))

(assert (=> bs!1206406 m!6236694))

(assert (=> d!1673357 d!1673393))

(assert (=> d!1673357 d!1673371))

(declare-fun b!5179127 () Bool)

(declare-fun e!3226945 () Bool)

(assert (=> b!5179127 (= e!3226945 (>= (size!39695 (tail!10176 input!5817)) (size!39695 (tail!10176 testedP!294))))))

(declare-fun b!5179125 () Bool)

(declare-fun res!2200553 () Bool)

(declare-fun e!3226946 () Bool)

(assert (=> b!5179125 (=> (not res!2200553) (not e!3226946))))

(assert (=> b!5179125 (= res!2200553 (= (head!11077 (tail!10176 testedP!294)) (head!11077 (tail!10176 input!5817))))))

(declare-fun b!5179124 () Bool)

(declare-fun e!3226947 () Bool)

(assert (=> b!5179124 (= e!3226947 e!3226946)))

(declare-fun res!2200552 () Bool)

(assert (=> b!5179124 (=> (not res!2200552) (not e!3226946))))

(assert (=> b!5179124 (= res!2200552 (not ((_ is Nil!60169) (tail!10176 input!5817))))))

(declare-fun d!1673395 () Bool)

(assert (=> d!1673395 e!3226945))

(declare-fun res!2200554 () Bool)

(assert (=> d!1673395 (=> res!2200554 e!3226945)))

(declare-fun lt!2134496 () Bool)

(assert (=> d!1673395 (= res!2200554 (not lt!2134496))))

(assert (=> d!1673395 (= lt!2134496 e!3226947)))

(declare-fun res!2200551 () Bool)

(assert (=> d!1673395 (=> res!2200551 e!3226947)))

(assert (=> d!1673395 (= res!2200551 ((_ is Nil!60169) (tail!10176 testedP!294)))))

(assert (=> d!1673395 (= (isPrefix!5792 (tail!10176 testedP!294) (tail!10176 input!5817)) lt!2134496)))

(declare-fun b!5179126 () Bool)

(assert (=> b!5179126 (= e!3226946 (isPrefix!5792 (tail!10176 (tail!10176 testedP!294)) (tail!10176 (tail!10176 input!5817))))))

(assert (= (and d!1673395 (not res!2200551)) b!5179124))

(assert (= (and b!5179124 res!2200552) b!5179125))

(assert (= (and b!5179125 res!2200553) b!5179126))

(assert (= (and d!1673395 (not res!2200554)) b!5179127))

(assert (=> b!5179127 m!6236664))

(declare-fun m!6236930 () Bool)

(assert (=> b!5179127 m!6236930))

(assert (=> b!5179127 m!6236714))

(declare-fun m!6236932 () Bool)

(assert (=> b!5179127 m!6236932))

(assert (=> b!5179125 m!6236714))

(declare-fun m!6236934 () Bool)

(assert (=> b!5179125 m!6236934))

(assert (=> b!5179125 m!6236664))

(declare-fun m!6236936 () Bool)

(assert (=> b!5179125 m!6236936))

(assert (=> b!5179126 m!6236714))

(declare-fun m!6236938 () Bool)

(assert (=> b!5179126 m!6236938))

(assert (=> b!5179126 m!6236664))

(declare-fun m!6236940 () Bool)

(assert (=> b!5179126 m!6236940))

(assert (=> b!5179126 m!6236938))

(assert (=> b!5179126 m!6236940))

(declare-fun m!6236942 () Bool)

(assert (=> b!5179126 m!6236942))

(assert (=> b!5178950 d!1673395))

(declare-fun d!1673397 () Bool)

(assert (=> d!1673397 (= (tail!10176 testedP!294) (t!373446 testedP!294))))

(assert (=> b!5178950 d!1673397))

(declare-fun d!1673399 () Bool)

(assert (=> d!1673399 (= (tail!10176 input!5817) (t!373446 input!5817))))

(assert (=> b!5178950 d!1673399))

(declare-fun d!1673401 () Bool)

(declare-fun lt!2134497 () Int)

(assert (=> d!1673401 (>= lt!2134497 0)))

(declare-fun e!3226948 () Int)

(assert (=> d!1673401 (= lt!2134497 e!3226948)))

(declare-fun c!892324 () Bool)

(assert (=> d!1673401 (= c!892324 ((_ is Nil!60169) (_1!35237 lt!2134345)))))

(assert (=> d!1673401 (= (size!39695 (_1!35237 lt!2134345)) lt!2134497)))

(declare-fun b!5179128 () Bool)

(assert (=> b!5179128 (= e!3226948 0)))

(declare-fun b!5179129 () Bool)

(assert (=> b!5179129 (= e!3226948 (+ 1 (size!39695 (t!373446 (_1!35237 lt!2134345)))))))

(assert (= (and d!1673401 c!892324) b!5179128))

(assert (= (and d!1673401 (not c!892324)) b!5179129))

(declare-fun m!6236944 () Bool)

(assert (=> b!5179129 m!6236944))

(assert (=> b!5178934 d!1673401))

(assert (=> b!5178934 d!1673289))

(declare-fun b!5179133 () Bool)

(declare-fun e!3226949 () Bool)

(assert (=> b!5179133 (= e!3226949 (>= (size!39695 (tail!10176 input!5817)) (size!39695 (tail!10176 input!5817))))))

(declare-fun b!5179131 () Bool)

(declare-fun res!2200557 () Bool)

(declare-fun e!3226950 () Bool)

(assert (=> b!5179131 (=> (not res!2200557) (not e!3226950))))

(assert (=> b!5179131 (= res!2200557 (= (head!11077 (tail!10176 input!5817)) (head!11077 (tail!10176 input!5817))))))

(declare-fun b!5179130 () Bool)

(declare-fun e!3226951 () Bool)

(assert (=> b!5179130 (= e!3226951 e!3226950)))

(declare-fun res!2200556 () Bool)

(assert (=> b!5179130 (=> (not res!2200556) (not e!3226950))))

(assert (=> b!5179130 (= res!2200556 (not ((_ is Nil!60169) (tail!10176 input!5817))))))

(declare-fun d!1673403 () Bool)

(assert (=> d!1673403 e!3226949))

(declare-fun res!2200558 () Bool)

(assert (=> d!1673403 (=> res!2200558 e!3226949)))

(declare-fun lt!2134498 () Bool)

(assert (=> d!1673403 (= res!2200558 (not lt!2134498))))

(assert (=> d!1673403 (= lt!2134498 e!3226951)))

(declare-fun res!2200555 () Bool)

(assert (=> d!1673403 (=> res!2200555 e!3226951)))

(assert (=> d!1673403 (= res!2200555 ((_ is Nil!60169) (tail!10176 input!5817)))))

(assert (=> d!1673403 (= (isPrefix!5792 (tail!10176 input!5817) (tail!10176 input!5817)) lt!2134498)))

(declare-fun b!5179132 () Bool)

(assert (=> b!5179132 (= e!3226950 (isPrefix!5792 (tail!10176 (tail!10176 input!5817)) (tail!10176 (tail!10176 input!5817))))))

(assert (= (and d!1673403 (not res!2200555)) b!5179130))

(assert (= (and b!5179130 res!2200556) b!5179131))

(assert (= (and b!5179131 res!2200557) b!5179132))

(assert (= (and d!1673403 (not res!2200558)) b!5179133))

(assert (=> b!5179133 m!6236664))

(assert (=> b!5179133 m!6236930))

(assert (=> b!5179133 m!6236664))

(assert (=> b!5179133 m!6236930))

(assert (=> b!5179131 m!6236664))

(assert (=> b!5179131 m!6236936))

(assert (=> b!5179131 m!6236664))

(assert (=> b!5179131 m!6236936))

(assert (=> b!5179132 m!6236664))

(assert (=> b!5179132 m!6236940))

(assert (=> b!5179132 m!6236664))

(assert (=> b!5179132 m!6236940))

(assert (=> b!5179132 m!6236940))

(assert (=> b!5179132 m!6236940))

(declare-fun m!6236946 () Bool)

(assert (=> b!5179132 m!6236946))

(assert (=> b!5179066 d!1673403))

(assert (=> b!5179066 d!1673399))

(declare-fun b!5179134 () Bool)

(declare-fun e!3226952 () List!60293)

(assert (=> b!5179134 (= e!3226952 lt!2134282)))

(declare-fun b!5179135 () Bool)

(assert (=> b!5179135 (= e!3226952 (Cons!60169 (h!66617 testedP!294) (++!13175 (t!373446 testedP!294) lt!2134282)))))

(declare-fun lt!2134499 () List!60293)

(declare-fun b!5179137 () Bool)

(declare-fun e!3226953 () Bool)

(assert (=> b!5179137 (= e!3226953 (or (not (= lt!2134282 Nil!60169)) (= lt!2134499 testedP!294)))))

(declare-fun b!5179136 () Bool)

(declare-fun res!2200560 () Bool)

(assert (=> b!5179136 (=> (not res!2200560) (not e!3226953))))

(assert (=> b!5179136 (= res!2200560 (= (size!39695 lt!2134499) (+ (size!39695 testedP!294) (size!39695 lt!2134282))))))

(declare-fun d!1673405 () Bool)

(assert (=> d!1673405 e!3226953))

(declare-fun res!2200559 () Bool)

(assert (=> d!1673405 (=> (not res!2200559) (not e!3226953))))

(assert (=> d!1673405 (= res!2200559 (= (content!10667 lt!2134499) ((_ map or) (content!10667 testedP!294) (content!10667 lt!2134282))))))

(assert (=> d!1673405 (= lt!2134499 e!3226952)))

(declare-fun c!892325 () Bool)

(assert (=> d!1673405 (= c!892325 ((_ is Nil!60169) testedP!294))))

(assert (=> d!1673405 (= (++!13175 testedP!294 lt!2134282) lt!2134499)))

(assert (= (and d!1673405 c!892325) b!5179134))

(assert (= (and d!1673405 (not c!892325)) b!5179135))

(assert (= (and d!1673405 res!2200559) b!5179136))

(assert (= (and b!5179136 res!2200560) b!5179137))

(declare-fun m!6236948 () Bool)

(assert (=> b!5179135 m!6236948))

(declare-fun m!6236950 () Bool)

(assert (=> b!5179136 m!6236950))

(assert (=> b!5179136 m!6236606))

(declare-fun m!6236952 () Bool)

(assert (=> b!5179136 m!6236952))

(declare-fun m!6236954 () Bool)

(assert (=> d!1673405 m!6236954))

(assert (=> d!1673405 m!6236854))

(declare-fun m!6236956 () Bool)

(assert (=> d!1673405 m!6236956))

(assert (=> d!1673285 d!1673405))

(assert (=> d!1673285 d!1673281))

(assert (=> d!1673285 d!1673289))

(declare-fun d!1673407 () Bool)

(declare-fun c!892326 () Bool)

(assert (=> d!1673407 (= c!892326 ((_ is Cons!60169) (t!373446 testedP!294)))))

(declare-fun e!3226954 () (InoxSet Context!8086))

(assert (=> d!1673407 (= (derivationZipper!282 (derivationStepZipper!1005 baseZ!62 (h!66617 testedP!294)) (t!373446 testedP!294)) e!3226954)))

(declare-fun b!5179138 () Bool)

(assert (=> b!5179138 (= e!3226954 (derivationZipper!282 (derivationStepZipper!1005 (derivationStepZipper!1005 baseZ!62 (h!66617 testedP!294)) (h!66617 (t!373446 testedP!294))) (t!373446 (t!373446 testedP!294))))))

(declare-fun b!5179139 () Bool)

(assert (=> b!5179139 (= e!3226954 (derivationStepZipper!1005 baseZ!62 (h!66617 testedP!294)))))

(assert (= (and d!1673407 c!892326) b!5179138))

(assert (= (and d!1673407 (not c!892326)) b!5179139))

(assert (=> b!5179138 m!6236648))

(declare-fun m!6236958 () Bool)

(assert (=> b!5179138 m!6236958))

(assert (=> b!5179138 m!6236958))

(declare-fun m!6236960 () Bool)

(assert (=> b!5179138 m!6236960))

(assert (=> b!5178870 d!1673407))

(declare-fun bs!1206407 () Bool)

(declare-fun d!1673409 () Bool)

(assert (= bs!1206407 (and d!1673409 d!1673305)))

(declare-fun lambda!258771 () Int)

(assert (=> bs!1206407 (= (= (h!66617 testedP!294) lt!2134264) (= lambda!258771 lambda!258762))))

(assert (=> d!1673409 true))

(assert (=> d!1673409 (= (derivationStepZipper!1005 baseZ!62 (h!66617 testedP!294)) (flatMap!462 baseZ!62 lambda!258771))))

(declare-fun bs!1206408 () Bool)

(assert (= bs!1206408 d!1673409))

(declare-fun m!6236962 () Bool)

(assert (=> bs!1206408 m!6236962))

(assert (=> b!5178870 d!1673409))

(declare-fun d!1673411 () Bool)

(declare-fun res!2200565 () Bool)

(declare-fun e!3226959 () Bool)

(assert (=> d!1673411 (=> res!2200565 e!3226959)))

(assert (=> d!1673411 (= res!2200565 ((_ is Nil!60170) (exprs!4543 setElem!32367)))))

(assert (=> d!1673411 (= (forall!14167 (exprs!4543 setElem!32367) lambda!258769) e!3226959)))

(declare-fun b!5179144 () Bool)

(declare-fun e!3226960 () Bool)

(assert (=> b!5179144 (= e!3226959 e!3226960)))

(declare-fun res!2200566 () Bool)

(assert (=> b!5179144 (=> (not res!2200566) (not e!3226960))))

(declare-fun dynLambda!23885 (Int Regex!14659) Bool)

(assert (=> b!5179144 (= res!2200566 (dynLambda!23885 lambda!258769 (h!66618 (exprs!4543 setElem!32367))))))

(declare-fun b!5179145 () Bool)

(assert (=> b!5179145 (= e!3226960 (forall!14167 (t!373447 (exprs!4543 setElem!32367)) lambda!258769))))

(assert (= (and d!1673411 (not res!2200565)) b!5179144))

(assert (= (and b!5179144 res!2200566) b!5179145))

(declare-fun b_lambda!201025 () Bool)

(assert (=> (not b_lambda!201025) (not b!5179144)))

(declare-fun m!6236964 () Bool)

(assert (=> b!5179144 m!6236964))

(declare-fun m!6236966 () Bool)

(assert (=> b!5179145 m!6236966))

(assert (=> d!1673363 d!1673411))

(assert (=> bm!363923 d!1673349))

(declare-fun d!1673413 () Bool)

(declare-fun c!892329 () Bool)

(assert (=> d!1673413 (= c!892329 ((_ is Nil!60169) lt!2134483))))

(declare-fun e!3226963 () (InoxSet C!29588))

(assert (=> d!1673413 (= (content!10667 lt!2134483) e!3226963)))

(declare-fun b!5179150 () Bool)

(assert (=> b!5179150 (= e!3226963 ((as const (Array C!29588 Bool)) false))))

(declare-fun b!5179151 () Bool)

(assert (=> b!5179151 (= e!3226963 ((_ map or) (store ((as const (Array C!29588 Bool)) false) (h!66617 lt!2134483) true) (content!10667 (t!373446 lt!2134483))))))

(assert (= (and d!1673413 c!892329) b!5179150))

(assert (= (and d!1673413 (not c!892329)) b!5179151))

(declare-fun m!6236968 () Bool)

(assert (=> b!5179151 m!6236968))

(declare-fun m!6236970 () Bool)

(assert (=> b!5179151 m!6236970))

(assert (=> d!1673355 d!1673413))

(declare-fun d!1673415 () Bool)

(declare-fun c!892330 () Bool)

(assert (=> d!1673415 (= c!892330 ((_ is Nil!60169) testedP!294))))

(declare-fun e!3226964 () (InoxSet C!29588))

(assert (=> d!1673415 (= (content!10667 testedP!294) e!3226964)))

(declare-fun b!5179152 () Bool)

(assert (=> b!5179152 (= e!3226964 ((as const (Array C!29588 Bool)) false))))

(declare-fun b!5179153 () Bool)

(assert (=> b!5179153 (= e!3226964 ((_ map or) (store ((as const (Array C!29588 Bool)) false) (h!66617 testedP!294) true) (content!10667 (t!373446 testedP!294))))))

(assert (= (and d!1673415 c!892330) b!5179152))

(assert (= (and d!1673415 (not c!892330)) b!5179153))

(declare-fun m!6236972 () Bool)

(assert (=> b!5179153 m!6236972))

(declare-fun m!6236974 () Bool)

(assert (=> b!5179153 m!6236974))

(assert (=> d!1673355 d!1673415))

(declare-fun d!1673417 () Bool)

(declare-fun c!892331 () Bool)

(assert (=> d!1673417 (= c!892331 ((_ is Nil!60169) (Cons!60169 lt!2134264 Nil!60169)))))

(declare-fun e!3226965 () (InoxSet C!29588))

(assert (=> d!1673417 (= (content!10667 (Cons!60169 lt!2134264 Nil!60169)) e!3226965)))

(declare-fun b!5179154 () Bool)

(assert (=> b!5179154 (= e!3226965 ((as const (Array C!29588 Bool)) false))))

(declare-fun b!5179155 () Bool)

(assert (=> b!5179155 (= e!3226965 ((_ map or) (store ((as const (Array C!29588 Bool)) false) (h!66617 (Cons!60169 lt!2134264 Nil!60169)) true) (content!10667 (t!373446 (Cons!60169 lt!2134264 Nil!60169)))))))

(assert (= (and d!1673417 c!892331) b!5179154))

(assert (= (and d!1673417 (not c!892331)) b!5179155))

(declare-fun m!6236976 () Bool)

(assert (=> b!5179155 m!6236976))

(declare-fun m!6236978 () Bool)

(assert (=> b!5179155 m!6236978))

(assert (=> d!1673355 d!1673417))

(declare-fun b!5179156 () Bool)

(declare-fun e!3226966 () List!60293)

(assert (=> b!5179156 (= e!3226966 (_2!35237 lt!2134345))))

(declare-fun b!5179157 () Bool)

(assert (=> b!5179157 (= e!3226966 (Cons!60169 (h!66617 (_1!35237 lt!2134345)) (++!13175 (t!373446 (_1!35237 lt!2134345)) (_2!35237 lt!2134345))))))

(declare-fun b!5179159 () Bool)

(declare-fun e!3226967 () Bool)

(declare-fun lt!2134500 () List!60293)

(assert (=> b!5179159 (= e!3226967 (or (not (= (_2!35237 lt!2134345) Nil!60169)) (= lt!2134500 (_1!35237 lt!2134345))))))

(declare-fun b!5179158 () Bool)

(declare-fun res!2200568 () Bool)

(assert (=> b!5179158 (=> (not res!2200568) (not e!3226967))))

(assert (=> b!5179158 (= res!2200568 (= (size!39695 lt!2134500) (+ (size!39695 (_1!35237 lt!2134345)) (size!39695 (_2!35237 lt!2134345)))))))

(declare-fun d!1673419 () Bool)

(assert (=> d!1673419 e!3226967))

(declare-fun res!2200567 () Bool)

(assert (=> d!1673419 (=> (not res!2200567) (not e!3226967))))

(assert (=> d!1673419 (= res!2200567 (= (content!10667 lt!2134500) ((_ map or) (content!10667 (_1!35237 lt!2134345)) (content!10667 (_2!35237 lt!2134345)))))))

(assert (=> d!1673419 (= lt!2134500 e!3226966)))

(declare-fun c!892332 () Bool)

(assert (=> d!1673419 (= c!892332 ((_ is Nil!60169) (_1!35237 lt!2134345)))))

(assert (=> d!1673419 (= (++!13175 (_1!35237 lt!2134345) (_2!35237 lt!2134345)) lt!2134500)))

(assert (= (and d!1673419 c!892332) b!5179156))

(assert (= (and d!1673419 (not c!892332)) b!5179157))

(assert (= (and d!1673419 res!2200567) b!5179158))

(assert (= (and b!5179158 res!2200568) b!5179159))

(declare-fun m!6236980 () Bool)

(assert (=> b!5179157 m!6236980))

(declare-fun m!6236982 () Bool)

(assert (=> b!5179158 m!6236982))

(assert (=> b!5179158 m!6236674))

(declare-fun m!6236984 () Bool)

(assert (=> b!5179158 m!6236984))

(declare-fun m!6236986 () Bool)

(assert (=> d!1673419 m!6236986))

(declare-fun m!6236988 () Bool)

(assert (=> d!1673419 m!6236988))

(declare-fun m!6236990 () Bool)

(assert (=> d!1673419 m!6236990))

(assert (=> d!1673295 d!1673419))

(declare-fun b!5179160 () Bool)

(declare-fun e!3226968 () List!60293)

(assert (=> b!5179160 (= e!3226968 lt!2134258)))

(declare-fun b!5179161 () Bool)

(assert (=> b!5179161 (= e!3226968 (Cons!60169 (h!66617 testedP!294) (++!13175 (t!373446 testedP!294) lt!2134258)))))

(declare-fun e!3226969 () Bool)

(declare-fun b!5179163 () Bool)

(declare-fun lt!2134501 () List!60293)

(assert (=> b!5179163 (= e!3226969 (or (not (= lt!2134258 Nil!60169)) (= lt!2134501 testedP!294)))))

(declare-fun b!5179162 () Bool)

(declare-fun res!2200570 () Bool)

(assert (=> b!5179162 (=> (not res!2200570) (not e!3226969))))

(assert (=> b!5179162 (= res!2200570 (= (size!39695 lt!2134501) (+ (size!39695 testedP!294) (size!39695 lt!2134258))))))

(declare-fun d!1673421 () Bool)

(assert (=> d!1673421 e!3226969))

(declare-fun res!2200569 () Bool)

(assert (=> d!1673421 (=> (not res!2200569) (not e!3226969))))

(assert (=> d!1673421 (= res!2200569 (= (content!10667 lt!2134501) ((_ map or) (content!10667 testedP!294) (content!10667 lt!2134258))))))

(assert (=> d!1673421 (= lt!2134501 e!3226968)))

(declare-fun c!892333 () Bool)

(assert (=> d!1673421 (= c!892333 ((_ is Nil!60169) testedP!294))))

(assert (=> d!1673421 (= (++!13175 testedP!294 lt!2134258) lt!2134501)))

(assert (= (and d!1673421 c!892333) b!5179160))

(assert (= (and d!1673421 (not c!892333)) b!5179161))

(assert (= (and d!1673421 res!2200569) b!5179162))

(assert (= (and b!5179162 res!2200570) b!5179163))

(declare-fun m!6236992 () Bool)

(assert (=> b!5179161 m!6236992))

(declare-fun m!6236994 () Bool)

(assert (=> b!5179162 m!6236994))

(assert (=> b!5179162 m!6236606))

(declare-fun m!6236996 () Bool)

(assert (=> b!5179162 m!6236996))

(declare-fun m!6236998 () Bool)

(assert (=> d!1673421 m!6236998))

(assert (=> d!1673421 m!6236854))

(declare-fun m!6237000 () Bool)

(assert (=> d!1673421 m!6237000))

(assert (=> d!1673295 d!1673421))

(declare-fun bs!1206409 () Bool)

(declare-fun d!1673423 () Bool)

(assert (= bs!1206409 (and d!1673423 d!1673359)))

(declare-fun lambda!258784 () Int)

(assert (=> bs!1206409 (not (= lambda!258784 lambda!258768))))

(declare-fun bs!1206410 () Bool)

(declare-fun b!5179168 () Bool)

(assert (= bs!1206410 (and b!5179168 d!1673359)))

(declare-fun lambda!258785 () Int)

(assert (=> bs!1206410 (not (= lambda!258785 lambda!258768))))

(declare-fun bs!1206411 () Bool)

(assert (= bs!1206411 (and b!5179168 d!1673423)))

(assert (=> bs!1206411 (not (= lambda!258785 lambda!258784))))

(declare-fun bs!1206412 () Bool)

(declare-fun b!5179169 () Bool)

(assert (= bs!1206412 (and b!5179169 d!1673359)))

(declare-fun lambda!258786 () Int)

(assert (=> bs!1206412 (not (= lambda!258786 lambda!258768))))

(declare-fun bs!1206413 () Bool)

(assert (= bs!1206413 (and b!5179169 d!1673423)))

(assert (=> bs!1206413 (not (= lambda!258786 lambda!258784))))

(declare-fun bs!1206414 () Bool)

(assert (= bs!1206414 (and b!5179169 b!5179168)))

(assert (=> bs!1206414 (= lambda!258786 lambda!258785)))

(declare-fun lt!2134518 () Bool)

(declare-datatypes ((Option!14845 0))(
  ( (None!14844) (Some!14844 (v!50873 List!60293)) )
))
(declare-fun isEmpty!32216 (Option!14845) Bool)

(declare-fun getLanguageWitness!1020 ((InoxSet Context!8086)) Option!14845)

(assert (=> d!1673423 (= lt!2134518 (isEmpty!32216 (getLanguageWitness!1020 z!4581)))))

(declare-fun forall!14168 ((InoxSet Context!8086) Int) Bool)

(assert (=> d!1673423 (= lt!2134518 (forall!14168 z!4581 lambda!258784))))

(declare-fun lt!2134521 () Unit!152092)

(declare-fun e!3226976 () Unit!152092)

(assert (=> d!1673423 (= lt!2134521 e!3226976)))

(declare-fun c!892344 () Bool)

(assert (=> d!1673423 (= c!892344 (not (forall!14168 z!4581 lambda!258784)))))

(assert (=> d!1673423 (= (lostCauseZipper!1346 z!4581) lt!2134518)))

(declare-fun Unit!152102 () Unit!152092)

(assert (=> b!5179169 (= e!3226976 Unit!152102)))

(declare-datatypes ((List!60295 0))(
  ( (Nil!60171) (Cons!60171 (h!66619 Context!8086) (t!373448 List!60295)) )
))
(declare-fun lt!2134519 () List!60295)

(declare-fun call!363961 () List!60295)

(assert (=> b!5179169 (= lt!2134519 call!363961)))

(declare-fun lt!2134525 () Unit!152092)

(declare-fun lemmaForallThenNotExists!447 (List!60295 Int) Unit!152092)

(assert (=> b!5179169 (= lt!2134525 (lemmaForallThenNotExists!447 lt!2134519 lambda!258784))))

(declare-fun call!363960 () Bool)

(assert (=> b!5179169 (not call!363960)))

(declare-fun lt!2134522 () Unit!152092)

(assert (=> b!5179169 (= lt!2134522 lt!2134525)))

(declare-fun bm!363955 () Bool)

(declare-fun toList!8460 ((InoxSet Context!8086)) List!60295)

(assert (=> bm!363955 (= call!363961 (toList!8460 z!4581))))

(declare-fun Unit!152103 () Unit!152092)

(assert (=> b!5179168 (= e!3226976 Unit!152103)))

(declare-fun lt!2134524 () List!60295)

(assert (=> b!5179168 (= lt!2134524 call!363961)))

(declare-fun lt!2134520 () Unit!152092)

(declare-fun lemmaNotForallThenExists!480 (List!60295 Int) Unit!152092)

(assert (=> b!5179168 (= lt!2134520 (lemmaNotForallThenExists!480 lt!2134524 lambda!258784))))

(assert (=> b!5179168 call!363960))

(declare-fun lt!2134523 () Unit!152092)

(assert (=> b!5179168 (= lt!2134523 lt!2134520)))

(declare-fun bm!363956 () Bool)

(declare-fun exists!1945 (List!60295 Int) Bool)

(assert (=> bm!363956 (= call!363960 (exists!1945 (ite c!892344 lt!2134524 lt!2134519) (ite c!892344 lambda!258785 lambda!258786)))))

(assert (= (and d!1673423 c!892344) b!5179168))

(assert (= (and d!1673423 (not c!892344)) b!5179169))

(assert (= (or b!5179168 b!5179169) bm!363955))

(assert (= (or b!5179168 b!5179169) bm!363956))

(declare-fun m!6237002 () Bool)

(assert (=> bm!363956 m!6237002))

(declare-fun m!6237004 () Bool)

(assert (=> b!5179168 m!6237004))

(declare-fun m!6237006 () Bool)

(assert (=> b!5179169 m!6237006))

(declare-fun m!6237008 () Bool)

(assert (=> bm!363955 m!6237008))

(declare-fun m!6237010 () Bool)

(assert (=> d!1673423 m!6237010))

(assert (=> d!1673423 m!6237010))

(declare-fun m!6237012 () Bool)

(assert (=> d!1673423 m!6237012))

(declare-fun m!6237014 () Bool)

(assert (=> d!1673423 m!6237014))

(assert (=> d!1673423 m!6237014))

(assert (=> d!1673295 d!1673423))

(declare-fun d!1673425 () Bool)

(assert (=> d!1673425 (isPrefix!5792 testedP!294 (++!13175 testedP!294 lt!2134258))))

(declare-fun lt!2134528 () Unit!152092)

(declare-fun choose!38474 (List!60293 List!60293) Unit!152092)

(assert (=> d!1673425 (= lt!2134528 (choose!38474 testedP!294 lt!2134258))))

(assert (=> d!1673425 (= (lemmaConcatTwoListThenFirstIsPrefix!3607 testedP!294 lt!2134258) lt!2134528)))

(declare-fun bs!1206415 () Bool)

(assert (= bs!1206415 d!1673425))

(assert (=> bs!1206415 m!6236700))

(assert (=> bs!1206415 m!6236700))

(assert (=> bs!1206415 m!6236702))

(declare-fun m!6237016 () Bool)

(assert (=> bs!1206415 m!6237016))

(assert (=> d!1673295 d!1673425))

(declare-fun d!1673427 () Bool)

(assert (=> d!1673427 (= lt!2134258 lt!2134355)))

(declare-fun lt!2134531 () Unit!152092)

(declare-fun choose!38475 (List!60293 List!60293 List!60293 List!60293 List!60293) Unit!152092)

(assert (=> d!1673427 (= lt!2134531 (choose!38475 testedP!294 lt!2134258 testedP!294 lt!2134355 input!5817))))

(assert (=> d!1673427 (isPrefix!5792 testedP!294 input!5817)))

(assert (=> d!1673427 (= (lemmaSamePrefixThenSameSuffix!2713 testedP!294 lt!2134258 testedP!294 lt!2134355 input!5817) lt!2134531)))

(declare-fun bs!1206416 () Bool)

(assert (= bs!1206416 d!1673427))

(declare-fun m!6237018 () Bool)

(assert (=> bs!1206416 m!6237018))

(assert (=> bs!1206416 m!6236616))

(assert (=> d!1673295 d!1673427))

(assert (=> d!1673295 d!1673285))

(declare-fun b!5179173 () Bool)

(declare-fun e!3226977 () Bool)

(assert (=> b!5179173 (= e!3226977 (>= (size!39695 (++!13175 testedP!294 lt!2134258)) (size!39695 testedP!294)))))

(declare-fun b!5179171 () Bool)

(declare-fun res!2200573 () Bool)

(declare-fun e!3226978 () Bool)

(assert (=> b!5179171 (=> (not res!2200573) (not e!3226978))))

(assert (=> b!5179171 (= res!2200573 (= (head!11077 testedP!294) (head!11077 (++!13175 testedP!294 lt!2134258))))))

(declare-fun b!5179170 () Bool)

(declare-fun e!3226979 () Bool)

(assert (=> b!5179170 (= e!3226979 e!3226978)))

(declare-fun res!2200572 () Bool)

(assert (=> b!5179170 (=> (not res!2200572) (not e!3226978))))

(assert (=> b!5179170 (= res!2200572 (not ((_ is Nil!60169) (++!13175 testedP!294 lt!2134258))))))

(declare-fun d!1673429 () Bool)

(assert (=> d!1673429 e!3226977))

(declare-fun res!2200574 () Bool)

(assert (=> d!1673429 (=> res!2200574 e!3226977)))

(declare-fun lt!2134532 () Bool)

(assert (=> d!1673429 (= res!2200574 (not lt!2134532))))

(assert (=> d!1673429 (= lt!2134532 e!3226979)))

(declare-fun res!2200571 () Bool)

(assert (=> d!1673429 (=> res!2200571 e!3226979)))

(assert (=> d!1673429 (= res!2200571 ((_ is Nil!60169) testedP!294))))

(assert (=> d!1673429 (= (isPrefix!5792 testedP!294 (++!13175 testedP!294 lt!2134258)) lt!2134532)))

(declare-fun b!5179172 () Bool)

(assert (=> b!5179172 (= e!3226978 (isPrefix!5792 (tail!10176 testedP!294) (tail!10176 (++!13175 testedP!294 lt!2134258))))))

(assert (= (and d!1673429 (not res!2200571)) b!5179170))

(assert (= (and b!5179170 res!2200572) b!5179171))

(assert (= (and b!5179171 res!2200573) b!5179172))

(assert (= (and d!1673429 (not res!2200574)) b!5179173))

(assert (=> b!5179173 m!6236700))

(declare-fun m!6237020 () Bool)

(assert (=> b!5179173 m!6237020))

(assert (=> b!5179173 m!6236606))

(assert (=> b!5179171 m!6236710))

(assert (=> b!5179171 m!6236700))

(declare-fun m!6237022 () Bool)

(assert (=> b!5179171 m!6237022))

(assert (=> b!5179172 m!6236714))

(assert (=> b!5179172 m!6236700))

(declare-fun m!6237024 () Bool)

(assert (=> b!5179172 m!6237024))

(assert (=> b!5179172 m!6236714))

(assert (=> b!5179172 m!6237024))

(declare-fun m!6237026 () Bool)

(assert (=> b!5179172 m!6237026))

(assert (=> d!1673295 d!1673429))

(assert (=> bm!363921 d!1673359))

(declare-fun d!1673431 () Bool)

(declare-fun lt!2134533 () Int)

(assert (=> d!1673431 (>= lt!2134533 0)))

(declare-fun e!3226980 () Int)

(assert (=> d!1673431 (= lt!2134533 e!3226980)))

(declare-fun c!892345 () Bool)

(assert (=> d!1673431 (= c!892345 ((_ is Nil!60169) (t!373446 input!5817)))))

(assert (=> d!1673431 (= (size!39695 (t!373446 input!5817)) lt!2134533)))

(declare-fun b!5179174 () Bool)

(assert (=> b!5179174 (= e!3226980 0)))

(declare-fun b!5179175 () Bool)

(assert (=> b!5179175 (= e!3226980 (+ 1 (size!39695 (t!373446 (t!373446 input!5817)))))))

(assert (= (and d!1673431 c!892345) b!5179174))

(assert (= (and d!1673431 (not c!892345)) b!5179175))

(declare-fun m!6237028 () Bool)

(assert (=> b!5179175 m!6237028))

(assert (=> b!5178877 d!1673431))

(assert (=> b!5179071 d!1673281))

(assert (=> b!5179071 d!1673301))

(declare-fun bm!363957 () Bool)

(declare-fun call!363965 () List!60293)

(assert (=> bm!363957 (= call!363965 (tail!10176 call!363927))))

(declare-fun b!5179176 () Bool)

(declare-fun e!3226985 () tuple2!63868)

(assert (=> b!5179176 (= e!3226985 (tuple2!63869 Nil!60169 input!5817))))

(declare-fun d!1673433 () Bool)

(declare-fun e!3226984 () Bool)

(assert (=> d!1673433 e!3226984))

(declare-fun res!2200575 () Bool)

(assert (=> d!1673433 (=> (not res!2200575) (not e!3226984))))

(declare-fun lt!2134542 () tuple2!63868)

(assert (=> d!1673433 (= res!2200575 (= (++!13175 (_1!35237 lt!2134542) (_2!35237 lt!2134542)) input!5817))))

(declare-fun e!3226987 () tuple2!63868)

(assert (=> d!1673433 (= lt!2134542 e!3226987)))

(declare-fun c!892350 () Bool)

(assert (=> d!1673433 (= c!892350 (lostCauseZipper!1346 call!363926))))

(declare-fun lt!2134544 () Unit!152092)

(declare-fun Unit!152104 () Unit!152092)

(assert (=> d!1673433 (= lt!2134544 Unit!152104)))

(assert (=> d!1673433 (= (getSuffix!3440 input!5817 lt!2134354) call!363927)))

(declare-fun lt!2134559 () Unit!152092)

(declare-fun lt!2134557 () Unit!152092)

(assert (=> d!1673433 (= lt!2134559 lt!2134557)))

(declare-fun lt!2134552 () List!60293)

(assert (=> d!1673433 (= call!363927 lt!2134552)))

(assert (=> d!1673433 (= lt!2134557 (lemmaSamePrefixThenSameSuffix!2713 lt!2134354 call!363927 lt!2134354 lt!2134552 input!5817))))

(assert (=> d!1673433 (= lt!2134552 (getSuffix!3440 input!5817 lt!2134354))))

(declare-fun lt!2134535 () Unit!152092)

(declare-fun lt!2134536 () Unit!152092)

(assert (=> d!1673433 (= lt!2134535 lt!2134536)))

(assert (=> d!1673433 (isPrefix!5792 lt!2134354 (++!13175 lt!2134354 call!363927))))

(assert (=> d!1673433 (= lt!2134536 (lemmaConcatTwoListThenFirstIsPrefix!3607 lt!2134354 call!363927))))

(assert (=> d!1673433 (= (++!13175 lt!2134354 call!363927) input!5817)))

(assert (=> d!1673433 (= (findLongestMatchInnerZipper!315 call!363926 lt!2134354 (+ lt!2134266 1) call!363927 input!5817 lt!2134261) lt!2134542)))

(declare-fun bm!363958 () Bool)

(declare-fun call!363964 () (InoxSet Context!8086))

(declare-fun call!363963 () C!29588)

(assert (=> bm!363958 (= call!363964 (derivationStepZipper!1005 call!363926 call!363963))))

(declare-fun b!5179177 () Bool)

(declare-fun e!3226988 () tuple2!63868)

(declare-fun lt!2134547 () tuple2!63868)

(assert (=> b!5179177 (= e!3226988 lt!2134547)))

(declare-fun b!5179178 () Bool)

(assert (=> b!5179178 (= e!3226985 (tuple2!63869 lt!2134354 Nil!60169))))

(declare-fun b!5179179 () Bool)

(declare-fun e!3226983 () Unit!152092)

(declare-fun Unit!152105 () Unit!152092)

(assert (=> b!5179179 (= e!3226983 Unit!152105)))

(declare-fun lt!2134553 () Unit!152092)

(declare-fun call!363967 () Unit!152092)

(assert (=> b!5179179 (= lt!2134553 call!363967)))

(declare-fun call!363969 () Bool)

(assert (=> b!5179179 call!363969))

(declare-fun lt!2134548 () Unit!152092)

(assert (=> b!5179179 (= lt!2134548 lt!2134553)))

(declare-fun lt!2134540 () Unit!152092)

(declare-fun call!363962 () Unit!152092)

(assert (=> b!5179179 (= lt!2134540 call!363962)))

(assert (=> b!5179179 (= input!5817 lt!2134354)))

(declare-fun lt!2134558 () Unit!152092)

(assert (=> b!5179179 (= lt!2134558 lt!2134540)))

(assert (=> b!5179179 false))

(declare-fun bm!363959 () Bool)

(declare-fun call!363966 () Bool)

(assert (=> bm!363959 (= call!363966 (nullableZipper!1197 call!363926))))

(declare-fun bm!363960 () Bool)

(declare-fun call!363968 () tuple2!63868)

(declare-fun lt!2134551 () List!60293)

(assert (=> bm!363960 (= call!363968 (findLongestMatchInnerZipper!315 call!363964 lt!2134551 (+ lt!2134266 1 1) call!363965 input!5817 lt!2134261))))

(declare-fun b!5179180 () Bool)

(declare-fun e!3226986 () tuple2!63868)

(assert (=> b!5179180 (= e!3226987 e!3226986)))

(declare-fun c!892348 () Bool)

(assert (=> b!5179180 (= c!892348 (= (+ lt!2134266 1) lt!2134261))))

(declare-fun bm!363961 () Bool)

(assert (=> bm!363961 (= call!363969 (isPrefix!5792 input!5817 input!5817))))

(declare-fun b!5179181 () Bool)

(assert (=> b!5179181 (= e!3226987 (tuple2!63869 Nil!60169 input!5817))))

(declare-fun b!5179182 () Bool)

(declare-fun c!892349 () Bool)

(assert (=> b!5179182 (= c!892349 call!363966)))

(declare-fun lt!2134543 () Unit!152092)

(declare-fun lt!2134538 () Unit!152092)

(assert (=> b!5179182 (= lt!2134543 lt!2134538)))

(assert (=> b!5179182 (= input!5817 lt!2134354)))

(assert (=> b!5179182 (= lt!2134538 call!363962)))

(declare-fun lt!2134550 () Unit!152092)

(declare-fun lt!2134554 () Unit!152092)

(assert (=> b!5179182 (= lt!2134550 lt!2134554)))

(assert (=> b!5179182 call!363969))

(assert (=> b!5179182 (= lt!2134554 call!363967)))

(assert (=> b!5179182 (= e!3226986 e!3226985)))

(declare-fun b!5179183 () Bool)

(assert (=> b!5179183 (= e!3226988 (tuple2!63869 lt!2134354 call!363927))))

(declare-fun bm!363962 () Bool)

(assert (=> bm!363962 (= call!363967 (lemmaIsPrefixRefl!3797 input!5817 input!5817))))

(declare-fun bm!363963 () Bool)

(assert (=> bm!363963 (= call!363963 (head!11077 call!363927))))

(declare-fun b!5179184 () Bool)

(declare-fun e!3226981 () Bool)

(assert (=> b!5179184 (= e!3226981 (>= (size!39695 (_1!35237 lt!2134542)) (size!39695 lt!2134354)))))

(declare-fun b!5179185 () Bool)

(declare-fun Unit!152106 () Unit!152092)

(assert (=> b!5179185 (= e!3226983 Unit!152106)))

(declare-fun b!5179186 () Bool)

(declare-fun c!892351 () Bool)

(assert (=> b!5179186 (= c!892351 call!363966)))

(declare-fun lt!2134546 () Unit!152092)

(declare-fun lt!2134556 () Unit!152092)

(assert (=> b!5179186 (= lt!2134546 lt!2134556)))

(declare-fun lt!2134537 () List!60293)

(declare-fun lt!2134541 () C!29588)

(assert (=> b!5179186 (= (++!13175 (++!13175 lt!2134354 (Cons!60169 lt!2134541 Nil!60169)) lt!2134537) input!5817)))

(assert (=> b!5179186 (= lt!2134556 (lemmaMoveElementToOtherListKeepsConcatEq!1594 lt!2134354 lt!2134541 lt!2134537 input!5817))))

(assert (=> b!5179186 (= lt!2134537 (tail!10176 call!363927))))

(assert (=> b!5179186 (= lt!2134541 (head!11077 call!363927))))

(declare-fun lt!2134555 () Unit!152092)

(declare-fun lt!2134549 () Unit!152092)

(assert (=> b!5179186 (= lt!2134555 lt!2134549)))

(assert (=> b!5179186 (isPrefix!5792 (++!13175 lt!2134354 (Cons!60169 (head!11077 (getSuffix!3440 input!5817 lt!2134354)) Nil!60169)) input!5817)))

(assert (=> b!5179186 (= lt!2134549 (lemmaAddHeadSuffixToPrefixStillPrefix!1097 lt!2134354 input!5817))))

(assert (=> b!5179186 (= lt!2134551 (++!13175 lt!2134354 (Cons!60169 (head!11077 call!363927) Nil!60169)))))

(declare-fun lt!2134545 () Unit!152092)

(assert (=> b!5179186 (= lt!2134545 e!3226983)))

(declare-fun c!892346 () Bool)

(assert (=> b!5179186 (= c!892346 (= (size!39695 lt!2134354) (size!39695 input!5817)))))

(declare-fun lt!2134534 () Unit!152092)

(declare-fun lt!2134539 () Unit!152092)

(assert (=> b!5179186 (= lt!2134534 lt!2134539)))

(assert (=> b!5179186 (<= (size!39695 lt!2134354) (size!39695 input!5817))))

(assert (=> b!5179186 (= lt!2134539 (lemmaIsPrefixThenSmallerEqSize!953 lt!2134354 input!5817))))

(declare-fun e!3226982 () tuple2!63868)

(assert (=> b!5179186 (= e!3226986 e!3226982)))

(declare-fun bm!363964 () Bool)

(assert (=> bm!363964 (= call!363962 (lemmaIsPrefixSameLengthThenSameList!1437 input!5817 lt!2134354 input!5817))))

(declare-fun b!5179187 () Bool)

(assert (=> b!5179187 (= e!3226982 e!3226988)))

(assert (=> b!5179187 (= lt!2134547 call!363968)))

(declare-fun c!892347 () Bool)

(assert (=> b!5179187 (= c!892347 (isEmpty!32215 (_1!35237 lt!2134547)))))

(declare-fun b!5179188 () Bool)

(assert (=> b!5179188 (= e!3226984 e!3226981)))

(declare-fun res!2200576 () Bool)

(assert (=> b!5179188 (=> res!2200576 e!3226981)))

(assert (=> b!5179188 (= res!2200576 (isEmpty!32215 (_1!35237 lt!2134542)))))

(declare-fun b!5179189 () Bool)

(assert (=> b!5179189 (= e!3226982 call!363968)))

(assert (= (and d!1673433 c!892350) b!5179181))

(assert (= (and d!1673433 (not c!892350)) b!5179180))

(assert (= (and b!5179180 c!892348) b!5179182))

(assert (= (and b!5179180 (not c!892348)) b!5179186))

(assert (= (and b!5179182 c!892349) b!5179178))

(assert (= (and b!5179182 (not c!892349)) b!5179176))

(assert (= (and b!5179186 c!892346) b!5179179))

(assert (= (and b!5179186 (not c!892346)) b!5179185))

(assert (= (and b!5179186 c!892351) b!5179187))

(assert (= (and b!5179186 (not c!892351)) b!5179189))

(assert (= (and b!5179187 c!892347) b!5179183))

(assert (= (and b!5179187 (not c!892347)) b!5179177))

(assert (= (or b!5179187 b!5179189) bm!363957))

(assert (= (or b!5179187 b!5179189) bm!363963))

(assert (= (or b!5179187 b!5179189) bm!363958))

(assert (= (or b!5179187 b!5179189) bm!363960))

(assert (= (or b!5179182 b!5179179) bm!363962))

(assert (= (or b!5179182 b!5179186) bm!363959))

(assert (= (or b!5179182 b!5179179) bm!363961))

(assert (= (or b!5179182 b!5179179) bm!363964))

(assert (= (and d!1673433 res!2200575) b!5179188))

(assert (= (and b!5179188 (not res!2200576)) b!5179184))

(declare-fun m!6237030 () Bool)

(assert (=> b!5179187 m!6237030))

(declare-fun m!6237032 () Bool)

(assert (=> bm!363963 m!6237032))

(declare-fun m!6237034 () Bool)

(assert (=> b!5179184 m!6237034))

(declare-fun m!6237036 () Bool)

(assert (=> b!5179184 m!6237036))

(declare-fun m!6237038 () Bool)

(assert (=> bm!363957 m!6237038))

(declare-fun m!6237040 () Bool)

(assert (=> bm!363960 m!6237040))

(assert (=> bm!363962 m!6236630))

(declare-fun m!6237042 () Bool)

(assert (=> bm!363964 m!6237042))

(declare-fun m!6237044 () Bool)

(assert (=> bm!363958 m!6237044))

(declare-fun m!6237046 () Bool)

(assert (=> b!5179188 m!6237046))

(declare-fun m!6237048 () Bool)

(assert (=> bm!363959 m!6237048))

(assert (=> bm!363961 m!6236632))

(declare-fun m!6237050 () Bool)

(assert (=> b!5179186 m!6237050))

(declare-fun m!6237052 () Bool)

(assert (=> b!5179186 m!6237052))

(declare-fun m!6237054 () Bool)

(assert (=> b!5179186 m!6237054))

(declare-fun m!6237056 () Bool)

(assert (=> b!5179186 m!6237056))

(declare-fun m!6237058 () Bool)

(assert (=> b!5179186 m!6237058))

(declare-fun m!6237060 () Bool)

(assert (=> b!5179186 m!6237060))

(declare-fun m!6237062 () Bool)

(assert (=> b!5179186 m!6237062))

(assert (=> b!5179186 m!6237038))

(assert (=> b!5179186 m!6237050))

(declare-fun m!6237064 () Bool)

(assert (=> b!5179186 m!6237064))

(declare-fun m!6237066 () Bool)

(assert (=> b!5179186 m!6237066))

(assert (=> b!5179186 m!6237036))

(assert (=> b!5179186 m!6236610))

(assert (=> b!5179186 m!6237062))

(declare-fun m!6237068 () Bool)

(assert (=> b!5179186 m!6237068))

(assert (=> b!5179186 m!6237064))

(assert (=> b!5179186 m!6237032))

(declare-fun m!6237070 () Bool)

(assert (=> d!1673433 m!6237070))

(declare-fun m!6237072 () Bool)

(assert (=> d!1673433 m!6237072))

(declare-fun m!6237074 () Bool)

(assert (=> d!1673433 m!6237074))

(assert (=> d!1673433 m!6237072))

(assert (=> d!1673433 m!6237050))

(declare-fun m!6237076 () Bool)

(assert (=> d!1673433 m!6237076))

(declare-fun m!6237078 () Bool)

(assert (=> d!1673433 m!6237078))

(declare-fun m!6237080 () Bool)

(assert (=> d!1673433 m!6237080))

(assert (=> bm!363922 d!1673433))

(declare-fun d!1673435 () Bool)

(declare-fun c!892352 () Bool)

(assert (=> d!1673435 (= c!892352 ((_ is Cons!60169) (t!373446 lt!2134268)))))

(declare-fun e!3226989 () (InoxSet Context!8086))

(assert (=> d!1673435 (= (derivationZipper!282 (derivationStepZipper!1005 baseZ!62 (h!66617 lt!2134268)) (t!373446 lt!2134268)) e!3226989)))

(declare-fun b!5179190 () Bool)

(assert (=> b!5179190 (= e!3226989 (derivationZipper!282 (derivationStepZipper!1005 (derivationStepZipper!1005 baseZ!62 (h!66617 lt!2134268)) (h!66617 (t!373446 lt!2134268))) (t!373446 (t!373446 lt!2134268))))))

(declare-fun b!5179191 () Bool)

(assert (=> b!5179191 (= e!3226989 (derivationStepZipper!1005 baseZ!62 (h!66617 lt!2134268)))))

(assert (= (and d!1673435 c!892352) b!5179190))

(assert (= (and d!1673435 (not c!892352)) b!5179191))

(assert (=> b!5179190 m!6236722))

(declare-fun m!6237082 () Bool)

(assert (=> b!5179190 m!6237082))

(assert (=> b!5179190 m!6237082))

(declare-fun m!6237084 () Bool)

(assert (=> b!5179190 m!6237084))

(assert (=> b!5178954 d!1673435))

(declare-fun bs!1206417 () Bool)

(declare-fun d!1673437 () Bool)

(assert (= bs!1206417 (and d!1673437 d!1673305)))

(declare-fun lambda!258787 () Int)

(assert (=> bs!1206417 (= (= (h!66617 lt!2134268) lt!2134264) (= lambda!258787 lambda!258762))))

(declare-fun bs!1206418 () Bool)

(assert (= bs!1206418 (and d!1673437 d!1673409)))

(assert (=> bs!1206418 (= (= (h!66617 lt!2134268) (h!66617 testedP!294)) (= lambda!258787 lambda!258771))))

(assert (=> d!1673437 true))

(assert (=> d!1673437 (= (derivationStepZipper!1005 baseZ!62 (h!66617 lt!2134268)) (flatMap!462 baseZ!62 lambda!258787))))

(declare-fun bs!1206419 () Bool)

(assert (= bs!1206419 d!1673437))

(declare-fun m!6237086 () Bool)

(assert (=> bs!1206419 m!6237086))

(assert (=> b!5178954 d!1673437))

(declare-fun bs!1206420 () Bool)

(declare-fun d!1673439 () Bool)

(assert (= bs!1206420 (and d!1673439 d!1673345)))

(declare-fun lambda!258788 () Int)

(assert (=> bs!1206420 (= lambda!258788 lambda!258765)))

(declare-fun bs!1206421 () Bool)

(assert (= bs!1206421 (and d!1673439 d!1673363)))

(assert (=> bs!1206421 (= lambda!258788 lambda!258769)))

(declare-fun bs!1206422 () Bool)

(assert (= bs!1206422 (and d!1673439 d!1673367)))

(assert (=> bs!1206422 (= lambda!258788 lambda!258770)))

(assert (=> d!1673439 (= (inv!79894 setElem!32375) (forall!14167 (exprs!4543 setElem!32375) lambda!258788))))

(declare-fun bs!1206423 () Bool)

(assert (= bs!1206423 d!1673439))

(declare-fun m!6237088 () Bool)

(assert (=> bs!1206423 m!6237088))

(assert (=> setNonEmpty!32375 d!1673439))

(declare-fun bs!1206424 () Bool)

(declare-fun d!1673441 () Bool)

(assert (= bs!1206424 (and d!1673441 d!1673305)))

(declare-fun lambda!258789 () Int)

(assert (=> bs!1206424 (= (= call!363925 lt!2134264) (= lambda!258789 lambda!258762))))

(declare-fun bs!1206425 () Bool)

(assert (= bs!1206425 (and d!1673441 d!1673409)))

(assert (=> bs!1206425 (= (= call!363925 (h!66617 testedP!294)) (= lambda!258789 lambda!258771))))

(declare-fun bs!1206426 () Bool)

(assert (= bs!1206426 (and d!1673441 d!1673437)))

(assert (=> bs!1206426 (= (= call!363925 (h!66617 lt!2134268)) (= lambda!258789 lambda!258787))))

(assert (=> d!1673441 true))

(assert (=> d!1673441 (= (derivationStepZipper!1005 z!4581 call!363925) (flatMap!462 z!4581 lambda!258789))))

(declare-fun bs!1206427 () Bool)

(assert (= bs!1206427 d!1673441))

(declare-fun m!6237090 () Bool)

(assert (=> bs!1206427 m!6237090))

(assert (=> bm!363920 d!1673441))

(declare-fun d!1673443 () Bool)

(declare-fun lt!2134562 () Bool)

(assert (=> d!1673443 (= lt!2134562 (exists!1945 (toList!8460 z!4581) lambda!258768))))

(declare-fun choose!38478 ((InoxSet Context!8086) Int) Bool)

(assert (=> d!1673443 (= lt!2134562 (choose!38478 z!4581 lambda!258768))))

(assert (=> d!1673443 (= (exists!1944 z!4581 lambda!258768) lt!2134562)))

(declare-fun bs!1206428 () Bool)

(assert (= bs!1206428 d!1673443))

(assert (=> bs!1206428 m!6237008))

(assert (=> bs!1206428 m!6237008))

(declare-fun m!6237092 () Bool)

(assert (=> bs!1206428 m!6237092))

(declare-fun m!6237094 () Bool)

(assert (=> bs!1206428 m!6237094))

(assert (=> d!1673359 d!1673443))

(assert (=> d!1673299 d!1673289))

(assert (=> d!1673299 d!1673281))

(declare-fun d!1673445 () Bool)

(assert (=> d!1673445 (<= (size!39695 testedP!294) (size!39695 input!5817))))

(assert (=> d!1673445 true))

(declare-fun _$64!722 () Unit!152092)

(assert (=> d!1673445 (= (choose!38466 testedP!294 input!5817) _$64!722)))

(declare-fun bs!1206429 () Bool)

(assert (= bs!1206429 d!1673445))

(assert (=> bs!1206429 m!6236606))

(assert (=> bs!1206429 m!6236610))

(assert (=> d!1673299 d!1673445))

(assert (=> d!1673299 d!1673297))

(declare-fun d!1673447 () Bool)

(assert (=> d!1673447 (= input!5817 testedP!294)))

(assert (=> d!1673447 true))

(declare-fun _$60!992 () Unit!152092)

(assert (=> d!1673447 (= (choose!38469 input!5817 testedP!294 input!5817) _$60!992)))

(assert (=> d!1673351 d!1673447))

(assert (=> d!1673351 d!1673349))

(assert (=> bm!363919 d!1673383))

(declare-fun d!1673449 () Bool)

(declare-fun lt!2134563 () Int)

(assert (=> d!1673449 (>= lt!2134563 0)))

(declare-fun e!3226990 () Int)

(assert (=> d!1673449 (= lt!2134563 e!3226990)))

(declare-fun c!892353 () Bool)

(assert (=> d!1673449 (= c!892353 ((_ is Nil!60169) (t!373446 lt!2134268)))))

(assert (=> d!1673449 (= (size!39695 (t!373446 lt!2134268)) lt!2134563)))

(declare-fun b!5179192 () Bool)

(assert (=> b!5179192 (= e!3226990 0)))

(declare-fun b!5179193 () Bool)

(assert (=> b!5179193 (= e!3226990 (+ 1 (size!39695 (t!373446 (t!373446 lt!2134268)))))))

(assert (= (and d!1673449 c!892353) b!5179192))

(assert (= (and d!1673449 (not c!892353)) b!5179193))

(declare-fun m!6237096 () Bool)

(assert (=> b!5179193 m!6237096))

(assert (=> b!5178953 d!1673449))

(declare-fun d!1673451 () Bool)

(declare-fun res!2200577 () Bool)

(declare-fun e!3226991 () Bool)

(assert (=> d!1673451 (=> res!2200577 e!3226991)))

(assert (=> d!1673451 (= res!2200577 ((_ is Nil!60170) (exprs!4543 setElem!32368)))))

(assert (=> d!1673451 (= (forall!14167 (exprs!4543 setElem!32368) lambda!258765) e!3226991)))

(declare-fun b!5179194 () Bool)

(declare-fun e!3226992 () Bool)

(assert (=> b!5179194 (= e!3226991 e!3226992)))

(declare-fun res!2200578 () Bool)

(assert (=> b!5179194 (=> (not res!2200578) (not e!3226992))))

(assert (=> b!5179194 (= res!2200578 (dynLambda!23885 lambda!258765 (h!66618 (exprs!4543 setElem!32368))))))

(declare-fun b!5179195 () Bool)

(assert (=> b!5179195 (= e!3226992 (forall!14167 (t!373447 (exprs!4543 setElem!32368)) lambda!258765))))

(assert (= (and d!1673451 (not res!2200577)) b!5179194))

(assert (= (and b!5179194 res!2200578) b!5179195))

(declare-fun b_lambda!201027 () Bool)

(assert (=> (not b_lambda!201027) (not b!5179194)))

(declare-fun m!6237098 () Bool)

(assert (=> b!5179194 m!6237098))

(declare-fun m!6237100 () Bool)

(assert (=> b!5179195 m!6237100))

(assert (=> d!1673345 d!1673451))

(assert (=> bm!363926 d!1673351))

(declare-fun b!5179199 () Bool)

(declare-fun e!3226993 () Bool)

(assert (=> b!5179199 (= e!3226993 (>= (size!39695 (tail!10176 input!5817)) (size!39695 (tail!10176 lt!2134268))))))

(declare-fun b!5179197 () Bool)

(declare-fun res!2200581 () Bool)

(declare-fun e!3226994 () Bool)

(assert (=> b!5179197 (=> (not res!2200581) (not e!3226994))))

(assert (=> b!5179197 (= res!2200581 (= (head!11077 (tail!10176 lt!2134268)) (head!11077 (tail!10176 input!5817))))))

(declare-fun b!5179196 () Bool)

(declare-fun e!3226995 () Bool)

(assert (=> b!5179196 (= e!3226995 e!3226994)))

(declare-fun res!2200580 () Bool)

(assert (=> b!5179196 (=> (not res!2200580) (not e!3226994))))

(assert (=> b!5179196 (= res!2200580 (not ((_ is Nil!60169) (tail!10176 input!5817))))))

(declare-fun d!1673453 () Bool)

(assert (=> d!1673453 e!3226993))

(declare-fun res!2200582 () Bool)

(assert (=> d!1673453 (=> res!2200582 e!3226993)))

(declare-fun lt!2134564 () Bool)

(assert (=> d!1673453 (= res!2200582 (not lt!2134564))))

(assert (=> d!1673453 (= lt!2134564 e!3226995)))

(declare-fun res!2200579 () Bool)

(assert (=> d!1673453 (=> res!2200579 e!3226995)))

(assert (=> d!1673453 (= res!2200579 ((_ is Nil!60169) (tail!10176 lt!2134268)))))

(assert (=> d!1673453 (= (isPrefix!5792 (tail!10176 lt!2134268) (tail!10176 input!5817)) lt!2134564)))

(declare-fun b!5179198 () Bool)

(assert (=> b!5179198 (= e!3226994 (isPrefix!5792 (tail!10176 (tail!10176 lt!2134268)) (tail!10176 (tail!10176 input!5817))))))

(assert (= (and d!1673453 (not res!2200579)) b!5179196))

(assert (= (and b!5179196 res!2200580) b!5179197))

(assert (= (and b!5179197 res!2200581) b!5179198))

(assert (= (and d!1673453 (not res!2200582)) b!5179199))

(assert (=> b!5179199 m!6236664))

(assert (=> b!5179199 m!6236930))

(assert (=> b!5179199 m!6236842))

(declare-fun m!6237102 () Bool)

(assert (=> b!5179199 m!6237102))

(assert (=> b!5179197 m!6236842))

(declare-fun m!6237104 () Bool)

(assert (=> b!5179197 m!6237104))

(assert (=> b!5179197 m!6236664))

(assert (=> b!5179197 m!6236936))

(assert (=> b!5179198 m!6236842))

(declare-fun m!6237106 () Bool)

(assert (=> b!5179198 m!6237106))

(assert (=> b!5179198 m!6236664))

(assert (=> b!5179198 m!6236940))

(assert (=> b!5179198 m!6237106))

(assert (=> b!5179198 m!6236940))

(declare-fun m!6237108 () Bool)

(assert (=> b!5179198 m!6237108))

(assert (=> b!5179070 d!1673453))

(declare-fun d!1673455 () Bool)

(assert (=> d!1673455 (= (tail!10176 lt!2134268) (t!373446 lt!2134268))))

(assert (=> b!5179070 d!1673455))

(assert (=> b!5179070 d!1673399))

(declare-fun d!1673457 () Bool)

(declare-fun lt!2134565 () Int)

(assert (=> d!1673457 (>= lt!2134565 0)))

(declare-fun e!3226996 () Int)

(assert (=> d!1673457 (= lt!2134565 e!3226996)))

(declare-fun c!892354 () Bool)

(assert (=> d!1673457 (= c!892354 ((_ is Nil!60169) lt!2134483))))

(assert (=> d!1673457 (= (size!39695 lt!2134483) lt!2134565)))

(declare-fun b!5179200 () Bool)

(assert (=> b!5179200 (= e!3226996 0)))

(declare-fun b!5179201 () Bool)

(assert (=> b!5179201 (= e!3226996 (+ 1 (size!39695 (t!373446 lt!2134483))))))

(assert (= (and d!1673457 c!892354) b!5179200))

(assert (= (and d!1673457 (not c!892354)) b!5179201))

(declare-fun m!6237110 () Bool)

(assert (=> b!5179201 m!6237110))

(assert (=> b!5179082 d!1673457))

(assert (=> b!5179082 d!1673289))

(declare-fun d!1673459 () Bool)

(declare-fun lt!2134566 () Int)

(assert (=> d!1673459 (>= lt!2134566 0)))

(declare-fun e!3226997 () Int)

(assert (=> d!1673459 (= lt!2134566 e!3226997)))

(declare-fun c!892355 () Bool)

(assert (=> d!1673459 (= c!892355 ((_ is Nil!60169) (Cons!60169 lt!2134264 Nil!60169)))))

(assert (=> d!1673459 (= (size!39695 (Cons!60169 lt!2134264 Nil!60169)) lt!2134566)))

(declare-fun b!5179202 () Bool)

(assert (=> b!5179202 (= e!3226997 0)))

(declare-fun b!5179203 () Bool)

(assert (=> b!5179203 (= e!3226997 (+ 1 (size!39695 (t!373446 (Cons!60169 lt!2134264 Nil!60169)))))))

(assert (= (and d!1673459 c!892355) b!5179202))

(assert (= (and d!1673459 (not c!892355)) b!5179203))

(declare-fun m!6237112 () Bool)

(assert (=> b!5179203 m!6237112))

(assert (=> b!5179082 d!1673459))

(declare-fun d!1673461 () Bool)

(declare-fun c!892356 () Bool)

(assert (=> d!1673461 (= c!892356 ((_ is Cons!60169) (++!13175 testedP!294 (Cons!60169 lt!2134264 Nil!60169))))))

(declare-fun e!3226998 () (InoxSet Context!8086))

(assert (=> d!1673461 (= (derivationZipper!282 baseZ!62 (++!13175 testedP!294 (Cons!60169 lt!2134264 Nil!60169))) e!3226998)))

(declare-fun b!5179204 () Bool)

(assert (=> b!5179204 (= e!3226998 (derivationZipper!282 (derivationStepZipper!1005 baseZ!62 (h!66617 (++!13175 testedP!294 (Cons!60169 lt!2134264 Nil!60169)))) (t!373446 (++!13175 testedP!294 (Cons!60169 lt!2134264 Nil!60169)))))))

(declare-fun b!5179205 () Bool)

(assert (=> b!5179205 (= e!3226998 baseZ!62)))

(assert (= (and d!1673461 c!892356) b!5179204))

(assert (= (and d!1673461 (not c!892356)) b!5179205))

(declare-fun m!6237114 () Bool)

(assert (=> b!5179204 m!6237114))

(assert (=> b!5179204 m!6237114))

(declare-fun m!6237116 () Bool)

(assert (=> b!5179204 m!6237116))

(assert (=> d!1673343 d!1673461))

(assert (=> d!1673343 d!1673355))

(assert (=> d!1673343 d!1673277))

(declare-fun d!1673463 () Bool)

(assert (=> d!1673463 (= (derivationZipper!282 baseZ!62 (++!13175 testedP!294 (Cons!60169 lt!2134264 Nil!60169))) (derivationStepZipper!1005 z!4581 lt!2134264))))

(assert (=> d!1673463 true))

(declare-fun _$83!287 () Unit!152092)

(assert (=> d!1673463 (= (choose!38467 baseZ!62 z!4581 testedP!294 lt!2134264) _$83!287)))

(declare-fun bs!1206430 () Bool)

(assert (= bs!1206430 d!1673463))

(assert (=> bs!1206430 m!6236638))

(assert (=> bs!1206430 m!6236638))

(assert (=> bs!1206430 m!6236828))

(assert (=> bs!1206430 m!6236626))

(assert (=> d!1673343 d!1673463))

(assert (=> d!1673343 d!1673305))

(declare-fun d!1673465 () Bool)

(declare-fun lt!2134567 () List!60293)

(assert (=> d!1673465 (= (++!13175 (t!373446 testedP!294) lt!2134567) (tail!10176 input!5817))))

(declare-fun e!3226999 () List!60293)

(assert (=> d!1673465 (= lt!2134567 e!3226999)))

(declare-fun c!892358 () Bool)

(assert (=> d!1673465 (= c!892358 ((_ is Cons!60169) (t!373446 testedP!294)))))

(assert (=> d!1673465 (>= (size!39695 (tail!10176 input!5817)) (size!39695 (t!373446 testedP!294)))))

(assert (=> d!1673465 (= (getSuffix!3440 (tail!10176 input!5817) (t!373446 testedP!294)) lt!2134567)))

(declare-fun b!5179206 () Bool)

(assert (=> b!5179206 (= e!3226999 (getSuffix!3440 (tail!10176 (tail!10176 input!5817)) (t!373446 (t!373446 testedP!294))))))

(declare-fun b!5179207 () Bool)

(assert (=> b!5179207 (= e!3226999 (tail!10176 input!5817))))

(assert (= (and d!1673465 c!892358) b!5179206))

(assert (= (and d!1673465 (not c!892358)) b!5179207))

(declare-fun m!6237118 () Bool)

(assert (=> d!1673465 m!6237118))

(assert (=> d!1673465 m!6236664))

(assert (=> d!1673465 m!6236930))

(assert (=> d!1673465 m!6236670))

(assert (=> b!5179206 m!6236664))

(assert (=> b!5179206 m!6236940))

(assert (=> b!5179206 m!6236940))

(declare-fun m!6237120 () Bool)

(assert (=> b!5179206 m!6237120))

(assert (=> b!5178894 d!1673465))

(assert (=> b!5178894 d!1673399))

(declare-fun d!1673467 () Bool)

(assert (=> d!1673467 (= (isEmpty!32215 (_1!35237 lt!2134350)) ((_ is Nil!60169) (_1!35237 lt!2134350)))))

(assert (=> b!5178937 d!1673467))

(declare-fun d!1673469 () Bool)

(assert (=> d!1673469 (= (head!11077 lt!2134268) (h!66617 lt!2134268))))

(assert (=> b!5179069 d!1673469))

(assert (=> b!5179069 d!1673365))

(declare-fun b!5179208 () Bool)

(declare-fun e!3227000 () List!60293)

(assert (=> b!5179208 (= e!3227000 (Cons!60169 lt!2134264 Nil!60169))))

(declare-fun b!5179209 () Bool)

(assert (=> b!5179209 (= e!3227000 (Cons!60169 (h!66617 (t!373446 testedP!294)) (++!13175 (t!373446 (t!373446 testedP!294)) (Cons!60169 lt!2134264 Nil!60169))))))

(declare-fun e!3227001 () Bool)

(declare-fun b!5179211 () Bool)

(declare-fun lt!2134568 () List!60293)

(assert (=> b!5179211 (= e!3227001 (or (not (= (Cons!60169 lt!2134264 Nil!60169) Nil!60169)) (= lt!2134568 (t!373446 testedP!294))))))

(declare-fun b!5179210 () Bool)

(declare-fun res!2200584 () Bool)

(assert (=> b!5179210 (=> (not res!2200584) (not e!3227001))))

(assert (=> b!5179210 (= res!2200584 (= (size!39695 lt!2134568) (+ (size!39695 (t!373446 testedP!294)) (size!39695 (Cons!60169 lt!2134264 Nil!60169)))))))

(declare-fun d!1673471 () Bool)

(assert (=> d!1673471 e!3227001))

(declare-fun res!2200583 () Bool)

(assert (=> d!1673471 (=> (not res!2200583) (not e!3227001))))

(assert (=> d!1673471 (= res!2200583 (= (content!10667 lt!2134568) ((_ map or) (content!10667 (t!373446 testedP!294)) (content!10667 (Cons!60169 lt!2134264 Nil!60169)))))))

(assert (=> d!1673471 (= lt!2134568 e!3227000)))

(declare-fun c!892359 () Bool)

(assert (=> d!1673471 (= c!892359 ((_ is Nil!60169) (t!373446 testedP!294)))))

(assert (=> d!1673471 (= (++!13175 (t!373446 testedP!294) (Cons!60169 lt!2134264 Nil!60169)) lt!2134568)))

(assert (= (and d!1673471 c!892359) b!5179208))

(assert (= (and d!1673471 (not c!892359)) b!5179209))

(assert (= (and d!1673471 res!2200583) b!5179210))

(assert (= (and b!5179210 res!2200584) b!5179211))

(declare-fun m!6237122 () Bool)

(assert (=> b!5179209 m!6237122))

(declare-fun m!6237124 () Bool)

(assert (=> b!5179210 m!6237124))

(assert (=> b!5179210 m!6236670))

(assert (=> b!5179210 m!6236850))

(declare-fun m!6237126 () Bool)

(assert (=> d!1673471 m!6237126))

(assert (=> d!1673471 m!6236974))

(assert (=> d!1673471 m!6236856))

(assert (=> b!5179081 d!1673471))

(declare-fun d!1673475 () Bool)

(assert (=> d!1673475 (= (isEmpty!32215 (_1!35237 lt!2134345)) ((_ is Nil!60169) (_1!35237 lt!2134345)))))

(assert (=> b!5178938 d!1673475))

(declare-fun b!5179226 () Bool)

(declare-fun e!3227006 () Bool)

(assert (=> b!5179226 (= e!3227006 tp_is_empty!38571)))

(declare-fun b!5179229 () Bool)

(declare-fun tp!1452585 () Bool)

(declare-fun tp!1452583 () Bool)

(assert (=> b!5179229 (= e!3227006 (and tp!1452585 tp!1452583))))

(declare-fun b!5179227 () Bool)

(declare-fun tp!1452584 () Bool)

(declare-fun tp!1452586 () Bool)

(assert (=> b!5179227 (= e!3227006 (and tp!1452584 tp!1452586))))

(assert (=> b!5179095 (= tp!1452562 e!3227006)))

(declare-fun b!5179228 () Bool)

(declare-fun tp!1452582 () Bool)

(assert (=> b!5179228 (= e!3227006 tp!1452582)))

(assert (= (and b!5179095 ((_ is ElementMatch!14659) (h!66618 (exprs!4543 setElem!32368)))) b!5179226))

(assert (= (and b!5179095 ((_ is Concat!23504) (h!66618 (exprs!4543 setElem!32368)))) b!5179227))

(assert (= (and b!5179095 ((_ is Star!14659) (h!66618 (exprs!4543 setElem!32368)))) b!5179228))

(assert (= (and b!5179095 ((_ is Union!14659) (h!66618 (exprs!4543 setElem!32368)))) b!5179229))

(declare-fun b!5179230 () Bool)

(declare-fun e!3227007 () Bool)

(declare-fun tp!1452587 () Bool)

(declare-fun tp!1452588 () Bool)

(assert (=> b!5179230 (= e!3227007 (and tp!1452587 tp!1452588))))

(assert (=> b!5179095 (= tp!1452563 e!3227007)))

(assert (= (and b!5179095 ((_ is Cons!60170) (t!373447 (exprs!4543 setElem!32368)))) b!5179230))

(declare-fun b!5179231 () Bool)

(declare-fun e!3227008 () Bool)

(declare-fun tp!1452589 () Bool)

(declare-fun tp!1452590 () Bool)

(assert (=> b!5179231 (= e!3227008 (and tp!1452589 tp!1452590))))

(assert (=> b!5179101 (= tp!1452570 e!3227008)))

(assert (= (and b!5179101 ((_ is Cons!60170) (exprs!4543 setElem!32376))) b!5179231))

(declare-fun b!5179232 () Bool)

(declare-fun e!3227009 () Bool)

(assert (=> b!5179232 (= e!3227009 tp_is_empty!38571)))

(declare-fun b!5179235 () Bool)

(declare-fun tp!1452594 () Bool)

(declare-fun tp!1452592 () Bool)

(assert (=> b!5179235 (= e!3227009 (and tp!1452594 tp!1452592))))

(declare-fun b!5179233 () Bool)

(declare-fun tp!1452593 () Bool)

(declare-fun tp!1452595 () Bool)

(assert (=> b!5179233 (= e!3227009 (and tp!1452593 tp!1452595))))

(assert (=> b!5179088 (= tp!1452556 e!3227009)))

(declare-fun b!5179234 () Bool)

(declare-fun tp!1452591 () Bool)

(assert (=> b!5179234 (= e!3227009 tp!1452591)))

(assert (= (and b!5179088 ((_ is ElementMatch!14659) (h!66618 (exprs!4543 setElem!32367)))) b!5179232))

(assert (= (and b!5179088 ((_ is Concat!23504) (h!66618 (exprs!4543 setElem!32367)))) b!5179233))

(assert (= (and b!5179088 ((_ is Star!14659) (h!66618 (exprs!4543 setElem!32367)))) b!5179234))

(assert (= (and b!5179088 ((_ is Union!14659) (h!66618 (exprs!4543 setElem!32367)))) b!5179235))

(declare-fun b!5179236 () Bool)

(declare-fun e!3227010 () Bool)

(declare-fun tp!1452596 () Bool)

(declare-fun tp!1452597 () Bool)

(assert (=> b!5179236 (= e!3227010 (and tp!1452596 tp!1452597))))

(assert (=> b!5179088 (= tp!1452557 e!3227010)))

(assert (= (and b!5179088 ((_ is Cons!60170) (t!373447 (exprs!4543 setElem!32367)))) b!5179236))

(declare-fun condSetEmpty!32377 () Bool)

(assert (=> setNonEmpty!32376 (= condSetEmpty!32377 (= setRest!32376 ((as const (Array Context!8086 Bool)) false)))))

(declare-fun setRes!32377 () Bool)

(assert (=> setNonEmpty!32376 (= tp!1452571 setRes!32377)))

(declare-fun setIsEmpty!32377 () Bool)

(assert (=> setIsEmpty!32377 setRes!32377))

(declare-fun setNonEmpty!32377 () Bool)

(declare-fun tp!1452599 () Bool)

(declare-fun e!3227011 () Bool)

(declare-fun setElem!32377 () Context!8086)

(assert (=> setNonEmpty!32377 (= setRes!32377 (and tp!1452599 (inv!79894 setElem!32377) e!3227011))))

(declare-fun setRest!32377 () (InoxSet Context!8086))

(assert (=> setNonEmpty!32377 (= setRest!32376 ((_ map or) (store ((as const (Array Context!8086 Bool)) false) setElem!32377 true) setRest!32377))))

(declare-fun b!5179237 () Bool)

(declare-fun tp!1452598 () Bool)

(assert (=> b!5179237 (= e!3227011 tp!1452598)))

(assert (= (and setNonEmpty!32376 condSetEmpty!32377) setIsEmpty!32377))

(assert (= (and setNonEmpty!32376 (not condSetEmpty!32377)) setNonEmpty!32377))

(assert (= setNonEmpty!32377 b!5179237))

(declare-fun m!6237138 () Bool)

(assert (=> setNonEmpty!32377 m!6237138))

(declare-fun b!5179242 () Bool)

(declare-fun e!3227016 () Bool)

(declare-fun tp!1452600 () Bool)

(declare-fun tp!1452601 () Bool)

(assert (=> b!5179242 (= e!3227016 (and tp!1452600 tp!1452601))))

(assert (=> b!5179100 (= tp!1452568 e!3227016)))

(assert (= (and b!5179100 ((_ is Cons!60170) (exprs!4543 setElem!32375))) b!5179242))

(declare-fun b!5179243 () Bool)

(declare-fun e!3227017 () Bool)

(declare-fun tp!1452602 () Bool)

(assert (=> b!5179243 (= e!3227017 (and tp_is_empty!38571 tp!1452602))))

(assert (=> b!5179093 (= tp!1452560 e!3227017)))

(assert (= (and b!5179093 ((_ is Cons!60169) (t!373446 (t!373446 testedP!294)))) b!5179243))

(declare-fun condSetEmpty!32378 () Bool)

(assert (=> setNonEmpty!32375 (= condSetEmpty!32378 (= setRest!32375 ((as const (Array Context!8086 Bool)) false)))))

(declare-fun setRes!32378 () Bool)

(assert (=> setNonEmpty!32375 (= tp!1452569 setRes!32378)))

(declare-fun setIsEmpty!32378 () Bool)

(assert (=> setIsEmpty!32378 setRes!32378))

(declare-fun setElem!32378 () Context!8086)

(declare-fun tp!1452604 () Bool)

(declare-fun e!3227018 () Bool)

(declare-fun setNonEmpty!32378 () Bool)

(assert (=> setNonEmpty!32378 (= setRes!32378 (and tp!1452604 (inv!79894 setElem!32378) e!3227018))))

(declare-fun setRest!32378 () (InoxSet Context!8086))

(assert (=> setNonEmpty!32378 (= setRest!32375 ((_ map or) (store ((as const (Array Context!8086 Bool)) false) setElem!32378 true) setRest!32378))))

(declare-fun b!5179244 () Bool)

(declare-fun tp!1452603 () Bool)

(assert (=> b!5179244 (= e!3227018 tp!1452603)))

(assert (= (and setNonEmpty!32375 condSetEmpty!32378) setIsEmpty!32378))

(assert (= (and setNonEmpty!32375 (not condSetEmpty!32378)) setNonEmpty!32378))

(assert (= setNonEmpty!32378 b!5179244))

(declare-fun m!6237140 () Bool)

(assert (=> setNonEmpty!32378 m!6237140))

(declare-fun b!5179245 () Bool)

(declare-fun e!3227019 () Bool)

(declare-fun tp!1452605 () Bool)

(assert (=> b!5179245 (= e!3227019 (and tp_is_empty!38571 tp!1452605))))

(assert (=> b!5179094 (= tp!1452561 e!3227019)))

(assert (= (and b!5179094 ((_ is Cons!60169) (t!373446 (t!373446 input!5817)))) b!5179245))

(declare-fun b_lambda!201029 () Bool)

(assert (= b_lambda!201025 (or d!1673363 b_lambda!201029)))

(declare-fun bs!1206432 () Bool)

(declare-fun d!1673481 () Bool)

(assert (= bs!1206432 (and d!1673481 d!1673363)))

(declare-fun validRegex!6409 (Regex!14659) Bool)

(assert (=> bs!1206432 (= (dynLambda!23885 lambda!258769 (h!66618 (exprs!4543 setElem!32367))) (validRegex!6409 (h!66618 (exprs!4543 setElem!32367))))))

(declare-fun m!6237142 () Bool)

(assert (=> bs!1206432 m!6237142))

(assert (=> b!5179144 d!1673481))

(declare-fun b_lambda!201031 () Bool)

(assert (= b_lambda!201027 (or d!1673345 b_lambda!201031)))

(declare-fun bs!1206433 () Bool)

(declare-fun d!1673483 () Bool)

(assert (= bs!1206433 (and d!1673483 d!1673345)))

(assert (=> bs!1206433 (= (dynLambda!23885 lambda!258765 (h!66618 (exprs!4543 setElem!32368))) (validRegex!6409 (h!66618 (exprs!4543 setElem!32368))))))

(declare-fun m!6237144 () Bool)

(assert (=> bs!1206433 m!6237144))

(assert (=> b!5179194 d!1673483))

(check-sat (not bm!363962) (not d!1673441) (not b!5179173) (not d!1673367) (not d!1673437) (not d!1673433) (not b!5179195) (not bm!363956) (not b!5179187) (not d!1673375) (not b!5179197) (not b!5179230) (not bm!363957) (not d!1673385) (not b!5179231) (not d!1673421) (not b!5179188) tp_is_empty!38571 (not b!5179103) (not b!5179158) (not b!5179193) (not b!5179115) (not d!1673423) (not b!5179125) (not b!5179233) (not b!5179184) (not b!5179168) (not d!1673419) (not b!5179201) (not d!1673443) (not b!5179244) (not b!5179108) (not b!5179127) (not b!5179136) (not b_lambda!201029) (not b!5179113) (not d!1673463) (not d!1673465) (not b!5179120) (not b!5179135) (not b!5179245) (not bs!1206432) (not b!5179237) (not b!5179169) (not d!1673445) (not b!5179138) (not bm!363963) (not d!1673371) (not d!1673379) (not b!5179111) (not b!5179234) (not b!5179227) (not b!5179107) (not b!5179157) (not b!5179235) (not b!5179186) (not d!1673393) (not bs!1206433) (not b!5179145) (not b!5179123) (not b!5179190) (not b!5179206) (not b!5179172) (not d!1673471) (not d!1673427) (not b!5179175) (not b!5179129) (not setNonEmpty!32377) (not d!1673369) (not b!5179199) (not b!5179229) (not b!5179210) (not b!5179243) (not b!5179203) (not d!1673425) (not d!1673391) (not d!1673381) (not b!5179236) (not d!1673439) (not d!1673409) (not b!5179112) (not b!5179126) (not bm!363959) (not b_lambda!201031) (not b!5179151) (not b!5179198) (not b!5179204) (not b!5179133) (not b!5179116) (not d!1673405) (not setNonEmpty!32378) (not b!5179153) (not b!5179161) (not bm!363958) (not b!5179228) (not bm!363964) (not bm!363955) (not bm!363960) (not b!5179209) (not b!5179104) (not bm!363961) (not b!5179162) (not b!5179242) (not b!5179132) (not b!5179131) (not b!5179155) (not b!5179119) (not b!5179171))
(check-sat)
(get-model)

(declare-fun b!5179377 () Bool)

(declare-fun e!3227095 () Bool)

(assert (=> b!5179377 (= e!3227095 (>= (size!39695 (tail!10176 (++!13175 testedP!294 lt!2134258))) (size!39695 (tail!10176 testedP!294))))))

(declare-fun b!5179375 () Bool)

(declare-fun res!2200633 () Bool)

(declare-fun e!3227096 () Bool)

(assert (=> b!5179375 (=> (not res!2200633) (not e!3227096))))

(assert (=> b!5179375 (= res!2200633 (= (head!11077 (tail!10176 testedP!294)) (head!11077 (tail!10176 (++!13175 testedP!294 lt!2134258)))))))

(declare-fun b!5179374 () Bool)

(declare-fun e!3227097 () Bool)

(assert (=> b!5179374 (= e!3227097 e!3227096)))

(declare-fun res!2200632 () Bool)

(assert (=> b!5179374 (=> (not res!2200632) (not e!3227096))))

(assert (=> b!5179374 (= res!2200632 (not ((_ is Nil!60169) (tail!10176 (++!13175 testedP!294 lt!2134258)))))))

(declare-fun d!1673593 () Bool)

(assert (=> d!1673593 e!3227095))

(declare-fun res!2200634 () Bool)

(assert (=> d!1673593 (=> res!2200634 e!3227095)))

(declare-fun lt!2134651 () Bool)

(assert (=> d!1673593 (= res!2200634 (not lt!2134651))))

(assert (=> d!1673593 (= lt!2134651 e!3227097)))

(declare-fun res!2200631 () Bool)

(assert (=> d!1673593 (=> res!2200631 e!3227097)))

(assert (=> d!1673593 (= res!2200631 ((_ is Nil!60169) (tail!10176 testedP!294)))))

(assert (=> d!1673593 (= (isPrefix!5792 (tail!10176 testedP!294) (tail!10176 (++!13175 testedP!294 lt!2134258))) lt!2134651)))

(declare-fun b!5179376 () Bool)

(assert (=> b!5179376 (= e!3227096 (isPrefix!5792 (tail!10176 (tail!10176 testedP!294)) (tail!10176 (tail!10176 (++!13175 testedP!294 lt!2134258)))))))

(assert (= (and d!1673593 (not res!2200631)) b!5179374))

(assert (= (and b!5179374 res!2200632) b!5179375))

(assert (= (and b!5179375 res!2200633) b!5179376))

(assert (= (and d!1673593 (not res!2200634)) b!5179377))

(assert (=> b!5179377 m!6237024))

(declare-fun m!6237404 () Bool)

(assert (=> b!5179377 m!6237404))

(assert (=> b!5179377 m!6236714))

(assert (=> b!5179377 m!6236932))

(assert (=> b!5179375 m!6236714))

(assert (=> b!5179375 m!6236934))

(assert (=> b!5179375 m!6237024))

(declare-fun m!6237406 () Bool)

(assert (=> b!5179375 m!6237406))

(assert (=> b!5179376 m!6236714))

(assert (=> b!5179376 m!6236938))

(assert (=> b!5179376 m!6237024))

(declare-fun m!6237408 () Bool)

(assert (=> b!5179376 m!6237408))

(assert (=> b!5179376 m!6236938))

(assert (=> b!5179376 m!6237408))

(declare-fun m!6237410 () Bool)

(assert (=> b!5179376 m!6237410))

(assert (=> b!5179172 d!1673593))

(assert (=> b!5179172 d!1673397))

(declare-fun d!1673595 () Bool)

(assert (=> d!1673595 (= (tail!10176 (++!13175 testedP!294 lt!2134258)) (t!373446 (++!13175 testedP!294 lt!2134258)))))

(assert (=> b!5179172 d!1673595))

(declare-fun d!1673597 () Bool)

(declare-fun c!892401 () Bool)

(assert (=> d!1673597 (= c!892401 ((_ is Cons!60169) (t!373446 (t!373446 lt!2134268))))))

(declare-fun e!3227098 () (InoxSet Context!8086))

(assert (=> d!1673597 (= (derivationZipper!282 (derivationStepZipper!1005 (derivationStepZipper!1005 baseZ!62 (h!66617 lt!2134268)) (h!66617 (t!373446 lt!2134268))) (t!373446 (t!373446 lt!2134268))) e!3227098)))

(declare-fun b!5179378 () Bool)

(assert (=> b!5179378 (= e!3227098 (derivationZipper!282 (derivationStepZipper!1005 (derivationStepZipper!1005 (derivationStepZipper!1005 baseZ!62 (h!66617 lt!2134268)) (h!66617 (t!373446 lt!2134268))) (h!66617 (t!373446 (t!373446 lt!2134268)))) (t!373446 (t!373446 (t!373446 lt!2134268)))))))

(declare-fun b!5179379 () Bool)

(assert (=> b!5179379 (= e!3227098 (derivationStepZipper!1005 (derivationStepZipper!1005 baseZ!62 (h!66617 lt!2134268)) (h!66617 (t!373446 lt!2134268))))))

(assert (= (and d!1673597 c!892401) b!5179378))

(assert (= (and d!1673597 (not c!892401)) b!5179379))

(assert (=> b!5179378 m!6237082))

(declare-fun m!6237412 () Bool)

(assert (=> b!5179378 m!6237412))

(assert (=> b!5179378 m!6237412))

(declare-fun m!6237414 () Bool)

(assert (=> b!5179378 m!6237414))

(assert (=> b!5179190 d!1673597))

(declare-fun bs!1206466 () Bool)

(declare-fun d!1673599 () Bool)

(assert (= bs!1206466 (and d!1673599 d!1673305)))

(declare-fun lambda!258810 () Int)

(assert (=> bs!1206466 (= (= (h!66617 (t!373446 lt!2134268)) lt!2134264) (= lambda!258810 lambda!258762))))

(declare-fun bs!1206467 () Bool)

(assert (= bs!1206467 (and d!1673599 d!1673409)))

(assert (=> bs!1206467 (= (= (h!66617 (t!373446 lt!2134268)) (h!66617 testedP!294)) (= lambda!258810 lambda!258771))))

(declare-fun bs!1206468 () Bool)

(assert (= bs!1206468 (and d!1673599 d!1673437)))

(assert (=> bs!1206468 (= (= (h!66617 (t!373446 lt!2134268)) (h!66617 lt!2134268)) (= lambda!258810 lambda!258787))))

(declare-fun bs!1206469 () Bool)

(assert (= bs!1206469 (and d!1673599 d!1673441)))

(assert (=> bs!1206469 (= (= (h!66617 (t!373446 lt!2134268)) call!363925) (= lambda!258810 lambda!258789))))

(assert (=> d!1673599 true))

(assert (=> d!1673599 (= (derivationStepZipper!1005 (derivationStepZipper!1005 baseZ!62 (h!66617 lt!2134268)) (h!66617 (t!373446 lt!2134268))) (flatMap!462 (derivationStepZipper!1005 baseZ!62 (h!66617 lt!2134268)) lambda!258810))))

(declare-fun bs!1206470 () Bool)

(assert (= bs!1206470 d!1673599))

(assert (=> bs!1206470 m!6236722))

(declare-fun m!6237416 () Bool)

(assert (=> bs!1206470 m!6237416))

(assert (=> b!5179190 d!1673599))

(assert (=> bm!363962 d!1673347))

(declare-fun d!1673601 () Bool)

(assert (=> d!1673601 (= (head!11077 (tail!10176 input!5817)) (h!66617 (tail!10176 input!5817)))))

(assert (=> b!5179131 d!1673601))

(declare-fun d!1673603 () Bool)

(declare-fun lt!2134652 () List!60293)

(assert (=> d!1673603 (= (++!13175 (t!373446 (t!373446 testedP!294)) lt!2134652) (tail!10176 (tail!10176 input!5817)))))

(declare-fun e!3227099 () List!60293)

(assert (=> d!1673603 (= lt!2134652 e!3227099)))

(declare-fun c!892402 () Bool)

(assert (=> d!1673603 (= c!892402 ((_ is Cons!60169) (t!373446 (t!373446 testedP!294))))))

(assert (=> d!1673603 (>= (size!39695 (tail!10176 (tail!10176 input!5817))) (size!39695 (t!373446 (t!373446 testedP!294))))))

(assert (=> d!1673603 (= (getSuffix!3440 (tail!10176 (tail!10176 input!5817)) (t!373446 (t!373446 testedP!294))) lt!2134652)))

(declare-fun b!5179380 () Bool)

(assert (=> b!5179380 (= e!3227099 (getSuffix!3440 (tail!10176 (tail!10176 (tail!10176 input!5817))) (t!373446 (t!373446 (t!373446 testedP!294)))))))

(declare-fun b!5179381 () Bool)

(assert (=> b!5179381 (= e!3227099 (tail!10176 (tail!10176 input!5817)))))

(assert (= (and d!1673603 c!892402) b!5179380))

(assert (= (and d!1673603 (not c!892402)) b!5179381))

(declare-fun m!6237418 () Bool)

(assert (=> d!1673603 m!6237418))

(assert (=> d!1673603 m!6236940))

(declare-fun m!6237420 () Bool)

(assert (=> d!1673603 m!6237420))

(assert (=> d!1673603 m!6236926))

(assert (=> b!5179380 m!6236940))

(declare-fun m!6237422 () Bool)

(assert (=> b!5179380 m!6237422))

(assert (=> b!5179380 m!6237422))

(declare-fun m!6237424 () Bool)

(assert (=> b!5179380 m!6237424))

(assert (=> b!5179206 d!1673603))

(declare-fun d!1673605 () Bool)

(assert (=> d!1673605 (= (tail!10176 (tail!10176 input!5817)) (t!373446 (tail!10176 input!5817)))))

(assert (=> b!5179206 d!1673605))

(declare-fun bs!1206471 () Bool)

(declare-fun d!1673607 () Bool)

(assert (= bs!1206471 (and d!1673607 d!1673359)))

(declare-fun lambda!258813 () Int)

(assert (=> bs!1206471 (not (= lambda!258813 lambda!258768))))

(declare-fun bs!1206472 () Bool)

(assert (= bs!1206472 (and d!1673607 d!1673423)))

(assert (=> bs!1206472 (not (= lambda!258813 lambda!258784))))

(declare-fun bs!1206473 () Bool)

(assert (= bs!1206473 (and d!1673607 b!5179168)))

(assert (=> bs!1206473 (not (= lambda!258813 lambda!258785))))

(declare-fun bs!1206474 () Bool)

(assert (= bs!1206474 (and d!1673607 b!5179169)))

(assert (=> bs!1206474 (not (= lambda!258813 lambda!258786))))

(assert (=> d!1673607 true))

(declare-fun order!27043 () Int)

(declare-fun dynLambda!23887 (Int Int) Int)

(assert (=> d!1673607 (< (dynLambda!23887 order!27043 lambda!258784) (dynLambda!23887 order!27043 lambda!258813))))

(assert (=> d!1673607 (not (exists!1945 lt!2134519 lambda!258813))))

(declare-fun lt!2134655 () Unit!152092)

(declare-fun choose!38481 (List!60295 Int) Unit!152092)

(assert (=> d!1673607 (= lt!2134655 (choose!38481 lt!2134519 lambda!258784))))

(declare-fun forall!14170 (List!60295 Int) Bool)

(assert (=> d!1673607 (forall!14170 lt!2134519 lambda!258784)))

(assert (=> d!1673607 (= (lemmaForallThenNotExists!447 lt!2134519 lambda!258784) lt!2134655)))

(declare-fun bs!1206475 () Bool)

(assert (= bs!1206475 d!1673607))

(declare-fun m!6237426 () Bool)

(assert (=> bs!1206475 m!6237426))

(declare-fun m!6237428 () Bool)

(assert (=> bs!1206475 m!6237428))

(declare-fun m!6237430 () Bool)

(assert (=> bs!1206475 m!6237430))

(assert (=> b!5179169 d!1673607))

(declare-fun d!1673609 () Bool)

(declare-fun lt!2134656 () Int)

(assert (=> d!1673609 (>= lt!2134656 0)))

(declare-fun e!3227102 () Int)

(assert (=> d!1673609 (= lt!2134656 e!3227102)))

(declare-fun c!892403 () Bool)

(assert (=> d!1673609 (= c!892403 ((_ is Nil!60169) lt!2134501))))

(assert (=> d!1673609 (= (size!39695 lt!2134501) lt!2134656)))

(declare-fun b!5179384 () Bool)

(assert (=> b!5179384 (= e!3227102 0)))

(declare-fun b!5179385 () Bool)

(assert (=> b!5179385 (= e!3227102 (+ 1 (size!39695 (t!373446 lt!2134501))))))

(assert (= (and d!1673609 c!892403) b!5179384))

(assert (= (and d!1673609 (not c!892403)) b!5179385))

(declare-fun m!6237432 () Bool)

(assert (=> b!5179385 m!6237432))

(assert (=> b!5179162 d!1673609))

(assert (=> b!5179162 d!1673289))

(declare-fun d!1673611 () Bool)

(declare-fun lt!2134657 () Int)

(assert (=> d!1673611 (>= lt!2134657 0)))

(declare-fun e!3227103 () Int)

(assert (=> d!1673611 (= lt!2134657 e!3227103)))

(declare-fun c!892404 () Bool)

(assert (=> d!1673611 (= c!892404 ((_ is Nil!60169) lt!2134258))))

(assert (=> d!1673611 (= (size!39695 lt!2134258) lt!2134657)))

(declare-fun b!5179386 () Bool)

(assert (=> b!5179386 (= e!3227103 0)))

(declare-fun b!5179387 () Bool)

(assert (=> b!5179387 (= e!3227103 (+ 1 (size!39695 (t!373446 lt!2134258))))))

(assert (= (and d!1673611 c!892404) b!5179386))

(assert (= (and d!1673611 (not c!892404)) b!5179387))

(declare-fun m!6237434 () Bool)

(assert (=> b!5179387 m!6237434))

(assert (=> b!5179162 d!1673611))

(declare-fun d!1673613 () Bool)

(declare-fun lt!2134658 () Int)

(assert (=> d!1673613 (>= lt!2134658 0)))

(declare-fun e!3227104 () Int)

(assert (=> d!1673613 (= lt!2134658 e!3227104)))

(declare-fun c!892405 () Bool)

(assert (=> d!1673613 (= c!892405 ((_ is Nil!60169) (t!373446 (t!373446 lt!2134268))))))

(assert (=> d!1673613 (= (size!39695 (t!373446 (t!373446 lt!2134268))) lt!2134658)))

(declare-fun b!5179388 () Bool)

(assert (=> b!5179388 (= e!3227104 0)))

(declare-fun b!5179389 () Bool)

(assert (=> b!5179389 (= e!3227104 (+ 1 (size!39695 (t!373446 (t!373446 (t!373446 lt!2134268))))))))

(assert (= (and d!1673613 c!892405) b!5179388))

(assert (= (and d!1673613 (not c!892405)) b!5179389))

(declare-fun m!6237436 () Bool)

(assert (=> b!5179389 m!6237436))

(assert (=> b!5179193 d!1673613))

(assert (=> b!5179186 d!1673281))

(declare-fun d!1673615 () Bool)

(assert (=> d!1673615 (= (head!11077 call!363927) (h!66617 call!363927))))

(assert (=> b!5179186 d!1673615))

(declare-fun b!5179393 () Bool)

(declare-fun e!3227105 () Bool)

(assert (=> b!5179393 (= e!3227105 (>= (size!39695 input!5817) (size!39695 (++!13175 lt!2134354 (Cons!60169 (head!11077 (getSuffix!3440 input!5817 lt!2134354)) Nil!60169)))))))

(declare-fun b!5179391 () Bool)

(declare-fun res!2200637 () Bool)

(declare-fun e!3227106 () Bool)

(assert (=> b!5179391 (=> (not res!2200637) (not e!3227106))))

(assert (=> b!5179391 (= res!2200637 (= (head!11077 (++!13175 lt!2134354 (Cons!60169 (head!11077 (getSuffix!3440 input!5817 lt!2134354)) Nil!60169))) (head!11077 input!5817)))))

(declare-fun b!5179390 () Bool)

(declare-fun e!3227107 () Bool)

(assert (=> b!5179390 (= e!3227107 e!3227106)))

(declare-fun res!2200636 () Bool)

(assert (=> b!5179390 (=> (not res!2200636) (not e!3227106))))

(assert (=> b!5179390 (= res!2200636 (not ((_ is Nil!60169) input!5817)))))

(declare-fun d!1673617 () Bool)

(assert (=> d!1673617 e!3227105))

(declare-fun res!2200638 () Bool)

(assert (=> d!1673617 (=> res!2200638 e!3227105)))

(declare-fun lt!2134659 () Bool)

(assert (=> d!1673617 (= res!2200638 (not lt!2134659))))

(assert (=> d!1673617 (= lt!2134659 e!3227107)))

(declare-fun res!2200635 () Bool)

(assert (=> d!1673617 (=> res!2200635 e!3227107)))

(assert (=> d!1673617 (= res!2200635 ((_ is Nil!60169) (++!13175 lt!2134354 (Cons!60169 (head!11077 (getSuffix!3440 input!5817 lt!2134354)) Nil!60169))))))

(assert (=> d!1673617 (= (isPrefix!5792 (++!13175 lt!2134354 (Cons!60169 (head!11077 (getSuffix!3440 input!5817 lt!2134354)) Nil!60169)) input!5817) lt!2134659)))

(declare-fun b!5179392 () Bool)

(assert (=> b!5179392 (= e!3227106 (isPrefix!5792 (tail!10176 (++!13175 lt!2134354 (Cons!60169 (head!11077 (getSuffix!3440 input!5817 lt!2134354)) Nil!60169))) (tail!10176 input!5817)))))

(assert (= (and d!1673617 (not res!2200635)) b!5179390))

(assert (= (and b!5179390 res!2200636) b!5179391))

(assert (= (and b!5179391 res!2200637) b!5179392))

(assert (= (and d!1673617 (not res!2200638)) b!5179393))

(assert (=> b!5179393 m!6236610))

(assert (=> b!5179393 m!6237064))

(declare-fun m!6237438 () Bool)

(assert (=> b!5179393 m!6237438))

(assert (=> b!5179391 m!6237064))

(declare-fun m!6237440 () Bool)

(assert (=> b!5179391 m!6237440))

(assert (=> b!5179391 m!6236712))

(assert (=> b!5179392 m!6237064))

(declare-fun m!6237442 () Bool)

(assert (=> b!5179392 m!6237442))

(assert (=> b!5179392 m!6236664))

(assert (=> b!5179392 m!6237442))

(assert (=> b!5179392 m!6236664))

(declare-fun m!6237444 () Bool)

(assert (=> b!5179392 m!6237444))

(assert (=> b!5179186 d!1673617))

(declare-fun b!5179394 () Bool)

(declare-fun e!3227108 () List!60293)

(assert (=> b!5179394 (= e!3227108 (Cons!60169 (head!11077 call!363927) Nil!60169))))

(declare-fun b!5179395 () Bool)

(assert (=> b!5179395 (= e!3227108 (Cons!60169 (h!66617 lt!2134354) (++!13175 (t!373446 lt!2134354) (Cons!60169 (head!11077 call!363927) Nil!60169))))))

(declare-fun lt!2134660 () List!60293)

(declare-fun b!5179397 () Bool)

(declare-fun e!3227109 () Bool)

(assert (=> b!5179397 (= e!3227109 (or (not (= (Cons!60169 (head!11077 call!363927) Nil!60169) Nil!60169)) (= lt!2134660 lt!2134354)))))

(declare-fun b!5179396 () Bool)

(declare-fun res!2200640 () Bool)

(assert (=> b!5179396 (=> (not res!2200640) (not e!3227109))))

(assert (=> b!5179396 (= res!2200640 (= (size!39695 lt!2134660) (+ (size!39695 lt!2134354) (size!39695 (Cons!60169 (head!11077 call!363927) Nil!60169)))))))

(declare-fun d!1673619 () Bool)

(assert (=> d!1673619 e!3227109))

(declare-fun res!2200639 () Bool)

(assert (=> d!1673619 (=> (not res!2200639) (not e!3227109))))

(assert (=> d!1673619 (= res!2200639 (= (content!10667 lt!2134660) ((_ map or) (content!10667 lt!2134354) (content!10667 (Cons!60169 (head!11077 call!363927) Nil!60169)))))))

(assert (=> d!1673619 (= lt!2134660 e!3227108)))

(declare-fun c!892406 () Bool)

(assert (=> d!1673619 (= c!892406 ((_ is Nil!60169) lt!2134354))))

(assert (=> d!1673619 (= (++!13175 lt!2134354 (Cons!60169 (head!11077 call!363927) Nil!60169)) lt!2134660)))

(assert (= (and d!1673619 c!892406) b!5179394))

(assert (= (and d!1673619 (not c!892406)) b!5179395))

(assert (= (and d!1673619 res!2200639) b!5179396))

(assert (= (and b!5179396 res!2200640) b!5179397))

(declare-fun m!6237446 () Bool)

(assert (=> b!5179395 m!6237446))

(declare-fun m!6237448 () Bool)

(assert (=> b!5179396 m!6237448))

(assert (=> b!5179396 m!6237036))

(declare-fun m!6237450 () Bool)

(assert (=> b!5179396 m!6237450))

(declare-fun m!6237452 () Bool)

(assert (=> d!1673619 m!6237452))

(declare-fun m!6237454 () Bool)

(assert (=> d!1673619 m!6237454))

(declare-fun m!6237456 () Bool)

(assert (=> d!1673619 m!6237456))

(assert (=> b!5179186 d!1673619))

(declare-fun d!1673621 () Bool)

(assert (=> d!1673621 (= (head!11077 (getSuffix!3440 input!5817 lt!2134354)) (h!66617 (getSuffix!3440 input!5817 lt!2134354)))))

(assert (=> b!5179186 d!1673621))

(declare-fun d!1673623 () Bool)

(assert (=> d!1673623 (= (++!13175 (++!13175 lt!2134354 (Cons!60169 lt!2134541 Nil!60169)) lt!2134537) input!5817)))

(declare-fun lt!2134661 () Unit!152092)

(assert (=> d!1673623 (= lt!2134661 (choose!38471 lt!2134354 lt!2134541 lt!2134537 input!5817))))

(assert (=> d!1673623 (= (++!13175 lt!2134354 (Cons!60169 lt!2134541 lt!2134537)) input!5817)))

(assert (=> d!1673623 (= (lemmaMoveElementToOtherListKeepsConcatEq!1594 lt!2134354 lt!2134541 lt!2134537 input!5817) lt!2134661)))

(declare-fun bs!1206476 () Bool)

(assert (= bs!1206476 d!1673623))

(assert (=> bs!1206476 m!6237062))

(assert (=> bs!1206476 m!6237062))

(assert (=> bs!1206476 m!6237068))

(declare-fun m!6237458 () Bool)

(assert (=> bs!1206476 m!6237458))

(declare-fun m!6237460 () Bool)

(assert (=> bs!1206476 m!6237460))

(assert (=> b!5179186 d!1673623))

(declare-fun d!1673625 () Bool)

(assert (=> d!1673625 (isPrefix!5792 (++!13175 lt!2134354 (Cons!60169 (head!11077 (getSuffix!3440 input!5817 lt!2134354)) Nil!60169)) input!5817)))

(declare-fun lt!2134662 () Unit!152092)

(assert (=> d!1673625 (= lt!2134662 (choose!38470 lt!2134354 input!5817))))

(assert (=> d!1673625 (isPrefix!5792 lt!2134354 input!5817)))

(assert (=> d!1673625 (= (lemmaAddHeadSuffixToPrefixStillPrefix!1097 lt!2134354 input!5817) lt!2134662)))

(declare-fun bs!1206477 () Bool)

(assert (= bs!1206477 d!1673625))

(assert (=> bs!1206477 m!6237064))

(assert (=> bs!1206477 m!6237050))

(assert (=> bs!1206477 m!6237052))

(declare-fun m!6237462 () Bool)

(assert (=> bs!1206477 m!6237462))

(assert (=> bs!1206477 m!6237050))

(assert (=> bs!1206477 m!6237064))

(assert (=> bs!1206477 m!6237066))

(declare-fun m!6237464 () Bool)

(assert (=> bs!1206477 m!6237464))

(assert (=> b!5179186 d!1673625))

(declare-fun d!1673627 () Bool)

(declare-fun lt!2134663 () List!60293)

(assert (=> d!1673627 (= (++!13175 lt!2134354 lt!2134663) input!5817)))

(declare-fun e!3227110 () List!60293)

(assert (=> d!1673627 (= lt!2134663 e!3227110)))

(declare-fun c!892407 () Bool)

(assert (=> d!1673627 (= c!892407 ((_ is Cons!60169) lt!2134354))))

(assert (=> d!1673627 (>= (size!39695 input!5817) (size!39695 lt!2134354))))

(assert (=> d!1673627 (= (getSuffix!3440 input!5817 lt!2134354) lt!2134663)))

(declare-fun b!5179398 () Bool)

(assert (=> b!5179398 (= e!3227110 (getSuffix!3440 (tail!10176 input!5817) (t!373446 lt!2134354)))))

(declare-fun b!5179399 () Bool)

(assert (=> b!5179399 (= e!3227110 input!5817)))

(assert (= (and d!1673627 c!892407) b!5179398))

(assert (= (and d!1673627 (not c!892407)) b!5179399))

(declare-fun m!6237466 () Bool)

(assert (=> d!1673627 m!6237466))

(assert (=> d!1673627 m!6236610))

(assert (=> d!1673627 m!6237036))

(assert (=> b!5179398 m!6236664))

(assert (=> b!5179398 m!6236664))

(declare-fun m!6237468 () Bool)

(assert (=> b!5179398 m!6237468))

(assert (=> b!5179186 d!1673627))

(declare-fun d!1673629 () Bool)

(declare-fun lt!2134664 () Int)

(assert (=> d!1673629 (>= lt!2134664 0)))

(declare-fun e!3227111 () Int)

(assert (=> d!1673629 (= lt!2134664 e!3227111)))

(declare-fun c!892408 () Bool)

(assert (=> d!1673629 (= c!892408 ((_ is Nil!60169) lt!2134354))))

(assert (=> d!1673629 (= (size!39695 lt!2134354) lt!2134664)))

(declare-fun b!5179400 () Bool)

(assert (=> b!5179400 (= e!3227111 0)))

(declare-fun b!5179401 () Bool)

(assert (=> b!5179401 (= e!3227111 (+ 1 (size!39695 (t!373446 lt!2134354))))))

(assert (= (and d!1673629 c!892408) b!5179400))

(assert (= (and d!1673629 (not c!892408)) b!5179401))

(declare-fun m!6237470 () Bool)

(assert (=> b!5179401 m!6237470))

(assert (=> b!5179186 d!1673629))

(declare-fun d!1673631 () Bool)

(assert (=> d!1673631 (<= (size!39695 lt!2134354) (size!39695 input!5817))))

(declare-fun lt!2134665 () Unit!152092)

(assert (=> d!1673631 (= lt!2134665 (choose!38466 lt!2134354 input!5817))))

(assert (=> d!1673631 (isPrefix!5792 lt!2134354 input!5817)))

(assert (=> d!1673631 (= (lemmaIsPrefixThenSmallerEqSize!953 lt!2134354 input!5817) lt!2134665)))

(declare-fun bs!1206478 () Bool)

(assert (= bs!1206478 d!1673631))

(assert (=> bs!1206478 m!6237036))

(assert (=> bs!1206478 m!6236610))

(declare-fun m!6237472 () Bool)

(assert (=> bs!1206478 m!6237472))

(assert (=> bs!1206478 m!6237464))

(assert (=> b!5179186 d!1673631))

(declare-fun b!5179402 () Bool)

(declare-fun e!3227112 () List!60293)

(assert (=> b!5179402 (= e!3227112 (Cons!60169 lt!2134541 Nil!60169))))

(declare-fun b!5179403 () Bool)

(assert (=> b!5179403 (= e!3227112 (Cons!60169 (h!66617 lt!2134354) (++!13175 (t!373446 lt!2134354) (Cons!60169 lt!2134541 Nil!60169))))))

(declare-fun e!3227113 () Bool)

(declare-fun b!5179405 () Bool)

(declare-fun lt!2134666 () List!60293)

(assert (=> b!5179405 (= e!3227113 (or (not (= (Cons!60169 lt!2134541 Nil!60169) Nil!60169)) (= lt!2134666 lt!2134354)))))

(declare-fun b!5179404 () Bool)

(declare-fun res!2200642 () Bool)

(assert (=> b!5179404 (=> (not res!2200642) (not e!3227113))))

(assert (=> b!5179404 (= res!2200642 (= (size!39695 lt!2134666) (+ (size!39695 lt!2134354) (size!39695 (Cons!60169 lt!2134541 Nil!60169)))))))

(declare-fun d!1673633 () Bool)

(assert (=> d!1673633 e!3227113))

(declare-fun res!2200641 () Bool)

(assert (=> d!1673633 (=> (not res!2200641) (not e!3227113))))

(assert (=> d!1673633 (= res!2200641 (= (content!10667 lt!2134666) ((_ map or) (content!10667 lt!2134354) (content!10667 (Cons!60169 lt!2134541 Nil!60169)))))))

(assert (=> d!1673633 (= lt!2134666 e!3227112)))

(declare-fun c!892409 () Bool)

(assert (=> d!1673633 (= c!892409 ((_ is Nil!60169) lt!2134354))))

(assert (=> d!1673633 (= (++!13175 lt!2134354 (Cons!60169 lt!2134541 Nil!60169)) lt!2134666)))

(assert (= (and d!1673633 c!892409) b!5179402))

(assert (= (and d!1673633 (not c!892409)) b!5179403))

(assert (= (and d!1673633 res!2200641) b!5179404))

(assert (= (and b!5179404 res!2200642) b!5179405))

(declare-fun m!6237474 () Bool)

(assert (=> b!5179403 m!6237474))

(declare-fun m!6237476 () Bool)

(assert (=> b!5179404 m!6237476))

(assert (=> b!5179404 m!6237036))

(declare-fun m!6237478 () Bool)

(assert (=> b!5179404 m!6237478))

(declare-fun m!6237480 () Bool)

(assert (=> d!1673633 m!6237480))

(assert (=> d!1673633 m!6237454))

(declare-fun m!6237482 () Bool)

(assert (=> d!1673633 m!6237482))

(assert (=> b!5179186 d!1673633))

(declare-fun b!5179406 () Bool)

(declare-fun e!3227114 () List!60293)

(assert (=> b!5179406 (= e!3227114 lt!2134537)))

(declare-fun b!5179407 () Bool)

(assert (=> b!5179407 (= e!3227114 (Cons!60169 (h!66617 (++!13175 lt!2134354 (Cons!60169 lt!2134541 Nil!60169))) (++!13175 (t!373446 (++!13175 lt!2134354 (Cons!60169 lt!2134541 Nil!60169))) lt!2134537)))))

(declare-fun lt!2134667 () List!60293)

(declare-fun e!3227115 () Bool)

(declare-fun b!5179409 () Bool)

(assert (=> b!5179409 (= e!3227115 (or (not (= lt!2134537 Nil!60169)) (= lt!2134667 (++!13175 lt!2134354 (Cons!60169 lt!2134541 Nil!60169)))))))

(declare-fun b!5179408 () Bool)

(declare-fun res!2200644 () Bool)

(assert (=> b!5179408 (=> (not res!2200644) (not e!3227115))))

(assert (=> b!5179408 (= res!2200644 (= (size!39695 lt!2134667) (+ (size!39695 (++!13175 lt!2134354 (Cons!60169 lt!2134541 Nil!60169))) (size!39695 lt!2134537))))))

(declare-fun d!1673635 () Bool)

(assert (=> d!1673635 e!3227115))

(declare-fun res!2200643 () Bool)

(assert (=> d!1673635 (=> (not res!2200643) (not e!3227115))))

(assert (=> d!1673635 (= res!2200643 (= (content!10667 lt!2134667) ((_ map or) (content!10667 (++!13175 lt!2134354 (Cons!60169 lt!2134541 Nil!60169))) (content!10667 lt!2134537))))))

(assert (=> d!1673635 (= lt!2134667 e!3227114)))

(declare-fun c!892410 () Bool)

(assert (=> d!1673635 (= c!892410 ((_ is Nil!60169) (++!13175 lt!2134354 (Cons!60169 lt!2134541 Nil!60169))))))

(assert (=> d!1673635 (= (++!13175 (++!13175 lt!2134354 (Cons!60169 lt!2134541 Nil!60169)) lt!2134537) lt!2134667)))

(assert (= (and d!1673635 c!892410) b!5179406))

(assert (= (and d!1673635 (not c!892410)) b!5179407))

(assert (= (and d!1673635 res!2200643) b!5179408))

(assert (= (and b!5179408 res!2200644) b!5179409))

(declare-fun m!6237484 () Bool)

(assert (=> b!5179407 m!6237484))

(declare-fun m!6237486 () Bool)

(assert (=> b!5179408 m!6237486))

(assert (=> b!5179408 m!6237062))

(declare-fun m!6237488 () Bool)

(assert (=> b!5179408 m!6237488))

(declare-fun m!6237490 () Bool)

(assert (=> b!5179408 m!6237490))

(declare-fun m!6237492 () Bool)

(assert (=> d!1673635 m!6237492))

(assert (=> d!1673635 m!6237062))

(declare-fun m!6237494 () Bool)

(assert (=> d!1673635 m!6237494))

(declare-fun m!6237496 () Bool)

(assert (=> d!1673635 m!6237496))

(assert (=> b!5179186 d!1673635))

(declare-fun b!5179410 () Bool)

(declare-fun e!3227116 () List!60293)

(assert (=> b!5179410 (= e!3227116 (Cons!60169 (head!11077 (getSuffix!3440 input!5817 lt!2134354)) Nil!60169))))

(declare-fun b!5179411 () Bool)

(assert (=> b!5179411 (= e!3227116 (Cons!60169 (h!66617 lt!2134354) (++!13175 (t!373446 lt!2134354) (Cons!60169 (head!11077 (getSuffix!3440 input!5817 lt!2134354)) Nil!60169))))))

(declare-fun e!3227117 () Bool)

(declare-fun b!5179413 () Bool)

(declare-fun lt!2134668 () List!60293)

(assert (=> b!5179413 (= e!3227117 (or (not (= (Cons!60169 (head!11077 (getSuffix!3440 input!5817 lt!2134354)) Nil!60169) Nil!60169)) (= lt!2134668 lt!2134354)))))

(declare-fun b!5179412 () Bool)

(declare-fun res!2200646 () Bool)

(assert (=> b!5179412 (=> (not res!2200646) (not e!3227117))))

(assert (=> b!5179412 (= res!2200646 (= (size!39695 lt!2134668) (+ (size!39695 lt!2134354) (size!39695 (Cons!60169 (head!11077 (getSuffix!3440 input!5817 lt!2134354)) Nil!60169)))))))

(declare-fun d!1673637 () Bool)

(assert (=> d!1673637 e!3227117))

(declare-fun res!2200645 () Bool)

(assert (=> d!1673637 (=> (not res!2200645) (not e!3227117))))

(assert (=> d!1673637 (= res!2200645 (= (content!10667 lt!2134668) ((_ map or) (content!10667 lt!2134354) (content!10667 (Cons!60169 (head!11077 (getSuffix!3440 input!5817 lt!2134354)) Nil!60169)))))))

(assert (=> d!1673637 (= lt!2134668 e!3227116)))

(declare-fun c!892411 () Bool)

(assert (=> d!1673637 (= c!892411 ((_ is Nil!60169) lt!2134354))))

(assert (=> d!1673637 (= (++!13175 lt!2134354 (Cons!60169 (head!11077 (getSuffix!3440 input!5817 lt!2134354)) Nil!60169)) lt!2134668)))

(assert (= (and d!1673637 c!892411) b!5179410))

(assert (= (and d!1673637 (not c!892411)) b!5179411))

(assert (= (and d!1673637 res!2200645) b!5179412))

(assert (= (and b!5179412 res!2200646) b!5179413))

(declare-fun m!6237498 () Bool)

(assert (=> b!5179411 m!6237498))

(declare-fun m!6237500 () Bool)

(assert (=> b!5179412 m!6237500))

(assert (=> b!5179412 m!6237036))

(declare-fun m!6237502 () Bool)

(assert (=> b!5179412 m!6237502))

(declare-fun m!6237504 () Bool)

(assert (=> d!1673637 m!6237504))

(assert (=> d!1673637 m!6237454))

(declare-fun m!6237506 () Bool)

(assert (=> d!1673637 m!6237506))

(assert (=> b!5179186 d!1673637))

(declare-fun d!1673639 () Bool)

(assert (=> d!1673639 (= (tail!10176 call!363927) (t!373446 call!363927))))

(assert (=> b!5179186 d!1673639))

(declare-fun d!1673641 () Bool)

(declare-fun c!892412 () Bool)

(assert (=> d!1673641 (= c!892412 ((_ is Nil!60169) lt!2134494))))

(declare-fun e!3227118 () (InoxSet C!29588))

(assert (=> d!1673641 (= (content!10667 lt!2134494) e!3227118)))

(declare-fun b!5179414 () Bool)

(assert (=> b!5179414 (= e!3227118 ((as const (Array C!29588 Bool)) false))))

(declare-fun b!5179415 () Bool)

(assert (=> b!5179415 (= e!3227118 ((_ map or) (store ((as const (Array C!29588 Bool)) false) (h!66617 lt!2134494) true) (content!10667 (t!373446 lt!2134494))))))

(assert (= (and d!1673641 c!892412) b!5179414))

(assert (= (and d!1673641 (not c!892412)) b!5179415))

(declare-fun m!6237508 () Bool)

(assert (=> b!5179415 m!6237508))

(declare-fun m!6237510 () Bool)

(assert (=> b!5179415 m!6237510))

(assert (=> d!1673385 d!1673641))

(assert (=> d!1673385 d!1673415))

(declare-fun d!1673643 () Bool)

(declare-fun c!892413 () Bool)

(assert (=> d!1673643 (= c!892413 ((_ is Nil!60169) (Cons!60169 lt!2134344 Nil!60169)))))

(declare-fun e!3227119 () (InoxSet C!29588))

(assert (=> d!1673643 (= (content!10667 (Cons!60169 lt!2134344 Nil!60169)) e!3227119)))

(declare-fun b!5179416 () Bool)

(assert (=> b!5179416 (= e!3227119 ((as const (Array C!29588 Bool)) false))))

(declare-fun b!5179417 () Bool)

(assert (=> b!5179417 (= e!3227119 ((_ map or) (store ((as const (Array C!29588 Bool)) false) (h!66617 (Cons!60169 lt!2134344 Nil!60169)) true) (content!10667 (t!373446 (Cons!60169 lt!2134344 Nil!60169)))))))

(assert (= (and d!1673643 c!892413) b!5179416))

(assert (= (and d!1673643 (not c!892413)) b!5179417))

(declare-fun m!6237512 () Bool)

(assert (=> b!5179417 m!6237512))

(declare-fun m!6237514 () Bool)

(assert (=> b!5179417 m!6237514))

(assert (=> d!1673385 d!1673643))

(declare-fun b!5179418 () Bool)

(declare-fun e!3227120 () List!60293)

(assert (=> b!5179418 (= e!3227120 (Cons!60169 (head!11077 (getSuffix!3440 input!5817 testedP!294)) Nil!60169))))

(declare-fun b!5179419 () Bool)

(assert (=> b!5179419 (= e!3227120 (Cons!60169 (h!66617 (t!373446 testedP!294)) (++!13175 (t!373446 (t!373446 testedP!294)) (Cons!60169 (head!11077 (getSuffix!3440 input!5817 testedP!294)) Nil!60169))))))

(declare-fun lt!2134669 () List!60293)

(declare-fun b!5179421 () Bool)

(declare-fun e!3227121 () Bool)

(assert (=> b!5179421 (= e!3227121 (or (not (= (Cons!60169 (head!11077 (getSuffix!3440 input!5817 testedP!294)) Nil!60169) Nil!60169)) (= lt!2134669 (t!373446 testedP!294))))))

(declare-fun b!5179420 () Bool)

(declare-fun res!2200648 () Bool)

(assert (=> b!5179420 (=> (not res!2200648) (not e!3227121))))

(assert (=> b!5179420 (= res!2200648 (= (size!39695 lt!2134669) (+ (size!39695 (t!373446 testedP!294)) (size!39695 (Cons!60169 (head!11077 (getSuffix!3440 input!5817 testedP!294)) Nil!60169)))))))

(declare-fun d!1673645 () Bool)

(assert (=> d!1673645 e!3227121))

(declare-fun res!2200647 () Bool)

(assert (=> d!1673645 (=> (not res!2200647) (not e!3227121))))

(assert (=> d!1673645 (= res!2200647 (= (content!10667 lt!2134669) ((_ map or) (content!10667 (t!373446 testedP!294)) (content!10667 (Cons!60169 (head!11077 (getSuffix!3440 input!5817 testedP!294)) Nil!60169)))))))

(assert (=> d!1673645 (= lt!2134669 e!3227120)))

(declare-fun c!892414 () Bool)

(assert (=> d!1673645 (= c!892414 ((_ is Nil!60169) (t!373446 testedP!294)))))

(assert (=> d!1673645 (= (++!13175 (t!373446 testedP!294) (Cons!60169 (head!11077 (getSuffix!3440 input!5817 testedP!294)) Nil!60169)) lt!2134669)))

(assert (= (and d!1673645 c!892414) b!5179418))

(assert (= (and d!1673645 (not c!892414)) b!5179419))

(assert (= (and d!1673645 res!2200647) b!5179420))

(assert (= (and b!5179420 res!2200648) b!5179421))

(declare-fun m!6237516 () Bool)

(assert (=> b!5179419 m!6237516))

(declare-fun m!6237518 () Bool)

(assert (=> b!5179420 m!6237518))

(assert (=> b!5179420 m!6236670))

(assert (=> b!5179420 m!6236874))

(declare-fun m!6237520 () Bool)

(assert (=> d!1673645 m!6237520))

(assert (=> d!1673645 m!6236974))

(assert (=> d!1673645 m!6236878))

(assert (=> b!5179103 d!1673645))

(declare-fun d!1673647 () Bool)

(declare-fun res!2200649 () Bool)

(declare-fun e!3227122 () Bool)

(assert (=> d!1673647 (=> res!2200649 e!3227122)))

(assert (=> d!1673647 (= res!2200649 ((_ is Nil!60170) (t!373447 (exprs!4543 setElem!32367))))))

(assert (=> d!1673647 (= (forall!14167 (t!373447 (exprs!4543 setElem!32367)) lambda!258769) e!3227122)))

(declare-fun b!5179422 () Bool)

(declare-fun e!3227123 () Bool)

(assert (=> b!5179422 (= e!3227122 e!3227123)))

(declare-fun res!2200650 () Bool)

(assert (=> b!5179422 (=> (not res!2200650) (not e!3227123))))

(assert (=> b!5179422 (= res!2200650 (dynLambda!23885 lambda!258769 (h!66618 (t!373447 (exprs!4543 setElem!32367)))))))

(declare-fun b!5179423 () Bool)

(assert (=> b!5179423 (= e!3227123 (forall!14167 (t!373447 (t!373447 (exprs!4543 setElem!32367))) lambda!258769))))

(assert (= (and d!1673647 (not res!2200649)) b!5179422))

(assert (= (and b!5179422 res!2200650) b!5179423))

(declare-fun b_lambda!201041 () Bool)

(assert (=> (not b_lambda!201041) (not b!5179422)))

(declare-fun m!6237522 () Bool)

(assert (=> b!5179422 m!6237522))

(declare-fun m!6237524 () Bool)

(assert (=> b!5179423 m!6237524))

(assert (=> b!5179145 d!1673647))

(assert (=> d!1673393 d!1673377))

(assert (=> d!1673393 d!1673371))

(assert (=> d!1673393 d!1673373))

(assert (=> d!1673393 d!1673285))

(declare-fun b!5179427 () Bool)

(declare-fun e!3227124 () Bool)

(assert (=> b!5179427 (= e!3227124 (>= (size!39695 (tail!10176 (tail!10176 input!5817))) (size!39695 (tail!10176 (tail!10176 testedP!294)))))))

(declare-fun b!5179425 () Bool)

(declare-fun res!2200653 () Bool)

(declare-fun e!3227125 () Bool)

(assert (=> b!5179425 (=> (not res!2200653) (not e!3227125))))

(assert (=> b!5179425 (= res!2200653 (= (head!11077 (tail!10176 (tail!10176 testedP!294))) (head!11077 (tail!10176 (tail!10176 input!5817)))))))

(declare-fun b!5179424 () Bool)

(declare-fun e!3227126 () Bool)

(assert (=> b!5179424 (= e!3227126 e!3227125)))

(declare-fun res!2200652 () Bool)

(assert (=> b!5179424 (=> (not res!2200652) (not e!3227125))))

(assert (=> b!5179424 (= res!2200652 (not ((_ is Nil!60169) (tail!10176 (tail!10176 input!5817)))))))

(declare-fun d!1673649 () Bool)

(assert (=> d!1673649 e!3227124))

(declare-fun res!2200654 () Bool)

(assert (=> d!1673649 (=> res!2200654 e!3227124)))

(declare-fun lt!2134670 () Bool)

(assert (=> d!1673649 (= res!2200654 (not lt!2134670))))

(assert (=> d!1673649 (= lt!2134670 e!3227126)))

(declare-fun res!2200651 () Bool)

(assert (=> d!1673649 (=> res!2200651 e!3227126)))

(assert (=> d!1673649 (= res!2200651 ((_ is Nil!60169) (tail!10176 (tail!10176 testedP!294))))))

(assert (=> d!1673649 (= (isPrefix!5792 (tail!10176 (tail!10176 testedP!294)) (tail!10176 (tail!10176 input!5817))) lt!2134670)))

(declare-fun b!5179426 () Bool)

(assert (=> b!5179426 (= e!3227125 (isPrefix!5792 (tail!10176 (tail!10176 (tail!10176 testedP!294))) (tail!10176 (tail!10176 (tail!10176 input!5817)))))))

(assert (= (and d!1673649 (not res!2200651)) b!5179424))

(assert (= (and b!5179424 res!2200652) b!5179425))

(assert (= (and b!5179425 res!2200653) b!5179426))

(assert (= (and d!1673649 (not res!2200654)) b!5179427))

(assert (=> b!5179427 m!6236940))

(assert (=> b!5179427 m!6237420))

(assert (=> b!5179427 m!6236938))

(declare-fun m!6237526 () Bool)

(assert (=> b!5179427 m!6237526))

(assert (=> b!5179425 m!6236938))

(declare-fun m!6237528 () Bool)

(assert (=> b!5179425 m!6237528))

(assert (=> b!5179425 m!6236940))

(declare-fun m!6237530 () Bool)

(assert (=> b!5179425 m!6237530))

(assert (=> b!5179426 m!6236938))

(declare-fun m!6237532 () Bool)

(assert (=> b!5179426 m!6237532))

(assert (=> b!5179426 m!6236940))

(assert (=> b!5179426 m!6237422))

(assert (=> b!5179426 m!6237532))

(assert (=> b!5179426 m!6237422))

(declare-fun m!6237534 () Bool)

(assert (=> b!5179426 m!6237534))

(assert (=> b!5179126 d!1673649))

(declare-fun d!1673651 () Bool)

(assert (=> d!1673651 (= (tail!10176 (tail!10176 testedP!294)) (t!373446 (tail!10176 testedP!294)))))

(assert (=> b!5179126 d!1673651))

(assert (=> b!5179126 d!1673605))

(declare-fun d!1673653 () Bool)

(declare-fun lt!2134671 () Int)

(assert (=> d!1673653 (>= lt!2134671 0)))

(declare-fun e!3227127 () Int)

(assert (=> d!1673653 (= lt!2134671 e!3227127)))

(declare-fun c!892415 () Bool)

(assert (=> d!1673653 (= c!892415 ((_ is Nil!60169) (_1!35237 lt!2134542)))))

(assert (=> d!1673653 (= (size!39695 (_1!35237 lt!2134542)) lt!2134671)))

(declare-fun b!5179428 () Bool)

(assert (=> b!5179428 (= e!3227127 0)))

(declare-fun b!5179429 () Bool)

(assert (=> b!5179429 (= e!3227127 (+ 1 (size!39695 (t!373446 (_1!35237 lt!2134542)))))))

(assert (= (and d!1673653 c!892415) b!5179428))

(assert (= (and d!1673653 (not c!892415)) b!5179429))

(declare-fun m!6237536 () Bool)

(assert (=> b!5179429 m!6237536))

(assert (=> b!5179184 d!1673653))

(assert (=> b!5179184 d!1673629))

(declare-fun d!1673655 () Bool)

(declare-fun lt!2134672 () Int)

(assert (=> d!1673655 (>= lt!2134672 0)))

(declare-fun e!3227128 () Int)

(assert (=> d!1673655 (= lt!2134672 e!3227128)))

(declare-fun c!892416 () Bool)

(assert (=> d!1673655 (= c!892416 ((_ is Nil!60169) (tail!10176 input!5817)))))

(assert (=> d!1673655 (= (size!39695 (tail!10176 input!5817)) lt!2134672)))

(declare-fun b!5179430 () Bool)

(assert (=> b!5179430 (= e!3227128 0)))

(declare-fun b!5179431 () Bool)

(assert (=> b!5179431 (= e!3227128 (+ 1 (size!39695 (t!373446 (tail!10176 input!5817)))))))

(assert (= (and d!1673655 c!892416) b!5179430))

(assert (= (and d!1673655 (not c!892416)) b!5179431))

(declare-fun m!6237538 () Bool)

(assert (=> b!5179431 m!6237538))

(assert (=> b!5179133 d!1673655))

(declare-fun b!5179432 () Bool)

(declare-fun e!3227129 () List!60293)

(assert (=> b!5179432 (= e!3227129 lt!2134340)))

(declare-fun b!5179433 () Bool)

(assert (=> b!5179433 (= e!3227129 (Cons!60169 (h!66617 (t!373446 (++!13175 testedP!294 (Cons!60169 lt!2134344 Nil!60169)))) (++!13175 (t!373446 (t!373446 (++!13175 testedP!294 (Cons!60169 lt!2134344 Nil!60169)))) lt!2134340)))))

(declare-fun b!5179435 () Bool)

(declare-fun e!3227130 () Bool)

(declare-fun lt!2134673 () List!60293)

(assert (=> b!5179435 (= e!3227130 (or (not (= lt!2134340 Nil!60169)) (= lt!2134673 (t!373446 (++!13175 testedP!294 (Cons!60169 lt!2134344 Nil!60169))))))))

(declare-fun b!5179434 () Bool)

(declare-fun res!2200656 () Bool)

(assert (=> b!5179434 (=> (not res!2200656) (not e!3227130))))

(assert (=> b!5179434 (= res!2200656 (= (size!39695 lt!2134673) (+ (size!39695 (t!373446 (++!13175 testedP!294 (Cons!60169 lt!2134344 Nil!60169)))) (size!39695 lt!2134340))))))

(declare-fun d!1673657 () Bool)

(assert (=> d!1673657 e!3227130))

(declare-fun res!2200655 () Bool)

(assert (=> d!1673657 (=> (not res!2200655) (not e!3227130))))

(assert (=> d!1673657 (= res!2200655 (= (content!10667 lt!2134673) ((_ map or) (content!10667 (t!373446 (++!13175 testedP!294 (Cons!60169 lt!2134344 Nil!60169)))) (content!10667 lt!2134340))))))

(assert (=> d!1673657 (= lt!2134673 e!3227129)))

(declare-fun c!892417 () Bool)

(assert (=> d!1673657 (= c!892417 ((_ is Nil!60169) (t!373446 (++!13175 testedP!294 (Cons!60169 lt!2134344 Nil!60169)))))))

(assert (=> d!1673657 (= (++!13175 (t!373446 (++!13175 testedP!294 (Cons!60169 lt!2134344 Nil!60169))) lt!2134340) lt!2134673)))

(assert (= (and d!1673657 c!892417) b!5179432))

(assert (= (and d!1673657 (not c!892417)) b!5179433))

(assert (= (and d!1673657 res!2200655) b!5179434))

(assert (= (and b!5179434 res!2200656) b!5179435))

(declare-fun m!6237540 () Bool)

(assert (=> b!5179433 m!6237540))

(declare-fun m!6237542 () Bool)

(assert (=> b!5179434 m!6237542))

(declare-fun m!6237544 () Bool)

(assert (=> b!5179434 m!6237544))

(assert (=> b!5179434 m!6236908))

(declare-fun m!6237546 () Bool)

(assert (=> d!1673657 m!6237546))

(declare-fun m!6237548 () Bool)

(assert (=> d!1673657 m!6237548))

(assert (=> d!1673657 m!6236914))

(assert (=> b!5179115 d!1673657))

(declare-fun bs!1206479 () Bool)

(declare-fun d!1673659 () Bool)

(assert (= bs!1206479 (and d!1673659 b!5179168)))

(declare-fun lambda!258816 () Int)

(assert (=> bs!1206479 (not (= lambda!258816 lambda!258785))))

(declare-fun bs!1206480 () Bool)

(assert (= bs!1206480 (and d!1673659 d!1673607)))

(assert (=> bs!1206480 (= (= (ite c!892344 lambda!258785 lambda!258786) lambda!258784) (= lambda!258816 lambda!258813))))

(declare-fun bs!1206481 () Bool)

(assert (= bs!1206481 (and d!1673659 b!5179169)))

(assert (=> bs!1206481 (not (= lambda!258816 lambda!258786))))

(declare-fun bs!1206482 () Bool)

(assert (= bs!1206482 (and d!1673659 d!1673423)))

(assert (=> bs!1206482 (not (= lambda!258816 lambda!258784))))

(declare-fun bs!1206483 () Bool)

(assert (= bs!1206483 (and d!1673659 d!1673359)))

(assert (=> bs!1206483 (not (= lambda!258816 lambda!258768))))

(assert (=> d!1673659 true))

(assert (=> d!1673659 (< (dynLambda!23887 order!27043 (ite c!892344 lambda!258785 lambda!258786)) (dynLambda!23887 order!27043 lambda!258816))))

(assert (=> d!1673659 (= (exists!1945 (ite c!892344 lt!2134524 lt!2134519) (ite c!892344 lambda!258785 lambda!258786)) (not (forall!14170 (ite c!892344 lt!2134524 lt!2134519) lambda!258816)))))

(declare-fun bs!1206484 () Bool)

(assert (= bs!1206484 d!1673659))

(declare-fun m!6237550 () Bool)

(assert (=> bs!1206484 m!6237550))

(assert (=> bm!363956 d!1673659))

(assert (=> bm!363961 d!1673349))

(declare-fun b!5179436 () Bool)

(declare-fun e!3227131 () List!60293)

(assert (=> b!5179436 (= e!3227131 (_2!35237 lt!2134345))))

(declare-fun b!5179437 () Bool)

(assert (=> b!5179437 (= e!3227131 (Cons!60169 (h!66617 (t!373446 (_1!35237 lt!2134345))) (++!13175 (t!373446 (t!373446 (_1!35237 lt!2134345))) (_2!35237 lt!2134345))))))

(declare-fun b!5179439 () Bool)

(declare-fun e!3227132 () Bool)

(declare-fun lt!2134674 () List!60293)

(assert (=> b!5179439 (= e!3227132 (or (not (= (_2!35237 lt!2134345) Nil!60169)) (= lt!2134674 (t!373446 (_1!35237 lt!2134345)))))))

(declare-fun b!5179438 () Bool)

(declare-fun res!2200658 () Bool)

(assert (=> b!5179438 (=> (not res!2200658) (not e!3227132))))

(assert (=> b!5179438 (= res!2200658 (= (size!39695 lt!2134674) (+ (size!39695 (t!373446 (_1!35237 lt!2134345))) (size!39695 (_2!35237 lt!2134345)))))))

(declare-fun d!1673661 () Bool)

(assert (=> d!1673661 e!3227132))

(declare-fun res!2200657 () Bool)

(assert (=> d!1673661 (=> (not res!2200657) (not e!3227132))))

(assert (=> d!1673661 (= res!2200657 (= (content!10667 lt!2134674) ((_ map or) (content!10667 (t!373446 (_1!35237 lt!2134345))) (content!10667 (_2!35237 lt!2134345)))))))

(assert (=> d!1673661 (= lt!2134674 e!3227131)))

(declare-fun c!892418 () Bool)

(assert (=> d!1673661 (= c!892418 ((_ is Nil!60169) (t!373446 (_1!35237 lt!2134345))))))

(assert (=> d!1673661 (= (++!13175 (t!373446 (_1!35237 lt!2134345)) (_2!35237 lt!2134345)) lt!2134674)))

(assert (= (and d!1673661 c!892418) b!5179436))

(assert (= (and d!1673661 (not c!892418)) b!5179437))

(assert (= (and d!1673661 res!2200657) b!5179438))

(assert (= (and b!5179438 res!2200658) b!5179439))

(declare-fun m!6237552 () Bool)

(assert (=> b!5179437 m!6237552))

(declare-fun m!6237554 () Bool)

(assert (=> b!5179438 m!6237554))

(assert (=> b!5179438 m!6236944))

(assert (=> b!5179438 m!6236984))

(declare-fun m!6237556 () Bool)

(assert (=> d!1673661 m!6237556))

(declare-fun m!6237558 () Bool)

(assert (=> d!1673661 m!6237558))

(assert (=> d!1673661 m!6236990))

(assert (=> b!5179157 d!1673661))

(declare-fun b!5179440 () Bool)

(declare-fun e!3227133 () List!60293)

(assert (=> b!5179440 (= e!3227133 lt!2134567)))

(declare-fun b!5179441 () Bool)

(assert (=> b!5179441 (= e!3227133 (Cons!60169 (h!66617 (t!373446 testedP!294)) (++!13175 (t!373446 (t!373446 testedP!294)) lt!2134567)))))

(declare-fun b!5179443 () Bool)

(declare-fun lt!2134675 () List!60293)

(declare-fun e!3227134 () Bool)

(assert (=> b!5179443 (= e!3227134 (or (not (= lt!2134567 Nil!60169)) (= lt!2134675 (t!373446 testedP!294))))))

(declare-fun b!5179442 () Bool)

(declare-fun res!2200660 () Bool)

(assert (=> b!5179442 (=> (not res!2200660) (not e!3227134))))

(assert (=> b!5179442 (= res!2200660 (= (size!39695 lt!2134675) (+ (size!39695 (t!373446 testedP!294)) (size!39695 lt!2134567))))))

(declare-fun d!1673663 () Bool)

(assert (=> d!1673663 e!3227134))

(declare-fun res!2200659 () Bool)

(assert (=> d!1673663 (=> (not res!2200659) (not e!3227134))))

(assert (=> d!1673663 (= res!2200659 (= (content!10667 lt!2134675) ((_ map or) (content!10667 (t!373446 testedP!294)) (content!10667 lt!2134567))))))

(assert (=> d!1673663 (= lt!2134675 e!3227133)))

(declare-fun c!892419 () Bool)

(assert (=> d!1673663 (= c!892419 ((_ is Nil!60169) (t!373446 testedP!294)))))

(assert (=> d!1673663 (= (++!13175 (t!373446 testedP!294) lt!2134567) lt!2134675)))

(assert (= (and d!1673663 c!892419) b!5179440))

(assert (= (and d!1673663 (not c!892419)) b!5179441))

(assert (= (and d!1673663 res!2200659) b!5179442))

(assert (= (and b!5179442 res!2200660) b!5179443))

(declare-fun m!6237560 () Bool)

(assert (=> b!5179441 m!6237560))

(declare-fun m!6237562 () Bool)

(assert (=> b!5179442 m!6237562))

(assert (=> b!5179442 m!6236670))

(declare-fun m!6237564 () Bool)

(assert (=> b!5179442 m!6237564))

(declare-fun m!6237566 () Bool)

(assert (=> d!1673663 m!6237566))

(assert (=> d!1673663 m!6236974))

(declare-fun m!6237568 () Bool)

(assert (=> d!1673663 m!6237568))

(assert (=> d!1673465 d!1673663))

(assert (=> d!1673465 d!1673655))

(assert (=> d!1673465 d!1673387))

(declare-fun d!1673665 () Bool)

(assert (=> d!1673665 (= (flatMap!462 baseZ!62 lambda!258771) (choose!38472 baseZ!62 lambda!258771))))

(declare-fun bs!1206485 () Bool)

(assert (= bs!1206485 d!1673665))

(declare-fun m!6237570 () Bool)

(assert (=> bs!1206485 m!6237570))

(assert (=> d!1673409 d!1673665))

(declare-fun d!1673667 () Bool)

(declare-fun c!892420 () Bool)

(assert (=> d!1673667 (= c!892420 ((_ is Nil!60169) lt!2134487))))

(declare-fun e!3227135 () (InoxSet C!29588))

(assert (=> d!1673667 (= (content!10667 lt!2134487) e!3227135)))

(declare-fun b!5179444 () Bool)

(assert (=> b!5179444 (= e!3227135 ((as const (Array C!29588 Bool)) false))))

(declare-fun b!5179445 () Bool)

(assert (=> b!5179445 (= e!3227135 ((_ map or) (store ((as const (Array C!29588 Bool)) false) (h!66617 lt!2134487) true) (content!10667 (t!373446 lt!2134487))))))

(assert (= (and d!1673667 c!892420) b!5179444))

(assert (= (and d!1673667 (not c!892420)) b!5179445))

(declare-fun m!6237572 () Bool)

(assert (=> b!5179445 m!6237572))

(declare-fun m!6237574 () Bool)

(assert (=> b!5179445 m!6237574))

(assert (=> d!1673371 d!1673667))

(assert (=> d!1673371 d!1673415))

(declare-fun d!1673669 () Bool)

(declare-fun c!892421 () Bool)

(assert (=> d!1673669 (= c!892421 ((_ is Nil!60169) (Cons!60169 (head!11077 (getSuffix!3440 input!5817 testedP!294)) Nil!60169)))))

(declare-fun e!3227136 () (InoxSet C!29588))

(assert (=> d!1673669 (= (content!10667 (Cons!60169 (head!11077 (getSuffix!3440 input!5817 testedP!294)) Nil!60169)) e!3227136)))

(declare-fun b!5179446 () Bool)

(assert (=> b!5179446 (= e!3227136 ((as const (Array C!29588 Bool)) false))))

(declare-fun b!5179447 () Bool)

(assert (=> b!5179447 (= e!3227136 ((_ map or) (store ((as const (Array C!29588 Bool)) false) (h!66617 (Cons!60169 (head!11077 (getSuffix!3440 input!5817 testedP!294)) Nil!60169)) true) (content!10667 (t!373446 (Cons!60169 (head!11077 (getSuffix!3440 input!5817 testedP!294)) Nil!60169)))))))

(assert (= (and d!1673669 c!892421) b!5179446))

(assert (= (and d!1673669 (not c!892421)) b!5179447))

(declare-fun m!6237576 () Bool)

(assert (=> b!5179447 m!6237576))

(declare-fun m!6237578 () Bool)

(assert (=> b!5179447 m!6237578))

(assert (=> d!1673371 d!1673669))

(declare-fun d!1673671 () Bool)

(declare-fun res!2200661 () Bool)

(declare-fun e!3227137 () Bool)

(assert (=> d!1673671 (=> res!2200661 e!3227137)))

(assert (=> d!1673671 (= res!2200661 ((_ is Nil!60170) (exprs!4543 setElem!32375)))))

(assert (=> d!1673671 (= (forall!14167 (exprs!4543 setElem!32375) lambda!258788) e!3227137)))

(declare-fun b!5179448 () Bool)

(declare-fun e!3227138 () Bool)

(assert (=> b!5179448 (= e!3227137 e!3227138)))

(declare-fun res!2200662 () Bool)

(assert (=> b!5179448 (=> (not res!2200662) (not e!3227138))))

(assert (=> b!5179448 (= res!2200662 (dynLambda!23885 lambda!258788 (h!66618 (exprs!4543 setElem!32375))))))

(declare-fun b!5179449 () Bool)

(assert (=> b!5179449 (= e!3227138 (forall!14167 (t!373447 (exprs!4543 setElem!32375)) lambda!258788))))

(assert (= (and d!1673671 (not res!2200661)) b!5179448))

(assert (= (and b!5179448 res!2200662) b!5179449))

(declare-fun b_lambda!201043 () Bool)

(assert (=> (not b_lambda!201043) (not b!5179448)))

(declare-fun m!6237580 () Bool)

(assert (=> b!5179448 m!6237580))

(declare-fun m!6237582 () Bool)

(assert (=> b!5179449 m!6237582))

(assert (=> d!1673439 d!1673671))

(declare-fun bm!363979 () Bool)

(declare-fun call!363987 () List!60293)

(assert (=> bm!363979 (= call!363987 (tail!10176 call!363965))))

(declare-fun b!5179450 () Bool)

(declare-fun e!3227143 () tuple2!63868)

(assert (=> b!5179450 (= e!3227143 (tuple2!63869 Nil!60169 input!5817))))

(declare-fun d!1673673 () Bool)

(declare-fun e!3227142 () Bool)

(assert (=> d!1673673 e!3227142))

(declare-fun res!2200663 () Bool)

(assert (=> d!1673673 (=> (not res!2200663) (not e!3227142))))

(declare-fun lt!2134684 () tuple2!63868)

(assert (=> d!1673673 (= res!2200663 (= (++!13175 (_1!35237 lt!2134684) (_2!35237 lt!2134684)) input!5817))))

(declare-fun e!3227145 () tuple2!63868)

(assert (=> d!1673673 (= lt!2134684 e!3227145)))

(declare-fun c!892426 () Bool)

(assert (=> d!1673673 (= c!892426 (lostCauseZipper!1346 call!363964))))

(declare-fun lt!2134686 () Unit!152092)

(declare-fun Unit!152112 () Unit!152092)

(assert (=> d!1673673 (= lt!2134686 Unit!152112)))

(assert (=> d!1673673 (= (getSuffix!3440 input!5817 lt!2134551) call!363965)))

(declare-fun lt!2134701 () Unit!152092)

(declare-fun lt!2134699 () Unit!152092)

(assert (=> d!1673673 (= lt!2134701 lt!2134699)))

(declare-fun lt!2134694 () List!60293)

(assert (=> d!1673673 (= call!363965 lt!2134694)))

(assert (=> d!1673673 (= lt!2134699 (lemmaSamePrefixThenSameSuffix!2713 lt!2134551 call!363965 lt!2134551 lt!2134694 input!5817))))

(assert (=> d!1673673 (= lt!2134694 (getSuffix!3440 input!5817 lt!2134551))))

(declare-fun lt!2134677 () Unit!152092)

(declare-fun lt!2134678 () Unit!152092)

(assert (=> d!1673673 (= lt!2134677 lt!2134678)))

(assert (=> d!1673673 (isPrefix!5792 lt!2134551 (++!13175 lt!2134551 call!363965))))

(assert (=> d!1673673 (= lt!2134678 (lemmaConcatTwoListThenFirstIsPrefix!3607 lt!2134551 call!363965))))

(assert (=> d!1673673 (= (++!13175 lt!2134551 call!363965) input!5817)))

(assert (=> d!1673673 (= (findLongestMatchInnerZipper!315 call!363964 lt!2134551 (+ lt!2134266 1 1) call!363965 input!5817 lt!2134261) lt!2134684)))

(declare-fun bm!363980 () Bool)

(declare-fun call!363986 () (InoxSet Context!8086))

(declare-fun call!363985 () C!29588)

(assert (=> bm!363980 (= call!363986 (derivationStepZipper!1005 call!363964 call!363985))))

(declare-fun b!5179451 () Bool)

(declare-fun e!3227146 () tuple2!63868)

(declare-fun lt!2134689 () tuple2!63868)

(assert (=> b!5179451 (= e!3227146 lt!2134689)))

(declare-fun b!5179452 () Bool)

(assert (=> b!5179452 (= e!3227143 (tuple2!63869 lt!2134551 Nil!60169))))

(declare-fun b!5179453 () Bool)

(declare-fun e!3227141 () Unit!152092)

(declare-fun Unit!152113 () Unit!152092)

(assert (=> b!5179453 (= e!3227141 Unit!152113)))

(declare-fun lt!2134695 () Unit!152092)

(declare-fun call!363989 () Unit!152092)

(assert (=> b!5179453 (= lt!2134695 call!363989)))

(declare-fun call!363991 () Bool)

(assert (=> b!5179453 call!363991))

(declare-fun lt!2134690 () Unit!152092)

(assert (=> b!5179453 (= lt!2134690 lt!2134695)))

(declare-fun lt!2134682 () Unit!152092)

(declare-fun call!363984 () Unit!152092)

(assert (=> b!5179453 (= lt!2134682 call!363984)))

(assert (=> b!5179453 (= input!5817 lt!2134551)))

(declare-fun lt!2134700 () Unit!152092)

(assert (=> b!5179453 (= lt!2134700 lt!2134682)))

(assert (=> b!5179453 false))

(declare-fun bm!363981 () Bool)

(declare-fun call!363988 () Bool)

(assert (=> bm!363981 (= call!363988 (nullableZipper!1197 call!363964))))

(declare-fun bm!363982 () Bool)

(declare-fun lt!2134693 () List!60293)

(declare-fun call!363990 () tuple2!63868)

(assert (=> bm!363982 (= call!363990 (findLongestMatchInnerZipper!315 call!363986 lt!2134693 (+ lt!2134266 1 1 1) call!363987 input!5817 lt!2134261))))

(declare-fun b!5179454 () Bool)

(declare-fun e!3227144 () tuple2!63868)

(assert (=> b!5179454 (= e!3227145 e!3227144)))

(declare-fun c!892424 () Bool)

(assert (=> b!5179454 (= c!892424 (= (+ lt!2134266 1 1) lt!2134261))))

(declare-fun bm!363983 () Bool)

(assert (=> bm!363983 (= call!363991 (isPrefix!5792 input!5817 input!5817))))

(declare-fun b!5179455 () Bool)

(assert (=> b!5179455 (= e!3227145 (tuple2!63869 Nil!60169 input!5817))))

(declare-fun b!5179456 () Bool)

(declare-fun c!892425 () Bool)

(assert (=> b!5179456 (= c!892425 call!363988)))

(declare-fun lt!2134685 () Unit!152092)

(declare-fun lt!2134680 () Unit!152092)

(assert (=> b!5179456 (= lt!2134685 lt!2134680)))

(assert (=> b!5179456 (= input!5817 lt!2134551)))

(assert (=> b!5179456 (= lt!2134680 call!363984)))

(declare-fun lt!2134692 () Unit!152092)

(declare-fun lt!2134696 () Unit!152092)

(assert (=> b!5179456 (= lt!2134692 lt!2134696)))

(assert (=> b!5179456 call!363991))

(assert (=> b!5179456 (= lt!2134696 call!363989)))

(assert (=> b!5179456 (= e!3227144 e!3227143)))

(declare-fun b!5179457 () Bool)

(assert (=> b!5179457 (= e!3227146 (tuple2!63869 lt!2134551 call!363965))))

(declare-fun bm!363984 () Bool)

(assert (=> bm!363984 (= call!363989 (lemmaIsPrefixRefl!3797 input!5817 input!5817))))

(declare-fun bm!363985 () Bool)

(assert (=> bm!363985 (= call!363985 (head!11077 call!363965))))

(declare-fun b!5179458 () Bool)

(declare-fun e!3227139 () Bool)

(assert (=> b!5179458 (= e!3227139 (>= (size!39695 (_1!35237 lt!2134684)) (size!39695 lt!2134551)))))

(declare-fun b!5179459 () Bool)

(declare-fun Unit!152114 () Unit!152092)

(assert (=> b!5179459 (= e!3227141 Unit!152114)))

(declare-fun b!5179460 () Bool)

(declare-fun c!892427 () Bool)

(assert (=> b!5179460 (= c!892427 call!363988)))

(declare-fun lt!2134688 () Unit!152092)

(declare-fun lt!2134698 () Unit!152092)

(assert (=> b!5179460 (= lt!2134688 lt!2134698)))

(declare-fun lt!2134683 () C!29588)

(declare-fun lt!2134679 () List!60293)

(assert (=> b!5179460 (= (++!13175 (++!13175 lt!2134551 (Cons!60169 lt!2134683 Nil!60169)) lt!2134679) input!5817)))

(assert (=> b!5179460 (= lt!2134698 (lemmaMoveElementToOtherListKeepsConcatEq!1594 lt!2134551 lt!2134683 lt!2134679 input!5817))))

(assert (=> b!5179460 (= lt!2134679 (tail!10176 call!363965))))

(assert (=> b!5179460 (= lt!2134683 (head!11077 call!363965))))

(declare-fun lt!2134697 () Unit!152092)

(declare-fun lt!2134691 () Unit!152092)

(assert (=> b!5179460 (= lt!2134697 lt!2134691)))

(assert (=> b!5179460 (isPrefix!5792 (++!13175 lt!2134551 (Cons!60169 (head!11077 (getSuffix!3440 input!5817 lt!2134551)) Nil!60169)) input!5817)))

(assert (=> b!5179460 (= lt!2134691 (lemmaAddHeadSuffixToPrefixStillPrefix!1097 lt!2134551 input!5817))))

(assert (=> b!5179460 (= lt!2134693 (++!13175 lt!2134551 (Cons!60169 (head!11077 call!363965) Nil!60169)))))

(declare-fun lt!2134687 () Unit!152092)

(assert (=> b!5179460 (= lt!2134687 e!3227141)))

(declare-fun c!892422 () Bool)

(assert (=> b!5179460 (= c!892422 (= (size!39695 lt!2134551) (size!39695 input!5817)))))

(declare-fun lt!2134676 () Unit!152092)

(declare-fun lt!2134681 () Unit!152092)

(assert (=> b!5179460 (= lt!2134676 lt!2134681)))

(assert (=> b!5179460 (<= (size!39695 lt!2134551) (size!39695 input!5817))))

(assert (=> b!5179460 (= lt!2134681 (lemmaIsPrefixThenSmallerEqSize!953 lt!2134551 input!5817))))

(declare-fun e!3227140 () tuple2!63868)

(assert (=> b!5179460 (= e!3227144 e!3227140)))

(declare-fun bm!363986 () Bool)

(assert (=> bm!363986 (= call!363984 (lemmaIsPrefixSameLengthThenSameList!1437 input!5817 lt!2134551 input!5817))))

(declare-fun b!5179461 () Bool)

(assert (=> b!5179461 (= e!3227140 e!3227146)))

(assert (=> b!5179461 (= lt!2134689 call!363990)))

(declare-fun c!892423 () Bool)

(assert (=> b!5179461 (= c!892423 (isEmpty!32215 (_1!35237 lt!2134689)))))

(declare-fun b!5179462 () Bool)

(assert (=> b!5179462 (= e!3227142 e!3227139)))

(declare-fun res!2200664 () Bool)

(assert (=> b!5179462 (=> res!2200664 e!3227139)))

(assert (=> b!5179462 (= res!2200664 (isEmpty!32215 (_1!35237 lt!2134684)))))

(declare-fun b!5179463 () Bool)

(assert (=> b!5179463 (= e!3227140 call!363990)))

(assert (= (and d!1673673 c!892426) b!5179455))

(assert (= (and d!1673673 (not c!892426)) b!5179454))

(assert (= (and b!5179454 c!892424) b!5179456))

(assert (= (and b!5179454 (not c!892424)) b!5179460))

(assert (= (and b!5179456 c!892425) b!5179452))

(assert (= (and b!5179456 (not c!892425)) b!5179450))

(assert (= (and b!5179460 c!892422) b!5179453))

(assert (= (and b!5179460 (not c!892422)) b!5179459))

(assert (= (and b!5179460 c!892427) b!5179461))

(assert (= (and b!5179460 (not c!892427)) b!5179463))

(assert (= (and b!5179461 c!892423) b!5179457))

(assert (= (and b!5179461 (not c!892423)) b!5179451))

(assert (= (or b!5179461 b!5179463) bm!363979))

(assert (= (or b!5179461 b!5179463) bm!363985))

(assert (= (or b!5179461 b!5179463) bm!363980))

(assert (= (or b!5179461 b!5179463) bm!363982))

(assert (= (or b!5179456 b!5179453) bm!363984))

(assert (= (or b!5179456 b!5179460) bm!363981))

(assert (= (or b!5179456 b!5179453) bm!363983))

(assert (= (or b!5179456 b!5179453) bm!363986))

(assert (= (and d!1673673 res!2200663) b!5179462))

(assert (= (and b!5179462 (not res!2200664)) b!5179458))

(declare-fun m!6237584 () Bool)

(assert (=> b!5179461 m!6237584))

(declare-fun m!6237586 () Bool)

(assert (=> bm!363985 m!6237586))

(declare-fun m!6237588 () Bool)

(assert (=> b!5179458 m!6237588))

(declare-fun m!6237590 () Bool)

(assert (=> b!5179458 m!6237590))

(declare-fun m!6237592 () Bool)

(assert (=> bm!363979 m!6237592))

(declare-fun m!6237594 () Bool)

(assert (=> bm!363982 m!6237594))

(assert (=> bm!363984 m!6236630))

(declare-fun m!6237596 () Bool)

(assert (=> bm!363986 m!6237596))

(declare-fun m!6237598 () Bool)

(assert (=> bm!363980 m!6237598))

(declare-fun m!6237600 () Bool)

(assert (=> b!5179462 m!6237600))

(declare-fun m!6237602 () Bool)

(assert (=> bm!363981 m!6237602))

(assert (=> bm!363983 m!6236632))

(declare-fun m!6237604 () Bool)

(assert (=> b!5179460 m!6237604))

(declare-fun m!6237606 () Bool)

(assert (=> b!5179460 m!6237606))

(declare-fun m!6237608 () Bool)

(assert (=> b!5179460 m!6237608))

(declare-fun m!6237610 () Bool)

(assert (=> b!5179460 m!6237610))

(declare-fun m!6237612 () Bool)

(assert (=> b!5179460 m!6237612))

(declare-fun m!6237614 () Bool)

(assert (=> b!5179460 m!6237614))

(declare-fun m!6237616 () Bool)

(assert (=> b!5179460 m!6237616))

(assert (=> b!5179460 m!6237592))

(assert (=> b!5179460 m!6237604))

(declare-fun m!6237618 () Bool)

(assert (=> b!5179460 m!6237618))

(declare-fun m!6237620 () Bool)

(assert (=> b!5179460 m!6237620))

(assert (=> b!5179460 m!6237590))

(assert (=> b!5179460 m!6236610))

(assert (=> b!5179460 m!6237616))

(declare-fun m!6237622 () Bool)

(assert (=> b!5179460 m!6237622))

(assert (=> b!5179460 m!6237618))

(assert (=> b!5179460 m!6237586))

(declare-fun m!6237624 () Bool)

(assert (=> d!1673673 m!6237624))

(declare-fun m!6237626 () Bool)

(assert (=> d!1673673 m!6237626))

(declare-fun m!6237628 () Bool)

(assert (=> d!1673673 m!6237628))

(assert (=> d!1673673 m!6237626))

(assert (=> d!1673673 m!6237604))

(declare-fun m!6237630 () Bool)

(assert (=> d!1673673 m!6237630))

(declare-fun m!6237632 () Bool)

(assert (=> d!1673673 m!6237632))

(declare-fun m!6237634 () Bool)

(assert (=> d!1673673 m!6237634))

(assert (=> bm!363960 d!1673673))

(declare-fun d!1673675 () Bool)

(declare-fun c!892428 () Bool)

(assert (=> d!1673675 (= c!892428 ((_ is Nil!60169) lt!2134493))))

(declare-fun e!3227147 () (InoxSet C!29588))

(assert (=> d!1673675 (= (content!10667 lt!2134493) e!3227147)))

(declare-fun b!5179464 () Bool)

(assert (=> b!5179464 (= e!3227147 ((as const (Array C!29588 Bool)) false))))

(declare-fun b!5179465 () Bool)

(assert (=> b!5179465 (= e!3227147 ((_ map or) (store ((as const (Array C!29588 Bool)) false) (h!66617 lt!2134493) true) (content!10667 (t!373446 lt!2134493))))))

(assert (= (and d!1673675 c!892428) b!5179464))

(assert (= (and d!1673675 (not c!892428)) b!5179465))

(declare-fun m!6237636 () Bool)

(assert (=> b!5179465 m!6237636))

(declare-fun m!6237638 () Bool)

(assert (=> b!5179465 m!6237638))

(assert (=> d!1673381 d!1673675))

(declare-fun d!1673677 () Bool)

(declare-fun c!892429 () Bool)

(assert (=> d!1673677 (= c!892429 ((_ is Nil!60169) (++!13175 testedP!294 (Cons!60169 lt!2134344 Nil!60169))))))

(declare-fun e!3227148 () (InoxSet C!29588))

(assert (=> d!1673677 (= (content!10667 (++!13175 testedP!294 (Cons!60169 lt!2134344 Nil!60169))) e!3227148)))

(declare-fun b!5179466 () Bool)

(assert (=> b!5179466 (= e!3227148 ((as const (Array C!29588 Bool)) false))))

(declare-fun b!5179467 () Bool)

(assert (=> b!5179467 (= e!3227148 ((_ map or) (store ((as const (Array C!29588 Bool)) false) (h!66617 (++!13175 testedP!294 (Cons!60169 lt!2134344 Nil!60169))) true) (content!10667 (t!373446 (++!13175 testedP!294 (Cons!60169 lt!2134344 Nil!60169))))))))

(assert (= (and d!1673677 c!892429) b!5179466))

(assert (= (and d!1673677 (not c!892429)) b!5179467))

(declare-fun m!6237640 () Bool)

(assert (=> b!5179467 m!6237640))

(assert (=> b!5179467 m!6237548))

(assert (=> d!1673381 d!1673677))

(declare-fun d!1673679 () Bool)

(declare-fun c!892430 () Bool)

(assert (=> d!1673679 (= c!892430 ((_ is Nil!60169) lt!2134340))))

(declare-fun e!3227149 () (InoxSet C!29588))

(assert (=> d!1673679 (= (content!10667 lt!2134340) e!3227149)))

(declare-fun b!5179468 () Bool)

(assert (=> b!5179468 (= e!3227149 ((as const (Array C!29588 Bool)) false))))

(declare-fun b!5179469 () Bool)

(assert (=> b!5179469 (= e!3227149 ((_ map or) (store ((as const (Array C!29588 Bool)) false) (h!66617 lt!2134340) true) (content!10667 (t!373446 lt!2134340))))))

(assert (= (and d!1673679 c!892430) b!5179468))

(assert (= (and d!1673679 (not c!892430)) b!5179469))

(declare-fun m!6237642 () Bool)

(assert (=> b!5179469 m!6237642))

(declare-fun m!6237644 () Bool)

(assert (=> b!5179469 m!6237644))

(assert (=> d!1673381 d!1673679))

(declare-fun d!1673681 () Bool)

(declare-fun c!892431 () Bool)

(assert (=> d!1673681 (= c!892431 ((_ is Cons!60169) (t!373446 (++!13175 testedP!294 (Cons!60169 lt!2134264 Nil!60169)))))))

(declare-fun e!3227150 () (InoxSet Context!8086))

(assert (=> d!1673681 (= (derivationZipper!282 (derivationStepZipper!1005 baseZ!62 (h!66617 (++!13175 testedP!294 (Cons!60169 lt!2134264 Nil!60169)))) (t!373446 (++!13175 testedP!294 (Cons!60169 lt!2134264 Nil!60169)))) e!3227150)))

(declare-fun b!5179470 () Bool)

(assert (=> b!5179470 (= e!3227150 (derivationZipper!282 (derivationStepZipper!1005 (derivationStepZipper!1005 baseZ!62 (h!66617 (++!13175 testedP!294 (Cons!60169 lt!2134264 Nil!60169)))) (h!66617 (t!373446 (++!13175 testedP!294 (Cons!60169 lt!2134264 Nil!60169))))) (t!373446 (t!373446 (++!13175 testedP!294 (Cons!60169 lt!2134264 Nil!60169))))))))

(declare-fun b!5179471 () Bool)

(assert (=> b!5179471 (= e!3227150 (derivationStepZipper!1005 baseZ!62 (h!66617 (++!13175 testedP!294 (Cons!60169 lt!2134264 Nil!60169)))))))

(assert (= (and d!1673681 c!892431) b!5179470))

(assert (= (and d!1673681 (not c!892431)) b!5179471))

(assert (=> b!5179470 m!6237114))

(declare-fun m!6237646 () Bool)

(assert (=> b!5179470 m!6237646))

(assert (=> b!5179470 m!6237646))

(declare-fun m!6237648 () Bool)

(assert (=> b!5179470 m!6237648))

(assert (=> b!5179204 d!1673681))

(declare-fun bs!1206486 () Bool)

(declare-fun d!1673683 () Bool)

(assert (= bs!1206486 (and d!1673683 d!1673437)))

(declare-fun lambda!258817 () Int)

(assert (=> bs!1206486 (= (= (h!66617 (++!13175 testedP!294 (Cons!60169 lt!2134264 Nil!60169))) (h!66617 lt!2134268)) (= lambda!258817 lambda!258787))))

(declare-fun bs!1206487 () Bool)

(assert (= bs!1206487 (and d!1673683 d!1673599)))

(assert (=> bs!1206487 (= (= (h!66617 (++!13175 testedP!294 (Cons!60169 lt!2134264 Nil!60169))) (h!66617 (t!373446 lt!2134268))) (= lambda!258817 lambda!258810))))

(declare-fun bs!1206488 () Bool)

(assert (= bs!1206488 (and d!1673683 d!1673441)))

(assert (=> bs!1206488 (= (= (h!66617 (++!13175 testedP!294 (Cons!60169 lt!2134264 Nil!60169))) call!363925) (= lambda!258817 lambda!258789))))

(declare-fun bs!1206489 () Bool)

(assert (= bs!1206489 (and d!1673683 d!1673409)))

(assert (=> bs!1206489 (= (= (h!66617 (++!13175 testedP!294 (Cons!60169 lt!2134264 Nil!60169))) (h!66617 testedP!294)) (= lambda!258817 lambda!258771))))

(declare-fun bs!1206490 () Bool)

(assert (= bs!1206490 (and d!1673683 d!1673305)))

(assert (=> bs!1206490 (= (= (h!66617 (++!13175 testedP!294 (Cons!60169 lt!2134264 Nil!60169))) lt!2134264) (= lambda!258817 lambda!258762))))

(assert (=> d!1673683 true))

(assert (=> d!1673683 (= (derivationStepZipper!1005 baseZ!62 (h!66617 (++!13175 testedP!294 (Cons!60169 lt!2134264 Nil!60169)))) (flatMap!462 baseZ!62 lambda!258817))))

(declare-fun bs!1206491 () Bool)

(assert (= bs!1206491 d!1673683))

(declare-fun m!6237650 () Bool)

(assert (=> bs!1206491 m!6237650))

(assert (=> b!5179204 d!1673683))

(declare-fun b!5179472 () Bool)

(declare-fun e!3227151 () List!60293)

(assert (=> b!5179472 (= e!3227151 (Cons!60169 lt!2134264 Nil!60169))))

(declare-fun b!5179473 () Bool)

(assert (=> b!5179473 (= e!3227151 (Cons!60169 (h!66617 (t!373446 (t!373446 testedP!294))) (++!13175 (t!373446 (t!373446 (t!373446 testedP!294))) (Cons!60169 lt!2134264 Nil!60169))))))

(declare-fun lt!2134702 () List!60293)

(declare-fun b!5179475 () Bool)

(declare-fun e!3227152 () Bool)

(assert (=> b!5179475 (= e!3227152 (or (not (= (Cons!60169 lt!2134264 Nil!60169) Nil!60169)) (= lt!2134702 (t!373446 (t!373446 testedP!294)))))))

(declare-fun b!5179474 () Bool)

(declare-fun res!2200666 () Bool)

(assert (=> b!5179474 (=> (not res!2200666) (not e!3227152))))

(assert (=> b!5179474 (= res!2200666 (= (size!39695 lt!2134702) (+ (size!39695 (t!373446 (t!373446 testedP!294))) (size!39695 (Cons!60169 lt!2134264 Nil!60169)))))))

(declare-fun d!1673685 () Bool)

(assert (=> d!1673685 e!3227152))

(declare-fun res!2200665 () Bool)

(assert (=> d!1673685 (=> (not res!2200665) (not e!3227152))))

(assert (=> d!1673685 (= res!2200665 (= (content!10667 lt!2134702) ((_ map or) (content!10667 (t!373446 (t!373446 testedP!294))) (content!10667 (Cons!60169 lt!2134264 Nil!60169)))))))

(assert (=> d!1673685 (= lt!2134702 e!3227151)))

(declare-fun c!892432 () Bool)

(assert (=> d!1673685 (= c!892432 ((_ is Nil!60169) (t!373446 (t!373446 testedP!294))))))

(assert (=> d!1673685 (= (++!13175 (t!373446 (t!373446 testedP!294)) (Cons!60169 lt!2134264 Nil!60169)) lt!2134702)))

(assert (= (and d!1673685 c!892432) b!5179472))

(assert (= (and d!1673685 (not c!892432)) b!5179473))

(assert (= (and d!1673685 res!2200665) b!5179474))

(assert (= (and b!5179474 res!2200666) b!5179475))

(declare-fun m!6237652 () Bool)

(assert (=> b!5179473 m!6237652))

(declare-fun m!6237654 () Bool)

(assert (=> b!5179474 m!6237654))

(assert (=> b!5179474 m!6236926))

(assert (=> b!5179474 m!6236850))

(declare-fun m!6237656 () Bool)

(assert (=> d!1673685 m!6237656))

(declare-fun m!6237658 () Bool)

(assert (=> d!1673685 m!6237658))

(assert (=> d!1673685 m!6236856))

(assert (=> b!5179209 d!1673685))

(declare-fun d!1673687 () Bool)

(declare-fun c!892433 () Bool)

(assert (=> d!1673687 (= c!892433 ((_ is Nil!60169) lt!2134568))))

(declare-fun e!3227153 () (InoxSet C!29588))

(assert (=> d!1673687 (= (content!10667 lt!2134568) e!3227153)))

(declare-fun b!5179476 () Bool)

(assert (=> b!5179476 (= e!3227153 ((as const (Array C!29588 Bool)) false))))

(declare-fun b!5179477 () Bool)

(assert (=> b!5179477 (= e!3227153 ((_ map or) (store ((as const (Array C!29588 Bool)) false) (h!66617 lt!2134568) true) (content!10667 (t!373446 lt!2134568))))))

(assert (= (and d!1673687 c!892433) b!5179476))

(assert (= (and d!1673687 (not c!892433)) b!5179477))

(declare-fun m!6237660 () Bool)

(assert (=> b!5179477 m!6237660))

(declare-fun m!6237662 () Bool)

(assert (=> b!5179477 m!6237662))

(assert (=> d!1673471 d!1673687))

(declare-fun d!1673689 () Bool)

(declare-fun c!892434 () Bool)

(assert (=> d!1673689 (= c!892434 ((_ is Nil!60169) (t!373446 testedP!294)))))

(declare-fun e!3227154 () (InoxSet C!29588))

(assert (=> d!1673689 (= (content!10667 (t!373446 testedP!294)) e!3227154)))

(declare-fun b!5179478 () Bool)

(assert (=> b!5179478 (= e!3227154 ((as const (Array C!29588 Bool)) false))))

(declare-fun b!5179479 () Bool)

(assert (=> b!5179479 (= e!3227154 ((_ map or) (store ((as const (Array C!29588 Bool)) false) (h!66617 (t!373446 testedP!294)) true) (content!10667 (t!373446 (t!373446 testedP!294)))))))

(assert (= (and d!1673689 c!892434) b!5179478))

(assert (= (and d!1673689 (not c!892434)) b!5179479))

(declare-fun m!6237664 () Bool)

(assert (=> b!5179479 m!6237664))

(assert (=> b!5179479 m!6237658))

(assert (=> d!1673471 d!1673689))

(assert (=> d!1673471 d!1673417))

(declare-fun d!1673691 () Bool)

(declare-fun lt!2134703 () Int)

(assert (=> d!1673691 (>= lt!2134703 0)))

(declare-fun e!3227155 () Int)

(assert (=> d!1673691 (= lt!2134703 e!3227155)))

(declare-fun c!892435 () Bool)

(assert (=> d!1673691 (= c!892435 ((_ is Nil!60169) lt!2134499))))

(assert (=> d!1673691 (= (size!39695 lt!2134499) lt!2134703)))

(declare-fun b!5179480 () Bool)

(assert (=> b!5179480 (= e!3227155 0)))

(declare-fun b!5179481 () Bool)

(assert (=> b!5179481 (= e!3227155 (+ 1 (size!39695 (t!373446 lt!2134499))))))

(assert (= (and d!1673691 c!892435) b!5179480))

(assert (= (and d!1673691 (not c!892435)) b!5179481))

(declare-fun m!6237666 () Bool)

(assert (=> b!5179481 m!6237666))

(assert (=> b!5179136 d!1673691))

(assert (=> b!5179136 d!1673289))

(declare-fun d!1673693 () Bool)

(declare-fun lt!2134704 () Int)

(assert (=> d!1673693 (>= lt!2134704 0)))

(declare-fun e!3227156 () Int)

(assert (=> d!1673693 (= lt!2134704 e!3227156)))

(declare-fun c!892436 () Bool)

(assert (=> d!1673693 (= c!892436 ((_ is Nil!60169) lt!2134282))))

(assert (=> d!1673693 (= (size!39695 lt!2134282) lt!2134704)))

(declare-fun b!5179482 () Bool)

(assert (=> b!5179482 (= e!3227156 0)))

(declare-fun b!5179483 () Bool)

(assert (=> b!5179483 (= e!3227156 (+ 1 (size!39695 (t!373446 lt!2134282))))))

(assert (= (and d!1673693 c!892436) b!5179482))

(assert (= (and d!1673693 (not c!892436)) b!5179483))

(declare-fun m!6237668 () Bool)

(assert (=> b!5179483 m!6237668))

(assert (=> b!5179136 d!1673693))

(declare-fun d!1673695 () Bool)

(assert (=> d!1673695 (= (isEmpty!32216 (getLanguageWitness!1020 z!4581)) (not ((_ is Some!14844) (getLanguageWitness!1020 z!4581))))))

(assert (=> d!1673423 d!1673695))

(declare-fun bs!1206492 () Bool)

(declare-fun d!1673697 () Bool)

(assert (= bs!1206492 (and d!1673697 b!5179168)))

(declare-fun lambda!258824 () Int)

(assert (=> bs!1206492 (= lambda!258824 lambda!258785)))

(declare-fun bs!1206493 () Bool)

(assert (= bs!1206493 (and d!1673697 b!5179169)))

(assert (=> bs!1206493 (= lambda!258824 lambda!258786)))

(declare-fun bs!1206494 () Bool)

(assert (= bs!1206494 (and d!1673697 d!1673423)))

(assert (=> bs!1206494 (not (= lambda!258824 lambda!258784))))

(declare-fun bs!1206495 () Bool)

(assert (= bs!1206495 (and d!1673697 d!1673359)))

(assert (=> bs!1206495 (not (= lambda!258824 lambda!258768))))

(declare-fun bs!1206496 () Bool)

(assert (= bs!1206496 (and d!1673697 d!1673659)))

(assert (=> bs!1206496 (not (= lambda!258824 lambda!258816))))

(declare-fun bs!1206497 () Bool)

(assert (= bs!1206497 (and d!1673697 d!1673607)))

(assert (=> bs!1206497 (not (= lambda!258824 lambda!258813))))

(declare-fun lt!2134707 () Option!14845)

(declare-fun isDefined!11549 (Option!14845) Bool)

(assert (=> d!1673697 (= (isDefined!11549 lt!2134707) (exists!1944 z!4581 lambda!258824))))

(declare-fun e!3227159 () Option!14845)

(assert (=> d!1673697 (= lt!2134707 e!3227159)))

(declare-fun c!892445 () Bool)

(assert (=> d!1673697 (= c!892445 (exists!1944 z!4581 lambda!258824))))

(assert (=> d!1673697 (= (getLanguageWitness!1020 z!4581) lt!2134707)))

(declare-fun b!5179488 () Bool)

(declare-fun getLanguageWitness!1022 (Context!8086) Option!14845)

(declare-fun getWitness!858 ((InoxSet Context!8086) Int) Context!8086)

(assert (=> b!5179488 (= e!3227159 (getLanguageWitness!1022 (getWitness!858 z!4581 lambda!258824)))))

(declare-fun b!5179489 () Bool)

(assert (=> b!5179489 (= e!3227159 None!14844)))

(assert (= (and d!1673697 c!892445) b!5179488))

(assert (= (and d!1673697 (not c!892445)) b!5179489))

(declare-fun m!6237670 () Bool)

(assert (=> d!1673697 m!6237670))

(declare-fun m!6237672 () Bool)

(assert (=> d!1673697 m!6237672))

(assert (=> d!1673697 m!6237672))

(declare-fun m!6237674 () Bool)

(assert (=> b!5179488 m!6237674))

(assert (=> b!5179488 m!6237674))

(declare-fun m!6237676 () Bool)

(assert (=> b!5179488 m!6237676))

(assert (=> d!1673423 d!1673697))

(declare-fun d!1673699 () Bool)

(declare-fun lt!2134710 () Bool)

(assert (=> d!1673699 (= lt!2134710 (forall!14170 (toList!8460 z!4581) lambda!258784))))

(declare-fun choose!38482 ((InoxSet Context!8086) Int) Bool)

(assert (=> d!1673699 (= lt!2134710 (choose!38482 z!4581 lambda!258784))))

(assert (=> d!1673699 (= (forall!14168 z!4581 lambda!258784) lt!2134710)))

(declare-fun bs!1206498 () Bool)

(assert (= bs!1206498 d!1673699))

(assert (=> bs!1206498 m!6237008))

(assert (=> bs!1206498 m!6237008))

(declare-fun m!6237678 () Bool)

(assert (=> bs!1206498 m!6237678))

(declare-fun m!6237680 () Bool)

(assert (=> bs!1206498 m!6237680))

(assert (=> d!1673423 d!1673699))

(declare-fun d!1673701 () Bool)

(declare-fun lt!2134711 () Int)

(assert (=> d!1673701 (>= lt!2134711 0)))

(declare-fun e!3227160 () Int)

(assert (=> d!1673701 (= lt!2134711 e!3227160)))

(declare-fun c!892446 () Bool)

(assert (=> d!1673701 (= c!892446 ((_ is Nil!60169) lt!2134494))))

(assert (=> d!1673701 (= (size!39695 lt!2134494) lt!2134711)))

(declare-fun b!5179490 () Bool)

(assert (=> b!5179490 (= e!3227160 0)))

(declare-fun b!5179491 () Bool)

(assert (=> b!5179491 (= e!3227160 (+ 1 (size!39695 (t!373446 lt!2134494))))))

(assert (= (and d!1673701 c!892446) b!5179490))

(assert (= (and d!1673701 (not c!892446)) b!5179491))

(declare-fun m!6237682 () Bool)

(assert (=> b!5179491 m!6237682))

(assert (=> b!5179120 d!1673701))

(assert (=> b!5179120 d!1673289))

(declare-fun d!1673703 () Bool)

(declare-fun lt!2134712 () Int)

(assert (=> d!1673703 (>= lt!2134712 0)))

(declare-fun e!3227161 () Int)

(assert (=> d!1673703 (= lt!2134712 e!3227161)))

(declare-fun c!892447 () Bool)

(assert (=> d!1673703 (= c!892447 ((_ is Nil!60169) (Cons!60169 lt!2134344 Nil!60169)))))

(assert (=> d!1673703 (= (size!39695 (Cons!60169 lt!2134344 Nil!60169)) lt!2134712)))

(declare-fun b!5179492 () Bool)

(assert (=> b!5179492 (= e!3227161 0)))

(declare-fun b!5179493 () Bool)

(assert (=> b!5179493 (= e!3227161 (+ 1 (size!39695 (t!373446 (Cons!60169 lt!2134344 Nil!60169)))))))

(assert (= (and d!1673703 c!892447) b!5179492))

(assert (= (and d!1673703 (not c!892447)) b!5179493))

(declare-fun m!6237684 () Bool)

(assert (=> b!5179493 m!6237684))

(assert (=> b!5179120 d!1673703))

(declare-fun bs!1206499 () Bool)

(declare-fun d!1673705 () Bool)

(assert (= bs!1206499 (and d!1673705 d!1673345)))

(declare-fun lambda!258825 () Int)

(assert (=> bs!1206499 (= lambda!258825 lambda!258765)))

(declare-fun bs!1206500 () Bool)

(assert (= bs!1206500 (and d!1673705 d!1673363)))

(assert (=> bs!1206500 (= lambda!258825 lambda!258769)))

(declare-fun bs!1206501 () Bool)

(assert (= bs!1206501 (and d!1673705 d!1673367)))

(assert (=> bs!1206501 (= lambda!258825 lambda!258770)))

(declare-fun bs!1206502 () Bool)

(assert (= bs!1206502 (and d!1673705 d!1673439)))

(assert (=> bs!1206502 (= lambda!258825 lambda!258788)))

(assert (=> d!1673705 (= (inv!79894 setElem!32378) (forall!14167 (exprs!4543 setElem!32378) lambda!258825))))

(declare-fun bs!1206503 () Bool)

(assert (= bs!1206503 d!1673705))

(declare-fun m!6237686 () Bool)

(assert (=> bs!1206503 m!6237686))

(assert (=> setNonEmpty!32378 d!1673705))

(assert (=> d!1673369 d!1673349))

(declare-fun d!1673707 () Bool)

(assert (=> d!1673707 (= (isEmpty!32215 (_1!35237 lt!2134542)) ((_ is Nil!60169) (_1!35237 lt!2134542)))))

(assert (=> b!5179188 d!1673707))

(declare-fun b!5179494 () Bool)

(declare-fun e!3227162 () List!60293)

(assert (=> b!5179494 (= e!3227162 (Cons!60169 (head!11077 lt!2134258) Nil!60169))))

(declare-fun b!5179495 () Bool)

(assert (=> b!5179495 (= e!3227162 (Cons!60169 (h!66617 (t!373446 testedP!294)) (++!13175 (t!373446 (t!373446 testedP!294)) (Cons!60169 (head!11077 lt!2134258) Nil!60169))))))

(declare-fun e!3227163 () Bool)

(declare-fun b!5179497 () Bool)

(declare-fun lt!2134713 () List!60293)

(assert (=> b!5179497 (= e!3227163 (or (not (= (Cons!60169 (head!11077 lt!2134258) Nil!60169) Nil!60169)) (= lt!2134713 (t!373446 testedP!294))))))

(declare-fun b!5179496 () Bool)

(declare-fun res!2200668 () Bool)

(assert (=> b!5179496 (=> (not res!2200668) (not e!3227163))))

(assert (=> b!5179496 (= res!2200668 (= (size!39695 lt!2134713) (+ (size!39695 (t!373446 testedP!294)) (size!39695 (Cons!60169 (head!11077 lt!2134258) Nil!60169)))))))

(declare-fun d!1673709 () Bool)

(assert (=> d!1673709 e!3227163))

(declare-fun res!2200667 () Bool)

(assert (=> d!1673709 (=> (not res!2200667) (not e!3227163))))

(assert (=> d!1673709 (= res!2200667 (= (content!10667 lt!2134713) ((_ map or) (content!10667 (t!373446 testedP!294)) (content!10667 (Cons!60169 (head!11077 lt!2134258) Nil!60169)))))))

(assert (=> d!1673709 (= lt!2134713 e!3227162)))

(declare-fun c!892448 () Bool)

(assert (=> d!1673709 (= c!892448 ((_ is Nil!60169) (t!373446 testedP!294)))))

(assert (=> d!1673709 (= (++!13175 (t!373446 testedP!294) (Cons!60169 (head!11077 lt!2134258) Nil!60169)) lt!2134713)))

(assert (= (and d!1673709 c!892448) b!5179494))

(assert (= (and d!1673709 (not c!892448)) b!5179495))

(assert (= (and d!1673709 res!2200667) b!5179496))

(assert (= (and b!5179496 res!2200668) b!5179497))

(declare-fun m!6237688 () Bool)

(assert (=> b!5179495 m!6237688))

(declare-fun m!6237690 () Bool)

(assert (=> b!5179496 m!6237690))

(assert (=> b!5179496 m!6236670))

(assert (=> b!5179496 m!6236884))

(declare-fun m!6237692 () Bool)

(assert (=> d!1673709 m!6237692))

(assert (=> d!1673709 m!6236974))

(assert (=> d!1673709 m!6236888))

(assert (=> b!5179107 d!1673709))

(declare-fun d!1673711 () Bool)

(assert (=> d!1673711 (= (head!11077 (tail!10176 lt!2134268)) (h!66617 (tail!10176 lt!2134268)))))

(assert (=> b!5179197 d!1673711))

(assert (=> b!5179197 d!1673601))

(assert (=> d!1673463 d!1673461))

(assert (=> d!1673463 d!1673355))

(assert (=> d!1673463 d!1673305))

(declare-fun b!5179516 () Bool)

(declare-fun e!3227179 () Bool)

(declare-fun e!3227183 () Bool)

(assert (=> b!5179516 (= e!3227179 e!3227183)))

(declare-fun c!892453 () Bool)

(assert (=> b!5179516 (= c!892453 ((_ is Union!14659) (h!66618 (exprs!4543 setElem!32367))))))

(declare-fun bm!363993 () Bool)

(declare-fun call!363999 () Bool)

(declare-fun call!363998 () Bool)

(assert (=> bm!363993 (= call!363999 call!363998)))

(declare-fun b!5179517 () Bool)

(declare-fun e!3227180 () Bool)

(assert (=> b!5179517 (= e!3227180 e!3227179)))

(declare-fun c!892454 () Bool)

(assert (=> b!5179517 (= c!892454 ((_ is Star!14659) (h!66618 (exprs!4543 setElem!32367))))))

(declare-fun b!5179518 () Bool)

(declare-fun e!3227182 () Bool)

(assert (=> b!5179518 (= e!3227182 call!363999)))

(declare-fun b!5179519 () Bool)

(declare-fun e!3227181 () Bool)

(assert (=> b!5179519 (= e!3227181 call!363999)))

(declare-fun b!5179520 () Bool)

(declare-fun e!3227184 () Bool)

(assert (=> b!5179520 (= e!3227179 e!3227184)))

(declare-fun res!2200681 () Bool)

(declare-fun nullable!4896 (Regex!14659) Bool)

(assert (=> b!5179520 (= res!2200681 (not (nullable!4896 (reg!14988 (h!66618 (exprs!4543 setElem!32367))))))))

(assert (=> b!5179520 (=> (not res!2200681) (not e!3227184))))

(declare-fun d!1673713 () Bool)

(declare-fun res!2200683 () Bool)

(assert (=> d!1673713 (=> res!2200683 e!3227180)))

(assert (=> d!1673713 (= res!2200683 ((_ is ElementMatch!14659) (h!66618 (exprs!4543 setElem!32367))))))

(assert (=> d!1673713 (= (validRegex!6409 (h!66618 (exprs!4543 setElem!32367))) e!3227180)))

(declare-fun b!5179521 () Bool)

(declare-fun res!2200679 () Bool)

(assert (=> b!5179521 (=> (not res!2200679) (not e!3227181))))

(declare-fun call!364000 () Bool)

(assert (=> b!5179521 (= res!2200679 call!364000)))

(assert (=> b!5179521 (= e!3227183 e!3227181)))

(declare-fun b!5179522 () Bool)

(declare-fun e!3227178 () Bool)

(assert (=> b!5179522 (= e!3227178 e!3227182)))

(declare-fun res!2200680 () Bool)

(assert (=> b!5179522 (=> (not res!2200680) (not e!3227182))))

(assert (=> b!5179522 (= res!2200680 call!364000)))

(declare-fun b!5179523 () Bool)

(declare-fun res!2200682 () Bool)

(assert (=> b!5179523 (=> res!2200682 e!3227178)))

(assert (=> b!5179523 (= res!2200682 (not ((_ is Concat!23504) (h!66618 (exprs!4543 setElem!32367)))))))

(assert (=> b!5179523 (= e!3227183 e!3227178)))

(declare-fun bm!363994 () Bool)

(assert (=> bm!363994 (= call!363998 (validRegex!6409 (ite c!892454 (reg!14988 (h!66618 (exprs!4543 setElem!32367))) (ite c!892453 (regTwo!29831 (h!66618 (exprs!4543 setElem!32367))) (regTwo!29830 (h!66618 (exprs!4543 setElem!32367)))))))))

(declare-fun b!5179524 () Bool)

(assert (=> b!5179524 (= e!3227184 call!363998)))

(declare-fun bm!363995 () Bool)

(assert (=> bm!363995 (= call!364000 (validRegex!6409 (ite c!892453 (regOne!29831 (h!66618 (exprs!4543 setElem!32367))) (regOne!29830 (h!66618 (exprs!4543 setElem!32367))))))))

(assert (= (and d!1673713 (not res!2200683)) b!5179517))

(assert (= (and b!5179517 c!892454) b!5179520))

(assert (= (and b!5179517 (not c!892454)) b!5179516))

(assert (= (and b!5179520 res!2200681) b!5179524))

(assert (= (and b!5179516 c!892453) b!5179521))

(assert (= (and b!5179516 (not c!892453)) b!5179523))

(assert (= (and b!5179521 res!2200679) b!5179519))

(assert (= (and b!5179523 (not res!2200682)) b!5179522))

(assert (= (and b!5179522 res!2200680) b!5179518))

(assert (= (or b!5179519 b!5179518) bm!363993))

(assert (= (or b!5179521 b!5179522) bm!363995))

(assert (= (or b!5179524 bm!363993) bm!363994))

(declare-fun m!6237694 () Bool)

(assert (=> b!5179520 m!6237694))

(declare-fun m!6237696 () Bool)

(assert (=> bm!363994 m!6237696))

(declare-fun m!6237698 () Bool)

(assert (=> bm!363995 m!6237698))

(assert (=> bs!1206432 d!1673713))

(declare-fun d!1673715 () Bool)

(assert (=> d!1673715 (= input!5817 lt!2134354)))

(declare-fun lt!2134714 () Unit!152092)

(assert (=> d!1673715 (= lt!2134714 (choose!38469 input!5817 lt!2134354 input!5817))))

(assert (=> d!1673715 (isPrefix!5792 input!5817 input!5817)))

(assert (=> d!1673715 (= (lemmaIsPrefixSameLengthThenSameList!1437 input!5817 lt!2134354 input!5817) lt!2134714)))

(declare-fun bs!1206504 () Bool)

(assert (= bs!1206504 d!1673715))

(declare-fun m!6237700 () Bool)

(assert (=> bs!1206504 m!6237700))

(assert (=> bs!1206504 m!6236632))

(assert (=> bm!363964 d!1673715))

(declare-fun b!5179528 () Bool)

(declare-fun e!3227185 () Bool)

(assert (=> b!5179528 (= e!3227185 (>= (size!39695 (tail!10176 input!5817)) (size!39695 (tail!10176 (++!13175 testedP!294 (Cons!60169 (head!11077 (getSuffix!3440 input!5817 testedP!294)) Nil!60169))))))))

(declare-fun b!5179526 () Bool)

(declare-fun res!2200686 () Bool)

(declare-fun e!3227186 () Bool)

(assert (=> b!5179526 (=> (not res!2200686) (not e!3227186))))

(assert (=> b!5179526 (= res!2200686 (= (head!11077 (tail!10176 (++!13175 testedP!294 (Cons!60169 (head!11077 (getSuffix!3440 input!5817 testedP!294)) Nil!60169)))) (head!11077 (tail!10176 input!5817))))))

(declare-fun b!5179525 () Bool)

(declare-fun e!3227187 () Bool)

(assert (=> b!5179525 (= e!3227187 e!3227186)))

(declare-fun res!2200685 () Bool)

(assert (=> b!5179525 (=> (not res!2200685) (not e!3227186))))

(assert (=> b!5179525 (= res!2200685 (not ((_ is Nil!60169) (tail!10176 input!5817))))))

(declare-fun d!1673717 () Bool)

(assert (=> d!1673717 e!3227185))

(declare-fun res!2200687 () Bool)

(assert (=> d!1673717 (=> res!2200687 e!3227185)))

(declare-fun lt!2134715 () Bool)

(assert (=> d!1673717 (= res!2200687 (not lt!2134715))))

(assert (=> d!1673717 (= lt!2134715 e!3227187)))

(declare-fun res!2200684 () Bool)

(assert (=> d!1673717 (=> res!2200684 e!3227187)))

(assert (=> d!1673717 (= res!2200684 ((_ is Nil!60169) (tail!10176 (++!13175 testedP!294 (Cons!60169 (head!11077 (getSuffix!3440 input!5817 testedP!294)) Nil!60169)))))))

(assert (=> d!1673717 (= (isPrefix!5792 (tail!10176 (++!13175 testedP!294 (Cons!60169 (head!11077 (getSuffix!3440 input!5817 testedP!294)) Nil!60169))) (tail!10176 input!5817)) lt!2134715)))

(declare-fun b!5179527 () Bool)

(assert (=> b!5179527 (= e!3227186 (isPrefix!5792 (tail!10176 (tail!10176 (++!13175 testedP!294 (Cons!60169 (head!11077 (getSuffix!3440 input!5817 testedP!294)) Nil!60169)))) (tail!10176 (tail!10176 input!5817))))))

(assert (= (and d!1673717 (not res!2200684)) b!5179525))

(assert (= (and b!5179525 res!2200685) b!5179526))

(assert (= (and b!5179526 res!2200686) b!5179527))

(assert (= (and d!1673717 (not res!2200687)) b!5179528))

(assert (=> b!5179528 m!6236664))

(assert (=> b!5179528 m!6236930))

(assert (=> b!5179528 m!6236894))

(declare-fun m!6237702 () Bool)

(assert (=> b!5179528 m!6237702))

(assert (=> b!5179526 m!6236894))

(declare-fun m!6237704 () Bool)

(assert (=> b!5179526 m!6237704))

(assert (=> b!5179526 m!6236664))

(assert (=> b!5179526 m!6236936))

(assert (=> b!5179527 m!6236894))

(declare-fun m!6237706 () Bool)

(assert (=> b!5179527 m!6237706))

(assert (=> b!5179527 m!6236664))

(assert (=> b!5179527 m!6236940))

(assert (=> b!5179527 m!6237706))

(assert (=> b!5179527 m!6236940))

(declare-fun m!6237708 () Bool)

(assert (=> b!5179527 m!6237708))

(assert (=> b!5179112 d!1673717))

(declare-fun d!1673719 () Bool)

(assert (=> d!1673719 (= (tail!10176 (++!13175 testedP!294 (Cons!60169 (head!11077 (getSuffix!3440 input!5817 testedP!294)) Nil!60169))) (t!373446 (++!13175 testedP!294 (Cons!60169 (head!11077 (getSuffix!3440 input!5817 testedP!294)) Nil!60169))))))

(assert (=> b!5179112 d!1673719))

(assert (=> b!5179112 d!1673399))

(assert (=> d!1673445 d!1673289))

(assert (=> d!1673445 d!1673281))

(declare-fun d!1673721 () Bool)

(declare-fun c!892455 () Bool)

(assert (=> d!1673721 (= c!892455 ((_ is Nil!60169) lt!2134500))))

(declare-fun e!3227188 () (InoxSet C!29588))

(assert (=> d!1673721 (= (content!10667 lt!2134500) e!3227188)))

(declare-fun b!5179529 () Bool)

(assert (=> b!5179529 (= e!3227188 ((as const (Array C!29588 Bool)) false))))

(declare-fun b!5179530 () Bool)

(assert (=> b!5179530 (= e!3227188 ((_ map or) (store ((as const (Array C!29588 Bool)) false) (h!66617 lt!2134500) true) (content!10667 (t!373446 lt!2134500))))))

(assert (= (and d!1673721 c!892455) b!5179529))

(assert (= (and d!1673721 (not c!892455)) b!5179530))

(declare-fun m!6237710 () Bool)

(assert (=> b!5179530 m!6237710))

(declare-fun m!6237712 () Bool)

(assert (=> b!5179530 m!6237712))

(assert (=> d!1673419 d!1673721))

(declare-fun d!1673723 () Bool)

(declare-fun c!892456 () Bool)

(assert (=> d!1673723 (= c!892456 ((_ is Nil!60169) (_1!35237 lt!2134345)))))

(declare-fun e!3227189 () (InoxSet C!29588))

(assert (=> d!1673723 (= (content!10667 (_1!35237 lt!2134345)) e!3227189)))

(declare-fun b!5179531 () Bool)

(assert (=> b!5179531 (= e!3227189 ((as const (Array C!29588 Bool)) false))))

(declare-fun b!5179532 () Bool)

(assert (=> b!5179532 (= e!3227189 ((_ map or) (store ((as const (Array C!29588 Bool)) false) (h!66617 (_1!35237 lt!2134345)) true) (content!10667 (t!373446 (_1!35237 lt!2134345)))))))

(assert (= (and d!1673723 c!892456) b!5179531))

(assert (= (and d!1673723 (not c!892456)) b!5179532))

(declare-fun m!6237714 () Bool)

(assert (=> b!5179532 m!6237714))

(assert (=> b!5179532 m!6237558))

(assert (=> d!1673419 d!1673723))

(declare-fun d!1673725 () Bool)

(declare-fun c!892457 () Bool)

(assert (=> d!1673725 (= c!892457 ((_ is Nil!60169) (_2!35237 lt!2134345)))))

(declare-fun e!3227190 () (InoxSet C!29588))

(assert (=> d!1673725 (= (content!10667 (_2!35237 lt!2134345)) e!3227190)))

(declare-fun b!5179533 () Bool)

(assert (=> b!5179533 (= e!3227190 ((as const (Array C!29588 Bool)) false))))

(declare-fun b!5179534 () Bool)

(assert (=> b!5179534 (= e!3227190 ((_ map or) (store ((as const (Array C!29588 Bool)) false) (h!66617 (_2!35237 lt!2134345)) true) (content!10667 (t!373446 (_2!35237 lt!2134345)))))))

(assert (= (and d!1673725 c!892457) b!5179533))

(assert (= (and d!1673725 (not c!892457)) b!5179534))

(declare-fun m!6237716 () Bool)

(assert (=> b!5179534 m!6237716))

(declare-fun m!6237718 () Bool)

(assert (=> b!5179534 m!6237718))

(assert (=> d!1673419 d!1673725))

(declare-fun d!1673727 () Bool)

(assert (=> d!1673727 (= (flatMap!462 baseZ!62 lambda!258787) (choose!38472 baseZ!62 lambda!258787))))

(declare-fun bs!1206505 () Bool)

(assert (= bs!1206505 d!1673727))

(declare-fun m!6237720 () Bool)

(assert (=> bs!1206505 m!6237720))

(assert (=> d!1673437 d!1673727))

(assert (=> b!5179199 d!1673655))

(declare-fun d!1673729 () Bool)

(declare-fun lt!2134716 () Int)

(assert (=> d!1673729 (>= lt!2134716 0)))

(declare-fun e!3227191 () Int)

(assert (=> d!1673729 (= lt!2134716 e!3227191)))

(declare-fun c!892458 () Bool)

(assert (=> d!1673729 (= c!892458 ((_ is Nil!60169) (tail!10176 lt!2134268)))))

(assert (=> d!1673729 (= (size!39695 (tail!10176 lt!2134268)) lt!2134716)))

(declare-fun b!5179535 () Bool)

(assert (=> b!5179535 (= e!3227191 0)))

(declare-fun b!5179536 () Bool)

(assert (=> b!5179536 (= e!3227191 (+ 1 (size!39695 (t!373446 (tail!10176 lt!2134268)))))))

(assert (= (and d!1673729 c!892458) b!5179535))

(assert (= (and d!1673729 (not c!892458)) b!5179536))

(declare-fun m!6237722 () Bool)

(assert (=> b!5179536 m!6237722))

(assert (=> b!5179199 d!1673729))

(declare-fun d!1673731 () Bool)

(declare-fun lt!2134717 () Int)

(assert (=> d!1673731 (>= lt!2134717 0)))

(declare-fun e!3227192 () Int)

(assert (=> d!1673731 (= lt!2134717 e!3227192)))

(declare-fun c!892459 () Bool)

(assert (=> d!1673731 (= c!892459 ((_ is Nil!60169) (t!373446 (_1!35237 lt!2134345))))))

(assert (=> d!1673731 (= (size!39695 (t!373446 (_1!35237 lt!2134345))) lt!2134717)))

(declare-fun b!5179537 () Bool)

(assert (=> b!5179537 (= e!3227192 0)))

(declare-fun b!5179538 () Bool)

(assert (=> b!5179538 (= e!3227192 (+ 1 (size!39695 (t!373446 (t!373446 (_1!35237 lt!2134345))))))))

(assert (= (and d!1673731 c!892459) b!5179537))

(assert (= (and d!1673731 (not c!892459)) b!5179538))

(declare-fun m!6237724 () Bool)

(assert (=> b!5179538 m!6237724))

(assert (=> b!5179129 d!1673731))

(declare-fun d!1673733 () Bool)

(assert (=> d!1673733 (= (head!11077 (tail!10176 testedP!294)) (h!66617 (tail!10176 testedP!294)))))

(assert (=> b!5179125 d!1673733))

(assert (=> b!5179125 d!1673601))

(declare-fun d!1673735 () Bool)

(declare-fun e!3227195 () Bool)

(assert (=> d!1673735 e!3227195))

(declare-fun res!2200690 () Bool)

(assert (=> d!1673735 (=> (not res!2200690) (not e!3227195))))

(declare-fun lt!2134720 () List!60295)

(declare-fun noDuplicate!1138 (List!60295) Bool)

(assert (=> d!1673735 (= res!2200690 (noDuplicate!1138 lt!2134720))))

(declare-fun choose!38483 ((InoxSet Context!8086)) List!60295)

(assert (=> d!1673735 (= lt!2134720 (choose!38483 z!4581))))

(assert (=> d!1673735 (= (toList!8460 z!4581) lt!2134720)))

(declare-fun b!5179541 () Bool)

(declare-fun content!10668 (List!60295) (InoxSet Context!8086))

(assert (=> b!5179541 (= e!3227195 (= (content!10668 lt!2134720) z!4581))))

(assert (= (and d!1673735 res!2200690) b!5179541))

(declare-fun m!6237726 () Bool)

(assert (=> d!1673735 m!6237726))

(declare-fun m!6237728 () Bool)

(assert (=> d!1673735 m!6237728))

(declare-fun m!6237730 () Bool)

(assert (=> b!5179541 m!6237730))

(assert (=> bm!363955 d!1673735))

(declare-fun b!5179545 () Bool)

(declare-fun e!3227196 () Bool)

(assert (=> b!5179545 (= e!3227196 (>= (size!39695 (tail!10176 (tail!10176 input!5817))) (size!39695 (tail!10176 (tail!10176 input!5817)))))))

(declare-fun b!5179543 () Bool)

(declare-fun res!2200693 () Bool)

(declare-fun e!3227197 () Bool)

(assert (=> b!5179543 (=> (not res!2200693) (not e!3227197))))

(assert (=> b!5179543 (= res!2200693 (= (head!11077 (tail!10176 (tail!10176 input!5817))) (head!11077 (tail!10176 (tail!10176 input!5817)))))))

(declare-fun b!5179542 () Bool)

(declare-fun e!3227198 () Bool)

(assert (=> b!5179542 (= e!3227198 e!3227197)))

(declare-fun res!2200692 () Bool)

(assert (=> b!5179542 (=> (not res!2200692) (not e!3227197))))

(assert (=> b!5179542 (= res!2200692 (not ((_ is Nil!60169) (tail!10176 (tail!10176 input!5817)))))))

(declare-fun d!1673737 () Bool)

(assert (=> d!1673737 e!3227196))

(declare-fun res!2200694 () Bool)

(assert (=> d!1673737 (=> res!2200694 e!3227196)))

(declare-fun lt!2134721 () Bool)

(assert (=> d!1673737 (= res!2200694 (not lt!2134721))))

(assert (=> d!1673737 (= lt!2134721 e!3227198)))

(declare-fun res!2200691 () Bool)

(assert (=> d!1673737 (=> res!2200691 e!3227198)))

(assert (=> d!1673737 (= res!2200691 ((_ is Nil!60169) (tail!10176 (tail!10176 input!5817))))))

(assert (=> d!1673737 (= (isPrefix!5792 (tail!10176 (tail!10176 input!5817)) (tail!10176 (tail!10176 input!5817))) lt!2134721)))

(declare-fun b!5179544 () Bool)

(assert (=> b!5179544 (= e!3227197 (isPrefix!5792 (tail!10176 (tail!10176 (tail!10176 input!5817))) (tail!10176 (tail!10176 (tail!10176 input!5817)))))))

(assert (= (and d!1673737 (not res!2200691)) b!5179542))

(assert (= (and b!5179542 res!2200692) b!5179543))

(assert (= (and b!5179543 res!2200693) b!5179544))

(assert (= (and d!1673737 (not res!2200694)) b!5179545))

(assert (=> b!5179545 m!6236940))

(assert (=> b!5179545 m!6237420))

(assert (=> b!5179545 m!6236940))

(assert (=> b!5179545 m!6237420))

(assert (=> b!5179543 m!6236940))

(assert (=> b!5179543 m!6237530))

(assert (=> b!5179543 m!6236940))

(assert (=> b!5179543 m!6237530))

(assert (=> b!5179544 m!6236940))

(assert (=> b!5179544 m!6237422))

(assert (=> b!5179544 m!6236940))

(assert (=> b!5179544 m!6237422))

(assert (=> b!5179544 m!6237422))

(assert (=> b!5179544 m!6237422))

(declare-fun m!6237732 () Bool)

(assert (=> b!5179544 m!6237732))

(assert (=> b!5179132 d!1673737))

(assert (=> b!5179132 d!1673605))

(assert (=> bm!363963 d!1673615))

(declare-fun d!1673739 () Bool)

(assert (=> d!1673739 (isPrefix!5792 lt!2134354 (++!13175 lt!2134354 call!363927))))

(declare-fun lt!2134722 () Unit!152092)

(assert (=> d!1673739 (= lt!2134722 (choose!38474 lt!2134354 call!363927))))

(assert (=> d!1673739 (= (lemmaConcatTwoListThenFirstIsPrefix!3607 lt!2134354 call!363927) lt!2134722)))

(declare-fun bs!1206506 () Bool)

(assert (= bs!1206506 d!1673739))

(assert (=> bs!1206506 m!6237072))

(assert (=> bs!1206506 m!6237072))

(assert (=> bs!1206506 m!6237074))

(declare-fun m!6237734 () Bool)

(assert (=> bs!1206506 m!6237734))

(assert (=> d!1673433 d!1673739))

(declare-fun bs!1206507 () Bool)

(declare-fun d!1673741 () Bool)

(assert (= bs!1206507 (and d!1673741 d!1673697)))

(declare-fun lambda!258826 () Int)

(assert (=> bs!1206507 (not (= lambda!258826 lambda!258824))))

(declare-fun bs!1206508 () Bool)

(assert (= bs!1206508 (and d!1673741 b!5179168)))

(assert (=> bs!1206508 (not (= lambda!258826 lambda!258785))))

(declare-fun bs!1206509 () Bool)

(assert (= bs!1206509 (and d!1673741 b!5179169)))

(assert (=> bs!1206509 (not (= lambda!258826 lambda!258786))))

(declare-fun bs!1206510 () Bool)

(assert (= bs!1206510 (and d!1673741 d!1673423)))

(assert (=> bs!1206510 (= lambda!258826 lambda!258784)))

(declare-fun bs!1206511 () Bool)

(assert (= bs!1206511 (and d!1673741 d!1673359)))

(assert (=> bs!1206511 (not (= lambda!258826 lambda!258768))))

(declare-fun bs!1206512 () Bool)

(assert (= bs!1206512 (and d!1673741 d!1673659)))

(assert (=> bs!1206512 (not (= lambda!258826 lambda!258816))))

(declare-fun bs!1206513 () Bool)

(assert (= bs!1206513 (and d!1673741 d!1673607)))

(assert (=> bs!1206513 (not (= lambda!258826 lambda!258813))))

(declare-fun bs!1206514 () Bool)

(declare-fun b!5179546 () Bool)

(assert (= bs!1206514 (and b!5179546 d!1673697)))

(declare-fun lambda!258827 () Int)

(assert (=> bs!1206514 (= lambda!258827 lambda!258824)))

(declare-fun bs!1206515 () Bool)

(assert (= bs!1206515 (and b!5179546 d!1673741)))

(assert (=> bs!1206515 (not (= lambda!258827 lambda!258826))))

(declare-fun bs!1206516 () Bool)

(assert (= bs!1206516 (and b!5179546 b!5179168)))

(assert (=> bs!1206516 (= lambda!258827 lambda!258785)))

(declare-fun bs!1206517 () Bool)

(assert (= bs!1206517 (and b!5179546 b!5179169)))

(assert (=> bs!1206517 (= lambda!258827 lambda!258786)))

(declare-fun bs!1206518 () Bool)

(assert (= bs!1206518 (and b!5179546 d!1673423)))

(assert (=> bs!1206518 (not (= lambda!258827 lambda!258784))))

(declare-fun bs!1206519 () Bool)

(assert (= bs!1206519 (and b!5179546 d!1673359)))

(assert (=> bs!1206519 (not (= lambda!258827 lambda!258768))))

(declare-fun bs!1206520 () Bool)

(assert (= bs!1206520 (and b!5179546 d!1673659)))

(assert (=> bs!1206520 (not (= lambda!258827 lambda!258816))))

(declare-fun bs!1206521 () Bool)

(assert (= bs!1206521 (and b!5179546 d!1673607)))

(assert (=> bs!1206521 (not (= lambda!258827 lambda!258813))))

(declare-fun bs!1206522 () Bool)

(declare-fun b!5179547 () Bool)

(assert (= bs!1206522 (and b!5179547 d!1673697)))

(declare-fun lambda!258828 () Int)

(assert (=> bs!1206522 (= lambda!258828 lambda!258824)))

(declare-fun bs!1206523 () Bool)

(assert (= bs!1206523 (and b!5179547 d!1673741)))

(assert (=> bs!1206523 (not (= lambda!258828 lambda!258826))))

(declare-fun bs!1206524 () Bool)

(assert (= bs!1206524 (and b!5179547 b!5179168)))

(assert (=> bs!1206524 (= lambda!258828 lambda!258785)))

(declare-fun bs!1206525 () Bool)

(assert (= bs!1206525 (and b!5179547 b!5179169)))

(assert (=> bs!1206525 (= lambda!258828 lambda!258786)))

(declare-fun bs!1206526 () Bool)

(assert (= bs!1206526 (and b!5179547 d!1673359)))

(assert (=> bs!1206526 (not (= lambda!258828 lambda!258768))))

(declare-fun bs!1206527 () Bool)

(assert (= bs!1206527 (and b!5179547 d!1673659)))

(assert (=> bs!1206527 (not (= lambda!258828 lambda!258816))))

(declare-fun bs!1206528 () Bool)

(assert (= bs!1206528 (and b!5179547 d!1673607)))

(assert (=> bs!1206528 (not (= lambda!258828 lambda!258813))))

(declare-fun bs!1206529 () Bool)

(assert (= bs!1206529 (and b!5179547 b!5179546)))

(assert (=> bs!1206529 (= lambda!258828 lambda!258827)))

(declare-fun bs!1206530 () Bool)

(assert (= bs!1206530 (and b!5179547 d!1673423)))

(assert (=> bs!1206530 (not (= lambda!258828 lambda!258784))))

(declare-fun lt!2134723 () Bool)

(assert (=> d!1673741 (= lt!2134723 (isEmpty!32216 (getLanguageWitness!1020 call!363926)))))

(assert (=> d!1673741 (= lt!2134723 (forall!14168 call!363926 lambda!258826))))

(declare-fun lt!2134726 () Unit!152092)

(declare-fun e!3227199 () Unit!152092)

(assert (=> d!1673741 (= lt!2134726 e!3227199)))

(declare-fun c!892460 () Bool)

(assert (=> d!1673741 (= c!892460 (not (forall!14168 call!363926 lambda!258826)))))

(assert (=> d!1673741 (= (lostCauseZipper!1346 call!363926) lt!2134723)))

(declare-fun Unit!152115 () Unit!152092)

(assert (=> b!5179547 (= e!3227199 Unit!152115)))

(declare-fun lt!2134724 () List!60295)

(declare-fun call!364002 () List!60295)

(assert (=> b!5179547 (= lt!2134724 call!364002)))

(declare-fun lt!2134730 () Unit!152092)

(assert (=> b!5179547 (= lt!2134730 (lemmaForallThenNotExists!447 lt!2134724 lambda!258826))))

(declare-fun call!364001 () Bool)

(assert (=> b!5179547 (not call!364001)))

(declare-fun lt!2134727 () Unit!152092)

(assert (=> b!5179547 (= lt!2134727 lt!2134730)))

(declare-fun bm!363996 () Bool)

(assert (=> bm!363996 (= call!364002 (toList!8460 call!363926))))

(declare-fun Unit!152116 () Unit!152092)

(assert (=> b!5179546 (= e!3227199 Unit!152116)))

(declare-fun lt!2134729 () List!60295)

(assert (=> b!5179546 (= lt!2134729 call!364002)))

(declare-fun lt!2134725 () Unit!152092)

(assert (=> b!5179546 (= lt!2134725 (lemmaNotForallThenExists!480 lt!2134729 lambda!258826))))

(assert (=> b!5179546 call!364001))

(declare-fun lt!2134728 () Unit!152092)

(assert (=> b!5179546 (= lt!2134728 lt!2134725)))

(declare-fun bm!363997 () Bool)

(assert (=> bm!363997 (= call!364001 (exists!1945 (ite c!892460 lt!2134729 lt!2134724) (ite c!892460 lambda!258827 lambda!258828)))))

(assert (= (and d!1673741 c!892460) b!5179546))

(assert (= (and d!1673741 (not c!892460)) b!5179547))

(assert (= (or b!5179546 b!5179547) bm!363996))

(assert (= (or b!5179546 b!5179547) bm!363997))

(declare-fun m!6237736 () Bool)

(assert (=> bm!363997 m!6237736))

(declare-fun m!6237738 () Bool)

(assert (=> b!5179546 m!6237738))

(declare-fun m!6237740 () Bool)

(assert (=> b!5179547 m!6237740))

(declare-fun m!6237742 () Bool)

(assert (=> bm!363996 m!6237742))

(declare-fun m!6237744 () Bool)

(assert (=> d!1673741 m!6237744))

(assert (=> d!1673741 m!6237744))

(declare-fun m!6237746 () Bool)

(assert (=> d!1673741 m!6237746))

(declare-fun m!6237748 () Bool)

(assert (=> d!1673741 m!6237748))

(assert (=> d!1673741 m!6237748))

(assert (=> d!1673433 d!1673741))

(assert (=> d!1673433 d!1673627))

(declare-fun d!1673743 () Bool)

(assert (=> d!1673743 (= call!363927 lt!2134552)))

(declare-fun lt!2134731 () Unit!152092)

(assert (=> d!1673743 (= lt!2134731 (choose!38475 lt!2134354 call!363927 lt!2134354 lt!2134552 input!5817))))

(assert (=> d!1673743 (isPrefix!5792 lt!2134354 input!5817)))

(assert (=> d!1673743 (= (lemmaSamePrefixThenSameSuffix!2713 lt!2134354 call!363927 lt!2134354 lt!2134552 input!5817) lt!2134731)))

(declare-fun bs!1206531 () Bool)

(assert (= bs!1206531 d!1673743))

(declare-fun m!6237750 () Bool)

(assert (=> bs!1206531 m!6237750))

(assert (=> bs!1206531 m!6237464))

(assert (=> d!1673433 d!1673743))

(declare-fun b!5179551 () Bool)

(declare-fun e!3227200 () Bool)

(assert (=> b!5179551 (= e!3227200 (>= (size!39695 (++!13175 lt!2134354 call!363927)) (size!39695 lt!2134354)))))

(declare-fun b!5179549 () Bool)

(declare-fun res!2200697 () Bool)

(declare-fun e!3227201 () Bool)

(assert (=> b!5179549 (=> (not res!2200697) (not e!3227201))))

(assert (=> b!5179549 (= res!2200697 (= (head!11077 lt!2134354) (head!11077 (++!13175 lt!2134354 call!363927))))))

(declare-fun b!5179548 () Bool)

(declare-fun e!3227202 () Bool)

(assert (=> b!5179548 (= e!3227202 e!3227201)))

(declare-fun res!2200696 () Bool)

(assert (=> b!5179548 (=> (not res!2200696) (not e!3227201))))

(assert (=> b!5179548 (= res!2200696 (not ((_ is Nil!60169) (++!13175 lt!2134354 call!363927))))))

(declare-fun d!1673745 () Bool)

(assert (=> d!1673745 e!3227200))

(declare-fun res!2200698 () Bool)

(assert (=> d!1673745 (=> res!2200698 e!3227200)))

(declare-fun lt!2134732 () Bool)

(assert (=> d!1673745 (= res!2200698 (not lt!2134732))))

(assert (=> d!1673745 (= lt!2134732 e!3227202)))

(declare-fun res!2200695 () Bool)

(assert (=> d!1673745 (=> res!2200695 e!3227202)))

(assert (=> d!1673745 (= res!2200695 ((_ is Nil!60169) lt!2134354))))

(assert (=> d!1673745 (= (isPrefix!5792 lt!2134354 (++!13175 lt!2134354 call!363927)) lt!2134732)))

(declare-fun b!5179550 () Bool)

(assert (=> b!5179550 (= e!3227201 (isPrefix!5792 (tail!10176 lt!2134354) (tail!10176 (++!13175 lt!2134354 call!363927))))))

(assert (= (and d!1673745 (not res!2200695)) b!5179548))

(assert (= (and b!5179548 res!2200696) b!5179549))

(assert (= (and b!5179549 res!2200697) b!5179550))

(assert (= (and d!1673745 (not res!2200698)) b!5179551))

(assert (=> b!5179551 m!6237072))

(declare-fun m!6237752 () Bool)

(assert (=> b!5179551 m!6237752))

(assert (=> b!5179551 m!6237036))

(declare-fun m!6237754 () Bool)

(assert (=> b!5179549 m!6237754))

(assert (=> b!5179549 m!6237072))

(declare-fun m!6237756 () Bool)

(assert (=> b!5179549 m!6237756))

(declare-fun m!6237758 () Bool)

(assert (=> b!5179550 m!6237758))

(assert (=> b!5179550 m!6237072))

(declare-fun m!6237760 () Bool)

(assert (=> b!5179550 m!6237760))

(assert (=> b!5179550 m!6237758))

(assert (=> b!5179550 m!6237760))

(declare-fun m!6237762 () Bool)

(assert (=> b!5179550 m!6237762))

(assert (=> d!1673433 d!1673745))

(declare-fun b!5179552 () Bool)

(declare-fun e!3227203 () List!60293)

(assert (=> b!5179552 (= e!3227203 call!363927)))

(declare-fun b!5179553 () Bool)

(assert (=> b!5179553 (= e!3227203 (Cons!60169 (h!66617 lt!2134354) (++!13175 (t!373446 lt!2134354) call!363927)))))

(declare-fun e!3227204 () Bool)

(declare-fun lt!2134733 () List!60293)

(declare-fun b!5179555 () Bool)

(assert (=> b!5179555 (= e!3227204 (or (not (= call!363927 Nil!60169)) (= lt!2134733 lt!2134354)))))

(declare-fun b!5179554 () Bool)

(declare-fun res!2200700 () Bool)

(assert (=> b!5179554 (=> (not res!2200700) (not e!3227204))))

(assert (=> b!5179554 (= res!2200700 (= (size!39695 lt!2134733) (+ (size!39695 lt!2134354) (size!39695 call!363927))))))

(declare-fun d!1673747 () Bool)

(assert (=> d!1673747 e!3227204))

(declare-fun res!2200699 () Bool)

(assert (=> d!1673747 (=> (not res!2200699) (not e!3227204))))

(assert (=> d!1673747 (= res!2200699 (= (content!10667 lt!2134733) ((_ map or) (content!10667 lt!2134354) (content!10667 call!363927))))))

(assert (=> d!1673747 (= lt!2134733 e!3227203)))

(declare-fun c!892461 () Bool)

(assert (=> d!1673747 (= c!892461 ((_ is Nil!60169) lt!2134354))))

(assert (=> d!1673747 (= (++!13175 lt!2134354 call!363927) lt!2134733)))

(assert (= (and d!1673747 c!892461) b!5179552))

(assert (= (and d!1673747 (not c!892461)) b!5179553))

(assert (= (and d!1673747 res!2200699) b!5179554))

(assert (= (and b!5179554 res!2200700) b!5179555))

(declare-fun m!6237764 () Bool)

(assert (=> b!5179553 m!6237764))

(declare-fun m!6237766 () Bool)

(assert (=> b!5179554 m!6237766))

(assert (=> b!5179554 m!6237036))

(declare-fun m!6237768 () Bool)

(assert (=> b!5179554 m!6237768))

(declare-fun m!6237770 () Bool)

(assert (=> d!1673747 m!6237770))

(assert (=> d!1673747 m!6237454))

(declare-fun m!6237772 () Bool)

(assert (=> d!1673747 m!6237772))

(assert (=> d!1673433 d!1673747))

(declare-fun b!5179556 () Bool)

(declare-fun e!3227205 () List!60293)

(assert (=> b!5179556 (= e!3227205 (_2!35237 lt!2134542))))

(declare-fun b!5179557 () Bool)

(assert (=> b!5179557 (= e!3227205 (Cons!60169 (h!66617 (_1!35237 lt!2134542)) (++!13175 (t!373446 (_1!35237 lt!2134542)) (_2!35237 lt!2134542))))))

(declare-fun b!5179559 () Bool)

(declare-fun e!3227206 () Bool)

(declare-fun lt!2134734 () List!60293)

(assert (=> b!5179559 (= e!3227206 (or (not (= (_2!35237 lt!2134542) Nil!60169)) (= lt!2134734 (_1!35237 lt!2134542))))))

(declare-fun b!5179558 () Bool)

(declare-fun res!2200702 () Bool)

(assert (=> b!5179558 (=> (not res!2200702) (not e!3227206))))

(assert (=> b!5179558 (= res!2200702 (= (size!39695 lt!2134734) (+ (size!39695 (_1!35237 lt!2134542)) (size!39695 (_2!35237 lt!2134542)))))))

(declare-fun d!1673749 () Bool)

(assert (=> d!1673749 e!3227206))

(declare-fun res!2200701 () Bool)

(assert (=> d!1673749 (=> (not res!2200701) (not e!3227206))))

(assert (=> d!1673749 (= res!2200701 (= (content!10667 lt!2134734) ((_ map or) (content!10667 (_1!35237 lt!2134542)) (content!10667 (_2!35237 lt!2134542)))))))

(assert (=> d!1673749 (= lt!2134734 e!3227205)))

(declare-fun c!892462 () Bool)

(assert (=> d!1673749 (= c!892462 ((_ is Nil!60169) (_1!35237 lt!2134542)))))

(assert (=> d!1673749 (= (++!13175 (_1!35237 lt!2134542) (_2!35237 lt!2134542)) lt!2134734)))

(assert (= (and d!1673749 c!892462) b!5179556))

(assert (= (and d!1673749 (not c!892462)) b!5179557))

(assert (= (and d!1673749 res!2200701) b!5179558))

(assert (= (and b!5179558 res!2200702) b!5179559))

(declare-fun m!6237774 () Bool)

(assert (=> b!5179557 m!6237774))

(declare-fun m!6237776 () Bool)

(assert (=> b!5179558 m!6237776))

(assert (=> b!5179558 m!6237034))

(declare-fun m!6237778 () Bool)

(assert (=> b!5179558 m!6237778))

(declare-fun m!6237780 () Bool)

(assert (=> d!1673749 m!6237780))

(declare-fun m!6237782 () Bool)

(assert (=> d!1673749 m!6237782))

(declare-fun m!6237784 () Bool)

(assert (=> d!1673749 m!6237784))

(assert (=> d!1673433 d!1673749))

(assert (=> b!5179171 d!1673389))

(declare-fun d!1673751 () Bool)

(assert (=> d!1673751 (= (head!11077 (++!13175 testedP!294 lt!2134258)) (h!66617 (++!13175 testedP!294 lt!2134258)))))

(assert (=> b!5179171 d!1673751))

(declare-fun bs!1206532 () Bool)

(declare-fun d!1673753 () Bool)

(assert (= bs!1206532 (and d!1673753 d!1673439)))

(declare-fun lambda!258829 () Int)

(assert (=> bs!1206532 (= lambda!258829 lambda!258788)))

(declare-fun bs!1206533 () Bool)

(assert (= bs!1206533 (and d!1673753 d!1673705)))

(assert (=> bs!1206533 (= lambda!258829 lambda!258825)))

(declare-fun bs!1206534 () Bool)

(assert (= bs!1206534 (and d!1673753 d!1673345)))

(assert (=> bs!1206534 (= lambda!258829 lambda!258765)))

(declare-fun bs!1206535 () Bool)

(assert (= bs!1206535 (and d!1673753 d!1673367)))

(assert (=> bs!1206535 (= lambda!258829 lambda!258770)))

(declare-fun bs!1206536 () Bool)

(assert (= bs!1206536 (and d!1673753 d!1673363)))

(assert (=> bs!1206536 (= lambda!258829 lambda!258769)))

(assert (=> d!1673753 (= (inv!79894 setElem!32377) (forall!14167 (exprs!4543 setElem!32377) lambda!258829))))

(declare-fun bs!1206537 () Bool)

(assert (= bs!1206537 d!1673753))

(declare-fun m!6237786 () Bool)

(assert (=> bs!1206537 m!6237786))

(assert (=> setNonEmpty!32377 d!1673753))

(declare-fun bs!1206538 () Bool)

(declare-fun d!1673755 () Bool)

(assert (= bs!1206538 (and d!1673755 d!1673697)))

(declare-fun lambda!258832 () Int)

(assert (=> bs!1206538 (not (= lambda!258832 lambda!258824))))

(declare-fun bs!1206539 () Bool)

(assert (= bs!1206539 (and d!1673755 d!1673741)))

(assert (=> bs!1206539 (not (= lambda!258832 lambda!258826))))

(declare-fun bs!1206540 () Bool)

(assert (= bs!1206540 (and d!1673755 b!5179168)))

(assert (=> bs!1206540 (not (= lambda!258832 lambda!258785))))

(declare-fun bs!1206541 () Bool)

(assert (= bs!1206541 (and d!1673755 b!5179169)))

(assert (=> bs!1206541 (not (= lambda!258832 lambda!258786))))

(declare-fun bs!1206542 () Bool)

(assert (= bs!1206542 (and d!1673755 b!5179547)))

(assert (=> bs!1206542 (not (= lambda!258832 lambda!258828))))

(declare-fun bs!1206543 () Bool)

(assert (= bs!1206543 (and d!1673755 d!1673359)))

(assert (=> bs!1206543 (not (= lambda!258832 lambda!258768))))

(declare-fun bs!1206544 () Bool)

(assert (= bs!1206544 (and d!1673755 d!1673659)))

(assert (=> bs!1206544 (= (= lambda!258784 (ite c!892344 lambda!258785 lambda!258786)) (= lambda!258832 lambda!258816))))

(declare-fun bs!1206545 () Bool)

(assert (= bs!1206545 (and d!1673755 d!1673607)))

(assert (=> bs!1206545 (= lambda!258832 lambda!258813)))

(declare-fun bs!1206546 () Bool)

(assert (= bs!1206546 (and d!1673755 b!5179546)))

(assert (=> bs!1206546 (not (= lambda!258832 lambda!258827))))

(declare-fun bs!1206547 () Bool)

(assert (= bs!1206547 (and d!1673755 d!1673423)))

(assert (=> bs!1206547 (not (= lambda!258832 lambda!258784))))

(assert (=> d!1673755 true))

(assert (=> d!1673755 (< (dynLambda!23887 order!27043 lambda!258784) (dynLambda!23887 order!27043 lambda!258832))))

(assert (=> d!1673755 (exists!1945 lt!2134524 lambda!258832)))

(declare-fun lt!2134737 () Unit!152092)

(declare-fun choose!38484 (List!60295 Int) Unit!152092)

(assert (=> d!1673755 (= lt!2134737 (choose!38484 lt!2134524 lambda!258784))))

(assert (=> d!1673755 (not (forall!14170 lt!2134524 lambda!258784))))

(assert (=> d!1673755 (= (lemmaNotForallThenExists!480 lt!2134524 lambda!258784) lt!2134737)))

(declare-fun bs!1206548 () Bool)

(assert (= bs!1206548 d!1673755))

(declare-fun m!6237788 () Bool)

(assert (=> bs!1206548 m!6237788))

(declare-fun m!6237790 () Bool)

(assert (=> bs!1206548 m!6237790))

(declare-fun m!6237792 () Bool)

(assert (=> bs!1206548 m!6237792))

(assert (=> b!5179168 d!1673755))

(assert (=> d!1673379 d!1673381))

(assert (=> d!1673379 d!1673385))

(declare-fun d!1673757 () Bool)

(assert (=> d!1673757 (= (++!13175 (++!13175 testedP!294 (Cons!60169 lt!2134344 Nil!60169)) lt!2134340) input!5817)))

(assert (=> d!1673757 true))

(declare-fun _$68!882 () Unit!152092)

(assert (=> d!1673757 (= (choose!38471 testedP!294 lt!2134344 lt!2134340 input!5817) _$68!882)))

(declare-fun bs!1206549 () Bool)

(assert (= bs!1206549 d!1673757))

(assert (=> bs!1206549 m!6236690))

(assert (=> bs!1206549 m!6236690))

(assert (=> bs!1206549 m!6236696))

(assert (=> d!1673379 d!1673757))

(declare-fun b!5179560 () Bool)

(declare-fun e!3227209 () List!60293)

(assert (=> b!5179560 (= e!3227209 (Cons!60169 lt!2134344 lt!2134340))))

(declare-fun b!5179561 () Bool)

(assert (=> b!5179561 (= e!3227209 (Cons!60169 (h!66617 testedP!294) (++!13175 (t!373446 testedP!294) (Cons!60169 lt!2134344 lt!2134340))))))

(declare-fun b!5179563 () Bool)

(declare-fun lt!2134738 () List!60293)

(declare-fun e!3227210 () Bool)

(assert (=> b!5179563 (= e!3227210 (or (not (= (Cons!60169 lt!2134344 lt!2134340) Nil!60169)) (= lt!2134738 testedP!294)))))

(declare-fun b!5179562 () Bool)

(declare-fun res!2200704 () Bool)

(assert (=> b!5179562 (=> (not res!2200704) (not e!3227210))))

(assert (=> b!5179562 (= res!2200704 (= (size!39695 lt!2134738) (+ (size!39695 testedP!294) (size!39695 (Cons!60169 lt!2134344 lt!2134340)))))))

(declare-fun d!1673759 () Bool)

(assert (=> d!1673759 e!3227210))

(declare-fun res!2200703 () Bool)

(assert (=> d!1673759 (=> (not res!2200703) (not e!3227210))))

(assert (=> d!1673759 (= res!2200703 (= (content!10667 lt!2134738) ((_ map or) (content!10667 testedP!294) (content!10667 (Cons!60169 lt!2134344 lt!2134340)))))))

(assert (=> d!1673759 (= lt!2134738 e!3227209)))

(declare-fun c!892463 () Bool)

(assert (=> d!1673759 (= c!892463 ((_ is Nil!60169) testedP!294))))

(assert (=> d!1673759 (= (++!13175 testedP!294 (Cons!60169 lt!2134344 lt!2134340)) lt!2134738)))

(assert (= (and d!1673759 c!892463) b!5179560))

(assert (= (and d!1673759 (not c!892463)) b!5179561))

(assert (= (and d!1673759 res!2200703) b!5179562))

(assert (= (and b!5179562 res!2200704) b!5179563))

(declare-fun m!6237794 () Bool)

(assert (=> b!5179561 m!6237794))

(declare-fun m!6237796 () Bool)

(assert (=> b!5179562 m!6237796))

(assert (=> b!5179562 m!6236606))

(declare-fun m!6237798 () Bool)

(assert (=> b!5179562 m!6237798))

(declare-fun m!6237800 () Bool)

(assert (=> d!1673759 m!6237800))

(assert (=> d!1673759 m!6236854))

(declare-fun m!6237802 () Bool)

(assert (=> d!1673759 m!6237802))

(assert (=> d!1673379 d!1673759))

(declare-fun d!1673761 () Bool)

(declare-fun lt!2134739 () Int)

(assert (=> d!1673761 (>= lt!2134739 0)))

(declare-fun e!3227211 () Int)

(assert (=> d!1673761 (= lt!2134739 e!3227211)))

(declare-fun c!892464 () Bool)

(assert (=> d!1673761 (= c!892464 ((_ is Nil!60169) lt!2134487))))

(assert (=> d!1673761 (= (size!39695 lt!2134487) lt!2134739)))

(declare-fun b!5179564 () Bool)

(assert (=> b!5179564 (= e!3227211 0)))

(declare-fun b!5179565 () Bool)

(assert (=> b!5179565 (= e!3227211 (+ 1 (size!39695 (t!373446 lt!2134487))))))

(assert (= (and d!1673761 c!892464) b!5179564))

(assert (= (and d!1673761 (not c!892464)) b!5179565))

(declare-fun m!6237804 () Bool)

(assert (=> b!5179565 m!6237804))

(assert (=> b!5179104 d!1673761))

(assert (=> b!5179104 d!1673289))

(declare-fun d!1673763 () Bool)

(declare-fun lt!2134740 () Int)

(assert (=> d!1673763 (>= lt!2134740 0)))

(declare-fun e!3227212 () Int)

(assert (=> d!1673763 (= lt!2134740 e!3227212)))

(declare-fun c!892465 () Bool)

(assert (=> d!1673763 (= c!892465 ((_ is Nil!60169) (Cons!60169 (head!11077 (getSuffix!3440 input!5817 testedP!294)) Nil!60169)))))

(assert (=> d!1673763 (= (size!39695 (Cons!60169 (head!11077 (getSuffix!3440 input!5817 testedP!294)) Nil!60169)) lt!2134740)))

(declare-fun b!5179566 () Bool)

(assert (=> b!5179566 (= e!3227212 0)))

(declare-fun b!5179567 () Bool)

(assert (=> b!5179567 (= e!3227212 (+ 1 (size!39695 (t!373446 (Cons!60169 (head!11077 (getSuffix!3440 input!5817 testedP!294)) Nil!60169)))))))

(assert (= (and d!1673763 c!892465) b!5179566))

(assert (= (and d!1673763 (not c!892465)) b!5179567))

(declare-fun m!6237806 () Bool)

(assert (=> b!5179567 m!6237806))

(assert (=> b!5179104 d!1673763))

(declare-fun d!1673765 () Bool)

(declare-fun lt!2134741 () Int)

(assert (=> d!1673765 (>= lt!2134741 0)))

(declare-fun e!3227213 () Int)

(assert (=> d!1673765 (= lt!2134741 e!3227213)))

(declare-fun c!892466 () Bool)

(assert (=> d!1673765 (= c!892466 ((_ is Nil!60169) (t!373446 lt!2134483)))))

(assert (=> d!1673765 (= (size!39695 (t!373446 lt!2134483)) lt!2134741)))

(declare-fun b!5179568 () Bool)

(assert (=> b!5179568 (= e!3227213 0)))

(declare-fun b!5179569 () Bool)

(assert (=> b!5179569 (= e!3227213 (+ 1 (size!39695 (t!373446 (t!373446 lt!2134483)))))))

(assert (= (and d!1673765 c!892466) b!5179568))

(assert (= (and d!1673765 (not c!892466)) b!5179569))

(declare-fun m!6237808 () Bool)

(assert (=> b!5179569 m!6237808))

(assert (=> b!5179201 d!1673765))

(assert (=> b!5179127 d!1673655))

(declare-fun d!1673767 () Bool)

(declare-fun lt!2134742 () Int)

(assert (=> d!1673767 (>= lt!2134742 0)))

(declare-fun e!3227214 () Int)

(assert (=> d!1673767 (= lt!2134742 e!3227214)))

(declare-fun c!892467 () Bool)

(assert (=> d!1673767 (= c!892467 ((_ is Nil!60169) (tail!10176 testedP!294)))))

(assert (=> d!1673767 (= (size!39695 (tail!10176 testedP!294)) lt!2134742)))

(declare-fun b!5179570 () Bool)

(assert (=> b!5179570 (= e!3227214 0)))

(declare-fun b!5179571 () Bool)

(assert (=> b!5179571 (= e!3227214 (+ 1 (size!39695 (t!373446 (tail!10176 testedP!294)))))))

(assert (= (and d!1673767 c!892467) b!5179570))

(assert (= (and d!1673767 (not c!892467)) b!5179571))

(declare-fun m!6237810 () Bool)

(assert (=> b!5179571 m!6237810))

(assert (=> b!5179127 d!1673767))

(declare-fun d!1673769 () Bool)

(declare-fun c!892468 () Bool)

(assert (=> d!1673769 (= c!892468 ((_ is Nil!60169) (t!373446 (Cons!60169 lt!2134264 Nil!60169))))))

(declare-fun e!3227215 () (InoxSet C!29588))

(assert (=> d!1673769 (= (content!10667 (t!373446 (Cons!60169 lt!2134264 Nil!60169))) e!3227215)))

(declare-fun b!5179572 () Bool)

(assert (=> b!5179572 (= e!3227215 ((as const (Array C!29588 Bool)) false))))

(declare-fun b!5179573 () Bool)

(assert (=> b!5179573 (= e!3227215 ((_ map or) (store ((as const (Array C!29588 Bool)) false) (h!66617 (t!373446 (Cons!60169 lt!2134264 Nil!60169))) true) (content!10667 (t!373446 (t!373446 (Cons!60169 lt!2134264 Nil!60169))))))))

(assert (= (and d!1673769 c!892468) b!5179572))

(assert (= (and d!1673769 (not c!892468)) b!5179573))

(declare-fun m!6237812 () Bool)

(assert (=> b!5179573 m!6237812))

(declare-fun m!6237814 () Bool)

(assert (=> b!5179573 m!6237814))

(assert (=> b!5179155 d!1673769))

(declare-fun d!1673771 () Bool)

(assert (=> d!1673771 (= (flatMap!462 z!4581 lambda!258789) (choose!38472 z!4581 lambda!258789))))

(declare-fun bs!1206550 () Bool)

(assert (= bs!1206550 d!1673771))

(declare-fun m!6237816 () Bool)

(assert (=> bs!1206550 m!6237816))

(assert (=> d!1673441 d!1673771))

(declare-fun d!1673773 () Bool)

(declare-fun lt!2134743 () Int)

(assert (=> d!1673773 (>= lt!2134743 0)))

(declare-fun e!3227216 () Int)

(assert (=> d!1673773 (= lt!2134743 e!3227216)))

(declare-fun c!892469 () Bool)

(assert (=> d!1673773 (= c!892469 ((_ is Nil!60169) lt!2134493))))

(assert (=> d!1673773 (= (size!39695 lt!2134493) lt!2134743)))

(declare-fun b!5179574 () Bool)

(assert (=> b!5179574 (= e!3227216 0)))

(declare-fun b!5179575 () Bool)

(assert (=> b!5179575 (= e!3227216 (+ 1 (size!39695 (t!373446 lt!2134493))))))

(assert (= (and d!1673773 c!892469) b!5179574))

(assert (= (and d!1673773 (not c!892469)) b!5179575))

(declare-fun m!6237818 () Bool)

(assert (=> b!5179575 m!6237818))

(assert (=> b!5179116 d!1673773))

(declare-fun d!1673775 () Bool)

(declare-fun lt!2134744 () Int)

(assert (=> d!1673775 (>= lt!2134744 0)))

(declare-fun e!3227217 () Int)

(assert (=> d!1673775 (= lt!2134744 e!3227217)))

(declare-fun c!892470 () Bool)

(assert (=> d!1673775 (= c!892470 ((_ is Nil!60169) (++!13175 testedP!294 (Cons!60169 lt!2134344 Nil!60169))))))

(assert (=> d!1673775 (= (size!39695 (++!13175 testedP!294 (Cons!60169 lt!2134344 Nil!60169))) lt!2134744)))

(declare-fun b!5179576 () Bool)

(assert (=> b!5179576 (= e!3227217 0)))

(declare-fun b!5179577 () Bool)

(assert (=> b!5179577 (= e!3227217 (+ 1 (size!39695 (t!373446 (++!13175 testedP!294 (Cons!60169 lt!2134344 Nil!60169))))))))

(assert (= (and d!1673775 c!892470) b!5179576))

(assert (= (and d!1673775 (not c!892470)) b!5179577))

(assert (=> b!5179577 m!6237544))

(assert (=> b!5179116 d!1673775))

(declare-fun d!1673777 () Bool)

(declare-fun lt!2134745 () Int)

(assert (=> d!1673777 (>= lt!2134745 0)))

(declare-fun e!3227218 () Int)

(assert (=> d!1673777 (= lt!2134745 e!3227218)))

(declare-fun c!892471 () Bool)

(assert (=> d!1673777 (= c!892471 ((_ is Nil!60169) lt!2134340))))

(assert (=> d!1673777 (= (size!39695 lt!2134340) lt!2134745)))

(declare-fun b!5179578 () Bool)

(assert (=> b!5179578 (= e!3227218 0)))

(declare-fun b!5179579 () Bool)

(assert (=> b!5179579 (= e!3227218 (+ 1 (size!39695 (t!373446 lt!2134340))))))

(assert (= (and d!1673777 c!892471) b!5179578))

(assert (= (and d!1673777 (not c!892471)) b!5179579))

(declare-fun m!6237820 () Bool)

(assert (=> b!5179579 m!6237820))

(assert (=> b!5179116 d!1673777))

(declare-fun d!1673779 () Bool)

(declare-fun lt!2134746 () Int)

(assert (=> d!1673779 (>= lt!2134746 0)))

(declare-fun e!3227219 () Int)

(assert (=> d!1673779 (= lt!2134746 e!3227219)))

(declare-fun c!892472 () Bool)

(assert (=> d!1673779 (= c!892472 ((_ is Nil!60169) (++!13175 testedP!294 lt!2134258)))))

(assert (=> d!1673779 (= (size!39695 (++!13175 testedP!294 lt!2134258)) lt!2134746)))

(declare-fun b!5179580 () Bool)

(assert (=> b!5179580 (= e!3227219 0)))

(declare-fun b!5179581 () Bool)

(assert (=> b!5179581 (= e!3227219 (+ 1 (size!39695 (t!373446 (++!13175 testedP!294 lt!2134258)))))))

(assert (= (and d!1673779 c!892472) b!5179580))

(assert (= (and d!1673779 (not c!892472)) b!5179581))

(declare-fun m!6237822 () Bool)

(assert (=> b!5179581 m!6237822))

(assert (=> b!5179173 d!1673779))

(assert (=> b!5179173 d!1673289))

(declare-fun d!1673781 () Bool)

(declare-fun lt!2134747 () Int)

(assert (=> d!1673781 (>= lt!2134747 0)))

(declare-fun e!3227220 () Int)

(assert (=> d!1673781 (= lt!2134747 e!3227220)))

(declare-fun c!892473 () Bool)

(assert (=> d!1673781 (= c!892473 ((_ is Nil!60169) (t!373446 (t!373446 input!5817))))))

(assert (=> d!1673781 (= (size!39695 (t!373446 (t!373446 input!5817))) lt!2134747)))

(declare-fun b!5179582 () Bool)

(assert (=> b!5179582 (= e!3227220 0)))

(declare-fun b!5179583 () Bool)

(assert (=> b!5179583 (= e!3227220 (+ 1 (size!39695 (t!373446 (t!373446 (t!373446 input!5817))))))))

(assert (= (and d!1673781 c!892473) b!5179582))

(assert (= (and d!1673781 (not c!892473)) b!5179583))

(declare-fun m!6237824 () Bool)

(assert (=> b!5179583 m!6237824))

(assert (=> b!5179175 d!1673781))

(declare-fun bs!1206551 () Bool)

(declare-fun d!1673783 () Bool)

(assert (= bs!1206551 (and d!1673783 d!1673697)))

(declare-fun lambda!258833 () Int)

(assert (=> bs!1206551 (not (= lambda!258833 lambda!258824))))

(declare-fun bs!1206552 () Bool)

(assert (= bs!1206552 (and d!1673783 d!1673741)))

(assert (=> bs!1206552 (not (= lambda!258833 lambda!258826))))

(declare-fun bs!1206553 () Bool)

(assert (= bs!1206553 (and d!1673783 b!5179168)))

(assert (=> bs!1206553 (not (= lambda!258833 lambda!258785))))

(declare-fun bs!1206554 () Bool)

(assert (= bs!1206554 (and d!1673783 b!5179169)))

(assert (=> bs!1206554 (not (= lambda!258833 lambda!258786))))

(declare-fun bs!1206555 () Bool)

(assert (= bs!1206555 (and d!1673783 b!5179547)))

(assert (=> bs!1206555 (not (= lambda!258833 lambda!258828))))

(declare-fun bs!1206556 () Bool)

(assert (= bs!1206556 (and d!1673783 d!1673359)))

(assert (=> bs!1206556 (not (= lambda!258833 lambda!258768))))

(declare-fun bs!1206557 () Bool)

(assert (= bs!1206557 (and d!1673783 d!1673659)))

(assert (=> bs!1206557 (= (= lambda!258768 (ite c!892344 lambda!258785 lambda!258786)) (= lambda!258833 lambda!258816))))

(declare-fun bs!1206558 () Bool)

(assert (= bs!1206558 (and d!1673783 d!1673755)))

(assert (=> bs!1206558 (= (= lambda!258768 lambda!258784) (= lambda!258833 lambda!258832))))

(declare-fun bs!1206559 () Bool)

(assert (= bs!1206559 (and d!1673783 d!1673607)))

(assert (=> bs!1206559 (= (= lambda!258768 lambda!258784) (= lambda!258833 lambda!258813))))

(declare-fun bs!1206560 () Bool)

(assert (= bs!1206560 (and d!1673783 b!5179546)))

(assert (=> bs!1206560 (not (= lambda!258833 lambda!258827))))

(declare-fun bs!1206561 () Bool)

(assert (= bs!1206561 (and d!1673783 d!1673423)))

(assert (=> bs!1206561 (not (= lambda!258833 lambda!258784))))

(assert (=> d!1673783 true))

(assert (=> d!1673783 (< (dynLambda!23887 order!27043 lambda!258768) (dynLambda!23887 order!27043 lambda!258833))))

(assert (=> d!1673783 (= (exists!1945 (toList!8460 z!4581) lambda!258768) (not (forall!14170 (toList!8460 z!4581) lambda!258833)))))

(declare-fun bs!1206562 () Bool)

(assert (= bs!1206562 d!1673783))

(assert (=> bs!1206562 m!6237008))

(declare-fun m!6237826 () Bool)

(assert (=> bs!1206562 m!6237826))

(assert (=> d!1673443 d!1673783))

(assert (=> d!1673443 d!1673735))

(declare-fun d!1673785 () Bool)

(declare-fun res!2200707 () Bool)

(assert (=> d!1673785 (= res!2200707 (exists!1945 (toList!8460 z!4581) lambda!258768))))

(assert (=> d!1673785 true))

(assert (=> d!1673785 (= (choose!38478 z!4581 lambda!258768) res!2200707)))

(declare-fun bs!1206563 () Bool)

(assert (= bs!1206563 d!1673785))

(assert (=> bs!1206563 m!6237008))

(assert (=> bs!1206563 m!6237008))

(assert (=> bs!1206563 m!6237092))

(assert (=> d!1673443 d!1673785))

(declare-fun d!1673787 () Bool)

(assert (=> d!1673787 true))

(declare-fun setRes!32383 () Bool)

(assert (=> d!1673787 setRes!32383))

(declare-fun condSetEmpty!32383 () Bool)

(declare-fun res!2200710 () (InoxSet Context!8086))

(assert (=> d!1673787 (= condSetEmpty!32383 (= res!2200710 ((as const (Array Context!8086 Bool)) false)))))

(assert (=> d!1673787 (= (choose!38472 z!4581 lambda!258762) res!2200710)))

(declare-fun setIsEmpty!32383 () Bool)

(assert (=> setIsEmpty!32383 setRes!32383))

(declare-fun e!3227223 () Bool)

(declare-fun setNonEmpty!32383 () Bool)

(declare-fun setElem!32383 () Context!8086)

(declare-fun tp!1452645 () Bool)

(assert (=> setNonEmpty!32383 (= setRes!32383 (and tp!1452645 (inv!79894 setElem!32383) e!3227223))))

(declare-fun setRest!32383 () (InoxSet Context!8086))

(assert (=> setNonEmpty!32383 (= res!2200710 ((_ map or) (store ((as const (Array Context!8086 Bool)) false) setElem!32383 true) setRest!32383))))

(declare-fun b!5179586 () Bool)

(declare-fun tp!1452644 () Bool)

(assert (=> b!5179586 (= e!3227223 tp!1452644)))

(assert (= (and d!1673787 condSetEmpty!32383) setIsEmpty!32383))

(assert (= (and d!1673787 (not condSetEmpty!32383)) setNonEmpty!32383))

(assert (= setNonEmpty!32383 b!5179586))

(declare-fun m!6237828 () Bool)

(assert (=> setNonEmpty!32383 m!6237828))

(assert (=> d!1673391 d!1673787))

(declare-fun b!5179587 () Bool)

(declare-fun e!3227224 () List!60293)

(assert (=> b!5179587 (= e!3227224 lt!2134258)))

(declare-fun b!5179588 () Bool)

(assert (=> b!5179588 (= e!3227224 (Cons!60169 (h!66617 (t!373446 testedP!294)) (++!13175 (t!373446 (t!373446 testedP!294)) lt!2134258)))))

(declare-fun e!3227225 () Bool)

(declare-fun lt!2134748 () List!60293)

(declare-fun b!5179590 () Bool)

(assert (=> b!5179590 (= e!3227225 (or (not (= lt!2134258 Nil!60169)) (= lt!2134748 (t!373446 testedP!294))))))

(declare-fun b!5179589 () Bool)

(declare-fun res!2200712 () Bool)

(assert (=> b!5179589 (=> (not res!2200712) (not e!3227225))))

(assert (=> b!5179589 (= res!2200712 (= (size!39695 lt!2134748) (+ (size!39695 (t!373446 testedP!294)) (size!39695 lt!2134258))))))

(declare-fun d!1673789 () Bool)

(assert (=> d!1673789 e!3227225))

(declare-fun res!2200711 () Bool)

(assert (=> d!1673789 (=> (not res!2200711) (not e!3227225))))

(assert (=> d!1673789 (= res!2200711 (= (content!10667 lt!2134748) ((_ map or) (content!10667 (t!373446 testedP!294)) (content!10667 lt!2134258))))))

(assert (=> d!1673789 (= lt!2134748 e!3227224)))

(declare-fun c!892474 () Bool)

(assert (=> d!1673789 (= c!892474 ((_ is Nil!60169) (t!373446 testedP!294)))))

(assert (=> d!1673789 (= (++!13175 (t!373446 testedP!294) lt!2134258) lt!2134748)))

(assert (= (and d!1673789 c!892474) b!5179587))

(assert (= (and d!1673789 (not c!892474)) b!5179588))

(assert (= (and d!1673789 res!2200711) b!5179589))

(assert (= (and b!5179589 res!2200712) b!5179590))

(declare-fun m!6237830 () Bool)

(assert (=> b!5179588 m!6237830))

(declare-fun m!6237832 () Bool)

(assert (=> b!5179589 m!6237832))

(assert (=> b!5179589 m!6236670))

(assert (=> b!5179589 m!6236996))

(declare-fun m!6237834 () Bool)

(assert (=> d!1673789 m!6237834))

(assert (=> d!1673789 m!6236974))

(assert (=> d!1673789 m!6237000))

(assert (=> b!5179161 d!1673789))

(declare-fun d!1673791 () Bool)

(declare-fun res!2200713 () Bool)

(declare-fun e!3227226 () Bool)

(assert (=> d!1673791 (=> res!2200713 e!3227226)))

(assert (=> d!1673791 (= res!2200713 ((_ is Nil!60170) (exprs!4543 setElem!32376)))))

(assert (=> d!1673791 (= (forall!14167 (exprs!4543 setElem!32376) lambda!258770) e!3227226)))

(declare-fun b!5179591 () Bool)

(declare-fun e!3227227 () Bool)

(assert (=> b!5179591 (= e!3227226 e!3227227)))

(declare-fun res!2200714 () Bool)

(assert (=> b!5179591 (=> (not res!2200714) (not e!3227227))))

(assert (=> b!5179591 (= res!2200714 (dynLambda!23885 lambda!258770 (h!66618 (exprs!4543 setElem!32376))))))

(declare-fun b!5179592 () Bool)

(assert (=> b!5179592 (= e!3227227 (forall!14167 (t!373447 (exprs!4543 setElem!32376)) lambda!258770))))

(assert (= (and d!1673791 (not res!2200713)) b!5179591))

(assert (= (and b!5179591 res!2200714) b!5179592))

(declare-fun b_lambda!201045 () Bool)

(assert (=> (not b_lambda!201045) (not b!5179591)))

(declare-fun m!6237836 () Bool)

(assert (=> b!5179591 m!6237836))

(declare-fun m!6237838 () Bool)

(assert (=> b!5179592 m!6237838))

(assert (=> d!1673367 d!1673791))

(declare-fun d!1673793 () Bool)

(declare-fun lt!2134749 () Int)

(assert (=> d!1673793 (>= lt!2134749 0)))

(declare-fun e!3227228 () Int)

(assert (=> d!1673793 (= lt!2134749 e!3227228)))

(declare-fun c!892475 () Bool)

(assert (=> d!1673793 (= c!892475 ((_ is Nil!60169) lt!2134568))))

(assert (=> d!1673793 (= (size!39695 lt!2134568) lt!2134749)))

(declare-fun b!5179593 () Bool)

(assert (=> b!5179593 (= e!3227228 0)))

(declare-fun b!5179594 () Bool)

(assert (=> b!5179594 (= e!3227228 (+ 1 (size!39695 (t!373446 lt!2134568))))))

(assert (= (and d!1673793 c!892475) b!5179593))

(assert (= (and d!1673793 (not c!892475)) b!5179594))

(declare-fun m!6237840 () Bool)

(assert (=> b!5179594 m!6237840))

(assert (=> b!5179210 d!1673793))

(assert (=> b!5179210 d!1673387))

(assert (=> b!5179210 d!1673459))

(declare-fun d!1673795 () Bool)

(declare-fun c!892476 () Bool)

(assert (=> d!1673795 (= c!892476 ((_ is Nil!60169) lt!2134488))))

(declare-fun e!3227229 () (InoxSet C!29588))

(assert (=> d!1673795 (= (content!10667 lt!2134488) e!3227229)))

(declare-fun b!5179595 () Bool)

(assert (=> b!5179595 (= e!3227229 ((as const (Array C!29588 Bool)) false))))

(declare-fun b!5179596 () Bool)

(assert (=> b!5179596 (= e!3227229 ((_ map or) (store ((as const (Array C!29588 Bool)) false) (h!66617 lt!2134488) true) (content!10667 (t!373446 lt!2134488))))))

(assert (= (and d!1673795 c!892476) b!5179595))

(assert (= (and d!1673795 (not c!892476)) b!5179596))

(declare-fun m!6237842 () Bool)

(assert (=> b!5179596 m!6237842))

(declare-fun m!6237844 () Bool)

(assert (=> b!5179596 m!6237844))

(assert (=> d!1673375 d!1673795))

(assert (=> d!1673375 d!1673415))

(declare-fun d!1673797 () Bool)

(declare-fun c!892477 () Bool)

(assert (=> d!1673797 (= c!892477 ((_ is Nil!60169) (Cons!60169 (head!11077 lt!2134258) Nil!60169)))))

(declare-fun e!3227230 () (InoxSet C!29588))

(assert (=> d!1673797 (= (content!10667 (Cons!60169 (head!11077 lt!2134258) Nil!60169)) e!3227230)))

(declare-fun b!5179597 () Bool)

(assert (=> b!5179597 (= e!3227230 ((as const (Array C!29588 Bool)) false))))

(declare-fun b!5179598 () Bool)

(assert (=> b!5179598 (= e!3227230 ((_ map or) (store ((as const (Array C!29588 Bool)) false) (h!66617 (Cons!60169 (head!11077 lt!2134258) Nil!60169)) true) (content!10667 (t!373446 (Cons!60169 (head!11077 lt!2134258) Nil!60169)))))))

(assert (= (and d!1673797 c!892477) b!5179597))

(assert (= (and d!1673797 (not c!892477)) b!5179598))

(declare-fun m!6237846 () Bool)

(assert (=> b!5179598 m!6237846))

(declare-fun m!6237848 () Bool)

(assert (=> b!5179598 m!6237848))

(assert (=> d!1673375 d!1673797))

(declare-fun d!1673799 () Bool)

(declare-fun lt!2134750 () Int)

(assert (=> d!1673799 (>= lt!2134750 0)))

(declare-fun e!3227231 () Int)

(assert (=> d!1673799 (= lt!2134750 e!3227231)))

(declare-fun c!892478 () Bool)

(assert (=> d!1673799 (= c!892478 ((_ is Nil!60169) lt!2134500))))

(assert (=> d!1673799 (= (size!39695 lt!2134500) lt!2134750)))

(declare-fun b!5179599 () Bool)

(assert (=> b!5179599 (= e!3227231 0)))

(declare-fun b!5179600 () Bool)

(assert (=> b!5179600 (= e!3227231 (+ 1 (size!39695 (t!373446 lt!2134500))))))

(assert (= (and d!1673799 c!892478) b!5179599))

(assert (= (and d!1673799 (not c!892478)) b!5179600))

(declare-fun m!6237850 () Bool)

(assert (=> b!5179600 m!6237850))

(assert (=> b!5179158 d!1673799))

(assert (=> b!5179158 d!1673401))

(declare-fun d!1673801 () Bool)

(declare-fun lt!2134751 () Int)

(assert (=> d!1673801 (>= lt!2134751 0)))

(declare-fun e!3227232 () Int)

(assert (=> d!1673801 (= lt!2134751 e!3227232)))

(declare-fun c!892479 () Bool)

(assert (=> d!1673801 (= c!892479 ((_ is Nil!60169) (_2!35237 lt!2134345)))))

(assert (=> d!1673801 (= (size!39695 (_2!35237 lt!2134345)) lt!2134751)))

(declare-fun b!5179601 () Bool)

(assert (=> b!5179601 (= e!3227232 0)))

(declare-fun b!5179602 () Bool)

(assert (=> b!5179602 (= e!3227232 (+ 1 (size!39695 (t!373446 (_2!35237 lt!2134345)))))))

(assert (= (and d!1673801 c!892479) b!5179601))

(assert (= (and d!1673801 (not c!892479)) b!5179602))

(declare-fun m!6237852 () Bool)

(assert (=> b!5179602 m!6237852))

(assert (=> b!5179158 d!1673801))

(declare-fun d!1673803 () Bool)

(assert (=> d!1673803 (= lt!2134258 lt!2134355)))

(assert (=> d!1673803 true))

(declare-fun _$63!1308 () Unit!152092)

(assert (=> d!1673803 (= (choose!38475 testedP!294 lt!2134258 testedP!294 lt!2134355 input!5817) _$63!1308)))

(assert (=> d!1673427 d!1673803))

(assert (=> d!1673427 d!1673297))

(declare-fun d!1673805 () Bool)

(declare-fun c!892480 () Bool)

(assert (=> d!1673805 (= c!892480 ((_ is Nil!60169) lt!2134501))))

(declare-fun e!3227233 () (InoxSet C!29588))

(assert (=> d!1673805 (= (content!10667 lt!2134501) e!3227233)))

(declare-fun b!5179603 () Bool)

(assert (=> b!5179603 (= e!3227233 ((as const (Array C!29588 Bool)) false))))

(declare-fun b!5179604 () Bool)

(assert (=> b!5179604 (= e!3227233 ((_ map or) (store ((as const (Array C!29588 Bool)) false) (h!66617 lt!2134501) true) (content!10667 (t!373446 lt!2134501))))))

(assert (= (and d!1673805 c!892480) b!5179603))

(assert (= (and d!1673805 (not c!892480)) b!5179604))

(declare-fun m!6237854 () Bool)

(assert (=> b!5179604 m!6237854))

(declare-fun m!6237856 () Bool)

(assert (=> b!5179604 m!6237856))

(assert (=> d!1673421 d!1673805))

(assert (=> d!1673421 d!1673415))

(declare-fun d!1673807 () Bool)

(declare-fun c!892481 () Bool)

(assert (=> d!1673807 (= c!892481 ((_ is Nil!60169) lt!2134258))))

(declare-fun e!3227234 () (InoxSet C!29588))

(assert (=> d!1673807 (= (content!10667 lt!2134258) e!3227234)))

(declare-fun b!5179605 () Bool)

(assert (=> b!5179605 (= e!3227234 ((as const (Array C!29588 Bool)) false))))

(declare-fun b!5179606 () Bool)

(assert (=> b!5179606 (= e!3227234 ((_ map or) (store ((as const (Array C!29588 Bool)) false) (h!66617 lt!2134258) true) (content!10667 (t!373446 lt!2134258))))))

(assert (= (and d!1673807 c!892481) b!5179605))

(assert (= (and d!1673807 (not c!892481)) b!5179606))

(declare-fun m!6237858 () Bool)

(assert (=> b!5179606 m!6237858))

(declare-fun m!6237860 () Bool)

(assert (=> b!5179606 m!6237860))

(assert (=> d!1673421 d!1673807))

(declare-fun b!5179607 () Bool)

(declare-fun e!3227235 () List!60293)

(assert (=> b!5179607 (= e!3227235 (Cons!60169 lt!2134344 Nil!60169))))

(declare-fun b!5179608 () Bool)

(assert (=> b!5179608 (= e!3227235 (Cons!60169 (h!66617 (t!373446 testedP!294)) (++!13175 (t!373446 (t!373446 testedP!294)) (Cons!60169 lt!2134344 Nil!60169))))))

(declare-fun lt!2134752 () List!60293)

(declare-fun e!3227236 () Bool)

(declare-fun b!5179610 () Bool)

(assert (=> b!5179610 (= e!3227236 (or (not (= (Cons!60169 lt!2134344 Nil!60169) Nil!60169)) (= lt!2134752 (t!373446 testedP!294))))))

(declare-fun b!5179609 () Bool)

(declare-fun res!2200716 () Bool)

(assert (=> b!5179609 (=> (not res!2200716) (not e!3227236))))

(assert (=> b!5179609 (= res!2200716 (= (size!39695 lt!2134752) (+ (size!39695 (t!373446 testedP!294)) (size!39695 (Cons!60169 lt!2134344 Nil!60169)))))))

(declare-fun d!1673809 () Bool)

(assert (=> d!1673809 e!3227236))

(declare-fun res!2200715 () Bool)

(assert (=> d!1673809 (=> (not res!2200715) (not e!3227236))))

(assert (=> d!1673809 (= res!2200715 (= (content!10667 lt!2134752) ((_ map or) (content!10667 (t!373446 testedP!294)) (content!10667 (Cons!60169 lt!2134344 Nil!60169)))))))

(assert (=> d!1673809 (= lt!2134752 e!3227235)))

(declare-fun c!892482 () Bool)

(assert (=> d!1673809 (= c!892482 ((_ is Nil!60169) (t!373446 testedP!294)))))

(assert (=> d!1673809 (= (++!13175 (t!373446 testedP!294) (Cons!60169 lt!2134344 Nil!60169)) lt!2134752)))

(assert (= (and d!1673809 c!892482) b!5179607))

(assert (= (and d!1673809 (not c!892482)) b!5179608))

(assert (= (and d!1673809 res!2200715) b!5179609))

(assert (= (and b!5179609 res!2200716) b!5179610))

(declare-fun m!6237862 () Bool)

(assert (=> b!5179608 m!6237862))

(declare-fun m!6237864 () Bool)

(assert (=> b!5179609 m!6237864))

(assert (=> b!5179609 m!6236670))

(assert (=> b!5179609 m!6236920))

(declare-fun m!6237866 () Bool)

(assert (=> d!1673809 m!6237866))

(assert (=> d!1673809 m!6236974))

(assert (=> d!1673809 m!6236924))

(assert (=> b!5179119 d!1673809))

(assert (=> b!5179113 d!1673281))

(declare-fun d!1673811 () Bool)

(declare-fun lt!2134753 () Int)

(assert (=> d!1673811 (>= lt!2134753 0)))

(declare-fun e!3227237 () Int)

(assert (=> d!1673811 (= lt!2134753 e!3227237)))

(declare-fun c!892483 () Bool)

(assert (=> d!1673811 (= c!892483 ((_ is Nil!60169) (++!13175 testedP!294 (Cons!60169 (head!11077 (getSuffix!3440 input!5817 testedP!294)) Nil!60169))))))

(assert (=> d!1673811 (= (size!39695 (++!13175 testedP!294 (Cons!60169 (head!11077 (getSuffix!3440 input!5817 testedP!294)) Nil!60169))) lt!2134753)))

(declare-fun b!5179611 () Bool)

(assert (=> b!5179611 (= e!3227237 0)))

(declare-fun b!5179612 () Bool)

(assert (=> b!5179612 (= e!3227237 (+ 1 (size!39695 (t!373446 (++!13175 testedP!294 (Cons!60169 (head!11077 (getSuffix!3440 input!5817 testedP!294)) Nil!60169))))))))

(assert (= (and d!1673811 c!892483) b!5179611))

(assert (= (and d!1673811 (not c!892483)) b!5179612))

(declare-fun m!6237868 () Bool)

(assert (=> b!5179612 m!6237868))

(assert (=> b!5179113 d!1673811))

(declare-fun bs!1206564 () Bool)

(declare-fun d!1673813 () Bool)

(assert (= bs!1206564 (and d!1673813 d!1673437)))

(declare-fun lambda!258834 () Int)

(assert (=> bs!1206564 (= (= call!363963 (h!66617 lt!2134268)) (= lambda!258834 lambda!258787))))

(declare-fun bs!1206565 () Bool)

(assert (= bs!1206565 (and d!1673813 d!1673599)))

(assert (=> bs!1206565 (= (= call!363963 (h!66617 (t!373446 lt!2134268))) (= lambda!258834 lambda!258810))))

(declare-fun bs!1206566 () Bool)

(assert (= bs!1206566 (and d!1673813 d!1673441)))

(assert (=> bs!1206566 (= (= call!363963 call!363925) (= lambda!258834 lambda!258789))))

(declare-fun bs!1206567 () Bool)

(assert (= bs!1206567 (and d!1673813 d!1673409)))

(assert (=> bs!1206567 (= (= call!363963 (h!66617 testedP!294)) (= lambda!258834 lambda!258771))))

(declare-fun bs!1206568 () Bool)

(assert (= bs!1206568 (and d!1673813 d!1673683)))

(assert (=> bs!1206568 (= (= call!363963 (h!66617 (++!13175 testedP!294 (Cons!60169 lt!2134264 Nil!60169)))) (= lambda!258834 lambda!258817))))

(declare-fun bs!1206569 () Bool)

(assert (= bs!1206569 (and d!1673813 d!1673305)))

(assert (=> bs!1206569 (= (= call!363963 lt!2134264) (= lambda!258834 lambda!258762))))

(assert (=> d!1673813 true))

(assert (=> d!1673813 (= (derivationStepZipper!1005 call!363926 call!363963) (flatMap!462 call!363926 lambda!258834))))

(declare-fun bs!1206570 () Bool)

(assert (= bs!1206570 d!1673813))

(declare-fun m!6237870 () Bool)

(assert (=> bs!1206570 m!6237870))

(assert (=> bm!363958 d!1673813))

(assert (=> b!5179153 d!1673689))

(declare-fun b!5179613 () Bool)

(declare-fun e!3227238 () List!60293)

(assert (=> b!5179613 (= e!3227238 lt!2134282)))

(declare-fun b!5179614 () Bool)

(assert (=> b!5179614 (= e!3227238 (Cons!60169 (h!66617 (t!373446 testedP!294)) (++!13175 (t!373446 (t!373446 testedP!294)) lt!2134282)))))

(declare-fun lt!2134754 () List!60293)

(declare-fun b!5179616 () Bool)

(declare-fun e!3227239 () Bool)

(assert (=> b!5179616 (= e!3227239 (or (not (= lt!2134282 Nil!60169)) (= lt!2134754 (t!373446 testedP!294))))))

(declare-fun b!5179615 () Bool)

(declare-fun res!2200718 () Bool)

(assert (=> b!5179615 (=> (not res!2200718) (not e!3227239))))

(assert (=> b!5179615 (= res!2200718 (= (size!39695 lt!2134754) (+ (size!39695 (t!373446 testedP!294)) (size!39695 lt!2134282))))))

(declare-fun d!1673815 () Bool)

(assert (=> d!1673815 e!3227239))

(declare-fun res!2200717 () Bool)

(assert (=> d!1673815 (=> (not res!2200717) (not e!3227239))))

(assert (=> d!1673815 (= res!2200717 (= (content!10667 lt!2134754) ((_ map or) (content!10667 (t!373446 testedP!294)) (content!10667 lt!2134282))))))

(assert (=> d!1673815 (= lt!2134754 e!3227238)))

(declare-fun c!892484 () Bool)

(assert (=> d!1673815 (= c!892484 ((_ is Nil!60169) (t!373446 testedP!294)))))

(assert (=> d!1673815 (= (++!13175 (t!373446 testedP!294) lt!2134282) lt!2134754)))

(assert (= (and d!1673815 c!892484) b!5179613))

(assert (= (and d!1673815 (not c!892484)) b!5179614))

(assert (= (and d!1673815 res!2200717) b!5179615))

(assert (= (and b!5179615 res!2200718) b!5179616))

(declare-fun m!6237872 () Bool)

(assert (=> b!5179614 m!6237872))

(declare-fun m!6237874 () Bool)

(assert (=> b!5179615 m!6237874))

(assert (=> b!5179615 m!6236670))

(assert (=> b!5179615 m!6236952))

(declare-fun m!6237876 () Bool)

(assert (=> d!1673815 m!6237876))

(assert (=> d!1673815 m!6236974))

(assert (=> d!1673815 m!6236956))

(assert (=> b!5179135 d!1673815))

(declare-fun bs!1206571 () Bool)

(declare-fun d!1673817 () Bool)

(assert (= bs!1206571 (and d!1673817 d!1673741)))

(declare-fun lambda!258835 () Int)

(assert (=> bs!1206571 (not (= lambda!258835 lambda!258826))))

(declare-fun bs!1206572 () Bool)

(assert (= bs!1206572 (and d!1673817 b!5179168)))

(assert (=> bs!1206572 (not (= lambda!258835 lambda!258785))))

(declare-fun bs!1206573 () Bool)

(assert (= bs!1206573 (and d!1673817 b!5179169)))

(assert (=> bs!1206573 (not (= lambda!258835 lambda!258786))))

(declare-fun bs!1206574 () Bool)

(assert (= bs!1206574 (and d!1673817 b!5179547)))

(assert (=> bs!1206574 (not (= lambda!258835 lambda!258828))))

(declare-fun bs!1206575 () Bool)

(assert (= bs!1206575 (and d!1673817 d!1673359)))

(assert (=> bs!1206575 (= lambda!258835 lambda!258768)))

(declare-fun bs!1206576 () Bool)

(assert (= bs!1206576 (and d!1673817 d!1673697)))

(assert (=> bs!1206576 (not (= lambda!258835 lambda!258824))))

(declare-fun bs!1206577 () Bool)

(assert (= bs!1206577 (and d!1673817 d!1673783)))

(assert (=> bs!1206577 (not (= lambda!258835 lambda!258833))))

(declare-fun bs!1206578 () Bool)

(assert (= bs!1206578 (and d!1673817 d!1673659)))

(assert (=> bs!1206578 (not (= lambda!258835 lambda!258816))))

(declare-fun bs!1206579 () Bool)

(assert (= bs!1206579 (and d!1673817 d!1673755)))

(assert (=> bs!1206579 (not (= lambda!258835 lambda!258832))))

(declare-fun bs!1206580 () Bool)

(assert (= bs!1206580 (and d!1673817 d!1673607)))

(assert (=> bs!1206580 (not (= lambda!258835 lambda!258813))))

(declare-fun bs!1206581 () Bool)

(assert (= bs!1206581 (and d!1673817 b!5179546)))

(assert (=> bs!1206581 (not (= lambda!258835 lambda!258827))))

(declare-fun bs!1206582 () Bool)

(assert (= bs!1206582 (and d!1673817 d!1673423)))

(assert (=> bs!1206582 (not (= lambda!258835 lambda!258784))))

(assert (=> d!1673817 (= (nullableZipper!1197 call!363926) (exists!1944 call!363926 lambda!258835))))

(declare-fun bs!1206583 () Bool)

(assert (= bs!1206583 d!1673817))

(declare-fun m!6237878 () Bool)

(assert (=> bs!1206583 m!6237878))

(assert (=> bm!363959 d!1673817))

(declare-fun d!1673819 () Bool)

(declare-fun lt!2134755 () Int)

(assert (=> d!1673819 (>= lt!2134755 0)))

(declare-fun e!3227240 () Int)

(assert (=> d!1673819 (= lt!2134755 e!3227240)))

(declare-fun c!892485 () Bool)

(assert (=> d!1673819 (= c!892485 ((_ is Nil!60169) (t!373446 (Cons!60169 lt!2134264 Nil!60169))))))

(assert (=> d!1673819 (= (size!39695 (t!373446 (Cons!60169 lt!2134264 Nil!60169))) lt!2134755)))

(declare-fun b!5179617 () Bool)

(assert (=> b!5179617 (= e!3227240 0)))

(declare-fun b!5179618 () Bool)

(assert (=> b!5179618 (= e!3227240 (+ 1 (size!39695 (t!373446 (t!373446 (Cons!60169 lt!2134264 Nil!60169))))))))

(assert (= (and d!1673819 c!892485) b!5179617))

(assert (= (and d!1673819 (not c!892485)) b!5179618))

(declare-fun m!6237880 () Bool)

(assert (=> b!5179618 m!6237880))

(assert (=> b!5179203 d!1673819))

(declare-fun d!1673821 () Bool)

(declare-fun lt!2134756 () Int)

(assert (=> d!1673821 (>= lt!2134756 0)))

(declare-fun e!3227241 () Int)

(assert (=> d!1673821 (= lt!2134756 e!3227241)))

(declare-fun c!892486 () Bool)

(assert (=> d!1673821 (= c!892486 ((_ is Nil!60169) lt!2134488))))

(assert (=> d!1673821 (= (size!39695 lt!2134488) lt!2134756)))

(declare-fun b!5179619 () Bool)

(assert (=> b!5179619 (= e!3227241 0)))

(declare-fun b!5179620 () Bool)

(assert (=> b!5179620 (= e!3227241 (+ 1 (size!39695 (t!373446 lt!2134488))))))

(assert (= (and d!1673821 c!892486) b!5179619))

(assert (= (and d!1673821 (not c!892486)) b!5179620))

(declare-fun m!6237882 () Bool)

(assert (=> b!5179620 m!6237882))

(assert (=> b!5179108 d!1673821))

(assert (=> b!5179108 d!1673289))

(declare-fun d!1673823 () Bool)

(declare-fun lt!2134757 () Int)

(assert (=> d!1673823 (>= lt!2134757 0)))

(declare-fun e!3227242 () Int)

(assert (=> d!1673823 (= lt!2134757 e!3227242)))

(declare-fun c!892487 () Bool)

(assert (=> d!1673823 (= c!892487 ((_ is Nil!60169) (Cons!60169 (head!11077 lt!2134258) Nil!60169)))))

(assert (=> d!1673823 (= (size!39695 (Cons!60169 (head!11077 lt!2134258) Nil!60169)) lt!2134757)))

(declare-fun b!5179621 () Bool)

(assert (=> b!5179621 (= e!3227242 0)))

(declare-fun b!5179622 () Bool)

(assert (=> b!5179622 (= e!3227242 (+ 1 (size!39695 (t!373446 (Cons!60169 (head!11077 lt!2134258) Nil!60169)))))))

(assert (= (and d!1673823 c!892487) b!5179621))

(assert (= (and d!1673823 (not c!892487)) b!5179622))

(declare-fun m!6237884 () Bool)

(assert (=> b!5179622 m!6237884))

(assert (=> b!5179108 d!1673823))

(declare-fun d!1673825 () Bool)

(assert (=> d!1673825 (= (isEmpty!32215 (_1!35237 lt!2134547)) ((_ is Nil!60169) (_1!35237 lt!2134547)))))

(assert (=> b!5179187 d!1673825))

(assert (=> d!1673425 d!1673429))

(assert (=> d!1673425 d!1673421))

(declare-fun d!1673827 () Bool)

(assert (=> d!1673827 (isPrefix!5792 testedP!294 (++!13175 testedP!294 lt!2134258))))

(assert (=> d!1673827 true))

(declare-fun _$46!2004 () Unit!152092)

(assert (=> d!1673827 (= (choose!38474 testedP!294 lt!2134258) _$46!2004)))

(declare-fun bs!1206584 () Bool)

(assert (= bs!1206584 d!1673827))

(assert (=> bs!1206584 m!6236700))

(assert (=> bs!1206584 m!6236700))

(assert (=> bs!1206584 m!6236702))

(assert (=> d!1673425 d!1673827))

(declare-fun d!1673829 () Bool)

(declare-fun c!892488 () Bool)

(assert (=> d!1673829 (= c!892488 ((_ is Nil!60169) lt!2134499))))

(declare-fun e!3227243 () (InoxSet C!29588))

(assert (=> d!1673829 (= (content!10667 lt!2134499) e!3227243)))

(declare-fun b!5179623 () Bool)

(assert (=> b!5179623 (= e!3227243 ((as const (Array C!29588 Bool)) false))))

(declare-fun b!5179624 () Bool)

(assert (=> b!5179624 (= e!3227243 ((_ map or) (store ((as const (Array C!29588 Bool)) false) (h!66617 lt!2134499) true) (content!10667 (t!373446 lt!2134499))))))

(assert (= (and d!1673829 c!892488) b!5179623))

(assert (= (and d!1673829 (not c!892488)) b!5179624))

(declare-fun m!6237886 () Bool)

(assert (=> b!5179624 m!6237886))

(declare-fun m!6237888 () Bool)

(assert (=> b!5179624 m!6237888))

(assert (=> d!1673405 d!1673829))

(assert (=> d!1673405 d!1673415))

(declare-fun d!1673831 () Bool)

(declare-fun c!892489 () Bool)

(assert (=> d!1673831 (= c!892489 ((_ is Nil!60169) lt!2134282))))

(declare-fun e!3227244 () (InoxSet C!29588))

(assert (=> d!1673831 (= (content!10667 lt!2134282) e!3227244)))

(declare-fun b!5179625 () Bool)

(assert (=> b!5179625 (= e!3227244 ((as const (Array C!29588 Bool)) false))))

(declare-fun b!5179626 () Bool)

(assert (=> b!5179626 (= e!3227244 ((_ map or) (store ((as const (Array C!29588 Bool)) false) (h!66617 lt!2134282) true) (content!10667 (t!373446 lt!2134282))))))

(assert (= (and d!1673831 c!892489) b!5179625))

(assert (= (and d!1673831 (not c!892489)) b!5179626))

(declare-fun m!6237890 () Bool)

(assert (=> b!5179626 m!6237890))

(declare-fun m!6237892 () Bool)

(assert (=> b!5179626 m!6237892))

(assert (=> d!1673405 d!1673831))

(declare-fun d!1673833 () Bool)

(declare-fun c!892490 () Bool)

(assert (=> d!1673833 (= c!892490 ((_ is Nil!60169) (t!373446 lt!2134483)))))

(declare-fun e!3227245 () (InoxSet C!29588))

(assert (=> d!1673833 (= (content!10667 (t!373446 lt!2134483)) e!3227245)))

(declare-fun b!5179627 () Bool)

(assert (=> b!5179627 (= e!3227245 ((as const (Array C!29588 Bool)) false))))

(declare-fun b!5179628 () Bool)

(assert (=> b!5179628 (= e!3227245 ((_ map or) (store ((as const (Array C!29588 Bool)) false) (h!66617 (t!373446 lt!2134483)) true) (content!10667 (t!373446 (t!373446 lt!2134483)))))))

(assert (= (and d!1673833 c!892490) b!5179627))

(assert (= (and d!1673833 (not c!892490)) b!5179628))

(declare-fun m!6237894 () Bool)

(assert (=> b!5179628 m!6237894))

(declare-fun m!6237896 () Bool)

(assert (=> b!5179628 m!6237896))

(assert (=> b!5179151 d!1673833))

(declare-fun d!1673835 () Bool)

(declare-fun c!892491 () Bool)

(assert (=> d!1673835 (= c!892491 ((_ is Cons!60169) (t!373446 (t!373446 testedP!294))))))

(declare-fun e!3227246 () (InoxSet Context!8086))

(assert (=> d!1673835 (= (derivationZipper!282 (derivationStepZipper!1005 (derivationStepZipper!1005 baseZ!62 (h!66617 testedP!294)) (h!66617 (t!373446 testedP!294))) (t!373446 (t!373446 testedP!294))) e!3227246)))

(declare-fun b!5179629 () Bool)

(assert (=> b!5179629 (= e!3227246 (derivationZipper!282 (derivationStepZipper!1005 (derivationStepZipper!1005 (derivationStepZipper!1005 baseZ!62 (h!66617 testedP!294)) (h!66617 (t!373446 testedP!294))) (h!66617 (t!373446 (t!373446 testedP!294)))) (t!373446 (t!373446 (t!373446 testedP!294)))))))

(declare-fun b!5179630 () Bool)

(assert (=> b!5179630 (= e!3227246 (derivationStepZipper!1005 (derivationStepZipper!1005 baseZ!62 (h!66617 testedP!294)) (h!66617 (t!373446 testedP!294))))))

(assert (= (and d!1673835 c!892491) b!5179629))

(assert (= (and d!1673835 (not c!892491)) b!5179630))

(assert (=> b!5179629 m!6236958))

(declare-fun m!6237898 () Bool)

(assert (=> b!5179629 m!6237898))

(assert (=> b!5179629 m!6237898))

(declare-fun m!6237900 () Bool)

(assert (=> b!5179629 m!6237900))

(assert (=> b!5179138 d!1673835))

(declare-fun bs!1206585 () Bool)

(declare-fun d!1673837 () Bool)

(assert (= bs!1206585 (and d!1673837 d!1673437)))

(declare-fun lambda!258836 () Int)

(assert (=> bs!1206585 (= (= (h!66617 (t!373446 testedP!294)) (h!66617 lt!2134268)) (= lambda!258836 lambda!258787))))

(declare-fun bs!1206586 () Bool)

(assert (= bs!1206586 (and d!1673837 d!1673599)))

(assert (=> bs!1206586 (= (= (h!66617 (t!373446 testedP!294)) (h!66617 (t!373446 lt!2134268))) (= lambda!258836 lambda!258810))))

(declare-fun bs!1206587 () Bool)

(assert (= bs!1206587 (and d!1673837 d!1673813)))

(assert (=> bs!1206587 (= (= (h!66617 (t!373446 testedP!294)) call!363963) (= lambda!258836 lambda!258834))))

(declare-fun bs!1206588 () Bool)

(assert (= bs!1206588 (and d!1673837 d!1673441)))

(assert (=> bs!1206588 (= (= (h!66617 (t!373446 testedP!294)) call!363925) (= lambda!258836 lambda!258789))))

(declare-fun bs!1206589 () Bool)

(assert (= bs!1206589 (and d!1673837 d!1673409)))

(assert (=> bs!1206589 (= (= (h!66617 (t!373446 testedP!294)) (h!66617 testedP!294)) (= lambda!258836 lambda!258771))))

(declare-fun bs!1206590 () Bool)

(assert (= bs!1206590 (and d!1673837 d!1673683)))

(assert (=> bs!1206590 (= (= (h!66617 (t!373446 testedP!294)) (h!66617 (++!13175 testedP!294 (Cons!60169 lt!2134264 Nil!60169)))) (= lambda!258836 lambda!258817))))

(declare-fun bs!1206591 () Bool)

(assert (= bs!1206591 (and d!1673837 d!1673305)))

(assert (=> bs!1206591 (= (= (h!66617 (t!373446 testedP!294)) lt!2134264) (= lambda!258836 lambda!258762))))

(assert (=> d!1673837 true))

(assert (=> d!1673837 (= (derivationStepZipper!1005 (derivationStepZipper!1005 baseZ!62 (h!66617 testedP!294)) (h!66617 (t!373446 testedP!294))) (flatMap!462 (derivationStepZipper!1005 baseZ!62 (h!66617 testedP!294)) lambda!258836))))

(declare-fun bs!1206592 () Bool)

(assert (= bs!1206592 d!1673837))

(assert (=> bs!1206592 m!6236648))

(declare-fun m!6237902 () Bool)

(assert (=> bs!1206592 m!6237902))

(assert (=> b!5179138 d!1673837))

(declare-fun d!1673839 () Bool)

(declare-fun lt!2134758 () Int)

(assert (=> d!1673839 (>= lt!2134758 0)))

(declare-fun e!3227247 () Int)

(assert (=> d!1673839 (= lt!2134758 e!3227247)))

(declare-fun c!892492 () Bool)

(assert (=> d!1673839 (= c!892492 ((_ is Nil!60169) (t!373446 (t!373446 testedP!294))))))

(assert (=> d!1673839 (= (size!39695 (t!373446 (t!373446 testedP!294))) lt!2134758)))

(declare-fun b!5179631 () Bool)

(assert (=> b!5179631 (= e!3227247 0)))

(declare-fun b!5179632 () Bool)

(assert (=> b!5179632 (= e!3227247 (+ 1 (size!39695 (t!373446 (t!373446 (t!373446 testedP!294))))))))

(assert (= (and d!1673839 c!892492) b!5179631))

(assert (= (and d!1673839 (not c!892492)) b!5179632))

(declare-fun m!6237904 () Bool)

(assert (=> b!5179632 m!6237904))

(assert (=> b!5179123 d!1673839))

(declare-fun d!1673841 () Bool)

(declare-fun res!2200719 () Bool)

(declare-fun e!3227248 () Bool)

(assert (=> d!1673841 (=> res!2200719 e!3227248)))

(assert (=> d!1673841 (= res!2200719 ((_ is Nil!60170) (t!373447 (exprs!4543 setElem!32368))))))

(assert (=> d!1673841 (= (forall!14167 (t!373447 (exprs!4543 setElem!32368)) lambda!258765) e!3227248)))

(declare-fun b!5179633 () Bool)

(declare-fun e!3227249 () Bool)

(assert (=> b!5179633 (= e!3227248 e!3227249)))

(declare-fun res!2200720 () Bool)

(assert (=> b!5179633 (=> (not res!2200720) (not e!3227249))))

(assert (=> b!5179633 (= res!2200720 (dynLambda!23885 lambda!258765 (h!66618 (t!373447 (exprs!4543 setElem!32368)))))))

(declare-fun b!5179634 () Bool)

(assert (=> b!5179634 (= e!3227249 (forall!14167 (t!373447 (t!373447 (exprs!4543 setElem!32368))) lambda!258765))))

(assert (= (and d!1673841 (not res!2200719)) b!5179633))

(assert (= (and b!5179633 res!2200720) b!5179634))

(declare-fun b_lambda!201047 () Bool)

(assert (=> (not b_lambda!201047) (not b!5179633)))

(declare-fun m!6237906 () Bool)

(assert (=> b!5179633 m!6237906))

(declare-fun m!6237908 () Bool)

(assert (=> b!5179634 m!6237908))

(assert (=> b!5179195 d!1673841))

(declare-fun b!5179635 () Bool)

(declare-fun e!3227251 () Bool)

(declare-fun e!3227255 () Bool)

(assert (=> b!5179635 (= e!3227251 e!3227255)))

(declare-fun c!892493 () Bool)

(assert (=> b!5179635 (= c!892493 ((_ is Union!14659) (h!66618 (exprs!4543 setElem!32368))))))

(declare-fun bm!363998 () Bool)

(declare-fun call!364004 () Bool)

(declare-fun call!364003 () Bool)

(assert (=> bm!363998 (= call!364004 call!364003)))

(declare-fun b!5179636 () Bool)

(declare-fun e!3227252 () Bool)

(assert (=> b!5179636 (= e!3227252 e!3227251)))

(declare-fun c!892494 () Bool)

(assert (=> b!5179636 (= c!892494 ((_ is Star!14659) (h!66618 (exprs!4543 setElem!32368))))))

(declare-fun b!5179637 () Bool)

(declare-fun e!3227254 () Bool)

(assert (=> b!5179637 (= e!3227254 call!364004)))

(declare-fun b!5179638 () Bool)

(declare-fun e!3227253 () Bool)

(assert (=> b!5179638 (= e!3227253 call!364004)))

(declare-fun b!5179639 () Bool)

(declare-fun e!3227256 () Bool)

(assert (=> b!5179639 (= e!3227251 e!3227256)))

(declare-fun res!2200723 () Bool)

(assert (=> b!5179639 (= res!2200723 (not (nullable!4896 (reg!14988 (h!66618 (exprs!4543 setElem!32368))))))))

(assert (=> b!5179639 (=> (not res!2200723) (not e!3227256))))

(declare-fun d!1673843 () Bool)

(declare-fun res!2200725 () Bool)

(assert (=> d!1673843 (=> res!2200725 e!3227252)))

(assert (=> d!1673843 (= res!2200725 ((_ is ElementMatch!14659) (h!66618 (exprs!4543 setElem!32368))))))

(assert (=> d!1673843 (= (validRegex!6409 (h!66618 (exprs!4543 setElem!32368))) e!3227252)))

(declare-fun b!5179640 () Bool)

(declare-fun res!2200721 () Bool)

(assert (=> b!5179640 (=> (not res!2200721) (not e!3227253))))

(declare-fun call!364005 () Bool)

(assert (=> b!5179640 (= res!2200721 call!364005)))

(assert (=> b!5179640 (= e!3227255 e!3227253)))

(declare-fun b!5179641 () Bool)

(declare-fun e!3227250 () Bool)

(assert (=> b!5179641 (= e!3227250 e!3227254)))

(declare-fun res!2200722 () Bool)

(assert (=> b!5179641 (=> (not res!2200722) (not e!3227254))))

(assert (=> b!5179641 (= res!2200722 call!364005)))

(declare-fun b!5179642 () Bool)

(declare-fun res!2200724 () Bool)

(assert (=> b!5179642 (=> res!2200724 e!3227250)))

(assert (=> b!5179642 (= res!2200724 (not ((_ is Concat!23504) (h!66618 (exprs!4543 setElem!32368)))))))

(assert (=> b!5179642 (= e!3227255 e!3227250)))

(declare-fun bm!363999 () Bool)

(assert (=> bm!363999 (= call!364003 (validRegex!6409 (ite c!892494 (reg!14988 (h!66618 (exprs!4543 setElem!32368))) (ite c!892493 (regTwo!29831 (h!66618 (exprs!4543 setElem!32368))) (regTwo!29830 (h!66618 (exprs!4543 setElem!32368)))))))))

(declare-fun b!5179643 () Bool)

(assert (=> b!5179643 (= e!3227256 call!364003)))

(declare-fun bm!364000 () Bool)

(assert (=> bm!364000 (= call!364005 (validRegex!6409 (ite c!892493 (regOne!29831 (h!66618 (exprs!4543 setElem!32368))) (regOne!29830 (h!66618 (exprs!4543 setElem!32368))))))))

(assert (= (and d!1673843 (not res!2200725)) b!5179636))

(assert (= (and b!5179636 c!892494) b!5179639))

(assert (= (and b!5179636 (not c!892494)) b!5179635))

(assert (= (and b!5179639 res!2200723) b!5179643))

(assert (= (and b!5179635 c!892493) b!5179640))

(assert (= (and b!5179635 (not c!892493)) b!5179642))

(assert (= (and b!5179640 res!2200721) b!5179638))

(assert (= (and b!5179642 (not res!2200724)) b!5179641))

(assert (= (and b!5179641 res!2200722) b!5179637))

(assert (= (or b!5179638 b!5179637) bm!363998))

(assert (= (or b!5179640 b!5179641) bm!364000))

(assert (= (or b!5179643 bm!363998) bm!363999))

(declare-fun m!6237910 () Bool)

(assert (=> b!5179639 m!6237910))

(declare-fun m!6237912 () Bool)

(assert (=> bm!363999 m!6237912))

(declare-fun m!6237914 () Bool)

(assert (=> bm!364000 m!6237914))

(assert (=> bs!1206433 d!1673843))

(declare-fun d!1673845 () Bool)

(assert (=> d!1673845 (= (head!11077 (++!13175 testedP!294 (Cons!60169 (head!11077 (getSuffix!3440 input!5817 testedP!294)) Nil!60169))) (h!66617 (++!13175 testedP!294 (Cons!60169 (head!11077 (getSuffix!3440 input!5817 testedP!294)) Nil!60169))))))

(assert (=> b!5179111 d!1673845))

(assert (=> b!5179111 d!1673365))

(assert (=> bm!363957 d!1673639))

(declare-fun b!5179647 () Bool)

(declare-fun e!3227257 () Bool)

(assert (=> b!5179647 (= e!3227257 (>= (size!39695 (tail!10176 (tail!10176 input!5817))) (size!39695 (tail!10176 (tail!10176 lt!2134268)))))))

(declare-fun b!5179645 () Bool)

(declare-fun res!2200728 () Bool)

(declare-fun e!3227258 () Bool)

(assert (=> b!5179645 (=> (not res!2200728) (not e!3227258))))

(assert (=> b!5179645 (= res!2200728 (= (head!11077 (tail!10176 (tail!10176 lt!2134268))) (head!11077 (tail!10176 (tail!10176 input!5817)))))))

(declare-fun b!5179644 () Bool)

(declare-fun e!3227259 () Bool)

(assert (=> b!5179644 (= e!3227259 e!3227258)))

(declare-fun res!2200727 () Bool)

(assert (=> b!5179644 (=> (not res!2200727) (not e!3227258))))

(assert (=> b!5179644 (= res!2200727 (not ((_ is Nil!60169) (tail!10176 (tail!10176 input!5817)))))))

(declare-fun d!1673847 () Bool)

(assert (=> d!1673847 e!3227257))

(declare-fun res!2200729 () Bool)

(assert (=> d!1673847 (=> res!2200729 e!3227257)))

(declare-fun lt!2134759 () Bool)

(assert (=> d!1673847 (= res!2200729 (not lt!2134759))))

(assert (=> d!1673847 (= lt!2134759 e!3227259)))

(declare-fun res!2200726 () Bool)

(assert (=> d!1673847 (=> res!2200726 e!3227259)))

(assert (=> d!1673847 (= res!2200726 ((_ is Nil!60169) (tail!10176 (tail!10176 lt!2134268))))))

(assert (=> d!1673847 (= (isPrefix!5792 (tail!10176 (tail!10176 lt!2134268)) (tail!10176 (tail!10176 input!5817))) lt!2134759)))

(declare-fun b!5179646 () Bool)

(assert (=> b!5179646 (= e!3227258 (isPrefix!5792 (tail!10176 (tail!10176 (tail!10176 lt!2134268))) (tail!10176 (tail!10176 (tail!10176 input!5817)))))))

(assert (= (and d!1673847 (not res!2200726)) b!5179644))

(assert (= (and b!5179644 res!2200727) b!5179645))

(assert (= (and b!5179645 res!2200728) b!5179646))

(assert (= (and d!1673847 (not res!2200729)) b!5179647))

(assert (=> b!5179647 m!6236940))

(assert (=> b!5179647 m!6237420))

(assert (=> b!5179647 m!6237106))

(declare-fun m!6237916 () Bool)

(assert (=> b!5179647 m!6237916))

(assert (=> b!5179645 m!6237106))

(declare-fun m!6237918 () Bool)

(assert (=> b!5179645 m!6237918))

(assert (=> b!5179645 m!6236940))

(assert (=> b!5179645 m!6237530))

(assert (=> b!5179646 m!6237106))

(declare-fun m!6237920 () Bool)

(assert (=> b!5179646 m!6237920))

(assert (=> b!5179646 m!6236940))

(assert (=> b!5179646 m!6237422))

(assert (=> b!5179646 m!6237920))

(assert (=> b!5179646 m!6237422))

(declare-fun m!6237922 () Bool)

(assert (=> b!5179646 m!6237922))

(assert (=> b!5179198 d!1673847))

(declare-fun d!1673849 () Bool)

(assert (=> d!1673849 (= (tail!10176 (tail!10176 lt!2134268)) (t!373446 (tail!10176 lt!2134268)))))

(assert (=> b!5179198 d!1673849))

(assert (=> b!5179198 d!1673605))

(declare-fun b!5179648 () Bool)

(declare-fun e!3227260 () Bool)

(assert (=> b!5179648 (= e!3227260 tp_is_empty!38571)))

(declare-fun b!5179651 () Bool)

(declare-fun tp!1452649 () Bool)

(declare-fun tp!1452647 () Bool)

(assert (=> b!5179651 (= e!3227260 (and tp!1452649 tp!1452647))))

(declare-fun b!5179649 () Bool)

(declare-fun tp!1452648 () Bool)

(declare-fun tp!1452650 () Bool)

(assert (=> b!5179649 (= e!3227260 (and tp!1452648 tp!1452650))))

(assert (=> b!5179236 (= tp!1452596 e!3227260)))

(declare-fun b!5179650 () Bool)

(declare-fun tp!1452646 () Bool)

(assert (=> b!5179650 (= e!3227260 tp!1452646)))

(assert (= (and b!5179236 ((_ is ElementMatch!14659) (h!66618 (t!373447 (exprs!4543 setElem!32367))))) b!5179648))

(assert (= (and b!5179236 ((_ is Concat!23504) (h!66618 (t!373447 (exprs!4543 setElem!32367))))) b!5179649))

(assert (= (and b!5179236 ((_ is Star!14659) (h!66618 (t!373447 (exprs!4543 setElem!32367))))) b!5179650))

(assert (= (and b!5179236 ((_ is Union!14659) (h!66618 (t!373447 (exprs!4543 setElem!32367))))) b!5179651))

(declare-fun b!5179652 () Bool)

(declare-fun e!3227261 () Bool)

(declare-fun tp!1452651 () Bool)

(declare-fun tp!1452652 () Bool)

(assert (=> b!5179652 (= e!3227261 (and tp!1452651 tp!1452652))))

(assert (=> b!5179236 (= tp!1452597 e!3227261)))

(assert (= (and b!5179236 ((_ is Cons!60170) (t!373447 (t!373447 (exprs!4543 setElem!32367))))) b!5179652))

(declare-fun b!5179653 () Bool)

(declare-fun e!3227262 () Bool)

(assert (=> b!5179653 (= e!3227262 tp_is_empty!38571)))

(declare-fun b!5179656 () Bool)

(declare-fun tp!1452656 () Bool)

(declare-fun tp!1452654 () Bool)

(assert (=> b!5179656 (= e!3227262 (and tp!1452656 tp!1452654))))

(declare-fun b!5179654 () Bool)

(declare-fun tp!1452655 () Bool)

(declare-fun tp!1452657 () Bool)

(assert (=> b!5179654 (= e!3227262 (and tp!1452655 tp!1452657))))

(assert (=> b!5179242 (= tp!1452600 e!3227262)))

(declare-fun b!5179655 () Bool)

(declare-fun tp!1452653 () Bool)

(assert (=> b!5179655 (= e!3227262 tp!1452653)))

(assert (= (and b!5179242 ((_ is ElementMatch!14659) (h!66618 (exprs!4543 setElem!32375)))) b!5179653))

(assert (= (and b!5179242 ((_ is Concat!23504) (h!66618 (exprs!4543 setElem!32375)))) b!5179654))

(assert (= (and b!5179242 ((_ is Star!14659) (h!66618 (exprs!4543 setElem!32375)))) b!5179655))

(assert (= (and b!5179242 ((_ is Union!14659) (h!66618 (exprs!4543 setElem!32375)))) b!5179656))

(declare-fun b!5179657 () Bool)

(declare-fun e!3227263 () Bool)

(declare-fun tp!1452658 () Bool)

(declare-fun tp!1452659 () Bool)

(assert (=> b!5179657 (= e!3227263 (and tp!1452658 tp!1452659))))

(assert (=> b!5179242 (= tp!1452601 e!3227263)))

(assert (= (and b!5179242 ((_ is Cons!60170) (t!373447 (exprs!4543 setElem!32375)))) b!5179657))

(declare-fun b!5179658 () Bool)

(declare-fun e!3227264 () Bool)

(declare-fun tp!1452660 () Bool)

(declare-fun tp!1452661 () Bool)

(assert (=> b!5179658 (= e!3227264 (and tp!1452660 tp!1452661))))

(assert (=> b!5179237 (= tp!1452598 e!3227264)))

(assert (= (and b!5179237 ((_ is Cons!60170) (exprs!4543 setElem!32377))) b!5179658))

(declare-fun condSetEmpty!32384 () Bool)

(assert (=> setNonEmpty!32377 (= condSetEmpty!32384 (= setRest!32377 ((as const (Array Context!8086 Bool)) false)))))

(declare-fun setRes!32384 () Bool)

(assert (=> setNonEmpty!32377 (= tp!1452599 setRes!32384)))

(declare-fun setIsEmpty!32384 () Bool)

(assert (=> setIsEmpty!32384 setRes!32384))

(declare-fun setNonEmpty!32384 () Bool)

(declare-fun tp!1452663 () Bool)

(declare-fun e!3227265 () Bool)

(declare-fun setElem!32384 () Context!8086)

(assert (=> setNonEmpty!32384 (= setRes!32384 (and tp!1452663 (inv!79894 setElem!32384) e!3227265))))

(declare-fun setRest!32384 () (InoxSet Context!8086))

(assert (=> setNonEmpty!32384 (= setRest!32377 ((_ map or) (store ((as const (Array Context!8086 Bool)) false) setElem!32384 true) setRest!32384))))

(declare-fun b!5179659 () Bool)

(declare-fun tp!1452662 () Bool)

(assert (=> b!5179659 (= e!3227265 tp!1452662)))

(assert (= (and setNonEmpty!32377 condSetEmpty!32384) setIsEmpty!32384))

(assert (= (and setNonEmpty!32377 (not condSetEmpty!32384)) setNonEmpty!32384))

(assert (= setNonEmpty!32384 b!5179659))

(declare-fun m!6237924 () Bool)

(assert (=> setNonEmpty!32384 m!6237924))

(declare-fun b!5179660 () Bool)

(declare-fun e!3227266 () Bool)

(assert (=> b!5179660 (= e!3227266 tp_is_empty!38571)))

(declare-fun b!5179663 () Bool)

(declare-fun tp!1452667 () Bool)

(declare-fun tp!1452665 () Bool)

(assert (=> b!5179663 (= e!3227266 (and tp!1452667 tp!1452665))))

(declare-fun b!5179661 () Bool)

(declare-fun tp!1452666 () Bool)

(declare-fun tp!1452668 () Bool)

(assert (=> b!5179661 (= e!3227266 (and tp!1452666 tp!1452668))))

(assert (=> b!5179227 (= tp!1452584 e!3227266)))

(declare-fun b!5179662 () Bool)

(declare-fun tp!1452664 () Bool)

(assert (=> b!5179662 (= e!3227266 tp!1452664)))

(assert (= (and b!5179227 ((_ is ElementMatch!14659) (regOne!29830 (h!66618 (exprs!4543 setElem!32368))))) b!5179660))

(assert (= (and b!5179227 ((_ is Concat!23504) (regOne!29830 (h!66618 (exprs!4543 setElem!32368))))) b!5179661))

(assert (= (and b!5179227 ((_ is Star!14659) (regOne!29830 (h!66618 (exprs!4543 setElem!32368))))) b!5179662))

(assert (= (and b!5179227 ((_ is Union!14659) (regOne!29830 (h!66618 (exprs!4543 setElem!32368))))) b!5179663))

(declare-fun b!5179664 () Bool)

(declare-fun e!3227267 () Bool)

(assert (=> b!5179664 (= e!3227267 tp_is_empty!38571)))

(declare-fun b!5179667 () Bool)

(declare-fun tp!1452672 () Bool)

(declare-fun tp!1452670 () Bool)

(assert (=> b!5179667 (= e!3227267 (and tp!1452672 tp!1452670))))

(declare-fun b!5179665 () Bool)

(declare-fun tp!1452671 () Bool)

(declare-fun tp!1452673 () Bool)

(assert (=> b!5179665 (= e!3227267 (and tp!1452671 tp!1452673))))

(assert (=> b!5179227 (= tp!1452586 e!3227267)))

(declare-fun b!5179666 () Bool)

(declare-fun tp!1452669 () Bool)

(assert (=> b!5179666 (= e!3227267 tp!1452669)))

(assert (= (and b!5179227 ((_ is ElementMatch!14659) (regTwo!29830 (h!66618 (exprs!4543 setElem!32368))))) b!5179664))

(assert (= (and b!5179227 ((_ is Concat!23504) (regTwo!29830 (h!66618 (exprs!4543 setElem!32368))))) b!5179665))

(assert (= (and b!5179227 ((_ is Star!14659) (regTwo!29830 (h!66618 (exprs!4543 setElem!32368))))) b!5179666))

(assert (= (and b!5179227 ((_ is Union!14659) (regTwo!29830 (h!66618 (exprs!4543 setElem!32368))))) b!5179667))

(declare-fun b!5179668 () Bool)

(declare-fun e!3227268 () Bool)

(declare-fun tp!1452674 () Bool)

(assert (=> b!5179668 (= e!3227268 (and tp_is_empty!38571 tp!1452674))))

(assert (=> b!5179243 (= tp!1452602 e!3227268)))

(assert (= (and b!5179243 ((_ is Cons!60169) (t!373446 (t!373446 (t!373446 testedP!294))))) b!5179668))

(declare-fun b!5179669 () Bool)

(declare-fun e!3227269 () Bool)

(assert (=> b!5179669 (= e!3227269 tp_is_empty!38571)))

(declare-fun b!5179672 () Bool)

(declare-fun tp!1452678 () Bool)

(declare-fun tp!1452676 () Bool)

(assert (=> b!5179672 (= e!3227269 (and tp!1452678 tp!1452676))))

(declare-fun b!5179670 () Bool)

(declare-fun tp!1452677 () Bool)

(declare-fun tp!1452679 () Bool)

(assert (=> b!5179670 (= e!3227269 (and tp!1452677 tp!1452679))))

(assert (=> b!5179230 (= tp!1452587 e!3227269)))

(declare-fun b!5179671 () Bool)

(declare-fun tp!1452675 () Bool)

(assert (=> b!5179671 (= e!3227269 tp!1452675)))

(assert (= (and b!5179230 ((_ is ElementMatch!14659) (h!66618 (t!373447 (exprs!4543 setElem!32368))))) b!5179669))

(assert (= (and b!5179230 ((_ is Concat!23504) (h!66618 (t!373447 (exprs!4543 setElem!32368))))) b!5179670))

(assert (= (and b!5179230 ((_ is Star!14659) (h!66618 (t!373447 (exprs!4543 setElem!32368))))) b!5179671))

(assert (= (and b!5179230 ((_ is Union!14659) (h!66618 (t!373447 (exprs!4543 setElem!32368))))) b!5179672))

(declare-fun b!5179673 () Bool)

(declare-fun e!3227270 () Bool)

(declare-fun tp!1452680 () Bool)

(declare-fun tp!1452681 () Bool)

(assert (=> b!5179673 (= e!3227270 (and tp!1452680 tp!1452681))))

(assert (=> b!5179230 (= tp!1452588 e!3227270)))

(assert (= (and b!5179230 ((_ is Cons!60170) (t!373447 (t!373447 (exprs!4543 setElem!32368))))) b!5179673))

(declare-fun b!5179674 () Bool)

(declare-fun e!3227271 () Bool)

(declare-fun tp!1452682 () Bool)

(declare-fun tp!1452683 () Bool)

(assert (=> b!5179674 (= e!3227271 (and tp!1452682 tp!1452683))))

(assert (=> b!5179244 (= tp!1452603 e!3227271)))

(assert (= (and b!5179244 ((_ is Cons!60170) (exprs!4543 setElem!32378))) b!5179674))

(declare-fun condSetEmpty!32385 () Bool)

(assert (=> setNonEmpty!32378 (= condSetEmpty!32385 (= setRest!32378 ((as const (Array Context!8086 Bool)) false)))))

(declare-fun setRes!32385 () Bool)

(assert (=> setNonEmpty!32378 (= tp!1452604 setRes!32385)))

(declare-fun setIsEmpty!32385 () Bool)

(assert (=> setIsEmpty!32385 setRes!32385))

(declare-fun e!3227272 () Bool)

(declare-fun setElem!32385 () Context!8086)

(declare-fun tp!1452685 () Bool)

(declare-fun setNonEmpty!32385 () Bool)

(assert (=> setNonEmpty!32385 (= setRes!32385 (and tp!1452685 (inv!79894 setElem!32385) e!3227272))))

(declare-fun setRest!32385 () (InoxSet Context!8086))

(assert (=> setNonEmpty!32385 (= setRest!32378 ((_ map or) (store ((as const (Array Context!8086 Bool)) false) setElem!32385 true) setRest!32385))))

(declare-fun b!5179675 () Bool)

(declare-fun tp!1452684 () Bool)

(assert (=> b!5179675 (= e!3227272 tp!1452684)))

(assert (= (and setNonEmpty!32378 condSetEmpty!32385) setIsEmpty!32385))

(assert (= (and setNonEmpty!32378 (not condSetEmpty!32385)) setNonEmpty!32385))

(assert (= setNonEmpty!32385 b!5179675))

(declare-fun m!6237926 () Bool)

(assert (=> setNonEmpty!32385 m!6237926))

(declare-fun b!5179676 () Bool)

(declare-fun e!3227273 () Bool)

(assert (=> b!5179676 (= e!3227273 tp_is_empty!38571)))

(declare-fun b!5179679 () Bool)

(declare-fun tp!1452689 () Bool)

(declare-fun tp!1452687 () Bool)

(assert (=> b!5179679 (= e!3227273 (and tp!1452689 tp!1452687))))

(declare-fun b!5179677 () Bool)

(declare-fun tp!1452688 () Bool)

(declare-fun tp!1452690 () Bool)

(assert (=> b!5179677 (= e!3227273 (and tp!1452688 tp!1452690))))

(assert (=> b!5179234 (= tp!1452591 e!3227273)))

(declare-fun b!5179678 () Bool)

(declare-fun tp!1452686 () Bool)

(assert (=> b!5179678 (= e!3227273 tp!1452686)))

(assert (= (and b!5179234 ((_ is ElementMatch!14659) (reg!14988 (h!66618 (exprs!4543 setElem!32367))))) b!5179676))

(assert (= (and b!5179234 ((_ is Concat!23504) (reg!14988 (h!66618 (exprs!4543 setElem!32367))))) b!5179677))

(assert (= (and b!5179234 ((_ is Star!14659) (reg!14988 (h!66618 (exprs!4543 setElem!32367))))) b!5179678))

(assert (= (and b!5179234 ((_ is Union!14659) (reg!14988 (h!66618 (exprs!4543 setElem!32367))))) b!5179679))

(declare-fun b!5179680 () Bool)

(declare-fun e!3227274 () Bool)

(assert (=> b!5179680 (= e!3227274 tp_is_empty!38571)))

(declare-fun b!5179683 () Bool)

(declare-fun tp!1452694 () Bool)

(declare-fun tp!1452692 () Bool)

(assert (=> b!5179683 (= e!3227274 (and tp!1452694 tp!1452692))))

(declare-fun b!5179681 () Bool)

(declare-fun tp!1452693 () Bool)

(declare-fun tp!1452695 () Bool)

(assert (=> b!5179681 (= e!3227274 (and tp!1452693 tp!1452695))))

(assert (=> b!5179229 (= tp!1452585 e!3227274)))

(declare-fun b!5179682 () Bool)

(declare-fun tp!1452691 () Bool)

(assert (=> b!5179682 (= e!3227274 tp!1452691)))

(assert (= (and b!5179229 ((_ is ElementMatch!14659) (regOne!29831 (h!66618 (exprs!4543 setElem!32368))))) b!5179680))

(assert (= (and b!5179229 ((_ is Concat!23504) (regOne!29831 (h!66618 (exprs!4543 setElem!32368))))) b!5179681))

(assert (= (and b!5179229 ((_ is Star!14659) (regOne!29831 (h!66618 (exprs!4543 setElem!32368))))) b!5179682))

(assert (= (and b!5179229 ((_ is Union!14659) (regOne!29831 (h!66618 (exprs!4543 setElem!32368))))) b!5179683))

(declare-fun b!5179684 () Bool)

(declare-fun e!3227275 () Bool)

(assert (=> b!5179684 (= e!3227275 tp_is_empty!38571)))

(declare-fun b!5179687 () Bool)

(declare-fun tp!1452699 () Bool)

(declare-fun tp!1452697 () Bool)

(assert (=> b!5179687 (= e!3227275 (and tp!1452699 tp!1452697))))

(declare-fun b!5179685 () Bool)

(declare-fun tp!1452698 () Bool)

(declare-fun tp!1452700 () Bool)

(assert (=> b!5179685 (= e!3227275 (and tp!1452698 tp!1452700))))

(assert (=> b!5179229 (= tp!1452583 e!3227275)))

(declare-fun b!5179686 () Bool)

(declare-fun tp!1452696 () Bool)

(assert (=> b!5179686 (= e!3227275 tp!1452696)))

(assert (= (and b!5179229 ((_ is ElementMatch!14659) (regTwo!29831 (h!66618 (exprs!4543 setElem!32368))))) b!5179684))

(assert (= (and b!5179229 ((_ is Concat!23504) (regTwo!29831 (h!66618 (exprs!4543 setElem!32368))))) b!5179685))

(assert (= (and b!5179229 ((_ is Star!14659) (regTwo!29831 (h!66618 (exprs!4543 setElem!32368))))) b!5179686))

(assert (= (and b!5179229 ((_ is Union!14659) (regTwo!29831 (h!66618 (exprs!4543 setElem!32368))))) b!5179687))

(declare-fun b!5179688 () Bool)

(declare-fun e!3227276 () Bool)

(assert (=> b!5179688 (= e!3227276 tp_is_empty!38571)))

(declare-fun b!5179691 () Bool)

(declare-fun tp!1452704 () Bool)

(declare-fun tp!1452702 () Bool)

(assert (=> b!5179691 (= e!3227276 (and tp!1452704 tp!1452702))))

(declare-fun b!5179689 () Bool)

(declare-fun tp!1452703 () Bool)

(declare-fun tp!1452705 () Bool)

(assert (=> b!5179689 (= e!3227276 (and tp!1452703 tp!1452705))))

(assert (=> b!5179233 (= tp!1452593 e!3227276)))

(declare-fun b!5179690 () Bool)

(declare-fun tp!1452701 () Bool)

(assert (=> b!5179690 (= e!3227276 tp!1452701)))

(assert (= (and b!5179233 ((_ is ElementMatch!14659) (regOne!29830 (h!66618 (exprs!4543 setElem!32367))))) b!5179688))

(assert (= (and b!5179233 ((_ is Concat!23504) (regOne!29830 (h!66618 (exprs!4543 setElem!32367))))) b!5179689))

(assert (= (and b!5179233 ((_ is Star!14659) (regOne!29830 (h!66618 (exprs!4543 setElem!32367))))) b!5179690))

(assert (= (and b!5179233 ((_ is Union!14659) (regOne!29830 (h!66618 (exprs!4543 setElem!32367))))) b!5179691))

(declare-fun b!5179692 () Bool)

(declare-fun e!3227277 () Bool)

(assert (=> b!5179692 (= e!3227277 tp_is_empty!38571)))

(declare-fun b!5179695 () Bool)

(declare-fun tp!1452709 () Bool)

(declare-fun tp!1452707 () Bool)

(assert (=> b!5179695 (= e!3227277 (and tp!1452709 tp!1452707))))

(declare-fun b!5179693 () Bool)

(declare-fun tp!1452708 () Bool)

(declare-fun tp!1452710 () Bool)

(assert (=> b!5179693 (= e!3227277 (and tp!1452708 tp!1452710))))

(assert (=> b!5179233 (= tp!1452595 e!3227277)))

(declare-fun b!5179694 () Bool)

(declare-fun tp!1452706 () Bool)

(assert (=> b!5179694 (= e!3227277 tp!1452706)))

(assert (= (and b!5179233 ((_ is ElementMatch!14659) (regTwo!29830 (h!66618 (exprs!4543 setElem!32367))))) b!5179692))

(assert (= (and b!5179233 ((_ is Concat!23504) (regTwo!29830 (h!66618 (exprs!4543 setElem!32367))))) b!5179693))

(assert (= (and b!5179233 ((_ is Star!14659) (regTwo!29830 (h!66618 (exprs!4543 setElem!32367))))) b!5179694))

(assert (= (and b!5179233 ((_ is Union!14659) (regTwo!29830 (h!66618 (exprs!4543 setElem!32367))))) b!5179695))

(declare-fun b!5179696 () Bool)

(declare-fun e!3227278 () Bool)

(assert (=> b!5179696 (= e!3227278 tp_is_empty!38571)))

(declare-fun b!5179699 () Bool)

(declare-fun tp!1452714 () Bool)

(declare-fun tp!1452712 () Bool)

(assert (=> b!5179699 (= e!3227278 (and tp!1452714 tp!1452712))))

(declare-fun b!5179697 () Bool)

(declare-fun tp!1452713 () Bool)

(declare-fun tp!1452715 () Bool)

(assert (=> b!5179697 (= e!3227278 (and tp!1452713 tp!1452715))))

(assert (=> b!5179228 (= tp!1452582 e!3227278)))

(declare-fun b!5179698 () Bool)

(declare-fun tp!1452711 () Bool)

(assert (=> b!5179698 (= e!3227278 tp!1452711)))

(assert (= (and b!5179228 ((_ is ElementMatch!14659) (reg!14988 (h!66618 (exprs!4543 setElem!32368))))) b!5179696))

(assert (= (and b!5179228 ((_ is Concat!23504) (reg!14988 (h!66618 (exprs!4543 setElem!32368))))) b!5179697))

(assert (= (and b!5179228 ((_ is Star!14659) (reg!14988 (h!66618 (exprs!4543 setElem!32368))))) b!5179698))

(assert (= (and b!5179228 ((_ is Union!14659) (reg!14988 (h!66618 (exprs!4543 setElem!32368))))) b!5179699))

(declare-fun b!5179700 () Bool)

(declare-fun e!3227279 () Bool)

(assert (=> b!5179700 (= e!3227279 tp_is_empty!38571)))

(declare-fun b!5179703 () Bool)

(declare-fun tp!1452719 () Bool)

(declare-fun tp!1452717 () Bool)

(assert (=> b!5179703 (= e!3227279 (and tp!1452719 tp!1452717))))

(declare-fun b!5179701 () Bool)

(declare-fun tp!1452718 () Bool)

(declare-fun tp!1452720 () Bool)

(assert (=> b!5179701 (= e!3227279 (and tp!1452718 tp!1452720))))

(assert (=> b!5179231 (= tp!1452589 e!3227279)))

(declare-fun b!5179702 () Bool)

(declare-fun tp!1452716 () Bool)

(assert (=> b!5179702 (= e!3227279 tp!1452716)))

(assert (= (and b!5179231 ((_ is ElementMatch!14659) (h!66618 (exprs!4543 setElem!32376)))) b!5179700))

(assert (= (and b!5179231 ((_ is Concat!23504) (h!66618 (exprs!4543 setElem!32376)))) b!5179701))

(assert (= (and b!5179231 ((_ is Star!14659) (h!66618 (exprs!4543 setElem!32376)))) b!5179702))

(assert (= (and b!5179231 ((_ is Union!14659) (h!66618 (exprs!4543 setElem!32376)))) b!5179703))

(declare-fun b!5179704 () Bool)

(declare-fun e!3227280 () Bool)

(declare-fun tp!1452721 () Bool)

(declare-fun tp!1452722 () Bool)

(assert (=> b!5179704 (= e!3227280 (and tp!1452721 tp!1452722))))

(assert (=> b!5179231 (= tp!1452590 e!3227280)))

(assert (= (and b!5179231 ((_ is Cons!60170) (t!373447 (exprs!4543 setElem!32376)))) b!5179704))

(declare-fun b!5179705 () Bool)

(declare-fun e!3227281 () Bool)

(declare-fun tp!1452723 () Bool)

(assert (=> b!5179705 (= e!3227281 (and tp_is_empty!38571 tp!1452723))))

(assert (=> b!5179245 (= tp!1452605 e!3227281)))

(assert (= (and b!5179245 ((_ is Cons!60169) (t!373446 (t!373446 (t!373446 input!5817))))) b!5179705))

(declare-fun b!5179706 () Bool)

(declare-fun e!3227282 () Bool)

(assert (=> b!5179706 (= e!3227282 tp_is_empty!38571)))

(declare-fun b!5179709 () Bool)

(declare-fun tp!1452727 () Bool)

(declare-fun tp!1452725 () Bool)

(assert (=> b!5179709 (= e!3227282 (and tp!1452727 tp!1452725))))

(declare-fun b!5179707 () Bool)

(declare-fun tp!1452726 () Bool)

(declare-fun tp!1452728 () Bool)

(assert (=> b!5179707 (= e!3227282 (and tp!1452726 tp!1452728))))

(assert (=> b!5179235 (= tp!1452594 e!3227282)))

(declare-fun b!5179708 () Bool)

(declare-fun tp!1452724 () Bool)

(assert (=> b!5179708 (= e!3227282 tp!1452724)))

(assert (= (and b!5179235 ((_ is ElementMatch!14659) (regOne!29831 (h!66618 (exprs!4543 setElem!32367))))) b!5179706))

(assert (= (and b!5179235 ((_ is Concat!23504) (regOne!29831 (h!66618 (exprs!4543 setElem!32367))))) b!5179707))

(assert (= (and b!5179235 ((_ is Star!14659) (regOne!29831 (h!66618 (exprs!4543 setElem!32367))))) b!5179708))

(assert (= (and b!5179235 ((_ is Union!14659) (regOne!29831 (h!66618 (exprs!4543 setElem!32367))))) b!5179709))

(declare-fun b!5179710 () Bool)

(declare-fun e!3227283 () Bool)

(assert (=> b!5179710 (= e!3227283 tp_is_empty!38571)))

(declare-fun b!5179713 () Bool)

(declare-fun tp!1452732 () Bool)

(declare-fun tp!1452730 () Bool)

(assert (=> b!5179713 (= e!3227283 (and tp!1452732 tp!1452730))))

(declare-fun b!5179711 () Bool)

(declare-fun tp!1452731 () Bool)

(declare-fun tp!1452733 () Bool)

(assert (=> b!5179711 (= e!3227283 (and tp!1452731 tp!1452733))))

(assert (=> b!5179235 (= tp!1452592 e!3227283)))

(declare-fun b!5179712 () Bool)

(declare-fun tp!1452729 () Bool)

(assert (=> b!5179712 (= e!3227283 tp!1452729)))

(assert (= (and b!5179235 ((_ is ElementMatch!14659) (regTwo!29831 (h!66618 (exprs!4543 setElem!32367))))) b!5179710))

(assert (= (and b!5179235 ((_ is Concat!23504) (regTwo!29831 (h!66618 (exprs!4543 setElem!32367))))) b!5179711))

(assert (= (and b!5179235 ((_ is Star!14659) (regTwo!29831 (h!66618 (exprs!4543 setElem!32367))))) b!5179712))

(assert (= (and b!5179235 ((_ is Union!14659) (regTwo!29831 (h!66618 (exprs!4543 setElem!32367))))) b!5179713))

(declare-fun b_lambda!201049 () Bool)

(assert (= b_lambda!201041 (or d!1673363 b_lambda!201049)))

(declare-fun bs!1206593 () Bool)

(declare-fun d!1673851 () Bool)

(assert (= bs!1206593 (and d!1673851 d!1673363)))

(assert (=> bs!1206593 (= (dynLambda!23885 lambda!258769 (h!66618 (t!373447 (exprs!4543 setElem!32367)))) (validRegex!6409 (h!66618 (t!373447 (exprs!4543 setElem!32367)))))))

(declare-fun m!6237928 () Bool)

(assert (=> bs!1206593 m!6237928))

(assert (=> b!5179422 d!1673851))

(declare-fun b_lambda!201051 () Bool)

(assert (= b_lambda!201047 (or d!1673345 b_lambda!201051)))

(declare-fun bs!1206594 () Bool)

(declare-fun d!1673853 () Bool)

(assert (= bs!1206594 (and d!1673853 d!1673345)))

(assert (=> bs!1206594 (= (dynLambda!23885 lambda!258765 (h!66618 (t!373447 (exprs!4543 setElem!32368)))) (validRegex!6409 (h!66618 (t!373447 (exprs!4543 setElem!32368)))))))

(declare-fun m!6237930 () Bool)

(assert (=> bs!1206594 m!6237930))

(assert (=> b!5179633 d!1673853))

(declare-fun b_lambda!201053 () Bool)

(assert (= b_lambda!201043 (or d!1673439 b_lambda!201053)))

(declare-fun bs!1206595 () Bool)

(declare-fun d!1673855 () Bool)

(assert (= bs!1206595 (and d!1673855 d!1673439)))

(assert (=> bs!1206595 (= (dynLambda!23885 lambda!258788 (h!66618 (exprs!4543 setElem!32375))) (validRegex!6409 (h!66618 (exprs!4543 setElem!32375))))))

(declare-fun m!6237932 () Bool)

(assert (=> bs!1206595 m!6237932))

(assert (=> b!5179448 d!1673855))

(declare-fun b_lambda!201055 () Bool)

(assert (= b_lambda!201045 (or d!1673367 b_lambda!201055)))

(declare-fun bs!1206596 () Bool)

(declare-fun d!1673857 () Bool)

(assert (= bs!1206596 (and d!1673857 d!1673367)))

(assert (=> bs!1206596 (= (dynLambda!23885 lambda!258770 (h!66618 (exprs!4543 setElem!32376))) (validRegex!6409 (h!66618 (exprs!4543 setElem!32376))))))

(declare-fun m!6237934 () Bool)

(assert (=> bs!1206596 m!6237934))

(assert (=> b!5179591 d!1673857))

(check-sat (not d!1673645) (not b!5179483) (not b!5179646) (not b!5179699) (not d!1673727) (not bm!363983) (not b!5179481) (not b!5179702) (not b!5179659) (not b!5179530) (not b!5179561) (not b!5179420) (not b!5179527) (not d!1673755) (not b!5179526) (not b!5179645) (not b!5179423) (not b!5179624) (not b!5179474) (not b!5179380) (not b!5179401) (not b!5179541) (not b!5179620) (not b!5179465) (not bm!363980) (not b!5179496) (not d!1673809) (not b!5179460) (not b!5179378) (not b!5179470) (not bm!363981) (not b!5179573) (not b!5179581) (not b_lambda!201053) (not d!1673619) (not b!5179544) (not b!5179549) (not d!1673637) (not b!5179705) (not b!5179437) (not d!1673813) (not b!5179415) (not b!5179392) (not b!5179687) (not b!5179712) (not b!5179698) (not b!5179412) (not bs!1206596) (not b!5179600) (not b!5179650) (not b!5179649) (not b!5179434) (not b!5179594) (not b!5179417) (not b!5179546) (not d!1673783) (not b!5179429) (not d!1673661) (not b!5179682) (not d!1673743) (not b!5179403) (not d!1673633) tp_is_empty!38571 (not b!5179656) (not b!5179447) (not b!5179558) (not d!1673747) (not b!5179571) (not b!5179545) (not d!1673599) (not b!5179622) (not d!1673837) (not bm!364000) (not d!1673785) (not d!1673741) (not b!5179375) (not b!5179685) (not b!5179697) (not b!5179628) (not b!5179543) (not b!5179567) (not d!1673683) (not d!1673627) (not b!5179614) (not d!1673657) (not d!1673607) (not b!5179589) (not bm!363984) (not b!5179704) (not d!1673739) (not d!1673623) (not b!5179665) (not b!5179703) (not b_lambda!201029) (not d!1673625) (not b!5179606) (not d!1673759) (not d!1673631) (not b!5179709) (not bs!1206595) (not d!1673663) (not b!5179657) (not b!5179376) (not b!5179612) (not b!5179658) (not d!1673665) (not d!1673817) (not b!5179441) (not b!5179562) (not bs!1206594) (not b!5179550) (not b!5179425) (not d!1673789) (not b!5179462) (not b_lambda!201051) (not b!5179469) (not b!5179713) (not d!1673673) (not d!1673709) (not b!5179673) (not bm!363982) (not b!5179683) (not bm!363994) (not b!5179634) (not b_lambda!201049) (not b!5179467) (not b!5179654) (not b!5179395) (not b!5179672) (not b!5179461) (not b!5179419) (not d!1673715) (not b!5179377) (not b!5179655) (not b!5179391) (not b!5179396) (not d!1673827) (not b!5179586) (not d!1673757) (not b!5179693) (not b!5179701) (not b!5179583) (not d!1673699) (not b!5179528) (not d!1673635) (not b!5179686) (not b!5179579) (not b!5179438) (not b!5179398) (not b!5179639) (not b!5179404) (not b!5179690) (not d!1673659) (not b!5179532) (not b!5179618) (not d!1673735) (not b!5179678) (not b!5179577) (not d!1673697) (not b!5179385) (not b!5179602) (not b!5179663) (not b!5179473) (not b!5179647) (not b!5179588) (not bm!363996) (not d!1673815) (not b!5179477) (not b!5179491) (not b!5179547) (not b!5179711) (not b!5179431) (not b!5179679) (not b!5179675) (not b!5179445) (not b!5179604) (not b!5179433) (not b!5179520) (not b!5179449) (not b!5179677) (not b!5179538) (not b!5179393) (not setNonEmpty!32385) (not b!5179666) (not b!5179661) (not b!5179565) (not b!5179551) (not b!5179408) (not b!5179708) (not b!5179389) (not b_lambda!201031) (not b!5179557) (not b!5179442) (not b!5179608) (not b!5179609) (not d!1673705) (not b!5179575) (not bm!363985) (not b!5179534) (not setNonEmpty!32383) (not bs!1206593) (not b!5179411) (not b!5179407) (not bm!363979) (not b_lambda!201055) (not b!5179493) (not b!5179691) (not d!1673603) (not bm!363986) (not b!5179598) (not b!5179427) (not d!1673685) (not b!5179671) (not d!1673771) (not b!5179626) (not b!5179707) (not b!5179652) (not bm!363995) (not b!5179670) (not b!5179662) (not b!5179387) (not b!5179615) (not bm!363997) (not b!5179596) (not b!5179694) (not b!5179592) (not b!5179488) (not d!1673749) (not d!1673753) (not b!5179629) (not b!5179632) (not b!5179651) (not b!5179674) (not b!5179681) (not b!5179569) (not setNonEmpty!32384) (not b!5179695) (not b!5179668) (not b!5179554) (not b!5179495) (not b!5179536) (not b!5179689) (not b!5179426) (not b!5179667) (not bm!363999) (not b!5179479) (not b!5179553) (not b!5179458))
(check-sat)
