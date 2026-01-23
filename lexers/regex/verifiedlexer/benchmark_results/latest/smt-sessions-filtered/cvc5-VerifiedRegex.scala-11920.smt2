; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!667908 () Bool)

(assert start!667908)

(declare-fun b!6961226 () Bool)

(declare-fun e!4185426 () Bool)

(declare-fun tp_is_empty!43397 () Bool)

(declare-fun tp!1919293 () Bool)

(assert (=> b!6961226 (= e!4185426 (and tp_is_empty!43397 tp!1919293))))

(declare-fun b!6961227 () Bool)

(declare-fun res!2840406 () Bool)

(declare-fun e!4185424 () Bool)

(assert (=> b!6961227 (=> (not res!2840406) (not e!4185424))))

(declare-datatypes ((C!34442 0))(
  ( (C!34443 (val!26923 Int)) )
))
(declare-datatypes ((Regex!17086 0))(
  ( (ElementMatch!17086 (c!1290766 C!34442)) (Concat!25931 (regOne!34684 Regex!17086) (regTwo!34684 Regex!17086)) (EmptyExpr!17086) (Star!17086 (reg!17415 Regex!17086)) (EmptyLang!17086) (Union!17086 (regOne!34685 Regex!17086) (regTwo!34685 Regex!17086)) )
))
(declare-fun r!13765 () Regex!17086)

(declare-datatypes ((List!66857 0))(
  ( (Nil!66733) (Cons!66733 (h!73181 Regex!17086) (t!380600 List!66857)) )
))
(declare-fun l!9142 () List!66857)

(declare-fun generalisedUnion!2561 (List!66857) Regex!17086)

(assert (=> b!6961227 (= res!2840406 (= r!13765 (generalisedUnion!2561 l!9142)))))

(declare-fun b!6961228 () Bool)

(declare-fun e!4185427 () Bool)

(declare-fun tp!1919292 () Bool)

(declare-fun tp!1919298 () Bool)

(assert (=> b!6961228 (= e!4185427 (and tp!1919292 tp!1919298))))

(declare-fun b!6961229 () Bool)

(declare-fun res!2840404 () Bool)

(declare-fun e!4185423 () Bool)

(assert (=> b!6961229 (=> res!2840404 e!4185423)))

(declare-fun isEmpty!38955 (List!66857) Bool)

(assert (=> b!6961229 (= res!2840404 (isEmpty!38955 l!9142))))

(declare-fun b!6961230 () Bool)

(assert (=> b!6961230 (= e!4185424 (not e!4185423))))

(declare-fun res!2840405 () Bool)

(assert (=> b!6961230 (=> res!2840405 e!4185423)))

(assert (=> b!6961230 (= res!2840405 (not (is-Union!17086 r!13765)))))

(declare-datatypes ((List!66858 0))(
  ( (Nil!66734) (Cons!66734 (h!73182 C!34442) (t!380601 List!66858)) )
))
(declare-fun s!9351 () List!66858)

(declare-fun matchR!9192 (Regex!17086 List!66858) Bool)

(declare-fun matchRSpec!4107 (Regex!17086 List!66858) Bool)

(assert (=> b!6961230 (= (matchR!9192 r!13765 s!9351) (matchRSpec!4107 r!13765 s!9351))))

(declare-datatypes ((Unit!160832 0))(
  ( (Unit!160833) )
))
(declare-fun lt!2478928 () Unit!160832)

(declare-fun mainMatchTheorem!4101 (Regex!17086 List!66858) Unit!160832)

(assert (=> b!6961230 (= lt!2478928 (mainMatchTheorem!4101 r!13765 s!9351))))

(declare-fun b!6961231 () Bool)

(declare-fun e!4185425 () Bool)

(declare-fun tp!1919295 () Bool)

(declare-fun tp!1919294 () Bool)

(assert (=> b!6961231 (= e!4185425 (and tp!1919295 tp!1919294))))

(declare-fun b!6961232 () Bool)

(assert (=> b!6961232 (= e!4185427 tp_is_empty!43397)))

(declare-fun res!2840407 () Bool)

(assert (=> start!667908 (=> (not res!2840407) (not e!4185424))))

(declare-fun lambda!397173 () Int)

(declare-fun forall!15957 (List!66857 Int) Bool)

(assert (=> start!667908 (= res!2840407 (forall!15957 l!9142 lambda!397173))))

(assert (=> start!667908 e!4185424))

(assert (=> start!667908 e!4185425))

(assert (=> start!667908 e!4185427))

(assert (=> start!667908 e!4185426))

(declare-fun b!6961233 () Bool)

(declare-fun res!2840403 () Bool)

(assert (=> b!6961233 (=> res!2840403 e!4185423)))

(declare-fun tail!13036 (List!66857) List!66857)

(assert (=> b!6961233 (= res!2840403 (isEmpty!38955 (tail!13036 l!9142)))))

(declare-fun b!6961234 () Bool)

(declare-fun validRegex!8782 (Regex!17086) Bool)

(assert (=> b!6961234 (= e!4185423 (validRegex!8782 (regOne!34685 r!13765)))))

(declare-fun b!6961235 () Bool)

(declare-fun tp!1919297 () Bool)

(declare-fun tp!1919299 () Bool)

(assert (=> b!6961235 (= e!4185427 (and tp!1919297 tp!1919299))))

(declare-fun b!6961236 () Bool)

(declare-fun tp!1919296 () Bool)

(assert (=> b!6961236 (= e!4185427 tp!1919296)))

(assert (= (and start!667908 res!2840407) b!6961227))

