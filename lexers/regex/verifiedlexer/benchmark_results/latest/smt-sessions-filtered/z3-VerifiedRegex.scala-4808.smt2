; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!247224 () Bool)

(assert start!247224)

(declare-fun b!2547988 () Bool)

(declare-fun e!1610461 () Bool)

(declare-fun e!1610459 () Bool)

(assert (=> b!2547988 (= e!1610461 e!1610459)))

(declare-fun res!1073524 () Bool)

(assert (=> b!2547988 (=> (not res!1073524) (not e!1610459))))

(declare-datatypes ((C!15340 0))(
  ( (C!15341 (val!9322 Int)) )
))
(declare-datatypes ((Regex!7591 0))(
  ( (ElementMatch!7591 (c!408279 C!15340)) (Concat!12287 (regOne!15694 Regex!7591) (regTwo!15694 Regex!7591)) (EmptyExpr!7591) (Star!7591 (reg!7920 Regex!7591)) (EmptyLang!7591) (Union!7591 (regOne!15695 Regex!7591) (regTwo!15695 Regex!7591)) )
))
(declare-fun lt!902978 () Regex!7591)

(declare-fun nullable!2508 (Regex!7591) Bool)

(assert (=> b!2547988 (= res!1073524 (nullable!2508 lt!902978))))

(declare-fun lt!902976 () Regex!7591)

(declare-datatypes ((List!29656 0))(
  ( (Nil!29556) (Cons!29556 (h!34976 C!15340) (t!211355 List!29656)) )
))
(declare-fun tl!4068 () List!29656)

(declare-fun derivative!286 (Regex!7591 List!29656) Regex!7591)

(assert (=> b!2547988 (= lt!902978 (derivative!286 lt!902976 tl!4068))))

(declare-fun r!27340 () Regex!7591)

(declare-fun c!14016 () C!15340)

(declare-fun derivativeStep!2160 (Regex!7591 C!15340) Regex!7591)

(assert (=> b!2547988 (= lt!902976 (derivativeStep!2160 r!27340 c!14016))))

(declare-fun b!2547989 () Bool)

(declare-fun e!1610457 () Bool)

(declare-fun tp!813176 () Bool)

(declare-fun tp!813174 () Bool)

(assert (=> b!2547989 (= e!1610457 (and tp!813176 tp!813174))))

(declare-fun b!2547990 () Bool)

(declare-fun e!1610462 () Bool)

(declare-fun RegexPrimitiveSize!118 (Regex!7591) Int)

(assert (=> b!2547990 (= e!1610462 (< (RegexPrimitiveSize!118 (reg!7920 r!27340)) (RegexPrimitiveSize!118 r!27340)))))

(declare-fun b!2547991 () Bool)

(declare-fun e!1610458 () Bool)

(declare-fun e!1610464 () Bool)

(assert (=> b!2547991 (= e!1610458 (not e!1610464))))

(declare-fun res!1073529 () Bool)

(assert (=> b!2547991 (=> res!1073529 e!1610464)))

(declare-fun lt!902970 () Bool)

(assert (=> b!2547991 (= res!1073529 (not lt!902970))))

(declare-fun matchR!3538 (Regex!7591 List!29656) Bool)

(assert (=> b!2547991 (= lt!902970 (matchR!3538 lt!902978 Nil!29556))))

(assert (=> b!2547991 (= lt!902970 (matchR!3538 lt!902976 tl!4068))))

(declare-datatypes ((Unit!43371 0))(
  ( (Unit!43372) )
))
(declare-fun lt!902975 () Unit!43371)

(declare-fun lemmaMatchRIsSameAsWholeDerivativeAndNil!184 (Regex!7591 List!29656) Unit!43371)

(assert (=> b!2547991 (= lt!902975 (lemmaMatchRIsSameAsWholeDerivativeAndNil!184 lt!902976 tl!4068))))

(declare-fun res!1073519 () Bool)

(assert (=> start!247224 (=> (not res!1073519) (not e!1610461))))

(declare-fun validRegex!3217 (Regex!7591) Bool)

(assert (=> start!247224 (= res!1073519 (validRegex!3217 r!27340))))

(assert (=> start!247224 e!1610461))

(assert (=> start!247224 e!1610457))

(declare-fun tp_is_empty!13037 () Bool)

(assert (=> start!247224 tp_is_empty!13037))

(declare-fun e!1610463 () Bool)

(assert (=> start!247224 e!1610463))

(declare-fun b!2547992 () Bool)

(declare-fun res!1073520 () Bool)

(declare-fun e!1610460 () Bool)

(assert (=> b!2547992 (=> res!1073520 e!1610460)))

(declare-fun lt!902973 () Regex!7591)

(declare-datatypes ((tuple2!29564 0))(
  ( (tuple2!29565 (_1!17324 List!29656) (_2!17324 List!29656)) )
))
(declare-fun lt!902974 () tuple2!29564)

(assert (=> b!2547992 (= res!1073520 (not (matchR!3538 lt!902973 (_2!17324 lt!902974))))))

(declare-fun b!2547993 () Bool)

(assert (=> b!2547993 (= e!1610459 e!1610458)))

(declare-fun res!1073523 () Bool)

(assert (=> b!2547993 (=> (not res!1073523) (not e!1610458))))

(declare-fun lt!902980 () Regex!7591)

(assert (=> b!2547993 (= res!1073523 (= lt!902976 (Concat!12287 lt!902980 lt!902973)))))

(assert (=> b!2547993 (= lt!902973 (Star!7591 (reg!7920 r!27340)))))

(assert (=> b!2547993 (= lt!902980 (derivativeStep!2160 (reg!7920 r!27340) c!14016))))

(declare-fun b!2547994 () Bool)

(declare-fun tp!813177 () Bool)

(declare-fun tp!813178 () Bool)

(assert (=> b!2547994 (= e!1610457 (and tp!813177 tp!813178))))

(declare-fun b!2547995 () Bool)

(declare-fun res!1073522 () Bool)

(assert (=> b!2547995 (=> res!1073522 e!1610462)))

(declare-fun lt!902977 () Regex!7591)

(assert (=> b!2547995 (= res!1073522 (not (nullable!2508 lt!902977)))))

(declare-fun b!2547996 () Bool)

(assert (=> b!2547996 (= e!1610464 e!1610460)))

(declare-fun res!1073521 () Bool)

(assert (=> b!2547996 (=> res!1073521 e!1610460)))

(declare-fun ++!7258 (List!29656 List!29656) List!29656)

(assert (=> b!2547996 (= res!1073521 (not (= (++!7258 (_1!17324 lt!902974) (_2!17324 lt!902974)) tl!4068)))))

(declare-datatypes ((Option!5902 0))(
  ( (None!5901) (Some!5901 (v!31840 tuple2!29564)) )
))
(declare-fun lt!902972 () Option!5902)

(declare-fun get!9276 (Option!5902) tuple2!29564)

(assert (=> b!2547996 (= lt!902974 (get!9276 lt!902972))))

(declare-fun isDefined!4724 (Option!5902) Bool)

(assert (=> b!2547996 (isDefined!4724 lt!902972)))

(declare-fun findConcatSeparation!924 (Regex!7591 Regex!7591 List!29656 List!29656 List!29656) Option!5902)

(assert (=> b!2547996 (= lt!902972 (findConcatSeparation!924 lt!902980 lt!902973 Nil!29556 tl!4068 tl!4068))))

(declare-fun lt!902979 () Unit!43371)

(declare-fun lemmaConcatAcceptsStringThenFindSeparationIsDefined!206 (Regex!7591 Regex!7591 List!29656) Unit!43371)

(assert (=> b!2547996 (= lt!902979 (lemmaConcatAcceptsStringThenFindSeparationIsDefined!206 lt!902980 lt!902973 tl!4068))))

(declare-fun b!2547997 () Bool)

(assert (=> b!2547997 (= e!1610457 tp_is_empty!13037)))

(declare-fun b!2547998 () Bool)

(declare-fun res!1073525 () Bool)

(assert (=> b!2547998 (=> res!1073525 e!1610460)))

(assert (=> b!2547998 (= res!1073525 (not (matchR!3538 (reg!7920 r!27340) (Cons!29556 c!14016 (_1!17324 lt!902974)))))))

(declare-fun b!2547999 () Bool)

(declare-fun tp!813175 () Bool)

(assert (=> b!2547999 (= e!1610463 (and tp_is_empty!13037 tp!813175))))

(declare-fun b!2548000 () Bool)

(assert (=> b!2548000 (= e!1610460 e!1610462)))

(declare-fun res!1073527 () Bool)

(assert (=> b!2548000 (=> res!1073527 e!1610462)))

(assert (=> b!2548000 (= res!1073527 (not (validRegex!3217 (reg!7920 r!27340))))))

(assert (=> b!2548000 (matchR!3538 lt!902977 Nil!29556)))

(assert (=> b!2548000 (= lt!902977 (derivative!286 lt!902980 (_1!17324 lt!902974)))))

(declare-fun lt!902971 () Unit!43371)

(assert (=> b!2548000 (= lt!902971 (lemmaMatchRIsSameAsWholeDerivativeAndNil!184 lt!902980 (_1!17324 lt!902974)))))

(declare-fun b!2548001 () Bool)

(declare-fun res!1073530 () Bool)

(assert (=> b!2548001 (=> (not res!1073530) (not e!1610459))))

(get-info :version)

(assert (=> b!2548001 (= res!1073530 (and (not ((_ is EmptyExpr!7591) r!27340)) (not ((_ is EmptyLang!7591) r!27340)) (not ((_ is ElementMatch!7591) r!27340)) (not ((_ is Union!7591) r!27340)) ((_ is Star!7591) r!27340)))))

(declare-fun b!2548002 () Bool)

(declare-fun tp!813173 () Bool)

(assert (=> b!2548002 (= e!1610457 tp!813173)))

(declare-fun b!2548003 () Bool)

(declare-fun res!1073526 () Bool)

(assert (=> b!2548003 (=> (not res!1073526) (not e!1610458))))

(assert (=> b!2548003 (= res!1073526 (not (nullable!2508 (derivative!286 lt!902980 tl!4068))))))

(declare-fun b!2548004 () Bool)

(declare-fun res!1073528 () Bool)

(assert (=> b!2548004 (=> res!1073528 e!1610460)))

(assert (=> b!2548004 (= res!1073528 (not (matchR!3538 lt!902980 (_1!17324 lt!902974))))))

(assert (= (and start!247224 res!1073519) b!2547988))

(assert (= (and b!2547988 res!1073524) b!2548001))

(assert (= (and b!2548001 res!1073530) b!2547993))

(assert (= (and b!2547993 res!1073523) b!2548003))

(assert (= (and b!2548003 res!1073526) b!2547991))

(assert (= (and b!2547991 (not res!1073529)) b!2547996))

(assert (= (and b!2547996 (not res!1073521)) b!2547992))

(assert (= (and b!2547992 (not res!1073520)) b!2547998))

(assert (= (and b!2547998 (not res!1073525)) b!2548004))

(assert (= (and b!2548004 (not res!1073528)) b!2548000))

(assert (= (and b!2548000 (not res!1073527)) b!2547995))

(assert (= (and b!2547995 (not res!1073522)) b!2547990))

(assert (= (and start!247224 ((_ is ElementMatch!7591) r!27340)) b!2547997))

(assert (= (and start!247224 ((_ is Concat!12287) r!27340)) b!2547989))

(assert (= (and start!247224 ((_ is Star!7591) r!27340)) b!2548002))

(assert (= (and start!247224 ((_ is Union!7591) r!27340)) b!2547994))

(assert (= (and start!247224 ((_ is Cons!29556) tl!4068)) b!2547999))

(declare-fun m!2892335 () Bool)

(assert (=> start!247224 m!2892335))

(declare-fun m!2892337 () Bool)

(assert (=> b!2547993 m!2892337))

(declare-fun m!2892339 () Bool)

(assert (=> b!2547990 m!2892339))

(declare-fun m!2892341 () Bool)

(assert (=> b!2547990 m!2892341))

(declare-fun m!2892343 () Bool)

(assert (=> b!2548000 m!2892343))

(declare-fun m!2892345 () Bool)

(assert (=> b!2548000 m!2892345))

(declare-fun m!2892347 () Bool)

(assert (=> b!2548000 m!2892347))

(declare-fun m!2892349 () Bool)

(assert (=> b!2548000 m!2892349))

(declare-fun m!2892351 () Bool)

(assert (=> b!2547998 m!2892351))

(declare-fun m!2892353 () Bool)

(assert (=> b!2548004 m!2892353))

(declare-fun m!2892355 () Bool)

(assert (=> b!2548003 m!2892355))

(assert (=> b!2548003 m!2892355))

(declare-fun m!2892357 () Bool)

(assert (=> b!2548003 m!2892357))

(declare-fun m!2892359 () Bool)

(assert (=> b!2547995 m!2892359))

(declare-fun m!2892361 () Bool)

(assert (=> b!2547992 m!2892361))

(declare-fun m!2892363 () Bool)

(assert (=> b!2547996 m!2892363))

(declare-fun m!2892365 () Bool)

(assert (=> b!2547996 m!2892365))

(declare-fun m!2892367 () Bool)

(assert (=> b!2547996 m!2892367))

(declare-fun m!2892369 () Bool)

(assert (=> b!2547996 m!2892369))

(declare-fun m!2892371 () Bool)

(assert (=> b!2547996 m!2892371))

(declare-fun m!2892373 () Bool)

(assert (=> b!2547991 m!2892373))

(declare-fun m!2892375 () Bool)

(assert (=> b!2547991 m!2892375))

(declare-fun m!2892377 () Bool)

(assert (=> b!2547991 m!2892377))

(declare-fun m!2892379 () Bool)

(assert (=> b!2547988 m!2892379))

(declare-fun m!2892381 () Bool)

(assert (=> b!2547988 m!2892381))

(declare-fun m!2892383 () Bool)

(assert (=> b!2547988 m!2892383))

