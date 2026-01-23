; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!294216 () Bool)

(assert start!294216)

(declare-fun b!3100563 () Bool)

(declare-fun res!1270193 () Bool)

(declare-fun e!1937638 () Bool)

(assert (=> b!3100563 (=> res!1270193 e!1937638)))

(declare-datatypes ((C!19304 0))(
  ( (C!19305 (val!11688 Int)) )
))
(declare-datatypes ((List!35424 0))(
  ( (Nil!35300) (Cons!35300 (h!40720 C!19304) (t!234489 List!35424)) )
))
(declare-fun s!11993 () List!35424)

(declare-datatypes ((Regex!9559 0))(
  ( (ElementMatch!9559 (c!518007 C!19304)) (Concat!14880 (regOne!19630 Regex!9559) (regTwo!19630 Regex!9559)) (EmptyExpr!9559) (Star!9559 (reg!9888 Regex!9559)) (EmptyLang!9559) (Union!9559 (regOne!19631 Regex!9559) (regTwo!19631 Regex!9559)) )
))
(declare-fun lt!1055709 () Regex!9559)

(declare-fun lt!1055707 () Regex!9559)

(declare-fun matchR!4441 (Regex!9559 List!35424) Bool)

(assert (=> b!3100563 (= res!1270193 (matchR!4441 (Concat!14880 lt!1055707 lt!1055709) s!11993))))

(declare-fun b!3100564 () Bool)

(declare-fun e!1937640 () Bool)

(declare-fun tp!974617 () Bool)

(declare-fun tp!974619 () Bool)

(assert (=> b!3100564 (= e!1937640 (and tp!974617 tp!974619))))

(declare-fun b!3100565 () Bool)

(declare-fun tp_is_empty!16681 () Bool)

(assert (=> b!3100565 (= e!1937640 tp_is_empty!16681)))

(declare-fun b!3100566 () Bool)

(declare-fun res!1270194 () Bool)

(declare-fun e!1937637 () Bool)

(assert (=> b!3100566 (=> res!1270194 e!1937637)))

(declare-fun isEmpty!19651 (List!35424) Bool)

(assert (=> b!3100566 (= res!1270194 (isEmpty!19651 s!11993))))

(declare-fun b!3100567 () Bool)

(declare-fun e!1937639 () Bool)

(declare-fun tp!974620 () Bool)

(assert (=> b!3100567 (= e!1937639 (and tp_is_empty!16681 tp!974620))))

(declare-fun b!3100568 () Bool)

(declare-fun e!1937641 () Bool)

(assert (=> b!3100568 (= e!1937641 (not e!1937637))))

(declare-fun res!1270197 () Bool)

(assert (=> b!3100568 (=> res!1270197 e!1937637)))

(declare-fun lt!1055710 () Bool)

(declare-fun r!17423 () Regex!9559)

(get-info :version)

(assert (=> b!3100568 (= res!1270197 (or lt!1055710 (not ((_ is Concat!14880) r!17423))))))

(declare-fun matchRSpec!1696 (Regex!9559 List!35424) Bool)

(assert (=> b!3100568 (= lt!1055710 (matchRSpec!1696 r!17423 s!11993))))

(assert (=> b!3100568 (= lt!1055710 (matchR!4441 r!17423 s!11993))))

(declare-datatypes ((Unit!49557 0))(
  ( (Unit!49558) )
))
(declare-fun lt!1055708 () Unit!49557)

(declare-fun mainMatchTheorem!1696 (Regex!9559 List!35424) Unit!49557)

(assert (=> b!3100568 (= lt!1055708 (mainMatchTheorem!1696 r!17423 s!11993))))

(declare-fun res!1270195 () Bool)

(assert (=> start!294216 (=> (not res!1270195) (not e!1937641))))

(declare-fun validRegex!4292 (Regex!9559) Bool)

(assert (=> start!294216 (= res!1270195 (validRegex!4292 r!17423))))

(assert (=> start!294216 e!1937641))

(assert (=> start!294216 e!1937640))

(assert (=> start!294216 e!1937639))

(declare-fun b!3100569 () Bool)

(declare-fun simplify!514 (Regex!9559) Regex!9559)

(assert (=> b!3100569 (= e!1937638 (not (matchR!4441 (simplify!514 r!17423) s!11993)))))

(declare-fun b!3100570 () Bool)

(declare-fun res!1270196 () Bool)

(assert (=> b!3100570 (=> res!1270196 e!1937638)))

(declare-fun isEmptyLang!610 (Regex!9559) Bool)

(assert (=> b!3100570 (= res!1270196 (isEmptyLang!610 lt!1055709))))

(declare-fun b!3100571 () Bool)

(declare-fun tp!974616 () Bool)

(declare-fun tp!974621 () Bool)

(assert (=> b!3100571 (= e!1937640 (and tp!974616 tp!974621))))

(declare-fun b!3100572 () Bool)

(declare-fun res!1270198 () Bool)

(assert (=> b!3100572 (=> res!1270198 e!1937638)))

(declare-fun isEmptyExpr!616 (Regex!9559) Bool)

(assert (=> b!3100572 (= res!1270198 (isEmptyExpr!616 lt!1055707))))

(declare-fun b!3100573 () Bool)

(declare-fun tp!974618 () Bool)

(assert (=> b!3100573 (= e!1937640 tp!974618)))

(declare-fun b!3100574 () Bool)

(assert (=> b!3100574 (= e!1937637 e!1937638)))

(declare-fun res!1270199 () Bool)

(assert (=> b!3100574 (=> res!1270199 e!1937638)))

(assert (=> b!3100574 (= res!1270199 (isEmptyLang!610 lt!1055707))))

(assert (=> b!3100574 (= lt!1055709 (simplify!514 (regTwo!19630 r!17423)))))

(assert (=> b!3100574 (= lt!1055707 (simplify!514 (regOne!19630 r!17423)))))

(declare-fun b!3100575 () Bool)

(declare-fun res!1270200 () Bool)

(assert (=> b!3100575 (=> res!1270200 e!1937638)))

(assert (=> b!3100575 (= res!1270200 (isEmptyExpr!616 lt!1055709))))

(assert (= (and start!294216 res!1270195) b!3100568))

(assert (= (and b!3100568 (not res!1270197)) b!3100566))

(assert (= (and b!3100566 (not res!1270194)) b!3100574))

(assert (= (and b!3100574 (not res!1270199)) b!3100570))

(assert (= (and b!3100570 (not res!1270196)) b!3100572))

(assert (= (and b!3100572 (not res!1270198)) b!3100575))

(assert (= (and b!3100575 (not res!1270200)) b!3100563))

(assert (= (and b!3100563 (not res!1270193)) b!3100569))

(assert (= (and start!294216 ((_ is ElementMatch!9559) r!17423)) b!3100565))

(assert (= (and start!294216 ((_ is Concat!14880) r!17423)) b!3100571))

(assert (= (and start!294216 ((_ is Star!9559) r!17423)) b!3100573))

(assert (= (and start!294216 ((_ is Union!9559) r!17423)) b!3100564))

(assert (= (and start!294216 ((_ is Cons!35300) s!11993)) b!3100567))

(declare-fun m!3400921 () Bool)

(assert (=> b!3100570 m!3400921))

(declare-fun m!3400923 () Bool)

(assert (=> b!3100563 m!3400923))

(declare-fun m!3400925 () Bool)

(assert (=> b!3100574 m!3400925))

(declare-fun m!3400927 () Bool)

(assert (=> b!3100574 m!3400927))

(declare-fun m!3400929 () Bool)

(assert (=> b!3100574 m!3400929))

(declare-fun m!3400931 () Bool)

(assert (=> b!3100568 m!3400931))

(declare-fun m!3400933 () Bool)

(assert (=> b!3100568 m!3400933))

(declare-fun m!3400935 () Bool)

(assert (=> b!3100568 m!3400935))

(declare-fun m!3400937 () Bool)

(assert (=> b!3100569 m!3400937))

(assert (=> b!3100569 m!3400937))

(declare-fun m!3400939 () Bool)

(assert (=> b!3100569 m!3400939))

(declare-fun m!3400941 () Bool)

(assert (=> start!294216 m!3400941))

(declare-fun m!3400943 () Bool)

(assert (=> b!3100566 m!3400943))

(declare-fun m!3400945 () Bool)

(assert (=> b!3100575 m!3400945))

(declare-fun m!3400947 () Bool)

(assert (=> b!3100572 m!3400947))

(check-sat (not b!3100563) (not b!3100573) (not start!294216) (not b!3100567) tp_is_empty!16681 (not b!3100572) (not b!3100564) (not b!3100569) (not b!3100571) (not b!3100570) (not b!3100566) (not b!3100568) (not b!3100574) (not b!3100575))
(check-sat)
(get-model)

(declare-fun d!860995 () Bool)

(assert (=> d!860995 (= (isEmptyLang!610 lt!1055707) ((_ is EmptyLang!9559) lt!1055707))))

(assert (=> b!3100574 d!860995))

(declare-fun b!3100676 () Bool)

(declare-fun e!1937699 () Regex!9559)

(declare-fun lt!1055739 () Regex!9559)

(assert (=> b!3100676 (= e!1937699 lt!1055739)))

(declare-fun b!3100677 () Bool)

(declare-fun c!518060 () Bool)

(declare-fun call!218517 () Bool)

(assert (=> b!3100677 (= c!518060 call!218517)))

(declare-fun e!1937702 () Regex!9559)

(declare-fun e!1937710 () Regex!9559)

(assert (=> b!3100677 (= e!1937702 e!1937710)))

(declare-fun b!3100678 () Bool)

(declare-fun e!1937708 () Regex!9559)

(assert (=> b!3100678 (= e!1937708 e!1937702)))

(declare-fun lt!1055737 () Regex!9559)

(declare-fun call!218522 () Regex!9559)

(assert (=> b!3100678 (= lt!1055737 call!218522)))

(declare-fun lt!1055735 () Regex!9559)

(declare-fun call!218520 () Regex!9559)

(assert (=> b!3100678 (= lt!1055735 call!218520)))

(declare-fun c!518059 () Bool)

(declare-fun call!218523 () Bool)

(assert (=> b!3100678 (= c!518059 call!218523)))

(declare-fun b!3100679 () Bool)

(declare-fun c!518057 () Bool)

(assert (=> b!3100679 (= c!518057 ((_ is EmptyExpr!9559) (regTwo!19630 r!17423)))))

(declare-fun e!1937709 () Regex!9559)

(declare-fun e!1937707 () Regex!9559)

