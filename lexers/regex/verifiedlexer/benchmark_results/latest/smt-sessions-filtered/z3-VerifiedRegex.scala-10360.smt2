; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!537756 () Bool)

(assert start!537756)

(declare-fun b!5098718 () Bool)

(declare-fun e!3179827 () Bool)

(declare-fun e!3179828 () Bool)

(assert (=> b!5098718 (= e!3179827 e!3179828)))

(declare-fun res!2169902 () Bool)

(assert (=> b!5098718 (=> (not res!2169902) (not e!3179828))))

(declare-datatypes ((C!28288 0))(
  ( (C!28289 (val!23796 Int)) )
))
(declare-datatypes ((List!58831 0))(
  ( (Nil!58707) (Cons!58707 (h!65155 C!28288) (t!371832 List!58831)) )
))
(declare-fun lt!2095253 () List!58831)

(declare-fun input!5654 () List!58831)

(assert (=> b!5098718 (= res!2169902 (= lt!2095253 input!5654))))

(declare-datatypes ((tuple2!63416 0))(
  ( (tuple2!63417 (_1!35011 List!58831) (_2!35011 List!58831)) )
))
(declare-fun lt!2095256 () tuple2!63416)

(declare-fun ++!12864 (List!58831 List!58831) List!58831)

(assert (=> b!5098718 (= lt!2095253 (++!12864 (_1!35011 lt!2095256) (_2!35011 lt!2095256)))))

(declare-fun lt!2095252 () tuple2!63416)

(declare-datatypes ((Regex!14015 0))(
  ( (ElementMatch!14015 (c!876121 C!28288)) (Concat!22860 (regOne!28542 Regex!14015) (regTwo!28542 Regex!14015)) (EmptyExpr!14015) (Star!14015 (reg!14344 Regex!14015)) (EmptyLang!14015) (Union!14015 (regOne!28543 Regex!14015) (regTwo!28543 Regex!14015)) )
))
(declare-fun r!12920 () Regex!14015)

(declare-fun findLongestMatch!1845 (Regex!14015 List!58831) tuple2!63416)

(assert (=> b!5098718 (= lt!2095252 (findLongestMatch!1845 r!12920 input!5654))))

(define-sort InoxSet (T) (Array T Bool))

(declare-datatypes ((List!58832 0))(
  ( (Nil!58708) (Cons!58708 (h!65156 Regex!14015) (t!371833 List!58832)) )
))
(declare-datatypes ((Context!6798 0))(
  ( (Context!6799 (exprs!3899 List!58832)) )
))
(declare-fun z!4303 () (InoxSet Context!6798))

(declare-fun findLongestMatchZipper!39 ((InoxSet Context!6798) List!58831) tuple2!63416)

(assert (=> b!5098718 (= lt!2095256 (findLongestMatchZipper!39 z!4303 input!5654))))

(declare-fun b!5098719 () Bool)

(declare-fun e!3179826 () Bool)

(declare-fun tp!1421875 () Bool)

(assert (=> b!5098719 (= e!3179826 tp!1421875)))

(declare-fun b!5098720 () Bool)

(declare-fun e!3179825 () Bool)

(assert (=> b!5098720 (= e!3179825 (not true))))

(declare-fun lt!2095261 () Bool)

(declare-fun matchZipper!691 ((InoxSet Context!6798) List!58831) Bool)

(assert (=> b!5098720 (= lt!2095261 (matchZipper!691 z!4303 (_1!35011 lt!2095256)))))

(declare-fun e!3179829 () Bool)

(assert (=> b!5098720 e!3179829))

(declare-fun res!2169904 () Bool)

(assert (=> b!5098720 (=> res!2169904 e!3179829)))

(declare-fun lt!2095258 () tuple2!63416)

(declare-fun isEmpty!31764 (List!58831) Bool)

(assert (=> b!5098720 (= res!2169904 (isEmpty!31764 (_1!35011 lt!2095258)))))

(declare-fun lt!2095255 () Int)

(declare-fun lt!2095257 () Int)

(declare-fun findLongestMatchInner!2028 (Regex!14015 List!58831 Int List!58831 List!58831 Int) tuple2!63416)

(assert (=> b!5098720 (= lt!2095258 (findLongestMatchInner!2028 r!12920 Nil!58707 lt!2095257 input!5654 input!5654 lt!2095255))))

(declare-datatypes ((Unit!149754 0))(
  ( (Unit!149755) )
))
(declare-fun lt!2095254 () Unit!149754)

(declare-fun longestMatchIsAcceptedByMatchOrIsEmpty!1984 (Regex!14015 List!58831) Unit!149754)

(assert (=> b!5098720 (= lt!2095254 (longestMatchIsAcceptedByMatchOrIsEmpty!1984 r!12920 input!5654))))

(declare-fun e!3179823 () Bool)

(assert (=> b!5098720 e!3179823))

(declare-fun res!2169900 () Bool)

