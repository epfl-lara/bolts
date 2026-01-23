; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!741008 () Bool)

(assert start!741008)

(declare-fun b!7793344 () Bool)

(declare-fun e!4614636 () Bool)

(declare-fun tp!2294217 () Bool)

(declare-fun tp!2294212 () Bool)

(assert (=> b!7793344 (= e!4614636 (and tp!2294217 tp!2294212))))

(declare-fun b!7793345 () Bool)

(declare-fun e!4614634 () Bool)

(declare-fun tp_is_empty!52087 () Bool)

(assert (=> b!7793345 (= e!4614634 tp_is_empty!52087)))

(declare-fun b!7793346 () Bool)

(declare-fun res!3104961 () Bool)

(declare-fun e!4614632 () Bool)

(assert (=> b!7793346 (=> res!3104961 e!4614632)))

(declare-datatypes ((C!42058 0))(
  ( (C!42059 (val!31469 Int)) )
))
(declare-datatypes ((List!73705 0))(
  ( (Nil!73581) (Cons!73581 (h!80029 C!42058) (t!388440 List!73705)) )
))
(declare-fun lt!2673981 () List!73705)

(declare-fun isPrefix!6256 (List!73705 List!73705) Bool)

(assert (=> b!7793346 (= res!3104961 (not (isPrefix!6256 Nil!73581 lt!2673981)))))

(declare-fun b!7793348 () Bool)

(declare-fun e!4614630 () Bool)

(declare-fun tp!2294220 () Bool)

(assert (=> b!7793348 (= e!4614630 (and tp_is_empty!52087 tp!2294220))))

(declare-fun b!7793349 () Bool)

(declare-fun e!4614639 () Bool)

(declare-datatypes ((Regex!20866 0))(
  ( (ElementMatch!20866 (c!1435283 C!42058)) (Concat!29711 (regOne!42244 Regex!20866) (regTwo!42244 Regex!20866)) (EmptyExpr!20866) (Star!20866 (reg!21195 Regex!20866)) (EmptyLang!20866) (Union!20866 (regOne!42245 Regex!20866) (regTwo!42245 Regex!20866)) )
))
(declare-fun lt!2673982 () Regex!20866)

(declare-fun s!14292 () List!73705)

(declare-fun matchR!10326 (Regex!20866 List!73705) Bool)

(assert (=> b!7793349 (= e!4614639 (matchR!10326 lt!2673982 (t!388440 s!14292)))))

(declare-fun b!7793350 () Bool)

(declare-fun res!3104958 () Bool)

(declare-fun e!4614633 () Bool)

(assert (=> b!7793350 (=> (not res!3104958) (not e!4614633))))

(assert (=> b!7793350 (= res!3104958 (is-Cons!73581 s!14292))))

(declare-fun b!7793351 () Bool)

(declare-fun tp!2294215 () Bool)

(declare-fun tp!2294213 () Bool)

(assert (=> b!7793351 (= e!4614636 (and tp!2294215 tp!2294213))))

(declare-fun b!7793352 () Bool)

(declare-fun tp!2294219 () Bool)

(assert (=> b!7793352 (= e!4614634 tp!2294219)))

(declare-fun b!7793353 () Bool)

(declare-fun tp!2294221 () Bool)

(declare-fun tp!2294216 () Bool)

(assert (=> b!7793353 (= e!4614634 (and tp!2294221 tp!2294216))))

(declare-fun b!7793354 () Bool)

(declare-fun e!4614638 () Bool)

(assert (=> b!7793354 (= e!4614638 e!4614632)))

(declare-fun res!3104957 () Bool)

(assert (=> b!7793354 (=> res!3104957 e!4614632)))

(declare-datatypes ((tuple2!69934 0))(
  ( (tuple2!69935 (_1!38270 List!73705) (_2!38270 List!73705)) )
))
(declare-fun lt!2673979 () tuple2!69934)

(declare-fun ++!17934 (List!73705 List!73705) List!73705)

(assert (=> b!7793354 (= res!3104957 (not (= (++!17934 lt!2673981 (_2!38270 lt!2673979)) s!14292)))))

(assert (=> b!7793354 (= lt!2673981 (Cons!73581 (h!80029 s!14292) (_1!38270 lt!2673979)))))

(declare-datatypes ((Option!17761 0))(
  ( (None!17760) (Some!17760 (v!54895 tuple2!69934)) )
))
(declare-fun lt!2673988 () Option!17761)

(declare-fun get!26319 (Option!17761) tuple2!69934)

(assert (=> b!7793354 (= lt!2673979 (get!26319 lt!2673988))))

(declare-fun isDefined!14371 (Option!17761) Bool)

(assert (=> b!7793354 (isDefined!14371 lt!2673988)))

(declare-fun r2!6217 () Regex!20866)

(declare-fun lt!2673985 () Regex!20866)

(declare-fun findConcatSeparation!3791 (Regex!20866 Regex!20866 List!73705 List!73705 List!73705) Option!17761)

(assert (=> b!7793354 (= lt!2673988 (findConcatSeparation!3791 lt!2673985 r2!6217 Nil!73581 (t!388440 s!14292) (t!388440 s!14292)))))

(declare-datatypes ((Unit!168578 0))(
  ( (Unit!168579) )
))
(declare-fun lt!2673980 () Unit!168578)

(declare-fun lemmaConcatAcceptsStringThenFindSeparationIsDefined!375 (Regex!20866 Regex!20866 List!73705) Unit!168578)

(assert (=> b!7793354 (= lt!2673980 (lemmaConcatAcceptsStringThenFindSeparationIsDefined!375 lt!2673985 r2!6217 (t!388440 s!14292)))))

(declare-fun b!7793347 () Bool)

(declare-fun tp!2294218 () Bool)

(declare-fun tp!2294222 () Bool)

(assert (=> b!7793347 (= e!4614634 (and tp!2294218 tp!2294222))))

(declare-fun res!3104959 () Bool)

(declare-fun e!4614631 () Bool)

(assert (=> start!741008 (=> (not res!3104959) (not e!4614631))))

(declare-fun r1!6279 () Regex!20866)

(declare-fun validRegex!11280 (Regex!20866) Bool)

(assert (=> start!741008 (= res!3104959 (validRegex!11280 r1!6279))))

(assert (=> start!741008 e!4614631))

(assert (=> start!741008 e!4614634))

(assert (=> start!741008 e!4614636))

(assert (=> start!741008 e!4614630))

(declare-fun b!7793355 () Bool)

(declare-fun res!3104956 () Bool)

(declare-fun e!4614635 () Bool)

(assert (=> b!7793355 (=> (not res!3104956) (not e!4614635))))

(declare-fun nullable!9250 (Regex!20866) Bool)

(assert (=> b!7793355 (= res!3104956 (nullable!9250 r1!6279))))

(declare-fun b!7793356 () Bool)

(assert (=> b!7793356 (= e!4614631 e!4614633)))

(declare-fun res!3104960 () Bool)

(assert (=> b!7793356 (=> (not res!3104960) (not e!4614633))))

(declare-fun lt!2673983 () Regex!20866)

(assert (=> b!7793356 (= res!3104960 (matchR!10326 lt!2673983 s!14292))))

(assert (=> b!7793356 (= lt!2673983 (Concat!29711 r1!6279 r2!6217))))

(declare-fun b!7793357 () Bool)

(declare-fun e!4614637 () Bool)

(assert (=> b!7793357 (= e!4614637 (not e!4614638))))

(declare-fun res!3104954 () Bool)

(assert (=> b!7793357 (=> res!3104954 e!4614638)))

(declare-fun lt!2673984 () Bool)

(assert (=> b!7793357 (= res!3104954 (not lt!2673984))))

(assert (=> b!7793357 e!4614639))

(declare-fun res!3104952 () Bool)

(assert (=> b!7793357 (=> res!3104952 e!4614639)))

(assert (=> b!7793357 (= res!3104952 lt!2673984)))

(declare-fun lt!2673986 () Regex!20866)

(assert (=> b!7793357 (= lt!2673984 (matchR!10326 lt!2673986 (t!388440 s!14292)))))

(declare-fun lt!2673987 () Unit!168578)

(declare-fun lemmaRegexUnionAcceptsThenOneOfTheTwoAccepts!409 (Regex!20866 Regex!20866 List!73705) Unit!168578)

(assert (=> b!7793357 (= lt!2673987 (lemmaRegexUnionAcceptsThenOneOfTheTwoAccepts!409 lt!2673986 lt!2673982 (t!388440 s!14292)))))

(declare-fun b!7793358 () Bool)

(assert (=> b!7793358 (= e!4614635 e!4614637)))

(declare-fun res!3104953 () Bool)

(assert (=> b!7793358 (=> (not res!3104953) (not e!4614637))))

(declare-fun lt!2673989 () Regex!20866)

(assert (=> b!7793358 (= res!3104953 (= lt!2673989 (Union!20866 lt!2673986 lt!2673982)))))

(declare-fun derivativeStep!6203 (Regex!20866 C!42058) Regex!20866)

(assert (=> b!7793358 (= lt!2673982 (derivativeStep!6203 r2!6217 (h!80029 s!14292)))))

(assert (=> b!7793358 (= lt!2673986 (Concat!29711 lt!2673985 r2!6217))))

(assert (=> b!7793358 (= lt!2673985 (derivativeStep!6203 r1!6279 (h!80029 s!14292)))))

(declare-fun b!7793359 () Bool)

(assert (=> b!7793359 (= e!4614636 tp_is_empty!52087)))

(declare-fun b!7793360 () Bool)

(assert (=> b!7793360 (= e!4614632 (= (++!17934 Nil!73581 s!14292) s!14292))))

(declare-fun b!7793361 () Bool)

(declare-fun tp!2294214 () Bool)

(assert (=> b!7793361 (= e!4614636 tp!2294214)))

(declare-fun b!7793362 () Bool)

(declare-fun res!3104951 () Bool)

(assert (=> b!7793362 (=> (not res!3104951) (not e!4614631))))

(assert (=> b!7793362 (= res!3104951 (validRegex!11280 r2!6217))))

(declare-fun b!7793363 () Bool)

(assert (=> b!7793363 (= e!4614633 e!4614635)))

(declare-fun res!3104955 () Bool)

(assert (=> b!7793363 (=> (not res!3104955) (not e!4614635))))

(assert (=> b!7793363 (= res!3104955 (matchR!10326 lt!2673989 (t!388440 s!14292)))))

(assert (=> b!7793363 (= lt!2673989 (derivativeStep!6203 lt!2673983 (h!80029 s!14292)))))

(assert (= (and start!741008 res!3104959) b!7793362))

(assert (= (and b!7793362 res!3104951) b!7793356))

(assert (= (and b!7793356 res!3104960) b!7793350))

(assert (= (and b!7793350 res!3104958) b!7793363))

(assert (= (and b!7793363 res!3104955) b!7793355))

(assert (= (and b!7793355 res!3104956) b!7793358))

(assert (= (and b!7793358 res!3104953) b!7793357))

(assert (= (and b!7793357 (not res!3104952)) b!7793349))

(assert (= (and b!7793357 (not res!3104954)) b!7793354))

(assert (= (and b!7793354 (not res!3104957)) b!7793346))

(assert (= (and b!7793346 (not res!3104961)) b!7793360))

(assert (= (and start!741008 (is-ElementMatch!20866 r1!6279)) b!7793345))

(assert (= (and start!741008 (is-Concat!29711 r1!6279)) b!7793353))

(assert (= (and start!741008 (is-Star!20866 r1!6279)) b!7793352))

(assert (= (and start!741008 (is-Union!20866 r1!6279)) b!7793347))

(assert (= (and start!741008 (is-ElementMatch!20866 r2!6217)) b!7793359))

(assert (= (and start!741008 (is-Concat!29711 r2!6217)) b!7793351))

(assert (= (and start!741008 (is-Star!20866 r2!6217)) b!7793361))

(assert (= (and start!741008 (is-Union!20866 r2!6217)) b!7793344))

(assert (= (and start!741008 (is-Cons!73581 s!14292)) b!7793348))

(declare-fun m!8233070 () Bool)

(assert (=> b!7793346 m!8233070))

(declare-fun m!8233072 () Bool)

(assert (=> b!7793354 m!8233072))

(declare-fun m!8233074 () Bool)

(assert (=> b!7793354 m!8233074))

(declare-fun m!8233076 () Bool)

(assert (=> b!7793354 m!8233076))

(declare-fun m!8233078 () Bool)

(assert (=> b!7793354 m!8233078))

(declare-fun m!8233080 () Bool)

(assert (=> b!7793354 m!8233080))

(declare-fun m!8233082 () Bool)

(assert (=> start!741008 m!8233082))

(declare-fun m!8233084 () Bool)

(assert (=> b!7793349 m!8233084))

(declare-fun m!8233086 () Bool)

(assert (=> b!7793363 m!8233086))

