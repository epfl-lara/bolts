; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!743790 () Bool)

(assert start!743790)

(declare-fun b!7863844 () Bool)

(declare-fun e!4646837 () Bool)

(declare-fun e!4646834 () Bool)

(assert (=> b!7863844 (= e!4646837 (not e!4646834))))

(declare-fun res!3125918 () Bool)

(assert (=> b!7863844 (=> res!3125918 e!4646834)))

(declare-datatypes ((C!42600 0))(
  ( (C!42601 (val!31762 Int)) )
))
(declare-datatypes ((Regex!21137 0))(
  ( (ElementMatch!21137 (c!1445085 C!42600)) (Concat!29982 (regOne!42786 Regex!21137) (regTwo!42786 Regex!21137)) (EmptyExpr!21137) (Star!21137 (reg!21466 Regex!21137)) (EmptyLang!21137) (Union!21137 (regOne!42787 Regex!21137) (regTwo!42787 Regex!21137)) )
))
(declare-fun lt!2680620 () Regex!21137)

(declare-fun validRegex!11547 (Regex!21137) Bool)

(assert (=> b!7863844 (= res!3125918 (not (validRegex!11547 lt!2680620)))))

(declare-fun lt!2680619 () Regex!21137)

(declare-datatypes ((List!73996 0))(
  ( (Nil!73872) (Cons!73872 (h!80320 C!42600) (t!388731 List!73996)) )
))
(declare-fun s!14237 () List!73996)

(declare-fun matchR!10573 (Regex!21137 List!73996) Bool)

(assert (=> b!7863844 (matchR!10573 (Union!21137 lt!2680620 lt!2680619) (t!388731 s!14237))))

(declare-datatypes ((Unit!168968 0))(
  ( (Unit!168969) )
))
(declare-fun lt!2680616 () Unit!168968)

(declare-fun lemmaRegexAcceptsStringThenUnionWithAnotherAcceptsToo!140 (Regex!21137 Regex!21137 List!73996) Unit!168968)

(assert (=> b!7863844 (= lt!2680616 (lemmaRegexAcceptsStringThenUnionWithAnotherAcceptsToo!140 lt!2680620 lt!2680619 (t!388731 s!14237)))))

(declare-fun e!4646838 () Bool)

(assert (=> b!7863844 e!4646838))

(declare-fun c!1445084 () Bool)

(declare-fun isEmpty!42374 (List!73996) Bool)

(assert (=> b!7863844 (= c!1445084 (isEmpty!42374 s!14237))))

(declare-fun lt!2680621 () Unit!168968)

(declare-fun r1!6218 () Regex!21137)

(declare-fun lemmaRegexAcceptsStringThenDerivativeAcceptsTail!18 (Regex!21137 List!73996) Unit!168968)

(assert (=> b!7863844 (= lt!2680621 (lemmaRegexAcceptsStringThenDerivativeAcceptsTail!18 r1!6218 s!14237))))

(declare-fun b!7863845 () Bool)

(declare-fun e!4646840 () Bool)

(declare-fun tp!2330843 () Bool)

(declare-fun tp!2330840 () Bool)

(assert (=> b!7863845 (= e!4646840 (and tp!2330843 tp!2330840))))

(declare-fun b!7863846 () Bool)

(declare-fun tp!2330838 () Bool)

(assert (=> b!7863846 (= e!4646840 tp!2330838)))

(declare-fun b!7863847 () Bool)

(declare-fun e!4646836 () Bool)

(declare-fun tp!2330837 () Bool)

(declare-fun tp!2330834 () Bool)

(assert (=> b!7863847 (= e!4646836 (and tp!2330837 tp!2330834))))

(declare-fun b!7863849 () Bool)

(declare-fun tp!2330836 () Bool)

(declare-fun tp!2330835 () Bool)

(assert (=> b!7863849 (= e!4646840 (and tp!2330836 tp!2330835))))

(declare-fun b!7863850 () Bool)

(declare-fun e!4646841 () Bool)

(assert (=> b!7863850 (= e!4646841 e!4646837)))

(declare-fun res!3125920 () Bool)

(assert (=> b!7863850 (=> (not res!3125920) (not e!4646837))))

(declare-fun lt!2680617 () Regex!21137)

(declare-fun lt!2680615 () Regex!21137)

(declare-fun derivativeStep!6370 (Regex!21137 C!42600) Regex!21137)

(assert (=> b!7863850 (= res!3125920 (= (derivativeStep!6370 lt!2680615 (h!80320 s!14237)) lt!2680617))))

(assert (=> b!7863850 (= lt!2680617 (Union!21137 lt!2680619 lt!2680620))))

(assert (=> b!7863850 (= lt!2680620 (derivativeStep!6370 r1!6218 (h!80320 s!14237)))))

(declare-fun r2!6156 () Regex!21137)

(assert (=> b!7863850 (= lt!2680619 (Concat!29982 (derivativeStep!6370 r2!6156 (h!80320 s!14237)) r1!6218))))

(declare-fun b!7863851 () Bool)

(declare-fun tp!2330842 () Bool)

(assert (=> b!7863851 (= e!4646836 tp!2330842)))

(declare-fun b!7863852 () Bool)

(declare-fun nullable!9407 (Regex!21137) Bool)

(assert (=> b!7863852 (= e!4646838 (nullable!9407 r1!6218))))

(declare-fun b!7863853 () Bool)

(declare-fun res!3125923 () Bool)

(declare-fun e!4646835 () Bool)

(assert (=> b!7863853 (=> (not res!3125923) (not e!4646835))))

(assert (=> b!7863853 (= res!3125923 (validRegex!11547 r2!6156))))

(declare-fun b!7863854 () Bool)

(declare-fun res!3125921 () Bool)

(assert (=> b!7863854 (=> (not res!3125921) (not e!4646835))))

(assert (=> b!7863854 (= res!3125921 (matchR!10573 r1!6218 s!14237))))

(declare-fun b!7863855 () Bool)

(declare-fun tp_is_empty!52673 () Bool)

(assert (=> b!7863855 (= e!4646836 tp_is_empty!52673)))

(declare-fun b!7863856 () Bool)

(assert (=> b!7863856 (= e!4646835 e!4646841)))

(declare-fun res!3125919 () Bool)

(assert (=> b!7863856 (=> (not res!3125919) (not e!4646841))))

(get-info :version)

(assert (=> b!7863856 (= res!3125919 ((_ is Cons!73872) s!14237))))

(assert (=> b!7863856 (= lt!2680615 (Concat!29982 r2!6156 r1!6218))))

(declare-fun b!7863857 () Bool)

(declare-fun head!16085 (List!73996) C!42600)

(declare-fun tail!15628 (List!73996) List!73996)

(assert (=> b!7863857 (= e!4646838 (matchR!10573 (derivativeStep!6370 r1!6218 (head!16085 s!14237)) (tail!15628 s!14237)))))

(declare-fun b!7863858 () Bool)

(declare-fun res!3125922 () Bool)

(assert (=> b!7863858 (=> res!3125922 e!4646834)))

(assert (=> b!7863858 (= res!3125922 (not (validRegex!11547 lt!2680619)))))

(declare-fun b!7863859 () Bool)

(assert (=> b!7863859 (= e!4646840 tp_is_empty!52673)))

(declare-fun b!7863860 () Bool)

(declare-fun tp!2330841 () Bool)

(declare-fun tp!2330844 () Bool)

(assert (=> b!7863860 (= e!4646836 (and tp!2330841 tp!2330844))))

(declare-fun res!3125924 () Bool)

(assert (=> start!743790 (=> (not res!3125924) (not e!4646835))))

(assert (=> start!743790 (= res!3125924 (validRegex!11547 r1!6218))))

(assert (=> start!743790 e!4646835))

(assert (=> start!743790 e!4646836))

(assert (=> start!743790 e!4646840))

(declare-fun e!4646839 () Bool)

(assert (=> start!743790 e!4646839))

(declare-fun b!7863848 () Bool)

(declare-fun tp!2330839 () Bool)

(assert (=> b!7863848 (= e!4646839 (and tp_is_empty!52673 tp!2330839))))

(declare-fun b!7863861 () Bool)

(declare-fun res!3125917 () Bool)

(assert (=> b!7863861 (=> (not res!3125917) (not e!4646835))))

(assert (=> b!7863861 (= res!3125917 (nullable!9407 r2!6156))))

(declare-fun b!7863862 () Bool)

(assert (=> b!7863862 (= e!4646834 (matchR!10573 lt!2680615 s!14237))))

(assert (=> b!7863862 (matchR!10573 lt!2680617 (t!388731 s!14237))))

(declare-fun lt!2680618 () Unit!168968)

(declare-fun lemmaReversedUnionAcceptsSameString!50 (Regex!21137 Regex!21137 List!73996) Unit!168968)

(assert (=> b!7863862 (= lt!2680618 (lemmaReversedUnionAcceptsSameString!50 lt!2680620 lt!2680619 (t!388731 s!14237)))))

(assert (= (and start!743790 res!3125924) b!7863853))

(assert (= (and b!7863853 res!3125923) b!7863854))

(assert (= (and b!7863854 res!3125921) b!7863861))

(assert (= (and b!7863861 res!3125917) b!7863856))

(assert (= (and b!7863856 res!3125919) b!7863850))

(assert (= (and b!7863850 res!3125920) b!7863844))

(assert (= (and b!7863844 c!1445084) b!7863852))

(assert (= (and b!7863844 (not c!1445084)) b!7863857))

(assert (= (and b!7863844 (not res!3125918)) b!7863858))

(assert (= (and b!7863858 (not res!3125922)) b!7863862))

(assert (= (and start!743790 ((_ is ElementMatch!21137) r1!6218)) b!7863855))

(assert (= (and start!743790 ((_ is Concat!29982) r1!6218)) b!7863860))

(assert (= (and start!743790 ((_ is Star!21137) r1!6218)) b!7863851))

(assert (= (and start!743790 ((_ is Union!21137) r1!6218)) b!7863847))

(assert (= (and start!743790 ((_ is ElementMatch!21137) r2!6156)) b!7863859))

(assert (= (and start!743790 ((_ is Concat!29982) r2!6156)) b!7863849))

(assert (= (and start!743790 ((_ is Star!21137) r2!6156)) b!7863846))

(assert (= (and start!743790 ((_ is Union!21137) r2!6156)) b!7863845))

(assert (= (and start!743790 ((_ is Cons!73872) s!14237)) b!7863848))

(declare-fun m!8263398 () Bool)

(assert (=> b!7863850 m!8263398))

(declare-fun m!8263400 () Bool)

(assert (=> b!7863850 m!8263400))

(declare-fun m!8263402 () Bool)

(assert (=> b!7863850 m!8263402))

(declare-fun m!8263404 () Bool)

(assert (=> b!7863854 m!8263404))

(declare-fun m!8263406 () Bool)

(assert (=> b!7863844 m!8263406))

(declare-fun m!8263408 () Bool)

(assert (=> b!7863844 m!8263408))

(declare-fun m!8263410 () Bool)

(assert (=> b!7863844 m!8263410))

(declare-fun m!8263412 () Bool)

(assert (=> b!7863844 m!8263412))

(declare-fun m!8263414 () Bool)

(assert (=> b!7863844 m!8263414))

(declare-fun m!8263416 () Bool)

(assert (=> b!7863858 m!8263416))

(declare-fun m!8263418 () Bool)

(assert (=> start!743790 m!8263418))

(declare-fun m!8263420 () Bool)

(assert (=> b!7863857 m!8263420))

(assert (=> b!7863857 m!8263420))

(declare-fun m!8263422 () Bool)

(assert (=> b!7863857 m!8263422))

(declare-fun m!8263424 () Bool)

(assert (=> b!7863857 m!8263424))

(assert (=> b!7863857 m!8263422))

(assert (=> b!7863857 m!8263424))

(declare-fun m!8263426 () Bool)

(assert (=> b!7863857 m!8263426))

(declare-fun m!8263428 () Bool)

(assert (=> b!7863861 m!8263428))

(declare-fun m!8263430 () Bool)

(assert (=> b!7863862 m!8263430))

(declare-fun m!8263432 () Bool)

(assert (=> b!7863862 m!8263432))

(declare-fun m!8263434 () Bool)

(assert (=> b!7863862 m!8263434))

(declare-fun m!8263436 () Bool)

(assert (=> b!7863853 m!8263436))

(declare-fun m!8263438 () Bool)

(assert (=> b!7863852 m!8263438))

(check-sat (not b!7863848) (not b!7863860) (not b!7863850) (not b!7863854) (not b!7863846) (not b!7863857) tp_is_empty!52673 (not b!7863858) (not b!7863844) (not b!7863849) (not b!7863861) (not b!7863847) (not b!7863852) (not b!7863853) (not b!7863862) (not b!7863845) (not b!7863851) (not start!743790))
(check-sat)
(get-model)

(declare-fun d!2354697 () Bool)

(declare-fun nullableFct!3718 (Regex!21137) Bool)

(assert (=> d!2354697 (= (nullable!9407 r2!6156) (nullableFct!3718 r2!6156))))

(declare-fun bs!1967227 () Bool)

(assert (= bs!1967227 d!2354697))

(declare-fun m!8263440 () Bool)

(assert (=> bs!1967227 m!8263440))

(assert (=> b!7863861 d!2354697))

(declare-fun b!7863911 () Bool)

(declare-fun e!4646867 () Regex!21137)

(declare-fun call!729191 () Regex!21137)

(assert (=> b!7863911 (= e!4646867 (Union!21137 (Concat!29982 call!729191 (regTwo!42786 lt!2680615)) EmptyLang!21137))))

(declare-fun c!1445106 () Bool)

(declare-fun bm!729184 () Bool)

(declare-fun call!729192 () Regex!21137)

(declare-fun c!1445104 () Bool)

