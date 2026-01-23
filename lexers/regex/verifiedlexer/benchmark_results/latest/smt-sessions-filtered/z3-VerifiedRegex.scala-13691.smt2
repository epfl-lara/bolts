; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!732988 () Bool)

(assert start!732988)

(declare-fun b!7603439 () Bool)

(assert (=> b!7603439 true))

(assert (=> b!7603439 true))

(assert (=> b!7603439 true))

(declare-fun b!7603435 () Bool)

(declare-fun e!4523088 () Bool)

(declare-fun tp_is_empty!50709 () Bool)

(assert (=> b!7603435 (= e!4523088 tp_is_empty!50709)))

(declare-fun b!7603436 () Bool)

(declare-fun res!3044492 () Bool)

(declare-fun e!4523087 () Bool)

(assert (=> b!7603436 (=> (not res!3044492) (not e!4523087))))

(declare-datatypes ((C!40680 0))(
  ( (C!40681 (val!30780 Int)) )
))
(declare-datatypes ((Regex!20177 0))(
  ( (ElementMatch!20177 (c!1402366 C!40680)) (Concat!29022 (regOne!40866 Regex!20177) (regTwo!40866 Regex!20177)) (EmptyExpr!20177) (Star!20177 (reg!20506 Regex!20177)) (EmptyLang!20177) (Union!20177 (regOne!40867 Regex!20177) (regTwo!40867 Regex!20177)) )
))
(declare-fun r2!3249 () Regex!20177)

(declare-fun validRegex!10605 (Regex!20177) Bool)

(assert (=> b!7603436 (= res!3044492 (validRegex!10605 r2!3249))))

(declare-fun b!7603437 () Bool)

(declare-fun tp!2217394 () Bool)

(assert (=> b!7603437 (= e!4523088 tp!2217394)))

(declare-fun b!7603438 () Bool)

(declare-fun e!4523090 () Bool)

(declare-fun tp!2217393 () Bool)

(declare-fun tp!2217396 () Bool)

(assert (=> b!7603438 (= e!4523090 (and tp!2217393 tp!2217396))))

(declare-fun res!3044490 () Bool)

(assert (=> b!7603439 (=> (not res!3044490) (not e!4523087))))

(declare-fun lambda!467873 () Int)

(declare-fun Exists!4405 (Int) Bool)

(assert (=> b!7603439 (= res!3044490 (Exists!4405 lambda!467873))))

(declare-fun b!7603440 () Bool)

(declare-fun tp!2217397 () Bool)

(declare-fun tp!2217392 () Bool)

(assert (=> b!7603440 (= e!4523088 (and tp!2217397 tp!2217392))))

(declare-fun res!3044489 () Bool)

(assert (=> start!732988 (=> (not res!3044489) (not e!4523087))))

(declare-fun r1!3349 () Regex!20177)

(assert (=> start!732988 (= res!3044489 (validRegex!10605 r1!3349))))

(assert (=> start!732988 e!4523087))

(assert (=> start!732988 e!4523090))

(assert (=> start!732988 e!4523088))

(declare-fun e!4523091 () Bool)

(assert (=> start!732988 e!4523091))

(declare-fun b!7603441 () Bool)

(assert (=> b!7603441 (= e!4523090 tp_is_empty!50709)))

(declare-fun b!7603442 () Bool)

(declare-fun tp!2217399 () Bool)

(declare-fun tp!2217398 () Bool)

(assert (=> b!7603442 (= e!4523090 (and tp!2217399 tp!2217398))))

(declare-fun b!7603443 () Bool)

(declare-fun tp!2217391 () Bool)

(declare-fun tp!2217395 () Bool)

(assert (=> b!7603443 (= e!4523088 (and tp!2217391 tp!2217395))))

(declare-fun b!7603444 () Bool)

(declare-fun e!4523089 () Bool)

(assert (=> b!7603444 (= e!4523087 e!4523089)))

(declare-fun res!3044491 () Bool)

(assert (=> b!7603444 (=> (not res!3044491) (not e!4523089))))

(declare-datatypes ((List!73060 0))(
  ( (Nil!72936) (Cons!72936 (h!79384 C!40680) (t!387795 List!73060)) )
))
(declare-datatypes ((tuple2!69068 0))(
  ( (tuple2!69069 (_1!37837 List!73060) (_2!37837 List!73060)) )
))
(declare-fun lt!2654595 () tuple2!69068)

(declare-fun s!10235 () List!73060)

(declare-fun ++!17577 (List!73060 List!73060) List!73060)

(assert (=> b!7603444 (= res!3044491 (= (++!17577 (_1!37837 lt!2654595) (_2!37837 lt!2654595)) s!10235))))

(declare-fun pickWitness!422 (Int) tuple2!69068)

(assert (=> b!7603444 (= lt!2654595 (pickWitness!422 lambda!467873))))

(declare-fun b!7603445 () Bool)

(declare-fun tp!2217400 () Bool)

(assert (=> b!7603445 (= e!4523091 (and tp_is_empty!50709 tp!2217400))))

(declare-fun b!7603446 () Bool)

(declare-fun tp!2217401 () Bool)

(assert (=> b!7603446 (= e!4523090 tp!2217401)))

(declare-fun b!7603447 () Bool)

(declare-fun lt!2654596 () Bool)

(declare-fun lt!2654598 () Bool)

(assert (=> b!7603447 (= e!4523089 (not (or (not lt!2654596) lt!2654598)))))

(declare-fun matchRSpec!4454 (Regex!20177 List!73060) Bool)

(assert (=> b!7603447 (= lt!2654598 (matchRSpec!4454 r2!3249 (_2!37837 lt!2654595)))))

(declare-fun matchR!9742 (Regex!20177 List!73060) Bool)

(assert (=> b!7603447 (= lt!2654598 (matchR!9742 r2!3249 (_2!37837 lt!2654595)))))

(declare-datatypes ((Unit!167238 0))(
  ( (Unit!167239) )
))
(declare-fun lt!2654594 () Unit!167238)

(declare-fun mainMatchTheorem!4448 (Regex!20177 List!73060) Unit!167238)

(assert (=> b!7603447 (= lt!2654594 (mainMatchTheorem!4448 r2!3249 (_2!37837 lt!2654595)))))

(assert (=> b!7603447 (= lt!2654596 (matchRSpec!4454 r1!3349 (_1!37837 lt!2654595)))))

(assert (=> b!7603447 (= lt!2654596 (matchR!9742 r1!3349 (_1!37837 lt!2654595)))))

(declare-fun lt!2654597 () Unit!167238)

(assert (=> b!7603447 (= lt!2654597 (mainMatchTheorem!4448 r1!3349 (_1!37837 lt!2654595)))))

(assert (= (and start!732988 res!3044489) b!7603436))

(assert (= (and b!7603436 res!3044492) b!7603439))

(assert (= (and b!7603439 res!3044490) b!7603444))

(assert (= (and b!7603444 res!3044491) b!7603447))

(get-info :version)

(assert (= (and start!732988 ((_ is ElementMatch!20177) r1!3349)) b!7603441))

(assert (= (and start!732988 ((_ is Concat!29022) r1!3349)) b!7603442))

(assert (= (and start!732988 ((_ is Star!20177) r1!3349)) b!7603446))

(assert (= (and start!732988 ((_ is Union!20177) r1!3349)) b!7603438))

(assert (= (and start!732988 ((_ is ElementMatch!20177) r2!3249)) b!7603435))

(assert (= (and start!732988 ((_ is Concat!29022) r2!3249)) b!7603443))

(assert (= (and start!732988 ((_ is Star!20177) r2!3249)) b!7603437))

(assert (= (and start!732988 ((_ is Union!20177) r2!3249)) b!7603440))

(assert (= (and start!732988 ((_ is Cons!72936) s!10235)) b!7603445))

(declare-fun m!8145780 () Bool)

(assert (=> b!7603444 m!8145780))

(declare-fun m!8145782 () Bool)

(assert (=> b!7603444 m!8145782))

(declare-fun m!8145784 () Bool)

(assert (=> b!7603447 m!8145784))

(declare-fun m!8145786 () Bool)

(assert (=> b!7603447 m!8145786))

(declare-fun m!8145788 () Bool)

(assert (=> b!7603447 m!8145788))

(declare-fun m!8145790 () Bool)

(assert (=> b!7603447 m!8145790))

(declare-fun m!8145792 () Bool)

(assert (=> b!7603447 m!8145792))

(declare-fun m!8145794 () Bool)

(assert (=> b!7603447 m!8145794))

(declare-fun m!8145796 () Bool)

(assert (=> b!7603439 m!8145796))

(declare-fun m!8145798 () Bool)

