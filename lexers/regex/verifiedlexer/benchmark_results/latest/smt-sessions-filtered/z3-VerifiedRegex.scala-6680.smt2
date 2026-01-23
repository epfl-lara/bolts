; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!350630 () Bool)

(assert start!350630)

(declare-fun b!3723610 () Bool)

(declare-fun res!1513091 () Bool)

(declare-fun e!2304754 () Bool)

(assert (=> b!3723610 (=> (not res!1513091) (not e!2304754))))

(declare-datatypes ((C!21984 0))(
  ( (C!21985 (val!13040 Int)) )
))
(declare-datatypes ((Regex!10899 0))(
  ( (ElementMatch!10899 (c!644111 C!21984)) (Concat!17170 (regOne!22310 Regex!10899) (regTwo!22310 Regex!10899)) (EmptyExpr!10899) (Star!10899 (reg!11228 Regex!10899)) (EmptyLang!10899) (Union!10899 (regOne!22311 Regex!10899) (regTwo!22311 Regex!10899)) )
))
(declare-fun r!26968 () Regex!10899)

(get-info :version)

(assert (=> b!3723610 (= res!1513091 (and (not ((_ is EmptyExpr!10899) r!26968)) ((_ is EmptyLang!10899) r!26968)))))

(declare-fun b!3723611 () Bool)

(declare-fun res!1513092 () Bool)

(assert (=> b!3723611 (=> (not res!1513092) (not e!2304754))))

(declare-fun cNot!42 () C!21984)

(declare-datatypes ((List!39780 0))(
  ( (Nil!39656) (Cons!39656 (h!45076 C!21984) (t!302463 List!39780)) )
))
(declare-fun contains!7992 (List!39780 C!21984) Bool)

(declare-fun usedCharacters!1162 (Regex!10899) List!39780)

(assert (=> b!3723611 (= res!1513092 (not (contains!7992 (usedCharacters!1162 r!26968) cNot!42)))))

(declare-fun c!13797 () C!21984)

(declare-fun b!3723612 () Bool)

(declare-fun derivativeStep!3352 (Regex!10899 C!21984) Regex!10899)

(assert (=> b!3723612 (= e!2304754 (contains!7992 (usedCharacters!1162 (derivativeStep!3352 r!26968 c!13797)) cNot!42))))

(declare-fun b!3723613 () Bool)

(declare-fun e!2304753 () Bool)

(declare-fun tp_is_empty!18813 () Bool)

(assert (=> b!3723613 (= e!2304753 tp_is_empty!18813)))

(declare-fun b!3723614 () Bool)

(declare-fun tp!1132584 () Bool)

(declare-fun tp!1132582 () Bool)

(assert (=> b!3723614 (= e!2304753 (and tp!1132584 tp!1132582))))

(declare-fun b!3723615 () Bool)

(declare-fun tp!1132583 () Bool)

(declare-fun tp!1132580 () Bool)

(assert (=> b!3723615 (= e!2304753 (and tp!1132583 tp!1132580))))

(declare-fun b!3723616 () Bool)

(declare-fun tp!1132581 () Bool)

(assert (=> b!3723616 (= e!2304753 tp!1132581)))

(declare-fun res!1513090 () Bool)

(assert (=> start!350630 (=> (not res!1513090) (not e!2304754))))

(declare-fun validRegex!5006 (Regex!10899) Bool)

(assert (=> start!350630 (= res!1513090 (validRegex!5006 r!26968))))

(assert (=> start!350630 e!2304754))

(assert (=> start!350630 e!2304753))

(assert (=> start!350630 tp_is_empty!18813))

(assert (= (and start!350630 res!1513090) b!3723611))

(assert (= (and b!3723611 res!1513092) b!3723610))

(assert (= (and b!3723610 res!1513091) b!3723612))

(assert (= (and start!350630 ((_ is ElementMatch!10899) r!26968)) b!3723613))

(assert (= (and start!350630 ((_ is Concat!17170) r!26968)) b!3723614))

(assert (= (and start!350630 ((_ is Star!10899) r!26968)) b!3723616))

(assert (= (and start!350630 ((_ is Union!10899) r!26968)) b!3723615))

(declare-fun m!4226797 () Bool)

(assert (=> b!3723611 m!4226797))

(assert (=> b!3723611 m!4226797))

(declare-fun m!4226799 () Bool)

(assert (=> b!3723611 m!4226799))

