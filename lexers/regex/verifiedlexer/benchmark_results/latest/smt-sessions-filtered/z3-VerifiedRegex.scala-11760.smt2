; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!663922 () Bool)

(assert start!663922)

(declare-fun b!6882327 () Bool)

(assert (=> b!6882327 true))

(assert (=> b!6882327 true))

(assert (=> b!6882327 true))

(declare-fun lambda!389574 () Int)

(declare-fun lambda!389573 () Int)

(assert (=> b!6882327 (not (= lambda!389574 lambda!389573))))

(assert (=> b!6882327 true))

(assert (=> b!6882327 true))

(assert (=> b!6882327 true))

(declare-fun b!6882321 () Bool)

(declare-fun res!2805514 () Bool)

(declare-fun e!4147256 () Bool)

(assert (=> b!6882321 (=> (not res!2805514) (not e!4147256))))

(declare-datatypes ((C!33804 0))(
  ( (C!33805 (val!26604 Int)) )
))
(declare-datatypes ((Regex!16767 0))(
  ( (ElementMatch!16767 (c!1280263 C!33804)) (Concat!25612 (regOne!34046 Regex!16767) (regTwo!34046 Regex!16767)) (EmptyExpr!16767) (Star!16767 (reg!17096 Regex!16767)) (EmptyLang!16767) (Union!16767 (regOne!34047 Regex!16767) (regTwo!34047 Regex!16767)) )
))
(declare-fun r2!6280 () Regex!16767)

(declare-fun validRegex!8475 (Regex!16767) Bool)

(assert (=> b!6882321 (= res!2805514 (validRegex!8475 r2!6280))))

(declare-fun res!2805511 () Bool)

(assert (=> start!663922 (=> (not res!2805511) (not e!4147256))))

(declare-fun r1!6342 () Regex!16767)

(assert (=> start!663922 (= res!2805511 (validRegex!8475 r1!6342))))

(assert (=> start!663922 e!4147256))

(declare-fun e!4147255 () Bool)

(assert (=> start!663922 e!4147255))

(declare-fun e!4147253 () Bool)

(assert (=> start!663922 e!4147253))

(declare-fun e!4147257 () Bool)

(assert (=> start!663922 e!4147257))

(declare-fun e!4147258 () Bool)

(assert (=> start!663922 e!4147258))

(declare-fun b!6882322 () Bool)

(declare-fun tp!1892864 () Bool)

(declare-fun tp!1892856 () Bool)

(assert (=> b!6882322 (= e!4147253 (and tp!1892864 tp!1892856))))

(declare-fun b!6882323 () Bool)

(declare-fun tp_is_empty!42759 () Bool)

(declare-fun tp!1892860 () Bool)

(assert (=> b!6882323 (= e!4147258 (and tp_is_empty!42759 tp!1892860))))

(declare-fun b!6882324 () Bool)

(declare-fun tp!1892871 () Bool)

(declare-fun tp!1892858 () Bool)

(assert (=> b!6882324 (= e!4147257 (and tp!1892871 tp!1892858))))

(declare-fun b!6882325 () Bool)

(assert (=> b!6882325 (= e!4147255 tp_is_empty!42759)))

(declare-fun b!6882326 () Bool)

(declare-fun tp!1892863 () Bool)

(assert (=> b!6882326 (= e!4147253 tp!1892863)))

(declare-fun e!4147254 () Bool)

(declare-fun lt!2459943 () Regex!16767)

(assert (=> b!6882327 (= e!4147254 (validRegex!8475 lt!2459943))))

(declare-datatypes ((List!66524 0))(
  ( (Nil!66400) (Cons!66400 (h!72848 C!33804) (t!380267 List!66524)) )
))
(declare-datatypes ((tuple2!67280 0))(
  ( (tuple2!67281 (_1!36943 List!66524) (_2!36943 List!66524)) )
))
(declare-fun lt!2459938 () tuple2!67280)

(declare-fun matchR!8912 (Regex!16767 List!66524) Bool)

(declare-fun matchRSpec!3830 (Regex!16767 List!66524) Bool)

(assert (=> b!6882327 (= (matchR!8912 lt!2459943 (_1!36943 lt!2459938)) (matchRSpec!3830 lt!2459943 (_1!36943 lt!2459938)))))

(declare-datatypes ((Unit!160254 0))(
  ( (Unit!160255) )
))
(declare-fun lt!2459936 () Unit!160254)

(declare-fun mainMatchTheorem!3830 (Regex!16767 List!66524) Unit!160254)

(assert (=> b!6882327 (= lt!2459936 (mainMatchTheorem!3830 lt!2459943 (_1!36943 lt!2459938)))))

(declare-datatypes ((Option!16552 0))(
  ( (None!16551) (Some!16551 (v!52823 tuple2!67280)) )
))
(declare-fun lt!2459934 () Option!16552)

(declare-fun get!23113 (Option!16552) tuple2!67280)

(assert (=> b!6882327 (= lt!2459938 (get!23113 lt!2459934))))

(declare-fun Exists!3779 (Int) Bool)

(assert (=> b!6882327 (= (Exists!3779 lambda!389573) (Exists!3779 lambda!389574))))

(declare-fun lt!2459939 () Unit!160254)

(declare-fun r3!135 () Regex!16767)

(declare-fun s!14361 () List!66524)

(declare-fun lemmaExistCutMatchRandMatchRSpecEquivalent!2258 (Regex!16767 Regex!16767 List!66524) Unit!160254)

(assert (=> b!6882327 (= lt!2459939 (lemmaExistCutMatchRandMatchRSpecEquivalent!2258 lt!2459943 r3!135 s!14361))))

(declare-fun isDefined!13255 (Option!16552) Bool)

(assert (=> b!6882327 (= (isDefined!13255 lt!2459934) (Exists!3779 lambda!389573))))

(declare-fun findConcatSeparation!2966 (Regex!16767 Regex!16767 List!66524 List!66524 List!66524) Option!16552)

(assert (=> b!6882327 (= lt!2459934 (findConcatSeparation!2966 lt!2459943 r3!135 Nil!66400 s!14361 s!14361))))

(declare-fun lt!2459935 () Unit!160254)

(declare-fun lemmaFindConcatSeparationEquivalentToExists!2730 (Regex!16767 Regex!16767 List!66524) Unit!160254)

(assert (=> b!6882327 (= lt!2459935 (lemmaFindConcatSeparationEquivalentToExists!2730 lt!2459943 r3!135 s!14361))))

(declare-fun b!6882328 () Bool)

(declare-fun tp!1892868 () Bool)

(declare-fun tp!1892867 () Bool)

(assert (=> b!6882328 (= e!4147253 (and tp!1892868 tp!1892867))))

(declare-fun b!6882329 () Bool)

(declare-fun tp!1892861 () Bool)

(declare-fun tp!1892866 () Bool)

(assert (=> b!6882329 (= e!4147255 (and tp!1892861 tp!1892866))))

(declare-fun b!6882330 () Bool)

(declare-fun res!2805512 () Bool)

(assert (=> b!6882330 (=> (not res!2805512) (not e!4147256))))

(assert (=> b!6882330 (= res!2805512 (validRegex!8475 r3!135))))

(declare-fun b!6882331 () Bool)

(assert (=> b!6882331 (= e!4147253 tp_is_empty!42759)))

(declare-fun b!6882332 () Bool)

(assert (=> b!6882332 (= e!4147257 tp_is_empty!42759)))

(declare-fun b!6882333 () Bool)

(declare-fun tp!1892859 () Bool)

(declare-fun tp!1892857 () Bool)

(assert (=> b!6882333 (= e!4147255 (and tp!1892859 tp!1892857))))

(declare-fun b!6882334 () Bool)

(declare-fun tp!1892865 () Bool)

(assert (=> b!6882334 (= e!4147255 tp!1892865)))

(declare-fun b!6882335 () Bool)

(declare-fun tp!1892862 () Bool)

(declare-fun tp!1892869 () Bool)

(assert (=> b!6882335 (= e!4147257 (and tp!1892862 tp!1892869))))

(declare-fun b!6882336 () Bool)

(assert (=> b!6882336 (= e!4147256 (not e!4147254))))

(declare-fun res!2805513 () Bool)

(assert (=> b!6882336 (=> res!2805513 e!4147254)))

(declare-fun lt!2459940 () Bool)

(assert (=> b!6882336 (= res!2805513 (not lt!2459940))))

(declare-fun lt!2459933 () Regex!16767)

(assert (=> b!6882336 (= (matchR!8912 lt!2459933 s!14361) (matchRSpec!3830 lt!2459933 s!14361))))

(declare-fun lt!2459941 () Unit!160254)

(assert (=> b!6882336 (= lt!2459941 (mainMatchTheorem!3830 lt!2459933 s!14361))))

(declare-fun lt!2459942 () Regex!16767)

(assert (=> b!6882336 (= lt!2459940 (matchRSpec!3830 lt!2459942 s!14361))))

(assert (=> b!6882336 (= lt!2459940 (matchR!8912 lt!2459942 s!14361))))

(declare-fun lt!2459937 () Unit!160254)

(assert (=> b!6882336 (= lt!2459937 (mainMatchTheorem!3830 lt!2459942 s!14361))))

(assert (=> b!6882336 (= lt!2459933 (Concat!25612 r1!6342 (Concat!25612 r2!6280 r3!135)))))

(assert (=> b!6882336 (= lt!2459942 (Concat!25612 lt!2459943 r3!135))))

(assert (=> b!6882336 (= lt!2459943 (Concat!25612 r1!6342 r2!6280))))

(declare-fun b!6882337 () Bool)

(declare-fun tp!1892870 () Bool)

(assert (=> b!6882337 (= e!4147257 tp!1892870)))

(assert (= (and start!663922 res!2805511) b!6882321))

(assert (= (and b!6882321 res!2805514) b!6882330))

(assert (= (and b!6882330 res!2805512) b!6882336))

(assert (= (and b!6882336 (not res!2805513)) b!6882327))

(get-info :version)

(assert (= (and start!663922 ((_ is ElementMatch!16767) r1!6342)) b!6882325))

(assert (= (and start!663922 ((_ is Concat!25612) r1!6342)) b!6882329))

(assert (= (and start!663922 ((_ is Star!16767) r1!6342)) b!6882334))

(assert (= (and start!663922 ((_ is Union!16767) r1!6342)) b!6882333))

(assert (= (and start!663922 ((_ is ElementMatch!16767) r2!6280)) b!6882331))

(assert (= (and start!663922 ((_ is Concat!25612) r2!6280)) b!6882328))

(assert (= (and start!663922 ((_ is Star!16767) r2!6280)) b!6882326))

(assert (= (and start!663922 ((_ is Union!16767) r2!6280)) b!6882322))

(assert (= (and start!663922 ((_ is ElementMatch!16767) r3!135)) b!6882332))

(assert (= (and start!663922 ((_ is Concat!25612) r3!135)) b!6882335))

(assert (= (and start!663922 ((_ is Star!16767) r3!135)) b!6882337))

(assert (= (and start!663922 ((_ is Union!16767) r3!135)) b!6882324))

(assert (= (and start!663922 ((_ is Cons!66400) s!14361)) b!6882323))

(declare-fun m!7606856 () Bool)

(assert (=> b!6882321 m!7606856))

(declare-fun m!7606858 () Bool)

(assert (=> b!6882327 m!7606858))

(declare-fun m!7606860 () Bool)

(assert (=> b!6882327 m!7606860))

(declare-fun m!7606862 () Bool)

(assert (=> b!6882327 m!7606862))

(declare-fun m!7606864 () Bool)

(assert (=> b!6882327 m!7606864))

(declare-fun m!7606866 () Bool)

(assert (=> b!6882327 m!7606866))

(declare-fun m!7606868 () Bool)

(assert (=> b!6882327 m!7606868))

(declare-fun m!7606870 () Bool)

(assert (=> b!6882327 m!7606870))

(declare-fun m!7606872 () Bool)

(assert (=> b!6882327 m!7606872))

(assert (=> b!6882327 m!7606864))

(declare-fun m!7606874 () Bool)

(assert (=> b!6882327 m!7606874))

(declare-fun m!7606876 () Bool)

(assert (=> b!6882327 m!7606876))

(declare-fun m!7606878 () Bool)

(assert (=> b!6882327 m!7606878))

(declare-fun m!7606880 () Bool)

(assert (=> b!6882330 m!7606880))

(declare-fun m!7606882 () Bool)

(assert (=> start!663922 m!7606882))

(declare-fun m!7606884 () Bool)

(assert (=> b!6882336 m!7606884))

(declare-fun m!7606886 () Bool)

(assert (=> b!6882336 m!7606886))

(declare-fun m!7606888 () Bool)

(assert (=> b!6882336 m!7606888))

(declare-fun m!7606890 () Bool)

(assert (=> b!6882336 m!7606890))

(declare-fun m!7606892 () Bool)

(assert (=> b!6882336 m!7606892))

(declare-fun m!7606894 () Bool)

(assert (=> b!6882336 m!7606894))

(check-sat (not b!6882326) (not b!6882337) (not b!6882330) (not b!6882328) (not b!6882327) (not b!6882322) (not b!6882324) (not b!6882329) (not b!6882334) (not b!6882336) (not b!6882321) (not b!6882323) (not b!6882335) tp_is_empty!42759 (not b!6882333) (not start!663922))
(check-sat)
(get-model)

(declare-fun d!2160149 () Bool)

(declare-fun res!2805550 () Bool)

(declare-fun e!4147306 () Bool)

(assert (=> d!2160149 (=> res!2805550 e!4147306)))

(assert (=> d!2160149 (= res!2805550 ((_ is ElementMatch!16767) r3!135))))

(assert (=> d!2160149 (= (validRegex!8475 r3!135) e!4147306)))

(declare-fun b!6882405 () Bool)

(declare-fun res!2805553 () Bool)

(declare-fun e!4147304 () Bool)

(assert (=> b!6882405 (=> res!2805553 e!4147304)))

(assert (=> b!6882405 (= res!2805553 (not ((_ is Concat!25612) r3!135)))))

(declare-fun e!4147305 () Bool)

(assert (=> b!6882405 (= e!4147305 e!4147304)))

(declare-fun b!6882406 () Bool)

(declare-fun e!4147309 () Bool)