(assert (=> b!3100679 (= e!1937709 e!1937707)))

(declare-fun b!3100680 () Bool)

(declare-fun e!1937701 () Regex!9559)

(declare-fun lt!1055740 () Regex!9559)

(assert (=> b!3100680 (= e!1937701 (Concat!14880 lt!1055740 lt!1055739))))

(declare-fun b!3100681 () Bool)

(declare-fun e!1937706 () Regex!9559)

(declare-fun lt!1055736 () Regex!9559)

(assert (=> b!3100681 (= e!1937706 (Star!9559 lt!1055736))))

(declare-fun call!218519 () Bool)

(declare-fun bm!218512 () Bool)

(declare-fun c!518061 () Bool)

(assert (=> bm!218512 (= call!218519 (isEmptyExpr!616 (ite c!518061 lt!1055736 lt!1055739)))))

(declare-fun d!860997 () Bool)

(declare-fun e!1937704 () Bool)

(assert (=> d!860997 e!1937704))

(declare-fun res!1270213 () Bool)

(assert (=> d!860997 (=> (not res!1270213) (not e!1937704))))

(declare-fun lt!1055738 () Regex!9559)

(assert (=> d!860997 (= res!1270213 (validRegex!4292 lt!1055738))))

(declare-fun e!1937711 () Regex!9559)

(assert (=> d!860997 (= lt!1055738 e!1937711)))

(declare-fun c!518053 () Bool)

(assert (=> d!860997 (= c!518053 ((_ is EmptyLang!9559) (regTwo!19630 r!17423)))))

(assert (=> d!860997 (validRegex!4292 (regTwo!19630 r!17423))))

(assert (=> d!860997 (= (simplify!514 (regTwo!19630 r!17423)) lt!1055738)))

(declare-fun b!3100682 () Bool)

(assert (=> b!3100682 (= e!1937707 EmptyExpr!9559)))

(declare-fun c!518054 () Bool)

(declare-fun call!218521 () Regex!9559)

(declare-fun bm!218513 () Bool)

(assert (=> bm!218513 (= call!218521 (simplify!514 (ite c!518061 (reg!9888 (regTwo!19630 r!17423)) (ite c!518054 (regOne!19631 (regTwo!19630 r!17423)) (regTwo!19630 (regTwo!19630 r!17423))))))))

(declare-fun b!3100683 () Bool)

(declare-fun e!1937698 () Bool)

(assert (=> b!3100683 (= e!1937698 call!218517)))

(declare-fun bm!218514 () Bool)

(assert (=> bm!218514 (= call!218517 (isEmptyLang!610 (ite c!518054 lt!1055735 lt!1055739)))))

(declare-fun b!3100684 () Bool)

(declare-fun c!518052 () Bool)

(declare-fun e!1937703 () Bool)

(assert (=> b!3100684 (= c!518052 e!1937703)))

(declare-fun res!1270214 () Bool)

(assert (=> b!3100684 (=> res!1270214 e!1937703)))

(declare-fun call!218518 () Bool)

(assert (=> b!3100684 (= res!1270214 call!218518)))

(assert (=> b!3100684 (= lt!1055736 call!218521)))

(declare-fun e!1937700 () Regex!9559)

(assert (=> b!3100684 (= e!1937700 e!1937706)))

(declare-fun bm!218515 () Bool)

(assert (=> bm!218515 (= call!218518 (isEmptyLang!610 (ite c!518061 lt!1055736 (ite c!518054 lt!1055737 lt!1055740))))))

(declare-fun b!3100685 () Bool)

(assert (=> b!3100685 (= e!1937701 lt!1055740)))

(declare-fun b!3100686 () Bool)

(assert (=> b!3100686 (= e!1937707 e!1937700)))

(assert (=> b!3100686 (= c!518061 ((_ is Star!9559) (regTwo!19630 r!17423)))))

(declare-fun b!3100687 () Bool)

(declare-fun e!1937705 () Regex!9559)

(assert (=> b!3100687 (= e!1937705 EmptyLang!9559)))

(declare-fun b!3100688 () Bool)

(assert (=> b!3100688 (= e!1937708 e!1937705)))

(assert (=> b!3100688 (= lt!1055740 call!218520)))

(assert (=> b!3100688 (= lt!1055739 call!218522)))

(declare-fun res!1270215 () Bool)

(assert (=> b!3100688 (= res!1270215 call!218523)))

(assert (=> b!3100688 (=> res!1270215 e!1937698)))

(declare-fun c!518055 () Bool)

(assert (=> b!3100688 (= c!518055 e!1937698)))

(declare-fun bm!218516 () Bool)

(assert (=> bm!218516 (= call!218520 (simplify!514 (ite c!518054 (regTwo!19631 (regTwo!19630 r!17423)) (regOne!19630 (regTwo!19630 r!17423)))))))

(declare-fun b!3100689 () Bool)

(assert (=> b!3100689 (= e!1937711 e!1937709)))

(declare-fun c!518062 () Bool)

(assert (=> b!3100689 (= c!518062 ((_ is ElementMatch!9559) (regTwo!19630 r!17423)))))

(declare-fun b!3100690 () Bool)

(declare-fun nullable!3205 (Regex!9559) Bool)

(assert (=> b!3100690 (= e!1937704 (= (nullable!3205 lt!1055738) (nullable!3205 (regTwo!19630 r!17423))))))

(declare-fun bm!218517 () Bool)

(assert (=> bm!218517 (= call!218523 call!218518)))

(declare-fun b!3100691 () Bool)

(assert (=> b!3100691 (= c!518054 ((_ is Union!9559) (regTwo!19630 r!17423)))))

(assert (=> b!3100691 (= e!1937700 e!1937708)))

(declare-fun b!3100692 () Bool)

(assert (=> b!3100692 (= e!1937709 (regTwo!19630 r!17423))))

(declare-fun b!3100693 () Bool)

(assert (=> b!3100693 (= e!1937706 EmptyExpr!9559)))

(declare-fun b!3100694 () Bool)

(declare-fun c!518056 () Bool)

(assert (=> b!3100694 (= c!518056 (isEmptyExpr!616 lt!1055740))))

(assert (=> b!3100694 (= e!1937705 e!1937699)))

(declare-fun b!3100695 () Bool)

(assert (=> b!3100695 (= e!1937710 (Union!9559 lt!1055737 lt!1055735))))

(declare-fun b!3100696 () Bool)

(assert (=> b!3100696 (= e!1937702 lt!1055735)))

(declare-fun b!3100697 () Bool)

(assert (=> b!3100697 (= e!1937699 e!1937701)))

(declare-fun c!518058 () Bool)

(assert (=> b!3100697 (= c!518058 call!218519)))

(declare-fun b!3100698 () Bool)

(assert (=> b!3100698 (= e!1937703 call!218519)))

(declare-fun bm!218518 () Bool)

(assert (=> bm!218518 (= call!218522 call!218521)))

(declare-fun b!3100699 () Bool)

(assert (=> b!3100699 (= e!1937710 lt!1055737)))

(declare-fun b!3100700 () Bool)

(assert (=> b!3100700 (= e!1937711 EmptyLang!9559)))

(assert (= (and d!860997 c!518053) b!3100700))

(assert (= (and d!860997 (not c!518053)) b!3100689))

(assert (= (and b!3100689 c!518062) b!3100692))

(assert (= (and b!3100689 (not c!518062)) b!3100679))

(assert (= (and b!3100679 c!518057) b!3100682))

(assert (= (and b!3100679 (not c!518057)) b!3100686))

(assert (= (and b!3100686 c!518061) b!3100684))

(assert (= (and b!3100686 (not c!518061)) b!3100691))

(assert (= (and b!3100684 (not res!1270214)) b!3100698))

(assert (= (and b!3100684 c!518052) b!3100693))

(assert (= (and b!3100684 (not c!518052)) b!3100681))

(assert (= (and b!3100691 c!518054) b!3100678))

(assert (= (and b!3100691 (not c!518054)) b!3100688))

(assert (= (and b!3100678 c!518059) b!3100696))

(assert (= (and b!3100678 (not c!518059)) b!3100677))

(assert (= (and b!3100677 c!518060) b!3100699))

(assert (= (and b!3100677 (not c!518060)) b!3100695))

(assert (= (and b!3100688 (not res!1270215)) b!3100683))

(assert (= (and b!3100688 c!518055) b!3100687))

(assert (= (and b!3100688 (not c!518055)) b!3100694))

(assert (= (and b!3100694 c!518056) b!3100676))

(assert (= (and b!3100694 (not c!518056)) b!3100697))

(assert (= (and b!3100697 c!518058) b!3100685))

(assert (= (and b!3100697 (not c!518058)) b!3100680))

(assert (= (or b!3100678 b!3100688) bm!218518))

(assert (= (or b!3100678 b!3100688) bm!218516))

(assert (= (or b!3100677 b!3100683) bm!218514))

(assert (= (or b!3100678 b!3100688) bm!218517))

(assert (= (or b!3100698 b!3100697) bm!218512))

(assert (= (or b!3100684 bm!218518) bm!218513))

(assert (= (or b!3100684 bm!218517) bm!218515))

(assert (= (and d!860997 res!1270213) b!3100690))

(declare-fun m!3400949 () Bool)

(assert (=> bm!218515 m!3400949))

(declare-fun m!3400951 () Bool)

(assert (=> b!3100694 m!3400951))

(declare-fun m!3400953 () Bool)

(assert (=> bm!218514 m!3400953))

(declare-fun m!3400955 () Bool)

(assert (=> b!3100690 m!3400955))

(declare-fun m!3400957 () Bool)

(assert (=> b!3100690 m!3400957))

(declare-fun m!3400959 () Bool)

(assert (=> bm!218513 m!3400959))

(declare-fun m!3400961 () Bool)

(assert (=> d!860997 m!3400961))

(declare-fun m!3400963 () Bool)

(assert (=> d!860997 m!3400963))

(declare-fun m!3400965 () Bool)

(assert (=> bm!218512 m!3400965))

(declare-fun m!3400967 () Bool)

(assert (=> bm!218516 m!3400967))

(assert (=> b!3100574 d!860997))

(declare-fun b!3100726 () Bool)

(declare-fun e!1937727 () Regex!9559)

(declare-fun lt!1055751 () Regex!9559)

(assert (=> b!3100726 (= e!1937727 lt!1055751)))

(declare-fun b!3100727 () Bool)

(declare-fun c!518082 () Bool)

(declare-fun call!218531 () Bool)

(assert (=> b!3100727 (= c!518082 call!218531)))

