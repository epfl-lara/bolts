; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!287212 () Bool)

(assert start!287212)

(declare-fun b!2967297 () Bool)

(declare-fun res!1223942 () Bool)

(declare-fun e!1867308 () Bool)

(assert (=> b!2967297 (=> res!1223942 e!1867308)))

(declare-datatypes ((C!18668 0))(
  ( (C!18669 (val!11370 Int)) )
))
(declare-datatypes ((Regex!9241 0))(
  ( (ElementMatch!9241 (c!486645 C!18668)) (Concat!14562 (regOne!18994 Regex!9241) (regTwo!18994 Regex!9241)) (EmptyExpr!9241) (Star!9241 (reg!9570 Regex!9241)) (EmptyLang!9241) (Union!9241 (regOne!18995 Regex!9241) (regTwo!18995 Regex!9241)) )
))
(declare-fun lt!1035567 () Regex!9241)

(declare-fun isEmptyLang!357 (Regex!9241) Bool)

(assert (=> b!2967297 (= res!1223942 (isEmptyLang!357 lt!1035567))))

(declare-fun b!2967298 () Bool)

(declare-fun e!1867309 () Bool)

(declare-fun tp!946449 () Bool)

(assert (=> b!2967298 (= e!1867309 tp!946449)))

(declare-fun b!2967299 () Bool)

(declare-fun tp!946448 () Bool)

(declare-fun tp!946444 () Bool)

(assert (=> b!2967299 (= e!1867309 (and tp!946448 tp!946444))))

(declare-fun b!2967300 () Bool)

(assert (=> b!2967300 (= e!1867308 true)))

(declare-fun lt!1035569 () Regex!9241)

(declare-datatypes ((List!35106 0))(
  ( (Nil!34982) (Cons!34982 (h!40402 C!18668) (t!234171 List!35106)) )
))
(declare-fun s!11993 () List!35106)

(declare-fun lt!1035568 () Bool)

(declare-fun matchR!4123 (Regex!9241 List!35106) Bool)

(assert (=> b!2967300 (= lt!1035568 (matchR!4123 (Union!9241 lt!1035569 lt!1035567) s!11993))))

(declare-fun b!2967301 () Bool)

(declare-fun tp_is_empty!16045 () Bool)

(assert (=> b!2967301 (= e!1867309 tp_is_empty!16045)))

(declare-fun b!2967302 () Bool)

(declare-fun tp!946447 () Bool)

(declare-fun tp!946446 () Bool)

(assert (=> b!2967302 (= e!1867309 (and tp!946447 tp!946446))))

(declare-fun b!2967303 () Bool)

(declare-fun e!1867307 () Bool)

(declare-fun e!1867310 () Bool)

(assert (=> b!2967303 (= e!1867307 (not e!1867310))))

(declare-fun res!1223941 () Bool)

(assert (=> b!2967303 (=> res!1223941 e!1867310)))

(declare-fun lt!1035570 () Bool)

(declare-fun r!17423 () Regex!9241)

(get-info :version)

(assert (=> b!2967303 (= res!1223941 (or lt!1035570 ((_ is Concat!14562) r!17423) (not ((_ is Union!9241) r!17423))))))

(declare-fun matchRSpec!1378 (Regex!9241 List!35106) Bool)

(assert (=> b!2967303 (= lt!1035570 (matchRSpec!1378 r!17423 s!11993))))

(assert (=> b!2967303 (= lt!1035570 (matchR!4123 r!17423 s!11993))))

(declare-datatypes ((Unit!48861 0))(
  ( (Unit!48862) )
))
(declare-fun lt!1035566 () Unit!48861)

(declare-fun mainMatchTheorem!1378 (Regex!9241 List!35106) Unit!48861)

(assert (=> b!2967303 (= lt!1035566 (mainMatchTheorem!1378 r!17423 s!11993))))

(declare-fun res!1223939 () Bool)

(assert (=> start!287212 (=> (not res!1223939) (not e!1867307))))

(declare-fun validRegex!3974 (Regex!9241) Bool)

(assert (=> start!287212 (= res!1223939 (validRegex!3974 r!17423))))

(assert (=> start!287212 e!1867307))

(assert (=> start!287212 e!1867309))

(declare-fun e!1867311 () Bool)

(assert (=> start!287212 e!1867311))

(declare-fun b!2967304 () Bool)

(declare-fun tp!946445 () Bool)

(assert (=> b!2967304 (= e!1867311 (and tp_is_empty!16045 tp!946445))))

(declare-fun b!2967305 () Bool)

(assert (=> b!2967305 (= e!1867310 e!1867308)))

(declare-fun res!1223940 () Bool)

(assert (=> b!2967305 (=> res!1223940 e!1867308)))

(assert (=> b!2967305 (= res!1223940 (isEmptyLang!357 lt!1035569))))

(declare-fun simplify!244 (Regex!9241) Regex!9241)

(assert (=> b!2967305 (= lt!1035567 (simplify!244 (regTwo!18995 r!17423)))))

(assert (=> b!2967305 (= lt!1035569 (simplify!244 (regOne!18995 r!17423)))))

(assert (= (and start!287212 res!1223939) b!2967303))

(assert (= (and b!2967303 (not res!1223941)) b!2967305))

(assert (= (and b!2967305 (not res!1223940)) b!2967297))

(assert (= (and b!2967297 (not res!1223942)) b!2967300))

(assert (= (and start!287212 ((_ is ElementMatch!9241) r!17423)) b!2967301))

(assert (= (and start!287212 ((_ is Concat!14562) r!17423)) b!2967299))

(assert (= (and start!287212 ((_ is Star!9241) r!17423)) b!2967298))

(assert (= (and start!287212 ((_ is Union!9241) r!17423)) b!2967302))

(assert (= (and start!287212 ((_ is Cons!34982) s!11993)) b!2967304))

(declare-fun m!3336975 () Bool)

(assert (=> b!2967300 m!3336975))

(declare-fun m!3336977 () Bool)

(assert (=> start!287212 m!3336977))

(declare-fun m!3336979 () Bool)

(assert (=> b!2967297 m!3336979))

(declare-fun m!3336981 () Bool)

(assert (=> b!2967303 m!3336981))

(declare-fun m!3336983 () Bool)

(assert (=> b!2967303 m!3336983))

(declare-fun m!3336985 () Bool)

(assert (=> b!2967303 m!3336985))

(declare-fun m!3336987 () Bool)

(assert (=> b!2967305 m!3336987))

(declare-fun m!3336989 () Bool)

(assert (=> b!2967305 m!3336989))

(declare-fun m!3336991 () Bool)

(assert (=> b!2967305 m!3336991))

(check-sat (not b!2967305) (not b!2967299) (not b!2967297) (not b!2967302) (not b!2967300) (not b!2967304) tp_is_empty!16045 (not b!2967298) (not b!2967303) (not start!287212))
(check-sat)
