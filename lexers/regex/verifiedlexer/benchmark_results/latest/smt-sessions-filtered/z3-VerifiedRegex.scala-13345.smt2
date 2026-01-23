; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!724118 () Bool)

(assert start!724118)

(declare-fun b!7466453 () Bool)

(assert (=> b!7466453 true))

(assert (=> b!7466453 true))

(assert (=> b!7466453 true))

(declare-fun lambda!462115 () Int)

(declare-fun lambda!462114 () Int)

(assert (=> b!7466453 (not (= lambda!462115 lambda!462114))))

(assert (=> b!7466453 true))

(assert (=> b!7466453 true))

(assert (=> b!7466453 true))

(declare-fun bs!1930289 () Bool)

(declare-fun b!7466462 () Bool)

(assert (= bs!1930289 (and b!7466462 b!7466453)))

(declare-fun lambda!462116 () Int)

(declare-datatypes ((C!39380 0))(
  ( (C!39381 (val!30088 Int)) )
))
(declare-datatypes ((Regex!19553 0))(
  ( (ElementMatch!19553 (c!1379986 C!39380)) (Concat!28398 (regOne!39618 Regex!19553) (regTwo!39618 Regex!19553)) (EmptyExpr!19553) (Star!19553 (reg!19882 Regex!19553)) (EmptyLang!19553) (Union!19553 (regOne!39619 Regex!19553) (regTwo!39619 Regex!19553)) )
))
(declare-fun r1!5845 () Regex!19553)

(declare-fun lt!2623917 () Regex!19553)

(assert (=> bs!1930289 (= (= r1!5845 lt!2623917) (= lambda!462116 lambda!462114))))

(assert (=> bs!1930289 (not (= lambda!462116 lambda!462115))))

(assert (=> b!7466462 true))

(assert (=> b!7466462 true))

(assert (=> b!7466462 true))

(declare-fun lambda!462117 () Int)

(assert (=> bs!1930289 (not (= lambda!462117 lambda!462114))))

(assert (=> bs!1930289 (= (= r1!5845 lt!2623917) (= lambda!462117 lambda!462115))))

(assert (=> b!7466462 (not (= lambda!462117 lambda!462116))))

(assert (=> b!7466462 true))

(assert (=> b!7466462 true))

(assert (=> b!7466462 true))

(declare-fun e!4455248 () Bool)

(declare-fun e!4455252 () Bool)

(assert (=> b!7466453 (= e!4455248 e!4455252)))

(declare-fun res!2995034 () Bool)

(assert (=> b!7466453 (=> res!2995034 e!4455252)))

(declare-fun lt!2623909 () Bool)

(declare-fun lt!2623911 () Bool)

(assert (=> b!7466453 (= res!2995034 (or lt!2623909 (not lt!2623911)))))

(declare-fun Exists!4172 (Int) Bool)

(assert (=> b!7466453 (= (Exists!4172 lambda!462114) (Exists!4172 lambda!462115))))

(declare-datatypes ((List!72269 0))(
  ( (Nil!72145) (Cons!72145 (h!78593 C!39380) (t!386838 List!72269)) )
))
(declare-fun s!13591 () List!72269)

(declare-datatypes ((Unit!165941 0))(
  ( (Unit!165942) )
))
(declare-fun lt!2623921 () Unit!165941)

(declare-fun rTail!78 () Regex!19553)

(declare-fun lemmaExistCutMatchRandMatchRSpecEquivalent!2506 (Regex!19553 Regex!19553 List!72269) Unit!165941)

(assert (=> b!7466453 (= lt!2623921 (lemmaExistCutMatchRandMatchRSpecEquivalent!2506 lt!2623917 rTail!78 s!13591))))

(assert (=> b!7466453 (= lt!2623909 (Exists!4172 lambda!462114))))

(declare-datatypes ((tuple2!68556 0))(
  ( (tuple2!68557 (_1!37581 List!72269) (_2!37581 List!72269)) )
))
(declare-datatypes ((Option!17110 0))(
  ( (None!17109) (Some!17109 (v!54238 tuple2!68556)) )
))
(declare-fun isDefined!13799 (Option!17110) Bool)

(declare-fun findConcatSeparation!3232 (Regex!19553 Regex!19553 List!72269 List!72269 List!72269) Option!17110)

(assert (=> b!7466453 (= lt!2623909 (isDefined!13799 (findConcatSeparation!3232 lt!2623917 rTail!78 Nil!72145 s!13591 s!13591)))))

(declare-fun lt!2623920 () Unit!165941)

