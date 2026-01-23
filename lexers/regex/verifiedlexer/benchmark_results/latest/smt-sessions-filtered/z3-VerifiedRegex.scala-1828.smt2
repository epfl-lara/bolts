; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!91122 () Bool)

(assert start!91122)

(declare-fun b!1059753 () Bool)

(declare-fun res!473666 () Bool)

(declare-fun e!672615 () Bool)

(assert (=> b!1059753 (=> res!473666 e!672615)))

(declare-datatypes ((C!6400 0))(
  ( (C!6401 (val!3448 Int)) )
))
(declare-datatypes ((Regex!2915 0))(
  ( (ElementMatch!2915 (c!177520 C!6400)) (Concat!4748 (regOne!6342 Regex!2915) (regTwo!6342 Regex!2915)) (EmptyExpr!2915) (Star!2915 (reg!3244 Regex!2915)) (EmptyLang!2915) (Union!2915 (regOne!6343 Regex!2915) (regTwo!6343 Regex!2915)) )
))
(declare-fun r!15766 () Regex!2915)

(declare-fun validRegex!1384 (Regex!2915) Bool)

(assert (=> b!1059753 (= res!473666 (not (validRegex!1384 (regTwo!6343 r!15766))))))

(declare-fun b!1059754 () Bool)

(declare-fun lt!359598 () Int)

(declare-fun lt!359606 () Int)

(declare-fun regexDepth!42 (Regex!2915) Int)

(assert (=> b!1059754 (= e!672615 (< (+ lt!359606 lt!359598) (+ (regexDepth!42 r!15766) lt!359598)))))

(declare-datatypes ((List!10145 0))(
  ( (Nil!10129) (Cons!10129 (h!15530 C!6400) (t!101191 List!10145)) )
))
(declare-fun s!10566 () List!10145)

(declare-fun size!8004 (List!10145) Int)

(assert (=> b!1059754 (= lt!359598 (size!8004 s!10566))))

(assert (=> b!1059754 (= lt!359606 (regexDepth!42 (regTwo!6343 r!15766)))))

(declare-fun res!473664 () Bool)

(declare-fun e!672617 () Bool)

(assert (=> start!91122 (=> (not res!473664) (not e!672617))))

(assert (=> start!91122 (= res!473664 (validRegex!1384 r!15766))))

(assert (=> start!91122 e!672617))

(declare-fun e!672613 () Bool)

(assert (=> start!91122 e!672613))

(declare-fun e!672616 () Bool)

(assert (=> start!91122 e!672616))

(declare-fun b!1059755 () Bool)

(declare-fun tp_is_empty!5473 () Bool)

(declare-fun tp!318562 () Bool)

(assert (=> b!1059755 (= e!672616 (and tp_is_empty!5473 tp!318562))))

(declare-fun b!1059756 () Bool)

(declare-fun e!672619 () Bool)

(declare-fun lt!359607 () Regex!2915)

(declare-fun matchR!1451 (Regex!2915 List!10145) Bool)

(assert (=> b!1059756 (= e!672619 (matchR!1451 lt!359607 s!10566))))

(declare-fun b!1059757 () Bool)

(declare-fun e!672618 () Bool)

(assert (=> b!1059757 (= e!672618 e!672615)))

(declare-fun res!473668 () Bool)

(assert (=> b!1059757 (=> res!473668 e!672615)))

(declare-fun lt!359601 () Bool)

(assert (=> b!1059757 (= res!473668 lt!359601)))

(assert (=> b!1059757 e!672619))

(declare-fun res!473663 () Bool)

(assert (=> b!1059757 (=> res!473663 e!672619)))

(assert (=> b!1059757 (= res!473663 lt!359601)))

(declare-fun lt!359599 () Regex!2915)

(assert (=> b!1059757 (= lt!359601 (matchR!1451 lt!359599 s!10566))))

(declare-datatypes ((Unit!15505 0))(
  ( (Unit!15506) )
))
(declare-fun lt!359605 () Unit!15505)

(declare-fun lemmaRegexUnionAcceptsThenOneOfTheTwoAccepts!94 (Regex!2915 Regex!2915 List!10145) Unit!15505)

(assert (=> b!1059757 (= lt!359605 (lemmaRegexUnionAcceptsThenOneOfTheTwoAccepts!94 lt!359599 lt!359607 s!10566))))

(declare-fun lt!359604 () Regex!2915)

(declare-fun matchRSpec!714 (Regex!2915 List!10145) Bool)

(assert (=> b!1059757 (matchRSpec!714 lt!359604 s!10566)))

(declare-fun lt!359603 () Unit!15505)

(declare-fun mainMatchTheorem!714 (Regex!2915 List!10145) Unit!15505)

(assert (=> b!1059757 (= lt!359603 (mainMatchTheorem!714 lt!359604 s!10566))))

(declare-fun b!1059758 () Bool)

(assert (=> b!1059758 (= e!672613 tp_is_empty!5473)))

(declare-fun b!1059759 () Bool)

(declare-fun tp!318559 () Bool)

(declare-fun tp!318560 () Bool)

(assert (=> b!1059759 (= e!672613 (and tp!318559 tp!318560))))

(declare-fun b!1059760 () Bool)

(declare-fun e!672614 () Bool)

(assert (=> b!1059760 (= e!672614 e!672618)))

(declare-fun res!473667 () Bool)

(assert (=> b!1059760 (=> res!473667 e!672618)))

(assert (=> b!1059760 (= res!473667 (not (matchR!1451 lt!359604 s!10566)))))

(assert (=> b!1059760 (= lt!359604 (Union!2915 lt!359599 lt!359607))))

(declare-fun removeUselessConcat!464 (Regex!2915) Regex!2915)

(assert (=> b!1059760 (= lt!359607 (removeUselessConcat!464 (regTwo!6343 r!15766)))))

(assert (=> b!1059760 (= lt!359599 (removeUselessConcat!464 (regOne!6343 r!15766)))))

(declare-fun b!1059761 () Bool)

(assert (=> b!1059761 (= e!672617 (not e!672614))))

(declare-fun res!473665 () Bool)

(assert (=> b!1059761 (=> res!473665 e!672614)))

(declare-fun lt!359602 () Bool)

(get-info :version)

(assert (=> b!1059761 (= res!473665 (or lt!359602 (and ((_ is Concat!4748) r!15766) ((_ is EmptyExpr!2915) (regOne!6342 r!15766))) (and ((_ is Concat!4748) r!15766) ((_ is EmptyExpr!2915) (regTwo!6342 r!15766))) ((_ is Concat!4748) r!15766) (not ((_ is Union!2915) r!15766))))))

(assert (=> b!1059761 (= lt!359602 (matchRSpec!714 r!15766 s!10566))))

(assert (=> b!1059761 (= lt!359602 (matchR!1451 r!15766 s!10566))))

(declare-fun lt!359600 () Unit!15505)

(assert (=> b!1059761 (= lt!359600 (mainMatchTheorem!714 r!15766 s!10566))))

(declare-fun b!1059762 () Bool)

(declare-fun tp!318563 () Bool)

(assert (=> b!1059762 (= e!672613 tp!318563)))

(declare-fun b!1059763 () Bool)

(declare-fun tp!318564 () Bool)

(declare-fun tp!318561 () Bool)

(assert (=> b!1059763 (= e!672613 (and tp!318564 tp!318561))))

(assert (= (and start!91122 res!473664) b!1059761))

(assert (= (and b!1059761 (not res!473665)) b!1059760))

(assert (= (and b!1059760 (not res!473667)) b!1059757))

(assert (= (and b!1059757 (not res!473663)) b!1059756))

(assert (= (and b!1059757 (not res!473668)) b!1059753))

(assert (= (and b!1059753 (not res!473666)) b!1059754))

(assert (= (and start!91122 ((_ is ElementMatch!2915) r!15766)) b!1059758))

(assert (= (and start!91122 ((_ is Concat!4748) r!15766)) b!1059763))

(assert (= (and start!91122 ((_ is Star!2915) r!15766)) b!1059762))

(assert (= (and start!91122 ((_ is Union!2915) r!15766)) b!1059759))

(assert (= (and start!91122 ((_ is Cons!10129) s!10566)) b!1059755))

(declare-fun m!1220525 () Bool)

(assert (=> b!1059754 m!1220525))

(declare-fun m!1220527 () Bool)

(assert (=> b!1059754 m!1220527))

(declare-fun m!1220529 () Bool)

(assert (=> b!1059754 m!1220529))

(declare-fun m!1220531 () Bool)

(assert (=> b!1059753 m!1220531))

(declare-fun m!1220533 () Bool)

(assert (=> b!1059760 m!1220533))

(declare-fun m!1220535 () Bool)

(assert (=> b!1059760 m!1220535))

(declare-fun m!1220537 () Bool)

(assert (=> b!1059760 m!1220537))

(declare-fun m!1220539 () Bool)

(assert (=> b!1059761 m!1220539))

(declare-fun m!1220541 () Bool)

(assert (=> b!1059761 m!1220541))

(declare-fun m!1220543 () Bool)

(assert (=> b!1059761 m!1220543))

(declare-fun m!1220545 () Bool)

(assert (=> b!1059757 m!1220545))

(declare-fun m!1220547 () Bool)

(assert (=> b!1059757 m!1220547))

(declare-fun m!1220549 () Bool)

(assert (=> b!1059757 m!1220549))

(declare-fun m!1220551 () Bool)

(assert (=> b!1059757 m!1220551))

(declare-fun m!1220553 () Bool)

(assert (=> start!91122 m!1220553))

(declare-fun m!1220555 () Bool)

(assert (=> b!1059756 m!1220555))

(check-sat (not b!1059761) (not b!1059759) (not start!91122) (not b!1059757) (not b!1059760) tp_is_empty!5473 (not b!1059762) (not b!1059753) (not b!1059754) (not b!1059756) (not b!1059763) (not b!1059755))
(check-sat)
(get-model)

(declare-fun b!1059847 () Bool)

(declare-fun e!672675 () Bool)

(declare-fun derivativeStep!807 (Regex!2915 C!6400) Regex!2915)

(declare-fun head!1962 (List!10145) C!6400)

(declare-fun tail!1524 (List!10145) List!10145)

(assert (=> b!1059847 (= e!672675 (matchR!1451 (derivativeStep!807 lt!359599 (head!1962 s!10566)) (tail!1524 s!10566)))))

(declare-fun b!1059848 () Bool)

(declare-fun res!473718 () Bool)

(declare-fun e!672669 () Bool)

(assert (=> b!1059848 (=> res!473718 e!672669)))

(declare-fun e!672674 () Bool)

(assert (=> b!1059848 (= res!473718 e!672674)))

(declare-fun res!473720 () Bool)

(assert (=> b!1059848 (=> (not res!473720) (not e!672674))))

(declare-fun lt!359612 () Bool)

(assert (=> b!1059848 (= res!473720 lt!359612)))

(declare-fun b!1059849 () Bool)

(declare-fun res!473721 () Bool)

(assert (=> b!1059849 (=> (not res!473721) (not e!672674))))

(declare-fun call!76047 () Bool)

(assert (=> b!1059849 (= res!473721 (not call!76047))))

(declare-fun b!1059850 () Bool)

(declare-fun e!672672 () Bool)

(declare-fun e!672671 () Bool)

(assert (=> b!1059850 (= e!672672 e!672671)))

(declare-fun res!473716 () Bool)

(assert (=> b!1059850 (=> res!473716 e!672671)))

(assert (=> b!1059850 (= res!473716 call!76047)))

(declare-fun d!300543 () Bool)

(declare-fun e!672670 () Bool)

(assert (=> d!300543 e!672670))

(declare-fun c!177540 () Bool)

(assert (=> d!300543 (= c!177540 ((_ is EmptyExpr!2915) lt!359599))))

(assert (=> d!300543 (= lt!359612 e!672675)))

(declare-fun c!177539 () Bool)

(declare-fun isEmpty!6547 (List!10145) Bool)

(assert (=> d!300543 (= c!177539 (isEmpty!6547 s!10566))))

(assert (=> d!300543 (validRegex!1384 lt!359599)))

(assert (=> d!300543 (= (matchR!1451 lt!359599 s!10566) lt!359612)))

