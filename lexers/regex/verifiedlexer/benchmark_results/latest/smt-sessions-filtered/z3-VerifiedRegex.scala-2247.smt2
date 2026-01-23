; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!110494 () Bool)

(assert start!110494)

(declare-fun b!1254424 () Bool)

(declare-fun e!798405 () Bool)

(declare-fun tp_is_empty!6459 () Bool)

(assert (=> b!1254424 (= e!798405 tp_is_empty!6459)))

(declare-fun b!1254425 () Bool)

(declare-fun tp!369777 () Bool)

(declare-fun tp!369776 () Bool)

(assert (=> b!1254425 (= e!798405 (and tp!369777 tp!369776))))

(declare-fun b!1254426 () Bool)

(declare-fun e!798406 () Bool)

(declare-datatypes ((C!7256 0))(
  ( (C!7257 (val!4158 Int)) )
))
(declare-datatypes ((Regex!3469 0))(
  ( (ElementMatch!3469 (c!208228 C!7256)) (Concat!5699 (regOne!7450 Regex!3469) (regTwo!7450 Regex!3469)) (EmptyExpr!3469) (Star!3469 (reg!3798 Regex!3469)) (EmptyLang!3469) (Union!3469 (regOne!7451 Regex!3469) (regTwo!7451 Regex!3469)) )
))
(declare-fun r!15719 () Regex!3469)

(declare-fun regexDepth!62 (Regex!3469) Int)

(assert (=> b!1254426 (= e!798406 (>= (regexDepth!62 (reg!3798 r!15719)) (regexDepth!62 r!15719)))))

(declare-fun b!1254427 () Bool)

(declare-fun tp!369779 () Bool)

(declare-fun tp!369775 () Bool)

(assert (=> b!1254427 (= e!798405 (and tp!369779 tp!369775))))

(declare-fun b!1254428 () Bool)

(declare-fun res!555717 () Bool)

(assert (=> b!1254428 (=> (not res!555717) (not e!798406))))

(get-info :version)

(assert (=> b!1254428 (= res!555717 (and (or (not ((_ is Concat!5699) r!15719)) (not ((_ is EmptyExpr!3469) (regOne!7450 r!15719)))) (or (not ((_ is Concat!5699) r!15719)) (not ((_ is EmptyExpr!3469) (regTwo!7450 r!15719)))) (not ((_ is Concat!5699) r!15719)) (not ((_ is Union!3469) r!15719)) ((_ is Star!3469) r!15719)))))

(declare-fun res!555718 () Bool)

(assert (=> start!110494 (=> (not res!555718) (not e!798406))))

(declare-fun validRegex!1505 (Regex!3469) Bool)

(assert (=> start!110494 (= res!555718 (validRegex!1505 r!15719))))

(assert (=> start!110494 e!798406))

(assert (=> start!110494 e!798405))

(declare-fun b!1254429 () Bool)

(declare-fun tp!369778 () Bool)

(assert (=> b!1254429 (= e!798405 tp!369778)))

(assert (= (and start!110494 res!555718) b!1254428))

(assert (= (and b!1254428 res!555717) b!1254426))

(assert (= (and start!110494 ((_ is ElementMatch!3469) r!15719)) b!1254424))

(assert (= (and start!110494 ((_ is Concat!5699) r!15719)) b!1254427))

(assert (= (and start!110494 ((_ is Star!3469) r!15719)) b!1254429))

(assert (= (and start!110494 ((_ is Union!3469) r!15719)) b!1254425))

(declare-fun m!1413377 () Bool)

(assert (=> b!1254426 m!1413377))

(declare-fun m!1413379 () Bool)

(assert (=> b!1254426 m!1413379))

(declare-fun m!1413381 () Bool)

(assert (=> start!110494 m!1413381))

(check-sat (not start!110494) (not b!1254426) (not b!1254427) tp_is_empty!6459 (not b!1254425) (not b!1254429))
(check-sat)
(get-model)

(declare-fun b!1254475 () Bool)

(declare-fun e!798442 () Bool)

