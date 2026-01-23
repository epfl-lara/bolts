; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!284372 () Bool)

(assert start!284372)

(declare-fun b!2920455 () Bool)

(declare-fun e!1842479 () Bool)

(declare-fun tp!937192 () Bool)

(declare-fun tp!937195 () Bool)

(assert (=> b!2920455 (= e!1842479 (and tp!937192 tp!937195))))

(declare-fun b!2920456 () Bool)

(declare-fun e!1842477 () Bool)

(declare-fun e!1842475 () Bool)

(assert (=> b!2920456 (= e!1842477 e!1842475)))

(declare-fun res!1205638 () Bool)

(assert (=> b!2920456 (=> res!1205638 e!1842475)))

(declare-fun lt!1025597 () Bool)

(assert (=> b!2920456 (= res!1205638 (not lt!1025597))))

(declare-fun e!1842474 () Bool)

(assert (=> b!2920456 e!1842474))

(declare-fun res!1205636 () Bool)

(assert (=> b!2920456 (=> res!1205636 e!1842474)))

(assert (=> b!2920456 (= res!1205636 lt!1025597)))

(declare-datatypes ((C!18172 0))(
  ( (C!18173 (val!11122 Int)) )
))
(declare-datatypes ((Regex!8993 0))(
  ( (ElementMatch!8993 (c!476533 C!18172)) (Concat!14314 (regOne!18498 Regex!8993) (regTwo!18498 Regex!8993)) (EmptyExpr!8993) (Star!8993 (reg!9322 Regex!8993)) (EmptyLang!8993) (Union!8993 (regOne!18499 Regex!8993) (regTwo!18499 Regex!8993)) )
))
(declare-fun r!17423 () Regex!8993)

(declare-datatypes ((List!34858 0))(
  ( (Nil!34734) (Cons!34734 (h!40154 C!18172) (t!233923 List!34858)) )
))
(declare-fun s!11993 () List!34858)

(declare-fun matchR!3875 (Regex!8993 List!34858) Bool)

(assert (=> b!2920456 (= lt!1025597 (matchR!3875 (regOne!18499 r!17423) s!11993))))

(declare-datatypes ((Unit!48325 0))(
  ( (Unit!48326) )
))
(declare-fun lt!1025599 () Unit!48325)

(declare-fun lemmaRegexUnionAcceptsThenOneOfTheTwoAccepts!242 (Regex!8993 Regex!8993 List!34858) Unit!48325)

(assert (=> b!2920456 (= lt!1025599 (lemmaRegexUnionAcceptsThenOneOfTheTwoAccepts!242 (regOne!18499 r!17423) (regTwo!18499 r!17423) s!11993))))

(declare-fun b!2920457 () Bool)

(declare-fun e!1842478 () Bool)

(declare-fun tp_is_empty!15549 () Bool)

(declare-fun tp!937196 () Bool)

(assert (=> b!2920457 (= e!1842478 (and tp_is_empty!15549 tp!937196))))

(declare-fun b!2920458 () Bool)

(declare-fun tp!937193 () Bool)

(assert (=> b!2920458 (= e!1842479 tp!937193)))

(declare-fun res!1205635 () Bool)

(declare-fun e!1842476 () Bool)

(assert (=> start!284372 (=> (not res!1205635) (not e!1842476))))

(declare-fun validRegex!3726 (Regex!8993) Bool)

(assert (=> start!284372 (= res!1205635 (validRegex!3726 r!17423))))

(assert (=> start!284372 e!1842476))

(assert (=> start!284372 e!1842479))

(assert (=> start!284372 e!1842478))

(declare-fun b!2920459 () Bool)

(assert (=> b!2920459 (= e!1842479 tp_is_empty!15549)))

(declare-fun b!2920460 () Bool)

(declare-fun tp!937197 () Bool)

(declare-fun tp!937194 () Bool)

(assert (=> b!2920460 (= e!1842479 (and tp!937197 tp!937194))))

(declare-fun b!2920461 () Bool)

(assert (=> b!2920461 (= e!1842475 (validRegex!3726 (regTwo!18499 r!17423)))))

(declare-fun simplify!24 (Regex!8993) Regex!8993)

(assert (=> b!2920461 (matchR!3875 (simplify!24 (regOne!18499 r!17423)) s!11993)))

(declare-fun lt!1025598 () Unit!48325)

(declare-fun lemmaSimplifySound!22 (Regex!8993 List!34858) Unit!48325)

(assert (=> b!2920461 (= lt!1025598 (lemmaSimplifySound!22 (regOne!18499 r!17423) s!11993))))

(declare-fun b!2920462 () Bool)

(assert (=> b!2920462 (= e!1842474 (matchR!3875 (regTwo!18499 r!17423) s!11993))))

(declare-fun b!2920463 () Bool)

(assert (=> b!2920463 (= e!1842476 (not e!1842477))))

(declare-fun res!1205637 () Bool)

(assert (=> b!2920463 (=> res!1205637 e!1842477)))

(declare-fun lt!1025600 () Bool)

(get-info :version)

(assert (=> b!2920463 (= res!1205637 (or (not lt!1025600) ((_ is Concat!14314) r!17423) (not ((_ is Union!8993) r!17423))))))

(declare-fun matchRSpec!1130 (Regex!8993 List!34858) Bool)

(assert (=> b!2920463 (= lt!1025600 (matchRSpec!1130 r!17423 s!11993))))

(assert (=> b!2920463 (= lt!1025600 (matchR!3875 r!17423 s!11993))))

(declare-fun lt!1025601 () Unit!48325)

(declare-fun mainMatchTheorem!1130 (Regex!8993 List!34858) Unit!48325)

(assert (=> b!2920463 (= lt!1025601 (mainMatchTheorem!1130 r!17423 s!11993))))

(assert (= (and start!284372 res!1205635) b!2920463))

(assert (= (and b!2920463 (not res!1205637)) b!2920456))

(assert (= (and b!2920456 (not res!1205636)) b!2920462))

(assert (= (and b!2920456 (not res!1205638)) b!2920461))

(assert (= (and start!284372 ((_ is ElementMatch!8993) r!17423)) b!2920459))

(assert (= (and start!284372 ((_ is Concat!14314) r!17423)) b!2920460))

(assert (= (and start!284372 ((_ is Star!8993) r!17423)) b!2920458))

(assert (= (and start!284372 ((_ is Union!8993) r!17423)) b!2920455))

(assert (= (and start!284372 ((_ is Cons!34734) s!11993)) b!2920457))

(declare-fun m!3316831 () Bool)

(assert (=> b!2920462 m!3316831))

(declare-fun m!3316833 () Bool)

(assert (=> b!2920461 m!3316833))

(declare-fun m!3316835 () Bool)

(assert (=> b!2920461 m!3316835))

(assert (=> b!2920461 m!3316835))

(declare-fun m!3316837 () Bool)

(assert (=> b!2920461 m!3316837))

(declare-fun m!3316839 () Bool)

(assert (=> b!2920461 m!3316839))

(declare-fun m!3316841 () Bool)

(assert (=> b!2920463 m!3316841))

(declare-fun m!3316843 () Bool)

(assert (=> b!2920463 m!3316843))

(declare-fun m!3316845 () Bool)

(assert (=> b!2920463 m!3316845))

(declare-fun m!3316847 () Bool)

(assert (=> b!2920456 m!3316847))

(declare-fun m!3316849 () Bool)

(assert (=> b!2920456 m!3316849))

(declare-fun m!3316851 () Bool)

(assert (=> start!284372 m!3316851))

(check-sat (not b!2920463) tp_is_empty!15549 (not start!284372) (not b!2920461) (not b!2920458) (not b!2920462) (not b!2920455) (not b!2920460) (not b!2920457) (not b!2920456))
(check-sat)
(get-model)

(declare-fun b!2920692 () Bool)

(assert (=> b!2920692 true))

(assert (=> b!2920692 true))

(declare-fun bs!524951 () Bool)

(declare-fun b!2920691 () Bool)

(assert (= bs!524951 (and b!2920691 b!2920692)))

(declare-fun lambda!108654 () Int)

(declare-fun lambda!108653 () Int)

(assert (=> bs!524951 (not (= lambda!108654 lambda!108653))))

(assert (=> b!2920691 true))

(assert (=> b!2920691 true))

(declare-fun b!2920685 () Bool)

(declare-fun e!1842609 () Bool)

(declare-fun call!191125 () Bool)

(assert (=> b!2920685 (= e!1842609 call!191125)))

(declare-fun b!2920686 () Bool)

(declare-fun res!1205734 () Bool)

(declare-fun e!1842611 () Bool)

(assert (=> b!2920686 (=> res!1205734 e!1842611)))

(assert (=> b!2920686 (= res!1205734 call!191125)))

(declare-fun e!1842612 () Bool)

(assert (=> b!2920686 (= e!1842612 e!1842611)))

(declare-fun b!2920687 () Bool)

(declare-fun c!476596 () Bool)

(assert (=> b!2920687 (= c!476596 ((_ is Union!8993) r!17423))))

(declare-fun e!1842605 () Bool)

(declare-fun e!1842613 () Bool)

(assert (=> b!2920687 (= e!1842605 e!1842613)))

(declare-fun b!2920688 () Bool)

(declare-fun e!1842606 () Bool)

