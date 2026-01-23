; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!743122 () Bool)

(assert start!743122)

(declare-fun b!7848761 () Bool)

(declare-fun res!3121294 () Bool)

(declare-fun e!4639828 () Bool)

(assert (=> b!7848761 (=> (not res!3121294) (not e!4639828))))

(declare-datatypes ((C!42484 0))(
  ( (C!42485 (val!31704 Int)) )
))
(declare-datatypes ((Regex!21079 0))(
  ( (ElementMatch!21079 (c!1442595 C!42484)) (Concat!29924 (regOne!42670 Regex!21079) (regTwo!42670 Regex!21079)) (EmptyExpr!21079) (Star!21079 (reg!21408 Regex!21079)) (EmptyLang!21079) (Union!21079 (regOne!42671 Regex!21079) (regTwo!42671 Regex!21079)) )
))
(declare-fun r2!6165 () Regex!21079)

(declare-datatypes ((List!73938 0))(
  ( (Nil!73814) (Cons!73814 (h!80262 C!42484) (t!388673 List!73938)) )
))
(declare-fun s2!3706 () List!73938)

(declare-fun matchR!10515 (Regex!21079 List!73938) Bool)

(assert (=> b!7848761 (= res!3121294 (matchR!10515 r2!6165 s2!3706))))

(declare-fun b!7848762 () Bool)

(declare-fun e!4639831 () Bool)

(declare-fun tp!2324163 () Bool)

(assert (=> b!7848762 (= e!4639831 tp!2324163)))

(declare-fun b!7848763 () Bool)

(declare-fun res!3121297 () Bool)

(assert (=> b!7848763 (=> (not res!3121297) (not e!4639828))))

(declare-fun r1!6227 () Regex!21079)

(declare-fun s1!4084 () List!73938)

(assert (=> b!7848763 (= res!3121297 (matchR!10515 r1!6227 s1!4084))))

(declare-fun b!7848764 () Bool)

(declare-fun e!4639830 () Bool)

(declare-fun tp_is_empty!52557 () Bool)

(assert (=> b!7848764 (= e!4639830 tp_is_empty!52557)))

(declare-fun b!7848765 () Bool)

(declare-fun lt!2679505 () Regex!21079)

(declare-fun validRegex!11489 (Regex!21079) Bool)

(assert (=> b!7848765 (= e!4639828 (not (validRegex!11489 lt!2679505)))))

(declare-fun lt!2679503 () List!73938)

(declare-fun ++!18087 (List!73938 List!73938) List!73938)

(assert (=> b!7848765 (= lt!2679503 (++!18087 s1!4084 s2!3706))))

(assert (=> b!7848765 (matchR!10515 lt!2679505 s2!3706)))

(assert (=> b!7848765 (= lt!2679505 (Concat!29924 r1!6227 r2!6165))))

(declare-datatypes ((Unit!168900 0))(
  ( (Unit!168901) )
))
(declare-fun lt!2679504 () Unit!168900)

(declare-fun lemmaRegexConcatWithNullableAcceptsSameStr!2 (Regex!21079 Regex!21079 List!73938) Unit!168900)

(assert (=> b!7848765 (= lt!2679504 (lemmaRegexConcatWithNullableAcceptsSameStr!2 r2!6165 r1!6227 s2!3706))))

(declare-fun b!7848766 () Bool)

(declare-fun tp!2324158 () Bool)

(declare-fun tp!2324159 () Bool)

(assert (=> b!7848766 (= e!4639830 (and tp!2324158 tp!2324159))))

(declare-fun b!7848767 () Bool)

(declare-fun res!3121293 () Bool)

(assert (=> b!7848767 (=> (not res!3121293) (not e!4639828))))

(assert (=> b!7848767 (= res!3121293 (validRegex!11489 r2!6165))))

(declare-fun b!7848768 () Bool)

(assert (=> b!7848768 (= e!4639831 tp_is_empty!52557)))

(declare-fun res!3121298 () Bool)

(assert (=> start!743122 (=> (not res!3121298) (not e!4639828))))

(assert (=> start!743122 (= res!3121298 (validRegex!11489 r1!6227))))

(assert (=> start!743122 e!4639828))

(assert (=> start!743122 e!4639831))

(assert (=> start!743122 e!4639830))

(declare-fun e!4639827 () Bool)

(assert (=> start!743122 e!4639827))

(declare-fun e!4639829 () Bool)

(assert (=> start!743122 e!4639829))

(declare-fun b!7848769 () Bool)

(declare-fun tp!2324155 () Bool)

(declare-fun tp!2324157 () Bool)

(assert (=> b!7848769 (= e!4639830 (and tp!2324155 tp!2324157))))

(declare-fun b!7848770 () Bool)

(declare-fun tp!2324160 () Bool)

(assert (=> b!7848770 (= e!4639830 tp!2324160)))

(declare-fun b!7848771 () Bool)

(declare-fun res!3121295 () Bool)

(assert (=> b!7848771 (=> (not res!3121295) (not e!4639828))))

(declare-fun nullable!9351 (Regex!21079) Bool)

(assert (=> b!7848771 (= res!3121295 (nullable!9351 r1!6227))))

(declare-fun b!7848772 () Bool)

(declare-fun tp!2324161 () Bool)

(declare-fun tp!2324164 () Bool)

(assert (=> b!7848772 (= e!4639831 (and tp!2324161 tp!2324164))))

(declare-fun b!7848773 () Bool)

(declare-fun tp!2324154 () Bool)

(assert (=> b!7848773 (= e!4639827 (and tp_is_empty!52557 tp!2324154))))

(declare-fun b!7848774 () Bool)

(declare-fun res!3121296 () Bool)

(assert (=> b!7848774 (=> (not res!3121296) (not e!4639828))))

(get-info :version)

(assert (=> b!7848774 (= res!3121296 (not ((_ is Cons!73814) s1!4084)))))

(declare-fun b!7848775 () Bool)

(declare-fun tp!2324153 () Bool)

(assert (=> b!7848775 (= e!4639829 (and tp_is_empty!52557 tp!2324153))))

(declare-fun b!7848776 () Bool)

(declare-fun tp!2324156 () Bool)

(declare-fun tp!2324162 () Bool)

(assert (=> b!7848776 (= e!4639831 (and tp!2324156 tp!2324162))))

(assert (= (and start!743122 res!3121298) b!7848767))

(assert (= (and b!7848767 res!3121293) b!7848763))

(assert (= (and b!7848763 res!3121297) b!7848761))

(assert (= (and b!7848761 res!3121294) b!7848774))

(assert (= (and b!7848774 res!3121296) b!7848771))

(assert (= (and b!7848771 res!3121295) b!7848765))

(assert (= (and start!743122 ((_ is ElementMatch!21079) r1!6227)) b!7848768))

(assert (= (and start!743122 ((_ is Concat!29924) r1!6227)) b!7848772))

(assert (= (and start!743122 ((_ is Star!21079) r1!6227)) b!7848762))

(assert (= (and start!743122 ((_ is Union!21079) r1!6227)) b!7848776))

(assert (= (and start!743122 ((_ is ElementMatch!21079) r2!6165)) b!7848764))

(assert (= (and start!743122 ((_ is Concat!29924) r2!6165)) b!7848769))

(assert (= (and start!743122 ((_ is Star!21079) r2!6165)) b!7848770))

(assert (= (and start!743122 ((_ is Union!21079) r2!6165)) b!7848766))

(assert (= (and start!743122 ((_ is Cons!73814) s1!4084)) b!7848773))

(assert (= (and start!743122 ((_ is Cons!73814) s2!3706)) b!7848775))

(declare-fun m!8257222 () Bool)

(assert (=> start!743122 m!8257222))

(declare-fun m!8257224 () Bool)

(assert (=> b!7848771 m!8257224))

(declare-fun m!8257226 () Bool)

(assert (=> b!7848765 m!8257226))

(declare-fun m!8257228 () Bool)

(assert (=> b!7848765 m!8257228))

