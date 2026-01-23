; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!538372 () Bool)

(assert start!538372)

(declare-fun b!5105665 () Bool)

(declare-fun e!3184384 () Bool)

(declare-fun e!3184393 () Bool)

(assert (=> b!5105665 (= e!3184384 e!3184393)))

(declare-fun res!2173230 () Bool)

(assert (=> b!5105665 (=> (not res!2173230) (not e!3184393))))

(declare-datatypes ((C!28416 0))(
  ( (C!28417 (val!23860 Int)) )
))
(declare-datatypes ((Regex!14079 0))(
  ( (ElementMatch!14079 (c!877057 C!28416)) (Concat!22924 (regOne!28670 Regex!14079) (regTwo!28670 Regex!14079)) (EmptyExpr!14079) (Star!14079 (reg!14408 Regex!14079)) (EmptyLang!14079) (Union!14079 (regOne!28671 Regex!14079) (regTwo!28671 Regex!14079)) )
))
(declare-datatypes ((List!59023 0))(
  ( (Nil!58899) (Cons!58899 (h!65347 Regex!14079) (t!372024 List!59023)) )
))
(declare-datatypes ((Context!6926 0))(
  ( (Context!6927 (exprs!3963 List!59023)) )
))
(declare-datatypes ((List!59024 0))(
  ( (Nil!58900) (Cons!58900 (h!65348 Context!6926) (t!372025 List!59024)) )
))
(declare-fun lt!2101567 () List!59024)

(declare-fun r!12920 () Regex!14079)

(declare-fun unfocusZipper!421 (List!59024) Regex!14079)

(assert (=> b!5105665 (= res!2173230 (= (unfocusZipper!421 lt!2101567) r!12920))))

(define-sort InoxSet (T) (Array T Bool))

(declare-fun z!4303 () (InoxSet Context!6926))

(declare-fun toList!8213 ((InoxSet Context!6926)) List!59024)

(assert (=> b!5105665 (= lt!2101567 (toList!8213 z!4303))))

(declare-fun b!5105666 () Bool)

(declare-fun e!3184387 () Bool)

(declare-datatypes ((List!59025 0))(
  ( (Nil!58901) (Cons!58901 (h!65349 C!28416) (t!372026 List!59025)) )
))
(declare-datatypes ((tuple2!63544 0))(
  ( (tuple2!63545 (_1!35075 List!59025) (_2!35075 List!59025)) )
))
(declare-fun lt!2101565 () tuple2!63544)

(declare-fun matchZipper!751 ((InoxSet Context!6926) List!59025) Bool)

(assert (=> b!5105666 (= e!3184387 (matchZipper!751 z!4303 (_1!35075 lt!2101565)))))

(declare-fun setIsEmpty!29350 () Bool)

(declare-fun setRes!29350 () Bool)

(assert (=> setIsEmpty!29350 setRes!29350))

(declare-fun b!5105667 () Bool)

(declare-fun e!3184395 () Bool)

(declare-fun lt!2101562 () tuple2!63544)

(declare-fun lt!2101566 () tuple2!63544)

(assert (=> b!5105667 (= e!3184395 (= lt!2101562 lt!2101566))))

(assert (=> b!5105667 (= (_2!35075 lt!2101562) (_2!35075 lt!2101566))))

(declare-datatypes ((Unit!149952 0))(
  ( (Unit!149953) )
))
(declare-fun lt!2101578 () Unit!149952)

(declare-fun input!5654 () List!59025)

(declare-fun lemmaSamePrefixThenSameSuffix!2588 (List!59025 List!59025 List!59025 List!59025 List!59025) Unit!149952)

(assert (=> b!5105667 (= lt!2101578 (lemmaSamePrefixThenSameSuffix!2588 (_1!35075 lt!2101562) (_2!35075 lt!2101562) (_1!35075 lt!2101566) (_2!35075 lt!2101566) input!5654))))

(assert (=> b!5105667 (= (_1!35075 lt!2101562) (_1!35075 lt!2101566))))

(declare-fun lt!2101579 () Unit!149952)

(declare-fun lemmaIsPrefixSameLengthThenSameList!1315 (List!59025 List!59025 List!59025) Unit!149952)