(declare-fun call!87884 () Bool)

(assert (=> b!1254475 (= e!798442 call!87884)))

(declare-fun c!208240 () Bool)

(declare-fun call!87883 () Bool)

(declare-fun bm!87878 () Bool)

(declare-fun c!208239 () Bool)

(assert (=> bm!87878 (= call!87883 (validRegex!1505 (ite c!208239 (reg!3798 r!15719) (ite c!208240 (regOne!7451 r!15719) (regOne!7450 r!15719)))))))

(declare-fun b!1254476 () Bool)

(declare-fun res!555746 () Bool)

(assert (=> b!1254476 (=> (not res!555746) (not e!798442))))

(declare-fun call!87885 () Bool)

(assert (=> b!1254476 (= res!555746 call!87885)))

(declare-fun e!798443 () Bool)

(assert (=> b!1254476 (= e!798443 e!798442)))

(declare-fun bm!87879 () Bool)

(assert (=> bm!87879 (= call!87885 call!87883)))

(declare-fun b!1254478 () Bool)

(declare-fun e!798448 () Bool)

(declare-fun e!798447 () Bool)

(assert (=> b!1254478 (= e!798448 e!798447)))

(declare-fun res!555747 () Bool)

(assert (=> b!1254478 (=> (not res!555747) (not e!798447))))

(assert (=> b!1254478 (= res!555747 call!87885)))

(declare-fun b!1254479 () Bool)

(declare-fun e!798445 () Bool)

(declare-fun e!798446 () Bool)

(assert (=> b!1254479 (= e!798445 e!798446)))

(assert (=> b!1254479 (= c!208239 ((_ is Star!3469) r!15719))))

(declare-fun bm!87880 () Bool)

(assert (=> bm!87880 (= call!87884 (validRegex!1505 (ite c!208240 (regTwo!7451 r!15719) (regTwo!7450 r!15719))))))

(declare-fun b!1254480 () Bool)

(declare-fun res!555748 () Bool)

(assert (=> b!1254480 (=> res!555748 e!798448)))

(assert (=> b!1254480 (= res!555748 (not ((_ is Concat!5699) r!15719)))))

(assert (=> b!1254480 (= e!798443 e!798448)))

(declare-fun b!1254481 () Bool)

(assert (=> b!1254481 (= e!798446 e!798443)))

(assert (=> b!1254481 (= c!208240 ((_ is Union!3469) r!15719))))

(declare-fun b!1254477 () Bool)

(declare-fun e!798444 () Bool)

(assert (=> b!1254477 (= e!798444 call!87883)))

(declare-fun d!354708 () Bool)

(declare-fun res!555745 () Bool)

(assert (=> d!354708 (=> res!555745 e!798445)))

(assert (=> d!354708 (= res!555745 ((_ is ElementMatch!3469) r!15719))))

(assert (=> d!354708 (= (validRegex!1505 r!15719) e!798445)))

(declare-fun b!1254482 () Bool)

(assert (=> b!1254482 (= e!798446 e!798444)))

(declare-fun res!555744 () Bool)

(declare-fun nullable!1107 (Regex!3469) Bool)

(assert (=> b!1254482 (= res!555744 (not (nullable!1107 (reg!3798 r!15719))))))

(assert (=> b!1254482 (=> (not res!555744) (not e!798444))))

(declare-fun b!1254483 () Bool)

(assert (=> b!1254483 (= e!798447 call!87884)))

(assert (= (and d!354708 (not res!555745)) b!1254479))

(assert (= (and b!1254479 c!208239) b!1254482))

(assert (= (and b!1254479 (not c!208239)) b!1254481))

(assert (= (and b!1254482 res!555744) b!1254477))

(assert (= (and b!1254481 c!208240) b!1254476))

(assert (= (and b!1254481 (not c!208240)) b!1254480))

(assert (= (and b!1254476 res!555746) b!1254475))

(assert (= (and b!1254480 (not res!555748)) b!1254478))

(assert (= (and b!1254478 res!555747) b!1254483))

