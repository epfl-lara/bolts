; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!738826 () Bool)

(assert start!738826)

(declare-fun b!7749312 () Bool)

(assert (=> b!7749312 true))

(assert (=> b!7749312 true))

(declare-fun bs!1965769 () Bool)

(declare-fun b!7749304 () Bool)

(assert (= bs!1965769 (and b!7749304 b!7749312)))

(declare-fun lambda!471907 () Int)

(declare-fun lambda!471906 () Int)

(assert (=> bs!1965769 (not (= lambda!471907 lambda!471906))))

(assert (=> b!7749304 true))

(assert (=> b!7749304 true))

(declare-fun b!7749302 () Bool)

(declare-fun e!4594110 () Bool)

(declare-fun tp!2273462 () Bool)

(declare-fun tp!2273463 () Bool)

(assert (=> b!7749302 (= e!4594110 (and tp!2273462 tp!2273463))))

(declare-fun b!7749303 () Bool)

(declare-fun tp_is_empty!51551 () Bool)

(assert (=> b!7749303 (= e!4594110 tp_is_empty!51551)))

(declare-fun res!3090022 () Bool)

(declare-fun e!4594104 () Bool)

(assert (=> b!7749304 (=> res!3090022 e!4594104)))

(declare-fun Exists!4719 (Int) Bool)

(assert (=> b!7749304 (= res!3090022 (Exists!4719 lambda!471907))))

(declare-fun b!7749305 () Bool)

(declare-fun tp!2273466 () Bool)

(assert (=> b!7749305 (= e!4594110 tp!2273466)))

(declare-fun b!7749306 () Bool)

(declare-datatypes ((Unit!168316 0))(
  ( (Unit!168317) )
))
(declare-fun e!4594105 () Unit!168316)

(declare-fun Unit!168318 () Unit!168316)

(assert (=> b!7749306 (= e!4594105 Unit!168318)))

(declare-datatypes ((C!41522 0))(
  ( (C!41523 (val!31201 Int)) )
))
(declare-datatypes ((List!73445 0))(
  ( (Nil!73321) (Cons!73321 (h!79769 C!41522) (t!388180 List!73445)) )
))
(declare-datatypes ((tuple2!69650 0))(
  ( (tuple2!69651 (_1!38128 List!73445) (_2!38128 List!73445)) )
))
(declare-fun lt!2669248 () tuple2!69650)

(declare-datatypes ((Option!17619 0))(
  ( (None!17618) (Some!17618 (v!54753 tuple2!69650)) )
))
(declare-fun lt!2669246 () Option!17619)

(declare-fun get!26088 (Option!17619) tuple2!69650)

(assert (=> b!7749306 (= lt!2669248 (get!26088 lt!2669246))))

(declare-fun lt!2669249 () Unit!168316)

(declare-fun s!9605 () List!73445)

(declare-datatypes ((Regex!20598 0))(
  ( (ElementMatch!20598 (c!1429282 C!41522)) (Concat!29443 (regOne!41708 Regex!20598) (regTwo!41708 Regex!20598)) (EmptyExpr!20598) (Star!20598 (reg!20927 Regex!20598)) (EmptyLang!20598) (Union!20598 (regOne!41709 Regex!20598) (regTwo!41709 Regex!20598)) )
))
(declare-fun r!14126 () Regex!20598)

(declare-fun lemmaFindSeparationIsDefinedThenConcatMatches!223 (Regex!20598 Regex!20598 List!73445 List!73445 List!73445) Unit!168316)

(assert (=> b!7749306 (= lt!2669249 (lemmaFindSeparationIsDefinedThenConcatMatches!223 (regOne!41708 r!14126) (regTwo!41708 r!14126) (_1!38128 lt!2669248) (_2!38128 lt!2669248) s!9605))))

(declare-fun res!3090021 () Bool)

(declare-fun matchR!10090 (Regex!20598 List!73445) Bool)

(declare-fun ++!17797 (List!73445 List!73445) List!73445)

(assert (=> b!7749306 (= res!3090021 (matchR!10090 r!14126 (++!17797 (_1!38128 lt!2669248) (_2!38128 lt!2669248))))))

(declare-fun e!4594106 () Bool)

(assert (=> b!7749306 (=> (not res!3090021) (not e!4594106))))

(assert (=> b!7749306 e!4594106))

(declare-fun b!7749307 () Bool)

(declare-fun tp!2273467 () Bool)

(declare-fun tp!2273465 () Bool)

(assert (=> b!7749307 (= e!4594110 (and tp!2273467 tp!2273465))))

(declare-fun res!3090023 () Bool)

(declare-fun e!4594108 () Bool)

(assert (=> start!738826 (=> (not res!3090023) (not e!4594108))))

(declare-fun validRegex!11016 (Regex!20598) Bool)

(assert (=> start!738826 (= res!3090023 (validRegex!11016 r!14126))))

(assert (=> start!738826 e!4594108))

(assert (=> start!738826 e!4594110))

(declare-fun e!4594107 () Bool)

(assert (=> start!738826 e!4594107))

(declare-fun b!7749308 () Bool)

(declare-fun res!3090019 () Bool)

(assert (=> b!7749308 (=> (not res!3090019) (not e!4594108))))

(assert (=> b!7749308 (= res!3090019 (and (not (is-EmptyExpr!20598 r!14126)) (not (is-EmptyLang!20598 r!14126)) (not (is-ElementMatch!20598 r!14126)) (not (is-Union!20598 r!14126)) (not (is-Star!20598 r!14126))))))

(declare-fun b!7749309 () Bool)

(declare-fun tp!2273464 () Bool)

(assert (=> b!7749309 (= e!4594107 (and tp_is_empty!51551 tp!2273464))))

(declare-fun b!7749310 () Bool)

(declare-fun matchRSpec!4663 (Regex!20598 List!73445) Bool)

(assert (=> b!7749310 (= e!4594104 (not (matchRSpec!4663 r!14126 s!9605)))))

(declare-fun b!7749311 () Bool)

(assert (=> b!7749311 (= e!4594106 false)))

(declare-fun e!4594109 () Bool)

(assert (=> b!7749312 (= e!4594108 (not e!4594109))))

(declare-fun res!3090024 () Bool)

(assert (=> b!7749312 (=> res!3090024 e!4594109)))

(assert (=> b!7749312 (= res!3090024 (matchR!10090 r!14126 s!9605))))

(declare-fun lt!2669250 () Bool)

(assert (=> b!7749312 (= lt!2669250 (Exists!4719 lambda!471906))))

(declare-fun isDefined!14235 (Option!17619) Bool)

(assert (=> b!7749312 (= lt!2669250 (isDefined!14235 lt!2669246))))

(declare-fun findConcatSeparation!3649 (Regex!20598 Regex!20598 List!73445 List!73445 List!73445) Option!17619)

(assert (=> b!7749312 (= lt!2669246 (findConcatSeparation!3649 (regOne!41708 r!14126) (regTwo!41708 r!14126) Nil!73321 s!9605 s!9605))))

(declare-fun lt!2669247 () Unit!168316)

(declare-fun lemmaFindConcatSeparationEquivalentToExists!3407 (Regex!20598 Regex!20598 List!73445) Unit!168316)

(assert (=> b!7749312 (= lt!2669247 (lemmaFindConcatSeparationEquivalentToExists!3407 (regOne!41708 r!14126) (regTwo!41708 r!14126) s!9605))))

(declare-fun b!7749313 () Bool)

