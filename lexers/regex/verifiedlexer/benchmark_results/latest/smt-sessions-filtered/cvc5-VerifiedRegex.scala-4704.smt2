; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!243786 () Bool)

(assert start!243786)

(declare-fun b!2496355 () Bool)

(declare-fun e!1583963 () Bool)

(declare-fun tp!799553 () Bool)

(assert (=> b!2496355 (= e!1583963 tp!799553)))

(declare-fun b!2496356 () Bool)

(declare-fun res!1055813 () Bool)

(declare-fun e!1583966 () Bool)

(assert (=> b!2496356 (=> (not res!1055813) (not e!1583966))))

(declare-datatypes ((C!14922 0))(
  ( (C!14923 (val!9113 Int)) )
))
(declare-datatypes ((Regex!7382 0))(
  ( (ElementMatch!7382 (c!396980 C!14922)) (Concat!12078 (regOne!15276 Regex!7382) (regTwo!15276 Regex!7382)) (EmptyExpr!7382) (Star!7382 (reg!7711 Regex!7382)) (EmptyLang!7382) (Union!7382 (regOne!15277 Regex!7382) (regTwo!15277 Regex!7382)) )
))
(declare-fun lt!894825 () Regex!7382)

(declare-datatypes ((List!29447 0))(
  ( (Nil!29347) (Cons!29347 (h!34767 C!14922) (t!211146 List!29447)) )
))
(declare-fun tl!4068 () List!29447)

(declare-fun nullable!2299 (Regex!7382) Bool)

(declare-fun derivative!77 (Regex!7382 List!29447) Regex!7382)

(assert (=> b!2496356 (= res!1055813 (not (nullable!2299 (derivative!77 lt!894825 tl!4068))))))

(declare-fun b!2496357 () Bool)

(declare-fun e!1583967 () Bool)

(declare-fun e!1583962 () Bool)

(assert (=> b!2496357 (= e!1583967 e!1583962)))

(declare-fun res!1055815 () Bool)

(assert (=> b!2496357 (=> (not res!1055815) (not e!1583962))))

(declare-fun lt!894818 () Regex!7382)

(assert (=> b!2496357 (= res!1055815 (nullable!2299 lt!894818))))

(declare-fun lt!894820 () Regex!7382)

(assert (=> b!2496357 (= lt!894818 (derivative!77 lt!894820 tl!4068))))

(declare-fun r!27340 () Regex!7382)

(declare-fun c!14016 () C!14922)

(declare-fun derivativeStep!1951 (Regex!7382 C!14922) Regex!7382)

(assert (=> b!2496357 (= lt!894820 (derivativeStep!1951 r!27340 c!14016))))

(declare-fun b!2496358 () Bool)

(declare-fun res!1055814 () Bool)

(assert (=> b!2496358 (=> (not res!1055814) (not e!1583962))))

(assert (=> b!2496358 (= res!1055814 (and (not (is-EmptyExpr!7382 r!27340)) (not (is-EmptyLang!7382 r!27340)) (not (is-ElementMatch!7382 r!27340)) (not (is-Union!7382 r!27340)) (is-Star!7382 r!27340)))))

(declare-fun b!2496360 () Bool)

(declare-fun tp_is_empty!12619 () Bool)

(assert (=> b!2496360 (= e!1583963 tp_is_empty!12619)))

(declare-fun b!2496361 () Bool)

(declare-fun res!1055817 () Bool)

(declare-fun e!1583965 () Bool)

(assert (=> b!2496361 (=> res!1055817 e!1583965)))

(declare-fun lt!894821 () Regex!7382)

(declare-datatypes ((tuple2!29382 0))(
  ( (tuple2!29383 (_1!17233 List!29447) (_2!17233 List!29447)) )
))
(declare-fun lt!894817 () tuple2!29382)

(declare-fun matchR!3391 (Regex!7382 List!29447) Bool)

(assert (=> b!2496361 (= res!1055817 (not (matchR!3391 lt!894821 (_2!17233 lt!894817))))))

(declare-fun b!2496362 () Bool)

(declare-fun tp!799554 () Bool)

(declare-fun tp!799555 () Bool)

(assert (=> b!2496362 (= e!1583963 (and tp!799554 tp!799555))))

(declare-fun b!2496363 () Bool)

(declare-fun e!1583961 () Bool)

(assert (=> b!2496363 (= e!1583966 (not e!1583961))))

(declare-fun res!1055811 () Bool)

(assert (=> b!2496363 (=> res!1055811 e!1583961)))

(declare-fun lt!894823 () Bool)

(assert (=> b!2496363 (= res!1055811 (not lt!894823))))

(assert (=> b!2496363 (= lt!894823 (matchR!3391 lt!894818 Nil!29347))))

(assert (=> b!2496363 (= lt!894823 (matchR!3391 lt!894820 tl!4068))))

(declare-datatypes ((Unit!43033 0))(
  ( (Unit!43034) )
))
(declare-fun lt!894822 () Unit!43033)

(declare-fun lemmaMatchRIsSameAsWholeDerivativeAndNil!37 (Regex!7382 List!29447) Unit!43033)

(assert (=> b!2496363 (= lt!894822 (lemmaMatchRIsSameAsWholeDerivativeAndNil!37 lt!894820 tl!4068))))

(declare-fun b!2496364 () Bool)

(declare-fun validRegex!3008 (Regex!7382) Bool)

(assert (=> b!2496364 (= e!1583965 (validRegex!3008 (reg!7711 r!27340)))))

(declare-fun b!2496365 () Bool)

(declare-fun tp!799551 () Bool)

(declare-fun tp!799556 () Bool)

(assert (=> b!2496365 (= e!1583963 (and tp!799551 tp!799556))))

(declare-fun res!1055818 () Bool)

(assert (=> start!243786 (=> (not res!1055818) (not e!1583967))))

(assert (=> start!243786 (= res!1055818 (validRegex!3008 r!27340))))

(assert (=> start!243786 e!1583967))

(assert (=> start!243786 e!1583963))

(assert (=> start!243786 tp_is_empty!12619))

(declare-fun e!1583964 () Bool)

(assert (=> start!243786 e!1583964))

(declare-fun b!2496359 () Bool)

(declare-fun tp!799552 () Bool)

(assert (=> b!2496359 (= e!1583964 (and tp_is_empty!12619 tp!799552))))

(declare-fun b!2496366 () Bool)

(assert (=> b!2496366 (= e!1583962 e!1583966)))

(declare-fun res!1055812 () Bool)

(assert (=> b!2496366 (=> (not res!1055812) (not e!1583966))))

(assert (=> b!2496366 (= res!1055812 (= lt!894820 (Concat!12078 lt!894825 lt!894821)))))

(assert (=> b!2496366 (= lt!894821 (Star!7382 (reg!7711 r!27340)))))

(assert (=> b!2496366 (= lt!894825 (derivativeStep!1951 (reg!7711 r!27340) c!14016))))

(declare-fun b!2496367 () Bool)

(assert (=> b!2496367 (= e!1583961 e!1583965)))

(declare-fun res!1055816 () Bool)

(assert (=> b!2496367 (=> res!1055816 e!1583965)))

(declare-fun ++!7164 (List!29447 List!29447) List!29447)

(assert (=> b!2496367 (= res!1055816 (not (= (++!7164 (_1!17233 lt!894817) (_2!17233 lt!894817)) tl!4068)))))

(declare-datatypes ((Option!5811 0))(
  ( (None!5810) (Some!5810 (v!31741 tuple2!29382)) )
))
(declare-fun lt!894819 () Option!5811)

(declare-fun get!9085 (Option!5811) tuple2!29382)

(assert (=> b!2496367 (= lt!894817 (get!9085 lt!894819))))

(declare-fun isDefined!4633 (Option!5811) Bool)

(assert (=> b!2496367 (isDefined!4633 lt!894819)))

(declare-fun findConcatSeparation!833 (Regex!7382 Regex!7382 List!29447 List!29447 List!29447) Option!5811)

(assert (=> b!2496367 (= lt!894819 (findConcatSeparation!833 lt!894825 lt!894821 Nil!29347 tl!4068 tl!4068))))

(declare-fun lt!894824 () Unit!43033)

(declare-fun lemmaConcatAcceptsStringThenFindSeparationIsDefined!115 (Regex!7382 Regex!7382 List!29447) Unit!43033)

(assert (=> b!2496367 (= lt!894824 (lemmaConcatAcceptsStringThenFindSeparationIsDefined!115 lt!894825 lt!894821 tl!4068))))

(assert (= (and start!243786 res!1055818) b!2496357))

(assert (= (and b!2496357 res!1055815) b!2496358))

(assert (= (and b!2496358 res!1055814) b!2496366))

(assert (= (and b!2496366 res!1055812) b!2496356))

(assert (= (and b!2496356 res!1055813) b!2496363))

(assert (= (and b!2496363 (not res!1055811)) b!2496367))

(assert (= (and b!2496367 (not res!1055816)) b!2496361))

(assert (= (and b!2496361 (not res!1055817)) b!2496364))

(assert (= (and start!243786 (is-ElementMatch!7382 r!27340)) b!2496360))

(assert (= (and start!243786 (is-Concat!12078 r!27340)) b!2496362))

(assert (= (and start!243786 (is-Star!7382 r!27340)) b!2496355))

(assert (= (and start!243786 (is-Union!7382 r!27340)) b!2496365))

(assert (= (and start!243786 (is-Cons!29347 tl!4068)) b!2496359))

(declare-fun m!2860737 () Bool)

(assert (=> b!2496356 m!2860737))

(assert (=> b!2496356 m!2860737))