(declare-fun m!8233088 () Bool)

(assert (=> b!7793363 m!8233088))

(declare-fun m!8233090 () Bool)

(assert (=> b!7793355 m!8233090))

(declare-fun m!8233092 () Bool)

(assert (=> b!7793357 m!8233092))

(declare-fun m!8233094 () Bool)

(assert (=> b!7793357 m!8233094))

(declare-fun m!8233096 () Bool)

(assert (=> b!7793356 m!8233096))

(declare-fun m!8233098 () Bool)

(assert (=> b!7793362 m!8233098))

(declare-fun m!8233100 () Bool)

(assert (=> b!7793358 m!8233100))

(declare-fun m!8233102 () Bool)

(assert (=> b!7793358 m!8233102))

(declare-fun m!8233104 () Bool)

(assert (=> b!7793360 m!8233104))

(push 1)

(assert (not start!741008))

(assert (not b!7793363))

(assert (not b!7793348))

(assert (not b!7793344))

(assert (not b!7793352))

(assert (not b!7793347))

(assert (not b!7793346))

(assert (not b!7793355))

(assert (not b!7793349))

(assert (not b!7793361))

(assert (not b!7793357))

(assert (not b!7793358))

(assert (not b!7793351))

(assert (not b!7793353))

(assert (not b!7793362))

(assert (not b!7793360))

(assert (not b!7793356))

(assert (not b!7793354))

(assert tp_is_empty!52087)

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun b!7793480 () Bool)

(declare-fun e!4614701 () Bool)

(declare-fun lt!2674027 () Bool)

(assert (=> b!7793480 (= e!4614701 (not lt!2674027))))

(declare-fun b!7793481 () Bool)

(declare-fun e!4614700 () Bool)

(declare-fun e!4614702 () Bool)

(assert (=> b!7793481 (= e!4614700 e!4614702)))

(declare-fun res!3105029 () Bool)

(assert (=> b!7793481 (=> res!3105029 e!4614702)))

(declare-fun call!722413 () Bool)

(assert (=> b!7793481 (= res!3105029 call!722413)))

(declare-fun d!2346161 () Bool)

(declare-fun e!4614699 () Bool)

(assert (=> d!2346161 e!4614699))

(declare-fun c!1435299 () Bool)

(assert (=> d!2346161 (= c!1435299 (is-EmptyExpr!20866 lt!2673983))))

(declare-fun e!4614704 () Bool)

(assert (=> d!2346161 (= lt!2674027 e!4614704)))

(declare-fun c!1435298 () Bool)

(declare-fun isEmpty!42222 (List!73705) Bool)

(assert (=> d!2346161 (= c!1435298 (isEmpty!42222 s!14292))))

(assert (=> d!2346161 (validRegex!11280 lt!2673983)))

(assert (=> d!2346161 (= (matchR!10326 lt!2673983 s!14292) lt!2674027)))

(declare-fun b!7793482 () Bool)

(declare-fun res!3105031 () Bool)

(declare-fun e!4614703 () Bool)

(assert (=> b!7793482 (=> (not res!3105031) (not e!4614703))))

(declare-fun tail!15484 (List!73705) List!73705)

(assert (=> b!7793482 (= res!3105031 (isEmpty!42222 (tail!15484 s!14292)))))

(declare-fun b!7793483 () Bool)

(assert (=> b!7793483 (= e!4614704 (nullable!9250 lt!2673983))))

(declare-fun b!7793484 () Bool)

(assert (=> b!7793484 (= e!4614699 e!4614701)))

(declare-fun c!1435297 () Bool)

(assert (=> b!7793484 (= c!1435297 (is-EmptyLang!20866 lt!2673983))))

(declare-fun b!7793485 () Bool)

(declare-fun e!4614698 () Bool)

(assert (=> b!7793485 (= e!4614698 e!4614700)))

(declare-fun res!3105033 () Bool)

(assert (=> b!7793485 (=> (not res!3105033) (not e!4614700))))

(assert (=> b!7793485 (= res!3105033 (not lt!2674027))))

(declare-fun bm!722408 () Bool)

(assert (=> bm!722408 (= call!722413 (isEmpty!42222 s!14292))))

(declare-fun b!7793486 () Bool)

(declare-fun res!3105027 () Bool)

(assert (=> b!7793486 (=> res!3105027 e!4614698)))

(assert (=> b!7793486 (= res!3105027 (not (is-ElementMatch!20866 lt!2673983)))))

(assert (=> b!7793486 (= e!4614701 e!4614698)))

(declare-fun b!7793487 () Bool)

(declare-fun res!3105032 () Bool)

(assert (=> b!7793487 (=> (not res!3105032) (not e!4614703))))

(assert (=> b!7793487 (= res!3105032 (not call!722413))))

(declare-fun b!7793488 () Bool)

(declare-fun head!15943 (List!73705) C!42058)

(assert (=> b!7793488 (= e!4614703 (= (head!15943 s!14292) (c!1435283 lt!2673983)))))

(declare-fun b!7793489 () Bool)

(assert (=> b!7793489 (= e!4614699 (= lt!2674027 call!722413))))

(declare-fun b!7793490 () Bool)

(assert (=> b!7793490 (= e!4614704 (matchR!10326 (derivativeStep!6203 lt!2673983 (head!15943 s!14292)) (tail!15484 s!14292)))))

(declare-fun b!7793491 () Bool)

(declare-fun res!3105034 () Bool)

(assert (=> b!7793491 (=> res!3105034 e!4614698)))

(assert (=> b!7793491 (= res!3105034 e!4614703)))

(declare-fun res!3105030 () Bool)

(assert (=> b!7793491 (=> (not res!3105030) (not e!4614703))))

(assert (=> b!7793491 (= res!3105030 lt!2674027)))

(declare-fun b!7793492 () Bool)

(assert (=> b!7793492 (= e!4614702 (not (= (head!15943 s!14292) (c!1435283 lt!2673983))))))

(declare-fun b!7793493 () Bool)

(declare-fun res!3105028 () Bool)

(assert (=> b!7793493 (=> res!3105028 e!4614702)))

(assert (=> b!7793493 (= res!3105028 (not (isEmpty!42222 (tail!15484 s!14292))))))

(assert (= (and d!2346161 c!1435298) b!7793483))

(assert (= (and d!2346161 (not c!1435298)) b!7793490))

(assert (= (and d!2346161 c!1435299) b!7793489))

(assert (= (and d!2346161 (not c!1435299)) b!7793484))

(assert (= (and b!7793484 c!1435297) b!7793480))

(assert (= (and b!7793484 (not c!1435297)) b!7793486))

(assert (= (and b!7793486 (not res!3105027)) b!7793491))

(assert (= (and b!7793491 res!3105030) b!7793487))

(assert (= (and b!7793487 res!3105032) b!7793482))

(assert (= (and b!7793482 res!3105031) b!7793488))

(assert (= (and b!7793491 (not res!3105034)) b!7793485))

(assert (= (and b!7793485 res!3105033) b!7793481))

(assert (= (and b!7793481 (not res!3105029)) b!7793493))

(assert (= (and b!7793493 (not res!3105028)) b!7793492))

(assert (= (or b!7793489 b!7793481 b!7793487) bm!722408))

(declare-fun m!8233144 () Bool)

(assert (=> b!7793482 m!8233144))

(assert (=> b!7793482 m!8233144))

(declare-fun m!8233146 () Bool)

(assert (=> b!7793482 m!8233146))

(declare-fun m!8233148 () Bool)

(assert (=> b!7793490 m!8233148))

(assert (=> b!7793490 m!8233148))

(declare-fun m!8233150 () Bool)

(assert (=> b!7793490 m!8233150))

(assert (=> b!7793490 m!8233144))

(assert (=> b!7793490 m!8233150))

(assert (=> b!7793490 m!8233144))

(declare-fun m!8233152 () Bool)

(assert (=> b!7793490 m!8233152))

(declare-fun m!8233154 () Bool)

(assert (=> d!2346161 m!8233154))

(declare-fun m!8233156 () Bool)

(assert (=> d!2346161 m!8233156))

(assert (=> b!7793493 m!8233144))

(assert (=> b!7793493 m!8233144))

(assert (=> b!7793493 m!8233146))

(assert (=> b!7793488 m!8233148))

(declare-fun m!8233158 () Bool)

(assert (=> b!7793483 m!8233158))

(assert (=> bm!722408 m!8233154))

(assert (=> b!7793492 m!8233148))

(assert (=> b!7793356 d!2346161))

(declare-fun d!2346167 () Bool)

(declare-fun nullableFct!3631 (Regex!20866) Bool)

(assert (=> d!2346167 (= (nullable!9250 r1!6279) (nullableFct!3631 r1!6279))))

(declare-fun bs!1966365 () Bool)

(assert (= bs!1966365 d!2346167))

(declare-fun m!8233160 () Bool)

(assert (=> bs!1966365 m!8233160))

(assert (=> b!7793355 d!2346167))

(declare-fun b!7793494 () Bool)

(declare-fun e!4614708 () Bool)

(declare-fun lt!2674028 () Bool)

(assert (=> b!7793494 (= e!4614708 (not lt!2674028))))

(declare-fun b!7793495 () Bool)

(declare-fun e!4614707 () Bool)

(declare-fun e!4614709 () Bool)

(assert (=> b!7793495 (= e!4614707 e!4614709)))

(declare-fun res!3105037 () Bool)

(assert (=> b!7793495 (=> res!3105037 e!4614709)))

(declare-fun call!722414 () Bool)

(assert (=> b!7793495 (= res!3105037 call!722414)))

(declare-fun d!2346169 () Bool)

(declare-fun e!4614706 () Bool)

(assert (=> d!2346169 e!4614706))

(declare-fun c!1435302 () Bool)

(assert (=> d!2346169 (= c!1435302 (is-EmptyExpr!20866 lt!2673986))))

(declare-fun e!4614711 () Bool)

(assert (=> d!2346169 (= lt!2674028 e!4614711)))

(declare-fun c!1435301 () Bool)

(assert (=> d!2346169 (= c!1435301 (isEmpty!42222 (t!388440 s!14292)))))

(assert (=> d!2346169 (validRegex!11280 lt!2673986)))

(assert (=> d!2346169 (= (matchR!10326 lt!2673986 (t!388440 s!14292)) lt!2674028)))

(declare-fun b!7793496 () Bool)

(declare-fun res!3105039 () Bool)

(declare-fun e!4614710 () Bool)

(assert (=> b!7793496 (=> (not res!3105039) (not e!4614710))))

(assert (=> b!7793496 (= res!3105039 (isEmpty!42222 (tail!15484 (t!388440 s!14292))))))

(declare-fun b!7793497 () Bool)

(assert (=> b!7793497 (= e!4614711 (nullable!9250 lt!2673986))))

(declare-fun b!7793498 () Bool)

(assert (=> b!7793498 (= e!4614706 e!4614708)))

(declare-fun c!1435300 () Bool)

(assert (=> b!7793498 (= c!1435300 (is-EmptyLang!20866 lt!2673986))))

(declare-fun b!7793499 () Bool)

(declare-fun e!4614705 () Bool)

(assert (=> b!7793499 (= e!4614705 e!4614707)))

(declare-fun res!3105041 () Bool)

(assert (=> b!7793499 (=> (not res!3105041) (not e!4614707))))

(assert (=> b!7793499 (= res!3105041 (not lt!2674028))))

(declare-fun bm!722409 () Bool)

(assert (=> bm!722409 (= call!722414 (isEmpty!42222 (t!388440 s!14292)))))

(declare-fun b!7793500 () Bool)

(declare-fun res!3105035 () Bool)

(assert (=> b!7793500 (=> res!3105035 e!4614705)))

(assert (=> b!7793500 (= res!3105035 (not (is-ElementMatch!20866 lt!2673986)))))

(assert (=> b!7793500 (= e!4614708 e!4614705)))

(declare-fun b!7793501 () Bool)

(declare-fun res!3105040 () Bool)

(assert (=> b!7793501 (=> (not res!3105040) (not e!4614710))))

(assert (=> b!7793501 (= res!3105040 (not call!722414))))

(declare-fun b!7793502 () Bool)

(assert (=> b!7793502 (= e!4614710 (= (head!15943 (t!388440 s!14292)) (c!1435283 lt!2673986)))))

(declare-fun b!7793503 () Bool)

(assert (=> b!7793503 (= e!4614706 (= lt!2674028 call!722414))))

(declare-fun b!7793504 () Bool)

(assert (=> b!7793504 (= e!4614711 (matchR!10326 (derivativeStep!6203 lt!2673986 (head!15943 (t!388440 s!14292))) (tail!15484 (t!388440 s!14292))))))

(declare-fun b!7793505 () Bool)

(declare-fun res!3105042 () Bool)

(assert (=> b!7793505 (=> res!3105042 e!4614705)))

(assert (=> b!7793505 (= res!3105042 e!4614710)))

