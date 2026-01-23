; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!744274 () Bool)

(assert start!744274)

(declare-fun b!7880492 () Bool)

(declare-fun e!4653842 () Bool)

(declare-fun tp!2341668 () Bool)

(declare-fun tp!2341666 () Bool)

(assert (=> b!7880492 (= e!4653842 (and tp!2341668 tp!2341666))))

(declare-fun res!3129679 () Bool)

(declare-fun e!4653843 () Bool)

(assert (=> start!744274 (=> (not res!3129679) (not e!4653843))))

(declare-datatypes ((C!42700 0))(
  ( (C!42701 (val!31812 Int)) )
))
(declare-datatypes ((Regex!21187 0))(
  ( (ElementMatch!21187 (c!1447137 C!42700)) (Concat!30032 (regOne!42886 Regex!21187) (regTwo!42886 Regex!21187)) (EmptyExpr!21187) (Star!21187 (reg!21516 Regex!21187)) (EmptyLang!21187) (Union!21187 (regOne!42887 Regex!21187) (regTwo!42887 Regex!21187)) )
))
(declare-fun r1!6212 () Regex!21187)

(declare-fun validRegex!11597 (Regex!21187) Bool)

(assert (=> start!744274 (= res!3129679 (validRegex!11597 r1!6212))))

(assert (=> start!744274 e!4653843))

(declare-fun e!4653840 () Bool)

(assert (=> start!744274 e!4653840))

(assert (=> start!744274 e!4653842))

(declare-fun e!4653841 () Bool)

(assert (=> start!744274 e!4653841))

(declare-fun b!7880493 () Bool)

(declare-fun tp!2341671 () Bool)

(assert (=> b!7880493 (= e!4653842 tp!2341671)))

(declare-fun b!7880494 () Bool)

(declare-fun tp_is_empty!52773 () Bool)

(assert (=> b!7880494 (= e!4653842 tp_is_empty!52773)))

(declare-fun b!7880495 () Bool)

(declare-fun res!3129677 () Bool)

(assert (=> b!7880495 (=> (not res!3129677) (not e!4653843))))

(declare-fun r2!6150 () Regex!21187)

(declare-datatypes ((List!74046 0))(
  ( (Nil!73922) (Cons!73922 (h!80370 C!42700) (t!388781 List!74046)) )
))
(declare-fun s!14231 () List!74046)

(declare-fun matchR!10623 (Regex!21187 List!74046) Bool)

(assert (=> b!7880495 (= res!3129677 (matchR!10623 (Union!21187 r1!6212 r2!6150) s!14231))))

(declare-fun b!7880496 () Bool)

(declare-fun tp!2341675 () Bool)

(declare-fun tp!2341676 () Bool)

(assert (=> b!7880496 (= e!4653840 (and tp!2341675 tp!2341676))))

(declare-fun b!7880497 () Bool)

(declare-fun res!3129678 () Bool)

(assert (=> b!7880497 (=> (not res!3129678) (not e!4653843))))

(assert (=> b!7880497 (= res!3129678 (validRegex!11597 r2!6150))))

(declare-fun b!7880498 () Bool)

(declare-fun tp!2341672 () Bool)

(declare-fun tp!2341673 () Bool)

(assert (=> b!7880498 (= e!4653842 (and tp!2341672 tp!2341673))))

(declare-fun b!7880499 () Bool)

(declare-fun tp!2341670 () Bool)

(assert (=> b!7880499 (= e!4653840 tp!2341670)))

(declare-fun b!7880500 () Bool)

(declare-fun tp!2341669 () Bool)

(assert (=> b!7880500 (= e!4653841 (and tp_is_empty!52773 tp!2341669))))

(declare-fun b!7880501 () Bool)

(assert (=> b!7880501 (= e!4653840 tp_is_empty!52773)))

(declare-fun b!7880502 () Bool)

(declare-fun tp!2341674 () Bool)

(declare-fun tp!2341667 () Bool)

(assert (=> b!7880502 (= e!4653840 (and tp!2341674 tp!2341667))))

(declare-fun b!7880503 () Bool)

(declare-fun res!3129680 () Bool)

(assert (=> b!7880503 (=> (not res!3129680) (not e!4653843))))

(get-info :version)

(assert (=> b!7880503 (= res!3129680 ((_ is Cons!73922) s!14231))))

(declare-fun b!7880504 () Bool)

(assert (=> b!7880504 (= e!4653843 (not (matchR!10623 (Union!21187 r2!6150 r1!6212) s!14231)))))

(declare-fun lt!2681258 () Regex!21187)

(declare-fun lt!2681259 () Regex!21187)

(assert (=> b!7880504 (matchR!10623 (Union!21187 lt!2681258 lt!2681259) (t!388781 s!14231))))

(declare-datatypes ((Unit!168996 0))(
  ( (Unit!168997) )
))
(declare-fun lt!2681257 () Unit!168996)

(declare-fun lemmaReversedUnionAcceptsSameString!56 (Regex!21187 Regex!21187 List!74046) Unit!168996)

(assert (=> b!7880504 (= lt!2681257 (lemmaReversedUnionAcceptsSameString!56 lt!2681259 lt!2681258 (t!388781 s!14231)))))

(declare-fun derivativeStep!6416 (Regex!21187 C!42700) Regex!21187)

(assert (=> b!7880504 (= lt!2681258 (derivativeStep!6416 r2!6150 (h!80370 s!14231)))))

(assert (=> b!7880504 (= lt!2681259 (derivativeStep!6416 r1!6212 (h!80370 s!14231)))))

(assert (= (and start!744274 res!3129679) b!7880497))

(assert (= (and b!7880497 res!3129678) b!7880495))

(assert (= (and b!7880495 res!3129677) b!7880503))

(assert (= (and b!7880503 res!3129680) b!7880504))

(assert (= (and start!744274 ((_ is ElementMatch!21187) r1!6212)) b!7880501))

(assert (= (and start!744274 ((_ is Concat!30032) r1!6212)) b!7880502))

(assert (= (and start!744274 ((_ is Star!21187) r1!6212)) b!7880499))

(assert (= (and start!744274 ((_ is Union!21187) r1!6212)) b!7880496))

(assert (= (and start!744274 ((_ is ElementMatch!21187) r2!6150)) b!7880494))

(assert (= (and start!744274 ((_ is Concat!30032) r2!6150)) b!7880498))

(assert (= (and start!744274 ((_ is Star!21187) r2!6150)) b!7880493))

(assert (= (and start!744274 ((_ is Union!21187) r2!6150)) b!7880492))

(assert (= (and start!744274 ((_ is Cons!73922) s!14231)) b!7880500))

(declare-fun m!8267816 () Bool)

(assert (=> start!744274 m!8267816))

(declare-fun m!8267818 () Bool)

(assert (=> b!7880495 m!8267818))

(declare-fun m!8267820 () Bool)

(assert (=> b!7880497 m!8267820))

(declare-fun m!8267822 () Bool)

(assert (=> b!7880504 m!8267822))

(declare-fun m!8267824 () Bool)

(assert (=> b!7880504 m!8267824))

(declare-fun m!8267826 () Bool)

(assert (=> b!7880504 m!8267826))

(declare-fun m!8267828 () Bool)

(assert (=> b!7880504 m!8267828))

(declare-fun m!8267830 () Bool)

(assert (=> b!7880504 m!8267830))

(check-sat (not b!7880502) (not b!7880496) (not b!7880504) (not b!7880499) (not b!7880497) tp_is_empty!52773 (not b!7880492) (not start!744274) (not b!7880493) (not b!7880498) (not b!7880495) (not b!7880500))
(check-sat)
(get-model)

(declare-fun bm!730956 () Bool)

(declare-fun call!730961 () Bool)

(declare-fun isEmpty!42413 (List!74046) Bool)

(assert (=> bm!730956 (= call!730961 (isEmpty!42413 s!14231))))

(declare-fun b!7880533 () Bool)

(declare-fun e!4653861 () Bool)

(declare-fun head!16124 (List!74046) C!42700)

(declare-fun tail!15667 (List!74046) List!74046)

(assert (=> b!7880533 (= e!4653861 (matchR!10623 (derivativeStep!6416 (Union!21187 r1!6212 r2!6150) (head!16124 s!14231)) (tail!15667 s!14231)))))

(declare-fun b!7880534 () Bool)

(declare-fun e!4653858 () Bool)

(declare-fun e!4653860 () Bool)

(assert (=> b!7880534 (= e!4653858 e!4653860)))

(declare-fun res!3129701 () Bool)

(assert (=> b!7880534 (=> res!3129701 e!4653860)))

(assert (=> b!7880534 (= res!3129701 call!730961)))

(declare-fun b!7880535 () Bool)

(declare-fun res!3129698 () Bool)

(declare-fun e!4653862 () Bool)

(assert (=> b!7880535 (=> res!3129698 e!4653862)))

(declare-fun e!4653863 () Bool)

(assert (=> b!7880535 (= res!3129698 e!4653863)))

(declare-fun res!3129700 () Bool)

(assert (=> b!7880535 (=> (not res!3129700) (not e!4653863))))

(declare-fun lt!2681262 () Bool)

(assert (=> b!7880535 (= res!3129700 lt!2681262)))

(declare-fun d!2356012 () Bool)

(declare-fun e!4653859 () Bool)

(assert (=> d!2356012 e!4653859))

(declare-fun c!1447145 () Bool)

(assert (=> d!2356012 (= c!1447145 ((_ is EmptyExpr!21187) (Union!21187 r1!6212 r2!6150)))))

(assert (=> d!2356012 (= lt!2681262 e!4653861)))

(declare-fun c!1447144 () Bool)

(assert (=> d!2356012 (= c!1447144 (isEmpty!42413 s!14231))))

(assert (=> d!2356012 (validRegex!11597 (Union!21187 r1!6212 r2!6150))))

(assert (=> d!2356012 (= (matchR!10623 (Union!21187 r1!6212 r2!6150) s!14231) lt!2681262)))

(declare-fun b!7880536 () Bool)

(declare-fun res!3129699 () Bool)

(assert (=> b!7880536 (=> (not res!3129699) (not e!4653863))))

(assert (=> b!7880536 (= res!3129699 (not call!730961))))

(declare-fun b!7880537 () Bool)

(assert (=> b!7880537 (= e!4653860 (not (= (head!16124 s!14231) (c!1447137 (Union!21187 r1!6212 r2!6150)))))))

(declare-fun b!7880538 () Bool)

(assert (=> b!7880538 (= e!4653863 (= (head!16124 s!14231) (c!1447137 (Union!21187 r1!6212 r2!6150))))))

(declare-fun b!7880539 () Bool)

(declare-fun e!4653864 () Bool)

(assert (=> b!7880539 (= e!4653859 e!4653864)))

(declare-fun c!1447146 () Bool)

(assert (=> b!7880539 (= c!1447146 ((_ is EmptyLang!21187) (Union!21187 r1!6212 r2!6150)))))

(declare-fun b!7880540 () Bool)

(assert (=> b!7880540 (= e!4653859 (= lt!2681262 call!730961))))

(declare-fun b!7880541 () Bool)

(assert (=> b!7880541 (= e!4653864 (not lt!2681262))))

(declare-fun b!7880542 () Bool)

(declare-fun res!3129702 () Bool)

(assert (=> b!7880542 (=> (not res!3129702) (not e!4653863))))

(assert (=> b!7880542 (= res!3129702 (isEmpty!42413 (tail!15667 s!14231)))))

(declare-fun b!7880543 () Bool)

(declare-fun res!3129704 () Bool)

(assert (=> b!7880543 (=> res!3129704 e!4653862)))

(assert (=> b!7880543 (= res!3129704 (not ((_ is ElementMatch!21187) (Union!21187 r1!6212 r2!6150))))))

(assert (=> b!7880543 (= e!4653864 e!4653862)))

(declare-fun b!7880544 () Bool)

(assert (=> b!7880544 (= e!4653862 e!4653858)))

(declare-fun res!3129703 () Bool)

(assert (=> b!7880544 (=> (not res!3129703) (not e!4653858))))

(assert (=> b!7880544 (= res!3129703 (not lt!2681262))))

(declare-fun b!7880545 () Bool)

(declare-fun nullable!9446 (Regex!21187) Bool)

(assert (=> b!7880545 (= e!4653861 (nullable!9446 (Union!21187 r1!6212 r2!6150)))))

(declare-fun b!7880546 () Bool)

(declare-fun res!3129697 () Bool)

(assert (=> b!7880546 (=> res!3129697 e!4653860)))

(assert (=> b!7880546 (= res!3129697 (not (isEmpty!42413 (tail!15667 s!14231))))))

(assert (= (and d!2356012 c!1447144) b!7880545))

(assert (= (and d!2356012 (not c!1447144)) b!7880533))

(assert (= (and d!2356012 c!1447145) b!7880540))

(assert (= (and d!2356012 (not c!1447145)) b!7880539))

(assert (= (and b!7880539 c!1447146) b!7880541))

(assert (= (and b!7880539 (not c!1447146)) b!7880543))

(assert (= (and b!7880543 (not res!3129704)) b!7880535))

(assert (= (and b!7880535 res!3129700) b!7880536))

(assert (= (and b!7880536 res!3129699) b!7880542))

(assert (= (and b!7880542 res!3129702) b!7880538))

(assert (= (and b!7880535 (not res!3129698)) b!7880544))

(assert (= (and b!7880544 res!3129703) b!7880534))

(assert (= (and b!7880534 (not res!3129701)) b!7880546))

(assert (= (and b!7880546 (not res!3129697)) b!7880537))

(assert (= (or b!7880540 b!7880534 b!7880536) bm!730956))

(declare-fun m!8267832 () Bool)

(assert (=> d!2356012 m!8267832))

(declare-fun m!8267834 () Bool)

(assert (=> d!2356012 m!8267834))

(declare-fun m!8267836 () Bool)

(assert (=> b!7880545 m!8267836))

(declare-fun m!8267838 () Bool)

(assert (=> b!7880538 m!8267838))

(assert (=> b!7880533 m!8267838))

(assert (=> b!7880533 m!8267838))

(declare-fun m!8267840 () Bool)

(assert (=> b!7880533 m!8267840))

(declare-fun m!8267842 () Bool)

(assert (=> b!7880533 m!8267842))

(assert (=> b!7880533 m!8267840))

(assert (=> b!7880533 m!8267842))

(declare-fun m!8267844 () Bool)

(assert (=> b!7880533 m!8267844))

(assert (=> b!7880546 m!8267842))

(assert (=> b!7880546 m!8267842))

(declare-fun m!8267846 () Bool)

(assert (=> b!7880546 m!8267846))

(assert (=> b!7880537 m!8267838))

(assert (=> b!7880542 m!8267842))

(assert (=> b!7880542 m!8267842))

(assert (=> b!7880542 m!8267846))

(assert (=> bm!730956 m!8267832))

(assert (=> b!7880495 d!2356012))

(declare-fun bm!730963 () Bool)

(declare-fun call!730970 () Bool)

(declare-fun c!1447158 () Bool)

(assert (=> bm!730963 (= call!730970 (validRegex!11597 (ite c!1447158 (regTwo!42887 r2!6150) (regOne!42886 r2!6150))))))

(declare-fun bm!730964 () Bool)

(declare-fun call!730968 () Bool)

(declare-fun call!730969 () Bool)

(assert (=> bm!730964 (= call!730968 call!730969)))

(declare-fun c!1447157 () Bool)

(declare-fun bm!730965 () Bool)

(assert (=> bm!730965 (= call!730969 (validRegex!11597 (ite c!1447157 (reg!21516 r2!6150) (ite c!1447158 (regOne!42887 r2!6150) (regTwo!42886 r2!6150)))))))

(declare-fun b!7880591 () Bool)

(declare-fun res!3129733 () Bool)

(declare-fun e!4653896 () Bool)

(assert (=> b!7880591 (=> res!3129733 e!4653896)))

(assert (=> b!7880591 (= res!3129733 (not ((_ is Concat!30032) r2!6150)))))

(declare-fun e!4653891 () Bool)

(assert (=> b!7880591 (= e!4653891 e!4653896)))

(declare-fun b!7880592 () Bool)

(declare-fun res!3129731 () Bool)

(declare-fun e!4653899 () Bool)

(assert (=> b!7880592 (=> (not res!3129731) (not e!4653899))))

(assert (=> b!7880592 (= res!3129731 call!730968)))

(assert (=> b!7880592 (= e!4653891 e!4653899)))

(declare-fun b!7880593 () Bool)

(declare-fun e!4653897 () Bool)

(assert (=> b!7880593 (= e!4653897 call!730968)))

(declare-fun b!7880594 () Bool)

(declare-fun e!4653895 () Bool)

(assert (=> b!7880594 (= e!4653895 e!4653891)))

(assert (=> b!7880594 (= c!1447158 ((_ is Union!21187) r2!6150))))

(declare-fun b!7880595 () Bool)

(assert (=> b!7880595 (= e!4653896 e!4653897)))

(declare-fun res!3129732 () Bool)

(assert (=> b!7880595 (=> (not res!3129732) (not e!4653897))))

(assert (=> b!7880595 (= res!3129732 call!730970)))

(declare-fun d!2356016 () Bool)

(declare-fun res!3129730 () Bool)

(declare-fun e!4653894 () Bool)

(assert (=> d!2356016 (=> res!3129730 e!4653894)))

(assert (=> d!2356016 (= res!3129730 ((_ is ElementMatch!21187) r2!6150))))

(assert (=> d!2356016 (= (validRegex!11597 r2!6150) e!4653894)))

(declare-fun b!7880596 () Bool)

(declare-fun e!4653898 () Bool)

(assert (=> b!7880596 (= e!4653895 e!4653898)))

(declare-fun res!3129729 () Bool)

(assert (=> b!7880596 (= res!3129729 (not (nullable!9446 (reg!21516 r2!6150))))))

(assert (=> b!7880596 (=> (not res!3129729) (not e!4653898))))

(declare-fun b!7880597 () Bool)

(assert (=> b!7880597 (= e!4653898 call!730969)))

(declare-fun b!7880598 () Bool)

(assert (=> b!7880598 (= e!4653899 call!730970)))

(declare-fun b!7880599 () Bool)

(assert (=> b!7880599 (= e!4653894 e!4653895)))

(assert (=> b!7880599 (= c!1447157 ((_ is Star!21187) r2!6150))))

(assert (= (and d!2356016 (not res!3129730)) b!7880599))

(assert (= (and b!7880599 c!1447157) b!7880596))

(assert (= (and b!7880599 (not c!1447157)) b!7880594))

(assert (= (and b!7880596 res!3129729) b!7880597))

(assert (= (and b!7880594 c!1447158) b!7880592))

(assert (= (and b!7880594 (not c!1447158)) b!7880591))

(assert (= (and b!7880592 res!3129731) b!7880598))

(assert (= (and b!7880591 (not res!3129733)) b!7880595))

(assert (= (and b!7880595 res!3129732) b!7880593))

(assert (= (or b!7880598 b!7880595) bm!730963))

(assert (= (or b!7880592 b!7880593) bm!730964))

(assert (= (or b!7880597 bm!730964) bm!730965))

(declare-fun m!8267848 () Bool)

(assert (=> bm!730963 m!8267848))

(declare-fun m!8267850 () Bool)

(assert (=> bm!730965 m!8267850))

(declare-fun m!8267852 () Bool)

(assert (=> b!7880596 m!8267852))

(assert (=> b!7880497 d!2356016))

(declare-fun bm!730966 () Bool)

(declare-fun call!730973 () Bool)

(declare-fun c!1447160 () Bool)

(assert (=> bm!730966 (= call!730973 (validRegex!11597 (ite c!1447160 (regTwo!42887 r1!6212) (regOne!42886 r1!6212))))))

(declare-fun bm!730967 () Bool)

(declare-fun call!730971 () Bool)

(declare-fun call!730972 () Bool)

(assert (=> bm!730967 (= call!730971 call!730972)))

(declare-fun c!1447159 () Bool)

(declare-fun bm!730968 () Bool)

(assert (=> bm!730968 (= call!730972 (validRegex!11597 (ite c!1447159 (reg!21516 r1!6212) (ite c!1447160 (regOne!42887 r1!6212) (regTwo!42886 r1!6212)))))))

(declare-fun b!7880602 () Bool)

(declare-fun res!3129740 () Bool)

(declare-fun e!4653903 () Bool)

(assert (=> b!7880602 (=> res!3129740 e!4653903)))

(assert (=> b!7880602 (= res!3129740 (not ((_ is Concat!30032) r1!6212)))))

(declare-fun e!4653900 () Bool)

(assert (=> b!7880602 (= e!4653900 e!4653903)))

(declare-fun b!7880603 () Bool)

(declare-fun res!3129738 () Bool)

(declare-fun e!4653906 () Bool)

(assert (=> b!7880603 (=> (not res!3129738) (not e!4653906))))

(assert (=> b!7880603 (= res!3129738 call!730971)))

(assert (=> b!7880603 (= e!4653900 e!4653906)))

(declare-fun b!7880604 () Bool)

(declare-fun e!4653904 () Bool)

(assert (=> b!7880604 (= e!4653904 call!730971)))

(declare-fun b!7880605 () Bool)

(declare-fun e!4653902 () Bool)

(assert (=> b!7880605 (= e!4653902 e!4653900)))

(assert (=> b!7880605 (= c!1447160 ((_ is Union!21187) r1!6212))))

(declare-fun b!7880606 () Bool)

(assert (=> b!7880606 (= e!4653903 e!4653904)))

(declare-fun res!3129739 () Bool)

(assert (=> b!7880606 (=> (not res!3129739) (not e!4653904))))

(assert (=> b!7880606 (= res!3129739 call!730973)))

(declare-fun d!2356018 () Bool)

(declare-fun res!3129737 () Bool)

(declare-fun e!4653901 () Bool)

(assert (=> d!2356018 (=> res!3129737 e!4653901)))

(assert (=> d!2356018 (= res!3129737 ((_ is ElementMatch!21187) r1!6212))))

(assert (=> d!2356018 (= (validRegex!11597 r1!6212) e!4653901)))

(declare-fun b!7880607 () Bool)

(declare-fun e!4653905 () Bool)

(assert (=> b!7880607 (= e!4653902 e!4653905)))

(declare-fun res!3129736 () Bool)

(assert (=> b!7880607 (= res!3129736 (not (nullable!9446 (reg!21516 r1!6212))))))

(assert (=> b!7880607 (=> (not res!3129736) (not e!4653905))))

(declare-fun b!7880608 () Bool)

(assert (=> b!7880608 (= e!4653905 call!730972)))

(declare-fun b!7880609 () Bool)

(assert (=> b!7880609 (= e!4653906 call!730973)))

(declare-fun b!7880610 () Bool)

(assert (=> b!7880610 (= e!4653901 e!4653902)))

(assert (=> b!7880610 (= c!1447159 ((_ is Star!21187) r1!6212))))

(assert (= (and d!2356018 (not res!3129737)) b!7880610))

(assert (= (and b!7880610 c!1447159) b!7880607))

(assert (= (and b!7880610 (not c!1447159)) b!7880605))

(assert (= (and b!7880607 res!3129736) b!7880608))

(assert (= (and b!7880605 c!1447160) b!7880603))

(assert (= (and b!7880605 (not c!1447160)) b!7880602))

(assert (= (and b!7880603 res!3129738) b!7880609))

(assert (= (and b!7880602 (not res!3129740)) b!7880606))

(assert (= (and b!7880606 res!3129739) b!7880604))

(assert (= (or b!7880609 b!7880606) bm!730966))

(assert (= (or b!7880603 b!7880604) bm!730967))

(assert (= (or b!7880608 bm!730967) bm!730968))

(declare-fun m!8267854 () Bool)

(assert (=> bm!730966 m!8267854))

(declare-fun m!8267856 () Bool)

(assert (=> bm!730968 m!8267856))

(declare-fun m!8267858 () Bool)

(assert (=> b!7880607 m!8267858))

(assert (=> start!744274 d!2356018))

(declare-fun b!7880645 () Bool)

(declare-fun e!4653928 () Regex!21187)

(declare-fun call!730987 () Regex!21187)

(declare-fun call!730988 () Regex!21187)

(assert (=> b!7880645 (= e!4653928 (Union!21187 call!730987 call!730988))))

(declare-fun b!7880646 () Bool)

(declare-fun e!4653924 () Regex!21187)

(assert (=> b!7880646 (= e!4653928 e!4653924)))

(declare-fun c!1447177 () Bool)

(assert (=> b!7880646 (= c!1447177 ((_ is Star!21187) r1!6212))))

(declare-fun b!7880647 () Bool)

(declare-fun call!730986 () Regex!21187)

(assert (=> b!7880647 (= e!4653924 (Concat!30032 call!730986 r1!6212))))

(declare-fun bm!730980 () Bool)

(assert (=> bm!730980 (= call!730986 call!730988)))

(declare-fun b!7880649 () Bool)

(declare-fun e!4653926 () Regex!21187)

(assert (=> b!7880649 (= e!4653926 EmptyLang!21187)))

(declare-fun b!7880650 () Bool)

(declare-fun e!4653925 () Regex!21187)

(assert (=> b!7880650 (= e!4653925 (ite (= (h!80370 s!14231) (c!1447137 r1!6212)) EmptyExpr!21187 EmptyLang!21187))))

(declare-fun b!7880651 () Bool)

(declare-fun call!730985 () Regex!21187)

(declare-fun e!4653927 () Regex!21187)

(assert (=> b!7880651 (= e!4653927 (Union!21187 (Concat!30032 call!730985 (regTwo!42886 r1!6212)) call!730987))))

(declare-fun c!1447175 () Bool)

(declare-fun bm!730981 () Bool)

(assert (=> bm!730981 (= call!730988 (derivativeStep!6416 (ite c!1447175 (regTwo!42887 r1!6212) (ite c!1447177 (reg!21516 r1!6212) (regOne!42886 r1!6212))) (h!80370 s!14231)))))

(declare-fun bm!730982 () Bool)

(assert (=> bm!730982 (= call!730985 call!730986)))

(declare-fun b!7880648 () Bool)

(assert (=> b!7880648 (= e!4653927 (Union!21187 (Concat!30032 call!730985 (regTwo!42886 r1!6212)) EmptyLang!21187))))

(declare-fun d!2356020 () Bool)

(declare-fun lt!2681268 () Regex!21187)

(assert (=> d!2356020 (validRegex!11597 lt!2681268)))

(assert (=> d!2356020 (= lt!2681268 e!4653926)))

(declare-fun c!1447176 () Bool)

(assert (=> d!2356020 (= c!1447176 (or ((_ is EmptyExpr!21187) r1!6212) ((_ is EmptyLang!21187) r1!6212)))))

(assert (=> d!2356020 (validRegex!11597 r1!6212)))

(assert (=> d!2356020 (= (derivativeStep!6416 r1!6212 (h!80370 s!14231)) lt!2681268)))

(declare-fun bm!730983 () Bool)

(assert (=> bm!730983 (= call!730987 (derivativeStep!6416 (ite c!1447175 (regOne!42887 r1!6212) (regTwo!42886 r1!6212)) (h!80370 s!14231)))))

(declare-fun b!7880652 () Bool)

(declare-fun c!1447178 () Bool)

(assert (=> b!7880652 (= c!1447178 (nullable!9446 (regOne!42886 r1!6212)))))

(assert (=> b!7880652 (= e!4653924 e!4653927)))

(declare-fun b!7880653 () Bool)

(assert (=> b!7880653 (= c!1447175 ((_ is Union!21187) r1!6212))))

(assert (=> b!7880653 (= e!4653925 e!4653928)))

(declare-fun b!7880654 () Bool)

(assert (=> b!7880654 (= e!4653926 e!4653925)))

(declare-fun c!1447174 () Bool)

(assert (=> b!7880654 (= c!1447174 ((_ is ElementMatch!21187) r1!6212))))

(assert (= (and d!2356020 c!1447176) b!7880649))

(assert (= (and d!2356020 (not c!1447176)) b!7880654))

(assert (= (and b!7880654 c!1447174) b!7880650))

(assert (= (and b!7880654 (not c!1447174)) b!7880653))

(assert (= (and b!7880653 c!1447175) b!7880645))

(assert (= (and b!7880653 (not c!1447175)) b!7880646))

(assert (= (and b!7880646 c!1447177) b!7880647))

(assert (= (and b!7880646 (not c!1447177)) b!7880652))

(assert (= (and b!7880652 c!1447178) b!7880651))

(assert (= (and b!7880652 (not c!1447178)) b!7880648))

(assert (= (or b!7880651 b!7880648) bm!730982))

(assert (= (or b!7880647 bm!730982) bm!730980))

(assert (= (or b!7880645 bm!730980) bm!730981))

(assert (= (or b!7880645 b!7880651) bm!730983))

(declare-fun m!8267860 () Bool)

(assert (=> bm!730981 m!8267860))

(declare-fun m!8267862 () Bool)

(assert (=> d!2356020 m!8267862))

(assert (=> d!2356020 m!8267816))

(declare-fun m!8267864 () Bool)

(assert (=> bm!730983 m!8267864))

(declare-fun m!8267866 () Bool)

(assert (=> b!7880652 m!8267866))

(assert (=> b!7880504 d!2356020))

(declare-fun d!2356022 () Bool)

(assert (=> d!2356022 (matchR!10623 (Union!21187 lt!2681258 lt!2681259) (t!388781 s!14231))))

(declare-fun lt!2681271 () Unit!168996)

(declare-fun choose!59695 (Regex!21187 Regex!21187 List!74046) Unit!168996)

(assert (=> d!2356022 (= lt!2681271 (choose!59695 lt!2681259 lt!2681258 (t!388781 s!14231)))))

(declare-fun e!4653931 () Bool)

(assert (=> d!2356022 e!4653931))

(declare-fun res!3129751 () Bool)

(assert (=> d!2356022 (=> (not res!3129751) (not e!4653931))))

(assert (=> d!2356022 (= res!3129751 (validRegex!11597 lt!2681259))))

(assert (=> d!2356022 (= (lemmaReversedUnionAcceptsSameString!56 lt!2681259 lt!2681258 (t!388781 s!14231)) lt!2681271)))

(declare-fun b!7880657 () Bool)

(assert (=> b!7880657 (= e!4653931 (validRegex!11597 lt!2681258))))

(assert (= (and d!2356022 res!3129751) b!7880657))

(assert (=> d!2356022 m!8267824))

(declare-fun m!8267884 () Bool)

(assert (=> d!2356022 m!8267884))

(declare-fun m!8267886 () Bool)

(assert (=> d!2356022 m!8267886))

(declare-fun m!8267888 () Bool)

(assert (=> b!7880657 m!8267888))

(assert (=> b!7880504 d!2356022))

(declare-fun bm!730984 () Bool)

(declare-fun call!730989 () Bool)

(assert (=> bm!730984 (= call!730989 (isEmpty!42413 s!14231))))

(declare-fun e!4653935 () Bool)

(declare-fun b!7880658 () Bool)

(assert (=> b!7880658 (= e!4653935 (matchR!10623 (derivativeStep!6416 (Union!21187 r2!6150 r1!6212) (head!16124 s!14231)) (tail!15667 s!14231)))))

(declare-fun b!7880659 () Bool)

(declare-fun e!4653932 () Bool)

(declare-fun e!4653934 () Bool)

(assert (=> b!7880659 (= e!4653932 e!4653934)))

(declare-fun res!3129756 () Bool)

(assert (=> b!7880659 (=> res!3129756 e!4653934)))

(assert (=> b!7880659 (= res!3129756 call!730989)))

(declare-fun b!7880660 () Bool)

(declare-fun res!3129753 () Bool)

(declare-fun e!4653936 () Bool)

(assert (=> b!7880660 (=> res!3129753 e!4653936)))

(declare-fun e!4653937 () Bool)

(assert (=> b!7880660 (= res!3129753 e!4653937)))

(declare-fun res!3129755 () Bool)

(assert (=> b!7880660 (=> (not res!3129755) (not e!4653937))))

(declare-fun lt!2681272 () Bool)

(assert (=> b!7880660 (= res!3129755 lt!2681272)))

(declare-fun d!2356026 () Bool)

(declare-fun e!4653933 () Bool)

(assert (=> d!2356026 e!4653933))

(declare-fun c!1447180 () Bool)

(assert (=> d!2356026 (= c!1447180 ((_ is EmptyExpr!21187) (Union!21187 r2!6150 r1!6212)))))

(assert (=> d!2356026 (= lt!2681272 e!4653935)))

(declare-fun c!1447179 () Bool)

(assert (=> d!2356026 (= c!1447179 (isEmpty!42413 s!14231))))

(assert (=> d!2356026 (validRegex!11597 (Union!21187 r2!6150 r1!6212))))

(assert (=> d!2356026 (= (matchR!10623 (Union!21187 r2!6150 r1!6212) s!14231) lt!2681272)))

(declare-fun b!7880661 () Bool)

(declare-fun res!3129754 () Bool)

(assert (=> b!7880661 (=> (not res!3129754) (not e!4653937))))

(assert (=> b!7880661 (= res!3129754 (not call!730989))))

(declare-fun b!7880662 () Bool)

(assert (=> b!7880662 (= e!4653934 (not (= (head!16124 s!14231) (c!1447137 (Union!21187 r2!6150 r1!6212)))))))

(declare-fun b!7880663 () Bool)

(assert (=> b!7880663 (= e!4653937 (= (head!16124 s!14231) (c!1447137 (Union!21187 r2!6150 r1!6212))))))

(declare-fun b!7880664 () Bool)

(declare-fun e!4653938 () Bool)

(assert (=> b!7880664 (= e!4653933 e!4653938)))

(declare-fun c!1447181 () Bool)

(assert (=> b!7880664 (= c!1447181 ((_ is EmptyLang!21187) (Union!21187 r2!6150 r1!6212)))))

(declare-fun b!7880665 () Bool)

(assert (=> b!7880665 (= e!4653933 (= lt!2681272 call!730989))))

(declare-fun b!7880666 () Bool)

(assert (=> b!7880666 (= e!4653938 (not lt!2681272))))

(declare-fun b!7880667 () Bool)

(declare-fun res!3129757 () Bool)

(assert (=> b!7880667 (=> (not res!3129757) (not e!4653937))))

(assert (=> b!7880667 (= res!3129757 (isEmpty!42413 (tail!15667 s!14231)))))

