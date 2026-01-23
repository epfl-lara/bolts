; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!290696 () Bool)

(assert start!290696)

(declare-fun b!3028867 () Bool)

(declare-fun e!1899777 () Bool)

(declare-fun tp!960233 () Bool)

(declare-fun tp!960234 () Bool)

(assert (=> b!3028867 (= e!1899777 (and tp!960233 tp!960234))))

(declare-fun b!3028868 () Bool)

(declare-fun res!1246319 () Bool)

(declare-fun e!1899775 () Bool)

(assert (=> b!3028868 (=> res!1246319 e!1899775)))

(declare-datatypes ((C!19024 0))(
  ( (C!19025 (val!11548 Int)) )
))
(declare-datatypes ((Regex!9419 0))(
  ( (ElementMatch!9419 (c!500305 C!19024)) (Concat!14740 (regOne!19350 Regex!9419) (regTwo!19350 Regex!9419)) (EmptyExpr!9419) (Star!9419 (reg!9748 Regex!9419)) (EmptyLang!9419) (Union!9419 (regOne!19351 Regex!9419) (regTwo!19351 Regex!9419)) )
))
(declare-fun r!17423 () Regex!9419)

(declare-fun validRegex!4152 (Regex!9419) Bool)

(assert (=> b!3028868 (= res!1246319 (not (validRegex!4152 (regOne!19351 r!17423))))))

(declare-fun b!3028869 () Bool)

(declare-fun res!1246318 () Bool)

(assert (=> b!3028869 (=> res!1246318 e!1899775)))

(assert (=> b!3028869 (= res!1246318 (not (validRegex!4152 (regTwo!19351 r!17423))))))

(declare-fun b!3028870 () Bool)

(declare-fun e!1899774 () Bool)

(declare-fun tp_is_empty!16401 () Bool)

(declare-fun tp!960232 () Bool)

(assert (=> b!3028870 (= e!1899774 (and tp_is_empty!16401 tp!960232))))

(declare-fun b!3028871 () Bool)

(assert (=> b!3028871 (= e!1899777 tp_is_empty!16401)))

(declare-fun b!3028872 () Bool)

(declare-fun e!1899776 () Bool)

(assert (=> b!3028872 (= e!1899776 (not e!1899775))))

(declare-fun res!1246317 () Bool)

(assert (=> b!3028872 (=> res!1246317 e!1899775)))

(declare-fun lt!1045671 () Bool)

(get-info :version)

(assert (=> b!3028872 (= res!1246317 (or (not lt!1045671) ((_ is Concat!14740) r!17423) (not ((_ is Union!9419) r!17423))))))

(declare-datatypes ((List!35284 0))(
  ( (Nil!35160) (Cons!35160 (h!40580 C!19024) (t!234349 List!35284)) )
))
(declare-fun s!11993 () List!35284)

(declare-fun matchRSpec!1556 (Regex!9419 List!35284) Bool)

(assert (=> b!3028872 (= lt!1045671 (matchRSpec!1556 r!17423 s!11993))))

(declare-fun matchR!4301 (Regex!9419 List!35284) Bool)

(assert (=> b!3028872 (= lt!1045671 (matchR!4301 r!17423 s!11993))))

(declare-datatypes ((Unit!49261 0))(
  ( (Unit!49262) )
))
(declare-fun lt!1045672 () Unit!49261)

(declare-fun mainMatchTheorem!1556 (Regex!9419 List!35284) Unit!49261)

(assert (=> b!3028872 (= lt!1045672 (mainMatchTheorem!1556 r!17423 s!11993))))

(declare-fun b!3028874 () Bool)

(declare-fun tp!960237 () Bool)

(assert (=> b!3028874 (= e!1899777 tp!960237)))

(declare-fun b!3028875 () Bool)

(assert (=> b!3028875 (= e!1899775 (matchR!4301 (Union!9419 (regOne!19351 r!17423) (regTwo!19351 r!17423)) s!11993))))

(declare-fun b!3028873 () Bool)

(declare-fun tp!960235 () Bool)

(declare-fun tp!960236 () Bool)

(assert (=> b!3028873 (= e!1899777 (and tp!960235 tp!960236))))

(declare-fun res!1246320 () Bool)

(assert (=> start!290696 (=> (not res!1246320) (not e!1899776))))

(assert (=> start!290696 (= res!1246320 (validRegex!4152 r!17423))))

(assert (=> start!290696 e!1899776))

(assert (=> start!290696 e!1899777))

(assert (=> start!290696 e!1899774))

(assert (= (and start!290696 res!1246320) b!3028872))

(assert (= (and b!3028872 (not res!1246317)) b!3028868))

(assert (= (and b!3028868 (not res!1246319)) b!3028869))

(assert (= (and b!3028869 (not res!1246318)) b!3028875))

(assert (= (and start!290696 ((_ is ElementMatch!9419) r!17423)) b!3028871))

(assert (= (and start!290696 ((_ is Concat!14740) r!17423)) b!3028873))

(assert (= (and start!290696 ((_ is Star!9419) r!17423)) b!3028874))

(assert (= (and start!290696 ((_ is Union!9419) r!17423)) b!3028867))

(assert (= (and start!290696 ((_ is Cons!35160) s!11993)) b!3028870))

(declare-fun m!3367043 () Bool)

(assert (=> b!3028875 m!3367043))

(declare-fun m!3367045 () Bool)

(assert (=> start!290696 m!3367045))

(declare-fun m!3367047 () Bool)

(assert (=> b!3028869 m!3367047))

(declare-fun m!3367049 () Bool)

(assert (=> b!3028868 m!3367049))

(declare-fun m!3367051 () Bool)

(assert (=> b!3028872 m!3367051))

(declare-fun m!3367053 () Bool)

(assert (=> b!3028872 m!3367053))

(declare-fun m!3367055 () Bool)

(assert (=> b!3028872 m!3367055))

(check-sat (not b!3028875) (not start!290696) (not b!3028868) (not b!3028872) (not b!3028870) (not b!3028874) (not b!3028867) (not b!3028873) tp_is_empty!16401 (not b!3028869))
(check-sat)