(assert (= (or b!1254475 b!1254483) bm!87880))

(assert (= (or b!1254476 b!1254478) bm!87879))

(assert (= (or b!1254477 bm!87879) bm!87878))

(declare-fun m!1413389 () Bool)

(assert (=> bm!87878 m!1413389))

(declare-fun m!1413391 () Bool)

(assert (=> bm!87880 m!1413391))

(declare-fun m!1413393 () Bool)

(assert (=> b!1254482 m!1413393))

(assert (=> start!110494 d!354708))

(declare-fun b!1254592 () Bool)

(declare-fun e!798514 () Bool)

(declare-fun lt!420310 () Int)

(declare-fun call!87934 () Int)

(assert (=> b!1254592 (= e!798514 (> lt!420310 call!87934))))

(declare-fun b!1254593 () Bool)

(declare-fun c!208285 () Bool)

(assert (=> b!1254593 (= c!208285 ((_ is Star!3469) (reg!3798 r!15719)))))

(declare-fun e!798517 () Bool)

(assert (=> b!1254593 (= e!798517 e!798514)))

(declare-fun call!87928 () Int)

(declare-fun c!208286 () Bool)

(declare-fun bm!87923 () Bool)

(declare-fun c!208284 () Bool)

(assert (=> bm!87923 (= call!87928 (regexDepth!62 (ite c!208286 (reg!3798 (reg!3798 r!15719)) (ite c!208284 (regOne!7451 (reg!3798 r!15719)) (regOne!7450 (reg!3798 r!15719))))))))

(declare-fun b!1254594 () Bool)

(declare-fun e!798520 () Bool)

(declare-fun e!798516 () Bool)

(assert (=> b!1254594 (= e!798520 e!798516)))

(declare-fun c!208283 () Bool)

(assert (=> b!1254594 (= c!208283 ((_ is Union!3469) (reg!3798 r!15719)))))

(declare-fun b!1254595 () Bool)

(declare-fun e!798518 () Int)

(declare-fun e!798515 () Int)

(assert (=> b!1254595 (= e!798518 e!798515)))

(declare-fun c!208288 () Bool)

(assert (=> b!1254595 (= c!208288 ((_ is Concat!5699) (reg!3798 r!15719)))))

(declare-fun d!354712 () Bool)

(assert (=> d!354712 e!798520))

(declare-fun res!555768 () Bool)

(assert (=> d!354712 (=> (not res!555768) (not e!798520))))

(assert (=> d!354712 (= res!555768 (> lt!420310 0))))

(declare-fun e!798512 () Int)

(assert (=> d!354712 (= lt!420310 e!798512)))

(declare-fun c!208287 () Bool)

(assert (=> d!354712 (= c!208287 ((_ is ElementMatch!3469) (reg!3798 r!15719)))))

(assert (=> d!354712 (= (regexDepth!62 (reg!3798 r!15719)) lt!420310)))

(declare-fun b!1254596 () Bool)

(assert (=> b!1254596 (= e!798516 e!798517)))

(declare-fun c!208289 () Bool)

(assert (=> b!1254596 (= c!208289 ((_ is Concat!5699) (reg!3798 r!15719)))))

(declare-fun bm!87924 () Bool)

(declare-fun call!87933 () Int)

(assert (=> bm!87924 (= call!87933 (regexDepth!62 (ite c!208283 (regTwo!7451 (reg!3798 r!15719)) (ite c!208289 (regOne!7450 (reg!3798 r!15719)) (reg!3798 (reg!3798 r!15719))))))))

(declare-fun b!1254597 () Bool)

(assert (=> b!1254597 (= e!798514 (= lt!420310 1))))

(declare-fun bm!87925 () Bool)

(declare-fun call!87932 () Int)

(assert (=> bm!87925 (= call!87932 (regexDepth!62 (ite c!208283 (regOne!7451 (reg!3798 r!15719)) (regTwo!7450 (reg!3798 r!15719)))))))

(declare-fun b!1254598 () Bool)