(declare-fun lemmaFindConcatSeparationEquivalentToExists!2990 (Regex!19553 Regex!19553 List!72269) Unit!165941)

(assert (=> b!7466453 (= lt!2623920 (lemmaFindConcatSeparationEquivalentToExists!2990 lt!2623917 rTail!78 s!13591))))

(declare-fun b!7466454 () Bool)

(declare-fun e!4455251 () Bool)

(declare-fun tp!2164494 () Bool)

(assert (=> b!7466454 (= e!4455251 tp!2164494)))

(declare-fun b!7466455 () Bool)

(declare-fun e!4455247 () Bool)

(declare-fun tp!2164492 () Bool)

(assert (=> b!7466455 (= e!4455247 tp!2164492)))

(declare-fun b!7466456 () Bool)

(declare-fun tp!2164497 () Bool)

(declare-fun tp!2164503 () Bool)

(assert (=> b!7466456 (= e!4455251 (and tp!2164497 tp!2164503))))

(declare-fun b!7466457 () Bool)

(declare-fun e!4455249 () Bool)

(assert (=> b!7466457 (= e!4455249 (not e!4455248))))

(declare-fun res!2995030 () Bool)

(assert (=> b!7466457 (=> res!2995030 e!4455248)))

(declare-fun lt!2623910 () Bool)

(assert (=> b!7466457 (= res!2995030 lt!2623910)))

(declare-fun lt!2623922 () Regex!19553)

(declare-fun matchRSpec!4232 (Regex!19553 List!72269) Bool)

(assert (=> b!7466457 (= lt!2623911 (matchRSpec!4232 lt!2623922 s!13591))))

(declare-fun matchR!9317 (Regex!19553 List!72269) Bool)

(assert (=> b!7466457 (= lt!2623911 (matchR!9317 lt!2623922 s!13591))))

(declare-fun lt!2623907 () Unit!165941)

(declare-fun mainMatchTheorem!4226 (Regex!19553 List!72269) Unit!165941)

(assert (=> b!7466457 (= lt!2623907 (mainMatchTheorem!4226 lt!2623922 s!13591))))

(declare-fun lt!2623908 () Regex!19553)

(assert (=> b!7466457 (= lt!2623910 (matchRSpec!4232 lt!2623908 s!13591))))

(assert (=> b!7466457 (= lt!2623910 (matchR!9317 lt!2623908 s!13591))))

(declare-fun lt!2623924 () Unit!165941)

(assert (=> b!7466457 (= lt!2623924 (mainMatchTheorem!4226 lt!2623908 s!13591))))

(declare-fun lt!2623918 () Regex!19553)

(declare-fun lt!2623925 () Regex!19553)

(assert (=> b!7466457 (= lt!2623922 (Union!19553 lt!2623918 lt!2623925))))

(declare-fun r2!5783 () Regex!19553)

(assert (=> b!7466457 (= lt!2623925 (Concat!28398 r2!5783 rTail!78))))

(assert (=> b!7466457 (= lt!2623918 (Concat!28398 r1!5845 rTail!78))))

(assert (=> b!7466457 (= lt!2623908 (Concat!28398 lt!2623917 rTail!78))))

(assert (=> b!7466457 (= lt!2623917 (Union!19553 r1!5845 r2!5783))))

(declare-fun b!7466458 () Bool)

(declare-fun e!4455250 () Bool)

(declare-fun tp!2164496 () Bool)

(declare-fun tp!2164502 () Bool)

(assert (=> b!7466458 (= e!4455250 (and tp!2164496 tp!2164502))))

(declare-fun res!2995032 () Bool)

(assert (=> start!724118 (=> (not res!2995032) (not e!4455249))))

(declare-fun validRegex!10067 (Regex!19553) Bool)

(assert (=> start!724118 (= res!2995032 (validRegex!10067 r1!5845))))

(assert (=> start!724118 e!4455249))

(assert (=> start!724118 e!4455251))

(assert (=> start!724118 e!4455247))

(assert (=> start!724118 e!4455250))

(declare-fun e!4455253 () Bool)

(assert (=> start!724118 e!4455253))

(declare-fun b!7466459 () Bool)

(declare-fun res!2995029 () Bool)

(assert (=> b!7466459 (=> (not res!2995029) (not e!4455249))))

(assert (=> b!7466459 (= res!2995029 (validRegex!10067 rTail!78))))

(declare-fun b!7466460 () Bool)

(declare-fun tp_is_empty!49395 () Bool)

(assert (=> b!7466460 (= e!4455247 tp_is_empty!49395)))

(declare-fun b!7466461 () Bool)

(declare-fun tp!2164505 () Bool)

