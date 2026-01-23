; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!538184 () Bool)

(assert start!538184)

(declare-fun setIsEmpty!29278 () Bool)

(declare-fun setRes!29278 () Bool)

(assert (=> setIsEmpty!29278 setRes!29278))

(declare-fun b!5103413 () Bool)

(declare-fun e!3182889 () Bool)

(declare-fun tp!1423531 () Bool)

(assert (=> b!5103413 (= e!3182889 tp!1423531)))

(declare-fun b!5103414 () Bool)

(declare-fun e!3182888 () Bool)

(declare-fun tp!1423532 () Bool)

(declare-fun tp!1423529 () Bool)

(assert (=> b!5103414 (= e!3182888 (and tp!1423532 tp!1423529))))

(declare-fun b!5103415 () Bool)

(declare-fun e!3182883 () Bool)

(declare-fun e!3182893 () Bool)

(assert (=> b!5103415 (= e!3182883 e!3182893)))

(declare-fun res!2172103 () Bool)

(assert (=> b!5103415 (=> (not res!2172103) (not e!3182893))))

(declare-datatypes ((C!28376 0))(
  ( (C!28377 (val!23840 Int)) )
))
(declare-datatypes ((List!58963 0))(
  ( (Nil!58839) (Cons!58839 (h!65287 C!28376) (t!371964 List!58963)) )
))
(declare-fun lt!2099440 () List!58963)

(declare-fun input!5654 () List!58963)

(assert (=> b!5103415 (= res!2172103 (= lt!2099440 input!5654))))

(declare-datatypes ((tuple2!63504 0))(
  ( (tuple2!63505 (_1!35055 List!58963) (_2!35055 List!58963)) )
))
(declare-fun lt!2099437 () tuple2!63504)

(declare-fun ++!12908 (List!58963 List!58963) List!58963)

(assert (=> b!5103415 (= lt!2099440 (++!12908 (_1!35055 lt!2099437) (_2!35055 lt!2099437)))))

(declare-fun b!5103416 () Bool)

(declare-fun e!3182885 () Bool)

(declare-fun e!3182880 () Bool)

(assert (=> b!5103416 (= e!3182885 e!3182880)))

(declare-fun res!2172094 () Bool)

(assert (=> b!5103416 (=> (not res!2172094) (not e!3182880))))

(declare-datatypes ((Regex!14059 0))(
  ( (ElementMatch!14059 (c!876749 C!28376)) (Concat!22904 (regOne!28630 Regex!14059) (regTwo!28630 Regex!14059)) (EmptyExpr!14059) (Star!14059 (reg!14388 Regex!14059)) (EmptyLang!14059) (Union!14059 (regOne!28631 Regex!14059) (regTwo!28631 Regex!14059)) )
))
(declare-datatypes ((List!58964 0))(
  ( (Nil!58840) (Cons!58840 (h!65288 Regex!14059) (t!371965 List!58964)) )
))
(declare-datatypes ((Context!6886 0))(
  ( (Context!6887 (exprs!3943 List!58964)) )
))
(declare-datatypes ((List!58965 0))(
  ( (Nil!58841) (Cons!58841 (h!65289 Context!6886) (t!371966 List!58965)) )
))
(declare-fun lt!2099433 () List!58965)

(declare-fun r!12920 () Regex!14059)

(declare-fun unfocusZipper!401 (List!58965) Regex!14059)

(assert (=> b!5103416 (= res!2172094 (= (unfocusZipper!401 lt!2099433) r!12920))))

(define-sort InoxSet (T) (Array T Bool))

(declare-fun z!4303 () (InoxSet Context!6886))

(declare-fun toList!8193 ((InoxSet Context!6886)) List!58965)

(assert (=> b!5103416 (= lt!2099433 (toList!8193 z!4303))))

(declare-fun b!5103417 () Bool)

(declare-fun e!3182890 () Bool)

(declare-fun e!3182891 () Bool)

