; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!537760 () Bool)

(assert start!537760)

(declare-fun res!2169945 () Bool)

(declare-fun e!3179888 () Bool)

(assert (=> start!537760 (=> (not res!2169945) (not e!3179888))))

(declare-datatypes ((C!28292 0))(
  ( (C!28293 (val!23798 Int)) )
))
(declare-datatypes ((Regex!14017 0))(
  ( (ElementMatch!14017 (c!876123 C!28292)) (Concat!22862 (regOne!28546 Regex!14017) (regTwo!28546 Regex!14017)) (EmptyExpr!14017) (Star!14017 (reg!14346 Regex!14017)) (EmptyLang!14017) (Union!14017 (regOne!28547 Regex!14017) (regTwo!28547 Regex!14017)) )
))
(declare-fun r!12920 () Regex!14017)

(declare-fun validRegex!6144 (Regex!14017) Bool)

(assert (=> start!537760 (= res!2169945 (validRegex!6144 r!12920))))

(assert (=> start!537760 e!3179888))

(declare-fun e!3179880 () Bool)

(assert (=> start!537760 e!3179880))

(declare-fun condSetEmpty!29116 () Bool)

(define-sort InoxSet (T) (Array T Bool))

(declare-datatypes ((List!58837 0))(
  ( (Nil!58713) (Cons!58713 (h!65161 Regex!14017) (t!371838 List!58837)) )
))
(declare-datatypes ((Context!6802 0))(
  ( (Context!6803 (exprs!3901 List!58837)) )
))
(declare-fun z!4303 () (InoxSet Context!6802))

(assert (=> start!537760 (= condSetEmpty!29116 (= z!4303 ((as const (Array Context!6802 Bool)) false)))))

(declare-fun setRes!29116 () Bool)

(assert (=> start!537760 setRes!29116))

(declare-fun e!3179885 () Bool)

(assert (=> start!537760 e!3179885))

(declare-fun b!5098800 () Bool)

(declare-fun e!3179881 () Bool)

(declare-fun e!3179889 () Bool)

(assert (=> b!5098800 (= e!3179881 e!3179889)))

(declare-fun res!2169948 () Bool)

(assert (=> b!5098800 (=> (not res!2169948) (not e!3179889))))

(declare-datatypes ((List!58838 0))(
  ( (Nil!58714) (Cons!58714 (h!65162 C!28292) (t!371839 List!58838)) )
))
(declare-fun lt!2095336 () List!58838)

(declare-fun input!5654 () List!58838)

(assert (=> b!5098800 (= res!2169948 (= lt!2095336 input!5654))))

(declare-datatypes ((tuple2!63420 0))(
  ( (tuple2!63421 (_1!35013 List!58838) (_2!35013 List!58838)) )
))
(declare-fun lt!2095340 () tuple2!63420)

(declare-fun ++!12866 (List!58838 List!58838) List!58838)

(assert (=> b!5098800 (= lt!2095336 (++!12866 (_1!35013 lt!2095340) (_2!35013 lt!2095340)))))

(declare-fun b!5098801 () Bool)

(declare-fun e!3179882 () Bool)

(assert (=> b!5098801 (= e!3179889 (not e!3179882))))

(declare-fun res!2169950 () Bool)

(assert (=> b!5098801 (=> res!2169950 e!3179882)))

(declare-fun e!3179883 () Bool)

(assert (=> b!5098801 (= res!2169950 e!3179883)))

(declare-fun res!2169947 () Bool)

(assert (=> b!5098801 (=> (not res!2169947) (not e!3179883))))

(declare-fun lt!2095330 () tuple2!63420)

(declare-fun matchZipper!693 ((InoxSet Context!6802) List!58838) Bool)

(assert (=> b!5098801 (= res!2169947 (not (matchZipper!693 z!4303 (_1!35013 lt!2095330))))))

(declare-fun e!3179887 () Bool)

(assert (=> b!5098801 e!3179887))

(declare-fun res!2169951 () Bool)

