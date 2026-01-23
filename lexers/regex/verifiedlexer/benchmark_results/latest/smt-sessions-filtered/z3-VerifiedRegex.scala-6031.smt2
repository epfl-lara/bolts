; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!295000 () Bool)

(assert start!295000)

(declare-fun b!3116533 () Bool)

(declare-fun e!1946369 () Bool)

(declare-fun tp_is_empty!16789 () Bool)

(assert (=> b!3116533 (= e!1946369 tp_is_empty!16789)))

(declare-fun b!3116534 () Bool)

(declare-fun e!1946368 () Bool)

(assert (=> b!3116534 (= e!1946368 false)))

(declare-datatypes ((C!19412 0))(
  ( (C!19413 (val!11742 Int)) )
))
(declare-datatypes ((Regex!9613 0))(
  ( (ElementMatch!9613 (c!522047 C!19412)) (Concat!14934 (regOne!19738 Regex!9613) (regTwo!19738 Regex!9613)) (EmptyExpr!9613) (Star!9613 (reg!9942 Regex!9613)) (EmptyLang!9613) (Union!9613 (regOne!19739 Regex!9613) (regTwo!19739 Regex!9613)) )
))
(declare-fun r!17423 () Regex!9613)

(declare-datatypes ((List!35478 0))(
  ( (Nil!35354) (Cons!35354 (h!40774 C!19412) (t!234543 List!35478)) )
))
(declare-fun s!11993 () List!35478)

(declare-fun matchR!4495 (Regex!9613 List!35478) Bool)

(declare-fun ++!8501 (List!35478 List!35478) List!35478)

(assert (=> b!3116534 (matchR!4495 (Star!9613 (reg!9942 r!17423)) (++!8501 Nil!35354 s!11993))))

(declare-datatypes ((Unit!49665 0))(
  ( (Unit!49666) )
))
(declare-fun lt!1058368 () Unit!49665)

(declare-fun lemmaStarApp!26 (Regex!9613 List!35478 List!35478) Unit!49665)

(assert (=> b!3116534 (= lt!1058368 (lemmaStarApp!26 (reg!9942 r!17423) Nil!35354 s!11993))))

(declare-fun b!3116535 () Bool)

(declare-fun tp!977336 () Bool)

(assert (=> b!3116535 (= e!1946369 tp!977336)))

(declare-fun b!3116536 () Bool)

(declare-fun e!1946365 () Bool)

(assert (=> b!3116536 (= e!1946365 e!1946368)))

(declare-fun res!1275587 () Bool)

(assert (=> b!3116536 (=> res!1275587 e!1946368)))

(declare-fun lt!1058365 () Bool)

(assert (=> b!3116536 (= res!1275587 (not lt!1058365))))

(declare-fun lt!1058370 () Regex!9613)

(assert (=> b!3116536 (= lt!1058365 (matchR!4495 lt!1058370 s!11993))))

(assert (=> b!3116536 (= lt!1058365 (matchR!4495 (reg!9942 r!17423) s!11993))))

(declare-fun lt!1058369 () Unit!49665)

(declare-fun lemmaSimplifySound!356 (Regex!9613 List!35478) Unit!49665)

(assert (=> b!3116536 (= lt!1058369 (lemmaSimplifySound!356 (reg!9942 r!17423) s!11993))))

(declare-fun b!3116537 () Bool)

(declare-fun tp!977339 () Bool)

(declare-fun tp!977340 () Bool)

(assert (=> b!3116537 (= e!1946369 (and tp!977339 tp!977340))))

(declare-fun b!3116538 () Bool)

(declare-fun e!1946366 () Bool)

(declare-fun e!1946367 () Bool)

(assert (=> b!3116538 (= e!1946366 (not e!1946367))))

(declare-fun res!1275589 () Bool)

(assert (=> b!3116538 (=> res!1275589 e!1946367)))

(declare-fun lt!1058366 () Bool)

(get-info :version)

(assert (=> b!3116538 (= res!1275589 (or lt!1058366 ((_ is Concat!14934) r!17423) ((_ is Union!9613) r!17423) (not ((_ is Star!9613) r!17423))))))

(declare-fun matchRSpec!1750 (Regex!9613 List!35478) Bool)

(assert (=> b!3116538 (= lt!1058366 (matchRSpec!1750 r!17423 s!11993))))

(assert (=> b!3116538 (= lt!1058366 (matchR!4495 r!17423 s!11993))))

(declare-fun lt!1058367 () Unit!49665)

(declare-fun mainMatchTheorem!1750 (Regex!9613 List!35478) Unit!49665)

(assert (=> b!3116538 (= lt!1058367 (mainMatchTheorem!1750 r!17423 s!11993))))

(declare-fun res!1275588 () Bool)

(assert (=> start!295000 (=> (not res!1275588) (not e!1946366))))

(declare-fun validRegex!4346 (Regex!9613) Bool)

(assert (=> start!295000 (= res!1275588 (validRegex!4346 r!17423))))

(assert (=> start!295000 e!1946366))

(assert (=> start!295000 e!1946369))

(declare-fun e!1946364 () Bool)

(assert (=> start!295000 e!1946364))

(declare-fun b!3116539 () Bool)

(declare-fun tp!977341 () Bool)

(assert (=> b!3116539 (= e!1946364 (and tp_is_empty!16789 tp!977341))))

(declare-fun b!3116540 () Bool)

(assert (=> b!3116540 (= e!1946367 e!1946365)))

(declare-fun res!1275590 () Bool)

(assert (=> b!3116540 (=> res!1275590 e!1946365)))

(declare-fun isEmptyLang!664 (Regex!9613) Bool)

(assert (=> b!3116540 (= res!1275590 (not (isEmptyLang!664 lt!1058370)))))

(declare-fun simplify!568 (Regex!9613) Regex!9613)

(assert (=> b!3116540 (= lt!1058370 (simplify!568 (reg!9942 r!17423)))))

(declare-fun b!3116541 () Bool)

(declare-fun tp!977337 () Bool)

(declare-fun tp!977338 () Bool)

(assert (=> b!3116541 (= e!1946369 (and tp!977337 tp!977338))))

(assert (= (and start!295000 res!1275588) b!3116538))

(assert (= (and b!3116538 (not res!1275589)) b!3116540))

(assert (= (and b!3116540 (not res!1275590)) b!3116536))

(assert (= (and b!3116536 (not res!1275587)) b!3116534))

(assert (= (and start!295000 ((_ is ElementMatch!9613) r!17423)) b!3116533))

(assert (= (and start!295000 ((_ is Concat!14934) r!17423)) b!3116537))

(assert (= (and start!295000 ((_ is Star!9613) r!17423)) b!3116535))

(assert (= (and start!295000 ((_ is Union!9613) r!17423)) b!3116541))

(assert (= (and start!295000 ((_ is Cons!35354) s!11993)) b!3116539))

(declare-fun m!3406657 () Bool)

(assert (=> b!3116534 m!3406657))

(assert (=> b!3116534 m!3406657))

(declare-fun m!3406659 () Bool)

(assert (=> b!3116534 m!3406659))

(declare-fun m!3406661 () Bool)

(assert (=> b!3116534 m!3406661))

(declare-fun m!3406663 () Bool)

(assert (=> b!3116538 m!3406663))

(declare-fun m!3406665 () Bool)

(assert (=> b!3116538 m!3406665))

(declare-fun m!3406667 () Bool)

(assert (=> b!3116538 m!3406667))

(declare-fun m!3406669 () Bool)

(assert (=> b!3116540 m!3406669))

(declare-fun m!3406671 () Bool)

(assert (=> b!3116540 m!3406671))

(declare-fun m!3406673 () Bool)

(assert (=> start!295000 m!3406673))

(declare-fun m!3406675 () Bool)

(assert (=> b!3116536 m!3406675))

(declare-fun m!3406677 () Bool)

(assert (=> b!3116536 m!3406677))

(declare-fun m!3406679 () Bool)

(assert (=> b!3116536 m!3406679))

(check-sat (not b!3116541) (not start!295000) (not b!3116536) (not b!3116539) (not b!3116538) (not b!3116534) (not b!3116540) tp_is_empty!16789 (not b!3116537) (not b!3116535))
(check-sat)
(get-model)

(declare-fun b!3116764 () Bool)

(assert (=> b!3116764 true))

(assert (=> b!3116764 true))

(declare-fun bs!535851 () Bool)

(declare-fun b!3116769 () Bool)

(assert (= bs!535851 (and b!3116769 b!3116764)))

(declare-fun lambda!115154 () Int)

(declare-fun lambda!115153 () Int)

(assert (=> bs!535851 (not (= lambda!115154 lambda!115153))))

(assert (=> b!3116769 true))

(assert (=> b!3116769 true))

(declare-fun c!522115 () Bool)

(declare-fun call!221206 () Bool)

(declare-fun bm!221200 () Bool)

(declare-fun Exists!1866 (Int) Bool)

(assert (=> bm!221200 (= call!221206 (Exists!1866 (ite c!522115 lambda!115153 lambda!115154)))))

