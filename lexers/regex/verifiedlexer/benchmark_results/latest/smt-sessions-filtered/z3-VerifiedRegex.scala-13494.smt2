; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!728100 () Bool)

(assert start!728100)

(declare-fun b!7521716 () Bool)

(declare-fun res!3015045 () Bool)

(declare-fun e!4483827 () Bool)

(assert (=> b!7521716 (=> (not res!3015045) (not e!4483827))))

(declare-fun e!4483826 () Bool)

(assert (=> b!7521716 (= res!3015045 e!4483826)))

(declare-fun res!3015047 () Bool)

(assert (=> b!7521716 (=> res!3015047 e!4483826)))

(declare-datatypes ((C!39892 0))(
  ( (C!39893 (val!30386 Int)) )
))
(declare-datatypes ((Regex!19783 0))(
  ( (ElementMatch!19783 (c!1389644 C!39892)) (Concat!28628 (regOne!40078 Regex!19783) (regTwo!40078 Regex!19783)) (EmptyExpr!19783) (Star!19783 (reg!20112 Regex!19783)) (EmptyLang!19783) (Union!19783 (regOne!40079 Regex!19783) (regTwo!40079 Regex!19783)) )
))
(declare-fun expr!41 () Regex!19783)

(get-info :version)

(assert (=> b!7521716 (= res!3015047 (not ((_ is Concat!28628) expr!41)))))

(declare-fun b!7521717 () Bool)

(declare-fun e!4483825 () Bool)

(declare-fun tp!2184938 () Bool)

(declare-fun tp!2184936 () Bool)

(assert (=> b!7521717 (= e!4483825 (and tp!2184938 tp!2184936))))

(declare-fun b!7521718 () Bool)

(declare-fun tp!2184937 () Bool)

(assert (=> b!7521718 (= e!4483825 tp!2184937)))

(declare-fun b!7521719 () Bool)

(declare-fun validRegex!10211 (Regex!19783) Bool)

(assert (=> b!7521719 (= e!4483827 (not (validRegex!10211 (regOne!40078 expr!41))))))

(declare-fun b!7521720 () Bool)

(declare-fun res!3015048 () Bool)

(assert (=> b!7521720 (=> (not res!3015048) (not e!4483827))))

(declare-fun a!1106 () C!39892)

(assert (=> b!7521720 (= res!3015048 (and (or (not ((_ is ElementMatch!19783) expr!41)) (not (= (c!1389644 expr!41) a!1106))) (not ((_ is Union!19783) expr!41))))))

(declare-fun b!7521721 () Bool)

(declare-fun res!3015046 () Bool)

(assert (=> b!7521721 (=> (not res!3015046) (not e!4483827))))

(assert (=> b!7521721 (= res!3015046 ((_ is Concat!28628) expr!41))))

(declare-fun b!7521722 () Bool)

(declare-fun tp!2184939 () Bool)

(declare-fun tp!2184935 () Bool)

(assert (=> b!7521722 (= e!4483825 (and tp!2184939 tp!2184935))))

(declare-fun b!7521723 () Bool)

(declare-fun tp_is_empty!49921 () Bool)

(assert (=> b!7521723 (= e!4483825 tp_is_empty!49921)))

(declare-fun b!7521715 () Bool)

(declare-fun nullable!8617 (Regex!19783) Bool)

(assert (=> b!7521715 (= e!4483826 (not (nullable!8617 (regOne!40078 expr!41))))))

(declare-fun res!3015044 () Bool)

(assert (=> start!728100 (=> (not res!3015044) (not e!4483827))))

(assert (=> start!728100 (= res!3015044 (validRegex!10211 expr!41))))

(assert (=> start!728100 e!4483827))

(assert (=> start!728100 e!4483825))

(assert (=> start!728100 tp_is_empty!49921))

(assert (= (and start!728100 res!3015044) b!7521720))

(assert (= (and b!7521720 res!3015048) b!7521716))

(assert (= (and b!7521716 (not res!3015047)) b!7521715))

(assert (= (and b!7521716 res!3015045) b!7521721))

(assert (= (and b!7521721 res!3015046) b!7521719))

(assert (= (and start!728100 ((_ is ElementMatch!19783) expr!41)) b!7521723))

(assert (= (and start!728100 ((_ is Concat!28628) expr!41)) b!7521717))

(assert (= (and start!728100 ((_ is Star!19783) expr!41)) b!7521718))

(assert (= (and start!728100 ((_ is Union!19783) expr!41)) b!7521722))