(assert (=> b!7749313 (= e!4594109 e!4594104)))

(declare-fun res!3090020 () Bool)

(assert (=> b!7749313 (=> res!3090020 e!4594104)))

(assert (=> b!7749313 (= res!3090020 (Exists!4719 lambda!471906))))

(declare-fun lt!2669245 () Unit!168316)

(assert (=> b!7749313 (= lt!2669245 e!4594105)))

(declare-fun c!1429281 () Bool)

(assert (=> b!7749313 (= c!1429281 lt!2669250)))

(declare-fun b!7749314 () Bool)

(declare-fun Unit!168319 () Unit!168316)

(assert (=> b!7749314 (= e!4594105 Unit!168319)))

(assert (= (and start!738826 res!3090023) b!7749308))

(assert (= (and b!7749308 res!3090019) b!7749312))

(assert (= (and b!7749312 (not res!3090024)) b!7749313))

(assert (= (and b!7749313 c!1429281) b!7749306))

(assert (= (and b!7749313 (not c!1429281)) b!7749314))

(assert (= (and b!7749306 res!3090021) b!7749311))

(assert (= (and b!7749313 (not res!3090020)) b!7749304))

(assert (= (and b!7749304 (not res!3090022)) b!7749310))

(assert (= (and start!738826 (is-ElementMatch!20598 r!14126)) b!7749303))

(assert (= (and start!738826 (is-Concat!29443 r!14126)) b!7749307))

(assert (= (and start!738826 (is-Star!20598 r!14126)) b!7749305))

(assert (= (and start!738826 (is-Union!20598 r!14126)) b!7749302))

(assert (= (and start!738826 (is-Cons!73321 s!9605)) b!7749309))

(declare-fun m!8216058 () Bool)

(assert (=> b!7749310 m!8216058))

(declare-fun m!8216060 () Bool)

(assert (=> b!7749304 m!8216060))

(declare-fun m!8216062 () Bool)

(assert (=> b!7749312 m!8216062))

(declare-fun m!8216064 () Bool)

(assert (=> b!7749312 m!8216064))

(declare-fun m!8216066 () Bool)

(assert (=> b!7749312 m!8216066))

(declare-fun m!8216068 () Bool)

(assert (=> b!7749312 m!8216068))

(declare-fun m!8216070 () Bool)

(assert (=> b!7749312 m!8216070))

(declare-fun m!8216072 () Bool)

(assert (=> start!738826 m!8216072))

(declare-fun m!8216074 () Bool)

(assert (=> b!7749306 m!8216074))

(declare-fun m!8216076 () Bool)

(assert (=> b!7749306 m!8216076))

(declare-fun m!8216078 () Bool)

(assert (=> b!7749306 m!8216078))

(assert (=> b!7749306 m!8216078))

(declare-fun m!8216080 () Bool)

(assert (=> b!7749306 m!8216080))

(assert (=> b!7749313 m!8216068))

(push 1)

(assert (not b!7749304))

(assert (not b!7749302))

(assert (not b!7749307))

(assert (not b!7749312))

(assert tp_is_empty!51551)

(assert (not b!7749309))

(assert (not b!7749306))

(assert (not b!7749310))

(assert (not start!738826))

(assert (not b!7749305))

(assert (not b!7749313))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!2342587 () Bool)

(declare-fun choose!59426 (Int) Bool)

(assert (=> d!2342587 (= (Exists!4719 lambda!471907) (choose!59426 lambda!471907))))

(declare-fun bs!1965771 () Bool)

(assert (= bs!1965771 d!2342587))

(declare-fun m!8216106 () Bool)

(assert (=> bs!1965771 m!8216106))

(assert (=> b!7749304 d!2342587))

(declare-fun bs!1965772 () Bool)

(declare-fun b!7749414 () Bool)

(assert (= bs!1965772 (and b!7749414 b!7749312)))

(declare-fun lambda!471920 () Int)

(assert (=> bs!1965772 (not (= lambda!471920 lambda!471906))))

(declare-fun bs!1965773 () Bool)

(assert (= bs!1965773 (and b!7749414 b!7749304)))

(assert (=> bs!1965773 (not (= lambda!471920 lambda!471907))))

(assert (=> b!7749414 true))

(assert (=> b!7749414 true))

(declare-fun bs!1965774 () Bool)

(declare-fun b!7749412 () Bool)

(assert (= bs!1965774 (and b!7749412 b!7749312)))

(declare-fun lambda!471921 () Int)

(assert (=> bs!1965774 (not (= lambda!471921 lambda!471906))))

(declare-fun bs!1965775 () Bool)

(assert (= bs!1965775 (and b!7749412 b!7749304)))

(assert (=> bs!1965775 (= lambda!471921 lambda!471907)))

(declare-fun bs!1965776 () Bool)

(assert (= bs!1965776 (and b!7749412 b!7749414)))

(assert (=> bs!1965776 (not (= lambda!471921 lambda!471920))))

(assert (=> b!7749412 true))

(assert (=> b!7749412 true))

(declare-fun b!7749406 () Bool)

(declare-fun e!4594156 () Bool)

(declare-fun e!4594161 () Bool)

(assert (=> b!7749406 (= e!4594156 e!4594161)))

(declare-fun c!1429296 () Bool)

(assert (=> b!7749406 (= c!1429296 (is-Star!20598 r!14126))))

(declare-fun b!7749407 () Bool)

(declare-fun e!4594160 () Bool)

(assert (=> b!7749407 (= e!4594160 (= s!9605 (Cons!73321 (c!1429282 r!14126) Nil!73321)))))

(declare-fun b!7749408 () Bool)

(declare-fun e!4594162 () Bool)

(assert (=> b!7749408 (= e!4594162 (matchRSpec!4663 (regTwo!41709 r!14126) s!9605))))

(declare-fun b!7749409 () Bool)

(declare-fun e!4594158 () Bool)

(declare-fun e!4594157 () Bool)

(assert (=> b!7749409 (= e!4594158 e!4594157)))

(declare-fun res!3090073 () Bool)

(assert (=> b!7749409 (= res!3090073 (not (is-EmptyLang!20598 r!14126)))))

(assert (=> b!7749409 (=> (not res!3090073) (not e!4594157))))

(declare-fun d!2342589 () Bool)

(declare-fun c!1429298 () Bool)

(assert (=> d!2342589 (= c!1429298 (is-EmptyExpr!20598 r!14126))))

(assert (=> d!2342589 (= (matchRSpec!4663 r!14126 s!9605) e!4594158)))

(declare-fun call!718175 () Bool)

(declare-fun bm!718170 () Bool)

(assert (=> bm!718170 (= call!718175 (Exists!4719 (ite c!1429296 lambda!471920 lambda!471921)))))

(declare-fun b!7749410 () Bool)

(declare-fun c!1429295 () Bool)

(assert (=> b!7749410 (= c!1429295 (is-ElementMatch!20598 r!14126))))

(assert (=> b!7749410 (= e!4594157 e!4594160)))

(declare-fun b!7749411 () Bool)

(declare-fun res!3090072 () Bool)

(declare-fun e!4594159 () Bool)

(assert (=> b!7749411 (=> res!3090072 e!4594159)))

(declare-fun call!718176 () Bool)

(assert (=> b!7749411 (= res!3090072 call!718176)))

(assert (=> b!7749411 (= e!4594161 e!4594159)))

(assert (=> b!7749412 (= e!4594161 call!718175)))

(declare-fun b!7749413 () Bool)

(assert (=> b!7749413 (= e!4594156 e!4594162)))