(assert (=> b!2920688 (= e!1842613 e!1842606)))

(declare-fun res!1205732 () Bool)

(assert (=> b!2920688 (= res!1205732 (matchRSpec!1130 (regOne!18499 r!17423) s!11993))))

(assert (=> b!2920688 (=> res!1205732 e!1842606)))

(declare-fun b!2920689 () Bool)

(assert (=> b!2920689 (= e!1842613 e!1842612)))

(declare-fun c!476598 () Bool)

(assert (=> b!2920689 (= c!476598 ((_ is Star!8993) r!17423))))

(declare-fun d!838516 () Bool)

(declare-fun c!476599 () Bool)

(assert (=> d!838516 (= c!476599 ((_ is EmptyExpr!8993) r!17423))))

(assert (=> d!838516 (= (matchRSpec!1130 r!17423 s!11993) e!1842609)))

(declare-fun b!2920690 () Bool)

(declare-fun c!476597 () Bool)

(assert (=> b!2920690 (= c!476597 ((_ is ElementMatch!8993) r!17423))))

(declare-fun e!1842610 () Bool)

(assert (=> b!2920690 (= e!1842610 e!1842605)))

(declare-fun call!191126 () Bool)

(assert (=> b!2920691 (= e!1842612 call!191126)))

(declare-fun bm!191120 () Bool)

(declare-fun Exists!1369 (Int) Bool)

(assert (=> bm!191120 (= call!191126 (Exists!1369 (ite c!476598 lambda!108653 lambda!108654)))))

(assert (=> b!2920692 (= e!1842611 call!191126)))

(declare-fun bm!191121 () Bool)

(declare-fun isEmpty!18989 (List!34858) Bool)

(assert (=> bm!191121 (= call!191125 (isEmpty!18989 s!11993))))

(declare-fun b!2920693 () Bool)

(assert (=> b!2920693 (= e!1842609 e!1842610)))

(declare-fun res!1205733 () Bool)

(assert (=> b!2920693 (= res!1205733 (not ((_ is EmptyLang!8993) r!17423)))))

(assert (=> b!2920693 (=> (not res!1205733) (not e!1842610))))

(declare-fun b!2920694 () Bool)

(assert (=> b!2920694 (= e!1842605 (= s!11993 (Cons!34734 (c!476533 r!17423) Nil!34734)))))

(declare-fun b!2920695 () Bool)

(assert (=> b!2920695 (= e!1842606 (matchRSpec!1130 (regTwo!18499 r!17423) s!11993))))

(assert (= (and d!838516 c!476599) b!2920685))

(assert (= (and d!838516 (not c!476599)) b!2920693))

(assert (= (and b!2920693 res!1205733) b!2920690))

(assert (= (and b!2920690 c!476597) b!2920694))

(assert (= (and b!2920690 (not c!476597)) b!2920687))

(assert (= (and b!2920687 c!476596) b!2920688))

(assert (= (and b!2920687 (not c!476596)) b!2920689))

(assert (= (and b!2920688 (not res!1205732)) b!2920695))

(assert (= (and b!2920689 c!476598) b!2920686))

(assert (= (and b!2920689 (not c!476598)) b!2920691))

(assert (= (and b!2920686 (not res!1205734)) b!2920692))

(assert (= (or b!2920692 b!2920691) bm!191120))

(assert (= (or b!2920685 b!2920686) bm!191121))

(declare-fun m!3316895 () Bool)

(assert (=> b!2920688 m!3316895))

(declare-fun m!3316897 () Bool)

(assert (=> bm!191120 m!3316897))

(declare-fun m!3316899 () Bool)

(assert (=> bm!191121 m!3316899))

(declare-fun m!3316901 () Bool)

(assert (=> b!2920695 m!3316901))

(assert (=> b!2920463 d!838516))

(declare-fun b!2920781 () Bool)

(declare-fun e!1842662 () Bool)

(declare-fun derivativeStep!2433 (Regex!8993 C!18172) Regex!8993)

(declare-fun head!6492 (List!34858) C!18172)

(declare-fun tail!4718 (List!34858) List!34858)

(assert (=> b!2920781 (= e!1842662 (matchR!3875 (derivativeStep!2433 r!17423 (head!6492 s!11993)) (tail!4718 s!11993)))))

(declare-fun b!2920782 () Bool)

(declare-fun e!1842659 () Bool)

(declare-fun e!1842661 () Bool)

(assert (=> b!2920782 (= e!1842659 e!1842661)))

(declare-fun c!476624 () Bool)

(assert (=> b!2920782 (= c!476624 ((_ is EmptyLang!8993) r!17423))))

(declare-fun b!2920783 () Bool)

(declare-fun e!1842660 () Bool)

(declare-fun e!1842656 () Bool)

(assert (=> b!2920783 (= e!1842660 e!1842656)))

(declare-fun res!1205772 () Bool)

(assert (=> b!2920783 (=> (not res!1205772) (not e!1842656))))

(declare-fun lt!1025634 () Bool)

(assert (=> b!2920783 (= res!1205772 (not lt!1025634))))

(declare-fun b!2920784 () Bool)

(declare-fun res!1205777 () Bool)

(declare-fun e!1842658 () Bool)

(assert (=> b!2920784 (=> res!1205777 e!1842658)))

(assert (=> b!2920784 (= res!1205777 (not (isEmpty!18989 (tail!4718 s!11993))))))

(declare-fun b!2920785 () Bool)

(assert (=> b!2920785 (= e!1842661 (not lt!1025634))))

(declare-fun b!2920786 () Bool)

(declare-fun call!191138 () Bool)

(assert (=> b!2920786 (= e!1842659 (= lt!1025634 call!191138))))

(declare-fun d!838530 () Bool)

(assert (=> d!838530 e!1842659))

(declare-fun c!476623 () Bool)

(assert (=> d!838530 (= c!476623 ((_ is EmptyExpr!8993) r!17423))))

(assert (=> d!838530 (= lt!1025634 e!1842662)))

(declare-fun c!476625 () Bool)

(assert (=> d!838530 (= c!476625 (isEmpty!18989 s!11993))))

(assert (=> d!838530 (validRegex!3726 r!17423)))

(assert (=> d!838530 (= (matchR!3875 r!17423 s!11993) lt!1025634)))

(declare-fun b!2920787 () Bool)

(declare-fun res!1205776 () Bool)

(assert (=> b!2920787 (=> res!1205776 e!1842660)))

(declare-fun e!1842657 () Bool)

(assert (=> b!2920787 (= res!1205776 e!1842657)))

(declare-fun res!1205771 () Bool)

(assert (=> b!2920787 (=> (not res!1205771) (not e!1842657))))

(assert (=> b!2920787 (= res!1205771 lt!1025634)))

(declare-fun b!2920788 () Bool)

(declare-fun res!1205775 () Bool)

(assert (=> b!2920788 (=> res!1205775 e!1842660)))

(assert (=> b!2920788 (= res!1205775 (not ((_ is ElementMatch!8993) r!17423)))))

(assert (=> b!2920788 (= e!1842661 e!1842660)))

(declare-fun b!2920789 () Bool)

(assert (=> b!2920789 (= e!1842657 (= (head!6492 s!11993) (c!476533 r!17423)))))

(declare-fun bm!191133 () Bool)

(assert (=> bm!191133 (= call!191138 (isEmpty!18989 s!11993))))

(declare-fun b!2920790 () Bool)

(declare-fun res!1205770 () Bool)

(assert (=> b!2920790 (=> (not res!1205770) (not e!1842657))))

(assert (=> b!2920790 (= res!1205770 (isEmpty!18989 (tail!4718 s!11993)))))

(declare-fun b!2920791 () Bool)

(declare-fun res!1205774 () Bool)

(assert (=> b!2920791 (=> (not res!1205774) (not e!1842657))))

(assert (=> b!2920791 (= res!1205774 (not call!191138))))

(declare-fun b!2920792 () Bool)

(assert (=> b!2920792 (= e!1842656 e!1842658)))

(declare-fun res!1205773 () Bool)

(assert (=> b!2920792 (=> res!1205773 e!1842658)))

(assert (=> b!2920792 (= res!1205773 call!191138)))

(declare-fun b!2920793 () Bool)

(assert (=> b!2920793 (= e!1842658 (not (= (head!6492 s!11993) (c!476533 r!17423))))))

(declare-fun b!2920794 () Bool)

(declare-fun nullable!2819 (Regex!8993) Bool)

(assert (=> b!2920794 (= e!1842662 (nullable!2819 r!17423))))

(assert (= (and d!838530 c!476625) b!2920794))

(assert (= (and d!838530 (not c!476625)) b!2920781))

(assert (= (and d!838530 c!476623) b!2920786))

(assert (= (and d!838530 (not c!476623)) b!2920782))

(assert (= (and b!2920782 c!476624) b!2920785))

(assert (= (and b!2920782 (not c!476624)) b!2920788))

(assert (= (and b!2920788 (not res!1205775)) b!2920787))

(assert (= (and b!2920787 res!1205771) b!2920791))

(assert (= (and b!2920791 res!1205774) b!2920790))

(assert (= (and b!2920790 res!1205770) b!2920789))

(assert (= (and b!2920787 (not res!1205776)) b!2920783))

(assert (= (and b!2920783 res!1205772) b!2920792))

