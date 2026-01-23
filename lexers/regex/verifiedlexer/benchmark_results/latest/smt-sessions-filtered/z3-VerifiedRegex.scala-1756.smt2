; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!87826 () Bool)

(assert start!87826)

(declare-fun b!999678 () Bool)

(declare-fun e!640937 () Bool)

(declare-fun tp!304738 () Bool)

(declare-fun tp!304737 () Bool)

(assert (=> b!999678 (= e!640937 (and tp!304738 tp!304737))))

(declare-fun b!999679 () Bool)

(declare-datatypes ((C!6112 0))(
  ( (C!6113 (val!3304 Int)) )
))
(declare-datatypes ((Regex!2771 0))(
  ( (ElementMatch!2771 (c!164550 C!6112)) (Concat!4604 (regOne!6054 Regex!2771) (regTwo!6054 Regex!2771)) (EmptyExpr!2771) (Star!2771 (reg!3100 Regex!2771)) (EmptyLang!2771) (Union!2771 (regOne!6055 Regex!2771) (regTwo!6055 Regex!2771)) )
))
(declare-fun r!15766 () Regex!2771)

(declare-fun lt!351818 () Int)

(declare-fun lt!351817 () Int)

(declare-fun e!640936 () Bool)

(declare-fun regexDepth!26 (Regex!2771) Int)

(assert (=> b!999679 (= e!640936 (< (+ lt!351817 lt!351818) (+ (regexDepth!26 r!15766) lt!351818)))))

(declare-datatypes ((List!10001 0))(
  ( (Nil!9985) (Cons!9985 (h!15386 C!6112) (t!101047 List!10001)) )
))
(declare-fun s!10566 () List!10001)

(declare-fun size!7965 (List!10001) Int)

(assert (=> b!999679 (= lt!351818 (size!7965 s!10566))))

(assert (=> b!999679 (= lt!351817 (regexDepth!26 (regTwo!6055 r!15766)))))

(declare-fun b!999680 () Bool)

(declare-fun e!640933 () Bool)

(declare-fun matchR!1307 (Regex!2771 List!10001) Bool)

(assert (=> b!999680 (= e!640933 (matchR!1307 (regTwo!6055 r!15766) s!10566))))

(declare-fun b!999682 () Bool)

(declare-fun e!640932 () Bool)

(assert (=> b!999682 (= e!640932 e!640936)))

(declare-fun res!451418 () Bool)

(assert (=> b!999682 (=> res!451418 e!640936)))

(declare-fun lt!351816 () Bool)

(assert (=> b!999682 (= res!451418 lt!351816)))

(assert (=> b!999682 e!640933))

(declare-fun res!451416 () Bool)

(assert (=> b!999682 (=> res!451416 e!640933)))

(assert (=> b!999682 (= res!451416 lt!351816)))

(assert (=> b!999682 (= lt!351816 (matchR!1307 (regOne!6055 r!15766) s!10566))))

(declare-datatypes ((Unit!15201 0))(
  ( (Unit!15202) )
))
(declare-fun lt!351819 () Unit!15201)

(declare-fun lemmaRegexUnionAcceptsThenOneOfTheTwoAccepts!78 (Regex!2771 Regex!2771 List!10001) Unit!15201)

(assert (=> b!999682 (= lt!351819 (lemmaRegexUnionAcceptsThenOneOfTheTwoAccepts!78 (regOne!6055 r!15766) (regTwo!6055 r!15766) s!10566))))

(declare-fun b!999683 () Bool)

(declare-fun tp!304740 () Bool)

(declare-fun tp!304735 () Bool)

(assert (=> b!999683 (= e!640937 (and tp!304740 tp!304735))))

(declare-fun b!999684 () Bool)

(declare-fun res!451420 () Bool)

(assert (=> b!999684 (=> res!451420 e!640936)))

(declare-fun validRegex!1240 (Regex!2771) Bool)

(assert (=> b!999684 (= res!451420 (not (validRegex!1240 (regTwo!6055 r!15766))))))

(declare-fun b!999685 () Bool)

(declare-fun tp_is_empty!5185 () Bool)

(assert (=> b!999685 (= e!640937 tp_is_empty!5185)))

(declare-fun b!999681 () Bool)

(declare-fun e!640935 () Bool)

(assert (=> b!999681 (= e!640935 (not e!640932))))

(declare-fun res!451419 () Bool)

(assert (=> b!999681 (=> res!451419 e!640932)))

(declare-fun lt!351820 () Bool)

(get-info :version)

(assert (=> b!999681 (= res!451419 (or (not lt!351820) (and ((_ is Concat!4604) r!15766) ((_ is EmptyExpr!2771) (regOne!6054 r!15766))) (and ((_ is Concat!4604) r!15766) ((_ is EmptyExpr!2771) (regTwo!6054 r!15766))) ((_ is Concat!4604) r!15766) (not ((_ is Union!2771) r!15766))))))

(declare-fun matchRSpec!570 (Regex!2771 List!10001) Bool)

(assert (=> b!999681 (= lt!351820 (matchRSpec!570 r!15766 s!10566))))

(assert (=> b!999681 (= lt!351820 (matchR!1307 r!15766 s!10566))))

(declare-fun lt!351821 () Unit!15201)

(declare-fun mainMatchTheorem!570 (Regex!2771 List!10001) Unit!15201)

(assert (=> b!999681 (= lt!351821 (mainMatchTheorem!570 r!15766 s!10566))))

(declare-fun res!451417 () Bool)

(assert (=> start!87826 (=> (not res!451417) (not e!640935))))

(assert (=> start!87826 (= res!451417 (validRegex!1240 r!15766))))

(assert (=> start!87826 e!640935))

(assert (=> start!87826 e!640937))

(declare-fun e!640934 () Bool)

(assert (=> start!87826 e!640934))

(declare-fun b!999686 () Bool)

(declare-fun tp!304739 () Bool)

(assert (=> b!999686 (= e!640934 (and tp_is_empty!5185 tp!304739))))

(declare-fun b!999687 () Bool)

(declare-fun tp!304736 () Bool)

(assert (=> b!999687 (= e!640937 tp!304736)))

(assert (= (and start!87826 res!451417) b!999681))

(assert (= (and b!999681 (not res!451419)) b!999682))

(assert (= (and b!999682 (not res!451416)) b!999680))

(assert (= (and b!999682 (not res!451418)) b!999684))

(assert (= (and b!999684 (not res!451420)) b!999679))

(assert (= (and start!87826 ((_ is ElementMatch!2771) r!15766)) b!999685))

(assert (= (and start!87826 ((_ is Concat!4604) r!15766)) b!999683))

(assert (= (and start!87826 ((_ is Star!2771) r!15766)) b!999687))

(assert (= (and start!87826 ((_ is Union!2771) r!15766)) b!999678))

(assert (= (and start!87826 ((_ is Cons!9985) s!10566)) b!999686))

(declare-fun m!1189531 () Bool)

(assert (=> b!999684 m!1189531))

(declare-fun m!1189533 () Bool)

(assert (=> b!999679 m!1189533))

(declare-fun m!1189535 () Bool)

(assert (=> b!999679 m!1189535))

(declare-fun m!1189537 () Bool)

(assert (=> b!999679 m!1189537))

(declare-fun m!1189539 () Bool)

(assert (=> start!87826 m!1189539))

(declare-fun m!1189541 () Bool)

(assert (=> b!999682 m!1189541))

(declare-fun m!1189543 () Bool)

(assert (=> b!999682 m!1189543))

(declare-fun m!1189545 () Bool)

(assert (=> b!999681 m!1189545))

(declare-fun m!1189547 () Bool)

(assert (=> b!999681 m!1189547))

(declare-fun m!1189549 () Bool)

(assert (=> b!999681 m!1189549))

(declare-fun m!1189551 () Bool)

(assert (=> b!999680 m!1189551))

(check-sat (not b!999683) (not b!999682) (not b!999679) (not b!999678) (not b!999686) (not b!999681) (not b!999687) (not b!999680) tp_is_empty!5185 (not b!999684) (not start!87826))
(check-sat)
(get-model)

(declare-fun b!999744 () Bool)

(declare-fun res!451453 () Bool)

(declare-fun e!640972 () Bool)

(assert (=> b!999744 (=> res!451453 e!640972)))

(assert (=> b!999744 (= res!451453 (not ((_ is ElementMatch!2771) (regTwo!6055 r!15766))))))

(declare-fun e!640967 () Bool)

(assert (=> b!999744 (= e!640967 e!640972)))

(declare-fun b!999745 () Bool)

(declare-fun res!451460 () Bool)

(assert (=> b!999745 (=> res!451460 e!640972)))

(declare-fun e!640970 () Bool)

(assert (=> b!999745 (= res!451460 e!640970)))

