; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!281870 () Bool)

(assert start!281870)

(declare-fun res!1196197 () Bool)

(declare-fun e!1826827 () Bool)

(assert (=> start!281870 (=> (not res!1196197) (not e!1826827))))

(declare-datatypes ((C!17824 0))(
  ( (C!17825 (val!10946 Int)) )
))
(declare-datatypes ((Regex!8821 0))(
  ( (ElementMatch!8821 (c!469804 C!17824)) (Concat!14142 (regOne!18154 Regex!8821) (regTwo!18154 Regex!8821)) (EmptyExpr!8821) (Star!8821 (reg!9150 Regex!8821)) (EmptyLang!8821) (Union!8821 (regOne!18155 Regex!8821) (regTwo!18155 Regex!8821)) )
))
(declare-fun r!23079 () Regex!8821)

(declare-fun validRegex!3594 (Regex!8821) Bool)

(assert (=> start!281870 (= res!1196197 (validRegex!3594 r!23079))))

(assert (=> start!281870 e!1826827))

(declare-fun e!1826826 () Bool)

(assert (=> start!281870 e!1826826))

(declare-fun b!2890325 () Bool)

(assert (=> b!2890325 (= e!1826827 (not (validRegex!3594 (regOne!18155 r!23079))))))

(declare-fun b!2890326 () Bool)

(declare-fun tp!928146 () Bool)

(assert (=> b!2890326 (= e!1826826 tp!928146)))

(declare-fun b!2890327 () Bool)

(declare-fun tp!928145 () Bool)

(declare-fun tp!928149 () Bool)

(assert (=> b!2890327 (= e!1826826 (and tp!928145 tp!928149))))

(declare-fun b!2890328 () Bool)

(declare-fun tp!928148 () Bool)

(declare-fun tp!928147 () Bool)

(assert (=> b!2890328 (= e!1826826 (and tp!928148 tp!928147))))

(declare-fun b!2890329 () Bool)

(declare-fun res!1196195 () Bool)

(assert (=> b!2890329 (=> (not res!1196195) (not e!1826827))))

(get-info :version)

(assert (=> b!2890329 (= res!1196195 (and (not ((_ is EmptyExpr!8821) r!23079)) (not ((_ is EmptyLang!8821) r!23079)) (not ((_ is ElementMatch!8821) r!23079)) (not ((_ is Star!8821) r!23079)) ((_ is Union!8821) r!23079)))))

(declare-fun b!2890330 () Bool)

(declare-fun res!1196194 () Bool)

(assert (=> b!2890330 (=> (not res!1196194) (not e!1826827))))

(declare-datatypes ((List!34622 0))(
  ( (Nil!34498) (Cons!34498 (h!39918 C!17824) (t!233665 List!34622)) )
))
(declare-datatypes ((Option!6494 0))(
  ( (None!6493) (Some!6493 (v!34619 List!34622)) )
))
(declare-fun isDefined!5058 (Option!6494) Bool)

(declare-fun getLanguageWitness!528 (Regex!8821) Option!6494)

(assert (=> b!2890330 (= res!1196194 (isDefined!5058 (getLanguageWitness!528 r!23079)))))

(declare-fun b!2890331 () Bool)

(declare-fun res!1196196 () Bool)

(assert (=> b!2890331 (=> (not res!1196196) (not e!1826827))))

(assert (=> b!2890331 (= res!1196196 ((_ is Some!6493) (getLanguageWitness!528 (regOne!18155 r!23079))))))

(declare-fun b!2890332 () Bool)

(declare-fun tp_is_empty!15229 () Bool)

(assert (=> b!2890332 (= e!1826826 tp_is_empty!15229)))

(assert (= (and start!281870 res!1196197) b!2890330))

(assert (= (and b!2890330 res!1196194) b!2890329))

(assert (= (and b!2890329 res!1196195) b!2890331))

(assert (= (and b!2890331 res!1196196) b!2890325))

(assert (= (and start!281870 ((_ is ElementMatch!8821) r!23079)) b!2890332))

(assert (= (and start!281870 ((_ is Concat!14142) r!23079)) b!2890327))

(assert (= (and start!281870 ((_ is Star!8821) r!23079)) b!2890326))

(assert (= (and start!281870 ((_ is Union!8821) r!23079)) b!2890328))

(declare-fun m!3302281 () Bool)

(assert (=> start!281870 m!3302281))