(assert (= (and b!6961227 res!2840406) b!6961230))

(assert (= (and b!6961230 (not res!2840405)) b!6961229))

(assert (= (and b!6961229 (not res!2840404)) b!6961233))

(assert (= (and b!6961233 (not res!2840403)) b!6961234))

(assert (= (and start!667908 (is-Cons!66733 l!9142)) b!6961231))

(assert (= (and start!667908 (is-ElementMatch!17086 r!13765)) b!6961232))

(assert (= (and start!667908 (is-Concat!25931 r!13765)) b!6961228))

(assert (= (and start!667908 (is-Star!17086 r!13765)) b!6961236))

(assert (= (and start!667908 (is-Union!17086 r!13765)) b!6961235))

(assert (= (and start!667908 (is-Cons!66734 s!9351)) b!6961226))

(declare-fun m!7656184 () Bool)

(assert (=> b!6961230 m!7656184))

(declare-fun m!7656186 () Bool)

(assert (=> b!6961230 m!7656186))

(declare-fun m!7656188 () Bool)

(assert (=> b!6961230 m!7656188))

(declare-fun m!7656190 () Bool)

(assert (=> b!6961234 m!7656190))

(declare-fun m!7656192 () Bool)

(assert (=> b!6961233 m!7656192))

(assert (=> b!6961233 m!7656192))

(declare-fun m!7656194 () Bool)

(assert (=> b!6961233 m!7656194))

(declare-fun m!7656196 () Bool)

(assert (=> start!667908 m!7656196))

(declare-fun m!7656198 () Bool)

(assert (=> b!6961229 m!7656198))

(declare-fun m!7656200 () Bool)

(assert (=> b!6961227 m!7656200))

(push 1)

(assert (not b!6961227))

(assert (not b!6961233))

(assert (not b!6961235))

(assert (not b!6961234))

(assert (not b!6961228))

(assert (not b!6961226))

(assert (not b!6961229))

(assert (not start!667908))

(assert (not b!6961230))

(assert (not b!6961236))

(assert tp_is_empty!43397)

(assert (not b!6961231))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!2170041 () Bool)

(assert (=> d!2170041 (= (isEmpty!38955 (tail!13036 l!9142)) (is-Nil!66733 (tail!13036 l!9142)))))

(assert (=> b!6961233 d!2170041))

(declare-fun d!2170043 () Bool)

(assert (=> d!2170043 (= (tail!13036 l!9142) (t!380600 l!9142))))

(assert (=> b!6961233 d!2170043))

(declare-fun bm!632055 () Bool)

(declare-fun call!632062 () Bool)

(declare-fun c!1290772 () Bool)

(assert (=> bm!632055 (= call!632062 (validRegex!8782 (ite c!1290772 (regOne!34685 (regOne!34685 r!13765)) (regOne!34684 (regOne!34685 r!13765)))))))

(declare-fun d!2170045 () Bool)

(declare-fun res!2840435 () Bool)

(declare-fun e!4185463 () Bool)

(assert (=> d!2170045 (=> res!2840435 e!4185463)))

(assert (=> d!2170045 (= res!2840435 (is-ElementMatch!17086 (regOne!34685 r!13765)))))

(assert (=> d!2170045 (= (validRegex!8782 (regOne!34685 r!13765)) e!4185463)))

(declare-fun b!6961288 () Bool)

(declare-fun res!2840437 () Bool)

(declare-fun e!4185462 () Bool)

(assert (=> b!6961288 (=> (not res!2840437) (not e!4185462))))

(assert (=> b!6961288 (= res!2840437 call!632062)))

(declare-fun e!4185461 () Bool)

(assert (=> b!6961288 (= e!4185461 e!4185462)))

(declare-fun bm!632056 () Bool)

(declare-fun c!1290773 () Bool)

(declare-fun call!632061 () Bool)

(assert (=> bm!632056 (= call!632061 (validRegex!8782 (ite c!1290773 (reg!17415 (regOne!34685 r!13765)) (ite c!1290772 (regTwo!34685 (regOne!34685 r!13765)) (regTwo!34684 (regOne!34685 r!13765))))))))

(declare-fun b!6961289 () Bool)

(declare-fun res!2840436 () Bool)

(declare-fun e!4185457 () Bool)

(assert (=> b!6961289 (=> res!2840436 e!4185457)))

(assert (=> b!6961289 (= res!2840436 (not (is-Concat!25931 (regOne!34685 r!13765))))))

(assert (=> b!6961289 (= e!4185461 e!4185457)))

(declare-fun b!6961290 () Bool)

(declare-fun e!4185460 () Bool)

(declare-fun call!632060 () Bool)

(assert (=> b!6961290 (= e!4185460 call!632060)))

(declare-fun b!6961291 () Bool)

(declare-fun e!4185458 () Bool)

(assert (=> b!6961291 (= e!4185458 e!4185461)))

(assert (=> b!6961291 (= c!1290772 (is-Union!17086 (regOne!34685 r!13765)))))

(declare-fun b!6961292 () Bool)

(assert (=> b!6961292 (= e!4185457 e!4185460)))

(declare-fun res!2840434 () Bool)

(assert (=> b!6961292 (=> (not res!2840434) (not e!4185460))))

(assert (=> b!6961292 (= res!2840434 call!632062)))

(declare-fun b!6961293 () Bool)

(assert (=> b!6961293 (= e!4185463 e!4185458)))

(assert (=> b!6961293 (= c!1290773 (is-Star!17086 (regOne!34685 r!13765)))))

