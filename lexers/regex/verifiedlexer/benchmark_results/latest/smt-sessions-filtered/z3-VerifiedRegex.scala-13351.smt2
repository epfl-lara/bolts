; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!724182 () Bool)

(assert start!724182)

(declare-fun b!7468410 () Bool)

(assert (=> b!7468410 true))

(assert (=> b!7468410 true))

(assert (=> b!7468410 true))

(declare-fun lambda!462367 () Int)

(declare-fun lambda!462366 () Int)

(assert (=> b!7468410 (not (= lambda!462367 lambda!462366))))

(assert (=> b!7468410 true))

(assert (=> b!7468410 true))

(assert (=> b!7468410 true))

(declare-fun bs!1930725 () Bool)

(declare-fun b!7468415 () Bool)

(assert (= bs!1930725 (and b!7468415 b!7468410)))

(declare-datatypes ((C!39404 0))(
  ( (C!39405 (val!30100 Int)) )
))
(declare-datatypes ((Regex!19565 0))(
  ( (ElementMatch!19565 (c!1380170 C!39404)) (Concat!28410 (regOne!39642 Regex!19565) (regTwo!39642 Regex!19565)) (EmptyExpr!19565) (Star!19565 (reg!19894 Regex!19565)) (EmptyLang!19565) (Union!19565 (regOne!39643 Regex!19565) (regTwo!39643 Regex!19565)) )
))
(declare-fun r1!5845 () Regex!19565)

(declare-fun lambda!462368 () Int)

(declare-fun lt!2624789 () Regex!19565)

(assert (=> bs!1930725 (= (= r1!5845 lt!2624789) (= lambda!462368 lambda!462366))))

(assert (=> bs!1930725 (not (= lambda!462368 lambda!462367))))

(assert (=> b!7468415 true))

(assert (=> b!7468415 true))

(assert (=> b!7468415 true))

(declare-fun lambda!462369 () Int)

(assert (=> bs!1930725 (not (= lambda!462369 lambda!462366))))

(assert (=> bs!1930725 (= (= r1!5845 lt!2624789) (= lambda!462369 lambda!462367))))

(assert (=> b!7468415 (not (= lambda!462369 lambda!462368))))

(assert (=> b!7468415 true))

(assert (=> b!7468415 true))

(assert (=> b!7468415 true))

(declare-fun b!7468395 () Bool)

(declare-fun e!4456165 () Bool)

(declare-fun tp!2165250 () Bool)

(declare-fun tp!2165257 () Bool)

(assert (=> b!7468395 (= e!4456165 (and tp!2165250 tp!2165257))))

(declare-fun b!7468396 () Bool)

(declare-fun tp!2165254 () Bool)

(assert (=> b!7468396 (= e!4456165 tp!2165254)))

(declare-fun b!7468397 () Bool)

(declare-fun e!4456169 () Bool)

(declare-fun e!4456167 () Bool)

(assert (=> b!7468397 (= e!4456169 e!4456167)))

(declare-fun res!2995966 () Bool)

(assert (=> b!7468397 (=> res!2995966 e!4456167)))

(declare-fun lt!2624782 () Bool)

(declare-fun lt!2624786 () Bool)

(assert (=> b!7468397 (= res!2995966 (or (and (not lt!2624782) (not lt!2624786)) (not lt!2624782)))))

(declare-fun lt!2624791 () Regex!19565)

(declare-datatypes ((List!72281 0))(
  ( (Nil!72157) (Cons!72157 (h!78605 C!39404) (t!386850 List!72281)) )
))
(declare-fun s!13591 () List!72281)

(declare-fun matchRSpec!4244 (Regex!19565 List!72281) Bool)

(assert (=> b!7468397 (= lt!2624786 (matchRSpec!4244 lt!2624791 s!13591))))

(declare-fun matchR!9329 (Regex!19565 List!72281) Bool)

(assert (=> b!7468397 (= lt!2624786 (matchR!9329 lt!2624791 s!13591))))

(declare-datatypes ((Unit!165965 0))(
  ( (Unit!165966) )
))
(declare-fun lt!2624778 () Unit!165965)

(declare-fun mainMatchTheorem!4238 (Regex!19565 List!72281) Unit!165965)

