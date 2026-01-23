; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!752588 () Bool)

(assert start!752588)

(declare-fun b!7996431 () Bool)

(declare-fun res!3163143 () Bool)

(declare-fun e!4711267 () Bool)

(assert (=> b!7996431 (=> (not res!3163143) (not e!4711267))))

(declare-datatypes ((C!43456 0))(
  ( (C!43457 (val!32276 Int)) )
))
(declare-datatypes ((Regex!21559 0))(
  ( (ElementMatch!21559 (c!1468252 C!43456)) (Concat!30558 (regOne!43630 Regex!21559) (regTwo!43630 Regex!21559)) (EmptyExpr!21559) (Star!21559 (reg!21888 Regex!21559)) (EmptyLang!21559) (Union!21559 (regOne!43631 Regex!21559) (regTwo!43631 Regex!21559)) )
))
(declare-fun r!24786 () Regex!21559)

(declare-datatypes ((List!74788 0))(
  ( (Nil!74664) (Cons!74664 (h!81112 C!43456) (t!390531 List!74788)) )
))
(declare-fun input!8036 () List!74788)

(declare-fun baseR!141 () Regex!21559)

(declare-fun derivative!745 (Regex!21559 List!74788) Regex!21559)

(assert (=> b!7996431 (= res!3163143 (= (derivative!745 baseR!141 input!8036) r!24786))))

(declare-fun b!7996432 () Bool)

(declare-fun e!4711269 () Bool)

(declare-fun tp_is_empty!53661 () Bool)

(assert (=> b!7996432 (= e!4711269 tp_is_empty!53661)))

(declare-fun b!7996433 () Bool)

(declare-fun e!4711270 () Bool)

(declare-fun tp!2390679 () Bool)

(assert (=> b!7996433 (= e!4711270 tp!2390679)))

(declare-fun b!7996435 () Bool)

(declare-fun tp!2390678 () Bool)

(assert (=> b!7996435 (= e!4711269 tp!2390678)))

(declare-fun b!7996436 () Bool)

(declare-fun e!4711271 () Bool)

(declare-fun tp!2390681 () Bool)

(assert (=> b!7996436 (= e!4711271 (and tp_is_empty!53661 tp!2390681))))

(declare-fun b!7996437 () Bool)

(assert (=> b!7996437 (= e!4711270 tp_is_empty!53661)))

(declare-fun b!7996438 () Bool)

(declare-fun e!4711268 () Bool)

(assert (=> b!7996438 (= e!4711267 e!4711268)))

(declare-fun res!3163145 () Bool)

(assert (=> b!7996438 (=> (not res!3163145) (not e!4711268))))

(declare-fun lt!2713395 () Regex!21559)

(declare-fun validRegex!11863 (Regex!21559) Bool)

(assert (=> b!7996438 (= res!3163145 (validRegex!11863 lt!2713395))))

(declare-fun derivativeStep!6577 (Regex!21559 C!43456) Regex!21559)

(assert (=> b!7996438 (= lt!2713395 (derivativeStep!6577 baseR!141 (h!81112 input!8036)))))

(declare-fun b!7996439 () Bool)

(assert (=> b!7996439 (= e!4711268 (not true))))

(declare-fun lt!2713393 () List!74788)

(declare-fun lt!2713392 () List!74788)

(declare-fun ++!18417 (List!74788 List!74788) List!74788)

(assert (=> b!7996439 (= lt!2713393 (++!18417 input!8036 lt!2713392))))

(declare-fun c!12996 () C!43456)

(assert (=> b!7996439 (= (derivative!745 lt!2713395 (++!18417 (t!390531 input!8036) lt!2713392)) (derivativeStep!6577 r!24786 c!12996))))

(assert (=> b!7996439 (= lt!2713392 (Cons!74664 c!12996 Nil!74664))))

(declare-datatypes ((Unit!170572 0))(
  ( (Unit!170573) )
))
(declare-fun lt!2713394 () Unit!170572)

(declare-fun lemmaDerivativeOnLWithANewCharIsANewDerivativeStep!249 (Regex!21559 Regex!21559 List!74788 C!43456) Unit!170572)

(assert (=> b!7996439 (= lt!2713394 (lemmaDerivativeOnLWithANewCharIsANewDerivativeStep!249 lt!2713395 r!24786 (t!390531 input!8036) c!12996))))

(declare-fun b!7996440 () Bool)