(declare-fun c!1445102 () Bool)

(assert (=> bm!729184 (= call!729192 (derivativeStep!6370 (ite c!1445104 (regTwo!42787 lt!2680615) (ite c!1445106 (reg!21466 lt!2680615) (ite c!1445102 (regTwo!42786 lt!2680615) (regOne!42786 lt!2680615)))) (h!80320 s!14237)))))

(declare-fun b!7863912 () Bool)

(declare-fun e!4646870 () Regex!21137)

(assert (=> b!7863912 (= e!4646870 EmptyLang!21137)))

(declare-fun b!7863913 () Bool)

(declare-fun call!729189 () Regex!21137)

(assert (=> b!7863913 (= e!4646867 (Union!21137 (Concat!29982 call!729189 (regTwo!42786 lt!2680615)) call!729191))))

(declare-fun b!7863914 () Bool)

(assert (=> b!7863914 (= c!1445102 (nullable!9407 (regOne!42786 lt!2680615)))))

(declare-fun e!4646869 () Regex!21137)

(assert (=> b!7863914 (= e!4646869 e!4646867)))

(declare-fun bm!729185 () Bool)

(declare-fun call!729190 () Regex!21137)

(assert (=> bm!729185 (= call!729190 call!729192)))

(declare-fun bm!729186 () Bool)

(assert (=> bm!729186 (= call!729191 call!729190)))

(declare-fun d!2354699 () Bool)

(declare-fun lt!2680626 () Regex!21137)

(assert (=> d!2354699 (validRegex!11547 lt!2680626)))

(assert (=> d!2354699 (= lt!2680626 e!4646870)))

(declare-fun c!1445103 () Bool)

(assert (=> d!2354699 (= c!1445103 (or ((_ is EmptyExpr!21137) lt!2680615) ((_ is EmptyLang!21137) lt!2680615)))))

(assert (=> d!2354699 (validRegex!11547 lt!2680615)))

(assert (=> d!2354699 (= (derivativeStep!6370 lt!2680615 (h!80320 s!14237)) lt!2680626)))

(declare-fun b!7863915 () Bool)

(declare-fun e!4646868 () Regex!21137)

(assert (=> b!7863915 (= e!4646868 (ite (= (h!80320 s!14237) (c!1445085 lt!2680615)) EmptyExpr!21137 EmptyLang!21137))))

(declare-fun b!7863916 () Bool)

(assert (=> b!7863916 (= e!4646870 e!4646868)))

(declare-fun c!1445105 () Bool)

(assert (=> b!7863916 (= c!1445105 ((_ is ElementMatch!21137) lt!2680615))))

(declare-fun b!7863917 () Bool)

(declare-fun e!4646866 () Regex!21137)

(assert (=> b!7863917 (= e!4646866 e!4646869)))

(assert (=> b!7863917 (= c!1445106 ((_ is Star!21137) lt!2680615))))

(declare-fun b!7863918 () Bool)

(assert (=> b!7863918 (= e!4646866 (Union!21137 call!729189 call!729192))))

(declare-fun b!7863919 () Bool)

(assert (=> b!7863919 (= c!1445104 ((_ is Union!21137) lt!2680615))))

(assert (=> b!7863919 (= e!4646868 e!4646866)))

(declare-fun bm!729187 () Bool)

(assert (=> bm!729187 (= call!729189 (derivativeStep!6370 (ite c!1445104 (regOne!42787 lt!2680615) (regOne!42786 lt!2680615)) (h!80320 s!14237)))))

(declare-fun b!7863920 () Bool)

(assert (=> b!7863920 (= e!4646869 (Concat!29982 call!729190 lt!2680615))))

(assert (= (and d!2354699 c!1445103) b!7863912))

(assert (= (and d!2354699 (not c!1445103)) b!7863916))

(assert (= (and b!7863916 c!1445105) b!7863915))

(assert (= (and b!7863916 (not c!1445105)) b!7863919))

(assert (= (and b!7863919 c!1445104) b!7863918))

(assert (= (and b!7863919 (not c!1445104)) b!7863917))

(assert (= (and b!7863917 c!1445106) b!7863920))

(assert (= (and b!7863917 (not c!1445106)) b!7863914))

(assert (= (and b!7863914 c!1445102) b!7863913))

(assert (= (and b!7863914 (not c!1445102)) b!7863911))

(assert (= (or b!7863913 b!7863911) bm!729186))

(assert (= (or b!7863920 bm!729186) bm!729185))

(assert (= (or b!7863918 bm!729185) bm!729184))

(assert (= (or b!7863918 b!7863913) bm!729187))

(declare-fun m!8263442 () Bool)

(assert (=> bm!729184 m!8263442))

(declare-fun m!8263444 () Bool)

(assert (=> b!7863914 m!8263444))

(declare-fun m!8263446 () Bool)

(assert (=> d!2354699 m!8263446))

(declare-fun m!8263448 () Bool)

(assert (=> d!2354699 m!8263448))

(declare-fun m!8263450 () Bool)

(assert (=> bm!729187 m!8263450))

(assert (=> b!7863850 d!2354699))

(declare-fun b!7863935 () Bool)

(declare-fun e!4646879 () Regex!21137)

(declare-fun call!729196 () Regex!21137)

(assert (=> b!7863935 (= e!4646879 (Union!21137 (Concat!29982 call!729196 (regTwo!42786 r1!6218)) EmptyLang!21137))))

(declare-fun call!729197 () Regex!21137)

(declare-fun c!1445112 () Bool)

(declare-fun c!1445110 () Bool)

(declare-fun c!1445114 () Bool)

(declare-fun bm!729189 () Bool)

(assert (=> bm!729189 (= call!729197 (derivativeStep!6370 (ite c!1445112 (regTwo!42787 r1!6218) (ite c!1445114 (reg!21466 r1!6218) (ite c!1445110 (regTwo!42786 r1!6218) (regOne!42786 r1!6218)))) (h!80320 s!14237)))))

(declare-fun b!7863936 () Bool)

(declare-fun e!4646882 () Regex!21137)

(assert (=> b!7863936 (= e!4646882 EmptyLang!21137)))

(declare-fun call!729194 () Regex!21137)

(declare-fun b!7863937 () Bool)

(assert (=> b!7863937 (= e!4646879 (Union!21137 (Concat!29982 call!729194 (regTwo!42786 r1!6218)) call!729196))))

(declare-fun b!7863938 () Bool)

(assert (=> b!7863938 (= c!1445110 (nullable!9407 (regOne!42786 r1!6218)))))

(declare-fun e!4646881 () Regex!21137)

(assert (=> b!7863938 (= e!4646881 e!4646879)))

(declare-fun bm!729190 () Bool)

(declare-fun call!729195 () Regex!21137)

(assert (=> bm!729190 (= call!729195 call!729197)))

(declare-fun bm!729191 () Bool)

(assert (=> bm!729191 (= call!729196 call!729195)))

(declare-fun d!2354701 () Bool)

(declare-fun lt!2680628 () Regex!21137)

(assert (=> d!2354701 (validRegex!11547 lt!2680628)))

(assert (=> d!2354701 (= lt!2680628 e!4646882)))

(declare-fun c!1445111 () Bool)

(assert (=> d!2354701 (= c!1445111 (or ((_ is EmptyExpr!21137) r1!6218) ((_ is EmptyLang!21137) r1!6218)))))

(assert (=> d!2354701 (validRegex!11547 r1!6218)))

(assert (=> d!2354701 (= (derivativeStep!6370 r1!6218 (h!80320 s!14237)) lt!2680628)))

(declare-fun b!7863939 () Bool)

(declare-fun e!4646880 () Regex!21137)

(assert (=> b!7863939 (= e!4646880 (ite (= (h!80320 s!14237) (c!1445085 r1!6218)) EmptyExpr!21137 EmptyLang!21137))))

(declare-fun b!7863940 () Bool)

(assert (=> b!7863940 (= e!4646882 e!4646880)))

(declare-fun c!1445113 () Bool)

(assert (=> b!7863940 (= c!1445113 ((_ is ElementMatch!21137) r1!6218))))

(declare-fun b!7863941 () Bool)

(declare-fun e!4646878 () Regex!21137)

(assert (=> b!7863941 (= e!4646878 e!4646881)))

(assert (=> b!7863941 (= c!1445114 ((_ is Star!21137) r1!6218))))

(declare-fun b!7863942 () Bool)

(assert (=> b!7863942 (= e!4646878 (Union!21137 call!729194 call!729197))))

(declare-fun b!7863943 () Bool)

(assert (=> b!7863943 (= c!1445112 ((_ is Union!21137) r1!6218))))

(assert (=> b!7863943 (= e!4646880 e!4646878)))

(declare-fun bm!729192 () Bool)

(assert (=> bm!729192 (= call!729194 (derivativeStep!6370 (ite c!1445112 (regOne!42787 r1!6218) (regOne!42786 r1!6218)) (h!80320 s!14237)))))

(declare-fun b!7863944 () Bool)

(assert (=> b!7863944 (= e!4646881 (Concat!29982 call!729195 r1!6218))))

(assert (= (and d!2354701 c!1445111) b!7863936))

(assert (= (and d!2354701 (not c!1445111)) b!7863940))

(assert (= (and b!7863940 c!1445113) b!7863939))

(assert (= (and b!7863940 (not c!1445113)) b!7863943))

(assert (= (and b!7863943 c!1445112) b!7863942))

(assert (= (and b!7863943 (not c!1445112)) b!7863941))

(assert (= (and b!7863941 c!1445114) b!7863944))

(assert (= (and b!7863941 (not c!1445114)) b!7863938))

(assert (= (and b!7863938 c!1445110) b!7863937))

(assert (= (and b!7863938 (not c!1445110)) b!7863935))

(assert (= (or b!7863937 b!7863935) bm!729191))

(assert (= (or b!7863944 bm!729191) bm!729190))

(assert (= (or b!7863942 bm!729190) bm!729189))

(assert (= (or b!7863942 b!7863937) bm!729192))

(declare-fun m!8263468 () Bool)

(assert (=> bm!729189 m!8263468))

(declare-fun m!8263470 () Bool)

(assert (=> b!7863938 m!8263470))

(declare-fun m!8263472 () Bool)

(assert (=> d!2354701 m!8263472))

(assert (=> d!2354701 m!8263418))

(declare-fun m!8263474 () Bool)

(assert (=> bm!729192 m!8263474))

(assert (=> b!7863850 d!2354701))

(declare-fun b!7863945 () Bool)

(declare-fun e!4646884 () Regex!21137)

(declare-fun call!729200 () Regex!21137)

(assert (=> b!7863945 (= e!4646884 (Union!21137 (Concat!29982 call!729200 (regTwo!42786 r2!6156)) EmptyLang!21137))))

(declare-fun call!729201 () Regex!21137)

(declare-fun c!1445119 () Bool)

(declare-fun c!1445115 () Bool)

(declare-fun c!1445117 () Bool)

(declare-fun bm!729193 () Bool)

(assert (=> bm!729193 (= call!729201 (derivativeStep!6370 (ite c!1445117 (regTwo!42787 r2!6156) (ite c!1445119 (reg!21466 r2!6156) (ite c!1445115 (regTwo!42786 r2!6156) (regOne!42786 r2!6156)))) (h!80320 s!14237)))))

(declare-fun b!7863946 () Bool)

(declare-fun e!4646887 () Regex!21137)

(assert (=> b!7863946 (= e!4646887 EmptyLang!21137)))

(declare-fun call!729198 () Regex!21137)

(declare-fun b!7863947 () Bool)

(assert (=> b!7863947 (= e!4646884 (Union!21137 (Concat!29982 call!729198 (regTwo!42786 r2!6156)) call!729200))))

(declare-fun b!7863948 () Bool)

(assert (=> b!7863948 (= c!1445115 (nullable!9407 (regOne!42786 r2!6156)))))

(declare-fun e!4646886 () Regex!21137)

(assert (=> b!7863948 (= e!4646886 e!4646884)))

(declare-fun bm!729194 () Bool)

(declare-fun call!729199 () Regex!21137)

(assert (=> bm!729194 (= call!729199 call!729201)))

(declare-fun bm!729195 () Bool)

(assert (=> bm!729195 (= call!729200 call!729199)))

(declare-fun d!2354705 () Bool)

(declare-fun lt!2680629 () Regex!21137)

(assert (=> d!2354705 (validRegex!11547 lt!2680629)))

(assert (=> d!2354705 (= lt!2680629 e!4646887)))

(declare-fun c!1445116 () Bool)

(assert (=> d!2354705 (= c!1445116 (or ((_ is EmptyExpr!21137) r2!6156) ((_ is EmptyLang!21137) r2!6156)))))

(assert (=> d!2354705 (validRegex!11547 r2!6156)))

(assert (=> d!2354705 (= (derivativeStep!6370 r2!6156 (h!80320 s!14237)) lt!2680629)))

(declare-fun b!7863949 () Bool)

(declare-fun e!4646885 () Regex!21137)

(assert (=> b!7863949 (= e!4646885 (ite (= (h!80320 s!14237) (c!1445085 r2!6156)) EmptyExpr!21137 EmptyLang!21137))))

(declare-fun b!7863950 () Bool)

(assert (=> b!7863950 (= e!4646887 e!4646885)))

(declare-fun c!1445118 () Bool)

(assert (=> b!7863950 (= c!1445118 ((_ is ElementMatch!21137) r2!6156))))

(declare-fun b!7863951 () Bool)

(declare-fun e!4646883 () Regex!21137)

(assert (=> b!7863951 (= e!4646883 e!4646886)))

(assert (=> b!7863951 (= c!1445119 ((_ is Star!21137) r2!6156))))

(declare-fun b!7863952 () Bool)

(assert (=> b!7863952 (= e!4646883 (Union!21137 call!729198 call!729201))))

(declare-fun b!7863953 () Bool)

