; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!739740 () Bool)

(assert start!739740)

(declare-fun b!7765797 () Bool)

(declare-fun res!3095933 () Bool)

(declare-fun e!4601792 () Bool)

(assert (=> b!7765797 (=> (not res!3095933) (not e!4601792))))

(declare-datatypes ((C!41780 0))(
  ( (C!41781 (val!31330 Int)) )
))
(declare-datatypes ((List!73568 0))(
  ( (Nil!73444) (Cons!73444 (h!79892 C!41780) (t!388303 List!73568)) )
))
(declare-fun s!14904 () List!73568)

(get-info :version)

(assert (=> b!7765797 (= res!3095933 ((_ is Cons!73444) s!14904))))

(declare-fun res!3095936 () Bool)

(assert (=> start!739740 (=> (not res!3095936) (not e!4601792))))

(declare-datatypes ((Regex!20727 0))(
  ( (ElementMatch!20727 (c!1431276 C!41780)) (Concat!29572 (regOne!41966 Regex!20727) (regTwo!41966 Regex!20727)) (EmptyExpr!20727) (Star!20727 (reg!21056 Regex!20727)) (EmptyLang!20727) (Union!20727 (regOne!41967 Regex!20727) (regTwo!41967 Regex!20727)) )
))
(declare-fun lt!2670832 () Regex!20727)

(declare-fun validRegex!11141 (Regex!20727) Bool)

(assert (=> start!739740 (= res!3095936 (validRegex!11141 lt!2670832))))

(declare-fun r!25924 () Regex!20727)

(assert (=> start!739740 (= lt!2670832 (Star!20727 r!25924))))

(assert (=> start!739740 e!4601792))

(declare-fun e!4601791 () Bool)

(assert (=> start!739740 e!4601791))

(declare-fun e!4601793 () Bool)

(assert (=> start!739740 e!4601793))

(declare-fun b!7765798 () Bool)

(declare-fun tp_is_empty!51809 () Bool)

(assert (=> b!7765798 (= e!4601791 tp_is_empty!51809)))

(declare-fun b!7765799 () Bool)

(declare-fun tp!2281285 () Bool)

(declare-fun tp!2281280 () Bool)

(assert (=> b!7765799 (= e!4601791 (and tp!2281285 tp!2281280))))

(declare-fun b!7765800 () Bool)

(declare-fun res!3095935 () Bool)

(assert (=> b!7765800 (=> (not res!3095935) (not e!4601792))))

(declare-fun matchR!10189 (Regex!20727 List!73568) Bool)

(assert (=> b!7765800 (= res!3095935 (matchR!10189 lt!2670832 s!14904))))

(declare-fun b!7765801 () Bool)

(declare-fun res!3095934 () Bool)

(assert (=> b!7765801 (=> (not res!3095934) (not e!4601792))))

(declare-fun derivativeStep!6072 (Regex!20727 C!41780) Regex!20727)

(assert (=> b!7765801 (= res!3095934 (= (derivativeStep!6072 lt!2670832 (h!79892 s!14904)) (Concat!29572 (derivativeStep!6072 r!25924 (h!79892 s!14904)) lt!2670832)))))

(declare-fun b!7765802 () Bool)

(declare-fun tp!2281284 () Bool)

(declare-fun tp!2281282 () Bool)

(assert (=> b!7765802 (= e!4601791 (and tp!2281284 tp!2281282))))

(declare-fun b!7765803 () Bool)

(declare-fun tp!2281281 () Bool)

(assert (=> b!7765803 (= e!4601791 tp!2281281)))

(declare-fun b!7765804 () Bool)

(assert (=> b!7765804 (= e!4601792 (not (validRegex!11141 r!25924)))))

(declare-fun b!7765805 () Bool)

(declare-fun tp!2281283 () Bool)

(assert (=> b!7765805 (= e!4601793 (and tp_is_empty!51809 tp!2281283))))

(assert (= (and start!739740 res!3095936) b!7765800))

(assert (= (and b!7765800 res!3095935) b!7765797))

(assert (= (and b!7765797 res!3095933) b!7765801))

(assert (= (and b!7765801 res!3095934) b!7765804))

(assert (= (and start!739740 ((_ is ElementMatch!20727) r!25924)) b!7765798))

(assert (= (and start!739740 ((_ is Concat!29572) r!25924)) b!7765799))

(assert (= (and start!739740 ((_ is Star!20727) r!25924)) b!7765803))

(assert (= (and start!739740 ((_ is Union!20727) r!25924)) b!7765802))

(assert (= (and start!739740 ((_ is Cons!73444) s!14904)) b!7765805))

(declare-fun m!8222596 () Bool)

(assert (=> start!739740 m!8222596))

(declare-fun m!8222598 () Bool)

(assert (=> b!7765800 m!8222598))

(declare-fun m!8222600 () Bool)

(assert (=> b!7765801 m!8222600))

(declare-fun m!8222602 () Bool)

(assert (=> b!7765801 m!8222602))

(declare-fun m!8222604 () Bool)

(assert (=> b!7765804 m!8222604))

