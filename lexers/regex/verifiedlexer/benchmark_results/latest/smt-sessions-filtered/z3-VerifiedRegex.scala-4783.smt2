; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!246484 () Bool)

(assert start!246484)

(declare-fun b!2532183 () Bool)

(declare-fun e!1602239 () Bool)

(assert (=> b!2532183 (= e!1602239 (not true))))

(declare-datatypes ((C!15240 0))(
  ( (C!15241 (val!9272 Int)) )
))
(declare-datatypes ((Regex!7541 0))(
  ( (ElementMatch!7541 (c!404543 C!15240)) (Concat!12237 (regOne!15594 Regex!7541) (regTwo!15594 Regex!7541)) (EmptyExpr!7541) (Star!7541 (reg!7870 Regex!7541)) (EmptyLang!7541) (Union!7541 (regOne!15595 Regex!7541) (regTwo!15595 Regex!7541)) )
))
(declare-fun lt!901292 () Regex!7541)

(declare-datatypes ((List!29606 0))(
  ( (Nil!29506) (Cons!29506 (h!34926 C!15240) (t!211305 List!29606)) )
))
(declare-fun lt!901294 () List!29606)

(declare-fun derivative!236 (Regex!7541 List!29606) Regex!7541)

(assert (=> b!2532183 (= (derivative!236 lt!901292 lt!901294) lt!901292)))

(declare-datatypes ((Unit!43299 0))(
  ( (Unit!43300) )
))
(declare-fun lt!901291 () Unit!43299)

(declare-fun lemmaEmptyLangDerivativeIsAFixPoint!54 (Regex!7541 List!29606) Unit!43299)

(assert (=> b!2532183 (= lt!901291 (lemmaEmptyLangDerivativeIsAFixPoint!54 lt!901292 lt!901294))))

(declare-fun tl!4068 () List!29606)

(declare-fun tail!4055 (List!29606) List!29606)

(assert (=> b!2532183 (= lt!901294 (tail!4055 tl!4068))))

(declare-fun lt!901293 () Regex!7541)

(declare-fun derivativeStep!2110 (Regex!7541 C!15240) Regex!7541)

(declare-fun head!5780 (List!29606) C!15240)

(assert (=> b!2532183 (= lt!901292 (derivativeStep!2110 lt!901293 (head!5780 tl!4068)))))

(declare-fun b!2532184 () Bool)

(declare-fun res!1068832 () Bool)

(assert (=> b!2532184 (=> (not res!1068832) (not e!1602239))))

(declare-fun isEmpty!16976 (List!29606) Bool)

(assert (=> b!2532184 (= res!1068832 (not (isEmpty!16976 tl!4068)))))

(declare-fun b!2532185 () Bool)

(declare-fun res!1068833 () Bool)

(assert (=> b!2532185 (=> (not res!1068833) (not e!1602239))))

(declare-fun r!27340 () Regex!7541)

(declare-fun c!14016 () C!15240)

(get-info :version)

(assert (=> b!2532185 (= res!1068833 (and (not ((_ is EmptyExpr!7541) r!27340)) (not ((_ is EmptyLang!7541) r!27340)) ((_ is ElementMatch!7541) r!27340) (= c!14016 (c!404543 r!27340)) (= lt!901293 EmptyExpr!7541)))))

(declare-fun b!2532186 () Bool)

(declare-fun e!1602240 () Bool)

(assert (=> b!2532186 (= e!1602240 e!1602239)))

(declare-fun res!1068831 () Bool)

(assert (=> b!2532186 (=> (not res!1068831) (not e!1602239))))

(declare-fun nullable!2458 (Regex!7541) Bool)

(assert (=> b!2532186 (= res!1068831 (nullable!2458 (derivative!236 lt!901293 tl!4068)))))

(assert (=> b!2532186 (= lt!901293 (derivativeStep!2110 r!27340 c!14016))))

(declare-fun b!2532187 () Bool)

(declare-fun e!1602241 () Bool)

(declare-fun tp!808738 () Bool)

(declare-fun tp!808739 () Bool)

(assert (=> b!2532187 (= e!1602241 (and tp!808738 tp!808739))))

(declare-fun b!2532188 () Bool)

(declare-fun tp!808741 () Bool)

(declare-fun tp!808737 () Bool)

(assert (=> b!2532188 (= e!1602241 (and tp!808741 tp!808737))))

(declare-fun b!2532189 () Bool)

(declare-fun e!1602242 () Bool)

(declare-fun tp_is_empty!12937 () Bool)

(declare-fun tp!808742 () Bool)

(assert (=> b!2532189 (= e!1602242 (and tp_is_empty!12937 tp!808742))))

(declare-fun b!2532190 () Bool)

(declare-fun tp!808740 () Bool)

(assert (=> b!2532190 (= e!1602241 tp!808740)))

(declare-fun res!1068834 () Bool)

(assert (=> start!246484 (=> (not res!1068834) (not e!1602240))))

(declare-fun validRegex!3167 (Regex!7541) Bool)

(assert (=> start!246484 (= res!1068834 (validRegex!3167 r!27340))))

(assert (=> start!246484 e!1602240))

(assert (=> start!246484 e!1602241))

(assert (=> start!246484 tp_is_empty!12937))

(assert (=> start!246484 e!1602242))

(declare-fun b!2532182 () Bool)

(assert (=> b!2532182 (= e!1602241 tp_is_empty!12937)))

(assert (= (and start!246484 res!1068834) b!2532186))

(assert (= (and b!2532186 res!1068831) b!2532185))

(assert (= (and b!2532185 res!1068833) b!2532184))

(assert (= (and b!2532184 res!1068832) b!2532183))

(assert (= (and start!246484 ((_ is ElementMatch!7541) r!27340)) b!2532182))

(assert (= (and start!246484 ((_ is Concat!12237) r!27340)) b!2532187))

(assert (= (and start!246484 ((_ is Star!7541) r!27340)) b!2532190))

(assert (= (and start!246484 ((_ is Union!7541) r!27340)) b!2532188))

(assert (= (and start!246484 ((_ is Cons!29506) tl!4068)) b!2532189))

(declare-fun m!2882689 () Bool)

(assert (=> b!2532183 m!2882689))

(declare-fun m!2882691 () Bool)

(assert (=> b!2532183 m!2882691))

(declare-fun m!2882693 () Bool)

(assert (=> b!2532183 m!2882693))

(declare-fun m!2882695 () Bool)

(assert (=> b!2532183 m!2882695))

(declare-fun m!2882697 () Bool)

(assert (=> b!2532183 m!2882697))

(assert (=> b!2532183 m!2882691))

(declare-fun m!2882699 () Bool)

(assert (=> b!2532184 m!2882699))

(declare-fun m!2882701 () Bool)

(assert (=> b!2532186 m!2882701))

(assert (=> b!2532186 m!2882701))

(declare-fun m!2882703 () Bool)

(assert (=> b!2532186 m!2882703))

(declare-fun m!2882705 () Bool)

(assert (=> b!2532186 m!2882705))

(declare-fun m!2882707 () Bool)

(assert (=> start!246484 m!2882707))

(check-sat (not b!2532183) (not start!246484) (not b!2532188) (not b!2532190) (not b!2532187) (not b!2532186) (not b!2532184) tp_is_empty!12937 (not b!2532189))
(check-sat)