(declare-fun b!6961294 () Bool)

(assert (=> b!6961294 (= e!4185462 call!632060)))

(declare-fun b!6961295 () Bool)

(declare-fun e!4185459 () Bool)

(assert (=> b!6961295 (= e!4185459 call!632061)))

(declare-fun b!6961296 () Bool)

(assert (=> b!6961296 (= e!4185458 e!4185459)))

(declare-fun res!2840433 () Bool)

(declare-fun nullable!6889 (Regex!17086) Bool)

(assert (=> b!6961296 (= res!2840433 (not (nullable!6889 (reg!17415 (regOne!34685 r!13765)))))))

(assert (=> b!6961296 (=> (not res!2840433) (not e!4185459))))

(declare-fun bm!632057 () Bool)

(assert (=> bm!632057 (= call!632060 call!632061)))

(assert (= (and d!2170045 (not res!2840435)) b!6961293))

(assert (= (and b!6961293 c!1290773) b!6961296))

(assert (= (and b!6961293 (not c!1290773)) b!6961291))

(assert (= (and b!6961296 res!2840433) b!6961295))

(assert (= (and b!6961291 c!1290772) b!6961288))

(assert (= (and b!6961291 (not c!1290772)) b!6961289))

(assert (= (and b!6961288 res!2840437) b!6961294))

(assert (= (and b!6961289 (not res!2840436)) b!6961292))

(assert (= (and b!6961292 res!2840434) b!6961290))

(assert (= (or b!6961288 b!6961292) bm!632055))

(assert (= (or b!6961294 b!6961290) bm!632057))

(assert (= (or b!6961295 bm!632057) bm!632056))

(declare-fun m!7656220 () Bool)

(assert (=> bm!632055 m!7656220))

(declare-fun m!7656222 () Bool)

(assert (=> bm!632056 m!7656222))

(declare-fun m!7656224 () Bool)

(assert (=> b!6961296 m!7656224))

(assert (=> b!6961234 d!2170045))

(declare-fun d!2170049 () Bool)

(assert (=> d!2170049 (= (isEmpty!38955 l!9142) (is-Nil!66733 l!9142))))

(assert (=> b!6961229 d!2170049))

(declare-fun b!6961331 () Bool)

(declare-fun e!4185488 () Bool)

(declare-fun lt!2478936 () Bool)

(declare-fun call!632065 () Bool)

(assert (=> b!6961331 (= e!4185488 (= lt!2478936 call!632065))))

(declare-fun b!6961332 () Bool)

(declare-fun e!4185482 () Bool)

(declare-fun head!13977 (List!66858) C!34442)

(assert (=> b!6961332 (= e!4185482 (not (= (head!13977 s!9351) (c!1290766 r!13765))))))

(declare-fun d!2170051 () Bool)

(assert (=> d!2170051 e!4185488))

(declare-fun c!1290783 () Bool)

(assert (=> d!2170051 (= c!1290783 (is-EmptyExpr!17086 r!13765))))

(declare-fun e!4185484 () Bool)

(assert (=> d!2170051 (= lt!2478936 e!4185484)))

(declare-fun c!1290784 () Bool)

(declare-fun isEmpty!38957 (List!66858) Bool)

(assert (=> d!2170051 (= c!1290784 (isEmpty!38957 s!9351))))

(assert (=> d!2170051 (validRegex!8782 r!13765)))

(assert (=> d!2170051 (= (matchR!9192 r!13765 s!9351) lt!2478936)))

(declare-fun b!6961333 () Bool)

(declare-fun e!4185483 () Bool)

(assert (=> b!6961333 (= e!4185483 (= (head!13977 s!9351) (c!1290766 r!13765)))))

(declare-fun b!6961334 () Bool)

(declare-fun res!2840457 () Bool)

(assert (=> b!6961334 (=> (not res!2840457) (not e!4185483))))

(assert (=> b!6961334 (= res!2840457 (not call!632065))))

(declare-fun b!6961335 () Bool)

(declare-fun res!2840456 () Bool)

(assert (=> b!6961335 (=> (not res!2840456) (not e!4185483))))

(declare-fun tail!13038 (List!66858) List!66858)

(assert (=> b!6961335 (= res!2840456 (isEmpty!38957 (tail!13038 s!9351)))))

(declare-fun b!6961336 () Bool)

(declare-fun e!4185486 () Bool)

(assert (=> b!6961336 (= e!4185486 (not lt!2478936))))

(declare-fun b!6961337 () Bool)

(declare-fun derivativeStep!5515 (Regex!17086 C!34442) Regex!17086)

(assert (=> b!6961337 (= e!4185484 (matchR!9192 (derivativeStep!5515 r!13765 (head!13977 s!9351)) (tail!13038 s!9351)))))

(declare-fun b!6961338 () Bool)

(assert (=> b!6961338 (= e!4185488 e!4185486)))

(declare-fun c!1290782 () Bool)

(assert (=> b!6961338 (= c!1290782 (is-EmptyLang!17086 r!13765))))

(declare-fun b!6961339 () Bool)

(declare-fun e!4185485 () Bool)

(assert (=> b!6961339 (= e!4185485 e!4185482)))

(declare-fun res!2840459 () Bool)

(assert (=> b!6961339 (=> res!2840459 e!4185482)))

(assert (=> b!6961339 (= res!2840459 call!632065)))

(declare-fun b!6961340 () Bool)

(assert (=> b!6961340 (= e!4185484 (nullable!6889 r!13765))))

(declare-fun bm!632060 () Bool)

