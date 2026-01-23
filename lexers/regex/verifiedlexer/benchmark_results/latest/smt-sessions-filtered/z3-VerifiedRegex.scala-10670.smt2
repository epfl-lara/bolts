; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!546548 () Bool)

(assert start!546548)

(declare-fun b!5165968 () Bool)

(declare-datatypes ((Unit!151454 0))(
  ( (Unit!151455) )
))
(declare-fun e!3218898 () Unit!151454)

(declare-fun Unit!151456 () Unit!151454)

(assert (=> b!5165968 (= e!3218898 Unit!151456)))

(declare-fun lt!2124735 () Unit!151454)

(declare-datatypes ((C!29444 0))(
  ( (C!29445 (val!24424 Int)) )
))
(declare-datatypes ((List!60129 0))(
  ( (Nil!60005) (Cons!60005 (h!66453 C!29444) (t!373282 List!60129)) )
))
(declare-fun input!5817 () List!60129)

(declare-fun lemmaIsPrefixRefl!3727 (List!60129 List!60129) Unit!151454)

(assert (=> b!5165968 (= lt!2124735 (lemmaIsPrefixRefl!3727 input!5817 input!5817))))

(declare-fun isPrefix!5720 (List!60129 List!60129) Bool)

(assert (=> b!5165968 (isPrefix!5720 input!5817 input!5817)))

(declare-fun lt!2124734 () Unit!151454)

(declare-fun testedP!294 () List!60129)

(declare-fun lemmaIsPrefixSameLengthThenSameList!1369 (List!60129 List!60129 List!60129) Unit!151454)

(assert (=> b!5165968 (= lt!2124734 (lemmaIsPrefixSameLengthThenSameList!1369 input!5817 testedP!294 input!5817))))

(assert (=> b!5165968 false))

(declare-fun b!5165969 () Bool)

(declare-fun e!3218895 () Bool)

(declare-fun tp_is_empty!38427 () Bool)

(declare-fun tp!1449323 () Bool)

(assert (=> b!5165969 (= e!3218895 (and tp_is_empty!38427 tp!1449323))))

(declare-fun b!5165970 () Bool)

(declare-fun e!3218899 () Bool)

(declare-fun tp!1449318 () Bool)

(assert (=> b!5165970 (= e!3218899 tp!1449318)))

(declare-fun b!5165971 () Bool)

(declare-fun e!3218896 () Bool)

(declare-fun e!3218900 () Bool)

(assert (=> b!5165971 (= e!3218896 e!3218900)))

(declare-fun res!2196073 () Bool)

(assert (=> b!5165971 (=> (not res!2196073) (not e!3218900))))

(declare-fun lt!2124740 () Int)

(declare-fun lt!2124738 () Int)

(define-sort InoxSet (T) (Array T Bool))

(declare-datatypes ((Regex!14587 0))(
  ( (ElementMatch!14587 (c!888810 C!29444)) (Concat!23432 (regOne!29686 Regex!14587) (regTwo!29686 Regex!14587)) (EmptyExpr!14587) (Star!14587 (reg!14916 Regex!14587)) (EmptyLang!14587) (Union!14587 (regOne!29687 Regex!14587) (regTwo!29687 Regex!14587)) )
))
(declare-datatypes ((List!60130 0))(
  ( (Nil!60006) (Cons!60006 (h!66454 Regex!14587) (t!373283 List!60130)) )
))
(declare-datatypes ((Context!7942 0))(
  ( (Context!7943 (exprs!4471 List!60130)) )
))
(declare-fun z!4581 () (InoxSet Context!7942))

(declare-fun lt!2124739 () List!60129)

(declare-fun isEmpty!32125 (List!60129) Bool)

(declare-datatypes ((tuple2!63728 0))(
  ( (tuple2!63729 (_1!35167 List!60129) (_2!35167 List!60129)) )
))
(declare-fun findLongestMatchInnerZipper!245 ((InoxSet Context!7942) List!60129 Int List!60129 List!60129 Int) tuple2!63728)