(check-sat (not start!247224) (not b!2547991) (not b!2548003) (not b!2547990) (not b!2547999) (not b!2548000) (not b!2547994) (not b!2547996) (not b!2548002) (not b!2547993) (not b!2548004) (not b!2547995) (not b!2547989) (not b!2547988) tp_is_empty!13037 (not b!2547992) (not b!2547998))
(check-sat)
(get-model)

(declare-fun d!722871 () Bool)

(declare-fun e!1610504 () Bool)

(assert (=> d!722871 e!1610504))

(declare-fun c!408309 () Bool)

(assert (=> d!722871 (= c!408309 ((_ is EmptyExpr!7591) lt!902980))))

(declare-fun lt!902990 () Bool)

(declare-fun e!1610506 () Bool)

(assert (=> d!722871 (= lt!902990 e!1610506)))

(declare-fun c!408311 () Bool)

(declare-fun isEmpty!17002 (List!29656) Bool)

(assert (=> d!722871 (= c!408311 (isEmpty!17002 (_1!17324 lt!902974)))))

(assert (=> d!722871 (validRegex!3217 lt!902980)))

(assert (=> d!722871 (= (matchR!3538 lt!902980 (_1!17324 lt!902974)) lt!902990)))

(declare-fun b!2548079 () Bool)

(assert (=> b!2548079 (= e!1610506 (nullable!2508 lt!902980))))

(declare-fun b!2548080 () Bool)

(declare-fun res!1073552 () Bool)

(declare-fun e!1610508 () Bool)

(assert (=> b!2548080 (=> res!1073552 e!1610508)))

(declare-fun e!1610503 () Bool)

(assert (=> b!2548080 (= res!1073552 e!1610503)))

(declare-fun res!1073553 () Bool)

(assert (=> b!2548080 (=> (not res!1073553) (not e!1610503))))

(assert (=> b!2548080 (= res!1073553 lt!902990)))

(declare-fun b!2548081 () Bool)

(declare-fun e!1610502 () Bool)

(assert (=> b!2548081 (= e!1610502 (not lt!902990))))

(declare-fun b!2548082 () Bool)

(declare-fun res!1073551 () Bool)

(declare-fun e!1610505 () Bool)

(assert (=> b!2548082 (=> res!1073551 e!1610505)))

(declare-fun tail!4075 (List!29656) List!29656)

(assert (=> b!2548082 (= res!1073551 (not (isEmpty!17002 (tail!4075 (_1!17324 lt!902974)))))))

(declare-fun b!2548083 () Bool)

(declare-fun call!161844 () Bool)

(assert (=> b!2548083 (= e!1610504 (= lt!902990 call!161844))))

(declare-fun b!2548084 () Bool)

(declare-fun e!1610507 () Bool)

(assert (=> b!2548084 (= e!1610508 e!1610507)))

(declare-fun res!1073549 () Bool)

(assert (=> b!2548084 (=> (not res!1073549) (not e!1610507))))

(assert (=> b!2548084 (= res!1073549 (not lt!902990))))

(declare-fun bm!161839 () Bool)

(assert (=> bm!161839 (= call!161844 (isEmpty!17002 (_1!17324 lt!902974)))))

(declare-fun b!2548085 () Bool)

(declare-fun head!5800 (List!29656) C!15340)

(assert (=> b!2548085 (= e!1610503 (= (head!5800 (_1!17324 lt!902974)) (c!408279 lt!902980)))))

(declare-fun b!2548086 () Bool)

(assert (=> b!2548086 (= e!1610505 (not (= (head!5800 (_1!17324 lt!902974)) (c!408279 lt!902980))))))

(declare-fun b!2548087 () Bool)

(assert (=> b!2548087 (= e!1610507 e!1610505)))

(declare-fun res!1073548 () Bool)

(assert (=> b!2548087 (=> res!1073548 e!1610505)))

(assert (=> b!2548087 (= res!1073548 call!161844)))

(declare-fun b!2548088 () Bool)

(assert (=> b!2548088 (= e!1610506 (matchR!3538 (derivativeStep!2160 lt!902980 (head!5800 (_1!17324 lt!902974))) (tail!4075 (_1!17324 lt!902974))))))

(declare-fun b!2548089 () Bool)

(declare-fun res!1073554 () Bool)

(assert (=> b!2548089 (=> (not res!1073554) (not e!1610503))))

(assert (=> b!2548089 (= res!1073554 (not call!161844))))

(declare-fun b!2548090 () Bool)

(declare-fun res!1073550 () Bool)

(assert (=> b!2548090 (=> res!1073550 e!1610508)))

(assert (=> b!2548090 (= res!1073550 (not ((_ is ElementMatch!7591) lt!902980)))))

(assert (=> b!2548090 (= e!1610502 e!1610508)))

(declare-fun b!2548091 () Bool)

(assert (=> b!2548091 (= e!1610504 e!1610502)))

(declare-fun c!408310 () Bool)

(assert (=> b!2548091 (= c!408310 ((_ is EmptyLang!7591) lt!902980))))

(declare-fun b!2548092 () Bool)

(declare-fun res!1073547 () Bool)

(assert (=> b!2548092 (=> (not res!1073547) (not e!1610503))))

(assert (=> b!2548092 (= res!1073547 (isEmpty!17002 (tail!4075 (_1!17324 lt!902974))))))

(assert (= (and d!722871 c!408311) b!2548079))

(assert (= (and d!722871 (not c!408311)) b!2548088))

(assert (= (and d!722871 c!408309) b!2548083))

(assert (= (and d!722871 (not c!408309)) b!2548091))

(assert (= (and b!2548091 c!408310) b!2548081))

(assert (= (and b!2548091 (not c!408310)) b!2548090))

(assert (= (and b!2548090 (not res!1073550)) b!2548080))

(assert (= (and b!2548080 res!1073553) b!2548089))

(assert (= (and b!2548089 res!1073554) b!2548092))

(assert (= (and b!2548092 res!1073547) b!2548085))

(assert (= (and b!2548080 (not res!1073552)) b!2548084))

(assert (= (and b!2548084 res!1073549) b!2548087))

(assert (= (and b!2548087 (not res!1073548)) b!2548082))

(assert (= (and b!2548082 (not res!1073551)) b!2548086))

(assert (= (or b!2548083 b!2548087 b!2548089) bm!161839))

(declare-fun m!2892403 () Bool)

(assert (=> b!2548079 m!2892403))

(declare-fun m!2892405 () Bool)

(assert (=> b!2548085 m!2892405))

(assert (=> b!2548088 m!2892405))

(assert (=> b!2548088 m!2892405))

(declare-fun m!2892407 () Bool)

(assert (=> b!2548088 m!2892407))

(declare-fun m!2892409 () Bool)

(assert (=> b!2548088 m!2892409))

(assert (=> b!2548088 m!2892407))

(assert (=> b!2548088 m!2892409))

(declare-fun m!2892411 () Bool)

(assert (=> b!2548088 m!2892411))

(declare-fun m!2892413 () Bool)

(assert (=> bm!161839 m!2892413))

(assert (=> d!722871 m!2892413))

(declare-fun m!2892415 () Bool)

(assert (=> d!722871 m!2892415))

(assert (=> b!2548082 m!2892409))

(assert (=> b!2548082 m!2892409))

(declare-fun m!2892417 () Bool)

(assert (=> b!2548082 m!2892417))

(assert (=> b!2548086 m!2892405))

(assert (=> b!2548092 m!2892409))

(assert (=> b!2548092 m!2892409))

(assert (=> b!2548092 m!2892417))

(assert (=> b!2548004 d!722871))

(declare-fun b!2548143 () Bool)

(declare-fun e!1610534 () Regex!7591)

(assert (=> b!2548143 (= e!1610534 (ite (= c!14016 (c!408279 (reg!7920 r!27340))) EmptyExpr!7591 EmptyLang!7591))))

(declare-fun b!2548144 () Bool)

(declare-fun e!1610535 () Regex!7591)

(declare-fun call!161866 () Regex!7591)

(assert (=> b!2548144 (= e!1610535 (Concat!12287 call!161866 (reg!7920 r!27340)))))

(declare-fun bm!161860 () Bool)

(declare-fun c!408341 () Bool)

(declare-fun c!408338 () Bool)

(declare-fun call!161867 () Regex!7591)

(assert (=> bm!161860 (= call!161867 (derivativeStep!2160 (ite c!408338 (regOne!15695 (reg!7920 r!27340)) (ite c!408341 (reg!7920 (reg!7920 r!27340)) (regOne!15694 (reg!7920 r!27340)))) c!14016))))

(declare-fun call!161868 () Regex!7591)

(declare-fun call!161865 () Regex!7591)

(declare-fun b!2548145 () Bool)

(declare-fun e!1610536 () Regex!7591)

(assert (=> b!2548145 (= e!1610536 (Union!7591 (Concat!12287 call!161865 (regTwo!15694 (reg!7920 r!27340))) call!161868))))

(declare-fun b!2548146 () Bool)

(assert (=> b!2548146 (= e!1610536 (Union!7591 (Concat!12287 call!161865 (regTwo!15694 (reg!7920 r!27340))) EmptyLang!7591))))

(declare-fun b!2548147 () Bool)

(declare-fun e!1610537 () Regex!7591)

(assert (=> b!2548147 (= e!1610537 EmptyLang!7591)))

(declare-fun b!2548148 () Bool)

(declare-fun e!1610538 () Regex!7591)

(assert (=> b!2548148 (= e!1610538 e!1610535)))

(assert (=> b!2548148 (= c!408341 ((_ is Star!7591) (reg!7920 r!27340)))))

(declare-fun bm!161861 () Bool)

(assert (=> bm!161861 (= call!161868 (derivativeStep!2160 (ite c!408338 (regTwo!15695 (reg!7920 r!27340)) (regTwo!15694 (reg!7920 r!27340))) c!14016))))

(declare-fun bm!161862 () Bool)

(assert (=> bm!161862 (= call!161865 call!161866)))

(declare-fun d!722881 () Bool)

(declare-fun lt!902996 () Regex!7591)

(assert (=> d!722881 (validRegex!3217 lt!902996)))

(assert (=> d!722881 (= lt!902996 e!1610537)))

(declare-fun c!408339 () Bool)

(assert (=> d!722881 (= c!408339 (or ((_ is EmptyExpr!7591) (reg!7920 r!27340)) ((_ is EmptyLang!7591) (reg!7920 r!27340))))))

(assert (=> d!722881 (validRegex!3217 (reg!7920 r!27340))))

(assert (=> d!722881 (= (derivativeStep!2160 (reg!7920 r!27340) c!14016) lt!902996)))

(declare-fun b!2548149 () Bool)

(assert (=> b!2548149 (= e!1610537 e!1610534)))

(declare-fun c!408337 () Bool)

(assert (=> b!2548149 (= c!408337 ((_ is ElementMatch!7591) (reg!7920 r!27340)))))

(declare-fun bm!161863 () Bool)

(assert (=> bm!161863 (= call!161866 call!161867)))

(declare-fun b!2548150 () Bool)

(declare-fun c!408340 () Bool)

(assert (=> b!2548150 (= c!408340 (nullable!2508 (regOne!15694 (reg!7920 r!27340))))))

(assert (=> b!2548150 (= e!1610535 e!1610536)))

(declare-fun b!2548151 () Bool)

(assert (=> b!2548151 (= c!408338 ((_ is Union!7591) (reg!7920 r!27340)))))

(assert (=> b!2548151 (= e!1610534 e!1610538)))

(declare-fun b!2548152 () Bool)

(assert (=> b!2548152 (= e!1610538 (Union!7591 call!161867 call!161868))))

(assert (= (and d!722881 c!408339) b!2548147))

(assert (= (and d!722881 (not c!408339)) b!2548149))

(assert (= (and b!2548149 c!408337) b!2548143))

(assert (= (and b!2548149 (not c!408337)) b!2548151))

(assert (= (and b!2548151 c!408338) b!2548152))

(assert (= (and b!2548151 (not c!408338)) b!2548148))

(assert (= (and b!2548148 c!408341) b!2548144))

(assert (= (and b!2548148 (not c!408341)) b!2548150))

(assert (= (and b!2548150 c!408340) b!2548145))

(assert (= (and b!2548150 (not c!408340)) b!2548146))

(assert (= (or b!2548145 b!2548146) bm!161862))

(assert (= (or b!2548144 bm!161862) bm!161863))

(assert (= (or b!2548152 b!2548145) bm!161861))

(assert (= (or b!2548152 bm!161863) bm!161860))

(declare-fun m!2892427 () Bool)

(assert (=> bm!161860 m!2892427))

(declare-fun m!2892429 () Bool)

(assert (=> bm!161861 m!2892429))

(declare-fun m!2892431 () Bool)

(assert (=> d!722881 m!2892431))

(assert (=> d!722881 m!2892343))

(declare-fun m!2892433 () Bool)

(assert (=> b!2548150 m!2892433))

(assert (=> b!2547993 d!722881))

(declare-fun d!722885 () Bool)

(declare-fun nullableFct!733 (Regex!7591) Bool)

(assert (=> d!722885 (= (nullable!2508 lt!902977) (nullableFct!733 lt!902977))))

(declare-fun bs!469555 () Bool)

(assert (= bs!469555 d!722885))

(declare-fun m!2892435 () Bool)

(assert (=> bs!469555 m!2892435))

(assert (=> b!2547995 d!722885))

(declare-fun d!722887 () Bool)

(declare-fun e!1610541 () Bool)

(assert (=> d!722887 e!1610541))

(declare-fun c!408342 () Bool)

(assert (=> d!722887 (= c!408342 ((_ is EmptyExpr!7591) lt!902978))))

(declare-fun lt!902997 () Bool)

(declare-fun e!1610543 () Bool)

(assert (=> d!722887 (= lt!902997 e!1610543)))

(declare-fun c!408344 () Bool)

(assert (=> d!722887 (= c!408344 (isEmpty!17002 Nil!29556))))

(assert (=> d!722887 (validRegex!3217 lt!902978)))

