; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!737192 () Bool)

(assert start!737192)

(declare-fun b!7715606 () Bool)

(assert (=> b!7715606 true))

(assert (=> b!7715606 true))

(declare-fun bs!1962668 () Bool)

(declare-fun b!7715599 () Bool)

(assert (= bs!1962668 (and b!7715599 b!7715606)))

(declare-fun lambda!470851 () Int)

(declare-fun lambda!470850 () Int)

(assert (=> bs!1962668 (not (= lambda!470851 lambda!470850))))

(assert (=> b!7715599 true))

(assert (=> b!7715599 true))

(declare-fun b!7715595 () Bool)

(declare-fun e!4577005 () Bool)

(declare-fun tp_is_empty!51421 () Bool)

(declare-fun tp!2263957 () Bool)

(assert (=> b!7715595 (= e!4577005 (and tp_is_empty!51421 tp!2263957))))

(declare-fun b!7715596 () Bool)

(declare-datatypes ((Unit!168124 0))(
  ( (Unit!168125) )
))
(declare-fun e!4576999 () Unit!168124)

(declare-fun Unit!168126 () Unit!168124)

(assert (=> b!7715596 (= e!4576999 Unit!168126)))

(declare-fun b!7715597 () Bool)

(declare-fun res!3078329 () Bool)

(declare-fun e!4577000 () Bool)

(assert (=> b!7715597 (=> res!3078329 e!4577000)))

(declare-datatypes ((C!41392 0))(
  ( (C!41393 (val!31136 Int)) )
))
(declare-datatypes ((Regex!20533 0))(
  ( (ElementMatch!20533 (c!1422266 C!41392)) (Concat!29378 (regOne!41578 Regex!20533) (regTwo!41578 Regex!20533)) (EmptyExpr!20533) (Star!20533 (reg!20862 Regex!20533)) (EmptyLang!20533) (Union!20533 (regOne!41579 Regex!20533) (regTwo!41579 Regex!20533)) )
))
(declare-fun r!14126 () Regex!20533)

(declare-fun validRegex!10951 (Regex!20533) Bool)

(assert (=> b!7715597 (= res!3078329 (not (validRegex!10951 r!14126)))))

(declare-fun res!3078326 () Bool)

(declare-fun e!4577003 () Bool)

(assert (=> b!7715599 (=> res!3078326 e!4577003)))

(declare-fun Exists!4658 (Int) Bool)

(assert (=> b!7715599 (= res!3078326 (not (Exists!4658 lambda!470851)))))

(declare-fun b!7715600 () Bool)

(declare-fun e!4577002 () Bool)

(assert (=> b!7715600 (= e!4577002 e!4577003)))

(declare-fun res!3078328 () Bool)

(assert (=> b!7715600 (=> res!3078328 e!4577003)))

(assert (=> b!7715600 (= res!3078328 (Exists!4658 lambda!470850))))

(declare-fun lt!2665536 () Unit!168124)

(assert (=> b!7715600 (= lt!2665536 e!4576999)))

(declare-fun c!1422265 () Bool)

(declare-datatypes ((List!73384 0))(
  ( (Nil!73260) (Cons!73260 (h!79708 C!41392) (t!388119 List!73384)) )
))
(declare-fun s!9605 () List!73384)

(declare-fun matchR!10029 (Regex!20533 List!73384) Bool)

(assert (=> b!7715600 (= c!1422265 (matchR!10029 r!14126 s!9605))))

(declare-fun b!7715601 () Bool)

(declare-fun e!4577001 () Bool)

(declare-fun tp!2263961 () Bool)

(assert (=> b!7715601 (= e!4577001 tp!2263961)))

(declare-fun b!7715602 () Bool)

(declare-datatypes ((tuple2!69528 0))(
  ( (tuple2!69529 (_1!38067 List!73384) (_2!38067 List!73384)) )
))
(declare-fun lt!2665537 () tuple2!69528)

(declare-fun ++!17741 (List!73384 List!73384) List!73384)

(assert (=> b!7715602 (= e!4577000 (= (++!17741 (_1!38067 lt!2665537) (_2!38067 lt!2665537)) s!9605))))

(declare-fun b!7715603 () Bool)

(declare-fun Unit!168127 () Unit!168124)

(assert (=> b!7715603 (= e!4576999 Unit!168127)))

(declare-fun lt!2665538 () Unit!168124)

(declare-fun lemmaStarAppConcat!48 (Regex!20533 List!73384) Unit!168124)

(assert (=> b!7715603 (= lt!2665538 (lemmaStarAppConcat!48 (reg!20862 r!14126) s!9605))))

(assert (=> b!7715603 (matchR!10029 (Concat!29378 (reg!20862 r!14126) r!14126) s!9605)))

(declare-fun lt!2665539 () Unit!168124)

(declare-fun lemmaConcatAcceptsStringThenFindSeparationIsDefined!306 (Regex!20533 Regex!20533 List!73384) Unit!168124)

(assert (=> b!7715603 (= lt!2665539 (lemmaConcatAcceptsStringThenFindSeparationIsDefined!306 (reg!20862 r!14126) r!14126 s!9605))))

(assert (=> b!7715603 false))

(declare-fun b!7715604 () Bool)

(declare-fun tp!2263958 () Bool)

(declare-fun tp!2263960 () Bool)

(assert (=> b!7715604 (= e!4577001 (and tp!2263958 tp!2263960))))

(declare-fun b!7715605 () Bool)

(declare-fun res!3078327 () Bool)

(declare-fun e!4577004 () Bool)

(assert (=> b!7715605 (=> (not res!3078327) (not e!4577004))))

(get-info :version)

(assert (=> b!7715605 (= res!3078327 (and (not ((_ is EmptyExpr!20533) r!14126)) (not ((_ is EmptyLang!20533) r!14126)) (not ((_ is ElementMatch!20533) r!14126)) (not ((_ is Union!20533) r!14126)) ((_ is Star!20533) r!14126)))))

(declare-fun res!3078330 () Bool)

(assert (=> start!737192 (=> (not res!3078330) (not e!4577004))))

(assert (=> start!737192 (= res!3078330 (validRegex!10951 r!14126))))

(assert (=> start!737192 e!4577004))

(assert (=> start!737192 e!4577001))

(assert (=> start!737192 e!4577005))

(declare-fun b!7715598 () Bool)

(declare-fun res!3078325 () Bool)

(assert (=> b!7715598 (=> (not res!3078325) (not e!4577004))))

(declare-fun isEmpty!41913 (List!73384) Bool)

(assert (=> b!7715598 (= res!3078325 (not (isEmpty!41913 s!9605)))))

(assert (=> b!7715606 (= e!4577004 (not e!4577002))))

(declare-fun res!3078332 () Bool)

(assert (=> b!7715606 (=> res!3078332 e!4577002)))

(declare-fun lt!2665535 () Bool)

(assert (=> b!7715606 (= res!3078332 lt!2665535)))

(assert (=> b!7715606 (= lt!2665535 (Exists!4658 lambda!470850))))

(declare-datatypes ((Option!17558 0))(
  ( (None!17557) (Some!17557 (v!54692 tuple2!69528)) )
))
(declare-fun isDefined!14174 (Option!17558) Bool)

(declare-fun findConcatSeparation!3588 (Regex!20533 Regex!20533 List!73384 List!73384 List!73384) Option!17558)

(assert (=> b!7715606 (= lt!2665535 (isDefined!14174 (findConcatSeparation!3588 (reg!20862 r!14126) r!14126 Nil!73260 s!9605 s!9605)))))

(declare-fun lt!2665533 () Unit!168124)

(declare-fun lemmaFindConcatSeparationEquivalentToExists!3346 (Regex!20533 Regex!20533 List!73384) Unit!168124)

(assert (=> b!7715606 (= lt!2665533 (lemmaFindConcatSeparationEquivalentToExists!3346 (reg!20862 r!14126) r!14126 s!9605))))

(declare-fun b!7715607 () Bool)

(assert (=> b!7715607 (= e!4577001 tp_is_empty!51421)))

(declare-fun b!7715608 () Bool)

(declare-fun tp!2263959 () Bool)

(declare-fun tp!2263956 () Bool)

(assert (=> b!7715608 (= e!4577001 (and tp!2263959 tp!2263956))))

(declare-fun b!7715609 () Bool)

(assert (=> b!7715609 (= e!4577003 e!4577000)))

(declare-fun res!3078331 () Bool)

(assert (=> b!7715609 (=> res!3078331 e!4577000)))

(assert (=> b!7715609 (= res!3078331 (not (validRegex!10951 (reg!20862 r!14126))))))

(declare-fun matchRSpec!4623 (Regex!20533 List!73384) Bool)

(assert (=> b!7715609 (= (matchR!10029 r!14126 (_2!38067 lt!2665537)) (matchRSpec!4623 r!14126 (_2!38067 lt!2665537)))))

(declare-fun lt!2665540 () Unit!168124)

(declare-fun mainMatchTheorem!4598 (Regex!20533 List!73384) Unit!168124)

(assert (=> b!7715609 (= lt!2665540 (mainMatchTheorem!4598 r!14126 (_2!38067 lt!2665537)))))

(assert (=> b!7715609 (= (matchR!10029 (reg!20862 r!14126) (_1!38067 lt!2665537)) (matchRSpec!4623 (reg!20862 r!14126) (_1!38067 lt!2665537)))))

(declare-fun lt!2665534 () Unit!168124)

(assert (=> b!7715609 (= lt!2665534 (mainMatchTheorem!4598 (reg!20862 r!14126) (_1!38067 lt!2665537)))))

(declare-fun pickWitness!512 (Int) tuple2!69528)

(assert (=> b!7715609 (= lt!2665537 (pickWitness!512 lambda!470851))))

(assert (= (and start!737192 res!3078330) b!7715605))

(assert (= (and b!7715605 res!3078327) b!7715598))

(assert (= (and b!7715598 res!3078325) b!7715606))

(assert (= (and b!7715606 (not res!3078332)) b!7715600))

(assert (= (and b!7715600 c!1422265) b!7715603))

(assert (= (and b!7715600 (not c!1422265)) b!7715596))

(assert (= (and b!7715600 (not res!3078328)) b!7715599))

(assert (= (and b!7715599 (not res!3078326)) b!7715609))

(assert (= (and b!7715609 (not res!3078331)) b!7715597))

(assert (= (and b!7715597 (not res!3078329)) b!7715602))

(assert (= (and start!737192 ((_ is ElementMatch!20533) r!14126)) b!7715607))

(assert (= (and start!737192 ((_ is Concat!29378) r!14126)) b!7715608))

(assert (= (and start!737192 ((_ is Star!20533) r!14126)) b!7715601))

(assert (= (and start!737192 ((_ is Union!20533) r!14126)) b!7715604))

(assert (= (and start!737192 ((_ is Cons!73260) s!9605)) b!7715595))

(declare-fun m!8197414 () Bool)

(assert (=> b!7715597 m!8197414))

(declare-fun m!8197416 () Bool)

(assert (=> b!7715599 m!8197416))

(declare-fun m!8197418 () Bool)

(assert (=> b!7715600 m!8197418))

(declare-fun m!8197420 () Bool)

(assert (=> b!7715600 m!8197420))

(declare-fun m!8197422 () Bool)

(assert (=> b!7715603 m!8197422))

(declare-fun m!8197424 () Bool)

(assert (=> b!7715603 m!8197424))

(declare-fun m!8197426 () Bool)

(assert (=> b!7715603 m!8197426))

(assert (=> b!7715606 m!8197418))

(declare-fun m!8197428 () Bool)

(assert (=> b!7715606 m!8197428))

(assert (=> b!7715606 m!8197428))

(declare-fun m!8197430 () Bool)

(assert (=> b!7715606 m!8197430))

(declare-fun m!8197432 () Bool)

(assert (=> b!7715606 m!8197432))

(assert (=> start!737192 m!8197414))