(declare-fun call!626558 () Bool)

(assert (=> b!6882406 (= e!4147309 call!626558)))

(declare-fun b!6882407 () Bool)

(declare-fun e!4147310 () Bool)

(declare-fun call!626559 () Bool)

(assert (=> b!6882407 (= e!4147310 call!626559)))

(declare-fun b!6882408 () Bool)

(declare-fun res!2805551 () Bool)

(declare-fun e!4147308 () Bool)

(assert (=> b!6882408 (=> (not res!2805551) (not e!4147308))))

(assert (=> b!6882408 (= res!2805551 call!626558)))

(assert (=> b!6882408 (= e!4147305 e!4147308)))

(declare-fun bm!626552 () Bool)

(declare-fun call!626557 () Bool)

(declare-fun c!1280279 () Bool)

(assert (=> bm!626552 (= call!626557 (validRegex!8475 (ite c!1280279 (regTwo!34047 r3!135) (regOne!34046 r3!135))))))

(declare-fun b!6882409 () Bool)

(assert (=> b!6882409 (= e!4147304 e!4147309)))

(declare-fun res!2805554 () Bool)

(assert (=> b!6882409 (=> (not res!2805554) (not e!4147309))))

(assert (=> b!6882409 (= res!2805554 call!626557)))

(declare-fun b!6882410 () Bool)

(declare-fun e!4147307 () Bool)

(assert (=> b!6882410 (= e!4147307 e!4147310)))

(declare-fun res!2805552 () Bool)

(declare-fun nullable!6678 (Regex!16767) Bool)

(assert (=> b!6882410 (= res!2805552 (not (nullable!6678 (reg!17096 r3!135))))))

(assert (=> b!6882410 (=> (not res!2805552) (not e!4147310))))

(declare-fun b!6882411 () Bool)

(assert (=> b!6882411 (= e!4147306 e!4147307)))

(declare-fun c!1280278 () Bool)

(assert (=> b!6882411 (= c!1280278 ((_ is Star!16767) r3!135))))

(declare-fun bm!626553 () Bool)

(assert (=> bm!626553 (= call!626559 (validRegex!8475 (ite c!1280278 (reg!17096 r3!135) (ite c!1280279 (regOne!34047 r3!135) (regTwo!34046 r3!135)))))))

(declare-fun bm!626554 () Bool)

(assert (=> bm!626554 (= call!626558 call!626559)))

(declare-fun b!6882412 () Bool)

(assert (=> b!6882412 (= e!4147307 e!4147305)))

(assert (=> b!6882412 (= c!1280279 ((_ is Union!16767) r3!135))))

(declare-fun b!6882413 () Bool)

(assert (=> b!6882413 (= e!4147308 call!626557)))

(assert (= (and d!2160149 (not res!2805550)) b!6882411))

(assert (= (and b!6882411 c!1280278) b!6882410))

(assert (= (and b!6882411 (not c!1280278)) b!6882412))

(assert (= (and b!6882410 res!2805552) b!6882407))

(assert (= (and b!6882412 c!1280279) b!6882408))

(assert (= (and b!6882412 (not c!1280279)) b!6882405))

(assert (= (and b!6882408 res!2805551) b!6882413))

(assert (= (and b!6882405 (not res!2805553)) b!6882409))

(assert (= (and b!6882409 res!2805554) b!6882406))

(assert (= (or b!6882408 b!6882406) bm!626554))

(assert (= (or b!6882413 b!6882409) bm!626552))

(assert (= (or b!6882407 bm!626554) bm!626553))

(declare-fun m!7606902 () Bool)

(assert (=> bm!626552 m!7606902))

(declare-fun m!7606904 () Bool)

(assert (=> b!6882410 m!7606904))

(declare-fun m!7606906 () Bool)

(assert (=> bm!626553 m!7606906))

(assert (=> b!6882330 d!2160149))

(declare-fun d!2160153 () Bool)

(declare-fun res!2805560 () Bool)

(declare-fun e!4147318 () Bool)

(assert (=> d!2160153 (=> res!2805560 e!4147318)))

(assert (=> d!2160153 (= res!2805560 ((_ is ElementMatch!16767) r1!6342))))

(assert (=> d!2160153 (= (validRegex!8475 r1!6342) e!4147318)))

(declare-fun b!6882423 () Bool)

(declare-fun res!2805563 () Bool)

(declare-fun e!4147316 () Bool)

(assert (=> b!6882423 (=> res!2805563 e!4147316)))

(assert (=> b!6882423 (= res!2805563 (not ((_ is Concat!25612) r1!6342)))))

(declare-fun e!4147317 () Bool)

(assert (=> b!6882423 (= e!4147317 e!4147316)))

(declare-fun b!6882424 () Bool)

(declare-fun e!4147321 () Bool)

(declare-fun call!626561 () Bool)

(assert (=> b!6882424 (= e!4147321 call!626561)))

(declare-fun b!6882425 () Bool)

(declare-fun e!4147322 () Bool)

(declare-fun call!626562 () Bool)

(assert (=> b!6882425 (= e!4147322 call!626562)))

(declare-fun b!6882426 () Bool)

(declare-fun res!2805561 () Bool)

(declare-fun e!4147320 () Bool)

(assert (=> b!6882426 (=> (not res!2805561) (not e!4147320))))

(assert (=> b!6882426 (= res!2805561 call!626561)))

(assert (=> b!6882426 (= e!4147317 e!4147320)))

(declare-fun bm!626555 () Bool)

(declare-fun call!626560 () Bool)

(declare-fun c!1280283 () Bool)

(assert (=> bm!626555 (= call!626560 (validRegex!8475 (ite c!1280283 (regTwo!34047 r1!6342) (regOne!34046 r1!6342))))))

(declare-fun b!6882427 () Bool)

(assert (=> b!6882427 (= e!4147316 e!4147321)))

(declare-fun res!2805564 () Bool)

(assert (=> b!6882427 (=> (not res!2805564) (not e!4147321))))

(assert (=> b!6882427 (= res!2805564 call!626560)))

(declare-fun b!6882428 () Bool)

(declare-fun e!4147319 () Bool)

(assert (=> b!6882428 (= e!4147319 e!4147322)))

(declare-fun res!2805562 () Bool)

(assert (=> b!6882428 (= res!2805562 (not (nullable!6678 (reg!17096 r1!6342))))))

(assert (=> b!6882428 (=> (not res!2805562) (not e!4147322))))

(declare-fun b!6882429 () Bool)

(assert (=> b!6882429 (= e!4147318 e!4147319)))

(declare-fun c!1280282 () Bool)

(assert (=> b!6882429 (= c!1280282 ((_ is Star!16767) r1!6342))))

(declare-fun bm!626556 () Bool)

(assert (=> bm!626556 (= call!626562 (validRegex!8475 (ite c!1280282 (reg!17096 r1!6342) (ite c!1280283 (regOne!34047 r1!6342) (regTwo!34046 r1!6342)))))))

(declare-fun bm!626557 () Bool)

(assert (=> bm!626557 (= call!626561 call!626562)))

(declare-fun b!6882430 () Bool)

(assert (=> b!6882430 (= e!4147319 e!4147317)))

(assert (=> b!6882430 (= c!1280283 ((_ is Union!16767) r1!6342))))

(declare-fun b!6882431 () Bool)

(assert (=> b!6882431 (= e!4147320 call!626560)))

(assert (= (and d!2160153 (not res!2805560)) b!6882429))

(assert (= (and b!6882429 c!1280282) b!6882428))

(assert (= (and b!6882429 (not c!1280282)) b!6882430))

(assert (= (and b!6882428 res!2805562) b!6882425))

(assert (= (and b!6882430 c!1280283) b!6882426))

(assert (= (and b!6882430 (not c!1280283)) b!6882423))

(assert (= (and b!6882426 res!2805561) b!6882431))

(assert (= (and b!6882423 (not res!2805563)) b!6882427))

(assert (= (and b!6882427 res!2805564) b!6882424))

(assert (= (or b!6882426 b!6882424) bm!626557))

(assert (= (or b!6882431 b!6882427) bm!626555))

(assert (= (or b!6882425 bm!626557) bm!626556))

(declare-fun m!7606930 () Bool)

(assert (=> bm!626555 m!7606930))

(declare-fun m!7606932 () Bool)

(assert (=> b!6882428 m!7606932))

(declare-fun m!7606934 () Bool)

(assert (=> bm!626556 m!7606934))

(assert (=> start!663922 d!2160153))

(declare-fun d!2160157 () Bool)

(assert (=> d!2160157 (= (matchR!8912 lt!2459933 s!14361) (matchRSpec!3830 lt!2459933 s!14361))))

(declare-fun lt!2459957 () Unit!160254)

(declare-fun choose!51262 (Regex!16767 List!66524) Unit!160254)

(assert (=> d!2160157 (= lt!2459957 (choose!51262 lt!2459933 s!14361))))

(assert (=> d!2160157 (validRegex!8475 lt!2459933)))

(assert (=> d!2160157 (= (mainMatchTheorem!3830 lt!2459933 s!14361) lt!2459957)))

(declare-fun bs!1838178 () Bool)

(assert (= bs!1838178 d!2160157))

(assert (=> bs!1838178 m!7606894))

(assert (=> bs!1838178 m!7606888))

(declare-fun m!7606936 () Bool)

(assert (=> bs!1838178 m!7606936))

(declare-fun m!7606938 () Bool)

(assert (=> bs!1838178 m!7606938))

(assert (=> b!6882336 d!2160157))

(declare-fun bs!1838189 () Bool)

(declare-fun b!6882566 () Bool)

(assert (= bs!1838189 (and b!6882566 b!6882327)))

(declare-fun lambda!389590 () Int)

(assert (=> bs!1838189 (not (= lambda!389590 lambda!389573))))

(assert (=> bs!1838189 (not (= lambda!389590 lambda!389574))))

(assert (=> b!6882566 true))

(assert (=> b!6882566 true))

(declare-fun bs!1838191 () Bool)

(declare-fun b!6882563 () Bool)

(assert (= bs!1838191 (and b!6882563 b!6882327)))

(declare-fun lambda!389592 () Int)

(assert (=> bs!1838191 (not (= lambda!389592 lambda!389573))))

(assert (=> bs!1838191 (= (and (= (regOne!34046 lt!2459942) lt!2459943) (= (regTwo!34046 lt!2459942) r3!135)) (= lambda!389592 lambda!389574))))

(declare-fun bs!1838192 () Bool)

(assert (= bs!1838192 (and b!6882563 b!6882566)))

(assert (=> bs!1838192 (not (= lambda!389592 lambda!389590))))

(assert (=> b!6882563 true))

(assert (=> b!6882563 true))

(declare-fun b!6882557 () Bool)

(declare-fun e!4147391 () Bool)

(declare-fun e!4147393 () Bool)

(assert (=> b!6882557 (= e!4147391 e!4147393)))

(declare-fun c!1280315 () Bool)

(assert (=> b!6882557 (= c!1280315 ((_ is Star!16767) lt!2459942))))

(declare-fun b!6882558 () Bool)

(declare-fun e!4147395 () Bool)

(declare-fun e!4147397 () Bool)

(assert (=> b!6882558 (= e!4147395 e!4147397)))

(declare-fun res!2805632 () Bool)

(assert (=> b!6882558 (= res!2805632 (not ((_ is EmptyLang!16767) lt!2459942)))))

(assert (=> b!6882558 (=> (not res!2805632) (not e!4147397))))

(declare-fun b!6882559 () Bool)

(declare-fun e!4147396 () Bool)

(assert (=> b!6882559 (= e!4147391 e!4147396)))

(declare-fun res!2805633 () Bool)

(assert (=> b!6882559 (= res!2805633 (matchRSpec!3830 (regOne!34047 lt!2459942) s!14361))))

(assert (=> b!6882559 (=> res!2805633 e!4147396)))

(declare-fun b!6882560 () Bool)

(declare-fun e!4147392 () Bool)

(assert (=> b!6882560 (= e!4147392 (= s!14361 (Cons!66400 (c!1280263 lt!2459942) Nil!66400)))))

(declare-fun b!6882561 () Bool)

(declare-fun call!626576 () Bool)

(assert (=> b!6882561 (= e!4147395 call!626576)))

(declare-fun b!6882562 () Bool)

(declare-fun c!1280313 () Bool)

(assert (=> b!6882562 (= c!1280313 ((_ is ElementMatch!16767) lt!2459942))))

(assert (=> b!6882562 (= e!4147397 e!4147392)))

(declare-fun call!626577 () Bool)

(assert (=> b!6882563 (= e!4147393 call!626577)))

(declare-fun b!6882564 () Bool)

(assert (=> b!6882564 (= e!4147396 (matchRSpec!3830 (regTwo!34047 lt!2459942) s!14361))))

(declare-fun d!2160161 () Bool)

(declare-fun c!1280316 () Bool)

(assert (=> d!2160161 (= c!1280316 ((_ is EmptyExpr!16767) lt!2459942))))

(assert (=> d!2160161 (= (matchRSpec!3830 lt!2459942 s!14361) e!4147395)))

(declare-fun bm!626571 () Bool)

(assert (=> bm!626571 (= call!626577 (Exists!3779 (ite c!1280315 lambda!389590 lambda!389592)))))

(declare-fun b!6882565 () Bool)

(declare-fun c!1280314 () Bool)

(assert (=> b!6882565 (= c!1280314 ((_ is Union!16767) lt!2459942))))

(assert (=> b!6882565 (= e!4147392 e!4147391)))

(declare-fun e!4147394 () Bool)

(assert (=> b!6882566 (= e!4147394 call!626577)))

(declare-fun bm!626572 () Bool)

(declare-fun isEmpty!38674 (List!66524) Bool)

(assert (=> bm!626572 (= call!626576 (isEmpty!38674 s!14361))))

(declare-fun b!6882567 () Bool)

(declare-fun res!2805634 () Bool)

(assert (=> b!6882567 (=> res!2805634 e!4147394)))

(assert (=> b!6882567 (= res!2805634 call!626576)))

(assert (=> b!6882567 (= e!4147393 e!4147394)))

(assert (= (and d!2160161 c!1280316) b!6882561))

(assert (= (and d!2160161 (not c!1280316)) b!6882558))

(assert (= (and b!6882558 res!2805632) b!6882562))

