; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!734802 () Bool)

(assert start!734802)

(declare-fun b!7630756 () Bool)

(assert (=> b!7630756 true))

(assert (=> b!7630756 true))

(declare-fun b!7630754 () Bool)

(declare-fun e!4536601 () Bool)

(declare-datatypes ((C!41086 0))(
  ( (C!41087 (val!30983 Int)) )
))
(declare-datatypes ((Regex!20380 0))(
  ( (ElementMatch!20380 (c!1405859 C!41086)) (Concat!29225 (regOne!41272 Regex!20380) (regTwo!41272 Regex!20380)) (EmptyExpr!20380) (Star!20380 (reg!20709 Regex!20380)) (EmptyLang!20380) (Union!20380 (regOne!41273 Regex!20380) (regTwo!41273 Regex!20380)) )
))
(declare-fun r!14126 () Regex!20380)

(declare-fun validRegex!10798 (Regex!20380) Bool)

(assert (=> b!7630754 (= e!4536601 (validRegex!10798 (regTwo!41272 r!14126)))))

(declare-fun b!7630755 () Bool)

(declare-fun e!4536599 () Bool)

(declare-fun tp_is_empty!51115 () Bool)

(assert (=> b!7630755 (= e!4536599 tp_is_empty!51115)))

(declare-fun e!4536598 () Bool)

(assert (=> b!7630756 (= e!4536598 (not e!4536601))))

(declare-fun res!3055905 () Bool)

(assert (=> b!7630756 (=> res!3055905 e!4536601)))

(declare-datatypes ((List!73231 0))(
  ( (Nil!73107) (Cons!73107 (h!79555 C!41086) (t!387966 List!73231)) )
))
(declare-fun s!9605 () List!73231)

(declare-fun matchR!9883 (Regex!20380 List!73231) Bool)

(assert (=> b!7630756 (= res!3055905 (matchR!9883 r!14126 s!9605))))

(declare-fun lambda!469084 () Int)

(declare-datatypes ((tuple2!69318 0))(
  ( (tuple2!69319 (_1!37962 List!73231) (_2!37962 List!73231)) )
))
(declare-datatypes ((Option!17453 0))(
  ( (None!17452) (Some!17452 (v!54587 tuple2!69318)) )
))
(declare-fun isDefined!14069 (Option!17453) Bool)

(declare-fun findConcatSeparation!3483 (Regex!20380 Regex!20380 List!73231 List!73231 List!73231) Option!17453)

(declare-fun Exists!4534 (Int) Bool)

(assert (=> b!7630756 (= (isDefined!14069 (findConcatSeparation!3483 (regOne!41272 r!14126) (regTwo!41272 r!14126) Nil!73107 s!9605 s!9605)) (Exists!4534 lambda!469084))))

(declare-datatypes ((Unit!167688 0))(
  ( (Unit!167689) )
))
(declare-fun lt!2658731 () Unit!167688)

(declare-fun lemmaFindConcatSeparationEquivalentToExists!3241 (Regex!20380 Regex!20380 List!73231) Unit!167688)

(assert (=> b!7630756 (= lt!2658731 (lemmaFindConcatSeparationEquivalentToExists!3241 (regOne!41272 r!14126) (regTwo!41272 r!14126) s!9605))))

(declare-fun b!7630757 () Bool)

(declare-fun tp!2227774 () Bool)

(assert (=> b!7630757 (= e!4536599 tp!2227774)))

(declare-fun b!7630758 () Bool)

(declare-fun tp!2227775 () Bool)

(declare-fun tp!2227779 () Bool)

(assert (=> b!7630758 (= e!4536599 (and tp!2227775 tp!2227779))))

(declare-fun b!7630759 () Bool)

(declare-fun e!4536600 () Bool)

(declare-fun tp!2227777 () Bool)

(assert (=> b!7630759 (= e!4536600 (and tp_is_empty!51115 tp!2227777))))

(declare-fun b!7630760 () Bool)

(declare-fun res!3055907 () Bool)

(assert (=> b!7630760 (=> res!3055907 e!4536601)))

(assert (=> b!7630760 (= res!3055907 (not (validRegex!10798 (regOne!41272 r!14126))))))

(declare-fun b!7630761 () Bool)

(declare-fun tp!2227776 () Bool)

(declare-fun tp!2227778 () Bool)

(assert (=> b!7630761 (= e!4536599 (and tp!2227776 tp!2227778))))

(declare-fun b!7630762 () Bool)

(declare-fun res!3055908 () Bool)

(assert (=> b!7630762 (=> (not res!3055908) (not e!4536598))))

(assert (=> b!7630762 (= res!3055908 (and (not (is-EmptyExpr!20380 r!14126)) (not (is-EmptyLang!20380 r!14126)) (not (is-ElementMatch!20380 r!14126)) (not (is-Union!20380 r!14126)) (not (is-Star!20380 r!14126))))))

(declare-fun res!3055906 () Bool)

(assert (=> start!734802 (=> (not res!3055906) (not e!4536598))))

(assert (=> start!734802 (= res!3055906 (validRegex!10798 r!14126))))

(assert (=> start!734802 e!4536598))

(assert (=> start!734802 e!4536599))

(assert (=> start!734802 e!4536600))

(assert (= (and start!734802 res!3055906) b!7630762))

(assert (= (and b!7630762 res!3055908) b!7630756))

(assert (= (and b!7630756 (not res!3055905)) b!7630760))

(assert (= (and b!7630760 (not res!3055907)) b!7630754))

(assert (= (and start!734802 (is-ElementMatch!20380 r!14126)) b!7630755))

(assert (= (and start!734802 (is-Concat!29225 r!14126)) b!7630761))

(assert (= (and start!734802 (is-Star!20380 r!14126)) b!7630757))

(assert (= (and start!734802 (is-Union!20380 r!14126)) b!7630758))

