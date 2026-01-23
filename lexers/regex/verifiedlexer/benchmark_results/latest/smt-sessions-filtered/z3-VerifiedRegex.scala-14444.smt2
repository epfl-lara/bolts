; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!752648 () Bool)

(assert start!752648)

(declare-fun b!7997505 () Bool)

(declare-fun e!4711732 () Bool)

(declare-fun tp!2391384 () Bool)

(assert (=> b!7997505 (= e!4711732 tp!2391384)))

(declare-fun b!7997506 () Bool)

(declare-fun e!4711734 () Bool)

(declare-fun tp!2391386 () Bool)

(assert (=> b!7997506 (= e!4711734 tp!2391386)))

(declare-fun b!7997507 () Bool)

(declare-fun res!3163374 () Bool)

(declare-fun e!4711735 () Bool)

(assert (=> b!7997507 (=> (not res!3163374) (not e!4711735))))

(declare-datatypes ((C!43476 0))(
  ( (C!43477 (val!32286 Int)) )
))
(declare-datatypes ((Regex!21569 0))(
  ( (ElementMatch!21569 (c!1468386 C!43476)) (Concat!30568 (regOne!43650 Regex!21569) (regTwo!43650 Regex!21569)) (EmptyExpr!21569) (Star!21569 (reg!21898 Regex!21569)) (EmptyLang!21569) (Union!21569 (regOne!43651 Regex!21569) (regTwo!43651 Regex!21569)) )
))
(declare-fun r!24786 () Regex!21569)

(declare-datatypes ((List!74798 0))(
  ( (Nil!74674) (Cons!74674 (h!81122 C!43476) (t!390541 List!74798)) )
))
(declare-fun input!8036 () List!74798)

(declare-fun baseR!141 () Regex!21569)

(declare-fun derivative!755 (Regex!21569 List!74798) Regex!21569)

(assert (=> b!7997507 (= res!3163374 (= (derivative!755 baseR!141 input!8036) r!24786))))

(declare-fun b!7997508 () Bool)

(declare-fun tp_is_empty!53681 () Bool)

(assert (=> b!7997508 (= e!4711734 tp_is_empty!53681)))

(declare-fun b!7997509 () Bool)

(declare-fun tp!2391388 () Bool)

(declare-fun tp!2391387 () Bool)

(assert (=> b!7997509 (= e!4711732 (and tp!2391388 tp!2391387))))

(declare-fun b!7997510 () Bool)

(declare-fun e!4711733 () Bool)

(declare-fun tp!2391391 () Bool)

(assert (=> b!7997510 (= e!4711733 (and tp_is_empty!53681 tp!2391391))))

(declare-fun b!7997512 () Bool)

(declare-fun validRegex!11873 (Regex!21569) Bool)

(declare-fun derivativeStep!6584 (Regex!21569 C!43476) Regex!21569)

(assert (=> b!7997512 (= e!4711735 (not (validRegex!11873 (derivativeStep!6584 baseR!141 (h!81122 input!8036)))))))

(declare-fun b!7997513 () Bool)

(declare-fun tp!2391385 () Bool)

(declare-fun tp!2391392 () Bool)

(assert (=> b!7997513 (= e!4711734 (and tp!2391385 tp!2391392))))

(declare-fun b!7997514 () Bool)

(declare-fun tp!2391390 () Bool)

(declare-fun tp!2391393 () Bool)

(assert (=> b!7997514 (= e!4711732 (and tp!2391390 tp!2391393))))

(declare-fun b!7997515 () Bool)

(declare-fun tp!2391394 () Bool)

(declare-fun tp!2391389 () Bool)

(assert (=> b!7997515 (= e!4711734 (and tp!2391394 tp!2391389))))

(declare-fun b!7997516 () Bool)

(declare-fun res!3163372 () Bool)

(assert (=> b!7997516 (=> (not res!3163372) (not e!4711735))))

(get-info :version)

(assert (=> b!7997516 (= res!3163372 ((_ is Cons!74674) input!8036))))

(declare-fun res!3163373 () Bool)

(assert (=> start!752648 (=> (not res!3163373) (not e!4711735))))

(assert (=> start!752648 (= res!3163373 (validRegex!11873 baseR!141))))

(assert (=> start!752648 e!4711735))

(assert (=> start!752648 e!4711734))

(assert (=> start!752648 e!4711733))

(assert (=> start!752648 e!4711732))

(declare-fun b!7997511 () Bool)

(assert (=> b!7997511 (= e!4711732 tp_is_empty!53681)))

(assert (= (and start!752648 res!3163373) b!7997507))

(assert (= (and b!7997507 res!3163374) b!7997516))

(assert (= (and b!7997516 res!3163372) b!7997512))

(assert (= (and start!752648 ((_ is ElementMatch!21569) baseR!141)) b!7997508))

