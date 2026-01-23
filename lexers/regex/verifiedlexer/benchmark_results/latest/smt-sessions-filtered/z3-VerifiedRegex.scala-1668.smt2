; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!84298 () Bool)

(assert start!84298)

(declare-fun b!945054 () Bool)

(assert (=> b!945054 true))

(assert (=> b!945054 true))

(assert (=> b!945054 true))

(declare-fun lambda!32112 () Int)

(declare-fun lambda!32111 () Int)

(assert (=> b!945054 (not (= lambda!32112 lambda!32111))))

(assert (=> b!945054 true))

(assert (=> b!945054 true))

(assert (=> b!945054 true))

(declare-fun bs!239423 () Bool)

(declare-fun b!945056 () Bool)

(assert (= bs!239423 (and b!945056 b!945054)))

(declare-datatypes ((C!5760 0))(
  ( (C!5761 (val!3128 Int)) )
))
(declare-datatypes ((Regex!2595 0))(
  ( (ElementMatch!2595 (c!153836 C!5760)) (Concat!4428 (regOne!5702 Regex!2595) (regTwo!5702 Regex!2595)) (EmptyExpr!2595) (Star!2595 (reg!2924 Regex!2595)) (EmptyLang!2595) (Union!2595 (regOne!5703 Regex!2595) (regTwo!5703 Regex!2595)) )
))
(declare-fun lt!343209 () Regex!2595)

(declare-fun lt!343206 () Regex!2595)

(declare-fun r!15766 () Regex!2595)

(declare-fun lambda!32113 () Int)

(declare-fun lt!343203 () Regex!2595)

(assert (=> bs!239423 (= (and (= lt!343203 (reg!2924 r!15766)) (= lt!343206 lt!343209)) (= lambda!32113 lambda!32111))))

(assert (=> bs!239423 (not (= lambda!32113 lambda!32112))))

(assert (=> b!945056 true))

(assert (=> b!945056 true))

(assert (=> b!945056 true))

(declare-fun lambda!32114 () Int)

(assert (=> bs!239423 (not (= lambda!32114 lambda!32111))))

(assert (=> bs!239423 (= (and (= lt!343203 (reg!2924 r!15766)) (= lt!343206 lt!343209)) (= lambda!32114 lambda!32112))))

(assert (=> b!945056 (not (= lambda!32114 lambda!32113))))

(assert (=> b!945056 true))

(assert (=> b!945056 true))

(assert (=> b!945056 true))

(declare-fun b!945042 () Bool)

(declare-fun res!429413 () Bool)

(declare-fun e!612567 () Bool)

(assert (=> b!945042 (=> res!429413 e!612567)))

(declare-datatypes ((List!9825 0))(
  ( (Nil!9809) (Cons!9809 (h!15210 C!5760) (t!100871 List!9825)) )
))
(declare-datatypes ((tuple2!11088 0))(
  ( (tuple2!11089 (_1!6370 List!9825) (_2!6370 List!9825)) )
))
(declare-fun lt!343204 () tuple2!11088)

(declare-fun s!10566 () List!9825)

(declare-fun ++!2615 (List!9825 List!9825) List!9825)

(assert (=> b!945042 (= res!429413 (not (= (++!2615 (_1!6370 lt!343204) (_2!6370 lt!343204)) s!10566)))))

(declare-fun b!945043 () Bool)

(declare-fun e!612569 () Bool)

(declare-fun tp!291835 () Bool)

(assert (=> b!945043 (= e!612569 tp!291835)))

(declare-fun b!945044 () Bool)

(declare-fun tp!291833 () Bool)

(declare-fun tp!291831 () Bool)

(assert (=> b!945044 (= e!612569 (and tp!291833 tp!291831))))

(declare-fun b!945045 () Bool)

(declare-fun res!429404 () Bool)

(declare-fun e!612565 () Bool)

(assert (=> b!945045 (=> res!429404 e!612565)))

(declare-fun isEmpty!6068 (List!9825) Bool)

(assert (=> b!945045 (= res!429404 (not (isEmpty!6068 (_1!6370 lt!343204))))))

(declare-fun b!945046 () Bool)

(declare-fun res!429407 () Bool)

(declare-fun e!612561 () Bool)

(assert (=> b!945046 (=> res!429407 e!612561)))

(declare-fun lt!343195 () Bool)

(assert (=> b!945046 (= res!429407 (not lt!343195))))

(declare-fun b!945048 () Bool)

(declare-fun validRegex!1064 (Regex!2595) Bool)

(assert (=> b!945048 (= e!612565 (validRegex!1064 (reg!2924 r!15766)))))

(declare-fun b!945049 () Bool)

(declare-fun e!612566 () Bool)

(assert (=> b!945049 (= e!612566 e!612567)))

(declare-fun res!429409 () Bool)

(assert (=> b!945049 (=> res!429409 e!612567)))

(declare-fun lt!343197 () Int)

(declare-fun lt!343211 () Int)

(assert (=> b!945049 (= res!429409 (not (= lt!343197 lt!343211)))))

(declare-fun size!7893 (List!9825) Int)

(assert (=> b!945049 (= lt!343211 (size!7893 s!10566))))

(assert (=> b!945049 (= lt!343197 (size!7893 (_2!6370 lt!343204)))))

(declare-fun matchR!1133 (Regex!2595 List!9825) Bool)

(assert (=> b!945049 (matchR!1133 (reg!2924 r!15766) (_1!6370 lt!343204))))

(declare-datatypes ((Unit!14809 0))(
  ( (Unit!14810) )
))
(declare-fun lt!343198 () Unit!14809)

(declare-fun lemmaRemoveUselessConcatSound!130 (Regex!2595 List!9825) Unit!14809)

(assert (=> b!945049 (= lt!343198 (lemmaRemoveUselessConcatSound!130 (reg!2924 r!15766) (_1!6370 lt!343204)))))

(declare-fun b!945050 () Bool)

(declare-fun res!429414 () Bool)

(assert (=> b!945050 (=> res!429414 e!612566)))

(assert (=> b!945050 (= res!429414 (not (matchR!1133 lt!343206 (_2!6370 lt!343204))))))

(declare-fun b!945051 () Bool)

(declare-fun tp_is_empty!4833 () Bool)

(assert (=> b!945051 (= e!612569 tp_is_empty!4833)))

(declare-fun b!945052 () Bool)

(assert (=> b!945052 (= e!612561 e!612566)))

(declare-fun res!429410 () Bool)

(assert (=> b!945052 (=> res!429410 e!612566)))

(assert (=> b!945052 (= res!429410 (not (matchR!1133 lt!343203 (_1!6370 lt!343204))))))

(declare-datatypes ((Option!2186 0))(
  ( (None!2185) (Some!2185 (v!19602 tuple2!11088)) )
))
(declare-fun lt!343207 () Option!2186)

(declare-fun get!3274 (Option!2186) tuple2!11088)

(assert (=> b!945052 (= lt!343204 (get!3274 lt!343207))))

(declare-fun b!945053 () Bool)

(declare-fun e!612568 () Bool)

(declare-fun tp!291834 () Bool)

(assert (=> b!945053 (= e!612568 (and tp_is_empty!4833 tp!291834))))

(declare-fun e!612563 () Bool)

(declare-fun e!612564 () Bool)

(assert (=> b!945054 (= e!612563 e!612564)))

(declare-fun res!429411 () Bool)

(assert (=> b!945054 (=> res!429411 e!612564)))

(assert (=> b!945054 (= res!429411 (not (matchR!1133 lt!343206 s!10566)))))

(assert (=> b!945054 (= lt!343206 (Star!2595 lt!343203))))

(declare-fun removeUselessConcat!264 (Regex!2595) Regex!2595)

(assert (=> b!945054 (= lt!343203 (removeUselessConcat!264 (reg!2924 r!15766)))))

(declare-fun Exists!346 (Int) Bool)

(assert (=> b!945054 (= (Exists!346 lambda!32111) (Exists!346 lambda!32112))))

(declare-fun lt!343205 () Unit!14809)

(declare-fun lemmaExistCutMatchRandMatchRSpecEquivalentStar!90 (Regex!2595 List!9825) Unit!14809)

(assert (=> b!945054 (= lt!343205 (lemmaExistCutMatchRandMatchRSpecEquivalentStar!90 (reg!2924 r!15766) s!10566))))

(declare-fun isDefined!1828 (Option!2186) Bool)

(declare-fun findConcatSeparation!292 (Regex!2595 Regex!2595 List!9825 List!9825 List!9825) Option!2186)

(assert (=> b!945054 (= (isDefined!1828 (findConcatSeparation!292 (reg!2924 r!15766) lt!343209 Nil!9809 s!10566 s!10566)) (Exists!346 lambda!32111))))

(declare-fun lt!343199 () Unit!14809)

(declare-fun lemmaFindConcatSeparationEquivalentToExists!292 (Regex!2595 Regex!2595 List!9825) Unit!14809)

(assert (=> b!945054 (= lt!343199 (lemmaFindConcatSeparationEquivalentToExists!292 (reg!2924 r!15766) lt!343209 s!10566))))

(assert (=> b!945054 (= lt!343209 (Star!2595 (reg!2924 r!15766)))))

(declare-fun b!945055 () Bool)

(declare-fun e!612562 () Bool)

(assert (=> b!945055 (= e!612562 (not e!612563))))

(declare-fun res!429405 () Bool)

(assert (=> b!945055 (=> res!429405 e!612563)))

(declare-fun lt!343196 () Bool)

(get-info :version)

(assert (=> b!945055 (= res!429405 (or lt!343196 (and ((_ is Concat!4428) r!15766) ((_ is EmptyExpr!2595) (regOne!5702 r!15766))) (and ((_ is Concat!4428) r!15766) ((_ is EmptyExpr!2595) (regTwo!5702 r!15766))) ((_ is Concat!4428) r!15766) ((_ is Union!2595) r!15766) (not ((_ is Star!2595) r!15766))))))

(declare-fun matchRSpec!396 (Regex!2595 List!9825) Bool)

(assert (=> b!945055 (= lt!343196 (matchRSpec!396 r!15766 s!10566))))

(assert (=> b!945055 (= lt!343196 (matchR!1133 r!15766 s!10566))))

(declare-fun lt!343202 () Unit!14809)

(declare-fun mainMatchTheorem!396 (Regex!2595 List!9825) Unit!14809)

(assert (=> b!945055 (= lt!343202 (mainMatchTheorem!396 r!15766 s!10566))))

(assert (=> b!945056 (= e!612564 e!612561)))

(declare-fun res!429408 () Bool)

(assert (=> b!945056 (=> res!429408 e!612561)))

(assert (=> b!945056 (= res!429408 (isEmpty!6068 s!10566))))

(assert (=> b!945056 (= (Exists!346 lambda!32113) (Exists!346 lambda!32114))))

(declare-fun lt!343208 () Unit!14809)

(assert (=> b!945056 (= lt!343208 (lemmaExistCutMatchRandMatchRSpecEquivalentStar!90 lt!343203 s!10566))))

(assert (=> b!945056 (= lt!343195 (Exists!346 lambda!32113))))

(assert (=> b!945056 (= lt!343195 (isDefined!1828 lt!343207))))

(assert (=> b!945056 (= lt!343207 (findConcatSeparation!292 lt!343203 lt!343206 Nil!9809 s!10566 s!10566))))

(declare-fun lt!343210 () Unit!14809)

(assert (=> b!945056 (= lt!343210 (lemmaFindConcatSeparationEquivalentToExists!292 lt!343203 lt!343206 s!10566))))

(assert (=> b!945056 (matchRSpec!396 lt!343206 s!10566)))

(declare-fun lt!343200 () Unit!14809)

(assert (=> b!945056 (= lt!343200 (mainMatchTheorem!396 lt!343206 s!10566))))

(declare-fun b!945057 () Bool)

(assert (=> b!945057 (= e!612567 e!612565)))

(declare-fun res!429412 () Bool)

(assert (=> b!945057 (=> res!429412 e!612565)))

(declare-fun lt!343201 () Int)

(assert (=> b!945057 (= res!429412 (or (not (= (+ lt!343201 lt!343197) lt!343211)) (not (= lt!343201 0))))))

(assert (=> b!945057 (= lt!343201 (size!7893 (_1!6370 lt!343204)))))

(declare-fun b!945047 () Bool)

(declare-fun tp!291836 () Bool)

(declare-fun tp!291832 () Bool)

(assert (=> b!945047 (= e!612569 (and tp!291836 tp!291832))))

(declare-fun res!429406 () Bool)

(assert (=> start!84298 (=> (not res!429406) (not e!612562))))

(assert (=> start!84298 (= res!429406 (validRegex!1064 r!15766))))

(assert (=> start!84298 e!612562))

(assert (=> start!84298 e!612569))

(assert (=> start!84298 e!612568))

(assert (= (and start!84298 res!429406) b!945055))

(assert (= (and b!945055 (not res!429405)) b!945054))

(assert (= (and b!945054 (not res!429411)) b!945056))

(assert (= (and b!945056 (not res!429408)) b!945046))

(assert (= (and b!945046 (not res!429407)) b!945052))

(assert (= (and b!945052 (not res!429410)) b!945050))

(assert (= (and b!945050 (not res!429414)) b!945049))

(assert (= (and b!945049 (not res!429409)) b!945042))

(assert (= (and b!945042 (not res!429413)) b!945057))

(assert (= (and b!945057 (not res!429412)) b!945045))

(assert (= (and b!945045 (not res!429404)) b!945048))

(assert (= (and start!84298 ((_ is ElementMatch!2595) r!15766)) b!945051))

(assert (= (and start!84298 ((_ is Concat!4428) r!15766)) b!945044))

(assert (= (and start!84298 ((_ is Star!2595) r!15766)) b!945043))

(assert (= (and start!84298 ((_ is Union!2595) r!15766)) b!945047))

(assert (= (and start!84298 ((_ is Cons!9809) s!10566)) b!945053))

(declare-fun m!1160389 () Bool)

(assert (=> b!945049 m!1160389))

(declare-fun m!1160391 () Bool)

(assert (=> b!945049 m!1160391))

(declare-fun m!1160393 () Bool)

(assert (=> b!945049 m!1160393))

(declare-fun m!1160395 () Bool)

(assert (=> b!945049 m!1160395))

(declare-fun m!1160397 () Bool)

(assert (=> b!945056 m!1160397))

(declare-fun m!1160399 () Bool)

(assert (=> b!945056 m!1160399))

(declare-fun m!1160401 () Bool)

(assert (=> b!945056 m!1160401))

(declare-fun m!1160403 () Bool)

(assert (=> b!945056 m!1160403))

(declare-fun m!1160405 () Bool)

(assert (=> b!945056 m!1160405))

(declare-fun m!1160407 () Bool)

(assert (=> b!945056 m!1160407))

(declare-fun m!1160409 () Bool)

(assert (=> b!945056 m!1160409))

(declare-fun m!1160411 () Bool)

(assert (=> b!945056 m!1160411))

(declare-fun m!1160413 () Bool)

(assert (=> b!945056 m!1160413))

(assert (=> b!945056 m!1160413))

(declare-fun m!1160415 () Bool)

(assert (=> b!945055 m!1160415))

(declare-fun m!1160417 () Bool)

(assert (=> b!945055 m!1160417))

(declare-fun m!1160419 () Bool)

(assert (=> b!945055 m!1160419))

(declare-fun m!1160421 () Bool)

(assert (=> b!945057 m!1160421))

(declare-fun m!1160423 () Bool)

