; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!538012 () Bool)

(assert start!538012)

(declare-fun setRes!29230 () Bool)

(declare-fun e!3181732 () Bool)

(declare-datatypes ((C!28352 0))(
  ( (C!28353 (val!23828 Int)) )
))
(declare-datatypes ((Regex!14047 0))(
  ( (ElementMatch!14047 (c!876449 C!28352)) (Concat!22892 (regOne!28606 Regex!14047) (regTwo!28606 Regex!14047)) (EmptyExpr!14047) (Star!14047 (reg!14376 Regex!14047)) (EmptyLang!14047) (Union!14047 (regOne!28607 Regex!14047) (regTwo!28607 Regex!14047)) )
))
(declare-datatypes ((List!58927 0))(
  ( (Nil!58803) (Cons!58803 (h!65251 Regex!14047) (t!371928 List!58927)) )
))
(declare-datatypes ((Context!6862 0))(
  ( (Context!6863 (exprs!3931 List!58927)) )
))
(declare-fun setElem!29230 () Context!6862)

(declare-fun tp!1423047 () Bool)

(declare-fun setNonEmpty!29230 () Bool)

(declare-fun inv!78292 (Context!6862) Bool)

(assert (=> setNonEmpty!29230 (= setRes!29230 (and tp!1423047 (inv!78292 setElem!29230) e!3181732))))

(define-sort InoxSet (T) (Array T Bool))

(declare-fun z!4303 () (InoxSet Context!6862))

(declare-fun setRest!29230 () (InoxSet Context!6862))

(assert (=> setNonEmpty!29230 (= z!4303 ((_ map or) (store ((as const (Array Context!6862 Bool)) false) setElem!29230 true) setRest!29230))))

(declare-fun setIsEmpty!29230 () Bool)

(assert (=> setIsEmpty!29230 setRes!29230))

(declare-fun b!5101599 () Bool)

(declare-fun e!3181725 () Bool)

(declare-fun tp_is_empty!37359 () Bool)

(assert (=> b!5101599 (= e!3181725 tp_is_empty!37359)))

(declare-fun b!5101600 () Bool)

(declare-fun e!3181727 () Bool)

(declare-fun e!3181737 () Bool)

(assert (=> b!5101600 (= e!3181727 e!3181737)))

(declare-fun res!2171262 () Bool)

(assert (=> b!5101600 (=> (not res!2171262) (not e!3181737))))

(declare-datatypes ((List!58928 0))(
  ( (Nil!58804) (Cons!58804 (h!65252 C!28352) (t!371929 List!58928)) )
))
(declare-fun lt!2097811 () List!58928)

(declare-fun input!5654 () List!58928)

(assert (=> b!5101600 (= res!2171262 (= lt!2097811 input!5654))))

(declare-datatypes ((tuple2!63480 0))(
  ( (tuple2!63481 (_1!35043 List!58928) (_2!35043 List!58928)) )
))
(declare-fun lt!2097809 () tuple2!63480)

(declare-fun ++!12896 (List!58928 List!58928) List!58928)

(assert (=> b!5101600 (= lt!2097811 (++!12896 (_1!35043 lt!2097809) (_2!35043 lt!2097809)))))

(declare-fun lt!2097813 () tuple2!63480)

(declare-fun r!12920 () Regex!14047)

(declare-fun findLongestMatch!1877 (Regex!14047 List!58928) tuple2!63480)

(assert (=> b!5101600 (= lt!2097813 (findLongestMatch!1877 r!12920 input!5654))))

(declare-fun findLongestMatchZipper!71 ((InoxSet Context!6862) List!58928) tuple2!63480)

(assert (=> b!5101600 (= lt!2097809 (findLongestMatchZipper!71 z!4303 input!5654))))

(declare-fun b!5101601 () Bool)

(declare-fun e!3181728 () Bool)

(declare-fun e!3181735 () Bool)

(assert (=> b!5101601 (= e!3181728 e!3181735)))

(declare-fun res!2171253 () Bool)

(assert (=> b!5101601 (=> res!2171253 e!3181735)))

(declare-fun e!3181731 () Bool)

(assert (=> b!5101601 (= res!2171253 e!3181731)))

(declare-fun res!2171254 () Bool)

(assert (=> b!5101601 (=> (not res!2171254) (not e!3181731))))

(declare-fun lt!2097804 () Bool)

(assert (=> b!5101601 (= res!2171254 (not lt!2097804))))

(declare-fun matchR!6832 (Regex!14047 List!58928) Bool)

(assert (=> b!5101601 (= lt!2097804 (matchR!6832 r!12920 (_1!35043 lt!2097813)))))

(declare-fun b!5101602 () Bool)

(declare-fun e!3181734 () Bool)

(declare-fun isPrefix!5448 (List!58928 List!58928) Bool)