(assert (=> b!7863953 (= c!1445117 ((_ is Union!21137) r2!6156))))

(assert (=> b!7863953 (= e!4646885 e!4646883)))

(declare-fun bm!729196 () Bool)

(assert (=> bm!729196 (= call!729198 (derivativeStep!6370 (ite c!1445117 (regOne!42787 r2!6156) (regOne!42786 r2!6156)) (h!80320 s!14237)))))

(declare-fun b!7863954 () Bool)

(assert (=> b!7863954 (= e!4646886 (Concat!29982 call!729199 r2!6156))))

(assert (= (and d!2354705 c!1445116) b!7863946))

(assert (= (and d!2354705 (not c!1445116)) b!7863950))

(assert (= (and b!7863950 c!1445118) b!7863949))

(assert (= (and b!7863950 (not c!1445118)) b!7863953))

(assert (= (and b!7863953 c!1445117) b!7863952))

(assert (= (and b!7863953 (not c!1445117)) b!7863951))

(assert (= (and b!7863951 c!1445119) b!7863954))

(assert (= (and b!7863951 (not c!1445119)) b!7863948))

(assert (= (and b!7863948 c!1445115) b!7863947))

(assert (= (and b!7863948 (not c!1445115)) b!7863945))

(assert (= (or b!7863947 b!7863945) bm!729195))

(assert (= (or b!7863954 bm!729195) bm!729194))

(assert (= (or b!7863952 bm!729194) bm!729193))

(assert (= (or b!7863952 b!7863947) bm!729196))

(declare-fun m!8263476 () Bool)

(assert (=> bm!729193 m!8263476))

(declare-fun m!8263478 () Bool)

(assert (=> b!7863948 m!8263478))

(declare-fun m!8263480 () Bool)

(assert (=> d!2354705 m!8263480))

(assert (=> d!2354705 m!8263436))

(declare-fun m!8263482 () Bool)

(assert (=> bm!729196 m!8263482))

(assert (=> b!7863850 d!2354705))

(declare-fun d!2354707 () Bool)

(assert (=> d!2354707 (= (nullable!9407 r1!6218) (nullableFct!3718 r1!6218))))

(declare-fun bs!1967228 () Bool)

(assert (= bs!1967228 d!2354707))

(declare-fun m!8263484 () Bool)

(assert (=> bs!1967228 m!8263484))

(assert (=> b!7863852 d!2354707))

(declare-fun b!7864013 () Bool)

(declare-fun e!4646919 () Bool)

(declare-fun lt!2680635 () Bool)

(declare-fun call!729216 () Bool)

(assert (=> b!7864013 (= e!4646919 (= lt!2680635 call!729216))))

(declare-fun b!7864014 () Bool)

(declare-fun e!4646917 () Bool)

(assert (=> b!7864014 (= e!4646917 (= (head!16085 (tail!15628 s!14237)) (c!1445085 (derivativeStep!6370 r1!6218 (head!16085 s!14237)))))))

(declare-fun b!7864015 () Bool)

(declare-fun e!4646918 () Bool)

(assert (=> b!7864015 (= e!4646919 e!4646918)))

(declare-fun c!1445141 () Bool)

(assert (=> b!7864015 (= c!1445141 ((_ is EmptyLang!21137) (derivativeStep!6370 r1!6218 (head!16085 s!14237))))))

(declare-fun b!7864016 () Bool)

(declare-fun res!3125965 () Bool)

(declare-fun e!4646922 () Bool)

(assert (=> b!7864016 (=> res!3125965 e!4646922)))

(assert (=> b!7864016 (= res!3125965 (not (isEmpty!42374 (tail!15628 (tail!15628 s!14237)))))))

(declare-fun b!7864017 () Bool)

(declare-fun res!3125969 () Bool)

(assert (=> b!7864017 (=> (not res!3125969) (not e!4646917))))

(assert (=> b!7864017 (= res!3125969 (isEmpty!42374 (tail!15628 (tail!15628 s!14237))))))

(declare-fun b!7864018 () Bool)

(declare-fun e!4646921 () Bool)

(assert (=> b!7864018 (= e!4646921 (nullable!9407 (derivativeStep!6370 r1!6218 (head!16085 s!14237))))))

(declare-fun b!7864019 () Bool)

(assert (=> b!7864019 (= e!4646921 (matchR!10573 (derivativeStep!6370 (derivativeStep!6370 r1!6218 (head!16085 s!14237)) (head!16085 (tail!15628 s!14237))) (tail!15628 (tail!15628 s!14237))))))

(declare-fun d!2354709 () Bool)

(assert (=> d!2354709 e!4646919))

(declare-fun c!1445142 () Bool)

(assert (=> d!2354709 (= c!1445142 ((_ is EmptyExpr!21137) (derivativeStep!6370 r1!6218 (head!16085 s!14237))))))

(assert (=> d!2354709 (= lt!2680635 e!4646921)))

(declare-fun c!1445143 () Bool)

(assert (=> d!2354709 (= c!1445143 (isEmpty!42374 (tail!15628 s!14237)))))

(assert (=> d!2354709 (validRegex!11547 (derivativeStep!6370 r1!6218 (head!16085 s!14237)))))

(assert (=> d!2354709 (= (matchR!10573 (derivativeStep!6370 r1!6218 (head!16085 s!14237)) (tail!15628 s!14237)) lt!2680635)))

(declare-fun bm!729211 () Bool)

(assert (=> bm!729211 (= call!729216 (isEmpty!42374 (tail!15628 s!14237)))))

(declare-fun b!7864020 () Bool)

(assert (=> b!7864020 (= e!4646922 (not (= (head!16085 (tail!15628 s!14237)) (c!1445085 (derivativeStep!6370 r1!6218 (head!16085 s!14237))))))))

(declare-fun b!7864021 () Bool)

(declare-fun e!4646923 () Bool)

(declare-fun e!4646920 () Bool)

(assert (=> b!7864021 (= e!4646923 e!4646920)))

(declare-fun res!3125966 () Bool)

(assert (=> b!7864021 (=> (not res!3125966) (not e!4646920))))

(assert (=> b!7864021 (= res!3125966 (not lt!2680635))))

(declare-fun b!7864022 () Bool)

(declare-fun res!3125970 () Bool)

(assert (=> b!7864022 (=> (not res!3125970) (not e!4646917))))

(assert (=> b!7864022 (= res!3125970 (not call!729216))))

(declare-fun b!7864023 () Bool)

(declare-fun res!3125968 () Bool)

(assert (=> b!7864023 (=> res!3125968 e!4646923)))

(assert (=> b!7864023 (= res!3125968 (not ((_ is ElementMatch!21137) (derivativeStep!6370 r1!6218 (head!16085 s!14237)))))))

(assert (=> b!7864023 (= e!4646918 e!4646923)))

(declare-fun b!7864024 () Bool)

(assert (=> b!7864024 (= e!4646920 e!4646922)))

(declare-fun res!3125972 () Bool)

(assert (=> b!7864024 (=> res!3125972 e!4646922)))

(assert (=> b!7864024 (= res!3125972 call!729216)))

(declare-fun b!7864025 () Bool)

(assert (=> b!7864025 (= e!4646918 (not lt!2680635))))

(declare-fun b!7864026 () Bool)

(declare-fun res!3125971 () Bool)

(assert (=> b!7864026 (=> res!3125971 e!4646923)))

(assert (=> b!7864026 (= res!3125971 e!4646917)))

(declare-fun res!3125967 () Bool)

(assert (=> b!7864026 (=> (not res!3125967) (not e!4646917))))

(assert (=> b!7864026 (= res!3125967 lt!2680635)))

(assert (= (and d!2354709 c!1445143) b!7864018))

(assert (= (and d!2354709 (not c!1445143)) b!7864019))

(assert (= (and d!2354709 c!1445142) b!7864013))

(assert (= (and d!2354709 (not c!1445142)) b!7864015))

(assert (= (and b!7864015 c!1445141) b!7864025))

(assert (= (and b!7864015 (not c!1445141)) b!7864023))

(assert (= (and b!7864023 (not res!3125968)) b!7864026))

(assert (= (and b!7864026 res!3125967) b!7864022))

(assert (= (and b!7864022 res!3125970) b!7864017))

(assert (= (and b!7864017 res!3125969) b!7864014))

(assert (= (and b!7864026 (not res!3125971)) b!7864021))

(assert (= (and b!7864021 res!3125966) b!7864024))

(assert (= (and b!7864024 (not res!3125972)) b!7864016))

(assert (= (and b!7864016 (not res!3125965)) b!7864020))

(assert (= (or b!7864013 b!7864022 b!7864024) bm!729211))

(assert (=> b!7864018 m!8263422))

(declare-fun m!8263494 () Bool)

(assert (=> b!7864018 m!8263494))

(assert (=> b!7864020 m!8263424))

(declare-fun m!8263496 () Bool)

(assert (=> b!7864020 m!8263496))

(assert (=> b!7864019 m!8263424))

(assert (=> b!7864019 m!8263496))

(assert (=> b!7864019 m!8263422))

(assert (=> b!7864019 m!8263496))

(declare-fun m!8263498 () Bool)

(assert (=> b!7864019 m!8263498))

(assert (=> b!7864019 m!8263424))

(declare-fun m!8263500 () Bool)

(assert (=> b!7864019 m!8263500))

(assert (=> b!7864019 m!8263498))

(assert (=> b!7864019 m!8263500))

(declare-fun m!8263502 () Bool)

(assert (=> b!7864019 m!8263502))

(assert (=> bm!729211 m!8263424))

(declare-fun m!8263504 () Bool)

(assert (=> bm!729211 m!8263504))

(assert (=> b!7864016 m!8263424))

(assert (=> b!7864016 m!8263500))

(assert (=> b!7864016 m!8263500))

(declare-fun m!8263506 () Bool)

(assert (=> b!7864016 m!8263506))

(assert (=> b!7864014 m!8263424))

(assert (=> b!7864014 m!8263496))

(assert (=> d!2354709 m!8263424))

(assert (=> d!2354709 m!8263504))

(assert (=> d!2354709 m!8263422))

(declare-fun m!8263508 () Bool)

(assert (=> d!2354709 m!8263508))

(assert (=> b!7864017 m!8263424))

(assert (=> b!7864017 m!8263500))

(assert (=> b!7864017 m!8263500))

(assert (=> b!7864017 m!8263506))

(assert (=> b!7863857 d!2354709))

(declare-fun b!7864043 () Bool)

(declare-fun e!4646937 () Regex!21137)

(declare-fun call!729219 () Regex!21137)

(assert (=> b!7864043 (= e!4646937 (Union!21137 (Concat!29982 call!729219 (regTwo!42786 r1!6218)) EmptyLang!21137))))

(declare-fun call!729220 () Regex!21137)

(declare-fun c!1445150 () Bool)

(declare-fun c!1445152 () Bool)

(declare-fun c!1445148 () Bool)

(declare-fun bm!729212 () Bool)

(assert (=> bm!729212 (= call!729220 (derivativeStep!6370 (ite c!1445150 (regTwo!42787 r1!6218) (ite c!1445152 (reg!21466 r1!6218) (ite c!1445148 (regTwo!42786 r1!6218) (regOne!42786 r1!6218)))) (head!16085 s!14237)))))

(declare-fun b!7864044 () Bool)

(declare-fun e!4646940 () Regex!21137)

(assert (=> b!7864044 (= e!4646940 EmptyLang!21137)))

(declare-fun call!729217 () Regex!21137)

(declare-fun b!7864045 () Bool)

(assert (=> b!7864045 (= e!4646937 (Union!21137 (Concat!29982 call!729217 (regTwo!42786 r1!6218)) call!729219))))

(declare-fun b!7864046 () Bool)

(assert (=> b!7864046 (= c!1445148 (nullable!9407 (regOne!42786 r1!6218)))))

(declare-fun e!4646939 () Regex!21137)

(assert (=> b!7864046 (= e!4646939 e!4646937)))

(declare-fun bm!729213 () Bool)

(declare-fun call!729218 () Regex!21137)

(assert (=> bm!729213 (= call!729218 call!729220)))

(declare-fun bm!729214 () Bool)

(assert (=> bm!729214 (= call!729219 call!729218)))

(declare-fun d!2354717 () Bool)

(declare-fun lt!2680636 () Regex!21137)

(assert (=> d!2354717 (validRegex!11547 lt!2680636)))

(assert (=> d!2354717 (= lt!2680636 e!4646940)))

(declare-fun c!1445149 () Bool)

(assert (=> d!2354717 (= c!1445149 (or ((_ is EmptyExpr!21137) r1!6218) ((_ is EmptyLang!21137) r1!6218)))))

(assert (=> d!2354717 (validRegex!11547 r1!6218)))

(assert (=> d!2354717 (= (derivativeStep!6370 r1!6218 (head!16085 s!14237)) lt!2680636)))

(declare-fun b!7864049 () Bool)

(declare-fun e!4646938 () Regex!21137)

(assert (=> b!7864049 (= e!4646938 (ite (= (head!16085 s!14237) (c!1445085 r1!6218)) EmptyExpr!21137 EmptyLang!21137))))

(declare-fun b!7864050 () Bool)

(assert (=> b!7864050 (= e!4646940 e!4646938)))

(declare-fun c!1445151 () Bool)

(assert (=> b!7864050 (= c!1445151 ((_ is ElementMatch!21137) r1!6218))))

(declare-fun b!7864051 () Bool)

(declare-fun e!4646936 () Regex!21137)

(assert (=> b!7864051 (= e!4646936 e!4646939)))

(assert (=> b!7864051 (= c!1445152 ((_ is Star!21137) r1!6218))))

(declare-fun b!7864052 () Bool)

(assert (=> b!7864052 (= e!4646936 (Union!21137 call!729217 call!729220))))

(declare-fun b!7864053 () Bool)

