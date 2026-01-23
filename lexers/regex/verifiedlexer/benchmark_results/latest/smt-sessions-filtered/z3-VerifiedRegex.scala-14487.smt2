; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!753800 () Bool)

(assert start!753800)

(declare-fun res!3167441 () Bool)

(declare-fun e!4718678 () Bool)

(assert (=> start!753800 (=> (not res!3167441) (not e!4718678))))

(declare-datatypes ((C!43648 0))(
  ( (C!43649 (val!32372 Int)) )
))
(declare-datatypes ((Regex!21655 0))(
  ( (ElementMatch!21655 (c!1470400 C!43648)) (Concat!30654 (regOne!43822 Regex!21655) (regTwo!43822 Regex!21655)) (EmptyExpr!21655) (Star!21655 (reg!21984 Regex!21655)) (EmptyLang!21655) (Union!21655 (regOne!43823 Regex!21655) (regTwo!43823 Regex!21655)) )
))
(declare-fun r!15422 () Regex!21655)

(declare-fun validRegex!11959 (Regex!21655) Bool)

(assert (=> start!753800 (= res!3167441 (validRegex!11959 r!15422))))

(assert (=> start!753800 e!4718678))

(declare-fun e!4718683 () Bool)

(assert (=> start!753800 e!4718683))

(assert (=> start!753800 true))

(declare-fun e!4718681 () Bool)

(assert (=> start!753800 e!4718681))

(declare-fun e!4718679 () Bool)

(assert (=> start!753800 e!4718679))

(declare-fun e!4718682 () Bool)

(assert (=> start!753800 e!4718682))

(declare-fun b!8010232 () Bool)

(declare-fun tp_is_empty!53853 () Bool)

(declare-fun tp!2396931 () Bool)

(assert (=> b!8010232 (= e!4718681 (and tp_is_empty!53853 tp!2396931))))

(declare-fun b!8010233 () Bool)

(declare-fun tp!2396934 () Bool)

(assert (=> b!8010233 (= e!4718679 tp!2396934)))

(declare-fun b!8010234 () Bool)

(declare-fun e!4718680 () Bool)

(declare-datatypes ((List!74884 0))(
  ( (Nil!74760) (Cons!74760 (h!81208 C!43648) (t!390627 List!74884)) )
))
(declare-fun testedP!353 () List!74884)

(declare-fun totalInput!1349 () List!74884)

(declare-fun isPrefix!6709 (List!74884 List!74884) Bool)

(assert (=> b!8010234 (= e!4718680 (not (isPrefix!6709 testedP!353 totalInput!1349)))))

(declare-fun lt!2716680 () List!74884)

(assert (=> b!8010234 (isPrefix!6709 testedP!353 lt!2716680)))

(declare-datatypes ((Unit!170776 0))(
  ( (Unit!170777) )
))
(declare-fun lt!2716681 () Unit!170776)

(declare-fun testedSuffix!271 () List!74884)

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!3940 (List!74884 List!74884) Unit!170776)

(assert (=> b!8010234 (= lt!2716681 (lemmaConcatTwoListThenFirstIsPrefix!3940 testedP!353 testedSuffix!271))))

(declare-fun b!8010235 () Bool)

(declare-fun tp!2396932 () Bool)

(assert (=> b!8010235 (= e!4718683 (and tp_is_empty!53853 tp!2396932))))

(declare-fun b!8010236 () Bool)

(declare-fun tp!2396936 () Bool)

(declare-fun tp!2396938 () Bool)

(assert (=> b!8010236 (= e!4718679 (and tp!2396936 tp!2396938))))

(declare-fun b!8010237 () Bool)

(declare-fun tp!2396937 () Bool)

(assert (=> b!8010237 (= e!4718682 (and tp_is_empty!53853 tp!2396937))))

(declare-fun b!8010238 () Bool)

(assert (=> b!8010238 (= e!4718678 e!4718680)))

(declare-fun res!3167440 () Bool)

(assert (=> b!8010238 (=> (not res!3167440) (not e!4718680))))

(assert (=> b!8010238 (= res!3167440 (= lt!2716680 totalInput!1349))))

(declare-fun ++!18481 (List!74884 List!74884) List!74884)

(assert (=> b!8010238 (= lt!2716680 (++!18481 testedP!353 testedSuffix!271))))

(declare-fun b!8010239 () Bool)

(declare-fun res!3167442 () Bool)

(assert (=> b!8010239 (=> (not res!3167442) (not e!4718680))))

(declare-fun totalInputSize!629 () Int)

(declare-fun size!43557 (List!74884) Int)

(assert (=> b!8010239 (= res!3167442 (= totalInputSize!629 (size!43557 totalInput!1349)))))

(declare-fun b!8010240 () Bool)

(declare-fun res!3167439 () Bool)

(assert (=> b!8010240 (=> (not res!3167439) (not e!4718680))))

(declare-fun testedPSize!271 () Int)

(assert (=> b!8010240 (= res!3167439 (= testedPSize!271 (size!43557 testedP!353)))))

(declare-fun b!8010241 () Bool)

(assert (=> b!8010241 (= e!4718679 tp_is_empty!53853)))

(declare-fun b!8010242 () Bool)

(declare-fun tp!2396933 () Bool)

(declare-fun tp!2396935 () Bool)

(assert (=> b!8010242 (= e!4718679 (and tp!2396933 tp!2396935))))

(assert (= (and start!753800 res!3167441) b!8010238))

(assert (= (and b!8010238 res!3167440) b!8010240))

(assert (= (and b!8010240 res!3167439) b!8010239))

(assert (= (and b!8010239 res!3167442) b!8010234))

(get-info :version)

(assert (= (and start!753800 ((_ is Cons!74760) totalInput!1349)) b!8010235))

(assert (= (and start!753800 ((_ is Cons!74760) testedSuffix!271)) b!8010232))

(assert (= (and start!753800 ((_ is ElementMatch!21655) r!15422)) b!8010241))

(assert (= (and start!753800 ((_ is Concat!30654) r!15422)) b!8010242))

(assert (= (and start!753800 ((_ is Star!21655) r!15422)) b!8010233))

(assert (= (and start!753800 ((_ is Union!21655) r!15422)) b!8010236))

(assert (= (and start!753800 ((_ is Cons!74760) testedP!353)) b!8010237))

(declare-fun m!8374860 () Bool)

(assert (=> b!8010238 m!8374860))

(declare-fun m!8374862 () Bool)

(assert (=> b!8010240 m!8374862))

(declare-fun m!8374864 () Bool)

(assert (=> start!753800 m!8374864))

(declare-fun m!8374866 () Bool)

(assert (=> b!8010239 m!8374866))

(declare-fun m!8374868 () Bool)

(assert (=> b!8010234 m!8374868))

(declare-fun m!8374870 () Bool)

(assert (=> b!8010234 m!8374870))

(declare-fun m!8374872 () Bool)

(assert (=> b!8010234 m!8374872))

(check-sat (not b!8010236) tp_is_empty!53853 (not b!8010237) (not b!8010233) (not b!8010232) (not start!753800) (not b!8010238) (not b!8010240) (not b!8010239) (not b!8010242) (not b!8010235) (not b!8010234))
(check-sat)
