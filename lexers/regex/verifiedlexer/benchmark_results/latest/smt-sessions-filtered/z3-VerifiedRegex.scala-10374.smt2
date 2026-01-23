; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!538004 () Bool)

(assert start!538004)

(declare-fun b!5101402 () Bool)

(declare-fun e!3181569 () Bool)

(declare-fun tp_is_empty!37351 () Bool)

(declare-fun tp!1422951 () Bool)

(assert (=> b!5101402 (= e!3181569 (and tp_is_empty!37351 tp!1422951))))

(declare-fun b!5101403 () Bool)

(declare-fun e!3181565 () Bool)

(declare-fun tp!1422946 () Bool)

(declare-fun tp!1422950 () Bool)

(assert (=> b!5101403 (= e!3181565 (and tp!1422946 tp!1422950))))

(declare-fun b!5101404 () Bool)

(declare-fun tp!1422947 () Bool)

(assert (=> b!5101404 (= e!3181565 tp!1422947)))

(declare-fun b!5101405 () Bool)

(declare-fun e!3181571 () Bool)

(declare-fun e!3181572 () Bool)

(assert (=> b!5101405 (= e!3181571 e!3181572)))

(declare-fun res!2171129 () Bool)

(assert (=> b!5101405 (=> (not res!2171129) (not e!3181572))))

(declare-datatypes ((C!28344 0))(
  ( (C!28345 (val!23824 Int)) )
))
(declare-datatypes ((List!58915 0))(
  ( (Nil!58791) (Cons!58791 (h!65239 C!28344) (t!371916 List!58915)) )
))
(declare-fun lt!2097618 () List!58915)

(declare-fun input!5654 () List!58915)

(assert (=> b!5101405 (= res!2171129 (= lt!2097618 input!5654))))

(declare-datatypes ((tuple2!63472 0))(
  ( (tuple2!63473 (_1!35039 List!58915) (_2!35039 List!58915)) )
))
(declare-fun lt!2097612 () tuple2!63472)

(declare-fun ++!12892 (List!58915 List!58915) List!58915)

(assert (=> b!5101405 (= lt!2097618 (++!12892 (_1!35039 lt!2097612) (_2!35039 lt!2097612)))))

(declare-fun lt!2097614 () tuple2!63472)

(declare-datatypes ((Regex!14043 0))(
  ( (ElementMatch!14043 (c!876445 C!28344)) (Concat!22888 (regOne!28598 Regex!14043) (regTwo!28598 Regex!14043)) (EmptyExpr!14043) (Star!14043 (reg!14372 Regex!14043)) (EmptyLang!14043) (Union!14043 (regOne!28599 Regex!14043) (regTwo!28599 Regex!14043)) )
))
(declare-fun r!12920 () Regex!14043)

(declare-fun findLongestMatch!1873 (Regex!14043 List!58915) tuple2!63472)

(assert (=> b!5101405 (= lt!2097614 (findLongestMatch!1873 r!12920 input!5654))))

(define-sort InoxSet (T) (Array T Bool))

(declare-datatypes ((List!58916 0))(
  ( (Nil!58792) (Cons!58792 (h!65240 Regex!14043) (t!371917 List!58916)) )
))
(declare-datatypes ((Context!6854 0))(
  ( (Context!6855 (exprs!3927 List!58916)) )
))
(declare-fun z!4303 () (InoxSet Context!6854))

(declare-fun findLongestMatchZipper!67 ((InoxSet Context!6854) List!58915) tuple2!63472)

(assert (=> b!5101405 (= lt!2097612 (findLongestMatchZipper!67 z!4303 input!5654))))

(declare-fun b!5101406 () Bool)

(declare-fun e!3181568 () Bool)

(declare-fun tp!1422944 () Bool)

(assert (=> b!5101406 (= e!3181568 tp!1422944)))

(declare-fun setIsEmpty!29218 () Bool)

(declare-fun setRes!29218 () Bool)

(assert (=> setIsEmpty!29218 setRes!29218))

(declare-fun res!2171133 () Bool)

(declare-fun e!3181567 () Bool)

(assert (=> start!538004 (=> (not res!2171133) (not e!3181567))))

(declare-fun validRegex!6170 (Regex!14043) Bool)