(assert (=> b!5098801 (=> res!2169951 e!3179887)))

(declare-fun lt!2095342 () tuple2!63420)

(declare-fun isEmpty!31766 (List!58838) Bool)

(assert (=> b!5098801 (= res!2169951 (isEmpty!31766 (_1!35013 lt!2095342)))))

(declare-fun lt!2095331 () Int)

(declare-fun lt!2095333 () Int)

(declare-fun findLongestMatchInner!2030 (Regex!14017 List!58838 Int List!58838 List!58838 Int) tuple2!63420)

(assert (=> b!5098801 (= lt!2095342 (findLongestMatchInner!2030 r!12920 Nil!58714 lt!2095331 input!5654 input!5654 lt!2095333))))

(declare-datatypes ((Unit!149758 0))(
  ( (Unit!149759) )
))
(declare-fun lt!2095332 () Unit!149758)

(declare-fun longestMatchIsAcceptedByMatchOrIsEmpty!1988 (Regex!14017 List!58838) Unit!149758)

(assert (=> b!5098801 (= lt!2095332 (longestMatchIsAcceptedByMatchOrIsEmpty!1988 r!12920 input!5654))))

(declare-fun e!3179884 () Bool)

(assert (=> b!5098801 e!3179884))

(declare-fun res!2169949 () Bool)

(assert (=> b!5098801 (=> res!2169949 e!3179884)))

(declare-fun lt!2095334 () tuple2!63420)

(assert (=> b!5098801 (= res!2169949 (isEmpty!31766 (_1!35013 lt!2095334)))))

(declare-fun findLongestMatchInnerZipper!91 ((InoxSet Context!6802) List!58838 Int List!58838 List!58838 Int) tuple2!63420)

(assert (=> b!5098801 (= lt!2095334 (findLongestMatchInnerZipper!91 z!4303 Nil!58714 lt!2095331 input!5654 input!5654 lt!2095333))))

(declare-fun size!39319 (List!58838) Int)

(assert (=> b!5098801 (= lt!2095333 (size!39319 input!5654))))

(assert (=> b!5098801 (= lt!2095331 (size!39319 Nil!58714))))

(declare-fun lt!2095335 () Unit!149758)

(declare-fun longestMatchIsAcceptedByMatchOrIsEmpty!1989 ((InoxSet Context!6802) List!58838) Unit!149758)

(assert (=> b!5098801 (= lt!2095335 (longestMatchIsAcceptedByMatchOrIsEmpty!1989 z!4303 input!5654))))

(declare-fun isPrefix!5422 (List!58838 List!58838) Bool)

(assert (=> b!5098801 (isPrefix!5422 (_1!35013 lt!2095340) lt!2095336)))

(declare-fun lt!2095341 () Unit!149758)

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!3480 (List!58838 List!58838) Unit!149758)

(assert (=> b!5098801 (= lt!2095341 (lemmaConcatTwoListThenFirstIsPrefix!3480 (_1!35013 lt!2095340) (_2!35013 lt!2095340)))))

(declare-fun lt!2095339 () List!58838)

(assert (=> b!5098801 (isPrefix!5422 (_1!35013 lt!2095330) lt!2095339)))

(declare-fun lt!2095338 () Unit!149758)

(assert (=> b!5098801 (= lt!2095338 (lemmaConcatTwoListThenFirstIsPrefix!3480 (_1!35013 lt!2095330) (_2!35013 lt!2095330)))))

(declare-fun b!5098802 () Bool)

(declare-fun matchR!6806 (Regex!14017 List!58838) Bool)

(assert (=> b!5098802 (= e!3179887 (matchR!6806 r!12920 (_1!35013 lt!2095342)))))

(declare-fun b!5098803 () Bool)

(assert (=> b!5098803 (= e!3179882 true)))

(declare-fun lt!2095337 () Bool)

(assert (=> b!5098803 (= lt!2095337 (matchR!6806 r!12920 (_1!35013 lt!2095340)))))

