; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!82152 () Bool)

(assert start!82152)

(declare-fun b!913726 () Bool)

(assert (=> b!913726 true))

(assert (=> b!913726 true))

(declare-fun lambda!29292 () Int)

(declare-fun lambda!29291 () Int)

(assert (=> b!913726 (not (= lambda!29292 lambda!29291))))

(assert (=> b!913726 true))

(assert (=> b!913726 true))

(declare-fun res!415513 () Bool)

(declare-fun e!595727 () Bool)

(assert (=> start!82152 (=> (not res!415513) (not e!595727))))

(declare-datatypes ((C!5466 0))(
  ( (C!5467 (val!2981 Int)) )
))
(declare-datatypes ((Regex!2448 0))(
  ( (ElementMatch!2448 (c!148013 C!5466)) (Concat!4281 (regOne!5408 Regex!2448) (regTwo!5408 Regex!2448)) (EmptyExpr!2448) (Star!2448 (reg!2777 Regex!2448)) (EmptyLang!2448) (Union!2448 (regOne!5409 Regex!2448) (regTwo!5409 Regex!2448)) )
))
(declare-fun r!15766 () Regex!2448)

(declare-fun validRegex!917 (Regex!2448) Bool)

(assert (=> start!82152 (= res!415513 (validRegex!917 r!15766))))

(assert (=> start!82152 e!595727))

(declare-fun e!595724 () Bool)

(assert (=> start!82152 e!595724))

(declare-fun e!595726 () Bool)

(assert (=> start!82152 e!595726))

(declare-fun b!913724 () Bool)

(declare-fun e!595728 () Bool)

(assert (=> b!913724 (= e!595728 (validRegex!917 (regTwo!5408 r!15766)))))

(declare-fun lt!337180 () Regex!2448)

(declare-fun removeUselessConcat!125 (Regex!2448) Regex!2448)

(assert (=> b!913724 (= lt!337180 (removeUselessConcat!125 (regOne!5408 r!15766)))))

(declare-fun b!913725 () Bool)

(declare-fun tp_is_empty!4539 () Bool)

(assert (=> b!913725 (= e!595724 tp_is_empty!4539)))

(declare-fun e!595725 () Bool)

(assert (=> b!913726 (= e!595725 e!595728)))

(declare-fun res!415511 () Bool)

(assert (=> b!913726 (=> res!415511 e!595728)))

(declare-datatypes ((List!9678 0))(
  ( (Nil!9662) (Cons!9662 (h!15063 C!5466) (t!100724 List!9678)) )
))
(declare-fun s!10566 () List!9678)

(declare-fun isEmpty!5886 (List!9678) Bool)

(assert (=> b!913726 (= res!415511 (isEmpty!5886 s!10566))))

(declare-fun Exists!219 (Int) Bool)

(assert (=> b!913726 (= (Exists!219 lambda!29291) (Exists!219 lambda!29292))))

(declare-datatypes ((Unit!14515 0))(
  ( (Unit!14516) )
))
(declare-fun lt!337181 () Unit!14515)

(declare-fun lemmaExistCutMatchRandMatchRSpecEquivalent!131 (Regex!2448 Regex!2448 List!9678) Unit!14515)

(assert (=> b!913726 (= lt!337181 (lemmaExistCutMatchRandMatchRSpecEquivalent!131 (regOne!5408 r!15766) (regTwo!5408 r!15766) s!10566))))

(declare-datatypes ((tuple2!10882 0))(
  ( (tuple2!10883 (_1!6267 List!9678) (_2!6267 List!9678)) )
))
(declare-datatypes ((Option!2083 0))(
  ( (None!2082) (Some!2082 (v!19499 tuple2!10882)) )
))
(declare-fun isDefined!1725 (Option!2083) Bool)

(declare-fun findConcatSeparation!189 (Regex!2448 Regex!2448 List!9678 List!9678 List!9678) Option!2083)

(assert (=> b!913726 (= (isDefined!1725 (findConcatSeparation!189 (regOne!5408 r!15766) (regTwo!5408 r!15766) Nil!9662 s!10566 s!10566)) (Exists!219 lambda!29291))))

(declare-fun lt!337183 () Unit!14515)

(declare-fun lemmaFindConcatSeparationEquivalentToExists!189 (Regex!2448 Regex!2448 List!9678) Unit!14515)

(assert (=> b!913726 (= lt!337183 (lemmaFindConcatSeparationEquivalentToExists!189 (regOne!5408 r!15766) (regTwo!5408 r!15766) s!10566))))

(declare-fun b!913727 () Bool)

(declare-fun tp!285538 () Bool)

(assert (=> b!913727 (= e!595726 (and tp_is_empty!4539 tp!285538))))

(declare-fun b!913728 () Bool)

(declare-fun tp!285539 () Bool)

(declare-fun tp!285542 () Bool)

(assert (=> b!913728 (= e!595724 (and tp!285539 tp!285542))))

(declare-fun b!913729 () Bool)

(declare-fun tp!285541 () Bool)

(assert (=> b!913729 (= e!595724 tp!285541)))

(declare-fun b!913730 () Bool)

(assert (=> b!913730 (= e!595727 (not e!595725))))

(declare-fun res!415512 () Bool)

(assert (=> b!913730 (=> res!415512 e!595725)))

(declare-fun lt!337182 () Bool)

(assert (=> b!913730 (= res!415512 (or lt!337182 (and (is-Concat!4281 r!15766) (is-EmptyExpr!2448 (regOne!5408 r!15766))) (and (is-Concat!4281 r!15766) (is-EmptyExpr!2448 (regTwo!5408 r!15766))) (not (is-Concat!4281 r!15766))))))

(declare-fun matchRSpec!249 (Regex!2448 List!9678) Bool)

(assert (=> b!913730 (= lt!337182 (matchRSpec!249 r!15766 s!10566))))

(declare-fun matchR!986 (Regex!2448 List!9678) Bool)

(assert (=> b!913730 (= lt!337182 (matchR!986 r!15766 s!10566))))

(declare-fun lt!337184 () Unit!14515)

(declare-fun mainMatchTheorem!249 (Regex!2448 List!9678) Unit!14515)

(assert (=> b!913730 (= lt!337184 (mainMatchTheorem!249 r!15766 s!10566))))

(declare-fun b!913731 () Bool)

(declare-fun tp!285537 () Bool)

(declare-fun tp!285540 () Bool)

(assert (=> b!913731 (= e!595724 (and tp!285537 tp!285540))))

(assert (= (and start!82152 res!415513) b!913730))

(assert (= (and b!913730 (not res!415512)) b!913726))

(assert (= (and b!913726 (not res!415511)) b!913724))

(assert (= (and start!82152 (is-ElementMatch!2448 r!15766)) b!913725))

(assert (= (and start!82152 (is-Concat!4281 r!15766)) b!913731))

(assert (= (and start!82152 (is-Star!2448 r!15766)) b!913729))

(assert (= (and start!82152 (is-Union!2448 r!15766)) b!913728))

(assert (= (and start!82152 (is-Cons!9662 s!10566)) b!913727))

(declare-fun m!1144501 () Bool)

(assert (=> start!82152 m!1144501))

