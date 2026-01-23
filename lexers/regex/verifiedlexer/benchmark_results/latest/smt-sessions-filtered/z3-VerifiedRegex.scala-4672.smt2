; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!243296 () Bool)

(assert start!243296)

(declare-fun b!2489974 () Bool)

(declare-fun e!1580776 () Bool)

(declare-fun tp_is_empty!12493 () Bool)

(assert (=> b!2489974 (= e!1580776 tp_is_empty!12493)))

(declare-fun b!2489975 () Bool)

(declare-fun res!1053804 () Bool)

(declare-fun e!1580773 () Bool)

(assert (=> b!2489975 (=> (not res!1053804) (not e!1580773))))

(declare-datatypes ((C!14796 0))(
  ( (C!14797 (val!9050 Int)) )
))
(declare-datatypes ((List!29384 0))(
  ( (Nil!29284) (Cons!29284 (h!34704 C!14796) (t!211083 List!29384)) )
))
(declare-fun tl!4068 () List!29384)

(declare-fun isEmpty!16787 (List!29384) Bool)

(assert (=> b!2489975 (= res!1053804 (isEmpty!16787 tl!4068))))

(declare-fun b!2489976 () Bool)

(declare-fun e!1580775 () Bool)

(declare-fun tp!797205 () Bool)

(assert (=> b!2489976 (= e!1580775 (and tp_is_empty!12493 tp!797205))))

(declare-fun res!1053803 () Bool)

(declare-fun e!1580774 () Bool)

(assert (=> start!243296 (=> (not res!1053803) (not e!1580774))))

(declare-datatypes ((Regex!7319 0))(
  ( (ElementMatch!7319 (c!395763 C!14796)) (Concat!12015 (regOne!15150 Regex!7319) (regTwo!15150 Regex!7319)) (EmptyExpr!7319) (Star!7319 (reg!7648 Regex!7319)) (EmptyLang!7319) (Union!7319 (regOne!15151 Regex!7319) (regTwo!15151 Regex!7319)) )
))
(declare-fun r!27340 () Regex!7319)

(declare-fun validRegex!2945 (Regex!7319) Bool)

(assert (=> start!243296 (= res!1053803 (validRegex!2945 r!27340))))

(assert (=> start!243296 e!1580774))

(assert (=> start!243296 e!1580776))

(assert (=> start!243296 tp_is_empty!12493))

(assert (=> start!243296 e!1580775))

(declare-fun b!2489977 () Bool)

(declare-fun tp!797201 () Bool)

(assert (=> b!2489977 (= e!1580776 tp!797201)))

(declare-fun b!2489978 () Bool)

(assert (=> b!2489978 (= e!1580774 e!1580773)))

(declare-fun res!1053806 () Bool)

(assert (=> b!2489978 (=> (not res!1053806) (not e!1580773))))

(declare-fun lt!893856 () Regex!7319)

(declare-fun nullable!2236 (Regex!7319) Bool)

(declare-fun derivative!14 (Regex!7319 List!29384) Regex!7319)

(assert (=> b!2489978 (= res!1053806 (nullable!2236 (derivative!14 lt!893856 tl!4068)))))

(declare-fun c!14016 () C!14796)

(declare-fun derivativeStep!1888 (Regex!7319 C!14796) Regex!7319)

(assert (=> b!2489978 (= lt!893856 (derivativeStep!1888 r!27340 c!14016))))

(declare-fun b!2489979 () Bool)

(assert (=> b!2489979 (= e!1580773 false)))

(declare-fun lt!893855 () Bool)

(declare-fun contains!5291 (List!29384 C!14796) Bool)

(declare-fun firstChars!82 (Regex!7319) List!29384)

(assert (=> b!2489979 (= lt!893855 (contains!5291 (firstChars!82 r!27340) c!14016))))

(declare-fun b!2489980 () Bool)

(declare-fun tp!797203 () Bool)

(declare-fun tp!797206 () Bool)

(assert (=> b!2489980 (= e!1580776 (and tp!797203 tp!797206))))

(declare-fun b!2489981 () Bool)

(declare-fun res!1053805 () Bool)

(assert (=> b!2489981 (=> (not res!1053805) (not e!1580773))))

(get-info :version)

(assert (=> b!2489981 (= res!1053805 (and (not ((_ is EmptyExpr!7319) r!27340)) (not ((_ is EmptyLang!7319) r!27340)) ((_ is ElementMatch!7319) r!27340) (= c!14016 (c!395763 r!27340)) (= lt!893856 EmptyExpr!7319)))))

(declare-fun b!2489982 () Bool)

(declare-fun tp!797202 () Bool)

(declare-fun tp!797204 () Bool)

(assert (=> b!2489982 (= e!1580776 (and tp!797202 tp!797204))))

(assert (= (and start!243296 res!1053803) b!2489978))

(assert (= (and b!2489978 res!1053806) b!2489981))

(assert (= (and b!2489981 res!1053805) b!2489975))

(assert (= (and b!2489975 res!1053804) b!2489979))

(assert (= (and start!243296 ((_ is ElementMatch!7319) r!27340)) b!2489974))

(assert (= (and start!243296 ((_ is Concat!12015) r!27340)) b!2489982))

(assert (= (and start!243296 ((_ is Star!7319) r!27340)) b!2489977))

(assert (= (and start!243296 ((_ is Union!7319) r!27340)) b!2489980))

(assert (= (and start!243296 ((_ is Cons!29284) tl!4068)) b!2489976))

(declare-fun m!2857643 () Bool)

(assert (=> b!2489975 m!2857643))

(declare-fun m!2857645 () Bool)

(assert (=> start!243296 m!2857645))

(declare-fun m!2857647 () Bool)

(assert (=> b!2489978 m!2857647))

(assert (=> b!2489978 m!2857647))

(declare-fun m!2857649 () Bool)

(assert (=> b!2489978 m!2857649))

(declare-fun m!2857651 () Bool)

(assert (=> b!2489978 m!2857651))

(declare-fun m!2857653 () Bool)

(assert (=> b!2489979 m!2857653))

(assert (=> b!2489979 m!2857653))

(declare-fun m!2857655 () Bool)

(assert (=> b!2489979 m!2857655))

(check-sat (not b!2489975) (not b!2489979) (not b!2489980) (not b!2489977) (not b!2489976) tp_is_empty!12493 (not b!2489978) (not start!243296) (not b!2489982))
(check-sat)