(assert (= (and start!752648 ((_ is Concat!30568) baseR!141)) b!7997515))

(assert (= (and start!752648 ((_ is Star!21569) baseR!141)) b!7997506))

(assert (= (and start!752648 ((_ is Union!21569) baseR!141)) b!7997513))

(assert (= (and start!752648 ((_ is Cons!74674) input!8036)) b!7997510))

(assert (= (and start!752648 ((_ is ElementMatch!21569) r!24786)) b!7997511))

(assert (= (and start!752648 ((_ is Concat!30568) r!24786)) b!7997509))

(assert (= (and start!752648 ((_ is Star!21569) r!24786)) b!7997505))

(assert (= (and start!752648 ((_ is Union!21569) r!24786)) b!7997514))

(declare-fun m!8367370 () Bool)

(assert (=> b!7997507 m!8367370))

(declare-fun m!8367372 () Bool)

(assert (=> b!7997512 m!8367372))

(assert (=> b!7997512 m!8367372))

(declare-fun m!8367374 () Bool)

(assert (=> b!7997512 m!8367374))

(declare-fun m!8367376 () Bool)

(assert (=> start!752648 m!8367376))

(check-sat (not b!7997506) (not b!7997510) (not b!7997514) (not start!752648) (not b!7997512) tp_is_empty!53681 (not b!7997509) (not b!7997507) (not b!7997505) (not b!7997513) (not b!7997515))
(check-sat)
(get-model)

(declare-fun b!7997562 () Bool)

(declare-fun e!4711773 () Bool)

(declare-fun call!742855 () Bool)

(assert (=> b!7997562 (= e!4711773 call!742855)))

(declare-fun b!7997563 () Bool)

(declare-fun res!3163400 () Bool)

(declare-fun e!4711771 () Bool)

(assert (=> b!7997563 (=> res!3163400 e!4711771)))

(assert (=> b!7997563 (= res!3163400 (not ((_ is Concat!30568) (derivativeStep!6584 baseR!141 (h!81122 input!8036)))))))

(declare-fun e!4711774 () Bool)

(assert (=> b!7997563 (= e!4711774 e!4711771)))

(declare-fun b!7997564 () Bool)

(declare-fun e!4711775 () Bool)

(declare-fun call!742856 () Bool)

(assert (=> b!7997564 (= e!4711775 call!742856)))

(declare-fun b!7997565 () Bool)

(assert (=> b!7997565 (= e!4711771 e!4711773)))

(declare-fun res!3163402 () Bool)

(assert (=> b!7997565 (=> (not res!3163402) (not e!4711773))))

(declare-fun call!742854 () Bool)

(assert (=> b!7997565 (= res!3163402 call!742854)))

(declare-fun b!7997566 () Bool)

(declare-fun e!4711776 () Bool)

(declare-fun e!4711772 () Bool)

(assert (=> b!7997566 (= e!4711776 e!4711772)))

(declare-fun c!1468398 () Bool)

(assert (=> b!7997566 (= c!1468398 ((_ is Star!21569) (derivativeStep!6584 baseR!141 (h!81122 input!8036))))))

(declare-fun b!7997567 () Bool)

(assert (=> b!7997567 (= e!4711772 e!4711774)))

(declare-fun c!1468397 () Bool)

(assert (=> b!7997567 (= c!1468397 ((_ is Union!21569) (derivativeStep!6584 baseR!141 (h!81122 input!8036))))))

(declare-fun d!2386387 () Bool)

(declare-fun res!3163403 () Bool)

(assert (=> d!2386387 (=> res!3163403 e!4711776)))

(assert (=> d!2386387 (= res!3163403 ((_ is ElementMatch!21569) (derivativeStep!6584 baseR!141 (h!81122 input!8036))))))

(assert (=> d!2386387 (= (validRegex!11873 (derivativeStep!6584 baseR!141 (h!81122 input!8036))) e!4711776)))

(declare-fun b!7997568 () Bool)

(assert (=> b!7997568 (= e!4711772 e!4711775)))

(declare-fun res!3163401 () Bool)

(declare-fun nullable!9654 (Regex!21569) Bool)

(assert (=> b!7997568 (= res!3163401 (not (nullable!9654 (reg!21898 (derivativeStep!6584 baseR!141 (h!81122 input!8036))))))))

(assert (=> b!7997568 (=> (not res!3163401) (not e!4711775))))

(declare-fun bm!742849 () Bool)

(assert (=> bm!742849 (= call!742856 (validRegex!11873 (ite c!1468398 (reg!21898 (derivativeStep!6584 baseR!141 (h!81122 input!8036))) (ite c!1468397 (regOne!43651 (derivativeStep!6584 baseR!141 (h!81122 input!8036))) (regTwo!43650 (derivativeStep!6584 baseR!141 (h!81122 input!8036)))))))))

