; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!547332 () Bool)

(assert start!547332)

(declare-fun b!5170895 () Bool)

(declare-fun res!2197800 () Bool)

(declare-fun e!3221937 () Bool)

(assert (=> b!5170895 (=> (not res!2197800) (not e!3221937))))

(declare-datatypes ((C!29500 0))(
  ( (C!29501 (val!24452 Int)) )
))
(declare-datatypes ((List!60195 0))(
  ( (Nil!60071) (Cons!60071 (h!66519 C!29500) (t!373348 List!60195)) )
))
(declare-fun testedP!294 () List!60195)

(define-sort InoxSet (T) (Array T Bool))

(declare-datatypes ((Regex!14615 0))(
  ( (ElementMatch!14615 (c!890088 C!29500)) (Concat!23460 (regOne!29742 Regex!14615) (regTwo!29742 Regex!14615)) (EmptyExpr!14615) (Star!14615 (reg!14944 Regex!14615)) (EmptyLang!14615) (Union!14615 (regOne!29743 Regex!14615) (regTwo!29743 Regex!14615)) )
))
(declare-datatypes ((List!60196 0))(
  ( (Nil!60072) (Cons!60072 (h!66520 Regex!14615) (t!373349 List!60196)) )
))
(declare-datatypes ((Context!7998 0))(
  ( (Context!7999 (exprs!4499 List!60196)) )
))
(declare-fun z!4581 () (InoxSet Context!7998))

(declare-fun baseZ!62 () (InoxSet Context!7998))

(declare-fun derivationZipper!238 ((InoxSet Context!7998) List!60195) (InoxSet Context!7998))

(assert (=> b!5170895 (= res!2197800 (= (derivationZipper!238 baseZ!62 testedP!294) z!4581))))

(declare-fun res!2197798 () Bool)

(assert (=> start!547332 (=> (not res!2197798) (not e!3221937))))

(declare-fun input!5817 () List!60195)

(declare-fun isPrefix!5748 (List!60195 List!60195) Bool)

(assert (=> start!547332 (= res!2197798 (isPrefix!5748 testedP!294 input!5817))))

(assert (=> start!547332 e!3221937))

(declare-fun e!3221930 () Bool)

(assert (=> start!547332 e!3221930))

(declare-fun e!3221934 () Bool)

(assert (=> start!547332 e!3221934))

(declare-fun condSetEmpty!31984 () Bool)

(assert (=> start!547332 (= condSetEmpty!31984 (= baseZ!62 ((as const (Array Context!7998 Bool)) false)))))

(declare-fun setRes!31984 () Bool)

(assert (=> start!547332 setRes!31984))

(declare-fun condSetEmpty!31983 () Bool)

(assert (=> start!547332 (= condSetEmpty!31983 (= z!4581 ((as const (Array Context!7998 Bool)) false)))))

(declare-fun setRes!31983 () Bool)

(assert (=> start!547332 setRes!31983))

(declare-fun b!5170896 () Bool)

(declare-datatypes ((Unit!151706 0))(
  ( (Unit!151707) )
))
(declare-fun e!3221935 () Unit!151706)

(declare-fun Unit!151708 () Unit!151706)

(assert (=> b!5170896 (= e!3221935 Unit!151708)))

(declare-fun b!5170897 () Bool)

(declare-fun e!3221936 () Bool)

(declare-fun e!3221938 () Bool)

(assert (=> b!5170897 (= e!3221936 e!3221938)))

(declare-fun res!2197796 () Bool)

(assert (=> b!5170897 (=> res!2197796 e!3221938)))

(declare-fun nullableZipper!1161 ((InoxSet Context!7998)) Bool)

(assert (=> b!5170897 (= res!2197796 (not (nullableZipper!1161 z!4581)))))

(declare-fun lt!2128475 () List!60195)

(assert (=> b!5170897 (isPrefix!5748 lt!2128475 input!5817)))

(declare-fun lt!2128479 () Unit!151706)

(declare-fun lemmaAddHeadSuffixToPrefixStillPrefix!1061 (List!60195 List!60195) Unit!151706)