(declare-fun res!555769 () Bool)

(declare-fun e!798519 () Bool)

(assert (=> b!1254598 (=> (not res!555769) (not e!798519))))

(assert (=> b!1254598 (= res!555769 (> lt!420310 call!87934))))

(assert (=> b!1254598 (= e!798517 e!798519)))

(declare-fun b!1254599 () Bool)

(declare-fun e!798513 () Bool)

(assert (=> b!1254599 (= e!798513 (> lt!420310 call!87933))))

(declare-fun b!1254600 () Bool)

(declare-fun call!87929 () Int)

(assert (=> b!1254600 (= e!798515 (+ 1 call!87929))))

(declare-fun b!1254601 () Bool)

(assert (=> b!1254601 (= e!798518 (+ 1 call!87929))))

(declare-fun bm!87926 () Bool)

(assert (=> bm!87926 (= call!87934 call!87933)))

(declare-fun b!1254602 () Bool)

(assert (=> b!1254602 (= e!798512 1)))

(declare-fun bm!87927 () Bool)

(declare-fun call!87930 () Int)

(assert (=> bm!87927 (= call!87930 call!87928)))

(declare-fun b!1254603 () Bool)

(declare-fun e!798511 () Int)

(assert (=> b!1254603 (= e!798512 e!798511)))

(assert (=> b!1254603 (= c!208286 ((_ is Star!3469) (reg!3798 r!15719)))))

(declare-fun bm!87928 () Bool)

(declare-fun call!87931 () Int)

(declare-fun maxBigInt!0 (Int Int) Int)

(assert (=> bm!87928 (= call!87929 (maxBigInt!0 call!87930 call!87931))))

(declare-fun b!1254604 () Bool)

(assert (=> b!1254604 (= e!798515 1)))

(declare-fun b!1254605 () Bool)

(assert (=> b!1254605 (= e!798516 e!798513)))

(declare-fun res!555767 () Bool)

(assert (=> b!1254605 (= res!555767 (> lt!420310 call!87932))))

(assert (=> b!1254605 (=> (not res!555767) (not e!798513))))

(declare-fun bm!87929 () Bool)

(assert (=> bm!87929 (= call!87931 (regexDepth!62 (ite c!208284 (regTwo!7451 (reg!3798 r!15719)) (regTwo!7450 (reg!3798 r!15719)))))))

(declare-fun b!1254606 () Bool)

(assert (=> b!1254606 (= e!798511 (+ 1 call!87928))))

(declare-fun b!1254607 () Bool)

(assert (=> b!1254607 (= c!208284 ((_ is Union!3469) (reg!3798 r!15719)))))

(assert (=> b!1254607 (= e!798511 e!798518)))

(declare-fun b!1254608 () Bool)

(assert (=> b!1254608 (= e!798519 (> lt!420310 call!87932))))

(assert (= (and d!354712 c!208287) b!1254602))

(assert (= (and d!354712 (not c!208287)) b!1254603))

(assert (= (and b!1254603 c!208286) b!1254606))

(assert (= (and b!1254603 (not c!208286)) b!1254607))

(assert (= (and b!1254607 c!208284) b!1254601))

(assert (= (and b!1254607 (not c!208284)) b!1254595))

(assert (= (and b!1254595 c!208288) b!1254600))

(assert (= (and b!1254595 (not c!208288)) b!1254604))

(assert (= (or b!1254601 b!1254600) bm!87927))

(assert (= (or b!1254601 b!1254600) bm!87929))

(assert (= (or b!1254601 b!1254600) bm!87928))

(assert (= (or b!1254606 bm!87927) bm!87923))

(assert (= (and d!354712 res!555768) b!1254594))

(assert (= (and b!1254594 c!208283) b!1254605))

(assert (= (and b!1254594 (not c!208283)) b!1254596))

(assert (= (and b!1254605 res!555767) b!1254599))

(assert (= (and b!1254596 c!208289) b!1254598))

(assert (= (and b!1254596 (not c!208289)) b!1254593))