(assert (= (and b!2920792 (not res!1205773)) b!2920784))

(assert (= (and b!2920784 (not res!1205777)) b!2920793))

(assert (= (or b!2920786 b!2920791 b!2920792) bm!191133))

(declare-fun m!3316935 () Bool)

(assert (=> b!2920781 m!3316935))

(assert (=> b!2920781 m!3316935))

(declare-fun m!3316937 () Bool)

(assert (=> b!2920781 m!3316937))

(declare-fun m!3316939 () Bool)

(assert (=> b!2920781 m!3316939))

(assert (=> b!2920781 m!3316937))

(assert (=> b!2920781 m!3316939))

(declare-fun m!3316941 () Bool)

(assert (=> b!2920781 m!3316941))

(assert (=> b!2920790 m!3316939))

(assert (=> b!2920790 m!3316939))

(declare-fun m!3316943 () Bool)

(assert (=> b!2920790 m!3316943))

(declare-fun m!3316945 () Bool)

(assert (=> b!2920794 m!3316945))

(assert (=> b!2920793 m!3316935))

(assert (=> bm!191133 m!3316899))

(assert (=> b!2920784 m!3316939))

(assert (=> b!2920784 m!3316939))

(assert (=> b!2920784 m!3316943))

(assert (=> b!2920789 m!3316935))

(assert (=> d!838530 m!3316899))

(assert (=> d!838530 m!3316851))

(assert (=> b!2920463 d!838530))

(declare-fun d!838540 () Bool)

(assert (=> d!838540 (= (matchR!3875 r!17423 s!11993) (matchRSpec!1130 r!17423 s!11993))))

(declare-fun lt!1025640 () Unit!48325)

(declare-fun choose!17219 (Regex!8993 List!34858) Unit!48325)

(assert (=> d!838540 (= lt!1025640 (choose!17219 r!17423 s!11993))))

(assert (=> d!838540 (validRegex!3726 r!17423)))

(assert (=> d!838540 (= (mainMatchTheorem!1130 r!17423 s!11993) lt!1025640)))

(declare-fun bs!524953 () Bool)

(assert (= bs!524953 d!838540))

(assert (=> bs!524953 m!3316843))

(assert (=> bs!524953 m!3316841))

(declare-fun m!3316949 () Bool)

(assert (=> bs!524953 m!3316949))

(assert (=> bs!524953 m!3316851))

(assert (=> b!2920463 d!838540))

(declare-fun b!2920854 () Bool)

(declare-fun res!1205798 () Bool)

(declare-fun e!1842699 () Bool)

(assert (=> b!2920854 (=> res!1205798 e!1842699)))

(assert (=> b!2920854 (= res!1205798 (not ((_ is Concat!14314) (regTwo!18499 r!17423))))))

(declare-fun e!1842693 () Bool)

(assert (=> b!2920854 (= e!1842693 e!1842699)))

(declare-fun b!2920855 () Bool)

(declare-fun e!1842698 () Bool)

(declare-fun call!191147 () Bool)

(assert (=> b!2920855 (= e!1842698 call!191147)))

(declare-fun c!476631 () Bool)

(declare-fun bm!191140 () Bool)

(declare-fun c!476630 () Bool)

(assert (=> bm!191140 (= call!191147 (validRegex!3726 (ite c!476630 (reg!9322 (regTwo!18499 r!17423)) (ite c!476631 (regOne!18499 (regTwo!18499 r!17423)) (regTwo!18498 (regTwo!18499 r!17423))))))))

(declare-fun b!2920856 () Bool)

(declare-fun e!1842695 () Bool)

(assert (=> b!2920856 (= e!1842695 e!1842693)))

(assert (=> b!2920856 (= c!476631 ((_ is Union!8993) (regTwo!18499 r!17423)))))

(declare-fun bm!191141 () Bool)

(declare-fun call!191146 () Bool)

(assert (=> bm!191141 (= call!191146 call!191147)))

(declare-fun b!2920857 () Bool)

(declare-fun res!1205796 () Bool)

(declare-fun e!1842694 () Bool)

(assert (=> b!2920857 (=> (not res!1205796) (not e!1842694))))

(assert (=> b!2920857 (= res!1205796 call!191146)))

(assert (=> b!2920857 (= e!1842693 e!1842694)))

(declare-fun d!838542 () Bool)

(declare-fun res!1205797 () Bool)

(declare-fun e!1842696 () Bool)

(assert (=> d!838542 (=> res!1205797 e!1842696)))

(assert (=> d!838542 (= res!1205797 ((_ is ElementMatch!8993) (regTwo!18499 r!17423)))))

(assert (=> d!838542 (= (validRegex!3726 (regTwo!18499 r!17423)) e!1842696)))

(declare-fun b!2920858 () Bool)

(declare-fun call!191145 () Bool)

(assert (=> b!2920858 (= e!1842694 call!191145)))

(declare-fun b!2920859 () Bool)

(assert (=> b!2920859 (= e!1842695 e!1842698)))

(declare-fun res!1205795 () Bool)

(assert (=> b!2920859 (= res!1205795 (not (nullable!2819 (reg!9322 (regTwo!18499 r!17423)))))))

(assert (=> b!2920859 (=> (not res!1205795) (not e!1842698))))

(declare-fun b!2920860 () Bool)

(assert (=> b!2920860 (= e!1842696 e!1842695)))

(assert (=> b!2920860 (= c!476630 ((_ is Star!8993) (regTwo!18499 r!17423)))))

(declare-fun b!2920861 () Bool)

(declare-fun e!1842697 () Bool)

(assert (=> b!2920861 (= e!1842699 e!1842697)))

(declare-fun res!1205794 () Bool)

(assert (=> b!2920861 (=> (not res!1205794) (not e!1842697))))

(assert (=> b!2920861 (= res!1205794 call!191145)))

(declare-fun bm!191142 () Bool)

(assert (=> bm!191142 (= call!191145 (validRegex!3726 (ite c!476631 (regTwo!18499 (regTwo!18499 r!17423)) (regOne!18498 (regTwo!18499 r!17423)))))))

(declare-fun b!2920862 () Bool)

(assert (=> b!2920862 (= e!1842697 call!191146)))

(assert (= (and d!838542 (not res!1205797)) b!2920860))

(assert (= (and b!2920860 c!476630) b!2920859))

(assert (= (and b!2920860 (not c!476630)) b!2920856))

(assert (= (and b!2920859 res!1205795) b!2920855))

(assert (= (and b!2920856 c!476631) b!2920857))

(assert (= (and b!2920856 (not c!476631)) b!2920854))

(assert (= (and b!2920857 res!1205796) b!2920858))

(assert (= (and b!2920854 (not res!1205798)) b!2920861))

(assert (= (and b!2920861 res!1205794) b!2920862))

(assert (= (or b!2920857 b!2920862) bm!191141))

(assert (= (or b!2920858 b!2920861) bm!191142))

(assert (= (or b!2920855 bm!191141) bm!191140))

(declare-fun m!3316951 () Bool)

(assert (=> bm!191140 m!3316951))

(declare-fun m!3316953 () Bool)

(assert (=> b!2920859 m!3316953))

(declare-fun m!3316955 () Bool)

(assert (=> bm!191142 m!3316955))

(assert (=> b!2920461 d!838542))

(declare-fun b!2920863 () Bool)

(declare-fun e!1842706 () Bool)

(assert (=> b!2920863 (= e!1842706 (matchR!3875 (derivativeStep!2433 (simplify!24 (regOne!18499 r!17423)) (head!6492 s!11993)) (tail!4718 s!11993)))))

(declare-fun b!2920864 () Bool)

(declare-fun e!1842703 () Bool)

(declare-fun e!1842705 () Bool)

(assert (=> b!2920864 (= e!1842703 e!1842705)))

(declare-fun c!476633 () Bool)

(assert (=> b!2920864 (= c!476633 ((_ is EmptyLang!8993) (simplify!24 (regOne!18499 r!17423))))))

(declare-fun b!2920865 () Bool)

(declare-fun e!1842704 () Bool)

(declare-fun e!1842700 () Bool)

(assert (=> b!2920865 (= e!1842704 e!1842700)))

(declare-fun res!1205801 () Bool)

(assert (=> b!2920865 (=> (not res!1205801) (not e!1842700))))

(declare-fun lt!1025641 () Bool)

(assert (=> b!2920865 (= res!1205801 (not lt!1025641))))

(declare-fun b!2920866 () Bool)

(declare-fun res!1205806 () Bool)

(declare-fun e!1842702 () Bool)

(assert (=> b!2920866 (=> res!1205806 e!1842702)))

(assert (=> b!2920866 (= res!1205806 (not (isEmpty!18989 (tail!4718 s!11993))))))

(declare-fun b!2920867 () Bool)

(assert (=> b!2920867 (= e!1842705 (not lt!1025641))))

(declare-fun b!2920868 () Bool)

(declare-fun call!191148 () Bool)

(assert (=> b!2920868 (= e!1842703 (= lt!1025641 call!191148))))

(declare-fun d!838544 () Bool)

(assert (=> d!838544 e!1842703))

(declare-fun c!476632 () Bool)

(assert (=> d!838544 (= c!476632 ((_ is EmptyExpr!8993) (simplify!24 (regOne!18499 r!17423))))))

