; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!287116 () Bool)

(assert start!287116)

(declare-fun b!2965443 () Bool)

(declare-fun e!1866291 () Bool)

(declare-fun tp_is_empty!16013 () Bool)

(declare-fun tp!946005 () Bool)

(assert (=> b!2965443 (= e!1866291 (and tp_is_empty!16013 tp!946005))))

(declare-fun res!1223175 () Bool)

(declare-fun e!1866289 () Bool)

(assert (=> start!287116 (=> (not res!1223175) (not e!1866289))))

(declare-datatypes ((C!18636 0))(
  ( (C!18637 (val!11354 Int)) )
))
(declare-datatypes ((Regex!9225 0))(
  ( (ElementMatch!9225 (c!486283 C!18636)) (Concat!14546 (regOne!18962 Regex!9225) (regTwo!18962 Regex!9225)) (EmptyExpr!9225) (Star!9225 (reg!9554 Regex!9225)) (EmptyLang!9225) (Union!9225 (regOne!18963 Regex!9225) (regTwo!18963 Regex!9225)) )
))
(declare-fun r!17423 () Regex!9225)

(declare-fun validRegex!3958 (Regex!9225) Bool)

(assert (=> start!287116 (= res!1223175 (validRegex!3958 r!17423))))

(assert (=> start!287116 e!1866289))

(declare-fun e!1866286 () Bool)

(assert (=> start!287116 e!1866286))

(assert (=> start!287116 e!1866291))

(declare-fun b!2965444 () Bool)

(declare-fun tp!946008 () Bool)

(declare-fun tp!946007 () Bool)

(assert (=> b!2965444 (= e!1866286 (and tp!946008 tp!946007))))

(declare-fun b!2965445 () Bool)

(declare-fun e!1866290 () Bool)

(assert (=> b!2965445 (= e!1866290 true)))

(declare-fun e!1866288 () Bool)

(assert (=> b!2965445 e!1866288))

(declare-fun res!1223177 () Bool)

(assert (=> b!2965445 (=> res!1223177 e!1866288)))

(declare-fun lt!1035053 () Regex!9225)

(declare-datatypes ((List!35090 0))(
  ( (Nil!34966) (Cons!34966 (h!40386 C!18636) (t!234155 List!35090)) )
))
(declare-fun s!11993 () List!35090)

(declare-fun matchR!4107 (Regex!9225 List!35090) Bool)

(assert (=> b!2965445 (= res!1223177 (matchR!4107 lt!1035053 s!11993))))

(declare-datatypes ((Unit!48829 0))(
  ( (Unit!48830) )
))
(declare-fun lt!1035056 () Unit!48829)

(declare-fun lt!1035052 () Regex!9225)

(declare-fun lemmaRegexUnionAcceptsThenOneOfTheTwoAccepts!274 (Regex!9225 Regex!9225 List!35090) Unit!48829)

(assert (=> b!2965445 (= lt!1035056 (lemmaRegexUnionAcceptsThenOneOfTheTwoAccepts!274 lt!1035053 lt!1035052 s!11993))))

(declare-fun b!2965446 () Bool)

(declare-fun tp!946009 () Bool)

(assert (=> b!2965446 (= e!1866286 tp!946009)))

(declare-fun b!2965447 () Bool)

(declare-fun res!1223178 () Bool)

(assert (=> b!2965447 (=> res!1223178 e!1866290)))

(assert (=> b!2965447 (= res!1223178 (not (matchR!4107 (Union!9225 lt!1035053 lt!1035052) s!11993)))))

(declare-fun b!2965448 () Bool)

(declare-fun e!1866287 () Bool)

(assert (=> b!2965448 (= e!1866289 (not e!1866287))))

(declare-fun res!1223173 () Bool)

(assert (=> b!2965448 (=> res!1223173 e!1866287)))

(declare-fun lt!1035055 () Bool)

(get-info :version)

(assert (=> b!2965448 (= res!1223173 (or lt!1035055 ((_ is Concat!14546) r!17423) (not ((_ is Union!9225) r!17423))))))

(declare-fun matchRSpec!1362 (Regex!9225 List!35090) Bool)

(assert (=> b!2965448 (= lt!1035055 (matchRSpec!1362 r!17423 s!11993))))