(declare-fun m!4226801 () Bool)

(assert (=> b!3723612 m!4226801))

(assert (=> b!3723612 m!4226801))

(declare-fun m!4226803 () Bool)

(assert (=> b!3723612 m!4226803))

(assert (=> b!3723612 m!4226803))

(declare-fun m!4226805 () Bool)

(assert (=> b!3723612 m!4226805))

(declare-fun m!4226807 () Bool)

(assert (=> start!350630 m!4226807))

(check-sat (not b!3723612) (not b!3723611) tp_is_empty!18813 (not b!3723615) (not start!350630) (not b!3723614) (not b!3723616))
(check-sat)
(get-model)

(declare-fun d!1089597 () Bool)

(declare-fun lt!1298270 () Bool)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!5756 (List!39780) (InoxSet C!21984))

(assert (=> d!1089597 (= lt!1298270 (select (content!5756 (usedCharacters!1162 r!26968)) cNot!42))))

(declare-fun e!2304766 () Bool)

(assert (=> d!1089597 (= lt!1298270 e!2304766)))

(declare-fun res!1513103 () Bool)

(assert (=> d!1089597 (=> (not res!1513103) (not e!2304766))))

(assert (=> d!1089597 (= res!1513103 ((_ is Cons!39656) (usedCharacters!1162 r!26968)))))

(assert (=> d!1089597 (= (contains!7992 (usedCharacters!1162 r!26968) cNot!42) lt!1298270)))

(declare-fun b!3723627 () Bool)

(declare-fun e!2304765 () Bool)

(assert (=> b!3723627 (= e!2304766 e!2304765)))

(declare-fun res!1513104 () Bool)

(assert (=> b!3723627 (=> res!1513104 e!2304765)))

(assert (=> b!3723627 (= res!1513104 (= (h!45076 (usedCharacters!1162 r!26968)) cNot!42))))

(declare-fun b!3723628 () Bool)

(assert (=> b!3723628 (= e!2304765 (contains!7992 (t!302463 (usedCharacters!1162 r!26968)) cNot!42))))

(assert (= (and d!1089597 res!1513103) b!3723627))

(assert (= (and b!3723627 (not res!1513104)) b!3723628))

(assert (=> d!1089597 m!4226797))

(declare-fun m!4226815 () Bool)

(assert (=> d!1089597 m!4226815))

(declare-fun m!4226817 () Bool)

(assert (=> d!1089597 m!4226817))

(declare-fun m!4226819 () Bool)

(assert (=> b!3723628 m!4226819))

(assert (=> b!3723611 d!1089597))

(declare-fun b!3723669 () Bool)

(declare-fun e!2304789 () List!39780)

(declare-fun e!2304788 () List!39780)

(assert (=> b!3723669 (= e!2304789 e!2304788)))

(declare-fun c!644133 () Bool)

(assert (=> b!3723669 (= c!644133 ((_ is ElementMatch!10899) r!26968))))

(declare-fun call!270913 () List!39780)

(declare-fun c!644134 () Bool)

(declare-fun call!270912 () List!39780)

(declare-fun bm!270906 () Bool)

(declare-fun call!270911 () List!39780)

(declare-fun ++!9822 (List!39780 List!39780) List!39780)

(assert (=> bm!270906 (= call!270913 (++!9822 (ite c!644134 call!270912 call!270911) (ite c!644134 call!270911 call!270912)))))

(declare-fun b!3723670 () Bool)

(declare-fun e!2304790 () List!39780)

(declare-fun e!2304787 () List!39780)

(assert (=> b!3723670 (= e!2304790 e!2304787)))

(assert (=> b!3723670 (= c!644134 ((_ is Union!10899) r!26968))))

(declare-fun b!3723671 () Bool)

(assert (=> b!3723671 (= e!2304787 call!270913)))

(declare-fun b!3723672 () Bool)

(assert (=> b!3723672 (= e!2304789 Nil!39656)))

(declare-fun d!1089601 () Bool)

(declare-fun c!644135 () Bool)

(assert (=> d!1089601 (= c!644135 (or ((_ is EmptyExpr!10899) r!26968) ((_ is EmptyLang!10899) r!26968)))))

(assert (=> d!1089601 (= (usedCharacters!1162 r!26968) e!2304789)))

(declare-fun b!3723673 () Bool)

(declare-fun call!270914 () List!39780)

(assert (=> b!3723673 (= e!2304790 call!270914)))