(assert (=> b!5170897 (= lt!2128479 (lemmaAddHeadSuffixToPrefixStillPrefix!1061 testedP!294 input!5817))))

(declare-fun lt!2128477 () C!29500)

(declare-fun ++!13139 (List!60195 List!60195) List!60195)

(assert (=> b!5170897 (= lt!2128475 (++!13139 testedP!294 (Cons!60071 lt!2128477 Nil!60071)))))

(declare-fun lt!2128476 () List!60195)

(declare-fun head!11039 (List!60195) C!29500)

(assert (=> b!5170897 (= lt!2128477 (head!11039 lt!2128476))))

(declare-fun setIsEmpty!31983 () Bool)

(assert (=> setIsEmpty!31983 setRes!31983))

(declare-fun e!3221929 () Bool)

(declare-fun setElem!31983 () Context!7998)

(declare-fun setNonEmpty!31983 () Bool)

(declare-fun tp!1450623 () Bool)

(declare-fun inv!79784 (Context!7998) Bool)

(assert (=> setNonEmpty!31983 (= setRes!31983 (and tp!1450623 (inv!79784 setElem!31983) e!3221929))))

(declare-fun setRest!31983 () (InoxSet Context!7998))

(assert (=> setNonEmpty!31983 (= z!4581 ((_ map or) (store ((as const (Array Context!7998 Bool)) false) setElem!31983 true) setRest!31983))))

(declare-fun setIsEmpty!31984 () Bool)

(assert (=> setIsEmpty!31984 setRes!31984))

(declare-fun b!5170898 () Bool)

(declare-fun e!3221933 () Bool)

(declare-fun tp!1450622 () Bool)

(assert (=> b!5170898 (= e!3221933 tp!1450622)))

(declare-fun b!5170899 () Bool)

(declare-fun tp!1450619 () Bool)

(assert (=> b!5170899 (= e!3221929 tp!1450619)))

(declare-fun b!5170900 () Bool)

(declare-fun Unit!151709 () Unit!151706)

(assert (=> b!5170900 (= e!3221935 Unit!151709)))

(declare-fun lt!2128483 () Unit!151706)

(declare-fun lemmaIsPrefixRefl!3755 (List!60195 List!60195) Unit!151706)

(assert (=> b!5170900 (= lt!2128483 (lemmaIsPrefixRefl!3755 input!5817 input!5817))))

(assert (=> b!5170900 (isPrefix!5748 input!5817 input!5817)))

(declare-fun lt!2128474 () Unit!151706)

(declare-fun lemmaIsPrefixSameLengthThenSameList!1397 (List!60195 List!60195 List!60195) Unit!151706)

(assert (=> b!5170900 (= lt!2128474 (lemmaIsPrefixSameLengthThenSameList!1397 input!5817 testedP!294 input!5817))))

(assert (=> b!5170900 false))

(declare-fun b!5170901 () Bool)

(declare-fun e!3221932 () Bool)

(assert (=> b!5170901 (= e!3221932 true)))

(declare-fun lt!2128478 () (InoxSet Context!7998))

(assert (=> b!5170901 (= (derivationZipper!238 baseZ!62 lt!2128475) lt!2128478)))

(declare-fun lt!2128484 () Unit!151706)

(declare-fun lemmaDerivativeOnLWithANewCharIsANewDerivativeStep!89 ((InoxSet Context!7998) (InoxSet Context!7998) List!60195 C!29500) Unit!151706)

(assert (=> b!5170901 (= lt!2128484 (lemmaDerivativeOnLWithANewCharIsANewDerivativeStep!89 baseZ!62 z!4581 testedP!294 lt!2128477))))

(declare-fun b!5170902 () Bool)

(assert (=> b!5170902 (= e!3221938 e!3221932)))

(declare-fun res!2197795 () Bool)

(assert (=> b!5170902 (=> res!2197795 e!3221932)))

(declare-fun lt!2128473 () Int)

(declare-fun lt!2128480 () Int)

(declare-fun isEmpty!32163 (List!60195) Bool)

