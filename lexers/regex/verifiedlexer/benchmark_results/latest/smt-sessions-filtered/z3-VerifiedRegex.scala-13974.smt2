; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!739876 () Bool)

(assert start!739876)

(declare-fun b!7767819 () Bool)

(declare-fun e!4602809 () Bool)

(declare-fun tp_is_empty!51841 () Bool)

(declare-fun tp!2281876 () Bool)

(assert (=> b!7767819 (= e!4602809 (and tp_is_empty!51841 tp!2281876))))

(declare-fun b!7767820 () Bool)

(declare-fun res!3096705 () Bool)

(declare-fun e!4602811 () Bool)

(assert (=> b!7767820 (=> (not res!3096705) (not e!4602811))))

(declare-datatypes ((C!41812 0))(
  ( (C!41813 (val!31346 Int)) )
))
(declare-datatypes ((List!73584 0))(
  ( (Nil!73460) (Cons!73460 (h!79908 C!41812) (t!388319 List!73584)) )
))
(declare-fun s!14904 () List!73584)

(declare-fun isEmpty!42132 (List!73584) Bool)

(assert (=> b!7767820 (= res!3096705 (not (isEmpty!42132 s!14904)))))

(declare-fun b!7767821 () Bool)

(declare-fun e!4602810 () Bool)

(declare-fun tp!2281872 () Bool)

(assert (=> b!7767821 (= e!4602810 tp!2281872)))

(declare-fun b!7767822 () Bool)

(declare-datatypes ((Regex!20743 0))(
  ( (ElementMatch!20743 (c!1431658 C!41812)) (Concat!29588 (regOne!41998 Regex!20743) (regTwo!41998 Regex!20743)) (EmptyExpr!20743) (Star!20743 (reg!21072 Regex!20743)) (EmptyLang!20743) (Union!20743 (regOne!41999 Regex!20743) (regTwo!41999 Regex!20743)) )
))
(declare-fun r!25924 () Regex!20743)

(declare-fun lt!2671170 () Regex!20743)

(declare-fun validRegex!11157 (Regex!20743) Bool)

(assert (=> b!7767822 (= e!4602811 (not (validRegex!11157 (Concat!29588 r!25924 lt!2671170))))))

(declare-fun b!7767823 () Bool)

(declare-fun tp!2281877 () Bool)

(declare-fun tp!2281873 () Bool)

(assert (=> b!7767823 (= e!4602810 (and tp!2281877 tp!2281873))))

(declare-fun b!7767824 () Bool)

(declare-fun res!3096706 () Bool)

(assert (=> b!7767824 (=> (not res!3096706) (not e!4602811))))

(get-info :version)

(assert (=> b!7767824 (= res!3096706 (not ((_ is Cons!73460) s!14904)))))

(declare-fun b!7767825 () Bool)

(declare-fun tp!2281875 () Bool)

(declare-fun tp!2281874 () Bool)

(assert (=> b!7767825 (= e!4602810 (and tp!2281875 tp!2281874))))

(declare-fun res!3096704 () Bool)

(assert (=> start!739876 (=> (not res!3096704) (not e!4602811))))

(assert (=> start!739876 (= res!3096704 (validRegex!11157 lt!2671170))))

(assert (=> start!739876 (= lt!2671170 (Star!20743 r!25924))))

(assert (=> start!739876 e!4602811))

(assert (=> start!739876 e!4602810))

(assert (=> start!739876 e!4602809))

(declare-fun b!7767826 () Bool)

(declare-fun res!3096703 () Bool)

(assert (=> b!7767826 (=> (not res!3096703) (not e!4602811))))

(declare-fun matchR!10205 (Regex!20743 List!73584) Bool)

(assert (=> b!7767826 (= res!3096703 (matchR!10205 lt!2671170 s!14904))))

(declare-fun b!7767827 () Bool)

(assert (=> b!7767827 (= e!4602810 tp_is_empty!51841)))

(assert (= (and start!739876 res!3096704) b!7767826))

(assert (= (and b!7767826 res!3096703) b!7767824))

(assert (= (and b!7767824 res!3096706) b!7767820))

(assert (= (and b!7767820 res!3096705) b!7767822))

(assert (= (and start!739876 ((_ is ElementMatch!20743) r!25924)) b!7767827))

(assert (= (and start!739876 ((_ is Concat!29588) r!25924)) b!7767823))