(declare-fun m!8197434 () Bool)

(assert (=> b!7715598 m!8197434))

(declare-fun m!8197436 () Bool)

(assert (=> b!7715602 m!8197436))

(declare-fun m!8197438 () Bool)

(assert (=> b!7715609 m!8197438))

(declare-fun m!8197440 () Bool)

(assert (=> b!7715609 m!8197440))

(declare-fun m!8197442 () Bool)

(assert (=> b!7715609 m!8197442))

(declare-fun m!8197444 () Bool)

(assert (=> b!7715609 m!8197444))

(declare-fun m!8197446 () Bool)

(assert (=> b!7715609 m!8197446))

(declare-fun m!8197448 () Bool)

(assert (=> b!7715609 m!8197448))

(declare-fun m!8197450 () Bool)

(assert (=> b!7715609 m!8197450))

(declare-fun m!8197452 () Bool)

(assert (=> b!7715609 m!8197452))

(check-sat (not b!7715606) (not b!7715598) (not start!737192) (not b!7715597) (not b!7715600) (not b!7715603) (not b!7715599) tp_is_empty!51421 (not b!7715604) (not b!7715609) (not b!7715608) (not b!7715601) (not b!7715595) (not b!7715602))
(check-sat)
(get-model)

(declare-fun bm!713142 () Bool)

(declare-fun call!713148 () Bool)

(declare-fun c!1422272 () Bool)

(assert (=> bm!713142 (= call!713148 (validRegex!10951 (ite c!1422272 (regTwo!41579 r!14126) (regTwo!41578 r!14126))))))

(declare-fun b!7715635 () Bool)

(declare-fun e!4577027 () Bool)

(declare-fun e!4577024 () Bool)

(assert (=> b!7715635 (= e!4577027 e!4577024)))

(declare-fun c!1422271 () Bool)

(assert (=> b!7715635 (= c!1422271 ((_ is Star!20533) r!14126))))

(declare-fun b!7715636 () Bool)

(declare-fun e!4577023 () Bool)

(assert (=> b!7715636 (= e!4577023 call!713148)))

(declare-fun bm!713143 () Bool)

(declare-fun call!713149 () Bool)

(declare-fun call!713147 () Bool)

(assert (=> bm!713143 (= call!713149 call!713147)))

(declare-fun b!7715638 () Bool)

(declare-fun res!3078350 () Bool)

(declare-fun e!4577025 () Bool)

(assert (=> b!7715638 (=> (not res!3078350) (not e!4577025))))

(assert (=> b!7715638 (= res!3078350 call!713149)))

(declare-fun e!4577026 () Bool)

(assert (=> b!7715638 (= e!4577026 e!4577025)))

(declare-fun b!7715639 () Bool)

(declare-fun e!4577029 () Bool)

(assert (=> b!7715639 (= e!4577024 e!4577029)))

(declare-fun res!3078349 () Bool)

(declare-fun nullable!9009 (Regex!20533) Bool)

(assert (=> b!7715639 (= res!3078349 (not (nullable!9009 (reg!20862 r!14126))))))

(assert (=> b!7715639 (=> (not res!3078349) (not e!4577029))))

(declare-fun b!7715640 () Bool)

(declare-fun res!3078348 () Bool)

(declare-fun e!4577028 () Bool)

(assert (=> b!7715640 (=> res!3078348 e!4577028)))

(assert (=> b!7715640 (= res!3078348 (not ((_ is Concat!29378) r!14126)))))

(assert (=> b!7715640 (= e!4577026 e!4577028)))

(declare-fun b!7715641 () Bool)

(assert (=> b!7715641 (= e!4577028 e!4577023)))

(declare-fun res!3078347 () Bool)

(assert (=> b!7715641 (=> (not res!3078347) (not e!4577023))))

(assert (=> b!7715641 (= res!3078347 call!713149)))

(declare-fun b!7715642 () Bool)

(assert (=> b!7715642 (= e!4577025 call!713148)))

(declare-fun b!7715643 () Bool)

(assert (=> b!7715643 (= e!4577024 e!4577026)))

(assert (=> b!7715643 (= c!1422272 ((_ is Union!20533) r!14126))))

(declare-fun bm!713144 () Bool)

(assert (=> bm!713144 (= call!713147 (validRegex!10951 (ite c!1422271 (reg!20862 r!14126) (ite c!1422272 (regOne!41579 r!14126) (regOne!41578 r!14126)))))))

(declare-fun b!7715637 () Bool)

(assert (=> b!7715637 (= e!4577029 call!713147)))

(declare-fun d!2336988 () Bool)

(declare-fun res!3078346 () Bool)

(assert (=> d!2336988 (=> res!3078346 e!4577027)))

(assert (=> d!2336988 (= res!3078346 ((_ is ElementMatch!20533) r!14126))))

(assert (=> d!2336988 (= (validRegex!10951 r!14126) e!4577027)))

(assert (= (and d!2336988 (not res!3078346)) b!7715635))

(assert (= (and b!7715635 c!1422271) b!7715639))

(assert (= (and b!7715635 (not c!1422271)) b!7715643))

(assert (= (and b!7715639 res!3078349) b!7715637))

(assert (= (and b!7715643 c!1422272) b!7715638))

(assert (= (and b!7715643 (not c!1422272)) b!7715640))

(assert (= (and b!7715638 res!3078350) b!7715642))

(assert (= (and b!7715640 (not res!3078348)) b!7715641))

(assert (= (and b!7715641 res!3078347) b!7715636))

(assert (= (or b!7715638 b!7715641) bm!713143))

(assert (= (or b!7715642 b!7715636) bm!713142))

(assert (= (or b!7715637 bm!713143) bm!713144))

(declare-fun m!8197460 () Bool)

(assert (=> bm!713142 m!8197460))

(declare-fun m!8197462 () Bool)

(assert (=> b!7715639 m!8197462))

(declare-fun m!8197464 () Bool)

(assert (=> bm!713144 m!8197464))

(assert (=> start!737192 d!2336988))

(declare-fun d!2336992 () Bool)

(declare-fun choose!59193 (Int) Bool)

(assert (=> d!2336992 (= (Exists!4658 lambda!470850) (choose!59193 lambda!470850))))

(declare-fun bs!1962669 () Bool)

(assert (= bs!1962669 d!2336992))

(declare-fun m!8197466 () Bool)

(assert (=> bs!1962669 m!8197466))

(assert (=> b!7715600 d!2336992))

(declare-fun b!7715714 () Bool)

(declare-fun e!4577071 () Bool)

(declare-fun head!15775 (List!73384) C!41392)

(assert (=> b!7715714 (= e!4577071 (not (= (head!15775 s!9605) (c!1422266 r!14126))))))

(declare-fun b!7715715 () Bool)

(declare-fun e!4577070 () Bool)

(assert (=> b!7715715 (= e!4577070 (nullable!9009 r!14126))))

(declare-fun bm!713150 () Bool)

(declare-fun call!713155 () Bool)

(assert (=> bm!713150 (= call!713155 (isEmpty!41913 s!9605))))

(declare-fun b!7715716 () Bool)

(declare-fun e!4577065 () Bool)

(assert (=> b!7715716 (= e!4577065 (= (head!15775 s!9605) (c!1422266 r!14126)))))

(declare-fun d!2336994 () Bool)

(declare-fun e!4577068 () Bool)

(assert (=> d!2336994 e!4577068))

(declare-fun c!1422290 () Bool)

(assert (=> d!2336994 (= c!1422290 ((_ is EmptyExpr!20533) r!14126))))

(declare-fun lt!2665552 () Bool)

(assert (=> d!2336994 (= lt!2665552 e!4577070)))

(declare-fun c!1422289 () Bool)

(assert (=> d!2336994 (= c!1422289 (isEmpty!41913 s!9605))))

(assert (=> d!2336994 (validRegex!10951 r!14126)))

(assert (=> d!2336994 (= (matchR!10029 r!14126 s!9605) lt!2665552)))

(declare-fun b!7715717 () Bool)

(declare-fun e!4577067 () Bool)

(assert (=> b!7715717 (= e!4577067 e!4577071)))

(declare-fun res!3078397 () Bool)

(assert (=> b!7715717 (=> res!3078397 e!4577071)))

(assert (=> b!7715717 (= res!3078397 call!713155)))

(declare-fun b!7715718 () Bool)

(assert (=> b!7715718 (= e!4577068 (= lt!2665552 call!713155))))

(declare-fun b!7715719 () Bool)

(declare-fun e!4577069 () Bool)

(assert (=> b!7715719 (= e!4577069 (not lt!2665552))))

(declare-fun b!7715720 () Bool)

(assert (=> b!7715720 (= e!4577068 e!4577069)))

(declare-fun c!1422288 () Bool)

(assert (=> b!7715720 (= c!1422288 ((_ is EmptyLang!20533) r!14126))))

(declare-fun b!7715721 () Bool)

(declare-fun e!4577066 () Bool)

(assert (=> b!7715721 (= e!4577066 e!4577067)))

(declare-fun res!3078392 () Bool)

(assert (=> b!7715721 (=> (not res!3078392) (not e!4577067))))

(assert (=> b!7715721 (= res!3078392 (not lt!2665552))))

(declare-fun b!7715722 () Bool)

(declare-fun derivativeStep!5975 (Regex!20533 C!41392) Regex!20533)

(declare-fun tail!15315 (List!73384) List!73384)

(assert (=> b!7715722 (= e!4577070 (matchR!10029 (derivativeStep!5975 r!14126 (head!15775 s!9605)) (tail!15315 s!9605)))))

(declare-fun b!7715723 () Bool)

(declare-fun res!3078394 () Bool)

(assert (=> b!7715723 (=> (not res!3078394) (not e!4577065))))

(assert (=> b!7715723 (= res!3078394 (isEmpty!41913 (tail!15315 s!9605)))))

(declare-fun b!7715724 () Bool)

(declare-fun res!3078395 () Bool)

(assert (=> b!7715724 (=> res!3078395 e!4577066)))

(assert (=> b!7715724 (= res!3078395 e!4577065)))

(declare-fun res!3078393 () Bool)

(assert (=> b!7715724 (=> (not res!3078393) (not e!4577065))))

(assert (=> b!7715724 (= res!3078393 lt!2665552)))

(declare-fun b!7715725 () Bool)

(declare-fun res!3078398 () Bool)

(assert (=> b!7715725 (=> res!3078398 e!4577071)))

(assert (=> b!7715725 (= res!3078398 (not (isEmpty!41913 (tail!15315 s!9605))))))

(declare-fun b!7715726 () Bool)

(declare-fun res!3078391 () Bool)

(assert (=> b!7715726 (=> res!3078391 e!4577066)))

(assert (=> b!7715726 (= res!3078391 (not ((_ is ElementMatch!20533) r!14126)))))

(assert (=> b!7715726 (= e!4577069 e!4577066)))

(declare-fun b!7715727 () Bool)

(declare-fun res!3078396 () Bool)

(assert (=> b!7715727 (=> (not res!3078396) (not e!4577065))))

(assert (=> b!7715727 (= res!3078396 (not call!713155))))

(assert (= (and d!2336994 c!1422289) b!7715715))

(assert (= (and d!2336994 (not c!1422289)) b!7715722))

(assert (= (and d!2336994 c!1422290) b!7715718))

(assert (= (and d!2336994 (not c!1422290)) b!7715720))

(assert (= (and b!7715720 c!1422288) b!7715719))

(assert (= (and b!7715720 (not c!1422288)) b!7715726))

(assert (= (and b!7715726 (not res!3078391)) b!7715724))

(assert (= (and b!7715724 res!3078393) b!7715727))

(assert (= (and b!7715727 res!3078396) b!7715723))

(assert (= (and b!7715723 res!3078394) b!7715716))

(assert (= (and b!7715724 (not res!3078395)) b!7715721))

(assert (= (and b!7715721 res!3078392) b!7715717))