(declare-fun res!3105038 () Bool)

(assert (=> b!7793505 (=> (not res!3105038) (not e!4614710))))

(assert (=> b!7793505 (= res!3105038 lt!2674028)))

(declare-fun b!7793506 () Bool)

(assert (=> b!7793506 (= e!4614709 (not (= (head!15943 (t!388440 s!14292)) (c!1435283 lt!2673986))))))

(declare-fun b!7793507 () Bool)

(declare-fun res!3105036 () Bool)

(assert (=> b!7793507 (=> res!3105036 e!4614709)))

(assert (=> b!7793507 (= res!3105036 (not (isEmpty!42222 (tail!15484 (t!388440 s!14292)))))))

(assert (= (and d!2346169 c!1435301) b!7793497))

(assert (= (and d!2346169 (not c!1435301)) b!7793504))

(assert (= (and d!2346169 c!1435302) b!7793503))

(assert (= (and d!2346169 (not c!1435302)) b!7793498))

(assert (= (and b!7793498 c!1435300) b!7793494))

(assert (= (and b!7793498 (not c!1435300)) b!7793500))

(assert (= (and b!7793500 (not res!3105035)) b!7793505))

(assert (= (and b!7793505 res!3105038) b!7793501))

(assert (= (and b!7793501 res!3105040) b!7793496))

(assert (= (and b!7793496 res!3105039) b!7793502))

(assert (= (and b!7793505 (not res!3105042)) b!7793499))

(assert (= (and b!7793499 res!3105041) b!7793495))

(assert (= (and b!7793495 (not res!3105037)) b!7793507))

(assert (= (and b!7793507 (not res!3105036)) b!7793506))

(assert (= (or b!7793503 b!7793495 b!7793501) bm!722409))

(declare-fun m!8233162 () Bool)

(assert (=> b!7793496 m!8233162))

(assert (=> b!7793496 m!8233162))

(declare-fun m!8233164 () Bool)

(assert (=> b!7793496 m!8233164))

(declare-fun m!8233166 () Bool)

(assert (=> b!7793504 m!8233166))

(assert (=> b!7793504 m!8233166))

(declare-fun m!8233168 () Bool)

(assert (=> b!7793504 m!8233168))

(assert (=> b!7793504 m!8233162))

(assert (=> b!7793504 m!8233168))

(assert (=> b!7793504 m!8233162))

(declare-fun m!8233170 () Bool)

(assert (=> b!7793504 m!8233170))

(declare-fun m!8233172 () Bool)

(assert (=> d!2346169 m!8233172))

(declare-fun m!8233174 () Bool)

(assert (=> d!2346169 m!8233174))

(assert (=> b!7793507 m!8233162))

(assert (=> b!7793507 m!8233162))

(assert (=> b!7793507 m!8233164))

(assert (=> b!7793502 m!8233166))

(declare-fun m!8233176 () Bool)

(assert (=> b!7793497 m!8233176))

(assert (=> bm!722409 m!8233172))

(assert (=> b!7793506 m!8233166))

(assert (=> b!7793357 d!2346169))

(declare-fun d!2346171 () Bool)

(declare-fun e!4614724 () Bool)

(assert (=> d!2346171 e!4614724))

(declare-fun res!3105056 () Bool)

(assert (=> d!2346171 (=> res!3105056 e!4614724)))

(assert (=> d!2346171 (= res!3105056 (matchR!10326 lt!2673986 (t!388440 s!14292)))))

(declare-fun lt!2674032 () Unit!168578)

(declare-fun choose!59524 (Regex!20866 Regex!20866 List!73705) Unit!168578)

(assert (=> d!2346171 (= lt!2674032 (choose!59524 lt!2673986 lt!2673982 (t!388440 s!14292)))))

(declare-fun e!4614723 () Bool)

(assert (=> d!2346171 e!4614723))

(declare-fun res!3105055 () Bool)

(assert (=> d!2346171 (=> (not res!3105055) (not e!4614723))))

(assert (=> d!2346171 (= res!3105055 (validRegex!11280 lt!2673986))))

(assert (=> d!2346171 (= (lemmaRegexUnionAcceptsThenOneOfTheTwoAccepts!409 lt!2673986 lt!2673982 (t!388440 s!14292)) lt!2674032)))

(declare-fun b!7793526 () Bool)

(assert (=> b!7793526 (= e!4614723 (validRegex!11280 lt!2673982))))

(declare-fun b!7793527 () Bool)

(assert (=> b!7793527 (= e!4614724 (matchR!10326 lt!2673982 (t!388440 s!14292)))))

(assert (= (and d!2346171 res!3105055) b!7793526))

(assert (= (and d!2346171 (not res!3105056)) b!7793527))

(assert (=> d!2346171 m!8233092))

(declare-fun m!8233194 () Bool)

(assert (=> d!2346171 m!8233194))

(assert (=> d!2346171 m!8233174))

(declare-fun m!8233196 () Bool)

(assert (=> b!7793526 m!8233196))

(assert (=> b!7793527 m!8233084))

(assert (=> b!7793357 d!2346171))

(declare-fun bm!722417 () Bool)

(declare-fun call!722423 () Bool)

(declare-fun c!1435313 () Bool)

(assert (=> bm!722417 (= call!722423 (validRegex!11280 (ite c!1435313 (regOne!42245 r2!6217) (regOne!42244 r2!6217))))))

(declare-fun b!7793558 () Bool)

(declare-fun e!4614750 () Bool)

(declare-fun call!722422 () Bool)

(assert (=> b!7793558 (= e!4614750 call!722422)))

(declare-fun b!7793559 () Bool)

(declare-fun e!4614751 () Bool)

(declare-fun e!4614747 () Bool)

(assert (=> b!7793559 (= e!4614751 e!4614747)))

(declare-fun res!3105075 () Bool)

(assert (=> b!7793559 (= res!3105075 (not (nullable!9250 (reg!21195 r2!6217))))))

(assert (=> b!7793559 (=> (not res!3105075) (not e!4614747))))

(declare-fun b!7793560 () Bool)

(declare-fun e!4614748 () Bool)

(assert (=> b!7793560 (= e!4614748 e!4614750)))

(declare-fun res!3105073 () Bool)

(assert (=> b!7793560 (=> (not res!3105073) (not e!4614750))))

(assert (=> b!7793560 (= res!3105073 call!722423)))

(declare-fun b!7793561 () Bool)

(declare-fun e!4614749 () Bool)

(assert (=> b!7793561 (= e!4614749 e!4614751)))

(declare-fun c!1435314 () Bool)

(assert (=> b!7793561 (= c!1435314 (is-Star!20866 r2!6217))))

(declare-fun b!7793562 () Bool)

(declare-fun call!722424 () Bool)

(assert (=> b!7793562 (= e!4614747 call!722424)))

(declare-fun bm!722418 () Bool)

(assert (=> bm!722418 (= call!722422 call!722424)))

(declare-fun bm!722419 () Bool)

(assert (=> bm!722419 (= call!722424 (validRegex!11280 (ite c!1435314 (reg!21195 r2!6217) (ite c!1435313 (regTwo!42245 r2!6217) (regTwo!42244 r2!6217)))))))

(declare-fun b!7793563 () Bool)

(declare-fun e!4614746 () Bool)

(assert (=> b!7793563 (= e!4614746 call!722422)))

(declare-fun b!7793564 () Bool)

(declare-fun e!4614745 () Bool)

(assert (=> b!7793564 (= e!4614751 e!4614745)))

(assert (=> b!7793564 (= c!1435313 (is-Union!20866 r2!6217))))

(declare-fun b!7793565 () Bool)

(declare-fun res!3105076 () Bool)

(assert (=> b!7793565 (=> res!3105076 e!4614748)))

(assert (=> b!7793565 (= res!3105076 (not (is-Concat!29711 r2!6217)))))

(assert (=> b!7793565 (= e!4614745 e!4614748)))

(declare-fun d!2346175 () Bool)

(declare-fun res!3105074 () Bool)

(assert (=> d!2346175 (=> res!3105074 e!4614749)))

(assert (=> d!2346175 (= res!3105074 (is-ElementMatch!20866 r2!6217))))

(assert (=> d!2346175 (= (validRegex!11280 r2!6217) e!4614749)))

(declare-fun b!7793566 () Bool)

(declare-fun res!3105077 () Bool)

(assert (=> b!7793566 (=> (not res!3105077) (not e!4614746))))

(assert (=> b!7793566 (= res!3105077 call!722423)))

(assert (=> b!7793566 (= e!4614745 e!4614746)))

(assert (= (and d!2346175 (not res!3105074)) b!7793561))

(assert (= (and b!7793561 c!1435314) b!7793559))

(assert (= (and b!7793561 (not c!1435314)) b!7793564))

(assert (= (and b!7793559 res!3105075) b!7793562))

(assert (= (and b!7793564 c!1435313) b!7793566))

(assert (= (and b!7793564 (not c!1435313)) b!7793565))

(assert (= (and b!7793566 res!3105077) b!7793563))

(assert (= (and b!7793565 (not res!3105076)) b!7793560))

(assert (= (and b!7793560 res!3105073) b!7793558))

(assert (= (or b!7793566 b!7793560) bm!722417))

(assert (= (or b!7793563 b!7793558) bm!722418))

(assert (= (or b!7793562 bm!722418) bm!722419))

(declare-fun m!8233212 () Bool)

(assert (=> bm!722417 m!8233212))

(declare-fun m!8233214 () Bool)

(assert (=> b!7793559 m!8233214))

(declare-fun m!8233216 () Bool)

(assert (=> bm!722419 m!8233216))

(assert (=> b!7793362 d!2346175))

(declare-fun b!7793576 () Bool)

(declare-fun res!3105089 () Bool)

(declare-fun e!4614760 () Bool)

(assert (=> b!7793576 (=> (not res!3105089) (not e!4614760))))

(assert (=> b!7793576 (= res!3105089 (= (head!15943 Nil!73581) (head!15943 lt!2673981)))))

(declare-fun b!7793577 () Bool)

(assert (=> b!7793577 (= e!4614760 (isPrefix!6256 (tail!15484 Nil!73581) (tail!15484 lt!2673981)))))

(declare-fun d!2346179 () Bool)

(declare-fun e!4614758 () Bool)

(assert (=> d!2346179 e!4614758))

(declare-fun res!3105086 () Bool)

(assert (=> d!2346179 (=> res!3105086 e!4614758)))

(declare-fun lt!2674041 () Bool)

(assert (=> d!2346179 (= res!3105086 (not lt!2674041))))

(declare-fun e!4614759 () Bool)

(assert (=> d!2346179 (= lt!2674041 e!4614759)))

(declare-fun res!3105088 () Bool)

(assert (=> d!2346179 (=> res!3105088 e!4614759)))

(assert (=> d!2346179 (= res!3105088 (is-Nil!73581 Nil!73581))))

(assert (=> d!2346179 (= (isPrefix!6256 Nil!73581 lt!2673981) lt!2674041)))

(declare-fun b!7793578 () Bool)

(declare-fun size!42716 (List!73705) Int)

(assert (=> b!7793578 (= e!4614758 (>= (size!42716 lt!2673981) (size!42716 Nil!73581)))))

(declare-fun b!7793575 () Bool)

(assert (=> b!7793575 (= e!4614759 e!4614760)))

(declare-fun res!3105087 () Bool)

(assert (=> b!7793575 (=> (not res!3105087) (not e!4614760))))

(assert (=> b!7793575 (= res!3105087 (not (is-Nil!73581 lt!2673981)))))

(assert (= (and d!2346179 (not res!3105088)) b!7793575))

(assert (= (and b!7793575 res!3105087) b!7793576))

(assert (= (and b!7793576 res!3105089) b!7793577))

(assert (= (and d!2346179 (not res!3105086)) b!7793578))

(declare-fun m!8233224 () Bool)

(assert (=> b!7793576 m!8233224))

(declare-fun m!8233226 () Bool)

(assert (=> b!7793576 m!8233226))

(declare-fun m!8233228 () Bool)

(assert (=> b!7793577 m!8233228))

(declare-fun m!8233230 () Bool)

(assert (=> b!7793577 m!8233230))

(assert (=> b!7793577 m!8233228))

(assert (=> b!7793577 m!8233230))

(declare-fun m!8233232 () Bool)

(assert (=> b!7793577 m!8233232))

(declare-fun m!8233234 () Bool)

(assert (=> b!7793578 m!8233234))

(declare-fun m!8233236 () Bool)

(assert (=> b!7793578 m!8233236))

(assert (=> b!7793346 d!2346179))

(declare-fun bm!722420 () Bool)

(declare-fun call!722426 () Bool)

(declare-fun c!1435315 () Bool)

(assert (=> bm!722420 (= call!722426 (validRegex!11280 (ite c!1435315 (regOne!42245 r1!6279) (regOne!42244 r1!6279))))))