(declare-fun m!3302283 () Bool)

(assert (=> b!2890325 m!3302283))

(declare-fun m!3302285 () Bool)

(assert (=> b!2890330 m!3302285))

(assert (=> b!2890330 m!3302285))

(declare-fun m!3302287 () Bool)

(assert (=> b!2890330 m!3302287))

(declare-fun m!3302289 () Bool)

(assert (=> b!2890331 m!3302289))

(check-sat (not b!2890325) tp_is_empty!15229 (not b!2890328) (not b!2890331) (not start!281870) (not b!2890326) (not b!2890330) (not b!2890327))
(check-sat)
(get-model)

(declare-fun b!2890433 () Bool)

(declare-fun e!1826891 () Bool)

(declare-fun e!1826893 () Bool)

(assert (=> b!2890433 (= e!1826891 e!1826893)))

(declare-fun c!469846 () Bool)

(assert (=> b!2890433 (= c!469846 ((_ is Union!8821) r!23079))))

(declare-fun b!2890434 () Bool)

(declare-fun res!1196219 () Bool)

(declare-fun e!1826894 () Bool)

(assert (=> b!2890434 (=> (not res!1196219) (not e!1826894))))

(declare-fun call!187629 () Bool)

(assert (=> b!2890434 (= res!1196219 call!187629)))

(assert (=> b!2890434 (= e!1826893 e!1826894)))

(declare-fun b!2890435 () Bool)

(declare-fun e!1826892 () Bool)

(assert (=> b!2890435 (= e!1826892 e!1826891)))

(declare-fun c!469845 () Bool)

(assert (=> b!2890435 (= c!469845 ((_ is Star!8821) r!23079))))

(declare-fun b!2890436 () Bool)

(declare-fun res!1196220 () Bool)

(declare-fun e!1826888 () Bool)

(assert (=> b!2890436 (=> res!1196220 e!1826888)))

(assert (=> b!2890436 (= res!1196220 (not ((_ is Concat!14142) r!23079)))))

(assert (=> b!2890436 (= e!1826893 e!1826888)))

(declare-fun d!834380 () Bool)

(declare-fun res!1196218 () Bool)

(assert (=> d!834380 (=> res!1196218 e!1826892)))

(assert (=> d!834380 (= res!1196218 ((_ is ElementMatch!8821) r!23079))))

(assert (=> d!834380 (= (validRegex!3594 r!23079) e!1826892)))

(declare-fun b!2890437 () Bool)

(declare-fun e!1826889 () Bool)

(declare-fun call!187628 () Bool)

(assert (=> b!2890437 (= e!1826889 call!187628)))

(declare-fun bm!187622 () Bool)

(declare-fun call!187627 () Bool)

(assert (=> bm!187622 (= call!187627 (validRegex!3594 (ite c!469845 (reg!9150 r!23079) (ite c!469846 (regTwo!18155 r!23079) (regTwo!18154 r!23079)))))))

(declare-fun b!2890438 () Bool)

(assert (=> b!2890438 (= e!1826894 call!187628)))

(declare-fun bm!187623 () Bool)

(assert (=> bm!187623 (= call!187628 call!187627)))

(declare-fun bm!187624 () Bool)

(assert (=> bm!187624 (= call!187629 (validRegex!3594 (ite c!469846 (regOne!18155 r!23079) (regOne!18154 r!23079))))))

(declare-fun b!2890439 () Bool)

(declare-fun e!1826890 () Bool)

(assert (=> b!2890439 (= e!1826890 call!187627)))

(declare-fun b!2890440 () Bool)

(assert (=> b!2890440 (= e!1826891 e!1826890)))

(declare-fun res!1196222 () Bool)

(declare-fun nullable!2723 (Regex!8821) Bool)

(assert (=> b!2890440 (= res!1196222 (not (nullable!2723 (reg!9150 r!23079))))))

(assert (=> b!2890440 (=> (not res!1196222) (not e!1826890))))

(declare-fun b!2890441 () Bool)

(assert (=> b!2890441 (= e!1826888 e!1826889)))

(declare-fun res!1196221 () Bool)

(assert (=> b!2890441 (=> (not res!1196221) (not e!1826889))))

(assert (=> b!2890441 (= res!1196221 call!187629)))

(assert (= (and d!834380 (not res!1196218)) b!2890435))

(assert (= (and b!2890435 c!469845) b!2890440))