(declare-fun bm!742850 () Bool)

(assert (=> bm!742850 (= call!742854 (validRegex!11873 (ite c!1468397 (regTwo!43651 (derivativeStep!6584 baseR!141 (h!81122 input!8036))) (regOne!43650 (derivativeStep!6584 baseR!141 (h!81122 input!8036))))))))

(declare-fun b!7997569 () Bool)

(declare-fun e!4711777 () Bool)

(assert (=> b!7997569 (= e!4711777 call!742854)))

(declare-fun bm!742851 () Bool)

(assert (=> bm!742851 (= call!742855 call!742856)))

(declare-fun b!7997570 () Bool)

(declare-fun res!3163404 () Bool)

(assert (=> b!7997570 (=> (not res!3163404) (not e!4711777))))

(assert (=> b!7997570 (= res!3163404 call!742855)))

(assert (=> b!7997570 (= e!4711774 e!4711777)))

(assert (= (and d!2386387 (not res!3163403)) b!7997566))

(assert (= (and b!7997566 c!1468398) b!7997568))

(assert (= (and b!7997566 (not c!1468398)) b!7997567))

(assert (= (and b!7997568 res!3163401) b!7997564))

(assert (= (and b!7997567 c!1468397) b!7997570))

(assert (= (and b!7997567 (not c!1468397)) b!7997563))

(assert (= (and b!7997570 res!3163404) b!7997569))

(assert (= (and b!7997563 (not res!3163400)) b!7997565))

(assert (= (and b!7997565 res!3163402) b!7997562))

(assert (= (or b!7997570 b!7997562) bm!742851))

(assert (= (or b!7997569 b!7997565) bm!742850))

(assert (= (or b!7997564 bm!742851) bm!742849))

(declare-fun m!8367384 () Bool)

(assert (=> b!7997568 m!8367384))

(declare-fun m!8367386 () Bool)

(assert (=> bm!742849 m!8367386))

(declare-fun m!8367388 () Bool)

(assert (=> bm!742850 m!8367388))

(assert (=> b!7997512 d!2386387))

(declare-fun b!7997621 () Bool)

(declare-fun e!4711807 () Regex!21569)

(assert (=> b!7997621 (= e!4711807 (ite (= (h!81122 input!8036) (c!1468386 baseR!141)) EmptyExpr!21569 EmptyLang!21569))))

(declare-fun b!7997622 () Bool)

(declare-fun c!1468425 () Bool)

(assert (=> b!7997622 (= c!1468425 (nullable!9654 (regOne!43650 baseR!141)))))

(declare-fun e!4711804 () Regex!21569)

(declare-fun e!4711803 () Regex!21569)

(assert (=> b!7997622 (= e!4711804 e!4711803)))

(declare-fun b!7997623 () Bool)

(declare-fun e!4711806 () Regex!21569)

(assert (=> b!7997623 (= e!4711806 EmptyLang!21569)))

(declare-fun c!1468426 () Bool)

(declare-fun call!742880 () Regex!21569)

(declare-fun bm!742872 () Bool)

(assert (=> bm!742872 (= call!742880 (derivativeStep!6584 (ite c!1468426 (regTwo!43651 baseR!141) (regTwo!43650 baseR!141)) (h!81122 input!8036)))))

(declare-fun b!7997625 () Bool)

(assert (=> b!7997625 (= c!1468426 ((_ is Union!21569) baseR!141))))

(declare-fun e!4711805 () Regex!21569)

(assert (=> b!7997625 (= e!4711807 e!4711805)))

(declare-fun b!7997626 () Bool)

(assert (=> b!7997626 (= e!4711806 e!4711807)))

(declare-fun c!1468428 () Bool)

(assert (=> b!7997626 (= c!1468428 ((_ is ElementMatch!21569) baseR!141))))

(declare-fun b!7997627 () Bool)

(declare-fun call!742878 () Regex!21569)

(assert (=> b!7997627 (= e!4711805 (Union!21569 call!742878 call!742880))))

(declare-fun b!7997628 () Bool)

(declare-fun call!742877 () Regex!21569)

(assert (=> b!7997628 (= e!4711803 (Union!21569 (Concat!30568 call!742877 (regTwo!43650 baseR!141)) EmptyLang!21569))))

(declare-fun bm!742873 () Bool)

(declare-fun call!742879 () Regex!21569)

(assert (=> bm!742873 (= call!742877 call!742879)))

(declare-fun b!7997629 () Bool)

(assert (=> b!7997629 (= e!4711805 e!4711804)))

(declare-fun c!1468424 () Bool)

(assert (=> b!7997629 (= c!1468424 ((_ is Star!21569) baseR!141))))

(declare-fun bm!742874 () Bool)