(declare-fun m!1144503 () Bool)

(assert (=> b!913724 m!1144503))

(declare-fun m!1144505 () Bool)

(assert (=> b!913724 m!1144505))

(declare-fun m!1144507 () Bool)

(assert (=> b!913726 m!1144507))

(declare-fun m!1144509 () Bool)

(assert (=> b!913726 m!1144509))

(declare-fun m!1144511 () Bool)

(assert (=> b!913726 m!1144511))

(declare-fun m!1144513 () Bool)

(assert (=> b!913726 m!1144513))

(declare-fun m!1144515 () Bool)

(assert (=> b!913726 m!1144515))

(declare-fun m!1144517 () Bool)

(assert (=> b!913726 m!1144517))

(assert (=> b!913726 m!1144507))

(declare-fun m!1144519 () Bool)

(assert (=> b!913726 m!1144519))

(assert (=> b!913726 m!1144509))

(declare-fun m!1144521 () Bool)

(assert (=> b!913730 m!1144521))

(declare-fun m!1144523 () Bool)

(assert (=> b!913730 m!1144523))

(declare-fun m!1144525 () Bool)

(assert (=> b!913730 m!1144525))

(push 1)

(assert (not b!913724))

(assert (not b!913729))

(assert tp_is_empty!4539)

(assert (not b!913728))

(assert (not b!913727))

(assert (not b!913730))

(assert (not b!913731))

(assert (not b!913726))

(assert (not start!82152))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!279568 () Bool)

(declare-fun res!415546 () Bool)

(declare-fun e!595768 () Bool)

(assert (=> d!279568 (=> res!415546 e!595768)))

(assert (=> d!279568 (= res!415546 (is-ElementMatch!2448 (regTwo!5408 r!15766)))))

(assert (=> d!279568 (= (validRegex!917 (regTwo!5408 r!15766)) e!595768)))

(declare-fun b!913794 () Bool)

(declare-fun res!415547 () Bool)

(declare-fun e!595764 () Bool)

(assert (=> b!913794 (=> (not res!415547) (not e!595764))))

(declare-fun call!55046 () Bool)

(assert (=> b!913794 (= res!415547 call!55046)))

(declare-fun e!595770 () Bool)

(assert (=> b!913794 (= e!595770 e!595764)))

(declare-fun b!913795 () Bool)

(declare-fun call!55048 () Bool)

(assert (=> b!913795 (= e!595764 call!55048)))

(declare-fun b!913796 () Bool)

(declare-fun e!595765 () Bool)

(assert (=> b!913796 (= e!595765 call!55048)))

(declare-fun b!913797 () Bool)

(declare-fun res!415549 () Bool)

(declare-fun e!595769 () Bool)

(assert (=> b!913797 (=> res!415549 e!595769)))

(assert (=> b!913797 (= res!415549 (not (is-Concat!4281 (regTwo!5408 r!15766))))))

(assert (=> b!913797 (= e!595770 e!595769)))

(declare-fun bm!55041 () Bool)

(declare-fun call!55047 () Bool)

(assert (=> bm!55041 (= call!55046 call!55047)))

(declare-fun bm!55042 () Bool)

(declare-fun c!148020 () Bool)

(assert (=> bm!55042 (= call!55048 (validRegex!917 (ite c!148020 (regTwo!5409 (regTwo!5408 r!15766)) (regTwo!5408 (regTwo!5408 r!15766)))))))

(declare-fun bm!55043 () Bool)

(declare-fun c!148019 () Bool)

(assert (=> bm!55043 (= call!55047 (validRegex!917 (ite c!148019 (reg!2777 (regTwo!5408 r!15766)) (ite c!148020 (regOne!5409 (regTwo!5408 r!15766)) (regOne!5408 (regTwo!5408 r!15766))))))))

(declare-fun b!913798 () Bool)

(declare-fun e!595767 () Bool)

(assert (=> b!913798 (= e!595767 call!55047)))

(declare-fun b!913799 () Bool)

(declare-fun e!595766 () Bool)

(assert (=> b!913799 (= e!595766 e!595770)))

(assert (=> b!913799 (= c!148020 (is-Union!2448 (regTwo!5408 r!15766)))))

(declare-fun b!913800 () Bool)

(assert (=> b!913800 (= e!595766 e!595767)))

(declare-fun res!415545 () Bool)

(declare-fun nullable!666 (Regex!2448) Bool)

(assert (=> b!913800 (= res!415545 (not (nullable!666 (reg!2777 (regTwo!5408 r!15766)))))))

(assert (=> b!913800 (=> (not res!415545) (not e!595767))))

(declare-fun b!913801 () Bool)

(assert (=> b!913801 (= e!595768 e!595766)))

(assert (=> b!913801 (= c!148019 (is-Star!2448 (regTwo!5408 r!15766)))))

(declare-fun b!913802 () Bool)

(assert (=> b!913802 (= e!595769 e!595765)))

(declare-fun res!415548 () Bool)

(assert (=> b!913802 (=> (not res!415548) (not e!595765))))

(assert (=> b!913802 (= res!415548 call!55046)))

(assert (= (and d!279568 (not res!415546)) b!913801))

(assert (= (and b!913801 c!148019) b!913800))

(assert (= (and b!913801 (not c!148019)) b!913799))

(assert (= (and b!913800 res!415545) b!913798))

(assert (= (and b!913799 c!148020) b!913794))

(assert (= (and b!913799 (not c!148020)) b!913797))

(assert (= (and b!913794 res!415547) b!913795))

(assert (= (and b!913797 (not res!415549)) b!913802))

(assert (= (and b!913802 res!415548) b!913796))

(assert (= (or b!913795 b!913796) bm!55042))

(assert (= (or b!913794 b!913802) bm!55041))

(assert (= (or b!913798 bm!55041) bm!55043))

(declare-fun m!1144553 () Bool)

(assert (=> bm!55042 m!1144553))

(declare-fun m!1144555 () Bool)

(assert (=> bm!55043 m!1144555))

(declare-fun m!1144557 () Bool)

(assert (=> b!913800 m!1144557))

(assert (=> b!913724 d!279568))

(declare-fun b!913843 () Bool)

(declare-fun e!595801 () Regex!2448)

(assert (=> b!913843 (= e!595801 (regOne!5408 r!15766))))

(declare-fun b!913844 () Bool)

(declare-fun e!595798 () Regex!2448)

(declare-fun call!55060 () Regex!2448)

(assert (=> b!913844 (= e!595798 call!55060)))

(declare-fun bm!55054 () Bool)

(declare-fun call!55059 () Regex!2448)

(assert (=> bm!55054 (= call!55059 call!55060)))

(declare-fun b!913846 () Bool)

(declare-fun e!595797 () Regex!2448)

(declare-fun call!55061 () Regex!2448)

(assert (=> b!913846 (= e!595797 (Union!2448 call!55059 call!55061))))

(declare-fun b!913847 () Bool)

(declare-fun e!595799 () Regex!2448)

(declare-fun call!55062 () Regex!2448)

(assert (=> b!913847 (= e!595799 (Concat!4281 call!55059 call!55062))))

(declare-fun bm!55055 () Bool)