(declare-fun m!8257230 () Bool)

(assert (=> b!7848765 m!8257230))

(declare-fun m!8257232 () Bool)

(assert (=> b!7848765 m!8257232))

(declare-fun m!8257234 () Bool)

(assert (=> b!7848767 m!8257234))

(declare-fun m!8257236 () Bool)

(assert (=> b!7848763 m!8257236))

(declare-fun m!8257238 () Bool)

(assert (=> b!7848761 m!8257238))

(check-sat (not b!7848776) (not b!7848765) (not b!7848769) (not b!7848771) (not b!7848775) (not b!7848773) (not b!7848770) (not b!7848767) (not b!7848761) tp_is_empty!52557 (not b!7848763) (not b!7848766) (not b!7848762) (not b!7848772) (not start!743122))
(check-sat)
(get-model)

(declare-fun c!1442607 () Bool)

(declare-fun bm!727331 () Bool)

(declare-fun c!1442606 () Bool)

(declare-fun call!727336 () Bool)

(assert (=> bm!727331 (= call!727336 (validRegex!11489 (ite c!1442607 (reg!21408 r2!6165) (ite c!1442606 (regOne!42671 r2!6165) (regTwo!42670 r2!6165)))))))

(declare-fun b!7848822 () Bool)

(declare-fun e!4639873 () Bool)

(declare-fun e!4639871 () Bool)

(assert (=> b!7848822 (= e!4639873 e!4639871)))

(declare-fun res!3121328 () Bool)

(assert (=> b!7848822 (=> (not res!3121328) (not e!4639871))))

(declare-fun call!727337 () Bool)

(assert (=> b!7848822 (= res!3121328 call!727337)))

(declare-fun b!7848823 () Bool)

(declare-fun call!727338 () Bool)

(assert (=> b!7848823 (= e!4639871 call!727338)))

(declare-fun b!7848824 () Bool)

(declare-fun res!3121327 () Bool)

(declare-fun e!4639869 () Bool)

(assert (=> b!7848824 (=> (not res!3121327) (not e!4639869))))

(assert (=> b!7848824 (= res!3121327 call!727338)))

(declare-fun e!4639867 () Bool)

(assert (=> b!7848824 (= e!4639867 e!4639869)))

(declare-fun b!7848825 () Bool)

(declare-fun e!4639870 () Bool)

(declare-fun e!4639872 () Bool)

(assert (=> b!7848825 (= e!4639870 e!4639872)))

(declare-fun res!3121326 () Bool)

(assert (=> b!7848825 (= res!3121326 (not (nullable!9351 (reg!21408 r2!6165))))))

(assert (=> b!7848825 (=> (not res!3121326) (not e!4639872))))

(declare-fun bm!727332 () Bool)

(assert (=> bm!727332 (= call!727337 (validRegex!11489 (ite c!1442606 (regTwo!42671 r2!6165) (regOne!42670 r2!6165))))))

(declare-fun b!7848826 () Bool)

(declare-fun res!3121325 () Bool)

(assert (=> b!7848826 (=> res!3121325 e!4639873)))

(assert (=> b!7848826 (= res!3121325 (not ((_ is Concat!29924) r2!6165)))))

(assert (=> b!7848826 (= e!4639867 e!4639873)))

(declare-fun b!7848827 () Bool)

(declare-fun e!4639868 () Bool)

(assert (=> b!7848827 (= e!4639868 e!4639870)))

(assert (=> b!7848827 (= c!1442607 ((_ is Star!21079) r2!6165))))

(declare-fun bm!727333 () Bool)

(assert (=> bm!727333 (= call!727338 call!727336)))

(declare-fun b!7848828 () Bool)

(assert (=> b!7848828 (= e!4639870 e!4639867)))

(assert (=> b!7848828 (= c!1442606 ((_ is Union!21079) r2!6165))))

(declare-fun d!2353018 () Bool)

(declare-fun res!3121324 () Bool)

(assert (=> d!2353018 (=> res!3121324 e!4639868)))

(assert (=> d!2353018 (= res!3121324 ((_ is ElementMatch!21079) r2!6165))))

(assert (=> d!2353018 (= (validRegex!11489 r2!6165) e!4639868)))

(declare-fun b!7848829 () Bool)

(assert (=> b!7848829 (= e!4639872 call!727336)))

(declare-fun b!7848830 () Bool)

(assert (=> b!7848830 (= e!4639869 call!727337)))

(assert (= (and d!2353018 (not res!3121324)) b!7848827))

(assert (= (and b!7848827 c!1442607) b!7848825))

(assert (= (and b!7848827 (not c!1442607)) b!7848828))

(assert (= (and b!7848825 res!3121326) b!7848829))

(assert (= (and b!7848828 c!1442606) b!7848824))

(assert (= (and b!7848828 (not c!1442606)) b!7848826))

(assert (= (and b!7848824 res!3121327) b!7848830))

(assert (= (and b!7848826 (not res!3121325)) b!7848822))

(assert (= (and b!7848822 res!3121328) b!7848823))

(assert (= (or b!7848824 b!7848823) bm!727333))

(assert (= (or b!7848830 b!7848822) bm!727332))

(assert (= (or b!7848829 bm!727333) bm!727331))

(declare-fun m!8257246 () Bool)

(assert (=> bm!727331 m!8257246))

(declare-fun m!8257248 () Bool)

(assert (=> b!7848825 m!8257248))

(declare-fun m!8257250 () Bool)

(assert (=> bm!727332 m!8257250))

(assert (=> b!7848767 d!2353018))

(declare-fun d!2353024 () Bool)

(declare-fun nullableFct!3682 (Regex!21079) Bool)

(assert (=> d!2353024 (= (nullable!9351 r1!6227) (nullableFct!3682 r1!6227))))

(declare-fun bs!1967057 () Bool)

(assert (= bs!1967057 d!2353024))

(declare-fun m!8257258 () Bool)

(assert (=> bs!1967057 m!8257258))

(assert (=> b!7848771 d!2353024))

(declare-fun c!1442610 () Bool)

(declare-fun bm!727337 () Bool)

(declare-fun call!727342 () Bool)

(declare-fun c!1442611 () Bool)

(assert (=> bm!727337 (= call!727342 (validRegex!11489 (ite c!1442611 (reg!21408 r1!6227) (ite c!1442610 (regOne!42671 r1!6227) (regTwo!42670 r1!6227)))))))

(declare-fun b!7848840 () Bool)

(declare-fun e!4639887 () Bool)

(declare-fun e!4639885 () Bool)

(assert (=> b!7848840 (= e!4639887 e!4639885)))

(declare-fun res!3121338 () Bool)

(assert (=> b!7848840 (=> (not res!3121338) (not e!4639885))))

(declare-fun call!727343 () Bool)

(assert (=> b!7848840 (= res!3121338 call!727343)))

(declare-fun b!7848841 () Bool)

(declare-fun call!727344 () Bool)

(assert (=> b!7848841 (= e!4639885 call!727344)))

(declare-fun b!7848842 () Bool)

(declare-fun res!3121337 () Bool)

(declare-fun e!4639883 () Bool)

(assert (=> b!7848842 (=> (not res!3121337) (not e!4639883))))

(assert (=> b!7848842 (= res!3121337 call!727344)))

(declare-fun e!4639881 () Bool)

(assert (=> b!7848842 (= e!4639881 e!4639883)))

(declare-fun b!7848843 () Bool)

(declare-fun e!4639884 () Bool)

(declare-fun e!4639886 () Bool)

(assert (=> b!7848843 (= e!4639884 e!4639886)))

(declare-fun res!3121336 () Bool)

(assert (=> b!7848843 (= res!3121336 (not (nullable!9351 (reg!21408 r1!6227))))))

(assert (=> b!7848843 (=> (not res!3121336) (not e!4639886))))

(declare-fun bm!727338 () Bool)

(assert (=> bm!727338 (= call!727343 (validRegex!11489 (ite c!1442610 (regTwo!42671 r1!6227) (regOne!42670 r1!6227))))))