(assert (= (and b!7715717 (not res!3078397)) b!7715725))

(assert (= (and b!7715725 (not res!3078398)) b!7715714))

(assert (= (or b!7715718 b!7715717 b!7715727) bm!713150))

(assert (=> bm!713150 m!8197434))

(declare-fun m!8197488 () Bool)

(assert (=> b!7715723 m!8197488))

(assert (=> b!7715723 m!8197488))

(declare-fun m!8197490 () Bool)

(assert (=> b!7715723 m!8197490))

(assert (=> b!7715725 m!8197488))

(assert (=> b!7715725 m!8197488))

(assert (=> b!7715725 m!8197490))

(assert (=> d!2336994 m!8197434))

(assert (=> d!2336994 m!8197414))

(declare-fun m!8197492 () Bool)

(assert (=> b!7715714 m!8197492))

(declare-fun m!8197494 () Bool)

(assert (=> b!7715715 m!8197494))

(assert (=> b!7715716 m!8197492))

(assert (=> b!7715722 m!8197492))

(assert (=> b!7715722 m!8197492))

(declare-fun m!8197496 () Bool)

(assert (=> b!7715722 m!8197496))

(assert (=> b!7715722 m!8197488))

(assert (=> b!7715722 m!8197496))

(assert (=> b!7715722 m!8197488))

(declare-fun m!8197498 () Bool)

(assert (=> b!7715722 m!8197498))

(assert (=> b!7715600 d!2336994))

(declare-fun d!2337004 () Bool)

(assert (=> d!2337004 (= (Exists!4658 lambda!470851) (choose!59193 lambda!470851))))

(declare-fun bs!1962674 () Bool)

(assert (= bs!1962674 d!2337004))

(declare-fun m!8197502 () Bool)

(assert (=> bs!1962674 m!8197502))

(assert (=> b!7715599 d!2337004))

(assert (=> b!7715606 d!2336992))

(declare-fun d!2337008 () Bool)

(declare-fun isEmpty!41915 (Option!17558) Bool)

(assert (=> d!2337008 (= (isDefined!14174 (findConcatSeparation!3588 (reg!20862 r!14126) r!14126 Nil!73260 s!9605 s!9605)) (not (isEmpty!41915 (findConcatSeparation!3588 (reg!20862 r!14126) r!14126 Nil!73260 s!9605 s!9605))))))

(declare-fun bs!1962675 () Bool)

(assert (= bs!1962675 d!2337008))

(assert (=> bs!1962675 m!8197428))

(declare-fun m!8197504 () Bool)

(assert (=> bs!1962675 m!8197504))

(assert (=> b!7715606 d!2337008))

(declare-fun b!7715773 () Bool)

(declare-fun e!4577098 () Bool)

(declare-fun lt!2665569 () Option!17558)

(assert (=> b!7715773 (= e!4577098 (not (isDefined!14174 lt!2665569)))))

(declare-fun b!7715774 () Bool)

(declare-fun e!4577097 () Option!17558)

(assert (=> b!7715774 (= e!4577097 None!17557)))

(declare-fun b!7715775 () Bool)

(declare-fun e!4577101 () Option!17558)

(assert (=> b!7715775 (= e!4577101 (Some!17557 (tuple2!69529 Nil!73260 s!9605)))))

(declare-fun b!7715776 () Bool)

(declare-fun res!3078428 () Bool)

(declare-fun e!4577099 () Bool)

(assert (=> b!7715776 (=> (not res!3078428) (not e!4577099))))

(declare-fun get!25997 (Option!17558) tuple2!69528)

(assert (=> b!7715776 (= res!3078428 (matchR!10029 r!14126 (_2!38067 (get!25997 lt!2665569))))))

(declare-fun b!7715778 () Bool)

(assert (=> b!7715778 (= e!4577099 (= (++!17741 (_1!38067 (get!25997 lt!2665569)) (_2!38067 (get!25997 lt!2665569))) s!9605))))

(declare-fun b!7715779 () Bool)

(declare-fun lt!2665568 () Unit!168124)

(declare-fun lt!2665570 () Unit!168124)

(assert (=> b!7715779 (= lt!2665568 lt!2665570)))

(assert (=> b!7715779 (= (++!17741 (++!17741 Nil!73260 (Cons!73260 (h!79708 s!9605) Nil!73260)) (t!388119 s!9605)) s!9605)))

(declare-fun lemmaMoveElementToOtherListKeepsConcatEq!3292 (List!73384 C!41392 List!73384 List!73384) Unit!168124)

(assert (=> b!7715779 (= lt!2665570 (lemmaMoveElementToOtherListKeepsConcatEq!3292 Nil!73260 (h!79708 s!9605) (t!388119 s!9605) s!9605))))

(assert (=> b!7715779 (= e!4577097 (findConcatSeparation!3588 (reg!20862 r!14126) r!14126 (++!17741 Nil!73260 (Cons!73260 (h!79708 s!9605) Nil!73260)) (t!388119 s!9605) s!9605))))

(declare-fun b!7715780 () Bool)

(assert (=> b!7715780 (= e!4577101 e!4577097)))

(declare-fun c!1422302 () Bool)

(assert (=> b!7715780 (= c!1422302 ((_ is Nil!73260) s!9605))))

(declare-fun b!7715781 () Bool)

(declare-fun e!4577100 () Bool)

(assert (=> b!7715781 (= e!4577100 (matchR!10029 r!14126 s!9605))))

(declare-fun b!7715777 () Bool)

(declare-fun res!3078427 () Bool)

(assert (=> b!7715777 (=> (not res!3078427) (not e!4577099))))

(assert (=> b!7715777 (= res!3078427 (matchR!10029 (reg!20862 r!14126) (_1!38067 (get!25997 lt!2665569))))))

(declare-fun d!2337010 () Bool)

(assert (=> d!2337010 e!4577098))

(declare-fun res!3078426 () Bool)

(assert (=> d!2337010 (=> res!3078426 e!4577098)))

(assert (=> d!2337010 (= res!3078426 e!4577099)))

(declare-fun res!3078425 () Bool)

(assert (=> d!2337010 (=> (not res!3078425) (not e!4577099))))

(assert (=> d!2337010 (= res!3078425 (isDefined!14174 lt!2665569))))

(assert (=> d!2337010 (= lt!2665569 e!4577101)))

(declare-fun c!1422301 () Bool)

(assert (=> d!2337010 (= c!1422301 e!4577100)))

(declare-fun res!3078424 () Bool)

(assert (=> d!2337010 (=> (not res!3078424) (not e!4577100))))

(assert (=> d!2337010 (= res!3078424 (matchR!10029 (reg!20862 r!14126) Nil!73260))))

(assert (=> d!2337010 (validRegex!10951 (reg!20862 r!14126))))

(assert (=> d!2337010 (= (findConcatSeparation!3588 (reg!20862 r!14126) r!14126 Nil!73260 s!9605 s!9605) lt!2665569)))

(assert (= (and d!2337010 res!3078424) b!7715781))

(assert (= (and d!2337010 c!1422301) b!7715775))

(assert (= (and d!2337010 (not c!1422301)) b!7715780))

(assert (= (and b!7715780 c!1422302) b!7715774))

(assert (= (and b!7715780 (not c!1422302)) b!7715779))

(assert (= (and d!2337010 res!3078425) b!7715777))

(assert (= (and b!7715777 res!3078427) b!7715776))

(assert (= (and b!7715776 res!3078428) b!7715778))

(assert (= (and d!2337010 (not res!3078426)) b!7715773))

(declare-fun m!8197526 () Bool)

(assert (=> b!7715778 m!8197526))

(declare-fun m!8197528 () Bool)

(assert (=> b!7715778 m!8197528))

(declare-fun m!8197530 () Bool)

(assert (=> b!7715779 m!8197530))

(assert (=> b!7715779 m!8197530))

(declare-fun m!8197532 () Bool)

(assert (=> b!7715779 m!8197532))

(declare-fun m!8197534 () Bool)

(assert (=> b!7715779 m!8197534))

(assert (=> b!7715779 m!8197530))

(declare-fun m!8197536 () Bool)

(assert (=> b!7715779 m!8197536))

(declare-fun m!8197538 () Bool)

(assert (=> d!2337010 m!8197538))

(declare-fun m!8197540 () Bool)

(assert (=> d!2337010 m!8197540))

(assert (=> d!2337010 m!8197444))

(assert (=> b!7715773 m!8197538))

(assert (=> b!7715776 m!8197526))

(declare-fun m!8197542 () Bool)

(assert (=> b!7715776 m!8197542))

(assert (=> b!7715777 m!8197526))

(declare-fun m!8197544 () Bool)

(assert (=> b!7715777 m!8197544))

(assert (=> b!7715781 m!8197420))

(assert (=> b!7715606 d!2337010))

(declare-fun bs!1962679 () Bool)

(declare-fun d!2337014 () Bool)

(assert (= bs!1962679 (and d!2337014 b!7715606)))

(declare-fun lambda!470857 () Int)

(assert (=> bs!1962679 (= lambda!470857 lambda!470850)))

(declare-fun bs!1962680 () Bool)

(assert (= bs!1962680 (and d!2337014 b!7715599)))

(assert (=> bs!1962680 (not (= lambda!470857 lambda!470851))))

(assert (=> d!2337014 true))

(assert (=> d!2337014 true))

(assert (=> d!2337014 true))

(assert (=> d!2337014 (= (isDefined!14174 (findConcatSeparation!3588 (reg!20862 r!14126) r!14126 Nil!73260 s!9605 s!9605)) (Exists!4658 lambda!470857))))

(declare-fun lt!2665576 () Unit!168124)

(declare-fun choose!59197 (Regex!20533 Regex!20533 List!73384) Unit!168124)

(assert (=> d!2337014 (= lt!2665576 (choose!59197 (reg!20862 r!14126) r!14126 s!9605))))

(assert (=> d!2337014 (validRegex!10951 (reg!20862 r!14126))))

(assert (=> d!2337014 (= (lemmaFindConcatSeparationEquivalentToExists!3346 (reg!20862 r!14126) r!14126 s!9605) lt!2665576)))

(declare-fun bs!1962681 () Bool)

(assert (= bs!1962681 d!2337014))

(assert (=> bs!1962681 m!8197428))

(assert (=> bs!1962681 m!8197430))

(declare-fun m!8197550 () Bool)

(assert (=> bs!1962681 m!8197550))

(assert (=> bs!1962681 m!8197428))

(assert (=> bs!1962681 m!8197444))

(declare-fun m!8197552 () Bool)

(assert (=> bs!1962681 m!8197552))

(assert (=> b!7715606 d!2337014))

(assert (=> b!7715597 d!2336988))

(declare-fun b!7715816 () Bool)

(declare-fun e!4577125 () List!73384)

(assert (=> b!7715816 (= e!4577125 (_2!38067 lt!2665537))))

(declare-fun b!7715817 () Bool)

(assert (=> b!7715817 (= e!4577125 (Cons!73260 (h!79708 (_1!38067 lt!2665537)) (++!17741 (t!388119 (_1!38067 lt!2665537)) (_2!38067 lt!2665537))))))

(declare-fun d!2337018 () Bool)

(declare-fun e!4577124 () Bool)

(assert (=> d!2337018 e!4577124))

(declare-fun res!3078451 () Bool)

(assert (=> d!2337018 (=> (not res!3078451) (not e!4577124))))

(declare-fun lt!2665579 () List!73384)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!15513 (List!73384) (InoxSet C!41392))

(assert (=> d!2337018 (= res!3078451 (= (content!15513 lt!2665579) ((_ map or) (content!15513 (_1!38067 lt!2665537)) (content!15513 (_2!38067 lt!2665537)))))))

(assert (=> d!2337018 (= lt!2665579 e!4577125)))

(declare-fun c!1422309 () Bool)

(assert (=> d!2337018 (= c!1422309 ((_ is Nil!73260) (_1!38067 lt!2665537)))))