(declare-fun b!7880668 () Bool)

(declare-fun res!3129759 () Bool)

(assert (=> b!7880668 (=> res!3129759 e!4653936)))

(assert (=> b!7880668 (= res!3129759 (not ((_ is ElementMatch!21187) (Union!21187 r2!6150 r1!6212))))))

(assert (=> b!7880668 (= e!4653938 e!4653936)))

(declare-fun b!7880669 () Bool)

(assert (=> b!7880669 (= e!4653936 e!4653932)))

(declare-fun res!3129758 () Bool)

(assert (=> b!7880669 (=> (not res!3129758) (not e!4653932))))

(assert (=> b!7880669 (= res!3129758 (not lt!2681272))))

(declare-fun b!7880670 () Bool)

(assert (=> b!7880670 (= e!4653935 (nullable!9446 (Union!21187 r2!6150 r1!6212)))))

(declare-fun b!7880671 () Bool)

(declare-fun res!3129752 () Bool)

(assert (=> b!7880671 (=> res!3129752 e!4653934)))

(assert (=> b!7880671 (= res!3129752 (not (isEmpty!42413 (tail!15667 s!14231))))))

(assert (= (and d!2356026 c!1447179) b!7880670))

(assert (= (and d!2356026 (not c!1447179)) b!7880658))

(assert (= (and d!2356026 c!1447180) b!7880665))

(assert (= (and d!2356026 (not c!1447180)) b!7880664))

(assert (= (and b!7880664 c!1447181) b!7880666))

(assert (= (and b!7880664 (not c!1447181)) b!7880668))

(assert (= (and b!7880668 (not res!3129759)) b!7880660))

(assert (= (and b!7880660 res!3129755) b!7880661))

(assert (= (and b!7880661 res!3129754) b!7880667))

(assert (= (and b!7880667 res!3129757) b!7880663))

(assert (= (and b!7880660 (not res!3129753)) b!7880669))

(assert (= (and b!7880669 res!3129758) b!7880659))

(assert (= (and b!7880659 (not res!3129756)) b!7880671))

(assert (= (and b!7880671 (not res!3129752)) b!7880662))

(assert (= (or b!7880665 b!7880659 b!7880661) bm!730984))

(assert (=> d!2356026 m!8267832))

(declare-fun m!8267890 () Bool)

(assert (=> d!2356026 m!8267890))

(declare-fun m!8267892 () Bool)

(assert (=> b!7880670 m!8267892))

(assert (=> b!7880663 m!8267838))

(assert (=> b!7880658 m!8267838))

(assert (=> b!7880658 m!8267838))

(declare-fun m!8267894 () Bool)

(assert (=> b!7880658 m!8267894))

(assert (=> b!7880658 m!8267842))

(assert (=> b!7880658 m!8267894))

(assert (=> b!7880658 m!8267842))

(declare-fun m!8267896 () Bool)

(assert (=> b!7880658 m!8267896))

(assert (=> b!7880671 m!8267842))

(assert (=> b!7880671 m!8267842))

(assert (=> b!7880671 m!8267846))

(assert (=> b!7880662 m!8267838))

(assert (=> b!7880667 m!8267842))

(assert (=> b!7880667 m!8267842))

(assert (=> b!7880667 m!8267846))

(assert (=> bm!730984 m!8267832))

(assert (=> b!7880504 d!2356026))

(declare-fun bm!730985 () Bool)

(declare-fun call!730990 () Bool)

(assert (=> bm!730985 (= call!730990 (isEmpty!42413 (t!388781 s!14231)))))

(declare-fun e!4653942 () Bool)

(declare-fun b!7880672 () Bool)

(assert (=> b!7880672 (= e!4653942 (matchR!10623 (derivativeStep!6416 (Union!21187 lt!2681258 lt!2681259) (head!16124 (t!388781 s!14231))) (tail!15667 (t!388781 s!14231))))))

(declare-fun b!7880673 () Bool)

(declare-fun e!4653939 () Bool)

(declare-fun e!4653941 () Bool)

(assert (=> b!7880673 (= e!4653939 e!4653941)))

(declare-fun res!3129764 () Bool)

(assert (=> b!7880673 (=> res!3129764 e!4653941)))

(assert (=> b!7880673 (= res!3129764 call!730990)))

(declare-fun b!7880674 () Bool)

(declare-fun res!3129761 () Bool)

(declare-fun e!4653943 () Bool)

(assert (=> b!7880674 (=> res!3129761 e!4653943)))

(declare-fun e!4653944 () Bool)

(assert (=> b!7880674 (= res!3129761 e!4653944)))

(declare-fun res!3129763 () Bool)

(assert (=> b!7880674 (=> (not res!3129763) (not e!4653944))))

(declare-fun lt!2681273 () Bool)

(assert (=> b!7880674 (= res!3129763 lt!2681273)))

(declare-fun d!2356028 () Bool)

(declare-fun e!4653940 () Bool)

(assert (=> d!2356028 e!4653940))

(declare-fun c!1447183 () Bool)

(assert (=> d!2356028 (= c!1447183 ((_ is EmptyExpr!21187) (Union!21187 lt!2681258 lt!2681259)))))

(assert (=> d!2356028 (= lt!2681273 e!4653942)))

(declare-fun c!1447182 () Bool)

(assert (=> d!2356028 (= c!1447182 (isEmpty!42413 (t!388781 s!14231)))))

(assert (=> d!2356028 (validRegex!11597 (Union!21187 lt!2681258 lt!2681259))))

(assert (=> d!2356028 (= (matchR!10623 (Union!21187 lt!2681258 lt!2681259) (t!388781 s!14231)) lt!2681273)))

(declare-fun b!7880675 () Bool)

(declare-fun res!3129762 () Bool)

(assert (=> b!7880675 (=> (not res!3129762) (not e!4653944))))

(assert (=> b!7880675 (= res!3129762 (not call!730990))))

(declare-fun b!7880676 () Bool)

(assert (=> b!7880676 (= e!4653941 (not (= (head!16124 (t!388781 s!14231)) (c!1447137 (Union!21187 lt!2681258 lt!2681259)))))))

(declare-fun b!7880677 () Bool)

(assert (=> b!7880677 (= e!4653944 (= (head!16124 (t!388781 s!14231)) (c!1447137 (Union!21187 lt!2681258 lt!2681259))))))

(declare-fun b!7880678 () Bool)

(declare-fun e!4653945 () Bool)

(assert (=> b!7880678 (= e!4653940 e!4653945)))

(declare-fun c!1447184 () Bool)

(assert (=> b!7880678 (= c!1447184 ((_ is EmptyLang!21187) (Union!21187 lt!2681258 lt!2681259)))))

(declare-fun b!7880679 () Bool)

(assert (=> b!7880679 (= e!4653940 (= lt!2681273 call!730990))))

(declare-fun b!7880680 () Bool)

(assert (=> b!7880680 (= e!4653945 (not lt!2681273))))

(declare-fun b!7880681 () Bool)

(declare-fun res!3129765 () Bool)

(assert (=> b!7880681 (=> (not res!3129765) (not e!4653944))))

(assert (=> b!7880681 (= res!3129765 (isEmpty!42413 (tail!15667 (t!388781 s!14231))))))

(declare-fun b!7880682 () Bool)

(declare-fun res!3129767 () Bool)

(assert (=> b!7880682 (=> res!3129767 e!4653943)))

(assert (=> b!7880682 (= res!3129767 (not ((_ is ElementMatch!21187) (Union!21187 lt!2681258 lt!2681259))))))

(assert (=> b!7880682 (= e!4653945 e!4653943)))

(declare-fun b!7880683 () Bool)

(assert (=> b!7880683 (= e!4653943 e!4653939)))

(declare-fun res!3129766 () Bool)

(assert (=> b!7880683 (=> (not res!3129766) (not e!4653939))))

(assert (=> b!7880683 (= res!3129766 (not lt!2681273))))

(declare-fun b!7880684 () Bool)

(assert (=> b!7880684 (= e!4653942 (nullable!9446 (Union!21187 lt!2681258 lt!2681259)))))

(declare-fun b!7880685 () Bool)

(declare-fun res!3129760 () Bool)

(assert (=> b!7880685 (=> res!3129760 e!4653941)))

(assert (=> b!7880685 (= res!3129760 (not (isEmpty!42413 (tail!15667 (t!388781 s!14231)))))))

(assert (= (and d!2356028 c!1447182) b!7880684))

(assert (= (and d!2356028 (not c!1447182)) b!7880672))

(assert (= (and d!2356028 c!1447183) b!7880679))

(assert (= (and d!2356028 (not c!1447183)) b!7880678))

(assert (= (and b!7880678 c!1447184) b!7880680))

(assert (= (and b!7880678 (not c!1447184)) b!7880682))

(assert (= (and b!7880682 (not res!3129767)) b!7880674))

(assert (= (and b!7880674 res!3129763) b!7880675))

(assert (= (and b!7880675 res!3129762) b!7880681))

(assert (= (and b!7880681 res!3129765) b!7880677))

(assert (= (and b!7880674 (not res!3129761)) b!7880683))

(assert (= (and b!7880683 res!3129766) b!7880673))

(assert (= (and b!7880673 (not res!3129764)) b!7880685))

(assert (= (and b!7880685 (not res!3129760)) b!7880676))

(assert (= (or b!7880679 b!7880673 b!7880675) bm!730985))

(declare-fun m!8267898 () Bool)

(assert (=> d!2356028 m!8267898))

(declare-fun m!8267900 () Bool)

(assert (=> d!2356028 m!8267900))

(declare-fun m!8267902 () Bool)

(assert (=> b!7880684 m!8267902))

(declare-fun m!8267904 () Bool)

(assert (=> b!7880677 m!8267904))

(assert (=> b!7880672 m!8267904))

(assert (=> b!7880672 m!8267904))

(declare-fun m!8267906 () Bool)

(assert (=> b!7880672 m!8267906))

(declare-fun m!8267908 () Bool)

(assert (=> b!7880672 m!8267908))

(assert (=> b!7880672 m!8267906))

(assert (=> b!7880672 m!8267908))

(declare-fun m!8267910 () Bool)

(assert (=> b!7880672 m!8267910))

(assert (=> b!7880685 m!8267908))

(assert (=> b!7880685 m!8267908))

(declare-fun m!8267912 () Bool)

(assert (=> b!7880685 m!8267912))

(assert (=> b!7880676 m!8267904))

(assert (=> b!7880681 m!8267908))

(assert (=> b!7880681 m!8267908))

(assert (=> b!7880681 m!8267912))

(assert (=> bm!730985 m!8267898))

(assert (=> b!7880504 d!2356028))

(declare-fun b!7880686 () Bool)

(declare-fun e!4653950 () Regex!21187)

(declare-fun call!730993 () Regex!21187)

(declare-fun call!730994 () Regex!21187)

(assert (=> b!7880686 (= e!4653950 (Union!21187 call!730993 call!730994))))

(declare-fun b!7880687 () Bool)

(declare-fun e!4653946 () Regex!21187)

(assert (=> b!7880687 (= e!4653950 e!4653946)))

(declare-fun c!1447188 () Bool)

(assert (=> b!7880687 (= c!1447188 ((_ is Star!21187) r2!6150))))

(declare-fun b!7880688 () Bool)

(declare-fun call!730992 () Regex!21187)

(assert (=> b!7880688 (= e!4653946 (Concat!30032 call!730992 r2!6150))))

(declare-fun bm!730986 () Bool)

(assert (=> bm!730986 (= call!730992 call!730994)))

(declare-fun b!7880690 () Bool)

(declare-fun e!4653948 () Regex!21187)

(assert (=> b!7880690 (= e!4653948 EmptyLang!21187)))

(declare-fun b!7880691 () Bool)

(declare-fun e!4653947 () Regex!21187)

(assert (=> b!7880691 (= e!4653947 (ite (= (h!80370 s!14231) (c!1447137 r2!6150)) EmptyExpr!21187 EmptyLang!21187))))

(declare-fun e!4653949 () Regex!21187)

(declare-fun b!7880692 () Bool)

(declare-fun call!730991 () Regex!21187)

(assert (=> b!7880692 (= e!4653949 (Union!21187 (Concat!30032 call!730991 (regTwo!42886 r2!6150)) call!730993))))

(declare-fun bm!730987 () Bool)

(declare-fun c!1447186 () Bool)

(assert (=> bm!730987 (= call!730994 (derivativeStep!6416 (ite c!1447186 (regTwo!42887 r2!6150) (ite c!1447188 (reg!21516 r2!6150) (regOne!42886 r2!6150))) (h!80370 s!14231)))))

(declare-fun bm!730988 () Bool)

(assert (=> bm!730988 (= call!730991 call!730992)))

(declare-fun b!7880689 () Bool)

(assert (=> b!7880689 (= e!4653949 (Union!21187 (Concat!30032 call!730991 (regTwo!42886 r2!6150)) EmptyLang!21187))))

(declare-fun d!2356030 () Bool)

(declare-fun lt!2681274 () Regex!21187)

(assert (=> d!2356030 (validRegex!11597 lt!2681274)))

(assert (=> d!2356030 (= lt!2681274 e!4653948)))

(declare-fun c!1447187 () Bool)

(assert (=> d!2356030 (= c!1447187 (or ((_ is EmptyExpr!21187) r2!6150) ((_ is EmptyLang!21187) r2!6150)))))

(assert (=> d!2356030 (validRegex!11597 r2!6150)))

(assert (=> d!2356030 (= (derivativeStep!6416 r2!6150 (h!80370 s!14231)) lt!2681274)))

(declare-fun bm!730989 () Bool)

(assert (=> bm!730989 (= call!730993 (derivativeStep!6416 (ite c!1447186 (regOne!42887 r2!6150) (regTwo!42886 r2!6150)) (h!80370 s!14231)))))

(declare-fun b!7880693 () Bool)

(declare-fun c!1447189 () Bool)

(assert (=> b!7880693 (= c!1447189 (nullable!9446 (regOne!42886 r2!6150)))))

(assert (=> b!7880693 (= e!4653946 e!4653949)))

(declare-fun b!7880694 () Bool)

(assert (=> b!7880694 (= c!1447186 ((_ is Union!21187) r2!6150))))

(assert (=> b!7880694 (= e!4653947 e!4653950)))

(declare-fun b!7880695 () Bool)

(assert (=> b!7880695 (= e!4653948 e!4653947)))

(declare-fun c!1447185 () Bool)

(assert (=> b!7880695 (= c!1447185 ((_ is ElementMatch!21187) r2!6150))))

(assert (= (and d!2356030 c!1447187) b!7880690))

(assert (= (and d!2356030 (not c!1447187)) b!7880695))

(assert (= (and b!7880695 c!1447185) b!7880691))

(assert (= (and b!7880695 (not c!1447185)) b!7880694))

(assert (= (and b!7880694 c!1447186) b!7880686))

(assert (= (and b!7880694 (not c!1447186)) b!7880687))

(assert (= (and b!7880687 c!1447188) b!7880688))

(assert (= (and b!7880687 (not c!1447188)) b!7880693))

(assert (= (and b!7880693 c!1447189) b!7880692))

(assert (= (and b!7880693 (not c!1447189)) b!7880689))

(assert (= (or b!7880692 b!7880689) bm!730988))

(assert (= (or b!7880688 bm!730988) bm!730986))

(assert (= (or b!7880686 bm!730986) bm!730987))

(assert (= (or b!7880686 b!7880692) bm!730989))

(declare-fun m!8267914 () Bool)

(assert (=> bm!730987 m!8267914))

(declare-fun m!8267916 () Bool)

(assert (=> d!2356030 m!8267916))

(assert (=> d!2356030 m!8267820))

(declare-fun m!8267918 () Bool)

(assert (=> bm!730989 m!8267918))

(declare-fun m!8267920 () Bool)

(assert (=> b!7880693 m!8267920))

(assert (=> b!7880504 d!2356030))

(declare-fun b!7880707 () Bool)

(declare-fun e!4653953 () Bool)

(declare-fun tp!2341689 () Bool)

(declare-fun tp!2341688 () Bool)

(assert (=> b!7880707 (= e!4653953 (and tp!2341689 tp!2341688))))

(assert (=> b!7880499 (= tp!2341670 e!4653953)))

(declare-fun b!7880706 () Bool)

(assert (=> b!7880706 (= e!4653953 tp_is_empty!52773)))

(declare-fun b!7880708 () Bool)

(declare-fun tp!2341691 () Bool)

(assert (=> b!7880708 (= e!4653953 tp!2341691)))

(declare-fun b!7880709 () Bool)

(declare-fun tp!2341687 () Bool)

(declare-fun tp!2341690 () Bool)

(assert (=> b!7880709 (= e!4653953 (and tp!2341687 tp!2341690))))

(assert (= (and b!7880499 ((_ is ElementMatch!21187) (reg!21516 r1!6212))) b!7880706))

(assert (= (and b!7880499 ((_ is Concat!30032) (reg!21516 r1!6212))) b!7880707))

(assert (= (and b!7880499 ((_ is Star!21187) (reg!21516 r1!6212))) b!7880708))

(assert (= (and b!7880499 ((_ is Union!21187) (reg!21516 r1!6212))) b!7880709))

(declare-fun b!7880714 () Bool)

(declare-fun e!4653956 () Bool)

(declare-fun tp!2341694 () Bool)

(assert (=> b!7880714 (= e!4653956 (and tp_is_empty!52773 tp!2341694))))

(assert (=> b!7880500 (= tp!2341669 e!4653956)))

(assert (= (and b!7880500 ((_ is Cons!73922) (t!388781 s!14231))) b!7880714))

(declare-fun b!7880716 () Bool)

(declare-fun e!4653957 () Bool)

(declare-fun tp!2341697 () Bool)

(declare-fun tp!2341696 () Bool)

(assert (=> b!7880716 (= e!4653957 (and tp!2341697 tp!2341696))))

(assert (=> b!7880496 (= tp!2341675 e!4653957)))

(declare-fun b!7880715 () Bool)

(assert (=> b!7880715 (= e!4653957 tp_is_empty!52773)))

(declare-fun b!7880717 () Bool)

(declare-fun tp!2341699 () Bool)

(assert (=> b!7880717 (= e!4653957 tp!2341699)))

(declare-fun b!7880718 () Bool)

(declare-fun tp!2341695 () Bool)

(declare-fun tp!2341698 () Bool)

(assert (=> b!7880718 (= e!4653957 (and tp!2341695 tp!2341698))))

(assert (= (and b!7880496 ((_ is ElementMatch!21187) (regOne!42887 r1!6212))) b!7880715))

(assert (= (and b!7880496 ((_ is Concat!30032) (regOne!42887 r1!6212))) b!7880716))

(assert (= (and b!7880496 ((_ is Star!21187) (regOne!42887 r1!6212))) b!7880717))

(assert (= (and b!7880496 ((_ is Union!21187) (regOne!42887 r1!6212))) b!7880718))

(declare-fun b!7880720 () Bool)

(declare-fun e!4653958 () Bool)

(declare-fun tp!2341702 () Bool)

(declare-fun tp!2341701 () Bool)

(assert (=> b!7880720 (= e!4653958 (and tp!2341702 tp!2341701))))

(assert (=> b!7880496 (= tp!2341676 e!4653958)))

(declare-fun b!7880719 () Bool)

(assert (=> b!7880719 (= e!4653958 tp_is_empty!52773)))

(declare-fun b!7880721 () Bool)

(declare-fun tp!2341704 () Bool)

(assert (=> b!7880721 (= e!4653958 tp!2341704)))

(declare-fun b!7880722 () Bool)

(declare-fun tp!2341700 () Bool)

(declare-fun tp!2341703 () Bool)

(assert (=> b!7880722 (= e!4653958 (and tp!2341700 tp!2341703))))

(assert (= (and b!7880496 ((_ is ElementMatch!21187) (regTwo!42887 r1!6212))) b!7880719))

(assert (= (and b!7880496 ((_ is Concat!30032) (regTwo!42887 r1!6212))) b!7880720))

(assert (= (and b!7880496 ((_ is Star!21187) (regTwo!42887 r1!6212))) b!7880721))

(assert (= (and b!7880496 ((_ is Union!21187) (regTwo!42887 r1!6212))) b!7880722))

(declare-fun b!7880724 () Bool)

(declare-fun e!4653959 () Bool)

(declare-fun tp!2341707 () Bool)

(declare-fun tp!2341706 () Bool)

(assert (=> b!7880724 (= e!4653959 (and tp!2341707 tp!2341706))))

(assert (=> b!7880502 (= tp!2341674 e!4653959)))

(declare-fun b!7880723 () Bool)

(assert (=> b!7880723 (= e!4653959 tp_is_empty!52773)))

(declare-fun b!7880725 () Bool)

(declare-fun tp!2341709 () Bool)

(assert (=> b!7880725 (= e!4653959 tp!2341709)))

(declare-fun b!7880726 () Bool)

(declare-fun tp!2341705 () Bool)

(declare-fun tp!2341708 () Bool)

(assert (=> b!7880726 (= e!4653959 (and tp!2341705 tp!2341708))))

(assert (= (and b!7880502 ((_ is ElementMatch!21187) (regOne!42886 r1!6212))) b!7880723))

(assert (= (and b!7880502 ((_ is Concat!30032) (regOne!42886 r1!6212))) b!7880724))

(assert (= (and b!7880502 ((_ is Star!21187) (regOne!42886 r1!6212))) b!7880725))

(assert (= (and b!7880502 ((_ is Union!21187) (regOne!42886 r1!6212))) b!7880726))

(declare-fun b!7880728 () Bool)

(declare-fun e!4653960 () Bool)

(declare-fun tp!2341712 () Bool)

(declare-fun tp!2341711 () Bool)

(assert (=> b!7880728 (= e!4653960 (and tp!2341712 tp!2341711))))

(assert (=> b!7880502 (= tp!2341667 e!4653960)))

(declare-fun b!7880727 () Bool)

(assert (=> b!7880727 (= e!4653960 tp_is_empty!52773)))

(declare-fun b!7880729 () Bool)

(declare-fun tp!2341714 () Bool)

(assert (=> b!7880729 (= e!4653960 tp!2341714)))

(declare-fun b!7880730 () Bool)

(declare-fun tp!2341710 () Bool)

(declare-fun tp!2341713 () Bool)

(assert (=> b!7880730 (= e!4653960 (and tp!2341710 tp!2341713))))

(assert (= (and b!7880502 ((_ is ElementMatch!21187) (regTwo!42886 r1!6212))) b!7880727))

(assert (= (and b!7880502 ((_ is Concat!30032) (regTwo!42886 r1!6212))) b!7880728))

(assert (= (and b!7880502 ((_ is Star!21187) (regTwo!42886 r1!6212))) b!7880729))

(assert (= (and b!7880502 ((_ is Union!21187) (regTwo!42886 r1!6212))) b!7880730))

(declare-fun b!7880732 () Bool)

(declare-fun e!4653961 () Bool)

(declare-fun tp!2341717 () Bool)

(declare-fun tp!2341716 () Bool)

(assert (=> b!7880732 (= e!4653961 (and tp!2341717 tp!2341716))))

(assert (=> b!7880492 (= tp!2341668 e!4653961)))

(declare-fun b!7880731 () Bool)

(assert (=> b!7880731 (= e!4653961 tp_is_empty!52773)))

(declare-fun b!7880733 () Bool)

(declare-fun tp!2341719 () Bool)

(assert (=> b!7880733 (= e!4653961 tp!2341719)))

(declare-fun b!7880734 () Bool)

(declare-fun tp!2341715 () Bool)

(declare-fun tp!2341718 () Bool)

(assert (=> b!7880734 (= e!4653961 (and tp!2341715 tp!2341718))))

(assert (= (and b!7880492 ((_ is ElementMatch!21187) (regOne!42887 r2!6150))) b!7880731))

(assert (= (and b!7880492 ((_ is Concat!30032) (regOne!42887 r2!6150))) b!7880732))

(assert (= (and b!7880492 ((_ is Star!21187) (regOne!42887 r2!6150))) b!7880733))

(assert (= (and b!7880492 ((_ is Union!21187) (regOne!42887 r2!6150))) b!7880734))

(declare-fun b!7880736 () Bool)

(declare-fun e!4653962 () Bool)

(declare-fun tp!2341722 () Bool)

(declare-fun tp!2341721 () Bool)

(assert (=> b!7880736 (= e!4653962 (and tp!2341722 tp!2341721))))

(assert (=> b!7880492 (= tp!2341666 e!4653962)))

(declare-fun b!7880735 () Bool)

(assert (=> b!7880735 (= e!4653962 tp_is_empty!52773)))

(declare-fun b!7880737 () Bool)

(declare-fun tp!2341724 () Bool)

(assert (=> b!7880737 (= e!4653962 tp!2341724)))

(declare-fun b!7880738 () Bool)

(declare-fun tp!2341720 () Bool)

(declare-fun tp!2341723 () Bool)

(assert (=> b!7880738 (= e!4653962 (and tp!2341720 tp!2341723))))

(assert (= (and b!7880492 ((_ is ElementMatch!21187) (regTwo!42887 r2!6150))) b!7880735))

(assert (= (and b!7880492 ((_ is Concat!30032) (regTwo!42887 r2!6150))) b!7880736))

(assert (= (and b!7880492 ((_ is Star!21187) (regTwo!42887 r2!6150))) b!7880737))

(assert (= (and b!7880492 ((_ is Union!21187) (regTwo!42887 r2!6150))) b!7880738))

(declare-fun b!7880740 () Bool)

(declare-fun e!4653963 () Bool)

(declare-fun tp!2341727 () Bool)

(declare-fun tp!2341726 () Bool)

(assert (=> b!7880740 (= e!4653963 (and tp!2341727 tp!2341726))))

(assert (=> b!7880498 (= tp!2341672 e!4653963)))

(declare-fun b!7880739 () Bool)

(assert (=> b!7880739 (= e!4653963 tp_is_empty!52773)))

(declare-fun b!7880741 () Bool)

(declare-fun tp!2341729 () Bool)

(assert (=> b!7880741 (= e!4653963 tp!2341729)))

(declare-fun b!7880742 () Bool)

(declare-fun tp!2341725 () Bool)

(declare-fun tp!2341728 () Bool)

(assert (=> b!7880742 (= e!4653963 (and tp!2341725 tp!2341728))))

(assert (= (and b!7880498 ((_ is ElementMatch!21187) (regOne!42886 r2!6150))) b!7880739))

(assert (= (and b!7880498 ((_ is Concat!30032) (regOne!42886 r2!6150))) b!7880740))

(assert (= (and b!7880498 ((_ is Star!21187) (regOne!42886 r2!6150))) b!7880741))

(assert (= (and b!7880498 ((_ is Union!21187) (regOne!42886 r2!6150))) b!7880742))

(declare-fun b!7880744 () Bool)

(declare-fun e!4653964 () Bool)

(declare-fun tp!2341732 () Bool)

(declare-fun tp!2341731 () Bool)

(assert (=> b!7880744 (= e!4653964 (and tp!2341732 tp!2341731))))

(assert (=> b!7880498 (= tp!2341673 e!4653964)))

(declare-fun b!7880743 () Bool)

(assert (=> b!7880743 (= e!4653964 tp_is_empty!52773)))

(declare-fun b!7880745 () Bool)

(declare-fun tp!2341734 () Bool)

(assert (=> b!7880745 (= e!4653964 tp!2341734)))

(declare-fun b!7880746 () Bool)

(declare-fun tp!2341730 () Bool)

(declare-fun tp!2341733 () Bool)

(assert (=> b!7880746 (= e!4653964 (and tp!2341730 tp!2341733))))

(assert (= (and b!7880498 ((_ is ElementMatch!21187) (regTwo!42886 r2!6150))) b!7880743))

(assert (= (and b!7880498 ((_ is Concat!30032) (regTwo!42886 r2!6150))) b!7880744))

(assert (= (and b!7880498 ((_ is Star!21187) (regTwo!42886 r2!6150))) b!7880745))

(assert (= (and b!7880498 ((_ is Union!21187) (regTwo!42886 r2!6150))) b!7880746))

(declare-fun b!7880748 () Bool)

(declare-fun e!4653965 () Bool)

(declare-fun tp!2341737 () Bool)

(declare-fun tp!2341736 () Bool)

(assert (=> b!7880748 (= e!4653965 (and tp!2341737 tp!2341736))))

(assert (=> b!7880493 (= tp!2341671 e!4653965)))

(declare-fun b!7880747 () Bool)

(assert (=> b!7880747 (= e!4653965 tp_is_empty!52773)))

(declare-fun b!7880749 () Bool)

(declare-fun tp!2341739 () Bool)

(assert (=> b!7880749 (= e!4653965 tp!2341739)))

(declare-fun b!7880750 () Bool)

(declare-fun tp!2341735 () Bool)

(declare-fun tp!2341738 () Bool)

(assert (=> b!7880750 (= e!4653965 (and tp!2341735 tp!2341738))))

(assert (= (and b!7880493 ((_ is ElementMatch!21187) (reg!21516 r2!6150))) b!7880747))

(assert (= (and b!7880493 ((_ is Concat!30032) (reg!21516 r2!6150))) b!7880748))

(assert (= (and b!7880493 ((_ is Star!21187) (reg!21516 r2!6150))) b!7880749))

(assert (= (and b!7880493 ((_ is Union!21187) (reg!21516 r2!6150))) b!7880750))

(check-sat (not b!7880714) (not b!7880724) (not b!7880662) (not b!7880744) (not b!7880737) (not b!7880663) (not b!7880716) (not bm!730956) (not b!7880533) (not b!7880658) (not b!7880670) (not d!2356030) (not b!7880596) (not b!7880726) (not b!7880685) (not b!7880545) (not bm!730989) (not d!2356028) (not b!7880728) (not b!7880681) (not b!7880684) (not b!7880537) (not b!7880745) (not d!2356012) (not bm!730983) (not b!7880733) (not b!7880718) (not b!7880725) (not b!7880749) (not bm!730981) (not bm!730968) (not bm!730985) (not b!7880652) (not b!7880734) (not b!7880671) (not b!7880748) (not d!2356026) (not bm!730965) (not b!7880729) (not bm!730966) (not b!7880677) tp_is_empty!52773 (not b!7880709) (not b!7880746) (not b!7880546) (not bm!730984) (not b!7880736) (not b!7880672) (not bm!730963) (not bm!730987) (not b!7880717) (not b!7880542) (not b!7880740) (not b!7880730) (not b!7880742) (not b!7880738) (not b!7880720) (not b!7880538) (not b!7880721) (not d!2356020) (not b!7880676) (not b!7880708) (not b!7880607) (not b!7880693) (not b!7880707) (not b!7880732) (not b!7880667) (not d!2356022) (not b!7880741) (not b!7880750) (not b!7880722) (not b!7880657))
(check-sat)
(get-model)

(declare-fun d!2356044 () Bool)

(declare-fun nullableFct!3730 (Regex!21187) Bool)

(assert (=> d!2356044 (= (nullable!9446 (Union!21187 r1!6212 r2!6150)) (nullableFct!3730 (Union!21187 r1!6212 r2!6150)))))

(declare-fun bs!1967373 () Bool)

(assert (= bs!1967373 d!2356044))

(declare-fun m!8267980 () Bool)

(assert (=> bs!1967373 m!8267980))

(assert (=> b!7880545 d!2356044))

(declare-fun d!2356046 () Bool)

(assert (=> d!2356046 (= (isEmpty!42413 (tail!15667 s!14231)) ((_ is Nil!73922) (tail!15667 s!14231)))))

(assert (=> b!7880546 d!2356046))

(declare-fun d!2356048 () Bool)

(assert (=> d!2356048 (= (tail!15667 s!14231) (t!388781 s!14231))))

(assert (=> b!7880546 d!2356048))

(declare-fun d!2356050 () Bool)

(assert (=> d!2356050 (= (nullable!9446 (regOne!42886 r2!6150)) (nullableFct!3730 (regOne!42886 r2!6150)))))

(declare-fun bs!1967374 () Bool)

(assert (= bs!1967374 d!2356050))

(declare-fun m!8267982 () Bool)

(assert (=> bs!1967374 m!8267982))

(assert (=> b!7880693 d!2356050))

(declare-fun b!7880913 () Bool)

(declare-fun e!4654050 () Regex!21187)

(declare-fun call!731027 () Regex!21187)

(declare-fun call!731028 () Regex!21187)

(assert (=> b!7880913 (= e!4654050 (Union!21187 call!731027 call!731028))))

(declare-fun b!7880914 () Bool)

(declare-fun e!4654046 () Regex!21187)

(assert (=> b!7880914 (= e!4654050 e!4654046)))

(declare-fun c!1447227 () Bool)

(assert (=> b!7880914 (= c!1447227 ((_ is Star!21187) (ite c!1447186 (regOne!42887 r2!6150) (regTwo!42886 r2!6150))))))

(declare-fun call!731026 () Regex!21187)

(declare-fun b!7880915 () Bool)

(assert (=> b!7880915 (= e!4654046 (Concat!30032 call!731026 (ite c!1447186 (regOne!42887 r2!6150) (regTwo!42886 r2!6150))))))

(declare-fun bm!731020 () Bool)

(assert (=> bm!731020 (= call!731026 call!731028)))

(declare-fun b!7880917 () Bool)

(declare-fun e!4654048 () Regex!21187)

(assert (=> b!7880917 (= e!4654048 EmptyLang!21187)))

(declare-fun e!4654047 () Regex!21187)

(declare-fun b!7880918 () Bool)

(assert (=> b!7880918 (= e!4654047 (ite (= (h!80370 s!14231) (c!1447137 (ite c!1447186 (regOne!42887 r2!6150) (regTwo!42886 r2!6150)))) EmptyExpr!21187 EmptyLang!21187))))

(declare-fun e!4654049 () Regex!21187)

(declare-fun b!7880919 () Bool)

(declare-fun call!731025 () Regex!21187)

(assert (=> b!7880919 (= e!4654049 (Union!21187 (Concat!30032 call!731025 (regTwo!42886 (ite c!1447186 (regOne!42887 r2!6150) (regTwo!42886 r2!6150)))) call!731027))))

(declare-fun c!1447225 () Bool)

(declare-fun bm!731021 () Bool)