(assert (=> d!722887 (= (matchR!3538 lt!902978 Nil!29556) lt!902997)))

(declare-fun b!2548153 () Bool)

(assert (=> b!2548153 (= e!1610543 (nullable!2508 lt!902978))))

(declare-fun b!2548154 () Bool)

(declare-fun res!1073560 () Bool)

(declare-fun e!1610545 () Bool)

(assert (=> b!2548154 (=> res!1073560 e!1610545)))

(declare-fun e!1610540 () Bool)

(assert (=> b!2548154 (= res!1073560 e!1610540)))

(declare-fun res!1073561 () Bool)

(assert (=> b!2548154 (=> (not res!1073561) (not e!1610540))))

(assert (=> b!2548154 (= res!1073561 lt!902997)))

(declare-fun b!2548155 () Bool)

(declare-fun e!1610539 () Bool)

(assert (=> b!2548155 (= e!1610539 (not lt!902997))))

(declare-fun b!2548156 () Bool)

(declare-fun res!1073559 () Bool)

(declare-fun e!1610542 () Bool)

(assert (=> b!2548156 (=> res!1073559 e!1610542)))

(assert (=> b!2548156 (= res!1073559 (not (isEmpty!17002 (tail!4075 Nil!29556))))))

(declare-fun b!2548157 () Bool)

(declare-fun call!161869 () Bool)

(assert (=> b!2548157 (= e!1610541 (= lt!902997 call!161869))))

(declare-fun b!2548158 () Bool)

(declare-fun e!1610544 () Bool)

(assert (=> b!2548158 (= e!1610545 e!1610544)))

(declare-fun res!1073557 () Bool)

(assert (=> b!2548158 (=> (not res!1073557) (not e!1610544))))

(assert (=> b!2548158 (= res!1073557 (not lt!902997))))

(declare-fun bm!161864 () Bool)

(assert (=> bm!161864 (= call!161869 (isEmpty!17002 Nil!29556))))

(declare-fun b!2548159 () Bool)

(assert (=> b!2548159 (= e!1610540 (= (head!5800 Nil!29556) (c!408279 lt!902978)))))

(declare-fun b!2548160 () Bool)

(assert (=> b!2548160 (= e!1610542 (not (= (head!5800 Nil!29556) (c!408279 lt!902978))))))

(declare-fun b!2548161 () Bool)

(assert (=> b!2548161 (= e!1610544 e!1610542)))

(declare-fun res!1073556 () Bool)

(assert (=> b!2548161 (=> res!1073556 e!1610542)))

(assert (=> b!2548161 (= res!1073556 call!161869)))

(declare-fun b!2548162 () Bool)

(assert (=> b!2548162 (= e!1610543 (matchR!3538 (derivativeStep!2160 lt!902978 (head!5800 Nil!29556)) (tail!4075 Nil!29556)))))

(declare-fun b!2548163 () Bool)

(declare-fun res!1073562 () Bool)

(assert (=> b!2548163 (=> (not res!1073562) (not e!1610540))))

(assert (=> b!2548163 (= res!1073562 (not call!161869))))

(declare-fun b!2548164 () Bool)

(declare-fun res!1073558 () Bool)

(assert (=> b!2548164 (=> res!1073558 e!1610545)))

(assert (=> b!2548164 (= res!1073558 (not ((_ is ElementMatch!7591) lt!902978)))))

(assert (=> b!2548164 (= e!1610539 e!1610545)))

(declare-fun b!2548165 () Bool)

(assert (=> b!2548165 (= e!1610541 e!1610539)))

(declare-fun c!408343 () Bool)

(assert (=> b!2548165 (= c!408343 ((_ is EmptyLang!7591) lt!902978))))

(declare-fun b!2548166 () Bool)

(declare-fun res!1073555 () Bool)

(assert (=> b!2548166 (=> (not res!1073555) (not e!1610540))))

(assert (=> b!2548166 (= res!1073555 (isEmpty!17002 (tail!4075 Nil!29556)))))

(assert (= (and d!722887 c!408344) b!2548153))

(assert (= (and d!722887 (not c!408344)) b!2548162))

(assert (= (and d!722887 c!408342) b!2548157))

(assert (= (and d!722887 (not c!408342)) b!2548165))

(assert (= (and b!2548165 c!408343) b!2548155))

(assert (= (and b!2548165 (not c!408343)) b!2548164))

(assert (= (and b!2548164 (not res!1073558)) b!2548154))

(assert (= (and b!2548154 res!1073561) b!2548163))

(assert (= (and b!2548163 res!1073562) b!2548166))

(assert (= (and b!2548166 res!1073555) b!2548159))

(assert (= (and b!2548154 (not res!1073560)) b!2548158))

(assert (= (and b!2548158 res!1073557) b!2548161))

(assert (= (and b!2548161 (not res!1073556)) b!2548156))

(assert (= (and b!2548156 (not res!1073559)) b!2548160))

(assert (= (or b!2548157 b!2548161 b!2548163) bm!161864))

(assert (=> b!2548153 m!2892379))

(declare-fun m!2892437 () Bool)

(assert (=> b!2548159 m!2892437))

(assert (=> b!2548162 m!2892437))

(assert (=> b!2548162 m!2892437))

(declare-fun m!2892439 () Bool)

(assert (=> b!2548162 m!2892439))

(declare-fun m!2892441 () Bool)

(assert (=> b!2548162 m!2892441))

(assert (=> b!2548162 m!2892439))

(assert (=> b!2548162 m!2892441))

(declare-fun m!2892443 () Bool)

(assert (=> b!2548162 m!2892443))

(declare-fun m!2892445 () Bool)

(assert (=> bm!161864 m!2892445))

(assert (=> d!722887 m!2892445))

(declare-fun m!2892447 () Bool)

(assert (=> d!722887 m!2892447))

(assert (=> b!2548156 m!2892441))

(assert (=> b!2548156 m!2892441))

(declare-fun m!2892449 () Bool)

(assert (=> b!2548156 m!2892449))

(assert (=> b!2548160 m!2892437))

(assert (=> b!2548166 m!2892441))

(assert (=> b!2548166 m!2892441))

(assert (=> b!2548166 m!2892449))

(assert (=> b!2547991 d!722887))

(declare-fun d!722889 () Bool)

(declare-fun e!1610548 () Bool)

(assert (=> d!722889 e!1610548))

(declare-fun c!408345 () Bool)

(assert (=> d!722889 (= c!408345 ((_ is EmptyExpr!7591) lt!902976))))

(declare-fun lt!902998 () Bool)

(declare-fun e!1610550 () Bool)

(assert (=> d!722889 (= lt!902998 e!1610550)))

(declare-fun c!408347 () Bool)

(assert (=> d!722889 (= c!408347 (isEmpty!17002 tl!4068))))

(assert (=> d!722889 (validRegex!3217 lt!902976)))

(assert (=> d!722889 (= (matchR!3538 lt!902976 tl!4068) lt!902998)))

(declare-fun b!2548167 () Bool)

(assert (=> b!2548167 (= e!1610550 (nullable!2508 lt!902976))))

(declare-fun b!2548168 () Bool)

(declare-fun res!1073568 () Bool)

(declare-fun e!1610552 () Bool)

(assert (=> b!2548168 (=> res!1073568 e!1610552)))

(declare-fun e!1610547 () Bool)

(assert (=> b!2548168 (= res!1073568 e!1610547)))

(declare-fun res!1073569 () Bool)

(assert (=> b!2548168 (=> (not res!1073569) (not e!1610547))))

(assert (=> b!2548168 (= res!1073569 lt!902998)))

(declare-fun b!2548169 () Bool)

(declare-fun e!1610546 () Bool)

(assert (=> b!2548169 (= e!1610546 (not lt!902998))))

(declare-fun b!2548170 () Bool)

(declare-fun res!1073567 () Bool)

(declare-fun e!1610549 () Bool)

(assert (=> b!2548170 (=> res!1073567 e!1610549)))

(assert (=> b!2548170 (= res!1073567 (not (isEmpty!17002 (tail!4075 tl!4068))))))

(declare-fun b!2548171 () Bool)

(declare-fun call!161870 () Bool)

(assert (=> b!2548171 (= e!1610548 (= lt!902998 call!161870))))

(declare-fun b!2548172 () Bool)

(declare-fun e!1610551 () Bool)

(assert (=> b!2548172 (= e!1610552 e!1610551)))

(declare-fun res!1073565 () Bool)

(assert (=> b!2548172 (=> (not res!1073565) (not e!1610551))))

(assert (=> b!2548172 (= res!1073565 (not lt!902998))))

(declare-fun bm!161865 () Bool)

(assert (=> bm!161865 (= call!161870 (isEmpty!17002 tl!4068))))

(declare-fun b!2548173 () Bool)

(assert (=> b!2548173 (= e!1610547 (= (head!5800 tl!4068) (c!408279 lt!902976)))))

(declare-fun b!2548174 () Bool)

(assert (=> b!2548174 (= e!1610549 (not (= (head!5800 tl!4068) (c!408279 lt!902976))))))

(declare-fun b!2548175 () Bool)

(assert (=> b!2548175 (= e!1610551 e!1610549)))

(declare-fun res!1073564 () Bool)

(assert (=> b!2548175 (=> res!1073564 e!1610549)))

(assert (=> b!2548175 (= res!1073564 call!161870)))

(declare-fun b!2548176 () Bool)

(assert (=> b!2548176 (= e!1610550 (matchR!3538 (derivativeStep!2160 lt!902976 (head!5800 tl!4068)) (tail!4075 tl!4068)))))

(declare-fun b!2548177 () Bool)

(declare-fun res!1073570 () Bool)

(assert (=> b!2548177 (=> (not res!1073570) (not e!1610547))))

(assert (=> b!2548177 (= res!1073570 (not call!161870))))

(declare-fun b!2548178 () Bool)

(declare-fun res!1073566 () Bool)

(assert (=> b!2548178 (=> res!1073566 e!1610552)))

(assert (=> b!2548178 (= res!1073566 (not ((_ is ElementMatch!7591) lt!902976)))))

(assert (=> b!2548178 (= e!1610546 e!1610552)))

(declare-fun b!2548179 () Bool)

(assert (=> b!2548179 (= e!1610548 e!1610546)))

(declare-fun c!408346 () Bool)

(assert (=> b!2548179 (= c!408346 ((_ is EmptyLang!7591) lt!902976))))

(declare-fun b!2548180 () Bool)

(declare-fun res!1073563 () Bool)

(assert (=> b!2548180 (=> (not res!1073563) (not e!1610547))))

(assert (=> b!2548180 (= res!1073563 (isEmpty!17002 (tail!4075 tl!4068)))))

(assert (= (and d!722889 c!408347) b!2548167))

(assert (= (and d!722889 (not c!408347)) b!2548176))

(assert (= (and d!722889 c!408345) b!2548171))

(assert (= (and d!722889 (not c!408345)) b!2548179))

(assert (= (and b!2548179 c!408346) b!2548169))

(assert (= (and b!2548179 (not c!408346)) b!2548178))

(assert (= (and b!2548178 (not res!1073566)) b!2548168))

(assert (= (and b!2548168 res!1073569) b!2548177))

(assert (= (and b!2548177 res!1073570) b!2548180))

(assert (= (and b!2548180 res!1073563) b!2548173))

(assert (= (and b!2548168 (not res!1073568)) b!2548172))

(assert (= (and b!2548172 res!1073565) b!2548175))

(assert (= (and b!2548175 (not res!1073564)) b!2548170))

(assert (= (and b!2548170 (not res!1073567)) b!2548174))

(assert (= (or b!2548171 b!2548175 b!2548177) bm!161865))

(declare-fun m!2892451 () Bool)

(assert (=> b!2548167 m!2892451))

(declare-fun m!2892453 () Bool)

(assert (=> b!2548173 m!2892453))

(assert (=> b!2548176 m!2892453))

(assert (=> b!2548176 m!2892453))

(declare-fun m!2892455 () Bool)

(assert (=> b!2548176 m!2892455))

(declare-fun m!2892457 () Bool)

(assert (=> b!2548176 m!2892457))

(assert (=> b!2548176 m!2892455))

(assert (=> b!2548176 m!2892457))

(declare-fun m!2892459 () Bool)

(assert (=> b!2548176 m!2892459))

(declare-fun m!2892461 () Bool)

(assert (=> bm!161865 m!2892461))

(assert (=> d!722889 m!2892461))

(declare-fun m!2892463 () Bool)

(assert (=> d!722889 m!2892463))

(assert (=> b!2548170 m!2892457))

(assert (=> b!2548170 m!2892457))

(declare-fun m!2892465 () Bool)

(assert (=> b!2548170 m!2892465))

(assert (=> b!2548174 m!2892453))

(assert (=> b!2548180 m!2892457))

(assert (=> b!2548180 m!2892457))

(assert (=> b!2548180 m!2892465))

(assert (=> b!2547991 d!722889))

(declare-fun d!722891 () Bool)

(assert (=> d!722891 (= (matchR!3538 lt!902976 tl!4068) (matchR!3538 (derivative!286 lt!902976 tl!4068) Nil!29556))))

(declare-fun lt!903003 () Unit!43371)

(declare-fun choose!15047 (Regex!7591 List!29656) Unit!43371)

(assert (=> d!722891 (= lt!903003 (choose!15047 lt!902976 tl!4068))))

(assert (=> d!722891 (validRegex!3217 lt!902976)))

(assert (=> d!722891 (= (lemmaMatchRIsSameAsWholeDerivativeAndNil!184 lt!902976 tl!4068) lt!903003)))

(declare-fun bs!469556 () Bool)

(assert (= bs!469556 d!722891))

(declare-fun m!2892467 () Bool)

(assert (=> bs!469556 m!2892467))

(assert (=> bs!469556 m!2892375))

(assert (=> bs!469556 m!2892381))

(declare-fun m!2892469 () Bool)

(assert (=> bs!469556 m!2892469))

(assert (=> bs!469556 m!2892381))