(assert (=> bm!632060 (= call!632065 (isEmpty!38957 s!9351))))

(declare-fun b!6961341 () Bool)

(declare-fun res!2840460 () Bool)

(assert (=> b!6961341 (=> res!2840460 e!4185482)))

(assert (=> b!6961341 (= res!2840460 (not (isEmpty!38957 (tail!13038 s!9351))))))

(declare-fun b!6961342 () Bool)

(declare-fun e!4185487 () Bool)

(assert (=> b!6961342 (= e!4185487 e!4185485)))

(declare-fun res!2840462 () Bool)

(assert (=> b!6961342 (=> (not res!2840462) (not e!4185485))))

(assert (=> b!6961342 (= res!2840462 (not lt!2478936))))

(declare-fun b!6961343 () Bool)

(declare-fun res!2840458 () Bool)

(assert (=> b!6961343 (=> res!2840458 e!4185487)))

(assert (=> b!6961343 (= res!2840458 (not (is-ElementMatch!17086 r!13765)))))

(assert (=> b!6961343 (= e!4185486 e!4185487)))

(declare-fun b!6961344 () Bool)

(declare-fun res!2840461 () Bool)

(assert (=> b!6961344 (=> res!2840461 e!4185487)))

(assert (=> b!6961344 (= res!2840461 e!4185483)))

(declare-fun res!2840463 () Bool)

(assert (=> b!6961344 (=> (not res!2840463) (not e!4185483))))

(assert (=> b!6961344 (= res!2840463 lt!2478936)))

(assert (= (and d!2170051 c!1290784) b!6961340))

(assert (= (and d!2170051 (not c!1290784)) b!6961337))

(assert (= (and d!2170051 c!1290783) b!6961331))

(assert (= (and d!2170051 (not c!1290783)) b!6961338))

(assert (= (and b!6961338 c!1290782) b!6961336))

(assert (= (and b!6961338 (not c!1290782)) b!6961343))

(assert (= (and b!6961343 (not res!2840458)) b!6961344))

(assert (= (and b!6961344 res!2840463) b!6961334))

(assert (= (and b!6961334 res!2840457) b!6961335))

(assert (= (and b!6961335 res!2840456) b!6961333))

(assert (= (and b!6961344 (not res!2840461)) b!6961342))

(assert (= (and b!6961342 res!2840462) b!6961339))

(assert (= (and b!6961339 (not res!2840459)) b!6961341))

(assert (= (and b!6961341 (not res!2840460)) b!6961332))

(assert (= (or b!6961331 b!6961334 b!6961339) bm!632060))

(declare-fun m!7656226 () Bool)

(assert (=> b!6961337 m!7656226))

(assert (=> b!6961337 m!7656226))

(declare-fun m!7656228 () Bool)

(assert (=> b!6961337 m!7656228))

(declare-fun m!7656230 () Bool)

(assert (=> b!6961337 m!7656230))

(assert (=> b!6961337 m!7656228))

(assert (=> b!6961337 m!7656230))

(declare-fun m!7656232 () Bool)

(assert (=> b!6961337 m!7656232))

(declare-fun m!7656234 () Bool)

(assert (=> b!6961340 m!7656234))

(assert (=> b!6961335 m!7656230))

(assert (=> b!6961335 m!7656230))

(declare-fun m!7656236 () Bool)

(assert (=> b!6961335 m!7656236))

(assert (=> b!6961332 m!7656226))

(declare-fun m!7656238 () Bool)

(assert (=> d!2170051 m!7656238))

(declare-fun m!7656240 () Bool)

(assert (=> d!2170051 m!7656240))

(assert (=> b!6961341 m!7656230))

(assert (=> b!6961341 m!7656230))

(assert (=> b!6961341 m!7656236))

(assert (=> bm!632060 m!7656238))

(assert (=> b!6961333 m!7656226))

(assert (=> b!6961230 d!2170051))

(declare-fun b!6961410 () Bool)

(assert (=> b!6961410 true))

(assert (=> b!6961410 true))

(declare-fun bs!1858331 () Bool)

(declare-fun b!6961408 () Bool)

(assert (= bs!1858331 (and b!6961408 b!6961410)))

(declare-fun lambda!397185 () Int)

(declare-fun lambda!397184 () Int)

(assert (=> bs!1858331 (not (= lambda!397185 lambda!397184))))

(assert (=> b!6961408 true))

(assert (=> b!6961408 true))

(declare-fun b!6961401 () Bool)

(declare-fun c!1290805 () Bool)

(assert (=> b!6961401 (= c!1290805 (is-Union!17086 r!13765))))

(declare-fun e!4185526 () Bool)

(declare-fun e!4185523 () Bool)

(assert (=> b!6961401 (= e!4185526 e!4185523)))

(declare-fun b!6961402 () Bool)

(declare-fun e!4185525 () Bool)

(declare-fun e!4185521 () Bool)

(assert (=> b!6961402 (= e!4185525 e!4185521)))

(declare-fun res!2840486 () Bool)

(assert (=> b!6961402 (= res!2840486 (not (is-EmptyLang!17086 r!13765)))))

(assert (=> b!6961402 (=> (not res!2840486) (not e!4185521))))

(declare-fun b!6961403 () Bool)

(declare-fun e!4185527 () Bool)

(assert (=> b!6961403 (= e!4185523 e!4185527)))

(declare-fun c!1290806 () Bool)

(assert (=> b!6961403 (= c!1290806 (is-Star!17086 r!13765))))

(declare-fun b!6961404 () Bool)

