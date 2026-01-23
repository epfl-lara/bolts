; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!737574 () Bool)

(assert start!737574)

(declare-fun b!7720165 () Bool)

(assert (=> b!7720165 true))

(assert (=> b!7720165 true))

(declare-fun b!7720158 () Bool)

(declare-fun e!4579337 () Bool)

(declare-fun tp_is_empty!51455 () Bool)

(assert (=> b!7720158 (= e!4579337 tp_is_empty!51455)))

(declare-fun b!7720159 () Bool)

(declare-fun tp!2264923 () Bool)

(assert (=> b!7720159 (= e!4579337 tp!2264923)))

(declare-fun b!7720160 () Bool)

(declare-fun e!4579338 () Bool)

(declare-datatypes ((C!41426 0))(
  ( (C!41427 (val!31153 Int)) )
))
(declare-datatypes ((Regex!20550 0))(
  ( (ElementMatch!20550 (c!1422983 C!41426)) (Concat!29395 (regOne!41612 Regex!20550) (regTwo!41612 Regex!20550)) (EmptyExpr!20550) (Star!20550 (reg!20879 Regex!20550)) (EmptyLang!20550) (Union!20550 (regOne!41613 Regex!20550) (regTwo!41613 Regex!20550)) )
))
(declare-fun r!14126 () Regex!20550)

(declare-fun validRegex!10968 (Regex!20550) Bool)

(assert (=> b!7720160 (= e!4579338 (validRegex!10968 (regTwo!41612 r!14126)))))

(declare-fun b!7720161 () Bool)

(declare-fun res!3080582 () Bool)

(assert (=> b!7720161 (=> res!3080582 e!4579338)))

(assert (=> b!7720161 (= res!3080582 (not (validRegex!10968 (regOne!41612 r!14126))))))

(declare-fun b!7720162 () Bool)

(declare-fun tp!2264922 () Bool)

(declare-fun tp!2264926 () Bool)

(assert (=> b!7720162 (= e!4579337 (and tp!2264922 tp!2264926))))

(declare-fun b!7720164 () Bool)

(declare-fun tp!2264924 () Bool)

(declare-fun tp!2264925 () Bool)

(assert (=> b!7720164 (= e!4579337 (and tp!2264924 tp!2264925))))

(declare-fun e!4579339 () Bool)

(assert (=> b!7720165 (= e!4579339 (not e!4579338))))

(declare-fun res!3080581 () Bool)

(assert (=> b!7720165 (=> res!3080581 e!4579338)))

(declare-datatypes ((List!73397 0))(
  ( (Nil!73273) (Cons!73273 (h!79721 C!41426) (t!388132 List!73397)) )
))
(declare-fun s!9605 () List!73397)

(declare-fun matchR!10042 (Regex!20550 List!73397) Bool)

(assert (=> b!7720165 (= res!3080581 (not (matchR!10042 r!14126 s!9605)))))

(declare-fun lambda!471090 () Int)

(declare-datatypes ((tuple2!69554 0))(
  ( (tuple2!69555 (_1!38080 List!73397) (_2!38080 List!73397)) )
))
(declare-datatypes ((Option!17571 0))(
  ( (None!17570) (Some!17570 (v!54705 tuple2!69554)) )
))
(declare-fun isDefined!14187 (Option!17571) Bool)

(declare-fun findConcatSeparation!3601 (Regex!20550 Regex!20550 List!73397 List!73397 List!73397) Option!17571)

(declare-fun Exists!4671 (Int) Bool)

(assert (=> b!7720165 (= (isDefined!14187 (findConcatSeparation!3601 (regOne!41612 r!14126) (regTwo!41612 r!14126) Nil!73273 s!9605 s!9605)) (Exists!4671 lambda!471090))))

(declare-datatypes ((Unit!168172 0))(
  ( (Unit!168173) )
))
(declare-fun lt!2666239 () Unit!168172)

(declare-fun lemmaFindConcatSeparationEquivalentToExists!3359 (Regex!20550 Regex!20550 List!73397) Unit!168172)

(assert (=> b!7720165 (= lt!2666239 (lemmaFindConcatSeparationEquivalentToExists!3359 (regOne!41612 r!14126) (regTwo!41612 r!14126) s!9605))))

(declare-fun b!7720166 () Bool)

(declare-fun res!3080584 () Bool)

(assert (=> b!7720166 (=> (not res!3080584) (not e!4579339))))

(assert (=> b!7720166 (= res!3080584 (and (not (is-EmptyExpr!20550 r!14126)) (not (is-EmptyLang!20550 r!14126)) (not (is-ElementMatch!20550 r!14126)) (not (is-Union!20550 r!14126)) (not (is-Star!20550 r!14126))))))

(declare-fun b!7720163 () Bool)

(declare-fun e!4579336 () Bool)

(declare-fun tp!2264927 () Bool)

(assert (=> b!7720163 (= e!4579336 (and tp_is_empty!51455 tp!2264927))))

(declare-fun res!3080583 () Bool)

(assert (=> start!737574 (=> (not res!3080583) (not e!4579339))))

(assert (=> start!737574 (= res!3080583 (validRegex!10968 r!14126))))

(assert (=> start!737574 e!4579339))

(assert (=> start!737574 e!4579337))

(assert (=> start!737574 e!4579336))

(assert (= (and start!737574 res!3080583) b!7720166))

(assert (= (and b!7720166 res!3080584) b!7720165))

(assert (= (and b!7720165 (not res!3080581)) b!7720161))

(assert (= (and b!7720161 (not res!3080582)) b!7720160))

(assert (= (and start!737574 (is-ElementMatch!20550 r!14126)) b!7720158))

(assert (= (and start!737574 (is-Concat!29395 r!14126)) b!7720164))

(assert (= (and start!737574 (is-Star!20550 r!14126)) b!7720159))