(declare-fun b!1059851 () Bool)

(declare-fun e!672673 () Bool)

(assert (=> b!1059851 (= e!672673 (not lt!359612))))

(declare-fun b!1059852 () Bool)

(assert (=> b!1059852 (= e!672669 e!672672)))

(declare-fun res!473722 () Bool)

(assert (=> b!1059852 (=> (not res!473722) (not e!672672))))

(assert (=> b!1059852 (= res!473722 (not lt!359612))))

(declare-fun bm!76042 () Bool)

(assert (=> bm!76042 (= call!76047 (isEmpty!6547 s!10566))))

(declare-fun b!1059853 () Bool)

(declare-fun res!473723 () Bool)

(assert (=> b!1059853 (=> res!473723 e!672669)))

(assert (=> b!1059853 (= res!473723 (not ((_ is ElementMatch!2915) lt!359599)))))

(assert (=> b!1059853 (= e!672673 e!672669)))

(declare-fun b!1059854 () Bool)

(declare-fun nullable!1007 (Regex!2915) Bool)

(assert (=> b!1059854 (= e!672675 (nullable!1007 lt!359599))))

(declare-fun b!1059855 () Bool)

(declare-fun res!473719 () Bool)

(assert (=> b!1059855 (=> res!473719 e!672671)))

(assert (=> b!1059855 (= res!473719 (not (isEmpty!6547 (tail!1524 s!10566))))))

(declare-fun b!1059856 () Bool)

(assert (=> b!1059856 (= e!672670 e!672673)))

(declare-fun c!177541 () Bool)

(assert (=> b!1059856 (= c!177541 ((_ is EmptyLang!2915) lt!359599))))

(declare-fun b!1059857 () Bool)

(declare-fun res!473717 () Bool)

(assert (=> b!1059857 (=> (not res!473717) (not e!672674))))

(assert (=> b!1059857 (= res!473717 (isEmpty!6547 (tail!1524 s!10566)))))

(declare-fun b!1059858 () Bool)

(assert (=> b!1059858 (= e!672670 (= lt!359612 call!76047))))

(declare-fun b!1059859 () Bool)

(assert (=> b!1059859 (= e!672674 (= (head!1962 s!10566) (c!177520 lt!359599)))))

(declare-fun b!1059860 () Bool)

(assert (=> b!1059860 (= e!672671 (not (= (head!1962 s!10566) (c!177520 lt!359599))))))

(assert (= (and d!300543 c!177539) b!1059854))

(assert (= (and d!300543 (not c!177539)) b!1059847))

(assert (= (and d!300543 c!177540) b!1059858))

(assert (= (and d!300543 (not c!177540)) b!1059856))

(assert (= (and b!1059856 c!177541) b!1059851))

(assert (= (and b!1059856 (not c!177541)) b!1059853))

(assert (= (and b!1059853 (not res!473723)) b!1059848))

(assert (= (and b!1059848 res!473720) b!1059849))

(assert (= (and b!1059849 res!473721) b!1059857))

(assert (= (and b!1059857 res!473717) b!1059859))

(assert (= (and b!1059848 (not res!473718)) b!1059852))

(assert (= (and b!1059852 res!473722) b!1059850))

(assert (= (and b!1059850 (not res!473716)) b!1059855))

(assert (= (and b!1059855 (not res!473719)) b!1059860))

(assert (= (or b!1059858 b!1059849 b!1059850) bm!76042))

(declare-fun m!1220563 () Bool)

(assert (=> b!1059854 m!1220563))

(declare-fun m!1220565 () Bool)

(assert (=> d!300543 m!1220565))

(declare-fun m!1220567 () Bool)

(assert (=> d!300543 m!1220567))

(declare-fun m!1220569 () Bool)

(assert (=> b!1059860 m!1220569))

(assert (=> b!1059859 m!1220569))

(declare-fun m!1220571 () Bool)

(assert (=> b!1059857 m!1220571))

(assert (=> b!1059857 m!1220571))

(declare-fun m!1220573 () Bool)

(assert (=> b!1059857 m!1220573))

(assert (=> b!1059847 m!1220569))

(assert (=> b!1059847 m!1220569))

(declare-fun m!1220575 () Bool)

(assert (=> b!1059847 m!1220575))

(assert (=> b!1059847 m!1220571))

(assert (=> b!1059847 m!1220575))

(assert (=> b!1059847 m!1220571))

(declare-fun m!1220577 () Bool)

(assert (=> b!1059847 m!1220577))

(assert (=> bm!76042 m!1220565))

(assert (=> b!1059855 m!1220571))

(assert (=> b!1059855 m!1220571))

(assert (=> b!1059855 m!1220573))

(assert (=> b!1059757 d!300543))

(declare-fun d!300547 () Bool)

(declare-fun e!672687 () Bool)

(assert (=> d!300547 e!672687))

(declare-fun res!473736 () Bool)

(assert (=> d!300547 (=> res!473736 e!672687)))

(assert (=> d!300547 (= res!473736 (matchR!1451 lt!359599 s!10566))))

(declare-fun lt!359616 () Unit!15505)

(declare-fun choose!6750 (Regex!2915 Regex!2915 List!10145) Unit!15505)

(assert (=> d!300547 (= lt!359616 (choose!6750 lt!359599 lt!359607 s!10566))))

(declare-fun e!672688 () Bool)

(assert (=> d!300547 e!672688))

(declare-fun res!473737 () Bool)

(assert (=> d!300547 (=> (not res!473737) (not e!672688))))

(assert (=> d!300547 (= res!473737 (validRegex!1384 lt!359599))))

(assert (=> d!300547 (= (lemmaRegexUnionAcceptsThenOneOfTheTwoAccepts!94 lt!359599 lt!359607 s!10566) lt!359616)))

(declare-fun b!1059879 () Bool)

(assert (=> b!1059879 (= e!672688 (validRegex!1384 lt!359607))))

(declare-fun b!1059880 () Bool)

(assert (=> b!1059880 (= e!672687 (matchR!1451 lt!359607 s!10566))))

(assert (= (and d!300547 res!473737) b!1059879))

(assert (= (and d!300547 (not res!473736)) b!1059880))

(assert (=> d!300547 m!1220545))

(declare-fun m!1220595 () Bool)

(assert (=> d!300547 m!1220595))

(assert (=> d!300547 m!1220567))

(declare-fun m!1220597 () Bool)

(assert (=> b!1059879 m!1220597))

(assert (=> b!1059880 m!1220555))

(assert (=> b!1059757 d!300547))

(declare-fun b!1060184 () Bool)

(assert (=> b!1060184 true))

(assert (=> b!1060184 true))

(declare-fun bs!251808 () Bool)

(declare-fun b!1060191 () Bool)

(assert (= bs!251808 (and b!1060191 b!1060184)))

(declare-fun lambda!38314 () Int)

(declare-fun lambda!38313 () Int)

(assert (=> bs!251808 (not (= lambda!38314 lambda!38313))))

(assert (=> b!1060191 true))

(assert (=> b!1060191 true))

(declare-fun b!1060181 () Bool)

(declare-fun c!177633 () Bool)

(assert (=> b!1060181 (= c!177633 ((_ is Union!2915) lt!359604))))

(declare-fun e!672853 () Bool)

(declare-fun e!672854 () Bool)

(assert (=> b!1060181 (= e!672853 e!672854)))

(declare-fun b!1060182 () Bool)

(declare-fun e!672856 () Bool)

(declare-fun call!76116 () Bool)

(assert (=> b!1060182 (= e!672856 call!76116)))

(declare-fun b!1060183 () Bool)

(declare-fun e!672855 () Bool)

(assert (=> b!1060183 (= e!672856 e!672855)))

(declare-fun res!473828 () Bool)

(assert (=> b!1060183 (= res!473828 (not ((_ is EmptyLang!2915) lt!359604)))))

(assert (=> b!1060183 (=> (not res!473828) (not e!672855))))

(declare-fun bm!76110 () Bool)

(assert (=> bm!76110 (= call!76116 (isEmpty!6547 s!10566))))

(declare-fun e!672852 () Bool)

(declare-fun call!76115 () Bool)

(assert (=> b!1060184 (= e!672852 call!76115)))

(declare-fun b!1060185 () Bool)

(declare-fun e!672851 () Bool)

(assert (=> b!1060185 (= e!672854 e!672851)))

(declare-fun c!177632 () Bool)

(assert (=> b!1060185 (= c!177632 ((_ is Star!2915) lt!359604))))

(declare-fun b!1060186 () Bool)

(declare-fun res!473829 () Bool)

(assert (=> b!1060186 (=> res!473829 e!672852)))

(assert (=> b!1060186 (= res!473829 call!76116)))

(assert (=> b!1060186 (= e!672851 e!672852)))

(declare-fun bm!76111 () Bool)

(declare-fun Exists!642 (Int) Bool)

(assert (=> bm!76111 (= call!76115 (Exists!642 (ite c!177632 lambda!38313 lambda!38314)))))

(declare-fun b!1060187 () Bool)

(declare-fun e!672850 () Bool)

(assert (=> b!1060187 (= e!672854 e!672850)))

(declare-fun res!473827 () Bool)

(assert (=> b!1060187 (= res!473827 (matchRSpec!714 (regOne!6343 lt!359604) s!10566))))

(assert (=> b!1060187 (=> res!473827 e!672850)))

(declare-fun b!1060188 () Bool)

(assert (=> b!1060188 (= e!672850 (matchRSpec!714 (regTwo!6343 lt!359604) s!10566))))

(declare-fun b!1060189 () Bool)

(assert (=> b!1060189 (= e!672853 (= s!10566 (Cons!10129 (c!177520 lt!359604) Nil!10129)))))

(declare-fun d!300551 () Bool)

(declare-fun c!177631 () Bool)

(assert (=> d!300551 (= c!177631 ((_ is EmptyExpr!2915) lt!359604))))

(assert (=> d!300551 (= (matchRSpec!714 lt!359604 s!10566) e!672856)))

(declare-fun b!1060190 () Bool)

(declare-fun c!177634 () Bool)

(assert (=> b!1060190 (= c!177634 ((_ is ElementMatch!2915) lt!359604))))

(assert (=> b!1060190 (= e!672855 e!672853)))

(assert (=> b!1060191 (= e!672851 call!76115)))

(assert (= (and d!300551 c!177631) b!1060182))

(assert (= (and d!300551 (not c!177631)) b!1060183))

(assert (= (and b!1060183 res!473828) b!1060190))

(assert (= (and b!1060190 c!177634) b!1060189))

(assert (= (and b!1060190 (not c!177634)) b!1060181))

(assert (= (and b!1060181 c!177633) b!1060187))

(assert (= (and b!1060181 (not c!177633)) b!1060185))

(assert (= (and b!1060187 (not res!473827)) b!1060188))

(assert (= (and b!1060185 c!177632) b!1060186))

(assert (= (and b!1060185 (not c!177632)) b!1060191))

(assert (= (and b!1060186 (not res!473829)) b!1060184))

(assert (= (or b!1060184 b!1060191) bm!76111))

(assert (= (or b!1060182 b!1060186) bm!76110))

(assert (=> bm!76110 m!1220565))

(declare-fun m!1220689 () Bool)

(assert (=> bm!76111 m!1220689))

(declare-fun m!1220691 () Bool)

(assert (=> b!1060187 m!1220691))

(declare-fun m!1220693 () Bool)

(assert (=> b!1060188 m!1220693))

(assert (=> b!1059757 d!300551))

(declare-fun d!300579 () Bool)

(assert (=> d!300579 (= (matchR!1451 lt!359604 s!10566) (matchRSpec!714 lt!359604 s!10566))))

(declare-fun lt!359640 () Unit!15505)

(declare-fun choose!6751 (Regex!2915 List!10145) Unit!15505)

(assert (=> d!300579 (= lt!359640 (choose!6751 lt!359604 s!10566))))

(assert (=> d!300579 (validRegex!1384 lt!359604)))

(assert (=> d!300579 (= (mainMatchTheorem!714 lt!359604 s!10566) lt!359640)))

(declare-fun bs!251809 () Bool)

(assert (= bs!251809 d!300579))

(assert (=> bs!251809 m!1220533))

(assert (=> bs!251809 m!1220549))