(assert (=> start!732988 m!8145798))

(declare-fun m!8145800 () Bool)

(assert (=> b!7603436 m!8145800))

(check-sat (not b!7603439) (not b!7603436) (not b!7603446) (not b!7603444) (not b!7603447) (not b!7603442) (not b!7603437) (not start!732988) (not b!7603438) (not b!7603440) (not b!7603443) tp_is_empty!50709 (not b!7603445))
(check-sat)
(get-model)

(declare-fun bm!698127 () Bool)

(declare-fun c!1402377 () Bool)

(declare-fun c!1402378 () Bool)

(declare-fun call!698134 () Bool)

(assert (=> bm!698127 (= call!698134 (validRegex!10605 (ite c!1402378 (reg!20506 r1!3349) (ite c!1402377 (regOne!40867 r1!3349) (regTwo!40866 r1!3349)))))))

(declare-fun b!7603497 () Bool)

(declare-fun e!4523127 () Bool)

(declare-fun e!4523133 () Bool)

(assert (=> b!7603497 (= e!4523127 e!4523133)))

(assert (=> b!7603497 (= c!1402377 ((_ is Union!20177) r1!3349))))

(declare-fun b!7603498 () Bool)

(declare-fun res!3044518 () Bool)

(declare-fun e!4523130 () Bool)

(assert (=> b!7603498 (=> res!3044518 e!4523130)))

(assert (=> b!7603498 (= res!3044518 (not ((_ is Concat!29022) r1!3349)))))

(assert (=> b!7603498 (= e!4523133 e!4523130)))

(declare-fun d!2321586 () Bool)

(declare-fun res!3044522 () Bool)

(declare-fun e!4523131 () Bool)

(assert (=> d!2321586 (=> res!3044522 e!4523131)))

(assert (=> d!2321586 (= res!3044522 ((_ is ElementMatch!20177) r1!3349))))

(assert (=> d!2321586 (= (validRegex!10605 r1!3349) e!4523131)))

(declare-fun b!7603499 () Bool)

(declare-fun e!4523132 () Bool)

(declare-fun call!698133 () Bool)

(assert (=> b!7603499 (= e!4523132 call!698133)))

(declare-fun b!7603500 () Bool)

(declare-fun e!4523128 () Bool)

(declare-fun call!698132 () Bool)

(assert (=> b!7603500 (= e!4523128 call!698132)))

(declare-fun b!7603501 () Bool)

(declare-fun e!4523129 () Bool)

(assert (=> b!7603501 (= e!4523129 call!698134)))

(declare-fun b!7603502 () Bool)

(assert (=> b!7603502 (= e!4523130 e!4523128)))

(declare-fun res!3044521 () Bool)

(assert (=> b!7603502 (=> (not res!3044521) (not e!4523128))))

(assert (=> b!7603502 (= res!3044521 call!698133)))

(declare-fun bm!698128 () Bool)

(assert (=> bm!698128 (= call!698132 call!698134)))

(declare-fun b!7603503 () Bool)

(assert (=> b!7603503 (= e!4523127 e!4523129)))

(declare-fun res!3044520 () Bool)

(declare-fun nullable!8808 (Regex!20177) Bool)

(assert (=> b!7603503 (= res!3044520 (not (nullable!8808 (reg!20506 r1!3349))))))

(assert (=> b!7603503 (=> (not res!3044520) (not e!4523129))))

(declare-fun b!7603504 () Bool)

(declare-fun res!3044519 () Bool)

(assert (=> b!7603504 (=> (not res!3044519) (not e!4523132))))

(assert (=> b!7603504 (= res!3044519 call!698132)))

(assert (=> b!7603504 (= e!4523133 e!4523132)))

(declare-fun bm!698129 () Bool)

(assert (=> bm!698129 (= call!698133 (validRegex!10605 (ite c!1402377 (regTwo!40867 r1!3349) (regOne!40866 r1!3349))))))

(declare-fun b!7603505 () Bool)

(assert (=> b!7603505 (= e!4523131 e!4523127)))

(assert (=> b!7603505 (= c!1402378 ((_ is Star!20177) r1!3349))))

(assert (= (and d!2321586 (not res!3044522)) b!7603505))

(assert (= (and b!7603505 c!1402378) b!7603503))

(assert (= (and b!7603505 (not c!1402378)) b!7603497))

(assert (= (and b!7603503 res!3044520) b!7603501))

(assert (= (and b!7603497 c!1402377) b!7603504))

(assert (= (and b!7603497 (not c!1402377)) b!7603498))

(assert (= (and b!7603504 res!3044519) b!7603499))

(assert (= (and b!7603498 (not res!3044518)) b!7603502))

(assert (= (and b!7603502 res!3044521) b!7603500))

(assert (= (or b!7603499 b!7603502) bm!698129))

(assert (= (or b!7603504 b!7603500) bm!698128))

(assert (= (or b!7603501 bm!698128) bm!698127))

(declare-fun m!8145804 () Bool)

(assert (=> bm!698127 m!8145804))

(declare-fun m!8145806 () Bool)

(assert (=> b!7603503 m!8145806))

(declare-fun m!8145812 () Bool)

(assert (=> bm!698129 m!8145812))

(assert (=> start!732988 d!2321586))

(declare-fun d!2321588 () Bool)

(declare-fun choose!58699 (Int) Bool)

(assert (=> d!2321588 (= (Exists!4405 lambda!467873) (choose!58699 lambda!467873))))

(declare-fun bs!1942493 () Bool)

(assert (= bs!1942493 d!2321588))

(declare-fun m!8145816 () Bool)

(assert (=> bs!1942493 m!8145816))

(assert (=> b!7603439 d!2321588))

(declare-fun b!7603525 () Bool)

(declare-fun res!3044532 () Bool)

(declare-fun e!4523146 () Bool)

(assert (=> b!7603525 (=> (not res!3044532) (not e!4523146))))

(declare-fun lt!2654601 () List!73060)

(declare-fun size!42513 (List!73060) Int)

(assert (=> b!7603525 (= res!3044532 (= (size!42513 lt!2654601) (+ (size!42513 (_1!37837 lt!2654595)) (size!42513 (_2!37837 lt!2654595)))))))

(declare-fun b!7603523 () Bool)

(declare-fun e!4523145 () List!73060)

(assert (=> b!7603523 (= e!4523145 (_2!37837 lt!2654595))))

(declare-fun b!7603524 () Bool)

(assert (=> b!7603524 (= e!4523145 (Cons!72936 (h!79384 (_1!37837 lt!2654595)) (++!17577 (t!387795 (_1!37837 lt!2654595)) (_2!37837 lt!2654595))))))

(declare-fun d!2321594 () Bool)

(assert (=> d!2321594 e!4523146))

(declare-fun res!3044533 () Bool)

(assert (=> d!2321594 (=> (not res!3044533) (not e!4523146))))

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!15420 (List!73060) (InoxSet C!40680))

(assert (=> d!2321594 (= res!3044533 (= (content!15420 lt!2654601) ((_ map or) (content!15420 (_1!37837 lt!2654595)) (content!15420 (_2!37837 lt!2654595)))))))

(assert (=> d!2321594 (= lt!2654601 e!4523145)))

(declare-fun c!1402383 () Bool)

(assert (=> d!2321594 (= c!1402383 ((_ is Nil!72936) (_1!37837 lt!2654595)))))

(assert (=> d!2321594 (= (++!17577 (_1!37837 lt!2654595) (_2!37837 lt!2654595)) lt!2654601)))

(declare-fun b!7603526 () Bool)

(assert (=> b!7603526 (= e!4523146 (or (not (= (_2!37837 lt!2654595) Nil!72936)) (= lt!2654601 (_1!37837 lt!2654595))))))

(assert (= (and d!2321594 c!1402383) b!7603523))

(assert (= (and d!2321594 (not c!1402383)) b!7603524))

(assert (= (and d!2321594 res!3044533) b!7603525))

(assert (= (and b!7603525 res!3044532) b!7603526))

(declare-fun m!8145824 () Bool)

(assert (=> b!7603525 m!8145824))

(declare-fun m!8145826 () Bool)

(assert (=> b!7603525 m!8145826))

(declare-fun m!8145828 () Bool)

(assert (=> b!7603525 m!8145828))

(declare-fun m!8145830 () Bool)

(assert (=> b!7603524 m!8145830))

(declare-fun m!8145832 () Bool)

(assert (=> d!2321594 m!8145832))

(declare-fun m!8145834 () Bool)

(assert (=> d!2321594 m!8145834))

(declare-fun m!8145836 () Bool)

(assert (=> d!2321594 m!8145836))

(assert (=> b!7603444 d!2321594))