(assert (= (and b!2890435 (not c!469845)) b!2890433))

(assert (= (and b!2890440 res!1196222) b!2890439))

(assert (= (and b!2890433 c!469846) b!2890434))

(assert (= (and b!2890433 (not c!469846)) b!2890436))

(assert (= (and b!2890434 res!1196219) b!2890438))

(assert (= (and b!2890436 (not res!1196220)) b!2890441))

(assert (= (and b!2890441 res!1196221) b!2890437))

(assert (= (or b!2890438 b!2890437) bm!187623))

(assert (= (or b!2890434 b!2890441) bm!187624))

(assert (= (or b!2890439 bm!187623) bm!187622))

(declare-fun m!3302305 () Bool)

(assert (=> bm!187622 m!3302305))

(declare-fun m!3302307 () Bool)

(assert (=> bm!187624 m!3302307))

(declare-fun m!3302309 () Bool)

(assert (=> b!2890440 m!3302309))

(assert (=> start!281870 d!834380))

(declare-fun b!2890522 () Bool)

(declare-fun e!1826932 () Option!6494)

(declare-fun e!1826939 () Option!6494)

(assert (=> b!2890522 (= e!1826932 e!1826939)))

(declare-fun lt!1020936 () Option!6494)

(declare-fun call!187642 () Option!6494)

(assert (=> b!2890522 (= lt!1020936 call!187642)))

(declare-fun c!469871 () Bool)

(assert (=> b!2890522 (= c!469871 ((_ is Some!6493) lt!1020936))))

(declare-fun b!2890523 () Bool)

(declare-fun e!1826938 () Option!6494)

(declare-fun e!1826934 () Option!6494)

(assert (=> b!2890523 (= e!1826938 e!1826934)))

(declare-fun c!469873 () Bool)

(assert (=> b!2890523 (= c!469873 ((_ is EmptyLang!8821) (regOne!18155 r!23079)))))

(declare-fun b!2890524 () Bool)

(declare-fun e!1826937 () Option!6494)

(assert (=> b!2890524 (= e!1826937 (Some!6493 (Cons!34498 (c!469804 (regOne!18155 r!23079)) Nil!34498)))))

(declare-fun b!2890525 () Bool)

(declare-fun e!1826933 () Option!6494)

(assert (=> b!2890525 (= e!1826933 None!6493)))

(declare-fun b!2890526 () Bool)

(declare-fun c!469868 () Bool)

(assert (=> b!2890526 (= c!469868 ((_ is Union!8821) (regOne!18155 r!23079)))))

(declare-fun e!1826936 () Option!6494)

(assert (=> b!2890526 (= e!1826936 e!1826932)))

(declare-fun b!2890527 () Bool)

(assert (=> b!2890527 (= e!1826939 lt!1020936)))

(declare-fun b!2890528 () Bool)

(declare-fun call!187643 () Option!6494)

(assert (=> b!2890528 (= e!1826939 call!187643)))

(declare-fun b!2890529 () Bool)

(declare-fun c!469870 () Bool)

(declare-fun lt!1020937 () Option!6494)

(assert (=> b!2890529 (= c!469870 ((_ is Some!6493) lt!1020937))))

(assert (=> b!2890529 (= lt!1020937 call!187642)))

(declare-fun e!1826935 () Option!6494)

(assert (=> b!2890529 (= e!1826935 e!1826933)))

(declare-fun bm!187637 () Bool)

(assert (=> bm!187637 (= call!187642 (getLanguageWitness!528 (ite c!469868 (regOne!18155 (regOne!18155 r!23079)) (regTwo!18154 (regOne!18155 r!23079)))))))

(declare-fun b!2890530 () Bool)

(assert (=> b!2890530 (= e!1826932 e!1826935)))

(declare-fun lt!1020935 () Option!6494)

(assert (=> b!2890530 (= lt!1020935 call!187643)))

(declare-fun c!469874 () Bool)

(assert (=> b!2890530 (= c!469874 ((_ is Some!6493) lt!1020935))))

(declare-fun b!2890532 () Bool)

(assert (=> b!2890532 (= e!1826938 (Some!6493 Nil!34498))))

(declare-fun b!2890533 () Bool)

(assert (=> b!2890533 (= e!1826934 None!6493)))

(declare-fun b!2890534 () Bool)

(declare-fun ++!8221 (List!34622 List!34622) List!34622)