(assert (=> d!2337018 (= (++!17741 (_1!38067 lt!2665537) (_2!38067 lt!2665537)) lt!2665579)))

(declare-fun b!7715819 () Bool)

(assert (=> b!7715819 (= e!4577124 (or (not (= (_2!38067 lt!2665537) Nil!73260)) (= lt!2665579 (_1!38067 lt!2665537))))))

(declare-fun b!7715818 () Bool)

(declare-fun res!3078452 () Bool)

(assert (=> b!7715818 (=> (not res!3078452) (not e!4577124))))

(declare-fun size!42616 (List!73384) Int)

(assert (=> b!7715818 (= res!3078452 (= (size!42616 lt!2665579) (+ (size!42616 (_1!38067 lt!2665537)) (size!42616 (_2!38067 lt!2665537)))))))

(assert (= (and d!2337018 c!1422309) b!7715816))

(assert (= (and d!2337018 (not c!1422309)) b!7715817))

(assert (= (and d!2337018 res!3078451) b!7715818))

(assert (= (and b!7715818 res!3078452) b!7715819))

(declare-fun m!8197554 () Bool)

(assert (=> b!7715817 m!8197554))

(declare-fun m!8197556 () Bool)

(assert (=> d!2337018 m!8197556))

(declare-fun m!8197558 () Bool)

(assert (=> d!2337018 m!8197558))

(declare-fun m!8197560 () Bool)

(assert (=> d!2337018 m!8197560))

(declare-fun m!8197562 () Bool)

(assert (=> b!7715818 m!8197562))

(declare-fun m!8197564 () Bool)

(assert (=> b!7715818 m!8197564))

(declare-fun m!8197566 () Bool)

(assert (=> b!7715818 m!8197566))

(assert (=> b!7715602 d!2337018))

(declare-fun bm!713160 () Bool)

(declare-fun call!713166 () Bool)

(declare-fun c!1422313 () Bool)

(assert (=> bm!713160 (= call!713166 (validRegex!10951 (ite c!1422313 (regTwo!41579 (reg!20862 r!14126)) (regTwo!41578 (reg!20862 r!14126)))))))

(declare-fun b!7715829 () Bool)

(declare-fun e!4577137 () Bool)

(declare-fun e!4577134 () Bool)

(assert (=> b!7715829 (= e!4577137 e!4577134)))

(declare-fun c!1422312 () Bool)

(assert (=> b!7715829 (= c!1422312 ((_ is Star!20533) (reg!20862 r!14126)))))

(declare-fun b!7715830 () Bool)

(declare-fun e!4577133 () Bool)

(assert (=> b!7715830 (= e!4577133 call!713166)))

(declare-fun bm!713161 () Bool)

(declare-fun call!713167 () Bool)

(declare-fun call!713165 () Bool)

(assert (=> bm!713161 (= call!713167 call!713165)))

(declare-fun b!7715832 () Bool)

(declare-fun res!3078462 () Bool)

(declare-fun e!4577135 () Bool)

(assert (=> b!7715832 (=> (not res!3078462) (not e!4577135))))

(assert (=> b!7715832 (= res!3078462 call!713167)))

(declare-fun e!4577136 () Bool)

(assert (=> b!7715832 (= e!4577136 e!4577135)))

(declare-fun b!7715833 () Bool)

(declare-fun e!4577139 () Bool)

(assert (=> b!7715833 (= e!4577134 e!4577139)))

(declare-fun res!3078461 () Bool)

(assert (=> b!7715833 (= res!3078461 (not (nullable!9009 (reg!20862 (reg!20862 r!14126)))))))

(assert (=> b!7715833 (=> (not res!3078461) (not e!4577139))))

(declare-fun b!7715834 () Bool)

(declare-fun res!3078460 () Bool)

(declare-fun e!4577138 () Bool)

(assert (=> b!7715834 (=> res!3078460 e!4577138)))

(assert (=> b!7715834 (= res!3078460 (not ((_ is Concat!29378) (reg!20862 r!14126))))))

(assert (=> b!7715834 (= e!4577136 e!4577138)))

(declare-fun b!7715835 () Bool)

(assert (=> b!7715835 (= e!4577138 e!4577133)))

(declare-fun res!3078459 () Bool)

(assert (=> b!7715835 (=> (not res!3078459) (not e!4577133))))

(assert (=> b!7715835 (= res!3078459 call!713167)))

(declare-fun b!7715836 () Bool)

(assert (=> b!7715836 (= e!4577135 call!713166)))

(declare-fun b!7715837 () Bool)

(assert (=> b!7715837 (= e!4577134 e!4577136)))

(assert (=> b!7715837 (= c!1422313 ((_ is Union!20533) (reg!20862 r!14126)))))

(declare-fun bm!713162 () Bool)

(assert (=> bm!713162 (= call!713165 (validRegex!10951 (ite c!1422312 (reg!20862 (reg!20862 r!14126)) (ite c!1422313 (regOne!41579 (reg!20862 r!14126)) (regOne!41578 (reg!20862 r!14126))))))))

(declare-fun b!7715831 () Bool)

(assert (=> b!7715831 (= e!4577139 call!713165)))

(declare-fun d!2337020 () Bool)

(declare-fun res!3078458 () Bool)

(assert (=> d!2337020 (=> res!3078458 e!4577137)))

(assert (=> d!2337020 (= res!3078458 ((_ is ElementMatch!20533) (reg!20862 r!14126)))))

(assert (=> d!2337020 (= (validRegex!10951 (reg!20862 r!14126)) e!4577137)))

(assert (= (and d!2337020 (not res!3078458)) b!7715829))

(assert (= (and b!7715829 c!1422312) b!7715833))

(assert (= (and b!7715829 (not c!1422312)) b!7715837))

(assert (= (and b!7715833 res!3078461) b!7715831))

(assert (= (and b!7715837 c!1422313) b!7715832))

(assert (= (and b!7715837 (not c!1422313)) b!7715834))

(assert (= (and b!7715832 res!3078462) b!7715836))

(assert (= (and b!7715834 (not res!3078460)) b!7715835))

(assert (= (and b!7715835 res!3078459) b!7715830))

(assert (= (or b!7715832 b!7715835) bm!713161))

(assert (= (or b!7715836 b!7715830) bm!713160))

(assert (= (or b!7715831 bm!713161) bm!713162))

(declare-fun m!8197572 () Bool)

(assert (=> bm!713160 m!8197572))

(declare-fun m!8197576 () Bool)

(assert (=> b!7715833 m!8197576))

(declare-fun m!8197578 () Bool)

(assert (=> bm!713162 m!8197578))

(assert (=> b!7715609 d!2337020))

(declare-fun b!7715838 () Bool)

(declare-fun e!4577146 () Bool)

(assert (=> b!7715838 (= e!4577146 (not (= (head!15775 (_2!38067 lt!2665537)) (c!1422266 r!14126))))))

(declare-fun b!7715839 () Bool)

(declare-fun e!4577145 () Bool)

(assert (=> b!7715839 (= e!4577145 (nullable!9009 r!14126))))

(declare-fun bm!713163 () Bool)

(declare-fun call!713168 () Bool)

(assert (=> bm!713163 (= call!713168 (isEmpty!41913 (_2!38067 lt!2665537)))))

(declare-fun b!7715840 () Bool)

(declare-fun e!4577140 () Bool)

(assert (=> b!7715840 (= e!4577140 (= (head!15775 (_2!38067 lt!2665537)) (c!1422266 r!14126)))))

(declare-fun d!2337024 () Bool)

(declare-fun e!4577143 () Bool)

(assert (=> d!2337024 e!4577143))

(declare-fun c!1422316 () Bool)

(assert (=> d!2337024 (= c!1422316 ((_ is EmptyExpr!20533) r!14126))))

(declare-fun lt!2665580 () Bool)

(assert (=> d!2337024 (= lt!2665580 e!4577145)))

(declare-fun c!1422315 () Bool)

(assert (=> d!2337024 (= c!1422315 (isEmpty!41913 (_2!38067 lt!2665537)))))

(assert (=> d!2337024 (validRegex!10951 r!14126)))

(assert (=> d!2337024 (= (matchR!10029 r!14126 (_2!38067 lt!2665537)) lt!2665580)))

(declare-fun b!7715841 () Bool)

(declare-fun e!4577142 () Bool)

(assert (=> b!7715841 (= e!4577142 e!4577146)))

(declare-fun res!3078469 () Bool)

(assert (=> b!7715841 (=> res!3078469 e!4577146)))

(assert (=> b!7715841 (= res!3078469 call!713168)))

(declare-fun b!7715842 () Bool)

(assert (=> b!7715842 (= e!4577143 (= lt!2665580 call!713168))))

(declare-fun b!7715843 () Bool)

(declare-fun e!4577144 () Bool)

(assert (=> b!7715843 (= e!4577144 (not lt!2665580))))

(declare-fun b!7715844 () Bool)

(assert (=> b!7715844 (= e!4577143 e!4577144)))

(declare-fun c!1422314 () Bool)

(assert (=> b!7715844 (= c!1422314 ((_ is EmptyLang!20533) r!14126))))

(declare-fun b!7715845 () Bool)

(declare-fun e!4577141 () Bool)

(assert (=> b!7715845 (= e!4577141 e!4577142)))

(declare-fun res!3078464 () Bool)

(assert (=> b!7715845 (=> (not res!3078464) (not e!4577142))))

(assert (=> b!7715845 (= res!3078464 (not lt!2665580))))

(declare-fun b!7715846 () Bool)

(assert (=> b!7715846 (= e!4577145 (matchR!10029 (derivativeStep!5975 r!14126 (head!15775 (_2!38067 lt!2665537))) (tail!15315 (_2!38067 lt!2665537))))))

(declare-fun b!7715847 () Bool)

(declare-fun res!3078466 () Bool)

(assert (=> b!7715847 (=> (not res!3078466) (not e!4577140))))

(assert (=> b!7715847 (= res!3078466 (isEmpty!41913 (tail!15315 (_2!38067 lt!2665537))))))

(declare-fun b!7715848 () Bool)

(declare-fun res!3078467 () Bool)

(assert (=> b!7715848 (=> res!3078467 e!4577141)))

(assert (=> b!7715848 (= res!3078467 e!4577140)))

(declare-fun res!3078465 () Bool)

(assert (=> b!7715848 (=> (not res!3078465) (not e!4577140))))

(assert (=> b!7715848 (= res!3078465 lt!2665580)))

(declare-fun b!7715849 () Bool)

(declare-fun res!3078470 () Bool)

(assert (=> b!7715849 (=> res!3078470 e!4577146)))

(assert (=> b!7715849 (= res!3078470 (not (isEmpty!41913 (tail!15315 (_2!38067 lt!2665537)))))))

(declare-fun b!7715850 () Bool)

(declare-fun res!3078463 () Bool)

(assert (=> b!7715850 (=> res!3078463 e!4577141)))

(assert (=> b!7715850 (= res!3078463 (not ((_ is ElementMatch!20533) r!14126)))))

(assert (=> b!7715850 (= e!4577144 e!4577141)))

(declare-fun b!7715851 () Bool)

(declare-fun res!3078468 () Bool)

(assert (=> b!7715851 (=> (not res!3078468) (not e!4577140))))

(assert (=> b!7715851 (= res!3078468 (not call!713168))))

(assert (= (and d!2337024 c!1422315) b!7715839))

(assert (= (and d!2337024 (not c!1422315)) b!7715846))

(assert (= (and d!2337024 c!1422316) b!7715842))

(assert (= (and d!2337024 (not c!1422316)) b!7715844))

(assert (= (and b!7715844 c!1422314) b!7715843))

(assert (= (and b!7715844 (not c!1422314)) b!7715850))

(assert (= (and b!7715850 (not res!3078463)) b!7715848))

(assert (= (and b!7715848 res!3078465) b!7715851))

