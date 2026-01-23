; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!80334 () Bool)

(assert start!80334)

(declare-fun b!890523 () Bool)

(declare-fun e!583503 () Bool)

(declare-datatypes ((C!5188 0))(
  ( (C!5189 (val!2842 Int)) )
))
(declare-datatypes ((Regex!2309 0))(
  ( (ElementMatch!2309 (c!144084 C!5188)) (Concat!4142 (regOne!5130 Regex!2309) (regTwo!5130 Regex!2309)) (EmptyExpr!2309) (Star!2309 (reg!2638 Regex!2309)) (EmptyLang!2309) (Union!2309 (regOne!5131 Regex!2309) (regTwo!5131 Regex!2309)) )
))
(declare-fun r!15766 () Regex!2309)

(declare-fun validRegex!778 (Regex!2309) Bool)

(assert (=> b!890523 (= e!583503 (validRegex!778 (regTwo!5131 r!15766)))))

(declare-datatypes ((List!9539 0))(
  ( (Nil!9523) (Cons!9523 (h!14924 C!5188) (t!100585 List!9539)) )
))
(declare-fun s!10566 () List!9539)

(declare-fun matchR!847 (Regex!2309 List!9539) Bool)

(declare-fun removeUselessConcat!44 (Regex!2309) Regex!2309)

(assert (=> b!890523 (= (matchR!847 (regTwo!5131 r!15766) s!10566) (matchR!847 (removeUselessConcat!44 (regTwo!5131 r!15766)) s!10566))))

(declare-datatypes ((Unit!14197 0))(
  ( (Unit!14198) )
))
(declare-fun lt!332357 () Unit!14197)

(declare-fun lemmaRemoveUselessConcatSound!38 (Regex!2309 List!9539) Unit!14197)

(assert (=> b!890523 (= lt!332357 (lemmaRemoveUselessConcatSound!38 (regTwo!5131 r!15766) s!10566))))

(declare-fun b!890524 () Bool)

(declare-fun e!583500 () Bool)

(assert (=> b!890524 (= e!583500 e!583503)))

(declare-fun res!404930 () Bool)

(assert (=> b!890524 (=> res!404930 e!583503)))

(declare-fun lt!332353 () Bool)

(assert (=> b!890524 (= res!404930 lt!332353)))

(declare-fun e!583499 () Bool)

(assert (=> b!890524 e!583499))

(declare-fun res!404929 () Bool)

(assert (=> b!890524 (=> res!404929 e!583499)))

(assert (=> b!890524 (= res!404929 lt!332353)))

(assert (=> b!890524 (= lt!332353 (matchR!847 (regOne!5131 r!15766) s!10566))))

(declare-fun lt!332356 () Unit!14197)

(declare-fun lemmaRegexUnionAcceptsThenOneOfTheTwoAccepts!20 (Regex!2309 Regex!2309 List!9539) Unit!14197)

(assert (=> b!890524 (= lt!332356 (lemmaRegexUnionAcceptsThenOneOfTheTwoAccepts!20 (regOne!5131 r!15766) (regTwo!5131 r!15766) s!10566))))

(declare-fun b!890525 () Bool)

(assert (=> b!890525 (= e!583499 (matchR!847 (regTwo!5131 r!15766) s!10566))))

(declare-fun b!890526 () Bool)

(declare-fun e!583501 () Bool)

(declare-fun tp_is_empty!4261 () Bool)

(assert (=> b!890526 (= e!583501 tp_is_empty!4261)))

(declare-fun b!890527 () Bool)

(declare-fun tp!280378 () Bool)

(declare-fun tp!280376 () Bool)

(assert (=> b!890527 (= e!583501 (and tp!280378 tp!280376))))

(declare-fun b!890528 () Bool)

(declare-fun tp!280375 () Bool)

(declare-fun tp!280379 () Bool)

(assert (=> b!890528 (= e!583501 (and tp!280375 tp!280379))))

(declare-fun b!890530 () Bool)

(declare-fun e!583498 () Bool)

(assert (=> b!890530 (= e!583498 (not e!583500))))

(declare-fun res!404932 () Bool)

(assert (=> b!890530 (=> res!404932 e!583500)))

(declare-fun lt!332354 () Bool)

(get-info :version)

(assert (=> b!890530 (= res!404932 (or (not lt!332354) (and ((_ is Concat!4142) r!15766) ((_ is EmptyExpr!2309) (regOne!5130 r!15766))) (and ((_ is Concat!4142) r!15766) ((_ is EmptyExpr!2309) (regTwo!5130 r!15766))) ((_ is Concat!4142) r!15766) (not ((_ is Union!2309) r!15766))))))

(declare-fun matchRSpec!110 (Regex!2309 List!9539) Bool)

(assert (=> b!890530 (= lt!332354 (matchRSpec!110 r!15766 s!10566))))

(assert (=> b!890530 (= lt!332354 (matchR!847 r!15766 s!10566))))

(declare-fun lt!332355 () Unit!14197)

(declare-fun mainMatchTheorem!110 (Regex!2309 List!9539) Unit!14197)

(assert (=> b!890530 (= lt!332355 (mainMatchTheorem!110 r!15766 s!10566))))

(declare-fun b!890531 () Bool)

(declare-fun tp!280377 () Bool)

(assert (=> b!890531 (= e!583501 tp!280377)))

(declare-fun b!890529 () Bool)

(declare-fun e!583502 () Bool)

(declare-fun tp!280380 () Bool)

(assert (=> b!890529 (= e!583502 (and tp_is_empty!4261 tp!280380))))

(declare-fun res!404931 () Bool)

(assert (=> start!80334 (=> (not res!404931) (not e!583498))))

(assert (=> start!80334 (= res!404931 (validRegex!778 r!15766))))

(assert (=> start!80334 e!583498))

(assert (=> start!80334 e!583501))

(assert (=> start!80334 e!583502))

(assert (= (and start!80334 res!404931) b!890530))

(assert (= (and b!890530 (not res!404932)) b!890524))

(assert (= (and b!890524 (not res!404929)) b!890525))

(assert (= (and b!890524 (not res!404930)) b!890523))

(assert (= (and start!80334 ((_ is ElementMatch!2309) r!15766)) b!890526))

(assert (= (and start!80334 ((_ is Concat!4142) r!15766)) b!890527))

(assert (= (and start!80334 ((_ is Star!2309) r!15766)) b!890531))

(assert (= (and start!80334 ((_ is Union!2309) r!15766)) b!890528))

(assert (= (and start!80334 ((_ is Cons!9523) s!10566)) b!890529))

(declare-fun m!1133835 () Bool)

(assert (=> b!890530 m!1133835))

(declare-fun m!1133837 () Bool)

(assert (=> b!890530 m!1133837))

(declare-fun m!1133839 () Bool)

(assert (=> b!890530 m!1133839))

(declare-fun m!1133841 () Bool)

(assert (=> b!890523 m!1133841))

(declare-fun m!1133843 () Bool)

(assert (=> b!890523 m!1133843))

(declare-fun m!1133845 () Bool)

(assert (=> b!890523 m!1133845))

(declare-fun m!1133847 () Bool)

(assert (=> b!890523 m!1133847))

(declare-fun m!1133849 () Bool)

(assert (=> b!890523 m!1133849))

(assert (=> b!890523 m!1133847))

(declare-fun m!1133851 () Bool)

(assert (=> start!80334 m!1133851))

(assert (=> b!890525 m!1133841))

(declare-fun m!1133853 () Bool)

(assert (=> b!890524 m!1133853))

(declare-fun m!1133855 () Bool)

(assert (=> b!890524 m!1133855))

(check-sat (not b!890528) (not b!890531) (not b!890524) tp_is_empty!4261 (not start!80334) (not b!890527) (not b!890529) (not b!890523) (not b!890530) (not b!890525))
(check-sat)
(get-model)

(declare-fun b!890593 () Bool)

(declare-fun res!404956 () Bool)

(declare-fun e!583540 () Bool)

(assert (=> b!890593 (=> res!404956 e!583540)))

(assert (=> b!890593 (= res!404956 (not ((_ is ElementMatch!2309) (regOne!5131 r!15766))))))

(declare-fun e!583541 () Bool)

(assert (=> b!890593 (= e!583541 e!583540)))