(assert (=> b!2965448 (= lt!1035055 (matchR!4107 r!17423 s!11993))))

(declare-fun lt!1035054 () Unit!48829)

(declare-fun mainMatchTheorem!1362 (Regex!9225 List!35090) Unit!48829)

(assert (=> b!2965448 (= lt!1035054 (mainMatchTheorem!1362 r!17423 s!11993))))

(declare-fun b!2965449 () Bool)

(assert (=> b!2965449 (= e!1866286 tp_is_empty!16013)))

(declare-fun b!2965450 () Bool)

(assert (=> b!2965450 (= e!1866288 (matchR!4107 lt!1035052 s!11993))))

(declare-fun b!2965451 () Bool)

(declare-fun res!1223174 () Bool)

(assert (=> b!2965451 (=> res!1223174 e!1866290)))

(declare-fun isEmptyLang!341 (Regex!9225) Bool)

(assert (=> b!2965451 (= res!1223174 (isEmptyLang!341 lt!1035052))))

(declare-fun b!2965452 () Bool)

(assert (=> b!2965452 (= e!1866287 e!1866290)))

(declare-fun res!1223176 () Bool)

(assert (=> b!2965452 (=> res!1223176 e!1866290)))

(assert (=> b!2965452 (= res!1223176 (isEmptyLang!341 lt!1035053))))

(declare-fun simplify!228 (Regex!9225) Regex!9225)

(assert (=> b!2965452 (= lt!1035052 (simplify!228 (regTwo!18963 r!17423)))))

(assert (=> b!2965452 (= lt!1035053 (simplify!228 (regOne!18963 r!17423)))))

(declare-fun b!2965453 () Bool)

(declare-fun tp!946006 () Bool)

(declare-fun tp!946004 () Bool)

(assert (=> b!2965453 (= e!1866286 (and tp!946006 tp!946004))))

(assert (= (and start!287116 res!1223175) b!2965448))

(assert (= (and b!2965448 (not res!1223173)) b!2965452))

(assert (= (and b!2965452 (not res!1223176)) b!2965451))

(assert (= (and b!2965451 (not res!1223174)) b!2965447))

(assert (= (and b!2965447 (not res!1223178)) b!2965445))

(assert (= (and b!2965445 (not res!1223177)) b!2965450))

(assert (= (and start!287116 ((_ is ElementMatch!9225) r!17423)) b!2965449))

(assert (= (and start!287116 ((_ is Concat!14546) r!17423)) b!2965453))

(assert (= (and start!287116 ((_ is Star!9225) r!17423)) b!2965446))

(assert (= (and start!287116 ((_ is Union!9225) r!17423)) b!2965444))

(assert (= (and start!287116 ((_ is Cons!34966) s!11993)) b!2965443))

(declare-fun m!3336091 () Bool)

(assert (=> b!2965445 m!3336091))

(declare-fun m!3336093 () Bool)

(assert (=> b!2965445 m!3336093))

(declare-fun m!3336095 () Bool)

(assert (=> b!2965452 m!3336095))

(declare-fun m!3336097 () Bool)

(assert (=> b!2965452 m!3336097))

(declare-fun m!3336099 () Bool)

(assert (=> b!2965452 m!3336099))

(declare-fun m!3336101 () Bool)

(assert (=> b!2965450 m!3336101))

(declare-fun m!3336103 () Bool)

(assert (=> b!2965448 m!3336103))

(declare-fun m!3336105 () Bool)

(assert (=> b!2965448 m!3336105))

(declare-fun m!3336107 () Bool)

(assert (=> b!2965448 m!3336107))

(declare-fun m!3336109 () Bool)

(assert (=> b!2965451 m!3336109))

(declare-fun m!3336111 () Bool)

(assert (=> start!287116 m!3336111))

(declare-fun m!3336113 () Bool)

(assert (=> b!2965447 m!3336113))

(check-sat (not b!2965446) (not b!2965443) (not b!2965444) (not b!2965452) (not b!2965453) (not b!2965447) (not b!2965451) tp_is_empty!16013 (not start!287116) (not b!2965445) (not b!2965450) (not b!2965448))
(check-sat)