(assert (= (and b!7715851 res!3078468) b!7715847))

(assert (= (and b!7715847 res!3078466) b!7715840))

(assert (= (and b!7715848 (not res!3078467)) b!7715845))

(assert (= (and b!7715845 res!3078464) b!7715841))

(assert (= (and b!7715841 (not res!3078469)) b!7715849))

(assert (= (and b!7715849 (not res!3078470)) b!7715838))

(assert (= (or b!7715842 b!7715841 b!7715851) bm!713163))

(declare-fun m!8197580 () Bool)

(assert (=> bm!713163 m!8197580))

(declare-fun m!8197582 () Bool)

(assert (=> b!7715847 m!8197582))

(assert (=> b!7715847 m!8197582))

(declare-fun m!8197584 () Bool)

(assert (=> b!7715847 m!8197584))

(assert (=> b!7715849 m!8197582))

(assert (=> b!7715849 m!8197582))

(assert (=> b!7715849 m!8197584))

(assert (=> d!2337024 m!8197580))

(assert (=> d!2337024 m!8197414))

(declare-fun m!8197590 () Bool)

(assert (=> b!7715838 m!8197590))

(assert (=> b!7715839 m!8197494))

(assert (=> b!7715840 m!8197590))

(assert (=> b!7715846 m!8197590))

(assert (=> b!7715846 m!8197590))

(declare-fun m!8197594 () Bool)

(assert (=> b!7715846 m!8197594))

(assert (=> b!7715846 m!8197582))

(assert (=> b!7715846 m!8197594))

(assert (=> b!7715846 m!8197582))

(declare-fun m!8197596 () Bool)

(assert (=> b!7715846 m!8197596))

(assert (=> b!7715609 d!2337024))

(declare-fun bs!1962683 () Bool)

(declare-fun b!7715944 () Bool)

(assert (= bs!1962683 (and b!7715944 b!7715606)))

(declare-fun lambda!470867 () Int)

(assert (=> bs!1962683 (not (= lambda!470867 lambda!470850))))

(declare-fun bs!1962685 () Bool)

(assert (= bs!1962685 (and b!7715944 b!7715599)))

(assert (=> bs!1962685 (= (and (= (_1!38067 lt!2665537) s!9605) (= (reg!20862 (reg!20862 r!14126)) (reg!20862 r!14126)) (= (reg!20862 r!14126) r!14126)) (= lambda!470867 lambda!470851))))

(declare-fun bs!1962687 () Bool)

(assert (= bs!1962687 (and b!7715944 d!2337014)))

(assert (=> bs!1962687 (not (= lambda!470867 lambda!470857))))

(assert (=> b!7715944 true))

(assert (=> b!7715944 true))

(declare-fun bs!1962689 () Bool)

(declare-fun b!7715938 () Bool)

(assert (= bs!1962689 (and b!7715938 b!7715606)))

(declare-fun lambda!470869 () Int)

(assert (=> bs!1962689 (not (= lambda!470869 lambda!470850))))

(declare-fun bs!1962691 () Bool)

(assert (= bs!1962691 (and b!7715938 b!7715599)))

(assert (=> bs!1962691 (not (= lambda!470869 lambda!470851))))

(declare-fun bs!1962693 () Bool)

(assert (= bs!1962693 (and b!7715938 d!2337014)))

(assert (=> bs!1962693 (not (= lambda!470869 lambda!470857))))

(declare-fun bs!1962695 () Bool)

(assert (= bs!1962695 (and b!7715938 b!7715944)))

(assert (=> bs!1962695 (not (= lambda!470869 lambda!470867))))

(assert (=> b!7715938 true))

(assert (=> b!7715938 true))

(declare-fun b!7715936 () Bool)

(declare-fun e!4577199 () Bool)

(declare-fun e!4577203 () Bool)

(assert (=> b!7715936 (= e!4577199 e!4577203)))

(declare-fun res!3078511 () Bool)

(assert (=> b!7715936 (= res!3078511 (not ((_ is EmptyLang!20533) (reg!20862 r!14126))))))

(assert (=> b!7715936 (=> (not res!3078511) (not e!4577203))))

(declare-fun bm!713177 () Bool)

(declare-fun call!713183 () Bool)

(assert (=> bm!713177 (= call!713183 (isEmpty!41913 (_1!38067 lt!2665537)))))

(declare-fun d!2337030 () Bool)

(declare-fun c!1422339 () Bool)

(assert (=> d!2337030 (= c!1422339 ((_ is EmptyExpr!20533) (reg!20862 r!14126)))))

(assert (=> d!2337030 (= (matchRSpec!4623 (reg!20862 r!14126) (_1!38067 lt!2665537)) e!4577199)))

(declare-fun b!7715937 () Bool)

(declare-fun e!4577198 () Bool)

(assert (=> b!7715937 (= e!4577198 (= (_1!38067 lt!2665537) (Cons!73260 (c!1422266 (reg!20862 r!14126)) Nil!73260)))))

(declare-fun e!4577202 () Bool)

(declare-fun call!713182 () Bool)

(assert (=> b!7715938 (= e!4577202 call!713182)))

(declare-fun b!7715939 () Bool)

(declare-fun c!1422340 () Bool)

(assert (=> b!7715939 (= c!1422340 ((_ is ElementMatch!20533) (reg!20862 r!14126)))))

(assert (=> b!7715939 (= e!4577203 e!4577198)))

(declare-fun b!7715940 () Bool)

(declare-fun e!4577197 () Bool)

(assert (=> b!7715940 (= e!4577197 e!4577202)))

(declare-fun c!1422342 () Bool)

(assert (=> b!7715940 (= c!1422342 ((_ is Star!20533) (reg!20862 r!14126)))))

(declare-fun b!7715941 () Bool)

(declare-fun e!4577200 () Bool)

(assert (=> b!7715941 (= e!4577197 e!4577200)))

(declare-fun res!3078512 () Bool)

(assert (=> b!7715941 (= res!3078512 (matchRSpec!4623 (regOne!41579 (reg!20862 r!14126)) (_1!38067 lt!2665537)))))

(assert (=> b!7715941 (=> res!3078512 e!4577200)))

(declare-fun b!7715942 () Bool)

(assert (=> b!7715942 (= e!4577199 call!713183)))

(declare-fun b!7715943 () Bool)

(declare-fun c!1422341 () Bool)

(assert (=> b!7715943 (= c!1422341 ((_ is Union!20533) (reg!20862 r!14126)))))

(assert (=> b!7715943 (= e!4577198 e!4577197)))

(declare-fun bm!713178 () Bool)

(assert (=> bm!713178 (= call!713182 (Exists!4658 (ite c!1422342 lambda!470867 lambda!470869)))))

(declare-fun e!4577201 () Bool)

(assert (=> b!7715944 (= e!4577201 call!713182)))

(declare-fun b!7715945 () Bool)

(assert (=> b!7715945 (= e!4577200 (matchRSpec!4623 (regTwo!41579 (reg!20862 r!14126)) (_1!38067 lt!2665537)))))

(declare-fun b!7715946 () Bool)

(declare-fun res!3078513 () Bool)

(assert (=> b!7715946 (=> res!3078513 e!4577201)))

(assert (=> b!7715946 (= res!3078513 call!713183)))

(assert (=> b!7715946 (= e!4577202 e!4577201)))

(assert (= (and d!2337030 c!1422339) b!7715942))

(assert (= (and d!2337030 (not c!1422339)) b!7715936))

(assert (= (and b!7715936 res!3078511) b!7715939))

(assert (= (and b!7715939 c!1422340) b!7715937))

(assert (= (and b!7715939 (not c!1422340)) b!7715943))

(assert (= (and b!7715943 c!1422341) b!7715941))

(assert (= (and b!7715943 (not c!1422341)) b!7715940))

(assert (= (and b!7715941 (not res!3078512)) b!7715945))

(assert (= (and b!7715940 c!1422342) b!7715946))

(assert (= (and b!7715940 (not c!1422342)) b!7715938))

(assert (= (and b!7715946 (not res!3078513)) b!7715944))

(assert (= (or b!7715944 b!7715938) bm!713178))

(assert (= (or b!7715942 b!7715946) bm!713177))

(declare-fun m!8197600 () Bool)

(assert (=> bm!713177 m!8197600))

(declare-fun m!8197604 () Bool)

(assert (=> b!7715941 m!8197604))

(declare-fun m!8197610 () Bool)

(assert (=> bm!713178 m!8197610))

(declare-fun m!8197612 () Bool)

(assert (=> b!7715945 m!8197612))

(assert (=> b!7715609 d!2337030))

(declare-fun d!2337034 () Bool)

(declare-fun lt!2665584 () tuple2!69528)

(declare-fun dynLambda!29950 (Int tuple2!69528) Bool)

(assert (=> d!2337034 (dynLambda!29950 lambda!470851 lt!2665584)))

(declare-fun choose!59198 (Int) tuple2!69528)

(assert (=> d!2337034 (= lt!2665584 (choose!59198 lambda!470851))))

(assert (=> d!2337034 (Exists!4658 lambda!470851)))

(assert (=> d!2337034 (= (pickWitness!512 lambda!470851) lt!2665584)))

(declare-fun b_lambda!289227 () Bool)

(assert (=> (not b_lambda!289227) (not d!2337034)))

(declare-fun bs!1962696 () Bool)

(assert (= bs!1962696 d!2337034))

(declare-fun m!8197626 () Bool)

(assert (=> bs!1962696 m!8197626))

(declare-fun m!8197628 () Bool)

(assert (=> bs!1962696 m!8197628))

(assert (=> bs!1962696 m!8197416))

(assert (=> b!7715609 d!2337034))

(declare-fun bs!1962697 () Bool)

(declare-fun b!7715969 () Bool)

(assert (= bs!1962697 (and b!7715969 b!7715599)))

(declare-fun lambda!470870 () Int)

(assert (=> bs!1962697 (= (= (_2!38067 lt!2665537) s!9605) (= lambda!470870 lambda!470851))))

(declare-fun bs!1962698 () Bool)

(assert (= bs!1962698 (and b!7715969 b!7715606)))

(assert (=> bs!1962698 (not (= lambda!470870 lambda!470850))))

(declare-fun bs!1962699 () Bool)

(assert (= bs!1962699 (and b!7715969 b!7715938)))

(assert (=> bs!1962699 (not (= lambda!470870 lambda!470869))))

(declare-fun bs!1962700 () Bool)

(assert (= bs!1962700 (and b!7715969 b!7715944)))

(assert (=> bs!1962700 (= (and (= (_2!38067 lt!2665537) (_1!38067 lt!2665537)) (= (reg!20862 r!14126) (reg!20862 (reg!20862 r!14126))) (= r!14126 (reg!20862 r!14126))) (= lambda!470870 lambda!470867))))

(declare-fun bs!1962701 () Bool)

(assert (= bs!1962701 (and b!7715969 d!2337014)))

(assert (=> bs!1962701 (not (= lambda!470870 lambda!470857))))

(assert (=> b!7715969 true))

(assert (=> b!7715969 true))

(declare-fun bs!1962702 () Bool)

(declare-fun b!7715963 () Bool)

(assert (= bs!1962702 (and b!7715963 b!7715599)))

(declare-fun lambda!470871 () Int)

(assert (=> bs!1962702 (not (= lambda!470871 lambda!470851))))

(declare-fun bs!1962703 () Bool)

(assert (= bs!1962703 (and b!7715963 b!7715606)))

(assert (=> bs!1962703 (not (= lambda!470871 lambda!470850))))

(declare-fun bs!1962704 () Bool)

(assert (= bs!1962704 (and b!7715963 b!7715938)))

(assert (=> bs!1962704 (= (and (= (_2!38067 lt!2665537) (_1!38067 lt!2665537)) (= (regOne!41578 r!14126) (regOne!41578 (reg!20862 r!14126))) (= (regTwo!41578 r!14126) (regTwo!41578 (reg!20862 r!14126)))) (= lambda!470871 lambda!470869))))