(declare-fun res!3090071 () Bool)

(assert (=> b!7749413 (= res!3090071 (matchRSpec!4663 (regOne!41709 r!14126) s!9605))))

(assert (=> b!7749413 (=> res!3090071 e!4594162)))

(assert (=> b!7749414 (= e!4594159 call!718175)))

(declare-fun b!7749415 () Bool)

(assert (=> b!7749415 (= e!4594158 call!718176)))

(declare-fun b!7749416 () Bool)

(declare-fun c!1429297 () Bool)

(assert (=> b!7749416 (= c!1429297 (is-Union!20598 r!14126))))

(assert (=> b!7749416 (= e!4594160 e!4594156)))

(declare-fun bm!718171 () Bool)

(declare-fun isEmpty!42017 (List!73445) Bool)

(assert (=> bm!718171 (= call!718176 (isEmpty!42017 s!9605))))

(assert (= (and d!2342589 c!1429298) b!7749415))

(assert (= (and d!2342589 (not c!1429298)) b!7749409))

(assert (= (and b!7749409 res!3090073) b!7749410))

(assert (= (and b!7749410 c!1429295) b!7749407))

(assert (= (and b!7749410 (not c!1429295)) b!7749416))

(assert (= (and b!7749416 c!1429297) b!7749413))

(assert (= (and b!7749416 (not c!1429297)) b!7749406))

(assert (= (and b!7749413 (not res!3090071)) b!7749408))

(assert (= (and b!7749406 c!1429296) b!7749411))

(assert (= (and b!7749406 (not c!1429296)) b!7749412))

(assert (= (and b!7749411 (not res!3090072)) b!7749414))

(assert (= (or b!7749414 b!7749412) bm!718170))

(assert (= (or b!7749415 b!7749411) bm!718171))

(declare-fun m!8216108 () Bool)

(assert (=> b!7749408 m!8216108))

(declare-fun m!8216110 () Bool)

(assert (=> bm!718170 m!8216110))

(declare-fun m!8216112 () Bool)

(assert (=> b!7749413 m!8216112))

(declare-fun m!8216114 () Bool)

(assert (=> bm!718171 m!8216114))

(assert (=> b!7749310 d!2342589))

(declare-fun b!7749473 () Bool)

(declare-fun e!4594193 () Bool)

(declare-fun head!15828 (List!73445) C!41522)

(assert (=> b!7749473 (= e!4594193 (= (head!15828 s!9605) (c!1429282 r!14126)))))

(declare-fun b!7749474 () Bool)

(declare-fun res!3090113 () Bool)

(declare-fun e!4594196 () Bool)

(assert (=> b!7749474 (=> res!3090113 e!4594196)))

(declare-fun tail!15368 (List!73445) List!73445)

(assert (=> b!7749474 (= res!3090113 (not (isEmpty!42017 (tail!15368 s!9605))))))

(declare-fun b!7749475 () Bool)

(declare-fun e!4594192 () Bool)

(declare-fun lt!2669273 () Bool)

(declare-fun call!718179 () Bool)

(assert (=> b!7749475 (= e!4594192 (= lt!2669273 call!718179))))

(declare-fun b!7749476 () Bool)

(declare-fun res!3090111 () Bool)

(assert (=> b!7749476 (=> (not res!3090111) (not e!4594193))))

(assert (=> b!7749476 (= res!3090111 (not call!718179))))

(declare-fun b!7749477 () Bool)

(declare-fun res!3090110 () Bool)

(declare-fun e!4594197 () Bool)

(assert (=> b!7749477 (=> res!3090110 e!4594197)))

(assert (=> b!7749477 (= res!3090110 e!4594193)))

(declare-fun res!3090108 () Bool)

(assert (=> b!7749477 (=> (not res!3090108) (not e!4594193))))

(assert (=> b!7749477 (= res!3090108 lt!2669273)))

(declare-fun b!7749478 () Bool)

(declare-fun res!3090112 () Bool)

(assert (=> b!7749478 (=> res!3090112 e!4594197)))

(assert (=> b!7749478 (= res!3090112 (not (is-ElementMatch!20598 r!14126)))))

(declare-fun e!4594194 () Bool)

(assert (=> b!7749478 (= e!4594194 e!4594197)))

(declare-fun b!7749479 () Bool)

(declare-fun e!4594195 () Bool)

(assert (=> b!7749479 (= e!4594197 e!4594195)))

(declare-fun res!3090106 () Bool)

(assert (=> b!7749479 (=> (not res!3090106) (not e!4594195))))

(assert (=> b!7749479 (= res!3090106 (not lt!2669273))))

(declare-fun b!7749480 () Bool)

(assert (=> b!7749480 (= e!4594196 (not (= (head!15828 s!9605) (c!1429282 r!14126))))))

(declare-fun b!7749481 () Bool)

(assert (=> b!7749481 (= e!4594194 (not lt!2669273))))

(declare-fun b!7749482 () Bool)

(declare-fun e!4594191 () Bool)

(declare-fun derivativeStep!6028 (Regex!20598 C!41522) Regex!20598)

(assert (=> b!7749482 (= e!4594191 (matchR!10090 (derivativeStep!6028 r!14126 (head!15828 s!9605)) (tail!15368 s!9605)))))

(declare-fun d!2342593 () Bool)

(assert (=> d!2342593 e!4594192))

(declare-fun c!1429312 () Bool)

(assert (=> d!2342593 (= c!1429312 (is-EmptyExpr!20598 r!14126))))

(assert (=> d!2342593 (= lt!2669273 e!4594191)))

(declare-fun c!1429311 () Bool)

(assert (=> d!2342593 (= c!1429311 (isEmpty!42017 s!9605))))

(assert (=> d!2342593 (validRegex!11016 r!14126)))

(assert (=> d!2342593 (= (matchR!10090 r!14126 s!9605) lt!2669273)))

(declare-fun bm!718174 () Bool)

(assert (=> bm!718174 (= call!718179 (isEmpty!42017 s!9605))))

(declare-fun b!7749483 () Bool)

(declare-fun res!3090109 () Bool)

(assert (=> b!7749483 (=> (not res!3090109) (not e!4594193))))

(assert (=> b!7749483 (= res!3090109 (isEmpty!42017 (tail!15368 s!9605)))))

(declare-fun b!7749484 () Bool)

(assert (=> b!7749484 (= e!4594195 e!4594196)))

(declare-fun res!3090107 () Bool)

(assert (=> b!7749484 (=> res!3090107 e!4594196)))

(assert (=> b!7749484 (= res!3090107 call!718179)))

(declare-fun b!7749485 () Bool)

(declare-fun nullable!9069 (Regex!20598) Bool)

(assert (=> b!7749485 (= e!4594191 (nullable!9069 r!14126))))

(declare-fun b!7749486 () Bool)

(assert (=> b!7749486 (= e!4594192 e!4594194)))

(declare-fun c!1429313 () Bool)

(assert (=> b!7749486 (= c!1429313 (is-EmptyLang!20598 r!14126))))

(assert (= (and d!2342593 c!1429311) b!7749485))

(assert (= (and d!2342593 (not c!1429311)) b!7749482))

(assert (= (and d!2342593 c!1429312) b!7749475))

(assert (= (and d!2342593 (not c!1429312)) b!7749486))

(assert (= (and b!7749486 c!1429313) b!7749481))

(assert (= (and b!7749486 (not c!1429313)) b!7749478))

(assert (= (and b!7749478 (not res!3090112)) b!7749477))

