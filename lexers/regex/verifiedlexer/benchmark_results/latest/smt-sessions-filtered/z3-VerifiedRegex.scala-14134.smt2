; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!742870 () Bool)

(assert start!742870)

(declare-fun b!7843854 () Bool)

(declare-fun e!4637585 () Bool)

(declare-fun tp!2321874 () Bool)

(declare-fun tp!2321878 () Bool)

(assert (=> b!7843854 (= e!4637585 (and tp!2321874 tp!2321878))))

(declare-fun b!7843855 () Bool)

(declare-fun tp_is_empty!52481 () Bool)

(assert (=> b!7843855 (= e!4637585 tp_is_empty!52481)))

(declare-fun b!7843856 () Bool)

(declare-fun tp!2321876 () Bool)

(assert (=> b!7843856 (= e!4637585 tp!2321876)))

(declare-fun res!3119690 () Bool)

(declare-fun e!4637583 () Bool)

(assert (=> start!742870 (=> (not res!3119690) (not e!4637583))))

(declare-datatypes ((C!42408 0))(
  ( (C!42409 (val!31666 Int)) )
))
(declare-datatypes ((Regex!21041 0))(
  ( (ElementMatch!21041 (c!1441881 C!42408)) (Concat!29886 (regOne!42594 Regex!21041) (regTwo!42594 Regex!21041)) (EmptyExpr!21041) (Star!21041 (reg!21370 Regex!21041)) (EmptyLang!21041) (Union!21041 (regOne!42595 Regex!21041) (regTwo!42595 Regex!21041)) )
))
(declare-fun r!27161 () Regex!21041)

(declare-datatypes ((List!73900 0))(
  ( (Nil!73776) (Cons!73776 (h!80224 C!42408) (t!388635 List!73900)) )
))
(declare-fun s!15118 () List!73900)

(get-info :version)

(assert (=> start!742870 (= res!3119690 (and (= r!27161 EmptyLang!21041) ((_ is Cons!73776) s!15118)))))

(assert (=> start!742870 e!4637583))

(assert (=> start!742870 e!4637585))

(declare-fun e!4637584 () Bool)

(assert (=> start!742870 e!4637584))

(declare-fun b!7843857 () Bool)

(declare-fun ListPrimitiveSize!462 (List!73900) Int)

(assert (=> b!7843857 (= e!4637583 (>= (ListPrimitiveSize!462 (t!388635 s!15118)) (ListPrimitiveSize!462 s!15118)))))

(declare-fun b!7843858 () Bool)

(declare-fun tp!2321875 () Bool)

(assert (=> b!7843858 (= e!4637584 (and tp_is_empty!52481 tp!2321875))))

(declare-fun b!7843859 () Bool)

(declare-fun res!3119689 () Bool)

(assert (=> b!7843859 (=> (not res!3119689) (not e!4637583))))

(declare-fun derivativeStep!6282 (Regex!21041 C!42408) Regex!21041)

(assert (=> b!7843859 (= res!3119689 (= (derivativeStep!6282 r!27161 (h!80224 s!15118)) EmptyLang!21041))))

(declare-fun b!7843860 () Bool)

(declare-fun tp!2321877 () Bool)

(declare-fun tp!2321873 () Bool)

(assert (=> b!7843860 (= e!4637585 (and tp!2321877 tp!2321873))))

(assert (= (and start!742870 res!3119690) b!7843859))

(assert (= (and b!7843859 res!3119689) b!7843857))

(assert (= (and start!742870 ((_ is ElementMatch!21041) r!27161)) b!7843855))

(assert (= (and start!742870 ((_ is Concat!29886) r!27161)) b!7843860))

(assert (= (and start!742870 ((_ is Star!21041) r!27161)) b!7843856))

(assert (= (and start!742870 ((_ is Union!21041) r!27161)) b!7843854))

(assert (= (and start!742870 ((_ is Cons!73776) s!15118)) b!7843858))

(declare-fun m!8255178 () Bool)