(declare-fun bs!1962705 () Bool)

(assert (= bs!1962705 (and b!7715963 b!7715969)))

(assert (=> bs!1962705 (not (= lambda!470871 lambda!470870))))

(declare-fun bs!1962706 () Bool)

(assert (= bs!1962706 (and b!7715963 b!7715944)))

(assert (=> bs!1962706 (not (= lambda!470871 lambda!470867))))

(declare-fun bs!1962707 () Bool)

(assert (= bs!1962707 (and b!7715963 d!2337014)))

(assert (=> bs!1962707 (not (= lambda!470871 lambda!470857))))

(assert (=> b!7715963 true))

(assert (=> b!7715963 true))

(declare-fun b!7715961 () Bool)

(declare-fun e!4577213 () Bool)

(declare-fun e!4577217 () Bool)

(assert (=> b!7715961 (= e!4577213 e!4577217)))

(declare-fun res!3078522 () Bool)

(assert (=> b!7715961 (= res!3078522 (not ((_ is EmptyLang!20533) r!14126)))))

(assert (=> b!7715961 (=> (not res!3078522) (not e!4577217))))

(declare-fun bm!713180 () Bool)

(declare-fun call!713186 () Bool)

(assert (=> bm!713180 (= call!713186 (isEmpty!41913 (_2!38067 lt!2665537)))))

(declare-fun d!2337038 () Bool)

(declare-fun c!1422346 () Bool)

(assert (=> d!2337038 (= c!1422346 ((_ is EmptyExpr!20533) r!14126))))

(assert (=> d!2337038 (= (matchRSpec!4623 r!14126 (_2!38067 lt!2665537)) e!4577213)))

(declare-fun b!7715962 () Bool)

(declare-fun e!4577212 () Bool)

(assert (=> b!7715962 (= e!4577212 (= (_2!38067 lt!2665537) (Cons!73260 (c!1422266 r!14126) Nil!73260)))))

(declare-fun e!4577216 () Bool)

(declare-fun call!713185 () Bool)

(assert (=> b!7715963 (= e!4577216 call!713185)))

(declare-fun b!7715964 () Bool)

(declare-fun c!1422347 () Bool)

(assert (=> b!7715964 (= c!1422347 ((_ is ElementMatch!20533) r!14126))))

(assert (=> b!7715964 (= e!4577217 e!4577212)))

(declare-fun b!7715965 () Bool)

(declare-fun e!4577211 () Bool)

(assert (=> b!7715965 (= e!4577211 e!4577216)))

(declare-fun c!1422349 () Bool)

(assert (=> b!7715965 (= c!1422349 ((_ is Star!20533) r!14126))))

(declare-fun b!7715966 () Bool)

(declare-fun e!4577214 () Bool)

(assert (=> b!7715966 (= e!4577211 e!4577214)))

(declare-fun res!3078523 () Bool)

(assert (=> b!7715966 (= res!3078523 (matchRSpec!4623 (regOne!41579 r!14126) (_2!38067 lt!2665537)))))

(assert (=> b!7715966 (=> res!3078523 e!4577214)))

(declare-fun b!7715967 () Bool)

(assert (=> b!7715967 (= e!4577213 call!713186)))

(declare-fun b!7715968 () Bool)

(declare-fun c!1422348 () Bool)

(assert (=> b!7715968 (= c!1422348 ((_ is Union!20533) r!14126))))

(assert (=> b!7715968 (= e!4577212 e!4577211)))

(declare-fun bm!713181 () Bool)

(assert (=> bm!713181 (= call!713185 (Exists!4658 (ite c!1422349 lambda!470870 lambda!470871)))))

(declare-fun e!4577215 () Bool)

(assert (=> b!7715969 (= e!4577215 call!713185)))

(declare-fun b!7715970 () Bool)

(assert (=> b!7715970 (= e!4577214 (matchRSpec!4623 (regTwo!41579 r!14126) (_2!38067 lt!2665537)))))

(declare-fun b!7715971 () Bool)

(declare-fun res!3078524 () Bool)

(assert (=> b!7715971 (=> res!3078524 e!4577215)))

(assert (=> b!7715971 (= res!3078524 call!713186)))

(assert (=> b!7715971 (= e!4577216 e!4577215)))

(assert (= (and d!2337038 c!1422346) b!7715967))

(assert (= (and d!2337038 (not c!1422346)) b!7715961))

(assert (= (and b!7715961 res!3078522) b!7715964))

(assert (= (and b!7715964 c!1422347) b!7715962))

(assert (= (and b!7715964 (not c!1422347)) b!7715968))

(assert (= (and b!7715968 c!1422348) b!7715966))

(assert (= (and b!7715968 (not c!1422348)) b!7715965))

(assert (= (and b!7715966 (not res!3078523)) b!7715970))

(assert (= (and b!7715965 c!1422349) b!7715971))

(assert (= (and b!7715965 (not c!1422349)) b!7715963))

(assert (= (and b!7715971 (not res!3078524)) b!7715969))

(assert (= (or b!7715969 b!7715963) bm!713181))

(assert (= (or b!7715967 b!7715971) bm!713180))

(assert (=> bm!713180 m!8197580))

(declare-fun m!8197632 () Bool)

(assert (=> b!7715966 m!8197632))

(declare-fun m!8197634 () Bool)

(assert (=> bm!713181 m!8197634))

(declare-fun m!8197636 () Bool)

(assert (=> b!7715970 m!8197636))

(assert (=> b!7715609 d!2337038))

(declare-fun d!2337042 () Bool)

(assert (=> d!2337042 (= (matchR!10029 r!14126 (_2!38067 lt!2665537)) (matchRSpec!4623 r!14126 (_2!38067 lt!2665537)))))

(declare-fun lt!2665594 () Unit!168124)

(declare-fun choose!59201 (Regex!20533 List!73384) Unit!168124)

(assert (=> d!2337042 (= lt!2665594 (choose!59201 r!14126 (_2!38067 lt!2665537)))))

(assert (=> d!2337042 (validRegex!10951 r!14126)))

(assert (=> d!2337042 (= (mainMatchTheorem!4598 r!14126 (_2!38067 lt!2665537)) lt!2665594)))

(declare-fun bs!1962716 () Bool)

(assert (= bs!1962716 d!2337042))

(assert (=> bs!1962716 m!8197446))

(assert (=> bs!1962716 m!8197442))

(declare-fun m!8197644 () Bool)

(assert (=> bs!1962716 m!8197644))

(assert (=> bs!1962716 m!8197414))

(assert (=> b!7715609 d!2337042))

(declare-fun b!7715983 () Bool)

(declare-fun e!4577231 () Bool)

(assert (=> b!7715983 (= e!4577231 (not (= (head!15775 (_1!38067 lt!2665537)) (c!1422266 (reg!20862 r!14126)))))))

(declare-fun b!7715984 () Bool)

(declare-fun e!4577230 () Bool)

(assert (=> b!7715984 (= e!4577230 (nullable!9009 (reg!20862 r!14126)))))

(declare-fun bm!713184 () Bool)

(declare-fun call!713189 () Bool)

(assert (=> bm!713184 (= call!713189 (isEmpty!41913 (_1!38067 lt!2665537)))))

(declare-fun b!7715985 () Bool)

(declare-fun e!4577225 () Bool)

(assert (=> b!7715985 (= e!4577225 (= (head!15775 (_1!38067 lt!2665537)) (c!1422266 (reg!20862 r!14126))))))

(declare-fun d!2337048 () Bool)

(declare-fun e!4577228 () Bool)

(assert (=> d!2337048 e!4577228))

(declare-fun c!1422356 () Bool)

(assert (=> d!2337048 (= c!1422356 ((_ is EmptyExpr!20533) (reg!20862 r!14126)))))

(declare-fun lt!2665595 () Bool)

(assert (=> d!2337048 (= lt!2665595 e!4577230)))

(declare-fun c!1422355 () Bool)

(assert (=> d!2337048 (= c!1422355 (isEmpty!41913 (_1!38067 lt!2665537)))))

(assert (=> d!2337048 (validRegex!10951 (reg!20862 r!14126))))

(assert (=> d!2337048 (= (matchR!10029 (reg!20862 r!14126) (_1!38067 lt!2665537)) lt!2665595)))

(declare-fun b!7715986 () Bool)

(declare-fun e!4577227 () Bool)

(assert (=> b!7715986 (= e!4577227 e!4577231)))

(declare-fun res!3078534 () Bool)

(assert (=> b!7715986 (=> res!3078534 e!4577231)))

(assert (=> b!7715986 (= res!3078534 call!713189)))

(declare-fun b!7715987 () Bool)

(assert (=> b!7715987 (= e!4577228 (= lt!2665595 call!713189))))

(declare-fun b!7715988 () Bool)

(declare-fun e!4577229 () Bool)

(assert (=> b!7715988 (= e!4577229 (not lt!2665595))))

(declare-fun b!7715989 () Bool)

(assert (=> b!7715989 (= e!4577228 e!4577229)))

(declare-fun c!1422354 () Bool)

(assert (=> b!7715989 (= c!1422354 ((_ is EmptyLang!20533) (reg!20862 r!14126)))))

(declare-fun b!7715990 () Bool)

(declare-fun e!4577226 () Bool)

(assert (=> b!7715990 (= e!4577226 e!4577227)))

(declare-fun res!3078529 () Bool)

(assert (=> b!7715990 (=> (not res!3078529) (not e!4577227))))

(assert (=> b!7715990 (= res!3078529 (not lt!2665595))))

(declare-fun b!7715991 () Bool)

(assert (=> b!7715991 (= e!4577230 (matchR!10029 (derivativeStep!5975 (reg!20862 r!14126) (head!15775 (_1!38067 lt!2665537))) (tail!15315 (_1!38067 lt!2665537))))))

(declare-fun b!7715992 () Bool)

(declare-fun res!3078531 () Bool)

(assert (=> b!7715992 (=> (not res!3078531) (not e!4577225))))

(assert (=> b!7715992 (= res!3078531 (isEmpty!41913 (tail!15315 (_1!38067 lt!2665537))))))

(declare-fun b!7715993 () Bool)

(declare-fun res!3078532 () Bool)

(assert (=> b!7715993 (=> res!3078532 e!4577226)))

(assert (=> b!7715993 (= res!3078532 e!4577225)))

(declare-fun res!3078530 () Bool)

(assert (=> b!7715993 (=> (not res!3078530) (not e!4577225))))

(assert (=> b!7715993 (= res!3078530 lt!2665595)))

(declare-fun b!7715994 () Bool)

(declare-fun res!3078535 () Bool)

(assert (=> b!7715994 (=> res!3078535 e!4577231)))

(assert (=> b!7715994 (= res!3078535 (not (isEmpty!41913 (tail!15315 (_1!38067 lt!2665537)))))))

(declare-fun b!7715995 () Bool)

(declare-fun res!3078528 () Bool)

(assert (=> b!7715995 (=> res!3078528 e!4577226)))

(assert (=> b!7715995 (= res!3078528 (not ((_ is ElementMatch!20533) (reg!20862 r!14126))))))

(assert (=> b!7715995 (= e!4577229 e!4577226)))

(declare-fun b!7715996 () Bool)

(declare-fun res!3078533 () Bool)

(assert (=> b!7715996 (=> (not res!3078533) (not e!4577225))))

(assert (=> b!7715996 (= res!3078533 (not call!713189))))

(assert (= (and d!2337048 c!1422355) b!7715984))

(assert (= (and d!2337048 (not c!1422355)) b!7715991))

(assert (= (and d!2337048 c!1422356) b!7715987))

(assert (= (and d!2337048 (not c!1422356)) b!7715989))

(assert (= (and b!7715989 c!1422354) b!7715988))

(assert (= (and b!7715989 (not c!1422354)) b!7715995))

(assert (= (and b!7715995 (not res!3078528)) b!7715993))