(assert (=> d!838544 (= lt!1025641 e!1842706)))

(declare-fun c!476634 () Bool)

(assert (=> d!838544 (= c!476634 (isEmpty!18989 s!11993))))

(assert (=> d!838544 (validRegex!3726 (simplify!24 (regOne!18499 r!17423)))))

(assert (=> d!838544 (= (matchR!3875 (simplify!24 (regOne!18499 r!17423)) s!11993) lt!1025641)))

(declare-fun b!2920869 () Bool)

(declare-fun res!1205805 () Bool)

(assert (=> b!2920869 (=> res!1205805 e!1842704)))

(declare-fun e!1842701 () Bool)

(assert (=> b!2920869 (= res!1205805 e!1842701)))

(declare-fun res!1205800 () Bool)

(assert (=> b!2920869 (=> (not res!1205800) (not e!1842701))))

(assert (=> b!2920869 (= res!1205800 lt!1025641)))

(declare-fun b!2920870 () Bool)

(declare-fun res!1205804 () Bool)

(assert (=> b!2920870 (=> res!1205804 e!1842704)))

(assert (=> b!2920870 (= res!1205804 (not ((_ is ElementMatch!8993) (simplify!24 (regOne!18499 r!17423)))))))

(assert (=> b!2920870 (= e!1842705 e!1842704)))

(declare-fun b!2920871 () Bool)

(assert (=> b!2920871 (= e!1842701 (= (head!6492 s!11993) (c!476533 (simplify!24 (regOne!18499 r!17423)))))))

(declare-fun bm!191143 () Bool)

(assert (=> bm!191143 (= call!191148 (isEmpty!18989 s!11993))))

(declare-fun b!2920872 () Bool)

(declare-fun res!1205799 () Bool)

(assert (=> b!2920872 (=> (not res!1205799) (not e!1842701))))

(assert (=> b!2920872 (= res!1205799 (isEmpty!18989 (tail!4718 s!11993)))))

(declare-fun b!2920873 () Bool)

(declare-fun res!1205803 () Bool)

(assert (=> b!2920873 (=> (not res!1205803) (not e!1842701))))

(assert (=> b!2920873 (= res!1205803 (not call!191148))))

(declare-fun b!2920874 () Bool)

(assert (=> b!2920874 (= e!1842700 e!1842702)))

(declare-fun res!1205802 () Bool)

(assert (=> b!2920874 (=> res!1205802 e!1842702)))

(assert (=> b!2920874 (= res!1205802 call!191148)))

(declare-fun b!2920875 () Bool)

(assert (=> b!2920875 (= e!1842702 (not (= (head!6492 s!11993) (c!476533 (simplify!24 (regOne!18499 r!17423))))))))

(declare-fun b!2920876 () Bool)

(assert (=> b!2920876 (= e!1842706 (nullable!2819 (simplify!24 (regOne!18499 r!17423))))))

(assert (= (and d!838544 c!476634) b!2920876))

(assert (= (and d!838544 (not c!476634)) b!2920863))

(assert (= (and d!838544 c!476632) b!2920868))

(assert (= (and d!838544 (not c!476632)) b!2920864))

(assert (= (and b!2920864 c!476633) b!2920867))

(assert (= (and b!2920864 (not c!476633)) b!2920870))

(assert (= (and b!2920870 (not res!1205804)) b!2920869))

(assert (= (and b!2920869 res!1205800) b!2920873))

(assert (= (and b!2920873 res!1205803) b!2920872))

(assert (= (and b!2920872 res!1205799) b!2920871))

(assert (= (and b!2920869 (not res!1205805)) b!2920865))

(assert (= (and b!2920865 res!1205801) b!2920874))

(assert (= (and b!2920874 (not res!1205802)) b!2920866))

(assert (= (and b!2920866 (not res!1205806)) b!2920875))

(assert (= (or b!2920868 b!2920873 b!2920874) bm!191143))

(assert (=> b!2920863 m!3316935))

(assert (=> b!2920863 m!3316835))

(assert (=> b!2920863 m!3316935))

(declare-fun m!3316957 () Bool)

(assert (=> b!2920863 m!3316957))

(assert (=> b!2920863 m!3316939))

(assert (=> b!2920863 m!3316957))

(assert (=> b!2920863 m!3316939))

(declare-fun m!3316959 () Bool)

(assert (=> b!2920863 m!3316959))

(assert (=> b!2920872 m!3316939))

(assert (=> b!2920872 m!3316939))

(assert (=> b!2920872 m!3316943))

(assert (=> b!2920876 m!3316835))

(declare-fun m!3316961 () Bool)

(assert (=> b!2920876 m!3316961))

(assert (=> b!2920875 m!3316935))

(assert (=> bm!191143 m!3316899))

(assert (=> b!2920866 m!3316939))

(assert (=> b!2920866 m!3316939))

(assert (=> b!2920866 m!3316943))

(assert (=> b!2920871 m!3316935))

(assert (=> d!838544 m!3316899))

(assert (=> d!838544 m!3316835))

(declare-fun m!3316963 () Bool)

(assert (=> d!838544 m!3316963))

(assert (=> b!2920461 d!838544))

(declare-fun b!2920927 () Bool)

(declare-fun e!1842740 () Bool)

(declare-fun lt!1025657 () Regex!8993)

(assert (=> b!2920927 (= e!1842740 (= (nullable!2819 lt!1025657) (nullable!2819 (regOne!18499 r!17423))))))

(declare-fun b!2920928 () Bool)

(declare-fun e!1842741 () Bool)

(declare-fun call!191164 () Bool)

(assert (=> b!2920928 (= e!1842741 call!191164)))

(declare-fun d!838546 () Bool)

(assert (=> d!838546 e!1842740))

(declare-fun res!1205815 () Bool)

(assert (=> d!838546 (=> (not res!1205815) (not e!1842740))))

(assert (=> d!838546 (= res!1205815 (validRegex!3726 lt!1025657))))

(declare-fun e!1842743 () Regex!8993)

(assert (=> d!838546 (= lt!1025657 e!1842743)))

(declare-fun c!476663 () Bool)

(assert (=> d!838546 (= c!476663 ((_ is EmptyLang!8993) (regOne!18499 r!17423)))))

(assert (=> d!838546 (validRegex!3726 (regOne!18499 r!17423))))

(assert (=> d!838546 (= (simplify!24 (regOne!18499 r!17423)) lt!1025657)))

(declare-fun b!2920929 () Bool)

(declare-fun e!1842747 () Regex!8993)

(declare-fun lt!1025659 () Regex!8993)

(assert (=> b!2920929 (= e!1842747 lt!1025659)))

(declare-fun bm!191158 () Bool)

(declare-fun call!191165 () Regex!8993)

(declare-fun call!191169 () Regex!8993)

(assert (=> bm!191158 (= call!191165 call!191169)))

(declare-fun b!2920930 () Bool)

(declare-fun c!476657 () Bool)

(assert (=> b!2920930 (= c!476657 ((_ is EmptyExpr!8993) (regOne!18499 r!17423)))))

(declare-fun e!1842738 () Regex!8993)

(declare-fun e!1842744 () Regex!8993)

(assert (=> b!2920930 (= e!1842738 e!1842744)))

(declare-fun b!2920931 () Bool)

(declare-fun c!476661 () Bool)

(declare-fun call!191167 () Bool)

(assert (=> b!2920931 (= c!476661 call!191167)))

(declare-fun e!1842737 () Regex!8993)

(assert (=> b!2920931 (= e!1842737 e!1842747)))

(declare-fun b!2920932 () Bool)

(declare-fun e!1842748 () Regex!8993)

(declare-fun lt!1025654 () Regex!8993)

(assert (=> b!2920932 (= e!1842748 lt!1025654)))

(declare-fun bm!191159 () Bool)

(declare-fun c!476660 () Bool)

(declare-fun lt!1025655 () Regex!8993)

(declare-fun lt!1025658 () Regex!8993)

(declare-fun isEmptyExpr!257 (Regex!8993) Bool)

(assert (=> bm!191159 (= call!191164 (isEmptyExpr!257 (ite c!476660 lt!1025655 lt!1025658)))))

(declare-fun b!2920933 () Bool)

(assert (=> b!2920933 (= e!1842743 e!1842738)))

(declare-fun c!476666 () Bool)

(assert (=> b!2920933 (= c!476666 ((_ is ElementMatch!8993) (regOne!18499 r!17423)))))

(declare-fun b!2920934 () Bool)

(declare-fun c!476664 () Bool)

(assert (=> b!2920934 (= c!476664 call!191164)))

(declare-fun e!1842739 () Regex!8993)

(assert (=> b!2920934 (= e!1842739 e!1842748)))

(declare-fun b!2920935 () Bool)

(declare-fun e!1842746 () Regex!8993)

(assert (=> b!2920935 (= e!1842746 e!1842737)))

(declare-fun call!191163 () Regex!8993)

(assert (=> b!2920935 (= lt!1025659 call!191163)))

(declare-fun lt!1025656 () Regex!8993)

(assert (=> b!2920935 (= lt!1025656 call!191165)))

(declare-fun c!476658 () Bool)

(declare-fun call!191166 () Bool)

(assert (=> b!2920935 (= c!476658 call!191166)))

(declare-fun b!2920936 () Bool)

(declare-fun e!1842735 () Regex!8993)

