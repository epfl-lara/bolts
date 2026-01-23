; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!753004 () Bool)

(assert start!753004)

(declare-fun b!8003871 () Bool)

(declare-fun e!4714861 () Bool)

(declare-fun tp!2394615 () Bool)

(declare-fun tp!2394618 () Bool)

(assert (=> b!8003871 (= e!4714861 (and tp!2394615 tp!2394618))))

(declare-fun b!8003872 () Bool)

(declare-fun res!3164958 () Bool)

(declare-fun e!4714863 () Bool)

(assert (=> b!8003872 (=> (not res!3164958) (not e!4714863))))

(declare-fun totalInputSize!629 () Int)

(declare-datatypes ((C!43564 0))(
  ( (C!43565 (val!32330 Int)) )
))
(declare-datatypes ((List!74842 0))(
  ( (Nil!74718) (Cons!74718 (h!81166 C!43564) (t!390585 List!74842)) )
))
(declare-fun totalInput!1349 () List!74842)

(declare-fun size!43515 (List!74842) Int)

(assert (=> b!8003872 (= res!3164958 (= totalInputSize!629 (size!43515 totalInput!1349)))))

(declare-fun b!8003873 () Bool)

(declare-fun e!4714860 () Bool)

(assert (=> b!8003873 (= e!4714863 (not e!4714860))))

(declare-fun res!3164957 () Bool)

(assert (=> b!8003873 (=> res!3164957 e!4714860)))

(declare-fun testedP!353 () List!74842)

(declare-fun isPrefix!6667 (List!74842 List!74842) Bool)

(assert (=> b!8003873 (= res!3164957 (not (isPrefix!6667 testedP!353 totalInput!1349)))))

(declare-fun lt!2714071 () List!74842)

(assert (=> b!8003873 (isPrefix!6667 testedP!353 lt!2714071)))

(declare-datatypes ((Unit!170620 0))(
  ( (Unit!170621) )
))
(declare-fun lt!2714073 () Unit!170620)

(declare-fun testedSuffix!271 () List!74842)

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!3898 (List!74842 List!74842) Unit!170620)

(assert (=> b!8003873 (= lt!2714073 (lemmaConcatTwoListThenFirstIsPrefix!3898 testedP!353 testedSuffix!271))))

(declare-fun b!8003874 () Bool)

(declare-fun e!4714859 () Bool)

(declare-fun tp_is_empty!53769 () Bool)

(declare-fun tp!2394616 () Bool)

(assert (=> b!8003874 (= e!4714859 (and tp_is_empty!53769 tp!2394616))))

(declare-fun b!8003875 () Bool)

(declare-fun res!3164956 () Bool)

(assert (=> b!8003875 (=> (not res!3164956) (not e!4714863))))

(declare-fun testedPSize!271 () Int)

(assert (=> b!8003875 (= res!3164956 (= testedPSize!271 (size!43515 testedP!353)))))

(declare-fun b!8003876 () Bool)

(declare-fun res!3164955 () Bool)

(declare-fun e!4714865 () Bool)

(assert (=> b!8003876 (=> res!3164955 e!4714865)))

(assert (=> b!8003876 (= res!3164955 (not (= testedPSize!271 totalInputSize!629)))))

(declare-fun b!8003877 () Bool)

(declare-fun e!4714858 () Bool)

(declare-fun tp!2394612 () Bool)

(assert (=> b!8003877 (= e!4714858 (and tp_is_empty!53769 tp!2394612))))

(declare-fun b!8003878 () Bool)

(declare-fun tp!2394617 () Bool)

(declare-fun tp!2394614 () Bool)

(assert (=> b!8003878 (= e!4714861 (and tp!2394617 tp!2394614))))

(declare-fun res!3164952 () Bool)

(declare-fun e!4714864 () Bool)

(assert (=> start!753004 (=> (not res!3164952) (not e!4714864))))

(declare-datatypes ((Regex!21613 0))(
  ( (ElementMatch!21613 (c!1469438 C!43564)) (Concat!30612 (regOne!43738 Regex!21613) (regTwo!43738 Regex!21613)) (EmptyExpr!21613) (Star!21613 (reg!21942 Regex!21613)) (EmptyLang!21613) (Union!21613 (regOne!43739 Regex!21613) (regTwo!43739 Regex!21613)) )
))
(declare-fun r!15422 () Regex!21613)

(declare-fun validRegex!11917 (Regex!21613) Bool)

(assert (=> start!753004 (= res!3164952 (validRegex!11917 r!15422))))

(assert (=> start!753004 e!4714864))

(assert (=> start!753004 e!4714859))

(assert (=> start!753004 true))

(declare-fun e!4714862 () Bool)

(assert (=> start!753004 e!4714862))

(assert (=> start!753004 e!4714861))

(assert (=> start!753004 e!4714858))

(declare-fun b!8003879 () Bool)

(declare-fun tp!2394611 () Bool)

(assert (=> b!8003879 (= e!4714861 tp!2394611)))

(declare-fun b!8003880 () Bool)

(assert (=> b!8003880 (= e!4714865 true)))