(assert (=> b!7864053 (= c!1445150 ((_ is Union!21137) r1!6218))))

(assert (=> b!7864053 (= e!4646938 e!4646936)))

(declare-fun bm!729215 () Bool)

(assert (=> bm!729215 (= call!729217 (derivativeStep!6370 (ite c!1445150 (regOne!42787 r1!6218) (regOne!42786 r1!6218)) (head!16085 s!14237)))))

(declare-fun b!7864054 () Bool)

(assert (=> b!7864054 (= e!4646939 (Concat!29982 call!729218 r1!6218))))

(assert (= (and d!2354717 c!1445149) b!7864044))

(assert (= (and d!2354717 (not c!1445149)) b!7864050))

(assert (= (and b!7864050 c!1445151) b!7864049))

(assert (= (and b!7864050 (not c!1445151)) b!7864053))

(assert (= (and b!7864053 c!1445150) b!7864052))

(assert (= (and b!7864053 (not c!1445150)) b!7864051))

(assert (= (and b!7864051 c!1445152) b!7864054))

(assert (= (and b!7864051 (not c!1445152)) b!7864046))

(assert (= (and b!7864046 c!1445148) b!7864045))

(assert (= (and b!7864046 (not c!1445148)) b!7864043))

(assert (= (or b!7864045 b!7864043) bm!729214))

(assert (= (or b!7864054 bm!729214) bm!729213))

(assert (= (or b!7864052 bm!729213) bm!729212))

(assert (= (or b!7864052 b!7864045) bm!729215))

(assert (=> bm!729212 m!8263420))

(declare-fun m!8263510 () Bool)

(assert (=> bm!729212 m!8263510))

(assert (=> b!7864046 m!8263470))

(declare-fun m!8263512 () Bool)

(assert (=> d!2354717 m!8263512))

(assert (=> d!2354717 m!8263418))

(assert (=> bm!729215 m!8263420))

(declare-fun m!8263514 () Bool)

(assert (=> bm!729215 m!8263514))

(assert (=> b!7863857 d!2354717))

(declare-fun d!2354719 () Bool)

(assert (=> d!2354719 (= (head!16085 s!14237) (h!80320 s!14237))))

(assert (=> b!7863857 d!2354719))

(declare-fun d!2354721 () Bool)

(assert (=> d!2354721 (= (tail!15628 s!14237) (t!388731 s!14237))))

(assert (=> b!7863857 d!2354721))

(declare-fun b!7864055 () Bool)

(declare-fun e!4646945 () Bool)

(declare-fun lt!2680637 () Bool)

(declare-fun call!729227 () Bool)

(assert (=> b!7864055 (= e!4646945 (= lt!2680637 call!729227))))

(declare-fun b!7864056 () Bool)

(declare-fun e!4646943 () Bool)

(assert (=> b!7864056 (= e!4646943 (= (head!16085 s!14237) (c!1445085 lt!2680615)))))

(declare-fun b!7864057 () Bool)

(declare-fun e!4646944 () Bool)

(assert (=> b!7864057 (= e!4646945 e!4646944)))

(declare-fun c!1445153 () Bool)

(assert (=> b!7864057 (= c!1445153 ((_ is EmptyLang!21137) lt!2680615))))

(declare-fun b!7864058 () Bool)

(declare-fun res!3125983 () Bool)

(declare-fun e!4646948 () Bool)

(assert (=> b!7864058 (=> res!3125983 e!4646948)))

(assert (=> b!7864058 (= res!3125983 (not (isEmpty!42374 (tail!15628 s!14237))))))

(declare-fun b!7864059 () Bool)

(declare-fun res!3125987 () Bool)

(assert (=> b!7864059 (=> (not res!3125987) (not e!4646943))))

(assert (=> b!7864059 (= res!3125987 (isEmpty!42374 (tail!15628 s!14237)))))

(declare-fun b!7864060 () Bool)

(declare-fun e!4646947 () Bool)

(assert (=> b!7864060 (= e!4646947 (nullable!9407 lt!2680615))))

(declare-fun b!7864061 () Bool)

(assert (=> b!7864061 (= e!4646947 (matchR!10573 (derivativeStep!6370 lt!2680615 (head!16085 s!14237)) (tail!15628 s!14237)))))

(declare-fun d!2354723 () Bool)

(assert (=> d!2354723 e!4646945))

(declare-fun c!1445154 () Bool)

(assert (=> d!2354723 (= c!1445154 ((_ is EmptyExpr!21137) lt!2680615))))

(assert (=> d!2354723 (= lt!2680637 e!4646947)))

(declare-fun c!1445155 () Bool)

(assert (=> d!2354723 (= c!1445155 (isEmpty!42374 s!14237))))

(assert (=> d!2354723 (validRegex!11547 lt!2680615)))

(assert (=> d!2354723 (= (matchR!10573 lt!2680615 s!14237) lt!2680637)))

(declare-fun bm!729222 () Bool)

(assert (=> bm!729222 (= call!729227 (isEmpty!42374 s!14237))))

(declare-fun b!7864062 () Bool)

(assert (=> b!7864062 (= e!4646948 (not (= (head!16085 s!14237) (c!1445085 lt!2680615))))))

(declare-fun b!7864063 () Bool)

(declare-fun e!4646949 () Bool)

(declare-fun e!4646946 () Bool)

(assert (=> b!7864063 (= e!4646949 e!4646946)))

(declare-fun res!3125984 () Bool)

(assert (=> b!7864063 (=> (not res!3125984) (not e!4646946))))

(assert (=> b!7864063 (= res!3125984 (not lt!2680637))))

(declare-fun b!7864064 () Bool)

(declare-fun res!3125988 () Bool)

(assert (=> b!7864064 (=> (not res!3125988) (not e!4646943))))

(assert (=> b!7864064 (= res!3125988 (not call!729227))))

(declare-fun b!7864065 () Bool)

(declare-fun res!3125986 () Bool)

(assert (=> b!7864065 (=> res!3125986 e!4646949)))

(assert (=> b!7864065 (= res!3125986 (not ((_ is ElementMatch!21137) lt!2680615)))))

(assert (=> b!7864065 (= e!4646944 e!4646949)))

(declare-fun b!7864066 () Bool)

(assert (=> b!7864066 (= e!4646946 e!4646948)))

(declare-fun res!3125990 () Bool)

(assert (=> b!7864066 (=> res!3125990 e!4646948)))

(assert (=> b!7864066 (= res!3125990 call!729227)))

(declare-fun b!7864067 () Bool)

(assert (=> b!7864067 (= e!4646944 (not lt!2680637))))

(declare-fun b!7864068 () Bool)

(declare-fun res!3125989 () Bool)

(assert (=> b!7864068 (=> res!3125989 e!4646949)))

(assert (=> b!7864068 (= res!3125989 e!4646943)))

(declare-fun res!3125985 () Bool)

(assert (=> b!7864068 (=> (not res!3125985) (not e!4646943))))

(assert (=> b!7864068 (= res!3125985 lt!2680637)))

(assert (= (and d!2354723 c!1445155) b!7864060))

(assert (= (and d!2354723 (not c!1445155)) b!7864061))

(assert (= (and d!2354723 c!1445154) b!7864055))

(assert (= (and d!2354723 (not c!1445154)) b!7864057))

(assert (= (and b!7864057 c!1445153) b!7864067))

(assert (= (and b!7864057 (not c!1445153)) b!7864065))

(assert (= (and b!7864065 (not res!3125986)) b!7864068))

(assert (= (and b!7864068 res!3125985) b!7864064))

(assert (= (and b!7864064 res!3125988) b!7864059))

(assert (= (and b!7864059 res!3125987) b!7864056))

(assert (= (and b!7864068 (not res!3125989)) b!7864063))

(assert (= (and b!7864063 res!3125984) b!7864066))

(assert (= (and b!7864066 (not res!3125990)) b!7864058))

(assert (= (and b!7864058 (not res!3125983)) b!7864062))

(assert (= (or b!7864055 b!7864064 b!7864066) bm!729222))

(declare-fun m!8263516 () Bool)

(assert (=> b!7864060 m!8263516))

(assert (=> b!7864062 m!8263420))

(assert (=> b!7864061 m!8263420))

(assert (=> b!7864061 m!8263420))

(declare-fun m!8263518 () Bool)

(assert (=> b!7864061 m!8263518))

(assert (=> b!7864061 m!8263424))

(assert (=> b!7864061 m!8263518))

(assert (=> b!7864061 m!8263424))

(declare-fun m!8263520 () Bool)

(assert (=> b!7864061 m!8263520))

(assert (=> bm!729222 m!8263412))

(assert (=> b!7864058 m!8263424))

(assert (=> b!7864058 m!8263424))

(assert (=> b!7864058 m!8263504))

(assert (=> b!7864056 m!8263420))

(assert (=> d!2354723 m!8263412))

(assert (=> d!2354723 m!8263448))

(assert (=> b!7864059 m!8263424))

(assert (=> b!7864059 m!8263424))

(assert (=> b!7864059 m!8263504))

(assert (=> b!7863862 d!2354723))

(declare-fun b!7864078 () Bool)

(declare-fun e!4646959 () Bool)

(declare-fun lt!2680638 () Bool)

(declare-fun call!729231 () Bool)

(assert (=> b!7864078 (= e!4646959 (= lt!2680638 call!729231))))

(declare-fun b!7864079 () Bool)

(declare-fun e!4646957 () Bool)

(assert (=> b!7864079 (= e!4646957 (= (head!16085 (t!388731 s!14237)) (c!1445085 lt!2680617)))))

(declare-fun b!7864080 () Bool)

(declare-fun e!4646958 () Bool)

(assert (=> b!7864080 (= e!4646959 e!4646958)))

(declare-fun c!1445158 () Bool)

(assert (=> b!7864080 (= c!1445158 ((_ is EmptyLang!21137) lt!2680617))))

(declare-fun b!7864081 () Bool)

(declare-fun res!3125996 () Bool)

(declare-fun e!4646962 () Bool)

(assert (=> b!7864081 (=> res!3125996 e!4646962)))

(assert (=> b!7864081 (= res!3125996 (not (isEmpty!42374 (tail!15628 (t!388731 s!14237)))))))

(declare-fun b!7864082 () Bool)

(declare-fun res!3126000 () Bool)

(assert (=> b!7864082 (=> (not res!3126000) (not e!4646957))))

(assert (=> b!7864082 (= res!3126000 (isEmpty!42374 (tail!15628 (t!388731 s!14237))))))

(declare-fun b!7864083 () Bool)

(declare-fun e!4646961 () Bool)

(assert (=> b!7864083 (= e!4646961 (nullable!9407 lt!2680617))))

(declare-fun b!7864084 () Bool)

(assert (=> b!7864084 (= e!4646961 (matchR!10573 (derivativeStep!6370 lt!2680617 (head!16085 (t!388731 s!14237))) (tail!15628 (t!388731 s!14237))))))

(declare-fun d!2354725 () Bool)

(assert (=> d!2354725 e!4646959))

(declare-fun c!1445159 () Bool)

(assert (=> d!2354725 (= c!1445159 ((_ is EmptyExpr!21137) lt!2680617))))

(assert (=> d!2354725 (= lt!2680638 e!4646961)))

(declare-fun c!1445160 () Bool)

(assert (=> d!2354725 (= c!1445160 (isEmpty!42374 (t!388731 s!14237)))))

(assert (=> d!2354725 (validRegex!11547 lt!2680617)))

(assert (=> d!2354725 (= (matchR!10573 lt!2680617 (t!388731 s!14237)) lt!2680638)))

(declare-fun bm!729226 () Bool)

(assert (=> bm!729226 (= call!729231 (isEmpty!42374 (t!388731 s!14237)))))

(declare-fun b!7864085 () Bool)

(assert (=> b!7864085 (= e!4646962 (not (= (head!16085 (t!388731 s!14237)) (c!1445085 lt!2680617))))))

(declare-fun b!7864086 () Bool)

(declare-fun e!4646963 () Bool)

(declare-fun e!4646960 () Bool)

(assert (=> b!7864086 (= e!4646963 e!4646960)))

(declare-fun res!3125997 () Bool)

(assert (=> b!7864086 (=> (not res!3125997) (not e!4646960))))

(assert (=> b!7864086 (= res!3125997 (not lt!2680638))))

(declare-fun b!7864087 () Bool)

(declare-fun res!3126001 () Bool)

(assert (=> b!7864087 (=> (not res!3126001) (not e!4646957))))

(assert (=> b!7864087 (= res!3126001 (not call!729231))))

(declare-fun b!7864088 () Bool)

(declare-fun res!3125999 () Bool)

(assert (=> b!7864088 (=> res!3125999 e!4646963)))

(assert (=> b!7864088 (= res!3125999 (not ((_ is ElementMatch!21137) lt!2680617)))))

(assert (=> b!7864088 (= e!4646958 e!4646963)))

(declare-fun b!7864089 () Bool)

(assert (=> b!7864089 (= e!4646960 e!4646962)))

(declare-fun res!3126003 () Bool)

(assert (=> b!7864089 (=> res!3126003 e!4646962)))

(assert (=> b!7864089 (= res!3126003 call!729231)))

(declare-fun b!7864090 () Bool)

(assert (=> b!7864090 (= e!4646958 (not lt!2680638))))

(declare-fun b!7864091 () Bool)

(declare-fun res!3126002 () Bool)

(assert (=> b!7864091 (=> res!3126002 e!4646963)))

(assert (=> b!7864091 (= res!3126002 e!4646957)))

(declare-fun res!3125998 () Bool)

(assert (=> b!7864091 (=> (not res!3125998) (not e!4646957))))

(assert (=> b!7864091 (= res!3125998 lt!2680638)))

(assert (= (and d!2354725 c!1445160) b!7864083))

(assert (= (and d!2354725 (not c!1445160)) b!7864084))