(declare-fun tp!2390677 () Bool)

(declare-fun tp!2390686 () Bool)

(assert (=> b!7996440 (= e!4711269 (and tp!2390677 tp!2390686))))

(declare-fun b!7996441 () Bool)

(declare-fun res!3163142 () Bool)

(assert (=> b!7996441 (=> (not res!3163142) (not e!4711267))))

(get-info :version)

(assert (=> b!7996441 (= res!3163142 ((_ is Cons!74664) input!8036))))

(declare-fun b!7996442 () Bool)

(declare-fun tp!2390680 () Bool)

(declare-fun tp!2390683 () Bool)

(assert (=> b!7996442 (= e!4711270 (and tp!2390680 tp!2390683))))

(declare-fun b!7996434 () Bool)

(declare-fun tp!2390676 () Bool)

(declare-fun tp!2390682 () Bool)

(assert (=> b!7996434 (= e!4711269 (and tp!2390676 tp!2390682))))

(declare-fun res!3163144 () Bool)

(assert (=> start!752588 (=> (not res!3163144) (not e!4711267))))

(assert (=> start!752588 (= res!3163144 (validRegex!11863 baseR!141))))

(assert (=> start!752588 e!4711267))

(assert (=> start!752588 e!4711269))

(assert (=> start!752588 e!4711271))

(assert (=> start!752588 e!4711270))

(assert (=> start!752588 tp_is_empty!53661))

(declare-fun b!7996443 () Bool)

(declare-fun res!3163146 () Bool)

(assert (=> b!7996443 (=> (not res!3163146) (not e!4711268))))

(assert (=> b!7996443 (= res!3163146 (= (derivative!745 lt!2713395 (t!390531 input!8036)) r!24786))))

(declare-fun b!7996444 () Bool)

(declare-fun tp!2390684 () Bool)

(declare-fun tp!2390685 () Bool)

(assert (=> b!7996444 (= e!4711270 (and tp!2390684 tp!2390685))))

(assert (= (and start!752588 res!3163144) b!7996431))

(assert (= (and b!7996431 res!3163143) b!7996441))

(assert (= (and b!7996441 res!3163142) b!7996438))

(assert (= (and b!7996438 res!3163145) b!7996443))

(assert (= (and b!7996443 res!3163146) b!7996439))

(assert (= (and start!752588 ((_ is ElementMatch!21559) baseR!141)) b!7996432))

(assert (= (and start!752588 ((_ is Concat!30558) baseR!141)) b!7996434))

(assert (= (and start!752588 ((_ is Star!21559) baseR!141)) b!7996435))

(assert (= (and start!752588 ((_ is Union!21559) baseR!141)) b!7996440))

(assert (= (and start!752588 ((_ is Cons!74664) input!8036)) b!7996436))

(assert (= (and start!752588 ((_ is ElementMatch!21559) r!24786)) b!7996437))

(assert (= (and start!752588 ((_ is Concat!30558) r!24786)) b!7996444))

(assert (= (and start!752588 ((_ is Star!21559) r!24786)) b!7996433))

(assert (= (and start!752588 ((_ is Union!21559) r!24786)) b!7996442))

(declare-fun m!8367070 () Bool)

(assert (=> b!7996443 m!8367070))

(declare-fun m!8367072 () Bool)

(assert (=> b!7996438 m!8367072))

(declare-fun m!8367074 () Bool)

(assert (=> b!7996438 m!8367074))

(declare-fun m!8367076 () Bool)

(assert (=> b!7996439 m!8367076))

(declare-fun m!8367078 () Bool)

(assert (=> b!7996439 m!8367078))

(declare-fun m!8367080 () Bool)

(assert (=> b!7996439 m!8367080))

(declare-fun m!8367082 () Bool)

(assert (=> b!7996439 m!8367082))

(assert (=> b!7996439 m!8367076))

(declare-fun m!8367084 () Bool)

(assert (=> b!7996439 m!8367084))

(declare-fun m!8367086 () Bool)

(assert (=> start!752588 m!8367086))

(declare-fun m!8367088 () Bool)

(assert (=> b!7996431 m!8367088))

(check-sat (not b!7996440) (not b!7996433) (not b!7996434) (not b!7996438) (not b!7996436) (not b!7996439) (not b!7996435) (not b!7996442) tp_is_empty!53661 (not b!7996431) (not start!752588) (not b!7996444) (not b!7996443))
(check-sat)