(assert (= (and b!7749477 res!3090108) b!7749476))

(assert (= (and b!7749476 res!3090111) b!7749483))

(assert (= (and b!7749483 res!3090109) b!7749473))

(assert (= (and b!7749477 (not res!3090110)) b!7749479))

(assert (= (and b!7749479 res!3090106) b!7749484))

(assert (= (and b!7749484 (not res!3090107)) b!7749474))

(assert (= (and b!7749474 (not res!3090113)) b!7749480))

(assert (= (or b!7749475 b!7749476 b!7749484) bm!718174))

(declare-fun m!8216116 () Bool)

(assert (=> b!7749485 m!8216116))

(assert (=> bm!718174 m!8216114))

(declare-fun m!8216118 () Bool)

(assert (=> b!7749482 m!8216118))

(assert (=> b!7749482 m!8216118))

(declare-fun m!8216120 () Bool)

(assert (=> b!7749482 m!8216120))

(declare-fun m!8216122 () Bool)

(assert (=> b!7749482 m!8216122))

(assert (=> b!7749482 m!8216120))

(assert (=> b!7749482 m!8216122))

(declare-fun m!8216124 () Bool)

(assert (=> b!7749482 m!8216124))

(assert (=> b!7749474 m!8216122))

(assert (=> b!7749474 m!8216122))

(declare-fun m!8216126 () Bool)

(assert (=> b!7749474 m!8216126))

(assert (=> b!7749480 m!8216118))

(assert (=> b!7749473 m!8216118))

(assert (=> d!2342593 m!8216114))

(assert (=> d!2342593 m!8216072))

(assert (=> b!7749483 m!8216122))

(assert (=> b!7749483 m!8216122))

(assert (=> b!7749483 m!8216126))

(assert (=> b!7749312 d!2342593))

(declare-fun bs!1965777 () Bool)

(declare-fun d!2342595 () Bool)

(assert (= bs!1965777 (and d!2342595 b!7749312)))

(declare-fun lambda!471924 () Int)

(assert (=> bs!1965777 (= lambda!471924 lambda!471906)))

(declare-fun bs!1965778 () Bool)

(assert (= bs!1965778 (and d!2342595 b!7749304)))

(assert (=> bs!1965778 (not (= lambda!471924 lambda!471907))))

(declare-fun bs!1965779 () Bool)

(assert (= bs!1965779 (and d!2342595 b!7749414)))

(assert (=> bs!1965779 (not (= lambda!471924 lambda!471920))))

(declare-fun bs!1965780 () Bool)

(assert (= bs!1965780 (and d!2342595 b!7749412)))

(assert (=> bs!1965780 (not (= lambda!471924 lambda!471921))))

(assert (=> d!2342595 true))

(assert (=> d!2342595 true))

(assert (=> d!2342595 true))

(assert (=> d!2342595 (= (isDefined!14235 (findConcatSeparation!3649 (regOne!41708 r!14126) (regTwo!41708 r!14126) Nil!73321 s!9605 s!9605)) (Exists!4719 lambda!471924))))

(declare-fun lt!2669276 () Unit!168316)

(declare-fun choose!59427 (Regex!20598 Regex!20598 List!73445) Unit!168316)

(assert (=> d!2342595 (= lt!2669276 (choose!59427 (regOne!41708 r!14126) (regTwo!41708 r!14126) s!9605))))

(assert (=> d!2342595 (validRegex!11016 (regOne!41708 r!14126))))

(assert (=> d!2342595 (= (lemmaFindConcatSeparationEquivalentToExists!3407 (regOne!41708 r!14126) (regTwo!41708 r!14126) s!9605) lt!2669276)))

(declare-fun bs!1965781 () Bool)

(assert (= bs!1965781 d!2342595))

(assert (=> bs!1965781 m!8216064))

(declare-fun m!8216128 () Bool)

(assert (=> bs!1965781 m!8216128))

(declare-fun m!8216130 () Bool)

(assert (=> bs!1965781 m!8216130))

(declare-fun m!8216132 () Bool)

(assert (=> bs!1965781 m!8216132))

(assert (=> bs!1965781 m!8216064))

(declare-fun m!8216134 () Bool)

(assert (=> bs!1965781 m!8216134))

(assert (=> b!7749312 d!2342595))

(declare-fun d!2342597 () Bool)

(assert (=> d!2342597 (= (Exists!4719 lambda!471906) (choose!59426 lambda!471906))))

(declare-fun bs!1965782 () Bool)

(assert (= bs!1965782 d!2342597))

(declare-fun m!8216136 () Bool)

(assert (=> bs!1965782 m!8216136))

(assert (=> b!7749312 d!2342597))

(declare-fun b!7749523 () Bool)

(declare-fun e!4594220 () Bool)

(declare-fun lt!2669287 () Option!17619)

(assert (=> b!7749523 (= e!4594220 (= (++!17797 (_1!38128 (get!26088 lt!2669287)) (_2!38128 (get!26088 lt!2669287))) s!9605))))

(declare-fun d!2342599 () Bool)

(declare-fun e!4594221 () Bool)

(assert (=> d!2342599 e!4594221))

(declare-fun res!3090140 () Bool)

(assert (=> d!2342599 (=> res!3090140 e!4594221)))

(assert (=> d!2342599 (= res!3090140 e!4594220)))

(declare-fun res!3090136 () Bool)

(assert (=> d!2342599 (=> (not res!3090136) (not e!4594220))))

(assert (=> d!2342599 (= res!3090136 (isDefined!14235 lt!2669287))))

(declare-fun e!4594218 () Option!17619)

(assert (=> d!2342599 (= lt!2669287 e!4594218)))

(declare-fun c!1429321 () Bool)

(declare-fun e!4594219 () Bool)

(assert (=> d!2342599 (= c!1429321 e!4594219)))

(declare-fun res!3090137 () Bool)

(assert (=> d!2342599 (=> (not res!3090137) (not e!4594219))))

(assert (=> d!2342599 (= res!3090137 (matchR!10090 (regOne!41708 r!14126) Nil!73321))))

(assert (=> d!2342599 (validRegex!11016 (regOne!41708 r!14126))))

(assert (=> d!2342599 (= (findConcatSeparation!3649 (regOne!41708 r!14126) (regTwo!41708 r!14126) Nil!73321 s!9605 s!9605) lt!2669287)))

(declare-fun b!7749524 () Bool)

(assert (=> b!7749524 (= e!4594218 (Some!17618 (tuple2!69651 Nil!73321 s!9605)))))

(declare-fun b!7749525 () Bool)

(assert (=> b!7749525 (= e!4594221 (not (isDefined!14235 lt!2669287)))))

(declare-fun b!7749526 () Bool)

(declare-fun res!3090138 () Bool)

(assert (=> b!7749526 (=> (not res!3090138) (not e!4594220))))

(assert (=> b!7749526 (= res!3090138 (matchR!10090 (regTwo!41708 r!14126) (_2!38128 (get!26088 lt!2669287))))))

(declare-fun b!7749527 () Bool)

(declare-fun e!4594217 () Option!17619)

(assert (=> b!7749527 (= e!4594217 None!17618)))

(declare-fun b!7749528 () Bool)

(declare-fun res!3090139 () Bool)

(assert (=> b!7749528 (=> (not res!3090139) (not e!4594220))))

(assert (=> b!7749528 (= res!3090139 (matchR!10090 (regOne!41708 r!14126) (_1!38128 (get!26088 lt!2669287))))))