(check-sat (not b!7765804) (not start!739740) (not b!7765803) (not b!7765799) (not b!7765802) tp_is_empty!51809 (not b!7765800) (not b!7765801) (not b!7765805))
(check-sat)
(get-model)

(declare-fun b!7765834 () Bool)

(declare-fun res!3095954 () Bool)

(declare-fun e!4601811 () Bool)

(assert (=> b!7765834 (=> (not res!3095954) (not e!4601811))))

(declare-fun isEmpty!42119 (List!73568) Bool)

(declare-fun tail!15407 (List!73568) List!73568)

(assert (=> b!7765834 (= res!3095954 (isEmpty!42119 (tail!15407 s!14904)))))

(declare-fun bm!719448 () Bool)

(declare-fun call!719453 () Bool)

(assert (=> bm!719448 (= call!719453 (isEmpty!42119 s!14904))))

(declare-fun b!7765835 () Bool)

(declare-fun e!4601808 () Bool)

(declare-fun e!4601809 () Bool)

(assert (=> b!7765835 (= e!4601808 e!4601809)))

(declare-fun c!1431284 () Bool)

(assert (=> b!7765835 (= c!1431284 ((_ is EmptyLang!20727) lt!2670832))))

(declare-fun b!7765836 () Bool)

(declare-fun res!3095957 () Bool)

(declare-fun e!4601812 () Bool)

(assert (=> b!7765836 (=> res!3095957 e!4601812)))

(assert (=> b!7765836 (= res!3095957 (not (isEmpty!42119 (tail!15407 s!14904))))))

(declare-fun b!7765837 () Bool)

(declare-fun e!4601813 () Bool)

(declare-fun head!15867 (List!73568) C!41780)

(assert (=> b!7765837 (= e!4601813 (matchR!10189 (derivativeStep!6072 lt!2670832 (head!15867 s!14904)) (tail!15407 s!14904)))))

(declare-fun b!7765838 () Bool)

(assert (=> b!7765838 (= e!4601811 (= (head!15867 s!14904) (c!1431276 lt!2670832)))))

(declare-fun b!7765839 () Bool)

(declare-fun lt!2670835 () Bool)

(assert (=> b!7765839 (= e!4601808 (= lt!2670835 call!719453))))

(declare-fun b!7765840 () Bool)

(declare-fun res!3095958 () Bool)

(assert (=> b!7765840 (=> (not res!3095958) (not e!4601811))))

(assert (=> b!7765840 (= res!3095958 (not call!719453))))

(declare-fun d!2343931 () Bool)

(assert (=> d!2343931 e!4601808))

(declare-fun c!1431285 () Bool)

(assert (=> d!2343931 (= c!1431285 ((_ is EmptyExpr!20727) lt!2670832))))

(assert (=> d!2343931 (= lt!2670835 e!4601813)))

(declare-fun c!1431283 () Bool)

(assert (=> d!2343931 (= c!1431283 (isEmpty!42119 s!14904))))

(assert (=> d!2343931 (validRegex!11141 lt!2670832)))

(assert (=> d!2343931 (= (matchR!10189 lt!2670832 s!14904) lt!2670835)))

(declare-fun b!7765841 () Bool)

(declare-fun res!3095953 () Bool)

(declare-fun e!4601814 () Bool)

(assert (=> b!7765841 (=> res!3095953 e!4601814)))

(assert (=> b!7765841 (= res!3095953 (not ((_ is ElementMatch!20727) lt!2670832)))))

(assert (=> b!7765841 (= e!4601809 e!4601814)))

(declare-fun b!7765842 () Bool)

(declare-fun e!4601810 () Bool)

(assert (=> b!7765842 (= e!4601810 e!4601812)))

(declare-fun res!3095959 () Bool)

(assert (=> b!7765842 (=> res!3095959 e!4601812)))

(assert (=> b!7765842 (= res!3095959 call!719453)))

(declare-fun b!7765843 () Bool)

(declare-fun res!3095956 () Bool)

(assert (=> b!7765843 (=> res!3095956 e!4601814)))

(assert (=> b!7765843 (= res!3095956 e!4601811)))

(declare-fun res!3095960 () Bool)

(assert (=> b!7765843 (=> (not res!3095960) (not e!4601811))))

(assert (=> b!7765843 (= res!3095960 lt!2670835)))

(declare-fun b!7765844 () Bool)

(assert (=> b!7765844 (= e!4601809 (not lt!2670835))))

(declare-fun b!7765845 () Bool)

(assert (=> b!7765845 (= e!4601814 e!4601810)))

(declare-fun res!3095955 () Bool)

(assert (=> b!7765845 (=> (not res!3095955) (not e!4601810))))

(assert (=> b!7765845 (= res!3095955 (not lt!2670835))))

(declare-fun b!7765846 () Bool)

(assert (=> b!7765846 (= e!4601812 (not (= (head!15867 s!14904) (c!1431276 lt!2670832))))))

(declare-fun b!7765847 () Bool)

(declare-fun nullable!9128 (Regex!20727) Bool)

(assert (=> b!7765847 (= e!4601813 (nullable!9128 lt!2670832))))