(assert (=> b!945042 m!1160423))

(declare-fun m!1160425 () Bool)

(assert (=> b!945045 m!1160425))

(declare-fun m!1160427 () Bool)

(assert (=> b!945048 m!1160427))

(declare-fun m!1160429 () Bool)

(assert (=> start!84298 m!1160429))

(declare-fun m!1160431 () Bool)

(assert (=> b!945054 m!1160431))

(declare-fun m!1160433 () Bool)

(assert (=> b!945054 m!1160433))

(declare-fun m!1160435 () Bool)

(assert (=> b!945054 m!1160435))

(assert (=> b!945054 m!1160431))

(declare-fun m!1160437 () Bool)

(assert (=> b!945054 m!1160437))

(declare-fun m!1160439 () Bool)

(assert (=> b!945054 m!1160439))

(declare-fun m!1160441 () Bool)

(assert (=> b!945054 m!1160441))

(declare-fun m!1160443 () Bool)

(assert (=> b!945054 m!1160443))

(assert (=> b!945054 m!1160439))

(declare-fun m!1160445 () Bool)

(assert (=> b!945054 m!1160445))

(declare-fun m!1160447 () Bool)

(assert (=> b!945050 m!1160447))

(declare-fun m!1160449 () Bool)

(assert (=> b!945052 m!1160449))

(declare-fun m!1160451 () Bool)

(assert (=> b!945052 m!1160451))

(check-sat (not b!945054) (not b!945050) (not b!945056) (not start!84298) (not b!945047) (not b!945044) (not b!945057) tp_is_empty!4833 (not b!945045) (not b!945052) (not b!945043) (not b!945055) (not b!945049) (not b!945053) (not b!945042) (not b!945048))
(check-sat)
(get-model)

(declare-fun b!945191 () Bool)

(declare-fun res!429478 () Bool)

(declare-fun e!612644 () Bool)

(assert (=> b!945191 (=> (not res!429478) (not e!612644))))

(declare-fun lt!343225 () List!9825)

(assert (=> b!945191 (= res!429478 (= (size!7893 lt!343225) (+ (size!7893 (_1!6370 lt!343204)) (size!7893 (_2!6370 lt!343204)))))))

(declare-fun b!945190 () Bool)

(declare-fun e!612643 () List!9825)

(assert (=> b!945190 (= e!612643 (Cons!9809 (h!15210 (_1!6370 lt!343204)) (++!2615 (t!100871 (_1!6370 lt!343204)) (_2!6370 lt!343204))))))

(declare-fun b!945192 () Bool)

(assert (=> b!945192 (= e!612644 (or (not (= (_2!6370 lt!343204) Nil!9809)) (= lt!343225 (_1!6370 lt!343204))))))

(declare-fun b!945189 () Bool)

(assert (=> b!945189 (= e!612643 (_2!6370 lt!343204))))

(declare-fun d!283071 () Bool)

(assert (=> d!283071 e!612644))

(declare-fun res!429479 () Bool)

(assert (=> d!283071 (=> (not res!429479) (not e!612644))))

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!1393 (List!9825) (InoxSet C!5760))

(assert (=> d!283071 (= res!429479 (= (content!1393 lt!343225) ((_ map or) (content!1393 (_1!6370 lt!343204)) (content!1393 (_2!6370 lt!343204)))))))

(assert (=> d!283071 (= lt!343225 e!612643)))

(declare-fun c!153869 () Bool)

(assert (=> d!283071 (= c!153869 ((_ is Nil!9809) (_1!6370 lt!343204)))))

(assert (=> d!283071 (= (++!2615 (_1!6370 lt!343204) (_2!6370 lt!343204)) lt!343225)))

(assert (= (and d!283071 c!153869) b!945189))

(assert (= (and d!283071 (not c!153869)) b!945190))

(assert (= (and d!283071 res!429479) b!945191))

(assert (= (and b!945191 res!429478) b!945192))

(declare-fun m!1160485 () Bool)

(assert (=> b!945191 m!1160485))

(assert (=> b!945191 m!1160421))

(assert (=> b!945191 m!1160391))

(declare-fun m!1160487 () Bool)

(assert (=> b!945190 m!1160487))

(declare-fun m!1160489 () Bool)

(assert (=> d!283071 m!1160489))

(declare-fun m!1160491 () Bool)

(assert (=> d!283071 m!1160491))

(declare-fun m!1160493 () Bool)

(assert (=> d!283071 m!1160493))

(assert (=> b!945042 d!283071))

(declare-fun b!945301 () Bool)

(declare-fun e!612709 () Bool)

(declare-fun nullable!763 (Regex!2595) Bool)

(assert (=> b!945301 (= e!612709 (nullable!763 lt!343203))))

(declare-fun b!945302 () Bool)

(declare-fun e!612704 () Bool)

(declare-fun head!1725 (List!9825) C!5760)

(assert (=> b!945302 (= e!612704 (= (head!1725 (_1!6370 lt!343204)) (c!153836 lt!343203)))))

(declare-fun b!945303 () Bool)

(declare-fun derivativeStep!572 (Regex!2595 C!5760) Regex!2595)

(declare-fun tail!1287 (List!9825) List!9825)

(assert (=> b!945303 (= e!612709 (matchR!1133 (derivativeStep!572 lt!343203 (head!1725 (_1!6370 lt!343204))) (tail!1287 (_1!6370 lt!343204))))))

(declare-fun b!945304 () Bool)

(declare-fun e!612705 () Bool)

(declare-fun lt!343238 () Bool)

(declare-fun call!59093 () Bool)

(assert (=> b!945304 (= e!612705 (= lt!343238 call!59093))))

(declare-fun bm!59088 () Bool)

(assert (=> bm!59088 (= call!59093 (isEmpty!6068 (_1!6370 lt!343204)))))

(declare-fun b!945305 () Bool)

(declare-fun res!429542 () Bool)

(declare-fun e!612707 () Bool)

(assert (=> b!945305 (=> res!429542 e!612707)))

(assert (=> b!945305 (= res!429542 (not (isEmpty!6068 (tail!1287 (_1!6370 lt!343204)))))))

(declare-fun b!945306 () Bool)

(declare-fun e!612706 () Bool)

(assert (=> b!945306 (= e!612706 e!612707)))

(declare-fun res!429541 () Bool)

(assert (=> b!945306 (=> res!429541 e!612707)))

(assert (=> b!945306 (= res!429541 call!59093)))

(declare-fun b!945307 () Bool)

(declare-fun res!429540 () Bool)

(declare-fun e!612703 () Bool)

(assert (=> b!945307 (=> res!429540 e!612703)))

(assert (=> b!945307 (= res!429540 (not ((_ is ElementMatch!2595) lt!343203)))))

(declare-fun e!612708 () Bool)

(assert (=> b!945307 (= e!612708 e!612703)))

(declare-fun b!945309 () Bool)

(assert (=> b!945309 (= e!612703 e!612706)))

(declare-fun res!429538 () Bool)

(assert (=> b!945309 (=> (not res!429538) (not e!612706))))

(assert (=> b!945309 (= res!429538 (not lt!343238))))

(declare-fun b!945310 () Bool)

(assert (=> b!945310 (= e!612708 (not lt!343238))))

(declare-fun b!945311 () Bool)

(assert (=> b!945311 (= e!612707 (not (= (head!1725 (_1!6370 lt!343204)) (c!153836 lt!343203))))))

(declare-fun b!945312 () Bool)

(declare-fun res!429544 () Bool)

(assert (=> b!945312 (=> (not res!429544) (not e!612704))))

(assert (=> b!945312 (= res!429544 (isEmpty!6068 (tail!1287 (_1!6370 lt!343204))))))

(declare-fun b!945313 () Bool)

(declare-fun res!429545 () Bool)

(assert (=> b!945313 (=> (not res!429545) (not e!612704))))

(assert (=> b!945313 (= res!429545 (not call!59093))))

(declare-fun b!945314 () Bool)

(declare-fun res!429543 () Bool)

(assert (=> b!945314 (=> res!429543 e!612703)))

(assert (=> b!945314 (= res!429543 e!612704)))

(declare-fun res!429539 () Bool)

(assert (=> b!945314 (=> (not res!429539) (not e!612704))))

(assert (=> b!945314 (= res!429539 lt!343238)))

(declare-fun b!945308 () Bool)

(assert (=> b!945308 (= e!612705 e!612708)))

(declare-fun c!153897 () Bool)

(assert (=> b!945308 (= c!153897 ((_ is EmptyLang!2595) lt!343203))))

(declare-fun d!283075 () Bool)

(assert (=> d!283075 e!612705))

(declare-fun c!153896 () Bool)

(assert (=> d!283075 (= c!153896 ((_ is EmptyExpr!2595) lt!343203))))

(assert (=> d!283075 (= lt!343238 e!612709)))

(declare-fun c!153895 () Bool)

(assert (=> d!283075 (= c!153895 (isEmpty!6068 (_1!6370 lt!343204)))))

(assert (=> d!283075 (validRegex!1064 lt!343203)))

(assert (=> d!283075 (= (matchR!1133 lt!343203 (_1!6370 lt!343204)) lt!343238)))

(assert (= (and d!283075 c!153895) b!945301))

(assert (= (and d!283075 (not c!153895)) b!945303))

(assert (= (and d!283075 c!153896) b!945304))

(assert (= (and d!283075 (not c!153896)) b!945308))

(assert (= (and b!945308 c!153897) b!945310))

(assert (= (and b!945308 (not c!153897)) b!945307))

(assert (= (and b!945307 (not res!429540)) b!945314))

(assert (= (and b!945314 res!429539) b!945313))

(assert (= (and b!945313 res!429545) b!945312))

(assert (= (and b!945312 res!429544) b!945302))

(assert (= (and b!945314 (not res!429543)) b!945309))

(assert (= (and b!945309 res!429538) b!945306))

(assert (= (and b!945306 (not res!429541)) b!945305))

(assert (= (and b!945305 (not res!429542)) b!945311))

(assert (= (or b!945304 b!945306 b!945313) bm!59088))

(assert (=> bm!59088 m!1160425))

(declare-fun m!1160555 () Bool)

(assert (=> b!945311 m!1160555))

(declare-fun m!1160557 () Bool)

(assert (=> b!945312 m!1160557))

(assert (=> b!945312 m!1160557))

(declare-fun m!1160559 () Bool)

(assert (=> b!945312 m!1160559))

(assert (=> d!283075 m!1160425))

(declare-fun m!1160561 () Bool)

(assert (=> d!283075 m!1160561))

(assert (=> b!945302 m!1160555))

(assert (=> b!945305 m!1160557))

(assert (=> b!945305 m!1160557))

(assert (=> b!945305 m!1160559))

(assert (=> b!945303 m!1160555))

(assert (=> b!945303 m!1160555))

(declare-fun m!1160563 () Bool)

(assert (=> b!945303 m!1160563))

(assert (=> b!945303 m!1160557))

(assert (=> b!945303 m!1160563))

(assert (=> b!945303 m!1160557))

(declare-fun m!1160565 () Bool)

(assert (=> b!945303 m!1160565))

(declare-fun m!1160567 () Bool)

(assert (=> b!945301 m!1160567))

(assert (=> b!945052 d!283075))

(declare-fun d!283097 () Bool)

(assert (=> d!283097 (= (get!3274 lt!343207) (v!19602 lt!343207))))

(assert (=> b!945052 d!283097))

(declare-fun bs!239432 () Bool)

(declare-fun d!283099 () Bool)

(assert (= bs!239432 (and d!283099 b!945054)))

(declare-fun lambda!32127 () Int)

(assert (=> bs!239432 (= lambda!32127 lambda!32111)))

(assert (=> bs!239432 (not (= lambda!32127 lambda!32112))))

(declare-fun bs!239436 () Bool)

(assert (= bs!239436 (and d!283099 b!945056)))

(assert (=> bs!239436 (= (and (= (reg!2924 r!15766) lt!343203) (= lt!343209 lt!343206)) (= lambda!32127 lambda!32113))))

(assert (=> bs!239436 (not (= lambda!32127 lambda!32114))))

(assert (=> d!283099 true))

(assert (=> d!283099 true))

(assert (=> d!283099 true))

(assert (=> d!283099 (= (isDefined!1828 (findConcatSeparation!292 (reg!2924 r!15766) lt!343209 Nil!9809 s!10566 s!10566)) (Exists!346 lambda!32127))))

(declare-fun lt!343252 () Unit!14809)

(declare-fun choose!5874 (Regex!2595 Regex!2595 List!9825) Unit!14809)

(assert (=> d!283099 (= lt!343252 (choose!5874 (reg!2924 r!15766) lt!343209 s!10566))))

(assert (=> d!283099 (validRegex!1064 (reg!2924 r!15766))))

(assert (=> d!283099 (= (lemmaFindConcatSeparationEquivalentToExists!292 (reg!2924 r!15766) lt!343209 s!10566) lt!343252)))

(declare-fun bs!239439 () Bool)

(assert (= bs!239439 d!283099))

(declare-fun m!1160591 () Bool)

(assert (=> bs!239439 m!1160591))

(assert (=> bs!239439 m!1160427))

(assert (=> bs!239439 m!1160439))

(declare-fun m!1160593 () Bool)

(assert (=> bs!239439 m!1160593))

(assert (=> bs!239439 m!1160439))

(assert (=> bs!239439 m!1160441))

(assert (=> b!945054 d!283099))

(declare-fun b!945431 () Bool)

(declare-fun e!612776 () Bool)

(declare-fun lt!343273 () Option!2186)

(assert (=> b!945431 (= e!612776 (not (isDefined!1828 lt!343273)))))

(declare-fun b!945432 () Bool)

(declare-fun res!429603 () Bool)

(declare-fun e!612773 () Bool)

(assert (=> b!945432 (=> (not res!429603) (not e!612773))))

(assert (=> b!945432 (= res!429603 (matchR!1133 lt!343209 (_2!6370 (get!3274 lt!343273))))))

(declare-fun d!283103 () Bool)

(assert (=> d!283103 e!612776))

(declare-fun res!429604 () Bool)

(assert (=> d!283103 (=> res!429604 e!612776)))

(assert (=> d!283103 (= res!429604 e!612773)))

(declare-fun res!429602 () Bool)

(assert (=> d!283103 (=> (not res!429602) (not e!612773))))

(assert (=> d!283103 (= res!429602 (isDefined!1828 lt!343273))))

(declare-fun e!612775 () Option!2186)

(assert (=> d!283103 (= lt!343273 e!612775)))

(declare-fun c!153930 () Bool)

(declare-fun e!612774 () Bool)

(assert (=> d!283103 (= c!153930 e!612774)))

(declare-fun res!429601 () Bool)

(assert (=> d!283103 (=> (not res!429601) (not e!612774))))

(assert (=> d!283103 (= res!429601 (matchR!1133 (reg!2924 r!15766) Nil!9809))))

(assert (=> d!283103 (validRegex!1064 (reg!2924 r!15766))))

(assert (=> d!283103 (= (findConcatSeparation!292 (reg!2924 r!15766) lt!343209 Nil!9809 s!10566 s!10566) lt!343273)))

(declare-fun b!945433 () Bool)

(declare-fun e!612777 () Option!2186)

(assert (=> b!945433 (= e!612775 e!612777)))

(declare-fun c!153929 () Bool)

(assert (=> b!945433 (= c!153929 ((_ is Nil!9809) s!10566))))

(declare-fun b!945434 () Bool)

