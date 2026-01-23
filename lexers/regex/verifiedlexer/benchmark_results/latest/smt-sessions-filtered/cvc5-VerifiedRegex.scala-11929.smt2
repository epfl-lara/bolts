; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!668116 () Bool)

(assert start!668116)

(declare-fun res!2841517 () Bool)

(declare-fun e!4187009 () Bool)

(assert (=> start!668116 (=> (not res!2841517) (not e!4187009))))

(declare-datatypes ((C!34478 0))(
  ( (C!34479 (val!26941 Int)) )
))
(declare-datatypes ((Regex!17104 0))(
  ( (ElementMatch!17104 (c!1291244 C!34478)) (Concat!25949 (regOne!34720 Regex!17104) (regTwo!34720 Regex!17104)) (EmptyExpr!17104) (Star!17104 (reg!17433 Regex!17104)) (EmptyLang!17104) (Union!17104 (regOne!34721 Regex!17104) (regTwo!34721 Regex!17104)) )
))
(declare-datatypes ((List!66893 0))(
  ( (Nil!66769) (Cons!66769 (h!73217 Regex!17104) (t!380636 List!66893)) )
))
(declare-fun l!9142 () List!66893)

(declare-fun lambda!397385 () Int)

(declare-fun forall!15975 (List!66893 Int) Bool)

(assert (=> start!668116 (= res!2841517 (forall!15975 l!9142 lambda!397385))))

(assert (=> start!668116 e!4187009))

(declare-fun e!4187008 () Bool)

(assert (=> start!668116 e!4187008))

(declare-fun e!4187007 () Bool)

(assert (=> start!668116 e!4187007))

(declare-fun e!4187011 () Bool)

(assert (=> start!668116 e!4187011))

(declare-fun b!6964256 () Bool)

(declare-fun tp_is_empty!43433 () Bool)

(assert (=> b!6964256 (= e!4187007 tp_is_empty!43433)))

(declare-fun b!6964257 () Bool)

(declare-fun tp!1920467 () Bool)

(assert (=> b!6964257 (= e!4187011 (and tp_is_empty!43433 tp!1920467))))

(declare-fun b!6964258 () Bool)

(declare-fun res!2841519 () Bool)

(assert (=> b!6964258 (=> (not res!2841519) (not e!4187009))))

(declare-fun r!13765 () Regex!17104)

(declare-fun generalisedUnion!2579 (List!66893) Regex!17104)

(assert (=> b!6964258 (= res!2841519 (= r!13765 (generalisedUnion!2579 l!9142)))))

(declare-fun b!6964259 () Bool)

(declare-fun tp!1920465 () Bool)

(declare-fun tp!1920469 () Bool)

(assert (=> b!6964259 (= e!4187007 (and tp!1920465 tp!1920469))))

(declare-fun b!6964260 () Bool)

(declare-fun e!4187010 () Bool)

(declare-fun validRegex!8790 (Regex!17104) Bool)

(assert (=> b!6964260 (= e!4187010 (validRegex!8790 r!13765))))

(declare-fun b!6964261 () Bool)

(declare-fun tp!1920464 () Bool)

(assert (=> b!6964261 (= e!4187007 tp!1920464)))

(declare-fun b!6964262 () Bool)

(assert (=> b!6964262 (= e!4187009 (not e!4187010))))

(declare-fun res!2841518 () Bool)

(assert (=> b!6964262 (=> res!2841518 e!4187010)))

(assert (=> b!6964262 (= res!2841518 (is-Union!17104 r!13765))))

(declare-datatypes ((List!66894 0))(
  ( (Nil!66770) (Cons!66770 (h!73218 C!34478) (t!380637 List!66894)) )
))
(declare-fun s!9351 () List!66894)

(declare-fun matchR!9210 (Regex!17104 List!66894) Bool)

(declare-fun matchRSpec!4125 (Regex!17104 List!66894) Bool)

(assert (=> b!6964262 (= (matchR!9210 r!13765 s!9351) (matchRSpec!4125 r!13765 s!9351))))

(declare-datatypes ((Unit!160868 0))(
  ( (Unit!160869) )
))
(declare-fun lt!2479274 () Unit!160868)

(declare-fun mainMatchTheorem!4119 (Regex!17104 List!66894) Unit!160868)

(assert (=> b!6964262 (= lt!2479274 (mainMatchTheorem!4119 r!13765 s!9351))))

(declare-fun b!6964263 () Bool)

(declare-fun tp!1920466 () Bool)

(declare-fun tp!1920463 () Bool)

(assert (=> b!6964263 (= e!4187008 (and tp!1920466 tp!1920463))))

(declare-fun b!6964264 () Bool)

(declare-fun tp!1920462 () Bool)

(declare-fun tp!1920468 () Bool)

(assert (=> b!6964264 (= e!4187007 (and tp!1920462 tp!1920468))))

(assert (= (and start!668116 res!2841517) b!6964258))

(assert (= (and b!6964258 res!2841519) b!6964262))

(assert (= (and b!6964262 (not res!2841518)) b!6964260))

(assert (= (and start!668116 (is-Cons!66769 l!9142)) b!6964263))

(assert (= (and start!668116 (is-ElementMatch!17104 r!13765)) b!6964256))

(assert (= (and start!668116 (is-Concat!25949 r!13765)) b!6964259))