(declare-fun res!451459 () Bool)

(assert (=> b!999745 (=> (not res!451459) (not e!640970))))

(declare-fun lt!351826 () Bool)

(assert (=> b!999745 (= res!451459 lt!351826)))

(declare-fun bm!66331 () Bool)

(declare-fun call!66336 () Bool)

(declare-fun isEmpty!6323 (List!10001) Bool)

(assert (=> bm!66331 (= call!66336 (isEmpty!6323 s!10566))))

(declare-fun b!999747 () Bool)

(declare-fun e!640968 () Bool)

(declare-fun e!640966 () Bool)

(assert (=> b!999747 (= e!640968 e!640966)))

(declare-fun res!451456 () Bool)

(assert (=> b!999747 (=> res!451456 e!640966)))

(assert (=> b!999747 (= res!451456 call!66336)))

(declare-fun b!999748 () Bool)

(assert (=> b!999748 (= e!640972 e!640968)))

(declare-fun res!451455 () Bool)

(assert (=> b!999748 (=> (not res!451455) (not e!640968))))

(assert (=> b!999748 (= res!451455 (not lt!351826))))

(declare-fun b!999749 () Bool)

(declare-fun e!640971 () Bool)

(assert (=> b!999749 (= e!640971 (= lt!351826 call!66336))))

(declare-fun b!999750 () Bool)

(declare-fun head!1844 (List!10001) C!6112)

(assert (=> b!999750 (= e!640966 (not (= (head!1844 s!10566) (c!164550 (regTwo!6055 r!15766)))))))

(declare-fun b!999751 () Bool)

(assert (=> b!999751 (= e!640971 e!640967)))

(declare-fun c!164565 () Bool)

(assert (=> b!999751 (= c!164565 ((_ is EmptyLang!2771) (regTwo!6055 r!15766)))))

(declare-fun b!999752 () Bool)

(declare-fun e!640969 () Bool)

(declare-fun nullable!885 (Regex!2771) Bool)

(assert (=> b!999752 (= e!640969 (nullable!885 (regTwo!6055 r!15766)))))

(declare-fun b!999753 () Bool)

(declare-fun res!451454 () Bool)

(assert (=> b!999753 (=> (not res!451454) (not e!640970))))

(declare-fun tail!1406 (List!10001) List!10001)

(assert (=> b!999753 (= res!451454 (isEmpty!6323 (tail!1406 s!10566)))))

(declare-fun b!999754 () Bool)

(assert (=> b!999754 (= e!640970 (= (head!1844 s!10566) (c!164550 (regTwo!6055 r!15766))))))

(declare-fun b!999755 () Bool)

(declare-fun res!451457 () Bool)

(assert (=> b!999755 (=> res!451457 e!640966)))

(assert (=> b!999755 (= res!451457 (not (isEmpty!6323 (tail!1406 s!10566))))))

(declare-fun d!291189 () Bool)

(assert (=> d!291189 e!640971))

(declare-fun c!164564 () Bool)

(assert (=> d!291189 (= c!164564 ((_ is EmptyExpr!2771) (regTwo!6055 r!15766)))))

(assert (=> d!291189 (= lt!351826 e!640969)))

(declare-fun c!164563 () Bool)

(assert (=> d!291189 (= c!164563 (isEmpty!6323 s!10566))))

(assert (=> d!291189 (validRegex!1240 (regTwo!6055 r!15766))))

(assert (=> d!291189 (= (matchR!1307 (regTwo!6055 r!15766) s!10566) lt!351826)))

(declare-fun b!999746 () Bool)

(assert (=> b!999746 (= e!640967 (not lt!351826))))

(declare-fun b!999756 () Bool)

(declare-fun derivativeStep!691 (Regex!2771 C!6112) Regex!2771)

(assert (=> b!999756 (= e!640969 (matchR!1307 (derivativeStep!691 (regTwo!6055 r!15766) (head!1844 s!10566)) (tail!1406 s!10566)))))

(declare-fun b!999757 () Bool)

(declare-fun res!451458 () Bool)

(assert (=> b!999757 (=> (not res!451458) (not e!640970))))

(assert (=> b!999757 (= res!451458 (not call!66336))))

(assert (= (and d!291189 c!164563) b!999752))

(assert (= (and d!291189 (not c!164563)) b!999756))

(assert (= (and d!291189 c!164564) b!999749))

(assert (= (and d!291189 (not c!164564)) b!999751))

(assert (= (and b!999751 c!164565) b!999746))

(assert (= (and b!999751 (not c!164565)) b!999744))

(assert (= (and b!999744 (not res!451453)) b!999745))

(assert (= (and b!999745 res!451459) b!999757))

(assert (= (and b!999757 res!451458) b!999753))

(assert (= (and b!999753 res!451454) b!999754))

(assert (= (and b!999745 (not res!451460)) b!999748))

(assert (= (and b!999748 res!451455) b!999747))

(assert (= (and b!999747 (not res!451456)) b!999755))

(assert (= (and b!999755 (not res!451457)) b!999750))

(assert (= (or b!999749 b!999757 b!999747) bm!66331))

(declare-fun m!1189553 () Bool)

(assert (=> b!999750 m!1189553))

(declare-fun m!1189555 () Bool)

(assert (=> b!999752 m!1189555))

(assert (=> b!999756 m!1189553))

(assert (=> b!999756 m!1189553))

(declare-fun m!1189557 () Bool)

(assert (=> b!999756 m!1189557))

(declare-fun m!1189559 () Bool)

(assert (=> b!999756 m!1189559))

(assert (=> b!999756 m!1189557))

(assert (=> b!999756 m!1189559))

(declare-fun m!1189561 () Bool)

(assert (=> b!999756 m!1189561))

(assert (=> b!999755 m!1189559))

(assert (=> b!999755 m!1189559))

(declare-fun m!1189563 () Bool)

(assert (=> b!999755 m!1189563))

(declare-fun m!1189565 () Bool)

(assert (=> bm!66331 m!1189565))

(assert (=> b!999754 m!1189553))

(assert (=> b!999753 m!1189559))

(assert (=> b!999753 m!1189559))

(assert (=> b!999753 m!1189563))

(assert (=> d!291189 m!1189565))

(assert (=> d!291189 m!1189531))

(assert (=> b!999680 d!291189))

(declare-fun b!999943 () Bool)

(assert (=> b!999943 true))

(assert (=> b!999943 true))

(declare-fun bs!245086 () Bool)

(declare-fun b!999937 () Bool)

(assert (= bs!245086 (and b!999937 b!999943)))

(declare-fun lambda!35514 () Int)

(declare-fun lambda!35513 () Int)

(assert (=> bs!245086 (not (= lambda!35514 lambda!35513))))

(assert (=> b!999937 true))

(assert (=> b!999937 true))

(declare-fun e!641079 () Bool)

(declare-fun call!66366 () Bool)

(assert (=> b!999937 (= e!641079 call!66366)))

(declare-fun b!999938 () Bool)

(declare-fun e!641084 () Bool)

(declare-fun e!641082 () Bool)

(assert (=> b!999938 (= e!641084 e!641082)))

(declare-fun res!451548 () Bool)

(assert (=> b!999938 (= res!451548 (not ((_ is EmptyLang!2771) r!15766)))))

(assert (=> b!999938 (=> (not res!451548) (not e!641082))))

(declare-fun bm!66359 () Bool)

(declare-fun call!66367 () Bool)

(assert (=> bm!66359 (= call!66367 (isEmpty!6323 s!10566))))

(declare-fun b!999939 () Bool)

(declare-fun e!641081 () Bool)

(assert (=> b!999939 (= e!641081 (= s!10566 (Cons!9985 (c!164550 r!15766) Nil!9985)))))

(declare-fun b!999940 () Bool)

(assert (=> b!999940 (= e!641084 call!66367)))

(declare-fun b!999941 () Bool)

(declare-fun e!641083 () Bool)

(assert (=> b!999941 (= e!641083 e!641079)))

(declare-fun c!164612 () Bool)

(assert (=> b!999941 (= c!164612 ((_ is Star!2771) r!15766))))

(declare-fun b!999942 () Bool)

(declare-fun e!641080 () Bool)

(assert (=> b!999942 (= e!641083 e!641080)))

(declare-fun res!451547 () Bool)

(assert (=> b!999942 (= res!451547 (matchRSpec!570 (regOne!6055 r!15766) s!10566))))

(assert (=> b!999942 (=> res!451547 e!641080)))

(declare-fun e!641085 () Bool)

(assert (=> b!999943 (= e!641085 call!66366)))

(declare-fun bm!66360 () Bool)

(declare-fun Exists!506 (Int) Bool)

(assert (=> bm!66360 (= call!66366 (Exists!506 (ite c!164612 lambda!35513 lambda!35514)))))