(assert (=> b!7468397 (= lt!2624778 (mainMatchTheorem!4238 lt!2624791 s!13591))))

(declare-fun lt!2624776 () Regex!19565)

(assert (=> b!7468397 (= lt!2624782 (matchRSpec!4244 lt!2624776 s!13591))))

(assert (=> b!7468397 (= lt!2624782 (matchR!9329 lt!2624776 s!13591))))

(declare-fun lt!2624775 () Unit!165965)

(assert (=> b!7468397 (= lt!2624775 (mainMatchTheorem!4238 lt!2624776 s!13591))))

(declare-fun b!7468398 () Bool)

(declare-fun tp_is_empty!49419 () Bool)

(assert (=> b!7468398 (= e!4456165 tp_is_empty!49419)))

(declare-fun b!7468399 () Bool)

(declare-fun res!2995964 () Bool)

(declare-fun e!4456166 () Bool)

(assert (=> b!7468399 (=> (not res!2995964) (not e!4456166))))

(declare-fun rTail!78 () Regex!19565)

(declare-fun validRegex!10079 (Regex!19565) Bool)

(assert (=> b!7468399 (= res!2995964 (validRegex!10079 rTail!78))))

(declare-fun res!2995963 () Bool)

(assert (=> start!724182 (=> (not res!2995963) (not e!4456166))))

(assert (=> start!724182 (= res!2995963 (validRegex!10079 r1!5845))))

(assert (=> start!724182 e!4456166))

(assert (=> start!724182 e!4456165))

(declare-fun e!4456170 () Bool)

(assert (=> start!724182 e!4456170))

(declare-fun e!4456164 () Bool)

(assert (=> start!724182 e!4456164))

(declare-fun e!4456168 () Bool)

(assert (=> start!724182 e!4456168))

(declare-fun b!7468400 () Bool)

(declare-fun tp!2165245 () Bool)

(assert (=> b!7468400 (= e!4456164 tp!2165245)))

(declare-fun b!7468401 () Bool)

(declare-fun tp!2165252 () Bool)

(declare-fun tp!2165247 () Bool)

(assert (=> b!7468401 (= e!4456164 (and tp!2165252 tp!2165247))))

(declare-fun b!7468402 () Bool)

(declare-fun e!4456171 () Bool)

(assert (=> b!7468402 (= e!4456166 (not e!4456171))))

(declare-fun res!2995962 () Bool)

(assert (=> b!7468402 (=> res!2995962 e!4456171)))

(declare-fun lt!2624777 () Bool)

(assert (=> b!7468402 (= res!2995962 lt!2624777)))

(declare-fun lt!2624792 () Bool)

(declare-fun lt!2624793 () Regex!19565)

(assert (=> b!7468402 (= lt!2624792 (matchRSpec!4244 lt!2624793 s!13591))))

(assert (=> b!7468402 (= lt!2624792 (matchR!9329 lt!2624793 s!13591))))

(declare-fun lt!2624783 () Unit!165965)

(assert (=> b!7468402 (= lt!2624783 (mainMatchTheorem!4238 lt!2624793 s!13591))))

(declare-fun lt!2624795 () Regex!19565)

(assert (=> b!7468402 (= lt!2624777 (matchRSpec!4244 lt!2624795 s!13591))))

(assert (=> b!7468402 (= lt!2624777 (matchR!9329 lt!2624795 s!13591))))

(declare-fun lt!2624785 () Unit!165965)

(assert (=> b!7468402 (= lt!2624785 (mainMatchTheorem!4238 lt!2624795 s!13591))))

(assert (=> b!7468402 (= lt!2624793 (Union!19565 lt!2624776 lt!2624791))))

(declare-fun r2!5783 () Regex!19565)

(assert (=> b!7468402 (= lt!2624791 (Concat!28410 r2!5783 rTail!78))))

(assert (=> b!7468402 (= lt!2624776 (Concat!28410 r1!5845 rTail!78))))

(assert (=> b!7468402 (= lt!2624795 (Concat!28410 lt!2624789 rTail!78))))

(assert (=> b!7468402 (= lt!2624789 (Union!19565 r1!5845 r2!5783))))

(declare-fun b!7468403 () Bool)

(assert (=> b!7468403 (= e!4456170 tp_is_empty!49419)))