(declare-fun b!890594 () Bool)

(declare-fun res!404959 () Bool)

(declare-fun e!583536 () Bool)

(assert (=> b!890594 (=> res!404959 e!583536)))

(declare-fun isEmpty!5723 (List!9539) Bool)

(declare-fun tail!1128 (List!9539) List!9539)

(assert (=> b!890594 (= res!404959 (not (isEmpty!5723 (tail!1128 s!10566))))))

(declare-fun b!890595 () Bool)

(declare-fun e!583537 () Bool)

(declare-fun nullable!601 (Regex!2309) Bool)

(assert (=> b!890595 (= e!583537 (nullable!601 (regOne!5131 r!15766)))))

(declare-fun bm!52538 () Bool)

(declare-fun call!52543 () Bool)

(assert (=> bm!52538 (= call!52543 (isEmpty!5723 s!10566))))

(declare-fun b!890597 () Bool)

(declare-fun e!583542 () Bool)

(assert (=> b!890597 (= e!583542 e!583541)))

(declare-fun c!144106 () Bool)

(assert (=> b!890597 (= c!144106 ((_ is EmptyLang!2309) (regOne!5131 r!15766)))))

(declare-fun b!890598 () Bool)

(declare-fun res!404958 () Bool)

(declare-fun e!583538 () Bool)

(assert (=> b!890598 (=> (not res!404958) (not e!583538))))

(assert (=> b!890598 (= res!404958 (not call!52543))))

(declare-fun b!890599 () Bool)

(declare-fun res!404955 () Bool)

(assert (=> b!890599 (=> (not res!404955) (not e!583538))))

(assert (=> b!890599 (= res!404955 (isEmpty!5723 (tail!1128 s!10566)))))

(declare-fun b!890600 () Bool)

(declare-fun head!1566 (List!9539) C!5188)

(assert (=> b!890600 (= e!583538 (= (head!1566 s!10566) (c!144084 (regOne!5131 r!15766))))))

(declare-fun b!890601 () Bool)

(declare-fun res!404953 () Bool)

(assert (=> b!890601 (=> res!404953 e!583540)))

(assert (=> b!890601 (= res!404953 e!583538)))

(declare-fun res!404954 () Bool)

(assert (=> b!890601 (=> (not res!404954) (not e!583538))))

(declare-fun lt!332363 () Bool)

(assert (=> b!890601 (= res!404954 lt!332363)))

(declare-fun b!890602 () Bool)

(assert (=> b!890602 (= e!583541 (not lt!332363))))

(declare-fun b!890603 () Bool)

(assert (=> b!890603 (= e!583542 (= lt!332363 call!52543))))

(declare-fun b!890604 () Bool)

(declare-fun derivativeStep!413 (Regex!2309 C!5188) Regex!2309)

(assert (=> b!890604 (= e!583537 (matchR!847 (derivativeStep!413 (regOne!5131 r!15766) (head!1566 s!10566)) (tail!1128 s!10566)))))

(declare-fun b!890605 () Bool)

(declare-fun e!583539 () Bool)

(assert (=> b!890605 (= e!583539 e!583536)))

(declare-fun res!404952 () Bool)

(assert (=> b!890605 (=> res!404952 e!583536)))

(assert (=> b!890605 (= res!404952 call!52543)))

(declare-fun b!890606 () Bool)

(assert (=> b!890606 (= e!583536 (not (= (head!1566 s!10566) (c!144084 (regOne!5131 r!15766)))))))

(declare-fun b!890596 () Bool)

(assert (=> b!890596 (= e!583540 e!583539)))

(declare-fun res!404957 () Bool)

(assert (=> b!890596 (=> (not res!404957) (not e!583539))))

(assert (=> b!890596 (= res!404957 (not lt!332363))))

(declare-fun d!277320 () Bool)

(assert (=> d!277320 e!583542))

(declare-fun c!144108 () Bool)

(assert (=> d!277320 (= c!144108 ((_ is EmptyExpr!2309) (regOne!5131 r!15766)))))

(assert (=> d!277320 (= lt!332363 e!583537)))

(declare-fun c!144107 () Bool)

(assert (=> d!277320 (= c!144107 (isEmpty!5723 s!10566))))

(assert (=> d!277320 (validRegex!778 (regOne!5131 r!15766))))

(assert (=> d!277320 (= (matchR!847 (regOne!5131 r!15766) s!10566) lt!332363)))

(assert (= (and d!277320 c!144107) b!890595))

(assert (= (and d!277320 (not c!144107)) b!890604))

(assert (= (and d!277320 c!144108) b!890603))

(assert (= (and d!277320 (not c!144108)) b!890597))

(assert (= (and b!890597 c!144106) b!890602))

(assert (= (and b!890597 (not c!144106)) b!890593))

(assert (= (and b!890593 (not res!404956)) b!890601))

(assert (= (and b!890601 res!404954) b!890598))

(assert (= (and b!890598 res!404958) b!890599))

(assert (= (and b!890599 res!404955) b!890600))

(assert (= (and b!890601 (not res!404953)) b!890596))

(assert (= (and b!890596 res!404957) b!890605))

(assert (= (and b!890605 (not res!404952)) b!890594))

(assert (= (and b!890594 (not res!404959)) b!890606))

(assert (= (or b!890603 b!890598 b!890605) bm!52538))

(declare-fun m!1133867 () Bool)

(assert (=> d!277320 m!1133867))

(declare-fun m!1133869 () Bool)

(assert (=> d!277320 m!1133869))

(declare-fun m!1133871 () Bool)

(assert (=> b!890604 m!1133871))

(assert (=> b!890604 m!1133871))

(declare-fun m!1133873 () Bool)

(assert (=> b!890604 m!1133873))

(declare-fun m!1133875 () Bool)

(assert (=> b!890604 m!1133875))

(assert (=> b!890604 m!1133873))

(assert (=> b!890604 m!1133875))

(declare-fun m!1133877 () Bool)

(assert (=> b!890604 m!1133877))

(assert (=> b!890599 m!1133875))

(assert (=> b!890599 m!1133875))

(declare-fun m!1133879 () Bool)

(assert (=> b!890599 m!1133879))

(assert (=> b!890594 m!1133875))

(assert (=> b!890594 m!1133875))

(assert (=> b!890594 m!1133879))

(assert (=> bm!52538 m!1133867))

(declare-fun m!1133883 () Bool)

(assert (=> b!890595 m!1133883))

(assert (=> b!890600 m!1133871))

(assert (=> b!890606 m!1133871))

(assert (=> b!890524 d!277320))

(declare-fun d!277324 () Bool)

(declare-fun e!583547 () Bool)

(assert (=> d!277324 e!583547))

(declare-fun res!404964 () Bool)

(assert (=> d!277324 (=> res!404964 e!583547)))

(assert (=> d!277324 (= res!404964 (matchR!847 (regOne!5131 r!15766) s!10566))))

(declare-fun lt!332369 () Unit!14197)

(declare-fun choose!5321 (Regex!2309 Regex!2309 List!9539) Unit!14197)

(assert (=> d!277324 (= lt!332369 (choose!5321 (regOne!5131 r!15766) (regTwo!5131 r!15766) s!10566))))

(declare-fun e!583548 () Bool)

(assert (=> d!277324 e!583548))

(declare-fun res!404965 () Bool)

(assert (=> d!277324 (=> (not res!404965) (not e!583548))))

(assert (=> d!277324 (= res!404965 (validRegex!778 (regOne!5131 r!15766)))))

(assert (=> d!277324 (= (lemmaRegexUnionAcceptsThenOneOfTheTwoAccepts!20 (regOne!5131 r!15766) (regTwo!5131 r!15766) s!10566) lt!332369)))

(declare-fun b!890611 () Bool)

(assert (=> b!890611 (= e!583548 (validRegex!778 (regTwo!5131 r!15766)))))

(declare-fun b!890612 () Bool)

(assert (=> b!890612 (= e!583547 (matchR!847 (regTwo!5131 r!15766) s!10566))))

(assert (= (and d!277324 res!404965) b!890611))

(assert (= (and d!277324 (not res!404964)) b!890612))

(assert (=> d!277324 m!1133853))

(declare-fun m!1133885 () Bool)

(assert (=> d!277324 m!1133885))

(assert (=> d!277324 m!1133869))