(declare-fun b!7848844 () Bool)

(declare-fun res!3121335 () Bool)

(assert (=> b!7848844 (=> res!3121335 e!4639887)))

(assert (=> b!7848844 (= res!3121335 (not ((_ is Concat!29924) r1!6227)))))

(assert (=> b!7848844 (= e!4639881 e!4639887)))

(declare-fun b!7848845 () Bool)

(declare-fun e!4639882 () Bool)

(assert (=> b!7848845 (= e!4639882 e!4639884)))

(assert (=> b!7848845 (= c!1442611 ((_ is Star!21079) r1!6227))))

(declare-fun bm!727339 () Bool)

(assert (=> bm!727339 (= call!727344 call!727342)))

(declare-fun b!7848846 () Bool)

(assert (=> b!7848846 (= e!4639884 e!4639881)))

(assert (=> b!7848846 (= c!1442610 ((_ is Union!21079) r1!6227))))

(declare-fun d!2353028 () Bool)

(declare-fun res!3121334 () Bool)

(assert (=> d!2353028 (=> res!3121334 e!4639882)))

(assert (=> d!2353028 (= res!3121334 ((_ is ElementMatch!21079) r1!6227))))

(assert (=> d!2353028 (= (validRegex!11489 r1!6227) e!4639882)))

(declare-fun b!7848847 () Bool)

(assert (=> b!7848847 (= e!4639886 call!727342)))

(declare-fun b!7848848 () Bool)

(assert (=> b!7848848 (= e!4639883 call!727343)))

(assert (= (and d!2353028 (not res!3121334)) b!7848845))

(assert (= (and b!7848845 c!1442611) b!7848843))

(assert (= (and b!7848845 (not c!1442611)) b!7848846))

(assert (= (and b!7848843 res!3121336) b!7848847))

(assert (= (and b!7848846 c!1442610) b!7848842))

(assert (= (and b!7848846 (not c!1442610)) b!7848844))

(assert (= (and b!7848842 res!3121337) b!7848848))

(assert (= (and b!7848844 (not res!3121335)) b!7848840))

(assert (= (and b!7848840 res!3121338) b!7848841))

(assert (= (or b!7848842 b!7848841) bm!727339))

(assert (= (or b!7848848 b!7848840) bm!727338))

(assert (= (or b!7848847 bm!727339) bm!727337))

(declare-fun m!8257260 () Bool)

(assert (=> bm!727337 m!8257260))

(declare-fun m!8257262 () Bool)

(assert (=> b!7848843 m!8257262))

(declare-fun m!8257264 () Bool)

(assert (=> bm!727338 m!8257264))

(assert (=> start!743122 d!2353028))

(declare-fun b!7848919 () Bool)

(declare-fun e!4639927 () Bool)

(declare-fun lt!2679511 () Bool)

(declare-fun call!727350 () Bool)

(assert (=> b!7848919 (= e!4639927 (= lt!2679511 call!727350))))

(declare-fun bm!727345 () Bool)

(declare-fun isEmpty!42325 (List!73938) Bool)

(assert (=> bm!727345 (= call!727350 (isEmpty!42325 s2!3706))))

(declare-fun b!7848920 () Bool)

(declare-fun res!3121386 () Bool)

(declare-fun e!4639929 () Bool)

(assert (=> b!7848920 (=> (not res!3121386) (not e!4639929))))

(declare-fun tail!15578 (List!73938) List!73938)

(assert (=> b!7848920 (= res!3121386 (isEmpty!42325 (tail!15578 s2!3706)))))

(declare-fun b!7848921 () Bool)

(declare-fun e!4639925 () Bool)

(assert (=> b!7848921 (= e!4639927 e!4639925)))

(declare-fun c!1442629 () Bool)

(assert (=> b!7848921 (= c!1442629 ((_ is EmptyLang!21079) r2!6165))))

(declare-fun b!7848923 () Bool)

(declare-fun res!3121381 () Bool)

(declare-fun e!4639923 () Bool)

(assert (=> b!7848923 (=> res!3121381 e!4639923)))

(assert (=> b!7848923 (= res!3121381 (not (isEmpty!42325 (tail!15578 s2!3706))))))

(declare-fun b!7848924 () Bool)

(declare-fun e!4639924 () Bool)

(declare-fun e!4639926 () Bool)

(assert (=> b!7848924 (= e!4639924 e!4639926)))

(declare-fun res!3121383 () Bool)

(assert (=> b!7848924 (=> (not res!3121383) (not e!4639926))))

(assert (=> b!7848924 (= res!3121383 (not lt!2679511))))

(declare-fun b!7848925 () Bool)

(declare-fun res!3121384 () Bool)

(assert (=> b!7848925 (=> res!3121384 e!4639924)))

(assert (=> b!7848925 (= res!3121384 (not ((_ is ElementMatch!21079) r2!6165)))))

(assert (=> b!7848925 (= e!4639925 e!4639924)))

(declare-fun b!7848926 () Bool)

(declare-fun res!3121385 () Bool)

(assert (=> b!7848926 (=> res!3121385 e!4639924)))

(assert (=> b!7848926 (= res!3121385 e!4639929)))

(declare-fun res!3121382 () Bool)

(assert (=> b!7848926 (=> (not res!3121382) (not e!4639929))))

(assert (=> b!7848926 (= res!3121382 lt!2679511)))

(declare-fun b!7848927 () Bool)

(declare-fun head!16036 (List!73938) C!42484)

(assert (=> b!7848927 (= e!4639929 (= (head!16036 s2!3706) (c!1442595 r2!6165)))))

(declare-fun b!7848928 () Bool)

(declare-fun e!4639928 () Bool)

(declare-fun derivativeStep!6314 (Regex!21079 C!42484) Regex!21079)

(assert (=> b!7848928 (= e!4639928 (matchR!10515 (derivativeStep!6314 r2!6165 (head!16036 s2!3706)) (tail!15578 s2!3706)))))

(declare-fun b!7848929 () Bool)

(declare-fun res!3121380 () Bool)

(assert (=> b!7848929 (=> (not res!3121380) (not e!4639929))))

(assert (=> b!7848929 (= res!3121380 (not call!727350))))

(declare-fun b!7848930 () Bool)

(assert (=> b!7848930 (= e!4639925 (not lt!2679511))))

(declare-fun b!7848931 () Bool)

(assert (=> b!7848931 (= e!4639928 (nullable!9351 r2!6165))))

(declare-fun b!7848932 () Bool)

(assert (=> b!7848932 (= e!4639923 (not (= (head!16036 s2!3706) (c!1442595 r2!6165))))))

(declare-fun d!2353030 () Bool)

(assert (=> d!2353030 e!4639927))

(declare-fun c!1442627 () Bool)

(assert (=> d!2353030 (= c!1442627 ((_ is EmptyExpr!21079) r2!6165))))

(assert (=> d!2353030 (= lt!2679511 e!4639928)))

(declare-fun c!1442628 () Bool)

(assert (=> d!2353030 (= c!1442628 (isEmpty!42325 s2!3706))))

(assert (=> d!2353030 (validRegex!11489 r2!6165)))

(assert (=> d!2353030 (= (matchR!10515 r2!6165 s2!3706) lt!2679511)))

(declare-fun b!7848922 () Bool)

(assert (=> b!7848922 (= e!4639926 e!4639923)))

(declare-fun res!3121379 () Bool)

(assert (=> b!7848922 (=> res!3121379 e!4639923)))

(assert (=> b!7848922 (= res!3121379 call!727350)))

(assert (= (and d!2353030 c!1442628) b!7848931))

(assert (= (and d!2353030 (not c!1442628)) b!7848928))

(assert (= (and d!2353030 c!1442627) b!7848919))

(assert (= (and d!2353030 (not c!1442627)) b!7848921))

(assert (= (and b!7848921 c!1442629) b!7848930))

(assert (= (and b!7848921 (not c!1442629)) b!7848925))