(assert (=> b!7466461 (= e!4455253 (and tp_is_empty!49395 tp!2164505))))

(declare-fun e!4455254 () Bool)

(assert (=> b!7466462 (= e!4455254 true)))

(declare-fun lt!2623913 () Bool)

(declare-fun lt!2623914 () Option!17110)

(declare-fun get!25197 (Option!17110) tuple2!68556)

(assert (=> b!7466462 (= lt!2623913 (matchR!9317 r1!5845 (_1!37581 (get!25197 lt!2623914))))))

(assert (=> b!7466462 (= (Exists!4172 lambda!462116) (Exists!4172 lambda!462117))))

(declare-fun lt!2623912 () Unit!165941)

(assert (=> b!7466462 (= lt!2623912 (lemmaExistCutMatchRandMatchRSpecEquivalent!2506 r1!5845 rTail!78 s!13591))))

(assert (=> b!7466462 (= (isDefined!13799 lt!2623914) (Exists!4172 lambda!462116))))

(assert (=> b!7466462 (= lt!2623914 (findConcatSeparation!3232 r1!5845 rTail!78 Nil!72145 s!13591 s!13591))))

(declare-fun lt!2623915 () Unit!165941)

(assert (=> b!7466462 (= lt!2623915 (lemmaFindConcatSeparationEquivalentToExists!2990 r1!5845 rTail!78 s!13591))))

(declare-fun b!7466463 () Bool)

(assert (=> b!7466463 (= e!4455252 e!4455254)))

(declare-fun res!2995033 () Bool)

(assert (=> b!7466463 (=> res!2995033 e!4455254)))

(declare-fun lt!2623906 () Bool)

(declare-fun lt!2623919 () Bool)

(assert (=> b!7466463 (= res!2995033 (or (and (not lt!2623906) (not lt!2623919)) (not lt!2623906)))))

(assert (=> b!7466463 (= lt!2623919 (matchRSpec!4232 lt!2623925 s!13591))))

(assert (=> b!7466463 (= lt!2623919 (matchR!9317 lt!2623925 s!13591))))

(declare-fun lt!2623916 () Unit!165941)

(assert (=> b!7466463 (= lt!2623916 (mainMatchTheorem!4226 lt!2623925 s!13591))))

(assert (=> b!7466463 (= lt!2623906 (matchRSpec!4232 lt!2623918 s!13591))))

(assert (=> b!7466463 (= lt!2623906 (matchR!9317 lt!2623918 s!13591))))

(declare-fun lt!2623923 () Unit!165941)

(assert (=> b!7466463 (= lt!2623923 (mainMatchTheorem!4226 lt!2623918 s!13591))))

(declare-fun b!7466464 () Bool)

(declare-fun tp!2164501 () Bool)

(assert (=> b!7466464 (= e!4455250 tp!2164501)))

(declare-fun b!7466465 () Bool)

(assert (=> b!7466465 (= e!4455250 tp_is_empty!49395)))

(declare-fun b!7466466 () Bool)

(declare-fun tp!2164507 () Bool)

(declare-fun tp!2164504 () Bool)

(assert (=> b!7466466 (= e!4455247 (and tp!2164507 tp!2164504))))

(declare-fun b!7466467 () Bool)

(declare-fun tp!2164506 () Bool)

(declare-fun tp!2164500 () Bool)

(assert (=> b!7466467 (= e!4455247 (and tp!2164506 tp!2164500))))

(declare-fun b!7466468 () Bool)

(declare-fun res!2995031 () Bool)

(assert (=> b!7466468 (=> (not res!2995031) (not e!4455249))))

(assert (=> b!7466468 (= res!2995031 (validRegex!10067 r2!5783))))

(declare-fun b!7466469 () Bool)

(declare-fun tp!2164495 () Bool)

(declare-fun tp!2164498 () Bool)

(assert (=> b!7466469 (= e!4455250 (and tp!2164495 tp!2164498))))

(declare-fun b!7466470 () Bool)

(declare-fun tp!2164499 () Bool)

(declare-fun tp!2164493 () Bool)

(assert (=> b!7466470 (= e!4455251 (and tp!2164499 tp!2164493))))

(declare-fun b!7466471 () Bool)

(assert (=> b!7466471 (= e!4455251 tp_is_empty!49395)))

(assert (= (and start!724118 res!2995032) b!7466468))

(assert (= (and b!7466468 res!2995031) b!7466459))

(assert (= (and b!7466459 res!2995029) b!7466457))

(assert (= (and b!7466457 (not res!2995030)) b!7466453))

(assert (= (and b!7466453 (not res!2995034)) b!7466463))

