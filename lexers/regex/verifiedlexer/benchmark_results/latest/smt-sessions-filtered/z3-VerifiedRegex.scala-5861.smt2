; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!287500 () Bool)

(assert start!287500)

(declare-fun b!2972697 () Bool)

(declare-fun e!1870266 () Bool)

(declare-fun tp!947708 () Bool)

(declare-fun tp!947706 () Bool)

(assert (=> b!2972697 (= e!1870266 (and tp!947708 tp!947706))))

(declare-fun b!2972698 () Bool)

(declare-fun e!1870265 () Bool)

(declare-fun tp_is_empty!16109 () Bool)

(declare-fun tp!947705 () Bool)

(assert (=> b!2972698 (= e!1870265 (and tp_is_empty!16109 tp!947705))))

(declare-fun b!2972699 () Bool)

(declare-fun tp!947709 () Bool)

(assert (=> b!2972699 (= e!1870266 tp!947709)))

(declare-fun res!1225754 () Bool)

(declare-fun e!1870264 () Bool)

(assert (=> start!287500 (=> (not res!1225754) (not e!1870264))))

(declare-datatypes ((C!18732 0))(
  ( (C!18733 (val!11402 Int)) )
))
(declare-datatypes ((Regex!9273 0))(
  ( (ElementMatch!9273 (c!487879 C!18732)) (Concat!14594 (regOne!19058 Regex!9273) (regTwo!19058 Regex!9273)) (EmptyExpr!9273) (Star!9273 (reg!9602 Regex!9273)) (EmptyLang!9273) (Union!9273 (regOne!19059 Regex!9273) (regTwo!19059 Regex!9273)) )
))
(declare-fun r!17423 () Regex!9273)

(declare-fun validRegex!4006 (Regex!9273) Bool)

(assert (=> start!287500 (= res!1225754 (validRegex!4006 r!17423))))

(assert (=> start!287500 e!1870264))

(assert (=> start!287500 e!1870266))

(assert (=> start!287500 e!1870265))

(declare-fun b!2972700 () Bool)

(declare-fun e!1870269 () Bool)

(declare-fun e!1870268 () Bool)

(assert (=> b!2972700 (= e!1870269 e!1870268)))

(declare-fun res!1225755 () Bool)

(assert (=> b!2972700 (=> res!1225755 e!1870268)))

(declare-fun lt!1036432 () Regex!9273)

(declare-datatypes ((List!35138 0))(
  ( (Nil!35014) (Cons!35014 (h!40434 C!18732) (t!234203 List!35138)) )
))
(declare-fun s!11993 () List!35138)

(declare-fun matchR!4155 (Regex!9273 List!35138) Bool)

(assert (=> b!2972700 (= res!1225755 (not (matchR!4155 lt!1036432 s!11993)))))

(declare-fun lt!1036436 () Regex!9273)

(assert (=> b!2972700 (= lt!1036432 (Star!9273 lt!1036436))))

(declare-fun b!2972701 () Bool)

(assert (=> b!2972701 (= e!1870266 tp_is_empty!16109)))

(declare-fun b!2972702 () Bool)

(declare-fun e!1870267 () Bool)

(assert (=> b!2972702 (= e!1870267 e!1870269)))

(declare-fun res!1225756 () Bool)

(assert (=> b!2972702 (=> res!1225756 e!1870269)))

(declare-fun isEmptyLang!387 (Regex!9273) Bool)

(assert (=> b!2972702 (= res!1225756 (isEmptyLang!387 lt!1036436))))

(declare-fun simplify!274 (Regex!9273) Regex!9273)

(assert (=> b!2972702 (= lt!1036436 (simplify!274 (reg!9602 r!17423)))))

(declare-fun b!2972703 () Bool)

(assert (=> b!2972703 (= e!1870264 (not e!1870267))))

(declare-fun res!1225753 () Bool)

(assert (=> b!2972703 (=> res!1225753 e!1870267)))

(declare-fun lt!1036435 () Bool)

(get-info :version)

(assert (=> b!2972703 (= res!1225753 (or lt!1036435 ((_ is Concat!14594) r!17423) ((_ is Union!9273) r!17423) (not ((_ is Star!9273) r!17423))))))

(declare-fun matchRSpec!1410 (Regex!9273 List!35138) Bool)

(assert (=> b!2972703 (= lt!1036435 (matchRSpec!1410 r!17423 s!11993))))

(assert (=> b!2972703 (= lt!1036435 (matchR!4155 r!17423 s!11993))))

(declare-datatypes ((Unit!48925 0))(
  ( (Unit!48926) )
))
(declare-fun lt!1036433 () Unit!48925)

(declare-fun mainMatchTheorem!1410 (Regex!9273 List!35138) Unit!48925)

(assert (=> b!2972703 (= lt!1036433 (mainMatchTheorem!1410 r!17423 s!11993))))

(declare-fun b!2972704 () Bool)

(declare-fun tp!947707 () Bool)

(declare-fun tp!947704 () Bool)

(assert (=> b!2972704 (= e!1870266 (and tp!947707 tp!947704))))

(declare-fun b!2972705 () Bool)

(assert (=> b!2972705 (= e!1870268 true)))

(assert (=> b!2972705 (matchRSpec!1410 lt!1036432 s!11993)))

(declare-fun lt!1036434 () Unit!48925)

(assert (=> b!2972705 (= lt!1036434 (mainMatchTheorem!1410 lt!1036432 s!11993))))

(assert (= (and start!287500 res!1225754) b!2972703))

(assert (= (and b!2972703 (not res!1225753)) b!2972702))

(assert (= (and b!2972702 (not res!1225756)) b!2972700))

(assert (= (and b!2972700 (not res!1225755)) b!2972705))

(assert (= (and start!287500 ((_ is ElementMatch!9273) r!17423)) b!2972701))

(assert (= (and start!287500 ((_ is Concat!14594) r!17423)) b!2972697))

(assert (= (and start!287500 ((_ is Star!9273) r!17423)) b!2972699))

(assert (= (and start!287500 ((_ is Union!9273) r!17423)) b!2972704))

(assert (= (and start!287500 ((_ is Cons!35014) s!11993)) b!2972698))

(declare-fun m!3338735 () Bool)

(assert (=> start!287500 m!3338735))

(declare-fun m!3338737 () Bool)

(assert (=> b!2972705 m!3338737))

(declare-fun m!3338739 () Bool)

(assert (=> b!2972705 m!3338739))

(declare-fun m!3338741 () Bool)

(assert (=> b!2972700 m!3338741))

(declare-fun m!3338743 () Bool)

(assert (=> b!2972702 m!3338743))

(declare-fun m!3338745 () Bool)

(assert (=> b!2972702 m!3338745))

(declare-fun m!3338747 () Bool)

(assert (=> b!2972703 m!3338747))

(declare-fun m!3338749 () Bool)

(assert (=> b!2972703 m!3338749))

(declare-fun m!3338751 () Bool)

(assert (=> b!2972703 m!3338751))

(check-sat (not b!2972703) (not b!2972699) (not b!2972697) (not b!2972700) (not b!2972698) (not start!287500) tp_is_empty!16109 (not b!2972702) (not b!2972704) (not b!2972705))
(check-sat)
