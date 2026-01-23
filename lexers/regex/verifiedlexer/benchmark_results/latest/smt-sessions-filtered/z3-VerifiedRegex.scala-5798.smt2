; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!286108 () Bool)

(assert start!286108)

(declare-fun b!2949613 () Bool)

(declare-fun res!1217056 () Bool)

(declare-fun e!1857861 () Bool)

(assert (=> b!2949613 (=> res!1217056 e!1857861)))

(declare-datatypes ((C!18480 0))(
  ( (C!18481 (val!11276 Int)) )
))
(declare-datatypes ((Regex!9147 0))(
  ( (ElementMatch!9147 (c!482779 C!18480)) (Concat!14468 (regOne!18806 Regex!9147) (regTwo!18806 Regex!9147)) (EmptyExpr!9147) (Star!9147 (reg!9476 Regex!9147)) (EmptyLang!9147) (Union!9147 (regOne!18807 Regex!9147) (regTwo!18807 Regex!9147)) )
))
(declare-fun lt!1031767 () Regex!9147)

(declare-fun isEmptyLang!269 (Regex!9147) Bool)

(assert (=> b!2949613 (= res!1217056 (isEmptyLang!269 lt!1031767))))

(declare-fun b!2949614 () Bool)

(declare-fun e!1857863 () Bool)

(declare-fun tp_is_empty!15857 () Bool)

(assert (=> b!2949614 (= e!1857863 tp_is_empty!15857)))

(declare-fun b!2949615 () Bool)

(declare-fun e!1857862 () Bool)

(declare-fun tp!943005 () Bool)

(assert (=> b!2949615 (= e!1857862 (and tp_is_empty!15857 tp!943005))))

(declare-fun b!2949616 () Bool)

(declare-fun e!1857859 () Bool)

(declare-fun e!1857858 () Bool)

(assert (=> b!2949616 (= e!1857859 (not e!1857858))))

(declare-fun res!1217053 () Bool)

(assert (=> b!2949616 (=> res!1217053 e!1857858)))

(declare-fun lt!1031771 () Bool)

(declare-fun r!17423 () Regex!9147)

(get-info :version)

(assert (=> b!2949616 (= res!1217053 (or lt!1031771 (not ((_ is Concat!14468) r!17423))))))

(declare-datatypes ((List!35012 0))(
  ( (Nil!34888) (Cons!34888 (h!40308 C!18480) (t!234077 List!35012)) )
))
(declare-fun s!11993 () List!35012)

(declare-fun matchRSpec!1284 (Regex!9147 List!35012) Bool)

(assert (=> b!2949616 (= lt!1031771 (matchRSpec!1284 r!17423 s!11993))))

(declare-fun matchR!4029 (Regex!9147 List!35012) Bool)

(assert (=> b!2949616 (= lt!1031771 (matchR!4029 r!17423 s!11993))))

(declare-datatypes ((Unit!48673 0))(
  ( (Unit!48674) )
))
(declare-fun lt!1031770 () Unit!48673)

(declare-fun mainMatchTheorem!1284 (Regex!9147 List!35012) Unit!48673)

(assert (=> b!2949616 (= lt!1031770 (mainMatchTheorem!1284 r!17423 s!11993))))

(declare-fun b!2949617 () Bool)

(declare-fun e!1857860 () Bool)

(assert (=> b!2949617 (= e!1857860 true)))

(declare-fun lt!1031769 () Regex!9147)

(assert (=> b!2949617 (matchRSpec!1284 lt!1031769 s!11993)))

(declare-fun lt!1031768 () Unit!48673)

(assert (=> b!2949617 (= lt!1031768 (mainMatchTheorem!1284 lt!1031769 s!11993))))

(declare-fun b!2949619 () Bool)

(declare-fun tp!943008 () Bool)

(declare-fun tp!943004 () Bool)

(assert (=> b!2949619 (= e!1857863 (and tp!943008 tp!943004))))

(declare-fun b!2949620 () Bool)

(assert (=> b!2949620 (= e!1857858 e!1857861)))

(declare-fun res!1217052 () Bool)

(assert (=> b!2949620 (=> res!1217052 e!1857861)))

(declare-fun lt!1031766 () Regex!9147)

(assert (=> b!2949620 (= res!1217052 (isEmptyLang!269 lt!1031766))))

(declare-fun simplify!152 (Regex!9147) Regex!9147)

(assert (=> b!2949620 (= lt!1031767 (simplify!152 (regTwo!18806 r!17423)))))

(assert (=> b!2949620 (= lt!1031766 (simplify!152 (regOne!18806 r!17423)))))

(declare-fun b!2949621 () Bool)

(declare-fun res!1217055 () Bool)

(assert (=> b!2949621 (=> res!1217055 e!1857858)))