(assert (=> b!890611 m!1133845))

(assert (=> b!890612 m!1133841))

(assert (=> b!890524 d!277324))

(declare-fun b!890659 () Bool)

(declare-fun res!404994 () Bool)

(declare-fun e!583583 () Bool)

(assert (=> b!890659 (=> (not res!404994) (not e!583583))))

(declare-fun call!52553 () Bool)

(assert (=> b!890659 (= res!404994 call!52553)))

(declare-fun e!583582 () Bool)

(assert (=> b!890659 (= e!583582 e!583583)))

(declare-fun b!890660 () Bool)

(declare-fun e!583579 () Bool)

(declare-fun call!52552 () Bool)

(assert (=> b!890660 (= e!583579 call!52552)))

(declare-fun c!144119 () Bool)

(declare-fun c!144120 () Bool)

(declare-fun bm!52547 () Bool)

(declare-fun call!52554 () Bool)

(assert (=> bm!52547 (= call!52554 (validRegex!778 (ite c!144119 (reg!2638 r!15766) (ite c!144120 (regTwo!5131 r!15766) (regTwo!5130 r!15766)))))))

(declare-fun b!890661 () Bool)

(declare-fun e!583578 () Bool)

(declare-fun e!583577 () Bool)

(assert (=> b!890661 (= e!583578 e!583577)))

(assert (=> b!890661 (= c!144119 ((_ is Star!2309) r!15766))))

(declare-fun d!277328 () Bool)

(declare-fun res!404992 () Bool)

(assert (=> d!277328 (=> res!404992 e!583578)))

(assert (=> d!277328 (= res!404992 ((_ is ElementMatch!2309) r!15766))))

(assert (=> d!277328 (= (validRegex!778 r!15766) e!583578)))

(declare-fun b!890662 () Bool)

(declare-fun e!583580 () Bool)

(assert (=> b!890662 (= e!583580 call!52554)))

(declare-fun b!890663 () Bool)

(declare-fun res!404993 () Bool)

(declare-fun e!583581 () Bool)

(assert (=> b!890663 (=> res!404993 e!583581)))

(assert (=> b!890663 (= res!404993 (not ((_ is Concat!4142) r!15766)))))

(assert (=> b!890663 (= e!583582 e!583581)))

(declare-fun b!890664 () Bool)

(assert (=> b!890664 (= e!583581 e!583579)))

(declare-fun res!404995 () Bool)

(assert (=> b!890664 (=> (not res!404995) (not e!583579))))

(assert (=> b!890664 (= res!404995 call!52553)))

(declare-fun b!890665 () Bool)

(assert (=> b!890665 (= e!583577 e!583582)))

(assert (=> b!890665 (= c!144120 ((_ is Union!2309) r!15766))))

(declare-fun bm!52548 () Bool)

(assert (=> bm!52548 (= call!52552 call!52554)))

(declare-fun b!890666 () Bool)

(assert (=> b!890666 (= e!583583 call!52552)))

(declare-fun b!890667 () Bool)

(assert (=> b!890667 (= e!583577 e!583580)))

(declare-fun res!404996 () Bool)

(assert (=> b!890667 (= res!404996 (not (nullable!601 (reg!2638 r!15766))))))

(assert (=> b!890667 (=> (not res!404996) (not e!583580))))

(declare-fun bm!52549 () Bool)

(assert (=> bm!52549 (= call!52553 (validRegex!778 (ite c!144120 (regOne!5131 r!15766) (regOne!5130 r!15766))))))

(assert (= (and d!277328 (not res!404992)) b!890661))

(assert (= (and b!890661 c!144119) b!890667))

(assert (= (and b!890661 (not c!144119)) b!890665))

(assert (= (and b!890667 res!404996) b!890662))

(assert (= (and b!890665 c!144120) b!890659))

(assert (= (and b!890665 (not c!144120)) b!890663))

(assert (= (and b!890659 res!404994) b!890666))

(assert (= (and b!890663 (not res!404993)) b!890664))

(assert (= (and b!890664 res!404995) b!890660))

(assert (= (or b!890666 b!890660) bm!52548))

(assert (= (or b!890659 b!890664) bm!52549))

(assert (= (or b!890662 bm!52548) bm!52547))

(declare-fun m!1133887 () Bool)

(assert (=> bm!52547 m!1133887))

(declare-fun m!1133889 () Bool)

(assert (=> b!890667 m!1133889))

(declare-fun m!1133891 () Bool)

(assert (=> bm!52549 m!1133891))

(assert (=> start!80334 d!277328))

(declare-fun b!890886 () Bool)

(assert (=> b!890886 true))

(assert (=> b!890886 true))

(declare-fun bs!234830 () Bool)

(declare-fun b!890881 () Bool)

(assert (= bs!234830 (and b!890881 b!890886)))

(declare-fun lambda!27550 () Int)

(declare-fun lambda!27549 () Int)

(assert (=> bs!234830 (not (= lambda!27550 lambda!27549))))

(assert (=> b!890881 true))

(assert (=> b!890881 true))

(declare-fun b!890880 () Bool)

(declare-fun c!144164 () Bool)

(assert (=> b!890880 (= c!144164 ((_ is ElementMatch!2309) r!15766))))

(declare-fun e!583705 () Bool)

(declare-fun e!583703 () Bool)

(assert (=> b!890880 (= e!583705 e!583703)))

(declare-fun e!583702 () Bool)

(declare-fun call!52582 () Bool)

(assert (=> b!890881 (= e!583702 call!52582)))

(declare-fun b!890882 () Bool)

(declare-fun c!144161 () Bool)

(assert (=> b!890882 (= c!144161 ((_ is Union!2309) r!15766))))

(declare-fun e!583700 () Bool)

(assert (=> b!890882 (= e!583703 e!583700)))

(declare-fun d!277330 () Bool)

(declare-fun c!144163 () Bool)

(assert (=> d!277330 (= c!144163 ((_ is EmptyExpr!2309) r!15766))))

(declare-fun e!583701 () Bool)

(assert (=> d!277330 (= (matchRSpec!110 r!15766 s!10566) e!583701)))

(declare-fun bm!52576 () Bool)

(declare-fun c!144162 () Bool)

(declare-fun Exists!94 (Int) Bool)

(assert (=> bm!52576 (= call!52582 (Exists!94 (ite c!144162 lambda!27549 lambda!27550)))))

(declare-fun b!890883 () Bool)

(declare-fun e!583704 () Bool)

(assert (=> b!890883 (= e!583700 e!583704)))

(declare-fun res!405090 () Bool)

(assert (=> b!890883 (= res!405090 (matchRSpec!110 (regOne!5131 r!15766) s!10566))))

(assert (=> b!890883 (=> res!405090 e!583704)))

(declare-fun b!890884 () Bool)

(declare-fun res!405092 () Bool)

(declare-fun e!583699 () Bool)

(assert (=> b!890884 (=> res!405092 e!583699)))

(declare-fun call!52581 () Bool)

(assert (=> b!890884 (= res!405092 call!52581)))

(assert (=> b!890884 (= e!583702 e!583699)))

(declare-fun b!890885 () Bool)

(assert (=> b!890885 (= e!583703 (= s!10566 (Cons!9523 (c!144084 r!15766) Nil!9523)))))

(assert (=> b!890886 (= e!583699 call!52582)))

(declare-fun b!890887 () Bool)

(assert (=> b!890887 (= e!583701 call!52581)))

(declare-fun b!890888 () Bool)

(assert (=> b!890888 (= e!583704 (matchRSpec!110 (regTwo!5131 r!15766) s!10566))))

(declare-fun b!890889 () Bool)

(assert (=> b!890889 (= e!583701 e!583705)))

(declare-fun res!405091 () Bool)

(assert (=> b!890889 (= res!405091 (not ((_ is EmptyLang!2309) r!15766)))))

(assert (=> b!890889 (=> (not res!405091) (not e!583705))))

(declare-fun bm!52577 () Bool)

(assert (=> bm!52577 (= call!52581 (isEmpty!5723 s!10566))))

(declare-fun b!890890 () Bool)

(assert (=> b!890890 (= e!583700 e!583702)))

(assert (=> b!890890 (= c!144162 ((_ is Star!2309) r!15766))))