(assert (=> b!6961404 (= e!4185526 (= s!9351 (Cons!66734 (c!1290766 r!13765) Nil!66734)))))

(declare-fun b!6961405 () Bool)

(declare-fun e!4185524 () Bool)

(assert (=> b!6961405 (= e!4185523 e!4185524)))

(declare-fun res!2840484 () Bool)

(assert (=> b!6961405 (= res!2840484 (matchRSpec!4107 (regOne!34685 r!13765) s!9351))))

(assert (=> b!6961405 (=> res!2840484 e!4185524)))

(declare-fun b!6961406 () Bool)

(assert (=> b!6961406 (= e!4185524 (matchRSpec!4107 (regTwo!34685 r!13765) s!9351))))

(declare-fun b!6961407 () Bool)

(declare-fun c!1290803 () Bool)

(assert (=> b!6961407 (= c!1290803 (is-ElementMatch!17086 r!13765))))

(assert (=> b!6961407 (= e!4185521 e!4185526)))

(declare-fun bm!632065 () Bool)

(declare-fun call!632070 () Bool)

(assert (=> bm!632065 (= call!632070 (isEmpty!38957 s!9351))))

(declare-fun d!2170053 () Bool)

(declare-fun c!1290804 () Bool)

(assert (=> d!2170053 (= c!1290804 (is-EmptyExpr!17086 r!13765))))

(assert (=> d!2170053 (= (matchRSpec!4107 r!13765 s!9351) e!4185525)))

(declare-fun call!632071 () Bool)

(declare-fun bm!632066 () Bool)

(declare-fun Exists!4071 (Int) Bool)

(assert (=> bm!632066 (= call!632071 (Exists!4071 (ite c!1290806 lambda!397184 lambda!397185)))))

(assert (=> b!6961408 (= e!4185527 call!632071)))

(declare-fun b!6961409 () Bool)

(assert (=> b!6961409 (= e!4185525 call!632070)))

(declare-fun e!4185522 () Bool)

(assert (=> b!6961410 (= e!4185522 call!632071)))

(declare-fun b!6961411 () Bool)

(declare-fun res!2840485 () Bool)

(assert (=> b!6961411 (=> res!2840485 e!4185522)))

(assert (=> b!6961411 (= res!2840485 call!632070)))

(assert (=> b!6961411 (= e!4185527 e!4185522)))

(assert (= (and d!2170053 c!1290804) b!6961409))

(assert (= (and d!2170053 (not c!1290804)) b!6961402))

(assert (= (and b!6961402 res!2840486) b!6961407))

(assert (= (and b!6961407 c!1290803) b!6961404))

(assert (= (and b!6961407 (not c!1290803)) b!6961401))

(assert (= (and b!6961401 c!1290805) b!6961405))

(assert (= (and b!6961401 (not c!1290805)) b!6961403))

(assert (= (and b!6961405 (not res!2840484)) b!6961406))

(assert (= (and b!6961403 c!1290806) b!6961411))

(assert (= (and b!6961403 (not c!1290806)) b!6961408))

(assert (= (and b!6961411 (not res!2840485)) b!6961410))

(assert (= (or b!6961410 b!6961408) bm!632066))

(assert (= (or b!6961409 b!6961411) bm!632065))

(declare-fun m!7656256 () Bool)

(assert (=> b!6961405 m!7656256))

(declare-fun m!7656258 () Bool)

(assert (=> b!6961406 m!7656258))

(assert (=> bm!632065 m!7656238))

(declare-fun m!7656260 () Bool)

(assert (=> bm!632066 m!7656260))

(assert (=> b!6961230 d!2170053))

(declare-fun d!2170059 () Bool)

(assert (=> d!2170059 (= (matchR!9192 r!13765 s!9351) (matchRSpec!4107 r!13765 s!9351))))

(declare-fun lt!2478940 () Unit!160832)

(declare-fun choose!51882 (Regex!17086 List!66858) Unit!160832)

(assert (=> d!2170059 (= lt!2478940 (choose!51882 r!13765 s!9351))))

(assert (=> d!2170059 (validRegex!8782 r!13765)))

(assert (=> d!2170059 (= (mainMatchTheorem!4101 r!13765 s!9351) lt!2478940)))

(declare-fun bs!1858332 () Bool)

(assert (= bs!1858332 d!2170059))

(assert (=> bs!1858332 m!7656184))

(assert (=> bs!1858332 m!7656186))

(declare-fun m!7656262 () Bool)

(assert (=> bs!1858332 m!7656262))

(assert (=> bs!1858332 m!7656240))

(assert (=> b!6961230 d!2170059))

(declare-fun d!2170061 () Bool)

(declare-fun res!2840491 () Bool)

(declare-fun e!4185532 () Bool)

(assert (=> d!2170061 (=> res!2840491 e!4185532)))

(assert (=> d!2170061 (= res!2840491 (is-Nil!66733 l!9142))))

(assert (=> d!2170061 (= (forall!15957 l!9142 lambda!397173) e!4185532)))

(declare-fun b!6961420 () Bool)

(declare-fun e!4185533 () Bool)

(assert (=> b!6961420 (= e!4185532 e!4185533)))

(declare-fun res!2840492 () Bool)

(assert (=> b!6961420 (=> (not res!2840492) (not e!4185533))))

(declare-fun dynLambda!26612 (Int Regex!17086) Bool)

(assert (=> b!6961420 (= res!2840492 (dynLambda!26612 lambda!397173 (h!73181 l!9142)))))

(declare-fun b!6961421 () Bool)

