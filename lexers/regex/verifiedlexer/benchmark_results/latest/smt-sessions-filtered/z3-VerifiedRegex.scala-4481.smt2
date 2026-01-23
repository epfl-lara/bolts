; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!238306 () Bool)

(assert start!238306)

(declare-fun b!2434245 () Bool)

(assert (=> b!2434245 true))

(assert (=> b!2434245 true))

(declare-fun lambda!91859 () Int)

(declare-fun lambda!91858 () Int)

(assert (=> b!2434245 (not (= lambda!91859 lambda!91858))))

(assert (=> b!2434245 true))

(assert (=> b!2434245 true))

(declare-fun b!2434242 () Bool)

(declare-fun e!1547359 () Bool)

(declare-fun e!1547360 () Bool)

(assert (=> b!2434242 (= e!1547359 e!1547360)))

(declare-fun res!1033342 () Bool)

(assert (=> b!2434242 (=> res!1033342 e!1547360)))

(declare-datatypes ((C!14468 0))(
  ( (C!14469 (val!8476 Int)) )
))
(declare-datatypes ((Regex!7155 0))(
  ( (ElementMatch!7155 (c!388379 C!14468)) (Concat!11791 (regOne!14822 Regex!7155) (regTwo!14822 Regex!7155)) (EmptyExpr!7155) (Star!7155 (reg!7484 Regex!7155)) (EmptyLang!7155) (Union!7155 (regOne!14823 Regex!7155) (regTwo!14823 Regex!7155)) )
))
(declare-datatypes ((List!28546 0))(
  ( (Nil!28448) (Cons!28448 (h!33849 Regex!7155) (t!208523 List!28546)) )
))
(declare-fun lt!877198 () List!28546)

(declare-fun isEmpty!16486 (List!28546) Bool)

(assert (=> b!2434242 (= res!1033342 (not (isEmpty!16486 lt!877198)))))

(declare-fun l!9164 () List!28546)

(declare-fun tail!3782 (List!28546) List!28546)

(assert (=> b!2434242 (= lt!877198 (tail!3782 l!9164))))

(declare-fun b!2434243 () Bool)

(declare-fun e!1547352 () Bool)

(declare-fun e!1547356 () Bool)

(assert (=> b!2434243 (= e!1547352 e!1547356)))

(declare-fun res!1033337 () Bool)

(assert (=> b!2434243 (=> (not res!1033337) (not e!1547356))))

(declare-fun lt!877195 () Regex!7155)

(declare-fun validRegex!2871 (Regex!7155) Bool)

(assert (=> b!2434243 (= res!1033337 (validRegex!2871 lt!877195))))

(declare-fun b!2434244 () Bool)

(assert (=> b!2434244 (= e!1547356 true)))

(declare-fun e!1547357 () Bool)

(assert (=> b!2434245 (= e!1547357 e!1547359)))

(declare-fun res!1033340 () Bool)

(assert (=> b!2434245 (=> res!1033340 e!1547359)))

(declare-fun lt!877192 () Bool)

(declare-fun lt!877196 () Bool)

(assert (=> b!2434245 (= res!1033340 (not (= lt!877192 lt!877196)))))

(declare-fun Exists!1191 (Int) Bool)

(assert (=> b!2434245 (= (Exists!1191 lambda!91858) (Exists!1191 lambda!91859))))

(declare-datatypes ((Unit!41693 0))(
  ( (Unit!41694) )
))
(declare-fun lt!877197 () Unit!41693)

(declare-fun r!13927 () Regex!7155)

(declare-datatypes ((List!28547 0))(
  ( (Nil!28449) (Cons!28449 (h!33850 C!14468) (t!208524 List!28547)) )
))
(declare-fun s!9460 () List!28547)

(declare-fun lemmaExistCutMatchRandMatchRSpecEquivalent!436 (Regex!7155 Regex!7155 List!28547) Unit!41693)

(assert (=> b!2434245 (= lt!877197 (lemmaExistCutMatchRandMatchRSpecEquivalent!436 (regOne!14822 r!13927) (regTwo!14822 r!13927) s!9460))))

(assert (=> b!2434245 (= lt!877196 (Exists!1191 lambda!91858))))

(declare-datatypes ((tuple2!28066 0))(
  ( (tuple2!28067 (_1!16574 List!28547) (_2!16574 List!28547)) )
))
(declare-datatypes ((Option!5644 0))(
  ( (None!5643) (Some!5643 (v!31051 tuple2!28066)) )
))
(declare-fun isDefined!4470 (Option!5644) Bool)

(declare-fun findConcatSeparation!752 (Regex!7155 Regex!7155 List!28547 List!28547 List!28547) Option!5644)

(assert (=> b!2434245 (= lt!877196 (isDefined!4470 (findConcatSeparation!752 (regOne!14822 r!13927) (regTwo!14822 r!13927) Nil!28449 s!9460 s!9460)))))

(declare-fun lt!877193 () Unit!41693)

(declare-fun lemmaFindConcatSeparationEquivalentToExists!690 (Regex!7155 Regex!7155 List!28547) Unit!41693)

(assert (=> b!2434245 (= lt!877193 (lemmaFindConcatSeparationEquivalentToExists!690 (regOne!14822 r!13927) (regTwo!14822 r!13927) s!9460))))

(declare-fun b!2434246 () Bool)

(declare-fun e!1547358 () Bool)

(declare-fun tp!773192 () Bool)

(declare-fun tp!773196 () Bool)

(assert (=> b!2434246 (= e!1547358 (and tp!773192 tp!773196))))

(declare-fun b!2434248 () Bool)

(declare-fun e!1547354 () Bool)

(declare-fun tp!773199 () Bool)

(declare-fun tp!773194 () Bool)

(assert (=> b!2434248 (= e!1547354 (and tp!773199 tp!773194))))

(declare-fun b!2434249 () Bool)

(assert (=> b!2434249 (= e!1547360 e!1547352)))

(declare-fun res!1033338 () Bool)

(assert (=> b!2434249 (=> res!1033338 e!1547352)))

(declare-fun matchR!3270 (Regex!7155 List!28547) Bool)

(assert (=> b!2434249 (= res!1033338 (not (matchR!3270 lt!877195 s!9460)))))

(declare-fun head!5509 (List!28546) Regex!7155)

(assert (=> b!2434249 (= lt!877195 (head!5509 l!9164))))

(declare-fun b!2434250 () Bool)

(declare-fun tp_is_empty!11723 () Bool)

(assert (=> b!2434250 (= e!1547354 tp_is_empty!11723)))

(declare-fun b!2434251 () Bool)

(declare-fun e!1547353 () Bool)

(assert (=> b!2434251 (= e!1547353 (not e!1547357))))

(declare-fun res!1033341 () Bool)

(assert (=> b!2434251 (=> res!1033341 e!1547357)))

(get-info :version)

(assert (=> b!2434251 (= res!1033341 (not ((_ is Concat!11791) r!13927)))))

(declare-fun lt!877194 () Bool)

(assert (=> b!2434251 (= lt!877194 lt!877192)))

(declare-fun matchRSpec!1002 (Regex!7155 List!28547) Bool)

(assert (=> b!2434251 (= lt!877192 (matchRSpec!1002 r!13927 s!9460))))

(assert (=> b!2434251 (= lt!877194 (matchR!3270 r!13927 s!9460))))

(declare-fun lt!877191 () Unit!41693)

(declare-fun mainMatchTheorem!1002 (Regex!7155 List!28547) Unit!41693)

(assert (=> b!2434251 (= lt!877191 (mainMatchTheorem!1002 r!13927 s!9460))))

(declare-fun b!2434252 () Bool)

(declare-fun res!1033343 () Bool)

(assert (=> b!2434252 (=> res!1033343 e!1547359)))

(assert (=> b!2434252 (= res!1033343 (isEmpty!16486 l!9164))))

(declare-fun b!2434253 () Bool)

(declare-fun tp!773195 () Bool)

(declare-fun tp!773198 () Bool)

(assert (=> b!2434253 (= e!1547354 (and tp!773195 tp!773198))))

(declare-fun b!2434254 () Bool)

(declare-fun tp!773193 () Bool)

(assert (=> b!2434254 (= e!1547354 tp!773193)))

(declare-fun b!2434255 () Bool)

(declare-fun res!1033339 () Bool)

(assert (=> b!2434255 (=> res!1033339 e!1547360)))

(declare-fun generalisedConcat!256 (List!28546) Regex!7155)

(assert (=> b!2434255 (= res!1033339 (not (= (generalisedConcat!256 lt!877198) EmptyExpr!7155)))))

(declare-fun b!2434256 () Bool)

(declare-fun res!1033336 () Bool)

(assert (=> b!2434256 (=> (not res!1033336) (not e!1547353))))

(assert (=> b!2434256 (= res!1033336 (= r!13927 (generalisedConcat!256 l!9164)))))

(declare-fun b!2434247 () Bool)

(declare-fun e!1547355 () Bool)

(declare-fun tp!773197 () Bool)

(assert (=> b!2434247 (= e!1547355 (and tp_is_empty!11723 tp!773197))))

(declare-fun res!1033344 () Bool)

(assert (=> start!238306 (=> (not res!1033344) (not e!1547353))))