(assert (=> b!5103417 (= e!3182890 e!3182891)))

(declare-fun res!2172095 () Bool)

(assert (=> b!5103417 (=> res!2172095 e!3182891)))

(declare-fun lt!2099431 () Int)

(declare-fun lt!2099430 () Int)

(assert (=> b!5103417 (= res!2172095 (or (> lt!2099431 lt!2099430) (<= lt!2099430 lt!2099431)))))

(declare-fun lt!2099436 () tuple2!63504)

(declare-fun size!39361 (List!58963) Int)

(assert (=> b!5103417 (= lt!2099430 (size!39361 (_1!35055 lt!2099436)))))

(assert (=> b!5103417 (= lt!2099431 (size!39361 (_1!35055 lt!2099437)))))

(declare-fun lt!2099438 () Bool)

(declare-fun matchR!6844 (Regex!14059 List!58963) Bool)

(assert (=> b!5103417 (= (matchR!6844 r!12920 (_1!35055 lt!2099436)) lt!2099438)))

(declare-datatypes ((Unit!149890 0))(
  ( (Unit!149891) )
))
(declare-fun lt!2099446 () Unit!149890)

(declare-fun theoremZipperRegexEquiv!223 ((InoxSet Context!6886) List!58965 Regex!14059 List!58963) Unit!149890)

(assert (=> b!5103417 (= lt!2099446 (theoremZipperRegexEquiv!223 z!4303 lt!2099433 r!12920 (_1!35055 lt!2099436)))))

(declare-fun lt!2099443 () Bool)

(declare-fun matchZipper!731 ((InoxSet Context!6886) List!58963) Bool)

(assert (=> b!5103417 (= lt!2099443 (matchZipper!731 z!4303 (_1!35055 lt!2099437)))))

(declare-fun lt!2099428 () Unit!149890)

(assert (=> b!5103417 (= lt!2099428 (theoremZipperRegexEquiv!223 z!4303 lt!2099433 r!12920 (_1!35055 lt!2099437)))))

(declare-fun b!5103418 () Bool)

(assert (=> b!5103418 (= e!3182880 e!3182883)))

(declare-fun res!2172102 () Bool)

(assert (=> b!5103418 (=> (not res!2172102) (not e!3182883))))

(declare-fun lt!2099429 () List!58963)

(assert (=> b!5103418 (= res!2172102 (= lt!2099429 input!5654))))

(assert (=> b!5103418 (= lt!2099429 (++!12908 (_1!35055 lt!2099436) (_2!35055 lt!2099436)))))

(declare-fun findLongestMatch!1889 (Regex!14059 List!58963) tuple2!63504)

(assert (=> b!5103418 (= lt!2099437 (findLongestMatch!1889 r!12920 input!5654))))

(declare-fun findLongestMatchZipper!83 ((InoxSet Context!6886) List!58963) tuple2!63504)

(assert (=> b!5103418 (= lt!2099436 (findLongestMatchZipper!83 z!4303 input!5654))))

(declare-fun res!2172104 () Bool)

(assert (=> start!538184 (=> (not res!2172104) (not e!3182885))))

(declare-fun validRegex!6186 (Regex!14059) Bool)

(assert (=> start!538184 (= res!2172104 (validRegex!6186 r!12920))))

(assert (=> start!538184 e!3182885))

(assert (=> start!538184 e!3182888))

(declare-fun condSetEmpty!29278 () Bool)

(assert (=> start!538184 (= condSetEmpty!29278 (= z!4303 ((as const (Array Context!6886 Bool)) false)))))

(assert (=> start!538184 setRes!29278))

(declare-fun e!3182892 () Bool)

(assert (=> start!538184 e!3182892))

(declare-fun b!5103419 () Bool)

(declare-fun isPrefix!5460 (List!58963 List!58963) Bool)

(assert (=> b!5103419 (= e!3182891 (isPrefix!5460 (_1!35055 lt!2099437) input!5654))))