(assert (= (and b!6882562 c!1280313) b!6882560))

(assert (= (and b!6882562 (not c!1280313)) b!6882565))

(assert (= (and b!6882565 c!1280314) b!6882559))

(assert (= (and b!6882565 (not c!1280314)) b!6882557))

(assert (= (and b!6882559 (not res!2805633)) b!6882564))

(assert (= (and b!6882557 c!1280315) b!6882567))

(assert (= (and b!6882557 (not c!1280315)) b!6882563))

(assert (= (and b!6882567 (not res!2805634)) b!6882566))

(assert (= (or b!6882566 b!6882563) bm!626571))

(assert (= (or b!6882561 b!6882567) bm!626572))

(declare-fun m!7606974 () Bool)

(assert (=> b!6882559 m!7606974))

(declare-fun m!7606976 () Bool)

(assert (=> b!6882564 m!7606976))

(declare-fun m!7606978 () Bool)

(assert (=> bm!626571 m!7606978))

(declare-fun m!7606980 () Bool)

(assert (=> bm!626572 m!7606980))

(assert (=> b!6882336 d!2160161))

(declare-fun b!6882752 () Bool)

(declare-fun e!4147484 () Bool)

(declare-fun derivativeStep!5357 (Regex!16767 C!33804) Regex!16767)

(declare-fun head!13810 (List!66524) C!33804)

(declare-fun tail!12862 (List!66524) List!66524)

(assert (=> b!6882752 (= e!4147484 (matchR!8912 (derivativeStep!5357 lt!2459942 (head!13810 s!14361)) (tail!12862 s!14361)))))

(declare-fun d!2160177 () Bool)

(declare-fun e!4147487 () Bool)

(assert (=> d!2160177 e!4147487))

(declare-fun c!1280344 () Bool)

(assert (=> d!2160177 (= c!1280344 ((_ is EmptyExpr!16767) lt!2459942))))

(declare-fun lt!2459974 () Bool)

(assert (=> d!2160177 (= lt!2459974 e!4147484)))

(declare-fun c!1280345 () Bool)

(assert (=> d!2160177 (= c!1280345 (isEmpty!38674 s!14361))))

(assert (=> d!2160177 (validRegex!8475 lt!2459942)))

(assert (=> d!2160177 (= (matchR!8912 lt!2459942 s!14361) lt!2459974)))

(declare-fun b!6882753 () Bool)

(declare-fun e!4147488 () Bool)

(declare-fun e!4147483 () Bool)

(assert (=> b!6882753 (= e!4147488 e!4147483)))

(declare-fun res!2805694 () Bool)

(assert (=> b!6882753 (=> (not res!2805694) (not e!4147483))))

(assert (=> b!6882753 (= res!2805694 (not lt!2459974))))

(declare-fun b!6882754 () Bool)

(assert (=> b!6882754 (= e!4147484 (nullable!6678 lt!2459942))))

(declare-fun b!6882755 () Bool)

(declare-fun e!4147485 () Bool)

(assert (=> b!6882755 (= e!4147485 (= (head!13810 s!14361) (c!1280263 lt!2459942)))))

(declare-fun bm!626590 () Bool)

(declare-fun call!626595 () Bool)

(assert (=> bm!626590 (= call!626595 (isEmpty!38674 s!14361))))

(declare-fun b!6882756 () Bool)

(declare-fun e!4147486 () Bool)

(assert (=> b!6882756 (= e!4147487 e!4147486)))

(declare-fun c!1280343 () Bool)

(assert (=> b!6882756 (= c!1280343 ((_ is EmptyLang!16767) lt!2459942))))

(declare-fun b!6882757 () Bool)

(declare-fun res!2805692 () Bool)

(assert (=> b!6882757 (=> (not res!2805692) (not e!4147485))))

(assert (=> b!6882757 (= res!2805692 (not call!626595))))

(declare-fun b!6882758 () Bool)

(declare-fun e!4147489 () Bool)

(assert (=> b!6882758 (= e!4147489 (not (= (head!13810 s!14361) (c!1280263 lt!2459942))))))

(declare-fun b!6882759 () Bool)

(declare-fun res!2805696 () Bool)

(assert (=> b!6882759 (=> (not res!2805696) (not e!4147485))))

(assert (=> b!6882759 (= res!2805696 (isEmpty!38674 (tail!12862 s!14361)))))

(declare-fun b!6882760 () Bool)

(declare-fun res!2805699 () Bool)

(assert (=> b!6882760 (=> res!2805699 e!4147489)))

(assert (=> b!6882760 (= res!2805699 (not (isEmpty!38674 (tail!12862 s!14361))))))

(declare-fun b!6882761 () Bool)

(declare-fun res!2805695 () Bool)

(assert (=> b!6882761 (=> res!2805695 e!4147488)))

(assert (=> b!6882761 (= res!2805695 (not ((_ is ElementMatch!16767) lt!2459942)))))

(assert (=> b!6882761 (= e!4147486 e!4147488)))

(declare-fun b!6882762 () Bool)

(assert (=> b!6882762 (= e!4147483 e!4147489)))

(declare-fun res!2805698 () Bool)

(assert (=> b!6882762 (=> res!2805698 e!4147489)))

(assert (=> b!6882762 (= res!2805698 call!626595)))

(declare-fun b!6882763 () Bool)

(assert (=> b!6882763 (= e!4147487 (= lt!2459974 call!626595))))

(declare-fun b!6882764 () Bool)

(declare-fun res!2805693 () Bool)

(assert (=> b!6882764 (=> res!2805693 e!4147488)))

(assert (=> b!6882764 (= res!2805693 e!4147485)))

(declare-fun res!2805697 () Bool)

(assert (=> b!6882764 (=> (not res!2805697) (not e!4147485))))

(assert (=> b!6882764 (= res!2805697 lt!2459974)))

(declare-fun b!6882765 () Bool)

(assert (=> b!6882765 (= e!4147486 (not lt!2459974))))

(assert (= (and d!2160177 c!1280345) b!6882754))

(assert (= (and d!2160177 (not c!1280345)) b!6882752))

(assert (= (and d!2160177 c!1280344) b!6882763))

(assert (= (and d!2160177 (not c!1280344)) b!6882756))

(assert (= (and b!6882756 c!1280343) b!6882765))

(assert (= (and b!6882756 (not c!1280343)) b!6882761))

(assert (= (and b!6882761 (not res!2805695)) b!6882764))

(assert (= (and b!6882764 res!2805697) b!6882757))

(assert (= (and b!6882757 res!2805692) b!6882759))

(assert (= (and b!6882759 res!2805696) b!6882755))

(assert (= (and b!6882764 (not res!2805693)) b!6882753))

(assert (= (and b!6882753 res!2805694) b!6882762))

(assert (= (and b!6882762 (not res!2805698)) b!6882760))

(assert (= (and b!6882760 (not res!2805699)) b!6882758))

(assert (= (or b!6882763 b!6882757 b!6882762) bm!626590))

(declare-fun m!7607046 () Bool)

(assert (=> b!6882758 m!7607046))

(assert (=> bm!626590 m!7606980))

(declare-fun m!7607048 () Bool)

(assert (=> b!6882760 m!7607048))

(assert (=> b!6882760 m!7607048))

(declare-fun m!7607050 () Bool)

(assert (=> b!6882760 m!7607050))

(declare-fun m!7607052 () Bool)

(assert (=> b!6882754 m!7607052))

(assert (=> b!6882755 m!7607046))

(assert (=> d!2160177 m!7606980))

(declare-fun m!7607054 () Bool)

(assert (=> d!2160177 m!7607054))

(assert (=> b!6882752 m!7607046))

(assert (=> b!6882752 m!7607046))

(declare-fun m!7607056 () Bool)

(assert (=> b!6882752 m!7607056))

(assert (=> b!6882752 m!7607048))

(assert (=> b!6882752 m!7607056))

(assert (=> b!6882752 m!7607048))

(declare-fun m!7607058 () Bool)

(assert (=> b!6882752 m!7607058))

(assert (=> b!6882759 m!7607048))

(assert (=> b!6882759 m!7607048))

(assert (=> b!6882759 m!7607050))

(assert (=> b!6882336 d!2160177))

(declare-fun d!2160197 () Bool)

(assert (=> d!2160197 (= (matchR!8912 lt!2459942 s!14361) (matchRSpec!3830 lt!2459942 s!14361))))

(declare-fun lt!2459975 () Unit!160254)

(assert (=> d!2160197 (= lt!2459975 (choose!51262 lt!2459942 s!14361))))

(assert (=> d!2160197 (validRegex!8475 lt!2459942)))

(assert (=> d!2160197 (= (mainMatchTheorem!3830 lt!2459942 s!14361) lt!2459975)))

(declare-fun bs!1838226 () Bool)

(assert (= bs!1838226 d!2160197))

(assert (=> bs!1838226 m!7606892))

(assert (=> bs!1838226 m!7606886))

(declare-fun m!7607060 () Bool)

(assert (=> bs!1838226 m!7607060))

(assert (=> bs!1838226 m!7607054))

(assert (=> b!6882336 d!2160197))

(declare-fun b!6882766 () Bool)

(declare-fun e!4147491 () Bool)

(assert (=> b!6882766 (= e!4147491 (matchR!8912 (derivativeStep!5357 lt!2459933 (head!13810 s!14361)) (tail!12862 s!14361)))))

(declare-fun d!2160199 () Bool)

(declare-fun e!4147494 () Bool)

(assert (=> d!2160199 e!4147494))

(declare-fun c!1280347 () Bool)

(assert (=> d!2160199 (= c!1280347 ((_ is EmptyExpr!16767) lt!2459933))))

(declare-fun lt!2459976 () Bool)

(assert (=> d!2160199 (= lt!2459976 e!4147491)))

(declare-fun c!1280348 () Bool)

(assert (=> d!2160199 (= c!1280348 (isEmpty!38674 s!14361))))

(assert (=> d!2160199 (validRegex!8475 lt!2459933)))

(assert (=> d!2160199 (= (matchR!8912 lt!2459933 s!14361) lt!2459976)))

(declare-fun b!6882767 () Bool)

(declare-fun e!4147495 () Bool)

(declare-fun e!4147490 () Bool)

(assert (=> b!6882767 (= e!4147495 e!4147490)))

(declare-fun res!2805702 () Bool)

(assert (=> b!6882767 (=> (not res!2805702) (not e!4147490))))

(assert (=> b!6882767 (= res!2805702 (not lt!2459976))))

(declare-fun b!6882768 () Bool)

(assert (=> b!6882768 (= e!4147491 (nullable!6678 lt!2459933))))

(declare-fun b!6882769 () Bool)

(declare-fun e!4147492 () Bool)

(assert (=> b!6882769 (= e!4147492 (= (head!13810 s!14361) (c!1280263 lt!2459933)))))

(declare-fun bm!626591 () Bool)

(declare-fun call!626596 () Bool)

(assert (=> bm!626591 (= call!626596 (isEmpty!38674 s!14361))))

(declare-fun b!6882770 () Bool)

(declare-fun e!4147493 () Bool)

(assert (=> b!6882770 (= e!4147494 e!4147493)))

(declare-fun c!1280346 () Bool)

(assert (=> b!6882770 (= c!1280346 ((_ is EmptyLang!16767) lt!2459933))))

(declare-fun b!6882771 () Bool)

(declare-fun res!2805700 () Bool)

(assert (=> b!6882771 (=> (not res!2805700) (not e!4147492))))

(assert (=> b!6882771 (= res!2805700 (not call!626596))))

(declare-fun b!6882772 () Bool)

(declare-fun e!4147496 () Bool)

(assert (=> b!6882772 (= e!4147496 (not (= (head!13810 s!14361) (c!1280263 lt!2459933))))))

(declare-fun b!6882773 () Bool)

(declare-fun res!2805704 () Bool)

(assert (=> b!6882773 (=> (not res!2805704) (not e!4147492))))

(assert (=> b!6882773 (= res!2805704 (isEmpty!38674 (tail!12862 s!14361)))))

(declare-fun b!6882774 () Bool)

(declare-fun res!2805707 () Bool)

(assert (=> b!6882774 (=> res!2805707 e!4147496)))

(assert (=> b!6882774 (= res!2805707 (not (isEmpty!38674 (tail!12862 s!14361))))))

(declare-fun b!6882775 () Bool)

(declare-fun res!2805703 () Bool)

(assert (=> b!6882775 (=> res!2805703 e!4147495)))

(assert (=> b!6882775 (= res!2805703 (not ((_ is ElementMatch!16767) lt!2459933)))))

(assert (=> b!6882775 (= e!4147493 e!4147495)))

(declare-fun b!6882776 () Bool)

(assert (=> b!6882776 (= e!4147490 e!4147496)))

(declare-fun res!2805706 () Bool)

(assert (=> b!6882776 (=> res!2805706 e!4147496)))

(assert (=> b!6882776 (= res!2805706 call!626596)))

(declare-fun b!6882777 () Bool)

(assert (=> b!6882777 (= e!4147494 (= lt!2459976 call!626596))))

(declare-fun b!6882778 () Bool)

(declare-fun res!2805701 () Bool)

(assert (=> b!6882778 (=> res!2805701 e!4147495)))

(assert (=> b!6882778 (= res!2805701 e!4147492)))

(declare-fun res!2805705 () Bool)

(assert (=> b!6882778 (=> (not res!2805705) (not e!4147492))))

(assert (=> b!6882778 (= res!2805705 lt!2459976)))

(declare-fun b!6882779 () Bool)

(assert (=> b!6882779 (= e!4147493 (not lt!2459976))))

(assert (= (and d!2160199 c!1280348) b!6882768))

(assert (= (and d!2160199 (not c!1280348)) b!6882766))

(assert (= (and d!2160199 c!1280347) b!6882777))

(assert (= (and d!2160199 (not c!1280347)) b!6882770))

(assert (= (and b!6882770 c!1280346) b!6882779))

(assert (= (and b!6882770 (not c!1280346)) b!6882775))

(assert (= (and b!6882775 (not res!2805703)) b!6882778))

(assert (= (and b!6882778 res!2805705) b!6882771))

(assert (= (and b!6882771 res!2805700) b!6882773))

(assert (= (and b!6882773 res!2805704) b!6882769))

