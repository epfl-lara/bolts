; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!538016 () Bool)

(assert start!538016)

(declare-fun b!5101706 () Bool)

(declare-fun e!3181814 () Bool)

(declare-fun e!3181817 () Bool)

(assert (=> b!5101706 (= e!3181814 e!3181817)))

(declare-fun res!2171334 () Bool)

(assert (=> b!5101706 (=> (not res!2171334) (not e!3181817))))

(declare-datatypes ((C!28356 0))(
  ( (C!28357 (val!23830 Int)) )
))
(declare-datatypes ((Regex!14049 0))(
  ( (ElementMatch!14049 (c!876451 C!28356)) (Concat!22894 (regOne!28610 Regex!14049) (regTwo!28610 Regex!14049)) (EmptyExpr!14049) (Star!14049 (reg!14378 Regex!14049)) (EmptyLang!14049) (Union!14049 (regOne!28611 Regex!14049) (regTwo!28611 Regex!14049)) )
))
(declare-datatypes ((List!58933 0))(
  ( (Nil!58809) (Cons!58809 (h!65257 Regex!14049) (t!371934 List!58933)) )
))
(declare-datatypes ((Context!6866 0))(
  ( (Context!6867 (exprs!3933 List!58933)) )
))
(declare-datatypes ((List!58934 0))(
  ( (Nil!58810) (Cons!58810 (h!65258 Context!6866) (t!371935 List!58934)) )
))
(declare-fun lt!2097907 () List!58934)

(declare-fun r!12920 () Regex!14049)

(declare-fun unfocusZipper!391 (List!58934) Regex!14049)

(assert (=> b!5101706 (= res!2171334 (= (unfocusZipper!391 lt!2097907) r!12920))))

(define-sort InoxSet (T) (Array T Bool))

(declare-fun z!4303 () (InoxSet Context!6866))

(declare-fun toList!8183 ((InoxSet Context!6866)) List!58934)

(assert (=> b!5101706 (= lt!2097907 (toList!8183 z!4303))))

(declare-fun b!5101707 () Bool)

(declare-fun e!3181810 () Bool)

(declare-fun tp_is_empty!37363 () Bool)

(declare-fun tp!1423091 () Bool)

(assert (=> b!5101707 (= e!3181810 (and tp_is_empty!37363 tp!1423091))))

(declare-fun b!5101708 () Bool)

(declare-fun e!3181820 () Bool)

(declare-datatypes ((List!58935 0))(
  ( (Nil!58811) (Cons!58811 (h!65259 C!28356) (t!371936 List!58935)) )
))
(declare-datatypes ((tuple2!63484 0))(
  ( (tuple2!63485 (_1!35045 List!58935) (_2!35045 List!58935)) )
))
(declare-fun lt!2097906 () tuple2!63484)

(declare-fun matchR!6834 (Regex!14049 List!58935) Bool)

(assert (=> b!5101708 (= e!3181820 (matchR!6834 r!12920 (_1!35045 lt!2097906)))))

(declare-fun b!5101709 () Bool)

(declare-fun e!3181816 () Bool)

(declare-fun e!3181818 () Bool)

(assert (=> b!5101709 (= e!3181816 e!3181818)))

(declare-fun res!2171330 () Bool)

(assert (=> b!5101709 (=> (not res!2171330) (not e!3181818))))

(declare-fun lt!2097908 () List!58935)

(declare-fun input!5654 () List!58935)

(assert (=> b!5101709 (= res!2171330 (= lt!2097908 input!5654))))

(declare-fun lt!2097913 () tuple2!63484)

(declare-fun ++!12898 (List!58935 List!58935) List!58935)

(assert (=> b!5101709 (= lt!2097908 (++!12898 (_1!35045 lt!2097913) (_2!35045 lt!2097913)))))

(declare-fun res!2171333 () Bool)

(assert (=> start!538016 (=> (not res!2171333) (not e!3181814))))

(declare-fun validRegex!6176 (Regex!14049) Bool)