(assert (= (and b!7848925 (not res!3121384)) b!7848926))

(assert (= (and b!7848926 res!3121382) b!7848929))

(assert (= (and b!7848929 res!3121380) b!7848920))

(assert (= (and b!7848920 res!3121386) b!7848927))

(assert (= (and b!7848926 (not res!3121385)) b!7848924))

(assert (= (and b!7848924 res!3121383) b!7848922))

(assert (= (and b!7848922 (not res!3121379)) b!7848923))

(assert (= (and b!7848923 (not res!3121381)) b!7848932))

(assert (= (or b!7848919 b!7848922 b!7848929) bm!727345))

(declare-fun m!8257278 () Bool)

(assert (=> b!7848923 m!8257278))

(assert (=> b!7848923 m!8257278))

(declare-fun m!8257280 () Bool)

(assert (=> b!7848923 m!8257280))

(declare-fun m!8257284 () Bool)

(assert (=> b!7848927 m!8257284))

(assert (=> b!7848928 m!8257284))

(assert (=> b!7848928 m!8257284))

(declare-fun m!8257288 () Bool)

(assert (=> b!7848928 m!8257288))

(assert (=> b!7848928 m!8257278))

(assert (=> b!7848928 m!8257288))

(assert (=> b!7848928 m!8257278))

(declare-fun m!8257292 () Bool)

(assert (=> b!7848928 m!8257292))

(declare-fun m!8257294 () Bool)

(assert (=> b!7848931 m!8257294))

(declare-fun m!8257296 () Bool)

(assert (=> d!2353030 m!8257296))

(assert (=> d!2353030 m!8257234))

(assert (=> bm!727345 m!8257296))

(assert (=> b!7848920 m!8257278))

(assert (=> b!7848920 m!8257278))

(assert (=> b!7848920 m!8257280))

(assert (=> b!7848932 m!8257284))

(assert (=> b!7848761 d!2353030))

(declare-fun c!1442632 () Bool)

(declare-fun call!727354 () Bool)

(declare-fun c!1442633 () Bool)

(declare-fun bm!727349 () Bool)

(assert (=> bm!727349 (= call!727354 (validRegex!11489 (ite c!1442633 (reg!21408 lt!2679505) (ite c!1442632 (regOne!42671 lt!2679505) (regTwo!42670 lt!2679505)))))))

(declare-fun b!7848942 () Bool)

(declare-fun e!4639943 () Bool)

(declare-fun e!4639941 () Bool)

(assert (=> b!7848942 (= e!4639943 e!4639941)))

(declare-fun res!3121396 () Bool)

(assert (=> b!7848942 (=> (not res!3121396) (not e!4639941))))

(declare-fun call!727355 () Bool)

(assert (=> b!7848942 (= res!3121396 call!727355)))

(declare-fun b!7848943 () Bool)

(declare-fun call!727356 () Bool)

(assert (=> b!7848943 (= e!4639941 call!727356)))

(declare-fun b!7848944 () Bool)

(declare-fun res!3121395 () Bool)

(declare-fun e!4639939 () Bool)

(assert (=> b!7848944 (=> (not res!3121395) (not e!4639939))))

(assert (=> b!7848944 (= res!3121395 call!727356)))

(declare-fun e!4639937 () Bool)

(assert (=> b!7848944 (= e!4639937 e!4639939)))

(declare-fun b!7848945 () Bool)

(declare-fun e!4639940 () Bool)

(declare-fun e!4639942 () Bool)

(assert (=> b!7848945 (= e!4639940 e!4639942)))

(declare-fun res!3121394 () Bool)

(assert (=> b!7848945 (= res!3121394 (not (nullable!9351 (reg!21408 lt!2679505))))))

(assert (=> b!7848945 (=> (not res!3121394) (not e!4639942))))

(declare-fun bm!727350 () Bool)

(assert (=> bm!727350 (= call!727355 (validRegex!11489 (ite c!1442632 (regTwo!42671 lt!2679505) (regOne!42670 lt!2679505))))))

(declare-fun b!7848946 () Bool)

(declare-fun res!3121393 () Bool)

(assert (=> b!7848946 (=> res!3121393 e!4639943)))

(assert (=> b!7848946 (= res!3121393 (not ((_ is Concat!29924) lt!2679505)))))

(assert (=> b!7848946 (= e!4639937 e!4639943)))

(declare-fun b!7848947 () Bool)

(declare-fun e!4639938 () Bool)

(assert (=> b!7848947 (= e!4639938 e!4639940)))

(assert (=> b!7848947 (= c!1442633 ((_ is Star!21079) lt!2679505))))

(declare-fun bm!727351 () Bool)

(assert (=> bm!727351 (= call!727356 call!727354)))

(declare-fun b!7848948 () Bool)

(assert (=> b!7848948 (= e!4639940 e!4639937)))

(assert (=> b!7848948 (= c!1442632 ((_ is Union!21079) lt!2679505))))

(declare-fun d!2353036 () Bool)

(declare-fun res!3121392 () Bool)

(assert (=> d!2353036 (=> res!3121392 e!4639938)))

(assert (=> d!2353036 (= res!3121392 ((_ is ElementMatch!21079) lt!2679505))))

(assert (=> d!2353036 (= (validRegex!11489 lt!2679505) e!4639938)))

(declare-fun b!7848949 () Bool)

(assert (=> b!7848949 (= e!4639942 call!727354)))

(declare-fun b!7848950 () Bool)

(assert (=> b!7848950 (= e!4639939 call!727355)))

(assert (= (and d!2353036 (not res!3121392)) b!7848947))

(assert (= (and b!7848947 c!1442633) b!7848945))

(assert (= (and b!7848947 (not c!1442633)) b!7848948))

(assert (= (and b!7848945 res!3121394) b!7848949))

(assert (= (and b!7848948 c!1442632) b!7848944))

(assert (= (and b!7848948 (not c!1442632)) b!7848946))

(assert (= (and b!7848944 res!3121395) b!7848950))

(assert (= (and b!7848946 (not res!3121393)) b!7848942))

(assert (= (and b!7848942 res!3121396) b!7848943))

(assert (= (or b!7848944 b!7848943) bm!727351))

(assert (= (or b!7848950 b!7848942) bm!727350))

(assert (= (or b!7848949 bm!727351) bm!727349))

(declare-fun m!8257298 () Bool)

(assert (=> bm!727349 m!8257298))

(declare-fun m!8257300 () Bool)

(assert (=> b!7848945 m!8257300))

(declare-fun m!8257302 () Bool)

(assert (=> bm!727350 m!8257302))

(assert (=> b!7848765 d!2353036))

(declare-fun b!7848985 () Bool)

(declare-fun e!4639962 () List!73938)

(assert (=> b!7848985 (= e!4639962 s2!3706)))

(declare-fun d!2353038 () Bool)

(declare-fun e!4639961 () Bool)

(assert (=> d!2353038 e!4639961))

(declare-fun res!3121416 () Bool)

(assert (=> d!2353038 (=> (not res!3121416) (not e!4639961))))

(declare-fun lt!2679518 () List!73938)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!15671 (List!73938) (InoxSet C!42484))

(assert (=> d!2353038 (= res!3121416 (= (content!15671 lt!2679518) ((_ map or) (content!15671 s1!4084) (content!15671 s2!3706))))))

(assert (=> d!2353038 (= lt!2679518 e!4639962)))

(declare-fun c!1442642 () Bool)

(assert (=> d!2353038 (= c!1442642 ((_ is Nil!73814) s1!4084))))

(assert (=> d!2353038 (= (++!18087 s1!4084 s2!3706) lt!2679518)))

(declare-fun b!7848987 () Bool)

(declare-fun res!3121415 () Bool)

(assert (=> b!7848987 (=> (not res!3121415) (not e!4639961))))

(declare-fun size!42824 (List!73938) Int)

(assert (=> b!7848987 (= res!3121415 (= (size!42824 lt!2679518) (+ (size!42824 s1!4084) (size!42824 s2!3706))))))