(assert (=> b!5165971 (= res!2196073 (not (isEmpty!32125 (_1!35167 (findLongestMatchInnerZipper!245 z!4581 testedP!294 lt!2124738 lt!2124739 input!5817 lt!2124740)))))))

(declare-fun size!39623 (List!60129) Int)

(assert (=> b!5165971 (= lt!2124740 (size!39623 input!5817))))

(declare-fun getSuffix!3370 (List!60129 List!60129) List!60129)

(assert (=> b!5165971 (= lt!2124739 (getSuffix!3370 input!5817 testedP!294))))

(assert (=> b!5165971 (= lt!2124738 (size!39623 testedP!294))))

(declare-fun res!2196074 () Bool)

(assert (=> start!546548 (=> (not res!2196074) (not e!3218896))))

(assert (=> start!546548 (= res!2196074 (isPrefix!5720 testedP!294 input!5817))))

(assert (=> start!546548 e!3218896))

(assert (=> start!546548 e!3218895))

(declare-fun e!3218894 () Bool)

(assert (=> start!546548 e!3218894))

(declare-fun condSetEmpty!31736 () Bool)

(declare-fun baseZ!62 () (InoxSet Context!7942))

(assert (=> start!546548 (= condSetEmpty!31736 (= baseZ!62 ((as const (Array Context!7942 Bool)) false)))))

(declare-fun setRes!31735 () Bool)

(assert (=> start!546548 setRes!31735))

(declare-fun condSetEmpty!31735 () Bool)

(assert (=> start!546548 (= condSetEmpty!31735 (= z!4581 ((as const (Array Context!7942 Bool)) false)))))

(declare-fun setRes!31736 () Bool)

(assert (=> start!546548 setRes!31736))

(declare-fun b!5165972 () Bool)

(declare-fun Unit!151457 () Unit!151454)

(assert (=> b!5165972 (= e!3218898 Unit!151457)))

(declare-fun setIsEmpty!31735 () Bool)

(assert (=> setIsEmpty!31735 setRes!31736))

(declare-fun b!5165973 () Bool)

(declare-fun res!2196075 () Bool)

(assert (=> b!5165973 (=> (not res!2196075) (not e!3218900))))

(assert (=> b!5165973 (= res!2196075 (not (= testedP!294 input!5817)))))

(declare-fun tp!1449321 () Bool)

(declare-fun e!3218897 () Bool)

(declare-fun setNonEmpty!31735 () Bool)

(declare-fun setElem!31735 () Context!7942)

(declare-fun inv!79714 (Context!7942) Bool)

(assert (=> setNonEmpty!31735 (= setRes!31736 (and tp!1449321 (inv!79714 setElem!31735) e!3218897))))

(declare-fun setRest!31735 () (InoxSet Context!7942))

(assert (=> setNonEmpty!31735 (= z!4581 ((_ map or) (store ((as const (Array Context!7942 Bool)) false) setElem!31735 true) setRest!31735))))

(declare-fun setIsEmpty!31736 () Bool)

(assert (=> setIsEmpty!31736 setRes!31735))

(declare-fun b!5165974 () Bool)

(assert (=> b!5165974 (= e!3218900 (not true))))

(declare-fun lt!2124737 () Unit!151454)

(assert (=> b!5165974 (= lt!2124737 e!3218898)))

(declare-fun c!888809 () Bool)

(assert (=> b!5165974 (= c!888809 (= lt!2124738 lt!2124740))))

(assert (=> b!5165974 (<= lt!2124738 lt!2124740)))

(declare-fun lt!2124736 () Unit!151454)

(declare-fun lemmaIsPrefixThenSmallerEqSize!883 (List!60129 List!60129) Unit!151454)

(assert (=> b!5165974 (= lt!2124736 (lemmaIsPrefixThenSmallerEqSize!883 testedP!294 input!5817))))

(declare-fun b!5165975 () Bool)