(assert (=> b!945434 (= e!612774 (matchR!1133 lt!343209 s!10566))))

(declare-fun b!945435 () Bool)

(declare-fun lt!343271 () Unit!14809)

(declare-fun lt!343272 () Unit!14809)

(assert (=> b!945435 (= lt!343271 lt!343272)))

(assert (=> b!945435 (= (++!2615 (++!2615 Nil!9809 (Cons!9809 (h!15210 s!10566) Nil!9809)) (t!100871 s!10566)) s!10566)))

(declare-fun lemmaMoveElementToOtherListKeepsConcatEq!228 (List!9825 C!5760 List!9825 List!9825) Unit!14809)

(assert (=> b!945435 (= lt!343272 (lemmaMoveElementToOtherListKeepsConcatEq!228 Nil!9809 (h!15210 s!10566) (t!100871 s!10566) s!10566))))

(assert (=> b!945435 (= e!612777 (findConcatSeparation!292 (reg!2924 r!15766) lt!343209 (++!2615 Nil!9809 (Cons!9809 (h!15210 s!10566) Nil!9809)) (t!100871 s!10566) s!10566))))

(declare-fun b!945436 () Bool)

(declare-fun res!429600 () Bool)

(assert (=> b!945436 (=> (not res!429600) (not e!612773))))

(assert (=> b!945436 (= res!429600 (matchR!1133 (reg!2924 r!15766) (_1!6370 (get!3274 lt!343273))))))

(declare-fun b!945437 () Bool)

(assert (=> b!945437 (= e!612775 (Some!2185 (tuple2!11089 Nil!9809 s!10566)))))

(declare-fun b!945438 () Bool)

(assert (=> b!945438 (= e!612777 None!2185)))

(declare-fun b!945439 () Bool)

(assert (=> b!945439 (= e!612773 (= (++!2615 (_1!6370 (get!3274 lt!343273)) (_2!6370 (get!3274 lt!343273))) s!10566))))

(assert (= (and d!283103 res!429601) b!945434))

(assert (= (and d!283103 c!153930) b!945437))

(assert (= (and d!283103 (not c!153930)) b!945433))

(assert (= (and b!945433 c!153929) b!945438))

(assert (= (and b!945433 (not c!153929)) b!945435))

(assert (= (and d!283103 res!429602) b!945436))

(assert (= (and b!945436 res!429600) b!945432))

(assert (= (and b!945432 res!429603) b!945439))

(assert (= (and d!283103 (not res!429604)) b!945431))

(declare-fun m!1160657 () Bool)

(assert (=> d!283103 m!1160657))

(declare-fun m!1160659 () Bool)

(assert (=> d!283103 m!1160659))

(assert (=> d!283103 m!1160427))

(declare-fun m!1160661 () Bool)

(assert (=> b!945435 m!1160661))

(assert (=> b!945435 m!1160661))

(declare-fun m!1160663 () Bool)

(assert (=> b!945435 m!1160663))

(declare-fun m!1160665 () Bool)

(assert (=> b!945435 m!1160665))

(assert (=> b!945435 m!1160661))

(declare-fun m!1160667 () Bool)

(assert (=> b!945435 m!1160667))

(declare-fun m!1160669 () Bool)

(assert (=> b!945432 m!1160669))

(declare-fun m!1160671 () Bool)

(assert (=> b!945432 m!1160671))

(assert (=> b!945436 m!1160669))

(declare-fun m!1160673 () Bool)

(assert (=> b!945436 m!1160673))

(assert (=> b!945431 m!1160657))

(assert (=> b!945439 m!1160669))

(declare-fun m!1160675 () Bool)

(assert (=> b!945439 m!1160675))

(declare-fun m!1160677 () Bool)

(assert (=> b!945434 m!1160677))

(assert (=> b!945054 d!283103))

(declare-fun bs!239484 () Bool)

(declare-fun d!283131 () Bool)

(assert (= bs!239484 (and d!283131 b!945054)))

(declare-fun lambda!32142 () Int)

(assert (=> bs!239484 (= (= (Star!2595 (reg!2924 r!15766)) lt!343209) (= lambda!32142 lambda!32111))))

(declare-fun bs!239485 () Bool)

(assert (= bs!239485 (and d!283131 b!945056)))

(assert (=> bs!239485 (= (and (= (reg!2924 r!15766) lt!343203) (= (Star!2595 (reg!2924 r!15766)) lt!343206)) (= lambda!32142 lambda!32113))))

(declare-fun bs!239486 () Bool)

(assert (= bs!239486 (and d!283131 d!283099)))

(assert (=> bs!239486 (= (= (Star!2595 (reg!2924 r!15766)) lt!343209) (= lambda!32142 lambda!32127))))

(assert (=> bs!239485 (not (= lambda!32142 lambda!32114))))

(assert (=> bs!239484 (not (= lambda!32142 lambda!32112))))

(assert (=> d!283131 true))

(assert (=> d!283131 true))

(declare-fun bs!239487 () Bool)

(assert (= bs!239487 d!283131))

(declare-fun lambda!32143 () Int)

(assert (=> bs!239487 (not (= lambda!32143 lambda!32142))))

(assert (=> bs!239484 (not (= lambda!32143 lambda!32111))))

(assert (=> bs!239485 (not (= lambda!32143 lambda!32113))))

(assert (=> bs!239486 (not (= lambda!32143 lambda!32127))))

(assert (=> bs!239485 (= (and (= (reg!2924 r!15766) lt!343203) (= (Star!2595 (reg!2924 r!15766)) lt!343206)) (= lambda!32143 lambda!32114))))

(assert (=> bs!239484 (= (= (Star!2595 (reg!2924 r!15766)) lt!343209) (= lambda!32143 lambda!32112))))

(assert (=> d!283131 true))

(assert (=> d!283131 true))

(assert (=> d!283131 (= (Exists!346 lambda!32142) (Exists!346 lambda!32143))))

(declare-fun lt!343277 () Unit!14809)

(declare-fun choose!5876 (Regex!2595 List!9825) Unit!14809)

(assert (=> d!283131 (= lt!343277 (choose!5876 (reg!2924 r!15766) s!10566))))

(assert (=> d!283131 (validRegex!1064 (reg!2924 r!15766))))

(assert (=> d!283131 (= (lemmaExistCutMatchRandMatchRSpecEquivalentStar!90 (reg!2924 r!15766) s!10566) lt!343277)))

(declare-fun m!1160679 () Bool)

(assert (=> bs!239487 m!1160679))

(declare-fun m!1160681 () Bool)

(assert (=> bs!239487 m!1160681))

(declare-fun m!1160683 () Bool)

(assert (=> bs!239487 m!1160683))

(assert (=> bs!239487 m!1160427))

(assert (=> b!945054 d!283131))

(declare-fun bm!59116 () Bool)

(declare-fun call!59121 () Regex!2595)

(declare-fun call!59123 () Regex!2595)

(assert (=> bm!59116 (= call!59121 call!59123)))

(declare-fun b!945507 () Bool)

(declare-fun e!612805 () Regex!2595)

(declare-fun e!612807 () Regex!2595)

(assert (=> b!945507 (= e!612805 e!612807)))

(declare-fun c!153943 () Bool)

(assert (=> b!945507 (= c!153943 ((_ is Union!2595) (reg!2924 r!15766)))))

(declare-fun call!59122 () Regex!2595)

(declare-fun c!153941 () Bool)

(declare-fun c!153945 () Bool)

(declare-fun bm!59117 () Bool)

(declare-fun c!153942 () Bool)

(assert (=> bm!59117 (= call!59122 (removeUselessConcat!264 (ite c!153945 (regTwo!5702 (reg!2924 r!15766)) (ite (or c!153941 c!153942) (regOne!5702 (reg!2924 r!15766)) (ite c!153943 (regTwo!5703 (reg!2924 r!15766)) (reg!2924 (reg!2924 r!15766)))))))))

(declare-fun b!945508 () Bool)

(declare-fun e!612808 () Regex!2595)

(assert (=> b!945508 (= e!612808 call!59123)))

(declare-fun d!283133 () Bool)

(declare-fun e!612806 () Bool)

(assert (=> d!283133 e!612806))

(declare-fun res!429617 () Bool)

(assert (=> d!283133 (=> (not res!429617) (not e!612806))))

(declare-fun lt!343280 () Regex!2595)

(assert (=> d!283133 (= res!429617 (validRegex!1064 lt!343280))))

(declare-fun e!612804 () Regex!2595)

(assert (=> d!283133 (= lt!343280 e!612804)))

(assert (=> d!283133 (= c!153945 (and ((_ is Concat!4428) (reg!2924 r!15766)) ((_ is EmptyExpr!2595) (regOne!5702 (reg!2924 r!15766)))))))

(assert (=> d!283133 (validRegex!1064 (reg!2924 r!15766))))

(assert (=> d!283133 (= (removeUselessConcat!264 (reg!2924 r!15766)) lt!343280)))

(declare-fun b!945509 () Bool)

(declare-fun c!153944 () Bool)

(assert (=> b!945509 (= c!153944 ((_ is Star!2595) (reg!2924 r!15766)))))

(declare-fun e!612809 () Regex!2595)

(assert (=> b!945509 (= e!612807 e!612809)))

(declare-fun b!945510 () Bool)

(assert (=> b!945510 (= c!153942 ((_ is Concat!4428) (reg!2924 r!15766)))))

(assert (=> b!945510 (= e!612808 e!612805)))

(declare-fun bm!59118 () Bool)

(assert (=> bm!59118 (= call!59123 call!59122)))

(declare-fun b!945511 () Bool)

(assert (=> b!945511 (= e!612804 call!59122)))

(declare-fun b!945512 () Bool)

(declare-fun call!59125 () Regex!2595)

(assert (=> b!945512 (= e!612805 (Concat!4428 call!59121 call!59125))))

(declare-fun bm!59119 () Bool)

(declare-fun call!59124 () Regex!2595)

(assert (=> bm!59119 (= call!59124 call!59121)))

(declare-fun b!945513 () Bool)

(assert (=> b!945513 (= e!612804 e!612808)))

(assert (=> b!945513 (= c!153941 (and ((_ is Concat!4428) (reg!2924 r!15766)) ((_ is EmptyExpr!2595) (regTwo!5702 (reg!2924 r!15766)))))))

(declare-fun bm!59120 () Bool)

(assert (=> bm!59120 (= call!59125 (removeUselessConcat!264 (ite c!153942 (regTwo!5702 (reg!2924 r!15766)) (regOne!5703 (reg!2924 r!15766)))))))

(declare-fun b!945514 () Bool)

(assert (=> b!945514 (= e!612809 (reg!2924 r!15766))))

(declare-fun b!945515 () Bool)

(assert (=> b!945515 (= e!612807 (Union!2595 call!59125 call!59124))))

(declare-fun b!945516 () Bool)

(assert (=> b!945516 (= e!612809 (Star!2595 call!59124))))

(declare-fun b!945517 () Bool)

(assert (=> b!945517 (= e!612806 (= (nullable!763 lt!343280) (nullable!763 (reg!2924 r!15766))))))

(assert (= (and d!283133 c!153945) b!945511))

(assert (= (and d!283133 (not c!153945)) b!945513))

(assert (= (and b!945513 c!153941) b!945508))

(assert (= (and b!945513 (not c!153941)) b!945510))

(assert (= (and b!945510 c!153942) b!945512))

(assert (= (and b!945510 (not c!153942)) b!945507))

(assert (= (and b!945507 c!153943) b!945515))

(assert (= (and b!945507 (not c!153943)) b!945509))

(assert (= (and b!945509 c!153944) b!945516))

(assert (= (and b!945509 (not c!153944)) b!945514))

(assert (= (or b!945515 b!945516) bm!59119))

(assert (= (or b!945512 b!945515) bm!59120))

(assert (= (or b!945512 bm!59119) bm!59116))

(assert (= (or b!945508 bm!59116) bm!59118))

(assert (= (or b!945511 bm!59118) bm!59117))

(assert (= (and d!283133 res!429617) b!945517))

(declare-fun m!1160685 () Bool)

(assert (=> bm!59117 m!1160685))

(declare-fun m!1160687 () Bool)

(assert (=> d!283133 m!1160687))

(assert (=> d!283133 m!1160427))

(declare-fun m!1160689 () Bool)

(assert (=> bm!59120 m!1160689))

(declare-fun m!1160691 () Bool)

(assert (=> b!945517 m!1160691))

(declare-fun m!1160693 () Bool)

(assert (=> b!945517 m!1160693))

(assert (=> b!945054 d!283133))

(declare-fun d!283135 () Bool)

(declare-fun isEmpty!6070 (Option!2186) Bool)

(assert (=> d!283135 (= (isDefined!1828 (findConcatSeparation!292 (reg!2924 r!15766) lt!343209 Nil!9809 s!10566 s!10566)) (not (isEmpty!6070 (findConcatSeparation!292 (reg!2924 r!15766) lt!343209 Nil!9809 s!10566 s!10566))))))

(declare-fun bs!239488 () Bool)

(assert (= bs!239488 d!283135))

(assert (=> bs!239488 m!1160439))

(declare-fun m!1160695 () Bool)

(assert (=> bs!239488 m!1160695))

(assert (=> b!945054 d!283135))

(declare-fun d!283137 () Bool)

(declare-fun choose!5878 (Int) Bool)

(assert (=> d!283137 (= (Exists!346 lambda!32111) (choose!5878 lambda!32111))))

(declare-fun bs!239489 () Bool)

(assert (= bs!239489 d!283137))

(declare-fun m!1160697 () Bool)

(assert (=> bs!239489 m!1160697))

(assert (=> b!945054 d!283137))

(declare-fun d!283139 () Bool)

(assert (=> d!283139 (= (Exists!346 lambda!32112) (choose!5878 lambda!32112))))

(declare-fun bs!239490 () Bool)

(assert (= bs!239490 d!283139))

(declare-fun m!1160699 () Bool)

(assert (=> bs!239490 m!1160699))

(assert (=> b!945054 d!283139))

(declare-fun b!945518 () Bool)

(declare-fun e!612816 () Bool)

(assert (=> b!945518 (= e!612816 (nullable!763 lt!343206))))

(declare-fun b!945519 () Bool)

(declare-fun e!612811 () Bool)

(assert (=> b!945519 (= e!612811 (= (head!1725 s!10566) (c!153836 lt!343206)))))

(declare-fun b!945520 () Bool)

(assert (=> b!945520 (= e!612816 (matchR!1133 (derivativeStep!572 lt!343206 (head!1725 s!10566)) (tail!1287 s!10566)))))

(declare-fun b!945521 () Bool)

(declare-fun e!612812 () Bool)

(declare-fun lt!343281 () Bool)

(declare-fun call!59126 () Bool)

(assert (=> b!945521 (= e!612812 (= lt!343281 call!59126))))

(declare-fun bm!59121 () Bool)

(assert (=> bm!59121 (= call!59126 (isEmpty!6068 s!10566))))

(declare-fun b!945522 () Bool)

(declare-fun res!429622 () Bool)

(declare-fun e!612814 () Bool)

(assert (=> b!945522 (=> res!429622 e!612814)))

(assert (=> b!945522 (= res!429622 (not (isEmpty!6068 (tail!1287 s!10566))))))

(declare-fun b!945523 () Bool)

(declare-fun e!612813 () Bool)

(assert (=> b!945523 (= e!612813 e!612814)))

(declare-fun res!429621 () Bool)

(assert (=> b!945523 (=> res!429621 e!612814)))

(assert (=> b!945523 (= res!429621 call!59126)))