(assert (=> bm!731021 (= call!731028 (derivativeStep!6416 (ite c!1447225 (regTwo!42887 (ite c!1447186 (regOne!42887 r2!6150) (regTwo!42886 r2!6150))) (ite c!1447227 (reg!21516 (ite c!1447186 (regOne!42887 r2!6150) (regTwo!42886 r2!6150))) (regOne!42886 (ite c!1447186 (regOne!42887 r2!6150) (regTwo!42886 r2!6150))))) (h!80370 s!14231)))))

(declare-fun bm!731022 () Bool)

(assert (=> bm!731022 (= call!731025 call!731026)))

(declare-fun b!7880916 () Bool)

(assert (=> b!7880916 (= e!4654049 (Union!21187 (Concat!30032 call!731025 (regTwo!42886 (ite c!1447186 (regOne!42887 r2!6150) (regTwo!42886 r2!6150)))) EmptyLang!21187))))

(declare-fun d!2356052 () Bool)

(declare-fun lt!2681284 () Regex!21187)

(assert (=> d!2356052 (validRegex!11597 lt!2681284)))

(assert (=> d!2356052 (= lt!2681284 e!4654048)))

(declare-fun c!1447226 () Bool)

(assert (=> d!2356052 (= c!1447226 (or ((_ is EmptyExpr!21187) (ite c!1447186 (regOne!42887 r2!6150) (regTwo!42886 r2!6150))) ((_ is EmptyLang!21187) (ite c!1447186 (regOne!42887 r2!6150) (regTwo!42886 r2!6150)))))))

(assert (=> d!2356052 (validRegex!11597 (ite c!1447186 (regOne!42887 r2!6150) (regTwo!42886 r2!6150)))))

(assert (=> d!2356052 (= (derivativeStep!6416 (ite c!1447186 (regOne!42887 r2!6150) (regTwo!42886 r2!6150)) (h!80370 s!14231)) lt!2681284)))

(declare-fun bm!731023 () Bool)

(assert (=> bm!731023 (= call!731027 (derivativeStep!6416 (ite c!1447225 (regOne!42887 (ite c!1447186 (regOne!42887 r2!6150) (regTwo!42886 r2!6150))) (regTwo!42886 (ite c!1447186 (regOne!42887 r2!6150) (regTwo!42886 r2!6150)))) (h!80370 s!14231)))))

(declare-fun b!7880920 () Bool)

(declare-fun c!1447228 () Bool)

(assert (=> b!7880920 (= c!1447228 (nullable!9446 (regOne!42886 (ite c!1447186 (regOne!42887 r2!6150) (regTwo!42886 r2!6150)))))))

(assert (=> b!7880920 (= e!4654046 e!4654049)))

(declare-fun b!7880921 () Bool)

(assert (=> b!7880921 (= c!1447225 ((_ is Union!21187) (ite c!1447186 (regOne!42887 r2!6150) (regTwo!42886 r2!6150))))))

(assert (=> b!7880921 (= e!4654047 e!4654050)))

(declare-fun b!7880922 () Bool)

(assert (=> b!7880922 (= e!4654048 e!4654047)))

(declare-fun c!1447224 () Bool)

(assert (=> b!7880922 (= c!1447224 ((_ is ElementMatch!21187) (ite c!1447186 (regOne!42887 r2!6150) (regTwo!42886 r2!6150))))))

(assert (= (and d!2356052 c!1447226) b!7880917))

(assert (= (and d!2356052 (not c!1447226)) b!7880922))

(assert (= (and b!7880922 c!1447224) b!7880918))

(assert (= (and b!7880922 (not c!1447224)) b!7880921))

(assert (= (and b!7880921 c!1447225) b!7880913))

(assert (= (and b!7880921 (not c!1447225)) b!7880914))

(assert (= (and b!7880914 c!1447227) b!7880915))

(assert (= (and b!7880914 (not c!1447227)) b!7880920))

(assert (= (and b!7880920 c!1447228) b!7880919))

(assert (= (and b!7880920 (not c!1447228)) b!7880916))

(assert (= (or b!7880919 b!7880916) bm!731022))

(assert (= (or b!7880915 bm!731022) bm!731020))

(assert (= (or b!7880913 bm!731020) bm!731021))

(assert (= (or b!7880913 b!7880919) bm!731023))

(declare-fun m!8267984 () Bool)

(assert (=> bm!731021 m!8267984))

(declare-fun m!8267986 () Bool)

(assert (=> d!2356052 m!8267986))

(declare-fun m!8267988 () Bool)

(assert (=> d!2356052 m!8267988))

(declare-fun m!8267990 () Bool)

(assert (=> bm!731023 m!8267990))

(declare-fun m!8267992 () Bool)

(assert (=> b!7880920 m!8267992))

(assert (=> bm!730989 d!2356052))

(declare-fun bm!731024 () Bool)

(declare-fun call!731029 () Bool)

(assert (=> bm!731024 (= call!731029 (isEmpty!42413 (tail!15667 s!14231)))))

(declare-fun b!7880923 () Bool)

(declare-fun e!4654054 () Bool)

(assert (=> b!7880923 (= e!4654054 (matchR!10623 (derivativeStep!6416 (derivativeStep!6416 (Union!21187 r2!6150 r1!6212) (head!16124 s!14231)) (head!16124 (tail!15667 s!14231))) (tail!15667 (tail!15667 s!14231))))))

(declare-fun b!7880924 () Bool)

(declare-fun e!4654051 () Bool)

(declare-fun e!4654053 () Bool)

(assert (=> b!7880924 (= e!4654051 e!4654053)))

(declare-fun res!3129811 () Bool)

(assert (=> b!7880924 (=> res!3129811 e!4654053)))

(assert (=> b!7880924 (= res!3129811 call!731029)))

(declare-fun b!7880925 () Bool)

(declare-fun res!3129808 () Bool)

(declare-fun e!4654055 () Bool)

(assert (=> b!7880925 (=> res!3129808 e!4654055)))

(declare-fun e!4654056 () Bool)

(assert (=> b!7880925 (= res!3129808 e!4654056)))

(declare-fun res!3129810 () Bool)

(assert (=> b!7880925 (=> (not res!3129810) (not e!4654056))))

(declare-fun lt!2681285 () Bool)

(assert (=> b!7880925 (= res!3129810 lt!2681285)))

(declare-fun d!2356054 () Bool)

(declare-fun e!4654052 () Bool)

(assert (=> d!2356054 e!4654052))

(declare-fun c!1447230 () Bool)

(assert (=> d!2356054 (= c!1447230 ((_ is EmptyExpr!21187) (derivativeStep!6416 (Union!21187 r2!6150 r1!6212) (head!16124 s!14231))))))

(assert (=> d!2356054 (= lt!2681285 e!4654054)))

(declare-fun c!1447229 () Bool)

(assert (=> d!2356054 (= c!1447229 (isEmpty!42413 (tail!15667 s!14231)))))

(assert (=> d!2356054 (validRegex!11597 (derivativeStep!6416 (Union!21187 r2!6150 r1!6212) (head!16124 s!14231)))))

(assert (=> d!2356054 (= (matchR!10623 (derivativeStep!6416 (Union!21187 r2!6150 r1!6212) (head!16124 s!14231)) (tail!15667 s!14231)) lt!2681285)))

(declare-fun b!7880926 () Bool)

(declare-fun res!3129809 () Bool)

(assert (=> b!7880926 (=> (not res!3129809) (not e!4654056))))

(assert (=> b!7880926 (= res!3129809 (not call!731029))))

(declare-fun b!7880927 () Bool)

(assert (=> b!7880927 (= e!4654053 (not (= (head!16124 (tail!15667 s!14231)) (c!1447137 (derivativeStep!6416 (Union!21187 r2!6150 r1!6212) (head!16124 s!14231))))))))

(declare-fun b!7880928 () Bool)

(assert (=> b!7880928 (= e!4654056 (= (head!16124 (tail!15667 s!14231)) (c!1447137 (derivativeStep!6416 (Union!21187 r2!6150 r1!6212) (head!16124 s!14231)))))))

(declare-fun b!7880929 () Bool)

(declare-fun e!4654057 () Bool)

(assert (=> b!7880929 (= e!4654052 e!4654057)))

(declare-fun c!1447231 () Bool)

(assert (=> b!7880929 (= c!1447231 ((_ is EmptyLang!21187) (derivativeStep!6416 (Union!21187 r2!6150 r1!6212) (head!16124 s!14231))))))

(declare-fun b!7880930 () Bool)

(assert (=> b!7880930 (= e!4654052 (= lt!2681285 call!731029))))

(declare-fun b!7880931 () Bool)

(assert (=> b!7880931 (= e!4654057 (not lt!2681285))))

(declare-fun b!7880932 () Bool)

(declare-fun res!3129812 () Bool)

(assert (=> b!7880932 (=> (not res!3129812) (not e!4654056))))

(assert (=> b!7880932 (= res!3129812 (isEmpty!42413 (tail!15667 (tail!15667 s!14231))))))

(declare-fun b!7880933 () Bool)

(declare-fun res!3129814 () Bool)

(assert (=> b!7880933 (=> res!3129814 e!4654055)))

(assert (=> b!7880933 (= res!3129814 (not ((_ is ElementMatch!21187) (derivativeStep!6416 (Union!21187 r2!6150 r1!6212) (head!16124 s!14231)))))))

(assert (=> b!7880933 (= e!4654057 e!4654055)))

(declare-fun b!7880934 () Bool)

(assert (=> b!7880934 (= e!4654055 e!4654051)))

(declare-fun res!3129813 () Bool)

(assert (=> b!7880934 (=> (not res!3129813) (not e!4654051))))

(assert (=> b!7880934 (= res!3129813 (not lt!2681285))))

(declare-fun b!7880935 () Bool)

(assert (=> b!7880935 (= e!4654054 (nullable!9446 (derivativeStep!6416 (Union!21187 r2!6150 r1!6212) (head!16124 s!14231))))))

(declare-fun b!7880936 () Bool)

(declare-fun res!3129807 () Bool)

(assert (=> b!7880936 (=> res!3129807 e!4654053)))

(assert (=> b!7880936 (= res!3129807 (not (isEmpty!42413 (tail!15667 (tail!15667 s!14231)))))))

(assert (= (and d!2356054 c!1447229) b!7880935))

(assert (= (and d!2356054 (not c!1447229)) b!7880923))

(assert (= (and d!2356054 c!1447230) b!7880930))

(assert (= (and d!2356054 (not c!1447230)) b!7880929))

(assert (= (and b!7880929 c!1447231) b!7880931))

(assert (= (and b!7880929 (not c!1447231)) b!7880933))

(assert (= (and b!7880933 (not res!3129814)) b!7880925))

(assert (= (and b!7880925 res!3129810) b!7880926))

(assert (= (and b!7880926 res!3129809) b!7880932))

(assert (= (and b!7880932 res!3129812) b!7880928))

(assert (= (and b!7880925 (not res!3129808)) b!7880934))

(assert (= (and b!7880934 res!3129813) b!7880924))

(assert (= (and b!7880924 (not res!3129811)) b!7880936))

(assert (= (and b!7880936 (not res!3129807)) b!7880927))

(assert (= (or b!7880930 b!7880924 b!7880926) bm!731024))

(assert (=> d!2356054 m!8267842))

(assert (=> d!2356054 m!8267846))

(assert (=> d!2356054 m!8267894))

(declare-fun m!8267994 () Bool)

(assert (=> d!2356054 m!8267994))

(assert (=> b!7880935 m!8267894))

(declare-fun m!8267996 () Bool)

(assert (=> b!7880935 m!8267996))

(assert (=> b!7880928 m!8267842))

(declare-fun m!8267998 () Bool)

(assert (=> b!7880928 m!8267998))

(assert (=> b!7880923 m!8267842))

(assert (=> b!7880923 m!8267998))

(assert (=> b!7880923 m!8267894))

(assert (=> b!7880923 m!8267998))

(declare-fun m!8268000 () Bool)

(assert (=> b!7880923 m!8268000))

(assert (=> b!7880923 m!8267842))

(declare-fun m!8268002 () Bool)

(assert (=> b!7880923 m!8268002))

(assert (=> b!7880923 m!8268000))

(assert (=> b!7880923 m!8268002))

(declare-fun m!8268004 () Bool)

(assert (=> b!7880923 m!8268004))

(assert (=> b!7880936 m!8267842))

(assert (=> b!7880936 m!8268002))

(assert (=> b!7880936 m!8268002))

(declare-fun m!8268006 () Bool)

(assert (=> b!7880936 m!8268006))

(assert (=> b!7880927 m!8267842))

(assert (=> b!7880927 m!8267998))

(assert (=> b!7880932 m!8267842))

(assert (=> b!7880932 m!8268002))

(assert (=> b!7880932 m!8268002))

(assert (=> b!7880932 m!8268006))

(assert (=> bm!731024 m!8267842))

(assert (=> bm!731024 m!8267846))

(assert (=> b!7880658 d!2356054))

(declare-fun b!7880937 () Bool)

(declare-fun e!4654062 () Regex!21187)

(declare-fun call!731032 () Regex!21187)

(declare-fun call!731033 () Regex!21187)

(assert (=> b!7880937 (= e!4654062 (Union!21187 call!731032 call!731033))))

(declare-fun b!7880938 () Bool)

(declare-fun e!4654058 () Regex!21187)

(assert (=> b!7880938 (= e!4654062 e!4654058)))

(declare-fun c!1447235 () Bool)

(assert (=> b!7880938 (= c!1447235 ((_ is Star!21187) (Union!21187 r2!6150 r1!6212)))))

(declare-fun call!731031 () Regex!21187)

(declare-fun b!7880939 () Bool)

(assert (=> b!7880939 (= e!4654058 (Concat!30032 call!731031 (Union!21187 r2!6150 r1!6212)))))

(declare-fun bm!731025 () Bool)

(assert (=> bm!731025 (= call!731031 call!731033)))

(declare-fun b!7880941 () Bool)

(declare-fun e!4654060 () Regex!21187)

(assert (=> b!7880941 (= e!4654060 EmptyLang!21187)))

(declare-fun b!7880942 () Bool)

(declare-fun e!4654059 () Regex!21187)

(assert (=> b!7880942 (= e!4654059 (ite (= (head!16124 s!14231) (c!1447137 (Union!21187 r2!6150 r1!6212))) EmptyExpr!21187 EmptyLang!21187))))

(declare-fun call!731030 () Regex!21187)

(declare-fun e!4654061 () Regex!21187)

(declare-fun b!7880943 () Bool)

(assert (=> b!7880943 (= e!4654061 (Union!21187 (Concat!30032 call!731030 (regTwo!42886 (Union!21187 r2!6150 r1!6212))) call!731032))))

(declare-fun c!1447233 () Bool)

(declare-fun bm!731026 () Bool)

(assert (=> bm!731026 (= call!731033 (derivativeStep!6416 (ite c!1447233 (regTwo!42887 (Union!21187 r2!6150 r1!6212)) (ite c!1447235 (reg!21516 (Union!21187 r2!6150 r1!6212)) (regOne!42886 (Union!21187 r2!6150 r1!6212)))) (head!16124 s!14231)))))

(declare-fun bm!731027 () Bool)

(assert (=> bm!731027 (= call!731030 call!731031)))

(declare-fun b!7880940 () Bool)

(assert (=> b!7880940 (= e!4654061 (Union!21187 (Concat!30032 call!731030 (regTwo!42886 (Union!21187 r2!6150 r1!6212))) EmptyLang!21187))))

(declare-fun d!2356056 () Bool)

(declare-fun lt!2681286 () Regex!21187)

(assert (=> d!2356056 (validRegex!11597 lt!2681286)))

(assert (=> d!2356056 (= lt!2681286 e!4654060)))

(declare-fun c!1447234 () Bool)

(assert (=> d!2356056 (= c!1447234 (or ((_ is EmptyExpr!21187) (Union!21187 r2!6150 r1!6212)) ((_ is EmptyLang!21187) (Union!21187 r2!6150 r1!6212))))))

(assert (=> d!2356056 (validRegex!11597 (Union!21187 r2!6150 r1!6212))))

(assert (=> d!2356056 (= (derivativeStep!6416 (Union!21187 r2!6150 r1!6212) (head!16124 s!14231)) lt!2681286)))

(declare-fun bm!731028 () Bool)

(assert (=> bm!731028 (= call!731032 (derivativeStep!6416 (ite c!1447233 (regOne!42887 (Union!21187 r2!6150 r1!6212)) (regTwo!42886 (Union!21187 r2!6150 r1!6212))) (head!16124 s!14231)))))

(declare-fun b!7880944 () Bool)

(declare-fun c!1447236 () Bool)

(assert (=> b!7880944 (= c!1447236 (nullable!9446 (regOne!42886 (Union!21187 r2!6150 r1!6212))))))

(assert (=> b!7880944 (= e!4654058 e!4654061)))

(declare-fun b!7880945 () Bool)

(assert (=> b!7880945 (= c!1447233 ((_ is Union!21187) (Union!21187 r2!6150 r1!6212)))))

(assert (=> b!7880945 (= e!4654059 e!4654062)))

(declare-fun b!7880946 () Bool)

(assert (=> b!7880946 (= e!4654060 e!4654059)))

(declare-fun c!1447232 () Bool)

(assert (=> b!7880946 (= c!1447232 ((_ is ElementMatch!21187) (Union!21187 r2!6150 r1!6212)))))

(assert (= (and d!2356056 c!1447234) b!7880941))

(assert (= (and d!2356056 (not c!1447234)) b!7880946))

(assert (= (and b!7880946 c!1447232) b!7880942))

(assert (= (and b!7880946 (not c!1447232)) b!7880945))

(assert (= (and b!7880945 c!1447233) b!7880937))

(assert (= (and b!7880945 (not c!1447233)) b!7880938))

(assert (= (and b!7880938 c!1447235) b!7880939))

(assert (= (and b!7880938 (not c!1447235)) b!7880944))

(assert (= (and b!7880944 c!1447236) b!7880943))

(assert (= (and b!7880944 (not c!1447236)) b!7880940))

(assert (= (or b!7880943 b!7880940) bm!731027))

(assert (= (or b!7880939 bm!731027) bm!731025))

(assert (= (or b!7880937 bm!731025) bm!731026))

(assert (= (or b!7880937 b!7880943) bm!731028))

(assert (=> bm!731026 m!8267838))

(declare-fun m!8268008 () Bool)

(assert (=> bm!731026 m!8268008))

(declare-fun m!8268010 () Bool)

(assert (=> d!2356056 m!8268010))

(assert (=> d!2356056 m!8267890))

(assert (=> bm!731028 m!8267838))

(declare-fun m!8268012 () Bool)

(assert (=> bm!731028 m!8268012))

(declare-fun m!8268014 () Bool)

(assert (=> b!7880944 m!8268014))

(assert (=> b!7880658 d!2356056))

(declare-fun d!2356058 () Bool)

(assert (=> d!2356058 (= (head!16124 s!14231) (h!80370 s!14231))))

(assert (=> b!7880658 d!2356058))

(assert (=> b!7880658 d!2356048))

(declare-fun d!2356060 () Bool)

(assert (=> d!2356060 (= (isEmpty!42413 s!14231) ((_ is Nil!73922) s!14231))))

(assert (=> d!2356026 d!2356060))

(declare-fun c!1447238 () Bool)

(declare-fun call!731036 () Bool)

(declare-fun bm!731029 () Bool)

(assert (=> bm!731029 (= call!731036 (validRegex!11597 (ite c!1447238 (regTwo!42887 (Union!21187 r2!6150 r1!6212)) (regOne!42886 (Union!21187 r2!6150 r1!6212)))))))

(declare-fun bm!731030 () Bool)

(declare-fun call!731034 () Bool)

(declare-fun call!731035 () Bool)

(assert (=> bm!731030 (= call!731034 call!731035)))

(declare-fun c!1447237 () Bool)

(declare-fun bm!731031 () Bool)

(assert (=> bm!731031 (= call!731035 (validRegex!11597 (ite c!1447237 (reg!21516 (Union!21187 r2!6150 r1!6212)) (ite c!1447238 (regOne!42887 (Union!21187 r2!6150 r1!6212)) (regTwo!42886 (Union!21187 r2!6150 r1!6212))))))))

(declare-fun b!7880947 () Bool)

(declare-fun res!3129819 () Bool)

(declare-fun e!4654066 () Bool)

(assert (=> b!7880947 (=> res!3129819 e!4654066)))

(assert (=> b!7880947 (= res!3129819 (not ((_ is Concat!30032) (Union!21187 r2!6150 r1!6212))))))

(declare-fun e!4654063 () Bool)

(assert (=> b!7880947 (= e!4654063 e!4654066)))

(declare-fun b!7880948 () Bool)

(declare-fun res!3129817 () Bool)

(declare-fun e!4654069 () Bool)

(assert (=> b!7880948 (=> (not res!3129817) (not e!4654069))))

(assert (=> b!7880948 (= res!3129817 call!731034)))

(assert (=> b!7880948 (= e!4654063 e!4654069)))

(declare-fun b!7880949 () Bool)

(declare-fun e!4654067 () Bool)

(assert (=> b!7880949 (= e!4654067 call!731034)))

(declare-fun b!7880950 () Bool)

(declare-fun e!4654065 () Bool)

(assert (=> b!7880950 (= e!4654065 e!4654063)))

(assert (=> b!7880950 (= c!1447238 ((_ is Union!21187) (Union!21187 r2!6150 r1!6212)))))

(declare-fun b!7880951 () Bool)

(assert (=> b!7880951 (= e!4654066 e!4654067)))

(declare-fun res!3129818 () Bool)

(assert (=> b!7880951 (=> (not res!3129818) (not e!4654067))))

(assert (=> b!7880951 (= res!3129818 call!731036)))

(declare-fun d!2356062 () Bool)

(declare-fun res!3129816 () Bool)

(declare-fun e!4654064 () Bool)

(assert (=> d!2356062 (=> res!3129816 e!4654064)))

(assert (=> d!2356062 (= res!3129816 ((_ is ElementMatch!21187) (Union!21187 r2!6150 r1!6212)))))

(assert (=> d!2356062 (= (validRegex!11597 (Union!21187 r2!6150 r1!6212)) e!4654064)))

(declare-fun b!7880952 () Bool)

(declare-fun e!4654068 () Bool)

(assert (=> b!7880952 (= e!4654065 e!4654068)))

(declare-fun res!3129815 () Bool)

(assert (=> b!7880952 (= res!3129815 (not (nullable!9446 (reg!21516 (Union!21187 r2!6150 r1!6212)))))))

(assert (=> b!7880952 (=> (not res!3129815) (not e!4654068))))

(declare-fun b!7880953 () Bool)

(assert (=> b!7880953 (= e!4654068 call!731035)))

(declare-fun b!7880954 () Bool)

(assert (=> b!7880954 (= e!4654069 call!731036)))

(declare-fun b!7880955 () Bool)

(assert (=> b!7880955 (= e!4654064 e!4654065)))

(assert (=> b!7880955 (= c!1447237 ((_ is Star!21187) (Union!21187 r2!6150 r1!6212)))))

(assert (= (and d!2356062 (not res!3129816)) b!7880955))

(assert (= (and b!7880955 c!1447237) b!7880952))

(assert (= (and b!7880955 (not c!1447237)) b!7880950))

(assert (= (and b!7880952 res!3129815) b!7880953))

(assert (= (and b!7880950 c!1447238) b!7880948))

(assert (= (and b!7880950 (not c!1447238)) b!7880947))

(assert (= (and b!7880948 res!3129817) b!7880954))

(assert (= (and b!7880947 (not res!3129819)) b!7880951))

(assert (= (and b!7880951 res!3129818) b!7880949))

(assert (= (or b!7880954 b!7880951) bm!731029))

(assert (= (or b!7880948 b!7880949) bm!731030))

(assert (= (or b!7880953 bm!731030) bm!731031))

(declare-fun m!8268016 () Bool)

(assert (=> bm!731029 m!8268016))

(declare-fun m!8268018 () Bool)

(assert (=> bm!731031 m!8268018))

(declare-fun m!8268020 () Bool)

(assert (=> b!7880952 m!8268020))

(assert (=> d!2356026 d!2356062))

(assert (=> bm!730984 d!2356060))

(assert (=> d!2356022 d!2356028))

(declare-fun d!2356064 () Bool)

(assert (=> d!2356064 (matchR!10623 (Union!21187 lt!2681258 lt!2681259) (t!388781 s!14231))))

(assert (=> d!2356064 true))

(declare-fun _$117!239 () Unit!168996)

(assert (=> d!2356064 (= (choose!59695 lt!2681259 lt!2681258 (t!388781 s!14231)) _$117!239)))

(declare-fun bs!1967375 () Bool)

(assert (= bs!1967375 d!2356064))

(assert (=> bs!1967375 m!8267824))

(assert (=> d!2356022 d!2356064))

(declare-fun bm!731032 () Bool)

(declare-fun call!731039 () Bool)

(declare-fun c!1447240 () Bool)

(assert (=> bm!731032 (= call!731039 (validRegex!11597 (ite c!1447240 (regTwo!42887 lt!2681259) (regOne!42886 lt!2681259))))))

(declare-fun bm!731033 () Bool)

(declare-fun call!731037 () Bool)

(declare-fun call!731038 () Bool)

(assert (=> bm!731033 (= call!731037 call!731038)))

(declare-fun bm!731034 () Bool)

(declare-fun c!1447239 () Bool)

(assert (=> bm!731034 (= call!731038 (validRegex!11597 (ite c!1447239 (reg!21516 lt!2681259) (ite c!1447240 (regOne!42887 lt!2681259) (regTwo!42886 lt!2681259)))))))

(declare-fun b!7880956 () Bool)

(declare-fun res!3129824 () Bool)

(declare-fun e!4654073 () Bool)

(assert (=> b!7880956 (=> res!3129824 e!4654073)))

(assert (=> b!7880956 (= res!3129824 (not ((_ is Concat!30032) lt!2681259)))))

(declare-fun e!4654070 () Bool)

(assert (=> b!7880956 (= e!4654070 e!4654073)))

(declare-fun b!7880957 () Bool)

(declare-fun res!3129822 () Bool)

(declare-fun e!4654076 () Bool)

(assert (=> b!7880957 (=> (not res!3129822) (not e!4654076))))

(assert (=> b!7880957 (= res!3129822 call!731037)))

(assert (=> b!7880957 (= e!4654070 e!4654076)))

(declare-fun b!7880958 () Bool)

(declare-fun e!4654074 () Bool)

(assert (=> b!7880958 (= e!4654074 call!731037)))

(declare-fun b!7880959 () Bool)

(declare-fun e!4654072 () Bool)

(assert (=> b!7880959 (= e!4654072 e!4654070)))

(assert (=> b!7880959 (= c!1447240 ((_ is Union!21187) lt!2681259))))

(declare-fun b!7880960 () Bool)

(assert (=> b!7880960 (= e!4654073 e!4654074)))

(declare-fun res!3129823 () Bool)

(assert (=> b!7880960 (=> (not res!3129823) (not e!4654074))))

(assert (=> b!7880960 (= res!3129823 call!731039)))

(declare-fun d!2356066 () Bool)

(declare-fun res!3129821 () Bool)

(declare-fun e!4654071 () Bool)

(assert (=> d!2356066 (=> res!3129821 e!4654071)))

(assert (=> d!2356066 (= res!3129821 ((_ is ElementMatch!21187) lt!2681259))))

(assert (=> d!2356066 (= (validRegex!11597 lt!2681259) e!4654071)))

(declare-fun b!7880961 () Bool)

(declare-fun e!4654075 () Bool)

(assert (=> b!7880961 (= e!4654072 e!4654075)))

(declare-fun res!3129820 () Bool)

(assert (=> b!7880961 (= res!3129820 (not (nullable!9446 (reg!21516 lt!2681259))))))

(assert (=> b!7880961 (=> (not res!3129820) (not e!4654075))))

(declare-fun b!7880962 () Bool)

(assert (=> b!7880962 (= e!4654075 call!731038)))

(declare-fun b!7880963 () Bool)

(assert (=> b!7880963 (= e!4654076 call!731039)))

(declare-fun b!7880964 () Bool)

(assert (=> b!7880964 (= e!4654071 e!4654072)))

(assert (=> b!7880964 (= c!1447239 ((_ is Star!21187) lt!2681259))))

(assert (= (and d!2356066 (not res!3129821)) b!7880964))

(assert (= (and b!7880964 c!1447239) b!7880961))

(assert (= (and b!7880964 (not c!1447239)) b!7880959))

(assert (= (and b!7880961 res!3129820) b!7880962))

(assert (= (and b!7880959 c!1447240) b!7880957))

(assert (= (and b!7880959 (not c!1447240)) b!7880956))

(assert (= (and b!7880957 res!3129822) b!7880963))

(assert (= (and b!7880956 (not res!3129824)) b!7880960))

(assert (= (and b!7880960 res!3129823) b!7880958))

(assert (= (or b!7880963 b!7880960) bm!731032))

(assert (= (or b!7880957 b!7880958) bm!731033))

(assert (= (or b!7880962 bm!731033) bm!731034))

(declare-fun m!8268022 () Bool)

(assert (=> bm!731032 m!8268022))

(declare-fun m!8268024 () Bool)

(assert (=> bm!731034 m!8268024))

(declare-fun m!8268026 () Bool)

(assert (=> b!7880961 m!8268026))

(assert (=> d!2356022 d!2356066))

(declare-fun d!2356068 () Bool)

(assert (=> d!2356068 (= (nullable!9446 (reg!21516 r1!6212)) (nullableFct!3730 (reg!21516 r1!6212)))))

(declare-fun bs!1967376 () Bool)

(assert (= bs!1967376 d!2356068))

(declare-fun m!8268028 () Bool)

(assert (=> bs!1967376 m!8268028))

(assert (=> b!7880607 d!2356068))

(declare-fun bm!731035 () Bool)

(declare-fun call!731040 () Bool)

(assert (=> bm!731035 (= call!731040 (isEmpty!42413 (tail!15667 (t!388781 s!14231))))))

(declare-fun b!7880965 () Bool)

(declare-fun e!4654080 () Bool)

(assert (=> b!7880965 (= e!4654080 (matchR!10623 (derivativeStep!6416 (derivativeStep!6416 (Union!21187 lt!2681258 lt!2681259) (head!16124 (t!388781 s!14231))) (head!16124 (tail!15667 (t!388781 s!14231)))) (tail!15667 (tail!15667 (t!388781 s!14231)))))))

(declare-fun b!7880966 () Bool)

(declare-fun e!4654077 () Bool)

(declare-fun e!4654079 () Bool)

(assert (=> b!7880966 (= e!4654077 e!4654079)))

(declare-fun res!3129829 () Bool)

(assert (=> b!7880966 (=> res!3129829 e!4654079)))

(assert (=> b!7880966 (= res!3129829 call!731040)))

(declare-fun b!7880967 () Bool)

(declare-fun res!3129826 () Bool)

(declare-fun e!4654081 () Bool)

(assert (=> b!7880967 (=> res!3129826 e!4654081)))

(declare-fun e!4654082 () Bool)

(assert (=> b!7880967 (= res!3129826 e!4654082)))

(declare-fun res!3129828 () Bool)

(assert (=> b!7880967 (=> (not res!3129828) (not e!4654082))))

(declare-fun lt!2681287 () Bool)

(assert (=> b!7880967 (= res!3129828 lt!2681287)))

(declare-fun d!2356070 () Bool)

(declare-fun e!4654078 () Bool)

(assert (=> d!2356070 e!4654078))

(declare-fun c!1447242 () Bool)

(assert (=> d!2356070 (= c!1447242 ((_ is EmptyExpr!21187) (derivativeStep!6416 (Union!21187 lt!2681258 lt!2681259) (head!16124 (t!388781 s!14231)))))))

(assert (=> d!2356070 (= lt!2681287 e!4654080)))

(declare-fun c!1447241 () Bool)

(assert (=> d!2356070 (= c!1447241 (isEmpty!42413 (tail!15667 (t!388781 s!14231))))))

(assert (=> d!2356070 (validRegex!11597 (derivativeStep!6416 (Union!21187 lt!2681258 lt!2681259) (head!16124 (t!388781 s!14231))))))

(assert (=> d!2356070 (= (matchR!10623 (derivativeStep!6416 (Union!21187 lt!2681258 lt!2681259) (head!16124 (t!388781 s!14231))) (tail!15667 (t!388781 s!14231))) lt!2681287)))

(declare-fun b!7880968 () Bool)

(declare-fun res!3129827 () Bool)

(assert (=> b!7880968 (=> (not res!3129827) (not e!4654082))))

(assert (=> b!7880968 (= res!3129827 (not call!731040))))

(declare-fun b!7880969 () Bool)

(assert (=> b!7880969 (= e!4654079 (not (= (head!16124 (tail!15667 (t!388781 s!14231))) (c!1447137 (derivativeStep!6416 (Union!21187 lt!2681258 lt!2681259) (head!16124 (t!388781 s!14231)))))))))

(declare-fun b!7880970 () Bool)

(assert (=> b!7880970 (= e!4654082 (= (head!16124 (tail!15667 (t!388781 s!14231))) (c!1447137 (derivativeStep!6416 (Union!21187 lt!2681258 lt!2681259) (head!16124 (t!388781 s!14231))))))))

(declare-fun b!7880971 () Bool)

(declare-fun e!4654083 () Bool)

(assert (=> b!7880971 (= e!4654078 e!4654083)))

(declare-fun c!1447243 () Bool)

(assert (=> b!7880971 (= c!1447243 ((_ is EmptyLang!21187) (derivativeStep!6416 (Union!21187 lt!2681258 lt!2681259) (head!16124 (t!388781 s!14231)))))))

(declare-fun b!7880972 () Bool)

(assert (=> b!7880972 (= e!4654078 (= lt!2681287 call!731040))))

(declare-fun b!7880973 () Bool)

(assert (=> b!7880973 (= e!4654083 (not lt!2681287))))

(declare-fun b!7880974 () Bool)

(declare-fun res!3129830 () Bool)

(assert (=> b!7880974 (=> (not res!3129830) (not e!4654082))))

(assert (=> b!7880974 (= res!3129830 (isEmpty!42413 (tail!15667 (tail!15667 (t!388781 s!14231)))))))

(declare-fun b!7880975 () Bool)

(declare-fun res!3129832 () Bool)

(assert (=> b!7880975 (=> res!3129832 e!4654081)))