(assert (= (and start!668116 (is-Star!17104 r!13765)) b!6964261))

(assert (= (and start!668116 (is-Union!17104 r!13765)) b!6964264))

(assert (= (and start!668116 (is-Cons!66770 s!9351)) b!6964257))

(declare-fun m!7657444 () Bool)

(assert (=> start!668116 m!7657444))

(declare-fun m!7657446 () Bool)

(assert (=> b!6964258 m!7657446))

(declare-fun m!7657448 () Bool)

(assert (=> b!6964260 m!7657448))

(declare-fun m!7657450 () Bool)

(assert (=> b!6964262 m!7657450))

(declare-fun m!7657452 () Bool)

(assert (=> b!6964262 m!7657452))

(declare-fun m!7657454 () Bool)

(assert (=> b!6964262 m!7657454))

(push 1)

(assert (not b!6964259))

(assert (not b!6964261))

(assert (not b!6964257))

(assert (not b!6964263))

(assert (not b!6964260))

(assert (not b!6964258))

(assert (not start!668116))

(assert (not b!6964262))

(assert tp_is_empty!43433)

(assert (not b!6964264))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun bs!1858586 () Bool)

(declare-fun d!2170390 () Bool)

(assert (= bs!1858586 (and d!2170390 start!668116)))

(declare-fun lambda!397391 () Int)

(assert (=> bs!1858586 (= lambda!397391 lambda!397385)))

(declare-fun b!6964316 () Bool)

(declare-fun e!4187045 () Bool)

(declare-fun lt!2479280 () Regex!17104)

(declare-fun isUnion!1475 (Regex!17104) Bool)

(assert (=> b!6964316 (= e!4187045 (isUnion!1475 lt!2479280))))

(declare-fun b!6964317 () Bool)

(declare-fun e!4187047 () Bool)

(assert (=> b!6964317 (= e!4187047 e!4187045)))

(declare-fun c!1291257 () Bool)

(declare-fun isEmpty!38979 (List!66893) Bool)

(declare-fun tail!13060 (List!66893) List!66893)

(assert (=> b!6964317 (= c!1291257 (isEmpty!38979 (tail!13060 l!9142)))))

(declare-fun b!6964318 () Bool)

(declare-fun e!4187046 () Bool)

(assert (=> b!6964318 (= e!4187046 (isEmpty!38979 (t!380636 l!9142)))))

(declare-fun b!6964319 () Bool)

(declare-fun isEmptyLang!2047 (Regex!17104) Bool)

(assert (=> b!6964319 (= e!4187047 (isEmptyLang!2047 lt!2479280))))

(declare-fun b!6964320 () Bool)

(declare-fun e!4187048 () Bool)

(assert (=> b!6964320 (= e!4187048 e!4187047)))

(declare-fun c!1291255 () Bool)

(assert (=> b!6964320 (= c!1291255 (isEmpty!38979 l!9142))))

(declare-fun b!6964321 () Bool)

(declare-fun e!4187044 () Regex!17104)

(assert (=> b!6964321 (= e!4187044 (h!73217 l!9142))))

(declare-fun b!6964322 () Bool)

(declare-fun e!4187043 () Regex!17104)

(assert (=> b!6964322 (= e!4187043 (Union!17104 (h!73217 l!9142) (generalisedUnion!2579 (t!380636 l!9142))))))

(declare-fun b!6964323 () Bool)

(assert (=> b!6964323 (= e!4187044 e!4187043)))

(declare-fun c!1291256 () Bool)

(assert (=> b!6964323 (= c!1291256 (is-Cons!66769 l!9142))))

(declare-fun b!6964324 () Bool)

(declare-fun head!13992 (List!66893) Regex!17104)

(assert (=> b!6964324 (= e!4187045 (= lt!2479280 (head!13992 l!9142)))))

(assert (=> d!2170390 e!4187048))

(declare-fun res!2841537 () Bool)

(assert (=> d!2170390 (=> (not res!2841537) (not e!4187048))))

(assert (=> d!2170390 (= res!2841537 (validRegex!8790 lt!2479280))))

(assert (=> d!2170390 (= lt!2479280 e!4187044)))

(declare-fun c!1291254 () Bool)

(assert (=> d!2170390 (= c!1291254 e!4187046)))

(declare-fun res!2841538 () Bool)

(assert (=> d!2170390 (=> (not res!2841538) (not e!4187046))))

(assert (=> d!2170390 (= res!2841538 (is-Cons!66769 l!9142))))

(assert (=> d!2170390 (forall!15975 l!9142 lambda!397391)))

(assert (=> d!2170390 (= (generalisedUnion!2579 l!9142) lt!2479280)))

(declare-fun b!6964325 () Bool)

(assert (=> b!6964325 (= e!4187043 EmptyLang!17104)))

(assert (= (and d!2170390 res!2841538) b!6964318))

(assert (= (and d!2170390 c!1291254) b!6964321))

(assert (= (and d!2170390 (not c!1291254)) b!6964323))

(assert (= (and b!6964323 c!1291256) b!6964322))

(assert (= (and b!6964323 (not c!1291256)) b!6964325))

(assert (= (and d!2170390 res!2841537) b!6964320))

(assert (= (and b!6964320 c!1291255) b!6964319))

(assert (= (and b!6964320 (not c!1291255)) b!6964317))

