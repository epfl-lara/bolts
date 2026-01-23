; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!295164 () Bool)

(assert start!295164)

(declare-fun res!1276616 () Bool)

(declare-fun e!1948015 () Bool)

(assert (=> start!295164 (=> (not res!1276616) (not e!1948015))))

(declare-datatypes ((C!19432 0))(
  ( (C!19433 (val!11752 Int)) )
))
(declare-datatypes ((Regex!9623 0))(
  ( (ElementMatch!9623 (c!522791 C!19432)) (Concat!14944 (regOne!19758 Regex!9623) (regTwo!19758 Regex!9623)) (EmptyExpr!9623) (Star!9623 (reg!9952 Regex!9623)) (EmptyLang!9623) (Union!9623 (regOne!19759 Regex!9623) (regTwo!19759 Regex!9623)) )
))
(declare-fun r!17423 () Regex!9623)

(declare-fun validRegex!4356 (Regex!9623) Bool)

(assert (=> start!295164 (= res!1276616 (validRegex!4356 r!17423))))

(assert (=> start!295164 e!1948015))

(declare-fun e!1948018 () Bool)

(assert (=> start!295164 e!1948018))

(declare-fun e!1948017 () Bool)

(assert (=> start!295164 e!1948017))

(declare-fun b!3119569 () Bool)

(declare-fun tp_is_empty!16809 () Bool)

(declare-fun tp!977897 () Bool)

(assert (=> b!3119569 (= e!1948017 (and tp_is_empty!16809 tp!977897))))

(declare-fun b!3119570 () Bool)

(declare-fun e!1948021 () Bool)

(assert (=> b!3119570 (= e!1948015 (not e!1948021))))

(declare-fun res!1276615 () Bool)

(assert (=> b!3119570 (=> res!1276615 e!1948021)))

(declare-fun lt!1058823 () Bool)

(get-info :version)

(assert (=> b!3119570 (= res!1276615 (or lt!1058823 ((_ is Concat!14944) r!17423) ((_ is Union!9623) r!17423) (not ((_ is Star!9623) r!17423))))))

(declare-datatypes ((List!35488 0))(
  ( (Nil!35364) (Cons!35364 (h!40784 C!19432) (t!234553 List!35488)) )
))
(declare-fun s!11993 () List!35488)

(declare-fun matchRSpec!1760 (Regex!9623 List!35488) Bool)

(assert (=> b!3119570 (= lt!1058823 (matchRSpec!1760 r!17423 s!11993))))

(declare-fun matchR!4505 (Regex!9623 List!35488) Bool)

(assert (=> b!3119570 (= lt!1058823 (matchR!4505 r!17423 s!11993))))

(declare-datatypes ((Unit!49685 0))(
  ( (Unit!49686) )
))
(declare-fun lt!1058822 () Unit!49685)

(declare-fun mainMatchTheorem!1760 (Regex!9623 List!35488) Unit!49685)

(assert (=> b!3119570 (= lt!1058822 (mainMatchTheorem!1760 r!17423 s!11993))))

(declare-fun b!3119571 () Bool)

(declare-fun res!1276619 () Bool)

(declare-fun e!1948019 () Bool)

(assert (=> b!3119571 (=> res!1276619 e!1948019)))

(declare-fun lt!1058826 () Regex!9623)

(assert (=> b!3119571 (= res!1276619 (not (validRegex!4356 lt!1058826)))))

(declare-fun b!3119572 () Bool)

(declare-fun e!1948016 () Bool)

(assert (=> b!3119572 (= e!1948016 e!1948019)))

(declare-fun res!1276618 () Bool)

(assert (=> b!3119572 (=> res!1276618 e!1948019)))

(declare-fun isEmpty!19707 (List!35488) Bool)

(assert (=> b!3119572 (= res!1276618 (isEmpty!19707 s!11993))))

(declare-fun lt!1058824 () Regex!9623)

(assert (=> b!3119572 (matchRSpec!1760 lt!1058824 s!11993)))

(declare-fun lt!1058825 () Unit!49685)

(assert (=> b!3119572 (= lt!1058825 (mainMatchTheorem!1760 lt!1058824 s!11993))))

(declare-fun b!3119573 () Bool)

(assert (=> b!3119573 (= e!1948018 tp_is_empty!16809)))

(declare-fun b!3119574 () Bool)

(declare-fun tp!977900 () Bool)

(assert (=> b!3119574 (= e!1948018 tp!977900)))

(declare-fun b!3119575 () Bool)

(declare-fun e!1948020 () Bool)

(assert (=> b!3119575 (= e!1948021 e!1948020)))

(declare-fun res!1276617 () Bool)

(assert (=> b!3119575 (=> res!1276617 e!1948020)))

(declare-fun isEmptyLang!674 (Regex!9623) Bool)

(assert (=> b!3119575 (= res!1276617 (isEmptyLang!674 lt!1058826))))

(declare-fun simplify!578 (Regex!9623) Regex!9623)

(assert (=> b!3119575 (= lt!1058826 (simplify!578 (reg!9952 r!17423)))))

(declare-fun b!3119576 () Bool)

(assert (=> b!3119576 (= e!1948020 e!1948016)))

(declare-fun res!1276620 () Bool)

(assert (=> b!3119576 (=> res!1276620 e!1948016)))

(assert (=> b!3119576 (= res!1276620 (not (matchR!4505 lt!1058824 s!11993)))))

(assert (=> b!3119576 (= lt!1058824 (Star!9623 lt!1058826))))

(declare-fun b!3119577 () Bool)

(declare-fun tp!977901 () Bool)

(declare-fun tp!977896 () Bool)

(assert (=> b!3119577 (= e!1948018 (and tp!977901 tp!977896))))

(declare-fun b!3119578 () Bool)

(assert (=> b!3119578 (= e!1948019 (validRegex!4356 lt!1058824))))

(declare-fun b!3119579 () Bool)

(declare-fun tp!977898 () Bool)

(declare-fun tp!977899 () Bool)

(assert (=> b!3119579 (= e!1948018 (and tp!977898 tp!977899))))

(assert (= (and start!295164 res!1276616) b!3119570))

(assert (= (and b!3119570 (not res!1276615)) b!3119575))

(assert (= (and b!3119575 (not res!1276617)) b!3119576))

(assert (= (and b!3119576 (not res!1276620)) b!3119572))

(assert (= (and b!3119572 (not res!1276618)) b!3119571))

(assert (= (and b!3119571 (not res!1276619)) b!3119578))

(assert (= (and start!295164 ((_ is ElementMatch!9623) r!17423)) b!3119573))

(assert (= (and start!295164 ((_ is Concat!14944) r!17423)) b!3119577))

(assert (= (and start!295164 ((_ is Star!9623) r!17423)) b!3119574))

(assert (= (and start!295164 ((_ is Union!9623) r!17423)) b!3119579))

(assert (= (and start!295164 ((_ is Cons!35364) s!11993)) b!3119569))

(declare-fun m!3407649 () Bool)

(assert (=> b!3119570 m!3407649))

(declare-fun m!3407651 () Bool)

(assert (=> b!3119570 m!3407651))

(declare-fun m!3407653 () Bool)

(assert (=> b!3119570 m!3407653))

(declare-fun m!3407655 () Bool)

(assert (=> b!3119578 m!3407655))

(declare-fun m!3407657 () Bool)

(assert (=> start!295164 m!3407657))

(declare-fun m!3407659 () Bool)

(assert (=> b!3119575 m!3407659))

(declare-fun m!3407661 () Bool)

(assert (=> b!3119575 m!3407661))

(declare-fun m!3407663 () Bool)

(assert (=> b!3119576 m!3407663))

(declare-fun m!3407665 () Bool)

(assert (=> b!3119571 m!3407665))

(declare-fun m!3407667 () Bool)

(assert (=> b!3119572 m!3407667))

(declare-fun m!3407669 () Bool)

(assert (=> b!3119572 m!3407669))

(declare-fun m!3407671 () Bool)

(assert (=> b!3119572 m!3407671))

(check-sat (not b!3119569) (not start!295164) (not b!3119578) (not b!3119575) (not b!3119576) (not b!3119579) (not b!3119577) tp_is_empty!16809 (not b!3119572) (not b!3119570) (not b!3119571) (not b!3119574))
(check-sat)
(get-model)

(declare-fun d!862395 () Bool)

(assert (=> d!862395 (= (isEmptyLang!674 lt!1058826) ((_ is EmptyLang!9623) lt!1058826))))

(assert (=> b!3119575 d!862395))

(declare-fun bm!221632 () Bool)

(declare-fun call!221643 () Regex!9623)

(declare-fun c!522831 () Bool)