(assert (= (and b!1254598 res!555769) b!1254608))

(assert (= (and b!1254593 c!208285) b!1254592))

(assert (= (and b!1254593 (not c!208285)) b!1254597))

(assert (= (or b!1254598 b!1254592) bm!87926))

(assert (= (or b!1254605 b!1254608) bm!87925))

(assert (= (or b!1254599 bm!87926) bm!87924))

(declare-fun m!1413415 () Bool)

(assert (=> bm!87929 m!1413415))

(declare-fun m!1413417 () Bool)

(assert (=> bm!87925 m!1413417))

(declare-fun m!1413419 () Bool)

(assert (=> bm!87923 m!1413419))

(declare-fun m!1413421 () Bool)

(assert (=> bm!87928 m!1413421))

(declare-fun m!1413423 () Bool)

(assert (=> bm!87924 m!1413423))

(assert (=> b!1254426 d!354712))

(declare-fun b!1254621 () Bool)

(declare-fun e!798526 () Bool)

(declare-fun lt!420311 () Int)

(declare-fun call!87941 () Int)

(assert (=> b!1254621 (= e!798526 (> lt!420311 call!87941))))

(declare-fun b!1254622 () Bool)

(declare-fun c!208292 () Bool)

(assert (=> b!1254622 (= c!208292 ((_ is Star!3469) r!15719))))

(declare-fun e!798529 () Bool)

(assert (=> b!1254622 (= e!798529 e!798526)))

(declare-fun c!208293 () Bool)

(declare-fun c!208291 () Bool)

(declare-fun call!87935 () Int)

(declare-fun bm!87930 () Bool)

(assert (=> bm!87930 (= call!87935 (regexDepth!62 (ite c!208293 (reg!3798 r!15719) (ite c!208291 (regOne!7451 r!15719) (regOne!7450 r!15719)))))))

(declare-fun b!1254623 () Bool)

(declare-fun e!798532 () Bool)

(declare-fun e!798528 () Bool)

(assert (=> b!1254623 (= e!798532 e!798528)))

(declare-fun c!208290 () Bool)

(assert (=> b!1254623 (= c!208290 ((_ is Union!3469) r!15719))))

(declare-fun b!1254624 () Bool)

(declare-fun e!798530 () Int)

(declare-fun e!798527 () Int)

(assert (=> b!1254624 (= e!798530 e!798527)))

(declare-fun c!208295 () Bool)

(assert (=> b!1254624 (= c!208295 ((_ is Concat!5699) r!15719))))

(declare-fun d!354716 () Bool)

(assert (=> d!354716 e!798532))

(declare-fun res!555771 () Bool)

(assert (=> d!354716 (=> (not res!555771) (not e!798532))))

(assert (=> d!354716 (= res!555771 (> lt!420311 0))))

(declare-fun e!798524 () Int)

(assert (=> d!354716 (= lt!420311 e!798524)))

(declare-fun c!208294 () Bool)

(assert (=> d!354716 (= c!208294 ((_ is ElementMatch!3469) r!15719))))

(assert (=> d!354716 (= (regexDepth!62 r!15719) lt!420311)))

(declare-fun b!1254625 () Bool)

(assert (=> b!1254625 (= e!798528 e!798529)))

(declare-fun c!208296 () Bool)

(assert (=> b!1254625 (= c!208296 ((_ is Concat!5699) r!15719))))

(declare-fun call!87940 () Int)

(declare-fun bm!87931 () Bool)

(assert (=> bm!87931 (= call!87940 (regexDepth!62 (ite c!208290 (regTwo!7451 r!15719) (ite c!208296 (regOne!7450 r!15719) (reg!3798 r!15719)))))))

(declare-fun b!1254626 () Bool)

(assert (=> b!1254626 (= e!798526 (= lt!420311 1))))

(declare-fun bm!87932 () Bool)

(declare-fun call!87939 () Int)

(assert (=> bm!87932 (= call!87939 (regexDepth!62 (ite c!208290 (regOne!7451 r!15719) (regTwo!7450 r!15719))))))