(assert (= (and b!6964317 c!1291257) b!6964324))

(assert (= (and b!6964317 (not c!1291257)) b!6964316))

(declare-fun m!7657470 () Bool)

(assert (=> b!6964317 m!7657470))

(assert (=> b!6964317 m!7657470))

(declare-fun m!7657474 () Bool)

(assert (=> b!6964317 m!7657474))

(declare-fun m!7657476 () Bool)

(assert (=> b!6964319 m!7657476))

(declare-fun m!7657478 () Bool)

(assert (=> b!6964318 m!7657478))

(declare-fun m!7657480 () Bool)

(assert (=> b!6964324 m!7657480))

(declare-fun m!7657482 () Bool)

(assert (=> b!6964322 m!7657482))

(declare-fun m!7657484 () Bool)

(assert (=> b!6964316 m!7657484))

(declare-fun m!7657486 () Bool)

(assert (=> d!2170390 m!7657486))

(declare-fun m!7657488 () Bool)

(assert (=> d!2170390 m!7657488))

(declare-fun m!7657490 () Bool)

(assert (=> b!6964320 m!7657490))

(assert (=> b!6964258 d!2170390))

(declare-fun d!2170396 () Bool)

(declare-fun res!2841545 () Bool)

(declare-fun e!4187055 () Bool)

(assert (=> d!2170396 (=> res!2841545 e!4187055)))

(assert (=> d!2170396 (= res!2841545 (is-Nil!66769 l!9142))))

(assert (=> d!2170396 (= (forall!15975 l!9142 lambda!397385) e!4187055)))

(declare-fun b!6964332 () Bool)

(declare-fun e!4187056 () Bool)

(assert (=> b!6964332 (= e!4187055 e!4187056)))

(declare-fun res!2841546 () Bool)

(assert (=> b!6964332 (=> (not res!2841546) (not e!4187056))))

(declare-fun dynLambda!26620 (Int Regex!17104) Bool)

(assert (=> b!6964332 (= res!2841546 (dynLambda!26620 lambda!397385 (h!73217 l!9142)))))

(declare-fun b!6964333 () Bool)

(assert (=> b!6964333 (= e!4187056 (forall!15975 (t!380636 l!9142) lambda!397385))))

(assert (= (and d!2170396 (not res!2841545)) b!6964332))

(assert (= (and b!6964332 res!2841546) b!6964333))

(declare-fun b_lambda!260619 () Bool)

(assert (=> (not b_lambda!260619) (not b!6964332)))

(declare-fun m!7657492 () Bool)

(assert (=> b!6964332 m!7657492))

(declare-fun m!7657494 () Bool)

(assert (=> b!6964333 m!7657494))

(assert (=> start!668116 d!2170396))

(declare-fun b!6964380 () Bool)

(declare-fun res!2841579 () Bool)

(declare-fun e!4187088 () Bool)

(assert (=> b!6964380 (=> res!2841579 e!4187088)))

(declare-fun isEmpty!38980 (List!66894) Bool)

(declare-fun tail!13061 (List!66894) List!66894)

(assert (=> b!6964380 (= res!2841579 (not (isEmpty!38980 (tail!13061 s!9351))))))

(declare-fun b!6964381 () Bool)

(declare-fun res!2841576 () Bool)

(declare-fun e!4187089 () Bool)

(assert (=> b!6964381 (=> (not res!2841576) (not e!4187089))))

(declare-fun call!632284 () Bool)

(assert (=> b!6964381 (= res!2841576 (not call!632284))))

(declare-fun b!6964382 () Bool)

(declare-fun e!4187087 () Bool)

(declare-fun lt!2479283 () Bool)

(assert (=> b!6964382 (= e!4187087 (not lt!2479283))))

(declare-fun bm!632279 () Bool)

(assert (=> bm!632279 (= call!632284 (isEmpty!38980 s!9351))))

(declare-fun b!6964383 () Bool)

(declare-fun e!4187085 () Bool)

(declare-fun nullable!6897 (Regex!17104) Bool)

(assert (=> b!6964383 (= e!4187085 (nullable!6897 r!13765))))

(declare-fun b!6964384 () Bool)

(declare-fun res!2841580 () Bool)

(declare-fun e!4187090 () Bool)

(assert (=> b!6964384 (=> res!2841580 e!4187090)))

(assert (=> b!6964384 (= res!2841580 (not (is-ElementMatch!17104 r!13765)))))

(assert (=> b!6964384 (= e!4187087 e!4187090)))

(declare-fun b!6964385 () Bool)

(declare-fun head!13993 (List!66894) C!34478)

(assert (=> b!6964385 (= e!4187089 (= (head!13993 s!9351) (c!1291244 r!13765)))))

(declare-fun b!6964386 () Bool)

(declare-fun e!4187086 () Bool)

(assert (=> b!6964386 (= e!4187090 e!4187086)))

(declare-fun res!2841577 () Bool)

(assert (=> b!6964386 (=> (not res!2841577) (not e!4187086))))

(assert (=> b!6964386 (= res!2841577 (not lt!2479283))))

(declare-fun b!6964387 () Bool)

(declare-fun e!4187091 () Bool)

(assert (=> b!6964387 (= e!4187091 (= lt!2479283 call!632284))))

(declare-fun b!6964388 () Bool)