(declare-fun b!7848986 () Bool)

(assert (=> b!7848986 (= e!4639962 (Cons!73814 (h!80262 s1!4084) (++!18087 (t!388673 s1!4084) s2!3706)))))

(declare-fun b!7848988 () Bool)

(assert (=> b!7848988 (= e!4639961 (or (not (= s2!3706 Nil!73814)) (= lt!2679518 s1!4084)))))

(assert (= (and d!2353038 c!1442642) b!7848985))

(assert (= (and d!2353038 (not c!1442642)) b!7848986))

(assert (= (and d!2353038 res!3121416) b!7848987))

(assert (= (and b!7848987 res!3121415) b!7848988))

(declare-fun m!8257318 () Bool)

(assert (=> d!2353038 m!8257318))

(declare-fun m!8257320 () Bool)

(assert (=> d!2353038 m!8257320))

(declare-fun m!8257322 () Bool)

(assert (=> d!2353038 m!8257322))

(declare-fun m!8257324 () Bool)

(assert (=> b!7848987 m!8257324))

(declare-fun m!8257326 () Bool)

(assert (=> b!7848987 m!8257326))

(declare-fun m!8257328 () Bool)

(assert (=> b!7848987 m!8257328))

(declare-fun m!8257330 () Bool)

(assert (=> b!7848986 m!8257330))

(assert (=> b!7848765 d!2353038))

(declare-fun b!7848989 () Bool)

(declare-fun e!4639967 () Bool)

(declare-fun lt!2679519 () Bool)

(declare-fun call!727358 () Bool)

(assert (=> b!7848989 (= e!4639967 (= lt!2679519 call!727358))))

(declare-fun bm!727353 () Bool)

(assert (=> bm!727353 (= call!727358 (isEmpty!42325 s2!3706))))

(declare-fun b!7848990 () Bool)

(declare-fun res!3121424 () Bool)

(declare-fun e!4639969 () Bool)

(assert (=> b!7848990 (=> (not res!3121424) (not e!4639969))))

(assert (=> b!7848990 (= res!3121424 (isEmpty!42325 (tail!15578 s2!3706)))))

(declare-fun b!7848991 () Bool)

(declare-fun e!4639965 () Bool)

(assert (=> b!7848991 (= e!4639967 e!4639965)))

(declare-fun c!1442645 () Bool)

(assert (=> b!7848991 (= c!1442645 ((_ is EmptyLang!21079) lt!2679505))))

(declare-fun b!7848993 () Bool)

(declare-fun res!3121419 () Bool)

(declare-fun e!4639963 () Bool)

(assert (=> b!7848993 (=> res!3121419 e!4639963)))

(assert (=> b!7848993 (= res!3121419 (not (isEmpty!42325 (tail!15578 s2!3706))))))

(declare-fun b!7848994 () Bool)

(declare-fun e!4639964 () Bool)

(declare-fun e!4639966 () Bool)

(assert (=> b!7848994 (= e!4639964 e!4639966)))

(declare-fun res!3121421 () Bool)

(assert (=> b!7848994 (=> (not res!3121421) (not e!4639966))))

(assert (=> b!7848994 (= res!3121421 (not lt!2679519))))

(declare-fun b!7848995 () Bool)

(declare-fun res!3121422 () Bool)

(assert (=> b!7848995 (=> res!3121422 e!4639964)))

(assert (=> b!7848995 (= res!3121422 (not ((_ is ElementMatch!21079) lt!2679505)))))

(assert (=> b!7848995 (= e!4639965 e!4639964)))

(declare-fun b!7848996 () Bool)

(declare-fun res!3121423 () Bool)

(assert (=> b!7848996 (=> res!3121423 e!4639964)))

(assert (=> b!7848996 (= res!3121423 e!4639969)))

(declare-fun res!3121420 () Bool)

(assert (=> b!7848996 (=> (not res!3121420) (not e!4639969))))

(assert (=> b!7848996 (= res!3121420 lt!2679519)))

(declare-fun b!7848997 () Bool)

(assert (=> b!7848997 (= e!4639969 (= (head!16036 s2!3706) (c!1442595 lt!2679505)))))

(declare-fun b!7848998 () Bool)

(declare-fun e!4639968 () Bool)

(assert (=> b!7848998 (= e!4639968 (matchR!10515 (derivativeStep!6314 lt!2679505 (head!16036 s2!3706)) (tail!15578 s2!3706)))))

(declare-fun b!7848999 () Bool)

(declare-fun res!3121418 () Bool)

(assert (=> b!7848999 (=> (not res!3121418) (not e!4639969))))

(assert (=> b!7848999 (= res!3121418 (not call!727358))))

(declare-fun b!7849000 () Bool)

(assert (=> b!7849000 (= e!4639965 (not lt!2679519))))

(declare-fun b!7849001 () Bool)

(assert (=> b!7849001 (= e!4639968 (nullable!9351 lt!2679505))))

(declare-fun b!7849002 () Bool)

(assert (=> b!7849002 (= e!4639963 (not (= (head!16036 s2!3706) (c!1442595 lt!2679505))))))

(declare-fun d!2353042 () Bool)

(assert (=> d!2353042 e!4639967))

(declare-fun c!1442643 () Bool)

(assert (=> d!2353042 (= c!1442643 ((_ is EmptyExpr!21079) lt!2679505))))

(assert (=> d!2353042 (= lt!2679519 e!4639968)))

(declare-fun c!1442644 () Bool)

(assert (=> d!2353042 (= c!1442644 (isEmpty!42325 s2!3706))))

(assert (=> d!2353042 (validRegex!11489 lt!2679505)))

(assert (=> d!2353042 (= (matchR!10515 lt!2679505 s2!3706) lt!2679519)))

(declare-fun b!7848992 () Bool)

(assert (=> b!7848992 (= e!4639966 e!4639963)))

(declare-fun res!3121417 () Bool)

(assert (=> b!7848992 (=> res!3121417 e!4639963)))

(assert (=> b!7848992 (= res!3121417 call!727358)))

(assert (= (and d!2353042 c!1442644) b!7849001))

(assert (= (and d!2353042 (not c!1442644)) b!7848998))

(assert (= (and d!2353042 c!1442643) b!7848989))

(assert (= (and d!2353042 (not c!1442643)) b!7848991))

(assert (= (and b!7848991 c!1442645) b!7849000))

(assert (= (and b!7848991 (not c!1442645)) b!7848995))

(assert (= (and b!7848995 (not res!3121422)) b!7848996))

(assert (= (and b!7848996 res!3121420) b!7848999))

(assert (= (and b!7848999 res!3121418) b!7848990))

(assert (= (and b!7848990 res!3121424) b!7848997))

(assert (= (and b!7848996 (not res!3121423)) b!7848994))

(assert (= (and b!7848994 res!3121421) b!7848992))

(assert (= (and b!7848992 (not res!3121417)) b!7848993))

(assert (= (and b!7848993 (not res!3121419)) b!7849002))

(assert (= (or b!7848989 b!7848992 b!7848999) bm!727353))

(assert (=> b!7848993 m!8257278))

(assert (=> b!7848993 m!8257278))

(assert (=> b!7848993 m!8257280))

(assert (=> b!7848997 m!8257284))

(assert (=> b!7848998 m!8257284))

(assert (=> b!7848998 m!8257284))

(declare-fun m!8257346 () Bool)

(assert (=> b!7848998 m!8257346))

(assert (=> b!7848998 m!8257278))

(assert (=> b!7848998 m!8257346))

(assert (=> b!7848998 m!8257278))

(declare-fun m!8257348 () Bool)

(assert (=> b!7848998 m!8257348))

(declare-fun m!8257350 () Bool)

(assert (=> b!7849001 m!8257350))

(assert (=> d!2353042 m!8257296))

(assert (=> d!2353042 m!8257226))

(assert (=> bm!727353 m!8257296))

(assert (=> b!7848990 m!8257278))