(declare-fun b!945524 () Bool)

(declare-fun res!429620 () Bool)

(declare-fun e!612810 () Bool)

(assert (=> b!945524 (=> res!429620 e!612810)))

(assert (=> b!945524 (= res!429620 (not ((_ is ElementMatch!2595) lt!343206)))))

(declare-fun e!612815 () Bool)

(assert (=> b!945524 (= e!612815 e!612810)))

(declare-fun b!945526 () Bool)

(assert (=> b!945526 (= e!612810 e!612813)))

(declare-fun res!429618 () Bool)

(assert (=> b!945526 (=> (not res!429618) (not e!612813))))

(assert (=> b!945526 (= res!429618 (not lt!343281))))

(declare-fun b!945527 () Bool)

(assert (=> b!945527 (= e!612815 (not lt!343281))))

(declare-fun b!945528 () Bool)

(assert (=> b!945528 (= e!612814 (not (= (head!1725 s!10566) (c!153836 lt!343206))))))

(declare-fun b!945529 () Bool)

(declare-fun res!429624 () Bool)

(assert (=> b!945529 (=> (not res!429624) (not e!612811))))

(assert (=> b!945529 (= res!429624 (isEmpty!6068 (tail!1287 s!10566)))))

(declare-fun b!945530 () Bool)

(declare-fun res!429625 () Bool)

(assert (=> b!945530 (=> (not res!429625) (not e!612811))))

(assert (=> b!945530 (= res!429625 (not call!59126))))

(declare-fun b!945531 () Bool)

(declare-fun res!429623 () Bool)

(assert (=> b!945531 (=> res!429623 e!612810)))

(assert (=> b!945531 (= res!429623 e!612811)))

(declare-fun res!429619 () Bool)

(assert (=> b!945531 (=> (not res!429619) (not e!612811))))

(assert (=> b!945531 (= res!429619 lt!343281)))

(declare-fun b!945525 () Bool)

(assert (=> b!945525 (= e!612812 e!612815)))

(declare-fun c!153948 () Bool)

(assert (=> b!945525 (= c!153948 ((_ is EmptyLang!2595) lt!343206))))

(declare-fun d!283141 () Bool)

(assert (=> d!283141 e!612812))

(declare-fun c!153947 () Bool)

(assert (=> d!283141 (= c!153947 ((_ is EmptyExpr!2595) lt!343206))))

(assert (=> d!283141 (= lt!343281 e!612816)))

(declare-fun c!153946 () Bool)

(assert (=> d!283141 (= c!153946 (isEmpty!6068 s!10566))))

(assert (=> d!283141 (validRegex!1064 lt!343206)))

(assert (=> d!283141 (= (matchR!1133 lt!343206 s!10566) lt!343281)))

(assert (= (and d!283141 c!153946) b!945518))

(assert (= (and d!283141 (not c!153946)) b!945520))

(assert (= (and d!283141 c!153947) b!945521))

(assert (= (and d!283141 (not c!153947)) b!945525))

(assert (= (and b!945525 c!153948) b!945527))

(assert (= (and b!945525 (not c!153948)) b!945524))

(assert (= (and b!945524 (not res!429620)) b!945531))

(assert (= (and b!945531 res!429619) b!945530))

(assert (= (and b!945530 res!429625) b!945529))

(assert (= (and b!945529 res!429624) b!945519))

(assert (= (and b!945531 (not res!429623)) b!945526))

(assert (= (and b!945526 res!429618) b!945523))

(assert (= (and b!945523 (not res!429621)) b!945522))

(assert (= (and b!945522 (not res!429622)) b!945528))

(assert (= (or b!945521 b!945523 b!945530) bm!59121))

(assert (=> bm!59121 m!1160403))

(declare-fun m!1160701 () Bool)

(assert (=> b!945528 m!1160701))

(declare-fun m!1160703 () Bool)

(assert (=> b!945529 m!1160703))

(assert (=> b!945529 m!1160703))

(declare-fun m!1160705 () Bool)

(assert (=> b!945529 m!1160705))

(assert (=> d!283141 m!1160403))

(declare-fun m!1160707 () Bool)

(assert (=> d!283141 m!1160707))

(assert (=> b!945519 m!1160701))

(assert (=> b!945522 m!1160703))

(assert (=> b!945522 m!1160703))

(assert (=> b!945522 m!1160705))

(assert (=> b!945520 m!1160701))

(assert (=> b!945520 m!1160701))

(declare-fun m!1160709 () Bool)

(assert (=> b!945520 m!1160709))

(assert (=> b!945520 m!1160703))

(assert (=> b!945520 m!1160709))

(assert (=> b!945520 m!1160703))

(declare-fun m!1160711 () Bool)

(assert (=> b!945520 m!1160711))

(declare-fun m!1160713 () Bool)

(assert (=> b!945518 m!1160713))

(assert (=> b!945054 d!283141))

(declare-fun b!945550 () Bool)

(declare-fun e!612832 () Bool)

(declare-fun e!612835 () Bool)

(assert (=> b!945550 (= e!612832 e!612835)))

(declare-fun res!429639 () Bool)

(assert (=> b!945550 (= res!429639 (not (nullable!763 (reg!2924 r!15766))))))

(assert (=> b!945550 (=> (not res!429639) (not e!612835))))

(declare-fun d!283143 () Bool)

(declare-fun res!429636 () Bool)

(declare-fun e!612837 () Bool)

(assert (=> d!283143 (=> res!429636 e!612837)))

(assert (=> d!283143 (= res!429636 ((_ is ElementMatch!2595) r!15766))))

(assert (=> d!283143 (= (validRegex!1064 r!15766) e!612837)))

(declare-fun bm!59128 () Bool)

(declare-fun call!59135 () Bool)

(declare-fun c!153954 () Bool)

(assert (=> bm!59128 (= call!59135 (validRegex!1064 (ite c!153954 (regTwo!5703 r!15766) (regTwo!5702 r!15766))))))

(declare-fun bm!59129 () Bool)

(declare-fun call!59134 () Bool)

(declare-fun call!59133 () Bool)

(assert (=> bm!59129 (= call!59134 call!59133)))

(declare-fun b!945551 () Bool)

(declare-fun e!612831 () Bool)

(assert (=> b!945551 (= e!612831 call!59135)))

(declare-fun b!945552 () Bool)

(declare-fun res!429640 () Bool)

(declare-fun e!612834 () Bool)

(assert (=> b!945552 (=> res!429640 e!612834)))

(assert (=> b!945552 (= res!429640 (not ((_ is Concat!4428) r!15766)))))

(declare-fun e!612833 () Bool)

(assert (=> b!945552 (= e!612833 e!612834)))

(declare-fun b!945553 () Bool)

(assert (=> b!945553 (= e!612835 call!59133)))

(declare-fun b!945554 () Bool)

(declare-fun e!612836 () Bool)

(assert (=> b!945554 (= e!612836 call!59135)))

(declare-fun bm!59130 () Bool)

(declare-fun c!153953 () Bool)

(assert (=> bm!59130 (= call!59133 (validRegex!1064 (ite c!153953 (reg!2924 r!15766) (ite c!153954 (regOne!5703 r!15766) (regOne!5702 r!15766)))))))

(declare-fun b!945555 () Bool)

(assert (=> b!945555 (= e!612837 e!612832)))

(assert (=> b!945555 (= c!153953 ((_ is Star!2595) r!15766))))

(declare-fun b!945556 () Bool)

(assert (=> b!945556 (= e!612832 e!612833)))

(assert (=> b!945556 (= c!153954 ((_ is Union!2595) r!15766))))

(declare-fun b!945557 () Bool)

(declare-fun res!429638 () Bool)

(assert (=> b!945557 (=> (not res!429638) (not e!612836))))

(assert (=> b!945557 (= res!429638 call!59134)))

(assert (=> b!945557 (= e!612833 e!612836)))

(declare-fun b!945558 () Bool)

(assert (=> b!945558 (= e!612834 e!612831)))

(declare-fun res!429637 () Bool)

(assert (=> b!945558 (=> (not res!429637) (not e!612831))))

(assert (=> b!945558 (= res!429637 call!59134)))

(assert (= (and d!283143 (not res!429636)) b!945555))

(assert (= (and b!945555 c!153953) b!945550))

(assert (= (and b!945555 (not c!153953)) b!945556))

(assert (= (and b!945550 res!429639) b!945553))

(assert (= (and b!945556 c!153954) b!945557))

(assert (= (and b!945556 (not c!153954)) b!945552))

(assert (= (and b!945557 res!429638) b!945554))

(assert (= (and b!945552 (not res!429640)) b!945558))

(assert (= (and b!945558 res!429637) b!945551))

(assert (= (or b!945554 b!945551) bm!59128))

(assert (= (or b!945557 b!945558) bm!59129))

(assert (= (or b!945553 bm!59129) bm!59130))

(assert (=> b!945550 m!1160693))

(declare-fun m!1160715 () Bool)

(assert (=> bm!59128 m!1160715))

(declare-fun m!1160717 () Bool)

(assert (=> bm!59130 m!1160717))

(assert (=> start!84298 d!283143))

(declare-fun bs!239491 () Bool)

(declare-fun b!945591 () Bool)

(assert (= bs!239491 (and b!945591 d!283131)))

(declare-fun lambda!32148 () Int)

(assert (=> bs!239491 (= (= r!15766 (Star!2595 (reg!2924 r!15766))) (= lambda!32148 lambda!32143))))

(assert (=> bs!239491 (not (= lambda!32148 lambda!32142))))

(declare-fun bs!239492 () Bool)

(assert (= bs!239492 (and b!945591 b!945054)))

(assert (=> bs!239492 (not (= lambda!32148 lambda!32111))))

(declare-fun bs!239493 () Bool)

(assert (= bs!239493 (and b!945591 b!945056)))

(assert (=> bs!239493 (not (= lambda!32148 lambda!32113))))

(declare-fun bs!239494 () Bool)

(assert (= bs!239494 (and b!945591 d!283099)))

(assert (=> bs!239494 (not (= lambda!32148 lambda!32127))))

(assert (=> bs!239493 (= (and (= (reg!2924 r!15766) lt!343203) (= r!15766 lt!343206)) (= lambda!32148 lambda!32114))))

(assert (=> bs!239492 (= (= r!15766 lt!343209) (= lambda!32148 lambda!32112))))

(assert (=> b!945591 true))

(assert (=> b!945591 true))

(declare-fun bs!239495 () Bool)

(declare-fun b!945601 () Bool)

(assert (= bs!239495 (and b!945601 d!283131)))

(declare-fun lambda!32149 () Int)

(assert (=> bs!239495 (not (= lambda!32149 lambda!32143))))

(assert (=> bs!239495 (not (= lambda!32149 lambda!32142))))

(declare-fun bs!239496 () Bool)

(assert (= bs!239496 (and b!945601 b!945054)))

(assert (=> bs!239496 (not (= lambda!32149 lambda!32111))))

(declare-fun bs!239497 () Bool)

(assert (= bs!239497 (and b!945601 d!283099)))

(assert (=> bs!239497 (not (= lambda!32149 lambda!32127))))

(declare-fun bs!239498 () Bool)

(assert (= bs!239498 (and b!945601 b!945056)))

(assert (=> bs!239498 (not (= lambda!32149 lambda!32114))))

(assert (=> bs!239496 (not (= lambda!32149 lambda!32112))))

(assert (=> bs!239498 (not (= lambda!32149 lambda!32113))))

(declare-fun bs!239499 () Bool)

(assert (= bs!239499 (and b!945601 b!945591)))

(assert (=> bs!239499 (not (= lambda!32149 lambda!32148))))

(assert (=> b!945601 true))

(assert (=> b!945601 true))

(declare-fun e!612860 () Bool)

(declare-fun call!59140 () Bool)

(assert (=> b!945591 (= e!612860 call!59140)))

(declare-fun b!945592 () Bool)

(declare-fun e!612859 () Bool)

(assert (=> b!945592 (= e!612859 (matchRSpec!396 (regTwo!5703 r!15766) s!10566))))

(declare-fun b!945593 () Bool)

(declare-fun e!612862 () Bool)

(declare-fun call!59141 () Bool)

(assert (=> b!945593 (= e!612862 call!59141)))

(declare-fun b!945594 () Bool)

(declare-fun c!153963 () Bool)

(assert (=> b!945594 (= c!153963 ((_ is Union!2595) r!15766))))

(declare-fun e!612858 () Bool)

(declare-fun e!612861 () Bool)

(assert (=> b!945594 (= e!612858 e!612861)))

(declare-fun b!945595 () Bool)

(declare-fun res!429658 () Bool)

(assert (=> b!945595 (=> res!429658 e!612860)))

(assert (=> b!945595 (= res!429658 call!59141)))

(declare-fun e!612857 () Bool)

(assert (=> b!945595 (= e!612857 e!612860)))

(declare-fun b!945596 () Bool)

(assert (=> b!945596 (= e!612861 e!612857)))

(declare-fun c!153966 () Bool)

(assert (=> b!945596 (= c!153966 ((_ is Star!2595) r!15766))))

(declare-fun d!283145 () Bool)

(declare-fun c!153964 () Bool)

(assert (=> d!283145 (= c!153964 ((_ is EmptyExpr!2595) r!15766))))

(assert (=> d!283145 (= (matchRSpec!396 r!15766 s!10566) e!612862)))

(declare-fun b!945597 () Bool)

(declare-fun c!153965 () Bool)

(assert (=> b!945597 (= c!153965 ((_ is ElementMatch!2595) r!15766))))

(declare-fun e!612856 () Bool)

(assert (=> b!945597 (= e!612856 e!612858)))

(declare-fun bm!59135 () Bool)

(assert (=> bm!59135 (= call!59140 (Exists!346 (ite c!153966 lambda!32148 lambda!32149)))))

(declare-fun b!945598 () Bool)

(assert (=> b!945598 (= e!612858 (= s!10566 (Cons!9809 (c!153836 r!15766) Nil!9809)))))

(declare-fun b!945599 () Bool)

(assert (=> b!945599 (= e!612862 e!612856)))

(declare-fun res!429659 () Bool)

(assert (=> b!945599 (= res!429659 (not ((_ is EmptyLang!2595) r!15766)))))

(assert (=> b!945599 (=> (not res!429659) (not e!612856))))

(declare-fun b!945600 () Bool)

(assert (=> b!945600 (= e!612861 e!612859)))

(declare-fun res!429657 () Bool)

(assert (=> b!945600 (= res!429657 (matchRSpec!396 (regOne!5703 r!15766) s!10566))))

(assert (=> b!945600 (=> res!429657 e!612859)))

(declare-fun bm!59136 () Bool)

(assert (=> bm!59136 (= call!59141 (isEmpty!6068 s!10566))))

(assert (=> b!945601 (= e!612857 call!59140)))

(assert (= (and d!283145 c!153964) b!945593))

(assert (= (and d!283145 (not c!153964)) b!945599))

(assert (= (and b!945599 res!429659) b!945597))

(assert (= (and b!945597 c!153965) b!945598))

(assert (= (and b!945597 (not c!153965)) b!945594))

(assert (= (and b!945594 c!153963) b!945600))

(assert (= (and b!945594 (not c!153963)) b!945596))

(assert (= (and b!945600 (not res!429657)) b!945592))

(assert (= (and b!945596 c!153966) b!945595))

(assert (= (and b!945596 (not c!153966)) b!945601))

(assert (= (and b!945595 (not res!429658)) b!945591))

