; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!243412 () Bool)

(assert start!243412)

(declare-fun b!2491211 () Bool)

(declare-fun e!1581385 () Bool)

(declare-fun tp!797723 () Bool)

(assert (=> b!2491211 (= e!1581385 tp!797723)))

(declare-fun b!2491212 () Bool)

(declare-fun tp!797722 () Bool)

(declare-fun tp!797725 () Bool)

(assert (=> b!2491212 (= e!1581385 (and tp!797722 tp!797725))))

(declare-fun b!2491213 () Bool)

(declare-fun e!1581386 () Bool)

(declare-datatypes ((C!14820 0))(
  ( (C!14821 (val!9062 Int)) )
))
(declare-datatypes ((Regex!7331 0))(
  ( (ElementMatch!7331 (c!396015 C!14820)) (Concat!12027 (regOne!15174 Regex!7331) (regTwo!15174 Regex!7331)) (EmptyExpr!7331) (Star!7331 (reg!7660 Regex!7331)) (EmptyLang!7331) (Union!7331 (regOne!15175 Regex!7331) (regTwo!15175 Regex!7331)) )
))
(declare-fun r!27340 () Regex!7331)

(declare-fun validRegex!2957 (Regex!7331) Bool)

(assert (=> b!2491213 (= e!1581386 (not (validRegex!2957 (regOne!15175 r!27340))))))

(declare-fun b!2491214 () Bool)

(declare-fun res!1054100 () Bool)

(assert (=> b!2491214 (=> (not res!1054100) (not e!1581386))))

(get-info :version)

(assert (=> b!2491214 (= res!1054100 (and (not ((_ is EmptyExpr!7331) r!27340)) (not ((_ is EmptyLang!7331) r!27340)) (not ((_ is ElementMatch!7331) r!27340)) ((_ is Union!7331) r!27340)))))

(declare-fun b!2491215 () Bool)

(declare-fun res!1054101 () Bool)

(assert (=> b!2491215 (=> (not res!1054101) (not e!1581386))))

(declare-datatypes ((List!29396 0))(
  ( (Nil!29296) (Cons!29296 (h!34716 C!14820) (t!211095 List!29396)) )
))
(declare-fun tl!4068 () List!29396)

(declare-fun c!14016 () C!14820)

(declare-fun nullable!2248 (Regex!7331) Bool)

(declare-fun derivative!26 (Regex!7331 List!29396) Regex!7331)

(declare-fun derivativeStep!1900 (Regex!7331 C!14820) Regex!7331)

(assert (=> b!2491215 (= res!1054101 (nullable!2248 (derivative!26 (derivativeStep!1900 r!27340 c!14016) tl!4068)))))

(declare-fun b!2491216 () Bool)

(declare-fun tp!797724 () Bool)

(declare-fun tp!797721 () Bool)

(assert (=> b!2491216 (= e!1581385 (and tp!797724 tp!797721))))

(declare-fun b!2491218 () Bool)

(declare-fun e!1581384 () Bool)

(declare-fun tp_is_empty!12517 () Bool)

(declare-fun tp!797726 () Bool)

(assert (=> b!2491218 (= e!1581384 (and tp_is_empty!12517 tp!797726))))

(declare-fun b!2491217 () Bool)

(assert (=> b!2491217 (= e!1581385 tp_is_empty!12517)))

(declare-fun res!1054102 () Bool)

(assert (=> start!243412 (=> (not res!1054102) (not e!1581386))))

(assert (=> start!243412 (= res!1054102 (validRegex!2957 r!27340))))

(assert (=> start!243412 e!1581386))

(assert (=> start!243412 e!1581385))

(assert (=> start!243412 tp_is_empty!12517))

(assert (=> start!243412 e!1581384))

(assert (= (and start!243412 res!1054102) b!2491215))

(assert (= (and b!2491215 res!1054101) b!2491214))

(assert (= (and b!2491214 res!1054100) b!2491213))

(assert (= (and start!243412 ((_ is ElementMatch!7331) r!27340)) b!2491217))

(assert (= (and start!243412 ((_ is Concat!12027) r!27340)) b!2491212))

(assert (= (and start!243412 ((_ is Star!7331) r!27340)) b!2491211))

(assert (= (and start!243412 ((_ is Union!7331) r!27340)) b!2491216))