(declare-fun b!7468404 () Bool)

(declare-fun e!4456172 () Bool)

(assert (=> b!7468404 (= e!4456172 true)))

(declare-datatypes ((tuple2!68580 0))(
  ( (tuple2!68581 (_1!37593 List!72281) (_2!37593 List!72281)) )
))
(declare-fun lt!2624784 () tuple2!68580)

(assert (=> b!7468404 (= (matchR!9329 r2!5783 (_1!37593 lt!2624784)) (matchRSpec!4244 r2!5783 (_1!37593 lt!2624784)))))

(declare-fun lt!2624774 () Unit!165965)

(assert (=> b!7468404 (= lt!2624774 (mainMatchTheorem!4238 r2!5783 (_1!37593 lt!2624784)))))

(assert (=> b!7468404 (matchRSpec!4244 r1!5845 (_1!37593 lt!2624784))))

(declare-fun lt!2624773 () Unit!165965)

(assert (=> b!7468404 (= lt!2624773 (mainMatchTheorem!4238 r1!5845 (_1!37593 lt!2624784)))))

(assert (=> b!7468404 (= (matchR!9329 lt!2624789 (_1!37593 lt!2624784)) (matchRSpec!4244 lt!2624789 (_1!37593 lt!2624784)))))

(declare-fun lt!2624787 () Unit!165965)

(assert (=> b!7468404 (= lt!2624787 (mainMatchTheorem!4238 lt!2624789 (_1!37593 lt!2624784)))))

(declare-fun b!7468405 () Bool)

(declare-fun tp!2165251 () Bool)

(declare-fun tp!2165246 () Bool)

(assert (=> b!7468405 (= e!4456170 (and tp!2165251 tp!2165246))))

(declare-fun b!7468406 () Bool)

(assert (=> b!7468406 (= e!4456164 tp_is_empty!49419)))

(declare-fun b!7468407 () Bool)

(declare-fun tp!2165249 () Bool)

(declare-fun tp!2165258 () Bool)

(assert (=> b!7468407 (= e!4456164 (and tp!2165249 tp!2165258))))

(declare-fun b!7468408 () Bool)

(declare-fun res!2995968 () Bool)

(assert (=> b!7468408 (=> res!2995968 e!4456172)))

(assert (=> b!7468408 (= res!2995968 (not (matchR!9329 rTail!78 (_2!37593 lt!2624784))))))

(declare-fun b!7468409 () Bool)

(declare-fun tp!2165253 () Bool)

(assert (=> b!7468409 (= e!4456170 tp!2165253)))

(assert (=> b!7468410 (= e!4456171 e!4456169)))

(declare-fun res!2995967 () Bool)

(assert (=> b!7468410 (=> res!2995967 e!4456169)))

(declare-fun lt!2624780 () Bool)

(assert (=> b!7468410 (= res!2995967 (or lt!2624780 (not lt!2624792)))))

(declare-fun Exists!4184 (Int) Bool)

(assert (=> b!7468410 (= (Exists!4184 lambda!462366) (Exists!4184 lambda!462367))))

(declare-fun lt!2624779 () Unit!165965)

(declare-fun lemmaExistCutMatchRandMatchRSpecEquivalent!2518 (Regex!19565 Regex!19565 List!72281) Unit!165965)

(assert (=> b!7468410 (= lt!2624779 (lemmaExistCutMatchRandMatchRSpecEquivalent!2518 lt!2624789 rTail!78 s!13591))))

(assert (=> b!7468410 (= lt!2624780 (Exists!4184 lambda!462366))))

(declare-datatypes ((Option!17122 0))(
  ( (None!17121) (Some!17121 (v!54250 tuple2!68580)) )
))
(declare-fun isDefined!13811 (Option!17122) Bool)

(declare-fun findConcatSeparation!3244 (Regex!19565 Regex!19565 List!72281 List!72281 List!72281) Option!17122)

(assert (=> b!7468410 (= lt!2624780 (isDefined!13811 (findConcatSeparation!3244 lt!2624789 rTail!78 Nil!72157 s!13591 s!13591)))))

(declare-fun lt!2624794 () Unit!165965)

(declare-fun lemmaFindConcatSeparationEquivalentToExists!3002 (Regex!19565 Regex!19565 List!72281) Unit!165965)