(declare-fun b!1254627 () Bool)

(declare-fun res!555772 () Bool)

(declare-fun e!798531 () Bool)

(assert (=> b!1254627 (=> (not res!555772) (not e!798531))))

(assert (=> b!1254627 (= res!555772 (> lt!420311 call!87941))))

(assert (=> b!1254627 (= e!798529 e!798531)))

(declare-fun b!1254628 () Bool)

(declare-fun e!798525 () Bool)

(assert (=> b!1254628 (= e!798525 (> lt!420311 call!87940))))

(declare-fun b!1254629 () Bool)

(declare-fun call!87936 () Int)

(assert (=> b!1254629 (= e!798527 (+ 1 call!87936))))

(declare-fun b!1254630 () Bool)

(assert (=> b!1254630 (= e!798530 (+ 1 call!87936))))

(declare-fun bm!87933 () Bool)

(assert (=> bm!87933 (= call!87941 call!87940)))

(declare-fun b!1254631 () Bool)

(assert (=> b!1254631 (= e!798524 1)))

(declare-fun bm!87934 () Bool)

(declare-fun call!87937 () Int)

(assert (=> bm!87934 (= call!87937 call!87935)))

(declare-fun b!1254632 () Bool)

(declare-fun e!798523 () Int)

(assert (=> b!1254632 (= e!798524 e!798523)))

(assert (=> b!1254632 (= c!208293 ((_ is Star!3469) r!15719))))

(declare-fun bm!87935 () Bool)

(declare-fun call!87938 () Int)

(assert (=> bm!87935 (= call!87936 (maxBigInt!0 call!87937 call!87938))))

(declare-fun b!1254633 () Bool)

(assert (=> b!1254633 (= e!798527 1)))

(declare-fun b!1254634 () Bool)

(assert (=> b!1254634 (= e!798528 e!798525)))

(declare-fun res!555770 () Bool)

(assert (=> b!1254634 (= res!555770 (> lt!420311 call!87939))))

(assert (=> b!1254634 (=> (not res!555770) (not e!798525))))

(declare-fun bm!87936 () Bool)

(assert (=> bm!87936 (= call!87938 (regexDepth!62 (ite c!208291 (regTwo!7451 r!15719) (regTwo!7450 r!15719))))))

(declare-fun b!1254635 () Bool)

(assert (=> b!1254635 (= e!798523 (+ 1 call!87935))))

(declare-fun b!1254636 () Bool)

(assert (=> b!1254636 (= c!208291 ((_ is Union!3469) r!15719))))

(assert (=> b!1254636 (= e!798523 e!798530)))

(declare-fun b!1254637 () Bool)

(assert (=> b!1254637 (= e!798531 (> lt!420311 call!87939))))

(assert (= (and d!354716 c!208294) b!1254631))

(assert (= (and d!354716 (not c!208294)) b!1254632))

(assert (= (and b!1254632 c!208293) b!1254635))

(assert (= (and b!1254632 (not c!208293)) b!1254636))

(assert (= (and b!1254636 c!208291) b!1254630))

(assert (= (and b!1254636 (not c!208291)) b!1254624))

(assert (= (and b!1254624 c!208295) b!1254629))

(assert (= (and b!1254624 (not c!208295)) b!1254633))

(assert (= (or b!1254630 b!1254629) bm!87934))

(assert (= (or b!1254630 b!1254629) bm!87936))

(assert (= (or b!1254630 b!1254629) bm!87935))

(assert (= (or b!1254635 bm!87934) bm!87930))

(assert (= (and d!354716 res!555771) b!1254623))

(assert (= (and b!1254623 c!208290) b!1254634))

(assert (= (and b!1254623 (not c!208290)) b!1254625))

(assert (= (and b!1254634 res!555770) b!1254628))

(assert (= (and b!1254625 c!208296) b!1254627))

(assert (= (and b!1254625 (not c!208296)) b!1254622))

(assert (= (and b!1254627 res!555772) b!1254637))