(assert (=> b!6964388 (= e!4187086 e!4187088)))

(declare-fun res!2841574 () Bool)

(assert (=> b!6964388 (=> res!2841574 e!4187088)))

(assert (=> b!6964388 (= res!2841574 call!632284)))

(declare-fun b!6964389 () Bool)

(assert (=> b!6964389 (= e!4187088 (not (= (head!13993 s!9351) (c!1291244 r!13765))))))

(declare-fun b!6964390 () Bool)

(declare-fun res!2841575 () Bool)

(assert (=> b!6964390 (=> res!2841575 e!4187090)))

(assert (=> b!6964390 (= res!2841575 e!4187089)))

(declare-fun res!2841578 () Bool)

(assert (=> b!6964390 (=> (not res!2841578) (not e!4187089))))

(assert (=> b!6964390 (= res!2841578 lt!2479283)))

(declare-fun b!6964391 () Bool)

(declare-fun derivativeStep!5523 (Regex!17104 C!34478) Regex!17104)

(assert (=> b!6964391 (= e!4187085 (matchR!9210 (derivativeStep!5523 r!13765 (head!13993 s!9351)) (tail!13061 s!9351)))))

(declare-fun d!2170398 () Bool)

(assert (=> d!2170398 e!4187091))

(declare-fun c!1291268 () Bool)

(assert (=> d!2170398 (= c!1291268 (is-EmptyExpr!17104 r!13765))))

(assert (=> d!2170398 (= lt!2479283 e!4187085)))

(declare-fun c!1291269 () Bool)

(assert (=> d!2170398 (= c!1291269 (isEmpty!38980 s!9351))))

(assert (=> d!2170398 (validRegex!8790 r!13765)))

(assert (=> d!2170398 (= (matchR!9210 r!13765 s!9351) lt!2479283)))

(declare-fun b!6964392 () Bool)

(declare-fun res!2841573 () Bool)

(assert (=> b!6964392 (=> (not res!2841573) (not e!4187089))))

(assert (=> b!6964392 (= res!2841573 (isEmpty!38980 (tail!13061 s!9351)))))

(declare-fun b!6964393 () Bool)

(assert (=> b!6964393 (= e!4187091 e!4187087)))

(declare-fun c!1291270 () Bool)

(assert (=> b!6964393 (= c!1291270 (is-EmptyLang!17104 r!13765))))

(assert (= (and d!2170398 c!1291269) b!6964383))

(assert (= (and d!2170398 (not c!1291269)) b!6964391))

(assert (= (and d!2170398 c!1291268) b!6964387))

(assert (= (and d!2170398 (not c!1291268)) b!6964393))

(assert (= (and b!6964393 c!1291270) b!6964382))

(assert (= (and b!6964393 (not c!1291270)) b!6964384))

(assert (= (and b!6964384 (not res!2841580)) b!6964390))

(assert (= (and b!6964390 res!2841578) b!6964381))

(assert (= (and b!6964381 res!2841576) b!6964392))

(assert (= (and b!6964392 res!2841573) b!6964385))

(assert (= (and b!6964390 (not res!2841575)) b!6964386))

(assert (= (and b!6964386 res!2841577) b!6964388))

(assert (= (and b!6964388 (not res!2841574)) b!6964380))

(assert (= (and b!6964380 (not res!2841579)) b!6964389))

(assert (= (or b!6964387 b!6964381 b!6964388) bm!632279))

(declare-fun m!7657496 () Bool)

(assert (=> b!6964383 m!7657496))

(declare-fun m!7657498 () Bool)

(assert (=> b!6964391 m!7657498))

(assert (=> b!6964391 m!7657498))

(declare-fun m!7657500 () Bool)

(assert (=> b!6964391 m!7657500))

(declare-fun m!7657502 () Bool)

(assert (=> b!6964391 m!7657502))

(assert (=> b!6964391 m!7657500))

(assert (=> b!6964391 m!7657502))

(declare-fun m!7657504 () Bool)

(assert (=> b!6964391 m!7657504))

(declare-fun m!7657506 () Bool)

(assert (=> d!2170398 m!7657506))

(assert (=> d!2170398 m!7657448))

(assert (=> b!6964380 m!7657502))

(assert (=> b!6964380 m!7657502))

(declare-fun m!7657508 () Bool)

(assert (=> b!6964380 m!7657508))

(assert (=> b!6964392 m!7657502))

(assert (=> b!6964392 m!7657502))

(assert (=> b!6964392 m!7657508))

(assert (=> b!6964389 m!7657498))

(assert (=> b!6964385 m!7657498))

(assert (=> bm!632279 m!7657506))

(assert (=> b!6964262 d!2170398))

(declare-fun b!6964460 () Bool)

(assert (=> b!6964460 true))

(assert (=> b!6964460 true))

(declare-fun bs!1858587 () Bool)

(declare-fun b!6964464 () Bool)

(assert (= bs!1858587 (and b!6964464 b!6964460)))

(declare-fun lambda!397399 () Int)

(declare-fun lambda!397398 () Int)

(assert (=> bs!1858587 (not (= lambda!397399 lambda!397398))))

(assert (=> b!6964464 true))

(assert (=> b!6964464 true))

(declare-fun b!6964455 () Bool)

(declare-fun c!1291292 () Bool)

