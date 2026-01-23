; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!739216 () Bool)

(assert start!739216)

(declare-fun b!7757306 () Bool)

(declare-fun e!4597963 () Bool)

(declare-fun tp!2276943 () Bool)

(declare-fun tp!2276934 () Bool)

(assert (=> b!7757306 (= e!4597963 (and tp!2276943 tp!2276934))))

(declare-fun b!7757307 () Bool)

(declare-fun e!4597961 () Bool)

(declare-fun tp!2276942 () Bool)

(assert (=> b!7757307 (= e!4597961 tp!2276942)))

(declare-fun b!7757308 () Bool)

(declare-fun tp!2276941 () Bool)

(declare-fun tp!2276939 () Bool)

(assert (=> b!7757308 (= e!4597963 (and tp!2276941 tp!2276939))))

(declare-fun b!7757309 () Bool)

(declare-fun tp!2276937 () Bool)

(declare-fun tp!2276935 () Bool)

(assert (=> b!7757309 (= e!4597961 (and tp!2276937 tp!2276935))))

(declare-fun res!3092678 () Bool)

(declare-fun e!4597962 () Bool)

(assert (=> start!739216 (=> (not res!3092678) (not e!4597962))))

(declare-datatypes ((C!41628 0))(
  ( (C!41629 (val!31254 Int)) )
))
(declare-datatypes ((Regex!20651 0))(
  ( (ElementMatch!20651 (c!1430512 C!41628)) (Concat!29496 (regOne!41814 Regex!20651) (regTwo!41814 Regex!20651)) (EmptyExpr!20651) (Star!20651 (reg!20980 Regex!20651)) (EmptyLang!20651) (Union!20651 (regOne!41815 Regex!20651) (regTwo!41815 Regex!20651)) )
))
(declare-fun r1!3330 () Regex!20651)

(declare-fun validRegex!11067 (Regex!20651) Bool)

(assert (=> start!739216 (= res!3092678 (validRegex!11067 r1!3330))))

(assert (=> start!739216 e!4597962))

(assert (=> start!739216 e!4597963))

(assert (=> start!739216 e!4597961))

(declare-fun e!4597960 () Bool)

(assert (=> start!739216 e!4597960))

(declare-fun b!7757310 () Bool)

(declare-fun tp_is_empty!51657 () Bool)

(assert (=> b!7757310 (= e!4597963 tp_is_empty!51657)))

(declare-fun b!7757311 () Bool)

(declare-fun res!3092680 () Bool)

(assert (=> b!7757311 (=> (not res!3092680) (not e!4597962))))

(declare-fun r2!3230 () Regex!20651)

(declare-datatypes ((List!73494 0))(
  ( (Nil!73370) (Cons!73370 (h!79818 C!41628) (t!388229 List!73494)) )
))
(declare-fun s!10216 () List!73494)

(declare-datatypes ((tuple2!69688 0))(
  ( (tuple2!69689 (_1!38147 List!73494) (_2!38147 List!73494)) )
))
(declare-datatypes ((Option!17638 0))(
  ( (None!17637) (Some!17637 (v!54772 tuple2!69688)) )
))
(declare-fun isDefined!14250 (Option!17638) Bool)

(declare-fun findConcatSeparation!3668 (Regex!20651 Regex!20651 List!73494 List!73494 List!73494) Option!17638)

(assert (=> b!7757311 (= res!3092680 (isDefined!14250 (findConcatSeparation!3668 r1!3330 r2!3230 Nil!73370 s!10216 s!10216)))))

(declare-fun b!7757312 () Bool)

(declare-fun ++!17828 (List!73494 List!73494) List!73494)

(assert (=> b!7757312 (= e!4597962 (not (= (++!17828 Nil!73370 s!10216) s!10216)))))

(declare-fun b!7757313 () Bool)

(assert (=> b!7757313 (= e!4597961 tp_is_empty!51657)))

(declare-fun b!7757314 () Bool)

(declare-fun tp!2276940 () Bool)

(declare-fun tp!2276936 () Bool)

(assert (=> b!7757314 (= e!4597961 (and tp!2276940 tp!2276936))))

(declare-fun b!7757315 () Bool)

(declare-fun tp!2276938 () Bool)

(assert (=> b!7757315 (= e!4597963 tp!2276938)))

(declare-fun b!7757316 () Bool)

(declare-fun tp!2276933 () Bool)

(assert (=> b!7757316 (= e!4597960 (and tp_is_empty!51657 tp!2276933))))

(declare-fun b!7757317 () Bool)

(declare-fun res!3092679 () Bool)

(assert (=> b!7757317 (=> (not res!3092679) (not e!4597962))))

(assert (=> b!7757317 (= res!3092679 (validRegex!11067 r2!3230))))

(assert (= (and start!739216 res!3092678) b!7757317))

(assert (= (and b!7757317 res!3092679) b!7757311))

(assert (= (and b!7757311 res!3092680) b!7757312))

(get-info :version)

(assert (= (and start!739216 ((_ is ElementMatch!20651) r1!3330)) b!7757310))

(assert (= (and start!739216 ((_ is Concat!29496) r1!3330)) b!7757308))