(assert (=> b!5105667 (= lt!2101579 (lemmaIsPrefixSameLengthThenSameList!1315 (_1!35075 lt!2101562) (_1!35075 lt!2101566) input!5654))))

(declare-fun b!5105668 () Bool)

(declare-fun e!3184390 () Bool)

(declare-fun isEmpty!31824 (List!59025) Bool)

(assert (=> b!5105668 (= e!3184390 (not (isEmpty!31824 (_1!35075 lt!2101562))))))

(declare-fun b!5105669 () Bool)

(declare-fun e!3184391 () Bool)

(declare-fun e!3184385 () Bool)

(assert (=> b!5105669 (= e!3184391 e!3184385)))

(declare-fun res!2173240 () Bool)

(assert (=> b!5105669 (=> (not res!2173240) (not e!3184385))))

(declare-fun lt!2101575 () List!59025)

(assert (=> b!5105669 (= res!2173240 (= lt!2101575 input!5654))))

(declare-fun ++!12928 (List!59025 List!59025) List!59025)

(assert (=> b!5105669 (= lt!2101575 (++!12928 (_1!35075 lt!2101566) (_2!35075 lt!2101566)))))

(declare-fun b!5105670 () Bool)

(declare-fun e!3184388 () Bool)

(declare-fun tp!1424208 () Bool)

(declare-fun tp!1424210 () Bool)

(assert (=> b!5105670 (= e!3184388 (and tp!1424208 tp!1424210))))

(declare-fun b!5105671 () Bool)

(declare-fun tp!1424211 () Bool)

(assert (=> b!5105671 (= e!3184388 tp!1424211)))

(declare-fun b!5105672 () Bool)

(declare-fun e!3184392 () Bool)

(declare-fun lt!2101560 () tuple2!63544)

(declare-fun matchR!6864 (Regex!14079 List!59025) Bool)

(assert (=> b!5105672 (= e!3184392 (matchR!6864 r!12920 (_1!35075 lt!2101560)))))

(declare-fun b!5105673 () Bool)

(declare-fun tp_is_empty!37423 () Bool)

(assert (=> b!5105673 (= e!3184388 tp_is_empty!37423)))

(declare-fun tp!1424214 () Bool)

(declare-fun setElem!29350 () Context!6926)

(declare-fun setNonEmpty!29350 () Bool)

(declare-fun e!3184386 () Bool)

(declare-fun inv!78372 (Context!6926) Bool)

(assert (=> setNonEmpty!29350 (= setRes!29350 (and tp!1424214 (inv!78372 setElem!29350) e!3184386))))

(declare-fun setRest!29350 () (InoxSet Context!6926))

(assert (=> setNonEmpty!29350 (= z!4303 ((_ map or) (store ((as const (Array Context!6926 Bool)) false) setElem!29350 true) setRest!29350))))

(declare-fun b!5105674 () Bool)

(declare-fun e!3184394 () Bool)

(assert (=> b!5105674 (= e!3184385 (not e!3184394))))

(declare-fun res!2173238 () Bool)

(assert (=> b!5105674 (=> res!2173238 e!3184394)))

(assert (=> b!5105674 (= res!2173238 e!3184390)))

(declare-fun res!2173233 () Bool)

(assert (=> b!5105674 (=> (not res!2173233) (not e!3184390))))

(declare-fun lt!2101577 () Bool)

(assert (=> b!5105674 (= res!2173233 (not lt!2101577))))

(assert (=> b!5105674 (= lt!2101577 (matchZipper!751 z!4303 (_1!35075 lt!2101562)))))

(assert (=> b!5105674 e!3184392))

(declare-fun res!2173239 () Bool)

(assert (=> b!5105674 (=> res!2173239 e!3184392)))

(assert (=> b!5105674 (= res!2173239 (isEmpty!31824 (_1!35075 lt!2101560)))))

(declare-fun lt!2101561 () Int)

(declare-fun lt!2101563 () Int)

(declare-fun findLongestMatchInner!2092 (Regex!14079 List!59025 Int List!59025 List!59025 Int) tuple2!63544)

