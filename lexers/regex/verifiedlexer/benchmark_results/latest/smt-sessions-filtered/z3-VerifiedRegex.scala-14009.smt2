; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!740430 () Bool)

(assert start!740430)

(declare-fun b!7779149 () Bool)

(declare-fun e!4608306 () Bool)

(declare-fun tp!2286321 () Bool)

(declare-fun tp!2286319 () Bool)

(assert (=> b!7779149 (= e!4608306 (and tp!2286321 tp!2286319))))

(declare-fun b!7779150 () Bool)

(declare-fun e!4608303 () Bool)

(declare-fun tp_is_empty!51981 () Bool)

(declare-fun tp!2286315 () Bool)

(assert (=> b!7779150 (= e!4608303 (and tp_is_empty!51981 tp!2286315))))

(declare-fun b!7779151 () Bool)

(declare-fun e!4608304 () Bool)

(declare-fun tp!2286313 () Bool)

(declare-fun tp!2286322 () Bool)

(assert (=> b!7779151 (= e!4608304 (and tp!2286313 tp!2286322))))

(declare-fun b!7779152 () Bool)

(declare-fun tp!2286320 () Bool)

(declare-fun tp!2286323 () Bool)

(assert (=> b!7779152 (= e!4608304 (and tp!2286320 tp!2286323))))

(declare-fun b!7779153 () Bool)

(declare-fun e!4608309 () Bool)

(declare-fun e!4608307 () Bool)

(assert (=> b!7779153 (= e!4608309 e!4608307)))

(declare-fun res!3100812 () Bool)

(assert (=> b!7779153 (=> (not res!3100812) (not e!4608307))))

(declare-datatypes ((C!41952 0))(
  ( (C!41953 (val!31416 Int)) )
))
(declare-datatypes ((Regex!20813 0))(
  ( (ElementMatch!20813 (c!1433458 C!41952)) (Concat!29658 (regOne!42138 Regex!20813) (regTwo!42138 Regex!20813)) (EmptyExpr!20813) (Star!20813 (reg!21142 Regex!20813)) (EmptyLang!20813) (Union!20813 (regOne!42139 Regex!20813) (regTwo!42139 Regex!20813)) )
))
(declare-fun lt!2672622 () Regex!20813)

(declare-datatypes ((List!73652 0))(
  ( (Nil!73528) (Cons!73528 (h!79976 C!41952) (t!388387 List!73652)) )
))
(declare-fun s!14292 () List!73652)

(declare-fun matchR!10273 (Regex!20813 List!73652) Bool)

(assert (=> b!7779153 (= res!3100812 (matchR!10273 lt!2672622 s!14292))))

(declare-fun r1!6279 () Regex!20813)

(declare-fun r2!6217 () Regex!20813)

(assert (=> b!7779153 (= lt!2672622 (Concat!29658 r1!6279 r2!6217))))

(declare-fun b!7779154 () Bool)

(declare-fun res!3100813 () Bool)

(assert (=> b!7779154 (=> (not res!3100813) (not e!4608307))))

(get-info :version)

(assert (=> b!7779154 (= res!3100813 ((_ is Cons!73528) s!14292))))

(declare-fun b!7779155 () Bool)

(declare-fun e!4608302 () Bool)

(assert (=> b!7779155 (= e!4608307 e!4608302)))

(declare-fun res!3100814 () Bool)

(assert (=> b!7779155 (=> (not res!3100814) (not e!4608302))))

(declare-fun lt!2672625 () Regex!20813)

(assert (=> b!7779155 (= res!3100814 (matchR!10273 lt!2672625 (t!388387 s!14292)))))

(declare-fun derivativeStep!6156 (Regex!20813 C!41952) Regex!20813)

(assert (=> b!7779155 (= lt!2672625 (derivativeStep!6156 lt!2672622 (h!79976 s!14292)))))

(declare-fun b!7779156 () Bool)

(assert (=> b!7779156 (= e!4608306 tp_is_empty!51981)))

(declare-fun b!7779158 () Bool)

(declare-fun e!4608305 () Bool)

(assert (=> b!7779158 (= e!4608302 e!4608305)))

(declare-fun res!3100815 () Bool)

(assert (=> b!7779158 (=> (not res!3100815) (not e!4608305))))

(declare-fun lt!2672626 () Regex!20813)

(assert (=> b!7779158 (= res!3100815 (= lt!2672625 (Union!20813 lt!2672626 EmptyLang!20813)))))

(assert (=> b!7779158 (= lt!2672626 (Concat!29658 (derivativeStep!6156 r1!6279 (h!79976 s!14292)) r2!6217))))

(declare-fun b!7779159 () Bool)

(declare-fun tp!2286314 () Bool)

(declare-fun tp!2286316 () Bool)

(assert (=> b!7779159 (= e!4608306 (and tp!2286314 tp!2286316))))

(declare-fun b!7779160 () Bool)

(assert (=> b!7779160 (= e!4608305 (not true))))

(declare-fun derivative!541 (Regex!20813 List!73652) Regex!20813)

(assert (=> b!7779160 (= (derivative!541 EmptyLang!20813 (t!388387 s!14292)) EmptyLang!20813)))

(declare-datatypes ((Unit!168516 0))(
  ( (Unit!168517) )
))
(declare-fun lt!2672624 () Unit!168516)

(declare-fun lemmaEmptyLangDerivativeIsAFixPoint!76 (Regex!20813 List!73652) Unit!168516)