(assert (=> b!2890534 (= e!1826933 (Some!6493 (++!8221 (v!34619 lt!1020935) (v!34619 lt!1020937))))))

(declare-fun bm!187638 () Bool)

(assert (=> bm!187638 (= call!187643 (getLanguageWitness!528 (ite c!469868 (regTwo!18155 (regOne!18155 r!23079)) (regOne!18154 (regOne!18155 r!23079)))))))

(declare-fun b!2890535 () Bool)

(assert (=> b!2890535 (= e!1826935 None!6493)))

(declare-fun b!2890536 () Bool)

(assert (=> b!2890536 (= e!1826937 e!1826936)))

(declare-fun c!469872 () Bool)

(assert (=> b!2890536 (= c!469872 ((_ is Star!8821) (regOne!18155 r!23079)))))

(declare-fun b!2890537 () Bool)

(assert (=> b!2890537 (= e!1826936 (Some!6493 Nil!34498))))

(declare-fun b!2890531 () Bool)

(declare-fun c!469869 () Bool)

(assert (=> b!2890531 (= c!469869 ((_ is ElementMatch!8821) (regOne!18155 r!23079)))))

(assert (=> b!2890531 (= e!1826934 e!1826937)))

(declare-fun d!834388 () Bool)

(declare-fun c!469867 () Bool)

(assert (=> d!834388 (= c!469867 ((_ is EmptyExpr!8821) (regOne!18155 r!23079)))))

(assert (=> d!834388 (= (getLanguageWitness!528 (regOne!18155 r!23079)) e!1826938)))

(assert (= (and d!834388 c!469867) b!2890532))

(assert (= (and d!834388 (not c!469867)) b!2890523))

(assert (= (and b!2890523 c!469873) b!2890533))

(assert (= (and b!2890523 (not c!469873)) b!2890531))

(assert (= (and b!2890531 c!469869) b!2890524))

(assert (= (and b!2890531 (not c!469869)) b!2890536))

(assert (= (and b!2890536 c!469872) b!2890537))

(assert (= (and b!2890536 (not c!469872)) b!2890526))

(assert (= (and b!2890526 c!469868) b!2890522))

(assert (= (and b!2890526 (not c!469868)) b!2890530))

(assert (= (and b!2890522 c!469871) b!2890527))

(assert (= (and b!2890522 (not c!469871)) b!2890528))

(assert (= (and b!2890530 c!469874) b!2890529))

(assert (= (and b!2890530 (not c!469874)) b!2890535))

(assert (= (and b!2890529 c!469870) b!2890534))

(assert (= (and b!2890529 (not c!469870)) b!2890525))

(assert (= (or b!2890528 b!2890530) bm!187638))

(assert (= (or b!2890522 b!2890529) bm!187637))

(declare-fun m!3302323 () Bool)

(assert (=> bm!187637 m!3302323))

(declare-fun m!3302325 () Bool)

(assert (=> b!2890534 m!3302325))

(declare-fun m!3302327 () Bool)

(assert (=> bm!187638 m!3302327))

(assert (=> b!2890331 d!834388))

(declare-fun b!2890538 () Bool)

(declare-fun e!1826943 () Bool)

(declare-fun e!1826945 () Bool)

(assert (=> b!2890538 (= e!1826943 e!1826945)))

(declare-fun c!469876 () Bool)

(assert (=> b!2890538 (= c!469876 ((_ is Union!8821) (regOne!18155 r!23079)))))

(declare-fun b!2890539 () Bool)

(declare-fun res!1196234 () Bool)

(declare-fun e!1826946 () Bool)

(assert (=> b!2890539 (=> (not res!1196234) (not e!1826946))))

(declare-fun call!187646 () Bool)

(assert (=> b!2890539 (= res!1196234 call!187646)))

(assert (=> b!2890539 (= e!1826945 e!1826946)))

(declare-fun b!2890540 () Bool)

(declare-fun e!1826944 () Bool)

(assert (=> b!2890540 (= e!1826944 e!1826943)))

(declare-fun c!469875 () Bool)

(assert (=> b!2890540 (= c!469875 ((_ is Star!8821) (regOne!18155 r!23079)))))

(declare-fun b!2890541 () Bool)

(declare-fun res!1196235 () Bool)

(declare-fun e!1826940 () Bool)

(assert (=> b!2890541 (=> res!1196235 e!1826940)))