(assert (=> b!6964455 (= c!1291292 (is-Union!17104 r!13765))))

(declare-fun e!4187135 () Bool)

(declare-fun e!4187131 () Bool)

(assert (=> b!6964455 (= e!4187135 e!4187131)))

(declare-fun b!6964456 () Bool)

(declare-fun e!4187133 () Bool)

(assert (=> b!6964456 (= e!4187133 (matchRSpec!4125 (regTwo!34721 r!13765) s!9351))))

(declare-fun b!6964457 () Bool)

(declare-fun e!4187130 () Bool)

(declare-fun e!4187129 () Bool)

(assert (=> b!6964457 (= e!4187130 e!4187129)))

(declare-fun res!2841607 () Bool)

(assert (=> b!6964457 (= res!2841607 (not (is-EmptyLang!17104 r!13765)))))

(assert (=> b!6964457 (=> (not res!2841607) (not e!4187129))))

(declare-fun bm!632287 () Bool)

(declare-fun call!632292 () Bool)

(assert (=> bm!632287 (= call!632292 (isEmpty!38980 s!9351))))

(declare-fun b!6964458 () Bool)

(declare-fun e!4187132 () Bool)

(assert (=> b!6964458 (= e!4187131 e!4187132)))

(declare-fun c!1291289 () Bool)

(assert (=> b!6964458 (= c!1291289 (is-Star!17104 r!13765))))

(declare-fun b!6964459 () Bool)

(assert (=> b!6964459 (= e!4187131 e!4187133)))

(declare-fun res!2841606 () Bool)

(assert (=> b!6964459 (= res!2841606 (matchRSpec!4125 (regOne!34721 r!13765) s!9351))))

(assert (=> b!6964459 (=> res!2841606 e!4187133)))

(declare-fun e!4187134 () Bool)

(declare-fun call!632293 () Bool)

(assert (=> b!6964460 (= e!4187134 call!632293)))

(declare-fun b!6964461 () Bool)

(assert (=> b!6964461 (= e!4187130 call!632292)))

(declare-fun b!6964462 () Bool)

(declare-fun c!1291290 () Bool)

(assert (=> b!6964462 (= c!1291290 (is-ElementMatch!17104 r!13765))))

(assert (=> b!6964462 (= e!4187129 e!4187135)))

(declare-fun d!2170400 () Bool)

(declare-fun c!1291291 () Bool)

(assert (=> d!2170400 (= c!1291291 (is-EmptyExpr!17104 r!13765))))

(assert (=> d!2170400 (= (matchRSpec!4125 r!13765 s!9351) e!4187130)))

(declare-fun b!6964463 () Bool)

(assert (=> b!6964463 (= e!4187135 (= s!9351 (Cons!66770 (c!1291244 r!13765) Nil!66770)))))

(assert (=> b!6964464 (= e!4187132 call!632293)))

(declare-fun bm!632288 () Bool)

(declare-fun Exists!4078 (Int) Bool)

(assert (=> bm!632288 (= call!632293 (Exists!4078 (ite c!1291289 lambda!397398 lambda!397399)))))

(declare-fun b!6964465 () Bool)

(declare-fun res!2841608 () Bool)

(assert (=> b!6964465 (=> res!2841608 e!4187134)))

(assert (=> b!6964465 (= res!2841608 call!632292)))

(assert (=> b!6964465 (= e!4187132 e!4187134)))

(assert (= (and d!2170400 c!1291291) b!6964461))

(assert (= (and d!2170400 (not c!1291291)) b!6964457))

(assert (= (and b!6964457 res!2841607) b!6964462))

(assert (= (and b!6964462 c!1291290) b!6964463))

(assert (= (and b!6964462 (not c!1291290)) b!6964455))

(assert (= (and b!6964455 c!1291292) b!6964459))

(assert (= (and b!6964455 (not c!1291292)) b!6964458))

(assert (= (and b!6964459 (not res!2841606)) b!6964456))

(assert (= (and b!6964458 c!1291289) b!6964465))

(assert (= (and b!6964458 (not c!1291289)) b!6964464))

(assert (= (and b!6964465 (not res!2841608)) b!6964460))

(assert (= (or b!6964460 b!6964464) bm!632288))

(assert (= (or b!6964461 b!6964465) bm!632287))

(declare-fun m!7657516 () Bool)

(assert (=> b!6964456 m!7657516))

(assert (=> bm!632287 m!7657506))

(declare-fun m!7657518 () Bool)

(assert (=> b!6964459 m!7657518))

(declare-fun m!7657520 () Bool)

(assert (=> bm!632288 m!7657520))

(assert (=> b!6964262 d!2170400))

(declare-fun d!2170404 () Bool)

(assert (=> d!2170404 (= (matchR!9210 r!13765 s!9351) (matchRSpec!4125 r!13765 s!9351))))

(declare-fun lt!2479289 () Unit!160868)

(declare-fun choose!51893 (Regex!17104 List!66894) Unit!160868)

(assert (=> d!2170404 (= lt!2479289 (choose!51893 r!13765 s!9351))))

(assert (=> d!2170404 (validRegex!8790 r!13765)))

(assert (=> d!2170404 (= (mainMatchTheorem!4119 r!13765 s!9351) lt!2479289)))

(declare-fun bs!1858588 () Bool)