(assert (= (and start!243412 ((_ is Cons!29296) tl!4068)) b!2491218))

(declare-fun m!2858047 () Bool)

(assert (=> b!2491213 m!2858047))

(declare-fun m!2858049 () Bool)

(assert (=> b!2491215 m!2858049))

(assert (=> b!2491215 m!2858049))

(declare-fun m!2858051 () Bool)

(assert (=> b!2491215 m!2858051))

(assert (=> b!2491215 m!2858051))

(declare-fun m!2858053 () Bool)

(assert (=> b!2491215 m!2858053))

(declare-fun m!2858055 () Bool)

(assert (=> start!243412 m!2858055))

(check-sat (not b!2491213) tp_is_empty!12517 (not b!2491215) (not start!243412) (not b!2491216) (not b!2491212) (not b!2491218) (not b!2491211))
(check-sat)
(get-model)

(declare-fun d!714435 () Bool)

(declare-fun nullableFct!553 (Regex!7331) Bool)

(assert (=> d!714435 (= (nullable!2248 (derivative!26 (derivativeStep!1900 r!27340 c!14016) tl!4068)) (nullableFct!553 (derivative!26 (derivativeStep!1900 r!27340 c!14016) tl!4068)))))

(declare-fun bs!468365 () Bool)

(assert (= bs!468365 d!714435))

(assert (=> bs!468365 m!2858051))

(declare-fun m!2858059 () Bool)

(assert (=> bs!468365 m!2858059))

(assert (=> b!2491215 d!714435))

(declare-fun d!714437 () Bool)

(declare-fun lt!893960 () Regex!7331)

(assert (=> d!714437 (validRegex!2957 lt!893960)))

(declare-fun e!1581392 () Regex!7331)

(assert (=> d!714437 (= lt!893960 e!1581392)))

(declare-fun c!396021 () Bool)

(assert (=> d!714437 (= c!396021 ((_ is Cons!29296) tl!4068))))

(assert (=> d!714437 (validRegex!2957 (derivativeStep!1900 r!27340 c!14016))))

(assert (=> d!714437 (= (derivative!26 (derivativeStep!1900 r!27340 c!14016) tl!4068) lt!893960)))

(declare-fun b!2491229 () Bool)

(assert (=> b!2491229 (= e!1581392 (derivative!26 (derivativeStep!1900 (derivativeStep!1900 r!27340 c!14016) (h!34716 tl!4068)) (t!211095 tl!4068)))))

(declare-fun b!2491230 () Bool)

(assert (=> b!2491230 (= e!1581392 (derivativeStep!1900 r!27340 c!14016))))

(assert (= (and d!714437 c!396021) b!2491229))

(assert (= (and d!714437 (not c!396021)) b!2491230))

(declare-fun m!2858069 () Bool)

(assert (=> d!714437 m!2858069))

(assert (=> d!714437 m!2858049))

(declare-fun m!2858071 () Bool)

(assert (=> d!714437 m!2858071))

(assert (=> b!2491229 m!2858049))

(declare-fun m!2858073 () Bool)

(assert (=> b!2491229 m!2858073))

(assert (=> b!2491229 m!2858073))

(declare-fun m!2858075 () Bool)

(assert (=> b!2491229 m!2858075))

(assert (=> b!2491215 d!714437))

(declare-fun call!153167 () Regex!7331)

(declare-fun b!2491281 () Bool)

(declare-fun call!153168 () Regex!7331)

(declare-fun e!1581420 () Regex!7331)

(assert (=> b!2491281 (= e!1581420 (Union!7331 (Concat!12027 call!153167 (regTwo!15174 r!27340)) call!153168))))

(declare-fun b!2491282 () Bool)

(declare-fun e!1581418 () Regex!7331)

(declare-fun call!153166 () Regex!7331)

(assert (=> b!2491282 (= e!1581418 (Union!7331 call!153168 call!153166))))

(declare-fun b!2491283 () Bool)

(declare-fun c!396047 () Bool)

(assert (=> b!2491283 (= c!396047 ((_ is Union!7331) r!27340))))

(declare-fun e!1581421 () Regex!7331)

(assert (=> b!2491283 (= e!1581421 e!1581418)))

(declare-fun bm!153161 () Bool)

(declare-fun c!396049 () Bool)