(assert (= (and d!2354725 c!1445159) b!7864078))

(assert (= (and d!2354725 (not c!1445159)) b!7864080))

(assert (= (and b!7864080 c!1445158) b!7864090))

(assert (= (and b!7864080 (not c!1445158)) b!7864088))

(assert (= (and b!7864088 (not res!3125999)) b!7864091))

(assert (= (and b!7864091 res!3125998) b!7864087))

(assert (= (and b!7864087 res!3126001) b!7864082))

(assert (= (and b!7864082 res!3126000) b!7864079))

(assert (= (and b!7864091 (not res!3126002)) b!7864086))

(assert (= (and b!7864086 res!3125997) b!7864089))

(assert (= (and b!7864089 (not res!3126003)) b!7864081))

(assert (= (and b!7864081 (not res!3125996)) b!7864085))

(assert (= (or b!7864078 b!7864087 b!7864089) bm!729226))

(declare-fun m!8263528 () Bool)

(assert (=> b!7864083 m!8263528))

(declare-fun m!8263530 () Bool)

(assert (=> b!7864085 m!8263530))

(assert (=> b!7864084 m!8263530))

(assert (=> b!7864084 m!8263530))

(declare-fun m!8263532 () Bool)

(assert (=> b!7864084 m!8263532))

(declare-fun m!8263534 () Bool)

(assert (=> b!7864084 m!8263534))

(assert (=> b!7864084 m!8263532))

(assert (=> b!7864084 m!8263534))

(declare-fun m!8263536 () Bool)

(assert (=> b!7864084 m!8263536))

(declare-fun m!8263538 () Bool)

(assert (=> bm!729226 m!8263538))

(assert (=> b!7864081 m!8263534))

(assert (=> b!7864081 m!8263534))

(declare-fun m!8263542 () Bool)

(assert (=> b!7864081 m!8263542))

(assert (=> b!7864079 m!8263530))

(assert (=> d!2354725 m!8263538))

(declare-fun m!8263548 () Bool)

(assert (=> d!2354725 m!8263548))

(assert (=> b!7864082 m!8263534))

(assert (=> b!7864082 m!8263534))

(assert (=> b!7864082 m!8263542))

(assert (=> b!7863862 d!2354725))

(declare-fun d!2354731 () Bool)

(assert (=> d!2354731 (matchR!10573 (Union!21137 lt!2680619 lt!2680620) (t!388731 s!14237))))

(declare-fun lt!2680645 () Unit!168968)

(declare-fun choose!59681 (Regex!21137 Regex!21137 List!73996) Unit!168968)

(assert (=> d!2354731 (= lt!2680645 (choose!59681 lt!2680620 lt!2680619 (t!388731 s!14237)))))

(declare-fun e!4646995 () Bool)

(assert (=> d!2354731 e!4646995))

(declare-fun res!3126019 () Bool)

(assert (=> d!2354731 (=> (not res!3126019) (not e!4646995))))

(assert (=> d!2354731 (= res!3126019 (validRegex!11547 lt!2680620))))

(assert (=> d!2354731 (= (lemmaReversedUnionAcceptsSameString!50 lt!2680620 lt!2680619 (t!388731 s!14237)) lt!2680645)))

(declare-fun b!7864147 () Bool)

(assert (=> b!7864147 (= e!4646995 (validRegex!11547 lt!2680619))))

(assert (= (and d!2354731 res!3126019) b!7864147))

(declare-fun m!8263578 () Bool)

(assert (=> d!2354731 m!8263578))

(declare-fun m!8263580 () Bool)

(assert (=> d!2354731 m!8263580))

(assert (=> d!2354731 m!8263406))

(assert (=> b!7864147 m!8263416))

(assert (=> b!7863862 d!2354731))

(declare-fun d!2354745 () Bool)

(declare-fun res!3126049 () Bool)

(declare-fun e!4647028 () Bool)

(assert (=> d!2354745 (=> res!3126049 e!4647028)))

(assert (=> d!2354745 (= res!3126049 ((_ is ElementMatch!21137) r2!6156))))

(assert (=> d!2354745 (= (validRegex!11547 r2!6156) e!4647028)))

(declare-fun bm!729253 () Bool)

(declare-fun call!729259 () Bool)

(declare-fun c!1445191 () Bool)

(assert (=> bm!729253 (= call!729259 (validRegex!11547 (ite c!1445191 (regTwo!42787 r2!6156) (regTwo!42786 r2!6156))))))

(declare-fun b!7864192 () Bool)

(declare-fun res!3126047 () Bool)

(declare-fun e!4647030 () Bool)

(assert (=> b!7864192 (=> (not res!3126047) (not e!4647030))))

(declare-fun call!729260 () Bool)

(assert (=> b!7864192 (= res!3126047 call!729260)))

(declare-fun e!4647032 () Bool)

(assert (=> b!7864192 (= e!4647032 e!4647030)))

(declare-fun b!7864193 () Bool)

(assert (=> b!7864193 (= e!4647030 call!729259)))

(declare-fun b!7864194 () Bool)

(declare-fun e!4647029 () Bool)

(assert (=> b!7864194 (= e!4647029 e!4647032)))

(assert (=> b!7864194 (= c!1445191 ((_ is Union!21137) r2!6156))))

(declare-fun bm!729254 () Bool)

(declare-fun call!729258 () Bool)

(declare-fun c!1445190 () Bool)

(assert (=> bm!729254 (= call!729258 (validRegex!11547 (ite c!1445190 (reg!21466 r2!6156) (ite c!1445191 (regOne!42787 r2!6156) (regOne!42786 r2!6156)))))))

(declare-fun b!7864195 () Bool)

(declare-fun e!4647033 () Bool)

(assert (=> b!7864195 (= e!4647029 e!4647033)))

(declare-fun res!3126048 () Bool)

(assert (=> b!7864195 (= res!3126048 (not (nullable!9407 (reg!21466 r2!6156))))))

(assert (=> b!7864195 (=> (not res!3126048) (not e!4647033))))

(declare-fun b!7864196 () Bool)

(declare-fun e!4647031 () Bool)

(assert (=> b!7864196 (= e!4647031 call!729259)))

(declare-fun b!7864197 () Bool)

(declare-fun e!4647027 () Bool)

(assert (=> b!7864197 (= e!4647027 e!4647031)))

(declare-fun res!3126050 () Bool)

(assert (=> b!7864197 (=> (not res!3126050) (not e!4647031))))

(assert (=> b!7864197 (= res!3126050 call!729260)))

(declare-fun b!7864198 () Bool)

(declare-fun res!3126046 () Bool)

(assert (=> b!7864198 (=> res!3126046 e!4647027)))

(assert (=> b!7864198 (= res!3126046 (not ((_ is Concat!29982) r2!6156)))))

(assert (=> b!7864198 (= e!4647032 e!4647027)))

(declare-fun bm!729255 () Bool)

(assert (=> bm!729255 (= call!729260 call!729258)))

(declare-fun b!7864199 () Bool)

(assert (=> b!7864199 (= e!4647028 e!4647029)))

(assert (=> b!7864199 (= c!1445190 ((_ is Star!21137) r2!6156))))

(declare-fun b!7864200 () Bool)

(assert (=> b!7864200 (= e!4647033 call!729258)))

(assert (= (and d!2354745 (not res!3126049)) b!7864199))

(assert (= (and b!7864199 c!1445190) b!7864195))

(assert (= (and b!7864199 (not c!1445190)) b!7864194))

(assert (= (and b!7864195 res!3126048) b!7864200))

(assert (= (and b!7864194 c!1445191) b!7864192))

(assert (= (and b!7864194 (not c!1445191)) b!7864198))

(assert (= (and b!7864192 res!3126047) b!7864193))

(assert (= (and b!7864198 (not res!3126046)) b!7864197))

(assert (= (and b!7864197 res!3126050) b!7864196))

(assert (= (or b!7864193 b!7864196) bm!729253))

(assert (= (or b!7864192 b!7864197) bm!729255))

(assert (= (or b!7864200 bm!729255) bm!729254))

(declare-fun m!8263606 () Bool)

(assert (=> bm!729253 m!8263606))

(declare-fun m!8263608 () Bool)

(assert (=> bm!729254 m!8263608))

(declare-fun m!8263610 () Bool)

(assert (=> b!7864195 m!8263610))

(assert (=> b!7863853 d!2354745))

(declare-fun d!2354755 () Bool)

(declare-fun res!3126054 () Bool)

(declare-fun e!4647037 () Bool)

(assert (=> d!2354755 (=> res!3126054 e!4647037)))

(assert (=> d!2354755 (= res!3126054 ((_ is ElementMatch!21137) lt!2680619))))

(assert (=> d!2354755 (= (validRegex!11547 lt!2680619) e!4647037)))

(declare-fun bm!729256 () Bool)

(declare-fun call!729262 () Bool)

(declare-fun c!1445195 () Bool)

(assert (=> bm!729256 (= call!729262 (validRegex!11547 (ite c!1445195 (regTwo!42787 lt!2680619) (regTwo!42786 lt!2680619))))))

(declare-fun b!7864205 () Bool)

(declare-fun res!3126052 () Bool)

(declare-fun e!4647039 () Bool)

(assert (=> b!7864205 (=> (not res!3126052) (not e!4647039))))

(declare-fun call!729263 () Bool)

(assert (=> b!7864205 (= res!3126052 call!729263)))

(declare-fun e!4647041 () Bool)

(assert (=> b!7864205 (= e!4647041 e!4647039)))

(declare-fun b!7864206 () Bool)

(assert (=> b!7864206 (= e!4647039 call!729262)))

(declare-fun b!7864207 () Bool)

(declare-fun e!4647038 () Bool)

(assert (=> b!7864207 (= e!4647038 e!4647041)))

(assert (=> b!7864207 (= c!1445195 ((_ is Union!21137) lt!2680619))))

(declare-fun bm!729257 () Bool)

(declare-fun call!729261 () Bool)

(declare-fun c!1445194 () Bool)

(assert (=> bm!729257 (= call!729261 (validRegex!11547 (ite c!1445194 (reg!21466 lt!2680619) (ite c!1445195 (regOne!42787 lt!2680619) (regOne!42786 lt!2680619)))))))

(declare-fun b!7864208 () Bool)

(declare-fun e!4647042 () Bool)

(assert (=> b!7864208 (= e!4647038 e!4647042)))

(declare-fun res!3126053 () Bool)

(assert (=> b!7864208 (= res!3126053 (not (nullable!9407 (reg!21466 lt!2680619))))))

(assert (=> b!7864208 (=> (not res!3126053) (not e!4647042))))

(declare-fun b!7864209 () Bool)

(declare-fun e!4647040 () Bool)

(assert (=> b!7864209 (= e!4647040 call!729262)))

(declare-fun b!7864210 () Bool)

(declare-fun e!4647036 () Bool)

(assert (=> b!7864210 (= e!4647036 e!4647040)))

(declare-fun res!3126055 () Bool)

(assert (=> b!7864210 (=> (not res!3126055) (not e!4647040))))

(assert (=> b!7864210 (= res!3126055 call!729263)))

(declare-fun b!7864211 () Bool)

(declare-fun res!3126051 () Bool)

(assert (=> b!7864211 (=> res!3126051 e!4647036)))

(assert (=> b!7864211 (= res!3126051 (not ((_ is Concat!29982) lt!2680619)))))

(assert (=> b!7864211 (= e!4647041 e!4647036)))

(declare-fun bm!729258 () Bool)

(assert (=> bm!729258 (= call!729263 call!729261)))

(declare-fun b!7864212 () Bool)

(assert (=> b!7864212 (= e!4647037 e!4647038)))

(assert (=> b!7864212 (= c!1445194 ((_ is Star!21137) lt!2680619))))

(declare-fun b!7864213 () Bool)

(assert (=> b!7864213 (= e!4647042 call!729261)))

(assert (= (and d!2354755 (not res!3126054)) b!7864212))

(assert (= (and b!7864212 c!1445194) b!7864208))

(assert (= (and b!7864212 (not c!1445194)) b!7864207))

(assert (= (and b!7864208 res!3126053) b!7864213))

(assert (= (and b!7864207 c!1445195) b!7864205))

(assert (= (and b!7864207 (not c!1445195)) b!7864211))

(assert (= (and b!7864205 res!3126052) b!7864206))

(assert (= (and b!7864211 (not res!3126051)) b!7864210))

(assert (= (and b!7864210 res!3126055) b!7864209))

(assert (= (or b!7864206 b!7864209) bm!729256))

(assert (= (or b!7864205 b!7864210) bm!729258))

(assert (= (or b!7864213 bm!729258) bm!729257))

(declare-fun m!8263612 () Bool)

(assert (=> bm!729256 m!8263612))

(declare-fun m!8263614 () Bool)

(assert (=> bm!729257 m!8263614))

(declare-fun m!8263616 () Bool)

(assert (=> b!7864208 m!8263616))

(assert (=> b!7863858 d!2354755))

(declare-fun d!2354757 () Bool)

(declare-fun res!3126059 () Bool)

(declare-fun e!4647045 () Bool)

(assert (=> d!2354757 (=> res!3126059 e!4647045)))

(assert (=> d!2354757 (= res!3126059 ((_ is ElementMatch!21137) r1!6218))))

(assert (=> d!2354757 (= (validRegex!11547 r1!6218) e!4647045)))

(declare-fun bm!729259 () Bool)

(declare-fun call!729265 () Bool)

(declare-fun c!1445198 () Bool)

(assert (=> bm!729259 (= call!729265 (validRegex!11547 (ite c!1445198 (regTwo!42787 r1!6218) (regTwo!42786 r1!6218))))))

(declare-fun b!7864216 () Bool)

(declare-fun res!3126057 () Bool)

(declare-fun e!4647047 () Bool)