(assert (= (and b!6882778 (not res!2805701)) b!6882767))

(assert (= (and b!6882767 res!2805702) b!6882776))

(assert (= (and b!6882776 (not res!2805706)) b!6882774))

(assert (= (and b!6882774 (not res!2805707)) b!6882772))

(assert (= (or b!6882777 b!6882771 b!6882776) bm!626591))

(assert (=> b!6882772 m!7607046))

(assert (=> bm!626591 m!7606980))

(assert (=> b!6882774 m!7607048))

(assert (=> b!6882774 m!7607048))

(assert (=> b!6882774 m!7607050))

(declare-fun m!7607062 () Bool)

(assert (=> b!6882768 m!7607062))

(assert (=> b!6882769 m!7607046))

(assert (=> d!2160199 m!7606980))

(assert (=> d!2160199 m!7606938))

(assert (=> b!6882766 m!7607046))

(assert (=> b!6882766 m!7607046))

(declare-fun m!7607064 () Bool)

(assert (=> b!6882766 m!7607064))

(assert (=> b!6882766 m!7607048))

(assert (=> b!6882766 m!7607064))

(assert (=> b!6882766 m!7607048))

(declare-fun m!7607066 () Bool)

(assert (=> b!6882766 m!7607066))

(assert (=> b!6882773 m!7607048))

(assert (=> b!6882773 m!7607048))

(assert (=> b!6882773 m!7607050))

(assert (=> b!6882336 d!2160199))

(declare-fun bs!1838227 () Bool)

(declare-fun b!6882789 () Bool)

(assert (= bs!1838227 (and b!6882789 b!6882327)))

(declare-fun lambda!389600 () Int)

(assert (=> bs!1838227 (not (= lambda!389600 lambda!389573))))

(assert (=> bs!1838227 (not (= lambda!389600 lambda!389574))))

(declare-fun bs!1838228 () Bool)

(assert (= bs!1838228 (and b!6882789 b!6882566)))

(assert (=> bs!1838228 (= (and (= (reg!17096 lt!2459933) (reg!17096 lt!2459942)) (= lt!2459933 lt!2459942)) (= lambda!389600 lambda!389590))))

(declare-fun bs!1838229 () Bool)

(assert (= bs!1838229 (and b!6882789 b!6882563)))

(assert (=> bs!1838229 (not (= lambda!389600 lambda!389592))))

(assert (=> b!6882789 true))

(assert (=> b!6882789 true))

(declare-fun bs!1838230 () Bool)

(declare-fun b!6882786 () Bool)

(assert (= bs!1838230 (and b!6882786 b!6882327)))

(declare-fun lambda!389601 () Int)

(assert (=> bs!1838230 (not (= lambda!389601 lambda!389573))))

(declare-fun bs!1838231 () Bool)

(assert (= bs!1838231 (and b!6882786 b!6882789)))

(assert (=> bs!1838231 (not (= lambda!389601 lambda!389600))))

(declare-fun bs!1838232 () Bool)

(assert (= bs!1838232 (and b!6882786 b!6882563)))

(assert (=> bs!1838232 (= (and (= (regOne!34046 lt!2459933) (regOne!34046 lt!2459942)) (= (regTwo!34046 lt!2459933) (regTwo!34046 lt!2459942))) (= lambda!389601 lambda!389592))))

(assert (=> bs!1838230 (= (and (= (regOne!34046 lt!2459933) lt!2459943) (= (regTwo!34046 lt!2459933) r3!135)) (= lambda!389601 lambda!389574))))

(declare-fun bs!1838233 () Bool)

(assert (= bs!1838233 (and b!6882786 b!6882566)))

(assert (=> bs!1838233 (not (= lambda!389601 lambda!389590))))

(assert (=> b!6882786 true))

(assert (=> b!6882786 true))

(declare-fun b!6882780 () Bool)

(declare-fun e!4147497 () Bool)

(declare-fun e!4147499 () Bool)

(assert (=> b!6882780 (= e!4147497 e!4147499)))

(declare-fun c!1280351 () Bool)

(assert (=> b!6882780 (= c!1280351 ((_ is Star!16767) lt!2459933))))

(declare-fun b!6882781 () Bool)

(declare-fun e!4147501 () Bool)

(declare-fun e!4147503 () Bool)

(assert (=> b!6882781 (= e!4147501 e!4147503)))

(declare-fun res!2805708 () Bool)

(assert (=> b!6882781 (= res!2805708 (not ((_ is EmptyLang!16767) lt!2459933)))))

(assert (=> b!6882781 (=> (not res!2805708) (not e!4147503))))

(declare-fun b!6882782 () Bool)

(declare-fun e!4147502 () Bool)

(assert (=> b!6882782 (= e!4147497 e!4147502)))

(declare-fun res!2805709 () Bool)

(assert (=> b!6882782 (= res!2805709 (matchRSpec!3830 (regOne!34047 lt!2459933) s!14361))))

(assert (=> b!6882782 (=> res!2805709 e!4147502)))

(declare-fun b!6882783 () Bool)

(declare-fun e!4147498 () Bool)

(assert (=> b!6882783 (= e!4147498 (= s!14361 (Cons!66400 (c!1280263 lt!2459933) Nil!66400)))))

(declare-fun b!6882784 () Bool)

(declare-fun call!626597 () Bool)

(assert (=> b!6882784 (= e!4147501 call!626597)))

(declare-fun b!6882785 () Bool)

(declare-fun c!1280349 () Bool)

(assert (=> b!6882785 (= c!1280349 ((_ is ElementMatch!16767) lt!2459933))))

(assert (=> b!6882785 (= e!4147503 e!4147498)))

(declare-fun call!626598 () Bool)

(assert (=> b!6882786 (= e!4147499 call!626598)))

(declare-fun b!6882787 () Bool)

(assert (=> b!6882787 (= e!4147502 (matchRSpec!3830 (regTwo!34047 lt!2459933) s!14361))))

(declare-fun d!2160201 () Bool)

(declare-fun c!1280352 () Bool)

(assert (=> d!2160201 (= c!1280352 ((_ is EmptyExpr!16767) lt!2459933))))

(assert (=> d!2160201 (= (matchRSpec!3830 lt!2459933 s!14361) e!4147501)))

(declare-fun bm!626592 () Bool)

(assert (=> bm!626592 (= call!626598 (Exists!3779 (ite c!1280351 lambda!389600 lambda!389601)))))

(declare-fun b!6882788 () Bool)

(declare-fun c!1280350 () Bool)

(assert (=> b!6882788 (= c!1280350 ((_ is Union!16767) lt!2459933))))

(assert (=> b!6882788 (= e!4147498 e!4147497)))

(declare-fun e!4147500 () Bool)

(assert (=> b!6882789 (= e!4147500 call!626598)))

(declare-fun bm!626593 () Bool)

(assert (=> bm!626593 (= call!626597 (isEmpty!38674 s!14361))))

(declare-fun b!6882790 () Bool)

(declare-fun res!2805710 () Bool)

(assert (=> b!6882790 (=> res!2805710 e!4147500)))

(assert (=> b!6882790 (= res!2805710 call!626597)))

(assert (=> b!6882790 (= e!4147499 e!4147500)))

(assert (= (and d!2160201 c!1280352) b!6882784))

(assert (= (and d!2160201 (not c!1280352)) b!6882781))

(assert (= (and b!6882781 res!2805708) b!6882785))

(assert (= (and b!6882785 c!1280349) b!6882783))

(assert (= (and b!6882785 (not c!1280349)) b!6882788))

(assert (= (and b!6882788 c!1280350) b!6882782))

(assert (= (and b!6882788 (not c!1280350)) b!6882780))

(assert (= (and b!6882782 (not res!2805709)) b!6882787))

(assert (= (and b!6882780 c!1280351) b!6882790))

(assert (= (and b!6882780 (not c!1280351)) b!6882786))

(assert (= (and b!6882790 (not res!2805710)) b!6882789))

(assert (= (or b!6882789 b!6882786) bm!626592))

(assert (= (or b!6882784 b!6882790) bm!626593))

(declare-fun m!7607068 () Bool)

(assert (=> b!6882782 m!7607068))

(declare-fun m!7607070 () Bool)

(assert (=> b!6882787 m!7607070))

(declare-fun m!7607072 () Bool)

(assert (=> bm!626592 m!7607072))

(assert (=> bm!626593 m!7606980))

(assert (=> b!6882336 d!2160201))

(declare-fun d!2160203 () Bool)

(declare-fun choose!51263 (Int) Bool)

(assert (=> d!2160203 (= (Exists!3779 lambda!389573) (choose!51263 lambda!389573))))

(declare-fun bs!1838234 () Bool)

(assert (= bs!1838234 d!2160203))

(declare-fun m!7607074 () Bool)

(assert (=> bs!1838234 m!7607074))

(assert (=> b!6882327 d!2160203))

(declare-fun bs!1838235 () Bool)

(declare-fun d!2160205 () Bool)

(assert (= bs!1838235 (and d!2160205 b!6882327)))

(declare-fun lambda!389606 () Int)

(assert (=> bs!1838235 (= lambda!389606 lambda!389573)))

(declare-fun bs!1838236 () Bool)

(assert (= bs!1838236 (and d!2160205 b!6882789)))

(assert (=> bs!1838236 (not (= lambda!389606 lambda!389600))))

(declare-fun bs!1838237 () Bool)

(assert (= bs!1838237 (and d!2160205 b!6882786)))

(assert (=> bs!1838237 (not (= lambda!389606 lambda!389601))))

(declare-fun bs!1838238 () Bool)

(assert (= bs!1838238 (and d!2160205 b!6882563)))

(assert (=> bs!1838238 (not (= lambda!389606 lambda!389592))))

(assert (=> bs!1838235 (not (= lambda!389606 lambda!389574))))

(declare-fun bs!1838239 () Bool)

(assert (= bs!1838239 (and d!2160205 b!6882566)))

(assert (=> bs!1838239 (not (= lambda!389606 lambda!389590))))

(assert (=> d!2160205 true))

(assert (=> d!2160205 true))

(assert (=> d!2160205 true))

(declare-fun lambda!389607 () Int)

(assert (=> bs!1838235 (not (= lambda!389607 lambda!389573))))

(assert (=> bs!1838236 (not (= lambda!389607 lambda!389600))))

(assert (=> bs!1838237 (= (and (= lt!2459943 (regOne!34046 lt!2459933)) (= r3!135 (regTwo!34046 lt!2459933))) (= lambda!389607 lambda!389601))))

(declare-fun bs!1838240 () Bool)

(assert (= bs!1838240 d!2160205))

(assert (=> bs!1838240 (not (= lambda!389607 lambda!389606))))

(assert (=> bs!1838238 (= (and (= lt!2459943 (regOne!34046 lt!2459942)) (= r3!135 (regTwo!34046 lt!2459942))) (= lambda!389607 lambda!389592))))

(assert (=> bs!1838235 (= lambda!389607 lambda!389574)))

(assert (=> bs!1838239 (not (= lambda!389607 lambda!389590))))

(assert (=> d!2160205 true))

(assert (=> d!2160205 true))

(assert (=> d!2160205 true))

(assert (=> d!2160205 (= (Exists!3779 lambda!389606) (Exists!3779 lambda!389607))))

(declare-fun lt!2459979 () Unit!160254)

(declare-fun choose!51264 (Regex!16767 Regex!16767 List!66524) Unit!160254)

(assert (=> d!2160205 (= lt!2459979 (choose!51264 lt!2459943 r3!135 s!14361))))

(assert (=> d!2160205 (validRegex!8475 lt!2459943)))

(assert (=> d!2160205 (= (lemmaExistCutMatchRandMatchRSpecEquivalent!2258 lt!2459943 r3!135 s!14361) lt!2459979)))

(declare-fun m!7607076 () Bool)

(assert (=> bs!1838240 m!7607076))

(declare-fun m!7607078 () Bool)

(assert (=> bs!1838240 m!7607078))

(declare-fun m!7607080 () Bool)

(assert (=> bs!1838240 m!7607080))

(assert (=> bs!1838240 m!7606858))

(assert (=> b!6882327 d!2160205))

(declare-fun bs!1838241 () Bool)

(declare-fun b!6882808 () Bool)

(assert (= bs!1838241 (and b!6882808 b!6882327)))

(declare-fun lambda!389608 () Int)

(assert (=> bs!1838241 (not (= lambda!389608 lambda!389573))))

(declare-fun bs!1838242 () Bool)

(assert (= bs!1838242 (and b!6882808 b!6882789)))

(assert (=> bs!1838242 (= (and (= (_1!36943 lt!2459938) s!14361) (= (reg!17096 lt!2459943) (reg!17096 lt!2459933)) (= lt!2459943 lt!2459933)) (= lambda!389608 lambda!389600))))

(declare-fun bs!1838243 () Bool)

(assert (= bs!1838243 (and b!6882808 b!6882786)))

(assert (=> bs!1838243 (not (= lambda!389608 lambda!389601))))

(declare-fun bs!1838244 () Bool)

(assert (= bs!1838244 (and b!6882808 d!2160205)))

(assert (=> bs!1838244 (not (= lambda!389608 lambda!389606))))

(declare-fun bs!1838245 () Bool)

(assert (= bs!1838245 (and b!6882808 b!6882563)))

(assert (=> bs!1838245 (not (= lambda!389608 lambda!389592))))

(assert (=> bs!1838241 (not (= lambda!389608 lambda!389574))))

(declare-fun bs!1838246 () Bool)

(assert (= bs!1838246 (and b!6882808 b!6882566)))

(assert (=> bs!1838246 (= (and (= (_1!36943 lt!2459938) s!14361) (= (reg!17096 lt!2459943) (reg!17096 lt!2459942)) (= lt!2459943 lt!2459942)) (= lambda!389608 lambda!389590))))

(assert (=> bs!1838244 (not (= lambda!389608 lambda!389607))))

(assert (=> b!6882808 true))

(assert (=> b!6882808 true))

(declare-fun bs!1838247 () Bool)

(declare-fun b!6882805 () Bool)

(assert (= bs!1838247 (and b!6882805 b!6882808)))

(declare-fun lambda!389609 () Int)

(assert (=> bs!1838247 (not (= lambda!389609 lambda!389608))))

(declare-fun bs!1838248 () Bool)