(assert (=> b!5101602 (= e!3181734 (isPrefix!5448 (_1!35043 lt!2097809) input!5654))))

(declare-fun b!5101603 () Bool)

(declare-fun e!3181733 () Bool)

(assert (=> b!5101603 (= e!3181733 e!3181727)))

(declare-fun res!2171257 () Bool)

(assert (=> b!5101603 (=> (not res!2171257) (not e!3181727))))

(declare-datatypes ((List!58929 0))(
  ( (Nil!58805) (Cons!58805 (h!65253 Context!6862) (t!371930 List!58929)) )
))
(declare-fun lt!2097810 () List!58929)

(declare-fun unfocusZipper!389 (List!58929) Regex!14047)

(assert (=> b!5101603 (= res!2171257 (= (unfocusZipper!389 lt!2097810) r!12920))))

(declare-fun toList!8181 ((InoxSet Context!6862)) List!58929)

(assert (=> b!5101603 (= lt!2097810 (toList!8181 z!4303))))

(declare-fun b!5101604 () Bool)

(declare-fun e!3181729 () Bool)

(declare-fun lt!2097807 () tuple2!63480)

(declare-fun matchZipper!719 ((InoxSet Context!6862) List!58928) Bool)

(assert (=> b!5101604 (= e!3181729 (matchZipper!719 z!4303 (_1!35043 lt!2097807)))))

(declare-fun res!2171255 () Bool)

(assert (=> start!538012 (=> (not res!2171255) (not e!3181733))))

(declare-fun validRegex!6174 (Regex!14047) Bool)

(assert (=> start!538012 (= res!2171255 (validRegex!6174 r!12920))))

(assert (=> start!538012 e!3181733))

(assert (=> start!538012 e!3181725))

(declare-fun condSetEmpty!29230 () Bool)

(assert (=> start!538012 (= condSetEmpty!29230 (= z!4303 ((as const (Array Context!6862 Bool)) false)))))

(assert (=> start!538012 setRes!29230))

(declare-fun e!3181736 () Bool)

(assert (=> start!538012 e!3181736))

(declare-fun b!5101605 () Bool)

(declare-fun isEmpty!31792 (List!58928) Bool)

(assert (=> b!5101605 (= e!3181731 (not (isEmpty!31792 (_1!35043 lt!2097813))))))

(declare-fun b!5101606 () Bool)

(declare-fun tp!1423041 () Bool)

(assert (=> b!5101606 (= e!3181736 (and tp_is_empty!37359 tp!1423041))))

(declare-fun b!5101607 () Bool)

(declare-fun e!3181724 () Bool)

(assert (=> b!5101607 (= e!3181737 e!3181724)))

(declare-fun res!2171259 () Bool)

(assert (=> b!5101607 (=> (not res!2171259) (not e!3181724))))

(declare-fun lt!2097812 () List!58928)

(assert (=> b!5101607 (= res!2171259 (= lt!2097812 input!5654))))

(assert (=> b!5101607 (= lt!2097812 (++!12896 (_1!35043 lt!2097813) (_2!35043 lt!2097813)))))

(declare-fun b!5101608 () Bool)

(declare-fun tp!1423045 () Bool)

(declare-fun tp!1423044 () Bool)

(assert (=> b!5101608 (= e!3181725 (and tp!1423045 tp!1423044))))

(declare-fun b!5101609 () Bool)

(declare-fun e!3181730 () Bool)

(assert (=> b!5101609 (= e!3181730 (not (isEmpty!31792 (_1!35043 lt!2097809))))))

(declare-fun b!5101610 () Bool)

(assert (=> b!5101610 (= e!3181735 e!3181734)))

(declare-fun res!2171260 () Bool)

(assert (=> b!5101610 (=> res!2171260 e!3181734)))

(declare-fun size!39349 (List!58928) Int)

(assert (=> b!5101610 (= res!2171260 (<= (size!39349 (_1!35043 lt!2097813)) (size!39349 (_1!35043 lt!2097809))))))

(declare-fun lt!2097801 () Bool)

(assert (=> b!5101610 (= (matchR!6832 r!12920 (_1!35043 lt!2097809)) lt!2097801)))

(declare-datatypes ((Unit!149842 0))(
  ( (Unit!149843) )
))
(declare-fun lt!2097808 () Unit!149842)

(declare-fun theoremZipperRegexEquiv!211 ((InoxSet Context!6862) List!58929 Regex!14047 List!58928) Unit!149842)

(assert (=> b!5101610 (= lt!2097808 (theoremZipperRegexEquiv!211 z!4303 lt!2097810 r!12920 (_1!35043 lt!2097809)))))

(assert (=> b!5101610 (= lt!2097804 (matchZipper!719 z!4303 (_1!35043 lt!2097813)))))

(declare-fun lt!2097815 () Unit!149842)