(declare-fun d!2321598 () Bool)

(declare-fun lt!2654606 () tuple2!69068)

(declare-fun dynLambda!29901 (Int tuple2!69068) Bool)

(assert (=> d!2321598 (dynLambda!29901 lambda!467873 lt!2654606)))

(declare-fun choose!58700 (Int) tuple2!69068)

(assert (=> d!2321598 (= lt!2654606 (choose!58700 lambda!467873))))

(assert (=> d!2321598 (Exists!4405 lambda!467873)))

(assert (=> d!2321598 (= (pickWitness!422 lambda!467873) lt!2654606)))

(declare-fun b_lambda!288923 () Bool)

(assert (=> (not b_lambda!288923) (not d!2321598)))

(declare-fun bs!1942495 () Bool)

(assert (= bs!1942495 d!2321598))

(declare-fun m!8145838 () Bool)

(assert (=> bs!1942495 m!8145838))

(declare-fun m!8145840 () Bool)

(assert (=> bs!1942495 m!8145840))

(assert (=> bs!1942495 m!8145796))

(assert (=> b!7603444 d!2321598))

(declare-fun bs!1942497 () Bool)

(declare-fun b!7603627 () Bool)

(assert (= bs!1942497 (and b!7603627 b!7603439)))

(declare-fun lambda!467878 () Int)

(assert (=> bs!1942497 (not (= lambda!467878 lambda!467873))))

(assert (=> b!7603627 true))

(assert (=> b!7603627 true))

(declare-fun bs!1942498 () Bool)

(declare-fun b!7603621 () Bool)

(assert (= bs!1942498 (and b!7603621 b!7603439)))

(declare-fun lambda!467879 () Int)

(assert (=> bs!1942498 (not (= lambda!467879 lambda!467873))))

(declare-fun bs!1942499 () Bool)

(assert (= bs!1942499 (and b!7603621 b!7603627)))

(assert (=> bs!1942499 (not (= lambda!467879 lambda!467878))))

(assert (=> b!7603621 true))

(assert (=> b!7603621 true))

(declare-fun bm!698141 () Bool)

(declare-fun call!698146 () Bool)

(declare-fun isEmpty!41569 (List!73060) Bool)

(assert (=> bm!698141 (= call!698146 (isEmpty!41569 (_2!37837 lt!2654595)))))

(declare-fun b!7603619 () Bool)

(declare-fun c!1402404 () Bool)

(assert (=> b!7603619 (= c!1402404 ((_ is Union!20177) r2!3249))))

(declare-fun e!4523196 () Bool)

(declare-fun e!4523199 () Bool)

(assert (=> b!7603619 (= e!4523196 e!4523199)))

(declare-fun b!7603620 () Bool)

(declare-fun res!3044582 () Bool)

(declare-fun e!4523193 () Bool)

(assert (=> b!7603620 (=> res!3044582 e!4523193)))

(assert (=> b!7603620 (= res!3044582 call!698146)))

(declare-fun e!4523197 () Bool)

(assert (=> b!7603620 (= e!4523197 e!4523193)))

(declare-fun call!698147 () Bool)

(assert (=> b!7603621 (= e!4523197 call!698147)))

(declare-fun b!7603622 () Bool)

(assert (=> b!7603622 (= e!4523196 (= (_2!37837 lt!2654595) (Cons!72936 (c!1402366 r2!3249) Nil!72936)))))

(declare-fun b!7603623 () Bool)

(assert (=> b!7603623 (= e!4523199 e!4523197)))

(declare-fun c!1402406 () Bool)

(assert (=> b!7603623 (= c!1402406 ((_ is Star!20177) r2!3249))))

(declare-fun d!2321600 () Bool)

(declare-fun c!1402407 () Bool)

(assert (=> d!2321600 (= c!1402407 ((_ is EmptyExpr!20177) r2!3249))))

(declare-fun e!4523194 () Bool)

(assert (=> d!2321600 (= (matchRSpec!4454 r2!3249 (_2!37837 lt!2654595)) e!4523194)))

(declare-fun b!7603624 () Bool)

(declare-fun e!4523195 () Bool)

(assert (=> b!7603624 (= e!4523194 e!4523195)))

(declare-fun res!3044584 () Bool)

(assert (=> b!7603624 (= res!3044584 (not ((_ is EmptyLang!20177) r2!3249)))))

(assert (=> b!7603624 (=> (not res!3044584) (not e!4523195))))

(declare-fun bm!698142 () Bool)

(assert (=> bm!698142 (= call!698147 (Exists!4405 (ite c!1402406 lambda!467878 lambda!467879)))))

(declare-fun b!7603625 () Bool)

(declare-fun e!4523198 () Bool)

(assert (=> b!7603625 (= e!4523199 e!4523198)))

(declare-fun res!3044583 () Bool)

(assert (=> b!7603625 (= res!3044583 (matchRSpec!4454 (regOne!40867 r2!3249) (_2!37837 lt!2654595)))))

(assert (=> b!7603625 (=> res!3044583 e!4523198)))

(declare-fun b!7603626 () Bool)

(assert (=> b!7603626 (= e!4523198 (matchRSpec!4454 (regTwo!40867 r2!3249) (_2!37837 lt!2654595)))))

(assert (=> b!7603627 (= e!4523193 call!698147)))

(declare-fun b!7603628 () Bool)

(declare-fun c!1402405 () Bool)

(assert (=> b!7603628 (= c!1402405 ((_ is ElementMatch!20177) r2!3249))))

(assert (=> b!7603628 (= e!4523195 e!4523196)))

(declare-fun b!7603629 () Bool)

(assert (=> b!7603629 (= e!4523194 call!698146)))

(assert (= (and d!2321600 c!1402407) b!7603629))

(assert (= (and d!2321600 (not c!1402407)) b!7603624))

(assert (= (and b!7603624 res!3044584) b!7603628))

(assert (= (and b!7603628 c!1402405) b!7603622))

(assert (= (and b!7603628 (not c!1402405)) b!7603619))

(assert (= (and b!7603619 c!1402404) b!7603625))

(assert (= (and b!7603619 (not c!1402404)) b!7603623))

(assert (= (and b!7603625 (not res!3044583)) b!7603626))

(assert (= (and b!7603623 c!1402406) b!7603620))

(assert (= (and b!7603623 (not c!1402406)) b!7603621))

(assert (= (and b!7603620 (not res!3044582)) b!7603627))

(assert (= (or b!7603627 b!7603621) bm!698142))

(assert (= (or b!7603629 b!7603620) bm!698141))

(declare-fun m!8145872 () Bool)

(assert (=> bm!698141 m!8145872))

(declare-fun m!8145874 () Bool)

(assert (=> bm!698142 m!8145874))

(declare-fun m!8145876 () Bool)

(assert (=> b!7603625 m!8145876))

(declare-fun m!8145878 () Bool)

(assert (=> b!7603626 m!8145878))

(assert (=> b!7603447 d!2321600))

(declare-fun d!2321608 () Bool)

(assert (=> d!2321608 (= (matchR!9742 r2!3249 (_2!37837 lt!2654595)) (matchRSpec!4454 r2!3249 (_2!37837 lt!2654595)))))

(declare-fun lt!2654614 () Unit!167238)

(declare-fun choose!58701 (Regex!20177 List!73060) Unit!167238)

(assert (=> d!2321608 (= lt!2654614 (choose!58701 r2!3249 (_2!37837 lt!2654595)))))

(assert (=> d!2321608 (validRegex!10605 r2!3249)))

(assert (=> d!2321608 (= (mainMatchTheorem!4448 r2!3249 (_2!37837 lt!2654595)) lt!2654614)))

(declare-fun bs!1942500 () Bool)

(assert (= bs!1942500 d!2321608))

(assert (=> bs!1942500 m!8145788))

(assert (=> bs!1942500 m!8145786))

(declare-fun m!8145880 () Bool)

(assert (=> bs!1942500 m!8145880))

(assert (=> bs!1942500 m!8145800))

(assert (=> b!7603447 d!2321608))

(declare-fun d!2321610 () Bool)

(declare-fun e!4523246 () Bool)

(assert (=> d!2321610 e!4523246))

(declare-fun c!1402430 () Bool)

(assert (=> d!2321610 (= c!1402430 ((_ is EmptyExpr!20177) r1!3349))))

(declare-fun lt!2654618 () Bool)

(declare-fun e!4523251 () Bool)

(assert (=> d!2321610 (= lt!2654618 e!4523251)))

(declare-fun c!1402431 () Bool)

(assert (=> d!2321610 (= c!1402431 (isEmpty!41569 (_1!37837 lt!2654595)))))

(assert (=> d!2321610 (validRegex!10605 r1!3349)))