(assert (=> b!7880975 (= res!3129832 (not ((_ is ElementMatch!21187) (derivativeStep!6416 (Union!21187 lt!2681258 lt!2681259) (head!16124 (t!388781 s!14231))))))))

(assert (=> b!7880975 (= e!4654083 e!4654081)))

(declare-fun b!7880976 () Bool)

(assert (=> b!7880976 (= e!4654081 e!4654077)))

(declare-fun res!3129831 () Bool)

(assert (=> b!7880976 (=> (not res!3129831) (not e!4654077))))

(assert (=> b!7880976 (= res!3129831 (not lt!2681287))))

(declare-fun b!7880977 () Bool)

(assert (=> b!7880977 (= e!4654080 (nullable!9446 (derivativeStep!6416 (Union!21187 lt!2681258 lt!2681259) (head!16124 (t!388781 s!14231)))))))

(declare-fun b!7880978 () Bool)

(declare-fun res!3129825 () Bool)

(assert (=> b!7880978 (=> res!3129825 e!4654079)))

(assert (=> b!7880978 (= res!3129825 (not (isEmpty!42413 (tail!15667 (tail!15667 (t!388781 s!14231))))))))

(assert (= (and d!2356070 c!1447241) b!7880977))

(assert (= (and d!2356070 (not c!1447241)) b!7880965))

(assert (= (and d!2356070 c!1447242) b!7880972))

(assert (= (and d!2356070 (not c!1447242)) b!7880971))

(assert (= (and b!7880971 c!1447243) b!7880973))

(assert (= (and b!7880971 (not c!1447243)) b!7880975))

(assert (= (and b!7880975 (not res!3129832)) b!7880967))

(assert (= (and b!7880967 res!3129828) b!7880968))

(assert (= (and b!7880968 res!3129827) b!7880974))

(assert (= (and b!7880974 res!3129830) b!7880970))

(assert (= (and b!7880967 (not res!3129826)) b!7880976))

(assert (= (and b!7880976 res!3129831) b!7880966))

(assert (= (and b!7880966 (not res!3129829)) b!7880978))

(assert (= (and b!7880978 (not res!3129825)) b!7880969))

(assert (= (or b!7880972 b!7880966 b!7880968) bm!731035))

(assert (=> d!2356070 m!8267908))

(assert (=> d!2356070 m!8267912))

(assert (=> d!2356070 m!8267906))

(declare-fun m!8268030 () Bool)

(assert (=> d!2356070 m!8268030))

(assert (=> b!7880977 m!8267906))

(declare-fun m!8268032 () Bool)

(assert (=> b!7880977 m!8268032))

(assert (=> b!7880970 m!8267908))

(declare-fun m!8268034 () Bool)

(assert (=> b!7880970 m!8268034))

(assert (=> b!7880965 m!8267908))

(assert (=> b!7880965 m!8268034))

(assert (=> b!7880965 m!8267906))

(assert (=> b!7880965 m!8268034))

(declare-fun m!8268036 () Bool)

(assert (=> b!7880965 m!8268036))

(assert (=> b!7880965 m!8267908))

(declare-fun m!8268038 () Bool)

(assert (=> b!7880965 m!8268038))

(assert (=> b!7880965 m!8268036))

(assert (=> b!7880965 m!8268038))

(declare-fun m!8268040 () Bool)

(assert (=> b!7880965 m!8268040))

(assert (=> b!7880978 m!8267908))

(assert (=> b!7880978 m!8268038))

(assert (=> b!7880978 m!8268038))

(declare-fun m!8268042 () Bool)

(assert (=> b!7880978 m!8268042))

(assert (=> b!7880969 m!8267908))

(assert (=> b!7880969 m!8268034))

(assert (=> b!7880974 m!8267908))

(assert (=> b!7880974 m!8268038))

(assert (=> b!7880974 m!8268038))

(assert (=> b!7880974 m!8268042))

(assert (=> bm!731035 m!8267908))

(assert (=> bm!731035 m!8267912))

(assert (=> b!7880672 d!2356070))

(declare-fun b!7880979 () Bool)

(declare-fun e!4654088 () Regex!21187)

(declare-fun call!731043 () Regex!21187)

(declare-fun call!731044 () Regex!21187)

(assert (=> b!7880979 (= e!4654088 (Union!21187 call!731043 call!731044))))

(declare-fun b!7880980 () Bool)

(declare-fun e!4654084 () Regex!21187)

(assert (=> b!7880980 (= e!4654088 e!4654084)))

(declare-fun c!1447247 () Bool)

(assert (=> b!7880980 (= c!1447247 ((_ is Star!21187) (Union!21187 lt!2681258 lt!2681259)))))

(declare-fun call!731042 () Regex!21187)

(declare-fun b!7880981 () Bool)

(assert (=> b!7880981 (= e!4654084 (Concat!30032 call!731042 (Union!21187 lt!2681258 lt!2681259)))))

(declare-fun bm!731036 () Bool)

(assert (=> bm!731036 (= call!731042 call!731044)))

(declare-fun b!7880983 () Bool)

(declare-fun e!4654086 () Regex!21187)

(assert (=> b!7880983 (= e!4654086 EmptyLang!21187)))

(declare-fun e!4654085 () Regex!21187)

(declare-fun b!7880984 () Bool)

(assert (=> b!7880984 (= e!4654085 (ite (= (head!16124 (t!388781 s!14231)) (c!1447137 (Union!21187 lt!2681258 lt!2681259))) EmptyExpr!21187 EmptyLang!21187))))

(declare-fun call!731041 () Regex!21187)

(declare-fun e!4654087 () Regex!21187)

(declare-fun b!7880985 () Bool)

(assert (=> b!7880985 (= e!4654087 (Union!21187 (Concat!30032 call!731041 (regTwo!42886 (Union!21187 lt!2681258 lt!2681259))) call!731043))))

(declare-fun bm!731037 () Bool)

(declare-fun c!1447245 () Bool)

(assert (=> bm!731037 (= call!731044 (derivativeStep!6416 (ite c!1447245 (regTwo!42887 (Union!21187 lt!2681258 lt!2681259)) (ite c!1447247 (reg!21516 (Union!21187 lt!2681258 lt!2681259)) (regOne!42886 (Union!21187 lt!2681258 lt!2681259)))) (head!16124 (t!388781 s!14231))))))

(declare-fun bm!731038 () Bool)

(assert (=> bm!731038 (= call!731041 call!731042)))

(declare-fun b!7880982 () Bool)

(assert (=> b!7880982 (= e!4654087 (Union!21187 (Concat!30032 call!731041 (regTwo!42886 (Union!21187 lt!2681258 lt!2681259))) EmptyLang!21187))))

(declare-fun d!2356072 () Bool)

(declare-fun lt!2681288 () Regex!21187)

(assert (=> d!2356072 (validRegex!11597 lt!2681288)))

(assert (=> d!2356072 (= lt!2681288 e!4654086)))

(declare-fun c!1447246 () Bool)

(assert (=> d!2356072 (= c!1447246 (or ((_ is EmptyExpr!21187) (Union!21187 lt!2681258 lt!2681259)) ((_ is EmptyLang!21187) (Union!21187 lt!2681258 lt!2681259))))))

(assert (=> d!2356072 (validRegex!11597 (Union!21187 lt!2681258 lt!2681259))))

(assert (=> d!2356072 (= (derivativeStep!6416 (Union!21187 lt!2681258 lt!2681259) (head!16124 (t!388781 s!14231))) lt!2681288)))

(declare-fun bm!731039 () Bool)

(assert (=> bm!731039 (= call!731043 (derivativeStep!6416 (ite c!1447245 (regOne!42887 (Union!21187 lt!2681258 lt!2681259)) (regTwo!42886 (Union!21187 lt!2681258 lt!2681259))) (head!16124 (t!388781 s!14231))))))

(declare-fun b!7880986 () Bool)

(declare-fun c!1447248 () Bool)

(assert (=> b!7880986 (= c!1447248 (nullable!9446 (regOne!42886 (Union!21187 lt!2681258 lt!2681259))))))

(assert (=> b!7880986 (= e!4654084 e!4654087)))

(declare-fun b!7880987 () Bool)

(assert (=> b!7880987 (= c!1447245 ((_ is Union!21187) (Union!21187 lt!2681258 lt!2681259)))))

(assert (=> b!7880987 (= e!4654085 e!4654088)))

(declare-fun b!7880988 () Bool)

(assert (=> b!7880988 (= e!4654086 e!4654085)))

(declare-fun c!1447244 () Bool)

(assert (=> b!7880988 (= c!1447244 ((_ is ElementMatch!21187) (Union!21187 lt!2681258 lt!2681259)))))

(assert (= (and d!2356072 c!1447246) b!7880983))

(assert (= (and d!2356072 (not c!1447246)) b!7880988))

(assert (= (and b!7880988 c!1447244) b!7880984))

(assert (= (and b!7880988 (not c!1447244)) b!7880987))

(assert (= (and b!7880987 c!1447245) b!7880979))

(assert (= (and b!7880987 (not c!1447245)) b!7880980))

(assert (= (and b!7880980 c!1447247) b!7880981))

(assert (= (and b!7880980 (not c!1447247)) b!7880986))

(assert (= (and b!7880986 c!1447248) b!7880985))

(assert (= (and b!7880986 (not c!1447248)) b!7880982))

(assert (= (or b!7880985 b!7880982) bm!731038))

(assert (= (or b!7880981 bm!731038) bm!731036))

(assert (= (or b!7880979 bm!731036) bm!731037))

(assert (= (or b!7880979 b!7880985) bm!731039))

(assert (=> bm!731037 m!8267904))

(declare-fun m!8268044 () Bool)

(assert (=> bm!731037 m!8268044))

(declare-fun m!8268046 () Bool)

(assert (=> d!2356072 m!8268046))

(assert (=> d!2356072 m!8267900))

(assert (=> bm!731039 m!8267904))

(declare-fun m!8268048 () Bool)

(assert (=> bm!731039 m!8268048))

(declare-fun m!8268050 () Bool)

(assert (=> b!7880986 m!8268050))

(assert (=> b!7880672 d!2356072))

(declare-fun d!2356074 () Bool)

(assert (=> d!2356074 (= (head!16124 (t!388781 s!14231)) (h!80370 (t!388781 s!14231)))))

(assert (=> b!7880672 d!2356074))

(declare-fun d!2356076 () Bool)

(assert (=> d!2356076 (= (tail!15667 (t!388781 s!14231)) (t!388781 (t!388781 s!14231)))))

(assert (=> b!7880672 d!2356076))

(declare-fun d!2356078 () Bool)

(assert (=> d!2356078 (= (isEmpty!42413 (t!388781 s!14231)) ((_ is Nil!73922) (t!388781 s!14231)))))

(assert (=> d!2356028 d!2356078))

(declare-fun bm!731040 () Bool)

(declare-fun call!731047 () Bool)

(declare-fun c!1447250 () Bool)

(assert (=> bm!731040 (= call!731047 (validRegex!11597 (ite c!1447250 (regTwo!42887 (Union!21187 lt!2681258 lt!2681259)) (regOne!42886 (Union!21187 lt!2681258 lt!2681259)))))))

(declare-fun bm!731041 () Bool)

(declare-fun call!731045 () Bool)

(declare-fun call!731046 () Bool)

(assert (=> bm!731041 (= call!731045 call!731046)))

(declare-fun c!1447249 () Bool)

(declare-fun bm!731042 () Bool)

(assert (=> bm!731042 (= call!731046 (validRegex!11597 (ite c!1447249 (reg!21516 (Union!21187 lt!2681258 lt!2681259)) (ite c!1447250 (regOne!42887 (Union!21187 lt!2681258 lt!2681259)) (regTwo!42886 (Union!21187 lt!2681258 lt!2681259))))))))

(declare-fun b!7880989 () Bool)

(declare-fun res!3129837 () Bool)

(declare-fun e!4654092 () Bool)

(assert (=> b!7880989 (=> res!3129837 e!4654092)))

(assert (=> b!7880989 (= res!3129837 (not ((_ is Concat!30032) (Union!21187 lt!2681258 lt!2681259))))))

(declare-fun e!4654089 () Bool)

(assert (=> b!7880989 (= e!4654089 e!4654092)))

(declare-fun b!7880990 () Bool)

(declare-fun res!3129835 () Bool)

(declare-fun e!4654095 () Bool)

(assert (=> b!7880990 (=> (not res!3129835) (not e!4654095))))

(assert (=> b!7880990 (= res!3129835 call!731045)))

(assert (=> b!7880990 (= e!4654089 e!4654095)))

(declare-fun b!7880991 () Bool)

(declare-fun e!4654093 () Bool)

(assert (=> b!7880991 (= e!4654093 call!731045)))

(declare-fun b!7880992 () Bool)

(declare-fun e!4654091 () Bool)

(assert (=> b!7880992 (= e!4654091 e!4654089)))

(assert (=> b!7880992 (= c!1447250 ((_ is Union!21187) (Union!21187 lt!2681258 lt!2681259)))))

(declare-fun b!7880993 () Bool)

(assert (=> b!7880993 (= e!4654092 e!4654093)))

(declare-fun res!3129836 () Bool)

(assert (=> b!7880993 (=> (not res!3129836) (not e!4654093))))

(assert (=> b!7880993 (= res!3129836 call!731047)))

(declare-fun d!2356080 () Bool)

(declare-fun res!3129834 () Bool)

(declare-fun e!4654090 () Bool)

(assert (=> d!2356080 (=> res!3129834 e!4654090)))

(assert (=> d!2356080 (= res!3129834 ((_ is ElementMatch!21187) (Union!21187 lt!2681258 lt!2681259)))))

(assert (=> d!2356080 (= (validRegex!11597 (Union!21187 lt!2681258 lt!2681259)) e!4654090)))

(declare-fun b!7880994 () Bool)

(declare-fun e!4654094 () Bool)

(assert (=> b!7880994 (= e!4654091 e!4654094)))

(declare-fun res!3129833 () Bool)

(assert (=> b!7880994 (= res!3129833 (not (nullable!9446 (reg!21516 (Union!21187 lt!2681258 lt!2681259)))))))

(assert (=> b!7880994 (=> (not res!3129833) (not e!4654094))))

(declare-fun b!7880995 () Bool)

(assert (=> b!7880995 (= e!4654094 call!731046)))

(declare-fun b!7880996 () Bool)

(assert (=> b!7880996 (= e!4654095 call!731047)))

(declare-fun b!7880997 () Bool)

(assert (=> b!7880997 (= e!4654090 e!4654091)))

(assert (=> b!7880997 (= c!1447249 ((_ is Star!21187) (Union!21187 lt!2681258 lt!2681259)))))

(assert (= (and d!2356080 (not res!3129834)) b!7880997))

(assert (= (and b!7880997 c!1447249) b!7880994))

(assert (= (and b!7880997 (not c!1447249)) b!7880992))

(assert (= (and b!7880994 res!3129833) b!7880995))

(assert (= (and b!7880992 c!1447250) b!7880990))

(assert (= (and b!7880992 (not c!1447250)) b!7880989))

(assert (= (and b!7880990 res!3129835) b!7880996))

(assert (= (and b!7880989 (not res!3129837)) b!7880993))

(assert (= (and b!7880993 res!3129836) b!7880991))

(assert (= (or b!7880996 b!7880993) bm!731040))

(assert (= (or b!7880990 b!7880991) bm!731041))

(assert (= (or b!7880995 bm!731041) bm!731042))

(declare-fun m!8268052 () Bool)

(assert (=> bm!731040 m!8268052))

(declare-fun m!8268054 () Bool)

(assert (=> bm!731042 m!8268054))

(declare-fun m!8268056 () Bool)

(assert (=> b!7880994 m!8268056))

(assert (=> d!2356028 d!2356080))

(assert (=> bm!730985 d!2356078))

(declare-fun b!7880998 () Bool)

(declare-fun e!4654100 () Regex!21187)

(declare-fun call!731050 () Regex!21187)

(declare-fun call!731051 () Regex!21187)

(assert (=> b!7880998 (= e!4654100 (Union!21187 call!731050 call!731051))))

(declare-fun b!7880999 () Bool)

(declare-fun e!4654096 () Regex!21187)

(assert (=> b!7880999 (= e!4654100 e!4654096)))

(declare-fun c!1447254 () Bool)

(assert (=> b!7880999 (= c!1447254 ((_ is Star!21187) (ite c!1447175 (regTwo!42887 r1!6212) (ite c!1447177 (reg!21516 r1!6212) (regOne!42886 r1!6212)))))))

(declare-fun call!731049 () Regex!21187)

(declare-fun b!7881000 () Bool)

(assert (=> b!7881000 (= e!4654096 (Concat!30032 call!731049 (ite c!1447175 (regTwo!42887 r1!6212) (ite c!1447177 (reg!21516 r1!6212) (regOne!42886 r1!6212)))))))

(declare-fun bm!731043 () Bool)

(assert (=> bm!731043 (= call!731049 call!731051)))

(declare-fun b!7881002 () Bool)

(declare-fun e!4654098 () Regex!21187)

(assert (=> b!7881002 (= e!4654098 EmptyLang!21187)))

(declare-fun e!4654097 () Regex!21187)

(declare-fun b!7881003 () Bool)

(assert (=> b!7881003 (= e!4654097 (ite (= (h!80370 s!14231) (c!1447137 (ite c!1447175 (regTwo!42887 r1!6212) (ite c!1447177 (reg!21516 r1!6212) (regOne!42886 r1!6212))))) EmptyExpr!21187 EmptyLang!21187))))

(declare-fun e!4654099 () Regex!21187)

(declare-fun b!7881004 () Bool)

(declare-fun call!731048 () Regex!21187)

(assert (=> b!7881004 (= e!4654099 (Union!21187 (Concat!30032 call!731048 (regTwo!42886 (ite c!1447175 (regTwo!42887 r1!6212) (ite c!1447177 (reg!21516 r1!6212) (regOne!42886 r1!6212))))) call!731050))))

(declare-fun bm!731044 () Bool)

(declare-fun c!1447252 () Bool)

(assert (=> bm!731044 (= call!731051 (derivativeStep!6416 (ite c!1447252 (regTwo!42887 (ite c!1447175 (regTwo!42887 r1!6212) (ite c!1447177 (reg!21516 r1!6212) (regOne!42886 r1!6212)))) (ite c!1447254 (reg!21516 (ite c!1447175 (regTwo!42887 r1!6212) (ite c!1447177 (reg!21516 r1!6212) (regOne!42886 r1!6212)))) (regOne!42886 (ite c!1447175 (regTwo!42887 r1!6212) (ite c!1447177 (reg!21516 r1!6212) (regOne!42886 r1!6212)))))) (h!80370 s!14231)))))

(declare-fun bm!731045 () Bool)

(assert (=> bm!731045 (= call!731048 call!731049)))

(declare-fun b!7881001 () Bool)

(assert (=> b!7881001 (= e!4654099 (Union!21187 (Concat!30032 call!731048 (regTwo!42886 (ite c!1447175 (regTwo!42887 r1!6212) (ite c!1447177 (reg!21516 r1!6212) (regOne!42886 r1!6212))))) EmptyLang!21187))))

(declare-fun d!2356082 () Bool)

(declare-fun lt!2681289 () Regex!21187)

(assert (=> d!2356082 (validRegex!11597 lt!2681289)))

(assert (=> d!2356082 (= lt!2681289 e!4654098)))

(declare-fun c!1447253 () Bool)

(assert (=> d!2356082 (= c!1447253 (or ((_ is EmptyExpr!21187) (ite c!1447175 (regTwo!42887 r1!6212) (ite c!1447177 (reg!21516 r1!6212) (regOne!42886 r1!6212)))) ((_ is EmptyLang!21187) (ite c!1447175 (regTwo!42887 r1!6212) (ite c!1447177 (reg!21516 r1!6212) (regOne!42886 r1!6212))))))))

(assert (=> d!2356082 (validRegex!11597 (ite c!1447175 (regTwo!42887 r1!6212) (ite c!1447177 (reg!21516 r1!6212) (regOne!42886 r1!6212))))))

(assert (=> d!2356082 (= (derivativeStep!6416 (ite c!1447175 (regTwo!42887 r1!6212) (ite c!1447177 (reg!21516 r1!6212) (regOne!42886 r1!6212))) (h!80370 s!14231)) lt!2681289)))

(declare-fun bm!731046 () Bool)

(assert (=> bm!731046 (= call!731050 (derivativeStep!6416 (ite c!1447252 (regOne!42887 (ite c!1447175 (regTwo!42887 r1!6212) (ite c!1447177 (reg!21516 r1!6212) (regOne!42886 r1!6212)))) (regTwo!42886 (ite c!1447175 (regTwo!42887 r1!6212) (ite c!1447177 (reg!21516 r1!6212) (regOne!42886 r1!6212))))) (h!80370 s!14231)))))

(declare-fun b!7881005 () Bool)

(declare-fun c!1447255 () Bool)

(assert (=> b!7881005 (= c!1447255 (nullable!9446 (regOne!42886 (ite c!1447175 (regTwo!42887 r1!6212) (ite c!1447177 (reg!21516 r1!6212) (regOne!42886 r1!6212))))))))

(assert (=> b!7881005 (= e!4654096 e!4654099)))

(declare-fun b!7881006 () Bool)

(assert (=> b!7881006 (= c!1447252 ((_ is Union!21187) (ite c!1447175 (regTwo!42887 r1!6212) (ite c!1447177 (reg!21516 r1!6212) (regOne!42886 r1!6212)))))))

(assert (=> b!7881006 (= e!4654097 e!4654100)))

(declare-fun b!7881007 () Bool)

(assert (=> b!7881007 (= e!4654098 e!4654097)))

(declare-fun c!1447251 () Bool)

(assert (=> b!7881007 (= c!1447251 ((_ is ElementMatch!21187) (ite c!1447175 (regTwo!42887 r1!6212) (ite c!1447177 (reg!21516 r1!6212) (regOne!42886 r1!6212)))))))

(assert (= (and d!2356082 c!1447253) b!7881002))

(assert (= (and d!2356082 (not c!1447253)) b!7881007))

(assert (= (and b!7881007 c!1447251) b!7881003))

(assert (= (and b!7881007 (not c!1447251)) b!7881006))

(assert (= (and b!7881006 c!1447252) b!7880998))

(assert (= (and b!7881006 (not c!1447252)) b!7880999))

(assert (= (and b!7880999 c!1447254) b!7881000))

(assert (= (and b!7880999 (not c!1447254)) b!7881005))

(assert (= (and b!7881005 c!1447255) b!7881004))

(assert (= (and b!7881005 (not c!1447255)) b!7881001))

(assert (= (or b!7881004 b!7881001) bm!731045))

(assert (= (or b!7881000 bm!731045) bm!731043))

(assert (= (or b!7880998 bm!731043) bm!731044))

(assert (= (or b!7880998 b!7881004) bm!731046))

(declare-fun m!8268058 () Bool)

(assert (=> bm!731044 m!8268058))

(declare-fun m!8268060 () Bool)

(assert (=> d!2356082 m!8268060))

(declare-fun m!8268062 () Bool)

(assert (=> d!2356082 m!8268062))

(declare-fun m!8268064 () Bool)

(assert (=> bm!731046 m!8268064))

(declare-fun m!8268066 () Bool)

(assert (=> b!7881005 m!8268066))

(assert (=> bm!730981 d!2356082))

(assert (=> b!7880663 d!2356058))

(declare-fun d!2356084 () Bool)

(assert (=> d!2356084 (= (nullable!9446 (reg!21516 r2!6150)) (nullableFct!3730 (reg!21516 r2!6150)))))

(declare-fun bs!1967377 () Bool)

(assert (= bs!1967377 d!2356084))

(declare-fun m!8268068 () Bool)

(assert (=> bs!1967377 m!8268068))

(assert (=> b!7880596 d!2356084))

(assert (=> b!7880662 d!2356058))

(declare-fun d!2356086 () Bool)

(assert (=> d!2356086 (= (nullable!9446 (regOne!42886 r1!6212)) (nullableFct!3730 (regOne!42886 r1!6212)))))

(declare-fun bs!1967378 () Bool)

(assert (= bs!1967378 d!2356086))

(declare-fun m!8268070 () Bool)

(assert (=> bs!1967378 m!8268070))

(assert (=> b!7880652 d!2356086))

(declare-fun bm!731047 () Bool)

(declare-fun call!731054 () Bool)

(declare-fun c!1447257 () Bool)

(assert (=> bm!731047 (= call!731054 (validRegex!11597 (ite c!1447257 (regTwo!42887 lt!2681268) (regOne!42886 lt!2681268))))))

(declare-fun bm!731048 () Bool)

(declare-fun call!731052 () Bool)

(declare-fun call!731053 () Bool)

(assert (=> bm!731048 (= call!731052 call!731053)))

(declare-fun c!1447256 () Bool)

(declare-fun bm!731049 () Bool)

(assert (=> bm!731049 (= call!731053 (validRegex!11597 (ite c!1447256 (reg!21516 lt!2681268) (ite c!1447257 (regOne!42887 lt!2681268) (regTwo!42886 lt!2681268)))))))

(declare-fun b!7881008 () Bool)

(declare-fun res!3129842 () Bool)

(declare-fun e!4654104 () Bool)

(assert (=> b!7881008 (=> res!3129842 e!4654104)))

(assert (=> b!7881008 (= res!3129842 (not ((_ is Concat!30032) lt!2681268)))))

(declare-fun e!4654101 () Bool)

(assert (=> b!7881008 (= e!4654101 e!4654104)))

(declare-fun b!7881009 () Bool)

(declare-fun res!3129840 () Bool)

(declare-fun e!4654107 () Bool)

(assert (=> b!7881009 (=> (not res!3129840) (not e!4654107))))

(assert (=> b!7881009 (= res!3129840 call!731052)))

(assert (=> b!7881009 (= e!4654101 e!4654107)))

(declare-fun b!7881010 () Bool)

(declare-fun e!4654105 () Bool)

(assert (=> b!7881010 (= e!4654105 call!731052)))

(declare-fun b!7881011 () Bool)

(declare-fun e!4654103 () Bool)

(assert (=> b!7881011 (= e!4654103 e!4654101)))

(assert (=> b!7881011 (= c!1447257 ((_ is Union!21187) lt!2681268))))

(declare-fun b!7881012 () Bool)

(assert (=> b!7881012 (= e!4654104 e!4654105)))

(declare-fun res!3129841 () Bool)

(assert (=> b!7881012 (=> (not res!3129841) (not e!4654105))))

(assert (=> b!7881012 (= res!3129841 call!731054)))

(declare-fun d!2356088 () Bool)

(declare-fun res!3129839 () Bool)

(declare-fun e!4654102 () Bool)

(assert (=> d!2356088 (=> res!3129839 e!4654102)))

(assert (=> d!2356088 (= res!3129839 ((_ is ElementMatch!21187) lt!2681268))))

(assert (=> d!2356088 (= (validRegex!11597 lt!2681268) e!4654102)))

(declare-fun b!7881013 () Bool)

(declare-fun e!4654106 () Bool)

(assert (=> b!7881013 (= e!4654103 e!4654106)))

(declare-fun res!3129838 () Bool)

(assert (=> b!7881013 (= res!3129838 (not (nullable!9446 (reg!21516 lt!2681268))))))

(assert (=> b!7881013 (=> (not res!3129838) (not e!4654106))))

(declare-fun b!7881014 () Bool)

(assert (=> b!7881014 (= e!4654106 call!731053)))

(declare-fun b!7881015 () Bool)

(assert (=> b!7881015 (= e!4654107 call!731054)))

(declare-fun b!7881016 () Bool)

(assert (=> b!7881016 (= e!4654102 e!4654103)))

(assert (=> b!7881016 (= c!1447256 ((_ is Star!21187) lt!2681268))))

(assert (= (and d!2356088 (not res!3129839)) b!7881016))

(assert (= (and b!7881016 c!1447256) b!7881013))

(assert (= (and b!7881016 (not c!1447256)) b!7881011))

(assert (= (and b!7881013 res!3129838) b!7881014))

(assert (= (and b!7881011 c!1447257) b!7881009))

(assert (= (and b!7881011 (not c!1447257)) b!7881008))

(assert (= (and b!7881009 res!3129840) b!7881015))

(assert (= (and b!7881008 (not res!3129842)) b!7881012))

(assert (= (and b!7881012 res!3129841) b!7881010))

(assert (= (or b!7881015 b!7881012) bm!731047))

(assert (= (or b!7881009 b!7881010) bm!731048))

(assert (= (or b!7881014 bm!731048) bm!731049))

(declare-fun m!8268072 () Bool)

(assert (=> bm!731047 m!8268072))

(declare-fun m!8268074 () Bool)

(assert (=> bm!731049 m!8268074))

(declare-fun m!8268076 () Bool)

(assert (=> b!7881013 m!8268076))

(assert (=> d!2356020 d!2356088))

(assert (=> d!2356020 d!2356018))

(assert (=> b!7880677 d!2356074))

(assert (=> b!7880676 d!2356074))

(declare-fun bm!731050 () Bool)

(declare-fun call!731057 () Bool)

(declare-fun c!1447259 () Bool)

(assert (=> bm!731050 (= call!731057 (validRegex!11597 (ite c!1447259 (regTwo!42887 (ite c!1447160 (regTwo!42887 r1!6212) (regOne!42886 r1!6212))) (regOne!42886 (ite c!1447160 (regTwo!42887 r1!6212) (regOne!42886 r1!6212))))))))

(declare-fun bm!731051 () Bool)

(declare-fun call!731055 () Bool)

(declare-fun call!731056 () Bool)

(assert (=> bm!731051 (= call!731055 call!731056)))

(declare-fun bm!731052 () Bool)

(declare-fun c!1447258 () Bool)

(assert (=> bm!731052 (= call!731056 (validRegex!11597 (ite c!1447258 (reg!21516 (ite c!1447160 (regTwo!42887 r1!6212) (regOne!42886 r1!6212))) (ite c!1447259 (regOne!42887 (ite c!1447160 (regTwo!42887 r1!6212) (regOne!42886 r1!6212))) (regTwo!42886 (ite c!1447160 (regTwo!42887 r1!6212) (regOne!42886 r1!6212)))))))))

(declare-fun b!7881017 () Bool)

(declare-fun res!3129847 () Bool)

(declare-fun e!4654111 () Bool)

(assert (=> b!7881017 (=> res!3129847 e!4654111)))

(assert (=> b!7881017 (= res!3129847 (not ((_ is Concat!30032) (ite c!1447160 (regTwo!42887 r1!6212) (regOne!42886 r1!6212)))))))

(declare-fun e!4654108 () Bool)

(assert (=> b!7881017 (= e!4654108 e!4654111)))

(declare-fun b!7881018 () Bool)

(declare-fun res!3129845 () Bool)

(declare-fun e!4654114 () Bool)

(assert (=> b!7881018 (=> (not res!3129845) (not e!4654114))))

(assert (=> b!7881018 (= res!3129845 call!731055)))

(assert (=> b!7881018 (= e!4654108 e!4654114)))

(declare-fun b!7881019 () Bool)

(declare-fun e!4654112 () Bool)

(assert (=> b!7881019 (= e!4654112 call!731055)))

(declare-fun b!7881020 () Bool)

(declare-fun e!4654110 () Bool)

(assert (=> b!7881020 (= e!4654110 e!4654108)))

(assert (=> b!7881020 (= c!1447259 ((_ is Union!21187) (ite c!1447160 (regTwo!42887 r1!6212) (regOne!42886 r1!6212))))))

(declare-fun b!7881021 () Bool)

(assert (=> b!7881021 (= e!4654111 e!4654112)))

(declare-fun res!3129846 () Bool)

(assert (=> b!7881021 (=> (not res!3129846) (not e!4654112))))

(assert (=> b!7881021 (= res!3129846 call!731057)))

(declare-fun d!2356090 () Bool)

(declare-fun res!3129844 () Bool)

(declare-fun e!4654109 () Bool)

(assert (=> d!2356090 (=> res!3129844 e!4654109)))

(assert (=> d!2356090 (= res!3129844 ((_ is ElementMatch!21187) (ite c!1447160 (regTwo!42887 r1!6212) (regOne!42886 r1!6212))))))

(assert (=> d!2356090 (= (validRegex!11597 (ite c!1447160 (regTwo!42887 r1!6212) (regOne!42886 r1!6212))) e!4654109)))

(declare-fun b!7881022 () Bool)

(declare-fun e!4654113 () Bool)

(assert (=> b!7881022 (= e!4654110 e!4654113)))

(declare-fun res!3129843 () Bool)

(assert (=> b!7881022 (= res!3129843 (not (nullable!9446 (reg!21516 (ite c!1447160 (regTwo!42887 r1!6212) (regOne!42886 r1!6212))))))))

(assert (=> b!7881022 (=> (not res!3129843) (not e!4654113))))

(declare-fun b!7881023 () Bool)

(assert (=> b!7881023 (= e!4654113 call!731056)))

(declare-fun b!7881024 () Bool)

(assert (=> b!7881024 (= e!4654114 call!731057)))

(declare-fun b!7881025 () Bool)

(assert (=> b!7881025 (= e!4654109 e!4654110)))

(assert (=> b!7881025 (= c!1447258 ((_ is Star!21187) (ite c!1447160 (regTwo!42887 r1!6212) (regOne!42886 r1!6212))))))

(assert (= (and d!2356090 (not res!3129844)) b!7881025))

(assert (= (and b!7881025 c!1447258) b!7881022))

(assert (= (and b!7881025 (not c!1447258)) b!7881020))

(assert (= (and b!7881022 res!3129843) b!7881023))

(assert (= (and b!7881020 c!1447259) b!7881018))

(assert (= (and b!7881020 (not c!1447259)) b!7881017))

(assert (= (and b!7881018 res!3129845) b!7881024))

(assert (= (and b!7881017 (not res!3129847)) b!7881021))

(assert (= (and b!7881021 res!3129846) b!7881019))

(assert (= (or b!7881024 b!7881021) bm!731050))

(assert (= (or b!7881018 b!7881019) bm!731051))

(assert (= (or b!7881023 bm!731051) bm!731052))

(declare-fun m!8268078 () Bool)

(assert (=> bm!731050 m!8268078))

(declare-fun m!8268080 () Bool)

(assert (=> bm!731052 m!8268080))

(declare-fun m!8268082 () Bool)

(assert (=> b!7881022 m!8268082))

(assert (=> bm!730966 d!2356090))