(assert (= bs!1858588 d!2170404))

(assert (=> bs!1858588 m!7657450))

(assert (=> bs!1858588 m!7657452))

(declare-fun m!7657522 () Bool)

(assert (=> bs!1858588 m!7657522))

(assert (=> bs!1858588 m!7657448))

(assert (=> b!6964262 d!2170404))

(declare-fun b!6964498 () Bool)

(declare-fun e!4187156 () Bool)

(declare-fun e!4187159 () Bool)

(assert (=> b!6964498 (= e!4187156 e!4187159)))

(declare-fun c!1291302 () Bool)

(assert (=> b!6964498 (= c!1291302 (is-Star!17104 r!13765))))

(declare-fun b!6964499 () Bool)

(declare-fun e!4187158 () Bool)

(declare-fun call!632302 () Bool)

(assert (=> b!6964499 (= e!4187158 call!632302)))

(declare-fun bm!632295 () Bool)

(declare-fun call!632300 () Bool)

(declare-fun c!1291301 () Bool)

(assert (=> bm!632295 (= call!632300 (validRegex!8790 (ite c!1291302 (reg!17433 r!13765) (ite c!1291301 (regTwo!34721 r!13765) (regTwo!34720 r!13765)))))))

(declare-fun bm!632296 () Bool)

(declare-fun call!632301 () Bool)

(assert (=> bm!632296 (= call!632301 (validRegex!8790 (ite c!1291301 (regOne!34721 r!13765) (regOne!34720 r!13765))))))

(declare-fun b!6964500 () Bool)

(declare-fun res!2841624 () Bool)

(declare-fun e!4187160 () Bool)

(assert (=> b!6964500 (=> (not res!2841624) (not e!4187160))))

(assert (=> b!6964500 (= res!2841624 call!632301)))

(declare-fun e!4187157 () Bool)

(assert (=> b!6964500 (= e!4187157 e!4187160)))

(declare-fun b!6964501 () Bool)

(declare-fun e!4187161 () Bool)

(assert (=> b!6964501 (= e!4187161 e!4187158)))

(declare-fun res!2841622 () Bool)

(assert (=> b!6964501 (=> (not res!2841622) (not e!4187158))))

(assert (=> b!6964501 (= res!2841622 call!632301)))

(declare-fun b!6964502 () Bool)

(declare-fun e!4187162 () Bool)

(assert (=> b!6964502 (= e!4187162 call!632300)))

(declare-fun b!6964503 () Bool)

(assert (=> b!6964503 (= e!4187159 e!4187157)))

(assert (=> b!6964503 (= c!1291301 (is-Union!17104 r!13765))))

(declare-fun bm!632297 () Bool)

(assert (=> bm!632297 (= call!632302 call!632300)))

(declare-fun b!6964504 () Bool)

(declare-fun res!2841623 () Bool)

(assert (=> b!6964504 (=> res!2841623 e!4187161)))

(assert (=> b!6964504 (= res!2841623 (not (is-Concat!25949 r!13765)))))

(assert (=> b!6964504 (= e!4187157 e!4187161)))

(declare-fun d!2170406 () Bool)

(declare-fun res!2841621 () Bool)

(assert (=> d!2170406 (=> res!2841621 e!4187156)))

(assert (=> d!2170406 (= res!2841621 (is-ElementMatch!17104 r!13765))))

(assert (=> d!2170406 (= (validRegex!8790 r!13765) e!4187156)))

(declare-fun b!6964505 () Bool)

(assert (=> b!6964505 (= e!4187160 call!632302)))

(declare-fun b!6964506 () Bool)

(assert (=> b!6964506 (= e!4187159 e!4187162)))

(declare-fun res!2841625 () Bool)

(assert (=> b!6964506 (= res!2841625 (not (nullable!6897 (reg!17433 r!13765))))))

(assert (=> b!6964506 (=> (not res!2841625) (not e!4187162))))

(assert (= (and d!2170406 (not res!2841621)) b!6964498))

(assert (= (and b!6964498 c!1291302) b!6964506))

(assert (= (and b!6964498 (not c!1291302)) b!6964503))

(assert (= (and b!6964506 res!2841625) b!6964502))

(assert (= (and b!6964503 c!1291301) b!6964500))

(assert (= (and b!6964503 (not c!1291301)) b!6964504))

(assert (= (and b!6964500 res!2841624) b!6964505))

(assert (= (and b!6964504 (not res!2841623)) b!6964501))

(assert (= (and b!6964501 res!2841622) b!6964499))

(assert (= (or b!6964500 b!6964501) bm!632296))

(assert (= (or b!6964505 b!6964499) bm!632297))

(assert (= (or b!6964502 bm!632297) bm!632295))

(declare-fun m!7657544 () Bool)

(assert (=> bm!632295 m!7657544))

(declare-fun m!7657546 () Bool)

(assert (=> bm!632296 m!7657546))

(declare-fun m!7657548 () Bool)

(assert (=> b!6964506 m!7657548))

(assert (=> b!6964260 d!2170406))

(declare-fun e!4187165 () Bool)

(assert (=> b!6964264 (= tp!1920462 e!4187165)))

(declare-fun b!6964519 () Bool)

(declare-fun tp!1920504 () Bool)

(assert (=> b!6964519 (= e!4187165 tp!1920504)))