(assert (= (and start!734802 (is-Cons!73107 s!9605)) b!7630759))

(declare-fun m!8157886 () Bool)

(assert (=> b!7630754 m!8157886))

(declare-fun m!8157888 () Bool)

(assert (=> b!7630756 m!8157888))

(declare-fun m!8157890 () Bool)

(assert (=> b!7630756 m!8157890))

(declare-fun m!8157892 () Bool)

(assert (=> b!7630756 m!8157892))

(assert (=> b!7630756 m!8157890))

(declare-fun m!8157894 () Bool)

(assert (=> b!7630756 m!8157894))

(declare-fun m!8157896 () Bool)

(assert (=> b!7630756 m!8157896))

(declare-fun m!8157898 () Bool)

(assert (=> b!7630760 m!8157898))

(declare-fun m!8157900 () Bool)

(assert (=> start!734802 m!8157900))

(push 1)

(assert tp_is_empty!51115)

(assert (not b!7630758))

(assert (not b!7630756))

(assert (not b!7630760))

(assert (not b!7630759))

(assert (not b!7630757))

(assert (not b!7630761))

(assert (not b!7630754))

(assert (not start!734802))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun b!7630820 () Bool)

(declare-fun e!4536632 () Bool)

(declare-fun e!4536635 () Bool)

(assert (=> b!7630820 (= e!4536632 e!4536635)))

(declare-fun c!1405866 () Bool)

(assert (=> b!7630820 (= c!1405866 (is-Star!20380 r!14126))))

(declare-fun bm!700530 () Bool)

(declare-fun call!700535 () Bool)

(declare-fun c!1405865 () Bool)

(assert (=> bm!700530 (= call!700535 (validRegex!10798 (ite c!1405865 (regOne!41273 r!14126) (regOne!41272 r!14126))))))

(declare-fun b!7630821 () Bool)

(declare-fun res!3055936 () Bool)

(declare-fun e!4536630 () Bool)

(assert (=> b!7630821 (=> (not res!3055936) (not e!4536630))))

(assert (=> b!7630821 (= res!3055936 call!700535)))

(declare-fun e!4536634 () Bool)

(assert (=> b!7630821 (= e!4536634 e!4536630)))

(declare-fun call!700537 () Bool)

(declare-fun bm!700531 () Bool)

(assert (=> bm!700531 (= call!700537 (validRegex!10798 (ite c!1405866 (reg!20709 r!14126) (ite c!1405865 (regTwo!41273 r!14126) (regTwo!41272 r!14126)))))))

(declare-fun b!7630823 () Bool)

(declare-fun e!4536636 () Bool)

(declare-fun e!4536631 () Bool)

(assert (=> b!7630823 (= e!4536636 e!4536631)))

(declare-fun res!3055935 () Bool)

(assert (=> b!7630823 (=> (not res!3055935) (not e!4536631))))

(assert (=> b!7630823 (= res!3055935 call!700535)))

(declare-fun bm!700532 () Bool)

(declare-fun call!700536 () Bool)

(assert (=> bm!700532 (= call!700536 call!700537)))

(declare-fun b!7630824 () Bool)

(declare-fun e!4536633 () Bool)

(assert (=> b!7630824 (= e!4536635 e!4536633)))

(declare-fun res!3055938 () Bool)

(declare-fun nullable!8911 (Regex!20380) Bool)

(assert (=> b!7630824 (= res!3055938 (not (nullable!8911 (reg!20709 r!14126))))))

(assert (=> b!7630824 (=> (not res!3055938) (not e!4536633))))

(declare-fun b!7630825 () Bool)

(assert (=> b!7630825 (= e!4536633 call!700537)))

(declare-fun b!7630826 () Bool)

(assert (=> b!7630826 (= e!4536631 call!700536)))

(declare-fun b!7630827 () Bool)

(assert (=> b!7630827 (= e!4536635 e!4536634)))

(assert (=> b!7630827 (= c!1405865 (is-Union!20380 r!14126))))

(declare-fun b!7630828 () Bool)

(assert (=> b!7630828 (= e!4536630 call!700536)))

(declare-fun d!2324150 () Bool)

(declare-fun res!3055937 () Bool)

(assert (=> d!2324150 (=> res!3055937 e!4536632)))

(assert (=> d!2324150 (= res!3055937 (is-ElementMatch!20380 r!14126))))

(assert (=> d!2324150 (= (validRegex!10798 r!14126) e!4536632)))

(declare-fun b!7630822 () Bool)

(declare-fun res!3055939 () Bool)

(assert (=> b!7630822 (=> res!3055939 e!4536636)))

(assert (=> b!7630822 (= res!3055939 (not (is-Concat!29225 r!14126)))))

(assert (=> b!7630822 (= e!4536634 e!4536636)))

(assert (= (and d!2324150 (not res!3055937)) b!7630820))

(assert (= (and b!7630820 c!1405866) b!7630824))

(assert (= (and b!7630820 (not c!1405866)) b!7630827))

(assert (= (and b!7630824 res!3055938) b!7630825))

(assert (= (and b!7630827 c!1405865) b!7630821))

(assert (= (and b!7630827 (not c!1405865)) b!7630822))

(assert (= (and b!7630821 res!3055936) b!7630828))

(assert (= (and b!7630822 (not res!3055939)) b!7630823))

(assert (= (and b!7630823 res!3055935) b!7630826))

(assert (= (or b!7630821 b!7630823) bm!700530))

(assert (= (or b!7630828 b!7630826) bm!700532))

(assert (= (or b!7630825 bm!700532) bm!700531))

(declare-fun m!8157918 () Bool)

(assert (=> bm!700530 m!8157918))

(declare-fun m!8157920 () Bool)

(assert (=> bm!700531 m!8157920))

(declare-fun m!8157922 () Bool)