(declare-fun lambda!91857 () Int)

(declare-fun forall!5789 (List!28546 Int) Bool)

(assert (=> start!238306 (= res!1033344 (forall!5789 l!9164 lambda!91857))))

(assert (=> start!238306 e!1547353))

(assert (=> start!238306 e!1547358))

(assert (=> start!238306 e!1547354))

(assert (=> start!238306 e!1547355))

(assert (= (and start!238306 res!1033344) b!2434256))

(assert (= (and b!2434256 res!1033336) b!2434251))

(assert (= (and b!2434251 (not res!1033341)) b!2434245))

(assert (= (and b!2434245 (not res!1033340)) b!2434252))

(assert (= (and b!2434252 (not res!1033343)) b!2434242))

(assert (= (and b!2434242 (not res!1033342)) b!2434255))

(assert (= (and b!2434255 (not res!1033339)) b!2434249))

(assert (= (and b!2434249 (not res!1033338)) b!2434243))

(assert (= (and b!2434243 res!1033337) b!2434244))

(assert (= (and start!238306 ((_ is Cons!28448) l!9164)) b!2434246))

(assert (= (and start!238306 ((_ is ElementMatch!7155) r!13927)) b!2434250))

(assert (= (and start!238306 ((_ is Concat!11791) r!13927)) b!2434248))

(assert (= (and start!238306 ((_ is Star!7155) r!13927)) b!2434254))

(assert (= (and start!238306 ((_ is Union!7155) r!13927)) b!2434253))

(assert (= (and start!238306 ((_ is Cons!28449) s!9460)) b!2434247))

(declare-fun m!2814941 () Bool)

(assert (=> b!2434255 m!2814941))

(declare-fun m!2814943 () Bool)

(assert (=> b!2434252 m!2814943))

(declare-fun m!2814945 () Bool)

(assert (=> b!2434245 m!2814945))

(declare-fun m!2814947 () Bool)

(assert (=> b!2434245 m!2814947))

(declare-fun m!2814949 () Bool)

(assert (=> b!2434245 m!2814949))

(assert (=> b!2434245 m!2814945))

(declare-fun m!2814951 () Bool)

(assert (=> b!2434245 m!2814951))

(assert (=> b!2434245 m!2814951))

(declare-fun m!2814953 () Bool)

(assert (=> b!2434245 m!2814953))

(declare-fun m!2814955 () Bool)

(assert (=> b!2434245 m!2814955))

(declare-fun m!2814957 () Bool)

(assert (=> b!2434249 m!2814957))

(declare-fun m!2814959 () Bool)

(assert (=> b!2434249 m!2814959))

(declare-fun m!2814961 () Bool)

(assert (=> b!2434243 m!2814961))

(declare-fun m!2814963 () Bool)

(assert (=> b!2434256 m!2814963))

(declare-fun m!2814965 () Bool)

(assert (=> b!2434251 m!2814965))

(declare-fun m!2814967 () Bool)

(assert (=> b!2434251 m!2814967))

(declare-fun m!2814969 () Bool)

(assert (=> b!2434251 m!2814969))

(declare-fun m!2814971 () Bool)

(assert (=> b!2434242 m!2814971))

(declare-fun m!2814973 () Bool)

(assert (=> b!2434242 m!2814973))

(declare-fun m!2814975 () Bool)

(assert (=> start!238306 m!2814975))

(check-sat (not b!2434253) (not b!2434243) (not b!2434248) (not b!2434256) (not start!238306) (not b!2434255) tp_is_empty!11723 (not b!2434251) (not b!2434252) (not b!2434242) (not b!2434254) (not b!2434247) (not b!2434245) (not b!2434246) (not b!2434249))
(check-sat)
(get-model)

(declare-fun b!2434289 () Bool)

(declare-fun e!1547378 () Bool)

(declare-fun lt!877201 () Bool)

(declare-fun call!149079 () Bool)

(assert (=> b!2434289 (= e!1547378 (= lt!877201 call!149079))))

(declare-fun b!2434290 () Bool)

(declare-fun res!1033368 () Bool)

(declare-fun e!1547381 () Bool)

(assert (=> b!2434290 (=> res!1033368 e!1547381)))

(assert (=> b!2434290 (= res!1033368 (not ((_ is ElementMatch!7155) lt!877195)))))

(declare-fun e!1547375 () Bool)

(assert (=> b!2434290 (= e!1547375 e!1547381)))

(declare-fun b!2434291 () Bool)

(declare-fun res!1033367 () Bool)

(declare-fun e!1547376 () Bool)

(assert (=> b!2434291 (=> (not res!1033367) (not e!1547376))))

(declare-fun isEmpty!16487 (List!28547) Bool)

(declare-fun tail!3783 (List!28547) List!28547)

(assert (=> b!2434291 (= res!1033367 (isEmpty!16487 (tail!3783 s!9460)))))

(declare-fun b!2434292 () Bool)

(declare-fun res!1033364 () Bool)

(assert (=> b!2434292 (=> (not res!1033364) (not e!1547376))))

(assert (=> b!2434292 (= res!1033364 (not call!149079))))

(declare-fun b!2434293 () Bool)

(declare-fun res!1033361 () Bool)

(declare-fun e!1547377 () Bool)

(assert (=> b!2434293 (=> res!1033361 e!1547377)))

(assert (=> b!2434293 (= res!1033361 (not (isEmpty!16487 (tail!3783 s!9460))))))

(declare-fun bm!149074 () Bool)

(assert (=> bm!149074 (= call!149079 (isEmpty!16487 s!9460))))

(declare-fun b!2434294 () Bool)

(declare-fun e!1547380 () Bool)

(assert (=> b!2434294 (= e!1547381 e!1547380)))

(declare-fun res!1033366 () Bool)

(assert (=> b!2434294 (=> (not res!1033366) (not e!1547380))))

(assert (=> b!2434294 (= res!1033366 (not lt!877201))))

(declare-fun b!2434295 () Bool)

(declare-fun res!1033363 () Bool)

(assert (=> b!2434295 (=> res!1033363 e!1547381)))

(assert (=> b!2434295 (= res!1033363 e!1547376)))

(declare-fun res!1033362 () Bool)

(assert (=> b!2434295 (=> (not res!1033362) (not e!1547376))))

(assert (=> b!2434295 (= res!1033362 lt!877201)))

(declare-fun d!703658 () Bool)

(assert (=> d!703658 e!1547378))

(declare-fun c!388387 () Bool)

(assert (=> d!703658 (= c!388387 ((_ is EmptyExpr!7155) lt!877195))))

(declare-fun e!1547379 () Bool)

(assert (=> d!703658 (= lt!877201 e!1547379)))

(declare-fun c!388386 () Bool)

(assert (=> d!703658 (= c!388386 (isEmpty!16487 s!9460))))

(assert (=> d!703658 (validRegex!2871 lt!877195)))

(assert (=> d!703658 (= (matchR!3270 lt!877195 s!9460) lt!877201)))

(declare-fun b!2434296 () Bool)

(assert (=> b!2434296 (= e!1547375 (not lt!877201))))

(declare-fun b!2434297 () Bool)

(declare-fun derivativeStep!1839 (Regex!7155 C!14468) Regex!7155)

(declare-fun head!5510 (List!28547) C!14468)

(assert (=> b!2434297 (= e!1547379 (matchR!3270 (derivativeStep!1839 lt!877195 (head!5510 s!9460)) (tail!3783 s!9460)))))

(declare-fun b!2434298 () Bool)

(assert (=> b!2434298 (= e!1547377 (not (= (head!5510 s!9460) (c!388379 lt!877195))))))

(declare-fun b!2434299 () Bool)

(declare-fun nullable!2185 (Regex!7155) Bool)

(assert (=> b!2434299 (= e!1547379 (nullable!2185 lt!877195))))

(declare-fun b!2434300 () Bool)

(assert (=> b!2434300 (= e!1547376 (= (head!5510 s!9460) (c!388379 lt!877195)))))

(declare-fun b!2434301 () Bool)

(assert (=> b!2434301 (= e!1547378 e!1547375)))

(declare-fun c!388388 () Bool)

(assert (=> b!2434301 (= c!388388 ((_ is EmptyLang!7155) lt!877195))))

(declare-fun b!2434302 () Bool)

(assert (=> b!2434302 (= e!1547380 e!1547377)))

(declare-fun res!1033365 () Bool)

(assert (=> b!2434302 (=> res!1033365 e!1547377)))

(assert (=> b!2434302 (= res!1033365 call!149079)))

(assert (= (and d!703658 c!388386) b!2434299))

(assert (= (and d!703658 (not c!388386)) b!2434297))

(assert (= (and d!703658 c!388387) b!2434289))

(assert (= (and d!703658 (not c!388387)) b!2434301))

(assert (= (and b!2434301 c!388388) b!2434296))

(assert (= (and b!2434301 (not c!388388)) b!2434290))

(assert (= (and b!2434290 (not res!1033368)) b!2434295))

(assert (= (and b!2434295 res!1033362) b!2434292))

(assert (= (and b!2434292 res!1033364) b!2434291))

(assert (= (and b!2434291 res!1033367) b!2434300))