(assert (=> bs!469556 m!2892463))

(assert (=> b!2547991 d!722891))

(declare-fun b!2548257 () Bool)

(declare-fun c!408372 () Bool)

(assert (=> b!2548257 (= c!408372 ((_ is EmptyLang!7591) (reg!7920 r!27340)))))

(declare-fun e!1610593 () Int)

(declare-fun e!1610591 () Int)

(assert (=> b!2548257 (= e!1610593 e!1610591)))

(declare-fun b!2548258 () Bool)

(declare-fun e!1610594 () Int)

(declare-fun call!161883 () Int)

(declare-fun call!161882 () Int)

(assert (=> b!2548258 (= e!1610594 (+ 1 call!161883 call!161882))))

(declare-fun bm!161876 () Bool)

(declare-fun call!161881 () Int)

(assert (=> bm!161876 (= call!161881 call!161882)))

(declare-fun b!2548259 () Bool)

(declare-fun e!1610595 () Int)

(assert (=> b!2548259 (= e!1610595 1)))

(declare-fun b!2548260 () Bool)

(assert (=> b!2548260 (= e!1610591 0)))

(declare-fun b!2548261 () Bool)

(assert (=> b!2548261 (= e!1610593 (+ 1 call!161881))))

(declare-fun b!2548262 () Bool)

(assert (=> b!2548262 (= e!1610595 e!1610594)))

(declare-fun c!408373 () Bool)

(assert (=> b!2548262 (= c!408373 ((_ is Concat!12287) (reg!7920 r!27340)))))

(declare-fun bm!161877 () Bool)

(assert (=> bm!161877 (= call!161883 (RegexPrimitiveSize!118 (ite c!408373 (regOne!15694 (reg!7920 r!27340)) (regTwo!15695 (reg!7920 r!27340)))))))

(declare-fun b!2548263 () Bool)

(assert (=> b!2548263 (= e!1610591 (+ 1 call!161881 call!161883))))

(declare-fun d!722893 () Bool)

(declare-fun lt!903008 () Int)

(assert (=> d!722893 (>= lt!903008 0)))

(assert (=> d!722893 (= lt!903008 e!1610595)))

(declare-fun c!408371 () Bool)

(assert (=> d!722893 (= c!408371 ((_ is ElementMatch!7591) (reg!7920 r!27340)))))

(assert (=> d!722893 (= (RegexPrimitiveSize!118 (reg!7920 r!27340)) lt!903008)))

(declare-fun b!2548264 () Bool)

(declare-fun c!408370 () Bool)

(assert (=> b!2548264 (= c!408370 ((_ is EmptyExpr!7591) (reg!7920 r!27340)))))

(declare-fun e!1610592 () Int)

(assert (=> b!2548264 (= e!1610594 e!1610592)))

(declare-fun b!2548265 () Bool)

(assert (=> b!2548265 (= e!1610592 0)))

(declare-fun c!408374 () Bool)

(declare-fun bm!161878 () Bool)

(assert (=> bm!161878 (= call!161882 (RegexPrimitiveSize!118 (ite c!408373 (regTwo!15694 (reg!7920 r!27340)) (ite c!408374 (reg!7920 (reg!7920 r!27340)) (regOne!15695 (reg!7920 r!27340))))))))

(declare-fun b!2548266 () Bool)

(assert (=> b!2548266 (= e!1610592 e!1610593)))

(assert (=> b!2548266 (= c!408374 ((_ is Star!7591) (reg!7920 r!27340)))))

(assert (= (and d!722893 c!408371) b!2548259))

(assert (= (and d!722893 (not c!408371)) b!2548262))

(assert (= (and b!2548262 c!408373) b!2548258))

(assert (= (and b!2548262 (not c!408373)) b!2548264))

(assert (= (and b!2548264 c!408370) b!2548265))

(assert (= (and b!2548264 (not c!408370)) b!2548266))

(assert (= (and b!2548266 c!408374) b!2548261))

(assert (= (and b!2548266 (not c!408374)) b!2548257))

(assert (= (and b!2548257 c!408372) b!2548260))

(assert (= (and b!2548257 (not c!408372)) b!2548263))

(assert (= (or b!2548261 b!2548263) bm!161876))

(assert (= (or b!2548258 bm!161876) bm!161878))

(assert (= (or b!2548258 b!2548263) bm!161877))

(declare-fun m!2892503 () Bool)

(assert (=> bm!161877 m!2892503))

(declare-fun m!2892505 () Bool)

(assert (=> bm!161878 m!2892505))

(assert (=> b!2547990 d!722893))

(declare-fun b!2548267 () Bool)

(declare-fun c!408377 () Bool)

(assert (=> b!2548267 (= c!408377 ((_ is EmptyLang!7591) r!27340))))

(declare-fun e!1610598 () Int)

(declare-fun e!1610596 () Int)

(assert (=> b!2548267 (= e!1610598 e!1610596)))

(declare-fun b!2548268 () Bool)

(declare-fun e!1610599 () Int)

(declare-fun call!161886 () Int)

(declare-fun call!161885 () Int)

(assert (=> b!2548268 (= e!1610599 (+ 1 call!161886 call!161885))))

(declare-fun bm!161879 () Bool)

(declare-fun call!161884 () Int)

(assert (=> bm!161879 (= call!161884 call!161885)))

(declare-fun b!2548269 () Bool)

(declare-fun e!1610600 () Int)

(assert (=> b!2548269 (= e!1610600 1)))

(declare-fun b!2548270 () Bool)

(assert (=> b!2548270 (= e!1610596 0)))

(declare-fun b!2548271 () Bool)

(assert (=> b!2548271 (= e!1610598 (+ 1 call!161884))))

(declare-fun b!2548272 () Bool)

(assert (=> b!2548272 (= e!1610600 e!1610599)))

(declare-fun c!408378 () Bool)

(assert (=> b!2548272 (= c!408378 ((_ is Concat!12287) r!27340))))

(declare-fun bm!161880 () Bool)

(assert (=> bm!161880 (= call!161886 (RegexPrimitiveSize!118 (ite c!408378 (regOne!15694 r!27340) (regTwo!15695 r!27340))))))

(declare-fun b!2548273 () Bool)

(assert (=> b!2548273 (= e!1610596 (+ 1 call!161884 call!161886))))

(declare-fun d!722899 () Bool)

(declare-fun lt!903011 () Int)

(assert (=> d!722899 (>= lt!903011 0)))

(assert (=> d!722899 (= lt!903011 e!1610600)))

(declare-fun c!408376 () Bool)

(assert (=> d!722899 (= c!408376 ((_ is ElementMatch!7591) r!27340))))

(assert (=> d!722899 (= (RegexPrimitiveSize!118 r!27340) lt!903011)))

(declare-fun b!2548274 () Bool)

(declare-fun c!408375 () Bool)

(assert (=> b!2548274 (= c!408375 ((_ is EmptyExpr!7591) r!27340))))

(declare-fun e!1610597 () Int)

(assert (=> b!2548274 (= e!1610599 e!1610597)))

(declare-fun b!2548275 () Bool)

(assert (=> b!2548275 (= e!1610597 0)))

(declare-fun bm!161881 () Bool)

(declare-fun c!408379 () Bool)

(assert (=> bm!161881 (= call!161885 (RegexPrimitiveSize!118 (ite c!408378 (regTwo!15694 r!27340) (ite c!408379 (reg!7920 r!27340) (regOne!15695 r!27340)))))))

(declare-fun b!2548276 () Bool)

(assert (=> b!2548276 (= e!1610597 e!1610598)))

(assert (=> b!2548276 (= c!408379 ((_ is Star!7591) r!27340))))

(assert (= (and d!722899 c!408376) b!2548269))

(assert (= (and d!722899 (not c!408376)) b!2548272))

(assert (= (and b!2548272 c!408378) b!2548268))

(assert (= (and b!2548272 (not c!408378)) b!2548274))

(assert (= (and b!2548274 c!408375) b!2548275))

(assert (= (and b!2548274 (not c!408375)) b!2548276))

(assert (= (and b!2548276 c!408379) b!2548271))

(assert (= (and b!2548276 (not c!408379)) b!2548267))

(assert (= (and b!2548267 c!408377) b!2548270))

(assert (= (and b!2548267 (not c!408377)) b!2548273))

(assert (= (or b!2548271 b!2548273) bm!161879))

(assert (= (or b!2548268 bm!161879) bm!161881))

(assert (= (or b!2548268 b!2548273) bm!161880))

(declare-fun m!2892511 () Bool)

(assert (=> bm!161880 m!2892511))

(declare-fun m!2892513 () Bool)

(assert (=> bm!161881 m!2892513))

(assert (=> b!2547990 d!722899))

(declare-fun d!722903 () Bool)

(assert (=> d!722903 (= (nullable!2508 (derivative!286 lt!902980 tl!4068)) (nullableFct!733 (derivative!286 lt!902980 tl!4068)))))

(declare-fun bs!469558 () Bool)

(assert (= bs!469558 d!722903))

(assert (=> bs!469558 m!2892355))

(declare-fun m!2892515 () Bool)

(assert (=> bs!469558 m!2892515))

(assert (=> b!2548003 d!722903))

(declare-fun d!722905 () Bool)

(declare-fun lt!903018 () Regex!7591)

(assert (=> d!722905 (validRegex!3217 lt!903018)))

(declare-fun e!1610609 () Regex!7591)

(assert (=> d!722905 (= lt!903018 e!1610609)))

(declare-fun c!408385 () Bool)

(assert (=> d!722905 (= c!408385 ((_ is Cons!29556) tl!4068))))

(assert (=> d!722905 (validRegex!3217 lt!902980)))

(assert (=> d!722905 (= (derivative!286 lt!902980 tl!4068) lt!903018)))

(declare-fun b!2548293 () Bool)

(assert (=> b!2548293 (= e!1610609 (derivative!286 (derivativeStep!2160 lt!902980 (h!34976 tl!4068)) (t!211355 tl!4068)))))

(declare-fun b!2548294 () Bool)

(assert (=> b!2548294 (= e!1610609 lt!902980)))

(assert (= (and d!722905 c!408385) b!2548293))

(assert (= (and d!722905 (not c!408385)) b!2548294))

(declare-fun m!2892531 () Bool)

(assert (=> d!722905 m!2892531))

(assert (=> d!722905 m!2892415))

(declare-fun m!2892533 () Bool)

(assert (=> b!2548293 m!2892533))

(assert (=> b!2548293 m!2892533))

(declare-fun m!2892535 () Bool)

(assert (=> b!2548293 m!2892535))

(assert (=> b!2548003 d!722905))

(declare-fun d!722911 () Bool)

(declare-fun e!1610612 () Bool)

(assert (=> d!722911 e!1610612))

(declare-fun c!408386 () Bool)

(assert (=> d!722911 (= c!408386 ((_ is EmptyExpr!7591) lt!902973))))

(declare-fun lt!903019 () Bool)

(declare-fun e!1610614 () Bool)

(assert (=> d!722911 (= lt!903019 e!1610614)))

(declare-fun c!408388 () Bool)

(assert (=> d!722911 (= c!408388 (isEmpty!17002 (_2!17324 lt!902974)))))

(assert (=> d!722911 (validRegex!3217 lt!902973)))

(assert (=> d!722911 (= (matchR!3538 lt!902973 (_2!17324 lt!902974)) lt!903019)))

(declare-fun b!2548295 () Bool)

(assert (=> b!2548295 (= e!1610614 (nullable!2508 lt!902973))))

(declare-fun b!2548296 () Bool)

(declare-fun res!1073614 () Bool)

(declare-fun e!1610616 () Bool)

(assert (=> b!2548296 (=> res!1073614 e!1610616)))

(declare-fun e!1610611 () Bool)

(assert (=> b!2548296 (= res!1073614 e!1610611)))

(declare-fun res!1073615 () Bool)

(assert (=> b!2548296 (=> (not res!1073615) (not e!1610611))))

(assert (=> b!2548296 (= res!1073615 lt!903019)))

(declare-fun b!2548297 () Bool)

(declare-fun e!1610610 () Bool)

(assert (=> b!2548297 (= e!1610610 (not lt!903019))))

(declare-fun b!2548298 () Bool)

(declare-fun res!1073613 () Bool)

(declare-fun e!1610613 () Bool)

(assert (=> b!2548298 (=> res!1073613 e!1610613)))

(assert (=> b!2548298 (= res!1073613 (not (isEmpty!17002 (tail!4075 (_2!17324 lt!902974)))))))

(declare-fun b!2548299 () Bool)

(declare-fun call!161887 () Bool)

(assert (=> b!2548299 (= e!1610612 (= lt!903019 call!161887))))

(declare-fun b!2548300 () Bool)

(declare-fun e!1610615 () Bool)

(assert (=> b!2548300 (= e!1610616 e!1610615)))

(declare-fun res!1073611 () Bool)

(assert (=> b!2548300 (=> (not res!1073611) (not e!1610615))))

(assert (=> b!2548300 (= res!1073611 (not lt!903019))))

(declare-fun bm!161882 () Bool)

(assert (=> bm!161882 (= call!161887 (isEmpty!17002 (_2!17324 lt!902974)))))

(declare-fun b!2548301 () Bool)

(assert (=> b!2548301 (= e!1610611 (= (head!5800 (_2!17324 lt!902974)) (c!408279 lt!902973)))))

(declare-fun b!2548302 () Bool)

(assert (=> b!2548302 (= e!1610613 (not (= (head!5800 (_2!17324 lt!902974)) (c!408279 lt!902973))))))

(declare-fun b!2548303 () Bool)

(assert (=> b!2548303 (= e!1610615 e!1610613)))

(declare-fun res!1073610 () Bool)

(assert (=> b!2548303 (=> res!1073610 e!1610613)))

(assert (=> b!2548303 (= res!1073610 call!161887)))

(declare-fun b!2548304 () Bool)

(assert (=> b!2548304 (= e!1610614 (matchR!3538 (derivativeStep!2160 lt!902973 (head!5800 (_2!17324 lt!902974))) (tail!4075 (_2!17324 lt!902974))))))