(declare-fun b!999944 () Bool)

(declare-fun c!164611 () Bool)

(assert (=> b!999944 (= c!164611 ((_ is ElementMatch!2771) r!15766))))

(assert (=> b!999944 (= e!641082 e!641081)))

(declare-fun b!999945 () Bool)

(assert (=> b!999945 (= e!641080 (matchRSpec!570 (regTwo!6055 r!15766) s!10566))))

(declare-fun b!999946 () Bool)

(declare-fun res!451546 () Bool)

(assert (=> b!999946 (=> res!451546 e!641085)))

(assert (=> b!999946 (= res!451546 call!66367)))

(assert (=> b!999946 (= e!641079 e!641085)))

(declare-fun b!999947 () Bool)

(declare-fun c!164613 () Bool)

(assert (=> b!999947 (= c!164613 ((_ is Union!2771) r!15766))))

(assert (=> b!999947 (= e!641081 e!641083)))

(declare-fun d!291193 () Bool)

(declare-fun c!164614 () Bool)

(assert (=> d!291193 (= c!164614 ((_ is EmptyExpr!2771) r!15766))))

(assert (=> d!291193 (= (matchRSpec!570 r!15766 s!10566) e!641084)))

(assert (= (and d!291193 c!164614) b!999940))

(assert (= (and d!291193 (not c!164614)) b!999938))

(assert (= (and b!999938 res!451548) b!999944))

(assert (= (and b!999944 c!164611) b!999939))

(assert (= (and b!999944 (not c!164611)) b!999947))

(assert (= (and b!999947 c!164613) b!999942))

(assert (= (and b!999947 (not c!164613)) b!999941))

(assert (= (and b!999942 (not res!451547)) b!999945))

(assert (= (and b!999941 c!164612) b!999946))

(assert (= (and b!999941 (not c!164612)) b!999937))

(assert (= (and b!999946 (not res!451546)) b!999943))

(assert (= (or b!999943 b!999937) bm!66360))

(assert (= (or b!999940 b!999946) bm!66359))

(assert (=> bm!66359 m!1189565))

(declare-fun m!1189617 () Bool)

(assert (=> b!999942 m!1189617))

(declare-fun m!1189619 () Bool)

(assert (=> bm!66360 m!1189619))

(declare-fun m!1189621 () Bool)

(assert (=> b!999945 m!1189621))

(assert (=> b!999681 d!291193))

(declare-fun b!999970 () Bool)

(declare-fun res!451555 () Bool)

(declare-fun e!641104 () Bool)

(assert (=> b!999970 (=> res!451555 e!641104)))

(assert (=> b!999970 (= res!451555 (not ((_ is ElementMatch!2771) r!15766)))))

(declare-fun e!641099 () Bool)

(assert (=> b!999970 (= e!641099 e!641104)))

(declare-fun b!999971 () Bool)

(declare-fun res!451562 () Bool)

(assert (=> b!999971 (=> res!451562 e!641104)))

(declare-fun e!641102 () Bool)

(assert (=> b!999971 (= res!451562 e!641102)))

(declare-fun res!451561 () Bool)

(assert (=> b!999971 (=> (not res!451561) (not e!641102))))

(declare-fun lt!351838 () Bool)

(assert (=> b!999971 (= res!451561 lt!351838)))

(declare-fun bm!66373 () Bool)

(declare-fun call!66378 () Bool)

(assert (=> bm!66373 (= call!66378 (isEmpty!6323 s!10566))))

(declare-fun b!999973 () Bool)

(declare-fun e!641100 () Bool)

(declare-fun e!641098 () Bool)

(assert (=> b!999973 (= e!641100 e!641098)))

(declare-fun res!451558 () Bool)

(assert (=> b!999973 (=> res!451558 e!641098)))

(assert (=> b!999973 (= res!451558 call!66378)))

(declare-fun b!999974 () Bool)

(assert (=> b!999974 (= e!641104 e!641100)))

(declare-fun res!451557 () Bool)

(assert (=> b!999974 (=> (not res!451557) (not e!641100))))

(assert (=> b!999974 (= res!451557 (not lt!351838))))

(declare-fun b!999975 () Bool)

(declare-fun e!641103 () Bool)

(assert (=> b!999975 (= e!641103 (= lt!351838 call!66378))))

(declare-fun b!999976 () Bool)

(assert (=> b!999976 (= e!641098 (not (= (head!1844 s!10566) (c!164550 r!15766))))))

(declare-fun b!999977 () Bool)

(assert (=> b!999977 (= e!641103 e!641099)))

(declare-fun c!164623 () Bool)

(assert (=> b!999977 (= c!164623 ((_ is EmptyLang!2771) r!15766))))

(declare-fun b!999978 () Bool)

(declare-fun e!641101 () Bool)

(assert (=> b!999978 (= e!641101 (nullable!885 r!15766))))

(declare-fun b!999979 () Bool)

(declare-fun res!451556 () Bool)

(assert (=> b!999979 (=> (not res!451556) (not e!641102))))

(assert (=> b!999979 (= res!451556 (isEmpty!6323 (tail!1406 s!10566)))))

(declare-fun b!999980 () Bool)

(assert (=> b!999980 (= e!641102 (= (head!1844 s!10566) (c!164550 r!15766)))))

(declare-fun b!999981 () Bool)

(declare-fun res!451559 () Bool)

(assert (=> b!999981 (=> res!451559 e!641098)))

(assert (=> b!999981 (= res!451559 (not (isEmpty!6323 (tail!1406 s!10566))))))

(declare-fun d!291211 () Bool)

(assert (=> d!291211 e!641103))

(declare-fun c!164622 () Bool)

(assert (=> d!291211 (= c!164622 ((_ is EmptyExpr!2771) r!15766))))

(assert (=> d!291211 (= lt!351838 e!641101)))

(declare-fun c!164621 () Bool)

(assert (=> d!291211 (= c!164621 (isEmpty!6323 s!10566))))

(assert (=> d!291211 (validRegex!1240 r!15766)))

(assert (=> d!291211 (= (matchR!1307 r!15766 s!10566) lt!351838)))

(declare-fun b!999972 () Bool)

(assert (=> b!999972 (= e!641099 (not lt!351838))))

(declare-fun b!999982 () Bool)

(assert (=> b!999982 (= e!641101 (matchR!1307 (derivativeStep!691 r!15766 (head!1844 s!10566)) (tail!1406 s!10566)))))

(declare-fun b!999983 () Bool)

(declare-fun res!451560 () Bool)

(assert (=> b!999983 (=> (not res!451560) (not e!641102))))

(assert (=> b!999983 (= res!451560 (not call!66378))))

(assert (= (and d!291211 c!164621) b!999978))

(assert (= (and d!291211 (not c!164621)) b!999982))

(assert (= (and d!291211 c!164622) b!999975))

(assert (= (and d!291211 (not c!164622)) b!999977))

(assert (= (and b!999977 c!164623) b!999972))

(assert (= (and b!999977 (not c!164623)) b!999970))

(assert (= (and b!999970 (not res!451555)) b!999971))

(assert (= (and b!999971 res!451561) b!999983))

(assert (= (and b!999983 res!451560) b!999979))

(assert (= (and b!999979 res!451556) b!999980))

(assert (= (and b!999971 (not res!451562)) b!999974))

(assert (= (and b!999974 res!451557) b!999973))

(assert (= (and b!999973 (not res!451558)) b!999981))

(assert (= (and b!999981 (not res!451559)) b!999976))

(assert (= (or b!999975 b!999983 b!999973) bm!66373))

(assert (=> b!999976 m!1189553))

(declare-fun m!1189623 () Bool)

(assert (=> b!999978 m!1189623))

(assert (=> b!999982 m!1189553))

(assert (=> b!999982 m!1189553))

(declare-fun m!1189625 () Bool)

(assert (=> b!999982 m!1189625))

(assert (=> b!999982 m!1189559))

(assert (=> b!999982 m!1189625))

(assert (=> b!999982 m!1189559))

(declare-fun m!1189627 () Bool)

(assert (=> b!999982 m!1189627))

(assert (=> b!999981 m!1189559))

(assert (=> b!999981 m!1189559))

(assert (=> b!999981 m!1189563))

(assert (=> bm!66373 m!1189565))

(assert (=> b!999980 m!1189553))

(assert (=> b!999979 m!1189559))

(assert (=> b!999979 m!1189559))

(assert (=> b!999979 m!1189563))

(assert (=> d!291211 m!1189565))

(assert (=> d!291211 m!1189539))

(assert (=> b!999681 d!291211))

(declare-fun d!291213 () Bool)

(assert (=> d!291213 (= (matchR!1307 r!15766 s!10566) (matchRSpec!570 r!15766 s!10566))))