(assert (= (and d!2343931 c!1431283) b!7765847))

(assert (= (and d!2343931 (not c!1431283)) b!7765837))

(assert (= (and d!2343931 c!1431285) b!7765839))

(assert (= (and d!2343931 (not c!1431285)) b!7765835))

(assert (= (and b!7765835 c!1431284) b!7765844))

(assert (= (and b!7765835 (not c!1431284)) b!7765841))

(assert (= (and b!7765841 (not res!3095953)) b!7765843))

(assert (= (and b!7765843 res!3095960) b!7765840))

(assert (= (and b!7765840 res!3095958) b!7765834))

(assert (= (and b!7765834 res!3095954) b!7765838))

(assert (= (and b!7765843 (not res!3095956)) b!7765845))

(assert (= (and b!7765845 res!3095955) b!7765842))

(assert (= (and b!7765842 (not res!3095959)) b!7765836))

(assert (= (and b!7765836 (not res!3095957)) b!7765846))

(assert (= (or b!7765839 b!7765840 b!7765842) bm!719448))

(declare-fun m!8222606 () Bool)

(assert (=> d!2343931 m!8222606))

(assert (=> d!2343931 m!8222596))

(declare-fun m!8222608 () Bool)

(assert (=> b!7765834 m!8222608))

(assert (=> b!7765834 m!8222608))

(declare-fun m!8222610 () Bool)

(assert (=> b!7765834 m!8222610))

(declare-fun m!8222612 () Bool)

(assert (=> b!7765847 m!8222612))

(declare-fun m!8222614 () Bool)

(assert (=> b!7765846 m!8222614))

(assert (=> b!7765837 m!8222614))

(assert (=> b!7765837 m!8222614))

(declare-fun m!8222616 () Bool)

(assert (=> b!7765837 m!8222616))

(assert (=> b!7765837 m!8222608))

(assert (=> b!7765837 m!8222616))

(assert (=> b!7765837 m!8222608))

(declare-fun m!8222618 () Bool)

(assert (=> b!7765837 m!8222618))

(assert (=> b!7765836 m!8222608))

(assert (=> b!7765836 m!8222608))

(assert (=> b!7765836 m!8222610))

(assert (=> bm!719448 m!8222606))

(assert (=> b!7765838 m!8222614))

(assert (=> b!7765800 d!2343931))

(declare-fun b!7765888 () Bool)

(declare-fun e!4601837 () Regex!20727)

(declare-fun e!4601839 () Regex!20727)

(assert (=> b!7765888 (= e!4601837 e!4601839)))

(declare-fun c!1431307 () Bool)

(assert (=> b!7765888 (= c!1431307 ((_ is ElementMatch!20727) lt!2670832))))

(declare-fun b!7765889 () Bool)

(declare-fun e!4601838 () Regex!20727)

(declare-fun call!719471 () Regex!20727)

(assert (=> b!7765889 (= e!4601838 (Union!20727 (Concat!29572 call!719471 (regTwo!41966 lt!2670832)) EmptyLang!20727))))

(declare-fun b!7765890 () Bool)

(declare-fun call!719472 () Regex!20727)

(assert (=> b!7765890 (= e!4601838 (Union!20727 (Concat!29572 call!719471 (regTwo!41966 lt!2670832)) call!719472))))

(declare-fun d!2343935 () Bool)

(declare-fun lt!2670840 () Regex!20727)

(assert (=> d!2343935 (validRegex!11141 lt!2670840)))

(assert (=> d!2343935 (= lt!2670840 e!4601837)))

(declare-fun c!1431310 () Bool)

(assert (=> d!2343935 (= c!1431310 (or ((_ is EmptyExpr!20727) lt!2670832) ((_ is EmptyLang!20727) lt!2670832)))))

(assert (=> d!2343935 (validRegex!11141 lt!2670832)))

(assert (=> d!2343935 (= (derivativeStep!6072 lt!2670832 (h!79892 s!14904)) lt!2670840)))

(declare-fun b!7765891 () Bool)

(declare-fun e!4601835 () Regex!20727)

(declare-fun e!4601836 () Regex!20727)

(assert (=> b!7765891 (= e!4601835 e!4601836)))

(declare-fun c!1431306 () Bool)

(assert (=> b!7765891 (= c!1431306 ((_ is Star!20727) lt!2670832))))

(declare-fun c!1431309 () Bool)

(declare-fun bm!719465 () Bool)

(assert (=> bm!719465 (= call!719472 (derivativeStep!6072 (ite c!1431309 (regOne!41967 lt!2670832) (regTwo!41966 lt!2670832)) (h!79892 s!14904)))))

(declare-fun b!7765892 () Bool)

(declare-fun c!1431308 () Bool)

(assert (=> b!7765892 (= c!1431308 (nullable!9128 (regOne!41966 lt!2670832)))))

(assert (=> b!7765892 (= e!4601836 e!4601838)))

(declare-fun bm!719466 () Bool)

(declare-fun call!719470 () Regex!20727)

(declare-fun call!719473 () Regex!20727)

(assert (=> bm!719466 (= call!719470 call!719473)))

(declare-fun bm!719467 () Bool)