(assert (=> b!5105674 (= lt!2101560 (findLongestMatchInner!2092 r!12920 Nil!58901 lt!2101563 input!5654 input!5654 lt!2101561))))

(declare-fun lt!2101571 () Unit!149952)

(declare-fun longestMatchIsAcceptedByMatchOrIsEmpty!2104 (Regex!14079 List!59025) Unit!149952)

(assert (=> b!5105674 (= lt!2101571 (longestMatchIsAcceptedByMatchOrIsEmpty!2104 r!12920 input!5654))))

(assert (=> b!5105674 e!3184387))

(declare-fun res!2173232 () Bool)

(assert (=> b!5105674 (=> res!2173232 e!3184387)))

(assert (=> b!5105674 (= res!2173232 (isEmpty!31824 (_1!35075 lt!2101565)))))

(declare-fun findLongestMatchInnerZipper!153 ((InoxSet Context!6926) List!59025 Int List!59025 List!59025 Int) tuple2!63544)

(assert (=> b!5105674 (= lt!2101565 (findLongestMatchInnerZipper!153 z!4303 Nil!58901 lt!2101563 input!5654 input!5654 lt!2101561))))

(declare-fun size!39381 (List!59025) Int)

(assert (=> b!5105674 (= lt!2101561 (size!39381 input!5654))))

(assert (=> b!5105674 (= lt!2101563 (size!39381 Nil!58901))))

(declare-fun lt!2101569 () Unit!149952)

(declare-fun longestMatchIsAcceptedByMatchOrIsEmpty!2105 ((InoxSet Context!6926) List!59025) Unit!149952)

(assert (=> b!5105674 (= lt!2101569 (longestMatchIsAcceptedByMatchOrIsEmpty!2105 z!4303 input!5654))))

(declare-fun isPrefix!5480 (List!59025 List!59025) Bool)

(assert (=> b!5105674 (isPrefix!5480 (_1!35075 lt!2101566) lt!2101575)))

(declare-fun lt!2101574 () Unit!149952)

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!3538 (List!59025 List!59025) Unit!149952)

(assert (=> b!5105674 (= lt!2101574 (lemmaConcatTwoListThenFirstIsPrefix!3538 (_1!35075 lt!2101566) (_2!35075 lt!2101566)))))

(declare-fun lt!2101580 () List!59025)

(assert (=> b!5105674 (isPrefix!5480 (_1!35075 lt!2101562) lt!2101580)))

(declare-fun lt!2101572 () Unit!149952)

(assert (=> b!5105674 (= lt!2101572 (lemmaConcatTwoListThenFirstIsPrefix!3538 (_1!35075 lt!2101562) (_2!35075 lt!2101562)))))

(declare-fun b!5105675 () Bool)

(declare-fun e!3184397 () Bool)

(declare-fun tp!1424212 () Bool)

(assert (=> b!5105675 (= e!3184397 (and tp_is_empty!37423 tp!1424212))))

(declare-fun b!5105676 () Bool)

(declare-fun e!3184389 () Bool)

(assert (=> b!5105676 (= e!3184389 e!3184395)))

(declare-fun res!2173231 () Bool)

(assert (=> b!5105676 (=> res!2173231 e!3184395)))

(declare-fun lt!2101564 () Int)

(declare-fun lt!2101570 () Int)

(assert (=> b!5105676 (= res!2173231 (or (> lt!2101564 lt!2101570) (> lt!2101570 lt!2101564)))))

(assert (=> b!5105676 (= lt!2101570 (size!39381 (_1!35075 lt!2101562)))))

(assert (=> b!5105676 (= lt!2101564 (size!39381 (_1!35075 lt!2101566)))))

(assert (=> b!5105676 (= (matchR!6864 r!12920 (_1!35075 lt!2101562)) lt!2101577)))

(declare-fun lt!2101573 () Unit!149952)

(declare-fun theoremZipperRegexEquiv!243 ((InoxSet Context!6926) List!59024 Regex!14079 List!59025) Unit!149952)

(assert (=> b!5105676 (= lt!2101573 (theoremZipperRegexEquiv!243 z!4303 lt!2101567 r!12920 (_1!35075 lt!2101562)))))

(declare-fun lt!2101568 () Bool)