(assert (= (and start!737574 (is-Union!20550 r!14126)) b!7720162))

(assert (= (and start!737574 (is-Cons!73273 s!9605)) b!7720163))

(declare-fun m!8199710 () Bool)

(assert (=> b!7720160 m!8199710))

(declare-fun m!8199712 () Bool)

(assert (=> b!7720161 m!8199712))

(declare-fun m!8199714 () Bool)

(assert (=> b!7720165 m!8199714))

(declare-fun m!8199716 () Bool)

(assert (=> b!7720165 m!8199716))

(declare-fun m!8199718 () Bool)

(assert (=> b!7720165 m!8199718))

(assert (=> b!7720165 m!8199716))

(declare-fun m!8199720 () Bool)

(assert (=> b!7720165 m!8199720))

(declare-fun m!8199722 () Bool)

(assert (=> b!7720165 m!8199722))

(declare-fun m!8199724 () Bool)

(assert (=> start!737574 m!8199724))

(push 1)

(assert (not b!7720165))

(assert tp_is_empty!51455)

(assert (not b!7720160))

(assert (not b!7720159))

(assert (not b!7720163))

(assert (not b!7720164))

(assert (not start!737574))

(assert (not b!7720162))

(assert (not b!7720161))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!2337539 () Bool)

(declare-fun res!3080614 () Bool)

(declare-fun e!4579369 () Bool)

(assert (=> d!2337539 (=> res!3080614 e!4579369)))

(assert (=> d!2337539 (= res!3080614 (is-ElementMatch!20550 r!14126))))

(assert (=> d!2337539 (= (validRegex!10968 r!14126) e!4579369)))

(declare-fun bm!713524 () Bool)

(declare-fun call!713531 () Bool)

(declare-fun c!1422989 () Bool)

(assert (=> bm!713524 (= call!713531 (validRegex!10968 (ite c!1422989 (regTwo!41613 r!14126) (regTwo!41612 r!14126))))))

(declare-fun b!7720224 () Bool)

(declare-fun e!4579374 () Bool)

(assert (=> b!7720224 (= e!4579374 call!713531)))

(declare-fun b!7720225 () Bool)

(declare-fun e!4579372 () Bool)

(declare-fun e!4579371 () Bool)

(assert (=> b!7720225 (= e!4579372 e!4579371)))

(declare-fun res!3080615 () Bool)

(assert (=> b!7720225 (=> (not res!3080615) (not e!4579371))))

(declare-fun call!713529 () Bool)

(assert (=> b!7720225 (= res!3080615 call!713529)))

(declare-fun b!7720226 () Bool)

(declare-fun e!4579370 () Bool)

(declare-fun call!713530 () Bool)

(assert (=> b!7720226 (= e!4579370 call!713530)))

(declare-fun b!7720227 () Bool)

(declare-fun res!3080612 () Bool)

(assert (=> b!7720227 (=> (not res!3080612) (not e!4579374))))

(assert (=> b!7720227 (= res!3080612 call!713529)))

(declare-fun e!4579368 () Bool)

(assert (=> b!7720227 (= e!4579368 e!4579374)))

(declare-fun b!7720228 () Bool)

(declare-fun e!4579373 () Bool)

(assert (=> b!7720228 (= e!4579373 e!4579368)))

(assert (=> b!7720228 (= c!1422989 (is-Union!20550 r!14126))))

(declare-fun b!7720229 () Bool)

(declare-fun res!3080613 () Bool)

(assert (=> b!7720229 (=> res!3080613 e!4579372)))

(assert (=> b!7720229 (= res!3080613 (not (is-Concat!29395 r!14126)))))

(assert (=> b!7720229 (= e!4579368 e!4579372)))

(declare-fun b!7720230 () Bool)

(assert (=> b!7720230 (= e!4579369 e!4579373)))

(declare-fun c!1422990 () Bool)

(assert (=> b!7720230 (= c!1422990 (is-Star!20550 r!14126))))

(declare-fun bm!713525 () Bool)

(assert (=> bm!713525 (= call!713530 (validRegex!10968 (ite c!1422990 (reg!20879 r!14126) (ite c!1422989 (regOne!41613 r!14126) (regOne!41612 r!14126)))))))

(declare-fun b!7720231 () Bool)

(assert (=> b!7720231 (= e!4579371 call!713531)))

(declare-fun b!7720232 () Bool)

(assert (=> b!7720232 (= e!4579373 e!4579370)))

(declare-fun res!3080611 () Bool)

(declare-fun nullable!9027 (Regex!20550) Bool)

(assert (=> b!7720232 (= res!3080611 (not (nullable!9027 (reg!20879 r!14126))))))

(assert (=> b!7720232 (=> (not res!3080611) (not e!4579370))))

(declare-fun bm!713526 () Bool)

(assert (=> bm!713526 (= call!713529 call!713530)))

(assert (= (and d!2337539 (not res!3080614)) b!7720230))

(assert (= (and b!7720230 c!1422990) b!7720232))

(assert (= (and b!7720230 (not c!1422990)) b!7720228))

(assert (= (and b!7720232 res!3080611) b!7720226))

(assert (= (and b!7720228 c!1422989) b!7720227))

(assert (= (and b!7720228 (not c!1422989)) b!7720229))

(assert (= (and b!7720227 res!3080612) b!7720224))

(assert (= (and b!7720229 (not res!3080613)) b!7720225))

(assert (= (and b!7720225 res!3080615) b!7720231))

(assert (= (or b!7720227 b!7720225) bm!713526))

(assert (= (or b!7720224 b!7720231) bm!713524))

(assert (= (or b!7720226 bm!713526) bm!713525))

(declare-fun m!8199742 () Bool)

(assert (=> bm!713524 m!8199742))

(declare-fun m!8199744 () Bool)

(assert (=> bm!713525 m!8199744))