(assert (=> bm!719467 (= call!719473 (derivativeStep!6072 (ite c!1431309 (regTwo!41967 lt!2670832) (ite c!1431306 (reg!21056 lt!2670832) (regOne!41966 lt!2670832))) (h!79892 s!14904)))))

(declare-fun b!7765893 () Bool)

(assert (=> b!7765893 (= e!4601835 (Union!20727 call!719472 call!719473))))

(declare-fun bm!719468 () Bool)

(assert (=> bm!719468 (= call!719471 call!719470)))

(declare-fun b!7765894 () Bool)

(assert (=> b!7765894 (= e!4601839 (ite (= (h!79892 s!14904) (c!1431276 lt!2670832)) EmptyExpr!20727 EmptyLang!20727))))

(declare-fun b!7765895 () Bool)

(assert (=> b!7765895 (= e!4601836 (Concat!29572 call!719470 lt!2670832))))

(declare-fun b!7765896 () Bool)

(assert (=> b!7765896 (= e!4601837 EmptyLang!20727)))

(declare-fun b!7765897 () Bool)

(assert (=> b!7765897 (= c!1431309 ((_ is Union!20727) lt!2670832))))

(assert (=> b!7765897 (= e!4601839 e!4601835)))

(assert (= (and d!2343935 c!1431310) b!7765896))

(assert (= (and d!2343935 (not c!1431310)) b!7765888))

(assert (= (and b!7765888 c!1431307) b!7765894))

(assert (= (and b!7765888 (not c!1431307)) b!7765897))

(assert (= (and b!7765897 c!1431309) b!7765893))

(assert (= (and b!7765897 (not c!1431309)) b!7765891))

(assert (= (and b!7765891 c!1431306) b!7765895))

(assert (= (and b!7765891 (not c!1431306)) b!7765892))

(assert (= (and b!7765892 c!1431308) b!7765890))

(assert (= (and b!7765892 (not c!1431308)) b!7765889))

(assert (= (or b!7765890 b!7765889) bm!719468))

(assert (= (or b!7765895 bm!719468) bm!719466))

(assert (= (or b!7765893 bm!719466) bm!719467))

(assert (= (or b!7765893 b!7765890) bm!719465))

(declare-fun m!8222620 () Bool)

(assert (=> d!2343935 m!8222620))

(assert (=> d!2343935 m!8222596))

(declare-fun m!8222622 () Bool)

(assert (=> bm!719465 m!8222622))

(declare-fun m!8222624 () Bool)

(assert (=> b!7765892 m!8222624))

(declare-fun m!8222626 () Bool)

(assert (=> bm!719467 m!8222626))

(assert (=> b!7765801 d!2343935))

(declare-fun b!7765898 () Bool)

(declare-fun e!4601842 () Regex!20727)

(declare-fun e!4601844 () Regex!20727)

(assert (=> b!7765898 (= e!4601842 e!4601844)))

(declare-fun c!1431312 () Bool)

(assert (=> b!7765898 (= c!1431312 ((_ is ElementMatch!20727) r!25924))))

(declare-fun b!7765899 () Bool)

(declare-fun e!4601843 () Regex!20727)

(declare-fun call!719475 () Regex!20727)

(assert (=> b!7765899 (= e!4601843 (Union!20727 (Concat!29572 call!719475 (regTwo!41966 r!25924)) EmptyLang!20727))))

(declare-fun call!719476 () Regex!20727)

(declare-fun b!7765900 () Bool)

(assert (=> b!7765900 (= e!4601843 (Union!20727 (Concat!29572 call!719475 (regTwo!41966 r!25924)) call!719476))))

(declare-fun d!2343937 () Bool)

(declare-fun lt!2670841 () Regex!20727)

(assert (=> d!2343937 (validRegex!11141 lt!2670841)))

(assert (=> d!2343937 (= lt!2670841 e!4601842)))

(declare-fun c!1431315 () Bool)

(assert (=> d!2343937 (= c!1431315 (or ((_ is EmptyExpr!20727) r!25924) ((_ is EmptyLang!20727) r!25924)))))

(assert (=> d!2343937 (validRegex!11141 r!25924)))

(assert (=> d!2343937 (= (derivativeStep!6072 r!25924 (h!79892 s!14904)) lt!2670841)))

(declare-fun b!7765901 () Bool)

(declare-fun e!4601840 () Regex!20727)

(declare-fun e!4601841 () Regex!20727)

(assert (=> b!7765901 (= e!4601840 e!4601841)))

(declare-fun c!1431311 () Bool)

(assert (=> b!7765901 (= c!1431311 ((_ is Star!20727) r!25924))))

(declare-fun bm!719469 () Bool)

(declare-fun c!1431314 () Bool)

(assert (=> bm!719469 (= call!719476 (derivativeStep!6072 (ite c!1431314 (regOne!41967 r!25924) (regTwo!41966 r!25924)) (h!79892 s!14904)))))

(declare-fun b!7765902 () Bool)

(declare-fun c!1431313 () Bool)

(assert (=> b!7765902 (= c!1431313 (nullable!9128 (regOne!41966 r!25924)))))