(assert (=> b!7843857 m!8255178))

(declare-fun m!8255180 () Bool)

(assert (=> b!7843857 m!8255180))

(declare-fun m!8255182 () Bool)

(assert (=> b!7843859 m!8255182))

(check-sat (not b!7843859) tp_is_empty!52481 (not b!7843860) (not b!7843856) (not b!7843857) (not b!7843854) (not b!7843858))
(check-sat)
(get-model)

(declare-fun d!2352669 () Bool)

(declare-fun lt!2678922 () Int)

(assert (=> d!2352669 (>= lt!2678922 0)))

(declare-fun e!4637592 () Int)

(assert (=> d!2352669 (= lt!2678922 e!4637592)))

(declare-fun c!1441888 () Bool)

(assert (=> d!2352669 (= c!1441888 ((_ is Nil!73776) (t!388635 s!15118)))))

(assert (=> d!2352669 (= (ListPrimitiveSize!462 (t!388635 s!15118)) lt!2678922)))

(declare-fun b!7843873 () Bool)

(assert (=> b!7843873 (= e!4637592 0)))

(declare-fun b!7843874 () Bool)

(assert (=> b!7843874 (= e!4637592 (+ 1 (ListPrimitiveSize!462 (t!388635 (t!388635 s!15118)))))))

(assert (= (and d!2352669 c!1441888) b!7843873))

(assert (= (and d!2352669 (not c!1441888)) b!7843874))

(declare-fun m!8255186 () Bool)

(assert (=> b!7843874 m!8255186))

(assert (=> b!7843857 d!2352669))

(declare-fun d!2352675 () Bool)

(declare-fun lt!2678923 () Int)

(assert (=> d!2352675 (>= lt!2678923 0)))

(declare-fun e!4637593 () Int)

(assert (=> d!2352675 (= lt!2678923 e!4637593)))

(declare-fun c!1441889 () Bool)

(assert (=> d!2352675 (= c!1441889 ((_ is Nil!73776) s!15118))))

(assert (=> d!2352675 (= (ListPrimitiveSize!462 s!15118) lt!2678923)))

(declare-fun b!7843875 () Bool)

(assert (=> b!7843875 (= e!4637593 0)))

(declare-fun b!7843876 () Bool)

(assert (=> b!7843876 (= e!4637593 (+ 1 (ListPrimitiveSize!462 (t!388635 s!15118))))))

(assert (= (and d!2352675 c!1441889) b!7843875))

(assert (= (and d!2352675 (not c!1441889)) b!7843876))

(assert (=> b!7843876 m!8255178))

(assert (=> b!7843857 d!2352675))

(declare-fun d!2352677 () Bool)

(declare-fun lt!2678929 () Regex!21041)

(declare-fun validRegex!11450 (Regex!21041) Bool)

(assert (=> d!2352677 (validRegex!11450 lt!2678929)))

(declare-fun e!4637622 () Regex!21041)

(assert (=> d!2352677 (= lt!2678929 e!4637622)))

(declare-fun c!1441918 () Bool)

(assert (=> d!2352677 (= c!1441918 (or ((_ is EmptyExpr!21041) r!27161) ((_ is EmptyLang!21041) r!27161)))))

(assert (=> d!2352677 (validRegex!11450 r!27161)))

(assert (=> d!2352677 (= (derivativeStep!6282 r!27161 (h!80224 s!15118)) lt!2678929)))

(declare-fun b!7843927 () Bool)

(declare-fun e!4637619 () Regex!21041)

(declare-fun e!4637623 () Regex!21041)

(assert (=> b!7843927 (= e!4637619 e!4637623)))

(declare-fun c!1441917 () Bool)

(assert (=> b!7843927 (= c!1441917 ((_ is Star!21041) r!27161))))

(declare-fun bm!726852 () Bool)

(declare-fun call!726860 () Regex!21041)

(declare-fun call!726857 () Regex!21041)

(assert (=> bm!726852 (= call!726860 call!726857)))