(declare-fun lt!351842 () Unit!15201)

(declare-fun choose!6329 (Regex!2771 List!10001) Unit!15201)

(assert (=> d!291213 (= lt!351842 (choose!6329 r!15766 s!10566))))

(assert (=> d!291213 (validRegex!1240 r!15766)))

(assert (=> d!291213 (= (mainMatchTheorem!570 r!15766 s!10566) lt!351842)))

(declare-fun bs!245087 () Bool)

(assert (= bs!245087 d!291213))

(assert (=> bs!245087 m!1189547))

(assert (=> bs!245087 m!1189545))

(declare-fun m!1189629 () Bool)

(assert (=> bs!245087 m!1189629))

(assert (=> bs!245087 m!1189539))

(assert (=> b!999681 d!291213))

(declare-fun b!1000069 () Bool)

(declare-fun e!641151 () Bool)

(declare-fun call!66403 () Bool)

(assert (=> b!1000069 (= e!641151 call!66403)))

(declare-fun b!1000070 () Bool)

(declare-fun e!641156 () Bool)

(declare-fun e!641154 () Bool)

(assert (=> b!1000070 (= e!641156 e!641154)))

(declare-fun res!451581 () Bool)

(assert (=> b!1000070 (=> (not res!451581) (not e!641154))))

(declare-fun call!66401 () Bool)

(assert (=> b!1000070 (= res!451581 call!66401)))

(declare-fun b!1000071 () Bool)

(declare-fun e!641150 () Bool)

(declare-fun e!641153 () Bool)

(assert (=> b!1000071 (= e!641150 e!641153)))

(declare-fun c!164646 () Bool)

(assert (=> b!1000071 (= c!164646 ((_ is Star!2771) (regTwo!6055 r!15766)))))

(declare-fun b!1000072 () Bool)

(declare-fun res!451580 () Bool)

(assert (=> b!1000072 (=> res!451580 e!641156)))

(assert (=> b!1000072 (= res!451580 (not ((_ is Concat!4604) (regTwo!6055 r!15766))))))

(declare-fun e!641155 () Bool)

(assert (=> b!1000072 (= e!641155 e!641156)))

(declare-fun b!1000073 () Bool)

(declare-fun res!451583 () Bool)

(declare-fun e!641152 () Bool)

(assert (=> b!1000073 (=> (not res!451583) (not e!641152))))

(assert (=> b!1000073 (= res!451583 call!66401)))

(assert (=> b!1000073 (= e!641155 e!641152)))

(declare-fun b!1000074 () Bool)

(assert (=> b!1000074 (= e!641153 e!641155)))

(declare-fun c!164645 () Bool)

(assert (=> b!1000074 (= c!164645 ((_ is Union!2771) (regTwo!6055 r!15766)))))

(declare-fun b!1000075 () Bool)

(declare-fun call!66402 () Bool)

(assert (=> b!1000075 (= e!641154 call!66402)))

(declare-fun bm!66397 () Bool)

(assert (=> bm!66397 (= call!66401 (validRegex!1240 (ite c!164645 (regOne!6055 (regTwo!6055 r!15766)) (regOne!6054 (regTwo!6055 r!15766)))))))

(declare-fun b!1000076 () Bool)

(assert (=> b!1000076 (= e!641152 call!66402)))

(declare-fun bm!66398 () Bool)

(assert (=> bm!66398 (= call!66403 (validRegex!1240 (ite c!164646 (reg!3100 (regTwo!6055 r!15766)) (ite c!164645 (regTwo!6055 (regTwo!6055 r!15766)) (regTwo!6054 (regTwo!6055 r!15766))))))))

(declare-fun b!1000077 () Bool)

(assert (=> b!1000077 (= e!641153 e!641151)))

(declare-fun res!451582 () Bool)

(assert (=> b!1000077 (= res!451582 (not (nullable!885 (reg!3100 (regTwo!6055 r!15766)))))))

(assert (=> b!1000077 (=> (not res!451582) (not e!641151))))

(declare-fun bm!66396 () Bool)

(assert (=> bm!66396 (= call!66402 call!66403)))

(declare-fun d!291215 () Bool)

(declare-fun res!451579 () Bool)

(assert (=> d!291215 (=> res!451579 e!641150)))

(assert (=> d!291215 (= res!451579 ((_ is ElementMatch!2771) (regTwo!6055 r!15766)))))

(assert (=> d!291215 (= (validRegex!1240 (regTwo!6055 r!15766)) e!641150)))

(assert (= (and d!291215 (not res!451579)) b!1000071))

(assert (= (and b!1000071 c!164646) b!1000077))

(assert (= (and b!1000071 (not c!164646)) b!1000074))

(assert (= (and b!1000077 res!451582) b!1000069))

(assert (= (and b!1000074 c!164645) b!1000073))

(assert (= (and b!1000074 (not c!164645)) b!1000072))

(assert (= (and b!1000073 res!451583) b!1000076))

(assert (= (and b!1000072 (not res!451580)) b!1000070))

(assert (= (and b!1000070 res!451581) b!1000075))

(assert (= (or b!1000076 b!1000075) bm!66396))

(assert (= (or b!1000073 b!1000070) bm!66397))

(assert (= (or b!1000069 bm!66396) bm!66398))

(declare-fun m!1189653 () Bool)

(assert (=> bm!66397 m!1189653))

(declare-fun m!1189655 () Bool)

(assert (=> bm!66398 m!1189655))

(declare-fun m!1189657 () Bool)

(assert (=> b!1000077 m!1189657))

(assert (=> b!999684 d!291215))

(declare-fun b!1000120 () Bool)

(declare-fun e!641181 () Int)

(declare-fun e!641184 () Int)

(assert (=> b!1000120 (= e!641181 e!641184)))

(declare-fun c!164663 () Bool)

(assert (=> b!1000120 (= c!164663 ((_ is Star!2771) r!15766))))

(declare-fun b!1000121 () Bool)

(declare-fun e!641187 () Int)

(declare-fun e!641179 () Int)

(assert (=> b!1000121 (= e!641187 e!641179)))

(declare-fun c!164661 () Bool)

(assert (=> b!1000121 (= c!164661 ((_ is Concat!4604) r!15766))))

(declare-fun c!164667 () Bool)

(declare-fun bm!66413 () Bool)

(declare-fun c!164666 () Bool)

(declare-fun call!66422 () Int)

(assert (=> bm!66413 (= call!66422 (regexDepth!26 (ite c!164666 (regOne!6055 r!15766) (ite c!164667 (regTwo!6054 r!15766) (reg!3100 r!15766)))))))

(declare-fun b!1000122 () Bool)

(declare-fun e!641188 () Bool)

(declare-fun lt!351849 () Int)

(assert (=> b!1000122 (= e!641188 (= lt!351849 1))))

(declare-fun b!1000123 () Bool)

(assert (=> b!1000123 (= e!641179 1)))

(declare-fun b!1000124 () Bool)

(assert (=> b!1000124 (= e!641181 1)))

(declare-fun d!291221 () Bool)

(declare-fun e!641180 () Bool)

(assert (=> d!291221 e!641180))

(declare-fun res!451590 () Bool)

(assert (=> d!291221 (=> (not res!451590) (not e!641180))))

(assert (=> d!291221 (= res!451590 (> lt!351849 0))))

(assert (=> d!291221 (= lt!351849 e!641181)))

(declare-fun c!164662 () Bool)

(assert (=> d!291221 (= c!164662 ((_ is ElementMatch!2771) r!15766))))

(assert (=> d!291221 (= (regexDepth!26 r!15766) lt!351849)))

(declare-fun bm!66414 () Bool)

(declare-fun call!66424 () Int)

(declare-fun call!66419 () Int)

(assert (=> bm!66414 (= call!66424 call!66419)))

(declare-fun b!1000125 () Bool)

(declare-fun c!164664 () Bool)

(assert (=> b!1000125 (= c!164664 ((_ is Union!2771) r!15766))))

(assert (=> b!1000125 (= e!641184 e!641187)))

(declare-fun b!1000126 () Bool)

(declare-fun e!641182 () Bool)

(declare-fun call!66418 () Int)

(assert (=> b!1000126 (= e!641182 (> lt!351849 call!66418))))

(declare-fun bm!66415 () Bool)

(assert (=> bm!66415 (= call!66418 (regexDepth!26 (ite c!164666 (regTwo!6055 r!15766) (regOne!6054 r!15766))))))

(declare-fun b!1000127 () Bool)

(declare-fun c!164665 () Bool)

(assert (=> b!1000127 (= c!164665 ((_ is Star!2771) r!15766))))

(declare-fun e!641186 () Bool)

(assert (=> b!1000127 (= e!641186 e!641188)))

(declare-fun bm!66416 () Bool)