(assert (= (and b!1254622 c!208292) b!1254621))

(assert (= (and b!1254622 (not c!208292)) b!1254626))

(assert (= (or b!1254627 b!1254621) bm!87933))

(assert (= (or b!1254634 b!1254637) bm!87932))

(assert (= (or b!1254628 bm!87933) bm!87931))

(declare-fun m!1413425 () Bool)

(assert (=> bm!87936 m!1413425))

(declare-fun m!1413427 () Bool)

(assert (=> bm!87932 m!1413427))

(declare-fun m!1413429 () Bool)

(assert (=> bm!87930 m!1413429))

(declare-fun m!1413431 () Bool)

(assert (=> bm!87935 m!1413431))

(declare-fun m!1413433 () Bool)

(assert (=> bm!87931 m!1413433))

(assert (=> b!1254426 d!354716))

(declare-fun e!798538 () Bool)

(assert (=> b!1254427 (= tp!369779 e!798538)))

(declare-fun b!1254663 () Bool)

(declare-fun tp!369826 () Bool)

(declare-fun tp!369825 () Bool)

(assert (=> b!1254663 (= e!798538 (and tp!369826 tp!369825))))

(declare-fun b!1254662 () Bool)

(declare-fun tp!369829 () Bool)

(assert (=> b!1254662 (= e!798538 tp!369829)))

(declare-fun b!1254660 () Bool)

(assert (=> b!1254660 (= e!798538 tp_is_empty!6459)))

(declare-fun b!1254661 () Bool)

(declare-fun tp!369828 () Bool)

(declare-fun tp!369827 () Bool)

(assert (=> b!1254661 (= e!798538 (and tp!369828 tp!369827))))

(assert (= (and b!1254427 ((_ is ElementMatch!3469) (regOne!7450 r!15719))) b!1254660))

(assert (= (and b!1254427 ((_ is Concat!5699) (regOne!7450 r!15719))) b!1254661))

(assert (= (and b!1254427 ((_ is Star!3469) (regOne!7450 r!15719))) b!1254662))

(assert (= (and b!1254427 ((_ is Union!3469) (regOne!7450 r!15719))) b!1254663))

(declare-fun e!798539 () Bool)

(assert (=> b!1254427 (= tp!369775 e!798539)))

(declare-fun b!1254667 () Bool)

(declare-fun tp!369831 () Bool)

(declare-fun tp!369830 () Bool)

(assert (=> b!1254667 (= e!798539 (and tp!369831 tp!369830))))

(declare-fun b!1254666 () Bool)

(declare-fun tp!369834 () Bool)

(assert (=> b!1254666 (= e!798539 tp!369834)))

(declare-fun b!1254664 () Bool)

(assert (=> b!1254664 (= e!798539 tp_is_empty!6459)))

(declare-fun b!1254665 () Bool)

(declare-fun tp!369833 () Bool)

(declare-fun tp!369832 () Bool)

(assert (=> b!1254665 (= e!798539 (and tp!369833 tp!369832))))

(assert (= (and b!1254427 ((_ is ElementMatch!3469) (regTwo!7450 r!15719))) b!1254664))

(assert (= (and b!1254427 ((_ is Concat!5699) (regTwo!7450 r!15719))) b!1254665))

(assert (= (and b!1254427 ((_ is Star!3469) (regTwo!7450 r!15719))) b!1254666))

(assert (= (and b!1254427 ((_ is Union!3469) (regTwo!7450 r!15719))) b!1254667))

(declare-fun e!798540 () Bool)

(assert (=> b!1254429 (= tp!369778 e!798540)))

(declare-fun b!1254671 () Bool)

(declare-fun tp!369836 () Bool)

(declare-fun tp!369835 () Bool)

(assert (=> b!1254671 (= e!798540 (and tp!369836 tp!369835))))

(declare-fun b!1254670 () Bool)

(declare-fun tp!369839 () Bool)

(assert (=> b!1254670 (= e!798540 tp!369839)))

(declare-fun b!1254668 () Bool)