(assert (= bs!1838248 (and b!6882805 b!6882327)))

(assert (=> bs!1838248 (not (= lambda!389609 lambda!389573))))

(declare-fun bs!1838249 () Bool)

(assert (= bs!1838249 (and b!6882805 b!6882789)))

(assert (=> bs!1838249 (not (= lambda!389609 lambda!389600))))

(declare-fun bs!1838250 () Bool)

(assert (= bs!1838250 (and b!6882805 b!6882786)))

(assert (=> bs!1838250 (= (and (= (_1!36943 lt!2459938) s!14361) (= (regOne!34046 lt!2459943) (regOne!34046 lt!2459933)) (= (regTwo!34046 lt!2459943) (regTwo!34046 lt!2459933))) (= lambda!389609 lambda!389601))))

(declare-fun bs!1838251 () Bool)

(assert (= bs!1838251 (and b!6882805 d!2160205)))

(assert (=> bs!1838251 (not (= lambda!389609 lambda!389606))))

(declare-fun bs!1838252 () Bool)

(assert (= bs!1838252 (and b!6882805 b!6882563)))

(assert (=> bs!1838252 (= (and (= (_1!36943 lt!2459938) s!14361) (= (regOne!34046 lt!2459943) (regOne!34046 lt!2459942)) (= (regTwo!34046 lt!2459943) (regTwo!34046 lt!2459942))) (= lambda!389609 lambda!389592))))

(assert (=> bs!1838248 (= (and (= (_1!36943 lt!2459938) s!14361) (= (regOne!34046 lt!2459943) lt!2459943) (= (regTwo!34046 lt!2459943) r3!135)) (= lambda!389609 lambda!389574))))

(declare-fun bs!1838253 () Bool)

(assert (= bs!1838253 (and b!6882805 b!6882566)))

(assert (=> bs!1838253 (not (= lambda!389609 lambda!389590))))

(assert (=> bs!1838251 (= (and (= (_1!36943 lt!2459938) s!14361) (= (regOne!34046 lt!2459943) lt!2459943) (= (regTwo!34046 lt!2459943) r3!135)) (= lambda!389609 lambda!389607))))

(assert (=> b!6882805 true))

(assert (=> b!6882805 true))

(declare-fun b!6882799 () Bool)

(declare-fun e!4147508 () Bool)

(declare-fun e!4147510 () Bool)

(assert (=> b!6882799 (= e!4147508 e!4147510)))

(declare-fun c!1280355 () Bool)

(assert (=> b!6882799 (= c!1280355 ((_ is Star!16767) lt!2459943))))

(declare-fun b!6882800 () Bool)

(declare-fun e!4147512 () Bool)

(declare-fun e!4147514 () Bool)

(assert (=> b!6882800 (= e!4147512 e!4147514)))

(declare-fun res!2805719 () Bool)

(assert (=> b!6882800 (= res!2805719 (not ((_ is EmptyLang!16767) lt!2459943)))))

(assert (=> b!6882800 (=> (not res!2805719) (not e!4147514))))

(declare-fun b!6882801 () Bool)

(declare-fun e!4147513 () Bool)

(assert (=> b!6882801 (= e!4147508 e!4147513)))

(declare-fun res!2805720 () Bool)

(assert (=> b!6882801 (= res!2805720 (matchRSpec!3830 (regOne!34047 lt!2459943) (_1!36943 lt!2459938)))))

(assert (=> b!6882801 (=> res!2805720 e!4147513)))

(declare-fun b!6882802 () Bool)

(declare-fun e!4147509 () Bool)

(assert (=> b!6882802 (= e!4147509 (= (_1!36943 lt!2459938) (Cons!66400 (c!1280263 lt!2459943) Nil!66400)))))

(declare-fun b!6882803 () Bool)

(declare-fun call!626599 () Bool)

(assert (=> b!6882803 (= e!4147512 call!626599)))

(declare-fun b!6882804 () Bool)

(declare-fun c!1280353 () Bool)

(assert (=> b!6882804 (= c!1280353 ((_ is ElementMatch!16767) lt!2459943))))

(assert (=> b!6882804 (= e!4147514 e!4147509)))

(declare-fun call!626600 () Bool)

(assert (=> b!6882805 (= e!4147510 call!626600)))

(declare-fun b!6882806 () Bool)

(assert (=> b!6882806 (= e!4147513 (matchRSpec!3830 (regTwo!34047 lt!2459943) (_1!36943 lt!2459938)))))

(declare-fun d!2160207 () Bool)

(declare-fun c!1280356 () Bool)

(assert (=> d!2160207 (= c!1280356 ((_ is EmptyExpr!16767) lt!2459943))))

(assert (=> d!2160207 (= (matchRSpec!3830 lt!2459943 (_1!36943 lt!2459938)) e!4147512)))

(declare-fun bm!626594 () Bool)

(assert (=> bm!626594 (= call!626600 (Exists!3779 (ite c!1280355 lambda!389608 lambda!389609)))))

(declare-fun b!6882807 () Bool)

(declare-fun c!1280354 () Bool)

(assert (=> b!6882807 (= c!1280354 ((_ is Union!16767) lt!2459943))))

(assert (=> b!6882807 (= e!4147509 e!4147508)))

(declare-fun e!4147511 () Bool)

(assert (=> b!6882808 (= e!4147511 call!626600)))

(declare-fun bm!626595 () Bool)

(assert (=> bm!626595 (= call!626599 (isEmpty!38674 (_1!36943 lt!2459938)))))

(declare-fun b!6882809 () Bool)

(declare-fun res!2805721 () Bool)

(assert (=> b!6882809 (=> res!2805721 e!4147511)))

(assert (=> b!6882809 (= res!2805721 call!626599)))

(assert (=> b!6882809 (= e!4147510 e!4147511)))

(assert (= (and d!2160207 c!1280356) b!6882803))

(assert (= (and d!2160207 (not c!1280356)) b!6882800))

(assert (= (and b!6882800 res!2805719) b!6882804))

(assert (= (and b!6882804 c!1280353) b!6882802))

(assert (= (and b!6882804 (not c!1280353)) b!6882807))

(assert (= (and b!6882807 c!1280354) b!6882801))

(assert (= (and b!6882807 (not c!1280354)) b!6882799))

(assert (= (and b!6882801 (not res!2805720)) b!6882806))

(assert (= (and b!6882799 c!1280355) b!6882809))

(assert (= (and b!6882799 (not c!1280355)) b!6882805))

(assert (= (and b!6882809 (not res!2805721)) b!6882808))

(assert (= (or b!6882808 b!6882805) bm!626594))

(assert (= (or b!6882803 b!6882809) bm!626595))

(declare-fun m!7607082 () Bool)

(assert (=> b!6882801 m!7607082))

(declare-fun m!7607084 () Bool)

(assert (=> b!6882806 m!7607084))

(declare-fun m!7607086 () Bool)

(assert (=> bm!626594 m!7607086))

(declare-fun m!7607088 () Bool)

(assert (=> bm!626595 m!7607088))

(assert (=> b!6882327 d!2160207))

(declare-fun d!2160209 () Bool)

(declare-fun res!2805722 () Bool)

(declare-fun e!4147517 () Bool)

(assert (=> d!2160209 (=> res!2805722 e!4147517)))

(assert (=> d!2160209 (= res!2805722 ((_ is ElementMatch!16767) lt!2459943))))

(assert (=> d!2160209 (= (validRegex!8475 lt!2459943) e!4147517)))

(declare-fun b!6882810 () Bool)

(declare-fun res!2805725 () Bool)

(declare-fun e!4147515 () Bool)

(assert (=> b!6882810 (=> res!2805725 e!4147515)))

(assert (=> b!6882810 (= res!2805725 (not ((_ is Concat!25612) lt!2459943)))))

(declare-fun e!4147516 () Bool)

(assert (=> b!6882810 (= e!4147516 e!4147515)))

(declare-fun b!6882811 () Bool)

(declare-fun e!4147520 () Bool)

(declare-fun call!626602 () Bool)

(assert (=> b!6882811 (= e!4147520 call!626602)))

(declare-fun b!6882812 () Bool)

(declare-fun e!4147521 () Bool)

(declare-fun call!626603 () Bool)

(assert (=> b!6882812 (= e!4147521 call!626603)))

(declare-fun b!6882813 () Bool)

(declare-fun res!2805723 () Bool)

(declare-fun e!4147519 () Bool)

(assert (=> b!6882813 (=> (not res!2805723) (not e!4147519))))

(assert (=> b!6882813 (= res!2805723 call!626602)))

(assert (=> b!6882813 (= e!4147516 e!4147519)))

(declare-fun bm!626596 () Bool)

(declare-fun call!626601 () Bool)

(declare-fun c!1280358 () Bool)

(assert (=> bm!626596 (= call!626601 (validRegex!8475 (ite c!1280358 (regTwo!34047 lt!2459943) (regOne!34046 lt!2459943))))))

(declare-fun b!6882814 () Bool)

(assert (=> b!6882814 (= e!4147515 e!4147520)))

(declare-fun res!2805726 () Bool)

(assert (=> b!6882814 (=> (not res!2805726) (not e!4147520))))

(assert (=> b!6882814 (= res!2805726 call!626601)))

(declare-fun b!6882815 () Bool)

(declare-fun e!4147518 () Bool)

(assert (=> b!6882815 (= e!4147518 e!4147521)))

(declare-fun res!2805724 () Bool)

(assert (=> b!6882815 (= res!2805724 (not (nullable!6678 (reg!17096 lt!2459943))))))

(assert (=> b!6882815 (=> (not res!2805724) (not e!4147521))))

(declare-fun b!6882816 () Bool)

(assert (=> b!6882816 (= e!4147517 e!4147518)))

(declare-fun c!1280357 () Bool)

(assert (=> b!6882816 (= c!1280357 ((_ is Star!16767) lt!2459943))))

(declare-fun bm!626597 () Bool)

(assert (=> bm!626597 (= call!626603 (validRegex!8475 (ite c!1280357 (reg!17096 lt!2459943) (ite c!1280358 (regOne!34047 lt!2459943) (regTwo!34046 lt!2459943)))))))

(declare-fun bm!626598 () Bool)

(assert (=> bm!626598 (= call!626602 call!626603)))

(declare-fun b!6882817 () Bool)

(assert (=> b!6882817 (= e!4147518 e!4147516)))

(assert (=> b!6882817 (= c!1280358 ((_ is Union!16767) lt!2459943))))

(declare-fun b!6882818 () Bool)

(assert (=> b!6882818 (= e!4147519 call!626601)))

(assert (= (and d!2160209 (not res!2805722)) b!6882816))

(assert (= (and b!6882816 c!1280357) b!6882815))

(assert (= (and b!6882816 (not c!1280357)) b!6882817))

(assert (= (and b!6882815 res!2805724) b!6882812))

(assert (= (and b!6882817 c!1280358) b!6882813))

(assert (= (and b!6882817 (not c!1280358)) b!6882810))

(assert (= (and b!6882813 res!2805723) b!6882818))

(assert (= (and b!6882810 (not res!2805725)) b!6882814))

(assert (= (and b!6882814 res!2805726) b!6882811))

(assert (= (or b!6882813 b!6882811) bm!626598))

(assert (= (or b!6882818 b!6882814) bm!626596))

(assert (= (or b!6882812 bm!626598) bm!626597))

(declare-fun m!7607090 () Bool)

(assert (=> bm!626596 m!7607090))

(declare-fun m!7607092 () Bool)

(assert (=> b!6882815 m!7607092))

(declare-fun m!7607094 () Bool)

(assert (=> bm!626597 m!7607094))

(assert (=> b!6882327 d!2160209))

(declare-fun d!2160211 () Bool)

(assert (=> d!2160211 (= (Exists!3779 lambda!389574) (choose!51263 lambda!389574))))

(declare-fun bs!1838254 () Bool)

(assert (= bs!1838254 d!2160211))

(declare-fun m!7607096 () Bool)

(assert (=> bs!1838254 m!7607096))

(assert (=> b!6882327 d!2160211))

(declare-fun d!2160213 () Bool)

(declare-fun isEmpty!38675 (Option!16552) Bool)

(assert (=> d!2160213 (= (isDefined!13255 lt!2459934) (not (isEmpty!38675 lt!2459934)))))

(declare-fun bs!1838255 () Bool)

(assert (= bs!1838255 d!2160213))

(declare-fun m!7607098 () Bool)

(assert (=> bs!1838255 m!7607098))

(assert (=> b!6882327 d!2160213))

(declare-fun b!6882819 () Bool)

(declare-fun e!4147523 () Bool)

(assert (=> b!6882819 (= e!4147523 (matchR!8912 (derivativeStep!5357 lt!2459943 (head!13810 (_1!36943 lt!2459938))) (tail!12862 (_1!36943 lt!2459938))))))

(declare-fun d!2160215 () Bool)

(declare-fun e!4147526 () Bool)

(assert (=> d!2160215 e!4147526))

(declare-fun c!1280360 () Bool)

(assert (=> d!2160215 (= c!1280360 ((_ is EmptyExpr!16767) lt!2459943))))

(declare-fun lt!2459980 () Bool)

(assert (=> d!2160215 (= lt!2459980 e!4147523)))

(declare-fun c!1280361 () Bool)

(assert (=> d!2160215 (= c!1280361 (isEmpty!38674 (_1!36943 lt!2459938)))))

(assert (=> d!2160215 (validRegex!8475 lt!2459943)))

(assert (=> d!2160215 (= (matchR!8912 lt!2459943 (_1!36943 lt!2459938)) lt!2459980)))

(declare-fun b!6882820 () Bool)

(declare-fun e!4147527 () Bool)

(declare-fun e!4147522 () Bool)

(assert (=> b!6882820 (= e!4147527 e!4147522)))

(declare-fun res!2805729 () Bool)

(assert (=> b!6882820 (=> (not res!2805729) (not e!4147522))))

(assert (=> b!6882820 (= res!2805729 (not lt!2459980))))

(declare-fun b!6882821 () Bool)

(assert (=> b!6882821 (= e!4147523 (nullable!6678 lt!2459943))))

(declare-fun b!6882822 () Bool)

(declare-fun e!4147524 () Bool)

(assert (=> b!6882822 (= e!4147524 (= (head!13810 (_1!36943 lt!2459938)) (c!1280263 lt!2459943)))))