(declare-fun b!7843928 () Bool)

(declare-fun e!4637621 () Regex!21041)

(assert (=> b!7843928 (= e!4637621 (ite (= (h!80224 s!15118) (c!1441881 r!27161)) EmptyExpr!21041 EmptyLang!21041))))

(declare-fun c!1441916 () Bool)

(declare-fun bm!726853 () Bool)

(assert (=> bm!726853 (= call!726857 (derivativeStep!6282 (ite c!1441916 (regTwo!42595 r!27161) (ite c!1441917 (reg!21370 r!27161) (regOne!42594 r!27161))) (h!80224 s!15118)))))

(declare-fun bm!726854 () Bool)

(declare-fun call!726859 () Regex!21041)

(assert (=> bm!726854 (= call!726859 (derivativeStep!6282 (ite c!1441916 (regOne!42595 r!27161) (regTwo!42594 r!27161)) (h!80224 s!15118)))))

(declare-fun b!7843929 () Bool)

(assert (=> b!7843929 (= e!4637623 (Concat!29886 call!726860 r!27161))))

(declare-fun b!7843930 () Bool)

(assert (=> b!7843930 (= e!4637622 e!4637621)))

(declare-fun c!1441919 () Bool)

(assert (=> b!7843930 (= c!1441919 ((_ is ElementMatch!21041) r!27161))))

(declare-fun e!4637620 () Regex!21041)

(declare-fun call!726858 () Regex!21041)

(declare-fun b!7843931 () Bool)

(assert (=> b!7843931 (= e!4637620 (Union!21041 (Concat!29886 call!726858 (regTwo!42594 r!27161)) call!726859))))

(declare-fun b!7843932 () Bool)

(assert (=> b!7843932 (= e!4637620 (Union!21041 (Concat!29886 call!726858 (regTwo!42594 r!27161)) EmptyLang!21041))))

(declare-fun b!7843933 () Bool)

(assert (=> b!7843933 (= e!4637619 (Union!21041 call!726859 call!726857))))

(declare-fun b!7843934 () Bool)

(declare-fun c!1441915 () Bool)

(declare-fun nullable!9326 (Regex!21041) Bool)

(assert (=> b!7843934 (= c!1441915 (nullable!9326 (regOne!42594 r!27161)))))

(assert (=> b!7843934 (= e!4637623 e!4637620)))

(declare-fun b!7843935 () Bool)

(assert (=> b!7843935 (= c!1441916 ((_ is Union!21041) r!27161))))

(assert (=> b!7843935 (= e!4637621 e!4637619)))

(declare-fun b!7843936 () Bool)

(assert (=> b!7843936 (= e!4637622 EmptyLang!21041)))

(declare-fun bm!726855 () Bool)

(assert (=> bm!726855 (= call!726858 call!726860)))

(assert (= (and d!2352677 c!1441918) b!7843936))

(assert (= (and d!2352677 (not c!1441918)) b!7843930))

(assert (= (and b!7843930 c!1441919) b!7843928))

(assert (= (and b!7843930 (not c!1441919)) b!7843935))

(assert (= (and b!7843935 c!1441916) b!7843933))

(assert (= (and b!7843935 (not c!1441916)) b!7843927))

(assert (= (and b!7843927 c!1441917) b!7843929))

(assert (= (and b!7843927 (not c!1441917)) b!7843934))

(assert (= (and b!7843934 c!1441915) b!7843931))

(assert (= (and b!7843934 (not c!1441915)) b!7843932))

(assert (= (or b!7843931 b!7843932) bm!726855))

(assert (= (or b!7843929 bm!726855) bm!726852))

(assert (= (or b!7843933 bm!726852) bm!726853))

(assert (= (or b!7843933 b!7843931) bm!726854))

(declare-fun m!8255198 () Bool)

(assert (=> d!2352677 m!8255198))

(declare-fun m!8255200 () Bool)

(assert (=> d!2352677 m!8255200))

(declare-fun m!8255202 () Bool)

(assert (=> bm!726853 m!8255202))