(assert (=> bm!66416 (= call!66419 (regexDepth!26 (ite c!164663 (reg!3100 r!15766) (ite c!164664 (regTwo!6055 r!15766) (regTwo!6054 r!15766)))))))

(declare-fun b!1000128 () Bool)

(declare-fun call!66423 () Int)

(assert (=> b!1000128 (= e!641187 (+ 1 call!66423))))

(declare-fun b!1000129 () Bool)

(assert (=> b!1000129 (= e!641184 (+ 1 call!66419))))

(declare-fun b!1000130 () Bool)

(declare-fun e!641185 () Bool)

(assert (=> b!1000130 (= e!641185 e!641182)))

(declare-fun res!451592 () Bool)

(assert (=> b!1000130 (= res!451592 (> lt!351849 call!66422))))

(assert (=> b!1000130 (=> (not res!451592) (not e!641182))))

(declare-fun bm!66417 () Bool)

(declare-fun call!66420 () Int)

(declare-fun maxBigInt!0 (Int Int) Int)

(assert (=> bm!66417 (= call!66423 (maxBigInt!0 call!66420 call!66424))))

(declare-fun b!1000131 () Bool)

(assert (=> b!1000131 (= e!641179 (+ 1 call!66423))))

(declare-fun b!1000132 () Bool)

(assert (=> b!1000132 (= e!641180 e!641185)))

(assert (=> b!1000132 (= c!164666 ((_ is Union!2771) r!15766))))

(declare-fun b!1000133 () Bool)

(declare-fun call!66421 () Int)

(assert (=> b!1000133 (= e!641188 (> lt!351849 call!66421))))

(declare-fun bm!66418 () Bool)

(assert (=> bm!66418 (= call!66420 (regexDepth!26 (ite c!164664 (regOne!6055 r!15766) (regOne!6054 r!15766))))))

(declare-fun b!1000134 () Bool)

(declare-fun e!641183 () Bool)

(assert (=> b!1000134 (= e!641183 (> lt!351849 call!66421))))

(declare-fun b!1000135 () Bool)

(assert (=> b!1000135 (= e!641185 e!641186)))

(assert (=> b!1000135 (= c!164667 ((_ is Concat!4604) r!15766))))

(declare-fun b!1000136 () Bool)

(declare-fun res!451591 () Bool)

(assert (=> b!1000136 (=> (not res!451591) (not e!641183))))

(assert (=> b!1000136 (= res!451591 (> lt!351849 call!66418))))

(assert (=> b!1000136 (= e!641186 e!641183)))

(declare-fun bm!66419 () Bool)

(assert (=> bm!66419 (= call!66421 call!66422)))

(assert (= (and d!291221 c!164662) b!1000124))

(assert (= (and d!291221 (not c!164662)) b!1000120))

(assert (= (and b!1000120 c!164663) b!1000129))

(assert (= (and b!1000120 (not c!164663)) b!1000125))

(assert (= (and b!1000125 c!164664) b!1000128))

(assert (= (and b!1000125 (not c!164664)) b!1000121))

(assert (= (and b!1000121 c!164661) b!1000131))

(assert (= (and b!1000121 (not c!164661)) b!1000123))

(assert (= (or b!1000128 b!1000131) bm!66414))

(assert (= (or b!1000128 b!1000131) bm!66418))

(assert (= (or b!1000128 b!1000131) bm!66417))

(assert (= (or b!1000129 bm!66414) bm!66416))

(assert (= (and d!291221 res!451590) b!1000132))

(assert (= (and b!1000132 c!164666) b!1000130))

(assert (= (and b!1000132 (not c!164666)) b!1000135))

(assert (= (and b!1000130 res!451592) b!1000126))

(assert (= (and b!1000135 c!164667) b!1000136))

(assert (= (and b!1000135 (not c!164667)) b!1000127))

(assert (= (and b!1000136 res!451591) b!1000134))

(assert (= (and b!1000127 c!164665) b!1000133))

(assert (= (and b!1000127 (not c!164665)) b!1000122))

(assert (= (or b!1000134 b!1000133) bm!66419))

(assert (= (or b!1000126 b!1000136) bm!66415))

(assert (= (or b!1000130 bm!66419) bm!66413))

(declare-fun m!1189659 () Bool)

(assert (=> bm!66415 m!1189659))

(declare-fun m!1189661 () Bool)

(assert (=> bm!66418 m!1189661))

(declare-fun m!1189663 () Bool)

(assert (=> bm!66413 m!1189663))

(declare-fun m!1189665 () Bool)

(assert (=> bm!66416 m!1189665))

(declare-fun m!1189667 () Bool)

(assert (=> bm!66417 m!1189667))

(assert (=> b!999679 d!291221))

(declare-fun d!291223 () Bool)

(declare-fun lt!351852 () Int)

(assert (=> d!291223 (>= lt!351852 0)))

(declare-fun e!641191 () Int)

(assert (=> d!291223 (= lt!351852 e!641191)))

(declare-fun c!164670 () Bool)

(assert (=> d!291223 (= c!164670 ((_ is Nil!9985) s!10566))))

(assert (=> d!291223 (= (size!7965 s!10566) lt!351852)))

(declare-fun b!1000141 () Bool)

(assert (=> b!1000141 (= e!641191 0)))

(declare-fun b!1000142 () Bool)

(assert (=> b!1000142 (= e!641191 (+ 1 (size!7965 (t!101047 s!10566))))))

(assert (= (and d!291223 c!164670) b!1000141))

(assert (= (and d!291223 (not c!164670)) b!1000142))

(declare-fun m!1189669 () Bool)

(assert (=> b!1000142 m!1189669))

(assert (=> b!999679 d!291223))

(declare-fun b!1000143 () Bool)

(declare-fun e!641194 () Int)

(declare-fun e!641197 () Int)

(assert (=> b!1000143 (= e!641194 e!641197)))

(declare-fun c!164673 () Bool)

(assert (=> b!1000143 (= c!164673 ((_ is Star!2771) (regTwo!6055 r!15766)))))

(declare-fun b!1000144 () Bool)

(declare-fun e!641200 () Int)

(declare-fun e!641192 () Int)

(assert (=> b!1000144 (= e!641200 e!641192)))

(declare-fun c!164671 () Bool)

(assert (=> b!1000144 (= c!164671 ((_ is Concat!4604) (regTwo!6055 r!15766)))))

(declare-fun c!164676 () Bool)

(declare-fun call!66429 () Int)

(declare-fun c!164677 () Bool)

(declare-fun bm!66420 () Bool)

(assert (=> bm!66420 (= call!66429 (regexDepth!26 (ite c!164676 (regOne!6055 (regTwo!6055 r!15766)) (ite c!164677 (regTwo!6054 (regTwo!6055 r!15766)) (reg!3100 (regTwo!6055 r!15766))))))))

(declare-fun b!1000145 () Bool)

(declare-fun e!641201 () Bool)

(declare-fun lt!351853 () Int)

(assert (=> b!1000145 (= e!641201 (= lt!351853 1))))

(declare-fun b!1000146 () Bool)

(assert (=> b!1000146 (= e!641192 1)))

(declare-fun b!1000147 () Bool)

(assert (=> b!1000147 (= e!641194 1)))

(declare-fun d!291225 () Bool)

(declare-fun e!641193 () Bool)

(assert (=> d!291225 e!641193))

(declare-fun res!451593 () Bool)

(assert (=> d!291225 (=> (not res!451593) (not e!641193))))

(assert (=> d!291225 (= res!451593 (> lt!351853 0))))

(assert (=> d!291225 (= lt!351853 e!641194)))

(declare-fun c!164672 () Bool)

(assert (=> d!291225 (= c!164672 ((_ is ElementMatch!2771) (regTwo!6055 r!15766)))))

(assert (=> d!291225 (= (regexDepth!26 (regTwo!6055 r!15766)) lt!351853)))

(declare-fun bm!66421 () Bool)

(declare-fun call!66431 () Int)

(declare-fun call!66426 () Int)

(assert (=> bm!66421 (= call!66431 call!66426)))

(declare-fun b!1000148 () Bool)

(declare-fun c!164674 () Bool)

(assert (=> b!1000148 (= c!164674 ((_ is Union!2771) (regTwo!6055 r!15766)))))

(assert (=> b!1000148 (= e!641197 e!641200)))

(declare-fun b!1000149 () Bool)

(declare-fun e!641195 () Bool)

(declare-fun call!66425 () Int)

(assert (=> b!1000149 (= e!641195 (> lt!351853 call!66425))))

(declare-fun bm!66422 () Bool)

(assert (=> bm!66422 (= call!66425 (regexDepth!26 (ite c!164676 (regTwo!6055 (regTwo!6055 r!15766)) (regOne!6054 (regTwo!6055 r!15766)))))))