(assert (=> bm!730956 d!2356060))

(declare-fun bm!731053 () Bool)

(declare-fun call!731058 () Bool)

(assert (=> bm!731053 (= call!731058 (isEmpty!42413 (tail!15667 s!14231)))))

(declare-fun e!4654118 () Bool)

(declare-fun b!7881026 () Bool)

(assert (=> b!7881026 (= e!4654118 (matchR!10623 (derivativeStep!6416 (derivativeStep!6416 (Union!21187 r1!6212 r2!6150) (head!16124 s!14231)) (head!16124 (tail!15667 s!14231))) (tail!15667 (tail!15667 s!14231))))))

(declare-fun b!7881027 () Bool)

(declare-fun e!4654115 () Bool)

(declare-fun e!4654117 () Bool)

(assert (=> b!7881027 (= e!4654115 e!4654117)))

(declare-fun res!3129852 () Bool)

(assert (=> b!7881027 (=> res!3129852 e!4654117)))

(assert (=> b!7881027 (= res!3129852 call!731058)))

(declare-fun b!7881028 () Bool)

(declare-fun res!3129849 () Bool)

(declare-fun e!4654119 () Bool)

(assert (=> b!7881028 (=> res!3129849 e!4654119)))

(declare-fun e!4654120 () Bool)

(assert (=> b!7881028 (= res!3129849 e!4654120)))

(declare-fun res!3129851 () Bool)

(assert (=> b!7881028 (=> (not res!3129851) (not e!4654120))))

(declare-fun lt!2681290 () Bool)

(assert (=> b!7881028 (= res!3129851 lt!2681290)))

(declare-fun d!2356092 () Bool)

(declare-fun e!4654116 () Bool)

(assert (=> d!2356092 e!4654116))

(declare-fun c!1447261 () Bool)

(assert (=> d!2356092 (= c!1447261 ((_ is EmptyExpr!21187) (derivativeStep!6416 (Union!21187 r1!6212 r2!6150) (head!16124 s!14231))))))

(assert (=> d!2356092 (= lt!2681290 e!4654118)))

(declare-fun c!1447260 () Bool)

(assert (=> d!2356092 (= c!1447260 (isEmpty!42413 (tail!15667 s!14231)))))

(assert (=> d!2356092 (validRegex!11597 (derivativeStep!6416 (Union!21187 r1!6212 r2!6150) (head!16124 s!14231)))))

(assert (=> d!2356092 (= (matchR!10623 (derivativeStep!6416 (Union!21187 r1!6212 r2!6150) (head!16124 s!14231)) (tail!15667 s!14231)) lt!2681290)))

(declare-fun b!7881029 () Bool)

(declare-fun res!3129850 () Bool)

(assert (=> b!7881029 (=> (not res!3129850) (not e!4654120))))

(assert (=> b!7881029 (= res!3129850 (not call!731058))))

(declare-fun b!7881030 () Bool)

(assert (=> b!7881030 (= e!4654117 (not (= (head!16124 (tail!15667 s!14231)) (c!1447137 (derivativeStep!6416 (Union!21187 r1!6212 r2!6150) (head!16124 s!14231))))))))

(declare-fun b!7881031 () Bool)

(assert (=> b!7881031 (= e!4654120 (= (head!16124 (tail!15667 s!14231)) (c!1447137 (derivativeStep!6416 (Union!21187 r1!6212 r2!6150) (head!16124 s!14231)))))))

(declare-fun b!7881032 () Bool)

(declare-fun e!4654121 () Bool)

(assert (=> b!7881032 (= e!4654116 e!4654121)))

(declare-fun c!1447262 () Bool)

(assert (=> b!7881032 (= c!1447262 ((_ is EmptyLang!21187) (derivativeStep!6416 (Union!21187 r1!6212 r2!6150) (head!16124 s!14231))))))

(declare-fun b!7881033 () Bool)

(assert (=> b!7881033 (= e!4654116 (= lt!2681290 call!731058))))

(declare-fun b!7881034 () Bool)

(assert (=> b!7881034 (= e!4654121 (not lt!2681290))))

(declare-fun b!7881035 () Bool)

(declare-fun res!3129853 () Bool)

(assert (=> b!7881035 (=> (not res!3129853) (not e!4654120))))

(assert (=> b!7881035 (= res!3129853 (isEmpty!42413 (tail!15667 (tail!15667 s!14231))))))

(declare-fun b!7881036 () Bool)

(declare-fun res!3129855 () Bool)

(assert (=> b!7881036 (=> res!3129855 e!4654119)))

(assert (=> b!7881036 (= res!3129855 (not ((_ is ElementMatch!21187) (derivativeStep!6416 (Union!21187 r1!6212 r2!6150) (head!16124 s!14231)))))))

(assert (=> b!7881036 (= e!4654121 e!4654119)))

(declare-fun b!7881037 () Bool)

(assert (=> b!7881037 (= e!4654119 e!4654115)))

(declare-fun res!3129854 () Bool)

(assert (=> b!7881037 (=> (not res!3129854) (not e!4654115))))

(assert (=> b!7881037 (= res!3129854 (not lt!2681290))))

(declare-fun b!7881038 () Bool)

(assert (=> b!7881038 (= e!4654118 (nullable!9446 (derivativeStep!6416 (Union!21187 r1!6212 r2!6150) (head!16124 s!14231))))))

(declare-fun b!7881039 () Bool)

(declare-fun res!3129848 () Bool)

(assert (=> b!7881039 (=> res!3129848 e!4654117)))

(assert (=> b!7881039 (= res!3129848 (not (isEmpty!42413 (tail!15667 (tail!15667 s!14231)))))))

(assert (= (and d!2356092 c!1447260) b!7881038))

(assert (= (and d!2356092 (not c!1447260)) b!7881026))

(assert (= (and d!2356092 c!1447261) b!7881033))

(assert (= (and d!2356092 (not c!1447261)) b!7881032))

(assert (= (and b!7881032 c!1447262) b!7881034))

(assert (= (and b!7881032 (not c!1447262)) b!7881036))

(assert (= (and b!7881036 (not res!3129855)) b!7881028))

(assert (= (and b!7881028 res!3129851) b!7881029))

(assert (= (and b!7881029 res!3129850) b!7881035))

(assert (= (and b!7881035 res!3129853) b!7881031))

(assert (= (and b!7881028 (not res!3129849)) b!7881037))

(assert (= (and b!7881037 res!3129854) b!7881027))

(assert (= (and b!7881027 (not res!3129852)) b!7881039))

(assert (= (and b!7881039 (not res!3129848)) b!7881030))

(assert (= (or b!7881033 b!7881027 b!7881029) bm!731053))

(assert (=> d!2356092 m!8267842))

(assert (=> d!2356092 m!8267846))

(assert (=> d!2356092 m!8267840))

(declare-fun m!8268084 () Bool)

(assert (=> d!2356092 m!8268084))

(assert (=> b!7881038 m!8267840))

(declare-fun m!8268086 () Bool)

(assert (=> b!7881038 m!8268086))

(assert (=> b!7881031 m!8267842))

(assert (=> b!7881031 m!8267998))

(assert (=> b!7881026 m!8267842))

(assert (=> b!7881026 m!8267998))

(assert (=> b!7881026 m!8267840))

(assert (=> b!7881026 m!8267998))

(declare-fun m!8268088 () Bool)

(assert (=> b!7881026 m!8268088))

(assert (=> b!7881026 m!8267842))

(assert (=> b!7881026 m!8268002))

(assert (=> b!7881026 m!8268088))

(assert (=> b!7881026 m!8268002))

(declare-fun m!8268090 () Bool)

(assert (=> b!7881026 m!8268090))

(assert (=> b!7881039 m!8267842))

(assert (=> b!7881039 m!8268002))

(assert (=> b!7881039 m!8268002))

(assert (=> b!7881039 m!8268006))

(assert (=> b!7881030 m!8267842))

(assert (=> b!7881030 m!8267998))

(assert (=> b!7881035 m!8267842))

(assert (=> b!7881035 m!8268002))

(assert (=> b!7881035 m!8268002))

(assert (=> b!7881035 m!8268006))

(assert (=> bm!731053 m!8267842))

(assert (=> bm!731053 m!8267846))

(assert (=> b!7880533 d!2356092))

(declare-fun b!7881040 () Bool)

(declare-fun e!4654126 () Regex!21187)

(declare-fun call!731061 () Regex!21187)

(declare-fun call!731062 () Regex!21187)

(assert (=> b!7881040 (= e!4654126 (Union!21187 call!731061 call!731062))))

(declare-fun b!7881041 () Bool)

(declare-fun e!4654122 () Regex!21187)

(assert (=> b!7881041 (= e!4654126 e!4654122)))

(declare-fun c!1447266 () Bool)

(assert (=> b!7881041 (= c!1447266 ((_ is Star!21187) (Union!21187 r1!6212 r2!6150)))))

(declare-fun b!7881042 () Bool)

(declare-fun call!731060 () Regex!21187)

(assert (=> b!7881042 (= e!4654122 (Concat!30032 call!731060 (Union!21187 r1!6212 r2!6150)))))

(declare-fun bm!731054 () Bool)

(assert (=> bm!731054 (= call!731060 call!731062)))

(declare-fun b!7881044 () Bool)

(declare-fun e!4654124 () Regex!21187)

(assert (=> b!7881044 (= e!4654124 EmptyLang!21187)))

(declare-fun e!4654123 () Regex!21187)

(declare-fun b!7881045 () Bool)

(assert (=> b!7881045 (= e!4654123 (ite (= (head!16124 s!14231) (c!1447137 (Union!21187 r1!6212 r2!6150))) EmptyExpr!21187 EmptyLang!21187))))

(declare-fun e!4654125 () Regex!21187)

(declare-fun b!7881046 () Bool)

(declare-fun call!731059 () Regex!21187)

(assert (=> b!7881046 (= e!4654125 (Union!21187 (Concat!30032 call!731059 (regTwo!42886 (Union!21187 r1!6212 r2!6150))) call!731061))))

(declare-fun c!1447264 () Bool)

(declare-fun bm!731055 () Bool)

(assert (=> bm!731055 (= call!731062 (derivativeStep!6416 (ite c!1447264 (regTwo!42887 (Union!21187 r1!6212 r2!6150)) (ite c!1447266 (reg!21516 (Union!21187 r1!6212 r2!6150)) (regOne!42886 (Union!21187 r1!6212 r2!6150)))) (head!16124 s!14231)))))

(declare-fun bm!731056 () Bool)

(assert (=> bm!731056 (= call!731059 call!731060)))

(declare-fun b!7881043 () Bool)

(assert (=> b!7881043 (= e!4654125 (Union!21187 (Concat!30032 call!731059 (regTwo!42886 (Union!21187 r1!6212 r2!6150))) EmptyLang!21187))))

(declare-fun d!2356094 () Bool)

(declare-fun lt!2681291 () Regex!21187)

(assert (=> d!2356094 (validRegex!11597 lt!2681291)))

(assert (=> d!2356094 (= lt!2681291 e!4654124)))

(declare-fun c!1447265 () Bool)

(assert (=> d!2356094 (= c!1447265 (or ((_ is EmptyExpr!21187) (Union!21187 r1!6212 r2!6150)) ((_ is EmptyLang!21187) (Union!21187 r1!6212 r2!6150))))))

(assert (=> d!2356094 (validRegex!11597 (Union!21187 r1!6212 r2!6150))))

(assert (=> d!2356094 (= (derivativeStep!6416 (Union!21187 r1!6212 r2!6150) (head!16124 s!14231)) lt!2681291)))

(declare-fun bm!731057 () Bool)

(assert (=> bm!731057 (= call!731061 (derivativeStep!6416 (ite c!1447264 (regOne!42887 (Union!21187 r1!6212 r2!6150)) (regTwo!42886 (Union!21187 r1!6212 r2!6150))) (head!16124 s!14231)))))

(declare-fun b!7881047 () Bool)

(declare-fun c!1447267 () Bool)

(assert (=> b!7881047 (= c!1447267 (nullable!9446 (regOne!42886 (Union!21187 r1!6212 r2!6150))))))

(assert (=> b!7881047 (= e!4654122 e!4654125)))

(declare-fun b!7881048 () Bool)

(assert (=> b!7881048 (= c!1447264 ((_ is Union!21187) (Union!21187 r1!6212 r2!6150)))))

(assert (=> b!7881048 (= e!4654123 e!4654126)))

(declare-fun b!7881049 () Bool)

(assert (=> b!7881049 (= e!4654124 e!4654123)))

(declare-fun c!1447263 () Bool)

(assert (=> b!7881049 (= c!1447263 ((_ is ElementMatch!21187) (Union!21187 r1!6212 r2!6150)))))

(assert (= (and d!2356094 c!1447265) b!7881044))

(assert (= (and d!2356094 (not c!1447265)) b!7881049))

(assert (= (and b!7881049 c!1447263) b!7881045))

(assert (= (and b!7881049 (not c!1447263)) b!7881048))

(assert (= (and b!7881048 c!1447264) b!7881040))

(assert (= (and b!7881048 (not c!1447264)) b!7881041))

(assert (= (and b!7881041 c!1447266) b!7881042))

(assert (= (and b!7881041 (not c!1447266)) b!7881047))

(assert (= (and b!7881047 c!1447267) b!7881046))

(assert (= (and b!7881047 (not c!1447267)) b!7881043))

(assert (= (or b!7881046 b!7881043) bm!731056))

(assert (= (or b!7881042 bm!731056) bm!731054))

(assert (= (or b!7881040 bm!731054) bm!731055))

(assert (= (or b!7881040 b!7881046) bm!731057))

(assert (=> bm!731055 m!8267838))

(declare-fun m!8268092 () Bool)

(assert (=> bm!731055 m!8268092))

(declare-fun m!8268094 () Bool)

(assert (=> d!2356094 m!8268094))

(assert (=> d!2356094 m!8267834))

(assert (=> bm!731057 m!8267838))

(declare-fun m!8268096 () Bool)

(assert (=> bm!731057 m!8268096))

(declare-fun m!8268098 () Bool)

(assert (=> b!7881047 m!8268098))

(assert (=> b!7880533 d!2356094))

(assert (=> b!7880533 d!2356058))

(assert (=> b!7880533 d!2356048))

(declare-fun b!7881050 () Bool)

(declare-fun e!4654131 () Regex!21187)

(declare-fun call!731065 () Regex!21187)

(declare-fun call!731066 () Regex!21187)

(assert (=> b!7881050 (= e!4654131 (Union!21187 call!731065 call!731066))))

(declare-fun b!7881051 () Bool)

(declare-fun e!4654127 () Regex!21187)

(assert (=> b!7881051 (= e!4654131 e!4654127)))

(declare-fun c!1447271 () Bool)

(assert (=> b!7881051 (= c!1447271 ((_ is Star!21187) (ite c!1447175 (regOne!42887 r1!6212) (regTwo!42886 r1!6212))))))

(declare-fun b!7881052 () Bool)

(declare-fun call!731064 () Regex!21187)

(assert (=> b!7881052 (= e!4654127 (Concat!30032 call!731064 (ite c!1447175 (regOne!42887 r1!6212) (regTwo!42886 r1!6212))))))

(declare-fun bm!731058 () Bool)

(assert (=> bm!731058 (= call!731064 call!731066)))

(declare-fun b!7881054 () Bool)

(declare-fun e!4654129 () Regex!21187)

(assert (=> b!7881054 (= e!4654129 EmptyLang!21187)))

(declare-fun b!7881055 () Bool)

(declare-fun e!4654128 () Regex!21187)

(assert (=> b!7881055 (= e!4654128 (ite (= (h!80370 s!14231) (c!1447137 (ite c!1447175 (regOne!42887 r1!6212) (regTwo!42886 r1!6212)))) EmptyExpr!21187 EmptyLang!21187))))

(declare-fun call!731063 () Regex!21187)

(declare-fun b!7881056 () Bool)

(declare-fun e!4654130 () Regex!21187)

(assert (=> b!7881056 (= e!4654130 (Union!21187 (Concat!30032 call!731063 (regTwo!42886 (ite c!1447175 (regOne!42887 r1!6212) (regTwo!42886 r1!6212)))) call!731065))))

(declare-fun c!1447269 () Bool)

(declare-fun bm!731059 () Bool)

(assert (=> bm!731059 (= call!731066 (derivativeStep!6416 (ite c!1447269 (regTwo!42887 (ite c!1447175 (regOne!42887 r1!6212) (regTwo!42886 r1!6212))) (ite c!1447271 (reg!21516 (ite c!1447175 (regOne!42887 r1!6212) (regTwo!42886 r1!6212))) (regOne!42886 (ite c!1447175 (regOne!42887 r1!6212) (regTwo!42886 r1!6212))))) (h!80370 s!14231)))))

(declare-fun bm!731060 () Bool)

(assert (=> bm!731060 (= call!731063 call!731064)))

(declare-fun b!7881053 () Bool)

(assert (=> b!7881053 (= e!4654130 (Union!21187 (Concat!30032 call!731063 (regTwo!42886 (ite c!1447175 (regOne!42887 r1!6212) (regTwo!42886 r1!6212)))) EmptyLang!21187))))

(declare-fun d!2356096 () Bool)

(declare-fun lt!2681292 () Regex!21187)

(assert (=> d!2356096 (validRegex!11597 lt!2681292)))

(assert (=> d!2356096 (= lt!2681292 e!4654129)))

(declare-fun c!1447270 () Bool)

(assert (=> d!2356096 (= c!1447270 (or ((_ is EmptyExpr!21187) (ite c!1447175 (regOne!42887 r1!6212) (regTwo!42886 r1!6212))) ((_ is EmptyLang!21187) (ite c!1447175 (regOne!42887 r1!6212) (regTwo!42886 r1!6212)))))))

(assert (=> d!2356096 (validRegex!11597 (ite c!1447175 (regOne!42887 r1!6212) (regTwo!42886 r1!6212)))))

(assert (=> d!2356096 (= (derivativeStep!6416 (ite c!1447175 (regOne!42887 r1!6212) (regTwo!42886 r1!6212)) (h!80370 s!14231)) lt!2681292)))

(declare-fun bm!731061 () Bool)

(assert (=> bm!731061 (= call!731065 (derivativeStep!6416 (ite c!1447269 (regOne!42887 (ite c!1447175 (regOne!42887 r1!6212) (regTwo!42886 r1!6212))) (regTwo!42886 (ite c!1447175 (regOne!42887 r1!6212) (regTwo!42886 r1!6212)))) (h!80370 s!14231)))))

(declare-fun b!7881057 () Bool)

(declare-fun c!1447272 () Bool)

(assert (=> b!7881057 (= c!1447272 (nullable!9446 (regOne!42886 (ite c!1447175 (regOne!42887 r1!6212) (regTwo!42886 r1!6212)))))))

(assert (=> b!7881057 (= e!4654127 e!4654130)))

(declare-fun b!7881058 () Bool)

(assert (=> b!7881058 (= c!1447269 ((_ is Union!21187) (ite c!1447175 (regOne!42887 r1!6212) (regTwo!42886 r1!6212))))))

(assert (=> b!7881058 (= e!4654128 e!4654131)))

(declare-fun b!7881059 () Bool)

(assert (=> b!7881059 (= e!4654129 e!4654128)))

(declare-fun c!1447268 () Bool)

(assert (=> b!7881059 (= c!1447268 ((_ is ElementMatch!21187) (ite c!1447175 (regOne!42887 r1!6212) (regTwo!42886 r1!6212))))))

(assert (= (and d!2356096 c!1447270) b!7881054))

(assert (= (and d!2356096 (not c!1447270)) b!7881059))

(assert (= (and b!7881059 c!1447268) b!7881055))

(assert (= (and b!7881059 (not c!1447268)) b!7881058))

(assert (= (and b!7881058 c!1447269) b!7881050))

(assert (= (and b!7881058 (not c!1447269)) b!7881051))

(assert (= (and b!7881051 c!1447271) b!7881052))

(assert (= (and b!7881051 (not c!1447271)) b!7881057))

(assert (= (and b!7881057 c!1447272) b!7881056))

(assert (= (and b!7881057 (not c!1447272)) b!7881053))

(assert (= (or b!7881056 b!7881053) bm!731060))

(assert (= (or b!7881052 bm!731060) bm!731058))

(assert (= (or b!7881050 bm!731058) bm!731059))

(assert (= (or b!7881050 b!7881056) bm!731061))

(declare-fun m!8268100 () Bool)

(assert (=> bm!731059 m!8268100))

(declare-fun m!8268102 () Bool)

(assert (=> d!2356096 m!8268102))

(declare-fun m!8268104 () Bool)

(assert (=> d!2356096 m!8268104))

(declare-fun m!8268106 () Bool)

(assert (=> bm!731061 m!8268106))

(declare-fun m!8268108 () Bool)

(assert (=> b!7881057 m!8268108))

(assert (=> bm!730983 d!2356096))

(assert (=> b!7880667 d!2356046))

(assert (=> b!7880667 d!2356048))

(assert (=> b!7880671 d!2356046))

(assert (=> b!7880671 d!2356048))

(declare-fun c!1447274 () Bool)

(declare-fun call!731069 () Bool)

(declare-fun bm!731062 () Bool)

(assert (=> bm!731062 (= call!731069 (validRegex!11597 (ite c!1447274 (regTwo!42887 (ite c!1447157 (reg!21516 r2!6150) (ite c!1447158 (regOne!42887 r2!6150) (regTwo!42886 r2!6150)))) (regOne!42886 (ite c!1447157 (reg!21516 r2!6150) (ite c!1447158 (regOne!42887 r2!6150) (regTwo!42886 r2!6150)))))))))

(declare-fun bm!731063 () Bool)

(declare-fun call!731067 () Bool)

(declare-fun call!731068 () Bool)

(assert (=> bm!731063 (= call!731067 call!731068)))

(declare-fun bm!731064 () Bool)

(declare-fun c!1447273 () Bool)

(assert (=> bm!731064 (= call!731068 (validRegex!11597 (ite c!1447273 (reg!21516 (ite c!1447157 (reg!21516 r2!6150) (ite c!1447158 (regOne!42887 r2!6150) (regTwo!42886 r2!6150)))) (ite c!1447274 (regOne!42887 (ite c!1447157 (reg!21516 r2!6150) (ite c!1447158 (regOne!42887 r2!6150) (regTwo!42886 r2!6150)))) (regTwo!42886 (ite c!1447157 (reg!21516 r2!6150) (ite c!1447158 (regOne!42887 r2!6150) (regTwo!42886 r2!6150))))))))))

(declare-fun b!7881060 () Bool)

(declare-fun res!3129860 () Bool)

(declare-fun e!4654135 () Bool)

(assert (=> b!7881060 (=> res!3129860 e!4654135)))

(assert (=> b!7881060 (= res!3129860 (not ((_ is Concat!30032) (ite c!1447157 (reg!21516 r2!6150) (ite c!1447158 (regOne!42887 r2!6150) (regTwo!42886 r2!6150))))))))

(declare-fun e!4654132 () Bool)

(assert (=> b!7881060 (= e!4654132 e!4654135)))

(declare-fun b!7881061 () Bool)

(declare-fun res!3129858 () Bool)

(declare-fun e!4654138 () Bool)

(assert (=> b!7881061 (=> (not res!3129858) (not e!4654138))))

(assert (=> b!7881061 (= res!3129858 call!731067)))

(assert (=> b!7881061 (= e!4654132 e!4654138)))

(declare-fun b!7881062 () Bool)

(declare-fun e!4654136 () Bool)

(assert (=> b!7881062 (= e!4654136 call!731067)))

(declare-fun b!7881063 () Bool)

(declare-fun e!4654134 () Bool)

(assert (=> b!7881063 (= e!4654134 e!4654132)))

(assert (=> b!7881063 (= c!1447274 ((_ is Union!21187) (ite c!1447157 (reg!21516 r2!6150) (ite c!1447158 (regOne!42887 r2!6150) (regTwo!42886 r2!6150)))))))

(declare-fun b!7881064 () Bool)

(assert (=> b!7881064 (= e!4654135 e!4654136)))

(declare-fun res!3129859 () Bool)

(assert (=> b!7881064 (=> (not res!3129859) (not e!4654136))))

(assert (=> b!7881064 (= res!3129859 call!731069)))

(declare-fun d!2356098 () Bool)

(declare-fun res!3129857 () Bool)

(declare-fun e!4654133 () Bool)

(assert (=> d!2356098 (=> res!3129857 e!4654133)))

(assert (=> d!2356098 (= res!3129857 ((_ is ElementMatch!21187) (ite c!1447157 (reg!21516 r2!6150) (ite c!1447158 (regOne!42887 r2!6150) (regTwo!42886 r2!6150)))))))

(assert (=> d!2356098 (= (validRegex!11597 (ite c!1447157 (reg!21516 r2!6150) (ite c!1447158 (regOne!42887 r2!6150) (regTwo!42886 r2!6150)))) e!4654133)))

(declare-fun b!7881065 () Bool)

(declare-fun e!4654137 () Bool)

(assert (=> b!7881065 (= e!4654134 e!4654137)))

(declare-fun res!3129856 () Bool)

(assert (=> b!7881065 (= res!3129856 (not (nullable!9446 (reg!21516 (ite c!1447157 (reg!21516 r2!6150) (ite c!1447158 (regOne!42887 r2!6150) (regTwo!42886 r2!6150)))))))))

(assert (=> b!7881065 (=> (not res!3129856) (not e!4654137))))

(declare-fun b!7881066 () Bool)

(assert (=> b!7881066 (= e!4654137 call!731068)))

(declare-fun b!7881067 () Bool)

(assert (=> b!7881067 (= e!4654138 call!731069)))

(declare-fun b!7881068 () Bool)

(assert (=> b!7881068 (= e!4654133 e!4654134)))

(assert (=> b!7881068 (= c!1447273 ((_ is Star!21187) (ite c!1447157 (reg!21516 r2!6150) (ite c!1447158 (regOne!42887 r2!6150) (regTwo!42886 r2!6150)))))))

(assert (= (and d!2356098 (not res!3129857)) b!7881068))

(assert (= (and b!7881068 c!1447273) b!7881065))

(assert (= (and b!7881068 (not c!1447273)) b!7881063))

(assert (= (and b!7881065 res!3129856) b!7881066))

(assert (= (and b!7881063 c!1447274) b!7881061))

(assert (= (and b!7881063 (not c!1447274)) b!7881060))

(assert (= (and b!7881061 res!3129858) b!7881067))

(assert (= (and b!7881060 (not res!3129860)) b!7881064))

(assert (= (and b!7881064 res!3129859) b!7881062))

(assert (= (or b!7881067 b!7881064) bm!731062))

(assert (= (or b!7881061 b!7881062) bm!731063))

(assert (= (or b!7881066 bm!731063) bm!731064))

(declare-fun m!8268110 () Bool)

(assert (=> bm!731062 m!8268110))

(declare-fun m!8268112 () Bool)

(assert (=> bm!731064 m!8268112))

(declare-fun m!8268114 () Bool)

(assert (=> b!7881065 m!8268114))

(assert (=> bm!730965 d!2356098))

(declare-fun bm!731065 () Bool)

(declare-fun call!731072 () Bool)

(declare-fun c!1447276 () Bool)

(assert (=> bm!731065 (= call!731072 (validRegex!11597 (ite c!1447276 (regTwo!42887 lt!2681258) (regOne!42886 lt!2681258))))))

(declare-fun bm!731066 () Bool)

(declare-fun call!731070 () Bool)

(declare-fun call!731071 () Bool)

(assert (=> bm!731066 (= call!731070 call!731071)))

(declare-fun bm!731067 () Bool)

(declare-fun c!1447275 () Bool)

(assert (=> bm!731067 (= call!731071 (validRegex!11597 (ite c!1447275 (reg!21516 lt!2681258) (ite c!1447276 (regOne!42887 lt!2681258) (regTwo!42886 lt!2681258)))))))

(declare-fun b!7881069 () Bool)

(declare-fun res!3129865 () Bool)

(declare-fun e!4654142 () Bool)

(assert (=> b!7881069 (=> res!3129865 e!4654142)))

(assert (=> b!7881069 (= res!3129865 (not ((_ is Concat!30032) lt!2681258)))))

(declare-fun e!4654139 () Bool)

(assert (=> b!7881069 (= e!4654139 e!4654142)))

(declare-fun b!7881070 () Bool)

(declare-fun res!3129863 () Bool)

(declare-fun e!4654145 () Bool)

(assert (=> b!7881070 (=> (not res!3129863) (not e!4654145))))

(assert (=> b!7881070 (= res!3129863 call!731070)))

(assert (=> b!7881070 (= e!4654139 e!4654145)))

(declare-fun b!7881071 () Bool)

(declare-fun e!4654143 () Bool)

(assert (=> b!7881071 (= e!4654143 call!731070)))

(declare-fun b!7881072 () Bool)

(declare-fun e!4654141 () Bool)

(assert (=> b!7881072 (= e!4654141 e!4654139)))

(assert (=> b!7881072 (= c!1447276 ((_ is Union!21187) lt!2681258))))

(declare-fun b!7881073 () Bool)

(assert (=> b!7881073 (= e!4654142 e!4654143)))

(declare-fun res!3129864 () Bool)

(assert (=> b!7881073 (=> (not res!3129864) (not e!4654143))))

(assert (=> b!7881073 (= res!3129864 call!731072)))

(declare-fun d!2356100 () Bool)

(declare-fun res!3129862 () Bool)

(declare-fun e!4654140 () Bool)

(assert (=> d!2356100 (=> res!3129862 e!4654140)))

(assert (=> d!2356100 (= res!3129862 ((_ is ElementMatch!21187) lt!2681258))))

(assert (=> d!2356100 (= (validRegex!11597 lt!2681258) e!4654140)))

(declare-fun b!7881074 () Bool)

(declare-fun e!4654144 () Bool)

(assert (=> b!7881074 (= e!4654141 e!4654144)))

(declare-fun res!3129861 () Bool)

(assert (=> b!7881074 (= res!3129861 (not (nullable!9446 (reg!21516 lt!2681258))))))

(assert (=> b!7881074 (=> (not res!3129861) (not e!4654144))))

(declare-fun b!7881075 () Bool)

(assert (=> b!7881075 (= e!4654144 call!731071)))

(declare-fun b!7881076 () Bool)

(assert (=> b!7881076 (= e!4654145 call!731072)))

(declare-fun b!7881077 () Bool)

(assert (=> b!7881077 (= e!4654140 e!4654141)))

(assert (=> b!7881077 (= c!1447275 ((_ is Star!21187) lt!2681258))))

(assert (= (and d!2356100 (not res!3129862)) b!7881077))

(assert (= (and b!7881077 c!1447275) b!7881074))

(assert (= (and b!7881077 (not c!1447275)) b!7881072))

(assert (= (and b!7881074 res!3129861) b!7881075))

(assert (= (and b!7881072 c!1447276) b!7881070))

(assert (= (and b!7881072 (not c!1447276)) b!7881069))

(assert (= (and b!7881070 res!3129863) b!7881076))

(assert (= (and b!7881069 (not res!3129865)) b!7881073))

(assert (= (and b!7881073 res!3129864) b!7881071))

(assert (= (or b!7881076 b!7881073) bm!731065))

(assert (= (or b!7881070 b!7881071) bm!731066))

(assert (= (or b!7881075 bm!731066) bm!731067))

(declare-fun m!8268116 () Bool)

(assert (=> bm!731065 m!8268116))

(declare-fun m!8268118 () Bool)

(assert (=> bm!731067 m!8268118))

(declare-fun m!8268120 () Bool)

(assert (=> b!7881074 m!8268120))

(assert (=> b!7880657 d!2356100))

(declare-fun d!2356102 () Bool)

(assert (=> d!2356102 (= (nullable!9446 (Union!21187 r2!6150 r1!6212)) (nullableFct!3730 (Union!21187 r2!6150 r1!6212)))))

(declare-fun bs!1967379 () Bool)

(assert (= bs!1967379 d!2356102))

(declare-fun m!8268122 () Bool)

(assert (=> bs!1967379 m!8268122))

(assert (=> b!7880670 d!2356102))

(declare-fun bm!731068 () Bool)

(declare-fun call!731075 () Bool)

(declare-fun c!1447278 () Bool)

(assert (=> bm!731068 (= call!731075 (validRegex!11597 (ite c!1447278 (regTwo!42887 lt!2681274) (regOne!42886 lt!2681274))))))

(declare-fun bm!731069 () Bool)

(declare-fun call!731073 () Bool)

(declare-fun call!731074 () Bool)

(assert (=> bm!731069 (= call!731073 call!731074)))

(declare-fun c!1447277 () Bool)

(declare-fun bm!731070 () Bool)

(assert (=> bm!731070 (= call!731074 (validRegex!11597 (ite c!1447277 (reg!21516 lt!2681274) (ite c!1447278 (regOne!42887 lt!2681274) (regTwo!42886 lt!2681274)))))))

(declare-fun b!7881078 () Bool)

(declare-fun res!3129870 () Bool)

(declare-fun e!4654149 () Bool)

(assert (=> b!7881078 (=> res!3129870 e!4654149)))

(assert (=> b!7881078 (= res!3129870 (not ((_ is Concat!30032) lt!2681274)))))

(declare-fun e!4654146 () Bool)

(assert (=> b!7881078 (= e!4654146 e!4654149)))

(declare-fun b!7881079 () Bool)

(declare-fun res!3129868 () Bool)

(declare-fun e!4654152 () Bool)

(assert (=> b!7881079 (=> (not res!3129868) (not e!4654152))))

(assert (=> b!7881079 (= res!3129868 call!731073)))

(assert (=> b!7881079 (= e!4654146 e!4654152)))

(declare-fun b!7881080 () Bool)

(declare-fun e!4654150 () Bool)

(assert (=> b!7881080 (= e!4654150 call!731073)))

(declare-fun b!7881081 () Bool)

(declare-fun e!4654148 () Bool)

(assert (=> b!7881081 (= e!4654148 e!4654146)))

(assert (=> b!7881081 (= c!1447278 ((_ is Union!21187) lt!2681274))))

(declare-fun b!7881082 () Bool)

(assert (=> b!7881082 (= e!4654149 e!4654150)))

(declare-fun res!3129869 () Bool)

(assert (=> b!7881082 (=> (not res!3129869) (not e!4654150))))