(declare-fun b!6964520 () Bool)

(declare-fun tp!1920506 () Bool)

(declare-fun tp!1920505 () Bool)

(assert (=> b!6964520 (= e!4187165 (and tp!1920506 tp!1920505))))

(declare-fun b!6964517 () Bool)

(assert (=> b!6964517 (= e!4187165 tp_is_empty!43433)))

(declare-fun b!6964518 () Bool)

(declare-fun tp!1920507 () Bool)

(declare-fun tp!1920508 () Bool)

(assert (=> b!6964518 (= e!4187165 (and tp!1920507 tp!1920508))))

(assert (= (and b!6964264 (is-ElementMatch!17104 (regOne!34721 r!13765))) b!6964517))

(assert (= (and b!6964264 (is-Concat!25949 (regOne!34721 r!13765))) b!6964518))

(assert (= (and b!6964264 (is-Star!17104 (regOne!34721 r!13765))) b!6964519))

(assert (= (and b!6964264 (is-Union!17104 (regOne!34721 r!13765))) b!6964520))

(declare-fun e!4187166 () Bool)

(assert (=> b!6964264 (= tp!1920468 e!4187166)))

(declare-fun b!6964523 () Bool)

(declare-fun tp!1920509 () Bool)

(assert (=> b!6964523 (= e!4187166 tp!1920509)))

(declare-fun b!6964524 () Bool)

(declare-fun tp!1920511 () Bool)

(declare-fun tp!1920510 () Bool)

(assert (=> b!6964524 (= e!4187166 (and tp!1920511 tp!1920510))))

(declare-fun b!6964521 () Bool)

(assert (=> b!6964521 (= e!4187166 tp_is_empty!43433)))

(declare-fun b!6964522 () Bool)

(declare-fun tp!1920512 () Bool)

(declare-fun tp!1920513 () Bool)

(assert (=> b!6964522 (= e!4187166 (and tp!1920512 tp!1920513))))

(assert (= (and b!6964264 (is-ElementMatch!17104 (regTwo!34721 r!13765))) b!6964521))

(assert (= (and b!6964264 (is-Concat!25949 (regTwo!34721 r!13765))) b!6964522))

(assert (= (and b!6964264 (is-Star!17104 (regTwo!34721 r!13765))) b!6964523))

(assert (= (and b!6964264 (is-Union!17104 (regTwo!34721 r!13765))) b!6964524))

(declare-fun e!4187167 () Bool)

(assert (=> b!6964259 (= tp!1920465 e!4187167)))

(declare-fun b!6964527 () Bool)

(declare-fun tp!1920514 () Bool)

(assert (=> b!6964527 (= e!4187167 tp!1920514)))

(declare-fun b!6964528 () Bool)

(declare-fun tp!1920516 () Bool)

(declare-fun tp!1920515 () Bool)

(assert (=> b!6964528 (= e!4187167 (and tp!1920516 tp!1920515))))

(declare-fun b!6964525 () Bool)

(assert (=> b!6964525 (= e!4187167 tp_is_empty!43433)))

(declare-fun b!6964526 () Bool)

(declare-fun tp!1920517 () Bool)

(declare-fun tp!1920518 () Bool)

(assert (=> b!6964526 (= e!4187167 (and tp!1920517 tp!1920518))))

(assert (= (and b!6964259 (is-ElementMatch!17104 (regOne!34720 r!13765))) b!6964525))

(assert (= (and b!6964259 (is-Concat!25949 (regOne!34720 r!13765))) b!6964526))

(assert (= (and b!6964259 (is-Star!17104 (regOne!34720 r!13765))) b!6964527))

(assert (= (and b!6964259 (is-Union!17104 (regOne!34720 r!13765))) b!6964528))

(declare-fun e!4187168 () Bool)

(assert (=> b!6964259 (= tp!1920469 e!4187168)))

(declare-fun b!6964531 () Bool)

(declare-fun tp!1920519 () Bool)

(assert (=> b!6964531 (= e!4187168 tp!1920519)))

(declare-fun b!6964532 () Bool)

(declare-fun tp!1920521 () Bool)

(declare-fun tp!1920520 () Bool)

(assert (=> b!6964532 (= e!4187168 (and tp!1920521 tp!1920520))))

(declare-fun b!6964529 () Bool)

(assert (=> b!6964529 (= e!4187168 tp_is_empty!43433)))

(declare-fun b!6964530 () Bool)

(declare-fun tp!1920522 () Bool)

(declare-fun tp!1920523 () Bool)

(assert (=> b!6964530 (= e!4187168 (and tp!1920522 tp!1920523))))

(assert (= (and b!6964259 (is-ElementMatch!17104 (regTwo!34720 r!13765))) b!6964529))

(assert (= (and b!6964259 (is-Concat!25949 (regTwo!34720 r!13765))) b!6964530))

(assert (= (and b!6964259 (is-Star!17104 (regTwo!34720 r!13765))) b!6964531))

(assert (= (and b!6964259 (is-Union!17104 (regTwo!34720 r!13765))) b!6964532))

(declare-fun e!4187169 () Bool)

(assert (=> b!6964263 (= tp!1920466 e!4187169)))

(declare-fun b!6964535 () Bool)

(declare-fun tp!1920524 () Bool)

(assert (=> b!6964535 (= e!4187169 tp!1920524)))