(declare-fun b!1000150 () Bool)

(declare-fun c!164675 () Bool)

(assert (=> b!1000150 (= c!164675 ((_ is Star!2771) (regTwo!6055 r!15766)))))

(declare-fun e!641199 () Bool)

(assert (=> b!1000150 (= e!641199 e!641201)))

(declare-fun bm!66423 () Bool)

(assert (=> bm!66423 (= call!66426 (regexDepth!26 (ite c!164673 (reg!3100 (regTwo!6055 r!15766)) (ite c!164674 (regTwo!6055 (regTwo!6055 r!15766)) (regTwo!6054 (regTwo!6055 r!15766))))))))

(declare-fun b!1000151 () Bool)

(declare-fun call!66430 () Int)

(assert (=> b!1000151 (= e!641200 (+ 1 call!66430))))

(declare-fun b!1000152 () Bool)

(assert (=> b!1000152 (= e!641197 (+ 1 call!66426))))

(declare-fun b!1000153 () Bool)

(declare-fun e!641198 () Bool)

(assert (=> b!1000153 (= e!641198 e!641195)))

(declare-fun res!451595 () Bool)

(assert (=> b!1000153 (= res!451595 (> lt!351853 call!66429))))

(assert (=> b!1000153 (=> (not res!451595) (not e!641195))))

(declare-fun bm!66424 () Bool)

(declare-fun call!66427 () Int)

(assert (=> bm!66424 (= call!66430 (maxBigInt!0 call!66427 call!66431))))

(declare-fun b!1000154 () Bool)

(assert (=> b!1000154 (= e!641192 (+ 1 call!66430))))

(declare-fun b!1000155 () Bool)

(assert (=> b!1000155 (= e!641193 e!641198)))

(assert (=> b!1000155 (= c!164676 ((_ is Union!2771) (regTwo!6055 r!15766)))))

(declare-fun b!1000156 () Bool)

(declare-fun call!66428 () Int)

(assert (=> b!1000156 (= e!641201 (> lt!351853 call!66428))))

(declare-fun bm!66425 () Bool)

(assert (=> bm!66425 (= call!66427 (regexDepth!26 (ite c!164674 (regOne!6055 (regTwo!6055 r!15766)) (regOne!6054 (regTwo!6055 r!15766)))))))

(declare-fun b!1000157 () Bool)

(declare-fun e!641196 () Bool)

(assert (=> b!1000157 (= e!641196 (> lt!351853 call!66428))))

(declare-fun b!1000158 () Bool)

(assert (=> b!1000158 (= e!641198 e!641199)))

(assert (=> b!1000158 (= c!164677 ((_ is Concat!4604) (regTwo!6055 r!15766)))))

(declare-fun b!1000159 () Bool)

(declare-fun res!451594 () Bool)

(assert (=> b!1000159 (=> (not res!451594) (not e!641196))))

(assert (=> b!1000159 (= res!451594 (> lt!351853 call!66425))))

(assert (=> b!1000159 (= e!641199 e!641196)))

(declare-fun bm!66426 () Bool)

(assert (=> bm!66426 (= call!66428 call!66429)))

(assert (= (and d!291225 c!164672) b!1000147))

(assert (= (and d!291225 (not c!164672)) b!1000143))

(assert (= (and b!1000143 c!164673) b!1000152))

(assert (= (and b!1000143 (not c!164673)) b!1000148))

(assert (= (and b!1000148 c!164674) b!1000151))

(assert (= (and b!1000148 (not c!164674)) b!1000144))

(assert (= (and b!1000144 c!164671) b!1000154))

(assert (= (and b!1000144 (not c!164671)) b!1000146))

(assert (= (or b!1000151 b!1000154) bm!66421))

(assert (= (or b!1000151 b!1000154) bm!66425))

(assert (= (or b!1000151 b!1000154) bm!66424))

(assert (= (or b!1000152 bm!66421) bm!66423))

(assert (= (and d!291225 res!451593) b!1000155))

(assert (= (and b!1000155 c!164676) b!1000153))

(assert (= (and b!1000155 (not c!164676)) b!1000158))

(assert (= (and b!1000153 res!451595) b!1000149))

(assert (= (and b!1000158 c!164677) b!1000159))

(assert (= (and b!1000158 (not c!164677)) b!1000150))

(assert (= (and b!1000159 res!451594) b!1000157))

(assert (= (and b!1000150 c!164675) b!1000156))

(assert (= (and b!1000150 (not c!164675)) b!1000145))

(assert (= (or b!1000157 b!1000156) bm!66426))

(assert (= (or b!1000149 b!1000159) bm!66422))

(assert (= (or b!1000153 bm!66426) bm!66420))

(declare-fun m!1189671 () Bool)

(assert (=> bm!66422 m!1189671))

(declare-fun m!1189673 () Bool)

(assert (=> bm!66425 m!1189673))

(declare-fun m!1189675 () Bool)

(assert (=> bm!66420 m!1189675))

(declare-fun m!1189677 () Bool)

(assert (=> bm!66423 m!1189677))

(declare-fun m!1189679 () Bool)

(assert (=> bm!66424 m!1189679))

(assert (=> b!999679 d!291225))

(declare-fun b!1000160 () Bool)

(declare-fun e!641203 () Bool)

(declare-fun call!66434 () Bool)

(assert (=> b!1000160 (= e!641203 call!66434)))

(declare-fun b!1000161 () Bool)

(declare-fun e!641208 () Bool)

(declare-fun e!641206 () Bool)

(assert (=> b!1000161 (= e!641208 e!641206)))

(declare-fun res!451598 () Bool)

(assert (=> b!1000161 (=> (not res!451598) (not e!641206))))

(declare-fun call!66432 () Bool)

(assert (=> b!1000161 (= res!451598 call!66432)))

(declare-fun b!1000162 () Bool)

(declare-fun e!641202 () Bool)

(declare-fun e!641205 () Bool)

(assert (=> b!1000162 (= e!641202 e!641205)))

(declare-fun c!164679 () Bool)

(assert (=> b!1000162 (= c!164679 ((_ is Star!2771) r!15766))))

(declare-fun b!1000163 () Bool)

(declare-fun res!451597 () Bool)

(assert (=> b!1000163 (=> res!451597 e!641208)))

(assert (=> b!1000163 (= res!451597 (not ((_ is Concat!4604) r!15766)))))

(declare-fun e!641207 () Bool)

(assert (=> b!1000163 (= e!641207 e!641208)))

(declare-fun b!1000164 () Bool)

(declare-fun res!451600 () Bool)

(declare-fun e!641204 () Bool)

(assert (=> b!1000164 (=> (not res!451600) (not e!641204))))

(assert (=> b!1000164 (= res!451600 call!66432)))

(assert (=> b!1000164 (= e!641207 e!641204)))

(declare-fun b!1000165 () Bool)

(assert (=> b!1000165 (= e!641205 e!641207)))

(declare-fun c!164678 () Bool)

(assert (=> b!1000165 (= c!164678 ((_ is Union!2771) r!15766))))

(declare-fun b!1000166 () Bool)

(declare-fun call!66433 () Bool)

(assert (=> b!1000166 (= e!641206 call!66433)))

(declare-fun bm!66428 () Bool)

(assert (=> bm!66428 (= call!66432 (validRegex!1240 (ite c!164678 (regOne!6055 r!15766) (regOne!6054 r!15766))))))

(declare-fun b!1000167 () Bool)

(assert (=> b!1000167 (= e!641204 call!66433)))

(declare-fun bm!66429 () Bool)

(assert (=> bm!66429 (= call!66434 (validRegex!1240 (ite c!164679 (reg!3100 r!15766) (ite c!164678 (regTwo!6055 r!15766) (regTwo!6054 r!15766)))))))

(declare-fun b!1000168 () Bool)

(assert (=> b!1000168 (= e!641205 e!641203)))

(declare-fun res!451599 () Bool)

(assert (=> b!1000168 (= res!451599 (not (nullable!885 (reg!3100 r!15766))))))

(assert (=> b!1000168 (=> (not res!451599) (not e!641203))))

(declare-fun bm!66427 () Bool)

(assert (=> bm!66427 (= call!66433 call!66434)))

(declare-fun d!291227 () Bool)

(declare-fun res!451596 () Bool)

(assert (=> d!291227 (=> res!451596 e!641202)))

(assert (=> d!291227 (= res!451596 ((_ is ElementMatch!2771) r!15766))))

(assert (=> d!291227 (= (validRegex!1240 r!15766) e!641202)))

(assert (= (and d!291227 (not res!451596)) b!1000162))

(assert (= (and b!1000162 c!164679) b!1000168))

(assert (= (and b!1000162 (not c!164679)) b!1000165))

(assert (= (and b!1000168 res!451599) b!1000160))