(assert (=> b!2920936 (= e!1842735 EmptyExpr!8993)))

(declare-fun b!2920937 () Bool)

(assert (=> b!2920937 (= e!1842738 (regOne!18499 r!17423))))

(declare-fun b!2920938 () Bool)

(declare-fun e!1842742 () Bool)

(assert (=> b!2920938 (= e!1842742 call!191166)))

(declare-fun b!2920939 () Bool)

(assert (=> b!2920939 (= e!1842739 EmptyLang!8993)))

(declare-fun b!2920940 () Bool)

(assert (=> b!2920940 (= e!1842735 (Star!8993 lt!1025655))))

(declare-fun b!2920941 () Bool)

(assert (=> b!2920941 (= e!1842744 EmptyExpr!8993)))

(declare-fun bm!191160 () Bool)

(declare-fun call!191168 () Bool)

(declare-fun c!476659 () Bool)

(declare-fun isEmptyLang!172 (Regex!8993) Bool)

(assert (=> bm!191160 (= call!191168 (isEmptyLang!172 (ite c!476660 lt!1025655 (ite c!476659 lt!1025659 lt!1025654))))))

(declare-fun b!2920942 () Bool)

(assert (=> b!2920942 (= c!476659 ((_ is Union!8993) (regOne!18499 r!17423)))))

(declare-fun e!1842736 () Regex!8993)

(assert (=> b!2920942 (= e!1842736 e!1842746)))

(declare-fun b!2920943 () Bool)

(assert (=> b!2920943 (= e!1842737 lt!1025656)))

(declare-fun bm!191161 () Bool)

(assert (=> bm!191161 (= call!191167 (isEmptyLang!172 (ite c!476659 lt!1025656 lt!1025658)))))

(declare-fun b!2920944 () Bool)

(assert (=> b!2920944 (= e!1842743 EmptyLang!8993)))

(declare-fun b!2920945 () Bool)

(assert (=> b!2920945 (= e!1842744 e!1842736)))

(assert (=> b!2920945 (= c!476660 ((_ is Star!8993) (regOne!18499 r!17423)))))

(declare-fun b!2920946 () Bool)

(declare-fun e!1842745 () Regex!8993)

(assert (=> b!2920946 (= e!1842748 e!1842745)))

(declare-fun c!476667 () Bool)

(assert (=> b!2920946 (= c!476667 (isEmptyExpr!257 lt!1025654))))

(declare-fun bm!191162 () Bool)

(assert (=> bm!191162 (= call!191166 call!191168)))

(declare-fun bm!191163 () Bool)

(assert (=> bm!191163 (= call!191163 (simplify!24 (ite c!476659 (regOne!18499 (regOne!18499 r!17423)) (regTwo!18498 (regOne!18499 r!17423)))))))

(declare-fun b!2920947 () Bool)

(declare-fun c!476662 () Bool)

(assert (=> b!2920947 (= c!476662 e!1842741)))

(declare-fun res!1205813 () Bool)

(assert (=> b!2920947 (=> res!1205813 e!1842741)))

(assert (=> b!2920947 (= res!1205813 call!191168)))

(assert (=> b!2920947 (= lt!1025655 call!191169)))

(assert (=> b!2920947 (= e!1842736 e!1842735)))

(declare-fun b!2920948 () Bool)

(assert (=> b!2920948 (= e!1842747 (Union!8993 lt!1025659 lt!1025656))))

(declare-fun bm!191164 () Bool)

(assert (=> bm!191164 (= call!191169 (simplify!24 (ite c!476660 (reg!9322 (regOne!18499 r!17423)) (ite c!476659 (regTwo!18499 (regOne!18499 r!17423)) (regOne!18498 (regOne!18499 r!17423))))))))

(declare-fun b!2920949 () Bool)

(assert (=> b!2920949 (= e!1842745 lt!1025658)))

(declare-fun b!2920950 () Bool)

(assert (=> b!2920950 (= e!1842746 e!1842739)))

(assert (=> b!2920950 (= lt!1025658 call!191165)))

(assert (=> b!2920950 (= lt!1025654 call!191163)))

(declare-fun res!1205814 () Bool)

(assert (=> b!2920950 (= res!1205814 call!191167)))

(assert (=> b!2920950 (=> res!1205814 e!1842742)))

(declare-fun c!476665 () Bool)

(assert (=> b!2920950 (= c!476665 e!1842742)))

(declare-fun b!2920951 () Bool)

(assert (=> b!2920951 (= e!1842745 (Concat!14314 lt!1025658 lt!1025654))))

(assert (= (and d!838546 c!476663) b!2920944))

(assert (= (and d!838546 (not c!476663)) b!2920933))

(assert (= (and b!2920933 c!476666) b!2920937))

(assert (= (and b!2920933 (not c!476666)) b!2920930))

(assert (= (and b!2920930 c!476657) b!2920941))

(assert (= (and b!2920930 (not c!476657)) b!2920945))

(assert (= (and b!2920945 c!476660) b!2920947))

(assert (= (and b!2920945 (not c!476660)) b!2920942))

(assert (= (and b!2920947 (not res!1205813)) b!2920928))

(assert (= (and b!2920947 c!476662) b!2920936))

(assert (= (and b!2920947 (not c!476662)) b!2920940))

(assert (= (and b!2920942 c!476659) b!2920935))

(assert (= (and b!2920942 (not c!476659)) b!2920950))

(assert (= (and b!2920935 c!476658) b!2920943))

(assert (= (and b!2920935 (not c!476658)) b!2920931))

(assert (= (and b!2920931 c!476661) b!2920929))

(assert (= (and b!2920931 (not c!476661)) b!2920948))

(assert (= (and b!2920950 (not res!1205814)) b!2920938))

(assert (= (and b!2920950 c!476665) b!2920939))

(assert (= (and b!2920950 (not c!476665)) b!2920934))

(assert (= (and b!2920934 c!476664) b!2920932))

(assert (= (and b!2920934 (not c!476664)) b!2920946))

(assert (= (and b!2920946 c!476667) b!2920949))

(assert (= (and b!2920946 (not c!476667)) b!2920951))

(assert (= (or b!2920935 b!2920950) bm!191163))

(assert (= (or b!2920935 b!2920950) bm!191158))

(assert (= (or b!2920931 b!2920950) bm!191161))

(assert (= (or b!2920935 b!2920938) bm!191162))

(assert (= (or b!2920928 b!2920934) bm!191159))

(assert (= (or b!2920947 bm!191158) bm!191164))

(assert (= (or b!2920947 bm!191162) bm!191160))

(assert (= (and d!838546 res!1205815) b!2920927))

(declare-fun m!3316965 () Bool)

(assert (=> b!2920946 m!3316965))

(declare-fun m!3316967 () Bool)

(assert (=> bm!191160 m!3316967))

(declare-fun m!3316969 () Bool)

(assert (=> bm!191159 m!3316969))

(declare-fun m!3316971 () Bool)

(assert (=> d!838546 m!3316971))

(declare-fun m!3316973 () Bool)

(assert (=> d!838546 m!3316973))

(declare-fun m!3316975 () Bool)

(assert (=> bm!191163 m!3316975))

(declare-fun m!3316977 () Bool)

(assert (=> bm!191161 m!3316977))

(declare-fun m!3316979 () Bool)

(assert (=> b!2920927 m!3316979))

(declare-fun m!3316981 () Bool)

(assert (=> b!2920927 m!3316981))

(declare-fun m!3316983 () Bool)

(assert (=> bm!191164 m!3316983))

(assert (=> b!2920461 d!838546))

(declare-fun d!838548 () Bool)

(assert (=> d!838548 (= (matchR!3875 (regOne!18499 r!17423) s!11993) (matchR!3875 (simplify!24 (regOne!18499 r!17423)) s!11993))))

(declare-fun lt!1025662 () Unit!48325)

(declare-fun choose!17221 (Regex!8993 List!34858) Unit!48325)

(assert (=> d!838548 (= lt!1025662 (choose!17221 (regOne!18499 r!17423) s!11993))))

(assert (=> d!838548 (validRegex!3726 (regOne!18499 r!17423))))

(assert (=> d!838548 (= (lemmaSimplifySound!22 (regOne!18499 r!17423) s!11993) lt!1025662)))

(declare-fun bs!524954 () Bool)

(assert (= bs!524954 d!838548))

(assert (=> bs!524954 m!3316835))

(declare-fun m!3316985 () Bool)

(assert (=> bs!524954 m!3316985))

(assert (=> bs!524954 m!3316847))

(assert (=> bs!524954 m!3316973))

(assert (=> bs!524954 m!3316835))

(assert (=> bs!524954 m!3316837))

(assert (=> b!2920461 d!838548))

(declare-fun b!2920952 () Bool)

(declare-fun res!1205820 () Bool)

(declare-fun e!1842755 () Bool)

(assert (=> b!2920952 (=> res!1205820 e!1842755)))

(assert (=> b!2920952 (= res!1205820 (not ((_ is Concat!14314) r!17423)))))

(declare-fun e!1842749 () Bool)

(assert (=> b!2920952 (= e!1842749 e!1842755)))

(declare-fun b!2920953 () Bool)

(declare-fun e!1842754 () Bool)

(declare-fun call!191172 () Bool)

(assert (=> b!2920953 (= e!1842754 call!191172)))