(assert (= (and start!739216 ((_ is Star!20651) r1!3330)) b!7757315))

(assert (= (and start!739216 ((_ is Union!20651) r1!3330)) b!7757306))

(assert (= (and start!739216 ((_ is ElementMatch!20651) r2!3230)) b!7757313))

(assert (= (and start!739216 ((_ is Concat!29496) r2!3230)) b!7757309))

(assert (= (and start!739216 ((_ is Star!20651) r2!3230)) b!7757307))

(assert (= (and start!739216 ((_ is Union!20651) r2!3230)) b!7757314))

(assert (= (and start!739216 ((_ is Cons!73370) s!10216)) b!7757316))

(declare-fun m!8219380 () Bool)

(assert (=> start!739216 m!8219380))

(declare-fun m!8219382 () Bool)

(assert (=> b!7757311 m!8219382))

(assert (=> b!7757311 m!8219382))

(declare-fun m!8219384 () Bool)

(assert (=> b!7757311 m!8219384))

(declare-fun m!8219386 () Bool)

(assert (=> b!7757312 m!8219386))

(declare-fun m!8219388 () Bool)

(assert (=> b!7757317 m!8219388))

(check-sat tp_is_empty!51657 (not b!7757315) (not b!7757314) (not b!7757308) (not b!7757309) (not start!739216) (not b!7757306) (not b!7757311) (not b!7757312) (not b!7757307) (not b!7757316) (not b!7757317))
(check-sat)
(get-model)

(declare-fun b!7757336 () Bool)

(declare-fun e!4597979 () Bool)

(declare-fun e!4597982 () Bool)

(assert (=> b!7757336 (= e!4597979 e!4597982)))

(declare-fun res!3092694 () Bool)

(declare-fun nullable!9099 (Regex!20651) Bool)

(assert (=> b!7757336 (= res!3092694 (not (nullable!9099 (reg!20980 r1!3330))))))

(assert (=> b!7757336 (=> (not res!3092694) (not e!4597982))))

(declare-fun b!7757337 () Bool)

(declare-fun e!4597980 () Bool)

(assert (=> b!7757337 (= e!4597980 e!4597979)))

(declare-fun c!1430517 () Bool)

(assert (=> b!7757337 (= c!1430517 ((_ is Star!20651) r1!3330))))

(declare-fun bm!719026 () Bool)

(declare-fun call!719031 () Bool)

(declare-fun c!1430518 () Bool)

(assert (=> bm!719026 (= call!719031 (validRegex!11067 (ite c!1430518 (regTwo!41815 r1!3330) (regTwo!41814 r1!3330))))))

(declare-fun b!7757338 () Bool)

(declare-fun call!719033 () Bool)

(assert (=> b!7757338 (= e!4597982 call!719033)))

(declare-fun b!7757339 () Bool)

(declare-fun res!3092693 () Bool)

(declare-fun e!4597981 () Bool)

(assert (=> b!7757339 (=> res!3092693 e!4597981)))

(assert (=> b!7757339 (= res!3092693 (not ((_ is Concat!29496) r1!3330)))))

(declare-fun e!4597983 () Bool)

(assert (=> b!7757339 (= e!4597983 e!4597981)))

(declare-fun b!7757340 () Bool)

(declare-fun e!4597978 () Bool)

(assert (=> b!7757340 (= e!4597981 e!4597978)))

(declare-fun res!3092691 () Bool)

(assert (=> b!7757340 (=> (not res!3092691) (not e!4597978))))

(declare-fun call!719032 () Bool)

(assert (=> b!7757340 (= res!3092691 call!719032)))

(declare-fun d!2343401 () Bool)

(declare-fun res!3092695 () Bool)

(assert (=> d!2343401 (=> res!3092695 e!4597980)))

(assert (=> d!2343401 (= res!3092695 ((_ is ElementMatch!20651) r1!3330))))

(assert (=> d!2343401 (= (validRegex!11067 r1!3330) e!4597980)))

(declare-fun b!7757341 () Bool)

(declare-fun res!3092692 () Bool)

(declare-fun e!4597984 () Bool)

(assert (=> b!7757341 (=> (not res!3092692) (not e!4597984))))

(assert (=> b!7757341 (= res!3092692 call!719032)))

(assert (=> b!7757341 (= e!4597983 e!4597984)))

(declare-fun bm!719027 () Bool)

(assert (=> bm!719027 (= call!719032 call!719033)))

(declare-fun b!7757342 () Bool)

(assert (=> b!7757342 (= e!4597979 e!4597983)))

(assert (=> b!7757342 (= c!1430518 ((_ is Union!20651) r1!3330))))

(declare-fun b!7757343 () Bool)

(assert (=> b!7757343 (= e!4597978 call!719031)))

(declare-fun b!7757344 () Bool)

(assert (=> b!7757344 (= e!4597984 call!719031)))

(declare-fun bm!719028 () Bool)

(assert (=> bm!719028 (= call!719033 (validRegex!11067 (ite c!1430517 (reg!20980 r1!3330) (ite c!1430518 (regOne!41815 r1!3330) (regOne!41814 r1!3330)))))))