(declare-fun b!7793579 () Bool)

(declare-fun e!4614766 () Bool)

(declare-fun call!722425 () Bool)

(assert (=> b!7793579 (= e!4614766 call!722425)))

(declare-fun b!7793580 () Bool)

(declare-fun e!4614767 () Bool)

(declare-fun e!4614763 () Bool)

(assert (=> b!7793580 (= e!4614767 e!4614763)))

(declare-fun res!3105092 () Bool)

(assert (=> b!7793580 (= res!3105092 (not (nullable!9250 (reg!21195 r1!6279))))))

(assert (=> b!7793580 (=> (not res!3105092) (not e!4614763))))

(declare-fun b!7793581 () Bool)

(declare-fun e!4614764 () Bool)

(assert (=> b!7793581 (= e!4614764 e!4614766)))

(declare-fun res!3105090 () Bool)

(assert (=> b!7793581 (=> (not res!3105090) (not e!4614766))))

(assert (=> b!7793581 (= res!3105090 call!722426)))

(declare-fun b!7793582 () Bool)

(declare-fun e!4614765 () Bool)

(assert (=> b!7793582 (= e!4614765 e!4614767)))

(declare-fun c!1435316 () Bool)

(assert (=> b!7793582 (= c!1435316 (is-Star!20866 r1!6279))))

(declare-fun b!7793583 () Bool)

(declare-fun call!722427 () Bool)

(assert (=> b!7793583 (= e!4614763 call!722427)))

(declare-fun bm!722421 () Bool)

(assert (=> bm!722421 (= call!722425 call!722427)))

(declare-fun bm!722422 () Bool)

(assert (=> bm!722422 (= call!722427 (validRegex!11280 (ite c!1435316 (reg!21195 r1!6279) (ite c!1435315 (regTwo!42245 r1!6279) (regTwo!42244 r1!6279)))))))

(declare-fun b!7793584 () Bool)

(declare-fun e!4614762 () Bool)

(assert (=> b!7793584 (= e!4614762 call!722425)))

(declare-fun b!7793585 () Bool)

(declare-fun e!4614761 () Bool)

(assert (=> b!7793585 (= e!4614767 e!4614761)))

(assert (=> b!7793585 (= c!1435315 (is-Union!20866 r1!6279))))

(declare-fun b!7793586 () Bool)

(declare-fun res!3105093 () Bool)

(assert (=> b!7793586 (=> res!3105093 e!4614764)))

(assert (=> b!7793586 (= res!3105093 (not (is-Concat!29711 r1!6279)))))

(assert (=> b!7793586 (= e!4614761 e!4614764)))

(declare-fun d!2346183 () Bool)

(declare-fun res!3105091 () Bool)

(assert (=> d!2346183 (=> res!3105091 e!4614765)))

(assert (=> d!2346183 (= res!3105091 (is-ElementMatch!20866 r1!6279))))

(assert (=> d!2346183 (= (validRegex!11280 r1!6279) e!4614765)))

(declare-fun b!7793587 () Bool)

(declare-fun res!3105094 () Bool)

(assert (=> b!7793587 (=> (not res!3105094) (not e!4614762))))

(assert (=> b!7793587 (= res!3105094 call!722426)))

(assert (=> b!7793587 (= e!4614761 e!4614762)))

(assert (= (and d!2346183 (not res!3105091)) b!7793582))

(assert (= (and b!7793582 c!1435316) b!7793580))

(assert (= (and b!7793582 (not c!1435316)) b!7793585))

(assert (= (and b!7793580 res!3105092) b!7793583))

(assert (= (and b!7793585 c!1435315) b!7793587))

(assert (= (and b!7793585 (not c!1435315)) b!7793586))

(assert (= (and b!7793587 res!3105094) b!7793584))

(assert (= (and b!7793586 (not res!3105093)) b!7793581))

(assert (= (and b!7793581 res!3105090) b!7793579))

(assert (= (or b!7793587 b!7793581) bm!722420))

(assert (= (or b!7793584 b!7793579) bm!722421))

(assert (= (or b!7793583 bm!722421) bm!722422))

(declare-fun m!8233238 () Bool)

(assert (=> bm!722420 m!8233238))

(declare-fun m!8233240 () Bool)

(assert (=> b!7793580 m!8233240))

(declare-fun m!8233242 () Bool)

(assert (=> bm!722422 m!8233242))

(assert (=> start!741008 d!2346183))

(declare-fun b!7793588 () Bool)

(declare-fun e!4614771 () Bool)

(declare-fun lt!2674042 () Bool)

(assert (=> b!7793588 (= e!4614771 (not lt!2674042))))

(declare-fun b!7793589 () Bool)

(declare-fun e!4614770 () Bool)

(declare-fun e!4614772 () Bool)

(assert (=> b!7793589 (= e!4614770 e!4614772)))

(declare-fun res!3105097 () Bool)

(assert (=> b!7793589 (=> res!3105097 e!4614772)))

(declare-fun call!722428 () Bool)

(assert (=> b!7793589 (= res!3105097 call!722428)))

(declare-fun d!2346185 () Bool)

(declare-fun e!4614769 () Bool)

(assert (=> d!2346185 e!4614769))

(declare-fun c!1435319 () Bool)

(assert (=> d!2346185 (= c!1435319 (is-EmptyExpr!20866 lt!2673989))))

(declare-fun e!4614774 () Bool)

(assert (=> d!2346185 (= lt!2674042 e!4614774)))

(declare-fun c!1435318 () Bool)

(assert (=> d!2346185 (= c!1435318 (isEmpty!42222 (t!388440 s!14292)))))

(assert (=> d!2346185 (validRegex!11280 lt!2673989)))

(assert (=> d!2346185 (= (matchR!10326 lt!2673989 (t!388440 s!14292)) lt!2674042)))

(declare-fun b!7793590 () Bool)

(declare-fun res!3105099 () Bool)

(declare-fun e!4614773 () Bool)

(assert (=> b!7793590 (=> (not res!3105099) (not e!4614773))))

(assert (=> b!7793590 (= res!3105099 (isEmpty!42222 (tail!15484 (t!388440 s!14292))))))

(declare-fun b!7793591 () Bool)

(assert (=> b!7793591 (= e!4614774 (nullable!9250 lt!2673989))))

(declare-fun b!7793592 () Bool)

(assert (=> b!7793592 (= e!4614769 e!4614771)))

(declare-fun c!1435317 () Bool)

(assert (=> b!7793592 (= c!1435317 (is-EmptyLang!20866 lt!2673989))))

(declare-fun b!7793593 () Bool)

(declare-fun e!4614768 () Bool)

(assert (=> b!7793593 (= e!4614768 e!4614770)))

(declare-fun res!3105101 () Bool)

(assert (=> b!7793593 (=> (not res!3105101) (not e!4614770))))

(assert (=> b!7793593 (= res!3105101 (not lt!2674042))))

(declare-fun bm!722423 () Bool)

(assert (=> bm!722423 (= call!722428 (isEmpty!42222 (t!388440 s!14292)))))

(declare-fun b!7793594 () Bool)

(declare-fun res!3105095 () Bool)

(assert (=> b!7793594 (=> res!3105095 e!4614768)))

(assert (=> b!7793594 (= res!3105095 (not (is-ElementMatch!20866 lt!2673989)))))

(assert (=> b!7793594 (= e!4614771 e!4614768)))

(declare-fun b!7793595 () Bool)

(declare-fun res!3105100 () Bool)

(assert (=> b!7793595 (=> (not res!3105100) (not e!4614773))))

(assert (=> b!7793595 (= res!3105100 (not call!722428))))

(declare-fun b!7793596 () Bool)

(assert (=> b!7793596 (= e!4614773 (= (head!15943 (t!388440 s!14292)) (c!1435283 lt!2673989)))))

(declare-fun b!7793597 () Bool)

(assert (=> b!7793597 (= e!4614769 (= lt!2674042 call!722428))))

(declare-fun b!7793598 () Bool)

(assert (=> b!7793598 (= e!4614774 (matchR!10326 (derivativeStep!6203 lt!2673989 (head!15943 (t!388440 s!14292))) (tail!15484 (t!388440 s!14292))))))

(declare-fun b!7793599 () Bool)

(declare-fun res!3105102 () Bool)

(assert (=> b!7793599 (=> res!3105102 e!4614768)))

(assert (=> b!7793599 (= res!3105102 e!4614773)))

(declare-fun res!3105098 () Bool)

(assert (=> b!7793599 (=> (not res!3105098) (not e!4614773))))

(assert (=> b!7793599 (= res!3105098 lt!2674042)))

(declare-fun b!7793600 () Bool)

(assert (=> b!7793600 (= e!4614772 (not (= (head!15943 (t!388440 s!14292)) (c!1435283 lt!2673989))))))

(declare-fun b!7793601 () Bool)

(declare-fun res!3105096 () Bool)

(assert (=> b!7793601 (=> res!3105096 e!4614772)))

(assert (=> b!7793601 (= res!3105096 (not (isEmpty!42222 (tail!15484 (t!388440 s!14292)))))))

(assert (= (and d!2346185 c!1435318) b!7793591))

(assert (= (and d!2346185 (not c!1435318)) b!7793598))

(assert (= (and d!2346185 c!1435319) b!7793597))

(assert (= (and d!2346185 (not c!1435319)) b!7793592))

(assert (= (and b!7793592 c!1435317) b!7793588))

(assert (= (and b!7793592 (not c!1435317)) b!7793594))

(assert (= (and b!7793594 (not res!3105095)) b!7793599))

(assert (= (and b!7793599 res!3105098) b!7793595))

(assert (= (and b!7793595 res!3105100) b!7793590))

(assert (= (and b!7793590 res!3105099) b!7793596))

(assert (= (and b!7793599 (not res!3105102)) b!7793593))

(assert (= (and b!7793593 res!3105101) b!7793589))

(assert (= (and b!7793589 (not res!3105097)) b!7793601))

(assert (= (and b!7793601 (not res!3105096)) b!7793600))

(assert (= (or b!7793597 b!7793589 b!7793595) bm!722423))

(assert (=> b!7793590 m!8233162))

(assert (=> b!7793590 m!8233162))

(assert (=> b!7793590 m!8233164))

(assert (=> b!7793598 m!8233166))

(assert (=> b!7793598 m!8233166))

(declare-fun m!8233244 () Bool)

(assert (=> b!7793598 m!8233244))

(assert (=> b!7793598 m!8233162))

(assert (=> b!7793598 m!8233244))

(assert (=> b!7793598 m!8233162))

(declare-fun m!8233246 () Bool)

(assert (=> b!7793598 m!8233246))

(assert (=> d!2346185 m!8233172))

(declare-fun m!8233248 () Bool)

(assert (=> d!2346185 m!8233248))

(assert (=> b!7793601 m!8233162))

(assert (=> b!7793601 m!8233162))

(assert (=> b!7793601 m!8233164))

(assert (=> b!7793596 m!8233166))

(declare-fun m!8233250 () Bool)

(assert (=> b!7793591 m!8233250))

(assert (=> bm!722423 m!8233172))

(assert (=> b!7793600 m!8233166))

(assert (=> b!7793363 d!2346185))

(declare-fun b!7793640 () Bool)

(declare-fun e!4614798 () Regex!20866)

(assert (=> b!7793640 (= e!4614798 EmptyLang!20866)))

(declare-fun b!7793641 () Bool)

(declare-fun c!1435334 () Bool)

(assert (=> b!7793641 (= c!1435334 (is-Union!20866 lt!2673983))))

(declare-fun e!4614799 () Regex!20866)

(declare-fun e!4614796 () Regex!20866)

(assert (=> b!7793641 (= e!4614799 e!4614796)))

(declare-fun call!722440 () Regex!20866)

(declare-fun bm!722432 () Bool)

(assert (=> bm!722432 (= call!722440 (derivativeStep!6203 (ite c!1435334 (regOne!42245 lt!2673983) (regOne!42244 lt!2673983)) (h!80029 s!14292)))))

(declare-fun bm!722434 () Bool)

(declare-fun call!722437 () Regex!20866)

(declare-fun call!722438 () Regex!20866)

(assert (=> bm!722434 (= call!722437 call!722438)))

(declare-fun b!7793642 () Bool)

(declare-fun e!4614797 () Regex!20866)

(assert (=> b!7793642 (= e!4614797 (Concat!29711 call!722438 lt!2673983))))

(declare-fun b!7793643 () Bool)

(assert (=> b!7793643 (= e!4614798 e!4614799)))

(declare-fun c!1435335 () Bool)

(assert (=> b!7793643 (= c!1435335 (is-ElementMatch!20866 lt!2673983))))

(declare-fun b!7793644 () Bool)

(declare-fun e!4614795 () Regex!20866)

(assert (=> b!7793644 (= e!4614795 (Union!20866 (Concat!29711 call!722440 (regTwo!42244 lt!2673983)) call!722437))))