(declare-fun m!8255204 () Bool)

(assert (=> bm!726854 m!8255204))

(declare-fun m!8255206 () Bool)

(assert (=> b!7843934 m!8255206))

(assert (=> b!7843859 d!2352677))

(declare-fun b!7843968 () Bool)

(declare-fun e!4637630 () Bool)

(declare-fun tp!2321911 () Bool)

(declare-fun tp!2321913 () Bool)

(assert (=> b!7843968 (= e!4637630 (and tp!2321911 tp!2321913))))

(declare-fun b!7843966 () Bool)

(declare-fun tp!2321909 () Bool)

(declare-fun tp!2321910 () Bool)

(assert (=> b!7843966 (= e!4637630 (and tp!2321909 tp!2321910))))

(declare-fun b!7843965 () Bool)

(assert (=> b!7843965 (= e!4637630 tp_is_empty!52481)))

(assert (=> b!7843856 (= tp!2321876 e!4637630)))

(declare-fun b!7843967 () Bool)

(declare-fun tp!2321912 () Bool)

(assert (=> b!7843967 (= e!4637630 tp!2321912)))

(assert (= (and b!7843856 ((_ is ElementMatch!21041) (reg!21370 r!27161))) b!7843965))

(assert (= (and b!7843856 ((_ is Concat!29886) (reg!21370 r!27161))) b!7843966))

(assert (= (and b!7843856 ((_ is Star!21041) (reg!21370 r!27161))) b!7843967))

(assert (= (and b!7843856 ((_ is Union!21041) (reg!21370 r!27161))) b!7843968))

(declare-fun b!7843980 () Bool)

(declare-fun e!4637634 () Bool)

(declare-fun tp!2321923 () Bool)

(declare-fun tp!2321925 () Bool)

(assert (=> b!7843980 (= e!4637634 (and tp!2321923 tp!2321925))))

(declare-fun b!7843978 () Bool)

(declare-fun tp!2321921 () Bool)

(declare-fun tp!2321922 () Bool)

(assert (=> b!7843978 (= e!4637634 (and tp!2321921 tp!2321922))))

(declare-fun b!7843977 () Bool)

(assert (=> b!7843977 (= e!4637634 tp_is_empty!52481)))

(assert (=> b!7843860 (= tp!2321877 e!4637634)))

(declare-fun b!7843979 () Bool)

(declare-fun tp!2321924 () Bool)

(assert (=> b!7843979 (= e!4637634 tp!2321924)))

(assert (= (and b!7843860 ((_ is ElementMatch!21041) (regOne!42594 r!27161))) b!7843977))

(assert (= (and b!7843860 ((_ is Concat!29886) (regOne!42594 r!27161))) b!7843978))

(assert (= (and b!7843860 ((_ is Star!21041) (regOne!42594 r!27161))) b!7843979))

(assert (= (and b!7843860 ((_ is Union!21041) (regOne!42594 r!27161))) b!7843980))

(declare-fun b!7843984 () Bool)

(declare-fun e!4637635 () Bool)

(declare-fun tp!2321928 () Bool)

(declare-fun tp!2321930 () Bool)

(assert (=> b!7843984 (= e!4637635 (and tp!2321928 tp!2321930))))

(declare-fun b!7843982 () Bool)

(declare-fun tp!2321926 () Bool)

(declare-fun tp!2321927 () Bool)

(assert (=> b!7843982 (= e!4637635 (and tp!2321926 tp!2321927))))

(declare-fun b!7843981 () Bool)

(assert (=> b!7843981 (= e!4637635 tp_is_empty!52481)))

(assert (=> b!7843860 (= tp!2321873 e!4637635)))

(declare-fun b!7843983 () Bool)

(declare-fun tp!2321929 () Bool)

(assert (=> b!7843983 (= e!4637635 tp!2321929)))

(assert (= (and b!7843860 ((_ is ElementMatch!21041) (regTwo!42594 r!27161))) b!7843981))