(assert (=> start!538016 (= res!2171333 (validRegex!6176 r!12920))))

(assert (=> start!538016 e!3181814))

(declare-fun e!3181808 () Bool)

(assert (=> start!538016 e!3181808))

(declare-fun condSetEmpty!29236 () Bool)

(assert (=> start!538016 (= condSetEmpty!29236 (= z!4303 ((as const (Array Context!6866 Bool)) false)))))

(declare-fun setRes!29236 () Bool)

(assert (=> start!538016 setRes!29236))

(assert (=> start!538016 e!3181810))

(declare-fun b!5101710 () Bool)

(declare-fun e!3181821 () Bool)

(assert (=> b!5101710 (= e!3181818 (not e!3181821))))

(declare-fun res!2171323 () Bool)

(assert (=> b!5101710 (=> res!2171323 e!3181821)))

(declare-fun e!3181815 () Bool)

(assert (=> b!5101710 (= res!2171323 e!3181815)))

(declare-fun res!2171325 () Bool)

(assert (=> b!5101710 (=> (not res!2171325) (not e!3181815))))

(declare-fun lt!2097909 () Bool)

(assert (=> b!5101710 (= res!2171325 (not lt!2097909))))

(declare-fun lt!2097918 () tuple2!63484)

(declare-fun matchZipper!721 ((InoxSet Context!6866) List!58935) Bool)

(assert (=> b!5101710 (= lt!2097909 (matchZipper!721 z!4303 (_1!35045 lt!2097918)))))

(assert (=> b!5101710 e!3181820))

(declare-fun res!2171331 () Bool)

(assert (=> b!5101710 (=> res!2171331 e!3181820)))

(declare-fun isEmpty!31794 (List!58935) Bool)

(assert (=> b!5101710 (= res!2171331 (isEmpty!31794 (_1!35045 lt!2097906)))))

(declare-fun lt!2097910 () Int)

(declare-fun lt!2097916 () Int)

(declare-fun findLongestMatchInner!2062 (Regex!14049 List!58935 Int List!58935 List!58935 Int) tuple2!63484)

(assert (=> b!5101710 (= lt!2097906 (findLongestMatchInner!2062 r!12920 Nil!58811 lt!2097916 input!5654 input!5654 lt!2097910))))

(declare-datatypes ((Unit!149846 0))(
  ( (Unit!149847) )
))
(declare-fun lt!2097917 () Unit!149846)

(declare-fun longestMatchIsAcceptedByMatchOrIsEmpty!2044 (Regex!14049 List!58935) Unit!149846)

(assert (=> b!5101710 (= lt!2097917 (longestMatchIsAcceptedByMatchOrIsEmpty!2044 r!12920 input!5654))))

(declare-fun e!3181811 () Bool)

(assert (=> b!5101710 e!3181811))

(declare-fun res!2171327 () Bool)

(assert (=> b!5101710 (=> res!2171327 e!3181811)))

(declare-fun lt!2097914 () tuple2!63484)

(assert (=> b!5101710 (= res!2171327 (isEmpty!31794 (_1!35045 lt!2097914)))))

(declare-fun findLongestMatchInnerZipper!123 ((InoxSet Context!6866) List!58935 Int List!58935 List!58935 Int) tuple2!63484)

(assert (=> b!5101710 (= lt!2097914 (findLongestMatchInnerZipper!123 z!4303 Nil!58811 lt!2097916 input!5654 input!5654 lt!2097910))))

(declare-fun size!39351 (List!58935) Int)

(assert (=> b!5101710 (= lt!2097910 (size!39351 input!5654))))

(assert (=> b!5101710 (= lt!2097916 (size!39351 Nil!58811))))

(declare-fun lt!2097904 () Unit!149846)

(declare-fun longestMatchIsAcceptedByMatchOrIsEmpty!2045 ((InoxSet Context!6866) List!58935) Unit!149846)

(assert (=> b!5101710 (= lt!2097904 (longestMatchIsAcceptedByMatchOrIsEmpty!2045 z!4303 input!5654))))