(declare-fun e!1937730 () Regex!9559)

(declare-fun e!1937738 () Regex!9559)

(assert (=> b!3100727 (= e!1937730 e!1937738)))

(declare-fun b!3100728 () Bool)

(declare-fun e!1937736 () Regex!9559)

(assert (=> b!3100728 (= e!1937736 e!1937730)))

(declare-fun lt!1055749 () Regex!9559)

(declare-fun call!218536 () Regex!9559)

(assert (=> b!3100728 (= lt!1055749 call!218536)))

(declare-fun lt!1055747 () Regex!9559)

(declare-fun call!218534 () Regex!9559)

(assert (=> b!3100728 (= lt!1055747 call!218534)))

(declare-fun c!518081 () Bool)

(declare-fun call!218537 () Bool)

(assert (=> b!3100728 (= c!518081 call!218537)))

(declare-fun b!3100729 () Bool)

(declare-fun c!518079 () Bool)

(assert (=> b!3100729 (= c!518079 ((_ is EmptyExpr!9559) (regOne!19630 r!17423)))))

(declare-fun e!1937737 () Regex!9559)

(declare-fun e!1937735 () Regex!9559)

(assert (=> b!3100729 (= e!1937737 e!1937735)))

(declare-fun b!3100730 () Bool)

(declare-fun e!1937729 () Regex!9559)

(declare-fun lt!1055752 () Regex!9559)

(assert (=> b!3100730 (= e!1937729 (Concat!14880 lt!1055752 lt!1055751))))

(declare-fun b!3100731 () Bool)

(declare-fun e!1937734 () Regex!9559)

(declare-fun lt!1055748 () Regex!9559)

(assert (=> b!3100731 (= e!1937734 (Star!9559 lt!1055748))))

(declare-fun c!518083 () Bool)

(declare-fun bm!218526 () Bool)

(declare-fun call!218533 () Bool)

(assert (=> bm!218526 (= call!218533 (isEmptyExpr!616 (ite c!518083 lt!1055748 lt!1055751)))))

(declare-fun d!861005 () Bool)

(declare-fun e!1937732 () Bool)

(assert (=> d!861005 e!1937732))

(declare-fun res!1270219 () Bool)

(assert (=> d!861005 (=> (not res!1270219) (not e!1937732))))

(declare-fun lt!1055750 () Regex!9559)

(assert (=> d!861005 (= res!1270219 (validRegex!4292 lt!1055750))))

(declare-fun e!1937739 () Regex!9559)

(assert (=> d!861005 (= lt!1055750 e!1937739)))

(declare-fun c!518075 () Bool)

(assert (=> d!861005 (= c!518075 ((_ is EmptyLang!9559) (regOne!19630 r!17423)))))

(assert (=> d!861005 (validRegex!4292 (regOne!19630 r!17423))))

(assert (=> d!861005 (= (simplify!514 (regOne!19630 r!17423)) lt!1055750)))

(declare-fun b!3100732 () Bool)

(assert (=> b!3100732 (= e!1937735 EmptyExpr!9559)))

(declare-fun c!518076 () Bool)

(declare-fun bm!218527 () Bool)

(declare-fun call!218535 () Regex!9559)

(assert (=> bm!218527 (= call!218535 (simplify!514 (ite c!518083 (reg!9888 (regOne!19630 r!17423)) (ite c!518076 (regOne!19631 (regOne!19630 r!17423)) (regTwo!19630 (regOne!19630 r!17423))))))))

(declare-fun b!3100733 () Bool)

(declare-fun e!1937726 () Bool)

(assert (=> b!3100733 (= e!1937726 call!218531)))

(declare-fun bm!218528 () Bool)

(assert (=> bm!218528 (= call!218531 (isEmptyLang!610 (ite c!518076 lt!1055747 lt!1055751)))))

(declare-fun b!3100734 () Bool)

(declare-fun c!518074 () Bool)

(declare-fun e!1937731 () Bool)

(assert (=> b!3100734 (= c!518074 e!1937731)))

(declare-fun res!1270220 () Bool)

(assert (=> b!3100734 (=> res!1270220 e!1937731)))

(declare-fun call!218532 () Bool)

(assert (=> b!3100734 (= res!1270220 call!218532)))

(assert (=> b!3100734 (= lt!1055748 call!218535)))

(declare-fun e!1937728 () Regex!9559)

(assert (=> b!3100734 (= e!1937728 e!1937734)))

(declare-fun bm!218529 () Bool)

(assert (=> bm!218529 (= call!218532 (isEmptyLang!610 (ite c!518083 lt!1055748 (ite c!518076 lt!1055749 lt!1055752))))))

(declare-fun b!3100735 () Bool)

(assert (=> b!3100735 (= e!1937729 lt!1055752)))

(declare-fun b!3100736 () Bool)

(assert (=> b!3100736 (= e!1937735 e!1937728)))

(assert (=> b!3100736 (= c!518083 ((_ is Star!9559) (regOne!19630 r!17423)))))

(declare-fun b!3100737 () Bool)

(declare-fun e!1937733 () Regex!9559)

(assert (=> b!3100737 (= e!1937733 EmptyLang!9559)))

(declare-fun b!3100738 () Bool)

(assert (=> b!3100738 (= e!1937736 e!1937733)))

(assert (=> b!3100738 (= lt!1055752 call!218534)))

(assert (=> b!3100738 (= lt!1055751 call!218536)))

(declare-fun res!1270221 () Bool)

(assert (=> b!3100738 (= res!1270221 call!218537)))

(assert (=> b!3100738 (=> res!1270221 e!1937726)))

(declare-fun c!518077 () Bool)

(assert (=> b!3100738 (= c!518077 e!1937726)))

(declare-fun bm!218530 () Bool)

(assert (=> bm!218530 (= call!218534 (simplify!514 (ite c!518076 (regTwo!19631 (regOne!19630 r!17423)) (regOne!19630 (regOne!19630 r!17423)))))))

(declare-fun b!3100739 () Bool)

(assert (=> b!3100739 (= e!1937739 e!1937737)))

(declare-fun c!518084 () Bool)

(assert (=> b!3100739 (= c!518084 ((_ is ElementMatch!9559) (regOne!19630 r!17423)))))

(declare-fun b!3100740 () Bool)

(assert (=> b!3100740 (= e!1937732 (= (nullable!3205 lt!1055750) (nullable!3205 (regOne!19630 r!17423))))))

(declare-fun bm!218531 () Bool)

(assert (=> bm!218531 (= call!218537 call!218532)))

(declare-fun b!3100741 () Bool)

(assert (=> b!3100741 (= c!518076 ((_ is Union!9559) (regOne!19630 r!17423)))))

(assert (=> b!3100741 (= e!1937728 e!1937736)))

(declare-fun b!3100742 () Bool)

(assert (=> b!3100742 (= e!1937737 (regOne!19630 r!17423))))

(declare-fun b!3100743 () Bool)

(assert (=> b!3100743 (= e!1937734 EmptyExpr!9559)))

(declare-fun b!3100744 () Bool)

(declare-fun c!518078 () Bool)

(assert (=> b!3100744 (= c!518078 (isEmptyExpr!616 lt!1055752))))

(assert (=> b!3100744 (= e!1937733 e!1937727)))

(declare-fun b!3100745 () Bool)

(assert (=> b!3100745 (= e!1937738 (Union!9559 lt!1055749 lt!1055747))))

(declare-fun b!3100746 () Bool)

(assert (=> b!3100746 (= e!1937730 lt!1055747)))

(declare-fun b!3100747 () Bool)

(assert (=> b!3100747 (= e!1937727 e!1937729)))

(declare-fun c!518080 () Bool)

(assert (=> b!3100747 (= c!518080 call!218533)))

(declare-fun b!3100748 () Bool)

(assert (=> b!3100748 (= e!1937731 call!218533)))

(declare-fun bm!218532 () Bool)

(assert (=> bm!218532 (= call!218536 call!218535)))

(declare-fun b!3100749 () Bool)

(assert (=> b!3100749 (= e!1937738 lt!1055749)))

(declare-fun b!3100750 () Bool)

(assert (=> b!3100750 (= e!1937739 EmptyLang!9559)))

(assert (= (and d!861005 c!518075) b!3100750))

(assert (= (and d!861005 (not c!518075)) b!3100739))

(assert (= (and b!3100739 c!518084) b!3100742))

(assert (= (and b!3100739 (not c!518084)) b!3100729))

(assert (= (and b!3100729 c!518079) b!3100732))

(assert (= (and b!3100729 (not c!518079)) b!3100736))

(assert (= (and b!3100736 c!518083) b!3100734))

(assert (= (and b!3100736 (not c!518083)) b!3100741))

(assert (= (and b!3100734 (not res!1270220)) b!3100748))

(assert (= (and b!3100734 c!518074) b!3100743))

(assert (= (and b!3100734 (not c!518074)) b!3100731))

(assert (= (and b!3100741 c!518076) b!3100728))

(assert (= (and b!3100741 (not c!518076)) b!3100738))

(assert (= (and b!3100728 c!518081) b!3100746))

(assert (= (and b!3100728 (not c!518081)) b!3100727))

(assert (= (and b!3100727 c!518082) b!3100749))

(assert (= (and b!3100727 (not c!518082)) b!3100745))

(assert (= (and b!3100738 (not res!1270221)) b!3100733))

(assert (= (and b!3100738 c!518077) b!3100737))

(assert (= (and b!3100738 (not c!518077)) b!3100744))

(assert (= (and b!3100744 c!518078) b!3100726))

(assert (= (and b!3100744 (not c!518078)) b!3100747))

(assert (= (and b!3100747 c!518080) b!3100735))

(assert (= (and b!3100747 (not c!518080)) b!3100730))

(assert (= (or b!3100728 b!3100738) bm!218532))

(assert (= (or b!3100728 b!3100738) bm!218530))

(assert (= (or b!3100727 b!3100733) bm!218528))

(assert (= (or b!3100728 b!3100738) bm!218531))

(assert (= (or b!3100748 b!3100747) bm!218526))

(assert (= (or b!3100734 bm!218532) bm!218527))

(assert (= (or b!3100734 bm!218531) bm!218529))

(assert (= (and d!861005 res!1270219) b!3100740))

(declare-fun m!3400989 () Bool)

(assert (=> bm!218529 m!3400989))

(declare-fun m!3400991 () Bool)

(assert (=> b!3100744 m!3400991))

(declare-fun m!3400993 () Bool)

(assert (=> bm!218528 m!3400993))