(assert (=> bm!153161 (= call!153166 (derivativeStep!1900 (ite c!396047 (regTwo!15175 r!27340) (ite c!396049 (reg!7660 r!27340) (regOne!15174 r!27340))) c!14016))))

(declare-fun b!2491284 () Bool)

(assert (=> b!2491284 (= e!1581420 (Union!7331 (Concat!12027 call!153167 (regTwo!15174 r!27340)) EmptyLang!7331))))

(declare-fun b!2491285 () Bool)

(declare-fun e!1581422 () Regex!7331)

(declare-fun call!153169 () Regex!7331)

(assert (=> b!2491285 (= e!1581422 (Concat!12027 call!153169 r!27340))))

(declare-fun b!2491286 () Bool)

(assert (=> b!2491286 (= e!1581421 (ite (= c!14016 (c!396015 r!27340)) EmptyExpr!7331 EmptyLang!7331))))

(declare-fun b!2491287 () Bool)

(declare-fun e!1581419 () Regex!7331)

(assert (=> b!2491287 (= e!1581419 EmptyLang!7331)))

(declare-fun bm!153162 () Bool)

(assert (=> bm!153162 (= call!153167 call!153169)))

(declare-fun d!714441 () Bool)

(declare-fun lt!893966 () Regex!7331)

(assert (=> d!714441 (validRegex!2957 lt!893966)))

(assert (=> d!714441 (= lt!893966 e!1581419)))

(declare-fun c!396051 () Bool)

(assert (=> d!714441 (= c!396051 (or ((_ is EmptyExpr!7331) r!27340) ((_ is EmptyLang!7331) r!27340)))))

(assert (=> d!714441 (validRegex!2957 r!27340)))

(assert (=> d!714441 (= (derivativeStep!1900 r!27340 c!14016) lt!893966)))

(declare-fun bm!153163 () Bool)

(assert (=> bm!153163 (= call!153169 call!153166)))

(declare-fun b!2491288 () Bool)

(declare-fun c!396048 () Bool)

(assert (=> b!2491288 (= c!396048 (nullable!2248 (regOne!15174 r!27340)))))

(assert (=> b!2491288 (= e!1581422 e!1581420)))

(declare-fun b!2491289 () Bool)

(assert (=> b!2491289 (= e!1581419 e!1581421)))

(declare-fun c!396050 () Bool)

(assert (=> b!2491289 (= c!396050 ((_ is ElementMatch!7331) r!27340))))

(declare-fun b!2491290 () Bool)

(assert (=> b!2491290 (= e!1581418 e!1581422)))

(assert (=> b!2491290 (= c!396049 ((_ is Star!7331) r!27340))))

(declare-fun bm!153164 () Bool)

(assert (=> bm!153164 (= call!153168 (derivativeStep!1900 (ite c!396047 (regOne!15175 r!27340) (regTwo!15174 r!27340)) c!14016))))

(assert (= (and d!714441 c!396051) b!2491287))

(assert (= (and d!714441 (not c!396051)) b!2491289))

(assert (= (and b!2491289 c!396050) b!2491286))

(assert (= (and b!2491289 (not c!396050)) b!2491283))

(assert (= (and b!2491283 c!396047) b!2491282))

(assert (= (and b!2491283 (not c!396047)) b!2491290))

(assert (= (and b!2491290 c!396049) b!2491285))

(assert (= (and b!2491290 (not c!396049)) b!2491288))

(assert (= (and b!2491288 c!396048) b!2491281))

(assert (= (and b!2491288 (not c!396048)) b!2491284))

(assert (= (or b!2491281 b!2491284) bm!153162))

(assert (= (or b!2491285 bm!153162) bm!153163))

(assert (= (or b!2491282 bm!153163) bm!153161))

(assert (= (or b!2491282 b!2491281) bm!153164))

(declare-fun m!2858085 () Bool)

(assert (=> bm!153161 m!2858085))

(declare-fun m!2858087 () Bool)

(assert (=> d!714441 m!2858087))

(assert (=> d!714441 m!2858055))

(declare-fun m!2858089 () Bool)

(assert (=> b!2491288 m!2858089))

(declare-fun m!2858091 () Bool)

(assert (=> bm!153164 m!2858091))

(assert (=> b!2491215 d!714441))

(declare-fun b!2491355 () Bool)