(assert (=> b!5101610 (= lt!2097815 (theoremZipperRegexEquiv!211 z!4303 lt!2097810 r!12920 (_1!35043 lt!2097813)))))

(declare-fun b!5101611 () Bool)

(declare-fun e!3181726 () Bool)

(declare-fun lt!2097800 () tuple2!63480)

(assert (=> b!5101611 (= e!3181726 (matchR!6832 r!12920 (_1!35043 lt!2097800)))))

(declare-fun b!5101612 () Bool)

(assert (=> b!5101612 (= e!3181724 (not e!3181728))))

(declare-fun res!2171258 () Bool)

(assert (=> b!5101612 (=> res!2171258 e!3181728)))

(assert (=> b!5101612 (= res!2171258 e!3181730)))

(declare-fun res!2171261 () Bool)

(assert (=> b!5101612 (=> (not res!2171261) (not e!3181730))))

(assert (=> b!5101612 (= res!2171261 (not lt!2097801))))

(assert (=> b!5101612 (= lt!2097801 (matchZipper!719 z!4303 (_1!35043 lt!2097809)))))

(assert (=> b!5101612 e!3181726))

(declare-fun res!2171252 () Bool)

(assert (=> b!5101612 (=> res!2171252 e!3181726)))

(assert (=> b!5101612 (= res!2171252 (isEmpty!31792 (_1!35043 lt!2097800)))))

(declare-fun lt!2097816 () Int)

(declare-fun lt!2097814 () Int)

(declare-fun findLongestMatchInner!2060 (Regex!14047 List!58928 Int List!58928 List!58928 Int) tuple2!63480)

(assert (=> b!5101612 (= lt!2097800 (findLongestMatchInner!2060 r!12920 Nil!58804 lt!2097814 input!5654 input!5654 lt!2097816))))

(declare-fun lt!2097803 () Unit!149842)

(declare-fun longestMatchIsAcceptedByMatchOrIsEmpty!2040 (Regex!14047 List!58928) Unit!149842)

(assert (=> b!5101612 (= lt!2097803 (longestMatchIsAcceptedByMatchOrIsEmpty!2040 r!12920 input!5654))))

(assert (=> b!5101612 e!3181729))

(declare-fun res!2171256 () Bool)

(assert (=> b!5101612 (=> res!2171256 e!3181729)))

(assert (=> b!5101612 (= res!2171256 (isEmpty!31792 (_1!35043 lt!2097807)))))

(declare-fun findLongestMatchInnerZipper!121 ((InoxSet Context!6862) List!58928 Int List!58928 List!58928 Int) tuple2!63480)

(assert (=> b!5101612 (= lt!2097807 (findLongestMatchInnerZipper!121 z!4303 Nil!58804 lt!2097814 input!5654 input!5654 lt!2097816))))

(assert (=> b!5101612 (= lt!2097816 (size!39349 input!5654))))

(assert (=> b!5101612 (= lt!2097814 (size!39349 Nil!58804))))

(declare-fun lt!2097802 () Unit!149842)

(declare-fun longestMatchIsAcceptedByMatchOrIsEmpty!2041 ((InoxSet Context!6862) List!58928) Unit!149842)

(assert (=> b!5101612 (= lt!2097802 (longestMatchIsAcceptedByMatchOrIsEmpty!2041 z!4303 input!5654))))

(assert (=> b!5101612 (isPrefix!5448 (_1!35043 lt!2097813) lt!2097812)))

(declare-fun lt!2097806 () Unit!149842)

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!3506 (List!58928 List!58928) Unit!149842)

(assert (=> b!5101612 (= lt!2097806 (lemmaConcatTwoListThenFirstIsPrefix!3506 (_1!35043 lt!2097813) (_2!35043 lt!2097813)))))

(assert (=> b!5101612 (isPrefix!5448 (_1!35043 lt!2097809) lt!2097811)))

(declare-fun lt!2097805 () Unit!149842)

(assert (=> b!5101612 (= lt!2097805 (lemmaConcatTwoListThenFirstIsPrefix!3506 (_1!35043 lt!2097809) (_2!35043 lt!2097809)))))

(declare-fun b!5101613 () Bool)

(declare-fun tp!1423040 () Bool)

(assert (=> b!5101613 (= e!3181725 tp!1423040)))

(declare-fun b!5101614 () Bool)

(declare-fun tp!1423046 () Bool)

(assert (=> b!5101614 (= e!3181732 tp!1423046)))

(declare-fun b!5101615 () Bool)

(declare-fun tp!1423042 () Bool)

(declare-fun tp!1423043 () Bool)

(assert (=> b!5101615 (= e!3181725 (and tp!1423042 tp!1423043))))

(assert (= (and start!538012 res!2171255) b!5101603))

(assert (= (and b!5101603 res!2171257) b!5101600))

(assert (= (and b!5101600 res!2171262) b!5101607))