(declare-fun isEmpty!19149 (List!35012) Bool)

(assert (=> b!2949621 (= res!1217055 (isEmpty!19149 s!11993))))

(declare-fun b!2949622 () Bool)

(declare-fun tp!943007 () Bool)

(declare-fun tp!943009 () Bool)

(assert (=> b!2949622 (= e!1857863 (and tp!943007 tp!943009))))

(declare-fun res!1217057 () Bool)

(assert (=> start!286108 (=> (not res!1217057) (not e!1857859))))

(declare-fun validRegex!3880 (Regex!9147) Bool)

(assert (=> start!286108 (= res!1217057 (validRegex!3880 r!17423))))

(assert (=> start!286108 e!1857859))

(assert (=> start!286108 e!1857863))

(assert (=> start!286108 e!1857862))

(declare-fun b!2949618 () Bool)

(declare-fun res!1217054 () Bool)

(assert (=> b!2949618 (=> res!1217054 e!1857861)))

(declare-fun isEmptyExpr!350 (Regex!9147) Bool)

(assert (=> b!2949618 (= res!1217054 (isEmptyExpr!350 lt!1031767))))

(declare-fun b!2949623 () Bool)

(assert (=> b!2949623 (= e!1857861 e!1857860)))

(declare-fun res!1217051 () Bool)

(assert (=> b!2949623 (=> res!1217051 e!1857860)))

(assert (=> b!2949623 (= res!1217051 (not (matchR!4029 lt!1031769 s!11993)))))

(assert (=> b!2949623 (= lt!1031769 (Concat!14468 lt!1031766 lt!1031767))))

(declare-fun b!2949624 () Bool)

(declare-fun tp!943006 () Bool)

(assert (=> b!2949624 (= e!1857863 tp!943006)))

(declare-fun b!2949625 () Bool)

(declare-fun res!1217058 () Bool)

(assert (=> b!2949625 (=> res!1217058 e!1857861)))

(assert (=> b!2949625 (= res!1217058 (isEmptyExpr!350 lt!1031766))))

(assert (= (and start!286108 res!1217057) b!2949616))

(assert (= (and b!2949616 (not res!1217053)) b!2949621))

(assert (= (and b!2949621 (not res!1217055)) b!2949620))

(assert (= (and b!2949620 (not res!1217052)) b!2949613))

(assert (= (and b!2949613 (not res!1217056)) b!2949625))

(assert (= (and b!2949625 (not res!1217058)) b!2949618))

(assert (= (and b!2949618 (not res!1217054)) b!2949623))

(assert (= (and b!2949623 (not res!1217051)) b!2949617))

(assert (= (and start!286108 ((_ is ElementMatch!9147) r!17423)) b!2949614))

(assert (= (and start!286108 ((_ is Concat!14468) r!17423)) b!2949622))

(assert (= (and start!286108 ((_ is Star!9147) r!17423)) b!2949624))

(assert (= (and start!286108 ((_ is Union!9147) r!17423)) b!2949619))

(assert (= (and start!286108 ((_ is Cons!34888) s!11993)) b!2949615))

(declare-fun m!3329061 () Bool)

(assert (=> b!2949620 m!3329061))

(declare-fun m!3329063 () Bool)

(assert (=> b!2949620 m!3329063))

(declare-fun m!3329065 () Bool)

(assert (=> b!2949620 m!3329065))

(declare-fun m!3329067 () Bool)

(assert (=> b!2949613 m!3329067))

(declare-fun m!3329069 () Bool)

(assert (=> b!2949616 m!3329069))

(declare-fun m!3329071 () Bool)

(assert (=> b!2949616 m!3329071))

(declare-fun m!3329073 () Bool)

(assert (=> b!2949616 m!3329073))

(declare-fun m!3329075 () Bool)

(assert (=> b!2949618 m!3329075))

(declare-fun m!3329077 () Bool)

(assert (=> b!2949623 m!3329077))

(declare-fun m!3329079 () Bool)

(assert (=> start!286108 m!3329079))

(declare-fun m!3329081 () Bool)

(assert (=> b!2949617 m!3329081))

(declare-fun m!3329083 () Bool)

(assert (=> b!2949617 m!3329083))

(declare-fun m!3329085 () Bool)

(assert (=> b!2949625 m!3329085))

(declare-fun m!3329087 () Bool)

(assert (=> b!2949621 m!3329087))

(check-sat (not b!2949623) tp_is_empty!15857 (not b!2949622) (not b!2949613) (not b!2949621) (not b!2949616) (not start!286108) (not b!2949615) (not b!2949624) (not b!2949618) (not b!2949617) (not b!2949620) (not b!2949619) (not b!2949625))
(check-sat)