(assert (=> d!2321610 (= (matchR!9742 r1!3349 (_1!37837 lt!2654595)) lt!2654618)))

(declare-fun b!7603708 () Bool)

(declare-fun e!4523248 () Bool)

(declare-fun head!15632 (List!73060) C!40680)

(assert (=> b!7603708 (= e!4523248 (not (= (head!15632 (_1!37837 lt!2654595)) (c!1402366 r1!3349))))))

(declare-fun b!7603709 () Bool)

(declare-fun e!4523250 () Bool)

(assert (=> b!7603709 (= e!4523250 (not lt!2654618))))

(declare-fun b!7603710 () Bool)

(declare-fun res!3044629 () Bool)

(declare-fun e!4523252 () Bool)

(assert (=> b!7603710 (=> res!3044629 e!4523252)))

(assert (=> b!7603710 (= res!3044629 (not ((_ is ElementMatch!20177) r1!3349)))))

(assert (=> b!7603710 (= e!4523250 e!4523252)))

(declare-fun b!7603711 () Bool)

(assert (=> b!7603711 (= e!4523246 e!4523250)))

(declare-fun c!1402432 () Bool)

(assert (=> b!7603711 (= c!1402432 ((_ is EmptyLang!20177) r1!3349))))

(declare-fun b!7603712 () Bool)

(declare-fun e!4523249 () Bool)

(assert (=> b!7603712 (= e!4523252 e!4523249)))

(declare-fun res!3044625 () Bool)

(assert (=> b!7603712 (=> (not res!3044625) (not e!4523249))))

(assert (=> b!7603712 (= res!3044625 (not lt!2654618))))

(declare-fun bm!698153 () Bool)

(declare-fun call!698158 () Bool)

(assert (=> bm!698153 (= call!698158 (isEmpty!41569 (_1!37837 lt!2654595)))))

(declare-fun b!7603713 () Bool)

(assert (=> b!7603713 (= e!4523251 (nullable!8808 r1!3349))))

(declare-fun b!7603714 () Bool)

(assert (=> b!7603714 (= e!4523246 (= lt!2654618 call!698158))))

(declare-fun b!7603715 () Bool)

(declare-fun derivativeStep!5832 (Regex!20177 C!40680) Regex!20177)

(declare-fun tail!15172 (List!73060) List!73060)

(assert (=> b!7603715 (= e!4523251 (matchR!9742 (derivativeStep!5832 r1!3349 (head!15632 (_1!37837 lt!2654595))) (tail!15172 (_1!37837 lt!2654595))))))

(declare-fun b!7603716 () Bool)

(assert (=> b!7603716 (= e!4523249 e!4523248)))

(declare-fun res!3044623 () Bool)

(assert (=> b!7603716 (=> res!3044623 e!4523248)))

(assert (=> b!7603716 (= res!3044623 call!698158)))

(declare-fun b!7603717 () Bool)

(declare-fun res!3044626 () Bool)

(declare-fun e!4523247 () Bool)

(assert (=> b!7603717 (=> (not res!3044626) (not e!4523247))))

(assert (=> b!7603717 (= res!3044626 (isEmpty!41569 (tail!15172 (_1!37837 lt!2654595))))))

(declare-fun b!7603718 () Bool)

(declare-fun res!3044628 () Bool)

(assert (=> b!7603718 (=> res!3044628 e!4523252)))

(assert (=> b!7603718 (= res!3044628 e!4523247)))

(declare-fun res!3044627 () Bool)

(assert (=> b!7603718 (=> (not res!3044627) (not e!4523247))))

(assert (=> b!7603718 (= res!3044627 lt!2654618)))

(declare-fun b!7603719 () Bool)

(assert (=> b!7603719 (= e!4523247 (= (head!15632 (_1!37837 lt!2654595)) (c!1402366 r1!3349)))))

(declare-fun b!7603720 () Bool)

(declare-fun res!3044630 () Bool)

(assert (=> b!7603720 (=> (not res!3044630) (not e!4523247))))

(assert (=> b!7603720 (= res!3044630 (not call!698158))))

(declare-fun b!7603721 () Bool)

(declare-fun res!3044624 () Bool)

(assert (=> b!7603721 (=> res!3044624 e!4523248)))

(assert (=> b!7603721 (= res!3044624 (not (isEmpty!41569 (tail!15172 (_1!37837 lt!2654595)))))))

(assert (= (and d!2321610 c!1402431) b!7603713))

(assert (= (and d!2321610 (not c!1402431)) b!7603715))

(assert (= (and d!2321610 c!1402430) b!7603714))

(assert (= (and d!2321610 (not c!1402430)) b!7603711))

(assert (= (and b!7603711 c!1402432) b!7603709))

(assert (= (and b!7603711 (not c!1402432)) b!7603710))

(assert (= (and b!7603710 (not res!3044629)) b!7603718))

(assert (= (and b!7603718 res!3044627) b!7603720))

(assert (= (and b!7603720 res!3044630) b!7603717))

(assert (= (and b!7603717 res!3044626) b!7603719))

(assert (= (and b!7603718 (not res!3044628)) b!7603712))

(assert (= (and b!7603712 res!3044625) b!7603716))

(assert (= (and b!7603716 (not res!3044623)) b!7603721))

(assert (= (and b!7603721 (not res!3044624)) b!7603708))

(assert (= (or b!7603714 b!7603716 b!7603720) bm!698153))

(declare-fun m!8145896 () Bool)

(assert (=> b!7603719 m!8145896))

(assert (=> b!7603708 m!8145896))

(declare-fun m!8145898 () Bool)

(assert (=> bm!698153 m!8145898))

(declare-fun m!8145900 () Bool)

(assert (=> b!7603717 m!8145900))

(assert (=> b!7603717 m!8145900))

(declare-fun m!8145902 () Bool)

(assert (=> b!7603717 m!8145902))

(declare-fun m!8145904 () Bool)

(assert (=> b!7603713 m!8145904))

(assert (=> d!2321610 m!8145898))

(assert (=> d!2321610 m!8145798))

(assert (=> b!7603715 m!8145896))

(assert (=> b!7603715 m!8145896))

(declare-fun m!8145906 () Bool)

(assert (=> b!7603715 m!8145906))

(assert (=> b!7603715 m!8145900))

(assert (=> b!7603715 m!8145906))

(assert (=> b!7603715 m!8145900))

(declare-fun m!8145908 () Bool)

(assert (=> b!7603715 m!8145908))

(assert (=> b!7603721 m!8145900))

(assert (=> b!7603721 m!8145900))

(assert (=> b!7603721 m!8145902))

(assert (=> b!7603447 d!2321610))

(declare-fun d!2321618 () Bool)

(declare-fun e!4523257 () Bool)

(assert (=> d!2321618 e!4523257))

(declare-fun c!1402435 () Bool)

(assert (=> d!2321618 (= c!1402435 ((_ is EmptyExpr!20177) r2!3249))))

(declare-fun lt!2654621 () Bool)

(declare-fun e!4523262 () Bool)

(assert (=> d!2321618 (= lt!2654621 e!4523262)))

(declare-fun c!1402436 () Bool)

(assert (=> d!2321618 (= c!1402436 (isEmpty!41569 (_2!37837 lt!2654595)))))

(assert (=> d!2321618 (validRegex!10605 r2!3249)))

(assert (=> d!2321618 (= (matchR!9742 r2!3249 (_2!37837 lt!2654595)) lt!2654621)))

(declare-fun b!7603730 () Bool)

(declare-fun e!4523259 () Bool)

(assert (=> b!7603730 (= e!4523259 (not (= (head!15632 (_2!37837 lt!2654595)) (c!1402366 r2!3249))))))

(declare-fun b!7603731 () Bool)

(declare-fun e!4523261 () Bool)

(assert (=> b!7603731 (= e!4523261 (not lt!2654621))))

(declare-fun b!7603732 () Bool)

(declare-fun res!3044641 () Bool)

(declare-fun e!4523263 () Bool)

(assert (=> b!7603732 (=> res!3044641 e!4523263)))

(assert (=> b!7603732 (= res!3044641 (not ((_ is ElementMatch!20177) r2!3249)))))

(assert (=> b!7603732 (= e!4523261 e!4523263)))

(declare-fun b!7603733 () Bool)

(assert (=> b!7603733 (= e!4523257 e!4523261)))

(declare-fun c!1402437 () Bool)

(assert (=> b!7603733 (= c!1402437 ((_ is EmptyLang!20177) r2!3249))))

(declare-fun b!7603734 () Bool)

(declare-fun e!4523260 () Bool)

(assert (=> b!7603734 (= e!4523263 e!4523260)))