(declare-fun e!1946497 () Bool)

(assert (=> b!3116764 (= e!1946497 call!221206)))

(declare-fun b!3116765 () Bool)

(declare-fun e!1946498 () Bool)

(declare-fun e!1946503 () Bool)

(assert (=> b!3116765 (= e!1946498 e!1946503)))

(declare-fun res!1275681 () Bool)

(assert (=> b!3116765 (= res!1275681 (matchRSpec!1750 (regOne!19739 r!17423) s!11993))))

(assert (=> b!3116765 (=> res!1275681 e!1946503)))

(declare-fun b!3116766 () Bool)

(declare-fun e!1946501 () Bool)

(declare-fun e!1946500 () Bool)

(assert (=> b!3116766 (= e!1946501 e!1946500)))

(declare-fun res!1275679 () Bool)

(assert (=> b!3116766 (= res!1275679 (not ((_ is EmptyLang!9613) r!17423)))))

(assert (=> b!3116766 (=> (not res!1275679) (not e!1946500))))

(declare-fun bm!221201 () Bool)

(declare-fun call!221205 () Bool)

(declare-fun isEmpty!19697 (List!35478) Bool)

(assert (=> bm!221201 (= call!221205 (isEmpty!19697 s!11993))))

(declare-fun b!3116767 () Bool)

(declare-fun res!1275680 () Bool)

(assert (=> b!3116767 (=> res!1275680 e!1946497)))

(assert (=> b!3116767 (= res!1275680 call!221205)))

(declare-fun e!1946502 () Bool)

(assert (=> b!3116767 (= e!1946502 e!1946497)))

(declare-fun d!862176 () Bool)

(declare-fun c!522117 () Bool)

(assert (=> d!862176 (= c!522117 ((_ is EmptyExpr!9613) r!17423))))

(assert (=> d!862176 (= (matchRSpec!1750 r!17423 s!11993) e!1946501)))

(declare-fun b!3116768 () Bool)

(assert (=> b!3116768 (= e!1946498 e!1946502)))

(assert (=> b!3116768 (= c!522115 ((_ is Star!9613) r!17423))))

(assert (=> b!3116769 (= e!1946502 call!221206)))

(declare-fun b!3116770 () Bool)

(declare-fun c!522118 () Bool)

(assert (=> b!3116770 (= c!522118 ((_ is ElementMatch!9613) r!17423))))

(declare-fun e!1946499 () Bool)

(assert (=> b!3116770 (= e!1946500 e!1946499)))

(declare-fun b!3116771 () Bool)

(assert (=> b!3116771 (= e!1946501 call!221205)))

(declare-fun b!3116772 () Bool)

(assert (=> b!3116772 (= e!1946499 (= s!11993 (Cons!35354 (c!522047 r!17423) Nil!35354)))))

(declare-fun b!3116773 () Bool)

(assert (=> b!3116773 (= e!1946503 (matchRSpec!1750 (regTwo!19739 r!17423) s!11993))))

(declare-fun b!3116774 () Bool)

(declare-fun c!522116 () Bool)

(assert (=> b!3116774 (= c!522116 ((_ is Union!9613) r!17423))))

(assert (=> b!3116774 (= e!1946499 e!1946498)))

(assert (= (and d!862176 c!522117) b!3116771))

(assert (= (and d!862176 (not c!522117)) b!3116766))

(assert (= (and b!3116766 res!1275679) b!3116770))

(assert (= (and b!3116770 c!522118) b!3116772))

(assert (= (and b!3116770 (not c!522118)) b!3116774))

(assert (= (and b!3116774 c!522116) b!3116765))

(assert (= (and b!3116774 (not c!522116)) b!3116768))

(assert (= (and b!3116765 (not res!1275681)) b!3116773))

(assert (= (and b!3116768 c!522115) b!3116767))

(assert (= (and b!3116768 (not c!522115)) b!3116769))

(assert (= (and b!3116767 (not res!1275680)) b!3116764))

(assert (= (or b!3116764 b!3116769) bm!221200))

(assert (= (or b!3116771 b!3116767) bm!221201))

(declare-fun m!3406729 () Bool)

(assert (=> bm!221200 m!3406729))

(declare-fun m!3406731 () Bool)

(assert (=> b!3116765 m!3406731))

(declare-fun m!3406733 () Bool)

(assert (=> bm!221201 m!3406733))

(declare-fun m!3406735 () Bool)

(assert (=> b!3116773 m!3406735))

(assert (=> b!3116538 d!862176))

(declare-fun b!3116850 () Bool)

(declare-fun e!1946543 () Bool)

(declare-fun e!1946540 () Bool)

(assert (=> b!3116850 (= e!1946543 e!1946540)))

(declare-fun res!1275723 () Bool)

(assert (=> b!3116850 (=> res!1275723 e!1946540)))

(declare-fun call!221215 () Bool)

(assert (=> b!3116850 (= res!1275723 call!221215)))

(declare-fun b!3116851 () Bool)

(declare-fun e!1946545 () Bool)

(declare-fun e!1946539 () Bool)

(assert (=> b!3116851 (= e!1946545 e!1946539)))

(declare-fun c!522135 () Bool)

(assert (=> b!3116851 (= c!522135 ((_ is EmptyLang!9613) r!17423))))

(declare-fun b!3116852 () Bool)

(declare-fun e!1946542 () Bool)

(declare-fun derivativeStep!2846 (Regex!9613 C!19412) Regex!9613)

(declare-fun head!6905 (List!35478) C!19412)

(declare-fun tail!5131 (List!35478) List!35478)

(assert (=> b!3116852 (= e!1946542 (matchR!4495 (derivativeStep!2846 r!17423 (head!6905 s!11993)) (tail!5131 s!11993)))))

(declare-fun b!3116853 () Bool)

(declare-fun e!1946541 () Bool)

(assert (=> b!3116853 (= e!1946541 e!1946543)))

(declare-fun res!1275720 () Bool)

(assert (=> b!3116853 (=> (not res!1275720) (not e!1946543))))

(declare-fun lt!1058403 () Bool)

(assert (=> b!3116853 (= res!1275720 (not lt!1058403))))

(declare-fun b!3116854 () Bool)

(assert (=> b!3116854 (= e!1946545 (= lt!1058403 call!221215))))

(declare-fun b!3116855 () Bool)

(declare-fun nullable!3251 (Regex!9613) Bool)

(assert (=> b!3116855 (= e!1946542 (nullable!3251 r!17423))))

(declare-fun b!3116856 () Bool)

(declare-fun res!1275719 () Bool)

(assert (=> b!3116856 (=> res!1275719 e!1946540)))

(assert (=> b!3116856 (= res!1275719 (not (isEmpty!19697 (tail!5131 s!11993))))))

(declare-fun d!862190 () Bool)

(assert (=> d!862190 e!1946545))

(declare-fun c!522137 () Bool)

(assert (=> d!862190 (= c!522137 ((_ is EmptyExpr!9613) r!17423))))

(assert (=> d!862190 (= lt!1058403 e!1946542)))

(declare-fun c!522136 () Bool)

(assert (=> d!862190 (= c!522136 (isEmpty!19697 s!11993))))

(assert (=> d!862190 (validRegex!4346 r!17423)))

(assert (=> d!862190 (= (matchR!4495 r!17423 s!11993) lt!1058403)))

(declare-fun b!3116857 () Bool)

(declare-fun res!1275724 () Bool)

(declare-fun e!1946544 () Bool)

(assert (=> b!3116857 (=> (not res!1275724) (not e!1946544))))

(assert (=> b!3116857 (= res!1275724 (isEmpty!19697 (tail!5131 s!11993)))))

(declare-fun b!3116858 () Bool)

(assert (=> b!3116858 (= e!1946544 (= (head!6905 s!11993) (c!522047 r!17423)))))

(declare-fun b!3116859 () Bool)

(assert (=> b!3116859 (= e!1946540 (not (= (head!6905 s!11993) (c!522047 r!17423))))))

(declare-fun b!3116860 () Bool)

(declare-fun res!1275722 () Bool)

(assert (=> b!3116860 (=> (not res!1275722) (not e!1946544))))

(assert (=> b!3116860 (= res!1275722 (not call!221215))))

(declare-fun b!3116861 () Bool)

(declare-fun res!1275721 () Bool)

(assert (=> b!3116861 (=> res!1275721 e!1946541)))

(assert (=> b!3116861 (= res!1275721 e!1946544)))

(declare-fun res!1275717 () Bool)

(assert (=> b!3116861 (=> (not res!1275717) (not e!1946544))))

(assert (=> b!3116861 (= res!1275717 lt!1058403)))

(declare-fun b!3116862 () Bool)

(declare-fun res!1275718 () Bool)

(assert (=> b!3116862 (=> res!1275718 e!1946541)))

(assert (=> b!3116862 (= res!1275718 (not ((_ is ElementMatch!9613) r!17423)))))

(assert (=> b!3116862 (= e!1946539 e!1946541)))

(declare-fun bm!221210 () Bool)

(assert (=> bm!221210 (= call!221215 (isEmpty!19697 s!11993))))