(assert (=> b!5105676 (= lt!2101568 (matchZipper!751 z!4303 (_1!35075 lt!2101566)))))

(declare-fun lt!2101576 () Unit!149952)

(assert (=> b!5105676 (= lt!2101576 (theoremZipperRegexEquiv!243 z!4303 lt!2101567 r!12920 (_1!35075 lt!2101566)))))

(declare-fun res!2173236 () Bool)

(assert (=> start!538372 (=> (not res!2173236) (not e!3184384))))

(declare-fun validRegex!6206 (Regex!14079) Bool)

(assert (=> start!538372 (= res!2173236 (validRegex!6206 r!12920))))

(assert (=> start!538372 e!3184384))

(assert (=> start!538372 e!3184388))

(declare-fun condSetEmpty!29350 () Bool)

(assert (=> start!538372 (= condSetEmpty!29350 (= z!4303 ((as const (Array Context!6926 Bool)) false)))))

(assert (=> start!538372 setRes!29350))

(assert (=> start!538372 e!3184397))

(declare-fun b!5105677 () Bool)

(assert (=> b!5105677 (= e!3184393 e!3184391)))

(declare-fun res!2173234 () Bool)

(assert (=> b!5105677 (=> (not res!2173234) (not e!3184391))))

(assert (=> b!5105677 (= res!2173234 (= lt!2101580 input!5654))))

(assert (=> b!5105677 (= lt!2101580 (++!12928 (_1!35075 lt!2101562) (_2!35075 lt!2101562)))))

(declare-fun findLongestMatch!1909 (Regex!14079 List!59025) tuple2!63544)

(assert (=> b!5105677 (= lt!2101566 (findLongestMatch!1909 r!12920 input!5654))))

(declare-fun findLongestMatchZipper!103 ((InoxSet Context!6926) List!59025) tuple2!63544)

(assert (=> b!5105677 (= lt!2101562 (findLongestMatchZipper!103 z!4303 input!5654))))

(declare-fun b!5105678 () Bool)

(declare-fun tp!1424215 () Bool)

(assert (=> b!5105678 (= e!3184386 tp!1424215)))

(declare-fun b!5105679 () Bool)

(declare-fun e!3184396 () Bool)

(assert (=> b!5105679 (= e!3184396 (not (isEmpty!31824 (_1!35075 lt!2101566))))))

(declare-fun b!5105680 () Bool)

(declare-fun tp!1424213 () Bool)

(declare-fun tp!1424209 () Bool)

(assert (=> b!5105680 (= e!3184388 (and tp!1424213 tp!1424209))))

(declare-fun b!5105681 () Bool)

(assert (=> b!5105681 (= e!3184394 e!3184389)))

(declare-fun res!2173235 () Bool)

(assert (=> b!5105681 (=> res!2173235 e!3184389)))

(assert (=> b!5105681 (= res!2173235 e!3184396)))

(declare-fun res!2173237 () Bool)

(assert (=> b!5105681 (=> (not res!2173237) (not e!3184396))))

(assert (=> b!5105681 (= res!2173237 (not lt!2101568))))

(assert (=> b!5105681 (= lt!2101568 (matchR!6864 r!12920 (_1!35075 lt!2101566)))))

(assert (= (and start!538372 res!2173236) b!5105665))

(assert (= (and b!5105665 res!2173230) b!5105677))

(assert (= (and b!5105677 res!2173234) b!5105669))

(assert (= (and b!5105669 res!2173240) b!5105674))

(assert (= (and b!5105674 (not res!2173232)) b!5105666))

(assert (= (and b!5105674 (not res!2173239)) b!5105672))

(assert (= (and b!5105674 res!2173233) b!5105668))

(assert (= (and b!5105674 (not res!2173238)) b!5105681))

(assert (= (and b!5105681 res!2173237) b!5105679))

(assert (= (and b!5105681 (not res!2173235)) b!5105676))

(assert (= (and b!5105676 (not res!2173231)) b!5105667))

(get-info :version)

(assert (= (and start!538372 ((_ is ElementMatch!14079) r!12920)) b!5105673))

(assert (= (and start!538372 ((_ is Concat!22924) r!12920)) b!5105670))

