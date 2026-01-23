; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!44888 () Bool)

(assert start!44888)

(declare-fun b!470609 () Bool)

(assert (=> b!470609 true))

(declare-fun b!470603 () Bool)

(declare-fun e!287801 () Bool)

(declare-fun tp!130248 () Bool)

(assert (=> b!470603 (= e!287801 tp!130248)))

(declare-fun res!208619 () Bool)

(declare-fun e!287799 () Bool)

(assert (=> start!44888 (=> (not res!208619) (not e!287799))))

(declare-datatypes ((C!3150 0))(
  ( (C!3151 (val!1461 Int)) )
))
(declare-datatypes ((Regex!1114 0))(
  ( (ElementMatch!1114 (c!94715 C!3150)) (Concat!2014 (regOne!2740 Regex!1114) (regTwo!2740 Regex!1114)) (EmptyExpr!1114) (Star!1114 (reg!1443 Regex!1114)) (EmptyLang!1114) (Union!1114 (regOne!2741 Regex!1114) (regTwo!2741 Regex!1114)) )
))
(declare-fun r!23305 () Regex!1114)

(declare-fun validRegex!342 (Regex!1114) Bool)

(assert (=> start!44888 (= res!208619 (validRegex!342 r!23305))))

(assert (=> start!44888 e!287799))

(assert (=> start!44888 e!287801))

(declare-fun b!470604 () Bool)

(declare-fun res!208618 () Bool)

(assert (=> b!470604 (=> (not res!208618) (not e!287799))))

(declare-fun lostCause!108 (Regex!1114) Bool)

(assert (=> b!470604 (= res!208618 (not (lostCause!108 r!23305)))))

(declare-fun b!470605 () Bool)

(declare-fun tp!130251 () Bool)

(declare-fun tp!130252 () Bool)

(assert (=> b!470605 (= e!287801 (and tp!130251 tp!130252))))

(declare-fun b!470606 () Bool)

(declare-fun e!287800 () Bool)

(assert (=> b!470606 (= e!287799 (not e!287800))))

(declare-fun res!208620 () Bool)

(assert (=> b!470606 (=> res!208620 e!287800)))

(declare-datatypes ((List!4528 0))(
  ( (Nil!4518) (Cons!4518 (h!9915 C!3150) (t!72922 List!4528)) )
))
(declare-datatypes ((Option!1204 0))(
  ( (None!1203) (Some!1203 (v!15604 List!4528)) )
))
(declare-fun lt!209773 () Option!1204)

(declare-fun isDefined!1039 (Option!1204) Bool)

(assert (=> b!470606 (= res!208620 (not (isDefined!1039 lt!209773)))))

(declare-fun matchR!426 (Regex!1114 List!4528) Bool)

(declare-fun get!1677 (Option!1204) List!4528)

(assert (=> b!470606 (matchR!426 r!23305 (get!1677 lt!209773))))

(declare-fun getLanguageWitness!39 (Regex!1114) Option!1204)

(assert (=> b!470606 (= lt!209773 (getLanguageWitness!39 r!23305))))

(declare-datatypes ((Unit!8245 0))(
  ( (Unit!8246) )
))
(declare-fun lt!209775 () Unit!8245)

(declare-fun lemmaGetWitnessMatches!7 (Regex!1114) Unit!8245)

(assert (=> b!470606 (= lt!209775 (lemmaGetWitnessMatches!7 r!23305))))

(declare-fun b!470607 () Bool)

(declare-fun tp!130250 () Bool)

(declare-fun tp!130249 () Bool)

(assert (=> b!470607 (= e!287801 (and tp!130250 tp!130249))))

(declare-fun b!470608 () Bool)

(declare-fun tp_is_empty!2025 () Bool)

(assert (=> b!470608 (= e!287801 tp_is_empty!2025)))

(declare-fun lambda!13855 () Int)

(declare-fun Exists!1 (Int) Bool)

(assert (=> b!470609 (= e!287800 (Exists!1 lambda!13855))))

(declare-fun lt!209774 () Unit!8245)

(declare-fun ExistsThe!3 (Option!1204 Int) Unit!8245)

(assert (=> b!470609 (= lt!209774 (ExistsThe!3 lt!209773 lambda!13855))))

(assert (= (and start!44888 res!208619) b!470604))

(assert (= (and b!470604 res!208618) b!470606))

(assert (= (and b!470606 (not res!208620)) b!470609))