(declare-fun m!8100428 () Bool)

(assert (=> b!7521719 m!8100428))

(declare-fun m!8100430 () Bool)

(assert (=> b!7521715 m!8100430))

(declare-fun m!8100432 () Bool)

(assert (=> start!728100 m!8100432))

(check-sat (not b!7521717) tp_is_empty!49921 (not b!7521722) (not start!728100) (not b!7521719) (not b!7521715) (not b!7521718))
(check-sat)
(get-model)

(declare-fun d!2309063 () Bool)

(declare-fun nullableFct!3448 (Regex!19783) Bool)

(assert (=> d!2309063 (= (nullable!8617 (regOne!40078 expr!41)) (nullableFct!3448 (regOne!40078 expr!41)))))

(declare-fun bs!1939673 () Bool)

(assert (= bs!1939673 d!2309063))

(declare-fun m!8100434 () Bool)

(assert (=> bs!1939673 m!8100434))

(assert (=> b!7521715 d!2309063))

(declare-fun b!7521753 () Bool)

(declare-fun res!3015066 () Bool)

(declare-fun e!4483851 () Bool)

(assert (=> b!7521753 (=> res!3015066 e!4483851)))

(assert (=> b!7521753 (= res!3015066 (not ((_ is Concat!28628) expr!41)))))

(declare-fun e!4483850 () Bool)

(assert (=> b!7521753 (= e!4483850 e!4483851)))

(declare-fun b!7521755 () Bool)

(declare-fun e!4483855 () Bool)

(declare-fun e!4483853 () Bool)

(assert (=> b!7521755 (= e!4483855 e!4483853)))

(declare-fun c!1389652 () Bool)

(assert (=> b!7521755 (= c!1389652 ((_ is Star!19783) expr!41))))

(declare-fun b!7521756 () Bool)

(declare-fun res!3015067 () Bool)

(declare-fun e!4483848 () Bool)

(assert (=> b!7521756 (=> (not res!3015067) (not e!4483848))))

(declare-fun call!689751 () Bool)

(assert (=> b!7521756 (= res!3015067 call!689751)))

(assert (=> b!7521756 (= e!4483850 e!4483848)))

(declare-fun d!2309065 () Bool)

(declare-fun res!3015064 () Bool)

(assert (=> d!2309065 (=> res!3015064 e!4483855)))

(assert (=> d!2309065 (= res!3015064 ((_ is ElementMatch!19783) expr!41))))

(assert (=> d!2309065 (= (validRegex!10211 expr!41) e!4483855)))

(declare-fun b!7521757 () Bool)

(declare-fun e!4483849 () Bool)

(assert (=> b!7521757 (= e!4483849 call!689751)))

(declare-fun bm!689746 () Bool)

(declare-fun call!689752 () Bool)

(assert (=> bm!689746 (= call!689751 call!689752)))

(declare-fun bm!689747 () Bool)

(declare-fun c!1389651 () Bool)

(assert (=> bm!689747 (= call!689752 (validRegex!10211 (ite c!1389652 (reg!20112 expr!41) (ite c!1389651 (regOne!40079 expr!41) (regTwo!40078 expr!41)))))))

(declare-fun b!7521758 () Bool)

(declare-fun e!4483852 () Bool)

(assert (=> b!7521758 (= e!4483852 call!689752)))

(declare-fun bm!689748 () Bool)

(declare-fun call!689753 () Bool)

(assert (=> bm!689748 (= call!689753 (validRegex!10211 (ite c!1389651 (regTwo!40079 expr!41) (regOne!40078 expr!41))))))

(declare-fun b!7521759 () Bool)

(assert (=> b!7521759 (= e!4483853 e!4483850)))

(assert (=> b!7521759 (= c!1389651 ((_ is Union!19783) expr!41))))

(declare-fun b!7521760 () Bool)

(assert (=> b!7521760 (= e!4483851 e!4483849)))

(declare-fun res!3015063 () Bool)

(assert (=> b!7521760 (=> (not res!3015063) (not e!4483849))))

(assert (=> b!7521760 (= res!3015063 call!689753)))

(declare-fun b!7521761 () Bool)

(assert (=> b!7521761 (= e!4483848 call!689753)))

(declare-fun b!7521762 () Bool)

(assert (=> b!7521762 (= e!4483853 e!4483852)))

(declare-fun res!3015065 () Bool)

(assert (=> b!7521762 (= res!3015065 (not (nullable!8617 (reg!20112 expr!41))))))