(declare-fun e!1581472 () Bool)

(declare-fun call!153190 () Bool)

(assert (=> b!2491355 (= e!1581472 call!153190)))

(declare-fun b!2491356 () Bool)

(declare-fun e!1581473 () Bool)

(declare-fun call!153189 () Bool)

(assert (=> b!2491356 (= e!1581473 call!153189)))

(declare-fun b!2491357 () Bool)

(declare-fun e!1581469 () Bool)

(assert (=> b!2491357 (= e!1581469 e!1581473)))

(declare-fun res!1054134 () Bool)

(assert (=> b!2491357 (= res!1054134 (not (nullable!2248 (reg!7660 (regOne!15175 r!27340)))))))

(assert (=> b!2491357 (=> (not res!1054134) (not e!1581473))))

(declare-fun b!2491358 () Bool)

(declare-fun e!1581468 () Bool)

(declare-fun call!153188 () Bool)

(assert (=> b!2491358 (= e!1581468 call!153188)))

(declare-fun b!2491359 () Bool)

(declare-fun res!1054135 () Bool)

(declare-fun e!1581467 () Bool)

(assert (=> b!2491359 (=> res!1054135 e!1581467)))

(assert (=> b!2491359 (= res!1054135 (not ((_ is Concat!12027) (regOne!15175 r!27340))))))

(declare-fun e!1581471 () Bool)

(assert (=> b!2491359 (= e!1581471 e!1581467)))

(declare-fun c!396064 () Bool)

(declare-fun bm!153183 () Bool)

(declare-fun c!396065 () Bool)

(assert (=> bm!153183 (= call!153189 (validRegex!2957 (ite c!396065 (reg!7660 (regOne!15175 r!27340)) (ite c!396064 (regOne!15175 (regOne!15175 r!27340)) (regTwo!15174 (regOne!15175 r!27340))))))))

(declare-fun bm!153184 () Bool)

(assert (=> bm!153184 (= call!153190 call!153189)))

(declare-fun b!2491360 () Bool)

(assert (=> b!2491360 (= e!1581469 e!1581471)))

(assert (=> b!2491360 (= c!396064 ((_ is Union!7331) (regOne!15175 r!27340)))))

(declare-fun b!2491361 () Bool)

(declare-fun e!1581470 () Bool)

(assert (=> b!2491361 (= e!1581470 e!1581469)))

(assert (=> b!2491361 (= c!396065 ((_ is Star!7331) (regOne!15175 r!27340)))))

(declare-fun bm!153185 () Bool)

(assert (=> bm!153185 (= call!153188 (validRegex!2957 (ite c!396064 (regTwo!15175 (regOne!15175 r!27340)) (regOne!15174 (regOne!15175 r!27340)))))))

(declare-fun b!2491362 () Bool)

(declare-fun res!1054133 () Bool)

(assert (=> b!2491362 (=> (not res!1054133) (not e!1581468))))

(assert (=> b!2491362 (= res!1054133 call!153190)))

(assert (=> b!2491362 (= e!1581471 e!1581468)))

(declare-fun b!2491363 () Bool)

(assert (=> b!2491363 (= e!1581467 e!1581472)))

(declare-fun res!1054136 () Bool)

(assert (=> b!2491363 (=> (not res!1054136) (not e!1581472))))

(assert (=> b!2491363 (= res!1054136 call!153188)))

(declare-fun d!714445 () Bool)

(declare-fun res!1054137 () Bool)

(assert (=> d!714445 (=> res!1054137 e!1581470)))

(assert (=> d!714445 (= res!1054137 ((_ is ElementMatch!7331) (regOne!15175 r!27340)))))

(assert (=> d!714445 (= (validRegex!2957 (regOne!15175 r!27340)) e!1581470)))

(assert (= (and d!714445 (not res!1054137)) b!2491361))

(assert (= (and b!2491361 c!396065) b!2491357))

(assert (= (and b!2491361 (not c!396065)) b!2491360))

(assert (= (and b!2491357 res!1054134) b!2491356))

(assert (= (and b!2491360 c!396064) b!2491362))

(assert (= (and b!2491360 (not c!396064)) b!2491359))

(assert (= (and b!2491362 res!1054133) b!2491358))

(assert (= (and b!2491359 (not res!1054135)) b!2491363))

(assert (= (and b!2491363 res!1054136) b!2491355))