(assert (=> bm!742874 (= call!742879 call!742878)))

(declare-fun bm!742875 () Bool)

(assert (=> bm!742875 (= call!742878 (derivativeStep!6584 (ite c!1468426 (regOne!43651 baseR!141) (ite c!1468424 (reg!21898 baseR!141) (regOne!43650 baseR!141))) (h!81122 input!8036)))))

(declare-fun b!7997630 () Bool)

(assert (=> b!7997630 (= e!4711803 (Union!21569 (Concat!30568 call!742877 (regTwo!43650 baseR!141)) call!742880))))

(declare-fun b!7997624 () Bool)

(assert (=> b!7997624 (= e!4711804 (Concat!30568 call!742879 baseR!141))))

(declare-fun d!2386391 () Bool)

(declare-fun lt!2713467 () Regex!21569)

(assert (=> d!2386391 (validRegex!11873 lt!2713467)))

(assert (=> d!2386391 (= lt!2713467 e!4711806)))

(declare-fun c!1468427 () Bool)

(assert (=> d!2386391 (= c!1468427 (or ((_ is EmptyExpr!21569) baseR!141) ((_ is EmptyLang!21569) baseR!141)))))

(assert (=> d!2386391 (validRegex!11873 baseR!141)))

(assert (=> d!2386391 (= (derivativeStep!6584 baseR!141 (h!81122 input!8036)) lt!2713467)))

(assert (= (and d!2386391 c!1468427) b!7997623))

(assert (= (and d!2386391 (not c!1468427)) b!7997626))

(assert (= (and b!7997626 c!1468428) b!7997621))

(assert (= (and b!7997626 (not c!1468428)) b!7997625))

(assert (= (and b!7997625 c!1468426) b!7997627))

(assert (= (and b!7997625 (not c!1468426)) b!7997629))

(assert (= (and b!7997629 c!1468424) b!7997624))

(assert (= (and b!7997629 (not c!1468424)) b!7997622))

(assert (= (and b!7997622 c!1468425) b!7997630))

(assert (= (and b!7997622 (not c!1468425)) b!7997628))

(assert (= (or b!7997630 b!7997628) bm!742873))

(assert (= (or b!7997624 bm!742873) bm!742874))

(assert (= (or b!7997627 b!7997630) bm!742872))

(assert (= (or b!7997627 bm!742874) bm!742875))

(declare-fun m!8367398 () Bool)

(assert (=> b!7997622 m!8367398))

(declare-fun m!8367400 () Bool)

(assert (=> bm!742872 m!8367400))

(declare-fun m!8367402 () Bool)

(assert (=> bm!742875 m!8367402))

(declare-fun m!8367404 () Bool)

(assert (=> d!2386391 m!8367404))

(assert (=> d!2386391 m!8367376))

(assert (=> b!7997512 d!2386391))

(declare-fun d!2386395 () Bool)

(declare-fun lt!2713473 () Regex!21569)

(assert (=> d!2386395 (validRegex!11873 lt!2713473)))

(declare-fun e!4711820 () Regex!21569)

(assert (=> d!2386395 (= lt!2713473 e!4711820)))

(declare-fun c!1468436 () Bool)

(assert (=> d!2386395 (= c!1468436 ((_ is Cons!74674) input!8036))))

(assert (=> d!2386395 (validRegex!11873 baseR!141)))

(assert (=> d!2386395 (= (derivative!755 baseR!141 input!8036) lt!2713473)))

(declare-fun b!7997650 () Bool)

(assert (=> b!7997650 (= e!4711820 (derivative!755 (derivativeStep!6584 baseR!141 (h!81122 input!8036)) (t!390541 input!8036)))))

(declare-fun b!7997651 () Bool)

(assert (=> b!7997651 (= e!4711820 baseR!141)))

(assert (= (and d!2386395 c!1468436) b!7997650))

(assert (= (and d!2386395 (not c!1468436)) b!7997651))

(declare-fun m!8367416 () Bool)

(assert (=> d!2386395 m!8367416))

(assert (=> d!2386395 m!8367376))

(assert (=> b!7997650 m!8367372))

(assert (=> b!7997650 m!8367372))

(declare-fun m!8367418 () Bool)

(assert (=> b!7997650 m!8367418))

(assert (=> b!7997507 d!2386395))

(declare-fun b!7997656 () Bool)

(declare-fun e!4711825 () Bool)

(declare-fun call!742885 () Bool)

(assert (=> b!7997656 (= e!4711825 call!742885)))

(declare-fun b!7997657 () Bool)

(declare-fun res!3163410 () Bool)

(declare-fun e!4711823 () Bool)

(assert (=> b!7997657 (=> res!3163410 e!4711823)))

(assert (=> b!7997657 (= res!3163410 (not ((_ is Concat!30568) baseR!141)))))