(assert (=> bm!55055 (= call!55061 call!55062)))

(declare-fun b!913848 () Bool)

(assert (=> b!913848 (= e!595801 (Star!2448 call!55061))))

(declare-fun b!913849 () Bool)

(declare-fun e!595800 () Bool)

(declare-fun lt!337202 () Regex!2448)

(assert (=> b!913849 (= e!595800 (= (nullable!666 lt!337202) (nullable!666 (regOne!5408 r!15766))))))

(declare-fun bm!55056 () Bool)

(declare-fun call!55063 () Regex!2448)

(assert (=> bm!55056 (= call!55060 call!55063)))

(declare-fun b!913850 () Bool)

(declare-fun e!595802 () Regex!2448)

(assert (=> b!913850 (= e!595802 call!55063)))

(declare-fun c!148035 () Bool)

(declare-fun c!148038 () Bool)

(declare-fun c!148036 () Bool)

(declare-fun bm!55057 () Bool)

(assert (=> bm!55057 (= call!55063 (removeUselessConcat!125 (ite c!148035 (regTwo!5408 (regOne!5408 r!15766)) (ite (or c!148038 c!148036) (regOne!5408 (regOne!5408 r!15766)) (regOne!5409 (regOne!5408 r!15766))))))))

(declare-fun b!913851 () Bool)

(assert (=> b!913851 (= e!595802 e!595798)))

(assert (=> b!913851 (= c!148038 (and (is-Concat!4281 (regOne!5408 r!15766)) (is-EmptyExpr!2448 (regTwo!5408 (regOne!5408 r!15766)))))))

(declare-fun c!148037 () Bool)

(declare-fun bm!55058 () Bool)

(assert (=> bm!55058 (= call!55062 (removeUselessConcat!125 (ite c!148036 (regTwo!5408 (regOne!5408 r!15766)) (ite c!148037 (regTwo!5409 (regOne!5408 r!15766)) (reg!2777 (regOne!5408 r!15766))))))))

(declare-fun b!913852 () Bool)

(assert (=> b!913852 (= c!148036 (is-Concat!4281 (regOne!5408 r!15766)))))

(assert (=> b!913852 (= e!595798 e!595799)))

(declare-fun b!913853 () Bool)

(declare-fun c!148039 () Bool)

(assert (=> b!913853 (= c!148039 (is-Star!2448 (regOne!5408 r!15766)))))

(assert (=> b!913853 (= e!595797 e!595801)))

(declare-fun d!279570 () Bool)

(assert (=> d!279570 e!595800))

(declare-fun res!415562 () Bool)

(assert (=> d!279570 (=> (not res!415562) (not e!595800))))

(assert (=> d!279570 (= res!415562 (validRegex!917 lt!337202))))

(assert (=> d!279570 (= lt!337202 e!595802)))

(assert (=> d!279570 (= c!148035 (and (is-Concat!4281 (regOne!5408 r!15766)) (is-EmptyExpr!2448 (regOne!5408 (regOne!5408 r!15766)))))))

(assert (=> d!279570 (validRegex!917 (regOne!5408 r!15766))))

(assert (=> d!279570 (= (removeUselessConcat!125 (regOne!5408 r!15766)) lt!337202)))

(declare-fun b!913845 () Bool)

(assert (=> b!913845 (= e!595799 e!595797)))

(assert (=> b!913845 (= c!148037 (is-Union!2448 (regOne!5408 r!15766)))))

(assert (= (and d!279570 c!148035) b!913850))

(assert (= (and d!279570 (not c!148035)) b!913851))

(assert (= (and b!913851 c!148038) b!913844))

(assert (= (and b!913851 (not c!148038)) b!913852))

(assert (= (and b!913852 c!148036) b!913847))

(assert (= (and b!913852 (not c!148036)) b!913845))

(assert (= (and b!913845 c!148037) b!913846))

(assert (= (and b!913845 (not c!148037)) b!913853))

(assert (= (and b!913853 c!148039) b!913848))

(assert (= (and b!913853 (not c!148039)) b!913843))

(assert (= (or b!913846 b!913848) bm!55055))

(assert (= (or b!913847 bm!55055) bm!55058))

(assert (= (or b!913847 b!913846) bm!55054))

(assert (= (or b!913844 bm!55054) bm!55056))

(assert (= (or b!913850 bm!55056) bm!55057))

(assert (= (and d!279570 res!415562) b!913849))

(declare-fun m!1144559 () Bool)

(assert (=> b!913849 m!1144559))

(declare-fun m!1144561 () Bool)

(assert (=> b!913849 m!1144561))

(declare-fun m!1144563 () Bool)

(assert (=> bm!55057 m!1144563))

(declare-fun m!1144565 () Bool)

(assert (=> bm!55058 m!1144565))

(declare-fun m!1144567 () Bool)

(assert (=> d!279570 m!1144567))

(declare-fun m!1144569 () Bool)

(assert (=> d!279570 m!1144569))

(assert (=> b!913724 d!279570))

(declare-fun d!279574 () Bool)

(declare-fun res!415564 () Bool)

(declare-fun e!595807 () Bool)

(assert (=> d!279574 (=> res!415564 e!595807)))

(assert (=> d!279574 (= res!415564 (is-ElementMatch!2448 r!15766))))

(assert (=> d!279574 (= (validRegex!917 r!15766) e!595807)))

(declare-fun b!913854 () Bool)

(declare-fun res!415565 () Bool)

(declare-fun e!595803 () Bool)

(assert (=> b!913854 (=> (not res!415565) (not e!595803))))

(declare-fun call!55068 () Bool)

(assert (=> b!913854 (= res!415565 call!55068)))

(declare-fun e!595809 () Bool)

(assert (=> b!913854 (= e!595809 e!595803)))

(declare-fun b!913855 () Bool)

(declare-fun call!55070 () Bool)

(assert (=> b!913855 (= e!595803 call!55070)))

(declare-fun b!913856 () Bool)

(declare-fun e!595804 () Bool)

(assert (=> b!913856 (= e!595804 call!55070)))

(declare-fun b!913857 () Bool)

(declare-fun res!415567 () Bool)

(declare-fun e!595808 () Bool)

(assert (=> b!913857 (=> res!415567 e!595808)))

(assert (=> b!913857 (= res!415567 (not (is-Concat!4281 r!15766)))))

(assert (=> b!913857 (= e!595809 e!595808)))

(declare-fun bm!55061 () Bool)

(declare-fun call!55069 () Bool)

(assert (=> bm!55061 (= call!55068 call!55069)))

(declare-fun bm!55062 () Bool)

(declare-fun c!148041 () Bool)

(assert (=> bm!55062 (= call!55070 (validRegex!917 (ite c!148041 (regTwo!5409 r!15766) (regTwo!5408 r!15766))))))

(declare-fun bm!55063 () Bool)

(declare-fun c!148040 () Bool)

(assert (=> bm!55063 (= call!55069 (validRegex!917 (ite c!148040 (reg!2777 r!15766) (ite c!148041 (regOne!5409 r!15766) (regOne!5408 r!15766)))))))

(declare-fun b!913858 () Bool)

(declare-fun e!595806 () Bool)