(declare-fun m!8199746 () Bool)

(assert (=> b!7720232 m!8199746))

(assert (=> start!737574 d!2337539))

(declare-fun d!2337543 () Bool)

(declare-fun res!3080619 () Bool)

(declare-fun e!4579376 () Bool)

(assert (=> d!2337543 (=> res!3080619 e!4579376)))

(assert (=> d!2337543 (= res!3080619 (is-ElementMatch!20550 (regTwo!41612 r!14126)))))

(assert (=> d!2337543 (= (validRegex!10968 (regTwo!41612 r!14126)) e!4579376)))

(declare-fun bm!713527 () Bool)

(declare-fun call!713534 () Bool)

(declare-fun c!1422991 () Bool)

(assert (=> bm!713527 (= call!713534 (validRegex!10968 (ite c!1422991 (regTwo!41613 (regTwo!41612 r!14126)) (regTwo!41612 (regTwo!41612 r!14126)))))))

(declare-fun b!7720233 () Bool)

(declare-fun e!4579381 () Bool)

(assert (=> b!7720233 (= e!4579381 call!713534)))

(declare-fun b!7720234 () Bool)

(declare-fun e!4579379 () Bool)

(declare-fun e!4579378 () Bool)

(assert (=> b!7720234 (= e!4579379 e!4579378)))

(declare-fun res!3080620 () Bool)

(assert (=> b!7720234 (=> (not res!3080620) (not e!4579378))))

(declare-fun call!713532 () Bool)

(assert (=> b!7720234 (= res!3080620 call!713532)))

(declare-fun b!7720235 () Bool)

(declare-fun e!4579377 () Bool)

(declare-fun call!713533 () Bool)

(assert (=> b!7720235 (= e!4579377 call!713533)))

(declare-fun b!7720236 () Bool)

(declare-fun res!3080617 () Bool)

(assert (=> b!7720236 (=> (not res!3080617) (not e!4579381))))

(assert (=> b!7720236 (= res!3080617 call!713532)))

(declare-fun e!4579375 () Bool)

(assert (=> b!7720236 (= e!4579375 e!4579381)))

(declare-fun b!7720237 () Bool)

(declare-fun e!4579380 () Bool)

(assert (=> b!7720237 (= e!4579380 e!4579375)))

(assert (=> b!7720237 (= c!1422991 (is-Union!20550 (regTwo!41612 r!14126)))))

(declare-fun b!7720238 () Bool)

(declare-fun res!3080618 () Bool)

(assert (=> b!7720238 (=> res!3080618 e!4579379)))

(assert (=> b!7720238 (= res!3080618 (not (is-Concat!29395 (regTwo!41612 r!14126))))))

(assert (=> b!7720238 (= e!4579375 e!4579379)))

(declare-fun b!7720239 () Bool)

(assert (=> b!7720239 (= e!4579376 e!4579380)))

(declare-fun c!1422992 () Bool)

(assert (=> b!7720239 (= c!1422992 (is-Star!20550 (regTwo!41612 r!14126)))))

(declare-fun bm!713528 () Bool)

(assert (=> bm!713528 (= call!713533 (validRegex!10968 (ite c!1422992 (reg!20879 (regTwo!41612 r!14126)) (ite c!1422991 (regOne!41613 (regTwo!41612 r!14126)) (regOne!41612 (regTwo!41612 r!14126))))))))

(declare-fun b!7720240 () Bool)

(assert (=> b!7720240 (= e!4579378 call!713534)))

(declare-fun b!7720241 () Bool)

(assert (=> b!7720241 (= e!4579380 e!4579377)))

(declare-fun res!3080616 () Bool)

(assert (=> b!7720241 (= res!3080616 (not (nullable!9027 (reg!20879 (regTwo!41612 r!14126)))))))

(assert (=> b!7720241 (=> (not res!3080616) (not e!4579377))))

(declare-fun bm!713529 () Bool)

(assert (=> bm!713529 (= call!713532 call!713533)))

(assert (= (and d!2337543 (not res!3080619)) b!7720239))

(assert (= (and b!7720239 c!1422992) b!7720241))

(assert (= (and b!7720239 (not c!1422992)) b!7720237))

(assert (= (and b!7720241 res!3080616) b!7720235))

(assert (= (and b!7720237 c!1422991) b!7720236))

(assert (= (and b!7720237 (not c!1422991)) b!7720238))

(assert (= (and b!7720236 res!3080617) b!7720233))

(assert (= (and b!7720238 (not res!3080618)) b!7720234))

(assert (= (and b!7720234 res!3080620) b!7720240))

(assert (= (or b!7720236 b!7720234) bm!713529))

(assert (= (or b!7720233 b!7720240) bm!713527))

(assert (= (or b!7720235 bm!713529) bm!713528))

(declare-fun m!8199748 () Bool)

(assert (=> bm!713527 m!8199748))

(declare-fun m!8199750 () Bool)

(assert (=> bm!713528 m!8199750))

(declare-fun m!8199752 () Bool)

(assert (=> b!7720241 m!8199752))

(assert (=> b!7720160 d!2337543))

(declare-fun b!7720298 () Bool)

(declare-fun e!4579412 () Bool)

(assert (=> b!7720298 (= e!4579412 (nullable!9027 r!14126))))

(declare-fun b!7720299 () Bool)

(declare-fun derivativeStep!5987 (Regex!20550 C!41426) Regex!20550)

(declare-fun head!15787 (List!73397) C!41426)

(declare-fun tail!15327 (List!73397) List!73397)

(assert (=> b!7720299 (= e!4579412 (matchR!10042 (derivativeStep!5987 r!14126 (head!15787 s!9605)) (tail!15327 s!9605)))))

(declare-fun b!7720300 () Bool)

(declare-fun e!4579413 () Bool)

(assert (=> b!7720300 (= e!4579413 (= (head!15787 s!9605) (c!1422983 r!14126)))))

