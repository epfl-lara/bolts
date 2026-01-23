; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!753012 () Bool)

(assert start!753012)

(declare-fun res!3165041 () Bool)

(declare-fun e!4714988 () Bool)

(assert (=> start!753012 (=> (not res!3165041) (not e!4714988))))

(declare-datatypes ((C!43572 0))(
  ( (C!43573 (val!32334 Int)) )
))
(declare-datatypes ((Regex!21617 0))(
  ( (ElementMatch!21617 (c!1469442 C!43572)) (Concat!30616 (regOne!43746 Regex!21617) (regTwo!43746 Regex!21617)) (EmptyExpr!21617) (Star!21617 (reg!21946 Regex!21617)) (EmptyLang!21617) (Union!21617 (regOne!43747 Regex!21617) (regTwo!43747 Regex!21617)) )
))
(declare-fun r!15422 () Regex!21617)

(declare-fun validRegex!11921 (Regex!21617) Bool)

(assert (=> start!753012 (= res!3165041 (validRegex!11921 r!15422))))

(assert (=> start!753012 e!4714988))

(declare-fun e!4714984 () Bool)

(assert (=> start!753012 e!4714984))

(assert (=> start!753012 true))

(declare-fun e!4714986 () Bool)

(assert (=> start!753012 e!4714986))

(declare-fun e!4714990 () Bool)

(assert (=> start!753012 e!4714990))

(declare-fun e!4714983 () Bool)

(assert (=> start!753012 e!4714983))

(declare-fun b!8004044 () Bool)

(declare-fun tp_is_empty!53777 () Bool)

(declare-fun tp!2394711 () Bool)

(assert (=> b!8004044 (= e!4714984 (and tp_is_empty!53777 tp!2394711))))

(declare-fun b!8004045 () Bool)

(declare-fun e!4714981 () Bool)

(assert (=> b!8004045 (= e!4714981 true)))

(declare-datatypes ((List!74846 0))(
  ( (Nil!74722) (Cons!74722 (h!81170 C!43572) (t!390589 List!74846)) )
))
(declare-fun totalInput!1349 () List!74846)

(declare-fun isPrefix!6671 (List!74846 List!74846) Bool)

(assert (=> b!8004045 (isPrefix!6671 totalInput!1349 totalInput!1349)))

(declare-datatypes ((Unit!170628 0))(
  ( (Unit!170629) )
))
(declare-fun lt!2714162 () Unit!170628)

(declare-fun lemmaIsPrefixRefl!4123 (List!74846 List!74846) Unit!170628)

(assert (=> b!8004045 (= lt!2714162 (lemmaIsPrefixRefl!4123 totalInput!1349 totalInput!1349))))

(declare-fun b!8004046 () Bool)

(declare-fun tp!2394710 () Bool)

(declare-fun tp!2394708 () Bool)

(assert (=> b!8004046 (= e!4714990 (and tp!2394710 tp!2394708))))

(declare-fun b!8004047 () Bool)

(declare-fun tp!2394712 () Bool)

(assert (=> b!8004047 (= e!4714990 tp!2394712)))

(declare-fun b!8004048 () Bool)

(declare-fun e!4714985 () Bool)

(declare-fun e!4714989 () Bool)

(assert (=> b!8004048 (= e!4714985 e!4714989)))

(declare-fun res!3165045 () Bool)

(assert (=> b!8004048 (=> (not res!3165045) (not e!4714989))))

(declare-fun testedPSize!271 () Int)

(declare-fun lt!2714160 () Int)

(assert (=> b!8004048 (= res!3165045 (= testedPSize!271 lt!2714160))))

(declare-fun testedP!353 () List!74846)

(declare-fun size!43519 (List!74846) Int)

(assert (=> b!8004048 (= lt!2714160 (size!43519 testedP!353))))

(declare-fun b!8004049 () Bool)

(declare-fun e!4714991 () Bool)

(declare-fun e!4714987 () Bool)

(assert (=> b!8004049 (= e!4714991 (not e!4714987))))

(declare-fun res!3165043 () Bool)

(assert (=> b!8004049 (=> res!3165043 e!4714987)))

(assert (=> b!8004049 (= res!3165043 (not (isPrefix!6671 testedP!353 totalInput!1349)))))

(declare-fun lt!2714163 () List!74846)

(assert (=> b!8004049 (isPrefix!6671 testedP!353 lt!2714163)))

(declare-fun lt!2714159 () Unit!170628)

(declare-fun testedSuffix!271 () List!74846)

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!3902 (List!74846 List!74846) Unit!170628)

(assert (=> b!8004049 (= lt!2714159 (lemmaConcatTwoListThenFirstIsPrefix!3902 testedP!353 testedSuffix!271))))

(declare-fun b!8004050 () Bool)

(assert (=> b!8004050 (= e!4714988 e!4714985)))

(declare-fun res!3165044 () Bool)

(assert (=> b!8004050 (=> (not res!3165044) (not e!4714985))))

(assert (=> b!8004050 (= res!3165044 (= lt!2714163 totalInput!1349))))

(declare-fun ++!18443 (List!74846 List!74846) List!74846)

(assert (=> b!8004050 (= lt!2714163 (++!18443 testedP!353 testedSuffix!271))))

(declare-fun b!8004051 () Bool)

(declare-fun tp!2394709 () Bool)

(assert (=> b!8004051 (= e!4714983 (and tp_is_empty!53777 tp!2394709))))

(declare-fun b!8004052 () Bool)

(declare-fun e!4714982 () Bool)

(assert (=> b!8004052 (= e!4714987 e!4714982)))

(declare-fun res!3165042 () Bool)

(assert (=> b!8004052 (=> res!3165042 e!4714982)))

(declare-fun lostCause!2014 (Regex!21617) Bool)