(assert (=> b!7630824 m!8157922))

(assert (=> start!734802 d!2324150))

(declare-fun b!7630885 () Bool)

(declare-fun res!3055976 () Bool)

(declare-fun e!4536667 () Bool)

(assert (=> b!7630885 (=> res!3055976 e!4536667)))

(assert (=> b!7630885 (= res!3055976 (not (is-ElementMatch!20380 r!14126)))))

(declare-fun e!4536670 () Bool)

(assert (=> b!7630885 (= e!4536670 e!4536667)))

(declare-fun b!7630886 () Bool)

(declare-fun e!4536668 () Bool)

(declare-fun e!4536671 () Bool)

(assert (=> b!7630886 (= e!4536668 e!4536671)))

(declare-fun res!3055977 () Bool)

(assert (=> b!7630886 (=> res!3055977 e!4536671)))

(declare-fun call!700540 () Bool)

(assert (=> b!7630886 (= res!3055977 call!700540)))

(declare-fun b!7630888 () Bool)

(declare-fun res!3055974 () Bool)

(assert (=> b!7630888 (=> res!3055974 e!4536667)))

(declare-fun e!4536669 () Bool)

(assert (=> b!7630888 (= res!3055974 e!4536669)))

(declare-fun res!3055972 () Bool)

(assert (=> b!7630888 (=> (not res!3055972) (not e!4536669))))

(declare-fun lt!2658739 () Bool)

(assert (=> b!7630888 (= res!3055972 lt!2658739)))

(declare-fun b!7630889 () Bool)

(declare-fun res!3055979 () Bool)

(assert (=> b!7630889 (=> (not res!3055979) (not e!4536669))))

(assert (=> b!7630889 (= res!3055979 (not call!700540))))

(declare-fun b!7630890 () Bool)

(declare-fun head!15684 (List!73231) C!41086)

(assert (=> b!7630890 (= e!4536671 (not (= (head!15684 s!9605) (c!1405859 r!14126))))))

(declare-fun b!7630891 () Bool)

(assert (=> b!7630891 (= e!4536667 e!4536668)))

(declare-fun res!3055973 () Bool)

(assert (=> b!7630891 (=> (not res!3055973) (not e!4536668))))

(assert (=> b!7630891 (= res!3055973 (not lt!2658739))))

(declare-fun b!7630892 () Bool)

(declare-fun res!3055975 () Bool)

(assert (=> b!7630892 (=> (not res!3055975) (not e!4536669))))

(declare-fun isEmpty!41737 (List!73231) Bool)

(declare-fun tail!15224 (List!73231) List!73231)

(assert (=> b!7630892 (= res!3055975 (isEmpty!41737 (tail!15224 s!9605)))))

(declare-fun bm!700535 () Bool)

(assert (=> bm!700535 (= call!700540 (isEmpty!41737 s!9605))))

(declare-fun b!7630893 () Bool)

(declare-fun e!4536666 () Bool)

(declare-fun derivativeStep!5884 (Regex!20380 C!41086) Regex!20380)

(assert (=> b!7630893 (= e!4536666 (matchR!9883 (derivativeStep!5884 r!14126 (head!15684 s!9605)) (tail!15224 s!9605)))))

(declare-fun b!7630894 () Bool)

(assert (=> b!7630894 (= e!4536670 (not lt!2658739))))

(declare-fun d!2324154 () Bool)

(declare-fun e!4536665 () Bool)

(assert (=> d!2324154 e!4536665))

(declare-fun c!1405880 () Bool)

(assert (=> d!2324154 (= c!1405880 (is-EmptyExpr!20380 r!14126))))

(assert (=> d!2324154 (= lt!2658739 e!4536666)))

(declare-fun c!1405879 () Bool)

(assert (=> d!2324154 (= c!1405879 (isEmpty!41737 s!9605))))

(assert (=> d!2324154 (validRegex!10798 r!14126)))

(assert (=> d!2324154 (= (matchR!9883 r!14126 s!9605) lt!2658739)))

(declare-fun b!7630887 () Bool)

(assert (=> b!7630887 (= e!4536665 e!4536670)))

(declare-fun c!1405881 () Bool)

(assert (=> b!7630887 (= c!1405881 (is-EmptyLang!20380 r!14126))))

(declare-fun b!7630895 () Bool)

(assert (=> b!7630895 (= e!4536666 (nullable!8911 r!14126))))

(declare-fun b!7630896 () Bool)

(declare-fun res!3055978 () Bool)

(assert (=> b!7630896 (=> res!3055978 e!4536671)))

(assert (=> b!7630896 (= res!3055978 (not (isEmpty!41737 (tail!15224 s!9605))))))

(declare-fun b!7630897 () Bool)

(assert (=> b!7630897 (= e!4536665 (= lt!2658739 call!700540))))

(declare-fun b!7630898 () Bool)

(assert (=> b!7630898 (= e!4536669 (= (head!15684 s!9605) (c!1405859 r!14126)))))

(assert (= (and d!2324154 c!1405879) b!7630895))

(assert (= (and d!2324154 (not c!1405879)) b!7630893))

(assert (= (and d!2324154 c!1405880) b!7630897))

(assert (= (and d!2324154 (not c!1405880)) b!7630887))

(assert (= (and b!7630887 c!1405881) b!7630894))

(assert (= (and b!7630887 (not c!1405881)) b!7630885))

(assert (= (and b!7630885 (not res!3055976)) b!7630888))

(assert (= (and b!7630888 res!3055972) b!7630889))

(assert (= (and b!7630889 res!3055979) b!7630892))

(assert (= (and b!7630892 res!3055975) b!7630898))

(assert (= (and b!7630888 (not res!3055974)) b!7630891))

(assert (= (and b!7630891 res!3055973) b!7630886))

(assert (= (and b!7630886 (not res!3055977)) b!7630896))