(declare-fun b!7749529 () Bool)

(declare-fun lt!2669288 () Unit!168316)

(declare-fun lt!2669286 () Unit!168316)

(assert (=> b!7749529 (= lt!2669288 lt!2669286)))

(assert (=> b!7749529 (= (++!17797 (++!17797 Nil!73321 (Cons!73321 (h!79769 s!9605) Nil!73321)) (t!388180 s!9605)) s!9605)))

(declare-fun lemmaMoveElementToOtherListKeepsConcatEq!3341 (List!73445 C!41522 List!73445 List!73445) Unit!168316)

(assert (=> b!7749529 (= lt!2669286 (lemmaMoveElementToOtherListKeepsConcatEq!3341 Nil!73321 (h!79769 s!9605) (t!388180 s!9605) s!9605))))

(assert (=> b!7749529 (= e!4594217 (findConcatSeparation!3649 (regOne!41708 r!14126) (regTwo!41708 r!14126) (++!17797 Nil!73321 (Cons!73321 (h!79769 s!9605) Nil!73321)) (t!388180 s!9605) s!9605))))

(declare-fun b!7749530 () Bool)

(assert (=> b!7749530 (= e!4594219 (matchR!10090 (regTwo!41708 r!14126) s!9605))))

(declare-fun b!7749531 () Bool)

(assert (=> b!7749531 (= e!4594218 e!4594217)))

(declare-fun c!1429322 () Bool)

(assert (=> b!7749531 (= c!1429322 (is-Nil!73321 s!9605))))

(assert (= (and d!2342599 res!3090137) b!7749530))

(assert (= (and d!2342599 c!1429321) b!7749524))

(assert (= (and d!2342599 (not c!1429321)) b!7749531))

(assert (= (and b!7749531 c!1429322) b!7749527))

(assert (= (and b!7749531 (not c!1429322)) b!7749529))

(assert (= (and d!2342599 res!3090136) b!7749528))

(assert (= (and b!7749528 res!3090139) b!7749526))

(assert (= (and b!7749526 res!3090138) b!7749523))

(assert (= (and d!2342599 (not res!3090140)) b!7749525))

(declare-fun m!8216152 () Bool)

(assert (=> b!7749526 m!8216152))

(declare-fun m!8216154 () Bool)

(assert (=> b!7749526 m!8216154))

(assert (=> b!7749528 m!8216152))

(declare-fun m!8216156 () Bool)

(assert (=> b!7749528 m!8216156))

(declare-fun m!8216158 () Bool)

(assert (=> b!7749529 m!8216158))

(assert (=> b!7749529 m!8216158))

(declare-fun m!8216160 () Bool)

(assert (=> b!7749529 m!8216160))

(declare-fun m!8216162 () Bool)

(assert (=> b!7749529 m!8216162))

(assert (=> b!7749529 m!8216158))

(declare-fun m!8216164 () Bool)

(assert (=> b!7749529 m!8216164))

(declare-fun m!8216166 () Bool)

(assert (=> b!7749530 m!8216166))

(assert (=> b!7749523 m!8216152))

(declare-fun m!8216168 () Bool)

(assert (=> b!7749523 m!8216168))

(declare-fun m!8216170 () Bool)

(assert (=> b!7749525 m!8216170))

(assert (=> d!2342599 m!8216170))

(declare-fun m!8216172 () Bool)

(assert (=> d!2342599 m!8216172))

(assert (=> d!2342599 m!8216130))

(assert (=> b!7749312 d!2342599))

(declare-fun d!2342603 () Bool)

(declare-fun isEmpty!42018 (Option!17619) Bool)

(assert (=> d!2342603 (= (isDefined!14235 lt!2669246) (not (isEmpty!42018 lt!2669246)))))

(declare-fun bs!1965783 () Bool)

(assert (= bs!1965783 d!2342603))

(declare-fun m!8216174 () Bool)

(assert (=> bs!1965783 m!8216174))

(assert (=> b!7749312 d!2342603))

(assert (=> b!7749313 d!2342597))

(declare-fun bm!718184 () Bool)

(declare-fun call!718191 () Bool)

(declare-fun c!1429327 () Bool)

(assert (=> bm!718184 (= call!718191 (validRegex!11016 (ite c!1429327 (regOne!41709 r!14126) (regOne!41708 r!14126))))))

(declare-fun bm!718185 () Bool)

(declare-fun call!718189 () Bool)

(declare-fun call!718190 () Bool)

(assert (=> bm!718185 (= call!718189 call!718190)))

(declare-fun b!7749554 () Bool)

(declare-fun res!3090159 () Bool)

(declare-fun e!4594244 () Bool)

(assert (=> b!7749554 (=> (not res!3090159) (not e!4594244))))

(assert (=> b!7749554 (= res!3090159 call!718191)))

(declare-fun e!4594241 () Bool)

(assert (=> b!7749554 (= e!4594241 e!4594244)))

(declare-fun d!2342605 () Bool)

(declare-fun res!3090157 () Bool)

(declare-fun e!4594239 () Bool)

(assert (=> d!2342605 (=> res!3090157 e!4594239)))

(assert (=> d!2342605 (= res!3090157 (is-ElementMatch!20598 r!14126))))

(assert (=> d!2342605 (= (validRegex!11016 r!14126) e!4594239)))

(declare-fun b!7749555 () Bool)

(assert (=> b!7749555 (= e!4594244 call!718189)))

(declare-fun b!7749556 () Bool)

(declare-fun e!4594242 () Bool)

(declare-fun e!4594238 () Bool)

(assert (=> b!7749556 (= e!4594242 e!4594238)))

(declare-fun res!3090158 () Bool)

(assert (=> b!7749556 (= res!3090158 (not (nullable!9069 (reg!20927 r!14126))))))

(assert (=> b!7749556 (=> (not res!3090158) (not e!4594238))))

(declare-fun b!7749557 () Bool)

(declare-fun res!3090156 () Bool)

(declare-fun e!4594243 () Bool)

(assert (=> b!7749557 (=> res!3090156 e!4594243)))

(assert (=> b!7749557 (= res!3090156 (not (is-Concat!29443 r!14126)))))

(assert (=> b!7749557 (= e!4594241 e!4594243)))

(declare-fun b!7749558 () Bool)

(declare-fun e!4594240 () Bool)

(assert (=> b!7749558 (= e!4594243 e!4594240)))

(declare-fun res!3090155 () Bool)

(assert (=> b!7749558 (=> (not res!3090155) (not e!4594240))))

(assert (=> b!7749558 (= res!3090155 call!718191)))

(declare-fun b!7749559 () Bool)

(assert (=> b!7749559 (= e!4594242 e!4594241)))

(assert (=> b!7749559 (= c!1429327 (is-Union!20598 r!14126))))

(declare-fun b!7749560 () Bool)

(assert (=> b!7749560 (= e!4594238 call!718190)))

(declare-fun b!7749561 () Bool)

(assert (=> b!7749561 (= e!4594240 call!718189)))

(declare-fun b!7749562 () Bool)

(assert (=> b!7749562 (= e!4594239 e!4594242)))

(declare-fun c!1429328 () Bool)

(assert (=> b!7749562 (= c!1429328 (is-Star!20598 r!14126))))

(declare-fun bm!718186 () Bool)

(assert (=> bm!718186 (= call!718190 (validRegex!11016 (ite c!1429328 (reg!20927 r!14126) (ite c!1429327 (regTwo!41709 r!14126) (regTwo!41708 r!14126)))))))