(assert (= (and b!7715993 res!3078530) b!7715996))

(assert (= (and b!7715996 res!3078533) b!7715992))

(assert (= (and b!7715992 res!3078531) b!7715985))

(assert (= (and b!7715993 (not res!3078532)) b!7715990))

(assert (= (and b!7715990 res!3078529) b!7715986))

(assert (= (and b!7715986 (not res!3078534)) b!7715994))

(assert (= (and b!7715994 (not res!3078535)) b!7715983))

(assert (= (or b!7715987 b!7715986 b!7715996) bm!713184))

(assert (=> bm!713184 m!8197600))

(declare-fun m!8197646 () Bool)

(assert (=> b!7715992 m!8197646))

(assert (=> b!7715992 m!8197646))

(declare-fun m!8197648 () Bool)

(assert (=> b!7715992 m!8197648))

(assert (=> b!7715994 m!8197646))

(assert (=> b!7715994 m!8197646))

(assert (=> b!7715994 m!8197648))

(assert (=> d!2337048 m!8197600))

(assert (=> d!2337048 m!8197444))

(declare-fun m!8197650 () Bool)

(assert (=> b!7715983 m!8197650))

(assert (=> b!7715984 m!8197462))

(assert (=> b!7715985 m!8197650))

(assert (=> b!7715991 m!8197650))

(assert (=> b!7715991 m!8197650))

(declare-fun m!8197652 () Bool)

(assert (=> b!7715991 m!8197652))

(assert (=> b!7715991 m!8197646))

(assert (=> b!7715991 m!8197652))

(assert (=> b!7715991 m!8197646))

(declare-fun m!8197654 () Bool)

(assert (=> b!7715991 m!8197654))

(assert (=> b!7715609 d!2337048))

(declare-fun d!2337050 () Bool)

(assert (=> d!2337050 (= (matchR!10029 (reg!20862 r!14126) (_1!38067 lt!2665537)) (matchRSpec!4623 (reg!20862 r!14126) (_1!38067 lt!2665537)))))

(declare-fun lt!2665596 () Unit!168124)

(assert (=> d!2337050 (= lt!2665596 (choose!59201 (reg!20862 r!14126) (_1!38067 lt!2665537)))))

(assert (=> d!2337050 (validRegex!10951 (reg!20862 r!14126))))

(assert (=> d!2337050 (= (mainMatchTheorem!4598 (reg!20862 r!14126) (_1!38067 lt!2665537)) lt!2665596)))

(declare-fun bs!1962723 () Bool)

(assert (= bs!1962723 d!2337050))

(assert (=> bs!1962723 m!8197438))

(assert (=> bs!1962723 m!8197440))

(declare-fun m!8197656 () Bool)

(assert (=> bs!1962723 m!8197656))

(assert (=> bs!1962723 m!8197444))

(assert (=> b!7715609 d!2337050))

(declare-fun d!2337052 () Bool)

(declare-fun e!4577241 () Bool)

(assert (=> d!2337052 e!4577241))

(declare-fun res!3078546 () Bool)

(assert (=> d!2337052 (=> res!3078546 e!4577241)))

(assert (=> d!2337052 (= res!3078546 (isEmpty!41913 s!9605))))

(declare-fun lt!2665600 () Unit!168124)

(declare-fun choose!59202 (Regex!20533 List!73384) Unit!168124)

(assert (=> d!2337052 (= lt!2665600 (choose!59202 (reg!20862 r!14126) s!9605))))

(assert (=> d!2337052 (validRegex!10951 (Star!20533 (reg!20862 r!14126)))))

(assert (=> d!2337052 (= (lemmaStarAppConcat!48 (reg!20862 r!14126) s!9605) lt!2665600)))

(declare-fun b!7716013 () Bool)

(assert (=> b!7716013 (= e!4577241 (matchR!10029 (Concat!29378 (reg!20862 r!14126) (Star!20533 (reg!20862 r!14126))) s!9605))))

(assert (= (and d!2337052 (not res!3078546)) b!7716013))

(assert (=> d!2337052 m!8197434))

(declare-fun m!8197676 () Bool)

(assert (=> d!2337052 m!8197676))

(declare-fun m!8197678 () Bool)

(assert (=> d!2337052 m!8197678))

(declare-fun m!8197680 () Bool)

(assert (=> b!7716013 m!8197680))

(assert (=> b!7715603 d!2337052))

(declare-fun b!7716014 () Bool)

(declare-fun e!4577248 () Bool)

(assert (=> b!7716014 (= e!4577248 (not (= (head!15775 s!9605) (c!1422266 (Concat!29378 (reg!20862 r!14126) r!14126)))))))

(declare-fun b!7716015 () Bool)

(declare-fun e!4577247 () Bool)

(assert (=> b!7716015 (= e!4577247 (nullable!9009 (Concat!29378 (reg!20862 r!14126) r!14126)))))

(declare-fun bm!713186 () Bool)

(declare-fun call!713191 () Bool)

(assert (=> bm!713186 (= call!713191 (isEmpty!41913 s!9605))))

(declare-fun b!7716016 () Bool)

(declare-fun e!4577242 () Bool)

(assert (=> b!7716016 (= e!4577242 (= (head!15775 s!9605) (c!1422266 (Concat!29378 (reg!20862 r!14126) r!14126))))))

(declare-fun d!2337058 () Bool)

(declare-fun e!4577245 () Bool)

(assert (=> d!2337058 e!4577245))

(declare-fun c!1422362 () Bool)

(assert (=> d!2337058 (= c!1422362 ((_ is EmptyExpr!20533) (Concat!29378 (reg!20862 r!14126) r!14126)))))

(declare-fun lt!2665601 () Bool)

(assert (=> d!2337058 (= lt!2665601 e!4577247)))

(declare-fun c!1422361 () Bool)

(assert (=> d!2337058 (= c!1422361 (isEmpty!41913 s!9605))))

(assert (=> d!2337058 (validRegex!10951 (Concat!29378 (reg!20862 r!14126) r!14126))))

(assert (=> d!2337058 (= (matchR!10029 (Concat!29378 (reg!20862 r!14126) r!14126) s!9605) lt!2665601)))

(declare-fun b!7716017 () Bool)

(declare-fun e!4577244 () Bool)

(assert (=> b!7716017 (= e!4577244 e!4577248)))

(declare-fun res!3078553 () Bool)

(assert (=> b!7716017 (=> res!3078553 e!4577248)))

(assert (=> b!7716017 (= res!3078553 call!713191)))

(declare-fun b!7716018 () Bool)

(assert (=> b!7716018 (= e!4577245 (= lt!2665601 call!713191))))

(declare-fun b!7716019 () Bool)

(declare-fun e!4577246 () Bool)

(assert (=> b!7716019 (= e!4577246 (not lt!2665601))))

(declare-fun b!7716020 () Bool)

(assert (=> b!7716020 (= e!4577245 e!4577246)))

(declare-fun c!1422360 () Bool)

(assert (=> b!7716020 (= c!1422360 ((_ is EmptyLang!20533) (Concat!29378 (reg!20862 r!14126) r!14126)))))

(declare-fun b!7716021 () Bool)

(declare-fun e!4577243 () Bool)

(assert (=> b!7716021 (= e!4577243 e!4577244)))

(declare-fun res!3078548 () Bool)

(assert (=> b!7716021 (=> (not res!3078548) (not e!4577244))))

(assert (=> b!7716021 (= res!3078548 (not lt!2665601))))

(declare-fun b!7716022 () Bool)

(assert (=> b!7716022 (= e!4577247 (matchR!10029 (derivativeStep!5975 (Concat!29378 (reg!20862 r!14126) r!14126) (head!15775 s!9605)) (tail!15315 s!9605)))))

(declare-fun b!7716023 () Bool)

(declare-fun res!3078550 () Bool)

(assert (=> b!7716023 (=> (not res!3078550) (not e!4577242))))

(assert (=> b!7716023 (= res!3078550 (isEmpty!41913 (tail!15315 s!9605)))))

(declare-fun b!7716024 () Bool)

(declare-fun res!3078551 () Bool)

(assert (=> b!7716024 (=> res!3078551 e!4577243)))

(assert (=> b!7716024 (= res!3078551 e!4577242)))

(declare-fun res!3078549 () Bool)

(assert (=> b!7716024 (=> (not res!3078549) (not e!4577242))))

(assert (=> b!7716024 (= res!3078549 lt!2665601)))

(declare-fun b!7716025 () Bool)

(declare-fun res!3078554 () Bool)

(assert (=> b!7716025 (=> res!3078554 e!4577248)))

(assert (=> b!7716025 (= res!3078554 (not (isEmpty!41913 (tail!15315 s!9605))))))

(declare-fun b!7716026 () Bool)

(declare-fun res!3078547 () Bool)

(assert (=> b!7716026 (=> res!3078547 e!4577243)))

(assert (=> b!7716026 (= res!3078547 (not ((_ is ElementMatch!20533) (Concat!29378 (reg!20862 r!14126) r!14126))))))

(assert (=> b!7716026 (= e!4577246 e!4577243)))

(declare-fun b!7716027 () Bool)

(declare-fun res!3078552 () Bool)

(assert (=> b!7716027 (=> (not res!3078552) (not e!4577242))))

(assert (=> b!7716027 (= res!3078552 (not call!713191))))

(assert (= (and d!2337058 c!1422361) b!7716015))

(assert (= (and d!2337058 (not c!1422361)) b!7716022))

(assert (= (and d!2337058 c!1422362) b!7716018))

(assert (= (and d!2337058 (not c!1422362)) b!7716020))

(assert (= (and b!7716020 c!1422360) b!7716019))

(assert (= (and b!7716020 (not c!1422360)) b!7716026))

(assert (= (and b!7716026 (not res!3078547)) b!7716024))

(assert (= (and b!7716024 res!3078549) b!7716027))

(assert (= (and b!7716027 res!3078552) b!7716023))

(assert (= (and b!7716023 res!3078550) b!7716016))

(assert (= (and b!7716024 (not res!3078551)) b!7716021))

(assert (= (and b!7716021 res!3078548) b!7716017))

(assert (= (and b!7716017 (not res!3078553)) b!7716025))

(assert (= (and b!7716025 (not res!3078554)) b!7716014))

(assert (= (or b!7716018 b!7716017 b!7716027) bm!713186))

(assert (=> bm!713186 m!8197434))

(assert (=> b!7716023 m!8197488))

(assert (=> b!7716023 m!8197488))

(assert (=> b!7716023 m!8197490))

(assert (=> b!7716025 m!8197488))

(assert (=> b!7716025 m!8197488))

(assert (=> b!7716025 m!8197490))

(assert (=> d!2337058 m!8197434))

(declare-fun m!8197682 () Bool)

(assert (=> d!2337058 m!8197682))

(assert (=> b!7716014 m!8197492))

(declare-fun m!8197684 () Bool)

(assert (=> b!7716015 m!8197684))

(assert (=> b!7716016 m!8197492))

(assert (=> b!7716022 m!8197492))

(assert (=> b!7716022 m!8197492))

(declare-fun m!8197686 () Bool)

(assert (=> b!7716022 m!8197686))

(assert (=> b!7716022 m!8197488))

(assert (=> b!7716022 m!8197686))

(assert (=> b!7716022 m!8197488))

(declare-fun m!8197688 () Bool)

(assert (=> b!7716022 m!8197688))

(assert (=> b!7715603 d!2337058))

(declare-fun d!2337060 () Bool)

(assert (=> d!2337060 (isDefined!14174 (findConcatSeparation!3588 (reg!20862 r!14126) r!14126 Nil!73260 s!9605 s!9605))))

(declare-fun lt!2665608 () Unit!168124)

(declare-fun choose!59203 (Regex!20533 Regex!20533 List!73384) Unit!168124)

(assert (=> d!2337060 (= lt!2665608 (choose!59203 (reg!20862 r!14126) r!14126 s!9605))))