(assert (= (and b!7630896 (not res!3055978)) b!7630890))

(assert (= (or b!7630897 b!7630886 b!7630889) bm!700535))

(declare-fun m!8157924 () Bool)

(assert (=> b!7630893 m!8157924))

(assert (=> b!7630893 m!8157924))

(declare-fun m!8157926 () Bool)

(assert (=> b!7630893 m!8157926))

(declare-fun m!8157928 () Bool)

(assert (=> b!7630893 m!8157928))

(assert (=> b!7630893 m!8157926))

(assert (=> b!7630893 m!8157928))

(declare-fun m!8157930 () Bool)

(assert (=> b!7630893 m!8157930))

(assert (=> b!7630890 m!8157924))

(assert (=> b!7630892 m!8157928))

(assert (=> b!7630892 m!8157928))

(declare-fun m!8157932 () Bool)

(assert (=> b!7630892 m!8157932))

(assert (=> b!7630896 m!8157928))

(assert (=> b!7630896 m!8157928))

(assert (=> b!7630896 m!8157932))

(assert (=> b!7630898 m!8157924))

(declare-fun m!8157934 () Bool)

(assert (=> bm!700535 m!8157934))

(declare-fun m!8157936 () Bool)

(assert (=> b!7630895 m!8157936))

(assert (=> d!2324154 m!8157934))

(assert (=> d!2324154 m!8157900))

(assert (=> b!7630756 d!2324154))

(declare-fun bs!1944031 () Bool)

(declare-fun d!2324156 () Bool)

(assert (= bs!1944031 (and d!2324156 b!7630756)))

(declare-fun lambda!469090 () Int)

(assert (=> bs!1944031 (= lambda!469090 lambda!469084)))

(assert (=> d!2324156 true))

(assert (=> d!2324156 true))

(assert (=> d!2324156 true))

(assert (=> d!2324156 (= (isDefined!14069 (findConcatSeparation!3483 (regOne!41272 r!14126) (regTwo!41272 r!14126) Nil!73107 s!9605 s!9605)) (Exists!4534 lambda!469090))))

(declare-fun lt!2658742 () Unit!167688)

(declare-fun choose!58907 (Regex!20380 Regex!20380 List!73231) Unit!167688)

(assert (=> d!2324156 (= lt!2658742 (choose!58907 (regOne!41272 r!14126) (regTwo!41272 r!14126) s!9605))))

(assert (=> d!2324156 (validRegex!10798 (regOne!41272 r!14126))))

(assert (=> d!2324156 (= (lemmaFindConcatSeparationEquivalentToExists!3241 (regOne!41272 r!14126) (regTwo!41272 r!14126) s!9605) lt!2658742)))

(declare-fun bs!1944032 () Bool)

(assert (= bs!1944032 d!2324156))

(declare-fun m!8157938 () Bool)

(assert (=> bs!1944032 m!8157938))

(assert (=> bs!1944032 m!8157898))

(declare-fun m!8157940 () Bool)

(assert (=> bs!1944032 m!8157940))

(assert (=> bs!1944032 m!8157890))

(assert (=> bs!1944032 m!8157890))

(assert (=> bs!1944032 m!8157894))

(assert (=> b!7630756 d!2324156))

(declare-fun d!2324158 () Bool)

(declare-fun e!4536693 () Bool)

(assert (=> d!2324158 e!4536693))

(declare-fun res!3056006 () Bool)

(assert (=> d!2324158 (=> res!3056006 e!4536693)))

(declare-fun e!4536692 () Bool)

(assert (=> d!2324158 (= res!3056006 e!4536692)))

(declare-fun res!3056005 () Bool)

(assert (=> d!2324158 (=> (not res!3056005) (not e!4536692))))

(declare-fun lt!2658752 () Option!17453)

(assert (=> d!2324158 (= res!3056005 (isDefined!14069 lt!2658752))))

(declare-fun e!4536694 () Option!17453)

(assert (=> d!2324158 (= lt!2658752 e!4536694)))

(declare-fun c!1405889 () Bool)

(declare-fun e!4536695 () Bool)

(assert (=> d!2324158 (= c!1405889 e!4536695)))

(declare-fun res!3056004 () Bool)

(assert (=> d!2324158 (=> (not res!3056004) (not e!4536695))))

(assert (=> d!2324158 (= res!3056004 (matchR!9883 (regOne!41272 r!14126) Nil!73107))))

(assert (=> d!2324158 (validRegex!10798 (regOne!41272 r!14126))))

(assert (=> d!2324158 (= (findConcatSeparation!3483 (regOne!41272 r!14126) (regTwo!41272 r!14126) Nil!73107 s!9605 s!9605) lt!2658752)))

(declare-fun b!7630935 () Bool)

(declare-fun res!3056003 () Bool)

(assert (=> b!7630935 (=> (not res!3056003) (not e!4536692))))

(declare-fun get!25838 (Option!17453) tuple2!69318)

(assert (=> b!7630935 (= res!3056003 (matchR!9883 (regOne!41272 r!14126) (_1!37962 (get!25838 lt!2658752))))))

(declare-fun b!7630936 () Bool)

(declare-fun res!3056002 () Bool)

(assert (=> b!7630936 (=> (not res!3056002) (not e!4536692))))

(assert (=> b!7630936 (= res!3056002 (matchR!9883 (regTwo!41272 r!14126) (_2!37962 (get!25838 lt!2658752))))))

(declare-fun b!7630937 () Bool)

(assert (=> b!7630937 (= e!4536695 (matchR!9883 (regTwo!41272 r!14126) s!9605))))

(declare-fun b!7630938 () Bool)

(declare-fun e!4536691 () Option!17453)

(assert (=> b!7630938 (= e!4536694 e!4536691)))

(declare-fun c!1405890 () Bool)

(assert (=> b!7630938 (= c!1405890 (is-Nil!73107 s!9605))))