(assert (= (and start!739876 ((_ is Star!20743) r!25924)) b!7767821))

(assert (= (and start!739876 ((_ is Union!20743) r!25924)) b!7767825))

(assert (= (and start!739876 ((_ is Cons!73460) s!14904)) b!7767819))

(declare-fun m!8223530 () Bool)

(assert (=> b!7767820 m!8223530))

(declare-fun m!8223532 () Bool)

(assert (=> b!7767822 m!8223532))

(declare-fun m!8223534 () Bool)

(assert (=> start!739876 m!8223534))

(declare-fun m!8223536 () Bool)

(assert (=> b!7767826 m!8223536))

(check-sat (not b!7767821) (not start!739876) (not b!7767820) (not b!7767823) (not b!7767825) (not b!7767822) (not b!7767826) (not b!7767819) tp_is_empty!51841)
(check-sat)
(get-model)

(declare-fun b!7767868 () Bool)

(declare-fun e!4602849 () Bool)

(declare-fun call!719727 () Bool)

(assert (=> b!7767868 (= e!4602849 call!719727)))

(declare-fun call!719726 () Bool)

(declare-fun c!1431668 () Bool)

(declare-fun c!1431670 () Bool)

(declare-fun bm!719718 () Bool)

(assert (=> bm!719718 (= call!719726 (validRegex!11157 (ite c!1431668 (reg!21072 lt!2671170) (ite c!1431670 (regTwo!41999 lt!2671170) (regOne!41998 lt!2671170)))))))

(declare-fun b!7767872 () Bool)

(declare-fun e!4602842 () Bool)

(assert (=> b!7767872 (= e!4602842 call!719726)))

(declare-fun b!7767874 () Bool)

(declare-fun e!4602853 () Bool)

(declare-fun e!4602848 () Bool)

(assert (=> b!7767874 (= e!4602853 e!4602848)))

(assert (=> b!7767874 (= c!1431670 ((_ is Union!20743) lt!2671170))))

(declare-fun b!7767875 () Bool)

(assert (=> b!7767875 (= e!4602853 e!4602842)))

(declare-fun res!3096735 () Bool)

(declare-fun nullable!9137 (Regex!20743) Bool)

(assert (=> b!7767875 (= res!3096735 (not (nullable!9137 (reg!21072 lt!2671170))))))

(assert (=> b!7767875 (=> (not res!3096735) (not e!4602842))))

(declare-fun b!7767877 () Bool)

(declare-fun res!3096730 () Bool)

(declare-fun e!4602846 () Bool)

(assert (=> b!7767877 (=> (not res!3096730) (not e!4602846))))

(assert (=> b!7767877 (= res!3096730 call!719727)))

(assert (=> b!7767877 (= e!4602848 e!4602846)))

(declare-fun b!7767879 () Bool)

(declare-fun call!719728 () Bool)

(assert (=> b!7767879 (= e!4602846 call!719728)))

(declare-fun b!7767870 () Bool)

(declare-fun res!3096728 () Bool)

(declare-fun e!4602850 () Bool)

(assert (=> b!7767870 (=> res!3096728 e!4602850)))

(assert (=> b!7767870 (= res!3096728 (not ((_ is Concat!29588) lt!2671170)))))

(assert (=> b!7767870 (= e!4602848 e!4602850)))

(declare-fun d!2344093 () Bool)

(declare-fun res!3096733 () Bool)

(declare-fun e!4602841 () Bool)

(assert (=> d!2344093 (=> res!3096733 e!4602841)))

(assert (=> d!2344093 (= res!3096733 ((_ is ElementMatch!20743) lt!2671170))))

(assert (=> d!2344093 (= (validRegex!11157 lt!2671170) e!4602841)))

(declare-fun b!7767880 () Bool)

(assert (=> b!7767880 (= e!4602850 e!4602849)))

(declare-fun res!3096736 () Bool)

(assert (=> b!7767880 (=> (not res!3096736) (not e!4602849))))

(assert (=> b!7767880 (= res!3096736 call!719728)))

(declare-fun bm!719722 () Bool)

(assert (=> bm!719722 (= call!719728 call!719726)))

(declare-fun b!7767881 () Bool)

(assert (=> b!7767881 (= e!4602841 e!4602853)))

(assert (=> b!7767881 (= c!1431668 ((_ is Star!20743) lt!2671170))))