(declare-fun bm!270907 () Bool)

(assert (=> bm!270907 (= call!270912 call!270914)))

(declare-fun bm!270908 () Bool)

(assert (=> bm!270908 (= call!270911 (usedCharacters!1162 (ite c!644134 (regTwo!22311 r!26968) (regOne!22310 r!26968))))))

(declare-fun c!644132 () Bool)

(declare-fun bm!270909 () Bool)

(assert (=> bm!270909 (= call!270914 (usedCharacters!1162 (ite c!644132 (reg!11228 r!26968) (ite c!644134 (regOne!22311 r!26968) (regTwo!22310 r!26968)))))))

(declare-fun b!3723674 () Bool)

(assert (=> b!3723674 (= e!2304787 call!270913)))

(declare-fun b!3723675 () Bool)

(assert (=> b!3723675 (= c!644132 ((_ is Star!10899) r!26968))))

(assert (=> b!3723675 (= e!2304788 e!2304790)))

(declare-fun b!3723676 () Bool)

(assert (=> b!3723676 (= e!2304788 (Cons!39656 (c!644111 r!26968) Nil!39656))))

(assert (= (and d!1089601 c!644135) b!3723672))

(assert (= (and d!1089601 (not c!644135)) b!3723669))

(assert (= (and b!3723669 c!644133) b!3723676))

(assert (= (and b!3723669 (not c!644133)) b!3723675))

(assert (= (and b!3723675 c!644132) b!3723673))

(assert (= (and b!3723675 (not c!644132)) b!3723670))

(assert (= (and b!3723670 c!644134) b!3723671))

(assert (= (and b!3723670 (not c!644134)) b!3723674))

(assert (= (or b!3723671 b!3723674) bm!270907))

(assert (= (or b!3723671 b!3723674) bm!270908))

(assert (= (or b!3723671 b!3723674) bm!270906))

(assert (= (or b!3723673 bm!270907) bm!270909))

(declare-fun m!4226833 () Bool)

(assert (=> bm!270906 m!4226833))

(declare-fun m!4226835 () Bool)

(assert (=> bm!270908 m!4226835))

(declare-fun m!4226837 () Bool)

(assert (=> bm!270909 m!4226837))

(assert (=> b!3723611 d!1089601))

(declare-fun bm!270920 () Bool)

(declare-fun call!270925 () Bool)

(declare-fun c!644155 () Bool)

(assert (=> bm!270920 (= call!270925 (validRegex!5006 (ite c!644155 (regTwo!22311 r!26968) (regTwo!22310 r!26968))))))

(declare-fun b!3723725 () Bool)

(declare-fun e!2304821 () Bool)

(declare-fun e!2304822 () Bool)

(assert (=> b!3723725 (= e!2304821 e!2304822)))

(declare-fun res!1513119 () Bool)

(declare-fun nullable!3806 (Regex!10899) Bool)

(assert (=> b!3723725 (= res!1513119 (not (nullable!3806 (reg!11228 r!26968))))))

(assert (=> b!3723725 (=> (not res!1513119) (not e!2304822))))

(declare-fun b!3723726 () Bool)

(declare-fun e!2304825 () Bool)

(assert (=> b!3723726 (= e!2304825 e!2304821)))

(declare-fun c!644154 () Bool)

(assert (=> b!3723726 (= c!644154 ((_ is Star!10899) r!26968))))

(declare-fun b!3723727 () Bool)

(declare-fun res!1513120 () Bool)

(declare-fun e!2304827 () Bool)

(assert (=> b!3723727 (=> (not res!1513120) (not e!2304827))))

(declare-fun call!270926 () Bool)

(assert (=> b!3723727 (= res!1513120 call!270926)))

(declare-fun e!2304823 () Bool)

(assert (=> b!3723727 (= e!2304823 e!2304827)))

(declare-fun b!3723728 () Bool)

(declare-fun call!270927 () Bool)

(assert (=> b!3723728 (= e!2304822 call!270927)))

(declare-fun b!3723729 () Bool)

(assert (=> b!3723729 (= e!2304827 call!270925)))

(declare-fun b!3723730 () Bool)

(declare-fun e!2304824 () Bool)

(declare-fun e!2304826 () Bool)

(assert (=> b!3723730 (= e!2304824 e!2304826)))

(declare-fun res!1513118 () Bool)

(assert (=> b!3723730 (=> (not res!1513118) (not e!2304826))))