(assert (=> b!6961421 (= e!4185533 (forall!15957 (t!380600 l!9142) lambda!397173))))

(assert (= (and d!2170061 (not res!2840491)) b!6961420))

(assert (= (and b!6961420 res!2840492) b!6961421))

(declare-fun b_lambda!260561 () Bool)

(assert (=> (not b_lambda!260561) (not b!6961420)))

(declare-fun m!7656264 () Bool)

(assert (=> b!6961420 m!7656264))

(declare-fun m!7656266 () Bool)

(assert (=> b!6961421 m!7656266))

(assert (=> start!667908 d!2170061))

(declare-fun bs!1858333 () Bool)

(declare-fun d!2170063 () Bool)

(assert (= bs!1858333 (and d!2170063 start!667908)))

(declare-fun lambda!397188 () Int)

(assert (=> bs!1858333 (= lambda!397188 lambda!397173)))

(declare-fun b!6961470 () Bool)

(declare-fun e!4185560 () Regex!17086)

(declare-fun e!4185565 () Regex!17086)

(assert (=> b!6961470 (= e!4185560 e!4185565)))

(declare-fun c!1290822 () Bool)

(assert (=> b!6961470 (= c!1290822 (is-Cons!66733 l!9142))))

(declare-fun b!6961471 () Bool)

(declare-fun e!4185564 () Bool)

(assert (=> b!6961471 (= e!4185564 (isEmpty!38955 (t!380600 l!9142)))))

(declare-fun b!6961472 () Bool)

(declare-fun e!4185563 () Bool)

(declare-fun lt!2478945 () Regex!17086)

(declare-fun isEmptyLang!2040 (Regex!17086) Bool)

(assert (=> b!6961472 (= e!4185563 (isEmptyLang!2040 lt!2478945))))

(declare-fun b!6961473 () Bool)

(declare-fun e!4185561 () Bool)

(declare-fun isUnion!1468 (Regex!17086) Bool)

(assert (=> b!6961473 (= e!4185561 (isUnion!1468 lt!2478945))))

(declare-fun b!6961474 () Bool)

(declare-fun head!13978 (List!66857) Regex!17086)

(assert (=> b!6961474 (= e!4185561 (= lt!2478945 (head!13978 l!9142)))))

(declare-fun b!6961475 () Bool)

(assert (=> b!6961475 (= e!4185560 (h!73181 l!9142))))

(declare-fun b!6961476 () Bool)

(declare-fun e!4185562 () Bool)

(assert (=> b!6961476 (= e!4185562 e!4185563)))

(declare-fun c!1290824 () Bool)

(assert (=> b!6961476 (= c!1290824 (isEmpty!38955 l!9142))))

(declare-fun b!6961477 () Bool)

(assert (=> b!6961477 (= e!4185565 EmptyLang!17086)))

(assert (=> d!2170063 e!4185562))

(declare-fun res!2840514 () Bool)

(assert (=> d!2170063 (=> (not res!2840514) (not e!4185562))))

(assert (=> d!2170063 (= res!2840514 (validRegex!8782 lt!2478945))))

(assert (=> d!2170063 (= lt!2478945 e!4185560)))

(declare-fun c!1290823 () Bool)

(assert (=> d!2170063 (= c!1290823 e!4185564)))

(declare-fun res!2840513 () Bool)

(assert (=> d!2170063 (=> (not res!2840513) (not e!4185564))))

(assert (=> d!2170063 (= res!2840513 (is-Cons!66733 l!9142))))

(assert (=> d!2170063 (forall!15957 l!9142 lambda!397188)))

(assert (=> d!2170063 (= (generalisedUnion!2561 l!9142) lt!2478945)))

(declare-fun b!6961478 () Bool)

(assert (=> b!6961478 (= e!4185563 e!4185561)))

(declare-fun c!1290821 () Bool)

(assert (=> b!6961478 (= c!1290821 (isEmpty!38955 (tail!13036 l!9142)))))

(declare-fun b!6961479 () Bool)

(assert (=> b!6961479 (= e!4185565 (Union!17086 (h!73181 l!9142) (generalisedUnion!2561 (t!380600 l!9142))))))

(assert (= (and d!2170063 res!2840513) b!6961471))

(assert (= (and d!2170063 c!1290823) b!6961475))

(assert (= (and d!2170063 (not c!1290823)) b!6961470))

(assert (= (and b!6961470 c!1290822) b!6961479))

(assert (= (and b!6961470 (not c!1290822)) b!6961477))

(assert (= (and d!2170063 res!2840514) b!6961476))

(assert (= (and b!6961476 c!1290824) b!6961472))

(assert (= (and b!6961476 (not c!1290824)) b!6961478))

(assert (= (and b!6961478 c!1290821) b!6961474))

(assert (= (and b!6961478 (not c!1290821)) b!6961473))

(declare-fun m!7656268 () Bool)

(assert (=> b!6961479 m!7656268))

(declare-fun m!7656270 () Bool)

(assert (=> b!6961473 m!7656270))

(declare-fun m!7656272 () Bool)

(assert (=> b!6961472 m!7656272))

(declare-fun m!7656274 () Bool)

(assert (=> b!6961471 m!7656274))

(assert (=> b!6961476 m!7656198))

(assert (=> b!6961478 m!7656192))

(assert (=> b!6961478 m!7656192))

(assert (=> b!6961478 m!7656194))

(declare-fun m!7656276 () Bool)

(assert (=> b!6961474 m!7656276))

(declare-fun m!7656278 () Bool)

(assert (=> d!2170063 m!7656278))