(assert (=> b!7848990 m!8257278))

(assert (=> b!7848990 m!8257280))

(assert (=> b!7849002 m!8257284))

(assert (=> b!7848765 d!2353042))

(declare-fun d!2353046 () Bool)

(assert (=> d!2353046 (matchR!10515 (Concat!29924 r1!6227 r2!6165) s2!3706)))

(declare-fun lt!2679526 () Unit!168900)

(declare-fun choose!59646 (Regex!21079 Regex!21079 List!73938) Unit!168900)

(assert (=> d!2353046 (= lt!2679526 (choose!59646 r2!6165 r1!6227 s2!3706))))

(assert (=> d!2353046 (validRegex!11489 r2!6165)))

(assert (=> d!2353046 (= (lemmaRegexConcatWithNullableAcceptsSameStr!2 r2!6165 r1!6227 s2!3706) lt!2679526)))

(declare-fun bs!1967060 () Bool)

(assert (= bs!1967060 d!2353046))

(declare-fun m!8257358 () Bool)

(assert (=> bs!1967060 m!8257358))

(declare-fun m!8257360 () Bool)

(assert (=> bs!1967060 m!8257360))

(assert (=> bs!1967060 m!8257234))

(assert (=> b!7848765 d!2353046))

(declare-fun b!7849017 () Bool)

(declare-fun e!4639981 () Bool)

(declare-fun lt!2679527 () Bool)

(declare-fun call!727360 () Bool)

(assert (=> b!7849017 (= e!4639981 (= lt!2679527 call!727360))))

(declare-fun bm!727355 () Bool)

(assert (=> bm!727355 (= call!727360 (isEmpty!42325 s1!4084))))

(declare-fun b!7849018 () Bool)

(declare-fun res!3121440 () Bool)

(declare-fun e!4639983 () Bool)

(assert (=> b!7849018 (=> (not res!3121440) (not e!4639983))))

(assert (=> b!7849018 (= res!3121440 (isEmpty!42325 (tail!15578 s1!4084)))))

(declare-fun b!7849019 () Bool)

(declare-fun e!4639979 () Bool)

(assert (=> b!7849019 (= e!4639981 e!4639979)))

(declare-fun c!1442651 () Bool)

(assert (=> b!7849019 (= c!1442651 ((_ is EmptyLang!21079) r1!6227))))

(declare-fun b!7849021 () Bool)

(declare-fun res!3121435 () Bool)

(declare-fun e!4639977 () Bool)

(assert (=> b!7849021 (=> res!3121435 e!4639977)))

(assert (=> b!7849021 (= res!3121435 (not (isEmpty!42325 (tail!15578 s1!4084))))))

(declare-fun b!7849022 () Bool)

(declare-fun e!4639978 () Bool)

(declare-fun e!4639980 () Bool)

(assert (=> b!7849022 (= e!4639978 e!4639980)))

(declare-fun res!3121437 () Bool)

(assert (=> b!7849022 (=> (not res!3121437) (not e!4639980))))

(assert (=> b!7849022 (= res!3121437 (not lt!2679527))))

(declare-fun b!7849023 () Bool)

(declare-fun res!3121438 () Bool)

(assert (=> b!7849023 (=> res!3121438 e!4639978)))

(assert (=> b!7849023 (= res!3121438 (not ((_ is ElementMatch!21079) r1!6227)))))

(assert (=> b!7849023 (= e!4639979 e!4639978)))

(declare-fun b!7849024 () Bool)

(declare-fun res!3121439 () Bool)

(assert (=> b!7849024 (=> res!3121439 e!4639978)))

(assert (=> b!7849024 (= res!3121439 e!4639983)))

(declare-fun res!3121436 () Bool)

(assert (=> b!7849024 (=> (not res!3121436) (not e!4639983))))

(assert (=> b!7849024 (= res!3121436 lt!2679527)))

(declare-fun b!7849025 () Bool)

(assert (=> b!7849025 (= e!4639983 (= (head!16036 s1!4084) (c!1442595 r1!6227)))))

(declare-fun b!7849026 () Bool)

(declare-fun e!4639982 () Bool)

(assert (=> b!7849026 (= e!4639982 (matchR!10515 (derivativeStep!6314 r1!6227 (head!16036 s1!4084)) (tail!15578 s1!4084)))))

(declare-fun b!7849027 () Bool)

(declare-fun res!3121434 () Bool)

(assert (=> b!7849027 (=> (not res!3121434) (not e!4639983))))

(assert (=> b!7849027 (= res!3121434 (not call!727360))))

(declare-fun b!7849028 () Bool)

(assert (=> b!7849028 (= e!4639979 (not lt!2679527))))

(declare-fun b!7849029 () Bool)

(assert (=> b!7849029 (= e!4639982 (nullable!9351 r1!6227))))

(declare-fun b!7849030 () Bool)

(assert (=> b!7849030 (= e!4639977 (not (= (head!16036 s1!4084) (c!1442595 r1!6227))))))

(declare-fun d!2353052 () Bool)

(assert (=> d!2353052 e!4639981))

(declare-fun c!1442649 () Bool)

(assert (=> d!2353052 (= c!1442649 ((_ is EmptyExpr!21079) r1!6227))))

(assert (=> d!2353052 (= lt!2679527 e!4639982)))

(declare-fun c!1442650 () Bool)

(assert (=> d!2353052 (= c!1442650 (isEmpty!42325 s1!4084))))

(assert (=> d!2353052 (validRegex!11489 r1!6227)))

(assert (=> d!2353052 (= (matchR!10515 r1!6227 s1!4084) lt!2679527)))

(declare-fun b!7849020 () Bool)

(assert (=> b!7849020 (= e!4639980 e!4639977)))

(declare-fun res!3121433 () Bool)

(assert (=> b!7849020 (=> res!3121433 e!4639977)))

(assert (=> b!7849020 (= res!3121433 call!727360)))

(assert (= (and d!2353052 c!1442650) b!7849029))

(assert (= (and d!2353052 (not c!1442650)) b!7849026))

(assert (= (and d!2353052 c!1442649) b!7849017))

(assert (= (and d!2353052 (not c!1442649)) b!7849019))

(assert (= (and b!7849019 c!1442651) b!7849028))

(assert (= (and b!7849019 (not c!1442651)) b!7849023))

(assert (= (and b!7849023 (not res!3121438)) b!7849024))

(assert (= (and b!7849024 res!3121436) b!7849027))

(assert (= (and b!7849027 res!3121434) b!7849018))

(assert (= (and b!7849018 res!3121440) b!7849025))

(assert (= (and b!7849024 (not res!3121439)) b!7849022))

(assert (= (and b!7849022 res!3121437) b!7849020))

(assert (= (and b!7849020 (not res!3121433)) b!7849021))

(assert (= (and b!7849021 (not res!3121435)) b!7849030))

(assert (= (or b!7849017 b!7849020 b!7849027) bm!727355))

(declare-fun m!8257368 () Bool)

(assert (=> b!7849021 m!8257368))

(assert (=> b!7849021 m!8257368))

(declare-fun m!8257370 () Bool)

(assert (=> b!7849021 m!8257370))

(declare-fun m!8257372 () Bool)

(assert (=> b!7849025 m!8257372))

(assert (=> b!7849026 m!8257372))

(assert (=> b!7849026 m!8257372))

(declare-fun m!8257374 () Bool)

(assert (=> b!7849026 m!8257374))

(assert (=> b!7849026 m!8257368))

(assert (=> b!7849026 m!8257374))

(assert (=> b!7849026 m!8257368))

(declare-fun m!8257376 () Bool)

(assert (=> b!7849026 m!8257376))

(assert (=> b!7849029 m!8257224))

(declare-fun m!8257378 () Bool)

(assert (=> d!2353052 m!8257378))

(assert (=> d!2353052 m!8257222))

(assert (=> bm!727355 m!8257378))

(assert (=> b!7849018 m!8257368))

(assert (=> b!7849018 m!8257368))