(declare-fun b!7793645 () Bool)

(assert (=> b!7793645 (= e!4614795 (Union!20866 (Concat!29711 call!722437 (regTwo!42244 lt!2673983)) EmptyLang!20866))))

(declare-fun b!7793646 () Bool)

(declare-fun call!722439 () Regex!20866)

(assert (=> b!7793646 (= e!4614796 (Union!20866 call!722440 call!722439))))

(declare-fun c!1435338 () Bool)

(declare-fun bm!722435 () Bool)

(declare-fun c!1435336 () Bool)

(assert (=> bm!722435 (= call!722439 (derivativeStep!6203 (ite c!1435334 (regTwo!42245 lt!2673983) (ite c!1435336 (reg!21195 lt!2673983) (ite c!1435338 (regTwo!42244 lt!2673983) (regOne!42244 lt!2673983)))) (h!80029 s!14292)))))

(declare-fun b!7793647 () Bool)

(assert (=> b!7793647 (= c!1435338 (nullable!9250 (regOne!42244 lt!2673983)))))

(assert (=> b!7793647 (= e!4614797 e!4614795)))

(declare-fun d!2346187 () Bool)

(declare-fun lt!2674051 () Regex!20866)

(assert (=> d!2346187 (validRegex!11280 lt!2674051)))

(assert (=> d!2346187 (= lt!2674051 e!4614798)))

(declare-fun c!1435337 () Bool)

(assert (=> d!2346187 (= c!1435337 (or (is-EmptyExpr!20866 lt!2673983) (is-EmptyLang!20866 lt!2673983)))))

(assert (=> d!2346187 (validRegex!11280 lt!2673983)))

(assert (=> d!2346187 (= (derivativeStep!6203 lt!2673983 (h!80029 s!14292)) lt!2674051)))

(declare-fun bm!722433 () Bool)

(assert (=> bm!722433 (= call!722438 call!722439)))

(declare-fun b!7793648 () Bool)

(assert (=> b!7793648 (= e!4614799 (ite (= (h!80029 s!14292) (c!1435283 lt!2673983)) EmptyExpr!20866 EmptyLang!20866))))

(declare-fun b!7793649 () Bool)

(assert (=> b!7793649 (= e!4614796 e!4614797)))

(assert (=> b!7793649 (= c!1435336 (is-Star!20866 lt!2673983))))

(assert (= (and d!2346187 c!1435337) b!7793640))

(assert (= (and d!2346187 (not c!1435337)) b!7793643))

(assert (= (and b!7793643 c!1435335) b!7793648))

(assert (= (and b!7793643 (not c!1435335)) b!7793641))

(assert (= (and b!7793641 c!1435334) b!7793646))

(assert (= (and b!7793641 (not c!1435334)) b!7793649))

(assert (= (and b!7793649 c!1435336) b!7793642))

(assert (= (and b!7793649 (not c!1435336)) b!7793647))

(assert (= (and b!7793647 c!1435338) b!7793644))

(assert (= (and b!7793647 (not c!1435338)) b!7793645))

(assert (= (or b!7793644 b!7793645) bm!722434))

(assert (= (or b!7793642 bm!722434) bm!722433))

(assert (= (or b!7793646 bm!722433) bm!722435))

(assert (= (or b!7793646 b!7793644) bm!722432))

(declare-fun m!8233252 () Bool)

(assert (=> bm!722432 m!8233252))

(declare-fun m!8233254 () Bool)

(assert (=> bm!722435 m!8233254))

(declare-fun m!8233256 () Bool)

(assert (=> b!7793647 m!8233256))

(declare-fun m!8233258 () Bool)

(assert (=> d!2346187 m!8233258))

(assert (=> d!2346187 m!8233156))

(assert (=> b!7793363 d!2346187))

(declare-fun b!7793650 () Bool)

(declare-fun e!4614803 () Regex!20866)

(assert (=> b!7793650 (= e!4614803 EmptyLang!20866)))

(declare-fun b!7793651 () Bool)

(declare-fun c!1435339 () Bool)

(assert (=> b!7793651 (= c!1435339 (is-Union!20866 r2!6217))))

(declare-fun e!4614804 () Regex!20866)

(declare-fun e!4614801 () Regex!20866)

(assert (=> b!7793651 (= e!4614804 e!4614801)))

(declare-fun call!722444 () Regex!20866)

(declare-fun bm!722436 () Bool)

(assert (=> bm!722436 (= call!722444 (derivativeStep!6203 (ite c!1435339 (regOne!42245 r2!6217) (regOne!42244 r2!6217)) (h!80029 s!14292)))))

(declare-fun bm!722438 () Bool)

(declare-fun call!722441 () Regex!20866)

(declare-fun call!722442 () Regex!20866)

(assert (=> bm!722438 (= call!722441 call!722442)))

(declare-fun b!7793652 () Bool)

(declare-fun e!4614802 () Regex!20866)

(assert (=> b!7793652 (= e!4614802 (Concat!29711 call!722442 r2!6217))))

(declare-fun b!7793653 () Bool)

(assert (=> b!7793653 (= e!4614803 e!4614804)))

(declare-fun c!1435340 () Bool)

(assert (=> b!7793653 (= c!1435340 (is-ElementMatch!20866 r2!6217))))

(declare-fun b!7793654 () Bool)

(declare-fun e!4614800 () Regex!20866)

(assert (=> b!7793654 (= e!4614800 (Union!20866 (Concat!29711 call!722444 (regTwo!42244 r2!6217)) call!722441))))

(declare-fun b!7793655 () Bool)

(assert (=> b!7793655 (= e!4614800 (Union!20866 (Concat!29711 call!722441 (regTwo!42244 r2!6217)) EmptyLang!20866))))

(declare-fun b!7793656 () Bool)

(declare-fun call!722443 () Regex!20866)

(assert (=> b!7793656 (= e!4614801 (Union!20866 call!722444 call!722443))))

(declare-fun c!1435341 () Bool)

(declare-fun bm!722439 () Bool)

(declare-fun c!1435343 () Bool)

(assert (=> bm!722439 (= call!722443 (derivativeStep!6203 (ite c!1435339 (regTwo!42245 r2!6217) (ite c!1435341 (reg!21195 r2!6217) (ite c!1435343 (regTwo!42244 r2!6217) (regOne!42244 r2!6217)))) (h!80029 s!14292)))))

(declare-fun b!7793657 () Bool)

(assert (=> b!7793657 (= c!1435343 (nullable!9250 (regOne!42244 r2!6217)))))

(assert (=> b!7793657 (= e!4614802 e!4614800)))

(declare-fun d!2346189 () Bool)

(declare-fun lt!2674052 () Regex!20866)

(assert (=> d!2346189 (validRegex!11280 lt!2674052)))

(assert (=> d!2346189 (= lt!2674052 e!4614803)))

(declare-fun c!1435342 () Bool)

(assert (=> d!2346189 (= c!1435342 (or (is-EmptyExpr!20866 r2!6217) (is-EmptyLang!20866 r2!6217)))))

(assert (=> d!2346189 (validRegex!11280 r2!6217)))

(assert (=> d!2346189 (= (derivativeStep!6203 r2!6217 (h!80029 s!14292)) lt!2674052)))

(declare-fun bm!722437 () Bool)

(assert (=> bm!722437 (= call!722442 call!722443)))

(declare-fun b!7793658 () Bool)

(assert (=> b!7793658 (= e!4614804 (ite (= (h!80029 s!14292) (c!1435283 r2!6217)) EmptyExpr!20866 EmptyLang!20866))))

(declare-fun b!7793659 () Bool)

(assert (=> b!7793659 (= e!4614801 e!4614802)))

(assert (=> b!7793659 (= c!1435341 (is-Star!20866 r2!6217))))

(assert (= (and d!2346189 c!1435342) b!7793650))

(assert (= (and d!2346189 (not c!1435342)) b!7793653))

(assert (= (and b!7793653 c!1435340) b!7793658))

(assert (= (and b!7793653 (not c!1435340)) b!7793651))

(assert (= (and b!7793651 c!1435339) b!7793656))

(assert (= (and b!7793651 (not c!1435339)) b!7793659))

(assert (= (and b!7793659 c!1435341) b!7793652))

(assert (= (and b!7793659 (not c!1435341)) b!7793657))

(assert (= (and b!7793657 c!1435343) b!7793654))

(assert (= (and b!7793657 (not c!1435343)) b!7793655))

(assert (= (or b!7793654 b!7793655) bm!722438))

(assert (= (or b!7793652 bm!722438) bm!722437))

(assert (= (or b!7793656 bm!722437) bm!722439))

(assert (= (or b!7793656 b!7793654) bm!722436))

(declare-fun m!8233260 () Bool)

(assert (=> bm!722436 m!8233260))

(declare-fun m!8233262 () Bool)

(assert (=> bm!722439 m!8233262))

(declare-fun m!8233264 () Bool)

(assert (=> b!7793657 m!8233264))

(declare-fun m!8233266 () Bool)

(assert (=> d!2346189 m!8233266))

(assert (=> d!2346189 m!8233098))

(assert (=> b!7793358 d!2346189))

(declare-fun b!7793660 () Bool)

(declare-fun e!4614808 () Regex!20866)

(assert (=> b!7793660 (= e!4614808 EmptyLang!20866)))

(declare-fun b!7793661 () Bool)

(declare-fun c!1435344 () Bool)

(assert (=> b!7793661 (= c!1435344 (is-Union!20866 r1!6279))))

(declare-fun e!4614809 () Regex!20866)

(declare-fun e!4614806 () Regex!20866)

(assert (=> b!7793661 (= e!4614809 e!4614806)))

(declare-fun call!722448 () Regex!20866)

(declare-fun bm!722440 () Bool)

(assert (=> bm!722440 (= call!722448 (derivativeStep!6203 (ite c!1435344 (regOne!42245 r1!6279) (regOne!42244 r1!6279)) (h!80029 s!14292)))))

(declare-fun bm!722442 () Bool)

(declare-fun call!722445 () Regex!20866)

(declare-fun call!722446 () Regex!20866)

(assert (=> bm!722442 (= call!722445 call!722446)))

(declare-fun b!7793662 () Bool)

(declare-fun e!4614807 () Regex!20866)

(assert (=> b!7793662 (= e!4614807 (Concat!29711 call!722446 r1!6279))))

(declare-fun b!7793663 () Bool)

(assert (=> b!7793663 (= e!4614808 e!4614809)))

(declare-fun c!1435345 () Bool)

(assert (=> b!7793663 (= c!1435345 (is-ElementMatch!20866 r1!6279))))

(declare-fun e!4614805 () Regex!20866)

(declare-fun b!7793664 () Bool)

(assert (=> b!7793664 (= e!4614805 (Union!20866 (Concat!29711 call!722448 (regTwo!42244 r1!6279)) call!722445))))

(declare-fun b!7793665 () Bool)

(assert (=> b!7793665 (= e!4614805 (Union!20866 (Concat!29711 call!722445 (regTwo!42244 r1!6279)) EmptyLang!20866))))

(declare-fun b!7793666 () Bool)

(declare-fun call!722447 () Regex!20866)

(assert (=> b!7793666 (= e!4614806 (Union!20866 call!722448 call!722447))))

(declare-fun c!1435348 () Bool)

(declare-fun bm!722443 () Bool)

(declare-fun c!1435346 () Bool)

(assert (=> bm!722443 (= call!722447 (derivativeStep!6203 (ite c!1435344 (regTwo!42245 r1!6279) (ite c!1435346 (reg!21195 r1!6279) (ite c!1435348 (regTwo!42244 r1!6279) (regOne!42244 r1!6279)))) (h!80029 s!14292)))))

(declare-fun b!7793667 () Bool)

(assert (=> b!7793667 (= c!1435348 (nullable!9250 (regOne!42244 r1!6279)))))

(assert (=> b!7793667 (= e!4614807 e!4614805)))

(declare-fun d!2346191 () Bool)

(declare-fun lt!2674053 () Regex!20866)

(assert (=> d!2346191 (validRegex!11280 lt!2674053)))

(assert (=> d!2346191 (= lt!2674053 e!4614808)))

(declare-fun c!1435347 () Bool)

(assert (=> d!2346191 (= c!1435347 (or (is-EmptyExpr!20866 r1!6279) (is-EmptyLang!20866 r1!6279)))))

(assert (=> d!2346191 (validRegex!11280 r1!6279)))

(assert (=> d!2346191 (= (derivativeStep!6203 r1!6279 (h!80029 s!14292)) lt!2674053)))

(declare-fun bm!722441 () Bool)

(assert (=> bm!722441 (= call!722446 call!722447)))

(declare-fun b!7793668 () Bool)

(assert (=> b!7793668 (= e!4614809 (ite (= (h!80029 s!14292) (c!1435283 r1!6279)) EmptyExpr!20866 EmptyLang!20866))))

(declare-fun b!7793669 () Bool)