(assert (=> b!7765902 (= e!4601841 e!4601843)))

(declare-fun bm!719470 () Bool)

(declare-fun call!719474 () Regex!20727)

(declare-fun call!719477 () Regex!20727)

(assert (=> bm!719470 (= call!719474 call!719477)))

(declare-fun bm!719471 () Bool)

(assert (=> bm!719471 (= call!719477 (derivativeStep!6072 (ite c!1431314 (regTwo!41967 r!25924) (ite c!1431311 (reg!21056 r!25924) (regOne!41966 r!25924))) (h!79892 s!14904)))))

(declare-fun b!7765903 () Bool)

(assert (=> b!7765903 (= e!4601840 (Union!20727 call!719476 call!719477))))

(declare-fun bm!719472 () Bool)

(assert (=> bm!719472 (= call!719475 call!719474)))

(declare-fun b!7765904 () Bool)

(assert (=> b!7765904 (= e!4601844 (ite (= (h!79892 s!14904) (c!1431276 r!25924)) EmptyExpr!20727 EmptyLang!20727))))

(declare-fun b!7765905 () Bool)

(assert (=> b!7765905 (= e!4601841 (Concat!29572 call!719474 r!25924))))

(declare-fun b!7765906 () Bool)

(assert (=> b!7765906 (= e!4601842 EmptyLang!20727)))

(declare-fun b!7765907 () Bool)

(assert (=> b!7765907 (= c!1431314 ((_ is Union!20727) r!25924))))

(assert (=> b!7765907 (= e!4601844 e!4601840)))

(assert (= (and d!2343937 c!1431315) b!7765906))

(assert (= (and d!2343937 (not c!1431315)) b!7765898))

(assert (= (and b!7765898 c!1431312) b!7765904))

(assert (= (and b!7765898 (not c!1431312)) b!7765907))

(assert (= (and b!7765907 c!1431314) b!7765903))

(assert (= (and b!7765907 (not c!1431314)) b!7765901))

(assert (= (and b!7765901 c!1431311) b!7765905))

(assert (= (and b!7765901 (not c!1431311)) b!7765902))

(assert (= (and b!7765902 c!1431313) b!7765900))

(assert (= (and b!7765902 (not c!1431313)) b!7765899))

(assert (= (or b!7765900 b!7765899) bm!719472))

(assert (= (or b!7765905 bm!719472) bm!719470))

(assert (= (or b!7765903 bm!719470) bm!719471))

(assert (= (or b!7765903 b!7765900) bm!719469))

(declare-fun m!8222628 () Bool)

(assert (=> d!2343937 m!8222628))

(assert (=> d!2343937 m!8222604))

(declare-fun m!8222630 () Bool)

(assert (=> bm!719469 m!8222630))

(declare-fun m!8222632 () Bool)

(assert (=> b!7765902 m!8222632))

(declare-fun m!8222634 () Bool)

(assert (=> bm!719471 m!8222634))

(assert (=> b!7765801 d!2343937))

(declare-fun b!7765936 () Bool)

(declare-fun res!3095974 () Bool)

(declare-fun e!4601869 () Bool)

(assert (=> b!7765936 (=> res!3095974 e!4601869)))

(assert (=> b!7765936 (= res!3095974 (not ((_ is Concat!29572) lt!2670832)))))

(declare-fun e!4601864 () Bool)

(assert (=> b!7765936 (= e!4601864 e!4601869)))

(declare-fun b!7765937 () Bool)

(declare-fun e!4601868 () Bool)

(declare-fun call!719488 () Bool)

(assert (=> b!7765937 (= e!4601868 call!719488)))

(declare-fun b!7765938 () Bool)

(declare-fun e!4601865 () Bool)

(declare-fun call!719489 () Bool)

(assert (=> b!7765938 (= e!4601865 call!719489)))

(declare-fun bm!719483 () Bool)

(declare-fun c!1431325 () Bool)

(assert (=> bm!719483 (= call!719489 (validRegex!11141 (ite c!1431325 (regOne!41967 lt!2670832) (regTwo!41966 lt!2670832))))))

(declare-fun b!7765939 () Bool)

(declare-fun e!4601866 () Bool)

(declare-fun call!719490 () Bool)

(assert (=> b!7765939 (= e!4601866 call!719490)))

(declare-fun b!7765940 () Bool)

(declare-fun e!4601870 () Bool)

(assert (=> b!7765940 (= e!4601870 e!4601864)))

(assert (=> b!7765940 (= c!1431325 ((_ is Union!20727) lt!2670832))))

(declare-fun d!2343939 () Bool)

(declare-fun res!3095972 () Bool)

(declare-fun e!4601867 () Bool)

(assert (=> d!2343939 (=> res!3095972 e!4601867)))

(assert (=> d!2343939 (= res!3095972 ((_ is ElementMatch!20727) lt!2670832))))

(assert (=> d!2343939 (= (validRegex!11141 lt!2670832) e!4601867)))

(declare-fun b!7765941 () Bool)

(assert (=> b!7765941 (= e!4601870 e!4601868)))

(declare-fun res!3095971 () Bool)