(assert (= (and start!538372 ((_ is Star!14079) r!12920)) b!5105671))

(assert (= (and start!538372 ((_ is Union!14079) r!12920)) b!5105680))

(assert (= (and start!538372 condSetEmpty!29350) setIsEmpty!29350))

(assert (= (and start!538372 (not condSetEmpty!29350)) setNonEmpty!29350))

(assert (= setNonEmpty!29350 b!5105678))

(assert (= (and start!538372 ((_ is Cons!58901) input!5654)) b!5105675))

(declare-fun m!6163058 () Bool)

(assert (=> b!5105676 m!6163058))

(declare-fun m!6163060 () Bool)

(assert (=> b!5105676 m!6163060))

(declare-fun m!6163062 () Bool)

(assert (=> b!5105676 m!6163062))

(declare-fun m!6163064 () Bool)

(assert (=> b!5105676 m!6163064))

(declare-fun m!6163066 () Bool)

(assert (=> b!5105676 m!6163066))

(declare-fun m!6163068 () Bool)

(assert (=> b!5105676 m!6163068))

(declare-fun m!6163070 () Bool)

(assert (=> b!5105674 m!6163070))

(declare-fun m!6163072 () Bool)

(assert (=> b!5105674 m!6163072))

(declare-fun m!6163074 () Bool)

(assert (=> b!5105674 m!6163074))

(declare-fun m!6163076 () Bool)

(assert (=> b!5105674 m!6163076))

(declare-fun m!6163078 () Bool)

(assert (=> b!5105674 m!6163078))

(declare-fun m!6163080 () Bool)

(assert (=> b!5105674 m!6163080))

(declare-fun m!6163082 () Bool)

(assert (=> b!5105674 m!6163082))

(declare-fun m!6163084 () Bool)

(assert (=> b!5105674 m!6163084))

(declare-fun m!6163086 () Bool)

(assert (=> b!5105674 m!6163086))

(declare-fun m!6163088 () Bool)

(assert (=> b!5105674 m!6163088))

(declare-fun m!6163090 () Bool)

(assert (=> b!5105674 m!6163090))

(declare-fun m!6163092 () Bool)

(assert (=> b!5105674 m!6163092))

(declare-fun m!6163094 () Bool)

(assert (=> b!5105674 m!6163094))

(declare-fun m!6163096 () Bool)

(assert (=> b!5105681 m!6163096))

(declare-fun m!6163098 () Bool)

(assert (=> b!5105666 m!6163098))

(declare-fun m!6163100 () Bool)

(assert (=> b!5105665 m!6163100))

(declare-fun m!6163102 () Bool)

(assert (=> b!5105665 m!6163102))

(declare-fun m!6163104 () Bool)

(assert (=> b!5105677 m!6163104))

(declare-fun m!6163106 () Bool)

(assert (=> b!5105677 m!6163106))

(declare-fun m!6163108 () Bool)

(assert (=> b!5105677 m!6163108))

(declare-fun m!6163110 () Bool)

(assert (=> b!5105667 m!6163110))

(declare-fun m!6163112 () Bool)

(assert (=> b!5105667 m!6163112))

(declare-fun m!6163114 () Bool)

(assert (=> b!5105668 m!6163114))

(declare-fun m!6163116 () Bool)

(assert (=> b!5105679 m!6163116))

(declare-fun m!6163118 () Bool)

(assert (=> setNonEmpty!29350 m!6163118))

(declare-fun m!6163120 () Bool)

(assert (=> b!5105672 m!6163120))

(declare-fun m!6163122 () Bool)

(assert (=> b!5105669 m!6163122))

(declare-fun m!6163124 () Bool)

(assert (=> start!538372 m!6163124))

(check-sat (not b!5105681) (not b!5105678) (not b!5105675) (not b!5105676) (not b!5105680) (not b!5105677) (not b!5105672) (not b!5105665) (not b!5105668) (not b!5105679) (not setNonEmpty!29350) (not b!5105669) (not b!5105666) (not b!5105674) (not b!5105667) (not b!5105671) tp_is_empty!37423 (not b!5105670) (not start!538372))
(check-sat)