(assert (=> b!7849018 m!8257370))

(assert (=> b!7849030 m!8257372))

(assert (=> b!7848763 d!2353052))

(declare-fun e!4639996 () Bool)

(assert (=> b!7848772 (= tp!2324161 e!4639996)))

(declare-fun b!7849076 () Bool)

(declare-fun tp!2324213 () Bool)

(declare-fun tp!2324209 () Bool)

(assert (=> b!7849076 (= e!4639996 (and tp!2324213 tp!2324209))))

(declare-fun b!7849073 () Bool)

(assert (=> b!7849073 (= e!4639996 tp_is_empty!52557)))

(declare-fun b!7849074 () Bool)

(declare-fun tp!2324210 () Bool)

(declare-fun tp!2324211 () Bool)

(assert (=> b!7849074 (= e!4639996 (and tp!2324210 tp!2324211))))

(declare-fun b!7849075 () Bool)

(declare-fun tp!2324212 () Bool)

(assert (=> b!7849075 (= e!4639996 tp!2324212)))

(assert (= (and b!7848772 ((_ is ElementMatch!21079) (regOne!42670 r1!6227))) b!7849073))

(assert (= (and b!7848772 ((_ is Concat!29924) (regOne!42670 r1!6227))) b!7849074))

(assert (= (and b!7848772 ((_ is Star!21079) (regOne!42670 r1!6227))) b!7849075))

(assert (= (and b!7848772 ((_ is Union!21079) (regOne!42670 r1!6227))) b!7849076))

(declare-fun e!4639999 () Bool)

(assert (=> b!7848772 (= tp!2324164 e!4639999)))

(declare-fun b!7849088 () Bool)

(declare-fun tp!2324228 () Bool)

(declare-fun tp!2324224 () Bool)

(assert (=> b!7849088 (= e!4639999 (and tp!2324228 tp!2324224))))

(declare-fun b!7849085 () Bool)

(assert (=> b!7849085 (= e!4639999 tp_is_empty!52557)))

(declare-fun b!7849086 () Bool)

(declare-fun tp!2324225 () Bool)

(declare-fun tp!2324226 () Bool)

(assert (=> b!7849086 (= e!4639999 (and tp!2324225 tp!2324226))))

(declare-fun b!7849087 () Bool)

(declare-fun tp!2324227 () Bool)

(assert (=> b!7849087 (= e!4639999 tp!2324227)))

(assert (= (and b!7848772 ((_ is ElementMatch!21079) (regTwo!42670 r1!6227))) b!7849085))

(assert (= (and b!7848772 ((_ is Concat!29924) (regTwo!42670 r1!6227))) b!7849086))

(assert (= (and b!7848772 ((_ is Star!21079) (regTwo!42670 r1!6227))) b!7849087))

(assert (= (and b!7848772 ((_ is Union!21079) (regTwo!42670 r1!6227))) b!7849088))

(declare-fun b!7849105 () Bool)

(declare-fun e!4640005 () Bool)

(declare-fun tp!2324246 () Bool)

(assert (=> b!7849105 (= e!4640005 (and tp_is_empty!52557 tp!2324246))))

(assert (=> b!7848773 (= tp!2324154 e!4640005)))

(assert (= (and b!7848773 ((_ is Cons!73814) (t!388673 s1!4084))) b!7849105))

(declare-fun e!4640007 () Bool)

(assert (=> b!7848762 (= tp!2324163 e!4640007)))

(declare-fun b!7849113 () Bool)

(declare-fun tp!2324256 () Bool)

(declare-fun tp!2324252 () Bool)

(assert (=> b!7849113 (= e!4640007 (and tp!2324256 tp!2324252))))

(declare-fun b!7849110 () Bool)

(assert (=> b!7849110 (= e!4640007 tp_is_empty!52557)))

(declare-fun b!7849111 () Bool)

(declare-fun tp!2324253 () Bool)

(declare-fun tp!2324254 () Bool)

(assert (=> b!7849111 (= e!4640007 (and tp!2324253 tp!2324254))))

(declare-fun b!7849112 () Bool)

(declare-fun tp!2324255 () Bool)

(assert (=> b!7849112 (= e!4640007 tp!2324255)))

(assert (= (and b!7848762 ((_ is ElementMatch!21079) (reg!21408 r1!6227))) b!7849110))

(assert (= (and b!7848762 ((_ is Concat!29924) (reg!21408 r1!6227))) b!7849111))

(assert (= (and b!7848762 ((_ is Star!21079) (reg!21408 r1!6227))) b!7849112))

(assert (= (and b!7848762 ((_ is Union!21079) (reg!21408 r1!6227))) b!7849113))

(declare-fun e!4640008 () Bool)

(assert (=> b!7848776 (= tp!2324156 e!4640008)))

(declare-fun b!7849117 () Bool)

(declare-fun tp!2324261 () Bool)

(declare-fun tp!2324257 () Bool)

(assert (=> b!7849117 (= e!4640008 (and tp!2324261 tp!2324257))))

(declare-fun b!7849114 () Bool)

(assert (=> b!7849114 (= e!4640008 tp_is_empty!52557)))

(declare-fun b!7849115 () Bool)

(declare-fun tp!2324258 () Bool)

(declare-fun tp!2324259 () Bool)

(assert (=> b!7849115 (= e!4640008 (and tp!2324258 tp!2324259))))

(declare-fun b!7849116 () Bool)

(declare-fun tp!2324260 () Bool)

(assert (=> b!7849116 (= e!4640008 tp!2324260)))

(assert (= (and b!7848776 ((_ is ElementMatch!21079) (regOne!42671 r1!6227))) b!7849114))

(assert (= (and b!7848776 ((_ is Concat!29924) (regOne!42671 r1!6227))) b!7849115))

(assert (= (and b!7848776 ((_ is Star!21079) (regOne!42671 r1!6227))) b!7849116))

(assert (= (and b!7848776 ((_ is Union!21079) (regOne!42671 r1!6227))) b!7849117))

(declare-fun e!4640009 () Bool)

(assert (=> b!7848776 (= tp!2324162 e!4640009)))

(declare-fun b!7849121 () Bool)

(declare-fun tp!2324266 () Bool)

(declare-fun tp!2324262 () Bool)

(assert (=> b!7849121 (= e!4640009 (and tp!2324266 tp!2324262))))

(declare-fun b!7849118 () Bool)

(assert (=> b!7849118 (= e!4640009 tp_is_empty!52557)))

(declare-fun b!7849119 () Bool)

(declare-fun tp!2324263 () Bool)

(declare-fun tp!2324264 () Bool)

(assert (=> b!7849119 (= e!4640009 (and tp!2324263 tp!2324264))))

(declare-fun b!7849120 () Bool)

(declare-fun tp!2324265 () Bool)

(assert (=> b!7849120 (= e!4640009 tp!2324265)))

(assert (= (and b!7848776 ((_ is ElementMatch!21079) (regTwo!42671 r1!6227))) b!7849118))

(assert (= (and b!7848776 ((_ is Concat!29924) (regTwo!42671 r1!6227))) b!7849119))

(assert (= (and b!7848776 ((_ is Star!21079) (regTwo!42671 r1!6227))) b!7849120))

(assert (= (and b!7848776 ((_ is Union!21079) (regTwo!42671 r1!6227))) b!7849121))

(declare-fun e!4640010 () Bool)

(assert (=> b!7848766 (= tp!2324158 e!4640010)))

(declare-fun b!7849125 () Bool)

(declare-fun tp!2324271 () Bool)

(declare-fun tp!2324267 () Bool)

(assert (=> b!7849125 (= e!4640010 (and tp!2324271 tp!2324267))))

(declare-fun b!7849122 () Bool)

(assert (=> b!7849122 (= e!4640010 tp_is_empty!52557)))

(declare-fun b!7849123 () Bool)

(declare-fun tp!2324268 () Bool)

(declare-fun tp!2324269 () Bool)