(declare-fun b!7720302 () Bool)

(declare-fun e!4579415 () Bool)

(declare-fun e!4579410 () Bool)

(assert (=> b!7720302 (= e!4579415 e!4579410)))

(declare-fun c!1423006 () Bool)

(assert (=> b!7720302 (= c!1423006 (is-EmptyLang!20550 r!14126))))

(declare-fun b!7720303 () Bool)

(declare-fun res!3080656 () Bool)

(declare-fun e!4579416 () Bool)

(assert (=> b!7720303 (=> res!3080656 e!4579416)))

(declare-fun isEmpty!41938 (List!73397) Bool)

(assert (=> b!7720303 (= res!3080656 (not (isEmpty!41938 (tail!15327 s!9605))))))

(declare-fun b!7720304 () Bool)

(declare-fun e!4579414 () Bool)

(declare-fun e!4579411 () Bool)

(assert (=> b!7720304 (= e!4579414 e!4579411)))

(declare-fun res!3080655 () Bool)

(assert (=> b!7720304 (=> (not res!3080655) (not e!4579411))))

(declare-fun lt!2666247 () Bool)

(assert (=> b!7720304 (= res!3080655 (not lt!2666247))))

(declare-fun b!7720305 () Bool)

(declare-fun res!3080653 () Bool)

(assert (=> b!7720305 (=> (not res!3080653) (not e!4579413))))

(assert (=> b!7720305 (= res!3080653 (isEmpty!41938 (tail!15327 s!9605)))))

(declare-fun b!7720306 () Bool)

(declare-fun res!3080660 () Bool)

(assert (=> b!7720306 (=> res!3080660 e!4579414)))

(assert (=> b!7720306 (= res!3080660 (not (is-ElementMatch!20550 r!14126)))))

(assert (=> b!7720306 (= e!4579410 e!4579414)))

(declare-fun bm!713534 () Bool)

(declare-fun call!713539 () Bool)

(assert (=> bm!713534 (= call!713539 (isEmpty!41938 s!9605))))

(declare-fun b!7720307 () Bool)

(declare-fun res!3080658 () Bool)

(assert (=> b!7720307 (=> (not res!3080658) (not e!4579413))))

(assert (=> b!7720307 (= res!3080658 (not call!713539))))

(declare-fun b!7720301 () Bool)

(assert (=> b!7720301 (= e!4579410 (not lt!2666247))))

(declare-fun d!2337545 () Bool)

(assert (=> d!2337545 e!4579415))

(declare-fun c!1423005 () Bool)

(assert (=> d!2337545 (= c!1423005 (is-EmptyExpr!20550 r!14126))))

(assert (=> d!2337545 (= lt!2666247 e!4579412)))

(declare-fun c!1423007 () Bool)

(assert (=> d!2337545 (= c!1423007 (isEmpty!41938 s!9605))))

(assert (=> d!2337545 (validRegex!10968 r!14126)))

(assert (=> d!2337545 (= (matchR!10042 r!14126 s!9605) lt!2666247)))

(declare-fun b!7720308 () Bool)

(assert (=> b!7720308 (= e!4579416 (not (= (head!15787 s!9605) (c!1422983 r!14126))))))

(declare-fun b!7720309 () Bool)

(declare-fun res!3080654 () Bool)

(assert (=> b!7720309 (=> res!3080654 e!4579414)))

(assert (=> b!7720309 (= res!3080654 e!4579413)))

(declare-fun res!3080657 () Bool)

(assert (=> b!7720309 (=> (not res!3080657) (not e!4579413))))

(assert (=> b!7720309 (= res!3080657 lt!2666247)))

(declare-fun b!7720310 () Bool)

(assert (=> b!7720310 (= e!4579411 e!4579416)))

(declare-fun res!3080659 () Bool)

(assert (=> b!7720310 (=> res!3080659 e!4579416)))

(assert (=> b!7720310 (= res!3080659 call!713539)))

(declare-fun b!7720311 () Bool)

(assert (=> b!7720311 (= e!4579415 (= lt!2666247 call!713539))))

(assert (= (and d!2337545 c!1423007) b!7720298))

(assert (= (and d!2337545 (not c!1423007)) b!7720299))

(assert (= (and d!2337545 c!1423005) b!7720311))

(assert (= (and d!2337545 (not c!1423005)) b!7720302))

(assert (= (and b!7720302 c!1423006) b!7720301))

(assert (= (and b!7720302 (not c!1423006)) b!7720306))

(assert (= (and b!7720306 (not res!3080660)) b!7720309))

(assert (= (and b!7720309 res!3080657) b!7720307))

(assert (= (and b!7720307 res!3080658) b!7720305))

(assert (= (and b!7720305 res!3080653) b!7720300))

(assert (= (and b!7720309 (not res!3080654)) b!7720304))

(assert (= (and b!7720304 res!3080655) b!7720310))

(assert (= (and b!7720310 (not res!3080659)) b!7720303))

(assert (= (and b!7720303 (not res!3080656)) b!7720308))

(assert (= (or b!7720311 b!7720310 b!7720307) bm!713534))

(declare-fun m!8199754 () Bool)

(assert (=> b!7720299 m!8199754))

(assert (=> b!7720299 m!8199754))

(declare-fun m!8199756 () Bool)

(assert (=> b!7720299 m!8199756))

(declare-fun m!8199758 () Bool)

(assert (=> b!7720299 m!8199758))

(assert (=> b!7720299 m!8199756))

(assert (=> b!7720299 m!8199758))

(declare-fun m!8199760 () Bool)

(assert (=> b!7720299 m!8199760))

(assert (=> b!7720303 m!8199758))

(assert (=> b!7720303 m!8199758))

(declare-fun m!8199762 () Bool)

(assert (=> b!7720303 m!8199762))