(declare-fun b!3116863 () Bool)

(assert (=> b!3116863 (= e!1946539 (not lt!1058403))))

(assert (= (and d!862190 c!522136) b!3116855))

(assert (= (and d!862190 (not c!522136)) b!3116852))

(assert (= (and d!862190 c!522137) b!3116854))

(assert (= (and d!862190 (not c!522137)) b!3116851))

(assert (= (and b!3116851 c!522135) b!3116863))

(assert (= (and b!3116851 (not c!522135)) b!3116862))

(assert (= (and b!3116862 (not res!1275718)) b!3116861))

(assert (= (and b!3116861 res!1275717) b!3116860))

(assert (= (and b!3116860 res!1275722) b!3116857))

(assert (= (and b!3116857 res!1275724) b!3116858))

(assert (= (and b!3116861 (not res!1275721)) b!3116853))

(assert (= (and b!3116853 res!1275720) b!3116850))

(assert (= (and b!3116850 (not res!1275723)) b!3116856))

(assert (= (and b!3116856 (not res!1275719)) b!3116859))

(assert (= (or b!3116854 b!3116850 b!3116860) bm!221210))

(declare-fun m!3406767 () Bool)

(assert (=> b!3116852 m!3406767))

(assert (=> b!3116852 m!3406767))

(declare-fun m!3406769 () Bool)

(assert (=> b!3116852 m!3406769))

(declare-fun m!3406771 () Bool)

(assert (=> b!3116852 m!3406771))

(assert (=> b!3116852 m!3406769))

(assert (=> b!3116852 m!3406771))

(declare-fun m!3406773 () Bool)

(assert (=> b!3116852 m!3406773))

(assert (=> bm!221210 m!3406733))

(assert (=> b!3116859 m!3406767))

(assert (=> b!3116857 m!3406771))

(assert (=> b!3116857 m!3406771))

(declare-fun m!3406775 () Bool)

(assert (=> b!3116857 m!3406775))

(assert (=> b!3116858 m!3406767))

(assert (=> b!3116856 m!3406771))

(assert (=> b!3116856 m!3406771))

(assert (=> b!3116856 m!3406775))

(assert (=> d!862190 m!3406733))

(assert (=> d!862190 m!3406673))

(declare-fun m!3406777 () Bool)

(assert (=> b!3116855 m!3406777))

(assert (=> b!3116538 d!862190))

(declare-fun d!862200 () Bool)

(assert (=> d!862200 (= (matchR!4495 r!17423 s!11993) (matchRSpec!1750 r!17423 s!11993))))

(declare-fun lt!1058409 () Unit!49665)

(declare-fun choose!18432 (Regex!9613 List!35478) Unit!49665)

(assert (=> d!862200 (= lt!1058409 (choose!18432 r!17423 s!11993))))

(assert (=> d!862200 (validRegex!4346 r!17423)))

(assert (=> d!862200 (= (mainMatchTheorem!1750 r!17423 s!11993) lt!1058409)))

(declare-fun bs!535854 () Bool)

(assert (= bs!535854 d!862200))

(assert (=> bs!535854 m!3406665))

(assert (=> bs!535854 m!3406663))

(declare-fun m!3406793 () Bool)

(assert (=> bs!535854 m!3406793))

(assert (=> bs!535854 m!3406673))

(assert (=> b!3116538 d!862200))

(declare-fun b!3116929 () Bool)

(declare-fun e!1946581 () Bool)

(declare-fun e!1946580 () Bool)

(assert (=> b!3116929 (= e!1946581 e!1946580)))

(declare-fun res!1275745 () Bool)

(assert (=> b!3116929 (=> (not res!1275745) (not e!1946580))))

(declare-fun call!221224 () Bool)

(assert (=> b!3116929 (= res!1275745 call!221224)))

(declare-fun b!3116930 () Bool)

(declare-fun e!1946578 () Bool)

(declare-fun e!1946579 () Bool)

(assert (=> b!3116930 (= e!1946578 e!1946579)))

(declare-fun res!1275741 () Bool)

(assert (=> b!3116930 (= res!1275741 (not (nullable!3251 (reg!9942 r!17423))))))

(assert (=> b!3116930 (=> (not res!1275741) (not e!1946579))))

(declare-fun bm!221217 () Bool)

(declare-fun call!221223 () Bool)

(declare-fun call!221222 () Bool)

(assert (=> bm!221217 (= call!221223 call!221222)))

(declare-fun b!3116931 () Bool)

(declare-fun e!1946582 () Bool)

(assert (=> b!3116931 (= e!1946582 e!1946578)))

(declare-fun c!522145 () Bool)

(assert (=> b!3116931 (= c!522145 ((_ is Star!9613) r!17423))))

(declare-fun bm!221218 () Bool)

(declare-fun c!522146 () Bool)

(assert (=> bm!221218 (= call!221222 (validRegex!4346 (ite c!522145 (reg!9942 r!17423) (ite c!522146 (regOne!19739 r!17423) (regTwo!19738 r!17423)))))))

(declare-fun b!3116932 () Bool)

(declare-fun e!1946577 () Bool)

(assert (=> b!3116932 (= e!1946577 call!221224)))

(declare-fun bm!221219 () Bool)

(assert (=> bm!221219 (= call!221224 (validRegex!4346 (ite c!522146 (regTwo!19739 r!17423) (regOne!19738 r!17423))))))

(declare-fun b!3116933 () Bool)

(declare-fun res!1275742 () Bool)

(assert (=> b!3116933 (=> res!1275742 e!1946581)))

(assert (=> b!3116933 (= res!1275742 (not ((_ is Concat!14934) r!17423)))))

(declare-fun e!1946576 () Bool)

(assert (=> b!3116933 (= e!1946576 e!1946581)))

(declare-fun b!3116934 () Bool)

(assert (=> b!3116934 (= e!1946579 call!221222)))

(declare-fun b!3116935 () Bool)

(declare-fun res!1275744 () Bool)

(assert (=> b!3116935 (=> (not res!1275744) (not e!1946577))))

(assert (=> b!3116935 (= res!1275744 call!221223)))

(assert (=> b!3116935 (= e!1946576 e!1946577)))

(declare-fun d!862204 () Bool)

(declare-fun res!1275743 () Bool)

(assert (=> d!862204 (=> res!1275743 e!1946582)))

(assert (=> d!862204 (= res!1275743 ((_ is ElementMatch!9613) r!17423))))

(assert (=> d!862204 (= (validRegex!4346 r!17423) e!1946582)))

(declare-fun b!3116936 () Bool)

(assert (=> b!3116936 (= e!1946578 e!1946576)))

(assert (=> b!3116936 (= c!522146 ((_ is Union!9613) r!17423))))

(declare-fun b!3116937 () Bool)

(assert (=> b!3116937 (= e!1946580 call!221223)))

(assert (= (and d!862204 (not res!1275743)) b!3116931))

(assert (= (and b!3116931 c!522145) b!3116930))

(assert (= (and b!3116931 (not c!522145)) b!3116936))

(assert (= (and b!3116930 res!1275741) b!3116934))

(assert (= (and b!3116936 c!522146) b!3116935))

(assert (= (and b!3116936 (not c!522146)) b!3116933))

(assert (= (and b!3116935 res!1275744) b!3116932))

(assert (= (and b!3116933 (not res!1275742)) b!3116929))

(assert (= (and b!3116929 res!1275745) b!3116937))

(assert (= (or b!3116935 b!3116937) bm!221217))

(assert (= (or b!3116932 b!3116929) bm!221219))

(assert (= (or b!3116934 bm!221217) bm!221218))

(declare-fun m!3406797 () Bool)

(assert (=> b!3116930 m!3406797))

(declare-fun m!3406799 () Bool)

(assert (=> bm!221218 m!3406799))

(declare-fun m!3406801 () Bool)

(assert (=> bm!221219 m!3406801))

(assert (=> start!295000 d!862204))

(declare-fun b!3116938 () Bool)

(declare-fun e!1946587 () Bool)

(declare-fun e!1946584 () Bool)

(assert (=> b!3116938 (= e!1946587 e!1946584)))

(declare-fun res!1275752 () Bool)

(assert (=> b!3116938 (=> res!1275752 e!1946584)))

(declare-fun call!221225 () Bool)

(assert (=> b!3116938 (= res!1275752 call!221225)))

(declare-fun b!3116939 () Bool)

(declare-fun e!1946589 () Bool)

(declare-fun e!1946583 () Bool)

(assert (=> b!3116939 (= e!1946589 e!1946583)))

(declare-fun c!522147 () Bool)

(assert (=> b!3116939 (= c!522147 ((_ is EmptyLang!9613) lt!1058370))))

(declare-fun b!3116940 () Bool)

(declare-fun e!1946586 () Bool)

(assert (=> b!3116940 (= e!1946586 (matchR!4495 (derivativeStep!2846 lt!1058370 (head!6905 s!11993)) (tail!5131 s!11993)))))

(declare-fun b!3116941 () Bool)

(declare-fun e!1946585 () Bool)