(assert (=> b!7779160 (= lt!2672624 (lemmaEmptyLangDerivativeIsAFixPoint!76 EmptyLang!20813 (t!388387 s!14292)))))

(declare-fun e!4608308 () Bool)

(assert (=> b!7779160 e!4608308))

(declare-fun res!3100811 () Bool)

(assert (=> b!7779160 (=> res!3100811 e!4608308)))

(assert (=> b!7779160 (= res!3100811 (matchR!10273 lt!2672626 (t!388387 s!14292)))))

(declare-fun lt!2672623 () Unit!168516)

(declare-fun lemmaRegexUnionAcceptsThenOneOfTheTwoAccepts!382 (Regex!20813 Regex!20813 List!73652) Unit!168516)

(assert (=> b!7779160 (= lt!2672623 (lemmaRegexUnionAcceptsThenOneOfTheTwoAccepts!382 lt!2672626 EmptyLang!20813 (t!388387 s!14292)))))

(declare-fun b!7779161 () Bool)

(declare-fun res!3100816 () Bool)

(assert (=> b!7779161 (=> (not res!3100816) (not e!4608309))))

(declare-fun validRegex!11227 (Regex!20813) Bool)

(assert (=> b!7779161 (= res!3100816 (validRegex!11227 r2!6217))))

(declare-fun b!7779162 () Bool)

(assert (=> b!7779162 (= e!4608308 (matchR!10273 EmptyLang!20813 (t!388387 s!14292)))))

(declare-fun b!7779163 () Bool)

(declare-fun res!3100810 () Bool)

(assert (=> b!7779163 (=> (not res!3100810) (not e!4608302))))

(declare-fun nullable!9201 (Regex!20813) Bool)

(assert (=> b!7779163 (= res!3100810 (not (nullable!9201 r1!6279)))))

(declare-fun b!7779157 () Bool)

(assert (=> b!7779157 (= e!4608304 tp_is_empty!51981)))

(declare-fun res!3100809 () Bool)

(assert (=> start!740430 (=> (not res!3100809) (not e!4608309))))

(assert (=> start!740430 (= res!3100809 (validRegex!11227 r1!6279))))

(assert (=> start!740430 e!4608309))

(assert (=> start!740430 e!4608306))

(assert (=> start!740430 e!4608304))

(assert (=> start!740430 e!4608303))

(declare-fun b!7779164 () Bool)

(declare-fun tp!2286317 () Bool)

(assert (=> b!7779164 (= e!4608304 tp!2286317)))

(declare-fun b!7779165 () Bool)

(declare-fun tp!2286318 () Bool)

(assert (=> b!7779165 (= e!4608306 tp!2286318)))

(assert (= (and start!740430 res!3100809) b!7779161))

(assert (= (and b!7779161 res!3100816) b!7779153))

(assert (= (and b!7779153 res!3100812) b!7779154))

(assert (= (and b!7779154 res!3100813) b!7779155))

(assert (= (and b!7779155 res!3100814) b!7779163))

(assert (= (and b!7779163 res!3100810) b!7779158))

(assert (= (and b!7779158 res!3100815) b!7779160))

(assert (= (and b!7779160 (not res!3100811)) b!7779162))

(assert (= (and start!740430 ((_ is ElementMatch!20813) r1!6279)) b!7779156))

(assert (= (and start!740430 ((_ is Concat!29658) r1!6279)) b!7779159))

(assert (= (and start!740430 ((_ is Star!20813) r1!6279)) b!7779165))

(assert (= (and start!740430 ((_ is Union!20813) r1!6279)) b!7779149))

(assert (= (and start!740430 ((_ is ElementMatch!20813) r2!6217)) b!7779157))

(assert (= (and start!740430 ((_ is Concat!29658) r2!6217)) b!7779151))

(assert (= (and start!740430 ((_ is Star!20813) r2!6217)) b!7779164))

(assert (= (and start!740430 ((_ is Union!20813) r2!6217)) b!7779152))

(assert (= (and start!740430 ((_ is Cons!73528) s!14292)) b!7779150))

(declare-fun m!8228222 () Bool)

(assert (=> b!7779155 m!8228222))

(declare-fun m!8228224 () Bool)

(assert (=> b!7779155 m!8228224))

(declare-fun m!8228226 () Bool)

(assert (=> start!740430 m!8228226))

(declare-fun m!8228228 () Bool)

(assert (=> b!7779158 m!8228228))

(declare-fun m!8228230 () Bool)

(assert (=> b!7779153 m!8228230))

(declare-fun m!8228232 () Bool)

(assert (=> b!7779160 m!8228232))

(declare-fun m!8228234 () Bool)

(assert (=> b!7779160 m!8228234))

(declare-fun m!8228236 () Bool)

(assert (=> b!7779160 m!8228236))

(declare-fun m!8228238 () Bool)

(assert (=> b!7779160 m!8228238))

(declare-fun m!8228240 () Bool)

(assert (=> b!7779163 m!8228240))

(declare-fun m!8228242 () Bool)

(assert (=> b!7779162 m!8228242))

(declare-fun m!8228244 () Bool)

(assert (=> b!7779161 m!8228244))

(check-sat tp_is_empty!51981 (not b!7779152) (not b!7779159) (not b!7779160) (not b!7779164) (not b!7779153) (not b!7779161) (not start!740430) (not b!7779162) (not b!7779150) (not b!7779165) (not b!7779149) (not b!7779151) (not b!7779158) (not b!7779155) (not b!7779163))
(check-sat)