(assert (=> b!2890541 (= res!1196235 (not ((_ is Concat!14142) (regOne!18155 r!23079))))))

(assert (=> b!2890541 (= e!1826945 e!1826940)))

(declare-fun d!834392 () Bool)

(declare-fun res!1196233 () Bool)

(assert (=> d!834392 (=> res!1196233 e!1826944)))

(assert (=> d!834392 (= res!1196233 ((_ is ElementMatch!8821) (regOne!18155 r!23079)))))

(assert (=> d!834392 (= (validRegex!3594 (regOne!18155 r!23079)) e!1826944)))

(declare-fun b!2890542 () Bool)

(declare-fun e!1826941 () Bool)

(declare-fun call!187645 () Bool)

(assert (=> b!2890542 (= e!1826941 call!187645)))

(declare-fun call!187644 () Bool)

(declare-fun bm!187639 () Bool)

(assert (=> bm!187639 (= call!187644 (validRegex!3594 (ite c!469875 (reg!9150 (regOne!18155 r!23079)) (ite c!469876 (regTwo!18155 (regOne!18155 r!23079)) (regTwo!18154 (regOne!18155 r!23079))))))))

(declare-fun b!2890543 () Bool)

(assert (=> b!2890543 (= e!1826946 call!187645)))

(declare-fun bm!187640 () Bool)

(assert (=> bm!187640 (= call!187645 call!187644)))

(declare-fun bm!187641 () Bool)

(assert (=> bm!187641 (= call!187646 (validRegex!3594 (ite c!469876 (regOne!18155 (regOne!18155 r!23079)) (regOne!18154 (regOne!18155 r!23079)))))))

(declare-fun b!2890544 () Bool)

(declare-fun e!1826942 () Bool)

(assert (=> b!2890544 (= e!1826942 call!187644)))

(declare-fun b!2890545 () Bool)

(assert (=> b!2890545 (= e!1826943 e!1826942)))

(declare-fun res!1196237 () Bool)

(assert (=> b!2890545 (= res!1196237 (not (nullable!2723 (reg!9150 (regOne!18155 r!23079)))))))

(assert (=> b!2890545 (=> (not res!1196237) (not e!1826942))))

(declare-fun b!2890546 () Bool)

(assert (=> b!2890546 (= e!1826940 e!1826941)))

(declare-fun res!1196236 () Bool)

(assert (=> b!2890546 (=> (not res!1196236) (not e!1826941))))

(assert (=> b!2890546 (= res!1196236 call!187646)))

(assert (= (and d!834392 (not res!1196233)) b!2890540))

(assert (= (and b!2890540 c!469875) b!2890545))

(assert (= (and b!2890540 (not c!469875)) b!2890538))

(assert (= (and b!2890545 res!1196237) b!2890544))

(assert (= (and b!2890538 c!469876) b!2890539))

(assert (= (and b!2890538 (not c!469876)) b!2890541))

(assert (= (and b!2890539 res!1196234) b!2890543))

(assert (= (and b!2890541 (not res!1196235)) b!2890546))

(assert (= (and b!2890546 res!1196236) b!2890542))

(assert (= (or b!2890543 b!2890542) bm!187640))

(assert (= (or b!2890539 b!2890546) bm!187641))

(assert (= (or b!2890544 bm!187640) bm!187639))

(declare-fun m!3302329 () Bool)

(assert (=> bm!187639 m!3302329))

(declare-fun m!3302331 () Bool)

(assert (=> bm!187641 m!3302331))

(declare-fun m!3302333 () Bool)

(assert (=> b!2890545 m!3302333))

(assert (=> b!2890325 d!834392))

(declare-fun d!834394 () Bool)

(declare-fun isEmpty!18797 (Option!6494) Bool)

(assert (=> d!834394 (= (isDefined!5058 (getLanguageWitness!528 r!23079)) (not (isEmpty!18797 (getLanguageWitness!528 r!23079))))))

(declare-fun bs!523864 () Bool)

(assert (= bs!523864 d!834394))

(assert (=> bs!523864 m!3302285))

(declare-fun m!3302335 () Bool)

(assert (=> bs!523864 m!3302335))

(assert (=> b!2890330 d!834394))

(declare-fun b!2890547 () Bool)

(declare-fun e!1826947 () Option!6494)

(declare-fun e!1826954 () Option!6494)

(assert (=> b!2890547 (= e!1826947 e!1826954)))