(assert (=> b!8004052 (= res!3165042 (lostCause!2014 r!15422))))

(declare-fun lt!2714165 () List!74846)

(assert (=> b!8004052 (and (= testedSuffix!271 lt!2714165) (= lt!2714165 testedSuffix!271))))

(declare-fun lt!2714164 () Unit!170628)

(declare-fun lemmaSamePrefixThenSameSuffix!3034 (List!74846 List!74846 List!74846 List!74846 List!74846) Unit!170628)

(assert (=> b!8004052 (= lt!2714164 (lemmaSamePrefixThenSameSuffix!3034 testedP!353 testedSuffix!271 testedP!353 lt!2714165 totalInput!1349))))

(declare-fun getSuffix!3868 (List!74846 List!74846) List!74846)

(assert (=> b!8004052 (= lt!2714165 (getSuffix!3868 totalInput!1349 testedP!353))))

(declare-fun b!8004053 () Bool)

(declare-fun res!3165048 () Bool)

(assert (=> b!8004053 (=> res!3165048 e!4714982)))

(declare-fun totalInputSize!629 () Int)

(assert (=> b!8004053 (= res!3165048 (= testedPSize!271 totalInputSize!629))))

(declare-fun b!8004054 () Bool)

(assert (=> b!8004054 (= e!4714989 e!4714991)))

(declare-fun res!3165047 () Bool)

(assert (=> b!8004054 (=> (not res!3165047) (not e!4714991))))

(declare-fun lt!2714161 () Int)

(assert (=> b!8004054 (= res!3165047 (= totalInputSize!629 lt!2714161))))

(assert (=> b!8004054 (= lt!2714161 (size!43519 totalInput!1349))))

(declare-fun b!8004055 () Bool)

(declare-fun tp!2394713 () Bool)

(assert (=> b!8004055 (= e!4714986 (and tp_is_empty!53777 tp!2394713))))

(declare-fun b!8004056 () Bool)

(assert (=> b!8004056 (= e!4714982 e!4714981)))

(declare-fun res!3165046 () Bool)

(assert (=> b!8004056 (=> res!3165046 e!4714981)))

(assert (=> b!8004056 (= res!3165046 (not (= lt!2714160 lt!2714161)))))

(assert (=> b!8004056 (<= lt!2714160 lt!2714161)))

(declare-fun lt!2714158 () Unit!170628)

(declare-fun lemmaIsPrefixThenSmallerEqSize!1172 (List!74846 List!74846) Unit!170628)

(assert (=> b!8004056 (= lt!2714158 (lemmaIsPrefixThenSmallerEqSize!1172 testedP!353 totalInput!1349))))

(declare-fun b!8004057 () Bool)

(assert (=> b!8004057 (= e!4714990 tp_is_empty!53777)))

(declare-fun b!8004058 () Bool)

(declare-fun tp!2394707 () Bool)

(declare-fun tp!2394714 () Bool)

(assert (=> b!8004058 (= e!4714990 (and tp!2394707 tp!2394714))))

(assert (= (and start!753012 res!3165041) b!8004050))

(assert (= (and b!8004050 res!3165044) b!8004048))

(assert (= (and b!8004048 res!3165045) b!8004054))

(assert (= (and b!8004054 res!3165047) b!8004049))

(assert (= (and b!8004049 (not res!3165043)) b!8004052))

(assert (= (and b!8004052 (not res!3165042)) b!8004053))

(assert (= (and b!8004053 (not res!3165048)) b!8004056))

(assert (= (and b!8004056 (not res!3165046)) b!8004045))

(get-info :version)

(assert (= (and start!753012 ((_ is Cons!74722) totalInput!1349)) b!8004044))

(assert (= (and start!753012 ((_ is Cons!74722) testedSuffix!271)) b!8004055))

(assert (= (and start!753012 ((_ is ElementMatch!21617) r!15422)) b!8004057))

(assert (= (and start!753012 ((_ is Concat!30616) r!15422)) b!8004046))

(assert (= (and start!753012 ((_ is Star!21617) r!15422)) b!8004047))

(assert (= (and start!753012 ((_ is Union!21617) r!15422)) b!8004058))

(assert (= (and start!753012 ((_ is Cons!74722) testedP!353)) b!8004051))

(declare-fun m!8369776 () Bool)

(assert (=> start!753012 m!8369776))

(declare-fun m!8369778 () Bool)

(assert (=> b!8004052 m!8369778))

(declare-fun m!8369780 () Bool)

(assert (=> b!8004052 m!8369780))

(declare-fun m!8369782 () Bool)

(assert (=> b!8004052 m!8369782))

(declare-fun m!8369784 () Bool)

(assert (=> b!8004054 m!8369784))

(declare-fun m!8369786 () Bool)

(assert (=> b!8004049 m!8369786))

(declare-fun m!8369788 () Bool)

(assert (=> b!8004049 m!8369788))

(declare-fun m!8369790 () Bool)

(assert (=> b!8004049 m!8369790))

(declare-fun m!8369792 () Bool)

(assert (=> b!8004056 m!8369792))

(declare-fun m!8369794 () Bool)

(assert (=> b!8004045 m!8369794))

(declare-fun m!8369796 () Bool)

(assert (=> b!8004045 m!8369796))

(declare-fun m!8369798 () Bool)

(assert (=> b!8004050 m!8369798))

(declare-fun m!8369800 () Bool)

(assert (=> b!8004048 m!8369800))

(check-sat (not b!8004049) (not b!8004056) (not b!8004058) (not b!8004046) (not b!8004050) (not b!8004054) (not b!8004055) (not start!753012) (not b!8004052) (not b!8004051) (not b!8004045) (not b!8004048) (not b!8004047) (not b!8004044) tp_is_empty!53777)
(check-sat)