(declare-fun m!1220695 () Bool)

(assert (=> bs!251809 m!1220695))

(declare-fun m!1220697 () Bool)

(assert (=> bs!251809 m!1220697))

(assert (=> b!1059757 d!300579))

(declare-fun bs!251810 () Bool)

(declare-fun b!1060199 () Bool)

(assert (= bs!251810 (and b!1060199 b!1060184)))

(declare-fun lambda!38315 () Int)

(assert (=> bs!251810 (= (and (= (reg!3244 r!15766) (reg!3244 lt!359604)) (= r!15766 lt!359604)) (= lambda!38315 lambda!38313))))

(declare-fun bs!251811 () Bool)

(assert (= bs!251811 (and b!1060199 b!1060191)))

(assert (=> bs!251811 (not (= lambda!38315 lambda!38314))))

(assert (=> b!1060199 true))

(assert (=> b!1060199 true))

(declare-fun bs!251812 () Bool)

(declare-fun b!1060206 () Bool)

(assert (= bs!251812 (and b!1060206 b!1060184)))

(declare-fun lambda!38316 () Int)

(assert (=> bs!251812 (not (= lambda!38316 lambda!38313))))

(declare-fun bs!251813 () Bool)

(assert (= bs!251813 (and b!1060206 b!1060191)))

(assert (=> bs!251813 (= (and (= (regOne!6342 r!15766) (regOne!6342 lt!359604)) (= (regTwo!6342 r!15766) (regTwo!6342 lt!359604))) (= lambda!38316 lambda!38314))))

(declare-fun bs!251814 () Bool)

(assert (= bs!251814 (and b!1060206 b!1060199)))

(assert (=> bs!251814 (not (= lambda!38316 lambda!38315))))

(assert (=> b!1060206 true))

(assert (=> b!1060206 true))

(declare-fun b!1060196 () Bool)

(declare-fun c!177637 () Bool)

(assert (=> b!1060196 (= c!177637 ((_ is Union!2915) r!15766))))

(declare-fun e!672860 () Bool)

(declare-fun e!672861 () Bool)

(assert (=> b!1060196 (= e!672860 e!672861)))

(declare-fun b!1060197 () Bool)

(declare-fun e!672863 () Bool)

(declare-fun call!76118 () Bool)

(assert (=> b!1060197 (= e!672863 call!76118)))

(declare-fun b!1060198 () Bool)

(declare-fun e!672862 () Bool)

(assert (=> b!1060198 (= e!672863 e!672862)))

(declare-fun res!473831 () Bool)

(assert (=> b!1060198 (= res!473831 (not ((_ is EmptyLang!2915) r!15766)))))

(assert (=> b!1060198 (=> (not res!473831) (not e!672862))))

(declare-fun bm!76112 () Bool)

(assert (=> bm!76112 (= call!76118 (isEmpty!6547 s!10566))))

(declare-fun e!672859 () Bool)

(declare-fun call!76117 () Bool)

(assert (=> b!1060199 (= e!672859 call!76117)))

(declare-fun b!1060200 () Bool)

(declare-fun e!672858 () Bool)

(assert (=> b!1060200 (= e!672861 e!672858)))

(declare-fun c!177636 () Bool)

(assert (=> b!1060200 (= c!177636 ((_ is Star!2915) r!15766))))

(declare-fun b!1060201 () Bool)

(declare-fun res!473832 () Bool)

(assert (=> b!1060201 (=> res!473832 e!672859)))

(assert (=> b!1060201 (= res!473832 call!76118)))

(assert (=> b!1060201 (= e!672858 e!672859)))

(declare-fun bm!76113 () Bool)

(assert (=> bm!76113 (= call!76117 (Exists!642 (ite c!177636 lambda!38315 lambda!38316)))))

(declare-fun b!1060202 () Bool)

(declare-fun e!672857 () Bool)

(assert (=> b!1060202 (= e!672861 e!672857)))

(declare-fun res!473830 () Bool)

(assert (=> b!1060202 (= res!473830 (matchRSpec!714 (regOne!6343 r!15766) s!10566))))

(assert (=> b!1060202 (=> res!473830 e!672857)))

(declare-fun b!1060203 () Bool)

(assert (=> b!1060203 (= e!672857 (matchRSpec!714 (regTwo!6343 r!15766) s!10566))))

(declare-fun b!1060204 () Bool)

(assert (=> b!1060204 (= e!672860 (= s!10566 (Cons!10129 (c!177520 r!15766) Nil!10129)))))

(declare-fun d!300581 () Bool)

(declare-fun c!177635 () Bool)

(assert (=> d!300581 (= c!177635 ((_ is EmptyExpr!2915) r!15766))))

(assert (=> d!300581 (= (matchRSpec!714 r!15766 s!10566) e!672863)))

(declare-fun b!1060205 () Bool)

(declare-fun c!177638 () Bool)

(assert (=> b!1060205 (= c!177638 ((_ is ElementMatch!2915) r!15766))))

(assert (=> b!1060205 (= e!672862 e!672860)))

(assert (=> b!1060206 (= e!672858 call!76117)))

(assert (= (and d!300581 c!177635) b!1060197))

(assert (= (and d!300581 (not c!177635)) b!1060198))

(assert (= (and b!1060198 res!473831) b!1060205))

(assert (= (and b!1060205 c!177638) b!1060204))

(assert (= (and b!1060205 (not c!177638)) b!1060196))

(assert (= (and b!1060196 c!177637) b!1060202))

(assert (= (and b!1060196 (not c!177637)) b!1060200))

(assert (= (and b!1060202 (not res!473830)) b!1060203))

(assert (= (and b!1060200 c!177636) b!1060201))

(assert (= (and b!1060200 (not c!177636)) b!1060206))

(assert (= (and b!1060201 (not res!473832)) b!1060199))

(assert (= (or b!1060199 b!1060206) bm!76113))

(assert (= (or b!1060197 b!1060201) bm!76112))

(assert (=> bm!76112 m!1220565))

(declare-fun m!1220699 () Bool)

(assert (=> bm!76113 m!1220699))

(declare-fun m!1220701 () Bool)

(assert (=> b!1060202 m!1220701))

(declare-fun m!1220703 () Bool)

(assert (=> b!1060203 m!1220703))

(assert (=> b!1059761 d!300581))

(declare-fun b!1060207 () Bool)

(declare-fun e!672870 () Bool)

(assert (=> b!1060207 (= e!672870 (matchR!1451 (derivativeStep!807 r!15766 (head!1962 s!10566)) (tail!1524 s!10566)))))

(declare-fun b!1060208 () Bool)

(declare-fun res!473835 () Bool)

(declare-fun e!672864 () Bool)

(assert (=> b!1060208 (=> res!473835 e!672864)))

(declare-fun e!672869 () Bool)

(assert (=> b!1060208 (= res!473835 e!672869)))

(declare-fun res!473837 () Bool)

(assert (=> b!1060208 (=> (not res!473837) (not e!672869))))

(declare-fun lt!359641 () Bool)

(assert (=> b!1060208 (= res!473837 lt!359641)))

(declare-fun b!1060209 () Bool)

(declare-fun res!473838 () Bool)

(assert (=> b!1060209 (=> (not res!473838) (not e!672869))))

(declare-fun call!76119 () Bool)

(assert (=> b!1060209 (= res!473838 (not call!76119))))

(declare-fun b!1060210 () Bool)

(declare-fun e!672867 () Bool)

(declare-fun e!672866 () Bool)

(assert (=> b!1060210 (= e!672867 e!672866)))

(declare-fun res!473833 () Bool)

(assert (=> b!1060210 (=> res!473833 e!672866)))

(assert (=> b!1060210 (= res!473833 call!76119)))

(declare-fun d!300583 () Bool)

(declare-fun e!672865 () Bool)

(assert (=> d!300583 e!672865))

(declare-fun c!177640 () Bool)

(assert (=> d!300583 (= c!177640 ((_ is EmptyExpr!2915) r!15766))))

(assert (=> d!300583 (= lt!359641 e!672870)))

(declare-fun c!177639 () Bool)

(assert (=> d!300583 (= c!177639 (isEmpty!6547 s!10566))))

(assert (=> d!300583 (validRegex!1384 r!15766)))

(assert (=> d!300583 (= (matchR!1451 r!15766 s!10566) lt!359641)))

(declare-fun b!1060211 () Bool)

(declare-fun e!672868 () Bool)

(assert (=> b!1060211 (= e!672868 (not lt!359641))))

(declare-fun b!1060212 () Bool)

(assert (=> b!1060212 (= e!672864 e!672867)))

(declare-fun res!473839 () Bool)

(assert (=> b!1060212 (=> (not res!473839) (not e!672867))))

(assert (=> b!1060212 (= res!473839 (not lt!359641))))

(declare-fun bm!76114 () Bool)

(assert (=> bm!76114 (= call!76119 (isEmpty!6547 s!10566))))

(declare-fun b!1060213 () Bool)

(declare-fun res!473840 () Bool)

(assert (=> b!1060213 (=> res!473840 e!672864)))

(assert (=> b!1060213 (= res!473840 (not ((_ is ElementMatch!2915) r!15766)))))

(assert (=> b!1060213 (= e!672868 e!672864)))

(declare-fun b!1060214 () Bool)

(assert (=> b!1060214 (= e!672870 (nullable!1007 r!15766))))

(declare-fun b!1060215 () Bool)

(declare-fun res!473836 () Bool)

(assert (=> b!1060215 (=> res!473836 e!672866)))

(assert (=> b!1060215 (= res!473836 (not (isEmpty!6547 (tail!1524 s!10566))))))

(declare-fun b!1060216 () Bool)

(assert (=> b!1060216 (= e!672865 e!672868)))

(declare-fun c!177641 () Bool)

(assert (=> b!1060216 (= c!177641 ((_ is EmptyLang!2915) r!15766))))

(declare-fun b!1060217 () Bool)

(declare-fun res!473834 () Bool)

(assert (=> b!1060217 (=> (not res!473834) (not e!672869))))

(assert (=> b!1060217 (= res!473834 (isEmpty!6547 (tail!1524 s!10566)))))

(declare-fun b!1060218 () Bool)

(assert (=> b!1060218 (= e!672865 (= lt!359641 call!76119))))

(declare-fun b!1060219 () Bool)

(assert (=> b!1060219 (= e!672869 (= (head!1962 s!10566) (c!177520 r!15766)))))

(declare-fun b!1060220 () Bool)

(assert (=> b!1060220 (= e!672866 (not (= (head!1962 s!10566) (c!177520 r!15766))))))

(assert (= (and d!300583 c!177639) b!1060214))

(assert (= (and d!300583 (not c!177639)) b!1060207))

(assert (= (and d!300583 c!177640) b!1060218))

(assert (= (and d!300583 (not c!177640)) b!1060216))

(assert (= (and b!1060216 c!177641) b!1060211))

(assert (= (and b!1060216 (not c!177641)) b!1060213))

(assert (= (and b!1060213 (not res!473840)) b!1060208))

(assert (= (and b!1060208 res!473837) b!1060209))

(assert (= (and b!1060209 res!473838) b!1060217))

(assert (= (and b!1060217 res!473834) b!1060219))

(assert (= (and b!1060208 (not res!473835)) b!1060212))

(assert (= (and b!1060212 res!473839) b!1060210))

(assert (= (and b!1060210 (not res!473833)) b!1060215))

(assert (= (and b!1060215 (not res!473836)) b!1060220))

(assert (= (or b!1060218 b!1060209 b!1060210) bm!76114))

(declare-fun m!1220705 () Bool)

(assert (=> b!1060214 m!1220705))

(assert (=> d!300583 m!1220565))

(assert (=> d!300583 m!1220553))

(assert (=> b!1060220 m!1220569))

(assert (=> b!1060219 m!1220569))

(assert (=> b!1060217 m!1220571))

(assert (=> b!1060217 m!1220571))

(assert (=> b!1060217 m!1220573))

(assert (=> b!1060207 m!1220569))

(assert (=> b!1060207 m!1220569))

(declare-fun m!1220707 () Bool)

(assert (=> b!1060207 m!1220707))

(assert (=> b!1060207 m!1220571))

(assert (=> b!1060207 m!1220707))