(assert (= (and d!2343401 (not res!3092695)) b!7757337))

(assert (= (and b!7757337 c!1430517) b!7757336))

(assert (= (and b!7757337 (not c!1430517)) b!7757342))

(assert (= (and b!7757336 res!3092694) b!7757338))

(assert (= (and b!7757342 c!1430518) b!7757341))

(assert (= (and b!7757342 (not c!1430518)) b!7757339))

(assert (= (and b!7757341 res!3092692) b!7757344))

(assert (= (and b!7757339 (not res!3092693)) b!7757340))

(assert (= (and b!7757340 res!3092691) b!7757343))

(assert (= (or b!7757341 b!7757340) bm!719027))

(assert (= (or b!7757344 b!7757343) bm!719026))

(assert (= (or b!7757338 bm!719027) bm!719028))

(declare-fun m!8219390 () Bool)

(assert (=> b!7757336 m!8219390))

(declare-fun m!8219392 () Bool)

(assert (=> bm!719026 m!8219392))

(declare-fun m!8219394 () Bool)

(assert (=> bm!719028 m!8219394))

(assert (=> start!739216 d!2343401))

(declare-fun d!2343405 () Bool)

(declare-fun isEmpty!42047 (Option!17638) Bool)

(assert (=> d!2343405 (= (isDefined!14250 (findConcatSeparation!3668 r1!3330 r2!3230 Nil!73370 s!10216 s!10216)) (not (isEmpty!42047 (findConcatSeparation!3668 r1!3330 r2!3230 Nil!73370 s!10216 s!10216))))))

(declare-fun bs!1965891 () Bool)

(assert (= bs!1965891 d!2343405))

(assert (=> bs!1965891 m!8219382))

(declare-fun m!8219396 () Bool)

(assert (=> bs!1965891 m!8219396))

(assert (=> b!7757311 d!2343405))

(declare-fun b!7757363 () Bool)

(declare-datatypes ((Unit!168350 0))(
  ( (Unit!168351) )
))
(declare-fun lt!2669889 () Unit!168350)

(declare-fun lt!2669888 () Unit!168350)

(assert (=> b!7757363 (= lt!2669889 lt!2669888)))

(assert (=> b!7757363 (= (++!17828 (++!17828 Nil!73370 (Cons!73370 (h!79818 s!10216) Nil!73370)) (t!388229 s!10216)) s!10216)))

(declare-fun lemmaMoveElementToOtherListKeepsConcatEq!3350 (List!73494 C!41628 List!73494 List!73494) Unit!168350)

(assert (=> b!7757363 (= lt!2669888 (lemmaMoveElementToOtherListKeepsConcatEq!3350 Nil!73370 (h!79818 s!10216) (t!388229 s!10216) s!10216))))

(declare-fun e!4597997 () Option!17638)

(assert (=> b!7757363 (= e!4597997 (findConcatSeparation!3668 r1!3330 r2!3230 (++!17828 Nil!73370 (Cons!73370 (h!79818 s!10216) Nil!73370)) (t!388229 s!10216) s!10216))))

(declare-fun b!7757364 () Bool)

(declare-fun e!4597998 () Bool)

(declare-fun lt!2669887 () Option!17638)

(declare-fun get!26128 (Option!17638) tuple2!69688)

(assert (=> b!7757364 (= e!4597998 (= (++!17828 (_1!38147 (get!26128 lt!2669887)) (_2!38147 (get!26128 lt!2669887))) s!10216))))

(declare-fun b!7757365 () Bool)

(declare-fun res!3092709 () Bool)

(assert (=> b!7757365 (=> (not res!3092709) (not e!4597998))))

(declare-fun matchR!10128 (Regex!20651 List!73494) Bool)

(assert (=> b!7757365 (= res!3092709 (matchR!10128 r1!3330 (_1!38147 (get!26128 lt!2669887))))))

(declare-fun b!7757366 () Bool)

(declare-fun res!3092706 () Bool)

(assert (=> b!7757366 (=> (not res!3092706) (not e!4597998))))

(assert (=> b!7757366 (= res!3092706 (matchR!10128 r2!3230 (_2!38147 (get!26128 lt!2669887))))))

(declare-fun b!7757367 () Bool)

(declare-fun e!4597996 () Option!17638)

(assert (=> b!7757367 (= e!4597996 (Some!17637 (tuple2!69689 Nil!73370 s!10216)))))

(declare-fun b!7757368 () Bool)

(declare-fun e!4597999 () Bool)

(assert (=> b!7757368 (= e!4597999 (matchR!10128 r2!3230 s!10216))))

(declare-fun b!7757370 () Bool)

(assert (=> b!7757370 (= e!4597996 e!4597997)))

(declare-fun c!1430523 () Bool)

(assert (=> b!7757370 (= c!1430523 ((_ is Nil!73370) s!10216))))

(declare-fun b!7757371 () Bool)

(declare-fun e!4597995 () Bool)

(assert (=> b!7757371 (= e!4597995 (not (isDefined!14250 lt!2669887)))))

(declare-fun d!2343407 () Bool)

(assert (=> d!2343407 e!4597995))

(declare-fun res!3092710 () Bool)