(assert (=> b!7864216 (=> (not res!3126057) (not e!4647047))))

(declare-fun call!729266 () Bool)

(assert (=> b!7864216 (= res!3126057 call!729266)))

(declare-fun e!4647049 () Bool)

(assert (=> b!7864216 (= e!4647049 e!4647047)))

(declare-fun b!7864217 () Bool)

(assert (=> b!7864217 (= e!4647047 call!729265)))

(declare-fun b!7864218 () Bool)

(declare-fun e!4647046 () Bool)

(assert (=> b!7864218 (= e!4647046 e!4647049)))

(assert (=> b!7864218 (= c!1445198 ((_ is Union!21137) r1!6218))))

(declare-fun c!1445197 () Bool)

(declare-fun call!729264 () Bool)

(declare-fun bm!729260 () Bool)

(assert (=> bm!729260 (= call!729264 (validRegex!11547 (ite c!1445197 (reg!21466 r1!6218) (ite c!1445198 (regOne!42787 r1!6218) (regOne!42786 r1!6218)))))))

(declare-fun b!7864219 () Bool)

(declare-fun e!4647050 () Bool)

(assert (=> b!7864219 (= e!4647046 e!4647050)))

(declare-fun res!3126058 () Bool)

(assert (=> b!7864219 (= res!3126058 (not (nullable!9407 (reg!21466 r1!6218))))))

(assert (=> b!7864219 (=> (not res!3126058) (not e!4647050))))

(declare-fun b!7864220 () Bool)

(declare-fun e!4647048 () Bool)

(assert (=> b!7864220 (= e!4647048 call!729265)))

(declare-fun b!7864221 () Bool)

(declare-fun e!4647044 () Bool)

(assert (=> b!7864221 (= e!4647044 e!4647048)))

(declare-fun res!3126060 () Bool)

(assert (=> b!7864221 (=> (not res!3126060) (not e!4647048))))

(assert (=> b!7864221 (= res!3126060 call!729266)))

(declare-fun b!7864222 () Bool)

(declare-fun res!3126056 () Bool)

(assert (=> b!7864222 (=> res!3126056 e!4647044)))

(assert (=> b!7864222 (= res!3126056 (not ((_ is Concat!29982) r1!6218)))))

(assert (=> b!7864222 (= e!4647049 e!4647044)))

(declare-fun bm!729261 () Bool)

(assert (=> bm!729261 (= call!729266 call!729264)))

(declare-fun b!7864223 () Bool)

(assert (=> b!7864223 (= e!4647045 e!4647046)))

(assert (=> b!7864223 (= c!1445197 ((_ is Star!21137) r1!6218))))

(declare-fun b!7864224 () Bool)

(assert (=> b!7864224 (= e!4647050 call!729264)))

(assert (= (and d!2354757 (not res!3126059)) b!7864223))

(assert (= (and b!7864223 c!1445197) b!7864219))

(assert (= (and b!7864223 (not c!1445197)) b!7864218))

(assert (= (and b!7864219 res!3126058) b!7864224))

(assert (= (and b!7864218 c!1445198) b!7864216))

(assert (= (and b!7864218 (not c!1445198)) b!7864222))

(assert (= (and b!7864216 res!3126057) b!7864217))

(assert (= (and b!7864222 (not res!3126056)) b!7864221))

(assert (= (and b!7864221 res!3126060) b!7864220))

(assert (= (or b!7864217 b!7864220) bm!729259))

(assert (= (or b!7864216 b!7864221) bm!729261))

(assert (= (or b!7864224 bm!729261) bm!729260))

(declare-fun m!8263620 () Bool)

(assert (=> bm!729259 m!8263620))

(declare-fun m!8263622 () Bool)

(assert (=> bm!729260 m!8263622))

(declare-fun m!8263624 () Bool)

(assert (=> b!7864219 m!8263624))

(assert (=> start!743790 d!2354757))

(declare-fun d!2354761 () Bool)

(declare-fun res!3126069 () Bool)

(declare-fun e!4647059 () Bool)

(assert (=> d!2354761 (=> res!3126069 e!4647059)))

(assert (=> d!2354761 (= res!3126069 ((_ is ElementMatch!21137) lt!2680620))))

(assert (=> d!2354761 (= (validRegex!11547 lt!2680620) e!4647059)))

(declare-fun bm!729265 () Bool)

(declare-fun call!729271 () Bool)

(declare-fun c!1445202 () Bool)

(assert (=> bm!729265 (= call!729271 (validRegex!11547 (ite c!1445202 (regTwo!42787 lt!2680620) (regTwo!42786 lt!2680620))))))

(declare-fun b!7864234 () Bool)

(declare-fun res!3126067 () Bool)

(declare-fun e!4647061 () Bool)

(assert (=> b!7864234 (=> (not res!3126067) (not e!4647061))))

(declare-fun call!729272 () Bool)

(assert (=> b!7864234 (= res!3126067 call!729272)))

(declare-fun e!4647063 () Bool)

(assert (=> b!7864234 (= e!4647063 e!4647061)))

(declare-fun b!7864235 () Bool)

(assert (=> b!7864235 (= e!4647061 call!729271)))

(declare-fun b!7864236 () Bool)

(declare-fun e!4647060 () Bool)

(assert (=> b!7864236 (= e!4647060 e!4647063)))

(assert (=> b!7864236 (= c!1445202 ((_ is Union!21137) lt!2680620))))

(declare-fun bm!729266 () Bool)

(declare-fun call!729270 () Bool)

(declare-fun c!1445201 () Bool)

(assert (=> bm!729266 (= call!729270 (validRegex!11547 (ite c!1445201 (reg!21466 lt!2680620) (ite c!1445202 (regOne!42787 lt!2680620) (regOne!42786 lt!2680620)))))))

(declare-fun b!7864237 () Bool)

(declare-fun e!4647064 () Bool)

(assert (=> b!7864237 (= e!4647060 e!4647064)))

(declare-fun res!3126068 () Bool)

(assert (=> b!7864237 (= res!3126068 (not (nullable!9407 (reg!21466 lt!2680620))))))

(assert (=> b!7864237 (=> (not res!3126068) (not e!4647064))))

(declare-fun b!7864238 () Bool)

(declare-fun e!4647062 () Bool)

(assert (=> b!7864238 (= e!4647062 call!729271)))

(declare-fun b!7864239 () Bool)

(declare-fun e!4647058 () Bool)

(assert (=> b!7864239 (= e!4647058 e!4647062)))

(declare-fun res!3126070 () Bool)

(assert (=> b!7864239 (=> (not res!3126070) (not e!4647062))))

(assert (=> b!7864239 (= res!3126070 call!729272)))

(declare-fun b!7864240 () Bool)

(declare-fun res!3126066 () Bool)

(assert (=> b!7864240 (=> res!3126066 e!4647058)))

(assert (=> b!7864240 (= res!3126066 (not ((_ is Concat!29982) lt!2680620)))))

(assert (=> b!7864240 (= e!4647063 e!4647058)))

(declare-fun bm!729267 () Bool)

(assert (=> bm!729267 (= call!729272 call!729270)))

(declare-fun b!7864241 () Bool)

(assert (=> b!7864241 (= e!4647059 e!4647060)))

(assert (=> b!7864241 (= c!1445201 ((_ is Star!21137) lt!2680620))))

(declare-fun b!7864242 () Bool)

(assert (=> b!7864242 (= e!4647064 call!729270)))

(assert (= (and d!2354761 (not res!3126069)) b!7864241))

(assert (= (and b!7864241 c!1445201) b!7864237))

(assert (= (and b!7864241 (not c!1445201)) b!7864236))

(assert (= (and b!7864237 res!3126068) b!7864242))

(assert (= (and b!7864236 c!1445202) b!7864234))

(assert (= (and b!7864236 (not c!1445202)) b!7864240))

(assert (= (and b!7864234 res!3126067) b!7864235))

(assert (= (and b!7864240 (not res!3126066)) b!7864239))

(assert (= (and b!7864239 res!3126070) b!7864238))

(assert (= (or b!7864235 b!7864238) bm!729265))

(assert (= (or b!7864234 b!7864239) bm!729267))

(assert (= (or b!7864242 bm!729267) bm!729266))

(declare-fun m!8263632 () Bool)

(assert (=> bm!729265 m!8263632))

(declare-fun m!8263634 () Bool)

(assert (=> bm!729266 m!8263634))

(declare-fun m!8263636 () Bool)

(assert (=> b!7864237 m!8263636))

(assert (=> b!7863844 d!2354761))

(declare-fun b!7864257 () Bool)

(declare-fun e!4647074 () Bool)

(declare-fun lt!2680654 () Bool)

(declare-fun call!729274 () Bool)

(assert (=> b!7864257 (= e!4647074 (= lt!2680654 call!729274))))

(declare-fun b!7864258 () Bool)

(declare-fun e!4647072 () Bool)

(assert (=> b!7864258 (= e!4647072 (= (head!16085 (t!388731 s!14237)) (c!1445085 (Union!21137 lt!2680620 lt!2680619))))))

(declare-fun b!7864259 () Bool)

(declare-fun e!4647073 () Bool)

(assert (=> b!7864259 (= e!4647074 e!4647073)))

(declare-fun c!1445206 () Bool)

(assert (=> b!7864259 (= c!1445206 ((_ is EmptyLang!21137) (Union!21137 lt!2680620 lt!2680619)))))

(declare-fun b!7864260 () Bool)

(declare-fun res!3126079 () Bool)

(declare-fun e!4647077 () Bool)

(assert (=> b!7864260 (=> res!3126079 e!4647077)))

(assert (=> b!7864260 (= res!3126079 (not (isEmpty!42374 (tail!15628 (t!388731 s!14237)))))))

(declare-fun b!7864261 () Bool)

(declare-fun res!3126083 () Bool)

(assert (=> b!7864261 (=> (not res!3126083) (not e!4647072))))

(assert (=> b!7864261 (= res!3126083 (isEmpty!42374 (tail!15628 (t!388731 s!14237))))))

(declare-fun b!7864262 () Bool)

(declare-fun e!4647076 () Bool)

(assert (=> b!7864262 (= e!4647076 (nullable!9407 (Union!21137 lt!2680620 lt!2680619)))))

(declare-fun b!7864263 () Bool)

(assert (=> b!7864263 (= e!4647076 (matchR!10573 (derivativeStep!6370 (Union!21137 lt!2680620 lt!2680619) (head!16085 (t!388731 s!14237))) (tail!15628 (t!388731 s!14237))))))

(declare-fun d!2354765 () Bool)

(assert (=> d!2354765 e!4647074))

(declare-fun c!1445207 () Bool)

(assert (=> d!2354765 (= c!1445207 ((_ is EmptyExpr!21137) (Union!21137 lt!2680620 lt!2680619)))))

(assert (=> d!2354765 (= lt!2680654 e!4647076)))

(declare-fun c!1445208 () Bool)

(assert (=> d!2354765 (= c!1445208 (isEmpty!42374 (t!388731 s!14237)))))

(assert (=> d!2354765 (validRegex!11547 (Union!21137 lt!2680620 lt!2680619))))

(assert (=> d!2354765 (= (matchR!10573 (Union!21137 lt!2680620 lt!2680619) (t!388731 s!14237)) lt!2680654)))

(declare-fun bm!729269 () Bool)

(assert (=> bm!729269 (= call!729274 (isEmpty!42374 (t!388731 s!14237)))))

(declare-fun b!7864264 () Bool)

(assert (=> b!7864264 (= e!4647077 (not (= (head!16085 (t!388731 s!14237)) (c!1445085 (Union!21137 lt!2680620 lt!2680619)))))))

(declare-fun b!7864265 () Bool)

(declare-fun e!4647078 () Bool)

(declare-fun e!4647075 () Bool)

(assert (=> b!7864265 (= e!4647078 e!4647075)))

(declare-fun res!3126080 () Bool)

(assert (=> b!7864265 (=> (not res!3126080) (not e!4647075))))

(assert (=> b!7864265 (= res!3126080 (not lt!2680654))))

(declare-fun b!7864266 () Bool)

(declare-fun res!3126084 () Bool)

(assert (=> b!7864266 (=> (not res!3126084) (not e!4647072))))

(assert (=> b!7864266 (= res!3126084 (not call!729274))))

(declare-fun b!7864267 () Bool)

(declare-fun res!3126082 () Bool)

(assert (=> b!7864267 (=> res!3126082 e!4647078)))

(assert (=> b!7864267 (= res!3126082 (not ((_ is ElementMatch!21137) (Union!21137 lt!2680620 lt!2680619))))))

(assert (=> b!7864267 (= e!4647073 e!4647078)))

(declare-fun b!7864268 () Bool)

(assert (=> b!7864268 (= e!4647075 e!4647077)))

(declare-fun res!3126086 () Bool)

(assert (=> b!7864268 (=> res!3126086 e!4647077)))

(assert (=> b!7864268 (= res!3126086 call!729274)))

(declare-fun b!7864269 () Bool)

(assert (=> b!7864269 (= e!4647073 (not lt!2680654))))

(declare-fun b!7864270 () Bool)

(declare-fun res!3126085 () Bool)

(assert (=> b!7864270 (=> res!3126085 e!4647078)))

(assert (=> b!7864270 (= res!3126085 e!4647072)))

(declare-fun res!3126081 () Bool)

(assert (=> b!7864270 (=> (not res!3126081) (not e!4647072))))

(assert (=> b!7864270 (= res!3126081 lt!2680654)))

(assert (= (and d!2354765 c!1445208) b!7864262))

(assert (= (and d!2354765 (not c!1445208)) b!7864263))

(assert (= (and d!2354765 c!1445207) b!7864257))

(assert (= (and d!2354765 (not c!1445207)) b!7864259))

(assert (= (and b!7864259 c!1445206) b!7864269))

(assert (= (and b!7864259 (not c!1445206)) b!7864267))