(assert (=> b!1060207 m!1220571))

(declare-fun m!1220709 () Bool)

(assert (=> b!1060207 m!1220709))

(assert (=> bm!76114 m!1220565))

(assert (=> b!1060215 m!1220571))

(assert (=> b!1060215 m!1220571))

(assert (=> b!1060215 m!1220573))

(assert (=> b!1059761 d!300583))

(declare-fun d!300585 () Bool)

(assert (=> d!300585 (= (matchR!1451 r!15766 s!10566) (matchRSpec!714 r!15766 s!10566))))

(declare-fun lt!359642 () Unit!15505)

(assert (=> d!300585 (= lt!359642 (choose!6751 r!15766 s!10566))))

(assert (=> d!300585 (validRegex!1384 r!15766)))

(assert (=> d!300585 (= (mainMatchTheorem!714 r!15766 s!10566) lt!359642)))

(declare-fun bs!251815 () Bool)

(assert (= bs!251815 d!300585))

(assert (=> bs!251815 m!1220541))

(assert (=> bs!251815 m!1220539))

(declare-fun m!1220711 () Bool)

(assert (=> bs!251815 m!1220711))

(assert (=> bs!251815 m!1220553))

(assert (=> b!1059761 d!300585))

(declare-fun b!1060221 () Bool)

(declare-fun e!672877 () Bool)

(assert (=> b!1060221 (= e!672877 (matchR!1451 (derivativeStep!807 lt!359607 (head!1962 s!10566)) (tail!1524 s!10566)))))

(declare-fun b!1060222 () Bool)

(declare-fun res!473843 () Bool)

(declare-fun e!672871 () Bool)

(assert (=> b!1060222 (=> res!473843 e!672871)))

(declare-fun e!672876 () Bool)

(assert (=> b!1060222 (= res!473843 e!672876)))

(declare-fun res!473845 () Bool)

(assert (=> b!1060222 (=> (not res!473845) (not e!672876))))

(declare-fun lt!359643 () Bool)

(assert (=> b!1060222 (= res!473845 lt!359643)))

(declare-fun b!1060223 () Bool)

(declare-fun res!473846 () Bool)

(assert (=> b!1060223 (=> (not res!473846) (not e!672876))))

(declare-fun call!76120 () Bool)

(assert (=> b!1060223 (= res!473846 (not call!76120))))

(declare-fun b!1060224 () Bool)

(declare-fun e!672874 () Bool)

(declare-fun e!672873 () Bool)

(assert (=> b!1060224 (= e!672874 e!672873)))

(declare-fun res!473841 () Bool)

(assert (=> b!1060224 (=> res!473841 e!672873)))

(assert (=> b!1060224 (= res!473841 call!76120)))

(declare-fun d!300587 () Bool)

(declare-fun e!672872 () Bool)

(assert (=> d!300587 e!672872))

(declare-fun c!177643 () Bool)

(assert (=> d!300587 (= c!177643 ((_ is EmptyExpr!2915) lt!359607))))

(assert (=> d!300587 (= lt!359643 e!672877)))

(declare-fun c!177642 () Bool)

(assert (=> d!300587 (= c!177642 (isEmpty!6547 s!10566))))

(assert (=> d!300587 (validRegex!1384 lt!359607)))

(assert (=> d!300587 (= (matchR!1451 lt!359607 s!10566) lt!359643)))

(declare-fun b!1060225 () Bool)

(declare-fun e!672875 () Bool)

(assert (=> b!1060225 (= e!672875 (not lt!359643))))

(declare-fun b!1060226 () Bool)

(assert (=> b!1060226 (= e!672871 e!672874)))

(declare-fun res!473847 () Bool)

(assert (=> b!1060226 (=> (not res!473847) (not e!672874))))

(assert (=> b!1060226 (= res!473847 (not lt!359643))))

(declare-fun bm!76115 () Bool)

(assert (=> bm!76115 (= call!76120 (isEmpty!6547 s!10566))))

(declare-fun b!1060227 () Bool)

(declare-fun res!473848 () Bool)

(assert (=> b!1060227 (=> res!473848 e!672871)))

(assert (=> b!1060227 (= res!473848 (not ((_ is ElementMatch!2915) lt!359607)))))

(assert (=> b!1060227 (= e!672875 e!672871)))

(declare-fun b!1060228 () Bool)

(assert (=> b!1060228 (= e!672877 (nullable!1007 lt!359607))))

(declare-fun b!1060229 () Bool)

(declare-fun res!473844 () Bool)

(assert (=> b!1060229 (=> res!473844 e!672873)))

(assert (=> b!1060229 (= res!473844 (not (isEmpty!6547 (tail!1524 s!10566))))))

(declare-fun b!1060230 () Bool)

(assert (=> b!1060230 (= e!672872 e!672875)))

(declare-fun c!177644 () Bool)

(assert (=> b!1060230 (= c!177644 ((_ is EmptyLang!2915) lt!359607))))

(declare-fun b!1060231 () Bool)

(declare-fun res!473842 () Bool)

(assert (=> b!1060231 (=> (not res!473842) (not e!672876))))

(assert (=> b!1060231 (= res!473842 (isEmpty!6547 (tail!1524 s!10566)))))

(declare-fun b!1060232 () Bool)

(assert (=> b!1060232 (= e!672872 (= lt!359643 call!76120))))

(declare-fun b!1060233 () Bool)

(assert (=> b!1060233 (= e!672876 (= (head!1962 s!10566) (c!177520 lt!359607)))))

(declare-fun b!1060234 () Bool)

(assert (=> b!1060234 (= e!672873 (not (= (head!1962 s!10566) (c!177520 lt!359607))))))

(assert (= (and d!300587 c!177642) b!1060228))

(assert (= (and d!300587 (not c!177642)) b!1060221))

(assert (= (and d!300587 c!177643) b!1060232))

(assert (= (and d!300587 (not c!177643)) b!1060230))

(assert (= (and b!1060230 c!177644) b!1060225))

(assert (= (and b!1060230 (not c!177644)) b!1060227))

(assert (= (and b!1060227 (not res!473848)) b!1060222))

(assert (= (and b!1060222 res!473845) b!1060223))

(assert (= (and b!1060223 res!473846) b!1060231))

(assert (= (and b!1060231 res!473842) b!1060233))

(assert (= (and b!1060222 (not res!473843)) b!1060226))

(assert (= (and b!1060226 res!473847) b!1060224))

(assert (= (and b!1060224 (not res!473841)) b!1060229))

(assert (= (and b!1060229 (not res!473844)) b!1060234))

(assert (= (or b!1060232 b!1060223 b!1060224) bm!76115))

(declare-fun m!1220713 () Bool)

(assert (=> b!1060228 m!1220713))

(assert (=> d!300587 m!1220565))

(assert (=> d!300587 m!1220597))

(assert (=> b!1060234 m!1220569))

(assert (=> b!1060233 m!1220569))

(assert (=> b!1060231 m!1220571))

(assert (=> b!1060231 m!1220571))

(assert (=> b!1060231 m!1220573))

(assert (=> b!1060221 m!1220569))

(assert (=> b!1060221 m!1220569))

(declare-fun m!1220715 () Bool)

(assert (=> b!1060221 m!1220715))

(assert (=> b!1060221 m!1220571))

(assert (=> b!1060221 m!1220715))

(assert (=> b!1060221 m!1220571))

(declare-fun m!1220717 () Bool)

(assert (=> b!1060221 m!1220717))

(assert (=> bm!76115 m!1220565))

(assert (=> b!1060229 m!1220571))

(assert (=> b!1060229 m!1220571))

(assert (=> b!1060229 m!1220573))

(assert (=> b!1059756 d!300587))

(declare-fun b!1060235 () Bool)

(declare-fun e!672884 () Bool)

(assert (=> b!1060235 (= e!672884 (matchR!1451 (derivativeStep!807 lt!359604 (head!1962 s!10566)) (tail!1524 s!10566)))))

(declare-fun b!1060236 () Bool)

(declare-fun res!473851 () Bool)

(declare-fun e!672878 () Bool)

(assert (=> b!1060236 (=> res!473851 e!672878)))

(declare-fun e!672883 () Bool)

(assert (=> b!1060236 (= res!473851 e!672883)))

(declare-fun res!473853 () Bool)

(assert (=> b!1060236 (=> (not res!473853) (not e!672883))))

(declare-fun lt!359644 () Bool)

(assert (=> b!1060236 (= res!473853 lt!359644)))

(declare-fun b!1060237 () Bool)

(declare-fun res!473854 () Bool)

(assert (=> b!1060237 (=> (not res!473854) (not e!672883))))

(declare-fun call!76121 () Bool)

(assert (=> b!1060237 (= res!473854 (not call!76121))))

(declare-fun b!1060238 () Bool)

(declare-fun e!672881 () Bool)

(declare-fun e!672880 () Bool)

(assert (=> b!1060238 (= e!672881 e!672880)))

(declare-fun res!473849 () Bool)

(assert (=> b!1060238 (=> res!473849 e!672880)))

(assert (=> b!1060238 (= res!473849 call!76121)))

(declare-fun d!300589 () Bool)

(declare-fun e!672879 () Bool)

(assert (=> d!300589 e!672879))

(declare-fun c!177646 () Bool)

(assert (=> d!300589 (= c!177646 ((_ is EmptyExpr!2915) lt!359604))))

(assert (=> d!300589 (= lt!359644 e!672884)))

(declare-fun c!177645 () Bool)

(assert (=> d!300589 (= c!177645 (isEmpty!6547 s!10566))))

(assert (=> d!300589 (validRegex!1384 lt!359604)))

(assert (=> d!300589 (= (matchR!1451 lt!359604 s!10566) lt!359644)))

(declare-fun b!1060239 () Bool)

(declare-fun e!672882 () Bool)

(assert (=> b!1060239 (= e!672882 (not lt!359644))))

(declare-fun b!1060240 () Bool)

(assert (=> b!1060240 (= e!672878 e!672881)))

(declare-fun res!473855 () Bool)

(assert (=> b!1060240 (=> (not res!473855) (not e!672881))))

(assert (=> b!1060240 (= res!473855 (not lt!359644))))

(declare-fun bm!76116 () Bool)

(assert (=> bm!76116 (= call!76121 (isEmpty!6547 s!10566))))

(declare-fun b!1060241 () Bool)

(declare-fun res!473856 () Bool)

(assert (=> b!1060241 (=> res!473856 e!672878)))

(assert (=> b!1060241 (= res!473856 (not ((_ is ElementMatch!2915) lt!359604)))))

(assert (=> b!1060241 (= e!672882 e!672878)))

(declare-fun b!1060242 () Bool)

(assert (=> b!1060242 (= e!672884 (nullable!1007 lt!359604))))

(declare-fun b!1060243 () Bool)

(declare-fun res!473852 () Bool)

(assert (=> b!1060243 (=> res!473852 e!672880)))

(assert (=> b!1060243 (= res!473852 (not (isEmpty!6547 (tail!1524 s!10566))))))

(declare-fun b!1060244 () Bool)

(assert (=> b!1060244 (= e!672879 e!672882)))

(declare-fun c!177647 () Bool)

(assert (=> b!1060244 (= c!177647 ((_ is EmptyLang!2915) lt!359604))))

(declare-fun b!1060245 () Bool)

(declare-fun res!473850 () Bool)

(assert (=> b!1060245 (=> (not res!473850) (not e!672883))))

(assert (=> b!1060245 (= res!473850 (isEmpty!6547 (tail!1524 s!10566)))))

(declare-fun b!1060246 () Bool)

(assert (=> b!1060246 (= e!672879 (= lt!359644 call!76121))))

(declare-fun b!1060247 () Bool)

(assert (=> b!1060247 (= e!672883 (= (head!1962 s!10566) (c!177520 lt!359604)))))

(declare-fun b!1060248 () Bool)

(assert (=> b!1060248 (= e!672880 (not (= (head!1962 s!10566) (c!177520 lt!359604))))))

(assert (= (and d!300589 c!177645) b!1060242))

(assert (= (and d!300589 (not c!177645)) b!1060235))

(assert (= (and d!300589 c!177646) b!1060246))

(assert (= (and d!300589 (not c!177646)) b!1060244))