(declare-fun b!5103420 () Bool)

(declare-fun tp!1423530 () Bool)

(assert (=> b!5103420 (= e!3182888 tp!1423530)))

(declare-fun b!5103421 () Bool)

(declare-fun e!3182881 () Bool)

(declare-fun isEmpty!31804 (List!58963) Bool)

(assert (=> b!5103421 (= e!3182881 (not (isEmpty!31804 (_1!35055 lt!2099437))))))

(declare-fun b!5103422 () Bool)

(declare-fun tp_is_empty!37383 () Bool)

(declare-fun tp!1423528 () Bool)

(assert (=> b!5103422 (= e!3182892 (and tp_is_empty!37383 tp!1423528))))

(declare-fun b!5103423 () Bool)

(assert (=> b!5103423 (= e!3182888 tp_is_empty!37383)))

(declare-fun b!5103424 () Bool)

(declare-fun e!3182882 () Bool)

(assert (=> b!5103424 (= e!3182893 (not e!3182882))))

(declare-fun res!2172098 () Bool)

(assert (=> b!5103424 (=> res!2172098 e!3182882)))

(declare-fun e!3182884 () Bool)

(assert (=> b!5103424 (= res!2172098 e!3182884)))

(declare-fun res!2172096 () Bool)

(assert (=> b!5103424 (=> (not res!2172096) (not e!3182884))))

(assert (=> b!5103424 (= res!2172096 (not lt!2099438))))

(assert (=> b!5103424 (= lt!2099438 (matchZipper!731 z!4303 (_1!35055 lt!2099436)))))

(declare-fun e!3182887 () Bool)

(assert (=> b!5103424 e!3182887))

(declare-fun res!2172101 () Bool)

(assert (=> b!5103424 (=> res!2172101 e!3182887)))

(declare-fun lt!2099435 () tuple2!63504)

(assert (=> b!5103424 (= res!2172101 (isEmpty!31804 (_1!35055 lt!2099435)))))

(declare-fun lt!2099441 () Int)

(declare-fun lt!2099439 () Int)

(declare-fun findLongestMatchInner!2072 (Regex!14059 List!58963 Int List!58963 List!58963 Int) tuple2!63504)

(assert (=> b!5103424 (= lt!2099435 (findLongestMatchInner!2072 r!12920 Nil!58839 lt!2099441 input!5654 input!5654 lt!2099439))))

(declare-fun lt!2099445 () Unit!149890)

(declare-fun longestMatchIsAcceptedByMatchOrIsEmpty!2064 (Regex!14059 List!58963) Unit!149890)

(assert (=> b!5103424 (= lt!2099445 (longestMatchIsAcceptedByMatchOrIsEmpty!2064 r!12920 input!5654))))

(declare-fun e!3182886 () Bool)

(assert (=> b!5103424 e!3182886))

(declare-fun res!2172099 () Bool)

(assert (=> b!5103424 (=> res!2172099 e!3182886)))

(declare-fun lt!2099442 () tuple2!63504)

(assert (=> b!5103424 (= res!2172099 (isEmpty!31804 (_1!35055 lt!2099442)))))

(declare-fun findLongestMatchInnerZipper!133 ((InoxSet Context!6886) List!58963 Int List!58963 List!58963 Int) tuple2!63504)

(assert (=> b!5103424 (= lt!2099442 (findLongestMatchInnerZipper!133 z!4303 Nil!58839 lt!2099441 input!5654 input!5654 lt!2099439))))

(assert (=> b!5103424 (= lt!2099439 (size!39361 input!5654))))

(assert (=> b!5103424 (= lt!2099441 (size!39361 Nil!58839))))

(declare-fun lt!2099444 () Unit!149890)

(declare-fun longestMatchIsAcceptedByMatchOrIsEmpty!2065 ((InoxSet Context!6886) List!58963) Unit!149890)

(assert (=> b!5103424 (= lt!2099444 (longestMatchIsAcceptedByMatchOrIsEmpty!2065 z!4303 input!5654))))