(declare-fun b!7630939 () Bool)

(assert (=> b!7630939 (= e!4536694 (Some!17452 (tuple2!69319 Nil!73107 s!9605)))))

(declare-fun b!7630940 () Bool)

(declare-fun ++!17662 (List!73231 List!73231) List!73231)

(assert (=> b!7630940 (= e!4536692 (= (++!17662 (_1!37962 (get!25838 lt!2658752)) (_2!37962 (get!25838 lt!2658752))) s!9605))))

(declare-fun b!7630941 () Bool)

(assert (=> b!7630941 (= e!4536691 None!17452)))

(declare-fun b!7630942 () Bool)

(assert (=> b!7630942 (= e!4536693 (not (isDefined!14069 lt!2658752)))))

(declare-fun b!7630943 () Bool)

(declare-fun lt!2658754 () Unit!167688)

(declare-fun lt!2658753 () Unit!167688)

(assert (=> b!7630943 (= lt!2658754 lt!2658753)))

(assert (=> b!7630943 (= (++!17662 (++!17662 Nil!73107 (Cons!73107 (h!79555 s!9605) Nil!73107)) (t!387966 s!9605)) s!9605)))

(declare-fun lemmaMoveElementToOtherListKeepsConcatEq!3240 (List!73231 C!41086 List!73231 List!73231) Unit!167688)

(assert (=> b!7630943 (= lt!2658753 (lemmaMoveElementToOtherListKeepsConcatEq!3240 Nil!73107 (h!79555 s!9605) (t!387966 s!9605) s!9605))))

(assert (=> b!7630943 (= e!4536691 (findConcatSeparation!3483 (regOne!41272 r!14126) (regTwo!41272 r!14126) (++!17662 Nil!73107 (Cons!73107 (h!79555 s!9605) Nil!73107)) (t!387966 s!9605) s!9605))))

(assert (= (and d!2324158 res!3056004) b!7630937))

(assert (= (and d!2324158 c!1405889) b!7630939))

(assert (= (and d!2324158 (not c!1405889)) b!7630938))

(assert (= (and b!7630938 c!1405890) b!7630941))

(assert (= (and b!7630938 (not c!1405890)) b!7630943))

(assert (= (and d!2324158 res!3056005) b!7630935))

(assert (= (and b!7630935 res!3056003) b!7630936))

(assert (= (and b!7630936 res!3056002) b!7630940))

(assert (= (and d!2324158 (not res!3056006)) b!7630942))

(declare-fun m!8157956 () Bool)

(assert (=> d!2324158 m!8157956))

(declare-fun m!8157958 () Bool)

(assert (=> d!2324158 m!8157958))

(assert (=> d!2324158 m!8157898))

(declare-fun m!8157960 () Bool)

(assert (=> b!7630940 m!8157960))

(declare-fun m!8157962 () Bool)

(assert (=> b!7630940 m!8157962))

(assert (=> b!7630942 m!8157956))

(assert (=> b!7630935 m!8157960))

(declare-fun m!8157964 () Bool)

(assert (=> b!7630935 m!8157964))

(declare-fun m!8157966 () Bool)

(assert (=> b!7630937 m!8157966))

(declare-fun m!8157968 () Bool)

(assert (=> b!7630943 m!8157968))

(assert (=> b!7630943 m!8157968))

(declare-fun m!8157970 () Bool)

(assert (=> b!7630943 m!8157970))

(declare-fun m!8157972 () Bool)

(assert (=> b!7630943 m!8157972))

(assert (=> b!7630943 m!8157968))

(declare-fun m!8157974 () Bool)

(assert (=> b!7630943 m!8157974))

(assert (=> b!7630936 m!8157960))

(declare-fun m!8157976 () Bool)

(assert (=> b!7630936 m!8157976))

(assert (=> b!7630756 d!2324158))

(declare-fun d!2324162 () Bool)

(declare-fun isEmpty!41738 (Option!17453) Bool)

(assert (=> d!2324162 (= (isDefined!14069 (findConcatSeparation!3483 (regOne!41272 r!14126) (regTwo!41272 r!14126) Nil!73107 s!9605 s!9605)) (not (isEmpty!41738 (findConcatSeparation!3483 (regOne!41272 r!14126) (regTwo!41272 r!14126) Nil!73107 s!9605 s!9605))))))

(declare-fun bs!1944033 () Bool)

(assert (= bs!1944033 d!2324162))

(assert (=> bs!1944033 m!8157890))

(declare-fun m!8157978 () Bool)

(assert (=> bs!1944033 m!8157978))

(assert (=> b!7630756 d!2324162))

(declare-fun d!2324164 () Bool)

(declare-fun choose!58908 (Int) Bool)

(assert (=> d!2324164 (= (Exists!4534 lambda!469084) (choose!58908 lambda!469084))))

(declare-fun bs!1944034 () Bool)

(assert (= bs!1944034 d!2324164))

(declare-fun m!8157980 () Bool)

(assert (=> bs!1944034 m!8157980))

(assert (=> b!7630756 d!2324164))

(declare-fun b!7630948 () Bool)

(declare-fun e!4536700 () Bool)

(declare-fun e!4536703 () Bool)

(assert (=> b!7630948 (= e!4536700 e!4536703)))

(declare-fun c!1405892 () Bool)

(assert (=> b!7630948 (= c!1405892 (is-Star!20380 (regOne!41272 r!14126)))))

(declare-fun bm!700539 () Bool)

(declare-fun call!700544 () Bool)

(declare-fun c!1405891 () Bool)

(assert (=> bm!700539 (= call!700544 (validRegex!10798 (ite c!1405891 (regOne!41273 (regOne!41272 r!14126)) (regOne!41272 (regOne!41272 r!14126)))))))

(declare-fun b!7630949 () Bool)