(assert (=> b!3723730 (= res!1513118 call!270926)))

(declare-fun bm!270921 () Bool)

(assert (=> bm!270921 (= call!270927 (validRegex!5006 (ite c!644154 (reg!11228 r!26968) (ite c!644155 (regOne!22311 r!26968) (regOne!22310 r!26968)))))))

(declare-fun d!1089607 () Bool)

(declare-fun res!1513117 () Bool)

(assert (=> d!1089607 (=> res!1513117 e!2304825)))

(assert (=> d!1089607 (= res!1513117 ((_ is ElementMatch!10899) r!26968))))

(assert (=> d!1089607 (= (validRegex!5006 r!26968) e!2304825)))

(declare-fun b!3723731 () Bool)

(declare-fun res!1513121 () Bool)

(assert (=> b!3723731 (=> res!1513121 e!2304824)))

(assert (=> b!3723731 (= res!1513121 (not ((_ is Concat!17170) r!26968)))))

(assert (=> b!3723731 (= e!2304823 e!2304824)))

(declare-fun bm!270922 () Bool)

(assert (=> bm!270922 (= call!270926 call!270927)))

(declare-fun b!3723732 () Bool)

(assert (=> b!3723732 (= e!2304826 call!270925)))

(declare-fun b!3723733 () Bool)

(assert (=> b!3723733 (= e!2304821 e!2304823)))

(assert (=> b!3723733 (= c!644155 ((_ is Union!10899) r!26968))))

(assert (= (and d!1089607 (not res!1513117)) b!3723726))

(assert (= (and b!3723726 c!644154) b!3723725))

(assert (= (and b!3723726 (not c!644154)) b!3723733))

(assert (= (and b!3723725 res!1513119) b!3723728))

(assert (= (and b!3723733 c!644155) b!3723727))

(assert (= (and b!3723733 (not c!644155)) b!3723731))

(assert (= (and b!3723727 res!1513120) b!3723729))

(assert (= (and b!3723731 (not res!1513121)) b!3723730))

(assert (= (and b!3723730 res!1513118) b!3723732))

(assert (= (or b!3723729 b!3723732) bm!270920))

(assert (= (or b!3723727 b!3723730) bm!270922))

(assert (= (or b!3723728 bm!270922) bm!270921))

(declare-fun m!4226845 () Bool)

(assert (=> bm!270920 m!4226845))

(declare-fun m!4226847 () Bool)

(assert (=> b!3723725 m!4226847))

(declare-fun m!4226849 () Bool)

(assert (=> bm!270921 m!4226849))

(assert (=> start!350630 d!1089607))

(declare-fun lt!1298274 () Bool)

(declare-fun d!1089611 () Bool)

(assert (=> d!1089611 (= lt!1298274 (select (content!5756 (usedCharacters!1162 (derivativeStep!3352 r!26968 c!13797))) cNot!42))))

(declare-fun e!2304829 () Bool)

(assert (=> d!1089611 (= lt!1298274 e!2304829)))

(declare-fun res!1513122 () Bool)

(assert (=> d!1089611 (=> (not res!1513122) (not e!2304829))))

(assert (=> d!1089611 (= res!1513122 ((_ is Cons!39656) (usedCharacters!1162 (derivativeStep!3352 r!26968 c!13797))))))

(assert (=> d!1089611 (= (contains!7992 (usedCharacters!1162 (derivativeStep!3352 r!26968 c!13797)) cNot!42) lt!1298274)))

(declare-fun b!3723734 () Bool)

(declare-fun e!2304828 () Bool)

(assert (=> b!3723734 (= e!2304829 e!2304828)))

(declare-fun res!1513123 () Bool)

(assert (=> b!3723734 (=> res!1513123 e!2304828)))

(assert (=> b!3723734 (= res!1513123 (= (h!45076 (usedCharacters!1162 (derivativeStep!3352 r!26968 c!13797))) cNot!42))))

(declare-fun b!3723735 () Bool)

(assert (=> b!3723735 (= e!2304828 (contains!7992 (t!302463 (usedCharacters!1162 (derivativeStep!3352 r!26968 c!13797))) cNot!42))))

(assert (= (and d!1089611 res!1513122) b!3723734))

(assert (= (and b!3723734 (not res!1513123)) b!3723735))

(assert (=> d!1089611 m!4226803))

(declare-fun m!4226851 () Bool)

(assert (=> d!1089611 m!4226851))