(assert (=> b!3116941 (= e!1946585 e!1946587)))

(declare-fun res!1275749 () Bool)

(assert (=> b!3116941 (=> (not res!1275749) (not e!1946587))))

(declare-fun lt!1058413 () Bool)

(assert (=> b!3116941 (= res!1275749 (not lt!1058413))))

(declare-fun b!3116942 () Bool)

(assert (=> b!3116942 (= e!1946589 (= lt!1058413 call!221225))))

(declare-fun b!3116943 () Bool)

(assert (=> b!3116943 (= e!1946586 (nullable!3251 lt!1058370))))

(declare-fun b!3116944 () Bool)

(declare-fun res!1275748 () Bool)

(assert (=> b!3116944 (=> res!1275748 e!1946584)))

(assert (=> b!3116944 (= res!1275748 (not (isEmpty!19697 (tail!5131 s!11993))))))

(declare-fun d!862206 () Bool)

(assert (=> d!862206 e!1946589))

(declare-fun c!522149 () Bool)

(assert (=> d!862206 (= c!522149 ((_ is EmptyExpr!9613) lt!1058370))))

(assert (=> d!862206 (= lt!1058413 e!1946586)))

(declare-fun c!522148 () Bool)

(assert (=> d!862206 (= c!522148 (isEmpty!19697 s!11993))))

(assert (=> d!862206 (validRegex!4346 lt!1058370)))

(assert (=> d!862206 (= (matchR!4495 lt!1058370 s!11993) lt!1058413)))

(declare-fun b!3116945 () Bool)

(declare-fun res!1275753 () Bool)

(declare-fun e!1946588 () Bool)

(assert (=> b!3116945 (=> (not res!1275753) (not e!1946588))))

(assert (=> b!3116945 (= res!1275753 (isEmpty!19697 (tail!5131 s!11993)))))

(declare-fun b!3116946 () Bool)

(assert (=> b!3116946 (= e!1946588 (= (head!6905 s!11993) (c!522047 lt!1058370)))))

(declare-fun b!3116947 () Bool)

(assert (=> b!3116947 (= e!1946584 (not (= (head!6905 s!11993) (c!522047 lt!1058370))))))

(declare-fun b!3116948 () Bool)

(declare-fun res!1275751 () Bool)

(assert (=> b!3116948 (=> (not res!1275751) (not e!1946588))))

(assert (=> b!3116948 (= res!1275751 (not call!221225))))

(declare-fun b!3116949 () Bool)

(declare-fun res!1275750 () Bool)

(assert (=> b!3116949 (=> res!1275750 e!1946585)))

(assert (=> b!3116949 (= res!1275750 e!1946588)))

(declare-fun res!1275746 () Bool)

(assert (=> b!3116949 (=> (not res!1275746) (not e!1946588))))

(assert (=> b!3116949 (= res!1275746 lt!1058413)))

(declare-fun b!3116950 () Bool)

(declare-fun res!1275747 () Bool)

(assert (=> b!3116950 (=> res!1275747 e!1946585)))

(assert (=> b!3116950 (= res!1275747 (not ((_ is ElementMatch!9613) lt!1058370)))))

(assert (=> b!3116950 (= e!1946583 e!1946585)))

(declare-fun bm!221220 () Bool)

(assert (=> bm!221220 (= call!221225 (isEmpty!19697 s!11993))))

(declare-fun b!3116951 () Bool)

(assert (=> b!3116951 (= e!1946583 (not lt!1058413))))

(assert (= (and d!862206 c!522148) b!3116943))

(assert (= (and d!862206 (not c!522148)) b!3116940))

(assert (= (and d!862206 c!522149) b!3116942))

(assert (= (and d!862206 (not c!522149)) b!3116939))

(assert (= (and b!3116939 c!522147) b!3116951))

(assert (= (and b!3116939 (not c!522147)) b!3116950))

(assert (= (and b!3116950 (not res!1275747)) b!3116949))

(assert (= (and b!3116949 res!1275746) b!3116948))

(assert (= (and b!3116948 res!1275751) b!3116945))

(assert (= (and b!3116945 res!1275753) b!3116946))

(assert (= (and b!3116949 (not res!1275750)) b!3116941))

(assert (= (and b!3116941 res!1275749) b!3116938))

(assert (= (and b!3116938 (not res!1275752)) b!3116944))

(assert (= (and b!3116944 (not res!1275748)) b!3116947))

(assert (= (or b!3116942 b!3116938 b!3116948) bm!221220))

(assert (=> b!3116940 m!3406767))

(assert (=> b!3116940 m!3406767))

(declare-fun m!3406803 () Bool)

(assert (=> b!3116940 m!3406803))

(assert (=> b!3116940 m!3406771))

(assert (=> b!3116940 m!3406803))

(assert (=> b!3116940 m!3406771))

(declare-fun m!3406805 () Bool)

(assert (=> b!3116940 m!3406805))

(assert (=> bm!221220 m!3406733))

(assert (=> b!3116947 m!3406767))

(assert (=> b!3116945 m!3406771))

(assert (=> b!3116945 m!3406771))

(assert (=> b!3116945 m!3406775))

(assert (=> b!3116946 m!3406767))

(assert (=> b!3116944 m!3406771))

(assert (=> b!3116944 m!3406771))

(assert (=> b!3116944 m!3406775))

(assert (=> d!862206 m!3406733))

(declare-fun m!3406807 () Bool)

(assert (=> d!862206 m!3406807))

(declare-fun m!3406809 () Bool)

(assert (=> b!3116943 m!3406809))

(assert (=> b!3116536 d!862206))

(declare-fun b!3116952 () Bool)

(declare-fun e!1946594 () Bool)

(declare-fun e!1946591 () Bool)

(assert (=> b!3116952 (= e!1946594 e!1946591)))

(declare-fun res!1275760 () Bool)

(assert (=> b!3116952 (=> res!1275760 e!1946591)))

(declare-fun call!221226 () Bool)

(assert (=> b!3116952 (= res!1275760 call!221226)))

(declare-fun b!3116953 () Bool)

(declare-fun e!1946596 () Bool)

(declare-fun e!1946590 () Bool)

(assert (=> b!3116953 (= e!1946596 e!1946590)))

(declare-fun c!522150 () Bool)

(assert (=> b!3116953 (= c!522150 ((_ is EmptyLang!9613) (reg!9942 r!17423)))))

(declare-fun b!3116954 () Bool)

(declare-fun e!1946593 () Bool)

(assert (=> b!3116954 (= e!1946593 (matchR!4495 (derivativeStep!2846 (reg!9942 r!17423) (head!6905 s!11993)) (tail!5131 s!11993)))))

(declare-fun b!3116955 () Bool)

(declare-fun e!1946592 () Bool)

(assert (=> b!3116955 (= e!1946592 e!1946594)))

(declare-fun res!1275757 () Bool)

(assert (=> b!3116955 (=> (not res!1275757) (not e!1946594))))

(declare-fun lt!1058414 () Bool)

(assert (=> b!3116955 (= res!1275757 (not lt!1058414))))

(declare-fun b!3116956 () Bool)

(assert (=> b!3116956 (= e!1946596 (= lt!1058414 call!221226))))

(declare-fun b!3116957 () Bool)

(assert (=> b!3116957 (= e!1946593 (nullable!3251 (reg!9942 r!17423)))))

(declare-fun b!3116958 () Bool)

(declare-fun res!1275756 () Bool)

(assert (=> b!3116958 (=> res!1275756 e!1946591)))

(assert (=> b!3116958 (= res!1275756 (not (isEmpty!19697 (tail!5131 s!11993))))))

(declare-fun d!862208 () Bool)

(assert (=> d!862208 e!1946596))

(declare-fun c!522152 () Bool)

(assert (=> d!862208 (= c!522152 ((_ is EmptyExpr!9613) (reg!9942 r!17423)))))

(assert (=> d!862208 (= lt!1058414 e!1946593)))

(declare-fun c!522151 () Bool)

(assert (=> d!862208 (= c!522151 (isEmpty!19697 s!11993))))

(assert (=> d!862208 (validRegex!4346 (reg!9942 r!17423))))

(assert (=> d!862208 (= (matchR!4495 (reg!9942 r!17423) s!11993) lt!1058414)))

(declare-fun b!3116959 () Bool)

(declare-fun res!1275761 () Bool)

(declare-fun e!1946595 () Bool)

(assert (=> b!3116959 (=> (not res!1275761) (not e!1946595))))

(assert (=> b!3116959 (= res!1275761 (isEmpty!19697 (tail!5131 s!11993)))))

(declare-fun b!3116960 () Bool)

(assert (=> b!3116960 (= e!1946595 (= (head!6905 s!11993) (c!522047 (reg!9942 r!17423))))))

(declare-fun b!3116961 () Bool)

(assert (=> b!3116961 (= e!1946591 (not (= (head!6905 s!11993) (c!522047 (reg!9942 r!17423)))))))

(declare-fun b!3116962 () Bool)

(declare-fun res!1275759 () Bool)

(assert (=> b!3116962 (=> (not res!1275759) (not e!1946595))))

