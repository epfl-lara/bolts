; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!83054 () Bool)

(assert start!83054)

(declare-fun b!926054 () Bool)

(assert (=> b!926054 true))

(assert (=> b!926054 true))

(declare-fun lambda!30616 () Int)

(declare-fun lambda!30615 () Int)

(assert (=> b!926054 (not (= lambda!30616 lambda!30615))))

(assert (=> b!926054 true))

(assert (=> b!926054 true))

(declare-fun bs!237549 () Bool)

(declare-fun b!926050 () Bool)

(assert (= bs!237549 (and b!926050 b!926054)))

(declare-datatypes ((C!5568 0))(
  ( (C!5569 (val!3032 Int)) )
))
(declare-datatypes ((Regex!2499 0))(
  ( (ElementMatch!2499 (c!150318 C!5568)) (Concat!4332 (regOne!5510 Regex!2499) (regTwo!5510 Regex!2499)) (EmptyExpr!2499) (Star!2499 (reg!2828 Regex!2499)) (EmptyLang!2499) (Union!2499 (regOne!5511 Regex!2499) (regTwo!5511 Regex!2499)) )
))
(declare-fun lt!339659 () Regex!2499)

(declare-fun r!15766 () Regex!2499)

(declare-fun lambda!30617 () Int)

(declare-fun lt!339668 () Regex!2499)

(assert (=> bs!237549 (= (and (= lt!339668 (regOne!5510 r!15766)) (= lt!339659 (regTwo!5510 r!15766))) (= lambda!30617 lambda!30615))))

(assert (=> bs!237549 (not (= lambda!30617 lambda!30616))))

(assert (=> b!926050 true))

(assert (=> b!926050 true))

(assert (=> b!926050 true))

(declare-fun lambda!30618 () Int)

(assert (=> bs!237549 (not (= lambda!30618 lambda!30615))))

(assert (=> bs!237549 (= (and (= lt!339668 (regOne!5510 r!15766)) (= lt!339659 (regTwo!5510 r!15766))) (= lambda!30618 lambda!30616))))

(assert (=> b!926050 (not (= lambda!30618 lambda!30617))))

(assert (=> b!926050 true))

(assert (=> b!926050 true))

(assert (=> b!926050 true))

(declare-fun res!421099 () Bool)

(declare-fun e!602426 () Bool)

(assert (=> start!83054 (=> (not res!421099) (not e!602426))))

(declare-fun validRegex!968 (Regex!2499) Bool)

(assert (=> start!83054 (= res!421099 (validRegex!968 r!15766))))

(assert (=> start!83054 e!602426))

(declare-fun e!602424 () Bool)

(assert (=> start!83054 e!602424))

(declare-fun e!602425 () Bool)

(assert (=> start!83054 e!602425))

(declare-fun b!926048 () Bool)

(declare-fun tp!287823 () Bool)

(declare-fun tp!287824 () Bool)

(assert (=> b!926048 (= e!602424 (and tp!287823 tp!287824))))

(declare-fun b!926049 () Bool)

(declare-fun e!602429 () Bool)

(assert (=> b!926049 (= e!602429 true)))

(declare-datatypes ((List!9729 0))(
  ( (Nil!9713) (Cons!9713 (h!15114 C!5568) (t!100775 List!9729)) )
))
(declare-datatypes ((tuple2!10984 0))(
  ( (tuple2!10985 (_1!6318 List!9729) (_2!6318 List!9729)) )
))
(declare-fun lt!339665 () tuple2!10984)

(declare-fun matchR!1037 (Regex!2499 List!9729) Bool)

(declare-fun ++!2579 (List!9729 List!9729) List!9729)

(assert (=> b!926049 (matchR!1037 (Concat!4332 (regOne!5510 r!15766) (regTwo!5510 r!15766)) (++!2579 (_1!6318 lt!339665) (_2!6318 lt!339665)))))

(declare-datatypes ((Unit!14617 0))(
  ( (Unit!14618) )
))
(declare-fun lt!339670 () Unit!14617)