(declare-fun lt!1020939 () Option!6494)

(declare-fun call!187647 () Option!6494)

(assert (=> b!2890547 (= lt!1020939 call!187647)))

(declare-fun c!469881 () Bool)

(assert (=> b!2890547 (= c!469881 ((_ is Some!6493) lt!1020939))))

(declare-fun b!2890548 () Bool)

(declare-fun e!1826953 () Option!6494)

(declare-fun e!1826949 () Option!6494)

(assert (=> b!2890548 (= e!1826953 e!1826949)))

(declare-fun c!469883 () Bool)

(assert (=> b!2890548 (= c!469883 ((_ is EmptyLang!8821) r!23079))))

(declare-fun b!2890549 () Bool)

(declare-fun e!1826952 () Option!6494)

(assert (=> b!2890549 (= e!1826952 (Some!6493 (Cons!34498 (c!469804 r!23079) Nil!34498)))))

(declare-fun b!2890550 () Bool)

(declare-fun e!1826948 () Option!6494)

(assert (=> b!2890550 (= e!1826948 None!6493)))

(declare-fun b!2890551 () Bool)

(declare-fun c!469878 () Bool)

(assert (=> b!2890551 (= c!469878 ((_ is Union!8821) r!23079))))

(declare-fun e!1826951 () Option!6494)

(assert (=> b!2890551 (= e!1826951 e!1826947)))

(declare-fun b!2890552 () Bool)

(assert (=> b!2890552 (= e!1826954 lt!1020939)))

(declare-fun b!2890553 () Bool)

(declare-fun call!187648 () Option!6494)

(assert (=> b!2890553 (= e!1826954 call!187648)))

(declare-fun b!2890554 () Bool)

(declare-fun c!469880 () Bool)

(declare-fun lt!1020940 () Option!6494)

(assert (=> b!2890554 (= c!469880 ((_ is Some!6493) lt!1020940))))

(assert (=> b!2890554 (= lt!1020940 call!187647)))

(declare-fun e!1826950 () Option!6494)

(assert (=> b!2890554 (= e!1826950 e!1826948)))

(declare-fun bm!187642 () Bool)

(assert (=> bm!187642 (= call!187647 (getLanguageWitness!528 (ite c!469878 (regOne!18155 r!23079) (regTwo!18154 r!23079))))))

(declare-fun b!2890555 () Bool)

(assert (=> b!2890555 (= e!1826947 e!1826950)))

(declare-fun lt!1020938 () Option!6494)

(assert (=> b!2890555 (= lt!1020938 call!187648)))

(declare-fun c!469884 () Bool)

(assert (=> b!2890555 (= c!469884 ((_ is Some!6493) lt!1020938))))

(declare-fun b!2890557 () Bool)

(assert (=> b!2890557 (= e!1826953 (Some!6493 Nil!34498))))

(declare-fun b!2890558 () Bool)

(assert (=> b!2890558 (= e!1826949 None!6493)))

(declare-fun b!2890559 () Bool)

(assert (=> b!2890559 (= e!1826948 (Some!6493 (++!8221 (v!34619 lt!1020938) (v!34619 lt!1020940))))))

(declare-fun bm!187643 () Bool)

(assert (=> bm!187643 (= call!187648 (getLanguageWitness!528 (ite c!469878 (regTwo!18155 r!23079) (regOne!18154 r!23079))))))

(declare-fun b!2890560 () Bool)

(assert (=> b!2890560 (= e!1826950 None!6493)))

(declare-fun b!2890561 () Bool)

(assert (=> b!2890561 (= e!1826952 e!1826951)))

(declare-fun c!469882 () Bool)

(assert (=> b!2890561 (= c!469882 ((_ is Star!8821) r!23079))))

(declare-fun b!2890562 () Bool)

(assert (=> b!2890562 (= e!1826951 (Some!6493 Nil!34498))))

(declare-fun b!2890556 () Bool)

(declare-fun c!469879 () Bool)

(assert (=> b!2890556 (= c!469879 ((_ is ElementMatch!8821) r!23079))))

(assert (=> b!2890556 (= e!1826949 e!1826952)))

(declare-fun d!834396 () Bool)

(declare-fun c!469877 () Bool)

(assert (=> d!834396 (= c!469877 ((_ is EmptyExpr!8821) r!23079))))

(assert (=> d!834396 (= (getLanguageWitness!528 r!23079) e!1826953)))