(assert (= (and b!1000165 c!164678) b!1000164))

(assert (= (and b!1000165 (not c!164678)) b!1000163))

(assert (= (and b!1000164 res!451600) b!1000167))

(assert (= (and b!1000163 (not res!451597)) b!1000161))

(assert (= (and b!1000161 res!451598) b!1000166))

(assert (= (or b!1000167 b!1000166) bm!66427))

(assert (= (or b!1000164 b!1000161) bm!66428))

(assert (= (or b!1000160 bm!66427) bm!66429))

(declare-fun m!1189681 () Bool)

(assert (=> bm!66428 m!1189681))

(declare-fun m!1189683 () Bool)

(assert (=> bm!66429 m!1189683))

(declare-fun m!1189685 () Bool)

(assert (=> b!1000168 m!1189685))

(assert (=> start!87826 d!291227))

(declare-fun b!1000169 () Bool)

(declare-fun res!451601 () Bool)

(declare-fun e!641215 () Bool)

(assert (=> b!1000169 (=> res!451601 e!641215)))

(assert (=> b!1000169 (= res!451601 (not ((_ is ElementMatch!2771) (regOne!6055 r!15766))))))

(declare-fun e!641210 () Bool)

(assert (=> b!1000169 (= e!641210 e!641215)))

(declare-fun b!1000170 () Bool)

(declare-fun res!451608 () Bool)

(assert (=> b!1000170 (=> res!451608 e!641215)))

(declare-fun e!641213 () Bool)

(assert (=> b!1000170 (= res!451608 e!641213)))

(declare-fun res!451607 () Bool)

(assert (=> b!1000170 (=> (not res!451607) (not e!641213))))

(declare-fun lt!351854 () Bool)

(assert (=> b!1000170 (= res!451607 lt!351854)))

(declare-fun bm!66430 () Bool)

(declare-fun call!66435 () Bool)

(assert (=> bm!66430 (= call!66435 (isEmpty!6323 s!10566))))

(declare-fun b!1000172 () Bool)

(declare-fun e!641211 () Bool)

(declare-fun e!641209 () Bool)

(assert (=> b!1000172 (= e!641211 e!641209)))

(declare-fun res!451604 () Bool)

(assert (=> b!1000172 (=> res!451604 e!641209)))

(assert (=> b!1000172 (= res!451604 call!66435)))

(declare-fun b!1000173 () Bool)

(assert (=> b!1000173 (= e!641215 e!641211)))

(declare-fun res!451603 () Bool)

(assert (=> b!1000173 (=> (not res!451603) (not e!641211))))

(assert (=> b!1000173 (= res!451603 (not lt!351854))))

(declare-fun b!1000174 () Bool)

(declare-fun e!641214 () Bool)

(assert (=> b!1000174 (= e!641214 (= lt!351854 call!66435))))

(declare-fun b!1000175 () Bool)

(assert (=> b!1000175 (= e!641209 (not (= (head!1844 s!10566) (c!164550 (regOne!6055 r!15766)))))))

(declare-fun b!1000176 () Bool)

(assert (=> b!1000176 (= e!641214 e!641210)))

(declare-fun c!164682 () Bool)

(assert (=> b!1000176 (= c!164682 ((_ is EmptyLang!2771) (regOne!6055 r!15766)))))

(declare-fun b!1000177 () Bool)

(declare-fun e!641212 () Bool)

(assert (=> b!1000177 (= e!641212 (nullable!885 (regOne!6055 r!15766)))))

(declare-fun b!1000178 () Bool)

(declare-fun res!451602 () Bool)

(assert (=> b!1000178 (=> (not res!451602) (not e!641213))))

(assert (=> b!1000178 (= res!451602 (isEmpty!6323 (tail!1406 s!10566)))))

(declare-fun b!1000179 () Bool)

(assert (=> b!1000179 (= e!641213 (= (head!1844 s!10566) (c!164550 (regOne!6055 r!15766))))))

(declare-fun b!1000180 () Bool)

(declare-fun res!451605 () Bool)

(assert (=> b!1000180 (=> res!451605 e!641209)))

(assert (=> b!1000180 (= res!451605 (not (isEmpty!6323 (tail!1406 s!10566))))))

(declare-fun d!291229 () Bool)

(assert (=> d!291229 e!641214))

(declare-fun c!164681 () Bool)

(assert (=> d!291229 (= c!164681 ((_ is EmptyExpr!2771) (regOne!6055 r!15766)))))

(assert (=> d!291229 (= lt!351854 e!641212)))

(declare-fun c!164680 () Bool)

(assert (=> d!291229 (= c!164680 (isEmpty!6323 s!10566))))

(assert (=> d!291229 (validRegex!1240 (regOne!6055 r!15766))))

(assert (=> d!291229 (= (matchR!1307 (regOne!6055 r!15766) s!10566) lt!351854)))

(declare-fun b!1000171 () Bool)

(assert (=> b!1000171 (= e!641210 (not lt!351854))))

(declare-fun b!1000181 () Bool)

(assert (=> b!1000181 (= e!641212 (matchR!1307 (derivativeStep!691 (regOne!6055 r!15766) (head!1844 s!10566)) (tail!1406 s!10566)))))

(declare-fun b!1000182 () Bool)

(declare-fun res!451606 () Bool)

(assert (=> b!1000182 (=> (not res!451606) (not e!641213))))

(assert (=> b!1000182 (= res!451606 (not call!66435))))

(assert (= (and d!291229 c!164680) b!1000177))

(assert (= (and d!291229 (not c!164680)) b!1000181))

(assert (= (and d!291229 c!164681) b!1000174))

(assert (= (and d!291229 (not c!164681)) b!1000176))

(assert (= (and b!1000176 c!164682) b!1000171))

(assert (= (and b!1000176 (not c!164682)) b!1000169))

(assert (= (and b!1000169 (not res!451601)) b!1000170))

(assert (= (and b!1000170 res!451607) b!1000182))

(assert (= (and b!1000182 res!451606) b!1000178))

(assert (= (and b!1000178 res!451602) b!1000179))

(assert (= (and b!1000170 (not res!451608)) b!1000173))

(assert (= (and b!1000173 res!451603) b!1000172))

(assert (= (and b!1000172 (not res!451604)) b!1000180))

(assert (= (and b!1000180 (not res!451605)) b!1000175))

(assert (= (or b!1000174 b!1000182 b!1000172) bm!66430))

(assert (=> b!1000175 m!1189553))

(declare-fun m!1189687 () Bool)

(assert (=> b!1000177 m!1189687))

(assert (=> b!1000181 m!1189553))

(assert (=> b!1000181 m!1189553))

(declare-fun m!1189689 () Bool)

(assert (=> b!1000181 m!1189689))

(assert (=> b!1000181 m!1189559))

(assert (=> b!1000181 m!1189689))

(assert (=> b!1000181 m!1189559))

(declare-fun m!1189691 () Bool)

(assert (=> b!1000181 m!1189691))

(assert (=> b!1000180 m!1189559))

(assert (=> b!1000180 m!1189559))

(assert (=> b!1000180 m!1189563))

(assert (=> bm!66430 m!1189565))

(assert (=> b!1000179 m!1189553))

(assert (=> b!1000178 m!1189559))

(assert (=> b!1000178 m!1189559))

(assert (=> b!1000178 m!1189563))

(assert (=> d!291229 m!1189565))

(declare-fun m!1189693 () Bool)

(assert (=> d!291229 m!1189693))

(assert (=> b!999682 d!291229))

(declare-fun d!291231 () Bool)

(declare-fun e!641221 () Bool)

(assert (=> d!291231 e!641221))

(declare-fun res!451613 () Bool)

(assert (=> d!291231 (=> res!451613 e!641221)))

(assert (=> d!291231 (= res!451613 (matchR!1307 (regOne!6055 r!15766) s!10566))))

(declare-fun lt!351857 () Unit!15201)

(declare-fun choose!6330 (Regex!2771 Regex!2771 List!10001) Unit!15201)

(assert (=> d!291231 (= lt!351857 (choose!6330 (regOne!6055 r!15766) (regTwo!6055 r!15766) s!10566))))

(declare-fun e!641220 () Bool)

(assert (=> d!291231 e!641220))

(declare-fun res!451614 () Bool)

(assert (=> d!291231 (=> (not res!451614) (not e!641220))))

(assert (=> d!291231 (= res!451614 (validRegex!1240 (regOne!6055 r!15766)))))

(assert (=> d!291231 (= (lemmaRegexUnionAcceptsThenOneOfTheTwoAccepts!78 (regOne!6055 r!15766) (regTwo!6055 r!15766) s!10566) lt!351857)))

(declare-fun b!1000187 () Bool)

(assert (=> b!1000187 (= e!641220 (validRegex!1240 (regTwo!6055 r!15766)))))