(assert (=> bm!221632 (= call!221643 (simplify!578 (ite c!522831 (regOne!19759 (reg!9952 r!17423)) (regTwo!19758 (reg!9952 r!17423)))))))

(declare-fun b!3119652 () Bool)

(declare-fun e!1948072 () Regex!9623)

(declare-fun lt!1058841 () Regex!9623)

(assert (=> b!3119652 (= e!1948072 lt!1058841)))

(declare-fun b!3119653 () Bool)

(declare-fun e!1948070 () Regex!9623)

(declare-fun e!1948067 () Regex!9623)

(assert (=> b!3119653 (= e!1948070 e!1948067)))

(declare-fun c!522829 () Bool)

(declare-fun lt!1058842 () Regex!9623)

(declare-fun isEmptyExpr!671 (Regex!9623) Bool)

(assert (=> b!3119653 (= c!522829 (isEmptyExpr!671 lt!1058842))))

(declare-fun b!3119654 () Bool)

(declare-fun e!1948077 () Regex!9623)

(assert (=> b!3119654 (= e!1948077 (reg!9952 r!17423))))

(declare-fun b!3119655 () Bool)

(declare-fun e!1948073 () Regex!9623)

(declare-fun e!1948074 () Regex!9623)

(assert (=> b!3119655 (= e!1948073 e!1948074)))

(assert (=> b!3119655 (= lt!1058841 call!221643)))

(declare-fun lt!1058839 () Regex!9623)

(declare-fun call!221638 () Regex!9623)

(assert (=> b!3119655 (= lt!1058839 call!221638)))

(declare-fun c!522825 () Bool)

(declare-fun call!221637 () Bool)

(assert (=> b!3119655 (= c!522825 call!221637)))

(declare-fun bm!221633 () Bool)

(assert (=> bm!221633 (= call!221637 (isEmptyLang!674 (ite c!522831 lt!1058841 lt!1058842)))))

(declare-fun d!862397 () Bool)

(declare-fun e!1948075 () Bool)

(assert (=> d!862397 e!1948075))

(declare-fun res!1276635 () Bool)

(assert (=> d!862397 (=> (not res!1276635) (not e!1948075))))

(declare-fun lt!1058843 () Regex!9623)

(assert (=> d!862397 (= res!1276635 (validRegex!4356 lt!1058843))))

(declare-fun e!1948066 () Regex!9623)

(assert (=> d!862397 (= lt!1058843 e!1948066)))

(declare-fun c!522830 () Bool)

(assert (=> d!862397 (= c!522830 ((_ is EmptyLang!9623) (reg!9952 r!17423)))))

(assert (=> d!862397 (validRegex!4356 (reg!9952 r!17423))))

(assert (=> d!862397 (= (simplify!578 (reg!9952 r!17423)) lt!1058843)))

(declare-fun b!3119656 () Bool)

(declare-fun c!522826 () Bool)

(declare-fun call!221641 () Bool)

(assert (=> b!3119656 (= c!522826 call!221641)))

(assert (=> b!3119656 (= e!1948074 e!1948072)))

(declare-fun b!3119657 () Bool)

(declare-fun lt!1058844 () Regex!9623)

(assert (=> b!3119657 (= e!1948067 (Concat!14944 lt!1058844 lt!1058842))))

(declare-fun b!3119658 () Bool)

(assert (=> b!3119658 (= e!1948072 (Union!9623 lt!1058841 lt!1058839))))

(declare-fun b!3119659 () Bool)

(declare-fun e!1948068 () Regex!9623)

(assert (=> b!3119659 (= e!1948068 EmptyExpr!9623)))

(declare-fun b!3119660 () Bool)

(assert (=> b!3119660 (= e!1948070 lt!1058842)))

(declare-fun bm!221634 () Bool)

(declare-fun call!221640 () Bool)

(assert (=> bm!221634 (= call!221641 call!221640)))

(declare-fun b!3119661 () Bool)

(declare-fun e!1948071 () Regex!9623)

(declare-fun e!1948065 () Regex!9623)

(assert (=> b!3119661 (= e!1948071 e!1948065)))

(declare-fun c!522822 () Bool)

(assert (=> b!3119661 (= c!522822 ((_ is Star!9623) (reg!9952 r!17423)))))

(declare-fun b!3119662 () Bool)

(declare-fun e!1948069 () Regex!9623)

(assert (=> b!3119662 (= e!1948073 e!1948069)))

(assert (=> b!3119662 (= lt!1058844 call!221638)))

(assert (=> b!3119662 (= lt!1058842 call!221643)))

(declare-fun res!1276633 () Bool)

(assert (=> b!3119662 (= res!1276633 call!221641)))

(declare-fun e!1948064 () Bool)

(assert (=> b!3119662 (=> res!1276633 e!1948064)))

(declare-fun c!522824 () Bool)

(assert (=> b!3119662 (= c!522824 e!1948064)))

(declare-fun bm!221635 () Bool)

(declare-fun call!221639 () Regex!9623)

(assert (=> bm!221635 (= call!221639 (simplify!578 (ite c!522822 (reg!9952 (reg!9952 r!17423)) (ite c!522831 (regTwo!19759 (reg!9952 r!17423)) (regOne!19758 (reg!9952 r!17423))))))))

(declare-fun b!3119663 () Bool)

(assert (=> b!3119663 (= e!1948067 lt!1058844)))

(declare-fun lt!1058840 () Regex!9623)

(declare-fun bm!221636 () Bool)

(declare-fun call!221642 () Bool)

(assert (=> bm!221636 (= call!221642 (isEmptyExpr!671 (ite c!522822 lt!1058840 lt!1058844)))))

(declare-fun b!3119664 () Bool)

(declare-fun c!522823 () Bool)

(declare-fun e!1948076 () Bool)

(assert (=> b!3119664 (= c!522823 e!1948076)))

(declare-fun res!1276634 () Bool)

(assert (=> b!3119664 (=> res!1276634 e!1948076)))

(assert (=> b!3119664 (= res!1276634 call!221640)))

(assert (=> b!3119664 (= lt!1058840 call!221639)))

(assert (=> b!3119664 (= e!1948065 e!1948068)))

(declare-fun bm!221637 () Bool)

(assert (=> bm!221637 (= call!221638 call!221639)))

(declare-fun b!3119665 () Bool)

(assert (=> b!3119665 (= e!1948071 EmptyExpr!9623)))

(declare-fun b!3119666 () Bool)

(assert (=> b!3119666 (= e!1948074 lt!1058839)))

(declare-fun bm!221638 () Bool)

(assert (=> bm!221638 (= call!221640 (isEmptyLang!674 (ite c!522822 lt!1058840 (ite c!522831 lt!1058839 lt!1058844))))))

(declare-fun b!3119667 () Bool)

(assert (=> b!3119667 (= e!1948068 (Star!9623 lt!1058840))))

(declare-fun b!3119668 () Bool)

(assert (=> b!3119668 (= e!1948069 EmptyLang!9623)))

(declare-fun b!3119669 () Bool)

(assert (=> b!3119669 (= c!522831 ((_ is Union!9623) (reg!9952 r!17423)))))

(assert (=> b!3119669 (= e!1948065 e!1948073)))

(declare-fun b!3119670 () Bool)

(assert (=> b!3119670 (= e!1948076 call!221642)))

(declare-fun b!3119671 () Bool)

(declare-fun c!522827 () Bool)

(assert (=> b!3119671 (= c!522827 call!221642)))

(assert (=> b!3119671 (= e!1948069 e!1948070)))

(declare-fun b!3119672 () Bool)

(assert (=> b!3119672 (= e!1948066 e!1948077)))

(declare-fun c!522832 () Bool)

(assert (=> b!3119672 (= c!522832 ((_ is ElementMatch!9623) (reg!9952 r!17423)))))

(declare-fun b!3119673 () Bool)

(assert (=> b!3119673 (= e!1948064 call!221637)))

(declare-fun b!3119674 () Bool)

(assert (=> b!3119674 (= e!1948066 EmptyLang!9623)))

(declare-fun b!3119675 () Bool)

(declare-fun nullable!3261 (Regex!9623) Bool)

(assert (=> b!3119675 (= e!1948075 (= (nullable!3261 lt!1058843) (nullable!3261 (reg!9952 r!17423))))))

(declare-fun b!3119676 () Bool)

(declare-fun c!522828 () Bool)

(assert (=> b!3119676 (= c!522828 ((_ is EmptyExpr!9623) (reg!9952 r!17423)))))

(assert (=> b!3119676 (= e!1948077 e!1948071)))

(assert (= (and d!862397 c!522830) b!3119674))

(assert (= (and d!862397 (not c!522830)) b!3119672))