(assert (=> d!2343407 (=> res!3092710 e!4597995)))

(assert (=> d!2343407 (= res!3092710 e!4597998)))

(declare-fun res!3092708 () Bool)

(assert (=> d!2343407 (=> (not res!3092708) (not e!4597998))))

(assert (=> d!2343407 (= res!3092708 (isDefined!14250 lt!2669887))))

(assert (=> d!2343407 (= lt!2669887 e!4597996)))

(declare-fun c!1430524 () Bool)

(assert (=> d!2343407 (= c!1430524 e!4597999)))

(declare-fun res!3092707 () Bool)

(assert (=> d!2343407 (=> (not res!3092707) (not e!4597999))))

(assert (=> d!2343407 (= res!3092707 (matchR!10128 r1!3330 Nil!73370))))

(assert (=> d!2343407 (validRegex!11067 r1!3330)))

(assert (=> d!2343407 (= (findConcatSeparation!3668 r1!3330 r2!3230 Nil!73370 s!10216 s!10216) lt!2669887)))

(declare-fun b!7757369 () Bool)

(assert (=> b!7757369 (= e!4597997 None!17637)))

(assert (= (and d!2343407 res!3092707) b!7757368))

(assert (= (and d!2343407 c!1430524) b!7757367))

(assert (= (and d!2343407 (not c!1430524)) b!7757370))

(assert (= (and b!7757370 c!1430523) b!7757369))

(assert (= (and b!7757370 (not c!1430523)) b!7757363))

(assert (= (and d!2343407 res!3092708) b!7757365))

(assert (= (and b!7757365 res!3092709) b!7757366))

(assert (= (and b!7757366 res!3092706) b!7757364))

(assert (= (and d!2343407 (not res!3092710)) b!7757371))

(declare-fun m!8219400 () Bool)

(assert (=> d!2343407 m!8219400))

(declare-fun m!8219402 () Bool)

(assert (=> d!2343407 m!8219402))

(assert (=> d!2343407 m!8219380))

(declare-fun m!8219404 () Bool)

(assert (=> b!7757368 m!8219404))

(declare-fun m!8219406 () Bool)

(assert (=> b!7757365 m!8219406))

(declare-fun m!8219408 () Bool)

(assert (=> b!7757365 m!8219408))

(assert (=> b!7757366 m!8219406))

(declare-fun m!8219410 () Bool)

(assert (=> b!7757366 m!8219410))

(assert (=> b!7757364 m!8219406))

(declare-fun m!8219412 () Bool)

(assert (=> b!7757364 m!8219412))

(assert (=> b!7757371 m!8219400))

(declare-fun m!8219414 () Bool)

(assert (=> b!7757363 m!8219414))

(assert (=> b!7757363 m!8219414))

(declare-fun m!8219416 () Bool)

(assert (=> b!7757363 m!8219416))

(declare-fun m!8219418 () Bool)

(assert (=> b!7757363 m!8219418))

(assert (=> b!7757363 m!8219414))

(declare-fun m!8219420 () Bool)

(assert (=> b!7757363 m!8219420))

(assert (=> b!7757311 d!2343407))

(declare-fun b!7757381 () Bool)

(declare-fun e!4598005 () List!73494)

(assert (=> b!7757381 (= e!4598005 (Cons!73370 (h!79818 Nil!73370) (++!17828 (t!388229 Nil!73370) s!10216)))))

(declare-fun b!7757382 () Bool)

(declare-fun res!3092716 () Bool)

(declare-fun e!4598004 () Bool)

(assert (=> b!7757382 (=> (not res!3092716) (not e!4598004))))

(declare-fun lt!2669892 () List!73494)

(declare-fun size!42670 (List!73494) Int)

(assert (=> b!7757382 (= res!3092716 (= (size!42670 lt!2669892) (+ (size!42670 Nil!73370) (size!42670 s!10216))))))

(declare-fun b!7757380 () Bool)

(assert (=> b!7757380 (= e!4598005 s!10216)))

(declare-fun d!2343411 () Bool)

(assert (=> d!2343411 e!4598004))

(declare-fun res!3092715 () Bool)

(assert (=> d!2343411 (=> (not res!3092715) (not e!4598004))))

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!15567 (List!73494) (InoxSet C!41628))

(assert (=> d!2343411 (= res!3092715 (= (content!15567 lt!2669892) ((_ map or) (content!15567 Nil!73370) (content!15567 s!10216))))))

(assert (=> d!2343411 (= lt!2669892 e!4598005)))

(declare-fun c!1430527 () Bool)

(assert (=> d!2343411 (= c!1430527 ((_ is Nil!73370) Nil!73370))))

(assert (=> d!2343411 (= (++!17828 Nil!73370 s!10216) lt!2669892)))

(declare-fun b!7757383 () Bool)

(assert (=> b!7757383 (= e!4598004 (or (not (= s!10216 Nil!73370)) (= lt!2669892 Nil!73370)))))

(assert (= (and d!2343411 c!1430527) b!7757380))

(assert (= (and d!2343411 (not c!1430527)) b!7757381))

(assert (= (and d!2343411 res!3092715) b!7757382))