(assert (=> b!7881082 (= res!3129869 call!731075)))

(declare-fun d!2356104 () Bool)

(declare-fun res!3129867 () Bool)

(declare-fun e!4654147 () Bool)

(assert (=> d!2356104 (=> res!3129867 e!4654147)))

(assert (=> d!2356104 (= res!3129867 ((_ is ElementMatch!21187) lt!2681274))))

(assert (=> d!2356104 (= (validRegex!11597 lt!2681274) e!4654147)))

(declare-fun b!7881083 () Bool)

(declare-fun e!4654151 () Bool)

(assert (=> b!7881083 (= e!4654148 e!4654151)))

(declare-fun res!3129866 () Bool)

(assert (=> b!7881083 (= res!3129866 (not (nullable!9446 (reg!21516 lt!2681274))))))

(assert (=> b!7881083 (=> (not res!3129866) (not e!4654151))))

(declare-fun b!7881084 () Bool)

(assert (=> b!7881084 (= e!4654151 call!731074)))

(declare-fun b!7881085 () Bool)

(assert (=> b!7881085 (= e!4654152 call!731075)))

(declare-fun b!7881086 () Bool)

(assert (=> b!7881086 (= e!4654147 e!4654148)))

(assert (=> b!7881086 (= c!1447277 ((_ is Star!21187) lt!2681274))))

(assert (= (and d!2356104 (not res!3129867)) b!7881086))

(assert (= (and b!7881086 c!1447277) b!7881083))

(assert (= (and b!7881086 (not c!1447277)) b!7881081))

(assert (= (and b!7881083 res!3129866) b!7881084))

(assert (= (and b!7881081 c!1447278) b!7881079))

(assert (= (and b!7881081 (not c!1447278)) b!7881078))

(assert (= (and b!7881079 res!3129868) b!7881085))

(assert (= (and b!7881078 (not res!3129870)) b!7881082))

(assert (= (and b!7881082 res!3129869) b!7881080))

(assert (= (or b!7881085 b!7881082) bm!731068))

(assert (= (or b!7881079 b!7881080) bm!731069))

(assert (= (or b!7881084 bm!731069) bm!731070))

(declare-fun m!8268124 () Bool)

(assert (=> bm!731068 m!8268124))

(declare-fun m!8268126 () Bool)

(assert (=> bm!731070 m!8268126))

(declare-fun m!8268128 () Bool)

(assert (=> b!7881083 m!8268128))

(assert (=> d!2356030 d!2356104))

(assert (=> d!2356030 d!2356016))

(assert (=> d!2356012 d!2356060))

(declare-fun bm!731071 () Bool)

(declare-fun call!731078 () Bool)

(declare-fun c!1447280 () Bool)

(assert (=> bm!731071 (= call!731078 (validRegex!11597 (ite c!1447280 (regTwo!42887 (Union!21187 r1!6212 r2!6150)) (regOne!42886 (Union!21187 r1!6212 r2!6150)))))))

(declare-fun bm!731072 () Bool)

(declare-fun call!731076 () Bool)

(declare-fun call!731077 () Bool)

(assert (=> bm!731072 (= call!731076 call!731077)))

(declare-fun c!1447279 () Bool)

(declare-fun bm!731073 () Bool)

(assert (=> bm!731073 (= call!731077 (validRegex!11597 (ite c!1447279 (reg!21516 (Union!21187 r1!6212 r2!6150)) (ite c!1447280 (regOne!42887 (Union!21187 r1!6212 r2!6150)) (regTwo!42886 (Union!21187 r1!6212 r2!6150))))))))

(declare-fun b!7881087 () Bool)

(declare-fun res!3129875 () Bool)

(declare-fun e!4654156 () Bool)

(assert (=> b!7881087 (=> res!3129875 e!4654156)))

(assert (=> b!7881087 (= res!3129875 (not ((_ is Concat!30032) (Union!21187 r1!6212 r2!6150))))))

(declare-fun e!4654153 () Bool)

(assert (=> b!7881087 (= e!4654153 e!4654156)))

(declare-fun b!7881088 () Bool)

(declare-fun res!3129873 () Bool)

(declare-fun e!4654159 () Bool)

(assert (=> b!7881088 (=> (not res!3129873) (not e!4654159))))

(assert (=> b!7881088 (= res!3129873 call!731076)))

(assert (=> b!7881088 (= e!4654153 e!4654159)))

(declare-fun b!7881089 () Bool)

(declare-fun e!4654157 () Bool)

(assert (=> b!7881089 (= e!4654157 call!731076)))

(declare-fun b!7881090 () Bool)

(declare-fun e!4654155 () Bool)

(assert (=> b!7881090 (= e!4654155 e!4654153)))

(assert (=> b!7881090 (= c!1447280 ((_ is Union!21187) (Union!21187 r1!6212 r2!6150)))))

(declare-fun b!7881091 () Bool)

(assert (=> b!7881091 (= e!4654156 e!4654157)))

(declare-fun res!3129874 () Bool)

(assert (=> b!7881091 (=> (not res!3129874) (not e!4654157))))

(assert (=> b!7881091 (= res!3129874 call!731078)))

(declare-fun d!2356106 () Bool)

(declare-fun res!3129872 () Bool)

(declare-fun e!4654154 () Bool)

(assert (=> d!2356106 (=> res!3129872 e!4654154)))

(assert (=> d!2356106 (= res!3129872 ((_ is ElementMatch!21187) (Union!21187 r1!6212 r2!6150)))))

(assert (=> d!2356106 (= (validRegex!11597 (Union!21187 r1!6212 r2!6150)) e!4654154)))

(declare-fun b!7881092 () Bool)

(declare-fun e!4654158 () Bool)

(assert (=> b!7881092 (= e!4654155 e!4654158)))

(declare-fun res!3129871 () Bool)

(assert (=> b!7881092 (= res!3129871 (not (nullable!9446 (reg!21516 (Union!21187 r1!6212 r2!6150)))))))

(assert (=> b!7881092 (=> (not res!3129871) (not e!4654158))))

(declare-fun b!7881093 () Bool)

(assert (=> b!7881093 (= e!4654158 call!731077)))

(declare-fun b!7881094 () Bool)

(assert (=> b!7881094 (= e!4654159 call!731078)))

(declare-fun b!7881095 () Bool)

(assert (=> b!7881095 (= e!4654154 e!4654155)))

(assert (=> b!7881095 (= c!1447279 ((_ is Star!21187) (Union!21187 r1!6212 r2!6150)))))

(assert (= (and d!2356106 (not res!3129872)) b!7881095))

(assert (= (and b!7881095 c!1447279) b!7881092))

(assert (= (and b!7881095 (not c!1447279)) b!7881090))

(assert (= (and b!7881092 res!3129871) b!7881093))

(assert (= (and b!7881090 c!1447280) b!7881088))

(assert (= (and b!7881090 (not c!1447280)) b!7881087))

(assert (= (and b!7881088 res!3129873) b!7881094))

(assert (= (and b!7881087 (not res!3129875)) b!7881091))

(assert (= (and b!7881091 res!3129874) b!7881089))

(assert (= (or b!7881094 b!7881091) bm!731071))

(assert (= (or b!7881088 b!7881089) bm!731072))

(assert (= (or b!7881093 bm!731072) bm!731073))

(declare-fun m!8268130 () Bool)

(assert (=> bm!731071 m!8268130))

(declare-fun m!8268132 () Bool)

(assert (=> bm!731073 m!8268132))

(declare-fun m!8268134 () Bool)

(assert (=> b!7881092 m!8268134))

(assert (=> d!2356012 d!2356106))

(declare-fun d!2356108 () Bool)

(assert (=> d!2356108 (= (isEmpty!42413 (tail!15667 (t!388781 s!14231))) ((_ is Nil!73922) (tail!15667 (t!388781 s!14231))))))

(assert (=> b!7880681 d!2356108))

(assert (=> b!7880681 d!2356076))

(assert (=> b!7880542 d!2356046))

(assert (=> b!7880542 d!2356048))

(assert (=> b!7880537 d!2356058))

(assert (=> b!7880685 d!2356108))

(assert (=> b!7880685 d!2356076))

(assert (=> b!7880538 d!2356058))

(declare-fun call!731081 () Bool)

(declare-fun c!1447282 () Bool)

(declare-fun bm!731074 () Bool)

(assert (=> bm!731074 (= call!731081 (validRegex!11597 (ite c!1447282 (regTwo!42887 (ite c!1447158 (regTwo!42887 r2!6150) (regOne!42886 r2!6150))) (regOne!42886 (ite c!1447158 (regTwo!42887 r2!6150) (regOne!42886 r2!6150))))))))

(declare-fun bm!731075 () Bool)

(declare-fun call!731079 () Bool)

(declare-fun call!731080 () Bool)

(assert (=> bm!731075 (= call!731079 call!731080)))

(declare-fun c!1447281 () Bool)

(declare-fun bm!731076 () Bool)

(assert (=> bm!731076 (= call!731080 (validRegex!11597 (ite c!1447281 (reg!21516 (ite c!1447158 (regTwo!42887 r2!6150) (regOne!42886 r2!6150))) (ite c!1447282 (regOne!42887 (ite c!1447158 (regTwo!42887 r2!6150) (regOne!42886 r2!6150))) (regTwo!42886 (ite c!1447158 (regTwo!42887 r2!6150) (regOne!42886 r2!6150)))))))))

(declare-fun b!7881096 () Bool)

(declare-fun res!3129880 () Bool)

(declare-fun e!4654163 () Bool)

(assert (=> b!7881096 (=> res!3129880 e!4654163)))

(assert (=> b!7881096 (= res!3129880 (not ((_ is Concat!30032) (ite c!1447158 (regTwo!42887 r2!6150) (regOne!42886 r2!6150)))))))

(declare-fun e!4654160 () Bool)

(assert (=> b!7881096 (= e!4654160 e!4654163)))

(declare-fun b!7881097 () Bool)

(declare-fun res!3129878 () Bool)

(declare-fun e!4654166 () Bool)

(assert (=> b!7881097 (=> (not res!3129878) (not e!4654166))))

(assert (=> b!7881097 (= res!3129878 call!731079)))

(assert (=> b!7881097 (= e!4654160 e!4654166)))

(declare-fun b!7881098 () Bool)

(declare-fun e!4654164 () Bool)

(assert (=> b!7881098 (= e!4654164 call!731079)))

(declare-fun b!7881099 () Bool)

(declare-fun e!4654162 () Bool)

(assert (=> b!7881099 (= e!4654162 e!4654160)))

(assert (=> b!7881099 (= c!1447282 ((_ is Union!21187) (ite c!1447158 (regTwo!42887 r2!6150) (regOne!42886 r2!6150))))))

(declare-fun b!7881100 () Bool)

(assert (=> b!7881100 (= e!4654163 e!4654164)))

(declare-fun res!3129879 () Bool)

(assert (=> b!7881100 (=> (not res!3129879) (not e!4654164))))

(assert (=> b!7881100 (= res!3129879 call!731081)))

(declare-fun d!2356110 () Bool)

(declare-fun res!3129877 () Bool)

(declare-fun e!4654161 () Bool)

(assert (=> d!2356110 (=> res!3129877 e!4654161)))

(assert (=> d!2356110 (= res!3129877 ((_ is ElementMatch!21187) (ite c!1447158 (regTwo!42887 r2!6150) (regOne!42886 r2!6150))))))

(assert (=> d!2356110 (= (validRegex!11597 (ite c!1447158 (regTwo!42887 r2!6150) (regOne!42886 r2!6150))) e!4654161)))

(declare-fun b!7881101 () Bool)

(declare-fun e!4654165 () Bool)

(assert (=> b!7881101 (= e!4654162 e!4654165)))

(declare-fun res!3129876 () Bool)

(assert (=> b!7881101 (= res!3129876 (not (nullable!9446 (reg!21516 (ite c!1447158 (regTwo!42887 r2!6150) (regOne!42886 r2!6150))))))))

(assert (=> b!7881101 (=> (not res!3129876) (not e!4654165))))

(declare-fun b!7881102 () Bool)

(assert (=> b!7881102 (= e!4654165 call!731080)))

(declare-fun b!7881103 () Bool)

(assert (=> b!7881103 (= e!4654166 call!731081)))

(declare-fun b!7881104 () Bool)

(assert (=> b!7881104 (= e!4654161 e!4654162)))

(assert (=> b!7881104 (= c!1447281 ((_ is Star!21187) (ite c!1447158 (regTwo!42887 r2!6150) (regOne!42886 r2!6150))))))

(assert (= (and d!2356110 (not res!3129877)) b!7881104))

(assert (= (and b!7881104 c!1447281) b!7881101))

(assert (= (and b!7881104 (not c!1447281)) b!7881099))

(assert (= (and b!7881101 res!3129876) b!7881102))

(assert (= (and b!7881099 c!1447282) b!7881097))

(assert (= (and b!7881099 (not c!1447282)) b!7881096))

(assert (= (and b!7881097 res!3129878) b!7881103))

(assert (= (and b!7881096 (not res!3129880)) b!7881100))

(assert (= (and b!7881100 res!3129879) b!7881098))

(assert (= (or b!7881103 b!7881100) bm!731074))

(assert (= (or b!7881097 b!7881098) bm!731075))

(assert (= (or b!7881102 bm!731075) bm!731076))

(declare-fun m!8268136 () Bool)

(assert (=> bm!731074 m!8268136))

(declare-fun m!8268138 () Bool)

(assert (=> bm!731076 m!8268138))

(declare-fun m!8268140 () Bool)

(assert (=> b!7881101 m!8268140))

(assert (=> bm!730963 d!2356110))

(declare-fun b!7881105 () Bool)

(declare-fun e!4654171 () Regex!21187)

(declare-fun call!731084 () Regex!21187)

(declare-fun call!731085 () Regex!21187)

(assert (=> b!7881105 (= e!4654171 (Union!21187 call!731084 call!731085))))

(declare-fun b!7881106 () Bool)

(declare-fun e!4654167 () Regex!21187)

(assert (=> b!7881106 (= e!4654171 e!4654167)))

(declare-fun c!1447286 () Bool)

(assert (=> b!7881106 (= c!1447286 ((_ is Star!21187) (ite c!1447186 (regTwo!42887 r2!6150) (ite c!1447188 (reg!21516 r2!6150) (regOne!42886 r2!6150)))))))

(declare-fun call!731083 () Regex!21187)

(declare-fun b!7881107 () Bool)

(assert (=> b!7881107 (= e!4654167 (Concat!30032 call!731083 (ite c!1447186 (regTwo!42887 r2!6150) (ite c!1447188 (reg!21516 r2!6150) (regOne!42886 r2!6150)))))))

(declare-fun bm!731077 () Bool)

(assert (=> bm!731077 (= call!731083 call!731085)))

(declare-fun b!7881109 () Bool)

(declare-fun e!4654169 () Regex!21187)

(assert (=> b!7881109 (= e!4654169 EmptyLang!21187)))

(declare-fun b!7881110 () Bool)

(declare-fun e!4654168 () Regex!21187)

(assert (=> b!7881110 (= e!4654168 (ite (= (h!80370 s!14231) (c!1447137 (ite c!1447186 (regTwo!42887 r2!6150) (ite c!1447188 (reg!21516 r2!6150) (regOne!42886 r2!6150))))) EmptyExpr!21187 EmptyLang!21187))))

(declare-fun e!4654170 () Regex!21187)

(declare-fun b!7881111 () Bool)

(declare-fun call!731082 () Regex!21187)

(assert (=> b!7881111 (= e!4654170 (Union!21187 (Concat!30032 call!731082 (regTwo!42886 (ite c!1447186 (regTwo!42887 r2!6150) (ite c!1447188 (reg!21516 r2!6150) (regOne!42886 r2!6150))))) call!731084))))

(declare-fun c!1447284 () Bool)

(declare-fun bm!731078 () Bool)

(assert (=> bm!731078 (= call!731085 (derivativeStep!6416 (ite c!1447284 (regTwo!42887 (ite c!1447186 (regTwo!42887 r2!6150) (ite c!1447188 (reg!21516 r2!6150) (regOne!42886 r2!6150)))) (ite c!1447286 (reg!21516 (ite c!1447186 (regTwo!42887 r2!6150) (ite c!1447188 (reg!21516 r2!6150) (regOne!42886 r2!6150)))) (regOne!42886 (ite c!1447186 (regTwo!42887 r2!6150) (ite c!1447188 (reg!21516 r2!6150) (regOne!42886 r2!6150)))))) (h!80370 s!14231)))))

(declare-fun bm!731079 () Bool)

(assert (=> bm!731079 (= call!731082 call!731083)))

(declare-fun b!7881108 () Bool)

(assert (=> b!7881108 (= e!4654170 (Union!21187 (Concat!30032 call!731082 (regTwo!42886 (ite c!1447186 (regTwo!42887 r2!6150) (ite c!1447188 (reg!21516 r2!6150) (regOne!42886 r2!6150))))) EmptyLang!21187))))

(declare-fun d!2356112 () Bool)

(declare-fun lt!2681293 () Regex!21187)

(assert (=> d!2356112 (validRegex!11597 lt!2681293)))

(assert (=> d!2356112 (= lt!2681293 e!4654169)))

(declare-fun c!1447285 () Bool)

(assert (=> d!2356112 (= c!1447285 (or ((_ is EmptyExpr!21187) (ite c!1447186 (regTwo!42887 r2!6150) (ite c!1447188 (reg!21516 r2!6150) (regOne!42886 r2!6150)))) ((_ is EmptyLang!21187) (ite c!1447186 (regTwo!42887 r2!6150) (ite c!1447188 (reg!21516 r2!6150) (regOne!42886 r2!6150))))))))

(assert (=> d!2356112 (validRegex!11597 (ite c!1447186 (regTwo!42887 r2!6150) (ite c!1447188 (reg!21516 r2!6150) (regOne!42886 r2!6150))))))

(assert (=> d!2356112 (= (derivativeStep!6416 (ite c!1447186 (regTwo!42887 r2!6150) (ite c!1447188 (reg!21516 r2!6150) (regOne!42886 r2!6150))) (h!80370 s!14231)) lt!2681293)))

(declare-fun bm!731080 () Bool)

(assert (=> bm!731080 (= call!731084 (derivativeStep!6416 (ite c!1447284 (regOne!42887 (ite c!1447186 (regTwo!42887 r2!6150) (ite c!1447188 (reg!21516 r2!6150) (regOne!42886 r2!6150)))) (regTwo!42886 (ite c!1447186 (regTwo!42887 r2!6150) (ite c!1447188 (reg!21516 r2!6150) (regOne!42886 r2!6150))))) (h!80370 s!14231)))))

(declare-fun b!7881112 () Bool)

(declare-fun c!1447287 () Bool)

(assert (=> b!7881112 (= c!1447287 (nullable!9446 (regOne!42886 (ite c!1447186 (regTwo!42887 r2!6150) (ite c!1447188 (reg!21516 r2!6150) (regOne!42886 r2!6150))))))))

(assert (=> b!7881112 (= e!4654167 e!4654170)))

(declare-fun b!7881113 () Bool)

(assert (=> b!7881113 (= c!1447284 ((_ is Union!21187) (ite c!1447186 (regTwo!42887 r2!6150) (ite c!1447188 (reg!21516 r2!6150) (regOne!42886 r2!6150)))))))

(assert (=> b!7881113 (= e!4654168 e!4654171)))

(declare-fun b!7881114 () Bool)

(assert (=> b!7881114 (= e!4654169 e!4654168)))

(declare-fun c!1447283 () Bool)

(assert (=> b!7881114 (= c!1447283 ((_ is ElementMatch!21187) (ite c!1447186 (regTwo!42887 r2!6150) (ite c!1447188 (reg!21516 r2!6150) (regOne!42886 r2!6150)))))))

(assert (= (and d!2356112 c!1447285) b!7881109))

(assert (= (and d!2356112 (not c!1447285)) b!7881114))

(assert (= (and b!7881114 c!1447283) b!7881110))

(assert (= (and b!7881114 (not c!1447283)) b!7881113))

(assert (= (and b!7881113 c!1447284) b!7881105))

(assert (= (and b!7881113 (not c!1447284)) b!7881106))

(assert (= (and b!7881106 c!1447286) b!7881107))

(assert (= (and b!7881106 (not c!1447286)) b!7881112))

(assert (= (and b!7881112 c!1447287) b!7881111))

(assert (= (and b!7881112 (not c!1447287)) b!7881108))

(assert (= (or b!7881111 b!7881108) bm!731079))

(assert (= (or b!7881107 bm!731079) bm!731077))

(assert (= (or b!7881105 bm!731077) bm!731078))

(assert (= (or b!7881105 b!7881111) bm!731080))

(declare-fun m!8268142 () Bool)

(assert (=> bm!731078 m!8268142))

(declare-fun m!8268144 () Bool)

(assert (=> d!2356112 m!8268144))

(declare-fun m!8268146 () Bool)

(assert (=> d!2356112 m!8268146))

(declare-fun m!8268148 () Bool)

(assert (=> bm!731080 m!8268148))

(declare-fun m!8268150 () Bool)

(assert (=> b!7881112 m!8268150))

(assert (=> bm!730987 d!2356112))

(declare-fun bm!731081 () Bool)

(declare-fun c!1447289 () Bool)

(declare-fun call!731088 () Bool)

(assert (=> bm!731081 (= call!731088 (validRegex!11597 (ite c!1447289 (regTwo!42887 (ite c!1447159 (reg!21516 r1!6212) (ite c!1447160 (regOne!42887 r1!6212) (regTwo!42886 r1!6212)))) (regOne!42886 (ite c!1447159 (reg!21516 r1!6212) (ite c!1447160 (regOne!42887 r1!6212) (regTwo!42886 r1!6212)))))))))

(declare-fun bm!731082 () Bool)

(declare-fun call!731086 () Bool)

(declare-fun call!731087 () Bool)

(assert (=> bm!731082 (= call!731086 call!731087)))

(declare-fun bm!731083 () Bool)

(declare-fun c!1447288 () Bool)

(assert (=> bm!731083 (= call!731087 (validRegex!11597 (ite c!1447288 (reg!21516 (ite c!1447159 (reg!21516 r1!6212) (ite c!1447160 (regOne!42887 r1!6212) (regTwo!42886 r1!6212)))) (ite c!1447289 (regOne!42887 (ite c!1447159 (reg!21516 r1!6212) (ite c!1447160 (regOne!42887 r1!6212) (regTwo!42886 r1!6212)))) (regTwo!42886 (ite c!1447159 (reg!21516 r1!6212) (ite c!1447160 (regOne!42887 r1!6212) (regTwo!42886 r1!6212))))))))))

(declare-fun b!7881115 () Bool)

(declare-fun res!3129885 () Bool)

(declare-fun e!4654175 () Bool)

(assert (=> b!7881115 (=> res!3129885 e!4654175)))

(assert (=> b!7881115 (= res!3129885 (not ((_ is Concat!30032) (ite c!1447159 (reg!21516 r1!6212) (ite c!1447160 (regOne!42887 r1!6212) (regTwo!42886 r1!6212))))))))

(declare-fun e!4654172 () Bool)

(assert (=> b!7881115 (= e!4654172 e!4654175)))

(declare-fun b!7881116 () Bool)

(declare-fun res!3129883 () Bool)

(declare-fun e!4654178 () Bool)

(assert (=> b!7881116 (=> (not res!3129883) (not e!4654178))))

(assert (=> b!7881116 (= res!3129883 call!731086)))

(assert (=> b!7881116 (= e!4654172 e!4654178)))

(declare-fun b!7881117 () Bool)

(declare-fun e!4654176 () Bool)

(assert (=> b!7881117 (= e!4654176 call!731086)))

(declare-fun b!7881118 () Bool)

(declare-fun e!4654174 () Bool)

(assert (=> b!7881118 (= e!4654174 e!4654172)))

(assert (=> b!7881118 (= c!1447289 ((_ is Union!21187) (ite c!1447159 (reg!21516 r1!6212) (ite c!1447160 (regOne!42887 r1!6212) (regTwo!42886 r1!6212)))))))

(declare-fun b!7881119 () Bool)

(assert (=> b!7881119 (= e!4654175 e!4654176)))

(declare-fun res!3129884 () Bool)

(assert (=> b!7881119 (=> (not res!3129884) (not e!4654176))))

(assert (=> b!7881119 (= res!3129884 call!731088)))

(declare-fun d!2356114 () Bool)

(declare-fun res!3129882 () Bool)

(declare-fun e!4654173 () Bool)

(assert (=> d!2356114 (=> res!3129882 e!4654173)))

(assert (=> d!2356114 (= res!3129882 ((_ is ElementMatch!21187) (ite c!1447159 (reg!21516 r1!6212) (ite c!1447160 (regOne!42887 r1!6212) (regTwo!42886 r1!6212)))))))

(assert (=> d!2356114 (= (validRegex!11597 (ite c!1447159 (reg!21516 r1!6212) (ite c!1447160 (regOne!42887 r1!6212) (regTwo!42886 r1!6212)))) e!4654173)))

(declare-fun b!7881120 () Bool)

(declare-fun e!4654177 () Bool)

(assert (=> b!7881120 (= e!4654174 e!4654177)))

(declare-fun res!3129881 () Bool)

(assert (=> b!7881120 (= res!3129881 (not (nullable!9446 (reg!21516 (ite c!1447159 (reg!21516 r1!6212) (ite c!1447160 (regOne!42887 r1!6212) (regTwo!42886 r1!6212)))))))))

(assert (=> b!7881120 (=> (not res!3129881) (not e!4654177))))

(declare-fun b!7881121 () Bool)

(assert (=> b!7881121 (= e!4654177 call!731087)))

(declare-fun b!7881122 () Bool)

(assert (=> b!7881122 (= e!4654178 call!731088)))

(declare-fun b!7881123 () Bool)

(assert (=> b!7881123 (= e!4654173 e!4654174)))

(assert (=> b!7881123 (= c!1447288 ((_ is Star!21187) (ite c!1447159 (reg!21516 r1!6212) (ite c!1447160 (regOne!42887 r1!6212) (regTwo!42886 r1!6212)))))))

(assert (= (and d!2356114 (not res!3129882)) b!7881123))

(assert (= (and b!7881123 c!1447288) b!7881120))

(assert (= (and b!7881123 (not c!1447288)) b!7881118))

(assert (= (and b!7881120 res!3129881) b!7881121))

(assert (= (and b!7881118 c!1447289) b!7881116))

(assert (= (and b!7881118 (not c!1447289)) b!7881115))

(assert (= (and b!7881116 res!3129883) b!7881122))

(assert (= (and b!7881115 (not res!3129885)) b!7881119))

(assert (= (and b!7881119 res!3129884) b!7881117))

(assert (= (or b!7881122 b!7881119) bm!731081))

(assert (= (or b!7881116 b!7881117) bm!731082))

(assert (= (or b!7881121 bm!731082) bm!731083))

(declare-fun m!8268152 () Bool)

(assert (=> bm!731081 m!8268152))

(declare-fun m!8268154 () Bool)

(assert (=> bm!731083 m!8268154))

(declare-fun m!8268156 () Bool)

(assert (=> b!7881120 m!8268156))

(assert (=> bm!730968 d!2356114))

(declare-fun d!2356116 () Bool)

(assert (=> d!2356116 (= (nullable!9446 (Union!21187 lt!2681258 lt!2681259)) (nullableFct!3730 (Union!21187 lt!2681258 lt!2681259)))))

(declare-fun bs!1967380 () Bool)

(assert (= bs!1967380 d!2356116))

(declare-fun m!8268158 () Bool)

(assert (=> bs!1967380 m!8268158))

(assert (=> b!7880684 d!2356116))

(declare-fun b!7881125 () Bool)

(declare-fun e!4654179 () Bool)

(declare-fun tp!2341805 () Bool)

(declare-fun tp!2341804 () Bool)

(assert (=> b!7881125 (= e!4654179 (and tp!2341805 tp!2341804))))

(assert (=> b!7880740 (= tp!2341727 e!4654179)))

(declare-fun b!7881124 () Bool)

(assert (=> b!7881124 (= e!4654179 tp_is_empty!52773)))

(declare-fun b!7881126 () Bool)

(declare-fun tp!2341807 () Bool)

(assert (=> b!7881126 (= e!4654179 tp!2341807)))

(declare-fun b!7881127 () Bool)

(declare-fun tp!2341803 () Bool)

(declare-fun tp!2341806 () Bool)

(assert (=> b!7881127 (= e!4654179 (and tp!2341803 tp!2341806))))

(assert (= (and b!7880740 ((_ is ElementMatch!21187) (regOne!42886 (regOne!42886 r2!6150)))) b!7881124))

(assert (= (and b!7880740 ((_ is Concat!30032) (regOne!42886 (regOne!42886 r2!6150)))) b!7881125))

(assert (= (and b!7880740 ((_ is Star!21187) (regOne!42886 (regOne!42886 r2!6150)))) b!7881126))

(assert (= (and b!7880740 ((_ is Union!21187) (regOne!42886 (regOne!42886 r2!6150)))) b!7881127))

(declare-fun b!7881129 () Bool)

(declare-fun e!4654180 () Bool)

(declare-fun tp!2341810 () Bool)

(declare-fun tp!2341809 () Bool)

(assert (=> b!7881129 (= e!4654180 (and tp!2341810 tp!2341809))))

(assert (=> b!7880740 (= tp!2341726 e!4654180)))

(declare-fun b!7881128 () Bool)

(assert (=> b!7881128 (= e!4654180 tp_is_empty!52773)))

(declare-fun b!7881130 () Bool)

(declare-fun tp!2341812 () Bool)

(assert (=> b!7881130 (= e!4654180 tp!2341812)))

(declare-fun b!7881131 () Bool)

(declare-fun tp!2341808 () Bool)

(declare-fun tp!2341811 () Bool)

(assert (=> b!7881131 (= e!4654180 (and tp!2341808 tp!2341811))))

(assert (= (and b!7880740 ((_ is ElementMatch!21187) (regTwo!42886 (regOne!42886 r2!6150)))) b!7881128))

(assert (= (and b!7880740 ((_ is Concat!30032) (regTwo!42886 (regOne!42886 r2!6150)))) b!7881129))

(assert (= (and b!7880740 ((_ is Star!21187) (regTwo!42886 (regOne!42886 r2!6150)))) b!7881130))

(assert (= (and b!7880740 ((_ is Union!21187) (regTwo!42886 (regOne!42886 r2!6150)))) b!7881131))

(declare-fun b!7881133 () Bool)

(declare-fun e!4654181 () Bool)

(declare-fun tp!2341815 () Bool)

(declare-fun tp!2341814 () Bool)

(assert (=> b!7881133 (= e!4654181 (and tp!2341815 tp!2341814))))

(assert (=> b!7880749 (= tp!2341739 e!4654181)))

(declare-fun b!7881132 () Bool)

(assert (=> b!7881132 (= e!4654181 tp_is_empty!52773)))

(declare-fun b!7881134 () Bool)

(declare-fun tp!2341817 () Bool)

(assert (=> b!7881134 (= e!4654181 tp!2341817)))

(declare-fun b!7881135 () Bool)

(declare-fun tp!2341813 () Bool)

(declare-fun tp!2341816 () Bool)

(assert (=> b!7881135 (= e!4654181 (and tp!2341813 tp!2341816))))

(assert (= (and b!7880749 ((_ is ElementMatch!21187) (reg!21516 (reg!21516 r2!6150)))) b!7881132))

(assert (= (and b!7880749 ((_ is Concat!30032) (reg!21516 (reg!21516 r2!6150)))) b!7881133))

(assert (= (and b!7880749 ((_ is Star!21187) (reg!21516 (reg!21516 r2!6150)))) b!7881134))

(assert (= (and b!7880749 ((_ is Union!21187) (reg!21516 (reg!21516 r2!6150)))) b!7881135))

(declare-fun b!7881137 () Bool)

(declare-fun e!4654182 () Bool)

(declare-fun tp!2341820 () Bool)

(declare-fun tp!2341819 () Bool)

(assert (=> b!7881137 (= e!4654182 (and tp!2341820 tp!2341819))))

(assert (=> b!7880748 (= tp!2341737 e!4654182)))

(declare-fun b!7881136 () Bool)

(assert (=> b!7881136 (= e!4654182 tp_is_empty!52773)))

(declare-fun b!7881138 () Bool)

(declare-fun tp!2341822 () Bool)

(assert (=> b!7881138 (= e!4654182 tp!2341822)))

(declare-fun b!7881139 () Bool)

(declare-fun tp!2341818 () Bool)

(declare-fun tp!2341821 () Bool)

(assert (=> b!7881139 (= e!4654182 (and tp!2341818 tp!2341821))))

(assert (= (and b!7880748 ((_ is ElementMatch!21187) (regOne!42886 (reg!21516 r2!6150)))) b!7881136))

(assert (= (and b!7880748 ((_ is Concat!30032) (regOne!42886 (reg!21516 r2!6150)))) b!7881137))

(assert (= (and b!7880748 ((_ is Star!21187) (regOne!42886 (reg!21516 r2!6150)))) b!7881138))

(assert (= (and b!7880748 ((_ is Union!21187) (regOne!42886 (reg!21516 r2!6150)))) b!7881139))

(declare-fun b!7881141 () Bool)

(declare-fun e!4654183 () Bool)

(declare-fun tp!2341825 () Bool)

(declare-fun tp!2341824 () Bool)

(assert (=> b!7881141 (= e!4654183 (and tp!2341825 tp!2341824))))

(assert (=> b!7880748 (= tp!2341736 e!4654183)))

(declare-fun b!7881140 () Bool)

(assert (=> b!7881140 (= e!4654183 tp_is_empty!52773)))

(declare-fun b!7881142 () Bool)

(declare-fun tp!2341827 () Bool)

(assert (=> b!7881142 (= e!4654183 tp!2341827)))

(declare-fun b!7881143 () Bool)

(declare-fun tp!2341823 () Bool)

(declare-fun tp!2341826 () Bool)

(assert (=> b!7881143 (= e!4654183 (and tp!2341823 tp!2341826))))

(assert (= (and b!7880748 ((_ is ElementMatch!21187) (regTwo!42886 (reg!21516 r2!6150)))) b!7881140))

(assert (= (and b!7880748 ((_ is Concat!30032) (regTwo!42886 (reg!21516 r2!6150)))) b!7881141))