(assert (= (and b!7466463 (not res!2995033)) b!7466462))

(get-info :version)

(assert (= (and start!724118 ((_ is ElementMatch!19553) r1!5845)) b!7466471))

(assert (= (and start!724118 ((_ is Concat!28398) r1!5845)) b!7466456))

(assert (= (and start!724118 ((_ is Star!19553) r1!5845)) b!7466454))

(assert (= (and start!724118 ((_ is Union!19553) r1!5845)) b!7466470))

(assert (= (and start!724118 ((_ is ElementMatch!19553) r2!5783)) b!7466460))

(assert (= (and start!724118 ((_ is Concat!28398) r2!5783)) b!7466467))

(assert (= (and start!724118 ((_ is Star!19553) r2!5783)) b!7466455))

(assert (= (and start!724118 ((_ is Union!19553) r2!5783)) b!7466466))

(assert (= (and start!724118 ((_ is ElementMatch!19553) rTail!78)) b!7466465))

(assert (= (and start!724118 ((_ is Concat!28398) rTail!78)) b!7466458))

(assert (= (and start!724118 ((_ is Star!19553) rTail!78)) b!7466464))

(assert (= (and start!724118 ((_ is Union!19553) rTail!78)) b!7466469))

(assert (= (and start!724118 ((_ is Cons!72145) s!13591)) b!7466461))

(declare-fun m!8065050 () Bool)

(assert (=> b!7466457 m!8065050))

(declare-fun m!8065052 () Bool)

(assert (=> b!7466457 m!8065052))

(declare-fun m!8065054 () Bool)

(assert (=> b!7466457 m!8065054))

(declare-fun m!8065056 () Bool)

(assert (=> b!7466457 m!8065056))

(declare-fun m!8065058 () Bool)

(assert (=> b!7466457 m!8065058))

(declare-fun m!8065060 () Bool)

(assert (=> b!7466457 m!8065060))

(declare-fun m!8065062 () Bool)

(assert (=> b!7466453 m!8065062))

(declare-fun m!8065064 () Bool)

(assert (=> b!7466453 m!8065064))

(declare-fun m!8065066 () Bool)

(assert (=> b!7466453 m!8065066))

(declare-fun m!8065068 () Bool)

(assert (=> b!7466453 m!8065068))

(assert (=> b!7466453 m!8065066))

(declare-fun m!8065070 () Bool)

(assert (=> b!7466453 m!8065070))

(assert (=> b!7466453 m!8065070))

(declare-fun m!8065072 () Bool)

(assert (=> b!7466453 m!8065072))

(declare-fun m!8065074 () Bool)

(assert (=> start!724118 m!8065074))

(declare-fun m!8065076 () Bool)

(assert (=> b!7466463 m!8065076))

(declare-fun m!8065078 () Bool)

(assert (=> b!7466463 m!8065078))

(declare-fun m!8065080 () Bool)

(assert (=> b!7466463 m!8065080))

(declare-fun m!8065082 () Bool)

(assert (=> b!7466463 m!8065082))

(declare-fun m!8065084 () Bool)

(assert (=> b!7466463 m!8065084))

(declare-fun m!8065086 () Bool)

(assert (=> b!7466463 m!8065086))

(declare-fun m!8065088 () Bool)

(assert (=> b!7466468 m!8065088))

(declare-fun m!8065090 () Bool)

(assert (=> b!7466459 m!8065090))

(declare-fun m!8065092 () Bool)

(assert (=> b!7466462 m!8065092))

(declare-fun m!8065094 () Bool)

(assert (=> b!7466462 m!8065094))

(declare-fun m!8065096 () Bool)

(assert (=> b!7466462 m!8065096))

(declare-fun m!8065098 () Bool)

(assert (=> b!7466462 m!8065098))

(declare-fun m!8065100 () Bool)

(assert (=> b!7466462 m!8065100))

(declare-fun m!8065102 () Bool)

(assert (=> b!7466462 m!8065102))

(declare-fun m!8065104 () Bool)

(assert (=> b!7466462 m!8065104))

(assert (=> b!7466462 m!8065102))

(declare-fun m!8065106 () Bool)

(assert (=> b!7466462 m!8065106))

(check-sat (not b!7466455) tp_is_empty!49395 (not b!7466463) (not b!7466467) (not b!7466457) (not b!7466461) (not b!7466466) (not start!724118) (not b!7466454) (not b!7466468) (not b!7466470) (not b!7466469) (not b!7466462) (not b!7466459) (not b!7466453) (not b!7466464) (not b!7466458) (not b!7466456))
(check-sat)