(assert (= (and b!7757382 res!3092716) b!7757383))

(declare-fun m!8219422 () Bool)

(assert (=> b!7757381 m!8219422))

(declare-fun m!8219424 () Bool)

(assert (=> b!7757382 m!8219424))

(declare-fun m!8219426 () Bool)

(assert (=> b!7757382 m!8219426))

(declare-fun m!8219428 () Bool)

(assert (=> b!7757382 m!8219428))

(declare-fun m!8219430 () Bool)

(assert (=> d!2343411 m!8219430))

(declare-fun m!8219432 () Bool)

(assert (=> d!2343411 m!8219432))

(declare-fun m!8219434 () Bool)

(assert (=> d!2343411 m!8219434))

(assert (=> b!7757312 d!2343411))

(declare-fun b!7757384 () Bool)

(declare-fun e!4598007 () Bool)

(declare-fun e!4598010 () Bool)

(assert (=> b!7757384 (= e!4598007 e!4598010)))

(declare-fun res!3092720 () Bool)

(assert (=> b!7757384 (= res!3092720 (not (nullable!9099 (reg!20980 r2!3230))))))

(assert (=> b!7757384 (=> (not res!3092720) (not e!4598010))))

(declare-fun b!7757385 () Bool)

(declare-fun e!4598008 () Bool)

(assert (=> b!7757385 (= e!4598008 e!4598007)))

(declare-fun c!1430528 () Bool)

(assert (=> b!7757385 (= c!1430528 ((_ is Star!20651) r2!3230))))

(declare-fun bm!719029 () Bool)

(declare-fun call!719034 () Bool)

(declare-fun c!1430529 () Bool)

(assert (=> bm!719029 (= call!719034 (validRegex!11067 (ite c!1430529 (regTwo!41815 r2!3230) (regTwo!41814 r2!3230))))))

(declare-fun b!7757386 () Bool)

(declare-fun call!719036 () Bool)

(assert (=> b!7757386 (= e!4598010 call!719036)))

(declare-fun b!7757387 () Bool)

(declare-fun res!3092719 () Bool)

(declare-fun e!4598009 () Bool)

(assert (=> b!7757387 (=> res!3092719 e!4598009)))

(assert (=> b!7757387 (= res!3092719 (not ((_ is Concat!29496) r2!3230)))))

(declare-fun e!4598011 () Bool)

(assert (=> b!7757387 (= e!4598011 e!4598009)))

(declare-fun b!7757388 () Bool)

(declare-fun e!4598006 () Bool)

(assert (=> b!7757388 (= e!4598009 e!4598006)))

(declare-fun res!3092717 () Bool)

(assert (=> b!7757388 (=> (not res!3092717) (not e!4598006))))

(declare-fun call!719035 () Bool)

(assert (=> b!7757388 (= res!3092717 call!719035)))

(declare-fun d!2343413 () Bool)

(declare-fun res!3092721 () Bool)

(assert (=> d!2343413 (=> res!3092721 e!4598008)))

(assert (=> d!2343413 (= res!3092721 ((_ is ElementMatch!20651) r2!3230))))

(assert (=> d!2343413 (= (validRegex!11067 r2!3230) e!4598008)))

(declare-fun b!7757389 () Bool)

(declare-fun res!3092718 () Bool)

(declare-fun e!4598012 () Bool)

(assert (=> b!7757389 (=> (not res!3092718) (not e!4598012))))

(assert (=> b!7757389 (= res!3092718 call!719035)))

(assert (=> b!7757389 (= e!4598011 e!4598012)))

(declare-fun bm!719030 () Bool)

(assert (=> bm!719030 (= call!719035 call!719036)))

(declare-fun b!7757390 () Bool)

(assert (=> b!7757390 (= e!4598007 e!4598011)))

(assert (=> b!7757390 (= c!1430529 ((_ is Union!20651) r2!3230))))

(declare-fun b!7757391 () Bool)

(assert (=> b!7757391 (= e!4598006 call!719034)))

(declare-fun b!7757392 () Bool)

(assert (=> b!7757392 (= e!4598012 call!719034)))

(declare-fun bm!719031 () Bool)

(assert (=> bm!719031 (= call!719036 (validRegex!11067 (ite c!1430528 (reg!20980 r2!3230) (ite c!1430529 (regOne!41815 r2!3230) (regOne!41814 r2!3230)))))))

(assert (= (and d!2343413 (not res!3092721)) b!7757385))

(assert (= (and b!7757385 c!1430528) b!7757384))

(assert (= (and b!7757385 (not c!1430528)) b!7757390))

(assert (= (and b!7757384 res!3092720) b!7757386))

(assert (= (and b!7757390 c!1430529) b!7757389))

(assert (= (and b!7757390 (not c!1430529)) b!7757387))

(assert (= (and b!7757389 res!3092718) b!7757392))

(assert (= (and b!7757387 (not res!3092719)) b!7757388))

(assert (= (and b!7757388 res!3092717) b!7757391))

(assert (= (or b!7757389 b!7757388) bm!719030))

(assert (= (or b!7757392 b!7757391) bm!719029))