(declare-fun lemmaTwoRegexMatchThenConcatMatchesConcatString!6 (Regex!2499 Regex!2499 List!9729 List!9729) Unit!14617)

(assert (=> b!926049 (= lt!339670 (lemmaTwoRegexMatchThenConcatMatchesConcatString!6 (regOne!5510 r!15766) (regTwo!5510 r!15766) (_1!6318 lt!339665) (_2!6318 lt!339665)))))

(assert (=> b!926049 (= (matchR!1037 (regTwo!5510 r!15766) (_2!6318 lt!339665)) (matchR!1037 lt!339659 (_2!6318 lt!339665)))))

(declare-fun lt!339671 () Unit!14617)

(declare-fun lemmaRemoveUselessConcatSound!114 (Regex!2499 List!9729) Unit!14617)

(assert (=> b!926049 (= lt!339671 (lemmaRemoveUselessConcatSound!114 (regTwo!5510 r!15766) (_2!6318 lt!339665)))))

(assert (=> b!926049 (= (matchR!1037 (regOne!5510 r!15766) (_1!6318 lt!339665)) (matchR!1037 lt!339668 (_1!6318 lt!339665)))))

(declare-fun lt!339661 () Unit!14617)

(assert (=> b!926049 (= lt!339661 (lemmaRemoveUselessConcatSound!114 (regOne!5510 r!15766) (_1!6318 lt!339665)))))

(declare-datatypes ((Option!2134 0))(
  ( (None!2133) (Some!2133 (v!19550 tuple2!10984)) )
))
(declare-fun lt!339658 () Option!2134)

(declare-fun get!3188 (Option!2134) tuple2!10984)

(assert (=> b!926049 (= lt!339665 (get!3188 lt!339658))))

(declare-fun e!602428 () Bool)

(assert (=> b!926050 (= e!602428 e!602429)))

(declare-fun res!421102 () Bool)

(assert (=> b!926050 (=> res!421102 e!602429)))

(declare-fun lt!339667 () Bool)

(assert (=> b!926050 (= res!421102 (not lt!339667))))

(declare-fun Exists!270 (Int) Bool)

(assert (=> b!926050 (= (Exists!270 lambda!30617) (Exists!270 lambda!30618))))

(declare-fun lt!339666 () Unit!14617)

(declare-fun s!10566 () List!9729)

(declare-fun lemmaExistCutMatchRandMatchRSpecEquivalent!182 (Regex!2499 Regex!2499 List!9729) Unit!14617)

(assert (=> b!926050 (= lt!339666 (lemmaExistCutMatchRandMatchRSpecEquivalent!182 lt!339668 lt!339659 s!10566))))

(assert (=> b!926050 (= lt!339667 (Exists!270 lambda!30617))))

(declare-fun isDefined!1776 (Option!2134) Bool)

(assert (=> b!926050 (= lt!339667 (isDefined!1776 lt!339658))))

(declare-fun findConcatSeparation!240 (Regex!2499 Regex!2499 List!9729 List!9729 List!9729) Option!2134)

(assert (=> b!926050 (= lt!339658 (findConcatSeparation!240 lt!339668 lt!339659 Nil!9713 s!10566 s!10566))))

(declare-fun lt!339664 () Unit!14617)

(declare-fun lemmaFindConcatSeparationEquivalentToExists!240 (Regex!2499 Regex!2499 List!9729) Unit!14617)

(assert (=> b!926050 (= lt!339664 (lemmaFindConcatSeparationEquivalentToExists!240 lt!339668 lt!339659 s!10566))))

(declare-fun lt!339660 () Regex!2499)

(declare-fun matchRSpec!300 (Regex!2499 List!9729) Bool)

(assert (=> b!926050 (matchRSpec!300 lt!339660 s!10566)))

(declare-fun lt!339669 () Unit!14617)

(declare-fun mainMatchTheorem!300 (Regex!2499 List!9729) Unit!14617)