(declare-fun m!7656280 () Bool)

(assert (=> d!2170063 m!7656280))

(assert (=> b!6961227 d!2170063))

(declare-fun b!6961492 () Bool)

(declare-fun e!4185568 () Bool)

(declare-fun tp!1919334 () Bool)

(assert (=> b!6961492 (= e!4185568 tp!1919334)))

(declare-fun b!6961493 () Bool)

(declare-fun tp!1919338 () Bool)

(declare-fun tp!1919337 () Bool)

(assert (=> b!6961493 (= e!4185568 (and tp!1919338 tp!1919337))))

(declare-fun b!6961491 () Bool)

(declare-fun tp!1919336 () Bool)

(declare-fun tp!1919335 () Bool)

(assert (=> b!6961491 (= e!4185568 (and tp!1919336 tp!1919335))))

(assert (=> b!6961228 (= tp!1919292 e!4185568)))

(declare-fun b!6961490 () Bool)

(assert (=> b!6961490 (= e!4185568 tp_is_empty!43397)))

(assert (= (and b!6961228 (is-ElementMatch!17086 (regOne!34684 r!13765))) b!6961490))

(assert (= (and b!6961228 (is-Concat!25931 (regOne!34684 r!13765))) b!6961491))

(assert (= (and b!6961228 (is-Star!17086 (regOne!34684 r!13765))) b!6961492))

(assert (= (and b!6961228 (is-Union!17086 (regOne!34684 r!13765))) b!6961493))

(declare-fun b!6961496 () Bool)

(declare-fun e!4185569 () Bool)

(declare-fun tp!1919339 () Bool)

(assert (=> b!6961496 (= e!4185569 tp!1919339)))

(declare-fun b!6961497 () Bool)

(declare-fun tp!1919343 () Bool)

(declare-fun tp!1919342 () Bool)

(assert (=> b!6961497 (= e!4185569 (and tp!1919343 tp!1919342))))

(declare-fun b!6961495 () Bool)

(declare-fun tp!1919341 () Bool)

(declare-fun tp!1919340 () Bool)

(assert (=> b!6961495 (= e!4185569 (and tp!1919341 tp!1919340))))

(assert (=> b!6961228 (= tp!1919298 e!4185569)))

(declare-fun b!6961494 () Bool)

(assert (=> b!6961494 (= e!4185569 tp_is_empty!43397)))

(assert (= (and b!6961228 (is-ElementMatch!17086 (regTwo!34684 r!13765))) b!6961494))

(assert (= (and b!6961228 (is-Concat!25931 (regTwo!34684 r!13765))) b!6961495))

(assert (= (and b!6961228 (is-Star!17086 (regTwo!34684 r!13765))) b!6961496))

(assert (= (and b!6961228 (is-Union!17086 (regTwo!34684 r!13765))) b!6961497))

(declare-fun b!6961500 () Bool)

(declare-fun e!4185570 () Bool)

(declare-fun tp!1919344 () Bool)

(assert (=> b!6961500 (= e!4185570 tp!1919344)))

(declare-fun b!6961501 () Bool)

(declare-fun tp!1919348 () Bool)

(declare-fun tp!1919347 () Bool)

(assert (=> b!6961501 (= e!4185570 (and tp!1919348 tp!1919347))))

(declare-fun b!6961499 () Bool)

(declare-fun tp!1919346 () Bool)

(declare-fun tp!1919345 () Bool)

(assert (=> b!6961499 (= e!4185570 (and tp!1919346 tp!1919345))))

(assert (=> b!6961235 (= tp!1919297 e!4185570)))

(declare-fun b!6961498 () Bool)

(assert (=> b!6961498 (= e!4185570 tp_is_empty!43397)))

(assert (= (and b!6961235 (is-ElementMatch!17086 (regOne!34685 r!13765))) b!6961498))

(assert (= (and b!6961235 (is-Concat!25931 (regOne!34685 r!13765))) b!6961499))

(assert (= (and b!6961235 (is-Star!17086 (regOne!34685 r!13765))) b!6961500))

(assert (= (and b!6961235 (is-Union!17086 (regOne!34685 r!13765))) b!6961501))

(declare-fun b!6961504 () Bool)

(declare-fun e!4185571 () Bool)

(declare-fun tp!1919349 () Bool)

(assert (=> b!6961504 (= e!4185571 tp!1919349)))

(declare-fun b!6961505 () Bool)

(declare-fun tp!1919353 () Bool)

(declare-fun tp!1919352 () Bool)

(assert (=> b!6961505 (= e!4185571 (and tp!1919353 tp!1919352))))

(declare-fun b!6961503 () Bool)

(declare-fun tp!1919351 () Bool)

(declare-fun tp!1919350 () Bool)

(assert (=> b!6961503 (= e!4185571 (and tp!1919351 tp!1919350))))

(assert (=> b!6961235 (= tp!1919299 e!4185571)))

(declare-fun b!6961502 () Bool)

(assert (=> b!6961502 (= e!4185571 tp_is_empty!43397)))

(assert (= (and b!6961235 (is-ElementMatch!17086 (regTwo!34685 r!13765))) b!6961502))

(assert (= (and b!6961235 (is-Concat!25931 (regTwo!34685 r!13765))) b!6961503))

(assert (= (and b!6961235 (is-Star!17086 (regTwo!34685 r!13765))) b!6961504))

(assert (= (and b!6961235 (is-Union!17086 (regTwo!34685 r!13765))) b!6961505))

(declare-fun b!6961508 () Bool)