(assert (= (or b!2491362 b!2491355) bm!153184))

(assert (= (or b!2491358 b!2491363) bm!153185))

(assert (= (or b!2491356 bm!153184) bm!153183))

(declare-fun m!2858105 () Bool)

(assert (=> b!2491357 m!2858105))

(declare-fun m!2858107 () Bool)

(assert (=> bm!153183 m!2858107))

(declare-fun m!2858109 () Bool)

(assert (=> bm!153185 m!2858109))

(assert (=> b!2491213 d!714445))

(declare-fun b!2491368 () Bool)

(declare-fun e!1581480 () Bool)

(declare-fun call!153193 () Bool)

(assert (=> b!2491368 (= e!1581480 call!153193)))

(declare-fun b!2491369 () Bool)

(declare-fun e!1581481 () Bool)

(declare-fun call!153192 () Bool)

(assert (=> b!2491369 (= e!1581481 call!153192)))

(declare-fun b!2491370 () Bool)

(declare-fun e!1581477 () Bool)

(assert (=> b!2491370 (= e!1581477 e!1581481)))

(declare-fun res!1054139 () Bool)

(assert (=> b!2491370 (= res!1054139 (not (nullable!2248 (reg!7660 r!27340))))))

(assert (=> b!2491370 (=> (not res!1054139) (not e!1581481))))

(declare-fun b!2491371 () Bool)

(declare-fun e!1581476 () Bool)

(declare-fun call!153191 () Bool)

(assert (=> b!2491371 (= e!1581476 call!153191)))

(declare-fun b!2491372 () Bool)

(declare-fun res!1054140 () Bool)

(declare-fun e!1581475 () Bool)

(assert (=> b!2491372 (=> res!1054140 e!1581475)))

(assert (=> b!2491372 (= res!1054140 (not ((_ is Concat!12027) r!27340)))))

(declare-fun e!1581479 () Bool)

(assert (=> b!2491372 (= e!1581479 e!1581475)))

(declare-fun bm!153186 () Bool)

(declare-fun c!396067 () Bool)

(declare-fun c!396066 () Bool)

(assert (=> bm!153186 (= call!153192 (validRegex!2957 (ite c!396067 (reg!7660 r!27340) (ite c!396066 (regOne!15175 r!27340) (regTwo!15174 r!27340)))))))

(declare-fun bm!153187 () Bool)

(assert (=> bm!153187 (= call!153193 call!153192)))

(declare-fun b!2491373 () Bool)

(assert (=> b!2491373 (= e!1581477 e!1581479)))

(assert (=> b!2491373 (= c!396066 ((_ is Union!7331) r!27340))))

(declare-fun b!2491374 () Bool)

(declare-fun e!1581478 () Bool)

(assert (=> b!2491374 (= e!1581478 e!1581477)))

(assert (=> b!2491374 (= c!396067 ((_ is Star!7331) r!27340))))

(declare-fun bm!153188 () Bool)

(assert (=> bm!153188 (= call!153191 (validRegex!2957 (ite c!396066 (regTwo!15175 r!27340) (regOne!15174 r!27340))))))

(declare-fun b!2491375 () Bool)

(declare-fun res!1054138 () Bool)

(assert (=> b!2491375 (=> (not res!1054138) (not e!1581476))))

(assert (=> b!2491375 (= res!1054138 call!153193)))

(assert (=> b!2491375 (= e!1581479 e!1581476)))

(declare-fun b!2491376 () Bool)

(assert (=> b!2491376 (= e!1581475 e!1581480)))

(declare-fun res!1054141 () Bool)

(assert (=> b!2491376 (=> (not res!1054141) (not e!1581480))))

(assert (=> b!2491376 (= res!1054141 call!153191)))

(declare-fun d!714449 () Bool)

(declare-fun res!1054142 () Bool)

(assert (=> d!714449 (=> res!1054142 e!1581478)))

(assert (=> d!714449 (= res!1054142 ((_ is ElementMatch!7331) r!27340))))

(assert (=> d!714449 (= (validRegex!2957 r!27340) e!1581478)))

(assert (= (and d!714449 (not res!1054142)) b!2491374))

(assert (= (and b!2491374 c!396067) b!2491370))

(assert (= (and b!2491374 (not c!396067)) b!2491373))