(declare-fun res!3044637 () Bool)

(assert (=> b!7603734 (=> (not res!3044637) (not e!4523260))))

(assert (=> b!7603734 (= res!3044637 (not lt!2654621))))

(declare-fun bm!698154 () Bool)

(declare-fun call!698159 () Bool)

(assert (=> bm!698154 (= call!698159 (isEmpty!41569 (_2!37837 lt!2654595)))))

(declare-fun b!7603735 () Bool)

(assert (=> b!7603735 (= e!4523262 (nullable!8808 r2!3249))))

(declare-fun b!7603736 () Bool)

(assert (=> b!7603736 (= e!4523257 (= lt!2654621 call!698159))))

(declare-fun b!7603737 () Bool)

(assert (=> b!7603737 (= e!4523262 (matchR!9742 (derivativeStep!5832 r2!3249 (head!15632 (_2!37837 lt!2654595))) (tail!15172 (_2!37837 lt!2654595))))))

(declare-fun b!7603738 () Bool)

(assert (=> b!7603738 (= e!4523260 e!4523259)))

(declare-fun res!3044635 () Bool)

(assert (=> b!7603738 (=> res!3044635 e!4523259)))

(assert (=> b!7603738 (= res!3044635 call!698159)))

(declare-fun b!7603739 () Bool)

(declare-fun res!3044638 () Bool)

(declare-fun e!4523258 () Bool)

(assert (=> b!7603739 (=> (not res!3044638) (not e!4523258))))

(assert (=> b!7603739 (= res!3044638 (isEmpty!41569 (tail!15172 (_2!37837 lt!2654595))))))

(declare-fun b!7603740 () Bool)

(declare-fun res!3044640 () Bool)

(assert (=> b!7603740 (=> res!3044640 e!4523263)))

(assert (=> b!7603740 (= res!3044640 e!4523258)))

(declare-fun res!3044639 () Bool)

(assert (=> b!7603740 (=> (not res!3044639) (not e!4523258))))

(assert (=> b!7603740 (= res!3044639 lt!2654621)))

(declare-fun b!7603741 () Bool)

(assert (=> b!7603741 (= e!4523258 (= (head!15632 (_2!37837 lt!2654595)) (c!1402366 r2!3249)))))

(declare-fun b!7603742 () Bool)

(declare-fun res!3044642 () Bool)

(assert (=> b!7603742 (=> (not res!3044642) (not e!4523258))))

(assert (=> b!7603742 (= res!3044642 (not call!698159))))

(declare-fun b!7603743 () Bool)

(declare-fun res!3044636 () Bool)

(assert (=> b!7603743 (=> res!3044636 e!4523259)))

(assert (=> b!7603743 (= res!3044636 (not (isEmpty!41569 (tail!15172 (_2!37837 lt!2654595)))))))

(assert (= (and d!2321618 c!1402436) b!7603735))

(assert (= (and d!2321618 (not c!1402436)) b!7603737))

(assert (= (and d!2321618 c!1402435) b!7603736))

(assert (= (and d!2321618 (not c!1402435)) b!7603733))

(assert (= (and b!7603733 c!1402437) b!7603731))

(assert (= (and b!7603733 (not c!1402437)) b!7603732))

(assert (= (and b!7603732 (not res!3044641)) b!7603740))

(assert (= (and b!7603740 res!3044639) b!7603742))

(assert (= (and b!7603742 res!3044642) b!7603739))

(assert (= (and b!7603739 res!3044638) b!7603741))

(assert (= (and b!7603740 (not res!3044640)) b!7603734))

(assert (= (and b!7603734 res!3044637) b!7603738))

(assert (= (and b!7603738 (not res!3044635)) b!7603743))

(assert (= (and b!7603743 (not res!3044636)) b!7603730))

(assert (= (or b!7603736 b!7603738 b!7603742) bm!698154))

(declare-fun m!8145910 () Bool)

(assert (=> b!7603741 m!8145910))

(assert (=> b!7603730 m!8145910))

(assert (=> bm!698154 m!8145872))

(declare-fun m!8145912 () Bool)

(assert (=> b!7603739 m!8145912))

(assert (=> b!7603739 m!8145912))

(declare-fun m!8145914 () Bool)

(assert (=> b!7603739 m!8145914))

(declare-fun m!8145916 () Bool)

(assert (=> b!7603735 m!8145916))

(assert (=> d!2321618 m!8145872))

(assert (=> d!2321618 m!8145800))

(assert (=> b!7603737 m!8145910))

(assert (=> b!7603737 m!8145910))

(declare-fun m!8145918 () Bool)

(assert (=> b!7603737 m!8145918))

(assert (=> b!7603737 m!8145912))

(assert (=> b!7603737 m!8145918))

(assert (=> b!7603737 m!8145912))

(declare-fun m!8145920 () Bool)

(assert (=> b!7603737 m!8145920))

(assert (=> b!7603743 m!8145912))

(assert (=> b!7603743 m!8145912))

(assert (=> b!7603743 m!8145914))

(assert (=> b!7603447 d!2321618))

(declare-fun bs!1942512 () Bool)

(declare-fun b!7603752 () Bool)

(assert (= bs!1942512 (and b!7603752 b!7603439)))

(declare-fun lambda!467888 () Int)

(assert (=> bs!1942512 (not (= lambda!467888 lambda!467873))))

(declare-fun bs!1942513 () Bool)

(assert (= bs!1942513 (and b!7603752 b!7603627)))

(assert (=> bs!1942513 (= (and (= (_1!37837 lt!2654595) (_2!37837 lt!2654595)) (= (reg!20506 r1!3349) (reg!20506 r2!3249)) (= r1!3349 r2!3249)) (= lambda!467888 lambda!467878))))

(declare-fun bs!1942514 () Bool)

(assert (= bs!1942514 (and b!7603752 b!7603621)))

(assert (=> bs!1942514 (not (= lambda!467888 lambda!467879))))

(assert (=> b!7603752 true))

(assert (=> b!7603752 true))

(declare-fun bs!1942515 () Bool)

(declare-fun b!7603746 () Bool)

(assert (= bs!1942515 (and b!7603746 b!7603439)))

(declare-fun lambda!467889 () Int)

(assert (=> bs!1942515 (not (= lambda!467889 lambda!467873))))

(declare-fun bs!1942516 () Bool)

(assert (= bs!1942516 (and b!7603746 b!7603627)))

(assert (=> bs!1942516 (not (= lambda!467889 lambda!467878))))

(declare-fun bs!1942517 () Bool)

(assert (= bs!1942517 (and b!7603746 b!7603621)))

(assert (=> bs!1942517 (= (and (= (_1!37837 lt!2654595) (_2!37837 lt!2654595)) (= (regOne!40866 r1!3349) (regOne!40866 r2!3249)) (= (regTwo!40866 r1!3349) (regTwo!40866 r2!3249))) (= lambda!467889 lambda!467879))))

(declare-fun bs!1942518 () Bool)

(assert (= bs!1942518 (and b!7603746 b!7603752)))

(assert (=> bs!1942518 (not (= lambda!467889 lambda!467888))))

(assert (=> b!7603746 true))

(assert (=> b!7603746 true))

(declare-fun bm!698155 () Bool)

(declare-fun call!698160 () Bool)

(assert (=> bm!698155 (= call!698160 (isEmpty!41569 (_1!37837 lt!2654595)))))

(declare-fun b!7603744 () Bool)

(declare-fun c!1402438 () Bool)

(assert (=> b!7603744 (= c!1402438 ((_ is Union!20177) r1!3349))))

(declare-fun e!4523267 () Bool)

(declare-fun e!4523270 () Bool)

(assert (=> b!7603744 (= e!4523267 e!4523270)))

(declare-fun b!7603745 () Bool)

(declare-fun res!3044643 () Bool)

(declare-fun e!4523264 () Bool)

(assert (=> b!7603745 (=> res!3044643 e!4523264)))

(assert (=> b!7603745 (= res!3044643 call!698160)))

(declare-fun e!4523268 () Bool)

(assert (=> b!7603745 (= e!4523268 e!4523264)))

(declare-fun call!698161 () Bool)

(assert (=> b!7603746 (= e!4523268 call!698161)))

(declare-fun b!7603747 () Bool)

(assert (=> b!7603747 (= e!4523267 (= (_1!37837 lt!2654595) (Cons!72936 (c!1402366 r1!3349) Nil!72936)))))

(declare-fun b!7603748 () Bool)

(assert (=> b!7603748 (= e!4523270 e!4523268)))

(declare-fun c!1402440 () Bool)

(assert (=> b!7603748 (= c!1402440 ((_ is Star!20177) r1!3349))))