(declare-fun m!3400995 () Bool)

(assert (=> b!3100740 m!3400995))

(declare-fun m!3400997 () Bool)

(assert (=> b!3100740 m!3400997))

(declare-fun m!3400999 () Bool)

(assert (=> bm!218527 m!3400999))

(declare-fun m!3401001 () Bool)

(assert (=> d!861005 m!3401001))

(declare-fun m!3401003 () Bool)

(assert (=> d!861005 m!3401003))

(declare-fun m!3401005 () Bool)

(assert (=> bm!218526 m!3401005))

(declare-fun m!3401007 () Bool)

(assert (=> bm!218530 m!3401007))

(assert (=> b!3100574 d!861005))

(declare-fun b!3100826 () Bool)

(declare-fun res!1270254 () Bool)

(declare-fun e!1937785 () Bool)

(assert (=> b!3100826 (=> (not res!1270254) (not e!1937785))))

(declare-fun tail!5085 (List!35424) List!35424)

(assert (=> b!3100826 (= res!1270254 (isEmpty!19651 (tail!5085 s!11993)))))

(declare-fun b!3100827 () Bool)

(declare-fun e!1937783 () Bool)

(declare-fun e!1937782 () Bool)

(assert (=> b!3100827 (= e!1937783 e!1937782)))

(declare-fun c!518112 () Bool)

(assert (=> b!3100827 (= c!518112 ((_ is EmptyLang!9559) (simplify!514 r!17423)))))

(declare-fun b!3100828 () Bool)

(declare-fun res!1270252 () Bool)

(declare-fun e!1937787 () Bool)

(assert (=> b!3100828 (=> res!1270252 e!1937787)))

(assert (=> b!3100828 (= res!1270252 e!1937785)))

(declare-fun res!1270253 () Bool)

(assert (=> b!3100828 (=> (not res!1270253) (not e!1937785))))

(declare-fun lt!1055761 () Bool)

(assert (=> b!3100828 (= res!1270253 lt!1055761)))

(declare-fun b!3100829 () Bool)

(declare-fun e!1937784 () Bool)

(declare-fun derivativeStep!2800 (Regex!9559 C!19304) Regex!9559)

(declare-fun head!6859 (List!35424) C!19304)

(assert (=> b!3100829 (= e!1937784 (matchR!4441 (derivativeStep!2800 (simplify!514 r!17423) (head!6859 s!11993)) (tail!5085 s!11993)))))

(declare-fun b!3100831 () Bool)

(declare-fun e!1937788 () Bool)

(declare-fun e!1937786 () Bool)

(assert (=> b!3100831 (= e!1937788 e!1937786)))

(declare-fun res!1270247 () Bool)

(assert (=> b!3100831 (=> res!1270247 e!1937786)))

(declare-fun call!218547 () Bool)

(assert (=> b!3100831 (= res!1270247 call!218547)))

(declare-fun b!3100832 () Bool)

(assert (=> b!3100832 (= e!1937786 (not (= (head!6859 s!11993) (c!518007 (simplify!514 r!17423)))))))

(declare-fun b!3100833 () Bool)

(declare-fun res!1270250 () Bool)

(assert (=> b!3100833 (=> res!1270250 e!1937786)))

(assert (=> b!3100833 (= res!1270250 (not (isEmpty!19651 (tail!5085 s!11993))))))

(declare-fun b!3100834 () Bool)

(declare-fun res!1270249 () Bool)

(assert (=> b!3100834 (=> res!1270249 e!1937787)))

(assert (=> b!3100834 (= res!1270249 (not ((_ is ElementMatch!9559) (simplify!514 r!17423))))))

(assert (=> b!3100834 (= e!1937782 e!1937787)))

(declare-fun b!3100835 () Bool)

(assert (=> b!3100835 (= e!1937783 (= lt!1055761 call!218547))))

(declare-fun b!3100830 () Bool)

(declare-fun res!1270251 () Bool)

(assert (=> b!3100830 (=> (not res!1270251) (not e!1937785))))

(assert (=> b!3100830 (= res!1270251 (not call!218547))))

(declare-fun d!861009 () Bool)

(assert (=> d!861009 e!1937783))

(declare-fun c!518111 () Bool)

(assert (=> d!861009 (= c!518111 ((_ is EmptyExpr!9559) (simplify!514 r!17423)))))

(assert (=> d!861009 (= lt!1055761 e!1937784)))

(declare-fun c!518110 () Bool)

(assert (=> d!861009 (= c!518110 (isEmpty!19651 s!11993))))

(assert (=> d!861009 (validRegex!4292 (simplify!514 r!17423))))

(assert (=> d!861009 (= (matchR!4441 (simplify!514 r!17423) s!11993) lt!1055761)))

(declare-fun b!3100836 () Bool)

(assert (=> b!3100836 (= e!1937784 (nullable!3205 (simplify!514 r!17423)))))

(declare-fun b!3100837 () Bool)

(assert (=> b!3100837 (= e!1937787 e!1937788)))

(declare-fun res!1270248 () Bool)

(assert (=> b!3100837 (=> (not res!1270248) (not e!1937788))))

(assert (=> b!3100837 (= res!1270248 (not lt!1055761))))

(declare-fun b!3100838 () Bool)

(assert (=> b!3100838 (= e!1937782 (not lt!1055761))))

(declare-fun b!3100839 () Bool)

(assert (=> b!3100839 (= e!1937785 (= (head!6859 s!11993) (c!518007 (simplify!514 r!17423))))))

(declare-fun bm!218542 () Bool)

(assert (=> bm!218542 (= call!218547 (isEmpty!19651 s!11993))))

(assert (= (and d!861009 c!518110) b!3100836))

(assert (= (and d!861009 (not c!518110)) b!3100829))

(assert (= (and d!861009 c!518111) b!3100835))

(assert (= (and d!861009 (not c!518111)) b!3100827))

(assert (= (and b!3100827 c!518112) b!3100838))

(assert (= (and b!3100827 (not c!518112)) b!3100834))

(assert (= (and b!3100834 (not res!1270249)) b!3100828))

(assert (= (and b!3100828 res!1270253) b!3100830))

(assert (= (and b!3100830 res!1270251) b!3100826))

(assert (= (and b!3100826 res!1270254) b!3100839))

(assert (= (and b!3100828 (not res!1270252)) b!3100837))

(assert (= (and b!3100837 res!1270248) b!3100831))

(assert (= (and b!3100831 (not res!1270247)) b!3100833))

(assert (= (and b!3100833 (not res!1270250)) b!3100832))

(assert (= (or b!3100835 b!3100830 b!3100831) bm!218542))

(assert (=> b!3100836 m!3400937))

(declare-fun m!3401029 () Bool)

(assert (=> b!3100836 m!3401029))

(declare-fun m!3401031 () Bool)

(assert (=> b!3100829 m!3401031))

(assert (=> b!3100829 m!3400937))

(assert (=> b!3100829 m!3401031))

(declare-fun m!3401033 () Bool)

(assert (=> b!3100829 m!3401033))

(declare-fun m!3401035 () Bool)

(assert (=> b!3100829 m!3401035))

(assert (=> b!3100829 m!3401033))

(assert (=> b!3100829 m!3401035))

(declare-fun m!3401037 () Bool)

(assert (=> b!3100829 m!3401037))

(assert (=> b!3100833 m!3401035))

(assert (=> b!3100833 m!3401035))

(declare-fun m!3401039 () Bool)

(assert (=> b!3100833 m!3401039))

(assert (=> bm!218542 m!3400943))

(assert (=> d!861009 m!3400943))

(assert (=> d!861009 m!3400937))

(declare-fun m!3401041 () Bool)

(assert (=> d!861009 m!3401041))

(assert (=> b!3100832 m!3401031))

(assert (=> b!3100839 m!3401031))

(assert (=> b!3100826 m!3401035))

(assert (=> b!3100826 m!3401035))

(assert (=> b!3100826 m!3401039))

(assert (=> b!3100569 d!861009))

(declare-fun b!3100840 () Bool)

(declare-fun e!1937790 () Regex!9559)

(declare-fun lt!1055766 () Regex!9559)

(assert (=> b!3100840 (= e!1937790 lt!1055766)))

(declare-fun b!3100841 () Bool)

(declare-fun c!518121 () Bool)

(declare-fun call!218548 () Bool)

(assert (=> b!3100841 (= c!518121 call!218548)))

(declare-fun e!1937793 () Regex!9559)

(declare-fun e!1937801 () Regex!9559)

(assert (=> b!3100841 (= e!1937793 e!1937801)))

(declare-fun b!3100842 () Bool)

(declare-fun e!1937799 () Regex!9559)

(assert (=> b!3100842 (= e!1937799 e!1937793)))

(declare-fun lt!1055764 () Regex!9559)

(declare-fun call!218553 () Regex!9559)

(assert (=> b!3100842 (= lt!1055764 call!218553)))

(declare-fun lt!1055762 () Regex!9559)

(declare-fun call!218551 () Regex!9559)

(assert (=> b!3100842 (= lt!1055762 call!218551)))

(declare-fun c!518120 () Bool)

(declare-fun call!218554 () Bool)

(assert (=> b!3100842 (= c!518120 call!218554)))

(declare-fun b!3100843 () Bool)

(declare-fun c!518118 () Bool)

(assert (=> b!3100843 (= c!518118 ((_ is EmptyExpr!9559) r!17423))))

(declare-fun e!1937800 () Regex!9559)

(declare-fun e!1937798 () Regex!9559)

(assert (=> b!3100843 (= e!1937800 e!1937798)))

(declare-fun b!3100844 () Bool)

(declare-fun e!1937792 () Regex!9559)

(declare-fun lt!1055767 () Regex!9559)

(assert (=> b!3100844 (= e!1937792 (Concat!14880 lt!1055767 lt!1055766))))

(declare-fun b!3100845 () Bool)

(declare-fun e!1937797 () Regex!9559)

(declare-fun lt!1055763 () Regex!9559)

(assert (=> b!3100845 (= e!1937797 (Star!9559 lt!1055763))))

(declare-fun c!518122 () Bool)

(declare-fun bm!218543 () Bool)

(declare-fun call!218550 () Bool)

(assert (=> bm!218543 (= call!218550 (isEmptyExpr!616 (ite c!518122 lt!1055763 lt!1055766)))))

(declare-fun d!861013 () Bool)

(declare-fun e!1937795 () Bool)

(assert (=> d!861013 e!1937795))

(declare-fun res!1270255 () Bool)

(assert (=> d!861013 (=> (not res!1270255) (not e!1937795))))