(assert (=> b!7468410 (= lt!2624794 (lemmaFindConcatSeparationEquivalentToExists!3002 lt!2624789 rTail!78 s!13591))))

(declare-fun b!7468411 () Bool)

(declare-fun tp!2165244 () Bool)

(assert (=> b!7468411 (= e!4456168 (and tp_is_empty!49419 tp!2165244))))

(declare-fun b!7468412 () Bool)

(declare-fun res!2995965 () Bool)

(assert (=> b!7468412 (=> (not res!2995965) (not e!4456166))))

(assert (=> b!7468412 (= res!2995965 (validRegex!10079 r2!5783))))

(declare-fun b!7468413 () Bool)

(declare-fun tp!2165248 () Bool)

(declare-fun tp!2165259 () Bool)

(assert (=> b!7468413 (= e!4456170 (and tp!2165248 tp!2165259))))

(declare-fun b!7468414 () Bool)

(declare-fun tp!2165255 () Bool)

(declare-fun tp!2165256 () Bool)

(assert (=> b!7468414 (= e!4456165 (and tp!2165255 tp!2165256))))

(assert (=> b!7468415 (= e!4456167 e!4456172)))

(declare-fun res!2995961 () Bool)

(assert (=> b!7468415 (=> res!2995961 e!4456172)))

(assert (=> b!7468415 (= res!2995961 (not (matchR!9329 r1!5845 (_1!37593 lt!2624784))))))

(declare-fun lt!2624781 () Option!17122)

(declare-fun get!25215 (Option!17122) tuple2!68580)

(assert (=> b!7468415 (= lt!2624784 (get!25215 lt!2624781))))

(assert (=> b!7468415 (= (Exists!4184 lambda!462368) (Exists!4184 lambda!462369))))

(declare-fun lt!2624790 () Unit!165965)

(assert (=> b!7468415 (= lt!2624790 (lemmaExistCutMatchRandMatchRSpecEquivalent!2518 r1!5845 rTail!78 s!13591))))

(assert (=> b!7468415 (= (isDefined!13811 lt!2624781) (Exists!4184 lambda!462368))))

(assert (=> b!7468415 (= lt!2624781 (findConcatSeparation!3244 r1!5845 rTail!78 Nil!72157 s!13591 s!13591))))

(declare-fun lt!2624788 () Unit!165965)

(assert (=> b!7468415 (= lt!2624788 (lemmaFindConcatSeparationEquivalentToExists!3002 r1!5845 rTail!78 s!13591))))

(assert (= (and start!724182 res!2995963) b!7468412))

(assert (= (and b!7468412 res!2995965) b!7468399))

(assert (= (and b!7468399 res!2995964) b!7468402))

(assert (= (and b!7468402 (not res!2995962)) b!7468410))

(assert (= (and b!7468410 (not res!2995967)) b!7468397))

(assert (= (and b!7468397 (not res!2995966)) b!7468415))

(assert (= (and b!7468415 (not res!2995961)) b!7468408))

(assert (= (and b!7468408 (not res!2995968)) b!7468404))

(get-info :version)

(assert (= (and start!724182 ((_ is ElementMatch!19565) r1!5845)) b!7468398))

(assert (= (and start!724182 ((_ is Concat!28410) r1!5845)) b!7468414))

(assert (= (and start!724182 ((_ is Star!19565) r1!5845)) b!7468396))

(assert (= (and start!724182 ((_ is Union!19565) r1!5845)) b!7468395))

(assert (= (and start!724182 ((_ is ElementMatch!19565) r2!5783)) b!7468403))

(assert (= (and start!724182 ((_ is Concat!28410) r2!5783)) b!7468413))

(assert (= (and start!724182 ((_ is Star!19565) r2!5783)) b!7468409))

(assert (= (and start!724182 ((_ is Union!19565) r2!5783)) b!7468405))

(assert (= (and start!724182 ((_ is ElementMatch!19565) rTail!78)) b!7468406))

(assert (= (and start!724182 ((_ is Concat!28410) rTail!78)) b!7468401))

(assert (= (and start!724182 ((_ is Star!19565) rTail!78)) b!7468400))

(assert (= (and start!724182 ((_ is Union!19565) rTail!78)) b!7468407))