(assert (= (and d!277330 c!144163) b!890887))

(assert (= (and d!277330 (not c!144163)) b!890889))

(assert (= (and b!890889 res!405091) b!890880))

(assert (= (and b!890880 c!144164) b!890885))

(assert (= (and b!890880 (not c!144164)) b!890882))

(assert (= (and b!890882 c!144161) b!890883))

(assert (= (and b!890882 (not c!144161)) b!890890))

(assert (= (and b!890883 (not res!405090)) b!890888))

(assert (= (and b!890890 c!144162) b!890884))

(assert (= (and b!890890 (not c!144162)) b!890881))

(assert (= (and b!890884 (not res!405092)) b!890886))

(assert (= (or b!890886 b!890881) bm!52576))

(assert (= (or b!890887 b!890884) bm!52577))

(declare-fun m!1133949 () Bool)

(assert (=> bm!52576 m!1133949))

(declare-fun m!1133951 () Bool)

(assert (=> b!890883 m!1133951))

(declare-fun m!1133953 () Bool)

(assert (=> b!890888 m!1133953))

(assert (=> bm!52577 m!1133867))

(assert (=> b!890530 d!277330))

(declare-fun b!890895 () Bool)

(declare-fun res!405097 () Bool)

(declare-fun e!583710 () Bool)

(assert (=> b!890895 (=> res!405097 e!583710)))

(assert (=> b!890895 (= res!405097 (not ((_ is ElementMatch!2309) r!15766)))))

(declare-fun e!583711 () Bool)

(assert (=> b!890895 (= e!583711 e!583710)))

(declare-fun b!890896 () Bool)

(declare-fun res!405100 () Bool)

(declare-fun e!583706 () Bool)

(assert (=> b!890896 (=> res!405100 e!583706)))

(assert (=> b!890896 (= res!405100 (not (isEmpty!5723 (tail!1128 s!10566))))))

(declare-fun b!890897 () Bool)

(declare-fun e!583707 () Bool)

(assert (=> b!890897 (= e!583707 (nullable!601 r!15766))))

(declare-fun bm!52578 () Bool)

(declare-fun call!52583 () Bool)

(assert (=> bm!52578 (= call!52583 (isEmpty!5723 s!10566))))

(declare-fun b!890899 () Bool)

(declare-fun e!583712 () Bool)

(assert (=> b!890899 (= e!583712 e!583711)))

(declare-fun c!144165 () Bool)

(assert (=> b!890899 (= c!144165 ((_ is EmptyLang!2309) r!15766))))

(declare-fun b!890900 () Bool)

(declare-fun res!405099 () Bool)

(declare-fun e!583708 () Bool)

(assert (=> b!890900 (=> (not res!405099) (not e!583708))))

(assert (=> b!890900 (= res!405099 (not call!52583))))

(declare-fun b!890901 () Bool)

(declare-fun res!405096 () Bool)

(assert (=> b!890901 (=> (not res!405096) (not e!583708))))

(assert (=> b!890901 (= res!405096 (isEmpty!5723 (tail!1128 s!10566)))))

(declare-fun b!890902 () Bool)

(assert (=> b!890902 (= e!583708 (= (head!1566 s!10566) (c!144084 r!15766)))))

(declare-fun b!890903 () Bool)

(declare-fun res!405094 () Bool)

(assert (=> b!890903 (=> res!405094 e!583710)))

(assert (=> b!890903 (= res!405094 e!583708)))

(declare-fun res!405095 () Bool)

(assert (=> b!890903 (=> (not res!405095) (not e!583708))))

(declare-fun lt!332382 () Bool)

(assert (=> b!890903 (= res!405095 lt!332382)))

(declare-fun b!890904 () Bool)

(assert (=> b!890904 (= e!583711 (not lt!332382))))

(declare-fun b!890905 () Bool)

(assert (=> b!890905 (= e!583712 (= lt!332382 call!52583))))

(declare-fun b!890906 () Bool)

(assert (=> b!890906 (= e!583707 (matchR!847 (derivativeStep!413 r!15766 (head!1566 s!10566)) (tail!1128 s!10566)))))

(declare-fun b!890907 () Bool)

(declare-fun e!583709 () Bool)

(assert (=> b!890907 (= e!583709 e!583706)))

(declare-fun res!405093 () Bool)

(assert (=> b!890907 (=> res!405093 e!583706)))

(assert (=> b!890907 (= res!405093 call!52583)))

(declare-fun b!890908 () Bool)

(assert (=> b!890908 (= e!583706 (not (= (head!1566 s!10566) (c!144084 r!15766))))))

(declare-fun b!890898 () Bool)

(assert (=> b!890898 (= e!583710 e!583709)))

(declare-fun res!405098 () Bool)

(assert (=> b!890898 (=> (not res!405098) (not e!583709))))

(assert (=> b!890898 (= res!405098 (not lt!332382))))

(declare-fun d!277348 () Bool)

(assert (=> d!277348 e!583712))

(declare-fun c!144167 () Bool)

(assert (=> d!277348 (= c!144167 ((_ is EmptyExpr!2309) r!15766))))

(assert (=> d!277348 (= lt!332382 e!583707)))

(declare-fun c!144166 () Bool)

(assert (=> d!277348 (= c!144166 (isEmpty!5723 s!10566))))

(assert (=> d!277348 (validRegex!778 r!15766)))

(assert (=> d!277348 (= (matchR!847 r!15766 s!10566) lt!332382)))

(assert (= (and d!277348 c!144166) b!890897))

(assert (= (and d!277348 (not c!144166)) b!890906))

(assert (= (and d!277348 c!144167) b!890905))

(assert (= (and d!277348 (not c!144167)) b!890899))

(assert (= (and b!890899 c!144165) b!890904))

(assert (= (and b!890899 (not c!144165)) b!890895))

(assert (= (and b!890895 (not res!405097)) b!890903))

(assert (= (and b!890903 res!405095) b!890900))

(assert (= (and b!890900 res!405099) b!890901))

(assert (= (and b!890901 res!405096) b!890902))

(assert (= (and b!890903 (not res!405094)) b!890898))

(assert (= (and b!890898 res!405098) b!890907))

(assert (= (and b!890907 (not res!405093)) b!890896))

(assert (= (and b!890896 (not res!405100)) b!890908))

(assert (= (or b!890905 b!890900 b!890907) bm!52578))

(assert (=> d!277348 m!1133867))

(assert (=> d!277348 m!1133851))

(assert (=> b!890906 m!1133871))

(assert (=> b!890906 m!1133871))

(declare-fun m!1133955 () Bool)

(assert (=> b!890906 m!1133955))

(assert (=> b!890906 m!1133875))

(assert (=> b!890906 m!1133955))

(assert (=> b!890906 m!1133875))

(declare-fun m!1133957 () Bool)

(assert (=> b!890906 m!1133957))

(assert (=> b!890901 m!1133875))

(assert (=> b!890901 m!1133875))

(assert (=> b!890901 m!1133879))

(assert (=> b!890896 m!1133875))

(assert (=> b!890896 m!1133875))

(assert (=> b!890896 m!1133879))

(assert (=> bm!52578 m!1133867))

(declare-fun m!1133959 () Bool)

(assert (=> b!890897 m!1133959))

(assert (=> b!890902 m!1133871))

(assert (=> b!890908 m!1133871))

(assert (=> b!890530 d!277348))

(declare-fun d!277350 () Bool)

(assert (=> d!277350 (= (matchR!847 r!15766 s!10566) (matchRSpec!110 r!15766 s!10566))))

(declare-fun lt!332385 () Unit!14197)

(declare-fun choose!5323 (Regex!2309 List!9539) Unit!14197)

(assert (=> d!277350 (= lt!332385 (choose!5323 r!15766 s!10566))))

(assert (=> d!277350 (validRegex!778 r!15766)))

(assert (=> d!277350 (= (mainMatchTheorem!110 r!15766 s!10566) lt!332385)))

(declare-fun bs!234831 () Bool)

(assert (= bs!234831 d!277350))

(assert (=> bs!234831 m!1133837))

(assert (=> bs!234831 m!1133835))

(declare-fun m!1133961 () Bool)

(assert (=> bs!234831 m!1133961))

(assert (=> bs!234831 m!1133851))

(assert (=> b!890530 d!277350))