(assert (=> b!7793669 (= e!4614806 e!4614807)))

(assert (=> b!7793669 (= c!1435346 (is-Star!20866 r1!6279))))

(assert (= (and d!2346191 c!1435347) b!7793660))

(assert (= (and d!2346191 (not c!1435347)) b!7793663))

(assert (= (and b!7793663 c!1435345) b!7793668))

(assert (= (and b!7793663 (not c!1435345)) b!7793661))

(assert (= (and b!7793661 c!1435344) b!7793666))

(assert (= (and b!7793661 (not c!1435344)) b!7793669))

(assert (= (and b!7793669 c!1435346) b!7793662))

(assert (= (and b!7793669 (not c!1435346)) b!7793667))

(assert (= (and b!7793667 c!1435348) b!7793664))

(assert (= (and b!7793667 (not c!1435348)) b!7793665))

(assert (= (or b!7793664 b!7793665) bm!722442))

(assert (= (or b!7793662 bm!722442) bm!722441))

(assert (= (or b!7793666 bm!722441) bm!722443))

(assert (= (or b!7793666 b!7793664) bm!722440))

(declare-fun m!8233268 () Bool)

(assert (=> bm!722440 m!8233268))

(declare-fun m!8233270 () Bool)

(assert (=> bm!722443 m!8233270))

(declare-fun m!8233272 () Bool)

(assert (=> b!7793667 m!8233272))

(declare-fun m!8233274 () Bool)

(assert (=> d!2346191 m!8233274))

(assert (=> d!2346191 m!8233082))

(assert (=> b!7793358 d!2346191))

(declare-fun b!7793679 () Bool)

(declare-fun e!4614818 () Bool)

(declare-fun lt!2674057 () Bool)

(assert (=> b!7793679 (= e!4614818 (not lt!2674057))))

(declare-fun b!7793680 () Bool)

(declare-fun e!4614817 () Bool)

(declare-fun e!4614819 () Bool)

(assert (=> b!7793680 (= e!4614817 e!4614819)))

(declare-fun res!3105120 () Bool)

(assert (=> b!7793680 (=> res!3105120 e!4614819)))

(declare-fun call!722449 () Bool)

(assert (=> b!7793680 (= res!3105120 call!722449)))

(declare-fun d!2346193 () Bool)

(declare-fun e!4614816 () Bool)

(assert (=> d!2346193 e!4614816))

(declare-fun c!1435353 () Bool)

(assert (=> d!2346193 (= c!1435353 (is-EmptyExpr!20866 lt!2673982))))

(declare-fun e!4614821 () Bool)

(assert (=> d!2346193 (= lt!2674057 e!4614821)))

(declare-fun c!1435352 () Bool)

(assert (=> d!2346193 (= c!1435352 (isEmpty!42222 (t!388440 s!14292)))))

(assert (=> d!2346193 (validRegex!11280 lt!2673982)))

(assert (=> d!2346193 (= (matchR!10326 lt!2673982 (t!388440 s!14292)) lt!2674057)))

(declare-fun b!7793681 () Bool)

(declare-fun res!3105122 () Bool)

(declare-fun e!4614820 () Bool)

(assert (=> b!7793681 (=> (not res!3105122) (not e!4614820))))

(assert (=> b!7793681 (= res!3105122 (isEmpty!42222 (tail!15484 (t!388440 s!14292))))))

(declare-fun b!7793682 () Bool)

(assert (=> b!7793682 (= e!4614821 (nullable!9250 lt!2673982))))

(declare-fun b!7793683 () Bool)

(assert (=> b!7793683 (= e!4614816 e!4614818)))

(declare-fun c!1435351 () Bool)

(assert (=> b!7793683 (= c!1435351 (is-EmptyLang!20866 lt!2673982))))

(declare-fun b!7793684 () Bool)

(declare-fun e!4614815 () Bool)

(assert (=> b!7793684 (= e!4614815 e!4614817)))

(declare-fun res!3105124 () Bool)

(assert (=> b!7793684 (=> (not res!3105124) (not e!4614817))))

(assert (=> b!7793684 (= res!3105124 (not lt!2674057))))

(declare-fun bm!722444 () Bool)

(assert (=> bm!722444 (= call!722449 (isEmpty!42222 (t!388440 s!14292)))))

(declare-fun b!7793685 () Bool)

(declare-fun res!3105118 () Bool)

(assert (=> b!7793685 (=> res!3105118 e!4614815)))

(assert (=> b!7793685 (= res!3105118 (not (is-ElementMatch!20866 lt!2673982)))))

(assert (=> b!7793685 (= e!4614818 e!4614815)))

(declare-fun b!7793686 () Bool)

(declare-fun res!3105123 () Bool)

(assert (=> b!7793686 (=> (not res!3105123) (not e!4614820))))

(assert (=> b!7793686 (= res!3105123 (not call!722449))))

(declare-fun b!7793687 () Bool)

(assert (=> b!7793687 (= e!4614820 (= (head!15943 (t!388440 s!14292)) (c!1435283 lt!2673982)))))

(declare-fun b!7793688 () Bool)

(assert (=> b!7793688 (= e!4614816 (= lt!2674057 call!722449))))

(declare-fun b!7793689 () Bool)

(assert (=> b!7793689 (= e!4614821 (matchR!10326 (derivativeStep!6203 lt!2673982 (head!15943 (t!388440 s!14292))) (tail!15484 (t!388440 s!14292))))))

(declare-fun b!7793690 () Bool)

(declare-fun res!3105125 () Bool)

(assert (=> b!7793690 (=> res!3105125 e!4614815)))

(assert (=> b!7793690 (= res!3105125 e!4614820)))

(declare-fun res!3105121 () Bool)

(assert (=> b!7793690 (=> (not res!3105121) (not e!4614820))))

(assert (=> b!7793690 (= res!3105121 lt!2674057)))

(declare-fun b!7793691 () Bool)

(assert (=> b!7793691 (= e!4614819 (not (= (head!15943 (t!388440 s!14292)) (c!1435283 lt!2673982))))))

(declare-fun b!7793692 () Bool)

(declare-fun res!3105119 () Bool)

(assert (=> b!7793692 (=> res!3105119 e!4614819)))

(assert (=> b!7793692 (= res!3105119 (not (isEmpty!42222 (tail!15484 (t!388440 s!14292)))))))

(assert (= (and d!2346193 c!1435352) b!7793682))

(assert (= (and d!2346193 (not c!1435352)) b!7793689))

(assert (= (and d!2346193 c!1435353) b!7793688))

(assert (= (and d!2346193 (not c!1435353)) b!7793683))

(assert (= (and b!7793683 c!1435351) b!7793679))

(assert (= (and b!7793683 (not c!1435351)) b!7793685))

(assert (= (and b!7793685 (not res!3105118)) b!7793690))

(assert (= (and b!7793690 res!3105121) b!7793686))

(assert (= (and b!7793686 res!3105123) b!7793681))

(assert (= (and b!7793681 res!3105122) b!7793687))

(assert (= (and b!7793690 (not res!3105125)) b!7793684))

(assert (= (and b!7793684 res!3105124) b!7793680))

(assert (= (and b!7793680 (not res!3105120)) b!7793692))

(assert (= (and b!7793692 (not res!3105119)) b!7793691))

(assert (= (or b!7793688 b!7793680 b!7793686) bm!722444))

(assert (=> b!7793681 m!8233162))

(assert (=> b!7793681 m!8233162))

(assert (=> b!7793681 m!8233164))

(assert (=> b!7793689 m!8233166))

(assert (=> b!7793689 m!8233166))

(declare-fun m!8233286 () Bool)

(assert (=> b!7793689 m!8233286))

(assert (=> b!7793689 m!8233162))

(assert (=> b!7793689 m!8233286))

(assert (=> b!7793689 m!8233162))

(declare-fun m!8233290 () Bool)

(assert (=> b!7793689 m!8233290))

(assert (=> d!2346193 m!8233172))

(assert (=> d!2346193 m!8233196))

(assert (=> b!7793692 m!8233162))

(assert (=> b!7793692 m!8233162))

(assert (=> b!7793692 m!8233164))

(assert (=> b!7793687 m!8233166))

(declare-fun m!8233294 () Bool)

(assert (=> b!7793682 m!8233294))

(assert (=> bm!722444 m!8233172))

(assert (=> b!7793691 m!8233166))

(assert (=> b!7793349 d!2346193))

(declare-fun b!7793707 () Bool)

(declare-fun res!3105132 () Bool)

(declare-fun e!4614828 () Bool)

(assert (=> b!7793707 (=> (not res!3105132) (not e!4614828))))

(declare-fun lt!2674061 () List!73705)

(assert (=> b!7793707 (= res!3105132 (= (size!42716 lt!2674061) (+ (size!42716 Nil!73581) (size!42716 s!14292))))))

(declare-fun b!7793705 () Bool)

(declare-fun e!4614829 () List!73705)

(assert (=> b!7793705 (= e!4614829 s!14292)))

(declare-fun d!2346195 () Bool)

(assert (=> d!2346195 e!4614828))

(declare-fun res!3105133 () Bool)

(assert (=> d!2346195 (=> (not res!3105133) (not e!4614828))))

(declare-fun content!15614 (List!73705) (Set C!42058))

(assert (=> d!2346195 (= res!3105133 (= (content!15614 lt!2674061) (set.union (content!15614 Nil!73581) (content!15614 s!14292))))))

(assert (=> d!2346195 (= lt!2674061 e!4614829)))

(declare-fun c!1435357 () Bool)

(assert (=> d!2346195 (= c!1435357 (is-Nil!73581 Nil!73581))))

(assert (=> d!2346195 (= (++!17934 Nil!73581 s!14292) lt!2674061)))

(declare-fun b!7793708 () Bool)

(assert (=> b!7793708 (= e!4614828 (or (not (= s!14292 Nil!73581)) (= lt!2674061 Nil!73581)))))

(declare-fun b!7793706 () Bool)

(assert (=> b!7793706 (= e!4614829 (Cons!73581 (h!80029 Nil!73581) (++!17934 (t!388440 Nil!73581) s!14292)))))

(assert (= (and d!2346195 c!1435357) b!7793705))

(assert (= (and d!2346195 (not c!1435357)) b!7793706))

(assert (= (and d!2346195 res!3105133) b!7793707))

(assert (= (and b!7793707 res!3105132) b!7793708))

(declare-fun m!8233320 () Bool)

(assert (=> b!7793707 m!8233320))

(assert (=> b!7793707 m!8233236))

(declare-fun m!8233322 () Bool)

(assert (=> b!7793707 m!8233322))

(declare-fun m!8233324 () Bool)

(assert (=> d!2346195 m!8233324))

(declare-fun m!8233326 () Bool)

(assert (=> d!2346195 m!8233326))

(declare-fun m!8233328 () Bool)

(assert (=> d!2346195 m!8233328))

(declare-fun m!8233330 () Bool)

(assert (=> b!7793706 m!8233330))

(assert (=> b!7793360 d!2346195))

(declare-fun d!2346205 () Bool)

(assert (=> d!2346205 (= (get!26319 lt!2673988) (v!54895 lt!2673988))))

(assert (=> b!7793354 d!2346205))

(declare-fun b!7793711 () Bool)

(declare-fun res!3105134 () Bool)

(declare-fun e!4614830 () Bool)

(assert (=> b!7793711 (=> (not res!3105134) (not e!4614830))))

(declare-fun lt!2674062 () List!73705)

(assert (=> b!7793711 (= res!3105134 (= (size!42716 lt!2674062) (+ (size!42716 lt!2673981) (size!42716 (_2!38270 lt!2673979)))))))

(declare-fun b!7793709 () Bool)

(declare-fun e!4614831 () List!73705)

(assert (=> b!7793709 (= e!4614831 (_2!38270 lt!2673979))))

(declare-fun d!2346207 () Bool)

(assert (=> d!2346207 e!4614830))

(declare-fun res!3105135 () Bool)

(assert (=> d!2346207 (=> (not res!3105135) (not e!4614830))))

(assert (=> d!2346207 (= res!3105135 (= (content!15614 lt!2674062) (set.union (content!15614 lt!2673981) (content!15614 (_2!38270 lt!2673979)))))))

(assert (=> d!2346207 (= lt!2674062 e!4614831)))

(declare-fun c!1435358 () Bool)

(assert (=> d!2346207 (= c!1435358 (is-Nil!73581 lt!2673981))))

(assert (=> d!2346207 (= (++!17934 lt!2673981 (_2!38270 lt!2673979)) lt!2674062)))

(declare-fun b!7793712 () Bool)

(assert (=> b!7793712 (= e!4614830 (or (not (= (_2!38270 lt!2673979) Nil!73581)) (= lt!2674062 lt!2673981)))))

(declare-fun b!7793710 () Bool)