(assert (= (and start!44888 (is-ElementMatch!1114 r!23305)) b!470608))

(assert (= (and start!44888 (is-Concat!2014 r!23305)) b!470605))

(assert (= (and start!44888 (is-Star!1114 r!23305)) b!470603))

(assert (= (and start!44888 (is-Union!1114 r!23305)) b!470607))

(declare-fun m!744439 () Bool)

(assert (=> start!44888 m!744439))

(declare-fun m!744441 () Bool)

(assert (=> b!470604 m!744441))

(declare-fun m!744443 () Bool)

(assert (=> b!470606 m!744443))

(declare-fun m!744445 () Bool)

(assert (=> b!470606 m!744445))

(declare-fun m!744447 () Bool)

(assert (=> b!470606 m!744447))

(assert (=> b!470606 m!744443))

(declare-fun m!744449 () Bool)

(assert (=> b!470606 m!744449))

(declare-fun m!744451 () Bool)

(assert (=> b!470606 m!744451))

(declare-fun m!744453 () Bool)

(assert (=> b!470609 m!744453))

(declare-fun m!744455 () Bool)

(assert (=> b!470609 m!744455))

(push 1)

(assert (not b!470605))

(assert (not b!470607))

(assert tp_is_empty!2025)

(assert (not start!44888))

(assert (not b!470609))

(assert (not b!470606))

(assert (not b!470604))

(assert (not b!470603))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!179181 () Bool)

(declare-fun lostCauseFct!40 (Regex!1114) Bool)

(assert (=> d!179181 (= (lostCause!108 r!23305) (lostCauseFct!40 r!23305))))

(declare-fun bs!58373 () Bool)

(assert (= bs!58373 d!179181))

(declare-fun m!744475 () Bool)

(assert (=> bs!58373 m!744475))

(assert (=> b!470604 d!179181))

(declare-fun d!179183 () Bool)

(declare-fun choose!3524 (Int) Bool)

(assert (=> d!179183 (= (Exists!1 lambda!13855) (choose!3524 lambda!13855))))

(declare-fun bs!58374 () Bool)

(assert (= bs!58374 d!179183))

(declare-fun m!744477 () Bool)

(assert (=> bs!58374 m!744477))

(assert (=> b!470609 d!179183))

(declare-fun d!179185 () Bool)

(assert (=> d!179185 (Exists!1 lambda!13855)))

(declare-fun lt!209787 () Unit!8245)

(declare-fun choose!3525 (Option!1204 Int) Unit!8245)

(assert (=> d!179185 (= lt!209787 (choose!3525 lt!209773 lambda!13855))))

(declare-fun dynLambda!2775 (Int Option!1204) Bool)

(assert (=> d!179185 (dynLambda!2775 lambda!13855 lt!209773)))

(assert (=> d!179185 (= (ExistsThe!3 lt!209773 lambda!13855) lt!209787)))

(declare-fun b_lambda!19635 () Bool)

(assert (=> (not b_lambda!19635) (not d!179185)))

(declare-fun bs!58375 () Bool)

(assert (= bs!58375 d!179185))

(assert (=> bs!58375 m!744453))

(declare-fun m!744479 () Bool)

(assert (=> bs!58375 m!744479))

(declare-fun m!744481 () Bool)

(assert (=> bs!58375 m!744481))

(assert (=> b!470609 d!179185))

(declare-fun bm!32764 () Bool)

(declare-fun call!32770 () Bool)

(declare-fun c!94721 () Bool)

(assert (=> bm!32764 (= call!32770 (validRegex!342 (ite c!94721 (regTwo!2741 r!23305) (regTwo!2740 r!23305))))))

(declare-fun d!179187 () Bool)

(declare-fun res!208647 () Bool)

(declare-fun e!287830 () Bool)

(assert (=> d!179187 (=> res!208647 e!287830)))

(assert (=> d!179187 (= res!208647 (is-ElementMatch!1114 r!23305))))

(assert (=> d!179187 (= (validRegex!342 r!23305) e!287830)))

(declare-fun b!470657 () Bool)

(declare-fun e!287833 () Bool)

(declare-fun e!287834 () Bool)

(assert (=> b!470657 (= e!287833 e!287834)))

(assert (=> b!470657 (= c!94721 (is-Union!1114 r!23305))))

(declare-fun b!470658 () Bool)

(declare-fun res!208645 () Bool)

(declare-fun e!287832 () Bool)