(declare-fun e!4711826 () Bool)

(assert (=> b!7997657 (= e!4711826 e!4711823)))

(declare-fun b!7997658 () Bool)

(declare-fun e!4711827 () Bool)

(declare-fun call!742886 () Bool)

(assert (=> b!7997658 (= e!4711827 call!742886)))

(declare-fun b!7997659 () Bool)

(assert (=> b!7997659 (= e!4711823 e!4711825)))

(declare-fun res!3163412 () Bool)

(assert (=> b!7997659 (=> (not res!3163412) (not e!4711825))))

(declare-fun call!742884 () Bool)

(assert (=> b!7997659 (= res!3163412 call!742884)))

(declare-fun b!7997660 () Bool)

(declare-fun e!4711828 () Bool)

(declare-fun e!4711824 () Bool)

(assert (=> b!7997660 (= e!4711828 e!4711824)))

(declare-fun c!1468438 () Bool)

(assert (=> b!7997660 (= c!1468438 ((_ is Star!21569) baseR!141))))

(declare-fun b!7997661 () Bool)

(assert (=> b!7997661 (= e!4711824 e!4711826)))

(declare-fun c!1468437 () Bool)

(assert (=> b!7997661 (= c!1468437 ((_ is Union!21569) baseR!141))))

(declare-fun d!2386399 () Bool)

(declare-fun res!3163413 () Bool)

(assert (=> d!2386399 (=> res!3163413 e!4711828)))

(assert (=> d!2386399 (= res!3163413 ((_ is ElementMatch!21569) baseR!141))))

(assert (=> d!2386399 (= (validRegex!11873 baseR!141) e!4711828)))

(declare-fun b!7997662 () Bool)

(assert (=> b!7997662 (= e!4711824 e!4711827)))

(declare-fun res!3163411 () Bool)

(assert (=> b!7997662 (= res!3163411 (not (nullable!9654 (reg!21898 baseR!141))))))

(assert (=> b!7997662 (=> (not res!3163411) (not e!4711827))))

(declare-fun bm!742879 () Bool)

(assert (=> bm!742879 (= call!742886 (validRegex!11873 (ite c!1468438 (reg!21898 baseR!141) (ite c!1468437 (regOne!43651 baseR!141) (regTwo!43650 baseR!141)))))))

(declare-fun bm!742880 () Bool)

(assert (=> bm!742880 (= call!742884 (validRegex!11873 (ite c!1468437 (regTwo!43651 baseR!141) (regOne!43650 baseR!141))))))

(declare-fun b!7997663 () Bool)

(declare-fun e!4711829 () Bool)

(assert (=> b!7997663 (= e!4711829 call!742884)))

(declare-fun bm!742881 () Bool)

(assert (=> bm!742881 (= call!742885 call!742886)))

(declare-fun b!7997664 () Bool)

(declare-fun res!3163414 () Bool)

(assert (=> b!7997664 (=> (not res!3163414) (not e!4711829))))

(assert (=> b!7997664 (= res!3163414 call!742885)))

(assert (=> b!7997664 (= e!4711826 e!4711829)))

(assert (= (and d!2386399 (not res!3163413)) b!7997660))

(assert (= (and b!7997660 c!1468438) b!7997662))

(assert (= (and b!7997660 (not c!1468438)) b!7997661))

(assert (= (and b!7997662 res!3163411) b!7997658))

(assert (= (and b!7997661 c!1468437) b!7997664))

(assert (= (and b!7997661 (not c!1468437)) b!7997657))

(assert (= (and b!7997664 res!3163414) b!7997663))

(assert (= (and b!7997657 (not res!3163410)) b!7997659))

(assert (= (and b!7997659 res!3163412) b!7997656))

(assert (= (or b!7997664 b!7997656) bm!742881))

(assert (= (or b!7997663 b!7997659) bm!742880))

(assert (= (or b!7997658 bm!742881) bm!742879))

(declare-fun m!8367420 () Bool)

(assert (=> b!7997662 m!8367420))

(declare-fun m!8367422 () Bool)

(assert (=> bm!742879 m!8367422))

(declare-fun m!8367424 () Bool)

(assert (=> bm!742880 m!8367424))

(assert (=> start!752648 d!2386399))

(declare-fun e!4711838 () Bool)

(assert (=> b!7997514 (= tp!2391390 e!4711838)))

(declare-fun b!7997698 () Bool)

(assert (=> b!7997698 (= e!4711838 tp_is_empty!53681)))

(declare-fun b!7997700 () Bool)

(declare-fun tp!2391433 () Bool)

(assert (=> b!7997700 (= e!4711838 tp!2391433)))

(declare-fun b!7997701 () Bool)

(declare-fun tp!2391437 () Bool)

(declare-fun tp!2391436 () Bool)