(assert (= (and d!2342605 (not res!3090157)) b!7749562))

(assert (= (and b!7749562 c!1429328) b!7749556))

(assert (= (and b!7749562 (not c!1429328)) b!7749559))

(assert (= (and b!7749556 res!3090158) b!7749560))

(assert (= (and b!7749559 c!1429327) b!7749554))

(assert (= (and b!7749559 (not c!1429327)) b!7749557))

(assert (= (and b!7749554 res!3090159) b!7749555))

(assert (= (and b!7749557 (not res!3090156)) b!7749558))

(assert (= (and b!7749558 res!3090155) b!7749561))

(assert (= (or b!7749554 b!7749558) bm!718184))

(assert (= (or b!7749555 b!7749561) bm!718185))

(assert (= (or b!7749560 bm!718185) bm!718186))

(declare-fun m!8216176 () Bool)

(assert (=> bm!718184 m!8216176))

(declare-fun m!8216178 () Bool)

(assert (=> b!7749556 m!8216178))

(declare-fun m!8216180 () Bool)

(assert (=> bm!718186 m!8216180))

(assert (=> start!738826 d!2342605))

(declare-fun d!2342607 () Bool)

(assert (=> d!2342607 (= (get!26088 lt!2669246) (v!54753 lt!2669246))))

(assert (=> b!7749306 d!2342607))

(declare-fun d!2342609 () Bool)

(assert (=> d!2342609 (matchR!10090 (Concat!29443 (regOne!41708 r!14126) (regTwo!41708 r!14126)) (++!17797 (_1!38128 lt!2669248) (_2!38128 lt!2669248)))))

(declare-fun lt!2669292 () Unit!168316)

(declare-fun choose!59428 (Regex!20598 Regex!20598 List!73445 List!73445 List!73445) Unit!168316)

(assert (=> d!2342609 (= lt!2669292 (choose!59428 (regOne!41708 r!14126) (regTwo!41708 r!14126) (_1!38128 lt!2669248) (_2!38128 lt!2669248) s!9605))))

(assert (=> d!2342609 (validRegex!11016 (regOne!41708 r!14126))))

(assert (=> d!2342609 (= (lemmaFindSeparationIsDefinedThenConcatMatches!223 (regOne!41708 r!14126) (regTwo!41708 r!14126) (_1!38128 lt!2669248) (_2!38128 lt!2669248) s!9605) lt!2669292)))

(declare-fun bs!1965788 () Bool)

(assert (= bs!1965788 d!2342609))

(assert (=> bs!1965788 m!8216078))

(assert (=> bs!1965788 m!8216078))

(declare-fun m!8216192 () Bool)

(assert (=> bs!1965788 m!8216192))

(declare-fun m!8216194 () Bool)

(assert (=> bs!1965788 m!8216194))

(assert (=> bs!1965788 m!8216130))

(assert (=> b!7749306 d!2342609))

(declare-fun b!7749563 () Bool)

(declare-fun e!4594247 () Bool)

(assert (=> b!7749563 (= e!4594247 (= (head!15828 (++!17797 (_1!38128 lt!2669248) (_2!38128 lt!2669248))) (c!1429282 r!14126)))))

(declare-fun b!7749564 () Bool)

(declare-fun res!3090167 () Bool)

(declare-fun e!4594250 () Bool)

(assert (=> b!7749564 (=> res!3090167 e!4594250)))

(assert (=> b!7749564 (= res!3090167 (not (isEmpty!42017 (tail!15368 (++!17797 (_1!38128 lt!2669248) (_2!38128 lt!2669248))))))))

(declare-fun b!7749565 () Bool)

(declare-fun e!4594246 () Bool)

(declare-fun lt!2669293 () Bool)

(declare-fun call!718192 () Bool)

(assert (=> b!7749565 (= e!4594246 (= lt!2669293 call!718192))))

(declare-fun b!7749566 () Bool)

(declare-fun res!3090165 () Bool)

(assert (=> b!7749566 (=> (not res!3090165) (not e!4594247))))

(assert (=> b!7749566 (= res!3090165 (not call!718192))))

(declare-fun b!7749567 () Bool)

(declare-fun res!3090164 () Bool)

(declare-fun e!4594251 () Bool)

(assert (=> b!7749567 (=> res!3090164 e!4594251)))

(assert (=> b!7749567 (= res!3090164 e!4594247)))

(declare-fun res!3090162 () Bool)

(assert (=> b!7749567 (=> (not res!3090162) (not e!4594247))))

(assert (=> b!7749567 (= res!3090162 lt!2669293)))

(declare-fun b!7749568 () Bool)

(declare-fun res!3090166 () Bool)

(assert (=> b!7749568 (=> res!3090166 e!4594251)))

(assert (=> b!7749568 (= res!3090166 (not (is-ElementMatch!20598 r!14126)))))

(declare-fun e!4594248 () Bool)

(assert (=> b!7749568 (= e!4594248 e!4594251)))

(declare-fun b!7749569 () Bool)

(declare-fun e!4594249 () Bool)

(assert (=> b!7749569 (= e!4594251 e!4594249)))

(declare-fun res!3090160 () Bool)

(assert (=> b!7749569 (=> (not res!3090160) (not e!4594249))))

(assert (=> b!7749569 (= res!3090160 (not lt!2669293))))

(declare-fun b!7749570 () Bool)

(assert (=> b!7749570 (= e!4594250 (not (= (head!15828 (++!17797 (_1!38128 lt!2669248) (_2!38128 lt!2669248))) (c!1429282 r!14126))))))

(declare-fun b!7749571 () Bool)

(assert (=> b!7749571 (= e!4594248 (not lt!2669293))))

(declare-fun b!7749572 () Bool)

(declare-fun e!4594245 () Bool)

(assert (=> b!7749572 (= e!4594245 (matchR!10090 (derivativeStep!6028 r!14126 (head!15828 (++!17797 (_1!38128 lt!2669248) (_2!38128 lt!2669248)))) (tail!15368 (++!17797 (_1!38128 lt!2669248) (_2!38128 lt!2669248)))))))

(declare-fun d!2342615 () Bool)

(assert (=> d!2342615 e!4594246))

(declare-fun c!1429330 () Bool)

(assert (=> d!2342615 (= c!1429330 (is-EmptyExpr!20598 r!14126))))

(assert (=> d!2342615 (= lt!2669293 e!4594245)))

(declare-fun c!1429329 () Bool)

(assert (=> d!2342615 (= c!1429329 (isEmpty!42017 (++!17797 (_1!38128 lt!2669248) (_2!38128 lt!2669248))))))

(assert (=> d!2342615 (validRegex!11016 r!14126)))

(assert (=> d!2342615 (= (matchR!10090 r!14126 (++!17797 (_1!38128 lt!2669248) (_2!38128 lt!2669248))) lt!2669293)))

(declare-fun bm!718187 () Bool)

(assert (=> bm!718187 (= call!718192 (isEmpty!42017 (++!17797 (_1!38128 lt!2669248) (_2!38128 lt!2669248))))))

(declare-fun b!7749573 () Bool)

(declare-fun res!3090163 () Bool)

(assert (=> b!7749573 (=> (not res!3090163) (not e!4594247))))

(assert (=> b!7749573 (= res!3090163 (isEmpty!42017 (tail!15368 (++!17797 (_1!38128 lt!2669248) (_2!38128 lt!2669248)))))))

(declare-fun b!7749574 () Bool)