(assert (= (and d!834396 c!469877) b!2890557))

(assert (= (and d!834396 (not c!469877)) b!2890548))

(assert (= (and b!2890548 c!469883) b!2890558))

(assert (= (and b!2890548 (not c!469883)) b!2890556))

(assert (= (and b!2890556 c!469879) b!2890549))

(assert (= (and b!2890556 (not c!469879)) b!2890561))

(assert (= (and b!2890561 c!469882) b!2890562))

(assert (= (and b!2890561 (not c!469882)) b!2890551))

(assert (= (and b!2890551 c!469878) b!2890547))

(assert (= (and b!2890551 (not c!469878)) b!2890555))

(assert (= (and b!2890547 c!469881) b!2890552))

(assert (= (and b!2890547 (not c!469881)) b!2890553))

(assert (= (and b!2890555 c!469884) b!2890554))

(assert (= (and b!2890555 (not c!469884)) b!2890560))

(assert (= (and b!2890554 c!469880) b!2890559))

(assert (= (and b!2890554 (not c!469880)) b!2890550))

(assert (= (or b!2890553 b!2890555) bm!187643))

(assert (= (or b!2890547 b!2890554) bm!187642))

(declare-fun m!3302337 () Bool)

(assert (=> bm!187642 m!3302337))

(declare-fun m!3302339 () Bool)

(assert (=> b!2890559 m!3302339))

(declare-fun m!3302341 () Bool)

(assert (=> bm!187643 m!3302341))

(assert (=> b!2890330 d!834396))

(declare-fun e!1826957 () Bool)

(assert (=> b!2890326 (= tp!928146 e!1826957)))

(declare-fun b!2890575 () Bool)

(declare-fun tp!928196 () Bool)

(assert (=> b!2890575 (= e!1826957 tp!928196)))

(declare-fun b!2890573 () Bool)

(assert (=> b!2890573 (= e!1826957 tp_is_empty!15229)))

(declare-fun b!2890574 () Bool)

(declare-fun tp!928199 () Bool)

(declare-fun tp!928198 () Bool)

(assert (=> b!2890574 (= e!1826957 (and tp!928199 tp!928198))))

(declare-fun b!2890576 () Bool)

(declare-fun tp!928197 () Bool)

(declare-fun tp!928195 () Bool)

(assert (=> b!2890576 (= e!1826957 (and tp!928197 tp!928195))))

(assert (= (and b!2890326 ((_ is ElementMatch!8821) (reg!9150 r!23079))) b!2890573))

(assert (= (and b!2890326 ((_ is Concat!14142) (reg!9150 r!23079))) b!2890574))

(assert (= (and b!2890326 ((_ is Star!8821) (reg!9150 r!23079))) b!2890575))

(assert (= (and b!2890326 ((_ is Union!8821) (reg!9150 r!23079))) b!2890576))

(declare-fun e!1826958 () Bool)

(assert (=> b!2890328 (= tp!928148 e!1826958)))

(declare-fun b!2890579 () Bool)

(declare-fun tp!928201 () Bool)

(assert (=> b!2890579 (= e!1826958 tp!928201)))

(declare-fun b!2890577 () Bool)

(assert (=> b!2890577 (= e!1826958 tp_is_empty!15229)))

(declare-fun b!2890578 () Bool)

(declare-fun tp!928204 () Bool)

(declare-fun tp!928203 () Bool)

(assert (=> b!2890578 (= e!1826958 (and tp!928204 tp!928203))))

(declare-fun b!2890580 () Bool)

(declare-fun tp!928202 () Bool)

(declare-fun tp!928200 () Bool)

(assert (=> b!2890580 (= e!1826958 (and tp!928202 tp!928200))))

(assert (= (and b!2890328 ((_ is ElementMatch!8821) (regOne!18155 r!23079))) b!2890577))

(assert (= (and b!2890328 ((_ is Concat!14142) (regOne!18155 r!23079))) b!2890578))

(assert (= (and b!2890328 ((_ is Star!8821) (regOne!18155 r!23079))) b!2890579))

(assert (= (and b!2890328 ((_ is Union!8821) (regOne!18155 r!23079))) b!2890580))

(declare-fun e!1826959 () Bool)

(assert (=> b!2890328 (= tp!928147 e!1826959)))

(declare-fun b!2890583 () Bool)

(declare-fun tp!928206 () Bool)