(assert (=> b!7765941 (= res!3095971 (not (nullable!9128 (reg!21056 lt!2670832))))))

(assert (=> b!7765941 (=> (not res!3095971) (not e!4601868))))

(declare-fun bm!719484 () Bool)

(assert (=> bm!719484 (= call!719490 call!719488)))

(declare-fun b!7765942 () Bool)

(assert (=> b!7765942 (= e!4601869 e!4601865)))

(declare-fun res!3095973 () Bool)

(assert (=> b!7765942 (=> (not res!3095973) (not e!4601865))))

(assert (=> b!7765942 (= res!3095973 call!719490)))

(declare-fun b!7765943 () Bool)

(assert (=> b!7765943 (= e!4601867 e!4601870)))

(declare-fun c!1431326 () Bool)

(assert (=> b!7765943 (= c!1431326 ((_ is Star!20727) lt!2670832))))

(declare-fun b!7765944 () Bool)

(declare-fun res!3095975 () Bool)

(assert (=> b!7765944 (=> (not res!3095975) (not e!4601866))))

(assert (=> b!7765944 (= res!3095975 call!719489)))

(assert (=> b!7765944 (= e!4601864 e!4601866)))

(declare-fun bm!719485 () Bool)

(assert (=> bm!719485 (= call!719488 (validRegex!11141 (ite c!1431326 (reg!21056 lt!2670832) (ite c!1431325 (regTwo!41967 lt!2670832) (regOne!41966 lt!2670832)))))))

(assert (= (and d!2343939 (not res!3095972)) b!7765943))

(assert (= (and b!7765943 c!1431326) b!7765941))

(assert (= (and b!7765943 (not c!1431326)) b!7765940))

(assert (= (and b!7765941 res!3095971) b!7765937))

(assert (= (and b!7765940 c!1431325) b!7765944))

(assert (= (and b!7765940 (not c!1431325)) b!7765936))

(assert (= (and b!7765944 res!3095975) b!7765939))

(assert (= (and b!7765936 (not res!3095974)) b!7765942))

(assert (= (and b!7765942 res!3095973) b!7765938))

(assert (= (or b!7765939 b!7765942) bm!719484))

(assert (= (or b!7765944 b!7765938) bm!719483))

(assert (= (or b!7765937 bm!719484) bm!719485))

(declare-fun m!8222644 () Bool)

(assert (=> bm!719483 m!8222644))

(declare-fun m!8222646 () Bool)

(assert (=> b!7765941 m!8222646))

(declare-fun m!8222648 () Bool)

(assert (=> bm!719485 m!8222648))

(assert (=> start!739740 d!2343939))

(declare-fun b!7765955 () Bool)

(declare-fun res!3095979 () Bool)

(declare-fun e!4601881 () Bool)

(assert (=> b!7765955 (=> res!3095979 e!4601881)))

(assert (=> b!7765955 (= res!3095979 (not ((_ is Concat!29572) r!25924)))))

(declare-fun e!4601876 () Bool)

(assert (=> b!7765955 (= e!4601876 e!4601881)))

(declare-fun b!7765956 () Bool)

(declare-fun e!4601880 () Bool)

(declare-fun call!719495 () Bool)

(assert (=> b!7765956 (= e!4601880 call!719495)))

(declare-fun b!7765957 () Bool)

(declare-fun e!4601877 () Bool)

(declare-fun call!719496 () Bool)

(assert (=> b!7765957 (= e!4601877 call!719496)))

(declare-fun bm!719490 () Bool)

(declare-fun c!1431332 () Bool)

(assert (=> bm!719490 (= call!719496 (validRegex!11141 (ite c!1431332 (regOne!41967 r!25924) (regTwo!41966 r!25924))))))

(declare-fun b!7765958 () Bool)

(declare-fun e!4601878 () Bool)

(declare-fun call!719497 () Bool)

(assert (=> b!7765958 (= e!4601878 call!719497)))

(declare-fun b!7765959 () Bool)

(declare-fun e!4601882 () Bool)

(assert (=> b!7765959 (= e!4601882 e!4601876)))

(assert (=> b!7765959 (= c!1431332 ((_ is Union!20727) r!25924))))

(declare-fun d!2343943 () Bool)

(declare-fun res!3095977 () Bool)

(declare-fun e!4601879 () Bool)

(assert (=> d!2343943 (=> res!3095977 e!4601879)))

(assert (=> d!2343943 (= res!3095977 ((_ is ElementMatch!20727) r!25924))))

(assert (=> d!2343943 (= (validRegex!11141 r!25924) e!4601879)))

(declare-fun b!7765960 () Bool)

(assert (=> b!7765960 (= e!4601882 e!4601880)))

(declare-fun res!3095976 () Bool)

(assert (=> b!7765960 (= res!3095976 (not (nullable!9128 (reg!21056 r!25924))))))

(assert (=> b!7765960 (=> (not res!3095976) (not e!4601880))))

(declare-fun bm!719491 () Bool)

(assert (=> bm!719491 (= call!719497 call!719495)))

(declare-fun b!7765961 () Bool)