(assert (= (and b!3119672 c!522832) b!3119654))

(assert (= (and b!3119672 (not c!522832)) b!3119676))

(assert (= (and b!3119676 c!522828) b!3119665))

(assert (= (and b!3119676 (not c!522828)) b!3119661))

(assert (= (and b!3119661 c!522822) b!3119664))

(assert (= (and b!3119661 (not c!522822)) b!3119669))

(assert (= (and b!3119664 (not res!1276634)) b!3119670))

(assert (= (and b!3119664 c!522823) b!3119659))

(assert (= (and b!3119664 (not c!522823)) b!3119667))

(assert (= (and b!3119669 c!522831) b!3119655))

(assert (= (and b!3119669 (not c!522831)) b!3119662))

(assert (= (and b!3119655 c!522825) b!3119666))

(assert (= (and b!3119655 (not c!522825)) b!3119656))

(assert (= (and b!3119656 c!522826) b!3119652))

(assert (= (and b!3119656 (not c!522826)) b!3119658))

(assert (= (and b!3119662 (not res!1276633)) b!3119673))

(assert (= (and b!3119662 c!522824) b!3119668))

(assert (= (and b!3119662 (not c!522824)) b!3119671))

(assert (= (and b!3119671 c!522827) b!3119660))

(assert (= (and b!3119671 (not c!522827)) b!3119653))

(assert (= (and b!3119653 c!522829) b!3119663))

(assert (= (and b!3119653 (not c!522829)) b!3119657))

(assert (= (or b!3119655 b!3119662) bm!221632))

(assert (= (or b!3119655 b!3119662) bm!221637))

(assert (= (or b!3119655 b!3119673) bm!221633))

(assert (= (or b!3119656 b!3119662) bm!221634))

(assert (= (or b!3119670 b!3119671) bm!221636))

(assert (= (or b!3119664 bm!221637) bm!221635))

(assert (= (or b!3119664 bm!221634) bm!221638))

(assert (= (and d!862397 res!1276635) b!3119675))

(declare-fun m!3407673 () Bool)

(assert (=> bm!221638 m!3407673))

(declare-fun m!3407675 () Bool)

(assert (=> b!3119653 m!3407675))

(declare-fun m!3407677 () Bool)

(assert (=> bm!221635 m!3407677))

(declare-fun m!3407679 () Bool)

(assert (=> d!862397 m!3407679))

(declare-fun m!3407681 () Bool)

(assert (=> d!862397 m!3407681))

(declare-fun m!3407683 () Bool)

(assert (=> bm!221633 m!3407683))

(declare-fun m!3407685 () Bool)

(assert (=> bm!221632 m!3407685))

(declare-fun m!3407687 () Bool)

(assert (=> bm!221636 m!3407687))

(declare-fun m!3407689 () Bool)

(assert (=> b!3119675 m!3407689))

(declare-fun m!3407691 () Bool)

(assert (=> b!3119675 m!3407691))

(assert (=> b!3119575 d!862397))

(declare-fun b!3119695 () Bool)

(declare-fun e!1948095 () Bool)

(declare-fun e!1948094 () Bool)

(assert (=> b!3119695 (= e!1948095 e!1948094)))

(declare-fun c!522837 () Bool)

(assert (=> b!3119695 (= c!522837 ((_ is Star!9623) lt!1058824))))

(declare-fun bm!221645 () Bool)

(declare-fun call!221651 () Bool)

(declare-fun c!522838 () Bool)

(assert (=> bm!221645 (= call!221651 (validRegex!4356 (ite c!522838 (regTwo!19759 lt!1058824) (regOne!19758 lt!1058824))))))

(declare-fun b!3119696 () Bool)

(declare-fun e!1948096 () Bool)

(assert (=> b!3119696 (= e!1948096 call!221651)))

(declare-fun b!3119697 () Bool)

(declare-fun e!1948092 () Bool)

(declare-fun e!1948098 () Bool)

(assert (=> b!3119697 (= e!1948092 e!1948098)))

(declare-fun res!1276649 () Bool)

(assert (=> b!3119697 (=> (not res!1276649) (not e!1948098))))

(assert (=> b!3119697 (= res!1276649 call!221651)))

(declare-fun d!862403 () Bool)

(declare-fun res!1276646 () Bool)

(assert (=> d!862403 (=> res!1276646 e!1948095)))

(assert (=> d!862403 (= res!1276646 ((_ is ElementMatch!9623) lt!1058824))))

(assert (=> d!862403 (= (validRegex!4356 lt!1058824) e!1948095)))

(declare-fun bm!221646 () Bool)

(declare-fun call!221650 () Bool)

(declare-fun call!221652 () Bool)

(assert (=> bm!221646 (= call!221650 call!221652)))

(declare-fun b!3119698 () Bool)

(declare-fun e!1948097 () Bool)

(assert (=> b!3119698 (= e!1948094 e!1948097)))

(declare-fun res!1276648 () Bool)

(assert (=> b!3119698 (= res!1276648 (not (nullable!3261 (reg!9952 lt!1058824))))))

(assert (=> b!3119698 (=> (not res!1276648) (not e!1948097))))

(declare-fun b!3119699 () Bool)

(declare-fun e!1948093 () Bool)

(assert (=> b!3119699 (= e!1948094 e!1948093)))

(assert (=> b!3119699 (= c!522838 ((_ is Union!9623) lt!1058824))))

(declare-fun b!3119700 () Bool)

(assert (=> b!3119700 (= e!1948097 call!221652)))

(declare-fun b!3119701 () Bool)

(declare-fun res!1276650 () Bool)

(assert (=> b!3119701 (=> res!1276650 e!1948092)))

(assert (=> b!3119701 (= res!1276650 (not ((_ is Concat!14944) lt!1058824)))))

(assert (=> b!3119701 (= e!1948093 e!1948092)))

(declare-fun b!3119702 () Bool)

(declare-fun res!1276647 () Bool)

(assert (=> b!3119702 (=> (not res!1276647) (not e!1948096))))

(assert (=> b!3119702 (= res!1276647 call!221650)))

(assert (=> b!3119702 (= e!1948093 e!1948096)))

(declare-fun b!3119703 () Bool)

(assert (=> b!3119703 (= e!1948098 call!221650)))

(declare-fun bm!221647 () Bool)

(assert (=> bm!221647 (= call!221652 (validRegex!4356 (ite c!522837 (reg!9952 lt!1058824) (ite c!522838 (regOne!19759 lt!1058824) (regTwo!19758 lt!1058824)))))))

(assert (= (and d!862403 (not res!1276646)) b!3119695))

(assert (= (and b!3119695 c!522837) b!3119698))

(assert (= (and b!3119695 (not c!522837)) b!3119699))

(assert (= (and b!3119698 res!1276648) b!3119700))

(assert (= (and b!3119699 c!522838) b!3119702))

(assert (= (and b!3119699 (not c!522838)) b!3119701))

(assert (= (and b!3119702 res!1276647) b!3119696))

(assert (= (and b!3119701 (not res!1276650)) b!3119697))

(assert (= (and b!3119697 res!1276649) b!3119703))

(assert (= (or b!3119702 b!3119703) bm!221646))

(assert (= (or b!3119696 b!3119697) bm!221645))

(assert (= (or b!3119700 bm!221646) bm!221647))

(declare-fun m!3407693 () Bool)

(assert (=> bm!221645 m!3407693))

(declare-fun m!3407695 () Bool)

(assert (=> b!3119698 m!3407695))

(declare-fun m!3407697 () Bool)

(assert (=> bm!221647 m!3407697))

(assert (=> b!3119578 d!862403))

(declare-fun b!3119704 () Bool)

(declare-fun e!1948102 () Bool)

(declare-fun e!1948101 () Bool)

(assert (=> b!3119704 (= e!1948102 e!1948101)))

(declare-fun c!522839 () Bool)

(assert (=> b!3119704 (= c!522839 ((_ is Star!9623) r!17423))))

(declare-fun bm!221648 () Bool)

(declare-fun call!221654 () Bool)

(declare-fun c!522840 () Bool)

(assert (=> bm!221648 (= call!221654 (validRegex!4356 (ite c!522840 (regTwo!19759 r!17423) (regOne!19758 r!17423))))))

(declare-fun b!3119705 () Bool)

(declare-fun e!1948103 () Bool)

(assert (=> b!3119705 (= e!1948103 call!221654)))

(declare-fun b!3119706 () Bool)

(declare-fun e!1948099 () Bool)

(declare-fun e!1948105 () Bool)

(assert (=> b!3119706 (= e!1948099 e!1948105)))

(declare-fun res!1276654 () Bool)