(assert (=> b!913858 (= e!595806 call!55069)))

(declare-fun b!913859 () Bool)

(declare-fun e!595805 () Bool)

(assert (=> b!913859 (= e!595805 e!595809)))

(assert (=> b!913859 (= c!148041 (is-Union!2448 r!15766))))

(declare-fun b!913860 () Bool)

(assert (=> b!913860 (= e!595805 e!595806)))

(declare-fun res!415563 () Bool)

(assert (=> b!913860 (= res!415563 (not (nullable!666 (reg!2777 r!15766))))))

(assert (=> b!913860 (=> (not res!415563) (not e!595806))))

(declare-fun b!913861 () Bool)

(assert (=> b!913861 (= e!595807 e!595805)))

(assert (=> b!913861 (= c!148040 (is-Star!2448 r!15766))))

(declare-fun b!913862 () Bool)

(assert (=> b!913862 (= e!595808 e!595804)))

(declare-fun res!415566 () Bool)

(assert (=> b!913862 (=> (not res!415566) (not e!595804))))

(assert (=> b!913862 (= res!415566 call!55068)))

(assert (= (and d!279574 (not res!415564)) b!913861))

(assert (= (and b!913861 c!148040) b!913860))

(assert (= (and b!913861 (not c!148040)) b!913859))

(assert (= (and b!913860 res!415563) b!913858))

(assert (= (and b!913859 c!148041) b!913854))

(assert (= (and b!913859 (not c!148041)) b!913857))

(assert (= (and b!913854 res!415565) b!913855))

(assert (= (and b!913857 (not res!415567)) b!913862))

(assert (= (and b!913862 res!415566) b!913856))

(assert (= (or b!913855 b!913856) bm!55062))

(assert (= (or b!913854 b!913862) bm!55061))

(assert (= (or b!913858 bm!55061) bm!55063))

(declare-fun m!1144571 () Bool)

(assert (=> bm!55062 m!1144571))

(declare-fun m!1144573 () Bool)

(assert (=> bm!55063 m!1144573))

(declare-fun m!1144575 () Bool)

(assert (=> b!913860 m!1144575))

(assert (=> start!82152 d!279574))

(declare-fun d!279576 () Bool)

(assert (=> d!279576 (= (isEmpty!5886 s!10566) (is-Nil!9662 s!10566))))

(assert (=> b!913726 d!279576))

(declare-fun d!279578 () Bool)

(declare-fun isEmpty!5888 (Option!2083) Bool)

(assert (=> d!279578 (= (isDefined!1725 (findConcatSeparation!189 (regOne!5408 r!15766) (regTwo!5408 r!15766) Nil!9662 s!10566 s!10566)) (not (isEmpty!5888 (findConcatSeparation!189 (regOne!5408 r!15766) (regTwo!5408 r!15766) Nil!9662 s!10566 s!10566))))))

(declare-fun bs!235924 () Bool)

(assert (= bs!235924 d!279578))

(assert (=> bs!235924 m!1144509))

(declare-fun m!1144577 () Bool)

(assert (=> bs!235924 m!1144577))

(assert (=> b!913726 d!279578))

(declare-fun d!279580 () Bool)

(declare-fun choose!5564 (Int) Bool)

(assert (=> d!279580 (= (Exists!219 lambda!29291) (choose!5564 lambda!29291))))

(declare-fun bs!235925 () Bool)

(assert (= bs!235925 d!279580))

(declare-fun m!1144579 () Bool)

(assert (=> bs!235925 m!1144579))

(assert (=> b!913726 d!279580))

(declare-fun bs!235926 () Bool)

(declare-fun d!279582 () Bool)

(assert (= bs!235926 (and d!279582 b!913726)))

(declare-fun lambda!29303 () Int)

(assert (=> bs!235926 (= lambda!29303 lambda!29291)))

(assert (=> bs!235926 (not (= lambda!29303 lambda!29292))))

(assert (=> d!279582 true))

(assert (=> d!279582 true))

(assert (=> d!279582 true))

(assert (=> d!279582 (= (isDefined!1725 (findConcatSeparation!189 (regOne!5408 r!15766) (regTwo!5408 r!15766) Nil!9662 s!10566 s!10566)) (Exists!219 lambda!29303))))

(declare-fun lt!337205 () Unit!14515)

(declare-fun choose!5565 (Regex!2448 Regex!2448 List!9678) Unit!14515)

(assert (=> d!279582 (= lt!337205 (choose!5565 (regOne!5408 r!15766) (regTwo!5408 r!15766) s!10566))))

(assert (=> d!279582 (validRegex!917 (regOne!5408 r!15766))))

(assert (=> d!279582 (= (lemmaFindConcatSeparationEquivalentToExists!189 (regOne!5408 r!15766) (regTwo!5408 r!15766) s!10566) lt!337205)))

(declare-fun bs!235927 () Bool)

(assert (= bs!235927 d!279582))

(assert (=> bs!235927 m!1144509))

(assert (=> bs!235927 m!1144511))

(declare-fun m!1144587 () Bool)

(assert (=> bs!235927 m!1144587))

(declare-fun m!1144589 () Bool)

(assert (=> bs!235927 m!1144589))

(assert (=> bs!235927 m!1144569))

(assert (=> bs!235927 m!1144509))

(assert (=> b!913726 d!279582))

(declare-fun d!279586 () Bool)

(declare-fun e!595843 () Bool)

(assert (=> d!279586 e!595843))

(declare-fun res!415594 () Bool)

(assert (=> d!279586 (=> res!415594 e!595843)))

(declare-fun e!595845 () Bool)

(assert (=> d!279586 (= res!415594 e!595845)))

(declare-fun res!415597 () Bool)

(assert (=> d!279586 (=> (not res!415597) (not e!595845))))

(declare-fun lt!337212 () Option!2083)

(assert (=> d!279586 (= res!415597 (isDefined!1725 lt!337212))))

(declare-fun e!595847 () Option!2083)

(assert (=> d!279586 (= lt!337212 e!595847)))

(declare-fun c!148056 () Bool)

(declare-fun e!595846 () Bool)

(assert (=> d!279586 (= c!148056 e!595846)))

(declare-fun res!415593 () Bool)

(assert (=> d!279586 (=> (not res!415593) (not e!595846))))

(assert (=> d!279586 (= res!415593 (matchR!986 (regOne!5408 r!15766) Nil!9662))))

(assert (=> d!279586 (validRegex!917 (regOne!5408 r!15766))))

(assert (=> d!279586 (= (findConcatSeparation!189 (regOne!5408 r!15766) (regTwo!5408 r!15766) Nil!9662 s!10566 s!10566) lt!337212)))

(declare-fun b!913916 () Bool)

(declare-fun ++!2545 (List!9678 List!9678) List!9678)

(declare-fun get!3125 (Option!2083) tuple2!10882)

(assert (=> b!913916 (= e!595845 (= (++!2545 (_1!6267 (get!3125 lt!337212)) (_2!6267 (get!3125 lt!337212))) s!10566))))

(declare-fun b!913917 () Bool)

(declare-fun e!595844 () Option!2083)

(assert (=> b!913917 (= e!595847 e!595844)))