(declare-fun d!2321620 () Bool)

(declare-fun c!1402441 () Bool)

(assert (=> d!2321620 (= c!1402441 ((_ is EmptyExpr!20177) r1!3349))))

(declare-fun e!4523265 () Bool)

(assert (=> d!2321620 (= (matchRSpec!4454 r1!3349 (_1!37837 lt!2654595)) e!4523265)))

(declare-fun b!7603749 () Bool)

(declare-fun e!4523266 () Bool)

(assert (=> b!7603749 (= e!4523265 e!4523266)))

(declare-fun res!3044645 () Bool)

(assert (=> b!7603749 (= res!3044645 (not ((_ is EmptyLang!20177) r1!3349)))))

(assert (=> b!7603749 (=> (not res!3044645) (not e!4523266))))

(declare-fun bm!698156 () Bool)

(assert (=> bm!698156 (= call!698161 (Exists!4405 (ite c!1402440 lambda!467888 lambda!467889)))))

(declare-fun b!7603750 () Bool)

(declare-fun e!4523269 () Bool)

(assert (=> b!7603750 (= e!4523270 e!4523269)))

(declare-fun res!3044644 () Bool)

(assert (=> b!7603750 (= res!3044644 (matchRSpec!4454 (regOne!40867 r1!3349) (_1!37837 lt!2654595)))))

(assert (=> b!7603750 (=> res!3044644 e!4523269)))

(declare-fun b!7603751 () Bool)

(assert (=> b!7603751 (= e!4523269 (matchRSpec!4454 (regTwo!40867 r1!3349) (_1!37837 lt!2654595)))))

(assert (=> b!7603752 (= e!4523264 call!698161)))

(declare-fun b!7603753 () Bool)

(declare-fun c!1402439 () Bool)

(assert (=> b!7603753 (= c!1402439 ((_ is ElementMatch!20177) r1!3349))))

(assert (=> b!7603753 (= e!4523266 e!4523267)))

(declare-fun b!7603754 () Bool)

(assert (=> b!7603754 (= e!4523265 call!698160)))

(assert (= (and d!2321620 c!1402441) b!7603754))

(assert (= (and d!2321620 (not c!1402441)) b!7603749))

(assert (= (and b!7603749 res!3044645) b!7603753))

(assert (= (and b!7603753 c!1402439) b!7603747))

(assert (= (and b!7603753 (not c!1402439)) b!7603744))

(assert (= (and b!7603744 c!1402438) b!7603750))

(assert (= (and b!7603744 (not c!1402438)) b!7603748))

(assert (= (and b!7603750 (not res!3044644)) b!7603751))

(assert (= (and b!7603748 c!1402440) b!7603745))

(assert (= (and b!7603748 (not c!1402440)) b!7603746))

(assert (= (and b!7603745 (not res!3044643)) b!7603752))

(assert (= (or b!7603752 b!7603746) bm!698156))

(assert (= (or b!7603754 b!7603745) bm!698155))

(assert (=> bm!698155 m!8145898))

(declare-fun m!8145940 () Bool)

(assert (=> bm!698156 m!8145940))

(declare-fun m!8145942 () Bool)

(assert (=> b!7603750 m!8145942))

(declare-fun m!8145944 () Bool)

(assert (=> b!7603751 m!8145944))

(assert (=> b!7603447 d!2321620))

(declare-fun d!2321624 () Bool)

(assert (=> d!2321624 (= (matchR!9742 r1!3349 (_1!37837 lt!2654595)) (matchRSpec!4454 r1!3349 (_1!37837 lt!2654595)))))

(declare-fun lt!2654626 () Unit!167238)

(assert (=> d!2321624 (= lt!2654626 (choose!58701 r1!3349 (_1!37837 lt!2654595)))))

(assert (=> d!2321624 (validRegex!10605 r1!3349)))

(assert (=> d!2321624 (= (mainMatchTheorem!4448 r1!3349 (_1!37837 lt!2654595)) lt!2654626)))

(declare-fun bs!1942520 () Bool)

(assert (= bs!1942520 d!2321624))

(assert (=> bs!1942520 m!8145790))

(assert (=> bs!1942520 m!8145794))

(declare-fun m!8145946 () Bool)

(assert (=> bs!1942520 m!8145946))

(assert (=> bs!1942520 m!8145798))

(assert (=> b!7603447 d!2321624))

(declare-fun c!1402443 () Bool)

(declare-fun call!698164 () Bool)

(declare-fun bm!698157 () Bool)

(declare-fun c!1402444 () Bool)

(assert (=> bm!698157 (= call!698164 (validRegex!10605 (ite c!1402444 (reg!20506 r2!3249) (ite c!1402443 (regOne!40867 r2!3249) (regTwo!40866 r2!3249)))))))

(declare-fun b!7603769 () Bool)

(declare-fun e!4523275 () Bool)

(declare-fun e!4523281 () Bool)

(assert (=> b!7603769 (= e!4523275 e!4523281)))

(assert (=> b!7603769 (= c!1402443 ((_ is Union!20177) r2!3249))))

(declare-fun b!7603770 () Bool)

(declare-fun res!3044648 () Bool)

(declare-fun e!4523278 () Bool)

(assert (=> b!7603770 (=> res!3044648 e!4523278)))

(assert (=> b!7603770 (= res!3044648 (not ((_ is Concat!29022) r2!3249)))))

(assert (=> b!7603770 (= e!4523281 e!4523278)))

(declare-fun d!2321626 () Bool)

(declare-fun res!3044652 () Bool)

(declare-fun e!4523279 () Bool)

(assert (=> d!2321626 (=> res!3044652 e!4523279)))

(assert (=> d!2321626 (= res!3044652 ((_ is ElementMatch!20177) r2!3249))))

(assert (=> d!2321626 (= (validRegex!10605 r2!3249) e!4523279)))

(declare-fun b!7603771 () Bool)

(declare-fun e!4523280 () Bool)

(declare-fun call!698163 () Bool)

(assert (=> b!7603771 (= e!4523280 call!698163)))

(declare-fun b!7603772 () Bool)

(declare-fun e!4523276 () Bool)

(declare-fun call!698162 () Bool)

(assert (=> b!7603772 (= e!4523276 call!698162)))

(declare-fun b!7603773 () Bool)

(declare-fun e!4523277 () Bool)

(assert (=> b!7603773 (= e!4523277 call!698164)))

(declare-fun b!7603774 () Bool)

(assert (=> b!7603774 (= e!4523278 e!4523276)))

(declare-fun res!3044651 () Bool)

(assert (=> b!7603774 (=> (not res!3044651) (not e!4523276))))

(assert (=> b!7603774 (= res!3044651 call!698163)))

(declare-fun bm!698158 () Bool)

(assert (=> bm!698158 (= call!698162 call!698164)))

(declare-fun b!7603775 () Bool)

(assert (=> b!7603775 (= e!4523275 e!4523277)))

(declare-fun res!3044650 () Bool)

(assert (=> b!7603775 (= res!3044650 (not (nullable!8808 (reg!20506 r2!3249))))))

(assert (=> b!7603775 (=> (not res!3044650) (not e!4523277))))

(declare-fun b!7603776 () Bool)

(declare-fun res!3044649 () Bool)

(assert (=> b!7603776 (=> (not res!3044649) (not e!4523280))))

(assert (=> b!7603776 (= res!3044649 call!698162)))

(assert (=> b!7603776 (= e!4523281 e!4523280)))

(declare-fun bm!698159 () Bool)

(assert (=> bm!698159 (= call!698163 (validRegex!10605 (ite c!1402443 (regTwo!40867 r2!3249) (regOne!40866 r2!3249))))))

(declare-fun b!7603777 () Bool)

(assert (=> b!7603777 (= e!4523279 e!4523275)))

(assert (=> b!7603777 (= c!1402444 ((_ is Star!20177) r2!3249))))

(assert (= (and d!2321626 (not res!3044652)) b!7603777))

(assert (= (and b!7603777 c!1402444) b!7603775))

(assert (= (and b!7603777 (not c!1402444)) b!7603769))

(assert (= (and b!7603775 res!3044650) b!7603773))

(assert (= (and b!7603769 c!1402443) b!7603776))

(assert (= (and b!7603769 (not c!1402443)) b!7603770))

(assert (= (and b!7603776 res!3044649) b!7603771))

(assert (= (and b!7603770 (not res!3044648)) b!7603774))

(assert (= (and b!7603774 res!3044651) b!7603772))

(assert (= (or b!7603771 b!7603774) bm!698159))

(assert (= (or b!7603776 b!7603772) bm!698158))

(assert (= (or b!7603773 bm!698158) bm!698157))

(declare-fun m!8145948 () Bool)

