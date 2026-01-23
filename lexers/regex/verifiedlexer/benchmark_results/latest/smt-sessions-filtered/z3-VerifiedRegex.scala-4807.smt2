; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!247136 () Bool)

(assert start!247136)

(declare-fun b!2546217 () Bool)

(declare-fun e!1609523 () Bool)

(declare-fun tp!812809 () Bool)

(assert (=> b!2546217 (= e!1609523 tp!812809)))

(declare-fun b!2546218 () Bool)

(declare-fun res!1072864 () Bool)

(declare-fun e!1609522 () Bool)

(assert (=> b!2546218 (=> res!1072864 e!1609522)))

(declare-datatypes ((C!15336 0))(
  ( (C!15337 (val!9320 Int)) )
))
(declare-datatypes ((Regex!7589 0))(
  ( (ElementMatch!7589 (c!407871 C!15336)) (Concat!12285 (regOne!15690 Regex!7589) (regTwo!15690 Regex!7589)) (EmptyExpr!7589) (Star!7589 (reg!7918 Regex!7589)) (EmptyLang!7589) (Union!7589 (regOne!15691 Regex!7589) (regTwo!15691 Regex!7589)) )
))
(declare-fun lt!902763 () Regex!7589)

(declare-datatypes ((List!29654 0))(
  ( (Nil!29554) (Cons!29554 (h!34974 C!15336) (t!211353 List!29654)) )
))
(declare-datatypes ((tuple2!29560 0))(
  ( (tuple2!29561 (_1!17322 List!29654) (_2!17322 List!29654)) )
))
(declare-fun lt!902762 () tuple2!29560)

(declare-fun matchR!3536 (Regex!7589 List!29654) Bool)

(assert (=> b!2546218 (= res!1072864 (not (matchR!3536 lt!902763 (_1!17322 lt!902762))))))

(declare-fun b!2546219 () Bool)

(declare-fun e!1609521 () Bool)

(declare-fun e!1609519 () Bool)

(assert (=> b!2546219 (= e!1609521 e!1609519)))

(declare-fun res!1072867 () Bool)

(assert (=> b!2546219 (=> (not res!1072867) (not e!1609519))))

(declare-fun lt!902758 () Regex!7589)

(declare-fun nullable!2506 (Regex!7589) Bool)

(assert (=> b!2546219 (= res!1072867 (nullable!2506 lt!902758))))

(declare-fun lt!902760 () Regex!7589)

(declare-fun tl!4068 () List!29654)

(declare-fun derivative!284 (Regex!7589 List!29654) Regex!7589)

(assert (=> b!2546219 (= lt!902758 (derivative!284 lt!902760 tl!4068))))

(declare-fun r!27340 () Regex!7589)

(declare-fun c!14016 () C!15336)

(declare-fun derivativeStep!2158 (Regex!7589 C!15336) Regex!7589)

(assert (=> b!2546219 (= lt!902760 (derivativeStep!2158 r!27340 c!14016))))

(declare-fun b!2546220 () Bool)

(declare-fun res!1072862 () Bool)

(assert (=> b!2546220 (=> res!1072862 e!1609522)))

(declare-fun lt!902761 () Regex!7589)

(assert (=> b!2546220 (= res!1072862 (not (matchR!3536 lt!902761 (_2!17322 lt!902762))))))

(declare-fun b!2546221 () Bool)

(declare-fun tp_is_empty!13033 () Bool)

(assert (=> b!2546221 (= e!1609523 tp_is_empty!13033)))

(declare-fun b!2546222 () Bool)

(declare-fun e!1609520 () Bool)

(assert (=> b!2546222 (= e!1609519 e!1609520)))

(declare-fun res!1072872 () Bool)

(assert (=> b!2546222 (=> (not res!1072872) (not e!1609520))))

(assert (=> b!2546222 (= res!1072872 (= lt!902760 (Concat!12285 lt!902763 lt!902761)))))

(assert (=> b!2546222 (= lt!902761 (Star!7589 (reg!7918 r!27340)))))

(assert (=> b!2546222 (= lt!902763 (derivativeStep!2158 (reg!7918 r!27340) c!14016))))

(declare-fun b!2546223 () Bool)

(declare-fun e!1609526 () Bool)

(assert (=> b!2546223 (= e!1609522 e!1609526)))

(declare-fun res!1072869 () Bool)

(assert (=> b!2546223 (=> res!1072869 e!1609526)))

(declare-fun validRegex!3215 (Regex!7589) Bool)

(assert (=> b!2546223 (= res!1072869 (not (validRegex!3215 (reg!7918 r!27340))))))

(declare-fun lt!902757 () Regex!7589)

(assert (=> b!2546223 (matchR!3536 lt!902757 Nil!29554)))

(assert (=> b!2546223 (= lt!902757 (derivative!284 lt!902763 (_1!17322 lt!902762)))))

(declare-datatypes ((Unit!43367 0))(
  ( (Unit!43368) )
))
(declare-fun lt!902759 () Unit!43367)

(declare-fun lemmaMatchRIsSameAsWholeDerivativeAndNil!182 (Regex!7589 List!29654) Unit!43367)

(assert (=> b!2546223 (= lt!902759 (lemmaMatchRIsSameAsWholeDerivativeAndNil!182 lt!902763 (_1!17322 lt!902762)))))

(declare-fun b!2546224 () Bool)

(declare-fun tp!812812 () Bool)

(declare-fun tp!812813 () Bool)

(assert (=> b!2546224 (= e!1609523 (and tp!812812 tp!812813))))

(declare-fun b!2546225 () Bool)

(declare-fun e!1609525 () Bool)

(assert (=> b!2546225 (= e!1609525 e!1609522)))

(declare-fun res!1072870 () Bool)

(assert (=> b!2546225 (=> res!1072870 e!1609522)))

(declare-fun ++!7256 (List!29654 List!29654) List!29654)

(assert (=> b!2546225 (= res!1072870 (not (= (++!7256 (_1!17322 lt!902762) (_2!17322 lt!902762)) tl!4068)))))

(declare-datatypes ((Option!5900 0))(
  ( (None!5899) (Some!5899 (v!31838 tuple2!29560)) )
))
(declare-fun lt!902764 () Option!5900)

(declare-fun get!9273 (Option!5900) tuple2!29560)

(assert (=> b!2546225 (= lt!902762 (get!9273 lt!902764))))

(declare-fun isDefined!4722 (Option!5900) Bool)

(assert (=> b!2546225 (isDefined!4722 lt!902764)))

(declare-fun findConcatSeparation!922 (Regex!7589 Regex!7589 List!29654 List!29654 List!29654) Option!5900)

(assert (=> b!2546225 (= lt!902764 (findConcatSeparation!922 lt!902763 lt!902761 Nil!29554 tl!4068 tl!4068))))

(declare-fun lt!902755 () Unit!43367)

(declare-fun lemmaConcatAcceptsStringThenFindSeparationIsDefined!204 (Regex!7589 Regex!7589 List!29654) Unit!43367)

(assert (=> b!2546225 (= lt!902755 (lemmaConcatAcceptsStringThenFindSeparationIsDefined!204 lt!902763 lt!902761 tl!4068))))

(declare-fun b!2546226 () Bool)

(declare-fun res!1072863 () Bool)

(assert (=> b!2546226 (=> (not res!1072863) (not e!1609519))))

(get-info :version)

(assert (=> b!2546226 (= res!1072863 (and (not ((_ is EmptyExpr!7589) r!27340)) (not ((_ is EmptyLang!7589) r!27340)) (not ((_ is ElementMatch!7589) r!27340)) (not ((_ is Union!7589) r!27340)) ((_ is Star!7589) r!27340)))))

(declare-fun b!2546227 () Bool)

(declare-fun tp!812811 () Bool)

(declare-fun tp!812814 () Bool)

(assert (=> b!2546227 (= e!1609523 (and tp!812811 tp!812814))))

(declare-fun b!2546228 () Bool)

(declare-fun e!1609524 () Bool)

(declare-fun tp!812810 () Bool)

(assert (=> b!2546228 (= e!1609524 (and tp_is_empty!13033 tp!812810))))

(declare-fun b!2546229 () Bool)

(assert (=> b!2546229 (= e!1609526 (nullable!2506 lt!902757))))

(declare-fun b!2546230 () Bool)

(declare-fun res!1072871 () Bool)

(assert (=> b!2546230 (=> res!1072871 e!1609522)))

(assert (=> b!2546230 (= res!1072871 (not (matchR!3536 (reg!7918 r!27340) (Cons!29554 c!14016 (_1!17322 lt!902762)))))))

(declare-fun res!1072868 () Bool)

(assert (=> start!247136 (=> (not res!1072868) (not e!1609521))))

(assert (=> start!247136 (= res!1072868 (validRegex!3215 r!27340))))

(assert (=> start!247136 e!1609521))

(assert (=> start!247136 e!1609523))

(assert (=> start!247136 tp_is_empty!13033))

(assert (=> start!247136 e!1609524))

(declare-fun b!2546231 () Bool)

(assert (=> b!2546231 (= e!1609520 (not e!1609525))))

(declare-fun res!1072865 () Bool)

(assert (=> b!2546231 (=> res!1072865 e!1609525)))

(declare-fun lt!902754 () Bool)

(assert (=> b!2546231 (= res!1072865 (not lt!902754))))

(assert (=> b!2546231 (= lt!902754 (matchR!3536 lt!902758 Nil!29554))))

(assert (=> b!2546231 (= lt!902754 (matchR!3536 lt!902760 tl!4068))))

(declare-fun lt!902756 () Unit!43367)

(assert (=> b!2546231 (= lt!902756 (lemmaMatchRIsSameAsWholeDerivativeAndNil!182 lt!902760 tl!4068))))

(declare-fun b!2546232 () Bool)

(declare-fun res!1072866 () Bool)

(assert (=> b!2546232 (=> (not res!1072866) (not e!1609520))))

(assert (=> b!2546232 (= res!1072866 (not (nullable!2506 (derivative!284 lt!902763 tl!4068))))))

(assert (= (and start!247136 res!1072868) b!2546219))

(assert (= (and b!2546219 res!1072867) b!2546226))

(assert (= (and b!2546226 res!1072863) b!2546222))

(assert (= (and b!2546222 res!1072872) b!2546232))

(assert (= (and b!2546232 res!1072866) b!2546231))

(assert (= (and b!2546231 (not res!1072865)) b!2546225))

(assert (= (and b!2546225 (not res!1072870)) b!2546220))

(assert (= (and b!2546220 (not res!1072862)) b!2546230))

(assert (= (and b!2546230 (not res!1072871)) b!2546218))

(assert (= (and b!2546218 (not res!1072864)) b!2546223))

(assert (= (and b!2546223 (not res!1072869)) b!2546229))

(assert (= (and start!247136 ((_ is ElementMatch!7589) r!27340)) b!2546221))

(assert (= (and start!247136 ((_ is Concat!12285) r!27340)) b!2546227))

(assert (= (and start!247136 ((_ is Star!7589) r!27340)) b!2546217))

(assert (= (and start!247136 ((_ is Union!7589) r!27340)) b!2546224))

(assert (= (and start!247136 ((_ is Cons!29554) tl!4068)) b!2546228))

(declare-fun m!2891031 () Bool)

(assert (=> b!2546223 m!2891031))

(declare-fun m!2891033 () Bool)

(assert (=> b!2546223 m!2891033))

(declare-fun m!2891035 () Bool)

(assert (=> b!2546223 m!2891035))

(declare-fun m!2891037 () Bool)

(assert (=> b!2546223 m!2891037))

(declare-fun m!2891039 () Bool)

(assert (=> b!2546232 m!2891039))

(assert (=> b!2546232 m!2891039))

(declare-fun m!2891041 () Bool)

(assert (=> b!2546232 m!2891041))

(declare-fun m!2891043 () Bool)

(assert (=> b!2546225 m!2891043))

(declare-fun m!2891045 () Bool)

(assert (=> b!2546225 m!2891045))

(declare-fun m!2891047 () Bool)

(assert (=> b!2546225 m!2891047))

(declare-fun m!2891049 () Bool)

(assert (=> b!2546225 m!2891049))

(declare-fun m!2891051 () Bool)

(assert (=> b!2546225 m!2891051))

(declare-fun m!2891053 () Bool)

(assert (=> b!2546219 m!2891053))

(declare-fun m!2891055 () Bool)

(assert (=> b!2546219 m!2891055))

(declare-fun m!2891057 () Bool)

(assert (=> b!2546219 m!2891057))

(declare-fun m!2891059 () Bool)

(assert (=> b!2546222 m!2891059))

(declare-fun m!2891061 () Bool)

(assert (=> b!2546229 m!2891061))

(declare-fun m!2891063 () Bool)

(assert (=> b!2546231 m!2891063))

(declare-fun m!2891065 () Bool)

(assert (=> b!2546231 m!2891065))

(declare-fun m!2891067 () Bool)

(assert (=> b!2546231 m!2891067))

(declare-fun m!2891069 () Bool)

(assert (=> b!2546218 m!2891069))

(declare-fun m!2891071 () Bool)

(assert (=> start!247136 m!2891071))

(declare-fun m!2891073 () Bool)

(assert (=> b!2546220 m!2891073))

(declare-fun m!2891075 () Bool)

(assert (=> b!2546230 m!2891075))

(check-sat (not b!2546218) (not b!2546217) (not b!2546223) (not b!2546219) (not b!2546222) (not b!2546220) (not b!2546225) tp_is_empty!13033 (not start!247136) (not b!2546227) (not b!2546232) (not b!2546230) (not b!2546228) (not b!2546229) (not b!2546231) (not b!2546224))
(check-sat)
(get-model)

(declare-fun b!2546273 () Bool)

(declare-fun e!1609547 () Regex!7589)

(declare-fun call!161558 () Regex!7589)

(assert (=> b!2546273 (= e!1609547 (Union!7589 (Concat!12285 call!161558 (regTwo!15690 (reg!7918 r!27340))) EmptyLang!7589))))

(declare-fun bm!161552 () Bool)

(declare-fun call!161559 () Regex!7589)

(assert (=> bm!161552 (= call!161558 call!161559)))

(declare-fun b!2546274 () Bool)

(declare-fun call!161556 () Regex!7589)

(assert (=> b!2546274 (= e!1609547 (Union!7589 (Concat!12285 call!161558 (regTwo!15690 (reg!7918 r!27340))) call!161556))))

(declare-fun bm!161553 () Bool)

(declare-fun call!161557 () Regex!7589)

(assert (=> bm!161553 (= call!161559 call!161557)))

(declare-fun b!2546275 () Bool)

(declare-fun e!1609548 () Regex!7589)

(assert (=> b!2546275 (= e!1609548 EmptyLang!7589)))

(declare-fun b!2546276 () Bool)

(declare-fun e!1609549 () Regex!7589)

(assert (=> b!2546276 (= e!1609549 (Concat!12285 call!161559 (reg!7918 r!27340)))))

(declare-fun b!2546277 () Bool)

(declare-fun c!407893 () Bool)

(assert (=> b!2546277 (= c!407893 (nullable!2506 (regOne!15690 (reg!7918 r!27340))))))

(assert (=> b!2546277 (= e!1609549 e!1609547)))

(declare-fun b!2546278 () Bool)

(declare-fun e!1609550 () Regex!7589)

(assert (=> b!2546278 (= e!1609550 (ite (= c!14016 (c!407871 (reg!7918 r!27340))) EmptyExpr!7589 EmptyLang!7589))))

(declare-fun b!2546279 () Bool)

(declare-fun c!407895 () Bool)

(assert (=> b!2546279 (= c!407895 ((_ is Union!7589) (reg!7918 r!27340)))))

(declare-fun e!1609551 () Regex!7589)

(assert (=> b!2546279 (= e!1609550 e!1609551)))

(declare-fun b!2546280 () Bool)

(assert (=> b!2546280 (= e!1609551 e!1609549)))

(declare-fun c!407894 () Bool)

(assert (=> b!2546280 (= c!407894 ((_ is Star!7589) (reg!7918 r!27340)))))

(declare-fun bm!161554 () Bool)

(assert (=> bm!161554 (= call!161556 (derivativeStep!2158 (ite c!407895 (regOne!15691 (reg!7918 r!27340)) (regTwo!15690 (reg!7918 r!27340))) c!14016))))

(declare-fun b!2546281 () Bool)

(assert (=> b!2546281 (= e!1609548 e!1609550)))

(declare-fun c!407892 () Bool)

(assert (=> b!2546281 (= c!407892 ((_ is ElementMatch!7589) (reg!7918 r!27340)))))

(declare-fun b!2546282 () Bool)

(assert (=> b!2546282 (= e!1609551 (Union!7589 call!161556 call!161557))))

(declare-fun d!722412 () Bool)

(declare-fun lt!902769 () Regex!7589)

(assert (=> d!722412 (validRegex!3215 lt!902769)))

(assert (=> d!722412 (= lt!902769 e!1609548)))

(declare-fun c!407896 () Bool)

(assert (=> d!722412 (= c!407896 (or ((_ is EmptyExpr!7589) (reg!7918 r!27340)) ((_ is EmptyLang!7589) (reg!7918 r!27340))))))

(assert (=> d!722412 (validRegex!3215 (reg!7918 r!27340))))

(assert (=> d!722412 (= (derivativeStep!2158 (reg!7918 r!27340) c!14016) lt!902769)))

(declare-fun bm!161551 () Bool)

(assert (=> bm!161551 (= call!161557 (derivativeStep!2158 (ite c!407895 (regTwo!15691 (reg!7918 r!27340)) (ite c!407894 (reg!7918 (reg!7918 r!27340)) (regOne!15690 (reg!7918 r!27340)))) c!14016))))

(assert (= (and d!722412 c!407896) b!2546275))

(assert (= (and d!722412 (not c!407896)) b!2546281))

(assert (= (and b!2546281 c!407892) b!2546278))

(assert (= (and b!2546281 (not c!407892)) b!2546279))

(assert (= (and b!2546279 c!407895) b!2546282))

(assert (= (and b!2546279 (not c!407895)) b!2546280))

(assert (= (and b!2546280 c!407894) b!2546276))

(assert (= (and b!2546280 (not c!407894)) b!2546277))

(assert (= (and b!2546277 c!407893) b!2546274))

(assert (= (and b!2546277 (not c!407893)) b!2546273))

(assert (= (or b!2546274 b!2546273) bm!161552))

(assert (= (or b!2546276 bm!161552) bm!161553))

(assert (= (or b!2546282 bm!161553) bm!161551))

(assert (= (or b!2546282 b!2546274) bm!161554))

(declare-fun m!2891077 () Bool)

(assert (=> b!2546277 m!2891077))

(declare-fun m!2891079 () Bool)

(assert (=> bm!161554 m!2891079))

(declare-fun m!2891081 () Bool)

(assert (=> d!722412 m!2891081))

(assert (=> d!722412 m!2891031))

(declare-fun m!2891083 () Bool)

(assert (=> bm!161551 m!2891083))

(assert (=> b!2546222 d!722412))

(declare-fun b!2546311 () Bool)

(declare-fun res!1072883 () Bool)

(declare-fun e!1609571 () Bool)

(assert (=> b!2546311 (=> res!1072883 e!1609571)))

(assert (=> b!2546311 (= res!1072883 (not ((_ is Concat!12285) (reg!7918 r!27340))))))

(declare-fun e!1609575 () Bool)

(assert (=> b!2546311 (= e!1609575 e!1609571)))

(declare-fun call!161576 () Bool)

(declare-fun c!407907 () Bool)

(declare-fun c!407906 () Bool)

(declare-fun bm!161571 () Bool)

(assert (=> bm!161571 (= call!161576 (validRegex!3215 (ite c!407907 (reg!7918 (reg!7918 r!27340)) (ite c!407906 (regOne!15691 (reg!7918 r!27340)) (regTwo!15690 (reg!7918 r!27340))))))))

(declare-fun b!2546312 () Bool)

(declare-fun e!1609576 () Bool)

(assert (=> b!2546312 (= e!1609576 call!161576)))

(declare-fun bm!161572 () Bool)

(declare-fun call!161577 () Bool)

(assert (=> bm!161572 (= call!161577 call!161576)))

(declare-fun b!2546313 () Bool)

(declare-fun e!1609577 () Bool)

(assert (=> b!2546313 (= e!1609577 call!161577)))

(declare-fun b!2546314 () Bool)

(declare-fun e!1609574 () Bool)

(assert (=> b!2546314 (= e!1609574 e!1609575)))

(assert (=> b!2546314 (= c!407906 ((_ is Union!7589) (reg!7918 r!27340)))))

(declare-fun b!2546315 () Bool)

(declare-fun e!1609573 () Bool)

(assert (=> b!2546315 (= e!1609573 e!1609574)))

(assert (=> b!2546315 (= c!407907 ((_ is Star!7589) (reg!7918 r!27340)))))

(declare-fun d!722416 () Bool)

(declare-fun res!1072887 () Bool)

(assert (=> d!722416 (=> res!1072887 e!1609573)))

(assert (=> d!722416 (= res!1072887 ((_ is ElementMatch!7589) (reg!7918 r!27340)))))

(assert (=> d!722416 (= (validRegex!3215 (reg!7918 r!27340)) e!1609573)))

(declare-fun b!2546316 () Bool)

(assert (=> b!2546316 (= e!1609571 e!1609577)))

(declare-fun res!1072885 () Bool)

(assert (=> b!2546316 (=> (not res!1072885) (not e!1609577))))

(declare-fun call!161578 () Bool)

(assert (=> b!2546316 (= res!1072885 call!161578)))

(declare-fun b!2546317 () Bool)

(declare-fun e!1609572 () Bool)

(assert (=> b!2546317 (= e!1609572 call!161578)))

(declare-fun b!2546318 () Bool)

(assert (=> b!2546318 (= e!1609574 e!1609576)))

(declare-fun res!1072886 () Bool)

(assert (=> b!2546318 (= res!1072886 (not (nullable!2506 (reg!7918 (reg!7918 r!27340)))))))

(assert (=> b!2546318 (=> (not res!1072886) (not e!1609576))))

(declare-fun b!2546319 () Bool)

(declare-fun res!1072884 () Bool)

(assert (=> b!2546319 (=> (not res!1072884) (not e!1609572))))

(assert (=> b!2546319 (= res!1072884 call!161577)))

(assert (=> b!2546319 (= e!1609575 e!1609572)))

(declare-fun bm!161573 () Bool)

(assert (=> bm!161573 (= call!161578 (validRegex!3215 (ite c!407906 (regTwo!15691 (reg!7918 r!27340)) (regOne!15690 (reg!7918 r!27340)))))))

(assert (= (and d!722416 (not res!1072887)) b!2546315))

(assert (= (and b!2546315 c!407907) b!2546318))

(assert (= (and b!2546315 (not c!407907)) b!2546314))

(assert (= (and b!2546318 res!1072886) b!2546312))

(assert (= (and b!2546314 c!407906) b!2546319))

(assert (= (and b!2546314 (not c!407906)) b!2546311))

(assert (= (and b!2546319 res!1072884) b!2546317))

(assert (= (and b!2546311 (not res!1072883)) b!2546316))

(assert (= (and b!2546316 res!1072885) b!2546313))

(assert (= (or b!2546319 b!2546313) bm!161572))

(assert (= (or b!2546317 b!2546316) bm!161573))

(assert (= (or b!2546312 bm!161572) bm!161571))

(declare-fun m!2891093 () Bool)

(assert (=> bm!161571 m!2891093))

(declare-fun m!2891095 () Bool)

(assert (=> b!2546318 m!2891095))

(declare-fun m!2891097 () Bool)

(assert (=> bm!161573 m!2891097))

(assert (=> b!2546223 d!722416))

(declare-fun b!2546410 () Bool)

(declare-fun e!1609624 () Bool)

(declare-fun e!1609625 () Bool)

(assert (=> b!2546410 (= e!1609624 e!1609625)))

(declare-fun res!1072943 () Bool)

(assert (=> b!2546410 (=> res!1072943 e!1609625)))

(declare-fun call!161585 () Bool)

(assert (=> b!2546410 (= res!1072943 call!161585)))

(declare-fun b!2546411 () Bool)

(declare-fun res!1072939 () Bool)

(declare-fun e!1609623 () Bool)

(assert (=> b!2546411 (=> (not res!1072939) (not e!1609623))))

(declare-fun isEmpty!16998 (List!29654) Bool)

(declare-fun tail!4073 (List!29654) List!29654)

(assert (=> b!2546411 (= res!1072939 (isEmpty!16998 (tail!4073 Nil!29554)))))

(declare-fun b!2546412 () Bool)

(declare-fun e!1609626 () Bool)

(declare-fun head!5798 (List!29654) C!15336)

(assert (=> b!2546412 (= e!1609626 (matchR!3536 (derivativeStep!2158 lt!902757 (head!5798 Nil!29554)) (tail!4073 Nil!29554)))))

(declare-fun bm!161580 () Bool)

(assert (=> bm!161580 (= call!161585 (isEmpty!16998 Nil!29554))))

(declare-fun b!2546413 () Bool)

(declare-fun res!1072938 () Bool)

(assert (=> b!2546413 (=> (not res!1072938) (not e!1609623))))

(assert (=> b!2546413 (= res!1072938 (not call!161585))))

(declare-fun b!2546414 () Bool)

(assert (=> b!2546414 (= e!1609623 (= (head!5798 Nil!29554) (c!407871 lt!902757)))))

(declare-fun d!722420 () Bool)

(declare-fun e!1609627 () Bool)

(assert (=> d!722420 e!1609627))

(declare-fun c!407929 () Bool)

(assert (=> d!722420 (= c!407929 ((_ is EmptyExpr!7589) lt!902757))))

(declare-fun lt!902780 () Bool)

(assert (=> d!722420 (= lt!902780 e!1609626)))

(declare-fun c!407931 () Bool)

(assert (=> d!722420 (= c!407931 (isEmpty!16998 Nil!29554))))

(assert (=> d!722420 (validRegex!3215 lt!902757)))

(assert (=> d!722420 (= (matchR!3536 lt!902757 Nil!29554) lt!902780)))

(declare-fun b!2546415 () Bool)

(declare-fun res!1072937 () Bool)

(assert (=> b!2546415 (=> res!1072937 e!1609625)))

(assert (=> b!2546415 (= res!1072937 (not (isEmpty!16998 (tail!4073 Nil!29554))))))

(declare-fun b!2546416 () Bool)

(declare-fun e!1609629 () Bool)

(assert (=> b!2546416 (= e!1609627 e!1609629)))

(declare-fun c!407930 () Bool)

(assert (=> b!2546416 (= c!407930 ((_ is EmptyLang!7589) lt!902757))))

(declare-fun b!2546417 () Bool)

(declare-fun res!1072942 () Bool)

(declare-fun e!1609628 () Bool)

(assert (=> b!2546417 (=> res!1072942 e!1609628)))

(assert (=> b!2546417 (= res!1072942 (not ((_ is ElementMatch!7589) lt!902757)))))

(assert (=> b!2546417 (= e!1609629 e!1609628)))

(declare-fun b!2546418 () Bool)

(assert (=> b!2546418 (= e!1609629 (not lt!902780))))

(declare-fun b!2546419 () Bool)

(assert (=> b!2546419 (= e!1609625 (not (= (head!5798 Nil!29554) (c!407871 lt!902757))))))

(declare-fun b!2546420 () Bool)

(assert (=> b!2546420 (= e!1609628 e!1609624)))

(declare-fun res!1072941 () Bool)

(assert (=> b!2546420 (=> (not res!1072941) (not e!1609624))))

(assert (=> b!2546420 (= res!1072941 (not lt!902780))))

(declare-fun b!2546421 () Bool)

(declare-fun res!1072940 () Bool)

(assert (=> b!2546421 (=> res!1072940 e!1609628)))

(assert (=> b!2546421 (= res!1072940 e!1609623)))

(declare-fun res!1072936 () Bool)

(assert (=> b!2546421 (=> (not res!1072936) (not e!1609623))))

(assert (=> b!2546421 (= res!1072936 lt!902780)))

(declare-fun b!2546422 () Bool)

(assert (=> b!2546422 (= e!1609626 (nullable!2506 lt!902757))))

(declare-fun b!2546423 () Bool)

(assert (=> b!2546423 (= e!1609627 (= lt!902780 call!161585))))

(assert (= (and d!722420 c!407931) b!2546422))

(assert (= (and d!722420 (not c!407931)) b!2546412))

(assert (= (and d!722420 c!407929) b!2546423))

(assert (= (and d!722420 (not c!407929)) b!2546416))

(assert (= (and b!2546416 c!407930) b!2546418))

(assert (= (and b!2546416 (not c!407930)) b!2546417))

(assert (= (and b!2546417 (not res!1072942)) b!2546421))

(assert (= (and b!2546421 res!1072936) b!2546413))

(assert (= (and b!2546413 res!1072938) b!2546411))

(assert (= (and b!2546411 res!1072939) b!2546414))

(assert (= (and b!2546421 (not res!1072940)) b!2546420))

(assert (= (and b!2546420 res!1072941) b!2546410))

(assert (= (and b!2546410 (not res!1072943)) b!2546415))

(assert (= (and b!2546415 (not res!1072937)) b!2546419))

(assert (= (or b!2546423 b!2546410 b!2546413) bm!161580))

(declare-fun m!2891141 () Bool)

(assert (=> d!722420 m!2891141))

(declare-fun m!2891143 () Bool)

(assert (=> d!722420 m!2891143))

(declare-fun m!2891145 () Bool)

(assert (=> b!2546419 m!2891145))

(assert (=> b!2546412 m!2891145))

(assert (=> b!2546412 m!2891145))

(declare-fun m!2891147 () Bool)

(assert (=> b!2546412 m!2891147))

(declare-fun m!2891149 () Bool)

(assert (=> b!2546412 m!2891149))

(assert (=> b!2546412 m!2891147))

(assert (=> b!2546412 m!2891149))

(declare-fun m!2891155 () Bool)

(assert (=> b!2546412 m!2891155))

(assert (=> b!2546415 m!2891149))

(assert (=> b!2546415 m!2891149))

(declare-fun m!2891161 () Bool)

(assert (=> b!2546415 m!2891161))

(assert (=> b!2546411 m!2891149))

(assert (=> b!2546411 m!2891149))

(assert (=> b!2546411 m!2891161))

(assert (=> bm!161580 m!2891141))

(assert (=> b!2546422 m!2891061))

(assert (=> b!2546414 m!2891145))

(assert (=> b!2546223 d!722420))

(declare-fun d!722434 () Bool)

(declare-fun lt!902788 () Regex!7589)

(assert (=> d!722434 (validRegex!3215 lt!902788)))

(declare-fun e!1609659 () Regex!7589)

(assert (=> d!722434 (= lt!902788 e!1609659)))

(declare-fun c!407949 () Bool)

(assert (=> d!722434 (= c!407949 ((_ is Cons!29554) (_1!17322 lt!902762)))))

(assert (=> d!722434 (validRegex!3215 lt!902763)))

(assert (=> d!722434 (= (derivative!284 lt!902763 (_1!17322 lt!902762)) lt!902788)))

(declare-fun b!2546482 () Bool)

(assert (=> b!2546482 (= e!1609659 (derivative!284 (derivativeStep!2158 lt!902763 (h!34974 (_1!17322 lt!902762))) (t!211353 (_1!17322 lt!902762))))))

(declare-fun b!2546483 () Bool)

(assert (=> b!2546483 (= e!1609659 lt!902763)))

(assert (= (and d!722434 c!407949) b!2546482))

(assert (= (and d!722434 (not c!407949)) b!2546483))

(declare-fun m!2891215 () Bool)

(assert (=> d!722434 m!2891215))

(declare-fun m!2891217 () Bool)

(assert (=> d!722434 m!2891217))

(declare-fun m!2891219 () Bool)

(assert (=> b!2546482 m!2891219))

(assert (=> b!2546482 m!2891219))

(declare-fun m!2891221 () Bool)

(assert (=> b!2546482 m!2891221))

(assert (=> b!2546223 d!722434))

(declare-fun d!722446 () Bool)

(assert (=> d!722446 (= (matchR!3536 lt!902763 (_1!17322 lt!902762)) (matchR!3536 (derivative!284 lt!902763 (_1!17322 lt!902762)) Nil!29554))))

(declare-fun lt!902794 () Unit!43367)

(declare-fun choose!15040 (Regex!7589 List!29654) Unit!43367)

(assert (=> d!722446 (= lt!902794 (choose!15040 lt!902763 (_1!17322 lt!902762)))))

(assert (=> d!722446 (validRegex!3215 lt!902763)))

(assert (=> d!722446 (= (lemmaMatchRIsSameAsWholeDerivativeAndNil!182 lt!902763 (_1!17322 lt!902762)) lt!902794)))

(declare-fun bs!469516 () Bool)

(assert (= bs!469516 d!722446))

(assert (=> bs!469516 m!2891217))

(assert (=> bs!469516 m!2891035))

(declare-fun m!2891227 () Bool)

(assert (=> bs!469516 m!2891227))

(assert (=> bs!469516 m!2891069))

(assert (=> bs!469516 m!2891035))

(declare-fun m!2891229 () Bool)

(assert (=> bs!469516 m!2891229))

(assert (=> b!2546223 d!722446))

(declare-fun b!2546484 () Bool)

(declare-fun res!1072968 () Bool)

(declare-fun e!1609660 () Bool)

(assert (=> b!2546484 (=> res!1072968 e!1609660)))

(assert (=> b!2546484 (= res!1072968 (not ((_ is Concat!12285) r!27340)))))

(declare-fun e!1609664 () Bool)

(assert (=> b!2546484 (= e!1609664 e!1609660)))

(declare-fun c!407950 () Bool)

(declare-fun bm!161588 () Bool)

(declare-fun c!407951 () Bool)

(declare-fun call!161593 () Bool)

(assert (=> bm!161588 (= call!161593 (validRegex!3215 (ite c!407951 (reg!7918 r!27340) (ite c!407950 (regOne!15691 r!27340) (regTwo!15690 r!27340)))))))

(declare-fun b!2546485 () Bool)

(declare-fun e!1609665 () Bool)

(assert (=> b!2546485 (= e!1609665 call!161593)))

(declare-fun bm!161589 () Bool)

(declare-fun call!161594 () Bool)

(assert (=> bm!161589 (= call!161594 call!161593)))

(declare-fun b!2546486 () Bool)

(declare-fun e!1609666 () Bool)

(assert (=> b!2546486 (= e!1609666 call!161594)))

(declare-fun b!2546487 () Bool)

(declare-fun e!1609663 () Bool)

(assert (=> b!2546487 (= e!1609663 e!1609664)))

(assert (=> b!2546487 (= c!407950 ((_ is Union!7589) r!27340))))

(declare-fun b!2546488 () Bool)

(declare-fun e!1609662 () Bool)

(assert (=> b!2546488 (= e!1609662 e!1609663)))

(assert (=> b!2546488 (= c!407951 ((_ is Star!7589) r!27340))))

(declare-fun d!722450 () Bool)

(declare-fun res!1072972 () Bool)

(assert (=> d!722450 (=> res!1072972 e!1609662)))

(assert (=> d!722450 (= res!1072972 ((_ is ElementMatch!7589) r!27340))))

(assert (=> d!722450 (= (validRegex!3215 r!27340) e!1609662)))

(declare-fun b!2546489 () Bool)

(assert (=> b!2546489 (= e!1609660 e!1609666)))

(declare-fun res!1072970 () Bool)

(assert (=> b!2546489 (=> (not res!1072970) (not e!1609666))))

(declare-fun call!161595 () Bool)

(assert (=> b!2546489 (= res!1072970 call!161595)))

(declare-fun b!2546490 () Bool)

(declare-fun e!1609661 () Bool)

(assert (=> b!2546490 (= e!1609661 call!161595)))

(declare-fun b!2546491 () Bool)

(assert (=> b!2546491 (= e!1609663 e!1609665)))

(declare-fun res!1072971 () Bool)

(assert (=> b!2546491 (= res!1072971 (not (nullable!2506 (reg!7918 r!27340))))))

(assert (=> b!2546491 (=> (not res!1072971) (not e!1609665))))

(declare-fun b!2546492 () Bool)

(declare-fun res!1072969 () Bool)

(assert (=> b!2546492 (=> (not res!1072969) (not e!1609661))))

(assert (=> b!2546492 (= res!1072969 call!161594)))

(assert (=> b!2546492 (= e!1609664 e!1609661)))

(declare-fun bm!161590 () Bool)

(assert (=> bm!161590 (= call!161595 (validRegex!3215 (ite c!407950 (regTwo!15691 r!27340) (regOne!15690 r!27340))))))

(assert (= (and d!722450 (not res!1072972)) b!2546488))

(assert (= (and b!2546488 c!407951) b!2546491))

(assert (= (and b!2546488 (not c!407951)) b!2546487))

(assert (= (and b!2546491 res!1072971) b!2546485))

(assert (= (and b!2546487 c!407950) b!2546492))

(assert (= (and b!2546487 (not c!407950)) b!2546484))

(assert (= (and b!2546492 res!1072969) b!2546490))

(assert (= (and b!2546484 (not res!1072968)) b!2546489))

(assert (= (and b!2546489 res!1072970) b!2546486))

(assert (= (or b!2546492 b!2546486) bm!161589))

(assert (= (or b!2546490 b!2546489) bm!161590))

(assert (= (or b!2546485 bm!161589) bm!161588))

(declare-fun m!2891231 () Bool)

(assert (=> bm!161588 m!2891231))

(declare-fun m!2891233 () Bool)

(assert (=> b!2546491 m!2891233))

(declare-fun m!2891235 () Bool)

(assert (=> bm!161590 m!2891235))

(assert (=> start!247136 d!722450))

(declare-fun b!2546568 () Bool)

(declare-fun e!1609712 () Bool)

(assert (=> b!2546568 (= e!1609712 (matchR!3536 lt!902761 tl!4068))))

(declare-fun b!2546569 () Bool)

(declare-fun lt!902816 () Unit!43367)

(declare-fun lt!902818 () Unit!43367)

(assert (=> b!2546569 (= lt!902816 lt!902818)))

(assert (=> b!2546569 (= (++!7256 (++!7256 Nil!29554 (Cons!29554 (h!34974 tl!4068) Nil!29554)) (t!211353 tl!4068)) tl!4068)))

(declare-fun lemmaMoveElementToOtherListKeepsConcatEq!789 (List!29654 C!15336 List!29654 List!29654) Unit!43367)

(assert (=> b!2546569 (= lt!902818 (lemmaMoveElementToOtherListKeepsConcatEq!789 Nil!29554 (h!34974 tl!4068) (t!211353 tl!4068) tl!4068))))

(declare-fun e!1609714 () Option!5900)

(assert (=> b!2546569 (= e!1609714 (findConcatSeparation!922 lt!902763 lt!902761 (++!7256 Nil!29554 (Cons!29554 (h!34974 tl!4068) Nil!29554)) (t!211353 tl!4068) tl!4068))))

(declare-fun b!2546571 () Bool)

(declare-fun e!1609713 () Bool)

(declare-fun lt!902817 () Option!5900)

(assert (=> b!2546571 (= e!1609713 (not (isDefined!4722 lt!902817)))))

(declare-fun b!2546572 () Bool)

(declare-fun e!1609716 () Option!5900)

(assert (=> b!2546572 (= e!1609716 (Some!5899 (tuple2!29561 Nil!29554 tl!4068)))))

(declare-fun b!2546573 () Bool)

(declare-fun res!1073015 () Bool)

(declare-fun e!1609715 () Bool)

(assert (=> b!2546573 (=> (not res!1073015) (not e!1609715))))

(assert (=> b!2546573 (= res!1073015 (matchR!3536 lt!902763 (_1!17322 (get!9273 lt!902817))))))

(declare-fun b!2546574 () Bool)

(assert (=> b!2546574 (= e!1609716 e!1609714)))

(declare-fun c!407969 () Bool)

(assert (=> b!2546574 (= c!407969 ((_ is Nil!29554) tl!4068))))

(declare-fun b!2546570 () Bool)

(assert (=> b!2546570 (= e!1609715 (= (++!7256 (_1!17322 (get!9273 lt!902817)) (_2!17322 (get!9273 lt!902817))) tl!4068))))

(declare-fun d!722452 () Bool)

(assert (=> d!722452 e!1609713))

(declare-fun res!1073016 () Bool)

(assert (=> d!722452 (=> res!1073016 e!1609713)))

(assert (=> d!722452 (= res!1073016 e!1609715)))

(declare-fun res!1073017 () Bool)

(assert (=> d!722452 (=> (not res!1073017) (not e!1609715))))

(assert (=> d!722452 (= res!1073017 (isDefined!4722 lt!902817))))

(assert (=> d!722452 (= lt!902817 e!1609716)))

(declare-fun c!407970 () Bool)

(assert (=> d!722452 (= c!407970 e!1609712)))

(declare-fun res!1073014 () Bool)

(assert (=> d!722452 (=> (not res!1073014) (not e!1609712))))

(assert (=> d!722452 (= res!1073014 (matchR!3536 lt!902763 Nil!29554))))

(assert (=> d!722452 (validRegex!3215 lt!902763)))

(assert (=> d!722452 (= (findConcatSeparation!922 lt!902763 lt!902761 Nil!29554 tl!4068 tl!4068) lt!902817)))

(declare-fun b!2546575 () Bool)

(declare-fun res!1073018 () Bool)

(assert (=> b!2546575 (=> (not res!1073018) (not e!1609715))))

(assert (=> b!2546575 (= res!1073018 (matchR!3536 lt!902761 (_2!17322 (get!9273 lt!902817))))))

(declare-fun b!2546576 () Bool)

(assert (=> b!2546576 (= e!1609714 None!5899)))

(assert (= (and d!722452 res!1073014) b!2546568))

(assert (= (and d!722452 c!407970) b!2546572))

(assert (= (and d!722452 (not c!407970)) b!2546574))

(assert (= (and b!2546574 c!407969) b!2546576))

(assert (= (and b!2546574 (not c!407969)) b!2546569))

(assert (= (and d!722452 res!1073017) b!2546573))

(assert (= (and b!2546573 res!1073015) b!2546575))

(assert (= (and b!2546575 res!1073018) b!2546570))

(assert (= (and d!722452 (not res!1073016)) b!2546571))

(declare-fun m!2891283 () Bool)

(assert (=> b!2546571 m!2891283))

(declare-fun m!2891285 () Bool)

(assert (=> b!2546568 m!2891285))

(declare-fun m!2891287 () Bool)

(assert (=> b!2546573 m!2891287))

(declare-fun m!2891289 () Bool)

(assert (=> b!2546573 m!2891289))

(declare-fun m!2891291 () Bool)

(assert (=> b!2546569 m!2891291))

(assert (=> b!2546569 m!2891291))

(declare-fun m!2891293 () Bool)

(assert (=> b!2546569 m!2891293))

(declare-fun m!2891295 () Bool)

(assert (=> b!2546569 m!2891295))

(assert (=> b!2546569 m!2891291))

(declare-fun m!2891303 () Bool)

(assert (=> b!2546569 m!2891303))

(assert (=> d!722452 m!2891283))

(declare-fun m!2891305 () Bool)

(assert (=> d!722452 m!2891305))

(assert (=> d!722452 m!2891217))

(assert (=> b!2546575 m!2891287))

(declare-fun m!2891307 () Bool)

(assert (=> b!2546575 m!2891307))

(assert (=> b!2546570 m!2891287))

(declare-fun m!2891309 () Bool)

(assert (=> b!2546570 m!2891309))

(assert (=> b!2546225 d!722452))

(declare-fun d!722468 () Bool)

(assert (=> d!722468 (= (get!9273 lt!902764) (v!31838 lt!902764))))

(assert (=> b!2546225 d!722468))

(declare-fun d!722474 () Bool)

(assert (=> d!722474 (isDefined!4722 (findConcatSeparation!922 lt!902763 lt!902761 Nil!29554 tl!4068 tl!4068))))

(declare-fun lt!902824 () Unit!43367)

(declare-fun choose!15043 (Regex!7589 Regex!7589 List!29654) Unit!43367)

(assert (=> d!722474 (= lt!902824 (choose!15043 lt!902763 lt!902761 tl!4068))))

(assert (=> d!722474 (validRegex!3215 lt!902763)))

(assert (=> d!722474 (= (lemmaConcatAcceptsStringThenFindSeparationIsDefined!204 lt!902763 lt!902761 tl!4068) lt!902824)))

(declare-fun bs!469520 () Bool)

(assert (= bs!469520 d!722474))

(assert (=> bs!469520 m!2891047))

(assert (=> bs!469520 m!2891047))

(declare-fun m!2891327 () Bool)

(assert (=> bs!469520 m!2891327))

(declare-fun m!2891329 () Bool)

(assert (=> bs!469520 m!2891329))

(assert (=> bs!469520 m!2891217))

(assert (=> b!2546225 d!722474))

(declare-fun b!2546657 () Bool)

(declare-fun e!1609754 () Bool)

(declare-fun lt!902827 () List!29654)

(assert (=> b!2546657 (= e!1609754 (or (not (= (_2!17322 lt!902762) Nil!29554)) (= lt!902827 (_1!17322 lt!902762))))))

(declare-fun b!2546655 () Bool)

(declare-fun e!1609753 () List!29654)

(assert (=> b!2546655 (= e!1609753 (Cons!29554 (h!34974 (_1!17322 lt!902762)) (++!7256 (t!211353 (_1!17322 lt!902762)) (_2!17322 lt!902762))))))

(declare-fun d!722476 () Bool)

(assert (=> d!722476 e!1609754))

(declare-fun res!1073041 () Bool)

(assert (=> d!722476 (=> (not res!1073041) (not e!1609754))))

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!4062 (List!29654) (InoxSet C!15336))

(assert (=> d!722476 (= res!1073041 (= (content!4062 lt!902827) ((_ map or) (content!4062 (_1!17322 lt!902762)) (content!4062 (_2!17322 lt!902762)))))))

(assert (=> d!722476 (= lt!902827 e!1609753)))

(declare-fun c!407981 () Bool)

(assert (=> d!722476 (= c!407981 ((_ is Nil!29554) (_1!17322 lt!902762)))))

(assert (=> d!722476 (= (++!7256 (_1!17322 lt!902762) (_2!17322 lt!902762)) lt!902827)))

(declare-fun b!2546654 () Bool)

(assert (=> b!2546654 (= e!1609753 (_2!17322 lt!902762))))

(declare-fun b!2546656 () Bool)

(declare-fun res!1073042 () Bool)

(assert (=> b!2546656 (=> (not res!1073042) (not e!1609754))))

(declare-fun size!22942 (List!29654) Int)

(assert (=> b!2546656 (= res!1073042 (= (size!22942 lt!902827) (+ (size!22942 (_1!17322 lt!902762)) (size!22942 (_2!17322 lt!902762)))))))

(assert (= (and d!722476 c!407981) b!2546654))

(assert (= (and d!722476 (not c!407981)) b!2546655))

(assert (= (and d!722476 res!1073041) b!2546656))

(assert (= (and b!2546656 res!1073042) b!2546657))

(declare-fun m!2891331 () Bool)

(assert (=> b!2546655 m!2891331))

(declare-fun m!2891333 () Bool)

(assert (=> d!722476 m!2891333))

(declare-fun m!2891335 () Bool)

(assert (=> d!722476 m!2891335))

(declare-fun m!2891337 () Bool)

(assert (=> d!722476 m!2891337))

(declare-fun m!2891339 () Bool)

(assert (=> b!2546656 m!2891339))

(declare-fun m!2891341 () Bool)

(assert (=> b!2546656 m!2891341))

(declare-fun m!2891343 () Bool)

(assert (=> b!2546656 m!2891343))

(assert (=> b!2546225 d!722476))

(declare-fun d!722478 () Bool)

(declare-fun isEmpty!17000 (Option!5900) Bool)

(assert (=> d!722478 (= (isDefined!4722 lt!902764) (not (isEmpty!17000 lt!902764)))))

(declare-fun bs!469521 () Bool)

(assert (= bs!469521 d!722478))

(declare-fun m!2891345 () Bool)

(assert (=> bs!469521 m!2891345))

(assert (=> b!2546225 d!722478))

(declare-fun b!2546658 () Bool)

(declare-fun e!1609756 () Bool)

(declare-fun e!1609757 () Bool)

(assert (=> b!2546658 (= e!1609756 e!1609757)))

(declare-fun res!1073050 () Bool)

(assert (=> b!2546658 (=> res!1073050 e!1609757)))

(declare-fun call!161609 () Bool)

(assert (=> b!2546658 (= res!1073050 call!161609)))

(declare-fun b!2546659 () Bool)

(declare-fun res!1073046 () Bool)

(declare-fun e!1609755 () Bool)

(assert (=> b!2546659 (=> (not res!1073046) (not e!1609755))))

(assert (=> b!2546659 (= res!1073046 (isEmpty!16998 (tail!4073 (_1!17322 lt!902762))))))

(declare-fun b!2546660 () Bool)

(declare-fun e!1609758 () Bool)

(assert (=> b!2546660 (= e!1609758 (matchR!3536 (derivativeStep!2158 lt!902763 (head!5798 (_1!17322 lt!902762))) (tail!4073 (_1!17322 lt!902762))))))

(declare-fun bm!161604 () Bool)

(assert (=> bm!161604 (= call!161609 (isEmpty!16998 (_1!17322 lt!902762)))))

(declare-fun b!2546661 () Bool)

(declare-fun res!1073045 () Bool)

(assert (=> b!2546661 (=> (not res!1073045) (not e!1609755))))

(assert (=> b!2546661 (= res!1073045 (not call!161609))))

(declare-fun b!2546662 () Bool)

(assert (=> b!2546662 (= e!1609755 (= (head!5798 (_1!17322 lt!902762)) (c!407871 lt!902763)))))

(declare-fun d!722480 () Bool)

(declare-fun e!1609759 () Bool)

(assert (=> d!722480 e!1609759))

(declare-fun c!407982 () Bool)

(assert (=> d!722480 (= c!407982 ((_ is EmptyExpr!7589) lt!902763))))

(declare-fun lt!902828 () Bool)

(assert (=> d!722480 (= lt!902828 e!1609758)))

(declare-fun c!407984 () Bool)

(assert (=> d!722480 (= c!407984 (isEmpty!16998 (_1!17322 lt!902762)))))

(assert (=> d!722480 (validRegex!3215 lt!902763)))

(assert (=> d!722480 (= (matchR!3536 lt!902763 (_1!17322 lt!902762)) lt!902828)))

(declare-fun b!2546663 () Bool)

(declare-fun res!1073044 () Bool)

(assert (=> b!2546663 (=> res!1073044 e!1609757)))

(assert (=> b!2546663 (= res!1073044 (not (isEmpty!16998 (tail!4073 (_1!17322 lt!902762)))))))

(declare-fun b!2546664 () Bool)

(declare-fun e!1609761 () Bool)

(assert (=> b!2546664 (= e!1609759 e!1609761)))

(declare-fun c!407983 () Bool)

(assert (=> b!2546664 (= c!407983 ((_ is EmptyLang!7589) lt!902763))))

(declare-fun b!2546665 () Bool)

(declare-fun res!1073049 () Bool)

(declare-fun e!1609760 () Bool)

(assert (=> b!2546665 (=> res!1073049 e!1609760)))

(assert (=> b!2546665 (= res!1073049 (not ((_ is ElementMatch!7589) lt!902763)))))

(assert (=> b!2546665 (= e!1609761 e!1609760)))

(declare-fun b!2546666 () Bool)

(assert (=> b!2546666 (= e!1609761 (not lt!902828))))

(declare-fun b!2546667 () Bool)

(assert (=> b!2546667 (= e!1609757 (not (= (head!5798 (_1!17322 lt!902762)) (c!407871 lt!902763))))))

(declare-fun b!2546668 () Bool)

(assert (=> b!2546668 (= e!1609760 e!1609756)))

(declare-fun res!1073048 () Bool)

(assert (=> b!2546668 (=> (not res!1073048) (not e!1609756))))

(assert (=> b!2546668 (= res!1073048 (not lt!902828))))

(declare-fun b!2546669 () Bool)

(declare-fun res!1073047 () Bool)

(assert (=> b!2546669 (=> res!1073047 e!1609760)))

(assert (=> b!2546669 (= res!1073047 e!1609755)))

(declare-fun res!1073043 () Bool)

(assert (=> b!2546669 (=> (not res!1073043) (not e!1609755))))

(assert (=> b!2546669 (= res!1073043 lt!902828)))

(declare-fun b!2546670 () Bool)

(assert (=> b!2546670 (= e!1609758 (nullable!2506 lt!902763))))

(declare-fun b!2546671 () Bool)

(assert (=> b!2546671 (= e!1609759 (= lt!902828 call!161609))))

(assert (= (and d!722480 c!407984) b!2546670))

(assert (= (and d!722480 (not c!407984)) b!2546660))

(assert (= (and d!722480 c!407982) b!2546671))

(assert (= (and d!722480 (not c!407982)) b!2546664))

(assert (= (and b!2546664 c!407983) b!2546666))

(assert (= (and b!2546664 (not c!407983)) b!2546665))

(assert (= (and b!2546665 (not res!1073049)) b!2546669))

(assert (= (and b!2546669 res!1073043) b!2546661))

(assert (= (and b!2546661 res!1073045) b!2546659))

(assert (= (and b!2546659 res!1073046) b!2546662))

(assert (= (and b!2546669 (not res!1073047)) b!2546668))

(assert (= (and b!2546668 res!1073048) b!2546658))

(assert (= (and b!2546658 (not res!1073050)) b!2546663))

(assert (= (and b!2546663 (not res!1073044)) b!2546667))

(assert (= (or b!2546671 b!2546658 b!2546661) bm!161604))

(declare-fun m!2891347 () Bool)

(assert (=> d!722480 m!2891347))

(assert (=> d!722480 m!2891217))

(declare-fun m!2891349 () Bool)

(assert (=> b!2546667 m!2891349))

(assert (=> b!2546660 m!2891349))

(assert (=> b!2546660 m!2891349))

(declare-fun m!2891351 () Bool)

(assert (=> b!2546660 m!2891351))

(declare-fun m!2891353 () Bool)

(assert (=> b!2546660 m!2891353))

(assert (=> b!2546660 m!2891351))

(assert (=> b!2546660 m!2891353))

(declare-fun m!2891355 () Bool)

(assert (=> b!2546660 m!2891355))

(assert (=> b!2546663 m!2891353))

(assert (=> b!2546663 m!2891353))

(declare-fun m!2891357 () Bool)

(assert (=> b!2546663 m!2891357))

(assert (=> b!2546659 m!2891353))

(assert (=> b!2546659 m!2891353))

(assert (=> b!2546659 m!2891357))

(assert (=> bm!161604 m!2891347))

(declare-fun m!2891359 () Bool)

(assert (=> b!2546670 m!2891359))

(assert (=> b!2546662 m!2891349))

(assert (=> b!2546218 d!722480))

(declare-fun d!722482 () Bool)

(declare-fun nullableFct!731 (Regex!7589) Bool)

(assert (=> d!722482 (= (nullable!2506 lt!902757) (nullableFct!731 lt!902757))))

(declare-fun bs!469522 () Bool)

(assert (= bs!469522 d!722482))

(declare-fun m!2891361 () Bool)

(assert (=> bs!469522 m!2891361))

(assert (=> b!2546229 d!722482))

(declare-fun b!2546672 () Bool)

(declare-fun e!1609763 () Bool)

(declare-fun e!1609764 () Bool)

(assert (=> b!2546672 (= e!1609763 e!1609764)))

(declare-fun res!1073058 () Bool)

(assert (=> b!2546672 (=> res!1073058 e!1609764)))

(declare-fun call!161610 () Bool)

(assert (=> b!2546672 (= res!1073058 call!161610)))

(declare-fun b!2546673 () Bool)

(declare-fun res!1073054 () Bool)

(declare-fun e!1609762 () Bool)

(assert (=> b!2546673 (=> (not res!1073054) (not e!1609762))))

(assert (=> b!2546673 (= res!1073054 (isEmpty!16998 (tail!4073 (Cons!29554 c!14016 (_1!17322 lt!902762)))))))

(declare-fun e!1609765 () Bool)

(declare-fun b!2546674 () Bool)

(assert (=> b!2546674 (= e!1609765 (matchR!3536 (derivativeStep!2158 (reg!7918 r!27340) (head!5798 (Cons!29554 c!14016 (_1!17322 lt!902762)))) (tail!4073 (Cons!29554 c!14016 (_1!17322 lt!902762)))))))

(declare-fun bm!161605 () Bool)

(assert (=> bm!161605 (= call!161610 (isEmpty!16998 (Cons!29554 c!14016 (_1!17322 lt!902762))))))

(declare-fun b!2546675 () Bool)

(declare-fun res!1073053 () Bool)

(assert (=> b!2546675 (=> (not res!1073053) (not e!1609762))))

(assert (=> b!2546675 (= res!1073053 (not call!161610))))

(declare-fun b!2546676 () Bool)

(assert (=> b!2546676 (= e!1609762 (= (head!5798 (Cons!29554 c!14016 (_1!17322 lt!902762))) (c!407871 (reg!7918 r!27340))))))

(declare-fun d!722484 () Bool)

(declare-fun e!1609766 () Bool)

(assert (=> d!722484 e!1609766))

(declare-fun c!407985 () Bool)

(assert (=> d!722484 (= c!407985 ((_ is EmptyExpr!7589) (reg!7918 r!27340)))))

(declare-fun lt!902829 () Bool)

(assert (=> d!722484 (= lt!902829 e!1609765)))

(declare-fun c!407987 () Bool)

(assert (=> d!722484 (= c!407987 (isEmpty!16998 (Cons!29554 c!14016 (_1!17322 lt!902762))))))

(assert (=> d!722484 (validRegex!3215 (reg!7918 r!27340))))

(assert (=> d!722484 (= (matchR!3536 (reg!7918 r!27340) (Cons!29554 c!14016 (_1!17322 lt!902762))) lt!902829)))

(declare-fun b!2546677 () Bool)

(declare-fun res!1073052 () Bool)

(assert (=> b!2546677 (=> res!1073052 e!1609764)))

(assert (=> b!2546677 (= res!1073052 (not (isEmpty!16998 (tail!4073 (Cons!29554 c!14016 (_1!17322 lt!902762))))))))

(declare-fun b!2546678 () Bool)

(declare-fun e!1609768 () Bool)

(assert (=> b!2546678 (= e!1609766 e!1609768)))

(declare-fun c!407986 () Bool)

(assert (=> b!2546678 (= c!407986 ((_ is EmptyLang!7589) (reg!7918 r!27340)))))

(declare-fun b!2546679 () Bool)

(declare-fun res!1073057 () Bool)

(declare-fun e!1609767 () Bool)

(assert (=> b!2546679 (=> res!1073057 e!1609767)))

(assert (=> b!2546679 (= res!1073057 (not ((_ is ElementMatch!7589) (reg!7918 r!27340))))))

(assert (=> b!2546679 (= e!1609768 e!1609767)))

(declare-fun b!2546680 () Bool)

(assert (=> b!2546680 (= e!1609768 (not lt!902829))))

(declare-fun b!2546681 () Bool)

(assert (=> b!2546681 (= e!1609764 (not (= (head!5798 (Cons!29554 c!14016 (_1!17322 lt!902762))) (c!407871 (reg!7918 r!27340)))))))

(declare-fun b!2546682 () Bool)

(assert (=> b!2546682 (= e!1609767 e!1609763)))

(declare-fun res!1073056 () Bool)

(assert (=> b!2546682 (=> (not res!1073056) (not e!1609763))))

(assert (=> b!2546682 (= res!1073056 (not lt!902829))))

(declare-fun b!2546683 () Bool)

(declare-fun res!1073055 () Bool)

(assert (=> b!2546683 (=> res!1073055 e!1609767)))

(assert (=> b!2546683 (= res!1073055 e!1609762)))

(declare-fun res!1073051 () Bool)

(assert (=> b!2546683 (=> (not res!1073051) (not e!1609762))))

(assert (=> b!2546683 (= res!1073051 lt!902829)))

(declare-fun b!2546684 () Bool)

(assert (=> b!2546684 (= e!1609765 (nullable!2506 (reg!7918 r!27340)))))

(declare-fun b!2546685 () Bool)

(assert (=> b!2546685 (= e!1609766 (= lt!902829 call!161610))))

(assert (= (and d!722484 c!407987) b!2546684))

(assert (= (and d!722484 (not c!407987)) b!2546674))

(assert (= (and d!722484 c!407985) b!2546685))

(assert (= (and d!722484 (not c!407985)) b!2546678))

(assert (= (and b!2546678 c!407986) b!2546680))

(assert (= (and b!2546678 (not c!407986)) b!2546679))

(assert (= (and b!2546679 (not res!1073057)) b!2546683))

(assert (= (and b!2546683 res!1073051) b!2546675))

(assert (= (and b!2546675 res!1073053) b!2546673))

(assert (= (and b!2546673 res!1073054) b!2546676))

(assert (= (and b!2546683 (not res!1073055)) b!2546682))

(assert (= (and b!2546682 res!1073056) b!2546672))

(assert (= (and b!2546672 (not res!1073058)) b!2546677))

(assert (= (and b!2546677 (not res!1073052)) b!2546681))

(assert (= (or b!2546685 b!2546672 b!2546675) bm!161605))

(declare-fun m!2891363 () Bool)

(assert (=> d!722484 m!2891363))

(assert (=> d!722484 m!2891031))

(declare-fun m!2891365 () Bool)

(assert (=> b!2546681 m!2891365))

(assert (=> b!2546674 m!2891365))

(assert (=> b!2546674 m!2891365))

(declare-fun m!2891367 () Bool)

(assert (=> b!2546674 m!2891367))

(declare-fun m!2891369 () Bool)

(assert (=> b!2546674 m!2891369))

(assert (=> b!2546674 m!2891367))

(assert (=> b!2546674 m!2891369))

(declare-fun m!2891371 () Bool)

(assert (=> b!2546674 m!2891371))

(assert (=> b!2546677 m!2891369))

(assert (=> b!2546677 m!2891369))

(declare-fun m!2891373 () Bool)

(assert (=> b!2546677 m!2891373))

(assert (=> b!2546673 m!2891369))

(assert (=> b!2546673 m!2891369))

(assert (=> b!2546673 m!2891373))

(assert (=> bm!161605 m!2891363))

(assert (=> b!2546684 m!2891233))

(assert (=> b!2546676 m!2891365))

(assert (=> b!2546230 d!722484))

(declare-fun d!722486 () Bool)

(assert (=> d!722486 (= (nullable!2506 lt!902758) (nullableFct!731 lt!902758))))

(declare-fun bs!469523 () Bool)

(assert (= bs!469523 d!722486))

(declare-fun m!2891375 () Bool)

(assert (=> bs!469523 m!2891375))

(assert (=> b!2546219 d!722486))

(declare-fun d!722488 () Bool)

(declare-fun lt!902830 () Regex!7589)

(assert (=> d!722488 (validRegex!3215 lt!902830)))

(declare-fun e!1609769 () Regex!7589)

(assert (=> d!722488 (= lt!902830 e!1609769)))

(declare-fun c!407988 () Bool)

(assert (=> d!722488 (= c!407988 ((_ is Cons!29554) tl!4068))))

(assert (=> d!722488 (validRegex!3215 lt!902760)))

(assert (=> d!722488 (= (derivative!284 lt!902760 tl!4068) lt!902830)))

(declare-fun b!2546686 () Bool)

(assert (=> b!2546686 (= e!1609769 (derivative!284 (derivativeStep!2158 lt!902760 (h!34974 tl!4068)) (t!211353 tl!4068)))))

(declare-fun b!2546687 () Bool)

(assert (=> b!2546687 (= e!1609769 lt!902760)))

(assert (= (and d!722488 c!407988) b!2546686))

(assert (= (and d!722488 (not c!407988)) b!2546687))

(declare-fun m!2891377 () Bool)

(assert (=> d!722488 m!2891377))

(declare-fun m!2891379 () Bool)

(assert (=> d!722488 m!2891379))

(declare-fun m!2891381 () Bool)

(assert (=> b!2546686 m!2891381))

(assert (=> b!2546686 m!2891381))

(declare-fun m!2891383 () Bool)

(assert (=> b!2546686 m!2891383))

(assert (=> b!2546219 d!722488))

(declare-fun b!2546688 () Bool)

(declare-fun e!1609770 () Regex!7589)

(declare-fun call!161613 () Regex!7589)

(assert (=> b!2546688 (= e!1609770 (Union!7589 (Concat!12285 call!161613 (regTwo!15690 r!27340)) EmptyLang!7589))))

(declare-fun bm!161607 () Bool)

(declare-fun call!161614 () Regex!7589)

(assert (=> bm!161607 (= call!161613 call!161614)))

(declare-fun b!2546689 () Bool)

(declare-fun call!161611 () Regex!7589)

(assert (=> b!2546689 (= e!1609770 (Union!7589 (Concat!12285 call!161613 (regTwo!15690 r!27340)) call!161611))))

(declare-fun bm!161608 () Bool)

(declare-fun call!161612 () Regex!7589)

(assert (=> bm!161608 (= call!161614 call!161612)))

(declare-fun b!2546690 () Bool)

(declare-fun e!1609771 () Regex!7589)

(assert (=> b!2546690 (= e!1609771 EmptyLang!7589)))

(declare-fun b!2546691 () Bool)

(declare-fun e!1609772 () Regex!7589)

(assert (=> b!2546691 (= e!1609772 (Concat!12285 call!161614 r!27340))))

(declare-fun b!2546692 () Bool)

(declare-fun c!407990 () Bool)

(assert (=> b!2546692 (= c!407990 (nullable!2506 (regOne!15690 r!27340)))))

(assert (=> b!2546692 (= e!1609772 e!1609770)))

(declare-fun b!2546693 () Bool)

(declare-fun e!1609773 () Regex!7589)

(assert (=> b!2546693 (= e!1609773 (ite (= c!14016 (c!407871 r!27340)) EmptyExpr!7589 EmptyLang!7589))))

(declare-fun b!2546694 () Bool)

(declare-fun c!407992 () Bool)

(assert (=> b!2546694 (= c!407992 ((_ is Union!7589) r!27340))))

(declare-fun e!1609774 () Regex!7589)

(assert (=> b!2546694 (= e!1609773 e!1609774)))

(declare-fun b!2546695 () Bool)

(assert (=> b!2546695 (= e!1609774 e!1609772)))

(declare-fun c!407991 () Bool)

(assert (=> b!2546695 (= c!407991 ((_ is Star!7589) r!27340))))

(declare-fun bm!161609 () Bool)

(assert (=> bm!161609 (= call!161611 (derivativeStep!2158 (ite c!407992 (regOne!15691 r!27340) (regTwo!15690 r!27340)) c!14016))))

(declare-fun b!2546696 () Bool)

(assert (=> b!2546696 (= e!1609771 e!1609773)))

(declare-fun c!407989 () Bool)

(assert (=> b!2546696 (= c!407989 ((_ is ElementMatch!7589) r!27340))))

(declare-fun b!2546697 () Bool)

(assert (=> b!2546697 (= e!1609774 (Union!7589 call!161611 call!161612))))

(declare-fun d!722490 () Bool)

(declare-fun lt!902831 () Regex!7589)

(assert (=> d!722490 (validRegex!3215 lt!902831)))

(assert (=> d!722490 (= lt!902831 e!1609771)))

(declare-fun c!407993 () Bool)

(assert (=> d!722490 (= c!407993 (or ((_ is EmptyExpr!7589) r!27340) ((_ is EmptyLang!7589) r!27340)))))

(assert (=> d!722490 (validRegex!3215 r!27340)))

(assert (=> d!722490 (= (derivativeStep!2158 r!27340 c!14016) lt!902831)))

(declare-fun bm!161606 () Bool)

(assert (=> bm!161606 (= call!161612 (derivativeStep!2158 (ite c!407992 (regTwo!15691 r!27340) (ite c!407991 (reg!7918 r!27340) (regOne!15690 r!27340))) c!14016))))

(assert (= (and d!722490 c!407993) b!2546690))

(assert (= (and d!722490 (not c!407993)) b!2546696))

(assert (= (and b!2546696 c!407989) b!2546693))

(assert (= (and b!2546696 (not c!407989)) b!2546694))

(assert (= (and b!2546694 c!407992) b!2546697))

(assert (= (and b!2546694 (not c!407992)) b!2546695))

(assert (= (and b!2546695 c!407991) b!2546691))

(assert (= (and b!2546695 (not c!407991)) b!2546692))

(assert (= (and b!2546692 c!407990) b!2546689))

(assert (= (and b!2546692 (not c!407990)) b!2546688))

(assert (= (or b!2546689 b!2546688) bm!161607))

(assert (= (or b!2546691 bm!161607) bm!161608))

(assert (= (or b!2546697 bm!161608) bm!161606))

(assert (= (or b!2546697 b!2546689) bm!161609))

(declare-fun m!2891385 () Bool)

(assert (=> b!2546692 m!2891385))

(declare-fun m!2891387 () Bool)

(assert (=> bm!161609 m!2891387))

(declare-fun m!2891389 () Bool)

(assert (=> d!722490 m!2891389))

(assert (=> d!722490 m!2891071))

(declare-fun m!2891391 () Bool)

(assert (=> bm!161606 m!2891391))

(assert (=> b!2546219 d!722490))

(declare-fun b!2546698 () Bool)

(declare-fun e!1609776 () Bool)

(declare-fun e!1609777 () Bool)

(assert (=> b!2546698 (= e!1609776 e!1609777)))

(declare-fun res!1073066 () Bool)

(assert (=> b!2546698 (=> res!1073066 e!1609777)))

(declare-fun call!161615 () Bool)

(assert (=> b!2546698 (= res!1073066 call!161615)))

(declare-fun b!2546699 () Bool)

(declare-fun res!1073062 () Bool)

(declare-fun e!1609775 () Bool)

(assert (=> b!2546699 (=> (not res!1073062) (not e!1609775))))

(assert (=> b!2546699 (= res!1073062 (isEmpty!16998 (tail!4073 (_2!17322 lt!902762))))))

(declare-fun b!2546700 () Bool)

(declare-fun e!1609778 () Bool)

(assert (=> b!2546700 (= e!1609778 (matchR!3536 (derivativeStep!2158 lt!902761 (head!5798 (_2!17322 lt!902762))) (tail!4073 (_2!17322 lt!902762))))))

(declare-fun bm!161610 () Bool)

(assert (=> bm!161610 (= call!161615 (isEmpty!16998 (_2!17322 lt!902762)))))

(declare-fun b!2546701 () Bool)

(declare-fun res!1073061 () Bool)

(assert (=> b!2546701 (=> (not res!1073061) (not e!1609775))))

(assert (=> b!2546701 (= res!1073061 (not call!161615))))

(declare-fun b!2546702 () Bool)

(assert (=> b!2546702 (= e!1609775 (= (head!5798 (_2!17322 lt!902762)) (c!407871 lt!902761)))))

(declare-fun d!722492 () Bool)

(declare-fun e!1609779 () Bool)

(assert (=> d!722492 e!1609779))

(declare-fun c!407994 () Bool)

(assert (=> d!722492 (= c!407994 ((_ is EmptyExpr!7589) lt!902761))))

(declare-fun lt!902832 () Bool)

(assert (=> d!722492 (= lt!902832 e!1609778)))

(declare-fun c!407996 () Bool)

(assert (=> d!722492 (= c!407996 (isEmpty!16998 (_2!17322 lt!902762)))))

(assert (=> d!722492 (validRegex!3215 lt!902761)))

(assert (=> d!722492 (= (matchR!3536 lt!902761 (_2!17322 lt!902762)) lt!902832)))

(declare-fun b!2546703 () Bool)

(declare-fun res!1073060 () Bool)

(assert (=> b!2546703 (=> res!1073060 e!1609777)))

(assert (=> b!2546703 (= res!1073060 (not (isEmpty!16998 (tail!4073 (_2!17322 lt!902762)))))))

(declare-fun b!2546704 () Bool)

(declare-fun e!1609781 () Bool)

(assert (=> b!2546704 (= e!1609779 e!1609781)))

(declare-fun c!407995 () Bool)

(assert (=> b!2546704 (= c!407995 ((_ is EmptyLang!7589) lt!902761))))

(declare-fun b!2546705 () Bool)

(declare-fun res!1073065 () Bool)

(declare-fun e!1609780 () Bool)

(assert (=> b!2546705 (=> res!1073065 e!1609780)))

(assert (=> b!2546705 (= res!1073065 (not ((_ is ElementMatch!7589) lt!902761)))))

(assert (=> b!2546705 (= e!1609781 e!1609780)))

(declare-fun b!2546706 () Bool)

(assert (=> b!2546706 (= e!1609781 (not lt!902832))))

(declare-fun b!2546707 () Bool)

(assert (=> b!2546707 (= e!1609777 (not (= (head!5798 (_2!17322 lt!902762)) (c!407871 lt!902761))))))

(declare-fun b!2546708 () Bool)

(assert (=> b!2546708 (= e!1609780 e!1609776)))

(declare-fun res!1073064 () Bool)

(assert (=> b!2546708 (=> (not res!1073064) (not e!1609776))))

(assert (=> b!2546708 (= res!1073064 (not lt!902832))))

(declare-fun b!2546709 () Bool)

(declare-fun res!1073063 () Bool)

(assert (=> b!2546709 (=> res!1073063 e!1609780)))

(assert (=> b!2546709 (= res!1073063 e!1609775)))

(declare-fun res!1073059 () Bool)

(assert (=> b!2546709 (=> (not res!1073059) (not e!1609775))))

(assert (=> b!2546709 (= res!1073059 lt!902832)))

(declare-fun b!2546710 () Bool)

(assert (=> b!2546710 (= e!1609778 (nullable!2506 lt!902761))))

(declare-fun b!2546711 () Bool)

(assert (=> b!2546711 (= e!1609779 (= lt!902832 call!161615))))

(assert (= (and d!722492 c!407996) b!2546710))

(assert (= (and d!722492 (not c!407996)) b!2546700))

(assert (= (and d!722492 c!407994) b!2546711))

(assert (= (and d!722492 (not c!407994)) b!2546704))

(assert (= (and b!2546704 c!407995) b!2546706))

(assert (= (and b!2546704 (not c!407995)) b!2546705))

(assert (= (and b!2546705 (not res!1073065)) b!2546709))

(assert (= (and b!2546709 res!1073059) b!2546701))

(assert (= (and b!2546701 res!1073061) b!2546699))

(assert (= (and b!2546699 res!1073062) b!2546702))

(assert (= (and b!2546709 (not res!1073063)) b!2546708))

(assert (= (and b!2546708 res!1073064) b!2546698))

(assert (= (and b!2546698 (not res!1073066)) b!2546703))

(assert (= (and b!2546703 (not res!1073060)) b!2546707))

(assert (= (or b!2546711 b!2546698 b!2546701) bm!161610))

(declare-fun m!2891393 () Bool)

(assert (=> d!722492 m!2891393))

(declare-fun m!2891395 () Bool)

(assert (=> d!722492 m!2891395))

(declare-fun m!2891397 () Bool)

(assert (=> b!2546707 m!2891397))

(assert (=> b!2546700 m!2891397))

(assert (=> b!2546700 m!2891397))

(declare-fun m!2891399 () Bool)

(assert (=> b!2546700 m!2891399))

(declare-fun m!2891401 () Bool)

(assert (=> b!2546700 m!2891401))

(assert (=> b!2546700 m!2891399))

(assert (=> b!2546700 m!2891401))

(declare-fun m!2891403 () Bool)

(assert (=> b!2546700 m!2891403))

(assert (=> b!2546703 m!2891401))

(assert (=> b!2546703 m!2891401))

(declare-fun m!2891405 () Bool)

(assert (=> b!2546703 m!2891405))

(assert (=> b!2546699 m!2891401))

(assert (=> b!2546699 m!2891401))

(assert (=> b!2546699 m!2891405))

(assert (=> bm!161610 m!2891393))

(declare-fun m!2891407 () Bool)

(assert (=> b!2546710 m!2891407))

(assert (=> b!2546702 m!2891397))

(assert (=> b!2546220 d!722492))

(declare-fun b!2546712 () Bool)

(declare-fun e!1609783 () Bool)

(declare-fun e!1609784 () Bool)

(assert (=> b!2546712 (= e!1609783 e!1609784)))

(declare-fun res!1073074 () Bool)

(assert (=> b!2546712 (=> res!1073074 e!1609784)))

(declare-fun call!161616 () Bool)

(assert (=> b!2546712 (= res!1073074 call!161616)))

(declare-fun b!2546713 () Bool)

(declare-fun res!1073070 () Bool)

(declare-fun e!1609782 () Bool)

(assert (=> b!2546713 (=> (not res!1073070) (not e!1609782))))

(assert (=> b!2546713 (= res!1073070 (isEmpty!16998 (tail!4073 Nil!29554)))))

(declare-fun b!2546714 () Bool)

(declare-fun e!1609785 () Bool)

(assert (=> b!2546714 (= e!1609785 (matchR!3536 (derivativeStep!2158 lt!902758 (head!5798 Nil!29554)) (tail!4073 Nil!29554)))))

(declare-fun bm!161611 () Bool)

(assert (=> bm!161611 (= call!161616 (isEmpty!16998 Nil!29554))))

(declare-fun b!2546715 () Bool)

(declare-fun res!1073069 () Bool)

(assert (=> b!2546715 (=> (not res!1073069) (not e!1609782))))

(assert (=> b!2546715 (= res!1073069 (not call!161616))))

(declare-fun b!2546716 () Bool)

(assert (=> b!2546716 (= e!1609782 (= (head!5798 Nil!29554) (c!407871 lt!902758)))))

(declare-fun d!722494 () Bool)

(declare-fun e!1609786 () Bool)

(assert (=> d!722494 e!1609786))

(declare-fun c!407997 () Bool)

(assert (=> d!722494 (= c!407997 ((_ is EmptyExpr!7589) lt!902758))))

(declare-fun lt!902833 () Bool)

(assert (=> d!722494 (= lt!902833 e!1609785)))

(declare-fun c!407999 () Bool)

(assert (=> d!722494 (= c!407999 (isEmpty!16998 Nil!29554))))

(assert (=> d!722494 (validRegex!3215 lt!902758)))

(assert (=> d!722494 (= (matchR!3536 lt!902758 Nil!29554) lt!902833)))

(declare-fun b!2546717 () Bool)

(declare-fun res!1073068 () Bool)

(assert (=> b!2546717 (=> res!1073068 e!1609784)))

(assert (=> b!2546717 (= res!1073068 (not (isEmpty!16998 (tail!4073 Nil!29554))))))

(declare-fun b!2546718 () Bool)

(declare-fun e!1609788 () Bool)

(assert (=> b!2546718 (= e!1609786 e!1609788)))

(declare-fun c!407998 () Bool)

(assert (=> b!2546718 (= c!407998 ((_ is EmptyLang!7589) lt!902758))))

(declare-fun b!2546719 () Bool)

(declare-fun res!1073073 () Bool)

(declare-fun e!1609787 () Bool)

(assert (=> b!2546719 (=> res!1073073 e!1609787)))

(assert (=> b!2546719 (= res!1073073 (not ((_ is ElementMatch!7589) lt!902758)))))

(assert (=> b!2546719 (= e!1609788 e!1609787)))

(declare-fun b!2546720 () Bool)

(assert (=> b!2546720 (= e!1609788 (not lt!902833))))

(declare-fun b!2546721 () Bool)

(assert (=> b!2546721 (= e!1609784 (not (= (head!5798 Nil!29554) (c!407871 lt!902758))))))

(declare-fun b!2546722 () Bool)

(assert (=> b!2546722 (= e!1609787 e!1609783)))

(declare-fun res!1073072 () Bool)

(assert (=> b!2546722 (=> (not res!1073072) (not e!1609783))))

(assert (=> b!2546722 (= res!1073072 (not lt!902833))))

(declare-fun b!2546723 () Bool)

(declare-fun res!1073071 () Bool)

(assert (=> b!2546723 (=> res!1073071 e!1609787)))

(assert (=> b!2546723 (= res!1073071 e!1609782)))

(declare-fun res!1073067 () Bool)

(assert (=> b!2546723 (=> (not res!1073067) (not e!1609782))))

(assert (=> b!2546723 (= res!1073067 lt!902833)))

(declare-fun b!2546724 () Bool)

(assert (=> b!2546724 (= e!1609785 (nullable!2506 lt!902758))))

(declare-fun b!2546725 () Bool)

(assert (=> b!2546725 (= e!1609786 (= lt!902833 call!161616))))

(assert (= (and d!722494 c!407999) b!2546724))

(assert (= (and d!722494 (not c!407999)) b!2546714))

(assert (= (and d!722494 c!407997) b!2546725))

(assert (= (and d!722494 (not c!407997)) b!2546718))

(assert (= (and b!2546718 c!407998) b!2546720))

(assert (= (and b!2546718 (not c!407998)) b!2546719))

(assert (= (and b!2546719 (not res!1073073)) b!2546723))

(assert (= (and b!2546723 res!1073067) b!2546715))

(assert (= (and b!2546715 res!1073069) b!2546713))

(assert (= (and b!2546713 res!1073070) b!2546716))

(assert (= (and b!2546723 (not res!1073071)) b!2546722))

(assert (= (and b!2546722 res!1073072) b!2546712))

(assert (= (and b!2546712 (not res!1073074)) b!2546717))

(assert (= (and b!2546717 (not res!1073068)) b!2546721))

(assert (= (or b!2546725 b!2546712 b!2546715) bm!161611))

(assert (=> d!722494 m!2891141))

(declare-fun m!2891409 () Bool)

(assert (=> d!722494 m!2891409))

(assert (=> b!2546721 m!2891145))

(assert (=> b!2546714 m!2891145))

(assert (=> b!2546714 m!2891145))

(declare-fun m!2891411 () Bool)

(assert (=> b!2546714 m!2891411))

(assert (=> b!2546714 m!2891149))

(assert (=> b!2546714 m!2891411))

(assert (=> b!2546714 m!2891149))

(declare-fun m!2891413 () Bool)

(assert (=> b!2546714 m!2891413))

(assert (=> b!2546717 m!2891149))

(assert (=> b!2546717 m!2891149))

(assert (=> b!2546717 m!2891161))

(assert (=> b!2546713 m!2891149))

(assert (=> b!2546713 m!2891149))

(assert (=> b!2546713 m!2891161))

(assert (=> bm!161611 m!2891141))

(assert (=> b!2546724 m!2891053))

(assert (=> b!2546716 m!2891145))

(assert (=> b!2546231 d!722494))

(declare-fun b!2546726 () Bool)

(declare-fun e!1609790 () Bool)

(declare-fun e!1609791 () Bool)

(assert (=> b!2546726 (= e!1609790 e!1609791)))

(declare-fun res!1073082 () Bool)

(assert (=> b!2546726 (=> res!1073082 e!1609791)))

(declare-fun call!161617 () Bool)

(assert (=> b!2546726 (= res!1073082 call!161617)))

(declare-fun b!2546727 () Bool)

(declare-fun res!1073078 () Bool)

(declare-fun e!1609789 () Bool)

(assert (=> b!2546727 (=> (not res!1073078) (not e!1609789))))

(assert (=> b!2546727 (= res!1073078 (isEmpty!16998 (tail!4073 tl!4068)))))

(declare-fun b!2546728 () Bool)

(declare-fun e!1609792 () Bool)

(assert (=> b!2546728 (= e!1609792 (matchR!3536 (derivativeStep!2158 lt!902760 (head!5798 tl!4068)) (tail!4073 tl!4068)))))

(declare-fun bm!161612 () Bool)

(assert (=> bm!161612 (= call!161617 (isEmpty!16998 tl!4068))))

(declare-fun b!2546729 () Bool)

(declare-fun res!1073077 () Bool)

(assert (=> b!2546729 (=> (not res!1073077) (not e!1609789))))

(assert (=> b!2546729 (= res!1073077 (not call!161617))))

(declare-fun b!2546730 () Bool)

(assert (=> b!2546730 (= e!1609789 (= (head!5798 tl!4068) (c!407871 lt!902760)))))

(declare-fun d!722496 () Bool)

(declare-fun e!1609793 () Bool)

(assert (=> d!722496 e!1609793))

(declare-fun c!408000 () Bool)

(assert (=> d!722496 (= c!408000 ((_ is EmptyExpr!7589) lt!902760))))

(declare-fun lt!902834 () Bool)

(assert (=> d!722496 (= lt!902834 e!1609792)))

(declare-fun c!408002 () Bool)

(assert (=> d!722496 (= c!408002 (isEmpty!16998 tl!4068))))

(assert (=> d!722496 (validRegex!3215 lt!902760)))

(assert (=> d!722496 (= (matchR!3536 lt!902760 tl!4068) lt!902834)))

(declare-fun b!2546731 () Bool)

(declare-fun res!1073076 () Bool)

(assert (=> b!2546731 (=> res!1073076 e!1609791)))

(assert (=> b!2546731 (= res!1073076 (not (isEmpty!16998 (tail!4073 tl!4068))))))

(declare-fun b!2546732 () Bool)

(declare-fun e!1609795 () Bool)

(assert (=> b!2546732 (= e!1609793 e!1609795)))

(declare-fun c!408001 () Bool)

(assert (=> b!2546732 (= c!408001 ((_ is EmptyLang!7589) lt!902760))))

(declare-fun b!2546733 () Bool)

(declare-fun res!1073081 () Bool)

(declare-fun e!1609794 () Bool)

(assert (=> b!2546733 (=> res!1073081 e!1609794)))

(assert (=> b!2546733 (= res!1073081 (not ((_ is ElementMatch!7589) lt!902760)))))

(assert (=> b!2546733 (= e!1609795 e!1609794)))

(declare-fun b!2546734 () Bool)

(assert (=> b!2546734 (= e!1609795 (not lt!902834))))

(declare-fun b!2546735 () Bool)

(assert (=> b!2546735 (= e!1609791 (not (= (head!5798 tl!4068) (c!407871 lt!902760))))))

(declare-fun b!2546736 () Bool)

(assert (=> b!2546736 (= e!1609794 e!1609790)))

(declare-fun res!1073080 () Bool)

(assert (=> b!2546736 (=> (not res!1073080) (not e!1609790))))

(assert (=> b!2546736 (= res!1073080 (not lt!902834))))

(declare-fun b!2546737 () Bool)

(declare-fun res!1073079 () Bool)

(assert (=> b!2546737 (=> res!1073079 e!1609794)))

(assert (=> b!2546737 (= res!1073079 e!1609789)))

(declare-fun res!1073075 () Bool)

(assert (=> b!2546737 (=> (not res!1073075) (not e!1609789))))

(assert (=> b!2546737 (= res!1073075 lt!902834)))

(declare-fun b!2546738 () Bool)

(assert (=> b!2546738 (= e!1609792 (nullable!2506 lt!902760))))

(declare-fun b!2546739 () Bool)

(assert (=> b!2546739 (= e!1609793 (= lt!902834 call!161617))))

(assert (= (and d!722496 c!408002) b!2546738))

(assert (= (and d!722496 (not c!408002)) b!2546728))

(assert (= (and d!722496 c!408000) b!2546739))

(assert (= (and d!722496 (not c!408000)) b!2546732))

(assert (= (and b!2546732 c!408001) b!2546734))

(assert (= (and b!2546732 (not c!408001)) b!2546733))

(assert (= (and b!2546733 (not res!1073081)) b!2546737))

(assert (= (and b!2546737 res!1073075) b!2546729))

(assert (= (and b!2546729 res!1073077) b!2546727))

(assert (= (and b!2546727 res!1073078) b!2546730))

(assert (= (and b!2546737 (not res!1073079)) b!2546736))

(assert (= (and b!2546736 res!1073080) b!2546726))

(assert (= (and b!2546726 (not res!1073082)) b!2546731))

(assert (= (and b!2546731 (not res!1073076)) b!2546735))

(assert (= (or b!2546739 b!2546726 b!2546729) bm!161612))

(declare-fun m!2891415 () Bool)

(assert (=> d!722496 m!2891415))

(assert (=> d!722496 m!2891379))

(declare-fun m!2891417 () Bool)

(assert (=> b!2546735 m!2891417))

(assert (=> b!2546728 m!2891417))

(assert (=> b!2546728 m!2891417))

(declare-fun m!2891419 () Bool)

(assert (=> b!2546728 m!2891419))

(declare-fun m!2891421 () Bool)

(assert (=> b!2546728 m!2891421))

(assert (=> b!2546728 m!2891419))

(assert (=> b!2546728 m!2891421))

(declare-fun m!2891423 () Bool)

(assert (=> b!2546728 m!2891423))

(assert (=> b!2546731 m!2891421))

(assert (=> b!2546731 m!2891421))

(declare-fun m!2891425 () Bool)

(assert (=> b!2546731 m!2891425))

(assert (=> b!2546727 m!2891421))

(assert (=> b!2546727 m!2891421))

(assert (=> b!2546727 m!2891425))

(assert (=> bm!161612 m!2891415))

(declare-fun m!2891427 () Bool)

(assert (=> b!2546738 m!2891427))

(assert (=> b!2546730 m!2891417))

(assert (=> b!2546231 d!722496))

(declare-fun d!722498 () Bool)

(assert (=> d!722498 (= (matchR!3536 lt!902760 tl!4068) (matchR!3536 (derivative!284 lt!902760 tl!4068) Nil!29554))))

(declare-fun lt!902835 () Unit!43367)

(assert (=> d!722498 (= lt!902835 (choose!15040 lt!902760 tl!4068))))

(assert (=> d!722498 (validRegex!3215 lt!902760)))

(assert (=> d!722498 (= (lemmaMatchRIsSameAsWholeDerivativeAndNil!182 lt!902760 tl!4068) lt!902835)))

(declare-fun bs!469524 () Bool)

(assert (= bs!469524 d!722498))

(assert (=> bs!469524 m!2891379))

(assert (=> bs!469524 m!2891055))

(declare-fun m!2891429 () Bool)

(assert (=> bs!469524 m!2891429))

(assert (=> bs!469524 m!2891065))

(assert (=> bs!469524 m!2891055))

(declare-fun m!2891431 () Bool)

(assert (=> bs!469524 m!2891431))

(assert (=> b!2546231 d!722498))

(declare-fun d!722500 () Bool)

(assert (=> d!722500 (= (nullable!2506 (derivative!284 lt!902763 tl!4068)) (nullableFct!731 (derivative!284 lt!902763 tl!4068)))))

(declare-fun bs!469525 () Bool)

(assert (= bs!469525 d!722500))

(assert (=> bs!469525 m!2891039))

(declare-fun m!2891433 () Bool)

(assert (=> bs!469525 m!2891433))

(assert (=> b!2546232 d!722500))

(declare-fun d!722502 () Bool)

(declare-fun lt!902836 () Regex!7589)

(assert (=> d!722502 (validRegex!3215 lt!902836)))

(declare-fun e!1609796 () Regex!7589)

(assert (=> d!722502 (= lt!902836 e!1609796)))

(declare-fun c!408003 () Bool)

(assert (=> d!722502 (= c!408003 ((_ is Cons!29554) tl!4068))))

(assert (=> d!722502 (validRegex!3215 lt!902763)))

(assert (=> d!722502 (= (derivative!284 lt!902763 tl!4068) lt!902836)))

(declare-fun b!2546740 () Bool)

(assert (=> b!2546740 (= e!1609796 (derivative!284 (derivativeStep!2158 lt!902763 (h!34974 tl!4068)) (t!211353 tl!4068)))))

(declare-fun b!2546741 () Bool)

(assert (=> b!2546741 (= e!1609796 lt!902763)))

(assert (= (and d!722502 c!408003) b!2546740))

(assert (= (and d!722502 (not c!408003)) b!2546741))

(declare-fun m!2891435 () Bool)

(assert (=> d!722502 m!2891435))

(assert (=> d!722502 m!2891217))

(declare-fun m!2891437 () Bool)

(assert (=> b!2546740 m!2891437))

(assert (=> b!2546740 m!2891437))

(declare-fun m!2891439 () Bool)

(assert (=> b!2546740 m!2891439))

(assert (=> b!2546232 d!722502))

(declare-fun b!2546753 () Bool)

(declare-fun e!1609799 () Bool)

(declare-fun tp!812863 () Bool)

(declare-fun tp!812864 () Bool)

(assert (=> b!2546753 (= e!1609799 (and tp!812863 tp!812864))))

(declare-fun b!2546754 () Bool)

(declare-fun tp!812866 () Bool)

(assert (=> b!2546754 (= e!1609799 tp!812866)))

(assert (=> b!2546227 (= tp!812811 e!1609799)))

(declare-fun b!2546752 () Bool)

(assert (=> b!2546752 (= e!1609799 tp_is_empty!13033)))

(declare-fun b!2546755 () Bool)

(declare-fun tp!812865 () Bool)

(declare-fun tp!812867 () Bool)

(assert (=> b!2546755 (= e!1609799 (and tp!812865 tp!812867))))

(assert (= (and b!2546227 ((_ is ElementMatch!7589) (regOne!15690 r!27340))) b!2546752))

(assert (= (and b!2546227 ((_ is Concat!12285) (regOne!15690 r!27340))) b!2546753))

(assert (= (and b!2546227 ((_ is Star!7589) (regOne!15690 r!27340))) b!2546754))

(assert (= (and b!2546227 ((_ is Union!7589) (regOne!15690 r!27340))) b!2546755))

(declare-fun b!2546757 () Bool)

(declare-fun e!1609800 () Bool)

(declare-fun tp!812868 () Bool)

(declare-fun tp!812869 () Bool)

(assert (=> b!2546757 (= e!1609800 (and tp!812868 tp!812869))))

(declare-fun b!2546758 () Bool)

(declare-fun tp!812871 () Bool)

(assert (=> b!2546758 (= e!1609800 tp!812871)))

(assert (=> b!2546227 (= tp!812814 e!1609800)))

(declare-fun b!2546756 () Bool)

(assert (=> b!2546756 (= e!1609800 tp_is_empty!13033)))

(declare-fun b!2546759 () Bool)

(declare-fun tp!812870 () Bool)

(declare-fun tp!812872 () Bool)

(assert (=> b!2546759 (= e!1609800 (and tp!812870 tp!812872))))

(assert (= (and b!2546227 ((_ is ElementMatch!7589) (regTwo!15690 r!27340))) b!2546756))

(assert (= (and b!2546227 ((_ is Concat!12285) (regTwo!15690 r!27340))) b!2546757))

(assert (= (and b!2546227 ((_ is Star!7589) (regTwo!15690 r!27340))) b!2546758))

(assert (= (and b!2546227 ((_ is Union!7589) (regTwo!15690 r!27340))) b!2546759))

(declare-fun b!2546764 () Bool)

(declare-fun e!1609803 () Bool)

(declare-fun tp!812875 () Bool)

(assert (=> b!2546764 (= e!1609803 (and tp_is_empty!13033 tp!812875))))

(assert (=> b!2546228 (= tp!812810 e!1609803)))

(assert (= (and b!2546228 ((_ is Cons!29554) (t!211353 tl!4068))) b!2546764))

(declare-fun b!2546766 () Bool)

(declare-fun e!1609804 () Bool)

(declare-fun tp!812876 () Bool)

(declare-fun tp!812877 () Bool)

(assert (=> b!2546766 (= e!1609804 (and tp!812876 tp!812877))))

(declare-fun b!2546767 () Bool)

(declare-fun tp!812879 () Bool)

(assert (=> b!2546767 (= e!1609804 tp!812879)))

(assert (=> b!2546217 (= tp!812809 e!1609804)))

(declare-fun b!2546765 () Bool)

(assert (=> b!2546765 (= e!1609804 tp_is_empty!13033)))

(declare-fun b!2546768 () Bool)

(declare-fun tp!812878 () Bool)

(declare-fun tp!812880 () Bool)

(assert (=> b!2546768 (= e!1609804 (and tp!812878 tp!812880))))

(assert (= (and b!2546217 ((_ is ElementMatch!7589) (reg!7918 r!27340))) b!2546765))

(assert (= (and b!2546217 ((_ is Concat!12285) (reg!7918 r!27340))) b!2546766))

(assert (= (and b!2546217 ((_ is Star!7589) (reg!7918 r!27340))) b!2546767))

(assert (= (and b!2546217 ((_ is Union!7589) (reg!7918 r!27340))) b!2546768))

(declare-fun b!2546770 () Bool)

(declare-fun e!1609805 () Bool)

(declare-fun tp!812881 () Bool)

(declare-fun tp!812882 () Bool)

(assert (=> b!2546770 (= e!1609805 (and tp!812881 tp!812882))))

(declare-fun b!2546771 () Bool)

(declare-fun tp!812884 () Bool)

(assert (=> b!2546771 (= e!1609805 tp!812884)))

(assert (=> b!2546224 (= tp!812812 e!1609805)))

(declare-fun b!2546769 () Bool)

(assert (=> b!2546769 (= e!1609805 tp_is_empty!13033)))

(declare-fun b!2546772 () Bool)

(declare-fun tp!812883 () Bool)

(declare-fun tp!812885 () Bool)

(assert (=> b!2546772 (= e!1609805 (and tp!812883 tp!812885))))

(assert (= (and b!2546224 ((_ is ElementMatch!7589) (regOne!15691 r!27340))) b!2546769))

(assert (= (and b!2546224 ((_ is Concat!12285) (regOne!15691 r!27340))) b!2546770))

(assert (= (and b!2546224 ((_ is Star!7589) (regOne!15691 r!27340))) b!2546771))

(assert (= (and b!2546224 ((_ is Union!7589) (regOne!15691 r!27340))) b!2546772))

(declare-fun b!2546774 () Bool)

(declare-fun e!1609806 () Bool)

(declare-fun tp!812886 () Bool)

(declare-fun tp!812887 () Bool)

(assert (=> b!2546774 (= e!1609806 (and tp!812886 tp!812887))))

(declare-fun b!2546775 () Bool)

(declare-fun tp!812889 () Bool)

(assert (=> b!2546775 (= e!1609806 tp!812889)))

(assert (=> b!2546224 (= tp!812813 e!1609806)))

(declare-fun b!2546773 () Bool)

(assert (=> b!2546773 (= e!1609806 tp_is_empty!13033)))

(declare-fun b!2546776 () Bool)

(declare-fun tp!812888 () Bool)

(declare-fun tp!812890 () Bool)

(assert (=> b!2546776 (= e!1609806 (and tp!812888 tp!812890))))

(assert (= (and b!2546224 ((_ is ElementMatch!7589) (regTwo!15691 r!27340))) b!2546773))

(assert (= (and b!2546224 ((_ is Concat!12285) (regTwo!15691 r!27340))) b!2546774))

(assert (= (and b!2546224 ((_ is Star!7589) (regTwo!15691 r!27340))) b!2546775))

(assert (= (and b!2546224 ((_ is Union!7589) (regTwo!15691 r!27340))) b!2546776))

(check-sat (not b!2546575) (not b!2546570) (not b!2546676) (not b!2546655) (not d!722496) (not b!2546758) (not d!722500) (not b!2546738) (not b!2546681) (not b!2546716) (not bm!161571) (not bm!161573) (not b!2546482) tp_is_empty!13033 (not b!2546707) (not d!722484) (not b!2546774) (not bm!161604) (not b!2546755) (not b!2546767) (not b!2546757) (not d!722420) (not b!2546663) (not d!722486) (not d!722488) (not b!2546419) (not b!2546702) (not b!2546277) (not bm!161554) (not b!2546667) (not b!2546677) (not d!722412) (not b!2546727) (not b!2546703) (not b!2546571) (not b!2546699) (not b!2546714) (not bm!161612) (not b!2546491) (not b!2546569) (not bm!161588) (not b!2546735) (not b!2546673) (not b!2546731) (not b!2546659) (not b!2546764) (not b!2546684) (not b!2546318) (not bm!161610) (not b!2546728) (not b!2546700) (not b!2546775) (not d!722434) (not b!2546656) (not bm!161606) (not b!2546710) (not d!722482) (not bm!161580) (not b!2546753) (not d!722446) (not b!2546770) (not b!2546692) (not b!2546686) (not d!722476) (not b!2546771) (not b!2546740) (not b!2546670) (not b!2546411) (not b!2546724) (not d!722494) (not b!2546713) (not b!2546776) (not d!722502) (not d!722474) (not b!2546573) (not b!2546568) (not d!722498) (not b!2546766) (not d!722452) (not b!2546422) (not b!2546415) (not d!722492) (not b!2546772) (not b!2546730) (not d!722480) (not b!2546768) (not b!2546754) (not bm!161590) (not b!2546412) (not d!722490) (not b!2546662) (not b!2546660) (not b!2546721) (not bm!161605) (not b!2546674) (not b!2546759) (not bm!161609) (not b!2546717) (not bm!161611) (not d!722478) (not b!2546414) (not bm!161551))
(check-sat)
(get-model)

(declare-fun d!722662 () Bool)

(assert (not d!722662))

(assert (=> b!2546419 d!722662))

(declare-fun b!2547166 () Bool)

(declare-fun e!1610044 () Bool)

(declare-fun lt!902872 () List!29654)

(assert (=> b!2547166 (= e!1610044 (or (not (= (t!211353 tl!4068) Nil!29554)) (= lt!902872 (++!7256 Nil!29554 (Cons!29554 (h!34974 tl!4068) Nil!29554)))))))

(declare-fun b!2547164 () Bool)

(declare-fun e!1610043 () List!29654)

(assert (=> b!2547164 (= e!1610043 (Cons!29554 (h!34974 (++!7256 Nil!29554 (Cons!29554 (h!34974 tl!4068) Nil!29554))) (++!7256 (t!211353 (++!7256 Nil!29554 (Cons!29554 (h!34974 tl!4068) Nil!29554))) (t!211353 tl!4068))))))

(declare-fun d!722666 () Bool)

(assert (=> d!722666 e!1610044))

(declare-fun res!1073245 () Bool)

(assert (=> d!722666 (=> (not res!1073245) (not e!1610044))))

(assert (=> d!722666 (= res!1073245 (= (content!4062 lt!902872) ((_ map or) (content!4062 (++!7256 Nil!29554 (Cons!29554 (h!34974 tl!4068) Nil!29554))) (content!4062 (t!211353 tl!4068)))))))

(assert (=> d!722666 (= lt!902872 e!1610043)))

(declare-fun c!408116 () Bool)

(assert (=> d!722666 (= c!408116 ((_ is Nil!29554) (++!7256 Nil!29554 (Cons!29554 (h!34974 tl!4068) Nil!29554))))))

(assert (=> d!722666 (= (++!7256 (++!7256 Nil!29554 (Cons!29554 (h!34974 tl!4068) Nil!29554)) (t!211353 tl!4068)) lt!902872)))

(declare-fun b!2547163 () Bool)

(assert (=> b!2547163 (= e!1610043 (t!211353 tl!4068))))

(declare-fun b!2547165 () Bool)

(declare-fun res!1073246 () Bool)

(assert (=> b!2547165 (=> (not res!1073246) (not e!1610044))))

(assert (=> b!2547165 (= res!1073246 (= (size!22942 lt!902872) (+ (size!22942 (++!7256 Nil!29554 (Cons!29554 (h!34974 tl!4068) Nil!29554))) (size!22942 (t!211353 tl!4068)))))))

(assert (= (and d!722666 c!408116) b!2547163))

(assert (= (and d!722666 (not c!408116)) b!2547164))

(assert (= (and d!722666 res!1073245) b!2547165))

(assert (= (and b!2547165 res!1073246) b!2547166))

(declare-fun m!2891807 () Bool)

(assert (=> b!2547164 m!2891807))

(declare-fun m!2891811 () Bool)

(assert (=> d!722666 m!2891811))

(assert (=> d!722666 m!2891291))

(declare-fun m!2891815 () Bool)

(assert (=> d!722666 m!2891815))

(declare-fun m!2891817 () Bool)

(assert (=> d!722666 m!2891817))

(declare-fun m!2891819 () Bool)

(assert (=> b!2547165 m!2891819))

(assert (=> b!2547165 m!2891291))

(declare-fun m!2891821 () Bool)

(assert (=> b!2547165 m!2891821))

(declare-fun m!2891823 () Bool)

(assert (=> b!2547165 m!2891823))

(assert (=> b!2546569 d!722666))

(declare-fun b!2547184 () Bool)

(declare-fun e!1610053 () Bool)

(declare-fun lt!902874 () List!29654)

(assert (=> b!2547184 (= e!1610053 (or (not (= (Cons!29554 (h!34974 tl!4068) Nil!29554) Nil!29554)) (= lt!902874 Nil!29554)))))

(declare-fun b!2547182 () Bool)

(declare-fun e!1610052 () List!29654)

(assert (=> b!2547182 (= e!1610052 (Cons!29554 (h!34974 Nil!29554) (++!7256 (t!211353 Nil!29554) (Cons!29554 (h!34974 tl!4068) Nil!29554))))))

(declare-fun d!722674 () Bool)

(assert (=> d!722674 e!1610053))

(declare-fun res!1073255 () Bool)

(assert (=> d!722674 (=> (not res!1073255) (not e!1610053))))

(assert (=> d!722674 (= res!1073255 (= (content!4062 lt!902874) ((_ map or) (content!4062 Nil!29554) (content!4062 (Cons!29554 (h!34974 tl!4068) Nil!29554)))))))

(assert (=> d!722674 (= lt!902874 e!1610052)))

(declare-fun c!408120 () Bool)

(assert (=> d!722674 (= c!408120 ((_ is Nil!29554) Nil!29554))))

(assert (=> d!722674 (= (++!7256 Nil!29554 (Cons!29554 (h!34974 tl!4068) Nil!29554)) lt!902874)))

(declare-fun b!2547181 () Bool)

(assert (=> b!2547181 (= e!1610052 (Cons!29554 (h!34974 tl!4068) Nil!29554))))

(declare-fun b!2547183 () Bool)

(declare-fun res!1073256 () Bool)

(assert (=> b!2547183 (=> (not res!1073256) (not e!1610053))))

(assert (=> b!2547183 (= res!1073256 (= (size!22942 lt!902874) (+ (size!22942 Nil!29554) (size!22942 (Cons!29554 (h!34974 tl!4068) Nil!29554)))))))

(assert (= (and d!722674 c!408120) b!2547181))

(assert (= (and d!722674 (not c!408120)) b!2547182))

(assert (= (and d!722674 res!1073255) b!2547183))

(assert (= (and b!2547183 res!1073256) b!2547184))

(declare-fun m!2891825 () Bool)

(assert (=> b!2547182 m!2891825))

(declare-fun m!2891827 () Bool)

(assert (=> d!722674 m!2891827))

(declare-fun m!2891829 () Bool)

(assert (=> d!722674 m!2891829))

(declare-fun m!2891831 () Bool)

(assert (=> d!722674 m!2891831))

(declare-fun m!2891833 () Bool)

(assert (=> b!2547183 m!2891833))

(declare-fun m!2891835 () Bool)

(assert (=> b!2547183 m!2891835))

(declare-fun m!2891837 () Bool)

(assert (=> b!2547183 m!2891837))

(assert (=> b!2546569 d!722674))

(declare-fun d!722676 () Bool)

(assert (=> d!722676 (= (++!7256 (++!7256 Nil!29554 (Cons!29554 (h!34974 tl!4068) Nil!29554)) (t!211353 tl!4068)) tl!4068)))

(declare-fun lt!902880 () Unit!43367)

(declare-fun choose!15044 (List!29654 C!15336 List!29654 List!29654) Unit!43367)

(assert (=> d!722676 (= lt!902880 (choose!15044 Nil!29554 (h!34974 tl!4068) (t!211353 tl!4068) tl!4068))))

(assert (=> d!722676 (= (++!7256 Nil!29554 (Cons!29554 (h!34974 tl!4068) (t!211353 tl!4068))) tl!4068)))

(assert (=> d!722676 (= (lemmaMoveElementToOtherListKeepsConcatEq!789 Nil!29554 (h!34974 tl!4068) (t!211353 tl!4068) tl!4068) lt!902880)))

(declare-fun bs!469539 () Bool)

(assert (= bs!469539 d!722676))

(assert (=> bs!469539 m!2891291))

(assert (=> bs!469539 m!2891291))

(assert (=> bs!469539 m!2891293))

(declare-fun m!2891891 () Bool)

(assert (=> bs!469539 m!2891891))

(declare-fun m!2891893 () Bool)

(assert (=> bs!469539 m!2891893))

(assert (=> b!2546569 d!722676))

(declare-fun b!2547327 () Bool)

(declare-fun e!1610110 () Bool)

(assert (=> b!2547327 (= e!1610110 (matchR!3536 lt!902761 (t!211353 tl!4068)))))

(declare-fun b!2547328 () Bool)

(declare-fun lt!902881 () Unit!43367)

(declare-fun lt!902883 () Unit!43367)

(assert (=> b!2547328 (= lt!902881 lt!902883)))

(assert (=> b!2547328 (= (++!7256 (++!7256 (++!7256 Nil!29554 (Cons!29554 (h!34974 tl!4068) Nil!29554)) (Cons!29554 (h!34974 (t!211353 tl!4068)) Nil!29554)) (t!211353 (t!211353 tl!4068))) tl!4068)))

(assert (=> b!2547328 (= lt!902883 (lemmaMoveElementToOtherListKeepsConcatEq!789 (++!7256 Nil!29554 (Cons!29554 (h!34974 tl!4068) Nil!29554)) (h!34974 (t!211353 tl!4068)) (t!211353 (t!211353 tl!4068)) tl!4068))))

(declare-fun e!1610112 () Option!5900)

(assert (=> b!2547328 (= e!1610112 (findConcatSeparation!922 lt!902763 lt!902761 (++!7256 (++!7256 Nil!29554 (Cons!29554 (h!34974 tl!4068) Nil!29554)) (Cons!29554 (h!34974 (t!211353 tl!4068)) Nil!29554)) (t!211353 (t!211353 tl!4068)) tl!4068))))

(declare-fun b!2547330 () Bool)

(declare-fun e!1610111 () Bool)

(declare-fun lt!902882 () Option!5900)

(assert (=> b!2547330 (= e!1610111 (not (isDefined!4722 lt!902882)))))

(declare-fun b!2547331 () Bool)

(declare-fun e!1610114 () Option!5900)

(assert (=> b!2547331 (= e!1610114 (Some!5899 (tuple2!29561 (++!7256 Nil!29554 (Cons!29554 (h!34974 tl!4068) Nil!29554)) (t!211353 tl!4068))))))

(declare-fun b!2547332 () Bool)

(declare-fun res!1073276 () Bool)

(declare-fun e!1610113 () Bool)

(assert (=> b!2547332 (=> (not res!1073276) (not e!1610113))))

(assert (=> b!2547332 (= res!1073276 (matchR!3536 lt!902763 (_1!17322 (get!9273 lt!902882))))))

(declare-fun b!2547333 () Bool)

(assert (=> b!2547333 (= e!1610114 e!1610112)))

(declare-fun c!408143 () Bool)

(assert (=> b!2547333 (= c!408143 ((_ is Nil!29554) (t!211353 tl!4068)))))

(declare-fun b!2547329 () Bool)

(assert (=> b!2547329 (= e!1610113 (= (++!7256 (_1!17322 (get!9273 lt!902882)) (_2!17322 (get!9273 lt!902882))) tl!4068))))

(declare-fun d!722694 () Bool)

(assert (=> d!722694 e!1610111))

(declare-fun res!1073277 () Bool)

(assert (=> d!722694 (=> res!1073277 e!1610111)))

(assert (=> d!722694 (= res!1073277 e!1610113)))

(declare-fun res!1073278 () Bool)

(assert (=> d!722694 (=> (not res!1073278) (not e!1610113))))

(assert (=> d!722694 (= res!1073278 (isDefined!4722 lt!902882))))

(assert (=> d!722694 (= lt!902882 e!1610114)))

(declare-fun c!408144 () Bool)

(assert (=> d!722694 (= c!408144 e!1610110)))

(declare-fun res!1073275 () Bool)

(assert (=> d!722694 (=> (not res!1073275) (not e!1610110))))

(assert (=> d!722694 (= res!1073275 (matchR!3536 lt!902763 (++!7256 Nil!29554 (Cons!29554 (h!34974 tl!4068) Nil!29554))))))

(assert (=> d!722694 (validRegex!3215 lt!902763)))

(assert (=> d!722694 (= (findConcatSeparation!922 lt!902763 lt!902761 (++!7256 Nil!29554 (Cons!29554 (h!34974 tl!4068) Nil!29554)) (t!211353 tl!4068) tl!4068) lt!902882)))

(declare-fun b!2547334 () Bool)

(declare-fun res!1073279 () Bool)

(assert (=> b!2547334 (=> (not res!1073279) (not e!1610113))))

(assert (=> b!2547334 (= res!1073279 (matchR!3536 lt!902761 (_2!17322 (get!9273 lt!902882))))))

(declare-fun b!2547335 () Bool)

(assert (=> b!2547335 (= e!1610112 None!5899)))

(assert (= (and d!722694 res!1073275) b!2547327))

(assert (= (and d!722694 c!408144) b!2547331))

(assert (= (and d!722694 (not c!408144)) b!2547333))

(assert (= (and b!2547333 c!408143) b!2547335))

(assert (= (and b!2547333 (not c!408143)) b!2547328))

(assert (= (and d!722694 res!1073278) b!2547332))

(assert (= (and b!2547332 res!1073276) b!2547334))

(assert (= (and b!2547334 res!1073279) b!2547329))

(assert (= (and d!722694 (not res!1073277)) b!2547330))

(declare-fun m!2891895 () Bool)

(assert (=> b!2547330 m!2891895))

(declare-fun m!2891897 () Bool)

(assert (=> b!2547327 m!2891897))

(declare-fun m!2891899 () Bool)

(assert (=> b!2547332 m!2891899))

(declare-fun m!2891901 () Bool)

(assert (=> b!2547332 m!2891901))

(assert (=> b!2547328 m!2891291))

(declare-fun m!2891903 () Bool)

(assert (=> b!2547328 m!2891903))

(assert (=> b!2547328 m!2891903))

(declare-fun m!2891905 () Bool)

(assert (=> b!2547328 m!2891905))

(assert (=> b!2547328 m!2891291))

(declare-fun m!2891907 () Bool)

(assert (=> b!2547328 m!2891907))

(assert (=> b!2547328 m!2891903))

(declare-fun m!2891909 () Bool)

(assert (=> b!2547328 m!2891909))

(assert (=> d!722694 m!2891895))

(assert (=> d!722694 m!2891291))

(declare-fun m!2891911 () Bool)

(assert (=> d!722694 m!2891911))

(assert (=> d!722694 m!2891217))

(assert (=> b!2547334 m!2891899))

(declare-fun m!2891913 () Bool)

(assert (=> b!2547334 m!2891913))

(assert (=> b!2547329 m!2891899))

(declare-fun m!2891915 () Bool)

(assert (=> b!2547329 m!2891915))

(assert (=> b!2546569 d!722694))

(declare-fun d!722696 () Bool)

(assert (=> d!722696 (= (isEmpty!16998 (tail!4073 (_1!17322 lt!902762))) ((_ is Nil!29554) (tail!4073 (_1!17322 lt!902762))))))

(assert (=> b!2546663 d!722696))

(declare-fun d!722698 () Bool)

(assert (=> d!722698 (= (tail!4073 (_1!17322 lt!902762)) (t!211353 (_1!17322 lt!902762)))))

(assert (=> b!2546663 d!722698))

(declare-fun d!722700 () Bool)

(assert (=> d!722700 (= (head!5798 (_2!17322 lt!902762)) (h!34974 (_2!17322 lt!902762)))))

(assert (=> b!2546707 d!722700))

(declare-fun d!722702 () Bool)

(assert (=> d!722702 (= (isDefined!4722 lt!902817) (not (isEmpty!17000 lt!902817)))))

(declare-fun bs!469540 () Bool)

(assert (= bs!469540 d!722702))

(declare-fun m!2891917 () Bool)

(assert (=> bs!469540 m!2891917))

(assert (=> b!2546571 d!722702))

(declare-fun d!722704 () Bool)

(assert (=> d!722704 (= (isEmpty!16998 tl!4068) ((_ is Nil!29554) tl!4068))))

(assert (=> d!722496 d!722704))

(declare-fun b!2547357 () Bool)

(declare-fun res!1073280 () Bool)

(declare-fun e!1610121 () Bool)

(assert (=> b!2547357 (=> res!1073280 e!1610121)))

(assert (=> b!2547357 (= res!1073280 (not ((_ is Concat!12285) lt!902760)))))

(declare-fun e!1610125 () Bool)

(assert (=> b!2547357 (= e!1610125 e!1610121)))

(declare-fun bm!161719 () Bool)

(declare-fun c!408145 () Bool)

(declare-fun c!408146 () Bool)

(declare-fun call!161724 () Bool)

(assert (=> bm!161719 (= call!161724 (validRegex!3215 (ite c!408146 (reg!7918 lt!902760) (ite c!408145 (regOne!15691 lt!902760) (regTwo!15690 lt!902760)))))))

(declare-fun b!2547358 () Bool)

(declare-fun e!1610126 () Bool)

(assert (=> b!2547358 (= e!1610126 call!161724)))

(declare-fun bm!161720 () Bool)

(declare-fun call!161725 () Bool)

(assert (=> bm!161720 (= call!161725 call!161724)))

(declare-fun b!2547359 () Bool)

(declare-fun e!1610127 () Bool)

(assert (=> b!2547359 (= e!1610127 call!161725)))

(declare-fun b!2547360 () Bool)

(declare-fun e!1610124 () Bool)

(assert (=> b!2547360 (= e!1610124 e!1610125)))

(assert (=> b!2547360 (= c!408145 ((_ is Union!7589) lt!902760))))

(declare-fun b!2547361 () Bool)

(declare-fun e!1610123 () Bool)

(assert (=> b!2547361 (= e!1610123 e!1610124)))

(assert (=> b!2547361 (= c!408146 ((_ is Star!7589) lt!902760))))

(declare-fun d!722706 () Bool)

(declare-fun res!1073284 () Bool)

(assert (=> d!722706 (=> res!1073284 e!1610123)))

(assert (=> d!722706 (= res!1073284 ((_ is ElementMatch!7589) lt!902760))))

(assert (=> d!722706 (= (validRegex!3215 lt!902760) e!1610123)))

(declare-fun b!2547362 () Bool)

(assert (=> b!2547362 (= e!1610121 e!1610127)))

(declare-fun res!1073282 () Bool)

(assert (=> b!2547362 (=> (not res!1073282) (not e!1610127))))

(declare-fun call!161726 () Bool)

(assert (=> b!2547362 (= res!1073282 call!161726)))

(declare-fun b!2547363 () Bool)

(declare-fun e!1610122 () Bool)

(assert (=> b!2547363 (= e!1610122 call!161726)))

(declare-fun b!2547364 () Bool)

(assert (=> b!2547364 (= e!1610124 e!1610126)))

(declare-fun res!1073283 () Bool)

(assert (=> b!2547364 (= res!1073283 (not (nullable!2506 (reg!7918 lt!902760))))))

(assert (=> b!2547364 (=> (not res!1073283) (not e!1610126))))

(declare-fun b!2547365 () Bool)

(declare-fun res!1073281 () Bool)

(assert (=> b!2547365 (=> (not res!1073281) (not e!1610122))))

(assert (=> b!2547365 (= res!1073281 call!161725)))

(assert (=> b!2547365 (= e!1610125 e!1610122)))

(declare-fun bm!161721 () Bool)

(assert (=> bm!161721 (= call!161726 (validRegex!3215 (ite c!408145 (regTwo!15691 lt!902760) (regOne!15690 lt!902760))))))

(assert (= (and d!722706 (not res!1073284)) b!2547361))

(assert (= (and b!2547361 c!408146) b!2547364))

(assert (= (and b!2547361 (not c!408146)) b!2547360))

(assert (= (and b!2547364 res!1073283) b!2547358))

(assert (= (and b!2547360 c!408145) b!2547365))

(assert (= (and b!2547360 (not c!408145)) b!2547357))

(assert (= (and b!2547365 res!1073281) b!2547363))

(assert (= (and b!2547357 (not res!1073280)) b!2547362))

(assert (= (and b!2547362 res!1073282) b!2547359))

(assert (= (or b!2547365 b!2547359) bm!161720))

(assert (= (or b!2547363 b!2547362) bm!161721))

(assert (= (or b!2547358 bm!161720) bm!161719))

(declare-fun m!2891919 () Bool)

(assert (=> bm!161719 m!2891919))

(declare-fun m!2891921 () Bool)

(assert (=> b!2547364 m!2891921))

(declare-fun m!2891923 () Bool)

(assert (=> bm!161721 m!2891923))

(assert (=> d!722496 d!722706))

(declare-fun d!722708 () Bool)

(assert (not d!722708))

(assert (=> b!2546713 d!722708))

(declare-fun d!722710 () Bool)

(assert (not d!722710))

(assert (=> b!2546713 d!722710))

(declare-fun d!722712 () Bool)

(assert (=> d!722712 (= (nullable!2506 (reg!7918 r!27340)) (nullableFct!731 (reg!7918 r!27340)))))

(declare-fun bs!469541 () Bool)

(assert (= bs!469541 d!722712))

(declare-fun m!2891925 () Bool)

(assert (=> bs!469541 m!2891925))

(assert (=> b!2546684 d!722712))

(declare-fun b!2547366 () Bool)

(declare-fun e!1610129 () Bool)

(declare-fun e!1610130 () Bool)

(assert (=> b!2547366 (= e!1610129 e!1610130)))

(declare-fun res!1073292 () Bool)

(assert (=> b!2547366 (=> res!1073292 e!1610130)))

(declare-fun call!161727 () Bool)

(assert (=> b!2547366 (= res!1073292 call!161727)))

(declare-fun b!2547367 () Bool)

(declare-fun res!1073288 () Bool)

(declare-fun e!1610128 () Bool)

(assert (=> b!2547367 (=> (not res!1073288) (not e!1610128))))

(assert (=> b!2547367 (= res!1073288 (isEmpty!16998 (tail!4073 (_1!17322 (get!9273 lt!902817)))))))

(declare-fun b!2547368 () Bool)

(declare-fun e!1610131 () Bool)

(assert (=> b!2547368 (= e!1610131 (matchR!3536 (derivativeStep!2158 lt!902763 (head!5798 (_1!17322 (get!9273 lt!902817)))) (tail!4073 (_1!17322 (get!9273 lt!902817)))))))

(declare-fun bm!161722 () Bool)

(assert (=> bm!161722 (= call!161727 (isEmpty!16998 (_1!17322 (get!9273 lt!902817))))))

(declare-fun b!2547369 () Bool)

(declare-fun res!1073287 () Bool)

(assert (=> b!2547369 (=> (not res!1073287) (not e!1610128))))

(assert (=> b!2547369 (= res!1073287 (not call!161727))))

(declare-fun b!2547370 () Bool)

(assert (=> b!2547370 (= e!1610128 (= (head!5798 (_1!17322 (get!9273 lt!902817))) (c!407871 lt!902763)))))

(declare-fun d!722714 () Bool)

(declare-fun e!1610132 () Bool)

(assert (=> d!722714 e!1610132))

(declare-fun c!408147 () Bool)

(assert (=> d!722714 (= c!408147 ((_ is EmptyExpr!7589) lt!902763))))

(declare-fun lt!902884 () Bool)

(assert (=> d!722714 (= lt!902884 e!1610131)))

(declare-fun c!408149 () Bool)

(assert (=> d!722714 (= c!408149 (isEmpty!16998 (_1!17322 (get!9273 lt!902817))))))

(assert (=> d!722714 (validRegex!3215 lt!902763)))

(assert (=> d!722714 (= (matchR!3536 lt!902763 (_1!17322 (get!9273 lt!902817))) lt!902884)))

(declare-fun b!2547371 () Bool)

(declare-fun res!1073286 () Bool)

(assert (=> b!2547371 (=> res!1073286 e!1610130)))

(assert (=> b!2547371 (= res!1073286 (not (isEmpty!16998 (tail!4073 (_1!17322 (get!9273 lt!902817))))))))

(declare-fun b!2547372 () Bool)

(declare-fun e!1610134 () Bool)

(assert (=> b!2547372 (= e!1610132 e!1610134)))

(declare-fun c!408148 () Bool)

(assert (=> b!2547372 (= c!408148 ((_ is EmptyLang!7589) lt!902763))))

(declare-fun b!2547373 () Bool)

(declare-fun res!1073291 () Bool)

(declare-fun e!1610133 () Bool)

(assert (=> b!2547373 (=> res!1073291 e!1610133)))

(assert (=> b!2547373 (= res!1073291 (not ((_ is ElementMatch!7589) lt!902763)))))

(assert (=> b!2547373 (= e!1610134 e!1610133)))

(declare-fun b!2547374 () Bool)

(assert (=> b!2547374 (= e!1610134 (not lt!902884))))

(declare-fun b!2547375 () Bool)

(assert (=> b!2547375 (= e!1610130 (not (= (head!5798 (_1!17322 (get!9273 lt!902817))) (c!407871 lt!902763))))))

(declare-fun b!2547376 () Bool)

(assert (=> b!2547376 (= e!1610133 e!1610129)))

(declare-fun res!1073290 () Bool)

(assert (=> b!2547376 (=> (not res!1073290) (not e!1610129))))

(assert (=> b!2547376 (= res!1073290 (not lt!902884))))

(declare-fun b!2547377 () Bool)

(declare-fun res!1073289 () Bool)

(assert (=> b!2547377 (=> res!1073289 e!1610133)))

(assert (=> b!2547377 (= res!1073289 e!1610128)))

(declare-fun res!1073285 () Bool)

(assert (=> b!2547377 (=> (not res!1073285) (not e!1610128))))

(assert (=> b!2547377 (= res!1073285 lt!902884)))

(declare-fun b!2547378 () Bool)

(assert (=> b!2547378 (= e!1610131 (nullable!2506 lt!902763))))

(declare-fun b!2547379 () Bool)

(assert (=> b!2547379 (= e!1610132 (= lt!902884 call!161727))))

(assert (= (and d!722714 c!408149) b!2547378))

(assert (= (and d!722714 (not c!408149)) b!2547368))

(assert (= (and d!722714 c!408147) b!2547379))

(assert (= (and d!722714 (not c!408147)) b!2547372))

(assert (= (and b!2547372 c!408148) b!2547374))

(assert (= (and b!2547372 (not c!408148)) b!2547373))

(assert (= (and b!2547373 (not res!1073291)) b!2547377))

(assert (= (and b!2547377 res!1073285) b!2547369))

(assert (= (and b!2547369 res!1073287) b!2547367))

(assert (= (and b!2547367 res!1073288) b!2547370))

(assert (= (and b!2547377 (not res!1073289)) b!2547376))

(assert (= (and b!2547376 res!1073290) b!2547366))

(assert (= (and b!2547366 (not res!1073292)) b!2547371))

(assert (= (and b!2547371 (not res!1073286)) b!2547375))

(assert (= (or b!2547379 b!2547366 b!2547369) bm!161722))

(declare-fun m!2891927 () Bool)

(assert (=> d!722714 m!2891927))

(assert (=> d!722714 m!2891217))

(declare-fun m!2891929 () Bool)

(assert (=> b!2547375 m!2891929))

(assert (=> b!2547368 m!2891929))

(assert (=> b!2547368 m!2891929))

(declare-fun m!2891931 () Bool)

(assert (=> b!2547368 m!2891931))

(declare-fun m!2891933 () Bool)

(assert (=> b!2547368 m!2891933))

(assert (=> b!2547368 m!2891931))

(assert (=> b!2547368 m!2891933))

(declare-fun m!2891935 () Bool)

(assert (=> b!2547368 m!2891935))

(assert (=> b!2547371 m!2891933))

(assert (=> b!2547371 m!2891933))

(declare-fun m!2891937 () Bool)

(assert (=> b!2547371 m!2891937))

(assert (=> b!2547367 m!2891933))

(assert (=> b!2547367 m!2891933))

(assert (=> b!2547367 m!2891937))

(assert (=> bm!161722 m!2891927))

(assert (=> b!2547378 m!2891359))

(assert (=> b!2547370 m!2891929))

(assert (=> b!2546573 d!722714))

(declare-fun d!722716 () Bool)

(assert (=> d!722716 (= (get!9273 lt!902817) (v!31838 lt!902817))))

(assert (=> b!2546573 d!722716))

(declare-fun d!722718 () Bool)

(assert (=> d!722718 (= (head!5798 (_1!17322 lt!902762)) (h!34974 (_1!17322 lt!902762)))))

(assert (=> b!2546667 d!722718))

(declare-fun b!2547380 () Bool)

(declare-fun e!1610136 () Bool)

(declare-fun e!1610137 () Bool)

(assert (=> b!2547380 (= e!1610136 e!1610137)))

(declare-fun res!1073300 () Bool)

(assert (=> b!2547380 (=> res!1073300 e!1610137)))

(declare-fun call!161728 () Bool)

(assert (=> b!2547380 (= res!1073300 call!161728)))

(declare-fun b!2547381 () Bool)

(declare-fun res!1073296 () Bool)

(declare-fun e!1610135 () Bool)

(assert (=> b!2547381 (=> (not res!1073296) (not e!1610135))))

(assert (=> b!2547381 (= res!1073296 (isEmpty!16998 (tail!4073 (tail!4073 tl!4068))))))

(declare-fun b!2547382 () Bool)

(declare-fun e!1610138 () Bool)

(assert (=> b!2547382 (= e!1610138 (matchR!3536 (derivativeStep!2158 (derivativeStep!2158 lt!902760 (head!5798 tl!4068)) (head!5798 (tail!4073 tl!4068))) (tail!4073 (tail!4073 tl!4068))))))

(declare-fun bm!161723 () Bool)

(assert (=> bm!161723 (= call!161728 (isEmpty!16998 (tail!4073 tl!4068)))))

(declare-fun b!2547383 () Bool)

(declare-fun res!1073295 () Bool)

(assert (=> b!2547383 (=> (not res!1073295) (not e!1610135))))

(assert (=> b!2547383 (= res!1073295 (not call!161728))))

(declare-fun b!2547384 () Bool)

(assert (=> b!2547384 (= e!1610135 (= (head!5798 (tail!4073 tl!4068)) (c!407871 (derivativeStep!2158 lt!902760 (head!5798 tl!4068)))))))

(declare-fun d!722720 () Bool)

(declare-fun e!1610139 () Bool)

(assert (=> d!722720 e!1610139))

(declare-fun c!408150 () Bool)

(assert (=> d!722720 (= c!408150 ((_ is EmptyExpr!7589) (derivativeStep!2158 lt!902760 (head!5798 tl!4068))))))

(declare-fun lt!902885 () Bool)

(assert (=> d!722720 (= lt!902885 e!1610138)))

(declare-fun c!408152 () Bool)

(assert (=> d!722720 (= c!408152 (isEmpty!16998 (tail!4073 tl!4068)))))

(assert (=> d!722720 (validRegex!3215 (derivativeStep!2158 lt!902760 (head!5798 tl!4068)))))

(assert (=> d!722720 (= (matchR!3536 (derivativeStep!2158 lt!902760 (head!5798 tl!4068)) (tail!4073 tl!4068)) lt!902885)))

(declare-fun b!2547385 () Bool)

(declare-fun res!1073294 () Bool)

(assert (=> b!2547385 (=> res!1073294 e!1610137)))

(assert (=> b!2547385 (= res!1073294 (not (isEmpty!16998 (tail!4073 (tail!4073 tl!4068)))))))

(declare-fun b!2547386 () Bool)

(declare-fun e!1610141 () Bool)

(assert (=> b!2547386 (= e!1610139 e!1610141)))

(declare-fun c!408151 () Bool)

(assert (=> b!2547386 (= c!408151 ((_ is EmptyLang!7589) (derivativeStep!2158 lt!902760 (head!5798 tl!4068))))))

(declare-fun b!2547387 () Bool)

(declare-fun res!1073299 () Bool)

(declare-fun e!1610140 () Bool)

(assert (=> b!2547387 (=> res!1073299 e!1610140)))

(assert (=> b!2547387 (= res!1073299 (not ((_ is ElementMatch!7589) (derivativeStep!2158 lt!902760 (head!5798 tl!4068)))))))

(assert (=> b!2547387 (= e!1610141 e!1610140)))

(declare-fun b!2547388 () Bool)

(assert (=> b!2547388 (= e!1610141 (not lt!902885))))

(declare-fun b!2547389 () Bool)

(assert (=> b!2547389 (= e!1610137 (not (= (head!5798 (tail!4073 tl!4068)) (c!407871 (derivativeStep!2158 lt!902760 (head!5798 tl!4068))))))))

(declare-fun b!2547390 () Bool)

(assert (=> b!2547390 (= e!1610140 e!1610136)))

(declare-fun res!1073298 () Bool)

(assert (=> b!2547390 (=> (not res!1073298) (not e!1610136))))

(assert (=> b!2547390 (= res!1073298 (not lt!902885))))

(declare-fun b!2547391 () Bool)

(declare-fun res!1073297 () Bool)

(assert (=> b!2547391 (=> res!1073297 e!1610140)))

(assert (=> b!2547391 (= res!1073297 e!1610135)))

(declare-fun res!1073293 () Bool)

(assert (=> b!2547391 (=> (not res!1073293) (not e!1610135))))

(assert (=> b!2547391 (= res!1073293 lt!902885)))

(declare-fun b!2547392 () Bool)

(assert (=> b!2547392 (= e!1610138 (nullable!2506 (derivativeStep!2158 lt!902760 (head!5798 tl!4068))))))

(declare-fun b!2547393 () Bool)

(assert (=> b!2547393 (= e!1610139 (= lt!902885 call!161728))))

(assert (= (and d!722720 c!408152) b!2547392))

(assert (= (and d!722720 (not c!408152)) b!2547382))

(assert (= (and d!722720 c!408150) b!2547393))

(assert (= (and d!722720 (not c!408150)) b!2547386))

(assert (= (and b!2547386 c!408151) b!2547388))

(assert (= (and b!2547386 (not c!408151)) b!2547387))

(assert (= (and b!2547387 (not res!1073299)) b!2547391))

(assert (= (and b!2547391 res!1073293) b!2547383))

(assert (= (and b!2547383 res!1073295) b!2547381))

(assert (= (and b!2547381 res!1073296) b!2547384))

(assert (= (and b!2547391 (not res!1073297)) b!2547390))

(assert (= (and b!2547390 res!1073298) b!2547380))

(assert (= (and b!2547380 (not res!1073300)) b!2547385))

(assert (= (and b!2547385 (not res!1073294)) b!2547389))

(assert (= (or b!2547393 b!2547380 b!2547383) bm!161723))

(assert (=> d!722720 m!2891421))

(assert (=> d!722720 m!2891425))

(assert (=> d!722720 m!2891419))

(declare-fun m!2891939 () Bool)

(assert (=> d!722720 m!2891939))

(assert (=> b!2547389 m!2891421))

(declare-fun m!2891941 () Bool)

(assert (=> b!2547389 m!2891941))

(assert (=> b!2547382 m!2891421))

(assert (=> b!2547382 m!2891941))

(assert (=> b!2547382 m!2891419))

(assert (=> b!2547382 m!2891941))

(declare-fun m!2891943 () Bool)

(assert (=> b!2547382 m!2891943))

(assert (=> b!2547382 m!2891421))

(declare-fun m!2891945 () Bool)

(assert (=> b!2547382 m!2891945))

(assert (=> b!2547382 m!2891943))

(assert (=> b!2547382 m!2891945))

(declare-fun m!2891947 () Bool)

(assert (=> b!2547382 m!2891947))

(assert (=> b!2547385 m!2891421))

(assert (=> b!2547385 m!2891945))

(assert (=> b!2547385 m!2891945))

(declare-fun m!2891949 () Bool)

(assert (=> b!2547385 m!2891949))

(assert (=> b!2547381 m!2891421))

(assert (=> b!2547381 m!2891945))

(assert (=> b!2547381 m!2891945))

(assert (=> b!2547381 m!2891949))

(assert (=> bm!161723 m!2891421))

(assert (=> bm!161723 m!2891425))

(assert (=> b!2547392 m!2891419))

(declare-fun m!2891951 () Bool)

(assert (=> b!2547392 m!2891951))

(assert (=> b!2547384 m!2891421))

(assert (=> b!2547384 m!2891941))

(assert (=> b!2546728 d!722720))

(declare-fun b!2547394 () Bool)

(declare-fun e!1610142 () Regex!7589)

(declare-fun call!161731 () Regex!7589)

(assert (=> b!2547394 (= e!1610142 (Union!7589 (Concat!12285 call!161731 (regTwo!15690 lt!902760)) EmptyLang!7589))))

(declare-fun bm!161725 () Bool)

(declare-fun call!161732 () Regex!7589)

(assert (=> bm!161725 (= call!161731 call!161732)))

(declare-fun call!161729 () Regex!7589)

(declare-fun b!2547395 () Bool)

(assert (=> b!2547395 (= e!1610142 (Union!7589 (Concat!12285 call!161731 (regTwo!15690 lt!902760)) call!161729))))

(declare-fun bm!161726 () Bool)

(declare-fun call!161730 () Regex!7589)

(assert (=> bm!161726 (= call!161732 call!161730)))

(declare-fun b!2547396 () Bool)

(declare-fun e!1610143 () Regex!7589)

(assert (=> b!2547396 (= e!1610143 EmptyLang!7589)))

(declare-fun b!2547397 () Bool)

(declare-fun e!1610144 () Regex!7589)

(assert (=> b!2547397 (= e!1610144 (Concat!12285 call!161732 lt!902760))))

(declare-fun b!2547398 () Bool)

(declare-fun c!408154 () Bool)

(assert (=> b!2547398 (= c!408154 (nullable!2506 (regOne!15690 lt!902760)))))

(assert (=> b!2547398 (= e!1610144 e!1610142)))

(declare-fun b!2547399 () Bool)

(declare-fun e!1610145 () Regex!7589)

(assert (=> b!2547399 (= e!1610145 (ite (= (head!5798 tl!4068) (c!407871 lt!902760)) EmptyExpr!7589 EmptyLang!7589))))

(declare-fun b!2547400 () Bool)

(declare-fun c!408156 () Bool)

(assert (=> b!2547400 (= c!408156 ((_ is Union!7589) lt!902760))))

(declare-fun e!1610146 () Regex!7589)

(assert (=> b!2547400 (= e!1610145 e!1610146)))

(declare-fun b!2547401 () Bool)

(assert (=> b!2547401 (= e!1610146 e!1610144)))

(declare-fun c!408155 () Bool)

(assert (=> b!2547401 (= c!408155 ((_ is Star!7589) lt!902760))))

(declare-fun bm!161727 () Bool)

(assert (=> bm!161727 (= call!161729 (derivativeStep!2158 (ite c!408156 (regOne!15691 lt!902760) (regTwo!15690 lt!902760)) (head!5798 tl!4068)))))

(declare-fun b!2547402 () Bool)

(assert (=> b!2547402 (= e!1610143 e!1610145)))

(declare-fun c!408153 () Bool)

(assert (=> b!2547402 (= c!408153 ((_ is ElementMatch!7589) lt!902760))))

(declare-fun b!2547403 () Bool)

(assert (=> b!2547403 (= e!1610146 (Union!7589 call!161729 call!161730))))

(declare-fun d!722722 () Bool)

(declare-fun lt!902886 () Regex!7589)

(assert (=> d!722722 (validRegex!3215 lt!902886)))

(assert (=> d!722722 (= lt!902886 e!1610143)))

(declare-fun c!408157 () Bool)

(assert (=> d!722722 (= c!408157 (or ((_ is EmptyExpr!7589) lt!902760) ((_ is EmptyLang!7589) lt!902760)))))

(assert (=> d!722722 (validRegex!3215 lt!902760)))

(assert (=> d!722722 (= (derivativeStep!2158 lt!902760 (head!5798 tl!4068)) lt!902886)))

(declare-fun bm!161724 () Bool)

(assert (=> bm!161724 (= call!161730 (derivativeStep!2158 (ite c!408156 (regTwo!15691 lt!902760) (ite c!408155 (reg!7918 lt!902760) (regOne!15690 lt!902760))) (head!5798 tl!4068)))))

(assert (= (and d!722722 c!408157) b!2547396))

(assert (= (and d!722722 (not c!408157)) b!2547402))

(assert (= (and b!2547402 c!408153) b!2547399))

(assert (= (and b!2547402 (not c!408153)) b!2547400))

(assert (= (and b!2547400 c!408156) b!2547403))

(assert (= (and b!2547400 (not c!408156)) b!2547401))

(assert (= (and b!2547401 c!408155) b!2547397))

(assert (= (and b!2547401 (not c!408155)) b!2547398))

(assert (= (and b!2547398 c!408154) b!2547395))

(assert (= (and b!2547398 (not c!408154)) b!2547394))

(assert (= (or b!2547395 b!2547394) bm!161725))

(assert (= (or b!2547397 bm!161725) bm!161726))

(assert (= (or b!2547403 bm!161726) bm!161724))

(assert (= (or b!2547403 b!2547395) bm!161727))

(declare-fun m!2891953 () Bool)

(assert (=> b!2547398 m!2891953))

(assert (=> bm!161727 m!2891417))

(declare-fun m!2891955 () Bool)

(assert (=> bm!161727 m!2891955))

(declare-fun m!2891957 () Bool)

(assert (=> d!722722 m!2891957))

(assert (=> d!722722 m!2891379))

(assert (=> bm!161724 m!2891417))

(declare-fun m!2891959 () Bool)

(assert (=> bm!161724 m!2891959))

(assert (=> b!2546728 d!722722))

(declare-fun d!722724 () Bool)

(assert (=> d!722724 (= (head!5798 tl!4068) (h!34974 tl!4068))))

(assert (=> b!2546728 d!722724))

(declare-fun d!722726 () Bool)

(assert (=> d!722726 (= (tail!4073 tl!4068) (t!211353 tl!4068))))

(assert (=> b!2546728 d!722726))

(declare-fun d!722728 () Bool)

(assert (=> d!722728 (= (isEmpty!16998 Nil!29554) true)))

(assert (=> bm!161611 d!722728))

(declare-fun b!2547404 () Bool)

(declare-fun e!1610148 () Bool)

(declare-fun e!1610149 () Bool)

(assert (=> b!2547404 (= e!1610148 e!1610149)))

(declare-fun res!1073308 () Bool)

(assert (=> b!2547404 (=> res!1073308 e!1610149)))

(declare-fun call!161733 () Bool)

(assert (=> b!2547404 (= res!1073308 call!161733)))

(declare-fun b!2547405 () Bool)

(declare-fun res!1073304 () Bool)

(declare-fun e!1610147 () Bool)

(assert (=> b!2547405 (=> (not res!1073304) (not e!1610147))))

(assert (=> b!2547405 (= res!1073304 (isEmpty!16998 (tail!4073 (_2!17322 (get!9273 lt!902817)))))))

(declare-fun b!2547406 () Bool)

(declare-fun e!1610150 () Bool)

(assert (=> b!2547406 (= e!1610150 (matchR!3536 (derivativeStep!2158 lt!902761 (head!5798 (_2!17322 (get!9273 lt!902817)))) (tail!4073 (_2!17322 (get!9273 lt!902817)))))))

(declare-fun bm!161728 () Bool)

(assert (=> bm!161728 (= call!161733 (isEmpty!16998 (_2!17322 (get!9273 lt!902817))))))

(declare-fun b!2547407 () Bool)

(declare-fun res!1073303 () Bool)

(assert (=> b!2547407 (=> (not res!1073303) (not e!1610147))))

(assert (=> b!2547407 (= res!1073303 (not call!161733))))

(declare-fun b!2547408 () Bool)

(assert (=> b!2547408 (= e!1610147 (= (head!5798 (_2!17322 (get!9273 lt!902817))) (c!407871 lt!902761)))))

(declare-fun d!722730 () Bool)

(declare-fun e!1610151 () Bool)

(assert (=> d!722730 e!1610151))

(declare-fun c!408158 () Bool)

(assert (=> d!722730 (= c!408158 ((_ is EmptyExpr!7589) lt!902761))))

(declare-fun lt!902887 () Bool)

(assert (=> d!722730 (= lt!902887 e!1610150)))

(declare-fun c!408160 () Bool)

(assert (=> d!722730 (= c!408160 (isEmpty!16998 (_2!17322 (get!9273 lt!902817))))))

(assert (=> d!722730 (validRegex!3215 lt!902761)))

(assert (=> d!722730 (= (matchR!3536 lt!902761 (_2!17322 (get!9273 lt!902817))) lt!902887)))

(declare-fun b!2547409 () Bool)

(declare-fun res!1073302 () Bool)

(assert (=> b!2547409 (=> res!1073302 e!1610149)))

(assert (=> b!2547409 (= res!1073302 (not (isEmpty!16998 (tail!4073 (_2!17322 (get!9273 lt!902817))))))))

(declare-fun b!2547410 () Bool)

(declare-fun e!1610153 () Bool)

(assert (=> b!2547410 (= e!1610151 e!1610153)))

(declare-fun c!408159 () Bool)

(assert (=> b!2547410 (= c!408159 ((_ is EmptyLang!7589) lt!902761))))

(declare-fun b!2547411 () Bool)

(declare-fun res!1073307 () Bool)

(declare-fun e!1610152 () Bool)

(assert (=> b!2547411 (=> res!1073307 e!1610152)))

(assert (=> b!2547411 (= res!1073307 (not ((_ is ElementMatch!7589) lt!902761)))))

(assert (=> b!2547411 (= e!1610153 e!1610152)))

(declare-fun b!2547412 () Bool)

(assert (=> b!2547412 (= e!1610153 (not lt!902887))))

(declare-fun b!2547413 () Bool)

(assert (=> b!2547413 (= e!1610149 (not (= (head!5798 (_2!17322 (get!9273 lt!902817))) (c!407871 lt!902761))))))

(declare-fun b!2547414 () Bool)

(assert (=> b!2547414 (= e!1610152 e!1610148)))

(declare-fun res!1073306 () Bool)

(assert (=> b!2547414 (=> (not res!1073306) (not e!1610148))))

(assert (=> b!2547414 (= res!1073306 (not lt!902887))))

(declare-fun b!2547415 () Bool)

(declare-fun res!1073305 () Bool)

(assert (=> b!2547415 (=> res!1073305 e!1610152)))

(assert (=> b!2547415 (= res!1073305 e!1610147)))

(declare-fun res!1073301 () Bool)

(assert (=> b!2547415 (=> (not res!1073301) (not e!1610147))))

(assert (=> b!2547415 (= res!1073301 lt!902887)))

(declare-fun b!2547416 () Bool)

(assert (=> b!2547416 (= e!1610150 (nullable!2506 lt!902761))))

(declare-fun b!2547417 () Bool)

(assert (=> b!2547417 (= e!1610151 (= lt!902887 call!161733))))

(assert (= (and d!722730 c!408160) b!2547416))

(assert (= (and d!722730 (not c!408160)) b!2547406))

(assert (= (and d!722730 c!408158) b!2547417))

(assert (= (and d!722730 (not c!408158)) b!2547410))

(assert (= (and b!2547410 c!408159) b!2547412))

(assert (= (and b!2547410 (not c!408159)) b!2547411))

(assert (= (and b!2547411 (not res!1073307)) b!2547415))

(assert (= (and b!2547415 res!1073301) b!2547407))

(assert (= (and b!2547407 res!1073303) b!2547405))

(assert (= (and b!2547405 res!1073304) b!2547408))

(assert (= (and b!2547415 (not res!1073305)) b!2547414))

(assert (= (and b!2547414 res!1073306) b!2547404))

(assert (= (and b!2547404 (not res!1073308)) b!2547409))

(assert (= (and b!2547409 (not res!1073302)) b!2547413))

(assert (= (or b!2547417 b!2547404 b!2547407) bm!161728))

(declare-fun m!2891961 () Bool)

(assert (=> d!722730 m!2891961))

(assert (=> d!722730 m!2891395))

(declare-fun m!2891963 () Bool)

(assert (=> b!2547413 m!2891963))

(assert (=> b!2547406 m!2891963))

(assert (=> b!2547406 m!2891963))

(declare-fun m!2891965 () Bool)

(assert (=> b!2547406 m!2891965))

(declare-fun m!2891967 () Bool)

(assert (=> b!2547406 m!2891967))

(assert (=> b!2547406 m!2891965))

(assert (=> b!2547406 m!2891967))

(declare-fun m!2891969 () Bool)

(assert (=> b!2547406 m!2891969))

(assert (=> b!2547409 m!2891967))

(assert (=> b!2547409 m!2891967))

(declare-fun m!2891971 () Bool)

(assert (=> b!2547409 m!2891971))

(assert (=> b!2547405 m!2891967))

(assert (=> b!2547405 m!2891967))

(assert (=> b!2547405 m!2891971))

(assert (=> bm!161728 m!2891961))

(assert (=> b!2547416 m!2891407))

(assert (=> b!2547408 m!2891963))

(assert (=> b!2546575 d!722730))

(assert (=> b!2546575 d!722716))

(assert (=> b!2546716 d!722662))

(declare-fun d!722732 () Bool)

(assert (=> d!722732 (= (isEmpty!16998 (tail!4073 tl!4068)) ((_ is Nil!29554) (tail!4073 tl!4068)))))

(assert (=> b!2546731 d!722732))

(assert (=> b!2546731 d!722726))

(declare-fun d!722734 () Bool)

(declare-fun lt!902890 () Int)

(assert (=> d!722734 (>= lt!902890 0)))

(declare-fun e!1610156 () Int)

(assert (=> d!722734 (= lt!902890 e!1610156)))

(declare-fun c!408163 () Bool)

(assert (=> d!722734 (= c!408163 ((_ is Nil!29554) lt!902827))))

(assert (=> d!722734 (= (size!22942 lt!902827) lt!902890)))

(declare-fun b!2547422 () Bool)

(assert (=> b!2547422 (= e!1610156 0)))

(declare-fun b!2547423 () Bool)

(assert (=> b!2547423 (= e!1610156 (+ 1 (size!22942 (t!211353 lt!902827))))))

(assert (= (and d!722734 c!408163) b!2547422))

(assert (= (and d!722734 (not c!408163)) b!2547423))

(declare-fun m!2891973 () Bool)

(assert (=> b!2547423 m!2891973))

(assert (=> b!2546656 d!722734))

(declare-fun d!722736 () Bool)

(declare-fun lt!902891 () Int)

(assert (=> d!722736 (>= lt!902891 0)))

(declare-fun e!1610157 () Int)

(assert (=> d!722736 (= lt!902891 e!1610157)))

(declare-fun c!408164 () Bool)

(assert (=> d!722736 (= c!408164 ((_ is Nil!29554) (_1!17322 lt!902762)))))

(assert (=> d!722736 (= (size!22942 (_1!17322 lt!902762)) lt!902891)))

(declare-fun b!2547424 () Bool)

(assert (=> b!2547424 (= e!1610157 0)))

(declare-fun b!2547425 () Bool)

(assert (=> b!2547425 (= e!1610157 (+ 1 (size!22942 (t!211353 (_1!17322 lt!902762)))))))

(assert (= (and d!722736 c!408164) b!2547424))

(assert (= (and d!722736 (not c!408164)) b!2547425))

(declare-fun m!2891975 () Bool)

(assert (=> b!2547425 m!2891975))

(assert (=> b!2546656 d!722736))

(declare-fun d!722738 () Bool)

(declare-fun lt!902892 () Int)

(assert (=> d!722738 (>= lt!902892 0)))

(declare-fun e!1610158 () Int)

(assert (=> d!722738 (= lt!902892 e!1610158)))

(declare-fun c!408165 () Bool)

(assert (=> d!722738 (= c!408165 ((_ is Nil!29554) (_2!17322 lt!902762)))))

(assert (=> d!722738 (= (size!22942 (_2!17322 lt!902762)) lt!902892)))

(declare-fun b!2547426 () Bool)

(assert (=> b!2547426 (= e!1610158 0)))

(declare-fun b!2547427 () Bool)

(assert (=> b!2547427 (= e!1610158 (+ 1 (size!22942 (t!211353 (_2!17322 lt!902762)))))))

(assert (= (and d!722738 c!408165) b!2547426))

(assert (= (and d!722738 (not c!408165)) b!2547427))

(declare-fun m!2891977 () Bool)

(assert (=> b!2547427 m!2891977))

(assert (=> b!2546656 d!722738))

(declare-fun b!2547428 () Bool)

(declare-fun e!1610160 () Bool)

(declare-fun e!1610161 () Bool)

(assert (=> b!2547428 (= e!1610160 e!1610161)))

(declare-fun res!1073316 () Bool)

(assert (=> b!2547428 (=> res!1073316 e!1610161)))

(declare-fun call!161734 () Bool)

(assert (=> b!2547428 (= res!1073316 call!161734)))

(declare-fun b!2547429 () Bool)

(declare-fun res!1073312 () Bool)

(declare-fun e!1610159 () Bool)

(assert (=> b!2547429 (=> (not res!1073312) (not e!1610159))))

(assert (=> b!2547429 (= res!1073312 (isEmpty!16998 (tail!4073 Nil!29554)))))

(declare-fun b!2547430 () Bool)

(declare-fun e!1610162 () Bool)

(assert (=> b!2547430 (= e!1610162 (matchR!3536 (derivativeStep!2158 (derivative!284 lt!902760 tl!4068) (head!5798 Nil!29554)) (tail!4073 Nil!29554)))))

(declare-fun bm!161729 () Bool)

(assert (=> bm!161729 (= call!161734 (isEmpty!16998 Nil!29554))))

(declare-fun b!2547431 () Bool)

(declare-fun res!1073311 () Bool)

(assert (=> b!2547431 (=> (not res!1073311) (not e!1610159))))

(assert (=> b!2547431 (= res!1073311 (not call!161734))))

(declare-fun b!2547432 () Bool)

(assert (=> b!2547432 (= e!1610159 (= (head!5798 Nil!29554) (c!407871 (derivative!284 lt!902760 tl!4068))))))

(declare-fun d!722740 () Bool)

(declare-fun e!1610163 () Bool)

(assert (=> d!722740 e!1610163))

(declare-fun c!408166 () Bool)

(assert (=> d!722740 (= c!408166 ((_ is EmptyExpr!7589) (derivative!284 lt!902760 tl!4068)))))

(declare-fun lt!902893 () Bool)

(assert (=> d!722740 (= lt!902893 e!1610162)))

(declare-fun c!408168 () Bool)

(assert (=> d!722740 (= c!408168 (isEmpty!16998 Nil!29554))))

(assert (=> d!722740 (validRegex!3215 (derivative!284 lt!902760 tl!4068))))

(assert (=> d!722740 (= (matchR!3536 (derivative!284 lt!902760 tl!4068) Nil!29554) lt!902893)))

(declare-fun b!2547433 () Bool)

(declare-fun res!1073310 () Bool)

(assert (=> b!2547433 (=> res!1073310 e!1610161)))

(assert (=> b!2547433 (= res!1073310 (not (isEmpty!16998 (tail!4073 Nil!29554))))))

(declare-fun b!2547434 () Bool)

(declare-fun e!1610165 () Bool)

(assert (=> b!2547434 (= e!1610163 e!1610165)))

(declare-fun c!408167 () Bool)

(assert (=> b!2547434 (= c!408167 ((_ is EmptyLang!7589) (derivative!284 lt!902760 tl!4068)))))

(declare-fun b!2547435 () Bool)

(declare-fun res!1073315 () Bool)

(declare-fun e!1610164 () Bool)

(assert (=> b!2547435 (=> res!1073315 e!1610164)))

(assert (=> b!2547435 (= res!1073315 (not ((_ is ElementMatch!7589) (derivative!284 lt!902760 tl!4068))))))

(assert (=> b!2547435 (= e!1610165 e!1610164)))

(declare-fun b!2547436 () Bool)

(assert (=> b!2547436 (= e!1610165 (not lt!902893))))

(declare-fun b!2547437 () Bool)

(assert (=> b!2547437 (= e!1610161 (not (= (head!5798 Nil!29554) (c!407871 (derivative!284 lt!902760 tl!4068)))))))

(declare-fun b!2547438 () Bool)

(assert (=> b!2547438 (= e!1610164 e!1610160)))

(declare-fun res!1073314 () Bool)

(assert (=> b!2547438 (=> (not res!1073314) (not e!1610160))))

(assert (=> b!2547438 (= res!1073314 (not lt!902893))))

(declare-fun b!2547439 () Bool)

(declare-fun res!1073313 () Bool)

(assert (=> b!2547439 (=> res!1073313 e!1610164)))

(assert (=> b!2547439 (= res!1073313 e!1610159)))

(declare-fun res!1073309 () Bool)

(assert (=> b!2547439 (=> (not res!1073309) (not e!1610159))))

(assert (=> b!2547439 (= res!1073309 lt!902893)))

(declare-fun b!2547440 () Bool)

(assert (=> b!2547440 (= e!1610162 (nullable!2506 (derivative!284 lt!902760 tl!4068)))))

(declare-fun b!2547441 () Bool)

(assert (=> b!2547441 (= e!1610163 (= lt!902893 call!161734))))

(assert (= (and d!722740 c!408168) b!2547440))

(assert (= (and d!722740 (not c!408168)) b!2547430))

(assert (= (and d!722740 c!408166) b!2547441))

(assert (= (and d!722740 (not c!408166)) b!2547434))

(assert (= (and b!2547434 c!408167) b!2547436))

(assert (= (and b!2547434 (not c!408167)) b!2547435))

(assert (= (and b!2547435 (not res!1073315)) b!2547439))

(assert (= (and b!2547439 res!1073309) b!2547431))

(assert (= (and b!2547431 res!1073311) b!2547429))

(assert (= (and b!2547429 res!1073312) b!2547432))

(assert (= (and b!2547439 (not res!1073313)) b!2547438))

(assert (= (and b!2547438 res!1073314) b!2547428))

(assert (= (and b!2547428 (not res!1073316)) b!2547433))

(assert (= (and b!2547433 (not res!1073310)) b!2547437))

(assert (= (or b!2547441 b!2547428 b!2547431) bm!161729))

(assert (=> d!722740 m!2891141))

(assert (=> d!722740 m!2891055))

(declare-fun m!2891979 () Bool)

(assert (=> d!722740 m!2891979))

(assert (=> b!2547437 m!2891145))

(assert (=> b!2547430 m!2891145))

(assert (=> b!2547430 m!2891055))

(assert (=> b!2547430 m!2891145))

(declare-fun m!2891981 () Bool)

(assert (=> b!2547430 m!2891981))

(assert (=> b!2547430 m!2891149))

(assert (=> b!2547430 m!2891981))

(assert (=> b!2547430 m!2891149))

(declare-fun m!2891983 () Bool)

(assert (=> b!2547430 m!2891983))

(assert (=> b!2547433 m!2891149))

(assert (=> b!2547433 m!2891149))

(assert (=> b!2547433 m!2891161))

(assert (=> b!2547429 m!2891149))

(assert (=> b!2547429 m!2891149))

(assert (=> b!2547429 m!2891161))

(assert (=> bm!161729 m!2891141))

(assert (=> b!2547440 m!2891055))

(declare-fun m!2891985 () Bool)

(assert (=> b!2547440 m!2891985))

(assert (=> b!2547432 m!2891145))

(assert (=> d!722498 d!722740))

(assert (=> d!722498 d!722496))

(assert (=> d!722498 d!722488))

(assert (=> d!722498 d!722706))

(declare-fun d!722742 () Bool)

(assert (=> d!722742 (= (matchR!3536 lt!902760 tl!4068) (matchR!3536 (derivative!284 lt!902760 tl!4068) Nil!29554))))

(assert (=> d!722742 true))

(declare-fun _$108!338 () Unit!43367)

(assert (=> d!722742 (= (choose!15040 lt!902760 tl!4068) _$108!338)))

(declare-fun bs!469542 () Bool)

(assert (= bs!469542 d!722742))

(assert (=> bs!469542 m!2891065))

(assert (=> bs!469542 m!2891055))

(assert (=> bs!469542 m!2891055))

(assert (=> bs!469542 m!2891431))

(assert (=> d!722498 d!722742))

(declare-fun d!722744 () Bool)

(assert (not d!722744))

(assert (=> b!2546412 d!722744))

(declare-fun d!722746 () Bool)

(assert (not d!722746))

(assert (=> b!2546412 d!722746))

(assert (=> b!2546412 d!722662))

(assert (=> b!2546412 d!722710))

(assert (=> b!2546721 d!722662))

(declare-fun b!2547442 () Bool)

(declare-fun res!1073317 () Bool)

(declare-fun e!1610166 () Bool)

(assert (=> b!2547442 (=> res!1073317 e!1610166)))

(assert (=> b!2547442 (= res!1073317 (not ((_ is Concat!12285) lt!902769)))))

(declare-fun e!1610170 () Bool)

(assert (=> b!2547442 (= e!1610170 e!1610166)))

(declare-fun call!161735 () Bool)

(declare-fun bm!161730 () Bool)

(declare-fun c!408169 () Bool)

(declare-fun c!408170 () Bool)

(assert (=> bm!161730 (= call!161735 (validRegex!3215 (ite c!408170 (reg!7918 lt!902769) (ite c!408169 (regOne!15691 lt!902769) (regTwo!15690 lt!902769)))))))

(declare-fun b!2547443 () Bool)

(declare-fun e!1610171 () Bool)

(assert (=> b!2547443 (= e!1610171 call!161735)))

(declare-fun bm!161731 () Bool)

(declare-fun call!161736 () Bool)

(assert (=> bm!161731 (= call!161736 call!161735)))

(declare-fun b!2547444 () Bool)

(declare-fun e!1610172 () Bool)

(assert (=> b!2547444 (= e!1610172 call!161736)))

(declare-fun b!2547445 () Bool)

(declare-fun e!1610169 () Bool)

(assert (=> b!2547445 (= e!1610169 e!1610170)))

(assert (=> b!2547445 (= c!408169 ((_ is Union!7589) lt!902769))))

(declare-fun b!2547446 () Bool)

(declare-fun e!1610168 () Bool)

(assert (=> b!2547446 (= e!1610168 e!1610169)))

(assert (=> b!2547446 (= c!408170 ((_ is Star!7589) lt!902769))))

(declare-fun d!722748 () Bool)

(declare-fun res!1073321 () Bool)

(assert (=> d!722748 (=> res!1073321 e!1610168)))

(assert (=> d!722748 (= res!1073321 ((_ is ElementMatch!7589) lt!902769))))

(assert (=> d!722748 (= (validRegex!3215 lt!902769) e!1610168)))

(declare-fun b!2547447 () Bool)

(assert (=> b!2547447 (= e!1610166 e!1610172)))

(declare-fun res!1073319 () Bool)

(assert (=> b!2547447 (=> (not res!1073319) (not e!1610172))))

(declare-fun call!161737 () Bool)

(assert (=> b!2547447 (= res!1073319 call!161737)))

(declare-fun b!2547448 () Bool)

(declare-fun e!1610167 () Bool)

(assert (=> b!2547448 (= e!1610167 call!161737)))

(declare-fun b!2547449 () Bool)

(assert (=> b!2547449 (= e!1610169 e!1610171)))

(declare-fun res!1073320 () Bool)

(assert (=> b!2547449 (= res!1073320 (not (nullable!2506 (reg!7918 lt!902769))))))

(assert (=> b!2547449 (=> (not res!1073320) (not e!1610171))))

(declare-fun b!2547450 () Bool)

(declare-fun res!1073318 () Bool)

(assert (=> b!2547450 (=> (not res!1073318) (not e!1610167))))

(assert (=> b!2547450 (= res!1073318 call!161736)))

(assert (=> b!2547450 (= e!1610170 e!1610167)))

(declare-fun bm!161732 () Bool)

(assert (=> bm!161732 (= call!161737 (validRegex!3215 (ite c!408169 (regTwo!15691 lt!902769) (regOne!15690 lt!902769))))))

(assert (= (and d!722748 (not res!1073321)) b!2547446))

(assert (= (and b!2547446 c!408170) b!2547449))

(assert (= (and b!2547446 (not c!408170)) b!2547445))

(assert (= (and b!2547449 res!1073320) b!2547443))

(assert (= (and b!2547445 c!408169) b!2547450))

(assert (= (and b!2547445 (not c!408169)) b!2547442))

(assert (= (and b!2547450 res!1073318) b!2547448))

(assert (= (and b!2547442 (not res!1073317)) b!2547447))

(assert (= (and b!2547447 res!1073319) b!2547444))

(assert (= (or b!2547450 b!2547444) bm!161731))

(assert (= (or b!2547448 b!2547447) bm!161732))

(assert (= (or b!2547443 bm!161731) bm!161730))

(declare-fun m!2891987 () Bool)

(assert (=> bm!161730 m!2891987))

(declare-fun m!2891989 () Bool)

(assert (=> b!2547449 m!2891989))

(declare-fun m!2891991 () Bool)

(assert (=> bm!161732 m!2891991))

(assert (=> d!722412 d!722748))

(assert (=> d!722412 d!722416))

(declare-fun d!722750 () Bool)

(assert (=> d!722750 (= (isEmpty!16998 (tail!4073 (Cons!29554 c!14016 (_1!17322 lt!902762)))) ((_ is Nil!29554) (tail!4073 (Cons!29554 c!14016 (_1!17322 lt!902762)))))))

(assert (=> b!2546673 d!722750))

(declare-fun d!722752 () Bool)

(assert (=> d!722752 (= (tail!4073 (Cons!29554 c!14016 (_1!17322 lt!902762))) (t!211353 (Cons!29554 c!14016 (_1!17322 lt!902762))))))

(assert (=> b!2546673 d!722752))

(declare-fun d!722754 () Bool)

(assert (=> d!722754 (= (isEmpty!16998 (_2!17322 lt!902762)) ((_ is Nil!29554) (_2!17322 lt!902762)))))

(assert (=> d!722492 d!722754))

(declare-fun b!2547451 () Bool)

(declare-fun res!1073322 () Bool)

(declare-fun e!1610173 () Bool)

(assert (=> b!2547451 (=> res!1073322 e!1610173)))

(assert (=> b!2547451 (= res!1073322 (not ((_ is Concat!12285) lt!902761)))))

(declare-fun e!1610177 () Bool)

(assert (=> b!2547451 (= e!1610177 e!1610173)))

(declare-fun c!408172 () Bool)

(declare-fun c!408171 () Bool)

(declare-fun call!161738 () Bool)

(declare-fun bm!161733 () Bool)

(assert (=> bm!161733 (= call!161738 (validRegex!3215 (ite c!408172 (reg!7918 lt!902761) (ite c!408171 (regOne!15691 lt!902761) (regTwo!15690 lt!902761)))))))

(declare-fun b!2547452 () Bool)

(declare-fun e!1610178 () Bool)

(assert (=> b!2547452 (= e!1610178 call!161738)))

(declare-fun bm!161734 () Bool)

(declare-fun call!161739 () Bool)

(assert (=> bm!161734 (= call!161739 call!161738)))

(declare-fun b!2547453 () Bool)

(declare-fun e!1610179 () Bool)

(assert (=> b!2547453 (= e!1610179 call!161739)))

(declare-fun b!2547454 () Bool)

(declare-fun e!1610176 () Bool)

(assert (=> b!2547454 (= e!1610176 e!1610177)))

(assert (=> b!2547454 (= c!408171 ((_ is Union!7589) lt!902761))))

(declare-fun b!2547455 () Bool)

(declare-fun e!1610175 () Bool)

(assert (=> b!2547455 (= e!1610175 e!1610176)))

(assert (=> b!2547455 (= c!408172 ((_ is Star!7589) lt!902761))))

(declare-fun d!722756 () Bool)

(declare-fun res!1073326 () Bool)

(assert (=> d!722756 (=> res!1073326 e!1610175)))

(assert (=> d!722756 (= res!1073326 ((_ is ElementMatch!7589) lt!902761))))

(assert (=> d!722756 (= (validRegex!3215 lt!902761) e!1610175)))

(declare-fun b!2547456 () Bool)

(assert (=> b!2547456 (= e!1610173 e!1610179)))

(declare-fun res!1073324 () Bool)

(assert (=> b!2547456 (=> (not res!1073324) (not e!1610179))))

(declare-fun call!161740 () Bool)

(assert (=> b!2547456 (= res!1073324 call!161740)))

(declare-fun b!2547457 () Bool)

(declare-fun e!1610174 () Bool)

(assert (=> b!2547457 (= e!1610174 call!161740)))

(declare-fun b!2547458 () Bool)

(assert (=> b!2547458 (= e!1610176 e!1610178)))

(declare-fun res!1073325 () Bool)

(assert (=> b!2547458 (= res!1073325 (not (nullable!2506 (reg!7918 lt!902761))))))

(assert (=> b!2547458 (=> (not res!1073325) (not e!1610178))))

(declare-fun b!2547459 () Bool)

(declare-fun res!1073323 () Bool)

(assert (=> b!2547459 (=> (not res!1073323) (not e!1610174))))

(assert (=> b!2547459 (= res!1073323 call!161739)))

(assert (=> b!2547459 (= e!1610177 e!1610174)))

(declare-fun bm!161735 () Bool)

(assert (=> bm!161735 (= call!161740 (validRegex!3215 (ite c!408171 (regTwo!15691 lt!902761) (regOne!15690 lt!902761))))))

(assert (= (and d!722756 (not res!1073326)) b!2547455))

(assert (= (and b!2547455 c!408172) b!2547458))

(assert (= (and b!2547455 (not c!408172)) b!2547454))

(assert (= (and b!2547458 res!1073325) b!2547452))

(assert (= (and b!2547454 c!408171) b!2547459))

(assert (= (and b!2547454 (not c!408171)) b!2547451))

(assert (= (and b!2547459 res!1073323) b!2547457))

(assert (= (and b!2547451 (not res!1073322)) b!2547456))

(assert (= (and b!2547456 res!1073324) b!2547453))

(assert (= (or b!2547459 b!2547453) bm!161734))

(assert (= (or b!2547457 b!2547456) bm!161735))

(assert (= (or b!2547452 bm!161734) bm!161733))

(declare-fun m!2891993 () Bool)

(assert (=> bm!161733 m!2891993))

(declare-fun m!2891995 () Bool)

(assert (=> b!2547458 m!2891995))

(declare-fun m!2891997 () Bool)

(assert (=> bm!161735 m!2891997))

(assert (=> d!722492 d!722756))

(declare-fun d!722758 () Bool)

(assert (=> d!722758 (= (isEmpty!16998 (Cons!29554 c!14016 (_1!17322 lt!902762))) ((_ is Nil!29554) (Cons!29554 c!14016 (_1!17322 lt!902762))))))

(assert (=> bm!161605 d!722758))

(declare-fun b!2547460 () Bool)

(declare-fun e!1610181 () Bool)

(declare-fun e!1610182 () Bool)

(assert (=> b!2547460 (= e!1610181 e!1610182)))

(declare-fun res!1073334 () Bool)

(assert (=> b!2547460 (=> res!1073334 e!1610182)))

(declare-fun call!161741 () Bool)

(assert (=> b!2547460 (= res!1073334 call!161741)))

(declare-fun b!2547461 () Bool)

(declare-fun res!1073330 () Bool)

(declare-fun e!1610180 () Bool)

(assert (=> b!2547461 (=> (not res!1073330) (not e!1610180))))

(assert (=> b!2547461 (= res!1073330 (isEmpty!16998 (tail!4073 (tail!4073 (_2!17322 lt!902762)))))))

(declare-fun b!2547462 () Bool)

(declare-fun e!1610183 () Bool)

(assert (=> b!2547462 (= e!1610183 (matchR!3536 (derivativeStep!2158 (derivativeStep!2158 lt!902761 (head!5798 (_2!17322 lt!902762))) (head!5798 (tail!4073 (_2!17322 lt!902762)))) (tail!4073 (tail!4073 (_2!17322 lt!902762)))))))

(declare-fun bm!161736 () Bool)

(assert (=> bm!161736 (= call!161741 (isEmpty!16998 (tail!4073 (_2!17322 lt!902762))))))

(declare-fun b!2547463 () Bool)

(declare-fun res!1073329 () Bool)

(assert (=> b!2547463 (=> (not res!1073329) (not e!1610180))))

(assert (=> b!2547463 (= res!1073329 (not call!161741))))

(declare-fun b!2547464 () Bool)

(assert (=> b!2547464 (= e!1610180 (= (head!5798 (tail!4073 (_2!17322 lt!902762))) (c!407871 (derivativeStep!2158 lt!902761 (head!5798 (_2!17322 lt!902762))))))))

(declare-fun d!722760 () Bool)

(declare-fun e!1610184 () Bool)

(assert (=> d!722760 e!1610184))

(declare-fun c!408173 () Bool)

(assert (=> d!722760 (= c!408173 ((_ is EmptyExpr!7589) (derivativeStep!2158 lt!902761 (head!5798 (_2!17322 lt!902762)))))))

(declare-fun lt!902894 () Bool)

(assert (=> d!722760 (= lt!902894 e!1610183)))

(declare-fun c!408175 () Bool)

(assert (=> d!722760 (= c!408175 (isEmpty!16998 (tail!4073 (_2!17322 lt!902762))))))

(assert (=> d!722760 (validRegex!3215 (derivativeStep!2158 lt!902761 (head!5798 (_2!17322 lt!902762))))))

(assert (=> d!722760 (= (matchR!3536 (derivativeStep!2158 lt!902761 (head!5798 (_2!17322 lt!902762))) (tail!4073 (_2!17322 lt!902762))) lt!902894)))

(declare-fun b!2547465 () Bool)

(declare-fun res!1073328 () Bool)

(assert (=> b!2547465 (=> res!1073328 e!1610182)))

(assert (=> b!2547465 (= res!1073328 (not (isEmpty!16998 (tail!4073 (tail!4073 (_2!17322 lt!902762))))))))

(declare-fun b!2547466 () Bool)

(declare-fun e!1610186 () Bool)

(assert (=> b!2547466 (= e!1610184 e!1610186)))

(declare-fun c!408174 () Bool)

(assert (=> b!2547466 (= c!408174 ((_ is EmptyLang!7589) (derivativeStep!2158 lt!902761 (head!5798 (_2!17322 lt!902762)))))))

(declare-fun b!2547467 () Bool)

(declare-fun res!1073333 () Bool)

(declare-fun e!1610185 () Bool)

(assert (=> b!2547467 (=> res!1073333 e!1610185)))

(assert (=> b!2547467 (= res!1073333 (not ((_ is ElementMatch!7589) (derivativeStep!2158 lt!902761 (head!5798 (_2!17322 lt!902762))))))))

(assert (=> b!2547467 (= e!1610186 e!1610185)))

(declare-fun b!2547468 () Bool)

(assert (=> b!2547468 (= e!1610186 (not lt!902894))))

(declare-fun b!2547469 () Bool)

(assert (=> b!2547469 (= e!1610182 (not (= (head!5798 (tail!4073 (_2!17322 lt!902762))) (c!407871 (derivativeStep!2158 lt!902761 (head!5798 (_2!17322 lt!902762)))))))))

(declare-fun b!2547470 () Bool)

(assert (=> b!2547470 (= e!1610185 e!1610181)))

(declare-fun res!1073332 () Bool)

(assert (=> b!2547470 (=> (not res!1073332) (not e!1610181))))

(assert (=> b!2547470 (= res!1073332 (not lt!902894))))

(declare-fun b!2547471 () Bool)

(declare-fun res!1073331 () Bool)

(assert (=> b!2547471 (=> res!1073331 e!1610185)))

(assert (=> b!2547471 (= res!1073331 e!1610180)))

(declare-fun res!1073327 () Bool)

(assert (=> b!2547471 (=> (not res!1073327) (not e!1610180))))

(assert (=> b!2547471 (= res!1073327 lt!902894)))

(declare-fun b!2547472 () Bool)

(assert (=> b!2547472 (= e!1610183 (nullable!2506 (derivativeStep!2158 lt!902761 (head!5798 (_2!17322 lt!902762)))))))

(declare-fun b!2547473 () Bool)

(assert (=> b!2547473 (= e!1610184 (= lt!902894 call!161741))))

(assert (= (and d!722760 c!408175) b!2547472))

(assert (= (and d!722760 (not c!408175)) b!2547462))

(assert (= (and d!722760 c!408173) b!2547473))

(assert (= (and d!722760 (not c!408173)) b!2547466))

(assert (= (and b!2547466 c!408174) b!2547468))

(assert (= (and b!2547466 (not c!408174)) b!2547467))

(assert (= (and b!2547467 (not res!1073333)) b!2547471))

(assert (= (and b!2547471 res!1073327) b!2547463))

(assert (= (and b!2547463 res!1073329) b!2547461))

(assert (= (and b!2547461 res!1073330) b!2547464))

(assert (= (and b!2547471 (not res!1073331)) b!2547470))

(assert (= (and b!2547470 res!1073332) b!2547460))

(assert (= (and b!2547460 (not res!1073334)) b!2547465))

(assert (= (and b!2547465 (not res!1073328)) b!2547469))

(assert (= (or b!2547473 b!2547460 b!2547463) bm!161736))

(assert (=> d!722760 m!2891401))

(assert (=> d!722760 m!2891405))

(assert (=> d!722760 m!2891399))

(declare-fun m!2891999 () Bool)

(assert (=> d!722760 m!2891999))

(assert (=> b!2547469 m!2891401))

(declare-fun m!2892001 () Bool)

(assert (=> b!2547469 m!2892001))

(assert (=> b!2547462 m!2891401))

(assert (=> b!2547462 m!2892001))

(assert (=> b!2547462 m!2891399))

(assert (=> b!2547462 m!2892001))

(declare-fun m!2892003 () Bool)

(assert (=> b!2547462 m!2892003))

(assert (=> b!2547462 m!2891401))

(declare-fun m!2892005 () Bool)

(assert (=> b!2547462 m!2892005))

(assert (=> b!2547462 m!2892003))

(assert (=> b!2547462 m!2892005))

(declare-fun m!2892007 () Bool)

(assert (=> b!2547462 m!2892007))

(assert (=> b!2547465 m!2891401))

(assert (=> b!2547465 m!2892005))

(assert (=> b!2547465 m!2892005))

(declare-fun m!2892009 () Bool)

(assert (=> b!2547465 m!2892009))

(assert (=> b!2547461 m!2891401))

(assert (=> b!2547461 m!2892005))

(assert (=> b!2547461 m!2892005))

(assert (=> b!2547461 m!2892009))

(assert (=> bm!161736 m!2891401))

(assert (=> bm!161736 m!2891405))

(assert (=> b!2547472 m!2891399))

(declare-fun m!2892011 () Bool)

(assert (=> b!2547472 m!2892011))

(assert (=> b!2547464 m!2891401))

(assert (=> b!2547464 m!2892001))

(assert (=> b!2546700 d!722760))

(declare-fun b!2547474 () Bool)

(declare-fun e!1610187 () Regex!7589)

(declare-fun call!161744 () Regex!7589)

(assert (=> b!2547474 (= e!1610187 (Union!7589 (Concat!12285 call!161744 (regTwo!15690 lt!902761)) EmptyLang!7589))))

(declare-fun bm!161738 () Bool)

(declare-fun call!161745 () Regex!7589)

(assert (=> bm!161738 (= call!161744 call!161745)))

(declare-fun b!2547475 () Bool)

(declare-fun call!161742 () Regex!7589)

(assert (=> b!2547475 (= e!1610187 (Union!7589 (Concat!12285 call!161744 (regTwo!15690 lt!902761)) call!161742))))

(declare-fun bm!161739 () Bool)

(declare-fun call!161743 () Regex!7589)

(assert (=> bm!161739 (= call!161745 call!161743)))

(declare-fun b!2547476 () Bool)

(declare-fun e!1610188 () Regex!7589)

(assert (=> b!2547476 (= e!1610188 EmptyLang!7589)))

(declare-fun b!2547477 () Bool)

(declare-fun e!1610189 () Regex!7589)

(assert (=> b!2547477 (= e!1610189 (Concat!12285 call!161745 lt!902761))))

(declare-fun b!2547478 () Bool)

(declare-fun c!408177 () Bool)

(assert (=> b!2547478 (= c!408177 (nullable!2506 (regOne!15690 lt!902761)))))

(assert (=> b!2547478 (= e!1610189 e!1610187)))

(declare-fun b!2547479 () Bool)

(declare-fun e!1610190 () Regex!7589)

(assert (=> b!2547479 (= e!1610190 (ite (= (head!5798 (_2!17322 lt!902762)) (c!407871 lt!902761)) EmptyExpr!7589 EmptyLang!7589))))

(declare-fun b!2547480 () Bool)

(declare-fun c!408179 () Bool)

(assert (=> b!2547480 (= c!408179 ((_ is Union!7589) lt!902761))))

(declare-fun e!1610191 () Regex!7589)

(assert (=> b!2547480 (= e!1610190 e!1610191)))

(declare-fun b!2547481 () Bool)

(assert (=> b!2547481 (= e!1610191 e!1610189)))

(declare-fun c!408178 () Bool)

(assert (=> b!2547481 (= c!408178 ((_ is Star!7589) lt!902761))))

(declare-fun bm!161740 () Bool)

(assert (=> bm!161740 (= call!161742 (derivativeStep!2158 (ite c!408179 (regOne!15691 lt!902761) (regTwo!15690 lt!902761)) (head!5798 (_2!17322 lt!902762))))))

(declare-fun b!2547482 () Bool)

(assert (=> b!2547482 (= e!1610188 e!1610190)))

(declare-fun c!408176 () Bool)

(assert (=> b!2547482 (= c!408176 ((_ is ElementMatch!7589) lt!902761))))

(declare-fun b!2547483 () Bool)

(assert (=> b!2547483 (= e!1610191 (Union!7589 call!161742 call!161743))))

(declare-fun d!722762 () Bool)

(declare-fun lt!902895 () Regex!7589)

(assert (=> d!722762 (validRegex!3215 lt!902895)))

(assert (=> d!722762 (= lt!902895 e!1610188)))

(declare-fun c!408180 () Bool)

(assert (=> d!722762 (= c!408180 (or ((_ is EmptyExpr!7589) lt!902761) ((_ is EmptyLang!7589) lt!902761)))))

(assert (=> d!722762 (validRegex!3215 lt!902761)))

(assert (=> d!722762 (= (derivativeStep!2158 lt!902761 (head!5798 (_2!17322 lt!902762))) lt!902895)))

(declare-fun bm!161737 () Bool)

(assert (=> bm!161737 (= call!161743 (derivativeStep!2158 (ite c!408179 (regTwo!15691 lt!902761) (ite c!408178 (reg!7918 lt!902761) (regOne!15690 lt!902761))) (head!5798 (_2!17322 lt!902762))))))

(assert (= (and d!722762 c!408180) b!2547476))

(assert (= (and d!722762 (not c!408180)) b!2547482))

(assert (= (and b!2547482 c!408176) b!2547479))

(assert (= (and b!2547482 (not c!408176)) b!2547480))

(assert (= (and b!2547480 c!408179) b!2547483))

(assert (= (and b!2547480 (not c!408179)) b!2547481))

(assert (= (and b!2547481 c!408178) b!2547477))

(assert (= (and b!2547481 (not c!408178)) b!2547478))

(assert (= (and b!2547478 c!408177) b!2547475))

(assert (= (and b!2547478 (not c!408177)) b!2547474))

(assert (= (or b!2547475 b!2547474) bm!161738))

(assert (= (or b!2547477 bm!161738) bm!161739))

(assert (= (or b!2547483 bm!161739) bm!161737))

(assert (= (or b!2547483 b!2547475) bm!161740))

(declare-fun m!2892013 () Bool)

(assert (=> b!2547478 m!2892013))

(assert (=> bm!161740 m!2891397))

(declare-fun m!2892015 () Bool)

(assert (=> bm!161740 m!2892015))

(declare-fun m!2892017 () Bool)

(assert (=> d!722762 m!2892017))

(assert (=> d!722762 m!2891395))

(assert (=> bm!161737 m!2891397))

(declare-fun m!2892019 () Bool)

(assert (=> bm!161737 m!2892019))

(assert (=> b!2546700 d!722762))

(assert (=> b!2546700 d!722700))

(declare-fun d!722764 () Bool)

(assert (=> d!722764 (= (tail!4073 (_2!17322 lt!902762)) (t!211353 (_2!17322 lt!902762)))))

(assert (=> b!2546700 d!722764))

(assert (=> b!2546415 d!722708))

(assert (=> b!2546415 d!722710))

(declare-fun d!722766 () Bool)

(assert (=> d!722766 (= (nullable!2506 lt!902760) (nullableFct!731 lt!902760))))

(declare-fun bs!469543 () Bool)

(assert (= bs!469543 d!722766))

(declare-fun m!2892021 () Bool)

(assert (=> bs!469543 m!2892021))

(assert (=> b!2546738 d!722766))

(declare-fun d!722768 () Bool)

(declare-fun lt!902896 () Regex!7589)

(assert (=> d!722768 (validRegex!3215 lt!902896)))

(declare-fun e!1610192 () Regex!7589)

(assert (=> d!722768 (= lt!902896 e!1610192)))

(declare-fun c!408181 () Bool)

(assert (=> d!722768 (= c!408181 ((_ is Cons!29554) (t!211353 (_1!17322 lt!902762))))))

(assert (=> d!722768 (validRegex!3215 (derivativeStep!2158 lt!902763 (h!34974 (_1!17322 lt!902762))))))

(assert (=> d!722768 (= (derivative!284 (derivativeStep!2158 lt!902763 (h!34974 (_1!17322 lt!902762))) (t!211353 (_1!17322 lt!902762))) lt!902896)))

(declare-fun b!2547484 () Bool)

(assert (=> b!2547484 (= e!1610192 (derivative!284 (derivativeStep!2158 (derivativeStep!2158 lt!902763 (h!34974 (_1!17322 lt!902762))) (h!34974 (t!211353 (_1!17322 lt!902762)))) (t!211353 (t!211353 (_1!17322 lt!902762)))))))

(declare-fun b!2547485 () Bool)

(assert (=> b!2547485 (= e!1610192 (derivativeStep!2158 lt!902763 (h!34974 (_1!17322 lt!902762))))))

(assert (= (and d!722768 c!408181) b!2547484))

(assert (= (and d!722768 (not c!408181)) b!2547485))

(declare-fun m!2892023 () Bool)

(assert (=> d!722768 m!2892023))

(assert (=> d!722768 m!2891219))

(declare-fun m!2892025 () Bool)

(assert (=> d!722768 m!2892025))

(assert (=> b!2547484 m!2891219))

(declare-fun m!2892027 () Bool)

(assert (=> b!2547484 m!2892027))

(assert (=> b!2547484 m!2892027))

(declare-fun m!2892029 () Bool)

(assert (=> b!2547484 m!2892029))

(assert (=> b!2546482 d!722768))

(declare-fun b!2547486 () Bool)

(declare-fun e!1610193 () Regex!7589)

(declare-fun call!161748 () Regex!7589)

(assert (=> b!2547486 (= e!1610193 (Union!7589 (Concat!12285 call!161748 (regTwo!15690 lt!902763)) EmptyLang!7589))))

(declare-fun bm!161742 () Bool)

(declare-fun call!161749 () Regex!7589)

(assert (=> bm!161742 (= call!161748 call!161749)))

(declare-fun b!2547487 () Bool)

(declare-fun call!161746 () Regex!7589)

(assert (=> b!2547487 (= e!1610193 (Union!7589 (Concat!12285 call!161748 (regTwo!15690 lt!902763)) call!161746))))

(declare-fun bm!161743 () Bool)

(declare-fun call!161747 () Regex!7589)

(assert (=> bm!161743 (= call!161749 call!161747)))

(declare-fun b!2547488 () Bool)

(declare-fun e!1610194 () Regex!7589)

(assert (=> b!2547488 (= e!1610194 EmptyLang!7589)))

(declare-fun b!2547489 () Bool)

(declare-fun e!1610195 () Regex!7589)

(assert (=> b!2547489 (= e!1610195 (Concat!12285 call!161749 lt!902763))))

(declare-fun b!2547490 () Bool)

(declare-fun c!408183 () Bool)

(assert (=> b!2547490 (= c!408183 (nullable!2506 (regOne!15690 lt!902763)))))

(assert (=> b!2547490 (= e!1610195 e!1610193)))

(declare-fun b!2547491 () Bool)

(declare-fun e!1610196 () Regex!7589)

(assert (=> b!2547491 (= e!1610196 (ite (= (h!34974 (_1!17322 lt!902762)) (c!407871 lt!902763)) EmptyExpr!7589 EmptyLang!7589))))

(declare-fun b!2547492 () Bool)

(declare-fun c!408185 () Bool)

(assert (=> b!2547492 (= c!408185 ((_ is Union!7589) lt!902763))))

(declare-fun e!1610197 () Regex!7589)

(assert (=> b!2547492 (= e!1610196 e!1610197)))

(declare-fun b!2547493 () Bool)

(assert (=> b!2547493 (= e!1610197 e!1610195)))

(declare-fun c!408184 () Bool)

(assert (=> b!2547493 (= c!408184 ((_ is Star!7589) lt!902763))))

(declare-fun bm!161744 () Bool)

(assert (=> bm!161744 (= call!161746 (derivativeStep!2158 (ite c!408185 (regOne!15691 lt!902763) (regTwo!15690 lt!902763)) (h!34974 (_1!17322 lt!902762))))))

(declare-fun b!2547494 () Bool)

(assert (=> b!2547494 (= e!1610194 e!1610196)))

(declare-fun c!408182 () Bool)

(assert (=> b!2547494 (= c!408182 ((_ is ElementMatch!7589) lt!902763))))

(declare-fun b!2547495 () Bool)

(assert (=> b!2547495 (= e!1610197 (Union!7589 call!161746 call!161747))))

(declare-fun d!722770 () Bool)

(declare-fun lt!902897 () Regex!7589)

(assert (=> d!722770 (validRegex!3215 lt!902897)))

(assert (=> d!722770 (= lt!902897 e!1610194)))

(declare-fun c!408186 () Bool)

(assert (=> d!722770 (= c!408186 (or ((_ is EmptyExpr!7589) lt!902763) ((_ is EmptyLang!7589) lt!902763)))))

(assert (=> d!722770 (validRegex!3215 lt!902763)))

(assert (=> d!722770 (= (derivativeStep!2158 lt!902763 (h!34974 (_1!17322 lt!902762))) lt!902897)))

(declare-fun bm!161741 () Bool)

(assert (=> bm!161741 (= call!161747 (derivativeStep!2158 (ite c!408185 (regTwo!15691 lt!902763) (ite c!408184 (reg!7918 lt!902763) (regOne!15690 lt!902763))) (h!34974 (_1!17322 lt!902762))))))

(assert (= (and d!722770 c!408186) b!2547488))

(assert (= (and d!722770 (not c!408186)) b!2547494))

(assert (= (and b!2547494 c!408182) b!2547491))

(assert (= (and b!2547494 (not c!408182)) b!2547492))

(assert (= (and b!2547492 c!408185) b!2547495))

(assert (= (and b!2547492 (not c!408185)) b!2547493))

(assert (= (and b!2547493 c!408184) b!2547489))

(assert (= (and b!2547493 (not c!408184)) b!2547490))

(assert (= (and b!2547490 c!408183) b!2547487))

(assert (= (and b!2547490 (not c!408183)) b!2547486))

(assert (= (or b!2547487 b!2547486) bm!161742))

(assert (= (or b!2547489 bm!161742) bm!161743))

(assert (= (or b!2547495 bm!161743) bm!161741))

(assert (= (or b!2547495 b!2547487) bm!161744))

(declare-fun m!2892031 () Bool)

(assert (=> b!2547490 m!2892031))

(declare-fun m!2892033 () Bool)

(assert (=> bm!161744 m!2892033))

(declare-fun m!2892035 () Bool)

(assert (=> d!722770 m!2892035))

(assert (=> d!722770 m!2891217))

(declare-fun m!2892037 () Bool)

(assert (=> bm!161741 m!2892037))

(assert (=> b!2546482 d!722770))

(assert (=> d!722420 d!722728))

(declare-fun b!2547496 () Bool)

(declare-fun res!1073335 () Bool)

(declare-fun e!1610198 () Bool)

(assert (=> b!2547496 (=> res!1073335 e!1610198)))

(assert (=> b!2547496 (= res!1073335 (not ((_ is Concat!12285) lt!902757)))))

(declare-fun e!1610202 () Bool)

(assert (=> b!2547496 (= e!1610202 e!1610198)))

(declare-fun c!408188 () Bool)

(declare-fun c!408187 () Bool)

(declare-fun call!161750 () Bool)

(declare-fun bm!161745 () Bool)

(assert (=> bm!161745 (= call!161750 (validRegex!3215 (ite c!408188 (reg!7918 lt!902757) (ite c!408187 (regOne!15691 lt!902757) (regTwo!15690 lt!902757)))))))

(declare-fun b!2547497 () Bool)

(declare-fun e!1610203 () Bool)

(assert (=> b!2547497 (= e!1610203 call!161750)))

(declare-fun bm!161746 () Bool)

(declare-fun call!161751 () Bool)

(assert (=> bm!161746 (= call!161751 call!161750)))

(declare-fun b!2547498 () Bool)

(declare-fun e!1610204 () Bool)

(assert (=> b!2547498 (= e!1610204 call!161751)))

(declare-fun b!2547499 () Bool)

(declare-fun e!1610201 () Bool)

(assert (=> b!2547499 (= e!1610201 e!1610202)))

(assert (=> b!2547499 (= c!408187 ((_ is Union!7589) lt!902757))))

(declare-fun b!2547500 () Bool)

(declare-fun e!1610200 () Bool)

(assert (=> b!2547500 (= e!1610200 e!1610201)))

(assert (=> b!2547500 (= c!408188 ((_ is Star!7589) lt!902757))))

(declare-fun d!722772 () Bool)

(declare-fun res!1073339 () Bool)

(assert (=> d!722772 (=> res!1073339 e!1610200)))

(assert (=> d!722772 (= res!1073339 ((_ is ElementMatch!7589) lt!902757))))

(assert (=> d!722772 (= (validRegex!3215 lt!902757) e!1610200)))

(declare-fun b!2547501 () Bool)

(assert (=> b!2547501 (= e!1610198 e!1610204)))

(declare-fun res!1073337 () Bool)

(assert (=> b!2547501 (=> (not res!1073337) (not e!1610204))))

(declare-fun call!161752 () Bool)

(assert (=> b!2547501 (= res!1073337 call!161752)))

(declare-fun b!2547502 () Bool)

(declare-fun e!1610199 () Bool)

(assert (=> b!2547502 (= e!1610199 call!161752)))

(declare-fun b!2547503 () Bool)

(assert (=> b!2547503 (= e!1610201 e!1610203)))

(declare-fun res!1073338 () Bool)

(assert (=> b!2547503 (= res!1073338 (not (nullable!2506 (reg!7918 lt!902757))))))

(assert (=> b!2547503 (=> (not res!1073338) (not e!1610203))))

(declare-fun b!2547504 () Bool)

(declare-fun res!1073336 () Bool)

(assert (=> b!2547504 (=> (not res!1073336) (not e!1610199))))

(assert (=> b!2547504 (= res!1073336 call!161751)))

(assert (=> b!2547504 (= e!1610202 e!1610199)))

(declare-fun bm!161747 () Bool)

(assert (=> bm!161747 (= call!161752 (validRegex!3215 (ite c!408187 (regTwo!15691 lt!902757) (regOne!15690 lt!902757))))))

(assert (= (and d!722772 (not res!1073339)) b!2547500))

(assert (= (and b!2547500 c!408188) b!2547503))

(assert (= (and b!2547500 (not c!408188)) b!2547499))

(assert (= (and b!2547503 res!1073338) b!2547497))

(assert (= (and b!2547499 c!408187) b!2547504))

(assert (= (and b!2547499 (not c!408187)) b!2547496))

(assert (= (and b!2547504 res!1073336) b!2547502))

(assert (= (and b!2547496 (not res!1073335)) b!2547501))

(assert (= (and b!2547501 res!1073337) b!2547498))

(assert (= (or b!2547504 b!2547498) bm!161746))

(assert (= (or b!2547502 b!2547501) bm!161747))

(assert (= (or b!2547497 bm!161746) bm!161745))

(declare-fun m!2892039 () Bool)

(assert (=> bm!161745 m!2892039))

(declare-fun m!2892041 () Bool)

(assert (=> b!2547503 m!2892041))

(declare-fun m!2892043 () Bool)

(assert (=> bm!161747 m!2892043))

(assert (=> d!722420 d!722772))

(declare-fun d!722774 () Bool)

(assert (=> d!722774 (= (isEmpty!16998 (_1!17322 lt!902762)) ((_ is Nil!29554) (_1!17322 lt!902762)))))

(assert (=> d!722480 d!722774))

(declare-fun b!2547505 () Bool)

(declare-fun res!1073340 () Bool)

(declare-fun e!1610205 () Bool)

(assert (=> b!2547505 (=> res!1073340 e!1610205)))

(assert (=> b!2547505 (= res!1073340 (not ((_ is Concat!12285) lt!902763)))))

(declare-fun e!1610209 () Bool)

(assert (=> b!2547505 (= e!1610209 e!1610205)))

(declare-fun c!408189 () Bool)

(declare-fun call!161753 () Bool)

(declare-fun c!408190 () Bool)

(declare-fun bm!161748 () Bool)

(assert (=> bm!161748 (= call!161753 (validRegex!3215 (ite c!408190 (reg!7918 lt!902763) (ite c!408189 (regOne!15691 lt!902763) (regTwo!15690 lt!902763)))))))

(declare-fun b!2547506 () Bool)

(declare-fun e!1610210 () Bool)

(assert (=> b!2547506 (= e!1610210 call!161753)))

(declare-fun bm!161749 () Bool)

(declare-fun call!161754 () Bool)

(assert (=> bm!161749 (= call!161754 call!161753)))

(declare-fun b!2547507 () Bool)

(declare-fun e!1610211 () Bool)

(assert (=> b!2547507 (= e!1610211 call!161754)))

(declare-fun b!2547508 () Bool)

(declare-fun e!1610208 () Bool)

(assert (=> b!2547508 (= e!1610208 e!1610209)))

(assert (=> b!2547508 (= c!408189 ((_ is Union!7589) lt!902763))))

(declare-fun b!2547509 () Bool)

(declare-fun e!1610207 () Bool)

(assert (=> b!2547509 (= e!1610207 e!1610208)))

(assert (=> b!2547509 (= c!408190 ((_ is Star!7589) lt!902763))))

(declare-fun d!722776 () Bool)

(declare-fun res!1073344 () Bool)

(assert (=> d!722776 (=> res!1073344 e!1610207)))

(assert (=> d!722776 (= res!1073344 ((_ is ElementMatch!7589) lt!902763))))

(assert (=> d!722776 (= (validRegex!3215 lt!902763) e!1610207)))

(declare-fun b!2547510 () Bool)

(assert (=> b!2547510 (= e!1610205 e!1610211)))

(declare-fun res!1073342 () Bool)

(assert (=> b!2547510 (=> (not res!1073342) (not e!1610211))))

(declare-fun call!161755 () Bool)

(assert (=> b!2547510 (= res!1073342 call!161755)))

(declare-fun b!2547511 () Bool)

(declare-fun e!1610206 () Bool)

(assert (=> b!2547511 (= e!1610206 call!161755)))

(declare-fun b!2547512 () Bool)

(assert (=> b!2547512 (= e!1610208 e!1610210)))

(declare-fun res!1073343 () Bool)

(assert (=> b!2547512 (= res!1073343 (not (nullable!2506 (reg!7918 lt!902763))))))

(assert (=> b!2547512 (=> (not res!1073343) (not e!1610210))))

(declare-fun b!2547513 () Bool)

(declare-fun res!1073341 () Bool)

(assert (=> b!2547513 (=> (not res!1073341) (not e!1610206))))

(assert (=> b!2547513 (= res!1073341 call!161754)))

(assert (=> b!2547513 (= e!1610209 e!1610206)))

(declare-fun bm!161750 () Bool)

(assert (=> bm!161750 (= call!161755 (validRegex!3215 (ite c!408189 (regTwo!15691 lt!902763) (regOne!15690 lt!902763))))))

(assert (= (and d!722776 (not res!1073344)) b!2547509))

(assert (= (and b!2547509 c!408190) b!2547512))

(assert (= (and b!2547509 (not c!408190)) b!2547508))

(assert (= (and b!2547512 res!1073343) b!2547506))

(assert (= (and b!2547508 c!408189) b!2547513))

(assert (= (and b!2547508 (not c!408189)) b!2547505))

(assert (= (and b!2547513 res!1073341) b!2547511))

(assert (= (and b!2547505 (not res!1073340)) b!2547510))

(assert (= (and b!2547510 res!1073342) b!2547507))

(assert (= (or b!2547513 b!2547507) bm!161749))

(assert (= (or b!2547511 b!2547510) bm!161750))

(assert (= (or b!2547506 bm!161749) bm!161748))

(declare-fun m!2892045 () Bool)

(assert (=> bm!161748 m!2892045))

(declare-fun m!2892047 () Bool)

(assert (=> b!2547512 m!2892047))

(declare-fun m!2892049 () Bool)

(assert (=> bm!161750 m!2892049))

(assert (=> d!722480 d!722776))

(declare-fun d!722778 () Bool)

(assert (=> d!722778 (= (head!5798 (Cons!29554 c!14016 (_1!17322 lt!902762))) (h!34974 (Cons!29554 c!14016 (_1!17322 lt!902762))))))

(assert (=> b!2546676 d!722778))

(declare-fun b!2547514 () Bool)

(declare-fun e!1610213 () Bool)

(declare-fun e!1610214 () Bool)

(assert (=> b!2547514 (= e!1610213 e!1610214)))

(declare-fun res!1073352 () Bool)

(assert (=> b!2547514 (=> res!1073352 e!1610214)))

(declare-fun call!161756 () Bool)

(assert (=> b!2547514 (= res!1073352 call!161756)))

(declare-fun b!2547515 () Bool)

(declare-fun res!1073348 () Bool)

(declare-fun e!1610212 () Bool)

(assert (=> b!2547515 (=> (not res!1073348) (not e!1610212))))

(assert (=> b!2547515 (= res!1073348 (isEmpty!16998 (tail!4073 (tail!4073 (_1!17322 lt!902762)))))))

(declare-fun b!2547516 () Bool)

(declare-fun e!1610215 () Bool)

(assert (=> b!2547516 (= e!1610215 (matchR!3536 (derivativeStep!2158 (derivativeStep!2158 lt!902763 (head!5798 (_1!17322 lt!902762))) (head!5798 (tail!4073 (_1!17322 lt!902762)))) (tail!4073 (tail!4073 (_1!17322 lt!902762)))))))

(declare-fun bm!161751 () Bool)

(assert (=> bm!161751 (= call!161756 (isEmpty!16998 (tail!4073 (_1!17322 lt!902762))))))

(declare-fun b!2547517 () Bool)

(declare-fun res!1073347 () Bool)

(assert (=> b!2547517 (=> (not res!1073347) (not e!1610212))))

(assert (=> b!2547517 (= res!1073347 (not call!161756))))

(declare-fun b!2547518 () Bool)

(assert (=> b!2547518 (= e!1610212 (= (head!5798 (tail!4073 (_1!17322 lt!902762))) (c!407871 (derivativeStep!2158 lt!902763 (head!5798 (_1!17322 lt!902762))))))))

(declare-fun d!722780 () Bool)

(declare-fun e!1610216 () Bool)

(assert (=> d!722780 e!1610216))

(declare-fun c!408191 () Bool)

(assert (=> d!722780 (= c!408191 ((_ is EmptyExpr!7589) (derivativeStep!2158 lt!902763 (head!5798 (_1!17322 lt!902762)))))))

(declare-fun lt!902898 () Bool)

(assert (=> d!722780 (= lt!902898 e!1610215)))

(declare-fun c!408193 () Bool)

(assert (=> d!722780 (= c!408193 (isEmpty!16998 (tail!4073 (_1!17322 lt!902762))))))

(assert (=> d!722780 (validRegex!3215 (derivativeStep!2158 lt!902763 (head!5798 (_1!17322 lt!902762))))))

(assert (=> d!722780 (= (matchR!3536 (derivativeStep!2158 lt!902763 (head!5798 (_1!17322 lt!902762))) (tail!4073 (_1!17322 lt!902762))) lt!902898)))

(declare-fun b!2547519 () Bool)

(declare-fun res!1073346 () Bool)

(assert (=> b!2547519 (=> res!1073346 e!1610214)))

(assert (=> b!2547519 (= res!1073346 (not (isEmpty!16998 (tail!4073 (tail!4073 (_1!17322 lt!902762))))))))

(declare-fun b!2547520 () Bool)

(declare-fun e!1610218 () Bool)

(assert (=> b!2547520 (= e!1610216 e!1610218)))

(declare-fun c!408192 () Bool)

(assert (=> b!2547520 (= c!408192 ((_ is EmptyLang!7589) (derivativeStep!2158 lt!902763 (head!5798 (_1!17322 lt!902762)))))))

(declare-fun b!2547521 () Bool)

(declare-fun res!1073351 () Bool)

(declare-fun e!1610217 () Bool)

(assert (=> b!2547521 (=> res!1073351 e!1610217)))

(assert (=> b!2547521 (= res!1073351 (not ((_ is ElementMatch!7589) (derivativeStep!2158 lt!902763 (head!5798 (_1!17322 lt!902762))))))))

(assert (=> b!2547521 (= e!1610218 e!1610217)))

(declare-fun b!2547522 () Bool)

(assert (=> b!2547522 (= e!1610218 (not lt!902898))))

(declare-fun b!2547523 () Bool)

(assert (=> b!2547523 (= e!1610214 (not (= (head!5798 (tail!4073 (_1!17322 lt!902762))) (c!407871 (derivativeStep!2158 lt!902763 (head!5798 (_1!17322 lt!902762)))))))))

(declare-fun b!2547524 () Bool)

(assert (=> b!2547524 (= e!1610217 e!1610213)))

(declare-fun res!1073350 () Bool)

(assert (=> b!2547524 (=> (not res!1073350) (not e!1610213))))

(assert (=> b!2547524 (= res!1073350 (not lt!902898))))

(declare-fun b!2547525 () Bool)

(declare-fun res!1073349 () Bool)

(assert (=> b!2547525 (=> res!1073349 e!1610217)))

(assert (=> b!2547525 (= res!1073349 e!1610212)))

(declare-fun res!1073345 () Bool)

(assert (=> b!2547525 (=> (not res!1073345) (not e!1610212))))

(assert (=> b!2547525 (= res!1073345 lt!902898)))

(declare-fun b!2547526 () Bool)

(assert (=> b!2547526 (= e!1610215 (nullable!2506 (derivativeStep!2158 lt!902763 (head!5798 (_1!17322 lt!902762)))))))

(declare-fun b!2547527 () Bool)

(assert (=> b!2547527 (= e!1610216 (= lt!902898 call!161756))))

(assert (= (and d!722780 c!408193) b!2547526))

(assert (= (and d!722780 (not c!408193)) b!2547516))

(assert (= (and d!722780 c!408191) b!2547527))

(assert (= (and d!722780 (not c!408191)) b!2547520))

(assert (= (and b!2547520 c!408192) b!2547522))

(assert (= (and b!2547520 (not c!408192)) b!2547521))

(assert (= (and b!2547521 (not res!1073351)) b!2547525))

(assert (= (and b!2547525 res!1073345) b!2547517))

(assert (= (and b!2547517 res!1073347) b!2547515))

(assert (= (and b!2547515 res!1073348) b!2547518))

(assert (= (and b!2547525 (not res!1073349)) b!2547524))

(assert (= (and b!2547524 res!1073350) b!2547514))

(assert (= (and b!2547514 (not res!1073352)) b!2547519))

(assert (= (and b!2547519 (not res!1073346)) b!2547523))

(assert (= (or b!2547527 b!2547514 b!2547517) bm!161751))

(assert (=> d!722780 m!2891353))

(assert (=> d!722780 m!2891357))

(assert (=> d!722780 m!2891351))

(declare-fun m!2892051 () Bool)

(assert (=> d!722780 m!2892051))

(assert (=> b!2547523 m!2891353))

(declare-fun m!2892053 () Bool)

(assert (=> b!2547523 m!2892053))

(assert (=> b!2547516 m!2891353))

(assert (=> b!2547516 m!2892053))

(assert (=> b!2547516 m!2891351))

(assert (=> b!2547516 m!2892053))

(declare-fun m!2892055 () Bool)

(assert (=> b!2547516 m!2892055))

(assert (=> b!2547516 m!2891353))

(declare-fun m!2892057 () Bool)

(assert (=> b!2547516 m!2892057))

(assert (=> b!2547516 m!2892055))

(assert (=> b!2547516 m!2892057))

(declare-fun m!2892059 () Bool)

(assert (=> b!2547516 m!2892059))

(assert (=> b!2547519 m!2891353))

(assert (=> b!2547519 m!2892057))

(assert (=> b!2547519 m!2892057))

(declare-fun m!2892061 () Bool)

(assert (=> b!2547519 m!2892061))

(assert (=> b!2547515 m!2891353))

(assert (=> b!2547515 m!2892057))

(assert (=> b!2547515 m!2892057))

(assert (=> b!2547515 m!2892061))

(assert (=> bm!161751 m!2891353))

(assert (=> bm!161751 m!2891357))

(assert (=> b!2547526 m!2891351))

(declare-fun m!2892063 () Bool)

(assert (=> b!2547526 m!2892063))

(assert (=> b!2547518 m!2891353))

(assert (=> b!2547518 m!2892053))

(assert (=> b!2546660 d!722780))

(declare-fun b!2547528 () Bool)

(declare-fun e!1610219 () Regex!7589)

(declare-fun call!161759 () Regex!7589)

(assert (=> b!2547528 (= e!1610219 (Union!7589 (Concat!12285 call!161759 (regTwo!15690 lt!902763)) EmptyLang!7589))))

(declare-fun bm!161753 () Bool)

(declare-fun call!161760 () Regex!7589)

(assert (=> bm!161753 (= call!161759 call!161760)))

(declare-fun b!2547529 () Bool)

(declare-fun call!161757 () Regex!7589)

(assert (=> b!2547529 (= e!1610219 (Union!7589 (Concat!12285 call!161759 (regTwo!15690 lt!902763)) call!161757))))

(declare-fun bm!161754 () Bool)

(declare-fun call!161758 () Regex!7589)

(assert (=> bm!161754 (= call!161760 call!161758)))

(declare-fun b!2547530 () Bool)

(declare-fun e!1610220 () Regex!7589)

(assert (=> b!2547530 (= e!1610220 EmptyLang!7589)))

(declare-fun b!2547531 () Bool)

(declare-fun e!1610221 () Regex!7589)

(assert (=> b!2547531 (= e!1610221 (Concat!12285 call!161760 lt!902763))))

(declare-fun b!2547532 () Bool)

(declare-fun c!408195 () Bool)

(assert (=> b!2547532 (= c!408195 (nullable!2506 (regOne!15690 lt!902763)))))

(assert (=> b!2547532 (= e!1610221 e!1610219)))

(declare-fun b!2547533 () Bool)

(declare-fun e!1610222 () Regex!7589)

(assert (=> b!2547533 (= e!1610222 (ite (= (head!5798 (_1!17322 lt!902762)) (c!407871 lt!902763)) EmptyExpr!7589 EmptyLang!7589))))

(declare-fun b!2547534 () Bool)

(declare-fun c!408197 () Bool)

(assert (=> b!2547534 (= c!408197 ((_ is Union!7589) lt!902763))))

(declare-fun e!1610223 () Regex!7589)

(assert (=> b!2547534 (= e!1610222 e!1610223)))

(declare-fun b!2547535 () Bool)

(assert (=> b!2547535 (= e!1610223 e!1610221)))

(declare-fun c!408196 () Bool)

(assert (=> b!2547535 (= c!408196 ((_ is Star!7589) lt!902763))))

(declare-fun bm!161755 () Bool)

(assert (=> bm!161755 (= call!161757 (derivativeStep!2158 (ite c!408197 (regOne!15691 lt!902763) (regTwo!15690 lt!902763)) (head!5798 (_1!17322 lt!902762))))))

(declare-fun b!2547536 () Bool)

(assert (=> b!2547536 (= e!1610220 e!1610222)))

(declare-fun c!408194 () Bool)

(assert (=> b!2547536 (= c!408194 ((_ is ElementMatch!7589) lt!902763))))

(declare-fun b!2547537 () Bool)

(assert (=> b!2547537 (= e!1610223 (Union!7589 call!161757 call!161758))))

(declare-fun d!722782 () Bool)

(declare-fun lt!902899 () Regex!7589)

(assert (=> d!722782 (validRegex!3215 lt!902899)))

(assert (=> d!722782 (= lt!902899 e!1610220)))

(declare-fun c!408198 () Bool)

(assert (=> d!722782 (= c!408198 (or ((_ is EmptyExpr!7589) lt!902763) ((_ is EmptyLang!7589) lt!902763)))))

(assert (=> d!722782 (validRegex!3215 lt!902763)))

(assert (=> d!722782 (= (derivativeStep!2158 lt!902763 (head!5798 (_1!17322 lt!902762))) lt!902899)))

(declare-fun bm!161752 () Bool)

(assert (=> bm!161752 (= call!161758 (derivativeStep!2158 (ite c!408197 (regTwo!15691 lt!902763) (ite c!408196 (reg!7918 lt!902763) (regOne!15690 lt!902763))) (head!5798 (_1!17322 lt!902762))))))

(assert (= (and d!722782 c!408198) b!2547530))

(assert (= (and d!722782 (not c!408198)) b!2547536))

(assert (= (and b!2547536 c!408194) b!2547533))

(assert (= (and b!2547536 (not c!408194)) b!2547534))

(assert (= (and b!2547534 c!408197) b!2547537))

(assert (= (and b!2547534 (not c!408197)) b!2547535))

(assert (= (and b!2547535 c!408196) b!2547531))

(assert (= (and b!2547535 (not c!408196)) b!2547532))

(assert (= (and b!2547532 c!408195) b!2547529))

(assert (= (and b!2547532 (not c!408195)) b!2547528))

(assert (= (or b!2547529 b!2547528) bm!161753))

(assert (= (or b!2547531 bm!161753) bm!161754))

(assert (= (or b!2547537 bm!161754) bm!161752))

(assert (= (or b!2547537 b!2547529) bm!161755))

(assert (=> b!2547532 m!2892031))

(assert (=> bm!161755 m!2891349))

(declare-fun m!2892065 () Bool)

(assert (=> bm!161755 m!2892065))

(declare-fun m!2892067 () Bool)

(assert (=> d!722782 m!2892067))

(assert (=> d!722782 m!2891217))

(assert (=> bm!161752 m!2891349))

(declare-fun m!2892069 () Bool)

(assert (=> bm!161752 m!2892069))

(assert (=> b!2546660 d!722782))

(assert (=> b!2546660 d!722718))

(assert (=> b!2546660 d!722698))

(declare-fun bm!161760 () Bool)

(declare-fun call!161765 () Bool)

(declare-fun c!408201 () Bool)

(assert (=> bm!161760 (= call!161765 (nullable!2506 (ite c!408201 (regOne!15691 lt!902758) (regTwo!15690 lt!902758))))))

(declare-fun bm!161761 () Bool)

(declare-fun call!161766 () Bool)

(assert (=> bm!161761 (= call!161766 (nullable!2506 (ite c!408201 (regTwo!15691 lt!902758) (regOne!15690 lt!902758))))))

(declare-fun b!2547553 () Bool)

(declare-fun e!1610240 () Bool)

(declare-fun e!1610237 () Bool)

(assert (=> b!2547553 (= e!1610240 e!1610237)))

(declare-fun res!1073367 () Bool)

(assert (=> b!2547553 (=> (not res!1073367) (not e!1610237))))

(assert (=> b!2547553 (= res!1073367 (and (not ((_ is EmptyLang!7589) lt!902758)) (not ((_ is ElementMatch!7589) lt!902758))))))

(declare-fun b!2547554 () Bool)

(declare-fun e!1610239 () Bool)

(assert (=> b!2547554 (= e!1610239 call!161766)))

(declare-fun b!2547555 () Bool)

(declare-fun e!1610241 () Bool)

(assert (=> b!2547555 (= e!1610237 e!1610241)))

(declare-fun res!1073366 () Bool)

(assert (=> b!2547555 (=> res!1073366 e!1610241)))

(assert (=> b!2547555 (= res!1073366 ((_ is Star!7589) lt!902758))))

(declare-fun b!2547556 () Bool)

(declare-fun e!1610236 () Bool)

(assert (=> b!2547556 (= e!1610236 call!161765)))

(declare-fun b!2547557 () Bool)

(declare-fun e!1610238 () Bool)

(assert (=> b!2547557 (= e!1610241 e!1610238)))

(assert (=> b!2547557 (= c!408201 ((_ is Union!7589) lt!902758))))

(declare-fun b!2547558 () Bool)

(assert (=> b!2547558 (= e!1610238 e!1610239)))

(declare-fun res!1073364 () Bool)

(assert (=> b!2547558 (= res!1073364 call!161765)))

(assert (=> b!2547558 (=> res!1073364 e!1610239)))

(declare-fun d!722784 () Bool)

(declare-fun res!1073365 () Bool)

(assert (=> d!722784 (=> res!1073365 e!1610240)))

(assert (=> d!722784 (= res!1073365 ((_ is EmptyExpr!7589) lt!902758))))

(assert (=> d!722784 (= (nullableFct!731 lt!902758) e!1610240)))

(declare-fun b!2547552 () Bool)

(assert (=> b!2547552 (= e!1610238 e!1610236)))

(declare-fun res!1073363 () Bool)

(assert (=> b!2547552 (= res!1073363 call!161766)))

(assert (=> b!2547552 (=> (not res!1073363) (not e!1610236))))

(assert (= (and d!722784 (not res!1073365)) b!2547553))

(assert (= (and b!2547553 res!1073367) b!2547555))

(assert (= (and b!2547555 (not res!1073366)) b!2547557))

(assert (= (and b!2547557 c!408201) b!2547558))

(assert (= (and b!2547557 (not c!408201)) b!2547552))

(assert (= (and b!2547558 (not res!1073364)) b!2547554))

(assert (= (and b!2547552 res!1073363) b!2547556))

(assert (= (or b!2547554 b!2547552) bm!161761))

(assert (= (or b!2547558 b!2547556) bm!161760))

(declare-fun m!2892071 () Bool)

(assert (=> bm!161760 m!2892071))

(declare-fun m!2892073 () Bool)

(assert (=> bm!161761 m!2892073))

(assert (=> d!722486 d!722784))

(declare-fun d!722786 () Bool)

(assert (=> d!722786 (= (isDefined!4722 (findConcatSeparation!922 lt!902763 lt!902761 Nil!29554 tl!4068 tl!4068)) (not (isEmpty!17000 (findConcatSeparation!922 lt!902763 lt!902761 Nil!29554 tl!4068 tl!4068))))))

(declare-fun bs!469544 () Bool)

(assert (= bs!469544 d!722786))

(assert (=> bs!469544 m!2891047))

(declare-fun m!2892075 () Bool)

(assert (=> bs!469544 m!2892075))

(assert (=> d!722474 d!722786))

(assert (=> d!722474 d!722452))

(declare-fun d!722788 () Bool)

(assert (=> d!722788 (isDefined!4722 (findConcatSeparation!922 lt!902763 lt!902761 Nil!29554 tl!4068 tl!4068))))

(assert (=> d!722788 true))

(declare-fun _$122!325 () Unit!43367)

(assert (=> d!722788 (= (choose!15043 lt!902763 lt!902761 tl!4068) _$122!325)))

(declare-fun bs!469545 () Bool)

(assert (= bs!469545 d!722788))

(assert (=> bs!469545 m!2891047))

(assert (=> bs!469545 m!2891047))

(assert (=> bs!469545 m!2891327))

(assert (=> d!722474 d!722788))

(assert (=> d!722474 d!722776))

(declare-fun c!408202 () Bool)

(declare-fun call!161767 () Bool)

(declare-fun bm!161762 () Bool)

(assert (=> bm!161762 (= call!161767 (nullable!2506 (ite c!408202 (regOne!15691 (derivative!284 lt!902763 tl!4068)) (regTwo!15690 (derivative!284 lt!902763 tl!4068)))))))

(declare-fun bm!161763 () Bool)

(declare-fun call!161768 () Bool)

(assert (=> bm!161763 (= call!161768 (nullable!2506 (ite c!408202 (regTwo!15691 (derivative!284 lt!902763 tl!4068)) (regOne!15690 (derivative!284 lt!902763 tl!4068)))))))

(declare-fun b!2547560 () Bool)

(declare-fun e!1610246 () Bool)

(declare-fun e!1610243 () Bool)

(assert (=> b!2547560 (= e!1610246 e!1610243)))

(declare-fun res!1073372 () Bool)

(assert (=> b!2547560 (=> (not res!1073372) (not e!1610243))))

(assert (=> b!2547560 (= res!1073372 (and (not ((_ is EmptyLang!7589) (derivative!284 lt!902763 tl!4068))) (not ((_ is ElementMatch!7589) (derivative!284 lt!902763 tl!4068)))))))

(declare-fun b!2547561 () Bool)

(declare-fun e!1610245 () Bool)

(assert (=> b!2547561 (= e!1610245 call!161768)))

(declare-fun b!2547562 () Bool)

(declare-fun e!1610247 () Bool)

(assert (=> b!2547562 (= e!1610243 e!1610247)))

(declare-fun res!1073371 () Bool)

(assert (=> b!2547562 (=> res!1073371 e!1610247)))

(assert (=> b!2547562 (= res!1073371 ((_ is Star!7589) (derivative!284 lt!902763 tl!4068)))))

(declare-fun b!2547563 () Bool)

(declare-fun e!1610242 () Bool)

(assert (=> b!2547563 (= e!1610242 call!161767)))

(declare-fun b!2547564 () Bool)

(declare-fun e!1610244 () Bool)

(assert (=> b!2547564 (= e!1610247 e!1610244)))

(assert (=> b!2547564 (= c!408202 ((_ is Union!7589) (derivative!284 lt!902763 tl!4068)))))

(declare-fun b!2547565 () Bool)

(assert (=> b!2547565 (= e!1610244 e!1610245)))

(declare-fun res!1073369 () Bool)

(assert (=> b!2547565 (= res!1073369 call!161767)))

(assert (=> b!2547565 (=> res!1073369 e!1610245)))

(declare-fun d!722790 () Bool)

(declare-fun res!1073370 () Bool)

(assert (=> d!722790 (=> res!1073370 e!1610246)))

(assert (=> d!722790 (= res!1073370 ((_ is EmptyExpr!7589) (derivative!284 lt!902763 tl!4068)))))

(assert (=> d!722790 (= (nullableFct!731 (derivative!284 lt!902763 tl!4068)) e!1610246)))

(declare-fun b!2547559 () Bool)

(assert (=> b!2547559 (= e!1610244 e!1610242)))

(declare-fun res!1073368 () Bool)

(assert (=> b!2547559 (= res!1073368 call!161768)))

(assert (=> b!2547559 (=> (not res!1073368) (not e!1610242))))

(assert (= (and d!722790 (not res!1073370)) b!2547560))

(assert (= (and b!2547560 res!1073372) b!2547562))

(assert (= (and b!2547562 (not res!1073371)) b!2547564))

(assert (= (and b!2547564 c!408202) b!2547565))

(assert (= (and b!2547564 (not c!408202)) b!2547559))

(assert (= (and b!2547565 (not res!1073369)) b!2547561))

(assert (= (and b!2547559 res!1073368) b!2547563))

(assert (= (or b!2547561 b!2547559) bm!161763))

(assert (= (or b!2547565 b!2547563) bm!161762))

(declare-fun m!2892077 () Bool)

(assert (=> bm!161762 m!2892077))

(declare-fun m!2892079 () Bool)

(assert (=> bm!161763 m!2892079))

(assert (=> d!722500 d!722790))

(declare-fun d!722792 () Bool)

(assert (=> d!722792 (= (isEmpty!16998 (tail!4073 (_2!17322 lt!902762))) ((_ is Nil!29554) (tail!4073 (_2!17322 lt!902762))))))

(assert (=> b!2546703 d!722792))

(assert (=> b!2546703 d!722764))

(declare-fun b!2547566 () Bool)

(declare-fun res!1073373 () Bool)

(declare-fun e!1610248 () Bool)

(assert (=> b!2547566 (=> res!1073373 e!1610248)))

(assert (=> b!2547566 (= res!1073373 (not ((_ is Concat!12285) (ite c!407907 (reg!7918 (reg!7918 r!27340)) (ite c!407906 (regOne!15691 (reg!7918 r!27340)) (regTwo!15690 (reg!7918 r!27340)))))))))

(declare-fun e!1610252 () Bool)

(assert (=> b!2547566 (= e!1610252 e!1610248)))

(declare-fun c!408204 () Bool)

(declare-fun bm!161764 () Bool)

(declare-fun call!161769 () Bool)

(declare-fun c!408203 () Bool)

(assert (=> bm!161764 (= call!161769 (validRegex!3215 (ite c!408204 (reg!7918 (ite c!407907 (reg!7918 (reg!7918 r!27340)) (ite c!407906 (regOne!15691 (reg!7918 r!27340)) (regTwo!15690 (reg!7918 r!27340))))) (ite c!408203 (regOne!15691 (ite c!407907 (reg!7918 (reg!7918 r!27340)) (ite c!407906 (regOne!15691 (reg!7918 r!27340)) (regTwo!15690 (reg!7918 r!27340))))) (regTwo!15690 (ite c!407907 (reg!7918 (reg!7918 r!27340)) (ite c!407906 (regOne!15691 (reg!7918 r!27340)) (regTwo!15690 (reg!7918 r!27340)))))))))))

(declare-fun b!2547567 () Bool)

(declare-fun e!1610253 () Bool)

(assert (=> b!2547567 (= e!1610253 call!161769)))

(declare-fun bm!161765 () Bool)

(declare-fun call!161770 () Bool)

(assert (=> bm!161765 (= call!161770 call!161769)))

(declare-fun b!2547568 () Bool)

(declare-fun e!1610254 () Bool)

(assert (=> b!2547568 (= e!1610254 call!161770)))

(declare-fun b!2547569 () Bool)

(declare-fun e!1610251 () Bool)

(assert (=> b!2547569 (= e!1610251 e!1610252)))

(assert (=> b!2547569 (= c!408203 ((_ is Union!7589) (ite c!407907 (reg!7918 (reg!7918 r!27340)) (ite c!407906 (regOne!15691 (reg!7918 r!27340)) (regTwo!15690 (reg!7918 r!27340))))))))

(declare-fun b!2547570 () Bool)

(declare-fun e!1610250 () Bool)

(assert (=> b!2547570 (= e!1610250 e!1610251)))

(assert (=> b!2547570 (= c!408204 ((_ is Star!7589) (ite c!407907 (reg!7918 (reg!7918 r!27340)) (ite c!407906 (regOne!15691 (reg!7918 r!27340)) (regTwo!15690 (reg!7918 r!27340))))))))

(declare-fun d!722794 () Bool)

(declare-fun res!1073377 () Bool)

(assert (=> d!722794 (=> res!1073377 e!1610250)))

(assert (=> d!722794 (= res!1073377 ((_ is ElementMatch!7589) (ite c!407907 (reg!7918 (reg!7918 r!27340)) (ite c!407906 (regOne!15691 (reg!7918 r!27340)) (regTwo!15690 (reg!7918 r!27340))))))))

(assert (=> d!722794 (= (validRegex!3215 (ite c!407907 (reg!7918 (reg!7918 r!27340)) (ite c!407906 (regOne!15691 (reg!7918 r!27340)) (regTwo!15690 (reg!7918 r!27340))))) e!1610250)))

(declare-fun b!2547571 () Bool)

(assert (=> b!2547571 (= e!1610248 e!1610254)))

(declare-fun res!1073375 () Bool)

(assert (=> b!2547571 (=> (not res!1073375) (not e!1610254))))

(declare-fun call!161771 () Bool)

(assert (=> b!2547571 (= res!1073375 call!161771)))

(declare-fun b!2547572 () Bool)

(declare-fun e!1610249 () Bool)

(assert (=> b!2547572 (= e!1610249 call!161771)))

(declare-fun b!2547573 () Bool)

(assert (=> b!2547573 (= e!1610251 e!1610253)))

(declare-fun res!1073376 () Bool)

(assert (=> b!2547573 (= res!1073376 (not (nullable!2506 (reg!7918 (ite c!407907 (reg!7918 (reg!7918 r!27340)) (ite c!407906 (regOne!15691 (reg!7918 r!27340)) (regTwo!15690 (reg!7918 r!27340))))))))))

(assert (=> b!2547573 (=> (not res!1073376) (not e!1610253))))

(declare-fun b!2547574 () Bool)

(declare-fun res!1073374 () Bool)

(assert (=> b!2547574 (=> (not res!1073374) (not e!1610249))))

(assert (=> b!2547574 (= res!1073374 call!161770)))

(assert (=> b!2547574 (= e!1610252 e!1610249)))

(declare-fun bm!161766 () Bool)

(assert (=> bm!161766 (= call!161771 (validRegex!3215 (ite c!408203 (regTwo!15691 (ite c!407907 (reg!7918 (reg!7918 r!27340)) (ite c!407906 (regOne!15691 (reg!7918 r!27340)) (regTwo!15690 (reg!7918 r!27340))))) (regOne!15690 (ite c!407907 (reg!7918 (reg!7918 r!27340)) (ite c!407906 (regOne!15691 (reg!7918 r!27340)) (regTwo!15690 (reg!7918 r!27340))))))))))

(assert (= (and d!722794 (not res!1073377)) b!2547570))

(assert (= (and b!2547570 c!408204) b!2547573))

(assert (= (and b!2547570 (not c!408204)) b!2547569))

(assert (= (and b!2547573 res!1073376) b!2547567))

(assert (= (and b!2547569 c!408203) b!2547574))

(assert (= (and b!2547569 (not c!408203)) b!2547566))

(assert (= (and b!2547574 res!1073374) b!2547572))

(assert (= (and b!2547566 (not res!1073373)) b!2547571))

(assert (= (and b!2547571 res!1073375) b!2547568))

(assert (= (or b!2547574 b!2547568) bm!161765))

(assert (= (or b!2547572 b!2547571) bm!161766))

(assert (= (or b!2547567 bm!161765) bm!161764))

(declare-fun m!2892081 () Bool)

(assert (=> bm!161764 m!2892081))

(declare-fun m!2892083 () Bool)

(assert (=> b!2547573 m!2892083))

(declare-fun m!2892085 () Bool)

(assert (=> bm!161766 m!2892085))

(assert (=> bm!161571 d!722794))

(declare-fun b!2547575 () Bool)

(declare-fun res!1073378 () Bool)

(declare-fun e!1610255 () Bool)

(assert (=> b!2547575 (=> res!1073378 e!1610255)))

(assert (=> b!2547575 (= res!1073378 (not ((_ is Concat!12285) (ite c!407950 (regTwo!15691 r!27340) (regOne!15690 r!27340)))))))

(declare-fun e!1610259 () Bool)

(assert (=> b!2547575 (= e!1610259 e!1610255)))

(declare-fun c!408206 () Bool)

(declare-fun call!161772 () Bool)

(declare-fun c!408205 () Bool)

(declare-fun bm!161767 () Bool)

(assert (=> bm!161767 (= call!161772 (validRegex!3215 (ite c!408206 (reg!7918 (ite c!407950 (regTwo!15691 r!27340) (regOne!15690 r!27340))) (ite c!408205 (regOne!15691 (ite c!407950 (regTwo!15691 r!27340) (regOne!15690 r!27340))) (regTwo!15690 (ite c!407950 (regTwo!15691 r!27340) (regOne!15690 r!27340)))))))))

(declare-fun b!2547576 () Bool)

(declare-fun e!1610260 () Bool)

(assert (=> b!2547576 (= e!1610260 call!161772)))

(declare-fun bm!161768 () Bool)

(declare-fun call!161773 () Bool)

(assert (=> bm!161768 (= call!161773 call!161772)))

(declare-fun b!2547577 () Bool)

(declare-fun e!1610261 () Bool)

(assert (=> b!2547577 (= e!1610261 call!161773)))

(declare-fun b!2547578 () Bool)

(declare-fun e!1610258 () Bool)

(assert (=> b!2547578 (= e!1610258 e!1610259)))

(assert (=> b!2547578 (= c!408205 ((_ is Union!7589) (ite c!407950 (regTwo!15691 r!27340) (regOne!15690 r!27340))))))

(declare-fun b!2547579 () Bool)

(declare-fun e!1610257 () Bool)

(assert (=> b!2547579 (= e!1610257 e!1610258)))

(assert (=> b!2547579 (= c!408206 ((_ is Star!7589) (ite c!407950 (regTwo!15691 r!27340) (regOne!15690 r!27340))))))

(declare-fun d!722796 () Bool)

(declare-fun res!1073382 () Bool)

(assert (=> d!722796 (=> res!1073382 e!1610257)))

(assert (=> d!722796 (= res!1073382 ((_ is ElementMatch!7589) (ite c!407950 (regTwo!15691 r!27340) (regOne!15690 r!27340))))))

(assert (=> d!722796 (= (validRegex!3215 (ite c!407950 (regTwo!15691 r!27340) (regOne!15690 r!27340))) e!1610257)))

(declare-fun b!2547580 () Bool)

(assert (=> b!2547580 (= e!1610255 e!1610261)))

(declare-fun res!1073380 () Bool)

(assert (=> b!2547580 (=> (not res!1073380) (not e!1610261))))

(declare-fun call!161774 () Bool)

(assert (=> b!2547580 (= res!1073380 call!161774)))

(declare-fun b!2547581 () Bool)

(declare-fun e!1610256 () Bool)

(assert (=> b!2547581 (= e!1610256 call!161774)))

(declare-fun b!2547582 () Bool)

(assert (=> b!2547582 (= e!1610258 e!1610260)))

(declare-fun res!1073381 () Bool)

(assert (=> b!2547582 (= res!1073381 (not (nullable!2506 (reg!7918 (ite c!407950 (regTwo!15691 r!27340) (regOne!15690 r!27340))))))))

(assert (=> b!2547582 (=> (not res!1073381) (not e!1610260))))

(declare-fun b!2547583 () Bool)

(declare-fun res!1073379 () Bool)

(assert (=> b!2547583 (=> (not res!1073379) (not e!1610256))))

(assert (=> b!2547583 (= res!1073379 call!161773)))

(assert (=> b!2547583 (= e!1610259 e!1610256)))

(declare-fun bm!161769 () Bool)

(assert (=> bm!161769 (= call!161774 (validRegex!3215 (ite c!408205 (regTwo!15691 (ite c!407950 (regTwo!15691 r!27340) (regOne!15690 r!27340))) (regOne!15690 (ite c!407950 (regTwo!15691 r!27340) (regOne!15690 r!27340))))))))

(assert (= (and d!722796 (not res!1073382)) b!2547579))

(assert (= (and b!2547579 c!408206) b!2547582))

(assert (= (and b!2547579 (not c!408206)) b!2547578))

(assert (= (and b!2547582 res!1073381) b!2547576))

(assert (= (and b!2547578 c!408205) b!2547583))

(assert (= (and b!2547578 (not c!408205)) b!2547575))

(assert (= (and b!2547583 res!1073379) b!2547581))

(assert (= (and b!2547575 (not res!1073378)) b!2547580))

(assert (= (and b!2547580 res!1073380) b!2547577))

(assert (= (or b!2547583 b!2547577) bm!161768))

(assert (= (or b!2547581 b!2547580) bm!161769))

(assert (= (or b!2547576 bm!161768) bm!161767))

(declare-fun m!2892087 () Bool)

(assert (=> bm!161767 m!2892087))

(declare-fun m!2892089 () Bool)

(assert (=> b!2547582 m!2892089))

(declare-fun m!2892091 () Bool)

(assert (=> bm!161769 m!2892091))

(assert (=> bm!161590 d!722796))

(declare-fun d!722798 () Bool)

(declare-fun c!408209 () Bool)

(assert (=> d!722798 (= c!408209 ((_ is Nil!29554) lt!902827))))

(declare-fun e!1610264 () (InoxSet C!15336))

(assert (=> d!722798 (= (content!4062 lt!902827) e!1610264)))

(declare-fun b!2547588 () Bool)

(assert (=> b!2547588 (= e!1610264 ((as const (Array C!15336 Bool)) false))))

(declare-fun b!2547589 () Bool)

(assert (=> b!2547589 (= e!1610264 ((_ map or) (store ((as const (Array C!15336 Bool)) false) (h!34974 lt!902827) true) (content!4062 (t!211353 lt!902827))))))

(assert (= (and d!722798 c!408209) b!2547588))

(assert (= (and d!722798 (not c!408209)) b!2547589))

(declare-fun m!2892093 () Bool)

(assert (=> b!2547589 m!2892093))

(declare-fun m!2892095 () Bool)

(assert (=> b!2547589 m!2892095))

(assert (=> d!722476 d!722798))

(declare-fun d!722800 () Bool)

(declare-fun c!408210 () Bool)

(assert (=> d!722800 (= c!408210 ((_ is Nil!29554) (_1!17322 lt!902762)))))

(declare-fun e!1610265 () (InoxSet C!15336))

(assert (=> d!722800 (= (content!4062 (_1!17322 lt!902762)) e!1610265)))

(declare-fun b!2547590 () Bool)

(assert (=> b!2547590 (= e!1610265 ((as const (Array C!15336 Bool)) false))))

(declare-fun b!2547591 () Bool)

(assert (=> b!2547591 (= e!1610265 ((_ map or) (store ((as const (Array C!15336 Bool)) false) (h!34974 (_1!17322 lt!902762)) true) (content!4062 (t!211353 (_1!17322 lt!902762)))))))

(assert (= (and d!722800 c!408210) b!2547590))

(assert (= (and d!722800 (not c!408210)) b!2547591))

(declare-fun m!2892097 () Bool)

(assert (=> b!2547591 m!2892097))

(declare-fun m!2892099 () Bool)

(assert (=> b!2547591 m!2892099))

(assert (=> d!722476 d!722800))

(declare-fun d!722802 () Bool)

(declare-fun c!408211 () Bool)

(assert (=> d!722802 (= c!408211 ((_ is Nil!29554) (_2!17322 lt!902762)))))

(declare-fun e!1610266 () (InoxSet C!15336))

(assert (=> d!722802 (= (content!4062 (_2!17322 lt!902762)) e!1610266)))

(declare-fun b!2547592 () Bool)

(assert (=> b!2547592 (= e!1610266 ((as const (Array C!15336 Bool)) false))))

(declare-fun b!2547593 () Bool)

(assert (=> b!2547593 (= e!1610266 ((_ map or) (store ((as const (Array C!15336 Bool)) false) (h!34974 (_2!17322 lt!902762)) true) (content!4062 (t!211353 (_2!17322 lt!902762)))))))

(assert (= (and d!722802 c!408211) b!2547592))

(assert (= (and d!722802 (not c!408211)) b!2547593))

(declare-fun m!2892101 () Bool)

(assert (=> b!2547593 m!2892101))

(declare-fun m!2892103 () Bool)

(assert (=> b!2547593 m!2892103))

(assert (=> d!722476 d!722802))

(declare-fun b!2547594 () Bool)

(declare-fun e!1610268 () Bool)

(declare-fun e!1610269 () Bool)

(assert (=> b!2547594 (= e!1610268 e!1610269)))

(declare-fun res!1073390 () Bool)

(assert (=> b!2547594 (=> res!1073390 e!1610269)))

(declare-fun call!161775 () Bool)

(assert (=> b!2547594 (= res!1073390 call!161775)))

(declare-fun b!2547595 () Bool)

(declare-fun res!1073386 () Bool)

(declare-fun e!1610267 () Bool)

(assert (=> b!2547595 (=> (not res!1073386) (not e!1610267))))

(assert (=> b!2547595 (= res!1073386 (isEmpty!16998 (tail!4073 tl!4068)))))

(declare-fun b!2547596 () Bool)

(declare-fun e!1610270 () Bool)

(assert (=> b!2547596 (= e!1610270 (matchR!3536 (derivativeStep!2158 lt!902761 (head!5798 tl!4068)) (tail!4073 tl!4068)))))

(declare-fun bm!161770 () Bool)

(assert (=> bm!161770 (= call!161775 (isEmpty!16998 tl!4068))))

(declare-fun b!2547597 () Bool)

(declare-fun res!1073385 () Bool)

(assert (=> b!2547597 (=> (not res!1073385) (not e!1610267))))

(assert (=> b!2547597 (= res!1073385 (not call!161775))))

(declare-fun b!2547598 () Bool)

(assert (=> b!2547598 (= e!1610267 (= (head!5798 tl!4068) (c!407871 lt!902761)))))

(declare-fun d!722804 () Bool)

(declare-fun e!1610271 () Bool)

(assert (=> d!722804 e!1610271))

(declare-fun c!408212 () Bool)

(assert (=> d!722804 (= c!408212 ((_ is EmptyExpr!7589) lt!902761))))

(declare-fun lt!902900 () Bool)

(assert (=> d!722804 (= lt!902900 e!1610270)))

(declare-fun c!408214 () Bool)

(assert (=> d!722804 (= c!408214 (isEmpty!16998 tl!4068))))

(assert (=> d!722804 (validRegex!3215 lt!902761)))

(assert (=> d!722804 (= (matchR!3536 lt!902761 tl!4068) lt!902900)))

(declare-fun b!2547599 () Bool)

(declare-fun res!1073384 () Bool)

(assert (=> b!2547599 (=> res!1073384 e!1610269)))

(assert (=> b!2547599 (= res!1073384 (not (isEmpty!16998 (tail!4073 tl!4068))))))

(declare-fun b!2547600 () Bool)

(declare-fun e!1610273 () Bool)

(assert (=> b!2547600 (= e!1610271 e!1610273)))

(declare-fun c!408213 () Bool)

(assert (=> b!2547600 (= c!408213 ((_ is EmptyLang!7589) lt!902761))))

(declare-fun b!2547601 () Bool)

(declare-fun res!1073389 () Bool)

(declare-fun e!1610272 () Bool)

(assert (=> b!2547601 (=> res!1073389 e!1610272)))

(assert (=> b!2547601 (= res!1073389 (not ((_ is ElementMatch!7589) lt!902761)))))

(assert (=> b!2547601 (= e!1610273 e!1610272)))

(declare-fun b!2547602 () Bool)

(assert (=> b!2547602 (= e!1610273 (not lt!902900))))

(declare-fun b!2547603 () Bool)

(assert (=> b!2547603 (= e!1610269 (not (= (head!5798 tl!4068) (c!407871 lt!902761))))))

(declare-fun b!2547604 () Bool)

(assert (=> b!2547604 (= e!1610272 e!1610268)))

(declare-fun res!1073388 () Bool)

(assert (=> b!2547604 (=> (not res!1073388) (not e!1610268))))

(assert (=> b!2547604 (= res!1073388 (not lt!902900))))

(declare-fun b!2547605 () Bool)

(declare-fun res!1073387 () Bool)

(assert (=> b!2547605 (=> res!1073387 e!1610272)))

(assert (=> b!2547605 (= res!1073387 e!1610267)))

(declare-fun res!1073383 () Bool)

(assert (=> b!2547605 (=> (not res!1073383) (not e!1610267))))

(assert (=> b!2547605 (= res!1073383 lt!902900)))

(declare-fun b!2547606 () Bool)

(assert (=> b!2547606 (= e!1610270 (nullable!2506 lt!902761))))

(declare-fun b!2547607 () Bool)

(assert (=> b!2547607 (= e!1610271 (= lt!902900 call!161775))))

(assert (= (and d!722804 c!408214) b!2547606))

(assert (= (and d!722804 (not c!408214)) b!2547596))

(assert (= (and d!722804 c!408212) b!2547607))

(assert (= (and d!722804 (not c!408212)) b!2547600))

(assert (= (and b!2547600 c!408213) b!2547602))

(assert (= (and b!2547600 (not c!408213)) b!2547601))

(assert (= (and b!2547601 (not res!1073389)) b!2547605))

(assert (= (and b!2547605 res!1073383) b!2547597))

(assert (= (and b!2547597 res!1073385) b!2547595))

(assert (= (and b!2547595 res!1073386) b!2547598))

(assert (= (and b!2547605 (not res!1073387)) b!2547604))

(assert (= (and b!2547604 res!1073388) b!2547594))

(assert (= (and b!2547594 (not res!1073390)) b!2547599))

(assert (= (and b!2547599 (not res!1073384)) b!2547603))

(assert (= (or b!2547607 b!2547594 b!2547597) bm!161770))

(assert (=> d!722804 m!2891415))

(assert (=> d!722804 m!2891395))

(assert (=> b!2547603 m!2891417))

(assert (=> b!2547596 m!2891417))

(assert (=> b!2547596 m!2891417))

(declare-fun m!2892105 () Bool)

(assert (=> b!2547596 m!2892105))

(assert (=> b!2547596 m!2891421))

(assert (=> b!2547596 m!2892105))

(assert (=> b!2547596 m!2891421))

(declare-fun m!2892107 () Bool)

(assert (=> b!2547596 m!2892107))

(assert (=> b!2547599 m!2891421))

(assert (=> b!2547599 m!2891421))

(assert (=> b!2547599 m!2891425))

(assert (=> b!2547595 m!2891421))

(assert (=> b!2547595 m!2891421))

(assert (=> b!2547595 m!2891425))

(assert (=> bm!161770 m!2891415))

(assert (=> b!2547606 m!2891407))

(assert (=> b!2547598 m!2891417))

(assert (=> b!2546568 d!722804))

(assert (=> b!2546662 d!722718))

(declare-fun b!2547608 () Bool)

(declare-fun res!1073391 () Bool)

(declare-fun e!1610274 () Bool)

(assert (=> b!2547608 (=> res!1073391 e!1610274)))

(assert (=> b!2547608 (= res!1073391 (not ((_ is Concat!12285) lt!902788)))))

(declare-fun e!1610278 () Bool)

(assert (=> b!2547608 (= e!1610278 e!1610274)))

(declare-fun call!161776 () Bool)

(declare-fun bm!161771 () Bool)

(declare-fun c!408216 () Bool)

(declare-fun c!408215 () Bool)

(assert (=> bm!161771 (= call!161776 (validRegex!3215 (ite c!408216 (reg!7918 lt!902788) (ite c!408215 (regOne!15691 lt!902788) (regTwo!15690 lt!902788)))))))

(declare-fun b!2547609 () Bool)

(declare-fun e!1610279 () Bool)

(assert (=> b!2547609 (= e!1610279 call!161776)))

(declare-fun bm!161772 () Bool)

(declare-fun call!161777 () Bool)

(assert (=> bm!161772 (= call!161777 call!161776)))

(declare-fun b!2547610 () Bool)

(declare-fun e!1610280 () Bool)

(assert (=> b!2547610 (= e!1610280 call!161777)))

(declare-fun b!2547611 () Bool)

(declare-fun e!1610277 () Bool)

(assert (=> b!2547611 (= e!1610277 e!1610278)))

(assert (=> b!2547611 (= c!408215 ((_ is Union!7589) lt!902788))))

(declare-fun b!2547612 () Bool)

(declare-fun e!1610276 () Bool)

(assert (=> b!2547612 (= e!1610276 e!1610277)))

(assert (=> b!2547612 (= c!408216 ((_ is Star!7589) lt!902788))))

(declare-fun d!722806 () Bool)

(declare-fun res!1073395 () Bool)

(assert (=> d!722806 (=> res!1073395 e!1610276)))

(assert (=> d!722806 (= res!1073395 ((_ is ElementMatch!7589) lt!902788))))

(assert (=> d!722806 (= (validRegex!3215 lt!902788) e!1610276)))

(declare-fun b!2547613 () Bool)

(assert (=> b!2547613 (= e!1610274 e!1610280)))

(declare-fun res!1073393 () Bool)

(assert (=> b!2547613 (=> (not res!1073393) (not e!1610280))))

(declare-fun call!161778 () Bool)

(assert (=> b!2547613 (= res!1073393 call!161778)))

(declare-fun b!2547614 () Bool)

(declare-fun e!1610275 () Bool)

(assert (=> b!2547614 (= e!1610275 call!161778)))

(declare-fun b!2547615 () Bool)

(assert (=> b!2547615 (= e!1610277 e!1610279)))

(declare-fun res!1073394 () Bool)

(assert (=> b!2547615 (= res!1073394 (not (nullable!2506 (reg!7918 lt!902788))))))

(assert (=> b!2547615 (=> (not res!1073394) (not e!1610279))))

(declare-fun b!2547616 () Bool)

(declare-fun res!1073392 () Bool)

(assert (=> b!2547616 (=> (not res!1073392) (not e!1610275))))

(assert (=> b!2547616 (= res!1073392 call!161777)))

(assert (=> b!2547616 (= e!1610278 e!1610275)))

(declare-fun bm!161773 () Bool)

(assert (=> bm!161773 (= call!161778 (validRegex!3215 (ite c!408215 (regTwo!15691 lt!902788) (regOne!15690 lt!902788))))))

(assert (= (and d!722806 (not res!1073395)) b!2547612))

(assert (= (and b!2547612 c!408216) b!2547615))

(assert (= (and b!2547612 (not c!408216)) b!2547611))

(assert (= (and b!2547615 res!1073394) b!2547609))

(assert (= (and b!2547611 c!408215) b!2547616))

(assert (= (and b!2547611 (not c!408215)) b!2547608))

(assert (= (and b!2547616 res!1073392) b!2547614))

(assert (= (and b!2547608 (not res!1073391)) b!2547613))

(assert (= (and b!2547613 res!1073393) b!2547610))

(assert (= (or b!2547616 b!2547610) bm!161772))

(assert (= (or b!2547614 b!2547613) bm!161773))

(assert (= (or b!2547609 bm!161772) bm!161771))

(declare-fun m!2892109 () Bool)

(assert (=> bm!161771 m!2892109))

(declare-fun m!2892111 () Bool)

(assert (=> b!2547615 m!2892111))

(declare-fun m!2892113 () Bool)

(assert (=> bm!161773 m!2892113))

(assert (=> d!722434 d!722806))

(assert (=> d!722434 d!722776))

(assert (=> b!2546681 d!722778))

(declare-fun d!722808 () Bool)

(assert (=> d!722808 (= (nullable!2506 (regOne!15690 (reg!7918 r!27340))) (nullableFct!731 (regOne!15690 (reg!7918 r!27340))))))

(declare-fun bs!469546 () Bool)

(assert (= bs!469546 d!722808))

(declare-fun m!2892115 () Bool)

(assert (=> bs!469546 m!2892115))

(assert (=> b!2546277 d!722808))

(declare-fun b!2547620 () Bool)

(declare-fun e!1610282 () Bool)

(declare-fun lt!902901 () List!29654)

(assert (=> b!2547620 (= e!1610282 (or (not (= (_2!17322 (get!9273 lt!902817)) Nil!29554)) (= lt!902901 (_1!17322 (get!9273 lt!902817)))))))

(declare-fun b!2547618 () Bool)

(declare-fun e!1610281 () List!29654)

(assert (=> b!2547618 (= e!1610281 (Cons!29554 (h!34974 (_1!17322 (get!9273 lt!902817))) (++!7256 (t!211353 (_1!17322 (get!9273 lt!902817))) (_2!17322 (get!9273 lt!902817)))))))

(declare-fun d!722810 () Bool)

(assert (=> d!722810 e!1610282))

(declare-fun res!1073396 () Bool)

(assert (=> d!722810 (=> (not res!1073396) (not e!1610282))))

(assert (=> d!722810 (= res!1073396 (= (content!4062 lt!902901) ((_ map or) (content!4062 (_1!17322 (get!9273 lt!902817))) (content!4062 (_2!17322 (get!9273 lt!902817))))))))

(assert (=> d!722810 (= lt!902901 e!1610281)))

(declare-fun c!408217 () Bool)

(assert (=> d!722810 (= c!408217 ((_ is Nil!29554) (_1!17322 (get!9273 lt!902817))))))

(assert (=> d!722810 (= (++!7256 (_1!17322 (get!9273 lt!902817)) (_2!17322 (get!9273 lt!902817))) lt!902901)))

(declare-fun b!2547617 () Bool)

(assert (=> b!2547617 (= e!1610281 (_2!17322 (get!9273 lt!902817)))))

(declare-fun b!2547619 () Bool)

(declare-fun res!1073397 () Bool)

(assert (=> b!2547619 (=> (not res!1073397) (not e!1610282))))

(assert (=> b!2547619 (= res!1073397 (= (size!22942 lt!902901) (+ (size!22942 (_1!17322 (get!9273 lt!902817))) (size!22942 (_2!17322 (get!9273 lt!902817))))))))

(assert (= (and d!722810 c!408217) b!2547617))

(assert (= (and d!722810 (not c!408217)) b!2547618))

(assert (= (and d!722810 res!1073396) b!2547619))

(assert (= (and b!2547619 res!1073397) b!2547620))

(declare-fun m!2892117 () Bool)

(assert (=> b!2547618 m!2892117))

(declare-fun m!2892119 () Bool)

(assert (=> d!722810 m!2892119))

(declare-fun m!2892121 () Bool)

(assert (=> d!722810 m!2892121))

(declare-fun m!2892123 () Bool)

(assert (=> d!722810 m!2892123))

(declare-fun m!2892125 () Bool)

(assert (=> b!2547619 m!2892125))

(declare-fun m!2892127 () Bool)

(assert (=> b!2547619 m!2892127))

(declare-fun m!2892129 () Bool)

(assert (=> b!2547619 m!2892129))

(assert (=> b!2546570 d!722810))

(assert (=> b!2546570 d!722716))

(declare-fun b!2547621 () Bool)

(declare-fun e!1610283 () Regex!7589)

(declare-fun call!161781 () Regex!7589)

(assert (=> b!2547621 (= e!1610283 (Union!7589 (Concat!12285 call!161781 (regTwo!15690 (ite c!407992 (regOne!15691 r!27340) (regTwo!15690 r!27340)))) EmptyLang!7589))))

(declare-fun bm!161775 () Bool)

(declare-fun call!161782 () Regex!7589)

(assert (=> bm!161775 (= call!161781 call!161782)))

(declare-fun call!161779 () Regex!7589)

(declare-fun b!2547622 () Bool)

(assert (=> b!2547622 (= e!1610283 (Union!7589 (Concat!12285 call!161781 (regTwo!15690 (ite c!407992 (regOne!15691 r!27340) (regTwo!15690 r!27340)))) call!161779))))

(declare-fun bm!161776 () Bool)

(declare-fun call!161780 () Regex!7589)

(assert (=> bm!161776 (= call!161782 call!161780)))

(declare-fun b!2547623 () Bool)

(declare-fun e!1610284 () Regex!7589)

(assert (=> b!2547623 (= e!1610284 EmptyLang!7589)))

(declare-fun e!1610285 () Regex!7589)

(declare-fun b!2547624 () Bool)

(assert (=> b!2547624 (= e!1610285 (Concat!12285 call!161782 (ite c!407992 (regOne!15691 r!27340) (regTwo!15690 r!27340))))))

(declare-fun b!2547625 () Bool)

(declare-fun c!408219 () Bool)

(assert (=> b!2547625 (= c!408219 (nullable!2506 (regOne!15690 (ite c!407992 (regOne!15691 r!27340) (regTwo!15690 r!27340)))))))

(assert (=> b!2547625 (= e!1610285 e!1610283)))

(declare-fun e!1610286 () Regex!7589)

(declare-fun b!2547626 () Bool)

(assert (=> b!2547626 (= e!1610286 (ite (= c!14016 (c!407871 (ite c!407992 (regOne!15691 r!27340) (regTwo!15690 r!27340)))) EmptyExpr!7589 EmptyLang!7589))))

(declare-fun b!2547627 () Bool)

(declare-fun c!408221 () Bool)

(assert (=> b!2547627 (= c!408221 ((_ is Union!7589) (ite c!407992 (regOne!15691 r!27340) (regTwo!15690 r!27340))))))

(declare-fun e!1610287 () Regex!7589)

(assert (=> b!2547627 (= e!1610286 e!1610287)))

(declare-fun b!2547628 () Bool)

(assert (=> b!2547628 (= e!1610287 e!1610285)))

(declare-fun c!408220 () Bool)

(assert (=> b!2547628 (= c!408220 ((_ is Star!7589) (ite c!407992 (regOne!15691 r!27340) (regTwo!15690 r!27340))))))

(declare-fun bm!161777 () Bool)

(assert (=> bm!161777 (= call!161779 (derivativeStep!2158 (ite c!408221 (regOne!15691 (ite c!407992 (regOne!15691 r!27340) (regTwo!15690 r!27340))) (regTwo!15690 (ite c!407992 (regOne!15691 r!27340) (regTwo!15690 r!27340)))) c!14016))))

(declare-fun b!2547629 () Bool)

(assert (=> b!2547629 (= e!1610284 e!1610286)))

(declare-fun c!408218 () Bool)

(assert (=> b!2547629 (= c!408218 ((_ is ElementMatch!7589) (ite c!407992 (regOne!15691 r!27340) (regTwo!15690 r!27340))))))

(declare-fun b!2547630 () Bool)

(assert (=> b!2547630 (= e!1610287 (Union!7589 call!161779 call!161780))))

(declare-fun d!722812 () Bool)

(declare-fun lt!902902 () Regex!7589)

(assert (=> d!722812 (validRegex!3215 lt!902902)))

(assert (=> d!722812 (= lt!902902 e!1610284)))

(declare-fun c!408222 () Bool)

(assert (=> d!722812 (= c!408222 (or ((_ is EmptyExpr!7589) (ite c!407992 (regOne!15691 r!27340) (regTwo!15690 r!27340))) ((_ is EmptyLang!7589) (ite c!407992 (regOne!15691 r!27340) (regTwo!15690 r!27340)))))))

(assert (=> d!722812 (validRegex!3215 (ite c!407992 (regOne!15691 r!27340) (regTwo!15690 r!27340)))))

(assert (=> d!722812 (= (derivativeStep!2158 (ite c!407992 (regOne!15691 r!27340) (regTwo!15690 r!27340)) c!14016) lt!902902)))

(declare-fun bm!161774 () Bool)

(assert (=> bm!161774 (= call!161780 (derivativeStep!2158 (ite c!408221 (regTwo!15691 (ite c!407992 (regOne!15691 r!27340) (regTwo!15690 r!27340))) (ite c!408220 (reg!7918 (ite c!407992 (regOne!15691 r!27340) (regTwo!15690 r!27340))) (regOne!15690 (ite c!407992 (regOne!15691 r!27340) (regTwo!15690 r!27340))))) c!14016))))

(assert (= (and d!722812 c!408222) b!2547623))

(assert (= (and d!722812 (not c!408222)) b!2547629))

(assert (= (and b!2547629 c!408218) b!2547626))

(assert (= (and b!2547629 (not c!408218)) b!2547627))

(assert (= (and b!2547627 c!408221) b!2547630))

(assert (= (and b!2547627 (not c!408221)) b!2547628))

(assert (= (and b!2547628 c!408220) b!2547624))

(assert (= (and b!2547628 (not c!408220)) b!2547625))

(assert (= (and b!2547625 c!408219) b!2547622))

(assert (= (and b!2547625 (not c!408219)) b!2547621))

(assert (= (or b!2547622 b!2547621) bm!161775))

(assert (= (or b!2547624 bm!161775) bm!161776))

(assert (= (or b!2547630 bm!161776) bm!161774))

(assert (= (or b!2547630 b!2547622) bm!161777))

(declare-fun m!2892131 () Bool)

(assert (=> b!2547625 m!2892131))

(declare-fun m!2892133 () Bool)

(assert (=> bm!161777 m!2892133))

(declare-fun m!2892135 () Bool)

(assert (=> d!722812 m!2892135))

(declare-fun m!2892137 () Bool)

(assert (=> d!722812 m!2892137))

(declare-fun m!2892139 () Bool)

(assert (=> bm!161774 m!2892139))

(assert (=> bm!161609 d!722812))

(assert (=> b!2546422 d!722482))

(declare-fun b!2547631 () Bool)

(declare-fun res!1073398 () Bool)

(declare-fun e!1610288 () Bool)

(assert (=> b!2547631 (=> res!1073398 e!1610288)))

(assert (=> b!2547631 (= res!1073398 (not ((_ is Concat!12285) lt!902830)))))

(declare-fun e!1610292 () Bool)

(assert (=> b!2547631 (= e!1610292 e!1610288)))

(declare-fun bm!161778 () Bool)

(declare-fun c!408223 () Bool)

(declare-fun call!161783 () Bool)

(declare-fun c!408224 () Bool)

(assert (=> bm!161778 (= call!161783 (validRegex!3215 (ite c!408224 (reg!7918 lt!902830) (ite c!408223 (regOne!15691 lt!902830) (regTwo!15690 lt!902830)))))))

(declare-fun b!2547632 () Bool)

(declare-fun e!1610293 () Bool)

(assert (=> b!2547632 (= e!1610293 call!161783)))

(declare-fun bm!161779 () Bool)

(declare-fun call!161784 () Bool)

(assert (=> bm!161779 (= call!161784 call!161783)))

(declare-fun b!2547633 () Bool)

(declare-fun e!1610294 () Bool)

(assert (=> b!2547633 (= e!1610294 call!161784)))

(declare-fun b!2547634 () Bool)

(declare-fun e!1610291 () Bool)

(assert (=> b!2547634 (= e!1610291 e!1610292)))

(assert (=> b!2547634 (= c!408223 ((_ is Union!7589) lt!902830))))

(declare-fun b!2547635 () Bool)

(declare-fun e!1610290 () Bool)

(assert (=> b!2547635 (= e!1610290 e!1610291)))

(assert (=> b!2547635 (= c!408224 ((_ is Star!7589) lt!902830))))

(declare-fun d!722814 () Bool)

(declare-fun res!1073402 () Bool)

(assert (=> d!722814 (=> res!1073402 e!1610290)))

(assert (=> d!722814 (= res!1073402 ((_ is ElementMatch!7589) lt!902830))))

(assert (=> d!722814 (= (validRegex!3215 lt!902830) e!1610290)))

(declare-fun b!2547636 () Bool)

(assert (=> b!2547636 (= e!1610288 e!1610294)))

(declare-fun res!1073400 () Bool)

(assert (=> b!2547636 (=> (not res!1073400) (not e!1610294))))

(declare-fun call!161785 () Bool)

(assert (=> b!2547636 (= res!1073400 call!161785)))

(declare-fun b!2547637 () Bool)

(declare-fun e!1610289 () Bool)

(assert (=> b!2547637 (= e!1610289 call!161785)))

(declare-fun b!2547638 () Bool)

(assert (=> b!2547638 (= e!1610291 e!1610293)))

(declare-fun res!1073401 () Bool)

(assert (=> b!2547638 (= res!1073401 (not (nullable!2506 (reg!7918 lt!902830))))))

(assert (=> b!2547638 (=> (not res!1073401) (not e!1610293))))

(declare-fun b!2547639 () Bool)

(declare-fun res!1073399 () Bool)

(assert (=> b!2547639 (=> (not res!1073399) (not e!1610289))))

(assert (=> b!2547639 (= res!1073399 call!161784)))

(assert (=> b!2547639 (= e!1610292 e!1610289)))

(declare-fun bm!161780 () Bool)

(assert (=> bm!161780 (= call!161785 (validRegex!3215 (ite c!408223 (regTwo!15691 lt!902830) (regOne!15690 lt!902830))))))

(assert (= (and d!722814 (not res!1073402)) b!2547635))

(assert (= (and b!2547635 c!408224) b!2547638))

(assert (= (and b!2547635 (not c!408224)) b!2547634))

(assert (= (and b!2547638 res!1073401) b!2547632))

(assert (= (and b!2547634 c!408223) b!2547639))

(assert (= (and b!2547634 (not c!408223)) b!2547631))

(assert (= (and b!2547639 res!1073399) b!2547637))

(assert (= (and b!2547631 (not res!1073398)) b!2547636))

(assert (= (and b!2547636 res!1073400) b!2547633))

(assert (= (or b!2547639 b!2547633) bm!161779))

(assert (= (or b!2547637 b!2547636) bm!161780))

(assert (= (or b!2547632 bm!161779) bm!161778))

(declare-fun m!2892141 () Bool)

(assert (=> bm!161778 m!2892141))

(declare-fun m!2892143 () Bool)

(assert (=> b!2547638 m!2892143))

(declare-fun m!2892145 () Bool)

(assert (=> bm!161780 m!2892145))

(assert (=> d!722488 d!722814))

(assert (=> d!722488 d!722706))

(assert (=> d!722494 d!722728))

(declare-fun b!2547640 () Bool)

(declare-fun res!1073403 () Bool)

(declare-fun e!1610295 () Bool)

(assert (=> b!2547640 (=> res!1073403 e!1610295)))

(assert (=> b!2547640 (= res!1073403 (not ((_ is Concat!12285) lt!902758)))))

(declare-fun e!1610299 () Bool)

(assert (=> b!2547640 (= e!1610299 e!1610295)))

(declare-fun c!408225 () Bool)

(declare-fun bm!161781 () Bool)

(declare-fun call!161786 () Bool)

(declare-fun c!408226 () Bool)

(assert (=> bm!161781 (= call!161786 (validRegex!3215 (ite c!408226 (reg!7918 lt!902758) (ite c!408225 (regOne!15691 lt!902758) (regTwo!15690 lt!902758)))))))

(declare-fun b!2547641 () Bool)

(declare-fun e!1610300 () Bool)

(assert (=> b!2547641 (= e!1610300 call!161786)))

(declare-fun bm!161782 () Bool)

(declare-fun call!161787 () Bool)

(assert (=> bm!161782 (= call!161787 call!161786)))

(declare-fun b!2547642 () Bool)

(declare-fun e!1610301 () Bool)

(assert (=> b!2547642 (= e!1610301 call!161787)))

(declare-fun b!2547643 () Bool)

(declare-fun e!1610298 () Bool)

(assert (=> b!2547643 (= e!1610298 e!1610299)))

(assert (=> b!2547643 (= c!408225 ((_ is Union!7589) lt!902758))))

(declare-fun b!2547644 () Bool)

(declare-fun e!1610297 () Bool)

(assert (=> b!2547644 (= e!1610297 e!1610298)))

(assert (=> b!2547644 (= c!408226 ((_ is Star!7589) lt!902758))))

(declare-fun d!722816 () Bool)

(declare-fun res!1073407 () Bool)

(assert (=> d!722816 (=> res!1073407 e!1610297)))

(assert (=> d!722816 (= res!1073407 ((_ is ElementMatch!7589) lt!902758))))

(assert (=> d!722816 (= (validRegex!3215 lt!902758) e!1610297)))

(declare-fun b!2547645 () Bool)

(assert (=> b!2547645 (= e!1610295 e!1610301)))

(declare-fun res!1073405 () Bool)

(assert (=> b!2547645 (=> (not res!1073405) (not e!1610301))))

(declare-fun call!161788 () Bool)

(assert (=> b!2547645 (= res!1073405 call!161788)))

(declare-fun b!2547646 () Bool)

(declare-fun e!1610296 () Bool)

(assert (=> b!2547646 (= e!1610296 call!161788)))

(declare-fun b!2547647 () Bool)

(assert (=> b!2547647 (= e!1610298 e!1610300)))

(declare-fun res!1073406 () Bool)

(assert (=> b!2547647 (= res!1073406 (not (nullable!2506 (reg!7918 lt!902758))))))

(assert (=> b!2547647 (=> (not res!1073406) (not e!1610300))))

(declare-fun b!2547648 () Bool)

(declare-fun res!1073404 () Bool)

(assert (=> b!2547648 (=> (not res!1073404) (not e!1610296))))

(assert (=> b!2547648 (= res!1073404 call!161787)))

(assert (=> b!2547648 (= e!1610299 e!1610296)))

(declare-fun bm!161783 () Bool)

(assert (=> bm!161783 (= call!161788 (validRegex!3215 (ite c!408225 (regTwo!15691 lt!902758) (regOne!15690 lt!902758))))))

(assert (= (and d!722816 (not res!1073407)) b!2547644))

(assert (= (and b!2547644 c!408226) b!2547647))

(assert (= (and b!2547644 (not c!408226)) b!2547643))

(assert (= (and b!2547647 res!1073406) b!2547641))

(assert (= (and b!2547643 c!408225) b!2547648))

(assert (= (and b!2547643 (not c!408225)) b!2547640))

(assert (= (and b!2547648 res!1073404) b!2547646))

(assert (= (and b!2547640 (not res!1073403)) b!2547645))

(assert (= (and b!2547645 res!1073405) b!2547642))

(assert (= (or b!2547648 b!2547642) bm!161782))

(assert (= (or b!2547646 b!2547645) bm!161783))

(assert (= (or b!2547641 bm!161782) bm!161781))

(declare-fun m!2892147 () Bool)

(assert (=> bm!161781 m!2892147))

(declare-fun m!2892149 () Bool)

(assert (=> b!2547647 m!2892149))

(declare-fun m!2892151 () Bool)

(assert (=> bm!161783 m!2892151))

(assert (=> d!722494 d!722816))

(declare-fun b!2547649 () Bool)

(declare-fun res!1073408 () Bool)

(declare-fun e!1610302 () Bool)

(assert (=> b!2547649 (=> res!1073408 e!1610302)))

(assert (=> b!2547649 (= res!1073408 (not ((_ is Concat!12285) lt!902836)))))

(declare-fun e!1610306 () Bool)

(assert (=> b!2547649 (= e!1610306 e!1610302)))

(declare-fun call!161789 () Bool)

(declare-fun bm!161784 () Bool)

(declare-fun c!408228 () Bool)

(declare-fun c!408227 () Bool)

(assert (=> bm!161784 (= call!161789 (validRegex!3215 (ite c!408228 (reg!7918 lt!902836) (ite c!408227 (regOne!15691 lt!902836) (regTwo!15690 lt!902836)))))))

(declare-fun b!2547650 () Bool)

(declare-fun e!1610307 () Bool)

(assert (=> b!2547650 (= e!1610307 call!161789)))

(declare-fun bm!161785 () Bool)

(declare-fun call!161790 () Bool)

(assert (=> bm!161785 (= call!161790 call!161789)))

(declare-fun b!2547651 () Bool)

(declare-fun e!1610308 () Bool)

(assert (=> b!2547651 (= e!1610308 call!161790)))

(declare-fun b!2547652 () Bool)

(declare-fun e!1610305 () Bool)

(assert (=> b!2547652 (= e!1610305 e!1610306)))

(assert (=> b!2547652 (= c!408227 ((_ is Union!7589) lt!902836))))

(declare-fun b!2547653 () Bool)

(declare-fun e!1610304 () Bool)

(assert (=> b!2547653 (= e!1610304 e!1610305)))

(assert (=> b!2547653 (= c!408228 ((_ is Star!7589) lt!902836))))

(declare-fun d!722818 () Bool)

(declare-fun res!1073412 () Bool)

(assert (=> d!722818 (=> res!1073412 e!1610304)))

(assert (=> d!722818 (= res!1073412 ((_ is ElementMatch!7589) lt!902836))))

(assert (=> d!722818 (= (validRegex!3215 lt!902836) e!1610304)))

(declare-fun b!2547654 () Bool)

(assert (=> b!2547654 (= e!1610302 e!1610308)))

(declare-fun res!1073410 () Bool)

(assert (=> b!2547654 (=> (not res!1073410) (not e!1610308))))

(declare-fun call!161791 () Bool)

(assert (=> b!2547654 (= res!1073410 call!161791)))

(declare-fun b!2547655 () Bool)

(declare-fun e!1610303 () Bool)

(assert (=> b!2547655 (= e!1610303 call!161791)))

(declare-fun b!2547656 () Bool)

(assert (=> b!2547656 (= e!1610305 e!1610307)))

(declare-fun res!1073411 () Bool)

(assert (=> b!2547656 (= res!1073411 (not (nullable!2506 (reg!7918 lt!902836))))))

(assert (=> b!2547656 (=> (not res!1073411) (not e!1610307))))

(declare-fun b!2547657 () Bool)

(declare-fun res!1073409 () Bool)

(assert (=> b!2547657 (=> (not res!1073409) (not e!1610303))))

(assert (=> b!2547657 (= res!1073409 call!161790)))

(assert (=> b!2547657 (= e!1610306 e!1610303)))

(declare-fun bm!161786 () Bool)

(assert (=> bm!161786 (= call!161791 (validRegex!3215 (ite c!408227 (regTwo!15691 lt!902836) (regOne!15690 lt!902836))))))

(assert (= (and d!722818 (not res!1073412)) b!2547653))

(assert (= (and b!2547653 c!408228) b!2547656))

(assert (= (and b!2547653 (not c!408228)) b!2547652))

(assert (= (and b!2547656 res!1073411) b!2547650))

(assert (= (and b!2547652 c!408227) b!2547657))

(assert (= (and b!2547652 (not c!408227)) b!2547649))

(assert (= (and b!2547657 res!1073409) b!2547655))

(assert (= (and b!2547649 (not res!1073408)) b!2547654))

(assert (= (and b!2547654 res!1073410) b!2547651))

(assert (= (or b!2547657 b!2547651) bm!161785))

(assert (= (or b!2547655 b!2547654) bm!161786))

(assert (= (or b!2547650 bm!161785) bm!161784))

(declare-fun m!2892153 () Bool)

(assert (=> bm!161784 m!2892153))

(declare-fun m!2892155 () Bool)

(assert (=> b!2547656 m!2892155))

(declare-fun m!2892157 () Bool)

(assert (=> bm!161786 m!2892157))

(assert (=> d!722502 d!722818))

(assert (=> d!722502 d!722776))

(declare-fun bm!161787 () Bool)

(declare-fun call!161792 () Bool)

(declare-fun c!408229 () Bool)

(assert (=> bm!161787 (= call!161792 (nullable!2506 (ite c!408229 (regOne!15691 lt!902757) (regTwo!15690 lt!902757))))))

(declare-fun bm!161788 () Bool)

(declare-fun call!161793 () Bool)

(assert (=> bm!161788 (= call!161793 (nullable!2506 (ite c!408229 (regTwo!15691 lt!902757) (regOne!15690 lt!902757))))))

(declare-fun b!2547659 () Bool)

(declare-fun e!1610313 () Bool)

(declare-fun e!1610310 () Bool)

(assert (=> b!2547659 (= e!1610313 e!1610310)))

(declare-fun res!1073417 () Bool)

(assert (=> b!2547659 (=> (not res!1073417) (not e!1610310))))

(assert (=> b!2547659 (= res!1073417 (and (not ((_ is EmptyLang!7589) lt!902757)) (not ((_ is ElementMatch!7589) lt!902757))))))

(declare-fun b!2547660 () Bool)

(declare-fun e!1610312 () Bool)

(assert (=> b!2547660 (= e!1610312 call!161793)))

(declare-fun b!2547661 () Bool)

(declare-fun e!1610314 () Bool)

(assert (=> b!2547661 (= e!1610310 e!1610314)))

(declare-fun res!1073416 () Bool)

(assert (=> b!2547661 (=> res!1073416 e!1610314)))

(assert (=> b!2547661 (= res!1073416 ((_ is Star!7589) lt!902757))))

(declare-fun b!2547662 () Bool)

(declare-fun e!1610309 () Bool)

(assert (=> b!2547662 (= e!1610309 call!161792)))

(declare-fun b!2547663 () Bool)

(declare-fun e!1610311 () Bool)

(assert (=> b!2547663 (= e!1610314 e!1610311)))

(assert (=> b!2547663 (= c!408229 ((_ is Union!7589) lt!902757))))

(declare-fun b!2547664 () Bool)

(assert (=> b!2547664 (= e!1610311 e!1610312)))

(declare-fun res!1073414 () Bool)

(assert (=> b!2547664 (= res!1073414 call!161792)))

(assert (=> b!2547664 (=> res!1073414 e!1610312)))

(declare-fun d!722820 () Bool)

(declare-fun res!1073415 () Bool)

(assert (=> d!722820 (=> res!1073415 e!1610313)))

(assert (=> d!722820 (= res!1073415 ((_ is EmptyExpr!7589) lt!902757))))

(assert (=> d!722820 (= (nullableFct!731 lt!902757) e!1610313)))

(declare-fun b!2547658 () Bool)

(assert (=> b!2547658 (= e!1610311 e!1610309)))

(declare-fun res!1073413 () Bool)

(assert (=> b!2547658 (= res!1073413 call!161793)))

(assert (=> b!2547658 (=> (not res!1073413) (not e!1610309))))

(assert (= (and d!722820 (not res!1073415)) b!2547659))

(assert (= (and b!2547659 res!1073417) b!2547661))

(assert (= (and b!2547661 (not res!1073416)) b!2547663))

(assert (= (and b!2547663 c!408229) b!2547664))

(assert (= (and b!2547663 (not c!408229)) b!2547658))

(assert (= (and b!2547664 (not res!1073414)) b!2547660))

(assert (= (and b!2547658 res!1073413) b!2547662))

(assert (= (or b!2547660 b!2547658) bm!161788))

(assert (= (or b!2547664 b!2547662) bm!161787))

(declare-fun m!2892159 () Bool)

(assert (=> bm!161787 m!2892159))

(declare-fun m!2892161 () Bool)

(assert (=> bm!161788 m!2892161))

(assert (=> d!722482 d!722820))

(assert (=> b!2546727 d!722732))

(assert (=> b!2546727 d!722726))

(declare-fun d!722822 () Bool)

(assert (not d!722822))

(assert (=> b!2546714 d!722822))

(declare-fun d!722824 () Bool)

(assert (not d!722824))

(assert (=> b!2546714 d!722824))

(assert (=> b!2546714 d!722662))

(assert (=> b!2546714 d!722710))

(assert (=> d!722446 d!722480))

(assert (=> d!722446 d!722776))

(assert (=> d!722446 d!722434))

(declare-fun b!2547665 () Bool)

(declare-fun e!1610316 () Bool)

(declare-fun e!1610317 () Bool)

(assert (=> b!2547665 (= e!1610316 e!1610317)))

(declare-fun res!1073425 () Bool)

(assert (=> b!2547665 (=> res!1073425 e!1610317)))

(declare-fun call!161794 () Bool)

(assert (=> b!2547665 (= res!1073425 call!161794)))

(declare-fun b!2547666 () Bool)

(declare-fun res!1073421 () Bool)

(declare-fun e!1610315 () Bool)

(assert (=> b!2547666 (=> (not res!1073421) (not e!1610315))))

(assert (=> b!2547666 (= res!1073421 (isEmpty!16998 (tail!4073 Nil!29554)))))

(declare-fun b!2547667 () Bool)

(declare-fun e!1610318 () Bool)

(assert (=> b!2547667 (= e!1610318 (matchR!3536 (derivativeStep!2158 (derivative!284 lt!902763 (_1!17322 lt!902762)) (head!5798 Nil!29554)) (tail!4073 Nil!29554)))))

(declare-fun bm!161789 () Bool)

(assert (=> bm!161789 (= call!161794 (isEmpty!16998 Nil!29554))))

(declare-fun b!2547668 () Bool)

(declare-fun res!1073420 () Bool)

(assert (=> b!2547668 (=> (not res!1073420) (not e!1610315))))

(assert (=> b!2547668 (= res!1073420 (not call!161794))))

(declare-fun b!2547669 () Bool)

(assert (=> b!2547669 (= e!1610315 (= (head!5798 Nil!29554) (c!407871 (derivative!284 lt!902763 (_1!17322 lt!902762)))))))

(declare-fun d!722826 () Bool)

(declare-fun e!1610319 () Bool)

(assert (=> d!722826 e!1610319))

(declare-fun c!408230 () Bool)

(assert (=> d!722826 (= c!408230 ((_ is EmptyExpr!7589) (derivative!284 lt!902763 (_1!17322 lt!902762))))))

(declare-fun lt!902903 () Bool)

(assert (=> d!722826 (= lt!902903 e!1610318)))

(declare-fun c!408232 () Bool)

(assert (=> d!722826 (= c!408232 (isEmpty!16998 Nil!29554))))

(assert (=> d!722826 (validRegex!3215 (derivative!284 lt!902763 (_1!17322 lt!902762)))))

(assert (=> d!722826 (= (matchR!3536 (derivative!284 lt!902763 (_1!17322 lt!902762)) Nil!29554) lt!902903)))

(declare-fun b!2547670 () Bool)

(declare-fun res!1073419 () Bool)

(assert (=> b!2547670 (=> res!1073419 e!1610317)))

(assert (=> b!2547670 (= res!1073419 (not (isEmpty!16998 (tail!4073 Nil!29554))))))

(declare-fun b!2547671 () Bool)

(declare-fun e!1610321 () Bool)

(assert (=> b!2547671 (= e!1610319 e!1610321)))

(declare-fun c!408231 () Bool)

(assert (=> b!2547671 (= c!408231 ((_ is EmptyLang!7589) (derivative!284 lt!902763 (_1!17322 lt!902762))))))

(declare-fun b!2547672 () Bool)

(declare-fun res!1073424 () Bool)

(declare-fun e!1610320 () Bool)

(assert (=> b!2547672 (=> res!1073424 e!1610320)))

(assert (=> b!2547672 (= res!1073424 (not ((_ is ElementMatch!7589) (derivative!284 lt!902763 (_1!17322 lt!902762)))))))

(assert (=> b!2547672 (= e!1610321 e!1610320)))

(declare-fun b!2547673 () Bool)

(assert (=> b!2547673 (= e!1610321 (not lt!902903))))

(declare-fun b!2547674 () Bool)

(assert (=> b!2547674 (= e!1610317 (not (= (head!5798 Nil!29554) (c!407871 (derivative!284 lt!902763 (_1!17322 lt!902762))))))))

(declare-fun b!2547675 () Bool)

(assert (=> b!2547675 (= e!1610320 e!1610316)))

(declare-fun res!1073423 () Bool)

(assert (=> b!2547675 (=> (not res!1073423) (not e!1610316))))

(assert (=> b!2547675 (= res!1073423 (not lt!902903))))

(declare-fun b!2547676 () Bool)

(declare-fun res!1073422 () Bool)

(assert (=> b!2547676 (=> res!1073422 e!1610320)))

(assert (=> b!2547676 (= res!1073422 e!1610315)))

(declare-fun res!1073418 () Bool)

(assert (=> b!2547676 (=> (not res!1073418) (not e!1610315))))

(assert (=> b!2547676 (= res!1073418 lt!902903)))

(declare-fun b!2547677 () Bool)

(assert (=> b!2547677 (= e!1610318 (nullable!2506 (derivative!284 lt!902763 (_1!17322 lt!902762))))))

(declare-fun b!2547678 () Bool)

(assert (=> b!2547678 (= e!1610319 (= lt!902903 call!161794))))

(assert (= (and d!722826 c!408232) b!2547677))

(assert (= (and d!722826 (not c!408232)) b!2547667))

(assert (= (and d!722826 c!408230) b!2547678))

(assert (= (and d!722826 (not c!408230)) b!2547671))

(assert (= (and b!2547671 c!408231) b!2547673))

(assert (= (and b!2547671 (not c!408231)) b!2547672))

(assert (= (and b!2547672 (not res!1073424)) b!2547676))

(assert (= (and b!2547676 res!1073418) b!2547668))

(assert (= (and b!2547668 res!1073420) b!2547666))

(assert (= (and b!2547666 res!1073421) b!2547669))

(assert (= (and b!2547676 (not res!1073422)) b!2547675))

(assert (= (and b!2547675 res!1073423) b!2547665))

(assert (= (and b!2547665 (not res!1073425)) b!2547670))

(assert (= (and b!2547670 (not res!1073419)) b!2547674))

(assert (= (or b!2547678 b!2547665 b!2547668) bm!161789))

(assert (=> d!722826 m!2891141))

(assert (=> d!722826 m!2891035))

(declare-fun m!2892163 () Bool)

(assert (=> d!722826 m!2892163))

(assert (=> b!2547674 m!2891145))

(assert (=> b!2547667 m!2891145))

(assert (=> b!2547667 m!2891035))

(assert (=> b!2547667 m!2891145))

(declare-fun m!2892165 () Bool)

(assert (=> b!2547667 m!2892165))

(assert (=> b!2547667 m!2891149))

(assert (=> b!2547667 m!2892165))

(assert (=> b!2547667 m!2891149))

(declare-fun m!2892167 () Bool)

(assert (=> b!2547667 m!2892167))

(assert (=> b!2547670 m!2891149))

(assert (=> b!2547670 m!2891149))

(assert (=> b!2547670 m!2891161))

(assert (=> b!2547666 m!2891149))

(assert (=> b!2547666 m!2891149))

(assert (=> b!2547666 m!2891161))

(assert (=> bm!161789 m!2891141))

(assert (=> b!2547677 m!2891035))

(declare-fun m!2892169 () Bool)

(assert (=> b!2547677 m!2892169))

(assert (=> b!2547669 m!2891145))

(assert (=> d!722446 d!722826))

(declare-fun d!722828 () Bool)

(assert (=> d!722828 (= (matchR!3536 lt!902763 (_1!17322 lt!902762)) (matchR!3536 (derivative!284 lt!902763 (_1!17322 lt!902762)) Nil!29554))))

(assert (=> d!722828 true))

(declare-fun _$108!339 () Unit!43367)

(assert (=> d!722828 (= (choose!15040 lt!902763 (_1!17322 lt!902762)) _$108!339)))

(declare-fun bs!469547 () Bool)

(assert (= bs!469547 d!722828))

(assert (=> bs!469547 m!2891069))

(assert (=> bs!469547 m!2891035))

(assert (=> bs!469547 m!2891035))

(assert (=> bs!469547 m!2891229))

(assert (=> d!722446 d!722828))

(declare-fun d!722830 () Bool)

(assert (=> d!722830 (= (nullable!2506 lt!902761) (nullableFct!731 lt!902761))))

(declare-fun bs!469548 () Bool)

(assert (= bs!469548 d!722830))

(declare-fun m!2892171 () Bool)

(assert (=> bs!469548 m!2892171))

(assert (=> b!2546710 d!722830))

(declare-fun e!1610322 () Regex!7589)

(declare-fun call!161797 () Regex!7589)

(declare-fun b!2547679 () Bool)

(assert (=> b!2547679 (= e!1610322 (Union!7589 (Concat!12285 call!161797 (regTwo!15690 (ite c!407895 (regOne!15691 (reg!7918 r!27340)) (regTwo!15690 (reg!7918 r!27340))))) EmptyLang!7589))))

(declare-fun bm!161791 () Bool)

(declare-fun call!161798 () Regex!7589)

(assert (=> bm!161791 (= call!161797 call!161798)))

(declare-fun call!161795 () Regex!7589)

(declare-fun b!2547680 () Bool)

(assert (=> b!2547680 (= e!1610322 (Union!7589 (Concat!12285 call!161797 (regTwo!15690 (ite c!407895 (regOne!15691 (reg!7918 r!27340)) (regTwo!15690 (reg!7918 r!27340))))) call!161795))))

(declare-fun bm!161792 () Bool)

(declare-fun call!161796 () Regex!7589)

(assert (=> bm!161792 (= call!161798 call!161796)))

(declare-fun b!2547681 () Bool)

(declare-fun e!1610323 () Regex!7589)

(assert (=> b!2547681 (= e!1610323 EmptyLang!7589)))

(declare-fun e!1610324 () Regex!7589)

(declare-fun b!2547682 () Bool)

(assert (=> b!2547682 (= e!1610324 (Concat!12285 call!161798 (ite c!407895 (regOne!15691 (reg!7918 r!27340)) (regTwo!15690 (reg!7918 r!27340)))))))

(declare-fun b!2547683 () Bool)

(declare-fun c!408234 () Bool)

(assert (=> b!2547683 (= c!408234 (nullable!2506 (regOne!15690 (ite c!407895 (regOne!15691 (reg!7918 r!27340)) (regTwo!15690 (reg!7918 r!27340))))))))

(assert (=> b!2547683 (= e!1610324 e!1610322)))

(declare-fun e!1610325 () Regex!7589)

(declare-fun b!2547684 () Bool)

(assert (=> b!2547684 (= e!1610325 (ite (= c!14016 (c!407871 (ite c!407895 (regOne!15691 (reg!7918 r!27340)) (regTwo!15690 (reg!7918 r!27340))))) EmptyExpr!7589 EmptyLang!7589))))

(declare-fun b!2547685 () Bool)

(declare-fun c!408236 () Bool)

(assert (=> b!2547685 (= c!408236 ((_ is Union!7589) (ite c!407895 (regOne!15691 (reg!7918 r!27340)) (regTwo!15690 (reg!7918 r!27340)))))))

(declare-fun e!1610326 () Regex!7589)

(assert (=> b!2547685 (= e!1610325 e!1610326)))

(declare-fun b!2547686 () Bool)

(assert (=> b!2547686 (= e!1610326 e!1610324)))

(declare-fun c!408235 () Bool)

(assert (=> b!2547686 (= c!408235 ((_ is Star!7589) (ite c!407895 (regOne!15691 (reg!7918 r!27340)) (regTwo!15690 (reg!7918 r!27340)))))))

(declare-fun bm!161793 () Bool)

(assert (=> bm!161793 (= call!161795 (derivativeStep!2158 (ite c!408236 (regOne!15691 (ite c!407895 (regOne!15691 (reg!7918 r!27340)) (regTwo!15690 (reg!7918 r!27340)))) (regTwo!15690 (ite c!407895 (regOne!15691 (reg!7918 r!27340)) (regTwo!15690 (reg!7918 r!27340))))) c!14016))))

(declare-fun b!2547687 () Bool)

(assert (=> b!2547687 (= e!1610323 e!1610325)))

(declare-fun c!408233 () Bool)

(assert (=> b!2547687 (= c!408233 ((_ is ElementMatch!7589) (ite c!407895 (regOne!15691 (reg!7918 r!27340)) (regTwo!15690 (reg!7918 r!27340)))))))

(declare-fun b!2547688 () Bool)

(assert (=> b!2547688 (= e!1610326 (Union!7589 call!161795 call!161796))))

(declare-fun d!722832 () Bool)

(declare-fun lt!902904 () Regex!7589)

(assert (=> d!722832 (validRegex!3215 lt!902904)))

(assert (=> d!722832 (= lt!902904 e!1610323)))

(declare-fun c!408237 () Bool)

(assert (=> d!722832 (= c!408237 (or ((_ is EmptyExpr!7589) (ite c!407895 (regOne!15691 (reg!7918 r!27340)) (regTwo!15690 (reg!7918 r!27340)))) ((_ is EmptyLang!7589) (ite c!407895 (regOne!15691 (reg!7918 r!27340)) (regTwo!15690 (reg!7918 r!27340))))))))

(assert (=> d!722832 (validRegex!3215 (ite c!407895 (regOne!15691 (reg!7918 r!27340)) (regTwo!15690 (reg!7918 r!27340))))))

(assert (=> d!722832 (= (derivativeStep!2158 (ite c!407895 (regOne!15691 (reg!7918 r!27340)) (regTwo!15690 (reg!7918 r!27340))) c!14016) lt!902904)))

(declare-fun bm!161790 () Bool)

(assert (=> bm!161790 (= call!161796 (derivativeStep!2158 (ite c!408236 (regTwo!15691 (ite c!407895 (regOne!15691 (reg!7918 r!27340)) (regTwo!15690 (reg!7918 r!27340)))) (ite c!408235 (reg!7918 (ite c!407895 (regOne!15691 (reg!7918 r!27340)) (regTwo!15690 (reg!7918 r!27340)))) (regOne!15690 (ite c!407895 (regOne!15691 (reg!7918 r!27340)) (regTwo!15690 (reg!7918 r!27340)))))) c!14016))))

(assert (= (and d!722832 c!408237) b!2547681))

(assert (= (and d!722832 (not c!408237)) b!2547687))

(assert (= (and b!2547687 c!408233) b!2547684))

(assert (= (and b!2547687 (not c!408233)) b!2547685))

(assert (= (and b!2547685 c!408236) b!2547688))

(assert (= (and b!2547685 (not c!408236)) b!2547686))

(assert (= (and b!2547686 c!408235) b!2547682))

(assert (= (and b!2547686 (not c!408235)) b!2547683))

(assert (= (and b!2547683 c!408234) b!2547680))

(assert (= (and b!2547683 (not c!408234)) b!2547679))

(assert (= (or b!2547680 b!2547679) bm!161791))

(assert (= (or b!2547682 bm!161791) bm!161792))

(assert (= (or b!2547688 bm!161792) bm!161790))

(assert (= (or b!2547688 b!2547680) bm!161793))

(declare-fun m!2892173 () Bool)

(assert (=> b!2547683 m!2892173))

(declare-fun m!2892175 () Bool)

(assert (=> bm!161793 m!2892175))

(declare-fun m!2892177 () Bool)

(assert (=> d!722832 m!2892177))

(declare-fun m!2892179 () Bool)

(assert (=> d!722832 m!2892179))

(declare-fun m!2892181 () Bool)

(assert (=> bm!161790 m!2892181))

(assert (=> bm!161554 d!722832))

(assert (=> bm!161612 d!722704))

(declare-fun d!722834 () Bool)

(assert (=> d!722834 (= (nullable!2506 (reg!7918 (reg!7918 r!27340))) (nullableFct!731 (reg!7918 (reg!7918 r!27340))))))

(declare-fun bs!469549 () Bool)

(assert (= bs!469549 d!722834))

(declare-fun m!2892183 () Bool)

(assert (=> bs!469549 m!2892183))

(assert (=> b!2546318 d!722834))

(assert (=> d!722452 d!722702))

(declare-fun b!2547689 () Bool)

(declare-fun e!1610328 () Bool)

(declare-fun e!1610329 () Bool)

(assert (=> b!2547689 (= e!1610328 e!1610329)))

(declare-fun res!1073433 () Bool)

(assert (=> b!2547689 (=> res!1073433 e!1610329)))

(declare-fun call!161799 () Bool)

(assert (=> b!2547689 (= res!1073433 call!161799)))

(declare-fun b!2547690 () Bool)

(declare-fun res!1073429 () Bool)

(declare-fun e!1610327 () Bool)

(assert (=> b!2547690 (=> (not res!1073429) (not e!1610327))))

(assert (=> b!2547690 (= res!1073429 (isEmpty!16998 (tail!4073 Nil!29554)))))

(declare-fun b!2547691 () Bool)

(declare-fun e!1610330 () Bool)

(assert (=> b!2547691 (= e!1610330 (matchR!3536 (derivativeStep!2158 lt!902763 (head!5798 Nil!29554)) (tail!4073 Nil!29554)))))

(declare-fun bm!161794 () Bool)

(assert (=> bm!161794 (= call!161799 (isEmpty!16998 Nil!29554))))

(declare-fun b!2547692 () Bool)

(declare-fun res!1073428 () Bool)

(assert (=> b!2547692 (=> (not res!1073428) (not e!1610327))))

(assert (=> b!2547692 (= res!1073428 (not call!161799))))

(declare-fun b!2547693 () Bool)

(assert (=> b!2547693 (= e!1610327 (= (head!5798 Nil!29554) (c!407871 lt!902763)))))

(declare-fun d!722836 () Bool)

(declare-fun e!1610331 () Bool)

(assert (=> d!722836 e!1610331))

(declare-fun c!408238 () Bool)

(assert (=> d!722836 (= c!408238 ((_ is EmptyExpr!7589) lt!902763))))

(declare-fun lt!902905 () Bool)

(assert (=> d!722836 (= lt!902905 e!1610330)))

(declare-fun c!408240 () Bool)

(assert (=> d!722836 (= c!408240 (isEmpty!16998 Nil!29554))))

(assert (=> d!722836 (validRegex!3215 lt!902763)))

(assert (=> d!722836 (= (matchR!3536 lt!902763 Nil!29554) lt!902905)))

(declare-fun b!2547694 () Bool)

(declare-fun res!1073427 () Bool)

(assert (=> b!2547694 (=> res!1073427 e!1610329)))

(assert (=> b!2547694 (= res!1073427 (not (isEmpty!16998 (tail!4073 Nil!29554))))))

(declare-fun b!2547695 () Bool)

(declare-fun e!1610333 () Bool)

(assert (=> b!2547695 (= e!1610331 e!1610333)))

(declare-fun c!408239 () Bool)

(assert (=> b!2547695 (= c!408239 ((_ is EmptyLang!7589) lt!902763))))

(declare-fun b!2547696 () Bool)

(declare-fun res!1073432 () Bool)

(declare-fun e!1610332 () Bool)

(assert (=> b!2547696 (=> res!1073432 e!1610332)))

(assert (=> b!2547696 (= res!1073432 (not ((_ is ElementMatch!7589) lt!902763)))))

(assert (=> b!2547696 (= e!1610333 e!1610332)))

(declare-fun b!2547697 () Bool)

(assert (=> b!2547697 (= e!1610333 (not lt!902905))))

(declare-fun b!2547698 () Bool)

(assert (=> b!2547698 (= e!1610329 (not (= (head!5798 Nil!29554) (c!407871 lt!902763))))))

(declare-fun b!2547699 () Bool)

(assert (=> b!2547699 (= e!1610332 e!1610328)))

(declare-fun res!1073431 () Bool)

(assert (=> b!2547699 (=> (not res!1073431) (not e!1610328))))

(assert (=> b!2547699 (= res!1073431 (not lt!902905))))

(declare-fun b!2547700 () Bool)

(declare-fun res!1073430 () Bool)

(assert (=> b!2547700 (=> res!1073430 e!1610332)))

(assert (=> b!2547700 (= res!1073430 e!1610327)))

(declare-fun res!1073426 () Bool)

(assert (=> b!2547700 (=> (not res!1073426) (not e!1610327))))

(assert (=> b!2547700 (= res!1073426 lt!902905)))

(declare-fun b!2547701 () Bool)

(assert (=> b!2547701 (= e!1610330 (nullable!2506 lt!902763))))

(declare-fun b!2547702 () Bool)

(assert (=> b!2547702 (= e!1610331 (= lt!902905 call!161799))))

(assert (= (and d!722836 c!408240) b!2547701))

(assert (= (and d!722836 (not c!408240)) b!2547691))

(assert (= (and d!722836 c!408238) b!2547702))

(assert (= (and d!722836 (not c!408238)) b!2547695))

(assert (= (and b!2547695 c!408239) b!2547697))

(assert (= (and b!2547695 (not c!408239)) b!2547696))

(assert (= (and b!2547696 (not res!1073432)) b!2547700))

(assert (= (and b!2547700 res!1073426) b!2547692))

(assert (= (and b!2547692 res!1073428) b!2547690))

(assert (= (and b!2547690 res!1073429) b!2547693))

(assert (= (and b!2547700 (not res!1073430)) b!2547699))

(assert (= (and b!2547699 res!1073431) b!2547689))

(assert (= (and b!2547689 (not res!1073433)) b!2547694))

(assert (= (and b!2547694 (not res!1073427)) b!2547698))

(assert (= (or b!2547702 b!2547689 b!2547692) bm!161794))

(assert (=> d!722836 m!2891141))

(assert (=> d!722836 m!2891217))

(assert (=> b!2547698 m!2891145))

(assert (=> b!2547691 m!2891145))

(assert (=> b!2547691 m!2891145))

(declare-fun m!2892185 () Bool)

(assert (=> b!2547691 m!2892185))

(assert (=> b!2547691 m!2891149))

(assert (=> b!2547691 m!2892185))

(assert (=> b!2547691 m!2891149))

(declare-fun m!2892187 () Bool)

(assert (=> b!2547691 m!2892187))

(assert (=> b!2547694 m!2891149))

(assert (=> b!2547694 m!2891149))

(assert (=> b!2547694 m!2891161))

(assert (=> b!2547690 m!2891149))

(assert (=> b!2547690 m!2891149))

(assert (=> b!2547690 m!2891161))

(assert (=> bm!161794 m!2891141))

(assert (=> b!2547701 m!2891359))

(assert (=> b!2547693 m!2891145))

(assert (=> d!722452 d!722836))

(assert (=> d!722452 d!722776))

(declare-fun d!722838 () Bool)

(declare-fun lt!902906 () Regex!7589)

(assert (=> d!722838 (validRegex!3215 lt!902906)))

(declare-fun e!1610334 () Regex!7589)

(assert (=> d!722838 (= lt!902906 e!1610334)))

(declare-fun c!408241 () Bool)

(assert (=> d!722838 (= c!408241 ((_ is Cons!29554) (t!211353 tl!4068)))))

(assert (=> d!722838 (validRegex!3215 (derivativeStep!2158 lt!902760 (h!34974 tl!4068)))))

(assert (=> d!722838 (= (derivative!284 (derivativeStep!2158 lt!902760 (h!34974 tl!4068)) (t!211353 tl!4068)) lt!902906)))

(declare-fun b!2547703 () Bool)

(assert (=> b!2547703 (= e!1610334 (derivative!284 (derivativeStep!2158 (derivativeStep!2158 lt!902760 (h!34974 tl!4068)) (h!34974 (t!211353 tl!4068))) (t!211353 (t!211353 tl!4068))))))

(declare-fun b!2547704 () Bool)

(assert (=> b!2547704 (= e!1610334 (derivativeStep!2158 lt!902760 (h!34974 tl!4068)))))

(assert (= (and d!722838 c!408241) b!2547703))

(assert (= (and d!722838 (not c!408241)) b!2547704))

(declare-fun m!2892189 () Bool)

(assert (=> d!722838 m!2892189))

(assert (=> d!722838 m!2891381))

(declare-fun m!2892191 () Bool)

(assert (=> d!722838 m!2892191))

(assert (=> b!2547703 m!2891381))

(declare-fun m!2892193 () Bool)

(assert (=> b!2547703 m!2892193))

(assert (=> b!2547703 m!2892193))

(declare-fun m!2892195 () Bool)

(assert (=> b!2547703 m!2892195))

(assert (=> b!2546686 d!722838))

(declare-fun b!2547705 () Bool)

(declare-fun e!1610335 () Regex!7589)

(declare-fun call!161802 () Regex!7589)

(assert (=> b!2547705 (= e!1610335 (Union!7589 (Concat!12285 call!161802 (regTwo!15690 lt!902760)) EmptyLang!7589))))

(declare-fun bm!161796 () Bool)

(declare-fun call!161803 () Regex!7589)

(assert (=> bm!161796 (= call!161802 call!161803)))

(declare-fun b!2547706 () Bool)

(declare-fun call!161800 () Regex!7589)

(assert (=> b!2547706 (= e!1610335 (Union!7589 (Concat!12285 call!161802 (regTwo!15690 lt!902760)) call!161800))))

(declare-fun bm!161797 () Bool)

(declare-fun call!161801 () Regex!7589)

(assert (=> bm!161797 (= call!161803 call!161801)))

(declare-fun b!2547707 () Bool)

(declare-fun e!1610336 () Regex!7589)

(assert (=> b!2547707 (= e!1610336 EmptyLang!7589)))

(declare-fun b!2547708 () Bool)

(declare-fun e!1610337 () Regex!7589)

(assert (=> b!2547708 (= e!1610337 (Concat!12285 call!161803 lt!902760))))

(declare-fun b!2547709 () Bool)

(declare-fun c!408243 () Bool)

(assert (=> b!2547709 (= c!408243 (nullable!2506 (regOne!15690 lt!902760)))))

(assert (=> b!2547709 (= e!1610337 e!1610335)))

(declare-fun b!2547710 () Bool)

(declare-fun e!1610338 () Regex!7589)

(assert (=> b!2547710 (= e!1610338 (ite (= (h!34974 tl!4068) (c!407871 lt!902760)) EmptyExpr!7589 EmptyLang!7589))))

(declare-fun b!2547711 () Bool)

(declare-fun c!408245 () Bool)

(assert (=> b!2547711 (= c!408245 ((_ is Union!7589) lt!902760))))

(declare-fun e!1610339 () Regex!7589)

(assert (=> b!2547711 (= e!1610338 e!1610339)))

(declare-fun b!2547712 () Bool)

(assert (=> b!2547712 (= e!1610339 e!1610337)))

(declare-fun c!408244 () Bool)

(assert (=> b!2547712 (= c!408244 ((_ is Star!7589) lt!902760))))

(declare-fun bm!161798 () Bool)

(assert (=> bm!161798 (= call!161800 (derivativeStep!2158 (ite c!408245 (regOne!15691 lt!902760) (regTwo!15690 lt!902760)) (h!34974 tl!4068)))))

(declare-fun b!2547713 () Bool)

(assert (=> b!2547713 (= e!1610336 e!1610338)))

(declare-fun c!408242 () Bool)

(assert (=> b!2547713 (= c!408242 ((_ is ElementMatch!7589) lt!902760))))

(declare-fun b!2547714 () Bool)

(assert (=> b!2547714 (= e!1610339 (Union!7589 call!161800 call!161801))))

(declare-fun d!722840 () Bool)

(declare-fun lt!902907 () Regex!7589)

(assert (=> d!722840 (validRegex!3215 lt!902907)))

(assert (=> d!722840 (= lt!902907 e!1610336)))

(declare-fun c!408246 () Bool)

(assert (=> d!722840 (= c!408246 (or ((_ is EmptyExpr!7589) lt!902760) ((_ is EmptyLang!7589) lt!902760)))))

(assert (=> d!722840 (validRegex!3215 lt!902760)))

(assert (=> d!722840 (= (derivativeStep!2158 lt!902760 (h!34974 tl!4068)) lt!902907)))

(declare-fun bm!161795 () Bool)

(assert (=> bm!161795 (= call!161801 (derivativeStep!2158 (ite c!408245 (regTwo!15691 lt!902760) (ite c!408244 (reg!7918 lt!902760) (regOne!15690 lt!902760))) (h!34974 tl!4068)))))

(assert (= (and d!722840 c!408246) b!2547707))

(assert (= (and d!722840 (not c!408246)) b!2547713))

(assert (= (and b!2547713 c!408242) b!2547710))

(assert (= (and b!2547713 (not c!408242)) b!2547711))

(assert (= (and b!2547711 c!408245) b!2547714))

(assert (= (and b!2547711 (not c!408245)) b!2547712))

(assert (= (and b!2547712 c!408244) b!2547708))

(assert (= (and b!2547712 (not c!408244)) b!2547709))

(assert (= (and b!2547709 c!408243) b!2547706))

(assert (= (and b!2547709 (not c!408243)) b!2547705))

(assert (= (or b!2547706 b!2547705) bm!161796))

(assert (= (or b!2547708 bm!161796) bm!161797))

(assert (= (or b!2547714 bm!161797) bm!161795))

(assert (= (or b!2547714 b!2547706) bm!161798))

(assert (=> b!2547709 m!2891953))

(declare-fun m!2892197 () Bool)

(assert (=> bm!161798 m!2892197))

(declare-fun m!2892199 () Bool)

(assert (=> d!722840 m!2892199))

(assert (=> d!722840 m!2891379))

(declare-fun m!2892201 () Bool)

(assert (=> bm!161795 m!2892201))

(assert (=> b!2546686 d!722840))

(declare-fun d!722842 () Bool)

(assert (=> d!722842 (= (isEmpty!17000 lt!902764) (not ((_ is Some!5899) lt!902764)))))

(assert (=> d!722478 d!722842))

(declare-fun d!722844 () Bool)

(declare-fun lt!902908 () Regex!7589)

(assert (=> d!722844 (validRegex!3215 lt!902908)))

(declare-fun e!1610340 () Regex!7589)

(assert (=> d!722844 (= lt!902908 e!1610340)))

(declare-fun c!408247 () Bool)

(assert (=> d!722844 (= c!408247 ((_ is Cons!29554) (t!211353 tl!4068)))))

(assert (=> d!722844 (validRegex!3215 (derivativeStep!2158 lt!902763 (h!34974 tl!4068)))))

(assert (=> d!722844 (= (derivative!284 (derivativeStep!2158 lt!902763 (h!34974 tl!4068)) (t!211353 tl!4068)) lt!902908)))

(declare-fun b!2547715 () Bool)

(assert (=> b!2547715 (= e!1610340 (derivative!284 (derivativeStep!2158 (derivativeStep!2158 lt!902763 (h!34974 tl!4068)) (h!34974 (t!211353 tl!4068))) (t!211353 (t!211353 tl!4068))))))

(declare-fun b!2547716 () Bool)

(assert (=> b!2547716 (= e!1610340 (derivativeStep!2158 lt!902763 (h!34974 tl!4068)))))

(assert (= (and d!722844 c!408247) b!2547715))

(assert (= (and d!722844 (not c!408247)) b!2547716))

(declare-fun m!2892203 () Bool)

(assert (=> d!722844 m!2892203))

(assert (=> d!722844 m!2891437))

(declare-fun m!2892205 () Bool)

(assert (=> d!722844 m!2892205))

(assert (=> b!2547715 m!2891437))

(declare-fun m!2892207 () Bool)

(assert (=> b!2547715 m!2892207))

(assert (=> b!2547715 m!2892207))

(declare-fun m!2892209 () Bool)

(assert (=> b!2547715 m!2892209))

(assert (=> b!2546740 d!722844))

(declare-fun b!2547717 () Bool)

(declare-fun e!1610341 () Regex!7589)

(declare-fun call!161806 () Regex!7589)

(assert (=> b!2547717 (= e!1610341 (Union!7589 (Concat!12285 call!161806 (regTwo!15690 lt!902763)) EmptyLang!7589))))

(declare-fun bm!161800 () Bool)

(declare-fun call!161807 () Regex!7589)

(assert (=> bm!161800 (= call!161806 call!161807)))

(declare-fun b!2547718 () Bool)

(declare-fun call!161804 () Regex!7589)

(assert (=> b!2547718 (= e!1610341 (Union!7589 (Concat!12285 call!161806 (regTwo!15690 lt!902763)) call!161804))))

(declare-fun bm!161801 () Bool)

(declare-fun call!161805 () Regex!7589)

(assert (=> bm!161801 (= call!161807 call!161805)))

(declare-fun b!2547719 () Bool)

(declare-fun e!1610342 () Regex!7589)

(assert (=> b!2547719 (= e!1610342 EmptyLang!7589)))

(declare-fun b!2547720 () Bool)

(declare-fun e!1610343 () Regex!7589)

(assert (=> b!2547720 (= e!1610343 (Concat!12285 call!161807 lt!902763))))

(declare-fun b!2547721 () Bool)

(declare-fun c!408249 () Bool)

(assert (=> b!2547721 (= c!408249 (nullable!2506 (regOne!15690 lt!902763)))))

(assert (=> b!2547721 (= e!1610343 e!1610341)))

(declare-fun b!2547722 () Bool)

(declare-fun e!1610344 () Regex!7589)

(assert (=> b!2547722 (= e!1610344 (ite (= (h!34974 tl!4068) (c!407871 lt!902763)) EmptyExpr!7589 EmptyLang!7589))))

(declare-fun b!2547723 () Bool)

(declare-fun c!408251 () Bool)

(assert (=> b!2547723 (= c!408251 ((_ is Union!7589) lt!902763))))

(declare-fun e!1610345 () Regex!7589)

(assert (=> b!2547723 (= e!1610344 e!1610345)))

(declare-fun b!2547724 () Bool)

(assert (=> b!2547724 (= e!1610345 e!1610343)))

(declare-fun c!408250 () Bool)

(assert (=> b!2547724 (= c!408250 ((_ is Star!7589) lt!902763))))

(declare-fun bm!161802 () Bool)

(assert (=> bm!161802 (= call!161804 (derivativeStep!2158 (ite c!408251 (regOne!15691 lt!902763) (regTwo!15690 lt!902763)) (h!34974 tl!4068)))))

(declare-fun b!2547725 () Bool)

(assert (=> b!2547725 (= e!1610342 e!1610344)))

(declare-fun c!408248 () Bool)

(assert (=> b!2547725 (= c!408248 ((_ is ElementMatch!7589) lt!902763))))

(declare-fun b!2547726 () Bool)

(assert (=> b!2547726 (= e!1610345 (Union!7589 call!161804 call!161805))))

(declare-fun d!722846 () Bool)

(declare-fun lt!902909 () Regex!7589)

(assert (=> d!722846 (validRegex!3215 lt!902909)))

(assert (=> d!722846 (= lt!902909 e!1610342)))

(declare-fun c!408252 () Bool)

(assert (=> d!722846 (= c!408252 (or ((_ is EmptyExpr!7589) lt!902763) ((_ is EmptyLang!7589) lt!902763)))))

(assert (=> d!722846 (validRegex!3215 lt!902763)))

(assert (=> d!722846 (= (derivativeStep!2158 lt!902763 (h!34974 tl!4068)) lt!902909)))

(declare-fun bm!161799 () Bool)

(assert (=> bm!161799 (= call!161805 (derivativeStep!2158 (ite c!408251 (regTwo!15691 lt!902763) (ite c!408250 (reg!7918 lt!902763) (regOne!15690 lt!902763))) (h!34974 tl!4068)))))

(assert (= (and d!722846 c!408252) b!2547719))

(assert (= (and d!722846 (not c!408252)) b!2547725))

(assert (= (and b!2547725 c!408248) b!2547722))

(assert (= (and b!2547725 (not c!408248)) b!2547723))

(assert (= (and b!2547723 c!408251) b!2547726))

(assert (= (and b!2547723 (not c!408251)) b!2547724))

(assert (= (and b!2547724 c!408250) b!2547720))

(assert (= (and b!2547724 (not c!408250)) b!2547721))

(assert (= (and b!2547721 c!408249) b!2547718))

(assert (= (and b!2547721 (not c!408249)) b!2547717))

(assert (= (or b!2547718 b!2547717) bm!161800))

(assert (= (or b!2547720 bm!161800) bm!161801))

(assert (= (or b!2547726 bm!161801) bm!161799))

(assert (= (or b!2547726 b!2547718) bm!161802))

(assert (=> b!2547721 m!2892031))

(declare-fun m!2892211 () Bool)

(assert (=> bm!161802 m!2892211))

(declare-fun m!2892213 () Bool)

(assert (=> d!722846 m!2892213))

(assert (=> d!722846 m!2891217))

(declare-fun m!2892215 () Bool)

(assert (=> bm!161799 m!2892215))

(assert (=> b!2546740 d!722846))

(declare-fun d!722848 () Bool)

(assert (=> d!722848 (= (nullable!2506 lt!902763) (nullableFct!731 lt!902763))))

(declare-fun bs!469550 () Bool)

(assert (= bs!469550 d!722848))

(declare-fun m!2892217 () Bool)

(assert (=> bs!469550 m!2892217))

(assert (=> b!2546670 d!722848))

(assert (=> b!2546730 d!722724))

(declare-fun b!2547727 () Bool)

(declare-fun res!1073434 () Bool)

(declare-fun e!1610346 () Bool)

(assert (=> b!2547727 (=> res!1073434 e!1610346)))

(assert (=> b!2547727 (= res!1073434 (not ((_ is Concat!12285) (ite c!407906 (regTwo!15691 (reg!7918 r!27340)) (regOne!15690 (reg!7918 r!27340))))))))

(declare-fun e!1610350 () Bool)

(assert (=> b!2547727 (= e!1610350 e!1610346)))

(declare-fun call!161808 () Bool)

(declare-fun bm!161803 () Bool)

(declare-fun c!408254 () Bool)

(declare-fun c!408253 () Bool)

(assert (=> bm!161803 (= call!161808 (validRegex!3215 (ite c!408254 (reg!7918 (ite c!407906 (regTwo!15691 (reg!7918 r!27340)) (regOne!15690 (reg!7918 r!27340)))) (ite c!408253 (regOne!15691 (ite c!407906 (regTwo!15691 (reg!7918 r!27340)) (regOne!15690 (reg!7918 r!27340)))) (regTwo!15690 (ite c!407906 (regTwo!15691 (reg!7918 r!27340)) (regOne!15690 (reg!7918 r!27340))))))))))

(declare-fun b!2547728 () Bool)

(declare-fun e!1610351 () Bool)

(assert (=> b!2547728 (= e!1610351 call!161808)))

(declare-fun bm!161804 () Bool)

(declare-fun call!161809 () Bool)

(assert (=> bm!161804 (= call!161809 call!161808)))

(declare-fun b!2547729 () Bool)

(declare-fun e!1610352 () Bool)

(assert (=> b!2547729 (= e!1610352 call!161809)))

(declare-fun b!2547730 () Bool)

(declare-fun e!1610349 () Bool)

(assert (=> b!2547730 (= e!1610349 e!1610350)))

(assert (=> b!2547730 (= c!408253 ((_ is Union!7589) (ite c!407906 (regTwo!15691 (reg!7918 r!27340)) (regOne!15690 (reg!7918 r!27340)))))))

(declare-fun b!2547731 () Bool)

(declare-fun e!1610348 () Bool)

(assert (=> b!2547731 (= e!1610348 e!1610349)))

(assert (=> b!2547731 (= c!408254 ((_ is Star!7589) (ite c!407906 (regTwo!15691 (reg!7918 r!27340)) (regOne!15690 (reg!7918 r!27340)))))))

(declare-fun d!722850 () Bool)

(declare-fun res!1073438 () Bool)

(assert (=> d!722850 (=> res!1073438 e!1610348)))

(assert (=> d!722850 (= res!1073438 ((_ is ElementMatch!7589) (ite c!407906 (regTwo!15691 (reg!7918 r!27340)) (regOne!15690 (reg!7918 r!27340)))))))

(assert (=> d!722850 (= (validRegex!3215 (ite c!407906 (regTwo!15691 (reg!7918 r!27340)) (regOne!15690 (reg!7918 r!27340)))) e!1610348)))

(declare-fun b!2547732 () Bool)

(assert (=> b!2547732 (= e!1610346 e!1610352)))

(declare-fun res!1073436 () Bool)

(assert (=> b!2547732 (=> (not res!1073436) (not e!1610352))))

(declare-fun call!161810 () Bool)

(assert (=> b!2547732 (= res!1073436 call!161810)))

(declare-fun b!2547733 () Bool)

(declare-fun e!1610347 () Bool)

(assert (=> b!2547733 (= e!1610347 call!161810)))

(declare-fun b!2547734 () Bool)

(assert (=> b!2547734 (= e!1610349 e!1610351)))

(declare-fun res!1073437 () Bool)

(assert (=> b!2547734 (= res!1073437 (not (nullable!2506 (reg!7918 (ite c!407906 (regTwo!15691 (reg!7918 r!27340)) (regOne!15690 (reg!7918 r!27340)))))))))

(assert (=> b!2547734 (=> (not res!1073437) (not e!1610351))))

(declare-fun b!2547735 () Bool)

(declare-fun res!1073435 () Bool)

(assert (=> b!2547735 (=> (not res!1073435) (not e!1610347))))

(assert (=> b!2547735 (= res!1073435 call!161809)))

(assert (=> b!2547735 (= e!1610350 e!1610347)))

(declare-fun bm!161805 () Bool)

(assert (=> bm!161805 (= call!161810 (validRegex!3215 (ite c!408253 (regTwo!15691 (ite c!407906 (regTwo!15691 (reg!7918 r!27340)) (regOne!15690 (reg!7918 r!27340)))) (regOne!15690 (ite c!407906 (regTwo!15691 (reg!7918 r!27340)) (regOne!15690 (reg!7918 r!27340)))))))))

(assert (= (and d!722850 (not res!1073438)) b!2547731))

(assert (= (and b!2547731 c!408254) b!2547734))

(assert (= (and b!2547731 (not c!408254)) b!2547730))

(assert (= (and b!2547734 res!1073437) b!2547728))

(assert (= (and b!2547730 c!408253) b!2547735))

(assert (= (and b!2547730 (not c!408253)) b!2547727))

(assert (= (and b!2547735 res!1073435) b!2547733))

(assert (= (and b!2547727 (not res!1073434)) b!2547732))

(assert (= (and b!2547732 res!1073436) b!2547729))

(assert (= (or b!2547735 b!2547729) bm!161804))

(assert (= (or b!2547733 b!2547732) bm!161805))

(assert (= (or b!2547728 bm!161804) bm!161803))

(declare-fun m!2892219 () Bool)

(assert (=> bm!161803 m!2892219))

(declare-fun m!2892221 () Bool)

(assert (=> b!2547734 m!2892221))

(declare-fun m!2892223 () Bool)

(assert (=> bm!161805 m!2892223))

(assert (=> bm!161573 d!722850))

(assert (=> b!2546717 d!722708))

(assert (=> b!2546717 d!722710))

(declare-fun b!2547739 () Bool)

(declare-fun e!1610354 () Bool)

(declare-fun lt!902910 () List!29654)

(assert (=> b!2547739 (= e!1610354 (or (not (= (_2!17322 lt!902762) Nil!29554)) (= lt!902910 (t!211353 (_1!17322 lt!902762)))))))

(declare-fun b!2547737 () Bool)

(declare-fun e!1610353 () List!29654)

(assert (=> b!2547737 (= e!1610353 (Cons!29554 (h!34974 (t!211353 (_1!17322 lt!902762))) (++!7256 (t!211353 (t!211353 (_1!17322 lt!902762))) (_2!17322 lt!902762))))))

(declare-fun d!722852 () Bool)

(assert (=> d!722852 e!1610354))

(declare-fun res!1073439 () Bool)

(assert (=> d!722852 (=> (not res!1073439) (not e!1610354))))

(assert (=> d!722852 (= res!1073439 (= (content!4062 lt!902910) ((_ map or) (content!4062 (t!211353 (_1!17322 lt!902762))) (content!4062 (_2!17322 lt!902762)))))))

(assert (=> d!722852 (= lt!902910 e!1610353)))

(declare-fun c!408255 () Bool)

(assert (=> d!722852 (= c!408255 ((_ is Nil!29554) (t!211353 (_1!17322 lt!902762))))))

(assert (=> d!722852 (= (++!7256 (t!211353 (_1!17322 lt!902762)) (_2!17322 lt!902762)) lt!902910)))

(declare-fun b!2547736 () Bool)

(assert (=> b!2547736 (= e!1610353 (_2!17322 lt!902762))))

(declare-fun b!2547738 () Bool)

(declare-fun res!1073440 () Bool)

(assert (=> b!2547738 (=> (not res!1073440) (not e!1610354))))

(assert (=> b!2547738 (= res!1073440 (= (size!22942 lt!902910) (+ (size!22942 (t!211353 (_1!17322 lt!902762))) (size!22942 (_2!17322 lt!902762)))))))

(assert (= (and d!722852 c!408255) b!2547736))

(assert (= (and d!722852 (not c!408255)) b!2547737))

(assert (= (and d!722852 res!1073439) b!2547738))

(assert (= (and b!2547738 res!1073440) b!2547739))

(declare-fun m!2892225 () Bool)

(assert (=> b!2547737 m!2892225))

(declare-fun m!2892227 () Bool)

(assert (=> d!722852 m!2892227))

(assert (=> d!722852 m!2892099))

(assert (=> d!722852 m!2891337))

(declare-fun m!2892229 () Bool)

(assert (=> b!2547738 m!2892229))

(assert (=> b!2547738 m!2891975))

(assert (=> b!2547738 m!2891343))

(assert (=> b!2546655 d!722852))

(declare-fun b!2547740 () Bool)

(declare-fun res!1073441 () Bool)

(declare-fun e!1610355 () Bool)

(assert (=> b!2547740 (=> res!1073441 e!1610355)))

(assert (=> b!2547740 (= res!1073441 (not ((_ is Concat!12285) (ite c!407951 (reg!7918 r!27340) (ite c!407950 (regOne!15691 r!27340) (regTwo!15690 r!27340))))))))

(declare-fun e!1610359 () Bool)

(assert (=> b!2547740 (= e!1610359 e!1610355)))

(declare-fun c!408256 () Bool)

(declare-fun call!161811 () Bool)

(declare-fun c!408257 () Bool)

(declare-fun bm!161806 () Bool)

(assert (=> bm!161806 (= call!161811 (validRegex!3215 (ite c!408257 (reg!7918 (ite c!407951 (reg!7918 r!27340) (ite c!407950 (regOne!15691 r!27340) (regTwo!15690 r!27340)))) (ite c!408256 (regOne!15691 (ite c!407951 (reg!7918 r!27340) (ite c!407950 (regOne!15691 r!27340) (regTwo!15690 r!27340)))) (regTwo!15690 (ite c!407951 (reg!7918 r!27340) (ite c!407950 (regOne!15691 r!27340) (regTwo!15690 r!27340))))))))))

(declare-fun b!2547741 () Bool)

(declare-fun e!1610360 () Bool)

(assert (=> b!2547741 (= e!1610360 call!161811)))

(declare-fun bm!161807 () Bool)

(declare-fun call!161812 () Bool)

(assert (=> bm!161807 (= call!161812 call!161811)))

(declare-fun b!2547742 () Bool)

(declare-fun e!1610361 () Bool)

(assert (=> b!2547742 (= e!1610361 call!161812)))

(declare-fun b!2547743 () Bool)

(declare-fun e!1610358 () Bool)

(assert (=> b!2547743 (= e!1610358 e!1610359)))

(assert (=> b!2547743 (= c!408256 ((_ is Union!7589) (ite c!407951 (reg!7918 r!27340) (ite c!407950 (regOne!15691 r!27340) (regTwo!15690 r!27340)))))))

(declare-fun b!2547744 () Bool)

(declare-fun e!1610357 () Bool)

(assert (=> b!2547744 (= e!1610357 e!1610358)))

(assert (=> b!2547744 (= c!408257 ((_ is Star!7589) (ite c!407951 (reg!7918 r!27340) (ite c!407950 (regOne!15691 r!27340) (regTwo!15690 r!27340)))))))

(declare-fun d!722854 () Bool)

(declare-fun res!1073445 () Bool)

(assert (=> d!722854 (=> res!1073445 e!1610357)))

(assert (=> d!722854 (= res!1073445 ((_ is ElementMatch!7589) (ite c!407951 (reg!7918 r!27340) (ite c!407950 (regOne!15691 r!27340) (regTwo!15690 r!27340)))))))

(assert (=> d!722854 (= (validRegex!3215 (ite c!407951 (reg!7918 r!27340) (ite c!407950 (regOne!15691 r!27340) (regTwo!15690 r!27340)))) e!1610357)))

(declare-fun b!2547745 () Bool)

(assert (=> b!2547745 (= e!1610355 e!1610361)))

(declare-fun res!1073443 () Bool)

(assert (=> b!2547745 (=> (not res!1073443) (not e!1610361))))

(declare-fun call!161813 () Bool)

(assert (=> b!2547745 (= res!1073443 call!161813)))

(declare-fun b!2547746 () Bool)

(declare-fun e!1610356 () Bool)

(assert (=> b!2547746 (= e!1610356 call!161813)))

(declare-fun b!2547747 () Bool)

(assert (=> b!2547747 (= e!1610358 e!1610360)))

(declare-fun res!1073444 () Bool)

(assert (=> b!2547747 (= res!1073444 (not (nullable!2506 (reg!7918 (ite c!407951 (reg!7918 r!27340) (ite c!407950 (regOne!15691 r!27340) (regTwo!15690 r!27340)))))))))

(assert (=> b!2547747 (=> (not res!1073444) (not e!1610360))))

(declare-fun b!2547748 () Bool)

(declare-fun res!1073442 () Bool)

(assert (=> b!2547748 (=> (not res!1073442) (not e!1610356))))

(assert (=> b!2547748 (= res!1073442 call!161812)))

(assert (=> b!2547748 (= e!1610359 e!1610356)))

(declare-fun bm!161808 () Bool)

(assert (=> bm!161808 (= call!161813 (validRegex!3215 (ite c!408256 (regTwo!15691 (ite c!407951 (reg!7918 r!27340) (ite c!407950 (regOne!15691 r!27340) (regTwo!15690 r!27340)))) (regOne!15690 (ite c!407951 (reg!7918 r!27340) (ite c!407950 (regOne!15691 r!27340) (regTwo!15690 r!27340)))))))))

(assert (= (and d!722854 (not res!1073445)) b!2547744))

(assert (= (and b!2547744 c!408257) b!2547747))

(assert (= (and b!2547744 (not c!408257)) b!2547743))

(assert (= (and b!2547747 res!1073444) b!2547741))

(assert (= (and b!2547743 c!408256) b!2547748))

(assert (= (and b!2547743 (not c!408256)) b!2547740))

(assert (= (and b!2547748 res!1073442) b!2547746))

(assert (= (and b!2547740 (not res!1073441)) b!2547745))

(assert (= (and b!2547745 res!1073443) b!2547742))

(assert (= (or b!2547748 b!2547742) bm!161807))

(assert (= (or b!2547746 b!2547745) bm!161808))

(assert (= (or b!2547741 bm!161807) bm!161806))

(declare-fun m!2892231 () Bool)

(assert (=> bm!161806 m!2892231))

(declare-fun m!2892233 () Bool)

(assert (=> b!2547747 m!2892233))

(declare-fun m!2892235 () Bool)

(assert (=> bm!161808 m!2892235))

(assert (=> bm!161588 d!722854))

(assert (=> b!2546411 d!722708))

(assert (=> b!2546411 d!722710))

(assert (=> d!722484 d!722758))

(assert (=> d!722484 d!722416))

(assert (=> b!2546735 d!722724))

(declare-fun call!161816 () Regex!7589)

(declare-fun b!2547749 () Bool)

(declare-fun e!1610362 () Regex!7589)

(assert (=> b!2547749 (= e!1610362 (Union!7589 (Concat!12285 call!161816 (regTwo!15690 (ite c!407992 (regTwo!15691 r!27340) (ite c!407991 (reg!7918 r!27340) (regOne!15690 r!27340))))) EmptyLang!7589))))

(declare-fun bm!161810 () Bool)

(declare-fun call!161817 () Regex!7589)

(assert (=> bm!161810 (= call!161816 call!161817)))

(declare-fun b!2547750 () Bool)

(declare-fun call!161814 () Regex!7589)

(assert (=> b!2547750 (= e!1610362 (Union!7589 (Concat!12285 call!161816 (regTwo!15690 (ite c!407992 (regTwo!15691 r!27340) (ite c!407991 (reg!7918 r!27340) (regOne!15690 r!27340))))) call!161814))))

(declare-fun bm!161811 () Bool)

(declare-fun call!161815 () Regex!7589)

(assert (=> bm!161811 (= call!161817 call!161815)))

(declare-fun b!2547751 () Bool)

(declare-fun e!1610363 () Regex!7589)

(assert (=> b!2547751 (= e!1610363 EmptyLang!7589)))

(declare-fun e!1610364 () Regex!7589)

(declare-fun b!2547752 () Bool)

(assert (=> b!2547752 (= e!1610364 (Concat!12285 call!161817 (ite c!407992 (regTwo!15691 r!27340) (ite c!407991 (reg!7918 r!27340) (regOne!15690 r!27340)))))))

(declare-fun b!2547753 () Bool)

(declare-fun c!408259 () Bool)

(assert (=> b!2547753 (= c!408259 (nullable!2506 (regOne!15690 (ite c!407992 (regTwo!15691 r!27340) (ite c!407991 (reg!7918 r!27340) (regOne!15690 r!27340))))))))

(assert (=> b!2547753 (= e!1610364 e!1610362)))

(declare-fun b!2547754 () Bool)

(declare-fun e!1610365 () Regex!7589)

(assert (=> b!2547754 (= e!1610365 (ite (= c!14016 (c!407871 (ite c!407992 (regTwo!15691 r!27340) (ite c!407991 (reg!7918 r!27340) (regOne!15690 r!27340))))) EmptyExpr!7589 EmptyLang!7589))))

(declare-fun b!2547755 () Bool)

(declare-fun c!408261 () Bool)

(assert (=> b!2547755 (= c!408261 ((_ is Union!7589) (ite c!407992 (regTwo!15691 r!27340) (ite c!407991 (reg!7918 r!27340) (regOne!15690 r!27340)))))))

(declare-fun e!1610366 () Regex!7589)

(assert (=> b!2547755 (= e!1610365 e!1610366)))

(declare-fun b!2547756 () Bool)

(assert (=> b!2547756 (= e!1610366 e!1610364)))

(declare-fun c!408260 () Bool)

(assert (=> b!2547756 (= c!408260 ((_ is Star!7589) (ite c!407992 (regTwo!15691 r!27340) (ite c!407991 (reg!7918 r!27340) (regOne!15690 r!27340)))))))

(declare-fun bm!161812 () Bool)

(assert (=> bm!161812 (= call!161814 (derivativeStep!2158 (ite c!408261 (regOne!15691 (ite c!407992 (regTwo!15691 r!27340) (ite c!407991 (reg!7918 r!27340) (regOne!15690 r!27340)))) (regTwo!15690 (ite c!407992 (regTwo!15691 r!27340) (ite c!407991 (reg!7918 r!27340) (regOne!15690 r!27340))))) c!14016))))

(declare-fun b!2547757 () Bool)

(assert (=> b!2547757 (= e!1610363 e!1610365)))

(declare-fun c!408258 () Bool)

(assert (=> b!2547757 (= c!408258 ((_ is ElementMatch!7589) (ite c!407992 (regTwo!15691 r!27340) (ite c!407991 (reg!7918 r!27340) (regOne!15690 r!27340)))))))

(declare-fun b!2547758 () Bool)

(assert (=> b!2547758 (= e!1610366 (Union!7589 call!161814 call!161815))))

(declare-fun d!722856 () Bool)

(declare-fun lt!902911 () Regex!7589)

(assert (=> d!722856 (validRegex!3215 lt!902911)))

(assert (=> d!722856 (= lt!902911 e!1610363)))

(declare-fun c!408262 () Bool)

(assert (=> d!722856 (= c!408262 (or ((_ is EmptyExpr!7589) (ite c!407992 (regTwo!15691 r!27340) (ite c!407991 (reg!7918 r!27340) (regOne!15690 r!27340)))) ((_ is EmptyLang!7589) (ite c!407992 (regTwo!15691 r!27340) (ite c!407991 (reg!7918 r!27340) (regOne!15690 r!27340))))))))

(assert (=> d!722856 (validRegex!3215 (ite c!407992 (regTwo!15691 r!27340) (ite c!407991 (reg!7918 r!27340) (regOne!15690 r!27340))))))

(assert (=> d!722856 (= (derivativeStep!2158 (ite c!407992 (regTwo!15691 r!27340) (ite c!407991 (reg!7918 r!27340) (regOne!15690 r!27340))) c!14016) lt!902911)))

(declare-fun bm!161809 () Bool)

(assert (=> bm!161809 (= call!161815 (derivativeStep!2158 (ite c!408261 (regTwo!15691 (ite c!407992 (regTwo!15691 r!27340) (ite c!407991 (reg!7918 r!27340) (regOne!15690 r!27340)))) (ite c!408260 (reg!7918 (ite c!407992 (regTwo!15691 r!27340) (ite c!407991 (reg!7918 r!27340) (regOne!15690 r!27340)))) (regOne!15690 (ite c!407992 (regTwo!15691 r!27340) (ite c!407991 (reg!7918 r!27340) (regOne!15690 r!27340)))))) c!14016))))

(assert (= (and d!722856 c!408262) b!2547751))

(assert (= (and d!722856 (not c!408262)) b!2547757))

(assert (= (and b!2547757 c!408258) b!2547754))

(assert (= (and b!2547757 (not c!408258)) b!2547755))

(assert (= (and b!2547755 c!408261) b!2547758))

(assert (= (and b!2547755 (not c!408261)) b!2547756))

(assert (= (and b!2547756 c!408260) b!2547752))

(assert (= (and b!2547756 (not c!408260)) b!2547753))

(assert (= (and b!2547753 c!408259) b!2547750))

(assert (= (and b!2547753 (not c!408259)) b!2547749))

(assert (= (or b!2547750 b!2547749) bm!161810))

(assert (= (or b!2547752 bm!161810) bm!161811))

(assert (= (or b!2547758 bm!161811) bm!161809))

(assert (= (or b!2547758 b!2547750) bm!161812))

(declare-fun m!2892237 () Bool)

(assert (=> b!2547753 m!2892237))

(declare-fun m!2892239 () Bool)

(assert (=> bm!161812 m!2892239))

(declare-fun m!2892241 () Bool)

(assert (=> d!722856 m!2892241))

(declare-fun m!2892243 () Bool)

(assert (=> d!722856 m!2892243))

(declare-fun m!2892245 () Bool)

(assert (=> bm!161809 m!2892245))

(assert (=> bm!161606 d!722856))

(assert (=> bm!161580 d!722728))

(declare-fun b!2547759 () Bool)

(declare-fun e!1610368 () Bool)

(declare-fun e!1610369 () Bool)

(assert (=> b!2547759 (= e!1610368 e!1610369)))

(declare-fun res!1073453 () Bool)

(assert (=> b!2547759 (=> res!1073453 e!1610369)))

(declare-fun call!161818 () Bool)

(assert (=> b!2547759 (= res!1073453 call!161818)))

(declare-fun b!2547760 () Bool)

(declare-fun res!1073449 () Bool)

(declare-fun e!1610367 () Bool)

(assert (=> b!2547760 (=> (not res!1073449) (not e!1610367))))

(assert (=> b!2547760 (= res!1073449 (isEmpty!16998 (tail!4073 (tail!4073 (Cons!29554 c!14016 (_1!17322 lt!902762))))))))

(declare-fun e!1610370 () Bool)

(declare-fun b!2547761 () Bool)

(assert (=> b!2547761 (= e!1610370 (matchR!3536 (derivativeStep!2158 (derivativeStep!2158 (reg!7918 r!27340) (head!5798 (Cons!29554 c!14016 (_1!17322 lt!902762)))) (head!5798 (tail!4073 (Cons!29554 c!14016 (_1!17322 lt!902762))))) (tail!4073 (tail!4073 (Cons!29554 c!14016 (_1!17322 lt!902762))))))))

(declare-fun bm!161813 () Bool)

(assert (=> bm!161813 (= call!161818 (isEmpty!16998 (tail!4073 (Cons!29554 c!14016 (_1!17322 lt!902762)))))))

(declare-fun b!2547762 () Bool)

(declare-fun res!1073448 () Bool)

(assert (=> b!2547762 (=> (not res!1073448) (not e!1610367))))

(assert (=> b!2547762 (= res!1073448 (not call!161818))))

(declare-fun b!2547763 () Bool)

(assert (=> b!2547763 (= e!1610367 (= (head!5798 (tail!4073 (Cons!29554 c!14016 (_1!17322 lt!902762)))) (c!407871 (derivativeStep!2158 (reg!7918 r!27340) (head!5798 (Cons!29554 c!14016 (_1!17322 lt!902762)))))))))

(declare-fun d!722858 () Bool)

(declare-fun e!1610371 () Bool)

(assert (=> d!722858 e!1610371))

(declare-fun c!408263 () Bool)

(assert (=> d!722858 (= c!408263 ((_ is EmptyExpr!7589) (derivativeStep!2158 (reg!7918 r!27340) (head!5798 (Cons!29554 c!14016 (_1!17322 lt!902762))))))))

(declare-fun lt!902912 () Bool)

(assert (=> d!722858 (= lt!902912 e!1610370)))

(declare-fun c!408265 () Bool)

(assert (=> d!722858 (= c!408265 (isEmpty!16998 (tail!4073 (Cons!29554 c!14016 (_1!17322 lt!902762)))))))

(assert (=> d!722858 (validRegex!3215 (derivativeStep!2158 (reg!7918 r!27340) (head!5798 (Cons!29554 c!14016 (_1!17322 lt!902762)))))))

(assert (=> d!722858 (= (matchR!3536 (derivativeStep!2158 (reg!7918 r!27340) (head!5798 (Cons!29554 c!14016 (_1!17322 lt!902762)))) (tail!4073 (Cons!29554 c!14016 (_1!17322 lt!902762)))) lt!902912)))

(declare-fun b!2547764 () Bool)

(declare-fun res!1073447 () Bool)

(assert (=> b!2547764 (=> res!1073447 e!1610369)))

(assert (=> b!2547764 (= res!1073447 (not (isEmpty!16998 (tail!4073 (tail!4073 (Cons!29554 c!14016 (_1!17322 lt!902762)))))))))

(declare-fun b!2547765 () Bool)

(declare-fun e!1610373 () Bool)

(assert (=> b!2547765 (= e!1610371 e!1610373)))

(declare-fun c!408264 () Bool)

(assert (=> b!2547765 (= c!408264 ((_ is EmptyLang!7589) (derivativeStep!2158 (reg!7918 r!27340) (head!5798 (Cons!29554 c!14016 (_1!17322 lt!902762))))))))

(declare-fun b!2547766 () Bool)

(declare-fun res!1073452 () Bool)

(declare-fun e!1610372 () Bool)

(assert (=> b!2547766 (=> res!1073452 e!1610372)))

(assert (=> b!2547766 (= res!1073452 (not ((_ is ElementMatch!7589) (derivativeStep!2158 (reg!7918 r!27340) (head!5798 (Cons!29554 c!14016 (_1!17322 lt!902762)))))))))

(assert (=> b!2547766 (= e!1610373 e!1610372)))

(declare-fun b!2547767 () Bool)

(assert (=> b!2547767 (= e!1610373 (not lt!902912))))

(declare-fun b!2547768 () Bool)

(assert (=> b!2547768 (= e!1610369 (not (= (head!5798 (tail!4073 (Cons!29554 c!14016 (_1!17322 lt!902762)))) (c!407871 (derivativeStep!2158 (reg!7918 r!27340) (head!5798 (Cons!29554 c!14016 (_1!17322 lt!902762))))))))))

(declare-fun b!2547769 () Bool)

(assert (=> b!2547769 (= e!1610372 e!1610368)))

(declare-fun res!1073451 () Bool)

(assert (=> b!2547769 (=> (not res!1073451) (not e!1610368))))

(assert (=> b!2547769 (= res!1073451 (not lt!902912))))

(declare-fun b!2547770 () Bool)

(declare-fun res!1073450 () Bool)

(assert (=> b!2547770 (=> res!1073450 e!1610372)))

(assert (=> b!2547770 (= res!1073450 e!1610367)))

(declare-fun res!1073446 () Bool)

(assert (=> b!2547770 (=> (not res!1073446) (not e!1610367))))

(assert (=> b!2547770 (= res!1073446 lt!902912)))

(declare-fun b!2547771 () Bool)

(assert (=> b!2547771 (= e!1610370 (nullable!2506 (derivativeStep!2158 (reg!7918 r!27340) (head!5798 (Cons!29554 c!14016 (_1!17322 lt!902762))))))))

(declare-fun b!2547772 () Bool)

(assert (=> b!2547772 (= e!1610371 (= lt!902912 call!161818))))

(assert (= (and d!722858 c!408265) b!2547771))

(assert (= (and d!722858 (not c!408265)) b!2547761))

(assert (= (and d!722858 c!408263) b!2547772))

(assert (= (and d!722858 (not c!408263)) b!2547765))

(assert (= (and b!2547765 c!408264) b!2547767))

(assert (= (and b!2547765 (not c!408264)) b!2547766))

(assert (= (and b!2547766 (not res!1073452)) b!2547770))

(assert (= (and b!2547770 res!1073446) b!2547762))

(assert (= (and b!2547762 res!1073448) b!2547760))

(assert (= (and b!2547760 res!1073449) b!2547763))

(assert (= (and b!2547770 (not res!1073450)) b!2547769))

(assert (= (and b!2547769 res!1073451) b!2547759))

(assert (= (and b!2547759 (not res!1073453)) b!2547764))

(assert (= (and b!2547764 (not res!1073447)) b!2547768))

(assert (= (or b!2547772 b!2547759 b!2547762) bm!161813))

(assert (=> d!722858 m!2891369))

(assert (=> d!722858 m!2891373))

(assert (=> d!722858 m!2891367))

(declare-fun m!2892247 () Bool)

(assert (=> d!722858 m!2892247))

(assert (=> b!2547768 m!2891369))

(declare-fun m!2892249 () Bool)

(assert (=> b!2547768 m!2892249))

(assert (=> b!2547761 m!2891369))

(assert (=> b!2547761 m!2892249))

(assert (=> b!2547761 m!2891367))

(assert (=> b!2547761 m!2892249))

(declare-fun m!2892251 () Bool)

(assert (=> b!2547761 m!2892251))

(assert (=> b!2547761 m!2891369))

(declare-fun m!2892253 () Bool)

(assert (=> b!2547761 m!2892253))

(assert (=> b!2547761 m!2892251))

(assert (=> b!2547761 m!2892253))

(declare-fun m!2892255 () Bool)

(assert (=> b!2547761 m!2892255))

(assert (=> b!2547764 m!2891369))

(assert (=> b!2547764 m!2892253))

(assert (=> b!2547764 m!2892253))

(declare-fun m!2892257 () Bool)

(assert (=> b!2547764 m!2892257))

(assert (=> b!2547760 m!2891369))

(assert (=> b!2547760 m!2892253))

(assert (=> b!2547760 m!2892253))

(assert (=> b!2547760 m!2892257))

(assert (=> bm!161813 m!2891369))

(assert (=> bm!161813 m!2891373))

(assert (=> b!2547771 m!2891367))

(declare-fun m!2892259 () Bool)

(assert (=> b!2547771 m!2892259))

(assert (=> b!2547763 m!2891369))

(assert (=> b!2547763 m!2892249))

(assert (=> b!2546674 d!722858))

(declare-fun b!2547773 () Bool)

(declare-fun e!1610374 () Regex!7589)

(declare-fun call!161821 () Regex!7589)

(assert (=> b!2547773 (= e!1610374 (Union!7589 (Concat!12285 call!161821 (regTwo!15690 (reg!7918 r!27340))) EmptyLang!7589))))

(declare-fun bm!161815 () Bool)

(declare-fun call!161822 () Regex!7589)

(assert (=> bm!161815 (= call!161821 call!161822)))

(declare-fun b!2547774 () Bool)

(declare-fun call!161819 () Regex!7589)

(assert (=> b!2547774 (= e!1610374 (Union!7589 (Concat!12285 call!161821 (regTwo!15690 (reg!7918 r!27340))) call!161819))))

(declare-fun bm!161816 () Bool)

(declare-fun call!161820 () Regex!7589)

(assert (=> bm!161816 (= call!161822 call!161820)))

(declare-fun b!2547775 () Bool)

(declare-fun e!1610375 () Regex!7589)

(assert (=> b!2547775 (= e!1610375 EmptyLang!7589)))

(declare-fun b!2547776 () Bool)

(declare-fun e!1610376 () Regex!7589)

(assert (=> b!2547776 (= e!1610376 (Concat!12285 call!161822 (reg!7918 r!27340)))))

(declare-fun b!2547777 () Bool)

(declare-fun c!408267 () Bool)

(assert (=> b!2547777 (= c!408267 (nullable!2506 (regOne!15690 (reg!7918 r!27340))))))

(assert (=> b!2547777 (= e!1610376 e!1610374)))

(declare-fun b!2547778 () Bool)

(declare-fun e!1610377 () Regex!7589)

(assert (=> b!2547778 (= e!1610377 (ite (= (head!5798 (Cons!29554 c!14016 (_1!17322 lt!902762))) (c!407871 (reg!7918 r!27340))) EmptyExpr!7589 EmptyLang!7589))))

(declare-fun b!2547779 () Bool)

(declare-fun c!408269 () Bool)

(assert (=> b!2547779 (= c!408269 ((_ is Union!7589) (reg!7918 r!27340)))))

(declare-fun e!1610378 () Regex!7589)

(assert (=> b!2547779 (= e!1610377 e!1610378)))

(declare-fun b!2547780 () Bool)

(assert (=> b!2547780 (= e!1610378 e!1610376)))

(declare-fun c!408268 () Bool)

(assert (=> b!2547780 (= c!408268 ((_ is Star!7589) (reg!7918 r!27340)))))

(declare-fun bm!161817 () Bool)

(assert (=> bm!161817 (= call!161819 (derivativeStep!2158 (ite c!408269 (regOne!15691 (reg!7918 r!27340)) (regTwo!15690 (reg!7918 r!27340))) (head!5798 (Cons!29554 c!14016 (_1!17322 lt!902762)))))))

(declare-fun b!2547781 () Bool)

(assert (=> b!2547781 (= e!1610375 e!1610377)))

(declare-fun c!408266 () Bool)

(assert (=> b!2547781 (= c!408266 ((_ is ElementMatch!7589) (reg!7918 r!27340)))))

(declare-fun b!2547782 () Bool)

(assert (=> b!2547782 (= e!1610378 (Union!7589 call!161819 call!161820))))

(declare-fun d!722860 () Bool)

(declare-fun lt!902913 () Regex!7589)

(assert (=> d!722860 (validRegex!3215 lt!902913)))

(assert (=> d!722860 (= lt!902913 e!1610375)))

(declare-fun c!408270 () Bool)

(assert (=> d!722860 (= c!408270 (or ((_ is EmptyExpr!7589) (reg!7918 r!27340)) ((_ is EmptyLang!7589) (reg!7918 r!27340))))))

(assert (=> d!722860 (validRegex!3215 (reg!7918 r!27340))))

(assert (=> d!722860 (= (derivativeStep!2158 (reg!7918 r!27340) (head!5798 (Cons!29554 c!14016 (_1!17322 lt!902762)))) lt!902913)))

(declare-fun bm!161814 () Bool)

(assert (=> bm!161814 (= call!161820 (derivativeStep!2158 (ite c!408269 (regTwo!15691 (reg!7918 r!27340)) (ite c!408268 (reg!7918 (reg!7918 r!27340)) (regOne!15690 (reg!7918 r!27340)))) (head!5798 (Cons!29554 c!14016 (_1!17322 lt!902762)))))))

(assert (= (and d!722860 c!408270) b!2547775))

(assert (= (and d!722860 (not c!408270)) b!2547781))

(assert (= (and b!2547781 c!408266) b!2547778))

(assert (= (and b!2547781 (not c!408266)) b!2547779))

(assert (= (and b!2547779 c!408269) b!2547782))

(assert (= (and b!2547779 (not c!408269)) b!2547780))

(assert (= (and b!2547780 c!408268) b!2547776))

(assert (= (and b!2547780 (not c!408268)) b!2547777))

(assert (= (and b!2547777 c!408267) b!2547774))

(assert (= (and b!2547777 (not c!408267)) b!2547773))

(assert (= (or b!2547774 b!2547773) bm!161815))

(assert (= (or b!2547776 bm!161815) bm!161816))

(assert (= (or b!2547782 bm!161816) bm!161814))

(assert (= (or b!2547782 b!2547774) bm!161817))

(assert (=> b!2547777 m!2891077))

(assert (=> bm!161817 m!2891365))

(declare-fun m!2892261 () Bool)

(assert (=> bm!161817 m!2892261))

(declare-fun m!2892263 () Bool)

(assert (=> d!722860 m!2892263))

(assert (=> d!722860 m!2891031))

(assert (=> bm!161814 m!2891365))

(declare-fun m!2892265 () Bool)

(assert (=> bm!161814 m!2892265))

(assert (=> b!2546674 d!722860))

(assert (=> b!2546674 d!722778))

(assert (=> b!2546674 d!722752))

(assert (=> b!2546699 d!722792))

(assert (=> b!2546699 d!722764))

(assert (=> b!2546414 d!722662))

(assert (=> b!2546724 d!722486))

(assert (=> bm!161610 d!722754))

(declare-fun call!161825 () Regex!7589)

(declare-fun e!1610379 () Regex!7589)

(declare-fun b!2547783 () Bool)

(assert (=> b!2547783 (= e!1610379 (Union!7589 (Concat!12285 call!161825 (regTwo!15690 (ite c!407895 (regTwo!15691 (reg!7918 r!27340)) (ite c!407894 (reg!7918 (reg!7918 r!27340)) (regOne!15690 (reg!7918 r!27340)))))) EmptyLang!7589))))

(declare-fun bm!161819 () Bool)

(declare-fun call!161826 () Regex!7589)

(assert (=> bm!161819 (= call!161825 call!161826)))

(declare-fun call!161823 () Regex!7589)

(declare-fun b!2547784 () Bool)

(assert (=> b!2547784 (= e!1610379 (Union!7589 (Concat!12285 call!161825 (regTwo!15690 (ite c!407895 (regTwo!15691 (reg!7918 r!27340)) (ite c!407894 (reg!7918 (reg!7918 r!27340)) (regOne!15690 (reg!7918 r!27340)))))) call!161823))))

(declare-fun bm!161820 () Bool)

(declare-fun call!161824 () Regex!7589)

(assert (=> bm!161820 (= call!161826 call!161824)))

(declare-fun b!2547785 () Bool)

(declare-fun e!1610380 () Regex!7589)

(assert (=> b!2547785 (= e!1610380 EmptyLang!7589)))

(declare-fun e!1610381 () Regex!7589)

(declare-fun b!2547786 () Bool)

(assert (=> b!2547786 (= e!1610381 (Concat!12285 call!161826 (ite c!407895 (regTwo!15691 (reg!7918 r!27340)) (ite c!407894 (reg!7918 (reg!7918 r!27340)) (regOne!15690 (reg!7918 r!27340))))))))

(declare-fun b!2547787 () Bool)

(declare-fun c!408272 () Bool)

(assert (=> b!2547787 (= c!408272 (nullable!2506 (regOne!15690 (ite c!407895 (regTwo!15691 (reg!7918 r!27340)) (ite c!407894 (reg!7918 (reg!7918 r!27340)) (regOne!15690 (reg!7918 r!27340)))))))))

(assert (=> b!2547787 (= e!1610381 e!1610379)))

(declare-fun e!1610382 () Regex!7589)

(declare-fun b!2547788 () Bool)

(assert (=> b!2547788 (= e!1610382 (ite (= c!14016 (c!407871 (ite c!407895 (regTwo!15691 (reg!7918 r!27340)) (ite c!407894 (reg!7918 (reg!7918 r!27340)) (regOne!15690 (reg!7918 r!27340)))))) EmptyExpr!7589 EmptyLang!7589))))

(declare-fun c!408274 () Bool)

(declare-fun b!2547789 () Bool)

(assert (=> b!2547789 (= c!408274 ((_ is Union!7589) (ite c!407895 (regTwo!15691 (reg!7918 r!27340)) (ite c!407894 (reg!7918 (reg!7918 r!27340)) (regOne!15690 (reg!7918 r!27340))))))))

(declare-fun e!1610383 () Regex!7589)

(assert (=> b!2547789 (= e!1610382 e!1610383)))

(declare-fun b!2547790 () Bool)

(assert (=> b!2547790 (= e!1610383 e!1610381)))

(declare-fun c!408273 () Bool)

(assert (=> b!2547790 (= c!408273 ((_ is Star!7589) (ite c!407895 (regTwo!15691 (reg!7918 r!27340)) (ite c!407894 (reg!7918 (reg!7918 r!27340)) (regOne!15690 (reg!7918 r!27340))))))))

(declare-fun bm!161821 () Bool)

(assert (=> bm!161821 (= call!161823 (derivativeStep!2158 (ite c!408274 (regOne!15691 (ite c!407895 (regTwo!15691 (reg!7918 r!27340)) (ite c!407894 (reg!7918 (reg!7918 r!27340)) (regOne!15690 (reg!7918 r!27340))))) (regTwo!15690 (ite c!407895 (regTwo!15691 (reg!7918 r!27340)) (ite c!407894 (reg!7918 (reg!7918 r!27340)) (regOne!15690 (reg!7918 r!27340)))))) c!14016))))

(declare-fun b!2547791 () Bool)

(assert (=> b!2547791 (= e!1610380 e!1610382)))

(declare-fun c!408271 () Bool)

(assert (=> b!2547791 (= c!408271 ((_ is ElementMatch!7589) (ite c!407895 (regTwo!15691 (reg!7918 r!27340)) (ite c!407894 (reg!7918 (reg!7918 r!27340)) (regOne!15690 (reg!7918 r!27340))))))))

(declare-fun b!2547792 () Bool)

(assert (=> b!2547792 (= e!1610383 (Union!7589 call!161823 call!161824))))

(declare-fun d!722862 () Bool)

(declare-fun lt!902914 () Regex!7589)

(assert (=> d!722862 (validRegex!3215 lt!902914)))

(assert (=> d!722862 (= lt!902914 e!1610380)))

(declare-fun c!408275 () Bool)

(assert (=> d!722862 (= c!408275 (or ((_ is EmptyExpr!7589) (ite c!407895 (regTwo!15691 (reg!7918 r!27340)) (ite c!407894 (reg!7918 (reg!7918 r!27340)) (regOne!15690 (reg!7918 r!27340))))) ((_ is EmptyLang!7589) (ite c!407895 (regTwo!15691 (reg!7918 r!27340)) (ite c!407894 (reg!7918 (reg!7918 r!27340)) (regOne!15690 (reg!7918 r!27340)))))))))

(assert (=> d!722862 (validRegex!3215 (ite c!407895 (regTwo!15691 (reg!7918 r!27340)) (ite c!407894 (reg!7918 (reg!7918 r!27340)) (regOne!15690 (reg!7918 r!27340)))))))

(assert (=> d!722862 (= (derivativeStep!2158 (ite c!407895 (regTwo!15691 (reg!7918 r!27340)) (ite c!407894 (reg!7918 (reg!7918 r!27340)) (regOne!15690 (reg!7918 r!27340)))) c!14016) lt!902914)))

(declare-fun bm!161818 () Bool)

(assert (=> bm!161818 (= call!161824 (derivativeStep!2158 (ite c!408274 (regTwo!15691 (ite c!407895 (regTwo!15691 (reg!7918 r!27340)) (ite c!407894 (reg!7918 (reg!7918 r!27340)) (regOne!15690 (reg!7918 r!27340))))) (ite c!408273 (reg!7918 (ite c!407895 (regTwo!15691 (reg!7918 r!27340)) (ite c!407894 (reg!7918 (reg!7918 r!27340)) (regOne!15690 (reg!7918 r!27340))))) (regOne!15690 (ite c!407895 (regTwo!15691 (reg!7918 r!27340)) (ite c!407894 (reg!7918 (reg!7918 r!27340)) (regOne!15690 (reg!7918 r!27340))))))) c!14016))))

(assert (= (and d!722862 c!408275) b!2547785))

(assert (= (and d!722862 (not c!408275)) b!2547791))

(assert (= (and b!2547791 c!408271) b!2547788))

(assert (= (and b!2547791 (not c!408271)) b!2547789))

(assert (= (and b!2547789 c!408274) b!2547792))

(assert (= (and b!2547789 (not c!408274)) b!2547790))

(assert (= (and b!2547790 c!408273) b!2547786))

(assert (= (and b!2547790 (not c!408273)) b!2547787))

(assert (= (and b!2547787 c!408272) b!2547784))

(assert (= (and b!2547787 (not c!408272)) b!2547783))

(assert (= (or b!2547784 b!2547783) bm!161819))

(assert (= (or b!2547786 bm!161819) bm!161820))

(assert (= (or b!2547792 bm!161820) bm!161818))

(assert (= (or b!2547792 b!2547784) bm!161821))

(declare-fun m!2892267 () Bool)

(assert (=> b!2547787 m!2892267))

(declare-fun m!2892269 () Bool)

(assert (=> bm!161821 m!2892269))

(declare-fun m!2892271 () Bool)

(assert (=> d!722862 m!2892271))

(declare-fun m!2892273 () Bool)

(assert (=> d!722862 m!2892273))

(declare-fun m!2892275 () Bool)

(assert (=> bm!161818 m!2892275))

(assert (=> bm!161551 d!722862))

(assert (=> b!2546659 d!722696))

(assert (=> b!2546659 d!722698))

(declare-fun b!2547793 () Bool)

(declare-fun res!1073454 () Bool)

(declare-fun e!1610384 () Bool)

(assert (=> b!2547793 (=> res!1073454 e!1610384)))

(assert (=> b!2547793 (= res!1073454 (not ((_ is Concat!12285) lt!902831)))))

(declare-fun e!1610388 () Bool)

(assert (=> b!2547793 (= e!1610388 e!1610384)))

(declare-fun bm!161822 () Bool)

(declare-fun call!161827 () Bool)

(declare-fun c!408277 () Bool)

(declare-fun c!408276 () Bool)

(assert (=> bm!161822 (= call!161827 (validRegex!3215 (ite c!408277 (reg!7918 lt!902831) (ite c!408276 (regOne!15691 lt!902831) (regTwo!15690 lt!902831)))))))

(declare-fun b!2547794 () Bool)

(declare-fun e!1610389 () Bool)

(assert (=> b!2547794 (= e!1610389 call!161827)))

(declare-fun bm!161823 () Bool)

(declare-fun call!161828 () Bool)

(assert (=> bm!161823 (= call!161828 call!161827)))

(declare-fun b!2547795 () Bool)

(declare-fun e!1610390 () Bool)

(assert (=> b!2547795 (= e!1610390 call!161828)))

(declare-fun b!2547796 () Bool)

(declare-fun e!1610387 () Bool)

(assert (=> b!2547796 (= e!1610387 e!1610388)))

(assert (=> b!2547796 (= c!408276 ((_ is Union!7589) lt!902831))))

(declare-fun b!2547797 () Bool)

(declare-fun e!1610386 () Bool)

(assert (=> b!2547797 (= e!1610386 e!1610387)))

(assert (=> b!2547797 (= c!408277 ((_ is Star!7589) lt!902831))))

(declare-fun d!722864 () Bool)

(declare-fun res!1073458 () Bool)

(assert (=> d!722864 (=> res!1073458 e!1610386)))

(assert (=> d!722864 (= res!1073458 ((_ is ElementMatch!7589) lt!902831))))

(assert (=> d!722864 (= (validRegex!3215 lt!902831) e!1610386)))

(declare-fun b!2547798 () Bool)

(assert (=> b!2547798 (= e!1610384 e!1610390)))

(declare-fun res!1073456 () Bool)

(assert (=> b!2547798 (=> (not res!1073456) (not e!1610390))))

(declare-fun call!161829 () Bool)

(assert (=> b!2547798 (= res!1073456 call!161829)))

(declare-fun b!2547799 () Bool)

(declare-fun e!1610385 () Bool)

(assert (=> b!2547799 (= e!1610385 call!161829)))

(declare-fun b!2547800 () Bool)

(assert (=> b!2547800 (= e!1610387 e!1610389)))

(declare-fun res!1073457 () Bool)

(assert (=> b!2547800 (= res!1073457 (not (nullable!2506 (reg!7918 lt!902831))))))

(assert (=> b!2547800 (=> (not res!1073457) (not e!1610389))))

(declare-fun b!2547801 () Bool)

(declare-fun res!1073455 () Bool)

(assert (=> b!2547801 (=> (not res!1073455) (not e!1610385))))

(assert (=> b!2547801 (= res!1073455 call!161828)))

(assert (=> b!2547801 (= e!1610388 e!1610385)))

(declare-fun bm!161824 () Bool)

(assert (=> bm!161824 (= call!161829 (validRegex!3215 (ite c!408276 (regTwo!15691 lt!902831) (regOne!15690 lt!902831))))))

(assert (= (and d!722864 (not res!1073458)) b!2547797))

(assert (= (and b!2547797 c!408277) b!2547800))

(assert (= (and b!2547797 (not c!408277)) b!2547796))

(assert (= (and b!2547800 res!1073457) b!2547794))

(assert (= (and b!2547796 c!408276) b!2547801))

(assert (= (and b!2547796 (not c!408276)) b!2547793))

(assert (= (and b!2547801 res!1073455) b!2547799))

(assert (= (and b!2547793 (not res!1073454)) b!2547798))

(assert (= (and b!2547798 res!1073456) b!2547795))

(assert (= (or b!2547801 b!2547795) bm!161823))

(assert (= (or b!2547799 b!2547798) bm!161824))

(assert (= (or b!2547794 bm!161823) bm!161822))

(declare-fun m!2892277 () Bool)

(assert (=> bm!161822 m!2892277))

(declare-fun m!2892279 () Bool)

(assert (=> b!2547800 m!2892279))

(declare-fun m!2892281 () Bool)

(assert (=> bm!161824 m!2892281))

(assert (=> d!722490 d!722864))

(assert (=> d!722490 d!722450))

(assert (=> b!2546491 d!722712))

(assert (=> b!2546677 d!722750))

(assert (=> b!2546677 d!722752))

(assert (=> b!2546702 d!722700))

(assert (=> bm!161604 d!722774))

(declare-fun d!722866 () Bool)

(assert (=> d!722866 (= (nullable!2506 (regOne!15690 r!27340)) (nullableFct!731 (regOne!15690 r!27340)))))

(declare-fun bs!469551 () Bool)

(assert (= bs!469551 d!722866))

(declare-fun m!2892283 () Bool)

(assert (=> bs!469551 m!2892283))

(assert (=> b!2546692 d!722866))

(declare-fun b!2547803 () Bool)

(declare-fun e!1610391 () Bool)

(declare-fun tp!813017 () Bool)

(declare-fun tp!813018 () Bool)

(assert (=> b!2547803 (= e!1610391 (and tp!813017 tp!813018))))

(declare-fun b!2547804 () Bool)

(declare-fun tp!813020 () Bool)

(assert (=> b!2547804 (= e!1610391 tp!813020)))

(assert (=> b!2546766 (= tp!812876 e!1610391)))

(declare-fun b!2547802 () Bool)

(assert (=> b!2547802 (= e!1610391 tp_is_empty!13033)))

(declare-fun b!2547805 () Bool)

(declare-fun tp!813019 () Bool)

(declare-fun tp!813021 () Bool)

(assert (=> b!2547805 (= e!1610391 (and tp!813019 tp!813021))))

(assert (= (and b!2546766 ((_ is ElementMatch!7589) (regOne!15690 (reg!7918 r!27340)))) b!2547802))

(assert (= (and b!2546766 ((_ is Concat!12285) (regOne!15690 (reg!7918 r!27340)))) b!2547803))

(assert (= (and b!2546766 ((_ is Star!7589) (regOne!15690 (reg!7918 r!27340)))) b!2547804))

(assert (= (and b!2546766 ((_ is Union!7589) (regOne!15690 (reg!7918 r!27340)))) b!2547805))

(declare-fun b!2547807 () Bool)

(declare-fun e!1610392 () Bool)

(declare-fun tp!813022 () Bool)

(declare-fun tp!813023 () Bool)

(assert (=> b!2547807 (= e!1610392 (and tp!813022 tp!813023))))

(declare-fun b!2547808 () Bool)

(declare-fun tp!813025 () Bool)

(assert (=> b!2547808 (= e!1610392 tp!813025)))

(assert (=> b!2546766 (= tp!812877 e!1610392)))

(declare-fun b!2547806 () Bool)

(assert (=> b!2547806 (= e!1610392 tp_is_empty!13033)))

(declare-fun b!2547809 () Bool)

(declare-fun tp!813024 () Bool)

(declare-fun tp!813026 () Bool)

(assert (=> b!2547809 (= e!1610392 (and tp!813024 tp!813026))))

(assert (= (and b!2546766 ((_ is ElementMatch!7589) (regTwo!15690 (reg!7918 r!27340)))) b!2547806))

(assert (= (and b!2546766 ((_ is Concat!12285) (regTwo!15690 (reg!7918 r!27340)))) b!2547807))

(assert (= (and b!2546766 ((_ is Star!7589) (regTwo!15690 (reg!7918 r!27340)))) b!2547808))

(assert (= (and b!2546766 ((_ is Union!7589) (regTwo!15690 (reg!7918 r!27340)))) b!2547809))

(declare-fun b!2547811 () Bool)

(declare-fun e!1610393 () Bool)

(declare-fun tp!813027 () Bool)

(declare-fun tp!813028 () Bool)

(assert (=> b!2547811 (= e!1610393 (and tp!813027 tp!813028))))

(declare-fun b!2547812 () Bool)

(declare-fun tp!813030 () Bool)

(assert (=> b!2547812 (= e!1610393 tp!813030)))

(assert (=> b!2546771 (= tp!812884 e!1610393)))

(declare-fun b!2547810 () Bool)

(assert (=> b!2547810 (= e!1610393 tp_is_empty!13033)))

(declare-fun b!2547813 () Bool)

(declare-fun tp!813029 () Bool)

(declare-fun tp!813031 () Bool)

(assert (=> b!2547813 (= e!1610393 (and tp!813029 tp!813031))))

(assert (= (and b!2546771 ((_ is ElementMatch!7589) (reg!7918 (regOne!15691 r!27340)))) b!2547810))

(assert (= (and b!2546771 ((_ is Concat!12285) (reg!7918 (regOne!15691 r!27340)))) b!2547811))

(assert (= (and b!2546771 ((_ is Star!7589) (reg!7918 (regOne!15691 r!27340)))) b!2547812))

(assert (= (and b!2546771 ((_ is Union!7589) (reg!7918 (regOne!15691 r!27340)))) b!2547813))

(declare-fun b!2547815 () Bool)

(declare-fun e!1610394 () Bool)

(declare-fun tp!813032 () Bool)

(declare-fun tp!813033 () Bool)

(assert (=> b!2547815 (= e!1610394 (and tp!813032 tp!813033))))

(declare-fun b!2547816 () Bool)

(declare-fun tp!813035 () Bool)

(assert (=> b!2547816 (= e!1610394 tp!813035)))

(assert (=> b!2546774 (= tp!812886 e!1610394)))

(declare-fun b!2547814 () Bool)

(assert (=> b!2547814 (= e!1610394 tp_is_empty!13033)))

(declare-fun b!2547817 () Bool)

(declare-fun tp!813034 () Bool)

(declare-fun tp!813036 () Bool)

(assert (=> b!2547817 (= e!1610394 (and tp!813034 tp!813036))))

(assert (= (and b!2546774 ((_ is ElementMatch!7589) (regOne!15690 (regTwo!15691 r!27340)))) b!2547814))

(assert (= (and b!2546774 ((_ is Concat!12285) (regOne!15690 (regTwo!15691 r!27340)))) b!2547815))

(assert (= (and b!2546774 ((_ is Star!7589) (regOne!15690 (regTwo!15691 r!27340)))) b!2547816))

(assert (= (and b!2546774 ((_ is Union!7589) (regOne!15690 (regTwo!15691 r!27340)))) b!2547817))

(declare-fun b!2547819 () Bool)

(declare-fun e!1610395 () Bool)

(declare-fun tp!813037 () Bool)

(declare-fun tp!813038 () Bool)

(assert (=> b!2547819 (= e!1610395 (and tp!813037 tp!813038))))

(declare-fun b!2547820 () Bool)

(declare-fun tp!813040 () Bool)

(assert (=> b!2547820 (= e!1610395 tp!813040)))

(assert (=> b!2546774 (= tp!812887 e!1610395)))

(declare-fun b!2547818 () Bool)

(assert (=> b!2547818 (= e!1610395 tp_is_empty!13033)))

(declare-fun b!2547821 () Bool)

(declare-fun tp!813039 () Bool)

(declare-fun tp!813041 () Bool)

(assert (=> b!2547821 (= e!1610395 (and tp!813039 tp!813041))))

(assert (= (and b!2546774 ((_ is ElementMatch!7589) (regTwo!15690 (regTwo!15691 r!27340)))) b!2547818))

(assert (= (and b!2546774 ((_ is Concat!12285) (regTwo!15690 (regTwo!15691 r!27340)))) b!2547819))

(assert (= (and b!2546774 ((_ is Star!7589) (regTwo!15690 (regTwo!15691 r!27340)))) b!2547820))

(assert (= (and b!2546774 ((_ is Union!7589) (regTwo!15690 (regTwo!15691 r!27340)))) b!2547821))

(declare-fun b!2547823 () Bool)

(declare-fun e!1610396 () Bool)

(declare-fun tp!813042 () Bool)

(declare-fun tp!813043 () Bool)

(assert (=> b!2547823 (= e!1610396 (and tp!813042 tp!813043))))

(declare-fun b!2547824 () Bool)

(declare-fun tp!813045 () Bool)

(assert (=> b!2547824 (= e!1610396 tp!813045)))

(assert (=> b!2546767 (= tp!812879 e!1610396)))

(declare-fun b!2547822 () Bool)

(assert (=> b!2547822 (= e!1610396 tp_is_empty!13033)))

(declare-fun b!2547825 () Bool)

(declare-fun tp!813044 () Bool)

(declare-fun tp!813046 () Bool)

(assert (=> b!2547825 (= e!1610396 (and tp!813044 tp!813046))))

(assert (= (and b!2546767 ((_ is ElementMatch!7589) (reg!7918 (reg!7918 r!27340)))) b!2547822))

(assert (= (and b!2546767 ((_ is Concat!12285) (reg!7918 (reg!7918 r!27340)))) b!2547823))

(assert (= (and b!2546767 ((_ is Star!7589) (reg!7918 (reg!7918 r!27340)))) b!2547824))

(assert (= (and b!2546767 ((_ is Union!7589) (reg!7918 (reg!7918 r!27340)))) b!2547825))

(declare-fun b!2547827 () Bool)

(declare-fun e!1610397 () Bool)

(declare-fun tp!813047 () Bool)

(declare-fun tp!813048 () Bool)

(assert (=> b!2547827 (= e!1610397 (and tp!813047 tp!813048))))

(declare-fun b!2547828 () Bool)

(declare-fun tp!813050 () Bool)

(assert (=> b!2547828 (= e!1610397 tp!813050)))

(assert (=> b!2546772 (= tp!812883 e!1610397)))

(declare-fun b!2547826 () Bool)

(assert (=> b!2547826 (= e!1610397 tp_is_empty!13033)))

(declare-fun b!2547829 () Bool)

(declare-fun tp!813049 () Bool)

(declare-fun tp!813051 () Bool)

(assert (=> b!2547829 (= e!1610397 (and tp!813049 tp!813051))))

(assert (= (and b!2546772 ((_ is ElementMatch!7589) (regOne!15691 (regOne!15691 r!27340)))) b!2547826))

(assert (= (and b!2546772 ((_ is Concat!12285) (regOne!15691 (regOne!15691 r!27340)))) b!2547827))

(assert (= (and b!2546772 ((_ is Star!7589) (regOne!15691 (regOne!15691 r!27340)))) b!2547828))

(assert (= (and b!2546772 ((_ is Union!7589) (regOne!15691 (regOne!15691 r!27340)))) b!2547829))

(declare-fun b!2547831 () Bool)

(declare-fun e!1610398 () Bool)

(declare-fun tp!813052 () Bool)

(declare-fun tp!813053 () Bool)

(assert (=> b!2547831 (= e!1610398 (and tp!813052 tp!813053))))

(declare-fun b!2547832 () Bool)

(declare-fun tp!813055 () Bool)

(assert (=> b!2547832 (= e!1610398 tp!813055)))

(assert (=> b!2546772 (= tp!812885 e!1610398)))

(declare-fun b!2547830 () Bool)

(assert (=> b!2547830 (= e!1610398 tp_is_empty!13033)))

(declare-fun b!2547833 () Bool)

(declare-fun tp!813054 () Bool)

(declare-fun tp!813056 () Bool)

(assert (=> b!2547833 (= e!1610398 (and tp!813054 tp!813056))))

(assert (= (and b!2546772 ((_ is ElementMatch!7589) (regTwo!15691 (regOne!15691 r!27340)))) b!2547830))

(assert (= (and b!2546772 ((_ is Concat!12285) (regTwo!15691 (regOne!15691 r!27340)))) b!2547831))

(assert (= (and b!2546772 ((_ is Star!7589) (regTwo!15691 (regOne!15691 r!27340)))) b!2547832))

(assert (= (and b!2546772 ((_ is Union!7589) (regTwo!15691 (regOne!15691 r!27340)))) b!2547833))

(declare-fun b!2547835 () Bool)

(declare-fun e!1610399 () Bool)

(declare-fun tp!813057 () Bool)

(declare-fun tp!813058 () Bool)

(assert (=> b!2547835 (= e!1610399 (and tp!813057 tp!813058))))

(declare-fun b!2547836 () Bool)

(declare-fun tp!813060 () Bool)

(assert (=> b!2547836 (= e!1610399 tp!813060)))

(assert (=> b!2546768 (= tp!812878 e!1610399)))

(declare-fun b!2547834 () Bool)

(assert (=> b!2547834 (= e!1610399 tp_is_empty!13033)))

(declare-fun b!2547837 () Bool)

(declare-fun tp!813059 () Bool)

(declare-fun tp!813061 () Bool)

(assert (=> b!2547837 (= e!1610399 (and tp!813059 tp!813061))))

(assert (= (and b!2546768 ((_ is ElementMatch!7589) (regOne!15691 (reg!7918 r!27340)))) b!2547834))

(assert (= (and b!2546768 ((_ is Concat!12285) (regOne!15691 (reg!7918 r!27340)))) b!2547835))

(assert (= (and b!2546768 ((_ is Star!7589) (regOne!15691 (reg!7918 r!27340)))) b!2547836))

(assert (= (and b!2546768 ((_ is Union!7589) (regOne!15691 (reg!7918 r!27340)))) b!2547837))

(declare-fun b!2547839 () Bool)

(declare-fun e!1610400 () Bool)

(declare-fun tp!813062 () Bool)

(declare-fun tp!813063 () Bool)

(assert (=> b!2547839 (= e!1610400 (and tp!813062 tp!813063))))

(declare-fun b!2547840 () Bool)

(declare-fun tp!813065 () Bool)

(assert (=> b!2547840 (= e!1610400 tp!813065)))

(assert (=> b!2546768 (= tp!812880 e!1610400)))

(declare-fun b!2547838 () Bool)

(assert (=> b!2547838 (= e!1610400 tp_is_empty!13033)))

(declare-fun b!2547841 () Bool)

(declare-fun tp!813064 () Bool)

(declare-fun tp!813066 () Bool)

(assert (=> b!2547841 (= e!1610400 (and tp!813064 tp!813066))))

(assert (= (and b!2546768 ((_ is ElementMatch!7589) (regTwo!15691 (reg!7918 r!27340)))) b!2547838))

(assert (= (and b!2546768 ((_ is Concat!12285) (regTwo!15691 (reg!7918 r!27340)))) b!2547839))

(assert (= (and b!2546768 ((_ is Star!7589) (regTwo!15691 (reg!7918 r!27340)))) b!2547840))

(assert (= (and b!2546768 ((_ is Union!7589) (regTwo!15691 (reg!7918 r!27340)))) b!2547841))

(declare-fun b!2547842 () Bool)

(declare-fun e!1610401 () Bool)

(declare-fun tp!813067 () Bool)

(assert (=> b!2547842 (= e!1610401 (and tp_is_empty!13033 tp!813067))))

(assert (=> b!2546764 (= tp!812875 e!1610401)))

(assert (= (and b!2546764 ((_ is Cons!29554) (t!211353 (t!211353 tl!4068)))) b!2547842))

(declare-fun b!2547844 () Bool)

(declare-fun e!1610402 () Bool)

(declare-fun tp!813068 () Bool)

(declare-fun tp!813069 () Bool)

(assert (=> b!2547844 (= e!1610402 (and tp!813068 tp!813069))))

(declare-fun b!2547845 () Bool)

(declare-fun tp!813071 () Bool)

(assert (=> b!2547845 (= e!1610402 tp!813071)))

(assert (=> b!2546757 (= tp!812868 e!1610402)))

(declare-fun b!2547843 () Bool)

(assert (=> b!2547843 (= e!1610402 tp_is_empty!13033)))

(declare-fun b!2547846 () Bool)

(declare-fun tp!813070 () Bool)

(declare-fun tp!813072 () Bool)

(assert (=> b!2547846 (= e!1610402 (and tp!813070 tp!813072))))

(assert (= (and b!2546757 ((_ is ElementMatch!7589) (regOne!15690 (regTwo!15690 r!27340)))) b!2547843))

(assert (= (and b!2546757 ((_ is Concat!12285) (regOne!15690 (regTwo!15690 r!27340)))) b!2547844))

(assert (= (and b!2546757 ((_ is Star!7589) (regOne!15690 (regTwo!15690 r!27340)))) b!2547845))

(assert (= (and b!2546757 ((_ is Union!7589) (regOne!15690 (regTwo!15690 r!27340)))) b!2547846))

(declare-fun b!2547848 () Bool)

(declare-fun e!1610403 () Bool)

(declare-fun tp!813073 () Bool)

(declare-fun tp!813074 () Bool)

(assert (=> b!2547848 (= e!1610403 (and tp!813073 tp!813074))))

(declare-fun b!2547849 () Bool)

(declare-fun tp!813076 () Bool)

(assert (=> b!2547849 (= e!1610403 tp!813076)))

(assert (=> b!2546757 (= tp!812869 e!1610403)))

(declare-fun b!2547847 () Bool)

(assert (=> b!2547847 (= e!1610403 tp_is_empty!13033)))

(declare-fun b!2547850 () Bool)

(declare-fun tp!813075 () Bool)

(declare-fun tp!813077 () Bool)

(assert (=> b!2547850 (= e!1610403 (and tp!813075 tp!813077))))

(assert (= (and b!2546757 ((_ is ElementMatch!7589) (regTwo!15690 (regTwo!15690 r!27340)))) b!2547847))

(assert (= (and b!2546757 ((_ is Concat!12285) (regTwo!15690 (regTwo!15690 r!27340)))) b!2547848))

(assert (= (and b!2546757 ((_ is Star!7589) (regTwo!15690 (regTwo!15690 r!27340)))) b!2547849))

(assert (= (and b!2546757 ((_ is Union!7589) (regTwo!15690 (regTwo!15690 r!27340)))) b!2547850))

(declare-fun b!2547852 () Bool)

(declare-fun e!1610404 () Bool)

(declare-fun tp!813078 () Bool)

(declare-fun tp!813079 () Bool)

(assert (=> b!2547852 (= e!1610404 (and tp!813078 tp!813079))))

(declare-fun b!2547853 () Bool)

(declare-fun tp!813081 () Bool)

(assert (=> b!2547853 (= e!1610404 tp!813081)))

(assert (=> b!2546753 (= tp!812863 e!1610404)))

(declare-fun b!2547851 () Bool)

(assert (=> b!2547851 (= e!1610404 tp_is_empty!13033)))

(declare-fun b!2547854 () Bool)

(declare-fun tp!813080 () Bool)

(declare-fun tp!813082 () Bool)

(assert (=> b!2547854 (= e!1610404 (and tp!813080 tp!813082))))

(assert (= (and b!2546753 ((_ is ElementMatch!7589) (regOne!15690 (regOne!15690 r!27340)))) b!2547851))

(assert (= (and b!2546753 ((_ is Concat!12285) (regOne!15690 (regOne!15690 r!27340)))) b!2547852))

(assert (= (and b!2546753 ((_ is Star!7589) (regOne!15690 (regOne!15690 r!27340)))) b!2547853))

(assert (= (and b!2546753 ((_ is Union!7589) (regOne!15690 (regOne!15690 r!27340)))) b!2547854))

(declare-fun b!2547856 () Bool)

(declare-fun e!1610405 () Bool)

(declare-fun tp!813083 () Bool)

(declare-fun tp!813084 () Bool)

(assert (=> b!2547856 (= e!1610405 (and tp!813083 tp!813084))))

(declare-fun b!2547857 () Bool)

(declare-fun tp!813086 () Bool)

(assert (=> b!2547857 (= e!1610405 tp!813086)))

(assert (=> b!2546753 (= tp!812864 e!1610405)))

(declare-fun b!2547855 () Bool)

(assert (=> b!2547855 (= e!1610405 tp_is_empty!13033)))

(declare-fun b!2547858 () Bool)

(declare-fun tp!813085 () Bool)

(declare-fun tp!813087 () Bool)

(assert (=> b!2547858 (= e!1610405 (and tp!813085 tp!813087))))

(assert (= (and b!2546753 ((_ is ElementMatch!7589) (regTwo!15690 (regOne!15690 r!27340)))) b!2547855))

(assert (= (and b!2546753 ((_ is Concat!12285) (regTwo!15690 (regOne!15690 r!27340)))) b!2547856))

(assert (= (and b!2546753 ((_ is Star!7589) (regTwo!15690 (regOne!15690 r!27340)))) b!2547857))

(assert (= (and b!2546753 ((_ is Union!7589) (regTwo!15690 (regOne!15690 r!27340)))) b!2547858))

(declare-fun b!2547860 () Bool)

(declare-fun e!1610406 () Bool)

(declare-fun tp!813088 () Bool)

(declare-fun tp!813089 () Bool)

(assert (=> b!2547860 (= e!1610406 (and tp!813088 tp!813089))))

(declare-fun b!2547861 () Bool)

(declare-fun tp!813091 () Bool)

(assert (=> b!2547861 (= e!1610406 tp!813091)))

(assert (=> b!2546758 (= tp!812871 e!1610406)))

(declare-fun b!2547859 () Bool)

(assert (=> b!2547859 (= e!1610406 tp_is_empty!13033)))

(declare-fun b!2547862 () Bool)

(declare-fun tp!813090 () Bool)

(declare-fun tp!813092 () Bool)

(assert (=> b!2547862 (= e!1610406 (and tp!813090 tp!813092))))

(assert (= (and b!2546758 ((_ is ElementMatch!7589) (reg!7918 (regTwo!15690 r!27340)))) b!2547859))

(assert (= (and b!2546758 ((_ is Concat!12285) (reg!7918 (regTwo!15690 r!27340)))) b!2547860))

(assert (= (and b!2546758 ((_ is Star!7589) (reg!7918 (regTwo!15690 r!27340)))) b!2547861))

(assert (= (and b!2546758 ((_ is Union!7589) (reg!7918 (regTwo!15690 r!27340)))) b!2547862))

(declare-fun b!2547864 () Bool)

(declare-fun e!1610407 () Bool)

(declare-fun tp!813093 () Bool)

(declare-fun tp!813094 () Bool)

(assert (=> b!2547864 (= e!1610407 (and tp!813093 tp!813094))))

(declare-fun b!2547865 () Bool)

(declare-fun tp!813096 () Bool)

(assert (=> b!2547865 (= e!1610407 tp!813096)))

(assert (=> b!2546754 (= tp!812866 e!1610407)))

(declare-fun b!2547863 () Bool)

(assert (=> b!2547863 (= e!1610407 tp_is_empty!13033)))

(declare-fun b!2547866 () Bool)

(declare-fun tp!813095 () Bool)

(declare-fun tp!813097 () Bool)

(assert (=> b!2547866 (= e!1610407 (and tp!813095 tp!813097))))

(assert (= (and b!2546754 ((_ is ElementMatch!7589) (reg!7918 (regOne!15690 r!27340)))) b!2547863))

(assert (= (and b!2546754 ((_ is Concat!12285) (reg!7918 (regOne!15690 r!27340)))) b!2547864))

(assert (= (and b!2546754 ((_ is Star!7589) (reg!7918 (regOne!15690 r!27340)))) b!2547865))

(assert (= (and b!2546754 ((_ is Union!7589) (reg!7918 (regOne!15690 r!27340)))) b!2547866))

(declare-fun b!2547868 () Bool)

(declare-fun e!1610408 () Bool)

(declare-fun tp!813098 () Bool)

(declare-fun tp!813099 () Bool)

(assert (=> b!2547868 (= e!1610408 (and tp!813098 tp!813099))))

(declare-fun b!2547869 () Bool)

(declare-fun tp!813101 () Bool)

(assert (=> b!2547869 (= e!1610408 tp!813101)))

(assert (=> b!2546759 (= tp!812870 e!1610408)))

(declare-fun b!2547867 () Bool)

(assert (=> b!2547867 (= e!1610408 tp_is_empty!13033)))

(declare-fun b!2547870 () Bool)

(declare-fun tp!813100 () Bool)

(declare-fun tp!813102 () Bool)

(assert (=> b!2547870 (= e!1610408 (and tp!813100 tp!813102))))

(assert (= (and b!2546759 ((_ is ElementMatch!7589) (regOne!15691 (regTwo!15690 r!27340)))) b!2547867))

(assert (= (and b!2546759 ((_ is Concat!12285) (regOne!15691 (regTwo!15690 r!27340)))) b!2547868))

(assert (= (and b!2546759 ((_ is Star!7589) (regOne!15691 (regTwo!15690 r!27340)))) b!2547869))

(assert (= (and b!2546759 ((_ is Union!7589) (regOne!15691 (regTwo!15690 r!27340)))) b!2547870))

(declare-fun b!2547872 () Bool)

(declare-fun e!1610409 () Bool)

(declare-fun tp!813103 () Bool)

(declare-fun tp!813104 () Bool)

(assert (=> b!2547872 (= e!1610409 (and tp!813103 tp!813104))))

(declare-fun b!2547873 () Bool)

(declare-fun tp!813106 () Bool)

(assert (=> b!2547873 (= e!1610409 tp!813106)))

(assert (=> b!2546759 (= tp!812872 e!1610409)))

(declare-fun b!2547871 () Bool)

(assert (=> b!2547871 (= e!1610409 tp_is_empty!13033)))

(declare-fun b!2547874 () Bool)

(declare-fun tp!813105 () Bool)

(declare-fun tp!813107 () Bool)

(assert (=> b!2547874 (= e!1610409 (and tp!813105 tp!813107))))

(assert (= (and b!2546759 ((_ is ElementMatch!7589) (regTwo!15691 (regTwo!15690 r!27340)))) b!2547871))

(assert (= (and b!2546759 ((_ is Concat!12285) (regTwo!15691 (regTwo!15690 r!27340)))) b!2547872))

(assert (= (and b!2546759 ((_ is Star!7589) (regTwo!15691 (regTwo!15690 r!27340)))) b!2547873))

(assert (= (and b!2546759 ((_ is Union!7589) (regTwo!15691 (regTwo!15690 r!27340)))) b!2547874))

(declare-fun b!2547876 () Bool)

(declare-fun e!1610410 () Bool)

(declare-fun tp!813108 () Bool)

(declare-fun tp!813109 () Bool)

(assert (=> b!2547876 (= e!1610410 (and tp!813108 tp!813109))))

(declare-fun b!2547877 () Bool)

(declare-fun tp!813111 () Bool)

(assert (=> b!2547877 (= e!1610410 tp!813111)))

(assert (=> b!2546776 (= tp!812888 e!1610410)))

(declare-fun b!2547875 () Bool)

(assert (=> b!2547875 (= e!1610410 tp_is_empty!13033)))

(declare-fun b!2547878 () Bool)

(declare-fun tp!813110 () Bool)

(declare-fun tp!813112 () Bool)

(assert (=> b!2547878 (= e!1610410 (and tp!813110 tp!813112))))

(assert (= (and b!2546776 ((_ is ElementMatch!7589) (regOne!15691 (regTwo!15691 r!27340)))) b!2547875))

(assert (= (and b!2546776 ((_ is Concat!12285) (regOne!15691 (regTwo!15691 r!27340)))) b!2547876))

(assert (= (and b!2546776 ((_ is Star!7589) (regOne!15691 (regTwo!15691 r!27340)))) b!2547877))

(assert (= (and b!2546776 ((_ is Union!7589) (regOne!15691 (regTwo!15691 r!27340)))) b!2547878))

(declare-fun b!2547880 () Bool)

(declare-fun e!1610411 () Bool)

(declare-fun tp!813113 () Bool)

(declare-fun tp!813114 () Bool)

(assert (=> b!2547880 (= e!1610411 (and tp!813113 tp!813114))))

(declare-fun b!2547881 () Bool)

(declare-fun tp!813116 () Bool)

(assert (=> b!2547881 (= e!1610411 tp!813116)))

(assert (=> b!2546776 (= tp!812890 e!1610411)))

(declare-fun b!2547879 () Bool)

(assert (=> b!2547879 (= e!1610411 tp_is_empty!13033)))

(declare-fun b!2547882 () Bool)

(declare-fun tp!813115 () Bool)

(declare-fun tp!813117 () Bool)

(assert (=> b!2547882 (= e!1610411 (and tp!813115 tp!813117))))

(assert (= (and b!2546776 ((_ is ElementMatch!7589) (regTwo!15691 (regTwo!15691 r!27340)))) b!2547879))

(assert (= (and b!2546776 ((_ is Concat!12285) (regTwo!15691 (regTwo!15691 r!27340)))) b!2547880))

(assert (= (and b!2546776 ((_ is Star!7589) (regTwo!15691 (regTwo!15691 r!27340)))) b!2547881))

(assert (= (and b!2546776 ((_ is Union!7589) (regTwo!15691 (regTwo!15691 r!27340)))) b!2547882))

(declare-fun b!2547884 () Bool)

(declare-fun e!1610412 () Bool)

(declare-fun tp!813118 () Bool)

(declare-fun tp!813119 () Bool)

(assert (=> b!2547884 (= e!1610412 (and tp!813118 tp!813119))))

(declare-fun b!2547885 () Bool)

(declare-fun tp!813121 () Bool)

(assert (=> b!2547885 (= e!1610412 tp!813121)))

(assert (=> b!2546755 (= tp!812865 e!1610412)))

(declare-fun b!2547883 () Bool)

(assert (=> b!2547883 (= e!1610412 tp_is_empty!13033)))

(declare-fun b!2547886 () Bool)

(declare-fun tp!813120 () Bool)

(declare-fun tp!813122 () Bool)

(assert (=> b!2547886 (= e!1610412 (and tp!813120 tp!813122))))

(assert (= (and b!2546755 ((_ is ElementMatch!7589) (regOne!15691 (regOne!15690 r!27340)))) b!2547883))

(assert (= (and b!2546755 ((_ is Concat!12285) (regOne!15691 (regOne!15690 r!27340)))) b!2547884))

(assert (= (and b!2546755 ((_ is Star!7589) (regOne!15691 (regOne!15690 r!27340)))) b!2547885))

(assert (= (and b!2546755 ((_ is Union!7589) (regOne!15691 (regOne!15690 r!27340)))) b!2547886))

(declare-fun b!2547888 () Bool)

(declare-fun e!1610413 () Bool)

(declare-fun tp!813123 () Bool)

(declare-fun tp!813124 () Bool)

(assert (=> b!2547888 (= e!1610413 (and tp!813123 tp!813124))))

(declare-fun b!2547889 () Bool)

(declare-fun tp!813126 () Bool)

(assert (=> b!2547889 (= e!1610413 tp!813126)))

(assert (=> b!2546755 (= tp!812867 e!1610413)))

(declare-fun b!2547887 () Bool)

(assert (=> b!2547887 (= e!1610413 tp_is_empty!13033)))

(declare-fun b!2547890 () Bool)

(declare-fun tp!813125 () Bool)

(declare-fun tp!813127 () Bool)

(assert (=> b!2547890 (= e!1610413 (and tp!813125 tp!813127))))

(assert (= (and b!2546755 ((_ is ElementMatch!7589) (regTwo!15691 (regOne!15690 r!27340)))) b!2547887))

(assert (= (and b!2546755 ((_ is Concat!12285) (regTwo!15691 (regOne!15690 r!27340)))) b!2547888))

(assert (= (and b!2546755 ((_ is Star!7589) (regTwo!15691 (regOne!15690 r!27340)))) b!2547889))

(assert (= (and b!2546755 ((_ is Union!7589) (regTwo!15691 (regOne!15690 r!27340)))) b!2547890))

(declare-fun b!2547892 () Bool)

(declare-fun e!1610414 () Bool)

(declare-fun tp!813128 () Bool)

(declare-fun tp!813129 () Bool)

(assert (=> b!2547892 (= e!1610414 (and tp!813128 tp!813129))))

(declare-fun b!2547893 () Bool)

(declare-fun tp!813131 () Bool)

(assert (=> b!2547893 (= e!1610414 tp!813131)))

(assert (=> b!2546770 (= tp!812881 e!1610414)))

(declare-fun b!2547891 () Bool)

(assert (=> b!2547891 (= e!1610414 tp_is_empty!13033)))

(declare-fun b!2547894 () Bool)

(declare-fun tp!813130 () Bool)

(declare-fun tp!813132 () Bool)

(assert (=> b!2547894 (= e!1610414 (and tp!813130 tp!813132))))

(assert (= (and b!2546770 ((_ is ElementMatch!7589) (regOne!15690 (regOne!15691 r!27340)))) b!2547891))

(assert (= (and b!2546770 ((_ is Concat!12285) (regOne!15690 (regOne!15691 r!27340)))) b!2547892))

(assert (= (and b!2546770 ((_ is Star!7589) (regOne!15690 (regOne!15691 r!27340)))) b!2547893))

(assert (= (and b!2546770 ((_ is Union!7589) (regOne!15690 (regOne!15691 r!27340)))) b!2547894))

(declare-fun b!2547896 () Bool)

(declare-fun e!1610415 () Bool)

(declare-fun tp!813133 () Bool)

(declare-fun tp!813134 () Bool)

(assert (=> b!2547896 (= e!1610415 (and tp!813133 tp!813134))))

(declare-fun b!2547897 () Bool)

(declare-fun tp!813136 () Bool)

(assert (=> b!2547897 (= e!1610415 tp!813136)))

(assert (=> b!2546770 (= tp!812882 e!1610415)))

(declare-fun b!2547895 () Bool)

(assert (=> b!2547895 (= e!1610415 tp_is_empty!13033)))

(declare-fun b!2547898 () Bool)

(declare-fun tp!813135 () Bool)

(declare-fun tp!813137 () Bool)

(assert (=> b!2547898 (= e!1610415 (and tp!813135 tp!813137))))

(assert (= (and b!2546770 ((_ is ElementMatch!7589) (regTwo!15690 (regOne!15691 r!27340)))) b!2547895))

(assert (= (and b!2546770 ((_ is Concat!12285) (regTwo!15690 (regOne!15691 r!27340)))) b!2547896))

(assert (= (and b!2546770 ((_ is Star!7589) (regTwo!15690 (regOne!15691 r!27340)))) b!2547897))

(assert (= (and b!2546770 ((_ is Union!7589) (regTwo!15690 (regOne!15691 r!27340)))) b!2547898))

(declare-fun b!2547900 () Bool)

(declare-fun e!1610416 () Bool)

(declare-fun tp!813138 () Bool)

(declare-fun tp!813139 () Bool)

(assert (=> b!2547900 (= e!1610416 (and tp!813138 tp!813139))))

(declare-fun b!2547901 () Bool)

(declare-fun tp!813141 () Bool)

(assert (=> b!2547901 (= e!1610416 tp!813141)))

(assert (=> b!2546775 (= tp!812889 e!1610416)))

(declare-fun b!2547899 () Bool)

(assert (=> b!2547899 (= e!1610416 tp_is_empty!13033)))

(declare-fun b!2547902 () Bool)

(declare-fun tp!813140 () Bool)

(declare-fun tp!813142 () Bool)

(assert (=> b!2547902 (= e!1610416 (and tp!813140 tp!813142))))

(assert (= (and b!2546775 ((_ is ElementMatch!7589) (reg!7918 (regTwo!15691 r!27340)))) b!2547899))

(assert (= (and b!2546775 ((_ is Concat!12285) (reg!7918 (regTwo!15691 r!27340)))) b!2547900))

(assert (= (and b!2546775 ((_ is Star!7589) (reg!7918 (regTwo!15691 r!27340)))) b!2547901))

(assert (= (and b!2546775 ((_ is Union!7589) (reg!7918 (regTwo!15691 r!27340)))) b!2547902))

(check-sat (not b!2547371) (not b!2547761) (not b!2547861) (not d!722780) (not b!2547693) (not b!2547423) (not b!2547760) (not bm!161767) (not bm!161793) (not b!2547885) (not b!2547857) (not b!2547384) (not b!2547327) tp_is_empty!13033 (not b!2547841) (not b!2547433) (not b!2547518) (not bm!161794) (not b!2547839) (not b!2547777) (not bm!161735) (not b!2547805) (not bm!161766) (not bm!161780) (not b!2547853) (not bm!161774) (not bm!161821) (not bm!161802) (not b!2547701) (not b!2547638) (not b!2547734) (not b!2547852) (not b!2547440) (not b!2547674) (not b!2547370) (not b!2547381) (not bm!161812) (not b!2547897) (not b!2547599) (not b!2547709) (not b!2547747) (not d!722828) (not d!722804) (not bm!161789) (not d!722694) (not b!2547703) (not bm!161751) (not b!2547846) (not bm!161724) (not b!2547832) (not b!2547827) (not b!2547690) (not b!2547828) (not d!722722) (not b!2547835) (not d!722714) (not b!2547503) (not b!2547698) (not b!2547490) (not b!2547437) (not b!2547430) (not b!2547573) (not d!722844) (not b!2547694) (not bm!161741) (not b!2547856) (not b!2547598) (not b!2547647) (not d!722766) (not bm!161790) (not b!2547816) (not bm!161719) (not b!2547900) (not bm!161824) (not bm!161813) (not b!2547484) (not b!2547872) (not bm!161805) (not d!722770) (not b!2547858) (not bm!161806) (not b!2547606) (not b!2547842) (not b!2547869) (not b!2547378) (not d!722830) (not b!2547328) (not b!2547670) (not bm!161740) (not bm!161799) (not b!2547864) (not bm!161721) (not b!2547164) (not d!722730) (not bm!161737) (not bm!161770) (not b!2547865) (not b!2547425) (not b!2547458) (not b!2547882) (not b!2547449) (not d!722856) (not bm!161722) (not b!2547901) (not b!2547836) (not b!2547429) (not d!722838) (not bm!161786) (not b!2547677) (not b!2547691) (not bm!161762) (not b!2547823) (not b!2547890) (not d!722782) (not bm!161783) (not b!2547840) (not b!2547873) (not d!722720) (not d!722812) (not d!722676) (not bm!161764) (not b!2547461) (not b!2547465) (not d!722846) (not b!2547519) (not b!2547667) (not b!2547165) (not b!2547881) (not bm!161784) (not b!2547392) (not bm!161723) (not d!722760) (not b!2547472) (not b!2547330) (not bm!161778) (not b!2547837) (not b!2547656) (not d!722742) (not b!2547405) (not b!2547902) (not b!2547763) (not b!2547603) (not b!2547375) (not b!2547753) (not b!2547469) (not b!2547884) (not d!722808) (not b!2547889) (not bm!161773) (not b!2547874) (not b!2547464) (not bm!161781) (not b!2547596) (not b!2547849) (not d!722852) (not bm!161798) (not b!2547666) (not b!2547820) (not bm!161777) (not b!2547850) (not bm!161817) (not b!2547898) (not b!2547833) (not bm!161733) (not b!2547618) (not bm!161750) (not d!722788) (not d!722834) (not bm!161748) (not b!2547787) (not b!2547413) (not bm!161729) (not d!722832) (not b!2547582) (not b!2547619) (not bm!161763) (not b!2547877) (not bm!161769) (not d!722810) (not b!2547831) (not b!2547886) (not b!2547334) (not b!2547893) (not b!2547771) (not b!2547821) (not b!2547432) (not b!2547848) (not d!722674) (not d!722768) (not bm!161814) (not bm!161771) (not b!2547824) (not b!2547332) (not b!2547878) (not b!2547515) (not b!2547625) (not bm!161728) (not d!722740) (not bm!161752) (not bm!161744) (not bm!161809) (not b!2547737) (not b!2547812) (not bm!161736) (not bm!161760) (not b!2547516) (not b!2547364) (not b!2547768) (not d!722712) (not bm!161822) (not bm!161747) (not b!2547367) (not b!2547589) (not b!2547800) (not b!2547409) (not bm!161787) (not d!722866) (not b!2547389) (not b!2547669) (not b!2547808) (not b!2547715) (not b!2547870) (not b!2547615) (not b!2547817) (not d!722702) (not b!2547807) (not bm!161808) (not b!2547368) (not d!722848) (not b!2547868) (not b!2547683) (not bm!161755) (not d!722858) (not b!2547888) (not b!2547803) (not b!2547478) (not b!2547532) (not b!2547880) (not bm!161761) (not d!722786) (not d!722860) (not b!2547896) (not bm!161732) (not b!2547182) (not b!2547819) (not b!2547593) (not b!2547512) (not b!2547811) (not b!2547844) (not b!2547416) (not bm!161803) (not b!2547815) (not d!722826) (not b!2547183) (not b!2547845) (not d!722836) (not d!722666) (not b!2547862) (not b!2547809) (not b!2547382) (not b!2547738) (not b!2547595) (not b!2547894) (not b!2547876) (not b!2547721) (not b!2547804) (not b!2547813) (not d!722762) (not b!2547406) (not bm!161795) (not b!2547829) (not b!2547408) (not d!722840) (not b!2547427) (not b!2547825) (not b!2547523) (not bm!161745) (not b!2547854) (not d!722862) (not bm!161818) (not bm!161730) (not b!2547398) (not b!2547860) (not bm!161788) (not b!2547526) (not b!2547892) (not b!2547591) (not b!2547462) (not b!2547385) (not b!2547764) (not b!2547329) (not bm!161727) (not b!2547866))
(check-sat)