(declare-fun c!148057 () Bool)

(assert (=> b!913917 (= c!148057 (is-Nil!9662 s!10566))))

(declare-fun b!913918 () Bool)

(assert (=> b!913918 (= e!595844 None!2082)))

(declare-fun b!913919 () Bool)

(declare-fun res!415595 () Bool)

(assert (=> b!913919 (=> (not res!415595) (not e!595845))))

(assert (=> b!913919 (= res!415595 (matchR!986 (regTwo!5408 r!15766) (_2!6267 (get!3125 lt!337212))))))

(declare-fun b!913920 () Bool)

(assert (=> b!913920 (= e!595847 (Some!2082 (tuple2!10883 Nil!9662 s!10566)))))

(declare-fun b!913921 () Bool)

(assert (=> b!913921 (= e!595843 (not (isDefined!1725 lt!337212)))))

(declare-fun b!913922 () Bool)

(declare-fun lt!337214 () Unit!14515)

(declare-fun lt!337213 () Unit!14515)

(assert (=> b!913922 (= lt!337214 lt!337213)))

(assert (=> b!913922 (= (++!2545 (++!2545 Nil!9662 (Cons!9662 (h!15063 s!10566) Nil!9662)) (t!100724 s!10566)) s!10566)))

(declare-fun lemmaMoveElementToOtherListKeepsConcatEq!160 (List!9678 C!5466 List!9678 List!9678) Unit!14515)

(assert (=> b!913922 (= lt!337213 (lemmaMoveElementToOtherListKeepsConcatEq!160 Nil!9662 (h!15063 s!10566) (t!100724 s!10566) s!10566))))

(assert (=> b!913922 (= e!595844 (findConcatSeparation!189 (regOne!5408 r!15766) (regTwo!5408 r!15766) (++!2545 Nil!9662 (Cons!9662 (h!15063 s!10566) Nil!9662)) (t!100724 s!10566) s!10566))))

(declare-fun b!913923 () Bool)

(declare-fun res!415596 () Bool)

(assert (=> b!913923 (=> (not res!415596) (not e!595845))))

(assert (=> b!913923 (= res!415596 (matchR!986 (regOne!5408 r!15766) (_1!6267 (get!3125 lt!337212))))))

(declare-fun b!913924 () Bool)

(assert (=> b!913924 (= e!595846 (matchR!986 (regTwo!5408 r!15766) s!10566))))

(assert (= (and d!279586 res!415593) b!913924))

(assert (= (and d!279586 c!148056) b!913920))

(assert (= (and d!279586 (not c!148056)) b!913917))

(assert (= (and b!913917 c!148057) b!913918))

(assert (= (and b!913917 (not c!148057)) b!913922))

(assert (= (and d!279586 res!415597) b!913923))

(assert (= (and b!913923 res!415596) b!913919))

(assert (= (and b!913919 res!415595) b!913916))

(assert (= (and d!279586 (not res!415594)) b!913921))

(declare-fun m!1144591 () Bool)

(assert (=> b!913916 m!1144591))

(declare-fun m!1144593 () Bool)

(assert (=> b!913916 m!1144593))

(declare-fun m!1144595 () Bool)

(assert (=> b!913922 m!1144595))

(assert (=> b!913922 m!1144595))

(declare-fun m!1144597 () Bool)

(assert (=> b!913922 m!1144597))

(declare-fun m!1144599 () Bool)

(assert (=> b!913922 m!1144599))

(assert (=> b!913922 m!1144595))

(declare-fun m!1144601 () Bool)

(assert (=> b!913922 m!1144601))

(assert (=> b!913923 m!1144591))

(declare-fun m!1144603 () Bool)

(assert (=> b!913923 m!1144603))

(declare-fun m!1144605 () Bool)

(assert (=> d!279586 m!1144605))

(declare-fun m!1144607 () Bool)

(assert (=> d!279586 m!1144607))

(assert (=> d!279586 m!1144569))

(declare-fun m!1144609 () Bool)

(assert (=> b!913924 m!1144609))

(assert (=> b!913921 m!1144605))

(assert (=> b!913919 m!1144591))

(declare-fun m!1144611 () Bool)

(assert (=> b!913919 m!1144611))

(assert (=> b!913726 d!279586))

(declare-fun bs!235928 () Bool)

(declare-fun d!279588 () Bool)

(assert (= bs!235928 (and d!279588 b!913726)))

(declare-fun lambda!29312 () Int)

(assert (=> bs!235928 (= lambda!29312 lambda!29291)))

(assert (=> bs!235928 (not (= lambda!29312 lambda!29292))))

(declare-fun bs!235929 () Bool)

(assert (= bs!235929 (and d!279588 d!279582)))

(assert (=> bs!235929 (= lambda!29312 lambda!29303)))

(assert (=> d!279588 true))

(assert (=> d!279588 true))

(assert (=> d!279588 true))

(declare-fun lambda!29313 () Int)

(assert (=> bs!235928 (not (= lambda!29313 lambda!29291))))

(assert (=> bs!235928 (= lambda!29313 lambda!29292)))

(assert (=> bs!235929 (not (= lambda!29313 lambda!29303))))

(declare-fun bs!235930 () Bool)

(assert (= bs!235930 d!279588))

(assert (=> bs!235930 (not (= lambda!29313 lambda!29312))))

(assert (=> d!279588 true))

(assert (=> d!279588 true))

(assert (=> d!279588 true))

(assert (=> d!279588 (= (Exists!219 lambda!29312) (Exists!219 lambda!29313))))

(declare-fun lt!337217 () Unit!14515)

(declare-fun choose!5566 (Regex!2448 Regex!2448 List!9678) Unit!14515)

(assert (=> d!279588 (= lt!337217 (choose!5566 (regOne!5408 r!15766) (regTwo!5408 r!15766) s!10566))))

(assert (=> d!279588 (validRegex!917 (regOne!5408 r!15766))))

(assert (=> d!279588 (= (lemmaExistCutMatchRandMatchRSpecEquivalent!131 (regOne!5408 r!15766) (regTwo!5408 r!15766) s!10566) lt!337217)))

(declare-fun m!1144613 () Bool)

(assert (=> bs!235930 m!1144613))

(declare-fun m!1144615 () Bool)

(assert (=> bs!235930 m!1144615))

(declare-fun m!1144617 () Bool)

(assert (=> bs!235930 m!1144617))

(assert (=> bs!235930 m!1144569))

(assert (=> b!913726 d!279588))

(declare-fun d!279590 () Bool)

(assert (=> d!279590 (= (Exists!219 lambda!29292) (choose!5564 lambda!29292))))

(declare-fun bs!235931 () Bool)

(assert (= bs!235931 d!279590))

(declare-fun m!1144619 () Bool)

(assert (=> bs!235931 m!1144619))

(assert (=> b!913726 d!279590))

(declare-fun bs!235935 () Bool)

(declare-fun b!913994 () Bool)

(assert (= bs!235935 (and b!913994 b!913726)))

(declare-fun lambda!29320 () Int)

(assert (=> bs!235935 (not (= lambda!29320 lambda!29291))))

(declare-fun bs!235936 () Bool)