(assert (=> b!3119706 (=> (not res!1276654) (not e!1948105))))

(assert (=> b!3119706 (= res!1276654 call!221654)))

(declare-fun d!862405 () Bool)

(declare-fun res!1276651 () Bool)

(assert (=> d!862405 (=> res!1276651 e!1948102)))

(assert (=> d!862405 (= res!1276651 ((_ is ElementMatch!9623) r!17423))))

(assert (=> d!862405 (= (validRegex!4356 r!17423) e!1948102)))

(declare-fun bm!221649 () Bool)

(declare-fun call!221653 () Bool)

(declare-fun call!221655 () Bool)

(assert (=> bm!221649 (= call!221653 call!221655)))

(declare-fun b!3119707 () Bool)

(declare-fun e!1948104 () Bool)

(assert (=> b!3119707 (= e!1948101 e!1948104)))

(declare-fun res!1276653 () Bool)

(assert (=> b!3119707 (= res!1276653 (not (nullable!3261 (reg!9952 r!17423))))))

(assert (=> b!3119707 (=> (not res!1276653) (not e!1948104))))

(declare-fun b!3119708 () Bool)

(declare-fun e!1948100 () Bool)

(assert (=> b!3119708 (= e!1948101 e!1948100)))

(assert (=> b!3119708 (= c!522840 ((_ is Union!9623) r!17423))))

(declare-fun b!3119709 () Bool)

(assert (=> b!3119709 (= e!1948104 call!221655)))

(declare-fun b!3119710 () Bool)

(declare-fun res!1276655 () Bool)

(assert (=> b!3119710 (=> res!1276655 e!1948099)))

(assert (=> b!3119710 (= res!1276655 (not ((_ is Concat!14944) r!17423)))))

(assert (=> b!3119710 (= e!1948100 e!1948099)))

(declare-fun b!3119711 () Bool)

(declare-fun res!1276652 () Bool)

(assert (=> b!3119711 (=> (not res!1276652) (not e!1948103))))

(assert (=> b!3119711 (= res!1276652 call!221653)))

(assert (=> b!3119711 (= e!1948100 e!1948103)))

(declare-fun b!3119712 () Bool)

(assert (=> b!3119712 (= e!1948105 call!221653)))

(declare-fun bm!221650 () Bool)

(assert (=> bm!221650 (= call!221655 (validRegex!4356 (ite c!522839 (reg!9952 r!17423) (ite c!522840 (regOne!19759 r!17423) (regTwo!19758 r!17423)))))))

(assert (= (and d!862405 (not res!1276651)) b!3119704))

(assert (= (and b!3119704 c!522839) b!3119707))

(assert (= (and b!3119704 (not c!522839)) b!3119708))

(assert (= (and b!3119707 res!1276653) b!3119709))

(assert (= (and b!3119708 c!522840) b!3119711))

(assert (= (and b!3119708 (not c!522840)) b!3119710))

(assert (= (and b!3119711 res!1276652) b!3119705))

(assert (= (and b!3119710 (not res!1276655)) b!3119706))

(assert (= (and b!3119706 res!1276654) b!3119712))

(assert (= (or b!3119711 b!3119712) bm!221649))

(assert (= (or b!3119705 b!3119706) bm!221648))

(assert (= (or b!3119709 bm!221649) bm!221650))

(declare-fun m!3407699 () Bool)

(assert (=> bm!221648 m!3407699))

(assert (=> b!3119707 m!3407691))

(declare-fun m!3407701 () Bool)

(assert (=> bm!221650 m!3407701))

(assert (=> start!295164 d!862405))

(declare-fun d!862407 () Bool)

(assert (=> d!862407 (= (isEmpty!19707 s!11993) ((_ is Nil!35364) s!11993))))

(assert (=> b!3119572 d!862407))

(declare-fun b!3119999 () Bool)

(assert (=> b!3119999 true))

(assert (=> b!3119999 true))

(declare-fun bs!535918 () Bool)

(declare-fun b!3119995 () Bool)

(assert (= bs!535918 (and b!3119995 b!3119999)))

(declare-fun lambda!115226 () Int)

(declare-fun lambda!115225 () Int)

(assert (=> bs!535918 (not (= lambda!115226 lambda!115225))))

(assert (=> b!3119995 true))

(assert (=> b!3119995 true))

(declare-fun b!3119992 () Bool)

(declare-fun c!522913 () Bool)

(assert (=> b!3119992 (= c!522913 ((_ is Union!9623) lt!1058824))))

(declare-fun e!1948262 () Bool)

(declare-fun e!1948259 () Bool)

(assert (=> b!3119992 (= e!1948262 e!1948259)))

(declare-fun bm!221703 () Bool)

(declare-fun call!221709 () Bool)

(assert (=> bm!221703 (= call!221709 (isEmpty!19707 s!11993))))

(declare-fun b!3119993 () Bool)

(declare-fun e!1948257 () Bool)

(assert (=> b!3119993 (= e!1948259 e!1948257)))

(declare-fun res!1276756 () Bool)

(assert (=> b!3119993 (= res!1276756 (matchRSpec!1760 (regOne!19759 lt!1058824) s!11993))))

(assert (=> b!3119993 (=> res!1276756 e!1948257)))

(declare-fun b!3119994 () Bool)

(declare-fun c!522914 () Bool)

(assert (=> b!3119994 (= c!522914 ((_ is ElementMatch!9623) lt!1058824))))

(declare-fun e!1948261 () Bool)

(assert (=> b!3119994 (= e!1948261 e!1948262)))

(declare-fun e!1948260 () Bool)

(declare-fun call!221708 () Bool)

(assert (=> b!3119995 (= e!1948260 call!221708)))

(declare-fun d!862409 () Bool)

(declare-fun c!522915 () Bool)

(assert (=> d!862409 (= c!522915 ((_ is EmptyExpr!9623) lt!1058824))))

(declare-fun e!1948263 () Bool)

(assert (=> d!862409 (= (matchRSpec!1760 lt!1058824 s!11993) e!1948263)))

(declare-fun c!522912 () Bool)

(declare-fun bm!221704 () Bool)

(declare-fun Exists!1877 (Int) Bool)

(assert (=> bm!221704 (= call!221708 (Exists!1877 (ite c!522912 lambda!115225 lambda!115226)))))

(declare-fun b!3119996 () Bool)

(assert (=> b!3119996 (= e!1948259 e!1948260)))

(assert (=> b!3119996 (= c!522912 ((_ is Star!9623) lt!1058824))))

(declare-fun b!3119997 () Bool)

(assert (=> b!3119997 (= e!1948263 e!1948261)))

(declare-fun res!1276755 () Bool)

(assert (=> b!3119997 (= res!1276755 (not ((_ is EmptyLang!9623) lt!1058824)))))

(assert (=> b!3119997 (=> (not res!1276755) (not e!1948261))))

(declare-fun b!3119998 () Bool)

(assert (=> b!3119998 (= e!1948257 (matchRSpec!1760 (regTwo!19759 lt!1058824) s!11993))))

(declare-fun e!1948258 () Bool)

(assert (=> b!3119999 (= e!1948258 call!221708)))

(declare-fun b!3120000 () Bool)

(assert (=> b!3120000 (= e!1948262 (= s!11993 (Cons!35364 (c!522791 lt!1058824) Nil!35364)))))

(declare-fun b!3120001 () Bool)

(assert (=> b!3120001 (= e!1948263 call!221709)))

(declare-fun b!3120002 () Bool)

(declare-fun res!1276754 () Bool)

(assert (=> b!3120002 (=> res!1276754 e!1948258)))

(assert (=> b!3120002 (= res!1276754 call!221709)))

(assert (=> b!3120002 (= e!1948260 e!1948258)))

(assert (= (and d!862409 c!522915) b!3120001))

(assert (= (and d!862409 (not c!522915)) b!3119997))

(assert (= (and b!3119997 res!1276755) b!3119994))

(assert (= (and b!3119994 c!522914) b!3120000))

(assert (= (and b!3119994 (not c!522914)) b!3119992))

(assert (= (and b!3119992 c!522913) b!3119993))

(assert (= (and b!3119992 (not c!522913)) b!3119996))

(assert (= (and b!3119993 (not res!1276756)) b!3119998))

(assert (= (and b!3119996 c!522912) b!3120002))

(assert (= (and b!3119996 (not c!522912)) b!3119995))

(assert (= (and b!3120002 (not res!1276754)) b!3119999))

(assert (= (or b!3119999 b!3119995) bm!221704))

(assert (= (or b!3120001 b!3120002) bm!221703))

(assert (=> bm!221703 m!3407667))

(declare-fun m!3407773 () Bool)

(assert (=> b!3119993 m!3407773))