(declare-fun bm!719723 () Bool)

(assert (=> bm!719723 (= call!719727 (validRegex!11157 (ite c!1431670 (regOne!41999 lt!2671170) (regTwo!41998 lt!2671170))))))

(assert (= (and d!2344093 (not res!3096733)) b!7767881))

(assert (= (and b!7767881 c!1431668) b!7767875))

(assert (= (and b!7767881 (not c!1431668)) b!7767874))

(assert (= (and b!7767875 res!3096735) b!7767872))

(assert (= (and b!7767874 c!1431670) b!7767877))

(assert (= (and b!7767874 (not c!1431670)) b!7767870))

(assert (= (and b!7767877 res!3096730) b!7767879))

(assert (= (and b!7767870 (not res!3096728)) b!7767880))

(assert (= (and b!7767880 res!3096736) b!7767868))

(assert (= (or b!7767879 b!7767880) bm!719722))

(assert (= (or b!7767877 b!7767868) bm!719723))

(assert (= (or b!7767872 bm!719722) bm!719718))

(declare-fun m!8223538 () Bool)

(assert (=> bm!719718 m!8223538))

(declare-fun m!8223542 () Bool)

(assert (=> b!7767875 m!8223542))

(declare-fun m!8223546 () Bool)

(assert (=> bm!719723 m!8223546))

(assert (=> start!739876 d!2344093))

(declare-fun d!2344095 () Bool)

(assert (=> d!2344095 (= (isEmpty!42132 s!14904) ((_ is Nil!73460) s!14904))))

(assert (=> b!7767820 d!2344095))

(declare-fun b!7767952 () Bool)

(declare-fun res!3096783 () Bool)

(declare-fun e!4602893 () Bool)

(assert (=> b!7767952 (=> res!3096783 e!4602893)))

(declare-fun tail!15414 (List!73584) List!73584)

(assert (=> b!7767952 (= res!3096783 (not (isEmpty!42132 (tail!15414 s!14904))))))

(declare-fun b!7767953 () Bool)

(declare-fun e!4602895 () Bool)

(declare-fun lt!2671176 () Bool)

(assert (=> b!7767953 (= e!4602895 (not lt!2671176))))

(declare-fun b!7767954 () Bool)

(declare-fun e!4602892 () Bool)

(assert (=> b!7767954 (= e!4602892 e!4602893)))

(declare-fun res!3096782 () Bool)

(assert (=> b!7767954 (=> res!3096782 e!4602893)))

(declare-fun call!719734 () Bool)

(assert (=> b!7767954 (= res!3096782 call!719734)))

(declare-fun bm!719729 () Bool)

(assert (=> bm!719729 (= call!719734 (isEmpty!42132 s!14904))))

(declare-fun b!7767955 () Bool)

(declare-fun e!4602890 () Bool)

(assert (=> b!7767955 (= e!4602890 e!4602895)))

(declare-fun c!1431686 () Bool)

(assert (=> b!7767955 (= c!1431686 ((_ is EmptyLang!20743) lt!2671170))))

(declare-fun b!7767956 () Bool)

(declare-fun res!3096781 () Bool)

(declare-fun e!4602889 () Bool)

(assert (=> b!7767956 (=> (not res!3096781) (not e!4602889))))

(assert (=> b!7767956 (= res!3096781 (not call!719734))))

(declare-fun b!7767957 () Bool)

(declare-fun e!4602894 () Bool)

(assert (=> b!7767957 (= e!4602894 (nullable!9137 lt!2671170))))

(declare-fun b!7767958 () Bool)

(declare-fun e!4602891 () Bool)

(assert (=> b!7767958 (= e!4602891 e!4602892)))

(declare-fun res!3096779 () Bool)

(assert (=> b!7767958 (=> (not res!3096779) (not e!4602892))))

(assert (=> b!7767958 (= res!3096779 (not lt!2671176))))

(declare-fun b!7767959 () Bool)

(assert (=> b!7767959 (= e!4602890 (= lt!2671176 call!719734))))

(declare-fun b!7767960 () Bool)

(declare-fun res!3096784 () Bool)

(assert (=> b!7767960 (=> res!3096784 e!4602891)))

(assert (=> b!7767960 (= res!3096784 e!4602889)))

(declare-fun res!3096778 () Bool)

(assert (=> b!7767960 (=> (not res!3096778) (not e!4602889))))