(declare-fun m!2860739 () Bool)

(assert (=> b!2496356 m!2860739))

(declare-fun m!2860741 () Bool)

(assert (=> b!2496363 m!2860741))

(declare-fun m!2860743 () Bool)

(assert (=> b!2496363 m!2860743))

(declare-fun m!2860745 () Bool)

(assert (=> b!2496363 m!2860745))

(declare-fun m!2860747 () Bool)

(assert (=> b!2496366 m!2860747))

(declare-fun m!2860749 () Bool)

(assert (=> b!2496361 m!2860749))

(declare-fun m!2860751 () Bool)

(assert (=> b!2496367 m!2860751))

(declare-fun m!2860753 () Bool)

(assert (=> b!2496367 m!2860753))

(declare-fun m!2860755 () Bool)

(assert (=> b!2496367 m!2860755))

(declare-fun m!2860757 () Bool)

(assert (=> b!2496367 m!2860757))

(declare-fun m!2860759 () Bool)

(assert (=> b!2496367 m!2860759))

(declare-fun m!2860761 () Bool)

(assert (=> b!2496364 m!2860761))

(declare-fun m!2860763 () Bool)

(assert (=> b!2496357 m!2860763))

(declare-fun m!2860765 () Bool)

(assert (=> b!2496357 m!2860765))

(declare-fun m!2860767 () Bool)

(assert (=> b!2496357 m!2860767))

(declare-fun m!2860769 () Bool)

(assert (=> start!243786 m!2860769))

(push 1)

(assert (not b!2496364))

(assert (not b!2496367))

(assert tp_is_empty!12619)

(assert (not b!2496356))

(assert (not b!2496357))

(assert (not b!2496355))

(assert (not b!2496361))

(assert (not b!2496365))

(assert (not b!2496362))

(assert (not start!243786))

(assert (not b!2496366))

(assert (not b!2496359))

(assert (not b!2496363))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!714901 () Bool)

(declare-fun lt!894857 () Regex!7382)

(assert (=> d!714901 (validRegex!3008 lt!894857)))

(declare-fun e!1584012 () Regex!7382)

(assert (=> d!714901 (= lt!894857 e!1584012)))

(declare-fun c!397005 () Bool)

(assert (=> d!714901 (= c!397005 (or (is-EmptyExpr!7382 (reg!7711 r!27340)) (is-EmptyLang!7382 (reg!7711 r!27340))))))

(assert (=> d!714901 (validRegex!3008 (reg!7711 r!27340))))

(assert (=> d!714901 (= (derivativeStep!1951 (reg!7711 r!27340) c!14016) lt!894857)))

(declare-fun b!2496447 () Bool)

(declare-fun c!397003 () Bool)

(assert (=> b!2496447 (= c!397003 (nullable!2299 (regOne!15276 (reg!7711 r!27340))))))

(declare-fun e!1584011 () Regex!7382)

(declare-fun e!1584010 () Regex!7382)

(assert (=> b!2496447 (= e!1584011 e!1584010)))

(declare-fun bm!153867 () Bool)

(declare-fun call!153873 () Regex!7382)

(declare-fun call!153872 () Regex!7382)

(assert (=> bm!153867 (= call!153873 call!153872)))

(declare-fun b!2496448 () Bool)

(declare-fun e!1584013 () Regex!7382)

(declare-fun call!153875 () Regex!7382)

(declare-fun call!153874 () Regex!7382)

(assert (=> b!2496448 (= e!1584013 (Union!7382 call!153875 call!153874))))

(declare-fun b!2496449 () Bool)

(declare-fun e!1584009 () Regex!7382)

(assert (=> b!2496449 (= e!1584009 (ite (= c!14016 (c!396980 (reg!7711 r!27340))) EmptyExpr!7382 EmptyLang!7382))))

(declare-fun b!2496450 () Bool)

(assert (=> b!2496450 (= e!1584013 e!1584011)))

(declare-fun c!397002 () Bool)

(assert (=> b!2496450 (= c!397002 (is-Star!7382 (reg!7711 r!27340)))))

(declare-fun bm!153868 () Bool)

(declare-fun c!397006 () Bool)

(assert (=> bm!153868 (= call!153874 (derivativeStep!1951 (ite c!397006 (regTwo!15277 (reg!7711 r!27340)) (regTwo!15276 (reg!7711 r!27340))) c!14016))))

(declare-fun b!2496451 () Bool)

(assert (=> b!2496451 (= e!1584012 EmptyLang!7382)))

(declare-fun bm!153869 () Bool)

(assert (=> bm!153869 (= call!153872 call!153875)))

(declare-fun b!2496452 () Bool)

(assert (=> b!2496452 (= c!397006 (is-Union!7382 (reg!7711 r!27340)))))

(assert (=> b!2496452 (= e!1584009 e!1584013)))

(declare-fun b!2496453 () Bool)

(assert (=> b!2496453 (= e!1584010 (Union!7382 (Concat!12078 call!153873 (regTwo!15276 (reg!7711 r!27340))) call!153874))))

(declare-fun b!2496454 () Bool)

(assert (=> b!2496454 (= e!1584010 (Union!7382 (Concat!12078 call!153873 (regTwo!15276 (reg!7711 r!27340))) EmptyLang!7382))))

(declare-fun b!2496455 () Bool)

(assert (=> b!2496455 (= e!1584012 e!1584009)))

(declare-fun c!397004 () Bool)

(assert (=> b!2496455 (= c!397004 (is-ElementMatch!7382 (reg!7711 r!27340)))))

(declare-fun bm!153870 () Bool)

(assert (=> bm!153870 (= call!153875 (derivativeStep!1951 (ite c!397006 (regOne!15277 (reg!7711 r!27340)) (ite c!397002 (reg!7711 (reg!7711 r!27340)) (regOne!15276 (reg!7711 r!27340)))) c!14016))))

(declare-fun b!2496456 () Bool)

(assert (=> b!2496456 (= e!1584011 (Concat!12078 call!153872 (reg!7711 r!27340)))))

(assert (= (and d!714901 c!397005) b!2496451))

(assert (= (and d!714901 (not c!397005)) b!2496455))

(assert (= (and b!2496455 c!397004) b!2496449))

(assert (= (and b!2496455 (not c!397004)) b!2496452))

(assert (= (and b!2496452 c!397006) b!2496448))

(assert (= (and b!2496452 (not c!397006)) b!2496450))

(assert (= (and b!2496450 c!397002) b!2496456))

(assert (= (and b!2496450 (not c!397002)) b!2496447))

(assert (= (and b!2496447 c!397003) b!2496453))

(assert (= (and b!2496447 (not c!397003)) b!2496454))

(assert (= (or b!2496453 b!2496454) bm!153867))

(assert (= (or b!2496456 bm!153867) bm!153869))

(assert (= (or b!2496448 b!2496453) bm!153868))

(assert (= (or b!2496448 bm!153869) bm!153870))

(declare-fun m!2860805 () Bool)

(assert (=> d!714901 m!2860805))

(assert (=> d!714901 m!2860761))

(declare-fun m!2860807 () Bool)

(assert (=> b!2496447 m!2860807))

(declare-fun m!2860809 () Bool)

(assert (=> bm!153868 m!2860809))

(declare-fun m!2860811 () Bool)

(assert (=> bm!153870 m!2860811))

(assert (=> b!2496366 d!714901))

(declare-fun b!2496513 () Bool)

(declare-fun res!1055876 () Bool)

(declare-fun e!1584048 () Bool)

(assert (=> b!2496513 (=> res!1055876 e!1584048)))

(assert (=> b!2496513 (= res!1055876 (not (is-ElementMatch!7382 lt!894821)))))

(declare-fun e!1584050 () Bool)

(assert (=> b!2496513 (= e!1584050 e!1584048)))

(declare-fun b!2496514 () Bool)

(declare-fun e!1584053 () Bool)

(assert (=> b!2496514 (= e!1584053 e!1584050)))

(declare-fun c!397022 () Bool)

(assert (=> b!2496514 (= c!397022 (is-EmptyLang!7382 lt!894821))))

(declare-fun b!2496515 () Bool)

(declare-fun e!1584049 () Bool)

(assert (=> b!2496515 (= e!1584048 e!1584049)))

(declare-fun res!1055871 () Bool)

(assert (=> b!2496515 (=> (not res!1055871) (not e!1584049))))

(declare-fun lt!894861 () Bool)

(assert (=> b!2496515 (= res!1055871 (not lt!894861))))

(declare-fun b!2496516 () Bool)

(declare-fun res!1055875 () Bool)

(declare-fun e!1584047 () Bool)

(assert (=> b!2496516 (=> (not res!1055875) (not e!1584047))))

(declare-fun isEmpty!16811 (List!29447) Bool)

(declare-fun tail!3960 (List!29447) List!29447)

(assert (=> b!2496516 (= res!1055875 (isEmpty!16811 (tail!3960 (_2!17233 lt!894817))))))

(declare-fun b!2496517 () Bool)

(declare-fun call!153888 () Bool)

(assert (=> b!2496517 (= e!1584053 (= lt!894861 call!153888))))

(declare-fun b!2496518 () Bool)

(declare-fun res!1055872 () Bool)

(declare-fun e!1584051 () Bool)

(assert (=> b!2496518 (=> res!1055872 e!1584051)))

(assert (=> b!2496518 (= res!1055872 (not (isEmpty!16811 (tail!3960 (_2!17233 lt!894817)))))))

(declare-fun d!714905 () Bool)

(assert (=> d!714905 e!1584053))

(declare-fun c!397024 () Bool)

(assert (=> d!714905 (= c!397024 (is-EmptyExpr!7382 lt!894821))))