(assert (=> b!3116962 (= res!1275759 (not call!221226))))

(declare-fun b!3116963 () Bool)

(declare-fun res!1275758 () Bool)

(assert (=> b!3116963 (=> res!1275758 e!1946592)))

(assert (=> b!3116963 (= res!1275758 e!1946595)))

(declare-fun res!1275754 () Bool)

(assert (=> b!3116963 (=> (not res!1275754) (not e!1946595))))

(assert (=> b!3116963 (= res!1275754 lt!1058414)))

(declare-fun b!3116964 () Bool)

(declare-fun res!1275755 () Bool)

(assert (=> b!3116964 (=> res!1275755 e!1946592)))

(assert (=> b!3116964 (= res!1275755 (not ((_ is ElementMatch!9613) (reg!9942 r!17423))))))

(assert (=> b!3116964 (= e!1946590 e!1946592)))

(declare-fun bm!221221 () Bool)

(assert (=> bm!221221 (= call!221226 (isEmpty!19697 s!11993))))

(declare-fun b!3116965 () Bool)

(assert (=> b!3116965 (= e!1946590 (not lt!1058414))))

(assert (= (and d!862208 c!522151) b!3116957))

(assert (= (and d!862208 (not c!522151)) b!3116954))

(assert (= (and d!862208 c!522152) b!3116956))

(assert (= (and d!862208 (not c!522152)) b!3116953))

(assert (= (and b!3116953 c!522150) b!3116965))

(assert (= (and b!3116953 (not c!522150)) b!3116964))

(assert (= (and b!3116964 (not res!1275755)) b!3116963))

(assert (= (and b!3116963 res!1275754) b!3116962))

(assert (= (and b!3116962 res!1275759) b!3116959))

(assert (= (and b!3116959 res!1275761) b!3116960))

(assert (= (and b!3116963 (not res!1275758)) b!3116955))

(assert (= (and b!3116955 res!1275757) b!3116952))

(assert (= (and b!3116952 (not res!1275760)) b!3116958))

(assert (= (and b!3116958 (not res!1275756)) b!3116961))

(assert (= (or b!3116956 b!3116952 b!3116962) bm!221221))

(assert (=> b!3116954 m!3406767))

(assert (=> b!3116954 m!3406767))

(declare-fun m!3406811 () Bool)

(assert (=> b!3116954 m!3406811))

(assert (=> b!3116954 m!3406771))

(assert (=> b!3116954 m!3406811))

(assert (=> b!3116954 m!3406771))

(declare-fun m!3406813 () Bool)

(assert (=> b!3116954 m!3406813))

(assert (=> bm!221221 m!3406733))

(assert (=> b!3116961 m!3406767))

(assert (=> b!3116959 m!3406771))

(assert (=> b!3116959 m!3406771))

(assert (=> b!3116959 m!3406775))

(assert (=> b!3116960 m!3406767))

(assert (=> b!3116958 m!3406771))

(assert (=> b!3116958 m!3406771))

(assert (=> b!3116958 m!3406775))

(assert (=> d!862208 m!3406733))

(declare-fun m!3406815 () Bool)

(assert (=> d!862208 m!3406815))

(assert (=> b!3116957 m!3406797))

(assert (=> b!3116536 d!862208))

(declare-fun d!862210 () Bool)

(assert (=> d!862210 (= (matchR!4495 (reg!9942 r!17423) s!11993) (matchR!4495 (simplify!568 (reg!9942 r!17423)) s!11993))))

(declare-fun lt!1058417 () Unit!49665)

(declare-fun choose!18434 (Regex!9613 List!35478) Unit!49665)

(assert (=> d!862210 (= lt!1058417 (choose!18434 (reg!9942 r!17423) s!11993))))

(assert (=> d!862210 (validRegex!4346 (reg!9942 r!17423))))

(assert (=> d!862210 (= (lemmaSimplifySound!356 (reg!9942 r!17423) s!11993) lt!1058417)))

(declare-fun bs!535856 () Bool)

(assert (= bs!535856 d!862210))

(assert (=> bs!535856 m!3406671))

(declare-fun m!3406817 () Bool)

(assert (=> bs!535856 m!3406817))

(assert (=> bs!535856 m!3406815))

(assert (=> bs!535856 m!3406671))

(declare-fun m!3406819 () Bool)

(assert (=> bs!535856 m!3406819))

(assert (=> bs!535856 m!3406677))

(assert (=> b!3116536 d!862210))

(declare-fun d!862212 () Bool)

(assert (=> d!862212 (= (isEmptyLang!664 lt!1058370) ((_ is EmptyLang!9613) lt!1058370))))

(assert (=> b!3116540 d!862212))

(declare-fun lt!1058433 () Regex!9613)

(declare-fun c!522177 () Bool)

(declare-fun c!522179 () Bool)

(declare-fun bm!221236 () Bool)

(declare-fun lt!1058435 () Regex!9613)

(declare-fun lt!1058434 () Regex!9613)

(declare-fun call!221245 () Bool)

(assert (=> bm!221236 (= call!221245 (isEmptyLang!664 (ite c!522177 lt!1058435 (ite c!522179 lt!1058434 lt!1058433))))))

(declare-fun b!3117016 () Bool)

(declare-fun e!1946632 () Regex!9613)

(declare-fun e!1946631 () Regex!9613)

(assert (=> b!3117016 (= e!1946632 e!1946631)))

(declare-fun lt!1058432 () Regex!9613)

(declare-fun call!221244 () Regex!9613)

(assert (=> b!3117016 (= lt!1058432 call!221244)))

(declare-fun call!221246 () Regex!9613)

(assert (=> b!3117016 (= lt!1058433 call!221246)))

(declare-fun res!1275769 () Bool)

(declare-fun call!221243 () Bool)

(assert (=> b!3117016 (= res!1275769 call!221243)))

(declare-fun e!1946635 () Bool)

(assert (=> b!3117016 (=> res!1275769 e!1946635)))

(declare-fun c!522185 () Bool)

(assert (=> b!3117016 (= c!522185 e!1946635)))

(declare-fun b!3117017 () Bool)

(declare-fun e!1946630 () Bool)

(declare-fun lt!1058431 () Regex!9613)

(assert (=> b!3117017 (= e!1946630 (= (nullable!3251 lt!1058431) (nullable!3251 (reg!9942 r!17423))))))

(declare-fun bm!221237 () Bool)

(declare-fun call!221241 () Regex!9613)

(assert (=> bm!221237 (= call!221241 (simplify!568 (ite c!522177 (reg!9942 (reg!9942 r!17423)) (ite c!522179 (regTwo!19739 (reg!9942 r!17423)) (regOne!19738 (reg!9942 r!17423))))))))

(declare-fun b!3117019 () Bool)

(declare-fun e!1946629 () Regex!9613)

(assert (=> b!3117019 (= e!1946629 EmptyLang!9613)))

(declare-fun call!221247 () Bool)

(declare-fun bm!221238 () Bool)

(declare-fun isEmptyExpr!662 (Regex!9613) Bool)

(assert (=> bm!221238 (= call!221247 (isEmptyExpr!662 (ite c!522177 lt!1058435 lt!1058432)))))

(declare-fun b!3117020 () Bool)

(declare-fun e!1946628 () Regex!9613)

(assert (=> b!3117020 (= e!1946628 (Star!9613 lt!1058435))))

(declare-fun b!3117021 () Bool)

(declare-fun e!1946627 () Regex!9613)

(declare-fun e!1946634 () Regex!9613)

(assert (=> b!3117021 (= e!1946627 e!1946634)))

(declare-fun c!522184 () Bool)

(assert (=> b!3117021 (= c!522184 (isEmptyExpr!662 lt!1058433))))

(declare-fun b!3117022 () Bool)

(declare-fun c!522176 () Bool)

(declare-fun e!1946637 () Bool)

(assert (=> b!3117022 (= c!522176 e!1946637)))

(declare-fun res!1275770 () Bool)

(assert (=> b!3117022 (=> res!1275770 e!1946637)))

(assert (=> b!3117022 (= res!1275770 call!221245)))

(assert (=> b!3117022 (= lt!1058435 call!221241)))

(declare-fun e!1946625 () Regex!9613)

(assert (=> b!3117022 (= e!1946625 e!1946628)))

(declare-fun b!3117023 () Bool)

(declare-fun e!1946633 () Regex!9613)

(assert (=> b!3117023 (= e!1946633 EmptyExpr!9613)))

(declare-fun lt!1058430 () Regex!9613)

(declare-fun bm!221239 () Bool)

(assert (=> bm!221239 (= call!221243 (isEmptyLang!664 (ite c!522179 lt!1058430 lt!1058432)))))

(declare-fun b!3117024 () Bool)

(assert (=> b!3117024 (= e!1946634 lt!1058432)))

(declare-fun b!3117025 () Bool)

(assert (=> b!3117025 (= e!1946628 EmptyExpr!9613)))

(declare-fun b!3117026 () Bool)

(declare-fun c!522181 () Bool)