(assert (= (and b!2434295 (not res!1033363)) b!2434294))

(assert (= (and b!2434294 res!1033366) b!2434302))

(assert (= (and b!2434302 (not res!1033365)) b!2434293))

(assert (= (and b!2434293 (not res!1033361)) b!2434298))

(assert (= (or b!2434289 b!2434292 b!2434302) bm!149074))

(declare-fun m!2814977 () Bool)

(assert (=> b!2434291 m!2814977))

(assert (=> b!2434291 m!2814977))

(declare-fun m!2814979 () Bool)

(assert (=> b!2434291 m!2814979))

(declare-fun m!2814981 () Bool)

(assert (=> bm!149074 m!2814981))

(declare-fun m!2814983 () Bool)

(assert (=> b!2434298 m!2814983))

(declare-fun m!2814985 () Bool)

(assert (=> b!2434299 m!2814985))

(assert (=> b!2434300 m!2814983))

(assert (=> b!2434297 m!2814983))

(assert (=> b!2434297 m!2814983))

(declare-fun m!2814987 () Bool)

(assert (=> b!2434297 m!2814987))

(assert (=> b!2434297 m!2814977))

(assert (=> b!2434297 m!2814987))

(assert (=> b!2434297 m!2814977))

(declare-fun m!2814989 () Bool)

(assert (=> b!2434297 m!2814989))

(assert (=> b!2434293 m!2814977))

(assert (=> b!2434293 m!2814977))

(assert (=> b!2434293 m!2814979))

(assert (=> d!703658 m!2814981))

(assert (=> d!703658 m!2814961))

(assert (=> b!2434249 d!703658))

(declare-fun d!703662 () Bool)

(assert (=> d!703662 (= (head!5509 l!9164) (h!33849 l!9164))))

(assert (=> b!2434249 d!703662))

(declare-fun bs!464375 () Bool)

(declare-fun d!703664 () Bool)

(assert (= bs!464375 (and d!703664 start!238306)))

(declare-fun lambda!91866 () Int)

(assert (=> bs!464375 (= lambda!91866 lambda!91857)))

(declare-fun b!2434356 () Bool)

(declare-fun e!1547412 () Regex!7155)

(declare-fun e!1547413 () Regex!7155)

(assert (=> b!2434356 (= e!1547412 e!1547413)))

(declare-fun c!388407 () Bool)

(assert (=> b!2434356 (= c!388407 ((_ is Cons!28448) lt!877198))))

(declare-fun b!2434357 () Bool)

(declare-fun e!1547416 () Bool)

(declare-fun lt!877204 () Regex!7155)

(declare-fun isEmptyExpr!203 (Regex!7155) Bool)

(assert (=> b!2434357 (= e!1547416 (isEmptyExpr!203 lt!877204))))

(declare-fun b!2434358 () Bool)

(declare-fun e!1547414 () Bool)

(assert (=> b!2434358 (= e!1547414 (isEmpty!16486 (t!208523 lt!877198)))))

(declare-fun b!2434359 () Bool)

(declare-fun e!1547417 () Bool)

(assert (=> b!2434359 (= e!1547416 e!1547417)))

(declare-fun c!388408 () Bool)

(assert (=> b!2434359 (= c!388408 (isEmpty!16486 (tail!3782 lt!877198)))))

(declare-fun b!2434360 () Bool)

(declare-fun e!1547415 () Bool)

(assert (=> b!2434360 (= e!1547415 e!1547416)))

(declare-fun c!388406 () Bool)

(assert (=> b!2434360 (= c!388406 (isEmpty!16486 lt!877198))))

(declare-fun b!2434361 () Bool)

(declare-fun isConcat!203 (Regex!7155) Bool)

(assert (=> b!2434361 (= e!1547417 (isConcat!203 lt!877204))))

(declare-fun b!2434362 () Bool)

(assert (=> b!2434362 (= e!1547412 (h!33849 lt!877198))))

(assert (=> d!703664 e!1547415))

(declare-fun res!1033390 () Bool)

(assert (=> d!703664 (=> (not res!1033390) (not e!1547415))))

(assert (=> d!703664 (= res!1033390 (validRegex!2871 lt!877204))))

(assert (=> d!703664 (= lt!877204 e!1547412)))

(declare-fun c!388405 () Bool)

(assert (=> d!703664 (= c!388405 e!1547414)))

(declare-fun res!1033389 () Bool)

(assert (=> d!703664 (=> (not res!1033389) (not e!1547414))))

(assert (=> d!703664 (= res!1033389 ((_ is Cons!28448) lt!877198))))

(assert (=> d!703664 (forall!5789 lt!877198 lambda!91866)))

(assert (=> d!703664 (= (generalisedConcat!256 lt!877198) lt!877204)))

(declare-fun b!2434355 () Bool)

(assert (=> b!2434355 (= e!1547413 (Concat!11791 (h!33849 lt!877198) (generalisedConcat!256 (t!208523 lt!877198))))))

(declare-fun b!2434363 () Bool)

(assert (=> b!2434363 (= e!1547417 (= lt!877204 (head!5509 lt!877198)))))

(declare-fun b!2434364 () Bool)

(assert (=> b!2434364 (= e!1547413 EmptyExpr!7155)))

(assert (= (and d!703664 res!1033389) b!2434358))

(assert (= (and d!703664 c!388405) b!2434362))

(assert (= (and d!703664 (not c!388405)) b!2434356))

(assert (= (and b!2434356 c!388407) b!2434355))

(assert (= (and b!2434356 (not c!388407)) b!2434364))

(assert (= (and d!703664 res!1033390) b!2434360))

(assert (= (and b!2434360 c!388406) b!2434357))

(assert (= (and b!2434360 (not c!388406)) b!2434359))

(assert (= (and b!2434359 c!388408) b!2434363))

(assert (= (and b!2434359 (not c!388408)) b!2434361))

(declare-fun m!2814991 () Bool)

(assert (=> b!2434359 m!2814991))

(assert (=> b!2434359 m!2814991))

(declare-fun m!2814993 () Bool)

(assert (=> b!2434359 m!2814993))

(assert (=> b!2434360 m!2814971))

(declare-fun m!2814995 () Bool)

(assert (=> d!703664 m!2814995))

(declare-fun m!2814997 () Bool)

(assert (=> d!703664 m!2814997))

(declare-fun m!2814999 () Bool)

(assert (=> b!2434361 m!2814999))

(declare-fun m!2815001 () Bool)

(assert (=> b!2434357 m!2815001))

(declare-fun m!2815003 () Bool)

(assert (=> b!2434363 m!2815003))

(declare-fun m!2815005 () Bool)

(assert (=> b!2434355 m!2815005))

(declare-fun m!2815007 () Bool)

(assert (=> b!2434358 m!2815007))

(assert (=> b!2434255 d!703664))

(declare-fun d!703666 () Bool)

(declare-fun choose!14428 (Int) Bool)

(assert (=> d!703666 (= (Exists!1191 lambda!91858) (choose!14428 lambda!91858))))

(declare-fun bs!464376 () Bool)

(assert (= bs!464376 d!703666))

(declare-fun m!2815009 () Bool)

(assert (=> bs!464376 m!2815009))

(assert (=> b!2434245 d!703666))

(declare-fun d!703668 () Bool)

(declare-fun isEmpty!16489 (Option!5644) Bool)

(assert (=> d!703668 (= (isDefined!4470 (findConcatSeparation!752 (regOne!14822 r!13927) (regTwo!14822 r!13927) Nil!28449 s!9460 s!9460)) (not (isEmpty!16489 (findConcatSeparation!752 (regOne!14822 r!13927) (regTwo!14822 r!13927) Nil!28449 s!9460 s!9460))))))

(declare-fun bs!464377 () Bool)

(assert (= bs!464377 d!703668))

(assert (=> bs!464377 m!2814945))

(declare-fun m!2815011 () Bool)

(assert (=> bs!464377 m!2815011))

(assert (=> b!2434245 d!703668))

(declare-fun d!703670 () Bool)

(assert (=> d!703670 (= (Exists!1191 lambda!91859) (choose!14428 lambda!91859))))

(declare-fun bs!464378 () Bool)

(assert (= bs!464378 d!703670))

(declare-fun m!2815013 () Bool)

(assert (=> bs!464378 m!2815013))

(assert (=> b!2434245 d!703670))

(declare-fun bs!464382 () Bool)

(declare-fun d!703672 () Bool)

(assert (= bs!464382 (and d!703672 b!2434245)))

(declare-fun lambda!91871 () Int)

(assert (=> bs!464382 (= lambda!91871 lambda!91858)))

(assert (=> bs!464382 (not (= lambda!91871 lambda!91859))))

(assert (=> d!703672 true))

(assert (=> d!703672 true))

(assert (=> d!703672 true))

(assert (=> d!703672 (= (isDefined!4470 (findConcatSeparation!752 (regOne!14822 r!13927) (regTwo!14822 r!13927) Nil!28449 s!9460 s!9460)) (Exists!1191 lambda!91871))))

(declare-fun lt!877207 () Unit!41693)

(declare-fun choose!14429 (Regex!7155 Regex!7155 List!28547) Unit!41693)