(declare-fun b!890909 () Bool)

(declare-fun res!405105 () Bool)

(declare-fun e!583717 () Bool)

(assert (=> b!890909 (=> res!405105 e!583717)))

(assert (=> b!890909 (= res!405105 (not ((_ is ElementMatch!2309) (regTwo!5131 r!15766))))))

(declare-fun e!583718 () Bool)

(assert (=> b!890909 (= e!583718 e!583717)))

(declare-fun b!890910 () Bool)

(declare-fun res!405108 () Bool)

(declare-fun e!583713 () Bool)

(assert (=> b!890910 (=> res!405108 e!583713)))

(assert (=> b!890910 (= res!405108 (not (isEmpty!5723 (tail!1128 s!10566))))))

(declare-fun b!890911 () Bool)

(declare-fun e!583714 () Bool)

(assert (=> b!890911 (= e!583714 (nullable!601 (regTwo!5131 r!15766)))))

(declare-fun bm!52579 () Bool)

(declare-fun call!52584 () Bool)

(assert (=> bm!52579 (= call!52584 (isEmpty!5723 s!10566))))

(declare-fun b!890913 () Bool)

(declare-fun e!583719 () Bool)

(assert (=> b!890913 (= e!583719 e!583718)))

(declare-fun c!144168 () Bool)

(assert (=> b!890913 (= c!144168 ((_ is EmptyLang!2309) (regTwo!5131 r!15766)))))

(declare-fun b!890914 () Bool)

(declare-fun res!405107 () Bool)

(declare-fun e!583715 () Bool)

(assert (=> b!890914 (=> (not res!405107) (not e!583715))))

(assert (=> b!890914 (= res!405107 (not call!52584))))

(declare-fun b!890915 () Bool)

(declare-fun res!405104 () Bool)

(assert (=> b!890915 (=> (not res!405104) (not e!583715))))

(assert (=> b!890915 (= res!405104 (isEmpty!5723 (tail!1128 s!10566)))))

(declare-fun b!890916 () Bool)

(assert (=> b!890916 (= e!583715 (= (head!1566 s!10566) (c!144084 (regTwo!5131 r!15766))))))

(declare-fun b!890917 () Bool)

(declare-fun res!405102 () Bool)

(assert (=> b!890917 (=> res!405102 e!583717)))

(assert (=> b!890917 (= res!405102 e!583715)))

(declare-fun res!405103 () Bool)

(assert (=> b!890917 (=> (not res!405103) (not e!583715))))

(declare-fun lt!332386 () Bool)

(assert (=> b!890917 (= res!405103 lt!332386)))

(declare-fun b!890918 () Bool)

(assert (=> b!890918 (= e!583718 (not lt!332386))))

(declare-fun b!890919 () Bool)

(assert (=> b!890919 (= e!583719 (= lt!332386 call!52584))))

(declare-fun b!890920 () Bool)

(assert (=> b!890920 (= e!583714 (matchR!847 (derivativeStep!413 (regTwo!5131 r!15766) (head!1566 s!10566)) (tail!1128 s!10566)))))

(declare-fun b!890921 () Bool)

(declare-fun e!583716 () Bool)

(assert (=> b!890921 (= e!583716 e!583713)))

(declare-fun res!405101 () Bool)

(assert (=> b!890921 (=> res!405101 e!583713)))

(assert (=> b!890921 (= res!405101 call!52584)))

(declare-fun b!890922 () Bool)

(assert (=> b!890922 (= e!583713 (not (= (head!1566 s!10566) (c!144084 (regTwo!5131 r!15766)))))))

(declare-fun b!890912 () Bool)

(assert (=> b!890912 (= e!583717 e!583716)))

(declare-fun res!405106 () Bool)

(assert (=> b!890912 (=> (not res!405106) (not e!583716))))

(assert (=> b!890912 (= res!405106 (not lt!332386))))

(declare-fun d!277352 () Bool)

(assert (=> d!277352 e!583719))

(declare-fun c!144170 () Bool)

(assert (=> d!277352 (= c!144170 ((_ is EmptyExpr!2309) (regTwo!5131 r!15766)))))

(assert (=> d!277352 (= lt!332386 e!583714)))

(declare-fun c!144169 () Bool)

(assert (=> d!277352 (= c!144169 (isEmpty!5723 s!10566))))

(assert (=> d!277352 (validRegex!778 (regTwo!5131 r!15766))))

(assert (=> d!277352 (= (matchR!847 (regTwo!5131 r!15766) s!10566) lt!332386)))

(assert (= (and d!277352 c!144169) b!890911))

(assert (= (and d!277352 (not c!144169)) b!890920))

(assert (= (and d!277352 c!144170) b!890919))

(assert (= (and d!277352 (not c!144170)) b!890913))

(assert (= (and b!890913 c!144168) b!890918))

(assert (= (and b!890913 (not c!144168)) b!890909))

(assert (= (and b!890909 (not res!405105)) b!890917))

(assert (= (and b!890917 res!405103) b!890914))

(assert (= (and b!890914 res!405107) b!890915))

(assert (= (and b!890915 res!405104) b!890916))

(assert (= (and b!890917 (not res!405102)) b!890912))

(assert (= (and b!890912 res!405106) b!890921))

(assert (= (and b!890921 (not res!405101)) b!890910))

(assert (= (and b!890910 (not res!405108)) b!890922))

(assert (= (or b!890919 b!890914 b!890921) bm!52579))

(assert (=> d!277352 m!1133867))

(assert (=> d!277352 m!1133845))

(assert (=> b!890920 m!1133871))

(assert (=> b!890920 m!1133871))

(declare-fun m!1133963 () Bool)

(assert (=> b!890920 m!1133963))

(assert (=> b!890920 m!1133875))

(assert (=> b!890920 m!1133963))

(assert (=> b!890920 m!1133875))

(declare-fun m!1133965 () Bool)

(assert (=> b!890920 m!1133965))

(assert (=> b!890915 m!1133875))

(assert (=> b!890915 m!1133875))

(assert (=> b!890915 m!1133879))

(assert (=> b!890910 m!1133875))

(assert (=> b!890910 m!1133875))

(assert (=> b!890910 m!1133879))

(assert (=> bm!52579 m!1133867))

(declare-fun m!1133967 () Bool)

(assert (=> b!890911 m!1133967))

(assert (=> b!890916 m!1133871))

(assert (=> b!890922 m!1133871))

(assert (=> b!890525 d!277352))

(declare-fun b!890945 () Bool)

(declare-fun e!583732 () Regex!2309)

(declare-fun e!583734 () Regex!2309)

(assert (=> b!890945 (= e!583732 e!583734)))

(declare-fun c!144181 () Bool)

(assert (=> b!890945 (= c!144181 (and ((_ is Concat!4142) (regTwo!5131 r!15766)) ((_ is EmptyExpr!2309) (regTwo!5130 (regTwo!5131 r!15766)))))))

(declare-fun b!890946 () Bool)

(declare-fun call!52596 () Regex!2309)

(assert (=> b!890946 (= e!583734 call!52596)))

(declare-fun b!890947 () Bool)

(declare-fun e!583735 () Regex!2309)

(assert (=> b!890947 (= e!583735 (regTwo!5131 r!15766))))

(declare-fun bm!52590 () Bool)

(declare-fun call!52599 () Regex!2309)

(assert (=> bm!52590 (= call!52599 call!52596)))

(declare-fun bm!52591 () Bool)

(declare-fun call!52595 () Regex!2309)

(assert (=> bm!52591 (= call!52595 call!52599)))

(declare-fun call!52598 () Regex!2309)

(declare-fun c!144183 () Bool)

(declare-fun c!144182 () Bool)

(declare-fun bm!52593 () Bool)

(declare-fun c!144184 () Bool)

(assert (=> bm!52593 (= call!52598 (removeUselessConcat!44 (ite c!144184 (regTwo!5130 (regTwo!5131 r!15766)) (ite c!144181 (regOne!5130 (regTwo!5131 r!15766)) (ite c!144182 (regTwo!5130 (regTwo!5131 r!15766)) (ite c!144183 (regTwo!5131 (regTwo!5131 r!15766)) (reg!2638 (regTwo!5131 r!15766))))))))))

(declare-fun b!890948 () Bool)