(declare-fun bm!626599 () Bool)

(declare-fun call!626604 () Bool)

(assert (=> bm!626599 (= call!626604 (isEmpty!38674 (_1!36943 lt!2459938)))))

(declare-fun b!6882823 () Bool)

(declare-fun e!4147525 () Bool)

(assert (=> b!6882823 (= e!4147526 e!4147525)))

(declare-fun c!1280359 () Bool)

(assert (=> b!6882823 (= c!1280359 ((_ is EmptyLang!16767) lt!2459943))))

(declare-fun b!6882824 () Bool)

(declare-fun res!2805727 () Bool)

(assert (=> b!6882824 (=> (not res!2805727) (not e!4147524))))

(assert (=> b!6882824 (= res!2805727 (not call!626604))))

(declare-fun b!6882825 () Bool)

(declare-fun e!4147528 () Bool)

(assert (=> b!6882825 (= e!4147528 (not (= (head!13810 (_1!36943 lt!2459938)) (c!1280263 lt!2459943))))))

(declare-fun b!6882826 () Bool)

(declare-fun res!2805731 () Bool)

(assert (=> b!6882826 (=> (not res!2805731) (not e!4147524))))

(assert (=> b!6882826 (= res!2805731 (isEmpty!38674 (tail!12862 (_1!36943 lt!2459938))))))

(declare-fun b!6882827 () Bool)

(declare-fun res!2805734 () Bool)

(assert (=> b!6882827 (=> res!2805734 e!4147528)))

(assert (=> b!6882827 (= res!2805734 (not (isEmpty!38674 (tail!12862 (_1!36943 lt!2459938)))))))

(declare-fun b!6882828 () Bool)

(declare-fun res!2805730 () Bool)

(assert (=> b!6882828 (=> res!2805730 e!4147527)))

(assert (=> b!6882828 (= res!2805730 (not ((_ is ElementMatch!16767) lt!2459943)))))

(assert (=> b!6882828 (= e!4147525 e!4147527)))

(declare-fun b!6882829 () Bool)

(assert (=> b!6882829 (= e!4147522 e!4147528)))

(declare-fun res!2805733 () Bool)

(assert (=> b!6882829 (=> res!2805733 e!4147528)))

(assert (=> b!6882829 (= res!2805733 call!626604)))

(declare-fun b!6882830 () Bool)

(assert (=> b!6882830 (= e!4147526 (= lt!2459980 call!626604))))

(declare-fun b!6882831 () Bool)

(declare-fun res!2805728 () Bool)

(assert (=> b!6882831 (=> res!2805728 e!4147527)))

(assert (=> b!6882831 (= res!2805728 e!4147524)))

(declare-fun res!2805732 () Bool)

(assert (=> b!6882831 (=> (not res!2805732) (not e!4147524))))

(assert (=> b!6882831 (= res!2805732 lt!2459980)))

(declare-fun b!6882832 () Bool)

(assert (=> b!6882832 (= e!4147525 (not lt!2459980))))

(assert (= (and d!2160215 c!1280361) b!6882821))

(assert (= (and d!2160215 (not c!1280361)) b!6882819))

(assert (= (and d!2160215 c!1280360) b!6882830))

(assert (= (and d!2160215 (not c!1280360)) b!6882823))

(assert (= (and b!6882823 c!1280359) b!6882832))

(assert (= (and b!6882823 (not c!1280359)) b!6882828))

(assert (= (and b!6882828 (not res!2805730)) b!6882831))

(assert (= (and b!6882831 res!2805732) b!6882824))

(assert (= (and b!6882824 res!2805727) b!6882826))

(assert (= (and b!6882826 res!2805731) b!6882822))

(assert (= (and b!6882831 (not res!2805728)) b!6882820))

(assert (= (and b!6882820 res!2805729) b!6882829))

(assert (= (and b!6882829 (not res!2805733)) b!6882827))

(assert (= (and b!6882827 (not res!2805734)) b!6882825))

(assert (= (or b!6882830 b!6882824 b!6882829) bm!626599))

(declare-fun m!7607100 () Bool)

(assert (=> b!6882825 m!7607100))

(assert (=> bm!626599 m!7607088))

(declare-fun m!7607102 () Bool)

(assert (=> b!6882827 m!7607102))

(assert (=> b!6882827 m!7607102))

(declare-fun m!7607104 () Bool)

(assert (=> b!6882827 m!7607104))

(declare-fun m!7607106 () Bool)

(assert (=> b!6882821 m!7607106))

(assert (=> b!6882822 m!7607100))

(assert (=> d!2160215 m!7607088))

(assert (=> d!2160215 m!7606858))

(assert (=> b!6882819 m!7607100))

(assert (=> b!6882819 m!7607100))

(declare-fun m!7607108 () Bool)

(assert (=> b!6882819 m!7607108))

(assert (=> b!6882819 m!7607102))

(assert (=> b!6882819 m!7607108))

(assert (=> b!6882819 m!7607102))

(declare-fun m!7607110 () Bool)

(assert (=> b!6882819 m!7607110))

(assert (=> b!6882826 m!7607102))

(assert (=> b!6882826 m!7607102))

(assert (=> b!6882826 m!7607104))

(assert (=> b!6882327 d!2160215))

(declare-fun d!2160217 () Bool)

(assert (=> d!2160217 (= (matchR!8912 lt!2459943 (_1!36943 lt!2459938)) (matchRSpec!3830 lt!2459943 (_1!36943 lt!2459938)))))

(declare-fun lt!2459981 () Unit!160254)

(assert (=> d!2160217 (= lt!2459981 (choose!51262 lt!2459943 (_1!36943 lt!2459938)))))

(assert (=> d!2160217 (validRegex!8475 lt!2459943)))

(assert (=> d!2160217 (= (mainMatchTheorem!3830 lt!2459943 (_1!36943 lt!2459938)) lt!2459981)))

(declare-fun bs!1838256 () Bool)

(assert (= bs!1838256 d!2160217))

(assert (=> bs!1838256 m!7606860))

(assert (=> bs!1838256 m!7606868))

(declare-fun m!7607112 () Bool)

(assert (=> bs!1838256 m!7607112))

(assert (=> bs!1838256 m!7606858))

(assert (=> b!6882327 d!2160217))

(declare-fun b!6882851 () Bool)

(declare-fun e!4147542 () Bool)

(declare-fun lt!2459988 () Option!16552)

(assert (=> b!6882851 (= e!4147542 (not (isDefined!13255 lt!2459988)))))

(declare-fun b!6882852 () Bool)

(declare-fun e!4147541 () Option!16552)

(assert (=> b!6882852 (= e!4147541 None!16551)))

(declare-fun b!6882853 () Bool)

(declare-fun e!4147540 () Bool)

(declare-fun ++!14860 (List!66524 List!66524) List!66524)

(assert (=> b!6882853 (= e!4147540 (= (++!14860 (_1!36943 (get!23113 lt!2459988)) (_2!36943 (get!23113 lt!2459988))) s!14361))))

(declare-fun b!6882854 () Bool)

(declare-fun e!4147543 () Option!16552)

(assert (=> b!6882854 (= e!4147543 e!4147541)))

(declare-fun c!1280366 () Bool)

(assert (=> b!6882854 (= c!1280366 ((_ is Nil!66400) s!14361))))

(declare-fun d!2160219 () Bool)

(assert (=> d!2160219 e!4147542))

(declare-fun res!2805745 () Bool)

(assert (=> d!2160219 (=> res!2805745 e!4147542)))

(assert (=> d!2160219 (= res!2805745 e!4147540)))

(declare-fun res!2805747 () Bool)

(assert (=> d!2160219 (=> (not res!2805747) (not e!4147540))))

(assert (=> d!2160219 (= res!2805747 (isDefined!13255 lt!2459988))))

(assert (=> d!2160219 (= lt!2459988 e!4147543)))

(declare-fun c!1280367 () Bool)

(declare-fun e!4147539 () Bool)

(assert (=> d!2160219 (= c!1280367 e!4147539)))

(declare-fun res!2805748 () Bool)

(assert (=> d!2160219 (=> (not res!2805748) (not e!4147539))))

(assert (=> d!2160219 (= res!2805748 (matchR!8912 lt!2459943 Nil!66400))))

(assert (=> d!2160219 (validRegex!8475 lt!2459943)))

(assert (=> d!2160219 (= (findConcatSeparation!2966 lt!2459943 r3!135 Nil!66400 s!14361 s!14361) lt!2459988)))

(declare-fun b!6882855 () Bool)

(declare-fun res!2805746 () Bool)

(assert (=> b!6882855 (=> (not res!2805746) (not e!4147540))))

(assert (=> b!6882855 (= res!2805746 (matchR!8912 lt!2459943 (_1!36943 (get!23113 lt!2459988))))))

(declare-fun b!6882856 () Bool)

(assert (=> b!6882856 (= e!4147543 (Some!16551 (tuple2!67281 Nil!66400 s!14361)))))

(declare-fun b!6882857 () Bool)

(assert (=> b!6882857 (= e!4147539 (matchR!8912 r3!135 s!14361))))

(declare-fun b!6882858 () Bool)

(declare-fun res!2805749 () Bool)

(assert (=> b!6882858 (=> (not res!2805749) (not e!4147540))))

(assert (=> b!6882858 (= res!2805749 (matchR!8912 r3!135 (_2!36943 (get!23113 lt!2459988))))))

(declare-fun b!6882859 () Bool)

(declare-fun lt!2459989 () Unit!160254)

(declare-fun lt!2459990 () Unit!160254)

(assert (=> b!6882859 (= lt!2459989 lt!2459990)))

(assert (=> b!6882859 (= (++!14860 (++!14860 Nil!66400 (Cons!66400 (h!72848 s!14361) Nil!66400)) (t!380267 s!14361)) s!14361)))

(declare-fun lemmaMoveElementToOtherListKeepsConcatEq!2769 (List!66524 C!33804 List!66524 List!66524) Unit!160254)

(assert (=> b!6882859 (= lt!2459990 (lemmaMoveElementToOtherListKeepsConcatEq!2769 Nil!66400 (h!72848 s!14361) (t!380267 s!14361) s!14361))))

(assert (=> b!6882859 (= e!4147541 (findConcatSeparation!2966 lt!2459943 r3!135 (++!14860 Nil!66400 (Cons!66400 (h!72848 s!14361) Nil!66400)) (t!380267 s!14361) s!14361))))

(assert (= (and d!2160219 res!2805748) b!6882857))

(assert (= (and d!2160219 c!1280367) b!6882856))

(assert (= (and d!2160219 (not c!1280367)) b!6882854))

(assert (= (and b!6882854 c!1280366) b!6882852))

(assert (= (and b!6882854 (not c!1280366)) b!6882859))

(assert (= (and d!2160219 res!2805747) b!6882855))

(assert (= (and b!6882855 res!2805746) b!6882858))

(assert (= (and b!6882858 res!2805749) b!6882853))

(assert (= (and d!2160219 (not res!2805745)) b!6882851))

(declare-fun m!7607114 () Bool)

(assert (=> b!6882851 m!7607114))

(declare-fun m!7607116 () Bool)

(assert (=> b!6882859 m!7607116))

(assert (=> b!6882859 m!7607116))

(declare-fun m!7607118 () Bool)

(assert (=> b!6882859 m!7607118))

(declare-fun m!7607120 () Bool)

(assert (=> b!6882859 m!7607120))

(assert (=> b!6882859 m!7607116))

(declare-fun m!7607122 () Bool)

(assert (=> b!6882859 m!7607122))

(declare-fun m!7607124 () Bool)

(assert (=> b!6882857 m!7607124))

(assert (=> d!2160219 m!7607114))

(declare-fun m!7607126 () Bool)

(assert (=> d!2160219 m!7607126))

(assert (=> d!2160219 m!7606858))

(declare-fun m!7607128 () Bool)

(assert (=> b!6882855 m!7607128))

(declare-fun m!7607130 () Bool)

(assert (=> b!6882855 m!7607130))

(assert (=> b!6882853 m!7607128))

(declare-fun m!7607132 () Bool)

(assert (=> b!6882853 m!7607132))

(assert (=> b!6882858 m!7607128))

(declare-fun m!7607134 () Bool)

(assert (=> b!6882858 m!7607134))

(assert (=> b!6882327 d!2160219))

(declare-fun d!2160221 () Bool)

(assert (=> d!2160221 (= (get!23113 lt!2459934) (v!52823 lt!2459934))))

(assert (=> b!6882327 d!2160221))

(declare-fun bs!1838257 () Bool)

(declare-fun d!2160223 () Bool)

(assert (= bs!1838257 (and d!2160223 b!6882808)))

(declare-fun lambda!389612 () Int)

(assert (=> bs!1838257 (not (= lambda!389612 lambda!389608))))

(declare-fun bs!1838258 () Bool)

(assert (= bs!1838258 (and d!2160223 b!6882327)))

(assert (=> bs!1838258 (= lambda!389612 lambda!389573)))

(declare-fun bs!1838259 () Bool)

(assert (= bs!1838259 (and d!2160223 b!6882789)))

(assert (=> bs!1838259 (not (= lambda!389612 lambda!389600))))

(declare-fun bs!1838260 () Bool)

(assert (= bs!1838260 (and d!2160223 b!6882786)))

(assert (=> bs!1838260 (not (= lambda!389612 lambda!389601))))

(declare-fun bs!1838261 () Bool)

(assert (= bs!1838261 (and d!2160223 b!6882805)))

(assert (=> bs!1838261 (not (= lambda!389612 lambda!389609))))

(declare-fun bs!1838262 () Bool)

(assert (= bs!1838262 (and d!2160223 d!2160205)))

(assert (=> bs!1838262 (= lambda!389612 lambda!389606)))

(declare-fun bs!1838263 () Bool)

(assert (= bs!1838263 (and d!2160223 b!6882563)))

(assert (=> bs!1838263 (not (= lambda!389612 lambda!389592))))

(assert (=> bs!1838258 (not (= lambda!389612 lambda!389574))))

(declare-fun bs!1838264 () Bool)

(assert (= bs!1838264 (and d!2160223 b!6882566)))

(assert (=> bs!1838264 (not (= lambda!389612 lambda!389590))))

(assert (=> bs!1838262 (not (= lambda!389612 lambda!389607))))