(declare-fun b!2548305 () Bool)

(declare-fun res!1073616 () Bool)

(assert (=> b!2548305 (=> (not res!1073616) (not e!1610611))))

(assert (=> b!2548305 (= res!1073616 (not call!161887))))

(declare-fun b!2548306 () Bool)

(declare-fun res!1073612 () Bool)

(assert (=> b!2548306 (=> res!1073612 e!1610616)))

(assert (=> b!2548306 (= res!1073612 (not ((_ is ElementMatch!7591) lt!902973)))))

(assert (=> b!2548306 (= e!1610610 e!1610616)))

(declare-fun b!2548307 () Bool)

(assert (=> b!2548307 (= e!1610612 e!1610610)))

(declare-fun c!408387 () Bool)

(assert (=> b!2548307 (= c!408387 ((_ is EmptyLang!7591) lt!902973))))

(declare-fun b!2548308 () Bool)

(declare-fun res!1073609 () Bool)

(assert (=> b!2548308 (=> (not res!1073609) (not e!1610611))))

(assert (=> b!2548308 (= res!1073609 (isEmpty!17002 (tail!4075 (_2!17324 lt!902974))))))

(assert (= (and d!722911 c!408388) b!2548295))

(assert (= (and d!722911 (not c!408388)) b!2548304))

(assert (= (and d!722911 c!408386) b!2548299))

(assert (= (and d!722911 (not c!408386)) b!2548307))

(assert (= (and b!2548307 c!408387) b!2548297))

(assert (= (and b!2548307 (not c!408387)) b!2548306))

(assert (= (and b!2548306 (not res!1073612)) b!2548296))

(assert (= (and b!2548296 res!1073615) b!2548305))

(assert (= (and b!2548305 res!1073616) b!2548308))

(assert (= (and b!2548308 res!1073609) b!2548301))

(assert (= (and b!2548296 (not res!1073614)) b!2548300))

(assert (= (and b!2548300 res!1073611) b!2548303))

(assert (= (and b!2548303 (not res!1073610)) b!2548298))

(assert (= (and b!2548298 (not res!1073613)) b!2548302))

(assert (= (or b!2548299 b!2548303 b!2548305) bm!161882))

(declare-fun m!2892537 () Bool)

(assert (=> b!2548295 m!2892537))

(declare-fun m!2892539 () Bool)

(assert (=> b!2548301 m!2892539))

(assert (=> b!2548304 m!2892539))

(assert (=> b!2548304 m!2892539))

(declare-fun m!2892541 () Bool)

(assert (=> b!2548304 m!2892541))

(declare-fun m!2892543 () Bool)

(assert (=> b!2548304 m!2892543))

(assert (=> b!2548304 m!2892541))

(assert (=> b!2548304 m!2892543))

(declare-fun m!2892545 () Bool)

(assert (=> b!2548304 m!2892545))

(declare-fun m!2892547 () Bool)

(assert (=> bm!161882 m!2892547))

(assert (=> d!722911 m!2892547))

(declare-fun m!2892549 () Bool)

(assert (=> d!722911 m!2892549))

(assert (=> b!2548298 m!2892543))

(assert (=> b!2548298 m!2892543))

(declare-fun m!2892551 () Bool)

(assert (=> b!2548298 m!2892551))

(assert (=> b!2548302 m!2892539))

(assert (=> b!2548308 m!2892543))

(assert (=> b!2548308 m!2892543))

(assert (=> b!2548308 m!2892551))

(assert (=> b!2547992 d!722911))

(declare-fun d!722913 () Bool)

(assert (=> d!722913 (= (nullable!2508 lt!902978) (nullableFct!733 lt!902978))))

(declare-fun bs!469559 () Bool)

(assert (= bs!469559 d!722913))

(declare-fun m!2892553 () Bool)

(assert (=> bs!469559 m!2892553))

(assert (=> b!2547988 d!722913))

(declare-fun d!722915 () Bool)

(declare-fun lt!903020 () Regex!7591)

(assert (=> d!722915 (validRegex!3217 lt!903020)))

(declare-fun e!1610617 () Regex!7591)

(assert (=> d!722915 (= lt!903020 e!1610617)))

(declare-fun c!408389 () Bool)

(assert (=> d!722915 (= c!408389 ((_ is Cons!29556) tl!4068))))

(assert (=> d!722915 (validRegex!3217 lt!902976)))

(assert (=> d!722915 (= (derivative!286 lt!902976 tl!4068) lt!903020)))

(declare-fun b!2548309 () Bool)

(assert (=> b!2548309 (= e!1610617 (derivative!286 (derivativeStep!2160 lt!902976 (h!34976 tl!4068)) (t!211355 tl!4068)))))

(declare-fun b!2548310 () Bool)

(assert (=> b!2548310 (= e!1610617 lt!902976)))

(assert (= (and d!722915 c!408389) b!2548309))

(assert (= (and d!722915 (not c!408389)) b!2548310))

(declare-fun m!2892555 () Bool)

(assert (=> d!722915 m!2892555))

(assert (=> d!722915 m!2892463))

(declare-fun m!2892557 () Bool)

(assert (=> b!2548309 m!2892557))

(assert (=> b!2548309 m!2892557))

(declare-fun m!2892559 () Bool)

(assert (=> b!2548309 m!2892559))

(assert (=> b!2547988 d!722915))

(declare-fun b!2548311 () Bool)

(declare-fun e!1610618 () Regex!7591)

(assert (=> b!2548311 (= e!1610618 (ite (= c!14016 (c!408279 r!27340)) EmptyExpr!7591 EmptyLang!7591))))

(declare-fun b!2548312 () Bool)

(declare-fun e!1610619 () Regex!7591)

(declare-fun call!161889 () Regex!7591)

(assert (=> b!2548312 (= e!1610619 (Concat!12287 call!161889 r!27340))))

(declare-fun bm!161883 () Bool)

(declare-fun call!161890 () Regex!7591)

(declare-fun c!408394 () Bool)

(declare-fun c!408391 () Bool)

(assert (=> bm!161883 (= call!161890 (derivativeStep!2160 (ite c!408391 (regOne!15695 r!27340) (ite c!408394 (reg!7920 r!27340) (regOne!15694 r!27340))) c!14016))))

(declare-fun call!161888 () Regex!7591)

(declare-fun call!161891 () Regex!7591)

(declare-fun e!1610620 () Regex!7591)

(declare-fun b!2548313 () Bool)

(assert (=> b!2548313 (= e!1610620 (Union!7591 (Concat!12287 call!161888 (regTwo!15694 r!27340)) call!161891))))

(declare-fun b!2548314 () Bool)

(assert (=> b!2548314 (= e!1610620 (Union!7591 (Concat!12287 call!161888 (regTwo!15694 r!27340)) EmptyLang!7591))))

(declare-fun b!2548315 () Bool)

(declare-fun e!1610621 () Regex!7591)

(assert (=> b!2548315 (= e!1610621 EmptyLang!7591)))

(declare-fun b!2548316 () Bool)

(declare-fun e!1610622 () Regex!7591)

(assert (=> b!2548316 (= e!1610622 e!1610619)))

(assert (=> b!2548316 (= c!408394 ((_ is Star!7591) r!27340))))

(declare-fun bm!161884 () Bool)

(assert (=> bm!161884 (= call!161891 (derivativeStep!2160 (ite c!408391 (regTwo!15695 r!27340) (regTwo!15694 r!27340)) c!14016))))

(declare-fun bm!161885 () Bool)

(assert (=> bm!161885 (= call!161888 call!161889)))

(declare-fun d!722917 () Bool)

(declare-fun lt!903021 () Regex!7591)

(assert (=> d!722917 (validRegex!3217 lt!903021)))

(assert (=> d!722917 (= lt!903021 e!1610621)))

(declare-fun c!408392 () Bool)

(assert (=> d!722917 (= c!408392 (or ((_ is EmptyExpr!7591) r!27340) ((_ is EmptyLang!7591) r!27340)))))

(assert (=> d!722917 (validRegex!3217 r!27340)))

(assert (=> d!722917 (= (derivativeStep!2160 r!27340 c!14016) lt!903021)))

(declare-fun b!2548317 () Bool)

(assert (=> b!2548317 (= e!1610621 e!1610618)))

(declare-fun c!408390 () Bool)

(assert (=> b!2548317 (= c!408390 ((_ is ElementMatch!7591) r!27340))))

(declare-fun bm!161886 () Bool)

(assert (=> bm!161886 (= call!161889 call!161890)))

(declare-fun b!2548318 () Bool)

(declare-fun c!408393 () Bool)

(assert (=> b!2548318 (= c!408393 (nullable!2508 (regOne!15694 r!27340)))))

(assert (=> b!2548318 (= e!1610619 e!1610620)))

(declare-fun b!2548319 () Bool)

(assert (=> b!2548319 (= c!408391 ((_ is Union!7591) r!27340))))

(assert (=> b!2548319 (= e!1610618 e!1610622)))

(declare-fun b!2548320 () Bool)

(assert (=> b!2548320 (= e!1610622 (Union!7591 call!161890 call!161891))))

(assert (= (and d!722917 c!408392) b!2548315))

(assert (= (and d!722917 (not c!408392)) b!2548317))

(assert (= (and b!2548317 c!408390) b!2548311))

(assert (= (and b!2548317 (not c!408390)) b!2548319))

(assert (= (and b!2548319 c!408391) b!2548320))

(assert (= (and b!2548319 (not c!408391)) b!2548316))

(assert (= (and b!2548316 c!408394) b!2548312))

(assert (= (and b!2548316 (not c!408394)) b!2548318))

(assert (= (and b!2548318 c!408393) b!2548313))

(assert (= (and b!2548318 (not c!408393)) b!2548314))

(assert (= (or b!2548313 b!2548314) bm!161885))

(assert (= (or b!2548312 bm!161885) bm!161886))

(assert (= (or b!2548320 b!2548313) bm!161884))

(assert (= (or b!2548320 bm!161886) bm!161883))

(declare-fun m!2892561 () Bool)

(assert (=> bm!161883 m!2892561))

(declare-fun m!2892563 () Bool)

(assert (=> bm!161884 m!2892563))

(declare-fun m!2892565 () Bool)

(assert (=> d!722917 m!2892565))

(assert (=> d!722917 m!2892335))

(declare-fun m!2892567 () Bool)

(assert (=> b!2548318 m!2892567))

(assert (=> b!2547988 d!722917))

(declare-fun d!722919 () Bool)

(declare-fun e!1610625 () Bool)

(assert (=> d!722919 e!1610625))

(declare-fun c!408395 () Bool)

(assert (=> d!722919 (= c!408395 ((_ is EmptyExpr!7591) (reg!7920 r!27340)))))

(declare-fun lt!903022 () Bool)

(declare-fun e!1610627 () Bool)

(assert (=> d!722919 (= lt!903022 e!1610627)))

(declare-fun c!408397 () Bool)

(assert (=> d!722919 (= c!408397 (isEmpty!17002 (Cons!29556 c!14016 (_1!17324 lt!902974))))))

(assert (=> d!722919 (validRegex!3217 (reg!7920 r!27340))))

(assert (=> d!722919 (= (matchR!3538 (reg!7920 r!27340) (Cons!29556 c!14016 (_1!17324 lt!902974))) lt!903022)))

(declare-fun b!2548321 () Bool)

(assert (=> b!2548321 (= e!1610627 (nullable!2508 (reg!7920 r!27340)))))

(declare-fun b!2548322 () Bool)

(declare-fun res!1073622 () Bool)

(declare-fun e!1610629 () Bool)

(assert (=> b!2548322 (=> res!1073622 e!1610629)))

(declare-fun e!1610624 () Bool)

(assert (=> b!2548322 (= res!1073622 e!1610624)))

(declare-fun res!1073623 () Bool)

(assert (=> b!2548322 (=> (not res!1073623) (not e!1610624))))

(assert (=> b!2548322 (= res!1073623 lt!903022)))

(declare-fun b!2548323 () Bool)

(declare-fun e!1610623 () Bool)

(assert (=> b!2548323 (= e!1610623 (not lt!903022))))

(declare-fun b!2548324 () Bool)

(declare-fun res!1073621 () Bool)

(declare-fun e!1610626 () Bool)

(assert (=> b!2548324 (=> res!1073621 e!1610626)))

(assert (=> b!2548324 (= res!1073621 (not (isEmpty!17002 (tail!4075 (Cons!29556 c!14016 (_1!17324 lt!902974))))))))

(declare-fun b!2548325 () Bool)

(declare-fun call!161892 () Bool)

(assert (=> b!2548325 (= e!1610625 (= lt!903022 call!161892))))

(declare-fun b!2548326 () Bool)

(declare-fun e!1610628 () Bool)

(assert (=> b!2548326 (= e!1610629 e!1610628)))

(declare-fun res!1073619 () Bool)

(assert (=> b!2548326 (=> (not res!1073619) (not e!1610628))))

(assert (=> b!2548326 (= res!1073619 (not lt!903022))))

(declare-fun bm!161887 () Bool)

(assert (=> bm!161887 (= call!161892 (isEmpty!17002 (Cons!29556 c!14016 (_1!17324 lt!902974))))))

(declare-fun b!2548327 () Bool)

(assert (=> b!2548327 (= e!1610624 (= (head!5800 (Cons!29556 c!14016 (_1!17324 lt!902974))) (c!408279 (reg!7920 r!27340))))))

(declare-fun b!2548328 () Bool)

(assert (=> b!2548328 (= e!1610626 (not (= (head!5800 (Cons!29556 c!14016 (_1!17324 lt!902974))) (c!408279 (reg!7920 r!27340)))))))

(declare-fun b!2548329 () Bool)

(assert (=> b!2548329 (= e!1610628 e!1610626)))

(declare-fun res!1073618 () Bool)

(assert (=> b!2548329 (=> res!1073618 e!1610626)))

(assert (=> b!2548329 (= res!1073618 call!161892)))