(assert (= (or b!7757386 bm!719030) bm!719031))

(declare-fun m!8219436 () Bool)

(assert (=> b!7757384 m!8219436))

(declare-fun m!8219438 () Bool)

(assert (=> bm!719029 m!8219438))

(declare-fun m!8219440 () Bool)

(assert (=> bm!719031 m!8219440))

(assert (=> b!7757317 d!2343413))

(declare-fun e!4598021 () Bool)

(assert (=> b!7757308 (= tp!2276941 e!4598021)))

(declare-fun b!7757416 () Bool)

(declare-fun tp!2276957 () Bool)

(declare-fun tp!2276954 () Bool)

(assert (=> b!7757416 (= e!4598021 (and tp!2276957 tp!2276954))))

(declare-fun b!7757414 () Bool)

(declare-fun tp!2276958 () Bool)

(declare-fun tp!2276955 () Bool)

(assert (=> b!7757414 (= e!4598021 (and tp!2276958 tp!2276955))))

(declare-fun b!7757413 () Bool)

(assert (=> b!7757413 (= e!4598021 tp_is_empty!51657)))

(declare-fun b!7757415 () Bool)

(declare-fun tp!2276956 () Bool)

(assert (=> b!7757415 (= e!4598021 tp!2276956)))

(assert (= (and b!7757308 ((_ is ElementMatch!20651) (regOne!41814 r1!3330))) b!7757413))

(assert (= (and b!7757308 ((_ is Concat!29496) (regOne!41814 r1!3330))) b!7757414))

(assert (= (and b!7757308 ((_ is Star!20651) (regOne!41814 r1!3330))) b!7757415))

(assert (= (and b!7757308 ((_ is Union!20651) (regOne!41814 r1!3330))) b!7757416))

(declare-fun e!4598022 () Bool)

(assert (=> b!7757308 (= tp!2276939 e!4598022)))

(declare-fun b!7757420 () Bool)

(declare-fun tp!2276962 () Bool)

(declare-fun tp!2276959 () Bool)

(assert (=> b!7757420 (= e!4598022 (and tp!2276962 tp!2276959))))

(declare-fun b!7757418 () Bool)

(declare-fun tp!2276963 () Bool)

(declare-fun tp!2276960 () Bool)

(assert (=> b!7757418 (= e!4598022 (and tp!2276963 tp!2276960))))

(declare-fun b!7757417 () Bool)

(assert (=> b!7757417 (= e!4598022 tp_is_empty!51657)))

(declare-fun b!7757419 () Bool)

(declare-fun tp!2276961 () Bool)

(assert (=> b!7757419 (= e!4598022 tp!2276961)))

(assert (= (and b!7757308 ((_ is ElementMatch!20651) (regTwo!41814 r1!3330))) b!7757417))

(assert (= (and b!7757308 ((_ is Concat!29496) (regTwo!41814 r1!3330))) b!7757418))

(assert (= (and b!7757308 ((_ is Star!20651) (regTwo!41814 r1!3330))) b!7757419))

(assert (= (and b!7757308 ((_ is Union!20651) (regTwo!41814 r1!3330))) b!7757420))

(declare-fun e!4598023 () Bool)

(assert (=> b!7757314 (= tp!2276940 e!4598023)))

(declare-fun b!7757424 () Bool)

(declare-fun tp!2276967 () Bool)

(declare-fun tp!2276964 () Bool)

(assert (=> b!7757424 (= e!4598023 (and tp!2276967 tp!2276964))))

(declare-fun b!7757422 () Bool)

(declare-fun tp!2276968 () Bool)

(declare-fun tp!2276965 () Bool)

(assert (=> b!7757422 (= e!4598023 (and tp!2276968 tp!2276965))))

(declare-fun b!7757421 () Bool)

(assert (=> b!7757421 (= e!4598023 tp_is_empty!51657)))

(declare-fun b!7757423 () Bool)

(declare-fun tp!2276966 () Bool)

(assert (=> b!7757423 (= e!4598023 tp!2276966)))

(assert (= (and b!7757314 ((_ is ElementMatch!20651) (regOne!41815 r2!3230))) b!7757421))

(assert (= (and b!7757314 ((_ is Concat!29496) (regOne!41815 r2!3230))) b!7757422))

(assert (= (and b!7757314 ((_ is Star!20651) (regOne!41815 r2!3230))) b!7757423))

(assert (= (and b!7757314 ((_ is Union!20651) (regOne!41815 r2!3230))) b!7757424))

(declare-fun e!4598024 () Bool)

(assert (=> b!7757314 (= tp!2276936 e!4598024)))

(declare-fun b!7757428 () Bool)

(declare-fun tp!2276972 () Bool)

(declare-fun tp!2276969 () Bool)

(assert (=> b!7757428 (= e!4598024 (and tp!2276972 tp!2276969))))

(declare-fun b!7757426 () Bool)

(declare-fun tp!2276973 () Bool)

(declare-fun tp!2276970 () Bool)

(assert (=> b!7757426 (= e!4598024 (and tp!2276973 tp!2276970))))

(declare-fun b!7757425 () Bool)

(assert (=> b!7757425 (= e!4598024 tp_is_empty!51657)))