(assert (=> b!890948 (= e!583735 (Star!2309 call!52595))))

(declare-fun b!890949 () Bool)

(declare-fun e!583737 () Bool)

(declare-fun lt!332389 () Regex!2309)

(assert (=> b!890949 (= e!583737 (= (nullable!601 lt!332389) (nullable!601 (regTwo!5131 r!15766))))))

(declare-fun b!890950 () Bool)

(assert (=> b!890950 (= e!583732 call!52598)))

(declare-fun b!890951 () Bool)

(declare-fun e!583736 () Regex!2309)

(declare-fun e!583733 () Regex!2309)

(assert (=> b!890951 (= e!583736 e!583733)))

(assert (=> b!890951 (= c!144183 ((_ is Union!2309) (regTwo!5131 r!15766)))))

(declare-fun b!890952 () Bool)

(declare-fun call!52597 () Regex!2309)

(assert (=> b!890952 (= e!583736 (Concat!4142 call!52597 call!52599))))

(declare-fun bm!52592 () Bool)

(assert (=> bm!52592 (= call!52596 call!52598)))

(declare-fun d!277354 () Bool)

(assert (=> d!277354 e!583737))

(declare-fun res!405111 () Bool)

(assert (=> d!277354 (=> (not res!405111) (not e!583737))))

(assert (=> d!277354 (= res!405111 (validRegex!778 lt!332389))))

(assert (=> d!277354 (= lt!332389 e!583732)))

(assert (=> d!277354 (= c!144184 (and ((_ is Concat!4142) (regTwo!5131 r!15766)) ((_ is EmptyExpr!2309) (regOne!5130 (regTwo!5131 r!15766)))))))

(assert (=> d!277354 (validRegex!778 (regTwo!5131 r!15766))))

(assert (=> d!277354 (= (removeUselessConcat!44 (regTwo!5131 r!15766)) lt!332389)))

(declare-fun b!890953 () Bool)

(assert (=> b!890953 (= c!144182 ((_ is Concat!4142) (regTwo!5131 r!15766)))))

(assert (=> b!890953 (= e!583734 e!583736)))

(declare-fun bm!52594 () Bool)

(assert (=> bm!52594 (= call!52597 (removeUselessConcat!44 (ite c!144182 (regOne!5130 (regTwo!5131 r!15766)) (regOne!5131 (regTwo!5131 r!15766)))))))

(declare-fun b!890954 () Bool)

(assert (=> b!890954 (= e!583733 (Union!2309 call!52597 call!52595))))

(declare-fun b!890955 () Bool)

(declare-fun c!144185 () Bool)

(assert (=> b!890955 (= c!144185 ((_ is Star!2309) (regTwo!5131 r!15766)))))

(assert (=> b!890955 (= e!583733 e!583735)))

(assert (= (and d!277354 c!144184) b!890950))

(assert (= (and d!277354 (not c!144184)) b!890945))

(assert (= (and b!890945 c!144181) b!890946))

(assert (= (and b!890945 (not c!144181)) b!890953))

(assert (= (and b!890953 c!144182) b!890952))

(assert (= (and b!890953 (not c!144182)) b!890951))

(assert (= (and b!890951 c!144183) b!890954))

(assert (= (and b!890951 (not c!144183)) b!890955))

(assert (= (and b!890955 c!144185) b!890948))

(assert (= (and b!890955 (not c!144185)) b!890947))

(assert (= (or b!890954 b!890948) bm!52591))

(assert (= (or b!890952 bm!52591) bm!52590))

(assert (= (or b!890952 b!890954) bm!52594))

(assert (= (or b!890946 bm!52590) bm!52592))

(assert (= (or b!890950 bm!52592) bm!52593))

(assert (= (and d!277354 res!405111) b!890949))

(declare-fun m!1133969 () Bool)

(assert (=> bm!52593 m!1133969))

(declare-fun m!1133971 () Bool)

(assert (=> b!890949 m!1133971))

(assert (=> b!890949 m!1133967))

(declare-fun m!1133973 () Bool)

(assert (=> d!277354 m!1133973))

(assert (=> d!277354 m!1133845))

(declare-fun m!1133975 () Bool)

(assert (=> bm!52594 m!1133975))

(assert (=> b!890523 d!277354))

(declare-fun d!277356 () Bool)

(assert (=> d!277356 (= (matchR!847 (regTwo!5131 r!15766) s!10566) (matchR!847 (removeUselessConcat!44 (regTwo!5131 r!15766)) s!10566))))

(declare-fun lt!332392 () Unit!14197)

(declare-fun choose!5325 (Regex!2309 List!9539) Unit!14197)

(assert (=> d!277356 (= lt!332392 (choose!5325 (regTwo!5131 r!15766) s!10566))))

(assert (=> d!277356 (validRegex!778 (regTwo!5131 r!15766))))

(assert (=> d!277356 (= (lemmaRemoveUselessConcatSound!38 (regTwo!5131 r!15766) s!10566) lt!332392)))

(declare-fun bs!234832 () Bool)

(assert (= bs!234832 d!277356))

(assert (=> bs!234832 m!1133841))

(assert (=> bs!234832 m!1133847))

(assert (=> bs!234832 m!1133847))

(assert (=> bs!234832 m!1133849))

(declare-fun m!1133977 () Bool)

(assert (=> bs!234832 m!1133977))

(assert (=> bs!234832 m!1133845))

(assert (=> b!890523 d!277356))

(assert (=> b!890523 d!277352))

(declare-fun b!890956 () Bool)

(declare-fun res!405116 () Bool)

(declare-fun e!583742 () Bool)

(assert (=> b!890956 (=> res!405116 e!583742)))

(assert (=> b!890956 (= res!405116 (not ((_ is ElementMatch!2309) (removeUselessConcat!44 (regTwo!5131 r!15766)))))))

(declare-fun e!583743 () Bool)

(assert (=> b!890956 (= e!583743 e!583742)))

(declare-fun b!890957 () Bool)

(declare-fun res!405119 () Bool)

(declare-fun e!583738 () Bool)

(assert (=> b!890957 (=> res!405119 e!583738)))

(assert (=> b!890957 (= res!405119 (not (isEmpty!5723 (tail!1128 s!10566))))))

(declare-fun b!890958 () Bool)

(declare-fun e!583739 () Bool)

(assert (=> b!890958 (= e!583739 (nullable!601 (removeUselessConcat!44 (regTwo!5131 r!15766))))))

(declare-fun bm!52595 () Bool)

(declare-fun call!52600 () Bool)

(assert (=> bm!52595 (= call!52600 (isEmpty!5723 s!10566))))

(declare-fun b!890960 () Bool)

(declare-fun e!583744 () Bool)

(assert (=> b!890960 (= e!583744 e!583743)))

(declare-fun c!144186 () Bool)

(assert (=> b!890960 (= c!144186 ((_ is EmptyLang!2309) (removeUselessConcat!44 (regTwo!5131 r!15766))))))

(declare-fun b!890961 () Bool)

(declare-fun res!405118 () Bool)

(declare-fun e!583740 () Bool)

(assert (=> b!890961 (=> (not res!405118) (not e!583740))))

(assert (=> b!890961 (= res!405118 (not call!52600))))

(declare-fun b!890962 () Bool)

(declare-fun res!405115 () Bool)

(assert (=> b!890962 (=> (not res!405115) (not e!583740))))

(assert (=> b!890962 (= res!405115 (isEmpty!5723 (tail!1128 s!10566)))))

(declare-fun b!890963 () Bool)

(assert (=> b!890963 (= e!583740 (= (head!1566 s!10566) (c!144084 (removeUselessConcat!44 (regTwo!5131 r!15766)))))))

(declare-fun b!890964 () Bool)

(declare-fun res!405113 () Bool)

(assert (=> b!890964 (=> res!405113 e!583742)))

(assert (=> b!890964 (= res!405113 e!583740)))

(declare-fun res!405114 () Bool)

(assert (=> b!890964 (=> (not res!405114) (not e!583740))))

(declare-fun lt!332393 () Bool)

(assert (=> b!890964 (= res!405114 lt!332393)))

(declare-fun b!890965 () Bool)

(assert (=> b!890965 (= e!583743 (not lt!332393))))

(declare-fun b!890966 () Bool)