(declare-fun m!8199764 () Bool)

(assert (=> b!7720298 m!8199764))

(assert (=> b!7720308 m!8199754))

(declare-fun m!8199766 () Bool)

(assert (=> d!2337545 m!8199766))

(assert (=> d!2337545 m!8199724))

(assert (=> b!7720305 m!8199758))

(assert (=> b!7720305 m!8199758))

(assert (=> b!7720305 m!8199762))

(assert (=> b!7720300 m!8199754))

(assert (=> bm!713534 m!8199766))

(assert (=> b!7720165 d!2337545))

(declare-fun bs!1963023 () Bool)

(declare-fun d!2337547 () Bool)

(assert (= bs!1963023 (and d!2337547 b!7720165)))

(declare-fun lambda!471096 () Int)

(assert (=> bs!1963023 (= lambda!471096 lambda!471090)))

(assert (=> d!2337547 true))

(assert (=> d!2337547 true))

(assert (=> d!2337547 true))

(assert (=> d!2337547 (= (isDefined!14187 (findConcatSeparation!3601 (regOne!41612 r!14126) (regTwo!41612 r!14126) Nil!73273 s!9605 s!9605)) (Exists!4671 lambda!471096))))

(declare-fun lt!2666251 () Unit!168172)

(declare-fun choose!59260 (Regex!20550 Regex!20550 List!73397) Unit!168172)

(assert (=> d!2337547 (= lt!2666251 (choose!59260 (regOne!41612 r!14126) (regTwo!41612 r!14126) s!9605))))

(assert (=> d!2337547 (validRegex!10968 (regOne!41612 r!14126))))

(assert (=> d!2337547 (= (lemmaFindConcatSeparationEquivalentToExists!3359 (regOne!41612 r!14126) (regTwo!41612 r!14126) s!9605) lt!2666251)))

(declare-fun bs!1963024 () Bool)

(assert (= bs!1963024 d!2337547))

(declare-fun m!8199782 () Bool)

(assert (=> bs!1963024 m!8199782))

(assert (=> bs!1963024 m!8199716))

(assert (=> bs!1963024 m!8199720))

(assert (=> bs!1963024 m!8199716))

(assert (=> bs!1963024 m!8199712))

(declare-fun m!8199784 () Bool)

(assert (=> bs!1963024 m!8199784))

(assert (=> b!7720165 d!2337547))

(declare-fun d!2337551 () Bool)

(declare-fun isEmpty!41939 (Option!17571) Bool)

(assert (=> d!2337551 (= (isDefined!14187 (findConcatSeparation!3601 (regOne!41612 r!14126) (regTwo!41612 r!14126) Nil!73273 s!9605 s!9605)) (not (isEmpty!41939 (findConcatSeparation!3601 (regOne!41612 r!14126) (regTwo!41612 r!14126) Nil!73273 s!9605 s!9605))))))

(declare-fun bs!1963025 () Bool)

(assert (= bs!1963025 d!2337551))

(assert (=> bs!1963025 m!8199716))

(declare-fun m!8199786 () Bool)

(assert (=> bs!1963025 m!8199786))

(assert (=> b!7720165 d!2337551))

(declare-fun b!7720352 () Bool)

(declare-fun e!4579441 () Bool)

(declare-fun lt!2666261 () Option!17571)

(declare-fun ++!17753 (List!73397 List!73397) List!73397)

(declare-fun get!26018 (Option!17571) tuple2!69554)

(assert (=> b!7720352 (= e!4579441 (= (++!17753 (_1!38080 (get!26018 lt!2666261)) (_2!38080 (get!26018 lt!2666261))) s!9605))))

(declare-fun b!7720353 () Bool)

(declare-fun e!4579442 () Option!17571)

(assert (=> b!7720353 (= e!4579442 (Some!17570 (tuple2!69555 Nil!73273 s!9605)))))

(declare-fun b!7720354 () Bool)

(declare-fun e!4579438 () Bool)

(assert (=> b!7720354 (= e!4579438 (not (isDefined!14187 lt!2666261)))))

(declare-fun b!7720355 () Bool)

(declare-fun res!3080691 () Bool)

(assert (=> b!7720355 (=> (not res!3080691) (not e!4579441))))

(assert (=> b!7720355 (= res!3080691 (matchR!10042 (regOne!41612 r!14126) (_1!38080 (get!26018 lt!2666261))))))

(declare-fun b!7720356 () Bool)

(declare-fun res!3080687 () Bool)

(assert (=> b!7720356 (=> (not res!3080687) (not e!4579441))))

(assert (=> b!7720356 (= res!3080687 (matchR!10042 (regTwo!41612 r!14126) (_2!38080 (get!26018 lt!2666261))))))

(declare-fun b!7720357 () Bool)

(declare-fun e!4579440 () Option!17571)

(assert (=> b!7720357 (= e!4579440 None!17570)))

(declare-fun b!7720358 () Bool)

(declare-fun lt!2666262 () Unit!168172)

(declare-fun lt!2666260 () Unit!168172)

(assert (=> b!7720358 (= lt!2666262 lt!2666260)))

(assert (=> b!7720358 (= (++!17753 (++!17753 Nil!73273 (Cons!73273 (h!79721 s!9605) Nil!73273)) (t!388132 s!9605)) s!9605)))

(declare-fun lemmaMoveElementToOtherListKeepsConcatEq!3304 (List!73397 C!41426 List!73397 List!73397) Unit!168172)

(assert (=> b!7720358 (= lt!2666260 (lemmaMoveElementToOtherListKeepsConcatEq!3304 Nil!73273 (h!79721 s!9605) (t!388132 s!9605) s!9605))))

(assert (=> b!7720358 (= e!4579440 (findConcatSeparation!3601 (regOne!41612 r!14126) (regTwo!41612 r!14126) (++!17753 Nil!73273 (Cons!73273 (h!79721 s!9605) Nil!73273)) (t!388132 s!9605) s!9605))))