(assert (=> b!5098720 (=> res!2169900 e!3179823)))

(declare-fun lt!2095262 () tuple2!63416)

(assert (=> b!5098720 (= res!2169900 (isEmpty!31764 (_1!35011 lt!2095262)))))

(declare-fun findLongestMatchInnerZipper!89 ((InoxSet Context!6798) List!58831 Int List!58831 List!58831 Int) tuple2!63416)

(assert (=> b!5098720 (= lt!2095262 (findLongestMatchInnerZipper!89 z!4303 Nil!58707 lt!2095257 input!5654 input!5654 lt!2095255))))

(declare-fun size!39317 (List!58831) Int)

(assert (=> b!5098720 (= lt!2095255 (size!39317 input!5654))))

(assert (=> b!5098720 (= lt!2095257 (size!39317 Nil!58707))))

(declare-fun lt!2095259 () Unit!149754)

(declare-fun longestMatchIsAcceptedByMatchOrIsEmpty!1985 ((InoxSet Context!6798) List!58831) Unit!149754)

(assert (=> b!5098720 (= lt!2095259 (longestMatchIsAcceptedByMatchOrIsEmpty!1985 z!4303 input!5654))))

(declare-fun lt!2095263 () List!58831)

(declare-fun isPrefix!5420 (List!58831 List!58831) Bool)

(assert (=> b!5098720 (isPrefix!5420 (_1!35011 lt!2095252) lt!2095263)))

(declare-fun lt!2095260 () Unit!149754)

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!3478 (List!58831 List!58831) Unit!149754)

(assert (=> b!5098720 (= lt!2095260 (lemmaConcatTwoListThenFirstIsPrefix!3478 (_1!35011 lt!2095252) (_2!35011 lt!2095252)))))

(assert (=> b!5098720 (isPrefix!5420 (_1!35011 lt!2095256) lt!2095253)))

(declare-fun lt!2095264 () Unit!149754)

(assert (=> b!5098720 (= lt!2095264 (lemmaConcatTwoListThenFirstIsPrefix!3478 (_1!35011 lt!2095256) (_2!35011 lt!2095256)))))

(declare-fun b!5098721 () Bool)

(declare-fun tp!1421872 () Bool)

(declare-fun tp!1421876 () Bool)

(assert (=> b!5098721 (= e!3179826 (and tp!1421872 tp!1421876))))

(declare-fun b!5098723 () Bool)

(declare-fun e!3179824 () Bool)

(declare-fun tp_is_empty!37295 () Bool)

(declare-fun tp!1421874 () Bool)

(assert (=> b!5098723 (= e!3179824 (and tp_is_empty!37295 tp!1421874))))

(declare-fun tp!1421879 () Bool)

(declare-fun setElem!29110 () Context!6798)

(declare-fun setNonEmpty!29110 () Bool)

(declare-fun setRes!29110 () Bool)

(declare-fun e!3179822 () Bool)

(declare-fun inv!78212 (Context!6798) Bool)

(assert (=> setNonEmpty!29110 (= setRes!29110 (and tp!1421879 (inv!78212 setElem!29110) e!3179822))))

(declare-fun setRest!29110 () (InoxSet Context!6798))

(assert (=> setNonEmpty!29110 (= z!4303 ((_ map or) (store ((as const (Array Context!6798 Bool)) false) setElem!29110 true) setRest!29110))))

(declare-fun b!5098724 () Bool)

(assert (=> b!5098724 (= e!3179826 tp_is_empty!37295)))

(declare-fun b!5098725 () Bool)

(assert (=> b!5098725 (= e!3179823 (matchZipper!691 z!4303 (_1!35011 lt!2095262)))))

(declare-fun b!5098726 () Bool)

(assert (=> b!5098726 (= e!3179828 e!3179825)))

(declare-fun res!2169899 () Bool)

(assert (=> b!5098726 (=> (not res!2169899) (not e!3179825))))

(assert (=> b!5098726 (= res!2169899 (= lt!2095263 input!5654))))

(assert (=> b!5098726 (= lt!2095263 (++!12864 (_1!35011 lt!2095252) (_2!35011 lt!2095252)))))

(declare-fun b!5098727 () Bool)

(declare-fun res!2169903 () Bool)

(assert (=> b!5098727 (=> (not res!2169903) (not e!3179827))))

(declare-datatypes ((List!58833 0))(
  ( (Nil!58709) (Cons!58709 (h!65157 Context!6798) (t!371834 List!58833)) )
))
(declare-fun unfocusZipper!357 (List!58833) Regex!14015)

(declare-fun toList!8149 ((InoxSet Context!6798)) List!58833)

(assert (=> b!5098727 (= res!2169903 (= (unfocusZipper!357 (toList!8149 z!4303)) r!12920))))

(declare-fun b!5098728 () Bool)

(declare-fun tp!1421878 () Bool)

(assert (=> b!5098728 (= e!3179822 tp!1421878)))