(declare-fun res!3056012 () Bool)

(declare-fun e!4536698 () Bool)

(assert (=> b!7630949 (=> (not res!3056012) (not e!4536698))))

(assert (=> b!7630949 (= res!3056012 call!700544)))

(declare-fun e!4536702 () Bool)

(assert (=> b!7630949 (= e!4536702 e!4536698)))

(declare-fun call!700546 () Bool)

(declare-fun bm!700540 () Bool)

(assert (=> bm!700540 (= call!700546 (validRegex!10798 (ite c!1405892 (reg!20709 (regOne!41272 r!14126)) (ite c!1405891 (regTwo!41273 (regOne!41272 r!14126)) (regTwo!41272 (regOne!41272 r!14126))))))))

(declare-fun b!7630951 () Bool)

(declare-fun e!4536704 () Bool)

(declare-fun e!4536699 () Bool)

(assert (=> b!7630951 (= e!4536704 e!4536699)))

(declare-fun res!3056011 () Bool)

(assert (=> b!7630951 (=> (not res!3056011) (not e!4536699))))

(assert (=> b!7630951 (= res!3056011 call!700544)))

(declare-fun bm!700541 () Bool)

(declare-fun call!700545 () Bool)

(assert (=> bm!700541 (= call!700545 call!700546)))

(declare-fun b!7630952 () Bool)

(declare-fun e!4536701 () Bool)

(assert (=> b!7630952 (= e!4536703 e!4536701)))

(declare-fun res!3056014 () Bool)

(assert (=> b!7630952 (= res!3056014 (not (nullable!8911 (reg!20709 (regOne!41272 r!14126)))))))

(assert (=> b!7630952 (=> (not res!3056014) (not e!4536701))))

(declare-fun b!7630953 () Bool)

(assert (=> b!7630953 (= e!4536701 call!700546)))

(declare-fun b!7630954 () Bool)

(assert (=> b!7630954 (= e!4536699 call!700545)))

(declare-fun b!7630955 () Bool)

(assert (=> b!7630955 (= e!4536703 e!4536702)))

(assert (=> b!7630955 (= c!1405891 (is-Union!20380 (regOne!41272 r!14126)))))

(declare-fun b!7630956 () Bool)

(assert (=> b!7630956 (= e!4536698 call!700545)))

(declare-fun d!2324166 () Bool)

(declare-fun res!3056013 () Bool)

(assert (=> d!2324166 (=> res!3056013 e!4536700)))

(assert (=> d!2324166 (= res!3056013 (is-ElementMatch!20380 (regOne!41272 r!14126)))))

(assert (=> d!2324166 (= (validRegex!10798 (regOne!41272 r!14126)) e!4536700)))

(declare-fun b!7630950 () Bool)

(declare-fun res!3056015 () Bool)

(assert (=> b!7630950 (=> res!3056015 e!4536704)))

(assert (=> b!7630950 (= res!3056015 (not (is-Concat!29225 (regOne!41272 r!14126))))))

(assert (=> b!7630950 (= e!4536702 e!4536704)))

(assert (= (and d!2324166 (not res!3056013)) b!7630948))

(assert (= (and b!7630948 c!1405892) b!7630952))

(assert (= (and b!7630948 (not c!1405892)) b!7630955))

(assert (= (and b!7630952 res!3056014) b!7630953))

(assert (= (and b!7630955 c!1405891) b!7630949))

(assert (= (and b!7630955 (not c!1405891)) b!7630950))

(assert (= (and b!7630949 res!3056012) b!7630956))

(assert (= (and b!7630950 (not res!3056015)) b!7630951))

(assert (= (and b!7630951 res!3056011) b!7630954))

(assert (= (or b!7630949 b!7630951) bm!700539))

(assert (= (or b!7630956 b!7630954) bm!700541))

(assert (= (or b!7630953 bm!700541) bm!700540))

(declare-fun m!8157982 () Bool)

(assert (=> bm!700539 m!8157982))

(declare-fun m!8157984 () Bool)

(assert (=> bm!700540 m!8157984))

(declare-fun m!8157986 () Bool)

(assert (=> b!7630952 m!8157986))

(assert (=> b!7630760 d!2324166))

(declare-fun b!7630957 () Bool)

(declare-fun e!4536707 () Bool)

(declare-fun e!4536710 () Bool)

(assert (=> b!7630957 (= e!4536707 e!4536710)))

(declare-fun c!1405894 () Bool)

(assert (=> b!7630957 (= c!1405894 (is-Star!20380 (regTwo!41272 r!14126)))))

(declare-fun bm!700542 () Bool)

(declare-fun call!700547 () Bool)

(declare-fun c!1405893 () Bool)

(assert (=> bm!700542 (= call!700547 (validRegex!10798 (ite c!1405893 (regOne!41273 (regTwo!41272 r!14126)) (regOne!41272 (regTwo!41272 r!14126)))))))

(declare-fun b!7630958 () Bool)

(declare-fun res!3056017 () Bool)

(declare-fun e!4536705 () Bool)

(assert (=> b!7630958 (=> (not res!3056017) (not e!4536705))))

(assert (=> b!7630958 (= res!3056017 call!700547)))

(declare-fun e!4536709 () Bool)

(assert (=> b!7630958 (= e!4536709 e!4536705)))

(declare-fun call!700549 () Bool)

(declare-fun bm!700543 () Bool)

(assert (=> bm!700543 (= call!700549 (validRegex!10798 (ite c!1405894 (reg!20709 (regTwo!41272 r!14126)) (ite c!1405893 (regTwo!41273 (regTwo!41272 r!14126)) (regTwo!41272 (regTwo!41272 r!14126))))))))

(declare-fun b!7630960 () Bool)

(declare-fun e!4536711 () Bool)

(declare-fun e!4536706 () Bool)

(assert (=> b!7630960 (= e!4536711 e!4536706)))