(declare-fun e!1584052 () Bool)

(assert (=> d!714905 (= lt!894861 e!1584052)))

(declare-fun c!397023 () Bool)

(assert (=> d!714905 (= c!397023 (isEmpty!16811 (_2!17233 lt!894817)))))

(assert (=> d!714905 (validRegex!3008 lt!894821)))

(assert (=> d!714905 (= (matchR!3391 lt!894821 (_2!17233 lt!894817)) lt!894861)))

(declare-fun b!2496519 () Bool)

(declare-fun res!1055873 () Bool)

(assert (=> b!2496519 (=> res!1055873 e!1584048)))

(assert (=> b!2496519 (= res!1055873 e!1584047)))

(declare-fun res!1055874 () Bool)

(assert (=> b!2496519 (=> (not res!1055874) (not e!1584047))))

(assert (=> b!2496519 (= res!1055874 lt!894861)))

(declare-fun b!2496520 () Bool)

(declare-fun head!5683 (List!29447) C!14922)

(assert (=> b!2496520 (= e!1584047 (= (head!5683 (_2!17233 lt!894817)) (c!396980 lt!894821)))))

(declare-fun b!2496521 () Bool)

(assert (=> b!2496521 (= e!1584050 (not lt!894861))))

(declare-fun b!2496522 () Bool)

(assert (=> b!2496522 (= e!1584049 e!1584051)))

(declare-fun res!1055870 () Bool)

(assert (=> b!2496522 (=> res!1055870 e!1584051)))

(assert (=> b!2496522 (= res!1055870 call!153888)))

(declare-fun bm!153883 () Bool)

(assert (=> bm!153883 (= call!153888 (isEmpty!16811 (_2!17233 lt!894817)))))

(declare-fun b!2496523 () Bool)

(assert (=> b!2496523 (= e!1584052 (nullable!2299 lt!894821))))

(declare-fun b!2496524 () Bool)

(declare-fun res!1055869 () Bool)

(assert (=> b!2496524 (=> (not res!1055869) (not e!1584047))))

(assert (=> b!2496524 (= res!1055869 (not call!153888))))

(declare-fun b!2496525 () Bool)

(assert (=> b!2496525 (= e!1584052 (matchR!3391 (derivativeStep!1951 lt!894821 (head!5683 (_2!17233 lt!894817))) (tail!3960 (_2!17233 lt!894817))))))

(declare-fun b!2496526 () Bool)

(assert (=> b!2496526 (= e!1584051 (not (= (head!5683 (_2!17233 lt!894817)) (c!396980 lt!894821))))))

(assert (= (and d!714905 c!397023) b!2496523))

(assert (= (and d!714905 (not c!397023)) b!2496525))

(assert (= (and d!714905 c!397024) b!2496517))

(assert (= (and d!714905 (not c!397024)) b!2496514))

(assert (= (and b!2496514 c!397022) b!2496521))

(assert (= (and b!2496514 (not c!397022)) b!2496513))

(assert (= (and b!2496513 (not res!1055876)) b!2496519))

(assert (= (and b!2496519 res!1055874) b!2496524))

(assert (= (and b!2496524 res!1055869) b!2496516))

(assert (= (and b!2496516 res!1055875) b!2496520))

(assert (= (and b!2496519 (not res!1055873)) b!2496515))

(assert (= (and b!2496515 res!1055871) b!2496522))

(assert (= (and b!2496522 (not res!1055870)) b!2496518))

(assert (= (and b!2496518 (not res!1055872)) b!2496526))

(assert (= (or b!2496517 b!2496522 b!2496524) bm!153883))

(declare-fun m!2860821 () Bool)

(assert (=> b!2496525 m!2860821))

(assert (=> b!2496525 m!2860821))

(declare-fun m!2860823 () Bool)

(assert (=> b!2496525 m!2860823))

(declare-fun m!2860825 () Bool)

(assert (=> b!2496525 m!2860825))

(assert (=> b!2496525 m!2860823))

(assert (=> b!2496525 m!2860825))

(declare-fun m!2860827 () Bool)

(assert (=> b!2496525 m!2860827))

(declare-fun m!2860829 () Bool)

(assert (=> bm!153883 m!2860829))

(assert (=> b!2496516 m!2860825))

(assert (=> b!2496516 m!2860825))

(declare-fun m!2860831 () Bool)

(assert (=> b!2496516 m!2860831))

(assert (=> b!2496520 m!2860821))

(assert (=> b!2496518 m!2860825))

(assert (=> b!2496518 m!2860825))

(assert (=> b!2496518 m!2860831))

(declare-fun m!2860833 () Bool)

(assert (=> b!2496523 m!2860833))

(assert (=> b!2496526 m!2860821))

(assert (=> d!714905 m!2860829))

(declare-fun m!2860835 () Bool)

(assert (=> d!714905 m!2860835))

(assert (=> b!2496361 d!714905))

(declare-fun d!714909 () Bool)

(declare-fun res!1055898 () Bool)

(declare-fun e!1584084 () Bool)

(assert (=> d!714909 (=> res!1055898 e!1584084)))

(assert (=> d!714909 (= res!1055898 (is-ElementMatch!7382 (reg!7711 r!27340)))))

(assert (=> d!714909 (= (validRegex!3008 (reg!7711 r!27340)) e!1584084)))

(declare-fun b!2496563 () Bool)

(declare-fun e!1584088 () Bool)

(declare-fun call!153903 () Bool)

(assert (=> b!2496563 (= e!1584088 call!153903)))

(declare-fun b!2496564 () Bool)

(declare-fun e!1584082 () Bool)

(assert (=> b!2496564 (= e!1584082 e!1584088)))

(declare-fun res!1055899 () Bool)

(assert (=> b!2496564 (=> (not res!1055899) (not e!1584088))))

(declare-fun call!153901 () Bool)

(assert (=> b!2496564 (= res!1055899 call!153901)))

(declare-fun c!397033 () Bool)

(declare-fun call!153902 () Bool)

(declare-fun bm!153896 () Bool)

(declare-fun c!397034 () Bool)

(assert (=> bm!153896 (= call!153902 (validRegex!3008 (ite c!397033 (reg!7711 (reg!7711 r!27340)) (ite c!397034 (regOne!15277 (reg!7711 r!27340)) (regTwo!15276 (reg!7711 r!27340))))))))

(declare-fun b!2496565 () Bool)

(declare-fun res!1055897 () Bool)

(declare-fun e!1584083 () Bool)

(assert (=> b!2496565 (=> (not res!1055897) (not e!1584083))))

(assert (=> b!2496565 (= res!1055897 call!153903)))

(declare-fun e!1584085 () Bool)

(assert (=> b!2496565 (= e!1584085 e!1584083)))

(declare-fun b!2496566 () Bool)

(declare-fun e!1584087 () Bool)

(declare-fun e!1584086 () Bool)

(assert (=> b!2496566 (= e!1584087 e!1584086)))

(declare-fun res!1055900 () Bool)

(assert (=> b!2496566 (= res!1055900 (not (nullable!2299 (reg!7711 (reg!7711 r!27340)))))))

(assert (=> b!2496566 (=> (not res!1055900) (not e!1584086))))

(declare-fun b!2496567 () Bool)

(assert (=> b!2496567 (= e!1584087 e!1584085)))

(assert (=> b!2496567 (= c!397034 (is-Union!7382 (reg!7711 r!27340)))))

(declare-fun b!2496568 () Bool)

(declare-fun res!1055901 () Bool)

(assert (=> b!2496568 (=> res!1055901 e!1584082)))

(assert (=> b!2496568 (= res!1055901 (not (is-Concat!12078 (reg!7711 r!27340))))))

(assert (=> b!2496568 (= e!1584085 e!1584082)))

(declare-fun bm!153897 () Bool)

(assert (=> bm!153897 (= call!153903 call!153902)))

(declare-fun bm!153898 () Bool)

(assert (=> bm!153898 (= call!153901 (validRegex!3008 (ite c!397034 (regTwo!15277 (reg!7711 r!27340)) (regOne!15276 (reg!7711 r!27340)))))))

(declare-fun b!2496569 () Bool)

(assert (=> b!2496569 (= e!1584086 call!153902)))

(declare-fun b!2496570 () Bool)

(assert (=> b!2496570 (= e!1584084 e!1584087)))

(assert (=> b!2496570 (= c!397033 (is-Star!7382 (reg!7711 r!27340)))))

(declare-fun b!2496571 () Bool)

(assert (=> b!2496571 (= e!1584083 call!153901)))

(assert (= (and d!714909 (not res!1055898)) b!2496570))

(assert (= (and b!2496570 c!397033) b!2496566))

(assert (= (and b!2496570 (not c!397033)) b!2496567))

(assert (= (and b!2496566 res!1055900) b!2496569))

(assert (= (and b!2496567 c!397034) b!2496565))

(assert (= (and b!2496567 (not c!397034)) b!2496568))

(assert (= (and b!2496565 res!1055897) b!2496571))

(assert (= (and b!2496568 (not res!1055901)) b!2496564))

(assert (= (and b!2496564 res!1055899) b!2496563))

(assert (= (or b!2496565 b!2496563) bm!153897))

(assert (= (or b!2496571 b!2496564) bm!153898))

(assert (= (or b!2496569 bm!153897) bm!153896))

(declare-fun m!2860849 () Bool)

(assert (=> bm!153896 m!2860849))

(declare-fun m!2860851 () Bool)

(assert (=> b!2496566 m!2860851))

(declare-fun m!2860853 () Bool)

(assert (=> bm!153898 m!2860853))

(assert (=> b!2496364 d!714909))