(declare-fun res!2169901 () Bool)

(assert (=> start!537756 (=> (not res!2169901) (not e!3179827))))

(declare-fun validRegex!6142 (Regex!14015) Bool)

(assert (=> start!537756 (= res!2169901 (validRegex!6142 r!12920))))

(assert (=> start!537756 e!3179827))

(assert (=> start!537756 e!3179826))

(declare-fun condSetEmpty!29110 () Bool)

(assert (=> start!537756 (= condSetEmpty!29110 (= z!4303 ((as const (Array Context!6798 Bool)) false)))))

(assert (=> start!537756 setRes!29110))

(assert (=> start!537756 e!3179824))

(declare-fun b!5098722 () Bool)

(declare-fun tp!1421877 () Bool)

(declare-fun tp!1421873 () Bool)

(assert (=> b!5098722 (= e!3179826 (and tp!1421877 tp!1421873))))

(declare-fun b!5098729 () Bool)

(declare-fun matchR!6804 (Regex!14015 List!58831) Bool)

(assert (=> b!5098729 (= e!3179829 (matchR!6804 r!12920 (_1!35011 lt!2095258)))))

(declare-fun setIsEmpty!29110 () Bool)

(assert (=> setIsEmpty!29110 setRes!29110))

(assert (= (and start!537756 res!2169901) b!5098727))

(assert (= (and b!5098727 res!2169903) b!5098718))

(assert (= (and b!5098718 res!2169902) b!5098726))

(assert (= (and b!5098726 res!2169899) b!5098720))

(assert (= (and b!5098720 (not res!2169900)) b!5098725))

(assert (= (and b!5098720 (not res!2169904)) b!5098729))

(get-info :version)

(assert (= (and start!537756 ((_ is ElementMatch!14015) r!12920)) b!5098724))

(assert (= (and start!537756 ((_ is Concat!22860) r!12920)) b!5098721))

(assert (= (and start!537756 ((_ is Star!14015) r!12920)) b!5098719))

(assert (= (and start!537756 ((_ is Union!14015) r!12920)) b!5098722))

(assert (= (and start!537756 condSetEmpty!29110) setIsEmpty!29110))

(assert (= (and start!537756 (not condSetEmpty!29110)) setNonEmpty!29110))

(assert (= setNonEmpty!29110 b!5098728))

(assert (= (and start!537756 ((_ is Cons!58707) input!5654)) b!5098723))

(declare-fun m!6155968 () Bool)

(assert (=> b!5098729 m!6155968))

(declare-fun m!6155970 () Bool)

(assert (=> b!5098720 m!6155970))

(declare-fun m!6155972 () Bool)

(assert (=> b!5098720 m!6155972))

(declare-fun m!6155974 () Bool)

(assert (=> b!5098720 m!6155974))

(declare-fun m!6155976 () Bool)

(assert (=> b!5098720 m!6155976))

(declare-fun m!6155978 () Bool)

(assert (=> b!5098720 m!6155978))

(declare-fun m!6155980 () Bool)

(assert (=> b!5098720 m!6155980))

(declare-fun m!6155982 () Bool)

(assert (=> b!5098720 m!6155982))

(declare-fun m!6155984 () Bool)

(assert (=> b!5098720 m!6155984))

(declare-fun m!6155986 () Bool)

(assert (=> b!5098720 m!6155986))

(declare-fun m!6155988 () Bool)

(assert (=> b!5098720 m!6155988))

(declare-fun m!6155990 () Bool)

(assert (=> b!5098720 m!6155990))

(declare-fun m!6155992 () Bool)

(assert (=> b!5098720 m!6155992))

(declare-fun m!6155994 () Bool)

(assert (=> b!5098720 m!6155994))

(declare-fun m!6155996 () Bool)

(assert (=> start!537756 m!6155996))

(declare-fun m!6155998 () Bool)

(assert (=> b!5098718 m!6155998))

(declare-fun m!6156000 () Bool)

(assert (=> b!5098718 m!6156000))

(declare-fun m!6156002 () Bool)

(assert (=> b!5098718 m!6156002))

(declare-fun m!6156004 () Bool)

(assert (=> b!5098727 m!6156004))

(assert (=> b!5098727 m!6156004))

(declare-fun m!6156006 () Bool)

(assert (=> b!5098727 m!6156006))

(declare-fun m!6156008 () Bool)

(assert (=> b!5098726 m!6156008))

(declare-fun m!6156010 () Bool)

(assert (=> b!5098725 m!6156010))

(declare-fun m!6156012 () Bool)

(assert (=> setNonEmpty!29110 m!6156012))

(check-sat (not b!5098723) (not b!5098726) (not b!5098728) (not b!5098722) (not b!5098720) (not b!5098721) (not setNonEmpty!29110) (not b!5098719) tp_is_empty!37295 (not b!5098725) (not b!5098729) (not start!537756) (not b!5098718) (not b!5098727))
(check-sat)