(assert (=> b!926050 (= lt!339669 (mainMatchTheorem!300 lt!339660 s!10566))))

(declare-fun b!926051 () Bool)

(declare-fun tp!287826 () Bool)

(declare-fun tp!287828 () Bool)

(assert (=> b!926051 (= e!602424 (and tp!287826 tp!287828))))

(declare-fun b!926052 () Bool)

(declare-fun tp_is_empty!4641 () Bool)

(assert (=> b!926052 (= e!602424 tp_is_empty!4641)))

(declare-fun b!926053 () Bool)

(declare-fun tp!287827 () Bool)

(assert (=> b!926053 (= e!602424 tp!287827)))

(declare-fun e!602423 () Bool)

(declare-fun e!602427 () Bool)

(assert (=> b!926054 (= e!602423 e!602427)))

(declare-fun res!421100 () Bool)

(assert (=> b!926054 (=> res!421100 e!602427)))

(declare-fun isEmpty!5970 (List!9729) Bool)

(assert (=> b!926054 (= res!421100 (isEmpty!5970 s!10566))))

(assert (=> b!926054 (= (Exists!270 lambda!30615) (Exists!270 lambda!30616))))

(declare-fun lt!339656 () Unit!14617)

(assert (=> b!926054 (= lt!339656 (lemmaExistCutMatchRandMatchRSpecEquivalent!182 (regOne!5510 r!15766) (regTwo!5510 r!15766) s!10566))))

(assert (=> b!926054 (= (isDefined!1776 (findConcatSeparation!240 (regOne!5510 r!15766) (regTwo!5510 r!15766) Nil!9713 s!10566 s!10566)) (Exists!270 lambda!30615))))

(declare-fun lt!339663 () Unit!14617)

(assert (=> b!926054 (= lt!339663 (lemmaFindConcatSeparationEquivalentToExists!240 (regOne!5510 r!15766) (regTwo!5510 r!15766) s!10566))))

(declare-fun b!926055 () Bool)

(declare-fun tp!287825 () Bool)

(assert (=> b!926055 (= e!602425 (and tp_is_empty!4641 tp!287825))))

(declare-fun b!926056 () Bool)

(assert (=> b!926056 (= e!602426 (not e!602423))))

(declare-fun res!421101 () Bool)

(assert (=> b!926056 (=> res!421101 e!602423)))

(declare-fun lt!339662 () Bool)

(get-info :version)

(assert (=> b!926056 (= res!421101 (or lt!339662 (and ((_ is Concat!4332) r!15766) ((_ is EmptyExpr!2499) (regOne!5510 r!15766))) (and ((_ is Concat!4332) r!15766) ((_ is EmptyExpr!2499) (regTwo!5510 r!15766))) (not ((_ is Concat!4332) r!15766))))))

(assert (=> b!926056 (= lt!339662 (matchRSpec!300 r!15766 s!10566))))

(assert (=> b!926056 (= lt!339662 (matchR!1037 r!15766 s!10566))))

(declare-fun lt!339657 () Unit!14617)

(assert (=> b!926056 (= lt!339657 (mainMatchTheorem!300 r!15766 s!10566))))

(declare-fun b!926057 () Bool)

(assert (=> b!926057 (= e!602427 e!602428)))

(declare-fun res!421098 () Bool)

(assert (=> b!926057 (=> res!421098 e!602428)))

(assert (=> b!926057 (= res!421098 (not (matchR!1037 lt!339660 s!10566)))))

(assert (=> b!926057 (= lt!339660 (Concat!4332 lt!339668 lt!339659))))

(declare-fun removeUselessConcat!176 (Regex!2499) Regex!2499)

(assert (=> b!926057 (= lt!339659 (removeUselessConcat!176 (regTwo!5510 r!15766)))))

(assert (=> b!926057 (= lt!339668 (removeUselessConcat!176 (regOne!5510 r!15766)))))

(assert (= (and start!83054 res!421099) b!926056))

(assert (= (and b!926056 (not res!421101)) b!926054))