(assert (=> b!7521762 (=> (not res!3015065) (not e!4483852))))

(assert (= (and d!2309065 (not res!3015064)) b!7521755))

(assert (= (and b!7521755 c!1389652) b!7521762))

(assert (= (and b!7521755 (not c!1389652)) b!7521759))

(assert (= (and b!7521762 res!3015065) b!7521758))

(assert (= (and b!7521759 c!1389651) b!7521756))

(assert (= (and b!7521759 (not c!1389651)) b!7521753))

(assert (= (and b!7521756 res!3015067) b!7521761))

(assert (= (and b!7521753 (not res!3015066)) b!7521760))

(assert (= (and b!7521760 res!3015063) b!7521757))

(assert (= (or b!7521761 b!7521760) bm!689748))

(assert (= (or b!7521756 b!7521757) bm!689746))

(assert (= (or b!7521758 bm!689746) bm!689747))

(declare-fun m!8100436 () Bool)

(assert (=> bm!689747 m!8100436))

(declare-fun m!8100438 () Bool)

(assert (=> bm!689748 m!8100438))

(declare-fun m!8100440 () Bool)

(assert (=> b!7521762 m!8100440))

(assert (=> start!728100 d!2309065))

(declare-fun b!7521769 () Bool)

(declare-fun res!3015077 () Bool)

(declare-fun e!4483866 () Bool)

(assert (=> b!7521769 (=> res!3015077 e!4483866)))

(assert (=> b!7521769 (= res!3015077 (not ((_ is Concat!28628) (regOne!40078 expr!41))))))

(declare-fun e!4483865 () Bool)

(assert (=> b!7521769 (= e!4483865 e!4483866)))

(declare-fun b!7521770 () Bool)

(declare-fun e!4483869 () Bool)

(declare-fun e!4483868 () Bool)

(assert (=> b!7521770 (= e!4483869 e!4483868)))

(declare-fun c!1389656 () Bool)

(assert (=> b!7521770 (= c!1389656 ((_ is Star!19783) (regOne!40078 expr!41)))))

(declare-fun b!7521771 () Bool)

(declare-fun res!3015078 () Bool)

(declare-fun e!4483863 () Bool)

(assert (=> b!7521771 (=> (not res!3015078) (not e!4483863))))

(declare-fun call!689754 () Bool)

(assert (=> b!7521771 (= res!3015078 call!689754)))

(assert (=> b!7521771 (= e!4483865 e!4483863)))

(declare-fun d!2309069 () Bool)

(declare-fun res!3015075 () Bool)

(assert (=> d!2309069 (=> res!3015075 e!4483869)))

(assert (=> d!2309069 (= res!3015075 ((_ is ElementMatch!19783) (regOne!40078 expr!41)))))

(assert (=> d!2309069 (= (validRegex!10211 (regOne!40078 expr!41)) e!4483869)))

(declare-fun b!7521772 () Bool)

(declare-fun e!4483864 () Bool)

(assert (=> b!7521772 (= e!4483864 call!689754)))

(declare-fun bm!689749 () Bool)

(declare-fun call!689755 () Bool)

(assert (=> bm!689749 (= call!689754 call!689755)))

(declare-fun c!1389655 () Bool)

(declare-fun bm!689750 () Bool)

(assert (=> bm!689750 (= call!689755 (validRegex!10211 (ite c!1389656 (reg!20112 (regOne!40078 expr!41)) (ite c!1389655 (regOne!40079 (regOne!40078 expr!41)) (regTwo!40078 (regOne!40078 expr!41))))))))

(declare-fun b!7521773 () Bool)

(declare-fun e!4483867 () Bool)

(assert (=> b!7521773 (= e!4483867 call!689755)))

(declare-fun bm!689751 () Bool)

(declare-fun call!689756 () Bool)

(assert (=> bm!689751 (= call!689756 (validRegex!10211 (ite c!1389655 (regTwo!40079 (regOne!40078 expr!41)) (regOne!40078 (regOne!40078 expr!41)))))))

(declare-fun b!7521774 () Bool)

(assert (=> b!7521774 (= e!4483868 e!4483865)))

(assert (=> b!7521774 (= c!1389655 ((_ is Union!19783) (regOne!40078 expr!41)))))

(declare-fun b!7521775 () Bool)

(assert (=> b!7521775 (= e!4483866 e!4483864)))

(declare-fun res!3015074 () Bool)

(assert (=> b!7521775 (=> (not res!3015074) (not e!4483864))))