(declare-datatypes ((tuple2!63784 0))(
  ( (tuple2!63785 (_1!35195 List!60195) (_2!35195 List!60195)) )
))
(declare-fun findLongestMatchInnerZipper!273 ((InoxSet Context!7998) List!60195 Int List!60195 List!60195 Int) tuple2!63784)

(declare-fun tail!10148 (List!60195) List!60195)

(assert (=> b!5170902 (= res!2197795 (isEmpty!32163 (_1!35195 (findLongestMatchInnerZipper!273 lt!2128478 lt!2128475 (+ 1 lt!2128473) (tail!10148 lt!2128476) input!5817 lt!2128480))))))

(declare-fun derivationStepZipper!969 ((InoxSet Context!7998) C!29500) (InoxSet Context!7998))

(assert (=> b!5170902 (= lt!2128478 (derivationStepZipper!969 z!4581 lt!2128477))))

(declare-fun setElem!31984 () Context!7998)

(declare-fun tp!1450618 () Bool)

(declare-fun setNonEmpty!31984 () Bool)

(assert (=> setNonEmpty!31984 (= setRes!31984 (and tp!1450618 (inv!79784 setElem!31984) e!3221933))))

(declare-fun setRest!31984 () (InoxSet Context!7998))

(assert (=> setNonEmpty!31984 (= baseZ!62 ((_ map or) (store ((as const (Array Context!7998 Bool)) false) setElem!31984 true) setRest!31984))))

(declare-fun b!5170903 () Bool)

(declare-fun e!3221931 () Bool)

(assert (=> b!5170903 (= e!3221937 e!3221931)))

(declare-fun res!2197799 () Bool)

(assert (=> b!5170903 (=> (not res!2197799) (not e!3221931))))

(assert (=> b!5170903 (= res!2197799 (not (isEmpty!32163 (_1!35195 (findLongestMatchInnerZipper!273 z!4581 testedP!294 lt!2128473 lt!2128476 input!5817 lt!2128480)))))))

(declare-fun size!39651 (List!60195) Int)

(assert (=> b!5170903 (= lt!2128480 (size!39651 input!5817))))

(declare-fun getSuffix!3398 (List!60195 List!60195) List!60195)

(assert (=> b!5170903 (= lt!2128476 (getSuffix!3398 input!5817 testedP!294))))

(assert (=> b!5170903 (= lt!2128473 (size!39651 testedP!294))))

(declare-fun b!5170904 () Bool)

(declare-fun tp_is_empty!38483 () Bool)

(declare-fun tp!1450621 () Bool)

(assert (=> b!5170904 (= e!3221930 (and tp_is_empty!38483 tp!1450621))))

(declare-fun b!5170905 () Bool)

(assert (=> b!5170905 (= e!3221931 (not e!3221936))))

(declare-fun res!2197797 () Bool)

(assert (=> b!5170905 (=> res!2197797 e!3221936)))

(assert (=> b!5170905 (= res!2197797 (>= lt!2128473 lt!2128480))))

(declare-fun lt!2128481 () Unit!151706)

(assert (=> b!5170905 (= lt!2128481 e!3221935)))

(declare-fun c!890087 () Bool)

(assert (=> b!5170905 (= c!890087 (= lt!2128473 lt!2128480))))

(assert (=> b!5170905 (<= lt!2128473 lt!2128480)))

(declare-fun lt!2128482 () Unit!151706)

(declare-fun lemmaIsPrefixThenSmallerEqSize!911 (List!60195 List!60195) Unit!151706)

(assert (=> b!5170905 (= lt!2128482 (lemmaIsPrefixThenSmallerEqSize!911 testedP!294 input!5817))))

(declare-fun b!5170906 () Bool)

(declare-fun tp!1450620 () Bool)

(assert (=> b!5170906 (= e!3221934 (and tp_is_empty!38483 tp!1450620))))

(declare-fun b!5170907 () Bool)

(declare-fun res!2197794 () Bool)

(assert (=> b!5170907 (=> (not res!2197794) (not e!3221931))))