(assert (= (and b!1060244 c!177647) b!1060239))

(assert (= (and b!1060244 (not c!177647)) b!1060241))

(assert (= (and b!1060241 (not res!473856)) b!1060236))

(assert (= (and b!1060236 res!473853) b!1060237))

(assert (= (and b!1060237 res!473854) b!1060245))

(assert (= (and b!1060245 res!473850) b!1060247))

(assert (= (and b!1060236 (not res!473851)) b!1060240))

(assert (= (and b!1060240 res!473855) b!1060238))

(assert (= (and b!1060238 (not res!473849)) b!1060243))

(assert (= (and b!1060243 (not res!473852)) b!1060248))

(assert (= (or b!1060246 b!1060237 b!1060238) bm!76116))

(declare-fun m!1220719 () Bool)

(assert (=> b!1060242 m!1220719))

(assert (=> d!300589 m!1220565))

(assert (=> d!300589 m!1220697))

(assert (=> b!1060248 m!1220569))

(assert (=> b!1060247 m!1220569))

(assert (=> b!1060245 m!1220571))

(assert (=> b!1060245 m!1220571))

(assert (=> b!1060245 m!1220573))

(assert (=> b!1060235 m!1220569))

(assert (=> b!1060235 m!1220569))

(declare-fun m!1220721 () Bool)

(assert (=> b!1060235 m!1220721))

(assert (=> b!1060235 m!1220571))

(assert (=> b!1060235 m!1220721))

(assert (=> b!1060235 m!1220571))

(declare-fun m!1220723 () Bool)

(assert (=> b!1060235 m!1220723))

(assert (=> bm!76116 m!1220565))

(assert (=> b!1060243 m!1220571))

(assert (=> b!1060243 m!1220571))

(assert (=> b!1060243 m!1220573))

(assert (=> b!1059760 d!300589))

(declare-fun b!1060271 () Bool)

(declare-fun e!672897 () Regex!2915)

(declare-fun call!76132 () Regex!2915)

(declare-fun call!76136 () Regex!2915)

(assert (=> b!1060271 (= e!672897 (Union!2915 call!76132 call!76136))))

(declare-fun b!1060272 () Bool)

(declare-fun c!177658 () Bool)

(assert (=> b!1060272 (= c!177658 ((_ is Star!2915) (regTwo!6343 r!15766)))))

(declare-fun e!672900 () Regex!2915)

(assert (=> b!1060272 (= e!672897 e!672900)))

(declare-fun b!1060273 () Bool)

(declare-fun e!672902 () Regex!2915)

(declare-fun e!672901 () Regex!2915)

(assert (=> b!1060273 (= e!672902 e!672901)))

(declare-fun c!177662 () Bool)

(assert (=> b!1060273 (= c!177662 (and ((_ is Concat!4748) (regTwo!6343 r!15766)) ((_ is EmptyExpr!2915) (regTwo!6342 (regTwo!6343 r!15766)))))))

(declare-fun b!1060274 () Bool)

(assert (=> b!1060274 (= e!672900 (Star!2915 call!76136))))

(declare-fun b!1060275 () Bool)

(declare-fun e!672898 () Regex!2915)

(declare-fun call!76133 () Regex!2915)

(assert (=> b!1060275 (= e!672898 (Concat!4748 call!76133 call!76132))))

(declare-fun b!1060276 () Bool)

(declare-fun call!76135 () Regex!2915)

(assert (=> b!1060276 (= e!672902 call!76135)))

(declare-fun bm!76127 () Bool)

(assert (=> bm!76127 (= call!76133 call!76135)))

(declare-fun bm!76128 () Bool)

(declare-fun call!76134 () Regex!2915)

(assert (=> bm!76128 (= call!76132 call!76134)))

(declare-fun c!177659 () Bool)

(declare-fun c!177660 () Bool)

(declare-fun c!177661 () Bool)

(declare-fun bm!76129 () Bool)

(assert (=> bm!76129 (= call!76135 (removeUselessConcat!464 (ite c!177659 (regTwo!6342 (regTwo!6343 r!15766)) (ite c!177660 (regOne!6342 (regTwo!6343 r!15766)) (ite c!177661 (regTwo!6343 (regTwo!6343 r!15766)) (reg!3244 (regTwo!6343 r!15766)))))))))

(declare-fun bm!76130 () Bool)

(assert (=> bm!76130 (= call!76136 call!76133)))

(declare-fun b!1060278 () Bool)

(assert (=> b!1060278 (= e!672898 e!672897)))

(assert (=> b!1060278 (= c!177661 ((_ is Union!2915) (regTwo!6343 r!15766)))))

(declare-fun b!1060279 () Bool)

(assert (=> b!1060279 (= e!672901 call!76134)))

(declare-fun bm!76131 () Bool)

(assert (=> bm!76131 (= call!76134 (removeUselessConcat!464 (ite c!177662 (regOne!6342 (regTwo!6343 r!15766)) (ite c!177660 (regTwo!6342 (regTwo!6343 r!15766)) (regOne!6343 (regTwo!6343 r!15766))))))))

(declare-fun b!1060280 () Bool)

(assert (=> b!1060280 (= c!177660 ((_ is Concat!4748) (regTwo!6343 r!15766)))))

(assert (=> b!1060280 (= e!672901 e!672898)))

(declare-fun b!1060281 () Bool)

(declare-fun e!672899 () Bool)

(declare-fun lt!359647 () Regex!2915)

(assert (=> b!1060281 (= e!672899 (= (nullable!1007 lt!359647) (nullable!1007 (regTwo!6343 r!15766))))))

(declare-fun d!300591 () Bool)

(assert (=> d!300591 e!672899))

(declare-fun res!473859 () Bool)

(assert (=> d!300591 (=> (not res!473859) (not e!672899))))

(assert (=> d!300591 (= res!473859 (validRegex!1384 lt!359647))))

(assert (=> d!300591 (= lt!359647 e!672902)))

(assert (=> d!300591 (= c!177659 (and ((_ is Concat!4748) (regTwo!6343 r!15766)) ((_ is EmptyExpr!2915) (regOne!6342 (regTwo!6343 r!15766)))))))

(assert (=> d!300591 (validRegex!1384 (regTwo!6343 r!15766))))

(assert (=> d!300591 (= (removeUselessConcat!464 (regTwo!6343 r!15766)) lt!359647)))

(declare-fun b!1060277 () Bool)

(assert (=> b!1060277 (= e!672900 (regTwo!6343 r!15766))))

(assert (= (and d!300591 c!177659) b!1060276))

(assert (= (and d!300591 (not c!177659)) b!1060273))

(assert (= (and b!1060273 c!177662) b!1060279))

(assert (= (and b!1060273 (not c!177662)) b!1060280))

(assert (= (and b!1060280 c!177660) b!1060275))

(assert (= (and b!1060280 (not c!177660)) b!1060278))

(assert (= (and b!1060278 c!177661) b!1060271))

(assert (= (and b!1060278 (not c!177661)) b!1060272))

(assert (= (and b!1060272 c!177658) b!1060274))

(assert (= (and b!1060272 (not c!177658)) b!1060277))

(assert (= (or b!1060271 b!1060274) bm!76130))

(assert (= (or b!1060275 b!1060271) bm!76128))

(assert (= (or b!1060275 bm!76130) bm!76127))

(assert (= (or b!1060279 bm!76128) bm!76131))

(assert (= (or b!1060276 bm!76127) bm!76129))

(assert (= (and d!300591 res!473859) b!1060281))

(declare-fun m!1220725 () Bool)

(assert (=> bm!76129 m!1220725))

(declare-fun m!1220727 () Bool)

(assert (=> bm!76131 m!1220727))

(declare-fun m!1220729 () Bool)

(assert (=> b!1060281 m!1220729))

(declare-fun m!1220731 () Bool)

(assert (=> b!1060281 m!1220731))

(declare-fun m!1220733 () Bool)

(assert (=> d!300591 m!1220733))

(assert (=> d!300591 m!1220531))

(assert (=> b!1059760 d!300591))

(declare-fun b!1060282 () Bool)

(declare-fun e!672903 () Regex!2915)

(declare-fun call!76137 () Regex!2915)

(declare-fun call!76141 () Regex!2915)

(assert (=> b!1060282 (= e!672903 (Union!2915 call!76137 call!76141))))

(declare-fun b!1060283 () Bool)

(declare-fun c!177663 () Bool)

(assert (=> b!1060283 (= c!177663 ((_ is Star!2915) (regOne!6343 r!15766)))))

(declare-fun e!672906 () Regex!2915)

(assert (=> b!1060283 (= e!672903 e!672906)))

(declare-fun b!1060284 () Bool)

(declare-fun e!672908 () Regex!2915)

(declare-fun e!672907 () Regex!2915)

(assert (=> b!1060284 (= e!672908 e!672907)))

(declare-fun c!177667 () Bool)

(assert (=> b!1060284 (= c!177667 (and ((_ is Concat!4748) (regOne!6343 r!15766)) ((_ is EmptyExpr!2915) (regTwo!6342 (regOne!6343 r!15766)))))))

(declare-fun b!1060285 () Bool)

(assert (=> b!1060285 (= e!672906 (Star!2915 call!76141))))

(declare-fun b!1060286 () Bool)

(declare-fun e!672904 () Regex!2915)

(declare-fun call!76138 () Regex!2915)

(assert (=> b!1060286 (= e!672904 (Concat!4748 call!76138 call!76137))))

(declare-fun b!1060287 () Bool)

(declare-fun call!76140 () Regex!2915)

(assert (=> b!1060287 (= e!672908 call!76140)))

(declare-fun bm!76132 () Bool)

(assert (=> bm!76132 (= call!76138 call!76140)))

(declare-fun bm!76133 () Bool)

(declare-fun call!76139 () Regex!2915)

(assert (=> bm!76133 (= call!76137 call!76139)))

(declare-fun c!177665 () Bool)

(declare-fun bm!76134 () Bool)

(declare-fun c!177664 () Bool)

(declare-fun c!177666 () Bool)

(assert (=> bm!76134 (= call!76140 (removeUselessConcat!464 (ite c!177664 (regTwo!6342 (regOne!6343 r!15766)) (ite c!177665 (regOne!6342 (regOne!6343 r!15766)) (ite c!177666 (regTwo!6343 (regOne!6343 r!15766)) (reg!3244 (regOne!6343 r!15766)))))))))

(declare-fun bm!76135 () Bool)

(assert (=> bm!76135 (= call!76141 call!76138)))

(declare-fun b!1060289 () Bool)

(assert (=> b!1060289 (= e!672904 e!672903)))

(assert (=> b!1060289 (= c!177666 ((_ is Union!2915) (regOne!6343 r!15766)))))

(declare-fun b!1060290 () Bool)

(assert (=> b!1060290 (= e!672907 call!76139)))

(declare-fun bm!76136 () Bool)

(assert (=> bm!76136 (= call!76139 (removeUselessConcat!464 (ite c!177667 (regOne!6342 (regOne!6343 r!15766)) (ite c!177665 (regTwo!6342 (regOne!6343 r!15766)) (regOne!6343 (regOne!6343 r!15766))))))))

(declare-fun b!1060291 () Bool)

(assert (=> b!1060291 (= c!177665 ((_ is Concat!4748) (regOne!6343 r!15766)))))

(assert (=> b!1060291 (= e!672907 e!672904)))

(declare-fun b!1060292 () Bool)

(declare-fun e!672905 () Bool)

(declare-fun lt!359648 () Regex!2915)

(assert (=> b!1060292 (= e!672905 (= (nullable!1007 lt!359648) (nullable!1007 (regOne!6343 r!15766))))))

(declare-fun d!300593 () Bool)

(assert (=> d!300593 e!672905))

(declare-fun res!473860 () Bool)

(assert (=> d!300593 (=> (not res!473860) (not e!672905))))

(assert (=> d!300593 (= res!473860 (validRegex!1384 lt!359648))))

(assert (=> d!300593 (= lt!359648 e!672908)))

(assert (=> d!300593 (= c!177664 (and ((_ is Concat!4748) (regOne!6343 r!15766)) ((_ is EmptyExpr!2915) (regOne!6342 (regOne!6343 r!15766)))))))