(assert (=> b!7997701 (= e!4711838 (and tp!2391437 tp!2391436))))

(declare-fun b!7997699 () Bool)

(declare-fun tp!2391434 () Bool)

(declare-fun tp!2391435 () Bool)

(assert (=> b!7997699 (= e!4711838 (and tp!2391434 tp!2391435))))

(assert (= (and b!7997514 ((_ is ElementMatch!21569) (regOne!43651 r!24786))) b!7997698))

(assert (= (and b!7997514 ((_ is Concat!30568) (regOne!43651 r!24786))) b!7997699))

(assert (= (and b!7997514 ((_ is Star!21569) (regOne!43651 r!24786))) b!7997700))

(assert (= (and b!7997514 ((_ is Union!21569) (regOne!43651 r!24786))) b!7997701))

(declare-fun e!4711841 () Bool)

(assert (=> b!7997514 (= tp!2391393 e!4711841)))

(declare-fun b!7997710 () Bool)

(assert (=> b!7997710 (= e!4711841 tp_is_empty!53681)))

(declare-fun b!7997712 () Bool)

(declare-fun tp!2391448 () Bool)

(assert (=> b!7997712 (= e!4711841 tp!2391448)))

(declare-fun b!7997713 () Bool)

(declare-fun tp!2391452 () Bool)

(declare-fun tp!2391451 () Bool)

(assert (=> b!7997713 (= e!4711841 (and tp!2391452 tp!2391451))))

(declare-fun b!7997711 () Bool)

(declare-fun tp!2391449 () Bool)

(declare-fun tp!2391450 () Bool)

(assert (=> b!7997711 (= e!4711841 (and tp!2391449 tp!2391450))))

(assert (= (and b!7997514 ((_ is ElementMatch!21569) (regTwo!43651 r!24786))) b!7997710))

(assert (= (and b!7997514 ((_ is Concat!30568) (regTwo!43651 r!24786))) b!7997711))

(assert (= (and b!7997514 ((_ is Star!21569) (regTwo!43651 r!24786))) b!7997712))

(assert (= (and b!7997514 ((_ is Union!21569) (regTwo!43651 r!24786))) b!7997713))

(declare-fun e!4711843 () Bool)

(assert (=> b!7997509 (= tp!2391388 e!4711843)))

(declare-fun b!7997718 () Bool)

(assert (=> b!7997718 (= e!4711843 tp_is_empty!53681)))

(declare-fun b!7997720 () Bool)

(declare-fun tp!2391458 () Bool)

(assert (=> b!7997720 (= e!4711843 tp!2391458)))

(declare-fun b!7997721 () Bool)

(declare-fun tp!2391462 () Bool)

(declare-fun tp!2391461 () Bool)

(assert (=> b!7997721 (= e!4711843 (and tp!2391462 tp!2391461))))

(declare-fun b!7997719 () Bool)

(declare-fun tp!2391459 () Bool)

(declare-fun tp!2391460 () Bool)

(assert (=> b!7997719 (= e!4711843 (and tp!2391459 tp!2391460))))

(assert (= (and b!7997509 ((_ is ElementMatch!21569) (regOne!43650 r!24786))) b!7997718))

(assert (= (and b!7997509 ((_ is Concat!30568) (regOne!43650 r!24786))) b!7997719))

(assert (= (and b!7997509 ((_ is Star!21569) (regOne!43650 r!24786))) b!7997720))

(assert (= (and b!7997509 ((_ is Union!21569) (regOne!43650 r!24786))) b!7997721))

(declare-fun e!4711845 () Bool)

(assert (=> b!7997509 (= tp!2391387 e!4711845)))

(declare-fun b!7997726 () Bool)

(assert (=> b!7997726 (= e!4711845 tp_is_empty!53681)))

(declare-fun b!7997728 () Bool)

(declare-fun tp!2391468 () Bool)

(assert (=> b!7997728 (= e!4711845 tp!2391468)))

(declare-fun b!7997729 () Bool)

(declare-fun tp!2391472 () Bool)

(declare-fun tp!2391471 () Bool)

(assert (=> b!7997729 (= e!4711845 (and tp!2391472 tp!2391471))))

(declare-fun b!7997727 () Bool)

(declare-fun tp!2391469 () Bool)

(declare-fun tp!2391470 () Bool)

(assert (=> b!7997727 (= e!4711845 (and tp!2391469 tp!2391470))))

(assert (= (and b!7997509 ((_ is ElementMatch!21569) (regTwo!43650 r!24786))) b!7997726))

(assert (= (and b!7997509 ((_ is Concat!30568) (regTwo!43650 r!24786))) b!7997727))

(assert (= (and b!7997509 ((_ is Star!21569) (regTwo!43650 r!24786))) b!7997728))