(declare-fun lt!1055765 () Regex!9559)

(assert (=> d!861013 (= res!1270255 (validRegex!4292 lt!1055765))))

(declare-fun e!1937802 () Regex!9559)

(assert (=> d!861013 (= lt!1055765 e!1937802)))

(declare-fun c!518114 () Bool)

(assert (=> d!861013 (= c!518114 ((_ is EmptyLang!9559) r!17423))))

(assert (=> d!861013 (validRegex!4292 r!17423)))

(assert (=> d!861013 (= (simplify!514 r!17423) lt!1055765)))

(declare-fun b!3100846 () Bool)

(assert (=> b!3100846 (= e!1937798 EmptyExpr!9559)))

(declare-fun c!518115 () Bool)

(declare-fun call!218552 () Regex!9559)

(declare-fun bm!218544 () Bool)

(assert (=> bm!218544 (= call!218552 (simplify!514 (ite c!518122 (reg!9888 r!17423) (ite c!518115 (regOne!19631 r!17423) (regTwo!19630 r!17423)))))))

(declare-fun b!3100847 () Bool)

(declare-fun e!1937789 () Bool)

(assert (=> b!3100847 (= e!1937789 call!218548)))

(declare-fun bm!218545 () Bool)

(assert (=> bm!218545 (= call!218548 (isEmptyLang!610 (ite c!518115 lt!1055762 lt!1055766)))))

(declare-fun b!3100848 () Bool)

(declare-fun c!518113 () Bool)

(declare-fun e!1937794 () Bool)

(assert (=> b!3100848 (= c!518113 e!1937794)))

(declare-fun res!1270256 () Bool)

(assert (=> b!3100848 (=> res!1270256 e!1937794)))

(declare-fun call!218549 () Bool)

(assert (=> b!3100848 (= res!1270256 call!218549)))

(assert (=> b!3100848 (= lt!1055763 call!218552)))

(declare-fun e!1937791 () Regex!9559)

(assert (=> b!3100848 (= e!1937791 e!1937797)))

(declare-fun bm!218546 () Bool)

(assert (=> bm!218546 (= call!218549 (isEmptyLang!610 (ite c!518122 lt!1055763 (ite c!518115 lt!1055764 lt!1055767))))))

(declare-fun b!3100849 () Bool)

(assert (=> b!3100849 (= e!1937792 lt!1055767)))

(declare-fun b!3100850 () Bool)

(assert (=> b!3100850 (= e!1937798 e!1937791)))

(assert (=> b!3100850 (= c!518122 ((_ is Star!9559) r!17423))))

(declare-fun b!3100851 () Bool)

(declare-fun e!1937796 () Regex!9559)

(assert (=> b!3100851 (= e!1937796 EmptyLang!9559)))

(declare-fun b!3100852 () Bool)

(assert (=> b!3100852 (= e!1937799 e!1937796)))

(assert (=> b!3100852 (= lt!1055767 call!218551)))

(assert (=> b!3100852 (= lt!1055766 call!218553)))

(declare-fun res!1270257 () Bool)

(assert (=> b!3100852 (= res!1270257 call!218554)))

(assert (=> b!3100852 (=> res!1270257 e!1937789)))

(declare-fun c!518116 () Bool)

(assert (=> b!3100852 (= c!518116 e!1937789)))

(declare-fun bm!218547 () Bool)

(assert (=> bm!218547 (= call!218551 (simplify!514 (ite c!518115 (regTwo!19631 r!17423) (regOne!19630 r!17423))))))

(declare-fun b!3100853 () Bool)

(assert (=> b!3100853 (= e!1937802 e!1937800)))

(declare-fun c!518123 () Bool)

(assert (=> b!3100853 (= c!518123 ((_ is ElementMatch!9559) r!17423))))

(declare-fun b!3100854 () Bool)

(assert (=> b!3100854 (= e!1937795 (= (nullable!3205 lt!1055765) (nullable!3205 r!17423)))))

(declare-fun bm!218548 () Bool)

(assert (=> bm!218548 (= call!218554 call!218549)))

(declare-fun b!3100855 () Bool)

(assert (=> b!3100855 (= c!518115 ((_ is Union!9559) r!17423))))

(assert (=> b!3100855 (= e!1937791 e!1937799)))

(declare-fun b!3100856 () Bool)

(assert (=> b!3100856 (= e!1937800 r!17423)))

(declare-fun b!3100857 () Bool)

(assert (=> b!3100857 (= e!1937797 EmptyExpr!9559)))

(declare-fun b!3100858 () Bool)

(declare-fun c!518117 () Bool)

(assert (=> b!3100858 (= c!518117 (isEmptyExpr!616 lt!1055767))))

(assert (=> b!3100858 (= e!1937796 e!1937790)))

(declare-fun b!3100859 () Bool)

(assert (=> b!3100859 (= e!1937801 (Union!9559 lt!1055764 lt!1055762))))

(declare-fun b!3100860 () Bool)

(assert (=> b!3100860 (= e!1937793 lt!1055762)))

(declare-fun b!3100861 () Bool)

(assert (=> b!3100861 (= e!1937790 e!1937792)))

(declare-fun c!518119 () Bool)

(assert (=> b!3100861 (= c!518119 call!218550)))

(declare-fun b!3100862 () Bool)

(assert (=> b!3100862 (= e!1937794 call!218550)))

(declare-fun bm!218549 () Bool)

(assert (=> bm!218549 (= call!218553 call!218552)))

(declare-fun b!3100863 () Bool)

(assert (=> b!3100863 (= e!1937801 lt!1055764)))

(declare-fun b!3100864 () Bool)

(assert (=> b!3100864 (= e!1937802 EmptyLang!9559)))

(assert (= (and d!861013 c!518114) b!3100864))

(assert (= (and d!861013 (not c!518114)) b!3100853))

(assert (= (and b!3100853 c!518123) b!3100856))

(assert (= (and b!3100853 (not c!518123)) b!3100843))

(assert (= (and b!3100843 c!518118) b!3100846))

(assert (= (and b!3100843 (not c!518118)) b!3100850))

(assert (= (and b!3100850 c!518122) b!3100848))

(assert (= (and b!3100850 (not c!518122)) b!3100855))

(assert (= (and b!3100848 (not res!1270256)) b!3100862))

(assert (= (and b!3100848 c!518113) b!3100857))

(assert (= (and b!3100848 (not c!518113)) b!3100845))

(assert (= (and b!3100855 c!518115) b!3100842))

(assert (= (and b!3100855 (not c!518115)) b!3100852))

(assert (= (and b!3100842 c!518120) b!3100860))

(assert (= (and b!3100842 (not c!518120)) b!3100841))

(assert (= (and b!3100841 c!518121) b!3100863))

(assert (= (and b!3100841 (not c!518121)) b!3100859))

(assert (= (and b!3100852 (not res!1270257)) b!3100847))

(assert (= (and b!3100852 c!518116) b!3100851))

(assert (= (and b!3100852 (not c!518116)) b!3100858))

(assert (= (and b!3100858 c!518117) b!3100840))

(assert (= (and b!3100858 (not c!518117)) b!3100861))

(assert (= (and b!3100861 c!518119) b!3100849))

(assert (= (and b!3100861 (not c!518119)) b!3100844))

(assert (= (or b!3100842 b!3100852) bm!218549))

(assert (= (or b!3100842 b!3100852) bm!218547))

(assert (= (or b!3100841 b!3100847) bm!218545))

(assert (= (or b!3100842 b!3100852) bm!218548))

(assert (= (or b!3100862 b!3100861) bm!218543))

(assert (= (or b!3100848 bm!218549) bm!218544))

(assert (= (or b!3100848 bm!218548) bm!218546))

(assert (= (and d!861013 res!1270255) b!3100854))

(declare-fun m!3401043 () Bool)

(assert (=> bm!218546 m!3401043))

(declare-fun m!3401045 () Bool)

(assert (=> b!3100858 m!3401045))

(declare-fun m!3401047 () Bool)

(assert (=> bm!218545 m!3401047))

(declare-fun m!3401049 () Bool)

(assert (=> b!3100854 m!3401049))

(declare-fun m!3401051 () Bool)

(assert (=> b!3100854 m!3401051))

(declare-fun m!3401053 () Bool)

(assert (=> bm!218544 m!3401053))

(declare-fun m!3401055 () Bool)

(assert (=> d!861013 m!3401055))

(assert (=> d!861013 m!3400941))

(declare-fun m!3401057 () Bool)

(assert (=> bm!218543 m!3401057))

(declare-fun m!3401059 () Bool)

(assert (=> bm!218547 m!3401059))

(assert (=> b!3100569 d!861013))

(declare-fun b!3101086 () Bool)

(assert (=> b!3101086 true))

(assert (=> b!3101086 true))

(declare-fun bs!535686 () Bool)

(declare-fun b!3101085 () Bool)

(assert (= bs!535686 (and b!3101085 b!3101086)))

(declare-fun lambda!114880 () Int)

(declare-fun lambda!114879 () Int)

(assert (=> bs!535686 (not (= lambda!114880 lambda!114879))))

(assert (=> b!3101085 true))

(assert (=> b!3101085 true))

(declare-fun b!3101079 () Bool)

(declare-fun e!1937918 () Bool)

(declare-fun e!1937912 () Bool)

(assert (=> b!3101079 (= e!1937918 e!1937912)))

(declare-fun c!518168 () Bool)

(assert (=> b!3101079 (= c!518168 ((_ is Star!9559) r!17423))))

(declare-fun b!3101080 () Bool)

(declare-fun c!518170 () Bool)

(assert (=> b!3101080 (= c!518170 ((_ is Union!9559) r!17423))))

(declare-fun e!1937913 () Bool)

(assert (=> b!3101080 (= e!1937913 e!1937918)))

(declare-fun b!3101081 () Bool)

(declare-fun e!1937917 () Bool)

(assert (=> b!3101081 (= e!1937918 e!1937917)))

(declare-fun res!1270347 () Bool)

(assert (=> b!3101081 (= res!1270347 (matchRSpec!1696 (regOne!19631 r!17423) s!11993))))

(assert (=> b!3101081 (=> res!1270347 e!1937917)))

(declare-fun b!3101082 () Bool)

(declare-fun e!1937915 () Bool)

(declare-fun call!218587 () Bool)

(assert (=> b!3101082 (= e!1937915 call!218587)))

(declare-fun b!3101083 () Bool)

(declare-fun e!1937914 () Bool)

(assert (=> b!3101083 (= e!1937915 e!1937914)))