(assert (= (or b!945591 b!945601) bm!59135))

(assert (= (or b!945593 b!945595) bm!59136))

(declare-fun m!1160719 () Bool)

(assert (=> b!945592 m!1160719))

(declare-fun m!1160721 () Bool)

(assert (=> bm!59135 m!1160721))

(declare-fun m!1160723 () Bool)

(assert (=> b!945600 m!1160723))

(assert (=> bm!59136 m!1160403))

(assert (=> b!945055 d!283145))

(declare-fun b!945602 () Bool)

(declare-fun e!612869 () Bool)

(assert (=> b!945602 (= e!612869 (nullable!763 r!15766))))

(declare-fun b!945603 () Bool)

(declare-fun e!612864 () Bool)

(assert (=> b!945603 (= e!612864 (= (head!1725 s!10566) (c!153836 r!15766)))))

(declare-fun b!945604 () Bool)

(assert (=> b!945604 (= e!612869 (matchR!1133 (derivativeStep!572 r!15766 (head!1725 s!10566)) (tail!1287 s!10566)))))

(declare-fun b!945605 () Bool)

(declare-fun e!612865 () Bool)

(declare-fun lt!343282 () Bool)

(declare-fun call!59142 () Bool)

(assert (=> b!945605 (= e!612865 (= lt!343282 call!59142))))

(declare-fun bm!59137 () Bool)

(assert (=> bm!59137 (= call!59142 (isEmpty!6068 s!10566))))

(declare-fun b!945606 () Bool)

(declare-fun res!429664 () Bool)

(declare-fun e!612867 () Bool)

(assert (=> b!945606 (=> res!429664 e!612867)))

(assert (=> b!945606 (= res!429664 (not (isEmpty!6068 (tail!1287 s!10566))))))

(declare-fun b!945607 () Bool)

(declare-fun e!612866 () Bool)

(assert (=> b!945607 (= e!612866 e!612867)))

(declare-fun res!429663 () Bool)

(assert (=> b!945607 (=> res!429663 e!612867)))

(assert (=> b!945607 (= res!429663 call!59142)))

(declare-fun b!945608 () Bool)

(declare-fun res!429662 () Bool)

(declare-fun e!612863 () Bool)

(assert (=> b!945608 (=> res!429662 e!612863)))

(assert (=> b!945608 (= res!429662 (not ((_ is ElementMatch!2595) r!15766)))))

(declare-fun e!612868 () Bool)

(assert (=> b!945608 (= e!612868 e!612863)))

(declare-fun b!945610 () Bool)

(assert (=> b!945610 (= e!612863 e!612866)))

(declare-fun res!429660 () Bool)

(assert (=> b!945610 (=> (not res!429660) (not e!612866))))

(assert (=> b!945610 (= res!429660 (not lt!343282))))

(declare-fun b!945611 () Bool)

(assert (=> b!945611 (= e!612868 (not lt!343282))))

(declare-fun b!945612 () Bool)

(assert (=> b!945612 (= e!612867 (not (= (head!1725 s!10566) (c!153836 r!15766))))))

(declare-fun b!945613 () Bool)

(declare-fun res!429666 () Bool)

(assert (=> b!945613 (=> (not res!429666) (not e!612864))))

(assert (=> b!945613 (= res!429666 (isEmpty!6068 (tail!1287 s!10566)))))

(declare-fun b!945614 () Bool)

(declare-fun res!429667 () Bool)

(assert (=> b!945614 (=> (not res!429667) (not e!612864))))

(assert (=> b!945614 (= res!429667 (not call!59142))))

(declare-fun b!945615 () Bool)

(declare-fun res!429665 () Bool)

(assert (=> b!945615 (=> res!429665 e!612863)))

(assert (=> b!945615 (= res!429665 e!612864)))

(declare-fun res!429661 () Bool)

(assert (=> b!945615 (=> (not res!429661) (not e!612864))))

(assert (=> b!945615 (= res!429661 lt!343282)))

(declare-fun b!945609 () Bool)

(assert (=> b!945609 (= e!612865 e!612868)))

(declare-fun c!153969 () Bool)

(assert (=> b!945609 (= c!153969 ((_ is EmptyLang!2595) r!15766))))

(declare-fun d!283147 () Bool)

(assert (=> d!283147 e!612865))

(declare-fun c!153968 () Bool)

(assert (=> d!283147 (= c!153968 ((_ is EmptyExpr!2595) r!15766))))

(assert (=> d!283147 (= lt!343282 e!612869)))

(declare-fun c!153967 () Bool)

(assert (=> d!283147 (= c!153967 (isEmpty!6068 s!10566))))

(assert (=> d!283147 (validRegex!1064 r!15766)))

(assert (=> d!283147 (= (matchR!1133 r!15766 s!10566) lt!343282)))

(assert (= (and d!283147 c!153967) b!945602))

(assert (= (and d!283147 (not c!153967)) b!945604))

(assert (= (and d!283147 c!153968) b!945605))

(assert (= (and d!283147 (not c!153968)) b!945609))

(assert (= (and b!945609 c!153969) b!945611))

(assert (= (and b!945609 (not c!153969)) b!945608))

(assert (= (and b!945608 (not res!429662)) b!945615))

(assert (= (and b!945615 res!429661) b!945614))

(assert (= (and b!945614 res!429667) b!945613))

(assert (= (and b!945613 res!429666) b!945603))

(assert (= (and b!945615 (not res!429665)) b!945610))

(assert (= (and b!945610 res!429660) b!945607))

(assert (= (and b!945607 (not res!429663)) b!945606))

(assert (= (and b!945606 (not res!429664)) b!945612))

(assert (= (or b!945605 b!945607 b!945614) bm!59137))

(assert (=> bm!59137 m!1160403))

(assert (=> b!945612 m!1160701))

(assert (=> b!945613 m!1160703))

(assert (=> b!945613 m!1160703))

(assert (=> b!945613 m!1160705))

(assert (=> d!283147 m!1160403))

(assert (=> d!283147 m!1160429))

(assert (=> b!945603 m!1160701))

(assert (=> b!945606 m!1160703))

(assert (=> b!945606 m!1160703))

(assert (=> b!945606 m!1160705))

(assert (=> b!945604 m!1160701))

(assert (=> b!945604 m!1160701))

(declare-fun m!1160725 () Bool)

(assert (=> b!945604 m!1160725))

(assert (=> b!945604 m!1160703))

(assert (=> b!945604 m!1160725))

(assert (=> b!945604 m!1160703))

(declare-fun m!1160727 () Bool)

(assert (=> b!945604 m!1160727))

(declare-fun m!1160729 () Bool)

(assert (=> b!945602 m!1160729))

(assert (=> b!945055 d!283147))

(declare-fun d!283149 () Bool)

(assert (=> d!283149 (= (matchR!1133 r!15766 s!10566) (matchRSpec!396 r!15766 s!10566))))

(declare-fun lt!343285 () Unit!14809)

(declare-fun choose!5879 (Regex!2595 List!9825) Unit!14809)

(assert (=> d!283149 (= lt!343285 (choose!5879 r!15766 s!10566))))

(assert (=> d!283149 (validRegex!1064 r!15766)))

(assert (=> d!283149 (= (mainMatchTheorem!396 r!15766 s!10566) lt!343285)))

(declare-fun bs!239500 () Bool)

(assert (= bs!239500 d!283149))

(assert (=> bs!239500 m!1160417))

(assert (=> bs!239500 m!1160415))

(declare-fun m!1160731 () Bool)

(assert (=> bs!239500 m!1160731))

(assert (=> bs!239500 m!1160429))

(assert (=> b!945055 d!283149))

(declare-fun d!283151 () Bool)

(assert (=> d!283151 (= (matchR!1133 lt!343206 s!10566) (matchRSpec!396 lt!343206 s!10566))))

(declare-fun lt!343286 () Unit!14809)

(assert (=> d!283151 (= lt!343286 (choose!5879 lt!343206 s!10566))))

(assert (=> d!283151 (validRegex!1064 lt!343206)))

(assert (=> d!283151 (= (mainMatchTheorem!396 lt!343206 s!10566) lt!343286)))

(declare-fun bs!239501 () Bool)

(assert (= bs!239501 d!283151))

(assert (=> bs!239501 m!1160445))

(assert (=> bs!239501 m!1160397))

(declare-fun m!1160733 () Bool)

(assert (=> bs!239501 m!1160733))

(assert (=> bs!239501 m!1160707))

(assert (=> b!945056 d!283151))

(declare-fun d!283153 () Bool)

(assert (=> d!283153 (= (isDefined!1828 lt!343207) (not (isEmpty!6070 lt!343207)))))

(declare-fun bs!239502 () Bool)

(assert (= bs!239502 d!283153))

(declare-fun m!1160735 () Bool)

(assert (=> bs!239502 m!1160735))

(assert (=> b!945056 d!283153))

(declare-fun bs!239503 () Bool)

(declare-fun d!283155 () Bool)

(assert (= bs!239503 (and d!283155 d!283131)))

(declare-fun lambda!32150 () Int)

(assert (=> bs!239503 (not (= lambda!32150 lambda!32143))))

(assert (=> bs!239503 (= (and (= lt!343203 (reg!2924 r!15766)) (= (Star!2595 lt!343203) (Star!2595 (reg!2924 r!15766)))) (= lambda!32150 lambda!32142))))

(declare-fun bs!239504 () Bool)

(assert (= bs!239504 (and d!283155 b!945054)))

(assert (=> bs!239504 (= (and (= lt!343203 (reg!2924 r!15766)) (= (Star!2595 lt!343203) lt!343209)) (= lambda!32150 lambda!32111))))

(declare-fun bs!239505 () Bool)

(assert (= bs!239505 (and d!283155 b!945601)))

(assert (=> bs!239505 (not (= lambda!32150 lambda!32149))))

(declare-fun bs!239506 () Bool)

(assert (= bs!239506 (and d!283155 d!283099)))

(assert (=> bs!239506 (= (and (= lt!343203 (reg!2924 r!15766)) (= (Star!2595 lt!343203) lt!343209)) (= lambda!32150 lambda!32127))))

(declare-fun bs!239507 () Bool)

(assert (= bs!239507 (and d!283155 b!945056)))

(assert (=> bs!239507 (not (= lambda!32150 lambda!32114))))

(assert (=> bs!239504 (not (= lambda!32150 lambda!32112))))

(assert (=> bs!239507 (= (= (Star!2595 lt!343203) lt!343206) (= lambda!32150 lambda!32113))))

(declare-fun bs!239508 () Bool)

(assert (= bs!239508 (and d!283155 b!945591)))

(assert (=> bs!239508 (not (= lambda!32150 lambda!32148))))

(assert (=> d!283155 true))

(assert (=> d!283155 true))

(declare-fun lambda!32151 () Int)

(assert (=> bs!239503 (= (and (= lt!343203 (reg!2924 r!15766)) (= (Star!2595 lt!343203) (Star!2595 (reg!2924 r!15766)))) (= lambda!32151 lambda!32143))))

(assert (=> bs!239503 (not (= lambda!32151 lambda!32142))))

(assert (=> bs!239504 (not (= lambda!32151 lambda!32111))))

(declare-fun bs!239509 () Bool)

(assert (= bs!239509 d!283155))

(assert (=> bs!239509 (not (= lambda!32151 lambda!32150))))

(assert (=> bs!239505 (not (= lambda!32151 lambda!32149))))

(assert (=> bs!239506 (not (= lambda!32151 lambda!32127))))

(assert (=> bs!239507 (= (= (Star!2595 lt!343203) lt!343206) (= lambda!32151 lambda!32114))))

(assert (=> bs!239504 (= (and (= lt!343203 (reg!2924 r!15766)) (= (Star!2595 lt!343203) lt!343209)) (= lambda!32151 lambda!32112))))

(assert (=> bs!239507 (not (= lambda!32151 lambda!32113))))

(assert (=> bs!239508 (= (and (= lt!343203 (reg!2924 r!15766)) (= (Star!2595 lt!343203) r!15766)) (= lambda!32151 lambda!32148))))

(assert (=> d!283155 true))

(assert (=> d!283155 true))

(assert (=> d!283155 (= (Exists!346 lambda!32150) (Exists!346 lambda!32151))))

(declare-fun lt!343287 () Unit!14809)

(assert (=> d!283155 (= lt!343287 (choose!5876 lt!343203 s!10566))))

(assert (=> d!283155 (validRegex!1064 lt!343203)))

(assert (=> d!283155 (= (lemmaExistCutMatchRandMatchRSpecEquivalentStar!90 lt!343203 s!10566) lt!343287)))

(declare-fun m!1160737 () Bool)

(assert (=> bs!239509 m!1160737))

(declare-fun m!1160739 () Bool)

(assert (=> bs!239509 m!1160739))

(declare-fun m!1160741 () Bool)

(assert (=> bs!239509 m!1160741))

(assert (=> bs!239509 m!1160561))

(assert (=> b!945056 d!283155))

(declare-fun bs!239510 () Bool)

(declare-fun b!945616 () Bool)

(assert (= bs!239510 (and b!945616 d!283131)))

(declare-fun lambda!32152 () Int)

(assert (=> bs!239510 (= (and (= (reg!2924 lt!343206) (reg!2924 r!15766)) (= lt!343206 (Star!2595 (reg!2924 r!15766)))) (= lambda!32152 lambda!32143))))

(assert (=> bs!239510 (not (= lambda!32152 lambda!32142))))

(declare-fun bs!239511 () Bool)

(assert (= bs!239511 (and b!945616 b!945054)))

(assert (=> bs!239511 (not (= lambda!32152 lambda!32111))))

(declare-fun bs!239512 () Bool)

(assert (= bs!239512 (and b!945616 d!283155)))

(assert (=> bs!239512 (not (= lambda!32152 lambda!32150))))

(declare-fun bs!239513 () Bool)

(assert (= bs!239513 (and b!945616 b!945601)))

(assert (=> bs!239513 (not (= lambda!32152 lambda!32149))))

(declare-fun bs!239514 () Bool)

(assert (= bs!239514 (and b!945616 d!283099)))

(assert (=> bs!239514 (not (= lambda!32152 lambda!32127))))

(declare-fun bs!239515 () Bool)

(assert (= bs!239515 (and b!945616 b!945056)))

(assert (=> bs!239515 (= (= (reg!2924 lt!343206) lt!343203) (= lambda!32152 lambda!32114))))

(assert (=> bs!239511 (= (and (= (reg!2924 lt!343206) (reg!2924 r!15766)) (= lt!343206 lt!343209)) (= lambda!32152 lambda!32112))))

(assert (=> bs!239512 (= (and (= (reg!2924 lt!343206) lt!343203) (= lt!343206 (Star!2595 lt!343203))) (= lambda!32152 lambda!32151))))

(assert (=> bs!239515 (not (= lambda!32152 lambda!32113))))

(declare-fun bs!239516 () Bool)

(assert (= bs!239516 (and b!945616 b!945591)))

(assert (=> bs!239516 (= (and (= (reg!2924 lt!343206) (reg!2924 r!15766)) (= lt!343206 r!15766)) (= lambda!32152 lambda!32148))))

(assert (=> b!945616 true))

(assert (=> b!945616 true))

(declare-fun bs!239517 () Bool)

(declare-fun b!945626 () Bool)

(assert (= bs!239517 (and b!945626 d!283131)))

(declare-fun lambda!32153 () Int)

(assert (=> bs!239517 (not (= lambda!32153 lambda!32143))))

(assert (=> bs!239517 (not (= lambda!32153 lambda!32142))))