(assert (= (and b!7843860 ((_ is Concat!29886) (regTwo!42594 r!27161))) b!7843982))

(assert (= (and b!7843860 ((_ is Star!21041) (regTwo!42594 r!27161))) b!7843983))

(assert (= (and b!7843860 ((_ is Union!21041) (regTwo!42594 r!27161))) b!7843984))

(declare-fun b!7843993 () Bool)

(declare-fun e!4637638 () Bool)

(declare-fun tp!2321939 () Bool)

(declare-fun tp!2321941 () Bool)

(assert (=> b!7843993 (= e!4637638 (and tp!2321939 tp!2321941))))

(declare-fun b!7843991 () Bool)

(declare-fun tp!2321937 () Bool)

(declare-fun tp!2321938 () Bool)

(assert (=> b!7843991 (= e!4637638 (and tp!2321937 tp!2321938))))

(declare-fun b!7843990 () Bool)

(assert (=> b!7843990 (= e!4637638 tp_is_empty!52481)))

(assert (=> b!7843854 (= tp!2321874 e!4637638)))

(declare-fun b!7843992 () Bool)

(declare-fun tp!2321940 () Bool)

(assert (=> b!7843992 (= e!4637638 tp!2321940)))

(assert (= (and b!7843854 ((_ is ElementMatch!21041) (regOne!42595 r!27161))) b!7843990))

(assert (= (and b!7843854 ((_ is Concat!29886) (regOne!42595 r!27161))) b!7843991))

(assert (= (and b!7843854 ((_ is Star!21041) (regOne!42595 r!27161))) b!7843992))

(assert (= (and b!7843854 ((_ is Union!21041) (regOne!42595 r!27161))) b!7843993))

(declare-fun b!7843997 () Bool)

(declare-fun e!4637639 () Bool)

(declare-fun tp!2321946 () Bool)

(declare-fun tp!2321948 () Bool)

(assert (=> b!7843997 (= e!4637639 (and tp!2321946 tp!2321948))))

(declare-fun b!7843995 () Bool)

(declare-fun tp!2321944 () Bool)

(declare-fun tp!2321945 () Bool)

(assert (=> b!7843995 (= e!4637639 (and tp!2321944 tp!2321945))))

(declare-fun b!7843994 () Bool)

(assert (=> b!7843994 (= e!4637639 tp_is_empty!52481)))

(assert (=> b!7843854 (= tp!2321878 e!4637639)))

(declare-fun b!7843996 () Bool)

(declare-fun tp!2321947 () Bool)

(assert (=> b!7843996 (= e!4637639 tp!2321947)))

(assert (= (and b!7843854 ((_ is ElementMatch!21041) (regTwo!42595 r!27161))) b!7843994))

(assert (= (and b!7843854 ((_ is Concat!29886) (regTwo!42595 r!27161))) b!7843995))

(assert (= (and b!7843854 ((_ is Star!21041) (regTwo!42595 r!27161))) b!7843996))

(assert (= (and b!7843854 ((_ is Union!21041) (regTwo!42595 r!27161))) b!7843997))

(declare-fun b!7844006 () Bool)

(declare-fun e!4637643 () Bool)

(declare-fun tp!2321954 () Bool)

(assert (=> b!7844006 (= e!4637643 (and tp_is_empty!52481 tp!2321954))))

(assert (=> b!7843858 (= tp!2321875 e!4637643)))

(assert (= (and b!7843858 ((_ is Cons!73776) (t!388635 s!15118))) b!7844006))

(check-sat (not b!7843983) (not b!7843967) (not b!7844006) (not b!7843980) (not b!7843992) tp_is_empty!52481 (not b!7843996) (not bm!726854) (not b!7843968) (not b!7843978) (not d!2352677) (not b!7843995) (not b!7843876) (not b!7843984) (not bm!726853) (not b!7843982) (not b!7843874) (not b!7843993) (not b!7843979) (not b!7843934) (not b!7843991) (not b!7843966) (not b!7843997))
(check-sat)