(assert (= (and b!7997509 ((_ is Union!21569) (regTwo!43650 r!24786))) b!7997729))

(declare-fun e!4711847 () Bool)

(assert (=> b!7997513 (= tp!2391385 e!4711847)))

(declare-fun b!7997734 () Bool)

(assert (=> b!7997734 (= e!4711847 tp_is_empty!53681)))

(declare-fun b!7997736 () Bool)

(declare-fun tp!2391478 () Bool)

(assert (=> b!7997736 (= e!4711847 tp!2391478)))

(declare-fun b!7997737 () Bool)

(declare-fun tp!2391482 () Bool)

(declare-fun tp!2391481 () Bool)

(assert (=> b!7997737 (= e!4711847 (and tp!2391482 tp!2391481))))

(declare-fun b!7997735 () Bool)

(declare-fun tp!2391479 () Bool)

(declare-fun tp!2391480 () Bool)

(assert (=> b!7997735 (= e!4711847 (and tp!2391479 tp!2391480))))

(assert (= (and b!7997513 ((_ is ElementMatch!21569) (regOne!43651 baseR!141))) b!7997734))

(assert (= (and b!7997513 ((_ is Concat!30568) (regOne!43651 baseR!141))) b!7997735))

(assert (= (and b!7997513 ((_ is Star!21569) (regOne!43651 baseR!141))) b!7997736))

(assert (= (and b!7997513 ((_ is Union!21569) (regOne!43651 baseR!141))) b!7997737))

(declare-fun e!4711849 () Bool)

(assert (=> b!7997513 (= tp!2391392 e!4711849)))

(declare-fun b!7997742 () Bool)

(assert (=> b!7997742 (= e!4711849 tp_is_empty!53681)))

(declare-fun b!7997744 () Bool)

(declare-fun tp!2391488 () Bool)

(assert (=> b!7997744 (= e!4711849 tp!2391488)))

(declare-fun b!7997745 () Bool)

(declare-fun tp!2391492 () Bool)

(declare-fun tp!2391491 () Bool)

(assert (=> b!7997745 (= e!4711849 (and tp!2391492 tp!2391491))))

(declare-fun b!7997743 () Bool)

(declare-fun tp!2391489 () Bool)

(declare-fun tp!2391490 () Bool)

(assert (=> b!7997743 (= e!4711849 (and tp!2391489 tp!2391490))))

(assert (= (and b!7997513 ((_ is ElementMatch!21569) (regTwo!43651 baseR!141))) b!7997742))

(assert (= (and b!7997513 ((_ is Concat!30568) (regTwo!43651 baseR!141))) b!7997743))

(assert (= (and b!7997513 ((_ is Star!21569) (regTwo!43651 baseR!141))) b!7997744))

(assert (= (and b!7997513 ((_ is Union!21569) (regTwo!43651 baseR!141))) b!7997745))

(declare-fun e!4711851 () Bool)

(assert (=> b!7997506 (= tp!2391386 e!4711851)))

(declare-fun b!7997750 () Bool)

(assert (=> b!7997750 (= e!4711851 tp_is_empty!53681)))

(declare-fun b!7997752 () Bool)

(declare-fun tp!2391498 () Bool)

(assert (=> b!7997752 (= e!4711851 tp!2391498)))

(declare-fun b!7997753 () Bool)

(declare-fun tp!2391502 () Bool)

(declare-fun tp!2391501 () Bool)

(assert (=> b!7997753 (= e!4711851 (and tp!2391502 tp!2391501))))

(declare-fun b!7997751 () Bool)

(declare-fun tp!2391499 () Bool)

(declare-fun tp!2391500 () Bool)

(assert (=> b!7997751 (= e!4711851 (and tp!2391499 tp!2391500))))

(assert (= (and b!7997506 ((_ is ElementMatch!21569) (reg!21898 baseR!141))) b!7997750))

(assert (= (and b!7997506 ((_ is Concat!30568) (reg!21898 baseR!141))) b!7997751))

(assert (= (and b!7997506 ((_ is Star!21569) (reg!21898 baseR!141))) b!7997752))

(assert (= (and b!7997506 ((_ is Union!21569) (reg!21898 baseR!141))) b!7997753))

(declare-fun e!4711852 () Bool)

(assert (=> b!7997515 (= tp!2391394 e!4711852)))

(declare-fun b!7997754 () Bool)

(assert (=> b!7997754 (= e!4711852 tp_is_empty!53681)))

(declare-fun b!7997756 () Bool)

(declare-fun tp!2391503 () Bool)

(assert (=> b!7997756 (= e!4711852 tp!2391503)))

(declare-fun b!7997757 () Bool)

(declare-fun tp!2391507 () Bool)

(declare-fun tp!2391506 () Bool)

(assert (=> b!7997757 (= e!4711852 (and tp!2391507 tp!2391506))))

