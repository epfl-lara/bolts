; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!247036 () Bool)

(assert start!247036)

(declare-fun b!2544888 () Bool)

(declare-fun e!1608848 () Bool)

(declare-fun e!1608846 () Bool)

(assert (=> b!2544888 (= e!1608848 e!1608846)))

(declare-fun res!1072282 () Bool)

(assert (=> b!2544888 (=> (not res!1072282) (not e!1608846))))

(declare-datatypes ((C!15324 0))(
  ( (C!15325 (val!9314 Int)) )
))
(declare-datatypes ((Regex!7583 0))(
  ( (ElementMatch!7583 (c!407609 C!15324)) (Concat!12279 (regOne!15678 Regex!7583) (regTwo!15678 Regex!7583)) (EmptyExpr!7583) (Star!7583 (reg!7912 Regex!7583)) (EmptyLang!7583) (Union!7583 (regOne!15679 Regex!7583) (regTwo!15679 Regex!7583)) )
))
(declare-fun lt!902444 () Regex!7583)

(declare-fun nullable!2500 (Regex!7583) Bool)

(assert (=> b!2544888 (= res!1072282 (nullable!2500 lt!902444))))

(declare-fun lt!902441 () Regex!7583)

(declare-datatypes ((List!29648 0))(
  ( (Nil!29548) (Cons!29548 (h!34968 C!15324) (t!211347 List!29648)) )
))
(declare-fun tl!4068 () List!29648)

(declare-fun derivative!278 (Regex!7583 List!29648) Regex!7583)

(assert (=> b!2544888 (= lt!902444 (derivative!278 lt!902441 tl!4068))))

(declare-fun r!27340 () Regex!7583)

(declare-fun c!14016 () C!15324)

(declare-fun derivativeStep!2152 (Regex!7583 C!15324) Regex!7583)

(assert (=> b!2544888 (= lt!902441 (derivativeStep!2152 r!27340 c!14016))))

(declare-fun res!1072275 () Bool)

(assert (=> start!247036 (=> (not res!1072275) (not e!1608848))))

(declare-fun validRegex!3209 (Regex!7583) Bool)

(assert (=> start!247036 (= res!1072275 (validRegex!3209 r!27340))))

(assert (=> start!247036 e!1608848))

(declare-fun e!1608847 () Bool)

(assert (=> start!247036 e!1608847))

(declare-fun tp_is_empty!13021 () Bool)

(assert (=> start!247036 tp_is_empty!13021))

(declare-fun e!1608849 () Bool)

(assert (=> start!247036 e!1608849))

(declare-fun b!2544889 () Bool)

(declare-fun res!1072278 () Bool)

(declare-fun e!1608845 () Bool)

(assert (=> b!2544889 (=> (not res!1072278) (not e!1608845))))

(declare-fun lt!902442 () Regex!7583)

(assert (=> b!2544889 (= res!1072278 (not (nullable!2500 (derivative!278 lt!902442 tl!4068))))))

(declare-fun b!2544890 () Bool)

(assert (=> b!2544890 (= e!1608847 tp_is_empty!13021)))

(declare-fun b!2544891 () Bool)

(declare-fun tp!812550 () Bool)

(assert (=> b!2544891 (= e!1608849 (and tp_is_empty!13021 tp!812550))))

(declare-fun b!2544892 () Bool)

(declare-fun e!1608850 () Bool)

(declare-fun lt!902440 () Regex!7583)

(declare-fun matchR!3530 (Regex!7583 List!29648) Bool)

(assert (=> b!2544892 (= e!1608850 (matchR!3530 lt!902440 tl!4068))))

(declare-fun b!2544893 () Bool)

(assert (=> b!2544893 (= e!1608845 (not e!1608850))))

(declare-fun res!1072280 () Bool)

(assert (=> b!2544893 (=> res!1072280 e!1608850)))

(declare-fun lt!902445 () Bool)

(assert (=> b!2544893 (= res!1072280 (not lt!902445))))

(assert (=> b!2544893 (= lt!902445 (matchR!3530 lt!902444 Nil!29548))))

(assert (=> b!2544893 (= lt!902445 (matchR!3530 lt!902441 tl!4068))))

(declare-datatypes ((Unit!43355 0))(
  ( (Unit!43356) )
))
(declare-fun lt!902446 () Unit!43355)

(declare-fun lemmaMatchRIsSameAsWholeDerivativeAndNil!176 (Regex!7583 List!29648) Unit!43355)

(assert (=> b!2544893 (= lt!902446 (lemmaMatchRIsSameAsWholeDerivativeAndNil!176 lt!902441 tl!4068))))

(declare-fun b!2544894 () Bool)

(declare-fun res!1072277 () Bool)

(assert (=> b!2544894 (=> res!1072277 e!1608850)))