(assert (=> b!5103424 (isPrefix!5460 (_1!35055 lt!2099437) lt!2099440)))

(declare-fun lt!2099434 () Unit!149890)

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!3518 (List!58963 List!58963) Unit!149890)

(assert (=> b!5103424 (= lt!2099434 (lemmaConcatTwoListThenFirstIsPrefix!3518 (_1!35055 lt!2099437) (_2!35055 lt!2099437)))))

(assert (=> b!5103424 (isPrefix!5460 (_1!35055 lt!2099436) lt!2099429)))

(declare-fun lt!2099432 () Unit!149890)

(assert (=> b!5103424 (= lt!2099432 (lemmaConcatTwoListThenFirstIsPrefix!3518 (_1!35055 lt!2099436) (_2!35055 lt!2099436)))))

(declare-fun setElem!29278 () Context!6886)

(declare-fun tp!1423534 () Bool)

(declare-fun setNonEmpty!29278 () Bool)

(declare-fun inv!78322 (Context!6886) Bool)

(assert (=> setNonEmpty!29278 (= setRes!29278 (and tp!1423534 (inv!78322 setElem!29278) e!3182889))))

(declare-fun setRest!29278 () (InoxSet Context!6886))

(assert (=> setNonEmpty!29278 (= z!4303 ((_ map or) (store ((as const (Array Context!6886 Bool)) false) setElem!29278 true) setRest!29278))))

(declare-fun b!5103425 () Bool)

(assert (=> b!5103425 (= e!3182884 (not (isEmpty!31804 (_1!35055 lt!2099436))))))

(declare-fun b!5103426 () Bool)

(assert (=> b!5103426 (= e!3182882 e!3182890)))

(declare-fun res!2172097 () Bool)

(assert (=> b!5103426 (=> res!2172097 e!3182890)))

(assert (=> b!5103426 (= res!2172097 e!3182881)))

(declare-fun res!2172100 () Bool)

(assert (=> b!5103426 (=> (not res!2172100) (not e!3182881))))

(assert (=> b!5103426 (= res!2172100 (not lt!2099443))))

(assert (=> b!5103426 (= lt!2099443 (matchR!6844 r!12920 (_1!35055 lt!2099437)))))

(declare-fun b!5103427 () Bool)

(declare-fun tp!1423533 () Bool)

(declare-fun tp!1423535 () Bool)

(assert (=> b!5103427 (= e!3182888 (and tp!1423533 tp!1423535))))

(declare-fun b!5103428 () Bool)

(assert (=> b!5103428 (= e!3182886 (matchZipper!731 z!4303 (_1!35055 lt!2099442)))))

(declare-fun b!5103429 () Bool)

(assert (=> b!5103429 (= e!3182887 (matchR!6844 r!12920 (_1!35055 lt!2099435)))))

(assert (= (and start!538184 res!2172104) b!5103416))

(assert (= (and b!5103416 res!2172094) b!5103418))

(assert (= (and b!5103418 res!2172102) b!5103415))

(assert (= (and b!5103415 res!2172103) b!5103424))

(assert (= (and b!5103424 (not res!2172099)) b!5103428))

(assert (= (and b!5103424 (not res!2172101)) b!5103429))

(assert (= (and b!5103424 res!2172096) b!5103425))

(assert (= (and b!5103424 (not res!2172098)) b!5103426))

(assert (= (and b!5103426 res!2172100) b!5103421))

(assert (= (and b!5103426 (not res!2172097)) b!5103417))

(assert (= (and b!5103417 (not res!2172095)) b!5103419))

(get-info :version)

(assert (= (and start!538184 ((_ is ElementMatch!14059) r!12920)) b!5103423))

(assert (= (and start!538184 ((_ is Concat!22904) r!12920)) b!5103414))

(assert (= (and start!538184 ((_ is Star!14059) r!12920)) b!5103420))