(declare-fun b!7757427 () Bool)

(declare-fun tp!2276971 () Bool)

(assert (=> b!7757427 (= e!4598024 tp!2276971)))

(assert (= (and b!7757314 ((_ is ElementMatch!20651) (regTwo!41815 r2!3230))) b!7757425))

(assert (= (and b!7757314 ((_ is Concat!29496) (regTwo!41815 r2!3230))) b!7757426))

(assert (= (and b!7757314 ((_ is Star!20651) (regTwo!41815 r2!3230))) b!7757427))

(assert (= (and b!7757314 ((_ is Union!20651) (regTwo!41815 r2!3230))) b!7757428))

(declare-fun e!4598025 () Bool)

(assert (=> b!7757309 (= tp!2276937 e!4598025)))

(declare-fun b!7757432 () Bool)

(declare-fun tp!2276977 () Bool)

(declare-fun tp!2276974 () Bool)

(assert (=> b!7757432 (= e!4598025 (and tp!2276977 tp!2276974))))

(declare-fun b!7757430 () Bool)

(declare-fun tp!2276978 () Bool)

(declare-fun tp!2276975 () Bool)

(assert (=> b!7757430 (= e!4598025 (and tp!2276978 tp!2276975))))

(declare-fun b!7757429 () Bool)

(assert (=> b!7757429 (= e!4598025 tp_is_empty!51657)))

(declare-fun b!7757431 () Bool)

(declare-fun tp!2276976 () Bool)

(assert (=> b!7757431 (= e!4598025 tp!2276976)))

(assert (= (and b!7757309 ((_ is ElementMatch!20651) (regOne!41814 r2!3230))) b!7757429))

(assert (= (and b!7757309 ((_ is Concat!29496) (regOne!41814 r2!3230))) b!7757430))

(assert (= (and b!7757309 ((_ is Star!20651) (regOne!41814 r2!3230))) b!7757431))

(assert (= (and b!7757309 ((_ is Union!20651) (regOne!41814 r2!3230))) b!7757432))

(declare-fun e!4598026 () Bool)

(assert (=> b!7757309 (= tp!2276935 e!4598026)))

(declare-fun b!7757436 () Bool)

(declare-fun tp!2276982 () Bool)

(declare-fun tp!2276979 () Bool)

(assert (=> b!7757436 (= e!4598026 (and tp!2276982 tp!2276979))))

(declare-fun b!7757434 () Bool)

(declare-fun tp!2276983 () Bool)

(declare-fun tp!2276980 () Bool)

(assert (=> b!7757434 (= e!4598026 (and tp!2276983 tp!2276980))))

(declare-fun b!7757433 () Bool)

(assert (=> b!7757433 (= e!4598026 tp_is_empty!51657)))

(declare-fun b!7757435 () Bool)

(declare-fun tp!2276981 () Bool)

(assert (=> b!7757435 (= e!4598026 tp!2276981)))

(assert (= (and b!7757309 ((_ is ElementMatch!20651) (regTwo!41814 r2!3230))) b!7757433))

(assert (= (and b!7757309 ((_ is Concat!29496) (regTwo!41814 r2!3230))) b!7757434))

(assert (= (and b!7757309 ((_ is Star!20651) (regTwo!41814 r2!3230))) b!7757435))

(assert (= (and b!7757309 ((_ is Union!20651) (regTwo!41814 r2!3230))) b!7757436))

(declare-fun e!4598027 () Bool)

(assert (=> b!7757315 (= tp!2276938 e!4598027)))

(declare-fun b!7757440 () Bool)

(declare-fun tp!2276987 () Bool)

(declare-fun tp!2276984 () Bool)

(assert (=> b!7757440 (= e!4598027 (and tp!2276987 tp!2276984))))

(declare-fun b!7757438 () Bool)

(declare-fun tp!2276988 () Bool)

(declare-fun tp!2276985 () Bool)

(assert (=> b!7757438 (= e!4598027 (and tp!2276988 tp!2276985))))

(declare-fun b!7757437 () Bool)

(assert (=> b!7757437 (= e!4598027 tp_is_empty!51657)))

(declare-fun b!7757439 () Bool)

(declare-fun tp!2276986 () Bool)

(assert (=> b!7757439 (= e!4598027 tp!2276986)))

(assert (= (and b!7757315 ((_ is ElementMatch!20651) (reg!20980 r1!3330))) b!7757437))

(assert (= (and b!7757315 ((_ is Concat!29496) (reg!20980 r1!3330))) b!7757438))

(assert (= (and b!7757315 ((_ is Star!20651) (reg!20980 r1!3330))) b!7757439))

(assert (= (and b!7757315 ((_ is Union!20651) (reg!20980 r1!3330))) b!7757440))

(declare-fun b!7757445 () Bool)

(declare-fun e!4598030 () Bool)

(declare-fun tp!2276991 () Bool)

(assert (=> b!7757445 (= e!4598030 (and tp_is_empty!51657 tp!2276991))))

(assert (=> b!7757316 (= tp!2276933 e!4598030)))

(assert (= (and b!7757316 ((_ is Cons!73370) (t!388229 s!10216))) b!7757445))