(declare-fun d!714915 () Bool)

(declare-fun res!1055903 () Bool)

(declare-fun e!1584091 () Bool)

(assert (=> d!714915 (=> res!1055903 e!1584091)))

(assert (=> d!714915 (= res!1055903 (is-ElementMatch!7382 r!27340))))

(assert (=> d!714915 (= (validRegex!3008 r!27340) e!1584091)))

(declare-fun b!2496572 () Bool)

(declare-fun e!1584095 () Bool)

(declare-fun call!153906 () Bool)

(assert (=> b!2496572 (= e!1584095 call!153906)))

(declare-fun b!2496573 () Bool)

(declare-fun e!1584089 () Bool)

(assert (=> b!2496573 (= e!1584089 e!1584095)))

(declare-fun res!1055904 () Bool)

(assert (=> b!2496573 (=> (not res!1055904) (not e!1584095))))

(declare-fun call!153904 () Bool)

(assert (=> b!2496573 (= res!1055904 call!153904)))

(declare-fun bm!153899 () Bool)

(declare-fun c!397036 () Bool)

(declare-fun c!397035 () Bool)

(declare-fun call!153905 () Bool)

(assert (=> bm!153899 (= call!153905 (validRegex!3008 (ite c!397035 (reg!7711 r!27340) (ite c!397036 (regOne!15277 r!27340) (regTwo!15276 r!27340)))))))

(declare-fun b!2496574 () Bool)

(declare-fun res!1055902 () Bool)

(declare-fun e!1584090 () Bool)

(assert (=> b!2496574 (=> (not res!1055902) (not e!1584090))))

(assert (=> b!2496574 (= res!1055902 call!153906)))

(declare-fun e!1584092 () Bool)

(assert (=> b!2496574 (= e!1584092 e!1584090)))

(declare-fun b!2496575 () Bool)

(declare-fun e!1584094 () Bool)

(declare-fun e!1584093 () Bool)

(assert (=> b!2496575 (= e!1584094 e!1584093)))

(declare-fun res!1055905 () Bool)

(assert (=> b!2496575 (= res!1055905 (not (nullable!2299 (reg!7711 r!27340))))))

(assert (=> b!2496575 (=> (not res!1055905) (not e!1584093))))

(declare-fun b!2496576 () Bool)

(assert (=> b!2496576 (= e!1584094 e!1584092)))

(assert (=> b!2496576 (= c!397036 (is-Union!7382 r!27340))))

(declare-fun b!2496577 () Bool)

(declare-fun res!1055906 () Bool)

(assert (=> b!2496577 (=> res!1055906 e!1584089)))

(assert (=> b!2496577 (= res!1055906 (not (is-Concat!12078 r!27340)))))

(assert (=> b!2496577 (= e!1584092 e!1584089)))

(declare-fun bm!153900 () Bool)

(assert (=> bm!153900 (= call!153906 call!153905)))

(declare-fun bm!153901 () Bool)

(assert (=> bm!153901 (= call!153904 (validRegex!3008 (ite c!397036 (regTwo!15277 r!27340) (regOne!15276 r!27340))))))

(declare-fun b!2496578 () Bool)

(assert (=> b!2496578 (= e!1584093 call!153905)))

(declare-fun b!2496579 () Bool)

(assert (=> b!2496579 (= e!1584091 e!1584094)))

(assert (=> b!2496579 (= c!397035 (is-Star!7382 r!27340))))

(declare-fun b!2496580 () Bool)

(assert (=> b!2496580 (= e!1584090 call!153904)))

(assert (= (and d!714915 (not res!1055903)) b!2496579))

(assert (= (and b!2496579 c!397035) b!2496575))

(assert (= (and b!2496579 (not c!397035)) b!2496576))

(assert (= (and b!2496575 res!1055905) b!2496578))

(assert (= (and b!2496576 c!397036) b!2496574))

(assert (= (and b!2496576 (not c!397036)) b!2496577))

(assert (= (and b!2496574 res!1055902) b!2496580))

(assert (= (and b!2496577 (not res!1055906)) b!2496573))

(assert (= (and b!2496573 res!1055904) b!2496572))

(assert (= (or b!2496574 b!2496572) bm!153900))

(assert (= (or b!2496580 b!2496573) bm!153901))

(assert (= (or b!2496578 bm!153900) bm!153899))

(declare-fun m!2860855 () Bool)

(assert (=> bm!153899 m!2860855))

(declare-fun m!2860857 () Bool)

(assert (=> b!2496575 m!2860857))

(declare-fun m!2860859 () Bool)

(assert (=> bm!153901 m!2860859))

(assert (=> start!243786 d!714915))

(declare-fun b!2496581 () Bool)

(declare-fun res!1055914 () Bool)

(declare-fun e!1584097 () Bool)

(assert (=> b!2496581 (=> res!1055914 e!1584097)))

(assert (=> b!2496581 (= res!1055914 (not (is-ElementMatch!7382 lt!894818)))))

(declare-fun e!1584099 () Bool)

(assert (=> b!2496581 (= e!1584099 e!1584097)))

(declare-fun b!2496582 () Bool)

(declare-fun e!1584102 () Bool)

(assert (=> b!2496582 (= e!1584102 e!1584099)))

(declare-fun c!397037 () Bool)

(assert (=> b!2496582 (= c!397037 (is-EmptyLang!7382 lt!894818))))

(declare-fun b!2496583 () Bool)

(declare-fun e!1584098 () Bool)

(assert (=> b!2496583 (= e!1584097 e!1584098)))

(declare-fun res!1055909 () Bool)

(assert (=> b!2496583 (=> (not res!1055909) (not e!1584098))))

(declare-fun lt!894862 () Bool)

(assert (=> b!2496583 (= res!1055909 (not lt!894862))))

(declare-fun b!2496584 () Bool)

(declare-fun res!1055913 () Bool)

(declare-fun e!1584096 () Bool)

(assert (=> b!2496584 (=> (not res!1055913) (not e!1584096))))

(assert (=> b!2496584 (= res!1055913 (isEmpty!16811 (tail!3960 Nil!29347)))))

(declare-fun b!2496585 () Bool)

(declare-fun call!153907 () Bool)

(assert (=> b!2496585 (= e!1584102 (= lt!894862 call!153907))))

(declare-fun b!2496586 () Bool)

(declare-fun res!1055910 () Bool)

(declare-fun e!1584100 () Bool)

(assert (=> b!2496586 (=> res!1055910 e!1584100)))

(assert (=> b!2496586 (= res!1055910 (not (isEmpty!16811 (tail!3960 Nil!29347))))))

(declare-fun d!714917 () Bool)

(assert (=> d!714917 e!1584102))

(declare-fun c!397039 () Bool)

(assert (=> d!714917 (= c!397039 (is-EmptyExpr!7382 lt!894818))))

(declare-fun e!1584101 () Bool)

(assert (=> d!714917 (= lt!894862 e!1584101)))

(declare-fun c!397038 () Bool)

(assert (=> d!714917 (= c!397038 (isEmpty!16811 Nil!29347))))

(assert (=> d!714917 (validRegex!3008 lt!894818)))

(assert (=> d!714917 (= (matchR!3391 lt!894818 Nil!29347) lt!894862)))

(declare-fun b!2496587 () Bool)

(declare-fun res!1055911 () Bool)

(assert (=> b!2496587 (=> res!1055911 e!1584097)))

(assert (=> b!2496587 (= res!1055911 e!1584096)))

(declare-fun res!1055912 () Bool)

(assert (=> b!2496587 (=> (not res!1055912) (not e!1584096))))

(assert (=> b!2496587 (= res!1055912 lt!894862)))

(declare-fun b!2496588 () Bool)

(assert (=> b!2496588 (= e!1584096 (= (head!5683 Nil!29347) (c!396980 lt!894818)))))

(declare-fun b!2496589 () Bool)

(assert (=> b!2496589 (= e!1584099 (not lt!894862))))

(declare-fun b!2496590 () Bool)

(assert (=> b!2496590 (= e!1584098 e!1584100)))

(declare-fun res!1055908 () Bool)

(assert (=> b!2496590 (=> res!1055908 e!1584100)))

(assert (=> b!2496590 (= res!1055908 call!153907)))

(declare-fun bm!153902 () Bool)

(assert (=> bm!153902 (= call!153907 (isEmpty!16811 Nil!29347))))

(declare-fun b!2496591 () Bool)

(assert (=> b!2496591 (= e!1584101 (nullable!2299 lt!894818))))

(declare-fun b!2496592 () Bool)

(declare-fun res!1055907 () Bool)

(assert (=> b!2496592 (=> (not res!1055907) (not e!1584096))))

(assert (=> b!2496592 (= res!1055907 (not call!153907))))

(declare-fun b!2496593 () Bool)

(assert (=> b!2496593 (= e!1584101 (matchR!3391 (derivativeStep!1951 lt!894818 (head!5683 Nil!29347)) (tail!3960 Nil!29347)))))

(declare-fun b!2496594 () Bool)

(assert (=> b!2496594 (= e!1584100 (not (= (head!5683 Nil!29347) (c!396980 lt!894818))))))

(assert (= (and d!714917 c!397038) b!2496591))

(assert (= (and d!714917 (not c!397038)) b!2496593))

(assert (= (and d!714917 c!397039) b!2496585))

(assert (= (and d!714917 (not c!397039)) b!2496582))

(assert (= (and b!2496582 c!397037) b!2496589))

(assert (= (and b!2496582 (not c!397037)) b!2496581))

(assert (= (and b!2496581 (not res!1055914)) b!2496587))

(assert (= (and b!2496587 res!1055912) b!2496592))