(declare-fun res!1270345 () Bool)

(assert (=> b!3101083 (= res!1270345 (not ((_ is EmptyLang!9559) r!17423)))))

(assert (=> b!3101083 (=> (not res!1270345) (not e!1937914))))

(declare-fun d!861015 () Bool)

(declare-fun c!518169 () Bool)

(assert (=> d!861015 (= c!518169 ((_ is EmptyExpr!9559) r!17423))))

(assert (=> d!861015 (= (matchRSpec!1696 r!17423 s!11993) e!1937915)))

(declare-fun b!3101084 () Bool)

(declare-fun c!518171 () Bool)

(assert (=> b!3101084 (= c!518171 ((_ is ElementMatch!9559) r!17423))))

(assert (=> b!3101084 (= e!1937914 e!1937913)))

(declare-fun bm!218581 () Bool)

(declare-fun call!218586 () Bool)

(declare-fun Exists!1822 (Int) Bool)

(assert (=> bm!218581 (= call!218586 (Exists!1822 (ite c!518168 lambda!114879 lambda!114880)))))

(assert (=> b!3101085 (= e!1937912 call!218586)))

(declare-fun e!1937916 () Bool)

(assert (=> b!3101086 (= e!1937916 call!218586)))

(declare-fun b!3101087 () Bool)

(declare-fun res!1270346 () Bool)

(assert (=> b!3101087 (=> res!1270346 e!1937916)))

(assert (=> b!3101087 (= res!1270346 call!218587)))

(assert (=> b!3101087 (= e!1937912 e!1937916)))

(declare-fun bm!218582 () Bool)

(assert (=> bm!218582 (= call!218587 (isEmpty!19651 s!11993))))

(declare-fun b!3101088 () Bool)

(assert (=> b!3101088 (= e!1937917 (matchRSpec!1696 (regTwo!19631 r!17423) s!11993))))

(declare-fun b!3101089 () Bool)

(assert (=> b!3101089 (= e!1937913 (= s!11993 (Cons!35300 (c!518007 r!17423) Nil!35300)))))

(assert (= (and d!861015 c!518169) b!3101082))

(assert (= (and d!861015 (not c!518169)) b!3101083))

(assert (= (and b!3101083 res!1270345) b!3101084))

(assert (= (and b!3101084 c!518171) b!3101089))

(assert (= (and b!3101084 (not c!518171)) b!3101080))

(assert (= (and b!3101080 c!518170) b!3101081))

(assert (= (and b!3101080 (not c!518170)) b!3101079))

(assert (= (and b!3101081 (not res!1270347)) b!3101088))

(assert (= (and b!3101079 c!518168) b!3101087))

(assert (= (and b!3101079 (not c!518168)) b!3101085))

(assert (= (and b!3101087 (not res!1270346)) b!3101086))

(assert (= (or b!3101086 b!3101085) bm!218581))

(assert (= (or b!3101082 b!3101087) bm!218582))

(declare-fun m!3401119 () Bool)

(assert (=> b!3101081 m!3401119))

(declare-fun m!3401121 () Bool)

(assert (=> bm!218581 m!3401121))

(assert (=> bm!218582 m!3400943))

(declare-fun m!3401123 () Bool)

(assert (=> b!3101088 m!3401123))

(assert (=> b!3100568 d!861015))

(declare-fun b!3101094 () Bool)

(declare-fun res!1270355 () Bool)

(declare-fun e!1937922 () Bool)

(assert (=> b!3101094 (=> (not res!1270355) (not e!1937922))))

(assert (=> b!3101094 (= res!1270355 (isEmpty!19651 (tail!5085 s!11993)))))

(declare-fun b!3101095 () Bool)

(declare-fun e!1937920 () Bool)

(declare-fun e!1937919 () Bool)

(assert (=> b!3101095 (= e!1937920 e!1937919)))

(declare-fun c!518174 () Bool)

(assert (=> b!3101095 (= c!518174 ((_ is EmptyLang!9559) r!17423))))

(declare-fun b!3101096 () Bool)

(declare-fun res!1270353 () Bool)

(declare-fun e!1937924 () Bool)

(assert (=> b!3101096 (=> res!1270353 e!1937924)))

(assert (=> b!3101096 (= res!1270353 e!1937922)))

(declare-fun res!1270354 () Bool)

(assert (=> b!3101096 (=> (not res!1270354) (not e!1937922))))

(declare-fun lt!1055782 () Bool)

(assert (=> b!3101096 (= res!1270354 lt!1055782)))

(declare-fun b!3101097 () Bool)

(declare-fun e!1937921 () Bool)

(assert (=> b!3101097 (= e!1937921 (matchR!4441 (derivativeStep!2800 r!17423 (head!6859 s!11993)) (tail!5085 s!11993)))))

(declare-fun b!3101099 () Bool)

(declare-fun e!1937925 () Bool)

(declare-fun e!1937923 () Bool)

(assert (=> b!3101099 (= e!1937925 e!1937923)))

(declare-fun res!1270348 () Bool)

(assert (=> b!3101099 (=> res!1270348 e!1937923)))

(declare-fun call!218588 () Bool)

(assert (=> b!3101099 (= res!1270348 call!218588)))

(declare-fun b!3101100 () Bool)

(assert (=> b!3101100 (= e!1937923 (not (= (head!6859 s!11993) (c!518007 r!17423))))))

(declare-fun b!3101101 () Bool)

(declare-fun res!1270351 () Bool)

(assert (=> b!3101101 (=> res!1270351 e!1937923)))

(assert (=> b!3101101 (= res!1270351 (not (isEmpty!19651 (tail!5085 s!11993))))))

(declare-fun b!3101102 () Bool)

(declare-fun res!1270350 () Bool)

(assert (=> b!3101102 (=> res!1270350 e!1937924)))

(assert (=> b!3101102 (= res!1270350 (not ((_ is ElementMatch!9559) r!17423)))))

(assert (=> b!3101102 (= e!1937919 e!1937924)))

(declare-fun b!3101103 () Bool)

(assert (=> b!3101103 (= e!1937920 (= lt!1055782 call!218588))))

(declare-fun b!3101098 () Bool)

(declare-fun res!1270352 () Bool)

(assert (=> b!3101098 (=> (not res!1270352) (not e!1937922))))

(assert (=> b!3101098 (= res!1270352 (not call!218588))))

(declare-fun d!861035 () Bool)

(assert (=> d!861035 e!1937920))

(declare-fun c!518173 () Bool)

(assert (=> d!861035 (= c!518173 ((_ is EmptyExpr!9559) r!17423))))

(assert (=> d!861035 (= lt!1055782 e!1937921)))

(declare-fun c!518172 () Bool)

(assert (=> d!861035 (= c!518172 (isEmpty!19651 s!11993))))

(assert (=> d!861035 (validRegex!4292 r!17423)))

(assert (=> d!861035 (= (matchR!4441 r!17423 s!11993) lt!1055782)))

(declare-fun b!3101104 () Bool)

(assert (=> b!3101104 (= e!1937921 (nullable!3205 r!17423))))

(declare-fun b!3101105 () Bool)

(assert (=> b!3101105 (= e!1937924 e!1937925)))

(declare-fun res!1270349 () Bool)

(assert (=> b!3101105 (=> (not res!1270349) (not e!1937925))))

(assert (=> b!3101105 (= res!1270349 (not lt!1055782))))

(declare-fun b!3101106 () Bool)

(assert (=> b!3101106 (= e!1937919 (not lt!1055782))))

(declare-fun b!3101107 () Bool)

(assert (=> b!3101107 (= e!1937922 (= (head!6859 s!11993) (c!518007 r!17423)))))

(declare-fun bm!218583 () Bool)

(assert (=> bm!218583 (= call!218588 (isEmpty!19651 s!11993))))

(assert (= (and d!861035 c!518172) b!3101104))

(assert (= (and d!861035 (not c!518172)) b!3101097))

(assert (= (and d!861035 c!518173) b!3101103))

(assert (= (and d!861035 (not c!518173)) b!3101095))

(assert (= (and b!3101095 c!518174) b!3101106))

(assert (= (and b!3101095 (not c!518174)) b!3101102))

(assert (= (and b!3101102 (not res!1270350)) b!3101096))

(assert (= (and b!3101096 res!1270354) b!3101098))

(assert (= (and b!3101098 res!1270352) b!3101094))

(assert (= (and b!3101094 res!1270355) b!3101107))

(assert (= (and b!3101096 (not res!1270353)) b!3101105))

(assert (= (and b!3101105 res!1270349) b!3101099))

(assert (= (and b!3101099 (not res!1270348)) b!3101101))

(assert (= (and b!3101101 (not res!1270351)) b!3101100))

(assert (= (or b!3101103 b!3101098 b!3101099) bm!218583))

(assert (=> b!3101104 m!3401051))

(assert (=> b!3101097 m!3401031))

(assert (=> b!3101097 m!3401031))

(declare-fun m!3401125 () Bool)

(assert (=> b!3101097 m!3401125))

(assert (=> b!3101097 m!3401035))

(assert (=> b!3101097 m!3401125))

(assert (=> b!3101097 m!3401035))

(declare-fun m!3401127 () Bool)

(assert (=> b!3101097 m!3401127))

(assert (=> b!3101101 m!3401035))

(assert (=> b!3101101 m!3401035))

(assert (=> b!3101101 m!3401039))

(assert (=> bm!218583 m!3400943))

(assert (=> d!861035 m!3400943))

(assert (=> d!861035 m!3400941))

(assert (=> b!3101100 m!3401031))

(assert (=> b!3101107 m!3401031))

(assert (=> b!3101094 m!3401035))

(assert (=> b!3101094 m!3401035))

(assert (=> b!3101094 m!3401039))

(assert (=> b!3100568 d!861035))

(declare-fun d!861037 () Bool)

(assert (=> d!861037 (= (matchR!4441 r!17423 s!11993) (matchRSpec!1696 r!17423 s!11993))))

(declare-fun lt!1055785 () Unit!49557)

(declare-fun choose!18349 (Regex!9559 List!35424) Unit!49557)

(assert (=> d!861037 (= lt!1055785 (choose!18349 r!17423 s!11993))))

(assert (=> d!861037 (validRegex!4292 r!17423)))

(assert (=> d!861037 (= (mainMatchTheorem!1696 r!17423 s!11993) lt!1055785)))

(declare-fun bs!535687 () Bool)

(assert (= bs!535687 d!861037))

(assert (=> bs!535687 m!3400933))