(declare-fun b!7720359 () Bool)

(assert (=> b!7720359 (= e!4579442 e!4579440)))

(declare-fun c!1423015 () Bool)

(assert (=> b!7720359 (= c!1423015 (is-Nil!73273 s!9605))))

(declare-fun b!7720360 () Bool)

(declare-fun e!4579439 () Bool)

(assert (=> b!7720360 (= e!4579439 (matchR!10042 (regTwo!41612 r!14126) s!9605))))

(declare-fun d!2337553 () Bool)

(assert (=> d!2337553 e!4579438))

(declare-fun res!3080689 () Bool)

(assert (=> d!2337553 (=> res!3080689 e!4579438)))

(assert (=> d!2337553 (= res!3080689 e!4579441)))

(declare-fun res!3080690 () Bool)

(assert (=> d!2337553 (=> (not res!3080690) (not e!4579441))))

(assert (=> d!2337553 (= res!3080690 (isDefined!14187 lt!2666261))))

(assert (=> d!2337553 (= lt!2666261 e!4579442)))

(declare-fun c!1423016 () Bool)

(assert (=> d!2337553 (= c!1423016 e!4579439)))

(declare-fun res!3080688 () Bool)

(assert (=> d!2337553 (=> (not res!3080688) (not e!4579439))))

(assert (=> d!2337553 (= res!3080688 (matchR!10042 (regOne!41612 r!14126) Nil!73273))))

(assert (=> d!2337553 (validRegex!10968 (regOne!41612 r!14126))))

(assert (=> d!2337553 (= (findConcatSeparation!3601 (regOne!41612 r!14126) (regTwo!41612 r!14126) Nil!73273 s!9605 s!9605) lt!2666261)))

(assert (= (and d!2337553 res!3080688) b!7720360))

(assert (= (and d!2337553 c!1423016) b!7720353))

(assert (= (and d!2337553 (not c!1423016)) b!7720359))

(assert (= (and b!7720359 c!1423015) b!7720357))

(assert (= (and b!7720359 (not c!1423015)) b!7720358))

(assert (= (and d!2337553 res!3080690) b!7720355))

(assert (= (and b!7720355 res!3080691) b!7720356))

(assert (= (and b!7720356 res!3080687) b!7720352))

(assert (= (and d!2337553 (not res!3080689)) b!7720354))

(declare-fun m!8199788 () Bool)

(assert (=> b!7720360 m!8199788))

(declare-fun m!8199790 () Bool)

(assert (=> b!7720352 m!8199790))

(declare-fun m!8199792 () Bool)

(assert (=> b!7720352 m!8199792))

(declare-fun m!8199794 () Bool)

(assert (=> b!7720358 m!8199794))

(assert (=> b!7720358 m!8199794))

(declare-fun m!8199796 () Bool)

(assert (=> b!7720358 m!8199796))

(declare-fun m!8199798 () Bool)

(assert (=> b!7720358 m!8199798))

(assert (=> b!7720358 m!8199794))

(declare-fun m!8199800 () Bool)

(assert (=> b!7720358 m!8199800))

(assert (=> b!7720355 m!8199790))

(declare-fun m!8199802 () Bool)

(assert (=> b!7720355 m!8199802))

(assert (=> b!7720356 m!8199790))

(declare-fun m!8199804 () Bool)

(assert (=> b!7720356 m!8199804))

(declare-fun m!8199806 () Bool)

(assert (=> d!2337553 m!8199806))

(declare-fun m!8199808 () Bool)

(assert (=> d!2337553 m!8199808))

(assert (=> d!2337553 m!8199712))

(assert (=> b!7720354 m!8199806))

(assert (=> b!7720165 d!2337553))

(declare-fun d!2337555 () Bool)

(declare-fun choose!59261 (Int) Bool)

(assert (=> d!2337555 (= (Exists!4671 lambda!471090) (choose!59261 lambda!471090))))

(declare-fun bs!1963026 () Bool)

(assert (= bs!1963026 d!2337555))

(declare-fun m!8199810 () Bool)

(assert (=> bs!1963026 m!8199810))

(assert (=> b!7720165 d!2337555))

(declare-fun d!2337557 () Bool)

(declare-fun res!3080695 () Bool)

(declare-fun e!4579444 () Bool)

(assert (=> d!2337557 (=> res!3080695 e!4579444)))

(assert (=> d!2337557 (= res!3080695 (is-ElementMatch!20550 (regOne!41612 r!14126)))))

(assert (=> d!2337557 (= (validRegex!10968 (regOne!41612 r!14126)) e!4579444)))

(declare-fun bm!713536 () Bool)

(declare-fun call!713543 () Bool)

(declare-fun c!1423017 () Bool)

(assert (=> bm!713536 (= call!713543 (validRegex!10968 (ite c!1423017 (regTwo!41613 (regOne!41612 r!14126)) (regTwo!41612 (regOne!41612 r!14126)))))))

(declare-fun b!7720361 () Bool)

(declare-fun e!4579449 () Bool)

(assert (=> b!7720361 (= e!4579449 call!713543)))

(declare-fun b!7720362 () Bool)

(declare-fun e!4579447 () Bool)

(declare-fun e!4579446 () Bool)

(assert (=> b!7720362 (= e!4579447 e!4579446)))

(declare-fun res!3080696 () Bool)

(assert (=> b!7720362 (=> (not res!3080696) (not e!4579446))))

(declare-fun call!713541 () Bool)

(assert (=> b!7720362 (= res!3080696 call!713541)))

(declare-fun b!7720363 () Bool)

(declare-fun e!4579445 () Bool)

(declare-fun call!713542 () Bool)

(assert (=> b!7720363 (= e!4579445 call!713542)))

(declare-fun b!7720364 () Bool)