(assert (=> b!890966 (= e!583744 (= lt!332393 call!52600))))

(declare-fun b!890967 () Bool)

(assert (=> b!890967 (= e!583739 (matchR!847 (derivativeStep!413 (removeUselessConcat!44 (regTwo!5131 r!15766)) (head!1566 s!10566)) (tail!1128 s!10566)))))

(declare-fun b!890968 () Bool)

(declare-fun e!583741 () Bool)

(assert (=> b!890968 (= e!583741 e!583738)))

(declare-fun res!405112 () Bool)

(assert (=> b!890968 (=> res!405112 e!583738)))

(assert (=> b!890968 (= res!405112 call!52600)))

(declare-fun b!890969 () Bool)

(assert (=> b!890969 (= e!583738 (not (= (head!1566 s!10566) (c!144084 (removeUselessConcat!44 (regTwo!5131 r!15766))))))))

(declare-fun b!890959 () Bool)

(assert (=> b!890959 (= e!583742 e!583741)))

(declare-fun res!405117 () Bool)

(assert (=> b!890959 (=> (not res!405117) (not e!583741))))

(assert (=> b!890959 (= res!405117 (not lt!332393))))

(declare-fun d!277358 () Bool)

(assert (=> d!277358 e!583744))

(declare-fun c!144188 () Bool)

(assert (=> d!277358 (= c!144188 ((_ is EmptyExpr!2309) (removeUselessConcat!44 (regTwo!5131 r!15766))))))

(assert (=> d!277358 (= lt!332393 e!583739)))

(declare-fun c!144187 () Bool)

(assert (=> d!277358 (= c!144187 (isEmpty!5723 s!10566))))

(assert (=> d!277358 (validRegex!778 (removeUselessConcat!44 (regTwo!5131 r!15766)))))

(assert (=> d!277358 (= (matchR!847 (removeUselessConcat!44 (regTwo!5131 r!15766)) s!10566) lt!332393)))

(assert (= (and d!277358 c!144187) b!890958))

(assert (= (and d!277358 (not c!144187)) b!890967))

(assert (= (and d!277358 c!144188) b!890966))

(assert (= (and d!277358 (not c!144188)) b!890960))

(assert (= (and b!890960 c!144186) b!890965))

(assert (= (and b!890960 (not c!144186)) b!890956))

(assert (= (and b!890956 (not res!405116)) b!890964))

(assert (= (and b!890964 res!405114) b!890961))

(assert (= (and b!890961 res!405118) b!890962))

(assert (= (and b!890962 res!405115) b!890963))

(assert (= (and b!890964 (not res!405113)) b!890959))

(assert (= (and b!890959 res!405117) b!890968))

(assert (= (and b!890968 (not res!405112)) b!890957))

(assert (= (and b!890957 (not res!405119)) b!890969))

(assert (= (or b!890966 b!890961 b!890968) bm!52595))

(assert (=> d!277358 m!1133867))

(assert (=> d!277358 m!1133847))

(declare-fun m!1133979 () Bool)

(assert (=> d!277358 m!1133979))

(assert (=> b!890967 m!1133871))

(assert (=> b!890967 m!1133847))

(assert (=> b!890967 m!1133871))

(declare-fun m!1133981 () Bool)

(assert (=> b!890967 m!1133981))

(assert (=> b!890967 m!1133875))

(assert (=> b!890967 m!1133981))

(assert (=> b!890967 m!1133875))

(declare-fun m!1133983 () Bool)

(assert (=> b!890967 m!1133983))

(assert (=> b!890962 m!1133875))

(assert (=> b!890962 m!1133875))

(assert (=> b!890962 m!1133879))

(assert (=> b!890957 m!1133875))

(assert (=> b!890957 m!1133875))

(assert (=> b!890957 m!1133879))

(assert (=> bm!52595 m!1133867))

(assert (=> b!890958 m!1133847))

(declare-fun m!1133985 () Bool)

(assert (=> b!890958 m!1133985))

(assert (=> b!890963 m!1133871))

(assert (=> b!890969 m!1133871))

(assert (=> b!890523 d!277358))

(declare-fun b!890970 () Bool)

(declare-fun res!405122 () Bool)

(declare-fun e!583751 () Bool)

(assert (=> b!890970 (=> (not res!405122) (not e!583751))))

(declare-fun call!52602 () Bool)

(assert (=> b!890970 (= res!405122 call!52602)))

(declare-fun e!583750 () Bool)

(assert (=> b!890970 (= e!583750 e!583751)))

(declare-fun b!890971 () Bool)

(declare-fun e!583747 () Bool)

(declare-fun call!52601 () Bool)

(assert (=> b!890971 (= e!583747 call!52601)))

(declare-fun c!144189 () Bool)

(declare-fun c!144190 () Bool)

(declare-fun call!52603 () Bool)

(declare-fun bm!52596 () Bool)

(assert (=> bm!52596 (= call!52603 (validRegex!778 (ite c!144189 (reg!2638 (regTwo!5131 r!15766)) (ite c!144190 (regTwo!5131 (regTwo!5131 r!15766)) (regTwo!5130 (regTwo!5131 r!15766))))))))

(declare-fun b!890972 () Bool)

(declare-fun e!583746 () Bool)

(declare-fun e!583745 () Bool)

(assert (=> b!890972 (= e!583746 e!583745)))

(assert (=> b!890972 (= c!144189 ((_ is Star!2309) (regTwo!5131 r!15766)))))

(declare-fun d!277360 () Bool)

(declare-fun res!405120 () Bool)

(assert (=> d!277360 (=> res!405120 e!583746)))

(assert (=> d!277360 (= res!405120 ((_ is ElementMatch!2309) (regTwo!5131 r!15766)))))

(assert (=> d!277360 (= (validRegex!778 (regTwo!5131 r!15766)) e!583746)))

(declare-fun b!890973 () Bool)

(declare-fun e!583748 () Bool)

(assert (=> b!890973 (= e!583748 call!52603)))

(declare-fun b!890974 () Bool)

(declare-fun res!405121 () Bool)

(declare-fun e!583749 () Bool)

(assert (=> b!890974 (=> res!405121 e!583749)))

(assert (=> b!890974 (= res!405121 (not ((_ is Concat!4142) (regTwo!5131 r!15766))))))

(assert (=> b!890974 (= e!583750 e!583749)))

(declare-fun b!890975 () Bool)

(assert (=> b!890975 (= e!583749 e!583747)))

(declare-fun res!405123 () Bool)

(assert (=> b!890975 (=> (not res!405123) (not e!583747))))

(assert (=> b!890975 (= res!405123 call!52602)))

(declare-fun b!890976 () Bool)

(assert (=> b!890976 (= e!583745 e!583750)))

(assert (=> b!890976 (= c!144190 ((_ is Union!2309) (regTwo!5131 r!15766)))))

(declare-fun bm!52597 () Bool)

(assert (=> bm!52597 (= call!52601 call!52603)))

(declare-fun b!890977 () Bool)

(assert (=> b!890977 (= e!583751 call!52601)))

(declare-fun b!890978 () Bool)

(assert (=> b!890978 (= e!583745 e!583748)))

(declare-fun res!405124 () Bool)

(assert (=> b!890978 (= res!405124 (not (nullable!601 (reg!2638 (regTwo!5131 r!15766)))))))

(assert (=> b!890978 (=> (not res!405124) (not e!583748))))

(declare-fun bm!52598 () Bool)

(assert (=> bm!52598 (= call!52602 (validRegex!778 (ite c!144190 (regOne!5131 (regTwo!5131 r!15766)) (regOne!5130 (regTwo!5131 r!15766)))))))

(assert (= (and d!277360 (not res!405120)) b!890972))

(assert (= (and b!890972 c!144189) b!890978))

(assert (= (and b!890972 (not c!144189)) b!890976))

(assert (= (and b!890978 res!405124) b!890973))

(assert (= (and b!890976 c!144190) b!890970))

(assert (= (and b!890976 (not c!144190)) b!890974))

(assert (= (and b!890970 res!405122) b!890977))

(assert (= (and b!890974 (not res!405121)) b!890975))

(assert (= (and b!890975 res!405123) b!890971))

(assert (= (or b!890977 b!890971) bm!52597))

(assert (= (or b!890970 b!890975) bm!52598))