(assert (=> b!1254668 (= e!798540 tp_is_empty!6459)))

(declare-fun b!1254669 () Bool)

(declare-fun tp!369838 () Bool)

(declare-fun tp!369837 () Bool)

(assert (=> b!1254669 (= e!798540 (and tp!369838 tp!369837))))

(assert (= (and b!1254429 ((_ is ElementMatch!3469) (reg!3798 r!15719))) b!1254668))

(assert (= (and b!1254429 ((_ is Concat!5699) (reg!3798 r!15719))) b!1254669))

(assert (= (and b!1254429 ((_ is Star!3469) (reg!3798 r!15719))) b!1254670))

(assert (= (and b!1254429 ((_ is Union!3469) (reg!3798 r!15719))) b!1254671))

(declare-fun e!798541 () Bool)

(assert (=> b!1254425 (= tp!369777 e!798541)))

(declare-fun b!1254675 () Bool)

(declare-fun tp!369841 () Bool)

(declare-fun tp!369840 () Bool)

(assert (=> b!1254675 (= e!798541 (and tp!369841 tp!369840))))

(declare-fun b!1254674 () Bool)

(declare-fun tp!369844 () Bool)

(assert (=> b!1254674 (= e!798541 tp!369844)))

(declare-fun b!1254672 () Bool)

(assert (=> b!1254672 (= e!798541 tp_is_empty!6459)))

(declare-fun b!1254673 () Bool)

(declare-fun tp!369843 () Bool)

(declare-fun tp!369842 () Bool)

(assert (=> b!1254673 (= e!798541 (and tp!369843 tp!369842))))

(assert (= (and b!1254425 ((_ is ElementMatch!3469) (regOne!7451 r!15719))) b!1254672))

(assert (= (and b!1254425 ((_ is Concat!5699) (regOne!7451 r!15719))) b!1254673))

(assert (= (and b!1254425 ((_ is Star!3469) (regOne!7451 r!15719))) b!1254674))

(assert (= (and b!1254425 ((_ is Union!3469) (regOne!7451 r!15719))) b!1254675))

(declare-fun e!798542 () Bool)

(assert (=> b!1254425 (= tp!369776 e!798542)))

(declare-fun b!1254679 () Bool)

(declare-fun tp!369846 () Bool)

(declare-fun tp!369845 () Bool)

(assert (=> b!1254679 (= e!798542 (and tp!369846 tp!369845))))

(declare-fun b!1254678 () Bool)

(declare-fun tp!369849 () Bool)

(assert (=> b!1254678 (= e!798542 tp!369849)))

(declare-fun b!1254676 () Bool)

(assert (=> b!1254676 (= e!798542 tp_is_empty!6459)))

(declare-fun b!1254677 () Bool)

(declare-fun tp!369848 () Bool)

(declare-fun tp!369847 () Bool)

(assert (=> b!1254677 (= e!798542 (and tp!369848 tp!369847))))

(assert (= (and b!1254425 ((_ is ElementMatch!3469) (regTwo!7451 r!15719))) b!1254676))

(assert (= (and b!1254425 ((_ is Concat!5699) (regTwo!7451 r!15719))) b!1254677))

(assert (= (and b!1254425 ((_ is Star!3469) (regTwo!7451 r!15719))) b!1254678))

(assert (= (and b!1254425 ((_ is Union!3469) (regTwo!7451 r!15719))) b!1254679))

(check-sat (not bm!87929) (not b!1254662) (not bm!87928) (not b!1254661) (not b!1254677) (not bm!87935) (not b!1254679) (not bm!87924) (not b!1254482) (not b!1254665) (not b!1254670) (not b!1254675) (not bm!87930) (not bm!87878) (not b!1254678) (not b!1254674) (not b!1254671) (not bm!87880) (not b!1254667) (not bm!87925) (not b!1254666) tp_is_empty!6459 (not bm!87931) (not bm!87923) (not b!1254663) (not b!1254673) (not bm!87936) (not bm!87932) (not b!1254669))
(check-sat)