(assert (=> start!538004 (= res!2171133 (validRegex!6170 r!12920))))

(assert (=> start!538004 e!3181567))

(assert (=> start!538004 e!3181565))

(declare-fun condSetEmpty!29218 () Bool)

(assert (=> start!538004 (= condSetEmpty!29218 (= z!4303 ((as const (Array Context!6854 Bool)) false)))))

(assert (=> start!538004 setRes!29218))

(assert (=> start!538004 e!3181569))

(declare-fun b!5101407 () Bool)

(declare-fun e!3181570 () Bool)

(declare-fun e!3181574 () Bool)

(assert (=> b!5101407 (= e!3181570 (not e!3181574))))

(declare-fun res!2171135 () Bool)

(assert (=> b!5101407 (=> res!2171135 e!3181574)))

(declare-fun e!3181564 () Bool)

(assert (=> b!5101407 (= res!2171135 e!3181564)))

(declare-fun res!2171134 () Bool)

(assert (=> b!5101407 (=> (not res!2171134) (not e!3181564))))

(declare-fun matchZipper!715 ((InoxSet Context!6854) List!58915) Bool)

(assert (=> b!5101407 (= res!2171134 (not (matchZipper!715 z!4303 (_1!35039 lt!2097612))))))

(declare-fun e!3181575 () Bool)

(assert (=> b!5101407 e!3181575))

(declare-fun res!2171128 () Bool)

(assert (=> b!5101407 (=> res!2171128 e!3181575)))

(declare-fun lt!2097611 () tuple2!63472)

(declare-fun isEmpty!31788 (List!58915) Bool)

(assert (=> b!5101407 (= res!2171128 (isEmpty!31788 (_1!35039 lt!2097611)))))

(declare-fun lt!2097607 () Int)

(declare-fun lt!2097608 () Int)

(declare-fun findLongestMatchInner!2056 (Regex!14043 List!58915 Int List!58915 List!58915 Int) tuple2!63472)

(assert (=> b!5101407 (= lt!2097611 (findLongestMatchInner!2056 r!12920 Nil!58791 lt!2097608 input!5654 input!5654 lt!2097607))))

(declare-datatypes ((Unit!149834 0))(
  ( (Unit!149835) )
))
(declare-fun lt!2097617 () Unit!149834)

(declare-fun longestMatchIsAcceptedByMatchOrIsEmpty!2032 (Regex!14043 List!58915) Unit!149834)

(assert (=> b!5101407 (= lt!2097617 (longestMatchIsAcceptedByMatchOrIsEmpty!2032 r!12920 input!5654))))

(declare-fun e!3181573 () Bool)

(assert (=> b!5101407 e!3181573))

(declare-fun res!2171132 () Bool)

(assert (=> b!5101407 (=> res!2171132 e!3181573)))

(declare-fun lt!2097613 () tuple2!63472)

(assert (=> b!5101407 (= res!2171132 (isEmpty!31788 (_1!35039 lt!2097613)))))

(declare-fun findLongestMatchInnerZipper!117 ((InoxSet Context!6854) List!58915 Int List!58915 List!58915 Int) tuple2!63472)

(assert (=> b!5101407 (= lt!2097613 (findLongestMatchInnerZipper!117 z!4303 Nil!58791 lt!2097608 input!5654 input!5654 lt!2097607))))

(declare-fun size!39345 (List!58915) Int)

(assert (=> b!5101407 (= lt!2097607 (size!39345 input!5654))))

(assert (=> b!5101407 (= lt!2097608 (size!39345 Nil!58791))))

(declare-fun lt!2097610 () Unit!149834)

(declare-fun longestMatchIsAcceptedByMatchOrIsEmpty!2033 ((InoxSet Context!6854) List!58915) Unit!149834)

(assert (=> b!5101407 (= lt!2097610 (longestMatchIsAcceptedByMatchOrIsEmpty!2033 z!4303 input!5654))))

(declare-fun lt!2097609 () List!58915)

(declare-fun isPrefix!5444 (List!58915 List!58915) Bool)

(assert (=> b!5101407 (isPrefix!5444 (_1!35039 lt!2097614) lt!2097609)))

(declare-fun lt!2097615 () Unit!149834)

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!3502 (List!58915 List!58915) Unit!149834)