(assert (=> b!7749574 (= e!4594249 e!4594250)))

(declare-fun res!3090161 () Bool)

(assert (=> b!7749574 (=> res!3090161 e!4594250)))

(assert (=> b!7749574 (= res!3090161 call!718192)))

(declare-fun b!7749575 () Bool)

(assert (=> b!7749575 (= e!4594245 (nullable!9069 r!14126))))

(declare-fun b!7749576 () Bool)

(assert (=> b!7749576 (= e!4594246 e!4594248)))

(declare-fun c!1429331 () Bool)

(assert (=> b!7749576 (= c!1429331 (is-EmptyLang!20598 r!14126))))

(assert (= (and d!2342615 c!1429329) b!7749575))

(assert (= (and d!2342615 (not c!1429329)) b!7749572))

(assert (= (and d!2342615 c!1429330) b!7749565))

(assert (= (and d!2342615 (not c!1429330)) b!7749576))

(assert (= (and b!7749576 c!1429331) b!7749571))

(assert (= (and b!7749576 (not c!1429331)) b!7749568))

(assert (= (and b!7749568 (not res!3090166)) b!7749567))

(assert (= (and b!7749567 res!3090162) b!7749566))

(assert (= (and b!7749566 res!3090165) b!7749573))

(assert (= (and b!7749573 res!3090163) b!7749563))

(assert (= (and b!7749567 (not res!3090164)) b!7749569))

(assert (= (and b!7749569 res!3090160) b!7749574))

(assert (= (and b!7749574 (not res!3090161)) b!7749564))

(assert (= (and b!7749564 (not res!3090167)) b!7749570))

(assert (= (or b!7749565 b!7749566 b!7749574) bm!718187))

(assert (=> b!7749575 m!8216116))

(assert (=> bm!718187 m!8216078))

(declare-fun m!8216196 () Bool)

(assert (=> bm!718187 m!8216196))

(assert (=> b!7749572 m!8216078))

(declare-fun m!8216198 () Bool)

(assert (=> b!7749572 m!8216198))

(assert (=> b!7749572 m!8216198))

(declare-fun m!8216200 () Bool)

(assert (=> b!7749572 m!8216200))

(assert (=> b!7749572 m!8216078))

(declare-fun m!8216202 () Bool)

(assert (=> b!7749572 m!8216202))

(assert (=> b!7749572 m!8216200))

(assert (=> b!7749572 m!8216202))

(declare-fun m!8216204 () Bool)

(assert (=> b!7749572 m!8216204))

(assert (=> b!7749564 m!8216078))

(assert (=> b!7749564 m!8216202))

(assert (=> b!7749564 m!8216202))

(declare-fun m!8216206 () Bool)

(assert (=> b!7749564 m!8216206))

(assert (=> b!7749570 m!8216078))

(assert (=> b!7749570 m!8216198))

(assert (=> b!7749563 m!8216078))

(assert (=> b!7749563 m!8216198))

(assert (=> d!2342615 m!8216078))

(assert (=> d!2342615 m!8216196))

(assert (=> d!2342615 m!8216072))

(assert (=> b!7749573 m!8216078))

(assert (=> b!7749573 m!8216202))

(assert (=> b!7749573 m!8216202))

(assert (=> b!7749573 m!8216206))

(assert (=> b!7749306 d!2342615))

(declare-fun b!7749588 () Bool)

(declare-fun e!4594256 () Bool)

(declare-fun lt!2669296 () List!73445)

(assert (=> b!7749588 (= e!4594256 (or (not (= (_2!38128 lt!2669248) Nil!73321)) (= lt!2669296 (_1!38128 lt!2669248))))))

(declare-fun b!7749585 () Bool)

(declare-fun e!4594257 () List!73445)

(assert (=> b!7749585 (= e!4594257 (_2!38128 lt!2669248))))

(declare-fun b!7749587 () Bool)

(declare-fun res!3090172 () Bool)

(assert (=> b!7749587 (=> (not res!3090172) (not e!4594256))))

(declare-fun size!42654 (List!73445) Int)

(assert (=> b!7749587 (= res!3090172 (= (size!42654 lt!2669296) (+ (size!42654 (_1!38128 lt!2669248)) (size!42654 (_2!38128 lt!2669248)))))))

(declare-fun d!2342617 () Bool)

(assert (=> d!2342617 e!4594256))

(declare-fun res!3090173 () Bool)

(assert (=> d!2342617 (=> (not res!3090173) (not e!4594256))))

(declare-fun content!15551 (List!73445) (Set C!41522))

(assert (=> d!2342617 (= res!3090173 (= (content!15551 lt!2669296) (set.union (content!15551 (_1!38128 lt!2669248)) (content!15551 (_2!38128 lt!2669248)))))))

(assert (=> d!2342617 (= lt!2669296 e!4594257)))

(declare-fun c!1429334 () Bool)

(assert (=> d!2342617 (= c!1429334 (is-Nil!73321 (_1!38128 lt!2669248)))))

(assert (=> d!2342617 (= (++!17797 (_1!38128 lt!2669248) (_2!38128 lt!2669248)) lt!2669296)))

(declare-fun b!7749586 () Bool)

(assert (=> b!7749586 (= e!4594257 (Cons!73321 (h!79769 (_1!38128 lt!2669248)) (++!17797 (t!388180 (_1!38128 lt!2669248)) (_2!38128 lt!2669248))))))

(assert (= (and d!2342617 c!1429334) b!7749585))

(assert (= (and d!2342617 (not c!1429334)) b!7749586))

(assert (= (and d!2342617 res!3090173) b!7749587))

(assert (= (and b!7749587 res!3090172) b!7749588))

(declare-fun m!8216208 () Bool)

(assert (=> b!7749587 m!8216208))

(declare-fun m!8216210 () Bool)

(assert (=> b!7749587 m!8216210))

(declare-fun m!8216212 () Bool)

(assert (=> b!7749587 m!8216212))

(declare-fun m!8216214 () Bool)

(assert (=> d!2342617 m!8216214))

(declare-fun m!8216216 () Bool)

(assert (=> d!2342617 m!8216216))

(declare-fun m!8216218 () Bool)

(assert (=> d!2342617 m!8216218))

(declare-fun m!8216220 () Bool)

(assert (=> b!7749586 m!8216220))

(assert (=> b!7749306 d!2342617))

(declare-fun b!7749599 () Bool)

(declare-fun e!4594260 () Bool)

(assert (=> b!7749599 (= e!4594260 tp_is_empty!51551)))

(declare-fun b!7749601 () Bool)

(declare-fun tp!2273499 () Bool)

(assert (=> b!7749601 (= e!4594260 tp!2273499)))

(declare-fun b!7749600 () Bool)

(declare-fun tp!2273500 () Bool)

(declare-fun tp!2273498 () Bool)

(assert (=> b!7749600 (= e!4594260 (and tp!2273500 tp!2273498))))

(assert (=> b!7749305 (= tp!2273466 e!4594260)))

(declare-fun b!7749602 () Bool)

(declare-fun tp!2273496 () Bool)

(declare-fun tp!2273497 () Bool)

(assert (=> b!7749602 (= e!4594260 (and tp!2273496 tp!2273497))))

(assert (= (and b!7749305 (is-ElementMatch!20598 (reg!20927 r!14126))) b!7749599))

(assert (= (and b!7749305 (is-Concat!29443 (reg!20927 r!14126))) b!7749600))

(assert (= (and b!7749305 (is-Star!20598 (reg!20927 r!14126))) b!7749601))