(assert (=> d!703672 (= lt!877207 (choose!14429 (regOne!14822 r!13927) (regTwo!14822 r!13927) s!9460))))

(assert (=> d!703672 (validRegex!2871 (regOne!14822 r!13927))))

(assert (=> d!703672 (= (lemmaFindConcatSeparationEquivalentToExists!690 (regOne!14822 r!13927) (regTwo!14822 r!13927) s!9460) lt!877207)))

(declare-fun bs!464383 () Bool)

(assert (= bs!464383 d!703672))

(declare-fun m!2815023 () Bool)

(assert (=> bs!464383 m!2815023))

(assert (=> bs!464383 m!2814945))

(assert (=> bs!464383 m!2814947))

(assert (=> bs!464383 m!2814945))

(declare-fun m!2815025 () Bool)

(assert (=> bs!464383 m!2815025))

(declare-fun m!2815027 () Bool)

(assert (=> bs!464383 m!2815027))

(assert (=> b!2434245 d!703672))

(declare-fun bs!464385 () Bool)

(declare-fun d!703676 () Bool)

(assert (= bs!464385 (and d!703676 b!2434245)))

(declare-fun lambda!91876 () Int)

(assert (=> bs!464385 (= lambda!91876 lambda!91858)))

(assert (=> bs!464385 (not (= lambda!91876 lambda!91859))))

(declare-fun bs!464386 () Bool)

(assert (= bs!464386 (and d!703676 d!703672)))

(assert (=> bs!464386 (= lambda!91876 lambda!91871)))

(assert (=> d!703676 true))

(assert (=> d!703676 true))

(assert (=> d!703676 true))

(declare-fun lambda!91877 () Int)

(assert (=> bs!464385 (not (= lambda!91877 lambda!91858))))

(assert (=> bs!464385 (= lambda!91877 lambda!91859)))

(assert (=> bs!464386 (not (= lambda!91877 lambda!91871))))

(declare-fun bs!464389 () Bool)

(assert (= bs!464389 d!703676))

(assert (=> bs!464389 (not (= lambda!91877 lambda!91876))))

(assert (=> d!703676 true))

(assert (=> d!703676 true))

(assert (=> d!703676 true))

(assert (=> d!703676 (= (Exists!1191 lambda!91876) (Exists!1191 lambda!91877))))

(declare-fun lt!877217 () Unit!41693)

(declare-fun choose!14430 (Regex!7155 Regex!7155 List!28547) Unit!41693)

(assert (=> d!703676 (= lt!877217 (choose!14430 (regOne!14822 r!13927) (regTwo!14822 r!13927) s!9460))))

(assert (=> d!703676 (validRegex!2871 (regOne!14822 r!13927))))

(assert (=> d!703676 (= (lemmaExistCutMatchRandMatchRSpecEquivalent!436 (regOne!14822 r!13927) (regTwo!14822 r!13927) s!9460) lt!877217)))

(declare-fun m!2815055 () Bool)

(assert (=> bs!464389 m!2815055))

(declare-fun m!2815057 () Bool)

(assert (=> bs!464389 m!2815057))

(declare-fun m!2815059 () Bool)

(assert (=> bs!464389 m!2815059))

(assert (=> bs!464389 m!2815027))

(assert (=> b!2434245 d!703676))

(declare-fun b!2434467 () Bool)

(declare-fun e!1547473 () Bool)

(declare-fun lt!877231 () Option!5644)

(assert (=> b!2434467 (= e!1547473 (not (isDefined!4470 lt!877231)))))

(declare-fun b!2434468 () Bool)

(declare-fun e!1547475 () Option!5644)

(assert (=> b!2434468 (= e!1547475 (Some!5643 (tuple2!28067 Nil!28449 s!9460)))))

(declare-fun b!2434469 () Bool)

(declare-fun e!1547476 () Bool)

(declare-fun ++!7061 (List!28547 List!28547) List!28547)

(declare-fun get!8770 (Option!5644) tuple2!28066)

(assert (=> b!2434469 (= e!1547476 (= (++!7061 (_1!16574 (get!8770 lt!877231)) (_2!16574 (get!8770 lt!877231))) s!9460))))

(declare-fun b!2434470 () Bool)

(declare-fun res!1033456 () Bool)

(assert (=> b!2434470 (=> (not res!1033456) (not e!1547476))))

(assert (=> b!2434470 (= res!1033456 (matchR!3270 (regOne!14822 r!13927) (_1!16574 (get!8770 lt!877231))))))

(declare-fun b!2434471 () Bool)

(declare-fun e!1547474 () Option!5644)

(assert (=> b!2434471 (= e!1547475 e!1547474)))

(declare-fun c!388429 () Bool)

(assert (=> b!2434471 (= c!388429 ((_ is Nil!28449) s!9460))))

(declare-fun b!2434473 () Bool)

(declare-fun e!1547477 () Bool)

(assert (=> b!2434473 (= e!1547477 (matchR!3270 (regTwo!14822 r!13927) s!9460))))

(declare-fun b!2434475 () Bool)

(declare-fun res!1033453 () Bool)

(assert (=> b!2434475 (=> (not res!1033453) (not e!1547476))))

(assert (=> b!2434475 (= res!1033453 (matchR!3270 (regTwo!14822 r!13927) (_2!16574 (get!8770 lt!877231))))))

(declare-fun b!2434476 () Bool)

(declare-fun lt!877229 () Unit!41693)

(declare-fun lt!877230 () Unit!41693)

(assert (=> b!2434476 (= lt!877229 lt!877230)))

(assert (=> b!2434476 (= (++!7061 (++!7061 Nil!28449 (Cons!28449 (h!33850 s!9460) Nil!28449)) (t!208524 s!9460)) s!9460)))

(declare-fun lemmaMoveElementToOtherListKeepsConcatEq!687 (List!28547 C!14468 List!28547 List!28547) Unit!41693)

(assert (=> b!2434476 (= lt!877230 (lemmaMoveElementToOtherListKeepsConcatEq!687 Nil!28449 (h!33850 s!9460) (t!208524 s!9460) s!9460))))

(assert (=> b!2434476 (= e!1547474 (findConcatSeparation!752 (regOne!14822 r!13927) (regTwo!14822 r!13927) (++!7061 Nil!28449 (Cons!28449 (h!33850 s!9460) Nil!28449)) (t!208524 s!9460) s!9460))))

(declare-fun b!2434466 () Bool)

(assert (=> b!2434466 (= e!1547474 None!5643)))

(declare-fun d!703690 () Bool)

(assert (=> d!703690 e!1547473))

(declare-fun res!1033458 () Bool)

(assert (=> d!703690 (=> res!1033458 e!1547473)))

(assert (=> d!703690 (= res!1033458 e!1547476)))

(declare-fun res!1033457 () Bool)

(assert (=> d!703690 (=> (not res!1033457) (not e!1547476))))

(assert (=> d!703690 (= res!1033457 (isDefined!4470 lt!877231))))

(assert (=> d!703690 (= lt!877231 e!1547475)))

(declare-fun c!388430 () Bool)

(assert (=> d!703690 (= c!388430 e!1547477)))

(declare-fun res!1033452 () Bool)

(assert (=> d!703690 (=> (not res!1033452) (not e!1547477))))

(assert (=> d!703690 (= res!1033452 (matchR!3270 (regOne!14822 r!13927) Nil!28449))))

(assert (=> d!703690 (validRegex!2871 (regOne!14822 r!13927))))

(assert (=> d!703690 (= (findConcatSeparation!752 (regOne!14822 r!13927) (regTwo!14822 r!13927) Nil!28449 s!9460 s!9460) lt!877231)))

(assert (= (and d!703690 res!1033452) b!2434473))

(assert (= (and d!703690 c!388430) b!2434468))

(assert (= (and d!703690 (not c!388430)) b!2434471))

(assert (= (and b!2434471 c!388429) b!2434466))

(assert (= (and b!2434471 (not c!388429)) b!2434476))

(assert (= (and d!703690 res!1033457) b!2434470))

(assert (= (and b!2434470 res!1033456) b!2434475))

(assert (= (and b!2434475 res!1033453) b!2434469))

(assert (= (and d!703690 (not res!1033458)) b!2434467))

(declare-fun m!2815067 () Bool)

(assert (=> b!2434470 m!2815067))

(declare-fun m!2815069 () Bool)

(assert (=> b!2434470 m!2815069))

(declare-fun m!2815071 () Bool)

(assert (=> b!2434473 m!2815071))

(assert (=> b!2434469 m!2815067))

(declare-fun m!2815073 () Bool)

(assert (=> b!2434469 m!2815073))

(declare-fun m!2815075 () Bool)

(assert (=> d!703690 m!2815075))

(declare-fun m!2815077 () Bool)

(assert (=> d!703690 m!2815077))

(assert (=> d!703690 m!2815027))

(assert (=> b!2434467 m!2815075))

(declare-fun m!2815079 () Bool)

(assert (=> b!2434476 m!2815079))

(assert (=> b!2434476 m!2815079))

(declare-fun m!2815081 () Bool)

(assert (=> b!2434476 m!2815081))

(declare-fun m!2815083 () Bool)

(assert (=> b!2434476 m!2815083))

(assert (=> b!2434476 m!2815079))