(assert (= (and b!2491370 res!1054139) b!2491369))

(assert (= (and b!2491373 c!396066) b!2491375))

(assert (= (and b!2491373 (not c!396066)) b!2491372))

(assert (= (and b!2491375 res!1054138) b!2491371))

(assert (= (and b!2491372 (not res!1054140)) b!2491376))

(assert (= (and b!2491376 res!1054141) b!2491368))

(assert (= (or b!2491375 b!2491368) bm!153187))

(assert (= (or b!2491371 b!2491376) bm!153188))

(assert (= (or b!2491369 bm!153187) bm!153186))

(declare-fun m!2858111 () Bool)

(assert (=> b!2491370 m!2858111))

(declare-fun m!2858113 () Bool)

(assert (=> bm!153186 m!2858113))

(declare-fun m!2858115 () Bool)

(assert (=> bm!153188 m!2858115))

(assert (=> start!243412 d!714449))

(declare-fun b!2491411 () Bool)

(declare-fun e!1581491 () Bool)

(declare-fun tp!797777 () Bool)

(declare-fun tp!797775 () Bool)

(assert (=> b!2491411 (= e!1581491 (and tp!797777 tp!797775))))

(declare-fun b!2491409 () Bool)

(declare-fun tp!797776 () Bool)

(declare-fun tp!797779 () Bool)

(assert (=> b!2491409 (= e!1581491 (and tp!797776 tp!797779))))

(declare-fun b!2491410 () Bool)

(declare-fun tp!797778 () Bool)

(assert (=> b!2491410 (= e!1581491 tp!797778)))

(declare-fun b!2491408 () Bool)

(assert (=> b!2491408 (= e!1581491 tp_is_empty!12517)))

(assert (=> b!2491216 (= tp!797724 e!1581491)))

(assert (= (and b!2491216 ((_ is ElementMatch!7331) (regOne!15175 r!27340))) b!2491408))

(assert (= (and b!2491216 ((_ is Concat!12027) (regOne!15175 r!27340))) b!2491409))

(assert (= (and b!2491216 ((_ is Star!7331) (regOne!15175 r!27340))) b!2491410))

(assert (= (and b!2491216 ((_ is Union!7331) (regOne!15175 r!27340))) b!2491411))

(declare-fun b!2491415 () Bool)

(declare-fun e!1581492 () Bool)

(declare-fun tp!797782 () Bool)

(declare-fun tp!797780 () Bool)

(assert (=> b!2491415 (= e!1581492 (and tp!797782 tp!797780))))

(declare-fun b!2491413 () Bool)

(declare-fun tp!797781 () Bool)

(declare-fun tp!797784 () Bool)

(assert (=> b!2491413 (= e!1581492 (and tp!797781 tp!797784))))

(declare-fun b!2491414 () Bool)

(declare-fun tp!797783 () Bool)

(assert (=> b!2491414 (= e!1581492 tp!797783)))

(declare-fun b!2491412 () Bool)

(assert (=> b!2491412 (= e!1581492 tp_is_empty!12517)))

(assert (=> b!2491216 (= tp!797721 e!1581492)))

(assert (= (and b!2491216 ((_ is ElementMatch!7331) (regTwo!15175 r!27340))) b!2491412))

(assert (= (and b!2491216 ((_ is Concat!12027) (regTwo!15175 r!27340))) b!2491413))

(assert (= (and b!2491216 ((_ is Star!7331) (regTwo!15175 r!27340))) b!2491414))

(assert (= (and b!2491216 ((_ is Union!7331) (regTwo!15175 r!27340))) b!2491415))

(declare-fun b!2491419 () Bool)

(declare-fun e!1581493 () Bool)

(declare-fun tp!797787 () Bool)

(declare-fun tp!797785 () Bool)

(assert (=> b!2491419 (= e!1581493 (and tp!797787 tp!797785))))

(declare-fun b!2491417 () Bool)

(declare-fun tp!797786 () Bool)

(declare-fun tp!797789 () Bool)

(assert (=> b!2491417 (= e!1581493 (and tp!797786 tp!797789))))

(declare-fun b!2491418 () Bool)

(declare-fun tp!797788 () Bool)

(assert (=> b!2491418 (= e!1581493 tp!797788)))

(declare-fun b!2491416 () Bool)