(declare-fun m!4226853 () Bool)

(assert (=> d!1089611 m!4226853))

(declare-fun m!4226855 () Bool)

(assert (=> b!3723735 m!4226855))

(assert (=> b!3723612 d!1089611))

(declare-fun b!3723736 () Bool)

(declare-fun e!2304832 () List!39780)

(declare-fun e!2304831 () List!39780)

(assert (=> b!3723736 (= e!2304832 e!2304831)))

(declare-fun c!644157 () Bool)

(assert (=> b!3723736 (= c!644157 ((_ is ElementMatch!10899) (derivativeStep!3352 r!26968 c!13797)))))

(declare-fun call!270935 () List!39780)

(declare-fun call!270934 () List!39780)

(declare-fun c!644158 () Bool)

(declare-fun call!270936 () List!39780)

(declare-fun bm!270927 () Bool)

(assert (=> bm!270927 (= call!270936 (++!9822 (ite c!644158 call!270935 call!270934) (ite c!644158 call!270934 call!270935)))))

(declare-fun b!3723737 () Bool)

(declare-fun e!2304833 () List!39780)

(declare-fun e!2304830 () List!39780)

(assert (=> b!3723737 (= e!2304833 e!2304830)))

(assert (=> b!3723737 (= c!644158 ((_ is Union!10899) (derivativeStep!3352 r!26968 c!13797)))))

(declare-fun b!3723738 () Bool)

(assert (=> b!3723738 (= e!2304830 call!270936)))

(declare-fun b!3723739 () Bool)

(assert (=> b!3723739 (= e!2304832 Nil!39656)))

(declare-fun d!1089613 () Bool)

(declare-fun c!644159 () Bool)

(assert (=> d!1089613 (= c!644159 (or ((_ is EmptyExpr!10899) (derivativeStep!3352 r!26968 c!13797)) ((_ is EmptyLang!10899) (derivativeStep!3352 r!26968 c!13797))))))

(assert (=> d!1089613 (= (usedCharacters!1162 (derivativeStep!3352 r!26968 c!13797)) e!2304832)))

(declare-fun b!3723740 () Bool)

(declare-fun call!270937 () List!39780)

(assert (=> b!3723740 (= e!2304833 call!270937)))

(declare-fun bm!270928 () Bool)

(assert (=> bm!270928 (= call!270935 call!270937)))

(declare-fun bm!270929 () Bool)

(assert (=> bm!270929 (= call!270934 (usedCharacters!1162 (ite c!644158 (regTwo!22311 (derivativeStep!3352 r!26968 c!13797)) (regOne!22310 (derivativeStep!3352 r!26968 c!13797)))))))

(declare-fun c!644156 () Bool)

(declare-fun bm!270930 () Bool)

(assert (=> bm!270930 (= call!270937 (usedCharacters!1162 (ite c!644156 (reg!11228 (derivativeStep!3352 r!26968 c!13797)) (ite c!644158 (regOne!22311 (derivativeStep!3352 r!26968 c!13797)) (regTwo!22310 (derivativeStep!3352 r!26968 c!13797))))))))

(declare-fun b!3723741 () Bool)

(assert (=> b!3723741 (= e!2304830 call!270936)))

(declare-fun b!3723742 () Bool)

(assert (=> b!3723742 (= c!644156 ((_ is Star!10899) (derivativeStep!3352 r!26968 c!13797)))))

(assert (=> b!3723742 (= e!2304831 e!2304833)))

(declare-fun b!3723743 () Bool)

(assert (=> b!3723743 (= e!2304831 (Cons!39656 (c!644111 (derivativeStep!3352 r!26968 c!13797)) Nil!39656))))

(assert (= (and d!1089613 c!644159) b!3723739))

(assert (= (and d!1089613 (not c!644159)) b!3723736))

(assert (= (and b!3723736 c!644157) b!3723743))

(assert (= (and b!3723736 (not c!644157)) b!3723742))

(assert (= (and b!3723742 c!644156) b!3723740))

(assert (= (and b!3723742 (not c!644156)) b!3723737))

(assert (= (and b!3723737 c!644158) b!3723738))

(assert (= (and b!3723737 (not c!644158)) b!3723741))

(assert (= (or b!3723738 b!3723741) bm!270928))

(assert (= (or b!3723738 b!3723741) bm!270929))

(assert (= (or b!3723738 b!3723741) bm!270927))