(assert (=> b!470658 (=> res!208645 e!287832)))

(assert (=> b!470658 (= res!208645 (not (is-Concat!2014 r!23305)))))

(assert (=> b!470658 (= e!287834 e!287832)))

(declare-fun b!470659 () Bool)

(declare-fun e!287835 () Bool)

(assert (=> b!470659 (= e!287835 call!32770)))

(declare-fun bm!32765 () Bool)

(declare-fun call!32769 () Bool)

(declare-fun c!94722 () Bool)

(assert (=> bm!32765 (= call!32769 (validRegex!342 (ite c!94722 (reg!1443 r!23305) (ite c!94721 (regOne!2741 r!23305) (regOne!2740 r!23305)))))))

(declare-fun b!470660 () Bool)

(assert (=> b!470660 (= e!287830 e!287833)))

(assert (=> b!470660 (= c!94722 (is-Star!1114 r!23305))))

(declare-fun bm!32766 () Bool)

(declare-fun call!32771 () Bool)

(assert (=> bm!32766 (= call!32771 call!32769)))

(declare-fun b!470661 () Bool)

(declare-fun res!208644 () Bool)

(declare-fun e!287829 () Bool)

(assert (=> b!470661 (=> (not res!208644) (not e!287829))))

(assert (=> b!470661 (= res!208644 call!32771)))

(assert (=> b!470661 (= e!287834 e!287829)))

(declare-fun b!470662 () Bool)

(assert (=> b!470662 (= e!287829 call!32770)))

(declare-fun b!470663 () Bool)

(declare-fun e!287831 () Bool)

(assert (=> b!470663 (= e!287831 call!32769)))

(declare-fun b!470664 () Bool)

(assert (=> b!470664 (= e!287833 e!287831)))

(declare-fun res!208648 () Bool)

(declare-fun nullable!259 (Regex!1114) Bool)

(assert (=> b!470664 (= res!208648 (not (nullable!259 (reg!1443 r!23305))))))

(assert (=> b!470664 (=> (not res!208648) (not e!287831))))

(declare-fun b!470665 () Bool)

(assert (=> b!470665 (= e!287832 e!287835)))

(declare-fun res!208646 () Bool)

(assert (=> b!470665 (=> (not res!208646) (not e!287835))))

(assert (=> b!470665 (= res!208646 call!32771)))

(assert (= (and d!179187 (not res!208647)) b!470660))

(assert (= (and b!470660 c!94722) b!470664))

(assert (= (and b!470660 (not c!94722)) b!470657))

(assert (= (and b!470664 res!208648) b!470663))

(assert (= (and b!470657 c!94721) b!470661))

(assert (= (and b!470657 (not c!94721)) b!470658))

(assert (= (and b!470661 res!208644) b!470662))

(assert (= (and b!470658 (not res!208645)) b!470665))

(assert (= (and b!470665 res!208646) b!470659))

(assert (= (or b!470661 b!470665) bm!32766))

(assert (= (or b!470662 b!470659) bm!32764))

(assert (= (or b!470663 bm!32766) bm!32765))

(declare-fun m!744483 () Bool)

(assert (=> bm!32764 m!744483))

(declare-fun m!744485 () Bool)

(assert (=> bm!32765 m!744485))

(declare-fun m!744487 () Bool)

(assert (=> b!470664 m!744487))

(assert (=> start!44888 d!179187))

(declare-fun d!179189 () Bool)

(assert (=> d!179189 (matchR!426 r!23305 (get!1677 (getLanguageWitness!39 r!23305)))))

(declare-fun lt!209790 () Unit!8245)

(declare-fun choose!3526 (Regex!1114) Unit!8245)

(assert (=> d!179189 (= lt!209790 (choose!3526 r!23305))))

(assert (=> d!179189 (validRegex!342 r!23305)))

(assert (=> d!179189 (= (lemmaGetWitnessMatches!7 r!23305) lt!209790)))

(declare-fun bs!58376 () Bool)

(assert (= bs!58376 d!179189))

(assert (=> bs!58376 m!744449))

(declare-fun m!744489 () Bool)

(assert (=> bs!58376 m!744489))

(declare-fun m!744491 () Bool)

(assert (=> bs!58376 m!744491))

(assert (=> bs!58376 m!744449))

(assert (=> bs!58376 m!744489))

(assert (=> bs!58376 m!744439))

(declare-fun m!744493 () Bool)

(assert (=> bs!58376 m!744493))