(assert (=> b!7767960 (= res!3096778 lt!2671176)))

(declare-fun b!7767961 () Bool)

(declare-fun res!3096777 () Bool)

(assert (=> b!7767961 (=> res!3096777 e!4602891)))

(assert (=> b!7767961 (= res!3096777 (not ((_ is ElementMatch!20743) lt!2671170)))))

(assert (=> b!7767961 (= e!4602895 e!4602891)))

(declare-fun b!7767962 () Bool)

(declare-fun derivativeStep!6087 (Regex!20743 C!41812) Regex!20743)

(declare-fun head!15875 (List!73584) C!41812)

(assert (=> b!7767962 (= e!4602894 (matchR!10205 (derivativeStep!6087 lt!2671170 (head!15875 s!14904)) (tail!15414 s!14904)))))

(declare-fun d!2344099 () Bool)

(assert (=> d!2344099 e!4602890))

(declare-fun c!1431687 () Bool)

(assert (=> d!2344099 (= c!1431687 ((_ is EmptyExpr!20743) lt!2671170))))

(assert (=> d!2344099 (= lt!2671176 e!4602894)))

(declare-fun c!1431688 () Bool)

(assert (=> d!2344099 (= c!1431688 (isEmpty!42132 s!14904))))

(assert (=> d!2344099 (validRegex!11157 lt!2671170)))

(assert (=> d!2344099 (= (matchR!10205 lt!2671170 s!14904) lt!2671176)))

(declare-fun b!7767963 () Bool)

(assert (=> b!7767963 (= e!4602893 (not (= (head!15875 s!14904) (c!1431658 lt!2671170))))))

(declare-fun b!7767964 () Bool)

(declare-fun res!3096780 () Bool)

(assert (=> b!7767964 (=> (not res!3096780) (not e!4602889))))

(assert (=> b!7767964 (= res!3096780 (isEmpty!42132 (tail!15414 s!14904)))))

(declare-fun b!7767965 () Bool)

(assert (=> b!7767965 (= e!4602889 (= (head!15875 s!14904) (c!1431658 lt!2671170)))))

(assert (= (and d!2344099 c!1431688) b!7767957))

(assert (= (and d!2344099 (not c!1431688)) b!7767962))

(assert (= (and d!2344099 c!1431687) b!7767959))

(assert (= (and d!2344099 (not c!1431687)) b!7767955))

(assert (= (and b!7767955 c!1431686) b!7767953))

(assert (= (and b!7767955 (not c!1431686)) b!7767961))

(assert (= (and b!7767961 (not res!3096777)) b!7767960))

(assert (= (and b!7767960 res!3096778) b!7767956))

(assert (= (and b!7767956 res!3096781) b!7767964))

(assert (= (and b!7767964 res!3096780) b!7767965))

(assert (= (and b!7767960 (not res!3096784)) b!7767958))

(assert (= (and b!7767958 res!3096779) b!7767954))

(assert (= (and b!7767954 (not res!3096782)) b!7767952))

(assert (= (and b!7767952 (not res!3096783)) b!7767963))

(assert (= (or b!7767959 b!7767954 b!7767956) bm!719729))

(declare-fun m!8223562 () Bool)

(assert (=> b!7767963 m!8223562))

(declare-fun m!8223564 () Bool)

(assert (=> b!7767957 m!8223564))

(assert (=> b!7767962 m!8223562))

(assert (=> b!7767962 m!8223562))

(declare-fun m!8223566 () Bool)

(assert (=> b!7767962 m!8223566))

(declare-fun m!8223568 () Bool)

(assert (=> b!7767962 m!8223568))

(assert (=> b!7767962 m!8223566))

(assert (=> b!7767962 m!8223568))

(declare-fun m!8223570 () Bool)

(assert (=> b!7767962 m!8223570))

(assert (=> d!2344099 m!8223530))

(assert (=> d!2344099 m!8223534))

(assert (=> bm!719729 m!8223530))

(assert (=> b!7767965 m!8223562))

(assert (=> b!7767952 m!8223568))

(assert (=> b!7767952 m!8223568))

(declare-fun m!8223572 () Bool)

(assert (=> b!7767952 m!8223572))

(assert (=> b!7767964 m!8223568))

(assert (=> b!7767964 m!8223568))

(assert (=> b!7767964 m!8223572))