(assert (=> d!300593 (validRegex!1384 (regOne!6343 r!15766))))

(assert (=> d!300593 (= (removeUselessConcat!464 (regOne!6343 r!15766)) lt!359648)))

(declare-fun b!1060288 () Bool)

(assert (=> b!1060288 (= e!672906 (regOne!6343 r!15766))))

(assert (= (and d!300593 c!177664) b!1060287))

(assert (= (and d!300593 (not c!177664)) b!1060284))

(assert (= (and b!1060284 c!177667) b!1060290))

(assert (= (and b!1060284 (not c!177667)) b!1060291))

(assert (= (and b!1060291 c!177665) b!1060286))

(assert (= (and b!1060291 (not c!177665)) b!1060289))

(assert (= (and b!1060289 c!177666) b!1060282))

(assert (= (and b!1060289 (not c!177666)) b!1060283))

(assert (= (and b!1060283 c!177663) b!1060285))

(assert (= (and b!1060283 (not c!177663)) b!1060288))

(assert (= (or b!1060282 b!1060285) bm!76135))

(assert (= (or b!1060286 b!1060282) bm!76133))

(assert (= (or b!1060286 bm!76135) bm!76132))

(assert (= (or b!1060290 bm!76133) bm!76136))

(assert (= (or b!1060287 bm!76132) bm!76134))

(assert (= (and d!300593 res!473860) b!1060292))

(declare-fun m!1220735 () Bool)

(assert (=> bm!76134 m!1220735))

(declare-fun m!1220737 () Bool)

(assert (=> bm!76136 m!1220737))

(declare-fun m!1220739 () Bool)

(assert (=> b!1060292 m!1220739))

(declare-fun m!1220741 () Bool)

(assert (=> b!1060292 m!1220741))

(declare-fun m!1220743 () Bool)

(assert (=> d!300593 m!1220743))

(declare-fun m!1220745 () Bool)

(assert (=> d!300593 m!1220745))

(assert (=> b!1059760 d!300593))

(declare-fun d!300595 () Bool)

(declare-fun e!672935 () Bool)

(assert (=> d!300595 e!672935))

(declare-fun res!473869 () Bool)

(assert (=> d!300595 (=> (not res!473869) (not e!672935))))

(declare-fun lt!359651 () Int)

(assert (=> d!300595 (= res!473869 (> lt!359651 0))))

(declare-fun e!672934 () Int)

(assert (=> d!300595 (= lt!359651 e!672934)))

(declare-fun c!177685 () Bool)

(assert (=> d!300595 (= c!177685 ((_ is ElementMatch!2915) r!15766))))

(assert (=> d!300595 (= (regexDepth!42 r!15766) lt!359651)))

(declare-fun call!76157 () Int)

(declare-fun bm!76151 () Bool)

(declare-fun c!177683 () Bool)

(declare-fun c!177682 () Bool)

(assert (=> bm!76151 (= call!76157 (regexDepth!42 (ite c!177683 (regTwo!6343 r!15766) (ite c!177682 (regTwo!6342 r!15766) (reg!3244 r!15766)))))))

(declare-fun b!1060327 () Bool)

(assert (=> b!1060327 (= e!672934 1)))

(declare-fun b!1060328 () Bool)

(declare-fun res!473867 () Bool)

(declare-fun e!672933 () Bool)

(assert (=> b!1060328 (=> (not res!473867) (not e!672933))))

(declare-fun call!76162 () Int)

(assert (=> b!1060328 (= res!473867 (> lt!359651 call!76162))))

(declare-fun e!672929 () Bool)

(assert (=> b!1060328 (= e!672929 e!672933)))

(declare-fun b!1060329 () Bool)

(declare-fun e!672930 () Bool)

(assert (=> b!1060329 (= e!672930 e!672929)))

(assert (=> b!1060329 (= c!177682 ((_ is Concat!4748) r!15766))))

(declare-fun bm!76152 () Bool)

(assert (=> bm!76152 (= call!76162 (regexDepth!42 (ite c!177683 (regOne!6343 r!15766) (regOne!6342 r!15766))))))

(declare-fun bm!76153 () Bool)

(declare-fun call!76161 () Int)

(assert (=> bm!76153 (= call!76161 call!76157)))

(declare-fun b!1060330 () Bool)

(declare-fun e!672932 () Int)

(declare-fun call!76159 () Int)

(assert (=> b!1060330 (= e!672932 (+ 1 call!76159))))

(declare-fun b!1060331 () Bool)

(declare-fun e!672931 () Int)

(declare-fun call!76156 () Int)

(assert (=> b!1060331 (= e!672931 (+ 1 call!76156))))

(declare-fun bm!76154 () Bool)

(declare-fun call!76158 () Int)

(assert (=> bm!76154 (= call!76158 call!76156)))

(declare-fun b!1060332 () Bool)

(declare-fun e!672938 () Int)

(assert (=> b!1060332 (= e!672938 (+ 1 call!76159))))

(declare-fun b!1060333 () Bool)

(assert (=> b!1060333 (= e!672938 e!672932)))

(declare-fun c!177688 () Bool)

(assert (=> b!1060333 (= c!177688 ((_ is Concat!4748) r!15766))))

(declare-fun b!1060334 () Bool)

(declare-fun c!177684 () Bool)

(assert (=> b!1060334 (= c!177684 ((_ is Star!2915) r!15766))))

(declare-fun e!672937 () Bool)

(assert (=> b!1060334 (= e!672929 e!672937)))

(declare-fun bm!76155 () Bool)

(declare-fun call!76160 () Int)

(declare-fun c!177686 () Bool)

(assert (=> bm!76155 (= call!76160 (regexDepth!42 (ite c!177686 (regOne!6343 r!15766) (regOne!6342 r!15766))))))

(declare-fun b!1060335 () Bool)

(assert (=> b!1060335 (= c!177686 ((_ is Union!2915) r!15766))))

(assert (=> b!1060335 (= e!672931 e!672938)))

(declare-fun c!177687 () Bool)

(declare-fun bm!76156 () Bool)

(assert (=> bm!76156 (= call!76156 (regexDepth!42 (ite c!177687 (reg!3244 r!15766) (ite c!177686 (regTwo!6343 r!15766) (regTwo!6342 r!15766)))))))

(declare-fun b!1060336 () Bool)

(declare-fun e!672936 () Bool)

(assert (=> b!1060336 (= e!672936 (> lt!359651 call!76157))))

(declare-fun b!1060337 () Bool)

(assert (=> b!1060337 (= e!672932 1)))

(declare-fun b!1060338 () Bool)

(assert (=> b!1060338 (= e!672937 (= lt!359651 1))))

(declare-fun b!1060339 () Bool)

(assert (=> b!1060339 (= e!672937 (> lt!359651 call!76161))))

(declare-fun b!1060340 () Bool)

(assert (=> b!1060340 (= e!672935 e!672930)))

(assert (=> b!1060340 (= c!177683 ((_ is Union!2915) r!15766))))

(declare-fun b!1060341 () Bool)

(assert (=> b!1060341 (= e!672934 e!672931)))

(assert (=> b!1060341 (= c!177687 ((_ is Star!2915) r!15766))))

(declare-fun b!1060342 () Bool)

(assert (=> b!1060342 (= e!672933 (> lt!359651 call!76161))))

(declare-fun bm!76157 () Bool)

(declare-fun maxBigInt!0 (Int Int) Int)

(assert (=> bm!76157 (= call!76159 (maxBigInt!0 call!76160 call!76158))))

(declare-fun b!1060343 () Bool)

(assert (=> b!1060343 (= e!672930 e!672936)))

(declare-fun res!473868 () Bool)

(assert (=> b!1060343 (= res!473868 (> lt!359651 call!76162))))

(assert (=> b!1060343 (=> (not res!473868) (not e!672936))))

(assert (= (and d!300595 c!177685) b!1060327))

(assert (= (and d!300595 (not c!177685)) b!1060341))

(assert (= (and b!1060341 c!177687) b!1060331))

(assert (= (and b!1060341 (not c!177687)) b!1060335))

(assert (= (and b!1060335 c!177686) b!1060332))

(assert (= (and b!1060335 (not c!177686)) b!1060333))

(assert (= (and b!1060333 c!177688) b!1060330))

(assert (= (and b!1060333 (not c!177688)) b!1060337))

(assert (= (or b!1060332 b!1060330) bm!76154))

(assert (= (or b!1060332 b!1060330) bm!76155))

(assert (= (or b!1060332 b!1060330) bm!76157))

(assert (= (or b!1060331 bm!76154) bm!76156))

(assert (= (and d!300595 res!473869) b!1060340))

(assert (= (and b!1060340 c!177683) b!1060343))

(assert (= (and b!1060340 (not c!177683)) b!1060329))

(assert (= (and b!1060343 res!473868) b!1060336))

(assert (= (and b!1060329 c!177682) b!1060328))

(assert (= (and b!1060329 (not c!177682)) b!1060334))

(assert (= (and b!1060328 res!473867) b!1060342))

(assert (= (and b!1060334 c!177684) b!1060339))

(assert (= (and b!1060334 (not c!177684)) b!1060338))

(assert (= (or b!1060342 b!1060339) bm!76153))

(assert (= (or b!1060336 bm!76153) bm!76151))

(assert (= (or b!1060343 b!1060328) bm!76152))

(declare-fun m!1220747 () Bool)

(assert (=> bm!76155 m!1220747))

(declare-fun m!1220749 () Bool)

(assert (=> bm!76151 m!1220749))

(declare-fun m!1220751 () Bool)

(assert (=> bm!76156 m!1220751))

(declare-fun m!1220753 () Bool)

(assert (=> bm!76152 m!1220753))

(declare-fun m!1220755 () Bool)

(assert (=> bm!76157 m!1220755))

(assert (=> b!1059754 d!300595))

(declare-fun d!300597 () Bool)

(declare-fun lt!359654 () Int)

(assert (=> d!300597 (>= lt!359654 0)))

(declare-fun e!672941 () Int)

(assert (=> d!300597 (= lt!359654 e!672941)))

(declare-fun c!177691 () Bool)

(assert (=> d!300597 (= c!177691 ((_ is Nil!10129) s!10566))))

(assert (=> d!300597 (= (size!8004 s!10566) lt!359654)))

(declare-fun b!1060348 () Bool)

(assert (=> b!1060348 (= e!672941 0)))

(declare-fun b!1060349 () Bool)

(assert (=> b!1060349 (= e!672941 (+ 1 (size!8004 (t!101191 s!10566))))))

(assert (= (and d!300597 c!177691) b!1060348))

(assert (= (and d!300597 (not c!177691)) b!1060349))

(declare-fun m!1220757 () Bool)

(assert (=> b!1060349 m!1220757))

(assert (=> b!1059754 d!300597))

(declare-fun d!300599 () Bool)

(declare-fun e!672948 () Bool)

(assert (=> d!300599 e!672948))

(declare-fun res!473872 () Bool)

(assert (=> d!300599 (=> (not res!473872) (not e!672948))))

(declare-fun lt!359655 () Int)

(assert (=> d!300599 (= res!473872 (> lt!359655 0))))

(declare-fun e!672947 () Int)

(assert (=> d!300599 (= lt!359655 e!672947)))

(declare-fun c!177695 () Bool)

(assert (=> d!300599 (= c!177695 ((_ is ElementMatch!2915) (regTwo!6343 r!15766)))))

(assert (=> d!300599 (= (regexDepth!42 (regTwo!6343 r!15766)) lt!359655)))

(declare-fun call!76164 () Int)

(declare-fun c!177693 () Bool)

(declare-fun c!177692 () Bool)

(declare-fun bm!76158 () Bool)

(assert (=> bm!76158 (= call!76164 (regexDepth!42 (ite c!177693 (regTwo!6343 (regTwo!6343 r!15766)) (ite c!177692 (regTwo!6342 (regTwo!6343 r!15766)) (reg!3244 (regTwo!6343 r!15766))))))))

(declare-fun b!1060350 () Bool)

(assert (=> b!1060350 (= e!672947 1)))

(declare-fun b!1060351 () Bool)

(declare-fun res!473870 () Bool)

(declare-fun e!672946 () Bool)

(assert (=> b!1060351 (=> (not res!473870) (not e!672946))))