(assert (= (or b!3723740 bm!270928) bm!270930))

(declare-fun m!4226857 () Bool)

(assert (=> bm!270927 m!4226857))

(declare-fun m!4226859 () Bool)

(assert (=> bm!270929 m!4226859))

(declare-fun m!4226861 () Bool)

(assert (=> bm!270930 m!4226861))

(assert (=> b!3723612 d!1089613))

(declare-fun b!3723801 () Bool)

(declare-fun e!2304873 () Regex!10899)

(declare-fun e!2304871 () Regex!10899)

(assert (=> b!3723801 (= e!2304873 e!2304871)))

(declare-fun c!644181 () Bool)

(assert (=> b!3723801 (= c!644181 ((_ is ElementMatch!10899) r!26968))))

(declare-fun b!3723802 () Bool)

(declare-fun e!2304872 () Regex!10899)

(declare-fun call!270961 () Regex!10899)

(assert (=> b!3723802 (= e!2304872 (Union!10899 (Concat!17170 call!270961 (regTwo!22310 r!26968)) EmptyLang!10899))))

(declare-fun b!3723803 () Bool)

(declare-fun e!2304870 () Regex!10899)

(declare-fun call!270962 () Regex!10899)

(declare-fun call!270964 () Regex!10899)

(assert (=> b!3723803 (= e!2304870 (Union!10899 call!270962 call!270964))))

(declare-fun b!3723804 () Bool)

(assert (=> b!3723804 (= e!2304873 EmptyLang!10899)))

(declare-fun b!3723805 () Bool)

(declare-fun c!644183 () Bool)

(assert (=> b!3723805 (= c!644183 (nullable!3806 (regOne!22310 r!26968)))))

(declare-fun e!2304874 () Regex!10899)

(assert (=> b!3723805 (= e!2304874 e!2304872)))

(declare-fun b!3723806 () Bool)

(declare-fun call!270963 () Regex!10899)

(assert (=> b!3723806 (= e!2304874 (Concat!17170 call!270963 r!26968))))

(declare-fun b!3723807 () Bool)

(assert (=> b!3723807 (= e!2304872 (Union!10899 (Concat!17170 call!270964 (regTwo!22310 r!26968)) call!270961))))

(declare-fun b!3723808 () Bool)

(declare-fun c!644185 () Bool)

(assert (=> b!3723808 (= c!644185 ((_ is Union!10899) r!26968))))

(assert (=> b!3723808 (= e!2304871 e!2304870)))

(declare-fun c!644184 () Bool)

(declare-fun bm!270957 () Bool)

(assert (=> bm!270957 (= call!270962 (derivativeStep!3352 (ite c!644185 (regOne!22311 r!26968) (ite c!644184 (reg!11228 r!26968) (ite c!644183 (regTwo!22310 r!26968) (regOne!22310 r!26968)))) c!13797))))

(declare-fun b!3723809 () Bool)

(assert (=> b!3723809 (= e!2304870 e!2304874)))

(assert (=> b!3723809 (= c!644184 ((_ is Star!10899) r!26968))))

(declare-fun bm!270958 () Bool)

(assert (=> bm!270958 (= call!270961 call!270963)))

(declare-fun b!3723810 () Bool)

(assert (=> b!3723810 (= e!2304871 (ite (= c!13797 (c!644111 r!26968)) EmptyExpr!10899 EmptyLang!10899))))

(declare-fun bm!270959 () Bool)

(assert (=> bm!270959 (= call!270963 call!270962)))

(declare-fun d!1089615 () Bool)

(declare-fun lt!1298278 () Regex!10899)

(assert (=> d!1089615 (validRegex!5006 lt!1298278)))

(assert (=> d!1089615 (= lt!1298278 e!2304873)))

(declare-fun c!644182 () Bool)

(assert (=> d!1089615 (= c!644182 (or ((_ is EmptyExpr!10899) r!26968) ((_ is EmptyLang!10899) r!26968)))))

(assert (=> d!1089615 (validRegex!5006 r!26968)))

(assert (=> d!1089615 (= (derivativeStep!3352 r!26968 c!13797) lt!1298278)))

(declare-fun bm!270956 () Bool)

(assert (=> bm!270956 (= call!270964 (derivativeStep!3352 (ite c!644185 (regTwo!22311 r!26968) (regOne!22310 r!26968)) c!13797))))

(assert (= (and d!1089615 c!644182) b!3723804))