(assert (=> d!2160223 true))

(assert (=> d!2160223 true))

(assert (=> d!2160223 true))

(assert (=> d!2160223 (= (isDefined!13255 (findConcatSeparation!2966 lt!2459943 r3!135 Nil!66400 s!14361 s!14361)) (Exists!3779 lambda!389612))))

(declare-fun lt!2459993 () Unit!160254)

(declare-fun choose!51265 (Regex!16767 Regex!16767 List!66524) Unit!160254)

(assert (=> d!2160223 (= lt!2459993 (choose!51265 lt!2459943 r3!135 s!14361))))

(assert (=> d!2160223 (validRegex!8475 lt!2459943)))

(assert (=> d!2160223 (= (lemmaFindConcatSeparationEquivalentToExists!2730 lt!2459943 r3!135 s!14361) lt!2459993)))

(declare-fun bs!1838265 () Bool)

(assert (= bs!1838265 d!2160223))

(assert (=> bs!1838265 m!7606862))

(declare-fun m!7607136 () Bool)

(assert (=> bs!1838265 m!7607136))

(assert (=> bs!1838265 m!7606858))

(assert (=> bs!1838265 m!7606862))

(declare-fun m!7607138 () Bool)

(assert (=> bs!1838265 m!7607138))

(declare-fun m!7607140 () Bool)

(assert (=> bs!1838265 m!7607140))

(assert (=> b!6882327 d!2160223))

(declare-fun d!2160225 () Bool)

(declare-fun res!2805754 () Bool)

(declare-fun e!4147548 () Bool)

(assert (=> d!2160225 (=> res!2805754 e!4147548)))

(assert (=> d!2160225 (= res!2805754 ((_ is ElementMatch!16767) r2!6280))))

(assert (=> d!2160225 (= (validRegex!8475 r2!6280) e!4147548)))

(declare-fun b!6882864 () Bool)

(declare-fun res!2805757 () Bool)

(declare-fun e!4147546 () Bool)

(assert (=> b!6882864 (=> res!2805757 e!4147546)))

(assert (=> b!6882864 (= res!2805757 (not ((_ is Concat!25612) r2!6280)))))

(declare-fun e!4147547 () Bool)

(assert (=> b!6882864 (= e!4147547 e!4147546)))

(declare-fun b!6882865 () Bool)

(declare-fun e!4147551 () Bool)

(declare-fun call!626606 () Bool)

(assert (=> b!6882865 (= e!4147551 call!626606)))

(declare-fun b!6882866 () Bool)

(declare-fun e!4147552 () Bool)

(declare-fun call!626607 () Bool)

(assert (=> b!6882866 (= e!4147552 call!626607)))

(declare-fun b!6882867 () Bool)

(declare-fun res!2805755 () Bool)

(declare-fun e!4147550 () Bool)

(assert (=> b!6882867 (=> (not res!2805755) (not e!4147550))))

(assert (=> b!6882867 (= res!2805755 call!626606)))

(assert (=> b!6882867 (= e!4147547 e!4147550)))

(declare-fun bm!626600 () Bool)

(declare-fun call!626605 () Bool)

(declare-fun c!1280369 () Bool)

(assert (=> bm!626600 (= call!626605 (validRegex!8475 (ite c!1280369 (regTwo!34047 r2!6280) (regOne!34046 r2!6280))))))

(declare-fun b!6882868 () Bool)

(assert (=> b!6882868 (= e!4147546 e!4147551)))

(declare-fun res!2805758 () Bool)

(assert (=> b!6882868 (=> (not res!2805758) (not e!4147551))))

(assert (=> b!6882868 (= res!2805758 call!626605)))

(declare-fun b!6882869 () Bool)

(declare-fun e!4147549 () Bool)

(assert (=> b!6882869 (= e!4147549 e!4147552)))

(declare-fun res!2805756 () Bool)

(assert (=> b!6882869 (= res!2805756 (not (nullable!6678 (reg!17096 r2!6280))))))

(assert (=> b!6882869 (=> (not res!2805756) (not e!4147552))))

(declare-fun b!6882870 () Bool)

(assert (=> b!6882870 (= e!4147548 e!4147549)))

(declare-fun c!1280368 () Bool)

(assert (=> b!6882870 (= c!1280368 ((_ is Star!16767) r2!6280))))

(declare-fun bm!626601 () Bool)

(assert (=> bm!626601 (= call!626607 (validRegex!8475 (ite c!1280368 (reg!17096 r2!6280) (ite c!1280369 (regOne!34047 r2!6280) (regTwo!34046 r2!6280)))))))

(declare-fun bm!626602 () Bool)

(assert (=> bm!626602 (= call!626606 call!626607)))

(declare-fun b!6882871 () Bool)

(assert (=> b!6882871 (= e!4147549 e!4147547)))

(assert (=> b!6882871 (= c!1280369 ((_ is Union!16767) r2!6280))))

(declare-fun b!6882872 () Bool)

(assert (=> b!6882872 (= e!4147550 call!626605)))

(assert (= (and d!2160225 (not res!2805754)) b!6882870))

(assert (= (and b!6882870 c!1280368) b!6882869))

(assert (= (and b!6882870 (not c!1280368)) b!6882871))

(assert (= (and b!6882869 res!2805756) b!6882866))

(assert (= (and b!6882871 c!1280369) b!6882867))

(assert (= (and b!6882871 (not c!1280369)) b!6882864))

(assert (= (and b!6882867 res!2805755) b!6882872))

(assert (= (and b!6882864 (not res!2805757)) b!6882868))

(assert (= (and b!6882868 res!2805758) b!6882865))

(assert (= (or b!6882867 b!6882865) bm!626602))

(assert (= (or b!6882872 b!6882868) bm!626600))

(assert (= (or b!6882866 bm!626602) bm!626601))

(declare-fun m!7607142 () Bool)

(assert (=> bm!626600 m!7607142))

(declare-fun m!7607144 () Bool)

(assert (=> b!6882869 m!7607144))

(declare-fun m!7607146 () Bool)

(assert (=> bm!626601 m!7607146))

(assert (=> b!6882321 d!2160225))

(declare-fun b!6882885 () Bool)

(declare-fun e!4147555 () Bool)

(declare-fun tp!1892972 () Bool)

(assert (=> b!6882885 (= e!4147555 tp!1892972)))

(declare-fun b!6882883 () Bool)

(assert (=> b!6882883 (= e!4147555 tp_is_empty!42759)))

(declare-fun b!6882886 () Bool)

(declare-fun tp!1892973 () Bool)

(declare-fun tp!1892970 () Bool)

(assert (=> b!6882886 (= e!4147555 (and tp!1892973 tp!1892970))))

(declare-fun b!6882884 () Bool)

(declare-fun tp!1892974 () Bool)

(declare-fun tp!1892971 () Bool)

(assert (=> b!6882884 (= e!4147555 (and tp!1892974 tp!1892971))))

(assert (=> b!6882334 (= tp!1892865 e!4147555)))

(assert (= (and b!6882334 ((_ is ElementMatch!16767) (reg!17096 r1!6342))) b!6882883))

(assert (= (and b!6882334 ((_ is Concat!25612) (reg!17096 r1!6342))) b!6882884))

(assert (= (and b!6882334 ((_ is Star!16767) (reg!17096 r1!6342))) b!6882885))

(assert (= (and b!6882334 ((_ is Union!16767) (reg!17096 r1!6342))) b!6882886))

(declare-fun b!6882891 () Bool)

(declare-fun e!4147558 () Bool)

(declare-fun tp!1892977 () Bool)

(assert (=> b!6882891 (= e!4147558 (and tp_is_empty!42759 tp!1892977))))

(assert (=> b!6882323 (= tp!1892860 e!4147558)))

(assert (= (and b!6882323 ((_ is Cons!66400) (t!380267 s!14361))) b!6882891))

(declare-fun b!6882894 () Bool)

(declare-fun e!4147559 () Bool)

(declare-fun tp!1892980 () Bool)

(assert (=> b!6882894 (= e!4147559 tp!1892980)))

(declare-fun b!6882892 () Bool)

(assert (=> b!6882892 (= e!4147559 tp_is_empty!42759)))

(declare-fun b!6882895 () Bool)

(declare-fun tp!1892981 () Bool)

(declare-fun tp!1892978 () Bool)

(assert (=> b!6882895 (= e!4147559 (and tp!1892981 tp!1892978))))

(declare-fun b!6882893 () Bool)

(declare-fun tp!1892982 () Bool)

(declare-fun tp!1892979 () Bool)

(assert (=> b!6882893 (= e!4147559 (and tp!1892982 tp!1892979))))

(assert (=> b!6882328 (= tp!1892868 e!4147559)))

(assert (= (and b!6882328 ((_ is ElementMatch!16767) (regOne!34046 r2!6280))) b!6882892))

(assert (= (and b!6882328 ((_ is Concat!25612) (regOne!34046 r2!6280))) b!6882893))

(assert (= (and b!6882328 ((_ is Star!16767) (regOne!34046 r2!6280))) b!6882894))

(assert (= (and b!6882328 ((_ is Union!16767) (regOne!34046 r2!6280))) b!6882895))

(declare-fun b!6882898 () Bool)

(declare-fun e!4147560 () Bool)

(declare-fun tp!1892985 () Bool)

(assert (=> b!6882898 (= e!4147560 tp!1892985)))

(declare-fun b!6882896 () Bool)

(assert (=> b!6882896 (= e!4147560 tp_is_empty!42759)))

(declare-fun b!6882899 () Bool)

(declare-fun tp!1892986 () Bool)

(declare-fun tp!1892983 () Bool)

(assert (=> b!6882899 (= e!4147560 (and tp!1892986 tp!1892983))))

(declare-fun b!6882897 () Bool)

(declare-fun tp!1892987 () Bool)

(declare-fun tp!1892984 () Bool)

(assert (=> b!6882897 (= e!4147560 (and tp!1892987 tp!1892984))))

(assert (=> b!6882328 (= tp!1892867 e!4147560)))

(assert (= (and b!6882328 ((_ is ElementMatch!16767) (regTwo!34046 r2!6280))) b!6882896))

(assert (= (and b!6882328 ((_ is Concat!25612) (regTwo!34046 r2!6280))) b!6882897))

(assert (= (and b!6882328 ((_ is Star!16767) (regTwo!34046 r2!6280))) b!6882898))

(assert (= (and b!6882328 ((_ is Union!16767) (regTwo!34046 r2!6280))) b!6882899))

(declare-fun b!6882902 () Bool)

(declare-fun e!4147561 () Bool)

(declare-fun tp!1892990 () Bool)

(assert (=> b!6882902 (= e!4147561 tp!1892990)))

(declare-fun b!6882900 () Bool)

(assert (=> b!6882900 (= e!4147561 tp_is_empty!42759)))

(declare-fun b!6882903 () Bool)

(declare-fun tp!1892991 () Bool)

(declare-fun tp!1892988 () Bool)

(assert (=> b!6882903 (= e!4147561 (and tp!1892991 tp!1892988))))

(declare-fun b!6882901 () Bool)

(declare-fun tp!1892992 () Bool)

(declare-fun tp!1892989 () Bool)

(assert (=> b!6882901 (= e!4147561 (and tp!1892992 tp!1892989))))

(assert (=> b!6882333 (= tp!1892859 e!4147561)))

(assert (= (and b!6882333 ((_ is ElementMatch!16767) (regOne!34047 r1!6342))) b!6882900))

(assert (= (and b!6882333 ((_ is Concat!25612) (regOne!34047 r1!6342))) b!6882901))

(assert (= (and b!6882333 ((_ is Star!16767) (regOne!34047 r1!6342))) b!6882902))

(assert (= (and b!6882333 ((_ is Union!16767) (regOne!34047 r1!6342))) b!6882903))

(declare-fun b!6882906 () Bool)

(declare-fun e!4147562 () Bool)

(declare-fun tp!1892995 () Bool)

(assert (=> b!6882906 (= e!4147562 tp!1892995)))

(declare-fun b!6882904 () Bool)

(assert (=> b!6882904 (= e!4147562 tp_is_empty!42759)))

(declare-fun b!6882907 () Bool)

(declare-fun tp!1892996 () Bool)

(declare-fun tp!1892993 () Bool)

(assert (=> b!6882907 (= e!4147562 (and tp!1892996 tp!1892993))))

(declare-fun b!6882905 () Bool)

(declare-fun tp!1892997 () Bool)

(declare-fun tp!1892994 () Bool)

(assert (=> b!6882905 (= e!4147562 (and tp!1892997 tp!1892994))))

(assert (=> b!6882333 (= tp!1892857 e!4147562)))

(assert (= (and b!6882333 ((_ is ElementMatch!16767) (regTwo!34047 r1!6342))) b!6882904))

(assert (= (and b!6882333 ((_ is Concat!25612) (regTwo!34047 r1!6342))) b!6882905))

(assert (= (and b!6882333 ((_ is Star!16767) (regTwo!34047 r1!6342))) b!6882906))

(assert (= (and b!6882333 ((_ is Union!16767) (regTwo!34047 r1!6342))) b!6882907))

(declare-fun b!6882910 () Bool)

(declare-fun e!4147563 () Bool)

(declare-fun tp!1893000 () Bool)

(assert (=> b!6882910 (= e!4147563 tp!1893000)))

(declare-fun b!6882908 () Bool)

(assert (=> b!6882908 (= e!4147563 tp_is_empty!42759)))

(declare-fun b!6882911 () Bool)

(declare-fun tp!1893001 () Bool)

(declare-fun tp!1892998 () Bool)

(assert (=> b!6882911 (= e!4147563 (and tp!1893001 tp!1892998))))

(declare-fun b!6882909 () Bool)

(declare-fun tp!1893002 () Bool)

(declare-fun tp!1892999 () Bool)

(assert (=> b!6882909 (= e!4147563 (and tp!1893002 tp!1892999))))

(assert (=> b!6882335 (= tp!1892862 e!4147563)))

(assert (= (and b!6882335 ((_ is ElementMatch!16767) (regOne!34046 r3!135))) b!6882908))

(assert (= (and b!6882335 ((_ is Concat!25612) (regOne!34046 r3!135))) b!6882909))

(assert (= (and b!6882335 ((_ is Star!16767) (regOne!34046 r3!135))) b!6882910))