(assert (= bs!235936 (and b!913994 d!279582)))

(assert (=> bs!235936 (not (= lambda!29320 lambda!29303))))

(declare-fun bs!235937 () Bool)

(assert (= bs!235937 (and b!913994 d!279588)))

(assert (=> bs!235937 (not (= lambda!29320 lambda!29313))))

(assert (=> bs!235935 (not (= lambda!29320 lambda!29292))))

(assert (=> bs!235937 (not (= lambda!29320 lambda!29312))))

(assert (=> b!913994 true))

(assert (=> b!913994 true))

(declare-fun bs!235938 () Bool)

(declare-fun b!913987 () Bool)

(assert (= bs!235938 (and b!913987 b!913726)))

(declare-fun lambda!29321 () Int)

(assert (=> bs!235938 (not (= lambda!29321 lambda!29291))))

(declare-fun bs!235939 () Bool)

(assert (= bs!235939 (and b!913987 d!279582)))

(assert (=> bs!235939 (not (= lambda!29321 lambda!29303))))

(declare-fun bs!235940 () Bool)

(assert (= bs!235940 (and b!913987 b!913994)))

(assert (=> bs!235940 (not (= lambda!29321 lambda!29320))))

(declare-fun bs!235941 () Bool)

(assert (= bs!235941 (and b!913987 d!279588)))

(assert (=> bs!235941 (= lambda!29321 lambda!29313)))

(assert (=> bs!235938 (= lambda!29321 lambda!29292)))

(assert (=> bs!235941 (not (= lambda!29321 lambda!29312))))

(assert (=> b!913987 true))

(assert (=> b!913987 true))

(declare-fun b!913986 () Bool)

(declare-fun res!415635 () Bool)

(declare-fun e!595885 () Bool)

(assert (=> b!913986 (=> res!415635 e!595885)))

(declare-fun call!55086 () Bool)

(assert (=> b!913986 (= res!415635 call!55086)))

(declare-fun e!595883 () Bool)

(assert (=> b!913986 (= e!595883 e!595885)))

(declare-fun call!55087 () Bool)

(assert (=> b!913987 (= e!595883 call!55087)))

(declare-fun b!913988 () Bool)

(declare-fun e!595882 () Bool)

(declare-fun e!595886 () Bool)

(assert (=> b!913988 (= e!595882 e!595886)))

(declare-fun res!415637 () Bool)

(assert (=> b!913988 (= res!415637 (matchRSpec!249 (regOne!5409 r!15766) s!10566))))

(assert (=> b!913988 (=> res!415637 e!595886)))

(declare-fun b!913989 () Bool)

(declare-fun e!595884 () Bool)

(assert (=> b!913989 (= e!595884 (= s!10566 (Cons!9662 (c!148013 r!15766) Nil!9662)))))

(declare-fun b!913990 () Bool)

(assert (=> b!913990 (= e!595882 e!595883)))

(declare-fun c!148070 () Bool)

(assert (=> b!913990 (= c!148070 (is-Star!2448 r!15766))))

(declare-fun bm!55081 () Bool)

(assert (=> bm!55081 (= call!55087 (Exists!219 (ite c!148070 lambda!29320 lambda!29321)))))

(declare-fun b!913991 () Bool)

(declare-fun e!595887 () Bool)

(assert (=> b!913991 (= e!595887 call!55086)))

(declare-fun b!913992 () Bool)

(declare-fun c!148072 () Bool)

(assert (=> b!913992 (= c!148072 (is-ElementMatch!2448 r!15766))))

(declare-fun e!595881 () Bool)

(assert (=> b!913992 (= e!595881 e!595884)))

(declare-fun b!913993 () Bool)

(assert (=> b!913993 (= e!595886 (matchRSpec!249 (regTwo!5409 r!15766) s!10566))))

(declare-fun bm!55082 () Bool)

(assert (=> bm!55082 (= call!55086 (isEmpty!5886 s!10566))))

(declare-fun b!913995 () Bool)

(declare-fun c!148073 () Bool)

(assert (=> b!913995 (= c!148073 (is-Union!2448 r!15766))))

(assert (=> b!913995 (= e!595884 e!595882)))

(declare-fun b!913996 () Bool)

(assert (=> b!913996 (= e!595887 e!595881)))

(declare-fun res!415636 () Bool)

(assert (=> b!913996 (= res!415636 (not (is-EmptyLang!2448 r!15766)))))

(assert (=> b!913996 (=> (not res!415636) (not e!595881))))

(assert (=> b!913994 (= e!595885 call!55087)))

(declare-fun d!279592 () Bool)

(declare-fun c!148071 () Bool)

(assert (=> d!279592 (= c!148071 (is-EmptyExpr!2448 r!15766))))

(assert (=> d!279592 (= (matchRSpec!249 r!15766 s!10566) e!595887)))

(assert (= (and d!279592 c!148071) b!913991))

(assert (= (and d!279592 (not c!148071)) b!913996))

(assert (= (and b!913996 res!415636) b!913992))

(assert (= (and b!913992 c!148072) b!913989))

(assert (= (and b!913992 (not c!148072)) b!913995))

(assert (= (and b!913995 c!148073) b!913988))

(assert (= (and b!913995 (not c!148073)) b!913990))

(assert (= (and b!913988 (not res!415637)) b!913993))

(assert (= (and b!913990 c!148070) b!913986))

(assert (= (and b!913990 (not c!148070)) b!913987))

(assert (= (and b!913986 (not res!415635)) b!913994))

(assert (= (or b!913994 b!913987) bm!55081))

(assert (= (or b!913991 b!913986) bm!55082))

(declare-fun m!1144627 () Bool)

(assert (=> b!913988 m!1144627))

(declare-fun m!1144629 () Bool)

(assert (=> bm!55081 m!1144629))

(declare-fun m!1144631 () Bool)

(assert (=> b!913993 m!1144631))

(assert (=> bm!55082 m!1144515))

(assert (=> b!913730 d!279592))

(declare-fun b!914025 () Bool)

(declare-fun res!415655 () Bool)

(declare-fun e!595905 () Bool)

(assert (=> b!914025 (=> res!415655 e!595905)))

(declare-fun e!595908 () Bool)

(assert (=> b!914025 (= res!415655 e!595908)))

(declare-fun res!415659 () Bool)

(assert (=> b!914025 (=> (not res!415659) (not e!595908))))

(declare-fun lt!337220 () Bool)

(assert (=> b!914025 (= res!415659 lt!337220)))

(declare-fun b!914026 () Bool)

(declare-fun e!595906 () Bool)

(declare-fun e!595904 () Bool)

(assert (=> b!914026 (= e!595906 e!595904)))

(declare-fun c!148081 () Bool)

(assert (=> b!914026 (= c!148081 (is-EmptyLang!2448 r!15766))))

(declare-fun b!914027 () Bool)

(declare-fun res!415660 () Bool)

(assert (=> b!914027 (=> (not res!415660) (not e!595908))))

(declare-fun call!55090 () Bool)

(assert (=> b!914027 (= res!415660 (not call!55090))))

(declare-fun b!914028 () Bool)

(declare-fun e!595902 () Bool)