(assert (=> b!2890583 (= e!1826959 tp!928206)))

(declare-fun b!2890581 () Bool)

(assert (=> b!2890581 (= e!1826959 tp_is_empty!15229)))

(declare-fun b!2890582 () Bool)

(declare-fun tp!928209 () Bool)

(declare-fun tp!928208 () Bool)

(assert (=> b!2890582 (= e!1826959 (and tp!928209 tp!928208))))

(declare-fun b!2890584 () Bool)

(declare-fun tp!928207 () Bool)

(declare-fun tp!928205 () Bool)

(assert (=> b!2890584 (= e!1826959 (and tp!928207 tp!928205))))

(assert (= (and b!2890328 ((_ is ElementMatch!8821) (regTwo!18155 r!23079))) b!2890581))

(assert (= (and b!2890328 ((_ is Concat!14142) (regTwo!18155 r!23079))) b!2890582))

(assert (= (and b!2890328 ((_ is Star!8821) (regTwo!18155 r!23079))) b!2890583))

(assert (= (and b!2890328 ((_ is Union!8821) (regTwo!18155 r!23079))) b!2890584))

(declare-fun e!1826960 () Bool)

(assert (=> b!2890327 (= tp!928145 e!1826960)))

(declare-fun b!2890587 () Bool)

(declare-fun tp!928211 () Bool)

(assert (=> b!2890587 (= e!1826960 tp!928211)))

(declare-fun b!2890585 () Bool)

(assert (=> b!2890585 (= e!1826960 tp_is_empty!15229)))

(declare-fun b!2890586 () Bool)

(declare-fun tp!928214 () Bool)

(declare-fun tp!928213 () Bool)

(assert (=> b!2890586 (= e!1826960 (and tp!928214 tp!928213))))

(declare-fun b!2890588 () Bool)

(declare-fun tp!928212 () Bool)

(declare-fun tp!928210 () Bool)

(assert (=> b!2890588 (= e!1826960 (and tp!928212 tp!928210))))

(assert (= (and b!2890327 ((_ is ElementMatch!8821) (regOne!18154 r!23079))) b!2890585))

(assert (= (and b!2890327 ((_ is Concat!14142) (regOne!18154 r!23079))) b!2890586))

(assert (= (and b!2890327 ((_ is Star!8821) (regOne!18154 r!23079))) b!2890587))

(assert (= (and b!2890327 ((_ is Union!8821) (regOne!18154 r!23079))) b!2890588))

(declare-fun e!1826961 () Bool)

(assert (=> b!2890327 (= tp!928149 e!1826961)))

(declare-fun b!2890591 () Bool)

(declare-fun tp!928216 () Bool)

(assert (=> b!2890591 (= e!1826961 tp!928216)))

(declare-fun b!2890589 () Bool)

(assert (=> b!2890589 (= e!1826961 tp_is_empty!15229)))

(declare-fun b!2890590 () Bool)

(declare-fun tp!928219 () Bool)

(declare-fun tp!928218 () Bool)

(assert (=> b!2890590 (= e!1826961 (and tp!928219 tp!928218))))

(declare-fun b!2890592 () Bool)

(declare-fun tp!928217 () Bool)

(declare-fun tp!928215 () Bool)

(assert (=> b!2890592 (= e!1826961 (and tp!928217 tp!928215))))

(assert (= (and b!2890327 ((_ is ElementMatch!8821) (regTwo!18154 r!23079))) b!2890589))

(assert (= (and b!2890327 ((_ is Concat!14142) (regTwo!18154 r!23079))) b!2890590))

(assert (= (and b!2890327 ((_ is Star!8821) (regTwo!18154 r!23079))) b!2890591))

(assert (= (and b!2890327 ((_ is Union!8821) (regTwo!18154 r!23079))) b!2890592))

(check-sat (not b!2890590) (not b!2890574) tp_is_empty!15229 (not b!2890587) (not bm!187641) (not b!2890592) (not b!2890440) (not d!834394) (not b!2890586) (not b!2890591) (not b!2890559) (not bm!187642) (not b!2890584) (not bm!187624) (not bm!187637) (not bm!187638) (not b!2890545) (not b!2890588) (not b!2890580) (not b!2890582) (not bm!187622) (not b!2890583) (not b!2890575) (not bm!187643) (not b!2890579) (not bm!187639) (not b!2890534) (not b!2890576) (not b!2890578))
(check-sat)