(assert (=> bm!698157 m!8145948))

(declare-fun m!8145950 () Bool)

(assert (=> b!7603775 m!8145950))

(declare-fun m!8145952 () Bool)

(assert (=> bm!698159 m!8145952))

(assert (=> b!7603436 d!2321626))

(declare-fun b!7603826 () Bool)

(declare-fun e!4523293 () Bool)

(declare-fun tp!2217469 () Bool)

(assert (=> b!7603826 (= e!4523293 tp!2217469)))

(declare-fun b!7603824 () Bool)

(assert (=> b!7603824 (= e!4523293 tp_is_empty!50709)))

(assert (=> b!7603443 (= tp!2217391 e!4523293)))

(declare-fun b!7603825 () Bool)

(declare-fun tp!2217467 () Bool)

(declare-fun tp!2217468 () Bool)

(assert (=> b!7603825 (= e!4523293 (and tp!2217467 tp!2217468))))

(declare-fun b!7603827 () Bool)

(declare-fun tp!2217470 () Bool)

(declare-fun tp!2217471 () Bool)

(assert (=> b!7603827 (= e!4523293 (and tp!2217470 tp!2217471))))

(assert (= (and b!7603443 ((_ is ElementMatch!20177) (regOne!40866 r2!3249))) b!7603824))

(assert (= (and b!7603443 ((_ is Concat!29022) (regOne!40866 r2!3249))) b!7603825))

(assert (= (and b!7603443 ((_ is Star!20177) (regOne!40866 r2!3249))) b!7603826))

(assert (= (and b!7603443 ((_ is Union!20177) (regOne!40866 r2!3249))) b!7603827))

(declare-fun b!7603837 () Bool)

(declare-fun e!4523295 () Bool)

(declare-fun tp!2217479 () Bool)

(assert (=> b!7603837 (= e!4523295 tp!2217479)))

(declare-fun b!7603834 () Bool)

(assert (=> b!7603834 (= e!4523295 tp_is_empty!50709)))

(assert (=> b!7603443 (= tp!2217395 e!4523295)))

(declare-fun b!7603835 () Bool)

(declare-fun tp!2217477 () Bool)

(declare-fun tp!2217478 () Bool)

(assert (=> b!7603835 (= e!4523295 (and tp!2217477 tp!2217478))))

(declare-fun b!7603839 () Bool)

(declare-fun tp!2217480 () Bool)

(declare-fun tp!2217481 () Bool)

(assert (=> b!7603839 (= e!4523295 (and tp!2217480 tp!2217481))))

(assert (= (and b!7603443 ((_ is ElementMatch!20177) (regTwo!40866 r2!3249))) b!7603834))

(assert (= (and b!7603443 ((_ is Concat!29022) (regTwo!40866 r2!3249))) b!7603835))

(assert (= (and b!7603443 ((_ is Star!20177) (regTwo!40866 r2!3249))) b!7603837))

(assert (= (and b!7603443 ((_ is Union!20177) (regTwo!40866 r2!3249))) b!7603839))

(declare-fun b!7603842 () Bool)

(declare-fun e!4523298 () Bool)

(declare-fun tp!2217486 () Bool)

(assert (=> b!7603842 (= e!4523298 tp!2217486)))

(declare-fun b!7603840 () Bool)

(assert (=> b!7603840 (= e!4523298 tp_is_empty!50709)))

(assert (=> b!7603438 (= tp!2217393 e!4523298)))

(declare-fun b!7603841 () Bool)

(declare-fun tp!2217484 () Bool)

(declare-fun tp!2217485 () Bool)

(assert (=> b!7603841 (= e!4523298 (and tp!2217484 tp!2217485))))

(declare-fun b!7603843 () Bool)

(declare-fun tp!2217487 () Bool)

(declare-fun tp!2217488 () Bool)

(assert (=> b!7603843 (= e!4523298 (and tp!2217487 tp!2217488))))

(assert (= (and b!7603438 ((_ is ElementMatch!20177) (regOne!40867 r1!3349))) b!7603840))

(assert (= (and b!7603438 ((_ is Concat!29022) (regOne!40867 r1!3349))) b!7603841))

(assert (= (and b!7603438 ((_ is Star!20177) (regOne!40867 r1!3349))) b!7603842))

(assert (= (and b!7603438 ((_ is Union!20177) (regOne!40867 r1!3349))) b!7603843))

(declare-fun b!7603847 () Bool)

(declare-fun e!4523300 () Bool)

(declare-fun tp!2217492 () Bool)

(assert (=> b!7603847 (= e!4523300 tp!2217492)))

(declare-fun b!7603845 () Bool)

(assert (=> b!7603845 (= e!4523300 tp_is_empty!50709)))

(assert (=> b!7603438 (= tp!2217396 e!4523300)))

(declare-fun b!7603846 () Bool)

(declare-fun tp!2217490 () Bool)

(declare-fun tp!2217491 () Bool)

(assert (=> b!7603846 (= e!4523300 (and tp!2217490 tp!2217491))))

(declare-fun b!7603848 () Bool)

(declare-fun tp!2217493 () Bool)

(declare-fun tp!2217494 () Bool)

(assert (=> b!7603848 (= e!4523300 (and tp!2217493 tp!2217494))))

(assert (= (and b!7603438 ((_ is ElementMatch!20177) (regTwo!40867 r1!3349))) b!7603845))

(assert (= (and b!7603438 ((_ is Concat!29022) (regTwo!40867 r1!3349))) b!7603846))

(assert (= (and b!7603438 ((_ is Star!20177) (regTwo!40867 r1!3349))) b!7603847))

(assert (= (and b!7603438 ((_ is Union!20177) (regTwo!40867 r1!3349))) b!7603848))

(declare-fun b!7603851 () Bool)

(declare-fun e!4523301 () Bool)

(declare-fun tp!2217497 () Bool)

(assert (=> b!7603851 (= e!4523301 tp!2217497)))

(declare-fun b!7603849 () Bool)

(assert (=> b!7603849 (= e!4523301 tp_is_empty!50709)))

(assert (=> b!7603437 (= tp!2217394 e!4523301)))

(declare-fun b!7603850 () Bool)

(declare-fun tp!2217495 () Bool)

(declare-fun tp!2217496 () Bool)

(assert (=> b!7603850 (= e!4523301 (and tp!2217495 tp!2217496))))

(declare-fun b!7603852 () Bool)

(declare-fun tp!2217498 () Bool)

(declare-fun tp!2217499 () Bool)

(assert (=> b!7603852 (= e!4523301 (and tp!2217498 tp!2217499))))

(assert (= (and b!7603437 ((_ is ElementMatch!20177) (reg!20506 r2!3249))) b!7603849))

(assert (= (and b!7603437 ((_ is Concat!29022) (reg!20506 r2!3249))) b!7603850))

(assert (= (and b!7603437 ((_ is Star!20177) (reg!20506 r2!3249))) b!7603851))

(assert (= (and b!7603437 ((_ is Union!20177) (reg!20506 r2!3249))) b!7603852))

(declare-fun b!7603857 () Bool)

(declare-fun e!4523303 () Bool)

(declare-fun tp!2217502 () Bool)

(assert (=> b!7603857 (= e!4523303 tp!2217502)))

(declare-fun b!7603855 () Bool)

(assert (=> b!7603855 (= e!4523303 tp_is_empty!50709)))

(assert (=> b!7603446 (= tp!2217401 e!4523303)))

(declare-fun b!7603856 () Bool)

(declare-fun tp!2217500 () Bool)

(declare-fun tp!2217501 () Bool)

(assert (=> b!7603856 (= e!4523303 (and tp!2217500 tp!2217501))))

(declare-fun b!7603858 () Bool)

(declare-fun tp!2217503 () Bool)

(declare-fun tp!2217504 () Bool)

(assert (=> b!7603858 (= e!4523303 (and tp!2217503 tp!2217504))))

(assert (= (and b!7603446 ((_ is ElementMatch!20177) (reg!20506 r1!3349))) b!7603855))

(assert (= (and b!7603446 ((_ is Concat!29022) (reg!20506 r1!3349))) b!7603856))

(assert (= (and b!7603446 ((_ is Star!20177) (reg!20506 r1!3349))) b!7603857))

(assert (= (and b!7603446 ((_ is Union!20177) (reg!20506 r1!3349))) b!7603858))

(declare-fun b!7603863 () Bool)

(declare-fun e!4523306 () Bool)

(declare-fun tp!2217507 () Bool)

(assert (=> b!7603863 (= e!4523306 (and tp_is_empty!50709 tp!2217507))))

(assert (=> b!7603445 (= tp!2217400 e!4523306)))