(declare-fun b!2548330 () Bool)

(assert (=> b!2548330 (= e!1610627 (matchR!3538 (derivativeStep!2160 (reg!7920 r!27340) (head!5800 (Cons!29556 c!14016 (_1!17324 lt!902974)))) (tail!4075 (Cons!29556 c!14016 (_1!17324 lt!902974)))))))

(declare-fun b!2548331 () Bool)

(declare-fun res!1073624 () Bool)

(assert (=> b!2548331 (=> (not res!1073624) (not e!1610624))))

(assert (=> b!2548331 (= res!1073624 (not call!161892))))

(declare-fun b!2548332 () Bool)

(declare-fun res!1073620 () Bool)

(assert (=> b!2548332 (=> res!1073620 e!1610629)))

(assert (=> b!2548332 (= res!1073620 (not ((_ is ElementMatch!7591) (reg!7920 r!27340))))))

(assert (=> b!2548332 (= e!1610623 e!1610629)))

(declare-fun b!2548333 () Bool)

(assert (=> b!2548333 (= e!1610625 e!1610623)))

(declare-fun c!408396 () Bool)

(assert (=> b!2548333 (= c!408396 ((_ is EmptyLang!7591) (reg!7920 r!27340)))))

(declare-fun b!2548334 () Bool)

(declare-fun res!1073617 () Bool)

(assert (=> b!2548334 (=> (not res!1073617) (not e!1610624))))

(assert (=> b!2548334 (= res!1073617 (isEmpty!17002 (tail!4075 (Cons!29556 c!14016 (_1!17324 lt!902974)))))))

(assert (= (and d!722919 c!408397) b!2548321))

(assert (= (and d!722919 (not c!408397)) b!2548330))

(assert (= (and d!722919 c!408395) b!2548325))

(assert (= (and d!722919 (not c!408395)) b!2548333))

(assert (= (and b!2548333 c!408396) b!2548323))

(assert (= (and b!2548333 (not c!408396)) b!2548332))

(assert (= (and b!2548332 (not res!1073620)) b!2548322))

(assert (= (and b!2548322 res!1073623) b!2548331))

(assert (= (and b!2548331 res!1073624) b!2548334))

(assert (= (and b!2548334 res!1073617) b!2548327))

(assert (= (and b!2548322 (not res!1073622)) b!2548326))

(assert (= (and b!2548326 res!1073619) b!2548329))

(assert (= (and b!2548329 (not res!1073618)) b!2548324))

(assert (= (and b!2548324 (not res!1073621)) b!2548328))

(assert (= (or b!2548325 b!2548329 b!2548331) bm!161887))

(declare-fun m!2892569 () Bool)

(assert (=> b!2548321 m!2892569))

(declare-fun m!2892571 () Bool)

(assert (=> b!2548327 m!2892571))

(assert (=> b!2548330 m!2892571))

(assert (=> b!2548330 m!2892571))

(declare-fun m!2892573 () Bool)

(assert (=> b!2548330 m!2892573))

(declare-fun m!2892575 () Bool)

(assert (=> b!2548330 m!2892575))

(assert (=> b!2548330 m!2892573))

(assert (=> b!2548330 m!2892575))

(declare-fun m!2892577 () Bool)

(assert (=> b!2548330 m!2892577))

(declare-fun m!2892579 () Bool)

(assert (=> bm!161887 m!2892579))

(assert (=> d!722919 m!2892579))

(assert (=> d!722919 m!2892343))

(assert (=> b!2548324 m!2892575))

(assert (=> b!2548324 m!2892575))

(declare-fun m!2892581 () Bool)

(assert (=> b!2548324 m!2892581))

(assert (=> b!2548328 m!2892571))

(assert (=> b!2548334 m!2892575))

(assert (=> b!2548334 m!2892575))

(assert (=> b!2548334 m!2892581))

(assert (=> b!2547998 d!722919))

(declare-fun b!2548398 () Bool)

(declare-fun e!1610673 () Bool)

(declare-fun call!161905 () Bool)

(assert (=> b!2548398 (= e!1610673 call!161905)))

(declare-fun b!2548399 () Bool)

(declare-fun e!1610675 () Bool)

(declare-fun e!1610674 () Bool)

(assert (=> b!2548399 (= e!1610675 e!1610674)))

(declare-fun c!408412 () Bool)

(assert (=> b!2548399 (= c!408412 ((_ is Star!7591) r!27340))))

(declare-fun bm!161900 () Bool)

(declare-fun call!161906 () Bool)

(declare-fun call!161907 () Bool)

(assert (=> bm!161900 (= call!161906 call!161907)))

(declare-fun b!2548400 () Bool)

(declare-fun res!1073664 () Bool)

(declare-fun e!1610679 () Bool)

(assert (=> b!2548400 (=> (not res!1073664) (not e!1610679))))

(assert (=> b!2548400 (= res!1073664 call!161905)))

(declare-fun e!1610678 () Bool)

(assert (=> b!2548400 (= e!1610678 e!1610679)))

(declare-fun b!2548401 () Bool)

(declare-fun e!1610676 () Bool)

(assert (=> b!2548401 (= e!1610674 e!1610676)))

(declare-fun res!1073660 () Bool)

(assert (=> b!2548401 (= res!1073660 (not (nullable!2508 (reg!7920 r!27340))))))

(assert (=> b!2548401 (=> (not res!1073660) (not e!1610676))))

(declare-fun b!2548402 () Bool)

(declare-fun e!1610677 () Bool)

(assert (=> b!2548402 (= e!1610677 e!1610673)))

(declare-fun res!1073663 () Bool)

(assert (=> b!2548402 (=> (not res!1073663) (not e!1610673))))

(assert (=> b!2548402 (= res!1073663 call!161906)))

(declare-fun b!2548403 () Bool)

(assert (=> b!2548403 (= e!1610674 e!1610678)))

(declare-fun c!408413 () Bool)

(assert (=> b!2548403 (= c!408413 ((_ is Union!7591) r!27340))))

(declare-fun b!2548404 () Bool)

(declare-fun res!1073662 () Bool)

(assert (=> b!2548404 (=> res!1073662 e!1610677)))

(assert (=> b!2548404 (= res!1073662 (not ((_ is Concat!12287) r!27340)))))

(assert (=> b!2548404 (= e!1610678 e!1610677)))

(declare-fun b!2548405 () Bool)

(assert (=> b!2548405 (= e!1610676 call!161907)))

(declare-fun bm!161902 () Bool)

(assert (=> bm!161902 (= call!161907 (validRegex!3217 (ite c!408412 (reg!7920 r!27340) (ite c!408413 (regTwo!15695 r!27340) (regOne!15694 r!27340)))))))

(declare-fun b!2548406 () Bool)

(assert (=> b!2548406 (= e!1610679 call!161906)))

(declare-fun d!722921 () Bool)

(declare-fun res!1073661 () Bool)

(assert (=> d!722921 (=> res!1073661 e!1610675)))

(assert (=> d!722921 (= res!1073661 ((_ is ElementMatch!7591) r!27340))))

(assert (=> d!722921 (= (validRegex!3217 r!27340) e!1610675)))

(declare-fun bm!161901 () Bool)

(assert (=> bm!161901 (= call!161905 (validRegex!3217 (ite c!408413 (regOne!15695 r!27340) (regTwo!15694 r!27340))))))

(assert (= (and d!722921 (not res!1073661)) b!2548399))

(assert (= (and b!2548399 c!408412) b!2548401))

(assert (= (and b!2548399 (not c!408412)) b!2548403))

(assert (= (and b!2548401 res!1073660) b!2548405))

(assert (= (and b!2548403 c!408413) b!2548400))

(assert (= (and b!2548403 (not c!408413)) b!2548404))

(assert (= (and b!2548400 res!1073664) b!2548406))

(assert (= (and b!2548404 (not res!1073662)) b!2548402))

(assert (= (and b!2548402 res!1073663) b!2548398))

(assert (= (or b!2548400 b!2548398) bm!161901))

(assert (= (or b!2548406 b!2548402) bm!161900))

(assert (= (or b!2548405 bm!161900) bm!161902))

(assert (=> b!2548401 m!2892569))

(declare-fun m!2892607 () Bool)

(assert (=> bm!161902 m!2892607))

(declare-fun m!2892609 () Bool)

(assert (=> bm!161901 m!2892609))

(assert (=> start!247224 d!722921))

(declare-fun b!2548407 () Bool)

(declare-fun e!1610680 () Bool)

(declare-fun call!161908 () Bool)

(assert (=> b!2548407 (= e!1610680 call!161908)))

(declare-fun b!2548408 () Bool)

(declare-fun e!1610682 () Bool)

(declare-fun e!1610681 () Bool)

(assert (=> b!2548408 (= e!1610682 e!1610681)))

(declare-fun c!408414 () Bool)

(assert (=> b!2548408 (= c!408414 ((_ is Star!7591) (reg!7920 r!27340)))))

(declare-fun bm!161903 () Bool)

(declare-fun call!161909 () Bool)

(declare-fun call!161910 () Bool)

(assert (=> bm!161903 (= call!161909 call!161910)))

(declare-fun b!2548409 () Bool)

(declare-fun res!1073669 () Bool)

(declare-fun e!1610686 () Bool)

(assert (=> b!2548409 (=> (not res!1073669) (not e!1610686))))

(assert (=> b!2548409 (= res!1073669 call!161908)))

(declare-fun e!1610685 () Bool)

(assert (=> b!2548409 (= e!1610685 e!1610686)))

(declare-fun b!2548410 () Bool)

(declare-fun e!1610683 () Bool)

(assert (=> b!2548410 (= e!1610681 e!1610683)))

(declare-fun res!1073665 () Bool)

(assert (=> b!2548410 (= res!1073665 (not (nullable!2508 (reg!7920 (reg!7920 r!27340)))))))

(assert (=> b!2548410 (=> (not res!1073665) (not e!1610683))))

(declare-fun b!2548411 () Bool)

(declare-fun e!1610684 () Bool)

(assert (=> b!2548411 (= e!1610684 e!1610680)))

(declare-fun res!1073668 () Bool)

(assert (=> b!2548411 (=> (not res!1073668) (not e!1610680))))

(assert (=> b!2548411 (= res!1073668 call!161909)))

(declare-fun b!2548412 () Bool)

(assert (=> b!2548412 (= e!1610681 e!1610685)))

(declare-fun c!408415 () Bool)

(assert (=> b!2548412 (= c!408415 ((_ is Union!7591) (reg!7920 r!27340)))))

(declare-fun b!2548413 () Bool)

(declare-fun res!1073667 () Bool)

(assert (=> b!2548413 (=> res!1073667 e!1610684)))

(assert (=> b!2548413 (= res!1073667 (not ((_ is Concat!12287) (reg!7920 r!27340))))))

(assert (=> b!2548413 (= e!1610685 e!1610684)))

(declare-fun b!2548414 () Bool)

(assert (=> b!2548414 (= e!1610683 call!161910)))

(declare-fun bm!161905 () Bool)

(assert (=> bm!161905 (= call!161910 (validRegex!3217 (ite c!408414 (reg!7920 (reg!7920 r!27340)) (ite c!408415 (regTwo!15695 (reg!7920 r!27340)) (regOne!15694 (reg!7920 r!27340))))))))

(declare-fun b!2548415 () Bool)

(assert (=> b!2548415 (= e!1610686 call!161909)))

(declare-fun d!722927 () Bool)

(declare-fun res!1073666 () Bool)

(assert (=> d!722927 (=> res!1073666 e!1610682)))

(assert (=> d!722927 (= res!1073666 ((_ is ElementMatch!7591) (reg!7920 r!27340)))))

(assert (=> d!722927 (= (validRegex!3217 (reg!7920 r!27340)) e!1610682)))

(declare-fun bm!161904 () Bool)

(assert (=> bm!161904 (= call!161908 (validRegex!3217 (ite c!408415 (regOne!15695 (reg!7920 r!27340)) (regTwo!15694 (reg!7920 r!27340)))))))

(assert (= (and d!722927 (not res!1073666)) b!2548408))

(assert (= (and b!2548408 c!408414) b!2548410))

(assert (= (and b!2548408 (not c!408414)) b!2548412))

(assert (= (and b!2548410 res!1073665) b!2548414))

(assert (= (and b!2548412 c!408415) b!2548409))

(assert (= (and b!2548412 (not c!408415)) b!2548413))

(assert (= (and b!2548409 res!1073669) b!2548415))

(assert (= (and b!2548413 (not res!1073667)) b!2548411))

(assert (= (and b!2548411 res!1073668) b!2548407))

(assert (= (or b!2548409 b!2548407) bm!161904))

(assert (= (or b!2548415 b!2548411) bm!161903))

(assert (= (or b!2548414 bm!161903) bm!161905))

(declare-fun m!2892611 () Bool)

(assert (=> b!2548410 m!2892611))

(declare-fun m!2892613 () Bool)

(assert (=> bm!161905 m!2892613))

(declare-fun m!2892615 () Bool)

(assert (=> bm!161904 m!2892615))

(assert (=> b!2548000 d!722927))

(declare-fun d!722929 () Bool)

(declare-fun e!1610696 () Bool)

(assert (=> d!722929 e!1610696))

(declare-fun c!408418 () Bool)

(assert (=> d!722929 (= c!408418 ((_ is EmptyExpr!7591) lt!902977))))

(declare-fun lt!903032 () Bool)

(declare-fun e!1610698 () Bool)

(assert (=> d!722929 (= lt!903032 e!1610698)))

(declare-fun c!408420 () Bool)

(assert (=> d!722929 (= c!408420 (isEmpty!17002 Nil!29556))))

(assert (=> d!722929 (validRegex!3217 lt!902977)))

(assert (=> d!722929 (= (matchR!3538 lt!902977 Nil!29556) lt!903032)))

(declare-fun b!2548425 () Bool)

(assert (=> b!2548425 (= e!1610698 (nullable!2508 lt!902977))))

(declare-fun b!2548426 () Bool)