(declare-fun res!3056016 () Bool)

(assert (=> b!7630960 (=> (not res!3056016) (not e!4536706))))

(assert (=> b!7630960 (= res!3056016 call!700547)))

(declare-fun bm!700544 () Bool)

(declare-fun call!700548 () Bool)

(assert (=> bm!700544 (= call!700548 call!700549)))

(declare-fun b!7630961 () Bool)

(declare-fun e!4536708 () Bool)

(assert (=> b!7630961 (= e!4536710 e!4536708)))

(declare-fun res!3056019 () Bool)

(assert (=> b!7630961 (= res!3056019 (not (nullable!8911 (reg!20709 (regTwo!41272 r!14126)))))))

(assert (=> b!7630961 (=> (not res!3056019) (not e!4536708))))

(declare-fun b!7630962 () Bool)

(assert (=> b!7630962 (= e!4536708 call!700549)))

(declare-fun b!7630963 () Bool)

(assert (=> b!7630963 (= e!4536706 call!700548)))

(declare-fun b!7630964 () Bool)

(assert (=> b!7630964 (= e!4536710 e!4536709)))

(assert (=> b!7630964 (= c!1405893 (is-Union!20380 (regTwo!41272 r!14126)))))

(declare-fun b!7630965 () Bool)

(assert (=> b!7630965 (= e!4536705 call!700548)))

(declare-fun d!2324168 () Bool)

(declare-fun res!3056018 () Bool)

(assert (=> d!2324168 (=> res!3056018 e!4536707)))

(assert (=> d!2324168 (= res!3056018 (is-ElementMatch!20380 (regTwo!41272 r!14126)))))

(assert (=> d!2324168 (= (validRegex!10798 (regTwo!41272 r!14126)) e!4536707)))

(declare-fun b!7630959 () Bool)

(declare-fun res!3056020 () Bool)

(assert (=> b!7630959 (=> res!3056020 e!4536711)))

(assert (=> b!7630959 (= res!3056020 (not (is-Concat!29225 (regTwo!41272 r!14126))))))

(assert (=> b!7630959 (= e!4536709 e!4536711)))

(assert (= (and d!2324168 (not res!3056018)) b!7630957))

(assert (= (and b!7630957 c!1405894) b!7630961))

(assert (= (and b!7630957 (not c!1405894)) b!7630964))

(assert (= (and b!7630961 res!3056019) b!7630962))

(assert (= (and b!7630964 c!1405893) b!7630958))

(assert (= (and b!7630964 (not c!1405893)) b!7630959))

(assert (= (and b!7630958 res!3056017) b!7630965))

(assert (= (and b!7630959 (not res!3056020)) b!7630960))

(assert (= (and b!7630960 res!3056016) b!7630963))

(assert (= (or b!7630958 b!7630960) bm!700542))

(assert (= (or b!7630965 b!7630963) bm!700544))

(assert (= (or b!7630962 bm!700544) bm!700543))

(declare-fun m!8157988 () Bool)

(assert (=> bm!700542 m!8157988))

(declare-fun m!8157990 () Bool)

(assert (=> bm!700543 m!8157990))

(declare-fun m!8157992 () Bool)

(assert (=> b!7630961 m!8157992))

(assert (=> b!7630754 d!2324168))

(declare-fun b!7630977 () Bool)

(declare-fun e!4536714 () Bool)

(declare-fun tp!2227809 () Bool)

(declare-fun tp!2227812 () Bool)

(assert (=> b!7630977 (= e!4536714 (and tp!2227809 tp!2227812))))

(assert (=> b!7630758 (= tp!2227775 e!4536714)))

(declare-fun b!7630976 () Bool)

(assert (=> b!7630976 (= e!4536714 tp_is_empty!51115)))

(declare-fun b!7630979 () Bool)

(declare-fun tp!2227808 () Bool)

(declare-fun tp!2227811 () Bool)

(assert (=> b!7630979 (= e!4536714 (and tp!2227808 tp!2227811))))

(declare-fun b!7630978 () Bool)

(declare-fun tp!2227810 () Bool)

(assert (=> b!7630978 (= e!4536714 tp!2227810)))

(assert (= (and b!7630758 (is-ElementMatch!20380 (regOne!41273 r!14126))) b!7630976))

(assert (= (and b!7630758 (is-Concat!29225 (regOne!41273 r!14126))) b!7630977))

(assert (= (and b!7630758 (is-Star!20380 (regOne!41273 r!14126))) b!7630978))

(assert (= (and b!7630758 (is-Union!20380 (regOne!41273 r!14126))) b!7630979))

(declare-fun b!7630981 () Bool)

(declare-fun e!4536715 () Bool)

(declare-fun tp!2227814 () Bool)

(declare-fun tp!2227817 () Bool)

(assert (=> b!7630981 (= e!4536715 (and tp!2227814 tp!2227817))))

(assert (=> b!7630758 (= tp!2227779 e!4536715)))

(declare-fun b!7630980 () Bool)

(assert (=> b!7630980 (= e!4536715 tp_is_empty!51115)))

(declare-fun b!7630983 () Bool)

(declare-fun tp!2227813 () Bool)

(declare-fun tp!2227816 () Bool)

(assert (=> b!7630983 (= e!4536715 (and tp!2227813 tp!2227816))))

(declare-fun b!7630982 () Bool)

(declare-fun tp!2227815 () Bool)

(assert (=> b!7630982 (= e!4536715 tp!2227815)))

(assert (= (and b!7630758 (is-ElementMatch!20380 (regTwo!41273 r!14126))) b!7630980))

(assert (= (and b!7630758 (is-Concat!29225 (regTwo!41273 r!14126))) b!7630981))

(assert (= (and b!7630758 (is-Star!20380 (regTwo!41273 r!14126))) b!7630982))