(assert (= (and b!6882335 ((_ is Union!16767) (regOne!34046 r3!135))) b!6882911))

(declare-fun b!6882914 () Bool)

(declare-fun e!4147564 () Bool)

(declare-fun tp!1893005 () Bool)

(assert (=> b!6882914 (= e!4147564 tp!1893005)))

(declare-fun b!6882912 () Bool)

(assert (=> b!6882912 (= e!4147564 tp_is_empty!42759)))

(declare-fun b!6882915 () Bool)

(declare-fun tp!1893006 () Bool)

(declare-fun tp!1893003 () Bool)

(assert (=> b!6882915 (= e!4147564 (and tp!1893006 tp!1893003))))

(declare-fun b!6882913 () Bool)

(declare-fun tp!1893007 () Bool)

(declare-fun tp!1893004 () Bool)

(assert (=> b!6882913 (= e!4147564 (and tp!1893007 tp!1893004))))

(assert (=> b!6882335 (= tp!1892869 e!4147564)))

(assert (= (and b!6882335 ((_ is ElementMatch!16767) (regTwo!34046 r3!135))) b!6882912))

(assert (= (and b!6882335 ((_ is Concat!25612) (regTwo!34046 r3!135))) b!6882913))

(assert (= (and b!6882335 ((_ is Star!16767) (regTwo!34046 r3!135))) b!6882914))

(assert (= (and b!6882335 ((_ is Union!16767) (regTwo!34046 r3!135))) b!6882915))

(declare-fun b!6882918 () Bool)

(declare-fun e!4147565 () Bool)

(declare-fun tp!1893010 () Bool)

(assert (=> b!6882918 (= e!4147565 tp!1893010)))

(declare-fun b!6882916 () Bool)

(assert (=> b!6882916 (= e!4147565 tp_is_empty!42759)))

(declare-fun b!6882919 () Bool)

(declare-fun tp!1893011 () Bool)

(declare-fun tp!1893008 () Bool)

(assert (=> b!6882919 (= e!4147565 (and tp!1893011 tp!1893008))))

(declare-fun b!6882917 () Bool)

(declare-fun tp!1893012 () Bool)

(declare-fun tp!1893009 () Bool)

(assert (=> b!6882917 (= e!4147565 (and tp!1893012 tp!1893009))))

(assert (=> b!6882324 (= tp!1892871 e!4147565)))

(assert (= (and b!6882324 ((_ is ElementMatch!16767) (regOne!34047 r3!135))) b!6882916))

(assert (= (and b!6882324 ((_ is Concat!25612) (regOne!34047 r3!135))) b!6882917))

(assert (= (and b!6882324 ((_ is Star!16767) (regOne!34047 r3!135))) b!6882918))

(assert (= (and b!6882324 ((_ is Union!16767) (regOne!34047 r3!135))) b!6882919))

(declare-fun b!6882922 () Bool)

(declare-fun e!4147566 () Bool)

(declare-fun tp!1893015 () Bool)

(assert (=> b!6882922 (= e!4147566 tp!1893015)))

(declare-fun b!6882920 () Bool)

(assert (=> b!6882920 (= e!4147566 tp_is_empty!42759)))

(declare-fun b!6882923 () Bool)

(declare-fun tp!1893016 () Bool)

(declare-fun tp!1893013 () Bool)

(assert (=> b!6882923 (= e!4147566 (and tp!1893016 tp!1893013))))

(declare-fun b!6882921 () Bool)

(declare-fun tp!1893017 () Bool)

(declare-fun tp!1893014 () Bool)

(assert (=> b!6882921 (= e!4147566 (and tp!1893017 tp!1893014))))

(assert (=> b!6882324 (= tp!1892858 e!4147566)))

(assert (= (and b!6882324 ((_ is ElementMatch!16767) (regTwo!34047 r3!135))) b!6882920))

(assert (= (and b!6882324 ((_ is Concat!25612) (regTwo!34047 r3!135))) b!6882921))

(assert (= (and b!6882324 ((_ is Star!16767) (regTwo!34047 r3!135))) b!6882922))

(assert (= (and b!6882324 ((_ is Union!16767) (regTwo!34047 r3!135))) b!6882923))

(declare-fun b!6882926 () Bool)

(declare-fun e!4147567 () Bool)

(declare-fun tp!1893020 () Bool)

(assert (=> b!6882926 (= e!4147567 tp!1893020)))

(declare-fun b!6882924 () Bool)

(assert (=> b!6882924 (= e!4147567 tp_is_empty!42759)))

(declare-fun b!6882927 () Bool)

(declare-fun tp!1893021 () Bool)

(declare-fun tp!1893018 () Bool)

(assert (=> b!6882927 (= e!4147567 (and tp!1893021 tp!1893018))))

(declare-fun b!6882925 () Bool)

(declare-fun tp!1893022 () Bool)

(declare-fun tp!1893019 () Bool)

(assert (=> b!6882925 (= e!4147567 (and tp!1893022 tp!1893019))))

(assert (=> b!6882329 (= tp!1892861 e!4147567)))

(assert (= (and b!6882329 ((_ is ElementMatch!16767) (regOne!34046 r1!6342))) b!6882924))

(assert (= (and b!6882329 ((_ is Concat!25612) (regOne!34046 r1!6342))) b!6882925))

(assert (= (and b!6882329 ((_ is Star!16767) (regOne!34046 r1!6342))) b!6882926))

(assert (= (and b!6882329 ((_ is Union!16767) (regOne!34046 r1!6342))) b!6882927))

(declare-fun b!6882930 () Bool)

(declare-fun e!4147568 () Bool)

(declare-fun tp!1893025 () Bool)

(assert (=> b!6882930 (= e!4147568 tp!1893025)))

(declare-fun b!6882928 () Bool)

(assert (=> b!6882928 (= e!4147568 tp_is_empty!42759)))

(declare-fun b!6882931 () Bool)

(declare-fun tp!1893026 () Bool)

(declare-fun tp!1893023 () Bool)

(assert (=> b!6882931 (= e!4147568 (and tp!1893026 tp!1893023))))

(declare-fun b!6882929 () Bool)

(declare-fun tp!1893027 () Bool)

(declare-fun tp!1893024 () Bool)

(assert (=> b!6882929 (= e!4147568 (and tp!1893027 tp!1893024))))

(assert (=> b!6882329 (= tp!1892866 e!4147568)))

(assert (= (and b!6882329 ((_ is ElementMatch!16767) (regTwo!34046 r1!6342))) b!6882928))

(assert (= (and b!6882329 ((_ is Concat!25612) (regTwo!34046 r1!6342))) b!6882929))

(assert (= (and b!6882329 ((_ is Star!16767) (regTwo!34046 r1!6342))) b!6882930))

(assert (= (and b!6882329 ((_ is Union!16767) (regTwo!34046 r1!6342))) b!6882931))

(declare-fun b!6882934 () Bool)

(declare-fun e!4147569 () Bool)

(declare-fun tp!1893030 () Bool)

(assert (=> b!6882934 (= e!4147569 tp!1893030)))

(declare-fun b!6882932 () Bool)

(assert (=> b!6882932 (= e!4147569 tp_is_empty!42759)))

(declare-fun b!6882935 () Bool)

(declare-fun tp!1893031 () Bool)

(declare-fun tp!1893028 () Bool)

(assert (=> b!6882935 (= e!4147569 (and tp!1893031 tp!1893028))))

(declare-fun b!6882933 () Bool)

(declare-fun tp!1893032 () Bool)

(declare-fun tp!1893029 () Bool)

(assert (=> b!6882933 (= e!4147569 (and tp!1893032 tp!1893029))))

(assert (=> b!6882326 (= tp!1892863 e!4147569)))

(assert (= (and b!6882326 ((_ is ElementMatch!16767) (reg!17096 r2!6280))) b!6882932))

(assert (= (and b!6882326 ((_ is Concat!25612) (reg!17096 r2!6280))) b!6882933))

(assert (= (and b!6882326 ((_ is Star!16767) (reg!17096 r2!6280))) b!6882934))

(assert (= (and b!6882326 ((_ is Union!16767) (reg!17096 r2!6280))) b!6882935))

(declare-fun b!6882938 () Bool)

(declare-fun e!4147570 () Bool)

(declare-fun tp!1893035 () Bool)

(assert (=> b!6882938 (= e!4147570 tp!1893035)))

(declare-fun b!6882936 () Bool)

(assert (=> b!6882936 (= e!4147570 tp_is_empty!42759)))

(declare-fun b!6882939 () Bool)

(declare-fun tp!1893036 () Bool)

(declare-fun tp!1893033 () Bool)

(assert (=> b!6882939 (= e!4147570 (and tp!1893036 tp!1893033))))

(declare-fun b!6882937 () Bool)

(declare-fun tp!1893037 () Bool)

(declare-fun tp!1893034 () Bool)

(assert (=> b!6882937 (= e!4147570 (and tp!1893037 tp!1893034))))

(assert (=> b!6882322 (= tp!1892864 e!4147570)))

(assert (= (and b!6882322 ((_ is ElementMatch!16767) (regOne!34047 r2!6280))) b!6882936))

(assert (= (and b!6882322 ((_ is Concat!25612) (regOne!34047 r2!6280))) b!6882937))

(assert (= (and b!6882322 ((_ is Star!16767) (regOne!34047 r2!6280))) b!6882938))

(assert (= (and b!6882322 ((_ is Union!16767) (regOne!34047 r2!6280))) b!6882939))

(declare-fun b!6882942 () Bool)

(declare-fun e!4147571 () Bool)

(declare-fun tp!1893040 () Bool)

(assert (=> b!6882942 (= e!4147571 tp!1893040)))

(declare-fun b!6882940 () Bool)

(assert (=> b!6882940 (= e!4147571 tp_is_empty!42759)))

(declare-fun b!6882943 () Bool)

(declare-fun tp!1893041 () Bool)

(declare-fun tp!1893038 () Bool)

(assert (=> b!6882943 (= e!4147571 (and tp!1893041 tp!1893038))))

(declare-fun b!6882941 () Bool)

(declare-fun tp!1893042 () Bool)

(declare-fun tp!1893039 () Bool)

(assert (=> b!6882941 (= e!4147571 (and tp!1893042 tp!1893039))))

(assert (=> b!6882322 (= tp!1892856 e!4147571)))

(assert (= (and b!6882322 ((_ is ElementMatch!16767) (regTwo!34047 r2!6280))) b!6882940))

(assert (= (and b!6882322 ((_ is Concat!25612) (regTwo!34047 r2!6280))) b!6882941))

(assert (= (and b!6882322 ((_ is Star!16767) (regTwo!34047 r2!6280))) b!6882942))

(assert (= (and b!6882322 ((_ is Union!16767) (regTwo!34047 r2!6280))) b!6882943))

(declare-fun b!6882946 () Bool)

(declare-fun e!4147572 () Bool)

(declare-fun tp!1893045 () Bool)

(assert (=> b!6882946 (= e!4147572 tp!1893045)))

(declare-fun b!6882944 () Bool)

(assert (=> b!6882944 (= e!4147572 tp_is_empty!42759)))

(declare-fun b!6882947 () Bool)

(declare-fun tp!1893046 () Bool)

(declare-fun tp!1893043 () Bool)

(assert (=> b!6882947 (= e!4147572 (and tp!1893046 tp!1893043))))

(declare-fun b!6882945 () Bool)

(declare-fun tp!1893047 () Bool)

(declare-fun tp!1893044 () Bool)

(assert (=> b!6882945 (= e!4147572 (and tp!1893047 tp!1893044))))

(assert (=> b!6882337 (= tp!1892870 e!4147572)))

(assert (= (and b!6882337 ((_ is ElementMatch!16767) (reg!17096 r3!135))) b!6882944))

(assert (= (and b!6882337 ((_ is Concat!25612) (reg!17096 r3!135))) b!6882945))

(assert (= (and b!6882337 ((_ is Star!16767) (reg!17096 r3!135))) b!6882946))

(assert (= (and b!6882337 ((_ is Union!16767) (reg!17096 r3!135))) b!6882947))

(check-sat (not b!6882922) (not b!6882772) (not b!6882891) (not b!6882819) (not b!6882782) (not b!6882903) (not b!6882942) (not bm!626595) (not b!6882905) (not b!6882822) (not b!6882919) (not b!6882752) (not b!6882946) (not d!2160177) (not b!6882913) (not bm!626599) (not b!6882760) (not b!6882947) (not b!6882902) (not b!6882907) (not b!6882914) (not b!6882910) (not bm!626594) (not b!6882851) (not b!6882911) (not b!6882897) (not d!2160217) (not b!6882930) (not b!6882759) (not b!6882768) (not b!6882921) tp_is_empty!42759 (not bm!626596) (not b!6882815) (not b!6882766) (not bm!626590) (not bm!626593) (not b!6882945) (not b!6882943) (not b!6882925) (not b!6882941) (not b!6882935) (not b!6882825) (not b!6882918) (not b!6882826) (not bm!626572) (not b!6882927) (not b!6882915) (not b!6882773) (not b!6882769) (not b!6882869) (not bm!626601) (not b!6882901) (not b!6882899) (not bm!626552) (not b!6882938) (not b!6882774) (not d!2160223) (not b!6882821) (not b!6882923) (not b!6882853) (not b!6882801) (not b!6882755) (not bm!626556) (not b!6882564) (not b!6882917) (not b!6882886) (not d!2160205) (not d!2160213) (not b!6882939) (not b!6882934) (not bm!626571) (not b!6882909) (not b!6882858) (not b!6882884) (not b!6882931) (not b!6882893) (not d!2160203) (not bm!626591) (not b!6882859) (not b!6882933) (not b!6882885) (not d!2160211) (not b!6882410) (not b!6882855) (not bm!626553) (not b!6882857) (not b!6882787) (not bm!626600) (not b!6882937) (not b!6882929) (not d!2160157) (not b!6882898) (not d!2160215) (not d!2160197) (not bm!626555) (not b!6882806) (not b!6882754) (not b!6882906) (not bm!626592) (not b!6882428) (not b!6882894) (not b!6882895) (not b!6882559) (not b!6882758) (not b!6882827) (not d!2160199) (not d!2160219) (not b!6882926) (not bm!626597))
(check-sat)