(assert (=> d!2337060 (validRegex!10951 (reg!20862 r!14126))))

(assert (=> d!2337060 (= (lemmaConcatAcceptsStringThenFindSeparationIsDefined!306 (reg!20862 r!14126) r!14126 s!9605) lt!2665608)))

(declare-fun bs!1962724 () Bool)

(assert (= bs!1962724 d!2337060))

(assert (=> bs!1962724 m!8197428))

(assert (=> bs!1962724 m!8197428))

(assert (=> bs!1962724 m!8197430))

(declare-fun m!8197708 () Bool)

(assert (=> bs!1962724 m!8197708))

(assert (=> bs!1962724 m!8197444))

(assert (=> b!7715603 d!2337060))

(declare-fun d!2337064 () Bool)

(assert (=> d!2337064 (= (isEmpty!41913 s!9605) ((_ is Nil!73260) s!9605))))

(assert (=> b!7715598 d!2337064))

(declare-fun b!7716102 () Bool)

(declare-fun e!4577274 () Bool)

(declare-fun tp!2264011 () Bool)

(declare-fun tp!2264012 () Bool)

(assert (=> b!7716102 (= e!4577274 (and tp!2264011 tp!2264012))))

(declare-fun b!7716099 () Bool)

(assert (=> b!7716099 (= e!4577274 tp_is_empty!51421)))

(assert (=> b!7715601 (= tp!2263961 e!4577274)))

(declare-fun b!7716101 () Bool)

(declare-fun tp!2264013 () Bool)

(assert (=> b!7716101 (= e!4577274 tp!2264013)))

(declare-fun b!7716100 () Bool)

(declare-fun tp!2264010 () Bool)

(declare-fun tp!2264014 () Bool)

(assert (=> b!7716100 (= e!4577274 (and tp!2264010 tp!2264014))))

(assert (= (and b!7715601 ((_ is ElementMatch!20533) (reg!20862 r!14126))) b!7716099))

(assert (= (and b!7715601 ((_ is Concat!29378) (reg!20862 r!14126))) b!7716100))

(assert (= (and b!7715601 ((_ is Star!20533) (reg!20862 r!14126))) b!7716101))

(assert (= (and b!7715601 ((_ is Union!20533) (reg!20862 r!14126))) b!7716102))

(declare-fun b!7716110 () Bool)

(declare-fun e!4577278 () Bool)

(declare-fun tp!2264017 () Bool)

(assert (=> b!7716110 (= e!4577278 (and tp_is_empty!51421 tp!2264017))))

(assert (=> b!7715595 (= tp!2263957 e!4577278)))

(assert (= (and b!7715595 ((_ is Cons!73260) (t!388119 s!9605))) b!7716110))

(declare-fun b!7716114 () Bool)

(declare-fun e!4577279 () Bool)

(declare-fun tp!2264019 () Bool)

(declare-fun tp!2264020 () Bool)

(assert (=> b!7716114 (= e!4577279 (and tp!2264019 tp!2264020))))

(declare-fun b!7716111 () Bool)

(assert (=> b!7716111 (= e!4577279 tp_is_empty!51421)))

(assert (=> b!7715608 (= tp!2263959 e!4577279)))

(declare-fun b!7716113 () Bool)

(declare-fun tp!2264021 () Bool)

(assert (=> b!7716113 (= e!4577279 tp!2264021)))

(declare-fun b!7716112 () Bool)

(declare-fun tp!2264018 () Bool)

(declare-fun tp!2264022 () Bool)

(assert (=> b!7716112 (= e!4577279 (and tp!2264018 tp!2264022))))

(assert (= (and b!7715608 ((_ is ElementMatch!20533) (regOne!41578 r!14126))) b!7716111))

(assert (= (and b!7715608 ((_ is Concat!29378) (regOne!41578 r!14126))) b!7716112))

(assert (= (and b!7715608 ((_ is Star!20533) (regOne!41578 r!14126))) b!7716113))

(assert (= (and b!7715608 ((_ is Union!20533) (regOne!41578 r!14126))) b!7716114))

(declare-fun b!7716118 () Bool)

(declare-fun e!4577280 () Bool)

(declare-fun tp!2264024 () Bool)

(declare-fun tp!2264025 () Bool)

(assert (=> b!7716118 (= e!4577280 (and tp!2264024 tp!2264025))))

(declare-fun b!7716115 () Bool)

(assert (=> b!7716115 (= e!4577280 tp_is_empty!51421)))

(assert (=> b!7715608 (= tp!2263956 e!4577280)))

(declare-fun b!7716117 () Bool)

(declare-fun tp!2264026 () Bool)

(assert (=> b!7716117 (= e!4577280 tp!2264026)))

(declare-fun b!7716116 () Bool)

(declare-fun tp!2264023 () Bool)

(declare-fun tp!2264027 () Bool)

(assert (=> b!7716116 (= e!4577280 (and tp!2264023 tp!2264027))))

(assert (= (and b!7715608 ((_ is ElementMatch!20533) (regTwo!41578 r!14126))) b!7716115))

(assert (= (and b!7715608 ((_ is Concat!29378) (regTwo!41578 r!14126))) b!7716116))

(assert (= (and b!7715608 ((_ is Star!20533) (regTwo!41578 r!14126))) b!7716117))

(assert (= (and b!7715608 ((_ is Union!20533) (regTwo!41578 r!14126))) b!7716118))

(declare-fun b!7716122 () Bool)

(declare-fun e!4577281 () Bool)

(declare-fun tp!2264029 () Bool)

(declare-fun tp!2264030 () Bool)

(assert (=> b!7716122 (= e!4577281 (and tp!2264029 tp!2264030))))

(declare-fun b!7716119 () Bool)

(assert (=> b!7716119 (= e!4577281 tp_is_empty!51421)))

(assert (=> b!7715604 (= tp!2263958 e!4577281)))

(declare-fun b!7716121 () Bool)

(declare-fun tp!2264031 () Bool)

(assert (=> b!7716121 (= e!4577281 tp!2264031)))

(declare-fun b!7716120 () Bool)

(declare-fun tp!2264028 () Bool)

(declare-fun tp!2264032 () Bool)

(assert (=> b!7716120 (= e!4577281 (and tp!2264028 tp!2264032))))

(assert (= (and b!7715604 ((_ is ElementMatch!20533) (regOne!41579 r!14126))) b!7716119))

(assert (= (and b!7715604 ((_ is Concat!29378) (regOne!41579 r!14126))) b!7716120))

(assert (= (and b!7715604 ((_ is Star!20533) (regOne!41579 r!14126))) b!7716121))

(assert (= (and b!7715604 ((_ is Union!20533) (regOne!41579 r!14126))) b!7716122))

(declare-fun b!7716126 () Bool)

(declare-fun e!4577282 () Bool)

(declare-fun tp!2264034 () Bool)

(declare-fun tp!2264035 () Bool)

(assert (=> b!7716126 (= e!4577282 (and tp!2264034 tp!2264035))))

(declare-fun b!7716123 () Bool)

(assert (=> b!7716123 (= e!4577282 tp_is_empty!51421)))

(assert (=> b!7715604 (= tp!2263960 e!4577282)))

(declare-fun b!7716125 () Bool)

(declare-fun tp!2264036 () Bool)

(assert (=> b!7716125 (= e!4577282 tp!2264036)))

(declare-fun b!7716124 () Bool)

(declare-fun tp!2264033 () Bool)

(declare-fun tp!2264037 () Bool)

(assert (=> b!7716124 (= e!4577282 (and tp!2264033 tp!2264037))))

(assert (= (and b!7715604 ((_ is ElementMatch!20533) (regTwo!41579 r!14126))) b!7716123))

(assert (= (and b!7715604 ((_ is Concat!29378) (regTwo!41579 r!14126))) b!7716124))

(assert (= (and b!7715604 ((_ is Star!20533) (regTwo!41579 r!14126))) b!7716125))

(assert (= (and b!7715604 ((_ is Union!20533) (regTwo!41579 r!14126))) b!7716126))

(declare-fun b_lambda!289233 () Bool)

(assert (= b_lambda!289227 (or b!7715599 b_lambda!289233)))

(declare-fun bs!1962726 () Bool)

(declare-fun d!2337068 () Bool)

(assert (= bs!1962726 (and d!2337068 b!7715599)))

(declare-fun res!3078572 () Bool)

(declare-fun e!4577283 () Bool)

(assert (=> bs!1962726 (=> (not res!3078572) (not e!4577283))))

(assert (=> bs!1962726 (= res!3078572 (= (++!17741 (_1!38067 lt!2665584) (_2!38067 lt!2665584)) s!9605))))

(assert (=> bs!1962726 (= (dynLambda!29950 lambda!470851 lt!2665584) e!4577283)))

(declare-fun b!7716127 () Bool)

(declare-fun res!3078573 () Bool)

(assert (=> b!7716127 (=> (not res!3078573) (not e!4577283))))

(assert (=> b!7716127 (= res!3078573 (not (isEmpty!41913 (_1!38067 lt!2665584))))))

(declare-fun b!7716128 () Bool)

(declare-fun res!3078574 () Bool)

(assert (=> b!7716128 (=> (not res!3078574) (not e!4577283))))

(assert (=> b!7716128 (= res!3078574 (matchRSpec!4623 (reg!20862 r!14126) (_1!38067 lt!2665584)))))

(declare-fun b!7716129 () Bool)

(assert (=> b!7716129 (= e!4577283 (matchRSpec!4623 r!14126 (_2!38067 lt!2665584)))))

(assert (= (and bs!1962726 res!3078572) b!7716127))

(assert (= (and b!7716127 res!3078573) b!7716128))

(assert (= (and b!7716128 res!3078574) b!7716129))

(declare-fun m!8197718 () Bool)

(assert (=> bs!1962726 m!8197718))

(declare-fun m!8197720 () Bool)

(assert (=> b!7716127 m!8197720))

(declare-fun m!8197722 () Bool)

(assert (=> b!7716128 m!8197722))

(declare-fun m!8197724 () Bool)

(assert (=> b!7716129 m!8197724))

(assert (=> d!2337034 d!2337068))

(check-sat (not b!7715778) (not b!7716117) (not b!7715725) (not b!7716129) tp_is_empty!51421 (not b!7715849) (not bm!713181) (not b!7715722) (not b!7715715) (not d!2336992) (not b!7715983) (not b!7715838) (not b!7715723) (not bm!713163) (not b!7715779) (not b!7715985) (not b!7715833) (not d!2337014) (not bm!713162) (not b!7716127) (not b!7716025) (not b!7715994) (not b!7715817) (not bm!713142) (not b!7715818) (not d!2337018) (not bm!713160) (not d!2337008) (not b!7715839) (not b!7716120) (not b!7716014) (not d!2337048) (not b!7715984) (not b!7716126) (not b!7716112) (not b!7716015) (not b!7716116) (not d!2336994) (not b!7716016) (not b!7715776) (not b!7716100) (not b!7716122) (not bm!713177) (not d!2337050) (not bm!713180) (not b!7716128) (not b!7716113) (not b!7716118) (not bm!713186) (not b!7715846) (not b!7715847) (not b!7716110) (not b!7715773) (not b!7716023) (not bs!1962726) (not b!7715777) (not b!7715991) (not bm!713178) (not d!2337010) (not b!7716114) (not b!7716013) (not b!7716125) (not d!2337060) (not d!2337034) (not b!7715781) (not bm!713150) (not b!7715840) (not d!2337004) (not d!2337024) (not b!7715966) (not b!7715941) (not b_lambda!289233) (not b!7716101) (not bm!713184) (not d!2337058) (not b!7715716) (not b!7715992) (not b!7716124) (not b!7716102) (not b!7715970) (not b!7716022) (not d!2337052) (not b!7715945) (not b!7716121) (not b!7715714) (not d!2337042) (not bm!713144) (not b!7715639))
(check-sat)