(assert (= (and d!1089615 (not c!644182)) b!3723801))

(assert (= (and b!3723801 c!644181) b!3723810))

(assert (= (and b!3723801 (not c!644181)) b!3723808))

(assert (= (and b!3723808 c!644185) b!3723803))

(assert (= (and b!3723808 (not c!644185)) b!3723809))

(assert (= (and b!3723809 c!644184) b!3723806))

(assert (= (and b!3723809 (not c!644184)) b!3723805))

(assert (= (and b!3723805 c!644183) b!3723807))

(assert (= (and b!3723805 (not c!644183)) b!3723802))

(assert (= (or b!3723807 b!3723802) bm!270958))

(assert (= (or b!3723806 bm!270958) bm!270959))

(assert (= (or b!3723803 bm!270959) bm!270957))

(assert (= (or b!3723803 b!3723807) bm!270956))

(declare-fun m!4226877 () Bool)

(assert (=> b!3723805 m!4226877))

(declare-fun m!4226879 () Bool)

(assert (=> bm!270957 m!4226879))

(declare-fun m!4226881 () Bool)

(assert (=> d!1089615 m!4226881))

(assert (=> d!1089615 m!4226807))

(declare-fun m!4226883 () Bool)

(assert (=> bm!270956 m!4226883))

(assert (=> b!3723612 d!1089615))

(declare-fun b!3723842 () Bool)

(declare-fun e!2304881 () Bool)

(declare-fun tp!1132619 () Bool)

(declare-fun tp!1132617 () Bool)

(assert (=> b!3723842 (= e!2304881 (and tp!1132619 tp!1132617))))

(assert (=> b!3723616 (= tp!1132581 e!2304881)))

(declare-fun b!3723841 () Bool)

(declare-fun tp!1132618 () Bool)

(assert (=> b!3723841 (= e!2304881 tp!1132618)))

(declare-fun b!3723840 () Bool)

(declare-fun tp!1132616 () Bool)

(declare-fun tp!1132615 () Bool)

(assert (=> b!3723840 (= e!2304881 (and tp!1132616 tp!1132615))))

(declare-fun b!3723839 () Bool)

(assert (=> b!3723839 (= e!2304881 tp_is_empty!18813)))

(assert (= (and b!3723616 ((_ is ElementMatch!10899) (reg!11228 r!26968))) b!3723839))

(assert (= (and b!3723616 ((_ is Concat!17170) (reg!11228 r!26968))) b!3723840))

(assert (= (and b!3723616 ((_ is Star!10899) (reg!11228 r!26968))) b!3723841))

(assert (= (and b!3723616 ((_ is Union!10899) (reg!11228 r!26968))) b!3723842))

(declare-fun b!3723850 () Bool)

(declare-fun e!2304883 () Bool)

(declare-fun tp!1132629 () Bool)

(declare-fun tp!1132627 () Bool)

(assert (=> b!3723850 (= e!2304883 (and tp!1132629 tp!1132627))))

(assert (=> b!3723614 (= tp!1132584 e!2304883)))

(declare-fun b!3723849 () Bool)

(declare-fun tp!1132628 () Bool)

(assert (=> b!3723849 (= e!2304883 tp!1132628)))

(declare-fun b!3723848 () Bool)

(declare-fun tp!1132626 () Bool)

(declare-fun tp!1132625 () Bool)

(assert (=> b!3723848 (= e!2304883 (and tp!1132626 tp!1132625))))

(declare-fun b!3723847 () Bool)

(assert (=> b!3723847 (= e!2304883 tp_is_empty!18813)))

(assert (= (and b!3723614 ((_ is ElementMatch!10899) (regOne!22310 r!26968))) b!3723847))

(assert (= (and b!3723614 ((_ is Concat!17170) (regOne!22310 r!26968))) b!3723848))

(assert (= (and b!3723614 ((_ is Star!10899) (regOne!22310 r!26968))) b!3723849))

(assert (= (and b!3723614 ((_ is Union!10899) (regOne!22310 r!26968))) b!3723850))

(declare-fun b!3723861 () Bool)

(declare-fun e!2304885 () Bool)

(declare-fun tp!1132643 () Bool)

(declare-fun tp!1132639 () Bool)

(assert (=> b!3723861 (= e!2304885 (and tp!1132643 tp!1132639))))

(assert (=> b!3723614 (= tp!1132582 e!2304885)))