(assert (=> b!7767826 d!2344099))

(declare-fun b!7767975 () Bool)

(declare-fun e!4602907 () Bool)

(declare-fun call!719739 () Bool)

(assert (=> b!7767975 (= e!4602907 call!719739)))

(declare-fun c!1431692 () Bool)

(declare-fun call!719738 () Bool)

(declare-fun c!1431691 () Bool)

(declare-fun bm!719733 () Bool)

(assert (=> bm!719733 (= call!719738 (validRegex!11157 (ite c!1431691 (reg!21072 (Concat!29588 r!25924 lt!2671170)) (ite c!1431692 (regTwo!41999 (Concat!29588 r!25924 lt!2671170)) (regOne!41998 (Concat!29588 r!25924 lt!2671170))))))))

(declare-fun b!7767977 () Bool)

(declare-fun e!4602904 () Bool)

(assert (=> b!7767977 (= e!4602904 call!719738)))

(declare-fun b!7767978 () Bool)

(declare-fun e!4602909 () Bool)

(declare-fun e!4602906 () Bool)

(assert (=> b!7767978 (= e!4602909 e!4602906)))

(assert (=> b!7767978 (= c!1431692 ((_ is Union!20743) (Concat!29588 r!25924 lt!2671170)))))

(declare-fun b!7767979 () Bool)

(assert (=> b!7767979 (= e!4602909 e!4602904)))

(declare-fun res!3096793 () Bool)

(assert (=> b!7767979 (= res!3096793 (not (nullable!9137 (reg!21072 (Concat!29588 r!25924 lt!2671170)))))))

(assert (=> b!7767979 (=> (not res!3096793) (not e!4602904))))

(declare-fun b!7767980 () Bool)

(declare-fun res!3096791 () Bool)

(declare-fun e!4602905 () Bool)

(assert (=> b!7767980 (=> (not res!3096791) (not e!4602905))))

(assert (=> b!7767980 (= res!3096791 call!719739)))

(assert (=> b!7767980 (= e!4602906 e!4602905)))

(declare-fun b!7767981 () Bool)

(declare-fun call!719740 () Bool)

(assert (=> b!7767981 (= e!4602905 call!719740)))

(declare-fun b!7767976 () Bool)

(declare-fun res!3096790 () Bool)

(declare-fun e!4602908 () Bool)

(assert (=> b!7767976 (=> res!3096790 e!4602908)))

(assert (=> b!7767976 (= res!3096790 (not ((_ is Concat!29588) (Concat!29588 r!25924 lt!2671170))))))

(assert (=> b!7767976 (= e!4602906 e!4602908)))

(declare-fun d!2344103 () Bool)

(declare-fun res!3096792 () Bool)

(declare-fun e!4602903 () Bool)

(assert (=> d!2344103 (=> res!3096792 e!4602903)))

(assert (=> d!2344103 (= res!3096792 ((_ is ElementMatch!20743) (Concat!29588 r!25924 lt!2671170)))))

(assert (=> d!2344103 (= (validRegex!11157 (Concat!29588 r!25924 lt!2671170)) e!4602903)))

(declare-fun b!7767982 () Bool)

(assert (=> b!7767982 (= e!4602908 e!4602907)))

(declare-fun res!3096794 () Bool)

(assert (=> b!7767982 (=> (not res!3096794) (not e!4602907))))

(assert (=> b!7767982 (= res!3096794 call!719740)))

(declare-fun bm!719734 () Bool)

(assert (=> bm!719734 (= call!719740 call!719738)))

(declare-fun b!7767983 () Bool)

(assert (=> b!7767983 (= e!4602903 e!4602909)))

(assert (=> b!7767983 (= c!1431691 ((_ is Star!20743) (Concat!29588 r!25924 lt!2671170)))))

(declare-fun bm!719735 () Bool)

(assert (=> bm!719735 (= call!719739 (validRegex!11157 (ite c!1431692 (regOne!41999 (Concat!29588 r!25924 lt!2671170)) (regTwo!41998 (Concat!29588 r!25924 lt!2671170)))))))

(assert (= (and d!2344103 (not res!3096792)) b!7767983))

(assert (= (and b!7767983 c!1431691) b!7767979))

(assert (= (and b!7767983 (not c!1431691)) b!7767978))

(assert (= (and b!7767979 res!3096793) b!7767977))