(assert (= (and b!7880748 ((_ is Star!21187) (regTwo!42886 (reg!21516 r2!6150)))) b!7881142))

(assert (= (and b!7880748 ((_ is Union!21187) (regTwo!42886 (reg!21516 r2!6150)))) b!7881143))

(declare-fun b!7881145 () Bool)

(declare-fun e!4654184 () Bool)

(declare-fun tp!2341830 () Bool)

(declare-fun tp!2341829 () Bool)

(assert (=> b!7881145 (= e!4654184 (and tp!2341830 tp!2341829))))

(assert (=> b!7880724 (= tp!2341707 e!4654184)))

(declare-fun b!7881144 () Bool)

(assert (=> b!7881144 (= e!4654184 tp_is_empty!52773)))

(declare-fun b!7881146 () Bool)

(declare-fun tp!2341832 () Bool)

(assert (=> b!7881146 (= e!4654184 tp!2341832)))

(declare-fun b!7881147 () Bool)

(declare-fun tp!2341828 () Bool)

(declare-fun tp!2341831 () Bool)

(assert (=> b!7881147 (= e!4654184 (and tp!2341828 tp!2341831))))

(assert (= (and b!7880724 ((_ is ElementMatch!21187) (regOne!42886 (regOne!42886 r1!6212)))) b!7881144))

(assert (= (and b!7880724 ((_ is Concat!30032) (regOne!42886 (regOne!42886 r1!6212)))) b!7881145))

(assert (= (and b!7880724 ((_ is Star!21187) (regOne!42886 (regOne!42886 r1!6212)))) b!7881146))

(assert (= (and b!7880724 ((_ is Union!21187) (regOne!42886 (regOne!42886 r1!6212)))) b!7881147))

(declare-fun b!7881149 () Bool)

(declare-fun e!4654185 () Bool)

(declare-fun tp!2341835 () Bool)

(declare-fun tp!2341834 () Bool)

(assert (=> b!7881149 (= e!4654185 (and tp!2341835 tp!2341834))))

(assert (=> b!7880724 (= tp!2341706 e!4654185)))

(declare-fun b!7881148 () Bool)

(assert (=> b!7881148 (= e!4654185 tp_is_empty!52773)))

(declare-fun b!7881150 () Bool)

(declare-fun tp!2341837 () Bool)

(assert (=> b!7881150 (= e!4654185 tp!2341837)))

(declare-fun b!7881151 () Bool)

(declare-fun tp!2341833 () Bool)

(declare-fun tp!2341836 () Bool)

(assert (=> b!7881151 (= e!4654185 (and tp!2341833 tp!2341836))))

(assert (= (and b!7880724 ((_ is ElementMatch!21187) (regTwo!42886 (regOne!42886 r1!6212)))) b!7881148))

(assert (= (and b!7880724 ((_ is Concat!30032) (regTwo!42886 (regOne!42886 r1!6212)))) b!7881149))

(assert (= (and b!7880724 ((_ is Star!21187) (regTwo!42886 (regOne!42886 r1!6212)))) b!7881150))

(assert (= (and b!7880724 ((_ is Union!21187) (regTwo!42886 (regOne!42886 r1!6212)))) b!7881151))

(declare-fun b!7881153 () Bool)

(declare-fun e!4654186 () Bool)

(declare-fun tp!2341840 () Bool)

(declare-fun tp!2341839 () Bool)

(assert (=> b!7881153 (= e!4654186 (and tp!2341840 tp!2341839))))

(assert (=> b!7880709 (= tp!2341687 e!4654186)))

(declare-fun b!7881152 () Bool)

(assert (=> b!7881152 (= e!4654186 tp_is_empty!52773)))

(declare-fun b!7881154 () Bool)

(declare-fun tp!2341842 () Bool)

(assert (=> b!7881154 (= e!4654186 tp!2341842)))

(declare-fun b!7881155 () Bool)

(declare-fun tp!2341838 () Bool)

(declare-fun tp!2341841 () Bool)

(assert (=> b!7881155 (= e!4654186 (and tp!2341838 tp!2341841))))

(assert (= (and b!7880709 ((_ is ElementMatch!21187) (regOne!42887 (reg!21516 r1!6212)))) b!7881152))

(assert (= (and b!7880709 ((_ is Concat!30032) (regOne!42887 (reg!21516 r1!6212)))) b!7881153))

(assert (= (and b!7880709 ((_ is Star!21187) (regOne!42887 (reg!21516 r1!6212)))) b!7881154))

(assert (= (and b!7880709 ((_ is Union!21187) (regOne!42887 (reg!21516 r1!6212)))) b!7881155))

(declare-fun b!7881157 () Bool)

(declare-fun e!4654187 () Bool)

(declare-fun tp!2341845 () Bool)

(declare-fun tp!2341844 () Bool)

(assert (=> b!7881157 (= e!4654187 (and tp!2341845 tp!2341844))))

(assert (=> b!7880709 (= tp!2341690 e!4654187)))

(declare-fun b!7881156 () Bool)

(assert (=> b!7881156 (= e!4654187 tp_is_empty!52773)))

(declare-fun b!7881158 () Bool)

(declare-fun tp!2341847 () Bool)

(assert (=> b!7881158 (= e!4654187 tp!2341847)))

(declare-fun b!7881159 () Bool)

(declare-fun tp!2341843 () Bool)

(declare-fun tp!2341846 () Bool)

(assert (=> b!7881159 (= e!4654187 (and tp!2341843 tp!2341846))))

(assert (= (and b!7880709 ((_ is ElementMatch!21187) (regTwo!42887 (reg!21516 r1!6212)))) b!7881156))

(assert (= (and b!7880709 ((_ is Concat!30032) (regTwo!42887 (reg!21516 r1!6212)))) b!7881157))

(assert (= (and b!7880709 ((_ is Star!21187) (regTwo!42887 (reg!21516 r1!6212)))) b!7881158))

(assert (= (and b!7880709 ((_ is Union!21187) (regTwo!42887 (reg!21516 r1!6212)))) b!7881159))

(declare-fun b!7881161 () Bool)

(declare-fun e!4654188 () Bool)

(declare-fun tp!2341850 () Bool)

(declare-fun tp!2341849 () Bool)

(assert (=> b!7881161 (= e!4654188 (and tp!2341850 tp!2341849))))

(assert (=> b!7880733 (= tp!2341719 e!4654188)))

(declare-fun b!7881160 () Bool)

(assert (=> b!7881160 (= e!4654188 tp_is_empty!52773)))

(declare-fun b!7881162 () Bool)

(declare-fun tp!2341852 () Bool)

(assert (=> b!7881162 (= e!4654188 tp!2341852)))

(declare-fun b!7881163 () Bool)

(declare-fun tp!2341848 () Bool)

(declare-fun tp!2341851 () Bool)

(assert (=> b!7881163 (= e!4654188 (and tp!2341848 tp!2341851))))

(assert (= (and b!7880733 ((_ is ElementMatch!21187) (reg!21516 (regOne!42887 r2!6150)))) b!7881160))

(assert (= (and b!7880733 ((_ is Concat!30032) (reg!21516 (regOne!42887 r2!6150)))) b!7881161))

(assert (= (and b!7880733 ((_ is Star!21187) (reg!21516 (regOne!42887 r2!6150)))) b!7881162))

(assert (= (and b!7880733 ((_ is Union!21187) (reg!21516 (regOne!42887 r2!6150)))) b!7881163))

(declare-fun b!7881165 () Bool)

(declare-fun e!4654189 () Bool)

(declare-fun tp!2341855 () Bool)

(declare-fun tp!2341854 () Bool)

(assert (=> b!7881165 (= e!4654189 (and tp!2341855 tp!2341854))))

(assert (=> b!7880742 (= tp!2341725 e!4654189)))

(declare-fun b!7881164 () Bool)

(assert (=> b!7881164 (= e!4654189 tp_is_empty!52773)))

(declare-fun b!7881166 () Bool)

(declare-fun tp!2341857 () Bool)

(assert (=> b!7881166 (= e!4654189 tp!2341857)))

(declare-fun b!7881167 () Bool)

(declare-fun tp!2341853 () Bool)

(declare-fun tp!2341856 () Bool)

(assert (=> b!7881167 (= e!4654189 (and tp!2341853 tp!2341856))))

(assert (= (and b!7880742 ((_ is ElementMatch!21187) (regOne!42887 (regOne!42886 r2!6150)))) b!7881164))

(assert (= (and b!7880742 ((_ is Concat!30032) (regOne!42887 (regOne!42886 r2!6150)))) b!7881165))

(assert (= (and b!7880742 ((_ is Star!21187) (regOne!42887 (regOne!42886 r2!6150)))) b!7881166))

(assert (= (and b!7880742 ((_ is Union!21187) (regOne!42887 (regOne!42886 r2!6150)))) b!7881167))

(declare-fun b!7881169 () Bool)

(declare-fun e!4654190 () Bool)

(declare-fun tp!2341860 () Bool)

(declare-fun tp!2341859 () Bool)

(assert (=> b!7881169 (= e!4654190 (and tp!2341860 tp!2341859))))

(assert (=> b!7880742 (= tp!2341728 e!4654190)))

(declare-fun b!7881168 () Bool)

(assert (=> b!7881168 (= e!4654190 tp_is_empty!52773)))

(declare-fun b!7881170 () Bool)

(declare-fun tp!2341862 () Bool)

(assert (=> b!7881170 (= e!4654190 tp!2341862)))

(declare-fun b!7881171 () Bool)

(declare-fun tp!2341858 () Bool)

(declare-fun tp!2341861 () Bool)

(assert (=> b!7881171 (= e!4654190 (and tp!2341858 tp!2341861))))

(assert (= (and b!7880742 ((_ is ElementMatch!21187) (regTwo!42887 (regOne!42886 r2!6150)))) b!7881168))

(assert (= (and b!7880742 ((_ is Concat!30032) (regTwo!42887 (regOne!42886 r2!6150)))) b!7881169))

(assert (= (and b!7880742 ((_ is Star!21187) (regTwo!42887 (regOne!42886 r2!6150)))) b!7881170))

(assert (= (and b!7880742 ((_ is Union!21187) (regTwo!42887 (regOne!42886 r2!6150)))) b!7881171))

(declare-fun b!7881173 () Bool)

(declare-fun e!4654191 () Bool)

(declare-fun tp!2341865 () Bool)

(declare-fun tp!2341864 () Bool)

(assert (=> b!7881173 (= e!4654191 (and tp!2341865 tp!2341864))))

(assert (=> b!7880708 (= tp!2341691 e!4654191)))

(declare-fun b!7881172 () Bool)

(assert (=> b!7881172 (= e!4654191 tp_is_empty!52773)))

(declare-fun b!7881174 () Bool)

(declare-fun tp!2341867 () Bool)

(assert (=> b!7881174 (= e!4654191 tp!2341867)))

(declare-fun b!7881175 () Bool)

(declare-fun tp!2341863 () Bool)

(declare-fun tp!2341866 () Bool)

(assert (=> b!7881175 (= e!4654191 (and tp!2341863 tp!2341866))))

(assert (= (and b!7880708 ((_ is ElementMatch!21187) (reg!21516 (reg!21516 r1!6212)))) b!7881172))

(assert (= (and b!7880708 ((_ is Concat!30032) (reg!21516 (reg!21516 r1!6212)))) b!7881173))

(assert (= (and b!7880708 ((_ is Star!21187) (reg!21516 (reg!21516 r1!6212)))) b!7881174))

(assert (= (and b!7880708 ((_ is Union!21187) (reg!21516 (reg!21516 r1!6212)))) b!7881175))

(declare-fun b!7881177 () Bool)

(declare-fun e!4654192 () Bool)

(declare-fun tp!2341870 () Bool)

(declare-fun tp!2341869 () Bool)

(assert (=> b!7881177 (= e!4654192 (and tp!2341870 tp!2341869))))

(assert (=> b!7880732 (= tp!2341717 e!4654192)))

(declare-fun b!7881176 () Bool)

(assert (=> b!7881176 (= e!4654192 tp_is_empty!52773)))

(declare-fun b!7881178 () Bool)

(declare-fun tp!2341872 () Bool)

(assert (=> b!7881178 (= e!4654192 tp!2341872)))

(declare-fun b!7881179 () Bool)

(declare-fun tp!2341868 () Bool)

(declare-fun tp!2341871 () Bool)

(assert (=> b!7881179 (= e!4654192 (and tp!2341868 tp!2341871))))

(assert (= (and b!7880732 ((_ is ElementMatch!21187) (regOne!42886 (regOne!42887 r2!6150)))) b!7881176))

(assert (= (and b!7880732 ((_ is Concat!30032) (regOne!42886 (regOne!42887 r2!6150)))) b!7881177))

(assert (= (and b!7880732 ((_ is Star!21187) (regOne!42886 (regOne!42887 r2!6150)))) b!7881178))

(assert (= (and b!7880732 ((_ is Union!21187) (regOne!42886 (regOne!42887 r2!6150)))) b!7881179))

(declare-fun b!7881181 () Bool)

(declare-fun e!4654193 () Bool)

(declare-fun tp!2341875 () Bool)

(declare-fun tp!2341874 () Bool)

(assert (=> b!7881181 (= e!4654193 (and tp!2341875 tp!2341874))))

(assert (=> b!7880732 (= tp!2341716 e!4654193)))

(declare-fun b!7881180 () Bool)

(assert (=> b!7881180 (= e!4654193 tp_is_empty!52773)))

(declare-fun b!7881182 () Bool)

(declare-fun tp!2341877 () Bool)

(assert (=> b!7881182 (= e!4654193 tp!2341877)))

(declare-fun b!7881183 () Bool)

(declare-fun tp!2341873 () Bool)

(declare-fun tp!2341876 () Bool)

(assert (=> b!7881183 (= e!4654193 (and tp!2341873 tp!2341876))))

(assert (= (and b!7880732 ((_ is ElementMatch!21187) (regTwo!42886 (regOne!42887 r2!6150)))) b!7881180))

(assert (= (and b!7880732 ((_ is Concat!30032) (regTwo!42886 (regOne!42887 r2!6150)))) b!7881181))

(assert (= (and b!7880732 ((_ is Star!21187) (regTwo!42886 (regOne!42887 r2!6150)))) b!7881182))

(assert (= (and b!7880732 ((_ is Union!21187) (regTwo!42886 (regOne!42887 r2!6150)))) b!7881183))

(declare-fun b!7881185 () Bool)

(declare-fun e!4654194 () Bool)

(declare-fun tp!2341880 () Bool)

(declare-fun tp!2341879 () Bool)

(assert (=> b!7881185 (= e!4654194 (and tp!2341880 tp!2341879))))

(assert (=> b!7880741 (= tp!2341729 e!4654194)))

(declare-fun b!7881184 () Bool)

(assert (=> b!7881184 (= e!4654194 tp_is_empty!52773)))

(declare-fun b!7881186 () Bool)

(declare-fun tp!2341882 () Bool)

(assert (=> b!7881186 (= e!4654194 tp!2341882)))

(declare-fun b!7881187 () Bool)

(declare-fun tp!2341878 () Bool)

(declare-fun tp!2341881 () Bool)

(assert (=> b!7881187 (= e!4654194 (and tp!2341878 tp!2341881))))

(assert (= (and b!7880741 ((_ is ElementMatch!21187) (reg!21516 (regOne!42886 r2!6150)))) b!7881184))

(assert (= (and b!7880741 ((_ is Concat!30032) (reg!21516 (regOne!42886 r2!6150)))) b!7881185))

(assert (= (and b!7880741 ((_ is Star!21187) (reg!21516 (regOne!42886 r2!6150)))) b!7881186))

(assert (= (and b!7880741 ((_ is Union!21187) (reg!21516 (regOne!42886 r2!6150)))) b!7881187))

(declare-fun b!7881189 () Bool)

(declare-fun e!4654195 () Bool)

(declare-fun tp!2341885 () Bool)

(declare-fun tp!2341884 () Bool)

(assert (=> b!7881189 (= e!4654195 (and tp!2341885 tp!2341884))))

(assert (=> b!7880750 (= tp!2341735 e!4654195)))

(declare-fun b!7881188 () Bool)

(assert (=> b!7881188 (= e!4654195 tp_is_empty!52773)))

(declare-fun b!7881190 () Bool)

(declare-fun tp!2341887 () Bool)

(assert (=> b!7881190 (= e!4654195 tp!2341887)))

(declare-fun b!7881191 () Bool)

(declare-fun tp!2341883 () Bool)

(declare-fun tp!2341886 () Bool)

(assert (=> b!7881191 (= e!4654195 (and tp!2341883 tp!2341886))))

(assert (= (and b!7880750 ((_ is ElementMatch!21187) (regOne!42887 (reg!21516 r2!6150)))) b!7881188))

(assert (= (and b!7880750 ((_ is Concat!30032) (regOne!42887 (reg!21516 r2!6150)))) b!7881189))

(assert (= (and b!7880750 ((_ is Star!21187) (regOne!42887 (reg!21516 r2!6150)))) b!7881190))

(assert (= (and b!7880750 ((_ is Union!21187) (regOne!42887 (reg!21516 r2!6150)))) b!7881191))

(declare-fun b!7881193 () Bool)

(declare-fun e!4654196 () Bool)

(declare-fun tp!2341890 () Bool)

(declare-fun tp!2341889 () Bool)

(assert (=> b!7881193 (= e!4654196 (and tp!2341890 tp!2341889))))

(assert (=> b!7880750 (= tp!2341738 e!4654196)))

(declare-fun b!7881192 () Bool)

(assert (=> b!7881192 (= e!4654196 tp_is_empty!52773)))

(declare-fun b!7881194 () Bool)

(declare-fun tp!2341892 () Bool)

(assert (=> b!7881194 (= e!4654196 tp!2341892)))

(declare-fun b!7881195 () Bool)

(declare-fun tp!2341888 () Bool)

(declare-fun tp!2341891 () Bool)

(assert (=> b!7881195 (= e!4654196 (and tp!2341888 tp!2341891))))

(assert (= (and b!7880750 ((_ is ElementMatch!21187) (regTwo!42887 (reg!21516 r2!6150)))) b!7881192))

(assert (= (and b!7880750 ((_ is Concat!30032) (regTwo!42887 (reg!21516 r2!6150)))) b!7881193))

(assert (= (and b!7880750 ((_ is Star!21187) (regTwo!42887 (reg!21516 r2!6150)))) b!7881194))

(assert (= (and b!7880750 ((_ is Union!21187) (regTwo!42887 (reg!21516 r2!6150)))) b!7881195))

(declare-fun b!7881197 () Bool)

(declare-fun e!4654197 () Bool)

(declare-fun tp!2341895 () Bool)

(declare-fun tp!2341894 () Bool)

(assert (=> b!7881197 (= e!4654197 (and tp!2341895 tp!2341894))))

(assert (=> b!7880707 (= tp!2341689 e!4654197)))

(declare-fun b!7881196 () Bool)

(assert (=> b!7881196 (= e!4654197 tp_is_empty!52773)))

(declare-fun b!7881198 () Bool)

(declare-fun tp!2341897 () Bool)

(assert (=> b!7881198 (= e!4654197 tp!2341897)))

(declare-fun b!7881199 () Bool)

(declare-fun tp!2341893 () Bool)

(declare-fun tp!2341896 () Bool)

(assert (=> b!7881199 (= e!4654197 (and tp!2341893 tp!2341896))))

(assert (= (and b!7880707 ((_ is ElementMatch!21187) (regOne!42886 (reg!21516 r1!6212)))) b!7881196))

(assert (= (and b!7880707 ((_ is Concat!30032) (regOne!42886 (reg!21516 r1!6212)))) b!7881197))

(assert (= (and b!7880707 ((_ is Star!21187) (regOne!42886 (reg!21516 r1!6212)))) b!7881198))

(assert (= (and b!7880707 ((_ is Union!21187) (regOne!42886 (reg!21516 r1!6212)))) b!7881199))

(declare-fun b!7881201 () Bool)

(declare-fun e!4654198 () Bool)

(declare-fun tp!2341900 () Bool)

(declare-fun tp!2341899 () Bool)

(assert (=> b!7881201 (= e!4654198 (and tp!2341900 tp!2341899))))

(assert (=> b!7880707 (= tp!2341688 e!4654198)))

(declare-fun b!7881200 () Bool)

(assert (=> b!7881200 (= e!4654198 tp_is_empty!52773)))

(declare-fun b!7881202 () Bool)

(declare-fun tp!2341902 () Bool)

(assert (=> b!7881202 (= e!4654198 tp!2341902)))

(declare-fun b!7881203 () Bool)

(declare-fun tp!2341898 () Bool)

(declare-fun tp!2341901 () Bool)

(assert (=> b!7881203 (= e!4654198 (and tp!2341898 tp!2341901))))

(assert (= (and b!7880707 ((_ is ElementMatch!21187) (regTwo!42886 (reg!21516 r1!6212)))) b!7881200))

(assert (= (and b!7880707 ((_ is Concat!30032) (regTwo!42886 (reg!21516 r1!6212)))) b!7881201))

(assert (= (and b!7880707 ((_ is Star!21187) (regTwo!42886 (reg!21516 r1!6212)))) b!7881202))

(assert (= (and b!7880707 ((_ is Union!21187) (regTwo!42886 (reg!21516 r1!6212)))) b!7881203))

(declare-fun b!7881205 () Bool)

(declare-fun e!4654199 () Bool)

(declare-fun tp!2341905 () Bool)

(declare-fun tp!2341904 () Bool)

(assert (=> b!7881205 (= e!4654199 (and tp!2341905 tp!2341904))))

(assert (=> b!7880717 (= tp!2341699 e!4654199)))

(declare-fun b!7881204 () Bool)

(assert (=> b!7881204 (= e!4654199 tp_is_empty!52773)))

(declare-fun b!7881206 () Bool)

(declare-fun tp!2341907 () Bool)

(assert (=> b!7881206 (= e!4654199 tp!2341907)))

(declare-fun b!7881207 () Bool)

(declare-fun tp!2341903 () Bool)

(declare-fun tp!2341906 () Bool)

(assert (=> b!7881207 (= e!4654199 (and tp!2341903 tp!2341906))))

(assert (= (and b!7880717 ((_ is ElementMatch!21187) (reg!21516 (regOne!42887 r1!6212)))) b!7881204))

(assert (= (and b!7880717 ((_ is Concat!30032) (reg!21516 (regOne!42887 r1!6212)))) b!7881205))

(assert (= (and b!7880717 ((_ is Star!21187) (reg!21516 (regOne!42887 r1!6212)))) b!7881206))

(assert (= (and b!7880717 ((_ is Union!21187) (reg!21516 (regOne!42887 r1!6212)))) b!7881207))

(declare-fun b!7881209 () Bool)

(declare-fun e!4654200 () Bool)

(declare-fun tp!2341910 () Bool)

(declare-fun tp!2341909 () Bool)

(assert (=> b!7881209 (= e!4654200 (and tp!2341910 tp!2341909))))

(assert (=> b!7880726 (= tp!2341705 e!4654200)))

(declare-fun b!7881208 () Bool)

(assert (=> b!7881208 (= e!4654200 tp_is_empty!52773)))

(declare-fun b!7881210 () Bool)

(declare-fun tp!2341912 () Bool)

(assert (=> b!7881210 (= e!4654200 tp!2341912)))

(declare-fun b!7881211 () Bool)

(declare-fun tp!2341908 () Bool)

(declare-fun tp!2341911 () Bool)

(assert (=> b!7881211 (= e!4654200 (and tp!2341908 tp!2341911))))

(assert (= (and b!7880726 ((_ is ElementMatch!21187) (regOne!42887 (regOne!42886 r1!6212)))) b!7881208))

(assert (= (and b!7880726 ((_ is Concat!30032) (regOne!42887 (regOne!42886 r1!6212)))) b!7881209))

(assert (= (and b!7880726 ((_ is Star!21187) (regOne!42887 (regOne!42886 r1!6212)))) b!7881210))

(assert (= (and b!7880726 ((_ is Union!21187) (regOne!42887 (regOne!42886 r1!6212)))) b!7881211))

(declare-fun b!7881213 () Bool)

(declare-fun e!4654201 () Bool)

(declare-fun tp!2341915 () Bool)

(declare-fun tp!2341914 () Bool)

(assert (=> b!7881213 (= e!4654201 (and tp!2341915 tp!2341914))))

(assert (=> b!7880726 (= tp!2341708 e!4654201)))

(declare-fun b!7881212 () Bool)

(assert (=> b!7881212 (= e!4654201 tp_is_empty!52773)))

(declare-fun b!7881214 () Bool)

(declare-fun tp!2341917 () Bool)

(assert (=> b!7881214 (= e!4654201 tp!2341917)))

(declare-fun b!7881215 () Bool)

(declare-fun tp!2341913 () Bool)

(declare-fun tp!2341916 () Bool)

(assert (=> b!7881215 (= e!4654201 (and tp!2341913 tp!2341916))))

(assert (= (and b!7880726 ((_ is ElementMatch!21187) (regTwo!42887 (regOne!42886 r1!6212)))) b!7881212))

(assert (= (and b!7880726 ((_ is Concat!30032) (regTwo!42887 (regOne!42886 r1!6212)))) b!7881213))

(assert (= (and b!7880726 ((_ is Star!21187) (regTwo!42887 (regOne!42886 r1!6212)))) b!7881214))

(assert (= (and b!7880726 ((_ is Union!21187) (regTwo!42887 (regOne!42886 r1!6212)))) b!7881215))

(declare-fun b!7881217 () Bool)

(declare-fun e!4654202 () Bool)

(declare-fun tp!2341920 () Bool)

(declare-fun tp!2341919 () Bool)

(assert (=> b!7881217 (= e!4654202 (and tp!2341920 tp!2341919))))

(assert (=> b!7880716 (= tp!2341697 e!4654202)))

(declare-fun b!7881216 () Bool)

(assert (=> b!7881216 (= e!4654202 tp_is_empty!52773)))

(declare-fun b!7881218 () Bool)

(declare-fun tp!2341922 () Bool)

(assert (=> b!7881218 (= e!4654202 tp!2341922)))

(declare-fun b!7881219 () Bool)

(declare-fun tp!2341918 () Bool)

(declare-fun tp!2341921 () Bool)

(assert (=> b!7881219 (= e!4654202 (and tp!2341918 tp!2341921))))

(assert (= (and b!7880716 ((_ is ElementMatch!21187) (regOne!42886 (regOne!42887 r1!6212)))) b!7881216))

(assert (= (and b!7880716 ((_ is Concat!30032) (regOne!42886 (regOne!42887 r1!6212)))) b!7881217))

(assert (= (and b!7880716 ((_ is Star!21187) (regOne!42886 (regOne!42887 r1!6212)))) b!7881218))

(assert (= (and b!7880716 ((_ is Union!21187) (regOne!42886 (regOne!42887 r1!6212)))) b!7881219))

(declare-fun b!7881221 () Bool)

(declare-fun e!4654203 () Bool)

(declare-fun tp!2341925 () Bool)

(declare-fun tp!2341924 () Bool)

(assert (=> b!7881221 (= e!4654203 (and tp!2341925 tp!2341924))))

(assert (=> b!7880716 (= tp!2341696 e!4654203)))

(declare-fun b!7881220 () Bool)

(assert (=> b!7881220 (= e!4654203 tp_is_empty!52773)))

(declare-fun b!7881222 () Bool)

(declare-fun tp!2341927 () Bool)

(assert (=> b!7881222 (= e!4654203 tp!2341927)))

(declare-fun b!7881223 () Bool)

(declare-fun tp!2341923 () Bool)

(declare-fun tp!2341926 () Bool)

(assert (=> b!7881223 (= e!4654203 (and tp!2341923 tp!2341926))))

(assert (= (and b!7880716 ((_ is ElementMatch!21187) (regTwo!42886 (regOne!42887 r1!6212)))) b!7881220))

(assert (= (and b!7880716 ((_ is Concat!30032) (regTwo!42886 (regOne!42887 r1!6212)))) b!7881221))

(assert (= (and b!7880716 ((_ is Star!21187) (regTwo!42886 (regOne!42887 r1!6212)))) b!7881222))

(assert (= (and b!7880716 ((_ is Union!21187) (regTwo!42886 (regOne!42887 r1!6212)))) b!7881223))

(declare-fun b!7881225 () Bool)

(declare-fun e!4654204 () Bool)

(declare-fun tp!2341930 () Bool)

(declare-fun tp!2341929 () Bool)

(assert (=> b!7881225 (= e!4654204 (and tp!2341930 tp!2341929))))

(assert (=> b!7880725 (= tp!2341709 e!4654204)))

(declare-fun b!7881224 () Bool)

(assert (=> b!7881224 (= e!4654204 tp_is_empty!52773)))

(declare-fun b!7881226 () Bool)

(declare-fun tp!2341932 () Bool)

(assert (=> b!7881226 (= e!4654204 tp!2341932)))

(declare-fun b!7881227 () Bool)

(declare-fun tp!2341928 () Bool)

(declare-fun tp!2341931 () Bool)

(assert (=> b!7881227 (= e!4654204 (and tp!2341928 tp!2341931))))

(assert (= (and b!7880725 ((_ is ElementMatch!21187) (reg!21516 (regOne!42886 r1!6212)))) b!7881224))

(assert (= (and b!7880725 ((_ is Concat!30032) (reg!21516 (regOne!42886 r1!6212)))) b!7881225))

(assert (= (and b!7880725 ((_ is Star!21187) (reg!21516 (regOne!42886 r1!6212)))) b!7881226))

(assert (= (and b!7880725 ((_ is Union!21187) (reg!21516 (regOne!42886 r1!6212)))) b!7881227))

(declare-fun b!7881229 () Bool)

(declare-fun e!4654205 () Bool)

(declare-fun tp!2341935 () Bool)

(declare-fun tp!2341934 () Bool)

(assert (=> b!7881229 (= e!4654205 (and tp!2341935 tp!2341934))))

(assert (=> b!7880734 (= tp!2341715 e!4654205)))

(declare-fun b!7881228 () Bool)

(assert (=> b!7881228 (= e!4654205 tp_is_empty!52773)))

(declare-fun b!7881230 () Bool)

(declare-fun tp!2341937 () Bool)

(assert (=> b!7881230 (= e!4654205 tp!2341937)))

(declare-fun b!7881231 () Bool)

(declare-fun tp!2341933 () Bool)

(declare-fun tp!2341936 () Bool)

(assert (=> b!7881231 (= e!4654205 (and tp!2341933 tp!2341936))))

(assert (= (and b!7880734 ((_ is ElementMatch!21187) (regOne!42887 (regOne!42887 r2!6150)))) b!7881228))

(assert (= (and b!7880734 ((_ is Concat!30032) (regOne!42887 (regOne!42887 r2!6150)))) b!7881229))

(assert (= (and b!7880734 ((_ is Star!21187) (regOne!42887 (regOne!42887 r2!6150)))) b!7881230))

(assert (= (and b!7880734 ((_ is Union!21187) (regOne!42887 (regOne!42887 r2!6150)))) b!7881231))

(declare-fun b!7881233 () Bool)

(declare-fun e!4654206 () Bool)

(declare-fun tp!2341940 () Bool)

(declare-fun tp!2341939 () Bool)

(assert (=> b!7881233 (= e!4654206 (and tp!2341940 tp!2341939))))

(assert (=> b!7880734 (= tp!2341718 e!4654206)))

(declare-fun b!7881232 () Bool)

(assert (=> b!7881232 (= e!4654206 tp_is_empty!52773)))

(declare-fun b!7881234 () Bool)

(declare-fun tp!2341942 () Bool)

(assert (=> b!7881234 (= e!4654206 tp!2341942)))

(declare-fun b!7881235 () Bool)

(declare-fun tp!2341938 () Bool)

(declare-fun tp!2341941 () Bool)

(assert (=> b!7881235 (= e!4654206 (and tp!2341938 tp!2341941))))

(assert (= (and b!7880734 ((_ is ElementMatch!21187) (regTwo!42887 (regOne!42887 r2!6150)))) b!7881232))

(assert (= (and b!7880734 ((_ is Concat!30032) (regTwo!42887 (regOne!42887 r2!6150)))) b!7881233))

(assert (= (and b!7880734 ((_ is Star!21187) (regTwo!42887 (regOne!42887 r2!6150)))) b!7881234))

(assert (= (and b!7880734 ((_ is Union!21187) (regTwo!42887 (regOne!42887 r2!6150)))) b!7881235))

(declare-fun b!7881237 () Bool)

(declare-fun e!4654207 () Bool)

(declare-fun tp!2341945 () Bool)

(declare-fun tp!2341944 () Bool)

(assert (=> b!7881237 (= e!4654207 (and tp!2341945 tp!2341944))))

(assert (=> b!7880718 (= tp!2341695 e!4654207)))

(declare-fun b!7881236 () Bool)

(assert (=> b!7881236 (= e!4654207 tp_is_empty!52773)))

(declare-fun b!7881238 () Bool)

(declare-fun tp!2341947 () Bool)

(assert (=> b!7881238 (= e!4654207 tp!2341947)))

(declare-fun b!7881239 () Bool)

(declare-fun tp!2341943 () Bool)

(declare-fun tp!2341946 () Bool)

(assert (=> b!7881239 (= e!4654207 (and tp!2341943 tp!2341946))))

(assert (= (and b!7880718 ((_ is ElementMatch!21187) (regOne!42887 (regOne!42887 r1!6212)))) b!7881236))

(assert (= (and b!7880718 ((_ is Concat!30032) (regOne!42887 (regOne!42887 r1!6212)))) b!7881237))

(assert (= (and b!7880718 ((_ is Star!21187) (regOne!42887 (regOne!42887 r1!6212)))) b!7881238))

(assert (= (and b!7880718 ((_ is Union!21187) (regOne!42887 (regOne!42887 r1!6212)))) b!7881239))

(declare-fun b!7881241 () Bool)

(declare-fun e!4654208 () Bool)

(declare-fun tp!2341950 () Bool)

(declare-fun tp!2341949 () Bool)

(assert (=> b!7881241 (= e!4654208 (and tp!2341950 tp!2341949))))

(assert (=> b!7880718 (= tp!2341698 e!4654208)))

(declare-fun b!7881240 () Bool)

(assert (=> b!7881240 (= e!4654208 tp_is_empty!52773)))

(declare-fun b!7881242 () Bool)

(declare-fun tp!2341952 () Bool)