(assert (= (or b!890973 bm!52597) bm!52596))

(declare-fun m!1133987 () Bool)

(assert (=> bm!52596 m!1133987))

(declare-fun m!1133989 () Bool)

(assert (=> b!890978 m!1133989))

(declare-fun m!1133991 () Bool)

(assert (=> bm!52598 m!1133991))

(assert (=> b!890523 d!277360))

(declare-fun b!890991 () Bool)

(declare-fun e!583754 () Bool)

(declare-fun tp!280433 () Bool)

(assert (=> b!890991 (= e!583754 tp!280433)))

(declare-fun b!890990 () Bool)

(declare-fun tp!280431 () Bool)

(declare-fun tp!280430 () Bool)

(assert (=> b!890990 (= e!583754 (and tp!280431 tp!280430))))

(declare-fun b!890992 () Bool)

(declare-fun tp!280432 () Bool)

(declare-fun tp!280429 () Bool)

(assert (=> b!890992 (= e!583754 (and tp!280432 tp!280429))))

(assert (=> b!890528 (= tp!280375 e!583754)))

(declare-fun b!890989 () Bool)

(assert (=> b!890989 (= e!583754 tp_is_empty!4261)))

(assert (= (and b!890528 ((_ is ElementMatch!2309) (regOne!5131 r!15766))) b!890989))

(assert (= (and b!890528 ((_ is Concat!4142) (regOne!5131 r!15766))) b!890990))

(assert (= (and b!890528 ((_ is Star!2309) (regOne!5131 r!15766))) b!890991))

(assert (= (and b!890528 ((_ is Union!2309) (regOne!5131 r!15766))) b!890992))

(declare-fun b!890995 () Bool)

(declare-fun e!583755 () Bool)

(declare-fun tp!280438 () Bool)

(assert (=> b!890995 (= e!583755 tp!280438)))

(declare-fun b!890994 () Bool)

(declare-fun tp!280436 () Bool)

(declare-fun tp!280435 () Bool)

(assert (=> b!890994 (= e!583755 (and tp!280436 tp!280435))))

(declare-fun b!890996 () Bool)

(declare-fun tp!280437 () Bool)

(declare-fun tp!280434 () Bool)

(assert (=> b!890996 (= e!583755 (and tp!280437 tp!280434))))

(assert (=> b!890528 (= tp!280379 e!583755)))

(declare-fun b!890993 () Bool)

(assert (=> b!890993 (= e!583755 tp_is_empty!4261)))

(assert (= (and b!890528 ((_ is ElementMatch!2309) (regTwo!5131 r!15766))) b!890993))

(assert (= (and b!890528 ((_ is Concat!4142) (regTwo!5131 r!15766))) b!890994))

(assert (= (and b!890528 ((_ is Star!2309) (regTwo!5131 r!15766))) b!890995))

(assert (= (and b!890528 ((_ is Union!2309) (regTwo!5131 r!15766))) b!890996))

(declare-fun b!891001 () Bool)

(declare-fun e!583758 () Bool)

(declare-fun tp!280441 () Bool)

(assert (=> b!891001 (= e!583758 (and tp_is_empty!4261 tp!280441))))

(assert (=> b!890529 (= tp!280380 e!583758)))

(assert (= (and b!890529 ((_ is Cons!9523) (t!100585 s!10566))) b!891001))

(declare-fun b!891004 () Bool)

(declare-fun e!583759 () Bool)

(declare-fun tp!280446 () Bool)

(assert (=> b!891004 (= e!583759 tp!280446)))

(declare-fun b!891003 () Bool)

(declare-fun tp!280444 () Bool)

(declare-fun tp!280443 () Bool)

(assert (=> b!891003 (= e!583759 (and tp!280444 tp!280443))))

(declare-fun b!891005 () Bool)

(declare-fun tp!280445 () Bool)

(declare-fun tp!280442 () Bool)

(assert (=> b!891005 (= e!583759 (and tp!280445 tp!280442))))

(assert (=> b!890527 (= tp!280378 e!583759)))

(declare-fun b!891002 () Bool)

(assert (=> b!891002 (= e!583759 tp_is_empty!4261)))

(assert (= (and b!890527 ((_ is ElementMatch!2309) (regOne!5130 r!15766))) b!891002))

(assert (= (and b!890527 ((_ is Concat!4142) (regOne!5130 r!15766))) b!891003))

(assert (= (and b!890527 ((_ is Star!2309) (regOne!5130 r!15766))) b!891004))

(assert (= (and b!890527 ((_ is Union!2309) (regOne!5130 r!15766))) b!891005))

(declare-fun b!891008 () Bool)

(declare-fun e!583760 () Bool)

(declare-fun tp!280451 () Bool)

(assert (=> b!891008 (= e!583760 tp!280451)))

(declare-fun b!891007 () Bool)

(declare-fun tp!280449 () Bool)

(declare-fun tp!280448 () Bool)

(assert (=> b!891007 (= e!583760 (and tp!280449 tp!280448))))

(declare-fun b!891009 () Bool)

(declare-fun tp!280450 () Bool)

(declare-fun tp!280447 () Bool)

(assert (=> b!891009 (= e!583760 (and tp!280450 tp!280447))))

(assert (=> b!890527 (= tp!280376 e!583760)))

(declare-fun b!891006 () Bool)

(assert (=> b!891006 (= e!583760 tp_is_empty!4261)))

(assert (= (and b!890527 ((_ is ElementMatch!2309) (regTwo!5130 r!15766))) b!891006))

(assert (= (and b!890527 ((_ is Concat!4142) (regTwo!5130 r!15766))) b!891007))

(assert (= (and b!890527 ((_ is Star!2309) (regTwo!5130 r!15766))) b!891008))

(assert (= (and b!890527 ((_ is Union!2309) (regTwo!5130 r!15766))) b!891009))

(declare-fun b!891012 () Bool)

(declare-fun e!583761 () Bool)

(declare-fun tp!280456 () Bool)

(assert (=> b!891012 (= e!583761 tp!280456)))

(declare-fun b!891011 () Bool)

(declare-fun tp!280454 () Bool)

(declare-fun tp!280453 () Bool)

(assert (=> b!891011 (= e!583761 (and tp!280454 tp!280453))))

(declare-fun b!891013 () Bool)

(declare-fun tp!280455 () Bool)

(declare-fun tp!280452 () Bool)

(assert (=> b!891013 (= e!583761 (and tp!280455 tp!280452))))

(assert (=> b!890531 (= tp!280377 e!583761)))

(declare-fun b!891010 () Bool)

(assert (=> b!891010 (= e!583761 tp_is_empty!4261)))

(assert (= (and b!890531 ((_ is ElementMatch!2309) (reg!2638 r!15766))) b!891010))

(assert (= (and b!890531 ((_ is Concat!4142) (reg!2638 r!15766))) b!891011))

(assert (= (and b!890531 ((_ is Star!2309) (reg!2638 r!15766))) b!891012))

(assert (= (and b!890531 ((_ is Union!2309) (reg!2638 r!15766))) b!891013))

(check-sat (not bm!52576) (not d!277324) (not b!890957) (not b!891001) (not bm!52578) (not b!890958) (not d!277320) (not b!891004) (not b!890611) (not b!890594) (not b!890922) (not b!890604) (not b!890595) (not b!890910) (not bm!52593) (not d!277358) (not bm!52538) (not b!890897) (not b!890599) (not b!890888) (not bm!52547) (not bm!52577) (not b!890991) (not b!890920) (not d!277356) (not b!890883) (not b!890990) (not d!277354) (not b!890992) (not b!890995) (not b!890612) (not b!890969) (not b!890606) (not b!891008) (not d!277352) (not b!890978) (not b!891009) (not b!890901) (not bm!52579) (not bm!52594) (not d!277348) (not b!890916) (not b!891012) (not b!890667) (not bm!52596) (not b!890996) (not bm!52598) (not b!890963) (not d!277350) (not b!891013) (not b!890967) (not b!890600) (not b!890911) (not b!890896) (not b!890908) (not b!890902) (not b!890949) (not bm!52595) tp_is_empty!4261 (not b!890906) (not bm!52549) (not b!890962) (not b!890915) (not b!891005) (not b!891007) (not b!890994) (not b!891011) (not b!891003))
(check-sat)