(assert (=> b!7521775 (= res!3015074 call!689756)))

(declare-fun b!7521776 () Bool)

(assert (=> b!7521776 (= e!4483863 call!689756)))

(declare-fun b!7521777 () Bool)

(assert (=> b!7521777 (= e!4483868 e!4483867)))

(declare-fun res!3015076 () Bool)

(assert (=> b!7521777 (= res!3015076 (not (nullable!8617 (reg!20112 (regOne!40078 expr!41)))))))

(assert (=> b!7521777 (=> (not res!3015076) (not e!4483867))))

(assert (= (and d!2309069 (not res!3015075)) b!7521770))

(assert (= (and b!7521770 c!1389656) b!7521777))

(assert (= (and b!7521770 (not c!1389656)) b!7521774))

(assert (= (and b!7521777 res!3015076) b!7521773))

(assert (= (and b!7521774 c!1389655) b!7521771))

(assert (= (and b!7521774 (not c!1389655)) b!7521769))

(assert (= (and b!7521771 res!3015078) b!7521776))

(assert (= (and b!7521769 (not res!3015077)) b!7521775))

(assert (= (and b!7521775 res!3015074) b!7521772))

(assert (= (or b!7521776 b!7521775) bm!689751))

(assert (= (or b!7521771 b!7521772) bm!689749))

(assert (= (or b!7521773 bm!689749) bm!689750))

(declare-fun m!8100442 () Bool)

(assert (=> bm!689750 m!8100442))

(declare-fun m!8100444 () Bool)

(assert (=> bm!689751 m!8100444))

(declare-fun m!8100446 () Bool)

(assert (=> b!7521777 m!8100446))

(assert (=> b!7521719 d!2309069))

(declare-fun b!7521791 () Bool)

(declare-fun e!4483872 () Bool)

(declare-fun tp!2184954 () Bool)

(declare-fun tp!2184952 () Bool)

(assert (=> b!7521791 (= e!4483872 (and tp!2184954 tp!2184952))))

(declare-fun b!7521790 () Bool)

(declare-fun tp!2184953 () Bool)

(assert (=> b!7521790 (= e!4483872 tp!2184953)))

(assert (=> b!7521722 (= tp!2184939 e!4483872)))

(declare-fun b!7521788 () Bool)

(assert (=> b!7521788 (= e!4483872 tp_is_empty!49921)))

(declare-fun b!7521789 () Bool)

(declare-fun tp!2184951 () Bool)

(declare-fun tp!2184950 () Bool)

(assert (=> b!7521789 (= e!4483872 (and tp!2184951 tp!2184950))))

(assert (= (and b!7521722 ((_ is ElementMatch!19783) (regOne!40079 expr!41))) b!7521788))

(assert (= (and b!7521722 ((_ is Concat!28628) (regOne!40079 expr!41))) b!7521789))

(assert (= (and b!7521722 ((_ is Star!19783) (regOne!40079 expr!41))) b!7521790))

(assert (= (and b!7521722 ((_ is Union!19783) (regOne!40079 expr!41))) b!7521791))

(declare-fun b!7521795 () Bool)

(declare-fun e!4483873 () Bool)

(declare-fun tp!2184959 () Bool)

(declare-fun tp!2184957 () Bool)

(assert (=> b!7521795 (= e!4483873 (and tp!2184959 tp!2184957))))

(declare-fun b!7521794 () Bool)

(declare-fun tp!2184958 () Bool)

(assert (=> b!7521794 (= e!4483873 tp!2184958)))

(assert (=> b!7521722 (= tp!2184935 e!4483873)))

(declare-fun b!7521792 () Bool)

(assert (=> b!7521792 (= e!4483873 tp_is_empty!49921)))

(declare-fun b!7521793 () Bool)

(declare-fun tp!2184956 () Bool)

(declare-fun tp!2184955 () Bool)

(assert (=> b!7521793 (= e!4483873 (and tp!2184956 tp!2184955))))

(assert (= (and b!7521722 ((_ is ElementMatch!19783) (regTwo!40079 expr!41))) b!7521792))

(assert (= (and b!7521722 ((_ is Concat!28628) (regTwo!40079 expr!41))) b!7521793))

(assert (= (and b!7521722 ((_ is Star!19783) (regTwo!40079 expr!41))) b!7521794))

(assert (= (and b!7521722 ((_ is Union!19783) (regTwo!40079 expr!41))) b!7521795))

(declare-fun b!7521799 () Bool)

(declare-fun e!4483874 () Bool)