(assert (=> b!5101407 (= lt!2097615 (lemmaConcatTwoListThenFirstIsPrefix!3502 (_1!35039 lt!2097614) (_2!35039 lt!2097614)))))

(assert (=> b!5101407 (isPrefix!5444 (_1!35039 lt!2097612) lt!2097618)))

(declare-fun lt!2097606 () Unit!149834)

(assert (=> b!5101407 (= lt!2097606 (lemmaConcatTwoListThenFirstIsPrefix!3502 (_1!35039 lt!2097612) (_2!35039 lt!2097612)))))

(declare-fun b!5101408 () Bool)

(declare-fun tp!1422948 () Bool)

(declare-fun tp!1422949 () Bool)

(assert (=> b!5101408 (= e!3181565 (and tp!1422948 tp!1422949))))

(declare-fun b!5101409 () Bool)

(declare-fun lt!2097616 () Regex!14043)

(assert (=> b!5101409 (= e!3181574 (= r!12920 lt!2097616))))

(declare-fun b!5101410 () Bool)

(declare-fun matchR!6828 (Regex!14043 List!58915) Bool)

(assert (=> b!5101410 (= e!3181575 (matchR!6828 r!12920 (_1!35039 lt!2097611)))))

(declare-fun b!5101411 () Bool)

(declare-fun e!3181566 () Bool)

(assert (=> b!5101411 (= e!3181566 (not (isEmpty!31788 (_1!35039 lt!2097614))))))

(declare-fun setNonEmpty!29218 () Bool)

(declare-fun setElem!29218 () Context!6854)

(declare-fun tp!1422945 () Bool)

(declare-fun inv!78282 (Context!6854) Bool)

(assert (=> setNonEmpty!29218 (= setRes!29218 (and tp!1422945 (inv!78282 setElem!29218) e!3181568))))

(declare-fun setRest!29218 () (InoxSet Context!6854))

(assert (=> setNonEmpty!29218 (= z!4303 ((_ map or) (store ((as const (Array Context!6854 Bool)) false) setElem!29218 true) setRest!29218))))

(declare-fun b!5101412 () Bool)

(assert (=> b!5101412 (= e!3181564 (not (isEmpty!31788 (_1!35039 lt!2097612))))))

(declare-fun b!5101413 () Bool)

(assert (=> b!5101413 (= e!3181565 tp_is_empty!37351)))

(declare-fun b!5101414 () Bool)

(declare-fun res!2171136 () Bool)

(assert (=> b!5101414 (=> res!2171136 e!3181574)))

(assert (=> b!5101414 (= res!2171136 e!3181566)))

(declare-fun res!2171127 () Bool)

(assert (=> b!5101414 (=> (not res!2171127) (not e!3181566))))

(assert (=> b!5101414 (= res!2171127 (not (matchR!6828 r!12920 (_1!35039 lt!2097614))))))

(declare-fun b!5101415 () Bool)

(assert (=> b!5101415 (= e!3181567 e!3181571)))

(declare-fun res!2171130 () Bool)

(assert (=> b!5101415 (=> (not res!2171130) (not e!3181571))))

(assert (=> b!5101415 (= res!2171130 (= lt!2097616 r!12920))))

(declare-datatypes ((List!58917 0))(
  ( (Nil!58793) (Cons!58793 (h!65241 Context!6854) (t!371918 List!58917)) )
))
(declare-fun unfocusZipper!385 (List!58917) Regex!14043)

(declare-fun toList!8177 ((InoxSet Context!6854)) List!58917)

(assert (=> b!5101415 (= lt!2097616 (unfocusZipper!385 (toList!8177 z!4303)))))

(declare-fun b!5101416 () Bool)

(assert (=> b!5101416 (= e!3181573 (matchZipper!715 z!4303 (_1!35039 lt!2097613)))))

(declare-fun b!5101417 () Bool)

(assert (=> b!5101417 (= e!3181572 e!3181570)))

(declare-fun res!2171131 () Bool)

(assert (=> b!5101417 (=> (not res!2171131) (not e!3181570))))

(assert (=> b!5101417 (= res!2171131 (= lt!2097609 input!5654))))

(assert (=> b!5101417 (= lt!2097609 (++!12892 (_1!35039 lt!2097614) (_2!35039 lt!2097614)))))