(assert (= (and b!7603445 ((_ is Cons!72936) (t!387795 s!10235))) b!7603863))

(declare-fun b!7603866 () Bool)

(declare-fun e!4523307 () Bool)

(declare-fun tp!2217510 () Bool)

(assert (=> b!7603866 (= e!4523307 tp!2217510)))

(declare-fun b!7603864 () Bool)

(assert (=> b!7603864 (= e!4523307 tp_is_empty!50709)))

(assert (=> b!7603440 (= tp!2217397 e!4523307)))

(declare-fun b!7603865 () Bool)

(declare-fun tp!2217508 () Bool)

(declare-fun tp!2217509 () Bool)

(assert (=> b!7603865 (= e!4523307 (and tp!2217508 tp!2217509))))

(declare-fun b!7603867 () Bool)

(declare-fun tp!2217511 () Bool)

(declare-fun tp!2217512 () Bool)

(assert (=> b!7603867 (= e!4523307 (and tp!2217511 tp!2217512))))

(assert (= (and b!7603440 ((_ is ElementMatch!20177) (regOne!40867 r2!3249))) b!7603864))

(assert (= (and b!7603440 ((_ is Concat!29022) (regOne!40867 r2!3249))) b!7603865))

(assert (= (and b!7603440 ((_ is Star!20177) (regOne!40867 r2!3249))) b!7603866))

(assert (= (and b!7603440 ((_ is Union!20177) (regOne!40867 r2!3249))) b!7603867))

(declare-fun b!7603870 () Bool)

(declare-fun e!4523308 () Bool)

(declare-fun tp!2217515 () Bool)

(assert (=> b!7603870 (= e!4523308 tp!2217515)))

(declare-fun b!7603868 () Bool)

(assert (=> b!7603868 (= e!4523308 tp_is_empty!50709)))

(assert (=> b!7603440 (= tp!2217392 e!4523308)))

(declare-fun b!7603869 () Bool)

(declare-fun tp!2217513 () Bool)

(declare-fun tp!2217514 () Bool)

(assert (=> b!7603869 (= e!4523308 (and tp!2217513 tp!2217514))))

(declare-fun b!7603871 () Bool)

(declare-fun tp!2217516 () Bool)

(declare-fun tp!2217517 () Bool)

(assert (=> b!7603871 (= e!4523308 (and tp!2217516 tp!2217517))))

(assert (= (and b!7603440 ((_ is ElementMatch!20177) (regTwo!40867 r2!3249))) b!7603868))

(assert (= (and b!7603440 ((_ is Concat!29022) (regTwo!40867 r2!3249))) b!7603869))

(assert (= (and b!7603440 ((_ is Star!20177) (regTwo!40867 r2!3249))) b!7603870))

(assert (= (and b!7603440 ((_ is Union!20177) (regTwo!40867 r2!3249))) b!7603871))

(declare-fun b!7603874 () Bool)

(declare-fun e!4523309 () Bool)

(declare-fun tp!2217520 () Bool)

(assert (=> b!7603874 (= e!4523309 tp!2217520)))

(declare-fun b!7603872 () Bool)

(assert (=> b!7603872 (= e!4523309 tp_is_empty!50709)))

(assert (=> b!7603442 (= tp!2217399 e!4523309)))

(declare-fun b!7603873 () Bool)

(declare-fun tp!2217518 () Bool)

(declare-fun tp!2217519 () Bool)

(assert (=> b!7603873 (= e!4523309 (and tp!2217518 tp!2217519))))

(declare-fun b!7603875 () Bool)

(declare-fun tp!2217521 () Bool)

(declare-fun tp!2217522 () Bool)

(assert (=> b!7603875 (= e!4523309 (and tp!2217521 tp!2217522))))

(assert (= (and b!7603442 ((_ is ElementMatch!20177) (regOne!40866 r1!3349))) b!7603872))

(assert (= (and b!7603442 ((_ is Concat!29022) (regOne!40866 r1!3349))) b!7603873))

(assert (= (and b!7603442 ((_ is Star!20177) (regOne!40866 r1!3349))) b!7603874))

(assert (= (and b!7603442 ((_ is Union!20177) (regOne!40866 r1!3349))) b!7603875))

(declare-fun b!7603878 () Bool)

(declare-fun e!4523310 () Bool)

(declare-fun tp!2217525 () Bool)

(assert (=> b!7603878 (= e!4523310 tp!2217525)))

(declare-fun b!7603876 () Bool)

(assert (=> b!7603876 (= e!4523310 tp_is_empty!50709)))

(assert (=> b!7603442 (= tp!2217398 e!4523310)))

(declare-fun b!7603877 () Bool)

(declare-fun tp!2217523 () Bool)

(declare-fun tp!2217524 () Bool)

(assert (=> b!7603877 (= e!4523310 (and tp!2217523 tp!2217524))))

(declare-fun b!7603879 () Bool)

(declare-fun tp!2217526 () Bool)

(declare-fun tp!2217527 () Bool)

(assert (=> b!7603879 (= e!4523310 (and tp!2217526 tp!2217527))))

(assert (= (and b!7603442 ((_ is ElementMatch!20177) (regTwo!40866 r1!3349))) b!7603876))

(assert (= (and b!7603442 ((_ is Concat!29022) (regTwo!40866 r1!3349))) b!7603877))

(assert (= (and b!7603442 ((_ is Star!20177) (regTwo!40866 r1!3349))) b!7603878))

(assert (= (and b!7603442 ((_ is Union!20177) (regTwo!40866 r1!3349))) b!7603879))

(declare-fun b_lambda!288929 () Bool)

(assert (= b_lambda!288923 (or b!7603439 b_lambda!288929)))

(declare-fun bs!1942522 () Bool)

(declare-fun d!2321630 () Bool)

(assert (= bs!1942522 (and d!2321630 b!7603439)))

(declare-fun res!3044655 () Bool)

(declare-fun e!4523311 () Bool)

(assert (=> bs!1942522 (=> (not res!3044655) (not e!4523311))))

(assert (=> bs!1942522 (= res!3044655 (= (++!17577 (_1!37837 lt!2654606) (_2!37837 lt!2654606)) s!10235))))

(assert (=> bs!1942522 (= (dynLambda!29901 lambda!467873 lt!2654606) e!4523311)))

(declare-fun b!7603880 () Bool)

(declare-fun res!3044656 () Bool)

(assert (=> b!7603880 (=> (not res!3044656) (not e!4523311))))

(assert (=> b!7603880 (= res!3044656 (matchR!9742 r1!3349 (_1!37837 lt!2654606)))))

(declare-fun b!7603881 () Bool)

(assert (=> b!7603881 (= e!4523311 (matchR!9742 r2!3249 (_2!37837 lt!2654606)))))

(assert (= (and bs!1942522 res!3044655) b!7603880))

(assert (= (and b!7603880 res!3044656) b!7603881))

(declare-fun m!8145960 () Bool)

(assert (=> bs!1942522 m!8145960))

(declare-fun m!8145962 () Bool)

(assert (=> b!7603880 m!8145962))

(declare-fun m!8145964 () Bool)

(assert (=> b!7603881 m!8145964))

(assert (=> d!2321598 d!2321630))

(check-sat (not d!2321594) (not b!7603865) (not b!7603721) (not bm!698159) (not b!7603743) (not d!2321618) (not b!7603719) (not d!2321588) (not b!7603852) (not b!7603842) (not b!7603858) (not b!7603848) (not b!7603847) (not b!7603503) (not bm!698127) (not b!7603626) (not b!7603869) (not b!7603875) (not b!7603846) (not b!7603741) (not bs!1942522) (not d!2321624) (not d!2321608) (not bm!698157) (not b!7603863) (not b!7603715) (not bm!698129) (not b!7603857) (not b!7603750) (not b!7603835) (not b!7603625) (not bm!698141) (not b!7603878) (not bm!698142) (not b!7603867) (not b!7603713) (not d!2321610) (not b_lambda!288929) (not b!7603851) (not bm!698153) (not b!7603717) (not b!7603525) (not b!7603825) (not b!7603524) (not b!7603871) (not b!7603879) (not b!7603751) (not b!7603874) (not b!7603877) (not b!7603735) (not b!7603841) (not b!7603826) (not b!7603866) (not b!7603708) (not bm!698156) (not d!2321598) (not b!7603775) (not b!7603837) (not b!7603881) (not b!7603730) (not b!7603843) (not b!7603737) (not b!7603739) (not b!7603839) (not b!7603827) (not bm!698155) (not b!7603870) (not b!7603856) (not bm!698154) (not b!7603873) (not b!7603880) (not b!7603850) tp_is_empty!50709)
(check-sat)