(assert (=> b!3117026 (= c!522181 call!221247)))

(assert (=> b!3117026 (= e!1946631 e!1946627)))

(declare-fun b!3117027 () Bool)

(assert (=> b!3117027 (= e!1946634 (Concat!14934 lt!1058432 lt!1058433))))

(declare-fun b!3117028 () Bool)

(assert (=> b!3117028 (= c!522179 ((_ is Union!9613) (reg!9942 r!17423)))))

(assert (=> b!3117028 (= e!1946625 e!1946632)))

(declare-fun b!3117029 () Bool)

(declare-fun e!1946638 () Regex!9613)

(assert (=> b!3117029 (= e!1946638 (reg!9942 r!17423))))

(declare-fun bm!221240 () Bool)

(assert (=> bm!221240 (= call!221244 call!221241)))

(declare-fun b!3117030 () Bool)

(assert (=> b!3117030 (= e!1946633 e!1946625)))

(assert (=> b!3117030 (= c!522177 ((_ is Star!9613) (reg!9942 r!17423)))))

(declare-fun b!3117031 () Bool)

(assert (=> b!3117031 (= e!1946629 e!1946638)))

(declare-fun c!522178 () Bool)

(assert (=> b!3117031 (= c!522178 ((_ is ElementMatch!9613) (reg!9942 r!17423)))))

(declare-fun d!862214 () Bool)

(assert (=> d!862214 e!1946630))

(declare-fun res!1275768 () Bool)

(assert (=> d!862214 (=> (not res!1275768) (not e!1946630))))

(assert (=> d!862214 (= res!1275768 (validRegex!4346 lt!1058431))))

(assert (=> d!862214 (= lt!1058431 e!1946629)))

(declare-fun c!522182 () Bool)

(assert (=> d!862214 (= c!522182 ((_ is EmptyLang!9613) (reg!9942 r!17423)))))

(assert (=> d!862214 (validRegex!4346 (reg!9942 r!17423))))

(assert (=> d!862214 (= (simplify!568 (reg!9942 r!17423)) lt!1058431)))

(declare-fun b!3117018 () Bool)

(declare-fun c!522180 () Bool)

(assert (=> b!3117018 (= c!522180 ((_ is EmptyExpr!9613) (reg!9942 r!17423)))))

(assert (=> b!3117018 (= e!1946638 e!1946633)))

(declare-fun b!3117032 () Bool)

(assert (=> b!3117032 (= e!1946627 lt!1058433)))

(declare-fun b!3117033 () Bool)

(declare-fun c!522175 () Bool)

(assert (=> b!3117033 (= c!522175 call!221243)))

(declare-fun e!1946636 () Regex!9613)

(declare-fun e!1946626 () Regex!9613)

(assert (=> b!3117033 (= e!1946636 e!1946626)))

(declare-fun bm!221241 () Bool)

(declare-fun call!221242 () Bool)

(assert (=> bm!221241 (= call!221242 call!221245)))

(declare-fun b!3117034 () Bool)

(assert (=> b!3117034 (= e!1946626 lt!1058434)))

(declare-fun b!3117035 () Bool)

(assert (=> b!3117035 (= e!1946636 lt!1058430)))

(declare-fun b!3117036 () Bool)

(assert (=> b!3117036 (= e!1946637 call!221247)))

(declare-fun b!3117037 () Bool)

(assert (=> b!3117037 (= e!1946635 call!221242)))

(declare-fun bm!221242 () Bool)

(assert (=> bm!221242 (= call!221246 (simplify!568 (ite c!522179 (regOne!19739 (reg!9942 r!17423)) (regTwo!19738 (reg!9942 r!17423)))))))

(declare-fun b!3117038 () Bool)

(assert (=> b!3117038 (= e!1946631 EmptyLang!9613)))

(declare-fun b!3117039 () Bool)

(assert (=> b!3117039 (= e!1946626 (Union!9613 lt!1058434 lt!1058430))))

(declare-fun b!3117040 () Bool)

(assert (=> b!3117040 (= e!1946632 e!1946636)))

(assert (=> b!3117040 (= lt!1058434 call!221246)))

(assert (=> b!3117040 (= lt!1058430 call!221244)))

(declare-fun c!522183 () Bool)

(assert (=> b!3117040 (= c!522183 call!221242)))

(assert (= (and d!862214 c!522182) b!3117019))

(assert (= (and d!862214 (not c!522182)) b!3117031))

(assert (= (and b!3117031 c!522178) b!3117029))

(assert (= (and b!3117031 (not c!522178)) b!3117018))

(assert (= (and b!3117018 c!522180) b!3117023))

(assert (= (and b!3117018 (not c!522180)) b!3117030))

(assert (= (and b!3117030 c!522177) b!3117022))

(assert (= (and b!3117030 (not c!522177)) b!3117028))

(assert (= (and b!3117022 (not res!1275770)) b!3117036))

(assert (= (and b!3117022 c!522176) b!3117025))

(assert (= (and b!3117022 (not c!522176)) b!3117020))

(assert (= (and b!3117028 c!522179) b!3117040))

(assert (= (and b!3117028 (not c!522179)) b!3117016))

(assert (= (and b!3117040 c!522183) b!3117035))

(assert (= (and b!3117040 (not c!522183)) b!3117033))

(assert (= (and b!3117033 c!522175) b!3117034))

(assert (= (and b!3117033 (not c!522175)) b!3117039))

(assert (= (and b!3117016 (not res!1275769)) b!3117037))

(assert (= (and b!3117016 c!522185) b!3117038))

(assert (= (and b!3117016 (not c!522185)) b!3117026))

(assert (= (and b!3117026 c!522181) b!3117032))

(assert (= (and b!3117026 (not c!522181)) b!3117021))

(assert (= (and b!3117021 c!522184) b!3117024))

(assert (= (and b!3117021 (not c!522184)) b!3117027))

(assert (= (or b!3117040 b!3117016) bm!221242))

(assert (= (or b!3117040 b!3117016) bm!221240))

(assert (= (or b!3117033 b!3117016) bm!221239))

(assert (= (or b!3117040 b!3117037) bm!221241))

(assert (= (or b!3117036 b!3117026) bm!221238))

(assert (= (or b!3117022 bm!221240) bm!221237))

(assert (= (or b!3117022 bm!221241) bm!221236))

(assert (= (and d!862214 res!1275768) b!3117017))

(declare-fun m!3406821 () Bool)

(assert (=> bm!221242 m!3406821))

(declare-fun m!3406823 () Bool)

(assert (=> b!3117021 m!3406823))

(declare-fun m!3406825 () Bool)

(assert (=> bm!221237 m!3406825))

(declare-fun m!3406827 () Bool)

(assert (=> d!862214 m!3406827))

(assert (=> d!862214 m!3406815))

(declare-fun m!3406829 () Bool)

(assert (=> bm!221239 m!3406829))

(declare-fun m!3406831 () Bool)

(assert (=> bm!221238 m!3406831))

(declare-fun m!3406833 () Bool)

(assert (=> bm!221236 m!3406833))

(declare-fun m!3406835 () Bool)

(assert (=> b!3117017 m!3406835))

(assert (=> b!3117017 m!3406797))

(assert (=> b!3116540 d!862214))

(declare-fun b!3117041 () Bool)

(declare-fun e!1946643 () Bool)

(declare-fun e!1946640 () Bool)

(assert (=> b!3117041 (= e!1946643 e!1946640)))

(declare-fun res!1275777 () Bool)

(assert (=> b!3117041 (=> res!1275777 e!1946640)))

(declare-fun call!221248 () Bool)

(assert (=> b!3117041 (= res!1275777 call!221248)))

(declare-fun b!3117042 () Bool)

(declare-fun e!1946645 () Bool)

(declare-fun e!1946639 () Bool)

(assert (=> b!3117042 (= e!1946645 e!1946639)))

(declare-fun c!522186 () Bool)

(assert (=> b!3117042 (= c!522186 ((_ is EmptyLang!9613) (Star!9613 (reg!9942 r!17423))))))

(declare-fun b!3117043 () Bool)

(declare-fun e!1946642 () Bool)

(assert (=> b!3117043 (= e!1946642 (matchR!4495 (derivativeStep!2846 (Star!9613 (reg!9942 r!17423)) (head!6905 (++!8501 Nil!35354 s!11993))) (tail!5131 (++!8501 Nil!35354 s!11993))))))

(declare-fun b!3117044 () Bool)

(declare-fun e!1946641 () Bool)

(assert (=> b!3117044 (= e!1946641 e!1946643)))

(declare-fun res!1275774 () Bool)

(assert (=> b!3117044 (=> (not res!1275774) (not e!1946643))))

(declare-fun lt!1058436 () Bool)

(assert (=> b!3117044 (= res!1275774 (not lt!1058436))))

(declare-fun b!3117045 () Bool)

(assert (=> b!3117045 (= e!1946645 (= lt!1058436 call!221248))))

(declare-fun b!3117046 () Bool)

(assert (=> b!3117046 (= e!1946642 (nullable!3251 (Star!9613 (reg!9942 r!17423))))))