(assert (=> b!7765961 (= e!4601881 e!4601877)))

(declare-fun res!3095978 () Bool)

(assert (=> b!7765961 (=> (not res!3095978) (not e!4601877))))

(assert (=> b!7765961 (= res!3095978 call!719497)))

(declare-fun b!7765962 () Bool)

(assert (=> b!7765962 (= e!4601879 e!4601882)))

(declare-fun c!1431333 () Bool)

(assert (=> b!7765962 (= c!1431333 ((_ is Star!20727) r!25924))))

(declare-fun b!7765963 () Bool)

(declare-fun res!3095980 () Bool)

(assert (=> b!7765963 (=> (not res!3095980) (not e!4601878))))

(assert (=> b!7765963 (= res!3095980 call!719496)))

(assert (=> b!7765963 (= e!4601876 e!4601878)))

(declare-fun bm!719492 () Bool)

(assert (=> bm!719492 (= call!719495 (validRegex!11141 (ite c!1431333 (reg!21056 r!25924) (ite c!1431332 (regTwo!41967 r!25924) (regOne!41966 r!25924)))))))

(assert (= (and d!2343943 (not res!3095977)) b!7765962))

(assert (= (and b!7765962 c!1431333) b!7765960))

(assert (= (and b!7765962 (not c!1431333)) b!7765959))

(assert (= (and b!7765960 res!3095976) b!7765956))

(assert (= (and b!7765959 c!1431332) b!7765963))

(assert (= (and b!7765959 (not c!1431332)) b!7765955))

(assert (= (and b!7765963 res!3095980) b!7765958))

(assert (= (and b!7765955 (not res!3095979)) b!7765961))

(assert (= (and b!7765961 res!3095978) b!7765957))

(assert (= (or b!7765958 b!7765961) bm!719491))

(assert (= (or b!7765963 b!7765957) bm!719490))

(assert (= (or b!7765956 bm!719491) bm!719492))

(declare-fun m!8222650 () Bool)

(assert (=> bm!719490 m!8222650))

(declare-fun m!8222652 () Bool)

(assert (=> b!7765960 m!8222652))

(declare-fun m!8222654 () Bool)

(assert (=> bm!719492 m!8222654))

(assert (=> b!7765804 d!2343943))

(declare-fun b!7765976 () Bool)

(declare-fun e!4601885 () Bool)

(declare-fun tp!2281300 () Bool)

(assert (=> b!7765976 (= e!4601885 tp!2281300)))

(declare-fun b!7765974 () Bool)

(assert (=> b!7765974 (= e!4601885 tp_is_empty!51809)))

(assert (=> b!7765799 (= tp!2281285 e!4601885)))

(declare-fun b!7765977 () Bool)

(declare-fun tp!2281299 () Bool)

(declare-fun tp!2281298 () Bool)

(assert (=> b!7765977 (= e!4601885 (and tp!2281299 tp!2281298))))

(declare-fun b!7765975 () Bool)

(declare-fun tp!2281297 () Bool)

(declare-fun tp!2281296 () Bool)

(assert (=> b!7765975 (= e!4601885 (and tp!2281297 tp!2281296))))

(assert (= (and b!7765799 ((_ is ElementMatch!20727) (regOne!41966 r!25924))) b!7765974))

(assert (= (and b!7765799 ((_ is Concat!29572) (regOne!41966 r!25924))) b!7765975))

(assert (= (and b!7765799 ((_ is Star!20727) (regOne!41966 r!25924))) b!7765976))

(assert (= (and b!7765799 ((_ is Union!20727) (regOne!41966 r!25924))) b!7765977))

(declare-fun b!7765980 () Bool)

(declare-fun e!4601886 () Bool)

(declare-fun tp!2281305 () Bool)

(assert (=> b!7765980 (= e!4601886 tp!2281305)))

(declare-fun b!7765978 () Bool)

(assert (=> b!7765978 (= e!4601886 tp_is_empty!51809)))

(assert (=> b!7765799 (= tp!2281280 e!4601886)))

(declare-fun b!7765981 () Bool)

(declare-fun tp!2281304 () Bool)

(declare-fun tp!2281303 () Bool)

(assert (=> b!7765981 (= e!4601886 (and tp!2281304 tp!2281303))))

(declare-fun b!7765979 () Bool)

(declare-fun tp!2281302 () Bool)

(declare-fun tp!2281301 () Bool)

(assert (=> b!7765979 (= e!4601886 (and tp!2281302 tp!2281301))))

(assert (= (and b!7765799 ((_ is ElementMatch!20727) (regTwo!41966 r!25924))) b!7765978))

(assert (= (and b!7765799 ((_ is Concat!29572) (regTwo!41966 r!25924))) b!7765979))

(assert (= (and b!7765799 ((_ is Star!20727) (regTwo!41966 r!25924))) b!7765980))

(assert (= (and b!7765799 ((_ is Union!20727) (regTwo!41966 r!25924))) b!7765981))

(declare-fun b!7765986 () Bool)

(declare-fun e!4601889 () Bool)

(declare-fun tp!2281308 () Bool)