(declare-fun m!2815085 () Bool)

(assert (=> b!2434476 m!2815085))

(assert (=> b!2434475 m!2815067))

(declare-fun m!2815087 () Bool)

(assert (=> b!2434475 m!2815087))

(assert (=> b!2434245 d!703690))

(declare-fun bs!464399 () Bool)

(declare-fun b!2434527 () Bool)

(assert (= bs!464399 (and b!2434527 d!703676)))

(declare-fun lambda!91891 () Int)

(assert (=> bs!464399 (not (= lambda!91891 lambda!91877))))

(declare-fun bs!464400 () Bool)

(assert (= bs!464400 (and b!2434527 d!703672)))

(assert (=> bs!464400 (not (= lambda!91891 lambda!91871))))

(declare-fun bs!464401 () Bool)

(assert (= bs!464401 (and b!2434527 b!2434245)))

(assert (=> bs!464401 (not (= lambda!91891 lambda!91859))))

(assert (=> bs!464401 (not (= lambda!91891 lambda!91858))))

(assert (=> bs!464399 (not (= lambda!91891 lambda!91876))))

(assert (=> b!2434527 true))

(assert (=> b!2434527 true))

(declare-fun bs!464402 () Bool)

(declare-fun b!2434531 () Bool)

(assert (= bs!464402 (and b!2434531 d!703672)))

(declare-fun lambda!91892 () Int)

(assert (=> bs!464402 (not (= lambda!91892 lambda!91871))))

(declare-fun bs!464403 () Bool)

(assert (= bs!464403 (and b!2434531 b!2434245)))

(assert (=> bs!464403 (= lambda!91892 lambda!91859)))

(declare-fun bs!464404 () Bool)

(assert (= bs!464404 (and b!2434531 d!703676)))

(assert (=> bs!464404 (= lambda!91892 lambda!91877)))

(declare-fun bs!464405 () Bool)

(assert (= bs!464405 (and b!2434531 b!2434527)))

(assert (=> bs!464405 (not (= lambda!91892 lambda!91891))))

(assert (=> bs!464403 (not (= lambda!91892 lambda!91858))))

(assert (=> bs!464404 (not (= lambda!91892 lambda!91876))))

(assert (=> b!2434531 true))

(assert (=> b!2434531 true))

(declare-fun b!2434525 () Bool)

(declare-fun e!1547508 () Bool)

(assert (=> b!2434525 (= e!1547508 (matchRSpec!1002 (regTwo!14823 r!13927) s!9460))))

(declare-fun b!2434526 () Bool)

(declare-fun e!1547504 () Bool)

(declare-fun e!1547509 () Bool)

(assert (=> b!2434526 (= e!1547504 e!1547509)))

(declare-fun c!388445 () Bool)

(assert (=> b!2434526 (= c!388445 ((_ is Star!7155) r!13927))))

(declare-fun e!1547510 () Bool)

(declare-fun call!149095 () Bool)

(assert (=> b!2434527 (= e!1547510 call!149095)))

(declare-fun b!2434528 () Bool)

(declare-fun c!388444 () Bool)

(assert (=> b!2434528 (= c!388444 ((_ is ElementMatch!7155) r!13927))))

(declare-fun e!1547506 () Bool)

(declare-fun e!1547505 () Bool)

(assert (=> b!2434528 (= e!1547506 e!1547505)))

(declare-fun b!2434529 () Bool)

(declare-fun e!1547507 () Bool)

(assert (=> b!2434529 (= e!1547507 e!1547506)))

(declare-fun res!1033485 () Bool)

(assert (=> b!2434529 (= res!1033485 (not ((_ is EmptyLang!7155) r!13927)))))

(assert (=> b!2434529 (=> (not res!1033485) (not e!1547506))))

(assert (=> b!2434531 (= e!1547509 call!149095)))

(declare-fun b!2434532 () Bool)

(declare-fun res!1033484 () Bool)

(assert (=> b!2434532 (=> res!1033484 e!1547510)))

(declare-fun call!149094 () Bool)

(assert (=> b!2434532 (= res!1033484 call!149094)))

(assert (=> b!2434532 (= e!1547509 e!1547510)))

(declare-fun bm!149089 () Bool)

(assert (=> bm!149089 (= call!149094 (isEmpty!16487 s!9460))))

(declare-fun b!2434533 () Bool)

(assert (=> b!2434533 (= e!1547507 call!149094)))

(declare-fun b!2434534 () Bool)

(declare-fun c!388443 () Bool)

(assert (=> b!2434534 (= c!388443 ((_ is Union!7155) r!13927))))

(assert (=> b!2434534 (= e!1547505 e!1547504)))

(declare-fun b!2434535 () Bool)

(assert (=> b!2434535 (= e!1547505 (= s!9460 (Cons!28449 (c!388379 r!13927) Nil!28449)))))

(declare-fun bm!149090 () Bool)

(assert (=> bm!149090 (= call!149095 (Exists!1191 (ite c!388445 lambda!91891 lambda!91892)))))

(declare-fun b!2434530 () Bool)

(assert (=> b!2434530 (= e!1547504 e!1547508)))

(declare-fun res!1033483 () Bool)

(assert (=> b!2434530 (= res!1033483 (matchRSpec!1002 (regOne!14823 r!13927) s!9460))))

(assert (=> b!2434530 (=> res!1033483 e!1547508)))

(declare-fun d!703694 () Bool)

(declare-fun c!388446 () Bool)

(assert (=> d!703694 (= c!388446 ((_ is EmptyExpr!7155) r!13927))))

(assert (=> d!703694 (= (matchRSpec!1002 r!13927 s!9460) e!1547507)))

(assert (= (and d!703694 c!388446) b!2434533))

(assert (= (and d!703694 (not c!388446)) b!2434529))

(assert (= (and b!2434529 res!1033485) b!2434528))

(assert (= (and b!2434528 c!388444) b!2434535))

(assert (= (and b!2434528 (not c!388444)) b!2434534))

(assert (= (and b!2434534 c!388443) b!2434530))

(assert (= (and b!2434534 (not c!388443)) b!2434526))

(assert (= (and b!2434530 (not res!1033483)) b!2434525))

(assert (= (and b!2434526 c!388445) b!2434532))

(assert (= (and b!2434526 (not c!388445)) b!2434531))

(assert (= (and b!2434532 (not res!1033484)) b!2434527))

(assert (= (or b!2434527 b!2434531) bm!149090))

(assert (= (or b!2434533 b!2434532) bm!149089))

(declare-fun m!2815095 () Bool)

(assert (=> b!2434525 m!2815095))

(assert (=> bm!149089 m!2814981))

(declare-fun m!2815097 () Bool)

(assert (=> bm!149090 m!2815097))

(declare-fun m!2815099 () Bool)

(assert (=> b!2434530 m!2815099))

(assert (=> b!2434251 d!703694))

(declare-fun b!2434544 () Bool)

(declare-fun e!1547518 () Bool)

(declare-fun lt!877239 () Bool)

(declare-fun call!149096 () Bool)

(assert (=> b!2434544 (= e!1547518 (= lt!877239 call!149096))))

(declare-fun b!2434545 () Bool)

(declare-fun res!1033501 () Bool)

(declare-fun e!1547521 () Bool)

(assert (=> b!2434545 (=> res!1033501 e!1547521)))

(assert (=> b!2434545 (= res!1033501 (not ((_ is ElementMatch!7155) r!13927)))))

(declare-fun e!1547515 () Bool)

(assert (=> b!2434545 (= e!1547515 e!1547521)))

(declare-fun b!2434546 () Bool)

(declare-fun res!1033500 () Bool)

(declare-fun e!1547516 () Bool)

(assert (=> b!2434546 (=> (not res!1033500) (not e!1547516))))

(assert (=> b!2434546 (= res!1033500 (isEmpty!16487 (tail!3783 s!9460)))))

(declare-fun b!2434547 () Bool)

(declare-fun res!1033497 () Bool)

(assert (=> b!2434547 (=> (not res!1033497) (not e!1547516))))

(assert (=> b!2434547 (= res!1033497 (not call!149096))))

(declare-fun b!2434548 () Bool)

(declare-fun res!1033494 () Bool)

(declare-fun e!1547517 () Bool)

(assert (=> b!2434548 (=> res!1033494 e!1547517)))

(assert (=> b!2434548 (= res!1033494 (not (isEmpty!16487 (tail!3783 s!9460))))))

(declare-fun bm!149091 () Bool)

(assert (=> bm!149091 (= call!149096 (isEmpty!16487 s!9460))))

(declare-fun b!2434549 () Bool)

(declare-fun e!1547520 () Bool)

(assert (=> b!2434549 (= e!1547521 e!1547520)))

(declare-fun res!1033499 () Bool)

(assert (=> b!2434549 (=> (not res!1033499) (not e!1547520))))

(assert (=> b!2434549 (= res!1033499 (not lt!877239))))

(declare-fun b!2434550 () Bool)

(declare-fun res!1033496 () Bool)

(assert (=> b!2434550 (=> res!1033496 e!1547521)))

(assert (=> b!2434550 (= res!1033496 e!1547516)))

(declare-fun res!1033495 () Bool)