(assert (= (and b!7864267 (not res!3126082)) b!7864270))

(assert (= (and b!7864270 res!3126081) b!7864266))

(assert (= (and b!7864266 res!3126084) b!7864261))

(assert (= (and b!7864261 res!3126083) b!7864258))

(assert (= (and b!7864270 (not res!3126085)) b!7864265))

(assert (= (and b!7864265 res!3126080) b!7864268))

(assert (= (and b!7864268 (not res!3126086)) b!7864260))

(assert (= (and b!7864260 (not res!3126079)) b!7864264))

(assert (= (or b!7864257 b!7864266 b!7864268) bm!729269))

(declare-fun m!8263644 () Bool)

(assert (=> b!7864262 m!8263644))

(assert (=> b!7864264 m!8263530))

(assert (=> b!7864263 m!8263530))

(assert (=> b!7864263 m!8263530))

(declare-fun m!8263646 () Bool)

(assert (=> b!7864263 m!8263646))

(assert (=> b!7864263 m!8263534))

(assert (=> b!7864263 m!8263646))

(assert (=> b!7864263 m!8263534))

(declare-fun m!8263648 () Bool)

(assert (=> b!7864263 m!8263648))

(assert (=> bm!729269 m!8263538))

(assert (=> b!7864260 m!8263534))

(assert (=> b!7864260 m!8263534))

(assert (=> b!7864260 m!8263542))

(assert (=> b!7864258 m!8263530))

(assert (=> d!2354765 m!8263538))

(declare-fun m!8263650 () Bool)

(assert (=> d!2354765 m!8263650))

(assert (=> b!7864261 m!8263534))

(assert (=> b!7864261 m!8263534))

(assert (=> b!7864261 m!8263542))

(assert (=> b!7863844 d!2354765))

(declare-fun d!2354769 () Bool)

(assert (=> d!2354769 (= (isEmpty!42374 s!14237) ((_ is Nil!73872) s!14237))))

(assert (=> b!7863844 d!2354769))

(declare-fun d!2354773 () Bool)

(declare-fun e!4647104 () Bool)

(assert (=> d!2354773 e!4647104))

(declare-fun c!1445214 () Bool)

(assert (=> d!2354773 (= c!1445214 (isEmpty!42374 s!14237))))

(declare-fun lt!2680661 () Unit!168968)

(declare-fun choose!59683 (Regex!21137 List!73996) Unit!168968)

(assert (=> d!2354773 (= lt!2680661 (choose!59683 r1!6218 s!14237))))

(assert (=> d!2354773 (validRegex!11547 r1!6218)))

(assert (=> d!2354773 (= (lemmaRegexAcceptsStringThenDerivativeAcceptsTail!18 r1!6218 s!14237) lt!2680661)))

(declare-fun b!7864342 () Bool)

(assert (=> b!7864342 (= e!4647104 (nullable!9407 r1!6218))))

(declare-fun b!7864343 () Bool)

(assert (=> b!7864343 (= e!4647104 (matchR!10573 (derivativeStep!6370 r1!6218 (head!16085 s!14237)) (tail!15628 s!14237)))))

(assert (= (and d!2354773 c!1445214) b!7864342))

(assert (= (and d!2354773 (not c!1445214)) b!7864343))

(assert (=> d!2354773 m!8263412))

(declare-fun m!8263664 () Bool)

(assert (=> d!2354773 m!8263664))

(assert (=> d!2354773 m!8263418))

(assert (=> b!7864342 m!8263438))

(assert (=> b!7864343 m!8263420))

(assert (=> b!7864343 m!8263420))

(assert (=> b!7864343 m!8263422))

(assert (=> b!7864343 m!8263424))

(assert (=> b!7864343 m!8263422))

(assert (=> b!7864343 m!8263424))

(assert (=> b!7864343 m!8263426))

(assert (=> b!7863844 d!2354773))

(declare-fun d!2354775 () Bool)

(assert (=> d!2354775 (matchR!10573 (Union!21137 lt!2680620 lt!2680619) (t!388731 s!14237))))

(declare-fun lt!2680664 () Unit!168968)

(declare-fun choose!59684 (Regex!21137 Regex!21137 List!73996) Unit!168968)

(assert (=> d!2354775 (= lt!2680664 (choose!59684 lt!2680620 lt!2680619 (t!388731 s!14237)))))

(declare-fun e!4647109 () Bool)

(assert (=> d!2354775 e!4647109))

(declare-fun res!3126100 () Bool)

(assert (=> d!2354775 (=> (not res!3126100) (not e!4647109))))

(assert (=> d!2354775 (= res!3126100 (validRegex!11547 lt!2680620))))

(assert (=> d!2354775 (= (lemmaRegexAcceptsStringThenUnionWithAnotherAcceptsToo!140 lt!2680620 lt!2680619 (t!388731 s!14237)) lt!2680664)))

(declare-fun b!7864351 () Bool)

(assert (=> b!7864351 (= e!4647109 (validRegex!11547 lt!2680619))))

(assert (= (and d!2354775 res!3126100) b!7864351))

(assert (=> d!2354775 m!8263414))

(declare-fun m!8263666 () Bool)

(assert (=> d!2354775 m!8263666))

(assert (=> d!2354775 m!8263406))

(assert (=> b!7864351 m!8263416))

(assert (=> b!7863844 d!2354775))

(declare-fun b!7864352 () Bool)

(declare-fun e!4647112 () Bool)

(declare-fun lt!2680665 () Bool)

(declare-fun call!729276 () Bool)

(assert (=> b!7864352 (= e!4647112 (= lt!2680665 call!729276))))

(declare-fun b!7864353 () Bool)

(declare-fun e!4647110 () Bool)

(assert (=> b!7864353 (= e!4647110 (= (head!16085 s!14237) (c!1445085 r1!6218)))))

(declare-fun b!7864354 () Bool)

(declare-fun e!4647111 () Bool)

(assert (=> b!7864354 (= e!4647112 e!4647111)))

(declare-fun c!1445215 () Bool)

(assert (=> b!7864354 (= c!1445215 ((_ is EmptyLang!21137) r1!6218))))

(declare-fun b!7864355 () Bool)

(declare-fun res!3126101 () Bool)

(declare-fun e!4647115 () Bool)

(assert (=> b!7864355 (=> res!3126101 e!4647115)))

(assert (=> b!7864355 (= res!3126101 (not (isEmpty!42374 (tail!15628 s!14237))))))

(declare-fun b!7864356 () Bool)

(declare-fun res!3126105 () Bool)

(assert (=> b!7864356 (=> (not res!3126105) (not e!4647110))))

(assert (=> b!7864356 (= res!3126105 (isEmpty!42374 (tail!15628 s!14237)))))

(declare-fun b!7864357 () Bool)

(declare-fun e!4647114 () Bool)

(assert (=> b!7864357 (= e!4647114 (nullable!9407 r1!6218))))

(declare-fun b!7864358 () Bool)

(assert (=> b!7864358 (= e!4647114 (matchR!10573 (derivativeStep!6370 r1!6218 (head!16085 s!14237)) (tail!15628 s!14237)))))

(declare-fun d!2354777 () Bool)

(assert (=> d!2354777 e!4647112))

(declare-fun c!1445216 () Bool)

(assert (=> d!2354777 (= c!1445216 ((_ is EmptyExpr!21137) r1!6218))))

(assert (=> d!2354777 (= lt!2680665 e!4647114)))

(declare-fun c!1445217 () Bool)

(assert (=> d!2354777 (= c!1445217 (isEmpty!42374 s!14237))))

(assert (=> d!2354777 (validRegex!11547 r1!6218)))

(assert (=> d!2354777 (= (matchR!10573 r1!6218 s!14237) lt!2680665)))

(declare-fun bm!729271 () Bool)

(assert (=> bm!729271 (= call!729276 (isEmpty!42374 s!14237))))

(declare-fun b!7864359 () Bool)

(assert (=> b!7864359 (= e!4647115 (not (= (head!16085 s!14237) (c!1445085 r1!6218))))))

(declare-fun b!7864360 () Bool)

(declare-fun e!4647116 () Bool)

(declare-fun e!4647113 () Bool)

(assert (=> b!7864360 (= e!4647116 e!4647113)))

(declare-fun res!3126102 () Bool)

(assert (=> b!7864360 (=> (not res!3126102) (not e!4647113))))

(assert (=> b!7864360 (= res!3126102 (not lt!2680665))))

(declare-fun b!7864361 () Bool)

(declare-fun res!3126106 () Bool)

(assert (=> b!7864361 (=> (not res!3126106) (not e!4647110))))

(assert (=> b!7864361 (= res!3126106 (not call!729276))))

(declare-fun b!7864362 () Bool)

(declare-fun res!3126104 () Bool)

(assert (=> b!7864362 (=> res!3126104 e!4647116)))

(assert (=> b!7864362 (= res!3126104 (not ((_ is ElementMatch!21137) r1!6218)))))

(assert (=> b!7864362 (= e!4647111 e!4647116)))

(declare-fun b!7864363 () Bool)

(assert (=> b!7864363 (= e!4647113 e!4647115)))

(declare-fun res!3126108 () Bool)

(assert (=> b!7864363 (=> res!3126108 e!4647115)))

(assert (=> b!7864363 (= res!3126108 call!729276)))

(declare-fun b!7864364 () Bool)

(assert (=> b!7864364 (= e!4647111 (not lt!2680665))))

(declare-fun b!7864365 () Bool)

(declare-fun res!3126107 () Bool)

(assert (=> b!7864365 (=> res!3126107 e!4647116)))

(assert (=> b!7864365 (= res!3126107 e!4647110)))

(declare-fun res!3126103 () Bool)

(assert (=> b!7864365 (=> (not res!3126103) (not e!4647110))))

(assert (=> b!7864365 (= res!3126103 lt!2680665)))

(assert (= (and d!2354777 c!1445217) b!7864357))

(assert (= (and d!2354777 (not c!1445217)) b!7864358))

(assert (= (and d!2354777 c!1445216) b!7864352))

(assert (= (and d!2354777 (not c!1445216)) b!7864354))

(assert (= (and b!7864354 c!1445215) b!7864364))

(assert (= (and b!7864354 (not c!1445215)) b!7864362))

(assert (= (and b!7864362 (not res!3126104)) b!7864365))

(assert (= (and b!7864365 res!3126103) b!7864361))

(assert (= (and b!7864361 res!3126106) b!7864356))

(assert (= (and b!7864356 res!3126105) b!7864353))

(assert (= (and b!7864365 (not res!3126107)) b!7864360))

(assert (= (and b!7864360 res!3126102) b!7864363))

(assert (= (and b!7864363 (not res!3126108)) b!7864355))

(assert (= (and b!7864355 (not res!3126101)) b!7864359))

(assert (= (or b!7864352 b!7864361 b!7864363) bm!729271))

(assert (=> b!7864357 m!8263438))

(assert (=> b!7864359 m!8263420))

(assert (=> b!7864358 m!8263420))

(assert (=> b!7864358 m!8263420))

(assert (=> b!7864358 m!8263422))

(assert (=> b!7864358 m!8263424))

(assert (=> b!7864358 m!8263422))

(assert (=> b!7864358 m!8263424))

(assert (=> b!7864358 m!8263426))

(assert (=> bm!729271 m!8263412))

(assert (=> b!7864355 m!8263424))

(assert (=> b!7864355 m!8263424))

(assert (=> b!7864355 m!8263504))

(assert (=> b!7864353 m!8263420))

(assert (=> d!2354777 m!8263412))

(assert (=> d!2354777 m!8263418))

(assert (=> b!7864356 m!8263424))

(assert (=> b!7864356 m!8263424))

(assert (=> b!7864356 m!8263504))

(assert (=> b!7863854 d!2354777))

(declare-fun b!7864378 () Bool)

(declare-fun e!4647119 () Bool)

(declare-fun tp!2330920 () Bool)

(assert (=> b!7864378 (= e!4647119 tp!2330920)))

(declare-fun b!7864376 () Bool)

(assert (=> b!7864376 (= e!4647119 tp_is_empty!52673)))

(declare-fun b!7864377 () Bool)

(declare-fun tp!2330918 () Bool)

(declare-fun tp!2330921 () Bool)

(assert (=> b!7864377 (= e!4647119 (and tp!2330918 tp!2330921))))

(declare-fun b!7864379 () Bool)

(declare-fun tp!2330922 () Bool)

(declare-fun tp!2330919 () Bool)

(assert (=> b!7864379 (= e!4647119 (and tp!2330922 tp!2330919))))

(assert (=> b!7863851 (= tp!2330842 e!4647119)))

(assert (= (and b!7863851 ((_ is ElementMatch!21137) (reg!21466 r1!6218))) b!7864376))

(assert (= (and b!7863851 ((_ is Concat!29982) (reg!21466 r1!6218))) b!7864377))

(assert (= (and b!7863851 ((_ is Star!21137) (reg!21466 r1!6218))) b!7864378))

(assert (= (and b!7863851 ((_ is Union!21137) (reg!21466 r1!6218))) b!7864379))

(declare-fun b!7864382 () Bool)

(declare-fun e!4647120 () Bool)

(declare-fun tp!2330925 () Bool)

(assert (=> b!7864382 (= e!4647120 tp!2330925)))

(declare-fun b!7864380 () Bool)

(assert (=> b!7864380 (= e!4647120 tp_is_empty!52673)))

(declare-fun b!7864381 () Bool)

(declare-fun tp!2330923 () Bool)

(declare-fun tp!2330926 () Bool)

(assert (=> b!7864381 (= e!4647120 (and tp!2330923 tp!2330926))))

(declare-fun b!7864383 () Bool)

(declare-fun tp!2330927 () Bool)

(declare-fun tp!2330924 () Bool)

(assert (=> b!7864383 (= e!4647120 (and tp!2330927 tp!2330924))))