(assert (=> b!470606 d!179189))

(declare-fun b!470694 () Bool)

(declare-fun res!208668 () Bool)

(declare-fun e!287850 () Bool)

(assert (=> b!470694 (=> res!208668 e!287850)))

(declare-fun isEmpty!3522 (List!4528) Bool)

(declare-fun tail!661 (List!4528) List!4528)

(assert (=> b!470694 (= res!208668 (not (isEmpty!3522 (tail!661 (get!1677 lt!209773)))))))

(declare-fun d!179193 () Bool)

(declare-fun e!287856 () Bool)

(assert (=> d!179193 e!287856))

(declare-fun c!94730 () Bool)

(assert (=> d!179193 (= c!94730 (is-EmptyExpr!1114 r!23305))))

(declare-fun lt!209796 () Bool)

(declare-fun e!287852 () Bool)

(assert (=> d!179193 (= lt!209796 e!287852)))

(declare-fun c!94731 () Bool)

(assert (=> d!179193 (= c!94731 (isEmpty!3522 (get!1677 lt!209773)))))

(assert (=> d!179193 (validRegex!342 r!23305)))

(assert (=> d!179193 (= (matchR!426 r!23305 (get!1677 lt!209773)) lt!209796)))

(declare-fun b!470695 () Bool)

(declare-fun e!287854 () Bool)

(declare-fun e!287851 () Bool)

(assert (=> b!470695 (= e!287854 e!287851)))

(declare-fun res!208667 () Bool)

(assert (=> b!470695 (=> (not res!208667) (not e!287851))))

(assert (=> b!470695 (= res!208667 (not lt!209796))))

(declare-fun b!470696 () Bool)

(declare-fun call!32774 () Bool)

(assert (=> b!470696 (= e!287856 (= lt!209796 call!32774))))

(declare-fun b!470697 () Bool)

(assert (=> b!470697 (= e!287851 e!287850)))

(declare-fun res!208671 () Bool)

(assert (=> b!470697 (=> res!208671 e!287850)))

(assert (=> b!470697 (= res!208671 call!32774)))

(declare-fun b!470698 () Bool)

(declare-fun res!208665 () Bool)

(declare-fun e!287853 () Bool)

(assert (=> b!470698 (=> (not res!208665) (not e!287853))))

(assert (=> b!470698 (= res!208665 (isEmpty!3522 (tail!661 (get!1677 lt!209773))))))

(declare-fun b!470699 () Bool)

(declare-fun res!208666 () Bool)

(assert (=> b!470699 (=> (not res!208666) (not e!287853))))

(assert (=> b!470699 (= res!208666 (not call!32774))))

(declare-fun b!470700 () Bool)

(declare-fun head!1141 (List!4528) C!3150)

(assert (=> b!470700 (= e!287850 (not (= (head!1141 (get!1677 lt!209773)) (c!94715 r!23305))))))

(declare-fun b!470701 () Bool)

(declare-fun e!287855 () Bool)

(assert (=> b!470701 (= e!287855 (not lt!209796))))

(declare-fun b!470702 () Bool)

(declare-fun derivativeStep!223 (Regex!1114 C!3150) Regex!1114)

(assert (=> b!470702 (= e!287852 (matchR!426 (derivativeStep!223 r!23305 (head!1141 (get!1677 lt!209773))) (tail!661 (get!1677 lt!209773))))))

(declare-fun b!470703 () Bool)

(declare-fun res!208672 () Bool)

(assert (=> b!470703 (=> res!208672 e!287854)))

(assert (=> b!470703 (= res!208672 (not (is-ElementMatch!1114 r!23305)))))

(assert (=> b!470703 (= e!287855 e!287854)))

(declare-fun b!470704 () Bool)

(assert (=> b!470704 (= e!287856 e!287855)))

(declare-fun c!94729 () Bool)

(assert (=> b!470704 (= c!94729 (is-EmptyLang!1114 r!23305))))

(declare-fun b!470705 () Bool)

(declare-fun res!208670 () Bool)

(assert (=> b!470705 (=> res!208670 e!287854)))

(assert (=> b!470705 (= res!208670 e!287853)))

(declare-fun res!208669 () Bool)

(assert (=> b!470705 (=> (not res!208669) (not e!287853))))

(assert (=> b!470705 (= res!208669 lt!209796)))

(declare-fun b!470706 () Bool)

(assert (=> b!470706 (= e!287852 (nullable!259 r!23305))))