(assert (=> b!5170907 (= res!2197794 (not (= testedP!294 input!5817)))))

(assert (= (and start!547332 res!2197798) b!5170895))

(assert (= (and b!5170895 res!2197800) b!5170903))

(assert (= (and b!5170903 res!2197799) b!5170907))

(assert (= (and b!5170907 res!2197794) b!5170905))

(assert (= (and b!5170905 c!890087) b!5170900))

(assert (= (and b!5170905 (not c!890087)) b!5170896))

(assert (= (and b!5170905 (not res!2197797)) b!5170897))

(assert (= (and b!5170897 (not res!2197796)) b!5170902))

(assert (= (and b!5170902 (not res!2197795)) b!5170901))

(get-info :version)

(assert (= (and start!547332 ((_ is Cons!60071) testedP!294)) b!5170904))

(assert (= (and start!547332 ((_ is Cons!60071) input!5817)) b!5170906))

(assert (= (and start!547332 condSetEmpty!31984) setIsEmpty!31984))

(assert (= (and start!547332 (not condSetEmpty!31984)) setNonEmpty!31984))

(assert (= setNonEmpty!31984 b!5170898))

(assert (= (and start!547332 condSetEmpty!31983) setIsEmpty!31983))

(assert (= (and start!547332 (not condSetEmpty!31983)) setNonEmpty!31983))

(assert (= setNonEmpty!31983 b!5170899))

(declare-fun m!6223616 () Bool)

(assert (=> b!5170900 m!6223616))

(declare-fun m!6223618 () Bool)

(assert (=> b!5170900 m!6223618))

(declare-fun m!6223620 () Bool)

(assert (=> b!5170900 m!6223620))

(declare-fun m!6223622 () Bool)

(assert (=> b!5170905 m!6223622))

(declare-fun m!6223624 () Bool)

(assert (=> b!5170902 m!6223624))

(assert (=> b!5170902 m!6223624))

(declare-fun m!6223626 () Bool)

(assert (=> b!5170902 m!6223626))

(declare-fun m!6223628 () Bool)

(assert (=> b!5170902 m!6223628))

(declare-fun m!6223630 () Bool)

(assert (=> b!5170902 m!6223630))

(declare-fun m!6223632 () Bool)

(assert (=> setNonEmpty!31984 m!6223632))

(declare-fun m!6223634 () Bool)

(assert (=> b!5170903 m!6223634))

(declare-fun m!6223636 () Bool)

(assert (=> b!5170903 m!6223636))

(declare-fun m!6223638 () Bool)

(assert (=> b!5170903 m!6223638))

(declare-fun m!6223640 () Bool)

(assert (=> b!5170903 m!6223640))

(declare-fun m!6223642 () Bool)

(assert (=> b!5170903 m!6223642))

(declare-fun m!6223644 () Bool)

(assert (=> b!5170901 m!6223644))

(declare-fun m!6223646 () Bool)

(assert (=> b!5170901 m!6223646))

(declare-fun m!6223648 () Bool)

(assert (=> b!5170897 m!6223648))

(declare-fun m!6223650 () Bool)

(assert (=> b!5170897 m!6223650))

(declare-fun m!6223652 () Bool)

(assert (=> b!5170897 m!6223652))

(declare-fun m!6223654 () Bool)

(assert (=> b!5170897 m!6223654))

(declare-fun m!6223656 () Bool)

(assert (=> b!5170897 m!6223656))

(declare-fun m!6223658 () Bool)

(assert (=> b!5170895 m!6223658))

(declare-fun m!6223660 () Bool)

(assert (=> start!547332 m!6223660))

(declare-fun m!6223662 () Bool)

(assert (=> setNonEmpty!31983 m!6223662))

(check-sat (not b!5170905) (not b!5170906) (not b!5170901) (not b!5170903) (not b!5170895) (not b!5170899) (not b!5170900) (not b!5170898) (not b!5170902) (not b!5170904) (not start!547332) (not setNonEmpty!31983) (not setNonEmpty!31984) tp_is_empty!38483 (not b!5170897))
(check-sat)