(declare-fun b!1000188 () Bool)

(assert (=> b!1000188 (= e!641221 (matchR!1307 (regTwo!6055 r!15766) s!10566))))

(assert (= (and d!291231 res!451614) b!1000187))

(assert (= (and d!291231 (not res!451613)) b!1000188))

(assert (=> d!291231 m!1189541))

(declare-fun m!1189695 () Bool)

(assert (=> d!291231 m!1189695))

(assert (=> d!291231 m!1189693))

(assert (=> b!1000187 m!1189531))

(assert (=> b!1000188 m!1189551))

(assert (=> b!999682 d!291231))

(declare-fun b!1000193 () Bool)

(declare-fun e!641224 () Bool)

(declare-fun tp!304781 () Bool)

(assert (=> b!1000193 (= e!641224 (and tp_is_empty!5185 tp!304781))))

(assert (=> b!999686 (= tp!304739 e!641224)))

(assert (= (and b!999686 ((_ is Cons!9985) (t!101047 s!10566))) b!1000193))

(declare-fun b!1000207 () Bool)

(declare-fun e!641227 () Bool)

(declare-fun tp!304795 () Bool)

(declare-fun tp!304792 () Bool)

(assert (=> b!1000207 (= e!641227 (and tp!304795 tp!304792))))

(declare-fun b!1000204 () Bool)

(assert (=> b!1000204 (= e!641227 tp_is_empty!5185)))

(declare-fun b!1000205 () Bool)

(declare-fun tp!304796 () Bool)

(declare-fun tp!304793 () Bool)

(assert (=> b!1000205 (= e!641227 (and tp!304796 tp!304793))))

(assert (=> b!999683 (= tp!304740 e!641227)))

(declare-fun b!1000206 () Bool)

(declare-fun tp!304794 () Bool)

(assert (=> b!1000206 (= e!641227 tp!304794)))

(assert (= (and b!999683 ((_ is ElementMatch!2771) (regOne!6054 r!15766))) b!1000204))

(assert (= (and b!999683 ((_ is Concat!4604) (regOne!6054 r!15766))) b!1000205))

(assert (= (and b!999683 ((_ is Star!2771) (regOne!6054 r!15766))) b!1000206))

(assert (= (and b!999683 ((_ is Union!2771) (regOne!6054 r!15766))) b!1000207))

(declare-fun b!1000211 () Bool)

(declare-fun e!641228 () Bool)

(declare-fun tp!304800 () Bool)

(declare-fun tp!304797 () Bool)

(assert (=> b!1000211 (= e!641228 (and tp!304800 tp!304797))))

(declare-fun b!1000208 () Bool)

(assert (=> b!1000208 (= e!641228 tp_is_empty!5185)))

(declare-fun b!1000209 () Bool)

(declare-fun tp!304801 () Bool)

(declare-fun tp!304798 () Bool)

(assert (=> b!1000209 (= e!641228 (and tp!304801 tp!304798))))

(assert (=> b!999683 (= tp!304735 e!641228)))

(declare-fun b!1000210 () Bool)

(declare-fun tp!304799 () Bool)

(assert (=> b!1000210 (= e!641228 tp!304799)))

(assert (= (and b!999683 ((_ is ElementMatch!2771) (regTwo!6054 r!15766))) b!1000208))

(assert (= (and b!999683 ((_ is Concat!4604) (regTwo!6054 r!15766))) b!1000209))

(assert (= (and b!999683 ((_ is Star!2771) (regTwo!6054 r!15766))) b!1000210))

(assert (= (and b!999683 ((_ is Union!2771) (regTwo!6054 r!15766))) b!1000211))

(declare-fun b!1000215 () Bool)

(declare-fun e!641229 () Bool)

(declare-fun tp!304805 () Bool)

(declare-fun tp!304802 () Bool)

(assert (=> b!1000215 (= e!641229 (and tp!304805 tp!304802))))

(declare-fun b!1000212 () Bool)

(assert (=> b!1000212 (= e!641229 tp_is_empty!5185)))

(declare-fun b!1000213 () Bool)

(declare-fun tp!304806 () Bool)

(declare-fun tp!304803 () Bool)

(assert (=> b!1000213 (= e!641229 (and tp!304806 tp!304803))))

(assert (=> b!999678 (= tp!304738 e!641229)))

(declare-fun b!1000214 () Bool)

(declare-fun tp!304804 () Bool)

(assert (=> b!1000214 (= e!641229 tp!304804)))

(assert (= (and b!999678 ((_ is ElementMatch!2771) (regOne!6055 r!15766))) b!1000212))

(assert (= (and b!999678 ((_ is Concat!4604) (regOne!6055 r!15766))) b!1000213))

(assert (= (and b!999678 ((_ is Star!2771) (regOne!6055 r!15766))) b!1000214))

(assert (= (and b!999678 ((_ is Union!2771) (regOne!6055 r!15766))) b!1000215))

(declare-fun b!1000219 () Bool)

(declare-fun e!641230 () Bool)

(declare-fun tp!304810 () Bool)

(declare-fun tp!304807 () Bool)

(assert (=> b!1000219 (= e!641230 (and tp!304810 tp!304807))))

(declare-fun b!1000216 () Bool)

(assert (=> b!1000216 (= e!641230 tp_is_empty!5185)))

(declare-fun b!1000217 () Bool)

(declare-fun tp!304811 () Bool)

(declare-fun tp!304808 () Bool)

(assert (=> b!1000217 (= e!641230 (and tp!304811 tp!304808))))

(assert (=> b!999678 (= tp!304737 e!641230)))

(declare-fun b!1000218 () Bool)

(declare-fun tp!304809 () Bool)

(assert (=> b!1000218 (= e!641230 tp!304809)))

(assert (= (and b!999678 ((_ is ElementMatch!2771) (regTwo!6055 r!15766))) b!1000216))

(assert (= (and b!999678 ((_ is Concat!4604) (regTwo!6055 r!15766))) b!1000217))

(assert (= (and b!999678 ((_ is Star!2771) (regTwo!6055 r!15766))) b!1000218))

(assert (= (and b!999678 ((_ is Union!2771) (regTwo!6055 r!15766))) b!1000219))

(declare-fun b!1000223 () Bool)

(declare-fun e!641231 () Bool)

(declare-fun tp!304815 () Bool)

(declare-fun tp!304812 () Bool)

(assert (=> b!1000223 (= e!641231 (and tp!304815 tp!304812))))

(declare-fun b!1000220 () Bool)

(assert (=> b!1000220 (= e!641231 tp_is_empty!5185)))

(declare-fun b!1000221 () Bool)

(declare-fun tp!304816 () Bool)

(declare-fun tp!304813 () Bool)

(assert (=> b!1000221 (= e!641231 (and tp!304816 tp!304813))))

(assert (=> b!999687 (= tp!304736 e!641231)))

(declare-fun b!1000222 () Bool)

(declare-fun tp!304814 () Bool)

(assert (=> b!1000222 (= e!641231 tp!304814)))

(assert (= (and b!999687 ((_ is ElementMatch!2771) (reg!3100 r!15766))) b!1000220))

(assert (= (and b!999687 ((_ is Concat!4604) (reg!3100 r!15766))) b!1000221))

(assert (= (and b!999687 ((_ is Star!2771) (reg!3100 r!15766))) b!1000222))

(assert (= (and b!999687 ((_ is Union!2771) (reg!3100 r!15766))) b!1000223))

(check-sat (not b!999750) (not b!1000142) (not d!291213) (not b!999756) (not b!1000214) (not b!1000210) (not b!1000213) (not bm!66423) (not d!291189) (not b!999979) (not b!1000205) (not bm!66424) (not bm!66415) (not b!999754) (not b!1000206) (not bm!66425) (not b!1000179) (not bm!66360) (not b!1000211) (not bm!66359) (not b!999980) (not b!1000193) (not bm!66416) (not bm!66397) (not bm!66418) (not d!291231) (not b!1000218) (not b!1000222) (not bm!66428) (not b!1000178) (not b!1000175) (not b!999976) (not b!1000168) (not bm!66413) (not b!1000188) (not b!1000209) (not bm!66420) (not d!291211) (not b!1000223) (not b!1000177) (not b!1000215) (not b!999752) (not b!999942) (not b!1000217) (not b!1000180) (not b!999755) (not b!1000221) (not b!1000077) (not b!1000187) (not bm!66422) (not bm!66430) (not b!999982) (not b!999981) (not b!1000207) (not bm!66398) (not b!1000181) tp_is_empty!5185 (not b!999945) (not bm!66331) (not b!999978) (not d!291229) (not bm!66417) (not b!1000219) (not bm!66429) (not b!999753) (not bm!66373))
(check-sat)