(declare-fun b!3117047 () Bool)

(declare-fun res!1275773 () Bool)

(assert (=> b!3117047 (=> res!1275773 e!1946640)))

(assert (=> b!3117047 (= res!1275773 (not (isEmpty!19697 (tail!5131 (++!8501 Nil!35354 s!11993)))))))

(declare-fun d!862216 () Bool)

(assert (=> d!862216 e!1946645))

(declare-fun c!522188 () Bool)

(assert (=> d!862216 (= c!522188 ((_ is EmptyExpr!9613) (Star!9613 (reg!9942 r!17423))))))

(assert (=> d!862216 (= lt!1058436 e!1946642)))

(declare-fun c!522187 () Bool)

(assert (=> d!862216 (= c!522187 (isEmpty!19697 (++!8501 Nil!35354 s!11993)))))

(assert (=> d!862216 (validRegex!4346 (Star!9613 (reg!9942 r!17423)))))

(assert (=> d!862216 (= (matchR!4495 (Star!9613 (reg!9942 r!17423)) (++!8501 Nil!35354 s!11993)) lt!1058436)))

(declare-fun b!3117048 () Bool)

(declare-fun res!1275778 () Bool)

(declare-fun e!1946644 () Bool)

(assert (=> b!3117048 (=> (not res!1275778) (not e!1946644))))

(assert (=> b!3117048 (= res!1275778 (isEmpty!19697 (tail!5131 (++!8501 Nil!35354 s!11993))))))

(declare-fun b!3117049 () Bool)

(assert (=> b!3117049 (= e!1946644 (= (head!6905 (++!8501 Nil!35354 s!11993)) (c!522047 (Star!9613 (reg!9942 r!17423)))))))

(declare-fun b!3117050 () Bool)

(assert (=> b!3117050 (= e!1946640 (not (= (head!6905 (++!8501 Nil!35354 s!11993)) (c!522047 (Star!9613 (reg!9942 r!17423))))))))

(declare-fun b!3117051 () Bool)

(declare-fun res!1275776 () Bool)

(assert (=> b!3117051 (=> (not res!1275776) (not e!1946644))))

(assert (=> b!3117051 (= res!1275776 (not call!221248))))

(declare-fun b!3117052 () Bool)

(declare-fun res!1275775 () Bool)

(assert (=> b!3117052 (=> res!1275775 e!1946641)))

(assert (=> b!3117052 (= res!1275775 e!1946644)))

(declare-fun res!1275771 () Bool)

(assert (=> b!3117052 (=> (not res!1275771) (not e!1946644))))

(assert (=> b!3117052 (= res!1275771 lt!1058436)))

(declare-fun b!3117053 () Bool)

(declare-fun res!1275772 () Bool)

(assert (=> b!3117053 (=> res!1275772 e!1946641)))

(assert (=> b!3117053 (= res!1275772 (not ((_ is ElementMatch!9613) (Star!9613 (reg!9942 r!17423)))))))

(assert (=> b!3117053 (= e!1946639 e!1946641)))

(declare-fun bm!221243 () Bool)

(assert (=> bm!221243 (= call!221248 (isEmpty!19697 (++!8501 Nil!35354 s!11993)))))

(declare-fun b!3117054 () Bool)

(assert (=> b!3117054 (= e!1946639 (not lt!1058436))))

(assert (= (and d!862216 c!522187) b!3117046))

(assert (= (and d!862216 (not c!522187)) b!3117043))

(assert (= (and d!862216 c!522188) b!3117045))

(assert (= (and d!862216 (not c!522188)) b!3117042))

(assert (= (and b!3117042 c!522186) b!3117054))

(assert (= (and b!3117042 (not c!522186)) b!3117053))

(assert (= (and b!3117053 (not res!1275772)) b!3117052))

(assert (= (and b!3117052 res!1275771) b!3117051))

(assert (= (and b!3117051 res!1275776) b!3117048))

(assert (= (and b!3117048 res!1275778) b!3117049))

(assert (= (and b!3117052 (not res!1275775)) b!3117044))

(assert (= (and b!3117044 res!1275774) b!3117041))

(assert (= (and b!3117041 (not res!1275777)) b!3117047))

(assert (= (and b!3117047 (not res!1275773)) b!3117050))

(assert (= (or b!3117045 b!3117041 b!3117051) bm!221243))

(assert (=> b!3117043 m!3406657))

(declare-fun m!3406837 () Bool)

(assert (=> b!3117043 m!3406837))

(assert (=> b!3117043 m!3406837))

(declare-fun m!3406839 () Bool)

(assert (=> b!3117043 m!3406839))

(assert (=> b!3117043 m!3406657))

(declare-fun m!3406841 () Bool)

(assert (=> b!3117043 m!3406841))

(assert (=> b!3117043 m!3406839))

(assert (=> b!3117043 m!3406841))

(declare-fun m!3406843 () Bool)

(assert (=> b!3117043 m!3406843))

(assert (=> bm!221243 m!3406657))

(declare-fun m!3406845 () Bool)

(assert (=> bm!221243 m!3406845))

(assert (=> b!3117050 m!3406657))

(assert (=> b!3117050 m!3406837))

(assert (=> b!3117048 m!3406657))

(assert (=> b!3117048 m!3406841))

(assert (=> b!3117048 m!3406841))

(declare-fun m!3406847 () Bool)

(assert (=> b!3117048 m!3406847))

(assert (=> b!3117049 m!3406657))

(assert (=> b!3117049 m!3406837))

(assert (=> b!3117047 m!3406657))

(assert (=> b!3117047 m!3406841))

(assert (=> b!3117047 m!3406841))

(assert (=> b!3117047 m!3406847))

(assert (=> d!862216 m!3406657))

(assert (=> d!862216 m!3406845))

(declare-fun m!3406849 () Bool)

(assert (=> d!862216 m!3406849))

(declare-fun m!3406851 () Bool)

(assert (=> b!3117046 m!3406851))

(assert (=> b!3116534 d!862216))

(declare-fun b!3117063 () Bool)

(declare-fun e!1946651 () List!35478)

(assert (=> b!3117063 (= e!1946651 s!11993)))

(declare-fun b!3117065 () Bool)

(declare-fun res!1275783 () Bool)

(declare-fun e!1946650 () Bool)

(assert (=> b!3117065 (=> (not res!1275783) (not e!1946650))))

(declare-fun lt!1058439 () List!35478)

(declare-fun size!26585 (List!35478) Int)

(assert (=> b!3117065 (= res!1275783 (= (size!26585 lt!1058439) (+ (size!26585 Nil!35354) (size!26585 s!11993))))))

(declare-fun b!3117064 () Bool)

(assert (=> b!3117064 (= e!1946651 (Cons!35354 (h!40774 Nil!35354) (++!8501 (t!234543 Nil!35354) s!11993)))))

(declare-fun b!3117066 () Bool)

(assert (=> b!3117066 (= e!1946650 (or (not (= s!11993 Nil!35354)) (= lt!1058439 Nil!35354)))))

(declare-fun d!862218 () Bool)

(assert (=> d!862218 e!1946650))

(declare-fun res!1275784 () Bool)

(assert (=> d!862218 (=> (not res!1275784) (not e!1946650))))

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!4820 (List!35478) (InoxSet C!19412))

(assert (=> d!862218 (= res!1275784 (= (content!4820 lt!1058439) ((_ map or) (content!4820 Nil!35354) (content!4820 s!11993))))))

(assert (=> d!862218 (= lt!1058439 e!1946651)))

(declare-fun c!522191 () Bool)

(assert (=> d!862218 (= c!522191 ((_ is Nil!35354) Nil!35354))))

(assert (=> d!862218 (= (++!8501 Nil!35354 s!11993) lt!1058439)))

(assert (= (and d!862218 c!522191) b!3117063))

(assert (= (and d!862218 (not c!522191)) b!3117064))

(assert (= (and d!862218 res!1275784) b!3117065))

(assert (= (and b!3117065 res!1275783) b!3117066))

(declare-fun m!3406853 () Bool)

(assert (=> b!3117065 m!3406853))

(declare-fun m!3406855 () Bool)

(assert (=> b!3117065 m!3406855))

(declare-fun m!3406857 () Bool)

(assert (=> b!3117065 m!3406857))

(declare-fun m!3406859 () Bool)

(assert (=> b!3117064 m!3406859))

(declare-fun m!3406861 () Bool)

(assert (=> d!862218 m!3406861))

(declare-fun m!3406863 () Bool)

(assert (=> d!862218 m!3406863))

(declare-fun m!3406865 () Bool)

(assert (=> d!862218 m!3406865))

(assert (=> b!3116534 d!862218))

(declare-fun d!862220 () Bool)

(assert (=> d!862220 (matchR!4495 (Star!9613 (reg!9942 r!17423)) (++!8501 Nil!35354 s!11993))))

(declare-fun lt!1058442 () Unit!49665)

(declare-fun choose!18436 (Regex!9613 List!35478 List!35478) Unit!49665)

(assert (=> d!862220 (= lt!1058442 (choose!18436 (reg!9942 r!17423) Nil!35354 s!11993))))