(declare-fun m!3407775 () Bool)

(assert (=> bm!221704 m!3407775))

(declare-fun m!3407777 () Bool)

(assert (=> b!3119998 m!3407777))

(assert (=> b!3119572 d!862409))

(declare-fun d!862431 () Bool)

(assert (=> d!862431 (= (matchR!4505 lt!1058824 s!11993) (matchRSpec!1760 lt!1058824 s!11993))))

(declare-fun lt!1058873 () Unit!49685)

(declare-fun choose!18448 (Regex!9623 List!35488) Unit!49685)

(assert (=> d!862431 (= lt!1058873 (choose!18448 lt!1058824 s!11993))))

(assert (=> d!862431 (validRegex!4356 lt!1058824)))

(assert (=> d!862431 (= (mainMatchTheorem!1760 lt!1058824 s!11993) lt!1058873)))

(declare-fun bs!535919 () Bool)

(assert (= bs!535919 d!862431))

(assert (=> bs!535919 m!3407663))

(assert (=> bs!535919 m!3407669))

(declare-fun m!3407779 () Bool)

(assert (=> bs!535919 m!3407779))

(assert (=> bs!535919 m!3407655))

(assert (=> b!3119572 d!862431))

(declare-fun bs!535920 () Bool)

(declare-fun b!3120014 () Bool)

(assert (= bs!535920 (and b!3120014 b!3119999)))

(declare-fun lambda!115227 () Int)

(assert (=> bs!535920 (= (and (= (reg!9952 r!17423) (reg!9952 lt!1058824)) (= r!17423 lt!1058824)) (= lambda!115227 lambda!115225))))

(declare-fun bs!535921 () Bool)

(assert (= bs!535921 (and b!3120014 b!3119995)))

(assert (=> bs!535921 (not (= lambda!115227 lambda!115226))))

(assert (=> b!3120014 true))

(assert (=> b!3120014 true))

(declare-fun bs!535922 () Bool)

(declare-fun b!3120010 () Bool)

(assert (= bs!535922 (and b!3120010 b!3119999)))

(declare-fun lambda!115228 () Int)

(assert (=> bs!535922 (not (= lambda!115228 lambda!115225))))

(declare-fun bs!535923 () Bool)

(assert (= bs!535923 (and b!3120010 b!3119995)))

(assert (=> bs!535923 (= (and (= (regOne!19758 r!17423) (regOne!19758 lt!1058824)) (= (regTwo!19758 r!17423) (regTwo!19758 lt!1058824))) (= lambda!115228 lambda!115226))))

(declare-fun bs!535924 () Bool)

(assert (= bs!535924 (and b!3120010 b!3120014)))

(assert (=> bs!535924 (not (= lambda!115228 lambda!115227))))

(assert (=> b!3120010 true))

(assert (=> b!3120010 true))

(declare-fun b!3120007 () Bool)

(declare-fun c!522917 () Bool)

(assert (=> b!3120007 (= c!522917 ((_ is Union!9623) r!17423))))

(declare-fun e!1948269 () Bool)

(declare-fun e!1948266 () Bool)

(assert (=> b!3120007 (= e!1948269 e!1948266)))

(declare-fun bm!221705 () Bool)

(declare-fun call!221711 () Bool)

(assert (=> bm!221705 (= call!221711 (isEmpty!19707 s!11993))))

(declare-fun b!3120008 () Bool)

(declare-fun e!1948264 () Bool)

(assert (=> b!3120008 (= e!1948266 e!1948264)))

(declare-fun res!1276759 () Bool)

(assert (=> b!3120008 (= res!1276759 (matchRSpec!1760 (regOne!19759 r!17423) s!11993))))

(assert (=> b!3120008 (=> res!1276759 e!1948264)))

(declare-fun b!3120009 () Bool)

(declare-fun c!522918 () Bool)

(assert (=> b!3120009 (= c!522918 ((_ is ElementMatch!9623) r!17423))))

(declare-fun e!1948268 () Bool)

(assert (=> b!3120009 (= e!1948268 e!1948269)))

(declare-fun e!1948267 () Bool)

(declare-fun call!221710 () Bool)

(assert (=> b!3120010 (= e!1948267 call!221710)))

(declare-fun d!862433 () Bool)

(declare-fun c!522919 () Bool)

(assert (=> d!862433 (= c!522919 ((_ is EmptyExpr!9623) r!17423))))

(declare-fun e!1948270 () Bool)

(assert (=> d!862433 (= (matchRSpec!1760 r!17423 s!11993) e!1948270)))

(declare-fun bm!221706 () Bool)

(declare-fun c!522916 () Bool)

(assert (=> bm!221706 (= call!221710 (Exists!1877 (ite c!522916 lambda!115227 lambda!115228)))))

(declare-fun b!3120011 () Bool)

(assert (=> b!3120011 (= e!1948266 e!1948267)))

(assert (=> b!3120011 (= c!522916 ((_ is Star!9623) r!17423))))

(declare-fun b!3120012 () Bool)

(assert (=> b!3120012 (= e!1948270 e!1948268)))

(declare-fun res!1276758 () Bool)

(assert (=> b!3120012 (= res!1276758 (not ((_ is EmptyLang!9623) r!17423)))))

(assert (=> b!3120012 (=> (not res!1276758) (not e!1948268))))

(declare-fun b!3120013 () Bool)

(assert (=> b!3120013 (= e!1948264 (matchRSpec!1760 (regTwo!19759 r!17423) s!11993))))

(declare-fun e!1948265 () Bool)

(assert (=> b!3120014 (= e!1948265 call!221710)))

(declare-fun b!3120015 () Bool)

(assert (=> b!3120015 (= e!1948269 (= s!11993 (Cons!35364 (c!522791 r!17423) Nil!35364)))))

(declare-fun b!3120016 () Bool)

(assert (=> b!3120016 (= e!1948270 call!221711)))

(declare-fun b!3120017 () Bool)

(declare-fun res!1276757 () Bool)

(assert (=> b!3120017 (=> res!1276757 e!1948265)))

(assert (=> b!3120017 (= res!1276757 call!221711)))

(assert (=> b!3120017 (= e!1948267 e!1948265)))

(assert (= (and d!862433 c!522919) b!3120016))

(assert (= (and d!862433 (not c!522919)) b!3120012))

(assert (= (and b!3120012 res!1276758) b!3120009))

(assert (= (and b!3120009 c!522918) b!3120015))

(assert (= (and b!3120009 (not c!522918)) b!3120007))

(assert (= (and b!3120007 c!522917) b!3120008))

(assert (= (and b!3120007 (not c!522917)) b!3120011))

(assert (= (and b!3120008 (not res!1276759)) b!3120013))

(assert (= (and b!3120011 c!522916) b!3120017))

(assert (= (and b!3120011 (not c!522916)) b!3120010))

(assert (= (and b!3120017 (not res!1276757)) b!3120014))

(assert (= (or b!3120014 b!3120010) bm!221706))

(assert (= (or b!3120016 b!3120017) bm!221705))

(assert (=> bm!221705 m!3407667))

(declare-fun m!3407781 () Bool)

(assert (=> b!3120008 m!3407781))

(declare-fun m!3407783 () Bool)

(assert (=> bm!221706 m!3407783))

(declare-fun m!3407785 () Bool)

(assert (=> b!3120013 m!3407785))

(assert (=> b!3119570 d!862433))

(declare-fun d!862435 () Bool)

(declare-fun e!1948290 () Bool)

(assert (=> d!862435 e!1948290))

(declare-fun c!522928 () Bool)

(assert (=> d!862435 (= c!522928 ((_ is EmptyExpr!9623) r!17423))))

(declare-fun lt!1058876 () Bool)

(declare-fun e!1948288 () Bool)

(assert (=> d!862435 (= lt!1058876 e!1948288)))

(declare-fun c!522927 () Bool)

(assert (=> d!862435 (= c!522927 (isEmpty!19707 s!11993))))

(assert (=> d!862435 (validRegex!4356 r!17423)))

(assert (=> d!862435 (= (matchR!4505 r!17423 s!11993) lt!1058876)))

(declare-fun b!3120046 () Bool)

(declare-fun e!1948289 () Bool)

(declare-fun e!1948287 () Bool)

(assert (=> b!3120046 (= e!1948289 e!1948287)))

(declare-fun res!1276783 () Bool)

(assert (=> b!3120046 (=> (not res!1276783) (not e!1948287))))

(assert (=> b!3120046 (= res!1276783 (not lt!1058876))))

(declare-fun b!3120047 () Bool)

(declare-fun res!1276778 () Bool)

(declare-fun e!1948291 () Bool)