(assert (= (and b!2496592 res!1055907) b!2496584))

(assert (= (and b!2496584 res!1055913) b!2496588))

(assert (= (and b!2496587 (not res!1055911)) b!2496583))

(assert (= (and b!2496583 res!1055909) b!2496590))

(assert (= (and b!2496590 (not res!1055908)) b!2496586))

(assert (= (and b!2496586 (not res!1055910)) b!2496594))

(assert (= (or b!2496585 b!2496590 b!2496592) bm!153902))

(declare-fun m!2860861 () Bool)

(assert (=> b!2496593 m!2860861))

(assert (=> b!2496593 m!2860861))

(declare-fun m!2860863 () Bool)

(assert (=> b!2496593 m!2860863))

(declare-fun m!2860865 () Bool)

(assert (=> b!2496593 m!2860865))

(assert (=> b!2496593 m!2860863))

(assert (=> b!2496593 m!2860865))

(declare-fun m!2860867 () Bool)

(assert (=> b!2496593 m!2860867))

(declare-fun m!2860869 () Bool)

(assert (=> bm!153902 m!2860869))

(assert (=> b!2496584 m!2860865))

(assert (=> b!2496584 m!2860865))

(declare-fun m!2860871 () Bool)

(assert (=> b!2496584 m!2860871))

(assert (=> b!2496588 m!2860861))

(assert (=> b!2496586 m!2860865))

(assert (=> b!2496586 m!2860865))

(assert (=> b!2496586 m!2860871))

(assert (=> b!2496591 m!2860763))

(assert (=> b!2496594 m!2860861))

(assert (=> d!714917 m!2860869))

(declare-fun m!2860873 () Bool)

(assert (=> d!714917 m!2860873))

(assert (=> b!2496363 d!714917))

(declare-fun b!2496595 () Bool)

(declare-fun res!1055922 () Bool)

(declare-fun e!1584104 () Bool)

(assert (=> b!2496595 (=> res!1055922 e!1584104)))

(assert (=> b!2496595 (= res!1055922 (not (is-ElementMatch!7382 lt!894820)))))

(declare-fun e!1584106 () Bool)

(assert (=> b!2496595 (= e!1584106 e!1584104)))

(declare-fun b!2496596 () Bool)

(declare-fun e!1584109 () Bool)

(assert (=> b!2496596 (= e!1584109 e!1584106)))

(declare-fun c!397040 () Bool)

(assert (=> b!2496596 (= c!397040 (is-EmptyLang!7382 lt!894820))))

(declare-fun b!2496597 () Bool)

(declare-fun e!1584105 () Bool)

(assert (=> b!2496597 (= e!1584104 e!1584105)))

(declare-fun res!1055917 () Bool)

(assert (=> b!2496597 (=> (not res!1055917) (not e!1584105))))

(declare-fun lt!894863 () Bool)

(assert (=> b!2496597 (= res!1055917 (not lt!894863))))

(declare-fun b!2496598 () Bool)

(declare-fun res!1055921 () Bool)

(declare-fun e!1584103 () Bool)

(assert (=> b!2496598 (=> (not res!1055921) (not e!1584103))))

(assert (=> b!2496598 (= res!1055921 (isEmpty!16811 (tail!3960 tl!4068)))))

(declare-fun b!2496599 () Bool)

(declare-fun call!153908 () Bool)

(assert (=> b!2496599 (= e!1584109 (= lt!894863 call!153908))))

(declare-fun b!2496600 () Bool)

(declare-fun res!1055918 () Bool)

(declare-fun e!1584107 () Bool)

(assert (=> b!2496600 (=> res!1055918 e!1584107)))

(assert (=> b!2496600 (= res!1055918 (not (isEmpty!16811 (tail!3960 tl!4068))))))

(declare-fun d!714919 () Bool)

(assert (=> d!714919 e!1584109))

(declare-fun c!397042 () Bool)

(assert (=> d!714919 (= c!397042 (is-EmptyExpr!7382 lt!894820))))

(declare-fun e!1584108 () Bool)

(assert (=> d!714919 (= lt!894863 e!1584108)))

(declare-fun c!397041 () Bool)

(assert (=> d!714919 (= c!397041 (isEmpty!16811 tl!4068))))

(assert (=> d!714919 (validRegex!3008 lt!894820)))

(assert (=> d!714919 (= (matchR!3391 lt!894820 tl!4068) lt!894863)))

(declare-fun b!2496601 () Bool)

(declare-fun res!1055919 () Bool)

(assert (=> b!2496601 (=> res!1055919 e!1584104)))

(assert (=> b!2496601 (= res!1055919 e!1584103)))

(declare-fun res!1055920 () Bool)

(assert (=> b!2496601 (=> (not res!1055920) (not e!1584103))))

(assert (=> b!2496601 (= res!1055920 lt!894863)))

(declare-fun b!2496602 () Bool)

(assert (=> b!2496602 (= e!1584103 (= (head!5683 tl!4068) (c!396980 lt!894820)))))

(declare-fun b!2496603 () Bool)

(assert (=> b!2496603 (= e!1584106 (not lt!894863))))

(declare-fun b!2496604 () Bool)

(assert (=> b!2496604 (= e!1584105 e!1584107)))

(declare-fun res!1055916 () Bool)

(assert (=> b!2496604 (=> res!1055916 e!1584107)))

(assert (=> b!2496604 (= res!1055916 call!153908)))

(declare-fun bm!153903 () Bool)

(assert (=> bm!153903 (= call!153908 (isEmpty!16811 tl!4068))))

(declare-fun b!2496605 () Bool)

(assert (=> b!2496605 (= e!1584108 (nullable!2299 lt!894820))))

(declare-fun b!2496606 () Bool)

(declare-fun res!1055915 () Bool)

(assert (=> b!2496606 (=> (not res!1055915) (not e!1584103))))

(assert (=> b!2496606 (= res!1055915 (not call!153908))))

(declare-fun b!2496607 () Bool)

(assert (=> b!2496607 (= e!1584108 (matchR!3391 (derivativeStep!1951 lt!894820 (head!5683 tl!4068)) (tail!3960 tl!4068)))))

(declare-fun b!2496608 () Bool)

(assert (=> b!2496608 (= e!1584107 (not (= (head!5683 tl!4068) (c!396980 lt!894820))))))

(assert (= (and d!714919 c!397041) b!2496605))

(assert (= (and d!714919 (not c!397041)) b!2496607))

(assert (= (and d!714919 c!397042) b!2496599))

(assert (= (and d!714919 (not c!397042)) b!2496596))

(assert (= (and b!2496596 c!397040) b!2496603))

(assert (= (and b!2496596 (not c!397040)) b!2496595))

(assert (= (and b!2496595 (not res!1055922)) b!2496601))

(assert (= (and b!2496601 res!1055920) b!2496606))

(assert (= (and b!2496606 res!1055915) b!2496598))

(assert (= (and b!2496598 res!1055921) b!2496602))

(assert (= (and b!2496601 (not res!1055919)) b!2496597))

(assert (= (and b!2496597 res!1055917) b!2496604))

(assert (= (and b!2496604 (not res!1055916)) b!2496600))

(assert (= (and b!2496600 (not res!1055918)) b!2496608))

(assert (= (or b!2496599 b!2496604 b!2496606) bm!153903))

(declare-fun m!2860875 () Bool)

(assert (=> b!2496607 m!2860875))

(assert (=> b!2496607 m!2860875))

(declare-fun m!2860877 () Bool)

(assert (=> b!2496607 m!2860877))

(declare-fun m!2860879 () Bool)

(assert (=> b!2496607 m!2860879))

(assert (=> b!2496607 m!2860877))

(assert (=> b!2496607 m!2860879))

(declare-fun m!2860881 () Bool)

(assert (=> b!2496607 m!2860881))

(declare-fun m!2860883 () Bool)

(assert (=> bm!153903 m!2860883))

(assert (=> b!2496598 m!2860879))

(assert (=> b!2496598 m!2860879))

(declare-fun m!2860885 () Bool)

(assert (=> b!2496598 m!2860885))

(assert (=> b!2496602 m!2860875))

(assert (=> b!2496600 m!2860879))

(assert (=> b!2496600 m!2860879))

(assert (=> b!2496600 m!2860885))

(declare-fun m!2860887 () Bool)

(assert (=> b!2496605 m!2860887))

(assert (=> b!2496608 m!2860875))

(assert (=> d!714919 m!2860883))

(declare-fun m!2860889 () Bool)

(assert (=> d!714919 m!2860889))

(assert (=> b!2496363 d!714919))

(declare-fun d!714921 () Bool)

(assert (=> d!714921 (= (matchR!3391 lt!894820 tl!4068) (matchR!3391 (derivative!77 lt!894820 tl!4068) Nil!29347))))

(declare-fun lt!894868 () Unit!43033)

(declare-fun choose!14744 (Regex!7382 List!29447) Unit!43033)

(assert (=> d!714921 (= lt!894868 (choose!14744 lt!894820 tl!4068))))

(assert (=> d!714921 (validRegex!3008 lt!894820)))

(assert (=> d!714921 (= (lemmaMatchRIsSameAsWholeDerivativeAndNil!37 lt!894820 tl!4068) lt!894868)))

(declare-fun bs!468476 () Bool)

(assert (= bs!468476 d!714921))

(assert (=> bs!468476 m!2860889))

(declare-fun m!2860891 () Bool)

(assert (=> bs!468476 m!2860891))

(assert (=> bs!468476 m!2860743))

(assert (=> bs!468476 m!2860765))

(declare-fun m!2860893 () Bool)

(assert (=> bs!468476 m!2860893))