(assert (=> bs!535687 m!3400931))

(declare-fun m!3401129 () Bool)

(assert (=> bs!535687 m!3401129))

(assert (=> bs!535687 m!3400941))

(assert (=> b!3100568 d!861037))

(declare-fun b!3101108 () Bool)

(declare-fun res!1270363 () Bool)

(declare-fun e!1937929 () Bool)

(assert (=> b!3101108 (=> (not res!1270363) (not e!1937929))))

(assert (=> b!3101108 (= res!1270363 (isEmpty!19651 (tail!5085 s!11993)))))

(declare-fun b!3101109 () Bool)

(declare-fun e!1937927 () Bool)

(declare-fun e!1937926 () Bool)

(assert (=> b!3101109 (= e!1937927 e!1937926)))

(declare-fun c!518177 () Bool)

(assert (=> b!3101109 (= c!518177 ((_ is EmptyLang!9559) (Concat!14880 lt!1055707 lt!1055709)))))

(declare-fun b!3101110 () Bool)

(declare-fun res!1270361 () Bool)

(declare-fun e!1937931 () Bool)

(assert (=> b!3101110 (=> res!1270361 e!1937931)))

(assert (=> b!3101110 (= res!1270361 e!1937929)))

(declare-fun res!1270362 () Bool)

(assert (=> b!3101110 (=> (not res!1270362) (not e!1937929))))

(declare-fun lt!1055786 () Bool)

(assert (=> b!3101110 (= res!1270362 lt!1055786)))

(declare-fun b!3101111 () Bool)

(declare-fun e!1937928 () Bool)

(assert (=> b!3101111 (= e!1937928 (matchR!4441 (derivativeStep!2800 (Concat!14880 lt!1055707 lt!1055709) (head!6859 s!11993)) (tail!5085 s!11993)))))

(declare-fun b!3101113 () Bool)

(declare-fun e!1937932 () Bool)

(declare-fun e!1937930 () Bool)

(assert (=> b!3101113 (= e!1937932 e!1937930)))

(declare-fun res!1270356 () Bool)

(assert (=> b!3101113 (=> res!1270356 e!1937930)))

(declare-fun call!218589 () Bool)

(assert (=> b!3101113 (= res!1270356 call!218589)))

(declare-fun b!3101114 () Bool)

(assert (=> b!3101114 (= e!1937930 (not (= (head!6859 s!11993) (c!518007 (Concat!14880 lt!1055707 lt!1055709)))))))

(declare-fun b!3101115 () Bool)

(declare-fun res!1270359 () Bool)

(assert (=> b!3101115 (=> res!1270359 e!1937930)))

(assert (=> b!3101115 (= res!1270359 (not (isEmpty!19651 (tail!5085 s!11993))))))

(declare-fun b!3101116 () Bool)

(declare-fun res!1270358 () Bool)

(assert (=> b!3101116 (=> res!1270358 e!1937931)))

(assert (=> b!3101116 (= res!1270358 (not ((_ is ElementMatch!9559) (Concat!14880 lt!1055707 lt!1055709))))))

(assert (=> b!3101116 (= e!1937926 e!1937931)))

(declare-fun b!3101117 () Bool)

(assert (=> b!3101117 (= e!1937927 (= lt!1055786 call!218589))))

(declare-fun b!3101112 () Bool)

(declare-fun res!1270360 () Bool)

(assert (=> b!3101112 (=> (not res!1270360) (not e!1937929))))

(assert (=> b!3101112 (= res!1270360 (not call!218589))))

(declare-fun d!861039 () Bool)

(assert (=> d!861039 e!1937927))

(declare-fun c!518176 () Bool)

(assert (=> d!861039 (= c!518176 ((_ is EmptyExpr!9559) (Concat!14880 lt!1055707 lt!1055709)))))

(assert (=> d!861039 (= lt!1055786 e!1937928)))

(declare-fun c!518175 () Bool)

(assert (=> d!861039 (= c!518175 (isEmpty!19651 s!11993))))

(assert (=> d!861039 (validRegex!4292 (Concat!14880 lt!1055707 lt!1055709))))

(assert (=> d!861039 (= (matchR!4441 (Concat!14880 lt!1055707 lt!1055709) s!11993) lt!1055786)))

(declare-fun b!3101118 () Bool)

(assert (=> b!3101118 (= e!1937928 (nullable!3205 (Concat!14880 lt!1055707 lt!1055709)))))

(declare-fun b!3101119 () Bool)

(assert (=> b!3101119 (= e!1937931 e!1937932)))

(declare-fun res!1270357 () Bool)

(assert (=> b!3101119 (=> (not res!1270357) (not e!1937932))))

(assert (=> b!3101119 (= res!1270357 (not lt!1055786))))

(declare-fun b!3101120 () Bool)

(assert (=> b!3101120 (= e!1937926 (not lt!1055786))))

(declare-fun b!3101121 () Bool)

(assert (=> b!3101121 (= e!1937929 (= (head!6859 s!11993) (c!518007 (Concat!14880 lt!1055707 lt!1055709))))))

(declare-fun bm!218584 () Bool)

(assert (=> bm!218584 (= call!218589 (isEmpty!19651 s!11993))))

(assert (= (and d!861039 c!518175) b!3101118))

(assert (= (and d!861039 (not c!518175)) b!3101111))

(assert (= (and d!861039 c!518176) b!3101117))

(assert (= (and d!861039 (not c!518176)) b!3101109))

(assert (= (and b!3101109 c!518177) b!3101120))

(assert (= (and b!3101109 (not c!518177)) b!3101116))

(assert (= (and b!3101116 (not res!1270358)) b!3101110))

(assert (= (and b!3101110 res!1270362) b!3101112))

(assert (= (and b!3101112 res!1270360) b!3101108))

(assert (= (and b!3101108 res!1270363) b!3101121))

(assert (= (and b!3101110 (not res!1270361)) b!3101119))

(assert (= (and b!3101119 res!1270357) b!3101113))

(assert (= (and b!3101113 (not res!1270356)) b!3101115))

(assert (= (and b!3101115 (not res!1270359)) b!3101114))

(assert (= (or b!3101117 b!3101112 b!3101113) bm!218584))

(declare-fun m!3401131 () Bool)

(assert (=> b!3101118 m!3401131))

(assert (=> b!3101111 m!3401031))

(assert (=> b!3101111 m!3401031))

(declare-fun m!3401133 () Bool)

(assert (=> b!3101111 m!3401133))

(assert (=> b!3101111 m!3401035))

(assert (=> b!3101111 m!3401133))

(assert (=> b!3101111 m!3401035))

(declare-fun m!3401135 () Bool)

(assert (=> b!3101111 m!3401135))

(assert (=> b!3101115 m!3401035))

(assert (=> b!3101115 m!3401035))

(assert (=> b!3101115 m!3401039))

(assert (=> bm!218584 m!3400943))

(assert (=> d!861039 m!3400943))

(declare-fun m!3401137 () Bool)

(assert (=> d!861039 m!3401137))

(assert (=> b!3101114 m!3401031))

(assert (=> b!3101121 m!3401031))

(assert (=> b!3101108 m!3401035))

(assert (=> b!3101108 m!3401035))

(assert (=> b!3101108 m!3401039))

(assert (=> b!3100563 d!861039))

(declare-fun d!861041 () Bool)

(assert (=> d!861041 (= (isEmptyExpr!616 lt!1055707) ((_ is EmptyExpr!9559) lt!1055707))))

(assert (=> b!3100572 d!861041))

(declare-fun d!861043 () Bool)

(assert (=> d!861043 (= (isEmpty!19651 s!11993) ((_ is Nil!35300) s!11993))))

(assert (=> b!3100566 d!861043))

(declare-fun b!3101140 () Bool)

(declare-fun res!1270378 () Bool)

(declare-fun e!1937953 () Bool)

(assert (=> b!3101140 (=> (not res!1270378) (not e!1937953))))

(declare-fun call!218596 () Bool)

(assert (=> b!3101140 (= res!1270378 call!218596)))

(declare-fun e!1937949 () Bool)

(assert (=> b!3101140 (= e!1937949 e!1937953)))

(declare-fun d!861045 () Bool)

(declare-fun res!1270374 () Bool)

(declare-fun e!1937952 () Bool)

(assert (=> d!861045 (=> res!1270374 e!1937952)))

(assert (=> d!861045 (= res!1270374 ((_ is ElementMatch!9559) r!17423))))

(assert (=> d!861045 (= (validRegex!4292 r!17423) e!1937952)))

(declare-fun call!218598 () Bool)

(declare-fun c!518182 () Bool)

(declare-fun c!518183 () Bool)

(declare-fun bm!218591 () Bool)

(assert (=> bm!218591 (= call!218598 (validRegex!4292 (ite c!518183 (reg!9888 r!17423) (ite c!518182 (regTwo!19631 r!17423) (regOne!19630 r!17423)))))))

(declare-fun b!3101141 () Bool)

(declare-fun res!1270377 () Bool)

(declare-fun e!1937951 () Bool)

(assert (=> b!3101141 (=> res!1270377 e!1937951)))

(assert (=> b!3101141 (= res!1270377 (not ((_ is Concat!14880) r!17423)))))

(assert (=> b!3101141 (= e!1937949 e!1937951)))

(declare-fun b!3101142 () Bool)

(declare-fun e!1937948 () Bool)

(assert (=> b!3101142 (= e!1937951 e!1937948)))

(declare-fun res!1270375 () Bool)

(assert (=> b!3101142 (=> (not res!1270375) (not e!1937948))))

(declare-fun call!218597 () Bool)

(assert (=> b!3101142 (= res!1270375 call!218597)))

(declare-fun b!3101143 () Bool)

(declare-fun e!1937950 () Bool)

(assert (=> b!3101143 (= e!1937950 e!1937949)))

(assert (=> b!3101143 (= c!518182 ((_ is Union!9559) r!17423))))

(declare-fun bm!218592 () Bool)

(assert (=> bm!218592 (= call!218596 (validRegex!4292 (ite c!518182 (regOne!19631 r!17423) (regTwo!19630 r!17423))))))

(declare-fun b!3101144 () Bool)

(assert (=> b!3101144 (= e!1937953 call!218597)))

(declare-fun b!3101145 () Bool)

(declare-fun e!1937947 () Bool)

(assert (=> b!3101145 (= e!1937947 call!218598)))

(declare-fun bm!218593 () Bool)

(assert (=> bm!218593 (= call!218597 call!218598)))

(declare-fun b!3101146 () Bool)