(declare-fun b!6964536 () Bool)

(declare-fun tp!1920526 () Bool)

(declare-fun tp!1920525 () Bool)

(assert (=> b!6964536 (= e!4187169 (and tp!1920526 tp!1920525))))

(declare-fun b!6964533 () Bool)

(assert (=> b!6964533 (= e!4187169 tp_is_empty!43433)))

(declare-fun b!6964534 () Bool)

(declare-fun tp!1920527 () Bool)

(declare-fun tp!1920528 () Bool)

(assert (=> b!6964534 (= e!4187169 (and tp!1920527 tp!1920528))))

(assert (= (and b!6964263 (is-ElementMatch!17104 (h!73217 l!9142))) b!6964533))

(assert (= (and b!6964263 (is-Concat!25949 (h!73217 l!9142))) b!6964534))

(assert (= (and b!6964263 (is-Star!17104 (h!73217 l!9142))) b!6964535))

(assert (= (and b!6964263 (is-Union!17104 (h!73217 l!9142))) b!6964536))

(declare-fun b!6964541 () Bool)

(declare-fun e!4187172 () Bool)

(declare-fun tp!1920533 () Bool)

(declare-fun tp!1920534 () Bool)

(assert (=> b!6964541 (= e!4187172 (and tp!1920533 tp!1920534))))

(assert (=> b!6964263 (= tp!1920463 e!4187172)))

(assert (= (and b!6964263 (is-Cons!66769 (t!380636 l!9142))) b!6964541))

(declare-fun b!6964546 () Bool)

(declare-fun e!4187175 () Bool)

(declare-fun tp!1920537 () Bool)

(assert (=> b!6964546 (= e!4187175 (and tp_is_empty!43433 tp!1920537))))

(assert (=> b!6964257 (= tp!1920467 e!4187175)))

(assert (= (and b!6964257 (is-Cons!66770 (t!380637 s!9351))) b!6964546))

(declare-fun e!4187176 () Bool)

(assert (=> b!6964261 (= tp!1920464 e!4187176)))

(declare-fun b!6964549 () Bool)

(declare-fun tp!1920538 () Bool)

(assert (=> b!6964549 (= e!4187176 tp!1920538)))

(declare-fun b!6964550 () Bool)

(declare-fun tp!1920540 () Bool)

(declare-fun tp!1920539 () Bool)

(assert (=> b!6964550 (= e!4187176 (and tp!1920540 tp!1920539))))

(declare-fun b!6964547 () Bool)

(assert (=> b!6964547 (= e!4187176 tp_is_empty!43433)))

(declare-fun b!6964548 () Bool)

(declare-fun tp!1920541 () Bool)

(declare-fun tp!1920542 () Bool)

(assert (=> b!6964548 (= e!4187176 (and tp!1920541 tp!1920542))))

(assert (= (and b!6964261 (is-ElementMatch!17104 (reg!17433 r!13765))) b!6964547))

(assert (= (and b!6964261 (is-Concat!25949 (reg!17433 r!13765))) b!6964548))

(assert (= (and b!6964261 (is-Star!17104 (reg!17433 r!13765))) b!6964549))

(assert (= (and b!6964261 (is-Union!17104 (reg!17433 r!13765))) b!6964550))

(declare-fun b_lambda!260621 () Bool)

(assert (= b_lambda!260619 (or start!668116 b_lambda!260621)))

(declare-fun bs!1858590 () Bool)

(declare-fun d!2170410 () Bool)

(assert (= bs!1858590 (and d!2170410 start!668116)))

(assert (=> bs!1858590 (= (dynLambda!26620 lambda!397385 (h!73217 l!9142)) (validRegex!8790 (h!73217 l!9142)))))

(declare-fun m!7657550 () Bool)

(assert (=> bs!1858590 m!7657550))

(assert (=> b!6964332 d!2170410))

(push 1)

(assert (not b!6964389))

(assert (not b!6964548))

(assert (not b!6964530))

(assert (not b!6964524))

(assert (not b!6964380))

(assert (not b!6964333))

(assert (not b!6964526))

(assert (not b!6964527))

(assert (not b!6964391))

(assert (not bm!632279))

(assert (not b!6964535))

(assert (not b!6964322))

(assert (not b!6964522))

(assert (not b!6964320))

(assert (not d!2170398))

(assert (not bs!1858590))

(assert (not bm!632287))

(assert (not b!6964459))

(assert (not d!2170404))

(assert (not b!6964520))

(assert (not b_lambda!260621))

(assert (not b!6964456))

(assert (not b!6964536))

(assert (not b!6964528))

(assert (not d!2170390))

(assert (not b!6964318))

(assert (not b!6964506))

(assert (not b!6964550))

(assert (not bm!632296))

(assert (not b!6964534))

(assert (not b!6964383))

(assert (not b!6964531))

(assert (not b!6964532))

(assert (not b!6964324))

(assert (not b!6964316))

(assert (not b!6964385))

(assert (not bm!632288))

(assert (not bm!632295))

(assert (not b!6964541))

(assert (not b!6964523))

(assert (not b!6964317))

(assert (not b!6964518))

(assert (not b!6964546))

(assert tp_is_empty!43433)

(assert (not b!6964549))

(assert (not b!6964519))

(assert (not b!6964319))

(assert (not b!6964392))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