(assert (=> bs!468476 m!2860765))

(assert (=> b!2496363 d!714921))

(declare-fun d!714923 () Bool)

(declare-fun nullableFct!576 (Regex!7382) Bool)

(assert (=> d!714923 (= (nullable!2299 lt!894818) (nullableFct!576 lt!894818))))

(declare-fun bs!468477 () Bool)

(assert (= bs!468477 d!714923))

(declare-fun m!2860895 () Bool)

(assert (=> bs!468477 m!2860895))

(assert (=> b!2496357 d!714923))

(declare-fun d!714925 () Bool)

(declare-fun lt!894871 () Regex!7382)

(assert (=> d!714925 (validRegex!3008 lt!894871)))

(declare-fun e!1584126 () Regex!7382)

(assert (=> d!714925 (= lt!894871 e!1584126)))

(declare-fun c!397051 () Bool)

(assert (=> d!714925 (= c!397051 (is-Cons!29347 tl!4068))))

(assert (=> d!714925 (validRegex!3008 lt!894820)))

(assert (=> d!714925 (= (derivative!77 lt!894820 tl!4068) lt!894871)))

(declare-fun b!2496641 () Bool)

(assert (=> b!2496641 (= e!1584126 (derivative!77 (derivativeStep!1951 lt!894820 (h!34767 tl!4068)) (t!211146 tl!4068)))))

(declare-fun b!2496642 () Bool)

(assert (=> b!2496642 (= e!1584126 lt!894820)))

(assert (= (and d!714925 c!397051) b!2496641))

(assert (= (and d!714925 (not c!397051)) b!2496642))

(declare-fun m!2860897 () Bool)

(assert (=> d!714925 m!2860897))

(assert (=> d!714925 m!2860889))

(declare-fun m!2860899 () Bool)

(assert (=> b!2496641 m!2860899))

(assert (=> b!2496641 m!2860899))

(declare-fun m!2860901 () Bool)

(assert (=> b!2496641 m!2860901))

(assert (=> b!2496357 d!714925))

(declare-fun d!714927 () Bool)

(declare-fun lt!894872 () Regex!7382)

(assert (=> d!714927 (validRegex!3008 lt!894872)))

(declare-fun e!1584130 () Regex!7382)

(assert (=> d!714927 (= lt!894872 e!1584130)))

(declare-fun c!397055 () Bool)

(assert (=> d!714927 (= c!397055 (or (is-EmptyExpr!7382 r!27340) (is-EmptyLang!7382 r!27340)))))

(assert (=> d!714927 (validRegex!3008 r!27340)))

(assert (=> d!714927 (= (derivativeStep!1951 r!27340 c!14016) lt!894872)))

(declare-fun b!2496643 () Bool)

(declare-fun c!397053 () Bool)

(assert (=> b!2496643 (= c!397053 (nullable!2299 (regOne!15276 r!27340)))))

(declare-fun e!1584129 () Regex!7382)

(declare-fun e!1584128 () Regex!7382)

(assert (=> b!2496643 (= e!1584129 e!1584128)))

(declare-fun bm!153906 () Bool)

(declare-fun call!153912 () Regex!7382)

(declare-fun call!153911 () Regex!7382)

(assert (=> bm!153906 (= call!153912 call!153911)))

(declare-fun b!2496644 () Bool)

(declare-fun e!1584131 () Regex!7382)

(declare-fun call!153914 () Regex!7382)

(declare-fun call!153913 () Regex!7382)

(assert (=> b!2496644 (= e!1584131 (Union!7382 call!153914 call!153913))))

(declare-fun b!2496645 () Bool)

(declare-fun e!1584127 () Regex!7382)

(assert (=> b!2496645 (= e!1584127 (ite (= c!14016 (c!396980 r!27340)) EmptyExpr!7382 EmptyLang!7382))))

(declare-fun b!2496646 () Bool)

(assert (=> b!2496646 (= e!1584131 e!1584129)))

(declare-fun c!397052 () Bool)

(assert (=> b!2496646 (= c!397052 (is-Star!7382 r!27340))))

(declare-fun bm!153907 () Bool)

(declare-fun c!397056 () Bool)

(assert (=> bm!153907 (= call!153913 (derivativeStep!1951 (ite c!397056 (regTwo!15277 r!27340) (regTwo!15276 r!27340)) c!14016))))

(declare-fun b!2496647 () Bool)

(assert (=> b!2496647 (= e!1584130 EmptyLang!7382)))

(declare-fun bm!153908 () Bool)

(assert (=> bm!153908 (= call!153911 call!153914)))

(declare-fun b!2496648 () Bool)

(assert (=> b!2496648 (= c!397056 (is-Union!7382 r!27340))))

(assert (=> b!2496648 (= e!1584127 e!1584131)))

(declare-fun b!2496649 () Bool)

(assert (=> b!2496649 (= e!1584128 (Union!7382 (Concat!12078 call!153912 (regTwo!15276 r!27340)) call!153913))))

(declare-fun b!2496650 () Bool)

(assert (=> b!2496650 (= e!1584128 (Union!7382 (Concat!12078 call!153912 (regTwo!15276 r!27340)) EmptyLang!7382))))

(declare-fun b!2496651 () Bool)

(assert (=> b!2496651 (= e!1584130 e!1584127)))

(declare-fun c!397054 () Bool)

(assert (=> b!2496651 (= c!397054 (is-ElementMatch!7382 r!27340))))

(declare-fun bm!153909 () Bool)

(assert (=> bm!153909 (= call!153914 (derivativeStep!1951 (ite c!397056 (regOne!15277 r!27340) (ite c!397052 (reg!7711 r!27340) (regOne!15276 r!27340))) c!14016))))

(declare-fun b!2496652 () Bool)

(assert (=> b!2496652 (= e!1584129 (Concat!12078 call!153911 r!27340))))

(assert (= (and d!714927 c!397055) b!2496647))

(assert (= (and d!714927 (not c!397055)) b!2496651))

(assert (= (and b!2496651 c!397054) b!2496645))

(assert (= (and b!2496651 (not c!397054)) b!2496648))

(assert (= (and b!2496648 c!397056) b!2496644))

(assert (= (and b!2496648 (not c!397056)) b!2496646))

(assert (= (and b!2496646 c!397052) b!2496652))

(assert (= (and b!2496646 (not c!397052)) b!2496643))

(assert (= (and b!2496643 c!397053) b!2496649))

(assert (= (and b!2496643 (not c!397053)) b!2496650))

(assert (= (or b!2496649 b!2496650) bm!153906))

(assert (= (or b!2496652 bm!153906) bm!153908))

(assert (= (or b!2496644 b!2496649) bm!153907))

(assert (= (or b!2496644 bm!153908) bm!153909))

(declare-fun m!2860903 () Bool)

(assert (=> d!714927 m!2860903))

(assert (=> d!714927 m!2860769))

(declare-fun m!2860905 () Bool)

(assert (=> b!2496643 m!2860905))

(declare-fun m!2860907 () Bool)

(assert (=> bm!153907 m!2860907))

(declare-fun m!2860909 () Bool)

(assert (=> bm!153909 m!2860909))

(assert (=> b!2496357 d!714927))

(declare-fun d!714929 () Bool)

(assert (=> d!714929 (= (nullable!2299 (derivative!77 lt!894825 tl!4068)) (nullableFct!576 (derivative!77 lt!894825 tl!4068)))))

(declare-fun bs!468478 () Bool)

(assert (= bs!468478 d!714929))

(assert (=> bs!468478 m!2860737))

(declare-fun m!2860911 () Bool)

(assert (=> bs!468478 m!2860911))

(assert (=> b!2496356 d!714929))

(declare-fun d!714931 () Bool)

(declare-fun lt!894874 () Regex!7382)

(assert (=> d!714931 (validRegex!3008 lt!894874)))

(declare-fun e!1584139 () Regex!7382)

(assert (=> d!714931 (= lt!894874 e!1584139)))

(declare-fun c!397060 () Bool)

(assert (=> d!714931 (= c!397060 (is-Cons!29347 tl!4068))))

(assert (=> d!714931 (validRegex!3008 lt!894825)))

(assert (=> d!714931 (= (derivative!77 lt!894825 tl!4068) lt!894874)))

(declare-fun b!2496667 () Bool)

(assert (=> b!2496667 (= e!1584139 (derivative!77 (derivativeStep!1951 lt!894825 (h!34767 tl!4068)) (t!211146 tl!4068)))))

(declare-fun b!2496668 () Bool)

(assert (=> b!2496668 (= e!1584139 lt!894825)))

(assert (= (and d!714931 c!397060) b!2496667))

(assert (= (and d!714931 (not c!397060)) b!2496668))

(declare-fun m!2860913 () Bool)

(assert (=> d!714931 m!2860913))

(declare-fun m!2860915 () Bool)

(assert (=> d!714931 m!2860915))

(declare-fun m!2860917 () Bool)

(assert (=> b!2496667 m!2860917))

(assert (=> b!2496667 m!2860917))

(declare-fun m!2860919 () Bool)

(assert (=> b!2496667 m!2860919))

(assert (=> b!2496356 d!714931))

(declare-fun b!2496691 () Bool)

(declare-fun e!1584151 () List!29447)

(assert (=> b!2496691 (= e!1584151 (_2!17233 lt!894817))))

(declare-fun b!2496692 () Bool)

(assert (=> b!2496692 (= e!1584151 (Cons!29347 (h!34767 (_1!17233 lt!894817)) (++!7164 (t!211146 (_1!17233 lt!894817)) (_2!17233 lt!894817))))))

(declare-fun d!714933 () Bool)

(declare-fun e!1584152 () Bool)