(assert (= (and start!538184 ((_ is Union!14059) r!12920)) b!5103427))

(assert (= (and start!538184 condSetEmpty!29278) setIsEmpty!29278))

(assert (= (and start!538184 (not condSetEmpty!29278)) setNonEmpty!29278))

(assert (= setNonEmpty!29278 b!5103413))

(assert (= (and start!538184 ((_ is Cons!58839) input!5654)) b!5103422))

(declare-fun m!6160708 () Bool)

(assert (=> b!5103425 m!6160708))

(declare-fun m!6160710 () Bool)

(assert (=> b!5103415 m!6160710))

(declare-fun m!6160712 () Bool)

(assert (=> b!5103418 m!6160712))

(declare-fun m!6160714 () Bool)

(assert (=> b!5103418 m!6160714))

(declare-fun m!6160716 () Bool)

(assert (=> b!5103418 m!6160716))

(declare-fun m!6160718 () Bool)

(assert (=> b!5103416 m!6160718))

(declare-fun m!6160720 () Bool)

(assert (=> b!5103416 m!6160720))

(declare-fun m!6160722 () Bool)

(assert (=> start!538184 m!6160722))

(declare-fun m!6160724 () Bool)

(assert (=> setNonEmpty!29278 m!6160724))

(declare-fun m!6160726 () Bool)

(assert (=> b!5103429 m!6160726))

(declare-fun m!6160728 () Bool)

(assert (=> b!5103421 m!6160728))

(declare-fun m!6160730 () Bool)

(assert (=> b!5103417 m!6160730))

(declare-fun m!6160732 () Bool)

(assert (=> b!5103417 m!6160732))

(declare-fun m!6160734 () Bool)

(assert (=> b!5103417 m!6160734))

(declare-fun m!6160736 () Bool)

(assert (=> b!5103417 m!6160736))

(declare-fun m!6160738 () Bool)

(assert (=> b!5103417 m!6160738))

(declare-fun m!6160740 () Bool)

(assert (=> b!5103417 m!6160740))

(declare-fun m!6160742 () Bool)

(assert (=> b!5103419 m!6160742))

(declare-fun m!6160744 () Bool)

(assert (=> b!5103428 m!6160744))

(declare-fun m!6160746 () Bool)

(assert (=> b!5103424 m!6160746))

(declare-fun m!6160748 () Bool)

(assert (=> b!5103424 m!6160748))

(declare-fun m!6160750 () Bool)

(assert (=> b!5103424 m!6160750))

(declare-fun m!6160752 () Bool)

(assert (=> b!5103424 m!6160752))

(declare-fun m!6160754 () Bool)

(assert (=> b!5103424 m!6160754))

(declare-fun m!6160756 () Bool)

(assert (=> b!5103424 m!6160756))

(declare-fun m!6160758 () Bool)

(assert (=> b!5103424 m!6160758))

(declare-fun m!6160760 () Bool)

(assert (=> b!5103424 m!6160760))

(declare-fun m!6160762 () Bool)

(assert (=> b!5103424 m!6160762))

(declare-fun m!6160764 () Bool)

(assert (=> b!5103424 m!6160764))

(declare-fun m!6160766 () Bool)

(assert (=> b!5103424 m!6160766))

(declare-fun m!6160768 () Bool)

(assert (=> b!5103424 m!6160768))

(declare-fun m!6160770 () Bool)

(assert (=> b!5103424 m!6160770))

(declare-fun m!6160772 () Bool)

(assert (=> b!5103426 m!6160772))

(check-sat (not b!5103416) (not b!5103419) tp_is_empty!37383 (not start!538184) (not b!5103429) (not b!5103425) (not b!5103420) (not b!5103428) (not b!5103414) (not b!5103422) (not setNonEmpty!29278) (not b!5103413) (not b!5103426) (not b!5103421) (not b!5103424) (not b!5103427) (not b!5103417) (not b!5103418) (not b!5103415))
(check-sat)