(assert (= (and b!5101607 res!2171259) b!5101612))

(assert (= (and b!5101612 (not res!2171256)) b!5101604))

(assert (= (and b!5101612 (not res!2171252)) b!5101611))

(assert (= (and b!5101612 res!2171261) b!5101609))

(assert (= (and b!5101612 (not res!2171258)) b!5101601))

(assert (= (and b!5101601 res!2171254) b!5101605))

(assert (= (and b!5101601 (not res!2171253)) b!5101610))

(assert (= (and b!5101610 (not res!2171260)) b!5101602))

(get-info :version)

(assert (= (and start!538012 ((_ is ElementMatch!14047) r!12920)) b!5101599))

(assert (= (and start!538012 ((_ is Concat!22892) r!12920)) b!5101615))

(assert (= (and start!538012 ((_ is Star!14047) r!12920)) b!5101613))

(assert (= (and start!538012 ((_ is Union!14047) r!12920)) b!5101608))

(assert (= (and start!538012 condSetEmpty!29230) setIsEmpty!29230))

(assert (= (and start!538012 (not condSetEmpty!29230)) setNonEmpty!29230))

(assert (= setNonEmpty!29230 b!5101614))

(assert (= (and start!538012 ((_ is Cons!58804) input!5654)) b!5101606))

(declare-fun m!6158908 () Bool)

(assert (=> b!5101611 m!6158908))

(declare-fun m!6158910 () Bool)

(assert (=> b!5101601 m!6158910))

(declare-fun m!6158912 () Bool)

(assert (=> b!5101607 m!6158912))

(declare-fun m!6158914 () Bool)

(assert (=> b!5101603 m!6158914))

(declare-fun m!6158916 () Bool)

(assert (=> b!5101603 m!6158916))

(declare-fun m!6158918 () Bool)

(assert (=> b!5101612 m!6158918))

(declare-fun m!6158920 () Bool)

(assert (=> b!5101612 m!6158920))

(declare-fun m!6158922 () Bool)

(assert (=> b!5101612 m!6158922))

(declare-fun m!6158924 () Bool)

(assert (=> b!5101612 m!6158924))

(declare-fun m!6158926 () Bool)

(assert (=> b!5101612 m!6158926))

(declare-fun m!6158928 () Bool)

(assert (=> b!5101612 m!6158928))

(declare-fun m!6158930 () Bool)

(assert (=> b!5101612 m!6158930))

(declare-fun m!6158932 () Bool)

(assert (=> b!5101612 m!6158932))

(declare-fun m!6158934 () Bool)

(assert (=> b!5101612 m!6158934))

(declare-fun m!6158936 () Bool)

(assert (=> b!5101612 m!6158936))

(declare-fun m!6158938 () Bool)

(assert (=> b!5101612 m!6158938))

(declare-fun m!6158940 () Bool)

(assert (=> b!5101612 m!6158940))

(declare-fun m!6158942 () Bool)

(assert (=> b!5101612 m!6158942))

(declare-fun m!6158944 () Bool)

(assert (=> b!5101609 m!6158944))

(declare-fun m!6158946 () Bool)

(assert (=> b!5101610 m!6158946))

(declare-fun m!6158948 () Bool)

(assert (=> b!5101610 m!6158948))

(declare-fun m!6158950 () Bool)

(assert (=> b!5101610 m!6158950))

(declare-fun m!6158952 () Bool)

(assert (=> b!5101610 m!6158952))

(declare-fun m!6158954 () Bool)

(assert (=> b!5101610 m!6158954))

(declare-fun m!6158956 () Bool)

(assert (=> b!5101610 m!6158956))

(declare-fun m!6158958 () Bool)

(assert (=> setNonEmpty!29230 m!6158958))

(declare-fun m!6158960 () Bool)

(assert (=> start!538012 m!6158960))

(declare-fun m!6158962 () Bool)

(assert (=> b!5101605 m!6158962))

(declare-fun m!6158964 () Bool)

(assert (=> b!5101602 m!6158964))

(declare-fun m!6158966 () Bool)

(assert (=> b!5101604 m!6158966))

(declare-fun m!6158968 () Bool)

(assert (=> b!5101600 m!6158968))

(declare-fun m!6158970 () Bool)

(assert (=> b!5101600 m!6158970))

(declare-fun m!6158972 () Bool)

(assert (=> b!5101600 m!6158972))

(check-sat (not b!5101609) (not b!5101606) (not b!5101610) (not b!5101608) (not b!5101604) (not b!5101613) (not b!5101601) (not start!538012) (not b!5101611) tp_is_empty!37359 (not b!5101615) (not b!5101605) (not b!5101602) (not b!5101600) (not b!5101614) (not b!5101607) (not b!5101603) (not setNonEmpty!29230) (not b!5101612))
(check-sat)