(declare-fun b!5098804 () Bool)

(declare-fun e!3179886 () Bool)

(declare-fun tp!1421925 () Bool)

(assert (=> b!5098804 (= e!3179886 tp!1421925)))

(declare-fun b!5098805 () Bool)

(assert (=> b!5098805 (= e!3179883 (not (isEmpty!31766 (_1!35013 lt!2095330))))))

(declare-fun b!5098806 () Bool)

(declare-fun res!2169946 () Bool)

(assert (=> b!5098806 (=> (not res!2169946) (not e!3179888))))

(declare-datatypes ((List!58839 0))(
  ( (Nil!58715) (Cons!58715 (h!65163 Context!6802) (t!371840 List!58839)) )
))
(declare-fun unfocusZipper!359 (List!58839) Regex!14017)

(declare-fun toList!8151 ((InoxSet Context!6802)) List!58839)

(assert (=> b!5098806 (= res!2169946 (= (unfocusZipper!359 (toList!8151 z!4303)) r!12920))))

(declare-fun setIsEmpty!29116 () Bool)

(assert (=> setIsEmpty!29116 setRes!29116))

(declare-fun b!5098807 () Bool)

(declare-fun tp_is_empty!37299 () Bool)

(declare-fun tp!1421922 () Bool)

(assert (=> b!5098807 (= e!3179885 (and tp_is_empty!37299 tp!1421922))))

(declare-fun b!5098808 () Bool)

(declare-fun tp!1421921 () Bool)

(declare-fun tp!1421924 () Bool)

(assert (=> b!5098808 (= e!3179880 (and tp!1421921 tp!1421924))))

(declare-fun setElem!29116 () Context!6802)

(declare-fun tp!1421926 () Bool)

(declare-fun setNonEmpty!29116 () Bool)

(declare-fun inv!78217 (Context!6802) Bool)

(assert (=> setNonEmpty!29116 (= setRes!29116 (and tp!1421926 (inv!78217 setElem!29116) e!3179886))))

(declare-fun setRest!29116 () (InoxSet Context!6802))

(assert (=> setNonEmpty!29116 (= z!4303 ((_ map or) (store ((as const (Array Context!6802 Bool)) false) setElem!29116 true) setRest!29116))))

(declare-fun b!5098809 () Bool)

(declare-fun tp!1421923 () Bool)

(assert (=> b!5098809 (= e!3179880 tp!1421923)))

(declare-fun b!5098810 () Bool)

(assert (=> b!5098810 (= e!3179880 tp_is_empty!37299)))

(declare-fun b!5098811 () Bool)

(assert (=> b!5098811 (= e!3179888 e!3179881)))

(declare-fun res!2169952 () Bool)

(assert (=> b!5098811 (=> (not res!2169952) (not e!3179881))))

(assert (=> b!5098811 (= res!2169952 (= lt!2095339 input!5654))))

(assert (=> b!5098811 (= lt!2095339 (++!12866 (_1!35013 lt!2095330) (_2!35013 lt!2095330)))))

(declare-fun findLongestMatch!1847 (Regex!14017 List!58838) tuple2!63420)

(assert (=> b!5098811 (= lt!2095340 (findLongestMatch!1847 r!12920 input!5654))))

(declare-fun findLongestMatchZipper!41 ((InoxSet Context!6802) List!58838) tuple2!63420)

(assert (=> b!5098811 (= lt!2095330 (findLongestMatchZipper!41 z!4303 input!5654))))

(declare-fun b!5098812 () Bool)

(declare-fun tp!1421927 () Bool)

(declare-fun tp!1421920 () Bool)

(assert (=> b!5098812 (= e!3179880 (and tp!1421927 tp!1421920))))

(declare-fun b!5098813 () Bool)

(assert (=> b!5098813 (= e!3179884 (matchZipper!693 z!4303 (_1!35013 lt!2095334)))))

(assert (= (and start!537760 res!2169945) b!5098806))