(assert (= (and b!7767978 c!1431692) b!7767980))

(assert (= (and b!7767978 (not c!1431692)) b!7767976))

(assert (= (and b!7767980 res!3096791) b!7767981))

(assert (= (and b!7767976 (not res!3096790)) b!7767982))

(assert (= (and b!7767982 res!3096794) b!7767975))

(assert (= (or b!7767981 b!7767982) bm!719734))

(assert (= (or b!7767980 b!7767975) bm!719735))

(assert (= (or b!7767977 bm!719734) bm!719733))

(declare-fun m!8223580 () Bool)

(assert (=> bm!719733 m!8223580))

(declare-fun m!8223582 () Bool)

(assert (=> b!7767979 m!8223582))

(declare-fun m!8223584 () Bool)

(assert (=> bm!719735 m!8223584))

(assert (=> b!7767822 d!2344103))

(declare-fun b!7768006 () Bool)

(declare-fun e!4602914 () Bool)

(declare-fun tp!2281898 () Bool)

(assert (=> b!7768006 (= e!4602914 tp!2281898)))

(declare-fun b!7768005 () Bool)

(declare-fun tp!2281900 () Bool)

(declare-fun tp!2281902 () Bool)

(assert (=> b!7768005 (= e!4602914 (and tp!2281900 tp!2281902))))

(declare-fun b!7768004 () Bool)

(assert (=> b!7768004 (= e!4602914 tp_is_empty!51841)))

(declare-fun b!7768007 () Bool)

(declare-fun tp!2281899 () Bool)

(declare-fun tp!2281901 () Bool)

(assert (=> b!7768007 (= e!4602914 (and tp!2281899 tp!2281901))))

(assert (=> b!7767825 (= tp!2281875 e!4602914)))

(assert (= (and b!7767825 ((_ is ElementMatch!20743) (regOne!41999 r!25924))) b!7768004))

(assert (= (and b!7767825 ((_ is Concat!29588) (regOne!41999 r!25924))) b!7768005))

(assert (= (and b!7767825 ((_ is Star!20743) (regOne!41999 r!25924))) b!7768006))

(assert (= (and b!7767825 ((_ is Union!20743) (regOne!41999 r!25924))) b!7768007))

(declare-fun b!7768014 () Bool)

(declare-fun e!4602916 () Bool)

(declare-fun tp!2281908 () Bool)

(assert (=> b!7768014 (= e!4602916 tp!2281908)))

(declare-fun b!7768013 () Bool)

(declare-fun tp!2281910 () Bool)

(declare-fun tp!2281912 () Bool)

(assert (=> b!7768013 (= e!4602916 (and tp!2281910 tp!2281912))))

(declare-fun b!7768012 () Bool)

(assert (=> b!7768012 (= e!4602916 tp_is_empty!51841)))

(declare-fun b!7768015 () Bool)

(declare-fun tp!2281909 () Bool)

(declare-fun tp!2281911 () Bool)

(assert (=> b!7768015 (= e!4602916 (and tp!2281909 tp!2281911))))

(assert (=> b!7767825 (= tp!2281874 e!4602916)))

(assert (= (and b!7767825 ((_ is ElementMatch!20743) (regTwo!41999 r!25924))) b!7768012))

(assert (= (and b!7767825 ((_ is Concat!29588) (regTwo!41999 r!25924))) b!7768013))

(assert (= (and b!7767825 ((_ is Star!20743) (regTwo!41999 r!25924))) b!7768014))

(assert (= (and b!7767825 ((_ is Union!20743) (regTwo!41999 r!25924))) b!7768015))

(declare-fun b!7768022 () Bool)

(declare-fun e!4602919 () Bool)

(declare-fun tp!2281915 () Bool)

(assert (=> b!7768022 (= e!4602919 tp!2281915)))

(declare-fun b!7768021 () Bool)

(declare-fun tp!2281917 () Bool)

(declare-fun tp!2281919 () Bool)

(assert (=> b!7768021 (= e!4602919 (and tp!2281917 tp!2281919))))

(declare-fun b!7768020 () Bool)

(assert (=> b!7768020 (= e!4602919 tp_is_empty!51841)))

(declare-fun b!7768023 () Bool)

(declare-fun tp!2281916 () Bool)

(declare-fun tp!2281918 () Bool)

(assert (=> b!7768023 (= e!4602919 (and tp!2281916 tp!2281918))))