(declare-fun c!476669 () Bool)

(declare-fun c!476668 () Bool)

(declare-fun bm!191165 () Bool)

(assert (=> bm!191165 (= call!191172 (validRegex!3726 (ite c!476668 (reg!9322 r!17423) (ite c!476669 (regOne!18499 r!17423) (regTwo!18498 r!17423)))))))

(declare-fun b!2920954 () Bool)

(declare-fun e!1842751 () Bool)

(assert (=> b!2920954 (= e!1842751 e!1842749)))

(assert (=> b!2920954 (= c!476669 ((_ is Union!8993) r!17423))))

(declare-fun bm!191166 () Bool)

(declare-fun call!191171 () Bool)

(assert (=> bm!191166 (= call!191171 call!191172)))

(declare-fun b!2920955 () Bool)

(declare-fun res!1205818 () Bool)

(declare-fun e!1842750 () Bool)

(assert (=> b!2920955 (=> (not res!1205818) (not e!1842750))))

(assert (=> b!2920955 (= res!1205818 call!191171)))

(assert (=> b!2920955 (= e!1842749 e!1842750)))

(declare-fun d!838550 () Bool)

(declare-fun res!1205819 () Bool)

(declare-fun e!1842752 () Bool)

(assert (=> d!838550 (=> res!1205819 e!1842752)))

(assert (=> d!838550 (= res!1205819 ((_ is ElementMatch!8993) r!17423))))

(assert (=> d!838550 (= (validRegex!3726 r!17423) e!1842752)))

(declare-fun b!2920956 () Bool)

(declare-fun call!191170 () Bool)

(assert (=> b!2920956 (= e!1842750 call!191170)))

(declare-fun b!2920957 () Bool)

(assert (=> b!2920957 (= e!1842751 e!1842754)))

(declare-fun res!1205817 () Bool)

(assert (=> b!2920957 (= res!1205817 (not (nullable!2819 (reg!9322 r!17423))))))

(assert (=> b!2920957 (=> (not res!1205817) (not e!1842754))))

(declare-fun b!2920958 () Bool)

(assert (=> b!2920958 (= e!1842752 e!1842751)))

(assert (=> b!2920958 (= c!476668 ((_ is Star!8993) r!17423))))

(declare-fun b!2920959 () Bool)

(declare-fun e!1842753 () Bool)

(assert (=> b!2920959 (= e!1842755 e!1842753)))

(declare-fun res!1205816 () Bool)

(assert (=> b!2920959 (=> (not res!1205816) (not e!1842753))))

(assert (=> b!2920959 (= res!1205816 call!191170)))

(declare-fun bm!191167 () Bool)

(assert (=> bm!191167 (= call!191170 (validRegex!3726 (ite c!476669 (regTwo!18499 r!17423) (regOne!18498 r!17423))))))

(declare-fun b!2920960 () Bool)

(assert (=> b!2920960 (= e!1842753 call!191171)))

(assert (= (and d!838550 (not res!1205819)) b!2920958))

(assert (= (and b!2920958 c!476668) b!2920957))

(assert (= (and b!2920958 (not c!476668)) b!2920954))

(assert (= (and b!2920957 res!1205817) b!2920953))

(assert (= (and b!2920954 c!476669) b!2920955))

(assert (= (and b!2920954 (not c!476669)) b!2920952))

(assert (= (and b!2920955 res!1205818) b!2920956))

(assert (= (and b!2920952 (not res!1205820)) b!2920959))

(assert (= (and b!2920959 res!1205816) b!2920960))

(assert (= (or b!2920955 b!2920960) bm!191166))

(assert (= (or b!2920956 b!2920959) bm!191167))

(assert (= (or b!2920953 bm!191166) bm!191165))

(declare-fun m!3316987 () Bool)

(assert (=> bm!191165 m!3316987))

(declare-fun m!3316989 () Bool)

(assert (=> b!2920957 m!3316989))

(declare-fun m!3316991 () Bool)

(assert (=> bm!191167 m!3316991))

(assert (=> start!284372 d!838550))

(declare-fun b!2920961 () Bool)

(declare-fun e!1842762 () Bool)

(assert (=> b!2920961 (= e!1842762 (matchR!3875 (derivativeStep!2433 (regOne!18499 r!17423) (head!6492 s!11993)) (tail!4718 s!11993)))))

(declare-fun b!2920962 () Bool)

(declare-fun e!1842759 () Bool)

(declare-fun e!1842761 () Bool)

(assert (=> b!2920962 (= e!1842759 e!1842761)))

(declare-fun c!476671 () Bool)

(assert (=> b!2920962 (= c!476671 ((_ is EmptyLang!8993) (regOne!18499 r!17423)))))

(declare-fun b!2920963 () Bool)

(declare-fun e!1842760 () Bool)

(declare-fun e!1842756 () Bool)

(assert (=> b!2920963 (= e!1842760 e!1842756)))

(declare-fun res!1205823 () Bool)

(assert (=> b!2920963 (=> (not res!1205823) (not e!1842756))))

(declare-fun lt!1025663 () Bool)

(assert (=> b!2920963 (= res!1205823 (not lt!1025663))))

(declare-fun b!2920964 () Bool)

(declare-fun res!1205828 () Bool)

(declare-fun e!1842758 () Bool)

(assert (=> b!2920964 (=> res!1205828 e!1842758)))

(assert (=> b!2920964 (= res!1205828 (not (isEmpty!18989 (tail!4718 s!11993))))))

(declare-fun b!2920965 () Bool)

(assert (=> b!2920965 (= e!1842761 (not lt!1025663))))

(declare-fun b!2920966 () Bool)

(declare-fun call!191173 () Bool)

(assert (=> b!2920966 (= e!1842759 (= lt!1025663 call!191173))))

(declare-fun d!838552 () Bool)

(assert (=> d!838552 e!1842759))

(declare-fun c!476670 () Bool)

(assert (=> d!838552 (= c!476670 ((_ is EmptyExpr!8993) (regOne!18499 r!17423)))))

(assert (=> d!838552 (= lt!1025663 e!1842762)))

(declare-fun c!476672 () Bool)

(assert (=> d!838552 (= c!476672 (isEmpty!18989 s!11993))))

(assert (=> d!838552 (validRegex!3726 (regOne!18499 r!17423))))

(assert (=> d!838552 (= (matchR!3875 (regOne!18499 r!17423) s!11993) lt!1025663)))

(declare-fun b!2920967 () Bool)

(declare-fun res!1205827 () Bool)

(assert (=> b!2920967 (=> res!1205827 e!1842760)))

(declare-fun e!1842757 () Bool)

(assert (=> b!2920967 (= res!1205827 e!1842757)))

(declare-fun res!1205822 () Bool)

(assert (=> b!2920967 (=> (not res!1205822) (not e!1842757))))

(assert (=> b!2920967 (= res!1205822 lt!1025663)))

(declare-fun b!2920968 () Bool)

(declare-fun res!1205826 () Bool)

(assert (=> b!2920968 (=> res!1205826 e!1842760)))

(assert (=> b!2920968 (= res!1205826 (not ((_ is ElementMatch!8993) (regOne!18499 r!17423))))))

(assert (=> b!2920968 (= e!1842761 e!1842760)))

(declare-fun b!2920969 () Bool)

(assert (=> b!2920969 (= e!1842757 (= (head!6492 s!11993) (c!476533 (regOne!18499 r!17423))))))

(declare-fun bm!191168 () Bool)

(assert (=> bm!191168 (= call!191173 (isEmpty!18989 s!11993))))

(declare-fun b!2920970 () Bool)

(declare-fun res!1205821 () Bool)

(assert (=> b!2920970 (=> (not res!1205821) (not e!1842757))))

(assert (=> b!2920970 (= res!1205821 (isEmpty!18989 (tail!4718 s!11993)))))

(declare-fun b!2920971 () Bool)

(declare-fun res!1205825 () Bool)

(assert (=> b!2920971 (=> (not res!1205825) (not e!1842757))))

(assert (=> b!2920971 (= res!1205825 (not call!191173))))

(declare-fun b!2920972 () Bool)

(assert (=> b!2920972 (= e!1842756 e!1842758)))

(declare-fun res!1205824 () Bool)

(assert (=> b!2920972 (=> res!1205824 e!1842758)))

(assert (=> b!2920972 (= res!1205824 call!191173)))

(declare-fun b!2920973 () Bool)

(assert (=> b!2920973 (= e!1842758 (not (= (head!6492 s!11993) (c!476533 (regOne!18499 r!17423)))))))

(declare-fun b!2920974 () Bool)

(assert (=> b!2920974 (= e!1842762 (nullable!2819 (regOne!18499 r!17423)))))

(assert (= (and d!838552 c!476672) b!2920974))

(assert (= (and d!838552 (not c!476672)) b!2920961))

(assert (= (and d!838552 c!476670) b!2920966))

(assert (= (and d!838552 (not c!476670)) b!2920962))

(assert (= (and b!2920962 c!476671) b!2920965))

(assert (= (and b!2920962 (not c!476671)) b!2920968))

(assert (= (and b!2920968 (not res!1205826)) b!2920967))

(assert (= (and b!2920967 res!1205822) b!2920971))

(assert (= (and b!2920971 res!1205825) b!2920970))