(assert (=> d!714933 e!1584152))

(declare-fun res!1055959 () Bool)

(assert (=> d!714933 (=> (not res!1055959) (not e!1584152))))

(declare-fun lt!894878 () List!29447)

(declare-fun content!3995 (List!29447) (Set C!14922))

(assert (=> d!714933 (= res!1055959 (= (content!3995 lt!894878) (set.union (content!3995 (_1!17233 lt!894817)) (content!3995 (_2!17233 lt!894817)))))))

(assert (=> d!714933 (= lt!894878 e!1584151)))

(declare-fun c!397066 () Bool)

(assert (=> d!714933 (= c!397066 (is-Nil!29347 (_1!17233 lt!894817)))))

(assert (=> d!714933 (= (++!7164 (_1!17233 lt!894817) (_2!17233 lt!894817)) lt!894878)))

(declare-fun b!2496693 () Bool)

(declare-fun res!1055960 () Bool)

(assert (=> b!2496693 (=> (not res!1055960) (not e!1584152))))

(declare-fun size!22879 (List!29447) Int)

(assert (=> b!2496693 (= res!1055960 (= (size!22879 lt!894878) (+ (size!22879 (_1!17233 lt!894817)) (size!22879 (_2!17233 lt!894817)))))))

(declare-fun b!2496694 () Bool)

(assert (=> b!2496694 (= e!1584152 (or (not (= (_2!17233 lt!894817) Nil!29347)) (= lt!894878 (_1!17233 lt!894817))))))

(assert (= (and d!714933 c!397066) b!2496691))

(assert (= (and d!714933 (not c!397066)) b!2496692))

(assert (= (and d!714933 res!1055959) b!2496693))

(assert (= (and b!2496693 res!1055960) b!2496694))

(declare-fun m!2860951 () Bool)

(assert (=> b!2496692 m!2860951))

(declare-fun m!2860953 () Bool)

(assert (=> d!714933 m!2860953))

(declare-fun m!2860955 () Bool)

(assert (=> d!714933 m!2860955))

(declare-fun m!2860957 () Bool)

(assert (=> d!714933 m!2860957))

(declare-fun m!2860959 () Bool)

(assert (=> b!2496693 m!2860959))

(declare-fun m!2860961 () Bool)

(assert (=> b!2496693 m!2860961))

(declare-fun m!2860963 () Bool)

(assert (=> b!2496693 m!2860963))

(assert (=> b!2496367 d!714933))

(declare-fun d!714939 () Bool)

(assert (=> d!714939 (isDefined!4633 (findConcatSeparation!833 lt!894825 lt!894821 Nil!29347 tl!4068 tl!4068))))

(declare-fun lt!894885 () Unit!43033)

(declare-fun choose!14745 (Regex!7382 Regex!7382 List!29447) Unit!43033)

(assert (=> d!714939 (= lt!894885 (choose!14745 lt!894825 lt!894821 tl!4068))))

(assert (=> d!714939 (validRegex!3008 lt!894825)))

(assert (=> d!714939 (= (lemmaConcatAcceptsStringThenFindSeparationIsDefined!115 lt!894825 lt!894821 tl!4068) lt!894885)))

(declare-fun bs!468480 () Bool)

(assert (= bs!468480 d!714939))

(assert (=> bs!468480 m!2860755))

(assert (=> bs!468480 m!2860755))

(declare-fun m!2860985 () Bool)

(assert (=> bs!468480 m!2860985))

(declare-fun m!2860987 () Bool)

(assert (=> bs!468480 m!2860987))

(assert (=> bs!468480 m!2860915))

(assert (=> b!2496367 d!714939))

(declare-fun b!2496745 () Bool)

(declare-fun e!1584180 () Bool)

(declare-fun lt!894898 () Option!5811)

(assert (=> b!2496745 (= e!1584180 (not (isDefined!4633 lt!894898)))))

(declare-fun b!2496746 () Bool)

(declare-fun e!1584179 () Option!5811)

(assert (=> b!2496746 (= e!1584179 None!5810)))

(declare-fun b!2496747 () Bool)

(declare-fun res!1055979 () Bool)

(declare-fun e!1584182 () Bool)

(assert (=> b!2496747 (=> (not res!1055979) (not e!1584182))))

(assert (=> b!2496747 (= res!1055979 (matchR!3391 lt!894825 (_1!17233 (get!9085 lt!894898))))))

(declare-fun b!2496748 () Bool)

(assert (=> b!2496748 (= e!1584182 (= (++!7164 (_1!17233 (get!9085 lt!894898)) (_2!17233 (get!9085 lt!894898))) tl!4068))))

(declare-fun b!2496749 () Bool)

(declare-fun e!1584181 () Option!5811)

(assert (=> b!2496749 (= e!1584181 (Some!5810 (tuple2!29383 Nil!29347 tl!4068)))))

(declare-fun b!2496750 () Bool)

(declare-fun lt!894899 () Unit!43033)

(declare-fun lt!894897 () Unit!43033)

(assert (=> b!2496750 (= lt!894899 lt!894897)))

(assert (=> b!2496750 (= (++!7164 (++!7164 Nil!29347 (Cons!29347 (h!34767 tl!4068) Nil!29347)) (t!211146 tl!4068)) tl!4068)))

(declare-fun lemmaMoveElementToOtherListKeepsConcatEq!719 (List!29447 C!14922 List!29447 List!29447) Unit!43033)

(assert (=> b!2496750 (= lt!894897 (lemmaMoveElementToOtherListKeepsConcatEq!719 Nil!29347 (h!34767 tl!4068) (t!211146 tl!4068) tl!4068))))

(assert (=> b!2496750 (= e!1584179 (findConcatSeparation!833 lt!894825 lt!894821 (++!7164 Nil!29347 (Cons!29347 (h!34767 tl!4068) Nil!29347)) (t!211146 tl!4068) tl!4068))))

(declare-fun d!714945 () Bool)

(assert (=> d!714945 e!1584180))

(declare-fun res!1055983 () Bool)

(assert (=> d!714945 (=> res!1055983 e!1584180)))

(assert (=> d!714945 (= res!1055983 e!1584182)))

(declare-fun res!1055982 () Bool)

(assert (=> d!714945 (=> (not res!1055982) (not e!1584182))))

(assert (=> d!714945 (= res!1055982 (isDefined!4633 lt!894898))))

(assert (=> d!714945 (= lt!894898 e!1584181)))

(declare-fun c!397084 () Bool)

(declare-fun e!1584183 () Bool)

(assert (=> d!714945 (= c!397084 e!1584183)))

(declare-fun res!1055980 () Bool)

(assert (=> d!714945 (=> (not res!1055980) (not e!1584183))))

(assert (=> d!714945 (= res!1055980 (matchR!3391 lt!894825 Nil!29347))))

(assert (=> d!714945 (validRegex!3008 lt!894825)))

(assert (=> d!714945 (= (findConcatSeparation!833 lt!894825 lt!894821 Nil!29347 tl!4068 tl!4068) lt!894898)))

(declare-fun b!2496751 () Bool)

(assert (=> b!2496751 (= e!1584183 (matchR!3391 lt!894821 tl!4068))))

(declare-fun b!2496752 () Bool)

(declare-fun res!1055981 () Bool)

(assert (=> b!2496752 (=> (not res!1055981) (not e!1584182))))

(assert (=> b!2496752 (= res!1055981 (matchR!3391 lt!894821 (_2!17233 (get!9085 lt!894898))))))

(declare-fun b!2496753 () Bool)

(assert (=> b!2496753 (= e!1584181 e!1584179)))

(declare-fun c!397083 () Bool)

(assert (=> b!2496753 (= c!397083 (is-Nil!29347 tl!4068))))

(assert (= (and d!714945 res!1055980) b!2496751))

(assert (= (and d!714945 c!397084) b!2496749))

(assert (= (and d!714945 (not c!397084)) b!2496753))

(assert (= (and b!2496753 c!397083) b!2496746))

(assert (= (and b!2496753 (not c!397083)) b!2496750))

(assert (= (and d!714945 res!1055982) b!2496747))

(assert (= (and b!2496747 res!1055979) b!2496752))

(assert (= (and b!2496752 res!1055981) b!2496748))

(assert (= (and d!714945 (not res!1055983)) b!2496745))

(declare-fun m!2861017 () Bool)

(assert (=> b!2496745 m!2861017))

(declare-fun m!2861019 () Bool)

(assert (=> b!2496747 m!2861019))

(declare-fun m!2861021 () Bool)

(assert (=> b!2496747 m!2861021))

(declare-fun m!2861023 () Bool)

(assert (=> b!2496751 m!2861023))

(assert (=> d!714945 m!2861017))

(declare-fun m!2861025 () Bool)

(assert (=> d!714945 m!2861025))

(assert (=> d!714945 m!2860915))

(assert (=> b!2496752 m!2861019))

(declare-fun m!2861027 () Bool)

(assert (=> b!2496752 m!2861027))

(assert (=> b!2496748 m!2861019))

(declare-fun m!2861029 () Bool)

(assert (=> b!2496748 m!2861029))

(declare-fun m!2861031 () Bool)

(assert (=> b!2496750 m!2861031))

(assert (=> b!2496750 m!2861031))

(declare-fun m!2861033 () Bool)

(assert (=> b!2496750 m!2861033))

(declare-fun m!2861035 () Bool)

(assert (=> b!2496750 m!2861035))

(assert (=> b!2496750 m!2861031))

(declare-fun m!2861037 () Bool)

(assert (=> b!2496750 m!2861037))

(assert (=> b!2496367 d!714945))

(declare-fun d!714959 () Bool)