(assert (=> b!2434550 (=> (not res!1033495) (not e!1547516))))

(assert (=> b!2434550 (= res!1033495 lt!877239)))

(declare-fun d!703698 () Bool)

(assert (=> d!703698 e!1547518))

(declare-fun c!388448 () Bool)

(assert (=> d!703698 (= c!388448 ((_ is EmptyExpr!7155) r!13927))))

(declare-fun e!1547519 () Bool)

(assert (=> d!703698 (= lt!877239 e!1547519)))

(declare-fun c!388447 () Bool)

(assert (=> d!703698 (= c!388447 (isEmpty!16487 s!9460))))

(assert (=> d!703698 (validRegex!2871 r!13927)))

(assert (=> d!703698 (= (matchR!3270 r!13927 s!9460) lt!877239)))

(declare-fun b!2434551 () Bool)

(assert (=> b!2434551 (= e!1547515 (not lt!877239))))

(declare-fun b!2434552 () Bool)

(assert (=> b!2434552 (= e!1547519 (matchR!3270 (derivativeStep!1839 r!13927 (head!5510 s!9460)) (tail!3783 s!9460)))))

(declare-fun b!2434553 () Bool)

(assert (=> b!2434553 (= e!1547517 (not (= (head!5510 s!9460) (c!388379 r!13927))))))

(declare-fun b!2434554 () Bool)

(assert (=> b!2434554 (= e!1547519 (nullable!2185 r!13927))))

(declare-fun b!2434555 () Bool)

(assert (=> b!2434555 (= e!1547516 (= (head!5510 s!9460) (c!388379 r!13927)))))

(declare-fun b!2434556 () Bool)

(assert (=> b!2434556 (= e!1547518 e!1547515)))

(declare-fun c!388449 () Bool)

(assert (=> b!2434556 (= c!388449 ((_ is EmptyLang!7155) r!13927))))

(declare-fun b!2434557 () Bool)

(assert (=> b!2434557 (= e!1547520 e!1547517)))

(declare-fun res!1033498 () Bool)

(assert (=> b!2434557 (=> res!1033498 e!1547517)))

(assert (=> b!2434557 (= res!1033498 call!149096)))

(assert (= (and d!703698 c!388447) b!2434554))

(assert (= (and d!703698 (not c!388447)) b!2434552))

(assert (= (and d!703698 c!388448) b!2434544))

(assert (= (and d!703698 (not c!388448)) b!2434556))

(assert (= (and b!2434556 c!388449) b!2434551))

(assert (= (and b!2434556 (not c!388449)) b!2434545))

(assert (= (and b!2434545 (not res!1033501)) b!2434550))

(assert (= (and b!2434550 res!1033495) b!2434547))

(assert (= (and b!2434547 res!1033497) b!2434546))

(assert (= (and b!2434546 res!1033500) b!2434555))

(assert (= (and b!2434550 (not res!1033496)) b!2434549))

(assert (= (and b!2434549 res!1033499) b!2434557))

(assert (= (and b!2434557 (not res!1033498)) b!2434548))

(assert (= (and b!2434548 (not res!1033494)) b!2434553))

(assert (= (or b!2434544 b!2434547 b!2434557) bm!149091))

(assert (=> b!2434546 m!2814977))

(assert (=> b!2434546 m!2814977))

(assert (=> b!2434546 m!2814979))

(assert (=> bm!149091 m!2814981))

(assert (=> b!2434553 m!2814983))

(declare-fun m!2815101 () Bool)

(assert (=> b!2434554 m!2815101))

(assert (=> b!2434555 m!2814983))

(assert (=> b!2434552 m!2814983))

(assert (=> b!2434552 m!2814983))

(declare-fun m!2815103 () Bool)

(assert (=> b!2434552 m!2815103))

(assert (=> b!2434552 m!2814977))

(assert (=> b!2434552 m!2815103))

(assert (=> b!2434552 m!2814977))

(declare-fun m!2815105 () Bool)

(assert (=> b!2434552 m!2815105))

(assert (=> b!2434548 m!2814977))

(assert (=> b!2434548 m!2814977))

(assert (=> b!2434548 m!2814979))

(assert (=> d!703698 m!2814981))

(declare-fun m!2815107 () Bool)

(assert (=> d!703698 m!2815107))

(assert (=> b!2434251 d!703698))

(declare-fun d!703700 () Bool)

(assert (=> d!703700 (= (matchR!3270 r!13927 s!9460) (matchRSpec!1002 r!13927 s!9460))))

(declare-fun lt!877245 () Unit!41693)

(declare-fun choose!14434 (Regex!7155 List!28547) Unit!41693)

(assert (=> d!703700 (= lt!877245 (choose!14434 r!13927 s!9460))))

(assert (=> d!703700 (validRegex!2871 r!13927)))

(assert (=> d!703700 (= (mainMatchTheorem!1002 r!13927 s!9460) lt!877245)))

(declare-fun bs!464407 () Bool)

(assert (= bs!464407 d!703700))

(assert (=> bs!464407 m!2814967))

(assert (=> bs!464407 m!2814965))

(declare-fun m!2815133 () Bool)

(assert (=> bs!464407 m!2815133))

(assert (=> bs!464407 m!2815107))

(assert (=> b!2434251 d!703700))

(declare-fun bs!464408 () Bool)

(declare-fun d!703706 () Bool)

(assert (= bs!464408 (and d!703706 start!238306)))

(declare-fun lambda!91893 () Int)

(assert (=> bs!464408 (= lambda!91893 lambda!91857)))

(declare-fun bs!464409 () Bool)

(assert (= bs!464409 (and d!703706 d!703664)))

(assert (=> bs!464409 (= lambda!91893 lambda!91866)))

(declare-fun b!2434568 () Bool)

(declare-fun e!1547527 () Regex!7155)

(declare-fun e!1547528 () Regex!7155)

(assert (=> b!2434568 (= e!1547527 e!1547528)))

(declare-fun c!388454 () Bool)

(assert (=> b!2434568 (= c!388454 ((_ is Cons!28448) l!9164))))

(declare-fun b!2434569 () Bool)

(declare-fun e!1547531 () Bool)

(declare-fun lt!877246 () Regex!7155)

(assert (=> b!2434569 (= e!1547531 (isEmptyExpr!203 lt!877246))))

(declare-fun b!2434570 () Bool)

(declare-fun e!1547529 () Bool)

(assert (=> b!2434570 (= e!1547529 (isEmpty!16486 (t!208523 l!9164)))))

(declare-fun b!2434571 () Bool)

(declare-fun e!1547532 () Bool)

(assert (=> b!2434571 (= e!1547531 e!1547532)))

(declare-fun c!388455 () Bool)

(assert (=> b!2434571 (= c!388455 (isEmpty!16486 (tail!3782 l!9164)))))

(declare-fun b!2434572 () Bool)

(declare-fun e!1547530 () Bool)

(assert (=> b!2434572 (= e!1547530 e!1547531)))

(declare-fun c!388453 () Bool)

(assert (=> b!2434572 (= c!388453 (isEmpty!16486 l!9164))))

(declare-fun b!2434573 () Bool)

(assert (=> b!2434573 (= e!1547532 (isConcat!203 lt!877246))))

(declare-fun b!2434574 () Bool)

(assert (=> b!2434574 (= e!1547527 (h!33849 l!9164))))

(assert (=> d!703706 e!1547530))

(declare-fun res!1033508 () Bool)

(assert (=> d!703706 (=> (not res!1033508) (not e!1547530))))

(assert (=> d!703706 (= res!1033508 (validRegex!2871 lt!877246))))

(assert (=> d!703706 (= lt!877246 e!1547527)))

(declare-fun c!388452 () Bool)

(assert (=> d!703706 (= c!388452 e!1547529)))

(declare-fun res!1033507 () Bool)

(assert (=> d!703706 (=> (not res!1033507) (not e!1547529))))

(assert (=> d!703706 (= res!1033507 ((_ is Cons!28448) l!9164))))

(assert (=> d!703706 (forall!5789 l!9164 lambda!91893)))

(assert (=> d!703706 (= (generalisedConcat!256 l!9164) lt!877246)))

(declare-fun b!2434567 () Bool)

(assert (=> b!2434567 (= e!1547528 (Concat!11791 (h!33849 l!9164) (generalisedConcat!256 (t!208523 l!9164))))))

(declare-fun b!2434575 () Bool)

(assert (=> b!2434575 (= e!1547532 (= lt!877246 (head!5509 l!9164)))))

(declare-fun b!2434576 () Bool)

(assert (=> b!2434576 (= e!1547528 EmptyExpr!7155)))

(assert (= (and d!703706 res!1033507) b!2434570))

(assert (= (and d!703706 c!388452) b!2434574))

(assert (= (and d!703706 (not c!388452)) b!2434568))

(assert (= (and b!2434568 c!388454) b!2434567))

(assert (= (and b!2434568 (not c!388454)) b!2434576))

(assert (= (and d!703706 res!1033508) b!2434572))

(assert (= (and b!2434572 c!388453) b!2434569))

(assert (= (and b!2434572 (not c!388453)) b!2434571))

(assert (= (and b!2434571 c!388455) b!2434575))

(assert (= (and b!2434571 (not c!388455)) b!2434573))