(assert (=> b!3120047 (=> (not res!1276778) (not e!1948291))))

(declare-fun tail!5141 (List!35488) List!35488)

(assert (=> b!3120047 (= res!1276778 (isEmpty!19707 (tail!5141 s!11993)))))

(declare-fun b!3120048 () Bool)

(assert (=> b!3120048 (= e!1948288 (nullable!3261 r!17423))))

(declare-fun b!3120049 () Bool)

(declare-fun res!1276780 () Bool)

(assert (=> b!3120049 (=> (not res!1276780) (not e!1948291))))

(declare-fun call!221714 () Bool)

(assert (=> b!3120049 (= res!1276780 (not call!221714))))

(declare-fun b!3120050 () Bool)

(declare-fun res!1276779 () Bool)

(assert (=> b!3120050 (=> res!1276779 e!1948289)))

(assert (=> b!3120050 (= res!1276779 e!1948291)))

(declare-fun res!1276782 () Bool)

(assert (=> b!3120050 (=> (not res!1276782) (not e!1948291))))

(assert (=> b!3120050 (= res!1276782 lt!1058876)))

(declare-fun bm!221709 () Bool)

(assert (=> bm!221709 (= call!221714 (isEmpty!19707 s!11993))))

(declare-fun b!3120051 () Bool)

(declare-fun res!1276776 () Bool)

(declare-fun e!1948286 () Bool)

(assert (=> b!3120051 (=> res!1276776 e!1948286)))

(assert (=> b!3120051 (= res!1276776 (not (isEmpty!19707 (tail!5141 s!11993))))))

(declare-fun b!3120052 () Bool)

(assert (=> b!3120052 (= e!1948287 e!1948286)))

(declare-fun res!1276781 () Bool)

(assert (=> b!3120052 (=> res!1276781 e!1948286)))

(assert (=> b!3120052 (= res!1276781 call!221714)))

(declare-fun b!3120053 () Bool)

(declare-fun derivativeStep!2856 (Regex!9623 C!19432) Regex!9623)

(declare-fun head!6915 (List!35488) C!19432)

(assert (=> b!3120053 (= e!1948288 (matchR!4505 (derivativeStep!2856 r!17423 (head!6915 s!11993)) (tail!5141 s!11993)))))

(declare-fun b!3120054 () Bool)

(assert (=> b!3120054 (= e!1948286 (not (= (head!6915 s!11993) (c!522791 r!17423))))))

(declare-fun b!3120055 () Bool)

(declare-fun res!1276777 () Bool)

(assert (=> b!3120055 (=> res!1276777 e!1948289)))

(assert (=> b!3120055 (= res!1276777 (not ((_ is ElementMatch!9623) r!17423)))))

(declare-fun e!1948285 () Bool)

(assert (=> b!3120055 (= e!1948285 e!1948289)))

(declare-fun b!3120056 () Bool)

(assert (=> b!3120056 (= e!1948290 e!1948285)))

(declare-fun c!522926 () Bool)

(assert (=> b!3120056 (= c!522926 ((_ is EmptyLang!9623) r!17423))))

(declare-fun b!3120057 () Bool)

(assert (=> b!3120057 (= e!1948290 (= lt!1058876 call!221714))))

(declare-fun b!3120058 () Bool)

(assert (=> b!3120058 (= e!1948291 (= (head!6915 s!11993) (c!522791 r!17423)))))

(declare-fun b!3120059 () Bool)

(assert (=> b!3120059 (= e!1948285 (not lt!1058876))))

(assert (= (and d!862435 c!522927) b!3120048))

(assert (= (and d!862435 (not c!522927)) b!3120053))

(assert (= (and d!862435 c!522928) b!3120057))

(assert (= (and d!862435 (not c!522928)) b!3120056))

(assert (= (and b!3120056 c!522926) b!3120059))

(assert (= (and b!3120056 (not c!522926)) b!3120055))

(assert (= (and b!3120055 (not res!1276777)) b!3120050))

(assert (= (and b!3120050 res!1276782) b!3120049))

(assert (= (and b!3120049 res!1276780) b!3120047))

(assert (= (and b!3120047 res!1276778) b!3120058))

(assert (= (and b!3120050 (not res!1276779)) b!3120046))

(assert (= (and b!3120046 res!1276783) b!3120052))

(assert (= (and b!3120052 (not res!1276781)) b!3120051))

(assert (= (and b!3120051 (not res!1276776)) b!3120054))

(assert (= (or b!3120057 b!3120049 b!3120052) bm!221709))

(declare-fun m!3407787 () Bool)

(assert (=> b!3120058 m!3407787))

(declare-fun m!3407789 () Bool)

(assert (=> b!3120048 m!3407789))

(declare-fun m!3407791 () Bool)

(assert (=> b!3120047 m!3407791))

(assert (=> b!3120047 m!3407791))

(declare-fun m!3407793 () Bool)

(assert (=> b!3120047 m!3407793))

(assert (=> bm!221709 m!3407667))

(assert (=> d!862435 m!3407667))

(assert (=> d!862435 m!3407657))

(assert (=> b!3120054 m!3407787))

(assert (=> b!3120053 m!3407787))

(assert (=> b!3120053 m!3407787))

(declare-fun m!3407795 () Bool)

(assert (=> b!3120053 m!3407795))

(assert (=> b!3120053 m!3407791))

(assert (=> b!3120053 m!3407795))

(assert (=> b!3120053 m!3407791))

(declare-fun m!3407797 () Bool)

(assert (=> b!3120053 m!3407797))

(assert (=> b!3120051 m!3407791))

(assert (=> b!3120051 m!3407791))

(assert (=> b!3120051 m!3407793))

(assert (=> b!3119570 d!862435))

(declare-fun d!862437 () Bool)

(assert (=> d!862437 (= (matchR!4505 r!17423 s!11993) (matchRSpec!1760 r!17423 s!11993))))

(declare-fun lt!1058877 () Unit!49685)

(assert (=> d!862437 (= lt!1058877 (choose!18448 r!17423 s!11993))))

(assert (=> d!862437 (validRegex!4356 r!17423)))

(assert (=> d!862437 (= (mainMatchTheorem!1760 r!17423 s!11993) lt!1058877)))

(declare-fun bs!535925 () Bool)

(assert (= bs!535925 d!862437))

(assert (=> bs!535925 m!3407651))

(assert (=> bs!535925 m!3407649))

(declare-fun m!3407799 () Bool)

(assert (=> bs!535925 m!3407799))

(assert (=> bs!535925 m!3407657))

(assert (=> b!3119570 d!862437))

(declare-fun d!862439 () Bool)

(declare-fun e!1948297 () Bool)

(assert (=> d!862439 e!1948297))

(declare-fun c!522931 () Bool)

(assert (=> d!862439 (= c!522931 ((_ is EmptyExpr!9623) lt!1058824))))

(declare-fun lt!1058878 () Bool)

(declare-fun e!1948295 () Bool)

(assert (=> d!862439 (= lt!1058878 e!1948295)))

(declare-fun c!522930 () Bool)

(assert (=> d!862439 (= c!522930 (isEmpty!19707 s!11993))))

(assert (=> d!862439 (validRegex!4356 lt!1058824)))

(assert (=> d!862439 (= (matchR!4505 lt!1058824 s!11993) lt!1058878)))

(declare-fun b!3120060 () Bool)

(declare-fun e!1948296 () Bool)

(declare-fun e!1948294 () Bool)

(assert (=> b!3120060 (= e!1948296 e!1948294)))

(declare-fun res!1276791 () Bool)

(assert (=> b!3120060 (=> (not res!1276791) (not e!1948294))))

(assert (=> b!3120060 (= res!1276791 (not lt!1058878))))

(declare-fun b!3120061 () Bool)

(declare-fun res!1276786 () Bool)

(declare-fun e!1948298 () Bool)

(assert (=> b!3120061 (=> (not res!1276786) (not e!1948298))))

(assert (=> b!3120061 (= res!1276786 (isEmpty!19707 (tail!5141 s!11993)))))

(declare-fun b!3120062 () Bool)

(assert (=> b!3120062 (= e!1948295 (nullable!3261 lt!1058824))))

(declare-fun b!3120063 () Bool)

(declare-fun res!1276788 () Bool)

(assert (=> b!3120063 (=> (not res!1276788) (not e!1948298))))

(declare-fun call!221715 () Bool)

(assert (=> b!3120063 (= res!1276788 (not call!221715))))

(declare-fun b!3120064 () Bool)

(declare-fun res!1276787 () Bool)

(assert (=> b!3120064 (=> res!1276787 e!1948296)))

(assert (=> b!3120064 (= res!1276787 e!1948298)))