(assert (=> b!2491416 (= e!1581493 tp_is_empty!12517)))

(assert (=> b!2491212 (= tp!797722 e!1581493)))

(assert (= (and b!2491212 ((_ is ElementMatch!7331) (regOne!15174 r!27340))) b!2491416))

(assert (= (and b!2491212 ((_ is Concat!12027) (regOne!15174 r!27340))) b!2491417))

(assert (= (and b!2491212 ((_ is Star!7331) (regOne!15174 r!27340))) b!2491418))

(assert (= (and b!2491212 ((_ is Union!7331) (regOne!15174 r!27340))) b!2491419))

(declare-fun b!2491423 () Bool)

(declare-fun e!1581494 () Bool)

(declare-fun tp!797792 () Bool)

(declare-fun tp!797790 () Bool)

(assert (=> b!2491423 (= e!1581494 (and tp!797792 tp!797790))))

(declare-fun b!2491421 () Bool)

(declare-fun tp!797791 () Bool)

(declare-fun tp!797794 () Bool)

(assert (=> b!2491421 (= e!1581494 (and tp!797791 tp!797794))))

(declare-fun b!2491422 () Bool)

(declare-fun tp!797793 () Bool)

(assert (=> b!2491422 (= e!1581494 tp!797793)))

(declare-fun b!2491420 () Bool)

(assert (=> b!2491420 (= e!1581494 tp_is_empty!12517)))

(assert (=> b!2491212 (= tp!797725 e!1581494)))

(assert (= (and b!2491212 ((_ is ElementMatch!7331) (regTwo!15174 r!27340))) b!2491420))

(assert (= (and b!2491212 ((_ is Concat!12027) (regTwo!15174 r!27340))) b!2491421))

(assert (= (and b!2491212 ((_ is Star!7331) (regTwo!15174 r!27340))) b!2491422))

(assert (= (and b!2491212 ((_ is Union!7331) (regTwo!15174 r!27340))) b!2491423))

(declare-fun b!2491427 () Bool)

(declare-fun e!1581495 () Bool)

(declare-fun tp!797797 () Bool)

(declare-fun tp!797795 () Bool)

(assert (=> b!2491427 (= e!1581495 (and tp!797797 tp!797795))))

(declare-fun b!2491425 () Bool)

(declare-fun tp!797796 () Bool)

(declare-fun tp!797799 () Bool)

(assert (=> b!2491425 (= e!1581495 (and tp!797796 tp!797799))))

(declare-fun b!2491426 () Bool)

(declare-fun tp!797798 () Bool)

(assert (=> b!2491426 (= e!1581495 tp!797798)))

(declare-fun b!2491424 () Bool)

(assert (=> b!2491424 (= e!1581495 tp_is_empty!12517)))

(assert (=> b!2491211 (= tp!797723 e!1581495)))

(assert (= (and b!2491211 ((_ is ElementMatch!7331) (reg!7660 r!27340))) b!2491424))

(assert (= (and b!2491211 ((_ is Concat!12027) (reg!7660 r!27340))) b!2491425))

(assert (= (and b!2491211 ((_ is Star!7331) (reg!7660 r!27340))) b!2491426))

(assert (= (and b!2491211 ((_ is Union!7331) (reg!7660 r!27340))) b!2491427))

(declare-fun b!2491432 () Bool)

(declare-fun e!1581498 () Bool)

(declare-fun tp!797802 () Bool)

(assert (=> b!2491432 (= e!1581498 (and tp_is_empty!12517 tp!797802))))

(assert (=> b!2491218 (= tp!797726 e!1581498)))

(assert (= (and b!2491218 ((_ is Cons!29296) (t!211095 tl!4068))) b!2491432))

(check-sat (not b!2491411) (not d!714441) (not b!2491413) (not b!2491414) (not b!2491427) (not d!714435) (not b!2491425) (not bm!153185) (not d!714437) (not b!2491409) (not bm!153188) (not b!2491418) (not bm!153186) (not b!2491410) tp_is_empty!12517 (not b!2491370) (not b!2491288) (not bm!153183) (not b!2491357) (not b!2491419) (not b!2491422) (not b!2491432) (not b!2491426) (not b!2491417) (not b!2491415) (not bm!153161) (not b!2491421) (not bm!153164) (not b!2491229) (not b!2491423))
(check-sat)