(assert (=> b!8003880 (isPrefix!6667 totalInput!1349 totalInput!1349)))

(declare-fun lt!2714075 () Unit!170620)

(declare-fun lemmaIsPrefixRefl!4121 (List!74842 List!74842) Unit!170620)

(assert (=> b!8003880 (= lt!2714075 (lemmaIsPrefixRefl!4121 totalInput!1349 totalInput!1349))))

(declare-fun b!8003881 () Bool)

(assert (=> b!8003881 (= e!4714864 e!4714863)))

(declare-fun res!3164953 () Bool)

(assert (=> b!8003881 (=> (not res!3164953) (not e!4714863))))

(assert (=> b!8003881 (= res!3164953 (= lt!2714071 totalInput!1349))))

(declare-fun ++!18439 (List!74842 List!74842) List!74842)

(assert (=> b!8003881 (= lt!2714071 (++!18439 testedP!353 testedSuffix!271))))

(declare-fun b!8003882 () Bool)

(declare-fun tp!2394613 () Bool)

(assert (=> b!8003882 (= e!4714862 (and tp_is_empty!53769 tp!2394613))))

(declare-fun b!8003883 () Bool)

(assert (=> b!8003883 (= e!4714861 tp_is_empty!53769)))

(declare-fun b!8003884 () Bool)

(assert (=> b!8003884 (= e!4714860 e!4714865)))

(declare-fun res!3164954 () Bool)

(assert (=> b!8003884 (=> res!3164954 e!4714865)))

(declare-fun lostCause!2010 (Regex!21613) Bool)

(assert (=> b!8003884 (= res!3164954 (lostCause!2010 r!15422))))

(declare-fun lt!2714072 () List!74842)

(assert (=> b!8003884 (and (= testedSuffix!271 lt!2714072) (= lt!2714072 testedSuffix!271))))

(declare-fun lt!2714074 () Unit!170620)

(declare-fun lemmaSamePrefixThenSameSuffix!3030 (List!74842 List!74842 List!74842 List!74842 List!74842) Unit!170620)

(assert (=> b!8003884 (= lt!2714074 (lemmaSamePrefixThenSameSuffix!3030 testedP!353 testedSuffix!271 testedP!353 lt!2714072 totalInput!1349))))

(declare-fun getSuffix!3864 (List!74842 List!74842) List!74842)

(assert (=> b!8003884 (= lt!2714072 (getSuffix!3864 totalInput!1349 testedP!353))))

(assert (= (and start!753004 res!3164952) b!8003881))

(assert (= (and b!8003881 res!3164953) b!8003875))

(assert (= (and b!8003875 res!3164956) b!8003872))

(assert (= (and b!8003872 res!3164958) b!8003873))

(assert (= (and b!8003873 (not res!3164957)) b!8003884))

(assert (= (and b!8003884 (not res!3164954)) b!8003876))

(assert (= (and b!8003876 (not res!3164955)) b!8003880))

(get-info :version)

(assert (= (and start!753004 ((_ is Cons!74718) totalInput!1349)) b!8003874))

(assert (= (and start!753004 ((_ is Cons!74718) testedSuffix!271)) b!8003882))

(assert (= (and start!753004 ((_ is ElementMatch!21613) r!15422)) b!8003883))

(assert (= (and start!753004 ((_ is Concat!30612) r!15422)) b!8003871))

(assert (= (and start!753004 ((_ is Star!21613) r!15422)) b!8003879))

(assert (= (and start!753004 ((_ is Union!21613) r!15422)) b!8003878))

(assert (= (and start!753004 ((_ is Cons!74718) testedP!353)) b!8003877))

(declare-fun m!8369682 () Bool)

(assert (=> b!8003881 m!8369682))

(declare-fun m!8369684 () Bool)

(assert (=> start!753004 m!8369684))

(declare-fun m!8369686 () Bool)

(assert (=> b!8003872 m!8369686))

(declare-fun m!8369688 () Bool)

(assert (=> b!8003873 m!8369688))

(declare-fun m!8369690 () Bool)

(assert (=> b!8003873 m!8369690))

(declare-fun m!8369692 () Bool)

(assert (=> b!8003873 m!8369692))

(declare-fun m!8369694 () Bool)

(assert (=> b!8003880 m!8369694))

(declare-fun m!8369696 () Bool)

(assert (=> b!8003880 m!8369696))

(declare-fun m!8369698 () Bool)

(assert (=> b!8003884 m!8369698))

(declare-fun m!8369700 () Bool)

(assert (=> b!8003884 m!8369700))

(declare-fun m!8369702 () Bool)

(assert (=> b!8003884 m!8369702))

(declare-fun m!8369704 () Bool)

(assert (=> b!8003875 m!8369704))

(check-sat (not b!8003874) (not b!8003879) (not b!8003884) tp_is_empty!53769 (not b!8003872) (not b!8003882) (not b!8003881) (not b!8003877) (not start!753004) (not b!8003878) (not b!8003873) (not b!8003875) (not b!8003880) (not b!8003871))
(check-sat)