(assert (=> b!7881242 (= e!4654208 tp!2341952)))

(declare-fun b!7881243 () Bool)

(declare-fun tp!2341948 () Bool)

(declare-fun tp!2341951 () Bool)

(assert (=> b!7881243 (= e!4654208 (and tp!2341948 tp!2341951))))

(assert (= (and b!7880718 ((_ is ElementMatch!21187) (regTwo!42887 (regOne!42887 r1!6212)))) b!7881240))

(assert (= (and b!7880718 ((_ is Concat!30032) (regTwo!42887 (regOne!42887 r1!6212)))) b!7881241))

(assert (= (and b!7880718 ((_ is Star!21187) (regTwo!42887 (regOne!42887 r1!6212)))) b!7881242))

(assert (= (and b!7880718 ((_ is Union!21187) (regTwo!42887 (regOne!42887 r1!6212)))) b!7881243))

(declare-fun b!7881245 () Bool)

(declare-fun e!4654209 () Bool)

(declare-fun tp!2341955 () Bool)

(declare-fun tp!2341954 () Bool)

(assert (=> b!7881245 (= e!4654209 (and tp!2341955 tp!2341954))))

(assert (=> b!7880744 (= tp!2341732 e!4654209)))

(declare-fun b!7881244 () Bool)

(assert (=> b!7881244 (= e!4654209 tp_is_empty!52773)))

(declare-fun b!7881246 () Bool)

(declare-fun tp!2341957 () Bool)

(assert (=> b!7881246 (= e!4654209 tp!2341957)))

(declare-fun b!7881247 () Bool)

(declare-fun tp!2341953 () Bool)

(declare-fun tp!2341956 () Bool)

(assert (=> b!7881247 (= e!4654209 (and tp!2341953 tp!2341956))))

(assert (= (and b!7880744 ((_ is ElementMatch!21187) (regOne!42886 (regTwo!42886 r2!6150)))) b!7881244))

(assert (= (and b!7880744 ((_ is Concat!30032) (regOne!42886 (regTwo!42886 r2!6150)))) b!7881245))

(assert (= (and b!7880744 ((_ is Star!21187) (regOne!42886 (regTwo!42886 r2!6150)))) b!7881246))

(assert (= (and b!7880744 ((_ is Union!21187) (regOne!42886 (regTwo!42886 r2!6150)))) b!7881247))

(declare-fun b!7881249 () Bool)

(declare-fun e!4654210 () Bool)

(declare-fun tp!2341960 () Bool)

(declare-fun tp!2341959 () Bool)

(assert (=> b!7881249 (= e!4654210 (and tp!2341960 tp!2341959))))

(assert (=> b!7880744 (= tp!2341731 e!4654210)))

(declare-fun b!7881248 () Bool)

(assert (=> b!7881248 (= e!4654210 tp_is_empty!52773)))

(declare-fun b!7881250 () Bool)

(declare-fun tp!2341962 () Bool)

(assert (=> b!7881250 (= e!4654210 tp!2341962)))

(declare-fun b!7881251 () Bool)

(declare-fun tp!2341958 () Bool)

(declare-fun tp!2341961 () Bool)

(assert (=> b!7881251 (= e!4654210 (and tp!2341958 tp!2341961))))

(assert (= (and b!7880744 ((_ is ElementMatch!21187) (regTwo!42886 (regTwo!42886 r2!6150)))) b!7881248))

(assert (= (and b!7880744 ((_ is Concat!30032) (regTwo!42886 (regTwo!42886 r2!6150)))) b!7881249))

(assert (= (and b!7880744 ((_ is Star!21187) (regTwo!42886 (regTwo!42886 r2!6150)))) b!7881250))

(assert (= (and b!7880744 ((_ is Union!21187) (regTwo!42886 (regTwo!42886 r2!6150)))) b!7881251))

(declare-fun b!7881253 () Bool)

(declare-fun e!4654211 () Bool)

(declare-fun tp!2341965 () Bool)

(declare-fun tp!2341964 () Bool)

(assert (=> b!7881253 (= e!4654211 (and tp!2341965 tp!2341964))))

(assert (=> b!7880738 (= tp!2341720 e!4654211)))

(declare-fun b!7881252 () Bool)

(assert (=> b!7881252 (= e!4654211 tp_is_empty!52773)))

(declare-fun b!7881254 () Bool)

(declare-fun tp!2341967 () Bool)

(assert (=> b!7881254 (= e!4654211 tp!2341967)))

(declare-fun b!7881255 () Bool)

(declare-fun tp!2341963 () Bool)

(declare-fun tp!2341966 () Bool)

(assert (=> b!7881255 (= e!4654211 (and tp!2341963 tp!2341966))))

(assert (= (and b!7880738 ((_ is ElementMatch!21187) (regOne!42887 (regTwo!42887 r2!6150)))) b!7881252))

(assert (= (and b!7880738 ((_ is Concat!30032) (regOne!42887 (regTwo!42887 r2!6150)))) b!7881253))

(assert (= (and b!7880738 ((_ is Star!21187) (regOne!42887 (regTwo!42887 r2!6150)))) b!7881254))

(assert (= (and b!7880738 ((_ is Union!21187) (regOne!42887 (regTwo!42887 r2!6150)))) b!7881255))

(declare-fun b!7881257 () Bool)

(declare-fun e!4654212 () Bool)

(declare-fun tp!2341970 () Bool)

(declare-fun tp!2341969 () Bool)

(assert (=> b!7881257 (= e!4654212 (and tp!2341970 tp!2341969))))

(assert (=> b!7880738 (= tp!2341723 e!4654212)))

(declare-fun b!7881256 () Bool)

(assert (=> b!7881256 (= e!4654212 tp_is_empty!52773)))

(declare-fun b!7881258 () Bool)

(declare-fun tp!2341972 () Bool)

(assert (=> b!7881258 (= e!4654212 tp!2341972)))

(declare-fun b!7881259 () Bool)

(declare-fun tp!2341968 () Bool)

(declare-fun tp!2341971 () Bool)

(assert (=> b!7881259 (= e!4654212 (and tp!2341968 tp!2341971))))

(assert (= (and b!7880738 ((_ is ElementMatch!21187) (regTwo!42887 (regTwo!42887 r2!6150)))) b!7881256))

(assert (= (and b!7880738 ((_ is Concat!30032) (regTwo!42887 (regTwo!42887 r2!6150)))) b!7881257))

(assert (= (and b!7880738 ((_ is Star!21187) (regTwo!42887 (regTwo!42887 r2!6150)))) b!7881258))

(assert (= (and b!7880738 ((_ is Union!21187) (regTwo!42887 (regTwo!42887 r2!6150)))) b!7881259))

(declare-fun b!7881261 () Bool)

(declare-fun e!4654213 () Bool)

(declare-fun tp!2341975 () Bool)

(declare-fun tp!2341974 () Bool)

(assert (=> b!7881261 (= e!4654213 (and tp!2341975 tp!2341974))))

(assert (=> b!7880728 (= tp!2341712 e!4654213)))

(declare-fun b!7881260 () Bool)

(assert (=> b!7881260 (= e!4654213 tp_is_empty!52773)))

(declare-fun b!7881262 () Bool)

(declare-fun tp!2341977 () Bool)

(assert (=> b!7881262 (= e!4654213 tp!2341977)))

(declare-fun b!7881263 () Bool)

(declare-fun tp!2341973 () Bool)

(declare-fun tp!2341976 () Bool)

(assert (=> b!7881263 (= e!4654213 (and tp!2341973 tp!2341976))))

(assert (= (and b!7880728 ((_ is ElementMatch!21187) (regOne!42886 (regTwo!42886 r1!6212)))) b!7881260))

(assert (= (and b!7880728 ((_ is Concat!30032) (regOne!42886 (regTwo!42886 r1!6212)))) b!7881261))

(assert (= (and b!7880728 ((_ is Star!21187) (regOne!42886 (regTwo!42886 r1!6212)))) b!7881262))

(assert (= (and b!7880728 ((_ is Union!21187) (regOne!42886 (regTwo!42886 r1!6212)))) b!7881263))

(declare-fun b!7881265 () Bool)

(declare-fun e!4654214 () Bool)

(declare-fun tp!2341980 () Bool)

(declare-fun tp!2341979 () Bool)

(assert (=> b!7881265 (= e!4654214 (and tp!2341980 tp!2341979))))

(assert (=> b!7880728 (= tp!2341711 e!4654214)))

(declare-fun b!7881264 () Bool)

(assert (=> b!7881264 (= e!4654214 tp_is_empty!52773)))

(declare-fun b!7881266 () Bool)

(declare-fun tp!2341982 () Bool)

(assert (=> b!7881266 (= e!4654214 tp!2341982)))

(declare-fun b!7881267 () Bool)

(declare-fun tp!2341978 () Bool)

(declare-fun tp!2341981 () Bool)

(assert (=> b!7881267 (= e!4654214 (and tp!2341978 tp!2341981))))

(assert (= (and b!7880728 ((_ is ElementMatch!21187) (regTwo!42886 (regTwo!42886 r1!6212)))) b!7881264))

(assert (= (and b!7880728 ((_ is Concat!30032) (regTwo!42886 (regTwo!42886 r1!6212)))) b!7881265))

(assert (= (and b!7880728 ((_ is Star!21187) (regTwo!42886 (regTwo!42886 r1!6212)))) b!7881266))

(assert (= (and b!7880728 ((_ is Union!21187) (regTwo!42886 (regTwo!42886 r1!6212)))) b!7881267))

(declare-fun b!7881269 () Bool)

(declare-fun e!4654215 () Bool)

(declare-fun tp!2341985 () Bool)

(declare-fun tp!2341984 () Bool)

(assert (=> b!7881269 (= e!4654215 (and tp!2341985 tp!2341984))))

(assert (=> b!7880737 (= tp!2341724 e!4654215)))

(declare-fun b!7881268 () Bool)

(assert (=> b!7881268 (= e!4654215 tp_is_empty!52773)))

(declare-fun b!7881270 () Bool)

(declare-fun tp!2341987 () Bool)

(assert (=> b!7881270 (= e!4654215 tp!2341987)))

(declare-fun b!7881271 () Bool)

(declare-fun tp!2341983 () Bool)

(declare-fun tp!2341986 () Bool)

(assert (=> b!7881271 (= e!4654215 (and tp!2341983 tp!2341986))))

(assert (= (and b!7880737 ((_ is ElementMatch!21187) (reg!21516 (regTwo!42887 r2!6150)))) b!7881268))

(assert (= (and b!7880737 ((_ is Concat!30032) (reg!21516 (regTwo!42887 r2!6150)))) b!7881269))

(assert (= (and b!7880737 ((_ is Star!21187) (reg!21516 (regTwo!42887 r2!6150)))) b!7881270))

(assert (= (and b!7880737 ((_ is Union!21187) (reg!21516 (regTwo!42887 r2!6150)))) b!7881271))

(declare-fun b!7881273 () Bool)

(declare-fun e!4654216 () Bool)

(declare-fun tp!2341990 () Bool)

(declare-fun tp!2341989 () Bool)

(assert (=> b!7881273 (= e!4654216 (and tp!2341990 tp!2341989))))

(assert (=> b!7880746 (= tp!2341730 e!4654216)))

(declare-fun b!7881272 () Bool)

(assert (=> b!7881272 (= e!4654216 tp_is_empty!52773)))

(declare-fun b!7881274 () Bool)

(declare-fun tp!2341992 () Bool)

(assert (=> b!7881274 (= e!4654216 tp!2341992)))

(declare-fun b!7881275 () Bool)

(declare-fun tp!2341988 () Bool)

(declare-fun tp!2341991 () Bool)

(assert (=> b!7881275 (= e!4654216 (and tp!2341988 tp!2341991))))

(assert (= (and b!7880746 ((_ is ElementMatch!21187) (regOne!42887 (regTwo!42886 r2!6150)))) b!7881272))

(assert (= (and b!7880746 ((_ is Concat!30032) (regOne!42887 (regTwo!42886 r2!6150)))) b!7881273))

(assert (= (and b!7880746 ((_ is Star!21187) (regOne!42887 (regTwo!42886 r2!6150)))) b!7881274))

(assert (= (and b!7880746 ((_ is Union!21187) (regOne!42887 (regTwo!42886 r2!6150)))) b!7881275))

(declare-fun b!7881277 () Bool)

(declare-fun e!4654217 () Bool)

(declare-fun tp!2341995 () Bool)

(declare-fun tp!2341994 () Bool)

(assert (=> b!7881277 (= e!4654217 (and tp!2341995 tp!2341994))))

(assert (=> b!7880746 (= tp!2341733 e!4654217)))

(declare-fun b!7881276 () Bool)

(assert (=> b!7881276 (= e!4654217 tp_is_empty!52773)))

(declare-fun b!7881278 () Bool)

(declare-fun tp!2341997 () Bool)

(assert (=> b!7881278 (= e!4654217 tp!2341997)))

(declare-fun b!7881279 () Bool)

(declare-fun tp!2341993 () Bool)

(declare-fun tp!2341996 () Bool)

(assert (=> b!7881279 (= e!4654217 (and tp!2341993 tp!2341996))))

(assert (= (and b!7880746 ((_ is ElementMatch!21187) (regTwo!42887 (regTwo!42886 r2!6150)))) b!7881276))

(assert (= (and b!7880746 ((_ is Concat!30032) (regTwo!42887 (regTwo!42886 r2!6150)))) b!7881277))

(assert (= (and b!7880746 ((_ is Star!21187) (regTwo!42887 (regTwo!42886 r2!6150)))) b!7881278))

(assert (= (and b!7880746 ((_ is Union!21187) (regTwo!42887 (regTwo!42886 r2!6150)))) b!7881279))

(declare-fun b!7881281 () Bool)

(declare-fun e!4654218 () Bool)

(declare-fun tp!2342000 () Bool)

(declare-fun tp!2341999 () Bool)

(assert (=> b!7881281 (= e!4654218 (and tp!2342000 tp!2341999))))

(assert (=> b!7880736 (= tp!2341722 e!4654218)))

(declare-fun b!7881280 () Bool)

(assert (=> b!7881280 (= e!4654218 tp_is_empty!52773)))

(declare-fun b!7881282 () Bool)

(declare-fun tp!2342002 () Bool)

(assert (=> b!7881282 (= e!4654218 tp!2342002)))

(declare-fun b!7881283 () Bool)

(declare-fun tp!2341998 () Bool)

(declare-fun tp!2342001 () Bool)

(assert (=> b!7881283 (= e!4654218 (and tp!2341998 tp!2342001))))

(assert (= (and b!7880736 ((_ is ElementMatch!21187) (regOne!42886 (regTwo!42887 r2!6150)))) b!7881280))

(assert (= (and b!7880736 ((_ is Concat!30032) (regOne!42886 (regTwo!42887 r2!6150)))) b!7881281))

(assert (= (and b!7880736 ((_ is Star!21187) (regOne!42886 (regTwo!42887 r2!6150)))) b!7881282))

(assert (= (and b!7880736 ((_ is Union!21187) (regOne!42886 (regTwo!42887 r2!6150)))) b!7881283))

(declare-fun b!7881285 () Bool)

(declare-fun e!4654219 () Bool)

(declare-fun tp!2342005 () Bool)

(declare-fun tp!2342004 () Bool)

(assert (=> b!7881285 (= e!4654219 (and tp!2342005 tp!2342004))))

(assert (=> b!7880736 (= tp!2341721 e!4654219)))

(declare-fun b!7881284 () Bool)

(assert (=> b!7881284 (= e!4654219 tp_is_empty!52773)))

(declare-fun b!7881286 () Bool)

(declare-fun tp!2342007 () Bool)

(assert (=> b!7881286 (= e!4654219 tp!2342007)))

(declare-fun b!7881287 () Bool)

(declare-fun tp!2342003 () Bool)

(declare-fun tp!2342006 () Bool)

(assert (=> b!7881287 (= e!4654219 (and tp!2342003 tp!2342006))))

(assert (= (and b!7880736 ((_ is ElementMatch!21187) (regTwo!42886 (regTwo!42887 r2!6150)))) b!7881284))

(assert (= (and b!7880736 ((_ is Concat!30032) (regTwo!42886 (regTwo!42887 r2!6150)))) b!7881285))

(assert (= (and b!7880736 ((_ is Star!21187) (regTwo!42886 (regTwo!42887 r2!6150)))) b!7881286))

(assert (= (and b!7880736 ((_ is Union!21187) (regTwo!42886 (regTwo!42887 r2!6150)))) b!7881287))

(declare-fun b!7881289 () Bool)

(declare-fun e!4654220 () Bool)

(declare-fun tp!2342010 () Bool)

(declare-fun tp!2342009 () Bool)

(assert (=> b!7881289 (= e!4654220 (and tp!2342010 tp!2342009))))

(assert (=> b!7880745 (= tp!2341734 e!4654220)))

(declare-fun b!7881288 () Bool)

(assert (=> b!7881288 (= e!4654220 tp_is_empty!52773)))

(declare-fun b!7881290 () Bool)

(declare-fun tp!2342012 () Bool)

(assert (=> b!7881290 (= e!4654220 tp!2342012)))

(declare-fun b!7881291 () Bool)

(declare-fun tp!2342008 () Bool)

(declare-fun tp!2342011 () Bool)

(assert (=> b!7881291 (= e!4654220 (and tp!2342008 tp!2342011))))

(assert (= (and b!7880745 ((_ is ElementMatch!21187) (reg!21516 (regTwo!42886 r2!6150)))) b!7881288))

(assert (= (and b!7880745 ((_ is Concat!30032) (reg!21516 (regTwo!42886 r2!6150)))) b!7881289))

(assert (= (and b!7880745 ((_ is Star!21187) (reg!21516 (regTwo!42886 r2!6150)))) b!7881290))

(assert (= (and b!7880745 ((_ is Union!21187) (reg!21516 (regTwo!42886 r2!6150)))) b!7881291))

(declare-fun b!7881293 () Bool)

(declare-fun e!4654221 () Bool)

(declare-fun tp!2342015 () Bool)

(declare-fun tp!2342014 () Bool)

(assert (=> b!7881293 (= e!4654221 (and tp!2342015 tp!2342014))))

(assert (=> b!7880722 (= tp!2341700 e!4654221)))

(declare-fun b!7881292 () Bool)

(assert (=> b!7881292 (= e!4654221 tp_is_empty!52773)))

(declare-fun b!7881294 () Bool)

(declare-fun tp!2342017 () Bool)

(assert (=> b!7881294 (= e!4654221 tp!2342017)))

(declare-fun b!7881295 () Bool)

(declare-fun tp!2342013 () Bool)

(declare-fun tp!2342016 () Bool)

(assert (=> b!7881295 (= e!4654221 (and tp!2342013 tp!2342016))))

(assert (= (and b!7880722 ((_ is ElementMatch!21187) (regOne!42887 (regTwo!42887 r1!6212)))) b!7881292))

(assert (= (and b!7880722 ((_ is Concat!30032) (regOne!42887 (regTwo!42887 r1!6212)))) b!7881293))

(assert (= (and b!7880722 ((_ is Star!21187) (regOne!42887 (regTwo!42887 r1!6212)))) b!7881294))

(assert (= (and b!7880722 ((_ is Union!21187) (regOne!42887 (regTwo!42887 r1!6212)))) b!7881295))

(declare-fun b!7881297 () Bool)

(declare-fun e!4654222 () Bool)

(declare-fun tp!2342020 () Bool)

(declare-fun tp!2342019 () Bool)

(assert (=> b!7881297 (= e!4654222 (and tp!2342020 tp!2342019))))

(assert (=> b!7880722 (= tp!2341703 e!4654222)))

(declare-fun b!7881296 () Bool)

(assert (=> b!7881296 (= e!4654222 tp_is_empty!52773)))

(declare-fun b!7881298 () Bool)

(declare-fun tp!2342022 () Bool)

(assert (=> b!7881298 (= e!4654222 tp!2342022)))

(declare-fun b!7881299 () Bool)

(declare-fun tp!2342018 () Bool)

(declare-fun tp!2342021 () Bool)

(assert (=> b!7881299 (= e!4654222 (and tp!2342018 tp!2342021))))

(assert (= (and b!7880722 ((_ is ElementMatch!21187) (regTwo!42887 (regTwo!42887 r1!6212)))) b!7881296))

(assert (= (and b!7880722 ((_ is Concat!30032) (regTwo!42887 (regTwo!42887 r1!6212)))) b!7881297))

(assert (= (and b!7880722 ((_ is Star!21187) (regTwo!42887 (regTwo!42887 r1!6212)))) b!7881298))

(assert (= (and b!7880722 ((_ is Union!21187) (regTwo!42887 (regTwo!42887 r1!6212)))) b!7881299))

(declare-fun b!7881301 () Bool)

(declare-fun e!4654223 () Bool)

(declare-fun tp!2342025 () Bool)

(declare-fun tp!2342024 () Bool)

(assert (=> b!7881301 (= e!4654223 (and tp!2342025 tp!2342024))))

(assert (=> b!7880721 (= tp!2341704 e!4654223)))

(declare-fun b!7881300 () Bool)

(assert (=> b!7881300 (= e!4654223 tp_is_empty!52773)))

(declare-fun b!7881302 () Bool)

(declare-fun tp!2342027 () Bool)

(assert (=> b!7881302 (= e!4654223 tp!2342027)))

(declare-fun b!7881303 () Bool)

(declare-fun tp!2342023 () Bool)

(declare-fun tp!2342026 () Bool)

(assert (=> b!7881303 (= e!4654223 (and tp!2342023 tp!2342026))))

(assert (= (and b!7880721 ((_ is ElementMatch!21187) (reg!21516 (regTwo!42887 r1!6212)))) b!7881300))

(assert (= (and b!7880721 ((_ is Concat!30032) (reg!21516 (regTwo!42887 r1!6212)))) b!7881301))

(assert (= (and b!7880721 ((_ is Star!21187) (reg!21516 (regTwo!42887 r1!6212)))) b!7881302))

(assert (= (and b!7880721 ((_ is Union!21187) (reg!21516 (regTwo!42887 r1!6212)))) b!7881303))

(declare-fun b!7881305 () Bool)

(declare-fun e!4654224 () Bool)

(declare-fun tp!2342030 () Bool)

(declare-fun tp!2342029 () Bool)

(assert (=> b!7881305 (= e!4654224 (and tp!2342030 tp!2342029))))

(assert (=> b!7880730 (= tp!2341710 e!4654224)))

(declare-fun b!7881304 () Bool)

(assert (=> b!7881304 (= e!4654224 tp_is_empty!52773)))

(declare-fun b!7881306 () Bool)

(declare-fun tp!2342032 () Bool)

(assert (=> b!7881306 (= e!4654224 tp!2342032)))

(declare-fun b!7881307 () Bool)

(declare-fun tp!2342028 () Bool)

(declare-fun tp!2342031 () Bool)

(assert (=> b!7881307 (= e!4654224 (and tp!2342028 tp!2342031))))

(assert (= (and b!7880730 ((_ is ElementMatch!21187) (regOne!42887 (regTwo!42886 r1!6212)))) b!7881304))

(assert (= (and b!7880730 ((_ is Concat!30032) (regOne!42887 (regTwo!42886 r1!6212)))) b!7881305))

(assert (= (and b!7880730 ((_ is Star!21187) (regOne!42887 (regTwo!42886 r1!6212)))) b!7881306))

(assert (= (and b!7880730 ((_ is Union!21187) (regOne!42887 (regTwo!42886 r1!6212)))) b!7881307))

(declare-fun b!7881309 () Bool)

(declare-fun e!4654225 () Bool)

(declare-fun tp!2342035 () Bool)

(declare-fun tp!2342034 () Bool)

(assert (=> b!7881309 (= e!4654225 (and tp!2342035 tp!2342034))))

(assert (=> b!7880730 (= tp!2341713 e!4654225)))

(declare-fun b!7881308 () Bool)

(assert (=> b!7881308 (= e!4654225 tp_is_empty!52773)))

(declare-fun b!7881310 () Bool)

(declare-fun tp!2342037 () Bool)

(assert (=> b!7881310 (= e!4654225 tp!2342037)))

(declare-fun b!7881311 () Bool)

(declare-fun tp!2342033 () Bool)

(declare-fun tp!2342036 () Bool)

(assert (=> b!7881311 (= e!4654225 (and tp!2342033 tp!2342036))))

(assert (= (and b!7880730 ((_ is ElementMatch!21187) (regTwo!42887 (regTwo!42886 r1!6212)))) b!7881308))

(assert (= (and b!7880730 ((_ is Concat!30032) (regTwo!42887 (regTwo!42886 r1!6212)))) b!7881309))

(assert (= (and b!7880730 ((_ is Star!21187) (regTwo!42887 (regTwo!42886 r1!6212)))) b!7881310))

(assert (= (and b!7880730 ((_ is Union!21187) (regTwo!42887 (regTwo!42886 r1!6212)))) b!7881311))

(declare-fun b!7881313 () Bool)

(declare-fun e!4654226 () Bool)

(declare-fun tp!2342040 () Bool)

(declare-fun tp!2342039 () Bool)

(assert (=> b!7881313 (= e!4654226 (and tp!2342040 tp!2342039))))

(assert (=> b!7880720 (= tp!2341702 e!4654226)))

(declare-fun b!7881312 () Bool)

(assert (=> b!7881312 (= e!4654226 tp_is_empty!52773)))

(declare-fun b!7881314 () Bool)

(declare-fun tp!2342042 () Bool)

(assert (=> b!7881314 (= e!4654226 tp!2342042)))

(declare-fun b!7881315 () Bool)

(declare-fun tp!2342038 () Bool)

(declare-fun tp!2342041 () Bool)

(assert (=> b!7881315 (= e!4654226 (and tp!2342038 tp!2342041))))

(assert (= (and b!7880720 ((_ is ElementMatch!21187) (regOne!42886 (regTwo!42887 r1!6212)))) b!7881312))

(assert (= (and b!7880720 ((_ is Concat!30032) (regOne!42886 (regTwo!42887 r1!6212)))) b!7881313))

(assert (= (and b!7880720 ((_ is Star!21187) (regOne!42886 (regTwo!42887 r1!6212)))) b!7881314))

(assert (= (and b!7880720 ((_ is Union!21187) (regOne!42886 (regTwo!42887 r1!6212)))) b!7881315))

(declare-fun b!7881317 () Bool)

(declare-fun e!4654227 () Bool)

(declare-fun tp!2342045 () Bool)

(declare-fun tp!2342044 () Bool)

(assert (=> b!7881317 (= e!4654227 (and tp!2342045 tp!2342044))))

(assert (=> b!7880720 (= tp!2341701 e!4654227)))

(declare-fun b!7881316 () Bool)

(assert (=> b!7881316 (= e!4654227 tp_is_empty!52773)))

(declare-fun b!7881318 () Bool)

(declare-fun tp!2342047 () Bool)

(assert (=> b!7881318 (= e!4654227 tp!2342047)))

(declare-fun b!7881319 () Bool)

(declare-fun tp!2342043 () Bool)

(declare-fun tp!2342046 () Bool)

(assert (=> b!7881319 (= e!4654227 (and tp!2342043 tp!2342046))))

(assert (= (and b!7880720 ((_ is ElementMatch!21187) (regTwo!42886 (regTwo!42887 r1!6212)))) b!7881316))

(assert (= (and b!7880720 ((_ is Concat!30032) (regTwo!42886 (regTwo!42887 r1!6212)))) b!7881317))

(assert (= (and b!7880720 ((_ is Star!21187) (regTwo!42886 (regTwo!42887 r1!6212)))) b!7881318))

(assert (= (and b!7880720 ((_ is Union!21187) (regTwo!42886 (regTwo!42887 r1!6212)))) b!7881319))

(declare-fun b!7881321 () Bool)

(declare-fun e!4654228 () Bool)

(declare-fun tp!2342050 () Bool)

(declare-fun tp!2342049 () Bool)

(assert (=> b!7881321 (= e!4654228 (and tp!2342050 tp!2342049))))

(assert (=> b!7880729 (= tp!2341714 e!4654228)))

(declare-fun b!7881320 () Bool)

(assert (=> b!7881320 (= e!4654228 tp_is_empty!52773)))

(declare-fun b!7881322 () Bool)

(declare-fun tp!2342052 () Bool)

(assert (=> b!7881322 (= e!4654228 tp!2342052)))

(declare-fun b!7881323 () Bool)

(declare-fun tp!2342048 () Bool)

(declare-fun tp!2342051 () Bool)

(assert (=> b!7881323 (= e!4654228 (and tp!2342048 tp!2342051))))

(assert (= (and b!7880729 ((_ is ElementMatch!21187) (reg!21516 (regTwo!42886 r1!6212)))) b!7881320))

(assert (= (and b!7880729 ((_ is Concat!30032) (reg!21516 (regTwo!42886 r1!6212)))) b!7881321))

(assert (= (and b!7880729 ((_ is Star!21187) (reg!21516 (regTwo!42886 r1!6212)))) b!7881322))

(assert (= (and b!7880729 ((_ is Union!21187) (reg!21516 (regTwo!42886 r1!6212)))) b!7881323))

(declare-fun b!7881324 () Bool)

(declare-fun e!4654229 () Bool)

(declare-fun tp!2342053 () Bool)

(assert (=> b!7881324 (= e!4654229 (and tp_is_empty!52773 tp!2342053))))

(assert (=> b!7880714 (= tp!2341694 e!4654229)))

(assert (= (and b!7880714 ((_ is Cons!73922) (t!388781 (t!388781 s!14231)))) b!7881324))

(check-sat (not b!7880978) (not d!2356094) (not b!7881197) (not b!7881257) (not d!2356070) (not d!2356112) (not d!2356056) (not b!7881227) (not b!7881065) (not b!7881203) (not b!7881293) (not bm!731055) (not d!2356068) (not bm!731029) (not d!2356086) (not bm!731078) (not bm!731053) (not bm!731049) (not bm!731050) (not b!7881175) (not b!7881155) (not b!7881213) (not d!2356072) (not b!7881306) (not b!7880994) (not b!7881322) (not b!7880923) (not bm!731076) (not bm!731059) (not d!2356102) (not b!7881287) (not b!7881189) (not b!7881225) (not b!7881141) (not bm!731080) (not b!7881038) (not b!7881230) (not b!7880970) (not b!7881301) (not b!7881314) (not b!7881218) (not bm!731035) (not b!7881005) (not b!7881234) (not b!7881265) (not b!7881266) (not bm!731081) (not b!7881154) (not b!7880920) (not b!7881166) (not bm!731074) (not bm!731024) (not d!2356050) (not b!7881013) (not bm!731064) (not b!7881206) (not b!7880928) (not b!7881191) (not b!7881223) (not b!7880927) (not b!7881231) (not b!7881262) (not d!2356044) (not b!7881169) (not bm!731046) (not b!7881158) (not b!7881245) (not b!7881278) (not b!7881171) (not b!7881126) (not b!7881319) (not bm!731062) (not b!7881146) (not bm!731071) (not b!7881143) (not b!7881309) (not b!7881311) (not b!7881130) (not bm!731044) (not b!7881291) (not b!7881324) (not bm!731023) (not b!7881131) (not b!7880974) (not b!7881179) (not b!7881277) (not b!7881127) (not b!7881302) (not b!7881267) (not d!2356054) (not b!7880932) (not bm!731057) (not b!7881259) (not b!7881149) (not b!7881142) (not bm!731028) (not b!7880977) (not b!7881135) (not b!7881186) (not b!7881150) (not b!7881235) (not b!7881219) (not b!7881198) (not b!7881303) (not b!7881283) (not b!7881242) (not b!7881173) (not b!7881221) (not d!2356052) (not b!7881286) (not b!7881194) tp_is_empty!52773 (not b!7881031) (not bm!731039) (not b!7881271) (not b!7881187) (not b!7881294) (not b!7881205) (not b!7881145) (not b!7881199) (not b!7881315) (not b!7881233) (not b!7881207) (not b!7881285) (not b!7881101) (not b!7881139) (not bm!731034) (not b!7881159) (not b!7881310) (not b!7881030) (not b!7880969) (not b!7881137) (not b!7881181) (not bm!731026) (not b!7881238) (not b!7881321) (not b!7881274) (not b!7881133) (not b!7881246) (not b!7881202) (not b!7881163) (not b!7881255) (not bm!731040) (not bm!731052) (not b!7881167) (not b!7881174) (not bm!731073) (not b!7881190) (not b!7881083) (not b!7881313) (not d!2356116) (not b!7881170) (not b!7881134) (not bm!731032) (not b!7881147) (not b!7881217) (not b!7881162) (not b!7881214) (not b!7881026) (not b!7881151) (not b!7881092) (not b!7881183) (not b!7881129) (not b!7881112) (not b!7881229) (not b!7880986) (not bm!731037) (not b!7881201) (not b!7881323) (not d!2356092) (not b!7881193) (not b!7881074) (not b!7881057) (not b!7881307) (not b!7881253) (not b!7881211) (not b!7881247) (not bm!731031) (not b!7881273) (not b!7881263) (not b!7881281) (not b!7881275) (not b!7881270) (not b!7881138) (not b!7881290) (not b!7880965) (not bm!731067) (not b!7881125) (not bm!731021) (not b!7881250) (not b!7881241) (not b!7881178) (not b!7880935) (not d!2356064) (not b!7881279) (not b!7881258) (not b!7880936) (not bm!731042) (not b!7881249) (not bm!731083) (not b!7881215) (not d!2356096) (not b!7881022) (not b!7880961) (not b!7880944) (not b!7881251) (not b!7881210) (not b!7881185) (not d!2356082) (not b!7881195) (not b!7881317) (not b!7881039) (not b!7881299) (not b!7881295) (not bm!731068) (not bm!731065) (not b!7881282) (not b!7881161) (not b!7881226) (not b!7881165) (not b!7881035) (not b!7881157) (not b!7881298) (not b!7881261) (not b!7881177) (not b!7881318) (not b!7880952) (not b!7881254) (not b!7881120) (not b!7881239) (not b!7881222) (not bm!731061) (not b!7881209) (not b!7881289) (not b!7881297) (not d!2356084) (not b!7881269) (not b!7881182) (not b!7881153) (not bm!731047) (not b!7881305) (not b!7881237) (not bm!731070) (not b!7881047) (not b!7881243))
(check-sat)