(declare-fun res!1073680 () Bool)

(declare-fun e!1610700 () Bool)

(assert (=> b!2548426 (=> res!1073680 e!1610700)))

(declare-fun e!1610695 () Bool)

(assert (=> b!2548426 (= res!1073680 e!1610695)))

(declare-fun res!1073681 () Bool)

(assert (=> b!2548426 (=> (not res!1073681) (not e!1610695))))

(assert (=> b!2548426 (= res!1073681 lt!903032)))

(declare-fun b!2548427 () Bool)

(declare-fun e!1610694 () Bool)

(assert (=> b!2548427 (= e!1610694 (not lt!903032))))

(declare-fun b!2548428 () Bool)

(declare-fun res!1073679 () Bool)

(declare-fun e!1610697 () Bool)

(assert (=> b!2548428 (=> res!1073679 e!1610697)))

(assert (=> b!2548428 (= res!1073679 (not (isEmpty!17002 (tail!4075 Nil!29556))))))

(declare-fun b!2548429 () Bool)

(declare-fun call!161914 () Bool)

(assert (=> b!2548429 (= e!1610696 (= lt!903032 call!161914))))

(declare-fun b!2548430 () Bool)

(declare-fun e!1610699 () Bool)

(assert (=> b!2548430 (= e!1610700 e!1610699)))

(declare-fun res!1073677 () Bool)

(assert (=> b!2548430 (=> (not res!1073677) (not e!1610699))))

(assert (=> b!2548430 (= res!1073677 (not lt!903032))))

(declare-fun bm!161909 () Bool)

(assert (=> bm!161909 (= call!161914 (isEmpty!17002 Nil!29556))))

(declare-fun b!2548431 () Bool)

(assert (=> b!2548431 (= e!1610695 (= (head!5800 Nil!29556) (c!408279 lt!902977)))))

(declare-fun b!2548432 () Bool)

(assert (=> b!2548432 (= e!1610697 (not (= (head!5800 Nil!29556) (c!408279 lt!902977))))))

(declare-fun b!2548433 () Bool)

(assert (=> b!2548433 (= e!1610699 e!1610697)))

(declare-fun res!1073676 () Bool)

(assert (=> b!2548433 (=> res!1073676 e!1610697)))

(assert (=> b!2548433 (= res!1073676 call!161914)))

(declare-fun b!2548434 () Bool)

(assert (=> b!2548434 (= e!1610698 (matchR!3538 (derivativeStep!2160 lt!902977 (head!5800 Nil!29556)) (tail!4075 Nil!29556)))))

(declare-fun b!2548435 () Bool)

(declare-fun res!1073682 () Bool)

(assert (=> b!2548435 (=> (not res!1073682) (not e!1610695))))

(assert (=> b!2548435 (= res!1073682 (not call!161914))))

(declare-fun b!2548436 () Bool)

(declare-fun res!1073678 () Bool)

(assert (=> b!2548436 (=> res!1073678 e!1610700)))

(assert (=> b!2548436 (= res!1073678 (not ((_ is ElementMatch!7591) lt!902977)))))

(assert (=> b!2548436 (= e!1610694 e!1610700)))

(declare-fun b!2548437 () Bool)

(assert (=> b!2548437 (= e!1610696 e!1610694)))

(declare-fun c!408419 () Bool)

(assert (=> b!2548437 (= c!408419 ((_ is EmptyLang!7591) lt!902977))))

(declare-fun b!2548438 () Bool)

(declare-fun res!1073675 () Bool)

(assert (=> b!2548438 (=> (not res!1073675) (not e!1610695))))

(assert (=> b!2548438 (= res!1073675 (isEmpty!17002 (tail!4075 Nil!29556)))))

(assert (= (and d!722929 c!408420) b!2548425))

(assert (= (and d!722929 (not c!408420)) b!2548434))

(assert (= (and d!722929 c!408418) b!2548429))

(assert (= (and d!722929 (not c!408418)) b!2548437))

(assert (= (and b!2548437 c!408419) b!2548427))

(assert (= (and b!2548437 (not c!408419)) b!2548436))

(assert (= (and b!2548436 (not res!1073678)) b!2548426))

(assert (= (and b!2548426 res!1073681) b!2548435))

(assert (= (and b!2548435 res!1073682) b!2548438))

(assert (= (and b!2548438 res!1073675) b!2548431))

(assert (= (and b!2548426 (not res!1073680)) b!2548430))

(assert (= (and b!2548430 res!1073677) b!2548433))

(assert (= (and b!2548433 (not res!1073676)) b!2548428))

(assert (= (and b!2548428 (not res!1073679)) b!2548432))

(assert (= (or b!2548429 b!2548433 b!2548435) bm!161909))

(assert (=> b!2548425 m!2892359))

(assert (=> b!2548431 m!2892437))

(assert (=> b!2548434 m!2892437))

(assert (=> b!2548434 m!2892437))

(declare-fun m!2892623 () Bool)

(assert (=> b!2548434 m!2892623))

(assert (=> b!2548434 m!2892441))

(assert (=> b!2548434 m!2892623))

(assert (=> b!2548434 m!2892441))

(declare-fun m!2892629 () Bool)

(assert (=> b!2548434 m!2892629))

(assert (=> bm!161909 m!2892445))

(assert (=> d!722929 m!2892445))

(declare-fun m!2892635 () Bool)

(assert (=> d!722929 m!2892635))

(assert (=> b!2548428 m!2892441))

(assert (=> b!2548428 m!2892441))

(assert (=> b!2548428 m!2892449))

(assert (=> b!2548432 m!2892437))

(assert (=> b!2548438 m!2892441))

(assert (=> b!2548438 m!2892441))

(assert (=> b!2548438 m!2892449))

(assert (=> b!2548000 d!722929))

(declare-fun d!722935 () Bool)

(declare-fun lt!903035 () Regex!7591)

(assert (=> d!722935 (validRegex!3217 lt!903035)))

(declare-fun e!1610709 () Regex!7591)

(assert (=> d!722935 (= lt!903035 e!1610709)))

(declare-fun c!408425 () Bool)

(assert (=> d!722935 (= c!408425 ((_ is Cons!29556) (_1!17324 lt!902974)))))

(assert (=> d!722935 (validRegex!3217 lt!902980)))

(assert (=> d!722935 (= (derivative!286 lt!902980 (_1!17324 lt!902974)) lt!903035)))

(declare-fun b!2548455 () Bool)

(assert (=> b!2548455 (= e!1610709 (derivative!286 (derivativeStep!2160 lt!902980 (h!34976 (_1!17324 lt!902974))) (t!211355 (_1!17324 lt!902974))))))

(declare-fun b!2548456 () Bool)

(assert (=> b!2548456 (= e!1610709 lt!902980)))

(assert (= (and d!722935 c!408425) b!2548455))

(assert (= (and d!722935 (not c!408425)) b!2548456))

(declare-fun m!2892649 () Bool)

(assert (=> d!722935 m!2892649))

(assert (=> d!722935 m!2892415))

(declare-fun m!2892651 () Bool)

(assert (=> b!2548455 m!2892651))

(assert (=> b!2548455 m!2892651))

(declare-fun m!2892653 () Bool)

(assert (=> b!2548455 m!2892653))

(assert (=> b!2548000 d!722935))

(declare-fun d!722939 () Bool)

(assert (=> d!722939 (= (matchR!3538 lt!902980 (_1!17324 lt!902974)) (matchR!3538 (derivative!286 lt!902980 (_1!17324 lt!902974)) Nil!29556))))

(declare-fun lt!903036 () Unit!43371)

(assert (=> d!722939 (= lt!903036 (choose!15047 lt!902980 (_1!17324 lt!902974)))))

(assert (=> d!722939 (validRegex!3217 lt!902980)))

(assert (=> d!722939 (= (lemmaMatchRIsSameAsWholeDerivativeAndNil!184 lt!902980 (_1!17324 lt!902974)) lt!903036)))

(declare-fun bs!469561 () Bool)

(assert (= bs!469561 d!722939))

(declare-fun m!2892655 () Bool)

(assert (=> bs!469561 m!2892655))

(assert (=> bs!469561 m!2892353))

(assert (=> bs!469561 m!2892347))

(declare-fun m!2892657 () Bool)

(assert (=> bs!469561 m!2892657))

(assert (=> bs!469561 m!2892347))

(assert (=> bs!469561 m!2892415))

(assert (=> b!2548000 d!722939))

(declare-fun d!722941 () Bool)

(declare-fun e!1610766 () Bool)

(assert (=> d!722941 e!1610766))

(declare-fun res!1073732 () Bool)

(assert (=> d!722941 (=> res!1073732 e!1610766)))

(declare-fun e!1610764 () Bool)

(assert (=> d!722941 (= res!1073732 e!1610764)))

(declare-fun res!1073730 () Bool)

(assert (=> d!722941 (=> (not res!1073730) (not e!1610764))))

(declare-fun lt!903052 () Option!5902)

(assert (=> d!722941 (= res!1073730 (isDefined!4724 lt!903052))))

(declare-fun e!1610765 () Option!5902)

(assert (=> d!722941 (= lt!903052 e!1610765)))

(declare-fun c!408447 () Bool)

(declare-fun e!1610767 () Bool)

(assert (=> d!722941 (= c!408447 e!1610767)))

(declare-fun res!1073731 () Bool)

(assert (=> d!722941 (=> (not res!1073731) (not e!1610767))))

(assert (=> d!722941 (= res!1073731 (matchR!3538 lt!902980 Nil!29556))))

(assert (=> d!722941 (validRegex!3217 lt!902980)))

(assert (=> d!722941 (= (findConcatSeparation!924 lt!902980 lt!902973 Nil!29556 tl!4068 tl!4068) lt!903052)))

(declare-fun b!2548573 () Bool)

(declare-fun e!1610768 () Option!5902)

(assert (=> b!2548573 (= e!1610768 None!5901)))

(declare-fun b!2548574 () Bool)

(declare-fun res!1073734 () Bool)

(assert (=> b!2548574 (=> (not res!1073734) (not e!1610764))))

(assert (=> b!2548574 (= res!1073734 (matchR!3538 lt!902973 (_2!17324 (get!9276 lt!903052))))))

(declare-fun b!2548575 () Bool)

(assert (=> b!2548575 (= e!1610765 e!1610768)))

(declare-fun c!408448 () Bool)

(assert (=> b!2548575 (= c!408448 ((_ is Nil!29556) tl!4068))))

(declare-fun b!2548576 () Bool)

(declare-fun res!1073733 () Bool)

(assert (=> b!2548576 (=> (not res!1073733) (not e!1610764))))

(assert (=> b!2548576 (= res!1073733 (matchR!3538 lt!902980 (_1!17324 (get!9276 lt!903052))))))

(declare-fun b!2548577 () Bool)

(assert (=> b!2548577 (= e!1610764 (= (++!7258 (_1!17324 (get!9276 lt!903052)) (_2!17324 (get!9276 lt!903052))) tl!4068))))

(declare-fun b!2548578 () Bool)

(declare-fun lt!903054 () Unit!43371)

(declare-fun lt!903053 () Unit!43371)

(assert (=> b!2548578 (= lt!903054 lt!903053)))

(assert (=> b!2548578 (= (++!7258 (++!7258 Nil!29556 (Cons!29556 (h!34976 tl!4068) Nil!29556)) (t!211355 tl!4068)) tl!4068)))

(declare-fun lemmaMoveElementToOtherListKeepsConcatEq!791 (List!29656 C!15340 List!29656 List!29656) Unit!43371)

(assert (=> b!2548578 (= lt!903053 (lemmaMoveElementToOtherListKeepsConcatEq!791 Nil!29556 (h!34976 tl!4068) (t!211355 tl!4068) tl!4068))))

(assert (=> b!2548578 (= e!1610768 (findConcatSeparation!924 lt!902980 lt!902973 (++!7258 Nil!29556 (Cons!29556 (h!34976 tl!4068) Nil!29556)) (t!211355 tl!4068) tl!4068))))

(declare-fun b!2548579 () Bool)

(assert (=> b!2548579 (= e!1610766 (not (isDefined!4724 lt!903052)))))

(declare-fun b!2548580 () Bool)

(assert (=> b!2548580 (= e!1610767 (matchR!3538 lt!902973 tl!4068))))

(declare-fun b!2548581 () Bool)

(assert (=> b!2548581 (= e!1610765 (Some!5901 (tuple2!29565 Nil!29556 tl!4068)))))

(assert (= (and d!722941 res!1073731) b!2548580))

(assert (= (and d!722941 c!408447) b!2548581))

(assert (= (and d!722941 (not c!408447)) b!2548575))

(assert (= (and b!2548575 c!408448) b!2548573))

(assert (= (and b!2548575 (not c!408448)) b!2548578))

(assert (= (and d!722941 res!1073730) b!2548576))

(assert (= (and b!2548576 res!1073733) b!2548574))

(assert (= (and b!2548574 res!1073734) b!2548577))

(assert (= (and d!722941 (not res!1073732)) b!2548579))

(declare-fun m!2892723 () Bool)

(assert (=> d!722941 m!2892723))

(declare-fun m!2892725 () Bool)

(assert (=> d!722941 m!2892725))

(assert (=> d!722941 m!2892415))

(declare-fun m!2892727 () Bool)

(assert (=> b!2548577 m!2892727))

(declare-fun m!2892729 () Bool)

(assert (=> b!2548577 m!2892729))

(assert (=> b!2548579 m!2892723))

(assert (=> b!2548574 m!2892727))

(declare-fun m!2892731 () Bool)

(assert (=> b!2548574 m!2892731))

(assert (=> b!2548576 m!2892727))

(declare-fun m!2892733 () Bool)

(assert (=> b!2548576 m!2892733))

(declare-fun m!2892735 () Bool)

(assert (=> b!2548580 m!2892735))

(declare-fun m!2892737 () Bool)

(assert (=> b!2548578 m!2892737))

(assert (=> b!2548578 m!2892737))

(declare-fun m!2892739 () Bool)