(assert (=> b!7849123 (= e!4640010 (and tp!2324268 tp!2324269))))

(declare-fun b!7849124 () Bool)

(declare-fun tp!2324270 () Bool)

(assert (=> b!7849124 (= e!4640010 tp!2324270)))

(assert (= (and b!7848766 ((_ is ElementMatch!21079) (regOne!42671 r2!6165))) b!7849122))

(assert (= (and b!7848766 ((_ is Concat!29924) (regOne!42671 r2!6165))) b!7849123))

(assert (= (and b!7848766 ((_ is Star!21079) (regOne!42671 r2!6165))) b!7849124))

(assert (= (and b!7848766 ((_ is Union!21079) (regOne!42671 r2!6165))) b!7849125))

(declare-fun e!4640011 () Bool)

(assert (=> b!7848766 (= tp!2324159 e!4640011)))

(declare-fun b!7849129 () Bool)

(declare-fun tp!2324276 () Bool)

(declare-fun tp!2324272 () Bool)

(assert (=> b!7849129 (= e!4640011 (and tp!2324276 tp!2324272))))

(declare-fun b!7849126 () Bool)

(assert (=> b!7849126 (= e!4640011 tp_is_empty!52557)))

(declare-fun b!7849127 () Bool)

(declare-fun tp!2324273 () Bool)

(declare-fun tp!2324274 () Bool)

(assert (=> b!7849127 (= e!4640011 (and tp!2324273 tp!2324274))))

(declare-fun b!7849128 () Bool)

(declare-fun tp!2324275 () Bool)

(assert (=> b!7849128 (= e!4640011 tp!2324275)))

(assert (= (and b!7848766 ((_ is ElementMatch!21079) (regTwo!42671 r2!6165))) b!7849126))

(assert (= (and b!7848766 ((_ is Concat!29924) (regTwo!42671 r2!6165))) b!7849127))

(assert (= (and b!7848766 ((_ is Star!21079) (regTwo!42671 r2!6165))) b!7849128))

(assert (= (and b!7848766 ((_ is Union!21079) (regTwo!42671 r2!6165))) b!7849129))

(declare-fun b!7849130 () Bool)

(declare-fun e!4640012 () Bool)

(declare-fun tp!2324277 () Bool)

(assert (=> b!7849130 (= e!4640012 (and tp_is_empty!52557 tp!2324277))))

(assert (=> b!7848775 (= tp!2324153 e!4640012)))

(assert (= (and b!7848775 ((_ is Cons!73814) (t!388673 s2!3706))) b!7849130))

(declare-fun e!4640013 () Bool)

(assert (=> b!7848770 (= tp!2324160 e!4640013)))

(declare-fun b!7849134 () Bool)

(declare-fun tp!2324282 () Bool)

(declare-fun tp!2324278 () Bool)

(assert (=> b!7849134 (= e!4640013 (and tp!2324282 tp!2324278))))

(declare-fun b!7849131 () Bool)

(assert (=> b!7849131 (= e!4640013 tp_is_empty!52557)))

(declare-fun b!7849132 () Bool)

(declare-fun tp!2324279 () Bool)

(declare-fun tp!2324280 () Bool)

(assert (=> b!7849132 (= e!4640013 (and tp!2324279 tp!2324280))))

(declare-fun b!7849133 () Bool)

(declare-fun tp!2324281 () Bool)

(assert (=> b!7849133 (= e!4640013 tp!2324281)))

(assert (= (and b!7848770 ((_ is ElementMatch!21079) (reg!21408 r2!6165))) b!7849131))

(assert (= (and b!7848770 ((_ is Concat!29924) (reg!21408 r2!6165))) b!7849132))

(assert (= (and b!7848770 ((_ is Star!21079) (reg!21408 r2!6165))) b!7849133))

(assert (= (and b!7848770 ((_ is Union!21079) (reg!21408 r2!6165))) b!7849134))

(declare-fun e!4640014 () Bool)

(assert (=> b!7848769 (= tp!2324155 e!4640014)))

(declare-fun b!7849138 () Bool)

(declare-fun tp!2324287 () Bool)

(declare-fun tp!2324283 () Bool)

(assert (=> b!7849138 (= e!4640014 (and tp!2324287 tp!2324283))))

(declare-fun b!7849135 () Bool)

(assert (=> b!7849135 (= e!4640014 tp_is_empty!52557)))

(declare-fun b!7849136 () Bool)

(declare-fun tp!2324284 () Bool)

(declare-fun tp!2324285 () Bool)

(assert (=> b!7849136 (= e!4640014 (and tp!2324284 tp!2324285))))

(declare-fun b!7849137 () Bool)

(declare-fun tp!2324286 () Bool)

(assert (=> b!7849137 (= e!4640014 tp!2324286)))

(assert (= (and b!7848769 ((_ is ElementMatch!21079) (regOne!42670 r2!6165))) b!7849135))

(assert (= (and b!7848769 ((_ is Concat!29924) (regOne!42670 r2!6165))) b!7849136))

(assert (= (and b!7848769 ((_ is Star!21079) (regOne!42670 r2!6165))) b!7849137))

(assert (= (and b!7848769 ((_ is Union!21079) (regOne!42670 r2!6165))) b!7849138))

(declare-fun e!4640015 () Bool)

(assert (=> b!7848769 (= tp!2324157 e!4640015)))

(declare-fun b!7849142 () Bool)

(declare-fun tp!2324292 () Bool)

(declare-fun tp!2324288 () Bool)

(assert (=> b!7849142 (= e!4640015 (and tp!2324292 tp!2324288))))

(declare-fun b!7849139 () Bool)

(assert (=> b!7849139 (= e!4640015 tp_is_empty!52557)))

(declare-fun b!7849140 () Bool)

(declare-fun tp!2324289 () Bool)

(declare-fun tp!2324290 () Bool)

(assert (=> b!7849140 (= e!4640015 (and tp!2324289 tp!2324290))))

(declare-fun b!7849141 () Bool)

(declare-fun tp!2324291 () Bool)

(assert (=> b!7849141 (= e!4640015 tp!2324291)))

(assert (= (and b!7848769 ((_ is ElementMatch!21079) (regTwo!42670 r2!6165))) b!7849139))

(assert (= (and b!7848769 ((_ is Concat!29924) (regTwo!42670 r2!6165))) b!7849140))

(assert (= (and b!7848769 ((_ is Star!21079) (regTwo!42670 r2!6165))) b!7849141))

(assert (= (and b!7848769 ((_ is Union!21079) (regTwo!42670 r2!6165))) b!7849142))

(check-sat tp_is_empty!52557 (not b!7848825) (not d!2353030) (not b!7849123) (not b!7848990) (not b!7849116) (not b!7849133) (not d!2353052) (not b!7849088) (not b!7848928) (not b!7849021) (not b!7849029) (not b!7849120) (not b!7849087) (not b!7849002) (not b!7848987) (not bm!727338) (not b!7848997) (not b!7849141) (not b!7848932) (not b!7849137) (not b!7849130) (not b!7849117) (not b!7849125) (not b!7849112) (not b!7848993) (not b!7848986) (not b!7848923) (not b!7849025) (not b!7849128) (not b!7848998) (not b!7849136) (not b!7849086) (not b!7848931) (not b!7849075) (not bm!727337) (not b!7849129) (not bm!727353) (not b!7849132) (not b!7849113) (not b!7849134) (not b!7849142) (not b!7849001) (not bm!727350) (not bm!727345) (not b!7848927) (not b!7849121) (not b!7849074) (not b!7848920) (not d!2353042) (not b!7849018) (not b!7849076) (not b!7848843) (not b!7849140) (not b!7849111) (not d!2353046) (not b!7848945) (not b!7849127) (not bm!727331) (not d!2353024) (not bm!727349) (not b!7849105) (not b!7849115) (not b!7849138) (not b!7849026) (not b!7849124) (not d!2353038) (not bm!727332) (not bm!727355) (not b!7849030) (not b!7849119))
(check-sat)