(declare-fun call!76169 () Int)

(assert (=> b!1060351 (= res!473870 (> lt!359655 call!76169))))

(declare-fun e!672942 () Bool)

(assert (=> b!1060351 (= e!672942 e!672946)))

(declare-fun b!1060352 () Bool)

(declare-fun e!672943 () Bool)

(assert (=> b!1060352 (= e!672943 e!672942)))

(assert (=> b!1060352 (= c!177692 ((_ is Concat!4748) (regTwo!6343 r!15766)))))

(declare-fun bm!76159 () Bool)

(assert (=> bm!76159 (= call!76169 (regexDepth!42 (ite c!177693 (regOne!6343 (regTwo!6343 r!15766)) (regOne!6342 (regTwo!6343 r!15766)))))))

(declare-fun bm!76160 () Bool)

(declare-fun call!76168 () Int)

(assert (=> bm!76160 (= call!76168 call!76164)))

(declare-fun b!1060353 () Bool)

(declare-fun e!672945 () Int)

(declare-fun call!76166 () Int)

(assert (=> b!1060353 (= e!672945 (+ 1 call!76166))))

(declare-fun b!1060354 () Bool)

(declare-fun e!672944 () Int)

(declare-fun call!76163 () Int)

(assert (=> b!1060354 (= e!672944 (+ 1 call!76163))))

(declare-fun bm!76161 () Bool)

(declare-fun call!76165 () Int)

(assert (=> bm!76161 (= call!76165 call!76163)))

(declare-fun b!1060355 () Bool)

(declare-fun e!672951 () Int)

(assert (=> b!1060355 (= e!672951 (+ 1 call!76166))))

(declare-fun b!1060356 () Bool)

(assert (=> b!1060356 (= e!672951 e!672945)))

(declare-fun c!177698 () Bool)

(assert (=> b!1060356 (= c!177698 ((_ is Concat!4748) (regTwo!6343 r!15766)))))

(declare-fun b!1060357 () Bool)

(declare-fun c!177694 () Bool)

(assert (=> b!1060357 (= c!177694 ((_ is Star!2915) (regTwo!6343 r!15766)))))

(declare-fun e!672950 () Bool)

(assert (=> b!1060357 (= e!672942 e!672950)))

(declare-fun bm!76162 () Bool)

(declare-fun call!76167 () Int)

(declare-fun c!177696 () Bool)

(assert (=> bm!76162 (= call!76167 (regexDepth!42 (ite c!177696 (regOne!6343 (regTwo!6343 r!15766)) (regOne!6342 (regTwo!6343 r!15766)))))))

(declare-fun b!1060358 () Bool)

(assert (=> b!1060358 (= c!177696 ((_ is Union!2915) (regTwo!6343 r!15766)))))

(assert (=> b!1060358 (= e!672944 e!672951)))

(declare-fun c!177697 () Bool)

(declare-fun bm!76163 () Bool)

(assert (=> bm!76163 (= call!76163 (regexDepth!42 (ite c!177697 (reg!3244 (regTwo!6343 r!15766)) (ite c!177696 (regTwo!6343 (regTwo!6343 r!15766)) (regTwo!6342 (regTwo!6343 r!15766))))))))

(declare-fun b!1060359 () Bool)

(declare-fun e!672949 () Bool)

(assert (=> b!1060359 (= e!672949 (> lt!359655 call!76164))))

(declare-fun b!1060360 () Bool)

(assert (=> b!1060360 (= e!672945 1)))

(declare-fun b!1060361 () Bool)

(assert (=> b!1060361 (= e!672950 (= lt!359655 1))))

(declare-fun b!1060362 () Bool)

(assert (=> b!1060362 (= e!672950 (> lt!359655 call!76168))))

(declare-fun b!1060363 () Bool)

(assert (=> b!1060363 (= e!672948 e!672943)))

(assert (=> b!1060363 (= c!177693 ((_ is Union!2915) (regTwo!6343 r!15766)))))

(declare-fun b!1060364 () Bool)

(assert (=> b!1060364 (= e!672947 e!672944)))

(assert (=> b!1060364 (= c!177697 ((_ is Star!2915) (regTwo!6343 r!15766)))))

(declare-fun b!1060365 () Bool)

(assert (=> b!1060365 (= e!672946 (> lt!359655 call!76168))))

(declare-fun bm!76164 () Bool)

(assert (=> bm!76164 (= call!76166 (maxBigInt!0 call!76167 call!76165))))

(declare-fun b!1060366 () Bool)

(assert (=> b!1060366 (= e!672943 e!672949)))

(declare-fun res!473871 () Bool)

(assert (=> b!1060366 (= res!473871 (> lt!359655 call!76169))))

(assert (=> b!1060366 (=> (not res!473871) (not e!672949))))

(assert (= (and d!300599 c!177695) b!1060350))

(assert (= (and d!300599 (not c!177695)) b!1060364))

(assert (= (and b!1060364 c!177697) b!1060354))

(assert (= (and b!1060364 (not c!177697)) b!1060358))

(assert (= (and b!1060358 c!177696) b!1060355))

(assert (= (and b!1060358 (not c!177696)) b!1060356))

(assert (= (and b!1060356 c!177698) b!1060353))

(assert (= (and b!1060356 (not c!177698)) b!1060360))

(assert (= (or b!1060355 b!1060353) bm!76161))

(assert (= (or b!1060355 b!1060353) bm!76162))

(assert (= (or b!1060355 b!1060353) bm!76164))

(assert (= (or b!1060354 bm!76161) bm!76163))

(assert (= (and d!300599 res!473872) b!1060363))

(assert (= (and b!1060363 c!177693) b!1060366))

(assert (= (and b!1060363 (not c!177693)) b!1060352))

(assert (= (and b!1060366 res!473871) b!1060359))

(assert (= (and b!1060352 c!177692) b!1060351))

(assert (= (and b!1060352 (not c!177692)) b!1060357))

(assert (= (and b!1060351 res!473870) b!1060365))

(assert (= (and b!1060357 c!177694) b!1060362))

(assert (= (and b!1060357 (not c!177694)) b!1060361))

(assert (= (or b!1060365 b!1060362) bm!76160))

(assert (= (or b!1060359 bm!76160) bm!76158))

(assert (= (or b!1060366 b!1060351) bm!76159))

(declare-fun m!1220759 () Bool)

(assert (=> bm!76162 m!1220759))

(declare-fun m!1220761 () Bool)

(assert (=> bm!76158 m!1220761))

(declare-fun m!1220763 () Bool)

(assert (=> bm!76163 m!1220763))

(declare-fun m!1220765 () Bool)

(assert (=> bm!76159 m!1220765))

(declare-fun m!1220767 () Bool)

(assert (=> bm!76164 m!1220767))

(assert (=> b!1059754 d!300599))

(declare-fun d!300601 () Bool)

(declare-fun res!473887 () Bool)

(declare-fun e!672970 () Bool)

(assert (=> d!300601 (=> res!473887 e!672970)))

(assert (=> d!300601 (= res!473887 ((_ is ElementMatch!2915) r!15766))))

(assert (=> d!300601 (= (validRegex!1384 r!15766) e!672970)))

(declare-fun b!1060385 () Bool)

(declare-fun res!473886 () Bool)

(declare-fun e!672967 () Bool)

(assert (=> b!1060385 (=> (not res!473886) (not e!672967))))

(declare-fun call!76177 () Bool)

(assert (=> b!1060385 (= res!473886 call!76177)))

(declare-fun e!672972 () Bool)

(assert (=> b!1060385 (= e!672972 e!672967)))

(declare-fun bm!76171 () Bool)

(declare-fun c!177704 () Bool)

(assert (=> bm!76171 (= call!76177 (validRegex!1384 (ite c!177704 (regOne!6343 r!15766) (regOne!6342 r!15766))))))

(declare-fun b!1060386 () Bool)

(declare-fun e!672968 () Bool)

(declare-fun e!672966 () Bool)

(assert (=> b!1060386 (= e!672968 e!672966)))

(declare-fun res!473883 () Bool)

(assert (=> b!1060386 (= res!473883 (not (nullable!1007 (reg!3244 r!15766))))))

(assert (=> b!1060386 (=> (not res!473883) (not e!672966))))

(declare-fun c!177703 () Bool)

(declare-fun bm!76172 () Bool)

(declare-fun call!76178 () Bool)

(assert (=> bm!76172 (= call!76178 (validRegex!1384 (ite c!177703 (reg!3244 r!15766) (ite c!177704 (regTwo!6343 r!15766) (regTwo!6342 r!15766)))))))

(declare-fun bm!76173 () Bool)

(declare-fun call!76176 () Bool)

(assert (=> bm!76173 (= call!76176 call!76178)))

(declare-fun b!1060387 () Bool)

(assert (=> b!1060387 (= e!672967 call!76176)))

(declare-fun b!1060388 () Bool)

(declare-fun res!473884 () Bool)

(declare-fun e!672969 () Bool)

(assert (=> b!1060388 (=> res!473884 e!672969)))

(assert (=> b!1060388 (= res!473884 (not ((_ is Concat!4748) r!15766)))))

(assert (=> b!1060388 (= e!672972 e!672969)))

(declare-fun b!1060389 () Bool)

(declare-fun e!672971 () Bool)

(assert (=> b!1060389 (= e!672969 e!672971)))

(declare-fun res!473885 () Bool)

(assert (=> b!1060389 (=> (not res!473885) (not e!672971))))

(assert (=> b!1060389 (= res!473885 call!76177)))

(declare-fun b!1060390 () Bool)

(assert (=> b!1060390 (= e!672968 e!672972)))

(assert (=> b!1060390 (= c!177704 ((_ is Union!2915) r!15766))))

(declare-fun b!1060391 () Bool)

(assert (=> b!1060391 (= e!672971 call!76176)))

(declare-fun b!1060392 () Bool)

(assert (=> b!1060392 (= e!672966 call!76178)))

(declare-fun b!1060393 () Bool)

(assert (=> b!1060393 (= e!672970 e!672968)))

(assert (=> b!1060393 (= c!177703 ((_ is Star!2915) r!15766))))

(assert (= (and d!300601 (not res!473887)) b!1060393))

(assert (= (and b!1060393 c!177703) b!1060386))

(assert (= (and b!1060393 (not c!177703)) b!1060390))

(assert (= (and b!1060386 res!473883) b!1060392))

(assert (= (and b!1060390 c!177704) b!1060385))

(assert (= (and b!1060390 (not c!177704)) b!1060388))

(assert (= (and b!1060385 res!473886) b!1060387))

(assert (= (and b!1060388 (not res!473884)) b!1060389))

(assert (= (and b!1060389 res!473885) b!1060391))

(assert (= (or b!1060387 b!1060391) bm!76173))

(assert (= (or b!1060385 b!1060389) bm!76171))

(assert (= (or b!1060392 bm!76173) bm!76172))

(declare-fun m!1220769 () Bool)

(assert (=> bm!76171 m!1220769))

(declare-fun m!1220771 () Bool)

(assert (=> b!1060386 m!1220771))

(declare-fun m!1220773 () Bool)

(assert (=> bm!76172 m!1220773))

(assert (=> start!91122 d!300601))

(declare-fun d!300603 () Bool)

(declare-fun res!473892 () Bool)

(declare-fun e!672977 () Bool)

(assert (=> d!300603 (=> res!473892 e!672977)))

(assert (=> d!300603 (= res!473892 ((_ is ElementMatch!2915) (regTwo!6343 r!15766)))))

(assert (=> d!300603 (= (validRegex!1384 (regTwo!6343 r!15766)) e!672977)))

(declare-fun b!1060394 () Bool)

(declare-fun res!473891 () Bool)

(declare-fun e!672974 () Bool)

(assert (=> b!1060394 (=> (not res!473891) (not e!672974))))

(declare-fun call!76180 () Bool)

(assert (=> b!1060394 (= res!473891 call!76180)))

(declare-fun e!672979 () Bool)

(assert (=> b!1060394 (= e!672979 e!672974)))

(declare-fun bm!76174 () Bool)

(declare-fun c!177706 () Bool)

(assert (=> bm!76174 (= call!76180 (validRegex!1384 (ite c!177706 (regOne!6343 (regTwo!6343 r!15766)) (regOne!6342 (regTwo!6343 r!15766)))))))