(assert (= (and b!7749305 (is-Union!20598 (reg!20927 r!14126))) b!7749602))

(declare-fun b!7749607 () Bool)

(declare-fun e!4594263 () Bool)

(declare-fun tp!2273503 () Bool)

(assert (=> b!7749607 (= e!4594263 (and tp_is_empty!51551 tp!2273503))))

(assert (=> b!7749309 (= tp!2273464 e!4594263)))

(assert (= (and b!7749309 (is-Cons!73321 (t!388180 s!9605))) b!7749607))

(declare-fun b!7749608 () Bool)

(declare-fun e!4594264 () Bool)

(assert (=> b!7749608 (= e!4594264 tp_is_empty!51551)))

(declare-fun b!7749610 () Bool)

(declare-fun tp!2273507 () Bool)

(assert (=> b!7749610 (= e!4594264 tp!2273507)))

(declare-fun b!7749609 () Bool)

(declare-fun tp!2273508 () Bool)

(declare-fun tp!2273506 () Bool)

(assert (=> b!7749609 (= e!4594264 (and tp!2273508 tp!2273506))))

(assert (=> b!7749307 (= tp!2273467 e!4594264)))

(declare-fun b!7749611 () Bool)

(declare-fun tp!2273504 () Bool)

(declare-fun tp!2273505 () Bool)

(assert (=> b!7749611 (= e!4594264 (and tp!2273504 tp!2273505))))

(assert (= (and b!7749307 (is-ElementMatch!20598 (regOne!41708 r!14126))) b!7749608))

(assert (= (and b!7749307 (is-Concat!29443 (regOne!41708 r!14126))) b!7749609))

(assert (= (and b!7749307 (is-Star!20598 (regOne!41708 r!14126))) b!7749610))

(assert (= (and b!7749307 (is-Union!20598 (regOne!41708 r!14126))) b!7749611))

(declare-fun b!7749612 () Bool)

(declare-fun e!4594265 () Bool)

(assert (=> b!7749612 (= e!4594265 tp_is_empty!51551)))

(declare-fun b!7749614 () Bool)

(declare-fun tp!2273512 () Bool)

(assert (=> b!7749614 (= e!4594265 tp!2273512)))

(declare-fun b!7749613 () Bool)

(declare-fun tp!2273513 () Bool)

(declare-fun tp!2273511 () Bool)

(assert (=> b!7749613 (= e!4594265 (and tp!2273513 tp!2273511))))

(assert (=> b!7749307 (= tp!2273465 e!4594265)))

(declare-fun b!7749615 () Bool)

(declare-fun tp!2273509 () Bool)

(declare-fun tp!2273510 () Bool)

(assert (=> b!7749615 (= e!4594265 (and tp!2273509 tp!2273510))))

(assert (= (and b!7749307 (is-ElementMatch!20598 (regTwo!41708 r!14126))) b!7749612))

(assert (= (and b!7749307 (is-Concat!29443 (regTwo!41708 r!14126))) b!7749613))

(assert (= (and b!7749307 (is-Star!20598 (regTwo!41708 r!14126))) b!7749614))

(assert (= (and b!7749307 (is-Union!20598 (regTwo!41708 r!14126))) b!7749615))

(declare-fun b!7749616 () Bool)

(declare-fun e!4594266 () Bool)

(assert (=> b!7749616 (= e!4594266 tp_is_empty!51551)))

(declare-fun b!7749618 () Bool)

(declare-fun tp!2273517 () Bool)

(assert (=> b!7749618 (= e!4594266 tp!2273517)))

(declare-fun b!7749617 () Bool)

(declare-fun tp!2273518 () Bool)

(declare-fun tp!2273516 () Bool)

(assert (=> b!7749617 (= e!4594266 (and tp!2273518 tp!2273516))))

(assert (=> b!7749302 (= tp!2273462 e!4594266)))

(declare-fun b!7749619 () Bool)

(declare-fun tp!2273514 () Bool)

(declare-fun tp!2273515 () Bool)

(assert (=> b!7749619 (= e!4594266 (and tp!2273514 tp!2273515))))

(assert (= (and b!7749302 (is-ElementMatch!20598 (regOne!41709 r!14126))) b!7749616))

(assert (= (and b!7749302 (is-Concat!29443 (regOne!41709 r!14126))) b!7749617))

(assert (= (and b!7749302 (is-Star!20598 (regOne!41709 r!14126))) b!7749618))

(assert (= (and b!7749302 (is-Union!20598 (regOne!41709 r!14126))) b!7749619))

(declare-fun b!7749620 () Bool)

(declare-fun e!4594267 () Bool)

(assert (=> b!7749620 (= e!4594267 tp_is_empty!51551)))

(declare-fun b!7749622 () Bool)

(declare-fun tp!2273522 () Bool)

(assert (=> b!7749622 (= e!4594267 tp!2273522)))

(declare-fun b!7749621 () Bool)

(declare-fun tp!2273523 () Bool)

(declare-fun tp!2273521 () Bool)

(assert (=> b!7749621 (= e!4594267 (and tp!2273523 tp!2273521))))

(assert (=> b!7749302 (= tp!2273463 e!4594267)))

(declare-fun b!7749623 () Bool)

(declare-fun tp!2273519 () Bool)

(declare-fun tp!2273520 () Bool)

(assert (=> b!7749623 (= e!4594267 (and tp!2273519 tp!2273520))))

(assert (= (and b!7749302 (is-ElementMatch!20598 (regTwo!41709 r!14126))) b!7749620))

(assert (= (and b!7749302 (is-Concat!29443 (regTwo!41709 r!14126))) b!7749621))

(assert (= (and b!7749302 (is-Star!20598 (regTwo!41709 r!14126))) b!7749622))

(assert (= (and b!7749302 (is-Union!20598 (regTwo!41709 r!14126))) b!7749623))

(push 1)

(assert (not bm!718170))

(assert (not b!7749480))

(assert (not b!7749602))

(assert (not d!2342587))

(assert (not b!7749528))

(assert (not b!7749523))

(assert (not b!7749622))

(assert (not b!7749483))

(assert (not b!7749587))

(assert (not b!7749611))

(assert (not b!7749607))

(assert (not b!7749615))

(assert (not b!7749610))

(assert (not b!7749572))

(assert (not bm!718184))

(assert (not d!2342599))

(assert (not b!7749613))

(assert (not bm!718171))

(assert (not d!2342597))

(assert (not d!2342593))

(assert (not b!7749525))

(assert (not b!7749564))

(assert (not bm!718186))

(assert (not b!7749614))

(assert (not b!7749621))

(assert (not b!7749573))

(assert (not bm!718174))

(assert (not b!7749575))

(assert (not b!7749556))

(assert (not b!7749600))

(assert (not b!7749618))

(assert (not d!2342603))

(assert (not b!7749609))

(assert (not b!7749586))

(assert tp_is_empty!51551)

(assert (not b!7749570))

(assert (not b!7749619))

(assert (not b!7749563))

(assert (not b!7749601))

(assert (not b!7749482))

(assert (not b!7749530))

(assert (not bm!718187))

(assert (not b!7749623))

(assert (not b!7749413))

(assert (not d!2342609))

(assert (not b!7749474))

(assert (not d!2342595))

(assert (not b!7749408))

(assert (not b!7749617))

(assert (not b!7749529))

(assert (not d!2342615))

(assert (not b!7749526))

(assert (not d!2342617))

(assert (not b!7749473))

(assert (not b!7749485))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

