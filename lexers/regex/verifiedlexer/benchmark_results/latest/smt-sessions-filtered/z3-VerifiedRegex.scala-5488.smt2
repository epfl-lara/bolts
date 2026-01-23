; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!277662 () Bool)

(assert start!277662)

(declare-fun b!2850633 () Bool)

(assert (=> b!2850633 true))

(assert (=> b!2850633 true))

(declare-fun b!2850627 () Bool)

(declare-fun e!1806240 () Bool)

(declare-fun tp!915776 () Bool)

(assert (=> b!2850627 (= e!1806240 tp!915776)))

(declare-fun e!1806242 () Bool)

(declare-fun tp!915778 () Bool)

(declare-fun setRes!25096 () Bool)

(declare-fun setNonEmpty!25096 () Bool)

(declare-datatypes ((C!17244 0))(
  ( (C!17245 (val!10656 Int)) )
))
(declare-datatypes ((Regex!8531 0))(
  ( (ElementMatch!8531 (c!459722 C!17244)) (Concat!13852 (regOne!17574 Regex!8531) (regTwo!17574 Regex!8531)) (EmptyExpr!8531) (Star!8531 (reg!8860 Regex!8531)) (EmptyLang!8531) (Union!8531 (regOne!17575 Regex!8531) (regTwo!17575 Regex!8531)) )
))
(declare-datatypes ((List!34058 0))(
  ( (Nil!33934) (Cons!33934 (h!39354 Regex!8531) (t!233089 List!34058)) )
))
(declare-datatypes ((Context!5082 0))(
  ( (Context!5083 (exprs!3041 List!34058)) )
))
(declare-fun setElem!25096 () Context!5082)

(declare-fun inv!45964 (Context!5082) Bool)

(assert (=> setNonEmpty!25096 (= setRes!25096 (and tp!915778 (inv!45964 setElem!25096) e!1806242))))

(define-sort InoxSet (T) (Array T Bool))

(declare-fun z!809 () (InoxSet Context!5082))

(declare-fun setRest!25096 () (InoxSet Context!5082))

(assert (=> setNonEmpty!25096 (= z!809 ((_ map or) (store ((as const (Array Context!5082 Bool)) false) setElem!25096 true) setRest!25096))))

(declare-fun b!2850628 () Bool)

(declare-fun e!1806239 () Bool)

(declare-datatypes ((List!34059 0))(
  ( (Nil!33935) (Cons!33935 (h!39355 C!17244) (t!233090 List!34059)) )
))
(declare-fun prefix!862 () List!34059)

(declare-fun prefixMatchZipper!263 ((InoxSet Context!5082) List!34059) Bool)

(assert (=> b!2850628 (= e!1806239 (not (prefixMatchZipper!263 z!809 prefix!862)))))

(declare-fun b!2850630 () Bool)

(declare-fun e!1806238 () Bool)

(declare-fun tp_is_empty!14799 () Bool)

(assert (=> b!2850630 (= e!1806238 tp_is_empty!14799)))

(declare-fun setIsEmpty!25096 () Bool)

(assert (=> setIsEmpty!25096 setRes!25096))

(declare-fun b!2850631 () Bool)

(declare-fun tp!915777 () Bool)

(declare-fun tp!915775 () Bool)

(assert (=> b!2850631 (= e!1806238 (and tp!915777 tp!915775))))

(declare-fun b!2850632 () Bool)

(declare-fun e!1806243 () Bool)

(declare-fun tp!915783 () Bool)

(assert (=> b!2850632 (= e!1806243 (and tp_is_empty!14799 tp!915783))))

(declare-fun e!1806244 () Bool)

(declare-fun e!1806237 () Bool)

(assert (=> b!2850633 (= e!1806244 (not e!1806237))))

(declare-fun res!1184923 () Bool)

(assert (=> b!2850633 (=> res!1184923 e!1806237)))

(declare-fun lambda!104785 () Int)

(declare-fun Exists!1259 (Int) Bool)

(assert (=> b!2850633 (= res!1184923 (not (Exists!1259 lambda!104785)))))

(assert (=> b!2850633 (Exists!1259 lambda!104785)))

(declare-datatypes ((Unit!47637 0))(
  ( (Unit!47638) )
))
(declare-fun lt!1013382 () Unit!47637)

(declare-fun r!5723 () Regex!8531)

(declare-fun lemmaPrefixMatchThenExistsStringThatMatches!307 (Regex!8531 List!34059) Unit!47637)

(assert (=> b!2850633 (= lt!1013382 (lemmaPrefixMatchThenExistsStringThatMatches!307 r!5723 prefix!862))))

(declare-fun b!2850634 () Bool)

(assert (=> b!2850634 (= e!1806237 (Exists!1259 lambda!104785))))

(declare-fun b!2850635 () Bool)

(declare-fun tp!915781 () Bool)

(declare-fun tp!915780 () Bool)

(assert (=> b!2850635 (= e!1806238 (and tp!915781 tp!915780))))

(declare-fun b!2850636 () Bool)

(declare-fun tp!915779 () Bool)

(assert (=> b!2850636 (= e!1806238 tp!915779)))

(declare-fun e!1806241 () Bool)

(declare-datatypes ((List!34060 0))(
  ( (Nil!33936) (Cons!33936 (h!39356 Context!5082) (t!233091 List!34060)) )
))
(declare-fun zl!222 () List!34060)

(declare-fun tp!915784 () Bool)

(declare-fun b!2850637 () Bool)

(assert (=> b!2850637 (= e!1806241 (and (inv!45964 (h!39356 zl!222)) e!1806240 tp!915784))))

(declare-fun b!2850638 () Bool)