(declare-fun isPrefix!5450 (List!58935 List!58935) Bool)

(assert (=> b!5101710 (isPrefix!5450 (_1!35045 lt!2097913) lt!2097908)))

(declare-fun lt!2097915 () Unit!149846)

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!3508 (List!58935 List!58935) Unit!149846)

(assert (=> b!5101710 (= lt!2097915 (lemmaConcatTwoListThenFirstIsPrefix!3508 (_1!35045 lt!2097913) (_2!35045 lt!2097913)))))

(declare-fun lt!2097902 () List!58935)

(assert (=> b!5101710 (isPrefix!5450 (_1!35045 lt!2097918) lt!2097902)))

(declare-fun lt!2097911 () Unit!149846)

(assert (=> b!5101710 (= lt!2097911 (lemmaConcatTwoListThenFirstIsPrefix!3508 (_1!35045 lt!2097918) (_2!35045 lt!2097918)))))

(declare-fun b!5101711 () Bool)

(assert (=> b!5101711 (= e!3181811 (matchZipper!721 z!4303 (_1!35045 lt!2097914)))))

(declare-fun b!5101712 () Bool)

(declare-fun e!3181819 () Bool)

(assert (=> b!5101712 (= e!3181821 e!3181819)))

(declare-fun res!2171328 () Bool)

(assert (=> b!5101712 (=> res!2171328 e!3181819)))

(declare-fun e!3181809 () Bool)

(assert (=> b!5101712 (= res!2171328 e!3181809)))

(declare-fun res!2171326 () Bool)

(assert (=> b!5101712 (=> (not res!2171326) (not e!3181809))))

(declare-fun lt!2097912 () Bool)

(assert (=> b!5101712 (= res!2171326 (not lt!2097912))))

(assert (=> b!5101712 (= lt!2097912 (matchR!6834 r!12920 (_1!35045 lt!2097913)))))

(declare-fun b!5101713 () Bool)

(declare-fun e!3181812 () Bool)

(assert (=> b!5101713 (= e!3181812 (isPrefix!5450 (_1!35045 lt!2097913) input!5654))))

(declare-fun b!5101714 () Bool)

(assert (=> b!5101714 (= e!3181817 e!3181816)))

(declare-fun res!2171329 () Bool)

(assert (=> b!5101714 (=> (not res!2171329) (not e!3181816))))

(assert (=> b!5101714 (= res!2171329 (= lt!2097902 input!5654))))

(assert (=> b!5101714 (= lt!2097902 (++!12898 (_1!35045 lt!2097918) (_2!35045 lt!2097918)))))

(declare-fun findLongestMatch!1879 (Regex!14049 List!58935) tuple2!63484)

(assert (=> b!5101714 (= lt!2097913 (findLongestMatch!1879 r!12920 input!5654))))

(declare-fun findLongestMatchZipper!73 ((InoxSet Context!6866) List!58935) tuple2!63484)

(assert (=> b!5101714 (= lt!2097918 (findLongestMatchZipper!73 z!4303 input!5654))))

(declare-fun b!5101715 () Bool)

(assert (=> b!5101715 (= e!3181815 (not (isEmpty!31794 (_1!35045 lt!2097918))))))

(declare-fun b!5101716 () Bool)

(assert (=> b!5101716 (= e!3181809 (not (isEmpty!31794 (_1!35045 lt!2097913))))))

(declare-fun b!5101717 () Bool)

(declare-fun e!3181813 () Bool)

(declare-fun tp!1423093 () Bool)

(assert (=> b!5101717 (= e!3181813 tp!1423093)))

(declare-fun b!5101718 () Bool)

(declare-fun tp!1423090 () Bool)

(declare-fun tp!1423089 () Bool)

(assert (=> b!5101718 (= e!3181808 (and tp!1423090 tp!1423089))))

(declare-fun b!5101719 () Bool)

(assert (=> b!5101719 (= e!3181819 e!3181812)))