(declare-fun bm!32769 () Bool)

(assert (=> bm!32769 (= call!32774 (isEmpty!3522 (get!1677 lt!209773)))))

(declare-fun b!470707 () Bool)

(assert (=> b!470707 (= e!287853 (= (head!1141 (get!1677 lt!209773)) (c!94715 r!23305)))))

(assert (= (and d!179193 c!94731) b!470706))

(assert (= (and d!179193 (not c!94731)) b!470702))

(assert (= (and d!179193 c!94730) b!470696))

(assert (= (and d!179193 (not c!94730)) b!470704))

(assert (= (and b!470704 c!94729) b!470701))

(assert (= (and b!470704 (not c!94729)) b!470703))

(assert (= (and b!470703 (not res!208672)) b!470705))

(assert (= (and b!470705 res!208669) b!470699))

(assert (= (and b!470699 res!208666) b!470698))

(assert (= (and b!470698 res!208665) b!470707))

(assert (= (and b!470705 (not res!208670)) b!470695))

(assert (= (and b!470695 res!208667) b!470697))

(assert (= (and b!470697 (not res!208671)) b!470694))

(assert (= (and b!470694 (not res!208668)) b!470700))

(assert (= (or b!470696 b!470697 b!470699) bm!32769))

(assert (=> d!179193 m!744443))

(declare-fun m!744503 () Bool)

(assert (=> d!179193 m!744503))

(assert (=> d!179193 m!744439))

(assert (=> b!470694 m!744443))

(declare-fun m!744505 () Bool)

(assert (=> b!470694 m!744505))

(assert (=> b!470694 m!744505))

(declare-fun m!744507 () Bool)

(assert (=> b!470694 m!744507))

(assert (=> b!470702 m!744443))

(declare-fun m!744509 () Bool)

(assert (=> b!470702 m!744509))

(assert (=> b!470702 m!744509))

(declare-fun m!744511 () Bool)

(assert (=> b!470702 m!744511))

(assert (=> b!470702 m!744443))

(assert (=> b!470702 m!744505))

(assert (=> b!470702 m!744511))

(assert (=> b!470702 m!744505))

(declare-fun m!744513 () Bool)

(assert (=> b!470702 m!744513))

(assert (=> bm!32769 m!744443))

(assert (=> bm!32769 m!744503))

(declare-fun m!744515 () Bool)

(assert (=> b!470706 m!744515))

(assert (=> b!470707 m!744443))

(assert (=> b!470707 m!744509))

(assert (=> b!470700 m!744443))

(assert (=> b!470700 m!744509))

(assert (=> b!470698 m!744443))

(assert (=> b!470698 m!744505))

(assert (=> b!470698 m!744505))

(assert (=> b!470698 m!744507))

(assert (=> b!470606 d!179193))

(declare-fun d!179201 () Bool)

(assert (=> d!179201 (= (get!1677 lt!209773) (v!15604 lt!209773))))

(assert (=> b!470606 d!179201))

(declare-fun b!470758 () Bool)

(declare-fun e!287887 () Option!1204)

(declare-fun e!287888 () Option!1204)

(assert (=> b!470758 (= e!287887 e!287888)))

(declare-fun lt!209803 () Option!1204)

(declare-fun call!32785 () Option!1204)

(assert (=> b!470758 (= lt!209803 call!32785)))

(declare-fun c!94757 () Bool)

(assert (=> b!470758 (= c!94757 (is-Some!1203 lt!209803))))

(declare-fun b!470759 () Bool)

(declare-fun e!287890 () Option!1204)

(assert (=> b!470759 (= e!287890 (Some!1203 Nil!4518))))

(declare-fun b!470760 () Bool)

(declare-fun e!287894 () Option!1204)

(assert (=> b!470760 (= e!287894 (Some!1203 Nil!4518))))

(declare-fun b!470761 () Bool)

(declare-fun e!287893 () Option!1204)

(assert (=> b!470761 (= e!287890 e!287893)))

(declare-fun c!94755 () Bool)

(assert (=> b!470761 (= c!94755 (is-EmptyLang!1114 r!23305))))

(declare-fun b!470763 () Bool)

(assert (=> b!470763 (= e!287893 None!1203)))

(declare-fun b!470764 () Bool)

(declare-fun e!287889 () Option!1204)

(assert (=> b!470764 (= e!287889 (Some!1203 (Cons!4518 (c!94715 r!23305) Nil!4518)))))