(declare-fun b!3723859 () Bool)

(declare-fun tp!1132641 () Bool)

(assert (=> b!3723859 (= e!2304885 tp!1132641)))

(declare-fun b!3723857 () Bool)

(declare-fun tp!1132637 () Bool)

(declare-fun tp!1132635 () Bool)

(assert (=> b!3723857 (= e!2304885 (and tp!1132637 tp!1132635))))

(declare-fun b!3723855 () Bool)

(assert (=> b!3723855 (= e!2304885 tp_is_empty!18813)))

(assert (= (and b!3723614 ((_ is ElementMatch!10899) (regTwo!22310 r!26968))) b!3723855))

(assert (= (and b!3723614 ((_ is Concat!17170) (regTwo!22310 r!26968))) b!3723857))

(assert (= (and b!3723614 ((_ is Star!10899) (regTwo!22310 r!26968))) b!3723859))

(assert (= (and b!3723614 ((_ is Union!10899) (regTwo!22310 r!26968))) b!3723861))

(declare-fun b!3723866 () Bool)

(declare-fun e!2304887 () Bool)

(declare-fun tp!1132649 () Bool)

(declare-fun tp!1132647 () Bool)

(assert (=> b!3723866 (= e!2304887 (and tp!1132649 tp!1132647))))

(assert (=> b!3723615 (= tp!1132583 e!2304887)))

(declare-fun b!3723865 () Bool)

(declare-fun tp!1132648 () Bool)

(assert (=> b!3723865 (= e!2304887 tp!1132648)))

(declare-fun b!3723864 () Bool)

(declare-fun tp!1132646 () Bool)

(declare-fun tp!1132645 () Bool)

(assert (=> b!3723864 (= e!2304887 (and tp!1132646 tp!1132645))))

(declare-fun b!3723863 () Bool)

(assert (=> b!3723863 (= e!2304887 tp_is_empty!18813)))

(assert (= (and b!3723615 ((_ is ElementMatch!10899) (regOne!22311 r!26968))) b!3723863))

(assert (= (and b!3723615 ((_ is Concat!17170) (regOne!22311 r!26968))) b!3723864))

(assert (= (and b!3723615 ((_ is Star!10899) (regOne!22311 r!26968))) b!3723865))

(assert (= (and b!3723615 ((_ is Union!10899) (regOne!22311 r!26968))) b!3723866))

(declare-fun b!3723870 () Bool)

(declare-fun e!2304888 () Bool)

(declare-fun tp!1132654 () Bool)

(declare-fun tp!1132652 () Bool)

(assert (=> b!3723870 (= e!2304888 (and tp!1132654 tp!1132652))))

(assert (=> b!3723615 (= tp!1132580 e!2304888)))

(declare-fun b!3723869 () Bool)

(declare-fun tp!1132653 () Bool)

(assert (=> b!3723869 (= e!2304888 tp!1132653)))

(declare-fun b!3723868 () Bool)

(declare-fun tp!1132651 () Bool)

(declare-fun tp!1132650 () Bool)

(assert (=> b!3723868 (= e!2304888 (and tp!1132651 tp!1132650))))

(declare-fun b!3723867 () Bool)

(assert (=> b!3723867 (= e!2304888 tp_is_empty!18813)))

(assert (= (and b!3723615 ((_ is ElementMatch!10899) (regTwo!22311 r!26968))) b!3723867))

(assert (= (and b!3723615 ((_ is Concat!17170) (regTwo!22311 r!26968))) b!3723868))

(assert (= (and b!3723615 ((_ is Star!10899) (regTwo!22311 r!26968))) b!3723869))

(assert (= (and b!3723615 ((_ is Union!10899) (regTwo!22311 r!26968))) b!3723870))

(check-sat (not b!3723859) (not b!3723842) (not bm!270927) tp_is_empty!18813 (not bm!270909) (not bm!270921) (not bm!270920) (not b!3723865) (not b!3723735) (not d!1089615) (not b!3723841) (not bm!270957) (not b!3723840) (not b!3723848) (not b!3723869) (not d!1089611) (not b!3723868) (not b!3723850) (not bm!270908) (not b!3723864) (not b!3723849) (not bm!270956) (not bm!270906) (not b!3723857) (not b!3723870) (not bm!270930) (not d!1089597) (not bm!270929) (not b!3723725) (not b!3723866) (not b!3723628) (not b!3723861) (not b!3723805))
(check-sat)