(assert (= (and b!2920970 res!1205821) b!2920969))

(assert (= (and b!2920967 (not res!1205827)) b!2920963))

(assert (= (and b!2920963 res!1205823) b!2920972))

(assert (= (and b!2920972 (not res!1205824)) b!2920964))

(assert (= (and b!2920964 (not res!1205828)) b!2920973))

(assert (= (or b!2920966 b!2920971 b!2920972) bm!191168))

(assert (=> b!2920961 m!3316935))

(assert (=> b!2920961 m!3316935))

(declare-fun m!3316993 () Bool)

(assert (=> b!2920961 m!3316993))

(assert (=> b!2920961 m!3316939))

(assert (=> b!2920961 m!3316993))

(assert (=> b!2920961 m!3316939))

(declare-fun m!3316995 () Bool)

(assert (=> b!2920961 m!3316995))

(assert (=> b!2920970 m!3316939))

(assert (=> b!2920970 m!3316939))

(assert (=> b!2920970 m!3316943))

(assert (=> b!2920974 m!3316981))

(assert (=> b!2920973 m!3316935))

(assert (=> bm!191168 m!3316899))

(assert (=> b!2920964 m!3316939))

(assert (=> b!2920964 m!3316939))

(assert (=> b!2920964 m!3316943))

(assert (=> b!2920969 m!3316935))

(assert (=> d!838552 m!3316899))

(assert (=> d!838552 m!3316973))

(assert (=> b!2920456 d!838552))

(declare-fun d!838554 () Bool)

(declare-fun e!1842768 () Bool)

(assert (=> d!838554 e!1842768))

(declare-fun res!1205833 () Bool)

(assert (=> d!838554 (=> res!1205833 e!1842768)))

(assert (=> d!838554 (= res!1205833 (matchR!3875 (regOne!18499 r!17423) s!11993))))

(declare-fun lt!1025666 () Unit!48325)

(declare-fun choose!17223 (Regex!8993 Regex!8993 List!34858) Unit!48325)

(assert (=> d!838554 (= lt!1025666 (choose!17223 (regOne!18499 r!17423) (regTwo!18499 r!17423) s!11993))))

(declare-fun e!1842767 () Bool)

(assert (=> d!838554 e!1842767))

(declare-fun res!1205834 () Bool)

(assert (=> d!838554 (=> (not res!1205834) (not e!1842767))))

(assert (=> d!838554 (= res!1205834 (validRegex!3726 (regOne!18499 r!17423)))))

(assert (=> d!838554 (= (lemmaRegexUnionAcceptsThenOneOfTheTwoAccepts!242 (regOne!18499 r!17423) (regTwo!18499 r!17423) s!11993) lt!1025666)))

(declare-fun b!2920979 () Bool)

(assert (=> b!2920979 (= e!1842767 (validRegex!3726 (regTwo!18499 r!17423)))))

(declare-fun b!2920980 () Bool)

(assert (=> b!2920980 (= e!1842768 (matchR!3875 (regTwo!18499 r!17423) s!11993))))

(assert (= (and d!838554 res!1205834) b!2920979))

(assert (= (and d!838554 (not res!1205833)) b!2920980))

(assert (=> d!838554 m!3316847))

(declare-fun m!3316997 () Bool)

(assert (=> d!838554 m!3316997))

(assert (=> d!838554 m!3316973))

(assert (=> b!2920979 m!3316833))

(assert (=> b!2920980 m!3316831))

(assert (=> b!2920456 d!838554))

(declare-fun b!2920981 () Bool)

(declare-fun e!1842775 () Bool)

(assert (=> b!2920981 (= e!1842775 (matchR!3875 (derivativeStep!2433 (regTwo!18499 r!17423) (head!6492 s!11993)) (tail!4718 s!11993)))))

(declare-fun b!2920982 () Bool)

(declare-fun e!1842772 () Bool)

(declare-fun e!1842774 () Bool)

(assert (=> b!2920982 (= e!1842772 e!1842774)))

(declare-fun c!476674 () Bool)

(assert (=> b!2920982 (= c!476674 ((_ is EmptyLang!8993) (regTwo!18499 r!17423)))))

(declare-fun b!2920983 () Bool)

(declare-fun e!1842773 () Bool)

(declare-fun e!1842769 () Bool)

(assert (=> b!2920983 (= e!1842773 e!1842769)))

(declare-fun res!1205837 () Bool)

(assert (=> b!2920983 (=> (not res!1205837) (not e!1842769))))

(declare-fun lt!1025667 () Bool)

(assert (=> b!2920983 (= res!1205837 (not lt!1025667))))

(declare-fun b!2920984 () Bool)

(declare-fun res!1205842 () Bool)

(declare-fun e!1842771 () Bool)

(assert (=> b!2920984 (=> res!1205842 e!1842771)))

(assert (=> b!2920984 (= res!1205842 (not (isEmpty!18989 (tail!4718 s!11993))))))

(declare-fun b!2920985 () Bool)

(assert (=> b!2920985 (= e!1842774 (not lt!1025667))))

(declare-fun b!2920986 () Bool)

(declare-fun call!191174 () Bool)

(assert (=> b!2920986 (= e!1842772 (= lt!1025667 call!191174))))

(declare-fun d!838556 () Bool)

(assert (=> d!838556 e!1842772))

(declare-fun c!476673 () Bool)

(assert (=> d!838556 (= c!476673 ((_ is EmptyExpr!8993) (regTwo!18499 r!17423)))))

(assert (=> d!838556 (= lt!1025667 e!1842775)))

(declare-fun c!476675 () Bool)

(assert (=> d!838556 (= c!476675 (isEmpty!18989 s!11993))))

(assert (=> d!838556 (validRegex!3726 (regTwo!18499 r!17423))))

(assert (=> d!838556 (= (matchR!3875 (regTwo!18499 r!17423) s!11993) lt!1025667)))

(declare-fun b!2920987 () Bool)

(declare-fun res!1205841 () Bool)

(assert (=> b!2920987 (=> res!1205841 e!1842773)))

(declare-fun e!1842770 () Bool)

(assert (=> b!2920987 (= res!1205841 e!1842770)))

(declare-fun res!1205836 () Bool)

(assert (=> b!2920987 (=> (not res!1205836) (not e!1842770))))

(assert (=> b!2920987 (= res!1205836 lt!1025667)))

(declare-fun b!2920988 () Bool)

(declare-fun res!1205840 () Bool)

(assert (=> b!2920988 (=> res!1205840 e!1842773)))

(assert (=> b!2920988 (= res!1205840 (not ((_ is ElementMatch!8993) (regTwo!18499 r!17423))))))

(assert (=> b!2920988 (= e!1842774 e!1842773)))

(declare-fun b!2920989 () Bool)

(assert (=> b!2920989 (= e!1842770 (= (head!6492 s!11993) (c!476533 (regTwo!18499 r!17423))))))

(declare-fun bm!191169 () Bool)

(assert (=> bm!191169 (= call!191174 (isEmpty!18989 s!11993))))

(declare-fun b!2920990 () Bool)

(declare-fun res!1205835 () Bool)

(assert (=> b!2920990 (=> (not res!1205835) (not e!1842770))))

(assert (=> b!2920990 (= res!1205835 (isEmpty!18989 (tail!4718 s!11993)))))

(declare-fun b!2920991 () Bool)

(declare-fun res!1205839 () Bool)

(assert (=> b!2920991 (=> (not res!1205839) (not e!1842770))))

(assert (=> b!2920991 (= res!1205839 (not call!191174))))

(declare-fun b!2920992 () Bool)

(assert (=> b!2920992 (= e!1842769 e!1842771)))

(declare-fun res!1205838 () Bool)

(assert (=> b!2920992 (=> res!1205838 e!1842771)))

(assert (=> b!2920992 (= res!1205838 call!191174)))

(declare-fun b!2920993 () Bool)

(assert (=> b!2920993 (= e!1842771 (not (= (head!6492 s!11993) (c!476533 (regTwo!18499 r!17423)))))))

(declare-fun b!2920994 () Bool)

(assert (=> b!2920994 (= e!1842775 (nullable!2819 (regTwo!18499 r!17423)))))

(assert (= (and d!838556 c!476675) b!2920994))

(assert (= (and d!838556 (not c!476675)) b!2920981))

(assert (= (and d!838556 c!476673) b!2920986))

(assert (= (and d!838556 (not c!476673)) b!2920982))

(assert (= (and b!2920982 c!476674) b!2920985))

(assert (= (and b!2920982 (not c!476674)) b!2920988))

(assert (= (and b!2920988 (not res!1205840)) b!2920987))

(assert (= (and b!2920987 res!1205836) b!2920991))

(assert (= (and b!2920991 res!1205839) b!2920990))

(assert (= (and b!2920990 res!1205835) b!2920989))

(assert (= (and b!2920987 (not res!1205841)) b!2920983))

(assert (= (and b!2920983 res!1205837) b!2920992))

(assert (= (and b!2920992 (not res!1205838)) b!2920984))

(assert (= (and b!2920984 (not res!1205842)) b!2920993))

(assert (= (or b!2920986 b!2920991 b!2920992) bm!191169))

(assert (=> b!2920981 m!3316935))

(assert (=> b!2920981 m!3316935))

(declare-fun m!3316999 () Bool)