(declare-fun res!2171324 () Bool)

(assert (=> b!5101719 (=> res!2171324 e!3181812)))

(assert (=> b!5101719 (= res!2171324 (<= (size!39351 (_1!35045 lt!2097913)) (size!39351 (_1!35045 lt!2097918))))))

(assert (=> b!5101719 (= (matchR!6834 r!12920 (_1!35045 lt!2097918)) lt!2097909)))

(declare-fun lt!2097903 () Unit!149846)

(declare-fun theoremZipperRegexEquiv!213 ((InoxSet Context!6866) List!58934 Regex!14049 List!58935) Unit!149846)

(assert (=> b!5101719 (= lt!2097903 (theoremZipperRegexEquiv!213 z!4303 lt!2097907 r!12920 (_1!35045 lt!2097918)))))

(assert (=> b!5101719 (= lt!2097912 (matchZipper!721 z!4303 (_1!35045 lt!2097913)))))

(declare-fun lt!2097905 () Unit!149846)

(assert (=> b!5101719 (= lt!2097905 (theoremZipperRegexEquiv!213 z!4303 lt!2097907 r!12920 (_1!35045 lt!2097913)))))

(declare-fun b!5101720 () Bool)

(assert (=> b!5101720 (= e!3181808 tp_is_empty!37363)))

(declare-fun b!5101721 () Bool)

(declare-fun res!2171332 () Bool)

(assert (=> b!5101721 (=> res!2171332 e!3181812)))

(assert (=> b!5101721 (= res!2171332 (not (isPrefix!5450 (_1!35045 lt!2097918) input!5654)))))

(declare-fun setElem!29236 () Context!6866)

(declare-fun setNonEmpty!29236 () Bool)

(declare-fun tp!1423095 () Bool)

(declare-fun inv!78297 (Context!6866) Bool)

(assert (=> setNonEmpty!29236 (= setRes!29236 (and tp!1423095 (inv!78297 setElem!29236) e!3181813))))

(declare-fun setRest!29236 () (InoxSet Context!6866))

(assert (=> setNonEmpty!29236 (= z!4303 ((_ map or) (store ((as const (Array Context!6866 Bool)) false) setElem!29236 true) setRest!29236))))

(declare-fun setIsEmpty!29236 () Bool)

(assert (=> setIsEmpty!29236 setRes!29236))

(declare-fun b!5101722 () Bool)

(declare-fun tp!1423088 () Bool)

(assert (=> b!5101722 (= e!3181808 tp!1423088)))

(declare-fun b!5101723 () Bool)

(declare-fun tp!1423094 () Bool)

(declare-fun tp!1423092 () Bool)

(assert (=> b!5101723 (= e!3181808 (and tp!1423094 tp!1423092))))

(assert (= (and start!538016 res!2171333) b!5101706))

(assert (= (and b!5101706 res!2171334) b!5101714))

(assert (= (and b!5101714 res!2171329) b!5101709))

(assert (= (and b!5101709 res!2171330) b!5101710))

(assert (= (and b!5101710 (not res!2171327)) b!5101711))

(assert (= (and b!5101710 (not res!2171331)) b!5101708))

(assert (= (and b!5101710 res!2171325) b!5101715))

(assert (= (and b!5101710 (not res!2171323)) b!5101712))

(assert (= (and b!5101712 res!2171326) b!5101716))

(assert (= (and b!5101712 (not res!2171328)) b!5101719))

(assert (= (and b!5101719 (not res!2171324)) b!5101721))

(assert (= (and b!5101721 (not res!2171332)) b!5101713))

(get-info :version)

(assert (= (and start!538016 ((_ is ElementMatch!14049) r!12920)) b!5101720))

(assert (= (and start!538016 ((_ is Concat!22894) r!12920)) b!5101718))

(assert (= (and start!538016 ((_ is Star!14049) r!12920)) b!5101722))

(assert (= (and start!538016 ((_ is Union!14049) r!12920)) b!5101723))