(declare-fun b!7997755 () Bool)

(declare-fun tp!2391504 () Bool)

(declare-fun tp!2391505 () Bool)

(assert (=> b!7997755 (= e!4711852 (and tp!2391504 tp!2391505))))

(assert (= (and b!7997515 ((_ is ElementMatch!21569) (regOne!43650 baseR!141))) b!7997754))

(assert (= (and b!7997515 ((_ is Concat!30568) (regOne!43650 baseR!141))) b!7997755))

(assert (= (and b!7997515 ((_ is Star!21569) (regOne!43650 baseR!141))) b!7997756))

(assert (= (and b!7997515 ((_ is Union!21569) (regOne!43650 baseR!141))) b!7997757))

(declare-fun e!4711853 () Bool)

(assert (=> b!7997515 (= tp!2391389 e!4711853)))

(declare-fun b!7997758 () Bool)

(assert (=> b!7997758 (= e!4711853 tp_is_empty!53681)))

(declare-fun b!7997760 () Bool)

(declare-fun tp!2391508 () Bool)

(assert (=> b!7997760 (= e!4711853 tp!2391508)))

(declare-fun b!7997761 () Bool)

(declare-fun tp!2391512 () Bool)

(declare-fun tp!2391511 () Bool)

(assert (=> b!7997761 (= e!4711853 (and tp!2391512 tp!2391511))))

(declare-fun b!7997759 () Bool)

(declare-fun tp!2391509 () Bool)

(declare-fun tp!2391510 () Bool)

(assert (=> b!7997759 (= e!4711853 (and tp!2391509 tp!2391510))))

(assert (= (and b!7997515 ((_ is ElementMatch!21569) (regTwo!43650 baseR!141))) b!7997758))

(assert (= (and b!7997515 ((_ is Concat!30568) (regTwo!43650 baseR!141))) b!7997759))

(assert (= (and b!7997515 ((_ is Star!21569) (regTwo!43650 baseR!141))) b!7997760))

(assert (= (and b!7997515 ((_ is Union!21569) (regTwo!43650 baseR!141))) b!7997761))

(declare-fun b!7997766 () Bool)

(declare-fun e!4711856 () Bool)

(declare-fun tp!2391515 () Bool)

(assert (=> b!7997766 (= e!4711856 (and tp_is_empty!53681 tp!2391515))))

(assert (=> b!7997510 (= tp!2391391 e!4711856)))

(assert (= (and b!7997510 ((_ is Cons!74674) (t!390541 input!8036))) b!7997766))

(declare-fun e!4711857 () Bool)

(assert (=> b!7997505 (= tp!2391384 e!4711857)))

(declare-fun b!7997767 () Bool)

(assert (=> b!7997767 (= e!4711857 tp_is_empty!53681)))

(declare-fun b!7997769 () Bool)

(declare-fun tp!2391516 () Bool)

(assert (=> b!7997769 (= e!4711857 tp!2391516)))

(declare-fun b!7997770 () Bool)

(declare-fun tp!2391520 () Bool)

(declare-fun tp!2391519 () Bool)

(assert (=> b!7997770 (= e!4711857 (and tp!2391520 tp!2391519))))

(declare-fun b!7997768 () Bool)

(declare-fun tp!2391517 () Bool)

(declare-fun tp!2391518 () Bool)

(assert (=> b!7997768 (= e!4711857 (and tp!2391517 tp!2391518))))

(assert (= (and b!7997505 ((_ is ElementMatch!21569) (reg!21898 r!24786))) b!7997767))

(assert (= (and b!7997505 ((_ is Concat!30568) (reg!21898 r!24786))) b!7997768))

(assert (= (and b!7997505 ((_ is Star!21569) (reg!21898 r!24786))) b!7997769))

(assert (= (and b!7997505 ((_ is Union!21569) (reg!21898 r!24786))) b!7997770))

(check-sat (not b!7997662) (not b!7997735) (not bm!742849) (not b!7997727) (not b!7997713) (not b!7997701) (not bm!742872) (not b!7997743) (not b!7997759) (not b!7997756) (not b!7997751) (not b!7997737) (not b!7997744) (not b!7997721) (not b!7997769) (not b!7997766) (not bm!742880) (not bm!742850) (not bm!742879) (not b!7997753) (not b!7997712) (not b!7997752) (not b!7997700) (not b!7997650) (not b!7997719) (not b!7997720) (not b!7997729) (not d!2386395) (not b!7997622) (not b!7997699) (not b!7997755) (not b!7997728) (not b!7997770) (not b!7997757) (not b!7997711) (not d!2386391) (not b!7997760) (not bm!742875) tp_is_empty!53681 (not b!7997768) (not b!7997761) (not b!7997745) (not b!7997568) (not b!7997736))
(check-sat)