(declare-fun b!470765 () Bool)

(assert (=> b!470765 (= e!287888 lt!209803)))

(declare-fun bm!32780 () Bool)

(declare-fun call!32786 () Option!1204)

(declare-fun c!94756 () Bool)

(assert (=> bm!32780 (= call!32786 (getLanguageWitness!39 (ite c!94756 (regTwo!2741 r!23305) (regTwo!2740 r!23305))))))

(declare-fun b!470766 () Bool)

(declare-fun e!287892 () Option!1204)

(assert (=> b!470766 (= e!287887 e!287892)))

(declare-fun lt!209804 () Option!1204)

(assert (=> b!470766 (= lt!209804 call!32785)))

(declare-fun c!94758 () Bool)

(assert (=> b!470766 (= c!94758 (is-Some!1203 lt!209804))))

(declare-fun bm!32781 () Bool)

(assert (=> bm!32781 (= call!32785 (getLanguageWitness!39 (ite c!94756 (regOne!2741 r!23305) (regOne!2740 r!23305))))))

(declare-fun d!179203 () Bool)

(declare-fun c!94754 () Bool)

(assert (=> d!179203 (= c!94754 (is-EmptyExpr!1114 r!23305))))

(assert (=> d!179203 (= (getLanguageWitness!39 r!23305) e!287890)))

(declare-fun b!470762 () Bool)

(declare-fun e!287891 () Option!1204)

(declare-fun lt!209805 () Option!1204)

(declare-fun ++!1331 (List!4528 List!4528) List!4528)

(assert (=> b!470762 (= e!287891 (Some!1203 (++!1331 (v!15604 lt!209804) (v!15604 lt!209805))))))

(declare-fun b!470767 () Bool)

(assert (=> b!470767 (= e!287892 None!1203)))

(declare-fun b!470768 () Bool)

(declare-fun c!94752 () Bool)

(assert (=> b!470768 (= c!94752 (is-ElementMatch!1114 r!23305))))

(assert (=> b!470768 (= e!287893 e!287889)))

(declare-fun b!470769 () Bool)

(declare-fun c!94759 () Bool)

(assert (=> b!470769 (= c!94759 (is-Some!1203 lt!209805))))

(assert (=> b!470769 (= lt!209805 call!32786)))

(assert (=> b!470769 (= e!287892 e!287891)))

(declare-fun b!470770 () Bool)

(assert (=> b!470770 (= e!287891 None!1203)))

(declare-fun b!470771 () Bool)

(assert (=> b!470771 (= e!287888 call!32786)))

(declare-fun b!470772 () Bool)

(assert (=> b!470772 (= e!287889 e!287894)))

(declare-fun c!94753 () Bool)

(assert (=> b!470772 (= c!94753 (is-Star!1114 r!23305))))

(declare-fun b!470773 () Bool)

(assert (=> b!470773 (= c!94756 (is-Union!1114 r!23305))))

(assert (=> b!470773 (= e!287894 e!287887)))

(assert (= (and d!179203 c!94754) b!470759))

(assert (= (and d!179203 (not c!94754)) b!470761))

(assert (= (and b!470761 c!94755) b!470763))

(assert (= (and b!470761 (not c!94755)) b!470768))

(assert (= (and b!470768 c!94752) b!470764))

(assert (= (and b!470768 (not c!94752)) b!470772))

(assert (= (and b!470772 c!94753) b!470760))

(assert (= (and b!470772 (not c!94753)) b!470773))

(assert (= (and b!470773 c!94756) b!470758))

(assert (= (and b!470773 (not c!94756)) b!470766))

(assert (= (and b!470758 c!94757) b!470765))

(assert (= (and b!470758 (not c!94757)) b!470771))

(assert (= (and b!470766 c!94758) b!470769))

(assert (= (and b!470766 (not c!94758)) b!470767))

(assert (= (and b!470769 c!94759) b!470762))

(assert (= (and b!470769 (not c!94759)) b!470770))

(assert (= (or b!470771 b!470769) bm!32780))

(assert (= (or b!470758 b!470766) bm!32781))

(declare-fun m!744517 () Bool)

(assert (=> bm!32780 m!744517))

(declare-fun m!744519 () Bool)

(assert (=> bm!32781 m!744519))

(declare-fun m!744521 () Bool)

(assert (=> b!470762 m!744521))

(assert (=> b!470606 d!179203))

(declare-fun d!179205 () Bool)