(declare-fun tp!2184964 () Bool)

(declare-fun tp!2184962 () Bool)

(assert (=> b!7521799 (= e!4483874 (and tp!2184964 tp!2184962))))

(declare-fun b!7521798 () Bool)

(declare-fun tp!2184963 () Bool)

(assert (=> b!7521798 (= e!4483874 tp!2184963)))

(assert (=> b!7521717 (= tp!2184938 e!4483874)))

(declare-fun b!7521796 () Bool)

(assert (=> b!7521796 (= e!4483874 tp_is_empty!49921)))

(declare-fun b!7521797 () Bool)

(declare-fun tp!2184961 () Bool)

(declare-fun tp!2184960 () Bool)

(assert (=> b!7521797 (= e!4483874 (and tp!2184961 tp!2184960))))

(assert (= (and b!7521717 ((_ is ElementMatch!19783) (regOne!40078 expr!41))) b!7521796))

(assert (= (and b!7521717 ((_ is Concat!28628) (regOne!40078 expr!41))) b!7521797))

(assert (= (and b!7521717 ((_ is Star!19783) (regOne!40078 expr!41))) b!7521798))

(assert (= (and b!7521717 ((_ is Union!19783) (regOne!40078 expr!41))) b!7521799))

(declare-fun b!7521803 () Bool)

(declare-fun e!4483875 () Bool)

(declare-fun tp!2184969 () Bool)

(declare-fun tp!2184967 () Bool)

(assert (=> b!7521803 (= e!4483875 (and tp!2184969 tp!2184967))))

(declare-fun b!7521802 () Bool)

(declare-fun tp!2184968 () Bool)

(assert (=> b!7521802 (= e!4483875 tp!2184968)))

(assert (=> b!7521717 (= tp!2184936 e!4483875)))

(declare-fun b!7521800 () Bool)

(assert (=> b!7521800 (= e!4483875 tp_is_empty!49921)))

(declare-fun b!7521801 () Bool)

(declare-fun tp!2184966 () Bool)

(declare-fun tp!2184965 () Bool)

(assert (=> b!7521801 (= e!4483875 (and tp!2184966 tp!2184965))))

(assert (= (and b!7521717 ((_ is ElementMatch!19783) (regTwo!40078 expr!41))) b!7521800))

(assert (= (and b!7521717 ((_ is Concat!28628) (regTwo!40078 expr!41))) b!7521801))

(assert (= (and b!7521717 ((_ is Star!19783) (regTwo!40078 expr!41))) b!7521802))

(assert (= (and b!7521717 ((_ is Union!19783) (regTwo!40078 expr!41))) b!7521803))

(declare-fun b!7521807 () Bool)

(declare-fun e!4483876 () Bool)

(declare-fun tp!2184974 () Bool)

(declare-fun tp!2184972 () Bool)

(assert (=> b!7521807 (= e!4483876 (and tp!2184974 tp!2184972))))

(declare-fun b!7521806 () Bool)

(declare-fun tp!2184973 () Bool)

(assert (=> b!7521806 (= e!4483876 tp!2184973)))

(assert (=> b!7521718 (= tp!2184937 e!4483876)))

(declare-fun b!7521804 () Bool)

(assert (=> b!7521804 (= e!4483876 tp_is_empty!49921)))

(declare-fun b!7521805 () Bool)

(declare-fun tp!2184971 () Bool)

(declare-fun tp!2184970 () Bool)

(assert (=> b!7521805 (= e!4483876 (and tp!2184971 tp!2184970))))

(assert (= (and b!7521718 ((_ is ElementMatch!19783) (reg!20112 expr!41))) b!7521804))

(assert (= (and b!7521718 ((_ is Concat!28628) (reg!20112 expr!41))) b!7521805))

(assert (= (and b!7521718 ((_ is Star!19783) (reg!20112 expr!41))) b!7521806))

(assert (= (and b!7521718 ((_ is Union!19783) (reg!20112 expr!41))) b!7521807))

(check-sat (not b!7521795) (not b!7521791) (not b!7521777) (not b!7521797) (not b!7521805) (not bm!689751) (not d!2309063) (not b!7521807) (not b!7521803) (not b!7521790) (not bm!689748) (not b!7521762) (not b!7521794) (not b!7521801) (not b!7521793) (not bm!689747) tp_is_empty!49921 (not bm!689750) (not b!7521806) (not b!7521789) (not b!7521799) (not b!7521802) (not b!7521798))
(check-sat)