(assert (= (and start!538004 res!2171133) b!5101415))

(assert (= (and b!5101415 res!2171130) b!5101405))

(assert (= (and b!5101405 res!2171129) b!5101417))

(assert (= (and b!5101417 res!2171131) b!5101407))

(assert (= (and b!5101407 (not res!2171132)) b!5101416))

(assert (= (and b!5101407 (not res!2171128)) b!5101410))

(assert (= (and b!5101407 res!2171134) b!5101412))

(assert (= (and b!5101407 (not res!2171135)) b!5101414))

(assert (= (and b!5101414 res!2171127) b!5101411))

(assert (= (and b!5101414 (not res!2171136)) b!5101409))

(get-info :version)

(assert (= (and start!538004 ((_ is ElementMatch!14043) r!12920)) b!5101413))

(assert (= (and start!538004 ((_ is Concat!22888) r!12920)) b!5101408))

(assert (= (and start!538004 ((_ is Star!14043) r!12920)) b!5101404))

(assert (= (and start!538004 ((_ is Union!14043) r!12920)) b!5101403))

(assert (= (and start!538004 condSetEmpty!29218) setIsEmpty!29218))

(assert (= (and start!538004 (not condSetEmpty!29218)) setNonEmpty!29218))

(assert (= setNonEmpty!29218 b!5101406))

(assert (= (and start!538004 ((_ is Cons!58791) input!5654)) b!5101402))

(declare-fun m!6158678 () Bool)

(assert (=> b!5101417 m!6158678))

(declare-fun m!6158680 () Bool)

(assert (=> start!538004 m!6158680))

(declare-fun m!6158682 () Bool)

(assert (=> b!5101412 m!6158682))

(declare-fun m!6158684 () Bool)

(assert (=> b!5101405 m!6158684))

(declare-fun m!6158686 () Bool)

(assert (=> b!5101405 m!6158686))

(declare-fun m!6158688 () Bool)

(assert (=> b!5101405 m!6158688))

(declare-fun m!6158690 () Bool)

(assert (=> b!5101416 m!6158690))

(declare-fun m!6158692 () Bool)

(assert (=> b!5101415 m!6158692))

(assert (=> b!5101415 m!6158692))

(declare-fun m!6158694 () Bool)

(assert (=> b!5101415 m!6158694))

(declare-fun m!6158696 () Bool)

(assert (=> b!5101414 m!6158696))

(declare-fun m!6158698 () Bool)

(assert (=> b!5101410 m!6158698))

(declare-fun m!6158700 () Bool)

(assert (=> b!5101407 m!6158700))

(declare-fun m!6158702 () Bool)

(assert (=> b!5101407 m!6158702))

(declare-fun m!6158704 () Bool)

(assert (=> b!5101407 m!6158704))

(declare-fun m!6158706 () Bool)

(assert (=> b!5101407 m!6158706))

(declare-fun m!6158708 () Bool)

(assert (=> b!5101407 m!6158708))

(declare-fun m!6158710 () Bool)

(assert (=> b!5101407 m!6158710))

(declare-fun m!6158712 () Bool)

(assert (=> b!5101407 m!6158712))

(declare-fun m!6158714 () Bool)

(assert (=> b!5101407 m!6158714))

(declare-fun m!6158716 () Bool)

(assert (=> b!5101407 m!6158716))

(declare-fun m!6158718 () Bool)

(assert (=> b!5101407 m!6158718))

(declare-fun m!6158720 () Bool)

(assert (=> b!5101407 m!6158720))

(declare-fun m!6158722 () Bool)

(assert (=> b!5101407 m!6158722))

(declare-fun m!6158724 () Bool)

(assert (=> b!5101407 m!6158724))

(declare-fun m!6158726 () Bool)

(assert (=> setNonEmpty!29218 m!6158726))

(declare-fun m!6158728 () Bool)

(assert (=> b!5101411 m!6158728))

(check-sat (not b!5101412) (not b!5101417) (not b!5101402) (not b!5101414) (not b!5101406) (not b!5101407) (not b!5101408) tp_is_empty!37351 (not b!5101411) (not b!5101403) (not b!5101415) (not b!5101410) (not b!5101416) (not setNonEmpty!29218) (not b!5101405) (not start!538004) (not b!5101404))
(check-sat)