(declare-fun e!4598031 () Bool)

(assert (=> b!7757306 (= tp!2276943 e!4598031)))

(declare-fun b!7757449 () Bool)

(declare-fun tp!2276995 () Bool)

(declare-fun tp!2276992 () Bool)

(assert (=> b!7757449 (= e!4598031 (and tp!2276995 tp!2276992))))

(declare-fun b!7757447 () Bool)

(declare-fun tp!2276996 () Bool)

(declare-fun tp!2276993 () Bool)

(assert (=> b!7757447 (= e!4598031 (and tp!2276996 tp!2276993))))

(declare-fun b!7757446 () Bool)

(assert (=> b!7757446 (= e!4598031 tp_is_empty!51657)))

(declare-fun b!7757448 () Bool)

(declare-fun tp!2276994 () Bool)

(assert (=> b!7757448 (= e!4598031 tp!2276994)))

(assert (= (and b!7757306 ((_ is ElementMatch!20651) (regOne!41815 r1!3330))) b!7757446))

(assert (= (and b!7757306 ((_ is Concat!29496) (regOne!41815 r1!3330))) b!7757447))

(assert (= (and b!7757306 ((_ is Star!20651) (regOne!41815 r1!3330))) b!7757448))

(assert (= (and b!7757306 ((_ is Union!20651) (regOne!41815 r1!3330))) b!7757449))

(declare-fun e!4598034 () Bool)

(assert (=> b!7757306 (= tp!2276934 e!4598034)))

(declare-fun b!7757453 () Bool)

(declare-fun tp!2277000 () Bool)

(declare-fun tp!2276997 () Bool)

(assert (=> b!7757453 (= e!4598034 (and tp!2277000 tp!2276997))))

(declare-fun b!7757451 () Bool)

(declare-fun tp!2277001 () Bool)

(declare-fun tp!2276998 () Bool)

(assert (=> b!7757451 (= e!4598034 (and tp!2277001 tp!2276998))))

(declare-fun b!7757450 () Bool)

(assert (=> b!7757450 (= e!4598034 tp_is_empty!51657)))

(declare-fun b!7757452 () Bool)

(declare-fun tp!2276999 () Bool)

(assert (=> b!7757452 (= e!4598034 tp!2276999)))

(assert (= (and b!7757306 ((_ is ElementMatch!20651) (regTwo!41815 r1!3330))) b!7757450))

(assert (= (and b!7757306 ((_ is Concat!29496) (regTwo!41815 r1!3330))) b!7757451))

(assert (= (and b!7757306 ((_ is Star!20651) (regTwo!41815 r1!3330))) b!7757452))

(assert (= (and b!7757306 ((_ is Union!20651) (regTwo!41815 r1!3330))) b!7757453))

(declare-fun e!4598037 () Bool)

(assert (=> b!7757307 (= tp!2276942 e!4598037)))

(declare-fun b!7757461 () Bool)

(declare-fun tp!2277005 () Bool)

(declare-fun tp!2277002 () Bool)

(assert (=> b!7757461 (= e!4598037 (and tp!2277005 tp!2277002))))

(declare-fun b!7757459 () Bool)

(declare-fun tp!2277006 () Bool)

(declare-fun tp!2277003 () Bool)

(assert (=> b!7757459 (= e!4598037 (and tp!2277006 tp!2277003))))

(declare-fun b!7757458 () Bool)

(assert (=> b!7757458 (= e!4598037 tp_is_empty!51657)))

(declare-fun b!7757460 () Bool)

(declare-fun tp!2277004 () Bool)

(assert (=> b!7757460 (= e!4598037 tp!2277004)))

(assert (= (and b!7757307 ((_ is ElementMatch!20651) (reg!20980 r2!3230))) b!7757458))

(assert (= (and b!7757307 ((_ is Concat!29496) (reg!20980 r2!3230))) b!7757459))

(assert (= (and b!7757307 ((_ is Star!20651) (reg!20980 r2!3230))) b!7757460))

(assert (= (and b!7757307 ((_ is Union!20651) (reg!20980 r2!3230))) b!7757461))

(check-sat (not b!7757384) (not bm!719028) (not d!2343407) (not d!2343411) (not b!7757451) (not b!7757460) (not b!7757422) (not bm!719026) (not b!7757459) (not b!7757431) tp_is_empty!51657 (not b!7757426) (not bm!719031) (not b!7757432) (not b!7757449) (not b!7757445) (not b!7757453) (not b!7757420) (not b!7757366) (not b!7757428) (not b!7757447) (not b!7757423) (not b!7757382) (not b!7757414) (not b!7757427) (not b!7757448) (not b!7757452) (not b!7757436) (not bm!719029) (not b!7757368) (not b!7757439) (not b!7757381) (not b!7757438) (not b!7757440) (not b!7757416) (not b!7757435) (not b!7757430) (not b!7757461) (not b!7757336) (not b!7757415) (not b!7757418) (not b!7757424) (not b!7757365) (not b!7757364) (not b!7757371) (not b!7757363) (not b!7757419) (not d!2343405) (not b!7757434))
(check-sat)