(declare-fun bs!239518 () Bool)

(assert (= bs!239518 (and b!945626 b!945054)))

(assert (=> bs!239518 (not (= lambda!32153 lambda!32111))))

(declare-fun bs!239519 () Bool)

(assert (= bs!239519 (and b!945626 d!283155)))

(assert (=> bs!239519 (not (= lambda!32153 lambda!32150))))

(declare-fun bs!239520 () Bool)

(assert (= bs!239520 (and b!945626 b!945616)))

(assert (=> bs!239520 (not (= lambda!32153 lambda!32152))))

(declare-fun bs!239521 () Bool)

(assert (= bs!239521 (and b!945626 b!945601)))

(assert (=> bs!239521 (= (and (= (regOne!5702 lt!343206) (regOne!5702 r!15766)) (= (regTwo!5702 lt!343206) (regTwo!5702 r!15766))) (= lambda!32153 lambda!32149))))

(declare-fun bs!239522 () Bool)

(assert (= bs!239522 (and b!945626 d!283099)))

(assert (=> bs!239522 (not (= lambda!32153 lambda!32127))))

(declare-fun bs!239523 () Bool)

(assert (= bs!239523 (and b!945626 b!945056)))

(assert (=> bs!239523 (not (= lambda!32153 lambda!32114))))

(assert (=> bs!239518 (not (= lambda!32153 lambda!32112))))

(assert (=> bs!239519 (not (= lambda!32153 lambda!32151))))

(assert (=> bs!239523 (not (= lambda!32153 lambda!32113))))

(declare-fun bs!239524 () Bool)

(assert (= bs!239524 (and b!945626 b!945591)))

(assert (=> bs!239524 (not (= lambda!32153 lambda!32148))))

(assert (=> b!945626 true))

(assert (=> b!945626 true))

(declare-fun e!612874 () Bool)

(declare-fun call!59143 () Bool)

(assert (=> b!945616 (= e!612874 call!59143)))

(declare-fun b!945617 () Bool)

(declare-fun e!612873 () Bool)

(assert (=> b!945617 (= e!612873 (matchRSpec!396 (regTwo!5703 lt!343206) s!10566))))

(declare-fun b!945618 () Bool)

(declare-fun e!612876 () Bool)

(declare-fun call!59144 () Bool)

(assert (=> b!945618 (= e!612876 call!59144)))

(declare-fun b!945619 () Bool)

(declare-fun c!153970 () Bool)

(assert (=> b!945619 (= c!153970 ((_ is Union!2595) lt!343206))))

(declare-fun e!612872 () Bool)

(declare-fun e!612875 () Bool)

(assert (=> b!945619 (= e!612872 e!612875)))

(declare-fun b!945620 () Bool)

(declare-fun res!429669 () Bool)

(assert (=> b!945620 (=> res!429669 e!612874)))

(assert (=> b!945620 (= res!429669 call!59144)))

(declare-fun e!612871 () Bool)

(assert (=> b!945620 (= e!612871 e!612874)))

(declare-fun b!945621 () Bool)

(assert (=> b!945621 (= e!612875 e!612871)))

(declare-fun c!153973 () Bool)

(assert (=> b!945621 (= c!153973 ((_ is Star!2595) lt!343206))))

(declare-fun d!283157 () Bool)

(declare-fun c!153971 () Bool)

(assert (=> d!283157 (= c!153971 ((_ is EmptyExpr!2595) lt!343206))))

(assert (=> d!283157 (= (matchRSpec!396 lt!343206 s!10566) e!612876)))

(declare-fun b!945622 () Bool)

(declare-fun c!153972 () Bool)

(assert (=> b!945622 (= c!153972 ((_ is ElementMatch!2595) lt!343206))))

(declare-fun e!612870 () Bool)

(assert (=> b!945622 (= e!612870 e!612872)))

(declare-fun bm!59138 () Bool)

(assert (=> bm!59138 (= call!59143 (Exists!346 (ite c!153973 lambda!32152 lambda!32153)))))

(declare-fun b!945623 () Bool)

(assert (=> b!945623 (= e!612872 (= s!10566 (Cons!9809 (c!153836 lt!343206) Nil!9809)))))

(declare-fun b!945624 () Bool)

(assert (=> b!945624 (= e!612876 e!612870)))

(declare-fun res!429670 () Bool)

(assert (=> b!945624 (= res!429670 (not ((_ is EmptyLang!2595) lt!343206)))))

(assert (=> b!945624 (=> (not res!429670) (not e!612870))))

(declare-fun b!945625 () Bool)

(assert (=> b!945625 (= e!612875 e!612873)))

(declare-fun res!429668 () Bool)

(assert (=> b!945625 (= res!429668 (matchRSpec!396 (regOne!5703 lt!343206) s!10566))))

(assert (=> b!945625 (=> res!429668 e!612873)))

(declare-fun bm!59139 () Bool)

(assert (=> bm!59139 (= call!59144 (isEmpty!6068 s!10566))))

(assert (=> b!945626 (= e!612871 call!59143)))

(assert (= (and d!283157 c!153971) b!945618))

(assert (= (and d!283157 (not c!153971)) b!945624))

(assert (= (and b!945624 res!429670) b!945622))

(assert (= (and b!945622 c!153972) b!945623))

(assert (= (and b!945622 (not c!153972)) b!945619))

(assert (= (and b!945619 c!153970) b!945625))

(assert (= (and b!945619 (not c!153970)) b!945621))

(assert (= (and b!945625 (not res!429668)) b!945617))

(assert (= (and b!945621 c!153973) b!945620))

(assert (= (and b!945621 (not c!153973)) b!945626))

(assert (= (and b!945620 (not res!429669)) b!945616))

(assert (= (or b!945616 b!945626) bm!59138))

(assert (= (or b!945618 b!945620) bm!59139))

(declare-fun m!1160743 () Bool)

(assert (=> b!945617 m!1160743))

(declare-fun m!1160745 () Bool)

(assert (=> bm!59138 m!1160745))

(declare-fun m!1160747 () Bool)

(assert (=> b!945625 m!1160747))

(assert (=> bm!59139 m!1160403))

(assert (=> b!945056 d!283157))

(declare-fun d!283159 () Bool)

(assert (=> d!283159 (= (Exists!346 lambda!32114) (choose!5878 lambda!32114))))

(declare-fun bs!239525 () Bool)

(assert (= bs!239525 d!283159))

(declare-fun m!1160749 () Bool)

(assert (=> bs!239525 m!1160749))

(assert (=> b!945056 d!283159))

(declare-fun bs!239526 () Bool)

(declare-fun d!283161 () Bool)

(assert (= bs!239526 (and d!283161 d!283131)))

(declare-fun lambda!32154 () Int)

(assert (=> bs!239526 (not (= lambda!32154 lambda!32143))))

(assert (=> bs!239526 (= (and (= lt!343203 (reg!2924 r!15766)) (= lt!343206 (Star!2595 (reg!2924 r!15766)))) (= lambda!32154 lambda!32142))))

(declare-fun bs!239527 () Bool)

(assert (= bs!239527 (and d!283161 b!945054)))

(assert (=> bs!239527 (= (and (= lt!343203 (reg!2924 r!15766)) (= lt!343206 lt!343209)) (= lambda!32154 lambda!32111))))

(declare-fun bs!239528 () Bool)

(assert (= bs!239528 (and d!283161 d!283155)))

(assert (=> bs!239528 (= (= lt!343206 (Star!2595 lt!343203)) (= lambda!32154 lambda!32150))))

(declare-fun bs!239529 () Bool)

(assert (= bs!239529 (and d!283161 b!945616)))

(assert (=> bs!239529 (not (= lambda!32154 lambda!32152))))

(declare-fun bs!239530 () Bool)

(assert (= bs!239530 (and d!283161 b!945601)))

(assert (=> bs!239530 (not (= lambda!32154 lambda!32149))))

(declare-fun bs!239531 () Bool)

(assert (= bs!239531 (and d!283161 d!283099)))

(assert (=> bs!239531 (= (and (= lt!343203 (reg!2924 r!15766)) (= lt!343206 lt!343209)) (= lambda!32154 lambda!32127))))

(declare-fun bs!239532 () Bool)

(assert (= bs!239532 (and d!283161 b!945056)))

(assert (=> bs!239532 (not (= lambda!32154 lambda!32114))))

(assert (=> bs!239527 (not (= lambda!32154 lambda!32112))))

(declare-fun bs!239533 () Bool)

(assert (= bs!239533 (and d!283161 b!945626)))

(assert (=> bs!239533 (not (= lambda!32154 lambda!32153))))

(assert (=> bs!239528 (not (= lambda!32154 lambda!32151))))

(assert (=> bs!239532 (= lambda!32154 lambda!32113)))

(declare-fun bs!239534 () Bool)

(assert (= bs!239534 (and d!283161 b!945591)))

(assert (=> bs!239534 (not (= lambda!32154 lambda!32148))))

(assert (=> d!283161 true))

(assert (=> d!283161 true))

(assert (=> d!283161 true))

(assert (=> d!283161 (= (isDefined!1828 (findConcatSeparation!292 lt!343203 lt!343206 Nil!9809 s!10566 s!10566)) (Exists!346 lambda!32154))))

(declare-fun lt!343288 () Unit!14809)

(assert (=> d!283161 (= lt!343288 (choose!5874 lt!343203 lt!343206 s!10566))))

(assert (=> d!283161 (validRegex!1064 lt!343203)))

(assert (=> d!283161 (= (lemmaFindConcatSeparationEquivalentToExists!292 lt!343203 lt!343206 s!10566) lt!343288)))

(declare-fun bs!239535 () Bool)

(assert (= bs!239535 d!283161))

(declare-fun m!1160751 () Bool)

(assert (=> bs!239535 m!1160751))

(assert (=> bs!239535 m!1160561))

(assert (=> bs!239535 m!1160399))

(declare-fun m!1160753 () Bool)

(assert (=> bs!239535 m!1160753))

(assert (=> bs!239535 m!1160399))

(declare-fun m!1160755 () Bool)

(assert (=> bs!239535 m!1160755))

(assert (=> b!945056 d!283161))

(declare-fun d!283163 () Bool)

(assert (=> d!283163 (= (Exists!346 lambda!32113) (choose!5878 lambda!32113))))

(declare-fun bs!239536 () Bool)

(assert (= bs!239536 d!283163))

(declare-fun m!1160757 () Bool)

(assert (=> bs!239536 m!1160757))

(assert (=> b!945056 d!283163))

(declare-fun d!283165 () Bool)

(assert (=> d!283165 (= (isEmpty!6068 s!10566) ((_ is Nil!9809) s!10566))))

(assert (=> b!945056 d!283165))

(declare-fun b!945627 () Bool)

(declare-fun e!612880 () Bool)

(declare-fun lt!343291 () Option!2186)

(assert (=> b!945627 (= e!612880 (not (isDefined!1828 lt!343291)))))

(declare-fun b!945628 () Bool)

(declare-fun res!429674 () Bool)

(declare-fun e!612877 () Bool)

(assert (=> b!945628 (=> (not res!429674) (not e!612877))))

(assert (=> b!945628 (= res!429674 (matchR!1133 lt!343206 (_2!6370 (get!3274 lt!343291))))))

(declare-fun d!283167 () Bool)

(assert (=> d!283167 e!612880))

(declare-fun res!429675 () Bool)

(assert (=> d!283167 (=> res!429675 e!612880)))

(assert (=> d!283167 (= res!429675 e!612877)))

(declare-fun res!429673 () Bool)

(assert (=> d!283167 (=> (not res!429673) (not e!612877))))

(assert (=> d!283167 (= res!429673 (isDefined!1828 lt!343291))))

(declare-fun e!612879 () Option!2186)

(assert (=> d!283167 (= lt!343291 e!612879)))

(declare-fun c!153975 () Bool)

(declare-fun e!612878 () Bool)

(assert (=> d!283167 (= c!153975 e!612878)))

(declare-fun res!429672 () Bool)

(assert (=> d!283167 (=> (not res!429672) (not e!612878))))

(assert (=> d!283167 (= res!429672 (matchR!1133 lt!343203 Nil!9809))))

(assert (=> d!283167 (validRegex!1064 lt!343203)))

(assert (=> d!283167 (= (findConcatSeparation!292 lt!343203 lt!343206 Nil!9809 s!10566 s!10566) lt!343291)))

(declare-fun b!945629 () Bool)

(declare-fun e!612881 () Option!2186)

(assert (=> b!945629 (= e!612879 e!612881)))

(declare-fun c!153974 () Bool)

(assert (=> b!945629 (= c!153974 ((_ is Nil!9809) s!10566))))

(declare-fun b!945630 () Bool)

(assert (=> b!945630 (= e!612878 (matchR!1133 lt!343206 s!10566))))

(declare-fun b!945631 () Bool)

(declare-fun lt!343289 () Unit!14809)

(declare-fun lt!343290 () Unit!14809)

(assert (=> b!945631 (= lt!343289 lt!343290)))

(assert (=> b!945631 (= (++!2615 (++!2615 Nil!9809 (Cons!9809 (h!15210 s!10566) Nil!9809)) (t!100871 s!10566)) s!10566)))

(assert (=> b!945631 (= lt!343290 (lemmaMoveElementToOtherListKeepsConcatEq!228 Nil!9809 (h!15210 s!10566) (t!100871 s!10566) s!10566))))

(assert (=> b!945631 (= e!612881 (findConcatSeparation!292 lt!343203 lt!343206 (++!2615 Nil!9809 (Cons!9809 (h!15210 s!10566) Nil!9809)) (t!100871 s!10566) s!10566))))

(declare-fun b!945632 () Bool)

(declare-fun res!429671 () Bool)

(assert (=> b!945632 (=> (not res!429671) (not e!612877))))

(assert (=> b!945632 (= res!429671 (matchR!1133 lt!343203 (_1!6370 (get!3274 lt!343291))))))

(declare-fun b!945633 () Bool)

(assert (=> b!945633 (= e!612879 (Some!2185 (tuple2!11089 Nil!9809 s!10566)))))

(declare-fun b!945634 () Bool)

(assert (=> b!945634 (= e!612881 None!2185)))

(declare-fun b!945635 () Bool)

(assert (=> b!945635 (= e!612877 (= (++!2615 (_1!6370 (get!3274 lt!343291)) (_2!6370 (get!3274 lt!343291))) s!10566))))

(assert (= (and d!283167 res!429672) b!945630))

(assert (= (and d!283167 c!153975) b!945633))

(assert (= (and d!283167 (not c!153975)) b!945629))

(assert (= (and b!945629 c!153974) b!945634))

(assert (= (and b!945629 (not c!153974)) b!945631))

(assert (= (and d!283167 res!429673) b!945632))

(assert (= (and b!945632 res!429671) b!945628))

(assert (= (and b!945628 res!429674) b!945635))

(assert (= (and d!283167 (not res!429675)) b!945627))

(declare-fun m!1160759 () Bool)

(assert (=> d!283167 m!1160759))

(declare-fun m!1160761 () Bool)

(assert (=> d!283167 m!1160761))

(assert (=> d!283167 m!1160561))

(assert (=> b!945631 m!1160661))

(assert (=> b!945631 m!1160661))

(assert (=> b!945631 m!1160663))

(assert (=> b!945631 m!1160665))

(assert (=> b!945631 m!1160661))

(declare-fun m!1160763 () Bool)

(assert (=> b!945631 m!1160763))

(declare-fun m!1160765 () Bool)