(declare-fun isEmpty!3523 (Option!1204) Bool)

(assert (=> d!179205 (= (isDefined!1039 lt!209773) (not (isEmpty!3523 lt!209773)))))

(declare-fun bs!58380 () Bool)

(assert (= bs!58380 d!179205))

(declare-fun m!744523 () Bool)

(assert (=> bs!58380 m!744523))

(assert (=> b!470606 d!179205))

(declare-fun b!470786 () Bool)

(declare-fun e!287897 () Bool)

(declare-fun tp!130281 () Bool)

(assert (=> b!470786 (= e!287897 tp!130281)))

(declare-fun b!470787 () Bool)

(declare-fun tp!130282 () Bool)

(declare-fun tp!130279 () Bool)

(assert (=> b!470787 (= e!287897 (and tp!130282 tp!130279))))

(declare-fun b!470784 () Bool)

(assert (=> b!470784 (= e!287897 tp_is_empty!2025)))

(declare-fun b!470785 () Bool)

(declare-fun tp!130280 () Bool)

(declare-fun tp!130278 () Bool)

(assert (=> b!470785 (= e!287897 (and tp!130280 tp!130278))))

(assert (=> b!470603 (= tp!130248 e!287897)))

(assert (= (and b!470603 (is-ElementMatch!1114 (reg!1443 r!23305))) b!470784))

(assert (= (and b!470603 (is-Concat!2014 (reg!1443 r!23305))) b!470785))

(assert (= (and b!470603 (is-Star!1114 (reg!1443 r!23305))) b!470786))

(assert (= (and b!470603 (is-Union!1114 (reg!1443 r!23305))) b!470787))

(declare-fun b!470790 () Bool)

(declare-fun e!287898 () Bool)

(declare-fun tp!130286 () Bool)

(assert (=> b!470790 (= e!287898 tp!130286)))

(declare-fun b!470791 () Bool)

(declare-fun tp!130287 () Bool)

(declare-fun tp!130284 () Bool)

(assert (=> b!470791 (= e!287898 (and tp!130287 tp!130284))))

(declare-fun b!470788 () Bool)

(assert (=> b!470788 (= e!287898 tp_is_empty!2025)))

(declare-fun b!470789 () Bool)

(declare-fun tp!130285 () Bool)

(declare-fun tp!130283 () Bool)

(assert (=> b!470789 (= e!287898 (and tp!130285 tp!130283))))

(assert (=> b!470607 (= tp!130250 e!287898)))

(assert (= (and b!470607 (is-ElementMatch!1114 (regOne!2741 r!23305))) b!470788))

(assert (= (and b!470607 (is-Concat!2014 (regOne!2741 r!23305))) b!470789))

(assert (= (and b!470607 (is-Star!1114 (regOne!2741 r!23305))) b!470790))

(assert (= (and b!470607 (is-Union!1114 (regOne!2741 r!23305))) b!470791))

(declare-fun b!470794 () Bool)

(declare-fun e!287899 () Bool)

(declare-fun tp!130291 () Bool)

(assert (=> b!470794 (= e!287899 tp!130291)))

(declare-fun b!470795 () Bool)

(declare-fun tp!130292 () Bool)

(declare-fun tp!130289 () Bool)

(assert (=> b!470795 (= e!287899 (and tp!130292 tp!130289))))

(declare-fun b!470792 () Bool)

(assert (=> b!470792 (= e!287899 tp_is_empty!2025)))

(declare-fun b!470793 () Bool)

(declare-fun tp!130290 () Bool)

(declare-fun tp!130288 () Bool)

(assert (=> b!470793 (= e!287899 (and tp!130290 tp!130288))))

(assert (=> b!470607 (= tp!130249 e!287899)))

(assert (= (and b!470607 (is-ElementMatch!1114 (regTwo!2741 r!23305))) b!470792))

(assert (= (and b!470607 (is-Concat!2014 (regTwo!2741 r!23305))) b!470793))

(assert (= (and b!470607 (is-Star!1114 (regTwo!2741 r!23305))) b!470794))

(assert (= (and b!470607 (is-Union!1114 (regTwo!2741 r!23305))) b!470795))

(declare-fun b!470798 () Bool)

(declare-fun e!287900 () Bool)

(declare-fun tp!130296 () Bool)

(assert (=> b!470798 (= e!287900 tp!130296)))

(declare-fun b!470799 () Bool)

(declare-fun tp!130297 () Bool)