(assert (=> b!2434571 m!2814973))

(assert (=> b!2434571 m!2814973))

(declare-fun m!2815135 () Bool)

(assert (=> b!2434571 m!2815135))

(assert (=> b!2434572 m!2814943))

(declare-fun m!2815137 () Bool)

(assert (=> d!703706 m!2815137))

(declare-fun m!2815139 () Bool)

(assert (=> d!703706 m!2815139))

(declare-fun m!2815141 () Bool)

(assert (=> b!2434573 m!2815141))

(declare-fun m!2815143 () Bool)

(assert (=> b!2434569 m!2815143))

(assert (=> b!2434575 m!2814959))

(declare-fun m!2815145 () Bool)

(assert (=> b!2434567 m!2815145))

(declare-fun m!2815147 () Bool)

(assert (=> b!2434570 m!2815147))

(assert (=> b!2434256 d!703706))

(declare-fun d!703708 () Bool)

(declare-fun res!1033517 () Bool)

(declare-fun e!1547549 () Bool)

(assert (=> d!703708 (=> res!1033517 e!1547549)))

(assert (=> d!703708 (= res!1033517 ((_ is Nil!28448) l!9164))))

(assert (=> d!703708 (= (forall!5789 l!9164 lambda!91857) e!1547549)))

(declare-fun b!2434601 () Bool)

(declare-fun e!1547550 () Bool)

(assert (=> b!2434601 (= e!1547549 e!1547550)))

(declare-fun res!1033518 () Bool)

(assert (=> b!2434601 (=> (not res!1033518) (not e!1547550))))

(declare-fun dynLambda!12244 (Int Regex!7155) Bool)

(assert (=> b!2434601 (= res!1033518 (dynLambda!12244 lambda!91857 (h!33849 l!9164)))))

(declare-fun b!2434602 () Bool)

(assert (=> b!2434602 (= e!1547550 (forall!5789 (t!208523 l!9164) lambda!91857))))

(assert (= (and d!703708 (not res!1033517)) b!2434601))

(assert (= (and b!2434601 res!1033518) b!2434602))

(declare-fun b_lambda!74847 () Bool)

(assert (=> (not b_lambda!74847) (not b!2434601)))

(declare-fun m!2815149 () Bool)

(assert (=> b!2434601 m!2815149))

(declare-fun m!2815151 () Bool)

(assert (=> b!2434602 m!2815151))

(assert (=> start!238306 d!703708))

(declare-fun d!703710 () Bool)

(assert (=> d!703710 (= (isEmpty!16486 l!9164) ((_ is Nil!28448) l!9164))))

(assert (=> b!2434252 d!703710))

(declare-fun d!703712 () Bool)

(assert (=> d!703712 (= (isEmpty!16486 lt!877198) ((_ is Nil!28448) lt!877198))))

(assert (=> b!2434242 d!703712))

(declare-fun d!703714 () Bool)

(assert (=> d!703714 (= (tail!3782 l!9164) (t!208523 l!9164))))

(assert (=> b!2434242 d!703714))

(declare-fun b!2434641 () Bool)

(declare-fun e!1547577 () Bool)

(declare-fun call!149105 () Bool)

(assert (=> b!2434641 (= e!1547577 call!149105)))

(declare-fun b!2434642 () Bool)

(declare-fun e!1547583 () Bool)

(declare-fun call!149103 () Bool)

(assert (=> b!2434642 (= e!1547583 call!149103)))

(declare-fun b!2434643 () Bool)

(declare-fun e!1547580 () Bool)

(declare-fun e!1547581 () Bool)

(assert (=> b!2434643 (= e!1547580 e!1547581)))

(declare-fun c!388477 () Bool)

(assert (=> b!2434643 (= c!388477 ((_ is Union!7155) lt!877195))))

(declare-fun c!388476 () Bool)

(declare-fun call!149104 () Bool)

(declare-fun bm!149098 () Bool)

(assert (=> bm!149098 (= call!149104 (validRegex!2871 (ite c!388476 (reg!7484 lt!877195) (ite c!388477 (regTwo!14823 lt!877195) (regOne!14822 lt!877195)))))))

(declare-fun bm!149099 () Bool)

(assert (=> bm!149099 (= call!149105 call!149104)))

(declare-fun b!2434644 () Bool)

(declare-fun res!1033537 () Bool)

(assert (=> b!2434644 (=> (not res!1033537) (not e!1547577))))

(assert (=> b!2434644 (= res!1033537 call!149103)))

(assert (=> b!2434644 (= e!1547581 e!1547577)))

(declare-fun b!2434645 () Bool)

(declare-fun e!1547579 () Bool)

(assert (=> b!2434645 (= e!1547579 call!149104)))

(declare-fun b!2434646 () Bool)

(assert (=> b!2434646 (= e!1547580 e!1547579)))

(declare-fun res!1033536 () Bool)

(assert (=> b!2434646 (= res!1033536 (not (nullable!2185 (reg!7484 lt!877195))))))

(assert (=> b!2434646 (=> (not res!1033536) (not e!1547579))))

(declare-fun bm!149100 () Bool)

(assert (=> bm!149100 (= call!149103 (validRegex!2871 (ite c!388477 (regOne!14823 lt!877195) (regTwo!14822 lt!877195))))))

(declare-fun b!2434647 () Bool)

(declare-fun res!1033534 () Bool)

(declare-fun e!1547582 () Bool)

(assert (=> b!2434647 (=> res!1033534 e!1547582)))

(assert (=> b!2434647 (= res!1033534 (not ((_ is Concat!11791) lt!877195)))))

(assert (=> b!2434647 (= e!1547581 e!1547582)))

(declare-fun b!2434648 () Bool)

(assert (=> b!2434648 (= e!1547582 e!1547583)))

(declare-fun res!1033535 () Bool)

(assert (=> b!2434648 (=> (not res!1033535) (not e!1547583))))

(assert (=> b!2434648 (= res!1033535 call!149105)))

(declare-fun d!703716 () Bool)

(declare-fun res!1033533 () Bool)

(declare-fun e!1547578 () Bool)

(assert (=> d!703716 (=> res!1033533 e!1547578)))

(assert (=> d!703716 (= res!1033533 ((_ is ElementMatch!7155) lt!877195))))

(assert (=> d!703716 (= (validRegex!2871 lt!877195) e!1547578)))

(declare-fun b!2434649 () Bool)

(assert (=> b!2434649 (= e!1547578 e!1547580)))

(assert (=> b!2434649 (= c!388476 ((_ is Star!7155) lt!877195))))

(assert (= (and d!703716 (not res!1033533)) b!2434649))

(assert (= (and b!2434649 c!388476) b!2434646))

(assert (= (and b!2434649 (not c!388476)) b!2434643))

(assert (= (and b!2434646 res!1033536) b!2434645))

(assert (= (and b!2434643 c!388477) b!2434644))

(assert (= (and b!2434643 (not c!388477)) b!2434647))

(assert (= (and b!2434644 res!1033537) b!2434641))

(assert (= (and b!2434647 (not res!1033534)) b!2434648))

(assert (= (and b!2434648 res!1033535) b!2434642))

(assert (= (or b!2434644 b!2434642) bm!149100))

(assert (= (or b!2434641 b!2434648) bm!149099))

(assert (= (or b!2434645 bm!149099) bm!149098))

(declare-fun m!2815185 () Bool)

(assert (=> bm!149098 m!2815185))

(declare-fun m!2815187 () Bool)

(assert (=> b!2434646 m!2815187))

(declare-fun m!2815189 () Bool)

(assert (=> bm!149100 m!2815189))

(assert (=> b!2434243 d!703716))

(declare-fun b!2434681 () Bool)

(declare-fun e!1547600 () Bool)

(declare-fun tp!773212 () Bool)

(declare-fun tp!773214 () Bool)

(assert (=> b!2434681 (= e!1547600 (and tp!773212 tp!773214))))

(assert (=> b!2434254 (= tp!773193 e!1547600)))

(declare-fun b!2434680 () Bool)

(declare-fun tp!773213 () Bool)

(assert (=> b!2434680 (= e!1547600 tp!773213)))

(declare-fun b!2434679 () Bool)

(declare-fun tp!773210 () Bool)

(declare-fun tp!773211 () Bool)

(assert (=> b!2434679 (= e!1547600 (and tp!773210 tp!773211))))

(declare-fun b!2434678 () Bool)

(assert (=> b!2434678 (= e!1547600 tp_is_empty!11723)))

(assert (= (and b!2434254 ((_ is ElementMatch!7155) (reg!7484 r!13927))) b!2434678))

(assert (= (and b!2434254 ((_ is Concat!11791) (reg!7484 r!13927))) b!2434679))

(assert (= (and b!2434254 ((_ is Star!7155) (reg!7484 r!13927))) b!2434680))

(assert (= (and b!2434254 ((_ is Union!7155) (reg!7484 r!13927))) b!2434681))

(declare-fun b!2434685 () Bool)

(declare-fun e!1547601 () Bool)

(declare-fun tp!773217 () Bool)

(declare-fun tp!773219 () Bool)

(assert (=> b!2434685 (= e!1547601 (and tp!773217 tp!773219))))