(assert (=> b!7793710 (= e!4614831 (Cons!73581 (h!80029 lt!2673981) (++!17934 (t!388440 lt!2673981) (_2!38270 lt!2673979))))))

(assert (= (and d!2346207 c!1435358) b!7793709))

(assert (= (and d!2346207 (not c!1435358)) b!7793710))

(assert (= (and d!2346207 res!3105135) b!7793711))

(assert (= (and b!7793711 res!3105134) b!7793712))

(declare-fun m!8233332 () Bool)

(assert (=> b!7793711 m!8233332))

(assert (=> b!7793711 m!8233234))

(declare-fun m!8233334 () Bool)

(assert (=> b!7793711 m!8233334))

(declare-fun m!8233336 () Bool)

(assert (=> d!2346207 m!8233336))

(declare-fun m!8233338 () Bool)

(assert (=> d!2346207 m!8233338))

(declare-fun m!8233340 () Bool)

(assert (=> d!2346207 m!8233340))

(declare-fun m!8233342 () Bool)

(assert (=> b!7793710 m!8233342))

(assert (=> b!7793354 d!2346207))

(declare-fun d!2346209 () Bool)

(declare-fun isEmpty!42224 (Option!17761) Bool)

(assert (=> d!2346209 (= (isDefined!14371 lt!2673988) (not (isEmpty!42224 lt!2673988)))))

(declare-fun bs!1966368 () Bool)

(assert (= bs!1966368 d!2346209))

(declare-fun m!8233344 () Bool)

(assert (=> bs!1966368 m!8233344))

(assert (=> b!7793354 d!2346209))

(declare-fun b!7793761 () Bool)

(declare-fun e!4614865 () Option!17761)

(assert (=> b!7793761 (= e!4614865 None!17760)))

(declare-fun b!7793762 () Bool)

(declare-fun e!4614867 () Bool)

(assert (=> b!7793762 (= e!4614867 (matchR!10326 r2!6217 (t!388440 s!14292)))))

(declare-fun b!7793763 () Bool)

(declare-fun res!3105172 () Bool)

(declare-fun e!4614868 () Bool)

(assert (=> b!7793763 (=> (not res!3105172) (not e!4614868))))

(declare-fun lt!2674074 () Option!17761)

(assert (=> b!7793763 (= res!3105172 (matchR!10326 lt!2673985 (_1!38270 (get!26319 lt!2674074))))))

(declare-fun b!7793765 () Bool)

(declare-fun res!3105168 () Bool)

(assert (=> b!7793765 (=> (not res!3105168) (not e!4614868))))

(assert (=> b!7793765 (= res!3105168 (matchR!10326 r2!6217 (_2!38270 (get!26319 lt!2674074))))))

(declare-fun b!7793766 () Bool)

(declare-fun e!4614869 () Option!17761)

(assert (=> b!7793766 (= e!4614869 e!4614865)))

(declare-fun c!1435367 () Bool)

(assert (=> b!7793766 (= c!1435367 (is-Nil!73581 (t!388440 s!14292)))))

(declare-fun b!7793767 () Bool)

(declare-fun lt!2674072 () Unit!168578)

(declare-fun lt!2674073 () Unit!168578)

(assert (=> b!7793767 (= lt!2674072 lt!2674073)))

(assert (=> b!7793767 (= (++!17934 (++!17934 Nil!73581 (Cons!73581 (h!80029 (t!388440 s!14292)) Nil!73581)) (t!388440 (t!388440 s!14292))) (t!388440 s!14292))))

(declare-fun lemmaMoveElementToOtherListKeepsConcatEq!3406 (List!73705 C!42058 List!73705 List!73705) Unit!168578)

(assert (=> b!7793767 (= lt!2674073 (lemmaMoveElementToOtherListKeepsConcatEq!3406 Nil!73581 (h!80029 (t!388440 s!14292)) (t!388440 (t!388440 s!14292)) (t!388440 s!14292)))))

(assert (=> b!7793767 (= e!4614865 (findConcatSeparation!3791 lt!2673985 r2!6217 (++!17934 Nil!73581 (Cons!73581 (h!80029 (t!388440 s!14292)) Nil!73581)) (t!388440 (t!388440 s!14292)) (t!388440 s!14292)))))

(declare-fun b!7793768 () Bool)

(assert (=> b!7793768 (= e!4614869 (Some!17760 (tuple2!69935 Nil!73581 (t!388440 s!14292))))))

(declare-fun b!7793769 () Bool)

(declare-fun e!4614866 () Bool)

(assert (=> b!7793769 (= e!4614866 (not (isDefined!14371 lt!2674074)))))

(declare-fun b!7793764 () Bool)

(assert (=> b!7793764 (= e!4614868 (= (++!17934 (_1!38270 (get!26319 lt!2674074)) (_2!38270 (get!26319 lt!2674074))) (t!388440 s!14292)))))

(declare-fun d!2346211 () Bool)

(assert (=> d!2346211 e!4614866))

(declare-fun res!3105169 () Bool)

(assert (=> d!2346211 (=> res!3105169 e!4614866)))

(assert (=> d!2346211 (= res!3105169 e!4614868)))

(declare-fun res!3105171 () Bool)

(assert (=> d!2346211 (=> (not res!3105171) (not e!4614868))))

(assert (=> d!2346211 (= res!3105171 (isDefined!14371 lt!2674074))))

(assert (=> d!2346211 (= lt!2674074 e!4614869)))

(declare-fun c!1435368 () Bool)

(assert (=> d!2346211 (= c!1435368 e!4614867)))

(declare-fun res!3105170 () Bool)

(assert (=> d!2346211 (=> (not res!3105170) (not e!4614867))))

(assert (=> d!2346211 (= res!3105170 (matchR!10326 lt!2673985 Nil!73581))))

(assert (=> d!2346211 (validRegex!11280 lt!2673985)))

(assert (=> d!2346211 (= (findConcatSeparation!3791 lt!2673985 r2!6217 Nil!73581 (t!388440 s!14292) (t!388440 s!14292)) lt!2674074)))

(assert (= (and d!2346211 res!3105170) b!7793762))

(assert (= (and d!2346211 c!1435368) b!7793768))

(assert (= (and d!2346211 (not c!1435368)) b!7793766))

(assert (= (and b!7793766 c!1435367) b!7793761))

(assert (= (and b!7793766 (not c!1435367)) b!7793767))

(assert (= (and d!2346211 res!3105171) b!7793763))

(assert (= (and b!7793763 res!3105172) b!7793765))

(assert (= (and b!7793765 res!3105168) b!7793764))

(assert (= (and d!2346211 (not res!3105169)) b!7793769))

(declare-fun m!8233356 () Bool)

(assert (=> b!7793762 m!8233356))

(declare-fun m!8233358 () Bool)

(assert (=> b!7793765 m!8233358))

(declare-fun m!8233360 () Bool)

(assert (=> b!7793765 m!8233360))

(declare-fun m!8233362 () Bool)

(assert (=> d!2346211 m!8233362))

(declare-fun m!8233364 () Bool)

(assert (=> d!2346211 m!8233364))

(declare-fun m!8233366 () Bool)

(assert (=> d!2346211 m!8233366))

(assert (=> b!7793769 m!8233362))

(assert (=> b!7793763 m!8233358))

(declare-fun m!8233368 () Bool)

(assert (=> b!7793763 m!8233368))

(declare-fun m!8233370 () Bool)

(assert (=> b!7793767 m!8233370))

(assert (=> b!7793767 m!8233370))

(declare-fun m!8233372 () Bool)

(assert (=> b!7793767 m!8233372))

(declare-fun m!8233374 () Bool)

(assert (=> b!7793767 m!8233374))

(assert (=> b!7793767 m!8233370))

(declare-fun m!8233376 () Bool)

(assert (=> b!7793767 m!8233376))

(assert (=> b!7793764 m!8233358))

(declare-fun m!8233378 () Bool)

(assert (=> b!7793764 m!8233378))

(assert (=> b!7793354 d!2346211))

(declare-fun d!2346215 () Bool)

(assert (=> d!2346215 (isDefined!14371 (findConcatSeparation!3791 lt!2673985 r2!6217 Nil!73581 (t!388440 s!14292) (t!388440 s!14292)))))

(declare-fun lt!2674077 () Unit!168578)

(declare-fun choose!59526 (Regex!20866 Regex!20866 List!73705) Unit!168578)

(assert (=> d!2346215 (= lt!2674077 (choose!59526 lt!2673985 r2!6217 (t!388440 s!14292)))))

(assert (=> d!2346215 (validRegex!11280 lt!2673985)))

(assert (=> d!2346215 (= (lemmaConcatAcceptsStringThenFindSeparationIsDefined!375 lt!2673985 r2!6217 (t!388440 s!14292)) lt!2674077)))

(declare-fun bs!1966369 () Bool)

(assert (= bs!1966369 d!2346215))

(assert (=> bs!1966369 m!8233080))

(assert (=> bs!1966369 m!8233080))

(declare-fun m!8233386 () Bool)

(assert (=> bs!1966369 m!8233386))

(declare-fun m!8233388 () Bool)

(assert (=> bs!1966369 m!8233388))

(assert (=> bs!1966369 m!8233366))

(assert (=> b!7793354 d!2346215))

(declare-fun b!7793806 () Bool)

(declare-fun e!4614886 () Bool)

(declare-fun tp!2294266 () Bool)

(declare-fun tp!2294268 () Bool)

(assert (=> b!7793806 (= e!4614886 (and tp!2294266 tp!2294268))))

(declare-fun b!7793805 () Bool)

(declare-fun tp!2294269 () Bool)

(assert (=> b!7793805 (= e!4614886 tp!2294269)))

(declare-fun b!7793803 () Bool)

(assert (=> b!7793803 (= e!4614886 tp_is_empty!52087)))

(assert (=> b!7793361 (= tp!2294214 e!4614886)))

(declare-fun b!7793804 () Bool)

(declare-fun tp!2294270 () Bool)

(declare-fun tp!2294267 () Bool)

(assert (=> b!7793804 (= e!4614886 (and tp!2294270 tp!2294267))))

(assert (= (and b!7793361 (is-ElementMatch!20866 (reg!21195 r2!6217))) b!7793803))

(assert (= (and b!7793361 (is-Concat!29711 (reg!21195 r2!6217))) b!7793804))

(assert (= (and b!7793361 (is-Star!20866 (reg!21195 r2!6217))) b!7793805))

(assert (= (and b!7793361 (is-Union!20866 (reg!21195 r2!6217))) b!7793806))

(declare-fun b!7793810 () Bool)

(declare-fun e!4614887 () Bool)

(declare-fun tp!2294271 () Bool)

(declare-fun tp!2294273 () Bool)

(assert (=> b!7793810 (= e!4614887 (and tp!2294271 tp!2294273))))

(declare-fun b!7793809 () Bool)

(declare-fun tp!2294274 () Bool)

(assert (=> b!7793809 (= e!4614887 tp!2294274)))

(declare-fun b!7793807 () Bool)

(assert (=> b!7793807 (= e!4614887 tp_is_empty!52087)))

(assert (=> b!7793352 (= tp!2294219 e!4614887)))

(declare-fun b!7793808 () Bool)

(declare-fun tp!2294275 () Bool)

(declare-fun tp!2294272 () Bool)

(assert (=> b!7793808 (= e!4614887 (and tp!2294275 tp!2294272))))

(assert (= (and b!7793352 (is-ElementMatch!20866 (reg!21195 r1!6279))) b!7793807))

(assert (= (and b!7793352 (is-Concat!29711 (reg!21195 r1!6279))) b!7793808))

(assert (= (and b!7793352 (is-Star!20866 (reg!21195 r1!6279))) b!7793809))

(assert (= (and b!7793352 (is-Union!20866 (reg!21195 r1!6279))) b!7793810))

(declare-fun b!7793814 () Bool)

(declare-fun e!4614888 () Bool)

(declare-fun tp!2294276 () Bool)

(declare-fun tp!2294278 () Bool)

(assert (=> b!7793814 (= e!4614888 (and tp!2294276 tp!2294278))))

(declare-fun b!7793813 () Bool)

(declare-fun tp!2294279 () Bool)

(assert (=> b!7793813 (= e!4614888 tp!2294279)))

(declare-fun b!7793811 () Bool)

(assert (=> b!7793811 (= e!4614888 tp_is_empty!52087)))

(assert (=> b!7793351 (= tp!2294215 e!4614888)))

(declare-fun b!7793812 () Bool)

(declare-fun tp!2294280 () Bool)

(declare-fun tp!2294277 () Bool)

(assert (=> b!7793812 (= e!4614888 (and tp!2294280 tp!2294277))))

(assert (= (and b!7793351 (is-ElementMatch!20866 (regOne!42244 r2!6217))) b!7793811))

(assert (= (and b!7793351 (is-Concat!29711 (regOne!42244 r2!6217))) b!7793812))

(assert (= (and b!7793351 (is-Star!20866 (regOne!42244 r2!6217))) b!7793813))

