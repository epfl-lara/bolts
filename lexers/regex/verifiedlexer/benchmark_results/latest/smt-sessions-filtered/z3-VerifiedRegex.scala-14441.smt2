; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!752616 () Bool)

(assert start!752616)

(declare-fun b!7996913 () Bool)

(declare-fun e!4711485 () Bool)

(declare-fun tp_is_empty!53669 () Bool)

(assert (=> b!7996913 (= e!4711485 tp_is_empty!53669)))

(declare-fun b!7996914 () Bool)

(declare-fun res!3163254 () Bool)

(declare-fun e!4711486 () Bool)

(assert (=> b!7996914 (=> (not res!3163254) (not e!4711486))))

(declare-datatypes ((C!43464 0))(
  ( (C!43465 (val!32280 Int)) )
))
(declare-datatypes ((Regex!21563 0))(
  ( (ElementMatch!21563 (c!1468334 C!43464)) (Concat!30562 (regOne!43638 Regex!21563) (regTwo!43638 Regex!21563)) (EmptyExpr!21563) (Star!21563 (reg!21892 Regex!21563)) (EmptyLang!21563) (Union!21563 (regOne!43639 Regex!21563) (regTwo!43639 Regex!21563)) )
))
(declare-fun r!24786 () Regex!21563)

(declare-datatypes ((List!74792 0))(
  ( (Nil!74668) (Cons!74668 (h!81116 C!43464) (t!390535 List!74792)) )
))
(declare-fun input!8036 () List!74792)

(declare-fun baseR!141 () Regex!21563)

(declare-fun derivative!749 (Regex!21563 List!74792) Regex!21563)

(assert (=> b!7996914 (= res!3163254 (= (derivative!749 baseR!141 input!8036) r!24786))))

(declare-fun b!7996915 () Bool)

(declare-fun res!3163256 () Bool)

(assert (=> b!7996915 (=> (not res!3163256) (not e!4711486))))

(get-info :version)

(assert (=> b!7996915 (= res!3163256 (not ((_ is Cons!74668) input!8036)))))

(declare-fun b!7996917 () Bool)

(declare-fun e!4711487 () Bool)

(assert (=> b!7996917 (= e!4711487 tp_is_empty!53669)))

(declare-fun b!7996918 () Bool)

(declare-fun tp!2390936 () Bool)

(declare-fun tp!2390934 () Bool)

(assert (=> b!7996918 (= e!4711485 (and tp!2390936 tp!2390934))))

(declare-fun b!7996919 () Bool)

(assert (=> b!7996919 (= e!4711486 false)))

(declare-fun lt!2713443 () List!74792)

(declare-fun c!12996 () C!43464)

(declare-fun ++!18421 (List!74792 List!74792) List!74792)

(assert (=> b!7996919 (= lt!2713443 (++!18421 input!8036 (Cons!74668 c!12996 Nil!74668)))))

(declare-fun b!7996920 () Bool)

(declare-fun tp!2390937 () Bool)

(declare-fun tp!2390943 () Bool)

(assert (=> b!7996920 (= e!4711487 (and tp!2390937 tp!2390943))))

(declare-fun b!7996921 () Bool)

(declare-fun tp!2390935 () Bool)

(declare-fun tp!2390944 () Bool)

(assert (=> b!7996921 (= e!4711487 (and tp!2390935 tp!2390944))))

(declare-fun b!7996922 () Bool)

(declare-fun tp!2390942 () Bool)

(declare-fun tp!2390941 () Bool)

(assert (=> b!7996922 (= e!4711485 (and tp!2390942 tp!2390941))))

(declare-fun b!7996923 () Bool)

(declare-fun e!4711484 () Bool)

(declare-fun tp!2390938 () Bool)

(assert (=> b!7996923 (= e!4711484 (and tp_is_empty!53669 tp!2390938))))

(declare-fun b!7996924 () Bool)

(declare-fun tp!2390940 () Bool)

(assert (=> b!7996924 (= e!4711487 tp!2390940)))

(declare-fun b!7996916 () Bool)

(declare-fun tp!2390939 () Bool)

(assert (=> b!7996916 (= e!4711485 tp!2390939)))

(declare-fun res!3163255 () Bool)

(assert (=> start!752616 (=> (not res!3163255) (not e!4711486))))

(declare-fun validRegex!11867 (Regex!21563) Bool)

(assert (=> start!752616 (= res!3163255 (validRegex!11867 baseR!141))))

(assert (=> start!752616 e!4711486))

(assert (=> start!752616 e!4711485))

(assert (=> start!752616 e!4711484))

(assert (=> start!752616 e!4711487))

(assert (=> start!752616 tp_is_empty!53669))

(assert (= (and start!752616 res!3163255) b!7996914))

(assert (= (and b!7996914 res!3163254) b!7996915))

(assert (= (and b!7996915 res!3163256) b!7996919))

(assert (= (and start!752616 ((_ is ElementMatch!21563) baseR!141)) b!7996913))

(assert (= (and start!752616 ((_ is Concat!30562) baseR!141)) b!7996918))

(assert (= (and start!752616 ((_ is Star!21563) baseR!141)) b!7996916))

(assert (= (and start!752616 ((_ is Union!21563) baseR!141)) b!7996922))

(assert (= (and start!752616 ((_ is Cons!74668) input!8036)) b!7996923))

(assert (= (and start!752616 ((_ is ElementMatch!21563) r!24786)) b!7996917))

(assert (= (and start!752616 ((_ is Concat!30562) r!24786)) b!7996920))

(assert (= (and start!752616 ((_ is Star!21563) r!24786)) b!7996924))

(assert (= (and start!752616 ((_ is Union!21563) r!24786)) b!7996921))

(declare-fun m!8367268 () Bool)

(assert (=> b!7996914 m!8367268))

(declare-fun m!8367270 () Bool)

(assert (=> b!7996919 m!8367270))

(declare-fun m!8367272 () Bool)

(assert (=> start!752616 m!8367272))

(check-sat (not b!7996924) (not b!7996914) tp_is_empty!53669 (not b!7996919) (not b!7996918) (not b!7996916) (not b!7996921) (not b!7996922) (not b!7996920) (not b!7996923) (not start!752616))
(check-sat)