(assert (=> b!2434246 (= tp!773192 e!1547601)))

(declare-fun b!2434684 () Bool)

(declare-fun tp!773218 () Bool)

(assert (=> b!2434684 (= e!1547601 tp!773218)))

(declare-fun b!2434683 () Bool)

(declare-fun tp!773215 () Bool)

(declare-fun tp!773216 () Bool)

(assert (=> b!2434683 (= e!1547601 (and tp!773215 tp!773216))))

(declare-fun b!2434682 () Bool)

(assert (=> b!2434682 (= e!1547601 tp_is_empty!11723)))

(assert (= (and b!2434246 ((_ is ElementMatch!7155) (h!33849 l!9164))) b!2434682))

(assert (= (and b!2434246 ((_ is Concat!11791) (h!33849 l!9164))) b!2434683))

(assert (= (and b!2434246 ((_ is Star!7155) (h!33849 l!9164))) b!2434684))

(assert (= (and b!2434246 ((_ is Union!7155) (h!33849 l!9164))) b!2434685))

(declare-fun b!2434690 () Bool)

(declare-fun e!1547604 () Bool)

(declare-fun tp!773224 () Bool)

(declare-fun tp!773225 () Bool)

(assert (=> b!2434690 (= e!1547604 (and tp!773224 tp!773225))))

(assert (=> b!2434246 (= tp!773196 e!1547604)))

(assert (= (and b!2434246 ((_ is Cons!28448) (t!208523 l!9164))) b!2434690))

(declare-fun b!2434695 () Bool)

(declare-fun e!1547607 () Bool)

(declare-fun tp!773228 () Bool)

(assert (=> b!2434695 (= e!1547607 (and tp_is_empty!11723 tp!773228))))

(assert (=> b!2434247 (= tp!773197 e!1547607)))

(assert (= (and b!2434247 ((_ is Cons!28449) (t!208524 s!9460))) b!2434695))

(declare-fun b!2434699 () Bool)

(declare-fun e!1547608 () Bool)

(declare-fun tp!773231 () Bool)

(declare-fun tp!773233 () Bool)

(assert (=> b!2434699 (= e!1547608 (and tp!773231 tp!773233))))

(assert (=> b!2434253 (= tp!773195 e!1547608)))

(declare-fun b!2434698 () Bool)

(declare-fun tp!773232 () Bool)

(assert (=> b!2434698 (= e!1547608 tp!773232)))

(declare-fun b!2434697 () Bool)

(declare-fun tp!773229 () Bool)

(declare-fun tp!773230 () Bool)

(assert (=> b!2434697 (= e!1547608 (and tp!773229 tp!773230))))

(declare-fun b!2434696 () Bool)

(assert (=> b!2434696 (= e!1547608 tp_is_empty!11723)))

(assert (= (and b!2434253 ((_ is ElementMatch!7155) (regOne!14823 r!13927))) b!2434696))

(assert (= (and b!2434253 ((_ is Concat!11791) (regOne!14823 r!13927))) b!2434697))

(assert (= (and b!2434253 ((_ is Star!7155) (regOne!14823 r!13927))) b!2434698))

(assert (= (and b!2434253 ((_ is Union!7155) (regOne!14823 r!13927))) b!2434699))

(declare-fun b!2434703 () Bool)

(declare-fun e!1547609 () Bool)

(declare-fun tp!773236 () Bool)

(declare-fun tp!773238 () Bool)

(assert (=> b!2434703 (= e!1547609 (and tp!773236 tp!773238))))

(assert (=> b!2434253 (= tp!773198 e!1547609)))

(declare-fun b!2434702 () Bool)

(declare-fun tp!773237 () Bool)

(assert (=> b!2434702 (= e!1547609 tp!773237)))

(declare-fun b!2434701 () Bool)

(declare-fun tp!773234 () Bool)

(declare-fun tp!773235 () Bool)

(assert (=> b!2434701 (= e!1547609 (and tp!773234 tp!773235))))

(declare-fun b!2434700 () Bool)

(assert (=> b!2434700 (= e!1547609 tp_is_empty!11723)))

(assert (= (and b!2434253 ((_ is ElementMatch!7155) (regTwo!14823 r!13927))) b!2434700))

(assert (= (and b!2434253 ((_ is Concat!11791) (regTwo!14823 r!13927))) b!2434701))

(assert (= (and b!2434253 ((_ is Star!7155) (regTwo!14823 r!13927))) b!2434702))

(assert (= (and b!2434253 ((_ is Union!7155) (regTwo!14823 r!13927))) b!2434703))

(declare-fun b!2434707 () Bool)

(declare-fun e!1547610 () Bool)

(declare-fun tp!773241 () Bool)

(declare-fun tp!773243 () Bool)

(assert (=> b!2434707 (= e!1547610 (and tp!773241 tp!773243))))

(assert (=> b!2434248 (= tp!773199 e!1547610)))

(declare-fun b!2434706 () Bool)

(declare-fun tp!773242 () Bool)

(assert (=> b!2434706 (= e!1547610 tp!773242)))

(declare-fun b!2434705 () Bool)

(declare-fun tp!773239 () Bool)

(declare-fun tp!773240 () Bool)

(assert (=> b!2434705 (= e!1547610 (and tp!773239 tp!773240))))

(declare-fun b!2434704 () Bool)

(assert (=> b!2434704 (= e!1547610 tp_is_empty!11723)))

(assert (= (and b!2434248 ((_ is ElementMatch!7155) (regOne!14822 r!13927))) b!2434704))

(assert (= (and b!2434248 ((_ is Concat!11791) (regOne!14822 r!13927))) b!2434705))

(assert (= (and b!2434248 ((_ is Star!7155) (regOne!14822 r!13927))) b!2434706))

(assert (= (and b!2434248 ((_ is Union!7155) (regOne!14822 r!13927))) b!2434707))

(declare-fun b!2434711 () Bool)

(declare-fun e!1547611 () Bool)

(declare-fun tp!773246 () Bool)

(declare-fun tp!773248 () Bool)

(assert (=> b!2434711 (= e!1547611 (and tp!773246 tp!773248))))

(assert (=> b!2434248 (= tp!773194 e!1547611)))

(declare-fun b!2434710 () Bool)

(declare-fun tp!773247 () Bool)

(assert (=> b!2434710 (= e!1547611 tp!773247)))

(declare-fun b!2434709 () Bool)

(declare-fun tp!773244 () Bool)

(declare-fun tp!773245 () Bool)

(assert (=> b!2434709 (= e!1547611 (and tp!773244 tp!773245))))

(declare-fun b!2434708 () Bool)

(assert (=> b!2434708 (= e!1547611 tp_is_empty!11723)))

(assert (= (and b!2434248 ((_ is ElementMatch!7155) (regTwo!14822 r!13927))) b!2434708))

(assert (= (and b!2434248 ((_ is Concat!11791) (regTwo!14822 r!13927))) b!2434709))

(assert (= (and b!2434248 ((_ is Star!7155) (regTwo!14822 r!13927))) b!2434710))

(assert (= (and b!2434248 ((_ is Union!7155) (regTwo!14822 r!13927))) b!2434711))

(declare-fun b_lambda!74849 () Bool)

(assert (= b_lambda!74847 (or start!238306 b_lambda!74849)))

(declare-fun bs!464413 () Bool)

(declare-fun d!703728 () Bool)

(assert (= bs!464413 (and d!703728 start!238306)))

(assert (=> bs!464413 (= (dynLambda!12244 lambda!91857 (h!33849 l!9164)) (validRegex!2871 (h!33849 l!9164)))))

(declare-fun m!2815191 () Bool)

(assert (=> bs!464413 m!2815191))

(assert (=> b!2434601 d!703728))

(check-sat (not b!2434359) (not b!2434701) (not b!2434602) (not b!2434681) (not d!703664) (not b!2434300) (not d!703700) (not d!703668) (not d!703690) (not b!2434555) (not b!2434530) (not b!2434546) (not b!2434571) (not b!2434646) (not b!2434697) (not b!2434554) (not d!703676) (not b!2434710) (not b!2434291) (not b!2434706) (not d!703666) (not bm!149091) (not b!2434702) (not b!2434572) (not bm!149090) (not b!2434679) (not b!2434355) (not b!2434476) (not b!2434711) (not b!2434703) (not b!2434573) (not b!2434705) (not b!2434699) (not b!2434552) (not d!703706) (not b!2434525) tp_is_empty!11723 (not b!2434360) (not b!2434690) (not bm!149100) (not bs!464413) (not b!2434467) (not d!703698) (not b!2434685) (not b!2434553) (not b!2434548) (not b!2434358) (not b!2434575) (not b_lambda!74849) (not b!2434684) (not b!2434709) (not b!2434707) (not b!2434570) (not b!2434470) (not b!2434695) (not d!703658) (not d!703672) (not b!2434299) (not b!2434297) (not b!2434683) (not b!2434293) (not b!2434680) (not b!2434475) (not b!2434567) (not b!2434361) (not bm!149089) (not b!2434473) (not b!2434469) (not d!703670) (not b!2434569) (not b!2434357) (not b!2434298) (not bm!149074) (not b!2434363) (not b!2434698) (not bm!149098))
(check-sat)