(assert (=> b!2920981 m!3316999))

(assert (=> b!2920981 m!3316939))

(assert (=> b!2920981 m!3316999))

(assert (=> b!2920981 m!3316939))

(declare-fun m!3317001 () Bool)

(assert (=> b!2920981 m!3317001))

(assert (=> b!2920990 m!3316939))

(assert (=> b!2920990 m!3316939))

(assert (=> b!2920990 m!3316943))

(declare-fun m!3317003 () Bool)

(assert (=> b!2920994 m!3317003))

(assert (=> b!2920993 m!3316935))

(assert (=> bm!191169 m!3316899))

(assert (=> b!2920984 m!3316939))

(assert (=> b!2920984 m!3316939))

(assert (=> b!2920984 m!3316943))

(assert (=> b!2920989 m!3316935))

(assert (=> d!838556 m!3316899))

(assert (=> d!838556 m!3316833))

(assert (=> b!2920462 d!838556))

(declare-fun b!2921005 () Bool)

(declare-fun e!1842778 () Bool)

(assert (=> b!2921005 (= e!1842778 tp_is_empty!15549)))

(declare-fun b!2921006 () Bool)

(declare-fun tp!937249 () Bool)

(declare-fun tp!937250 () Bool)

(assert (=> b!2921006 (= e!1842778 (and tp!937249 tp!937250))))

(declare-fun b!2921008 () Bool)

(declare-fun tp!937247 () Bool)

(declare-fun tp!937248 () Bool)

(assert (=> b!2921008 (= e!1842778 (and tp!937247 tp!937248))))

(declare-fun b!2921007 () Bool)

(declare-fun tp!937246 () Bool)

(assert (=> b!2921007 (= e!1842778 tp!937246)))

(assert (=> b!2920458 (= tp!937193 e!1842778)))

(assert (= (and b!2920458 ((_ is ElementMatch!8993) (reg!9322 r!17423))) b!2921005))

(assert (= (and b!2920458 ((_ is Concat!14314) (reg!9322 r!17423))) b!2921006))

(assert (= (and b!2920458 ((_ is Star!8993) (reg!9322 r!17423))) b!2921007))

(assert (= (and b!2920458 ((_ is Union!8993) (reg!9322 r!17423))) b!2921008))

(declare-fun b!2921009 () Bool)

(declare-fun e!1842779 () Bool)

(assert (=> b!2921009 (= e!1842779 tp_is_empty!15549)))

(declare-fun b!2921010 () Bool)

(declare-fun tp!937254 () Bool)

(declare-fun tp!937255 () Bool)

(assert (=> b!2921010 (= e!1842779 (and tp!937254 tp!937255))))

(declare-fun b!2921012 () Bool)

(declare-fun tp!937252 () Bool)

(declare-fun tp!937253 () Bool)

(assert (=> b!2921012 (= e!1842779 (and tp!937252 tp!937253))))

(declare-fun b!2921011 () Bool)

(declare-fun tp!937251 () Bool)

(assert (=> b!2921011 (= e!1842779 tp!937251)))

(assert (=> b!2920455 (= tp!937192 e!1842779)))

(assert (= (and b!2920455 ((_ is ElementMatch!8993) (regOne!18499 r!17423))) b!2921009))

(assert (= (and b!2920455 ((_ is Concat!14314) (regOne!18499 r!17423))) b!2921010))

(assert (= (and b!2920455 ((_ is Star!8993) (regOne!18499 r!17423))) b!2921011))

(assert (= (and b!2920455 ((_ is Union!8993) (regOne!18499 r!17423))) b!2921012))

(declare-fun b!2921013 () Bool)

(declare-fun e!1842780 () Bool)

(assert (=> b!2921013 (= e!1842780 tp_is_empty!15549)))

(declare-fun b!2921014 () Bool)

(declare-fun tp!937259 () Bool)

(declare-fun tp!937260 () Bool)

(assert (=> b!2921014 (= e!1842780 (and tp!937259 tp!937260))))

(declare-fun b!2921016 () Bool)

(declare-fun tp!937257 () Bool)

(declare-fun tp!937258 () Bool)

(assert (=> b!2921016 (= e!1842780 (and tp!937257 tp!937258))))

(declare-fun b!2921015 () Bool)

(declare-fun tp!937256 () Bool)

(assert (=> b!2921015 (= e!1842780 tp!937256)))

(assert (=> b!2920455 (= tp!937195 e!1842780)))

(assert (= (and b!2920455 ((_ is ElementMatch!8993) (regTwo!18499 r!17423))) b!2921013))

(assert (= (and b!2920455 ((_ is Concat!14314) (regTwo!18499 r!17423))) b!2921014))

(assert (= (and b!2920455 ((_ is Star!8993) (regTwo!18499 r!17423))) b!2921015))

(assert (= (and b!2920455 ((_ is Union!8993) (regTwo!18499 r!17423))) b!2921016))

(declare-fun b!2921017 () Bool)

(declare-fun e!1842781 () Bool)

(assert (=> b!2921017 (= e!1842781 tp_is_empty!15549)))

(declare-fun b!2921018 () Bool)

(declare-fun tp!937264 () Bool)

(declare-fun tp!937265 () Bool)

(assert (=> b!2921018 (= e!1842781 (and tp!937264 tp!937265))))

(declare-fun b!2921020 () Bool)

(declare-fun tp!937262 () Bool)

(declare-fun tp!937263 () Bool)

(assert (=> b!2921020 (= e!1842781 (and tp!937262 tp!937263))))

(declare-fun b!2921019 () Bool)

(declare-fun tp!937261 () Bool)

(assert (=> b!2921019 (= e!1842781 tp!937261)))

(assert (=> b!2920460 (= tp!937197 e!1842781)))

(assert (= (and b!2920460 ((_ is ElementMatch!8993) (regOne!18498 r!17423))) b!2921017))

(assert (= (and b!2920460 ((_ is Concat!14314) (regOne!18498 r!17423))) b!2921018))

(assert (= (and b!2920460 ((_ is Star!8993) (regOne!18498 r!17423))) b!2921019))

(assert (= (and b!2920460 ((_ is Union!8993) (regOne!18498 r!17423))) b!2921020))

(declare-fun b!2921021 () Bool)

(declare-fun e!1842782 () Bool)

(assert (=> b!2921021 (= e!1842782 tp_is_empty!15549)))

(declare-fun b!2921022 () Bool)

(declare-fun tp!937269 () Bool)

(declare-fun tp!937270 () Bool)

(assert (=> b!2921022 (= e!1842782 (and tp!937269 tp!937270))))

(declare-fun b!2921024 () Bool)

(declare-fun tp!937267 () Bool)

(declare-fun tp!937268 () Bool)

(assert (=> b!2921024 (= e!1842782 (and tp!937267 tp!937268))))

(declare-fun b!2921023 () Bool)

(declare-fun tp!937266 () Bool)

(assert (=> b!2921023 (= e!1842782 tp!937266)))

(assert (=> b!2920460 (= tp!937194 e!1842782)))

(assert (= (and b!2920460 ((_ is ElementMatch!8993) (regTwo!18498 r!17423))) b!2921021))

(assert (= (and b!2920460 ((_ is Concat!14314) (regTwo!18498 r!17423))) b!2921022))

(assert (= (and b!2920460 ((_ is Star!8993) (regTwo!18498 r!17423))) b!2921023))

(assert (= (and b!2920460 ((_ is Union!8993) (regTwo!18498 r!17423))) b!2921024))

(declare-fun b!2921029 () Bool)

(declare-fun e!1842785 () Bool)

(declare-fun tp!937273 () Bool)

(assert (=> b!2921029 (= e!1842785 (and tp_is_empty!15549 tp!937273))))

(assert (=> b!2920457 (= tp!937196 e!1842785)))

(assert (= (and b!2920457 ((_ is Cons!34734) (t!233923 s!11993))) b!2921029))

(check-sat (not b!2921007) (not b!2920989) (not bm!191121) (not b!2920973) (not b!2921006) (not d!838548) (not b!2921008) (not b!2921023) (not b!2920970) (not bm!191120) (not b!2920957) (not b!2920695) (not b!2921012) (not b!2920876) (not b!2921016) (not b!2920946) (not bm!191161) (not bm!191133) (not d!838544) (not b!2920994) (not bm!191160) (not b!2920789) (not b!2921015) (not b!2920875) (not bm!191169) (not b!2921024) (not d!838552) (not b!2920688) (not b!2921011) (not b!2920781) (not bm!191159) (not b!2920990) (not b!2920974) (not bm!191140) (not bm!191164) (not b!2920993) (not b!2921020) (not d!838556) (not b!2920984) (not b!2920981) (not b!2921018) (not d!838554) (not b!2920979) (not b!2920790) tp_is_empty!15549 (not bm!191142) (not bm!191165) (not b!2920980) (not b!2920793) (not b!2920871) (not b!2920863) (not b!2920866) (not d!838546) (not b!2920872) (not b!2921014) (not b!2920794) (not bm!191168) (not b!2921010) (not b!2920784) (not b!2921022) (not b!2921029) (not b!2920859) (not b!2920927) (not d!838540) (not bm!191163) (not b!2921019) (not b!2920961) (not bm!191143) (not d!838530) (not b!2920964) (not bm!191167) (not b!2920969))
(check-sat)