(assert (=> d!862220 (validRegex!4346 (Star!9613 (reg!9942 r!17423)))))

(assert (=> d!862220 (= (lemmaStarApp!26 (reg!9942 r!17423) Nil!35354 s!11993) lt!1058442)))

(declare-fun bs!535857 () Bool)

(assert (= bs!535857 d!862220))

(assert (=> bs!535857 m!3406657))

(assert (=> bs!535857 m!3406657))

(assert (=> bs!535857 m!3406659))

(declare-fun m!3406867 () Bool)

(assert (=> bs!535857 m!3406867))

(assert (=> bs!535857 m!3406849))

(assert (=> b!3116534 d!862220))

(declare-fun b!3117077 () Bool)

(declare-fun e!1946654 () Bool)

(assert (=> b!3117077 (= e!1946654 tp_is_empty!16789)))

(declare-fun b!3117080 () Bool)

(declare-fun tp!977393 () Bool)

(declare-fun tp!977392 () Bool)

(assert (=> b!3117080 (= e!1946654 (and tp!977393 tp!977392))))

(assert (=> b!3116537 (= tp!977339 e!1946654)))

(declare-fun b!3117078 () Bool)

(declare-fun tp!977391 () Bool)

(declare-fun tp!977390 () Bool)

(assert (=> b!3117078 (= e!1946654 (and tp!977391 tp!977390))))

(declare-fun b!3117079 () Bool)

(declare-fun tp!977394 () Bool)

(assert (=> b!3117079 (= e!1946654 tp!977394)))

(assert (= (and b!3116537 ((_ is ElementMatch!9613) (regOne!19738 r!17423))) b!3117077))

(assert (= (and b!3116537 ((_ is Concat!14934) (regOne!19738 r!17423))) b!3117078))

(assert (= (and b!3116537 ((_ is Star!9613) (regOne!19738 r!17423))) b!3117079))

(assert (= (and b!3116537 ((_ is Union!9613) (regOne!19738 r!17423))) b!3117080))

(declare-fun b!3117081 () Bool)

(declare-fun e!1946655 () Bool)

(assert (=> b!3117081 (= e!1946655 tp_is_empty!16789)))

(declare-fun b!3117084 () Bool)

(declare-fun tp!977398 () Bool)

(declare-fun tp!977397 () Bool)

(assert (=> b!3117084 (= e!1946655 (and tp!977398 tp!977397))))

(assert (=> b!3116537 (= tp!977340 e!1946655)))

(declare-fun b!3117082 () Bool)

(declare-fun tp!977396 () Bool)

(declare-fun tp!977395 () Bool)

(assert (=> b!3117082 (= e!1946655 (and tp!977396 tp!977395))))

(declare-fun b!3117083 () Bool)

(declare-fun tp!977399 () Bool)

(assert (=> b!3117083 (= e!1946655 tp!977399)))

(assert (= (and b!3116537 ((_ is ElementMatch!9613) (regTwo!19738 r!17423))) b!3117081))

(assert (= (and b!3116537 ((_ is Concat!14934) (regTwo!19738 r!17423))) b!3117082))

(assert (= (and b!3116537 ((_ is Star!9613) (regTwo!19738 r!17423))) b!3117083))

(assert (= (and b!3116537 ((_ is Union!9613) (regTwo!19738 r!17423))) b!3117084))

(declare-fun b!3117085 () Bool)

(declare-fun e!1946656 () Bool)

(assert (=> b!3117085 (= e!1946656 tp_is_empty!16789)))

(declare-fun b!3117088 () Bool)

(declare-fun tp!977403 () Bool)

(declare-fun tp!977402 () Bool)

(assert (=> b!3117088 (= e!1946656 (and tp!977403 tp!977402))))

(assert (=> b!3116541 (= tp!977337 e!1946656)))

(declare-fun b!3117086 () Bool)

(declare-fun tp!977401 () Bool)

(declare-fun tp!977400 () Bool)

(assert (=> b!3117086 (= e!1946656 (and tp!977401 tp!977400))))

(declare-fun b!3117087 () Bool)

(declare-fun tp!977404 () Bool)

(assert (=> b!3117087 (= e!1946656 tp!977404)))

(assert (= (and b!3116541 ((_ is ElementMatch!9613) (regOne!19739 r!17423))) b!3117085))

(assert (= (and b!3116541 ((_ is Concat!14934) (regOne!19739 r!17423))) b!3117086))

(assert (= (and b!3116541 ((_ is Star!9613) (regOne!19739 r!17423))) b!3117087))

(assert (= (and b!3116541 ((_ is Union!9613) (regOne!19739 r!17423))) b!3117088))

(declare-fun b!3117089 () Bool)

(declare-fun e!1946657 () Bool)

(assert (=> b!3117089 (= e!1946657 tp_is_empty!16789)))

(declare-fun b!3117092 () Bool)

(declare-fun tp!977408 () Bool)

(declare-fun tp!977407 () Bool)

(assert (=> b!3117092 (= e!1946657 (and tp!977408 tp!977407))))

(assert (=> b!3116541 (= tp!977338 e!1946657)))

(declare-fun b!3117090 () Bool)

(declare-fun tp!977406 () Bool)

(declare-fun tp!977405 () Bool)

(assert (=> b!3117090 (= e!1946657 (and tp!977406 tp!977405))))

(declare-fun b!3117091 () Bool)

(declare-fun tp!977409 () Bool)

(assert (=> b!3117091 (= e!1946657 tp!977409)))

(assert (= (and b!3116541 ((_ is ElementMatch!9613) (regTwo!19739 r!17423))) b!3117089))

(assert (= (and b!3116541 ((_ is Concat!14934) (regTwo!19739 r!17423))) b!3117090))

(assert (= (and b!3116541 ((_ is Star!9613) (regTwo!19739 r!17423))) b!3117091))

(assert (= (and b!3116541 ((_ is Union!9613) (regTwo!19739 r!17423))) b!3117092))

(declare-fun b!3117093 () Bool)

(declare-fun e!1946658 () Bool)

(assert (=> b!3117093 (= e!1946658 tp_is_empty!16789)))

(declare-fun b!3117096 () Bool)

(declare-fun tp!977413 () Bool)

(declare-fun tp!977412 () Bool)

(assert (=> b!3117096 (= e!1946658 (and tp!977413 tp!977412))))

(assert (=> b!3116535 (= tp!977336 e!1946658)))

(declare-fun b!3117094 () Bool)

(declare-fun tp!977411 () Bool)

(declare-fun tp!977410 () Bool)

(assert (=> b!3117094 (= e!1946658 (and tp!977411 tp!977410))))

(declare-fun b!3117095 () Bool)

(declare-fun tp!977414 () Bool)

(assert (=> b!3117095 (= e!1946658 tp!977414)))

(assert (= (and b!3116535 ((_ is ElementMatch!9613) (reg!9942 r!17423))) b!3117093))

(assert (= (and b!3116535 ((_ is Concat!14934) (reg!9942 r!17423))) b!3117094))

(assert (= (and b!3116535 ((_ is Star!9613) (reg!9942 r!17423))) b!3117095))

(assert (= (and b!3116535 ((_ is Union!9613) (reg!9942 r!17423))) b!3117096))

(declare-fun b!3117101 () Bool)

(declare-fun e!1946661 () Bool)

(declare-fun tp!977417 () Bool)

(assert (=> b!3117101 (= e!1946661 (and tp_is_empty!16789 tp!977417))))

(assert (=> b!3116539 (= tp!977341 e!1946661)))

(assert (= (and b!3116539 ((_ is Cons!35354) (t!234543 s!11993))) b!3117101))

(check-sat (not b!3116946) (not bm!221220) (not b!3116930) (not bm!221239) (not d!862216) (not d!862214) (not b!3117088) (not bm!221238) (not b!3116959) (not bm!221236) (not b!3116957) (not b!3116943) (not bm!221237) (not b!3117091) (not b!3116954) (not b!3116856) (not b!3116960) (not b!3117092) (not d!862200) (not d!862218) (not b!3116958) (not bm!221243) (not bm!221218) (not d!862210) (not bm!221219) (not bm!221201) (not bm!221210) (not b!3117043) (not b!3117096) (not b!3116852) (not b!3117082) (not b!3117080) (not b!3117079) (not b!3117090) (not b!3117021) (not b!3116765) (not b!3117064) (not d!862206) (not b!3116857) (not b!3117078) (not b!3117065) (not d!862208) (not b!3117084) (not b!3116945) (not b!3116961) (not b!3116940) (not d!862190) (not b!3116855) (not b!3116947) (not b!3116944) (not b!3117017) (not b!3117048) (not b!3117047) (not bm!221221) (not b!3116773) tp_is_empty!16789 (not bm!221242) (not b!3117049) (not bm!221200) (not b!3117086) (not b!3117095) (not d!862220) (not b!3117087) (not b!3117050) (not b!3117046) (not b!3117101) (not b!3116859) (not b!3116858) (not b!3117083) (not b!3117094))
(check-sat)