(assert (=> b!7767821 (= tp!2281872 e!4602919)))

(assert (= (and b!7767821 ((_ is ElementMatch!20743) (reg!21072 r!25924))) b!7768020))

(assert (= (and b!7767821 ((_ is Concat!29588) (reg!21072 r!25924))) b!7768021))

(assert (= (and b!7767821 ((_ is Star!20743) (reg!21072 r!25924))) b!7768022))

(assert (= (and b!7767821 ((_ is Union!20743) (reg!21072 r!25924))) b!7768023))

(declare-fun b!7768027 () Bool)

(declare-fun e!4602921 () Bool)

(declare-fun tp!2281921 () Bool)

(assert (=> b!7768027 (= e!4602921 tp!2281921)))

(declare-fun b!7768026 () Bool)

(declare-fun tp!2281923 () Bool)

(declare-fun tp!2281925 () Bool)

(assert (=> b!7768026 (= e!4602921 (and tp!2281923 tp!2281925))))

(declare-fun b!7768025 () Bool)

(assert (=> b!7768025 (= e!4602921 tp_is_empty!51841)))

(declare-fun b!7768028 () Bool)

(declare-fun tp!2281922 () Bool)

(declare-fun tp!2281924 () Bool)

(assert (=> b!7768028 (= e!4602921 (and tp!2281922 tp!2281924))))

(assert (=> b!7767823 (= tp!2281877 e!4602921)))

(assert (= (and b!7767823 ((_ is ElementMatch!20743) (regOne!41998 r!25924))) b!7768025))

(assert (= (and b!7767823 ((_ is Concat!29588) (regOne!41998 r!25924))) b!7768026))

(assert (= (and b!7767823 ((_ is Star!20743) (regOne!41998 r!25924))) b!7768027))

(assert (= (and b!7767823 ((_ is Union!20743) (regOne!41998 r!25924))) b!7768028))

(declare-fun b!7768035 () Bool)

(declare-fun e!4602923 () Bool)

(declare-fun tp!2281931 () Bool)

(assert (=> b!7768035 (= e!4602923 tp!2281931)))

(declare-fun b!7768034 () Bool)

(declare-fun tp!2281933 () Bool)

(declare-fun tp!2281935 () Bool)

(assert (=> b!7768034 (= e!4602923 (and tp!2281933 tp!2281935))))

(declare-fun b!7768033 () Bool)

(assert (=> b!7768033 (= e!4602923 tp_is_empty!51841)))

(declare-fun b!7768036 () Bool)

(declare-fun tp!2281932 () Bool)

(declare-fun tp!2281934 () Bool)

(assert (=> b!7768036 (= e!4602923 (and tp!2281932 tp!2281934))))

(assert (=> b!7767823 (= tp!2281873 e!4602923)))

(assert (= (and b!7767823 ((_ is ElementMatch!20743) (regTwo!41998 r!25924))) b!7768033))

(assert (= (and b!7767823 ((_ is Concat!29588) (regTwo!41998 r!25924))) b!7768034))

(assert (= (and b!7767823 ((_ is Star!20743) (regTwo!41998 r!25924))) b!7768035))

(assert (= (and b!7767823 ((_ is Union!20743) (regTwo!41998 r!25924))) b!7768036))

(declare-fun b!7768053 () Bool)

(declare-fun e!4602929 () Bool)

(declare-fun tp!2281953 () Bool)

(assert (=> b!7768053 (= e!4602929 (and tp_is_empty!51841 tp!2281953))))

(assert (=> b!7767819 (= tp!2281876 e!4602929)))

(assert (= (and b!7767819 ((_ is Cons!73460) (t!388319 s!14904))) b!7768053))

(check-sat (not b!7768005) (not b!7767962) (not b!7768034) (not bm!719729) (not b!7768036) (not b!7768023) (not b!7768035) (not bm!719733) (not b!7767979) (not b!7768053) (not b!7768026) (not b!7767963) (not b!7768021) (not b!7768006) (not b!7768015) (not b!7767957) (not b!7768014) (not b!7768007) (not b!7768027) (not b!7768013) (not bm!719723) (not b!7768022) (not b!7767965) (not bm!719735) (not b!7767875) (not b!7768028) (not bm!719718) (not d!2344099) (not b!7767952) tp_is_empty!51841 (not b!7767964))
(check-sat)