(declare-fun e!595907 () Bool)

(assert (=> b!914028 (= e!595902 e!595907)))

(declare-fun res!415656 () Bool)

(assert (=> b!914028 (=> res!415656 e!595907)))

(assert (=> b!914028 (= res!415656 call!55090)))

(declare-fun b!914029 () Bool)

(declare-fun e!595903 () Bool)

(assert (=> b!914029 (= e!595903 (nullable!666 r!15766))))

(declare-fun b!914030 () Bool)

(declare-fun res!415657 () Bool)

(assert (=> b!914030 (=> res!415657 e!595907)))

(declare-fun tail!1191 (List!9678) List!9678)

(assert (=> b!914030 (= res!415657 (not (isEmpty!5886 (tail!1191 s!10566))))))

(declare-fun b!914031 () Bool)

(assert (=> b!914031 (= e!595906 (= lt!337220 call!55090))))

(declare-fun d!279596 () Bool)

(assert (=> d!279596 e!595906))

(declare-fun c!148080 () Bool)

(assert (=> d!279596 (= c!148080 (is-EmptyExpr!2448 r!15766))))

(assert (=> d!279596 (= lt!337220 e!595903)))

(declare-fun c!148082 () Bool)

(assert (=> d!279596 (= c!148082 (isEmpty!5886 s!10566))))

(assert (=> d!279596 (validRegex!917 r!15766)))

(assert (=> d!279596 (= (matchR!986 r!15766 s!10566) lt!337220)))

(declare-fun b!914032 () Bool)

(assert (=> b!914032 (= e!595905 e!595902)))

(declare-fun res!415658 () Bool)

(assert (=> b!914032 (=> (not res!415658) (not e!595902))))

(assert (=> b!914032 (= res!415658 (not lt!337220))))

(declare-fun bm!55085 () Bool)

(assert (=> bm!55085 (= call!55090 (isEmpty!5886 s!10566))))

(declare-fun b!914033 () Bool)

(declare-fun res!415654 () Bool)

(assert (=> b!914033 (=> (not res!415654) (not e!595908))))

(assert (=> b!914033 (= res!415654 (isEmpty!5886 (tail!1191 s!10566)))))

(declare-fun b!914034 () Bool)

(declare-fun head!1629 (List!9678) C!5466)

(assert (=> b!914034 (= e!595908 (= (head!1629 s!10566) (c!148013 r!15766)))))

(declare-fun b!914035 () Bool)

(assert (=> b!914035 (= e!595904 (not lt!337220))))

(declare-fun b!914036 () Bool)

(assert (=> b!914036 (= e!595907 (not (= (head!1629 s!10566) (c!148013 r!15766))))))

(declare-fun b!914037 () Bool)

(declare-fun derivativeStep!476 (Regex!2448 C!5466) Regex!2448)

(assert (=> b!914037 (= e!595903 (matchR!986 (derivativeStep!476 r!15766 (head!1629 s!10566)) (tail!1191 s!10566)))))

(declare-fun b!914038 () Bool)

(declare-fun res!415661 () Bool)

(assert (=> b!914038 (=> res!415661 e!595905)))

(assert (=> b!914038 (= res!415661 (not (is-ElementMatch!2448 r!15766)))))

(assert (=> b!914038 (= e!595904 e!595905)))

(assert (= (and d!279596 c!148082) b!914029))

(assert (= (and d!279596 (not c!148082)) b!914037))

(assert (= (and d!279596 c!148080) b!914031))

(assert (= (and d!279596 (not c!148080)) b!914026))

(assert (= (and b!914026 c!148081) b!914035))

(assert (= (and b!914026 (not c!148081)) b!914038))

(assert (= (and b!914038 (not res!415661)) b!914025))

(assert (= (and b!914025 res!415659) b!914027))

(assert (= (and b!914027 res!415660) b!914033))

(assert (= (and b!914033 res!415654) b!914034))

(assert (= (and b!914025 (not res!415655)) b!914032))

(assert (= (and b!914032 res!415658) b!914028))

(assert (= (and b!914028 (not res!415656)) b!914030))

(assert (= (and b!914030 (not res!415657)) b!914036))

(assert (= (or b!914031 b!914027 b!914028) bm!55085))

(declare-fun m!1144633 () Bool)

(assert (=> b!914036 m!1144633))

(declare-fun m!1144635 () Bool)

(assert (=> b!914033 m!1144635))

(assert (=> b!914033 m!1144635))

(declare-fun m!1144637 () Bool)

(assert (=> b!914033 m!1144637))

(assert (=> d!279596 m!1144515))

(assert (=> d!279596 m!1144501))

(assert (=> b!914030 m!1144635))

(assert (=> b!914030 m!1144635))

(assert (=> b!914030 m!1144637))

(assert (=> b!914037 m!1144633))

(assert (=> b!914037 m!1144633))

(declare-fun m!1144639 () Bool)

(assert (=> b!914037 m!1144639))

(assert (=> b!914037 m!1144635))

(assert (=> b!914037 m!1144639))

(assert (=> b!914037 m!1144635))

(declare-fun m!1144641 () Bool)

(assert (=> b!914037 m!1144641))

(assert (=> b!914034 m!1144633))

(declare-fun m!1144643 () Bool)

(assert (=> b!914029 m!1144643))

(assert (=> bm!55085 m!1144515))

(assert (=> b!913730 d!279596))

(declare-fun d!279598 () Bool)

(assert (=> d!279598 (= (matchR!986 r!15766 s!10566) (matchRSpec!249 r!15766 s!10566))))

(declare-fun lt!337225 () Unit!14515)

(declare-fun choose!5567 (Regex!2448 List!9678) Unit!14515)

(assert (=> d!279598 (= lt!337225 (choose!5567 r!15766 s!10566))))

(assert (=> d!279598 (validRegex!917 r!15766)))

(assert (=> d!279598 (= (mainMatchTheorem!249 r!15766 s!10566) lt!337225)))

(declare-fun bs!235942 () Bool)

(assert (= bs!235942 d!279598))

(assert (=> bs!235942 m!1144523))

(assert (=> bs!235942 m!1144521))

(declare-fun m!1144645 () Bool)

(assert (=> bs!235942 m!1144645))

(assert (=> bs!235942 m!1144501))

(assert (=> b!913730 d!279598))

(declare-fun b!914079 () Bool)

(declare-fun e!595925 () Bool)

(declare-fun tp!285572 () Bool)

(assert (=> b!914079 (= e!595925 tp!285572)))

(declare-fun b!914078 () Bool)

(declare-fun tp!285575 () Bool)

(declare-fun tp!285574 () Bool)

(assert (=> b!914078 (= e!595925 (and tp!285575 tp!285574))))

(declare-fun b!914080 () Bool)

(declare-fun tp!285571 () Bool)

(declare-fun tp!285573 () Bool)

(assert (=> b!914080 (= e!595925 (and tp!285571 tp!285573))))

(assert (=> b!913729 (= tp!285541 e!595925)))

(declare-fun b!914077 () Bool)

(assert (=> b!914077 (= e!595925 tp_is_empty!4539)))

(assert (= (and b!913729 (is-ElementMatch!2448 (reg!2777 r!15766))) b!914077))