(declare-fun tp!130294 () Bool)

(assert (=> b!470799 (= e!287900 (and tp!130297 tp!130294))))

(declare-fun b!470796 () Bool)

(assert (=> b!470796 (= e!287900 tp_is_empty!2025)))

(declare-fun b!470797 () Bool)

(declare-fun tp!130295 () Bool)

(declare-fun tp!130293 () Bool)

(assert (=> b!470797 (= e!287900 (and tp!130295 tp!130293))))

(assert (=> b!470605 (= tp!130251 e!287900)))

(assert (= (and b!470605 (is-ElementMatch!1114 (regOne!2740 r!23305))) b!470796))

(assert (= (and b!470605 (is-Concat!2014 (regOne!2740 r!23305))) b!470797))

(assert (= (and b!470605 (is-Star!1114 (regOne!2740 r!23305))) b!470798))

(assert (= (and b!470605 (is-Union!1114 (regOne!2740 r!23305))) b!470799))

(declare-fun b!470802 () Bool)

(declare-fun e!287901 () Bool)

(declare-fun tp!130301 () Bool)

(assert (=> b!470802 (= e!287901 tp!130301)))

(declare-fun b!470803 () Bool)

(declare-fun tp!130302 () Bool)

(declare-fun tp!130299 () Bool)

(assert (=> b!470803 (= e!287901 (and tp!130302 tp!130299))))

(declare-fun b!470800 () Bool)

(assert (=> b!470800 (= e!287901 tp_is_empty!2025)))

(declare-fun b!470801 () Bool)

(declare-fun tp!130300 () Bool)

(declare-fun tp!130298 () Bool)

(assert (=> b!470801 (= e!287901 (and tp!130300 tp!130298))))

(assert (=> b!470605 (= tp!130252 e!287901)))

(assert (= (and b!470605 (is-ElementMatch!1114 (regTwo!2740 r!23305))) b!470800))

(assert (= (and b!470605 (is-Concat!2014 (regTwo!2740 r!23305))) b!470801))

(assert (= (and b!470605 (is-Star!1114 (regTwo!2740 r!23305))) b!470802))

(assert (= (and b!470605 (is-Union!1114 (regTwo!2740 r!23305))) b!470803))

(declare-fun b_lambda!19639 () Bool)

(assert (= b_lambda!19635 (or b!470609 b_lambda!19639)))

(declare-fun bs!58381 () Bool)

(declare-fun d!179207 () Bool)

(assert (= bs!58381 (and d!179207 b!470609)))

(declare-fun res!208688 () Bool)

(declare-fun e!287909 () Bool)

(assert (=> bs!58381 (=> (not res!208688) (not e!287909))))

(assert (=> bs!58381 (= res!208688 (isDefined!1039 lt!209773))))

(assert (=> bs!58381 (= (dynLambda!2775 lambda!13855 lt!209773) e!287909)))

(declare-fun b!470813 () Bool)

(assert (=> b!470813 (= e!287909 (matchR!426 r!23305 (get!1677 lt!209773)))))

(assert (= (and bs!58381 res!208688) b!470813))

(assert (=> bs!58381 m!744451))

(assert (=> b!470813 m!744443))

(assert (=> b!470813 m!744443))

(assert (=> b!470813 m!744445))

(assert (=> d!179185 d!179207))

(push 1)

(assert (not bm!32781))

(assert (not b!470797))

(assert (not b!470786))

(assert (not b!470802))

(assert (not b!470813))

(assert (not bm!32769))

(assert (not d!179181))

(assert (not b!470798))

(assert (not b!470801))

(assert (not b!470794))

(assert (not b!470706))

(assert (not b!470790))

(assert (not b!470700))

(assert (not b!470787))

(assert (not b!470707))

(assert (not b_lambda!19639))

(assert (not d!179189))

(assert (not d!179193))

(assert (not b!470799))

(assert (not b!470789))

(assert (not b!470793))

(assert tp_is_empty!2025)

(assert (not bm!32780))

(assert (not b!470762))

(assert (not b!470664))

(assert (not d!179183))

(assert (not bm!32764))

(assert (not d!179185))

(assert (not d!179205))

(assert (not b!470785))

(assert (not b!470803))

(assert (not b!470694))

(assert (not bs!58381))

(assert (not b!470795))

(assert (not bm!32765))

(assert (not b!470698))

(assert (not b!470702))

(assert (not b!470791))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