(assert (=> b!945628 m!1160765))

(declare-fun m!1160767 () Bool)

(assert (=> b!945628 m!1160767))

(assert (=> b!945632 m!1160765))

(declare-fun m!1160769 () Bool)

(assert (=> b!945632 m!1160769))

(assert (=> b!945627 m!1160759))

(assert (=> b!945635 m!1160765))

(declare-fun m!1160771 () Bool)

(assert (=> b!945635 m!1160771))

(assert (=> b!945630 m!1160445))

(assert (=> b!945056 d!283167))

(declare-fun d!283169 () Bool)

(assert (=> d!283169 (= (isEmpty!6068 (_1!6370 lt!343204)) ((_ is Nil!9809) (_1!6370 lt!343204)))))

(assert (=> b!945045 d!283169))

(declare-fun d!283171 () Bool)

(declare-fun lt!343294 () Int)

(assert (=> d!283171 (>= lt!343294 0)))

(declare-fun e!612884 () Int)

(assert (=> d!283171 (= lt!343294 e!612884)))

(declare-fun c!153978 () Bool)

(assert (=> d!283171 (= c!153978 ((_ is Nil!9809) (_1!6370 lt!343204)))))

(assert (=> d!283171 (= (size!7893 (_1!6370 lt!343204)) lt!343294)))

(declare-fun b!945640 () Bool)

(assert (=> b!945640 (= e!612884 0)))

(declare-fun b!945641 () Bool)

(assert (=> b!945641 (= e!612884 (+ 1 (size!7893 (t!100871 (_1!6370 lt!343204)))))))

(assert (= (and d!283171 c!153978) b!945640))

(assert (= (and d!283171 (not c!153978)) b!945641))

(declare-fun m!1160773 () Bool)

(assert (=> b!945641 m!1160773))

(assert (=> b!945057 d!283171))

(declare-fun b!945642 () Bool)

(declare-fun e!612886 () Bool)

(declare-fun e!612889 () Bool)

(assert (=> b!945642 (= e!612886 e!612889)))

(declare-fun res!429679 () Bool)

(assert (=> b!945642 (= res!429679 (not (nullable!763 (reg!2924 (reg!2924 r!15766)))))))

(assert (=> b!945642 (=> (not res!429679) (not e!612889))))

(declare-fun d!283173 () Bool)

(declare-fun res!429676 () Bool)

(declare-fun e!612891 () Bool)

(assert (=> d!283173 (=> res!429676 e!612891)))

(assert (=> d!283173 (= res!429676 ((_ is ElementMatch!2595) (reg!2924 r!15766)))))

(assert (=> d!283173 (= (validRegex!1064 (reg!2924 r!15766)) e!612891)))

(declare-fun bm!59140 () Bool)

(declare-fun call!59147 () Bool)

(declare-fun c!153980 () Bool)

(assert (=> bm!59140 (= call!59147 (validRegex!1064 (ite c!153980 (regTwo!5703 (reg!2924 r!15766)) (regTwo!5702 (reg!2924 r!15766)))))))

(declare-fun bm!59141 () Bool)

(declare-fun call!59146 () Bool)

(declare-fun call!59145 () Bool)

(assert (=> bm!59141 (= call!59146 call!59145)))

(declare-fun b!945643 () Bool)

(declare-fun e!612885 () Bool)

(assert (=> b!945643 (= e!612885 call!59147)))

(declare-fun b!945644 () Bool)

(declare-fun res!429680 () Bool)

(declare-fun e!612888 () Bool)

(assert (=> b!945644 (=> res!429680 e!612888)))

(assert (=> b!945644 (= res!429680 (not ((_ is Concat!4428) (reg!2924 r!15766))))))

(declare-fun e!612887 () Bool)

(assert (=> b!945644 (= e!612887 e!612888)))

(declare-fun b!945645 () Bool)

(assert (=> b!945645 (= e!612889 call!59145)))

(declare-fun b!945646 () Bool)

(declare-fun e!612890 () Bool)

(assert (=> b!945646 (= e!612890 call!59147)))

(declare-fun c!153979 () Bool)

(declare-fun bm!59142 () Bool)

(assert (=> bm!59142 (= call!59145 (validRegex!1064 (ite c!153979 (reg!2924 (reg!2924 r!15766)) (ite c!153980 (regOne!5703 (reg!2924 r!15766)) (regOne!5702 (reg!2924 r!15766))))))))

(declare-fun b!945647 () Bool)

(assert (=> b!945647 (= e!612891 e!612886)))

(assert (=> b!945647 (= c!153979 ((_ is Star!2595) (reg!2924 r!15766)))))

(declare-fun b!945648 () Bool)

(assert (=> b!945648 (= e!612886 e!612887)))

(assert (=> b!945648 (= c!153980 ((_ is Union!2595) (reg!2924 r!15766)))))

(declare-fun b!945649 () Bool)

(declare-fun res!429678 () Bool)

(assert (=> b!945649 (=> (not res!429678) (not e!612890))))

(assert (=> b!945649 (= res!429678 call!59146)))

(assert (=> b!945649 (= e!612887 e!612890)))

(declare-fun b!945650 () Bool)

(assert (=> b!945650 (= e!612888 e!612885)))

(declare-fun res!429677 () Bool)

(assert (=> b!945650 (=> (not res!429677) (not e!612885))))

(assert (=> b!945650 (= res!429677 call!59146)))

(assert (= (and d!283173 (not res!429676)) b!945647))

(assert (= (and b!945647 c!153979) b!945642))

(assert (= (and b!945647 (not c!153979)) b!945648))

(assert (= (and b!945642 res!429679) b!945645))

(assert (= (and b!945648 c!153980) b!945649))

(assert (= (and b!945648 (not c!153980)) b!945644))

(assert (= (and b!945649 res!429678) b!945646))

(assert (= (and b!945644 (not res!429680)) b!945650))

(assert (= (and b!945650 res!429677) b!945643))

(assert (= (or b!945646 b!945643) bm!59140))

(assert (= (or b!945649 b!945650) bm!59141))

(assert (= (or b!945645 bm!59141) bm!59142))

(declare-fun m!1160775 () Bool)

(assert (=> b!945642 m!1160775))

(declare-fun m!1160777 () Bool)

(assert (=> bm!59140 m!1160777))

(declare-fun m!1160779 () Bool)

(assert (=> bm!59142 m!1160779))

(assert (=> b!945048 d!283173))

(declare-fun b!945651 () Bool)

(declare-fun e!612898 () Bool)

(assert (=> b!945651 (= e!612898 (nullable!763 lt!343206))))

(declare-fun b!945652 () Bool)

(declare-fun e!612893 () Bool)

(assert (=> b!945652 (= e!612893 (= (head!1725 (_2!6370 lt!343204)) (c!153836 lt!343206)))))

(declare-fun b!945653 () Bool)

(assert (=> b!945653 (= e!612898 (matchR!1133 (derivativeStep!572 lt!343206 (head!1725 (_2!6370 lt!343204))) (tail!1287 (_2!6370 lt!343204))))))

(declare-fun b!945654 () Bool)

(declare-fun e!612894 () Bool)

(declare-fun lt!343295 () Bool)

(declare-fun call!59148 () Bool)

(assert (=> b!945654 (= e!612894 (= lt!343295 call!59148))))

(declare-fun bm!59143 () Bool)

(assert (=> bm!59143 (= call!59148 (isEmpty!6068 (_2!6370 lt!343204)))))

(declare-fun b!945655 () Bool)

(declare-fun res!429685 () Bool)

(declare-fun e!612896 () Bool)

(assert (=> b!945655 (=> res!429685 e!612896)))

(assert (=> b!945655 (= res!429685 (not (isEmpty!6068 (tail!1287 (_2!6370 lt!343204)))))))

(declare-fun b!945656 () Bool)

(declare-fun e!612895 () Bool)

(assert (=> b!945656 (= e!612895 e!612896)))

(declare-fun res!429684 () Bool)

(assert (=> b!945656 (=> res!429684 e!612896)))

(assert (=> b!945656 (= res!429684 call!59148)))

(declare-fun b!945657 () Bool)

(declare-fun res!429683 () Bool)

(declare-fun e!612892 () Bool)

(assert (=> b!945657 (=> res!429683 e!612892)))

(assert (=> b!945657 (= res!429683 (not ((_ is ElementMatch!2595) lt!343206)))))

(declare-fun e!612897 () Bool)

(assert (=> b!945657 (= e!612897 e!612892)))

(declare-fun b!945659 () Bool)

(assert (=> b!945659 (= e!612892 e!612895)))

(declare-fun res!429681 () Bool)

(assert (=> b!945659 (=> (not res!429681) (not e!612895))))

(assert (=> b!945659 (= res!429681 (not lt!343295))))

(declare-fun b!945660 () Bool)

(assert (=> b!945660 (= e!612897 (not lt!343295))))

(declare-fun b!945661 () Bool)

(assert (=> b!945661 (= e!612896 (not (= (head!1725 (_2!6370 lt!343204)) (c!153836 lt!343206))))))

(declare-fun b!945662 () Bool)

(declare-fun res!429687 () Bool)

(assert (=> b!945662 (=> (not res!429687) (not e!612893))))

(assert (=> b!945662 (= res!429687 (isEmpty!6068 (tail!1287 (_2!6370 lt!343204))))))

(declare-fun b!945663 () Bool)

(declare-fun res!429688 () Bool)

(assert (=> b!945663 (=> (not res!429688) (not e!612893))))

(assert (=> b!945663 (= res!429688 (not call!59148))))

(declare-fun b!945664 () Bool)

(declare-fun res!429686 () Bool)

(assert (=> b!945664 (=> res!429686 e!612892)))

(assert (=> b!945664 (= res!429686 e!612893)))

(declare-fun res!429682 () Bool)

(assert (=> b!945664 (=> (not res!429682) (not e!612893))))

(assert (=> b!945664 (= res!429682 lt!343295)))

(declare-fun b!945658 () Bool)

(assert (=> b!945658 (= e!612894 e!612897)))

(declare-fun c!153983 () Bool)

(assert (=> b!945658 (= c!153983 ((_ is EmptyLang!2595) lt!343206))))

(declare-fun d!283175 () Bool)

(assert (=> d!283175 e!612894))

(declare-fun c!153982 () Bool)

(assert (=> d!283175 (= c!153982 ((_ is EmptyExpr!2595) lt!343206))))

(assert (=> d!283175 (= lt!343295 e!612898)))

(declare-fun c!153981 () Bool)

(assert (=> d!283175 (= c!153981 (isEmpty!6068 (_2!6370 lt!343204)))))

(assert (=> d!283175 (validRegex!1064 lt!343206)))

(assert (=> d!283175 (= (matchR!1133 lt!343206 (_2!6370 lt!343204)) lt!343295)))

(assert (= (and d!283175 c!153981) b!945651))

(assert (= (and d!283175 (not c!153981)) b!945653))

(assert (= (and d!283175 c!153982) b!945654))

(assert (= (and d!283175 (not c!153982)) b!945658))

(assert (= (and b!945658 c!153983) b!945660))

(assert (= (and b!945658 (not c!153983)) b!945657))

(assert (= (and b!945657 (not res!429683)) b!945664))

(assert (= (and b!945664 res!429682) b!945663))

(assert (= (and b!945663 res!429688) b!945662))

(assert (= (and b!945662 res!429687) b!945652))

(assert (= (and b!945664 (not res!429686)) b!945659))

(assert (= (and b!945659 res!429681) b!945656))

(assert (= (and b!945656 (not res!429684)) b!945655))

(assert (= (and b!945655 (not res!429685)) b!945661))

(assert (= (or b!945654 b!945656 b!945663) bm!59143))

(declare-fun m!1160781 () Bool)

(assert (=> bm!59143 m!1160781))

(declare-fun m!1160783 () Bool)

(assert (=> b!945661 m!1160783))

(declare-fun m!1160785 () Bool)

(assert (=> b!945662 m!1160785))

(assert (=> b!945662 m!1160785))

(declare-fun m!1160787 () Bool)

(assert (=> b!945662 m!1160787))

(assert (=> d!283175 m!1160781))

(assert (=> d!283175 m!1160707))

(assert (=> b!945652 m!1160783))

(assert (=> b!945655 m!1160785))

(assert (=> b!945655 m!1160785))

(assert (=> b!945655 m!1160787))

(assert (=> b!945653 m!1160783))

(assert (=> b!945653 m!1160783))

(declare-fun m!1160789 () Bool)

(assert (=> b!945653 m!1160789))

(assert (=> b!945653 m!1160785))

(assert (=> b!945653 m!1160789))

(assert (=> b!945653 m!1160785))

(declare-fun m!1160791 () Bool)

(assert (=> b!945653 m!1160791))

(assert (=> b!945651 m!1160713))

(assert (=> b!945050 d!283175))

(declare-fun d!283177 () Bool)

(declare-fun lt!343296 () Int)

(assert (=> d!283177 (>= lt!343296 0)))

(declare-fun e!612899 () Int)

(assert (=> d!283177 (= lt!343296 e!612899)))

(declare-fun c!153984 () Bool)

(assert (=> d!283177 (= c!153984 ((_ is Nil!9809) s!10566))))

(assert (=> d!283177 (= (size!7893 s!10566) lt!343296)))

(declare-fun b!945665 () Bool)

(assert (=> b!945665 (= e!612899 0)))

(declare-fun b!945666 () Bool)

(assert (=> b!945666 (= e!612899 (+ 1 (size!7893 (t!100871 s!10566))))))

(assert (= (and d!283177 c!153984) b!945665))

(assert (= (and d!283177 (not c!153984)) b!945666))

(declare-fun m!1160793 () Bool)

(assert (=> b!945666 m!1160793))

(assert (=> b!945049 d!283177))

(declare-fun d!283179 () Bool)

(declare-fun lt!343297 () Int)

(assert (=> d!283179 (>= lt!343297 0)))

(declare-fun e!612900 () Int)

(assert (=> d!283179 (= lt!343297 e!612900)))

(declare-fun c!153985 () Bool)

(assert (=> d!283179 (= c!153985 ((_ is Nil!9809) (_2!6370 lt!343204)))))

(assert (=> d!283179 (= (size!7893 (_2!6370 lt!343204)) lt!343297)))

(declare-fun b!945667 () Bool)

(assert (=> b!945667 (= e!612900 0)))

(declare-fun b!945668 () Bool)

(assert (=> b!945668 (= e!612900 (+ 1 (size!7893 (t!100871 (_2!6370 lt!343204)))))))

(assert (= (and d!283179 c!153985) b!945667))

(assert (= (and d!283179 (not c!153985)) b!945668))

(declare-fun m!1160795 () Bool)

(assert (=> b!945668 m!1160795))

(assert (=> b!945049 d!283179))

(declare-fun b!945669 () Bool)

(declare-fun e!612907 () Bool)

(assert (=> b!945669 (= e!612907 (nullable!763 (reg!2924 r!15766)))))

(declare-fun b!945670 () Bool)

(declare-fun e!612902 () Bool)

(assert (=> b!945670 (= e!612902 (= (head!1725 (_1!6370 lt!343204)) (c!153836 (reg!2924 r!15766))))))

(declare-fun b!945671 () Bool)

(assert (=> b!945671 (= e!612907 (matchR!1133 (derivativeStep!572 (reg!2924 r!15766) (head!1725 (_1!6370 lt!343204))) (tail!1287 (_1!6370 lt!343204))))))

(declare-fun b!945672 () Bool)