(assert (=> b!7863845 (= tp!2330843 e!4647120)))

(assert (= (and b!7863845 ((_ is ElementMatch!21137) (regOne!42787 r2!6156))) b!7864380))

(assert (= (and b!7863845 ((_ is Concat!29982) (regOne!42787 r2!6156))) b!7864381))

(assert (= (and b!7863845 ((_ is Star!21137) (regOne!42787 r2!6156))) b!7864382))

(assert (= (and b!7863845 ((_ is Union!21137) (regOne!42787 r2!6156))) b!7864383))

(declare-fun b!7864386 () Bool)

(declare-fun e!4647121 () Bool)

(declare-fun tp!2330930 () Bool)

(assert (=> b!7864386 (= e!4647121 tp!2330930)))

(declare-fun b!7864384 () Bool)

(assert (=> b!7864384 (= e!4647121 tp_is_empty!52673)))

(declare-fun b!7864385 () Bool)

(declare-fun tp!2330928 () Bool)

(declare-fun tp!2330931 () Bool)

(assert (=> b!7864385 (= e!4647121 (and tp!2330928 tp!2330931))))

(declare-fun b!7864387 () Bool)

(declare-fun tp!2330932 () Bool)

(declare-fun tp!2330929 () Bool)

(assert (=> b!7864387 (= e!4647121 (and tp!2330932 tp!2330929))))

(assert (=> b!7863845 (= tp!2330840 e!4647121)))

(assert (= (and b!7863845 ((_ is ElementMatch!21137) (regTwo!42787 r2!6156))) b!7864384))

(assert (= (and b!7863845 ((_ is Concat!29982) (regTwo!42787 r2!6156))) b!7864385))

(assert (= (and b!7863845 ((_ is Star!21137) (regTwo!42787 r2!6156))) b!7864386))

(assert (= (and b!7863845 ((_ is Union!21137) (regTwo!42787 r2!6156))) b!7864387))

(declare-fun b!7864390 () Bool)

(declare-fun e!4647122 () Bool)

(declare-fun tp!2330935 () Bool)

(assert (=> b!7864390 (= e!4647122 tp!2330935)))

(declare-fun b!7864388 () Bool)

(assert (=> b!7864388 (= e!4647122 tp_is_empty!52673)))

(declare-fun b!7864389 () Bool)

(declare-fun tp!2330933 () Bool)

(declare-fun tp!2330936 () Bool)

(assert (=> b!7864389 (= e!4647122 (and tp!2330933 tp!2330936))))

(declare-fun b!7864391 () Bool)

(declare-fun tp!2330937 () Bool)

(declare-fun tp!2330934 () Bool)

(assert (=> b!7864391 (= e!4647122 (and tp!2330937 tp!2330934))))

(assert (=> b!7863847 (= tp!2330837 e!4647122)))

(assert (= (and b!7863847 ((_ is ElementMatch!21137) (regOne!42787 r1!6218))) b!7864388))

(assert (= (and b!7863847 ((_ is Concat!29982) (regOne!42787 r1!6218))) b!7864389))

(assert (= (and b!7863847 ((_ is Star!21137) (regOne!42787 r1!6218))) b!7864390))

(assert (= (and b!7863847 ((_ is Union!21137) (regOne!42787 r1!6218))) b!7864391))

(declare-fun b!7864394 () Bool)

(declare-fun e!4647123 () Bool)

(declare-fun tp!2330940 () Bool)

(assert (=> b!7864394 (= e!4647123 tp!2330940)))

(declare-fun b!7864392 () Bool)

(assert (=> b!7864392 (= e!4647123 tp_is_empty!52673)))

(declare-fun b!7864393 () Bool)

(declare-fun tp!2330938 () Bool)

(declare-fun tp!2330941 () Bool)

(assert (=> b!7864393 (= e!4647123 (and tp!2330938 tp!2330941))))

(declare-fun b!7864395 () Bool)

(declare-fun tp!2330942 () Bool)

(declare-fun tp!2330939 () Bool)

(assert (=> b!7864395 (= e!4647123 (and tp!2330942 tp!2330939))))

(assert (=> b!7863847 (= tp!2330834 e!4647123)))

(assert (= (and b!7863847 ((_ is ElementMatch!21137) (regTwo!42787 r1!6218))) b!7864392))

(assert (= (and b!7863847 ((_ is Concat!29982) (regTwo!42787 r1!6218))) b!7864393))

(assert (= (and b!7863847 ((_ is Star!21137) (regTwo!42787 r1!6218))) b!7864394))

(assert (= (and b!7863847 ((_ is Union!21137) (regTwo!42787 r1!6218))) b!7864395))

(declare-fun b!7864398 () Bool)

(declare-fun e!4647124 () Bool)

(declare-fun tp!2330945 () Bool)

(assert (=> b!7864398 (= e!4647124 tp!2330945)))

(declare-fun b!7864396 () Bool)

(assert (=> b!7864396 (= e!4647124 tp_is_empty!52673)))

(declare-fun b!7864397 () Bool)

(declare-fun tp!2330943 () Bool)

(declare-fun tp!2330946 () Bool)

(assert (=> b!7864397 (= e!4647124 (and tp!2330943 tp!2330946))))

(declare-fun b!7864399 () Bool)

(declare-fun tp!2330947 () Bool)

(declare-fun tp!2330944 () Bool)

(assert (=> b!7864399 (= e!4647124 (and tp!2330947 tp!2330944))))

(assert (=> b!7863846 (= tp!2330838 e!4647124)))

(assert (= (and b!7863846 ((_ is ElementMatch!21137) (reg!21466 r2!6156))) b!7864396))

(assert (= (and b!7863846 ((_ is Concat!29982) (reg!21466 r2!6156))) b!7864397))

(assert (= (and b!7863846 ((_ is Star!21137) (reg!21466 r2!6156))) b!7864398))

(assert (= (and b!7863846 ((_ is Union!21137) (reg!21466 r2!6156))) b!7864399))

(declare-fun b!7864404 () Bool)

(declare-fun e!4647127 () Bool)

(declare-fun tp!2330950 () Bool)

(assert (=> b!7864404 (= e!4647127 (and tp_is_empty!52673 tp!2330950))))

(assert (=> b!7863848 (= tp!2330839 e!4647127)))

(assert (= (and b!7863848 ((_ is Cons!73872) (t!388731 s!14237))) b!7864404))

(declare-fun b!7864407 () Bool)

(declare-fun e!4647128 () Bool)

(declare-fun tp!2330953 () Bool)

(assert (=> b!7864407 (= e!4647128 tp!2330953)))

(declare-fun b!7864405 () Bool)

(assert (=> b!7864405 (= e!4647128 tp_is_empty!52673)))

(declare-fun b!7864406 () Bool)

(declare-fun tp!2330951 () Bool)

(declare-fun tp!2330954 () Bool)

(assert (=> b!7864406 (= e!4647128 (and tp!2330951 tp!2330954))))

(declare-fun b!7864408 () Bool)

(declare-fun tp!2330955 () Bool)

(declare-fun tp!2330952 () Bool)

(assert (=> b!7864408 (= e!4647128 (and tp!2330955 tp!2330952))))

(assert (=> b!7863860 (= tp!2330841 e!4647128)))

(assert (= (and b!7863860 ((_ is ElementMatch!21137) (regOne!42786 r1!6218))) b!7864405))

(assert (= (and b!7863860 ((_ is Concat!29982) (regOne!42786 r1!6218))) b!7864406))

(assert (= (and b!7863860 ((_ is Star!21137) (regOne!42786 r1!6218))) b!7864407))

(assert (= (and b!7863860 ((_ is Union!21137) (regOne!42786 r1!6218))) b!7864408))

(declare-fun b!7864411 () Bool)

(declare-fun e!4647129 () Bool)

(declare-fun tp!2330958 () Bool)

(assert (=> b!7864411 (= e!4647129 tp!2330958)))

(declare-fun b!7864409 () Bool)

(assert (=> b!7864409 (= e!4647129 tp_is_empty!52673)))

(declare-fun b!7864410 () Bool)

(declare-fun tp!2330956 () Bool)

(declare-fun tp!2330959 () Bool)

(assert (=> b!7864410 (= e!4647129 (and tp!2330956 tp!2330959))))

(declare-fun b!7864412 () Bool)

(declare-fun tp!2330960 () Bool)

(declare-fun tp!2330957 () Bool)

(assert (=> b!7864412 (= e!4647129 (and tp!2330960 tp!2330957))))

(assert (=> b!7863860 (= tp!2330844 e!4647129)))

(assert (= (and b!7863860 ((_ is ElementMatch!21137) (regTwo!42786 r1!6218))) b!7864409))

(assert (= (and b!7863860 ((_ is Concat!29982) (regTwo!42786 r1!6218))) b!7864410))

(assert (= (and b!7863860 ((_ is Star!21137) (regTwo!42786 r1!6218))) b!7864411))

(assert (= (and b!7863860 ((_ is Union!21137) (regTwo!42786 r1!6218))) b!7864412))

(declare-fun b!7864415 () Bool)

(declare-fun e!4647130 () Bool)

(declare-fun tp!2330963 () Bool)

(assert (=> b!7864415 (= e!4647130 tp!2330963)))

(declare-fun b!7864413 () Bool)

(assert (=> b!7864413 (= e!4647130 tp_is_empty!52673)))

(declare-fun b!7864414 () Bool)

(declare-fun tp!2330961 () Bool)

(declare-fun tp!2330964 () Bool)

(assert (=> b!7864414 (= e!4647130 (and tp!2330961 tp!2330964))))

(declare-fun b!7864416 () Bool)

(declare-fun tp!2330965 () Bool)

(declare-fun tp!2330962 () Bool)

(assert (=> b!7864416 (= e!4647130 (and tp!2330965 tp!2330962))))

(assert (=> b!7863849 (= tp!2330836 e!4647130)))

(assert (= (and b!7863849 ((_ is ElementMatch!21137) (regOne!42786 r2!6156))) b!7864413))

(assert (= (and b!7863849 ((_ is Concat!29982) (regOne!42786 r2!6156))) b!7864414))

(assert (= (and b!7863849 ((_ is Star!21137) (regOne!42786 r2!6156))) b!7864415))

(assert (= (and b!7863849 ((_ is Union!21137) (regOne!42786 r2!6156))) b!7864416))

(declare-fun b!7864419 () Bool)

(declare-fun e!4647131 () Bool)

(declare-fun tp!2330968 () Bool)

(assert (=> b!7864419 (= e!4647131 tp!2330968)))

(declare-fun b!7864417 () Bool)

(assert (=> b!7864417 (= e!4647131 tp_is_empty!52673)))

(declare-fun b!7864418 () Bool)

(declare-fun tp!2330966 () Bool)

(declare-fun tp!2330969 () Bool)

(assert (=> b!7864418 (= e!4647131 (and tp!2330966 tp!2330969))))

(declare-fun b!7864420 () Bool)

(declare-fun tp!2330970 () Bool)

(declare-fun tp!2330967 () Bool)

(assert (=> b!7864420 (= e!4647131 (and tp!2330970 tp!2330967))))

(assert (=> b!7863849 (= tp!2330835 e!4647131)))

(assert (= (and b!7863849 ((_ is ElementMatch!21137) (regTwo!42786 r2!6156))) b!7864417))

(assert (= (and b!7863849 ((_ is Concat!29982) (regTwo!42786 r2!6156))) b!7864418))

(assert (= (and b!7863849 ((_ is Star!21137) (regTwo!42786 r2!6156))) b!7864419))

(assert (= (and b!7863849 ((_ is Union!21137) (regTwo!42786 r2!6156))) b!7864420))

(check-sat (not b!7864377) (not b!7864414) (not b!7864353) (not b!7863938) (not b!7864082) (not b!7864397) (not b!7864061) (not bm!729226) (not d!2354775) (not bm!729211) (not b!7864385) (not b!7864382) (not bm!729215) (not b!7864019) (not d!2354699) (not b!7864056) (not b!7864260) (not b!7864084) (not d!2354717) (not b!7864418) (not d!2354725) (not b!7864356) (not b!7864264) (not d!2354731) (not b!7864359) (not b!7864219) (not b!7864343) (not b!7864237) (not b!7864058) (not b!7864399) (not bm!729193) (not b!7864389) (not b!7864379) (not bm!729187) (not b!7864387) (not d!2354707) (not bm!729257) (not bm!729260) (not bm!729189) (not b!7864358) (not b!7864420) (not b!7864407) (not b!7864381) (not d!2354705) (not b!7864383) (not b!7864386) (not b!7864208) (not bm!729254) (not b!7864378) (not b!7864398) (not b!7864046) (not bm!729266) (not b!7863914) (not bm!729192) (not b!7864419) (not b!7864404) (not bm!729212) (not d!2354777) (not b!7864147) (not b!7863948) (not b!7864016) (not b!7864415) (not d!2354765) (not b!7864079) (not b!7864412) (not b!7864085) (not bm!729271) (not b!7864411) (not b!7864062) (not b!7864408) (not bm!729253) (not bm!729196) (not b!7864416) (not bm!729269) (not b!7864390) (not bm!729256) (not b!7864261) (not b!7864020) (not b!7864357) (not d!2354773) (not b!7864355) (not b!7864017) (not b!7864406) (not d!2354697) (not b!7864391) (not b!7864410) (not b!7864394) (not d!2354701) (not b!7864263) (not bm!729222) (not b!7864258) (not b!7864262) (not d!2354723) (not bm!729265) (not b!7864081) (not b!7864059) tp_is_empty!52673 (not b!7864351) (not b!7864195) (not b!7864060) (not b!7864342) (not d!2354709) (not b!7864395) (not b!7864393) (not b!7864014) (not bm!729184) (not b!7864083) (not b!7864018) (not bm!729259))
(check-sat)