(declare-fun res!1276790 () Bool)

(assert (=> b!3120064 (=> (not res!1276790) (not e!1948298))))

(assert (=> b!3120064 (= res!1276790 lt!1058878)))

(declare-fun bm!221710 () Bool)

(assert (=> bm!221710 (= call!221715 (isEmpty!19707 s!11993))))

(declare-fun b!3120065 () Bool)

(declare-fun res!1276784 () Bool)

(declare-fun e!1948293 () Bool)

(assert (=> b!3120065 (=> res!1276784 e!1948293)))

(assert (=> b!3120065 (= res!1276784 (not (isEmpty!19707 (tail!5141 s!11993))))))

(declare-fun b!3120066 () Bool)

(assert (=> b!3120066 (= e!1948294 e!1948293)))

(declare-fun res!1276789 () Bool)

(assert (=> b!3120066 (=> res!1276789 e!1948293)))

(assert (=> b!3120066 (= res!1276789 call!221715)))

(declare-fun b!3120067 () Bool)

(assert (=> b!3120067 (= e!1948295 (matchR!4505 (derivativeStep!2856 lt!1058824 (head!6915 s!11993)) (tail!5141 s!11993)))))

(declare-fun b!3120068 () Bool)

(assert (=> b!3120068 (= e!1948293 (not (= (head!6915 s!11993) (c!522791 lt!1058824))))))

(declare-fun b!3120069 () Bool)

(declare-fun res!1276785 () Bool)

(assert (=> b!3120069 (=> res!1276785 e!1948296)))

(assert (=> b!3120069 (= res!1276785 (not ((_ is ElementMatch!9623) lt!1058824)))))

(declare-fun e!1948292 () Bool)

(assert (=> b!3120069 (= e!1948292 e!1948296)))

(declare-fun b!3120070 () Bool)

(assert (=> b!3120070 (= e!1948297 e!1948292)))

(declare-fun c!522929 () Bool)

(assert (=> b!3120070 (= c!522929 ((_ is EmptyLang!9623) lt!1058824))))

(declare-fun b!3120071 () Bool)

(assert (=> b!3120071 (= e!1948297 (= lt!1058878 call!221715))))

(declare-fun b!3120072 () Bool)

(assert (=> b!3120072 (= e!1948298 (= (head!6915 s!11993) (c!522791 lt!1058824)))))

(declare-fun b!3120073 () Bool)

(assert (=> b!3120073 (= e!1948292 (not lt!1058878))))

(assert (= (and d!862439 c!522930) b!3120062))

(assert (= (and d!862439 (not c!522930)) b!3120067))

(assert (= (and d!862439 c!522931) b!3120071))

(assert (= (and d!862439 (not c!522931)) b!3120070))

(assert (= (and b!3120070 c!522929) b!3120073))

(assert (= (and b!3120070 (not c!522929)) b!3120069))

(assert (= (and b!3120069 (not res!1276785)) b!3120064))

(assert (= (and b!3120064 res!1276790) b!3120063))

(assert (= (and b!3120063 res!1276788) b!3120061))

(assert (= (and b!3120061 res!1276786) b!3120072))

(assert (= (and b!3120064 (not res!1276787)) b!3120060))

(assert (= (and b!3120060 res!1276791) b!3120066))

(assert (= (and b!3120066 (not res!1276789)) b!3120065))

(assert (= (and b!3120065 (not res!1276784)) b!3120068))

(assert (= (or b!3120071 b!3120063 b!3120066) bm!221710))

(assert (=> b!3120072 m!3407787))

(declare-fun m!3407801 () Bool)

(assert (=> b!3120062 m!3407801))

(assert (=> b!3120061 m!3407791))

(assert (=> b!3120061 m!3407791))

(assert (=> b!3120061 m!3407793))

(assert (=> bm!221710 m!3407667))

(assert (=> d!862439 m!3407667))

(assert (=> d!862439 m!3407655))

(assert (=> b!3120068 m!3407787))

(assert (=> b!3120067 m!3407787))

(assert (=> b!3120067 m!3407787))

(declare-fun m!3407803 () Bool)

(assert (=> b!3120067 m!3407803))

(assert (=> b!3120067 m!3407791))

(assert (=> b!3120067 m!3407803))

(assert (=> b!3120067 m!3407791))

(declare-fun m!3407805 () Bool)

(assert (=> b!3120067 m!3407805))

(assert (=> b!3120065 m!3407791))

(assert (=> b!3120065 m!3407791))

(assert (=> b!3120065 m!3407793))

(assert (=> b!3119576 d!862439))

(declare-fun b!3120074 () Bool)

(declare-fun e!1948302 () Bool)

(declare-fun e!1948301 () Bool)

(assert (=> b!3120074 (= e!1948302 e!1948301)))

(declare-fun c!522932 () Bool)

(assert (=> b!3120074 (= c!522932 ((_ is Star!9623) lt!1058826))))

(declare-fun bm!221711 () Bool)

(declare-fun call!221717 () Bool)

(declare-fun c!522933 () Bool)

(assert (=> bm!221711 (= call!221717 (validRegex!4356 (ite c!522933 (regTwo!19759 lt!1058826) (regOne!19758 lt!1058826))))))

(declare-fun b!3120075 () Bool)

(declare-fun e!1948303 () Bool)

(assert (=> b!3120075 (= e!1948303 call!221717)))

(declare-fun b!3120076 () Bool)

(declare-fun e!1948299 () Bool)

(declare-fun e!1948305 () Bool)

(assert (=> b!3120076 (= e!1948299 e!1948305)))

(declare-fun res!1276795 () Bool)

(assert (=> b!3120076 (=> (not res!1276795) (not e!1948305))))

(assert (=> b!3120076 (= res!1276795 call!221717)))

(declare-fun d!862441 () Bool)

(declare-fun res!1276792 () Bool)

(assert (=> d!862441 (=> res!1276792 e!1948302)))

(assert (=> d!862441 (= res!1276792 ((_ is ElementMatch!9623) lt!1058826))))

(assert (=> d!862441 (= (validRegex!4356 lt!1058826) e!1948302)))

(declare-fun bm!221712 () Bool)

(declare-fun call!221716 () Bool)

(declare-fun call!221718 () Bool)

(assert (=> bm!221712 (= call!221716 call!221718)))

(declare-fun b!3120077 () Bool)

(declare-fun e!1948304 () Bool)

(assert (=> b!3120077 (= e!1948301 e!1948304)))

(declare-fun res!1276794 () Bool)

(assert (=> b!3120077 (= res!1276794 (not (nullable!3261 (reg!9952 lt!1058826))))))

(assert (=> b!3120077 (=> (not res!1276794) (not e!1948304))))

(declare-fun b!3120078 () Bool)

(declare-fun e!1948300 () Bool)

(assert (=> b!3120078 (= e!1948301 e!1948300)))

(assert (=> b!3120078 (= c!522933 ((_ is Union!9623) lt!1058826))))

(declare-fun b!3120079 () Bool)

(assert (=> b!3120079 (= e!1948304 call!221718)))

(declare-fun b!3120080 () Bool)

(declare-fun res!1276796 () Bool)

(assert (=> b!3120080 (=> res!1276796 e!1948299)))

(assert (=> b!3120080 (= res!1276796 (not ((_ is Concat!14944) lt!1058826)))))

(assert (=> b!3120080 (= e!1948300 e!1948299)))

(declare-fun b!3120081 () Bool)

(declare-fun res!1276793 () Bool)

(assert (=> b!3120081 (=> (not res!1276793) (not e!1948303))))

(assert (=> b!3120081 (= res!1276793 call!221716)))

(assert (=> b!3120081 (= e!1948300 e!1948303)))

(declare-fun b!3120082 () Bool)

(assert (=> b!3120082 (= e!1948305 call!221716)))

(declare-fun bm!221713 () Bool)

(assert (=> bm!221713 (= call!221718 (validRegex!4356 (ite c!522932 (reg!9952 lt!1058826) (ite c!522933 (regOne!19759 lt!1058826) (regTwo!19758 lt!1058826)))))))

(assert (= (and d!862441 (not res!1276792)) b!3120074))

(assert (= (and b!3120074 c!522932) b!3120077))

(assert (= (and b!3120074 (not c!522932)) b!3120078))

(assert (= (and b!3120077 res!1276794) b!3120079))

(assert (= (and b!3120078 c!522933) b!3120081))

(assert (= (and b!3120078 (not c!522933)) b!3120080))

(assert (= (and b!3120081 res!1276793) b!3120075))

(assert (= (and b!3120080 (not res!1276796)) b!3120076))

(assert (= (and b!3120076 res!1276795) b!3120082))

