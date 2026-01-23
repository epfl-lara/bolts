; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!243584 () Bool)

(assert start!243584)

(declare-fun b!2493681 () Bool)

(declare-fun e!1582560 () Bool)

(declare-fun tp_is_empty!12577 () Bool)

(declare-fun tp!798794 () Bool)

(assert (=> b!2493681 (= e!1582560 (and tp_is_empty!12577 tp!798794))))

(declare-fun b!2493682 () Bool)

(declare-fun e!1582561 () Bool)

(assert (=> b!2493682 (= e!1582561 false)))

(declare-fun b!2493683 () Bool)

(declare-fun e!1582564 () Bool)

(declare-fun e!1582562 () Bool)

(assert (=> b!2493683 (= e!1582564 e!1582562)))

(declare-fun res!1054778 () Bool)

(assert (=> b!2493683 (=> (not res!1054778) (not e!1582562))))

(declare-datatypes ((C!14880 0))(
  ( (C!14881 (val!9092 Int)) )
))
(declare-datatypes ((Regex!7361 0))(
  ( (ElementMatch!7361 (c!396473 C!14880)) (Concat!12057 (regOne!15234 Regex!7361) (regTwo!15234 Regex!7361)) (EmptyExpr!7361) (Star!7361 (reg!7690 Regex!7361)) (EmptyLang!7361) (Union!7361 (regOne!15235 Regex!7361) (regTwo!15235 Regex!7361)) )
))
(declare-fun lt!894180 () Regex!7361)

(declare-datatypes ((List!29426 0))(
  ( (Nil!29326) (Cons!29326 (h!34746 C!14880) (t!211125 List!29426)) )
))
(declare-fun tl!4068 () List!29426)

(declare-fun nullable!2278 (Regex!7361) Bool)

(declare-fun derivative!56 (Regex!7361 List!29426) Regex!7361)

(assert (=> b!2493683 (= res!1054778 (nullable!2278 (derivative!56 lt!894180 tl!4068)))))

(declare-fun r!27340 () Regex!7361)

(declare-fun c!14016 () C!14880)

(declare-fun derivativeStep!1930 (Regex!7361 C!14880) Regex!7361)

(assert (=> b!2493683 (= lt!894180 (derivativeStep!1930 r!27340 c!14016))))

(declare-fun b!2493684 () Bool)

(declare-fun e!1582563 () Bool)

(assert (=> b!2493684 (= e!1582563 tp_is_empty!12577)))

(declare-fun b!2493685 () Bool)

(assert (=> b!2493685 (= e!1582562 e!1582561)))

(declare-fun res!1054774 () Bool)

(assert (=> b!2493685 (=> (not res!1054774) (not e!1582561))))

(declare-fun lt!894179 () Regex!7361)

(assert (=> b!2493685 (= res!1054774 (= lt!894180 (Concat!12057 lt!894179 (Star!7361 (reg!7690 r!27340)))))))

(assert (=> b!2493685 (= lt!894179 (derivativeStep!1930 (reg!7690 r!27340) c!14016))))

(declare-fun b!2493686 () Bool)

(declare-fun tp!798795 () Bool)

(declare-fun tp!798797 () Bool)

(assert (=> b!2493686 (= e!1582563 (and tp!798795 tp!798797))))

(declare-fun b!2493687 () Bool)

(declare-fun tp!798793 () Bool)

(assert (=> b!2493687 (= e!1582563 tp!798793)))

(declare-fun res!1054776 () Bool)

(assert (=> start!243584 (=> (not res!1054776) (not e!1582564))))

(declare-fun validRegex!2987 (Regex!7361) Bool)

(assert (=> start!243584 (= res!1054776 (validRegex!2987 r!27340))))

(assert (=> start!243584 e!1582564))

(assert (=> start!243584 e!1582563))

(assert (=> start!243584 tp_is_empty!12577))

(assert (=> start!243584 e!1582560))

(declare-fun b!2493688 () Bool)

(declare-fun tp!798798 () Bool)

(declare-fun tp!798796 () Bool)

(assert (=> b!2493688 (= e!1582563 (and tp!798798 tp!798796))))

(declare-fun b!2493689 () Bool)

(declare-fun res!1054775 () Bool)

(assert (=> b!2493689 (=> (not res!1054775) (not e!1582561))))

(assert (=> b!2493689 (= res!1054775 (not (nullable!2278 (derivative!56 lt!894179 tl!4068))))))

(declare-fun b!2493690 () Bool)

(declare-fun res!1054777 () Bool)

(assert (=> b!2493690 (=> (not res!1054777) (not e!1582562))))

(get-info :version)

(assert (=> b!2493690 (= res!1054777 (and (not ((_ is EmptyExpr!7361) r!27340)) (not ((_ is EmptyLang!7361) r!27340)) (not ((_ is ElementMatch!7361) r!27340)) (not ((_ is Union!7361) r!27340)) ((_ is Star!7361) r!27340)))))

(assert (= (and start!243584 res!1054776) b!2493683))

(assert (= (and b!2493683 res!1054778) b!2493690))

(assert (= (and b!2493690 res!1054777) b!2493685))

(assert (= (and b!2493685 res!1054774) b!2493689))

(assert (= (and b!2493689 res!1054775) b!2493682))

(assert (= (and start!243584 ((_ is ElementMatch!7361) r!27340)) b!2493684))

(assert (= (and start!243584 ((_ is Concat!12057) r!27340)) b!2493688))

(assert (= (and start!243584 ((_ is Star!7361) r!27340)) b!2493687))

(assert (= (and start!243584 ((_ is Union!7361) r!27340)) b!2493686))

(assert (= (and start!243584 ((_ is Cons!29326) tl!4068)) b!2493681))

(declare-fun m!2859195 () Bool)

(assert (=> b!2493683 m!2859195))

(assert (=> b!2493683 m!2859195))

(declare-fun m!2859197 () Bool)

(assert (=> b!2493683 m!2859197))

(declare-fun m!2859199 () Bool)

(assert (=> b!2493683 m!2859199))

(declare-fun m!2859201 () Bool)

(assert (=> b!2493685 m!2859201))

(declare-fun m!2859203 () Bool)

(assert (=> start!243584 m!2859203))

(declare-fun m!2859205 () Bool)

(assert (=> b!2493689 m!2859205))

(assert (=> b!2493689 m!2859205))

(declare-fun m!2859207 () Bool)

(assert (=> b!2493689 m!2859207))

(check-sat (not b!2493688) (not b!2493689) (not start!243584) (not b!2493686) (not b!2493681) (not b!2493683) (not b!2493687) (not b!2493685) tp_is_empty!12577)
(check-sat)