(assert (= (and b!926054 (not res!421100)) b!926057))

(assert (= (and b!926057 (not res!421098)) b!926050))

(assert (= (and b!926050 (not res!421102)) b!926049))

(assert (= (and start!83054 ((_ is ElementMatch!2499) r!15766)) b!926052))

(assert (= (and start!83054 ((_ is Concat!4332) r!15766)) b!926048))

(assert (= (and start!83054 ((_ is Star!2499) r!15766)) b!926053))

(assert (= (and start!83054 ((_ is Union!2499) r!15766)) b!926051))

(assert (= (and start!83054 ((_ is Cons!9713) s!10566)) b!926055))

(declare-fun m!1151301 () Bool)

(assert (=> start!83054 m!1151301))

(declare-fun m!1151303 () Bool)

(assert (=> b!926056 m!1151303))

(declare-fun m!1151305 () Bool)

(assert (=> b!926056 m!1151305))

(declare-fun m!1151307 () Bool)

(assert (=> b!926056 m!1151307))

(declare-fun m!1151309 () Bool)

(assert (=> b!926057 m!1151309))

(declare-fun m!1151311 () Bool)

(assert (=> b!926057 m!1151311))

(declare-fun m!1151313 () Bool)

(assert (=> b!926057 m!1151313))

(declare-fun m!1151315 () Bool)

(assert (=> b!926054 m!1151315))

(declare-fun m!1151317 () Bool)

(assert (=> b!926054 m!1151317))

(declare-fun m!1151319 () Bool)

(assert (=> b!926054 m!1151319))

(declare-fun m!1151321 () Bool)

(assert (=> b!926054 m!1151321))

(declare-fun m!1151323 () Bool)

(assert (=> b!926054 m!1151323))

(declare-fun m!1151325 () Bool)

(assert (=> b!926054 m!1151325))

(declare-fun m!1151327 () Bool)

(assert (=> b!926054 m!1151327))

(assert (=> b!926054 m!1151315))

(assert (=> b!926054 m!1151319))

(declare-fun m!1151329 () Bool)

(assert (=> b!926049 m!1151329))

(declare-fun m!1151331 () Bool)

(assert (=> b!926049 m!1151331))

(declare-fun m!1151333 () Bool)

(assert (=> b!926049 m!1151333))

(declare-fun m!1151335 () Bool)

(assert (=> b!926049 m!1151335))

(declare-fun m!1151337 () Bool)

(assert (=> b!926049 m!1151337))

(declare-fun m!1151339 () Bool)

(assert (=> b!926049 m!1151339))

(declare-fun m!1151341 () Bool)

(assert (=> b!926049 m!1151341))

(declare-fun m!1151343 () Bool)

(assert (=> b!926049 m!1151343))

(declare-fun m!1151345 () Bool)

(assert (=> b!926049 m!1151345))

(assert (=> b!926049 m!1151331))

(declare-fun m!1151347 () Bool)

(assert (=> b!926049 m!1151347))

(declare-fun m!1151349 () Bool)

(assert (=> b!926050 m!1151349))

(declare-fun m!1151351 () Bool)

(assert (=> b!926050 m!1151351))

(declare-fun m!1151353 () Bool)

(assert (=> b!926050 m!1151353))

(assert (=> b!926050 m!1151349))

(declare-fun m!1151355 () Bool)

(assert (=> b!926050 m!1151355))

(declare-fun m!1151357 () Bool)

(assert (=> b!926050 m!1151357))

(declare-fun m!1151359 () Bool)

(assert (=> b!926050 m!1151359))

(declare-fun m!1151361 () Bool)

(assert (=> b!926050 m!1151361))

(declare-fun m!1151363 () Bool)

(assert (=> b!926050 m!1151363))

(check-sat (not b!926048) (not b!926055) (not b!926053) (not b!926054) (not b!926056) (not b!926049) (not b!926051) (not b!926050) (not start!83054) (not b!926057) tp_is_empty!4641)
(check-sat)