(declare-fun e!612903 () Bool)

(declare-fun lt!343298 () Bool)

(declare-fun call!59149 () Bool)

(assert (=> b!945672 (= e!612903 (= lt!343298 call!59149))))

(declare-fun bm!59144 () Bool)

(assert (=> bm!59144 (= call!59149 (isEmpty!6068 (_1!6370 lt!343204)))))

(declare-fun b!945673 () Bool)

(declare-fun res!429693 () Bool)

(declare-fun e!612905 () Bool)

(assert (=> b!945673 (=> res!429693 e!612905)))

(assert (=> b!945673 (= res!429693 (not (isEmpty!6068 (tail!1287 (_1!6370 lt!343204)))))))

(declare-fun b!945674 () Bool)

(declare-fun e!612904 () Bool)

(assert (=> b!945674 (= e!612904 e!612905)))

(declare-fun res!429692 () Bool)

(assert (=> b!945674 (=> res!429692 e!612905)))

(assert (=> b!945674 (= res!429692 call!59149)))

(declare-fun b!945675 () Bool)

(declare-fun res!429691 () Bool)

(declare-fun e!612901 () Bool)

(assert (=> b!945675 (=> res!429691 e!612901)))

(assert (=> b!945675 (= res!429691 (not ((_ is ElementMatch!2595) (reg!2924 r!15766))))))

(declare-fun e!612906 () Bool)

(assert (=> b!945675 (= e!612906 e!612901)))

(declare-fun b!945677 () Bool)

(assert (=> b!945677 (= e!612901 e!612904)))

(declare-fun res!429689 () Bool)

(assert (=> b!945677 (=> (not res!429689) (not e!612904))))

(assert (=> b!945677 (= res!429689 (not lt!343298))))

(declare-fun b!945678 () Bool)

(assert (=> b!945678 (= e!612906 (not lt!343298))))

(declare-fun b!945679 () Bool)

(assert (=> b!945679 (= e!612905 (not (= (head!1725 (_1!6370 lt!343204)) (c!153836 (reg!2924 r!15766)))))))

(declare-fun b!945680 () Bool)

(declare-fun res!429695 () Bool)

(assert (=> b!945680 (=> (not res!429695) (not e!612902))))

(assert (=> b!945680 (= res!429695 (isEmpty!6068 (tail!1287 (_1!6370 lt!343204))))))

(declare-fun b!945681 () Bool)

(declare-fun res!429696 () Bool)

(assert (=> b!945681 (=> (not res!429696) (not e!612902))))

(assert (=> b!945681 (= res!429696 (not call!59149))))

(declare-fun b!945682 () Bool)

(declare-fun res!429694 () Bool)

(assert (=> b!945682 (=> res!429694 e!612901)))

(assert (=> b!945682 (= res!429694 e!612902)))

(declare-fun res!429690 () Bool)

(assert (=> b!945682 (=> (not res!429690) (not e!612902))))

(assert (=> b!945682 (= res!429690 lt!343298)))

(declare-fun b!945676 () Bool)

(assert (=> b!945676 (= e!612903 e!612906)))

(declare-fun c!153988 () Bool)

(assert (=> b!945676 (= c!153988 ((_ is EmptyLang!2595) (reg!2924 r!15766)))))

(declare-fun d!283181 () Bool)

(assert (=> d!283181 e!612903))

(declare-fun c!153987 () Bool)

(assert (=> d!283181 (= c!153987 ((_ is EmptyExpr!2595) (reg!2924 r!15766)))))

(assert (=> d!283181 (= lt!343298 e!612907)))

(declare-fun c!153986 () Bool)

(assert (=> d!283181 (= c!153986 (isEmpty!6068 (_1!6370 lt!343204)))))

(assert (=> d!283181 (validRegex!1064 (reg!2924 r!15766))))

(assert (=> d!283181 (= (matchR!1133 (reg!2924 r!15766) (_1!6370 lt!343204)) lt!343298)))

(assert (= (and d!283181 c!153986) b!945669))

(assert (= (and d!283181 (not c!153986)) b!945671))

(assert (= (and d!283181 c!153987) b!945672))

(assert (= (and d!283181 (not c!153987)) b!945676))

(assert (= (and b!945676 c!153988) b!945678))

(assert (= (and b!945676 (not c!153988)) b!945675))

(assert (= (and b!945675 (not res!429691)) b!945682))

(assert (= (and b!945682 res!429690) b!945681))

(assert (= (and b!945681 res!429696) b!945680))

(assert (= (and b!945680 res!429695) b!945670))

(assert (= (and b!945682 (not res!429694)) b!945677))

(assert (= (and b!945677 res!429689) b!945674))

(assert (= (and b!945674 (not res!429692)) b!945673))

(assert (= (and b!945673 (not res!429693)) b!945679))

(assert (= (or b!945672 b!945674 b!945681) bm!59144))

(assert (=> bm!59144 m!1160425))

(assert (=> b!945679 m!1160555))

(assert (=> b!945680 m!1160557))

(assert (=> b!945680 m!1160557))

(assert (=> b!945680 m!1160559))

(assert (=> d!283181 m!1160425))

(assert (=> d!283181 m!1160427))

(assert (=> b!945670 m!1160555))

(assert (=> b!945673 m!1160557))

(assert (=> b!945673 m!1160557))

(assert (=> b!945673 m!1160559))

(assert (=> b!945671 m!1160555))

(assert (=> b!945671 m!1160555))

(declare-fun m!1160797 () Bool)

(assert (=> b!945671 m!1160797))

(assert (=> b!945671 m!1160557))

(assert (=> b!945671 m!1160797))

(assert (=> b!945671 m!1160557))

(declare-fun m!1160799 () Bool)

(assert (=> b!945671 m!1160799))

(assert (=> b!945669 m!1160693))

(assert (=> b!945049 d!283181))

(declare-fun d!283183 () Bool)

(assert (=> d!283183 (= (matchR!1133 (reg!2924 r!15766) (_1!6370 lt!343204)) (matchR!1133 (removeUselessConcat!264 (reg!2924 r!15766)) (_1!6370 lt!343204)))))

(declare-fun lt!343301 () Unit!14809)

(declare-fun choose!5880 (Regex!2595 List!9825) Unit!14809)

(assert (=> d!283183 (= lt!343301 (choose!5880 (reg!2924 r!15766) (_1!6370 lt!343204)))))

(assert (=> d!283183 (validRegex!1064 (reg!2924 r!15766))))

(assert (=> d!283183 (= (lemmaRemoveUselessConcatSound!130 (reg!2924 r!15766) (_1!6370 lt!343204)) lt!343301)))

(declare-fun bs!239537 () Bool)

(assert (= bs!239537 d!283183))

(assert (=> bs!239537 m!1160393))

(assert (=> bs!239537 m!1160443))

(assert (=> bs!239537 m!1160443))

(declare-fun m!1160801 () Bool)

(assert (=> bs!239537 m!1160801))

(assert (=> bs!239537 m!1160427))

(declare-fun m!1160803 () Bool)

(assert (=> bs!239537 m!1160803))

(assert (=> b!945049 d!283183))

(declare-fun b!945694 () Bool)

(declare-fun e!612910 () Bool)

(declare-fun tp!291885 () Bool)

(declare-fun tp!291887 () Bool)

(assert (=> b!945694 (= e!612910 (and tp!291885 tp!291887))))

(declare-fun b!945693 () Bool)

(assert (=> b!945693 (= e!612910 tp_is_empty!4833)))

(declare-fun b!945696 () Bool)

(declare-fun tp!291886 () Bool)

(declare-fun tp!291889 () Bool)

(assert (=> b!945696 (= e!612910 (and tp!291886 tp!291889))))

(assert (=> b!945047 (= tp!291836 e!612910)))

(declare-fun b!945695 () Bool)

(declare-fun tp!291888 () Bool)

(assert (=> b!945695 (= e!612910 tp!291888)))

(assert (= (and b!945047 ((_ is ElementMatch!2595) (regOne!5703 r!15766))) b!945693))

(assert (= (and b!945047 ((_ is Concat!4428) (regOne!5703 r!15766))) b!945694))

(assert (= (and b!945047 ((_ is Star!2595) (regOne!5703 r!15766))) b!945695))

(assert (= (and b!945047 ((_ is Union!2595) (regOne!5703 r!15766))) b!945696))

(declare-fun b!945698 () Bool)

(declare-fun e!612911 () Bool)

(declare-fun tp!291890 () Bool)

(declare-fun tp!291892 () Bool)

(assert (=> b!945698 (= e!612911 (and tp!291890 tp!291892))))

(declare-fun b!945697 () Bool)

(assert (=> b!945697 (= e!612911 tp_is_empty!4833)))

(declare-fun b!945700 () Bool)

(declare-fun tp!291891 () Bool)

(declare-fun tp!291894 () Bool)

(assert (=> b!945700 (= e!612911 (and tp!291891 tp!291894))))

(assert (=> b!945047 (= tp!291832 e!612911)))

(declare-fun b!945699 () Bool)

(declare-fun tp!291893 () Bool)

(assert (=> b!945699 (= e!612911 tp!291893)))

(assert (= (and b!945047 ((_ is ElementMatch!2595) (regTwo!5703 r!15766))) b!945697))

(assert (= (and b!945047 ((_ is Concat!4428) (regTwo!5703 r!15766))) b!945698))

(assert (= (and b!945047 ((_ is Star!2595) (regTwo!5703 r!15766))) b!945699))

(assert (= (and b!945047 ((_ is Union!2595) (regTwo!5703 r!15766))) b!945700))

(declare-fun b!945702 () Bool)

(declare-fun e!612912 () Bool)

(declare-fun tp!291895 () Bool)

(declare-fun tp!291897 () Bool)

(assert (=> b!945702 (= e!612912 (and tp!291895 tp!291897))))

(declare-fun b!945701 () Bool)

(assert (=> b!945701 (= e!612912 tp_is_empty!4833)))

(declare-fun b!945704 () Bool)

(declare-fun tp!291896 () Bool)

(declare-fun tp!291899 () Bool)

(assert (=> b!945704 (= e!612912 (and tp!291896 tp!291899))))

(assert (=> b!945043 (= tp!291835 e!612912)))

(declare-fun b!945703 () Bool)

(declare-fun tp!291898 () Bool)

(assert (=> b!945703 (= e!612912 tp!291898)))

(assert (= (and b!945043 ((_ is ElementMatch!2595) (reg!2924 r!15766))) b!945701))

(assert (= (and b!945043 ((_ is Concat!4428) (reg!2924 r!15766))) b!945702))

(assert (= (and b!945043 ((_ is Star!2595) (reg!2924 r!15766))) b!945703))

(assert (= (and b!945043 ((_ is Union!2595) (reg!2924 r!15766))) b!945704))

(declare-fun b!945709 () Bool)

(declare-fun e!612915 () Bool)

(declare-fun tp!291902 () Bool)

(assert (=> b!945709 (= e!612915 (and tp_is_empty!4833 tp!291902))))

(assert (=> b!945053 (= tp!291834 e!612915)))

(assert (= (and b!945053 ((_ is Cons!9809) (t!100871 s!10566))) b!945709))

(declare-fun b!945711 () Bool)

(declare-fun e!612916 () Bool)

(declare-fun tp!291903 () Bool)

(declare-fun tp!291905 () Bool)

(assert (=> b!945711 (= e!612916 (and tp!291903 tp!291905))))

(declare-fun b!945710 () Bool)

(assert (=> b!945710 (= e!612916 tp_is_empty!4833)))

(declare-fun b!945713 () Bool)

(declare-fun tp!291904 () Bool)

(declare-fun tp!291907 () Bool)

(assert (=> b!945713 (= e!612916 (and tp!291904 tp!291907))))

(assert (=> b!945044 (= tp!291833 e!612916)))

(declare-fun b!945712 () Bool)

(declare-fun tp!291906 () Bool)

(assert (=> b!945712 (= e!612916 tp!291906)))

(assert (= (and b!945044 ((_ is ElementMatch!2595) (regOne!5702 r!15766))) b!945710))

(assert (= (and b!945044 ((_ is Concat!4428) (regOne!5702 r!15766))) b!945711))

(assert (= (and b!945044 ((_ is Star!2595) (regOne!5702 r!15766))) b!945712))

(assert (= (and b!945044 ((_ is Union!2595) (regOne!5702 r!15766))) b!945713))

(declare-fun b!945715 () Bool)

(declare-fun e!612917 () Bool)

(declare-fun tp!291908 () Bool)

(declare-fun tp!291910 () Bool)

(assert (=> b!945715 (= e!612917 (and tp!291908 tp!291910))))

(declare-fun b!945714 () Bool)

(assert (=> b!945714 (= e!612917 tp_is_empty!4833)))

(declare-fun b!945717 () Bool)

(declare-fun tp!291909 () Bool)

(declare-fun tp!291912 () Bool)

(assert (=> b!945717 (= e!612917 (and tp!291909 tp!291912))))

(assert (=> b!945044 (= tp!291831 e!612917)))

(declare-fun b!945716 () Bool)

(declare-fun tp!291911 () Bool)

(assert (=> b!945716 (= e!612917 tp!291911)))

(assert (= (and b!945044 ((_ is ElementMatch!2595) (regTwo!5702 r!15766))) b!945714))

(assert (= (and b!945044 ((_ is Concat!4428) (regTwo!5702 r!15766))) b!945715))

(assert (= (and b!945044 ((_ is Star!2595) (regTwo!5702 r!15766))) b!945716))

(assert (= (and b!945044 ((_ is Union!2595) (regTwo!5702 r!15766))) b!945717))

(check-sat (not b!945679) (not b!945519) (not b!945628) (not b!945301) (not b!945613) (not b!945602) (not b!945702) (not bm!59088) (not b!945669) (not b!945612) (not b!945190) (not b!945653) (not b!945713) (not bm!59139) (not bm!59136) (not b!945711) (not b!945517) (not b!945704) (not bm!59144) (not d!283099) (not b!945630) (not b!945606) (not d!283161) (not b!945709) (not b!945712) (not b!945652) (not b!945617) (not b!945191) (not bm!59137) (not b!945694) (not b!945716) (not b!945695) (not b!945518) (not b!945642) (not b!945715) (not bm!59121) (not d!283167) (not b!945631) (not d!283175) (not b!945550) (not b!945432) (not bm!59117) (not b!945435) (not b!945668) (not d!283071) (not d!283181) (not b!945696) (not b!945431) (not d!283131) (not d!283137) (not d!283183) (not b!945529) (not b!945625) (not b!945641) (not bm!59130) (not bm!59120) (not b!945311) (not b!945655) (not b!945661) (not d!283153) (not b!945302) (not d!283133) (not b!945671) (not b!945666) (not b!945632) (not d!283151) (not d!283103) (not d!283139) (not b!945522) (not bm!59135) (not b!945673) (not bm!59140) (not b!945434) (not b!945312) (not b!945520) (not b!945699) (not bm!59142) (not d!283163) (not b!945439) (not b!945651) (not b!945603) (not b!945604) (not d!283159) (not d!283155) (not bm!59138) (not d!283149) (not b!945627) (not d!283141) (not bm!59128) tp_is_empty!4833 (not b!945305) (not d!283135) (not b!945528) (not b!945662) (not d!283075) (not b!945700) (not bm!59143) (not b!945680) (not b!945303) (not b!945698) (not b!945600) (not d!283147) (not b!945717) (not b!945703) (not b!945670) (not b!945592) (not b!945436) (not b!945635))
(check-sat)