(declare-fun e!4185572 () Bool)

(declare-fun tp!1919354 () Bool)

(assert (=> b!6961508 (= e!4185572 tp!1919354)))

(declare-fun b!6961509 () Bool)

(declare-fun tp!1919358 () Bool)

(declare-fun tp!1919357 () Bool)

(assert (=> b!6961509 (= e!4185572 (and tp!1919358 tp!1919357))))

(declare-fun b!6961507 () Bool)

(declare-fun tp!1919356 () Bool)

(declare-fun tp!1919355 () Bool)

(assert (=> b!6961507 (= e!4185572 (and tp!1919356 tp!1919355))))

(assert (=> b!6961236 (= tp!1919296 e!4185572)))

(declare-fun b!6961506 () Bool)

(assert (=> b!6961506 (= e!4185572 tp_is_empty!43397)))

(assert (= (and b!6961236 (is-ElementMatch!17086 (reg!17415 r!13765))) b!6961506))

(assert (= (and b!6961236 (is-Concat!25931 (reg!17415 r!13765))) b!6961507))

(assert (= (and b!6961236 (is-Star!17086 (reg!17415 r!13765))) b!6961508))

(assert (= (and b!6961236 (is-Union!17086 (reg!17415 r!13765))) b!6961509))

(declare-fun b!6961512 () Bool)

(declare-fun e!4185573 () Bool)

(declare-fun tp!1919359 () Bool)

(assert (=> b!6961512 (= e!4185573 tp!1919359)))

(declare-fun b!6961513 () Bool)

(declare-fun tp!1919363 () Bool)

(declare-fun tp!1919362 () Bool)

(assert (=> b!6961513 (= e!4185573 (and tp!1919363 tp!1919362))))

(declare-fun b!6961511 () Bool)

(declare-fun tp!1919361 () Bool)

(declare-fun tp!1919360 () Bool)

(assert (=> b!6961511 (= e!4185573 (and tp!1919361 tp!1919360))))

(assert (=> b!6961231 (= tp!1919295 e!4185573)))

(declare-fun b!6961510 () Bool)

(assert (=> b!6961510 (= e!4185573 tp_is_empty!43397)))

(assert (= (and b!6961231 (is-ElementMatch!17086 (h!73181 l!9142))) b!6961510))

(assert (= (and b!6961231 (is-Concat!25931 (h!73181 l!9142))) b!6961511))

(assert (= (and b!6961231 (is-Star!17086 (h!73181 l!9142))) b!6961512))

(assert (= (and b!6961231 (is-Union!17086 (h!73181 l!9142))) b!6961513))

(declare-fun b!6961518 () Bool)

(declare-fun e!4185576 () Bool)

(declare-fun tp!1919368 () Bool)

(declare-fun tp!1919369 () Bool)

(assert (=> b!6961518 (= e!4185576 (and tp!1919368 tp!1919369))))

(assert (=> b!6961231 (= tp!1919294 e!4185576)))

(assert (= (and b!6961231 (is-Cons!66733 (t!380600 l!9142))) b!6961518))

(declare-fun b!6961523 () Bool)

(declare-fun e!4185579 () Bool)

(declare-fun tp!1919372 () Bool)

(assert (=> b!6961523 (= e!4185579 (and tp_is_empty!43397 tp!1919372))))

(assert (=> b!6961226 (= tp!1919293 e!4185579)))

(assert (= (and b!6961226 (is-Cons!66734 (t!380601 s!9351))) b!6961523))

(declare-fun b_lambda!260563 () Bool)

(assert (= b_lambda!260561 (or start!667908 b_lambda!260563)))

(declare-fun bs!1858334 () Bool)

(declare-fun d!2170065 () Bool)

(assert (= bs!1858334 (and d!2170065 start!667908)))

(assert (=> bs!1858334 (= (dynLambda!26612 lambda!397173 (h!73181 l!9142)) (validRegex!8782 (h!73181 l!9142)))))

(declare-fun m!7656282 () Bool)

(assert (=> bs!1858334 m!7656282))

(assert (=> b!6961420 d!2170065))

(push 1)

(assert (not b!6961421))

(assert (not b!6961341))

(assert (not b!6961503))

(assert (not b!6961497))

(assert (not b!6961500))

(assert (not b!6961474))

(assert (not b!6961491))

(assert (not b!6961509))

(assert (not d!2170051))

(assert (not b!6961472))

(assert (not b!6961333))

(assert (not b!6961478))

(assert (not b!6961511))

(assert (not b!6961523))

(assert (not b!6961499))

(assert (not bm!632056))

(assert (not bm!632066))

(assert (not b!6961332))

(assert (not b!6961512))

(assert (not b_lambda!260563))

(assert (not b!6961406))

(assert (not b!6961340))

(assert (not b!6961518))

(assert (not d!2170059))

(assert (not b!6961493))

(assert (not b!6961476))

(assert (not b!6961335))

(assert (not b!6961495))

(assert (not bm!632060))

(assert (not b!6961507))

(assert (not b!6961337))

(assert (not b!6961479))

(assert (not b!6961496))

(assert (not bm!632055))

(assert (not b!6961473))

(assert (not b!6961501))

(assert (not b!6961505))

(assert (not b!6961504))

(assert (not b!6961296))

(assert (not b!6961405))

(assert (not d!2170063))

(assert (not b!6961471))

(assert (not bs!1858334))

(assert (not b!6961508))

(assert (not bm!632065))

(assert (not b!6961513))

(assert (not b!6961492))

(assert tp_is_empty!43397)

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