(assert (=> b!2548578 m!2892739))

(declare-fun m!2892741 () Bool)

(assert (=> b!2548578 m!2892741))

(assert (=> b!2548578 m!2892737))

(declare-fun m!2892743 () Bool)

(assert (=> b!2548578 m!2892743))

(assert (=> b!2547996 d!722941))

(declare-fun d!722961 () Bool)

(assert (=> d!722961 (isDefined!4724 (findConcatSeparation!924 lt!902980 lt!902973 Nil!29556 tl!4068 tl!4068))))

(declare-fun lt!903057 () Unit!43371)

(declare-fun choose!15049 (Regex!7591 Regex!7591 List!29656) Unit!43371)

(assert (=> d!722961 (= lt!903057 (choose!15049 lt!902980 lt!902973 tl!4068))))

(assert (=> d!722961 (validRegex!3217 lt!902980)))

(assert (=> d!722961 (= (lemmaConcatAcceptsStringThenFindSeparationIsDefined!206 lt!902980 lt!902973 tl!4068) lt!903057)))

(declare-fun bs!469566 () Bool)

(assert (= bs!469566 d!722961))

(assert (=> bs!469566 m!2892371))

(assert (=> bs!469566 m!2892371))

(declare-fun m!2892745 () Bool)

(assert (=> bs!469566 m!2892745))

(declare-fun m!2892747 () Bool)

(assert (=> bs!469566 m!2892747))

(assert (=> bs!469566 m!2892415))

(assert (=> b!2547996 d!722961))

(declare-fun d!722963 () Bool)

(declare-fun isEmpty!17004 (Option!5902) Bool)

(assert (=> d!722963 (= (isDefined!4724 lt!902972) (not (isEmpty!17004 lt!902972)))))

(declare-fun bs!469567 () Bool)

(assert (= bs!469567 d!722963))

(declare-fun m!2892749 () Bool)

(assert (=> bs!469567 m!2892749))

(assert (=> b!2547996 d!722963))

(declare-fun d!722965 () Bool)

(assert (=> d!722965 (= (get!9276 lt!902972) (v!31840 lt!902972))))

(assert (=> b!2547996 d!722965))

(declare-fun b!2548591 () Bool)

(declare-fun e!1610774 () List!29656)

(assert (=> b!2548591 (= e!1610774 (Cons!29556 (h!34976 (_1!17324 lt!902974)) (++!7258 (t!211355 (_1!17324 lt!902974)) (_2!17324 lt!902974))))))

(declare-fun b!2548590 () Bool)

(assert (=> b!2548590 (= e!1610774 (_2!17324 lt!902974))))

(declare-fun d!722967 () Bool)

(declare-fun e!1610773 () Bool)

(assert (=> d!722967 e!1610773))

(declare-fun res!1073739 () Bool)

(assert (=> d!722967 (=> (not res!1073739) (not e!1610773))))

(declare-fun lt!903060 () List!29656)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!4064 (List!29656) (InoxSet C!15340))

(assert (=> d!722967 (= res!1073739 (= (content!4064 lt!903060) ((_ map or) (content!4064 (_1!17324 lt!902974)) (content!4064 (_2!17324 lt!902974)))))))

(assert (=> d!722967 (= lt!903060 e!1610774)))

(declare-fun c!408451 () Bool)

(assert (=> d!722967 (= c!408451 ((_ is Nil!29556) (_1!17324 lt!902974)))))

(assert (=> d!722967 (= (++!7258 (_1!17324 lt!902974) (_2!17324 lt!902974)) lt!903060)))

(declare-fun b!2548592 () Bool)

(declare-fun res!1073740 () Bool)

(assert (=> b!2548592 (=> (not res!1073740) (not e!1610773))))

(declare-fun size!22944 (List!29656) Int)

(assert (=> b!2548592 (= res!1073740 (= (size!22944 lt!903060) (+ (size!22944 (_1!17324 lt!902974)) (size!22944 (_2!17324 lt!902974)))))))

(declare-fun b!2548593 () Bool)

(assert (=> b!2548593 (= e!1610773 (or (not (= (_2!17324 lt!902974) Nil!29556)) (= lt!903060 (_1!17324 lt!902974))))))

(assert (= (and d!722967 c!408451) b!2548590))

(assert (= (and d!722967 (not c!408451)) b!2548591))

(assert (= (and d!722967 res!1073739) b!2548592))

(assert (= (and b!2548592 res!1073740) b!2548593))

(declare-fun m!2892751 () Bool)

(assert (=> b!2548591 m!2892751))

(declare-fun m!2892753 () Bool)

(assert (=> d!722967 m!2892753))

(declare-fun m!2892755 () Bool)

(assert (=> d!722967 m!2892755))

(declare-fun m!2892757 () Bool)

(assert (=> d!722967 m!2892757))

(declare-fun m!2892759 () Bool)

(assert (=> b!2548592 m!2892759))

(declare-fun m!2892761 () Bool)

(assert (=> b!2548592 m!2892761))

(declare-fun m!2892763 () Bool)

(assert (=> b!2548592 m!2892763))

(assert (=> b!2547996 d!722967))

(declare-fun b!2548598 () Bool)

(declare-fun e!1610777 () Bool)

(declare-fun tp!813219 () Bool)

(assert (=> b!2548598 (= e!1610777 (and tp_is_empty!13037 tp!813219))))

(assert (=> b!2547999 (= tp!813175 e!1610777)))

(assert (= (and b!2547999 ((_ is Cons!29556) (t!211355 tl!4068))) b!2548598))

(declare-fun e!1610780 () Bool)

(assert (=> b!2547989 (= tp!813176 e!1610780)))

(declare-fun b!2548609 () Bool)

(assert (=> b!2548609 (= e!1610780 tp_is_empty!13037)))

(declare-fun b!2548610 () Bool)

(declare-fun tp!813230 () Bool)

(declare-fun tp!813234 () Bool)

(assert (=> b!2548610 (= e!1610780 (and tp!813230 tp!813234))))

(declare-fun b!2548612 () Bool)

(declare-fun tp!813233 () Bool)

(declare-fun tp!813231 () Bool)

(assert (=> b!2548612 (= e!1610780 (and tp!813233 tp!813231))))

(declare-fun b!2548611 () Bool)

(declare-fun tp!813232 () Bool)

(assert (=> b!2548611 (= e!1610780 tp!813232)))

(assert (= (and b!2547989 ((_ is ElementMatch!7591) (regOne!15694 r!27340))) b!2548609))

(assert (= (and b!2547989 ((_ is Concat!12287) (regOne!15694 r!27340))) b!2548610))

(assert (= (and b!2547989 ((_ is Star!7591) (regOne!15694 r!27340))) b!2548611))

(assert (= (and b!2547989 ((_ is Union!7591) (regOne!15694 r!27340))) b!2548612))

(declare-fun e!1610781 () Bool)

(assert (=> b!2547989 (= tp!813174 e!1610781)))

(declare-fun b!2548613 () Bool)

(assert (=> b!2548613 (= e!1610781 tp_is_empty!13037)))

(declare-fun b!2548614 () Bool)

(declare-fun tp!813235 () Bool)

(declare-fun tp!813239 () Bool)

(assert (=> b!2548614 (= e!1610781 (and tp!813235 tp!813239))))

(declare-fun b!2548616 () Bool)

(declare-fun tp!813238 () Bool)

(declare-fun tp!813236 () Bool)

(assert (=> b!2548616 (= e!1610781 (and tp!813238 tp!813236))))

(declare-fun b!2548615 () Bool)

(declare-fun tp!813237 () Bool)

(assert (=> b!2548615 (= e!1610781 tp!813237)))

(assert (= (and b!2547989 ((_ is ElementMatch!7591) (regTwo!15694 r!27340))) b!2548613))

(assert (= (and b!2547989 ((_ is Concat!12287) (regTwo!15694 r!27340))) b!2548614))

(assert (= (and b!2547989 ((_ is Star!7591) (regTwo!15694 r!27340))) b!2548615))

(assert (= (and b!2547989 ((_ is Union!7591) (regTwo!15694 r!27340))) b!2548616))

(declare-fun e!1610782 () Bool)

(assert (=> b!2547994 (= tp!813177 e!1610782)))

(declare-fun b!2548617 () Bool)

(assert (=> b!2548617 (= e!1610782 tp_is_empty!13037)))

(declare-fun b!2548618 () Bool)

(declare-fun tp!813240 () Bool)

(declare-fun tp!813244 () Bool)

(assert (=> b!2548618 (= e!1610782 (and tp!813240 tp!813244))))

(declare-fun b!2548620 () Bool)

(declare-fun tp!813243 () Bool)

(declare-fun tp!813241 () Bool)

(assert (=> b!2548620 (= e!1610782 (and tp!813243 tp!813241))))

(declare-fun b!2548619 () Bool)

(declare-fun tp!813242 () Bool)

(assert (=> b!2548619 (= e!1610782 tp!813242)))

(assert (= (and b!2547994 ((_ is ElementMatch!7591) (regOne!15695 r!27340))) b!2548617))

(assert (= (and b!2547994 ((_ is Concat!12287) (regOne!15695 r!27340))) b!2548618))

(assert (= (and b!2547994 ((_ is Star!7591) (regOne!15695 r!27340))) b!2548619))

(assert (= (and b!2547994 ((_ is Union!7591) (regOne!15695 r!27340))) b!2548620))

(declare-fun e!1610783 () Bool)

(assert (=> b!2547994 (= tp!813178 e!1610783)))

(declare-fun b!2548621 () Bool)

(assert (=> b!2548621 (= e!1610783 tp_is_empty!13037)))

(declare-fun b!2548622 () Bool)

(declare-fun tp!813245 () Bool)

(declare-fun tp!813249 () Bool)

(assert (=> b!2548622 (= e!1610783 (and tp!813245 tp!813249))))

(declare-fun b!2548624 () Bool)

(declare-fun tp!813248 () Bool)

(declare-fun tp!813246 () Bool)

(assert (=> b!2548624 (= e!1610783 (and tp!813248 tp!813246))))

(declare-fun b!2548623 () Bool)

(declare-fun tp!813247 () Bool)

(assert (=> b!2548623 (= e!1610783 tp!813247)))

(assert (= (and b!2547994 ((_ is ElementMatch!7591) (regTwo!15695 r!27340))) b!2548621))

(assert (= (and b!2547994 ((_ is Concat!12287) (regTwo!15695 r!27340))) b!2548622))

(assert (= (and b!2547994 ((_ is Star!7591) (regTwo!15695 r!27340))) b!2548623))

(assert (= (and b!2547994 ((_ is Union!7591) (regTwo!15695 r!27340))) b!2548624))

(declare-fun e!1610784 () Bool)

(assert (=> b!2548002 (= tp!813173 e!1610784)))

(declare-fun b!2548625 () Bool)

(assert (=> b!2548625 (= e!1610784 tp_is_empty!13037)))

(declare-fun b!2548626 () Bool)

(declare-fun tp!813250 () Bool)

(declare-fun tp!813254 () Bool)

(assert (=> b!2548626 (= e!1610784 (and tp!813250 tp!813254))))

(declare-fun b!2548628 () Bool)

(declare-fun tp!813253 () Bool)

(declare-fun tp!813251 () Bool)

(assert (=> b!2548628 (= e!1610784 (and tp!813253 tp!813251))))

(declare-fun b!2548627 () Bool)

(declare-fun tp!813252 () Bool)

(assert (=> b!2548627 (= e!1610784 tp!813252)))

(assert (= (and b!2548002 ((_ is ElementMatch!7591) (reg!7920 r!27340))) b!2548625))

(assert (= (and b!2548002 ((_ is Concat!12287) (reg!7920 r!27340))) b!2548626))

(assert (= (and b!2548002 ((_ is Star!7591) (reg!7920 r!27340))) b!2548627))

(assert (= (and b!2548002 ((_ is Union!7591) (reg!7920 r!27340))) b!2548628))

(check-sat (not b!2548079) (not b!2548592) (not b!2548611) (not b!2548618) (not b!2548401) (not bm!161887) (not d!722935) (not b!2548622) tp_is_empty!13037 (not b!2548431) (not d!722881) (not bm!161901) (not b!2548153) (not b!2548627) (not b!2548318) (not b!2548616) (not b!2548432) (not b!2548324) (not b!2548308) (not d!722885) (not d!722887) (not b!2548302) (not b!2548173) (not d!722941) (not d!722939) (not b!2548176) (not bm!161883) (not b!2548615) (not bm!161860) (not b!2548180) (not b!2548598) (not b!2548328) (not b!2548174) (not b!2548086) (not b!2548159) (not b!2548293) (not bm!161904) (not d!722871) (not b!2548428) (not b!2548166) (not b!2548085) (not bm!161865) (not b!2548160) (not b!2548162) (not d!722919) (not b!2548092) (not b!2548620) (not b!2548438) (not bm!161861) (not b!2548614) (not b!2548434) (not b!2548574) (not d!722917) (not d!722891) (not d!722967) (not b!2548577) (not b!2548580) (not bm!161905) (not b!2548304) (not b!2548578) (not b!2548088) (not d!722903) (not b!2548610) (not b!2548156) (not d!722963) (not b!2548082) (not bm!161877) (not b!2548309) (not b!2548455) (not d!722911) (not b!2548579) (not bm!161902) (not b!2548167) (not b!2548410) (not b!2548301) (not b!2548295) (not d!722913) (not d!722889) (not bm!161884) (not d!722905) (not b!2548170) (not b!2548298) (not bm!161909) (not b!2548425) (not d!722929) (not b!2548330) (not b!2548334) (not b!2548576) (not b!2548150) (not d!722915) (not bm!161882) (not b!2548626) (not bm!161880) (not b!2548591) (not bm!161881) (not b!2548624) (not bm!161878) (not b!2548327) (not b!2548321) (not bm!161864) (not bm!161839) (not b!2548612) (not d!722961) (not b!2548628) (not b!2548619) (not b!2548623))
(check-sat)