(assert (=> d!714959 (= (get!9085 lt!894819) (v!31741 lt!894819))))

(assert (=> b!2496367 d!714959))

(declare-fun d!714961 () Bool)

(declare-fun isEmpty!16813 (Option!5811) Bool)

(assert (=> d!714961 (= (isDefined!4633 lt!894819) (not (isEmpty!16813 lt!894819)))))

(declare-fun bs!468484 () Bool)

(assert (= bs!468484 d!714961))

(declare-fun m!2861039 () Bool)

(assert (=> bs!468484 m!2861039))

(assert (=> b!2496367 d!714961))

(declare-fun e!1584186 () Bool)

(assert (=> b!2496355 (= tp!799553 e!1584186)))

(declare-fun b!2496766 () Bool)

(declare-fun tp!799589 () Bool)

(assert (=> b!2496766 (= e!1584186 tp!799589)))

(declare-fun b!2496764 () Bool)

(assert (=> b!2496764 (= e!1584186 tp_is_empty!12619)))

(declare-fun b!2496765 () Bool)

(declare-fun tp!799586 () Bool)

(declare-fun tp!799587 () Bool)

(assert (=> b!2496765 (= e!1584186 (and tp!799586 tp!799587))))

(declare-fun b!2496767 () Bool)

(declare-fun tp!799588 () Bool)

(declare-fun tp!799585 () Bool)

(assert (=> b!2496767 (= e!1584186 (and tp!799588 tp!799585))))

(assert (= (and b!2496355 (is-ElementMatch!7382 (reg!7711 r!27340))) b!2496764))

(assert (= (and b!2496355 (is-Concat!12078 (reg!7711 r!27340))) b!2496765))

(assert (= (and b!2496355 (is-Star!7382 (reg!7711 r!27340))) b!2496766))

(assert (= (and b!2496355 (is-Union!7382 (reg!7711 r!27340))) b!2496767))

(declare-fun e!1584187 () Bool)

(assert (=> b!2496365 (= tp!799551 e!1584187)))

(declare-fun b!2496770 () Bool)

(declare-fun tp!799594 () Bool)

(assert (=> b!2496770 (= e!1584187 tp!799594)))

(declare-fun b!2496768 () Bool)

(assert (=> b!2496768 (= e!1584187 tp_is_empty!12619)))

(declare-fun b!2496769 () Bool)

(declare-fun tp!799591 () Bool)

(declare-fun tp!799592 () Bool)

(assert (=> b!2496769 (= e!1584187 (and tp!799591 tp!799592))))

(declare-fun b!2496771 () Bool)

(declare-fun tp!799593 () Bool)

(declare-fun tp!799590 () Bool)

(assert (=> b!2496771 (= e!1584187 (and tp!799593 tp!799590))))

(assert (= (and b!2496365 (is-ElementMatch!7382 (regOne!15277 r!27340))) b!2496768))

(assert (= (and b!2496365 (is-Concat!12078 (regOne!15277 r!27340))) b!2496769))

(assert (= (and b!2496365 (is-Star!7382 (regOne!15277 r!27340))) b!2496770))

(assert (= (and b!2496365 (is-Union!7382 (regOne!15277 r!27340))) b!2496771))

(declare-fun e!1584188 () Bool)

(assert (=> b!2496365 (= tp!799556 e!1584188)))

(declare-fun b!2496774 () Bool)

(declare-fun tp!799599 () Bool)

(assert (=> b!2496774 (= e!1584188 tp!799599)))

(declare-fun b!2496772 () Bool)

(assert (=> b!2496772 (= e!1584188 tp_is_empty!12619)))

(declare-fun b!2496773 () Bool)

(declare-fun tp!799596 () Bool)

(declare-fun tp!799597 () Bool)

(assert (=> b!2496773 (= e!1584188 (and tp!799596 tp!799597))))

(declare-fun b!2496775 () Bool)

(declare-fun tp!799598 () Bool)

(declare-fun tp!799595 () Bool)

(assert (=> b!2496775 (= e!1584188 (and tp!799598 tp!799595))))

(assert (= (and b!2496365 (is-ElementMatch!7382 (regTwo!15277 r!27340))) b!2496772))

(assert (= (and b!2496365 (is-Concat!12078 (regTwo!15277 r!27340))) b!2496773))

(assert (= (and b!2496365 (is-Star!7382 (regTwo!15277 r!27340))) b!2496774))

(assert (= (and b!2496365 (is-Union!7382 (regTwo!15277 r!27340))) b!2496775))

(declare-fun b!2496780 () Bool)

(declare-fun e!1584191 () Bool)

(declare-fun tp!799602 () Bool)

(assert (=> b!2496780 (= e!1584191 (and tp_is_empty!12619 tp!799602))))

(assert (=> b!2496359 (= tp!799552 e!1584191)))

(assert (= (and b!2496359 (is-Cons!29347 (t!211146 tl!4068))) b!2496780))

(declare-fun e!1584192 () Bool)

(assert (=> b!2496362 (= tp!799554 e!1584192)))

(declare-fun b!2496783 () Bool)

(declare-fun tp!799607 () Bool)

(assert (=> b!2496783 (= e!1584192 tp!799607)))

(declare-fun b!2496781 () Bool)

(assert (=> b!2496781 (= e!1584192 tp_is_empty!12619)))

(declare-fun b!2496782 () Bool)

(declare-fun tp!799604 () Bool)

(declare-fun tp!799605 () Bool)

(assert (=> b!2496782 (= e!1584192 (and tp!799604 tp!799605))))

(declare-fun b!2496784 () Bool)

(declare-fun tp!799606 () Bool)

(declare-fun tp!799603 () Bool)

(assert (=> b!2496784 (= e!1584192 (and tp!799606 tp!799603))))

(assert (= (and b!2496362 (is-ElementMatch!7382 (regOne!15276 r!27340))) b!2496781))

(assert (= (and b!2496362 (is-Concat!12078 (regOne!15276 r!27340))) b!2496782))

(assert (= (and b!2496362 (is-Star!7382 (regOne!15276 r!27340))) b!2496783))

(assert (= (and b!2496362 (is-Union!7382 (regOne!15276 r!27340))) b!2496784))

(declare-fun e!1584193 () Bool)

(assert (=> b!2496362 (= tp!799555 e!1584193)))

(declare-fun b!2496787 () Bool)

(declare-fun tp!799612 () Bool)

(assert (=> b!2496787 (= e!1584193 tp!799612)))

(declare-fun b!2496785 () Bool)

(assert (=> b!2496785 (= e!1584193 tp_is_empty!12619)))

(declare-fun b!2496786 () Bool)

(declare-fun tp!799609 () Bool)

(declare-fun tp!799610 () Bool)

(assert (=> b!2496786 (= e!1584193 (and tp!799609 tp!799610))))

(declare-fun b!2496788 () Bool)

(declare-fun tp!799611 () Bool)

(declare-fun tp!799608 () Bool)

(assert (=> b!2496788 (= e!1584193 (and tp!799611 tp!799608))))

(assert (= (and b!2496362 (is-ElementMatch!7382 (regTwo!15276 r!27340))) b!2496785))

(assert (= (and b!2496362 (is-Concat!12078 (regTwo!15276 r!27340))) b!2496786))

(assert (= (and b!2496362 (is-Star!7382 (regTwo!15276 r!27340))) b!2496787))

(assert (= (and b!2496362 (is-Union!7382 (regTwo!15276 r!27340))) b!2496788))

(push 1)

(assert (not b!2496643))

(assert (not d!714925))

(assert (not b!2496594))

(assert (not d!714961))

(assert (not b!2496767))

(assert (not b!2496607))

(assert (not b!2496787))

(assert (not b!2496783))

(assert (not b!2496774))

(assert (not b!2496593))

(assert (not b!2496780))

(assert (not b!2496584))

(assert (not bm!153907))

(assert (not b!2496591))

(assert (not d!714927))

(assert (not bm!153883))

(assert (not b!2496748))

(assert (not d!714931))

(assert (not b!2496752))

(assert (not b!2496588))

(assert (not bm!153868))

(assert tp_is_empty!12619)

(assert (not b!2496786))

(assert (not d!714929))

(assert (not d!714923))

(assert (not bm!153902))

(assert (not b!2496605))

(assert (not b!2496525))

(assert (not b!2496765))

(assert (not b!2496693))

(assert (not d!714917))

(assert (not bm!153898))

(assert (not b!2496750))

(assert (not d!714921))

(assert (not bm!153903))

(assert (not b!2496447))

(assert (not b!2496769))

(assert (not b!2496770))

(assert (not d!714945))

(assert (not b!2496692))

(assert (not b!2496782))

(assert (not b!2496751))

(assert (not b!2496641))

(assert (not b!2496608))

(assert (not b!2496766))

(assert (not b!2496788))

(assert (not d!714905))

(assert (not b!2496771))

(assert (not b!2496598))

(assert (not b!2496784))

(assert (not b!2496516))

(assert (not b!2496773))

(assert (not b!2496586))

(assert (not bm!153870))

(assert (not b!2496602))

(assert (not bm!153899))

(assert (not d!714939))

(assert (not bm!153896))

(assert (not b!2496747))

(assert (not d!714933))

(assert (not b!2496526))

(assert (not b!2496775))

(assert (not d!714901))

(assert (not b!2496745))

(assert (not b!2496520))

(assert (not b!2496566))

(assert (not b!2496523))

(assert (not b!2496518))

(assert (not bm!153909))

(assert (not b!2496667))

(assert (not b!2496600))

(assert (not b!2496575))

(assert (not d!714919))

(assert (not bm!153901))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