(assert (= (and start!724182 ((_ is Cons!72157) s!13591)) b!7468411))

(declare-fun m!8066344 () Bool)

(assert (=> b!7468399 m!8066344))

(declare-fun m!8066346 () Bool)

(assert (=> b!7468408 m!8066346))

(declare-fun m!8066348 () Bool)

(assert (=> b!7468404 m!8066348))

(declare-fun m!8066350 () Bool)

(assert (=> b!7468404 m!8066350))

(declare-fun m!8066352 () Bool)

(assert (=> b!7468404 m!8066352))

(declare-fun m!8066354 () Bool)

(assert (=> b!7468404 m!8066354))

(declare-fun m!8066356 () Bool)

(assert (=> b!7468404 m!8066356))

(declare-fun m!8066358 () Bool)

(assert (=> b!7468404 m!8066358))

(declare-fun m!8066360 () Bool)

(assert (=> b!7468404 m!8066360))

(declare-fun m!8066362 () Bool)

(assert (=> b!7468404 m!8066362))

(declare-fun m!8066364 () Bool)

(assert (=> start!724182 m!8066364))

(declare-fun m!8066366 () Bool)

(assert (=> b!7468415 m!8066366))

(declare-fun m!8066368 () Bool)

(assert (=> b!7468415 m!8066368))

(declare-fun m!8066370 () Bool)

(assert (=> b!7468415 m!8066370))

(declare-fun m!8066372 () Bool)

(assert (=> b!7468415 m!8066372))

(declare-fun m!8066374 () Bool)

(assert (=> b!7468415 m!8066374))

(declare-fun m!8066376 () Bool)

(assert (=> b!7468415 m!8066376))

(assert (=> b!7468415 m!8066372))

(declare-fun m!8066378 () Bool)

(assert (=> b!7468415 m!8066378))

(declare-fun m!8066380 () Bool)

(assert (=> b!7468415 m!8066380))

(declare-fun m!8066382 () Bool)

(assert (=> b!7468402 m!8066382))

(declare-fun m!8066384 () Bool)

(assert (=> b!7468402 m!8066384))

(declare-fun m!8066386 () Bool)

(assert (=> b!7468402 m!8066386))

(declare-fun m!8066388 () Bool)

(assert (=> b!7468402 m!8066388))

(declare-fun m!8066390 () Bool)

(assert (=> b!7468402 m!8066390))

(declare-fun m!8066392 () Bool)

(assert (=> b!7468402 m!8066392))

(declare-fun m!8066394 () Bool)

(assert (=> b!7468412 m!8066394))

(declare-fun m!8066396 () Bool)

(assert (=> b!7468410 m!8066396))

(declare-fun m!8066398 () Bool)

(assert (=> b!7468410 m!8066398))

(declare-fun m!8066400 () Bool)

(assert (=> b!7468410 m!8066400))

(declare-fun m!8066402 () Bool)

(assert (=> b!7468410 m!8066402))

(declare-fun m!8066404 () Bool)

(assert (=> b!7468410 m!8066404))

(assert (=> b!7468410 m!8066400))

(assert (=> b!7468410 m!8066404))

(declare-fun m!8066406 () Bool)

(assert (=> b!7468410 m!8066406))

(declare-fun m!8066408 () Bool)

(assert (=> b!7468397 m!8066408))

(declare-fun m!8066410 () Bool)

(assert (=> b!7468397 m!8066410))

(declare-fun m!8066412 () Bool)

(assert (=> b!7468397 m!8066412))

(declare-fun m!8066414 () Bool)

(assert (=> b!7468397 m!8066414))

(declare-fun m!8066416 () Bool)

(assert (=> b!7468397 m!8066416))

(declare-fun m!8066418 () Bool)

(assert (=> b!7468397 m!8066418))

(check-sat (not start!724182) (not b!7468411) (not b!7468404) (not b!7468412) (not b!7468397) (not b!7468401) (not b!7468395) (not b!7468407) (not b!7468399) (not b!7468415) (not b!7468413) (not b!7468405) (not b!7468414) (not b!7468396) (not b!7468410) (not b!7468402) (not b!7468400) (not b!7468408) (not b!7468409) tp_is_empty!49419)
(check-sat)