(declare-fun b!1060395 () Bool)

(declare-fun e!672975 () Bool)

(declare-fun e!672973 () Bool)

(assert (=> b!1060395 (= e!672975 e!672973)))

(declare-fun res!473888 () Bool)

(assert (=> b!1060395 (= res!473888 (not (nullable!1007 (reg!3244 (regTwo!6343 r!15766)))))))

(assert (=> b!1060395 (=> (not res!473888) (not e!672973))))

(declare-fun c!177705 () Bool)

(declare-fun bm!76175 () Bool)

(declare-fun call!76181 () Bool)

(assert (=> bm!76175 (= call!76181 (validRegex!1384 (ite c!177705 (reg!3244 (regTwo!6343 r!15766)) (ite c!177706 (regTwo!6343 (regTwo!6343 r!15766)) (regTwo!6342 (regTwo!6343 r!15766))))))))

(declare-fun bm!76176 () Bool)

(declare-fun call!76179 () Bool)

(assert (=> bm!76176 (= call!76179 call!76181)))

(declare-fun b!1060396 () Bool)

(assert (=> b!1060396 (= e!672974 call!76179)))

(declare-fun b!1060397 () Bool)

(declare-fun res!473889 () Bool)

(declare-fun e!672976 () Bool)

(assert (=> b!1060397 (=> res!473889 e!672976)))

(assert (=> b!1060397 (= res!473889 (not ((_ is Concat!4748) (regTwo!6343 r!15766))))))

(assert (=> b!1060397 (= e!672979 e!672976)))

(declare-fun b!1060398 () Bool)

(declare-fun e!672978 () Bool)

(assert (=> b!1060398 (= e!672976 e!672978)))

(declare-fun res!473890 () Bool)

(assert (=> b!1060398 (=> (not res!473890) (not e!672978))))

(assert (=> b!1060398 (= res!473890 call!76180)))

(declare-fun b!1060399 () Bool)

(assert (=> b!1060399 (= e!672975 e!672979)))

(assert (=> b!1060399 (= c!177706 ((_ is Union!2915) (regTwo!6343 r!15766)))))

(declare-fun b!1060400 () Bool)

(assert (=> b!1060400 (= e!672978 call!76179)))

(declare-fun b!1060401 () Bool)

(assert (=> b!1060401 (= e!672973 call!76181)))

(declare-fun b!1060402 () Bool)

(assert (=> b!1060402 (= e!672977 e!672975)))

(assert (=> b!1060402 (= c!177705 ((_ is Star!2915) (regTwo!6343 r!15766)))))

(assert (= (and d!300603 (not res!473892)) b!1060402))

(assert (= (and b!1060402 c!177705) b!1060395))

(assert (= (and b!1060402 (not c!177705)) b!1060399))

(assert (= (and b!1060395 res!473888) b!1060401))

(assert (= (and b!1060399 c!177706) b!1060394))

(assert (= (and b!1060399 (not c!177706)) b!1060397))

(assert (= (and b!1060394 res!473891) b!1060396))

(assert (= (and b!1060397 (not res!473889)) b!1060398))

(assert (= (and b!1060398 res!473890) b!1060400))

(assert (= (or b!1060396 b!1060400) bm!76176))

(assert (= (or b!1060394 b!1060398) bm!76174))

(assert (= (or b!1060401 bm!76176) bm!76175))

(declare-fun m!1220775 () Bool)

(assert (=> bm!76174 m!1220775))

(declare-fun m!1220777 () Bool)

(assert (=> b!1060395 m!1220777))

(declare-fun m!1220779 () Bool)

(assert (=> bm!76175 m!1220779))

(assert (=> b!1059753 d!300603))

(declare-fun b!1060414 () Bool)

(declare-fun e!672982 () Bool)

(declare-fun tp!318613 () Bool)

(declare-fun tp!318614 () Bool)

(assert (=> b!1060414 (= e!672982 (and tp!318613 tp!318614))))

(assert (=> b!1059763 (= tp!318564 e!672982)))

(declare-fun b!1060415 () Bool)

(declare-fun tp!318617 () Bool)

(assert (=> b!1060415 (= e!672982 tp!318617)))

(declare-fun b!1060416 () Bool)

(declare-fun tp!318615 () Bool)

(declare-fun tp!318616 () Bool)

(assert (=> b!1060416 (= e!672982 (and tp!318615 tp!318616))))

(declare-fun b!1060413 () Bool)

(assert (=> b!1060413 (= e!672982 tp_is_empty!5473)))

(assert (= (and b!1059763 ((_ is ElementMatch!2915) (regOne!6342 r!15766))) b!1060413))

(assert (= (and b!1059763 ((_ is Concat!4748) (regOne!6342 r!15766))) b!1060414))

(assert (= (and b!1059763 ((_ is Star!2915) (regOne!6342 r!15766))) b!1060415))

(assert (= (and b!1059763 ((_ is Union!2915) (regOne!6342 r!15766))) b!1060416))

(declare-fun b!1060418 () Bool)

(declare-fun e!672983 () Bool)

(declare-fun tp!318618 () Bool)

(declare-fun tp!318619 () Bool)

(assert (=> b!1060418 (= e!672983 (and tp!318618 tp!318619))))

(assert (=> b!1059763 (= tp!318561 e!672983)))

(declare-fun b!1060419 () Bool)

(declare-fun tp!318622 () Bool)

(assert (=> b!1060419 (= e!672983 tp!318622)))

(declare-fun b!1060420 () Bool)

(declare-fun tp!318620 () Bool)

(declare-fun tp!318621 () Bool)

(assert (=> b!1060420 (= e!672983 (and tp!318620 tp!318621))))

(declare-fun b!1060417 () Bool)

(assert (=> b!1060417 (= e!672983 tp_is_empty!5473)))

(assert (= (and b!1059763 ((_ is ElementMatch!2915) (regTwo!6342 r!15766))) b!1060417))

(assert (= (and b!1059763 ((_ is Concat!4748) (regTwo!6342 r!15766))) b!1060418))

(assert (= (and b!1059763 ((_ is Star!2915) (regTwo!6342 r!15766))) b!1060419))

(assert (= (and b!1059763 ((_ is Union!2915) (regTwo!6342 r!15766))) b!1060420))

(declare-fun b!1060422 () Bool)

(declare-fun e!672984 () Bool)

(declare-fun tp!318623 () Bool)

(declare-fun tp!318624 () Bool)

(assert (=> b!1060422 (= e!672984 (and tp!318623 tp!318624))))

(assert (=> b!1059762 (= tp!318563 e!672984)))

(declare-fun b!1060423 () Bool)

(declare-fun tp!318627 () Bool)

(assert (=> b!1060423 (= e!672984 tp!318627)))

(declare-fun b!1060424 () Bool)

(declare-fun tp!318625 () Bool)

(declare-fun tp!318626 () Bool)

(assert (=> b!1060424 (= e!672984 (and tp!318625 tp!318626))))

(declare-fun b!1060421 () Bool)

(assert (=> b!1060421 (= e!672984 tp_is_empty!5473)))

(assert (= (and b!1059762 ((_ is ElementMatch!2915) (reg!3244 r!15766))) b!1060421))

(assert (= (and b!1059762 ((_ is Concat!4748) (reg!3244 r!15766))) b!1060422))

(assert (= (and b!1059762 ((_ is Star!2915) (reg!3244 r!15766))) b!1060423))

(assert (= (and b!1059762 ((_ is Union!2915) (reg!3244 r!15766))) b!1060424))

(declare-fun b!1060429 () Bool)

(declare-fun e!672987 () Bool)

(declare-fun tp!318630 () Bool)

(assert (=> b!1060429 (= e!672987 (and tp_is_empty!5473 tp!318630))))

(assert (=> b!1059755 (= tp!318562 e!672987)))

(assert (= (and b!1059755 ((_ is Cons!10129) (t!101191 s!10566))) b!1060429))

(declare-fun b!1060431 () Bool)

(declare-fun e!672988 () Bool)

(declare-fun tp!318631 () Bool)

(declare-fun tp!318632 () Bool)

(assert (=> b!1060431 (= e!672988 (and tp!318631 tp!318632))))

(assert (=> b!1059759 (= tp!318559 e!672988)))

(declare-fun b!1060432 () Bool)

(declare-fun tp!318635 () Bool)

(assert (=> b!1060432 (= e!672988 tp!318635)))

(declare-fun b!1060433 () Bool)

(declare-fun tp!318633 () Bool)

(declare-fun tp!318634 () Bool)

(assert (=> b!1060433 (= e!672988 (and tp!318633 tp!318634))))

(declare-fun b!1060430 () Bool)

(assert (=> b!1060430 (= e!672988 tp_is_empty!5473)))

(assert (= (and b!1059759 ((_ is ElementMatch!2915) (regOne!6343 r!15766))) b!1060430))

(assert (= (and b!1059759 ((_ is Concat!4748) (regOne!6343 r!15766))) b!1060431))

(assert (= (and b!1059759 ((_ is Star!2915) (regOne!6343 r!15766))) b!1060432))

(assert (= (and b!1059759 ((_ is Union!2915) (regOne!6343 r!15766))) b!1060433))

(declare-fun b!1060435 () Bool)

(declare-fun e!672989 () Bool)

(declare-fun tp!318636 () Bool)

(declare-fun tp!318637 () Bool)

(assert (=> b!1060435 (= e!672989 (and tp!318636 tp!318637))))

(assert (=> b!1059759 (= tp!318560 e!672989)))

(declare-fun b!1060436 () Bool)

(declare-fun tp!318640 () Bool)

(assert (=> b!1060436 (= e!672989 tp!318640)))

(declare-fun b!1060437 () Bool)

(declare-fun tp!318638 () Bool)

(declare-fun tp!318639 () Bool)

(assert (=> b!1060437 (= e!672989 (and tp!318638 tp!318639))))

(declare-fun b!1060434 () Bool)

(assert (=> b!1060434 (= e!672989 tp_is_empty!5473)))

(assert (= (and b!1059759 ((_ is ElementMatch!2915) (regTwo!6343 r!15766))) b!1060434))

(assert (= (and b!1059759 ((_ is Concat!4748) (regTwo!6343 r!15766))) b!1060435))

(assert (= (and b!1059759 ((_ is Star!2915) (regTwo!6343 r!15766))) b!1060436))

(assert (= (and b!1059759 ((_ is Union!2915) (regTwo!6343 r!15766))) b!1060437))

(check-sat (not b!1060234) (not b!1060221) (not b!1060203) (not b!1059880) (not b!1060422) (not bm!76158) (not bm!76136) (not d!300543) (not b!1060436) (not b!1060202) (not b!1060437) (not b!1060415) (not bm!76157) (not bm!76111) (not b!1060281) (not b!1060292) (not bm!76134) (not d!300589) (not bm!76164) (not b!1060349) (not bm!76110) (not d!300585) (not b!1060424) (not b!1060219) (not bm!76152) (not b!1060228) (not bm!76171) (not b!1060414) (not d!300547) (not b!1060243) (not b!1060431) (not b!1059855) (not b!1060229) (not b!1060386) (not bm!76163) (not b!1060217) (not bm!76156) (not bm!76159) (not b!1060242) (not b!1060418) (not b!1060188) (not b!1060423) (not b!1060433) (not b!1060247) (not d!300593) (not bm!76115) (not b!1060187) (not bm!76172) (not b!1060395) (not b!1060432) (not b!1060435) (not bm!76151) (not b!1060245) (not d!300583) (not b!1060248) (not b!1060416) tp_is_empty!5473 (not bm!76112) (not bm!76129) (not b!1059857) (not b!1060214) (not b!1060419) (not bm!76131) (not bm!76042) (not bm!76155) (not b!1060220) (not b!1059854) (not bm!76116) (not bm!76162) (not b!1059847) (not d!300591) (not bm!76114) (not b!1060420) (not b!1059859) (not b!1060231) (not bm!76174) (not b!1060233) (not b!1059860) (not bm!76175) (not d!300587) (not b!1059879) (not bm!76113) (not b!1060235) (not b!1060215) (not d!300579) (not b!1060429) (not b!1060207))
(check-sat)