(assert (= (and b!5098806 res!2169946) b!5098811))

(assert (= (and b!5098811 res!2169952) b!5098800))

(assert (= (and b!5098800 res!2169948) b!5098801))

(assert (= (and b!5098801 (not res!2169949)) b!5098813))

(assert (= (and b!5098801 (not res!2169951)) b!5098802))

(assert (= (and b!5098801 res!2169947) b!5098805))

(assert (= (and b!5098801 (not res!2169950)) b!5098803))

(get-info :version)

(assert (= (and start!537760 ((_ is ElementMatch!14017) r!12920)) b!5098810))

(assert (= (and start!537760 ((_ is Concat!22862) r!12920)) b!5098812))

(assert (= (and start!537760 ((_ is Star!14017) r!12920)) b!5098809))

(assert (= (and start!537760 ((_ is Union!14017) r!12920)) b!5098808))

(assert (= (and start!537760 condSetEmpty!29116) setIsEmpty!29116))

(assert (= (and start!537760 (not condSetEmpty!29116)) setNonEmpty!29116))

(assert (= setNonEmpty!29116 b!5098804))

(assert (= (and start!537760 ((_ is Cons!58714) input!5654)) b!5098807))

(declare-fun m!6156064 () Bool)

(assert (=> b!5098811 m!6156064))

(declare-fun m!6156066 () Bool)

(assert (=> b!5098811 m!6156066))

(declare-fun m!6156068 () Bool)

(assert (=> b!5098811 m!6156068))

(declare-fun m!6156070 () Bool)

(assert (=> b!5098800 m!6156070))

(declare-fun m!6156072 () Bool)

(assert (=> b!5098806 m!6156072))

(assert (=> b!5098806 m!6156072))

(declare-fun m!6156074 () Bool)

(assert (=> b!5098806 m!6156074))

(declare-fun m!6156076 () Bool)

(assert (=> setNonEmpty!29116 m!6156076))

(declare-fun m!6156078 () Bool)

(assert (=> b!5098805 m!6156078))

(declare-fun m!6156080 () Bool)

(assert (=> b!5098813 m!6156080))

(declare-fun m!6156082 () Bool)

(assert (=> b!5098802 m!6156082))

(declare-fun m!6156084 () Bool)

(assert (=> start!537760 m!6156084))

(declare-fun m!6156086 () Bool)

(assert (=> b!5098801 m!6156086))

(declare-fun m!6156088 () Bool)

(assert (=> b!5098801 m!6156088))

(declare-fun m!6156090 () Bool)

(assert (=> b!5098801 m!6156090))

(declare-fun m!6156092 () Bool)

(assert (=> b!5098801 m!6156092))

(declare-fun m!6156094 () Bool)

(assert (=> b!5098801 m!6156094))

(declare-fun m!6156096 () Bool)

(assert (=> b!5098801 m!6156096))

(declare-fun m!6156098 () Bool)

(assert (=> b!5098801 m!6156098))

(declare-fun m!6156100 () Bool)

(assert (=> b!5098801 m!6156100))

(declare-fun m!6156102 () Bool)

(assert (=> b!5098801 m!6156102))

(declare-fun m!6156104 () Bool)

(assert (=> b!5098801 m!6156104))

(declare-fun m!6156106 () Bool)

(assert (=> b!5098801 m!6156106))

(declare-fun m!6156108 () Bool)

(assert (=> b!5098801 m!6156108))

(declare-fun m!6156110 () Bool)

(assert (=> b!5098801 m!6156110))

(declare-fun m!6156112 () Bool)

(assert (=> b!5098803 m!6156112))

(check-sat (not b!5098812) (not b!5098804) (not b!5098809) (not b!5098813) (not b!5098808) (not b!5098800) (not b!5098801) (not b!5098802) tp_is_empty!37299 (not setNonEmpty!29116) (not b!5098805) (not b!5098803) (not b!5098806) (not start!537760) (not b!5098811) (not b!5098807))
(check-sat)