(assert (=> b!3101146 (= e!1937948 call!218596)))

(declare-fun b!3101147 () Bool)

(assert (=> b!3101147 (= e!1937950 e!1937947)))

(declare-fun res!1270376 () Bool)

(assert (=> b!3101147 (= res!1270376 (not (nullable!3205 (reg!9888 r!17423))))))

(assert (=> b!3101147 (=> (not res!1270376) (not e!1937947))))

(declare-fun b!3101148 () Bool)

(assert (=> b!3101148 (= e!1937952 e!1937950)))

(assert (=> b!3101148 (= c!518183 ((_ is Star!9559) r!17423))))

(assert (= (and d!861045 (not res!1270374)) b!3101148))

(assert (= (and b!3101148 c!518183) b!3101147))

(assert (= (and b!3101148 (not c!518183)) b!3101143))

(assert (= (and b!3101147 res!1270376) b!3101145))

(assert (= (and b!3101143 c!518182) b!3101140))

(assert (= (and b!3101143 (not c!518182)) b!3101141))

(assert (= (and b!3101140 res!1270378) b!3101144))

(assert (= (and b!3101141 (not res!1270377)) b!3101142))

(assert (= (and b!3101142 res!1270375) b!3101146))

(assert (= (or b!3101140 b!3101146) bm!218592))

(assert (= (or b!3101144 b!3101142) bm!218593))

(assert (= (or b!3101145 bm!218593) bm!218591))

(declare-fun m!3401139 () Bool)

(assert (=> bm!218591 m!3401139))

(declare-fun m!3401141 () Bool)

(assert (=> bm!218592 m!3401141))

(declare-fun m!3401143 () Bool)

(assert (=> b!3101147 m!3401143))

(assert (=> start!294216 d!861045))

(declare-fun d!861047 () Bool)

(assert (=> d!861047 (= (isEmptyLang!610 lt!1055709) ((_ is EmptyLang!9559) lt!1055709))))

(assert (=> b!3100570 d!861047))

(declare-fun d!861049 () Bool)

(assert (=> d!861049 (= (isEmptyExpr!616 lt!1055709) ((_ is EmptyExpr!9559) lt!1055709))))

(assert (=> b!3100575 d!861049))

(declare-fun b!3101162 () Bool)

(declare-fun e!1937956 () Bool)

(declare-fun tp!974674 () Bool)

(declare-fun tp!974670 () Bool)

(assert (=> b!3101162 (= e!1937956 (and tp!974674 tp!974670))))

(declare-fun b!3101161 () Bool)

(declare-fun tp!974672 () Bool)

(assert (=> b!3101161 (= e!1937956 tp!974672)))

(declare-fun b!3101160 () Bool)

(declare-fun tp!974671 () Bool)

(declare-fun tp!974673 () Bool)

(assert (=> b!3101160 (= e!1937956 (and tp!974671 tp!974673))))

(assert (=> b!3100573 (= tp!974618 e!1937956)))

(declare-fun b!3101159 () Bool)

(assert (=> b!3101159 (= e!1937956 tp_is_empty!16681)))

(assert (= (and b!3100573 ((_ is ElementMatch!9559) (reg!9888 r!17423))) b!3101159))

(assert (= (and b!3100573 ((_ is Concat!14880) (reg!9888 r!17423))) b!3101160))

(assert (= (and b!3100573 ((_ is Star!9559) (reg!9888 r!17423))) b!3101161))

(assert (= (and b!3100573 ((_ is Union!9559) (reg!9888 r!17423))) b!3101162))

(declare-fun b!3101167 () Bool)

(declare-fun e!1937959 () Bool)

(declare-fun tp!974677 () Bool)

(assert (=> b!3101167 (= e!1937959 (and tp_is_empty!16681 tp!974677))))

(assert (=> b!3100567 (= tp!974620 e!1937959)))

(assert (= (and b!3100567 ((_ is Cons!35300) (t!234489 s!11993))) b!3101167))

(declare-fun b!3101171 () Bool)

(declare-fun e!1937960 () Bool)

(declare-fun tp!974682 () Bool)

(declare-fun tp!974678 () Bool)

(assert (=> b!3101171 (= e!1937960 (and tp!974682 tp!974678))))

(declare-fun b!3101170 () Bool)

(declare-fun tp!974680 () Bool)

(assert (=> b!3101170 (= e!1937960 tp!974680)))

(declare-fun b!3101169 () Bool)

(declare-fun tp!974679 () Bool)

(declare-fun tp!974681 () Bool)

(assert (=> b!3101169 (= e!1937960 (and tp!974679 tp!974681))))

(assert (=> b!3100571 (= tp!974616 e!1937960)))

(declare-fun b!3101168 () Bool)

(assert (=> b!3101168 (= e!1937960 tp_is_empty!16681)))

(assert (= (and b!3100571 ((_ is ElementMatch!9559) (regOne!19630 r!17423))) b!3101168))

(assert (= (and b!3100571 ((_ is Concat!14880) (regOne!19630 r!17423))) b!3101169))

(assert (= (and b!3100571 ((_ is Star!9559) (regOne!19630 r!17423))) b!3101170))

(assert (= (and b!3100571 ((_ is Union!9559) (regOne!19630 r!17423))) b!3101171))

(declare-fun b!3101175 () Bool)

(declare-fun e!1937961 () Bool)

(declare-fun tp!974687 () Bool)

(declare-fun tp!974683 () Bool)

(assert (=> b!3101175 (= e!1937961 (and tp!974687 tp!974683))))

(declare-fun b!3101174 () Bool)

(declare-fun tp!974685 () Bool)

(assert (=> b!3101174 (= e!1937961 tp!974685)))

(declare-fun b!3101173 () Bool)

(declare-fun tp!974684 () Bool)

(declare-fun tp!974686 () Bool)

(assert (=> b!3101173 (= e!1937961 (and tp!974684 tp!974686))))

(assert (=> b!3100571 (= tp!974621 e!1937961)))

(declare-fun b!3101172 () Bool)

(assert (=> b!3101172 (= e!1937961 tp_is_empty!16681)))

(assert (= (and b!3100571 ((_ is ElementMatch!9559) (regTwo!19630 r!17423))) b!3101172))

(assert (= (and b!3100571 ((_ is Concat!14880) (regTwo!19630 r!17423))) b!3101173))

(assert (= (and b!3100571 ((_ is Star!9559) (regTwo!19630 r!17423))) b!3101174))

(assert (= (and b!3100571 ((_ is Union!9559) (regTwo!19630 r!17423))) b!3101175))

(declare-fun b!3101179 () Bool)

(declare-fun e!1937962 () Bool)

(declare-fun tp!974692 () Bool)

(declare-fun tp!974688 () Bool)

(assert (=> b!3101179 (= e!1937962 (and tp!974692 tp!974688))))

(declare-fun b!3101178 () Bool)

(declare-fun tp!974690 () Bool)

(assert (=> b!3101178 (= e!1937962 tp!974690)))

(declare-fun b!3101177 () Bool)

(declare-fun tp!974689 () Bool)

(declare-fun tp!974691 () Bool)

(assert (=> b!3101177 (= e!1937962 (and tp!974689 tp!974691))))

(assert (=> b!3100564 (= tp!974617 e!1937962)))

(declare-fun b!3101176 () Bool)

(assert (=> b!3101176 (= e!1937962 tp_is_empty!16681)))

(assert (= (and b!3100564 ((_ is ElementMatch!9559) (regOne!19631 r!17423))) b!3101176))

(assert (= (and b!3100564 ((_ is Concat!14880) (regOne!19631 r!17423))) b!3101177))

(assert (= (and b!3100564 ((_ is Star!9559) (regOne!19631 r!17423))) b!3101178))

(assert (= (and b!3100564 ((_ is Union!9559) (regOne!19631 r!17423))) b!3101179))

(declare-fun b!3101183 () Bool)

(declare-fun e!1937963 () Bool)

(declare-fun tp!974697 () Bool)

(declare-fun tp!974693 () Bool)

(assert (=> b!3101183 (= e!1937963 (and tp!974697 tp!974693))))

(declare-fun b!3101182 () Bool)

(declare-fun tp!974695 () Bool)

(assert (=> b!3101182 (= e!1937963 tp!974695)))

(declare-fun b!3101181 () Bool)

(declare-fun tp!974694 () Bool)

(declare-fun tp!974696 () Bool)

(assert (=> b!3101181 (= e!1937963 (and tp!974694 tp!974696))))

(assert (=> b!3100564 (= tp!974619 e!1937963)))

(declare-fun b!3101180 () Bool)

(assert (=> b!3101180 (= e!1937963 tp_is_empty!16681)))

(assert (= (and b!3100564 ((_ is ElementMatch!9559) (regTwo!19631 r!17423))) b!3101180))

(assert (= (and b!3100564 ((_ is Concat!14880) (regTwo!19631 r!17423))) b!3101181))

(assert (= (and b!3100564 ((_ is Star!9559) (regTwo!19631 r!17423))) b!3101182))

(assert (= (and b!3100564 ((_ is Union!9559) (regTwo!19631 r!17423))) b!3101183))

(check-sat (not b!3101179) (not bm!218544) (not bm!218545) (not d!861005) (not b!3101115) (not bm!218529) (not b!3101111) (not b!3100858) (not b!3101147) (not b!3101088) (not b!3100854) (not b!3101167) (not bm!218527) (not b!3100829) (not d!861035) (not b!3101171) (not b!3101178) (not bm!218583) (not b!3101162) (not b!3100833) (not b!3101100) (not bm!218547) (not b!3101181) (not b!3100832) (not d!861039) (not bm!218582) (not b!3101183) (not b!3101169) (not bm!218514) (not b!3101175) (not d!861013) (not b!3101170) (not bm!218513) (not b!3101118) (not bm!218581) (not bm!218530) (not b!3101182) tp_is_empty!16681 (not bm!218512) (not b!3101101) (not b!3101173) (not b!3100740) (not b!3101174) (not bm!218543) (not b!3100826) (not b!3101114) (not b!3100836) (not b!3100690) (not bm!218515) (not bm!218542) (not b!3101108) (not b!3101121) (not bm!218546) (not b!3101107) (not bm!218584) (not d!860997) (not b!3101104) (not b!3100694) (not b!3101081) (not d!861009) (not b!3100839) (not b!3100744) (not d!861037) (not bm!218591) (not b!3101094) (not b!3101097) (not b!3101161) (not bm!218516) (not bm!218528) (not bm!218526) (not b!3101177) (not b!3101160) (not bm!218592))
(check-sat)