(assert (= (and b!7630758 (is-Union!20380 (regTwo!41273 r!14126))) b!7630983))

(declare-fun b!7630985 () Bool)

(declare-fun e!4536716 () Bool)

(declare-fun tp!2227819 () Bool)

(declare-fun tp!2227822 () Bool)

(assert (=> b!7630985 (= e!4536716 (and tp!2227819 tp!2227822))))

(assert (=> b!7630757 (= tp!2227774 e!4536716)))

(declare-fun b!7630984 () Bool)

(assert (=> b!7630984 (= e!4536716 tp_is_empty!51115)))

(declare-fun b!7630987 () Bool)

(declare-fun tp!2227818 () Bool)

(declare-fun tp!2227821 () Bool)

(assert (=> b!7630987 (= e!4536716 (and tp!2227818 tp!2227821))))

(declare-fun b!7630986 () Bool)

(declare-fun tp!2227820 () Bool)

(assert (=> b!7630986 (= e!4536716 tp!2227820)))

(assert (= (and b!7630757 (is-ElementMatch!20380 (reg!20709 r!14126))) b!7630984))

(assert (= (and b!7630757 (is-Concat!29225 (reg!20709 r!14126))) b!7630985))

(assert (= (and b!7630757 (is-Star!20380 (reg!20709 r!14126))) b!7630986))

(assert (= (and b!7630757 (is-Union!20380 (reg!20709 r!14126))) b!7630987))

(declare-fun b!7630989 () Bool)

(declare-fun e!4536717 () Bool)

(declare-fun tp!2227824 () Bool)

(declare-fun tp!2227827 () Bool)

(assert (=> b!7630989 (= e!4536717 (and tp!2227824 tp!2227827))))

(assert (=> b!7630761 (= tp!2227776 e!4536717)))

(declare-fun b!7630988 () Bool)

(assert (=> b!7630988 (= e!4536717 tp_is_empty!51115)))

(declare-fun b!7630991 () Bool)

(declare-fun tp!2227823 () Bool)

(declare-fun tp!2227826 () Bool)

(assert (=> b!7630991 (= e!4536717 (and tp!2227823 tp!2227826))))

(declare-fun b!7630990 () Bool)

(declare-fun tp!2227825 () Bool)

(assert (=> b!7630990 (= e!4536717 tp!2227825)))

(assert (= (and b!7630761 (is-ElementMatch!20380 (regOne!41272 r!14126))) b!7630988))

(assert (= (and b!7630761 (is-Concat!29225 (regOne!41272 r!14126))) b!7630989))

(assert (= (and b!7630761 (is-Star!20380 (regOne!41272 r!14126))) b!7630990))

(assert (= (and b!7630761 (is-Union!20380 (regOne!41272 r!14126))) b!7630991))

(declare-fun b!7630993 () Bool)

(declare-fun e!4536718 () Bool)

(declare-fun tp!2227829 () Bool)

(declare-fun tp!2227832 () Bool)

(assert (=> b!7630993 (= e!4536718 (and tp!2227829 tp!2227832))))

(assert (=> b!7630761 (= tp!2227778 e!4536718)))

(declare-fun b!7630992 () Bool)

(assert (=> b!7630992 (= e!4536718 tp_is_empty!51115)))

(declare-fun b!7630995 () Bool)

(declare-fun tp!2227828 () Bool)

(declare-fun tp!2227831 () Bool)

(assert (=> b!7630995 (= e!4536718 (and tp!2227828 tp!2227831))))

(declare-fun b!7630994 () Bool)

(declare-fun tp!2227830 () Bool)

(assert (=> b!7630994 (= e!4536718 tp!2227830)))

(assert (= (and b!7630761 (is-ElementMatch!20380 (regTwo!41272 r!14126))) b!7630992))

(assert (= (and b!7630761 (is-Concat!29225 (regTwo!41272 r!14126))) b!7630993))

(assert (= (and b!7630761 (is-Star!20380 (regTwo!41272 r!14126))) b!7630994))

(assert (= (and b!7630761 (is-Union!20380 (regTwo!41272 r!14126))) b!7630995))

(declare-fun b!7631000 () Bool)

(declare-fun e!4536721 () Bool)

(declare-fun tp!2227835 () Bool)

(assert (=> b!7631000 (= e!4536721 (and tp_is_empty!51115 tp!2227835))))

(assert (=> b!7630759 (= tp!2227777 e!4536721)))

(assert (= (and b!7630759 (is-Cons!73107 (t!387966 s!9605))) b!7631000))

(push 1)

(assert (not d!2324162))

(assert (not b!7630989))

(assert (not b!7630961))

(assert (not b!7630982))

(assert (not b!7630987))

(assert (not b!7631000))

(assert (not b!7630942))

(assert (not b!7630824))

(assert (not b!7630893))

(assert (not b!7630986))

(assert (not b!7630935))

(assert (not b!7630937))

(assert (not b!7630940))

(assert (not d!2324154))

(assert (not b!7630898))

(assert (not b!7630890))

(assert (not d!2324156))

(assert (not b!7630995))

(assert tp_is_empty!51115)

(assert (not b!7630991))

(assert (not bm!700535))

(assert (not bm!700539))

(assert (not b!7630952))

(assert (not b!7630977))

(assert (not b!7630936))

(assert (not b!7630981))

(assert (not b!7630892))

(assert (not bm!700542))

(assert (not b!7630943))

(assert (not bm!700540))

(assert (not bm!700543))

(assert (not bm!700530))

(assert (not b!7630983))

(assert (not b!7630990))

(assert (not b!7630985))

(assert (not b!7630895))

(assert (not b!7630979))

(assert (not bm!700531))

(assert (not d!2324164))

(assert (not b!7630993))

(assert (not b!7630994))

(assert (not d!2324158))

(assert (not b!7630896))

(assert (not b!7630978))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