(assert (= (or b!3120081 b!3120082) bm!221712))

(assert (= (or b!3120075 b!3120076) bm!221711))

(assert (= (or b!3120079 bm!221712) bm!221713))

(declare-fun m!3407807 () Bool)

(assert (=> bm!221711 m!3407807))

(declare-fun m!3407809 () Bool)

(assert (=> b!3120077 m!3407809))

(declare-fun m!3407811 () Bool)

(assert (=> bm!221713 m!3407811))

(assert (=> b!3119571 d!862441))

(declare-fun e!1948308 () Bool)

(assert (=> b!3119574 (= tp!977900 e!1948308)))

(declare-fun b!3120094 () Bool)

(declare-fun tp!977953 () Bool)

(declare-fun tp!977954 () Bool)

(assert (=> b!3120094 (= e!1948308 (and tp!977953 tp!977954))))

(declare-fun b!3120095 () Bool)

(declare-fun tp!977951 () Bool)

(assert (=> b!3120095 (= e!1948308 tp!977951)))

(declare-fun b!3120093 () Bool)

(assert (=> b!3120093 (= e!1948308 tp_is_empty!16809)))

(declare-fun b!3120096 () Bool)

(declare-fun tp!977952 () Bool)

(declare-fun tp!977950 () Bool)

(assert (=> b!3120096 (= e!1948308 (and tp!977952 tp!977950))))

(assert (= (and b!3119574 ((_ is ElementMatch!9623) (reg!9952 r!17423))) b!3120093))

(assert (= (and b!3119574 ((_ is Concat!14944) (reg!9952 r!17423))) b!3120094))

(assert (= (and b!3119574 ((_ is Star!9623) (reg!9952 r!17423))) b!3120095))

(assert (= (and b!3119574 ((_ is Union!9623) (reg!9952 r!17423))) b!3120096))

(declare-fun b!3120101 () Bool)

(declare-fun e!1948311 () Bool)

(declare-fun tp!977957 () Bool)

(assert (=> b!3120101 (= e!1948311 (and tp_is_empty!16809 tp!977957))))

(assert (=> b!3119569 (= tp!977897 e!1948311)))

(assert (= (and b!3119569 ((_ is Cons!35364) (t!234553 s!11993))) b!3120101))

(declare-fun e!1948312 () Bool)

(assert (=> b!3119579 (= tp!977898 e!1948312)))

(declare-fun b!3120103 () Bool)

(declare-fun tp!977961 () Bool)

(declare-fun tp!977962 () Bool)

(assert (=> b!3120103 (= e!1948312 (and tp!977961 tp!977962))))

(declare-fun b!3120104 () Bool)

(declare-fun tp!977959 () Bool)

(assert (=> b!3120104 (= e!1948312 tp!977959)))

(declare-fun b!3120102 () Bool)

(assert (=> b!3120102 (= e!1948312 tp_is_empty!16809)))

(declare-fun b!3120105 () Bool)

(declare-fun tp!977960 () Bool)

(declare-fun tp!977958 () Bool)

(assert (=> b!3120105 (= e!1948312 (and tp!977960 tp!977958))))

(assert (= (and b!3119579 ((_ is ElementMatch!9623) (regOne!19759 r!17423))) b!3120102))

(assert (= (and b!3119579 ((_ is Concat!14944) (regOne!19759 r!17423))) b!3120103))

(assert (= (and b!3119579 ((_ is Star!9623) (regOne!19759 r!17423))) b!3120104))

(assert (= (and b!3119579 ((_ is Union!9623) (regOne!19759 r!17423))) b!3120105))

(declare-fun e!1948313 () Bool)

(assert (=> b!3119579 (= tp!977899 e!1948313)))

(declare-fun b!3120107 () Bool)

(declare-fun tp!977966 () Bool)

(declare-fun tp!977967 () Bool)

(assert (=> b!3120107 (= e!1948313 (and tp!977966 tp!977967))))

(declare-fun b!3120108 () Bool)

(declare-fun tp!977964 () Bool)

(assert (=> b!3120108 (= e!1948313 tp!977964)))

(declare-fun b!3120106 () Bool)

(assert (=> b!3120106 (= e!1948313 tp_is_empty!16809)))

(declare-fun b!3120109 () Bool)

(declare-fun tp!977965 () Bool)

(declare-fun tp!977963 () Bool)

(assert (=> b!3120109 (= e!1948313 (and tp!977965 tp!977963))))

(assert (= (and b!3119579 ((_ is ElementMatch!9623) (regTwo!19759 r!17423))) b!3120106))

(assert (= (and b!3119579 ((_ is Concat!14944) (regTwo!19759 r!17423))) b!3120107))

(assert (= (and b!3119579 ((_ is Star!9623) (regTwo!19759 r!17423))) b!3120108))

(assert (= (and b!3119579 ((_ is Union!9623) (regTwo!19759 r!17423))) b!3120109))

(declare-fun e!1948314 () Bool)

(assert (=> b!3119577 (= tp!977901 e!1948314)))

(declare-fun b!3120111 () Bool)

(declare-fun tp!977971 () Bool)

(declare-fun tp!977972 () Bool)

(assert (=> b!3120111 (= e!1948314 (and tp!977971 tp!977972))))

(declare-fun b!3120112 () Bool)

(declare-fun tp!977969 () Bool)

(assert (=> b!3120112 (= e!1948314 tp!977969)))

(declare-fun b!3120110 () Bool)

(assert (=> b!3120110 (= e!1948314 tp_is_empty!16809)))

(declare-fun b!3120113 () Bool)

(declare-fun tp!977970 () Bool)

(declare-fun tp!977968 () Bool)

(assert (=> b!3120113 (= e!1948314 (and tp!977970 tp!977968))))

(assert (= (and b!3119577 ((_ is ElementMatch!9623) (regOne!19758 r!17423))) b!3120110))

(assert (= (and b!3119577 ((_ is Concat!14944) (regOne!19758 r!17423))) b!3120111))

(assert (= (and b!3119577 ((_ is Star!9623) (regOne!19758 r!17423))) b!3120112))

(assert (= (and b!3119577 ((_ is Union!9623) (regOne!19758 r!17423))) b!3120113))

(declare-fun e!1948315 () Bool)

(assert (=> b!3119577 (= tp!977896 e!1948315)))

(declare-fun b!3120115 () Bool)

(declare-fun tp!977976 () Bool)

(declare-fun tp!977977 () Bool)

(assert (=> b!3120115 (= e!1948315 (and tp!977976 tp!977977))))

(declare-fun b!3120116 () Bool)

(declare-fun tp!977974 () Bool)

(assert (=> b!3120116 (= e!1948315 tp!977974)))

(declare-fun b!3120114 () Bool)

(assert (=> b!3120114 (= e!1948315 tp_is_empty!16809)))

(declare-fun b!3120117 () Bool)

(declare-fun tp!977975 () Bool)

(declare-fun tp!977973 () Bool)

(assert (=> b!3120117 (= e!1948315 (and tp!977975 tp!977973))))

(assert (= (and b!3119577 ((_ is ElementMatch!9623) (regTwo!19758 r!17423))) b!3120114))

(assert (= (and b!3119577 ((_ is Concat!14944) (regTwo!19758 r!17423))) b!3120115))

(assert (= (and b!3119577 ((_ is Star!9623) (regTwo!19758 r!17423))) b!3120116))

(assert (= (and b!3119577 ((_ is Union!9623) (regTwo!19758 r!17423))) b!3120117))

(check-sat (not b!3120058) (not bm!221633) (not b!3120109) (not b!3120108) (not b!3120112) (not b!3120054) tp_is_empty!16809 (not b!3120062) (not b!3120101) (not bm!221713) (not bm!221711) (not b!3119653) (not b!3120116) (not d!862435) (not b!3120047) (not b!3120013) (not bm!221706) (not d!862431) (not b!3120077) (not bm!221645) (not b!3120065) (not d!862397) (not b!3120008) (not b!3120104) (not bm!221703) (not bm!221636) (not bm!221632) (not b!3120094) (not b!3120067) (not d!862437) (not b!3119698) (not bm!221638) (not b!3120111) (not b!3120113) (not b!3120096) (not bm!221710) (not bm!221709) (not b!3120107) (not b!3120103) (not b!3120095) (not b!3120051) (not b!3120117) (not bm!221647) (not bm!221650) (not b!3120048) (not b!3119998) (not bm!221648) (not b!3120068) (not b!3119993) (not b!3120105) (not bm!221704) (not bm!221635) (not b!3119707) (not b!3120115) (not b!3120072) (not b!3119675) (not d!862439) (not b!3120053) (not bm!221705) (not b!3120061))
(check-sat)