(declare-fun res!3080693 () Bool)

(assert (=> b!7720364 (=> (not res!3080693) (not e!4579449))))

(assert (=> b!7720364 (= res!3080693 call!713541)))

(declare-fun e!4579443 () Bool)

(assert (=> b!7720364 (= e!4579443 e!4579449)))

(declare-fun b!7720365 () Bool)

(declare-fun e!4579448 () Bool)

(assert (=> b!7720365 (= e!4579448 e!4579443)))

(assert (=> b!7720365 (= c!1423017 (is-Union!20550 (regOne!41612 r!14126)))))

(declare-fun b!7720366 () Bool)

(declare-fun res!3080694 () Bool)

(assert (=> b!7720366 (=> res!3080694 e!4579447)))

(assert (=> b!7720366 (= res!3080694 (not (is-Concat!29395 (regOne!41612 r!14126))))))

(assert (=> b!7720366 (= e!4579443 e!4579447)))

(declare-fun b!7720367 () Bool)

(assert (=> b!7720367 (= e!4579444 e!4579448)))

(declare-fun c!1423018 () Bool)

(assert (=> b!7720367 (= c!1423018 (is-Star!20550 (regOne!41612 r!14126)))))

(declare-fun bm!713537 () Bool)

(assert (=> bm!713537 (= call!713542 (validRegex!10968 (ite c!1423018 (reg!20879 (regOne!41612 r!14126)) (ite c!1423017 (regOne!41613 (regOne!41612 r!14126)) (regOne!41612 (regOne!41612 r!14126))))))))

(declare-fun b!7720368 () Bool)

(assert (=> b!7720368 (= e!4579446 call!713543)))

(declare-fun b!7720369 () Bool)

(assert (=> b!7720369 (= e!4579448 e!4579445)))

(declare-fun res!3080692 () Bool)

(assert (=> b!7720369 (= res!3080692 (not (nullable!9027 (reg!20879 (regOne!41612 r!14126)))))))

(assert (=> b!7720369 (=> (not res!3080692) (not e!4579445))))

(declare-fun bm!713538 () Bool)

(assert (=> bm!713538 (= call!713541 call!713542)))

(assert (= (and d!2337557 (not res!3080695)) b!7720367))

(assert (= (and b!7720367 c!1423018) b!7720369))

(assert (= (and b!7720367 (not c!1423018)) b!7720365))

(assert (= (and b!7720369 res!3080692) b!7720363))

(assert (= (and b!7720365 c!1423017) b!7720364))

(assert (= (and b!7720365 (not c!1423017)) b!7720366))

(assert (= (and b!7720364 res!3080693) b!7720361))

(assert (= (and b!7720366 (not res!3080694)) b!7720362))

(assert (= (and b!7720362 res!3080696) b!7720368))

(assert (= (or b!7720364 b!7720362) bm!713538))

(assert (= (or b!7720361 b!7720368) bm!713536))

(assert (= (or b!7720363 bm!713538) bm!713537))

(declare-fun m!8199812 () Bool)

(assert (=> bm!713536 m!8199812))

(declare-fun m!8199814 () Bool)

(assert (=> bm!713537 m!8199814))

(declare-fun m!8199816 () Bool)

(assert (=> b!7720369 m!8199816))

(assert (=> b!7720161 d!2337557))

(declare-fun b!7720383 () Bool)

(declare-fun e!4579452 () Bool)

(declare-fun tp!2264959 () Bool)

(declare-fun tp!2264956 () Bool)

(assert (=> b!7720383 (= e!4579452 (and tp!2264959 tp!2264956))))

(declare-fun b!7720380 () Bool)

(assert (=> b!7720380 (= e!4579452 tp_is_empty!51455)))

(assert (=> b!7720162 (= tp!2264922 e!4579452)))

(declare-fun b!7720381 () Bool)

(declare-fun tp!2264960 () Bool)

(declare-fun tp!2264957 () Bool)

(assert (=> b!7720381 (= e!4579452 (and tp!2264960 tp!2264957))))

(declare-fun b!7720382 () Bool)

(declare-fun tp!2264958 () Bool)

(assert (=> b!7720382 (= e!4579452 tp!2264958)))

(assert (= (and b!7720162 (is-ElementMatch!20550 (regOne!41613 r!14126))) b!7720380))

(assert (= (and b!7720162 (is-Concat!29395 (regOne!41613 r!14126))) b!7720381))

(assert (= (and b!7720162 (is-Star!20550 (regOne!41613 r!14126))) b!7720382))

(assert (= (and b!7720162 (is-Union!20550 (regOne!41613 r!14126))) b!7720383))

(declare-fun b!7720387 () Bool)

(declare-fun e!4579453 () Bool)

(declare-fun tp!2264964 () Bool)

(declare-fun tp!2264961 () Bool)

(assert (=> b!7720387 (= e!4579453 (and tp!2264964 tp!2264961))))

(declare-fun b!7720384 () Bool)

(assert (=> b!7720384 (= e!4579453 tp_is_empty!51455)))

(assert (=> b!7720162 (= tp!2264926 e!4579453)))

(declare-fun b!7720385 () Bool)

(declare-fun tp!2264965 () Bool)

(declare-fun tp!2264962 () Bool)

(assert (=> b!7720385 (= e!4579453 (and tp!2264965 tp!2264962))))

(declare-fun b!7720386 () Bool)

(declare-fun tp!2264963 () Bool)

(assert (=> b!7720386 (= e!4579453 tp!2264963)))

(assert (= (and b!7720162 (is-ElementMatch!20550 (regTwo!41613 r!14126))) b!7720384))

(assert (= (and b!7720162 (is-Concat!29395 (regTwo!41613 r!14126))) b!7720385))

(assert (= (and b!7720162 (is-Star!20550 (regTwo!41613 r!14126))) b!7720386))