(declare-fun e!1806236 () Bool)

(assert (=> b!2850638 (= e!1806236 e!1806244)))

(declare-fun res!1184926 () Bool)

(assert (=> b!2850638 (=> (not res!1184926) (not e!1806244))))

(assert (=> b!2850638 (= res!1184926 e!1806239)))

(declare-fun res!1184929 () Bool)

(assert (=> b!2850638 (=> res!1184929 e!1806239)))

(declare-fun lt!1013383 () Bool)

(assert (=> b!2850638 (= res!1184929 lt!1013383)))

(declare-fun prefixMatch!839 (Regex!8531 List!34059) Bool)

(assert (=> b!2850638 (= lt!1013383 (prefixMatch!839 r!5723 prefix!862))))

(declare-fun b!2850639 () Bool)

(declare-fun res!1184925 () Bool)

(assert (=> b!2850639 (=> (not res!1184925) (not e!1806236))))

(declare-fun unfocusZipper!203 (List!34060) Regex!8531)

(assert (=> b!2850639 (= res!1184925 (= r!5723 (unfocusZipper!203 zl!222)))))

(declare-fun b!2850640 () Bool)

(declare-fun tp!915782 () Bool)

(assert (=> b!2850640 (= e!1806242 tp!915782)))

(declare-fun b!2850629 () Bool)

(declare-fun res!1184930 () Bool)

(assert (=> b!2850629 (=> (not res!1184930) (not e!1806236))))

(declare-fun toList!1944 ((InoxSet Context!5082)) List!34060)

(assert (=> b!2850629 (= res!1184930 (= (toList!1944 z!809) zl!222))))

(declare-fun res!1184928 () Bool)

(assert (=> start!277662 (=> (not res!1184928) (not e!1806236))))

(declare-fun validRegex!3401 (Regex!8531) Bool)

(assert (=> start!277662 (= res!1184928 (validRegex!3401 r!5723))))

(assert (=> start!277662 e!1806236))

(assert (=> start!277662 e!1806238))

(declare-fun condSetEmpty!25096 () Bool)

(assert (=> start!277662 (= condSetEmpty!25096 (= z!809 ((as const (Array Context!5082 Bool)) false)))))

(assert (=> start!277662 setRes!25096))

(assert (=> start!277662 e!1806241))

(assert (=> start!277662 e!1806243))

(declare-fun b!2850641 () Bool)

(declare-fun res!1184927 () Bool)

(assert (=> b!2850641 (=> (not res!1184927) (not e!1806244))))

(assert (=> b!2850641 (= res!1184927 (not (prefixMatchZipper!263 z!809 prefix!862)))))

(declare-fun b!2850642 () Bool)

(declare-fun res!1184924 () Bool)

(assert (=> b!2850642 (=> (not res!1184924) (not e!1806244))))

(assert (=> b!2850642 (= res!1184924 lt!1013383)))

(assert (= (and start!277662 res!1184928) b!2850629))

(assert (= (and b!2850629 res!1184930) b!2850639))

(assert (= (and b!2850639 res!1184925) b!2850638))

(assert (= (and b!2850638 (not res!1184929)) b!2850628))

(assert (= (and b!2850638 res!1184926) b!2850642))

(assert (= (and b!2850642 res!1184924) b!2850641))

(assert (= (and b!2850641 res!1184927) b!2850633))

(assert (= (and b!2850633 (not res!1184923)) b!2850634))

(get-info :version)

(assert (= (and start!277662 ((_ is ElementMatch!8531) r!5723)) b!2850630))

(assert (= (and start!277662 ((_ is Concat!13852) r!5723)) b!2850635))

(assert (= (and start!277662 ((_ is Star!8531) r!5723)) b!2850636))

(assert (= (and start!277662 ((_ is Union!8531) r!5723)) b!2850631))

(assert (= (and start!277662 condSetEmpty!25096) setIsEmpty!25096))

(assert (= (and start!277662 (not condSetEmpty!25096)) setNonEmpty!25096))

(assert (= setNonEmpty!25096 b!2850640))

(assert (= b!2850637 b!2850627))

(assert (= (and start!277662 ((_ is Cons!33936) zl!222)) b!2850637))

(assert (= (and start!277662 ((_ is Cons!33935) prefix!862)) b!2850632))

(declare-fun m!3276719 () Bool)

(assert (=> start!277662 m!3276719))

(declare-fun m!3276721 () Bool)

(assert (=> b!2850628 m!3276721))

(declare-fun m!3276723 () Bool)

(assert (=> b!2850638 m!3276723))

(declare-fun m!3276725 () Bool)

(assert (=> b!2850634 m!3276725))

(assert (=> b!2850641 m!3276721))

(declare-fun m!3276727 () Bool)

(assert (=> setNonEmpty!25096 m!3276727))

(declare-fun m!3276729 () Bool)

(assert (=> b!2850629 m!3276729))

(declare-fun m!3276731 () Bool)

(assert (=> b!2850637 m!3276731))

(declare-fun m!3276733 () Bool)

(assert (=> b!2850639 m!3276733))

(assert (=> b!2850633 m!3276725))

(assert (=> b!2850633 m!3276725))

(declare-fun m!3276735 () Bool)

(assert (=> b!2850633 m!3276735))

(check-sat (not b!2850634) (not b!2850627) (not b!2850632) tp_is_empty!14799 (not b!2850639) (not b!2850631) (not setNonEmpty!25096) (not b!2850640) (not b!2850637) (not b!2850635) (not b!2850638) (not start!277662) (not b!2850633) (not b!2850636) (not b!2850629) (not b!2850641) (not b!2850628))
(check-sat)