(declare-fun lt!902443 () Regex!7583)

(assert (=> b!2544894 (= res!1072277 (not (validRegex!3209 lt!902443)))))

(declare-fun b!2544895 () Bool)

(declare-fun tp!812554 () Bool)

(assert (=> b!2544895 (= e!1608847 tp!812554)))

(declare-fun b!2544896 () Bool)

(declare-fun res!1072279 () Bool)

(assert (=> b!2544896 (=> (not res!1072279) (not e!1608846))))

(get-info :version)

(assert (=> b!2544896 (= res!1072279 (and (not ((_ is EmptyExpr!7583) r!27340)) (not ((_ is EmptyLang!7583) r!27340)) (not ((_ is ElementMatch!7583) r!27340)) (not ((_ is Union!7583) r!27340)) ((_ is Star!7583) r!27340)))))

(declare-fun b!2544897 () Bool)

(declare-fun tp!812549 () Bool)

(declare-fun tp!812553 () Bool)

(assert (=> b!2544897 (= e!1608847 (and tp!812549 tp!812553))))

(declare-fun b!2544898 () Bool)

(declare-fun res!1072281 () Bool)

(assert (=> b!2544898 (=> res!1072281 e!1608850)))

(assert (=> b!2544898 (= res!1072281 (not (validRegex!3209 lt!902442)))))

(declare-fun b!2544899 () Bool)

(assert (=> b!2544899 (= e!1608846 e!1608845)))

(declare-fun res!1072276 () Bool)

(assert (=> b!2544899 (=> (not res!1072276) (not e!1608845))))

(assert (=> b!2544899 (= res!1072276 (= lt!902441 lt!902440))))

(assert (=> b!2544899 (= lt!902440 (Concat!12279 lt!902442 lt!902443))))

(assert (=> b!2544899 (= lt!902443 (Star!7583 (reg!7912 r!27340)))))

(assert (=> b!2544899 (= lt!902442 (derivativeStep!2152 (reg!7912 r!27340) c!14016))))

(declare-fun b!2544900 () Bool)

(declare-fun tp!812552 () Bool)

(declare-fun tp!812551 () Bool)

(assert (=> b!2544900 (= e!1608847 (and tp!812552 tp!812551))))

(assert (= (and start!247036 res!1072275) b!2544888))

(assert (= (and b!2544888 res!1072282) b!2544896))

(assert (= (and b!2544896 res!1072279) b!2544899))

(assert (= (and b!2544899 res!1072276) b!2544889))

(assert (= (and b!2544889 res!1072278) b!2544893))

(assert (= (and b!2544893 (not res!1072280)) b!2544898))

(assert (= (and b!2544898 (not res!1072281)) b!2544894))

(assert (= (and b!2544894 (not res!1072277)) b!2544892))

(assert (= (and start!247036 ((_ is ElementMatch!7583) r!27340)) b!2544890))

(assert (= (and start!247036 ((_ is Concat!12279) r!27340)) b!2544900))

(assert (= (and start!247036 ((_ is Star!7583) r!27340)) b!2544895))

(assert (= (and start!247036 ((_ is Union!7583) r!27340)) b!2544897))

(assert (= (and start!247036 ((_ is Cons!29548) tl!4068)) b!2544891))

(declare-fun m!2890107 () Bool)

(assert (=> b!2544889 m!2890107))

(assert (=> b!2544889 m!2890107))

(declare-fun m!2890109 () Bool)

(assert (=> b!2544889 m!2890109))

(declare-fun m!2890111 () Bool)

(assert (=> b!2544894 m!2890111))

(declare-fun m!2890113 () Bool)

(assert (=> b!2544899 m!2890113))

(declare-fun m!2890115 () Bool)

(assert (=> b!2544892 m!2890115))

(declare-fun m!2890117 () Bool)

(assert (=> b!2544893 m!2890117))

(declare-fun m!2890119 () Bool)

(assert (=> b!2544893 m!2890119))

(declare-fun m!2890121 () Bool)

(assert (=> b!2544893 m!2890121))

(declare-fun m!2890123 () Bool)

(assert (=> b!2544888 m!2890123))

(declare-fun m!2890125 () Bool)

(assert (=> b!2544888 m!2890125))

(declare-fun m!2890127 () Bool)

(assert (=> b!2544888 m!2890127))

(declare-fun m!2890129 () Bool)

(assert (=> b!2544898 m!2890129))

(declare-fun m!2890131 () Bool)

(assert (=> start!247036 m!2890131))

(check-sat (not b!2544899) (not b!2544892) (not b!2544898) (not b!2544889) (not b!2544895) (not b!2544891) (not b!2544897) (not b!2544893) (not b!2544888) (not b!2544894) (not start!247036) tp_is_empty!13021 (not b!2544900))
(check-sat)