(declare-fun res!2196076 () Bool)

(assert (=> b!5165975 (=> (not res!2196076) (not e!3218896))))

(declare-fun derivationZipper!210 ((InoxSet Context!7942) List!60129) (InoxSet Context!7942))

(assert (=> b!5165975 (= res!2196076 (= (derivationZipper!210 baseZ!62 testedP!294) z!4581))))

(declare-fun tp!1449319 () Bool)

(declare-fun setElem!31736 () Context!7942)

(declare-fun setNonEmpty!31736 () Bool)

(assert (=> setNonEmpty!31736 (= setRes!31735 (and tp!1449319 (inv!79714 setElem!31736) e!3218899))))

(declare-fun setRest!31736 () (InoxSet Context!7942))

(assert (=> setNonEmpty!31736 (= baseZ!62 ((_ map or) (store ((as const (Array Context!7942 Bool)) false) setElem!31736 true) setRest!31736))))

(declare-fun b!5165976 () Bool)

(declare-fun tp!1449320 () Bool)

(assert (=> b!5165976 (= e!3218897 tp!1449320)))

(declare-fun b!5165977 () Bool)

(declare-fun tp!1449322 () Bool)

(assert (=> b!5165977 (= e!3218894 (and tp_is_empty!38427 tp!1449322))))

(assert (= (and start!546548 res!2196074) b!5165975))

(assert (= (and b!5165975 res!2196076) b!5165971))

(assert (= (and b!5165971 res!2196073) b!5165973))

(assert (= (and b!5165973 res!2196075) b!5165974))

(assert (= (and b!5165974 c!888809) b!5165968))

(assert (= (and b!5165974 (not c!888809)) b!5165972))

(get-info :version)

(assert (= (and start!546548 ((_ is Cons!60005) testedP!294)) b!5165969))

(assert (= (and start!546548 ((_ is Cons!60005) input!5817)) b!5165977))

(assert (= (and start!546548 condSetEmpty!31736) setIsEmpty!31736))

(assert (= (and start!546548 (not condSetEmpty!31736)) setNonEmpty!31736))

(assert (= setNonEmpty!31736 b!5165970))

(assert (= (and start!546548 condSetEmpty!31735) setIsEmpty!31735))

(assert (= (and start!546548 (not condSetEmpty!31735)) setNonEmpty!31735))

(assert (= setNonEmpty!31735 b!5165976))

(declare-fun m!6216382 () Bool)

(assert (=> start!546548 m!6216382))

(declare-fun m!6216384 () Bool)

(assert (=> b!5165968 m!6216384))

(declare-fun m!6216386 () Bool)

(assert (=> b!5165968 m!6216386))

(declare-fun m!6216388 () Bool)

(assert (=> b!5165968 m!6216388))

(declare-fun m!6216390 () Bool)

(assert (=> b!5165975 m!6216390))

(declare-fun m!6216392 () Bool)

(assert (=> setNonEmpty!31736 m!6216392))

(declare-fun m!6216394 () Bool)

(assert (=> b!5165974 m!6216394))

(declare-fun m!6216396 () Bool)

(assert (=> setNonEmpty!31735 m!6216396))

(declare-fun m!6216398 () Bool)

(assert (=> b!5165971 m!6216398))

(declare-fun m!6216400 () Bool)

(assert (=> b!5165971 m!6216400))

(declare-fun m!6216402 () Bool)

(assert (=> b!5165971 m!6216402))

(declare-fun m!6216404 () Bool)

(assert (=> b!5165971 m!6216404))

(declare-fun m!6216406 () Bool)

(assert (=> b!5165971 m!6216406))

(check-sat (not b!5165974) tp_is_empty!38427 (not b!5165975) (not setNonEmpty!31735) (not start!546548) (not b!5165968) (not b!5165977) (not b!5165969) (not setNonEmpty!31736) (not b!5165970) (not b!5165971) (not b!5165976))
(check-sat)