(assert (= (and b!913729 (is-Concat!4281 (reg!2777 r!15766))) b!914078))

(assert (= (and b!913729 (is-Star!2448 (reg!2777 r!15766))) b!914079))

(assert (= (and b!913729 (is-Union!2448 (reg!2777 r!15766))) b!914080))

(declare-fun b!914083 () Bool)

(declare-fun e!595926 () Bool)

(declare-fun tp!285577 () Bool)

(assert (=> b!914083 (= e!595926 tp!285577)))

(declare-fun b!914082 () Bool)

(declare-fun tp!285580 () Bool)

(declare-fun tp!285579 () Bool)

(assert (=> b!914082 (= e!595926 (and tp!285580 tp!285579))))

(declare-fun b!914084 () Bool)

(declare-fun tp!285576 () Bool)

(declare-fun tp!285578 () Bool)

(assert (=> b!914084 (= e!595926 (and tp!285576 tp!285578))))

(assert (=> b!913728 (= tp!285539 e!595926)))

(declare-fun b!914081 () Bool)

(assert (=> b!914081 (= e!595926 tp_is_empty!4539)))

(assert (= (and b!913728 (is-ElementMatch!2448 (regOne!5409 r!15766))) b!914081))

(assert (= (and b!913728 (is-Concat!4281 (regOne!5409 r!15766))) b!914082))

(assert (= (and b!913728 (is-Star!2448 (regOne!5409 r!15766))) b!914083))

(assert (= (and b!913728 (is-Union!2448 (regOne!5409 r!15766))) b!914084))

(declare-fun b!914087 () Bool)

(declare-fun e!595927 () Bool)

(declare-fun tp!285582 () Bool)

(assert (=> b!914087 (= e!595927 tp!285582)))

(declare-fun b!914086 () Bool)

(declare-fun tp!285585 () Bool)

(declare-fun tp!285584 () Bool)

(assert (=> b!914086 (= e!595927 (and tp!285585 tp!285584))))

(declare-fun b!914088 () Bool)

(declare-fun tp!285581 () Bool)

(declare-fun tp!285583 () Bool)

(assert (=> b!914088 (= e!595927 (and tp!285581 tp!285583))))

(assert (=> b!913728 (= tp!285542 e!595927)))

(declare-fun b!914085 () Bool)

(assert (=> b!914085 (= e!595927 tp_is_empty!4539)))

(assert (= (and b!913728 (is-ElementMatch!2448 (regTwo!5409 r!15766))) b!914085))

(assert (= (and b!913728 (is-Concat!4281 (regTwo!5409 r!15766))) b!914086))

(assert (= (and b!913728 (is-Star!2448 (regTwo!5409 r!15766))) b!914087))

(assert (= (and b!913728 (is-Union!2448 (regTwo!5409 r!15766))) b!914088))

(declare-fun b!914093 () Bool)

(declare-fun e!595930 () Bool)

(declare-fun tp!285588 () Bool)

(assert (=> b!914093 (= e!595930 (and tp_is_empty!4539 tp!285588))))

(assert (=> b!913727 (= tp!285538 e!595930)))

(assert (= (and b!913727 (is-Cons!9662 (t!100724 s!10566))) b!914093))

(declare-fun b!914096 () Bool)

(declare-fun e!595931 () Bool)

(declare-fun tp!285590 () Bool)

(assert (=> b!914096 (= e!595931 tp!285590)))

(declare-fun b!914095 () Bool)

(declare-fun tp!285593 () Bool)

(declare-fun tp!285592 () Bool)

(assert (=> b!914095 (= e!595931 (and tp!285593 tp!285592))))

(declare-fun b!914097 () Bool)

(declare-fun tp!285589 () Bool)

(declare-fun tp!285591 () Bool)

(assert (=> b!914097 (= e!595931 (and tp!285589 tp!285591))))

(assert (=> b!913731 (= tp!285537 e!595931)))

(declare-fun b!914094 () Bool)

(assert (=> b!914094 (= e!595931 tp_is_empty!4539)))

(assert (= (and b!913731 (is-ElementMatch!2448 (regOne!5408 r!15766))) b!914094))

(assert (= (and b!913731 (is-Concat!4281 (regOne!5408 r!15766))) b!914095))

(assert (= (and b!913731 (is-Star!2448 (regOne!5408 r!15766))) b!914096))

(assert (= (and b!913731 (is-Union!2448 (regOne!5408 r!15766))) b!914097))

(declare-fun b!914100 () Bool)

(declare-fun e!595932 () Bool)

(declare-fun tp!285595 () Bool)

(assert (=> b!914100 (= e!595932 tp!285595)))

(declare-fun b!914099 () Bool)

(declare-fun tp!285598 () Bool)

(declare-fun tp!285597 () Bool)

(assert (=> b!914099 (= e!595932 (and tp!285598 tp!285597))))

(declare-fun b!914101 () Bool)

(declare-fun tp!285594 () Bool)

(declare-fun tp!285596 () Bool)

(assert (=> b!914101 (= e!595932 (and tp!285594 tp!285596))))

(assert (=> b!913731 (= tp!285540 e!595932)))

(declare-fun b!914098 () Bool)

(assert (=> b!914098 (= e!595932 tp_is_empty!4539)))

(assert (= (and b!913731 (is-ElementMatch!2448 (regTwo!5408 r!15766))) b!914098))

(assert (= (and b!913731 (is-Concat!4281 (regTwo!5408 r!15766))) b!914099))

(assert (= (and b!913731 (is-Star!2448 (regTwo!5408 r!15766))) b!914100))

(assert (= (and b!913731 (is-Union!2448 (regTwo!5408 r!15766))) b!914101))

(push 1)

(assert (not b!914093))

(assert (not b!914096))

(assert (not b!913860))

(assert tp_is_empty!4539)

(assert (not b!914088))

(assert (not b!913916))

(assert (not d!279598))

(assert (not bm!55082))

(assert (not b!913922))

(assert (not b!914030))

(assert (not b!913800))

(assert (not b!913923))

(assert (not d!279586))

(assert (not bm!55042))

(assert (not bm!55057))

(assert (not bm!55058))

(assert (not bm!55081))

(assert (not b!913921))

(assert (not bm!55063))

(assert (not d!279570))

(assert (not b!914099))

(assert (not b!913924))

(assert (not b!913988))

(assert (not b!914095))

(assert (not b!914084))

(assert (not b!913919))

(assert (not b!914087))

(assert (not b!914080))

(assert (not b!914033))

(assert (not b!914036))

(assert (not bm!55062))

(assert (not d!279588))

(assert (not d!279582))

(assert (not bm!55043))

(assert (not d!279590))

(assert (not b!914086))

(assert (not b!913993))

(assert (not b!914100))

(assert (not b!914029))

(assert (not b!914097))

(assert (not b!914101))

(assert (not b!913849))

(assert (not b!914082))

(assert (not b!914083))

(assert (not d!279578))

(assert (not b!914079))

(assert (not bm!55085))

(assert (not d!279596))

(assert (not b!914037))

(assert (not d!279580))

(assert (not b!914078))

(assert (not b!914034))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