(assert (= (and b!7720162 (is-Union!20550 (regTwo!41613 r!14126))) b!7720387))

(declare-fun b!7720392 () Bool)

(declare-fun e!4579456 () Bool)

(declare-fun tp!2264968 () Bool)

(assert (=> b!7720392 (= e!4579456 (and tp_is_empty!51455 tp!2264968))))

(assert (=> b!7720163 (= tp!2264927 e!4579456)))

(assert (= (and b!7720163 (is-Cons!73273 (t!388132 s!9605))) b!7720392))

(declare-fun b!7720396 () Bool)

(declare-fun e!4579457 () Bool)

(declare-fun tp!2264972 () Bool)

(declare-fun tp!2264969 () Bool)

(assert (=> b!7720396 (= e!4579457 (and tp!2264972 tp!2264969))))

(declare-fun b!7720393 () Bool)

(assert (=> b!7720393 (= e!4579457 tp_is_empty!51455)))

(assert (=> b!7720164 (= tp!2264924 e!4579457)))

(declare-fun b!7720394 () Bool)

(declare-fun tp!2264973 () Bool)

(declare-fun tp!2264970 () Bool)

(assert (=> b!7720394 (= e!4579457 (and tp!2264973 tp!2264970))))

(declare-fun b!7720395 () Bool)

(declare-fun tp!2264971 () Bool)

(assert (=> b!7720395 (= e!4579457 tp!2264971)))

(assert (= (and b!7720164 (is-ElementMatch!20550 (regOne!41612 r!14126))) b!7720393))

(assert (= (and b!7720164 (is-Concat!29395 (regOne!41612 r!14126))) b!7720394))

(assert (= (and b!7720164 (is-Star!20550 (regOne!41612 r!14126))) b!7720395))

(assert (= (and b!7720164 (is-Union!20550 (regOne!41612 r!14126))) b!7720396))

(declare-fun b!7720400 () Bool)

(declare-fun e!4579458 () Bool)

(declare-fun tp!2264977 () Bool)

(declare-fun tp!2264974 () Bool)

(assert (=> b!7720400 (= e!4579458 (and tp!2264977 tp!2264974))))

(declare-fun b!7720397 () Bool)

(assert (=> b!7720397 (= e!4579458 tp_is_empty!51455)))

(assert (=> b!7720164 (= tp!2264925 e!4579458)))

(declare-fun b!7720398 () Bool)

(declare-fun tp!2264978 () Bool)

(declare-fun tp!2264975 () Bool)

(assert (=> b!7720398 (= e!4579458 (and tp!2264978 tp!2264975))))

(declare-fun b!7720399 () Bool)

(declare-fun tp!2264976 () Bool)

(assert (=> b!7720399 (= e!4579458 tp!2264976)))

(assert (= (and b!7720164 (is-ElementMatch!20550 (regTwo!41612 r!14126))) b!7720397))

(assert (= (and b!7720164 (is-Concat!29395 (regTwo!41612 r!14126))) b!7720398))

(assert (= (and b!7720164 (is-Star!20550 (regTwo!41612 r!14126))) b!7720399))

(assert (= (and b!7720164 (is-Union!20550 (regTwo!41612 r!14126))) b!7720400))

(declare-fun b!7720404 () Bool)

(declare-fun e!4579459 () Bool)

(declare-fun tp!2264982 () Bool)

(declare-fun tp!2264979 () Bool)

(assert (=> b!7720404 (= e!4579459 (and tp!2264982 tp!2264979))))

(declare-fun b!7720401 () Bool)

(assert (=> b!7720401 (= e!4579459 tp_is_empty!51455)))

(assert (=> b!7720159 (= tp!2264923 e!4579459)))

(declare-fun b!7720402 () Bool)

(declare-fun tp!2264983 () Bool)

(declare-fun tp!2264980 () Bool)

(assert (=> b!7720402 (= e!4579459 (and tp!2264983 tp!2264980))))

(declare-fun b!7720403 () Bool)

(declare-fun tp!2264981 () Bool)

(assert (=> b!7720403 (= e!4579459 tp!2264981)))

(assert (= (and b!7720159 (is-ElementMatch!20550 (reg!20879 r!14126))) b!7720401))

(assert (= (and b!7720159 (is-Concat!29395 (reg!20879 r!14126))) b!7720402))

(assert (= (and b!7720159 (is-Star!20550 (reg!20879 r!14126))) b!7720403))

(assert (= (and b!7720159 (is-Union!20550 (reg!20879 r!14126))) b!7720404))

(push 1)

(assert (not b!7720305))

(assert (not b!7720241))

(assert (not b!7720369))

(assert tp_is_empty!51455)

(assert (not d!2337545))

(assert (not bm!713537))

(assert (not b!7720392))

(assert (not b!7720232))

(assert (not b!7720400))

(assert (not b!7720395))

(assert (not b!7720404))

(assert (not bm!713528))

(assert (not b!7720385))

(assert (not bm!713534))

(assert (not b!7720387))

(assert (not bm!713524))

(assert (not b!7720396))

(assert (not b!7720381))

(assert (not b!7720355))

(assert (not d!2337555))

(assert (not b!7720354))

(assert (not b!7720303))

(assert (not bm!713536))

(assert (not bm!713525))

(assert (not b!7720358))

(assert (not b!7720356))

(assert (not b!7720402))

(assert (not b!7720383))

(assert (not b!7720382))

(assert (not b!7720308))

(assert (not b!7720398))

(assert (not b!7720386))

(assert (not b!7720403))

(assert (not b!7720299))

(assert (not bm!713527))

(assert (not b!7720300))

(assert (not b!7720394))

(assert (not b!7720360))

(assert (not d!2337553))

(assert (not b!7720298))

(assert (not b!7720399))

(assert (not b!7720352))

(assert (not d!2337551))

(assert (not d!2337547))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