(assert (=> b!7765986 (= e!4601889 (and tp_is_empty!51809 tp!2281308))))

(assert (=> b!7765805 (= tp!2281283 e!4601889)))

(assert (= (and b!7765805 ((_ is Cons!73444) (t!388303 s!14904))) b!7765986))

(declare-fun b!7765989 () Bool)

(declare-fun e!4601890 () Bool)

(declare-fun tp!2281313 () Bool)

(assert (=> b!7765989 (= e!4601890 tp!2281313)))

(declare-fun b!7765987 () Bool)

(assert (=> b!7765987 (= e!4601890 tp_is_empty!51809)))

(assert (=> b!7765802 (= tp!2281284 e!4601890)))

(declare-fun b!7765990 () Bool)

(declare-fun tp!2281312 () Bool)

(declare-fun tp!2281311 () Bool)

(assert (=> b!7765990 (= e!4601890 (and tp!2281312 tp!2281311))))

(declare-fun b!7765988 () Bool)

(declare-fun tp!2281310 () Bool)

(declare-fun tp!2281309 () Bool)

(assert (=> b!7765988 (= e!4601890 (and tp!2281310 tp!2281309))))

(assert (= (and b!7765802 ((_ is ElementMatch!20727) (regOne!41967 r!25924))) b!7765987))

(assert (= (and b!7765802 ((_ is Concat!29572) (regOne!41967 r!25924))) b!7765988))

(assert (= (and b!7765802 ((_ is Star!20727) (regOne!41967 r!25924))) b!7765989))

(assert (= (and b!7765802 ((_ is Union!20727) (regOne!41967 r!25924))) b!7765990))

(declare-fun b!7765993 () Bool)

(declare-fun e!4601891 () Bool)

(declare-fun tp!2281318 () Bool)

(assert (=> b!7765993 (= e!4601891 tp!2281318)))

(declare-fun b!7765991 () Bool)

(assert (=> b!7765991 (= e!4601891 tp_is_empty!51809)))

(assert (=> b!7765802 (= tp!2281282 e!4601891)))

(declare-fun b!7765994 () Bool)

(declare-fun tp!2281317 () Bool)

(declare-fun tp!2281316 () Bool)

(assert (=> b!7765994 (= e!4601891 (and tp!2281317 tp!2281316))))

(declare-fun b!7765992 () Bool)

(declare-fun tp!2281315 () Bool)

(declare-fun tp!2281314 () Bool)

(assert (=> b!7765992 (= e!4601891 (and tp!2281315 tp!2281314))))

(assert (= (and b!7765802 ((_ is ElementMatch!20727) (regTwo!41967 r!25924))) b!7765991))

(assert (= (and b!7765802 ((_ is Concat!29572) (regTwo!41967 r!25924))) b!7765992))

(assert (= (and b!7765802 ((_ is Star!20727) (regTwo!41967 r!25924))) b!7765993))

(assert (= (and b!7765802 ((_ is Union!20727) (regTwo!41967 r!25924))) b!7765994))

(declare-fun b!7765997 () Bool)

(declare-fun e!4601892 () Bool)

(declare-fun tp!2281323 () Bool)

(assert (=> b!7765997 (= e!4601892 tp!2281323)))

(declare-fun b!7765995 () Bool)

(assert (=> b!7765995 (= e!4601892 tp_is_empty!51809)))

(assert (=> b!7765803 (= tp!2281281 e!4601892)))

(declare-fun b!7765998 () Bool)

(declare-fun tp!2281322 () Bool)

(declare-fun tp!2281321 () Bool)

(assert (=> b!7765998 (= e!4601892 (and tp!2281322 tp!2281321))))

(declare-fun b!7765996 () Bool)

(declare-fun tp!2281320 () Bool)

(declare-fun tp!2281319 () Bool)

(assert (=> b!7765996 (= e!4601892 (and tp!2281320 tp!2281319))))

(assert (= (and b!7765803 ((_ is ElementMatch!20727) (reg!21056 r!25924))) b!7765995))

(assert (= (and b!7765803 ((_ is Concat!29572) (reg!21056 r!25924))) b!7765996))

(assert (= (and b!7765803 ((_ is Star!20727) (reg!21056 r!25924))) b!7765997))

(assert (= (and b!7765803 ((_ is Union!20727) (reg!21056 r!25924))) b!7765998))

(check-sat (not b!7765996) (not b!7765976) (not b!7765941) (not bm!719471) (not b!7765846) (not bm!719492) (not b!7765992) (not bm!719469) (not b!7765990) (not d!2343935) (not bm!719448) (not bm!719467) (not b!7765998) (not b!7765986) (not b!7765975) (not b!7765989) (not b!7765836) (not b!7765977) (not b!7765993) (not b!7765892) (not b!7765994) (not d!2343931) (not b!7765979) (not bm!719485) (not bm!719483) tp_is_empty!51809 (not b!7765838) (not d!2343937) (not b!7765834) (not b!7765981) (not b!7765837) (not b!7765988) (not b!7765980) (not b!7765997) (not b!7765847) (not bm!719490) (not b!7765960) (not b!7765902) (not bm!719465))
(check-sat)
