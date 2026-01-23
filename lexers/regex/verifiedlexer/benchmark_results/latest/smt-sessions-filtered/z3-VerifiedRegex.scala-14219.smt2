; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!744494 () Bool)

(assert start!744494)

(declare-fun b!7888444 () Bool)

(declare-fun res!3131287 () Bool)

(declare-fun e!4657285 () Bool)

(assert (=> b!7888444 (=> (not res!3131287) (not e!4657285))))

(declare-datatypes ((C!42748 0))(
  ( (C!42749 (val!31836 Int)) )
))
(declare-datatypes ((List!74068 0))(
  ( (Nil!73944) (Cons!73944 (h!80392 C!42748) (t!388803 List!74068)) )
))
(declare-fun s!9586 () List!74068)

(declare-fun isEmpty!42429 (List!74068) Bool)

(assert (=> b!7888444 (= res!3131287 (not (isEmpty!42429 s!9586)))))

(declare-fun b!7888445 () Bool)

(declare-fun e!4657289 () Bool)

(declare-fun tp!2346862 () Bool)

(declare-fun tp!2346861 () Bool)

(assert (=> b!7888445 (= e!4657289 (and tp!2346862 tp!2346861))))

(declare-fun b!7888446 () Bool)

(declare-fun res!3131290 () Bool)

(assert (=> b!7888446 (=> (not res!3131290) (not e!4657285))))

(declare-datatypes ((tuple2!70060 0))(
  ( (tuple2!70061 (_1!38333 List!74068) (_2!38333 List!74068)) )
))
(declare-fun cut!2 () tuple2!70060)

(declare-fun ++!18115 (List!74068 List!74068) List!74068)

(assert (=> b!7888446 (= res!3131290 (= (++!18115 (_1!38333 cut!2) (_2!38333 cut!2)) s!9586))))

(declare-fun b!7888447 () Bool)

(declare-fun e!4657288 () Bool)

(declare-fun tp_is_empty!52821 () Bool)

(declare-fun tp!2346860 () Bool)

(assert (=> b!7888447 (= e!4657288 (and tp_is_empty!52821 tp!2346860))))

(declare-fun b!7888448 () Bool)

(declare-fun tp!2346863 () Bool)

(declare-fun tp!2346864 () Bool)

(assert (=> b!7888448 (= e!4657289 (and tp!2346863 tp!2346864))))

(declare-fun b!7888449 () Bool)

(declare-fun e!4657286 () Bool)

(declare-fun tp!2346859 () Bool)

(assert (=> b!7888449 (= e!4657286 (and tp_is_empty!52821 tp!2346859))))

(declare-fun b!7888450 () Bool)

(declare-fun e!4657287 () Bool)

(declare-fun tp!2346865 () Bool)

(assert (=> b!7888450 (= e!4657287 (and tp_is_empty!52821 tp!2346865))))

(declare-fun b!7888451 () Bool)

(declare-fun tp!2346866 () Bool)

(assert (=> b!7888451 (= e!4657289 tp!2346866)))

(declare-datatypes ((Regex!21211 0))(
  ( (ElementMatch!21211 (c!1448183 C!42748)) (Concat!30056 (regOne!42934 Regex!21211) (regTwo!42934 Regex!21211)) (EmptyExpr!21211) (Star!21211 (reg!21540 Regex!21211)) (EmptyLang!21211) (Union!21211 (regOne!42935 Regex!21211) (regTwo!42935 Regex!21211)) )
))
(declare-fun r!14100 () Regex!21211)

(declare-fun b!7888452 () Bool)

(declare-fun size!42852 (List!74068) Int)

(declare-fun regexDepth!515 (Regex!21211) Int)

(assert (=> b!7888452 (= e!4657285 (>= (+ (size!42852 (_2!38333 cut!2)) (regexDepth!515 r!14100)) (+ (size!42852 s!9586) (regexDepth!515 r!14100))))))

(declare-fun b!7888453 () Bool)

(assert (=> b!7888453 (= e!4657289 tp_is_empty!52821)))

(declare-fun res!3131285 () Bool)

(assert (=> start!744494 (=> (not res!3131285) (not e!4657285))))

(declare-fun validRegex!11621 (Regex!21211) Bool)

(assert (=> start!744494 (= res!3131285 (validRegex!11621 r!14100))))

(assert (=> start!744494 e!4657285))

(assert (=> start!744494 e!4657289))

(assert (=> start!744494 e!4657287))

(assert (=> start!744494 (and e!4657288 e!4657286)))

(declare-fun b!7888454 () Bool)

(declare-fun res!3131286 () Bool)

(assert (=> b!7888454 (=> (not res!3131286) (not e!4657285))))

(declare-fun matchRSpec!4674 (Regex!21211 List!74068) Bool)

(assert (=> b!7888454 (= res!3131286 (matchRSpec!4674 (reg!21540 r!14100) (_1!38333 cut!2)))))

(declare-fun b!7888455 () Bool)

(declare-fun res!3131288 () Bool)

(assert (=> b!7888455 (=> (not res!3131288) (not e!4657285))))

(get-info :version)

(assert (=> b!7888455 (= res!3131288 (and (not ((_ is EmptyExpr!21211) r!14100)) (not ((_ is EmptyLang!21211) r!14100)) (not ((_ is ElementMatch!21211) r!14100)) (not ((_ is Union!21211) r!14100)) ((_ is Star!21211) r!14100)))))

(declare-fun b!7888456 () Bool)

(declare-fun res!3131289 () Bool)

(assert (=> b!7888456 (=> (not res!3131289) (not e!4657285))))

(assert (=> b!7888456 (= res!3131289 (not (isEmpty!42429 (_1!38333 cut!2))))))

(assert (= (and start!744494 res!3131285) b!7888455))

(assert (= (and b!7888455 res!3131288) b!7888444))

(assert (= (and b!7888444 res!3131287) b!7888446))

(assert (= (and b!7888446 res!3131290) b!7888456))

(assert (= (and b!7888456 res!3131289) b!7888454))

(assert (= (and b!7888454 res!3131286) b!7888452))

(assert (= (and start!744494 ((_ is ElementMatch!21211) r!14100)) b!7888453))

(assert (= (and start!744494 ((_ is Concat!30056) r!14100)) b!7888448))

(assert (= (and start!744494 ((_ is Star!21211) r!14100)) b!7888451))

(assert (= (and start!744494 ((_ is Union!21211) r!14100)) b!7888445))

(assert (= (and start!744494 ((_ is Cons!73944) s!9586)) b!7888450))

(assert (= (and start!744494 ((_ is Cons!73944) (_1!38333 cut!2))) b!7888447))

(assert (= (and start!744494 ((_ is Cons!73944) (_2!38333 cut!2))) b!7888449))

(declare-fun m!8269896 () Bool)

(assert (=> b!7888444 m!8269896))

(declare-fun m!8269898 () Bool)

(assert (=> b!7888456 m!8269898))

(declare-fun m!8269900 () Bool)

(assert (=> b!7888446 m!8269900))

(declare-fun m!8269902 () Bool)

(assert (=> b!7888452 m!8269902))

(declare-fun m!8269904 () Bool)

(assert (=> b!7888452 m!8269904))

(declare-fun m!8269906 () Bool)

(assert (=> b!7888452 m!8269906))

(declare-fun m!8269908 () Bool)

(assert (=> start!744494 m!8269908))

(declare-fun m!8269910 () Bool)

(assert (=> b!7888454 m!8269910))

(check-sat (not b!7888445) (not b!7888456) (not b!7888452) tp_is_empty!52821 (not b!7888449) (not b!7888447) (not b!7888446) (not b!7888444) (not b!7888450) (not b!7888448) (not start!744494) (not b!7888454) (not b!7888451))
(check-sat)
(get-model)

(declare-fun d!2356678 () Bool)

(assert (=> d!2356678 (= (isEmpty!42429 (_1!38333 cut!2)) ((_ is Nil!73944) (_1!38333 cut!2)))))

(assert (=> b!7888456 d!2356678))

(declare-fun d!2356680 () Bool)

(assert (=> d!2356680 (= (isEmpty!42429 s!9586) ((_ is Nil!73944) s!9586))))

(assert (=> b!7888444 d!2356680))

(declare-fun b!7888502 () Bool)

(declare-fun e!4657327 () Bool)

(declare-fun call!731946 () Bool)

(assert (=> b!7888502 (= e!4657327 call!731946)))

(declare-fun b!7888503 () Bool)

(declare-fun res!3131320 () Bool)

(declare-fun e!4657326 () Bool)

(assert (=> b!7888503 (=> res!3131320 e!4657326)))

(assert (=> b!7888503 (= res!3131320 (not ((_ is Concat!30056) r!14100)))))

(declare-fun e!4657330 () Bool)

(assert (=> b!7888503 (= e!4657330 e!4657326)))

(declare-fun b!7888504 () Bool)

(declare-fun e!4657329 () Bool)

(assert (=> b!7888504 (= e!4657329 e!4657330)))

(declare-fun c!1448195 () Bool)

(assert (=> b!7888504 (= c!1448195 ((_ is Union!21211) r!14100))))

(declare-fun b!7888505 () Bool)

(declare-fun e!4657328 () Bool)

(assert (=> b!7888505 (= e!4657328 e!4657329)))

(declare-fun c!1448194 () Bool)

(assert (=> b!7888505 (= c!1448194 ((_ is Star!21211) r!14100))))

(declare-fun b!7888506 () Bool)

(declare-fun e!4657325 () Bool)

(declare-fun call!731948 () Bool)

(assert (=> b!7888506 (= e!4657325 call!731948)))

(declare-fun bm!731942 () Bool)

(assert (=> bm!731942 (= call!731946 call!731948)))

(declare-fun b!7888507 () Bool)

(declare-fun e!4657331 () Bool)

(declare-fun call!731947 () Bool)

(assert (=> b!7888507 (= e!4657331 call!731947)))

(declare-fun d!2356682 () Bool)

(declare-fun res!3131319 () Bool)

(assert (=> d!2356682 (=> res!3131319 e!4657328)))

(assert (=> d!2356682 (= res!3131319 ((_ is ElementMatch!21211) r!14100))))

(assert (=> d!2356682 (= (validRegex!11621 r!14100) e!4657328)))

(declare-fun bm!731941 () Bool)

(assert (=> bm!731941 (= call!731947 (validRegex!11621 (ite c!1448195 (regTwo!42935 r!14100) (regOne!42934 r!14100))))))

(declare-fun b!7888508 () Bool)

(declare-fun res!3131318 () Bool)

(assert (=> b!7888508 (=> (not res!3131318) (not e!4657331))))

(assert (=> b!7888508 (= res!3131318 call!731946)))

(assert (=> b!7888508 (= e!4657330 e!4657331)))

(declare-fun b!7888509 () Bool)

(assert (=> b!7888509 (= e!4657326 e!4657327)))

(declare-fun res!3131317 () Bool)

(assert (=> b!7888509 (=> (not res!3131317) (not e!4657327))))

(assert (=> b!7888509 (= res!3131317 call!731947)))

(declare-fun b!7888510 () Bool)

(assert (=> b!7888510 (= e!4657329 e!4657325)))

(declare-fun res!3131316 () Bool)

(declare-fun nullable!9466 (Regex!21211) Bool)

(assert (=> b!7888510 (= res!3131316 (not (nullable!9466 (reg!21540 r!14100))))))

(assert (=> b!7888510 (=> (not res!3131316) (not e!4657325))))

(declare-fun bm!731943 () Bool)

(assert (=> bm!731943 (= call!731948 (validRegex!11621 (ite c!1448194 (reg!21540 r!14100) (ite c!1448195 (regOne!42935 r!14100) (regTwo!42934 r!14100)))))))

(assert (= (and d!2356682 (not res!3131319)) b!7888505))

(assert (= (and b!7888505 c!1448194) b!7888510))

(assert (= (and b!7888505 (not c!1448194)) b!7888504))

(assert (= (and b!7888510 res!3131316) b!7888506))

(assert (= (and b!7888504 c!1448195) b!7888508))

(assert (= (and b!7888504 (not c!1448195)) b!7888503))

(assert (= (and b!7888508 res!3131318) b!7888507))

(assert (= (and b!7888503 (not res!3131320)) b!7888509))

(assert (= (and b!7888509 res!3131317) b!7888502))

(assert (= (or b!7888507 b!7888509) bm!731941))

(assert (= (or b!7888508 b!7888502) bm!731942))

(assert (= (or b!7888506 bm!731942) bm!731943))

(declare-fun m!8269918 () Bool)

(assert (=> bm!731941 m!8269918))

(declare-fun m!8269920 () Bool)

(assert (=> b!7888510 m!8269920))

(declare-fun m!8269922 () Bool)

(assert (=> bm!731943 m!8269922))

(assert (=> start!744494 d!2356682))

(declare-fun b!7888707 () Bool)

(assert (=> b!7888707 true))

(assert (=> b!7888707 true))

(declare-fun bs!1967450 () Bool)

(declare-fun b!7888703 () Bool)

(assert (= bs!1967450 (and b!7888703 b!7888707)))

(declare-fun lambda!472165 () Int)

(declare-fun lambda!472164 () Int)

(assert (=> bs!1967450 (not (= lambda!472165 lambda!472164))))

(assert (=> b!7888703 true))

(assert (=> b!7888703 true))

(declare-fun b!7888698 () Bool)

(declare-fun e!4657429 () Bool)

(assert (=> b!7888698 (= e!4657429 (= (_1!38333 cut!2) (Cons!73944 (c!1448183 (reg!21540 r!14100)) Nil!73944)))))

(declare-fun b!7888699 () Bool)

(declare-fun e!4657432 () Bool)

(assert (=> b!7888699 (= e!4657432 (matchRSpec!4674 (regTwo!42935 (reg!21540 r!14100)) (_1!38333 cut!2)))))

(declare-fun bm!731975 () Bool)

(declare-fun call!731980 () Bool)

(assert (=> bm!731975 (= call!731980 (isEmpty!42429 (_1!38333 cut!2)))))

(declare-fun bm!731976 () Bool)

(declare-fun call!731981 () Bool)

(declare-fun c!1448245 () Bool)

(declare-fun Exists!4764 (Int) Bool)

(assert (=> bm!731976 (= call!731981 (Exists!4764 (ite c!1448245 lambda!472164 lambda!472165)))))

(declare-fun b!7888700 () Bool)

(declare-fun e!4657433 () Bool)

(declare-fun e!4657431 () Bool)

(assert (=> b!7888700 (= e!4657433 e!4657431)))

(declare-fun res!3131372 () Bool)

(assert (=> b!7888700 (= res!3131372 (not ((_ is EmptyLang!21211) (reg!21540 r!14100))))))

(assert (=> b!7888700 (=> (not res!3131372) (not e!4657431))))

(declare-fun b!7888701 () Bool)

(declare-fun e!4657430 () Bool)

(declare-fun e!4657427 () Bool)

(assert (=> b!7888701 (= e!4657430 e!4657427)))

(assert (=> b!7888701 (= c!1448245 ((_ is Star!21211) (reg!21540 r!14100)))))

(declare-fun d!2356686 () Bool)

(declare-fun c!1448246 () Bool)

(assert (=> d!2356686 (= c!1448246 ((_ is EmptyExpr!21211) (reg!21540 r!14100)))))

(assert (=> d!2356686 (= (matchRSpec!4674 (reg!21540 r!14100) (_1!38333 cut!2)) e!4657433)))

(declare-fun b!7888702 () Bool)

(declare-fun res!3131371 () Bool)

(declare-fun e!4657428 () Bool)

(assert (=> b!7888702 (=> res!3131371 e!4657428)))

(assert (=> b!7888702 (= res!3131371 call!731980)))

(assert (=> b!7888702 (= e!4657427 e!4657428)))

(assert (=> b!7888703 (= e!4657427 call!731981)))

(declare-fun b!7888704 () Bool)

(assert (=> b!7888704 (= e!4657433 call!731980)))

(declare-fun b!7888705 () Bool)

(declare-fun c!1448244 () Bool)

(assert (=> b!7888705 (= c!1448244 ((_ is Union!21211) (reg!21540 r!14100)))))

(assert (=> b!7888705 (= e!4657429 e!4657430)))

(declare-fun b!7888706 () Bool)

(assert (=> b!7888706 (= e!4657430 e!4657432)))

(declare-fun res!3131373 () Bool)

(assert (=> b!7888706 (= res!3131373 (matchRSpec!4674 (regOne!42935 (reg!21540 r!14100)) (_1!38333 cut!2)))))

(assert (=> b!7888706 (=> res!3131373 e!4657432)))

(assert (=> b!7888707 (= e!4657428 call!731981)))

(declare-fun b!7888708 () Bool)

(declare-fun c!1448247 () Bool)

(assert (=> b!7888708 (= c!1448247 ((_ is ElementMatch!21211) (reg!21540 r!14100)))))

(assert (=> b!7888708 (= e!4657431 e!4657429)))

(assert (= (and d!2356686 c!1448246) b!7888704))

(assert (= (and d!2356686 (not c!1448246)) b!7888700))

(assert (= (and b!7888700 res!3131372) b!7888708))

(assert (= (and b!7888708 c!1448247) b!7888698))

(assert (= (and b!7888708 (not c!1448247)) b!7888705))

(assert (= (and b!7888705 c!1448244) b!7888706))

(assert (= (and b!7888705 (not c!1448244)) b!7888701))

(assert (= (and b!7888706 (not res!3131373)) b!7888699))

(assert (= (and b!7888701 c!1448245) b!7888702))

(assert (= (and b!7888701 (not c!1448245)) b!7888703))

(assert (= (and b!7888702 (not res!3131371)) b!7888707))

(assert (= (or b!7888707 b!7888703) bm!731976))

(assert (= (or b!7888704 b!7888702) bm!731975))

(declare-fun m!8269956 () Bool)

(assert (=> b!7888699 m!8269956))

(assert (=> bm!731975 m!8269898))

(declare-fun m!8269958 () Bool)

(assert (=> bm!731976 m!8269958))

(declare-fun m!8269960 () Bool)

(assert (=> b!7888706 m!8269960))

(assert (=> b!7888454 d!2356686))

(declare-fun d!2356700 () Bool)

(declare-fun lt!2681482 () Int)

(assert (=> d!2356700 (>= lt!2681482 0)))

(declare-fun e!4657436 () Int)

(assert (=> d!2356700 (= lt!2681482 e!4657436)))

(declare-fun c!1448250 () Bool)

(assert (=> d!2356700 (= c!1448250 ((_ is Nil!73944) (_2!38333 cut!2)))))

(assert (=> d!2356700 (= (size!42852 (_2!38333 cut!2)) lt!2681482)))

(declare-fun b!7888717 () Bool)

(assert (=> b!7888717 (= e!4657436 0)))

(declare-fun b!7888718 () Bool)

(assert (=> b!7888718 (= e!4657436 (+ 1 (size!42852 (t!388803 (_2!38333 cut!2)))))))

(assert (= (and d!2356700 c!1448250) b!7888717))

(assert (= (and d!2356700 (not c!1448250)) b!7888718))

(declare-fun m!8269962 () Bool)

(assert (=> b!7888718 m!8269962))

(assert (=> b!7888452 d!2356700))

(declare-fun b!7888753 () Bool)

(declare-fun res!3131382 () Bool)

(declare-fun e!4657462 () Bool)

(assert (=> b!7888753 (=> (not res!3131382) (not e!4657462))))

(declare-fun lt!2681485 () Int)

(declare-fun call!731997 () Int)

(assert (=> b!7888753 (= res!3131382 (> lt!2681485 call!731997))))

(declare-fun e!4657458 () Bool)

(assert (=> b!7888753 (= e!4657458 e!4657462)))

(declare-fun b!7888754 () Bool)

(declare-fun e!4657457 () Int)

(declare-fun e!4657466 () Int)

(assert (=> b!7888754 (= e!4657457 e!4657466)))

(declare-fun c!1448268 () Bool)

(assert (=> b!7888754 (= c!1448268 ((_ is Star!21211) r!14100))))

(declare-fun b!7888755 () Bool)

(declare-fun e!4657465 () Bool)

(declare-fun e!4657461 () Bool)

(assert (=> b!7888755 (= e!4657465 e!4657461)))

(declare-fun res!3131381 () Bool)

(assert (=> b!7888755 (= res!3131381 (> lt!2681485 call!731997))))

(assert (=> b!7888755 (=> (not res!3131381) (not e!4657461))))

(declare-fun b!7888756 () Bool)

(declare-fun call!731996 () Int)

(assert (=> b!7888756 (= e!4657461 (> lt!2681485 call!731996))))

(declare-fun c!1448271 () Bool)

(declare-fun bm!731991 () Bool)

(declare-fun c!1448266 () Bool)

(assert (=> bm!731991 (= call!731996 (regexDepth!515 (ite c!1448266 (regTwo!42935 r!14100) (ite c!1448271 (regTwo!42934 r!14100) (reg!21540 r!14100)))))))

(declare-fun bm!731992 () Bool)

(declare-fun call!732000 () Int)

(declare-fun call!731998 () Int)

(assert (=> bm!731992 (= call!732000 call!731998)))

(declare-fun b!7888757 () Bool)

(declare-fun e!4657464 () Bool)

(assert (=> b!7888757 (= e!4657464 (= lt!2681485 1))))

(declare-fun bm!731993 () Bool)

(declare-fun c!1448270 () Bool)

(declare-fun call!731999 () Int)

(declare-fun call!732001 () Int)

(declare-fun maxBigInt!0 (Int Int) Int)

(assert (=> bm!731993 (= call!732001 (maxBigInt!0 (ite c!1448270 call!732000 call!731999) (ite c!1448270 call!731999 call!732000)))))

(declare-fun b!7888758 () Bool)

(declare-fun call!732002 () Int)

(assert (=> b!7888758 (= e!4657464 (> lt!2681485 call!732002))))

(declare-fun b!7888759 () Bool)

(declare-fun e!4657460 () Int)

(declare-fun e!4657463 () Int)

(assert (=> b!7888759 (= e!4657460 e!4657463)))

(declare-fun c!1448269 () Bool)

(assert (=> b!7888759 (= c!1448269 ((_ is Concat!30056) r!14100))))

(declare-fun bm!731994 () Bool)

(assert (=> bm!731994 (= call!732002 call!731996)))

(declare-fun b!7888760 () Bool)

(assert (=> b!7888760 (= c!1448270 ((_ is Union!21211) r!14100))))

(assert (=> b!7888760 (= e!4657466 e!4657460)))

(declare-fun b!7888761 () Bool)

(assert (=> b!7888761 (= e!4657457 1)))

(declare-fun bm!731995 () Bool)

(assert (=> bm!731995 (= call!731997 (regexDepth!515 (ite c!1448266 (regOne!42935 r!14100) (regOne!42934 r!14100))))))

(declare-fun bm!731996 () Bool)

(assert (=> bm!731996 (= call!731998 (regexDepth!515 (ite c!1448268 (reg!21540 r!14100) (ite c!1448270 (regOne!42935 r!14100) (regTwo!42934 r!14100)))))))

(declare-fun d!2356702 () Bool)

(declare-fun e!4657459 () Bool)

(assert (=> d!2356702 e!4657459))

(declare-fun res!3131380 () Bool)

(assert (=> d!2356702 (=> (not res!3131380) (not e!4657459))))

(assert (=> d!2356702 (= res!3131380 (> lt!2681485 0))))

(assert (=> d!2356702 (= lt!2681485 e!4657457)))

(declare-fun c!1448267 () Bool)

(assert (=> d!2356702 (= c!1448267 ((_ is ElementMatch!21211) r!14100))))

(assert (=> d!2356702 (= (regexDepth!515 r!14100) lt!2681485)))

(declare-fun b!7888762 () Bool)

(assert (=> b!7888762 (= e!4657463 (+ 1 call!732001))))

(declare-fun bm!731997 () Bool)

(assert (=> bm!731997 (= call!731999 (regexDepth!515 (ite c!1448270 (regTwo!42935 r!14100) (regOne!42934 r!14100))))))

(declare-fun b!7888763 () Bool)

(assert (=> b!7888763 (= e!4657462 (> lt!2681485 call!732002))))

(declare-fun b!7888764 () Bool)

(assert (=> b!7888764 (= e!4657460 (+ 1 call!732001))))

(declare-fun b!7888765 () Bool)

(assert (=> b!7888765 (= e!4657459 e!4657465)))

(assert (=> b!7888765 (= c!1448266 ((_ is Union!21211) r!14100))))

(declare-fun b!7888766 () Bool)

(assert (=> b!7888766 (= e!4657466 (+ 1 call!731998))))

(declare-fun b!7888767 () Bool)

(assert (=> b!7888767 (= e!4657463 1)))

(declare-fun b!7888768 () Bool)

(declare-fun c!1448265 () Bool)

(assert (=> b!7888768 (= c!1448265 ((_ is Star!21211) r!14100))))

(assert (=> b!7888768 (= e!4657458 e!4657464)))

(declare-fun b!7888769 () Bool)

(assert (=> b!7888769 (= e!4657465 e!4657458)))

(assert (=> b!7888769 (= c!1448271 ((_ is Concat!30056) r!14100))))

(assert (= (and d!2356702 c!1448267) b!7888761))

(assert (= (and d!2356702 (not c!1448267)) b!7888754))

(assert (= (and b!7888754 c!1448268) b!7888766))

(assert (= (and b!7888754 (not c!1448268)) b!7888760))

(assert (= (and b!7888760 c!1448270) b!7888764))

(assert (= (and b!7888760 (not c!1448270)) b!7888759))

(assert (= (and b!7888759 c!1448269) b!7888762))

(assert (= (and b!7888759 (not c!1448269)) b!7888767))

(assert (= (or b!7888764 b!7888762) bm!731992))

(assert (= (or b!7888764 b!7888762) bm!731997))

(assert (= (or b!7888764 b!7888762) bm!731993))

(assert (= (or b!7888766 bm!731992) bm!731996))

(assert (= (and d!2356702 res!3131380) b!7888765))

(assert (= (and b!7888765 c!1448266) b!7888755))

(assert (= (and b!7888765 (not c!1448266)) b!7888769))

(assert (= (and b!7888755 res!3131381) b!7888756))

(assert (= (and b!7888769 c!1448271) b!7888753))

(assert (= (and b!7888769 (not c!1448271)) b!7888768))

(assert (= (and b!7888753 res!3131382) b!7888763))

(assert (= (and b!7888768 c!1448265) b!7888758))

(assert (= (and b!7888768 (not c!1448265)) b!7888757))

(assert (= (or b!7888763 b!7888758) bm!731994))

(assert (= (or b!7888755 b!7888753) bm!731995))

(assert (= (or b!7888756 bm!731994) bm!731991))

(declare-fun m!8269964 () Bool)

(assert (=> bm!731997 m!8269964))

(declare-fun m!8269966 () Bool)

(assert (=> bm!731991 m!8269966))

(declare-fun m!8269968 () Bool)

(assert (=> bm!731996 m!8269968))

(declare-fun m!8269970 () Bool)

(assert (=> bm!731993 m!8269970))

(declare-fun m!8269972 () Bool)

(assert (=> bm!731995 m!8269972))

(assert (=> b!7888452 d!2356702))

(declare-fun d!2356704 () Bool)

(declare-fun lt!2681486 () Int)

(assert (=> d!2356704 (>= lt!2681486 0)))

(declare-fun e!4657467 () Int)

(assert (=> d!2356704 (= lt!2681486 e!4657467)))

(declare-fun c!1448272 () Bool)

(assert (=> d!2356704 (= c!1448272 ((_ is Nil!73944) s!9586))))

(assert (=> d!2356704 (= (size!42852 s!9586) lt!2681486)))

(declare-fun b!7888770 () Bool)

(assert (=> b!7888770 (= e!4657467 0)))

(declare-fun b!7888771 () Bool)

(assert (=> b!7888771 (= e!4657467 (+ 1 (size!42852 (t!388803 s!9586))))))

(assert (= (and d!2356704 c!1448272) b!7888770))

(assert (= (and d!2356704 (not c!1448272)) b!7888771))

(declare-fun m!8269974 () Bool)

(assert (=> b!7888771 m!8269974))

(assert (=> b!7888452 d!2356704))

(declare-fun b!7888780 () Bool)

(declare-fun e!4657473 () List!74068)

(assert (=> b!7888780 (= e!4657473 (_2!38333 cut!2))))

(declare-fun b!7888783 () Bool)

(declare-fun e!4657472 () Bool)

(declare-fun lt!2681489 () List!74068)

(assert (=> b!7888783 (= e!4657472 (or (not (= (_2!38333 cut!2) Nil!73944)) (= lt!2681489 (_1!38333 cut!2))))))

(declare-fun b!7888782 () Bool)

(declare-fun res!3131388 () Bool)

(assert (=> b!7888782 (=> (not res!3131388) (not e!4657472))))

(assert (=> b!7888782 (= res!3131388 (= (size!42852 lt!2681489) (+ (size!42852 (_1!38333 cut!2)) (size!42852 (_2!38333 cut!2)))))))

(declare-fun b!7888781 () Bool)

(assert (=> b!7888781 (= e!4657473 (Cons!73944 (h!80392 (_1!38333 cut!2)) (++!18115 (t!388803 (_1!38333 cut!2)) (_2!38333 cut!2))))))

(declare-fun d!2356706 () Bool)

(assert (=> d!2356706 e!4657472))

(declare-fun res!3131387 () Bool)

(assert (=> d!2356706 (=> (not res!3131387) (not e!4657472))))

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!15695 (List!74068) (InoxSet C!42748))

(assert (=> d!2356706 (= res!3131387 (= (content!15695 lt!2681489) ((_ map or) (content!15695 (_1!38333 cut!2)) (content!15695 (_2!38333 cut!2)))))))

(assert (=> d!2356706 (= lt!2681489 e!4657473)))

(declare-fun c!1448275 () Bool)

(assert (=> d!2356706 (= c!1448275 ((_ is Nil!73944) (_1!38333 cut!2)))))

(assert (=> d!2356706 (= (++!18115 (_1!38333 cut!2) (_2!38333 cut!2)) lt!2681489)))

(assert (= (and d!2356706 c!1448275) b!7888780))

(assert (= (and d!2356706 (not c!1448275)) b!7888781))

(assert (= (and d!2356706 res!3131387) b!7888782))

(assert (= (and b!7888782 res!3131388) b!7888783))

(declare-fun m!8269976 () Bool)

(assert (=> b!7888782 m!8269976))

(declare-fun m!8269978 () Bool)

(assert (=> b!7888782 m!8269978))

(assert (=> b!7888782 m!8269902))

(declare-fun m!8269980 () Bool)

(assert (=> b!7888781 m!8269980))

(declare-fun m!8269982 () Bool)

(assert (=> d!2356706 m!8269982))

(declare-fun m!8269984 () Bool)

(assert (=> d!2356706 m!8269984))

(declare-fun m!8269986 () Bool)

(assert (=> d!2356706 m!8269986))

(assert (=> b!7888446 d!2356706))

(declare-fun b!7888795 () Bool)

(declare-fun e!4657476 () Bool)

(declare-fun tp!2346920 () Bool)

(declare-fun tp!2346919 () Bool)

(assert (=> b!7888795 (= e!4657476 (and tp!2346920 tp!2346919))))

(assert (=> b!7888445 (= tp!2346862 e!4657476)))

(declare-fun b!7888797 () Bool)

(declare-fun tp!2346917 () Bool)

(declare-fun tp!2346921 () Bool)

(assert (=> b!7888797 (= e!4657476 (and tp!2346917 tp!2346921))))

(declare-fun b!7888796 () Bool)

(declare-fun tp!2346918 () Bool)

(assert (=> b!7888796 (= e!4657476 tp!2346918)))

(declare-fun b!7888794 () Bool)

(assert (=> b!7888794 (= e!4657476 tp_is_empty!52821)))

(assert (= (and b!7888445 ((_ is ElementMatch!21211) (regOne!42935 r!14100))) b!7888794))

(assert (= (and b!7888445 ((_ is Concat!30056) (regOne!42935 r!14100))) b!7888795))

(assert (= (and b!7888445 ((_ is Star!21211) (regOne!42935 r!14100))) b!7888796))

(assert (= (and b!7888445 ((_ is Union!21211) (regOne!42935 r!14100))) b!7888797))

(declare-fun b!7888799 () Bool)

(declare-fun e!4657477 () Bool)

(declare-fun tp!2346925 () Bool)

(declare-fun tp!2346924 () Bool)

(assert (=> b!7888799 (= e!4657477 (and tp!2346925 tp!2346924))))

(assert (=> b!7888445 (= tp!2346861 e!4657477)))

(declare-fun b!7888801 () Bool)

(declare-fun tp!2346922 () Bool)

(declare-fun tp!2346926 () Bool)

(assert (=> b!7888801 (= e!4657477 (and tp!2346922 tp!2346926))))

(declare-fun b!7888800 () Bool)

(declare-fun tp!2346923 () Bool)

(assert (=> b!7888800 (= e!4657477 tp!2346923)))

(declare-fun b!7888798 () Bool)

(assert (=> b!7888798 (= e!4657477 tp_is_empty!52821)))

(assert (= (and b!7888445 ((_ is ElementMatch!21211) (regTwo!42935 r!14100))) b!7888798))

(assert (= (and b!7888445 ((_ is Concat!30056) (regTwo!42935 r!14100))) b!7888799))

(assert (= (and b!7888445 ((_ is Star!21211) (regTwo!42935 r!14100))) b!7888800))

(assert (= (and b!7888445 ((_ is Union!21211) (regTwo!42935 r!14100))) b!7888801))

(declare-fun b!7888806 () Bool)

(declare-fun e!4657480 () Bool)

(declare-fun tp!2346929 () Bool)

(assert (=> b!7888806 (= e!4657480 (and tp_is_empty!52821 tp!2346929))))

(assert (=> b!7888450 (= tp!2346865 e!4657480)))

(assert (= (and b!7888450 ((_ is Cons!73944) (t!388803 s!9586))) b!7888806))

(declare-fun b!7888807 () Bool)

(declare-fun e!4657481 () Bool)

(declare-fun tp!2346930 () Bool)

(assert (=> b!7888807 (= e!4657481 (and tp_is_empty!52821 tp!2346930))))

(assert (=> b!7888449 (= tp!2346859 e!4657481)))

(assert (= (and b!7888449 ((_ is Cons!73944) (t!388803 (_2!38333 cut!2)))) b!7888807))

(declare-fun b!7888809 () Bool)

(declare-fun e!4657482 () Bool)

(declare-fun tp!2346934 () Bool)

(declare-fun tp!2346933 () Bool)

(assert (=> b!7888809 (= e!4657482 (and tp!2346934 tp!2346933))))

(assert (=> b!7888448 (= tp!2346863 e!4657482)))

(declare-fun b!7888811 () Bool)

(declare-fun tp!2346931 () Bool)

(declare-fun tp!2346935 () Bool)

(assert (=> b!7888811 (= e!4657482 (and tp!2346931 tp!2346935))))

(declare-fun b!7888810 () Bool)

(declare-fun tp!2346932 () Bool)

(assert (=> b!7888810 (= e!4657482 tp!2346932)))

(declare-fun b!7888808 () Bool)

(assert (=> b!7888808 (= e!4657482 tp_is_empty!52821)))

(assert (= (and b!7888448 ((_ is ElementMatch!21211) (regOne!42934 r!14100))) b!7888808))

(assert (= (and b!7888448 ((_ is Concat!30056) (regOne!42934 r!14100))) b!7888809))

(assert (= (and b!7888448 ((_ is Star!21211) (regOne!42934 r!14100))) b!7888810))

(assert (= (and b!7888448 ((_ is Union!21211) (regOne!42934 r!14100))) b!7888811))

(declare-fun b!7888813 () Bool)

(declare-fun e!4657483 () Bool)

(declare-fun tp!2346939 () Bool)

(declare-fun tp!2346938 () Bool)

(assert (=> b!7888813 (= e!4657483 (and tp!2346939 tp!2346938))))

(assert (=> b!7888448 (= tp!2346864 e!4657483)))

(declare-fun b!7888815 () Bool)

(declare-fun tp!2346936 () Bool)

(declare-fun tp!2346940 () Bool)

(assert (=> b!7888815 (= e!4657483 (and tp!2346936 tp!2346940))))

(declare-fun b!7888814 () Bool)

(declare-fun tp!2346937 () Bool)

(assert (=> b!7888814 (= e!4657483 tp!2346937)))

(declare-fun b!7888812 () Bool)

(assert (=> b!7888812 (= e!4657483 tp_is_empty!52821)))

(assert (= (and b!7888448 ((_ is ElementMatch!21211) (regTwo!42934 r!14100))) b!7888812))

(assert (= (and b!7888448 ((_ is Concat!30056) (regTwo!42934 r!14100))) b!7888813))

(assert (= (and b!7888448 ((_ is Star!21211) (regTwo!42934 r!14100))) b!7888814))

(assert (= (and b!7888448 ((_ is Union!21211) (regTwo!42934 r!14100))) b!7888815))

(declare-fun b!7888816 () Bool)

(declare-fun e!4657484 () Bool)

(declare-fun tp!2346941 () Bool)

(assert (=> b!7888816 (= e!4657484 (and tp_is_empty!52821 tp!2346941))))

(assert (=> b!7888447 (= tp!2346860 e!4657484)))

(assert (= (and b!7888447 ((_ is Cons!73944) (t!388803 (_1!38333 cut!2)))) b!7888816))

(declare-fun b!7888818 () Bool)

(declare-fun e!4657485 () Bool)

(declare-fun tp!2346945 () Bool)

(declare-fun tp!2346944 () Bool)

(assert (=> b!7888818 (= e!4657485 (and tp!2346945 tp!2346944))))

(assert (=> b!7888451 (= tp!2346866 e!4657485)))

(declare-fun b!7888820 () Bool)

(declare-fun tp!2346942 () Bool)

(declare-fun tp!2346946 () Bool)

(assert (=> b!7888820 (= e!4657485 (and tp!2346942 tp!2346946))))

(declare-fun b!7888819 () Bool)

(declare-fun tp!2346943 () Bool)

(assert (=> b!7888819 (= e!4657485 tp!2346943)))

(declare-fun b!7888817 () Bool)

(assert (=> b!7888817 (= e!4657485 tp_is_empty!52821)))

(assert (= (and b!7888451 ((_ is ElementMatch!21211) (reg!21540 r!14100))) b!7888817))

(assert (= (and b!7888451 ((_ is Concat!30056) (reg!21540 r!14100))) b!7888818))

(assert (= (and b!7888451 ((_ is Star!21211) (reg!21540 r!14100))) b!7888819))

(assert (= (and b!7888451 ((_ is Union!21211) (reg!21540 r!14100))) b!7888820))

(check-sat (not b!7888820) (not b!7888797) (not b!7888699) (not b!7888813) (not b!7888795) (not b!7888801) (not b!7888819) (not b!7888800) (not bm!731995) (not b!7888706) (not d!2356706) (not b!7888809) (not b!7888510) (not bm!731991) (not bm!731997) tp_is_empty!52821 (not b!7888816) (not b!7888818) (not b!7888815) (not b!7888718) (not b!7888796) (not bm!731975) (not b!7888811) (not b!7888814) (not b!7888782) (not bm!731996) (not bm!731976) (not b!7888810) (not b!7888807) (not bm!731993) (not b!7888799) (not b!7888771) (not bm!731941) (not b!7888806) (not b!7888781) (not bm!731943))
(check-sat)
(get-model)

(declare-fun bs!1967451 () Bool)

(declare-fun b!7888830 () Bool)

(assert (= bs!1967451 (and b!7888830 b!7888707)))

(declare-fun lambda!472166 () Int)

(assert (=> bs!1967451 (= (and (= (reg!21540 (regTwo!42935 (reg!21540 r!14100))) (reg!21540 (reg!21540 r!14100))) (= (regTwo!42935 (reg!21540 r!14100)) (reg!21540 r!14100))) (= lambda!472166 lambda!472164))))

(declare-fun bs!1967452 () Bool)

(assert (= bs!1967452 (and b!7888830 b!7888703)))

(assert (=> bs!1967452 (not (= lambda!472166 lambda!472165))))

(assert (=> b!7888830 true))

(assert (=> b!7888830 true))

(declare-fun bs!1967453 () Bool)

(declare-fun b!7888826 () Bool)

(assert (= bs!1967453 (and b!7888826 b!7888707)))

(declare-fun lambda!472167 () Int)

(assert (=> bs!1967453 (not (= lambda!472167 lambda!472164))))

(declare-fun bs!1967454 () Bool)

(assert (= bs!1967454 (and b!7888826 b!7888703)))

(assert (=> bs!1967454 (= (and (= (regOne!42934 (regTwo!42935 (reg!21540 r!14100))) (regOne!42934 (reg!21540 r!14100))) (= (regTwo!42934 (regTwo!42935 (reg!21540 r!14100))) (regTwo!42934 (reg!21540 r!14100)))) (= lambda!472167 lambda!472165))))

(declare-fun bs!1967455 () Bool)

(assert (= bs!1967455 (and b!7888826 b!7888830)))

(assert (=> bs!1967455 (not (= lambda!472167 lambda!472166))))

(assert (=> b!7888826 true))

(assert (=> b!7888826 true))

(declare-fun b!7888821 () Bool)

(declare-fun e!4657488 () Bool)

(assert (=> b!7888821 (= e!4657488 (= (_1!38333 cut!2) (Cons!73944 (c!1448183 (regTwo!42935 (reg!21540 r!14100))) Nil!73944)))))

(declare-fun b!7888822 () Bool)

(declare-fun e!4657491 () Bool)

(assert (=> b!7888822 (= e!4657491 (matchRSpec!4674 (regTwo!42935 (regTwo!42935 (reg!21540 r!14100))) (_1!38333 cut!2)))))

(declare-fun bm!731998 () Bool)

(declare-fun call!732003 () Bool)

(assert (=> bm!731998 (= call!732003 (isEmpty!42429 (_1!38333 cut!2)))))

(declare-fun c!1448277 () Bool)

(declare-fun call!732004 () Bool)

(declare-fun bm!731999 () Bool)

(assert (=> bm!731999 (= call!732004 (Exists!4764 (ite c!1448277 lambda!472166 lambda!472167)))))

(declare-fun b!7888823 () Bool)

(declare-fun e!4657492 () Bool)

(declare-fun e!4657490 () Bool)

(assert (=> b!7888823 (= e!4657492 e!4657490)))

(declare-fun res!3131390 () Bool)

(assert (=> b!7888823 (= res!3131390 (not ((_ is EmptyLang!21211) (regTwo!42935 (reg!21540 r!14100)))))))

(assert (=> b!7888823 (=> (not res!3131390) (not e!4657490))))

(declare-fun b!7888824 () Bool)

(declare-fun e!4657489 () Bool)

(declare-fun e!4657486 () Bool)

(assert (=> b!7888824 (= e!4657489 e!4657486)))

(assert (=> b!7888824 (= c!1448277 ((_ is Star!21211) (regTwo!42935 (reg!21540 r!14100))))))

(declare-fun d!2356708 () Bool)

(declare-fun c!1448278 () Bool)

(assert (=> d!2356708 (= c!1448278 ((_ is EmptyExpr!21211) (regTwo!42935 (reg!21540 r!14100))))))

(assert (=> d!2356708 (= (matchRSpec!4674 (regTwo!42935 (reg!21540 r!14100)) (_1!38333 cut!2)) e!4657492)))

(declare-fun b!7888825 () Bool)

(declare-fun res!3131389 () Bool)

(declare-fun e!4657487 () Bool)

(assert (=> b!7888825 (=> res!3131389 e!4657487)))

(assert (=> b!7888825 (= res!3131389 call!732003)))

(assert (=> b!7888825 (= e!4657486 e!4657487)))

(assert (=> b!7888826 (= e!4657486 call!732004)))

(declare-fun b!7888827 () Bool)

(assert (=> b!7888827 (= e!4657492 call!732003)))

(declare-fun b!7888828 () Bool)

(declare-fun c!1448276 () Bool)

(assert (=> b!7888828 (= c!1448276 ((_ is Union!21211) (regTwo!42935 (reg!21540 r!14100))))))

(assert (=> b!7888828 (= e!4657488 e!4657489)))

(declare-fun b!7888829 () Bool)

(assert (=> b!7888829 (= e!4657489 e!4657491)))

(declare-fun res!3131391 () Bool)

(assert (=> b!7888829 (= res!3131391 (matchRSpec!4674 (regOne!42935 (regTwo!42935 (reg!21540 r!14100))) (_1!38333 cut!2)))))

(assert (=> b!7888829 (=> res!3131391 e!4657491)))

(assert (=> b!7888830 (= e!4657487 call!732004)))

(declare-fun b!7888831 () Bool)

(declare-fun c!1448279 () Bool)

(assert (=> b!7888831 (= c!1448279 ((_ is ElementMatch!21211) (regTwo!42935 (reg!21540 r!14100))))))

(assert (=> b!7888831 (= e!4657490 e!4657488)))

(assert (= (and d!2356708 c!1448278) b!7888827))

(assert (= (and d!2356708 (not c!1448278)) b!7888823))

(assert (= (and b!7888823 res!3131390) b!7888831))

(assert (= (and b!7888831 c!1448279) b!7888821))

(assert (= (and b!7888831 (not c!1448279)) b!7888828))

(assert (= (and b!7888828 c!1448276) b!7888829))

(assert (= (and b!7888828 (not c!1448276)) b!7888824))

(assert (= (and b!7888829 (not res!3131391)) b!7888822))

(assert (= (and b!7888824 c!1448277) b!7888825))

(assert (= (and b!7888824 (not c!1448277)) b!7888826))

(assert (= (and b!7888825 (not res!3131389)) b!7888830))

(assert (= (or b!7888830 b!7888826) bm!731999))

(assert (= (or b!7888827 b!7888825) bm!731998))

(declare-fun m!8269988 () Bool)

(assert (=> b!7888822 m!8269988))

(assert (=> bm!731998 m!8269898))

(declare-fun m!8269990 () Bool)

(assert (=> bm!731999 m!8269990))

(declare-fun m!8269992 () Bool)

(assert (=> b!7888829 m!8269992))

(assert (=> b!7888699 d!2356708))

(declare-fun b!7888832 () Bool)

(declare-fun res!3131394 () Bool)

(declare-fun e!4657498 () Bool)

(assert (=> b!7888832 (=> (not res!3131394) (not e!4657498))))

(declare-fun lt!2681490 () Int)

(declare-fun call!732006 () Int)

(assert (=> b!7888832 (= res!3131394 (> lt!2681490 call!732006))))

(declare-fun e!4657494 () Bool)

(assert (=> b!7888832 (= e!4657494 e!4657498)))

(declare-fun b!7888833 () Bool)

(declare-fun e!4657493 () Int)

(declare-fun e!4657502 () Int)

(assert (=> b!7888833 (= e!4657493 e!4657502)))

(declare-fun c!1448283 () Bool)

(assert (=> b!7888833 (= c!1448283 ((_ is Star!21211) (ite c!1448270 (regTwo!42935 r!14100) (regOne!42934 r!14100))))))

(declare-fun b!7888834 () Bool)

(declare-fun e!4657501 () Bool)

(declare-fun e!4657497 () Bool)

(assert (=> b!7888834 (= e!4657501 e!4657497)))

(declare-fun res!3131393 () Bool)

(assert (=> b!7888834 (= res!3131393 (> lt!2681490 call!732006))))

(assert (=> b!7888834 (=> (not res!3131393) (not e!4657497))))

(declare-fun b!7888835 () Bool)

(declare-fun call!732005 () Int)

(assert (=> b!7888835 (= e!4657497 (> lt!2681490 call!732005))))

(declare-fun bm!732000 () Bool)

(declare-fun c!1448286 () Bool)

(declare-fun c!1448281 () Bool)

(assert (=> bm!732000 (= call!732005 (regexDepth!515 (ite c!1448281 (regTwo!42935 (ite c!1448270 (regTwo!42935 r!14100) (regOne!42934 r!14100))) (ite c!1448286 (regTwo!42934 (ite c!1448270 (regTwo!42935 r!14100) (regOne!42934 r!14100))) (reg!21540 (ite c!1448270 (regTwo!42935 r!14100) (regOne!42934 r!14100)))))))))

(declare-fun bm!732001 () Bool)

(declare-fun call!732009 () Int)

(declare-fun call!732007 () Int)

(assert (=> bm!732001 (= call!732009 call!732007)))

(declare-fun b!7888836 () Bool)

(declare-fun e!4657500 () Bool)

(assert (=> b!7888836 (= e!4657500 (= lt!2681490 1))))

(declare-fun call!732008 () Int)

(declare-fun bm!732002 () Bool)

(declare-fun c!1448285 () Bool)

(declare-fun call!732010 () Int)

(assert (=> bm!732002 (= call!732010 (maxBigInt!0 (ite c!1448285 call!732009 call!732008) (ite c!1448285 call!732008 call!732009)))))

(declare-fun b!7888837 () Bool)

(declare-fun call!732011 () Int)

(assert (=> b!7888837 (= e!4657500 (> lt!2681490 call!732011))))

(declare-fun b!7888838 () Bool)

(declare-fun e!4657496 () Int)

(declare-fun e!4657499 () Int)

(assert (=> b!7888838 (= e!4657496 e!4657499)))

(declare-fun c!1448284 () Bool)

(assert (=> b!7888838 (= c!1448284 ((_ is Concat!30056) (ite c!1448270 (regTwo!42935 r!14100) (regOne!42934 r!14100))))))

(declare-fun bm!732003 () Bool)

(assert (=> bm!732003 (= call!732011 call!732005)))

(declare-fun b!7888839 () Bool)

(assert (=> b!7888839 (= c!1448285 ((_ is Union!21211) (ite c!1448270 (regTwo!42935 r!14100) (regOne!42934 r!14100))))))

(assert (=> b!7888839 (= e!4657502 e!4657496)))

(declare-fun b!7888840 () Bool)

(assert (=> b!7888840 (= e!4657493 1)))

(declare-fun bm!732004 () Bool)

(assert (=> bm!732004 (= call!732006 (regexDepth!515 (ite c!1448281 (regOne!42935 (ite c!1448270 (regTwo!42935 r!14100) (regOne!42934 r!14100))) (regOne!42934 (ite c!1448270 (regTwo!42935 r!14100) (regOne!42934 r!14100))))))))

(declare-fun bm!732005 () Bool)

(assert (=> bm!732005 (= call!732007 (regexDepth!515 (ite c!1448283 (reg!21540 (ite c!1448270 (regTwo!42935 r!14100) (regOne!42934 r!14100))) (ite c!1448285 (regOne!42935 (ite c!1448270 (regTwo!42935 r!14100) (regOne!42934 r!14100))) (regTwo!42934 (ite c!1448270 (regTwo!42935 r!14100) (regOne!42934 r!14100)))))))))

(declare-fun d!2356710 () Bool)

(declare-fun e!4657495 () Bool)

(assert (=> d!2356710 e!4657495))

(declare-fun res!3131392 () Bool)

(assert (=> d!2356710 (=> (not res!3131392) (not e!4657495))))

(assert (=> d!2356710 (= res!3131392 (> lt!2681490 0))))

(assert (=> d!2356710 (= lt!2681490 e!4657493)))

(declare-fun c!1448282 () Bool)

(assert (=> d!2356710 (= c!1448282 ((_ is ElementMatch!21211) (ite c!1448270 (regTwo!42935 r!14100) (regOne!42934 r!14100))))))

(assert (=> d!2356710 (= (regexDepth!515 (ite c!1448270 (regTwo!42935 r!14100) (regOne!42934 r!14100))) lt!2681490)))

(declare-fun b!7888841 () Bool)

(assert (=> b!7888841 (= e!4657499 (+ 1 call!732010))))

(declare-fun bm!732006 () Bool)

(assert (=> bm!732006 (= call!732008 (regexDepth!515 (ite c!1448285 (regTwo!42935 (ite c!1448270 (regTwo!42935 r!14100) (regOne!42934 r!14100))) (regOne!42934 (ite c!1448270 (regTwo!42935 r!14100) (regOne!42934 r!14100))))))))

(declare-fun b!7888842 () Bool)

(assert (=> b!7888842 (= e!4657498 (> lt!2681490 call!732011))))

(declare-fun b!7888843 () Bool)

(assert (=> b!7888843 (= e!4657496 (+ 1 call!732010))))

(declare-fun b!7888844 () Bool)

(assert (=> b!7888844 (= e!4657495 e!4657501)))

(assert (=> b!7888844 (= c!1448281 ((_ is Union!21211) (ite c!1448270 (regTwo!42935 r!14100) (regOne!42934 r!14100))))))

(declare-fun b!7888845 () Bool)

(assert (=> b!7888845 (= e!4657502 (+ 1 call!732007))))

(declare-fun b!7888846 () Bool)

(assert (=> b!7888846 (= e!4657499 1)))

(declare-fun b!7888847 () Bool)

(declare-fun c!1448280 () Bool)

(assert (=> b!7888847 (= c!1448280 ((_ is Star!21211) (ite c!1448270 (regTwo!42935 r!14100) (regOne!42934 r!14100))))))

(assert (=> b!7888847 (= e!4657494 e!4657500)))

(declare-fun b!7888848 () Bool)

(assert (=> b!7888848 (= e!4657501 e!4657494)))

(assert (=> b!7888848 (= c!1448286 ((_ is Concat!30056) (ite c!1448270 (regTwo!42935 r!14100) (regOne!42934 r!14100))))))

(assert (= (and d!2356710 c!1448282) b!7888840))

(assert (= (and d!2356710 (not c!1448282)) b!7888833))

(assert (= (and b!7888833 c!1448283) b!7888845))

(assert (= (and b!7888833 (not c!1448283)) b!7888839))

(assert (= (and b!7888839 c!1448285) b!7888843))

(assert (= (and b!7888839 (not c!1448285)) b!7888838))

(assert (= (and b!7888838 c!1448284) b!7888841))

(assert (= (and b!7888838 (not c!1448284)) b!7888846))

(assert (= (or b!7888843 b!7888841) bm!732001))

(assert (= (or b!7888843 b!7888841) bm!732006))

(assert (= (or b!7888843 b!7888841) bm!732002))

(assert (= (or b!7888845 bm!732001) bm!732005))

(assert (= (and d!2356710 res!3131392) b!7888844))

(assert (= (and b!7888844 c!1448281) b!7888834))

(assert (= (and b!7888844 (not c!1448281)) b!7888848))

(assert (= (and b!7888834 res!3131393) b!7888835))

(assert (= (and b!7888848 c!1448286) b!7888832))

(assert (= (and b!7888848 (not c!1448286)) b!7888847))

(assert (= (and b!7888832 res!3131394) b!7888842))

(assert (= (and b!7888847 c!1448280) b!7888837))

(assert (= (and b!7888847 (not c!1448280)) b!7888836))

(assert (= (or b!7888842 b!7888837) bm!732003))

(assert (= (or b!7888834 b!7888832) bm!732004))

(assert (= (or b!7888835 bm!732003) bm!732000))

(declare-fun m!8269994 () Bool)

(assert (=> bm!732006 m!8269994))

(declare-fun m!8269996 () Bool)

(assert (=> bm!732000 m!8269996))

(declare-fun m!8269998 () Bool)

(assert (=> bm!732005 m!8269998))

(declare-fun m!8270000 () Bool)

(assert (=> bm!732002 m!8270000))

(declare-fun m!8270002 () Bool)

(assert (=> bm!732004 m!8270002))

(assert (=> bm!731997 d!2356710))

(declare-fun b!7888866 () Bool)

(declare-fun res!3131400 () Bool)

(declare-fun e!4657518 () Bool)

(assert (=> b!7888866 (=> (not res!3131400) (not e!4657518))))

(declare-fun lt!2681492 () Int)

(declare-fun call!732020 () Int)

(assert (=> b!7888866 (= res!3131400 (> lt!2681492 call!732020))))

(declare-fun e!4657514 () Bool)

(assert (=> b!7888866 (= e!4657514 e!4657518)))

(declare-fun b!7888867 () Bool)

(declare-fun e!4657513 () Int)

(declare-fun e!4657522 () Int)

(assert (=> b!7888867 (= e!4657513 e!4657522)))

(declare-fun c!1448297 () Bool)

(assert (=> b!7888867 (= c!1448297 ((_ is Star!21211) (ite c!1448266 (regTwo!42935 r!14100) (ite c!1448271 (regTwo!42934 r!14100) (reg!21540 r!14100)))))))

(declare-fun b!7888868 () Bool)

(declare-fun e!4657521 () Bool)

(declare-fun e!4657517 () Bool)

(assert (=> b!7888868 (= e!4657521 e!4657517)))

(declare-fun res!3131399 () Bool)

(assert (=> b!7888868 (= res!3131399 (> lt!2681492 call!732020))))

(assert (=> b!7888868 (=> (not res!3131399) (not e!4657517))))

(declare-fun b!7888869 () Bool)

(declare-fun call!732019 () Int)

(assert (=> b!7888869 (= e!4657517 (> lt!2681492 call!732019))))

(declare-fun c!1448300 () Bool)

(declare-fun c!1448295 () Bool)

(declare-fun bm!732014 () Bool)

(assert (=> bm!732014 (= call!732019 (regexDepth!515 (ite c!1448295 (regTwo!42935 (ite c!1448266 (regTwo!42935 r!14100) (ite c!1448271 (regTwo!42934 r!14100) (reg!21540 r!14100)))) (ite c!1448300 (regTwo!42934 (ite c!1448266 (regTwo!42935 r!14100) (ite c!1448271 (regTwo!42934 r!14100) (reg!21540 r!14100)))) (reg!21540 (ite c!1448266 (regTwo!42935 r!14100) (ite c!1448271 (regTwo!42934 r!14100) (reg!21540 r!14100))))))))))

(declare-fun bm!732015 () Bool)

(declare-fun call!732023 () Int)

(declare-fun call!732021 () Int)

(assert (=> bm!732015 (= call!732023 call!732021)))

(declare-fun b!7888870 () Bool)

(declare-fun e!4657520 () Bool)

(assert (=> b!7888870 (= e!4657520 (= lt!2681492 1))))

(declare-fun call!732024 () Int)

(declare-fun call!732022 () Int)

(declare-fun bm!732016 () Bool)

(declare-fun c!1448299 () Bool)

(assert (=> bm!732016 (= call!732024 (maxBigInt!0 (ite c!1448299 call!732023 call!732022) (ite c!1448299 call!732022 call!732023)))))

(declare-fun b!7888871 () Bool)

(declare-fun call!732025 () Int)

(assert (=> b!7888871 (= e!4657520 (> lt!2681492 call!732025))))

(declare-fun b!7888872 () Bool)

(declare-fun e!4657516 () Int)

(declare-fun e!4657519 () Int)

(assert (=> b!7888872 (= e!4657516 e!4657519)))

(declare-fun c!1448298 () Bool)

(assert (=> b!7888872 (= c!1448298 ((_ is Concat!30056) (ite c!1448266 (regTwo!42935 r!14100) (ite c!1448271 (regTwo!42934 r!14100) (reg!21540 r!14100)))))))

(declare-fun bm!732017 () Bool)

(assert (=> bm!732017 (= call!732025 call!732019)))

(declare-fun b!7888873 () Bool)

(assert (=> b!7888873 (= c!1448299 ((_ is Union!21211) (ite c!1448266 (regTwo!42935 r!14100) (ite c!1448271 (regTwo!42934 r!14100) (reg!21540 r!14100)))))))

(assert (=> b!7888873 (= e!4657522 e!4657516)))

(declare-fun b!7888874 () Bool)

(assert (=> b!7888874 (= e!4657513 1)))

(declare-fun bm!732018 () Bool)

(assert (=> bm!732018 (= call!732020 (regexDepth!515 (ite c!1448295 (regOne!42935 (ite c!1448266 (regTwo!42935 r!14100) (ite c!1448271 (regTwo!42934 r!14100) (reg!21540 r!14100)))) (regOne!42934 (ite c!1448266 (regTwo!42935 r!14100) (ite c!1448271 (regTwo!42934 r!14100) (reg!21540 r!14100)))))))))

(declare-fun bm!732019 () Bool)

(assert (=> bm!732019 (= call!732021 (regexDepth!515 (ite c!1448297 (reg!21540 (ite c!1448266 (regTwo!42935 r!14100) (ite c!1448271 (regTwo!42934 r!14100) (reg!21540 r!14100)))) (ite c!1448299 (regOne!42935 (ite c!1448266 (regTwo!42935 r!14100) (ite c!1448271 (regTwo!42934 r!14100) (reg!21540 r!14100)))) (regTwo!42934 (ite c!1448266 (regTwo!42935 r!14100) (ite c!1448271 (regTwo!42934 r!14100) (reg!21540 r!14100))))))))))

(declare-fun d!2356714 () Bool)

(declare-fun e!4657515 () Bool)

(assert (=> d!2356714 e!4657515))

(declare-fun res!3131398 () Bool)

(assert (=> d!2356714 (=> (not res!3131398) (not e!4657515))))

(assert (=> d!2356714 (= res!3131398 (> lt!2681492 0))))

(assert (=> d!2356714 (= lt!2681492 e!4657513)))

(declare-fun c!1448296 () Bool)

(assert (=> d!2356714 (= c!1448296 ((_ is ElementMatch!21211) (ite c!1448266 (regTwo!42935 r!14100) (ite c!1448271 (regTwo!42934 r!14100) (reg!21540 r!14100)))))))

(assert (=> d!2356714 (= (regexDepth!515 (ite c!1448266 (regTwo!42935 r!14100) (ite c!1448271 (regTwo!42934 r!14100) (reg!21540 r!14100)))) lt!2681492)))

(declare-fun b!7888875 () Bool)

(assert (=> b!7888875 (= e!4657519 (+ 1 call!732024))))

(declare-fun bm!732020 () Bool)

(assert (=> bm!732020 (= call!732022 (regexDepth!515 (ite c!1448299 (regTwo!42935 (ite c!1448266 (regTwo!42935 r!14100) (ite c!1448271 (regTwo!42934 r!14100) (reg!21540 r!14100)))) (regOne!42934 (ite c!1448266 (regTwo!42935 r!14100) (ite c!1448271 (regTwo!42934 r!14100) (reg!21540 r!14100)))))))))

(declare-fun b!7888876 () Bool)

(assert (=> b!7888876 (= e!4657518 (> lt!2681492 call!732025))))

(declare-fun b!7888877 () Bool)

(assert (=> b!7888877 (= e!4657516 (+ 1 call!732024))))

(declare-fun b!7888878 () Bool)

(assert (=> b!7888878 (= e!4657515 e!4657521)))

(assert (=> b!7888878 (= c!1448295 ((_ is Union!21211) (ite c!1448266 (regTwo!42935 r!14100) (ite c!1448271 (regTwo!42934 r!14100) (reg!21540 r!14100)))))))

(declare-fun b!7888879 () Bool)

(assert (=> b!7888879 (= e!4657522 (+ 1 call!732021))))

(declare-fun b!7888880 () Bool)

(assert (=> b!7888880 (= e!4657519 1)))

(declare-fun b!7888881 () Bool)

(declare-fun c!1448294 () Bool)

(assert (=> b!7888881 (= c!1448294 ((_ is Star!21211) (ite c!1448266 (regTwo!42935 r!14100) (ite c!1448271 (regTwo!42934 r!14100) (reg!21540 r!14100)))))))

(assert (=> b!7888881 (= e!4657514 e!4657520)))

(declare-fun b!7888882 () Bool)

(assert (=> b!7888882 (= e!4657521 e!4657514)))

(assert (=> b!7888882 (= c!1448300 ((_ is Concat!30056) (ite c!1448266 (regTwo!42935 r!14100) (ite c!1448271 (regTwo!42934 r!14100) (reg!21540 r!14100)))))))

(assert (= (and d!2356714 c!1448296) b!7888874))

(assert (= (and d!2356714 (not c!1448296)) b!7888867))

(assert (= (and b!7888867 c!1448297) b!7888879))

(assert (= (and b!7888867 (not c!1448297)) b!7888873))

(assert (= (and b!7888873 c!1448299) b!7888877))

(assert (= (and b!7888873 (not c!1448299)) b!7888872))

(assert (= (and b!7888872 c!1448298) b!7888875))

(assert (= (and b!7888872 (not c!1448298)) b!7888880))

(assert (= (or b!7888877 b!7888875) bm!732015))

(assert (= (or b!7888877 b!7888875) bm!732020))

(assert (= (or b!7888877 b!7888875) bm!732016))

(assert (= (or b!7888879 bm!732015) bm!732019))

(assert (= (and d!2356714 res!3131398) b!7888878))

(assert (= (and b!7888878 c!1448295) b!7888868))

(assert (= (and b!7888878 (not c!1448295)) b!7888882))

(assert (= (and b!7888868 res!3131399) b!7888869))

(assert (= (and b!7888882 c!1448300) b!7888866))

(assert (= (and b!7888882 (not c!1448300)) b!7888881))

(assert (= (and b!7888866 res!3131400) b!7888876))

(assert (= (and b!7888881 c!1448294) b!7888871))

(assert (= (and b!7888881 (not c!1448294)) b!7888870))

(assert (= (or b!7888876 b!7888871) bm!732017))

(assert (= (or b!7888868 b!7888866) bm!732018))

(assert (= (or b!7888869 bm!732017) bm!732014))

(declare-fun m!8270014 () Bool)

(assert (=> bm!732020 m!8270014))

(declare-fun m!8270016 () Bool)

(assert (=> bm!732014 m!8270016))

(declare-fun m!8270018 () Bool)

(assert (=> bm!732019 m!8270018))

(declare-fun m!8270020 () Bool)

(assert (=> bm!732016 m!8270020))

(declare-fun m!8270022 () Bool)

(assert (=> bm!732018 m!8270022))

(assert (=> bm!731991 d!2356714))

(declare-fun bs!1967456 () Bool)

(declare-fun b!7888892 () Bool)

(assert (= bs!1967456 (and b!7888892 b!7888707)))

(declare-fun lambda!472168 () Int)

(assert (=> bs!1967456 (= (and (= (reg!21540 (regOne!42935 (reg!21540 r!14100))) (reg!21540 (reg!21540 r!14100))) (= (regOne!42935 (reg!21540 r!14100)) (reg!21540 r!14100))) (= lambda!472168 lambda!472164))))

(declare-fun bs!1967457 () Bool)

(assert (= bs!1967457 (and b!7888892 b!7888703)))

(assert (=> bs!1967457 (not (= lambda!472168 lambda!472165))))

(declare-fun bs!1967458 () Bool)

(assert (= bs!1967458 (and b!7888892 b!7888830)))

(assert (=> bs!1967458 (= (and (= (reg!21540 (regOne!42935 (reg!21540 r!14100))) (reg!21540 (regTwo!42935 (reg!21540 r!14100)))) (= (regOne!42935 (reg!21540 r!14100)) (regTwo!42935 (reg!21540 r!14100)))) (= lambda!472168 lambda!472166))))

(declare-fun bs!1967459 () Bool)

(assert (= bs!1967459 (and b!7888892 b!7888826)))

(assert (=> bs!1967459 (not (= lambda!472168 lambda!472167))))

(assert (=> b!7888892 true))

(assert (=> b!7888892 true))

(declare-fun bs!1967460 () Bool)

(declare-fun b!7888888 () Bool)

(assert (= bs!1967460 (and b!7888888 b!7888892)))

(declare-fun lambda!472169 () Int)

(assert (=> bs!1967460 (not (= lambda!472169 lambda!472168))))

(declare-fun bs!1967461 () Bool)

(assert (= bs!1967461 (and b!7888888 b!7888707)))

(assert (=> bs!1967461 (not (= lambda!472169 lambda!472164))))

(declare-fun bs!1967462 () Bool)

(assert (= bs!1967462 (and b!7888888 b!7888830)))

(assert (=> bs!1967462 (not (= lambda!472169 lambda!472166))))

(declare-fun bs!1967463 () Bool)

(assert (= bs!1967463 (and b!7888888 b!7888826)))

(assert (=> bs!1967463 (= (and (= (regOne!42934 (regOne!42935 (reg!21540 r!14100))) (regOne!42934 (regTwo!42935 (reg!21540 r!14100)))) (= (regTwo!42934 (regOne!42935 (reg!21540 r!14100))) (regTwo!42934 (regTwo!42935 (reg!21540 r!14100))))) (= lambda!472169 lambda!472167))))

(declare-fun bs!1967464 () Bool)

(assert (= bs!1967464 (and b!7888888 b!7888703)))

(assert (=> bs!1967464 (= (and (= (regOne!42934 (regOne!42935 (reg!21540 r!14100))) (regOne!42934 (reg!21540 r!14100))) (= (regTwo!42934 (regOne!42935 (reg!21540 r!14100))) (regTwo!42934 (reg!21540 r!14100)))) (= lambda!472169 lambda!472165))))

(assert (=> b!7888888 true))

(assert (=> b!7888888 true))

(declare-fun b!7888883 () Bool)

(declare-fun e!4657525 () Bool)

(assert (=> b!7888883 (= e!4657525 (= (_1!38333 cut!2) (Cons!73944 (c!1448183 (regOne!42935 (reg!21540 r!14100))) Nil!73944)))))

(declare-fun b!7888884 () Bool)

(declare-fun e!4657528 () Bool)

(assert (=> b!7888884 (= e!4657528 (matchRSpec!4674 (regTwo!42935 (regOne!42935 (reg!21540 r!14100))) (_1!38333 cut!2)))))

(declare-fun bm!732021 () Bool)

(declare-fun call!732026 () Bool)

(assert (=> bm!732021 (= call!732026 (isEmpty!42429 (_1!38333 cut!2)))))

(declare-fun c!1448302 () Bool)

(declare-fun call!732027 () Bool)

(declare-fun bm!732022 () Bool)

(assert (=> bm!732022 (= call!732027 (Exists!4764 (ite c!1448302 lambda!472168 lambda!472169)))))

(declare-fun b!7888885 () Bool)

(declare-fun e!4657529 () Bool)

(declare-fun e!4657527 () Bool)

(assert (=> b!7888885 (= e!4657529 e!4657527)))

(declare-fun res!3131402 () Bool)

(assert (=> b!7888885 (= res!3131402 (not ((_ is EmptyLang!21211) (regOne!42935 (reg!21540 r!14100)))))))

(assert (=> b!7888885 (=> (not res!3131402) (not e!4657527))))

(declare-fun b!7888886 () Bool)

(declare-fun e!4657526 () Bool)

(declare-fun e!4657523 () Bool)

(assert (=> b!7888886 (= e!4657526 e!4657523)))

(assert (=> b!7888886 (= c!1448302 ((_ is Star!21211) (regOne!42935 (reg!21540 r!14100))))))

(declare-fun d!2356718 () Bool)

(declare-fun c!1448303 () Bool)

(assert (=> d!2356718 (= c!1448303 ((_ is EmptyExpr!21211) (regOne!42935 (reg!21540 r!14100))))))

(assert (=> d!2356718 (= (matchRSpec!4674 (regOne!42935 (reg!21540 r!14100)) (_1!38333 cut!2)) e!4657529)))

(declare-fun b!7888887 () Bool)

(declare-fun res!3131401 () Bool)

(declare-fun e!4657524 () Bool)

(assert (=> b!7888887 (=> res!3131401 e!4657524)))

(assert (=> b!7888887 (= res!3131401 call!732026)))

(assert (=> b!7888887 (= e!4657523 e!4657524)))

(assert (=> b!7888888 (= e!4657523 call!732027)))

(declare-fun b!7888889 () Bool)

(assert (=> b!7888889 (= e!4657529 call!732026)))

(declare-fun b!7888890 () Bool)

(declare-fun c!1448301 () Bool)

(assert (=> b!7888890 (= c!1448301 ((_ is Union!21211) (regOne!42935 (reg!21540 r!14100))))))

(assert (=> b!7888890 (= e!4657525 e!4657526)))

(declare-fun b!7888891 () Bool)

(assert (=> b!7888891 (= e!4657526 e!4657528)))

(declare-fun res!3131403 () Bool)

(assert (=> b!7888891 (= res!3131403 (matchRSpec!4674 (regOne!42935 (regOne!42935 (reg!21540 r!14100))) (_1!38333 cut!2)))))

(assert (=> b!7888891 (=> res!3131403 e!4657528)))

(assert (=> b!7888892 (= e!4657524 call!732027)))

(declare-fun b!7888893 () Bool)

(declare-fun c!1448304 () Bool)

(assert (=> b!7888893 (= c!1448304 ((_ is ElementMatch!21211) (regOne!42935 (reg!21540 r!14100))))))

(assert (=> b!7888893 (= e!4657527 e!4657525)))

(assert (= (and d!2356718 c!1448303) b!7888889))

(assert (= (and d!2356718 (not c!1448303)) b!7888885))

(assert (= (and b!7888885 res!3131402) b!7888893))

(assert (= (and b!7888893 c!1448304) b!7888883))

(assert (= (and b!7888893 (not c!1448304)) b!7888890))

(assert (= (and b!7888890 c!1448301) b!7888891))

(assert (= (and b!7888890 (not c!1448301)) b!7888886))

(assert (= (and b!7888891 (not res!3131403)) b!7888884))

(assert (= (and b!7888886 c!1448302) b!7888887))

(assert (= (and b!7888886 (not c!1448302)) b!7888888))

(assert (= (and b!7888887 (not res!3131401)) b!7888892))

(assert (= (or b!7888892 b!7888888) bm!732022))

(assert (= (or b!7888889 b!7888887) bm!732021))

(declare-fun m!8270036 () Bool)

(assert (=> b!7888884 m!8270036))

(assert (=> bm!732021 m!8269898))

(declare-fun m!8270038 () Bool)

(assert (=> bm!732022 m!8270038))

(declare-fun m!8270040 () Bool)

(assert (=> b!7888891 m!8270040))

(assert (=> b!7888706 d!2356718))

(declare-fun b!7888915 () Bool)

(declare-fun res!3131409 () Bool)

(declare-fun e!4657547 () Bool)

(assert (=> b!7888915 (=> (not res!3131409) (not e!4657547))))

(declare-fun lt!2681493 () Int)

(declare-fun call!732031 () Int)

(assert (=> b!7888915 (= res!3131409 (> lt!2681493 call!732031))))

(declare-fun e!4657543 () Bool)

(assert (=> b!7888915 (= e!4657543 e!4657547)))

(declare-fun b!7888916 () Bool)

(declare-fun e!4657542 () Int)

(declare-fun e!4657551 () Int)

(assert (=> b!7888916 (= e!4657542 e!4657551)))

(declare-fun c!1448317 () Bool)

(assert (=> b!7888916 (= c!1448317 ((_ is Star!21211) (ite c!1448268 (reg!21540 r!14100) (ite c!1448270 (regOne!42935 r!14100) (regTwo!42934 r!14100)))))))

(declare-fun b!7888917 () Bool)

(declare-fun e!4657550 () Bool)

(declare-fun e!4657546 () Bool)

(assert (=> b!7888917 (= e!4657550 e!4657546)))

(declare-fun res!3131408 () Bool)

(assert (=> b!7888917 (= res!3131408 (> lt!2681493 call!732031))))

(assert (=> b!7888917 (=> (not res!3131408) (not e!4657546))))

(declare-fun b!7888918 () Bool)

(declare-fun call!732030 () Int)

(assert (=> b!7888918 (= e!4657546 (> lt!2681493 call!732030))))

(declare-fun bm!732025 () Bool)

(declare-fun c!1448320 () Bool)

(declare-fun c!1448315 () Bool)

(assert (=> bm!732025 (= call!732030 (regexDepth!515 (ite c!1448315 (regTwo!42935 (ite c!1448268 (reg!21540 r!14100) (ite c!1448270 (regOne!42935 r!14100) (regTwo!42934 r!14100)))) (ite c!1448320 (regTwo!42934 (ite c!1448268 (reg!21540 r!14100) (ite c!1448270 (regOne!42935 r!14100) (regTwo!42934 r!14100)))) (reg!21540 (ite c!1448268 (reg!21540 r!14100) (ite c!1448270 (regOne!42935 r!14100) (regTwo!42934 r!14100))))))))))

(declare-fun bm!732026 () Bool)

(declare-fun call!732034 () Int)

(declare-fun call!732032 () Int)

(assert (=> bm!732026 (= call!732034 call!732032)))

(declare-fun b!7888919 () Bool)

(declare-fun e!4657549 () Bool)

(assert (=> b!7888919 (= e!4657549 (= lt!2681493 1))))

(declare-fun call!732035 () Int)

(declare-fun bm!732027 () Bool)

(declare-fun call!732033 () Int)

(declare-fun c!1448319 () Bool)

(assert (=> bm!732027 (= call!732035 (maxBigInt!0 (ite c!1448319 call!732034 call!732033) (ite c!1448319 call!732033 call!732034)))))

(declare-fun b!7888920 () Bool)

(declare-fun call!732036 () Int)

(assert (=> b!7888920 (= e!4657549 (> lt!2681493 call!732036))))

(declare-fun b!7888921 () Bool)

(declare-fun e!4657545 () Int)

(declare-fun e!4657548 () Int)

(assert (=> b!7888921 (= e!4657545 e!4657548)))

(declare-fun c!1448318 () Bool)

(assert (=> b!7888921 (= c!1448318 ((_ is Concat!30056) (ite c!1448268 (reg!21540 r!14100) (ite c!1448270 (regOne!42935 r!14100) (regTwo!42934 r!14100)))))))

(declare-fun bm!732028 () Bool)

(assert (=> bm!732028 (= call!732036 call!732030)))

(declare-fun b!7888922 () Bool)

(assert (=> b!7888922 (= c!1448319 ((_ is Union!21211) (ite c!1448268 (reg!21540 r!14100) (ite c!1448270 (regOne!42935 r!14100) (regTwo!42934 r!14100)))))))

(assert (=> b!7888922 (= e!4657551 e!4657545)))

(declare-fun b!7888923 () Bool)

(assert (=> b!7888923 (= e!4657542 1)))

(declare-fun bm!732029 () Bool)

(assert (=> bm!732029 (= call!732031 (regexDepth!515 (ite c!1448315 (regOne!42935 (ite c!1448268 (reg!21540 r!14100) (ite c!1448270 (regOne!42935 r!14100) (regTwo!42934 r!14100)))) (regOne!42934 (ite c!1448268 (reg!21540 r!14100) (ite c!1448270 (regOne!42935 r!14100) (regTwo!42934 r!14100)))))))))

(declare-fun bm!732030 () Bool)

(assert (=> bm!732030 (= call!732032 (regexDepth!515 (ite c!1448317 (reg!21540 (ite c!1448268 (reg!21540 r!14100) (ite c!1448270 (regOne!42935 r!14100) (regTwo!42934 r!14100)))) (ite c!1448319 (regOne!42935 (ite c!1448268 (reg!21540 r!14100) (ite c!1448270 (regOne!42935 r!14100) (regTwo!42934 r!14100)))) (regTwo!42934 (ite c!1448268 (reg!21540 r!14100) (ite c!1448270 (regOne!42935 r!14100) (regTwo!42934 r!14100))))))))))

(declare-fun d!2356726 () Bool)

(declare-fun e!4657544 () Bool)

(assert (=> d!2356726 e!4657544))

(declare-fun res!3131407 () Bool)

(assert (=> d!2356726 (=> (not res!3131407) (not e!4657544))))

(assert (=> d!2356726 (= res!3131407 (> lt!2681493 0))))

(assert (=> d!2356726 (= lt!2681493 e!4657542)))

(declare-fun c!1448316 () Bool)

(assert (=> d!2356726 (= c!1448316 ((_ is ElementMatch!21211) (ite c!1448268 (reg!21540 r!14100) (ite c!1448270 (regOne!42935 r!14100) (regTwo!42934 r!14100)))))))

(assert (=> d!2356726 (= (regexDepth!515 (ite c!1448268 (reg!21540 r!14100) (ite c!1448270 (regOne!42935 r!14100) (regTwo!42934 r!14100)))) lt!2681493)))

(declare-fun b!7888924 () Bool)

(assert (=> b!7888924 (= e!4657548 (+ 1 call!732035))))

(declare-fun bm!732031 () Bool)

(assert (=> bm!732031 (= call!732033 (regexDepth!515 (ite c!1448319 (regTwo!42935 (ite c!1448268 (reg!21540 r!14100) (ite c!1448270 (regOne!42935 r!14100) (regTwo!42934 r!14100)))) (regOne!42934 (ite c!1448268 (reg!21540 r!14100) (ite c!1448270 (regOne!42935 r!14100) (regTwo!42934 r!14100)))))))))

(declare-fun b!7888925 () Bool)

(assert (=> b!7888925 (= e!4657547 (> lt!2681493 call!732036))))

(declare-fun b!7888926 () Bool)

(assert (=> b!7888926 (= e!4657545 (+ 1 call!732035))))

(declare-fun b!7888927 () Bool)

(assert (=> b!7888927 (= e!4657544 e!4657550)))

(assert (=> b!7888927 (= c!1448315 ((_ is Union!21211) (ite c!1448268 (reg!21540 r!14100) (ite c!1448270 (regOne!42935 r!14100) (regTwo!42934 r!14100)))))))

(declare-fun b!7888928 () Bool)

(assert (=> b!7888928 (= e!4657551 (+ 1 call!732032))))

(declare-fun b!7888929 () Bool)

(assert (=> b!7888929 (= e!4657548 1)))

(declare-fun b!7888930 () Bool)

(declare-fun c!1448314 () Bool)

(assert (=> b!7888930 (= c!1448314 ((_ is Star!21211) (ite c!1448268 (reg!21540 r!14100) (ite c!1448270 (regOne!42935 r!14100) (regTwo!42934 r!14100)))))))

(assert (=> b!7888930 (= e!4657543 e!4657549)))

(declare-fun b!7888931 () Bool)

(assert (=> b!7888931 (= e!4657550 e!4657543)))

(assert (=> b!7888931 (= c!1448320 ((_ is Concat!30056) (ite c!1448268 (reg!21540 r!14100) (ite c!1448270 (regOne!42935 r!14100) (regTwo!42934 r!14100)))))))

(assert (= (and d!2356726 c!1448316) b!7888923))

(assert (= (and d!2356726 (not c!1448316)) b!7888916))

(assert (= (and b!7888916 c!1448317) b!7888928))

(assert (= (and b!7888916 (not c!1448317)) b!7888922))

(assert (= (and b!7888922 c!1448319) b!7888926))

(assert (= (and b!7888922 (not c!1448319)) b!7888921))

(assert (= (and b!7888921 c!1448318) b!7888924))

(assert (= (and b!7888921 (not c!1448318)) b!7888929))

(assert (= (or b!7888926 b!7888924) bm!732026))

(assert (= (or b!7888926 b!7888924) bm!732031))

(assert (= (or b!7888926 b!7888924) bm!732027))

(assert (= (or b!7888928 bm!732026) bm!732030))

(assert (= (and d!2356726 res!3131407) b!7888927))

(assert (= (and b!7888927 c!1448315) b!7888917))

(assert (= (and b!7888927 (not c!1448315)) b!7888931))

(assert (= (and b!7888917 res!3131408) b!7888918))

(assert (= (and b!7888931 c!1448320) b!7888915))

(assert (= (and b!7888931 (not c!1448320)) b!7888930))

(assert (= (and b!7888915 res!3131409) b!7888925))

(assert (= (and b!7888930 c!1448314) b!7888920))

(assert (= (and b!7888930 (not c!1448314)) b!7888919))

(assert (= (or b!7888925 b!7888920) bm!732028))

(assert (= (or b!7888917 b!7888915) bm!732029))

(assert (= (or b!7888918 bm!732028) bm!732025))

(declare-fun m!8270042 () Bool)

(assert (=> bm!732031 m!8270042))

(declare-fun m!8270044 () Bool)

(assert (=> bm!732025 m!8270044))

(declare-fun m!8270046 () Bool)

(assert (=> bm!732030 m!8270046))

(declare-fun m!8270048 () Bool)

(assert (=> bm!732027 m!8270048))

(declare-fun m!8270050 () Bool)

(assert (=> bm!732029 m!8270050))

(assert (=> bm!731996 d!2356726))

(declare-fun b!7888932 () Bool)

(declare-fun e!4657554 () Bool)

(declare-fun call!732037 () Bool)

(assert (=> b!7888932 (= e!4657554 call!732037)))

(declare-fun b!7888933 () Bool)

(declare-fun res!3131414 () Bool)

(declare-fun e!4657553 () Bool)

(assert (=> b!7888933 (=> res!3131414 e!4657553)))

(assert (=> b!7888933 (= res!3131414 (not ((_ is Concat!30056) (ite c!1448195 (regTwo!42935 r!14100) (regOne!42934 r!14100)))))))

(declare-fun e!4657557 () Bool)

(assert (=> b!7888933 (= e!4657557 e!4657553)))

(declare-fun b!7888934 () Bool)

(declare-fun e!4657556 () Bool)

(assert (=> b!7888934 (= e!4657556 e!4657557)))

(declare-fun c!1448322 () Bool)

(assert (=> b!7888934 (= c!1448322 ((_ is Union!21211) (ite c!1448195 (regTwo!42935 r!14100) (regOne!42934 r!14100))))))

(declare-fun b!7888935 () Bool)

(declare-fun e!4657555 () Bool)

(assert (=> b!7888935 (= e!4657555 e!4657556)))

(declare-fun c!1448321 () Bool)

(assert (=> b!7888935 (= c!1448321 ((_ is Star!21211) (ite c!1448195 (regTwo!42935 r!14100) (regOne!42934 r!14100))))))

(declare-fun b!7888936 () Bool)

(declare-fun e!4657552 () Bool)

(declare-fun call!732039 () Bool)

(assert (=> b!7888936 (= e!4657552 call!732039)))

(declare-fun bm!732033 () Bool)

(assert (=> bm!732033 (= call!732037 call!732039)))

(declare-fun b!7888937 () Bool)

(declare-fun e!4657558 () Bool)

(declare-fun call!732038 () Bool)

(assert (=> b!7888937 (= e!4657558 call!732038)))

(declare-fun d!2356728 () Bool)

(declare-fun res!3131413 () Bool)

(assert (=> d!2356728 (=> res!3131413 e!4657555)))

(assert (=> d!2356728 (= res!3131413 ((_ is ElementMatch!21211) (ite c!1448195 (regTwo!42935 r!14100) (regOne!42934 r!14100))))))

(assert (=> d!2356728 (= (validRegex!11621 (ite c!1448195 (regTwo!42935 r!14100) (regOne!42934 r!14100))) e!4657555)))

(declare-fun bm!732032 () Bool)

(assert (=> bm!732032 (= call!732038 (validRegex!11621 (ite c!1448322 (regTwo!42935 (ite c!1448195 (regTwo!42935 r!14100) (regOne!42934 r!14100))) (regOne!42934 (ite c!1448195 (regTwo!42935 r!14100) (regOne!42934 r!14100))))))))

(declare-fun b!7888938 () Bool)

(declare-fun res!3131412 () Bool)

(assert (=> b!7888938 (=> (not res!3131412) (not e!4657558))))

(assert (=> b!7888938 (= res!3131412 call!732037)))

(assert (=> b!7888938 (= e!4657557 e!4657558)))

(declare-fun b!7888939 () Bool)

(assert (=> b!7888939 (= e!4657553 e!4657554)))

(declare-fun res!3131411 () Bool)

(assert (=> b!7888939 (=> (not res!3131411) (not e!4657554))))

(assert (=> b!7888939 (= res!3131411 call!732038)))

(declare-fun b!7888940 () Bool)

(assert (=> b!7888940 (= e!4657556 e!4657552)))

(declare-fun res!3131410 () Bool)

(assert (=> b!7888940 (= res!3131410 (not (nullable!9466 (reg!21540 (ite c!1448195 (regTwo!42935 r!14100) (regOne!42934 r!14100))))))))

(assert (=> b!7888940 (=> (not res!3131410) (not e!4657552))))

(declare-fun bm!732034 () Bool)

(assert (=> bm!732034 (= call!732039 (validRegex!11621 (ite c!1448321 (reg!21540 (ite c!1448195 (regTwo!42935 r!14100) (regOne!42934 r!14100))) (ite c!1448322 (regOne!42935 (ite c!1448195 (regTwo!42935 r!14100) (regOne!42934 r!14100))) (regTwo!42934 (ite c!1448195 (regTwo!42935 r!14100) (regOne!42934 r!14100)))))))))

(assert (= (and d!2356728 (not res!3131413)) b!7888935))

(assert (= (and b!7888935 c!1448321) b!7888940))

(assert (= (and b!7888935 (not c!1448321)) b!7888934))

(assert (= (and b!7888940 res!3131410) b!7888936))

(assert (= (and b!7888934 c!1448322) b!7888938))

(assert (= (and b!7888934 (not c!1448322)) b!7888933))

(assert (= (and b!7888938 res!3131412) b!7888937))

(assert (= (and b!7888933 (not res!3131414)) b!7888939))

(assert (= (and b!7888939 res!3131411) b!7888932))

(assert (= (or b!7888937 b!7888939) bm!732032))

(assert (= (or b!7888938 b!7888932) bm!732033))

(assert (= (or b!7888936 bm!732033) bm!732034))

(declare-fun m!8270052 () Bool)

(assert (=> bm!732032 m!8270052))

(declare-fun m!8270054 () Bool)

(assert (=> b!7888940 m!8270054))

(declare-fun m!8270056 () Bool)

(assert (=> bm!732034 m!8270056))

(assert (=> bm!731941 d!2356728))

(declare-fun d!2356730 () Bool)

(declare-fun lt!2681494 () Int)

(assert (=> d!2356730 (>= lt!2681494 0)))

(declare-fun e!4657559 () Int)

(assert (=> d!2356730 (= lt!2681494 e!4657559)))

(declare-fun c!1448323 () Bool)

(assert (=> d!2356730 (= c!1448323 ((_ is Nil!73944) lt!2681489))))

(assert (=> d!2356730 (= (size!42852 lt!2681489) lt!2681494)))

(declare-fun b!7888941 () Bool)

(assert (=> b!7888941 (= e!4657559 0)))

(declare-fun b!7888942 () Bool)

(assert (=> b!7888942 (= e!4657559 (+ 1 (size!42852 (t!388803 lt!2681489))))))

(assert (= (and d!2356730 c!1448323) b!7888941))

(assert (= (and d!2356730 (not c!1448323)) b!7888942))

(declare-fun m!8270058 () Bool)

(assert (=> b!7888942 m!8270058))

(assert (=> b!7888782 d!2356730))

(declare-fun d!2356732 () Bool)

(declare-fun lt!2681495 () Int)

(assert (=> d!2356732 (>= lt!2681495 0)))

(declare-fun e!4657560 () Int)

(assert (=> d!2356732 (= lt!2681495 e!4657560)))

(declare-fun c!1448324 () Bool)

(assert (=> d!2356732 (= c!1448324 ((_ is Nil!73944) (_1!38333 cut!2)))))

(assert (=> d!2356732 (= (size!42852 (_1!38333 cut!2)) lt!2681495)))

(declare-fun b!7888943 () Bool)

(assert (=> b!7888943 (= e!4657560 0)))

(declare-fun b!7888944 () Bool)

(assert (=> b!7888944 (= e!4657560 (+ 1 (size!42852 (t!388803 (_1!38333 cut!2)))))))

(assert (= (and d!2356732 c!1448324) b!7888943))

(assert (= (and d!2356732 (not c!1448324)) b!7888944))

(declare-fun m!8270064 () Bool)

(assert (=> b!7888944 m!8270064))

(assert (=> b!7888782 d!2356732))

(assert (=> b!7888782 d!2356700))

(declare-fun b!7888945 () Bool)

(declare-fun res!3131417 () Bool)

(declare-fun e!4657566 () Bool)

(assert (=> b!7888945 (=> (not res!3131417) (not e!4657566))))

(declare-fun lt!2681496 () Int)

(declare-fun call!732041 () Int)

(assert (=> b!7888945 (= res!3131417 (> lt!2681496 call!732041))))

(declare-fun e!4657562 () Bool)

(assert (=> b!7888945 (= e!4657562 e!4657566)))

(declare-fun b!7888946 () Bool)

(declare-fun e!4657561 () Int)

(declare-fun e!4657570 () Int)

(assert (=> b!7888946 (= e!4657561 e!4657570)))

(declare-fun c!1448328 () Bool)

(assert (=> b!7888946 (= c!1448328 ((_ is Star!21211) (ite c!1448266 (regOne!42935 r!14100) (regOne!42934 r!14100))))))

(declare-fun b!7888947 () Bool)

(declare-fun e!4657569 () Bool)

(declare-fun e!4657565 () Bool)

(assert (=> b!7888947 (= e!4657569 e!4657565)))

(declare-fun res!3131416 () Bool)

(assert (=> b!7888947 (= res!3131416 (> lt!2681496 call!732041))))

(assert (=> b!7888947 (=> (not res!3131416) (not e!4657565))))

(declare-fun b!7888948 () Bool)

(declare-fun call!732040 () Int)

(assert (=> b!7888948 (= e!4657565 (> lt!2681496 call!732040))))

(declare-fun c!1448326 () Bool)

(declare-fun c!1448331 () Bool)

(declare-fun bm!732035 () Bool)

(assert (=> bm!732035 (= call!732040 (regexDepth!515 (ite c!1448326 (regTwo!42935 (ite c!1448266 (regOne!42935 r!14100) (regOne!42934 r!14100))) (ite c!1448331 (regTwo!42934 (ite c!1448266 (regOne!42935 r!14100) (regOne!42934 r!14100))) (reg!21540 (ite c!1448266 (regOne!42935 r!14100) (regOne!42934 r!14100)))))))))

(declare-fun bm!732036 () Bool)

(declare-fun call!732044 () Int)

(declare-fun call!732042 () Int)

(assert (=> bm!732036 (= call!732044 call!732042)))

(declare-fun b!7888949 () Bool)

(declare-fun e!4657568 () Bool)

(assert (=> b!7888949 (= e!4657568 (= lt!2681496 1))))

(declare-fun bm!732037 () Bool)

(declare-fun c!1448330 () Bool)

(declare-fun call!732043 () Int)

(declare-fun call!732045 () Int)

(assert (=> bm!732037 (= call!732045 (maxBigInt!0 (ite c!1448330 call!732044 call!732043) (ite c!1448330 call!732043 call!732044)))))

(declare-fun b!7888950 () Bool)

(declare-fun call!732046 () Int)

(assert (=> b!7888950 (= e!4657568 (> lt!2681496 call!732046))))

(declare-fun b!7888951 () Bool)

(declare-fun e!4657564 () Int)

(declare-fun e!4657567 () Int)

(assert (=> b!7888951 (= e!4657564 e!4657567)))

(declare-fun c!1448329 () Bool)

(assert (=> b!7888951 (= c!1448329 ((_ is Concat!30056) (ite c!1448266 (regOne!42935 r!14100) (regOne!42934 r!14100))))))

(declare-fun bm!732038 () Bool)

(assert (=> bm!732038 (= call!732046 call!732040)))

(declare-fun b!7888952 () Bool)

(assert (=> b!7888952 (= c!1448330 ((_ is Union!21211) (ite c!1448266 (regOne!42935 r!14100) (regOne!42934 r!14100))))))

(assert (=> b!7888952 (= e!4657570 e!4657564)))

(declare-fun b!7888953 () Bool)

(assert (=> b!7888953 (= e!4657561 1)))

(declare-fun bm!732039 () Bool)

(assert (=> bm!732039 (= call!732041 (regexDepth!515 (ite c!1448326 (regOne!42935 (ite c!1448266 (regOne!42935 r!14100) (regOne!42934 r!14100))) (regOne!42934 (ite c!1448266 (regOne!42935 r!14100) (regOne!42934 r!14100))))))))

(declare-fun bm!732040 () Bool)

(assert (=> bm!732040 (= call!732042 (regexDepth!515 (ite c!1448328 (reg!21540 (ite c!1448266 (regOne!42935 r!14100) (regOne!42934 r!14100))) (ite c!1448330 (regOne!42935 (ite c!1448266 (regOne!42935 r!14100) (regOne!42934 r!14100))) (regTwo!42934 (ite c!1448266 (regOne!42935 r!14100) (regOne!42934 r!14100)))))))))

(declare-fun d!2356734 () Bool)

(declare-fun e!4657563 () Bool)

(assert (=> d!2356734 e!4657563))

(declare-fun res!3131415 () Bool)

(assert (=> d!2356734 (=> (not res!3131415) (not e!4657563))))

(assert (=> d!2356734 (= res!3131415 (> lt!2681496 0))))

(assert (=> d!2356734 (= lt!2681496 e!4657561)))

(declare-fun c!1448327 () Bool)

(assert (=> d!2356734 (= c!1448327 ((_ is ElementMatch!21211) (ite c!1448266 (regOne!42935 r!14100) (regOne!42934 r!14100))))))

(assert (=> d!2356734 (= (regexDepth!515 (ite c!1448266 (regOne!42935 r!14100) (regOne!42934 r!14100))) lt!2681496)))

(declare-fun b!7888954 () Bool)

(assert (=> b!7888954 (= e!4657567 (+ 1 call!732045))))

(declare-fun bm!732041 () Bool)

(assert (=> bm!732041 (= call!732043 (regexDepth!515 (ite c!1448330 (regTwo!42935 (ite c!1448266 (regOne!42935 r!14100) (regOne!42934 r!14100))) (regOne!42934 (ite c!1448266 (regOne!42935 r!14100) (regOne!42934 r!14100))))))))

(declare-fun b!7888955 () Bool)

(assert (=> b!7888955 (= e!4657566 (> lt!2681496 call!732046))))

(declare-fun b!7888956 () Bool)

(assert (=> b!7888956 (= e!4657564 (+ 1 call!732045))))

(declare-fun b!7888957 () Bool)

(assert (=> b!7888957 (= e!4657563 e!4657569)))

(assert (=> b!7888957 (= c!1448326 ((_ is Union!21211) (ite c!1448266 (regOne!42935 r!14100) (regOne!42934 r!14100))))))

(declare-fun b!7888958 () Bool)

(assert (=> b!7888958 (= e!4657570 (+ 1 call!732042))))

(declare-fun b!7888959 () Bool)

(assert (=> b!7888959 (= e!4657567 1)))

(declare-fun b!7888960 () Bool)

(declare-fun c!1448325 () Bool)

(assert (=> b!7888960 (= c!1448325 ((_ is Star!21211) (ite c!1448266 (regOne!42935 r!14100) (regOne!42934 r!14100))))))

(assert (=> b!7888960 (= e!4657562 e!4657568)))

(declare-fun b!7888961 () Bool)

(assert (=> b!7888961 (= e!4657569 e!4657562)))

(assert (=> b!7888961 (= c!1448331 ((_ is Concat!30056) (ite c!1448266 (regOne!42935 r!14100) (regOne!42934 r!14100))))))

(assert (= (and d!2356734 c!1448327) b!7888953))

(assert (= (and d!2356734 (not c!1448327)) b!7888946))

(assert (= (and b!7888946 c!1448328) b!7888958))

(assert (= (and b!7888946 (not c!1448328)) b!7888952))

(assert (= (and b!7888952 c!1448330) b!7888956))

(assert (= (and b!7888952 (not c!1448330)) b!7888951))

(assert (= (and b!7888951 c!1448329) b!7888954))

(assert (= (and b!7888951 (not c!1448329)) b!7888959))

(assert (= (or b!7888956 b!7888954) bm!732036))

(assert (= (or b!7888956 b!7888954) bm!732041))

(assert (= (or b!7888956 b!7888954) bm!732037))

(assert (= (or b!7888958 bm!732036) bm!732040))

(assert (= (and d!2356734 res!3131415) b!7888957))

(assert (= (and b!7888957 c!1448326) b!7888947))

(assert (= (and b!7888957 (not c!1448326)) b!7888961))

(assert (= (and b!7888947 res!3131416) b!7888948))

(assert (= (and b!7888961 c!1448331) b!7888945))

(assert (= (and b!7888961 (not c!1448331)) b!7888960))

(assert (= (and b!7888945 res!3131417) b!7888955))

(assert (= (and b!7888960 c!1448325) b!7888950))

(assert (= (and b!7888960 (not c!1448325)) b!7888949))

(assert (= (or b!7888955 b!7888950) bm!732038))

(assert (= (or b!7888947 b!7888945) bm!732039))

(assert (= (or b!7888948 bm!732038) bm!732035))

(declare-fun m!8270068 () Bool)

(assert (=> bm!732041 m!8270068))

(declare-fun m!8270070 () Bool)

(assert (=> bm!732035 m!8270070))

(declare-fun m!8270072 () Bool)

(assert (=> bm!732040 m!8270072))

(declare-fun m!8270074 () Bool)

(assert (=> bm!732037 m!8270074))

(declare-fun m!8270076 () Bool)

(assert (=> bm!732039 m!8270076))

(assert (=> bm!731995 d!2356734))

(declare-fun b!7888971 () Bool)

(declare-fun e!4657580 () Bool)

(declare-fun call!732050 () Bool)

(assert (=> b!7888971 (= e!4657580 call!732050)))

(declare-fun b!7888972 () Bool)

(declare-fun res!3131427 () Bool)

(declare-fun e!4657579 () Bool)

(assert (=> b!7888972 (=> res!3131427 e!4657579)))

(assert (=> b!7888972 (= res!3131427 (not ((_ is Concat!30056) (ite c!1448194 (reg!21540 r!14100) (ite c!1448195 (regOne!42935 r!14100) (regTwo!42934 r!14100))))))))

(declare-fun e!4657583 () Bool)

(assert (=> b!7888972 (= e!4657583 e!4657579)))

(declare-fun b!7888973 () Bool)

(declare-fun e!4657582 () Bool)

(assert (=> b!7888973 (= e!4657582 e!4657583)))

(declare-fun c!1448335 () Bool)

(assert (=> b!7888973 (= c!1448335 ((_ is Union!21211) (ite c!1448194 (reg!21540 r!14100) (ite c!1448195 (regOne!42935 r!14100) (regTwo!42934 r!14100)))))))

(declare-fun b!7888974 () Bool)

(declare-fun e!4657581 () Bool)

(assert (=> b!7888974 (= e!4657581 e!4657582)))

(declare-fun c!1448334 () Bool)

(assert (=> b!7888974 (= c!1448334 ((_ is Star!21211) (ite c!1448194 (reg!21540 r!14100) (ite c!1448195 (regOne!42935 r!14100) (regTwo!42934 r!14100)))))))

(declare-fun b!7888975 () Bool)

(declare-fun e!4657578 () Bool)

(declare-fun call!732052 () Bool)

(assert (=> b!7888975 (= e!4657578 call!732052)))

(declare-fun bm!732046 () Bool)

(assert (=> bm!732046 (= call!732050 call!732052)))

(declare-fun b!7888976 () Bool)

(declare-fun e!4657584 () Bool)

(declare-fun call!732051 () Bool)

(assert (=> b!7888976 (= e!4657584 call!732051)))

(declare-fun d!2356738 () Bool)

(declare-fun res!3131426 () Bool)

(assert (=> d!2356738 (=> res!3131426 e!4657581)))

(assert (=> d!2356738 (= res!3131426 ((_ is ElementMatch!21211) (ite c!1448194 (reg!21540 r!14100) (ite c!1448195 (regOne!42935 r!14100) (regTwo!42934 r!14100)))))))

(assert (=> d!2356738 (= (validRegex!11621 (ite c!1448194 (reg!21540 r!14100) (ite c!1448195 (regOne!42935 r!14100) (regTwo!42934 r!14100)))) e!4657581)))

(declare-fun bm!732045 () Bool)

(assert (=> bm!732045 (= call!732051 (validRegex!11621 (ite c!1448335 (regTwo!42935 (ite c!1448194 (reg!21540 r!14100) (ite c!1448195 (regOne!42935 r!14100) (regTwo!42934 r!14100)))) (regOne!42934 (ite c!1448194 (reg!21540 r!14100) (ite c!1448195 (regOne!42935 r!14100) (regTwo!42934 r!14100)))))))))

(declare-fun b!7888977 () Bool)

(declare-fun res!3131425 () Bool)

(assert (=> b!7888977 (=> (not res!3131425) (not e!4657584))))

(assert (=> b!7888977 (= res!3131425 call!732050)))

(assert (=> b!7888977 (= e!4657583 e!4657584)))

(declare-fun b!7888978 () Bool)

(assert (=> b!7888978 (= e!4657579 e!4657580)))

(declare-fun res!3131424 () Bool)

(assert (=> b!7888978 (=> (not res!3131424) (not e!4657580))))

(assert (=> b!7888978 (= res!3131424 call!732051)))

(declare-fun b!7888979 () Bool)

(assert (=> b!7888979 (= e!4657582 e!4657578)))

(declare-fun res!3131423 () Bool)

(assert (=> b!7888979 (= res!3131423 (not (nullable!9466 (reg!21540 (ite c!1448194 (reg!21540 r!14100) (ite c!1448195 (regOne!42935 r!14100) (regTwo!42934 r!14100)))))))))

(assert (=> b!7888979 (=> (not res!3131423) (not e!4657578))))

(declare-fun bm!732047 () Bool)

(assert (=> bm!732047 (= call!732052 (validRegex!11621 (ite c!1448334 (reg!21540 (ite c!1448194 (reg!21540 r!14100) (ite c!1448195 (regOne!42935 r!14100) (regTwo!42934 r!14100)))) (ite c!1448335 (regOne!42935 (ite c!1448194 (reg!21540 r!14100) (ite c!1448195 (regOne!42935 r!14100) (regTwo!42934 r!14100)))) (regTwo!42934 (ite c!1448194 (reg!21540 r!14100) (ite c!1448195 (regOne!42935 r!14100) (regTwo!42934 r!14100))))))))))

(assert (= (and d!2356738 (not res!3131426)) b!7888974))

(assert (= (and b!7888974 c!1448334) b!7888979))

(assert (= (and b!7888974 (not c!1448334)) b!7888973))

(assert (= (and b!7888979 res!3131423) b!7888975))

(assert (= (and b!7888973 c!1448335) b!7888977))

(assert (= (and b!7888973 (not c!1448335)) b!7888972))

(assert (= (and b!7888977 res!3131425) b!7888976))

(assert (= (and b!7888972 (not res!3131427)) b!7888978))

(assert (= (and b!7888978 res!3131424) b!7888971))

(assert (= (or b!7888976 b!7888978) bm!732045))

(assert (= (or b!7888977 b!7888971) bm!732046))

(assert (= (or b!7888975 bm!732046) bm!732047))

(declare-fun m!8270084 () Bool)

(assert (=> bm!732045 m!8270084))

(declare-fun m!8270086 () Bool)

(assert (=> b!7888979 m!8270086))

(declare-fun m!8270088 () Bool)

(assert (=> bm!732047 m!8270088))

(assert (=> bm!731943 d!2356738))

(declare-fun d!2356742 () Bool)

(declare-fun c!1448345 () Bool)

(assert (=> d!2356742 (= c!1448345 ((_ is Nil!73944) lt!2681489))))

(declare-fun e!4657597 () (InoxSet C!42748))

(assert (=> d!2356742 (= (content!15695 lt!2681489) e!4657597)))

(declare-fun b!7889002 () Bool)

(assert (=> b!7889002 (= e!4657597 ((as const (Array C!42748 Bool)) false))))

(declare-fun b!7889003 () Bool)

(assert (=> b!7889003 (= e!4657597 ((_ map or) (store ((as const (Array C!42748 Bool)) false) (h!80392 lt!2681489) true) (content!15695 (t!388803 lt!2681489))))))

(assert (= (and d!2356742 c!1448345) b!7889002))

(assert (= (and d!2356742 (not c!1448345)) b!7889003))

(declare-fun m!8270090 () Bool)

(assert (=> b!7889003 m!8270090))

(declare-fun m!8270092 () Bool)

(assert (=> b!7889003 m!8270092))

(assert (=> d!2356706 d!2356742))

(declare-fun d!2356746 () Bool)

(declare-fun c!1448346 () Bool)

(assert (=> d!2356746 (= c!1448346 ((_ is Nil!73944) (_1!38333 cut!2)))))

(declare-fun e!4657598 () (InoxSet C!42748))

(assert (=> d!2356746 (= (content!15695 (_1!38333 cut!2)) e!4657598)))

(declare-fun b!7889004 () Bool)

(assert (=> b!7889004 (= e!4657598 ((as const (Array C!42748 Bool)) false))))

(declare-fun b!7889005 () Bool)

(assert (=> b!7889005 (= e!4657598 ((_ map or) (store ((as const (Array C!42748 Bool)) false) (h!80392 (_1!38333 cut!2)) true) (content!15695 (t!388803 (_1!38333 cut!2)))))))

(assert (= (and d!2356746 c!1448346) b!7889004))

(assert (= (and d!2356746 (not c!1448346)) b!7889005))

(declare-fun m!8270094 () Bool)

(assert (=> b!7889005 m!8270094))

(declare-fun m!8270096 () Bool)

(assert (=> b!7889005 m!8270096))

(assert (=> d!2356706 d!2356746))

(declare-fun d!2356748 () Bool)

(declare-fun c!1448347 () Bool)

(assert (=> d!2356748 (= c!1448347 ((_ is Nil!73944) (_2!38333 cut!2)))))

(declare-fun e!4657599 () (InoxSet C!42748))

(assert (=> d!2356748 (= (content!15695 (_2!38333 cut!2)) e!4657599)))

(declare-fun b!7889006 () Bool)

(assert (=> b!7889006 (= e!4657599 ((as const (Array C!42748 Bool)) false))))

(declare-fun b!7889007 () Bool)

(assert (=> b!7889007 (= e!4657599 ((_ map or) (store ((as const (Array C!42748 Bool)) false) (h!80392 (_2!38333 cut!2)) true) (content!15695 (t!388803 (_2!38333 cut!2)))))))

(assert (= (and d!2356748 c!1448347) b!7889006))

(assert (= (and d!2356748 (not c!1448347)) b!7889007))

(declare-fun m!8270098 () Bool)

(assert (=> b!7889007 m!8270098))

(declare-fun m!8270100 () Bool)

(assert (=> b!7889007 m!8270100))

(assert (=> d!2356706 d!2356748))

(declare-fun b!7889008 () Bool)

(declare-fun e!4657601 () List!74068)

(assert (=> b!7889008 (= e!4657601 (_2!38333 cut!2))))

(declare-fun b!7889011 () Bool)

(declare-fun e!4657600 () Bool)

(declare-fun lt!2681498 () List!74068)

(assert (=> b!7889011 (= e!4657600 (or (not (= (_2!38333 cut!2) Nil!73944)) (= lt!2681498 (t!388803 (_1!38333 cut!2)))))))

(declare-fun b!7889010 () Bool)

(declare-fun res!3131432 () Bool)

(assert (=> b!7889010 (=> (not res!3131432) (not e!4657600))))

(assert (=> b!7889010 (= res!3131432 (= (size!42852 lt!2681498) (+ (size!42852 (t!388803 (_1!38333 cut!2))) (size!42852 (_2!38333 cut!2)))))))

(declare-fun b!7889009 () Bool)

(assert (=> b!7889009 (= e!4657601 (Cons!73944 (h!80392 (t!388803 (_1!38333 cut!2))) (++!18115 (t!388803 (t!388803 (_1!38333 cut!2))) (_2!38333 cut!2))))))

(declare-fun d!2356750 () Bool)

(assert (=> d!2356750 e!4657600))

(declare-fun res!3131431 () Bool)

(assert (=> d!2356750 (=> (not res!3131431) (not e!4657600))))

(assert (=> d!2356750 (= res!3131431 (= (content!15695 lt!2681498) ((_ map or) (content!15695 (t!388803 (_1!38333 cut!2))) (content!15695 (_2!38333 cut!2)))))))

(assert (=> d!2356750 (= lt!2681498 e!4657601)))

(declare-fun c!1448348 () Bool)

(assert (=> d!2356750 (= c!1448348 ((_ is Nil!73944) (t!388803 (_1!38333 cut!2))))))

(assert (=> d!2356750 (= (++!18115 (t!388803 (_1!38333 cut!2)) (_2!38333 cut!2)) lt!2681498)))

(assert (= (and d!2356750 c!1448348) b!7889008))

(assert (= (and d!2356750 (not c!1448348)) b!7889009))

(assert (= (and d!2356750 res!3131431) b!7889010))

(assert (= (and b!7889010 res!3131432) b!7889011))

(declare-fun m!8270102 () Bool)

(assert (=> b!7889010 m!8270102))

(assert (=> b!7889010 m!8270064))

(assert (=> b!7889010 m!8269902))

(declare-fun m!8270106 () Bool)

(assert (=> b!7889009 m!8270106))

(declare-fun m!8270108 () Bool)

(assert (=> d!2356750 m!8270108))

(assert (=> d!2356750 m!8270096))

(assert (=> d!2356750 m!8269986))

(assert (=> b!7888781 d!2356750))

(declare-fun d!2356752 () Bool)

(declare-fun nullableFct!3736 (Regex!21211) Bool)

(assert (=> d!2356752 (= (nullable!9466 (reg!21540 r!14100)) (nullableFct!3736 (reg!21540 r!14100)))))

(declare-fun bs!1967470 () Bool)

(assert (= bs!1967470 d!2356752))

(declare-fun m!8270118 () Bool)

(assert (=> bs!1967470 m!8270118))

(assert (=> b!7888510 d!2356752))

(declare-fun d!2356756 () Bool)

(declare-fun lt!2681499 () Int)

(assert (=> d!2356756 (>= lt!2681499 0)))

(declare-fun e!4657609 () Int)

(assert (=> d!2356756 (= lt!2681499 e!4657609)))

(declare-fun c!1448353 () Bool)

(assert (=> d!2356756 (= c!1448353 ((_ is Nil!73944) (t!388803 s!9586)))))

(assert (=> d!2356756 (= (size!42852 (t!388803 s!9586)) lt!2681499)))

(declare-fun b!7889023 () Bool)

(assert (=> b!7889023 (= e!4657609 0)))

(declare-fun b!7889024 () Bool)

(assert (=> b!7889024 (= e!4657609 (+ 1 (size!42852 (t!388803 (t!388803 s!9586)))))))

(assert (= (and d!2356756 c!1448353) b!7889023))

(assert (= (and d!2356756 (not c!1448353)) b!7889024))

(declare-fun m!8270120 () Bool)

(assert (=> b!7889024 m!8270120))

(assert (=> b!7888771 d!2356756))

(declare-fun d!2356758 () Bool)

(declare-fun lt!2681500 () Int)

(assert (=> d!2356758 (>= lt!2681500 0)))

(declare-fun e!4657610 () Int)

(assert (=> d!2356758 (= lt!2681500 e!4657610)))

(declare-fun c!1448354 () Bool)

(assert (=> d!2356758 (= c!1448354 ((_ is Nil!73944) (t!388803 (_2!38333 cut!2))))))

(assert (=> d!2356758 (= (size!42852 (t!388803 (_2!38333 cut!2))) lt!2681500)))

(declare-fun b!7889025 () Bool)

(assert (=> b!7889025 (= e!4657610 0)))

(declare-fun b!7889026 () Bool)

(assert (=> b!7889026 (= e!4657610 (+ 1 (size!42852 (t!388803 (t!388803 (_2!38333 cut!2))))))))

(assert (= (and d!2356758 c!1448354) b!7889025))

(assert (= (and d!2356758 (not c!1448354)) b!7889026))

(declare-fun m!8270122 () Bool)

(assert (=> b!7889026 m!8270122))

(assert (=> b!7888718 d!2356758))

(declare-fun d!2356760 () Bool)

(declare-fun choose!59698 (Int) Bool)

(assert (=> d!2356760 (= (Exists!4764 (ite c!1448245 lambda!472164 lambda!472165)) (choose!59698 (ite c!1448245 lambda!472164 lambda!472165)))))

(declare-fun bs!1967471 () Bool)

(assert (= bs!1967471 d!2356760))

(declare-fun m!8270124 () Bool)

(assert (=> bs!1967471 m!8270124))

(assert (=> bm!731976 d!2356760))

(assert (=> bm!731975 d!2356678))

(declare-fun d!2356762 () Bool)

(assert (=> d!2356762 (= (maxBigInt!0 (ite c!1448270 call!732000 call!731999) (ite c!1448270 call!731999 call!732000)) (ite (>= (ite c!1448270 call!732000 call!731999) (ite c!1448270 call!731999 call!732000)) (ite c!1448270 call!732000 call!731999) (ite c!1448270 call!731999 call!732000)))))

(assert (=> bm!731993 d!2356762))

(declare-fun b!7889029 () Bool)

(declare-fun e!4657611 () Bool)

(declare-fun tp!2346950 () Bool)

(declare-fun tp!2346949 () Bool)

(assert (=> b!7889029 (= e!4657611 (and tp!2346950 tp!2346949))))

(assert (=> b!7888799 (= tp!2346925 e!4657611)))

(declare-fun b!7889031 () Bool)

(declare-fun tp!2346947 () Bool)

(declare-fun tp!2346951 () Bool)

(assert (=> b!7889031 (= e!4657611 (and tp!2346947 tp!2346951))))

(declare-fun b!7889030 () Bool)

(declare-fun tp!2346948 () Bool)

(assert (=> b!7889030 (= e!4657611 tp!2346948)))

(declare-fun b!7889028 () Bool)

(assert (=> b!7889028 (= e!4657611 tp_is_empty!52821)))

(assert (= (and b!7888799 ((_ is ElementMatch!21211) (regOne!42934 (regTwo!42935 r!14100)))) b!7889028))

(assert (= (and b!7888799 ((_ is Concat!30056) (regOne!42934 (regTwo!42935 r!14100)))) b!7889029))

(assert (= (and b!7888799 ((_ is Star!21211) (regOne!42934 (regTwo!42935 r!14100)))) b!7889030))

(assert (= (and b!7888799 ((_ is Union!21211) (regOne!42934 (regTwo!42935 r!14100)))) b!7889031))

(declare-fun b!7889033 () Bool)

(declare-fun e!4657612 () Bool)

(declare-fun tp!2346955 () Bool)

(declare-fun tp!2346954 () Bool)

(assert (=> b!7889033 (= e!4657612 (and tp!2346955 tp!2346954))))

(assert (=> b!7888799 (= tp!2346924 e!4657612)))

(declare-fun b!7889035 () Bool)

(declare-fun tp!2346952 () Bool)

(declare-fun tp!2346956 () Bool)

(assert (=> b!7889035 (= e!4657612 (and tp!2346952 tp!2346956))))

(declare-fun b!7889034 () Bool)

(declare-fun tp!2346953 () Bool)

(assert (=> b!7889034 (= e!4657612 tp!2346953)))

(declare-fun b!7889032 () Bool)

(assert (=> b!7889032 (= e!4657612 tp_is_empty!52821)))

(assert (= (and b!7888799 ((_ is ElementMatch!21211) (regTwo!42934 (regTwo!42935 r!14100)))) b!7889032))

(assert (= (and b!7888799 ((_ is Concat!30056) (regTwo!42934 (regTwo!42935 r!14100)))) b!7889033))

(assert (= (and b!7888799 ((_ is Star!21211) (regTwo!42934 (regTwo!42935 r!14100)))) b!7889034))

(assert (= (and b!7888799 ((_ is Union!21211) (regTwo!42934 (regTwo!42935 r!14100)))) b!7889035))

(declare-fun b!7889036 () Bool)

(declare-fun e!4657613 () Bool)

(declare-fun tp!2346957 () Bool)

(assert (=> b!7889036 (= e!4657613 (and tp_is_empty!52821 tp!2346957))))

(assert (=> b!7888816 (= tp!2346941 e!4657613)))

(assert (= (and b!7888816 ((_ is Cons!73944) (t!388803 (t!388803 (_1!38333 cut!2))))) b!7889036))

(declare-fun b!7889038 () Bool)

(declare-fun e!4657614 () Bool)

(declare-fun tp!2346961 () Bool)

(declare-fun tp!2346960 () Bool)

(assert (=> b!7889038 (= e!4657614 (and tp!2346961 tp!2346960))))

(assert (=> b!7888820 (= tp!2346942 e!4657614)))

(declare-fun b!7889040 () Bool)

(declare-fun tp!2346958 () Bool)

(declare-fun tp!2346962 () Bool)

(assert (=> b!7889040 (= e!4657614 (and tp!2346958 tp!2346962))))

(declare-fun b!7889039 () Bool)

(declare-fun tp!2346959 () Bool)

(assert (=> b!7889039 (= e!4657614 tp!2346959)))

(declare-fun b!7889037 () Bool)

(assert (=> b!7889037 (= e!4657614 tp_is_empty!52821)))

(assert (= (and b!7888820 ((_ is ElementMatch!21211) (regOne!42935 (reg!21540 r!14100)))) b!7889037))

(assert (= (and b!7888820 ((_ is Concat!30056) (regOne!42935 (reg!21540 r!14100)))) b!7889038))

(assert (= (and b!7888820 ((_ is Star!21211) (regOne!42935 (reg!21540 r!14100)))) b!7889039))

(assert (= (and b!7888820 ((_ is Union!21211) (regOne!42935 (reg!21540 r!14100)))) b!7889040))

(declare-fun b!7889042 () Bool)

(declare-fun e!4657615 () Bool)

(declare-fun tp!2346966 () Bool)

(declare-fun tp!2346965 () Bool)

(assert (=> b!7889042 (= e!4657615 (and tp!2346966 tp!2346965))))

(assert (=> b!7888820 (= tp!2346946 e!4657615)))

(declare-fun b!7889044 () Bool)

(declare-fun tp!2346963 () Bool)

(declare-fun tp!2346967 () Bool)

(assert (=> b!7889044 (= e!4657615 (and tp!2346963 tp!2346967))))

(declare-fun b!7889043 () Bool)

(declare-fun tp!2346964 () Bool)

(assert (=> b!7889043 (= e!4657615 tp!2346964)))

(declare-fun b!7889041 () Bool)

(assert (=> b!7889041 (= e!4657615 tp_is_empty!52821)))

(assert (= (and b!7888820 ((_ is ElementMatch!21211) (regTwo!42935 (reg!21540 r!14100)))) b!7889041))

(assert (= (and b!7888820 ((_ is Concat!30056) (regTwo!42935 (reg!21540 r!14100)))) b!7889042))

(assert (= (and b!7888820 ((_ is Star!21211) (regTwo!42935 (reg!21540 r!14100)))) b!7889043))

(assert (= (and b!7888820 ((_ is Union!21211) (regTwo!42935 (reg!21540 r!14100)))) b!7889044))

(declare-fun b!7889046 () Bool)

(declare-fun e!4657616 () Bool)

(declare-fun tp!2346971 () Bool)

(declare-fun tp!2346970 () Bool)

(assert (=> b!7889046 (= e!4657616 (and tp!2346971 tp!2346970))))

(assert (=> b!7888819 (= tp!2346943 e!4657616)))

(declare-fun b!7889048 () Bool)

(declare-fun tp!2346968 () Bool)

(declare-fun tp!2346972 () Bool)

(assert (=> b!7889048 (= e!4657616 (and tp!2346968 tp!2346972))))

(declare-fun b!7889047 () Bool)

(declare-fun tp!2346969 () Bool)

(assert (=> b!7889047 (= e!4657616 tp!2346969)))

(declare-fun b!7889045 () Bool)

(assert (=> b!7889045 (= e!4657616 tp_is_empty!52821)))

(assert (= (and b!7888819 ((_ is ElementMatch!21211) (reg!21540 (reg!21540 r!14100)))) b!7889045))

(assert (= (and b!7888819 ((_ is Concat!30056) (reg!21540 (reg!21540 r!14100)))) b!7889046))

(assert (= (and b!7888819 ((_ is Star!21211) (reg!21540 (reg!21540 r!14100)))) b!7889047))

(assert (= (and b!7888819 ((_ is Union!21211) (reg!21540 (reg!21540 r!14100)))) b!7889048))

(declare-fun b!7889049 () Bool)

(declare-fun e!4657617 () Bool)

(declare-fun tp!2346973 () Bool)

(assert (=> b!7889049 (= e!4657617 (and tp_is_empty!52821 tp!2346973))))

(assert (=> b!7888807 (= tp!2346930 e!4657617)))

(assert (= (and b!7888807 ((_ is Cons!73944) (t!388803 (t!388803 (_2!38333 cut!2))))) b!7889049))

(declare-fun b!7889051 () Bool)

(declare-fun e!4657618 () Bool)

(declare-fun tp!2346977 () Bool)

(declare-fun tp!2346976 () Bool)

(assert (=> b!7889051 (= e!4657618 (and tp!2346977 tp!2346976))))

(assert (=> b!7888811 (= tp!2346931 e!4657618)))

(declare-fun b!7889053 () Bool)

(declare-fun tp!2346974 () Bool)

(declare-fun tp!2346978 () Bool)

(assert (=> b!7889053 (= e!4657618 (and tp!2346974 tp!2346978))))

(declare-fun b!7889052 () Bool)

(declare-fun tp!2346975 () Bool)

(assert (=> b!7889052 (= e!4657618 tp!2346975)))

(declare-fun b!7889050 () Bool)

(assert (=> b!7889050 (= e!4657618 tp_is_empty!52821)))

(assert (= (and b!7888811 ((_ is ElementMatch!21211) (regOne!42935 (regOne!42934 r!14100)))) b!7889050))

(assert (= (and b!7888811 ((_ is Concat!30056) (regOne!42935 (regOne!42934 r!14100)))) b!7889051))

(assert (= (and b!7888811 ((_ is Star!21211) (regOne!42935 (regOne!42934 r!14100)))) b!7889052))

(assert (= (and b!7888811 ((_ is Union!21211) (regOne!42935 (regOne!42934 r!14100)))) b!7889053))

(declare-fun b!7889055 () Bool)

(declare-fun e!4657619 () Bool)

(declare-fun tp!2346982 () Bool)

(declare-fun tp!2346981 () Bool)

(assert (=> b!7889055 (= e!4657619 (and tp!2346982 tp!2346981))))

(assert (=> b!7888811 (= tp!2346935 e!4657619)))

(declare-fun b!7889057 () Bool)

(declare-fun tp!2346979 () Bool)

(declare-fun tp!2346983 () Bool)

(assert (=> b!7889057 (= e!4657619 (and tp!2346979 tp!2346983))))

(declare-fun b!7889056 () Bool)

(declare-fun tp!2346980 () Bool)

(assert (=> b!7889056 (= e!4657619 tp!2346980)))

(declare-fun b!7889054 () Bool)

(assert (=> b!7889054 (= e!4657619 tp_is_empty!52821)))

(assert (= (and b!7888811 ((_ is ElementMatch!21211) (regTwo!42935 (regOne!42934 r!14100)))) b!7889054))

(assert (= (and b!7888811 ((_ is Concat!30056) (regTwo!42935 (regOne!42934 r!14100)))) b!7889055))

(assert (= (and b!7888811 ((_ is Star!21211) (regTwo!42935 (regOne!42934 r!14100)))) b!7889056))

(assert (= (and b!7888811 ((_ is Union!21211) (regTwo!42935 (regOne!42934 r!14100)))) b!7889057))

(declare-fun b!7889059 () Bool)

(declare-fun e!4657620 () Bool)

(declare-fun tp!2346987 () Bool)

(declare-fun tp!2346986 () Bool)

(assert (=> b!7889059 (= e!4657620 (and tp!2346987 tp!2346986))))

(assert (=> b!7888815 (= tp!2346936 e!4657620)))

(declare-fun b!7889061 () Bool)

(declare-fun tp!2346984 () Bool)

(declare-fun tp!2346988 () Bool)

(assert (=> b!7889061 (= e!4657620 (and tp!2346984 tp!2346988))))

(declare-fun b!7889060 () Bool)

(declare-fun tp!2346985 () Bool)

(assert (=> b!7889060 (= e!4657620 tp!2346985)))

(declare-fun b!7889058 () Bool)

(assert (=> b!7889058 (= e!4657620 tp_is_empty!52821)))

(assert (= (and b!7888815 ((_ is ElementMatch!21211) (regOne!42935 (regTwo!42934 r!14100)))) b!7889058))

(assert (= (and b!7888815 ((_ is Concat!30056) (regOne!42935 (regTwo!42934 r!14100)))) b!7889059))

(assert (= (and b!7888815 ((_ is Star!21211) (regOne!42935 (regTwo!42934 r!14100)))) b!7889060))

(assert (= (and b!7888815 ((_ is Union!21211) (regOne!42935 (regTwo!42934 r!14100)))) b!7889061))

(declare-fun b!7889063 () Bool)

(declare-fun e!4657621 () Bool)

(declare-fun tp!2346992 () Bool)

(declare-fun tp!2346991 () Bool)

(assert (=> b!7889063 (= e!4657621 (and tp!2346992 tp!2346991))))

(assert (=> b!7888815 (= tp!2346940 e!4657621)))

(declare-fun b!7889065 () Bool)

(declare-fun tp!2346989 () Bool)

(declare-fun tp!2346993 () Bool)

(assert (=> b!7889065 (= e!4657621 (and tp!2346989 tp!2346993))))

(declare-fun b!7889064 () Bool)

(declare-fun tp!2346990 () Bool)

(assert (=> b!7889064 (= e!4657621 tp!2346990)))

(declare-fun b!7889062 () Bool)

(assert (=> b!7889062 (= e!4657621 tp_is_empty!52821)))

(assert (= (and b!7888815 ((_ is ElementMatch!21211) (regTwo!42935 (regTwo!42934 r!14100)))) b!7889062))

(assert (= (and b!7888815 ((_ is Concat!30056) (regTwo!42935 (regTwo!42934 r!14100)))) b!7889063))

(assert (= (and b!7888815 ((_ is Star!21211) (regTwo!42935 (regTwo!42934 r!14100)))) b!7889064))

(assert (= (and b!7888815 ((_ is Union!21211) (regTwo!42935 (regTwo!42934 r!14100)))) b!7889065))

(declare-fun b!7889067 () Bool)

(declare-fun e!4657622 () Bool)

(declare-fun tp!2346997 () Bool)

(declare-fun tp!2346996 () Bool)

(assert (=> b!7889067 (= e!4657622 (and tp!2346997 tp!2346996))))

(assert (=> b!7888818 (= tp!2346945 e!4657622)))

(declare-fun b!7889069 () Bool)

(declare-fun tp!2346994 () Bool)

(declare-fun tp!2346998 () Bool)

(assert (=> b!7889069 (= e!4657622 (and tp!2346994 tp!2346998))))

(declare-fun b!7889068 () Bool)

(declare-fun tp!2346995 () Bool)

(assert (=> b!7889068 (= e!4657622 tp!2346995)))

(declare-fun b!7889066 () Bool)

(assert (=> b!7889066 (= e!4657622 tp_is_empty!52821)))

(assert (= (and b!7888818 ((_ is ElementMatch!21211) (regOne!42934 (reg!21540 r!14100)))) b!7889066))

(assert (= (and b!7888818 ((_ is Concat!30056) (regOne!42934 (reg!21540 r!14100)))) b!7889067))

(assert (= (and b!7888818 ((_ is Star!21211) (regOne!42934 (reg!21540 r!14100)))) b!7889068))

(assert (= (and b!7888818 ((_ is Union!21211) (regOne!42934 (reg!21540 r!14100)))) b!7889069))

(declare-fun b!7889071 () Bool)

(declare-fun e!4657623 () Bool)

(declare-fun tp!2347002 () Bool)

(declare-fun tp!2347001 () Bool)

(assert (=> b!7889071 (= e!4657623 (and tp!2347002 tp!2347001))))

(assert (=> b!7888818 (= tp!2346944 e!4657623)))

(declare-fun b!7889073 () Bool)

(declare-fun tp!2346999 () Bool)

(declare-fun tp!2347003 () Bool)

(assert (=> b!7889073 (= e!4657623 (and tp!2346999 tp!2347003))))

(declare-fun b!7889072 () Bool)

(declare-fun tp!2347000 () Bool)

(assert (=> b!7889072 (= e!4657623 tp!2347000)))

(declare-fun b!7889070 () Bool)

(assert (=> b!7889070 (= e!4657623 tp_is_empty!52821)))

(assert (= (and b!7888818 ((_ is ElementMatch!21211) (regTwo!42934 (reg!21540 r!14100)))) b!7889070))

(assert (= (and b!7888818 ((_ is Concat!30056) (regTwo!42934 (reg!21540 r!14100)))) b!7889071))

(assert (= (and b!7888818 ((_ is Star!21211) (regTwo!42934 (reg!21540 r!14100)))) b!7889072))

(assert (= (and b!7888818 ((_ is Union!21211) (regTwo!42934 (reg!21540 r!14100)))) b!7889073))

(declare-fun b!7889075 () Bool)

(declare-fun e!4657624 () Bool)

(declare-fun tp!2347007 () Bool)

(declare-fun tp!2347006 () Bool)

(assert (=> b!7889075 (= e!4657624 (and tp!2347007 tp!2347006))))

(assert (=> b!7888810 (= tp!2346932 e!4657624)))

(declare-fun b!7889077 () Bool)

(declare-fun tp!2347004 () Bool)

(declare-fun tp!2347008 () Bool)

(assert (=> b!7889077 (= e!4657624 (and tp!2347004 tp!2347008))))

(declare-fun b!7889076 () Bool)

(declare-fun tp!2347005 () Bool)

(assert (=> b!7889076 (= e!4657624 tp!2347005)))

(declare-fun b!7889074 () Bool)

(assert (=> b!7889074 (= e!4657624 tp_is_empty!52821)))

(assert (= (and b!7888810 ((_ is ElementMatch!21211) (reg!21540 (regOne!42934 r!14100)))) b!7889074))

(assert (= (and b!7888810 ((_ is Concat!30056) (reg!21540 (regOne!42934 r!14100)))) b!7889075))

(assert (= (and b!7888810 ((_ is Star!21211) (reg!21540 (regOne!42934 r!14100)))) b!7889076))

(assert (= (and b!7888810 ((_ is Union!21211) (reg!21540 (regOne!42934 r!14100)))) b!7889077))

(declare-fun b!7889079 () Bool)

(declare-fun e!4657625 () Bool)

(declare-fun tp!2347012 () Bool)

(declare-fun tp!2347011 () Bool)

(assert (=> b!7889079 (= e!4657625 (and tp!2347012 tp!2347011))))

(assert (=> b!7888809 (= tp!2346934 e!4657625)))

(declare-fun b!7889081 () Bool)

(declare-fun tp!2347009 () Bool)

(declare-fun tp!2347013 () Bool)

(assert (=> b!7889081 (= e!4657625 (and tp!2347009 tp!2347013))))

(declare-fun b!7889080 () Bool)

(declare-fun tp!2347010 () Bool)

(assert (=> b!7889080 (= e!4657625 tp!2347010)))

(declare-fun b!7889078 () Bool)

(assert (=> b!7889078 (= e!4657625 tp_is_empty!52821)))

(assert (= (and b!7888809 ((_ is ElementMatch!21211) (regOne!42934 (regOne!42934 r!14100)))) b!7889078))

(assert (= (and b!7888809 ((_ is Concat!30056) (regOne!42934 (regOne!42934 r!14100)))) b!7889079))

(assert (= (and b!7888809 ((_ is Star!21211) (regOne!42934 (regOne!42934 r!14100)))) b!7889080))

(assert (= (and b!7888809 ((_ is Union!21211) (regOne!42934 (regOne!42934 r!14100)))) b!7889081))

(declare-fun b!7889083 () Bool)

(declare-fun e!4657626 () Bool)

(declare-fun tp!2347017 () Bool)

(declare-fun tp!2347016 () Bool)

(assert (=> b!7889083 (= e!4657626 (and tp!2347017 tp!2347016))))

(assert (=> b!7888809 (= tp!2346933 e!4657626)))

(declare-fun b!7889085 () Bool)

(declare-fun tp!2347014 () Bool)

(declare-fun tp!2347018 () Bool)

(assert (=> b!7889085 (= e!4657626 (and tp!2347014 tp!2347018))))

(declare-fun b!7889084 () Bool)

(declare-fun tp!2347015 () Bool)

(assert (=> b!7889084 (= e!4657626 tp!2347015)))

(declare-fun b!7889082 () Bool)

(assert (=> b!7889082 (= e!4657626 tp_is_empty!52821)))

(assert (= (and b!7888809 ((_ is ElementMatch!21211) (regTwo!42934 (regOne!42934 r!14100)))) b!7889082))

(assert (= (and b!7888809 ((_ is Concat!30056) (regTwo!42934 (regOne!42934 r!14100)))) b!7889083))

(assert (= (and b!7888809 ((_ is Star!21211) (regTwo!42934 (regOne!42934 r!14100)))) b!7889084))

(assert (= (and b!7888809 ((_ is Union!21211) (regTwo!42934 (regOne!42934 r!14100)))) b!7889085))

(declare-fun b!7889087 () Bool)

(declare-fun e!4657627 () Bool)

(declare-fun tp!2347022 () Bool)

(declare-fun tp!2347021 () Bool)

(assert (=> b!7889087 (= e!4657627 (and tp!2347022 tp!2347021))))

(assert (=> b!7888814 (= tp!2346937 e!4657627)))

(declare-fun b!7889089 () Bool)

(declare-fun tp!2347019 () Bool)

(declare-fun tp!2347023 () Bool)

(assert (=> b!7889089 (= e!4657627 (and tp!2347019 tp!2347023))))

(declare-fun b!7889088 () Bool)

(declare-fun tp!2347020 () Bool)

(assert (=> b!7889088 (= e!4657627 tp!2347020)))

(declare-fun b!7889086 () Bool)

(assert (=> b!7889086 (= e!4657627 tp_is_empty!52821)))

(assert (= (and b!7888814 ((_ is ElementMatch!21211) (reg!21540 (regTwo!42934 r!14100)))) b!7889086))

(assert (= (and b!7888814 ((_ is Concat!30056) (reg!21540 (regTwo!42934 r!14100)))) b!7889087))

(assert (= (and b!7888814 ((_ is Star!21211) (reg!21540 (regTwo!42934 r!14100)))) b!7889088))

(assert (= (and b!7888814 ((_ is Union!21211) (reg!21540 (regTwo!42934 r!14100)))) b!7889089))

(declare-fun b!7889091 () Bool)

(declare-fun e!4657628 () Bool)

(declare-fun tp!2347027 () Bool)

(declare-fun tp!2347026 () Bool)

(assert (=> b!7889091 (= e!4657628 (and tp!2347027 tp!2347026))))

(assert (=> b!7888813 (= tp!2346939 e!4657628)))

(declare-fun b!7889093 () Bool)

(declare-fun tp!2347024 () Bool)

(declare-fun tp!2347028 () Bool)

(assert (=> b!7889093 (= e!4657628 (and tp!2347024 tp!2347028))))

(declare-fun b!7889092 () Bool)

(declare-fun tp!2347025 () Bool)

(assert (=> b!7889092 (= e!4657628 tp!2347025)))

(declare-fun b!7889090 () Bool)

(assert (=> b!7889090 (= e!4657628 tp_is_empty!52821)))

(assert (= (and b!7888813 ((_ is ElementMatch!21211) (regOne!42934 (regTwo!42934 r!14100)))) b!7889090))

(assert (= (and b!7888813 ((_ is Concat!30056) (regOne!42934 (regTwo!42934 r!14100)))) b!7889091))

(assert (= (and b!7888813 ((_ is Star!21211) (regOne!42934 (regTwo!42934 r!14100)))) b!7889092))

(assert (= (and b!7888813 ((_ is Union!21211) (regOne!42934 (regTwo!42934 r!14100)))) b!7889093))

(declare-fun b!7889095 () Bool)

(declare-fun e!4657629 () Bool)

(declare-fun tp!2347032 () Bool)

(declare-fun tp!2347031 () Bool)

(assert (=> b!7889095 (= e!4657629 (and tp!2347032 tp!2347031))))

(assert (=> b!7888813 (= tp!2346938 e!4657629)))

(declare-fun b!7889097 () Bool)

(declare-fun tp!2347029 () Bool)

(declare-fun tp!2347033 () Bool)

(assert (=> b!7889097 (= e!4657629 (and tp!2347029 tp!2347033))))

(declare-fun b!7889096 () Bool)

(declare-fun tp!2347030 () Bool)

(assert (=> b!7889096 (= e!4657629 tp!2347030)))

(declare-fun b!7889094 () Bool)

(assert (=> b!7889094 (= e!4657629 tp_is_empty!52821)))

(assert (= (and b!7888813 ((_ is ElementMatch!21211) (regTwo!42934 (regTwo!42934 r!14100)))) b!7889094))

(assert (= (and b!7888813 ((_ is Concat!30056) (regTwo!42934 (regTwo!42934 r!14100)))) b!7889095))

(assert (= (and b!7888813 ((_ is Star!21211) (regTwo!42934 (regTwo!42934 r!14100)))) b!7889096))

(assert (= (and b!7888813 ((_ is Union!21211) (regTwo!42934 (regTwo!42934 r!14100)))) b!7889097))

(declare-fun b!7889098 () Bool)

(declare-fun e!4657630 () Bool)

(declare-fun tp!2347034 () Bool)

(assert (=> b!7889098 (= e!4657630 (and tp_is_empty!52821 tp!2347034))))

(assert (=> b!7888806 (= tp!2346929 e!4657630)))

(assert (= (and b!7888806 ((_ is Cons!73944) (t!388803 (t!388803 s!9586)))) b!7889098))

(declare-fun b!7889100 () Bool)

(declare-fun e!4657631 () Bool)

(declare-fun tp!2347038 () Bool)

(declare-fun tp!2347037 () Bool)

(assert (=> b!7889100 (= e!4657631 (and tp!2347038 tp!2347037))))

(assert (=> b!7888797 (= tp!2346917 e!4657631)))

(declare-fun b!7889102 () Bool)

(declare-fun tp!2347035 () Bool)

(declare-fun tp!2347039 () Bool)

(assert (=> b!7889102 (= e!4657631 (and tp!2347035 tp!2347039))))

(declare-fun b!7889101 () Bool)

(declare-fun tp!2347036 () Bool)

(assert (=> b!7889101 (= e!4657631 tp!2347036)))

(declare-fun b!7889099 () Bool)

(assert (=> b!7889099 (= e!4657631 tp_is_empty!52821)))

(assert (= (and b!7888797 ((_ is ElementMatch!21211) (regOne!42935 (regOne!42935 r!14100)))) b!7889099))

(assert (= (and b!7888797 ((_ is Concat!30056) (regOne!42935 (regOne!42935 r!14100)))) b!7889100))

(assert (= (and b!7888797 ((_ is Star!21211) (regOne!42935 (regOne!42935 r!14100)))) b!7889101))

(assert (= (and b!7888797 ((_ is Union!21211) (regOne!42935 (regOne!42935 r!14100)))) b!7889102))

(declare-fun b!7889104 () Bool)

(declare-fun e!4657632 () Bool)

(declare-fun tp!2347043 () Bool)

(declare-fun tp!2347042 () Bool)

(assert (=> b!7889104 (= e!4657632 (and tp!2347043 tp!2347042))))

(assert (=> b!7888797 (= tp!2346921 e!4657632)))

(declare-fun b!7889106 () Bool)

(declare-fun tp!2347040 () Bool)

(declare-fun tp!2347044 () Bool)

(assert (=> b!7889106 (= e!4657632 (and tp!2347040 tp!2347044))))

(declare-fun b!7889105 () Bool)

(declare-fun tp!2347041 () Bool)

(assert (=> b!7889105 (= e!4657632 tp!2347041)))

(declare-fun b!7889103 () Bool)

(assert (=> b!7889103 (= e!4657632 tp_is_empty!52821)))

(assert (= (and b!7888797 ((_ is ElementMatch!21211) (regTwo!42935 (regOne!42935 r!14100)))) b!7889103))

(assert (= (and b!7888797 ((_ is Concat!30056) (regTwo!42935 (regOne!42935 r!14100)))) b!7889104))

(assert (= (and b!7888797 ((_ is Star!21211) (regTwo!42935 (regOne!42935 r!14100)))) b!7889105))

(assert (= (and b!7888797 ((_ is Union!21211) (regTwo!42935 (regOne!42935 r!14100)))) b!7889106))

(declare-fun b!7889108 () Bool)

(declare-fun e!4657633 () Bool)

(declare-fun tp!2347048 () Bool)

(declare-fun tp!2347047 () Bool)

(assert (=> b!7889108 (= e!4657633 (and tp!2347048 tp!2347047))))

(assert (=> b!7888801 (= tp!2346922 e!4657633)))

(declare-fun b!7889110 () Bool)

(declare-fun tp!2347045 () Bool)

(declare-fun tp!2347049 () Bool)

(assert (=> b!7889110 (= e!4657633 (and tp!2347045 tp!2347049))))

(declare-fun b!7889109 () Bool)

(declare-fun tp!2347046 () Bool)

(assert (=> b!7889109 (= e!4657633 tp!2347046)))

(declare-fun b!7889107 () Bool)

(assert (=> b!7889107 (= e!4657633 tp_is_empty!52821)))

(assert (= (and b!7888801 ((_ is ElementMatch!21211) (regOne!42935 (regTwo!42935 r!14100)))) b!7889107))

(assert (= (and b!7888801 ((_ is Concat!30056) (regOne!42935 (regTwo!42935 r!14100)))) b!7889108))

(assert (= (and b!7888801 ((_ is Star!21211) (regOne!42935 (regTwo!42935 r!14100)))) b!7889109))

(assert (= (and b!7888801 ((_ is Union!21211) (regOne!42935 (regTwo!42935 r!14100)))) b!7889110))

(declare-fun b!7889112 () Bool)

(declare-fun e!4657634 () Bool)

(declare-fun tp!2347053 () Bool)

(declare-fun tp!2347052 () Bool)

(assert (=> b!7889112 (= e!4657634 (and tp!2347053 tp!2347052))))

(assert (=> b!7888801 (= tp!2346926 e!4657634)))

(declare-fun b!7889114 () Bool)

(declare-fun tp!2347050 () Bool)

(declare-fun tp!2347054 () Bool)

(assert (=> b!7889114 (= e!4657634 (and tp!2347050 tp!2347054))))

(declare-fun b!7889113 () Bool)

(declare-fun tp!2347051 () Bool)

(assert (=> b!7889113 (= e!4657634 tp!2347051)))

(declare-fun b!7889111 () Bool)

(assert (=> b!7889111 (= e!4657634 tp_is_empty!52821)))

(assert (= (and b!7888801 ((_ is ElementMatch!21211) (regTwo!42935 (regTwo!42935 r!14100)))) b!7889111))

(assert (= (and b!7888801 ((_ is Concat!30056) (regTwo!42935 (regTwo!42935 r!14100)))) b!7889112))

(assert (= (and b!7888801 ((_ is Star!21211) (regTwo!42935 (regTwo!42935 r!14100)))) b!7889113))

(assert (= (and b!7888801 ((_ is Union!21211) (regTwo!42935 (regTwo!42935 r!14100)))) b!7889114))

(declare-fun b!7889118 () Bool)

(declare-fun e!4657636 () Bool)

(declare-fun tp!2347058 () Bool)

(declare-fun tp!2347057 () Bool)

(assert (=> b!7889118 (= e!4657636 (and tp!2347058 tp!2347057))))

(assert (=> b!7888796 (= tp!2346918 e!4657636)))

(declare-fun b!7889120 () Bool)

(declare-fun tp!2347055 () Bool)

(declare-fun tp!2347059 () Bool)

(assert (=> b!7889120 (= e!4657636 (and tp!2347055 tp!2347059))))

(declare-fun b!7889119 () Bool)

(declare-fun tp!2347056 () Bool)

(assert (=> b!7889119 (= e!4657636 tp!2347056)))

(declare-fun b!7889117 () Bool)

(assert (=> b!7889117 (= e!4657636 tp_is_empty!52821)))

(assert (= (and b!7888796 ((_ is ElementMatch!21211) (reg!21540 (regOne!42935 r!14100)))) b!7889117))

(assert (= (and b!7888796 ((_ is Concat!30056) (reg!21540 (regOne!42935 r!14100)))) b!7889118))

(assert (= (and b!7888796 ((_ is Star!21211) (reg!21540 (regOne!42935 r!14100)))) b!7889119))

(assert (= (and b!7888796 ((_ is Union!21211) (reg!21540 (regOne!42935 r!14100)))) b!7889120))

(declare-fun b!7889122 () Bool)

(declare-fun e!4657637 () Bool)

(declare-fun tp!2347063 () Bool)

(declare-fun tp!2347062 () Bool)

(assert (=> b!7889122 (= e!4657637 (and tp!2347063 tp!2347062))))

(assert (=> b!7888795 (= tp!2346920 e!4657637)))

(declare-fun b!7889124 () Bool)

(declare-fun tp!2347060 () Bool)

(declare-fun tp!2347064 () Bool)

(assert (=> b!7889124 (= e!4657637 (and tp!2347060 tp!2347064))))

(declare-fun b!7889123 () Bool)

(declare-fun tp!2347061 () Bool)

(assert (=> b!7889123 (= e!4657637 tp!2347061)))

(declare-fun b!7889121 () Bool)

(assert (=> b!7889121 (= e!4657637 tp_is_empty!52821)))

(assert (= (and b!7888795 ((_ is ElementMatch!21211) (regOne!42934 (regOne!42935 r!14100)))) b!7889121))

(assert (= (and b!7888795 ((_ is Concat!30056) (regOne!42934 (regOne!42935 r!14100)))) b!7889122))

(assert (= (and b!7888795 ((_ is Star!21211) (regOne!42934 (regOne!42935 r!14100)))) b!7889123))

(assert (= (and b!7888795 ((_ is Union!21211) (regOne!42934 (regOne!42935 r!14100)))) b!7889124))

(declare-fun b!7889128 () Bool)

(declare-fun e!4657639 () Bool)

(declare-fun tp!2347068 () Bool)

(declare-fun tp!2347067 () Bool)

(assert (=> b!7889128 (= e!4657639 (and tp!2347068 tp!2347067))))

(assert (=> b!7888795 (= tp!2346919 e!4657639)))

(declare-fun b!7889130 () Bool)

(declare-fun tp!2347065 () Bool)

(declare-fun tp!2347069 () Bool)

(assert (=> b!7889130 (= e!4657639 (and tp!2347065 tp!2347069))))

(declare-fun b!7889129 () Bool)

(declare-fun tp!2347066 () Bool)

(assert (=> b!7889129 (= e!4657639 tp!2347066)))

(declare-fun b!7889127 () Bool)

(assert (=> b!7889127 (= e!4657639 tp_is_empty!52821)))

(assert (= (and b!7888795 ((_ is ElementMatch!21211) (regTwo!42934 (regOne!42935 r!14100)))) b!7889127))

(assert (= (and b!7888795 ((_ is Concat!30056) (regTwo!42934 (regOne!42935 r!14100)))) b!7889128))

(assert (= (and b!7888795 ((_ is Star!21211) (regTwo!42934 (regOne!42935 r!14100)))) b!7889129))

(assert (= (and b!7888795 ((_ is Union!21211) (regTwo!42934 (regOne!42935 r!14100)))) b!7889130))

(declare-fun b!7889132 () Bool)

(declare-fun e!4657640 () Bool)

(declare-fun tp!2347073 () Bool)

(declare-fun tp!2347072 () Bool)

(assert (=> b!7889132 (= e!4657640 (and tp!2347073 tp!2347072))))

(assert (=> b!7888800 (= tp!2346923 e!4657640)))

(declare-fun b!7889134 () Bool)

(declare-fun tp!2347070 () Bool)

(declare-fun tp!2347074 () Bool)

(assert (=> b!7889134 (= e!4657640 (and tp!2347070 tp!2347074))))

(declare-fun b!7889133 () Bool)

(declare-fun tp!2347071 () Bool)

(assert (=> b!7889133 (= e!4657640 tp!2347071)))

(declare-fun b!7889131 () Bool)

(assert (=> b!7889131 (= e!4657640 tp_is_empty!52821)))

(assert (= (and b!7888800 ((_ is ElementMatch!21211) (reg!21540 (regTwo!42935 r!14100)))) b!7889131))

(assert (= (and b!7888800 ((_ is Concat!30056) (reg!21540 (regTwo!42935 r!14100)))) b!7889132))

(assert (= (and b!7888800 ((_ is Star!21211) (reg!21540 (regTwo!42935 r!14100)))) b!7889133))

(assert (= (and b!7888800 ((_ is Union!21211) (reg!21540 (regTwo!42935 r!14100)))) b!7889134))

(check-sat (not b!7889064) (not b!7889132) (not b!7889030) (not b!7889042) (not bm!732014) (not b!7889118) (not b!7889113) (not b!7889128) (not b!7889059) (not b!7889120) (not b!7889063) (not b!7889119) (not b!7889051) (not bm!732016) (not bm!732030) (not b!7889039) (not b!7889047) (not b!7889076) (not b!7889072) (not b!7889093) (not b!7889075) (not b!7889009) (not b!7889060) (not bm!732019) (not bm!732027) (not b!7889096) (not b!7889108) (not bm!732034) (not b!7889010) (not b!7888979) (not bm!732021) (not b!7889065) (not b!7889122) (not b!7889097) (not b!7889102) (not b!7889123) (not b!7889098) tp_is_empty!52821 (not b!7888940) (not b!7889106) (not bm!732035) (not b!7889003) (not bm!732041) (not b!7889069) (not b!7889134) (not b!7889049) (not b!7889055) (not b!7888891) (not bm!732018) (not b!7888829) (not b!7889071) (not bm!732022) (not b!7889031) (not b!7889087) (not bm!732006) (not d!2356760) (not b!7889130) (not bm!731998) (not bm!731999) (not d!2356750) (not b!7889091) (not b!7889057) (not b!7889133) (not bm!732020) (not b!7889083) (not b!7889095) (not b!7888942) (not bm!732037) (not bm!732000) (not b!7889036) (not b!7889040) (not b!7889024) (not b!7889046) (not b!7889081) (not bm!732025) (not b!7888822) (not b!7889105) (not b!7889053) (not b!7889109) (not b!7888884) (not b!7889043) (not b!7889033) (not b!7889084) (not b!7889048) (not d!2356752) (not bm!732029) (not b!7889088) (not b!7889129) (not b!7889077) (not bm!732032) (not b!7889104) (not b!7889007) (not b!7889079) (not bm!732039) (not b!7889056) (not bm!732047) (not b!7889038) (not b!7889124) (not b!7889089) (not bm!732005) (not b!7889068) (not b!7889067) (not b!7889044) (not b!7889073) (not b!7889114) (not b!7889034) (not bm!732002) (not bm!732031) (not b!7889085) (not b!7889035) (not b!7889052) (not b!7889080) (not bm!732040) (not b!7889100) (not bm!732045) (not bm!732004) (not b!7889110) (not b!7889029) (not b!7889061) (not b!7889026) (not b!7889092) (not b!7889005) (not b!7889112) (not b!7889101) (not b!7888944))
(check-sat)
(get-model)

(declare-fun b!7889289 () Bool)

(declare-fun res!3131451 () Bool)

(declare-fun e!4657705 () Bool)

(assert (=> b!7889289 (=> (not res!3131451) (not e!4657705))))

(declare-fun lt!2681508 () Int)

(declare-fun call!732080 () Int)

(assert (=> b!7889289 (= res!3131451 (> lt!2681508 call!732080))))

(declare-fun e!4657701 () Bool)

(assert (=> b!7889289 (= e!4657701 e!4657705)))

(declare-fun b!7889290 () Bool)

(declare-fun e!4657700 () Int)

(declare-fun e!4657709 () Int)

(assert (=> b!7889290 (= e!4657700 e!4657709)))

(declare-fun c!1448379 () Bool)

(assert (=> b!7889290 (= c!1448379 ((_ is Star!21211) (ite c!1448281 (regOne!42935 (ite c!1448270 (regTwo!42935 r!14100) (regOne!42934 r!14100))) (regOne!42934 (ite c!1448270 (regTwo!42935 r!14100) (regOne!42934 r!14100))))))))

(declare-fun b!7889291 () Bool)

(declare-fun e!4657708 () Bool)

(declare-fun e!4657704 () Bool)

(assert (=> b!7889291 (= e!4657708 e!4657704)))

(declare-fun res!3131450 () Bool)

(assert (=> b!7889291 (= res!3131450 (> lt!2681508 call!732080))))

(assert (=> b!7889291 (=> (not res!3131450) (not e!4657704))))

(declare-fun b!7889292 () Bool)

(declare-fun call!732079 () Int)

(assert (=> b!7889292 (= e!4657704 (> lt!2681508 call!732079))))

(declare-fun c!1448382 () Bool)

(declare-fun c!1448377 () Bool)

(declare-fun bm!732074 () Bool)

(assert (=> bm!732074 (= call!732079 (regexDepth!515 (ite c!1448377 (regTwo!42935 (ite c!1448281 (regOne!42935 (ite c!1448270 (regTwo!42935 r!14100) (regOne!42934 r!14100))) (regOne!42934 (ite c!1448270 (regTwo!42935 r!14100) (regOne!42934 r!14100))))) (ite c!1448382 (regTwo!42934 (ite c!1448281 (regOne!42935 (ite c!1448270 (regTwo!42935 r!14100) (regOne!42934 r!14100))) (regOne!42934 (ite c!1448270 (regTwo!42935 r!14100) (regOne!42934 r!14100))))) (reg!21540 (ite c!1448281 (regOne!42935 (ite c!1448270 (regTwo!42935 r!14100) (regOne!42934 r!14100))) (regOne!42934 (ite c!1448270 (regTwo!42935 r!14100) (regOne!42934 r!14100)))))))))))

(declare-fun bm!732075 () Bool)

(declare-fun call!732083 () Int)

(declare-fun call!732081 () Int)

(assert (=> bm!732075 (= call!732083 call!732081)))

(declare-fun b!7889293 () Bool)

(declare-fun e!4657707 () Bool)

(assert (=> b!7889293 (= e!4657707 (= lt!2681508 1))))

(declare-fun c!1448381 () Bool)

(declare-fun bm!732076 () Bool)

(declare-fun call!732082 () Int)

(declare-fun call!732084 () Int)

(assert (=> bm!732076 (= call!732084 (maxBigInt!0 (ite c!1448381 call!732083 call!732082) (ite c!1448381 call!732082 call!732083)))))

(declare-fun b!7889294 () Bool)

(declare-fun call!732085 () Int)

(assert (=> b!7889294 (= e!4657707 (> lt!2681508 call!732085))))

(declare-fun b!7889295 () Bool)

(declare-fun e!4657703 () Int)

(declare-fun e!4657706 () Int)

(assert (=> b!7889295 (= e!4657703 e!4657706)))

(declare-fun c!1448380 () Bool)

(assert (=> b!7889295 (= c!1448380 ((_ is Concat!30056) (ite c!1448281 (regOne!42935 (ite c!1448270 (regTwo!42935 r!14100) (regOne!42934 r!14100))) (regOne!42934 (ite c!1448270 (regTwo!42935 r!14100) (regOne!42934 r!14100))))))))

(declare-fun bm!732077 () Bool)

(assert (=> bm!732077 (= call!732085 call!732079)))

(declare-fun b!7889296 () Bool)

(assert (=> b!7889296 (= c!1448381 ((_ is Union!21211) (ite c!1448281 (regOne!42935 (ite c!1448270 (regTwo!42935 r!14100) (regOne!42934 r!14100))) (regOne!42934 (ite c!1448270 (regTwo!42935 r!14100) (regOne!42934 r!14100))))))))

(assert (=> b!7889296 (= e!4657709 e!4657703)))

(declare-fun b!7889297 () Bool)

(assert (=> b!7889297 (= e!4657700 1)))

(declare-fun bm!732078 () Bool)

(assert (=> bm!732078 (= call!732080 (regexDepth!515 (ite c!1448377 (regOne!42935 (ite c!1448281 (regOne!42935 (ite c!1448270 (regTwo!42935 r!14100) (regOne!42934 r!14100))) (regOne!42934 (ite c!1448270 (regTwo!42935 r!14100) (regOne!42934 r!14100))))) (regOne!42934 (ite c!1448281 (regOne!42935 (ite c!1448270 (regTwo!42935 r!14100) (regOne!42934 r!14100))) (regOne!42934 (ite c!1448270 (regTwo!42935 r!14100) (regOne!42934 r!14100))))))))))

(declare-fun bm!732079 () Bool)

(assert (=> bm!732079 (= call!732081 (regexDepth!515 (ite c!1448379 (reg!21540 (ite c!1448281 (regOne!42935 (ite c!1448270 (regTwo!42935 r!14100) (regOne!42934 r!14100))) (regOne!42934 (ite c!1448270 (regTwo!42935 r!14100) (regOne!42934 r!14100))))) (ite c!1448381 (regOne!42935 (ite c!1448281 (regOne!42935 (ite c!1448270 (regTwo!42935 r!14100) (regOne!42934 r!14100))) (regOne!42934 (ite c!1448270 (regTwo!42935 r!14100) (regOne!42934 r!14100))))) (regTwo!42934 (ite c!1448281 (regOne!42935 (ite c!1448270 (regTwo!42935 r!14100) (regOne!42934 r!14100))) (regOne!42934 (ite c!1448270 (regTwo!42935 r!14100) (regOne!42934 r!14100)))))))))))

(declare-fun d!2356784 () Bool)

(declare-fun e!4657702 () Bool)

(assert (=> d!2356784 e!4657702))

(declare-fun res!3131449 () Bool)

(assert (=> d!2356784 (=> (not res!3131449) (not e!4657702))))

(assert (=> d!2356784 (= res!3131449 (> lt!2681508 0))))

(assert (=> d!2356784 (= lt!2681508 e!4657700)))

(declare-fun c!1448378 () Bool)

(assert (=> d!2356784 (= c!1448378 ((_ is ElementMatch!21211) (ite c!1448281 (regOne!42935 (ite c!1448270 (regTwo!42935 r!14100) (regOne!42934 r!14100))) (regOne!42934 (ite c!1448270 (regTwo!42935 r!14100) (regOne!42934 r!14100))))))))

(assert (=> d!2356784 (= (regexDepth!515 (ite c!1448281 (regOne!42935 (ite c!1448270 (regTwo!42935 r!14100) (regOne!42934 r!14100))) (regOne!42934 (ite c!1448270 (regTwo!42935 r!14100) (regOne!42934 r!14100))))) lt!2681508)))

(declare-fun b!7889298 () Bool)

(assert (=> b!7889298 (= e!4657706 (+ 1 call!732084))))

(declare-fun bm!732080 () Bool)

(assert (=> bm!732080 (= call!732082 (regexDepth!515 (ite c!1448381 (regTwo!42935 (ite c!1448281 (regOne!42935 (ite c!1448270 (regTwo!42935 r!14100) (regOne!42934 r!14100))) (regOne!42934 (ite c!1448270 (regTwo!42935 r!14100) (regOne!42934 r!14100))))) (regOne!42934 (ite c!1448281 (regOne!42935 (ite c!1448270 (regTwo!42935 r!14100) (regOne!42934 r!14100))) (regOne!42934 (ite c!1448270 (regTwo!42935 r!14100) (regOne!42934 r!14100))))))))))

(declare-fun b!7889299 () Bool)

(assert (=> b!7889299 (= e!4657705 (> lt!2681508 call!732085))))

(declare-fun b!7889300 () Bool)

(assert (=> b!7889300 (= e!4657703 (+ 1 call!732084))))

(declare-fun b!7889301 () Bool)

(assert (=> b!7889301 (= e!4657702 e!4657708)))

(assert (=> b!7889301 (= c!1448377 ((_ is Union!21211) (ite c!1448281 (regOne!42935 (ite c!1448270 (regTwo!42935 r!14100) (regOne!42934 r!14100))) (regOne!42934 (ite c!1448270 (regTwo!42935 r!14100) (regOne!42934 r!14100))))))))

(declare-fun b!7889302 () Bool)

(assert (=> b!7889302 (= e!4657709 (+ 1 call!732081))))

(declare-fun b!7889303 () Bool)

(assert (=> b!7889303 (= e!4657706 1)))

(declare-fun b!7889304 () Bool)

(declare-fun c!1448376 () Bool)

(assert (=> b!7889304 (= c!1448376 ((_ is Star!21211) (ite c!1448281 (regOne!42935 (ite c!1448270 (regTwo!42935 r!14100) (regOne!42934 r!14100))) (regOne!42934 (ite c!1448270 (regTwo!42935 r!14100) (regOne!42934 r!14100))))))))

(assert (=> b!7889304 (= e!4657701 e!4657707)))

(declare-fun b!7889305 () Bool)

(assert (=> b!7889305 (= e!4657708 e!4657701)))

(assert (=> b!7889305 (= c!1448382 ((_ is Concat!30056) (ite c!1448281 (regOne!42935 (ite c!1448270 (regTwo!42935 r!14100) (regOne!42934 r!14100))) (regOne!42934 (ite c!1448270 (regTwo!42935 r!14100) (regOne!42934 r!14100))))))))

(assert (= (and d!2356784 c!1448378) b!7889297))

(assert (= (and d!2356784 (not c!1448378)) b!7889290))

(assert (= (and b!7889290 c!1448379) b!7889302))

(assert (= (and b!7889290 (not c!1448379)) b!7889296))

(assert (= (and b!7889296 c!1448381) b!7889300))

(assert (= (and b!7889296 (not c!1448381)) b!7889295))

(assert (= (and b!7889295 c!1448380) b!7889298))

(assert (= (and b!7889295 (not c!1448380)) b!7889303))

(assert (= (or b!7889300 b!7889298) bm!732075))

(assert (= (or b!7889300 b!7889298) bm!732080))

(assert (= (or b!7889300 b!7889298) bm!732076))

(assert (= (or b!7889302 bm!732075) bm!732079))

(assert (= (and d!2356784 res!3131449) b!7889301))

(assert (= (and b!7889301 c!1448377) b!7889291))

(assert (= (and b!7889301 (not c!1448377)) b!7889305))

(assert (= (and b!7889291 res!3131450) b!7889292))

(assert (= (and b!7889305 c!1448382) b!7889289))

(assert (= (and b!7889305 (not c!1448382)) b!7889304))

(assert (= (and b!7889289 res!3131451) b!7889299))

(assert (= (and b!7889304 c!1448376) b!7889294))

(assert (= (and b!7889304 (not c!1448376)) b!7889293))

(assert (= (or b!7889299 b!7889294) bm!732077))

(assert (= (or b!7889291 b!7889289) bm!732078))

(assert (= (or b!7889292 bm!732077) bm!732074))

(declare-fun m!8270176 () Bool)

(assert (=> bm!732080 m!8270176))

(declare-fun m!8270178 () Bool)

(assert (=> bm!732074 m!8270178))

(declare-fun m!8270180 () Bool)

(assert (=> bm!732079 m!8270180))

(declare-fun m!8270182 () Bool)

(assert (=> bm!732076 m!8270182))

(declare-fun m!8270184 () Bool)

(assert (=> bm!732078 m!8270184))

(assert (=> bm!732004 d!2356784))

(assert (=> bm!732021 d!2356678))

(declare-fun bs!1967483 () Bool)

(declare-fun b!7889315 () Bool)

(assert (= bs!1967483 (and b!7889315 b!7888892)))

(declare-fun lambda!472174 () Int)

(assert (=> bs!1967483 (= (and (= (reg!21540 (regTwo!42935 (regOne!42935 (reg!21540 r!14100)))) (reg!21540 (regOne!42935 (reg!21540 r!14100)))) (= (regTwo!42935 (regOne!42935 (reg!21540 r!14100))) (regOne!42935 (reg!21540 r!14100)))) (= lambda!472174 lambda!472168))))

(declare-fun bs!1967484 () Bool)

(assert (= bs!1967484 (and b!7889315 b!7888707)))

(assert (=> bs!1967484 (= (and (= (reg!21540 (regTwo!42935 (regOne!42935 (reg!21540 r!14100)))) (reg!21540 (reg!21540 r!14100))) (= (regTwo!42935 (regOne!42935 (reg!21540 r!14100))) (reg!21540 r!14100))) (= lambda!472174 lambda!472164))))

(declare-fun bs!1967485 () Bool)

(assert (= bs!1967485 (and b!7889315 b!7888830)))

(assert (=> bs!1967485 (= (and (= (reg!21540 (regTwo!42935 (regOne!42935 (reg!21540 r!14100)))) (reg!21540 (regTwo!42935 (reg!21540 r!14100)))) (= (regTwo!42935 (regOne!42935 (reg!21540 r!14100))) (regTwo!42935 (reg!21540 r!14100)))) (= lambda!472174 lambda!472166))))

(declare-fun bs!1967486 () Bool)

(assert (= bs!1967486 (and b!7889315 b!7888888)))

(assert (=> bs!1967486 (not (= lambda!472174 lambda!472169))))

(declare-fun bs!1967487 () Bool)

(assert (= bs!1967487 (and b!7889315 b!7888826)))

(assert (=> bs!1967487 (not (= lambda!472174 lambda!472167))))

(declare-fun bs!1967488 () Bool)

(assert (= bs!1967488 (and b!7889315 b!7888703)))

(assert (=> bs!1967488 (not (= lambda!472174 lambda!472165))))

(assert (=> b!7889315 true))

(assert (=> b!7889315 true))

(declare-fun bs!1967489 () Bool)

(declare-fun b!7889311 () Bool)

(assert (= bs!1967489 (and b!7889311 b!7888892)))

(declare-fun lambda!472175 () Int)

(assert (=> bs!1967489 (not (= lambda!472175 lambda!472168))))

(declare-fun bs!1967490 () Bool)

(assert (= bs!1967490 (and b!7889311 b!7888707)))

(assert (=> bs!1967490 (not (= lambda!472175 lambda!472164))))

(declare-fun bs!1967491 () Bool)

(assert (= bs!1967491 (and b!7889311 b!7888830)))

(assert (=> bs!1967491 (not (= lambda!472175 lambda!472166))))

(declare-fun bs!1967492 () Bool)

(assert (= bs!1967492 (and b!7889311 b!7888888)))

(assert (=> bs!1967492 (= (and (= (regOne!42934 (regTwo!42935 (regOne!42935 (reg!21540 r!14100)))) (regOne!42934 (regOne!42935 (reg!21540 r!14100)))) (= (regTwo!42934 (regTwo!42935 (regOne!42935 (reg!21540 r!14100)))) (regTwo!42934 (regOne!42935 (reg!21540 r!14100))))) (= lambda!472175 lambda!472169))))

(declare-fun bs!1967493 () Bool)

(assert (= bs!1967493 (and b!7889311 b!7888826)))

(assert (=> bs!1967493 (= (and (= (regOne!42934 (regTwo!42935 (regOne!42935 (reg!21540 r!14100)))) (regOne!42934 (regTwo!42935 (reg!21540 r!14100)))) (= (regTwo!42934 (regTwo!42935 (regOne!42935 (reg!21540 r!14100)))) (regTwo!42934 (regTwo!42935 (reg!21540 r!14100))))) (= lambda!472175 lambda!472167))))

(declare-fun bs!1967494 () Bool)

(assert (= bs!1967494 (and b!7889311 b!7888703)))

(assert (=> bs!1967494 (= (and (= (regOne!42934 (regTwo!42935 (regOne!42935 (reg!21540 r!14100)))) (regOne!42934 (reg!21540 r!14100))) (= (regTwo!42934 (regTwo!42935 (regOne!42935 (reg!21540 r!14100)))) (regTwo!42934 (reg!21540 r!14100)))) (= lambda!472175 lambda!472165))))

(declare-fun bs!1967495 () Bool)

(assert (= bs!1967495 (and b!7889311 b!7889315)))

(assert (=> bs!1967495 (not (= lambda!472175 lambda!472174))))

(assert (=> b!7889311 true))

(assert (=> b!7889311 true))

(declare-fun b!7889306 () Bool)

(declare-fun e!4657712 () Bool)

(assert (=> b!7889306 (= e!4657712 (= (_1!38333 cut!2) (Cons!73944 (c!1448183 (regTwo!42935 (regOne!42935 (reg!21540 r!14100)))) Nil!73944)))))

(declare-fun b!7889307 () Bool)

(declare-fun e!4657715 () Bool)

(assert (=> b!7889307 (= e!4657715 (matchRSpec!4674 (regTwo!42935 (regTwo!42935 (regOne!42935 (reg!21540 r!14100)))) (_1!38333 cut!2)))))

(declare-fun bm!732081 () Bool)

(declare-fun call!732086 () Bool)

(assert (=> bm!732081 (= call!732086 (isEmpty!42429 (_1!38333 cut!2)))))

(declare-fun call!732087 () Bool)

(declare-fun c!1448384 () Bool)

(declare-fun bm!732082 () Bool)

(assert (=> bm!732082 (= call!732087 (Exists!4764 (ite c!1448384 lambda!472174 lambda!472175)))))

(declare-fun b!7889308 () Bool)

(declare-fun e!4657716 () Bool)

(declare-fun e!4657714 () Bool)

(assert (=> b!7889308 (= e!4657716 e!4657714)))

(declare-fun res!3131453 () Bool)

(assert (=> b!7889308 (= res!3131453 (not ((_ is EmptyLang!21211) (regTwo!42935 (regOne!42935 (reg!21540 r!14100))))))))

(assert (=> b!7889308 (=> (not res!3131453) (not e!4657714))))

(declare-fun b!7889309 () Bool)

(declare-fun e!4657713 () Bool)

(declare-fun e!4657710 () Bool)

(assert (=> b!7889309 (= e!4657713 e!4657710)))

(assert (=> b!7889309 (= c!1448384 ((_ is Star!21211) (regTwo!42935 (regOne!42935 (reg!21540 r!14100)))))))

(declare-fun d!2356786 () Bool)

(declare-fun c!1448385 () Bool)

(assert (=> d!2356786 (= c!1448385 ((_ is EmptyExpr!21211) (regTwo!42935 (regOne!42935 (reg!21540 r!14100)))))))

(assert (=> d!2356786 (= (matchRSpec!4674 (regTwo!42935 (regOne!42935 (reg!21540 r!14100))) (_1!38333 cut!2)) e!4657716)))

(declare-fun b!7889310 () Bool)

(declare-fun res!3131452 () Bool)

(declare-fun e!4657711 () Bool)

(assert (=> b!7889310 (=> res!3131452 e!4657711)))

(assert (=> b!7889310 (= res!3131452 call!732086)))

(assert (=> b!7889310 (= e!4657710 e!4657711)))

(assert (=> b!7889311 (= e!4657710 call!732087)))

(declare-fun b!7889312 () Bool)

(assert (=> b!7889312 (= e!4657716 call!732086)))

(declare-fun b!7889313 () Bool)

(declare-fun c!1448383 () Bool)

(assert (=> b!7889313 (= c!1448383 ((_ is Union!21211) (regTwo!42935 (regOne!42935 (reg!21540 r!14100)))))))

(assert (=> b!7889313 (= e!4657712 e!4657713)))

(declare-fun b!7889314 () Bool)

(assert (=> b!7889314 (= e!4657713 e!4657715)))

(declare-fun res!3131454 () Bool)

(assert (=> b!7889314 (= res!3131454 (matchRSpec!4674 (regOne!42935 (regTwo!42935 (regOne!42935 (reg!21540 r!14100)))) (_1!38333 cut!2)))))

(assert (=> b!7889314 (=> res!3131454 e!4657715)))

(assert (=> b!7889315 (= e!4657711 call!732087)))

(declare-fun b!7889316 () Bool)

(declare-fun c!1448386 () Bool)

(assert (=> b!7889316 (= c!1448386 ((_ is ElementMatch!21211) (regTwo!42935 (regOne!42935 (reg!21540 r!14100)))))))

(assert (=> b!7889316 (= e!4657714 e!4657712)))

(assert (= (and d!2356786 c!1448385) b!7889312))

(assert (= (and d!2356786 (not c!1448385)) b!7889308))

(assert (= (and b!7889308 res!3131453) b!7889316))

(assert (= (and b!7889316 c!1448386) b!7889306))

(assert (= (and b!7889316 (not c!1448386)) b!7889313))

(assert (= (and b!7889313 c!1448383) b!7889314))

(assert (= (and b!7889313 (not c!1448383)) b!7889309))

(assert (= (and b!7889314 (not res!3131454)) b!7889307))

(assert (= (and b!7889309 c!1448384) b!7889310))

(assert (= (and b!7889309 (not c!1448384)) b!7889311))

(assert (= (and b!7889310 (not res!3131452)) b!7889315))

(assert (= (or b!7889315 b!7889311) bm!732082))

(assert (= (or b!7889312 b!7889310) bm!732081))

(declare-fun m!8270186 () Bool)

(assert (=> b!7889307 m!8270186))

(assert (=> bm!732081 m!8269898))

(declare-fun m!8270188 () Bool)

(assert (=> bm!732082 m!8270188))

(declare-fun m!8270190 () Bool)

(assert (=> b!7889314 m!8270190))

(assert (=> b!7888884 d!2356786))

(declare-fun b!7889317 () Bool)

(declare-fun res!3131457 () Bool)

(declare-fun e!4657722 () Bool)

(assert (=> b!7889317 (=> (not res!3131457) (not e!4657722))))

(declare-fun lt!2681509 () Int)

(declare-fun call!732089 () Int)

(assert (=> b!7889317 (= res!3131457 (> lt!2681509 call!732089))))

(declare-fun e!4657718 () Bool)

(assert (=> b!7889317 (= e!4657718 e!4657722)))

(declare-fun b!7889318 () Bool)

(declare-fun e!4657717 () Int)

(declare-fun e!4657726 () Int)

(assert (=> b!7889318 (= e!4657717 e!4657726)))

(declare-fun c!1448390 () Bool)

(assert (=> b!7889318 (= c!1448390 ((_ is Star!21211) (ite c!1448328 (reg!21540 (ite c!1448266 (regOne!42935 r!14100) (regOne!42934 r!14100))) (ite c!1448330 (regOne!42935 (ite c!1448266 (regOne!42935 r!14100) (regOne!42934 r!14100))) (regTwo!42934 (ite c!1448266 (regOne!42935 r!14100) (regOne!42934 r!14100)))))))))

(declare-fun b!7889319 () Bool)

(declare-fun e!4657725 () Bool)

(declare-fun e!4657721 () Bool)

(assert (=> b!7889319 (= e!4657725 e!4657721)))

(declare-fun res!3131456 () Bool)

(assert (=> b!7889319 (= res!3131456 (> lt!2681509 call!732089))))

(assert (=> b!7889319 (=> (not res!3131456) (not e!4657721))))

(declare-fun b!7889320 () Bool)

(declare-fun call!732088 () Int)

(assert (=> b!7889320 (= e!4657721 (> lt!2681509 call!732088))))

(declare-fun c!1448393 () Bool)

(declare-fun bm!732083 () Bool)

(declare-fun c!1448388 () Bool)

(assert (=> bm!732083 (= call!732088 (regexDepth!515 (ite c!1448388 (regTwo!42935 (ite c!1448328 (reg!21540 (ite c!1448266 (regOne!42935 r!14100) (regOne!42934 r!14100))) (ite c!1448330 (regOne!42935 (ite c!1448266 (regOne!42935 r!14100) (regOne!42934 r!14100))) (regTwo!42934 (ite c!1448266 (regOne!42935 r!14100) (regOne!42934 r!14100)))))) (ite c!1448393 (regTwo!42934 (ite c!1448328 (reg!21540 (ite c!1448266 (regOne!42935 r!14100) (regOne!42934 r!14100))) (ite c!1448330 (regOne!42935 (ite c!1448266 (regOne!42935 r!14100) (regOne!42934 r!14100))) (regTwo!42934 (ite c!1448266 (regOne!42935 r!14100) (regOne!42934 r!14100)))))) (reg!21540 (ite c!1448328 (reg!21540 (ite c!1448266 (regOne!42935 r!14100) (regOne!42934 r!14100))) (ite c!1448330 (regOne!42935 (ite c!1448266 (regOne!42935 r!14100) (regOne!42934 r!14100))) (regTwo!42934 (ite c!1448266 (regOne!42935 r!14100) (regOne!42934 r!14100))))))))))))

(declare-fun bm!732084 () Bool)

(declare-fun call!732092 () Int)

(declare-fun call!732090 () Int)

(assert (=> bm!732084 (= call!732092 call!732090)))

(declare-fun b!7889321 () Bool)

(declare-fun e!4657724 () Bool)

(assert (=> b!7889321 (= e!4657724 (= lt!2681509 1))))

(declare-fun call!732093 () Int)

(declare-fun c!1448392 () Bool)

(declare-fun call!732091 () Int)

(declare-fun bm!732085 () Bool)

(assert (=> bm!732085 (= call!732093 (maxBigInt!0 (ite c!1448392 call!732092 call!732091) (ite c!1448392 call!732091 call!732092)))))

(declare-fun b!7889322 () Bool)

(declare-fun call!732094 () Int)

(assert (=> b!7889322 (= e!4657724 (> lt!2681509 call!732094))))

(declare-fun b!7889323 () Bool)

(declare-fun e!4657720 () Int)

(declare-fun e!4657723 () Int)

(assert (=> b!7889323 (= e!4657720 e!4657723)))

(declare-fun c!1448391 () Bool)

(assert (=> b!7889323 (= c!1448391 ((_ is Concat!30056) (ite c!1448328 (reg!21540 (ite c!1448266 (regOne!42935 r!14100) (regOne!42934 r!14100))) (ite c!1448330 (regOne!42935 (ite c!1448266 (regOne!42935 r!14100) (regOne!42934 r!14100))) (regTwo!42934 (ite c!1448266 (regOne!42935 r!14100) (regOne!42934 r!14100)))))))))

(declare-fun bm!732086 () Bool)

(assert (=> bm!732086 (= call!732094 call!732088)))

(declare-fun b!7889324 () Bool)

(assert (=> b!7889324 (= c!1448392 ((_ is Union!21211) (ite c!1448328 (reg!21540 (ite c!1448266 (regOne!42935 r!14100) (regOne!42934 r!14100))) (ite c!1448330 (regOne!42935 (ite c!1448266 (regOne!42935 r!14100) (regOne!42934 r!14100))) (regTwo!42934 (ite c!1448266 (regOne!42935 r!14100) (regOne!42934 r!14100)))))))))

(assert (=> b!7889324 (= e!4657726 e!4657720)))

(declare-fun b!7889325 () Bool)

(assert (=> b!7889325 (= e!4657717 1)))

(declare-fun bm!732087 () Bool)

(assert (=> bm!732087 (= call!732089 (regexDepth!515 (ite c!1448388 (regOne!42935 (ite c!1448328 (reg!21540 (ite c!1448266 (regOne!42935 r!14100) (regOne!42934 r!14100))) (ite c!1448330 (regOne!42935 (ite c!1448266 (regOne!42935 r!14100) (regOne!42934 r!14100))) (regTwo!42934 (ite c!1448266 (regOne!42935 r!14100) (regOne!42934 r!14100)))))) (regOne!42934 (ite c!1448328 (reg!21540 (ite c!1448266 (regOne!42935 r!14100) (regOne!42934 r!14100))) (ite c!1448330 (regOne!42935 (ite c!1448266 (regOne!42935 r!14100) (regOne!42934 r!14100))) (regTwo!42934 (ite c!1448266 (regOne!42935 r!14100) (regOne!42934 r!14100)))))))))))

(declare-fun bm!732088 () Bool)

(assert (=> bm!732088 (= call!732090 (regexDepth!515 (ite c!1448390 (reg!21540 (ite c!1448328 (reg!21540 (ite c!1448266 (regOne!42935 r!14100) (regOne!42934 r!14100))) (ite c!1448330 (regOne!42935 (ite c!1448266 (regOne!42935 r!14100) (regOne!42934 r!14100))) (regTwo!42934 (ite c!1448266 (regOne!42935 r!14100) (regOne!42934 r!14100)))))) (ite c!1448392 (regOne!42935 (ite c!1448328 (reg!21540 (ite c!1448266 (regOne!42935 r!14100) (regOne!42934 r!14100))) (ite c!1448330 (regOne!42935 (ite c!1448266 (regOne!42935 r!14100) (regOne!42934 r!14100))) (regTwo!42934 (ite c!1448266 (regOne!42935 r!14100) (regOne!42934 r!14100)))))) (regTwo!42934 (ite c!1448328 (reg!21540 (ite c!1448266 (regOne!42935 r!14100) (regOne!42934 r!14100))) (ite c!1448330 (regOne!42935 (ite c!1448266 (regOne!42935 r!14100) (regOne!42934 r!14100))) (regTwo!42934 (ite c!1448266 (regOne!42935 r!14100) (regOne!42934 r!14100))))))))))))

(declare-fun d!2356788 () Bool)

(declare-fun e!4657719 () Bool)

(assert (=> d!2356788 e!4657719))

(declare-fun res!3131455 () Bool)

(assert (=> d!2356788 (=> (not res!3131455) (not e!4657719))))

(assert (=> d!2356788 (= res!3131455 (> lt!2681509 0))))

(assert (=> d!2356788 (= lt!2681509 e!4657717)))

(declare-fun c!1448389 () Bool)

(assert (=> d!2356788 (= c!1448389 ((_ is ElementMatch!21211) (ite c!1448328 (reg!21540 (ite c!1448266 (regOne!42935 r!14100) (regOne!42934 r!14100))) (ite c!1448330 (regOne!42935 (ite c!1448266 (regOne!42935 r!14100) (regOne!42934 r!14100))) (regTwo!42934 (ite c!1448266 (regOne!42935 r!14100) (regOne!42934 r!14100)))))))))

(assert (=> d!2356788 (= (regexDepth!515 (ite c!1448328 (reg!21540 (ite c!1448266 (regOne!42935 r!14100) (regOne!42934 r!14100))) (ite c!1448330 (regOne!42935 (ite c!1448266 (regOne!42935 r!14100) (regOne!42934 r!14100))) (regTwo!42934 (ite c!1448266 (regOne!42935 r!14100) (regOne!42934 r!14100)))))) lt!2681509)))

(declare-fun b!7889326 () Bool)

(assert (=> b!7889326 (= e!4657723 (+ 1 call!732093))))

(declare-fun bm!732089 () Bool)

(assert (=> bm!732089 (= call!732091 (regexDepth!515 (ite c!1448392 (regTwo!42935 (ite c!1448328 (reg!21540 (ite c!1448266 (regOne!42935 r!14100) (regOne!42934 r!14100))) (ite c!1448330 (regOne!42935 (ite c!1448266 (regOne!42935 r!14100) (regOne!42934 r!14100))) (regTwo!42934 (ite c!1448266 (regOne!42935 r!14100) (regOne!42934 r!14100)))))) (regOne!42934 (ite c!1448328 (reg!21540 (ite c!1448266 (regOne!42935 r!14100) (regOne!42934 r!14100))) (ite c!1448330 (regOne!42935 (ite c!1448266 (regOne!42935 r!14100) (regOne!42934 r!14100))) (regTwo!42934 (ite c!1448266 (regOne!42935 r!14100) (regOne!42934 r!14100)))))))))))

(declare-fun b!7889327 () Bool)

(assert (=> b!7889327 (= e!4657722 (> lt!2681509 call!732094))))

(declare-fun b!7889328 () Bool)

(assert (=> b!7889328 (= e!4657720 (+ 1 call!732093))))

(declare-fun b!7889329 () Bool)

(assert (=> b!7889329 (= e!4657719 e!4657725)))

(assert (=> b!7889329 (= c!1448388 ((_ is Union!21211) (ite c!1448328 (reg!21540 (ite c!1448266 (regOne!42935 r!14100) (regOne!42934 r!14100))) (ite c!1448330 (regOne!42935 (ite c!1448266 (regOne!42935 r!14100) (regOne!42934 r!14100))) (regTwo!42934 (ite c!1448266 (regOne!42935 r!14100) (regOne!42934 r!14100)))))))))

(declare-fun b!7889330 () Bool)

(assert (=> b!7889330 (= e!4657726 (+ 1 call!732090))))

(declare-fun b!7889331 () Bool)

(assert (=> b!7889331 (= e!4657723 1)))

(declare-fun c!1448387 () Bool)

(declare-fun b!7889332 () Bool)

(assert (=> b!7889332 (= c!1448387 ((_ is Star!21211) (ite c!1448328 (reg!21540 (ite c!1448266 (regOne!42935 r!14100) (regOne!42934 r!14100))) (ite c!1448330 (regOne!42935 (ite c!1448266 (regOne!42935 r!14100) (regOne!42934 r!14100))) (regTwo!42934 (ite c!1448266 (regOne!42935 r!14100) (regOne!42934 r!14100)))))))))

(assert (=> b!7889332 (= e!4657718 e!4657724)))

(declare-fun b!7889333 () Bool)

(assert (=> b!7889333 (= e!4657725 e!4657718)))

(assert (=> b!7889333 (= c!1448393 ((_ is Concat!30056) (ite c!1448328 (reg!21540 (ite c!1448266 (regOne!42935 r!14100) (regOne!42934 r!14100))) (ite c!1448330 (regOne!42935 (ite c!1448266 (regOne!42935 r!14100) (regOne!42934 r!14100))) (regTwo!42934 (ite c!1448266 (regOne!42935 r!14100) (regOne!42934 r!14100)))))))))

(assert (= (and d!2356788 c!1448389) b!7889325))

(assert (= (and d!2356788 (not c!1448389)) b!7889318))

(assert (= (and b!7889318 c!1448390) b!7889330))

(assert (= (and b!7889318 (not c!1448390)) b!7889324))

(assert (= (and b!7889324 c!1448392) b!7889328))

(assert (= (and b!7889324 (not c!1448392)) b!7889323))

(assert (= (and b!7889323 c!1448391) b!7889326))

(assert (= (and b!7889323 (not c!1448391)) b!7889331))

(assert (= (or b!7889328 b!7889326) bm!732084))

(assert (= (or b!7889328 b!7889326) bm!732089))

(assert (= (or b!7889328 b!7889326) bm!732085))

(assert (= (or b!7889330 bm!732084) bm!732088))

(assert (= (and d!2356788 res!3131455) b!7889329))

(assert (= (and b!7889329 c!1448388) b!7889319))

(assert (= (and b!7889329 (not c!1448388)) b!7889333))

(assert (= (and b!7889319 res!3131456) b!7889320))

(assert (= (and b!7889333 c!1448393) b!7889317))

(assert (= (and b!7889333 (not c!1448393)) b!7889332))

(assert (= (and b!7889317 res!3131457) b!7889327))

(assert (= (and b!7889332 c!1448387) b!7889322))

(assert (= (and b!7889332 (not c!1448387)) b!7889321))

(assert (= (or b!7889327 b!7889322) bm!732086))

(assert (= (or b!7889319 b!7889317) bm!732087))

(assert (= (or b!7889320 bm!732086) bm!732083))

(declare-fun m!8270192 () Bool)

(assert (=> bm!732089 m!8270192))

(declare-fun m!8270194 () Bool)

(assert (=> bm!732083 m!8270194))

(declare-fun m!8270196 () Bool)

(assert (=> bm!732088 m!8270196))

(declare-fun m!8270198 () Bool)

(assert (=> bm!732085 m!8270198))

(declare-fun m!8270200 () Bool)

(assert (=> bm!732087 m!8270200))

(assert (=> bm!732040 d!2356788))

(declare-fun d!2356790 () Bool)

(declare-fun lt!2681510 () Int)

(assert (=> d!2356790 (>= lt!2681510 0)))

(declare-fun e!4657727 () Int)

(assert (=> d!2356790 (= lt!2681510 e!4657727)))

(declare-fun c!1448394 () Bool)

(assert (=> d!2356790 (= c!1448394 ((_ is Nil!73944) (t!388803 lt!2681489)))))

(assert (=> d!2356790 (= (size!42852 (t!388803 lt!2681489)) lt!2681510)))

(declare-fun b!7889334 () Bool)

(assert (=> b!7889334 (= e!4657727 0)))

(declare-fun b!7889335 () Bool)

(assert (=> b!7889335 (= e!4657727 (+ 1 (size!42852 (t!388803 (t!388803 lt!2681489)))))))

(assert (= (and d!2356790 c!1448394) b!7889334))

(assert (= (and d!2356790 (not c!1448394)) b!7889335))

(declare-fun m!8270202 () Bool)

(assert (=> b!7889335 m!8270202))

(assert (=> b!7888942 d!2356790))

(declare-fun b!7889336 () Bool)

(declare-fun res!3131460 () Bool)

(declare-fun e!4657733 () Bool)

(assert (=> b!7889336 (=> (not res!3131460) (not e!4657733))))

(declare-fun lt!2681511 () Int)

(declare-fun call!732096 () Int)

(assert (=> b!7889336 (= res!3131460 (> lt!2681511 call!732096))))

(declare-fun e!4657729 () Bool)

(assert (=> b!7889336 (= e!4657729 e!4657733)))

(declare-fun b!7889337 () Bool)

(declare-fun e!4657728 () Int)

(declare-fun e!4657737 () Int)

(assert (=> b!7889337 (= e!4657728 e!4657737)))

(declare-fun c!1448398 () Bool)

(assert (=> b!7889337 (= c!1448398 ((_ is Star!21211) (ite c!1448319 (regTwo!42935 (ite c!1448268 (reg!21540 r!14100) (ite c!1448270 (regOne!42935 r!14100) (regTwo!42934 r!14100)))) (regOne!42934 (ite c!1448268 (reg!21540 r!14100) (ite c!1448270 (regOne!42935 r!14100) (regTwo!42934 r!14100)))))))))

(declare-fun b!7889338 () Bool)

(declare-fun e!4657736 () Bool)

(declare-fun e!4657732 () Bool)

(assert (=> b!7889338 (= e!4657736 e!4657732)))

(declare-fun res!3131459 () Bool)

(assert (=> b!7889338 (= res!3131459 (> lt!2681511 call!732096))))

(assert (=> b!7889338 (=> (not res!3131459) (not e!4657732))))

(declare-fun b!7889339 () Bool)

(declare-fun call!732095 () Int)

(assert (=> b!7889339 (= e!4657732 (> lt!2681511 call!732095))))

(declare-fun c!1448396 () Bool)

(declare-fun bm!732090 () Bool)

(declare-fun c!1448401 () Bool)

(assert (=> bm!732090 (= call!732095 (regexDepth!515 (ite c!1448396 (regTwo!42935 (ite c!1448319 (regTwo!42935 (ite c!1448268 (reg!21540 r!14100) (ite c!1448270 (regOne!42935 r!14100) (regTwo!42934 r!14100)))) (regOne!42934 (ite c!1448268 (reg!21540 r!14100) (ite c!1448270 (regOne!42935 r!14100) (regTwo!42934 r!14100)))))) (ite c!1448401 (regTwo!42934 (ite c!1448319 (regTwo!42935 (ite c!1448268 (reg!21540 r!14100) (ite c!1448270 (regOne!42935 r!14100) (regTwo!42934 r!14100)))) (regOne!42934 (ite c!1448268 (reg!21540 r!14100) (ite c!1448270 (regOne!42935 r!14100) (regTwo!42934 r!14100)))))) (reg!21540 (ite c!1448319 (regTwo!42935 (ite c!1448268 (reg!21540 r!14100) (ite c!1448270 (regOne!42935 r!14100) (regTwo!42934 r!14100)))) (regOne!42934 (ite c!1448268 (reg!21540 r!14100) (ite c!1448270 (regOne!42935 r!14100) (regTwo!42934 r!14100))))))))))))

(declare-fun bm!732091 () Bool)

(declare-fun call!732099 () Int)

(declare-fun call!732097 () Int)

(assert (=> bm!732091 (= call!732099 call!732097)))

(declare-fun b!7889340 () Bool)

(declare-fun e!4657735 () Bool)

(assert (=> b!7889340 (= e!4657735 (= lt!2681511 1))))

(declare-fun c!1448400 () Bool)

(declare-fun call!732098 () Int)

(declare-fun call!732100 () Int)

(declare-fun bm!732092 () Bool)

(assert (=> bm!732092 (= call!732100 (maxBigInt!0 (ite c!1448400 call!732099 call!732098) (ite c!1448400 call!732098 call!732099)))))

(declare-fun b!7889341 () Bool)

(declare-fun call!732101 () Int)

(assert (=> b!7889341 (= e!4657735 (> lt!2681511 call!732101))))

(declare-fun b!7889342 () Bool)

(declare-fun e!4657731 () Int)

(declare-fun e!4657734 () Int)

(assert (=> b!7889342 (= e!4657731 e!4657734)))

(declare-fun c!1448399 () Bool)

(assert (=> b!7889342 (= c!1448399 ((_ is Concat!30056) (ite c!1448319 (regTwo!42935 (ite c!1448268 (reg!21540 r!14100) (ite c!1448270 (regOne!42935 r!14100) (regTwo!42934 r!14100)))) (regOne!42934 (ite c!1448268 (reg!21540 r!14100) (ite c!1448270 (regOne!42935 r!14100) (regTwo!42934 r!14100)))))))))

(declare-fun bm!732093 () Bool)

(assert (=> bm!732093 (= call!732101 call!732095)))

(declare-fun b!7889343 () Bool)

(assert (=> b!7889343 (= c!1448400 ((_ is Union!21211) (ite c!1448319 (regTwo!42935 (ite c!1448268 (reg!21540 r!14100) (ite c!1448270 (regOne!42935 r!14100) (regTwo!42934 r!14100)))) (regOne!42934 (ite c!1448268 (reg!21540 r!14100) (ite c!1448270 (regOne!42935 r!14100) (regTwo!42934 r!14100)))))))))

(assert (=> b!7889343 (= e!4657737 e!4657731)))

(declare-fun b!7889344 () Bool)

(assert (=> b!7889344 (= e!4657728 1)))

(declare-fun bm!732094 () Bool)

(assert (=> bm!732094 (= call!732096 (regexDepth!515 (ite c!1448396 (regOne!42935 (ite c!1448319 (regTwo!42935 (ite c!1448268 (reg!21540 r!14100) (ite c!1448270 (regOne!42935 r!14100) (regTwo!42934 r!14100)))) (regOne!42934 (ite c!1448268 (reg!21540 r!14100) (ite c!1448270 (regOne!42935 r!14100) (regTwo!42934 r!14100)))))) (regOne!42934 (ite c!1448319 (regTwo!42935 (ite c!1448268 (reg!21540 r!14100) (ite c!1448270 (regOne!42935 r!14100) (regTwo!42934 r!14100)))) (regOne!42934 (ite c!1448268 (reg!21540 r!14100) (ite c!1448270 (regOne!42935 r!14100) (regTwo!42934 r!14100)))))))))))

(declare-fun bm!732095 () Bool)

(assert (=> bm!732095 (= call!732097 (regexDepth!515 (ite c!1448398 (reg!21540 (ite c!1448319 (regTwo!42935 (ite c!1448268 (reg!21540 r!14100) (ite c!1448270 (regOne!42935 r!14100) (regTwo!42934 r!14100)))) (regOne!42934 (ite c!1448268 (reg!21540 r!14100) (ite c!1448270 (regOne!42935 r!14100) (regTwo!42934 r!14100)))))) (ite c!1448400 (regOne!42935 (ite c!1448319 (regTwo!42935 (ite c!1448268 (reg!21540 r!14100) (ite c!1448270 (regOne!42935 r!14100) (regTwo!42934 r!14100)))) (regOne!42934 (ite c!1448268 (reg!21540 r!14100) (ite c!1448270 (regOne!42935 r!14100) (regTwo!42934 r!14100)))))) (regTwo!42934 (ite c!1448319 (regTwo!42935 (ite c!1448268 (reg!21540 r!14100) (ite c!1448270 (regOne!42935 r!14100) (regTwo!42934 r!14100)))) (regOne!42934 (ite c!1448268 (reg!21540 r!14100) (ite c!1448270 (regOne!42935 r!14100) (regTwo!42934 r!14100))))))))))))

(declare-fun d!2356792 () Bool)

(declare-fun e!4657730 () Bool)

(assert (=> d!2356792 e!4657730))

(declare-fun res!3131458 () Bool)

(assert (=> d!2356792 (=> (not res!3131458) (not e!4657730))))

(assert (=> d!2356792 (= res!3131458 (> lt!2681511 0))))

(assert (=> d!2356792 (= lt!2681511 e!4657728)))

(declare-fun c!1448397 () Bool)

(assert (=> d!2356792 (= c!1448397 ((_ is ElementMatch!21211) (ite c!1448319 (regTwo!42935 (ite c!1448268 (reg!21540 r!14100) (ite c!1448270 (regOne!42935 r!14100) (regTwo!42934 r!14100)))) (regOne!42934 (ite c!1448268 (reg!21540 r!14100) (ite c!1448270 (regOne!42935 r!14100) (regTwo!42934 r!14100)))))))))

(assert (=> d!2356792 (= (regexDepth!515 (ite c!1448319 (regTwo!42935 (ite c!1448268 (reg!21540 r!14100) (ite c!1448270 (regOne!42935 r!14100) (regTwo!42934 r!14100)))) (regOne!42934 (ite c!1448268 (reg!21540 r!14100) (ite c!1448270 (regOne!42935 r!14100) (regTwo!42934 r!14100)))))) lt!2681511)))

(declare-fun b!7889345 () Bool)

(assert (=> b!7889345 (= e!4657734 (+ 1 call!732100))))

(declare-fun bm!732096 () Bool)

(assert (=> bm!732096 (= call!732098 (regexDepth!515 (ite c!1448400 (regTwo!42935 (ite c!1448319 (regTwo!42935 (ite c!1448268 (reg!21540 r!14100) (ite c!1448270 (regOne!42935 r!14100) (regTwo!42934 r!14100)))) (regOne!42934 (ite c!1448268 (reg!21540 r!14100) (ite c!1448270 (regOne!42935 r!14100) (regTwo!42934 r!14100)))))) (regOne!42934 (ite c!1448319 (regTwo!42935 (ite c!1448268 (reg!21540 r!14100) (ite c!1448270 (regOne!42935 r!14100) (regTwo!42934 r!14100)))) (regOne!42934 (ite c!1448268 (reg!21540 r!14100) (ite c!1448270 (regOne!42935 r!14100) (regTwo!42934 r!14100)))))))))))

(declare-fun b!7889346 () Bool)

(assert (=> b!7889346 (= e!4657733 (> lt!2681511 call!732101))))

(declare-fun b!7889347 () Bool)

(assert (=> b!7889347 (= e!4657731 (+ 1 call!732100))))

(declare-fun b!7889348 () Bool)

(assert (=> b!7889348 (= e!4657730 e!4657736)))

(assert (=> b!7889348 (= c!1448396 ((_ is Union!21211) (ite c!1448319 (regTwo!42935 (ite c!1448268 (reg!21540 r!14100) (ite c!1448270 (regOne!42935 r!14100) (regTwo!42934 r!14100)))) (regOne!42934 (ite c!1448268 (reg!21540 r!14100) (ite c!1448270 (regOne!42935 r!14100) (regTwo!42934 r!14100)))))))))

(declare-fun b!7889349 () Bool)

(assert (=> b!7889349 (= e!4657737 (+ 1 call!732097))))

(declare-fun b!7889350 () Bool)

(assert (=> b!7889350 (= e!4657734 1)))

(declare-fun b!7889351 () Bool)

(declare-fun c!1448395 () Bool)

(assert (=> b!7889351 (= c!1448395 ((_ is Star!21211) (ite c!1448319 (regTwo!42935 (ite c!1448268 (reg!21540 r!14100) (ite c!1448270 (regOne!42935 r!14100) (regTwo!42934 r!14100)))) (regOne!42934 (ite c!1448268 (reg!21540 r!14100) (ite c!1448270 (regOne!42935 r!14100) (regTwo!42934 r!14100)))))))))

(assert (=> b!7889351 (= e!4657729 e!4657735)))

(declare-fun b!7889352 () Bool)

(assert (=> b!7889352 (= e!4657736 e!4657729)))

(assert (=> b!7889352 (= c!1448401 ((_ is Concat!30056) (ite c!1448319 (regTwo!42935 (ite c!1448268 (reg!21540 r!14100) (ite c!1448270 (regOne!42935 r!14100) (regTwo!42934 r!14100)))) (regOne!42934 (ite c!1448268 (reg!21540 r!14100) (ite c!1448270 (regOne!42935 r!14100) (regTwo!42934 r!14100)))))))))

(assert (= (and d!2356792 c!1448397) b!7889344))

(assert (= (and d!2356792 (not c!1448397)) b!7889337))

(assert (= (and b!7889337 c!1448398) b!7889349))

(assert (= (and b!7889337 (not c!1448398)) b!7889343))

(assert (= (and b!7889343 c!1448400) b!7889347))

(assert (= (and b!7889343 (not c!1448400)) b!7889342))

(assert (= (and b!7889342 c!1448399) b!7889345))

(assert (= (and b!7889342 (not c!1448399)) b!7889350))

(assert (= (or b!7889347 b!7889345) bm!732091))

(assert (= (or b!7889347 b!7889345) bm!732096))

(assert (= (or b!7889347 b!7889345) bm!732092))

(assert (= (or b!7889349 bm!732091) bm!732095))

(assert (= (and d!2356792 res!3131458) b!7889348))

(assert (= (and b!7889348 c!1448396) b!7889338))

(assert (= (and b!7889348 (not c!1448396)) b!7889352))

(assert (= (and b!7889338 res!3131459) b!7889339))

(assert (= (and b!7889352 c!1448401) b!7889336))

(assert (= (and b!7889352 (not c!1448401)) b!7889351))

(assert (= (and b!7889336 res!3131460) b!7889346))

(assert (= (and b!7889351 c!1448395) b!7889341))

(assert (= (and b!7889351 (not c!1448395)) b!7889340))

(assert (= (or b!7889346 b!7889341) bm!732093))

(assert (= (or b!7889338 b!7889336) bm!732094))

(assert (= (or b!7889339 bm!732093) bm!732090))

(declare-fun m!8270204 () Bool)

(assert (=> bm!732096 m!8270204))

(declare-fun m!8270206 () Bool)

(assert (=> bm!732090 m!8270206))

(declare-fun m!8270208 () Bool)

(assert (=> bm!732095 m!8270208))

(declare-fun m!8270210 () Bool)

(assert (=> bm!732092 m!8270210))

(declare-fun m!8270212 () Bool)

(assert (=> bm!732094 m!8270212))

(assert (=> bm!732031 d!2356792))

(declare-fun b!7889353 () Bool)

(declare-fun res!3131463 () Bool)

(declare-fun e!4657743 () Bool)

(assert (=> b!7889353 (=> (not res!3131463) (not e!4657743))))

(declare-fun lt!2681512 () Int)

(declare-fun call!732103 () Int)

(assert (=> b!7889353 (= res!3131463 (> lt!2681512 call!732103))))

(declare-fun e!4657739 () Bool)

(assert (=> b!7889353 (= e!4657739 e!4657743)))

(declare-fun b!7889354 () Bool)

(declare-fun e!4657738 () Int)

(declare-fun e!4657747 () Int)

(assert (=> b!7889354 (= e!4657738 e!4657747)))

(declare-fun c!1448405 () Bool)

(assert (=> b!7889354 (= c!1448405 ((_ is Star!21211) (ite c!1448326 (regOne!42935 (ite c!1448266 (regOne!42935 r!14100) (regOne!42934 r!14100))) (regOne!42934 (ite c!1448266 (regOne!42935 r!14100) (regOne!42934 r!14100))))))))

(declare-fun b!7889355 () Bool)

(declare-fun e!4657746 () Bool)

(declare-fun e!4657742 () Bool)

(assert (=> b!7889355 (= e!4657746 e!4657742)))

(declare-fun res!3131462 () Bool)

(assert (=> b!7889355 (= res!3131462 (> lt!2681512 call!732103))))

(assert (=> b!7889355 (=> (not res!3131462) (not e!4657742))))

(declare-fun b!7889356 () Bool)

(declare-fun call!732102 () Int)

(assert (=> b!7889356 (= e!4657742 (> lt!2681512 call!732102))))

(declare-fun c!1448403 () Bool)

(declare-fun bm!732097 () Bool)

(declare-fun c!1448408 () Bool)

(assert (=> bm!732097 (= call!732102 (regexDepth!515 (ite c!1448403 (regTwo!42935 (ite c!1448326 (regOne!42935 (ite c!1448266 (regOne!42935 r!14100) (regOne!42934 r!14100))) (regOne!42934 (ite c!1448266 (regOne!42935 r!14100) (regOne!42934 r!14100))))) (ite c!1448408 (regTwo!42934 (ite c!1448326 (regOne!42935 (ite c!1448266 (regOne!42935 r!14100) (regOne!42934 r!14100))) (regOne!42934 (ite c!1448266 (regOne!42935 r!14100) (regOne!42934 r!14100))))) (reg!21540 (ite c!1448326 (regOne!42935 (ite c!1448266 (regOne!42935 r!14100) (regOne!42934 r!14100))) (regOne!42934 (ite c!1448266 (regOne!42935 r!14100) (regOne!42934 r!14100)))))))))))

(declare-fun bm!732098 () Bool)

(declare-fun call!732106 () Int)

(declare-fun call!732104 () Int)

(assert (=> bm!732098 (= call!732106 call!732104)))

(declare-fun b!7889357 () Bool)

(declare-fun e!4657745 () Bool)

(assert (=> b!7889357 (= e!4657745 (= lt!2681512 1))))

(declare-fun bm!732099 () Bool)

(declare-fun c!1448407 () Bool)

(declare-fun call!732105 () Int)

(declare-fun call!732107 () Int)

(assert (=> bm!732099 (= call!732107 (maxBigInt!0 (ite c!1448407 call!732106 call!732105) (ite c!1448407 call!732105 call!732106)))))

(declare-fun b!7889358 () Bool)

(declare-fun call!732108 () Int)

(assert (=> b!7889358 (= e!4657745 (> lt!2681512 call!732108))))

(declare-fun b!7889359 () Bool)

(declare-fun e!4657741 () Int)

(declare-fun e!4657744 () Int)

(assert (=> b!7889359 (= e!4657741 e!4657744)))

(declare-fun c!1448406 () Bool)

(assert (=> b!7889359 (= c!1448406 ((_ is Concat!30056) (ite c!1448326 (regOne!42935 (ite c!1448266 (regOne!42935 r!14100) (regOne!42934 r!14100))) (regOne!42934 (ite c!1448266 (regOne!42935 r!14100) (regOne!42934 r!14100))))))))

(declare-fun bm!732100 () Bool)

(assert (=> bm!732100 (= call!732108 call!732102)))

(declare-fun b!7889360 () Bool)

(assert (=> b!7889360 (= c!1448407 ((_ is Union!21211) (ite c!1448326 (regOne!42935 (ite c!1448266 (regOne!42935 r!14100) (regOne!42934 r!14100))) (regOne!42934 (ite c!1448266 (regOne!42935 r!14100) (regOne!42934 r!14100))))))))

(assert (=> b!7889360 (= e!4657747 e!4657741)))

(declare-fun b!7889361 () Bool)

(assert (=> b!7889361 (= e!4657738 1)))

(declare-fun bm!732101 () Bool)

(assert (=> bm!732101 (= call!732103 (regexDepth!515 (ite c!1448403 (regOne!42935 (ite c!1448326 (regOne!42935 (ite c!1448266 (regOne!42935 r!14100) (regOne!42934 r!14100))) (regOne!42934 (ite c!1448266 (regOne!42935 r!14100) (regOne!42934 r!14100))))) (regOne!42934 (ite c!1448326 (regOne!42935 (ite c!1448266 (regOne!42935 r!14100) (regOne!42934 r!14100))) (regOne!42934 (ite c!1448266 (regOne!42935 r!14100) (regOne!42934 r!14100))))))))))

(declare-fun bm!732102 () Bool)

(assert (=> bm!732102 (= call!732104 (regexDepth!515 (ite c!1448405 (reg!21540 (ite c!1448326 (regOne!42935 (ite c!1448266 (regOne!42935 r!14100) (regOne!42934 r!14100))) (regOne!42934 (ite c!1448266 (regOne!42935 r!14100) (regOne!42934 r!14100))))) (ite c!1448407 (regOne!42935 (ite c!1448326 (regOne!42935 (ite c!1448266 (regOne!42935 r!14100) (regOne!42934 r!14100))) (regOne!42934 (ite c!1448266 (regOne!42935 r!14100) (regOne!42934 r!14100))))) (regTwo!42934 (ite c!1448326 (regOne!42935 (ite c!1448266 (regOne!42935 r!14100) (regOne!42934 r!14100))) (regOne!42934 (ite c!1448266 (regOne!42935 r!14100) (regOne!42934 r!14100)))))))))))

(declare-fun d!2356794 () Bool)

(declare-fun e!4657740 () Bool)

(assert (=> d!2356794 e!4657740))

(declare-fun res!3131461 () Bool)

(assert (=> d!2356794 (=> (not res!3131461) (not e!4657740))))

(assert (=> d!2356794 (= res!3131461 (> lt!2681512 0))))

(assert (=> d!2356794 (= lt!2681512 e!4657738)))

(declare-fun c!1448404 () Bool)

(assert (=> d!2356794 (= c!1448404 ((_ is ElementMatch!21211) (ite c!1448326 (regOne!42935 (ite c!1448266 (regOne!42935 r!14100) (regOne!42934 r!14100))) (regOne!42934 (ite c!1448266 (regOne!42935 r!14100) (regOne!42934 r!14100))))))))

(assert (=> d!2356794 (= (regexDepth!515 (ite c!1448326 (regOne!42935 (ite c!1448266 (regOne!42935 r!14100) (regOne!42934 r!14100))) (regOne!42934 (ite c!1448266 (regOne!42935 r!14100) (regOne!42934 r!14100))))) lt!2681512)))

(declare-fun b!7889362 () Bool)

(assert (=> b!7889362 (= e!4657744 (+ 1 call!732107))))

(declare-fun bm!732103 () Bool)

(assert (=> bm!732103 (= call!732105 (regexDepth!515 (ite c!1448407 (regTwo!42935 (ite c!1448326 (regOne!42935 (ite c!1448266 (regOne!42935 r!14100) (regOne!42934 r!14100))) (regOne!42934 (ite c!1448266 (regOne!42935 r!14100) (regOne!42934 r!14100))))) (regOne!42934 (ite c!1448326 (regOne!42935 (ite c!1448266 (regOne!42935 r!14100) (regOne!42934 r!14100))) (regOne!42934 (ite c!1448266 (regOne!42935 r!14100) (regOne!42934 r!14100))))))))))

(declare-fun b!7889363 () Bool)

(assert (=> b!7889363 (= e!4657743 (> lt!2681512 call!732108))))

(declare-fun b!7889364 () Bool)

(assert (=> b!7889364 (= e!4657741 (+ 1 call!732107))))

(declare-fun b!7889365 () Bool)

(assert (=> b!7889365 (= e!4657740 e!4657746)))

(assert (=> b!7889365 (= c!1448403 ((_ is Union!21211) (ite c!1448326 (regOne!42935 (ite c!1448266 (regOne!42935 r!14100) (regOne!42934 r!14100))) (regOne!42934 (ite c!1448266 (regOne!42935 r!14100) (regOne!42934 r!14100))))))))

(declare-fun b!7889366 () Bool)

(assert (=> b!7889366 (= e!4657747 (+ 1 call!732104))))

(declare-fun b!7889367 () Bool)

(assert (=> b!7889367 (= e!4657744 1)))

(declare-fun c!1448402 () Bool)

(declare-fun b!7889368 () Bool)

(assert (=> b!7889368 (= c!1448402 ((_ is Star!21211) (ite c!1448326 (regOne!42935 (ite c!1448266 (regOne!42935 r!14100) (regOne!42934 r!14100))) (regOne!42934 (ite c!1448266 (regOne!42935 r!14100) (regOne!42934 r!14100))))))))

(assert (=> b!7889368 (= e!4657739 e!4657745)))

(declare-fun b!7889369 () Bool)

(assert (=> b!7889369 (= e!4657746 e!4657739)))

(assert (=> b!7889369 (= c!1448408 ((_ is Concat!30056) (ite c!1448326 (regOne!42935 (ite c!1448266 (regOne!42935 r!14100) (regOne!42934 r!14100))) (regOne!42934 (ite c!1448266 (regOne!42935 r!14100) (regOne!42934 r!14100))))))))

(assert (= (and d!2356794 c!1448404) b!7889361))

(assert (= (and d!2356794 (not c!1448404)) b!7889354))

(assert (= (and b!7889354 c!1448405) b!7889366))

(assert (= (and b!7889354 (not c!1448405)) b!7889360))

(assert (= (and b!7889360 c!1448407) b!7889364))

(assert (= (and b!7889360 (not c!1448407)) b!7889359))

(assert (= (and b!7889359 c!1448406) b!7889362))

(assert (= (and b!7889359 (not c!1448406)) b!7889367))

(assert (= (or b!7889364 b!7889362) bm!732098))

(assert (= (or b!7889364 b!7889362) bm!732103))

(assert (= (or b!7889364 b!7889362) bm!732099))

(assert (= (or b!7889366 bm!732098) bm!732102))

(assert (= (and d!2356794 res!3131461) b!7889365))

(assert (= (and b!7889365 c!1448403) b!7889355))

(assert (= (and b!7889365 (not c!1448403)) b!7889369))

(assert (= (and b!7889355 res!3131462) b!7889356))

(assert (= (and b!7889369 c!1448408) b!7889353))

(assert (= (and b!7889369 (not c!1448408)) b!7889368))

(assert (= (and b!7889353 res!3131463) b!7889363))

(assert (= (and b!7889368 c!1448402) b!7889358))

(assert (= (and b!7889368 (not c!1448402)) b!7889357))

(assert (= (or b!7889363 b!7889358) bm!732100))

(assert (= (or b!7889355 b!7889353) bm!732101))

(assert (= (or b!7889356 bm!732100) bm!732097))

(declare-fun m!8270214 () Bool)

(assert (=> bm!732103 m!8270214))

(declare-fun m!8270216 () Bool)

(assert (=> bm!732097 m!8270216))

(declare-fun m!8270218 () Bool)

(assert (=> bm!732102 m!8270218))

(declare-fun m!8270220 () Bool)

(assert (=> bm!732099 m!8270220))

(declare-fun m!8270222 () Bool)

(assert (=> bm!732101 m!8270222))

(assert (=> bm!732039 d!2356794))

(declare-fun b!7889370 () Bool)

(declare-fun e!4657750 () Bool)

(declare-fun call!732109 () Bool)

(assert (=> b!7889370 (= e!4657750 call!732109)))

(declare-fun b!7889371 () Bool)

(declare-fun res!3131468 () Bool)

(declare-fun e!4657749 () Bool)

(assert (=> b!7889371 (=> res!3131468 e!4657749)))

(assert (=> b!7889371 (= res!3131468 (not ((_ is Concat!30056) (ite c!1448322 (regTwo!42935 (ite c!1448195 (regTwo!42935 r!14100) (regOne!42934 r!14100))) (regOne!42934 (ite c!1448195 (regTwo!42935 r!14100) (regOne!42934 r!14100)))))))))

(declare-fun e!4657753 () Bool)

(assert (=> b!7889371 (= e!4657753 e!4657749)))

(declare-fun b!7889372 () Bool)

(declare-fun e!4657752 () Bool)

(assert (=> b!7889372 (= e!4657752 e!4657753)))

(declare-fun c!1448410 () Bool)

(assert (=> b!7889372 (= c!1448410 ((_ is Union!21211) (ite c!1448322 (regTwo!42935 (ite c!1448195 (regTwo!42935 r!14100) (regOne!42934 r!14100))) (regOne!42934 (ite c!1448195 (regTwo!42935 r!14100) (regOne!42934 r!14100))))))))

(declare-fun b!7889373 () Bool)

(declare-fun e!4657751 () Bool)

(assert (=> b!7889373 (= e!4657751 e!4657752)))

(declare-fun c!1448409 () Bool)

(assert (=> b!7889373 (= c!1448409 ((_ is Star!21211) (ite c!1448322 (regTwo!42935 (ite c!1448195 (regTwo!42935 r!14100) (regOne!42934 r!14100))) (regOne!42934 (ite c!1448195 (regTwo!42935 r!14100) (regOne!42934 r!14100))))))))

(declare-fun b!7889374 () Bool)

(declare-fun e!4657748 () Bool)

(declare-fun call!732111 () Bool)

(assert (=> b!7889374 (= e!4657748 call!732111)))

(declare-fun bm!732105 () Bool)

(assert (=> bm!732105 (= call!732109 call!732111)))

(declare-fun b!7889375 () Bool)

(declare-fun e!4657754 () Bool)

(declare-fun call!732110 () Bool)

(assert (=> b!7889375 (= e!4657754 call!732110)))

(declare-fun d!2356796 () Bool)

(declare-fun res!3131467 () Bool)

(assert (=> d!2356796 (=> res!3131467 e!4657751)))

(assert (=> d!2356796 (= res!3131467 ((_ is ElementMatch!21211) (ite c!1448322 (regTwo!42935 (ite c!1448195 (regTwo!42935 r!14100) (regOne!42934 r!14100))) (regOne!42934 (ite c!1448195 (regTwo!42935 r!14100) (regOne!42934 r!14100))))))))

(assert (=> d!2356796 (= (validRegex!11621 (ite c!1448322 (regTwo!42935 (ite c!1448195 (regTwo!42935 r!14100) (regOne!42934 r!14100))) (regOne!42934 (ite c!1448195 (regTwo!42935 r!14100) (regOne!42934 r!14100))))) e!4657751)))

(declare-fun bm!732104 () Bool)

(assert (=> bm!732104 (= call!732110 (validRegex!11621 (ite c!1448410 (regTwo!42935 (ite c!1448322 (regTwo!42935 (ite c!1448195 (regTwo!42935 r!14100) (regOne!42934 r!14100))) (regOne!42934 (ite c!1448195 (regTwo!42935 r!14100) (regOne!42934 r!14100))))) (regOne!42934 (ite c!1448322 (regTwo!42935 (ite c!1448195 (regTwo!42935 r!14100) (regOne!42934 r!14100))) (regOne!42934 (ite c!1448195 (regTwo!42935 r!14100) (regOne!42934 r!14100))))))))))

(declare-fun b!7889376 () Bool)

(declare-fun res!3131466 () Bool)

(assert (=> b!7889376 (=> (not res!3131466) (not e!4657754))))

(assert (=> b!7889376 (= res!3131466 call!732109)))

(assert (=> b!7889376 (= e!4657753 e!4657754)))

(declare-fun b!7889377 () Bool)

(assert (=> b!7889377 (= e!4657749 e!4657750)))

(declare-fun res!3131465 () Bool)

(assert (=> b!7889377 (=> (not res!3131465) (not e!4657750))))

(assert (=> b!7889377 (= res!3131465 call!732110)))

(declare-fun b!7889378 () Bool)

(assert (=> b!7889378 (= e!4657752 e!4657748)))

(declare-fun res!3131464 () Bool)

(assert (=> b!7889378 (= res!3131464 (not (nullable!9466 (reg!21540 (ite c!1448322 (regTwo!42935 (ite c!1448195 (regTwo!42935 r!14100) (regOne!42934 r!14100))) (regOne!42934 (ite c!1448195 (regTwo!42935 r!14100) (regOne!42934 r!14100))))))))))

(assert (=> b!7889378 (=> (not res!3131464) (not e!4657748))))

(declare-fun bm!732106 () Bool)

(assert (=> bm!732106 (= call!732111 (validRegex!11621 (ite c!1448409 (reg!21540 (ite c!1448322 (regTwo!42935 (ite c!1448195 (regTwo!42935 r!14100) (regOne!42934 r!14100))) (regOne!42934 (ite c!1448195 (regTwo!42935 r!14100) (regOne!42934 r!14100))))) (ite c!1448410 (regOne!42935 (ite c!1448322 (regTwo!42935 (ite c!1448195 (regTwo!42935 r!14100) (regOne!42934 r!14100))) (regOne!42934 (ite c!1448195 (regTwo!42935 r!14100) (regOne!42934 r!14100))))) (regTwo!42934 (ite c!1448322 (regTwo!42935 (ite c!1448195 (regTwo!42935 r!14100) (regOne!42934 r!14100))) (regOne!42934 (ite c!1448195 (regTwo!42935 r!14100) (regOne!42934 r!14100)))))))))))

(assert (= (and d!2356796 (not res!3131467)) b!7889373))

(assert (= (and b!7889373 c!1448409) b!7889378))

(assert (= (and b!7889373 (not c!1448409)) b!7889372))

(assert (= (and b!7889378 res!3131464) b!7889374))

(assert (= (and b!7889372 c!1448410) b!7889376))

(assert (= (and b!7889372 (not c!1448410)) b!7889371))

(assert (= (and b!7889376 res!3131466) b!7889375))

(assert (= (and b!7889371 (not res!3131468)) b!7889377))

(assert (= (and b!7889377 res!3131465) b!7889370))

(assert (= (or b!7889375 b!7889377) bm!732104))

(assert (= (or b!7889376 b!7889370) bm!732105))

(assert (= (or b!7889374 bm!732105) bm!732106))

(declare-fun m!8270224 () Bool)

(assert (=> bm!732104 m!8270224))

(declare-fun m!8270226 () Bool)

(assert (=> b!7889378 m!8270226))

(declare-fun m!8270228 () Bool)

(assert (=> bm!732106 m!8270228))

(assert (=> bm!732032 d!2356796))

(declare-fun d!2356798 () Bool)

(declare-fun lt!2681513 () Int)

(assert (=> d!2356798 (>= lt!2681513 0)))

(declare-fun e!4657755 () Int)

(assert (=> d!2356798 (= lt!2681513 e!4657755)))

(declare-fun c!1448411 () Bool)

(assert (=> d!2356798 (= c!1448411 ((_ is Nil!73944) (t!388803 (t!388803 (_2!38333 cut!2)))))))

(assert (=> d!2356798 (= (size!42852 (t!388803 (t!388803 (_2!38333 cut!2)))) lt!2681513)))

(declare-fun b!7889379 () Bool)

(assert (=> b!7889379 (= e!4657755 0)))

(declare-fun b!7889380 () Bool)

(assert (=> b!7889380 (= e!4657755 (+ 1 (size!42852 (t!388803 (t!388803 (t!388803 (_2!38333 cut!2)))))))))

(assert (= (and d!2356798 c!1448411) b!7889379))

(assert (= (and d!2356798 (not c!1448411)) b!7889380))

(declare-fun m!8270230 () Bool)

(assert (=> b!7889380 m!8270230))

(assert (=> b!7889026 d!2356798))

(declare-fun b!7889381 () Bool)

(declare-fun res!3131471 () Bool)

(declare-fun e!4657761 () Bool)

(assert (=> b!7889381 (=> (not res!3131471) (not e!4657761))))

(declare-fun lt!2681514 () Int)

(declare-fun call!732113 () Int)

(assert (=> b!7889381 (= res!3131471 (> lt!2681514 call!732113))))

(declare-fun e!4657757 () Bool)

(assert (=> b!7889381 (= e!4657757 e!4657761)))

(declare-fun b!7889382 () Bool)

(declare-fun e!4657756 () Int)

(declare-fun e!4657765 () Int)

(assert (=> b!7889382 (= e!4657756 e!4657765)))

(declare-fun c!1448415 () Bool)

(assert (=> b!7889382 (= c!1448415 ((_ is Star!21211) (ite c!1448317 (reg!21540 (ite c!1448268 (reg!21540 r!14100) (ite c!1448270 (regOne!42935 r!14100) (regTwo!42934 r!14100)))) (ite c!1448319 (regOne!42935 (ite c!1448268 (reg!21540 r!14100) (ite c!1448270 (regOne!42935 r!14100) (regTwo!42934 r!14100)))) (regTwo!42934 (ite c!1448268 (reg!21540 r!14100) (ite c!1448270 (regOne!42935 r!14100) (regTwo!42934 r!14100))))))))))

(declare-fun b!7889383 () Bool)

(declare-fun e!4657764 () Bool)

(declare-fun e!4657760 () Bool)

(assert (=> b!7889383 (= e!4657764 e!4657760)))

(declare-fun res!3131470 () Bool)

(assert (=> b!7889383 (= res!3131470 (> lt!2681514 call!732113))))

(assert (=> b!7889383 (=> (not res!3131470) (not e!4657760))))

(declare-fun b!7889384 () Bool)

(declare-fun call!732112 () Int)

(assert (=> b!7889384 (= e!4657760 (> lt!2681514 call!732112))))

(declare-fun c!1448413 () Bool)

(declare-fun c!1448418 () Bool)

(declare-fun bm!732107 () Bool)

(assert (=> bm!732107 (= call!732112 (regexDepth!515 (ite c!1448413 (regTwo!42935 (ite c!1448317 (reg!21540 (ite c!1448268 (reg!21540 r!14100) (ite c!1448270 (regOne!42935 r!14100) (regTwo!42934 r!14100)))) (ite c!1448319 (regOne!42935 (ite c!1448268 (reg!21540 r!14100) (ite c!1448270 (regOne!42935 r!14100) (regTwo!42934 r!14100)))) (regTwo!42934 (ite c!1448268 (reg!21540 r!14100) (ite c!1448270 (regOne!42935 r!14100) (regTwo!42934 r!14100))))))) (ite c!1448418 (regTwo!42934 (ite c!1448317 (reg!21540 (ite c!1448268 (reg!21540 r!14100) (ite c!1448270 (regOne!42935 r!14100) (regTwo!42934 r!14100)))) (ite c!1448319 (regOne!42935 (ite c!1448268 (reg!21540 r!14100) (ite c!1448270 (regOne!42935 r!14100) (regTwo!42934 r!14100)))) (regTwo!42934 (ite c!1448268 (reg!21540 r!14100) (ite c!1448270 (regOne!42935 r!14100) (regTwo!42934 r!14100))))))) (reg!21540 (ite c!1448317 (reg!21540 (ite c!1448268 (reg!21540 r!14100) (ite c!1448270 (regOne!42935 r!14100) (regTwo!42934 r!14100)))) (ite c!1448319 (regOne!42935 (ite c!1448268 (reg!21540 r!14100) (ite c!1448270 (regOne!42935 r!14100) (regTwo!42934 r!14100)))) (regTwo!42934 (ite c!1448268 (reg!21540 r!14100) (ite c!1448270 (regOne!42935 r!14100) (regTwo!42934 r!14100)))))))))))))

(declare-fun bm!732108 () Bool)

(declare-fun call!732116 () Int)

(declare-fun call!732114 () Int)

(assert (=> bm!732108 (= call!732116 call!732114)))

(declare-fun b!7889385 () Bool)

(declare-fun e!4657763 () Bool)

(assert (=> b!7889385 (= e!4657763 (= lt!2681514 1))))

(declare-fun bm!732109 () Bool)

(declare-fun call!732115 () Int)

(declare-fun call!732117 () Int)

(declare-fun c!1448417 () Bool)

(assert (=> bm!732109 (= call!732117 (maxBigInt!0 (ite c!1448417 call!732116 call!732115) (ite c!1448417 call!732115 call!732116)))))

(declare-fun b!7889386 () Bool)

(declare-fun call!732118 () Int)

(assert (=> b!7889386 (= e!4657763 (> lt!2681514 call!732118))))

(declare-fun b!7889387 () Bool)

(declare-fun e!4657759 () Int)

(declare-fun e!4657762 () Int)

(assert (=> b!7889387 (= e!4657759 e!4657762)))

(declare-fun c!1448416 () Bool)

(assert (=> b!7889387 (= c!1448416 ((_ is Concat!30056) (ite c!1448317 (reg!21540 (ite c!1448268 (reg!21540 r!14100) (ite c!1448270 (regOne!42935 r!14100) (regTwo!42934 r!14100)))) (ite c!1448319 (regOne!42935 (ite c!1448268 (reg!21540 r!14100) (ite c!1448270 (regOne!42935 r!14100) (regTwo!42934 r!14100)))) (regTwo!42934 (ite c!1448268 (reg!21540 r!14100) (ite c!1448270 (regOne!42935 r!14100) (regTwo!42934 r!14100))))))))))

(declare-fun bm!732110 () Bool)

(assert (=> bm!732110 (= call!732118 call!732112)))

(declare-fun b!7889388 () Bool)

(assert (=> b!7889388 (= c!1448417 ((_ is Union!21211) (ite c!1448317 (reg!21540 (ite c!1448268 (reg!21540 r!14100) (ite c!1448270 (regOne!42935 r!14100) (regTwo!42934 r!14100)))) (ite c!1448319 (regOne!42935 (ite c!1448268 (reg!21540 r!14100) (ite c!1448270 (regOne!42935 r!14100) (regTwo!42934 r!14100)))) (regTwo!42934 (ite c!1448268 (reg!21540 r!14100) (ite c!1448270 (regOne!42935 r!14100) (regTwo!42934 r!14100))))))))))

(assert (=> b!7889388 (= e!4657765 e!4657759)))

(declare-fun b!7889389 () Bool)

(assert (=> b!7889389 (= e!4657756 1)))

(declare-fun bm!732111 () Bool)

(assert (=> bm!732111 (= call!732113 (regexDepth!515 (ite c!1448413 (regOne!42935 (ite c!1448317 (reg!21540 (ite c!1448268 (reg!21540 r!14100) (ite c!1448270 (regOne!42935 r!14100) (regTwo!42934 r!14100)))) (ite c!1448319 (regOne!42935 (ite c!1448268 (reg!21540 r!14100) (ite c!1448270 (regOne!42935 r!14100) (regTwo!42934 r!14100)))) (regTwo!42934 (ite c!1448268 (reg!21540 r!14100) (ite c!1448270 (regOne!42935 r!14100) (regTwo!42934 r!14100))))))) (regOne!42934 (ite c!1448317 (reg!21540 (ite c!1448268 (reg!21540 r!14100) (ite c!1448270 (regOne!42935 r!14100) (regTwo!42934 r!14100)))) (ite c!1448319 (regOne!42935 (ite c!1448268 (reg!21540 r!14100) (ite c!1448270 (regOne!42935 r!14100) (regTwo!42934 r!14100)))) (regTwo!42934 (ite c!1448268 (reg!21540 r!14100) (ite c!1448270 (regOne!42935 r!14100) (regTwo!42934 r!14100))))))))))))

(declare-fun bm!732112 () Bool)

(assert (=> bm!732112 (= call!732114 (regexDepth!515 (ite c!1448415 (reg!21540 (ite c!1448317 (reg!21540 (ite c!1448268 (reg!21540 r!14100) (ite c!1448270 (regOne!42935 r!14100) (regTwo!42934 r!14100)))) (ite c!1448319 (regOne!42935 (ite c!1448268 (reg!21540 r!14100) (ite c!1448270 (regOne!42935 r!14100) (regTwo!42934 r!14100)))) (regTwo!42934 (ite c!1448268 (reg!21540 r!14100) (ite c!1448270 (regOne!42935 r!14100) (regTwo!42934 r!14100))))))) (ite c!1448417 (regOne!42935 (ite c!1448317 (reg!21540 (ite c!1448268 (reg!21540 r!14100) (ite c!1448270 (regOne!42935 r!14100) (regTwo!42934 r!14100)))) (ite c!1448319 (regOne!42935 (ite c!1448268 (reg!21540 r!14100) (ite c!1448270 (regOne!42935 r!14100) (regTwo!42934 r!14100)))) (regTwo!42934 (ite c!1448268 (reg!21540 r!14100) (ite c!1448270 (regOne!42935 r!14100) (regTwo!42934 r!14100))))))) (regTwo!42934 (ite c!1448317 (reg!21540 (ite c!1448268 (reg!21540 r!14100) (ite c!1448270 (regOne!42935 r!14100) (regTwo!42934 r!14100)))) (ite c!1448319 (regOne!42935 (ite c!1448268 (reg!21540 r!14100) (ite c!1448270 (regOne!42935 r!14100) (regTwo!42934 r!14100)))) (regTwo!42934 (ite c!1448268 (reg!21540 r!14100) (ite c!1448270 (regOne!42935 r!14100) (regTwo!42934 r!14100)))))))))))))

(declare-fun d!2356800 () Bool)

(declare-fun e!4657758 () Bool)

(assert (=> d!2356800 e!4657758))

(declare-fun res!3131469 () Bool)

(assert (=> d!2356800 (=> (not res!3131469) (not e!4657758))))

(assert (=> d!2356800 (= res!3131469 (> lt!2681514 0))))

(assert (=> d!2356800 (= lt!2681514 e!4657756)))

(declare-fun c!1448414 () Bool)

(assert (=> d!2356800 (= c!1448414 ((_ is ElementMatch!21211) (ite c!1448317 (reg!21540 (ite c!1448268 (reg!21540 r!14100) (ite c!1448270 (regOne!42935 r!14100) (regTwo!42934 r!14100)))) (ite c!1448319 (regOne!42935 (ite c!1448268 (reg!21540 r!14100) (ite c!1448270 (regOne!42935 r!14100) (regTwo!42934 r!14100)))) (regTwo!42934 (ite c!1448268 (reg!21540 r!14100) (ite c!1448270 (regOne!42935 r!14100) (regTwo!42934 r!14100))))))))))

(assert (=> d!2356800 (= (regexDepth!515 (ite c!1448317 (reg!21540 (ite c!1448268 (reg!21540 r!14100) (ite c!1448270 (regOne!42935 r!14100) (regTwo!42934 r!14100)))) (ite c!1448319 (regOne!42935 (ite c!1448268 (reg!21540 r!14100) (ite c!1448270 (regOne!42935 r!14100) (regTwo!42934 r!14100)))) (regTwo!42934 (ite c!1448268 (reg!21540 r!14100) (ite c!1448270 (regOne!42935 r!14100) (regTwo!42934 r!14100))))))) lt!2681514)))

(declare-fun b!7889390 () Bool)

(assert (=> b!7889390 (= e!4657762 (+ 1 call!732117))))

(declare-fun bm!732113 () Bool)

(assert (=> bm!732113 (= call!732115 (regexDepth!515 (ite c!1448417 (regTwo!42935 (ite c!1448317 (reg!21540 (ite c!1448268 (reg!21540 r!14100) (ite c!1448270 (regOne!42935 r!14100) (regTwo!42934 r!14100)))) (ite c!1448319 (regOne!42935 (ite c!1448268 (reg!21540 r!14100) (ite c!1448270 (regOne!42935 r!14100) (regTwo!42934 r!14100)))) (regTwo!42934 (ite c!1448268 (reg!21540 r!14100) (ite c!1448270 (regOne!42935 r!14100) (regTwo!42934 r!14100))))))) (regOne!42934 (ite c!1448317 (reg!21540 (ite c!1448268 (reg!21540 r!14100) (ite c!1448270 (regOne!42935 r!14100) (regTwo!42934 r!14100)))) (ite c!1448319 (regOne!42935 (ite c!1448268 (reg!21540 r!14100) (ite c!1448270 (regOne!42935 r!14100) (regTwo!42934 r!14100)))) (regTwo!42934 (ite c!1448268 (reg!21540 r!14100) (ite c!1448270 (regOne!42935 r!14100) (regTwo!42934 r!14100))))))))))))

(declare-fun b!7889391 () Bool)

(assert (=> b!7889391 (= e!4657761 (> lt!2681514 call!732118))))

(declare-fun b!7889392 () Bool)

(assert (=> b!7889392 (= e!4657759 (+ 1 call!732117))))

(declare-fun b!7889393 () Bool)

(assert (=> b!7889393 (= e!4657758 e!4657764)))

(assert (=> b!7889393 (= c!1448413 ((_ is Union!21211) (ite c!1448317 (reg!21540 (ite c!1448268 (reg!21540 r!14100) (ite c!1448270 (regOne!42935 r!14100) (regTwo!42934 r!14100)))) (ite c!1448319 (regOne!42935 (ite c!1448268 (reg!21540 r!14100) (ite c!1448270 (regOne!42935 r!14100) (regTwo!42934 r!14100)))) (regTwo!42934 (ite c!1448268 (reg!21540 r!14100) (ite c!1448270 (regOne!42935 r!14100) (regTwo!42934 r!14100))))))))))

(declare-fun b!7889394 () Bool)

(assert (=> b!7889394 (= e!4657765 (+ 1 call!732114))))

(declare-fun b!7889395 () Bool)

(assert (=> b!7889395 (= e!4657762 1)))

(declare-fun b!7889396 () Bool)

(declare-fun c!1448412 () Bool)

(assert (=> b!7889396 (= c!1448412 ((_ is Star!21211) (ite c!1448317 (reg!21540 (ite c!1448268 (reg!21540 r!14100) (ite c!1448270 (regOne!42935 r!14100) (regTwo!42934 r!14100)))) (ite c!1448319 (regOne!42935 (ite c!1448268 (reg!21540 r!14100) (ite c!1448270 (regOne!42935 r!14100) (regTwo!42934 r!14100)))) (regTwo!42934 (ite c!1448268 (reg!21540 r!14100) (ite c!1448270 (regOne!42935 r!14100) (regTwo!42934 r!14100))))))))))

(assert (=> b!7889396 (= e!4657757 e!4657763)))

(declare-fun b!7889397 () Bool)

(assert (=> b!7889397 (= e!4657764 e!4657757)))

(assert (=> b!7889397 (= c!1448418 ((_ is Concat!30056) (ite c!1448317 (reg!21540 (ite c!1448268 (reg!21540 r!14100) (ite c!1448270 (regOne!42935 r!14100) (regTwo!42934 r!14100)))) (ite c!1448319 (regOne!42935 (ite c!1448268 (reg!21540 r!14100) (ite c!1448270 (regOne!42935 r!14100) (regTwo!42934 r!14100)))) (regTwo!42934 (ite c!1448268 (reg!21540 r!14100) (ite c!1448270 (regOne!42935 r!14100) (regTwo!42934 r!14100))))))))))

(assert (= (and d!2356800 c!1448414) b!7889389))

(assert (= (and d!2356800 (not c!1448414)) b!7889382))

(assert (= (and b!7889382 c!1448415) b!7889394))

(assert (= (and b!7889382 (not c!1448415)) b!7889388))

(assert (= (and b!7889388 c!1448417) b!7889392))

(assert (= (and b!7889388 (not c!1448417)) b!7889387))

(assert (= (and b!7889387 c!1448416) b!7889390))

(assert (= (and b!7889387 (not c!1448416)) b!7889395))

(assert (= (or b!7889392 b!7889390) bm!732108))

(assert (= (or b!7889392 b!7889390) bm!732113))

(assert (= (or b!7889392 b!7889390) bm!732109))

(assert (= (or b!7889394 bm!732108) bm!732112))

(assert (= (and d!2356800 res!3131469) b!7889393))

(assert (= (and b!7889393 c!1448413) b!7889383))

(assert (= (and b!7889393 (not c!1448413)) b!7889397))

(assert (= (and b!7889383 res!3131470) b!7889384))

(assert (= (and b!7889397 c!1448418) b!7889381))

(assert (= (and b!7889397 (not c!1448418)) b!7889396))

(assert (= (and b!7889381 res!3131471) b!7889391))

(assert (= (and b!7889396 c!1448412) b!7889386))

(assert (= (and b!7889396 (not c!1448412)) b!7889385))

(assert (= (or b!7889391 b!7889386) bm!732110))

(assert (= (or b!7889383 b!7889381) bm!732111))

(assert (= (or b!7889384 bm!732110) bm!732107))

(declare-fun m!8270232 () Bool)

(assert (=> bm!732113 m!8270232))

(declare-fun m!8270234 () Bool)

(assert (=> bm!732107 m!8270234))

(declare-fun m!8270236 () Bool)

(assert (=> bm!732112 m!8270236))

(declare-fun m!8270238 () Bool)

(assert (=> bm!732109 m!8270238))

(declare-fun m!8270240 () Bool)

(assert (=> bm!732111 m!8270240))

(assert (=> bm!732030 d!2356800))

(declare-fun d!2356802 () Bool)

(declare-fun c!1448419 () Bool)

(assert (=> d!2356802 (= c!1448419 ((_ is Nil!73944) (t!388803 lt!2681489)))))

(declare-fun e!4657766 () (InoxSet C!42748))

(assert (=> d!2356802 (= (content!15695 (t!388803 lt!2681489)) e!4657766)))

(declare-fun b!7889398 () Bool)

(assert (=> b!7889398 (= e!4657766 ((as const (Array C!42748 Bool)) false))))

(declare-fun b!7889399 () Bool)

(assert (=> b!7889399 (= e!4657766 ((_ map or) (store ((as const (Array C!42748 Bool)) false) (h!80392 (t!388803 lt!2681489)) true) (content!15695 (t!388803 (t!388803 lt!2681489)))))))

(assert (= (and d!2356802 c!1448419) b!7889398))

(assert (= (and d!2356802 (not c!1448419)) b!7889399))

(declare-fun m!8270242 () Bool)

(assert (=> b!7889399 m!8270242))

(declare-fun m!8270244 () Bool)

(assert (=> b!7889399 m!8270244))

(assert (=> b!7889003 d!2356802))

(declare-fun d!2356804 () Bool)

(assert (=> d!2356804 (= (maxBigInt!0 (ite c!1448299 call!732023 call!732022) (ite c!1448299 call!732022 call!732023)) (ite (>= (ite c!1448299 call!732023 call!732022) (ite c!1448299 call!732022 call!732023)) (ite c!1448299 call!732023 call!732022) (ite c!1448299 call!732022 call!732023)))))

(assert (=> bm!732016 d!2356804))

(declare-fun b!7889400 () Bool)

(declare-fun res!3131474 () Bool)

(declare-fun e!4657772 () Bool)

(assert (=> b!7889400 (=> (not res!3131474) (not e!4657772))))

(declare-fun lt!2681515 () Int)

(declare-fun call!732120 () Int)

(assert (=> b!7889400 (= res!3131474 (> lt!2681515 call!732120))))

(declare-fun e!4657768 () Bool)

(assert (=> b!7889400 (= e!4657768 e!4657772)))

(declare-fun b!7889401 () Bool)

(declare-fun e!4657767 () Int)

(declare-fun e!4657776 () Int)

(assert (=> b!7889401 (= e!4657767 e!4657776)))

(declare-fun c!1448423 () Bool)

(assert (=> b!7889401 (= c!1448423 ((_ is Star!21211) (ite c!1448285 (regTwo!42935 (ite c!1448270 (regTwo!42935 r!14100) (regOne!42934 r!14100))) (regOne!42934 (ite c!1448270 (regTwo!42935 r!14100) (regOne!42934 r!14100))))))))

(declare-fun b!7889402 () Bool)

(declare-fun e!4657775 () Bool)

(declare-fun e!4657771 () Bool)

(assert (=> b!7889402 (= e!4657775 e!4657771)))

(declare-fun res!3131473 () Bool)

(assert (=> b!7889402 (= res!3131473 (> lt!2681515 call!732120))))

(assert (=> b!7889402 (=> (not res!3131473) (not e!4657771))))

(declare-fun b!7889403 () Bool)

(declare-fun call!732119 () Int)

(assert (=> b!7889403 (= e!4657771 (> lt!2681515 call!732119))))

(declare-fun bm!732114 () Bool)

(declare-fun c!1448426 () Bool)

(declare-fun c!1448421 () Bool)

(assert (=> bm!732114 (= call!732119 (regexDepth!515 (ite c!1448421 (regTwo!42935 (ite c!1448285 (regTwo!42935 (ite c!1448270 (regTwo!42935 r!14100) (regOne!42934 r!14100))) (regOne!42934 (ite c!1448270 (regTwo!42935 r!14100) (regOne!42934 r!14100))))) (ite c!1448426 (regTwo!42934 (ite c!1448285 (regTwo!42935 (ite c!1448270 (regTwo!42935 r!14100) (regOne!42934 r!14100))) (regOne!42934 (ite c!1448270 (regTwo!42935 r!14100) (regOne!42934 r!14100))))) (reg!21540 (ite c!1448285 (regTwo!42935 (ite c!1448270 (regTwo!42935 r!14100) (regOne!42934 r!14100))) (regOne!42934 (ite c!1448270 (regTwo!42935 r!14100) (regOne!42934 r!14100)))))))))))

(declare-fun bm!732115 () Bool)

(declare-fun call!732123 () Int)

(declare-fun call!732121 () Int)

(assert (=> bm!732115 (= call!732123 call!732121)))

(declare-fun b!7889404 () Bool)

(declare-fun e!4657774 () Bool)

(assert (=> b!7889404 (= e!4657774 (= lt!2681515 1))))

(declare-fun c!1448425 () Bool)

(declare-fun call!732124 () Int)

(declare-fun bm!732116 () Bool)

(declare-fun call!732122 () Int)

(assert (=> bm!732116 (= call!732124 (maxBigInt!0 (ite c!1448425 call!732123 call!732122) (ite c!1448425 call!732122 call!732123)))))

(declare-fun b!7889405 () Bool)

(declare-fun call!732125 () Int)

(assert (=> b!7889405 (= e!4657774 (> lt!2681515 call!732125))))

(declare-fun b!7889406 () Bool)

(declare-fun e!4657770 () Int)

(declare-fun e!4657773 () Int)

(assert (=> b!7889406 (= e!4657770 e!4657773)))

(declare-fun c!1448424 () Bool)

(assert (=> b!7889406 (= c!1448424 ((_ is Concat!30056) (ite c!1448285 (regTwo!42935 (ite c!1448270 (regTwo!42935 r!14100) (regOne!42934 r!14100))) (regOne!42934 (ite c!1448270 (regTwo!42935 r!14100) (regOne!42934 r!14100))))))))

(declare-fun bm!732117 () Bool)

(assert (=> bm!732117 (= call!732125 call!732119)))

(declare-fun b!7889407 () Bool)

(assert (=> b!7889407 (= c!1448425 ((_ is Union!21211) (ite c!1448285 (regTwo!42935 (ite c!1448270 (regTwo!42935 r!14100) (regOne!42934 r!14100))) (regOne!42934 (ite c!1448270 (regTwo!42935 r!14100) (regOne!42934 r!14100))))))))

(assert (=> b!7889407 (= e!4657776 e!4657770)))

(declare-fun b!7889408 () Bool)

(assert (=> b!7889408 (= e!4657767 1)))

(declare-fun bm!732118 () Bool)

(assert (=> bm!732118 (= call!732120 (regexDepth!515 (ite c!1448421 (regOne!42935 (ite c!1448285 (regTwo!42935 (ite c!1448270 (regTwo!42935 r!14100) (regOne!42934 r!14100))) (regOne!42934 (ite c!1448270 (regTwo!42935 r!14100) (regOne!42934 r!14100))))) (regOne!42934 (ite c!1448285 (regTwo!42935 (ite c!1448270 (regTwo!42935 r!14100) (regOne!42934 r!14100))) (regOne!42934 (ite c!1448270 (regTwo!42935 r!14100) (regOne!42934 r!14100))))))))))

(declare-fun bm!732119 () Bool)

(assert (=> bm!732119 (= call!732121 (regexDepth!515 (ite c!1448423 (reg!21540 (ite c!1448285 (regTwo!42935 (ite c!1448270 (regTwo!42935 r!14100) (regOne!42934 r!14100))) (regOne!42934 (ite c!1448270 (regTwo!42935 r!14100) (regOne!42934 r!14100))))) (ite c!1448425 (regOne!42935 (ite c!1448285 (regTwo!42935 (ite c!1448270 (regTwo!42935 r!14100) (regOne!42934 r!14100))) (regOne!42934 (ite c!1448270 (regTwo!42935 r!14100) (regOne!42934 r!14100))))) (regTwo!42934 (ite c!1448285 (regTwo!42935 (ite c!1448270 (regTwo!42935 r!14100) (regOne!42934 r!14100))) (regOne!42934 (ite c!1448270 (regTwo!42935 r!14100) (regOne!42934 r!14100)))))))))))

(declare-fun d!2356806 () Bool)

(declare-fun e!4657769 () Bool)

(assert (=> d!2356806 e!4657769))

(declare-fun res!3131472 () Bool)

(assert (=> d!2356806 (=> (not res!3131472) (not e!4657769))))

(assert (=> d!2356806 (= res!3131472 (> lt!2681515 0))))

(assert (=> d!2356806 (= lt!2681515 e!4657767)))

(declare-fun c!1448422 () Bool)

(assert (=> d!2356806 (= c!1448422 ((_ is ElementMatch!21211) (ite c!1448285 (regTwo!42935 (ite c!1448270 (regTwo!42935 r!14100) (regOne!42934 r!14100))) (regOne!42934 (ite c!1448270 (regTwo!42935 r!14100) (regOne!42934 r!14100))))))))

(assert (=> d!2356806 (= (regexDepth!515 (ite c!1448285 (regTwo!42935 (ite c!1448270 (regTwo!42935 r!14100) (regOne!42934 r!14100))) (regOne!42934 (ite c!1448270 (regTwo!42935 r!14100) (regOne!42934 r!14100))))) lt!2681515)))

(declare-fun b!7889409 () Bool)

(assert (=> b!7889409 (= e!4657773 (+ 1 call!732124))))

(declare-fun bm!732120 () Bool)

(assert (=> bm!732120 (= call!732122 (regexDepth!515 (ite c!1448425 (regTwo!42935 (ite c!1448285 (regTwo!42935 (ite c!1448270 (regTwo!42935 r!14100) (regOne!42934 r!14100))) (regOne!42934 (ite c!1448270 (regTwo!42935 r!14100) (regOne!42934 r!14100))))) (regOne!42934 (ite c!1448285 (regTwo!42935 (ite c!1448270 (regTwo!42935 r!14100) (regOne!42934 r!14100))) (regOne!42934 (ite c!1448270 (regTwo!42935 r!14100) (regOne!42934 r!14100))))))))))

(declare-fun b!7889410 () Bool)

(assert (=> b!7889410 (= e!4657772 (> lt!2681515 call!732125))))

(declare-fun b!7889411 () Bool)

(assert (=> b!7889411 (= e!4657770 (+ 1 call!732124))))

(declare-fun b!7889412 () Bool)

(assert (=> b!7889412 (= e!4657769 e!4657775)))

(assert (=> b!7889412 (= c!1448421 ((_ is Union!21211) (ite c!1448285 (regTwo!42935 (ite c!1448270 (regTwo!42935 r!14100) (regOne!42934 r!14100))) (regOne!42934 (ite c!1448270 (regTwo!42935 r!14100) (regOne!42934 r!14100))))))))

(declare-fun b!7889413 () Bool)

(assert (=> b!7889413 (= e!4657776 (+ 1 call!732121))))

(declare-fun b!7889414 () Bool)

(assert (=> b!7889414 (= e!4657773 1)))

(declare-fun b!7889415 () Bool)

(declare-fun c!1448420 () Bool)

(assert (=> b!7889415 (= c!1448420 ((_ is Star!21211) (ite c!1448285 (regTwo!42935 (ite c!1448270 (regTwo!42935 r!14100) (regOne!42934 r!14100))) (regOne!42934 (ite c!1448270 (regTwo!42935 r!14100) (regOne!42934 r!14100))))))))

(assert (=> b!7889415 (= e!4657768 e!4657774)))

(declare-fun b!7889416 () Bool)

(assert (=> b!7889416 (= e!4657775 e!4657768)))

(assert (=> b!7889416 (= c!1448426 ((_ is Concat!30056) (ite c!1448285 (regTwo!42935 (ite c!1448270 (regTwo!42935 r!14100) (regOne!42934 r!14100))) (regOne!42934 (ite c!1448270 (regTwo!42935 r!14100) (regOne!42934 r!14100))))))))

(assert (= (and d!2356806 c!1448422) b!7889408))

(assert (= (and d!2356806 (not c!1448422)) b!7889401))

(assert (= (and b!7889401 c!1448423) b!7889413))

(assert (= (and b!7889401 (not c!1448423)) b!7889407))

(assert (= (and b!7889407 c!1448425) b!7889411))

(assert (= (and b!7889407 (not c!1448425)) b!7889406))

(assert (= (and b!7889406 c!1448424) b!7889409))

(assert (= (and b!7889406 (not c!1448424)) b!7889414))

(assert (= (or b!7889411 b!7889409) bm!732115))

(assert (= (or b!7889411 b!7889409) bm!732120))

(assert (= (or b!7889411 b!7889409) bm!732116))

(assert (= (or b!7889413 bm!732115) bm!732119))

(assert (= (and d!2356806 res!3131472) b!7889412))

(assert (= (and b!7889412 c!1448421) b!7889402))

(assert (= (and b!7889412 (not c!1448421)) b!7889416))

(assert (= (and b!7889402 res!3131473) b!7889403))

(assert (= (and b!7889416 c!1448426) b!7889400))

(assert (= (and b!7889416 (not c!1448426)) b!7889415))

(assert (= (and b!7889400 res!3131474) b!7889410))

(assert (= (and b!7889415 c!1448420) b!7889405))

(assert (= (and b!7889415 (not c!1448420)) b!7889404))

(assert (= (or b!7889410 b!7889405) bm!732117))

(assert (= (or b!7889402 b!7889400) bm!732118))

(assert (= (or b!7889403 bm!732117) bm!732114))

(declare-fun m!8270246 () Bool)

(assert (=> bm!732120 m!8270246))

(declare-fun m!8270248 () Bool)

(assert (=> bm!732114 m!8270248))

(declare-fun m!8270250 () Bool)

(assert (=> bm!732119 m!8270250))

(declare-fun m!8270252 () Bool)

(assert (=> bm!732116 m!8270252))

(declare-fun m!8270254 () Bool)

(assert (=> bm!732118 m!8270254))

(assert (=> bm!732006 d!2356806))

(declare-fun b!7889417 () Bool)

(declare-fun res!3131477 () Bool)

(declare-fun e!4657782 () Bool)

(assert (=> b!7889417 (=> (not res!3131477) (not e!4657782))))

(declare-fun lt!2681516 () Int)

(declare-fun call!732127 () Int)

(assert (=> b!7889417 (= res!3131477 (> lt!2681516 call!732127))))

(declare-fun e!4657778 () Bool)

(assert (=> b!7889417 (= e!4657778 e!4657782)))

(declare-fun b!7889418 () Bool)

(declare-fun e!4657777 () Int)

(declare-fun e!4657786 () Int)

(assert (=> b!7889418 (= e!4657777 e!4657786)))

(declare-fun c!1448430 () Bool)

(assert (=> b!7889418 (= c!1448430 ((_ is Star!21211) (ite c!1448295 (regTwo!42935 (ite c!1448266 (regTwo!42935 r!14100) (ite c!1448271 (regTwo!42934 r!14100) (reg!21540 r!14100)))) (ite c!1448300 (regTwo!42934 (ite c!1448266 (regTwo!42935 r!14100) (ite c!1448271 (regTwo!42934 r!14100) (reg!21540 r!14100)))) (reg!21540 (ite c!1448266 (regTwo!42935 r!14100) (ite c!1448271 (regTwo!42934 r!14100) (reg!21540 r!14100))))))))))

(declare-fun b!7889419 () Bool)

(declare-fun e!4657785 () Bool)

(declare-fun e!4657781 () Bool)

(assert (=> b!7889419 (= e!4657785 e!4657781)))

(declare-fun res!3131476 () Bool)

(assert (=> b!7889419 (= res!3131476 (> lt!2681516 call!732127))))

(assert (=> b!7889419 (=> (not res!3131476) (not e!4657781))))

(declare-fun b!7889420 () Bool)

(declare-fun call!732126 () Int)

(assert (=> b!7889420 (= e!4657781 (> lt!2681516 call!732126))))

(declare-fun c!1448428 () Bool)

(declare-fun c!1448433 () Bool)

(declare-fun bm!732121 () Bool)

(assert (=> bm!732121 (= call!732126 (regexDepth!515 (ite c!1448428 (regTwo!42935 (ite c!1448295 (regTwo!42935 (ite c!1448266 (regTwo!42935 r!14100) (ite c!1448271 (regTwo!42934 r!14100) (reg!21540 r!14100)))) (ite c!1448300 (regTwo!42934 (ite c!1448266 (regTwo!42935 r!14100) (ite c!1448271 (regTwo!42934 r!14100) (reg!21540 r!14100)))) (reg!21540 (ite c!1448266 (regTwo!42935 r!14100) (ite c!1448271 (regTwo!42934 r!14100) (reg!21540 r!14100))))))) (ite c!1448433 (regTwo!42934 (ite c!1448295 (regTwo!42935 (ite c!1448266 (regTwo!42935 r!14100) (ite c!1448271 (regTwo!42934 r!14100) (reg!21540 r!14100)))) (ite c!1448300 (regTwo!42934 (ite c!1448266 (regTwo!42935 r!14100) (ite c!1448271 (regTwo!42934 r!14100) (reg!21540 r!14100)))) (reg!21540 (ite c!1448266 (regTwo!42935 r!14100) (ite c!1448271 (regTwo!42934 r!14100) (reg!21540 r!14100))))))) (reg!21540 (ite c!1448295 (regTwo!42935 (ite c!1448266 (regTwo!42935 r!14100) (ite c!1448271 (regTwo!42934 r!14100) (reg!21540 r!14100)))) (ite c!1448300 (regTwo!42934 (ite c!1448266 (regTwo!42935 r!14100) (ite c!1448271 (regTwo!42934 r!14100) (reg!21540 r!14100)))) (reg!21540 (ite c!1448266 (regTwo!42935 r!14100) (ite c!1448271 (regTwo!42934 r!14100) (reg!21540 r!14100)))))))))))))

(declare-fun bm!732122 () Bool)

(declare-fun call!732130 () Int)

(declare-fun call!732128 () Int)

(assert (=> bm!732122 (= call!732130 call!732128)))

(declare-fun b!7889421 () Bool)

(declare-fun e!4657784 () Bool)

(assert (=> b!7889421 (= e!4657784 (= lt!2681516 1))))

(declare-fun c!1448432 () Bool)

(declare-fun call!732129 () Int)

(declare-fun call!732131 () Int)

(declare-fun bm!732123 () Bool)

(assert (=> bm!732123 (= call!732131 (maxBigInt!0 (ite c!1448432 call!732130 call!732129) (ite c!1448432 call!732129 call!732130)))))

(declare-fun b!7889422 () Bool)

(declare-fun call!732132 () Int)

(assert (=> b!7889422 (= e!4657784 (> lt!2681516 call!732132))))

(declare-fun b!7889423 () Bool)

(declare-fun e!4657780 () Int)

(declare-fun e!4657783 () Int)

(assert (=> b!7889423 (= e!4657780 e!4657783)))

(declare-fun c!1448431 () Bool)

(assert (=> b!7889423 (= c!1448431 ((_ is Concat!30056) (ite c!1448295 (regTwo!42935 (ite c!1448266 (regTwo!42935 r!14100) (ite c!1448271 (regTwo!42934 r!14100) (reg!21540 r!14100)))) (ite c!1448300 (regTwo!42934 (ite c!1448266 (regTwo!42935 r!14100) (ite c!1448271 (regTwo!42934 r!14100) (reg!21540 r!14100)))) (reg!21540 (ite c!1448266 (regTwo!42935 r!14100) (ite c!1448271 (regTwo!42934 r!14100) (reg!21540 r!14100))))))))))

(declare-fun bm!732124 () Bool)

(assert (=> bm!732124 (= call!732132 call!732126)))

(declare-fun b!7889424 () Bool)

(assert (=> b!7889424 (= c!1448432 ((_ is Union!21211) (ite c!1448295 (regTwo!42935 (ite c!1448266 (regTwo!42935 r!14100) (ite c!1448271 (regTwo!42934 r!14100) (reg!21540 r!14100)))) (ite c!1448300 (regTwo!42934 (ite c!1448266 (regTwo!42935 r!14100) (ite c!1448271 (regTwo!42934 r!14100) (reg!21540 r!14100)))) (reg!21540 (ite c!1448266 (regTwo!42935 r!14100) (ite c!1448271 (regTwo!42934 r!14100) (reg!21540 r!14100))))))))))

(assert (=> b!7889424 (= e!4657786 e!4657780)))

(declare-fun b!7889425 () Bool)

(assert (=> b!7889425 (= e!4657777 1)))

(declare-fun bm!732125 () Bool)

(assert (=> bm!732125 (= call!732127 (regexDepth!515 (ite c!1448428 (regOne!42935 (ite c!1448295 (regTwo!42935 (ite c!1448266 (regTwo!42935 r!14100) (ite c!1448271 (regTwo!42934 r!14100) (reg!21540 r!14100)))) (ite c!1448300 (regTwo!42934 (ite c!1448266 (regTwo!42935 r!14100) (ite c!1448271 (regTwo!42934 r!14100) (reg!21540 r!14100)))) (reg!21540 (ite c!1448266 (regTwo!42935 r!14100) (ite c!1448271 (regTwo!42934 r!14100) (reg!21540 r!14100))))))) (regOne!42934 (ite c!1448295 (regTwo!42935 (ite c!1448266 (regTwo!42935 r!14100) (ite c!1448271 (regTwo!42934 r!14100) (reg!21540 r!14100)))) (ite c!1448300 (regTwo!42934 (ite c!1448266 (regTwo!42935 r!14100) (ite c!1448271 (regTwo!42934 r!14100) (reg!21540 r!14100)))) (reg!21540 (ite c!1448266 (regTwo!42935 r!14100) (ite c!1448271 (regTwo!42934 r!14100) (reg!21540 r!14100))))))))))))

(declare-fun bm!732126 () Bool)

(assert (=> bm!732126 (= call!732128 (regexDepth!515 (ite c!1448430 (reg!21540 (ite c!1448295 (regTwo!42935 (ite c!1448266 (regTwo!42935 r!14100) (ite c!1448271 (regTwo!42934 r!14100) (reg!21540 r!14100)))) (ite c!1448300 (regTwo!42934 (ite c!1448266 (regTwo!42935 r!14100) (ite c!1448271 (regTwo!42934 r!14100) (reg!21540 r!14100)))) (reg!21540 (ite c!1448266 (regTwo!42935 r!14100) (ite c!1448271 (regTwo!42934 r!14100) (reg!21540 r!14100))))))) (ite c!1448432 (regOne!42935 (ite c!1448295 (regTwo!42935 (ite c!1448266 (regTwo!42935 r!14100) (ite c!1448271 (regTwo!42934 r!14100) (reg!21540 r!14100)))) (ite c!1448300 (regTwo!42934 (ite c!1448266 (regTwo!42935 r!14100) (ite c!1448271 (regTwo!42934 r!14100) (reg!21540 r!14100)))) (reg!21540 (ite c!1448266 (regTwo!42935 r!14100) (ite c!1448271 (regTwo!42934 r!14100) (reg!21540 r!14100))))))) (regTwo!42934 (ite c!1448295 (regTwo!42935 (ite c!1448266 (regTwo!42935 r!14100) (ite c!1448271 (regTwo!42934 r!14100) (reg!21540 r!14100)))) (ite c!1448300 (regTwo!42934 (ite c!1448266 (regTwo!42935 r!14100) (ite c!1448271 (regTwo!42934 r!14100) (reg!21540 r!14100)))) (reg!21540 (ite c!1448266 (regTwo!42935 r!14100) (ite c!1448271 (regTwo!42934 r!14100) (reg!21540 r!14100)))))))))))))

(declare-fun d!2356808 () Bool)

(declare-fun e!4657779 () Bool)

(assert (=> d!2356808 e!4657779))

(declare-fun res!3131475 () Bool)

(assert (=> d!2356808 (=> (not res!3131475) (not e!4657779))))

(assert (=> d!2356808 (= res!3131475 (> lt!2681516 0))))

(assert (=> d!2356808 (= lt!2681516 e!4657777)))

(declare-fun c!1448429 () Bool)

(assert (=> d!2356808 (= c!1448429 ((_ is ElementMatch!21211) (ite c!1448295 (regTwo!42935 (ite c!1448266 (regTwo!42935 r!14100) (ite c!1448271 (regTwo!42934 r!14100) (reg!21540 r!14100)))) (ite c!1448300 (regTwo!42934 (ite c!1448266 (regTwo!42935 r!14100) (ite c!1448271 (regTwo!42934 r!14100) (reg!21540 r!14100)))) (reg!21540 (ite c!1448266 (regTwo!42935 r!14100) (ite c!1448271 (regTwo!42934 r!14100) (reg!21540 r!14100))))))))))

(assert (=> d!2356808 (= (regexDepth!515 (ite c!1448295 (regTwo!42935 (ite c!1448266 (regTwo!42935 r!14100) (ite c!1448271 (regTwo!42934 r!14100) (reg!21540 r!14100)))) (ite c!1448300 (regTwo!42934 (ite c!1448266 (regTwo!42935 r!14100) (ite c!1448271 (regTwo!42934 r!14100) (reg!21540 r!14100)))) (reg!21540 (ite c!1448266 (regTwo!42935 r!14100) (ite c!1448271 (regTwo!42934 r!14100) (reg!21540 r!14100))))))) lt!2681516)))

(declare-fun b!7889426 () Bool)

(assert (=> b!7889426 (= e!4657783 (+ 1 call!732131))))

(declare-fun bm!732127 () Bool)

(assert (=> bm!732127 (= call!732129 (regexDepth!515 (ite c!1448432 (regTwo!42935 (ite c!1448295 (regTwo!42935 (ite c!1448266 (regTwo!42935 r!14100) (ite c!1448271 (regTwo!42934 r!14100) (reg!21540 r!14100)))) (ite c!1448300 (regTwo!42934 (ite c!1448266 (regTwo!42935 r!14100) (ite c!1448271 (regTwo!42934 r!14100) (reg!21540 r!14100)))) (reg!21540 (ite c!1448266 (regTwo!42935 r!14100) (ite c!1448271 (regTwo!42934 r!14100) (reg!21540 r!14100))))))) (regOne!42934 (ite c!1448295 (regTwo!42935 (ite c!1448266 (regTwo!42935 r!14100) (ite c!1448271 (regTwo!42934 r!14100) (reg!21540 r!14100)))) (ite c!1448300 (regTwo!42934 (ite c!1448266 (regTwo!42935 r!14100) (ite c!1448271 (regTwo!42934 r!14100) (reg!21540 r!14100)))) (reg!21540 (ite c!1448266 (regTwo!42935 r!14100) (ite c!1448271 (regTwo!42934 r!14100) (reg!21540 r!14100))))))))))))

(declare-fun b!7889427 () Bool)

(assert (=> b!7889427 (= e!4657782 (> lt!2681516 call!732132))))

(declare-fun b!7889428 () Bool)

(assert (=> b!7889428 (= e!4657780 (+ 1 call!732131))))

(declare-fun b!7889429 () Bool)

(assert (=> b!7889429 (= e!4657779 e!4657785)))

(assert (=> b!7889429 (= c!1448428 ((_ is Union!21211) (ite c!1448295 (regTwo!42935 (ite c!1448266 (regTwo!42935 r!14100) (ite c!1448271 (regTwo!42934 r!14100) (reg!21540 r!14100)))) (ite c!1448300 (regTwo!42934 (ite c!1448266 (regTwo!42935 r!14100) (ite c!1448271 (regTwo!42934 r!14100) (reg!21540 r!14100)))) (reg!21540 (ite c!1448266 (regTwo!42935 r!14100) (ite c!1448271 (regTwo!42934 r!14100) (reg!21540 r!14100))))))))))

(declare-fun b!7889430 () Bool)

(assert (=> b!7889430 (= e!4657786 (+ 1 call!732128))))

(declare-fun b!7889431 () Bool)

(assert (=> b!7889431 (= e!4657783 1)))

(declare-fun c!1448427 () Bool)

(declare-fun b!7889432 () Bool)

(assert (=> b!7889432 (= c!1448427 ((_ is Star!21211) (ite c!1448295 (regTwo!42935 (ite c!1448266 (regTwo!42935 r!14100) (ite c!1448271 (regTwo!42934 r!14100) (reg!21540 r!14100)))) (ite c!1448300 (regTwo!42934 (ite c!1448266 (regTwo!42935 r!14100) (ite c!1448271 (regTwo!42934 r!14100) (reg!21540 r!14100)))) (reg!21540 (ite c!1448266 (regTwo!42935 r!14100) (ite c!1448271 (regTwo!42934 r!14100) (reg!21540 r!14100))))))))))

(assert (=> b!7889432 (= e!4657778 e!4657784)))

(declare-fun b!7889433 () Bool)

(assert (=> b!7889433 (= e!4657785 e!4657778)))

(assert (=> b!7889433 (= c!1448433 ((_ is Concat!30056) (ite c!1448295 (regTwo!42935 (ite c!1448266 (regTwo!42935 r!14100) (ite c!1448271 (regTwo!42934 r!14100) (reg!21540 r!14100)))) (ite c!1448300 (regTwo!42934 (ite c!1448266 (regTwo!42935 r!14100) (ite c!1448271 (regTwo!42934 r!14100) (reg!21540 r!14100)))) (reg!21540 (ite c!1448266 (regTwo!42935 r!14100) (ite c!1448271 (regTwo!42934 r!14100) (reg!21540 r!14100))))))))))

(assert (= (and d!2356808 c!1448429) b!7889425))

(assert (= (and d!2356808 (not c!1448429)) b!7889418))

(assert (= (and b!7889418 c!1448430) b!7889430))

(assert (= (and b!7889418 (not c!1448430)) b!7889424))

(assert (= (and b!7889424 c!1448432) b!7889428))

(assert (= (and b!7889424 (not c!1448432)) b!7889423))

(assert (= (and b!7889423 c!1448431) b!7889426))

(assert (= (and b!7889423 (not c!1448431)) b!7889431))

(assert (= (or b!7889428 b!7889426) bm!732122))

(assert (= (or b!7889428 b!7889426) bm!732127))

(assert (= (or b!7889428 b!7889426) bm!732123))

(assert (= (or b!7889430 bm!732122) bm!732126))

(assert (= (and d!2356808 res!3131475) b!7889429))

(assert (= (and b!7889429 c!1448428) b!7889419))

(assert (= (and b!7889429 (not c!1448428)) b!7889433))

(assert (= (and b!7889419 res!3131476) b!7889420))

(assert (= (and b!7889433 c!1448433) b!7889417))

(assert (= (and b!7889433 (not c!1448433)) b!7889432))

(assert (= (and b!7889417 res!3131477) b!7889427))

(assert (= (and b!7889432 c!1448427) b!7889422))

(assert (= (and b!7889432 (not c!1448427)) b!7889421))

(assert (= (or b!7889427 b!7889422) bm!732124))

(assert (= (or b!7889419 b!7889417) bm!732125))

(assert (= (or b!7889420 bm!732124) bm!732121))

(declare-fun m!8270256 () Bool)

(assert (=> bm!732127 m!8270256))

(declare-fun m!8270258 () Bool)

(assert (=> bm!732121 m!8270258))

(declare-fun m!8270260 () Bool)

(assert (=> bm!732126 m!8270260))

(declare-fun m!8270262 () Bool)

(assert (=> bm!732123 m!8270262))

(declare-fun m!8270264 () Bool)

(assert (=> bm!732125 m!8270264))

(assert (=> bm!732014 d!2356808))

(declare-fun d!2356810 () Bool)

(assert (=> d!2356810 (= (Exists!4764 (ite c!1448302 lambda!472168 lambda!472169)) (choose!59698 (ite c!1448302 lambda!472168 lambda!472169)))))

(declare-fun bs!1967496 () Bool)

(assert (= bs!1967496 d!2356810))

(declare-fun m!8270266 () Bool)

(assert (=> bs!1967496 m!8270266))

(assert (=> bm!732022 d!2356810))

(declare-fun d!2356812 () Bool)

(declare-fun c!1448434 () Bool)

(assert (=> d!2356812 (= c!1448434 ((_ is Nil!73944) lt!2681498))))

(declare-fun e!4657787 () (InoxSet C!42748))

(assert (=> d!2356812 (= (content!15695 lt!2681498) e!4657787)))

(declare-fun b!7889434 () Bool)

(assert (=> b!7889434 (= e!4657787 ((as const (Array C!42748 Bool)) false))))

(declare-fun b!7889435 () Bool)

(assert (=> b!7889435 (= e!4657787 ((_ map or) (store ((as const (Array C!42748 Bool)) false) (h!80392 lt!2681498) true) (content!15695 (t!388803 lt!2681498))))))

(assert (= (and d!2356812 c!1448434) b!7889434))

(assert (= (and d!2356812 (not c!1448434)) b!7889435))

(declare-fun m!8270268 () Bool)

(assert (=> b!7889435 m!8270268))

(declare-fun m!8270270 () Bool)

(assert (=> b!7889435 m!8270270))

(assert (=> d!2356750 d!2356812))

(declare-fun d!2356814 () Bool)

(declare-fun c!1448435 () Bool)

(assert (=> d!2356814 (= c!1448435 ((_ is Nil!73944) (t!388803 (_1!38333 cut!2))))))

(declare-fun e!4657788 () (InoxSet C!42748))

(assert (=> d!2356814 (= (content!15695 (t!388803 (_1!38333 cut!2))) e!4657788)))

(declare-fun b!7889436 () Bool)

(assert (=> b!7889436 (= e!4657788 ((as const (Array C!42748 Bool)) false))))

(declare-fun b!7889437 () Bool)

(assert (=> b!7889437 (= e!4657788 ((_ map or) (store ((as const (Array C!42748 Bool)) false) (h!80392 (t!388803 (_1!38333 cut!2))) true) (content!15695 (t!388803 (t!388803 (_1!38333 cut!2))))))))

(assert (= (and d!2356814 c!1448435) b!7889436))

(assert (= (and d!2356814 (not c!1448435)) b!7889437))

(declare-fun m!8270272 () Bool)

(assert (=> b!7889437 m!8270272))

(declare-fun m!8270274 () Bool)

(assert (=> b!7889437 m!8270274))

(assert (=> d!2356750 d!2356814))

(assert (=> d!2356750 d!2356748))

(declare-fun d!2356816 () Bool)

(assert (=> d!2356816 true))

(assert (=> d!2356816 true))

(declare-fun res!3131480 () Bool)

(assert (=> d!2356816 (= (choose!59698 (ite c!1448245 lambda!472164 lambda!472165)) res!3131480)))

(assert (=> d!2356760 d!2356816))

(declare-fun d!2356818 () Bool)

(declare-fun res!3131494 () Bool)

(declare-fun e!4657803 () Bool)

(assert (=> d!2356818 (=> res!3131494 e!4657803)))

(assert (=> d!2356818 (= res!3131494 ((_ is EmptyExpr!21211) (reg!21540 r!14100)))))

(assert (=> d!2356818 (= (nullableFct!3736 (reg!21540 r!14100)) e!4657803)))

(declare-fun b!7889452 () Bool)

(declare-fun e!4657805 () Bool)

(declare-fun e!4657802 () Bool)

(assert (=> b!7889452 (= e!4657805 e!4657802)))

(declare-fun res!3131492 () Bool)

(declare-fun call!732138 () Bool)

(assert (=> b!7889452 (= res!3131492 call!732138)))

(assert (=> b!7889452 (=> (not res!3131492) (not e!4657802))))

(declare-fun bm!732132 () Bool)

(declare-fun c!1448438 () Bool)

(assert (=> bm!732132 (= call!732138 (nullable!9466 (ite c!1448438 (regOne!42935 (reg!21540 r!14100)) (regOne!42934 (reg!21540 r!14100)))))))

(declare-fun bm!732133 () Bool)

(declare-fun call!732137 () Bool)

(assert (=> bm!732133 (= call!732137 (nullable!9466 (ite c!1448438 (regTwo!42935 (reg!21540 r!14100)) (regTwo!42934 (reg!21540 r!14100)))))))

(declare-fun b!7889453 () Bool)

(declare-fun e!4657806 () Bool)

(assert (=> b!7889453 (= e!4657806 call!732137)))

(declare-fun b!7889454 () Bool)

(assert (=> b!7889454 (= e!4657802 call!732137)))

(declare-fun b!7889455 () Bool)

(declare-fun e!4657804 () Bool)

(assert (=> b!7889455 (= e!4657803 e!4657804)))

(declare-fun res!3131493 () Bool)

(assert (=> b!7889455 (=> (not res!3131493) (not e!4657804))))

(assert (=> b!7889455 (= res!3131493 (and (not ((_ is EmptyLang!21211) (reg!21540 r!14100))) (not ((_ is ElementMatch!21211) (reg!21540 r!14100)))))))

(declare-fun b!7889456 () Bool)

(declare-fun e!4657801 () Bool)

(assert (=> b!7889456 (= e!4657801 e!4657805)))

(assert (=> b!7889456 (= c!1448438 ((_ is Union!21211) (reg!21540 r!14100)))))

(declare-fun b!7889457 () Bool)

(assert (=> b!7889457 (= e!4657805 e!4657806)))

(declare-fun res!3131495 () Bool)

(assert (=> b!7889457 (= res!3131495 call!732138)))

(assert (=> b!7889457 (=> res!3131495 e!4657806)))

(declare-fun b!7889458 () Bool)

(assert (=> b!7889458 (= e!4657804 e!4657801)))

(declare-fun res!3131491 () Bool)

(assert (=> b!7889458 (=> res!3131491 e!4657801)))

(assert (=> b!7889458 (= res!3131491 ((_ is Star!21211) (reg!21540 r!14100)))))

(assert (= (and d!2356818 (not res!3131494)) b!7889455))

(assert (= (and b!7889455 res!3131493) b!7889458))

(assert (= (and b!7889458 (not res!3131491)) b!7889456))

(assert (= (and b!7889456 c!1448438) b!7889457))

(assert (= (and b!7889456 (not c!1448438)) b!7889452))

(assert (= (and b!7889457 (not res!3131495)) b!7889453))

(assert (= (and b!7889452 res!3131492) b!7889454))

(assert (= (or b!7889453 b!7889454) bm!732133))

(assert (= (or b!7889457 b!7889452) bm!732132))

(declare-fun m!8270276 () Bool)

(assert (=> bm!732132 m!8270276))

(declare-fun m!8270278 () Bool)

(assert (=> bm!732133 m!8270278))

(assert (=> d!2356752 d!2356818))

(declare-fun b!7889459 () Bool)

(declare-fun res!3131498 () Bool)

(declare-fun e!4657812 () Bool)

(assert (=> b!7889459 (=> (not res!3131498) (not e!4657812))))

(declare-fun lt!2681517 () Int)

(declare-fun call!732140 () Int)

(assert (=> b!7889459 (= res!3131498 (> lt!2681517 call!732140))))

(declare-fun e!4657808 () Bool)

(assert (=> b!7889459 (= e!4657808 e!4657812)))

(declare-fun b!7889460 () Bool)

(declare-fun e!4657807 () Int)

(declare-fun e!4657816 () Int)

(assert (=> b!7889460 (= e!4657807 e!4657816)))

(declare-fun c!1448442 () Bool)

(assert (=> b!7889460 (= c!1448442 ((_ is Star!21211) (ite c!1448330 (regTwo!42935 (ite c!1448266 (regOne!42935 r!14100) (regOne!42934 r!14100))) (regOne!42934 (ite c!1448266 (regOne!42935 r!14100) (regOne!42934 r!14100))))))))

(declare-fun b!7889461 () Bool)

(declare-fun e!4657815 () Bool)

(declare-fun e!4657811 () Bool)

(assert (=> b!7889461 (= e!4657815 e!4657811)))

(declare-fun res!3131497 () Bool)

(assert (=> b!7889461 (= res!3131497 (> lt!2681517 call!732140))))

(assert (=> b!7889461 (=> (not res!3131497) (not e!4657811))))

(declare-fun b!7889462 () Bool)

(declare-fun call!732139 () Int)

(assert (=> b!7889462 (= e!4657811 (> lt!2681517 call!732139))))

(declare-fun c!1448440 () Bool)

(declare-fun bm!732134 () Bool)

(declare-fun c!1448445 () Bool)

(assert (=> bm!732134 (= call!732139 (regexDepth!515 (ite c!1448440 (regTwo!42935 (ite c!1448330 (regTwo!42935 (ite c!1448266 (regOne!42935 r!14100) (regOne!42934 r!14100))) (regOne!42934 (ite c!1448266 (regOne!42935 r!14100) (regOne!42934 r!14100))))) (ite c!1448445 (regTwo!42934 (ite c!1448330 (regTwo!42935 (ite c!1448266 (regOne!42935 r!14100) (regOne!42934 r!14100))) (regOne!42934 (ite c!1448266 (regOne!42935 r!14100) (regOne!42934 r!14100))))) (reg!21540 (ite c!1448330 (regTwo!42935 (ite c!1448266 (regOne!42935 r!14100) (regOne!42934 r!14100))) (regOne!42934 (ite c!1448266 (regOne!42935 r!14100) (regOne!42934 r!14100)))))))))))

(declare-fun bm!732135 () Bool)

(declare-fun call!732143 () Int)

(declare-fun call!732141 () Int)

(assert (=> bm!732135 (= call!732143 call!732141)))

(declare-fun b!7889463 () Bool)

(declare-fun e!4657814 () Bool)

(assert (=> b!7889463 (= e!4657814 (= lt!2681517 1))))

(declare-fun call!732142 () Int)

(declare-fun c!1448444 () Bool)

(declare-fun bm!732136 () Bool)

(declare-fun call!732144 () Int)

(assert (=> bm!732136 (= call!732144 (maxBigInt!0 (ite c!1448444 call!732143 call!732142) (ite c!1448444 call!732142 call!732143)))))

(declare-fun b!7889464 () Bool)

(declare-fun call!732145 () Int)

(assert (=> b!7889464 (= e!4657814 (> lt!2681517 call!732145))))

(declare-fun b!7889465 () Bool)

(declare-fun e!4657810 () Int)

(declare-fun e!4657813 () Int)

(assert (=> b!7889465 (= e!4657810 e!4657813)))

(declare-fun c!1448443 () Bool)

(assert (=> b!7889465 (= c!1448443 ((_ is Concat!30056) (ite c!1448330 (regTwo!42935 (ite c!1448266 (regOne!42935 r!14100) (regOne!42934 r!14100))) (regOne!42934 (ite c!1448266 (regOne!42935 r!14100) (regOne!42934 r!14100))))))))

(declare-fun bm!732137 () Bool)

(assert (=> bm!732137 (= call!732145 call!732139)))

(declare-fun b!7889466 () Bool)

(assert (=> b!7889466 (= c!1448444 ((_ is Union!21211) (ite c!1448330 (regTwo!42935 (ite c!1448266 (regOne!42935 r!14100) (regOne!42934 r!14100))) (regOne!42934 (ite c!1448266 (regOne!42935 r!14100) (regOne!42934 r!14100))))))))

(assert (=> b!7889466 (= e!4657816 e!4657810)))

(declare-fun b!7889467 () Bool)

(assert (=> b!7889467 (= e!4657807 1)))

(declare-fun bm!732138 () Bool)

(assert (=> bm!732138 (= call!732140 (regexDepth!515 (ite c!1448440 (regOne!42935 (ite c!1448330 (regTwo!42935 (ite c!1448266 (regOne!42935 r!14100) (regOne!42934 r!14100))) (regOne!42934 (ite c!1448266 (regOne!42935 r!14100) (regOne!42934 r!14100))))) (regOne!42934 (ite c!1448330 (regTwo!42935 (ite c!1448266 (regOne!42935 r!14100) (regOne!42934 r!14100))) (regOne!42934 (ite c!1448266 (regOne!42935 r!14100) (regOne!42934 r!14100))))))))))

(declare-fun bm!732139 () Bool)

(assert (=> bm!732139 (= call!732141 (regexDepth!515 (ite c!1448442 (reg!21540 (ite c!1448330 (regTwo!42935 (ite c!1448266 (regOne!42935 r!14100) (regOne!42934 r!14100))) (regOne!42934 (ite c!1448266 (regOne!42935 r!14100) (regOne!42934 r!14100))))) (ite c!1448444 (regOne!42935 (ite c!1448330 (regTwo!42935 (ite c!1448266 (regOne!42935 r!14100) (regOne!42934 r!14100))) (regOne!42934 (ite c!1448266 (regOne!42935 r!14100) (regOne!42934 r!14100))))) (regTwo!42934 (ite c!1448330 (regTwo!42935 (ite c!1448266 (regOne!42935 r!14100) (regOne!42934 r!14100))) (regOne!42934 (ite c!1448266 (regOne!42935 r!14100) (regOne!42934 r!14100)))))))))))

(declare-fun d!2356820 () Bool)

(declare-fun e!4657809 () Bool)

(assert (=> d!2356820 e!4657809))

(declare-fun res!3131496 () Bool)

(assert (=> d!2356820 (=> (not res!3131496) (not e!4657809))))

(assert (=> d!2356820 (= res!3131496 (> lt!2681517 0))))

(assert (=> d!2356820 (= lt!2681517 e!4657807)))

(declare-fun c!1448441 () Bool)

(assert (=> d!2356820 (= c!1448441 ((_ is ElementMatch!21211) (ite c!1448330 (regTwo!42935 (ite c!1448266 (regOne!42935 r!14100) (regOne!42934 r!14100))) (regOne!42934 (ite c!1448266 (regOne!42935 r!14100) (regOne!42934 r!14100))))))))

(assert (=> d!2356820 (= (regexDepth!515 (ite c!1448330 (regTwo!42935 (ite c!1448266 (regOne!42935 r!14100) (regOne!42934 r!14100))) (regOne!42934 (ite c!1448266 (regOne!42935 r!14100) (regOne!42934 r!14100))))) lt!2681517)))

(declare-fun b!7889468 () Bool)

(assert (=> b!7889468 (= e!4657813 (+ 1 call!732144))))

(declare-fun bm!732140 () Bool)

(assert (=> bm!732140 (= call!732142 (regexDepth!515 (ite c!1448444 (regTwo!42935 (ite c!1448330 (regTwo!42935 (ite c!1448266 (regOne!42935 r!14100) (regOne!42934 r!14100))) (regOne!42934 (ite c!1448266 (regOne!42935 r!14100) (regOne!42934 r!14100))))) (regOne!42934 (ite c!1448330 (regTwo!42935 (ite c!1448266 (regOne!42935 r!14100) (regOne!42934 r!14100))) (regOne!42934 (ite c!1448266 (regOne!42935 r!14100) (regOne!42934 r!14100))))))))))

(declare-fun b!7889469 () Bool)

(assert (=> b!7889469 (= e!4657812 (> lt!2681517 call!732145))))

(declare-fun b!7889470 () Bool)

(assert (=> b!7889470 (= e!4657810 (+ 1 call!732144))))

(declare-fun b!7889471 () Bool)

(assert (=> b!7889471 (= e!4657809 e!4657815)))

(assert (=> b!7889471 (= c!1448440 ((_ is Union!21211) (ite c!1448330 (regTwo!42935 (ite c!1448266 (regOne!42935 r!14100) (regOne!42934 r!14100))) (regOne!42934 (ite c!1448266 (regOne!42935 r!14100) (regOne!42934 r!14100))))))))

(declare-fun b!7889472 () Bool)

(assert (=> b!7889472 (= e!4657816 (+ 1 call!732141))))

(declare-fun b!7889473 () Bool)

(assert (=> b!7889473 (= e!4657813 1)))

(declare-fun b!7889474 () Bool)

(declare-fun c!1448439 () Bool)

(assert (=> b!7889474 (= c!1448439 ((_ is Star!21211) (ite c!1448330 (regTwo!42935 (ite c!1448266 (regOne!42935 r!14100) (regOne!42934 r!14100))) (regOne!42934 (ite c!1448266 (regOne!42935 r!14100) (regOne!42934 r!14100))))))))

(assert (=> b!7889474 (= e!4657808 e!4657814)))

(declare-fun b!7889475 () Bool)

(assert (=> b!7889475 (= e!4657815 e!4657808)))

(assert (=> b!7889475 (= c!1448445 ((_ is Concat!30056) (ite c!1448330 (regTwo!42935 (ite c!1448266 (regOne!42935 r!14100) (regOne!42934 r!14100))) (regOne!42934 (ite c!1448266 (regOne!42935 r!14100) (regOne!42934 r!14100))))))))

(assert (= (and d!2356820 c!1448441) b!7889467))

(assert (= (and d!2356820 (not c!1448441)) b!7889460))

(assert (= (and b!7889460 c!1448442) b!7889472))

(assert (= (and b!7889460 (not c!1448442)) b!7889466))

(assert (= (and b!7889466 c!1448444) b!7889470))

(assert (= (and b!7889466 (not c!1448444)) b!7889465))

(assert (= (and b!7889465 c!1448443) b!7889468))

(assert (= (and b!7889465 (not c!1448443)) b!7889473))

(assert (= (or b!7889470 b!7889468) bm!732135))

(assert (= (or b!7889470 b!7889468) bm!732140))

(assert (= (or b!7889470 b!7889468) bm!732136))

(assert (= (or b!7889472 bm!732135) bm!732139))

(assert (= (and d!2356820 res!3131496) b!7889471))

(assert (= (and b!7889471 c!1448440) b!7889461))

(assert (= (and b!7889471 (not c!1448440)) b!7889475))

(assert (= (and b!7889461 res!3131497) b!7889462))

(assert (= (and b!7889475 c!1448445) b!7889459))

(assert (= (and b!7889475 (not c!1448445)) b!7889474))

(assert (= (and b!7889459 res!3131498) b!7889469))

(assert (= (and b!7889474 c!1448439) b!7889464))

(assert (= (and b!7889474 (not c!1448439)) b!7889463))

(assert (= (or b!7889469 b!7889464) bm!732137))

(assert (= (or b!7889461 b!7889459) bm!732138))

(assert (= (or b!7889462 bm!732137) bm!732134))

(declare-fun m!8270280 () Bool)

(assert (=> bm!732140 m!8270280))

(declare-fun m!8270282 () Bool)

(assert (=> bm!732134 m!8270282))

(declare-fun m!8270284 () Bool)

(assert (=> bm!732139 m!8270284))

(declare-fun m!8270286 () Bool)

(assert (=> bm!732136 m!8270286))

(declare-fun m!8270288 () Bool)

(assert (=> bm!732138 m!8270288))

(assert (=> bm!732041 d!2356820))

(declare-fun bs!1967497 () Bool)

(declare-fun b!7889485 () Bool)

(assert (= bs!1967497 (and b!7889485 b!7888892)))

(declare-fun lambda!472176 () Int)

(assert (=> bs!1967497 (= (and (= (reg!21540 (regOne!42935 (regTwo!42935 (reg!21540 r!14100)))) (reg!21540 (regOne!42935 (reg!21540 r!14100)))) (= (regOne!42935 (regTwo!42935 (reg!21540 r!14100))) (regOne!42935 (reg!21540 r!14100)))) (= lambda!472176 lambda!472168))))

(declare-fun bs!1967498 () Bool)

(assert (= bs!1967498 (and b!7889485 b!7888707)))

(assert (=> bs!1967498 (= (and (= (reg!21540 (regOne!42935 (regTwo!42935 (reg!21540 r!14100)))) (reg!21540 (reg!21540 r!14100))) (= (regOne!42935 (regTwo!42935 (reg!21540 r!14100))) (reg!21540 r!14100))) (= lambda!472176 lambda!472164))))

(declare-fun bs!1967499 () Bool)

(assert (= bs!1967499 (and b!7889485 b!7888830)))

(assert (=> bs!1967499 (= (and (= (reg!21540 (regOne!42935 (regTwo!42935 (reg!21540 r!14100)))) (reg!21540 (regTwo!42935 (reg!21540 r!14100)))) (= (regOne!42935 (regTwo!42935 (reg!21540 r!14100))) (regTwo!42935 (reg!21540 r!14100)))) (= lambda!472176 lambda!472166))))

(declare-fun bs!1967500 () Bool)

(assert (= bs!1967500 (and b!7889485 b!7889311)))

(assert (=> bs!1967500 (not (= lambda!472176 lambda!472175))))

(declare-fun bs!1967501 () Bool)

(assert (= bs!1967501 (and b!7889485 b!7888888)))

(assert (=> bs!1967501 (not (= lambda!472176 lambda!472169))))

(declare-fun bs!1967502 () Bool)

(assert (= bs!1967502 (and b!7889485 b!7888826)))

(assert (=> bs!1967502 (not (= lambda!472176 lambda!472167))))

(declare-fun bs!1967503 () Bool)

(assert (= bs!1967503 (and b!7889485 b!7888703)))

(assert (=> bs!1967503 (not (= lambda!472176 lambda!472165))))

(declare-fun bs!1967504 () Bool)

(assert (= bs!1967504 (and b!7889485 b!7889315)))

(assert (=> bs!1967504 (= (and (= (reg!21540 (regOne!42935 (regTwo!42935 (reg!21540 r!14100)))) (reg!21540 (regTwo!42935 (regOne!42935 (reg!21540 r!14100))))) (= (regOne!42935 (regTwo!42935 (reg!21540 r!14100))) (regTwo!42935 (regOne!42935 (reg!21540 r!14100))))) (= lambda!472176 lambda!472174))))

(assert (=> b!7889485 true))

(assert (=> b!7889485 true))

(declare-fun bs!1967505 () Bool)

(declare-fun b!7889481 () Bool)

(assert (= bs!1967505 (and b!7889481 b!7888892)))

(declare-fun lambda!472177 () Int)

(assert (=> bs!1967505 (not (= lambda!472177 lambda!472168))))

(declare-fun bs!1967506 () Bool)

(assert (= bs!1967506 (and b!7889481 b!7888707)))

(assert (=> bs!1967506 (not (= lambda!472177 lambda!472164))))

(declare-fun bs!1967507 () Bool)

(assert (= bs!1967507 (and b!7889481 b!7889311)))

(assert (=> bs!1967507 (= (and (= (regOne!42934 (regOne!42935 (regTwo!42935 (reg!21540 r!14100)))) (regOne!42934 (regTwo!42935 (regOne!42935 (reg!21540 r!14100))))) (= (regTwo!42934 (regOne!42935 (regTwo!42935 (reg!21540 r!14100)))) (regTwo!42934 (regTwo!42935 (regOne!42935 (reg!21540 r!14100)))))) (= lambda!472177 lambda!472175))))

(declare-fun bs!1967508 () Bool)

(assert (= bs!1967508 (and b!7889481 b!7888888)))

(assert (=> bs!1967508 (= (and (= (regOne!42934 (regOne!42935 (regTwo!42935 (reg!21540 r!14100)))) (regOne!42934 (regOne!42935 (reg!21540 r!14100)))) (= (regTwo!42934 (regOne!42935 (regTwo!42935 (reg!21540 r!14100)))) (regTwo!42934 (regOne!42935 (reg!21540 r!14100))))) (= lambda!472177 lambda!472169))))

(declare-fun bs!1967509 () Bool)

(assert (= bs!1967509 (and b!7889481 b!7888826)))

(assert (=> bs!1967509 (= (and (= (regOne!42934 (regOne!42935 (regTwo!42935 (reg!21540 r!14100)))) (regOne!42934 (regTwo!42935 (reg!21540 r!14100)))) (= (regTwo!42934 (regOne!42935 (regTwo!42935 (reg!21540 r!14100)))) (regTwo!42934 (regTwo!42935 (reg!21540 r!14100))))) (= lambda!472177 lambda!472167))))

(declare-fun bs!1967510 () Bool)

(assert (= bs!1967510 (and b!7889481 b!7888703)))

(assert (=> bs!1967510 (= (and (= (regOne!42934 (regOne!42935 (regTwo!42935 (reg!21540 r!14100)))) (regOne!42934 (reg!21540 r!14100))) (= (regTwo!42934 (regOne!42935 (regTwo!42935 (reg!21540 r!14100)))) (regTwo!42934 (reg!21540 r!14100)))) (= lambda!472177 lambda!472165))))

(declare-fun bs!1967511 () Bool)

(assert (= bs!1967511 (and b!7889481 b!7889315)))

(assert (=> bs!1967511 (not (= lambda!472177 lambda!472174))))

(declare-fun bs!1967512 () Bool)

(assert (= bs!1967512 (and b!7889481 b!7888830)))

(assert (=> bs!1967512 (not (= lambda!472177 lambda!472166))))

(declare-fun bs!1967513 () Bool)

(assert (= bs!1967513 (and b!7889481 b!7889485)))

(assert (=> bs!1967513 (not (= lambda!472177 lambda!472176))))

(assert (=> b!7889481 true))

(assert (=> b!7889481 true))

(declare-fun b!7889476 () Bool)

(declare-fun e!4657819 () Bool)

(assert (=> b!7889476 (= e!4657819 (= (_1!38333 cut!2) (Cons!73944 (c!1448183 (regOne!42935 (regTwo!42935 (reg!21540 r!14100)))) Nil!73944)))))

(declare-fun b!7889477 () Bool)

(declare-fun e!4657822 () Bool)

(assert (=> b!7889477 (= e!4657822 (matchRSpec!4674 (regTwo!42935 (regOne!42935 (regTwo!42935 (reg!21540 r!14100)))) (_1!38333 cut!2)))))

(declare-fun bm!732141 () Bool)

(declare-fun call!732146 () Bool)

(assert (=> bm!732141 (= call!732146 (isEmpty!42429 (_1!38333 cut!2)))))

(declare-fun call!732147 () Bool)

(declare-fun c!1448447 () Bool)

(declare-fun bm!732142 () Bool)

(assert (=> bm!732142 (= call!732147 (Exists!4764 (ite c!1448447 lambda!472176 lambda!472177)))))

(declare-fun b!7889478 () Bool)

(declare-fun e!4657823 () Bool)

(declare-fun e!4657821 () Bool)

(assert (=> b!7889478 (= e!4657823 e!4657821)))

(declare-fun res!3131500 () Bool)

(assert (=> b!7889478 (= res!3131500 (not ((_ is EmptyLang!21211) (regOne!42935 (regTwo!42935 (reg!21540 r!14100))))))))

(assert (=> b!7889478 (=> (not res!3131500) (not e!4657821))))

(declare-fun b!7889479 () Bool)

(declare-fun e!4657820 () Bool)

(declare-fun e!4657817 () Bool)

(assert (=> b!7889479 (= e!4657820 e!4657817)))

(assert (=> b!7889479 (= c!1448447 ((_ is Star!21211) (regOne!42935 (regTwo!42935 (reg!21540 r!14100)))))))

(declare-fun d!2356822 () Bool)

(declare-fun c!1448448 () Bool)

(assert (=> d!2356822 (= c!1448448 ((_ is EmptyExpr!21211) (regOne!42935 (regTwo!42935 (reg!21540 r!14100)))))))

(assert (=> d!2356822 (= (matchRSpec!4674 (regOne!42935 (regTwo!42935 (reg!21540 r!14100))) (_1!38333 cut!2)) e!4657823)))

(declare-fun b!7889480 () Bool)

(declare-fun res!3131499 () Bool)

(declare-fun e!4657818 () Bool)

(assert (=> b!7889480 (=> res!3131499 e!4657818)))

(assert (=> b!7889480 (= res!3131499 call!732146)))

(assert (=> b!7889480 (= e!4657817 e!4657818)))

(assert (=> b!7889481 (= e!4657817 call!732147)))

(declare-fun b!7889482 () Bool)

(assert (=> b!7889482 (= e!4657823 call!732146)))

(declare-fun b!7889483 () Bool)

(declare-fun c!1448446 () Bool)

(assert (=> b!7889483 (= c!1448446 ((_ is Union!21211) (regOne!42935 (regTwo!42935 (reg!21540 r!14100)))))))

(assert (=> b!7889483 (= e!4657819 e!4657820)))

(declare-fun b!7889484 () Bool)

(assert (=> b!7889484 (= e!4657820 e!4657822)))

(declare-fun res!3131501 () Bool)

(assert (=> b!7889484 (= res!3131501 (matchRSpec!4674 (regOne!42935 (regOne!42935 (regTwo!42935 (reg!21540 r!14100)))) (_1!38333 cut!2)))))

(assert (=> b!7889484 (=> res!3131501 e!4657822)))

(assert (=> b!7889485 (= e!4657818 call!732147)))

(declare-fun b!7889486 () Bool)

(declare-fun c!1448449 () Bool)

(assert (=> b!7889486 (= c!1448449 ((_ is ElementMatch!21211) (regOne!42935 (regTwo!42935 (reg!21540 r!14100)))))))

(assert (=> b!7889486 (= e!4657821 e!4657819)))

(assert (= (and d!2356822 c!1448448) b!7889482))

(assert (= (and d!2356822 (not c!1448448)) b!7889478))

(assert (= (and b!7889478 res!3131500) b!7889486))

(assert (= (and b!7889486 c!1448449) b!7889476))

(assert (= (and b!7889486 (not c!1448449)) b!7889483))

(assert (= (and b!7889483 c!1448446) b!7889484))

(assert (= (and b!7889483 (not c!1448446)) b!7889479))

(assert (= (and b!7889484 (not res!3131501)) b!7889477))

(assert (= (and b!7889479 c!1448447) b!7889480))

(assert (= (and b!7889479 (not c!1448447)) b!7889481))

(assert (= (and b!7889480 (not res!3131499)) b!7889485))

(assert (= (or b!7889485 b!7889481) bm!732142))

(assert (= (or b!7889482 b!7889480) bm!732141))

(declare-fun m!8270290 () Bool)

(assert (=> b!7889477 m!8270290))

(assert (=> bm!732141 m!8269898))

(declare-fun m!8270292 () Bool)

(assert (=> bm!732142 m!8270292))

(declare-fun m!8270294 () Bool)

(assert (=> b!7889484 m!8270294))

(assert (=> b!7888829 d!2356822))

(declare-fun b!7889487 () Bool)

(declare-fun res!3131504 () Bool)

(declare-fun e!4657829 () Bool)

(assert (=> b!7889487 (=> (not res!3131504) (not e!4657829))))

(declare-fun lt!2681518 () Int)

(declare-fun call!732149 () Int)

(assert (=> b!7889487 (= res!3131504 (> lt!2681518 call!732149))))

(declare-fun e!4657825 () Bool)

(assert (=> b!7889487 (= e!4657825 e!4657829)))

(declare-fun b!7889488 () Bool)

(declare-fun e!4657824 () Int)

(declare-fun e!4657833 () Int)

(assert (=> b!7889488 (= e!4657824 e!4657833)))

(declare-fun c!1448453 () Bool)

(assert (=> b!7889488 (= c!1448453 ((_ is Star!21211) (ite c!1448283 (reg!21540 (ite c!1448270 (regTwo!42935 r!14100) (regOne!42934 r!14100))) (ite c!1448285 (regOne!42935 (ite c!1448270 (regTwo!42935 r!14100) (regOne!42934 r!14100))) (regTwo!42934 (ite c!1448270 (regTwo!42935 r!14100) (regOne!42934 r!14100)))))))))

(declare-fun b!7889489 () Bool)

(declare-fun e!4657832 () Bool)

(declare-fun e!4657828 () Bool)

(assert (=> b!7889489 (= e!4657832 e!4657828)))

(declare-fun res!3131503 () Bool)

(assert (=> b!7889489 (= res!3131503 (> lt!2681518 call!732149))))

(assert (=> b!7889489 (=> (not res!3131503) (not e!4657828))))

(declare-fun b!7889490 () Bool)

(declare-fun call!732148 () Int)

(assert (=> b!7889490 (= e!4657828 (> lt!2681518 call!732148))))

(declare-fun bm!732143 () Bool)

(declare-fun c!1448456 () Bool)

(declare-fun c!1448451 () Bool)

(assert (=> bm!732143 (= call!732148 (regexDepth!515 (ite c!1448451 (regTwo!42935 (ite c!1448283 (reg!21540 (ite c!1448270 (regTwo!42935 r!14100) (regOne!42934 r!14100))) (ite c!1448285 (regOne!42935 (ite c!1448270 (regTwo!42935 r!14100) (regOne!42934 r!14100))) (regTwo!42934 (ite c!1448270 (regTwo!42935 r!14100) (regOne!42934 r!14100)))))) (ite c!1448456 (regTwo!42934 (ite c!1448283 (reg!21540 (ite c!1448270 (regTwo!42935 r!14100) (regOne!42934 r!14100))) (ite c!1448285 (regOne!42935 (ite c!1448270 (regTwo!42935 r!14100) (regOne!42934 r!14100))) (regTwo!42934 (ite c!1448270 (regTwo!42935 r!14100) (regOne!42934 r!14100)))))) (reg!21540 (ite c!1448283 (reg!21540 (ite c!1448270 (regTwo!42935 r!14100) (regOne!42934 r!14100))) (ite c!1448285 (regOne!42935 (ite c!1448270 (regTwo!42935 r!14100) (regOne!42934 r!14100))) (regTwo!42934 (ite c!1448270 (regTwo!42935 r!14100) (regOne!42934 r!14100))))))))))))

(declare-fun bm!732144 () Bool)

(declare-fun call!732152 () Int)

(declare-fun call!732150 () Int)

(assert (=> bm!732144 (= call!732152 call!732150)))

(declare-fun b!7889491 () Bool)

(declare-fun e!4657831 () Bool)

(assert (=> b!7889491 (= e!4657831 (= lt!2681518 1))))

(declare-fun bm!732145 () Bool)

(declare-fun c!1448455 () Bool)

(declare-fun call!732153 () Int)

(declare-fun call!732151 () Int)

(assert (=> bm!732145 (= call!732153 (maxBigInt!0 (ite c!1448455 call!732152 call!732151) (ite c!1448455 call!732151 call!732152)))))

(declare-fun b!7889492 () Bool)

(declare-fun call!732154 () Int)

(assert (=> b!7889492 (= e!4657831 (> lt!2681518 call!732154))))

(declare-fun b!7889493 () Bool)

(declare-fun e!4657827 () Int)

(declare-fun e!4657830 () Int)

(assert (=> b!7889493 (= e!4657827 e!4657830)))

(declare-fun c!1448454 () Bool)

(assert (=> b!7889493 (= c!1448454 ((_ is Concat!30056) (ite c!1448283 (reg!21540 (ite c!1448270 (regTwo!42935 r!14100) (regOne!42934 r!14100))) (ite c!1448285 (regOne!42935 (ite c!1448270 (regTwo!42935 r!14100) (regOne!42934 r!14100))) (regTwo!42934 (ite c!1448270 (regTwo!42935 r!14100) (regOne!42934 r!14100)))))))))

(declare-fun bm!732146 () Bool)

(assert (=> bm!732146 (= call!732154 call!732148)))

(declare-fun b!7889494 () Bool)

(assert (=> b!7889494 (= c!1448455 ((_ is Union!21211) (ite c!1448283 (reg!21540 (ite c!1448270 (regTwo!42935 r!14100) (regOne!42934 r!14100))) (ite c!1448285 (regOne!42935 (ite c!1448270 (regTwo!42935 r!14100) (regOne!42934 r!14100))) (regTwo!42934 (ite c!1448270 (regTwo!42935 r!14100) (regOne!42934 r!14100)))))))))

(assert (=> b!7889494 (= e!4657833 e!4657827)))

(declare-fun b!7889495 () Bool)

(assert (=> b!7889495 (= e!4657824 1)))

(declare-fun bm!732147 () Bool)

(assert (=> bm!732147 (= call!732149 (regexDepth!515 (ite c!1448451 (regOne!42935 (ite c!1448283 (reg!21540 (ite c!1448270 (regTwo!42935 r!14100) (regOne!42934 r!14100))) (ite c!1448285 (regOne!42935 (ite c!1448270 (regTwo!42935 r!14100) (regOne!42934 r!14100))) (regTwo!42934 (ite c!1448270 (regTwo!42935 r!14100) (regOne!42934 r!14100)))))) (regOne!42934 (ite c!1448283 (reg!21540 (ite c!1448270 (regTwo!42935 r!14100) (regOne!42934 r!14100))) (ite c!1448285 (regOne!42935 (ite c!1448270 (regTwo!42935 r!14100) (regOne!42934 r!14100))) (regTwo!42934 (ite c!1448270 (regTwo!42935 r!14100) (regOne!42934 r!14100)))))))))))

(declare-fun bm!732148 () Bool)

(assert (=> bm!732148 (= call!732150 (regexDepth!515 (ite c!1448453 (reg!21540 (ite c!1448283 (reg!21540 (ite c!1448270 (regTwo!42935 r!14100) (regOne!42934 r!14100))) (ite c!1448285 (regOne!42935 (ite c!1448270 (regTwo!42935 r!14100) (regOne!42934 r!14100))) (regTwo!42934 (ite c!1448270 (regTwo!42935 r!14100) (regOne!42934 r!14100)))))) (ite c!1448455 (regOne!42935 (ite c!1448283 (reg!21540 (ite c!1448270 (regTwo!42935 r!14100) (regOne!42934 r!14100))) (ite c!1448285 (regOne!42935 (ite c!1448270 (regTwo!42935 r!14100) (regOne!42934 r!14100))) (regTwo!42934 (ite c!1448270 (regTwo!42935 r!14100) (regOne!42934 r!14100)))))) (regTwo!42934 (ite c!1448283 (reg!21540 (ite c!1448270 (regTwo!42935 r!14100) (regOne!42934 r!14100))) (ite c!1448285 (regOne!42935 (ite c!1448270 (regTwo!42935 r!14100) (regOne!42934 r!14100))) (regTwo!42934 (ite c!1448270 (regTwo!42935 r!14100) (regOne!42934 r!14100))))))))))))

(declare-fun d!2356824 () Bool)

(declare-fun e!4657826 () Bool)

(assert (=> d!2356824 e!4657826))

(declare-fun res!3131502 () Bool)

(assert (=> d!2356824 (=> (not res!3131502) (not e!4657826))))

(assert (=> d!2356824 (= res!3131502 (> lt!2681518 0))))

(assert (=> d!2356824 (= lt!2681518 e!4657824)))

(declare-fun c!1448452 () Bool)

(assert (=> d!2356824 (= c!1448452 ((_ is ElementMatch!21211) (ite c!1448283 (reg!21540 (ite c!1448270 (regTwo!42935 r!14100) (regOne!42934 r!14100))) (ite c!1448285 (regOne!42935 (ite c!1448270 (regTwo!42935 r!14100) (regOne!42934 r!14100))) (regTwo!42934 (ite c!1448270 (regTwo!42935 r!14100) (regOne!42934 r!14100)))))))))

(assert (=> d!2356824 (= (regexDepth!515 (ite c!1448283 (reg!21540 (ite c!1448270 (regTwo!42935 r!14100) (regOne!42934 r!14100))) (ite c!1448285 (regOne!42935 (ite c!1448270 (regTwo!42935 r!14100) (regOne!42934 r!14100))) (regTwo!42934 (ite c!1448270 (regTwo!42935 r!14100) (regOne!42934 r!14100)))))) lt!2681518)))

(declare-fun b!7889496 () Bool)

(assert (=> b!7889496 (= e!4657830 (+ 1 call!732153))))

(declare-fun bm!732149 () Bool)

(assert (=> bm!732149 (= call!732151 (regexDepth!515 (ite c!1448455 (regTwo!42935 (ite c!1448283 (reg!21540 (ite c!1448270 (regTwo!42935 r!14100) (regOne!42934 r!14100))) (ite c!1448285 (regOne!42935 (ite c!1448270 (regTwo!42935 r!14100) (regOne!42934 r!14100))) (regTwo!42934 (ite c!1448270 (regTwo!42935 r!14100) (regOne!42934 r!14100)))))) (regOne!42934 (ite c!1448283 (reg!21540 (ite c!1448270 (regTwo!42935 r!14100) (regOne!42934 r!14100))) (ite c!1448285 (regOne!42935 (ite c!1448270 (regTwo!42935 r!14100) (regOne!42934 r!14100))) (regTwo!42934 (ite c!1448270 (regTwo!42935 r!14100) (regOne!42934 r!14100)))))))))))

(declare-fun b!7889497 () Bool)

(assert (=> b!7889497 (= e!4657829 (> lt!2681518 call!732154))))

(declare-fun b!7889498 () Bool)

(assert (=> b!7889498 (= e!4657827 (+ 1 call!732153))))

(declare-fun b!7889499 () Bool)

(assert (=> b!7889499 (= e!4657826 e!4657832)))

(assert (=> b!7889499 (= c!1448451 ((_ is Union!21211) (ite c!1448283 (reg!21540 (ite c!1448270 (regTwo!42935 r!14100) (regOne!42934 r!14100))) (ite c!1448285 (regOne!42935 (ite c!1448270 (regTwo!42935 r!14100) (regOne!42934 r!14100))) (regTwo!42934 (ite c!1448270 (regTwo!42935 r!14100) (regOne!42934 r!14100)))))))))

(declare-fun b!7889500 () Bool)

(assert (=> b!7889500 (= e!4657833 (+ 1 call!732150))))

(declare-fun b!7889501 () Bool)

(assert (=> b!7889501 (= e!4657830 1)))

(declare-fun b!7889502 () Bool)

(declare-fun c!1448450 () Bool)

(assert (=> b!7889502 (= c!1448450 ((_ is Star!21211) (ite c!1448283 (reg!21540 (ite c!1448270 (regTwo!42935 r!14100) (regOne!42934 r!14100))) (ite c!1448285 (regOne!42935 (ite c!1448270 (regTwo!42935 r!14100) (regOne!42934 r!14100))) (regTwo!42934 (ite c!1448270 (regTwo!42935 r!14100) (regOne!42934 r!14100)))))))))

(assert (=> b!7889502 (= e!4657825 e!4657831)))

(declare-fun b!7889503 () Bool)

(assert (=> b!7889503 (= e!4657832 e!4657825)))

(assert (=> b!7889503 (= c!1448456 ((_ is Concat!30056) (ite c!1448283 (reg!21540 (ite c!1448270 (regTwo!42935 r!14100) (regOne!42934 r!14100))) (ite c!1448285 (regOne!42935 (ite c!1448270 (regTwo!42935 r!14100) (regOne!42934 r!14100))) (regTwo!42934 (ite c!1448270 (regTwo!42935 r!14100) (regOne!42934 r!14100)))))))))

(assert (= (and d!2356824 c!1448452) b!7889495))

(assert (= (and d!2356824 (not c!1448452)) b!7889488))

(assert (= (and b!7889488 c!1448453) b!7889500))

(assert (= (and b!7889488 (not c!1448453)) b!7889494))

(assert (= (and b!7889494 c!1448455) b!7889498))

(assert (= (and b!7889494 (not c!1448455)) b!7889493))

(assert (= (and b!7889493 c!1448454) b!7889496))

(assert (= (and b!7889493 (not c!1448454)) b!7889501))

(assert (= (or b!7889498 b!7889496) bm!732144))

(assert (= (or b!7889498 b!7889496) bm!732149))

(assert (= (or b!7889498 b!7889496) bm!732145))

(assert (= (or b!7889500 bm!732144) bm!732148))

(assert (= (and d!2356824 res!3131502) b!7889499))

(assert (= (and b!7889499 c!1448451) b!7889489))

(assert (= (and b!7889499 (not c!1448451)) b!7889503))

(assert (= (and b!7889489 res!3131503) b!7889490))

(assert (= (and b!7889503 c!1448456) b!7889487))

(assert (= (and b!7889503 (not c!1448456)) b!7889502))

(assert (= (and b!7889487 res!3131504) b!7889497))

(assert (= (and b!7889502 c!1448450) b!7889492))

(assert (= (and b!7889502 (not c!1448450)) b!7889491))

(assert (= (or b!7889497 b!7889492) bm!732146))

(assert (= (or b!7889489 b!7889487) bm!732147))

(assert (= (or b!7889490 bm!732146) bm!732143))

(declare-fun m!8270296 () Bool)

(assert (=> bm!732149 m!8270296))

(declare-fun m!8270298 () Bool)

(assert (=> bm!732143 m!8270298))

(declare-fun m!8270300 () Bool)

(assert (=> bm!732148 m!8270300))

(declare-fun m!8270302 () Bool)

(assert (=> bm!732145 m!8270302))

(declare-fun m!8270304 () Bool)

(assert (=> bm!732147 m!8270304))

(assert (=> bm!732005 d!2356824))

(declare-fun d!2356826 () Bool)

(declare-fun lt!2681519 () Int)

(assert (=> d!2356826 (>= lt!2681519 0)))

(declare-fun e!4657834 () Int)

(assert (=> d!2356826 (= lt!2681519 e!4657834)))

(declare-fun c!1448457 () Bool)

(assert (=> d!2356826 (= c!1448457 ((_ is Nil!73944) lt!2681498))))

(assert (=> d!2356826 (= (size!42852 lt!2681498) lt!2681519)))

(declare-fun b!7889504 () Bool)

(assert (=> b!7889504 (= e!4657834 0)))

(declare-fun b!7889505 () Bool)

(assert (=> b!7889505 (= e!4657834 (+ 1 (size!42852 (t!388803 lt!2681498))))))

(assert (= (and d!2356826 c!1448457) b!7889504))

(assert (= (and d!2356826 (not c!1448457)) b!7889505))

(declare-fun m!8270306 () Bool)

(assert (=> b!7889505 m!8270306))

(assert (=> b!7889010 d!2356826))

(declare-fun d!2356828 () Bool)

(declare-fun lt!2681520 () Int)

(assert (=> d!2356828 (>= lt!2681520 0)))

(declare-fun e!4657835 () Int)

(assert (=> d!2356828 (= lt!2681520 e!4657835)))

(declare-fun c!1448458 () Bool)

(assert (=> d!2356828 (= c!1448458 ((_ is Nil!73944) (t!388803 (_1!38333 cut!2))))))

(assert (=> d!2356828 (= (size!42852 (t!388803 (_1!38333 cut!2))) lt!2681520)))

(declare-fun b!7889506 () Bool)

(assert (=> b!7889506 (= e!4657835 0)))

(declare-fun b!7889507 () Bool)

(assert (=> b!7889507 (= e!4657835 (+ 1 (size!42852 (t!388803 (t!388803 (_1!38333 cut!2))))))))

(assert (= (and d!2356828 c!1448458) b!7889506))

(assert (= (and d!2356828 (not c!1448458)) b!7889507))

(declare-fun m!8270308 () Bool)

(assert (=> b!7889507 m!8270308))

(assert (=> b!7889010 d!2356828))

(assert (=> b!7889010 d!2356700))

(declare-fun d!2356830 () Bool)

(assert (=> d!2356830 (= (maxBigInt!0 (ite c!1448319 call!732034 call!732033) (ite c!1448319 call!732033 call!732034)) (ite (>= (ite c!1448319 call!732034 call!732033) (ite c!1448319 call!732033 call!732034)) (ite c!1448319 call!732034 call!732033) (ite c!1448319 call!732033 call!732034)))))

(assert (=> bm!732027 d!2356830))

(declare-fun b!7889508 () Bool)

(declare-fun res!3131507 () Bool)

(declare-fun e!4657841 () Bool)

(assert (=> b!7889508 (=> (not res!3131507) (not e!4657841))))

(declare-fun lt!2681521 () Int)

(declare-fun call!732156 () Int)

(assert (=> b!7889508 (= res!3131507 (> lt!2681521 call!732156))))

(declare-fun e!4657837 () Bool)

(assert (=> b!7889508 (= e!4657837 e!4657841)))

(declare-fun b!7889509 () Bool)

(declare-fun e!4657836 () Int)

(declare-fun e!4657845 () Int)

(assert (=> b!7889509 (= e!4657836 e!4657845)))

(declare-fun c!1448462 () Bool)

(assert (=> b!7889509 (= c!1448462 ((_ is Star!21211) (ite c!1448326 (regTwo!42935 (ite c!1448266 (regOne!42935 r!14100) (regOne!42934 r!14100))) (ite c!1448331 (regTwo!42934 (ite c!1448266 (regOne!42935 r!14100) (regOne!42934 r!14100))) (reg!21540 (ite c!1448266 (regOne!42935 r!14100) (regOne!42934 r!14100)))))))))

(declare-fun b!7889510 () Bool)

(declare-fun e!4657844 () Bool)

(declare-fun e!4657840 () Bool)

(assert (=> b!7889510 (= e!4657844 e!4657840)))

(declare-fun res!3131506 () Bool)

(assert (=> b!7889510 (= res!3131506 (> lt!2681521 call!732156))))

(assert (=> b!7889510 (=> (not res!3131506) (not e!4657840))))

(declare-fun b!7889511 () Bool)

(declare-fun call!732155 () Int)

(assert (=> b!7889511 (= e!4657840 (> lt!2681521 call!732155))))

(declare-fun c!1448465 () Bool)

(declare-fun bm!732150 () Bool)

(declare-fun c!1448460 () Bool)

(assert (=> bm!732150 (= call!732155 (regexDepth!515 (ite c!1448460 (regTwo!42935 (ite c!1448326 (regTwo!42935 (ite c!1448266 (regOne!42935 r!14100) (regOne!42934 r!14100))) (ite c!1448331 (regTwo!42934 (ite c!1448266 (regOne!42935 r!14100) (regOne!42934 r!14100))) (reg!21540 (ite c!1448266 (regOne!42935 r!14100) (regOne!42934 r!14100)))))) (ite c!1448465 (regTwo!42934 (ite c!1448326 (regTwo!42935 (ite c!1448266 (regOne!42935 r!14100) (regOne!42934 r!14100))) (ite c!1448331 (regTwo!42934 (ite c!1448266 (regOne!42935 r!14100) (regOne!42934 r!14100))) (reg!21540 (ite c!1448266 (regOne!42935 r!14100) (regOne!42934 r!14100)))))) (reg!21540 (ite c!1448326 (regTwo!42935 (ite c!1448266 (regOne!42935 r!14100) (regOne!42934 r!14100))) (ite c!1448331 (regTwo!42934 (ite c!1448266 (regOne!42935 r!14100) (regOne!42934 r!14100))) (reg!21540 (ite c!1448266 (regOne!42935 r!14100) (regOne!42934 r!14100))))))))))))

(declare-fun bm!732151 () Bool)

(declare-fun call!732159 () Int)

(declare-fun call!732157 () Int)

(assert (=> bm!732151 (= call!732159 call!732157)))

(declare-fun b!7889512 () Bool)

(declare-fun e!4657843 () Bool)

(assert (=> b!7889512 (= e!4657843 (= lt!2681521 1))))

(declare-fun call!732160 () Int)

(declare-fun call!732158 () Int)

(declare-fun bm!732152 () Bool)

(declare-fun c!1448464 () Bool)

(assert (=> bm!732152 (= call!732160 (maxBigInt!0 (ite c!1448464 call!732159 call!732158) (ite c!1448464 call!732158 call!732159)))))

(declare-fun b!7889513 () Bool)

(declare-fun call!732161 () Int)

(assert (=> b!7889513 (= e!4657843 (> lt!2681521 call!732161))))

(declare-fun b!7889514 () Bool)

(declare-fun e!4657839 () Int)

(declare-fun e!4657842 () Int)

(assert (=> b!7889514 (= e!4657839 e!4657842)))

(declare-fun c!1448463 () Bool)

(assert (=> b!7889514 (= c!1448463 ((_ is Concat!30056) (ite c!1448326 (regTwo!42935 (ite c!1448266 (regOne!42935 r!14100) (regOne!42934 r!14100))) (ite c!1448331 (regTwo!42934 (ite c!1448266 (regOne!42935 r!14100) (regOne!42934 r!14100))) (reg!21540 (ite c!1448266 (regOne!42935 r!14100) (regOne!42934 r!14100)))))))))

(declare-fun bm!732153 () Bool)

(assert (=> bm!732153 (= call!732161 call!732155)))

(declare-fun b!7889515 () Bool)

(assert (=> b!7889515 (= c!1448464 ((_ is Union!21211) (ite c!1448326 (regTwo!42935 (ite c!1448266 (regOne!42935 r!14100) (regOne!42934 r!14100))) (ite c!1448331 (regTwo!42934 (ite c!1448266 (regOne!42935 r!14100) (regOne!42934 r!14100))) (reg!21540 (ite c!1448266 (regOne!42935 r!14100) (regOne!42934 r!14100)))))))))

(assert (=> b!7889515 (= e!4657845 e!4657839)))

(declare-fun b!7889516 () Bool)

(assert (=> b!7889516 (= e!4657836 1)))

(declare-fun bm!732154 () Bool)

(assert (=> bm!732154 (= call!732156 (regexDepth!515 (ite c!1448460 (regOne!42935 (ite c!1448326 (regTwo!42935 (ite c!1448266 (regOne!42935 r!14100) (regOne!42934 r!14100))) (ite c!1448331 (regTwo!42934 (ite c!1448266 (regOne!42935 r!14100) (regOne!42934 r!14100))) (reg!21540 (ite c!1448266 (regOne!42935 r!14100) (regOne!42934 r!14100)))))) (regOne!42934 (ite c!1448326 (regTwo!42935 (ite c!1448266 (regOne!42935 r!14100) (regOne!42934 r!14100))) (ite c!1448331 (regTwo!42934 (ite c!1448266 (regOne!42935 r!14100) (regOne!42934 r!14100))) (reg!21540 (ite c!1448266 (regOne!42935 r!14100) (regOne!42934 r!14100)))))))))))

(declare-fun bm!732155 () Bool)

(assert (=> bm!732155 (= call!732157 (regexDepth!515 (ite c!1448462 (reg!21540 (ite c!1448326 (regTwo!42935 (ite c!1448266 (regOne!42935 r!14100) (regOne!42934 r!14100))) (ite c!1448331 (regTwo!42934 (ite c!1448266 (regOne!42935 r!14100) (regOne!42934 r!14100))) (reg!21540 (ite c!1448266 (regOne!42935 r!14100) (regOne!42934 r!14100)))))) (ite c!1448464 (regOne!42935 (ite c!1448326 (regTwo!42935 (ite c!1448266 (regOne!42935 r!14100) (regOne!42934 r!14100))) (ite c!1448331 (regTwo!42934 (ite c!1448266 (regOne!42935 r!14100) (regOne!42934 r!14100))) (reg!21540 (ite c!1448266 (regOne!42935 r!14100) (regOne!42934 r!14100)))))) (regTwo!42934 (ite c!1448326 (regTwo!42935 (ite c!1448266 (regOne!42935 r!14100) (regOne!42934 r!14100))) (ite c!1448331 (regTwo!42934 (ite c!1448266 (regOne!42935 r!14100) (regOne!42934 r!14100))) (reg!21540 (ite c!1448266 (regOne!42935 r!14100) (regOne!42934 r!14100))))))))))))

(declare-fun d!2356832 () Bool)

(declare-fun e!4657838 () Bool)

(assert (=> d!2356832 e!4657838))

(declare-fun res!3131505 () Bool)

(assert (=> d!2356832 (=> (not res!3131505) (not e!4657838))))

(assert (=> d!2356832 (= res!3131505 (> lt!2681521 0))))

(assert (=> d!2356832 (= lt!2681521 e!4657836)))

(declare-fun c!1448461 () Bool)

(assert (=> d!2356832 (= c!1448461 ((_ is ElementMatch!21211) (ite c!1448326 (regTwo!42935 (ite c!1448266 (regOne!42935 r!14100) (regOne!42934 r!14100))) (ite c!1448331 (regTwo!42934 (ite c!1448266 (regOne!42935 r!14100) (regOne!42934 r!14100))) (reg!21540 (ite c!1448266 (regOne!42935 r!14100) (regOne!42934 r!14100)))))))))

(assert (=> d!2356832 (= (regexDepth!515 (ite c!1448326 (regTwo!42935 (ite c!1448266 (regOne!42935 r!14100) (regOne!42934 r!14100))) (ite c!1448331 (regTwo!42934 (ite c!1448266 (regOne!42935 r!14100) (regOne!42934 r!14100))) (reg!21540 (ite c!1448266 (regOne!42935 r!14100) (regOne!42934 r!14100)))))) lt!2681521)))

(declare-fun b!7889517 () Bool)

(assert (=> b!7889517 (= e!4657842 (+ 1 call!732160))))

(declare-fun bm!732156 () Bool)

(assert (=> bm!732156 (= call!732158 (regexDepth!515 (ite c!1448464 (regTwo!42935 (ite c!1448326 (regTwo!42935 (ite c!1448266 (regOne!42935 r!14100) (regOne!42934 r!14100))) (ite c!1448331 (regTwo!42934 (ite c!1448266 (regOne!42935 r!14100) (regOne!42934 r!14100))) (reg!21540 (ite c!1448266 (regOne!42935 r!14100) (regOne!42934 r!14100)))))) (regOne!42934 (ite c!1448326 (regTwo!42935 (ite c!1448266 (regOne!42935 r!14100) (regOne!42934 r!14100))) (ite c!1448331 (regTwo!42934 (ite c!1448266 (regOne!42935 r!14100) (regOne!42934 r!14100))) (reg!21540 (ite c!1448266 (regOne!42935 r!14100) (regOne!42934 r!14100)))))))))))

(declare-fun b!7889518 () Bool)

(assert (=> b!7889518 (= e!4657841 (> lt!2681521 call!732161))))

(declare-fun b!7889519 () Bool)

(assert (=> b!7889519 (= e!4657839 (+ 1 call!732160))))

(declare-fun b!7889520 () Bool)

(assert (=> b!7889520 (= e!4657838 e!4657844)))

(assert (=> b!7889520 (= c!1448460 ((_ is Union!21211) (ite c!1448326 (regTwo!42935 (ite c!1448266 (regOne!42935 r!14100) (regOne!42934 r!14100))) (ite c!1448331 (regTwo!42934 (ite c!1448266 (regOne!42935 r!14100) (regOne!42934 r!14100))) (reg!21540 (ite c!1448266 (regOne!42935 r!14100) (regOne!42934 r!14100)))))))))

(declare-fun b!7889521 () Bool)

(assert (=> b!7889521 (= e!4657845 (+ 1 call!732157))))

(declare-fun b!7889522 () Bool)

(assert (=> b!7889522 (= e!4657842 1)))

(declare-fun c!1448459 () Bool)

(declare-fun b!7889523 () Bool)

(assert (=> b!7889523 (= c!1448459 ((_ is Star!21211) (ite c!1448326 (regTwo!42935 (ite c!1448266 (regOne!42935 r!14100) (regOne!42934 r!14100))) (ite c!1448331 (regTwo!42934 (ite c!1448266 (regOne!42935 r!14100) (regOne!42934 r!14100))) (reg!21540 (ite c!1448266 (regOne!42935 r!14100) (regOne!42934 r!14100)))))))))

(assert (=> b!7889523 (= e!4657837 e!4657843)))

(declare-fun b!7889524 () Bool)

(assert (=> b!7889524 (= e!4657844 e!4657837)))

(assert (=> b!7889524 (= c!1448465 ((_ is Concat!30056) (ite c!1448326 (regTwo!42935 (ite c!1448266 (regOne!42935 r!14100) (regOne!42934 r!14100))) (ite c!1448331 (regTwo!42934 (ite c!1448266 (regOne!42935 r!14100) (regOne!42934 r!14100))) (reg!21540 (ite c!1448266 (regOne!42935 r!14100) (regOne!42934 r!14100)))))))))

(assert (= (and d!2356832 c!1448461) b!7889516))

(assert (= (and d!2356832 (not c!1448461)) b!7889509))

(assert (= (and b!7889509 c!1448462) b!7889521))

(assert (= (and b!7889509 (not c!1448462)) b!7889515))

(assert (= (and b!7889515 c!1448464) b!7889519))

(assert (= (and b!7889515 (not c!1448464)) b!7889514))

(assert (= (and b!7889514 c!1448463) b!7889517))

(assert (= (and b!7889514 (not c!1448463)) b!7889522))

(assert (= (or b!7889519 b!7889517) bm!732151))

(assert (= (or b!7889519 b!7889517) bm!732156))

(assert (= (or b!7889519 b!7889517) bm!732152))

(assert (= (or b!7889521 bm!732151) bm!732155))

(assert (= (and d!2356832 res!3131505) b!7889520))

(assert (= (and b!7889520 c!1448460) b!7889510))

(assert (= (and b!7889520 (not c!1448460)) b!7889524))

(assert (= (and b!7889510 res!3131506) b!7889511))

(assert (= (and b!7889524 c!1448465) b!7889508))

(assert (= (and b!7889524 (not c!1448465)) b!7889523))

(assert (= (and b!7889508 res!3131507) b!7889518))

(assert (= (and b!7889523 c!1448459) b!7889513))

(assert (= (and b!7889523 (not c!1448459)) b!7889512))

(assert (= (or b!7889518 b!7889513) bm!732153))

(assert (= (or b!7889510 b!7889508) bm!732154))

(assert (= (or b!7889511 bm!732153) bm!732150))

(declare-fun m!8270310 () Bool)

(assert (=> bm!732156 m!8270310))

(declare-fun m!8270312 () Bool)

(assert (=> bm!732150 m!8270312))

(declare-fun m!8270314 () Bool)

(assert (=> bm!732155 m!8270314))

(declare-fun m!8270316 () Bool)

(assert (=> bm!732152 m!8270316))

(declare-fun m!8270318 () Bool)

(assert (=> bm!732154 m!8270318))

(assert (=> bm!732035 d!2356832))

(declare-fun d!2356834 () Bool)

(declare-fun lt!2681522 () Int)

(assert (=> d!2356834 (>= lt!2681522 0)))

(declare-fun e!4657846 () Int)

(assert (=> d!2356834 (= lt!2681522 e!4657846)))

(declare-fun c!1448466 () Bool)

(assert (=> d!2356834 (= c!1448466 ((_ is Nil!73944) (t!388803 (t!388803 s!9586))))))

(assert (=> d!2356834 (= (size!42852 (t!388803 (t!388803 s!9586))) lt!2681522)))

(declare-fun b!7889525 () Bool)

(assert (=> b!7889525 (= e!4657846 0)))

(declare-fun b!7889526 () Bool)

(assert (=> b!7889526 (= e!4657846 (+ 1 (size!42852 (t!388803 (t!388803 (t!388803 s!9586))))))))

(assert (= (and d!2356834 c!1448466) b!7889525))

(assert (= (and d!2356834 (not c!1448466)) b!7889526))

(declare-fun m!8270320 () Bool)

(assert (=> b!7889526 m!8270320))

(assert (=> b!7889024 d!2356834))

(declare-fun b!7889527 () Bool)

(declare-fun e!4657848 () List!74068)

(assert (=> b!7889527 (= e!4657848 (_2!38333 cut!2))))

(declare-fun b!7889530 () Bool)

(declare-fun e!4657847 () Bool)

(declare-fun lt!2681523 () List!74068)

(assert (=> b!7889530 (= e!4657847 (or (not (= (_2!38333 cut!2) Nil!73944)) (= lt!2681523 (t!388803 (t!388803 (_1!38333 cut!2))))))))

(declare-fun b!7889529 () Bool)

(declare-fun res!3131509 () Bool)

(assert (=> b!7889529 (=> (not res!3131509) (not e!4657847))))

(assert (=> b!7889529 (= res!3131509 (= (size!42852 lt!2681523) (+ (size!42852 (t!388803 (t!388803 (_1!38333 cut!2)))) (size!42852 (_2!38333 cut!2)))))))

(declare-fun b!7889528 () Bool)

(assert (=> b!7889528 (= e!4657848 (Cons!73944 (h!80392 (t!388803 (t!388803 (_1!38333 cut!2)))) (++!18115 (t!388803 (t!388803 (t!388803 (_1!38333 cut!2)))) (_2!38333 cut!2))))))

(declare-fun d!2356836 () Bool)

(assert (=> d!2356836 e!4657847))

(declare-fun res!3131508 () Bool)

(assert (=> d!2356836 (=> (not res!3131508) (not e!4657847))))

(assert (=> d!2356836 (= res!3131508 (= (content!15695 lt!2681523) ((_ map or) (content!15695 (t!388803 (t!388803 (_1!38333 cut!2)))) (content!15695 (_2!38333 cut!2)))))))

(assert (=> d!2356836 (= lt!2681523 e!4657848)))

(declare-fun c!1448467 () Bool)

(assert (=> d!2356836 (= c!1448467 ((_ is Nil!73944) (t!388803 (t!388803 (_1!38333 cut!2)))))))

(assert (=> d!2356836 (= (++!18115 (t!388803 (t!388803 (_1!38333 cut!2))) (_2!38333 cut!2)) lt!2681523)))

(assert (= (and d!2356836 c!1448467) b!7889527))

(assert (= (and d!2356836 (not c!1448467)) b!7889528))

(assert (= (and d!2356836 res!3131508) b!7889529))

(assert (= (and b!7889529 res!3131509) b!7889530))

(declare-fun m!8270322 () Bool)

(assert (=> b!7889529 m!8270322))

(assert (=> b!7889529 m!8270308))

(assert (=> b!7889529 m!8269902))

(declare-fun m!8270324 () Bool)

(assert (=> b!7889528 m!8270324))

(declare-fun m!8270326 () Bool)

(assert (=> d!2356836 m!8270326))

(assert (=> d!2356836 m!8270274))

(assert (=> d!2356836 m!8269986))

(assert (=> b!7889009 d!2356836))

(assert (=> b!7888944 d!2356828))

(declare-fun bs!1967514 () Bool)

(declare-fun b!7889540 () Bool)

(assert (= bs!1967514 (and b!7889540 b!7888892)))

(declare-fun lambda!472178 () Int)

(assert (=> bs!1967514 (= (and (= (reg!21540 (regOne!42935 (regOne!42935 (reg!21540 r!14100)))) (reg!21540 (regOne!42935 (reg!21540 r!14100)))) (= (regOne!42935 (regOne!42935 (reg!21540 r!14100))) (regOne!42935 (reg!21540 r!14100)))) (= lambda!472178 lambda!472168))))

(declare-fun bs!1967515 () Bool)

(assert (= bs!1967515 (and b!7889540 b!7888707)))

(assert (=> bs!1967515 (= (and (= (reg!21540 (regOne!42935 (regOne!42935 (reg!21540 r!14100)))) (reg!21540 (reg!21540 r!14100))) (= (regOne!42935 (regOne!42935 (reg!21540 r!14100))) (reg!21540 r!14100))) (= lambda!472178 lambda!472164))))

(declare-fun bs!1967516 () Bool)

(assert (= bs!1967516 (and b!7889540 b!7889311)))

(assert (=> bs!1967516 (not (= lambda!472178 lambda!472175))))

(declare-fun bs!1967517 () Bool)

(assert (= bs!1967517 (and b!7889540 b!7888888)))

(assert (=> bs!1967517 (not (= lambda!472178 lambda!472169))))

(declare-fun bs!1967518 () Bool)

(assert (= bs!1967518 (and b!7889540 b!7888826)))

(assert (=> bs!1967518 (not (= lambda!472178 lambda!472167))))

(declare-fun bs!1967519 () Bool)

(assert (= bs!1967519 (and b!7889540 b!7889481)))

(assert (=> bs!1967519 (not (= lambda!472178 lambda!472177))))

(declare-fun bs!1967520 () Bool)

(assert (= bs!1967520 (and b!7889540 b!7888703)))

(assert (=> bs!1967520 (not (= lambda!472178 lambda!472165))))

(declare-fun bs!1967521 () Bool)

(assert (= bs!1967521 (and b!7889540 b!7889315)))

(assert (=> bs!1967521 (= (and (= (reg!21540 (regOne!42935 (regOne!42935 (reg!21540 r!14100)))) (reg!21540 (regTwo!42935 (regOne!42935 (reg!21540 r!14100))))) (= (regOne!42935 (regOne!42935 (reg!21540 r!14100))) (regTwo!42935 (regOne!42935 (reg!21540 r!14100))))) (= lambda!472178 lambda!472174))))

(declare-fun bs!1967522 () Bool)

(assert (= bs!1967522 (and b!7889540 b!7888830)))

(assert (=> bs!1967522 (= (and (= (reg!21540 (regOne!42935 (regOne!42935 (reg!21540 r!14100)))) (reg!21540 (regTwo!42935 (reg!21540 r!14100)))) (= (regOne!42935 (regOne!42935 (reg!21540 r!14100))) (regTwo!42935 (reg!21540 r!14100)))) (= lambda!472178 lambda!472166))))

(declare-fun bs!1967523 () Bool)

(assert (= bs!1967523 (and b!7889540 b!7889485)))

(assert (=> bs!1967523 (= (and (= (reg!21540 (regOne!42935 (regOne!42935 (reg!21540 r!14100)))) (reg!21540 (regOne!42935 (regTwo!42935 (reg!21540 r!14100))))) (= (regOne!42935 (regOne!42935 (reg!21540 r!14100))) (regOne!42935 (regTwo!42935 (reg!21540 r!14100))))) (= lambda!472178 lambda!472176))))

(assert (=> b!7889540 true))

(assert (=> b!7889540 true))

(declare-fun bs!1967524 () Bool)

(declare-fun b!7889536 () Bool)

(assert (= bs!1967524 (and b!7889536 b!7888892)))

(declare-fun lambda!472179 () Int)

(assert (=> bs!1967524 (not (= lambda!472179 lambda!472168))))

(declare-fun bs!1967525 () Bool)

(assert (= bs!1967525 (and b!7889536 b!7888707)))

(assert (=> bs!1967525 (not (= lambda!472179 lambda!472164))))

(declare-fun bs!1967526 () Bool)

(assert (= bs!1967526 (and b!7889536 b!7889311)))

(assert (=> bs!1967526 (= (and (= (regOne!42934 (regOne!42935 (regOne!42935 (reg!21540 r!14100)))) (regOne!42934 (regTwo!42935 (regOne!42935 (reg!21540 r!14100))))) (= (regTwo!42934 (regOne!42935 (regOne!42935 (reg!21540 r!14100)))) (regTwo!42934 (regTwo!42935 (regOne!42935 (reg!21540 r!14100)))))) (= lambda!472179 lambda!472175))))

(declare-fun bs!1967527 () Bool)

(assert (= bs!1967527 (and b!7889536 b!7889540)))

(assert (=> bs!1967527 (not (= lambda!472179 lambda!472178))))

(declare-fun bs!1967528 () Bool)

(assert (= bs!1967528 (and b!7889536 b!7888888)))

(assert (=> bs!1967528 (= (and (= (regOne!42934 (regOne!42935 (regOne!42935 (reg!21540 r!14100)))) (regOne!42934 (regOne!42935 (reg!21540 r!14100)))) (= (regTwo!42934 (regOne!42935 (regOne!42935 (reg!21540 r!14100)))) (regTwo!42934 (regOne!42935 (reg!21540 r!14100))))) (= lambda!472179 lambda!472169))))

(declare-fun bs!1967529 () Bool)

(assert (= bs!1967529 (and b!7889536 b!7888826)))

(assert (=> bs!1967529 (= (and (= (regOne!42934 (regOne!42935 (regOne!42935 (reg!21540 r!14100)))) (regOne!42934 (regTwo!42935 (reg!21540 r!14100)))) (= (regTwo!42934 (regOne!42935 (regOne!42935 (reg!21540 r!14100)))) (regTwo!42934 (regTwo!42935 (reg!21540 r!14100))))) (= lambda!472179 lambda!472167))))

(declare-fun bs!1967530 () Bool)

(assert (= bs!1967530 (and b!7889536 b!7889481)))

(assert (=> bs!1967530 (= (and (= (regOne!42934 (regOne!42935 (regOne!42935 (reg!21540 r!14100)))) (regOne!42934 (regOne!42935 (regTwo!42935 (reg!21540 r!14100))))) (= (regTwo!42934 (regOne!42935 (regOne!42935 (reg!21540 r!14100)))) (regTwo!42934 (regOne!42935 (regTwo!42935 (reg!21540 r!14100)))))) (= lambda!472179 lambda!472177))))

(declare-fun bs!1967531 () Bool)

(assert (= bs!1967531 (and b!7889536 b!7888703)))

(assert (=> bs!1967531 (= (and (= (regOne!42934 (regOne!42935 (regOne!42935 (reg!21540 r!14100)))) (regOne!42934 (reg!21540 r!14100))) (= (regTwo!42934 (regOne!42935 (regOne!42935 (reg!21540 r!14100)))) (regTwo!42934 (reg!21540 r!14100)))) (= lambda!472179 lambda!472165))))

(declare-fun bs!1967532 () Bool)

(assert (= bs!1967532 (and b!7889536 b!7889315)))

(assert (=> bs!1967532 (not (= lambda!472179 lambda!472174))))

(declare-fun bs!1967533 () Bool)

(assert (= bs!1967533 (and b!7889536 b!7888830)))

(assert (=> bs!1967533 (not (= lambda!472179 lambda!472166))))

(declare-fun bs!1967534 () Bool)

(assert (= bs!1967534 (and b!7889536 b!7889485)))

(assert (=> bs!1967534 (not (= lambda!472179 lambda!472176))))

(assert (=> b!7889536 true))

(assert (=> b!7889536 true))

(declare-fun b!7889531 () Bool)

(declare-fun e!4657851 () Bool)

(assert (=> b!7889531 (= e!4657851 (= (_1!38333 cut!2) (Cons!73944 (c!1448183 (regOne!42935 (regOne!42935 (reg!21540 r!14100)))) Nil!73944)))))

(declare-fun b!7889532 () Bool)

(declare-fun e!4657854 () Bool)

(assert (=> b!7889532 (= e!4657854 (matchRSpec!4674 (regTwo!42935 (regOne!42935 (regOne!42935 (reg!21540 r!14100)))) (_1!38333 cut!2)))))

(declare-fun bm!732157 () Bool)

(declare-fun call!732162 () Bool)

(assert (=> bm!732157 (= call!732162 (isEmpty!42429 (_1!38333 cut!2)))))

(declare-fun call!732163 () Bool)

(declare-fun c!1448469 () Bool)

(declare-fun bm!732158 () Bool)

(assert (=> bm!732158 (= call!732163 (Exists!4764 (ite c!1448469 lambda!472178 lambda!472179)))))

(declare-fun b!7889533 () Bool)

(declare-fun e!4657855 () Bool)

(declare-fun e!4657853 () Bool)

(assert (=> b!7889533 (= e!4657855 e!4657853)))

(declare-fun res!3131511 () Bool)

(assert (=> b!7889533 (= res!3131511 (not ((_ is EmptyLang!21211) (regOne!42935 (regOne!42935 (reg!21540 r!14100))))))))

(assert (=> b!7889533 (=> (not res!3131511) (not e!4657853))))

(declare-fun b!7889534 () Bool)

(declare-fun e!4657852 () Bool)

(declare-fun e!4657849 () Bool)

(assert (=> b!7889534 (= e!4657852 e!4657849)))

(assert (=> b!7889534 (= c!1448469 ((_ is Star!21211) (regOne!42935 (regOne!42935 (reg!21540 r!14100)))))))

(declare-fun d!2356838 () Bool)

(declare-fun c!1448470 () Bool)

(assert (=> d!2356838 (= c!1448470 ((_ is EmptyExpr!21211) (regOne!42935 (regOne!42935 (reg!21540 r!14100)))))))

(assert (=> d!2356838 (= (matchRSpec!4674 (regOne!42935 (regOne!42935 (reg!21540 r!14100))) (_1!38333 cut!2)) e!4657855)))

(declare-fun b!7889535 () Bool)

(declare-fun res!3131510 () Bool)

(declare-fun e!4657850 () Bool)

(assert (=> b!7889535 (=> res!3131510 e!4657850)))

(assert (=> b!7889535 (= res!3131510 call!732162)))

(assert (=> b!7889535 (= e!4657849 e!4657850)))

(assert (=> b!7889536 (= e!4657849 call!732163)))

(declare-fun b!7889537 () Bool)

(assert (=> b!7889537 (= e!4657855 call!732162)))

(declare-fun b!7889538 () Bool)

(declare-fun c!1448468 () Bool)

(assert (=> b!7889538 (= c!1448468 ((_ is Union!21211) (regOne!42935 (regOne!42935 (reg!21540 r!14100)))))))

(assert (=> b!7889538 (= e!4657851 e!4657852)))

(declare-fun b!7889539 () Bool)

(assert (=> b!7889539 (= e!4657852 e!4657854)))

(declare-fun res!3131512 () Bool)

(assert (=> b!7889539 (= res!3131512 (matchRSpec!4674 (regOne!42935 (regOne!42935 (regOne!42935 (reg!21540 r!14100)))) (_1!38333 cut!2)))))

(assert (=> b!7889539 (=> res!3131512 e!4657854)))

(assert (=> b!7889540 (= e!4657850 call!732163)))

(declare-fun b!7889541 () Bool)

(declare-fun c!1448471 () Bool)

(assert (=> b!7889541 (= c!1448471 ((_ is ElementMatch!21211) (regOne!42935 (regOne!42935 (reg!21540 r!14100)))))))

(assert (=> b!7889541 (= e!4657853 e!4657851)))

(assert (= (and d!2356838 c!1448470) b!7889537))

(assert (= (and d!2356838 (not c!1448470)) b!7889533))

(assert (= (and b!7889533 res!3131511) b!7889541))

(assert (= (and b!7889541 c!1448471) b!7889531))

(assert (= (and b!7889541 (not c!1448471)) b!7889538))

(assert (= (and b!7889538 c!1448468) b!7889539))

(assert (= (and b!7889538 (not c!1448468)) b!7889534))

(assert (= (and b!7889539 (not res!3131512)) b!7889532))

(assert (= (and b!7889534 c!1448469) b!7889535))

(assert (= (and b!7889534 (not c!1448469)) b!7889536))

(assert (= (and b!7889535 (not res!3131510)) b!7889540))

(assert (= (or b!7889540 b!7889536) bm!732158))

(assert (= (or b!7889537 b!7889535) bm!732157))

(declare-fun m!8270328 () Bool)

(assert (=> b!7889532 m!8270328))

(assert (=> bm!732157 m!8269898))

(declare-fun m!8270330 () Bool)

(assert (=> bm!732158 m!8270330))

(declare-fun m!8270332 () Bool)

(assert (=> b!7889539 m!8270332))

(assert (=> b!7888891 d!2356838))

(declare-fun b!7889542 () Bool)

(declare-fun res!3131515 () Bool)

(declare-fun e!4657861 () Bool)

(assert (=> b!7889542 (=> (not res!3131515) (not e!4657861))))

(declare-fun lt!2681524 () Int)

(declare-fun call!732165 () Int)

(assert (=> b!7889542 (= res!3131515 (> lt!2681524 call!732165))))

(declare-fun e!4657857 () Bool)

(assert (=> b!7889542 (= e!4657857 e!4657861)))

(declare-fun b!7889543 () Bool)

(declare-fun e!4657856 () Int)

(declare-fun e!4657865 () Int)

(assert (=> b!7889543 (= e!4657856 e!4657865)))

(declare-fun c!1448475 () Bool)

(assert (=> b!7889543 (= c!1448475 ((_ is Star!21211) (ite c!1448315 (regTwo!42935 (ite c!1448268 (reg!21540 r!14100) (ite c!1448270 (regOne!42935 r!14100) (regTwo!42934 r!14100)))) (ite c!1448320 (regTwo!42934 (ite c!1448268 (reg!21540 r!14100) (ite c!1448270 (regOne!42935 r!14100) (regTwo!42934 r!14100)))) (reg!21540 (ite c!1448268 (reg!21540 r!14100) (ite c!1448270 (regOne!42935 r!14100) (regTwo!42934 r!14100))))))))))

(declare-fun b!7889544 () Bool)

(declare-fun e!4657864 () Bool)

(declare-fun e!4657860 () Bool)

(assert (=> b!7889544 (= e!4657864 e!4657860)))

(declare-fun res!3131514 () Bool)

(assert (=> b!7889544 (= res!3131514 (> lt!2681524 call!732165))))

(assert (=> b!7889544 (=> (not res!3131514) (not e!4657860))))

(declare-fun b!7889545 () Bool)

(declare-fun call!732164 () Int)

(assert (=> b!7889545 (= e!4657860 (> lt!2681524 call!732164))))

(declare-fun c!1448478 () Bool)

(declare-fun c!1448473 () Bool)

(declare-fun bm!732159 () Bool)

(assert (=> bm!732159 (= call!732164 (regexDepth!515 (ite c!1448473 (regTwo!42935 (ite c!1448315 (regTwo!42935 (ite c!1448268 (reg!21540 r!14100) (ite c!1448270 (regOne!42935 r!14100) (regTwo!42934 r!14100)))) (ite c!1448320 (regTwo!42934 (ite c!1448268 (reg!21540 r!14100) (ite c!1448270 (regOne!42935 r!14100) (regTwo!42934 r!14100)))) (reg!21540 (ite c!1448268 (reg!21540 r!14100) (ite c!1448270 (regOne!42935 r!14100) (regTwo!42934 r!14100))))))) (ite c!1448478 (regTwo!42934 (ite c!1448315 (regTwo!42935 (ite c!1448268 (reg!21540 r!14100) (ite c!1448270 (regOne!42935 r!14100) (regTwo!42934 r!14100)))) (ite c!1448320 (regTwo!42934 (ite c!1448268 (reg!21540 r!14100) (ite c!1448270 (regOne!42935 r!14100) (regTwo!42934 r!14100)))) (reg!21540 (ite c!1448268 (reg!21540 r!14100) (ite c!1448270 (regOne!42935 r!14100) (regTwo!42934 r!14100))))))) (reg!21540 (ite c!1448315 (regTwo!42935 (ite c!1448268 (reg!21540 r!14100) (ite c!1448270 (regOne!42935 r!14100) (regTwo!42934 r!14100)))) (ite c!1448320 (regTwo!42934 (ite c!1448268 (reg!21540 r!14100) (ite c!1448270 (regOne!42935 r!14100) (regTwo!42934 r!14100)))) (reg!21540 (ite c!1448268 (reg!21540 r!14100) (ite c!1448270 (regOne!42935 r!14100) (regTwo!42934 r!14100)))))))))))))

(declare-fun bm!732160 () Bool)

(declare-fun call!732168 () Int)

(declare-fun call!732166 () Int)

(assert (=> bm!732160 (= call!732168 call!732166)))

(declare-fun b!7889546 () Bool)

(declare-fun e!4657863 () Bool)

(assert (=> b!7889546 (= e!4657863 (= lt!2681524 1))))

(declare-fun call!732169 () Int)

(declare-fun call!732167 () Int)

(declare-fun bm!732161 () Bool)

(declare-fun c!1448477 () Bool)

(assert (=> bm!732161 (= call!732169 (maxBigInt!0 (ite c!1448477 call!732168 call!732167) (ite c!1448477 call!732167 call!732168)))))

(declare-fun b!7889547 () Bool)

(declare-fun call!732170 () Int)

(assert (=> b!7889547 (= e!4657863 (> lt!2681524 call!732170))))

(declare-fun b!7889548 () Bool)

(declare-fun e!4657859 () Int)

(declare-fun e!4657862 () Int)

(assert (=> b!7889548 (= e!4657859 e!4657862)))

(declare-fun c!1448476 () Bool)

(assert (=> b!7889548 (= c!1448476 ((_ is Concat!30056) (ite c!1448315 (regTwo!42935 (ite c!1448268 (reg!21540 r!14100) (ite c!1448270 (regOne!42935 r!14100) (regTwo!42934 r!14100)))) (ite c!1448320 (regTwo!42934 (ite c!1448268 (reg!21540 r!14100) (ite c!1448270 (regOne!42935 r!14100) (regTwo!42934 r!14100)))) (reg!21540 (ite c!1448268 (reg!21540 r!14100) (ite c!1448270 (regOne!42935 r!14100) (regTwo!42934 r!14100))))))))))

(declare-fun bm!732162 () Bool)

(assert (=> bm!732162 (= call!732170 call!732164)))

(declare-fun b!7889549 () Bool)

(assert (=> b!7889549 (= c!1448477 ((_ is Union!21211) (ite c!1448315 (regTwo!42935 (ite c!1448268 (reg!21540 r!14100) (ite c!1448270 (regOne!42935 r!14100) (regTwo!42934 r!14100)))) (ite c!1448320 (regTwo!42934 (ite c!1448268 (reg!21540 r!14100) (ite c!1448270 (regOne!42935 r!14100) (regTwo!42934 r!14100)))) (reg!21540 (ite c!1448268 (reg!21540 r!14100) (ite c!1448270 (regOne!42935 r!14100) (regTwo!42934 r!14100))))))))))

(assert (=> b!7889549 (= e!4657865 e!4657859)))

(declare-fun b!7889550 () Bool)

(assert (=> b!7889550 (= e!4657856 1)))

(declare-fun bm!732163 () Bool)

(assert (=> bm!732163 (= call!732165 (regexDepth!515 (ite c!1448473 (regOne!42935 (ite c!1448315 (regTwo!42935 (ite c!1448268 (reg!21540 r!14100) (ite c!1448270 (regOne!42935 r!14100) (regTwo!42934 r!14100)))) (ite c!1448320 (regTwo!42934 (ite c!1448268 (reg!21540 r!14100) (ite c!1448270 (regOne!42935 r!14100) (regTwo!42934 r!14100)))) (reg!21540 (ite c!1448268 (reg!21540 r!14100) (ite c!1448270 (regOne!42935 r!14100) (regTwo!42934 r!14100))))))) (regOne!42934 (ite c!1448315 (regTwo!42935 (ite c!1448268 (reg!21540 r!14100) (ite c!1448270 (regOne!42935 r!14100) (regTwo!42934 r!14100)))) (ite c!1448320 (regTwo!42934 (ite c!1448268 (reg!21540 r!14100) (ite c!1448270 (regOne!42935 r!14100) (regTwo!42934 r!14100)))) (reg!21540 (ite c!1448268 (reg!21540 r!14100) (ite c!1448270 (regOne!42935 r!14100) (regTwo!42934 r!14100))))))))))))

(declare-fun bm!732164 () Bool)

(assert (=> bm!732164 (= call!732166 (regexDepth!515 (ite c!1448475 (reg!21540 (ite c!1448315 (regTwo!42935 (ite c!1448268 (reg!21540 r!14100) (ite c!1448270 (regOne!42935 r!14100) (regTwo!42934 r!14100)))) (ite c!1448320 (regTwo!42934 (ite c!1448268 (reg!21540 r!14100) (ite c!1448270 (regOne!42935 r!14100) (regTwo!42934 r!14100)))) (reg!21540 (ite c!1448268 (reg!21540 r!14100) (ite c!1448270 (regOne!42935 r!14100) (regTwo!42934 r!14100))))))) (ite c!1448477 (regOne!42935 (ite c!1448315 (regTwo!42935 (ite c!1448268 (reg!21540 r!14100) (ite c!1448270 (regOne!42935 r!14100) (regTwo!42934 r!14100)))) (ite c!1448320 (regTwo!42934 (ite c!1448268 (reg!21540 r!14100) (ite c!1448270 (regOne!42935 r!14100) (regTwo!42934 r!14100)))) (reg!21540 (ite c!1448268 (reg!21540 r!14100) (ite c!1448270 (regOne!42935 r!14100) (regTwo!42934 r!14100))))))) (regTwo!42934 (ite c!1448315 (regTwo!42935 (ite c!1448268 (reg!21540 r!14100) (ite c!1448270 (regOne!42935 r!14100) (regTwo!42934 r!14100)))) (ite c!1448320 (regTwo!42934 (ite c!1448268 (reg!21540 r!14100) (ite c!1448270 (regOne!42935 r!14100) (regTwo!42934 r!14100)))) (reg!21540 (ite c!1448268 (reg!21540 r!14100) (ite c!1448270 (regOne!42935 r!14100) (regTwo!42934 r!14100)))))))))))))

(declare-fun d!2356840 () Bool)

(declare-fun e!4657858 () Bool)

(assert (=> d!2356840 e!4657858))

(declare-fun res!3131513 () Bool)

(assert (=> d!2356840 (=> (not res!3131513) (not e!4657858))))

(assert (=> d!2356840 (= res!3131513 (> lt!2681524 0))))

(assert (=> d!2356840 (= lt!2681524 e!4657856)))

(declare-fun c!1448474 () Bool)

(assert (=> d!2356840 (= c!1448474 ((_ is ElementMatch!21211) (ite c!1448315 (regTwo!42935 (ite c!1448268 (reg!21540 r!14100) (ite c!1448270 (regOne!42935 r!14100) (regTwo!42934 r!14100)))) (ite c!1448320 (regTwo!42934 (ite c!1448268 (reg!21540 r!14100) (ite c!1448270 (regOne!42935 r!14100) (regTwo!42934 r!14100)))) (reg!21540 (ite c!1448268 (reg!21540 r!14100) (ite c!1448270 (regOne!42935 r!14100) (regTwo!42934 r!14100))))))))))

(assert (=> d!2356840 (= (regexDepth!515 (ite c!1448315 (regTwo!42935 (ite c!1448268 (reg!21540 r!14100) (ite c!1448270 (regOne!42935 r!14100) (regTwo!42934 r!14100)))) (ite c!1448320 (regTwo!42934 (ite c!1448268 (reg!21540 r!14100) (ite c!1448270 (regOne!42935 r!14100) (regTwo!42934 r!14100)))) (reg!21540 (ite c!1448268 (reg!21540 r!14100) (ite c!1448270 (regOne!42935 r!14100) (regTwo!42934 r!14100))))))) lt!2681524)))

(declare-fun b!7889551 () Bool)

(assert (=> b!7889551 (= e!4657862 (+ 1 call!732169))))

(declare-fun bm!732165 () Bool)

(assert (=> bm!732165 (= call!732167 (regexDepth!515 (ite c!1448477 (regTwo!42935 (ite c!1448315 (regTwo!42935 (ite c!1448268 (reg!21540 r!14100) (ite c!1448270 (regOne!42935 r!14100) (regTwo!42934 r!14100)))) (ite c!1448320 (regTwo!42934 (ite c!1448268 (reg!21540 r!14100) (ite c!1448270 (regOne!42935 r!14100) (regTwo!42934 r!14100)))) (reg!21540 (ite c!1448268 (reg!21540 r!14100) (ite c!1448270 (regOne!42935 r!14100) (regTwo!42934 r!14100))))))) (regOne!42934 (ite c!1448315 (regTwo!42935 (ite c!1448268 (reg!21540 r!14100) (ite c!1448270 (regOne!42935 r!14100) (regTwo!42934 r!14100)))) (ite c!1448320 (regTwo!42934 (ite c!1448268 (reg!21540 r!14100) (ite c!1448270 (regOne!42935 r!14100) (regTwo!42934 r!14100)))) (reg!21540 (ite c!1448268 (reg!21540 r!14100) (ite c!1448270 (regOne!42935 r!14100) (regTwo!42934 r!14100))))))))))))

(declare-fun b!7889552 () Bool)

(assert (=> b!7889552 (= e!4657861 (> lt!2681524 call!732170))))

(declare-fun b!7889553 () Bool)

(assert (=> b!7889553 (= e!4657859 (+ 1 call!732169))))

(declare-fun b!7889554 () Bool)

(assert (=> b!7889554 (= e!4657858 e!4657864)))

(assert (=> b!7889554 (= c!1448473 ((_ is Union!21211) (ite c!1448315 (regTwo!42935 (ite c!1448268 (reg!21540 r!14100) (ite c!1448270 (regOne!42935 r!14100) (regTwo!42934 r!14100)))) (ite c!1448320 (regTwo!42934 (ite c!1448268 (reg!21540 r!14100) (ite c!1448270 (regOne!42935 r!14100) (regTwo!42934 r!14100)))) (reg!21540 (ite c!1448268 (reg!21540 r!14100) (ite c!1448270 (regOne!42935 r!14100) (regTwo!42934 r!14100))))))))))

(declare-fun b!7889555 () Bool)

(assert (=> b!7889555 (= e!4657865 (+ 1 call!732166))))

(declare-fun b!7889556 () Bool)

(assert (=> b!7889556 (= e!4657862 1)))

(declare-fun c!1448472 () Bool)

(declare-fun b!7889557 () Bool)

(assert (=> b!7889557 (= c!1448472 ((_ is Star!21211) (ite c!1448315 (regTwo!42935 (ite c!1448268 (reg!21540 r!14100) (ite c!1448270 (regOne!42935 r!14100) (regTwo!42934 r!14100)))) (ite c!1448320 (regTwo!42934 (ite c!1448268 (reg!21540 r!14100) (ite c!1448270 (regOne!42935 r!14100) (regTwo!42934 r!14100)))) (reg!21540 (ite c!1448268 (reg!21540 r!14100) (ite c!1448270 (regOne!42935 r!14100) (regTwo!42934 r!14100))))))))))

(assert (=> b!7889557 (= e!4657857 e!4657863)))

(declare-fun b!7889558 () Bool)

(assert (=> b!7889558 (= e!4657864 e!4657857)))

(assert (=> b!7889558 (= c!1448478 ((_ is Concat!30056) (ite c!1448315 (regTwo!42935 (ite c!1448268 (reg!21540 r!14100) (ite c!1448270 (regOne!42935 r!14100) (regTwo!42934 r!14100)))) (ite c!1448320 (regTwo!42934 (ite c!1448268 (reg!21540 r!14100) (ite c!1448270 (regOne!42935 r!14100) (regTwo!42934 r!14100)))) (reg!21540 (ite c!1448268 (reg!21540 r!14100) (ite c!1448270 (regOne!42935 r!14100) (regTwo!42934 r!14100))))))))))

(assert (= (and d!2356840 c!1448474) b!7889550))

(assert (= (and d!2356840 (not c!1448474)) b!7889543))

(assert (= (and b!7889543 c!1448475) b!7889555))

(assert (= (and b!7889543 (not c!1448475)) b!7889549))

(assert (= (and b!7889549 c!1448477) b!7889553))

(assert (= (and b!7889549 (not c!1448477)) b!7889548))

(assert (= (and b!7889548 c!1448476) b!7889551))

(assert (= (and b!7889548 (not c!1448476)) b!7889556))

(assert (= (or b!7889553 b!7889551) bm!732160))

(assert (= (or b!7889553 b!7889551) bm!732165))

(assert (= (or b!7889553 b!7889551) bm!732161))

(assert (= (or b!7889555 bm!732160) bm!732164))

(assert (= (and d!2356840 res!3131513) b!7889554))

(assert (= (and b!7889554 c!1448473) b!7889544))

(assert (= (and b!7889554 (not c!1448473)) b!7889558))

(assert (= (and b!7889544 res!3131514) b!7889545))

(assert (= (and b!7889558 c!1448478) b!7889542))

(assert (= (and b!7889558 (not c!1448478)) b!7889557))

(assert (= (and b!7889542 res!3131515) b!7889552))

(assert (= (and b!7889557 c!1448472) b!7889547))

(assert (= (and b!7889557 (not c!1448472)) b!7889546))

(assert (= (or b!7889552 b!7889547) bm!732162))

(assert (= (or b!7889544 b!7889542) bm!732163))

(assert (= (or b!7889545 bm!732162) bm!732159))

(declare-fun m!8270334 () Bool)

(assert (=> bm!732165 m!8270334))

(declare-fun m!8270336 () Bool)

(assert (=> bm!732159 m!8270336))

(declare-fun m!8270338 () Bool)

(assert (=> bm!732164 m!8270338))

(declare-fun m!8270340 () Bool)

(assert (=> bm!732161 m!8270340))

(declare-fun m!8270342 () Bool)

(assert (=> bm!732163 m!8270342))

(assert (=> bm!732025 d!2356840))

(declare-fun b!7889559 () Bool)

(declare-fun e!4657868 () Bool)

(declare-fun call!732171 () Bool)

(assert (=> b!7889559 (= e!4657868 call!732171)))

(declare-fun b!7889560 () Bool)

(declare-fun res!3131520 () Bool)

(declare-fun e!4657867 () Bool)

(assert (=> b!7889560 (=> res!3131520 e!4657867)))

(assert (=> b!7889560 (= res!3131520 (not ((_ is Concat!30056) (ite c!1448321 (reg!21540 (ite c!1448195 (regTwo!42935 r!14100) (regOne!42934 r!14100))) (ite c!1448322 (regOne!42935 (ite c!1448195 (regTwo!42935 r!14100) (regOne!42934 r!14100))) (regTwo!42934 (ite c!1448195 (regTwo!42935 r!14100) (regOne!42934 r!14100))))))))))

(declare-fun e!4657871 () Bool)

(assert (=> b!7889560 (= e!4657871 e!4657867)))

(declare-fun b!7889561 () Bool)

(declare-fun e!4657870 () Bool)

(assert (=> b!7889561 (= e!4657870 e!4657871)))

(declare-fun c!1448480 () Bool)

(assert (=> b!7889561 (= c!1448480 ((_ is Union!21211) (ite c!1448321 (reg!21540 (ite c!1448195 (regTwo!42935 r!14100) (regOne!42934 r!14100))) (ite c!1448322 (regOne!42935 (ite c!1448195 (regTwo!42935 r!14100) (regOne!42934 r!14100))) (regTwo!42934 (ite c!1448195 (regTwo!42935 r!14100) (regOne!42934 r!14100)))))))))

(declare-fun b!7889562 () Bool)

(declare-fun e!4657869 () Bool)

(assert (=> b!7889562 (= e!4657869 e!4657870)))

(declare-fun c!1448479 () Bool)

(assert (=> b!7889562 (= c!1448479 ((_ is Star!21211) (ite c!1448321 (reg!21540 (ite c!1448195 (regTwo!42935 r!14100) (regOne!42934 r!14100))) (ite c!1448322 (regOne!42935 (ite c!1448195 (regTwo!42935 r!14100) (regOne!42934 r!14100))) (regTwo!42934 (ite c!1448195 (regTwo!42935 r!14100) (regOne!42934 r!14100)))))))))

(declare-fun b!7889563 () Bool)

(declare-fun e!4657866 () Bool)

(declare-fun call!732173 () Bool)

(assert (=> b!7889563 (= e!4657866 call!732173)))

(declare-fun bm!732167 () Bool)

(assert (=> bm!732167 (= call!732171 call!732173)))

(declare-fun b!7889564 () Bool)

(declare-fun e!4657872 () Bool)

(declare-fun call!732172 () Bool)

(assert (=> b!7889564 (= e!4657872 call!732172)))

(declare-fun d!2356842 () Bool)

(declare-fun res!3131519 () Bool)

(assert (=> d!2356842 (=> res!3131519 e!4657869)))

(assert (=> d!2356842 (= res!3131519 ((_ is ElementMatch!21211) (ite c!1448321 (reg!21540 (ite c!1448195 (regTwo!42935 r!14100) (regOne!42934 r!14100))) (ite c!1448322 (regOne!42935 (ite c!1448195 (regTwo!42935 r!14100) (regOne!42934 r!14100))) (regTwo!42934 (ite c!1448195 (regTwo!42935 r!14100) (regOne!42934 r!14100)))))))))

(assert (=> d!2356842 (= (validRegex!11621 (ite c!1448321 (reg!21540 (ite c!1448195 (regTwo!42935 r!14100) (regOne!42934 r!14100))) (ite c!1448322 (regOne!42935 (ite c!1448195 (regTwo!42935 r!14100) (regOne!42934 r!14100))) (regTwo!42934 (ite c!1448195 (regTwo!42935 r!14100) (regOne!42934 r!14100)))))) e!4657869)))

(declare-fun bm!732166 () Bool)

(assert (=> bm!732166 (= call!732172 (validRegex!11621 (ite c!1448480 (regTwo!42935 (ite c!1448321 (reg!21540 (ite c!1448195 (regTwo!42935 r!14100) (regOne!42934 r!14100))) (ite c!1448322 (regOne!42935 (ite c!1448195 (regTwo!42935 r!14100) (regOne!42934 r!14100))) (regTwo!42934 (ite c!1448195 (regTwo!42935 r!14100) (regOne!42934 r!14100)))))) (regOne!42934 (ite c!1448321 (reg!21540 (ite c!1448195 (regTwo!42935 r!14100) (regOne!42934 r!14100))) (ite c!1448322 (regOne!42935 (ite c!1448195 (regTwo!42935 r!14100) (regOne!42934 r!14100))) (regTwo!42934 (ite c!1448195 (regTwo!42935 r!14100) (regOne!42934 r!14100)))))))))))

(declare-fun b!7889565 () Bool)

(declare-fun res!3131518 () Bool)

(assert (=> b!7889565 (=> (not res!3131518) (not e!4657872))))

(assert (=> b!7889565 (= res!3131518 call!732171)))

(assert (=> b!7889565 (= e!4657871 e!4657872)))

(declare-fun b!7889566 () Bool)

(assert (=> b!7889566 (= e!4657867 e!4657868)))

(declare-fun res!3131517 () Bool)

(assert (=> b!7889566 (=> (not res!3131517) (not e!4657868))))

(assert (=> b!7889566 (= res!3131517 call!732172)))

(declare-fun b!7889567 () Bool)

(assert (=> b!7889567 (= e!4657870 e!4657866)))

(declare-fun res!3131516 () Bool)

(assert (=> b!7889567 (= res!3131516 (not (nullable!9466 (reg!21540 (ite c!1448321 (reg!21540 (ite c!1448195 (regTwo!42935 r!14100) (regOne!42934 r!14100))) (ite c!1448322 (regOne!42935 (ite c!1448195 (regTwo!42935 r!14100) (regOne!42934 r!14100))) (regTwo!42934 (ite c!1448195 (regTwo!42935 r!14100) (regOne!42934 r!14100)))))))))))

(assert (=> b!7889567 (=> (not res!3131516) (not e!4657866))))

(declare-fun bm!732168 () Bool)

(assert (=> bm!732168 (= call!732173 (validRegex!11621 (ite c!1448479 (reg!21540 (ite c!1448321 (reg!21540 (ite c!1448195 (regTwo!42935 r!14100) (regOne!42934 r!14100))) (ite c!1448322 (regOne!42935 (ite c!1448195 (regTwo!42935 r!14100) (regOne!42934 r!14100))) (regTwo!42934 (ite c!1448195 (regTwo!42935 r!14100) (regOne!42934 r!14100)))))) (ite c!1448480 (regOne!42935 (ite c!1448321 (reg!21540 (ite c!1448195 (regTwo!42935 r!14100) (regOne!42934 r!14100))) (ite c!1448322 (regOne!42935 (ite c!1448195 (regTwo!42935 r!14100) (regOne!42934 r!14100))) (regTwo!42934 (ite c!1448195 (regTwo!42935 r!14100) (regOne!42934 r!14100)))))) (regTwo!42934 (ite c!1448321 (reg!21540 (ite c!1448195 (regTwo!42935 r!14100) (regOne!42934 r!14100))) (ite c!1448322 (regOne!42935 (ite c!1448195 (regTwo!42935 r!14100) (regOne!42934 r!14100))) (regTwo!42934 (ite c!1448195 (regTwo!42935 r!14100) (regOne!42934 r!14100))))))))))))

(assert (= (and d!2356842 (not res!3131519)) b!7889562))

(assert (= (and b!7889562 c!1448479) b!7889567))

(assert (= (and b!7889562 (not c!1448479)) b!7889561))

(assert (= (and b!7889567 res!3131516) b!7889563))

(assert (= (and b!7889561 c!1448480) b!7889565))

(assert (= (and b!7889561 (not c!1448480)) b!7889560))

(assert (= (and b!7889565 res!3131518) b!7889564))

(assert (= (and b!7889560 (not res!3131520)) b!7889566))

(assert (= (and b!7889566 res!3131517) b!7889559))

(assert (= (or b!7889564 b!7889566) bm!732166))

(assert (= (or b!7889565 b!7889559) bm!732167))

(assert (= (or b!7889563 bm!732167) bm!732168))

(declare-fun m!8270344 () Bool)

(assert (=> bm!732166 m!8270344))

(declare-fun m!8270346 () Bool)

(assert (=> b!7889567 m!8270346))

(declare-fun m!8270348 () Bool)

(assert (=> bm!732168 m!8270348))

(assert (=> bm!732034 d!2356842))

(assert (=> b!7889005 d!2356814))

(declare-fun b!7889568 () Bool)

(declare-fun e!4657875 () Bool)

(declare-fun call!732174 () Bool)

(assert (=> b!7889568 (= e!4657875 call!732174)))

(declare-fun b!7889569 () Bool)

(declare-fun res!3131525 () Bool)

(declare-fun e!4657874 () Bool)

(assert (=> b!7889569 (=> res!3131525 e!4657874)))

(assert (=> b!7889569 (= res!3131525 (not ((_ is Concat!30056) (ite c!1448335 (regTwo!42935 (ite c!1448194 (reg!21540 r!14100) (ite c!1448195 (regOne!42935 r!14100) (regTwo!42934 r!14100)))) (regOne!42934 (ite c!1448194 (reg!21540 r!14100) (ite c!1448195 (regOne!42935 r!14100) (regTwo!42934 r!14100))))))))))

(declare-fun e!4657878 () Bool)

(assert (=> b!7889569 (= e!4657878 e!4657874)))

(declare-fun b!7889570 () Bool)

(declare-fun e!4657877 () Bool)

(assert (=> b!7889570 (= e!4657877 e!4657878)))

(declare-fun c!1448482 () Bool)

(assert (=> b!7889570 (= c!1448482 ((_ is Union!21211) (ite c!1448335 (regTwo!42935 (ite c!1448194 (reg!21540 r!14100) (ite c!1448195 (regOne!42935 r!14100) (regTwo!42934 r!14100)))) (regOne!42934 (ite c!1448194 (reg!21540 r!14100) (ite c!1448195 (regOne!42935 r!14100) (regTwo!42934 r!14100)))))))))

(declare-fun b!7889571 () Bool)

(declare-fun e!4657876 () Bool)

(assert (=> b!7889571 (= e!4657876 e!4657877)))

(declare-fun c!1448481 () Bool)

(assert (=> b!7889571 (= c!1448481 ((_ is Star!21211) (ite c!1448335 (regTwo!42935 (ite c!1448194 (reg!21540 r!14100) (ite c!1448195 (regOne!42935 r!14100) (regTwo!42934 r!14100)))) (regOne!42934 (ite c!1448194 (reg!21540 r!14100) (ite c!1448195 (regOne!42935 r!14100) (regTwo!42934 r!14100)))))))))

(declare-fun b!7889572 () Bool)

(declare-fun e!4657873 () Bool)

(declare-fun call!732176 () Bool)

(assert (=> b!7889572 (= e!4657873 call!732176)))

(declare-fun bm!732170 () Bool)

(assert (=> bm!732170 (= call!732174 call!732176)))

(declare-fun b!7889573 () Bool)

(declare-fun e!4657879 () Bool)

(declare-fun call!732175 () Bool)

(assert (=> b!7889573 (= e!4657879 call!732175)))

(declare-fun d!2356844 () Bool)

(declare-fun res!3131524 () Bool)

(assert (=> d!2356844 (=> res!3131524 e!4657876)))

(assert (=> d!2356844 (= res!3131524 ((_ is ElementMatch!21211) (ite c!1448335 (regTwo!42935 (ite c!1448194 (reg!21540 r!14100) (ite c!1448195 (regOne!42935 r!14100) (regTwo!42934 r!14100)))) (regOne!42934 (ite c!1448194 (reg!21540 r!14100) (ite c!1448195 (regOne!42935 r!14100) (regTwo!42934 r!14100)))))))))

(assert (=> d!2356844 (= (validRegex!11621 (ite c!1448335 (regTwo!42935 (ite c!1448194 (reg!21540 r!14100) (ite c!1448195 (regOne!42935 r!14100) (regTwo!42934 r!14100)))) (regOne!42934 (ite c!1448194 (reg!21540 r!14100) (ite c!1448195 (regOne!42935 r!14100) (regTwo!42934 r!14100)))))) e!4657876)))

(declare-fun bm!732169 () Bool)

(assert (=> bm!732169 (= call!732175 (validRegex!11621 (ite c!1448482 (regTwo!42935 (ite c!1448335 (regTwo!42935 (ite c!1448194 (reg!21540 r!14100) (ite c!1448195 (regOne!42935 r!14100) (regTwo!42934 r!14100)))) (regOne!42934 (ite c!1448194 (reg!21540 r!14100) (ite c!1448195 (regOne!42935 r!14100) (regTwo!42934 r!14100)))))) (regOne!42934 (ite c!1448335 (regTwo!42935 (ite c!1448194 (reg!21540 r!14100) (ite c!1448195 (regOne!42935 r!14100) (regTwo!42934 r!14100)))) (regOne!42934 (ite c!1448194 (reg!21540 r!14100) (ite c!1448195 (regOne!42935 r!14100) (regTwo!42934 r!14100)))))))))))

(declare-fun b!7889574 () Bool)

(declare-fun res!3131523 () Bool)

(assert (=> b!7889574 (=> (not res!3131523) (not e!4657879))))

(assert (=> b!7889574 (= res!3131523 call!732174)))

(assert (=> b!7889574 (= e!4657878 e!4657879)))

(declare-fun b!7889575 () Bool)

(assert (=> b!7889575 (= e!4657874 e!4657875)))

(declare-fun res!3131522 () Bool)

(assert (=> b!7889575 (=> (not res!3131522) (not e!4657875))))

(assert (=> b!7889575 (= res!3131522 call!732175)))

(declare-fun b!7889576 () Bool)

(assert (=> b!7889576 (= e!4657877 e!4657873)))

(declare-fun res!3131521 () Bool)

(assert (=> b!7889576 (= res!3131521 (not (nullable!9466 (reg!21540 (ite c!1448335 (regTwo!42935 (ite c!1448194 (reg!21540 r!14100) (ite c!1448195 (regOne!42935 r!14100) (regTwo!42934 r!14100)))) (regOne!42934 (ite c!1448194 (reg!21540 r!14100) (ite c!1448195 (regOne!42935 r!14100) (regTwo!42934 r!14100)))))))))))

(assert (=> b!7889576 (=> (not res!3131521) (not e!4657873))))

(declare-fun bm!732171 () Bool)

(assert (=> bm!732171 (= call!732176 (validRegex!11621 (ite c!1448481 (reg!21540 (ite c!1448335 (regTwo!42935 (ite c!1448194 (reg!21540 r!14100) (ite c!1448195 (regOne!42935 r!14100) (regTwo!42934 r!14100)))) (regOne!42934 (ite c!1448194 (reg!21540 r!14100) (ite c!1448195 (regOne!42935 r!14100) (regTwo!42934 r!14100)))))) (ite c!1448482 (regOne!42935 (ite c!1448335 (regTwo!42935 (ite c!1448194 (reg!21540 r!14100) (ite c!1448195 (regOne!42935 r!14100) (regTwo!42934 r!14100)))) (regOne!42934 (ite c!1448194 (reg!21540 r!14100) (ite c!1448195 (regOne!42935 r!14100) (regTwo!42934 r!14100)))))) (regTwo!42934 (ite c!1448335 (regTwo!42935 (ite c!1448194 (reg!21540 r!14100) (ite c!1448195 (regOne!42935 r!14100) (regTwo!42934 r!14100)))) (regOne!42934 (ite c!1448194 (reg!21540 r!14100) (ite c!1448195 (regOne!42935 r!14100) (regTwo!42934 r!14100))))))))))))

(assert (= (and d!2356844 (not res!3131524)) b!7889571))

(assert (= (and b!7889571 c!1448481) b!7889576))

(assert (= (and b!7889571 (not c!1448481)) b!7889570))

(assert (= (and b!7889576 res!3131521) b!7889572))

(assert (= (and b!7889570 c!1448482) b!7889574))

(assert (= (and b!7889570 (not c!1448482)) b!7889569))

(assert (= (and b!7889574 res!3131523) b!7889573))

(assert (= (and b!7889569 (not res!3131525)) b!7889575))

(assert (= (and b!7889575 res!3131522) b!7889568))

(assert (= (or b!7889573 b!7889575) bm!732169))

(assert (= (or b!7889574 b!7889568) bm!732170))

(assert (= (or b!7889572 bm!732170) bm!732171))

(declare-fun m!8270350 () Bool)

(assert (=> bm!732169 m!8270350))

(declare-fun m!8270352 () Bool)

(assert (=> b!7889576 m!8270352))

(declare-fun m!8270354 () Bool)

(assert (=> bm!732171 m!8270354))

(assert (=> bm!732045 d!2356844))

(declare-fun d!2356846 () Bool)

(assert (=> d!2356846 (= (nullable!9466 (reg!21540 (ite c!1448195 (regTwo!42935 r!14100) (regOne!42934 r!14100)))) (nullableFct!3736 (reg!21540 (ite c!1448195 (regTwo!42935 r!14100) (regOne!42934 r!14100)))))))

(declare-fun bs!1967535 () Bool)

(assert (= bs!1967535 d!2356846))

(declare-fun m!8270356 () Bool)

(assert (=> bs!1967535 m!8270356))

(assert (=> b!7888940 d!2356846))

(declare-fun b!7889577 () Bool)

(declare-fun e!4657882 () Bool)

(declare-fun call!732177 () Bool)

(assert (=> b!7889577 (= e!4657882 call!732177)))

(declare-fun b!7889578 () Bool)

(declare-fun res!3131530 () Bool)

(declare-fun e!4657881 () Bool)

(assert (=> b!7889578 (=> res!3131530 e!4657881)))

(assert (=> b!7889578 (= res!3131530 (not ((_ is Concat!30056) (ite c!1448334 (reg!21540 (ite c!1448194 (reg!21540 r!14100) (ite c!1448195 (regOne!42935 r!14100) (regTwo!42934 r!14100)))) (ite c!1448335 (regOne!42935 (ite c!1448194 (reg!21540 r!14100) (ite c!1448195 (regOne!42935 r!14100) (regTwo!42934 r!14100)))) (regTwo!42934 (ite c!1448194 (reg!21540 r!14100) (ite c!1448195 (regOne!42935 r!14100) (regTwo!42934 r!14100)))))))))))

(declare-fun e!4657885 () Bool)

(assert (=> b!7889578 (= e!4657885 e!4657881)))

(declare-fun b!7889579 () Bool)

(declare-fun e!4657884 () Bool)

(assert (=> b!7889579 (= e!4657884 e!4657885)))

(declare-fun c!1448484 () Bool)

(assert (=> b!7889579 (= c!1448484 ((_ is Union!21211) (ite c!1448334 (reg!21540 (ite c!1448194 (reg!21540 r!14100) (ite c!1448195 (regOne!42935 r!14100) (regTwo!42934 r!14100)))) (ite c!1448335 (regOne!42935 (ite c!1448194 (reg!21540 r!14100) (ite c!1448195 (regOne!42935 r!14100) (regTwo!42934 r!14100)))) (regTwo!42934 (ite c!1448194 (reg!21540 r!14100) (ite c!1448195 (regOne!42935 r!14100) (regTwo!42934 r!14100))))))))))

(declare-fun b!7889580 () Bool)

(declare-fun e!4657883 () Bool)

(assert (=> b!7889580 (= e!4657883 e!4657884)))

(declare-fun c!1448483 () Bool)

(assert (=> b!7889580 (= c!1448483 ((_ is Star!21211) (ite c!1448334 (reg!21540 (ite c!1448194 (reg!21540 r!14100) (ite c!1448195 (regOne!42935 r!14100) (regTwo!42934 r!14100)))) (ite c!1448335 (regOne!42935 (ite c!1448194 (reg!21540 r!14100) (ite c!1448195 (regOne!42935 r!14100) (regTwo!42934 r!14100)))) (regTwo!42934 (ite c!1448194 (reg!21540 r!14100) (ite c!1448195 (regOne!42935 r!14100) (regTwo!42934 r!14100))))))))))

(declare-fun b!7889581 () Bool)

(declare-fun e!4657880 () Bool)

(declare-fun call!732179 () Bool)

(assert (=> b!7889581 (= e!4657880 call!732179)))

(declare-fun bm!732173 () Bool)

(assert (=> bm!732173 (= call!732177 call!732179)))

(declare-fun b!7889582 () Bool)

(declare-fun e!4657886 () Bool)

(declare-fun call!732178 () Bool)

(assert (=> b!7889582 (= e!4657886 call!732178)))

(declare-fun d!2356848 () Bool)

(declare-fun res!3131529 () Bool)

(assert (=> d!2356848 (=> res!3131529 e!4657883)))

(assert (=> d!2356848 (= res!3131529 ((_ is ElementMatch!21211) (ite c!1448334 (reg!21540 (ite c!1448194 (reg!21540 r!14100) (ite c!1448195 (regOne!42935 r!14100) (regTwo!42934 r!14100)))) (ite c!1448335 (regOne!42935 (ite c!1448194 (reg!21540 r!14100) (ite c!1448195 (regOne!42935 r!14100) (regTwo!42934 r!14100)))) (regTwo!42934 (ite c!1448194 (reg!21540 r!14100) (ite c!1448195 (regOne!42935 r!14100) (regTwo!42934 r!14100))))))))))

(assert (=> d!2356848 (= (validRegex!11621 (ite c!1448334 (reg!21540 (ite c!1448194 (reg!21540 r!14100) (ite c!1448195 (regOne!42935 r!14100) (regTwo!42934 r!14100)))) (ite c!1448335 (regOne!42935 (ite c!1448194 (reg!21540 r!14100) (ite c!1448195 (regOne!42935 r!14100) (regTwo!42934 r!14100)))) (regTwo!42934 (ite c!1448194 (reg!21540 r!14100) (ite c!1448195 (regOne!42935 r!14100) (regTwo!42934 r!14100))))))) e!4657883)))

(declare-fun bm!732172 () Bool)

(assert (=> bm!732172 (= call!732178 (validRegex!11621 (ite c!1448484 (regTwo!42935 (ite c!1448334 (reg!21540 (ite c!1448194 (reg!21540 r!14100) (ite c!1448195 (regOne!42935 r!14100) (regTwo!42934 r!14100)))) (ite c!1448335 (regOne!42935 (ite c!1448194 (reg!21540 r!14100) (ite c!1448195 (regOne!42935 r!14100) (regTwo!42934 r!14100)))) (regTwo!42934 (ite c!1448194 (reg!21540 r!14100) (ite c!1448195 (regOne!42935 r!14100) (regTwo!42934 r!14100))))))) (regOne!42934 (ite c!1448334 (reg!21540 (ite c!1448194 (reg!21540 r!14100) (ite c!1448195 (regOne!42935 r!14100) (regTwo!42934 r!14100)))) (ite c!1448335 (regOne!42935 (ite c!1448194 (reg!21540 r!14100) (ite c!1448195 (regOne!42935 r!14100) (regTwo!42934 r!14100)))) (regTwo!42934 (ite c!1448194 (reg!21540 r!14100) (ite c!1448195 (regOne!42935 r!14100) (regTwo!42934 r!14100))))))))))))

(declare-fun b!7889583 () Bool)

(declare-fun res!3131528 () Bool)

(assert (=> b!7889583 (=> (not res!3131528) (not e!4657886))))

(assert (=> b!7889583 (= res!3131528 call!732177)))

(assert (=> b!7889583 (= e!4657885 e!4657886)))

(declare-fun b!7889584 () Bool)

(assert (=> b!7889584 (= e!4657881 e!4657882)))

(declare-fun res!3131527 () Bool)

(assert (=> b!7889584 (=> (not res!3131527) (not e!4657882))))

(assert (=> b!7889584 (= res!3131527 call!732178)))

(declare-fun b!7889585 () Bool)

(assert (=> b!7889585 (= e!4657884 e!4657880)))

(declare-fun res!3131526 () Bool)

(assert (=> b!7889585 (= res!3131526 (not (nullable!9466 (reg!21540 (ite c!1448334 (reg!21540 (ite c!1448194 (reg!21540 r!14100) (ite c!1448195 (regOne!42935 r!14100) (regTwo!42934 r!14100)))) (ite c!1448335 (regOne!42935 (ite c!1448194 (reg!21540 r!14100) (ite c!1448195 (regOne!42935 r!14100) (regTwo!42934 r!14100)))) (regTwo!42934 (ite c!1448194 (reg!21540 r!14100) (ite c!1448195 (regOne!42935 r!14100) (regTwo!42934 r!14100))))))))))))

(assert (=> b!7889585 (=> (not res!3131526) (not e!4657880))))

(declare-fun bm!732174 () Bool)

(assert (=> bm!732174 (= call!732179 (validRegex!11621 (ite c!1448483 (reg!21540 (ite c!1448334 (reg!21540 (ite c!1448194 (reg!21540 r!14100) (ite c!1448195 (regOne!42935 r!14100) (regTwo!42934 r!14100)))) (ite c!1448335 (regOne!42935 (ite c!1448194 (reg!21540 r!14100) (ite c!1448195 (regOne!42935 r!14100) (regTwo!42934 r!14100)))) (regTwo!42934 (ite c!1448194 (reg!21540 r!14100) (ite c!1448195 (regOne!42935 r!14100) (regTwo!42934 r!14100))))))) (ite c!1448484 (regOne!42935 (ite c!1448334 (reg!21540 (ite c!1448194 (reg!21540 r!14100) (ite c!1448195 (regOne!42935 r!14100) (regTwo!42934 r!14100)))) (ite c!1448335 (regOne!42935 (ite c!1448194 (reg!21540 r!14100) (ite c!1448195 (regOne!42935 r!14100) (regTwo!42934 r!14100)))) (regTwo!42934 (ite c!1448194 (reg!21540 r!14100) (ite c!1448195 (regOne!42935 r!14100) (regTwo!42934 r!14100))))))) (regTwo!42934 (ite c!1448334 (reg!21540 (ite c!1448194 (reg!21540 r!14100) (ite c!1448195 (regOne!42935 r!14100) (regTwo!42934 r!14100)))) (ite c!1448335 (regOne!42935 (ite c!1448194 (reg!21540 r!14100) (ite c!1448195 (regOne!42935 r!14100) (regTwo!42934 r!14100)))) (regTwo!42934 (ite c!1448194 (reg!21540 r!14100) (ite c!1448195 (regOne!42935 r!14100) (regTwo!42934 r!14100)))))))))))))

(assert (= (and d!2356848 (not res!3131529)) b!7889580))

(assert (= (and b!7889580 c!1448483) b!7889585))

(assert (= (and b!7889580 (not c!1448483)) b!7889579))

(assert (= (and b!7889585 res!3131526) b!7889581))

(assert (= (and b!7889579 c!1448484) b!7889583))

(assert (= (and b!7889579 (not c!1448484)) b!7889578))

(assert (= (and b!7889583 res!3131528) b!7889582))

(assert (= (and b!7889578 (not res!3131530)) b!7889584))

(assert (= (and b!7889584 res!3131527) b!7889577))

(assert (= (or b!7889582 b!7889584) bm!732172))

(assert (= (or b!7889583 b!7889577) bm!732173))

(assert (= (or b!7889581 bm!732173) bm!732174))

(declare-fun m!8270358 () Bool)

(assert (=> bm!732172 m!8270358))

(declare-fun m!8270360 () Bool)

(assert (=> b!7889585 m!8270360))

(declare-fun m!8270362 () Bool)

(assert (=> bm!732174 m!8270362))

(assert (=> bm!732047 d!2356848))

(declare-fun b!7889586 () Bool)

(declare-fun res!3131533 () Bool)

(declare-fun e!4657892 () Bool)

(assert (=> b!7889586 (=> (not res!3131533) (not e!4657892))))

(declare-fun lt!2681525 () Int)

(declare-fun call!732181 () Int)

(assert (=> b!7889586 (= res!3131533 (> lt!2681525 call!732181))))

(declare-fun e!4657888 () Bool)

(assert (=> b!7889586 (= e!4657888 e!4657892)))

(declare-fun b!7889587 () Bool)

(declare-fun e!4657887 () Int)

(declare-fun e!4657896 () Int)

(assert (=> b!7889587 (= e!4657887 e!4657896)))

(declare-fun c!1448488 () Bool)

(assert (=> b!7889587 (= c!1448488 ((_ is Star!21211) (ite c!1448315 (regOne!42935 (ite c!1448268 (reg!21540 r!14100) (ite c!1448270 (regOne!42935 r!14100) (regTwo!42934 r!14100)))) (regOne!42934 (ite c!1448268 (reg!21540 r!14100) (ite c!1448270 (regOne!42935 r!14100) (regTwo!42934 r!14100)))))))))

(declare-fun b!7889588 () Bool)

(declare-fun e!4657895 () Bool)

(declare-fun e!4657891 () Bool)

(assert (=> b!7889588 (= e!4657895 e!4657891)))

(declare-fun res!3131532 () Bool)

(assert (=> b!7889588 (= res!3131532 (> lt!2681525 call!732181))))

(assert (=> b!7889588 (=> (not res!3131532) (not e!4657891))))

(declare-fun b!7889589 () Bool)

(declare-fun call!732180 () Int)

(assert (=> b!7889589 (= e!4657891 (> lt!2681525 call!732180))))

(declare-fun bm!732175 () Bool)

(declare-fun c!1448486 () Bool)

(declare-fun c!1448491 () Bool)

(assert (=> bm!732175 (= call!732180 (regexDepth!515 (ite c!1448486 (regTwo!42935 (ite c!1448315 (regOne!42935 (ite c!1448268 (reg!21540 r!14100) (ite c!1448270 (regOne!42935 r!14100) (regTwo!42934 r!14100)))) (regOne!42934 (ite c!1448268 (reg!21540 r!14100) (ite c!1448270 (regOne!42935 r!14100) (regTwo!42934 r!14100)))))) (ite c!1448491 (regTwo!42934 (ite c!1448315 (regOne!42935 (ite c!1448268 (reg!21540 r!14100) (ite c!1448270 (regOne!42935 r!14100) (regTwo!42934 r!14100)))) (regOne!42934 (ite c!1448268 (reg!21540 r!14100) (ite c!1448270 (regOne!42935 r!14100) (regTwo!42934 r!14100)))))) (reg!21540 (ite c!1448315 (regOne!42935 (ite c!1448268 (reg!21540 r!14100) (ite c!1448270 (regOne!42935 r!14100) (regTwo!42934 r!14100)))) (regOne!42934 (ite c!1448268 (reg!21540 r!14100) (ite c!1448270 (regOne!42935 r!14100) (regTwo!42934 r!14100))))))))))))

(declare-fun bm!732176 () Bool)

(declare-fun call!732184 () Int)

(declare-fun call!732182 () Int)

(assert (=> bm!732176 (= call!732184 call!732182)))

(declare-fun b!7889590 () Bool)

(declare-fun e!4657894 () Bool)

(assert (=> b!7889590 (= e!4657894 (= lt!2681525 1))))

(declare-fun c!1448490 () Bool)

(declare-fun call!732185 () Int)

(declare-fun call!732183 () Int)

(declare-fun bm!732177 () Bool)

(assert (=> bm!732177 (= call!732185 (maxBigInt!0 (ite c!1448490 call!732184 call!732183) (ite c!1448490 call!732183 call!732184)))))

(declare-fun b!7889591 () Bool)

(declare-fun call!732186 () Int)

(assert (=> b!7889591 (= e!4657894 (> lt!2681525 call!732186))))

(declare-fun b!7889592 () Bool)

(declare-fun e!4657890 () Int)

(declare-fun e!4657893 () Int)

(assert (=> b!7889592 (= e!4657890 e!4657893)))

(declare-fun c!1448489 () Bool)

(assert (=> b!7889592 (= c!1448489 ((_ is Concat!30056) (ite c!1448315 (regOne!42935 (ite c!1448268 (reg!21540 r!14100) (ite c!1448270 (regOne!42935 r!14100) (regTwo!42934 r!14100)))) (regOne!42934 (ite c!1448268 (reg!21540 r!14100) (ite c!1448270 (regOne!42935 r!14100) (regTwo!42934 r!14100)))))))))

(declare-fun bm!732178 () Bool)

(assert (=> bm!732178 (= call!732186 call!732180)))

(declare-fun b!7889593 () Bool)

(assert (=> b!7889593 (= c!1448490 ((_ is Union!21211) (ite c!1448315 (regOne!42935 (ite c!1448268 (reg!21540 r!14100) (ite c!1448270 (regOne!42935 r!14100) (regTwo!42934 r!14100)))) (regOne!42934 (ite c!1448268 (reg!21540 r!14100) (ite c!1448270 (regOne!42935 r!14100) (regTwo!42934 r!14100)))))))))

(assert (=> b!7889593 (= e!4657896 e!4657890)))

(declare-fun b!7889594 () Bool)

(assert (=> b!7889594 (= e!4657887 1)))

(declare-fun bm!732179 () Bool)

(assert (=> bm!732179 (= call!732181 (regexDepth!515 (ite c!1448486 (regOne!42935 (ite c!1448315 (regOne!42935 (ite c!1448268 (reg!21540 r!14100) (ite c!1448270 (regOne!42935 r!14100) (regTwo!42934 r!14100)))) (regOne!42934 (ite c!1448268 (reg!21540 r!14100) (ite c!1448270 (regOne!42935 r!14100) (regTwo!42934 r!14100)))))) (regOne!42934 (ite c!1448315 (regOne!42935 (ite c!1448268 (reg!21540 r!14100) (ite c!1448270 (regOne!42935 r!14100) (regTwo!42934 r!14100)))) (regOne!42934 (ite c!1448268 (reg!21540 r!14100) (ite c!1448270 (regOne!42935 r!14100) (regTwo!42934 r!14100)))))))))))

(declare-fun bm!732180 () Bool)

(assert (=> bm!732180 (= call!732182 (regexDepth!515 (ite c!1448488 (reg!21540 (ite c!1448315 (regOne!42935 (ite c!1448268 (reg!21540 r!14100) (ite c!1448270 (regOne!42935 r!14100) (regTwo!42934 r!14100)))) (regOne!42934 (ite c!1448268 (reg!21540 r!14100) (ite c!1448270 (regOne!42935 r!14100) (regTwo!42934 r!14100)))))) (ite c!1448490 (regOne!42935 (ite c!1448315 (regOne!42935 (ite c!1448268 (reg!21540 r!14100) (ite c!1448270 (regOne!42935 r!14100) (regTwo!42934 r!14100)))) (regOne!42934 (ite c!1448268 (reg!21540 r!14100) (ite c!1448270 (regOne!42935 r!14100) (regTwo!42934 r!14100)))))) (regTwo!42934 (ite c!1448315 (regOne!42935 (ite c!1448268 (reg!21540 r!14100) (ite c!1448270 (regOne!42935 r!14100) (regTwo!42934 r!14100)))) (regOne!42934 (ite c!1448268 (reg!21540 r!14100) (ite c!1448270 (regOne!42935 r!14100) (regTwo!42934 r!14100))))))))))))

(declare-fun d!2356850 () Bool)

(declare-fun e!4657889 () Bool)

(assert (=> d!2356850 e!4657889))

(declare-fun res!3131531 () Bool)

(assert (=> d!2356850 (=> (not res!3131531) (not e!4657889))))

(assert (=> d!2356850 (= res!3131531 (> lt!2681525 0))))

(assert (=> d!2356850 (= lt!2681525 e!4657887)))

(declare-fun c!1448487 () Bool)

(assert (=> d!2356850 (= c!1448487 ((_ is ElementMatch!21211) (ite c!1448315 (regOne!42935 (ite c!1448268 (reg!21540 r!14100) (ite c!1448270 (regOne!42935 r!14100) (regTwo!42934 r!14100)))) (regOne!42934 (ite c!1448268 (reg!21540 r!14100) (ite c!1448270 (regOne!42935 r!14100) (regTwo!42934 r!14100)))))))))

(assert (=> d!2356850 (= (regexDepth!515 (ite c!1448315 (regOne!42935 (ite c!1448268 (reg!21540 r!14100) (ite c!1448270 (regOne!42935 r!14100) (regTwo!42934 r!14100)))) (regOne!42934 (ite c!1448268 (reg!21540 r!14100) (ite c!1448270 (regOne!42935 r!14100) (regTwo!42934 r!14100)))))) lt!2681525)))

(declare-fun b!7889595 () Bool)

(assert (=> b!7889595 (= e!4657893 (+ 1 call!732185))))

(declare-fun bm!732181 () Bool)

(assert (=> bm!732181 (= call!732183 (regexDepth!515 (ite c!1448490 (regTwo!42935 (ite c!1448315 (regOne!42935 (ite c!1448268 (reg!21540 r!14100) (ite c!1448270 (regOne!42935 r!14100) (regTwo!42934 r!14100)))) (regOne!42934 (ite c!1448268 (reg!21540 r!14100) (ite c!1448270 (regOne!42935 r!14100) (regTwo!42934 r!14100)))))) (regOne!42934 (ite c!1448315 (regOne!42935 (ite c!1448268 (reg!21540 r!14100) (ite c!1448270 (regOne!42935 r!14100) (regTwo!42934 r!14100)))) (regOne!42934 (ite c!1448268 (reg!21540 r!14100) (ite c!1448270 (regOne!42935 r!14100) (regTwo!42934 r!14100)))))))))))

(declare-fun b!7889596 () Bool)

(assert (=> b!7889596 (= e!4657892 (> lt!2681525 call!732186))))

(declare-fun b!7889597 () Bool)

(assert (=> b!7889597 (= e!4657890 (+ 1 call!732185))))

(declare-fun b!7889598 () Bool)

(assert (=> b!7889598 (= e!4657889 e!4657895)))

(assert (=> b!7889598 (= c!1448486 ((_ is Union!21211) (ite c!1448315 (regOne!42935 (ite c!1448268 (reg!21540 r!14100) (ite c!1448270 (regOne!42935 r!14100) (regTwo!42934 r!14100)))) (regOne!42934 (ite c!1448268 (reg!21540 r!14100) (ite c!1448270 (regOne!42935 r!14100) (regTwo!42934 r!14100)))))))))

(declare-fun b!7889599 () Bool)

(assert (=> b!7889599 (= e!4657896 (+ 1 call!732182))))

(declare-fun b!7889600 () Bool)

(assert (=> b!7889600 (= e!4657893 1)))

(declare-fun b!7889601 () Bool)

(declare-fun c!1448485 () Bool)

(assert (=> b!7889601 (= c!1448485 ((_ is Star!21211) (ite c!1448315 (regOne!42935 (ite c!1448268 (reg!21540 r!14100) (ite c!1448270 (regOne!42935 r!14100) (regTwo!42934 r!14100)))) (regOne!42934 (ite c!1448268 (reg!21540 r!14100) (ite c!1448270 (regOne!42935 r!14100) (regTwo!42934 r!14100)))))))))

(assert (=> b!7889601 (= e!4657888 e!4657894)))

(declare-fun b!7889602 () Bool)

(assert (=> b!7889602 (= e!4657895 e!4657888)))

(assert (=> b!7889602 (= c!1448491 ((_ is Concat!30056) (ite c!1448315 (regOne!42935 (ite c!1448268 (reg!21540 r!14100) (ite c!1448270 (regOne!42935 r!14100) (regTwo!42934 r!14100)))) (regOne!42934 (ite c!1448268 (reg!21540 r!14100) (ite c!1448270 (regOne!42935 r!14100) (regTwo!42934 r!14100)))))))))

(assert (= (and d!2356850 c!1448487) b!7889594))

(assert (= (and d!2356850 (not c!1448487)) b!7889587))

(assert (= (and b!7889587 c!1448488) b!7889599))

(assert (= (and b!7889587 (not c!1448488)) b!7889593))

(assert (= (and b!7889593 c!1448490) b!7889597))

(assert (= (and b!7889593 (not c!1448490)) b!7889592))

(assert (= (and b!7889592 c!1448489) b!7889595))

(assert (= (and b!7889592 (not c!1448489)) b!7889600))

(assert (= (or b!7889597 b!7889595) bm!732176))

(assert (= (or b!7889597 b!7889595) bm!732181))

(assert (= (or b!7889597 b!7889595) bm!732177))

(assert (= (or b!7889599 bm!732176) bm!732180))

(assert (= (and d!2356850 res!3131531) b!7889598))

(assert (= (and b!7889598 c!1448486) b!7889588))

(assert (= (and b!7889598 (not c!1448486)) b!7889602))

(assert (= (and b!7889588 res!3131532) b!7889589))

(assert (= (and b!7889602 c!1448491) b!7889586))

(assert (= (and b!7889602 (not c!1448491)) b!7889601))

(assert (= (and b!7889586 res!3131533) b!7889596))

(assert (= (and b!7889601 c!1448485) b!7889591))

(assert (= (and b!7889601 (not c!1448485)) b!7889590))

(assert (= (or b!7889596 b!7889591) bm!732178))

(assert (= (or b!7889588 b!7889586) bm!732179))

(assert (= (or b!7889589 bm!732178) bm!732175))

(declare-fun m!8270364 () Bool)

(assert (=> bm!732181 m!8270364))

(declare-fun m!8270366 () Bool)

(assert (=> bm!732175 m!8270366))

(declare-fun m!8270368 () Bool)

(assert (=> bm!732180 m!8270368))

(declare-fun m!8270370 () Bool)

(assert (=> bm!732177 m!8270370))

(declare-fun m!8270372 () Bool)

(assert (=> bm!732179 m!8270372))

(assert (=> bm!732029 d!2356850))

(declare-fun d!2356852 () Bool)

(assert (=> d!2356852 (= (Exists!4764 (ite c!1448277 lambda!472166 lambda!472167)) (choose!59698 (ite c!1448277 lambda!472166 lambda!472167)))))

(declare-fun bs!1967536 () Bool)

(assert (= bs!1967536 d!2356852))

(declare-fun m!8270374 () Bool)

(assert (=> bs!1967536 m!8270374))

(assert (=> bm!731999 d!2356852))

(declare-fun d!2356854 () Bool)

(assert (=> d!2356854 (= (maxBigInt!0 (ite c!1448285 call!732009 call!732008) (ite c!1448285 call!732008 call!732009)) (ite (>= (ite c!1448285 call!732009 call!732008) (ite c!1448285 call!732008 call!732009)) (ite c!1448285 call!732009 call!732008) (ite c!1448285 call!732008 call!732009)))))

(assert (=> bm!732002 d!2356854))

(declare-fun d!2356856 () Bool)

(declare-fun c!1448492 () Bool)

(assert (=> d!2356856 (= c!1448492 ((_ is Nil!73944) (t!388803 (_2!38333 cut!2))))))

(declare-fun e!4657897 () (InoxSet C!42748))

(assert (=> d!2356856 (= (content!15695 (t!388803 (_2!38333 cut!2))) e!4657897)))

(declare-fun b!7889603 () Bool)

(assert (=> b!7889603 (= e!4657897 ((as const (Array C!42748 Bool)) false))))

(declare-fun b!7889604 () Bool)

(assert (=> b!7889604 (= e!4657897 ((_ map or) (store ((as const (Array C!42748 Bool)) false) (h!80392 (t!388803 (_2!38333 cut!2))) true) (content!15695 (t!388803 (t!388803 (_2!38333 cut!2))))))))

(assert (= (and d!2356856 c!1448492) b!7889603))

(assert (= (and d!2356856 (not c!1448492)) b!7889604))

(declare-fun m!8270376 () Bool)

(assert (=> b!7889604 m!8270376))

(declare-fun m!8270378 () Bool)

(assert (=> b!7889604 m!8270378))

(assert (=> b!7889007 d!2356856))

(declare-fun d!2356858 () Bool)

(assert (=> d!2356858 (= (nullable!9466 (reg!21540 (ite c!1448194 (reg!21540 r!14100) (ite c!1448195 (regOne!42935 r!14100) (regTwo!42934 r!14100))))) (nullableFct!3736 (reg!21540 (ite c!1448194 (reg!21540 r!14100) (ite c!1448195 (regOne!42935 r!14100) (regTwo!42934 r!14100))))))))

(declare-fun bs!1967537 () Bool)

(assert (= bs!1967537 d!2356858))

(declare-fun m!8270380 () Bool)

(assert (=> bs!1967537 m!8270380))

(assert (=> b!7888979 d!2356858))

(declare-fun b!7889605 () Bool)

(declare-fun res!3131536 () Bool)

(declare-fun e!4657903 () Bool)

(assert (=> b!7889605 (=> (not res!3131536) (not e!4657903))))

(declare-fun lt!2681526 () Int)

(declare-fun call!732188 () Int)

(assert (=> b!7889605 (= res!3131536 (> lt!2681526 call!732188))))

(declare-fun e!4657899 () Bool)

(assert (=> b!7889605 (= e!4657899 e!4657903)))

(declare-fun b!7889606 () Bool)

(declare-fun e!4657898 () Int)

(declare-fun e!4657907 () Int)

(assert (=> b!7889606 (= e!4657898 e!4657907)))

(declare-fun c!1448496 () Bool)

(assert (=> b!7889606 (= c!1448496 ((_ is Star!21211) (ite c!1448299 (regTwo!42935 (ite c!1448266 (regTwo!42935 r!14100) (ite c!1448271 (regTwo!42934 r!14100) (reg!21540 r!14100)))) (regOne!42934 (ite c!1448266 (regTwo!42935 r!14100) (ite c!1448271 (regTwo!42934 r!14100) (reg!21540 r!14100)))))))))

(declare-fun b!7889607 () Bool)

(declare-fun e!4657906 () Bool)

(declare-fun e!4657902 () Bool)

(assert (=> b!7889607 (= e!4657906 e!4657902)))

(declare-fun res!3131535 () Bool)

(assert (=> b!7889607 (= res!3131535 (> lt!2681526 call!732188))))

(assert (=> b!7889607 (=> (not res!3131535) (not e!4657902))))

(declare-fun b!7889608 () Bool)

(declare-fun call!732187 () Int)

(assert (=> b!7889608 (= e!4657902 (> lt!2681526 call!732187))))

(declare-fun bm!732182 () Bool)

(declare-fun c!1448494 () Bool)

(declare-fun c!1448499 () Bool)

(assert (=> bm!732182 (= call!732187 (regexDepth!515 (ite c!1448494 (regTwo!42935 (ite c!1448299 (regTwo!42935 (ite c!1448266 (regTwo!42935 r!14100) (ite c!1448271 (regTwo!42934 r!14100) (reg!21540 r!14100)))) (regOne!42934 (ite c!1448266 (regTwo!42935 r!14100) (ite c!1448271 (regTwo!42934 r!14100) (reg!21540 r!14100)))))) (ite c!1448499 (regTwo!42934 (ite c!1448299 (regTwo!42935 (ite c!1448266 (regTwo!42935 r!14100) (ite c!1448271 (regTwo!42934 r!14100) (reg!21540 r!14100)))) (regOne!42934 (ite c!1448266 (regTwo!42935 r!14100) (ite c!1448271 (regTwo!42934 r!14100) (reg!21540 r!14100)))))) (reg!21540 (ite c!1448299 (regTwo!42935 (ite c!1448266 (regTwo!42935 r!14100) (ite c!1448271 (regTwo!42934 r!14100) (reg!21540 r!14100)))) (regOne!42934 (ite c!1448266 (regTwo!42935 r!14100) (ite c!1448271 (regTwo!42934 r!14100) (reg!21540 r!14100))))))))))))

(declare-fun bm!732183 () Bool)

(declare-fun call!732191 () Int)

(declare-fun call!732189 () Int)

(assert (=> bm!732183 (= call!732191 call!732189)))

(declare-fun b!7889609 () Bool)

(declare-fun e!4657905 () Bool)

(assert (=> b!7889609 (= e!4657905 (= lt!2681526 1))))

(declare-fun call!732190 () Int)

(declare-fun call!732192 () Int)

(declare-fun bm!732184 () Bool)

(declare-fun c!1448498 () Bool)

(assert (=> bm!732184 (= call!732192 (maxBigInt!0 (ite c!1448498 call!732191 call!732190) (ite c!1448498 call!732190 call!732191)))))

(declare-fun b!7889610 () Bool)

(declare-fun call!732193 () Int)

(assert (=> b!7889610 (= e!4657905 (> lt!2681526 call!732193))))

(declare-fun b!7889611 () Bool)

(declare-fun e!4657901 () Int)

(declare-fun e!4657904 () Int)

(assert (=> b!7889611 (= e!4657901 e!4657904)))

(declare-fun c!1448497 () Bool)

(assert (=> b!7889611 (= c!1448497 ((_ is Concat!30056) (ite c!1448299 (regTwo!42935 (ite c!1448266 (regTwo!42935 r!14100) (ite c!1448271 (regTwo!42934 r!14100) (reg!21540 r!14100)))) (regOne!42934 (ite c!1448266 (regTwo!42935 r!14100) (ite c!1448271 (regTwo!42934 r!14100) (reg!21540 r!14100)))))))))

(declare-fun bm!732185 () Bool)

(assert (=> bm!732185 (= call!732193 call!732187)))

(declare-fun b!7889612 () Bool)

(assert (=> b!7889612 (= c!1448498 ((_ is Union!21211) (ite c!1448299 (regTwo!42935 (ite c!1448266 (regTwo!42935 r!14100) (ite c!1448271 (regTwo!42934 r!14100) (reg!21540 r!14100)))) (regOne!42934 (ite c!1448266 (regTwo!42935 r!14100) (ite c!1448271 (regTwo!42934 r!14100) (reg!21540 r!14100)))))))))

(assert (=> b!7889612 (= e!4657907 e!4657901)))

(declare-fun b!7889613 () Bool)

(assert (=> b!7889613 (= e!4657898 1)))

(declare-fun bm!732186 () Bool)

(assert (=> bm!732186 (= call!732188 (regexDepth!515 (ite c!1448494 (regOne!42935 (ite c!1448299 (regTwo!42935 (ite c!1448266 (regTwo!42935 r!14100) (ite c!1448271 (regTwo!42934 r!14100) (reg!21540 r!14100)))) (regOne!42934 (ite c!1448266 (regTwo!42935 r!14100) (ite c!1448271 (regTwo!42934 r!14100) (reg!21540 r!14100)))))) (regOne!42934 (ite c!1448299 (regTwo!42935 (ite c!1448266 (regTwo!42935 r!14100) (ite c!1448271 (regTwo!42934 r!14100) (reg!21540 r!14100)))) (regOne!42934 (ite c!1448266 (regTwo!42935 r!14100) (ite c!1448271 (regTwo!42934 r!14100) (reg!21540 r!14100)))))))))))

(declare-fun bm!732187 () Bool)

(assert (=> bm!732187 (= call!732189 (regexDepth!515 (ite c!1448496 (reg!21540 (ite c!1448299 (regTwo!42935 (ite c!1448266 (regTwo!42935 r!14100) (ite c!1448271 (regTwo!42934 r!14100) (reg!21540 r!14100)))) (regOne!42934 (ite c!1448266 (regTwo!42935 r!14100) (ite c!1448271 (regTwo!42934 r!14100) (reg!21540 r!14100)))))) (ite c!1448498 (regOne!42935 (ite c!1448299 (regTwo!42935 (ite c!1448266 (regTwo!42935 r!14100) (ite c!1448271 (regTwo!42934 r!14100) (reg!21540 r!14100)))) (regOne!42934 (ite c!1448266 (regTwo!42935 r!14100) (ite c!1448271 (regTwo!42934 r!14100) (reg!21540 r!14100)))))) (regTwo!42934 (ite c!1448299 (regTwo!42935 (ite c!1448266 (regTwo!42935 r!14100) (ite c!1448271 (regTwo!42934 r!14100) (reg!21540 r!14100)))) (regOne!42934 (ite c!1448266 (regTwo!42935 r!14100) (ite c!1448271 (regTwo!42934 r!14100) (reg!21540 r!14100))))))))))))

(declare-fun d!2356860 () Bool)

(declare-fun e!4657900 () Bool)

(assert (=> d!2356860 e!4657900))

(declare-fun res!3131534 () Bool)

(assert (=> d!2356860 (=> (not res!3131534) (not e!4657900))))

(assert (=> d!2356860 (= res!3131534 (> lt!2681526 0))))

(assert (=> d!2356860 (= lt!2681526 e!4657898)))

(declare-fun c!1448495 () Bool)

(assert (=> d!2356860 (= c!1448495 ((_ is ElementMatch!21211) (ite c!1448299 (regTwo!42935 (ite c!1448266 (regTwo!42935 r!14100) (ite c!1448271 (regTwo!42934 r!14100) (reg!21540 r!14100)))) (regOne!42934 (ite c!1448266 (regTwo!42935 r!14100) (ite c!1448271 (regTwo!42934 r!14100) (reg!21540 r!14100)))))))))

(assert (=> d!2356860 (= (regexDepth!515 (ite c!1448299 (regTwo!42935 (ite c!1448266 (regTwo!42935 r!14100) (ite c!1448271 (regTwo!42934 r!14100) (reg!21540 r!14100)))) (regOne!42934 (ite c!1448266 (regTwo!42935 r!14100) (ite c!1448271 (regTwo!42934 r!14100) (reg!21540 r!14100)))))) lt!2681526)))

(declare-fun b!7889614 () Bool)

(assert (=> b!7889614 (= e!4657904 (+ 1 call!732192))))

(declare-fun bm!732188 () Bool)

(assert (=> bm!732188 (= call!732190 (regexDepth!515 (ite c!1448498 (regTwo!42935 (ite c!1448299 (regTwo!42935 (ite c!1448266 (regTwo!42935 r!14100) (ite c!1448271 (regTwo!42934 r!14100) (reg!21540 r!14100)))) (regOne!42934 (ite c!1448266 (regTwo!42935 r!14100) (ite c!1448271 (regTwo!42934 r!14100) (reg!21540 r!14100)))))) (regOne!42934 (ite c!1448299 (regTwo!42935 (ite c!1448266 (regTwo!42935 r!14100) (ite c!1448271 (regTwo!42934 r!14100) (reg!21540 r!14100)))) (regOne!42934 (ite c!1448266 (regTwo!42935 r!14100) (ite c!1448271 (regTwo!42934 r!14100) (reg!21540 r!14100)))))))))))

(declare-fun b!7889615 () Bool)

(assert (=> b!7889615 (= e!4657903 (> lt!2681526 call!732193))))

(declare-fun b!7889616 () Bool)

(assert (=> b!7889616 (= e!4657901 (+ 1 call!732192))))

(declare-fun b!7889617 () Bool)

(assert (=> b!7889617 (= e!4657900 e!4657906)))

(assert (=> b!7889617 (= c!1448494 ((_ is Union!21211) (ite c!1448299 (regTwo!42935 (ite c!1448266 (regTwo!42935 r!14100) (ite c!1448271 (regTwo!42934 r!14100) (reg!21540 r!14100)))) (regOne!42934 (ite c!1448266 (regTwo!42935 r!14100) (ite c!1448271 (regTwo!42934 r!14100) (reg!21540 r!14100)))))))))

(declare-fun b!7889618 () Bool)

(assert (=> b!7889618 (= e!4657907 (+ 1 call!732189))))

(declare-fun b!7889619 () Bool)

(assert (=> b!7889619 (= e!4657904 1)))

(declare-fun c!1448493 () Bool)

(declare-fun b!7889620 () Bool)

(assert (=> b!7889620 (= c!1448493 ((_ is Star!21211) (ite c!1448299 (regTwo!42935 (ite c!1448266 (regTwo!42935 r!14100) (ite c!1448271 (regTwo!42934 r!14100) (reg!21540 r!14100)))) (regOne!42934 (ite c!1448266 (regTwo!42935 r!14100) (ite c!1448271 (regTwo!42934 r!14100) (reg!21540 r!14100)))))))))

(assert (=> b!7889620 (= e!4657899 e!4657905)))

(declare-fun b!7889621 () Bool)

(assert (=> b!7889621 (= e!4657906 e!4657899)))

(assert (=> b!7889621 (= c!1448499 ((_ is Concat!30056) (ite c!1448299 (regTwo!42935 (ite c!1448266 (regTwo!42935 r!14100) (ite c!1448271 (regTwo!42934 r!14100) (reg!21540 r!14100)))) (regOne!42934 (ite c!1448266 (regTwo!42935 r!14100) (ite c!1448271 (regTwo!42934 r!14100) (reg!21540 r!14100)))))))))

(assert (= (and d!2356860 c!1448495) b!7889613))

(assert (= (and d!2356860 (not c!1448495)) b!7889606))

(assert (= (and b!7889606 c!1448496) b!7889618))

(assert (= (and b!7889606 (not c!1448496)) b!7889612))

(assert (= (and b!7889612 c!1448498) b!7889616))

(assert (= (and b!7889612 (not c!1448498)) b!7889611))

(assert (= (and b!7889611 c!1448497) b!7889614))

(assert (= (and b!7889611 (not c!1448497)) b!7889619))

(assert (= (or b!7889616 b!7889614) bm!732183))

(assert (= (or b!7889616 b!7889614) bm!732188))

(assert (= (or b!7889616 b!7889614) bm!732184))

(assert (= (or b!7889618 bm!732183) bm!732187))

(assert (= (and d!2356860 res!3131534) b!7889617))

(assert (= (and b!7889617 c!1448494) b!7889607))

(assert (= (and b!7889617 (not c!1448494)) b!7889621))

(assert (= (and b!7889607 res!3131535) b!7889608))

(assert (= (and b!7889621 c!1448499) b!7889605))

(assert (= (and b!7889621 (not c!1448499)) b!7889620))

(assert (= (and b!7889605 res!3131536) b!7889615))

(assert (= (and b!7889620 c!1448493) b!7889610))

(assert (= (and b!7889620 (not c!1448493)) b!7889609))

(assert (= (or b!7889615 b!7889610) bm!732185))

(assert (= (or b!7889607 b!7889605) bm!732186))

(assert (= (or b!7889608 bm!732185) bm!732182))

(declare-fun m!8270382 () Bool)

(assert (=> bm!732188 m!8270382))

(declare-fun m!8270384 () Bool)

(assert (=> bm!732182 m!8270384))

(declare-fun m!8270386 () Bool)

(assert (=> bm!732187 m!8270386))

(declare-fun m!8270388 () Bool)

(assert (=> bm!732184 m!8270388))

(declare-fun m!8270390 () Bool)

(assert (=> bm!732186 m!8270390))

(assert (=> bm!732020 d!2356860))

(assert (=> bm!731998 d!2356678))

(declare-fun d!2356862 () Bool)

(assert (=> d!2356862 (= (maxBigInt!0 (ite c!1448330 call!732044 call!732043) (ite c!1448330 call!732043 call!732044)) (ite (>= (ite c!1448330 call!732044 call!732043) (ite c!1448330 call!732043 call!732044)) (ite c!1448330 call!732044 call!732043) (ite c!1448330 call!732043 call!732044)))))

(assert (=> bm!732037 d!2356862))

(declare-fun bs!1967538 () Bool)

(declare-fun b!7889631 () Bool)

(assert (= bs!1967538 (and b!7889631 b!7888892)))

(declare-fun lambda!472180 () Int)

(assert (=> bs!1967538 (= (and (= (reg!21540 (regTwo!42935 (regTwo!42935 (reg!21540 r!14100)))) (reg!21540 (regOne!42935 (reg!21540 r!14100)))) (= (regTwo!42935 (regTwo!42935 (reg!21540 r!14100))) (regOne!42935 (reg!21540 r!14100)))) (= lambda!472180 lambda!472168))))

(declare-fun bs!1967539 () Bool)

(assert (= bs!1967539 (and b!7889631 b!7889311)))

(assert (=> bs!1967539 (not (= lambda!472180 lambda!472175))))

(declare-fun bs!1967540 () Bool)

(assert (= bs!1967540 (and b!7889631 b!7889540)))

(assert (=> bs!1967540 (= (and (= (reg!21540 (regTwo!42935 (regTwo!42935 (reg!21540 r!14100)))) (reg!21540 (regOne!42935 (regOne!42935 (reg!21540 r!14100))))) (= (regTwo!42935 (regTwo!42935 (reg!21540 r!14100))) (regOne!42935 (regOne!42935 (reg!21540 r!14100))))) (= lambda!472180 lambda!472178))))

(declare-fun bs!1967541 () Bool)

(assert (= bs!1967541 (and b!7889631 b!7888888)))

(assert (=> bs!1967541 (not (= lambda!472180 lambda!472169))))

(declare-fun bs!1967542 () Bool)

(assert (= bs!1967542 (and b!7889631 b!7888826)))

(assert (=> bs!1967542 (not (= lambda!472180 lambda!472167))))

(declare-fun bs!1967543 () Bool)

(assert (= bs!1967543 (and b!7889631 b!7889481)))

(assert (=> bs!1967543 (not (= lambda!472180 lambda!472177))))

(declare-fun bs!1967544 () Bool)

(assert (= bs!1967544 (and b!7889631 b!7888703)))

(assert (=> bs!1967544 (not (= lambda!472180 lambda!472165))))

(declare-fun bs!1967545 () Bool)

(assert (= bs!1967545 (and b!7889631 b!7889315)))

(assert (=> bs!1967545 (= (and (= (reg!21540 (regTwo!42935 (regTwo!42935 (reg!21540 r!14100)))) (reg!21540 (regTwo!42935 (regOne!42935 (reg!21540 r!14100))))) (= (regTwo!42935 (regTwo!42935 (reg!21540 r!14100))) (regTwo!42935 (regOne!42935 (reg!21540 r!14100))))) (= lambda!472180 lambda!472174))))

(declare-fun bs!1967546 () Bool)

(assert (= bs!1967546 (and b!7889631 b!7889536)))

(assert (=> bs!1967546 (not (= lambda!472180 lambda!472179))))

(declare-fun bs!1967547 () Bool)

(assert (= bs!1967547 (and b!7889631 b!7888707)))

(assert (=> bs!1967547 (= (and (= (reg!21540 (regTwo!42935 (regTwo!42935 (reg!21540 r!14100)))) (reg!21540 (reg!21540 r!14100))) (= (regTwo!42935 (regTwo!42935 (reg!21540 r!14100))) (reg!21540 r!14100))) (= lambda!472180 lambda!472164))))

(declare-fun bs!1967548 () Bool)

(assert (= bs!1967548 (and b!7889631 b!7888830)))

(assert (=> bs!1967548 (= (and (= (reg!21540 (regTwo!42935 (regTwo!42935 (reg!21540 r!14100)))) (reg!21540 (regTwo!42935 (reg!21540 r!14100)))) (= (regTwo!42935 (regTwo!42935 (reg!21540 r!14100))) (regTwo!42935 (reg!21540 r!14100)))) (= lambda!472180 lambda!472166))))

(declare-fun bs!1967549 () Bool)

(assert (= bs!1967549 (and b!7889631 b!7889485)))

(assert (=> bs!1967549 (= (and (= (reg!21540 (regTwo!42935 (regTwo!42935 (reg!21540 r!14100)))) (reg!21540 (regOne!42935 (regTwo!42935 (reg!21540 r!14100))))) (= (regTwo!42935 (regTwo!42935 (reg!21540 r!14100))) (regOne!42935 (regTwo!42935 (reg!21540 r!14100))))) (= lambda!472180 lambda!472176))))

(assert (=> b!7889631 true))

(assert (=> b!7889631 true))

(declare-fun bs!1967550 () Bool)

(declare-fun b!7889627 () Bool)

(assert (= bs!1967550 (and b!7889627 b!7888892)))

(declare-fun lambda!472181 () Int)

(assert (=> bs!1967550 (not (= lambda!472181 lambda!472168))))

(declare-fun bs!1967551 () Bool)

(assert (= bs!1967551 (and b!7889627 b!7889631)))

(assert (=> bs!1967551 (not (= lambda!472181 lambda!472180))))

(declare-fun bs!1967552 () Bool)

(assert (= bs!1967552 (and b!7889627 b!7889311)))

(assert (=> bs!1967552 (= (and (= (regOne!42934 (regTwo!42935 (regTwo!42935 (reg!21540 r!14100)))) (regOne!42934 (regTwo!42935 (regOne!42935 (reg!21540 r!14100))))) (= (regTwo!42934 (regTwo!42935 (regTwo!42935 (reg!21540 r!14100)))) (regTwo!42934 (regTwo!42935 (regOne!42935 (reg!21540 r!14100)))))) (= lambda!472181 lambda!472175))))

(declare-fun bs!1967553 () Bool)

(assert (= bs!1967553 (and b!7889627 b!7889540)))

(assert (=> bs!1967553 (not (= lambda!472181 lambda!472178))))

(declare-fun bs!1967554 () Bool)

(assert (= bs!1967554 (and b!7889627 b!7888888)))

(assert (=> bs!1967554 (= (and (= (regOne!42934 (regTwo!42935 (regTwo!42935 (reg!21540 r!14100)))) (regOne!42934 (regOne!42935 (reg!21540 r!14100)))) (= (regTwo!42934 (regTwo!42935 (regTwo!42935 (reg!21540 r!14100)))) (regTwo!42934 (regOne!42935 (reg!21540 r!14100))))) (= lambda!472181 lambda!472169))))

(declare-fun bs!1967555 () Bool)

(assert (= bs!1967555 (and b!7889627 b!7888826)))

(assert (=> bs!1967555 (= (and (= (regOne!42934 (regTwo!42935 (regTwo!42935 (reg!21540 r!14100)))) (regOne!42934 (regTwo!42935 (reg!21540 r!14100)))) (= (regTwo!42934 (regTwo!42935 (regTwo!42935 (reg!21540 r!14100)))) (regTwo!42934 (regTwo!42935 (reg!21540 r!14100))))) (= lambda!472181 lambda!472167))))

(declare-fun bs!1967556 () Bool)

(assert (= bs!1967556 (and b!7889627 b!7889481)))

(assert (=> bs!1967556 (= (and (= (regOne!42934 (regTwo!42935 (regTwo!42935 (reg!21540 r!14100)))) (regOne!42934 (regOne!42935 (regTwo!42935 (reg!21540 r!14100))))) (= (regTwo!42934 (regTwo!42935 (regTwo!42935 (reg!21540 r!14100)))) (regTwo!42934 (regOne!42935 (regTwo!42935 (reg!21540 r!14100)))))) (= lambda!472181 lambda!472177))))

(declare-fun bs!1967557 () Bool)

(assert (= bs!1967557 (and b!7889627 b!7888703)))

(assert (=> bs!1967557 (= (and (= (regOne!42934 (regTwo!42935 (regTwo!42935 (reg!21540 r!14100)))) (regOne!42934 (reg!21540 r!14100))) (= (regTwo!42934 (regTwo!42935 (regTwo!42935 (reg!21540 r!14100)))) (regTwo!42934 (reg!21540 r!14100)))) (= lambda!472181 lambda!472165))))

(declare-fun bs!1967558 () Bool)

(assert (= bs!1967558 (and b!7889627 b!7889315)))

(assert (=> bs!1967558 (not (= lambda!472181 lambda!472174))))

(declare-fun bs!1967559 () Bool)

(assert (= bs!1967559 (and b!7889627 b!7889536)))

(assert (=> bs!1967559 (= (and (= (regOne!42934 (regTwo!42935 (regTwo!42935 (reg!21540 r!14100)))) (regOne!42934 (regOne!42935 (regOne!42935 (reg!21540 r!14100))))) (= (regTwo!42934 (regTwo!42935 (regTwo!42935 (reg!21540 r!14100)))) (regTwo!42934 (regOne!42935 (regOne!42935 (reg!21540 r!14100)))))) (= lambda!472181 lambda!472179))))

(declare-fun bs!1967560 () Bool)

(assert (= bs!1967560 (and b!7889627 b!7888707)))

(assert (=> bs!1967560 (not (= lambda!472181 lambda!472164))))

(declare-fun bs!1967561 () Bool)

(assert (= bs!1967561 (and b!7889627 b!7888830)))

(assert (=> bs!1967561 (not (= lambda!472181 lambda!472166))))

(declare-fun bs!1967562 () Bool)

(assert (= bs!1967562 (and b!7889627 b!7889485)))

(assert (=> bs!1967562 (not (= lambda!472181 lambda!472176))))

(assert (=> b!7889627 true))

(assert (=> b!7889627 true))

(declare-fun b!7889622 () Bool)

(declare-fun e!4657910 () Bool)

(assert (=> b!7889622 (= e!4657910 (= (_1!38333 cut!2) (Cons!73944 (c!1448183 (regTwo!42935 (regTwo!42935 (reg!21540 r!14100)))) Nil!73944)))))

(declare-fun b!7889623 () Bool)

(declare-fun e!4657913 () Bool)

(assert (=> b!7889623 (= e!4657913 (matchRSpec!4674 (regTwo!42935 (regTwo!42935 (regTwo!42935 (reg!21540 r!14100)))) (_1!38333 cut!2)))))

(declare-fun bm!732189 () Bool)

(declare-fun call!732194 () Bool)

(assert (=> bm!732189 (= call!732194 (isEmpty!42429 (_1!38333 cut!2)))))

(declare-fun bm!732190 () Bool)

(declare-fun call!732195 () Bool)

(declare-fun c!1448501 () Bool)

(assert (=> bm!732190 (= call!732195 (Exists!4764 (ite c!1448501 lambda!472180 lambda!472181)))))

(declare-fun b!7889624 () Bool)

(declare-fun e!4657914 () Bool)

(declare-fun e!4657912 () Bool)

(assert (=> b!7889624 (= e!4657914 e!4657912)))

(declare-fun res!3131538 () Bool)

(assert (=> b!7889624 (= res!3131538 (not ((_ is EmptyLang!21211) (regTwo!42935 (regTwo!42935 (reg!21540 r!14100))))))))

(assert (=> b!7889624 (=> (not res!3131538) (not e!4657912))))

(declare-fun b!7889625 () Bool)

(declare-fun e!4657911 () Bool)

(declare-fun e!4657908 () Bool)

(assert (=> b!7889625 (= e!4657911 e!4657908)))

(assert (=> b!7889625 (= c!1448501 ((_ is Star!21211) (regTwo!42935 (regTwo!42935 (reg!21540 r!14100)))))))

(declare-fun d!2356864 () Bool)

(declare-fun c!1448502 () Bool)

(assert (=> d!2356864 (= c!1448502 ((_ is EmptyExpr!21211) (regTwo!42935 (regTwo!42935 (reg!21540 r!14100)))))))

(assert (=> d!2356864 (= (matchRSpec!4674 (regTwo!42935 (regTwo!42935 (reg!21540 r!14100))) (_1!38333 cut!2)) e!4657914)))

(declare-fun b!7889626 () Bool)

(declare-fun res!3131537 () Bool)

(declare-fun e!4657909 () Bool)

(assert (=> b!7889626 (=> res!3131537 e!4657909)))

(assert (=> b!7889626 (= res!3131537 call!732194)))

(assert (=> b!7889626 (= e!4657908 e!4657909)))

(assert (=> b!7889627 (= e!4657908 call!732195)))

(declare-fun b!7889628 () Bool)

(assert (=> b!7889628 (= e!4657914 call!732194)))

(declare-fun b!7889629 () Bool)

(declare-fun c!1448500 () Bool)

(assert (=> b!7889629 (= c!1448500 ((_ is Union!21211) (regTwo!42935 (regTwo!42935 (reg!21540 r!14100)))))))

(assert (=> b!7889629 (= e!4657910 e!4657911)))

(declare-fun b!7889630 () Bool)

(assert (=> b!7889630 (= e!4657911 e!4657913)))

(declare-fun res!3131539 () Bool)

(assert (=> b!7889630 (= res!3131539 (matchRSpec!4674 (regOne!42935 (regTwo!42935 (regTwo!42935 (reg!21540 r!14100)))) (_1!38333 cut!2)))))

(assert (=> b!7889630 (=> res!3131539 e!4657913)))

(assert (=> b!7889631 (= e!4657909 call!732195)))

(declare-fun b!7889632 () Bool)

(declare-fun c!1448503 () Bool)

(assert (=> b!7889632 (= c!1448503 ((_ is ElementMatch!21211) (regTwo!42935 (regTwo!42935 (reg!21540 r!14100)))))))

(assert (=> b!7889632 (= e!4657912 e!4657910)))

(assert (= (and d!2356864 c!1448502) b!7889628))

(assert (= (and d!2356864 (not c!1448502)) b!7889624))

(assert (= (and b!7889624 res!3131538) b!7889632))

(assert (= (and b!7889632 c!1448503) b!7889622))

(assert (= (and b!7889632 (not c!1448503)) b!7889629))

(assert (= (and b!7889629 c!1448500) b!7889630))

(assert (= (and b!7889629 (not c!1448500)) b!7889625))

(assert (= (and b!7889630 (not res!3131539)) b!7889623))

(assert (= (and b!7889625 c!1448501) b!7889626))

(assert (= (and b!7889625 (not c!1448501)) b!7889627))

(assert (= (and b!7889626 (not res!3131537)) b!7889631))

(assert (= (or b!7889631 b!7889627) bm!732190))

(assert (= (or b!7889628 b!7889626) bm!732189))

(declare-fun m!8270392 () Bool)

(assert (=> b!7889623 m!8270392))

(assert (=> bm!732189 m!8269898))

(declare-fun m!8270394 () Bool)

(assert (=> bm!732190 m!8270394))

(declare-fun m!8270396 () Bool)

(assert (=> b!7889630 m!8270396))

(assert (=> b!7888822 d!2356864))

(declare-fun b!7889633 () Bool)

(declare-fun res!3131542 () Bool)

(declare-fun e!4657920 () Bool)

(assert (=> b!7889633 (=> (not res!3131542) (not e!4657920))))

(declare-fun lt!2681527 () Int)

(declare-fun call!732197 () Int)

(assert (=> b!7889633 (= res!3131542 (> lt!2681527 call!732197))))

(declare-fun e!4657916 () Bool)

(assert (=> b!7889633 (= e!4657916 e!4657920)))

(declare-fun b!7889634 () Bool)

(declare-fun e!4657915 () Int)

(declare-fun e!4657924 () Int)

(assert (=> b!7889634 (= e!4657915 e!4657924)))

(declare-fun c!1448507 () Bool)

(assert (=> b!7889634 (= c!1448507 ((_ is Star!21211) (ite c!1448297 (reg!21540 (ite c!1448266 (regTwo!42935 r!14100) (ite c!1448271 (regTwo!42934 r!14100) (reg!21540 r!14100)))) (ite c!1448299 (regOne!42935 (ite c!1448266 (regTwo!42935 r!14100) (ite c!1448271 (regTwo!42934 r!14100) (reg!21540 r!14100)))) (regTwo!42934 (ite c!1448266 (regTwo!42935 r!14100) (ite c!1448271 (regTwo!42934 r!14100) (reg!21540 r!14100))))))))))

(declare-fun b!7889635 () Bool)

(declare-fun e!4657923 () Bool)

(declare-fun e!4657919 () Bool)

(assert (=> b!7889635 (= e!4657923 e!4657919)))

(declare-fun res!3131541 () Bool)

(assert (=> b!7889635 (= res!3131541 (> lt!2681527 call!732197))))

(assert (=> b!7889635 (=> (not res!3131541) (not e!4657919))))

(declare-fun b!7889636 () Bool)

(declare-fun call!732196 () Int)

(assert (=> b!7889636 (= e!4657919 (> lt!2681527 call!732196))))

(declare-fun bm!732191 () Bool)

(declare-fun c!1448510 () Bool)

(declare-fun c!1448505 () Bool)

(assert (=> bm!732191 (= call!732196 (regexDepth!515 (ite c!1448505 (regTwo!42935 (ite c!1448297 (reg!21540 (ite c!1448266 (regTwo!42935 r!14100) (ite c!1448271 (regTwo!42934 r!14100) (reg!21540 r!14100)))) (ite c!1448299 (regOne!42935 (ite c!1448266 (regTwo!42935 r!14100) (ite c!1448271 (regTwo!42934 r!14100) (reg!21540 r!14100)))) (regTwo!42934 (ite c!1448266 (regTwo!42935 r!14100) (ite c!1448271 (regTwo!42934 r!14100) (reg!21540 r!14100))))))) (ite c!1448510 (regTwo!42934 (ite c!1448297 (reg!21540 (ite c!1448266 (regTwo!42935 r!14100) (ite c!1448271 (regTwo!42934 r!14100) (reg!21540 r!14100)))) (ite c!1448299 (regOne!42935 (ite c!1448266 (regTwo!42935 r!14100) (ite c!1448271 (regTwo!42934 r!14100) (reg!21540 r!14100)))) (regTwo!42934 (ite c!1448266 (regTwo!42935 r!14100) (ite c!1448271 (regTwo!42934 r!14100) (reg!21540 r!14100))))))) (reg!21540 (ite c!1448297 (reg!21540 (ite c!1448266 (regTwo!42935 r!14100) (ite c!1448271 (regTwo!42934 r!14100) (reg!21540 r!14100)))) (ite c!1448299 (regOne!42935 (ite c!1448266 (regTwo!42935 r!14100) (ite c!1448271 (regTwo!42934 r!14100) (reg!21540 r!14100)))) (regTwo!42934 (ite c!1448266 (regTwo!42935 r!14100) (ite c!1448271 (regTwo!42934 r!14100) (reg!21540 r!14100)))))))))))))

(declare-fun bm!732192 () Bool)

(declare-fun call!732200 () Int)

(declare-fun call!732198 () Int)

(assert (=> bm!732192 (= call!732200 call!732198)))

(declare-fun b!7889637 () Bool)

(declare-fun e!4657922 () Bool)

(assert (=> b!7889637 (= e!4657922 (= lt!2681527 1))))

(declare-fun call!732201 () Int)

(declare-fun call!732199 () Int)

(declare-fun c!1448509 () Bool)

(declare-fun bm!732193 () Bool)

(assert (=> bm!732193 (= call!732201 (maxBigInt!0 (ite c!1448509 call!732200 call!732199) (ite c!1448509 call!732199 call!732200)))))

(declare-fun b!7889638 () Bool)

(declare-fun call!732202 () Int)

(assert (=> b!7889638 (= e!4657922 (> lt!2681527 call!732202))))

(declare-fun b!7889639 () Bool)

(declare-fun e!4657918 () Int)

(declare-fun e!4657921 () Int)

(assert (=> b!7889639 (= e!4657918 e!4657921)))

(declare-fun c!1448508 () Bool)

(assert (=> b!7889639 (= c!1448508 ((_ is Concat!30056) (ite c!1448297 (reg!21540 (ite c!1448266 (regTwo!42935 r!14100) (ite c!1448271 (regTwo!42934 r!14100) (reg!21540 r!14100)))) (ite c!1448299 (regOne!42935 (ite c!1448266 (regTwo!42935 r!14100) (ite c!1448271 (regTwo!42934 r!14100) (reg!21540 r!14100)))) (regTwo!42934 (ite c!1448266 (regTwo!42935 r!14100) (ite c!1448271 (regTwo!42934 r!14100) (reg!21540 r!14100))))))))))

(declare-fun bm!732194 () Bool)

(assert (=> bm!732194 (= call!732202 call!732196)))

(declare-fun b!7889640 () Bool)

(assert (=> b!7889640 (= c!1448509 ((_ is Union!21211) (ite c!1448297 (reg!21540 (ite c!1448266 (regTwo!42935 r!14100) (ite c!1448271 (regTwo!42934 r!14100) (reg!21540 r!14100)))) (ite c!1448299 (regOne!42935 (ite c!1448266 (regTwo!42935 r!14100) (ite c!1448271 (regTwo!42934 r!14100) (reg!21540 r!14100)))) (regTwo!42934 (ite c!1448266 (regTwo!42935 r!14100) (ite c!1448271 (regTwo!42934 r!14100) (reg!21540 r!14100))))))))))

(assert (=> b!7889640 (= e!4657924 e!4657918)))

(declare-fun b!7889641 () Bool)

(assert (=> b!7889641 (= e!4657915 1)))

(declare-fun bm!732195 () Bool)

(assert (=> bm!732195 (= call!732197 (regexDepth!515 (ite c!1448505 (regOne!42935 (ite c!1448297 (reg!21540 (ite c!1448266 (regTwo!42935 r!14100) (ite c!1448271 (regTwo!42934 r!14100) (reg!21540 r!14100)))) (ite c!1448299 (regOne!42935 (ite c!1448266 (regTwo!42935 r!14100) (ite c!1448271 (regTwo!42934 r!14100) (reg!21540 r!14100)))) (regTwo!42934 (ite c!1448266 (regTwo!42935 r!14100) (ite c!1448271 (regTwo!42934 r!14100) (reg!21540 r!14100))))))) (regOne!42934 (ite c!1448297 (reg!21540 (ite c!1448266 (regTwo!42935 r!14100) (ite c!1448271 (regTwo!42934 r!14100) (reg!21540 r!14100)))) (ite c!1448299 (regOne!42935 (ite c!1448266 (regTwo!42935 r!14100) (ite c!1448271 (regTwo!42934 r!14100) (reg!21540 r!14100)))) (regTwo!42934 (ite c!1448266 (regTwo!42935 r!14100) (ite c!1448271 (regTwo!42934 r!14100) (reg!21540 r!14100))))))))))))

(declare-fun bm!732196 () Bool)

(assert (=> bm!732196 (= call!732198 (regexDepth!515 (ite c!1448507 (reg!21540 (ite c!1448297 (reg!21540 (ite c!1448266 (regTwo!42935 r!14100) (ite c!1448271 (regTwo!42934 r!14100) (reg!21540 r!14100)))) (ite c!1448299 (regOne!42935 (ite c!1448266 (regTwo!42935 r!14100) (ite c!1448271 (regTwo!42934 r!14100) (reg!21540 r!14100)))) (regTwo!42934 (ite c!1448266 (regTwo!42935 r!14100) (ite c!1448271 (regTwo!42934 r!14100) (reg!21540 r!14100))))))) (ite c!1448509 (regOne!42935 (ite c!1448297 (reg!21540 (ite c!1448266 (regTwo!42935 r!14100) (ite c!1448271 (regTwo!42934 r!14100) (reg!21540 r!14100)))) (ite c!1448299 (regOne!42935 (ite c!1448266 (regTwo!42935 r!14100) (ite c!1448271 (regTwo!42934 r!14100) (reg!21540 r!14100)))) (regTwo!42934 (ite c!1448266 (regTwo!42935 r!14100) (ite c!1448271 (regTwo!42934 r!14100) (reg!21540 r!14100))))))) (regTwo!42934 (ite c!1448297 (reg!21540 (ite c!1448266 (regTwo!42935 r!14100) (ite c!1448271 (regTwo!42934 r!14100) (reg!21540 r!14100)))) (ite c!1448299 (regOne!42935 (ite c!1448266 (regTwo!42935 r!14100) (ite c!1448271 (regTwo!42934 r!14100) (reg!21540 r!14100)))) (regTwo!42934 (ite c!1448266 (regTwo!42935 r!14100) (ite c!1448271 (regTwo!42934 r!14100) (reg!21540 r!14100)))))))))))))

(declare-fun d!2356866 () Bool)

(declare-fun e!4657917 () Bool)

(assert (=> d!2356866 e!4657917))

(declare-fun res!3131540 () Bool)

(assert (=> d!2356866 (=> (not res!3131540) (not e!4657917))))

(assert (=> d!2356866 (= res!3131540 (> lt!2681527 0))))

(assert (=> d!2356866 (= lt!2681527 e!4657915)))

(declare-fun c!1448506 () Bool)

(assert (=> d!2356866 (= c!1448506 ((_ is ElementMatch!21211) (ite c!1448297 (reg!21540 (ite c!1448266 (regTwo!42935 r!14100) (ite c!1448271 (regTwo!42934 r!14100) (reg!21540 r!14100)))) (ite c!1448299 (regOne!42935 (ite c!1448266 (regTwo!42935 r!14100) (ite c!1448271 (regTwo!42934 r!14100) (reg!21540 r!14100)))) (regTwo!42934 (ite c!1448266 (regTwo!42935 r!14100) (ite c!1448271 (regTwo!42934 r!14100) (reg!21540 r!14100))))))))))

(assert (=> d!2356866 (= (regexDepth!515 (ite c!1448297 (reg!21540 (ite c!1448266 (regTwo!42935 r!14100) (ite c!1448271 (regTwo!42934 r!14100) (reg!21540 r!14100)))) (ite c!1448299 (regOne!42935 (ite c!1448266 (regTwo!42935 r!14100) (ite c!1448271 (regTwo!42934 r!14100) (reg!21540 r!14100)))) (regTwo!42934 (ite c!1448266 (regTwo!42935 r!14100) (ite c!1448271 (regTwo!42934 r!14100) (reg!21540 r!14100))))))) lt!2681527)))

(declare-fun b!7889642 () Bool)

(assert (=> b!7889642 (= e!4657921 (+ 1 call!732201))))

(declare-fun bm!732197 () Bool)

(assert (=> bm!732197 (= call!732199 (regexDepth!515 (ite c!1448509 (regTwo!42935 (ite c!1448297 (reg!21540 (ite c!1448266 (regTwo!42935 r!14100) (ite c!1448271 (regTwo!42934 r!14100) (reg!21540 r!14100)))) (ite c!1448299 (regOne!42935 (ite c!1448266 (regTwo!42935 r!14100) (ite c!1448271 (regTwo!42934 r!14100) (reg!21540 r!14100)))) (regTwo!42934 (ite c!1448266 (regTwo!42935 r!14100) (ite c!1448271 (regTwo!42934 r!14100) (reg!21540 r!14100))))))) (regOne!42934 (ite c!1448297 (reg!21540 (ite c!1448266 (regTwo!42935 r!14100) (ite c!1448271 (regTwo!42934 r!14100) (reg!21540 r!14100)))) (ite c!1448299 (regOne!42935 (ite c!1448266 (regTwo!42935 r!14100) (ite c!1448271 (regTwo!42934 r!14100) (reg!21540 r!14100)))) (regTwo!42934 (ite c!1448266 (regTwo!42935 r!14100) (ite c!1448271 (regTwo!42934 r!14100) (reg!21540 r!14100))))))))))))

(declare-fun b!7889643 () Bool)

(assert (=> b!7889643 (= e!4657920 (> lt!2681527 call!732202))))

(declare-fun b!7889644 () Bool)

(assert (=> b!7889644 (= e!4657918 (+ 1 call!732201))))

(declare-fun b!7889645 () Bool)

(assert (=> b!7889645 (= e!4657917 e!4657923)))

(assert (=> b!7889645 (= c!1448505 ((_ is Union!21211) (ite c!1448297 (reg!21540 (ite c!1448266 (regTwo!42935 r!14100) (ite c!1448271 (regTwo!42934 r!14100) (reg!21540 r!14100)))) (ite c!1448299 (regOne!42935 (ite c!1448266 (regTwo!42935 r!14100) (ite c!1448271 (regTwo!42934 r!14100) (reg!21540 r!14100)))) (regTwo!42934 (ite c!1448266 (regTwo!42935 r!14100) (ite c!1448271 (regTwo!42934 r!14100) (reg!21540 r!14100))))))))))

(declare-fun b!7889646 () Bool)

(assert (=> b!7889646 (= e!4657924 (+ 1 call!732198))))

(declare-fun b!7889647 () Bool)

(assert (=> b!7889647 (= e!4657921 1)))

(declare-fun c!1448504 () Bool)

(declare-fun b!7889648 () Bool)

(assert (=> b!7889648 (= c!1448504 ((_ is Star!21211) (ite c!1448297 (reg!21540 (ite c!1448266 (regTwo!42935 r!14100) (ite c!1448271 (regTwo!42934 r!14100) (reg!21540 r!14100)))) (ite c!1448299 (regOne!42935 (ite c!1448266 (regTwo!42935 r!14100) (ite c!1448271 (regTwo!42934 r!14100) (reg!21540 r!14100)))) (regTwo!42934 (ite c!1448266 (regTwo!42935 r!14100) (ite c!1448271 (regTwo!42934 r!14100) (reg!21540 r!14100))))))))))

(assert (=> b!7889648 (= e!4657916 e!4657922)))

(declare-fun b!7889649 () Bool)

(assert (=> b!7889649 (= e!4657923 e!4657916)))

(assert (=> b!7889649 (= c!1448510 ((_ is Concat!30056) (ite c!1448297 (reg!21540 (ite c!1448266 (regTwo!42935 r!14100) (ite c!1448271 (regTwo!42934 r!14100) (reg!21540 r!14100)))) (ite c!1448299 (regOne!42935 (ite c!1448266 (regTwo!42935 r!14100) (ite c!1448271 (regTwo!42934 r!14100) (reg!21540 r!14100)))) (regTwo!42934 (ite c!1448266 (regTwo!42935 r!14100) (ite c!1448271 (regTwo!42934 r!14100) (reg!21540 r!14100))))))))))

(assert (= (and d!2356866 c!1448506) b!7889641))

(assert (= (and d!2356866 (not c!1448506)) b!7889634))

(assert (= (and b!7889634 c!1448507) b!7889646))

(assert (= (and b!7889634 (not c!1448507)) b!7889640))

(assert (= (and b!7889640 c!1448509) b!7889644))

(assert (= (and b!7889640 (not c!1448509)) b!7889639))

(assert (= (and b!7889639 c!1448508) b!7889642))

(assert (= (and b!7889639 (not c!1448508)) b!7889647))

(assert (= (or b!7889644 b!7889642) bm!732192))

(assert (= (or b!7889644 b!7889642) bm!732197))

(assert (= (or b!7889644 b!7889642) bm!732193))

(assert (= (or b!7889646 bm!732192) bm!732196))

(assert (= (and d!2356866 res!3131540) b!7889645))

(assert (= (and b!7889645 c!1448505) b!7889635))

(assert (= (and b!7889645 (not c!1448505)) b!7889649))

(assert (= (and b!7889635 res!3131541) b!7889636))

(assert (= (and b!7889649 c!1448510) b!7889633))

(assert (= (and b!7889649 (not c!1448510)) b!7889648))

(assert (= (and b!7889633 res!3131542) b!7889643))

(assert (= (and b!7889648 c!1448504) b!7889638))

(assert (= (and b!7889648 (not c!1448504)) b!7889637))

(assert (= (or b!7889643 b!7889638) bm!732194))

(assert (= (or b!7889635 b!7889633) bm!732195))

(assert (= (or b!7889636 bm!732194) bm!732191))

(declare-fun m!8270398 () Bool)

(assert (=> bm!732197 m!8270398))

(declare-fun m!8270400 () Bool)

(assert (=> bm!732191 m!8270400))

(declare-fun m!8270402 () Bool)

(assert (=> bm!732196 m!8270402))

(declare-fun m!8270404 () Bool)

(assert (=> bm!732193 m!8270404))

(declare-fun m!8270406 () Bool)

(assert (=> bm!732195 m!8270406))

(assert (=> bm!732019 d!2356866))

(declare-fun b!7889650 () Bool)

(declare-fun res!3131545 () Bool)

(declare-fun e!4657930 () Bool)

(assert (=> b!7889650 (=> (not res!3131545) (not e!4657930))))

(declare-fun lt!2681528 () Int)

(declare-fun call!732204 () Int)

(assert (=> b!7889650 (= res!3131545 (> lt!2681528 call!732204))))

(declare-fun e!4657926 () Bool)

(assert (=> b!7889650 (= e!4657926 e!4657930)))

(declare-fun b!7889651 () Bool)

(declare-fun e!4657925 () Int)

(declare-fun e!4657934 () Int)

(assert (=> b!7889651 (= e!4657925 e!4657934)))

(declare-fun c!1448514 () Bool)

(assert (=> b!7889651 (= c!1448514 ((_ is Star!21211) (ite c!1448281 (regTwo!42935 (ite c!1448270 (regTwo!42935 r!14100) (regOne!42934 r!14100))) (ite c!1448286 (regTwo!42934 (ite c!1448270 (regTwo!42935 r!14100) (regOne!42934 r!14100))) (reg!21540 (ite c!1448270 (regTwo!42935 r!14100) (regOne!42934 r!14100)))))))))

(declare-fun b!7889652 () Bool)

(declare-fun e!4657933 () Bool)

(declare-fun e!4657929 () Bool)

(assert (=> b!7889652 (= e!4657933 e!4657929)))

(declare-fun res!3131544 () Bool)

(assert (=> b!7889652 (= res!3131544 (> lt!2681528 call!732204))))

(assert (=> b!7889652 (=> (not res!3131544) (not e!4657929))))

(declare-fun b!7889653 () Bool)

(declare-fun call!732203 () Int)

(assert (=> b!7889653 (= e!4657929 (> lt!2681528 call!732203))))

(declare-fun c!1448517 () Bool)

(declare-fun bm!732198 () Bool)

(declare-fun c!1448512 () Bool)

(assert (=> bm!732198 (= call!732203 (regexDepth!515 (ite c!1448512 (regTwo!42935 (ite c!1448281 (regTwo!42935 (ite c!1448270 (regTwo!42935 r!14100) (regOne!42934 r!14100))) (ite c!1448286 (regTwo!42934 (ite c!1448270 (regTwo!42935 r!14100) (regOne!42934 r!14100))) (reg!21540 (ite c!1448270 (regTwo!42935 r!14100) (regOne!42934 r!14100)))))) (ite c!1448517 (regTwo!42934 (ite c!1448281 (regTwo!42935 (ite c!1448270 (regTwo!42935 r!14100) (regOne!42934 r!14100))) (ite c!1448286 (regTwo!42934 (ite c!1448270 (regTwo!42935 r!14100) (regOne!42934 r!14100))) (reg!21540 (ite c!1448270 (regTwo!42935 r!14100) (regOne!42934 r!14100)))))) (reg!21540 (ite c!1448281 (regTwo!42935 (ite c!1448270 (regTwo!42935 r!14100) (regOne!42934 r!14100))) (ite c!1448286 (regTwo!42934 (ite c!1448270 (regTwo!42935 r!14100) (regOne!42934 r!14100))) (reg!21540 (ite c!1448270 (regTwo!42935 r!14100) (regOne!42934 r!14100))))))))))))

(declare-fun bm!732199 () Bool)

(declare-fun call!732207 () Int)

(declare-fun call!732205 () Int)

(assert (=> bm!732199 (= call!732207 call!732205)))

(declare-fun b!7889654 () Bool)

(declare-fun e!4657932 () Bool)

(assert (=> b!7889654 (= e!4657932 (= lt!2681528 1))))

(declare-fun c!1448516 () Bool)

(declare-fun call!732208 () Int)

(declare-fun call!732206 () Int)

(declare-fun bm!732200 () Bool)

(assert (=> bm!732200 (= call!732208 (maxBigInt!0 (ite c!1448516 call!732207 call!732206) (ite c!1448516 call!732206 call!732207)))))

(declare-fun b!7889655 () Bool)

(declare-fun call!732209 () Int)

(assert (=> b!7889655 (= e!4657932 (> lt!2681528 call!732209))))

(declare-fun b!7889656 () Bool)

(declare-fun e!4657928 () Int)

(declare-fun e!4657931 () Int)

(assert (=> b!7889656 (= e!4657928 e!4657931)))

(declare-fun c!1448515 () Bool)

(assert (=> b!7889656 (= c!1448515 ((_ is Concat!30056) (ite c!1448281 (regTwo!42935 (ite c!1448270 (regTwo!42935 r!14100) (regOne!42934 r!14100))) (ite c!1448286 (regTwo!42934 (ite c!1448270 (regTwo!42935 r!14100) (regOne!42934 r!14100))) (reg!21540 (ite c!1448270 (regTwo!42935 r!14100) (regOne!42934 r!14100)))))))))

(declare-fun bm!732201 () Bool)

(assert (=> bm!732201 (= call!732209 call!732203)))

(declare-fun b!7889657 () Bool)

(assert (=> b!7889657 (= c!1448516 ((_ is Union!21211) (ite c!1448281 (regTwo!42935 (ite c!1448270 (regTwo!42935 r!14100) (regOne!42934 r!14100))) (ite c!1448286 (regTwo!42934 (ite c!1448270 (regTwo!42935 r!14100) (regOne!42934 r!14100))) (reg!21540 (ite c!1448270 (regTwo!42935 r!14100) (regOne!42934 r!14100)))))))))

(assert (=> b!7889657 (= e!4657934 e!4657928)))

(declare-fun b!7889658 () Bool)

(assert (=> b!7889658 (= e!4657925 1)))

(declare-fun bm!732202 () Bool)

(assert (=> bm!732202 (= call!732204 (regexDepth!515 (ite c!1448512 (regOne!42935 (ite c!1448281 (regTwo!42935 (ite c!1448270 (regTwo!42935 r!14100) (regOne!42934 r!14100))) (ite c!1448286 (regTwo!42934 (ite c!1448270 (regTwo!42935 r!14100) (regOne!42934 r!14100))) (reg!21540 (ite c!1448270 (regTwo!42935 r!14100) (regOne!42934 r!14100)))))) (regOne!42934 (ite c!1448281 (regTwo!42935 (ite c!1448270 (regTwo!42935 r!14100) (regOne!42934 r!14100))) (ite c!1448286 (regTwo!42934 (ite c!1448270 (regTwo!42935 r!14100) (regOne!42934 r!14100))) (reg!21540 (ite c!1448270 (regTwo!42935 r!14100) (regOne!42934 r!14100)))))))))))

(declare-fun bm!732203 () Bool)

(assert (=> bm!732203 (= call!732205 (regexDepth!515 (ite c!1448514 (reg!21540 (ite c!1448281 (regTwo!42935 (ite c!1448270 (regTwo!42935 r!14100) (regOne!42934 r!14100))) (ite c!1448286 (regTwo!42934 (ite c!1448270 (regTwo!42935 r!14100) (regOne!42934 r!14100))) (reg!21540 (ite c!1448270 (regTwo!42935 r!14100) (regOne!42934 r!14100)))))) (ite c!1448516 (regOne!42935 (ite c!1448281 (regTwo!42935 (ite c!1448270 (regTwo!42935 r!14100) (regOne!42934 r!14100))) (ite c!1448286 (regTwo!42934 (ite c!1448270 (regTwo!42935 r!14100) (regOne!42934 r!14100))) (reg!21540 (ite c!1448270 (regTwo!42935 r!14100) (regOne!42934 r!14100)))))) (regTwo!42934 (ite c!1448281 (regTwo!42935 (ite c!1448270 (regTwo!42935 r!14100) (regOne!42934 r!14100))) (ite c!1448286 (regTwo!42934 (ite c!1448270 (regTwo!42935 r!14100) (regOne!42934 r!14100))) (reg!21540 (ite c!1448270 (regTwo!42935 r!14100) (regOne!42934 r!14100))))))))))))

(declare-fun d!2356868 () Bool)

(declare-fun e!4657927 () Bool)

(assert (=> d!2356868 e!4657927))

(declare-fun res!3131543 () Bool)

(assert (=> d!2356868 (=> (not res!3131543) (not e!4657927))))

(assert (=> d!2356868 (= res!3131543 (> lt!2681528 0))))

(assert (=> d!2356868 (= lt!2681528 e!4657925)))

(declare-fun c!1448513 () Bool)

(assert (=> d!2356868 (= c!1448513 ((_ is ElementMatch!21211) (ite c!1448281 (regTwo!42935 (ite c!1448270 (regTwo!42935 r!14100) (regOne!42934 r!14100))) (ite c!1448286 (regTwo!42934 (ite c!1448270 (regTwo!42935 r!14100) (regOne!42934 r!14100))) (reg!21540 (ite c!1448270 (regTwo!42935 r!14100) (regOne!42934 r!14100)))))))))

(assert (=> d!2356868 (= (regexDepth!515 (ite c!1448281 (regTwo!42935 (ite c!1448270 (regTwo!42935 r!14100) (regOne!42934 r!14100))) (ite c!1448286 (regTwo!42934 (ite c!1448270 (regTwo!42935 r!14100) (regOne!42934 r!14100))) (reg!21540 (ite c!1448270 (regTwo!42935 r!14100) (regOne!42934 r!14100)))))) lt!2681528)))

(declare-fun b!7889659 () Bool)

(assert (=> b!7889659 (= e!4657931 (+ 1 call!732208))))

(declare-fun bm!732204 () Bool)

(assert (=> bm!732204 (= call!732206 (regexDepth!515 (ite c!1448516 (regTwo!42935 (ite c!1448281 (regTwo!42935 (ite c!1448270 (regTwo!42935 r!14100) (regOne!42934 r!14100))) (ite c!1448286 (regTwo!42934 (ite c!1448270 (regTwo!42935 r!14100) (regOne!42934 r!14100))) (reg!21540 (ite c!1448270 (regTwo!42935 r!14100) (regOne!42934 r!14100)))))) (regOne!42934 (ite c!1448281 (regTwo!42935 (ite c!1448270 (regTwo!42935 r!14100) (regOne!42934 r!14100))) (ite c!1448286 (regTwo!42934 (ite c!1448270 (regTwo!42935 r!14100) (regOne!42934 r!14100))) (reg!21540 (ite c!1448270 (regTwo!42935 r!14100) (regOne!42934 r!14100)))))))))))

(declare-fun b!7889660 () Bool)

(assert (=> b!7889660 (= e!4657930 (> lt!2681528 call!732209))))

(declare-fun b!7889661 () Bool)

(assert (=> b!7889661 (= e!4657928 (+ 1 call!732208))))

(declare-fun b!7889662 () Bool)

(assert (=> b!7889662 (= e!4657927 e!4657933)))

(assert (=> b!7889662 (= c!1448512 ((_ is Union!21211) (ite c!1448281 (regTwo!42935 (ite c!1448270 (regTwo!42935 r!14100) (regOne!42934 r!14100))) (ite c!1448286 (regTwo!42934 (ite c!1448270 (regTwo!42935 r!14100) (regOne!42934 r!14100))) (reg!21540 (ite c!1448270 (regTwo!42935 r!14100) (regOne!42934 r!14100)))))))))

(declare-fun b!7889663 () Bool)

(assert (=> b!7889663 (= e!4657934 (+ 1 call!732205))))

(declare-fun b!7889664 () Bool)

(assert (=> b!7889664 (= e!4657931 1)))

(declare-fun b!7889665 () Bool)

(declare-fun c!1448511 () Bool)

(assert (=> b!7889665 (= c!1448511 ((_ is Star!21211) (ite c!1448281 (regTwo!42935 (ite c!1448270 (regTwo!42935 r!14100) (regOne!42934 r!14100))) (ite c!1448286 (regTwo!42934 (ite c!1448270 (regTwo!42935 r!14100) (regOne!42934 r!14100))) (reg!21540 (ite c!1448270 (regTwo!42935 r!14100) (regOne!42934 r!14100)))))))))

(assert (=> b!7889665 (= e!4657926 e!4657932)))

(declare-fun b!7889666 () Bool)

(assert (=> b!7889666 (= e!4657933 e!4657926)))

(assert (=> b!7889666 (= c!1448517 ((_ is Concat!30056) (ite c!1448281 (regTwo!42935 (ite c!1448270 (regTwo!42935 r!14100) (regOne!42934 r!14100))) (ite c!1448286 (regTwo!42934 (ite c!1448270 (regTwo!42935 r!14100) (regOne!42934 r!14100))) (reg!21540 (ite c!1448270 (regTwo!42935 r!14100) (regOne!42934 r!14100)))))))))

(assert (= (and d!2356868 c!1448513) b!7889658))

(assert (= (and d!2356868 (not c!1448513)) b!7889651))

(assert (= (and b!7889651 c!1448514) b!7889663))

(assert (= (and b!7889651 (not c!1448514)) b!7889657))

(assert (= (and b!7889657 c!1448516) b!7889661))

(assert (= (and b!7889657 (not c!1448516)) b!7889656))

(assert (= (and b!7889656 c!1448515) b!7889659))

(assert (= (and b!7889656 (not c!1448515)) b!7889664))

(assert (= (or b!7889661 b!7889659) bm!732199))

(assert (= (or b!7889661 b!7889659) bm!732204))

(assert (= (or b!7889661 b!7889659) bm!732200))

(assert (= (or b!7889663 bm!732199) bm!732203))

(assert (= (and d!2356868 res!3131543) b!7889662))

(assert (= (and b!7889662 c!1448512) b!7889652))

(assert (= (and b!7889662 (not c!1448512)) b!7889666))

(assert (= (and b!7889652 res!3131544) b!7889653))

(assert (= (and b!7889666 c!1448517) b!7889650))

(assert (= (and b!7889666 (not c!1448517)) b!7889665))

(assert (= (and b!7889650 res!3131545) b!7889660))

(assert (= (and b!7889665 c!1448511) b!7889655))

(assert (= (and b!7889665 (not c!1448511)) b!7889654))

(assert (= (or b!7889660 b!7889655) bm!732201))

(assert (= (or b!7889652 b!7889650) bm!732202))

(assert (= (or b!7889653 bm!732201) bm!732198))

(declare-fun m!8270408 () Bool)

(assert (=> bm!732204 m!8270408))

(declare-fun m!8270410 () Bool)

(assert (=> bm!732198 m!8270410))

(declare-fun m!8270412 () Bool)

(assert (=> bm!732203 m!8270412))

(declare-fun m!8270414 () Bool)

(assert (=> bm!732200 m!8270414))

(declare-fun m!8270416 () Bool)

(assert (=> bm!732202 m!8270416))

(assert (=> bm!732000 d!2356868))

(declare-fun b!7889667 () Bool)

(declare-fun res!3131548 () Bool)

(declare-fun e!4657940 () Bool)

(assert (=> b!7889667 (=> (not res!3131548) (not e!4657940))))

(declare-fun lt!2681529 () Int)

(declare-fun call!732211 () Int)

(assert (=> b!7889667 (= res!3131548 (> lt!2681529 call!732211))))

(declare-fun e!4657936 () Bool)

(assert (=> b!7889667 (= e!4657936 e!4657940)))

(declare-fun b!7889668 () Bool)

(declare-fun e!4657935 () Int)

(declare-fun e!4657944 () Int)

(assert (=> b!7889668 (= e!4657935 e!4657944)))

(declare-fun c!1448521 () Bool)

(assert (=> b!7889668 (= c!1448521 ((_ is Star!21211) (ite c!1448295 (regOne!42935 (ite c!1448266 (regTwo!42935 r!14100) (ite c!1448271 (regTwo!42934 r!14100) (reg!21540 r!14100)))) (regOne!42934 (ite c!1448266 (regTwo!42935 r!14100) (ite c!1448271 (regTwo!42934 r!14100) (reg!21540 r!14100)))))))))

(declare-fun b!7889669 () Bool)

(declare-fun e!4657943 () Bool)

(declare-fun e!4657939 () Bool)

(assert (=> b!7889669 (= e!4657943 e!4657939)))

(declare-fun res!3131547 () Bool)

(assert (=> b!7889669 (= res!3131547 (> lt!2681529 call!732211))))

(assert (=> b!7889669 (=> (not res!3131547) (not e!4657939))))

(declare-fun b!7889670 () Bool)

(declare-fun call!732210 () Int)

(assert (=> b!7889670 (= e!4657939 (> lt!2681529 call!732210))))

(declare-fun c!1448524 () Bool)

(declare-fun c!1448519 () Bool)

(declare-fun bm!732205 () Bool)

(assert (=> bm!732205 (= call!732210 (regexDepth!515 (ite c!1448519 (regTwo!42935 (ite c!1448295 (regOne!42935 (ite c!1448266 (regTwo!42935 r!14100) (ite c!1448271 (regTwo!42934 r!14100) (reg!21540 r!14100)))) (regOne!42934 (ite c!1448266 (regTwo!42935 r!14100) (ite c!1448271 (regTwo!42934 r!14100) (reg!21540 r!14100)))))) (ite c!1448524 (regTwo!42934 (ite c!1448295 (regOne!42935 (ite c!1448266 (regTwo!42935 r!14100) (ite c!1448271 (regTwo!42934 r!14100) (reg!21540 r!14100)))) (regOne!42934 (ite c!1448266 (regTwo!42935 r!14100) (ite c!1448271 (regTwo!42934 r!14100) (reg!21540 r!14100)))))) (reg!21540 (ite c!1448295 (regOne!42935 (ite c!1448266 (regTwo!42935 r!14100) (ite c!1448271 (regTwo!42934 r!14100) (reg!21540 r!14100)))) (regOne!42934 (ite c!1448266 (regTwo!42935 r!14100) (ite c!1448271 (regTwo!42934 r!14100) (reg!21540 r!14100))))))))))))

(declare-fun bm!732206 () Bool)

(declare-fun call!732214 () Int)

(declare-fun call!732212 () Int)

(assert (=> bm!732206 (= call!732214 call!732212)))

(declare-fun b!7889671 () Bool)

(declare-fun e!4657942 () Bool)

(assert (=> b!7889671 (= e!4657942 (= lt!2681529 1))))

(declare-fun bm!732207 () Bool)

(declare-fun c!1448523 () Bool)

(declare-fun call!732213 () Int)

(declare-fun call!732215 () Int)

(assert (=> bm!732207 (= call!732215 (maxBigInt!0 (ite c!1448523 call!732214 call!732213) (ite c!1448523 call!732213 call!732214)))))

(declare-fun b!7889672 () Bool)

(declare-fun call!732216 () Int)

(assert (=> b!7889672 (= e!4657942 (> lt!2681529 call!732216))))

(declare-fun b!7889673 () Bool)

(declare-fun e!4657938 () Int)

(declare-fun e!4657941 () Int)

(assert (=> b!7889673 (= e!4657938 e!4657941)))

(declare-fun c!1448522 () Bool)

(assert (=> b!7889673 (= c!1448522 ((_ is Concat!30056) (ite c!1448295 (regOne!42935 (ite c!1448266 (regTwo!42935 r!14100) (ite c!1448271 (regTwo!42934 r!14100) (reg!21540 r!14100)))) (regOne!42934 (ite c!1448266 (regTwo!42935 r!14100) (ite c!1448271 (regTwo!42934 r!14100) (reg!21540 r!14100)))))))))

(declare-fun bm!732208 () Bool)

(assert (=> bm!732208 (= call!732216 call!732210)))

(declare-fun b!7889674 () Bool)

(assert (=> b!7889674 (= c!1448523 ((_ is Union!21211) (ite c!1448295 (regOne!42935 (ite c!1448266 (regTwo!42935 r!14100) (ite c!1448271 (regTwo!42934 r!14100) (reg!21540 r!14100)))) (regOne!42934 (ite c!1448266 (regTwo!42935 r!14100) (ite c!1448271 (regTwo!42934 r!14100) (reg!21540 r!14100)))))))))

(assert (=> b!7889674 (= e!4657944 e!4657938)))

(declare-fun b!7889675 () Bool)

(assert (=> b!7889675 (= e!4657935 1)))

(declare-fun bm!732209 () Bool)

(assert (=> bm!732209 (= call!732211 (regexDepth!515 (ite c!1448519 (regOne!42935 (ite c!1448295 (regOne!42935 (ite c!1448266 (regTwo!42935 r!14100) (ite c!1448271 (regTwo!42934 r!14100) (reg!21540 r!14100)))) (regOne!42934 (ite c!1448266 (regTwo!42935 r!14100) (ite c!1448271 (regTwo!42934 r!14100) (reg!21540 r!14100)))))) (regOne!42934 (ite c!1448295 (regOne!42935 (ite c!1448266 (regTwo!42935 r!14100) (ite c!1448271 (regTwo!42934 r!14100) (reg!21540 r!14100)))) (regOne!42934 (ite c!1448266 (regTwo!42935 r!14100) (ite c!1448271 (regTwo!42934 r!14100) (reg!21540 r!14100)))))))))))

(declare-fun bm!732210 () Bool)

(assert (=> bm!732210 (= call!732212 (regexDepth!515 (ite c!1448521 (reg!21540 (ite c!1448295 (regOne!42935 (ite c!1448266 (regTwo!42935 r!14100) (ite c!1448271 (regTwo!42934 r!14100) (reg!21540 r!14100)))) (regOne!42934 (ite c!1448266 (regTwo!42935 r!14100) (ite c!1448271 (regTwo!42934 r!14100) (reg!21540 r!14100)))))) (ite c!1448523 (regOne!42935 (ite c!1448295 (regOne!42935 (ite c!1448266 (regTwo!42935 r!14100) (ite c!1448271 (regTwo!42934 r!14100) (reg!21540 r!14100)))) (regOne!42934 (ite c!1448266 (regTwo!42935 r!14100) (ite c!1448271 (regTwo!42934 r!14100) (reg!21540 r!14100)))))) (regTwo!42934 (ite c!1448295 (regOne!42935 (ite c!1448266 (regTwo!42935 r!14100) (ite c!1448271 (regTwo!42934 r!14100) (reg!21540 r!14100)))) (regOne!42934 (ite c!1448266 (regTwo!42935 r!14100) (ite c!1448271 (regTwo!42934 r!14100) (reg!21540 r!14100))))))))))))

(declare-fun d!2356870 () Bool)

(declare-fun e!4657937 () Bool)

(assert (=> d!2356870 e!4657937))

(declare-fun res!3131546 () Bool)

(assert (=> d!2356870 (=> (not res!3131546) (not e!4657937))))

(assert (=> d!2356870 (= res!3131546 (> lt!2681529 0))))

(assert (=> d!2356870 (= lt!2681529 e!4657935)))

(declare-fun c!1448520 () Bool)

(assert (=> d!2356870 (= c!1448520 ((_ is ElementMatch!21211) (ite c!1448295 (regOne!42935 (ite c!1448266 (regTwo!42935 r!14100) (ite c!1448271 (regTwo!42934 r!14100) (reg!21540 r!14100)))) (regOne!42934 (ite c!1448266 (regTwo!42935 r!14100) (ite c!1448271 (regTwo!42934 r!14100) (reg!21540 r!14100)))))))))

(assert (=> d!2356870 (= (regexDepth!515 (ite c!1448295 (regOne!42935 (ite c!1448266 (regTwo!42935 r!14100) (ite c!1448271 (regTwo!42934 r!14100) (reg!21540 r!14100)))) (regOne!42934 (ite c!1448266 (regTwo!42935 r!14100) (ite c!1448271 (regTwo!42934 r!14100) (reg!21540 r!14100)))))) lt!2681529)))

(declare-fun b!7889676 () Bool)

(assert (=> b!7889676 (= e!4657941 (+ 1 call!732215))))

(declare-fun bm!732211 () Bool)

(assert (=> bm!732211 (= call!732213 (regexDepth!515 (ite c!1448523 (regTwo!42935 (ite c!1448295 (regOne!42935 (ite c!1448266 (regTwo!42935 r!14100) (ite c!1448271 (regTwo!42934 r!14100) (reg!21540 r!14100)))) (regOne!42934 (ite c!1448266 (regTwo!42935 r!14100) (ite c!1448271 (regTwo!42934 r!14100) (reg!21540 r!14100)))))) (regOne!42934 (ite c!1448295 (regOne!42935 (ite c!1448266 (regTwo!42935 r!14100) (ite c!1448271 (regTwo!42934 r!14100) (reg!21540 r!14100)))) (regOne!42934 (ite c!1448266 (regTwo!42935 r!14100) (ite c!1448271 (regTwo!42934 r!14100) (reg!21540 r!14100)))))))))))

(declare-fun b!7889677 () Bool)

(assert (=> b!7889677 (= e!4657940 (> lt!2681529 call!732216))))

(declare-fun b!7889678 () Bool)

(assert (=> b!7889678 (= e!4657938 (+ 1 call!732215))))

(declare-fun b!7889679 () Bool)

(assert (=> b!7889679 (= e!4657937 e!4657943)))

(assert (=> b!7889679 (= c!1448519 ((_ is Union!21211) (ite c!1448295 (regOne!42935 (ite c!1448266 (regTwo!42935 r!14100) (ite c!1448271 (regTwo!42934 r!14100) (reg!21540 r!14100)))) (regOne!42934 (ite c!1448266 (regTwo!42935 r!14100) (ite c!1448271 (regTwo!42934 r!14100) (reg!21540 r!14100)))))))))

(declare-fun b!7889680 () Bool)

(assert (=> b!7889680 (= e!4657944 (+ 1 call!732212))))

(declare-fun b!7889681 () Bool)

(assert (=> b!7889681 (= e!4657941 1)))

(declare-fun b!7889682 () Bool)

(declare-fun c!1448518 () Bool)

(assert (=> b!7889682 (= c!1448518 ((_ is Star!21211) (ite c!1448295 (regOne!42935 (ite c!1448266 (regTwo!42935 r!14100) (ite c!1448271 (regTwo!42934 r!14100) (reg!21540 r!14100)))) (regOne!42934 (ite c!1448266 (regTwo!42935 r!14100) (ite c!1448271 (regTwo!42934 r!14100) (reg!21540 r!14100)))))))))

(assert (=> b!7889682 (= e!4657936 e!4657942)))

(declare-fun b!7889683 () Bool)

(assert (=> b!7889683 (= e!4657943 e!4657936)))

(assert (=> b!7889683 (= c!1448524 ((_ is Concat!30056) (ite c!1448295 (regOne!42935 (ite c!1448266 (regTwo!42935 r!14100) (ite c!1448271 (regTwo!42934 r!14100) (reg!21540 r!14100)))) (regOne!42934 (ite c!1448266 (regTwo!42935 r!14100) (ite c!1448271 (regTwo!42934 r!14100) (reg!21540 r!14100)))))))))

(assert (= (and d!2356870 c!1448520) b!7889675))

(assert (= (and d!2356870 (not c!1448520)) b!7889668))

(assert (= (and b!7889668 c!1448521) b!7889680))

(assert (= (and b!7889668 (not c!1448521)) b!7889674))

(assert (= (and b!7889674 c!1448523) b!7889678))

(assert (= (and b!7889674 (not c!1448523)) b!7889673))

(assert (= (and b!7889673 c!1448522) b!7889676))

(assert (= (and b!7889673 (not c!1448522)) b!7889681))

(assert (= (or b!7889678 b!7889676) bm!732206))

(assert (= (or b!7889678 b!7889676) bm!732211))

(assert (= (or b!7889678 b!7889676) bm!732207))

(assert (= (or b!7889680 bm!732206) bm!732210))

(assert (= (and d!2356870 res!3131546) b!7889679))

(assert (= (and b!7889679 c!1448519) b!7889669))

(assert (= (and b!7889679 (not c!1448519)) b!7889683))

(assert (= (and b!7889669 res!3131547) b!7889670))

(assert (= (and b!7889683 c!1448524) b!7889667))

(assert (= (and b!7889683 (not c!1448524)) b!7889682))

(assert (= (and b!7889667 res!3131548) b!7889677))

(assert (= (and b!7889682 c!1448518) b!7889672))

(assert (= (and b!7889682 (not c!1448518)) b!7889671))

(assert (= (or b!7889677 b!7889672) bm!732208))

(assert (= (or b!7889669 b!7889667) bm!732209))

(assert (= (or b!7889670 bm!732208) bm!732205))

(declare-fun m!8270418 () Bool)

(assert (=> bm!732211 m!8270418))

(declare-fun m!8270420 () Bool)

(assert (=> bm!732205 m!8270420))

(declare-fun m!8270422 () Bool)

(assert (=> bm!732210 m!8270422))

(declare-fun m!8270424 () Bool)

(assert (=> bm!732207 m!8270424))

(declare-fun m!8270426 () Bool)

(assert (=> bm!732209 m!8270426))

(assert (=> bm!732018 d!2356870))

(declare-fun b!7889685 () Bool)

(declare-fun e!4657945 () Bool)

(declare-fun tp!2347206 () Bool)

(declare-fun tp!2347205 () Bool)

(assert (=> b!7889685 (= e!4657945 (and tp!2347206 tp!2347205))))

(assert (=> b!7889108 (= tp!2347048 e!4657945)))

(declare-fun b!7889687 () Bool)

(declare-fun tp!2347203 () Bool)

(declare-fun tp!2347207 () Bool)

(assert (=> b!7889687 (= e!4657945 (and tp!2347203 tp!2347207))))

(declare-fun b!7889686 () Bool)

(declare-fun tp!2347204 () Bool)

(assert (=> b!7889686 (= e!4657945 tp!2347204)))

(declare-fun b!7889684 () Bool)

(assert (=> b!7889684 (= e!4657945 tp_is_empty!52821)))

(assert (= (and b!7889108 ((_ is ElementMatch!21211) (regOne!42934 (regOne!42935 (regTwo!42935 r!14100))))) b!7889684))

(assert (= (and b!7889108 ((_ is Concat!30056) (regOne!42934 (regOne!42935 (regTwo!42935 r!14100))))) b!7889685))

(assert (= (and b!7889108 ((_ is Star!21211) (regOne!42934 (regOne!42935 (regTwo!42935 r!14100))))) b!7889686))

(assert (= (and b!7889108 ((_ is Union!21211) (regOne!42934 (regOne!42935 (regTwo!42935 r!14100))))) b!7889687))

(declare-fun b!7889689 () Bool)

(declare-fun e!4657946 () Bool)

(declare-fun tp!2347211 () Bool)

(declare-fun tp!2347210 () Bool)

(assert (=> b!7889689 (= e!4657946 (and tp!2347211 tp!2347210))))

(assert (=> b!7889108 (= tp!2347047 e!4657946)))

(declare-fun b!7889691 () Bool)

(declare-fun tp!2347208 () Bool)

(declare-fun tp!2347212 () Bool)

(assert (=> b!7889691 (= e!4657946 (and tp!2347208 tp!2347212))))

(declare-fun b!7889690 () Bool)

(declare-fun tp!2347209 () Bool)

(assert (=> b!7889690 (= e!4657946 tp!2347209)))

(declare-fun b!7889688 () Bool)

(assert (=> b!7889688 (= e!4657946 tp_is_empty!52821)))

(assert (= (and b!7889108 ((_ is ElementMatch!21211) (regTwo!42934 (regOne!42935 (regTwo!42935 r!14100))))) b!7889688))

(assert (= (and b!7889108 ((_ is Concat!30056) (regTwo!42934 (regOne!42935 (regTwo!42935 r!14100))))) b!7889689))

(assert (= (and b!7889108 ((_ is Star!21211) (regTwo!42934 (regOne!42935 (regTwo!42935 r!14100))))) b!7889690))

(assert (= (and b!7889108 ((_ is Union!21211) (regTwo!42934 (regOne!42935 (regTwo!42935 r!14100))))) b!7889691))

(declare-fun b!7889693 () Bool)

(declare-fun e!4657947 () Bool)

(declare-fun tp!2347216 () Bool)

(declare-fun tp!2347215 () Bool)

(assert (=> b!7889693 (= e!4657947 (and tp!2347216 tp!2347215))))

(assert (=> b!7889052 (= tp!2346975 e!4657947)))

(declare-fun b!7889695 () Bool)

(declare-fun tp!2347213 () Bool)

(declare-fun tp!2347217 () Bool)

(assert (=> b!7889695 (= e!4657947 (and tp!2347213 tp!2347217))))

(declare-fun b!7889694 () Bool)

(declare-fun tp!2347214 () Bool)

(assert (=> b!7889694 (= e!4657947 tp!2347214)))

(declare-fun b!7889692 () Bool)

(assert (=> b!7889692 (= e!4657947 tp_is_empty!52821)))

(assert (= (and b!7889052 ((_ is ElementMatch!21211) (reg!21540 (regOne!42935 (regOne!42934 r!14100))))) b!7889692))

(assert (= (and b!7889052 ((_ is Concat!30056) (reg!21540 (regOne!42935 (regOne!42934 r!14100))))) b!7889693))

(assert (= (and b!7889052 ((_ is Star!21211) (reg!21540 (regOne!42935 (regOne!42934 r!14100))))) b!7889694))

(assert (= (and b!7889052 ((_ is Union!21211) (reg!21540 (regOne!42935 (regOne!42934 r!14100))))) b!7889695))

(declare-fun b!7889697 () Bool)

(declare-fun e!4657948 () Bool)

(declare-fun tp!2347221 () Bool)

(declare-fun tp!2347220 () Bool)

(assert (=> b!7889697 (= e!4657948 (and tp!2347221 tp!2347220))))

(assert (=> b!7889101 (= tp!2347036 e!4657948)))

(declare-fun b!7889699 () Bool)

(declare-fun tp!2347218 () Bool)

(declare-fun tp!2347222 () Bool)

(assert (=> b!7889699 (= e!4657948 (and tp!2347218 tp!2347222))))

(declare-fun b!7889698 () Bool)

(declare-fun tp!2347219 () Bool)

(assert (=> b!7889698 (= e!4657948 tp!2347219)))

(declare-fun b!7889696 () Bool)

(assert (=> b!7889696 (= e!4657948 tp_is_empty!52821)))

(assert (= (and b!7889101 ((_ is ElementMatch!21211) (reg!21540 (regOne!42935 (regOne!42935 r!14100))))) b!7889696))

(assert (= (and b!7889101 ((_ is Concat!30056) (reg!21540 (regOne!42935 (regOne!42935 r!14100))))) b!7889697))

(assert (= (and b!7889101 ((_ is Star!21211) (reg!21540 (regOne!42935 (regOne!42935 r!14100))))) b!7889698))

(assert (= (and b!7889101 ((_ is Union!21211) (reg!21540 (regOne!42935 (regOne!42935 r!14100))))) b!7889699))

(declare-fun b!7889701 () Bool)

(declare-fun e!4657949 () Bool)

(declare-fun tp!2347226 () Bool)

(declare-fun tp!2347225 () Bool)

(assert (=> b!7889701 (= e!4657949 (and tp!2347226 tp!2347225))))

(assert (=> b!7889060 (= tp!2346985 e!4657949)))

(declare-fun b!7889703 () Bool)

(declare-fun tp!2347223 () Bool)

(declare-fun tp!2347227 () Bool)

(assert (=> b!7889703 (= e!4657949 (and tp!2347223 tp!2347227))))

(declare-fun b!7889702 () Bool)

(declare-fun tp!2347224 () Bool)

(assert (=> b!7889702 (= e!4657949 tp!2347224)))

(declare-fun b!7889700 () Bool)

(assert (=> b!7889700 (= e!4657949 tp_is_empty!52821)))

(assert (= (and b!7889060 ((_ is ElementMatch!21211) (reg!21540 (regOne!42935 (regTwo!42934 r!14100))))) b!7889700))

(assert (= (and b!7889060 ((_ is Concat!30056) (reg!21540 (regOne!42935 (regTwo!42934 r!14100))))) b!7889701))

(assert (= (and b!7889060 ((_ is Star!21211) (reg!21540 (regOne!42935 (regTwo!42934 r!14100))))) b!7889702))

(assert (= (and b!7889060 ((_ is Union!21211) (reg!21540 (regOne!42935 (regTwo!42934 r!14100))))) b!7889703))

(declare-fun b!7889705 () Bool)

(declare-fun e!4657950 () Bool)

(declare-fun tp!2347231 () Bool)

(declare-fun tp!2347230 () Bool)

(assert (=> b!7889705 (= e!4657950 (and tp!2347231 tp!2347230))))

(assert (=> b!7889085 (= tp!2347014 e!4657950)))

(declare-fun b!7889707 () Bool)

(declare-fun tp!2347228 () Bool)

(declare-fun tp!2347232 () Bool)

(assert (=> b!7889707 (= e!4657950 (and tp!2347228 tp!2347232))))

(declare-fun b!7889706 () Bool)

(declare-fun tp!2347229 () Bool)

(assert (=> b!7889706 (= e!4657950 tp!2347229)))

(declare-fun b!7889704 () Bool)

(assert (=> b!7889704 (= e!4657950 tp_is_empty!52821)))

(assert (= (and b!7889085 ((_ is ElementMatch!21211) (regOne!42935 (regTwo!42934 (regOne!42934 r!14100))))) b!7889704))

(assert (= (and b!7889085 ((_ is Concat!30056) (regOne!42935 (regTwo!42934 (regOne!42934 r!14100))))) b!7889705))

(assert (= (and b!7889085 ((_ is Star!21211) (regOne!42935 (regTwo!42934 (regOne!42934 r!14100))))) b!7889706))

(assert (= (and b!7889085 ((_ is Union!21211) (regOne!42935 (regTwo!42934 (regOne!42934 r!14100))))) b!7889707))

(declare-fun b!7889709 () Bool)

(declare-fun e!4657951 () Bool)

(declare-fun tp!2347236 () Bool)

(declare-fun tp!2347235 () Bool)

(assert (=> b!7889709 (= e!4657951 (and tp!2347236 tp!2347235))))

(assert (=> b!7889085 (= tp!2347018 e!4657951)))

(declare-fun b!7889711 () Bool)

(declare-fun tp!2347233 () Bool)

(declare-fun tp!2347237 () Bool)

(assert (=> b!7889711 (= e!4657951 (and tp!2347233 tp!2347237))))

(declare-fun b!7889710 () Bool)

(declare-fun tp!2347234 () Bool)

(assert (=> b!7889710 (= e!4657951 tp!2347234)))

(declare-fun b!7889708 () Bool)

(assert (=> b!7889708 (= e!4657951 tp_is_empty!52821)))

(assert (= (and b!7889085 ((_ is ElementMatch!21211) (regTwo!42935 (regTwo!42934 (regOne!42934 r!14100))))) b!7889708))

(assert (= (and b!7889085 ((_ is Concat!30056) (regTwo!42935 (regTwo!42934 (regOne!42934 r!14100))))) b!7889709))

(assert (= (and b!7889085 ((_ is Star!21211) (regTwo!42935 (regTwo!42934 (regOne!42934 r!14100))))) b!7889710))

(assert (= (and b!7889085 ((_ is Union!21211) (regTwo!42935 (regTwo!42934 (regOne!42934 r!14100))))) b!7889711))

(declare-fun b!7889713 () Bool)

(declare-fun e!4657952 () Bool)

(declare-fun tp!2347241 () Bool)

(declare-fun tp!2347240 () Bool)

(assert (=> b!7889713 (= e!4657952 (and tp!2347241 tp!2347240))))

(assert (=> b!7889083 (= tp!2347017 e!4657952)))

(declare-fun b!7889715 () Bool)

(declare-fun tp!2347238 () Bool)

(declare-fun tp!2347242 () Bool)

(assert (=> b!7889715 (= e!4657952 (and tp!2347238 tp!2347242))))

(declare-fun b!7889714 () Bool)

(declare-fun tp!2347239 () Bool)

(assert (=> b!7889714 (= e!4657952 tp!2347239)))

(declare-fun b!7889712 () Bool)

(assert (=> b!7889712 (= e!4657952 tp_is_empty!52821)))

(assert (= (and b!7889083 ((_ is ElementMatch!21211) (regOne!42934 (regTwo!42934 (regOne!42934 r!14100))))) b!7889712))

(assert (= (and b!7889083 ((_ is Concat!30056) (regOne!42934 (regTwo!42934 (regOne!42934 r!14100))))) b!7889713))

(assert (= (and b!7889083 ((_ is Star!21211) (regOne!42934 (regTwo!42934 (regOne!42934 r!14100))))) b!7889714))

(assert (= (and b!7889083 ((_ is Union!21211) (regOne!42934 (regTwo!42934 (regOne!42934 r!14100))))) b!7889715))

(declare-fun b!7889717 () Bool)

(declare-fun e!4657953 () Bool)

(declare-fun tp!2347246 () Bool)

(declare-fun tp!2347245 () Bool)

(assert (=> b!7889717 (= e!4657953 (and tp!2347246 tp!2347245))))

(assert (=> b!7889083 (= tp!2347016 e!4657953)))

(declare-fun b!7889719 () Bool)

(declare-fun tp!2347243 () Bool)

(declare-fun tp!2347247 () Bool)

(assert (=> b!7889719 (= e!4657953 (and tp!2347243 tp!2347247))))

(declare-fun b!7889718 () Bool)

(declare-fun tp!2347244 () Bool)

(assert (=> b!7889718 (= e!4657953 tp!2347244)))

(declare-fun b!7889716 () Bool)

(assert (=> b!7889716 (= e!4657953 tp_is_empty!52821)))

(assert (= (and b!7889083 ((_ is ElementMatch!21211) (regTwo!42934 (regTwo!42934 (regOne!42934 r!14100))))) b!7889716))

(assert (= (and b!7889083 ((_ is Concat!30056) (regTwo!42934 (regTwo!42934 (regOne!42934 r!14100))))) b!7889717))

(assert (= (and b!7889083 ((_ is Star!21211) (regTwo!42934 (regTwo!42934 (regOne!42934 r!14100))))) b!7889718))

(assert (= (and b!7889083 ((_ is Union!21211) (regTwo!42934 (regTwo!42934 (regOne!42934 r!14100))))) b!7889719))

(declare-fun b!7889721 () Bool)

(declare-fun e!4657954 () Bool)

(declare-fun tp!2347251 () Bool)

(declare-fun tp!2347250 () Bool)

(assert (=> b!7889721 (= e!4657954 (and tp!2347251 tp!2347250))))

(assert (=> b!7889044 (= tp!2346963 e!4657954)))

(declare-fun b!7889723 () Bool)

(declare-fun tp!2347248 () Bool)

(declare-fun tp!2347252 () Bool)

(assert (=> b!7889723 (= e!4657954 (and tp!2347248 tp!2347252))))

(declare-fun b!7889722 () Bool)

(declare-fun tp!2347249 () Bool)

(assert (=> b!7889722 (= e!4657954 tp!2347249)))

(declare-fun b!7889720 () Bool)

(assert (=> b!7889720 (= e!4657954 tp_is_empty!52821)))

(assert (= (and b!7889044 ((_ is ElementMatch!21211) (regOne!42935 (regTwo!42935 (reg!21540 r!14100))))) b!7889720))

(assert (= (and b!7889044 ((_ is Concat!30056) (regOne!42935 (regTwo!42935 (reg!21540 r!14100))))) b!7889721))

(assert (= (and b!7889044 ((_ is Star!21211) (regOne!42935 (regTwo!42935 (reg!21540 r!14100))))) b!7889722))

(assert (= (and b!7889044 ((_ is Union!21211) (regOne!42935 (regTwo!42935 (reg!21540 r!14100))))) b!7889723))

(declare-fun b!7889725 () Bool)

(declare-fun e!4657955 () Bool)

(declare-fun tp!2347256 () Bool)

(declare-fun tp!2347255 () Bool)

(assert (=> b!7889725 (= e!4657955 (and tp!2347256 tp!2347255))))

(assert (=> b!7889044 (= tp!2346967 e!4657955)))

(declare-fun b!7889727 () Bool)

(declare-fun tp!2347253 () Bool)

(declare-fun tp!2347257 () Bool)

(assert (=> b!7889727 (= e!4657955 (and tp!2347253 tp!2347257))))

(declare-fun b!7889726 () Bool)

(declare-fun tp!2347254 () Bool)

(assert (=> b!7889726 (= e!4657955 tp!2347254)))

(declare-fun b!7889724 () Bool)

(assert (=> b!7889724 (= e!4657955 tp_is_empty!52821)))

(assert (= (and b!7889044 ((_ is ElementMatch!21211) (regTwo!42935 (regTwo!42935 (reg!21540 r!14100))))) b!7889724))

(assert (= (and b!7889044 ((_ is Concat!30056) (regTwo!42935 (regTwo!42935 (reg!21540 r!14100))))) b!7889725))

(assert (= (and b!7889044 ((_ is Star!21211) (regTwo!42935 (regTwo!42935 (reg!21540 r!14100))))) b!7889726))

(assert (= (and b!7889044 ((_ is Union!21211) (regTwo!42935 (regTwo!42935 (reg!21540 r!14100))))) b!7889727))

(declare-fun b!7889729 () Bool)

(declare-fun e!4657956 () Bool)

(declare-fun tp!2347261 () Bool)

(declare-fun tp!2347260 () Bool)

(assert (=> b!7889729 (= e!4657956 (and tp!2347261 tp!2347260))))

(assert (=> b!7889092 (= tp!2347025 e!4657956)))

(declare-fun b!7889731 () Bool)

(declare-fun tp!2347258 () Bool)

(declare-fun tp!2347262 () Bool)

(assert (=> b!7889731 (= e!4657956 (and tp!2347258 tp!2347262))))

(declare-fun b!7889730 () Bool)

(declare-fun tp!2347259 () Bool)

(assert (=> b!7889730 (= e!4657956 tp!2347259)))

(declare-fun b!7889728 () Bool)

(assert (=> b!7889728 (= e!4657956 tp_is_empty!52821)))

(assert (= (and b!7889092 ((_ is ElementMatch!21211) (reg!21540 (regOne!42934 (regTwo!42934 r!14100))))) b!7889728))

(assert (= (and b!7889092 ((_ is Concat!30056) (reg!21540 (regOne!42934 (regTwo!42934 r!14100))))) b!7889729))

(assert (= (and b!7889092 ((_ is Star!21211) (reg!21540 (regOne!42934 (regTwo!42934 r!14100))))) b!7889730))

(assert (= (and b!7889092 ((_ is Union!21211) (reg!21540 (regOne!42934 (regTwo!42934 r!14100))))) b!7889731))

(declare-fun b!7889733 () Bool)

(declare-fun e!4657957 () Bool)

(declare-fun tp!2347266 () Bool)

(declare-fun tp!2347265 () Bool)

(assert (=> b!7889733 (= e!4657957 (and tp!2347266 tp!2347265))))

(assert (=> b!7889068 (= tp!2346995 e!4657957)))

(declare-fun b!7889735 () Bool)

(declare-fun tp!2347263 () Bool)

(declare-fun tp!2347267 () Bool)

(assert (=> b!7889735 (= e!4657957 (and tp!2347263 tp!2347267))))

(declare-fun b!7889734 () Bool)

(declare-fun tp!2347264 () Bool)

(assert (=> b!7889734 (= e!4657957 tp!2347264)))

(declare-fun b!7889732 () Bool)

(assert (=> b!7889732 (= e!4657957 tp_is_empty!52821)))

(assert (= (and b!7889068 ((_ is ElementMatch!21211) (reg!21540 (regOne!42934 (reg!21540 r!14100))))) b!7889732))

(assert (= (and b!7889068 ((_ is Concat!30056) (reg!21540 (regOne!42934 (reg!21540 r!14100))))) b!7889733))

(assert (= (and b!7889068 ((_ is Star!21211) (reg!21540 (regOne!42934 (reg!21540 r!14100))))) b!7889734))

(assert (= (and b!7889068 ((_ is Union!21211) (reg!21540 (regOne!42934 (reg!21540 r!14100))))) b!7889735))

(declare-fun b!7889737 () Bool)

(declare-fun e!4657958 () Bool)

(declare-fun tp!2347271 () Bool)

(declare-fun tp!2347270 () Bool)

(assert (=> b!7889737 (= e!4657958 (and tp!2347271 tp!2347270))))

(assert (=> b!7889076 (= tp!2347005 e!4657958)))

(declare-fun b!7889739 () Bool)

(declare-fun tp!2347268 () Bool)

(declare-fun tp!2347272 () Bool)

(assert (=> b!7889739 (= e!4657958 (and tp!2347268 tp!2347272))))

(declare-fun b!7889738 () Bool)

(declare-fun tp!2347269 () Bool)

(assert (=> b!7889738 (= e!4657958 tp!2347269)))

(declare-fun b!7889736 () Bool)

(assert (=> b!7889736 (= e!4657958 tp_is_empty!52821)))

(assert (= (and b!7889076 ((_ is ElementMatch!21211) (reg!21540 (reg!21540 (regOne!42934 r!14100))))) b!7889736))

(assert (= (and b!7889076 ((_ is Concat!30056) (reg!21540 (reg!21540 (regOne!42934 r!14100))))) b!7889737))

(assert (= (and b!7889076 ((_ is Star!21211) (reg!21540 (reg!21540 (regOne!42934 r!14100))))) b!7889738))

(assert (= (and b!7889076 ((_ is Union!21211) (reg!21540 (reg!21540 (regOne!42934 r!14100))))) b!7889739))

(declare-fun b!7889741 () Bool)

(declare-fun e!4657959 () Bool)

(declare-fun tp!2347276 () Bool)

(declare-fun tp!2347275 () Bool)

(assert (=> b!7889741 (= e!4657959 (and tp!2347276 tp!2347275))))

(assert (=> b!7889123 (= tp!2347061 e!4657959)))

(declare-fun b!7889743 () Bool)

(declare-fun tp!2347273 () Bool)

(declare-fun tp!2347277 () Bool)

(assert (=> b!7889743 (= e!4657959 (and tp!2347273 tp!2347277))))

(declare-fun b!7889742 () Bool)

(declare-fun tp!2347274 () Bool)

(assert (=> b!7889742 (= e!4657959 tp!2347274)))

(declare-fun b!7889740 () Bool)

(assert (=> b!7889740 (= e!4657959 tp_is_empty!52821)))

(assert (= (and b!7889123 ((_ is ElementMatch!21211) (reg!21540 (regOne!42934 (regOne!42935 r!14100))))) b!7889740))

(assert (= (and b!7889123 ((_ is Concat!30056) (reg!21540 (regOne!42934 (regOne!42935 r!14100))))) b!7889741))

(assert (= (and b!7889123 ((_ is Star!21211) (reg!21540 (regOne!42934 (regOne!42935 r!14100))))) b!7889742))

(assert (= (and b!7889123 ((_ is Union!21211) (reg!21540 (regOne!42934 (regOne!42935 r!14100))))) b!7889743))

(declare-fun b!7889745 () Bool)

(declare-fun e!4657960 () Bool)

(declare-fun tp!2347281 () Bool)

(declare-fun tp!2347280 () Bool)

(assert (=> b!7889745 (= e!4657960 (and tp!2347281 tp!2347280))))

(assert (=> b!7889046 (= tp!2346971 e!4657960)))

(declare-fun b!7889747 () Bool)

(declare-fun tp!2347278 () Bool)

(declare-fun tp!2347282 () Bool)

(assert (=> b!7889747 (= e!4657960 (and tp!2347278 tp!2347282))))

(declare-fun b!7889746 () Bool)

(declare-fun tp!2347279 () Bool)

(assert (=> b!7889746 (= e!4657960 tp!2347279)))

(declare-fun b!7889744 () Bool)

(assert (=> b!7889744 (= e!4657960 tp_is_empty!52821)))

(assert (= (and b!7889046 ((_ is ElementMatch!21211) (regOne!42934 (reg!21540 (reg!21540 r!14100))))) b!7889744))

(assert (= (and b!7889046 ((_ is Concat!30056) (regOne!42934 (reg!21540 (reg!21540 r!14100))))) b!7889745))

(assert (= (and b!7889046 ((_ is Star!21211) (regOne!42934 (reg!21540 (reg!21540 r!14100))))) b!7889746))

(assert (= (and b!7889046 ((_ is Union!21211) (regOne!42934 (reg!21540 (reg!21540 r!14100))))) b!7889747))

(declare-fun b!7889749 () Bool)

(declare-fun e!4657961 () Bool)

(declare-fun tp!2347286 () Bool)

(declare-fun tp!2347285 () Bool)

(assert (=> b!7889749 (= e!4657961 (and tp!2347286 tp!2347285))))

(assert (=> b!7889046 (= tp!2346970 e!4657961)))

(declare-fun b!7889751 () Bool)

(declare-fun tp!2347283 () Bool)

(declare-fun tp!2347287 () Bool)

(assert (=> b!7889751 (= e!4657961 (and tp!2347283 tp!2347287))))

(declare-fun b!7889750 () Bool)

(declare-fun tp!2347284 () Bool)

(assert (=> b!7889750 (= e!4657961 tp!2347284)))

(declare-fun b!7889748 () Bool)

(assert (=> b!7889748 (= e!4657961 tp_is_empty!52821)))

(assert (= (and b!7889046 ((_ is ElementMatch!21211) (regTwo!42934 (reg!21540 (reg!21540 r!14100))))) b!7889748))

(assert (= (and b!7889046 ((_ is Concat!30056) (regTwo!42934 (reg!21540 (reg!21540 r!14100))))) b!7889749))

(assert (= (and b!7889046 ((_ is Star!21211) (regTwo!42934 (reg!21540 (reg!21540 r!14100))))) b!7889750))

(assert (= (and b!7889046 ((_ is Union!21211) (regTwo!42934 (reg!21540 (reg!21540 r!14100))))) b!7889751))

(declare-fun b!7889753 () Bool)

(declare-fun e!4657962 () Bool)

(declare-fun tp!2347291 () Bool)

(declare-fun tp!2347290 () Bool)

(assert (=> b!7889753 (= e!4657962 (and tp!2347291 tp!2347290))))

(assert (=> b!7889031 (= tp!2346947 e!4657962)))

(declare-fun b!7889755 () Bool)

(declare-fun tp!2347288 () Bool)

(declare-fun tp!2347292 () Bool)

(assert (=> b!7889755 (= e!4657962 (and tp!2347288 tp!2347292))))

(declare-fun b!7889754 () Bool)

(declare-fun tp!2347289 () Bool)

(assert (=> b!7889754 (= e!4657962 tp!2347289)))

(declare-fun b!7889752 () Bool)

(assert (=> b!7889752 (= e!4657962 tp_is_empty!52821)))

(assert (= (and b!7889031 ((_ is ElementMatch!21211) (regOne!42935 (regOne!42934 (regTwo!42935 r!14100))))) b!7889752))

(assert (= (and b!7889031 ((_ is Concat!30056) (regOne!42935 (regOne!42934 (regTwo!42935 r!14100))))) b!7889753))

(assert (= (and b!7889031 ((_ is Star!21211) (regOne!42935 (regOne!42934 (regTwo!42935 r!14100))))) b!7889754))

(assert (= (and b!7889031 ((_ is Union!21211) (regOne!42935 (regOne!42934 (regTwo!42935 r!14100))))) b!7889755))

(declare-fun b!7889757 () Bool)

(declare-fun e!4657963 () Bool)

(declare-fun tp!2347296 () Bool)

(declare-fun tp!2347295 () Bool)

(assert (=> b!7889757 (= e!4657963 (and tp!2347296 tp!2347295))))

(assert (=> b!7889031 (= tp!2346951 e!4657963)))

(declare-fun b!7889759 () Bool)

(declare-fun tp!2347293 () Bool)

(declare-fun tp!2347297 () Bool)

(assert (=> b!7889759 (= e!4657963 (and tp!2347293 tp!2347297))))

(declare-fun b!7889758 () Bool)

(declare-fun tp!2347294 () Bool)

(assert (=> b!7889758 (= e!4657963 tp!2347294)))

(declare-fun b!7889756 () Bool)

(assert (=> b!7889756 (= e!4657963 tp_is_empty!52821)))

(assert (= (and b!7889031 ((_ is ElementMatch!21211) (regTwo!42935 (regOne!42934 (regTwo!42935 r!14100))))) b!7889756))

(assert (= (and b!7889031 ((_ is Concat!30056) (regTwo!42935 (regOne!42934 (regTwo!42935 r!14100))))) b!7889757))

(assert (= (and b!7889031 ((_ is Star!21211) (regTwo!42935 (regOne!42934 (regTwo!42935 r!14100))))) b!7889758))

(assert (= (and b!7889031 ((_ is Union!21211) (regTwo!42935 (regOne!42934 (regTwo!42935 r!14100))))) b!7889759))

(declare-fun b!7889761 () Bool)

(declare-fun e!4657964 () Bool)

(declare-fun tp!2347301 () Bool)

(declare-fun tp!2347300 () Bool)

(assert (=> b!7889761 (= e!4657964 (and tp!2347301 tp!2347300))))

(assert (=> b!7889029 (= tp!2346950 e!4657964)))

(declare-fun b!7889763 () Bool)

(declare-fun tp!2347298 () Bool)

(declare-fun tp!2347302 () Bool)

(assert (=> b!7889763 (= e!4657964 (and tp!2347298 tp!2347302))))

(declare-fun b!7889762 () Bool)

(declare-fun tp!2347299 () Bool)

(assert (=> b!7889762 (= e!4657964 tp!2347299)))

(declare-fun b!7889760 () Bool)

(assert (=> b!7889760 (= e!4657964 tp_is_empty!52821)))

(assert (= (and b!7889029 ((_ is ElementMatch!21211) (regOne!42934 (regOne!42934 (regTwo!42935 r!14100))))) b!7889760))

(assert (= (and b!7889029 ((_ is Concat!30056) (regOne!42934 (regOne!42934 (regTwo!42935 r!14100))))) b!7889761))

(assert (= (and b!7889029 ((_ is Star!21211) (regOne!42934 (regOne!42934 (regTwo!42935 r!14100))))) b!7889762))

(assert (= (and b!7889029 ((_ is Union!21211) (regOne!42934 (regOne!42934 (regTwo!42935 r!14100))))) b!7889763))

(declare-fun b!7889765 () Bool)

(declare-fun e!4657965 () Bool)

(declare-fun tp!2347306 () Bool)

(declare-fun tp!2347305 () Bool)

(assert (=> b!7889765 (= e!4657965 (and tp!2347306 tp!2347305))))

(assert (=> b!7889029 (= tp!2346949 e!4657965)))

(declare-fun b!7889767 () Bool)

(declare-fun tp!2347303 () Bool)

(declare-fun tp!2347307 () Bool)

(assert (=> b!7889767 (= e!4657965 (and tp!2347303 tp!2347307))))

(declare-fun b!7889766 () Bool)

(declare-fun tp!2347304 () Bool)

(assert (=> b!7889766 (= e!4657965 tp!2347304)))

(declare-fun b!7889764 () Bool)

(assert (=> b!7889764 (= e!4657965 tp_is_empty!52821)))

(assert (= (and b!7889029 ((_ is ElementMatch!21211) (regTwo!42934 (regOne!42934 (regTwo!42935 r!14100))))) b!7889764))

(assert (= (and b!7889029 ((_ is Concat!30056) (regTwo!42934 (regOne!42934 (regTwo!42935 r!14100))))) b!7889765))

(assert (= (and b!7889029 ((_ is Star!21211) (regTwo!42934 (regOne!42934 (regTwo!42935 r!14100))))) b!7889766))

(assert (= (and b!7889029 ((_ is Union!21211) (regTwo!42934 (regOne!42934 (regTwo!42935 r!14100))))) b!7889767))

(declare-fun b!7889769 () Bool)

(declare-fun e!4657966 () Bool)

(declare-fun tp!2347311 () Bool)

(declare-fun tp!2347310 () Bool)

(assert (=> b!7889769 (= e!4657966 (and tp!2347311 tp!2347310))))

(assert (=> b!7889110 (= tp!2347045 e!4657966)))

(declare-fun b!7889771 () Bool)

(declare-fun tp!2347308 () Bool)

(declare-fun tp!2347312 () Bool)

(assert (=> b!7889771 (= e!4657966 (and tp!2347308 tp!2347312))))

(declare-fun b!7889770 () Bool)

(declare-fun tp!2347309 () Bool)

(assert (=> b!7889770 (= e!4657966 tp!2347309)))

(declare-fun b!7889768 () Bool)

(assert (=> b!7889768 (= e!4657966 tp_is_empty!52821)))

(assert (= (and b!7889110 ((_ is ElementMatch!21211) (regOne!42935 (regOne!42935 (regTwo!42935 r!14100))))) b!7889768))

(assert (= (and b!7889110 ((_ is Concat!30056) (regOne!42935 (regOne!42935 (regTwo!42935 r!14100))))) b!7889769))

(assert (= (and b!7889110 ((_ is Star!21211) (regOne!42935 (regOne!42935 (regTwo!42935 r!14100))))) b!7889770))

(assert (= (and b!7889110 ((_ is Union!21211) (regOne!42935 (regOne!42935 (regTwo!42935 r!14100))))) b!7889771))

(declare-fun b!7889773 () Bool)

(declare-fun e!4657967 () Bool)

(declare-fun tp!2347316 () Bool)

(declare-fun tp!2347315 () Bool)

(assert (=> b!7889773 (= e!4657967 (and tp!2347316 tp!2347315))))

(assert (=> b!7889110 (= tp!2347049 e!4657967)))

(declare-fun b!7889775 () Bool)

(declare-fun tp!2347313 () Bool)

(declare-fun tp!2347317 () Bool)

(assert (=> b!7889775 (= e!4657967 (and tp!2347313 tp!2347317))))

(declare-fun b!7889774 () Bool)

(declare-fun tp!2347314 () Bool)

(assert (=> b!7889774 (= e!4657967 tp!2347314)))

(declare-fun b!7889772 () Bool)

(assert (=> b!7889772 (= e!4657967 tp_is_empty!52821)))

(assert (= (and b!7889110 ((_ is ElementMatch!21211) (regTwo!42935 (regOne!42935 (regTwo!42935 r!14100))))) b!7889772))

(assert (= (and b!7889110 ((_ is Concat!30056) (regTwo!42935 (regOne!42935 (regTwo!42935 r!14100))))) b!7889773))

(assert (= (and b!7889110 ((_ is Star!21211) (regTwo!42935 (regOne!42935 (regTwo!42935 r!14100))))) b!7889774))

(assert (= (and b!7889110 ((_ is Union!21211) (regTwo!42935 (regOne!42935 (regTwo!42935 r!14100))))) b!7889775))

(declare-fun b!7889777 () Bool)

(declare-fun e!4657968 () Bool)

(declare-fun tp!2347321 () Bool)

(declare-fun tp!2347320 () Bool)

(assert (=> b!7889777 (= e!4657968 (and tp!2347321 tp!2347320))))

(assert (=> b!7889065 (= tp!2346989 e!4657968)))

(declare-fun b!7889779 () Bool)

(declare-fun tp!2347318 () Bool)

(declare-fun tp!2347322 () Bool)

(assert (=> b!7889779 (= e!4657968 (and tp!2347318 tp!2347322))))

(declare-fun b!7889778 () Bool)

(declare-fun tp!2347319 () Bool)

(assert (=> b!7889778 (= e!4657968 tp!2347319)))

(declare-fun b!7889776 () Bool)

(assert (=> b!7889776 (= e!4657968 tp_is_empty!52821)))

(assert (= (and b!7889065 ((_ is ElementMatch!21211) (regOne!42935 (regTwo!42935 (regTwo!42934 r!14100))))) b!7889776))

(assert (= (and b!7889065 ((_ is Concat!30056) (regOne!42935 (regTwo!42935 (regTwo!42934 r!14100))))) b!7889777))

(assert (= (and b!7889065 ((_ is Star!21211) (regOne!42935 (regTwo!42935 (regTwo!42934 r!14100))))) b!7889778))

(assert (= (and b!7889065 ((_ is Union!21211) (regOne!42935 (regTwo!42935 (regTwo!42934 r!14100))))) b!7889779))

(declare-fun b!7889781 () Bool)

(declare-fun e!4657969 () Bool)

(declare-fun tp!2347326 () Bool)

(declare-fun tp!2347325 () Bool)

(assert (=> b!7889781 (= e!4657969 (and tp!2347326 tp!2347325))))

(assert (=> b!7889065 (= tp!2346993 e!4657969)))

(declare-fun b!7889783 () Bool)

(declare-fun tp!2347323 () Bool)

(declare-fun tp!2347327 () Bool)

(assert (=> b!7889783 (= e!4657969 (and tp!2347323 tp!2347327))))

(declare-fun b!7889782 () Bool)

(declare-fun tp!2347324 () Bool)

(assert (=> b!7889782 (= e!4657969 tp!2347324)))

(declare-fun b!7889780 () Bool)

(assert (=> b!7889780 (= e!4657969 tp_is_empty!52821)))

(assert (= (and b!7889065 ((_ is ElementMatch!21211) (regTwo!42935 (regTwo!42935 (regTwo!42934 r!14100))))) b!7889780))

(assert (= (and b!7889065 ((_ is Concat!30056) (regTwo!42935 (regTwo!42935 (regTwo!42934 r!14100))))) b!7889781))

(assert (= (and b!7889065 ((_ is Star!21211) (regTwo!42935 (regTwo!42935 (regTwo!42934 r!14100))))) b!7889782))

(assert (= (and b!7889065 ((_ is Union!21211) (regTwo!42935 (regTwo!42935 (regTwo!42934 r!14100))))) b!7889783))

(declare-fun b!7889785 () Bool)

(declare-fun e!4657970 () Bool)

(declare-fun tp!2347331 () Bool)

(declare-fun tp!2347330 () Bool)

(assert (=> b!7889785 (= e!4657970 (and tp!2347331 tp!2347330))))

(assert (=> b!7889072 (= tp!2347000 e!4657970)))

(declare-fun b!7889787 () Bool)

(declare-fun tp!2347328 () Bool)

(declare-fun tp!2347332 () Bool)

(assert (=> b!7889787 (= e!4657970 (and tp!2347328 tp!2347332))))

(declare-fun b!7889786 () Bool)

(declare-fun tp!2347329 () Bool)

(assert (=> b!7889786 (= e!4657970 tp!2347329)))

(declare-fun b!7889784 () Bool)

(assert (=> b!7889784 (= e!4657970 tp_is_empty!52821)))

(assert (= (and b!7889072 ((_ is ElementMatch!21211) (reg!21540 (regTwo!42934 (reg!21540 r!14100))))) b!7889784))

(assert (= (and b!7889072 ((_ is Concat!30056) (reg!21540 (regTwo!42934 (reg!21540 r!14100))))) b!7889785))

(assert (= (and b!7889072 ((_ is Star!21211) (reg!21540 (regTwo!42934 (reg!21540 r!14100))))) b!7889786))

(assert (= (and b!7889072 ((_ is Union!21211) (reg!21540 (regTwo!42934 (reg!21540 r!14100))))) b!7889787))

(declare-fun b!7889789 () Bool)

(declare-fun e!4657971 () Bool)

(declare-fun tp!2347336 () Bool)

(declare-fun tp!2347335 () Bool)

(assert (=> b!7889789 (= e!4657971 (and tp!2347336 tp!2347335))))

(assert (=> b!7889119 (= tp!2347056 e!4657971)))

(declare-fun b!7889791 () Bool)

(declare-fun tp!2347333 () Bool)

(declare-fun tp!2347337 () Bool)

(assert (=> b!7889791 (= e!4657971 (and tp!2347333 tp!2347337))))

(declare-fun b!7889790 () Bool)

(declare-fun tp!2347334 () Bool)

(assert (=> b!7889790 (= e!4657971 tp!2347334)))

(declare-fun b!7889788 () Bool)

(assert (=> b!7889788 (= e!4657971 tp_is_empty!52821)))

(assert (= (and b!7889119 ((_ is ElementMatch!21211) (reg!21540 (reg!21540 (regOne!42935 r!14100))))) b!7889788))

(assert (= (and b!7889119 ((_ is Concat!30056) (reg!21540 (reg!21540 (regOne!42935 r!14100))))) b!7889789))

(assert (= (and b!7889119 ((_ is Star!21211) (reg!21540 (reg!21540 (regOne!42935 r!14100))))) b!7889790))

(assert (= (and b!7889119 ((_ is Union!21211) (reg!21540 (reg!21540 (regOne!42935 r!14100))))) b!7889791))

(declare-fun b!7889792 () Bool)

(declare-fun e!4657972 () Bool)

(declare-fun tp!2347338 () Bool)

(assert (=> b!7889792 (= e!4657972 (and tp_is_empty!52821 tp!2347338))))

(assert (=> b!7889049 (= tp!2346973 e!4657972)))

(assert (= (and b!7889049 ((_ is Cons!73944) (t!388803 (t!388803 (t!388803 (_2!38333 cut!2)))))) b!7889792))

(declare-fun b!7889794 () Bool)

(declare-fun e!4657973 () Bool)

(declare-fun tp!2347342 () Bool)

(declare-fun tp!2347341 () Bool)

(assert (=> b!7889794 (= e!4657973 (and tp!2347342 tp!2347341))))

(assert (=> b!7889057 (= tp!2346979 e!4657973)))

(declare-fun b!7889796 () Bool)

(declare-fun tp!2347339 () Bool)

(declare-fun tp!2347343 () Bool)

(assert (=> b!7889796 (= e!4657973 (and tp!2347339 tp!2347343))))

(declare-fun b!7889795 () Bool)

(declare-fun tp!2347340 () Bool)

(assert (=> b!7889795 (= e!4657973 tp!2347340)))

(declare-fun b!7889793 () Bool)

(assert (=> b!7889793 (= e!4657973 tp_is_empty!52821)))

(assert (= (and b!7889057 ((_ is ElementMatch!21211) (regOne!42935 (regTwo!42935 (regOne!42934 r!14100))))) b!7889793))

(assert (= (and b!7889057 ((_ is Concat!30056) (regOne!42935 (regTwo!42935 (regOne!42934 r!14100))))) b!7889794))

(assert (= (and b!7889057 ((_ is Star!21211) (regOne!42935 (regTwo!42935 (regOne!42934 r!14100))))) b!7889795))

(assert (= (and b!7889057 ((_ is Union!21211) (regOne!42935 (regTwo!42935 (regOne!42934 r!14100))))) b!7889796))

(declare-fun b!7889798 () Bool)

(declare-fun e!4657974 () Bool)

(declare-fun tp!2347347 () Bool)

(declare-fun tp!2347346 () Bool)

(assert (=> b!7889798 (= e!4657974 (and tp!2347347 tp!2347346))))

(assert (=> b!7889057 (= tp!2346983 e!4657974)))

(declare-fun b!7889800 () Bool)

(declare-fun tp!2347344 () Bool)

(declare-fun tp!2347348 () Bool)

(assert (=> b!7889800 (= e!4657974 (and tp!2347344 tp!2347348))))

(declare-fun b!7889799 () Bool)

(declare-fun tp!2347345 () Bool)

(assert (=> b!7889799 (= e!4657974 tp!2347345)))

(declare-fun b!7889797 () Bool)

(assert (=> b!7889797 (= e!4657974 tp_is_empty!52821)))

(assert (= (and b!7889057 ((_ is ElementMatch!21211) (regTwo!42935 (regTwo!42935 (regOne!42934 r!14100))))) b!7889797))

(assert (= (and b!7889057 ((_ is Concat!30056) (regTwo!42935 (regTwo!42935 (regOne!42934 r!14100))))) b!7889798))

(assert (= (and b!7889057 ((_ is Star!21211) (regTwo!42935 (regTwo!42935 (regOne!42934 r!14100))))) b!7889799))

(assert (= (and b!7889057 ((_ is Union!21211) (regTwo!42935 (regTwo!42935 (regOne!42934 r!14100))))) b!7889800))

(declare-fun b!7889802 () Bool)

(declare-fun e!4657975 () Bool)

(declare-fun tp!2347352 () Bool)

(declare-fun tp!2347351 () Bool)

(assert (=> b!7889802 (= e!4657975 (and tp!2347352 tp!2347351))))

(assert (=> b!7889106 (= tp!2347040 e!4657975)))

(declare-fun b!7889804 () Bool)

(declare-fun tp!2347349 () Bool)

(declare-fun tp!2347353 () Bool)

(assert (=> b!7889804 (= e!4657975 (and tp!2347349 tp!2347353))))

(declare-fun b!7889803 () Bool)

(declare-fun tp!2347350 () Bool)

(assert (=> b!7889803 (= e!4657975 tp!2347350)))

(declare-fun b!7889801 () Bool)

(assert (=> b!7889801 (= e!4657975 tp_is_empty!52821)))

(assert (= (and b!7889106 ((_ is ElementMatch!21211) (regOne!42935 (regTwo!42935 (regOne!42935 r!14100))))) b!7889801))

(assert (= (and b!7889106 ((_ is Concat!30056) (regOne!42935 (regTwo!42935 (regOne!42935 r!14100))))) b!7889802))

(assert (= (and b!7889106 ((_ is Star!21211) (regOne!42935 (regTwo!42935 (regOne!42935 r!14100))))) b!7889803))

(assert (= (and b!7889106 ((_ is Union!21211) (regOne!42935 (regTwo!42935 (regOne!42935 r!14100))))) b!7889804))

(declare-fun b!7889806 () Bool)

(declare-fun e!4657976 () Bool)

(declare-fun tp!2347357 () Bool)

(declare-fun tp!2347356 () Bool)

(assert (=> b!7889806 (= e!4657976 (and tp!2347357 tp!2347356))))

(assert (=> b!7889106 (= tp!2347044 e!4657976)))

(declare-fun b!7889808 () Bool)

(declare-fun tp!2347354 () Bool)

(declare-fun tp!2347358 () Bool)

(assert (=> b!7889808 (= e!4657976 (and tp!2347354 tp!2347358))))

(declare-fun b!7889807 () Bool)

(declare-fun tp!2347355 () Bool)

(assert (=> b!7889807 (= e!4657976 tp!2347355)))

(declare-fun b!7889805 () Bool)

(assert (=> b!7889805 (= e!4657976 tp_is_empty!52821)))

(assert (= (and b!7889106 ((_ is ElementMatch!21211) (regTwo!42935 (regTwo!42935 (regOne!42935 r!14100))))) b!7889805))

(assert (= (and b!7889106 ((_ is Concat!30056) (regTwo!42935 (regTwo!42935 (regOne!42935 r!14100))))) b!7889806))

(assert (= (and b!7889106 ((_ is Star!21211) (regTwo!42935 (regTwo!42935 (regOne!42935 r!14100))))) b!7889807))

(assert (= (and b!7889106 ((_ is Union!21211) (regTwo!42935 (regTwo!42935 (regOne!42935 r!14100))))) b!7889808))

(declare-fun b!7889810 () Bool)

(declare-fun e!4657977 () Bool)

(declare-fun tp!2347362 () Bool)

(declare-fun tp!2347361 () Bool)

(assert (=> b!7889810 (= e!4657977 (and tp!2347362 tp!2347361))))

(assert (=> b!7889097 (= tp!2347029 e!4657977)))

(declare-fun b!7889812 () Bool)

(declare-fun tp!2347359 () Bool)

(declare-fun tp!2347363 () Bool)

(assert (=> b!7889812 (= e!4657977 (and tp!2347359 tp!2347363))))

(declare-fun b!7889811 () Bool)

(declare-fun tp!2347360 () Bool)

(assert (=> b!7889811 (= e!4657977 tp!2347360)))

(declare-fun b!7889809 () Bool)

(assert (=> b!7889809 (= e!4657977 tp_is_empty!52821)))

(assert (= (and b!7889097 ((_ is ElementMatch!21211) (regOne!42935 (regTwo!42934 (regTwo!42934 r!14100))))) b!7889809))

(assert (= (and b!7889097 ((_ is Concat!30056) (regOne!42935 (regTwo!42934 (regTwo!42934 r!14100))))) b!7889810))

(assert (= (and b!7889097 ((_ is Star!21211) (regOne!42935 (regTwo!42934 (regTwo!42934 r!14100))))) b!7889811))

(assert (= (and b!7889097 ((_ is Union!21211) (regOne!42935 (regTwo!42934 (regTwo!42934 r!14100))))) b!7889812))

(declare-fun b!7889814 () Bool)

(declare-fun e!4657978 () Bool)

(declare-fun tp!2347367 () Bool)

(declare-fun tp!2347366 () Bool)

(assert (=> b!7889814 (= e!4657978 (and tp!2347367 tp!2347366))))

(assert (=> b!7889097 (= tp!2347033 e!4657978)))

(declare-fun b!7889816 () Bool)

(declare-fun tp!2347364 () Bool)

(declare-fun tp!2347368 () Bool)

(assert (=> b!7889816 (= e!4657978 (and tp!2347364 tp!2347368))))

(declare-fun b!7889815 () Bool)

(declare-fun tp!2347365 () Bool)

(assert (=> b!7889815 (= e!4657978 tp!2347365)))

(declare-fun b!7889813 () Bool)

(assert (=> b!7889813 (= e!4657978 tp_is_empty!52821)))

(assert (= (and b!7889097 ((_ is ElementMatch!21211) (regTwo!42935 (regTwo!42934 (regTwo!42934 r!14100))))) b!7889813))

(assert (= (and b!7889097 ((_ is Concat!30056) (regTwo!42935 (regTwo!42934 (regTwo!42934 r!14100))))) b!7889814))

(assert (= (and b!7889097 ((_ is Star!21211) (regTwo!42935 (regTwo!42934 (regTwo!42934 r!14100))))) b!7889815))

(assert (= (and b!7889097 ((_ is Union!21211) (regTwo!42935 (regTwo!42934 (regTwo!42934 r!14100))))) b!7889816))

(declare-fun b!7889818 () Bool)

(declare-fun e!4657979 () Bool)

(declare-fun tp!2347372 () Bool)

(declare-fun tp!2347371 () Bool)

(assert (=> b!7889818 (= e!4657979 (and tp!2347372 tp!2347371))))

(assert (=> b!7889055 (= tp!2346982 e!4657979)))

(declare-fun b!7889820 () Bool)

(declare-fun tp!2347369 () Bool)

(declare-fun tp!2347373 () Bool)

(assert (=> b!7889820 (= e!4657979 (and tp!2347369 tp!2347373))))

(declare-fun b!7889819 () Bool)

(declare-fun tp!2347370 () Bool)

(assert (=> b!7889819 (= e!4657979 tp!2347370)))

(declare-fun b!7889817 () Bool)

(assert (=> b!7889817 (= e!4657979 tp_is_empty!52821)))

(assert (= (and b!7889055 ((_ is ElementMatch!21211) (regOne!42934 (regTwo!42935 (regOne!42934 r!14100))))) b!7889817))

(assert (= (and b!7889055 ((_ is Concat!30056) (regOne!42934 (regTwo!42935 (regOne!42934 r!14100))))) b!7889818))

(assert (= (and b!7889055 ((_ is Star!21211) (regOne!42934 (regTwo!42935 (regOne!42934 r!14100))))) b!7889819))

(assert (= (and b!7889055 ((_ is Union!21211) (regOne!42934 (regTwo!42935 (regOne!42934 r!14100))))) b!7889820))

(declare-fun b!7889822 () Bool)

(declare-fun e!4657980 () Bool)

(declare-fun tp!2347377 () Bool)

(declare-fun tp!2347376 () Bool)

(assert (=> b!7889822 (= e!4657980 (and tp!2347377 tp!2347376))))

(assert (=> b!7889055 (= tp!2346981 e!4657980)))

(declare-fun b!7889824 () Bool)

(declare-fun tp!2347374 () Bool)

(declare-fun tp!2347378 () Bool)

(assert (=> b!7889824 (= e!4657980 (and tp!2347374 tp!2347378))))

(declare-fun b!7889823 () Bool)

(declare-fun tp!2347375 () Bool)

(assert (=> b!7889823 (= e!4657980 tp!2347375)))

(declare-fun b!7889821 () Bool)

(assert (=> b!7889821 (= e!4657980 tp_is_empty!52821)))

(assert (= (and b!7889055 ((_ is ElementMatch!21211) (regTwo!42934 (regTwo!42935 (regOne!42934 r!14100))))) b!7889821))

(assert (= (and b!7889055 ((_ is Concat!30056) (regTwo!42934 (regTwo!42935 (regOne!42934 r!14100))))) b!7889822))

(assert (= (and b!7889055 ((_ is Star!21211) (regTwo!42934 (regTwo!42935 (regOne!42934 r!14100))))) b!7889823))

(assert (= (and b!7889055 ((_ is Union!21211) (regTwo!42934 (regTwo!42935 (regOne!42934 r!14100))))) b!7889824))

(declare-fun b!7889826 () Bool)

(declare-fun e!4657981 () Bool)

(declare-fun tp!2347382 () Bool)

(declare-fun tp!2347381 () Bool)

(assert (=> b!7889826 (= e!4657981 (and tp!2347382 tp!2347381))))

(assert (=> b!7889104 (= tp!2347043 e!4657981)))

(declare-fun b!7889828 () Bool)

(declare-fun tp!2347379 () Bool)

(declare-fun tp!2347383 () Bool)

(assert (=> b!7889828 (= e!4657981 (and tp!2347379 tp!2347383))))

(declare-fun b!7889827 () Bool)

(declare-fun tp!2347380 () Bool)

(assert (=> b!7889827 (= e!4657981 tp!2347380)))

(declare-fun b!7889825 () Bool)

(assert (=> b!7889825 (= e!4657981 tp_is_empty!52821)))

(assert (= (and b!7889104 ((_ is ElementMatch!21211) (regOne!42934 (regTwo!42935 (regOne!42935 r!14100))))) b!7889825))

(assert (= (and b!7889104 ((_ is Concat!30056) (regOne!42934 (regTwo!42935 (regOne!42935 r!14100))))) b!7889826))

(assert (= (and b!7889104 ((_ is Star!21211) (regOne!42934 (regTwo!42935 (regOne!42935 r!14100))))) b!7889827))

(assert (= (and b!7889104 ((_ is Union!21211) (regOne!42934 (regTwo!42935 (regOne!42935 r!14100))))) b!7889828))

(declare-fun b!7889830 () Bool)

(declare-fun e!4657982 () Bool)

(declare-fun tp!2347387 () Bool)

(declare-fun tp!2347386 () Bool)

(assert (=> b!7889830 (= e!4657982 (and tp!2347387 tp!2347386))))

(assert (=> b!7889104 (= tp!2347042 e!4657982)))

(declare-fun b!7889832 () Bool)

(declare-fun tp!2347384 () Bool)

(declare-fun tp!2347388 () Bool)

(assert (=> b!7889832 (= e!4657982 (and tp!2347384 tp!2347388))))

(declare-fun b!7889831 () Bool)

(declare-fun tp!2347385 () Bool)

(assert (=> b!7889831 (= e!4657982 tp!2347385)))

(declare-fun b!7889829 () Bool)

(assert (=> b!7889829 (= e!4657982 tp_is_empty!52821)))

(assert (= (and b!7889104 ((_ is ElementMatch!21211) (regTwo!42934 (regTwo!42935 (regOne!42935 r!14100))))) b!7889829))

(assert (= (and b!7889104 ((_ is Concat!30056) (regTwo!42934 (regTwo!42935 (regOne!42935 r!14100))))) b!7889830))

(assert (= (and b!7889104 ((_ is Star!21211) (regTwo!42934 (regTwo!42935 (regOne!42935 r!14100))))) b!7889831))

(assert (= (and b!7889104 ((_ is Union!21211) (regTwo!42934 (regTwo!42935 (regOne!42935 r!14100))))) b!7889832))

(declare-fun b!7889834 () Bool)

(declare-fun e!4657983 () Bool)

(declare-fun tp!2347392 () Bool)

(declare-fun tp!2347391 () Bool)

(assert (=> b!7889834 (= e!4657983 (and tp!2347392 tp!2347391))))

(assert (=> b!7889080 (= tp!2347010 e!4657983)))

(declare-fun b!7889836 () Bool)

(declare-fun tp!2347389 () Bool)

(declare-fun tp!2347393 () Bool)

(assert (=> b!7889836 (= e!4657983 (and tp!2347389 tp!2347393))))

(declare-fun b!7889835 () Bool)

(declare-fun tp!2347390 () Bool)

(assert (=> b!7889835 (= e!4657983 tp!2347390)))

(declare-fun b!7889833 () Bool)

(assert (=> b!7889833 (= e!4657983 tp_is_empty!52821)))

(assert (= (and b!7889080 ((_ is ElementMatch!21211) (reg!21540 (regOne!42934 (regOne!42934 r!14100))))) b!7889833))

(assert (= (and b!7889080 ((_ is Concat!30056) (reg!21540 (regOne!42934 (regOne!42934 r!14100))))) b!7889834))

(assert (= (and b!7889080 ((_ is Star!21211) (reg!21540 (regOne!42934 (regOne!42934 r!14100))))) b!7889835))

(assert (= (and b!7889080 ((_ is Union!21211) (reg!21540 (regOne!42934 (regOne!42934 r!14100))))) b!7889836))

(declare-fun b!7889838 () Bool)

(declare-fun e!4657984 () Bool)

(declare-fun tp!2347397 () Bool)

(declare-fun tp!2347396 () Bool)

(assert (=> b!7889838 (= e!4657984 (and tp!2347397 tp!2347396))))

(assert (=> b!7889040 (= tp!2346958 e!4657984)))

(declare-fun b!7889840 () Bool)

(declare-fun tp!2347394 () Bool)

(declare-fun tp!2347398 () Bool)

(assert (=> b!7889840 (= e!4657984 (and tp!2347394 tp!2347398))))

(declare-fun b!7889839 () Bool)

(declare-fun tp!2347395 () Bool)

(assert (=> b!7889839 (= e!4657984 tp!2347395)))

(declare-fun b!7889837 () Bool)

(assert (=> b!7889837 (= e!4657984 tp_is_empty!52821)))

(assert (= (and b!7889040 ((_ is ElementMatch!21211) (regOne!42935 (regOne!42935 (reg!21540 r!14100))))) b!7889837))

(assert (= (and b!7889040 ((_ is Concat!30056) (regOne!42935 (regOne!42935 (reg!21540 r!14100))))) b!7889838))

(assert (= (and b!7889040 ((_ is Star!21211) (regOne!42935 (regOne!42935 (reg!21540 r!14100))))) b!7889839))

(assert (= (and b!7889040 ((_ is Union!21211) (regOne!42935 (regOne!42935 (reg!21540 r!14100))))) b!7889840))

(declare-fun b!7889842 () Bool)

(declare-fun e!4657985 () Bool)

(declare-fun tp!2347402 () Bool)

(declare-fun tp!2347401 () Bool)

(assert (=> b!7889842 (= e!4657985 (and tp!2347402 tp!2347401))))

(assert (=> b!7889040 (= tp!2346962 e!4657985)))

(declare-fun b!7889844 () Bool)

(declare-fun tp!2347399 () Bool)

(declare-fun tp!2347403 () Bool)

(assert (=> b!7889844 (= e!4657985 (and tp!2347399 tp!2347403))))

(declare-fun b!7889843 () Bool)

(declare-fun tp!2347400 () Bool)

(assert (=> b!7889843 (= e!4657985 tp!2347400)))

(declare-fun b!7889841 () Bool)

(assert (=> b!7889841 (= e!4657985 tp_is_empty!52821)))

(assert (= (and b!7889040 ((_ is ElementMatch!21211) (regTwo!42935 (regOne!42935 (reg!21540 r!14100))))) b!7889841))

(assert (= (and b!7889040 ((_ is Concat!30056) (regTwo!42935 (regOne!42935 (reg!21540 r!14100))))) b!7889842))

(assert (= (and b!7889040 ((_ is Star!21211) (regTwo!42935 (regOne!42935 (reg!21540 r!14100))))) b!7889843))

(assert (= (and b!7889040 ((_ is Union!21211) (regTwo!42935 (regOne!42935 (reg!21540 r!14100))))) b!7889844))

(declare-fun b!7889846 () Bool)

(declare-fun e!4657986 () Bool)

(declare-fun tp!2347407 () Bool)

(declare-fun tp!2347406 () Bool)

(assert (=> b!7889846 (= e!4657986 (and tp!2347407 tp!2347406))))

(assert (=> b!7889088 (= tp!2347020 e!4657986)))

(declare-fun b!7889848 () Bool)

(declare-fun tp!2347404 () Bool)

(declare-fun tp!2347408 () Bool)

(assert (=> b!7889848 (= e!4657986 (and tp!2347404 tp!2347408))))

(declare-fun b!7889847 () Bool)

(declare-fun tp!2347405 () Bool)

(assert (=> b!7889847 (= e!4657986 tp!2347405)))

(declare-fun b!7889845 () Bool)

(assert (=> b!7889845 (= e!4657986 tp_is_empty!52821)))

(assert (= (and b!7889088 ((_ is ElementMatch!21211) (reg!21540 (reg!21540 (regTwo!42934 r!14100))))) b!7889845))

(assert (= (and b!7889088 ((_ is Concat!30056) (reg!21540 (reg!21540 (regTwo!42934 r!14100))))) b!7889846))

(assert (= (and b!7889088 ((_ is Star!21211) (reg!21540 (reg!21540 (regTwo!42934 r!14100))))) b!7889847))

(assert (= (and b!7889088 ((_ is Union!21211) (reg!21540 (reg!21540 (regTwo!42934 r!14100))))) b!7889848))

(declare-fun b!7889850 () Bool)

(declare-fun e!4657987 () Bool)

(declare-fun tp!2347412 () Bool)

(declare-fun tp!2347411 () Bool)

(assert (=> b!7889850 (= e!4657987 (and tp!2347412 tp!2347411))))

(assert (=> b!7889134 (= tp!2347070 e!4657987)))

(declare-fun b!7889852 () Bool)

(declare-fun tp!2347409 () Bool)

(declare-fun tp!2347413 () Bool)

(assert (=> b!7889852 (= e!4657987 (and tp!2347409 tp!2347413))))

(declare-fun b!7889851 () Bool)

(declare-fun tp!2347410 () Bool)

(assert (=> b!7889851 (= e!4657987 tp!2347410)))

(declare-fun b!7889849 () Bool)

(assert (=> b!7889849 (= e!4657987 tp_is_empty!52821)))

(assert (= (and b!7889134 ((_ is ElementMatch!21211) (regOne!42935 (reg!21540 (regTwo!42935 r!14100))))) b!7889849))

(assert (= (and b!7889134 ((_ is Concat!30056) (regOne!42935 (reg!21540 (regTwo!42935 r!14100))))) b!7889850))

(assert (= (and b!7889134 ((_ is Star!21211) (regOne!42935 (reg!21540 (regTwo!42935 r!14100))))) b!7889851))

(assert (= (and b!7889134 ((_ is Union!21211) (regOne!42935 (reg!21540 (regTwo!42935 r!14100))))) b!7889852))

(declare-fun b!7889854 () Bool)

(declare-fun e!4657988 () Bool)

(declare-fun tp!2347417 () Bool)

(declare-fun tp!2347416 () Bool)

(assert (=> b!7889854 (= e!4657988 (and tp!2347417 tp!2347416))))

(assert (=> b!7889134 (= tp!2347074 e!4657988)))

(declare-fun b!7889856 () Bool)

(declare-fun tp!2347414 () Bool)

(declare-fun tp!2347418 () Bool)

(assert (=> b!7889856 (= e!4657988 (and tp!2347414 tp!2347418))))

(declare-fun b!7889855 () Bool)

(declare-fun tp!2347415 () Bool)

(assert (=> b!7889855 (= e!4657988 tp!2347415)))

(declare-fun b!7889853 () Bool)

(assert (=> b!7889853 (= e!4657988 tp_is_empty!52821)))

(assert (= (and b!7889134 ((_ is ElementMatch!21211) (regTwo!42935 (reg!21540 (regTwo!42935 r!14100))))) b!7889853))

(assert (= (and b!7889134 ((_ is Concat!30056) (regTwo!42935 (reg!21540 (regTwo!42935 r!14100))))) b!7889854))

(assert (= (and b!7889134 ((_ is Star!21211) (regTwo!42935 (reg!21540 (regTwo!42935 r!14100))))) b!7889855))

(assert (= (and b!7889134 ((_ is Union!21211) (regTwo!42935 (reg!21540 (regTwo!42935 r!14100))))) b!7889856))

(declare-fun b!7889858 () Bool)

(declare-fun e!4657989 () Bool)

(declare-fun tp!2347422 () Bool)

(declare-fun tp!2347421 () Bool)

(assert (=> b!7889858 (= e!4657989 (and tp!2347422 tp!2347421))))

(assert (=> b!7889038 (= tp!2346961 e!4657989)))

(declare-fun b!7889860 () Bool)

(declare-fun tp!2347419 () Bool)

(declare-fun tp!2347423 () Bool)

(assert (=> b!7889860 (= e!4657989 (and tp!2347419 tp!2347423))))

(declare-fun b!7889859 () Bool)

(declare-fun tp!2347420 () Bool)

(assert (=> b!7889859 (= e!4657989 tp!2347420)))

(declare-fun b!7889857 () Bool)

(assert (=> b!7889857 (= e!4657989 tp_is_empty!52821)))

(assert (= (and b!7889038 ((_ is ElementMatch!21211) (regOne!42934 (regOne!42935 (reg!21540 r!14100))))) b!7889857))

(assert (= (and b!7889038 ((_ is Concat!30056) (regOne!42934 (regOne!42935 (reg!21540 r!14100))))) b!7889858))

(assert (= (and b!7889038 ((_ is Star!21211) (regOne!42934 (regOne!42935 (reg!21540 r!14100))))) b!7889859))

(assert (= (and b!7889038 ((_ is Union!21211) (regOne!42934 (regOne!42935 (reg!21540 r!14100))))) b!7889860))

(declare-fun b!7889862 () Bool)

(declare-fun e!4657990 () Bool)

(declare-fun tp!2347427 () Bool)

(declare-fun tp!2347426 () Bool)

(assert (=> b!7889862 (= e!4657990 (and tp!2347427 tp!2347426))))

(assert (=> b!7889038 (= tp!2346960 e!4657990)))

(declare-fun b!7889864 () Bool)

(declare-fun tp!2347424 () Bool)

(declare-fun tp!2347428 () Bool)

(assert (=> b!7889864 (= e!4657990 (and tp!2347424 tp!2347428))))

(declare-fun b!7889863 () Bool)

(declare-fun tp!2347425 () Bool)

(assert (=> b!7889863 (= e!4657990 tp!2347425)))

(declare-fun b!7889861 () Bool)

(assert (=> b!7889861 (= e!4657990 tp_is_empty!52821)))

(assert (= (and b!7889038 ((_ is ElementMatch!21211) (regTwo!42934 (regOne!42935 (reg!21540 r!14100))))) b!7889861))

(assert (= (and b!7889038 ((_ is Concat!30056) (regTwo!42934 (regOne!42935 (reg!21540 r!14100))))) b!7889862))

(assert (= (and b!7889038 ((_ is Star!21211) (regTwo!42934 (regOne!42935 (reg!21540 r!14100))))) b!7889863))

(assert (= (and b!7889038 ((_ is Union!21211) (regTwo!42934 (regOne!42935 (reg!21540 r!14100))))) b!7889864))

(declare-fun b!7889866 () Bool)

(declare-fun e!4657991 () Bool)

(declare-fun tp!2347432 () Bool)

(declare-fun tp!2347431 () Bool)

(assert (=> b!7889866 (= e!4657991 (and tp!2347432 tp!2347431))))

(assert (=> b!7889132 (= tp!2347073 e!4657991)))

(declare-fun b!7889868 () Bool)

(declare-fun tp!2347429 () Bool)

(declare-fun tp!2347433 () Bool)

(assert (=> b!7889868 (= e!4657991 (and tp!2347429 tp!2347433))))

(declare-fun b!7889867 () Bool)

(declare-fun tp!2347430 () Bool)

(assert (=> b!7889867 (= e!4657991 tp!2347430)))

(declare-fun b!7889865 () Bool)

(assert (=> b!7889865 (= e!4657991 tp_is_empty!52821)))

(assert (= (and b!7889132 ((_ is ElementMatch!21211) (regOne!42934 (reg!21540 (regTwo!42935 r!14100))))) b!7889865))

(assert (= (and b!7889132 ((_ is Concat!30056) (regOne!42934 (reg!21540 (regTwo!42935 r!14100))))) b!7889866))

(assert (= (and b!7889132 ((_ is Star!21211) (regOne!42934 (reg!21540 (regTwo!42935 r!14100))))) b!7889867))

(assert (= (and b!7889132 ((_ is Union!21211) (regOne!42934 (reg!21540 (regTwo!42935 r!14100))))) b!7889868))

(declare-fun b!7889870 () Bool)

(declare-fun e!4657992 () Bool)

(declare-fun tp!2347437 () Bool)

(declare-fun tp!2347436 () Bool)

(assert (=> b!7889870 (= e!4657992 (and tp!2347437 tp!2347436))))

(assert (=> b!7889132 (= tp!2347072 e!4657992)))

(declare-fun b!7889872 () Bool)

(declare-fun tp!2347434 () Bool)

(declare-fun tp!2347438 () Bool)

(assert (=> b!7889872 (= e!4657992 (and tp!2347434 tp!2347438))))

(declare-fun b!7889871 () Bool)

(declare-fun tp!2347435 () Bool)

(assert (=> b!7889871 (= e!4657992 tp!2347435)))

(declare-fun b!7889869 () Bool)

(assert (=> b!7889869 (= e!4657992 tp_is_empty!52821)))

(assert (= (and b!7889132 ((_ is ElementMatch!21211) (regTwo!42934 (reg!21540 (regTwo!42935 r!14100))))) b!7889869))

(assert (= (and b!7889132 ((_ is Concat!30056) (regTwo!42934 (reg!21540 (regTwo!42935 r!14100))))) b!7889870))

(assert (= (and b!7889132 ((_ is Star!21211) (regTwo!42934 (reg!21540 (regTwo!42935 r!14100))))) b!7889871))

(assert (= (and b!7889132 ((_ is Union!21211) (regTwo!42934 (reg!21540 (regTwo!42935 r!14100))))) b!7889872))

(declare-fun b!7889874 () Bool)

(declare-fun e!4657993 () Bool)

(declare-fun tp!2347442 () Bool)

(declare-fun tp!2347441 () Bool)

(assert (=> b!7889874 (= e!4657993 (and tp!2347442 tp!2347441))))

(assert (=> b!7889063 (= tp!2346992 e!4657993)))

(declare-fun b!7889876 () Bool)

(declare-fun tp!2347439 () Bool)

(declare-fun tp!2347443 () Bool)

(assert (=> b!7889876 (= e!4657993 (and tp!2347439 tp!2347443))))

(declare-fun b!7889875 () Bool)

(declare-fun tp!2347440 () Bool)

(assert (=> b!7889875 (= e!4657993 tp!2347440)))

(declare-fun b!7889873 () Bool)

(assert (=> b!7889873 (= e!4657993 tp_is_empty!52821)))

(assert (= (and b!7889063 ((_ is ElementMatch!21211) (regOne!42934 (regTwo!42935 (regTwo!42934 r!14100))))) b!7889873))

(assert (= (and b!7889063 ((_ is Concat!30056) (regOne!42934 (regTwo!42935 (regTwo!42934 r!14100))))) b!7889874))

(assert (= (and b!7889063 ((_ is Star!21211) (regOne!42934 (regTwo!42935 (regTwo!42934 r!14100))))) b!7889875))

(assert (= (and b!7889063 ((_ is Union!21211) (regOne!42934 (regTwo!42935 (regTwo!42934 r!14100))))) b!7889876))

(declare-fun b!7889878 () Bool)

(declare-fun e!4657994 () Bool)

(declare-fun tp!2347447 () Bool)

(declare-fun tp!2347446 () Bool)

(assert (=> b!7889878 (= e!4657994 (and tp!2347447 tp!2347446))))

(assert (=> b!7889063 (= tp!2346991 e!4657994)))

(declare-fun b!7889880 () Bool)

(declare-fun tp!2347444 () Bool)

(declare-fun tp!2347448 () Bool)

(assert (=> b!7889880 (= e!4657994 (and tp!2347444 tp!2347448))))

(declare-fun b!7889879 () Bool)

(declare-fun tp!2347445 () Bool)

(assert (=> b!7889879 (= e!4657994 tp!2347445)))

(declare-fun b!7889877 () Bool)

(assert (=> b!7889877 (= e!4657994 tp_is_empty!52821)))

(assert (= (and b!7889063 ((_ is ElementMatch!21211) (regTwo!42934 (regTwo!42935 (regTwo!42934 r!14100))))) b!7889877))

(assert (= (and b!7889063 ((_ is Concat!30056) (regTwo!42934 (regTwo!42935 (regTwo!42934 r!14100))))) b!7889878))

(assert (= (and b!7889063 ((_ is Star!21211) (regTwo!42934 (regTwo!42935 (regTwo!42934 r!14100))))) b!7889879))

(assert (= (and b!7889063 ((_ is Union!21211) (regTwo!42934 (regTwo!42935 (regTwo!42934 r!14100))))) b!7889880))

(declare-fun b!7889882 () Bool)

(declare-fun e!4657995 () Bool)

(declare-fun tp!2347452 () Bool)

(declare-fun tp!2347451 () Bool)

(assert (=> b!7889882 (= e!4657995 (and tp!2347452 tp!2347451))))

(assert (=> b!7889035 (= tp!2346952 e!4657995)))

(declare-fun b!7889884 () Bool)

(declare-fun tp!2347449 () Bool)

(declare-fun tp!2347453 () Bool)

(assert (=> b!7889884 (= e!4657995 (and tp!2347449 tp!2347453))))

(declare-fun b!7889883 () Bool)

(declare-fun tp!2347450 () Bool)

(assert (=> b!7889883 (= e!4657995 tp!2347450)))

(declare-fun b!7889881 () Bool)

(assert (=> b!7889881 (= e!4657995 tp_is_empty!52821)))

(assert (= (and b!7889035 ((_ is ElementMatch!21211) (regOne!42935 (regTwo!42934 (regTwo!42935 r!14100))))) b!7889881))

(assert (= (and b!7889035 ((_ is Concat!30056) (regOne!42935 (regTwo!42934 (regTwo!42935 r!14100))))) b!7889882))

(assert (= (and b!7889035 ((_ is Star!21211) (regOne!42935 (regTwo!42934 (regTwo!42935 r!14100))))) b!7889883))

(assert (= (and b!7889035 ((_ is Union!21211) (regOne!42935 (regTwo!42934 (regTwo!42935 r!14100))))) b!7889884))

(declare-fun b!7889886 () Bool)

(declare-fun e!4657996 () Bool)

(declare-fun tp!2347457 () Bool)

(declare-fun tp!2347456 () Bool)

(assert (=> b!7889886 (= e!4657996 (and tp!2347457 tp!2347456))))

(assert (=> b!7889035 (= tp!2346956 e!4657996)))

(declare-fun b!7889888 () Bool)

(declare-fun tp!2347454 () Bool)

(declare-fun tp!2347458 () Bool)

(assert (=> b!7889888 (= e!4657996 (and tp!2347454 tp!2347458))))

(declare-fun b!7889887 () Bool)

(declare-fun tp!2347455 () Bool)

(assert (=> b!7889887 (= e!4657996 tp!2347455)))

(declare-fun b!7889885 () Bool)

(assert (=> b!7889885 (= e!4657996 tp_is_empty!52821)))

(assert (= (and b!7889035 ((_ is ElementMatch!21211) (regTwo!42935 (regTwo!42934 (regTwo!42935 r!14100))))) b!7889885))

(assert (= (and b!7889035 ((_ is Concat!30056) (regTwo!42935 (regTwo!42934 (regTwo!42935 r!14100))))) b!7889886))

(assert (= (and b!7889035 ((_ is Star!21211) (regTwo!42935 (regTwo!42934 (regTwo!42935 r!14100))))) b!7889887))

(assert (= (and b!7889035 ((_ is Union!21211) (regTwo!42935 (regTwo!42934 (regTwo!42935 r!14100))))) b!7889888))

(declare-fun b!7889890 () Bool)

(declare-fun e!4657997 () Bool)

(declare-fun tp!2347462 () Bool)

(declare-fun tp!2347461 () Bool)

(assert (=> b!7889890 (= e!4657997 (and tp!2347462 tp!2347461))))

(assert (=> b!7889129 (= tp!2347066 e!4657997)))

(declare-fun b!7889892 () Bool)

(declare-fun tp!2347459 () Bool)

(declare-fun tp!2347463 () Bool)

(assert (=> b!7889892 (= e!4657997 (and tp!2347459 tp!2347463))))

(declare-fun b!7889891 () Bool)

(declare-fun tp!2347460 () Bool)

(assert (=> b!7889891 (= e!4657997 tp!2347460)))

(declare-fun b!7889889 () Bool)

(assert (=> b!7889889 (= e!4657997 tp_is_empty!52821)))

(assert (= (and b!7889129 ((_ is ElementMatch!21211) (reg!21540 (regTwo!42934 (regOne!42935 r!14100))))) b!7889889))

(assert (= (and b!7889129 ((_ is Concat!30056) (reg!21540 (regTwo!42934 (regOne!42935 r!14100))))) b!7889890))

(assert (= (and b!7889129 ((_ is Star!21211) (reg!21540 (regTwo!42934 (regOne!42935 r!14100))))) b!7889891))

(assert (= (and b!7889129 ((_ is Union!21211) (reg!21540 (regTwo!42934 (regOne!42935 r!14100))))) b!7889892))

(declare-fun b!7889894 () Bool)

(declare-fun e!4657998 () Bool)

(declare-fun tp!2347467 () Bool)

(declare-fun tp!2347466 () Bool)

(assert (=> b!7889894 (= e!4657998 (and tp!2347467 tp!2347466))))

(assert (=> b!7889042 (= tp!2346966 e!4657998)))

(declare-fun b!7889896 () Bool)

(declare-fun tp!2347464 () Bool)

(declare-fun tp!2347468 () Bool)

(assert (=> b!7889896 (= e!4657998 (and tp!2347464 tp!2347468))))

(declare-fun b!7889895 () Bool)

(declare-fun tp!2347465 () Bool)

(assert (=> b!7889895 (= e!4657998 tp!2347465)))

(declare-fun b!7889893 () Bool)

(assert (=> b!7889893 (= e!4657998 tp_is_empty!52821)))

(assert (= (and b!7889042 ((_ is ElementMatch!21211) (regOne!42934 (regTwo!42935 (reg!21540 r!14100))))) b!7889893))

(assert (= (and b!7889042 ((_ is Concat!30056) (regOne!42934 (regTwo!42935 (reg!21540 r!14100))))) b!7889894))

(assert (= (and b!7889042 ((_ is Star!21211) (regOne!42934 (regTwo!42935 (reg!21540 r!14100))))) b!7889895))

(assert (= (and b!7889042 ((_ is Union!21211) (regOne!42934 (regTwo!42935 (reg!21540 r!14100))))) b!7889896))

(declare-fun b!7889898 () Bool)

(declare-fun e!4657999 () Bool)

(declare-fun tp!2347472 () Bool)

(declare-fun tp!2347471 () Bool)

(assert (=> b!7889898 (= e!4657999 (and tp!2347472 tp!2347471))))

(assert (=> b!7889042 (= tp!2346965 e!4657999)))

(declare-fun b!7889900 () Bool)

(declare-fun tp!2347469 () Bool)

(declare-fun tp!2347473 () Bool)

(assert (=> b!7889900 (= e!4657999 (and tp!2347469 tp!2347473))))

(declare-fun b!7889899 () Bool)

(declare-fun tp!2347470 () Bool)

(assert (=> b!7889899 (= e!4657999 tp!2347470)))

(declare-fun b!7889897 () Bool)

(assert (=> b!7889897 (= e!4657999 tp_is_empty!52821)))

(assert (= (and b!7889042 ((_ is ElementMatch!21211) (regTwo!42934 (regTwo!42935 (reg!21540 r!14100))))) b!7889897))

(assert (= (and b!7889042 ((_ is Concat!30056) (regTwo!42934 (regTwo!42935 (reg!21540 r!14100))))) b!7889898))

(assert (= (and b!7889042 ((_ is Star!21211) (regTwo!42934 (regTwo!42935 (reg!21540 r!14100))))) b!7889899))

(assert (= (and b!7889042 ((_ is Union!21211) (regTwo!42934 (regTwo!42935 (reg!21540 r!14100))))) b!7889900))

(declare-fun b!7889902 () Bool)

(declare-fun e!4658000 () Bool)

(declare-fun tp!2347477 () Bool)

(declare-fun tp!2347476 () Bool)

(assert (=> b!7889902 (= e!4658000 (and tp!2347477 tp!2347476))))

(assert (=> b!7889033 (= tp!2346955 e!4658000)))

(declare-fun b!7889904 () Bool)

(declare-fun tp!2347474 () Bool)

(declare-fun tp!2347478 () Bool)

(assert (=> b!7889904 (= e!4658000 (and tp!2347474 tp!2347478))))

(declare-fun b!7889903 () Bool)

(declare-fun tp!2347475 () Bool)

(assert (=> b!7889903 (= e!4658000 tp!2347475)))

(declare-fun b!7889901 () Bool)

(assert (=> b!7889901 (= e!4658000 tp_is_empty!52821)))

(assert (= (and b!7889033 ((_ is ElementMatch!21211) (regOne!42934 (regTwo!42934 (regTwo!42935 r!14100))))) b!7889901))

(assert (= (and b!7889033 ((_ is Concat!30056) (regOne!42934 (regTwo!42934 (regTwo!42935 r!14100))))) b!7889902))

(assert (= (and b!7889033 ((_ is Star!21211) (regOne!42934 (regTwo!42934 (regTwo!42935 r!14100))))) b!7889903))

(assert (= (and b!7889033 ((_ is Union!21211) (regOne!42934 (regTwo!42934 (regTwo!42935 r!14100))))) b!7889904))

(declare-fun b!7889906 () Bool)

(declare-fun e!4658001 () Bool)

(declare-fun tp!2347482 () Bool)

(declare-fun tp!2347481 () Bool)

(assert (=> b!7889906 (= e!4658001 (and tp!2347482 tp!2347481))))

(assert (=> b!7889033 (= tp!2346954 e!4658001)))

(declare-fun b!7889908 () Bool)

(declare-fun tp!2347479 () Bool)

(declare-fun tp!2347483 () Bool)

(assert (=> b!7889908 (= e!4658001 (and tp!2347479 tp!2347483))))

(declare-fun b!7889907 () Bool)

(declare-fun tp!2347480 () Bool)

(assert (=> b!7889907 (= e!4658001 tp!2347480)))

(declare-fun b!7889905 () Bool)

(assert (=> b!7889905 (= e!4658001 tp_is_empty!52821)))

(assert (= (and b!7889033 ((_ is ElementMatch!21211) (regTwo!42934 (regTwo!42934 (regTwo!42935 r!14100))))) b!7889905))

(assert (= (and b!7889033 ((_ is Concat!30056) (regTwo!42934 (regTwo!42934 (regTwo!42935 r!14100))))) b!7889906))

(assert (= (and b!7889033 ((_ is Star!21211) (regTwo!42934 (regTwo!42934 (regTwo!42935 r!14100))))) b!7889907))

(assert (= (and b!7889033 ((_ is Union!21211) (regTwo!42934 (regTwo!42934 (regTwo!42935 r!14100))))) b!7889908))

(declare-fun b!7889910 () Bool)

(declare-fun e!4658002 () Bool)

(declare-fun tp!2347487 () Bool)

(declare-fun tp!2347486 () Bool)

(assert (=> b!7889910 (= e!4658002 (and tp!2347487 tp!2347486))))

(assert (=> b!7889113 (= tp!2347051 e!4658002)))

(declare-fun b!7889912 () Bool)

(declare-fun tp!2347484 () Bool)

(declare-fun tp!2347488 () Bool)

(assert (=> b!7889912 (= e!4658002 (and tp!2347484 tp!2347488))))

(declare-fun b!7889911 () Bool)

(declare-fun tp!2347485 () Bool)

(assert (=> b!7889911 (= e!4658002 tp!2347485)))

(declare-fun b!7889909 () Bool)

(assert (=> b!7889909 (= e!4658002 tp_is_empty!52821)))

(assert (= (and b!7889113 ((_ is ElementMatch!21211) (reg!21540 (regTwo!42935 (regTwo!42935 r!14100))))) b!7889909))

(assert (= (and b!7889113 ((_ is Concat!30056) (reg!21540 (regTwo!42935 (regTwo!42935 r!14100))))) b!7889910))

(assert (= (and b!7889113 ((_ is Star!21211) (reg!21540 (regTwo!42935 (regTwo!42935 r!14100))))) b!7889911))

(assert (= (and b!7889113 ((_ is Union!21211) (reg!21540 (regTwo!42935 (regTwo!42935 r!14100))))) b!7889912))

(declare-fun b!7889914 () Bool)

(declare-fun e!4658003 () Bool)

(declare-fun tp!2347492 () Bool)

(declare-fun tp!2347491 () Bool)

(assert (=> b!7889914 (= e!4658003 (and tp!2347492 tp!2347491))))

(assert (=> b!7889053 (= tp!2346974 e!4658003)))

(declare-fun b!7889916 () Bool)

(declare-fun tp!2347489 () Bool)

(declare-fun tp!2347493 () Bool)

(assert (=> b!7889916 (= e!4658003 (and tp!2347489 tp!2347493))))

(declare-fun b!7889915 () Bool)

(declare-fun tp!2347490 () Bool)

(assert (=> b!7889915 (= e!4658003 tp!2347490)))

(declare-fun b!7889913 () Bool)

(assert (=> b!7889913 (= e!4658003 tp_is_empty!52821)))

(assert (= (and b!7889053 ((_ is ElementMatch!21211) (regOne!42935 (regOne!42935 (regOne!42934 r!14100))))) b!7889913))

(assert (= (and b!7889053 ((_ is Concat!30056) (regOne!42935 (regOne!42935 (regOne!42934 r!14100))))) b!7889914))

(assert (= (and b!7889053 ((_ is Star!21211) (regOne!42935 (regOne!42935 (regOne!42934 r!14100))))) b!7889915))

(assert (= (and b!7889053 ((_ is Union!21211) (regOne!42935 (regOne!42935 (regOne!42934 r!14100))))) b!7889916))

(declare-fun b!7889918 () Bool)

(declare-fun e!4658004 () Bool)

(declare-fun tp!2347497 () Bool)

(declare-fun tp!2347496 () Bool)

(assert (=> b!7889918 (= e!4658004 (and tp!2347497 tp!2347496))))

(assert (=> b!7889053 (= tp!2346978 e!4658004)))

(declare-fun b!7889920 () Bool)

(declare-fun tp!2347494 () Bool)

(declare-fun tp!2347498 () Bool)

(assert (=> b!7889920 (= e!4658004 (and tp!2347494 tp!2347498))))

(declare-fun b!7889919 () Bool)

(declare-fun tp!2347495 () Bool)

(assert (=> b!7889919 (= e!4658004 tp!2347495)))

(declare-fun b!7889917 () Bool)

(assert (=> b!7889917 (= e!4658004 tp_is_empty!52821)))

(assert (= (and b!7889053 ((_ is ElementMatch!21211) (regTwo!42935 (regOne!42935 (regOne!42934 r!14100))))) b!7889917))

(assert (= (and b!7889053 ((_ is Concat!30056) (regTwo!42935 (regOne!42935 (regOne!42934 r!14100))))) b!7889918))

(assert (= (and b!7889053 ((_ is Star!21211) (regTwo!42935 (regOne!42935 (regOne!42934 r!14100))))) b!7889919))

(assert (= (and b!7889053 ((_ is Union!21211) (regTwo!42935 (regOne!42935 (regOne!42934 r!14100))))) b!7889920))

(declare-fun b!7889922 () Bool)

(declare-fun e!4658005 () Bool)

(declare-fun tp!2347502 () Bool)

(declare-fun tp!2347501 () Bool)

(assert (=> b!7889922 (= e!4658005 (and tp!2347502 tp!2347501))))

(assert (=> b!7889102 (= tp!2347035 e!4658005)))

(declare-fun b!7889924 () Bool)

(declare-fun tp!2347499 () Bool)

(declare-fun tp!2347503 () Bool)

(assert (=> b!7889924 (= e!4658005 (and tp!2347499 tp!2347503))))

(declare-fun b!7889923 () Bool)

(declare-fun tp!2347500 () Bool)

(assert (=> b!7889923 (= e!4658005 tp!2347500)))

(declare-fun b!7889921 () Bool)

(assert (=> b!7889921 (= e!4658005 tp_is_empty!52821)))

(assert (= (and b!7889102 ((_ is ElementMatch!21211) (regOne!42935 (regOne!42935 (regOne!42935 r!14100))))) b!7889921))

(assert (= (and b!7889102 ((_ is Concat!30056) (regOne!42935 (regOne!42935 (regOne!42935 r!14100))))) b!7889922))

(assert (= (and b!7889102 ((_ is Star!21211) (regOne!42935 (regOne!42935 (regOne!42935 r!14100))))) b!7889923))

(assert (= (and b!7889102 ((_ is Union!21211) (regOne!42935 (regOne!42935 (regOne!42935 r!14100))))) b!7889924))

(declare-fun b!7889926 () Bool)

(declare-fun e!4658006 () Bool)

(declare-fun tp!2347507 () Bool)

(declare-fun tp!2347506 () Bool)

(assert (=> b!7889926 (= e!4658006 (and tp!2347507 tp!2347506))))

(assert (=> b!7889102 (= tp!2347039 e!4658006)))

(declare-fun b!7889928 () Bool)

(declare-fun tp!2347504 () Bool)

(declare-fun tp!2347508 () Bool)

(assert (=> b!7889928 (= e!4658006 (and tp!2347504 tp!2347508))))

(declare-fun b!7889927 () Bool)

(declare-fun tp!2347505 () Bool)

(assert (=> b!7889927 (= e!4658006 tp!2347505)))

(declare-fun b!7889925 () Bool)

(assert (=> b!7889925 (= e!4658006 tp_is_empty!52821)))

(assert (= (and b!7889102 ((_ is ElementMatch!21211) (regTwo!42935 (regOne!42935 (regOne!42935 r!14100))))) b!7889925))

(assert (= (and b!7889102 ((_ is Concat!30056) (regTwo!42935 (regOne!42935 (regOne!42935 r!14100))))) b!7889926))

(assert (= (and b!7889102 ((_ is Star!21211) (regTwo!42935 (regOne!42935 (regOne!42935 r!14100))))) b!7889927))

(assert (= (and b!7889102 ((_ is Union!21211) (regTwo!42935 (regOne!42935 (regOne!42935 r!14100))))) b!7889928))

(declare-fun b!7889930 () Bool)

(declare-fun e!4658007 () Bool)

(declare-fun tp!2347512 () Bool)

(declare-fun tp!2347511 () Bool)

(assert (=> b!7889930 (= e!4658007 (and tp!2347512 tp!2347511))))

(assert (=> b!7889077 (= tp!2347004 e!4658007)))

(declare-fun b!7889932 () Bool)

(declare-fun tp!2347509 () Bool)

(declare-fun tp!2347513 () Bool)

(assert (=> b!7889932 (= e!4658007 (and tp!2347509 tp!2347513))))

(declare-fun b!7889931 () Bool)

(declare-fun tp!2347510 () Bool)

(assert (=> b!7889931 (= e!4658007 tp!2347510)))

(declare-fun b!7889929 () Bool)

(assert (=> b!7889929 (= e!4658007 tp_is_empty!52821)))

(assert (= (and b!7889077 ((_ is ElementMatch!21211) (regOne!42935 (reg!21540 (regOne!42934 r!14100))))) b!7889929))

(assert (= (and b!7889077 ((_ is Concat!30056) (regOne!42935 (reg!21540 (regOne!42934 r!14100))))) b!7889930))

(assert (= (and b!7889077 ((_ is Star!21211) (regOne!42935 (reg!21540 (regOne!42934 r!14100))))) b!7889931))

(assert (= (and b!7889077 ((_ is Union!21211) (regOne!42935 (reg!21540 (regOne!42934 r!14100))))) b!7889932))

(declare-fun b!7889934 () Bool)

(declare-fun e!4658008 () Bool)

(declare-fun tp!2347517 () Bool)

(declare-fun tp!2347516 () Bool)

(assert (=> b!7889934 (= e!4658008 (and tp!2347517 tp!2347516))))

(assert (=> b!7889077 (= tp!2347008 e!4658008)))

(declare-fun b!7889936 () Bool)

(declare-fun tp!2347514 () Bool)

(declare-fun tp!2347518 () Bool)

(assert (=> b!7889936 (= e!4658008 (and tp!2347514 tp!2347518))))

(declare-fun b!7889935 () Bool)

(declare-fun tp!2347515 () Bool)

(assert (=> b!7889935 (= e!4658008 tp!2347515)))

(declare-fun b!7889933 () Bool)

(assert (=> b!7889933 (= e!4658008 tp_is_empty!52821)))

(assert (= (and b!7889077 ((_ is ElementMatch!21211) (regTwo!42935 (reg!21540 (regOne!42934 r!14100))))) b!7889933))

(assert (= (and b!7889077 ((_ is Concat!30056) (regTwo!42935 (reg!21540 (regOne!42934 r!14100))))) b!7889934))

(assert (= (and b!7889077 ((_ is Star!21211) (regTwo!42935 (reg!21540 (regOne!42934 r!14100))))) b!7889935))

(assert (= (and b!7889077 ((_ is Union!21211) (regTwo!42935 (reg!21540 (regOne!42934 r!14100))))) b!7889936))

(declare-fun b!7889938 () Bool)

(declare-fun e!4658009 () Bool)

(declare-fun tp!2347522 () Bool)

(declare-fun tp!2347521 () Bool)

(assert (=> b!7889938 (= e!4658009 (and tp!2347522 tp!2347521))))

(assert (=> b!7889124 (= tp!2347060 e!4658009)))

(declare-fun b!7889940 () Bool)

(declare-fun tp!2347519 () Bool)

(declare-fun tp!2347523 () Bool)

(assert (=> b!7889940 (= e!4658009 (and tp!2347519 tp!2347523))))

(declare-fun b!7889939 () Bool)

(declare-fun tp!2347520 () Bool)

(assert (=> b!7889939 (= e!4658009 tp!2347520)))

(declare-fun b!7889937 () Bool)

(assert (=> b!7889937 (= e!4658009 tp_is_empty!52821)))

(assert (= (and b!7889124 ((_ is ElementMatch!21211) (regOne!42935 (regOne!42934 (regOne!42935 r!14100))))) b!7889937))

(assert (= (and b!7889124 ((_ is Concat!30056) (regOne!42935 (regOne!42934 (regOne!42935 r!14100))))) b!7889938))

(assert (= (and b!7889124 ((_ is Star!21211) (regOne!42935 (regOne!42934 (regOne!42935 r!14100))))) b!7889939))

(assert (= (and b!7889124 ((_ is Union!21211) (regOne!42935 (regOne!42934 (regOne!42935 r!14100))))) b!7889940))

(declare-fun b!7889942 () Bool)

(declare-fun e!4658010 () Bool)

(declare-fun tp!2347527 () Bool)

(declare-fun tp!2347526 () Bool)

(assert (=> b!7889942 (= e!4658010 (and tp!2347527 tp!2347526))))

(assert (=> b!7889124 (= tp!2347064 e!4658010)))

(declare-fun b!7889944 () Bool)

(declare-fun tp!2347524 () Bool)

(declare-fun tp!2347528 () Bool)

(assert (=> b!7889944 (= e!4658010 (and tp!2347524 tp!2347528))))

(declare-fun b!7889943 () Bool)

(declare-fun tp!2347525 () Bool)

(assert (=> b!7889943 (= e!4658010 tp!2347525)))

(declare-fun b!7889941 () Bool)

(assert (=> b!7889941 (= e!4658010 tp_is_empty!52821)))

(assert (= (and b!7889124 ((_ is ElementMatch!21211) (regTwo!42935 (regOne!42934 (regOne!42935 r!14100))))) b!7889941))

(assert (= (and b!7889124 ((_ is Concat!30056) (regTwo!42935 (regOne!42934 (regOne!42935 r!14100))))) b!7889942))

(assert (= (and b!7889124 ((_ is Star!21211) (regTwo!42935 (regOne!42934 (regOne!42935 r!14100))))) b!7889943))

(assert (= (and b!7889124 ((_ is Union!21211) (regTwo!42935 (regOne!42934 (regOne!42935 r!14100))))) b!7889944))

(declare-fun b!7889945 () Bool)

(declare-fun e!4658011 () Bool)

(declare-fun tp!2347529 () Bool)

(assert (=> b!7889945 (= e!4658011 (and tp_is_empty!52821 tp!2347529))))

(assert (=> b!7889036 (= tp!2346957 e!4658011)))

(assert (= (and b!7889036 ((_ is Cons!73944) (t!388803 (t!388803 (t!388803 (_1!38333 cut!2)))))) b!7889945))

(declare-fun b!7889947 () Bool)

(declare-fun e!4658012 () Bool)

(declare-fun tp!2347533 () Bool)

(declare-fun tp!2347532 () Bool)

(assert (=> b!7889947 (= e!4658012 (and tp!2347533 tp!2347532))))

(assert (=> b!7889084 (= tp!2347015 e!4658012)))

(declare-fun b!7889949 () Bool)

(declare-fun tp!2347530 () Bool)

(declare-fun tp!2347534 () Bool)

(assert (=> b!7889949 (= e!4658012 (and tp!2347530 tp!2347534))))

(declare-fun b!7889948 () Bool)

(declare-fun tp!2347531 () Bool)

(assert (=> b!7889948 (= e!4658012 tp!2347531)))

(declare-fun b!7889946 () Bool)

(assert (=> b!7889946 (= e!4658012 tp_is_empty!52821)))

(assert (= (and b!7889084 ((_ is ElementMatch!21211) (reg!21540 (regTwo!42934 (regOne!42934 r!14100))))) b!7889946))

(assert (= (and b!7889084 ((_ is Concat!30056) (reg!21540 (regTwo!42934 (regOne!42934 r!14100))))) b!7889947))

(assert (= (and b!7889084 ((_ is Star!21211) (reg!21540 (regTwo!42934 (regOne!42934 r!14100))))) b!7889948))

(assert (= (and b!7889084 ((_ is Union!21211) (reg!21540 (regTwo!42934 (regOne!42934 r!14100))))) b!7889949))

(declare-fun b!7889951 () Bool)

(declare-fun e!4658013 () Bool)

(declare-fun tp!2347538 () Bool)

(declare-fun tp!2347537 () Bool)

(assert (=> b!7889951 (= e!4658013 (and tp!2347538 tp!2347537))))

(assert (=> b!7889061 (= tp!2346984 e!4658013)))

(declare-fun b!7889953 () Bool)

(declare-fun tp!2347535 () Bool)

(declare-fun tp!2347539 () Bool)

(assert (=> b!7889953 (= e!4658013 (and tp!2347535 tp!2347539))))

(declare-fun b!7889952 () Bool)

(declare-fun tp!2347536 () Bool)

(assert (=> b!7889952 (= e!4658013 tp!2347536)))

(declare-fun b!7889950 () Bool)

(assert (=> b!7889950 (= e!4658013 tp_is_empty!52821)))

(assert (= (and b!7889061 ((_ is ElementMatch!21211) (regOne!42935 (regOne!42935 (regTwo!42934 r!14100))))) b!7889950))

(assert (= (and b!7889061 ((_ is Concat!30056) (regOne!42935 (regOne!42935 (regTwo!42934 r!14100))))) b!7889951))

(assert (= (and b!7889061 ((_ is Star!21211) (regOne!42935 (regOne!42935 (regTwo!42934 r!14100))))) b!7889952))

(assert (= (and b!7889061 ((_ is Union!21211) (regOne!42935 (regOne!42935 (regTwo!42934 r!14100))))) b!7889953))

(declare-fun b!7889955 () Bool)

(declare-fun e!4658014 () Bool)

(declare-fun tp!2347543 () Bool)

(declare-fun tp!2347542 () Bool)

(assert (=> b!7889955 (= e!4658014 (and tp!2347543 tp!2347542))))

(assert (=> b!7889061 (= tp!2346988 e!4658014)))

(declare-fun b!7889957 () Bool)

(declare-fun tp!2347540 () Bool)

(declare-fun tp!2347544 () Bool)

(assert (=> b!7889957 (= e!4658014 (and tp!2347540 tp!2347544))))

(declare-fun b!7889956 () Bool)

(declare-fun tp!2347541 () Bool)

(assert (=> b!7889956 (= e!4658014 tp!2347541)))

(declare-fun b!7889954 () Bool)

(assert (=> b!7889954 (= e!4658014 tp_is_empty!52821)))

(assert (= (and b!7889061 ((_ is ElementMatch!21211) (regTwo!42935 (regOne!42935 (regTwo!42934 r!14100))))) b!7889954))

(assert (= (and b!7889061 ((_ is Concat!30056) (regTwo!42935 (regOne!42935 (regTwo!42934 r!14100))))) b!7889955))

(assert (= (and b!7889061 ((_ is Star!21211) (regTwo!42935 (regOne!42935 (regTwo!42934 r!14100))))) b!7889956))

(assert (= (and b!7889061 ((_ is Union!21211) (regTwo!42935 (regOne!42935 (regTwo!42934 r!14100))))) b!7889957))

(declare-fun b!7889959 () Bool)

(declare-fun e!4658015 () Bool)

(declare-fun tp!2347548 () Bool)

(declare-fun tp!2347547 () Bool)

(assert (=> b!7889959 (= e!4658015 (and tp!2347548 tp!2347547))))

(assert (=> b!7889069 (= tp!2346994 e!4658015)))

(declare-fun b!7889961 () Bool)

(declare-fun tp!2347545 () Bool)

(declare-fun tp!2347549 () Bool)

(assert (=> b!7889961 (= e!4658015 (and tp!2347545 tp!2347549))))

(declare-fun b!7889960 () Bool)

(declare-fun tp!2347546 () Bool)

(assert (=> b!7889960 (= e!4658015 tp!2347546)))

(declare-fun b!7889958 () Bool)

(assert (=> b!7889958 (= e!4658015 tp_is_empty!52821)))

(assert (= (and b!7889069 ((_ is ElementMatch!21211) (regOne!42935 (regOne!42934 (reg!21540 r!14100))))) b!7889958))

(assert (= (and b!7889069 ((_ is Concat!30056) (regOne!42935 (regOne!42934 (reg!21540 r!14100))))) b!7889959))

(assert (= (and b!7889069 ((_ is Star!21211) (regOne!42935 (regOne!42934 (reg!21540 r!14100))))) b!7889960))

(assert (= (and b!7889069 ((_ is Union!21211) (regOne!42935 (regOne!42934 (reg!21540 r!14100))))) b!7889961))

(declare-fun b!7889963 () Bool)

(declare-fun e!4658016 () Bool)

(declare-fun tp!2347553 () Bool)

(declare-fun tp!2347552 () Bool)

(assert (=> b!7889963 (= e!4658016 (and tp!2347553 tp!2347552))))

(assert (=> b!7889069 (= tp!2346998 e!4658016)))

(declare-fun b!7889965 () Bool)

(declare-fun tp!2347550 () Bool)

(declare-fun tp!2347554 () Bool)

(assert (=> b!7889965 (= e!4658016 (and tp!2347550 tp!2347554))))

(declare-fun b!7889964 () Bool)

(declare-fun tp!2347551 () Bool)

(assert (=> b!7889964 (= e!4658016 tp!2347551)))

(declare-fun b!7889962 () Bool)

(assert (=> b!7889962 (= e!4658016 tp_is_empty!52821)))

(assert (= (and b!7889069 ((_ is ElementMatch!21211) (regTwo!42935 (regOne!42934 (reg!21540 r!14100))))) b!7889962))

(assert (= (and b!7889069 ((_ is Concat!30056) (regTwo!42935 (regOne!42934 (reg!21540 r!14100))))) b!7889963))

(assert (= (and b!7889069 ((_ is Star!21211) (regTwo!42935 (regOne!42934 (reg!21540 r!14100))))) b!7889964))

(assert (= (and b!7889069 ((_ is Union!21211) (regTwo!42935 (regOne!42934 (reg!21540 r!14100))))) b!7889965))

(declare-fun b!7889967 () Bool)

(declare-fun e!4658017 () Bool)

(declare-fun tp!2347558 () Bool)

(declare-fun tp!2347557 () Bool)

(assert (=> b!7889967 (= e!4658017 (and tp!2347558 tp!2347557))))

(assert (=> b!7889059 (= tp!2346987 e!4658017)))

(declare-fun b!7889969 () Bool)

(declare-fun tp!2347555 () Bool)

(declare-fun tp!2347559 () Bool)

(assert (=> b!7889969 (= e!4658017 (and tp!2347555 tp!2347559))))

(declare-fun b!7889968 () Bool)

(declare-fun tp!2347556 () Bool)

(assert (=> b!7889968 (= e!4658017 tp!2347556)))

(declare-fun b!7889966 () Bool)

(assert (=> b!7889966 (= e!4658017 tp_is_empty!52821)))

(assert (= (and b!7889059 ((_ is ElementMatch!21211) (regOne!42934 (regOne!42935 (regTwo!42934 r!14100))))) b!7889966))

(assert (= (and b!7889059 ((_ is Concat!30056) (regOne!42934 (regOne!42935 (regTwo!42934 r!14100))))) b!7889967))

(assert (= (and b!7889059 ((_ is Star!21211) (regOne!42934 (regOne!42935 (regTwo!42934 r!14100))))) b!7889968))

(assert (= (and b!7889059 ((_ is Union!21211) (regOne!42934 (regOne!42935 (regTwo!42934 r!14100))))) b!7889969))

(declare-fun b!7889971 () Bool)

(declare-fun e!4658018 () Bool)

(declare-fun tp!2347563 () Bool)

(declare-fun tp!2347562 () Bool)

(assert (=> b!7889971 (= e!4658018 (and tp!2347563 tp!2347562))))

(assert (=> b!7889059 (= tp!2346986 e!4658018)))

(declare-fun b!7889973 () Bool)

(declare-fun tp!2347560 () Bool)

(declare-fun tp!2347564 () Bool)

(assert (=> b!7889973 (= e!4658018 (and tp!2347560 tp!2347564))))

(declare-fun b!7889972 () Bool)

(declare-fun tp!2347561 () Bool)

(assert (=> b!7889972 (= e!4658018 tp!2347561)))

(declare-fun b!7889970 () Bool)

(assert (=> b!7889970 (= e!4658018 tp_is_empty!52821)))

(assert (= (and b!7889059 ((_ is ElementMatch!21211) (regTwo!42934 (regOne!42935 (regTwo!42934 r!14100))))) b!7889970))

(assert (= (and b!7889059 ((_ is Concat!30056) (regTwo!42934 (regOne!42935 (regTwo!42934 r!14100))))) b!7889971))

(assert (= (and b!7889059 ((_ is Star!21211) (regTwo!42934 (regOne!42935 (regTwo!42934 r!14100))))) b!7889972))

(assert (= (and b!7889059 ((_ is Union!21211) (regTwo!42934 (regOne!42935 (regTwo!42934 r!14100))))) b!7889973))

(declare-fun b!7889975 () Bool)

(declare-fun e!4658019 () Bool)

(declare-fun tp!2347568 () Bool)

(declare-fun tp!2347567 () Bool)

(assert (=> b!7889975 (= e!4658019 (and tp!2347568 tp!2347567))))

(assert (=> b!7889067 (= tp!2346997 e!4658019)))

(declare-fun b!7889977 () Bool)

(declare-fun tp!2347565 () Bool)

(declare-fun tp!2347569 () Bool)

(assert (=> b!7889977 (= e!4658019 (and tp!2347565 tp!2347569))))

(declare-fun b!7889976 () Bool)

(declare-fun tp!2347566 () Bool)

(assert (=> b!7889976 (= e!4658019 tp!2347566)))

(declare-fun b!7889974 () Bool)

(assert (=> b!7889974 (= e!4658019 tp_is_empty!52821)))

(assert (= (and b!7889067 ((_ is ElementMatch!21211) (regOne!42934 (regOne!42934 (reg!21540 r!14100))))) b!7889974))

(assert (= (and b!7889067 ((_ is Concat!30056) (regOne!42934 (regOne!42934 (reg!21540 r!14100))))) b!7889975))

(assert (= (and b!7889067 ((_ is Star!21211) (regOne!42934 (regOne!42934 (reg!21540 r!14100))))) b!7889976))

(assert (= (and b!7889067 ((_ is Union!21211) (regOne!42934 (regOne!42934 (reg!21540 r!14100))))) b!7889977))

(declare-fun b!7889979 () Bool)

(declare-fun e!4658020 () Bool)

(declare-fun tp!2347573 () Bool)

(declare-fun tp!2347572 () Bool)

(assert (=> b!7889979 (= e!4658020 (and tp!2347573 tp!2347572))))

(assert (=> b!7889067 (= tp!2346996 e!4658020)))

(declare-fun b!7889981 () Bool)

(declare-fun tp!2347570 () Bool)

(declare-fun tp!2347574 () Bool)

(assert (=> b!7889981 (= e!4658020 (and tp!2347570 tp!2347574))))

(declare-fun b!7889980 () Bool)

(declare-fun tp!2347571 () Bool)

(assert (=> b!7889980 (= e!4658020 tp!2347571)))

(declare-fun b!7889978 () Bool)

(assert (=> b!7889978 (= e!4658020 tp_is_empty!52821)))

(assert (= (and b!7889067 ((_ is ElementMatch!21211) (regTwo!42934 (regOne!42934 (reg!21540 r!14100))))) b!7889978))

(assert (= (and b!7889067 ((_ is Concat!30056) (regTwo!42934 (regOne!42934 (reg!21540 r!14100))))) b!7889979))

(assert (= (and b!7889067 ((_ is Star!21211) (regTwo!42934 (regOne!42934 (reg!21540 r!14100))))) b!7889980))

(assert (= (and b!7889067 ((_ is Union!21211) (regTwo!42934 (regOne!42934 (reg!21540 r!14100))))) b!7889981))

(declare-fun b!7889983 () Bool)

(declare-fun e!4658021 () Bool)

(declare-fun tp!2347578 () Bool)

(declare-fun tp!2347577 () Bool)

(assert (=> b!7889983 (= e!4658021 (and tp!2347578 tp!2347577))))

(assert (=> b!7889093 (= tp!2347024 e!4658021)))

(declare-fun b!7889985 () Bool)

(declare-fun tp!2347575 () Bool)

(declare-fun tp!2347579 () Bool)

(assert (=> b!7889985 (= e!4658021 (and tp!2347575 tp!2347579))))

(declare-fun b!7889984 () Bool)

(declare-fun tp!2347576 () Bool)

(assert (=> b!7889984 (= e!4658021 tp!2347576)))

(declare-fun b!7889982 () Bool)

(assert (=> b!7889982 (= e!4658021 tp_is_empty!52821)))

(assert (= (and b!7889093 ((_ is ElementMatch!21211) (regOne!42935 (regOne!42934 (regTwo!42934 r!14100))))) b!7889982))

(assert (= (and b!7889093 ((_ is Concat!30056) (regOne!42935 (regOne!42934 (regTwo!42934 r!14100))))) b!7889983))

(assert (= (and b!7889093 ((_ is Star!21211) (regOne!42935 (regOne!42934 (regTwo!42934 r!14100))))) b!7889984))

(assert (= (and b!7889093 ((_ is Union!21211) (regOne!42935 (regOne!42934 (regTwo!42934 r!14100))))) b!7889985))

(declare-fun b!7889987 () Bool)

(declare-fun e!4658022 () Bool)

(declare-fun tp!2347583 () Bool)

(declare-fun tp!2347582 () Bool)

(assert (=> b!7889987 (= e!4658022 (and tp!2347583 tp!2347582))))

(assert (=> b!7889093 (= tp!2347028 e!4658022)))

(declare-fun b!7889989 () Bool)

(declare-fun tp!2347580 () Bool)

(declare-fun tp!2347584 () Bool)

(assert (=> b!7889989 (= e!4658022 (and tp!2347580 tp!2347584))))

(declare-fun b!7889988 () Bool)

(declare-fun tp!2347581 () Bool)

(assert (=> b!7889988 (= e!4658022 tp!2347581)))

(declare-fun b!7889986 () Bool)

(assert (=> b!7889986 (= e!4658022 tp_is_empty!52821)))

(assert (= (and b!7889093 ((_ is ElementMatch!21211) (regTwo!42935 (regOne!42934 (regTwo!42934 r!14100))))) b!7889986))

(assert (= (and b!7889093 ((_ is Concat!30056) (regTwo!42935 (regOne!42934 (regTwo!42934 r!14100))))) b!7889987))

(assert (= (and b!7889093 ((_ is Star!21211) (regTwo!42935 (regOne!42934 (regTwo!42934 r!14100))))) b!7889988))

(assert (= (and b!7889093 ((_ is Union!21211) (regTwo!42935 (regOne!42934 (regTwo!42934 r!14100))))) b!7889989))

(declare-fun b!7889991 () Bool)

(declare-fun e!4658023 () Bool)

(declare-fun tp!2347588 () Bool)

(declare-fun tp!2347587 () Bool)

(assert (=> b!7889991 (= e!4658023 (and tp!2347588 tp!2347587))))

(assert (=> b!7889051 (= tp!2346977 e!4658023)))

(declare-fun b!7889993 () Bool)

(declare-fun tp!2347585 () Bool)

(declare-fun tp!2347589 () Bool)

(assert (=> b!7889993 (= e!4658023 (and tp!2347585 tp!2347589))))

(declare-fun b!7889992 () Bool)

(declare-fun tp!2347586 () Bool)

(assert (=> b!7889992 (= e!4658023 tp!2347586)))

(declare-fun b!7889990 () Bool)

(assert (=> b!7889990 (= e!4658023 tp_is_empty!52821)))

(assert (= (and b!7889051 ((_ is ElementMatch!21211) (regOne!42934 (regOne!42935 (regOne!42934 r!14100))))) b!7889990))

(assert (= (and b!7889051 ((_ is Concat!30056) (regOne!42934 (regOne!42935 (regOne!42934 r!14100))))) b!7889991))

(assert (= (and b!7889051 ((_ is Star!21211) (regOne!42934 (regOne!42935 (regOne!42934 r!14100))))) b!7889992))

(assert (= (and b!7889051 ((_ is Union!21211) (regOne!42934 (regOne!42935 (regOne!42934 r!14100))))) b!7889993))

(declare-fun b!7889995 () Bool)

(declare-fun e!4658024 () Bool)

(declare-fun tp!2347593 () Bool)

(declare-fun tp!2347592 () Bool)

(assert (=> b!7889995 (= e!4658024 (and tp!2347593 tp!2347592))))

(assert (=> b!7889051 (= tp!2346976 e!4658024)))

(declare-fun b!7889997 () Bool)

(declare-fun tp!2347590 () Bool)

(declare-fun tp!2347594 () Bool)

(assert (=> b!7889997 (= e!4658024 (and tp!2347590 tp!2347594))))

(declare-fun b!7889996 () Bool)

(declare-fun tp!2347591 () Bool)

(assert (=> b!7889996 (= e!4658024 tp!2347591)))

(declare-fun b!7889994 () Bool)

(assert (=> b!7889994 (= e!4658024 tp_is_empty!52821)))

(assert (= (and b!7889051 ((_ is ElementMatch!21211) (regTwo!42934 (regOne!42935 (regOne!42934 r!14100))))) b!7889994))

(assert (= (and b!7889051 ((_ is Concat!30056) (regTwo!42934 (regOne!42935 (regOne!42934 r!14100))))) b!7889995))

(assert (= (and b!7889051 ((_ is Star!21211) (regTwo!42934 (regOne!42935 (regOne!42934 r!14100))))) b!7889996))

(assert (= (and b!7889051 ((_ is Union!21211) (regTwo!42934 (regOne!42935 (regOne!42934 r!14100))))) b!7889997))

(declare-fun b!7889999 () Bool)

(declare-fun e!4658025 () Bool)

(declare-fun tp!2347598 () Bool)

(declare-fun tp!2347597 () Bool)

(assert (=> b!7889999 (= e!4658025 (and tp!2347598 tp!2347597))))

(assert (=> b!7889100 (= tp!2347038 e!4658025)))

(declare-fun b!7890001 () Bool)

(declare-fun tp!2347595 () Bool)

(declare-fun tp!2347599 () Bool)

(assert (=> b!7890001 (= e!4658025 (and tp!2347595 tp!2347599))))

(declare-fun b!7890000 () Bool)

(declare-fun tp!2347596 () Bool)

(assert (=> b!7890000 (= e!4658025 tp!2347596)))

(declare-fun b!7889998 () Bool)

(assert (=> b!7889998 (= e!4658025 tp_is_empty!52821)))

(assert (= (and b!7889100 ((_ is ElementMatch!21211) (regOne!42934 (regOne!42935 (regOne!42935 r!14100))))) b!7889998))

(assert (= (and b!7889100 ((_ is Concat!30056) (regOne!42934 (regOne!42935 (regOne!42935 r!14100))))) b!7889999))

(assert (= (and b!7889100 ((_ is Star!21211) (regOne!42934 (regOne!42935 (regOne!42935 r!14100))))) b!7890000))

(assert (= (and b!7889100 ((_ is Union!21211) (regOne!42934 (regOne!42935 (regOne!42935 r!14100))))) b!7890001))

(declare-fun b!7890003 () Bool)

(declare-fun e!4658026 () Bool)

(declare-fun tp!2347603 () Bool)

(declare-fun tp!2347602 () Bool)

(assert (=> b!7890003 (= e!4658026 (and tp!2347603 tp!2347602))))

(assert (=> b!7889100 (= tp!2347037 e!4658026)))

(declare-fun b!7890005 () Bool)

(declare-fun tp!2347600 () Bool)

(declare-fun tp!2347604 () Bool)

(assert (=> b!7890005 (= e!4658026 (and tp!2347600 tp!2347604))))

(declare-fun b!7890004 () Bool)

(declare-fun tp!2347601 () Bool)

(assert (=> b!7890004 (= e!4658026 tp!2347601)))

(declare-fun b!7890002 () Bool)

(assert (=> b!7890002 (= e!4658026 tp_is_empty!52821)))

(assert (= (and b!7889100 ((_ is ElementMatch!21211) (regTwo!42934 (regOne!42935 (regOne!42935 r!14100))))) b!7890002))

(assert (= (and b!7889100 ((_ is Concat!30056) (regTwo!42934 (regOne!42935 (regOne!42935 r!14100))))) b!7890003))

(assert (= (and b!7889100 ((_ is Star!21211) (regTwo!42934 (regOne!42935 (regOne!42935 r!14100))))) b!7890004))

(assert (= (and b!7889100 ((_ is Union!21211) (regTwo!42934 (regOne!42935 (regOne!42935 r!14100))))) b!7890005))

(declare-fun b!7890007 () Bool)

(declare-fun e!4658027 () Bool)

(declare-fun tp!2347608 () Bool)

(declare-fun tp!2347607 () Bool)

(assert (=> b!7890007 (= e!4658027 (and tp!2347608 tp!2347607))))

(assert (=> b!7889043 (= tp!2346964 e!4658027)))

(declare-fun b!7890009 () Bool)

(declare-fun tp!2347605 () Bool)

(declare-fun tp!2347609 () Bool)

(assert (=> b!7890009 (= e!4658027 (and tp!2347605 tp!2347609))))

(declare-fun b!7890008 () Bool)

(declare-fun tp!2347606 () Bool)

(assert (=> b!7890008 (= e!4658027 tp!2347606)))

(declare-fun b!7890006 () Bool)

(assert (=> b!7890006 (= e!4658027 tp_is_empty!52821)))

(assert (= (and b!7889043 ((_ is ElementMatch!21211) (reg!21540 (regTwo!42935 (reg!21540 r!14100))))) b!7890006))

(assert (= (and b!7889043 ((_ is Concat!30056) (reg!21540 (regTwo!42935 (reg!21540 r!14100))))) b!7890007))

(assert (= (and b!7889043 ((_ is Star!21211) (reg!21540 (regTwo!42935 (reg!21540 r!14100))))) b!7890008))

(assert (= (and b!7889043 ((_ is Union!21211) (reg!21540 (regTwo!42935 (reg!21540 r!14100))))) b!7890009))

(declare-fun b!7890011 () Bool)

(declare-fun e!4658028 () Bool)

(declare-fun tp!2347613 () Bool)

(declare-fun tp!2347612 () Bool)

(assert (=> b!7890011 (= e!4658028 (and tp!2347613 tp!2347612))))

(assert (=> b!7889091 (= tp!2347027 e!4658028)))

(declare-fun b!7890013 () Bool)

(declare-fun tp!2347610 () Bool)

(declare-fun tp!2347614 () Bool)

(assert (=> b!7890013 (= e!4658028 (and tp!2347610 tp!2347614))))

(declare-fun b!7890012 () Bool)

(declare-fun tp!2347611 () Bool)

(assert (=> b!7890012 (= e!4658028 tp!2347611)))

(declare-fun b!7890010 () Bool)

(assert (=> b!7890010 (= e!4658028 tp_is_empty!52821)))

(assert (= (and b!7889091 ((_ is ElementMatch!21211) (regOne!42934 (regOne!42934 (regTwo!42934 r!14100))))) b!7890010))

(assert (= (and b!7889091 ((_ is Concat!30056) (regOne!42934 (regOne!42934 (regTwo!42934 r!14100))))) b!7890011))

(assert (= (and b!7889091 ((_ is Star!21211) (regOne!42934 (regOne!42934 (regTwo!42934 r!14100))))) b!7890012))

(assert (= (and b!7889091 ((_ is Union!21211) (regOne!42934 (regOne!42934 (regTwo!42934 r!14100))))) b!7890013))

(declare-fun b!7890015 () Bool)

(declare-fun e!4658029 () Bool)

(declare-fun tp!2347618 () Bool)

(declare-fun tp!2347617 () Bool)

(assert (=> b!7890015 (= e!4658029 (and tp!2347618 tp!2347617))))

(assert (=> b!7889091 (= tp!2347026 e!4658029)))

(declare-fun b!7890017 () Bool)

(declare-fun tp!2347615 () Bool)

(declare-fun tp!2347619 () Bool)

(assert (=> b!7890017 (= e!4658029 (and tp!2347615 tp!2347619))))

(declare-fun b!7890016 () Bool)

(declare-fun tp!2347616 () Bool)

(assert (=> b!7890016 (= e!4658029 tp!2347616)))

(declare-fun b!7890014 () Bool)

(assert (=> b!7890014 (= e!4658029 tp_is_empty!52821)))

(assert (= (and b!7889091 ((_ is ElementMatch!21211) (regTwo!42934 (regOne!42934 (regTwo!42934 r!14100))))) b!7890014))

(assert (= (and b!7889091 ((_ is Concat!30056) (regTwo!42934 (regOne!42934 (regTwo!42934 r!14100))))) b!7890015))

(assert (= (and b!7889091 ((_ is Star!21211) (regTwo!42934 (regOne!42934 (regTwo!42934 r!14100))))) b!7890016))

(assert (= (and b!7889091 ((_ is Union!21211) (regTwo!42934 (regOne!42934 (regTwo!42934 r!14100))))) b!7890017))

(declare-fun b!7890019 () Bool)

(declare-fun e!4658030 () Bool)

(declare-fun tp!2347623 () Bool)

(declare-fun tp!2347622 () Bool)

(assert (=> b!7890019 (= e!4658030 (and tp!2347623 tp!2347622))))

(assert (=> b!7889075 (= tp!2347007 e!4658030)))

(declare-fun b!7890021 () Bool)

(declare-fun tp!2347620 () Bool)

(declare-fun tp!2347624 () Bool)

(assert (=> b!7890021 (= e!4658030 (and tp!2347620 tp!2347624))))

(declare-fun b!7890020 () Bool)

(declare-fun tp!2347621 () Bool)

(assert (=> b!7890020 (= e!4658030 tp!2347621)))

(declare-fun b!7890018 () Bool)

(assert (=> b!7890018 (= e!4658030 tp_is_empty!52821)))

(assert (= (and b!7889075 ((_ is ElementMatch!21211) (regOne!42934 (reg!21540 (regOne!42934 r!14100))))) b!7890018))

(assert (= (and b!7889075 ((_ is Concat!30056) (regOne!42934 (reg!21540 (regOne!42934 r!14100))))) b!7890019))

(assert (= (and b!7889075 ((_ is Star!21211) (regOne!42934 (reg!21540 (regOne!42934 r!14100))))) b!7890020))

(assert (= (and b!7889075 ((_ is Union!21211) (regOne!42934 (reg!21540 (regOne!42934 r!14100))))) b!7890021))

(declare-fun b!7890023 () Bool)

(declare-fun e!4658031 () Bool)

(declare-fun tp!2347628 () Bool)

(declare-fun tp!2347627 () Bool)

(assert (=> b!7890023 (= e!4658031 (and tp!2347628 tp!2347627))))

(assert (=> b!7889075 (= tp!2347006 e!4658031)))

(declare-fun b!7890025 () Bool)

(declare-fun tp!2347625 () Bool)

(declare-fun tp!2347629 () Bool)

(assert (=> b!7890025 (= e!4658031 (and tp!2347625 tp!2347629))))

(declare-fun b!7890024 () Bool)

(declare-fun tp!2347626 () Bool)

(assert (=> b!7890024 (= e!4658031 tp!2347626)))

(declare-fun b!7890022 () Bool)

(assert (=> b!7890022 (= e!4658031 tp_is_empty!52821)))

(assert (= (and b!7889075 ((_ is ElementMatch!21211) (regTwo!42934 (reg!21540 (regOne!42934 r!14100))))) b!7890022))

(assert (= (and b!7889075 ((_ is Concat!30056) (regTwo!42934 (reg!21540 (regOne!42934 r!14100))))) b!7890023))

(assert (= (and b!7889075 ((_ is Star!21211) (regTwo!42934 (reg!21540 (regOne!42934 r!14100))))) b!7890024))

(assert (= (and b!7889075 ((_ is Union!21211) (regTwo!42934 (reg!21540 (regOne!42934 r!14100))))) b!7890025))

(declare-fun b!7890027 () Bool)

(declare-fun e!4658032 () Bool)

(declare-fun tp!2347633 () Bool)

(declare-fun tp!2347632 () Bool)

(assert (=> b!7890027 (= e!4658032 (and tp!2347633 tp!2347632))))

(assert (=> b!7889122 (= tp!2347063 e!4658032)))

(declare-fun b!7890029 () Bool)

(declare-fun tp!2347630 () Bool)

(declare-fun tp!2347634 () Bool)

(assert (=> b!7890029 (= e!4658032 (and tp!2347630 tp!2347634))))

(declare-fun b!7890028 () Bool)

(declare-fun tp!2347631 () Bool)

(assert (=> b!7890028 (= e!4658032 tp!2347631)))

(declare-fun b!7890026 () Bool)

(assert (=> b!7890026 (= e!4658032 tp_is_empty!52821)))

(assert (= (and b!7889122 ((_ is ElementMatch!21211) (regOne!42934 (regOne!42934 (regOne!42935 r!14100))))) b!7890026))

(assert (= (and b!7889122 ((_ is Concat!30056) (regOne!42934 (regOne!42934 (regOne!42935 r!14100))))) b!7890027))

(assert (= (and b!7889122 ((_ is Star!21211) (regOne!42934 (regOne!42934 (regOne!42935 r!14100))))) b!7890028))

(assert (= (and b!7889122 ((_ is Union!21211) (regOne!42934 (regOne!42934 (regOne!42935 r!14100))))) b!7890029))

(declare-fun b!7890031 () Bool)

(declare-fun e!4658033 () Bool)

(declare-fun tp!2347638 () Bool)

(declare-fun tp!2347637 () Bool)

(assert (=> b!7890031 (= e!4658033 (and tp!2347638 tp!2347637))))

(assert (=> b!7889122 (= tp!2347062 e!4658033)))

(declare-fun b!7890033 () Bool)

(declare-fun tp!2347635 () Bool)

(declare-fun tp!2347639 () Bool)

(assert (=> b!7890033 (= e!4658033 (and tp!2347635 tp!2347639))))

(declare-fun b!7890032 () Bool)

(declare-fun tp!2347636 () Bool)

(assert (=> b!7890032 (= e!4658033 tp!2347636)))

(declare-fun b!7890030 () Bool)

(assert (=> b!7890030 (= e!4658033 tp_is_empty!52821)))

(assert (= (and b!7889122 ((_ is ElementMatch!21211) (regTwo!42934 (regOne!42934 (regOne!42935 r!14100))))) b!7890030))

(assert (= (and b!7889122 ((_ is Concat!30056) (regTwo!42934 (regOne!42934 (regOne!42935 r!14100))))) b!7890031))

(assert (= (and b!7889122 ((_ is Star!21211) (regTwo!42934 (regOne!42934 (regOne!42935 r!14100))))) b!7890032))

(assert (= (and b!7889122 ((_ is Union!21211) (regTwo!42934 (regOne!42934 (regOne!42935 r!14100))))) b!7890033))

(declare-fun b!7890035 () Bool)

(declare-fun e!4658034 () Bool)

(declare-fun tp!2347643 () Bool)

(declare-fun tp!2347642 () Bool)

(assert (=> b!7890035 (= e!4658034 (and tp!2347643 tp!2347642))))

(assert (=> b!7889130 (= tp!2347065 e!4658034)))

(declare-fun b!7890037 () Bool)

(declare-fun tp!2347640 () Bool)

(declare-fun tp!2347644 () Bool)

(assert (=> b!7890037 (= e!4658034 (and tp!2347640 tp!2347644))))

(declare-fun b!7890036 () Bool)

(declare-fun tp!2347641 () Bool)

(assert (=> b!7890036 (= e!4658034 tp!2347641)))

(declare-fun b!7890034 () Bool)

(assert (=> b!7890034 (= e!4658034 tp_is_empty!52821)))

(assert (= (and b!7889130 ((_ is ElementMatch!21211) (regOne!42935 (regTwo!42934 (regOne!42935 r!14100))))) b!7890034))

(assert (= (and b!7889130 ((_ is Concat!30056) (regOne!42935 (regTwo!42934 (regOne!42935 r!14100))))) b!7890035))

(assert (= (and b!7889130 ((_ is Star!21211) (regOne!42935 (regTwo!42934 (regOne!42935 r!14100))))) b!7890036))

(assert (= (and b!7889130 ((_ is Union!21211) (regOne!42935 (regTwo!42934 (regOne!42935 r!14100))))) b!7890037))

(declare-fun b!7890039 () Bool)

(declare-fun e!4658035 () Bool)

(declare-fun tp!2347648 () Bool)

(declare-fun tp!2347647 () Bool)

(assert (=> b!7890039 (= e!4658035 (and tp!2347648 tp!2347647))))

(assert (=> b!7889130 (= tp!2347069 e!4658035)))

(declare-fun b!7890041 () Bool)

(declare-fun tp!2347645 () Bool)

(declare-fun tp!2347649 () Bool)

(assert (=> b!7890041 (= e!4658035 (and tp!2347645 tp!2347649))))

(declare-fun b!7890040 () Bool)

(declare-fun tp!2347646 () Bool)

(assert (=> b!7890040 (= e!4658035 tp!2347646)))

(declare-fun b!7890038 () Bool)

(assert (=> b!7890038 (= e!4658035 tp_is_empty!52821)))

(assert (= (and b!7889130 ((_ is ElementMatch!21211) (regTwo!42935 (regTwo!42934 (regOne!42935 r!14100))))) b!7890038))

(assert (= (and b!7889130 ((_ is Concat!30056) (regTwo!42935 (regTwo!42934 (regOne!42935 r!14100))))) b!7890039))

(assert (= (and b!7889130 ((_ is Star!21211) (regTwo!42935 (regTwo!42934 (regOne!42935 r!14100))))) b!7890040))

(assert (= (and b!7889130 ((_ is Union!21211) (regTwo!42935 (regTwo!42934 (regOne!42935 r!14100))))) b!7890041))

(declare-fun b!7890043 () Bool)

(declare-fun e!4658036 () Bool)

(declare-fun tp!2347653 () Bool)

(declare-fun tp!2347652 () Bool)

(assert (=> b!7890043 (= e!4658036 (and tp!2347653 tp!2347652))))

(assert (=> b!7889047 (= tp!2346969 e!4658036)))

(declare-fun b!7890045 () Bool)

(declare-fun tp!2347650 () Bool)

(declare-fun tp!2347654 () Bool)

(assert (=> b!7890045 (= e!4658036 (and tp!2347650 tp!2347654))))

(declare-fun b!7890044 () Bool)

(declare-fun tp!2347651 () Bool)

(assert (=> b!7890044 (= e!4658036 tp!2347651)))

(declare-fun b!7890042 () Bool)

(assert (=> b!7890042 (= e!4658036 tp_is_empty!52821)))

(assert (= (and b!7889047 ((_ is ElementMatch!21211) (reg!21540 (reg!21540 (reg!21540 r!14100))))) b!7890042))

(assert (= (and b!7889047 ((_ is Concat!30056) (reg!21540 (reg!21540 (reg!21540 r!14100))))) b!7890043))

(assert (= (and b!7889047 ((_ is Star!21211) (reg!21540 (reg!21540 (reg!21540 r!14100))))) b!7890044))

(assert (= (and b!7889047 ((_ is Union!21211) (reg!21540 (reg!21540 (reg!21540 r!14100))))) b!7890045))

(declare-fun b!7890047 () Bool)

(declare-fun e!4658037 () Bool)

(declare-fun tp!2347658 () Bool)

(declare-fun tp!2347657 () Bool)

(assert (=> b!7890047 (= e!4658037 (and tp!2347658 tp!2347657))))

(assert (=> b!7889095 (= tp!2347032 e!4658037)))

(declare-fun b!7890049 () Bool)

(declare-fun tp!2347655 () Bool)

(declare-fun tp!2347659 () Bool)

(assert (=> b!7890049 (= e!4658037 (and tp!2347655 tp!2347659))))

(declare-fun b!7890048 () Bool)

(declare-fun tp!2347656 () Bool)

(assert (=> b!7890048 (= e!4658037 tp!2347656)))

(declare-fun b!7890046 () Bool)

(assert (=> b!7890046 (= e!4658037 tp_is_empty!52821)))

(assert (= (and b!7889095 ((_ is ElementMatch!21211) (regOne!42934 (regTwo!42934 (regTwo!42934 r!14100))))) b!7890046))

(assert (= (and b!7889095 ((_ is Concat!30056) (regOne!42934 (regTwo!42934 (regTwo!42934 r!14100))))) b!7890047))

(assert (= (and b!7889095 ((_ is Star!21211) (regOne!42934 (regTwo!42934 (regTwo!42934 r!14100))))) b!7890048))

(assert (= (and b!7889095 ((_ is Union!21211) (regOne!42934 (regTwo!42934 (regTwo!42934 r!14100))))) b!7890049))

(declare-fun b!7890051 () Bool)

(declare-fun e!4658038 () Bool)

(declare-fun tp!2347663 () Bool)

(declare-fun tp!2347662 () Bool)

(assert (=> b!7890051 (= e!4658038 (and tp!2347663 tp!2347662))))

(assert (=> b!7889095 (= tp!2347031 e!4658038)))

(declare-fun b!7890053 () Bool)

(declare-fun tp!2347660 () Bool)

(declare-fun tp!2347664 () Bool)

(assert (=> b!7890053 (= e!4658038 (and tp!2347660 tp!2347664))))

(declare-fun b!7890052 () Bool)

(declare-fun tp!2347661 () Bool)

(assert (=> b!7890052 (= e!4658038 tp!2347661)))

(declare-fun b!7890050 () Bool)

(assert (=> b!7890050 (= e!4658038 tp_is_empty!52821)))

(assert (= (and b!7889095 ((_ is ElementMatch!21211) (regTwo!42934 (regTwo!42934 (regTwo!42934 r!14100))))) b!7890050))

(assert (= (and b!7889095 ((_ is Concat!30056) (regTwo!42934 (regTwo!42934 (regTwo!42934 r!14100))))) b!7890051))

(assert (= (and b!7889095 ((_ is Star!21211) (regTwo!42934 (regTwo!42934 (regTwo!42934 r!14100))))) b!7890052))

(assert (= (and b!7889095 ((_ is Union!21211) (regTwo!42934 (regTwo!42934 (regTwo!42934 r!14100))))) b!7890053))

(declare-fun b!7890055 () Bool)

(declare-fun e!4658039 () Bool)

(declare-fun tp!2347668 () Bool)

(declare-fun tp!2347667 () Bool)

(assert (=> b!7890055 (= e!4658039 (and tp!2347668 tp!2347667))))

(assert (=> b!7889030 (= tp!2346948 e!4658039)))

(declare-fun b!7890057 () Bool)

(declare-fun tp!2347665 () Bool)

(declare-fun tp!2347669 () Bool)

(assert (=> b!7890057 (= e!4658039 (and tp!2347665 tp!2347669))))

(declare-fun b!7890056 () Bool)

(declare-fun tp!2347666 () Bool)

(assert (=> b!7890056 (= e!4658039 tp!2347666)))

(declare-fun b!7890054 () Bool)

(assert (=> b!7890054 (= e!4658039 tp_is_empty!52821)))

(assert (= (and b!7889030 ((_ is ElementMatch!21211) (reg!21540 (regOne!42934 (regTwo!42935 r!14100))))) b!7890054))

(assert (= (and b!7889030 ((_ is Concat!30056) (reg!21540 (regOne!42934 (regTwo!42935 r!14100))))) b!7890055))

(assert (= (and b!7889030 ((_ is Star!21211) (reg!21540 (regOne!42934 (regTwo!42935 r!14100))))) b!7890056))

(assert (= (and b!7889030 ((_ is Union!21211) (reg!21540 (regOne!42934 (regTwo!42935 r!14100))))) b!7890057))

(declare-fun b!7890059 () Bool)

(declare-fun e!4658040 () Bool)

(declare-fun tp!2347673 () Bool)

(declare-fun tp!2347672 () Bool)

(assert (=> b!7890059 (= e!4658040 (and tp!2347673 tp!2347672))))

(assert (=> b!7889109 (= tp!2347046 e!4658040)))

(declare-fun b!7890061 () Bool)

(declare-fun tp!2347670 () Bool)

(declare-fun tp!2347674 () Bool)

(assert (=> b!7890061 (= e!4658040 (and tp!2347670 tp!2347674))))

(declare-fun b!7890060 () Bool)

(declare-fun tp!2347671 () Bool)

(assert (=> b!7890060 (= e!4658040 tp!2347671)))

(declare-fun b!7890058 () Bool)

(assert (=> b!7890058 (= e!4658040 tp_is_empty!52821)))

(assert (= (and b!7889109 ((_ is ElementMatch!21211) (reg!21540 (regOne!42935 (regTwo!42935 r!14100))))) b!7890058))

(assert (= (and b!7889109 ((_ is Concat!30056) (reg!21540 (regOne!42935 (regTwo!42935 r!14100))))) b!7890059))

(assert (= (and b!7889109 ((_ is Star!21211) (reg!21540 (regOne!42935 (regTwo!42935 r!14100))))) b!7890060))

(assert (= (and b!7889109 ((_ is Union!21211) (reg!21540 (regOne!42935 (regTwo!42935 r!14100))))) b!7890061))

(declare-fun b!7890062 () Bool)

(declare-fun e!4658041 () Bool)

(declare-fun tp!2347675 () Bool)

(assert (=> b!7890062 (= e!4658041 (and tp_is_empty!52821 tp!2347675))))

(assert (=> b!7889098 (= tp!2347034 e!4658041)))

(assert (= (and b!7889098 ((_ is Cons!73944) (t!388803 (t!388803 (t!388803 s!9586))))) b!7890062))

(declare-fun b!7890064 () Bool)

(declare-fun e!4658042 () Bool)

(declare-fun tp!2347679 () Bool)

(declare-fun tp!2347678 () Bool)

(assert (=> b!7890064 (= e!4658042 (and tp!2347679 tp!2347678))))

(assert (=> b!7889089 (= tp!2347019 e!4658042)))

(declare-fun b!7890066 () Bool)

(declare-fun tp!2347676 () Bool)

(declare-fun tp!2347680 () Bool)

(assert (=> b!7890066 (= e!4658042 (and tp!2347676 tp!2347680))))

(declare-fun b!7890065 () Bool)

(declare-fun tp!2347677 () Bool)

(assert (=> b!7890065 (= e!4658042 tp!2347677)))

(declare-fun b!7890063 () Bool)

(assert (=> b!7890063 (= e!4658042 tp_is_empty!52821)))

(assert (= (and b!7889089 ((_ is ElementMatch!21211) (regOne!42935 (reg!21540 (regTwo!42934 r!14100))))) b!7890063))

(assert (= (and b!7889089 ((_ is Concat!30056) (regOne!42935 (reg!21540 (regTwo!42934 r!14100))))) b!7890064))

(assert (= (and b!7889089 ((_ is Star!21211) (regOne!42935 (reg!21540 (regTwo!42934 r!14100))))) b!7890065))

(assert (= (and b!7889089 ((_ is Union!21211) (regOne!42935 (reg!21540 (regTwo!42934 r!14100))))) b!7890066))

(declare-fun b!7890068 () Bool)

(declare-fun e!4658043 () Bool)

(declare-fun tp!2347684 () Bool)

(declare-fun tp!2347683 () Bool)

(assert (=> b!7890068 (= e!4658043 (and tp!2347684 tp!2347683))))

(assert (=> b!7889089 (= tp!2347023 e!4658043)))

(declare-fun b!7890070 () Bool)

(declare-fun tp!2347681 () Bool)

(declare-fun tp!2347685 () Bool)

(assert (=> b!7890070 (= e!4658043 (and tp!2347681 tp!2347685))))

(declare-fun b!7890069 () Bool)

(declare-fun tp!2347682 () Bool)

(assert (=> b!7890069 (= e!4658043 tp!2347682)))

(declare-fun b!7890067 () Bool)

(assert (=> b!7890067 (= e!4658043 tp_is_empty!52821)))

(assert (= (and b!7889089 ((_ is ElementMatch!21211) (regTwo!42935 (reg!21540 (regTwo!42934 r!14100))))) b!7890067))

(assert (= (and b!7889089 ((_ is Concat!30056) (regTwo!42935 (reg!21540 (regTwo!42934 r!14100))))) b!7890068))

(assert (= (and b!7889089 ((_ is Star!21211) (regTwo!42935 (reg!21540 (regTwo!42934 r!14100))))) b!7890069))

(assert (= (and b!7889089 ((_ is Union!21211) (regTwo!42935 (reg!21540 (regTwo!42934 r!14100))))) b!7890070))

(declare-fun b!7890072 () Bool)

(declare-fun e!4658044 () Bool)

(declare-fun tp!2347689 () Bool)

(declare-fun tp!2347688 () Bool)

(assert (=> b!7890072 (= e!4658044 (and tp!2347689 tp!2347688))))

(assert (=> b!7889073 (= tp!2346999 e!4658044)))

(declare-fun b!7890074 () Bool)

(declare-fun tp!2347686 () Bool)

(declare-fun tp!2347690 () Bool)

(assert (=> b!7890074 (= e!4658044 (and tp!2347686 tp!2347690))))

(declare-fun b!7890073 () Bool)

(declare-fun tp!2347687 () Bool)

(assert (=> b!7890073 (= e!4658044 tp!2347687)))

(declare-fun b!7890071 () Bool)

(assert (=> b!7890071 (= e!4658044 tp_is_empty!52821)))

(assert (= (and b!7889073 ((_ is ElementMatch!21211) (regOne!42935 (regTwo!42934 (reg!21540 r!14100))))) b!7890071))

(assert (= (and b!7889073 ((_ is Concat!30056) (regOne!42935 (regTwo!42934 (reg!21540 r!14100))))) b!7890072))

(assert (= (and b!7889073 ((_ is Star!21211) (regOne!42935 (regTwo!42934 (reg!21540 r!14100))))) b!7890073))

(assert (= (and b!7889073 ((_ is Union!21211) (regOne!42935 (regTwo!42934 (reg!21540 r!14100))))) b!7890074))

(declare-fun b!7890076 () Bool)

(declare-fun e!4658045 () Bool)

(declare-fun tp!2347694 () Bool)

(declare-fun tp!2347693 () Bool)

(assert (=> b!7890076 (= e!4658045 (and tp!2347694 tp!2347693))))

(assert (=> b!7889073 (= tp!2347003 e!4658045)))

(declare-fun b!7890078 () Bool)

(declare-fun tp!2347691 () Bool)

(declare-fun tp!2347695 () Bool)

(assert (=> b!7890078 (= e!4658045 (and tp!2347691 tp!2347695))))

(declare-fun b!7890077 () Bool)

(declare-fun tp!2347692 () Bool)

(assert (=> b!7890077 (= e!4658045 tp!2347692)))

(declare-fun b!7890075 () Bool)

(assert (=> b!7890075 (= e!4658045 tp_is_empty!52821)))

(assert (= (and b!7889073 ((_ is ElementMatch!21211) (regTwo!42935 (regTwo!42934 (reg!21540 r!14100))))) b!7890075))

(assert (= (and b!7889073 ((_ is Concat!30056) (regTwo!42935 (regTwo!42934 (reg!21540 r!14100))))) b!7890076))

(assert (= (and b!7889073 ((_ is Star!21211) (regTwo!42935 (regTwo!42934 (reg!21540 r!14100))))) b!7890077))

(assert (= (and b!7889073 ((_ is Union!21211) (regTwo!42935 (regTwo!42934 (reg!21540 r!14100))))) b!7890078))

(declare-fun b!7890080 () Bool)

(declare-fun e!4658046 () Bool)

(declare-fun tp!2347699 () Bool)

(declare-fun tp!2347698 () Bool)

(assert (=> b!7890080 (= e!4658046 (and tp!2347699 tp!2347698))))

(assert (=> b!7889120 (= tp!2347055 e!4658046)))

(declare-fun b!7890082 () Bool)

(declare-fun tp!2347696 () Bool)

(declare-fun tp!2347700 () Bool)

(assert (=> b!7890082 (= e!4658046 (and tp!2347696 tp!2347700))))

(declare-fun b!7890081 () Bool)

(declare-fun tp!2347697 () Bool)

(assert (=> b!7890081 (= e!4658046 tp!2347697)))

(declare-fun b!7890079 () Bool)

(assert (=> b!7890079 (= e!4658046 tp_is_empty!52821)))

(assert (= (and b!7889120 ((_ is ElementMatch!21211) (regOne!42935 (reg!21540 (regOne!42935 r!14100))))) b!7890079))

(assert (= (and b!7889120 ((_ is Concat!30056) (regOne!42935 (reg!21540 (regOne!42935 r!14100))))) b!7890080))

(assert (= (and b!7889120 ((_ is Star!21211) (regOne!42935 (reg!21540 (regOne!42935 r!14100))))) b!7890081))

(assert (= (and b!7889120 ((_ is Union!21211) (regOne!42935 (reg!21540 (regOne!42935 r!14100))))) b!7890082))

(declare-fun b!7890084 () Bool)

(declare-fun e!4658047 () Bool)

(declare-fun tp!2347704 () Bool)

(declare-fun tp!2347703 () Bool)

(assert (=> b!7890084 (= e!4658047 (and tp!2347704 tp!2347703))))

(assert (=> b!7889120 (= tp!2347059 e!4658047)))

(declare-fun b!7890086 () Bool)

(declare-fun tp!2347701 () Bool)

(declare-fun tp!2347705 () Bool)

(assert (=> b!7890086 (= e!4658047 (and tp!2347701 tp!2347705))))

(declare-fun b!7890085 () Bool)

(declare-fun tp!2347702 () Bool)

(assert (=> b!7890085 (= e!4658047 tp!2347702)))

(declare-fun b!7890083 () Bool)

(assert (=> b!7890083 (= e!4658047 tp_is_empty!52821)))

(assert (= (and b!7889120 ((_ is ElementMatch!21211) (regTwo!42935 (reg!21540 (regOne!42935 r!14100))))) b!7890083))

(assert (= (and b!7889120 ((_ is Concat!30056) (regTwo!42935 (reg!21540 (regOne!42935 r!14100))))) b!7890084))

(assert (= (and b!7889120 ((_ is Star!21211) (regTwo!42935 (reg!21540 (regOne!42935 r!14100))))) b!7890085))

(assert (= (and b!7889120 ((_ is Union!21211) (regTwo!42935 (reg!21540 (regOne!42935 r!14100))))) b!7890086))

(declare-fun b!7890088 () Bool)

(declare-fun e!4658048 () Bool)

(declare-fun tp!2347709 () Bool)

(declare-fun tp!2347708 () Bool)

(assert (=> b!7890088 (= e!4658048 (and tp!2347709 tp!2347708))))

(assert (=> b!7889081 (= tp!2347009 e!4658048)))

(declare-fun b!7890090 () Bool)

(declare-fun tp!2347706 () Bool)

(declare-fun tp!2347710 () Bool)

(assert (=> b!7890090 (= e!4658048 (and tp!2347706 tp!2347710))))

(declare-fun b!7890089 () Bool)

(declare-fun tp!2347707 () Bool)

(assert (=> b!7890089 (= e!4658048 tp!2347707)))

(declare-fun b!7890087 () Bool)

(assert (=> b!7890087 (= e!4658048 tp_is_empty!52821)))

(assert (= (and b!7889081 ((_ is ElementMatch!21211) (regOne!42935 (regOne!42934 (regOne!42934 r!14100))))) b!7890087))

(assert (= (and b!7889081 ((_ is Concat!30056) (regOne!42935 (regOne!42934 (regOne!42934 r!14100))))) b!7890088))

(assert (= (and b!7889081 ((_ is Star!21211) (regOne!42935 (regOne!42934 (regOne!42934 r!14100))))) b!7890089))

(assert (= (and b!7889081 ((_ is Union!21211) (regOne!42935 (regOne!42934 (regOne!42934 r!14100))))) b!7890090))

(declare-fun b!7890092 () Bool)

(declare-fun e!4658049 () Bool)

(declare-fun tp!2347714 () Bool)

(declare-fun tp!2347713 () Bool)

(assert (=> b!7890092 (= e!4658049 (and tp!2347714 tp!2347713))))

(assert (=> b!7889081 (= tp!2347013 e!4658049)))

(declare-fun b!7890094 () Bool)

(declare-fun tp!2347711 () Bool)

(declare-fun tp!2347715 () Bool)

(assert (=> b!7890094 (= e!4658049 (and tp!2347711 tp!2347715))))

(declare-fun b!7890093 () Bool)

(declare-fun tp!2347712 () Bool)

(assert (=> b!7890093 (= e!4658049 tp!2347712)))

(declare-fun b!7890091 () Bool)

(assert (=> b!7890091 (= e!4658049 tp_is_empty!52821)))

(assert (= (and b!7889081 ((_ is ElementMatch!21211) (regTwo!42935 (regOne!42934 (regOne!42934 r!14100))))) b!7890091))

(assert (= (and b!7889081 ((_ is Concat!30056) (regTwo!42935 (regOne!42934 (regOne!42934 r!14100))))) b!7890092))

(assert (= (and b!7889081 ((_ is Star!21211) (regTwo!42935 (regOne!42934 (regOne!42934 r!14100))))) b!7890093))

(assert (= (and b!7889081 ((_ is Union!21211) (regTwo!42935 (regOne!42934 (regOne!42934 r!14100))))) b!7890094))

(declare-fun b!7890096 () Bool)

(declare-fun e!4658050 () Bool)

(declare-fun tp!2347719 () Bool)

(declare-fun tp!2347718 () Bool)

(assert (=> b!7890096 (= e!4658050 (and tp!2347719 tp!2347718))))

(assert (=> b!7889071 (= tp!2347002 e!4658050)))

(declare-fun b!7890098 () Bool)

(declare-fun tp!2347716 () Bool)

(declare-fun tp!2347720 () Bool)

(assert (=> b!7890098 (= e!4658050 (and tp!2347716 tp!2347720))))

(declare-fun b!7890097 () Bool)

(declare-fun tp!2347717 () Bool)

(assert (=> b!7890097 (= e!4658050 tp!2347717)))

(declare-fun b!7890095 () Bool)

(assert (=> b!7890095 (= e!4658050 tp_is_empty!52821)))

(assert (= (and b!7889071 ((_ is ElementMatch!21211) (regOne!42934 (regTwo!42934 (reg!21540 r!14100))))) b!7890095))

(assert (= (and b!7889071 ((_ is Concat!30056) (regOne!42934 (regTwo!42934 (reg!21540 r!14100))))) b!7890096))

(assert (= (and b!7889071 ((_ is Star!21211) (regOne!42934 (regTwo!42934 (reg!21540 r!14100))))) b!7890097))

(assert (= (and b!7889071 ((_ is Union!21211) (regOne!42934 (regTwo!42934 (reg!21540 r!14100))))) b!7890098))

(declare-fun b!7890100 () Bool)

(declare-fun e!4658051 () Bool)

(declare-fun tp!2347724 () Bool)

(declare-fun tp!2347723 () Bool)

(assert (=> b!7890100 (= e!4658051 (and tp!2347724 tp!2347723))))

(assert (=> b!7889071 (= tp!2347001 e!4658051)))

(declare-fun b!7890102 () Bool)

(declare-fun tp!2347721 () Bool)

(declare-fun tp!2347725 () Bool)

(assert (=> b!7890102 (= e!4658051 (and tp!2347721 tp!2347725))))

(declare-fun b!7890101 () Bool)

(declare-fun tp!2347722 () Bool)

(assert (=> b!7890101 (= e!4658051 tp!2347722)))

(declare-fun b!7890099 () Bool)

(assert (=> b!7890099 (= e!4658051 tp_is_empty!52821)))

(assert (= (and b!7889071 ((_ is ElementMatch!21211) (regTwo!42934 (regTwo!42934 (reg!21540 r!14100))))) b!7890099))

(assert (= (and b!7889071 ((_ is Concat!30056) (regTwo!42934 (regTwo!42934 (reg!21540 r!14100))))) b!7890100))

(assert (= (and b!7889071 ((_ is Star!21211) (regTwo!42934 (regTwo!42934 (reg!21540 r!14100))))) b!7890101))

(assert (= (and b!7889071 ((_ is Union!21211) (regTwo!42934 (regTwo!42934 (reg!21540 r!14100))))) b!7890102))

(declare-fun b!7890104 () Bool)

(declare-fun e!4658052 () Bool)

(declare-fun tp!2347729 () Bool)

(declare-fun tp!2347728 () Bool)

(assert (=> b!7890104 (= e!4658052 (and tp!2347729 tp!2347728))))

(assert (=> b!7889118 (= tp!2347058 e!4658052)))

(declare-fun b!7890106 () Bool)

(declare-fun tp!2347726 () Bool)

(declare-fun tp!2347730 () Bool)

(assert (=> b!7890106 (= e!4658052 (and tp!2347726 tp!2347730))))

(declare-fun b!7890105 () Bool)

(declare-fun tp!2347727 () Bool)

(assert (=> b!7890105 (= e!4658052 tp!2347727)))

(declare-fun b!7890103 () Bool)

(assert (=> b!7890103 (= e!4658052 tp_is_empty!52821)))

(assert (= (and b!7889118 ((_ is ElementMatch!21211) (regOne!42934 (reg!21540 (regOne!42935 r!14100))))) b!7890103))

(assert (= (and b!7889118 ((_ is Concat!30056) (regOne!42934 (reg!21540 (regOne!42935 r!14100))))) b!7890104))

(assert (= (and b!7889118 ((_ is Star!21211) (regOne!42934 (reg!21540 (regOne!42935 r!14100))))) b!7890105))

(assert (= (and b!7889118 ((_ is Union!21211) (regOne!42934 (reg!21540 (regOne!42935 r!14100))))) b!7890106))

(declare-fun b!7890108 () Bool)

(declare-fun e!4658053 () Bool)

(declare-fun tp!2347734 () Bool)

(declare-fun tp!2347733 () Bool)

(assert (=> b!7890108 (= e!4658053 (and tp!2347734 tp!2347733))))

(assert (=> b!7889118 (= tp!2347057 e!4658053)))

(declare-fun b!7890110 () Bool)

(declare-fun tp!2347731 () Bool)

(declare-fun tp!2347735 () Bool)

(assert (=> b!7890110 (= e!4658053 (and tp!2347731 tp!2347735))))

(declare-fun b!7890109 () Bool)

(declare-fun tp!2347732 () Bool)

(assert (=> b!7890109 (= e!4658053 tp!2347732)))

(declare-fun b!7890107 () Bool)

(assert (=> b!7890107 (= e!4658053 tp_is_empty!52821)))

(assert (= (and b!7889118 ((_ is ElementMatch!21211) (regTwo!42934 (reg!21540 (regOne!42935 r!14100))))) b!7890107))

(assert (= (and b!7889118 ((_ is Concat!30056) (regTwo!42934 (reg!21540 (regOne!42935 r!14100))))) b!7890108))

(assert (= (and b!7889118 ((_ is Star!21211) (regTwo!42934 (reg!21540 (regOne!42935 r!14100))))) b!7890109))

(assert (= (and b!7889118 ((_ is Union!21211) (regTwo!42934 (reg!21540 (regOne!42935 r!14100))))) b!7890110))

(declare-fun b!7890112 () Bool)

(declare-fun e!4658054 () Bool)

(declare-fun tp!2347739 () Bool)

(declare-fun tp!2347738 () Bool)

(assert (=> b!7890112 (= e!4658054 (and tp!2347739 tp!2347738))))

(assert (=> b!7889079 (= tp!2347012 e!4658054)))

(declare-fun b!7890114 () Bool)

(declare-fun tp!2347736 () Bool)

(declare-fun tp!2347740 () Bool)

(assert (=> b!7890114 (= e!4658054 (and tp!2347736 tp!2347740))))

(declare-fun b!7890113 () Bool)

(declare-fun tp!2347737 () Bool)

(assert (=> b!7890113 (= e!4658054 tp!2347737)))

(declare-fun b!7890111 () Bool)

(assert (=> b!7890111 (= e!4658054 tp_is_empty!52821)))

(assert (= (and b!7889079 ((_ is ElementMatch!21211) (regOne!42934 (regOne!42934 (regOne!42934 r!14100))))) b!7890111))

(assert (= (and b!7889079 ((_ is Concat!30056) (regOne!42934 (regOne!42934 (regOne!42934 r!14100))))) b!7890112))

(assert (= (and b!7889079 ((_ is Star!21211) (regOne!42934 (regOne!42934 (regOne!42934 r!14100))))) b!7890113))

(assert (= (and b!7889079 ((_ is Union!21211) (regOne!42934 (regOne!42934 (regOne!42934 r!14100))))) b!7890114))

(declare-fun b!7890116 () Bool)

(declare-fun e!4658055 () Bool)

(declare-fun tp!2347744 () Bool)

(declare-fun tp!2347743 () Bool)

(assert (=> b!7890116 (= e!4658055 (and tp!2347744 tp!2347743))))

(assert (=> b!7889079 (= tp!2347011 e!4658055)))

(declare-fun b!7890118 () Bool)

(declare-fun tp!2347741 () Bool)

(declare-fun tp!2347745 () Bool)

(assert (=> b!7890118 (= e!4658055 (and tp!2347741 tp!2347745))))

(declare-fun b!7890117 () Bool)

(declare-fun tp!2347742 () Bool)

(assert (=> b!7890117 (= e!4658055 tp!2347742)))

(declare-fun b!7890115 () Bool)

(assert (=> b!7890115 (= e!4658055 tp_is_empty!52821)))

(assert (= (and b!7889079 ((_ is ElementMatch!21211) (regTwo!42934 (regOne!42934 (regOne!42934 r!14100))))) b!7890115))

(assert (= (and b!7889079 ((_ is Concat!30056) (regTwo!42934 (regOne!42934 (regOne!42934 r!14100))))) b!7890116))

(assert (= (and b!7889079 ((_ is Star!21211) (regTwo!42934 (regOne!42934 (regOne!42934 r!14100))))) b!7890117))

(assert (= (and b!7889079 ((_ is Union!21211) (regTwo!42934 (regOne!42934 (regOne!42934 r!14100))))) b!7890118))

(declare-fun b!7890120 () Bool)

(declare-fun e!4658056 () Bool)

(declare-fun tp!2347749 () Bool)

(declare-fun tp!2347748 () Bool)

(assert (=> b!7890120 (= e!4658056 (and tp!2347749 tp!2347748))))

(assert (=> b!7889056 (= tp!2346980 e!4658056)))

(declare-fun b!7890122 () Bool)

(declare-fun tp!2347746 () Bool)

(declare-fun tp!2347750 () Bool)

(assert (=> b!7890122 (= e!4658056 (and tp!2347746 tp!2347750))))

(declare-fun b!7890121 () Bool)

(declare-fun tp!2347747 () Bool)

(assert (=> b!7890121 (= e!4658056 tp!2347747)))

(declare-fun b!7890119 () Bool)

(assert (=> b!7890119 (= e!4658056 tp_is_empty!52821)))

(assert (= (and b!7889056 ((_ is ElementMatch!21211) (reg!21540 (regTwo!42935 (regOne!42934 r!14100))))) b!7890119))

(assert (= (and b!7889056 ((_ is Concat!30056) (reg!21540 (regTwo!42935 (regOne!42934 r!14100))))) b!7890120))

(assert (= (and b!7889056 ((_ is Star!21211) (reg!21540 (regTwo!42935 (regOne!42934 r!14100))))) b!7890121))

(assert (= (and b!7889056 ((_ is Union!21211) (reg!21540 (regTwo!42935 (regOne!42934 r!14100))))) b!7890122))

(declare-fun b!7890124 () Bool)

(declare-fun e!4658057 () Bool)

(declare-fun tp!2347754 () Bool)

(declare-fun tp!2347753 () Bool)

(assert (=> b!7890124 (= e!4658057 (and tp!2347754 tp!2347753))))

(assert (=> b!7889105 (= tp!2347041 e!4658057)))

(declare-fun b!7890126 () Bool)

(declare-fun tp!2347751 () Bool)

(declare-fun tp!2347755 () Bool)

(assert (=> b!7890126 (= e!4658057 (and tp!2347751 tp!2347755))))

(declare-fun b!7890125 () Bool)

(declare-fun tp!2347752 () Bool)

(assert (=> b!7890125 (= e!4658057 tp!2347752)))

(declare-fun b!7890123 () Bool)

(assert (=> b!7890123 (= e!4658057 tp_is_empty!52821)))

(assert (= (and b!7889105 ((_ is ElementMatch!21211) (reg!21540 (regTwo!42935 (regOne!42935 r!14100))))) b!7890123))

(assert (= (and b!7889105 ((_ is Concat!30056) (reg!21540 (regTwo!42935 (regOne!42935 r!14100))))) b!7890124))

(assert (= (and b!7889105 ((_ is Star!21211) (reg!21540 (regTwo!42935 (regOne!42935 r!14100))))) b!7890125))

(assert (= (and b!7889105 ((_ is Union!21211) (reg!21540 (regTwo!42935 (regOne!42935 r!14100))))) b!7890126))

(declare-fun b!7890128 () Bool)

(declare-fun e!4658058 () Bool)

(declare-fun tp!2347759 () Bool)

(declare-fun tp!2347758 () Bool)

(assert (=> b!7890128 (= e!4658058 (and tp!2347759 tp!2347758))))

(assert (=> b!7889064 (= tp!2346990 e!4658058)))

(declare-fun b!7890130 () Bool)

(declare-fun tp!2347756 () Bool)

(declare-fun tp!2347760 () Bool)

(assert (=> b!7890130 (= e!4658058 (and tp!2347756 tp!2347760))))

(declare-fun b!7890129 () Bool)

(declare-fun tp!2347757 () Bool)

(assert (=> b!7890129 (= e!4658058 tp!2347757)))

(declare-fun b!7890127 () Bool)

(assert (=> b!7890127 (= e!4658058 tp_is_empty!52821)))

(assert (= (and b!7889064 ((_ is ElementMatch!21211) (reg!21540 (regTwo!42935 (regTwo!42934 r!14100))))) b!7890127))

(assert (= (and b!7889064 ((_ is Concat!30056) (reg!21540 (regTwo!42935 (regTwo!42934 r!14100))))) b!7890128))

(assert (= (and b!7889064 ((_ is Star!21211) (reg!21540 (regTwo!42935 (regTwo!42934 r!14100))))) b!7890129))

(assert (= (and b!7889064 ((_ is Union!21211) (reg!21540 (regTwo!42935 (regTwo!42934 r!14100))))) b!7890130))

(declare-fun b!7890132 () Bool)

(declare-fun e!4658059 () Bool)

(declare-fun tp!2347764 () Bool)

(declare-fun tp!2347763 () Bool)

(assert (=> b!7890132 (= e!4658059 (and tp!2347764 tp!2347763))))

(assert (=> b!7889039 (= tp!2346959 e!4658059)))

(declare-fun b!7890134 () Bool)

(declare-fun tp!2347761 () Bool)

(declare-fun tp!2347765 () Bool)

(assert (=> b!7890134 (= e!4658059 (and tp!2347761 tp!2347765))))

(declare-fun b!7890133 () Bool)

(declare-fun tp!2347762 () Bool)

(assert (=> b!7890133 (= e!4658059 tp!2347762)))

(declare-fun b!7890131 () Bool)

(assert (=> b!7890131 (= e!4658059 tp_is_empty!52821)))

(assert (= (and b!7889039 ((_ is ElementMatch!21211) (reg!21540 (regOne!42935 (reg!21540 r!14100))))) b!7890131))

(assert (= (and b!7889039 ((_ is Concat!30056) (reg!21540 (regOne!42935 (reg!21540 r!14100))))) b!7890132))

(assert (= (and b!7889039 ((_ is Star!21211) (reg!21540 (regOne!42935 (reg!21540 r!14100))))) b!7890133))

(assert (= (and b!7889039 ((_ is Union!21211) (reg!21540 (regOne!42935 (reg!21540 r!14100))))) b!7890134))

(declare-fun b!7890136 () Bool)

(declare-fun e!4658060 () Bool)

(declare-fun tp!2347769 () Bool)

(declare-fun tp!2347768 () Bool)

(assert (=> b!7890136 (= e!4658060 (and tp!2347769 tp!2347768))))

(assert (=> b!7889087 (= tp!2347022 e!4658060)))

(declare-fun b!7890138 () Bool)

(declare-fun tp!2347766 () Bool)

(declare-fun tp!2347770 () Bool)

(assert (=> b!7890138 (= e!4658060 (and tp!2347766 tp!2347770))))

(declare-fun b!7890137 () Bool)

(declare-fun tp!2347767 () Bool)

(assert (=> b!7890137 (= e!4658060 tp!2347767)))

(declare-fun b!7890135 () Bool)

(assert (=> b!7890135 (= e!4658060 tp_is_empty!52821)))

(assert (= (and b!7889087 ((_ is ElementMatch!21211) (regOne!42934 (reg!21540 (regTwo!42934 r!14100))))) b!7890135))

(assert (= (and b!7889087 ((_ is Concat!30056) (regOne!42934 (reg!21540 (regTwo!42934 r!14100))))) b!7890136))

(assert (= (and b!7889087 ((_ is Star!21211) (regOne!42934 (reg!21540 (regTwo!42934 r!14100))))) b!7890137))

(assert (= (and b!7889087 ((_ is Union!21211) (regOne!42934 (reg!21540 (regTwo!42934 r!14100))))) b!7890138))

(declare-fun b!7890140 () Bool)

(declare-fun e!4658061 () Bool)

(declare-fun tp!2347774 () Bool)

(declare-fun tp!2347773 () Bool)

(assert (=> b!7890140 (= e!4658061 (and tp!2347774 tp!2347773))))

(assert (=> b!7889087 (= tp!2347021 e!4658061)))

(declare-fun b!7890142 () Bool)

(declare-fun tp!2347771 () Bool)

(declare-fun tp!2347775 () Bool)

(assert (=> b!7890142 (= e!4658061 (and tp!2347771 tp!2347775))))

(declare-fun b!7890141 () Bool)

(declare-fun tp!2347772 () Bool)

(assert (=> b!7890141 (= e!4658061 tp!2347772)))

(declare-fun b!7890139 () Bool)

(assert (=> b!7890139 (= e!4658061 tp_is_empty!52821)))

(assert (= (and b!7889087 ((_ is ElementMatch!21211) (regTwo!42934 (reg!21540 (regTwo!42934 r!14100))))) b!7890139))

(assert (= (and b!7889087 ((_ is Concat!30056) (regTwo!42934 (reg!21540 (regTwo!42934 r!14100))))) b!7890140))

(assert (= (and b!7889087 ((_ is Star!21211) (regTwo!42934 (reg!21540 (regTwo!42934 r!14100))))) b!7890141))

(assert (= (and b!7889087 ((_ is Union!21211) (regTwo!42934 (reg!21540 (regTwo!42934 r!14100))))) b!7890142))

(declare-fun b!7890144 () Bool)

(declare-fun e!4658062 () Bool)

(declare-fun tp!2347779 () Bool)

(declare-fun tp!2347778 () Bool)

(assert (=> b!7890144 (= e!4658062 (and tp!2347779 tp!2347778))))

(assert (=> b!7889133 (= tp!2347071 e!4658062)))

(declare-fun b!7890146 () Bool)

(declare-fun tp!2347776 () Bool)

(declare-fun tp!2347780 () Bool)

(assert (=> b!7890146 (= e!4658062 (and tp!2347776 tp!2347780))))

(declare-fun b!7890145 () Bool)

(declare-fun tp!2347777 () Bool)

(assert (=> b!7890145 (= e!4658062 tp!2347777)))

(declare-fun b!7890143 () Bool)

(assert (=> b!7890143 (= e!4658062 tp_is_empty!52821)))

(assert (= (and b!7889133 ((_ is ElementMatch!21211) (reg!21540 (reg!21540 (regTwo!42935 r!14100))))) b!7890143))

(assert (= (and b!7889133 ((_ is Concat!30056) (reg!21540 (reg!21540 (regTwo!42935 r!14100))))) b!7890144))

(assert (= (and b!7889133 ((_ is Star!21211) (reg!21540 (reg!21540 (regTwo!42935 r!14100))))) b!7890145))

(assert (= (and b!7889133 ((_ is Union!21211) (reg!21540 (reg!21540 (regTwo!42935 r!14100))))) b!7890146))

(declare-fun b!7890148 () Bool)

(declare-fun e!4658063 () Bool)

(declare-fun tp!2347784 () Bool)

(declare-fun tp!2347783 () Bool)

(assert (=> b!7890148 (= e!4658063 (and tp!2347784 tp!2347783))))

(assert (=> b!7889048 (= tp!2346968 e!4658063)))

(declare-fun b!7890150 () Bool)

(declare-fun tp!2347781 () Bool)

(declare-fun tp!2347785 () Bool)

(assert (=> b!7890150 (= e!4658063 (and tp!2347781 tp!2347785))))

(declare-fun b!7890149 () Bool)

(declare-fun tp!2347782 () Bool)

(assert (=> b!7890149 (= e!4658063 tp!2347782)))

(declare-fun b!7890147 () Bool)

(assert (=> b!7890147 (= e!4658063 tp_is_empty!52821)))

(assert (= (and b!7889048 ((_ is ElementMatch!21211) (regOne!42935 (reg!21540 (reg!21540 r!14100))))) b!7890147))

(assert (= (and b!7889048 ((_ is Concat!30056) (regOne!42935 (reg!21540 (reg!21540 r!14100))))) b!7890148))

(assert (= (and b!7889048 ((_ is Star!21211) (regOne!42935 (reg!21540 (reg!21540 r!14100))))) b!7890149))

(assert (= (and b!7889048 ((_ is Union!21211) (regOne!42935 (reg!21540 (reg!21540 r!14100))))) b!7890150))

(declare-fun b!7890152 () Bool)

(declare-fun e!4658064 () Bool)

(declare-fun tp!2347789 () Bool)

(declare-fun tp!2347788 () Bool)

(assert (=> b!7890152 (= e!4658064 (and tp!2347789 tp!2347788))))

(assert (=> b!7889048 (= tp!2346972 e!4658064)))

(declare-fun b!7890154 () Bool)

(declare-fun tp!2347786 () Bool)

(declare-fun tp!2347790 () Bool)

(assert (=> b!7890154 (= e!4658064 (and tp!2347786 tp!2347790))))

(declare-fun b!7890153 () Bool)

(declare-fun tp!2347787 () Bool)

(assert (=> b!7890153 (= e!4658064 tp!2347787)))

(declare-fun b!7890151 () Bool)

(assert (=> b!7890151 (= e!4658064 tp_is_empty!52821)))

(assert (= (and b!7889048 ((_ is ElementMatch!21211) (regTwo!42935 (reg!21540 (reg!21540 r!14100))))) b!7890151))

(assert (= (and b!7889048 ((_ is Concat!30056) (regTwo!42935 (reg!21540 (reg!21540 r!14100))))) b!7890152))

(assert (= (and b!7889048 ((_ is Star!21211) (regTwo!42935 (reg!21540 (reg!21540 r!14100))))) b!7890153))

(assert (= (and b!7889048 ((_ is Union!21211) (regTwo!42935 (reg!21540 (reg!21540 r!14100))))) b!7890154))

(declare-fun b!7890156 () Bool)

(declare-fun e!4658065 () Bool)

(declare-fun tp!2347794 () Bool)

(declare-fun tp!2347793 () Bool)

(assert (=> b!7890156 (= e!4658065 (and tp!2347794 tp!2347793))))

(assert (=> b!7889096 (= tp!2347030 e!4658065)))

(declare-fun b!7890158 () Bool)

(declare-fun tp!2347791 () Bool)

(declare-fun tp!2347795 () Bool)

(assert (=> b!7890158 (= e!4658065 (and tp!2347791 tp!2347795))))

(declare-fun b!7890157 () Bool)

(declare-fun tp!2347792 () Bool)

(assert (=> b!7890157 (= e!4658065 tp!2347792)))

(declare-fun b!7890155 () Bool)

(assert (=> b!7890155 (= e!4658065 tp_is_empty!52821)))

(assert (= (and b!7889096 ((_ is ElementMatch!21211) (reg!21540 (regTwo!42934 (regTwo!42934 r!14100))))) b!7890155))

(assert (= (and b!7889096 ((_ is Concat!30056) (reg!21540 (regTwo!42934 (regTwo!42934 r!14100))))) b!7890156))

(assert (= (and b!7889096 ((_ is Star!21211) (reg!21540 (regTwo!42934 (regTwo!42934 r!14100))))) b!7890157))

(assert (= (and b!7889096 ((_ is Union!21211) (reg!21540 (regTwo!42934 (regTwo!42934 r!14100))))) b!7890158))

(declare-fun b!7890160 () Bool)

(declare-fun e!4658066 () Bool)

(declare-fun tp!2347799 () Bool)

(declare-fun tp!2347798 () Bool)

(assert (=> b!7890160 (= e!4658066 (and tp!2347799 tp!2347798))))

(assert (=> b!7889034 (= tp!2346953 e!4658066)))

(declare-fun b!7890162 () Bool)

(declare-fun tp!2347796 () Bool)

(declare-fun tp!2347800 () Bool)

(assert (=> b!7890162 (= e!4658066 (and tp!2347796 tp!2347800))))

(declare-fun b!7890161 () Bool)

(declare-fun tp!2347797 () Bool)

(assert (=> b!7890161 (= e!4658066 tp!2347797)))

(declare-fun b!7890159 () Bool)

(assert (=> b!7890159 (= e!4658066 tp_is_empty!52821)))

(assert (= (and b!7889034 ((_ is ElementMatch!21211) (reg!21540 (regTwo!42934 (regTwo!42935 r!14100))))) b!7890159))

(assert (= (and b!7889034 ((_ is Concat!30056) (reg!21540 (regTwo!42934 (regTwo!42935 r!14100))))) b!7890160))

(assert (= (and b!7889034 ((_ is Star!21211) (reg!21540 (regTwo!42934 (regTwo!42935 r!14100))))) b!7890161))

(assert (= (and b!7889034 ((_ is Union!21211) (reg!21540 (regTwo!42934 (regTwo!42935 r!14100))))) b!7890162))

(declare-fun b!7890164 () Bool)

(declare-fun e!4658067 () Bool)

(declare-fun tp!2347804 () Bool)

(declare-fun tp!2347803 () Bool)

(assert (=> b!7890164 (= e!4658067 (and tp!2347804 tp!2347803))))

(assert (=> b!7889128 (= tp!2347068 e!4658067)))

(declare-fun b!7890166 () Bool)

(declare-fun tp!2347801 () Bool)

(declare-fun tp!2347805 () Bool)

(assert (=> b!7890166 (= e!4658067 (and tp!2347801 tp!2347805))))

(declare-fun b!7890165 () Bool)

(declare-fun tp!2347802 () Bool)

(assert (=> b!7890165 (= e!4658067 tp!2347802)))

(declare-fun b!7890163 () Bool)

(assert (=> b!7890163 (= e!4658067 tp_is_empty!52821)))

(assert (= (and b!7889128 ((_ is ElementMatch!21211) (regOne!42934 (regTwo!42934 (regOne!42935 r!14100))))) b!7890163))

(assert (= (and b!7889128 ((_ is Concat!30056) (regOne!42934 (regTwo!42934 (regOne!42935 r!14100))))) b!7890164))

(assert (= (and b!7889128 ((_ is Star!21211) (regOne!42934 (regTwo!42934 (regOne!42935 r!14100))))) b!7890165))

(assert (= (and b!7889128 ((_ is Union!21211) (regOne!42934 (regTwo!42934 (regOne!42935 r!14100))))) b!7890166))

(declare-fun b!7890168 () Bool)

(declare-fun e!4658068 () Bool)

(declare-fun tp!2347809 () Bool)

(declare-fun tp!2347808 () Bool)

(assert (=> b!7890168 (= e!4658068 (and tp!2347809 tp!2347808))))

(assert (=> b!7889128 (= tp!2347067 e!4658068)))

(declare-fun b!7890170 () Bool)

(declare-fun tp!2347806 () Bool)

(declare-fun tp!2347810 () Bool)

(assert (=> b!7890170 (= e!4658068 (and tp!2347806 tp!2347810))))

(declare-fun b!7890169 () Bool)

(declare-fun tp!2347807 () Bool)

(assert (=> b!7890169 (= e!4658068 tp!2347807)))

(declare-fun b!7890167 () Bool)

(assert (=> b!7890167 (= e!4658068 tp_is_empty!52821)))

(assert (= (and b!7889128 ((_ is ElementMatch!21211) (regTwo!42934 (regTwo!42934 (regOne!42935 r!14100))))) b!7890167))

(assert (= (and b!7889128 ((_ is Concat!30056) (regTwo!42934 (regTwo!42934 (regOne!42935 r!14100))))) b!7890168))

(assert (= (and b!7889128 ((_ is Star!21211) (regTwo!42934 (regTwo!42934 (regOne!42935 r!14100))))) b!7890169))

(assert (= (and b!7889128 ((_ is Union!21211) (regTwo!42934 (regTwo!42934 (regOne!42935 r!14100))))) b!7890170))

(declare-fun b!7890172 () Bool)

(declare-fun e!4658069 () Bool)

(declare-fun tp!2347814 () Bool)

(declare-fun tp!2347813 () Bool)

(assert (=> b!7890172 (= e!4658069 (and tp!2347814 tp!2347813))))

(assert (=> b!7889114 (= tp!2347050 e!4658069)))

(declare-fun b!7890174 () Bool)

(declare-fun tp!2347811 () Bool)

(declare-fun tp!2347815 () Bool)

(assert (=> b!7890174 (= e!4658069 (and tp!2347811 tp!2347815))))

(declare-fun b!7890173 () Bool)

(declare-fun tp!2347812 () Bool)

(assert (=> b!7890173 (= e!4658069 tp!2347812)))

(declare-fun b!7890171 () Bool)

(assert (=> b!7890171 (= e!4658069 tp_is_empty!52821)))

(assert (= (and b!7889114 ((_ is ElementMatch!21211) (regOne!42935 (regTwo!42935 (regTwo!42935 r!14100))))) b!7890171))

(assert (= (and b!7889114 ((_ is Concat!30056) (regOne!42935 (regTwo!42935 (regTwo!42935 r!14100))))) b!7890172))

(assert (= (and b!7889114 ((_ is Star!21211) (regOne!42935 (regTwo!42935 (regTwo!42935 r!14100))))) b!7890173))

(assert (= (and b!7889114 ((_ is Union!21211) (regOne!42935 (regTwo!42935 (regTwo!42935 r!14100))))) b!7890174))

(declare-fun b!7890176 () Bool)

(declare-fun e!4658070 () Bool)

(declare-fun tp!2347819 () Bool)

(declare-fun tp!2347818 () Bool)

(assert (=> b!7890176 (= e!4658070 (and tp!2347819 tp!2347818))))

(assert (=> b!7889114 (= tp!2347054 e!4658070)))

(declare-fun b!7890178 () Bool)

(declare-fun tp!2347816 () Bool)

(declare-fun tp!2347820 () Bool)

(assert (=> b!7890178 (= e!4658070 (and tp!2347816 tp!2347820))))

(declare-fun b!7890177 () Bool)

(declare-fun tp!2347817 () Bool)

(assert (=> b!7890177 (= e!4658070 tp!2347817)))

(declare-fun b!7890175 () Bool)

(assert (=> b!7890175 (= e!4658070 tp_is_empty!52821)))

(assert (= (and b!7889114 ((_ is ElementMatch!21211) (regTwo!42935 (regTwo!42935 (regTwo!42935 r!14100))))) b!7890175))

(assert (= (and b!7889114 ((_ is Concat!30056) (regTwo!42935 (regTwo!42935 (regTwo!42935 r!14100))))) b!7890176))

(assert (= (and b!7889114 ((_ is Star!21211) (regTwo!42935 (regTwo!42935 (regTwo!42935 r!14100))))) b!7890177))

(assert (= (and b!7889114 ((_ is Union!21211) (regTwo!42935 (regTwo!42935 (regTwo!42935 r!14100))))) b!7890178))

(declare-fun b!7890180 () Bool)

(declare-fun e!4658071 () Bool)

(declare-fun tp!2347824 () Bool)

(declare-fun tp!2347823 () Bool)

(assert (=> b!7890180 (= e!4658071 (and tp!2347824 tp!2347823))))

(assert (=> b!7889112 (= tp!2347053 e!4658071)))

(declare-fun b!7890182 () Bool)

(declare-fun tp!2347821 () Bool)

(declare-fun tp!2347825 () Bool)

(assert (=> b!7890182 (= e!4658071 (and tp!2347821 tp!2347825))))

(declare-fun b!7890181 () Bool)

(declare-fun tp!2347822 () Bool)

(assert (=> b!7890181 (= e!4658071 tp!2347822)))

(declare-fun b!7890179 () Bool)

(assert (=> b!7890179 (= e!4658071 tp_is_empty!52821)))

(assert (= (and b!7889112 ((_ is ElementMatch!21211) (regOne!42934 (regTwo!42935 (regTwo!42935 r!14100))))) b!7890179))

(assert (= (and b!7889112 ((_ is Concat!30056) (regOne!42934 (regTwo!42935 (regTwo!42935 r!14100))))) b!7890180))

(assert (= (and b!7889112 ((_ is Star!21211) (regOne!42934 (regTwo!42935 (regTwo!42935 r!14100))))) b!7890181))

(assert (= (and b!7889112 ((_ is Union!21211) (regOne!42934 (regTwo!42935 (regTwo!42935 r!14100))))) b!7890182))

(declare-fun b!7890184 () Bool)

(declare-fun e!4658072 () Bool)

(declare-fun tp!2347829 () Bool)

(declare-fun tp!2347828 () Bool)

(assert (=> b!7890184 (= e!4658072 (and tp!2347829 tp!2347828))))

(assert (=> b!7889112 (= tp!2347052 e!4658072)))

(declare-fun b!7890186 () Bool)

(declare-fun tp!2347826 () Bool)

(declare-fun tp!2347830 () Bool)

(assert (=> b!7890186 (= e!4658072 (and tp!2347826 tp!2347830))))

(declare-fun b!7890185 () Bool)

(declare-fun tp!2347827 () Bool)

(assert (=> b!7890185 (= e!4658072 tp!2347827)))

(declare-fun b!7890183 () Bool)

(assert (=> b!7890183 (= e!4658072 tp_is_empty!52821)))

(assert (= (and b!7889112 ((_ is ElementMatch!21211) (regTwo!42934 (regTwo!42935 (regTwo!42935 r!14100))))) b!7890183))

(assert (= (and b!7889112 ((_ is Concat!30056) (regTwo!42934 (regTwo!42935 (regTwo!42935 r!14100))))) b!7890184))

(assert (= (and b!7889112 ((_ is Star!21211) (regTwo!42934 (regTwo!42935 (regTwo!42935 r!14100))))) b!7890185))

(assert (= (and b!7889112 ((_ is Union!21211) (regTwo!42934 (regTwo!42935 (regTwo!42935 r!14100))))) b!7890186))

(check-sat (not b!7889623) (not b!7890081) (not bm!732197) (not b!7889855) (not b!7890096) (not b!7889826) (not b!7890041) (not b!7890180) (not b!7890053) (not b!7889307) (not b!7889964) (not bm!732177) (not bm!732207) (not bm!732155) (not b!7889731) (not b!7889983) (not b!7890040) (not bm!732087) (not b!7889691) (not b!7889798) (not b!7889815) (not b!7890049) (not b!7890178) (not b!7890125) (not d!2356836) (not b!7889807) (not b!7889920) (not b!7889886) (not b!7889787) (not b!7890142) (not b!7889987) (not bm!732164) (not b!7889791) (not b!7889903) (not b!7890094) (not b!7890137) (not b!7889851) (not b!7890048) (not b!7889763) (not b!7889902) (not d!2356810) (not b!7889831) (not b!7889918) (not b!7889765) (not b!7890044) (not b!7890153) (not bm!732074) (not b!7890032) (not b!7889907) (not b!7889693) (not bm!732171) (not b!7889689) (not b!7889755) (not b!7889891) (not b!7890074) (not bm!732101) (not b!7890154) (not b!7890126) (not b!7889852) (not b!7890080) (not b!7889943) (not b!7890082) (not b!7889989) (not b!7889726) (not b!7890145) (not b!7889698) (not b!7889820) (not b!7890104) (not b!7890060) (not bm!732109) (not b!7889741) (not b!7889713) (not bm!732121) (not b!7890051) (not b!7890110) (not b!7889529) (not bm!732204) (not b!7889976) (not b!7890108) (not b!7890035) (not bm!732112) (not bm!732161) (not b!7889874) (not b!7889721) (not b!7889745) (not b!7889835) (not b!7889930) (not b!7890024) (not b!7889963) (not b!7889981) (not b!7889727) (not b!7890031) (not b!7890043) (not b!7889860) (not b!7889890) (not b!7890097) (not b!7889895) (not b!7890162) (not b!7889959) (not b!7890028) (not b!7889936) (not b!7890001) (not b!7889858) (not bm!732089) (not b!7889778) (not b!7889839) (not b!7889832) (not b!7889819) (not bm!732116) (not b!7890156) (not b!7890015) (not b!7890020) (not b!7889882) (not b!7890062) (not bm!732174) (not b!7889896) (not b!7890089) (not b!7889988) (not bm!732125) (not b!7889747) (not b!7890017) (not b!7889984) (not b!7890174) (not b!7889757) (not b!7889690) (not bm!732133) (not b!7889785) (not b!7889846) (not b!7889850) (not b!7889779) (not b!7889868) (not b!7890077) (not b!7889823) (not b!7890176) (not b!7889965) (not b!7889703) (not bm!732141) (not bm!732132) (not b!7889900) (not b!7890027) (not b!7889781) (not b!7890130) (not b!7889848) (not b!7890148) (not b!7889730) (not b!7889887) (not b!7889953) (not b!7890134) (not bm!732148) (not b!7889729) (not b!7890008) (not b!7889314) (not b!7890090) (not b!7889927) (not b!7889604) (not b!7890136) (not b!7889871) (not b!7889795) (not b!7889912) (not bm!732127) (not b!7889723) (not bm!732202) (not b!7890076) (not b!7890098) (not b!7890172) (not b!7890182) (not b!7889878) (not b!7889733) (not b!7889770) (not b!7889955) (not b!7889786) (not bm!732118) (not b!7889810) (not b!7889923) (not b!7889939) (not b!7890109) (not bm!732157) (not b!7890121) (not b!7889719) (not b!7890120) (not bm!732211) (not b!7889715) (not b!7889904) (not b!7889919) (not bm!732180) (not b!7889767) (not b!7890173) (not bm!732195) tp_is_empty!52821 (not b!7890016) (not bm!732187) (not b!7890019) (not b!7889484) (not b!7889702) (not b!7889437) (not b!7890106) (not b!7890000) (not b!7889790) (not b!7890003) (not b!7889969) (not b!7889754) (not bm!732114) (not b!7890117) (not b!7890059) (not b!7890004) (not b!7889695) (not b!7889968) (not b!7889967) (not b!7889812) (not b!7890036) (not d!2356858) (not b!7890102) (not b!7889856) (not bm!732152) (not b!7889827) (not b!7889938) (not b!7889738) (not b!7889866) (not b!7889899) (not b!7890084) (not b!7890045) (not bm!732079) (not bm!732095) (not bm!732184) (not b!7889870) (not b!7889840) (not bm!732094) (not b!7889507) (not bm!732085) (not b!7889794) (not b!7889995) (not b!7889814) (not b!7889717) (not b!7889734) (not b!7889884) (not b!7889526) (not b!7889800) (not bm!732099) (not bm!732082) (not b!7889996) (not b!7889803) (not bm!732158) (not b!7889961) (not bm!732154) (not b!7889694) (not b!7889977) (not b!7889380) (not b!7889699) (not bm!732140) (not b!7889761) (not b!7889926) (not bm!732136) (not bm!732081) (not b!7889783) (not b!7889830) (not b!7889777) (not b!7890166) (not b!7889985) (not b!7889973) (not b!7890160) (not b!7890132) (not b!7889862) (not b!7890061) (not b!7889916) (not b!7889949) (not b!7889769) (not b!7890055) (not b!7890146) (not b!7890070) (not b!7889528) (not b!7890150) (not b!7889630) (not bm!732120) (not b!7889796) (not bm!732172) (not b!7889705) (not b!7889585) (not b!7890013) (not bm!732088) (not b!7890023) (not b!7890128) (not bm!732186) (not b!7889742) (not b!7889928) (not b!7890158) (not b!7889710) (not b!7889875) (not bm!732210) (not b!7890113) (not bm!732198) (not b!7890185) (not b!7889806) (not b!7889774) (not b!7889972) (not b!7889686) (not b!7889922) (not b!7889915) (not b!7890066) (not bm!732209) (not bm!732083) (not b!7889898) (not b!7889753) (not b!7889879) (not b!7890009) (not b!7889867) (not b!7889759) (not b!7889934) (not b!7890085) (not b!7889746) (not b!7889822) (not b!7889854) (not bm!732096) (not b!7889910) (not b!7889737) (not b!7890069) (not bm!732076) (not bm!732149) (not b!7890093) (not bm!732145) (not b!7889775) (not bm!732168) (not b!7889924) (not bm!732191) (not b!7889335) (not bm!732200) (not b!7889824) (not b!7889863) (not b!7890029) (not b!7889991) (not b!7889838) (not b!7889718) (not bm!732142) (not d!2356846) (not bm!732143) (not b!7890047) (not b!7889935) (not b!7889888) (not bm!732182) (not b!7890114) (not b!7889931) (not b!7890012) (not bm!732090) (not b!7890112) (not b!7890011) (not bm!732163) (not bm!732165) (not b!7889945) (not bm!732150) (not bm!732078) (not b!7889971) (not b!7890105) (not b!7889751) (not b!7889711) (not bm!732134) (not b!7889979) (not b!7889999) (not b!7889773) (not bm!732107) (not b!7889808) (not b!7890007) (not b!7889722) (not b!7889942) (not b!7889749) (not b!7889944) (not bm!732103) (not bm!732196) (not b!7889940) (not b!7889697) (not b!7889714) (not b!7890086) (not b!7889975) (not b!7890052) (not b!7890138) (not b!7890144) (not bm!732123) (not b!7890033) (not b!7889771) (not bm!732104) (not bm!732097) (not b!7889872) (not b!7889883) (not b!7890122) (not b!7889911) (not b!7890088) (not b!7889818) (not bm!732119) (not b!7889836) (not b!7889906) (not b!7890152) (not b!7890039) (not b!7890129) (not b!7889782) (not b!7890161) (not bm!732106) (not b!7889947) (not b!7890177) (not b!7889739) (not bm!732113) (not b!7889828) (not b!7889750) (not bm!732156) (not b!7889843) (not bm!732159) (not b!7889956) (not b!7889532) (not b!7889932) (not b!7889952) (not b!7889766) (not b!7889792) (not b!7889701) (not b!7889811) (not b!7890037) (not b!7889859) (not b!7890170) (not b!7889685) (not b!7890068) (not b!7890021) (not d!2356852) (not b!7889844) (not b!7890100) (not b!7889378) (not bm!732166) (not b!7890133) (not b!7889707) (not b!7889997) (not b!7889980) (not b!7889435) (not b!7890073) (not b!7890186) (not b!7889951) (not b!7890184) (not bm!732169) (not b!7890092) (not b!7889914) (not b!7889725) (not b!7890124) (not b!7890169) (not b!7889505) (not b!7889789) (not bm!732181) (not b!7889908) (not b!7889842) (not b!7890168) (not bm!732080) (not b!7889735) (not b!7889539) (not b!7890057) (not b!7890064) (not bm!732139) (not bm!732111) (not b!7889880) (not b!7890005) (not b!7889576) (not b!7890116) (not bm!732126) (not b!7889992) (not b!7890140) (not b!7889948) (not bm!732175) (not bm!732188) (not b!7889687) (not b!7889709) (not b!7889743) (not b!7890164) (not bm!732203) (not b!7890078) (not b!7890025) (not b!7889957) (not b!7889993) (not b!7889892) (not b!7890165) (not b!7889758) (not b!7889804) (not bm!732138) (not b!7889399) (not b!7890157) (not bm!732179) (not b!7889706) (not b!7889876) (not bm!732092) (not bm!732102) (not b!7889816) (not b!7889834) (not b!7890181) (not b!7889864) (not b!7890056) (not b!7889567) (not b!7890149) (not bm!732190) (not b!7889802) (not b!7890101) (not bm!732189) (not b!7889960) (not b!7890141) (not b!7889799) (not b!7889847) (not b!7890065) (not b!7889894) (not b!7889762) (not b!7890072) (not b!7890118) (not bm!732147) (not bm!732193) (not bm!732205) (not b!7889477))
(check-sat)