(assert (= (and b!7793351 (is-Union!20866 (regOne!42244 r2!6217))) b!7793814))

(declare-fun b!7793818 () Bool)

(declare-fun e!4614889 () Bool)

(declare-fun tp!2294281 () Bool)

(declare-fun tp!2294283 () Bool)

(assert (=> b!7793818 (= e!4614889 (and tp!2294281 tp!2294283))))

(declare-fun b!7793817 () Bool)

(declare-fun tp!2294284 () Bool)

(assert (=> b!7793817 (= e!4614889 tp!2294284)))

(declare-fun b!7793815 () Bool)

(assert (=> b!7793815 (= e!4614889 tp_is_empty!52087)))

(assert (=> b!7793351 (= tp!2294213 e!4614889)))

(declare-fun b!7793816 () Bool)

(declare-fun tp!2294285 () Bool)

(declare-fun tp!2294282 () Bool)

(assert (=> b!7793816 (= e!4614889 (and tp!2294285 tp!2294282))))

(assert (= (and b!7793351 (is-ElementMatch!20866 (regTwo!42244 r2!6217))) b!7793815))

(assert (= (and b!7793351 (is-Concat!29711 (regTwo!42244 r2!6217))) b!7793816))

(assert (= (and b!7793351 (is-Star!20866 (regTwo!42244 r2!6217))) b!7793817))

(assert (= (and b!7793351 (is-Union!20866 (regTwo!42244 r2!6217))) b!7793818))

(declare-fun b!7793822 () Bool)

(declare-fun e!4614890 () Bool)

(declare-fun tp!2294286 () Bool)

(declare-fun tp!2294288 () Bool)

(assert (=> b!7793822 (= e!4614890 (and tp!2294286 tp!2294288))))

(declare-fun b!7793821 () Bool)

(declare-fun tp!2294289 () Bool)

(assert (=> b!7793821 (= e!4614890 tp!2294289)))

(declare-fun b!7793819 () Bool)

(assert (=> b!7793819 (= e!4614890 tp_is_empty!52087)))

(assert (=> b!7793353 (= tp!2294221 e!4614890)))

(declare-fun b!7793820 () Bool)

(declare-fun tp!2294290 () Bool)

(declare-fun tp!2294287 () Bool)

(assert (=> b!7793820 (= e!4614890 (and tp!2294290 tp!2294287))))

(assert (= (and b!7793353 (is-ElementMatch!20866 (regOne!42244 r1!6279))) b!7793819))

(assert (= (and b!7793353 (is-Concat!29711 (regOne!42244 r1!6279))) b!7793820))

(assert (= (and b!7793353 (is-Star!20866 (regOne!42244 r1!6279))) b!7793821))

(assert (= (and b!7793353 (is-Union!20866 (regOne!42244 r1!6279))) b!7793822))

(declare-fun b!7793826 () Bool)

(declare-fun e!4614891 () Bool)

(declare-fun tp!2294291 () Bool)

(declare-fun tp!2294293 () Bool)

(assert (=> b!7793826 (= e!4614891 (and tp!2294291 tp!2294293))))

(declare-fun b!7793825 () Bool)

(declare-fun tp!2294294 () Bool)

(assert (=> b!7793825 (= e!4614891 tp!2294294)))

(declare-fun b!7793823 () Bool)

(assert (=> b!7793823 (= e!4614891 tp_is_empty!52087)))

(assert (=> b!7793353 (= tp!2294216 e!4614891)))

(declare-fun b!7793824 () Bool)

(declare-fun tp!2294295 () Bool)

(declare-fun tp!2294292 () Bool)

(assert (=> b!7793824 (= e!4614891 (and tp!2294295 tp!2294292))))

(assert (= (and b!7793353 (is-ElementMatch!20866 (regTwo!42244 r1!6279))) b!7793823))

(assert (= (and b!7793353 (is-Concat!29711 (regTwo!42244 r1!6279))) b!7793824))

(assert (= (and b!7793353 (is-Star!20866 (regTwo!42244 r1!6279))) b!7793825))

(assert (= (and b!7793353 (is-Union!20866 (regTwo!42244 r1!6279))) b!7793826))

(declare-fun b!7793840 () Bool)

(declare-fun e!4614901 () Bool)

(declare-fun tp!2294298 () Bool)

(assert (=> b!7793840 (= e!4614901 (and tp_is_empty!52087 tp!2294298))))

(assert (=> b!7793348 (= tp!2294220 e!4614901)))

(assert (= (and b!7793348 (is-Cons!73581 (t!388440 s!14292))) b!7793840))

(declare-fun b!7793844 () Bool)

(declare-fun e!4614902 () Bool)

(declare-fun tp!2294299 () Bool)

(declare-fun tp!2294301 () Bool)

(assert (=> b!7793844 (= e!4614902 (and tp!2294299 tp!2294301))))

(declare-fun b!7793843 () Bool)

(declare-fun tp!2294302 () Bool)

(assert (=> b!7793843 (= e!4614902 tp!2294302)))

(declare-fun b!7793841 () Bool)

(assert (=> b!7793841 (= e!4614902 tp_is_empty!52087)))

(assert (=> b!7793347 (= tp!2294218 e!4614902)))

(declare-fun b!7793842 () Bool)

(declare-fun tp!2294303 () Bool)

(declare-fun tp!2294300 () Bool)

(assert (=> b!7793842 (= e!4614902 (and tp!2294303 tp!2294300))))

(assert (= (and b!7793347 (is-ElementMatch!20866 (regOne!42245 r1!6279))) b!7793841))

(assert (= (and b!7793347 (is-Concat!29711 (regOne!42245 r1!6279))) b!7793842))

(assert (= (and b!7793347 (is-Star!20866 (regOne!42245 r1!6279))) b!7793843))

(assert (= (and b!7793347 (is-Union!20866 (regOne!42245 r1!6279))) b!7793844))

(declare-fun b!7793848 () Bool)

(declare-fun e!4614903 () Bool)

(declare-fun tp!2294304 () Bool)

(declare-fun tp!2294306 () Bool)

(assert (=> b!7793848 (= e!4614903 (and tp!2294304 tp!2294306))))

(declare-fun b!7793847 () Bool)

(declare-fun tp!2294307 () Bool)

(assert (=> b!7793847 (= e!4614903 tp!2294307)))

(declare-fun b!7793845 () Bool)

(assert (=> b!7793845 (= e!4614903 tp_is_empty!52087)))

(assert (=> b!7793347 (= tp!2294222 e!4614903)))

(declare-fun b!7793846 () Bool)

(declare-fun tp!2294308 () Bool)

(declare-fun tp!2294305 () Bool)

(assert (=> b!7793846 (= e!4614903 (and tp!2294308 tp!2294305))))

(assert (= (and b!7793347 (is-ElementMatch!20866 (regTwo!42245 r1!6279))) b!7793845))

(assert (= (and b!7793347 (is-Concat!29711 (regTwo!42245 r1!6279))) b!7793846))

(assert (= (and b!7793347 (is-Star!20866 (regTwo!42245 r1!6279))) b!7793847))

(assert (= (and b!7793347 (is-Union!20866 (regTwo!42245 r1!6279))) b!7793848))

(declare-fun b!7793852 () Bool)

(declare-fun e!4614904 () Bool)

(declare-fun tp!2294309 () Bool)

(declare-fun tp!2294311 () Bool)

(assert (=> b!7793852 (= e!4614904 (and tp!2294309 tp!2294311))))

(declare-fun b!7793851 () Bool)

(declare-fun tp!2294312 () Bool)

(assert (=> b!7793851 (= e!4614904 tp!2294312)))

(declare-fun b!7793849 () Bool)

(assert (=> b!7793849 (= e!4614904 tp_is_empty!52087)))

(assert (=> b!7793344 (= tp!2294217 e!4614904)))

(declare-fun b!7793850 () Bool)

(declare-fun tp!2294313 () Bool)

(declare-fun tp!2294310 () Bool)

(assert (=> b!7793850 (= e!4614904 (and tp!2294313 tp!2294310))))

(assert (= (and b!7793344 (is-ElementMatch!20866 (regOne!42245 r2!6217))) b!7793849))

(assert (= (and b!7793344 (is-Concat!29711 (regOne!42245 r2!6217))) b!7793850))

(assert (= (and b!7793344 (is-Star!20866 (regOne!42245 r2!6217))) b!7793851))

(assert (= (and b!7793344 (is-Union!20866 (regOne!42245 r2!6217))) b!7793852))

(declare-fun b!7793856 () Bool)

(declare-fun e!4614905 () Bool)

(declare-fun tp!2294314 () Bool)

(declare-fun tp!2294316 () Bool)

(assert (=> b!7793856 (= e!4614905 (and tp!2294314 tp!2294316))))

(declare-fun b!7793855 () Bool)

(declare-fun tp!2294317 () Bool)

(assert (=> b!7793855 (= e!4614905 tp!2294317)))

(declare-fun b!7793853 () Bool)

(assert (=> b!7793853 (= e!4614905 tp_is_empty!52087)))

(assert (=> b!7793344 (= tp!2294212 e!4614905)))

(declare-fun b!7793854 () Bool)

(declare-fun tp!2294318 () Bool)

(declare-fun tp!2294315 () Bool)

(assert (=> b!7793854 (= e!4614905 (and tp!2294318 tp!2294315))))

(assert (= (and b!7793344 (is-ElementMatch!20866 (regTwo!42245 r2!6217))) b!7793853))

(assert (= (and b!7793344 (is-Concat!29711 (regTwo!42245 r2!6217))) b!7793854))

(assert (= (and b!7793344 (is-Star!20866 (regTwo!42245 r2!6217))) b!7793855))

(assert (= (and b!7793344 (is-Union!20866 (regTwo!42245 r2!6217))) b!7793856))

(push 1)

(assert (not d!2346211))

(assert (not b!7793506))

(assert (not b!7793820))

(assert (not bm!722419))

(assert (not b!7793840))

(assert (not b!7793577))

(assert (not b!7793496))

(assert (not b!7793814))

(assert (not b!7793482))

(assert (not d!2346187))

(assert (not b!7793850))

(assert (not b!7793848))

(assert (not b!7793526))

(assert (not b!7793667))

(assert (not b!7793596))

(assert (not b!7793493))

(assert (not b!7793808))

(assert (not b!7793591))

(assert (not bm!722444))

(assert (not b!7793497))

(assert (not b!7793764))

(assert (not b!7793765))

(assert (not b!7793504))

(assert (not b!7793825))

(assert (not b!7793576))

(assert (not b!7793710))

(assert (not bm!722408))

(assert (not b!7793826))

(assert (not bm!722436))

(assert (not b!7793578))

(assert (not b!7793824))

(assert (not b!7793590))

(assert (not bm!722439))

(assert (not b!7793822))

(assert (not b!7793492))

(assert (not d!2346215))

(assert (not b!7793706))

(assert (not bm!722422))

(assert (not b!7793855))

(assert (not b!7793821))

(assert (not bm!722420))

(assert (not b!7793813))

(assert (not b!7793804))

(assert (not b!7793762))

(assert (not d!2346185))

(assert (not bm!722417))

(assert (not b!7793856))

(assert (not b!7793692))

(assert (not b!7793851))

(assert (not d!2346209))

(assert (not b!7793711))

(assert (not b!7793769))

(assert (not b!7793681))

(assert (not d!2346191))

(assert (not b!7793490))

(assert (not b!7793844))

(assert (not b!7793601))

(assert (not bm!722443))

(assert (not bm!722440))

(assert (not b!7793600))

(assert (not bm!722432))

(assert (not d!2346167))

(assert (not b!7793805))

(assert (not b!7793842))

(assert (not b!7793598))

(assert (not b!7793559))

(assert (not b!7793809))

(assert (not b!7793488))

(assert (not b!7793691))

(assert (not b!7793657))

(assert (not d!2346171))

(assert (not b!7793817))

(assert (not b!7793507))

(assert (not b!7793682))

(assert (not bm!722423))

(assert (not d!2346161))

(assert (not b!7793818))

(assert (not b!7793502))

(assert (not bm!722435))

(assert (not b!7793527))

(assert (not bm!722409))

(assert (not b!7793687))

(assert (not b!7793689))

(assert (not b!7793843))

(assert (not d!2346169))

(assert (not b!7793847))

(assert (not d!2346207))

(assert (not d!2346195))

(assert (not b!7793767))

(assert (not d!2346193))

(assert (not b!7793810))

(assert (not b!7793707))

(assert (not b!7793846))

(assert (not b!7793816))

(assert (not b!7793580))

(assert (not b!7793806))

(assert (not b!7793852))

(assert (not d!2346189))

(assert (not b!7793483))

(assert (not b!7793854))

(assert (not b!7793647))

(assert tp_is_empty!52087)

(assert (not b!7793812))

(assert (not b!7793763))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