(assert (= (and start!538016 condSetEmpty!29236) setIsEmpty!29236))

(assert (= (and start!538016 (not condSetEmpty!29236)) setNonEmpty!29236))

(assert (= setNonEmpty!29236 b!5101717))

(assert (= (and start!538016 ((_ is Cons!58811) input!5654)) b!5101707))

(declare-fun m!6159042 () Bool)

(assert (=> start!538016 m!6159042))

(declare-fun m!6159044 () Bool)

(assert (=> b!5101712 m!6159044))

(declare-fun m!6159046 () Bool)

(assert (=> b!5101719 m!6159046))

(declare-fun m!6159048 () Bool)

(assert (=> b!5101719 m!6159048))

(declare-fun m!6159050 () Bool)

(assert (=> b!5101719 m!6159050))

(declare-fun m!6159052 () Bool)

(assert (=> b!5101719 m!6159052))

(declare-fun m!6159054 () Bool)

(assert (=> b!5101719 m!6159054))

(declare-fun m!6159056 () Bool)

(assert (=> b!5101719 m!6159056))

(declare-fun m!6159058 () Bool)

(assert (=> b!5101713 m!6159058))

(declare-fun m!6159060 () Bool)

(assert (=> b!5101716 m!6159060))

(declare-fun m!6159062 () Bool)

(assert (=> b!5101706 m!6159062))

(declare-fun m!6159064 () Bool)

(assert (=> b!5101706 m!6159064))

(declare-fun m!6159066 () Bool)

(assert (=> b!5101710 m!6159066))

(declare-fun m!6159068 () Bool)

(assert (=> b!5101710 m!6159068))

(declare-fun m!6159070 () Bool)

(assert (=> b!5101710 m!6159070))

(declare-fun m!6159072 () Bool)

(assert (=> b!5101710 m!6159072))

(declare-fun m!6159074 () Bool)

(assert (=> b!5101710 m!6159074))

(declare-fun m!6159076 () Bool)

(assert (=> b!5101710 m!6159076))

(declare-fun m!6159078 () Bool)

(assert (=> b!5101710 m!6159078))

(declare-fun m!6159080 () Bool)

(assert (=> b!5101710 m!6159080))

(declare-fun m!6159082 () Bool)

(assert (=> b!5101710 m!6159082))

(declare-fun m!6159084 () Bool)

(assert (=> b!5101710 m!6159084))

(declare-fun m!6159086 () Bool)

(assert (=> b!5101710 m!6159086))

(declare-fun m!6159088 () Bool)

(assert (=> b!5101710 m!6159088))

(declare-fun m!6159090 () Bool)

(assert (=> b!5101710 m!6159090))

(declare-fun m!6159092 () Bool)

(assert (=> setNonEmpty!29236 m!6159092))

(declare-fun m!6159094 () Bool)

(assert (=> b!5101714 m!6159094))

(declare-fun m!6159096 () Bool)

(assert (=> b!5101714 m!6159096))

(declare-fun m!6159098 () Bool)

(assert (=> b!5101714 m!6159098))

(declare-fun m!6159100 () Bool)

(assert (=> b!5101711 m!6159100))

(declare-fun m!6159102 () Bool)

(assert (=> b!5101715 m!6159102))

(declare-fun m!6159104 () Bool)

(assert (=> b!5101721 m!6159104))

(declare-fun m!6159106 () Bool)

(assert (=> b!5101708 m!6159106))

(declare-fun m!6159108 () Bool)

(assert (=> b!5101709 m!6159108))

(check-sat (not setNonEmpty!29236) (not b!5101710) (not b!5101717) (not b!5101715) (not b!5101718) (not b!5101714) (not b!5101722) (not b!5101719) (not b!5101716) (not b!5101713) (not b!5101706) (not start!538016) (not b!5101708) (not b!5101723) (not b!5101712) tp_is_empty!37363 (not b!5101707) (not b!5101721) (not b!5101711) (not b!5101709))
(check-sat)
