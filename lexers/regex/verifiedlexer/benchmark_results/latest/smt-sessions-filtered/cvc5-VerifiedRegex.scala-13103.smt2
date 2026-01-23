; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!716770 () Bool)

(assert start!716770)

(declare-fun b!7338000 () Bool)

(declare-fun e!4394032 () Bool)

(declare-fun tp!2083340 () Bool)

(assert (=> b!7338000 (= e!4394032 tp!2083340)))

(declare-fun b!7338001 () Bool)

(declare-fun e!4394039 () Bool)

(declare-fun e!4394034 () Bool)

(assert (=> b!7338001 (= e!4394039 e!4394034)))

(declare-fun res!2964809 () Bool)

(assert (=> b!7338001 (=> (not res!2964809) (not e!4394034))))

(declare-datatypes ((C!38462 0))(
  ( (C!38463 (val!29591 Int)) )
))
(declare-datatypes ((Regex!19094 0))(
  ( (ElementMatch!19094 (c!1362910 C!38462)) (Concat!27939 (regOne!38700 Regex!19094) (regTwo!38700 Regex!19094)) (EmptyExpr!19094) (Star!19094 (reg!19423 Regex!19094)) (EmptyLang!19094) (Union!19094 (regOne!38701 Regex!19094) (regTwo!38701 Regex!19094)) )
))
(declare-datatypes ((List!71590 0))(
  ( (Nil!71466) (Cons!71466 (h!77914 Regex!19094) (t!385985 List!71590)) )
))
(declare-datatypes ((Context!16068 0))(
  ( (Context!16069 (exprs!8534 List!71590)) )
))
(declare-fun ct2!378 () Context!16068)

(declare-fun cWitness!61 () Context!16068)

(declare-fun lt!2609516 () (Set Context!16068))

(declare-fun ++!16912 (List!71590 List!71590) List!71590)

(assert (=> b!7338001 (= res!2964809 (set.member (Context!16069 (++!16912 (exprs!8534 cWitness!61) (exprs!8534 ct2!378))) lt!2609516))))

(declare-fun lambda!455352 () Int)

(declare-datatypes ((Unit!165141 0))(
  ( (Unit!165142) )
))
(declare-fun lt!2609520 () Unit!165141)

(declare-fun lemmaConcatPreservesForall!1769 (List!71590 List!71590 Int) Unit!165141)

(assert (=> b!7338001 (= lt!2609520 (lemmaConcatPreservesForall!1769 (exprs!8534 cWitness!61) (exprs!8534 ct2!378) lambda!455352))))

(declare-fun res!2964811 () Bool)

(declare-fun e!4394030 () Bool)

(assert (=> start!716770 (=> (not res!2964811) (not e!4394030))))

(declare-fun r1!2370 () Regex!19094)

(declare-fun validRegex!9690 (Regex!19094) Bool)

(assert (=> start!716770 (= res!2964811 (validRegex!9690 r1!2370))))

(assert (=> start!716770 e!4394030))

(declare-fun tp_is_empty!48433 () Bool)

(assert (=> start!716770 tp_is_empty!48433))

(declare-fun e!4394031 () Bool)

(declare-fun inv!91076 (Context!16068) Bool)

(assert (=> start!716770 (and (inv!91076 cWitness!61) e!4394031)))

(declare-fun ct1!282 () Context!16068)

(assert (=> start!716770 (and (inv!91076 ct1!282) e!4394032)))

(declare-fun e!4394038 () Bool)

(assert (=> start!716770 e!4394038))

(declare-fun e!4394035 () Bool)

(assert (=> start!716770 (and (inv!91076 ct2!378) e!4394035)))

(declare-fun b!7338002 () Bool)

(declare-fun e!4394033 () Bool)

(assert (=> b!7338002 (= e!4394034 e!4394033)))

(declare-fun res!2964813 () Bool)

(assert (=> b!7338002 (=> (not res!2964813) (not e!4394033))))

(declare-fun forall!17928 (List!71590 Int) Bool)

(assert (=> b!7338002 (= res!2964813 (forall!17928 (exprs!8534 cWitness!61) lambda!455352))))

(declare-fun b!7338003 () Bool)

(assert (=> b!7338003 (= e!4394033 (not (forall!17928 (exprs!8534 ct2!378) lambda!455352)))))

(declare-fun b!7338004 () Bool)

(declare-fun tp!2083337 () Bool)

(declare-fun tp!2083341 () Bool)

(assert (=> b!7338004 (= e!4394038 (and tp!2083337 tp!2083341))))

(declare-fun b!7338005 () Bool)

(declare-fun tp!2083342 () Bool)

(assert (=> b!7338005 (= e!4394031 tp!2083342)))

(declare-fun b!7338006 () Bool)

(declare-fun e!4394036 () Bool)

(assert (=> b!7338006 (= e!4394030 e!4394036)))

(declare-fun res!2964815 () Bool)

(assert (=> b!7338006 (=> (not res!2964815) (not e!4394036))))

(declare-fun lt!2609514 () (Set Context!16068))

(assert (=> b!7338006 (= res!2964815 (set.member cWitness!61 lt!2609514))))

(declare-fun c!10362 () C!38462)

(declare-fun derivationStepZipperDown!2920 (Regex!19094 Context!16068 C!38462) (Set Context!16068))

(assert (=> b!7338006 (= lt!2609514 (derivationStepZipperDown!2920 r1!2370 ct1!282 c!10362))))

(declare-fun b!7338007 () Bool)

(declare-fun tp!2083339 () Bool)

(assert (=> b!7338007 (= e!4394035 tp!2083339)))

(declare-fun b!7338008 () Bool)

(declare-fun e!4394037 () Bool)

(assert (=> b!7338008 (= e!4394036 e!4394037)))

(declare-fun res!2964814 () Bool)

(assert (=> b!7338008 (=> (not res!2964814) (not e!4394037))))

(assert (=> b!7338008 (= res!2964814 (and (is-ElementMatch!19094 r1!2370) (= c!10362 (c!1362910 r1!2370))))))

(declare-fun lt!2609518 () Context!16068)

(assert (=> b!7338008 (= lt!2609516 (derivationStepZipperDown!2920 r1!2370 lt!2609518 c!10362))))

(assert (=> b!7338008 (= lt!2609518 (Context!16069 (++!16912 (exprs!8534 ct1!282) (exprs!8534 ct2!378))))))

(declare-fun lt!2609519 () Unit!165141)

(assert (=> b!7338008 (= lt!2609519 (lemmaConcatPreservesForall!1769 (exprs!8534 ct1!282) (exprs!8534 ct2!378) lambda!455352))))

(declare-fun b!7338009 () Bool)

(declare-fun tp!2083336 () Bool)

(assert (=> b!7338009 (= e!4394038 tp!2083336)))

(declare-fun b!7338010 () Bool)

(declare-fun e!4394029 () Bool)

(assert (=> b!7338010 (= e!4394029 e!4394039)))

(declare-fun res!2964812 () Bool)

(assert (=> b!7338010 (=> (not res!2964812) (not e!4394039))))

(assert (=> b!7338010 (= res!2964812 (= lt!2609516 (set.insert lt!2609518 (as set.empty (Set Context!16068)))))))

(declare-fun lt!2609517 () Unit!165141)

(assert (=> b!7338010 (= lt!2609517 (lemmaConcatPreservesForall!1769 (exprs!8534 ct1!282) (exprs!8534 ct2!378) lambda!455352))))

(declare-fun b!7338011 () Bool)

(declare-fun tp!2083338 () Bool)

(declare-fun tp!2083343 () Bool)

(assert (=> b!7338011 (= e!4394038 (and tp!2083338 tp!2083343))))

(declare-fun b!7338012 () Bool)

(assert (=> b!7338012 (= e!4394038 tp_is_empty!48433)))

(declare-fun b!7338013 () Bool)

(assert (=> b!7338013 (= e!4394037 e!4394029)))

(declare-fun res!2964810 () Bool)

(assert (=> b!7338013 (=> (not res!2964810) (not e!4394029))))

(declare-fun lt!2609515 () (Set Context!16068))

(assert (=> b!7338013 (= res!2964810 (and (= lt!2609514 lt!2609515) (set.member cWitness!61 lt!2609515) (= cWitness!61 ct1!282)))))

(assert (=> b!7338013 (= lt!2609515 (set.insert ct1!282 (as set.empty (Set Context!16068))))))

(assert (= (and start!716770 res!2964811) b!7338006))

(assert (= (and b!7338006 res!2964815) b!7338008))

(assert (= (and b!7338008 res!2964814) b!7338013))

(assert (= (and b!7338013 res!2964810) b!7338010))

(assert (= (and b!7338010 res!2964812) b!7338001))

(assert (= (and b!7338001 res!2964809) b!7338002))

(assert (= (and b!7338002 res!2964813) b!7338003))

(assert (= start!716770 b!7338005))

(assert (= start!716770 b!7338000))

(assert (= (and start!716770 (is-ElementMatch!19094 r1!2370)) b!7338012))

(assert (= (and start!716770 (is-Concat!27939 r1!2370)) b!7338004))

(assert (= (and start!716770 (is-Star!19094 r1!2370)) b!7338009))

(assert (= (and start!716770 (is-Union!19094 r1!2370)) b!7338011))

(assert (= start!716770 b!7338007))

(declare-fun m!8002878 () Bool)

(assert (=> b!7338002 m!8002878))

(declare-fun m!8002880 () Bool)

(assert (=> b!7338003 m!8002880))

(declare-fun m!8002882 () Bool)

(assert (=> b!7338001 m!8002882))

(declare-fun m!8002884 () Bool)

(assert (=> b!7338001 m!8002884))

(declare-fun m!8002886 () Bool)

(assert (=> b!7338001 m!8002886))

(declare-fun m!8002888 () Bool)

(assert (=> b!7338006 m!8002888))

(declare-fun m!8002890 () Bool)

(assert (=> b!7338006 m!8002890))

(declare-fun m!8002892 () Bool)

(assert (=> b!7338013 m!8002892))

(declare-fun m!8002894 () Bool)

(assert (=> b!7338013 m!8002894))

(declare-fun m!8002896 () Bool)

(assert (=> b!7338010 m!8002896))

(declare-fun m!8002898 () Bool)

(assert (=> b!7338010 m!8002898))

(declare-fun m!8002900 () Bool)

(assert (=> b!7338008 m!8002900))

(declare-fun m!8002902 () Bool)

(assert (=> b!7338008 m!8002902))

(assert (=> b!7338008 m!8002898))

(declare-fun m!8002904 () Bool)

(assert (=> start!716770 m!8002904))

(declare-fun m!8002906 () Bool)

(assert (=> start!716770 m!8002906))

(declare-fun m!8002908 () Bool)

(assert (=> start!716770 m!8002908))

(declare-fun m!8002910 () Bool)

(assert (=> start!716770 m!8002910))

(push 1)

(assert (not b!7338011))

(assert (not b!7338006))

(assert (not b!7338005))

(assert (not b!7338008))

(assert (not b!7338010))

(assert (not b!7338000))

(assert (not b!7338001))

(assert (not b!7338003))

(assert (not b!7338007))

(assert (not start!716770))

(assert (not b!7338002))

(assert tp_is_empty!48433)

(assert (not b!7338004))

(assert (not b!7338009))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!2278338 () Bool)

(declare-fun res!2964851 () Bool)

(declare-fun e!4394092 () Bool)

(assert (=> d!2278338 (=> res!2964851 e!4394092)))

(assert (=> d!2278338 (= res!2964851 (is-ElementMatch!19094 r1!2370))))

(assert (=> d!2278338 (= (validRegex!9690 r1!2370) e!4394092)))

(declare-fun b!7338078 () Bool)

(declare-fun res!2964852 () Bool)

(declare-fun e!4394096 () Bool)

(assert (=> b!7338078 (=> (not res!2964852) (not e!4394096))))

(declare-fun call!669366 () Bool)

(assert (=> b!7338078 (= res!2964852 call!669366)))

(declare-fun e!4394094 () Bool)

(assert (=> b!7338078 (= e!4394094 e!4394096)))

(declare-fun b!7338079 () Bool)

(declare-fun e!4394091 () Bool)

(assert (=> b!7338079 (= e!4394091 e!4394094)))

(declare-fun c!1362917 () Bool)

(assert (=> b!7338079 (= c!1362917 (is-Union!19094 r1!2370))))

(declare-fun b!7338080 () Bool)

(declare-fun e!4394093 () Bool)

(assert (=> b!7338080 (= e!4394093 call!669366)))

(declare-fun b!7338081 () Bool)

(declare-fun res!2964855 () Bool)

(declare-fun e!4394095 () Bool)

(assert (=> b!7338081 (=> res!2964855 e!4394095)))

(assert (=> b!7338081 (= res!2964855 (not (is-Concat!27939 r1!2370)))))

(assert (=> b!7338081 (= e!4394094 e!4394095)))

(declare-fun b!7338082 () Bool)

(assert (=> b!7338082 (= e!4394092 e!4394091)))

(declare-fun c!1362916 () Bool)

(assert (=> b!7338082 (= c!1362916 (is-Star!19094 r1!2370))))

(declare-fun call!669368 () Bool)

(declare-fun bm!669361 () Bool)

(assert (=> bm!669361 (= call!669368 (validRegex!9690 (ite c!1362916 (reg!19423 r1!2370) (ite c!1362917 (regTwo!38701 r1!2370) (regOne!38700 r1!2370)))))))

(declare-fun b!7338083 () Bool)

(declare-fun e!4394097 () Bool)

(assert (=> b!7338083 (= e!4394091 e!4394097)))

(declare-fun res!2964854 () Bool)

(declare-fun nullable!8191 (Regex!19094) Bool)

(assert (=> b!7338083 (= res!2964854 (not (nullable!8191 (reg!19423 r1!2370))))))

(assert (=> b!7338083 (=> (not res!2964854) (not e!4394097))))

(declare-fun b!7338084 () Bool)

(assert (=> b!7338084 (= e!4394097 call!669368)))

(declare-fun b!7338085 () Bool)

(assert (=> b!7338085 (= e!4394095 e!4394093)))

(declare-fun res!2964853 () Bool)

(assert (=> b!7338085 (=> (not res!2964853) (not e!4394093))))

(declare-fun call!669367 () Bool)

(assert (=> b!7338085 (= res!2964853 call!669367)))

(declare-fun bm!669362 () Bool)

(assert (=> bm!669362 (= call!669366 (validRegex!9690 (ite c!1362917 (regOne!38701 r1!2370) (regTwo!38700 r1!2370))))))

(declare-fun bm!669363 () Bool)

(assert (=> bm!669363 (= call!669367 call!669368)))

(declare-fun b!7338086 () Bool)

(assert (=> b!7338086 (= e!4394096 call!669367)))

(assert (= (and d!2278338 (not res!2964851)) b!7338082))

(assert (= (and b!7338082 c!1362916) b!7338083))

(assert (= (and b!7338082 (not c!1362916)) b!7338079))

(assert (= (and b!7338083 res!2964854) b!7338084))

(assert (= (and b!7338079 c!1362917) b!7338078))

(assert (= (and b!7338079 (not c!1362917)) b!7338081))

(assert (= (and b!7338078 res!2964852) b!7338086))

(assert (= (and b!7338081 (not res!2964855)) b!7338085))

(assert (= (and b!7338085 res!2964853) b!7338080))

(assert (= (or b!7338078 b!7338080) bm!669362))

(assert (= (or b!7338086 b!7338085) bm!669363))

(assert (= (or b!7338084 bm!669363) bm!669361))

(declare-fun m!8002946 () Bool)

(assert (=> bm!669361 m!8002946))

(declare-fun m!8002948 () Bool)

(assert (=> b!7338083 m!8002948))

(declare-fun m!8002950 () Bool)

(assert (=> bm!669362 m!8002950))

(assert (=> start!716770 d!2278338))

(declare-fun bs!1918180 () Bool)

(declare-fun d!2278342 () Bool)

(assert (= bs!1918180 (and d!2278342 b!7338008)))

(declare-fun lambda!455364 () Int)

(assert (=> bs!1918180 (= lambda!455364 lambda!455352)))

(assert (=> d!2278342 (= (inv!91076 cWitness!61) (forall!17928 (exprs!8534 cWitness!61) lambda!455364))))

(declare-fun bs!1918181 () Bool)

(assert (= bs!1918181 d!2278342))

(declare-fun m!8002956 () Bool)

(assert (=> bs!1918181 m!8002956))

(assert (=> start!716770 d!2278342))

(declare-fun bs!1918182 () Bool)

(declare-fun d!2278346 () Bool)

(assert (= bs!1918182 (and d!2278346 b!7338008)))

(declare-fun lambda!455365 () Int)

(assert (=> bs!1918182 (= lambda!455365 lambda!455352)))

(declare-fun bs!1918183 () Bool)

(assert (= bs!1918183 (and d!2278346 d!2278342)))

(assert (=> bs!1918183 (= lambda!455365 lambda!455364)))

(assert (=> d!2278346 (= (inv!91076 ct1!282) (forall!17928 (exprs!8534 ct1!282) lambda!455365))))

(declare-fun bs!1918184 () Bool)

(assert (= bs!1918184 d!2278346))

(declare-fun m!8002958 () Bool)

(assert (=> bs!1918184 m!8002958))

(assert (=> start!716770 d!2278346))

(declare-fun bs!1918185 () Bool)

(declare-fun d!2278348 () Bool)

(assert (= bs!1918185 (and d!2278348 b!7338008)))

(declare-fun lambda!455366 () Int)

(assert (=> bs!1918185 (= lambda!455366 lambda!455352)))

(declare-fun bs!1918186 () Bool)

(assert (= bs!1918186 (and d!2278348 d!2278342)))

(assert (=> bs!1918186 (= lambda!455366 lambda!455364)))

(declare-fun bs!1918187 () Bool)

(assert (= bs!1918187 (and d!2278348 d!2278346)))

(assert (=> bs!1918187 (= lambda!455366 lambda!455365)))

(assert (=> d!2278348 (= (inv!91076 ct2!378) (forall!17928 (exprs!8534 ct2!378) lambda!455366))))

(declare-fun bs!1918188 () Bool)

(assert (= bs!1918188 d!2278348))

(declare-fun m!8002960 () Bool)

(assert (=> bs!1918188 m!8002960))

(assert (=> start!716770 d!2278348))

(declare-fun d!2278350 () Bool)

(assert (=> d!2278350 (forall!17928 (++!16912 (exprs!8534 ct1!282) (exprs!8534 ct2!378)) lambda!455352)))

(declare-fun lt!2609544 () Unit!165141)

(declare-fun choose!57075 (List!71590 List!71590 Int) Unit!165141)

(assert (=> d!2278350 (= lt!2609544 (choose!57075 (exprs!8534 ct1!282) (exprs!8534 ct2!378) lambda!455352))))

(assert (=> d!2278350 (forall!17928 (exprs!8534 ct1!282) lambda!455352)))

(assert (=> d!2278350 (= (lemmaConcatPreservesForall!1769 (exprs!8534 ct1!282) (exprs!8534 ct2!378) lambda!455352) lt!2609544)))

(declare-fun bs!1918189 () Bool)

(assert (= bs!1918189 d!2278350))

(assert (=> bs!1918189 m!8002902))

(assert (=> bs!1918189 m!8002902))

(declare-fun m!8002962 () Bool)

(assert (=> bs!1918189 m!8002962))

(declare-fun m!8002964 () Bool)

(assert (=> bs!1918189 m!8002964))

(declare-fun m!8002966 () Bool)

(assert (=> bs!1918189 m!8002966))

(assert (=> b!7338010 d!2278350))

(declare-fun b!7338106 () Bool)

(declare-fun e!4394109 () List!71590)

(assert (=> b!7338106 (= e!4394109 (Cons!71466 (h!77914 (exprs!8534 cWitness!61)) (++!16912 (t!385985 (exprs!8534 cWitness!61)) (exprs!8534 ct2!378))))))

(declare-fun d!2278352 () Bool)

(declare-fun e!4394108 () Bool)

(assert (=> d!2278352 e!4394108))

(declare-fun res!2964866 () Bool)

(assert (=> d!2278352 (=> (not res!2964866) (not e!4394108))))

(declare-fun lt!2609549 () List!71590)

(declare-fun content!15013 (List!71590) (Set Regex!19094))

(assert (=> d!2278352 (= res!2964866 (= (content!15013 lt!2609549) (set.union (content!15013 (exprs!8534 cWitness!61)) (content!15013 (exprs!8534 ct2!378)))))))

(assert (=> d!2278352 (= lt!2609549 e!4394109)))

(declare-fun c!1362922 () Bool)

(assert (=> d!2278352 (= c!1362922 (is-Nil!71466 (exprs!8534 cWitness!61)))))

(assert (=> d!2278352 (= (++!16912 (exprs!8534 cWitness!61) (exprs!8534 ct2!378)) lt!2609549)))

(declare-fun b!7338105 () Bool)

(assert (=> b!7338105 (= e!4394109 (exprs!8534 ct2!378))))

(declare-fun b!7338108 () Bool)

(assert (=> b!7338108 (= e!4394108 (or (not (= (exprs!8534 ct2!378) Nil!71466)) (= lt!2609549 (exprs!8534 cWitness!61))))))

(declare-fun b!7338107 () Bool)

(declare-fun res!2964867 () Bool)

(assert (=> b!7338107 (=> (not res!2964867) (not e!4394108))))

(declare-fun size!41992 (List!71590) Int)

(assert (=> b!7338107 (= res!2964867 (= (size!41992 lt!2609549) (+ (size!41992 (exprs!8534 cWitness!61)) (size!41992 (exprs!8534 ct2!378)))))))

(assert (= (and d!2278352 c!1362922) b!7338105))

(assert (= (and d!2278352 (not c!1362922)) b!7338106))

(assert (= (and d!2278352 res!2964866) b!7338107))

(assert (= (and b!7338107 res!2964867) b!7338108))

(declare-fun m!8002968 () Bool)

(assert (=> b!7338106 m!8002968))

(declare-fun m!8002970 () Bool)

(assert (=> d!2278352 m!8002970))

(declare-fun m!8002972 () Bool)

(assert (=> d!2278352 m!8002972))

(declare-fun m!8002974 () Bool)

(assert (=> d!2278352 m!8002974))

(declare-fun m!8002976 () Bool)

(assert (=> b!7338107 m!8002976))

(declare-fun m!8002978 () Bool)

(assert (=> b!7338107 m!8002978))

(declare-fun m!8002980 () Bool)

(assert (=> b!7338107 m!8002980))

(assert (=> b!7338001 d!2278352))

(declare-fun d!2278354 () Bool)

(assert (=> d!2278354 (forall!17928 (++!16912 (exprs!8534 cWitness!61) (exprs!8534 ct2!378)) lambda!455352)))

(declare-fun lt!2609550 () Unit!165141)

(assert (=> d!2278354 (= lt!2609550 (choose!57075 (exprs!8534 cWitness!61) (exprs!8534 ct2!378) lambda!455352))))

(assert (=> d!2278354 (forall!17928 (exprs!8534 cWitness!61) lambda!455352)))

(assert (=> d!2278354 (= (lemmaConcatPreservesForall!1769 (exprs!8534 cWitness!61) (exprs!8534 ct2!378) lambda!455352) lt!2609550)))

(declare-fun bs!1918190 () Bool)

(assert (= bs!1918190 d!2278354))

(assert (=> bs!1918190 m!8002882))

(assert (=> bs!1918190 m!8002882))

(declare-fun m!8002982 () Bool)

(assert (=> bs!1918190 m!8002982))

(declare-fun m!8002984 () Bool)

(assert (=> bs!1918190 m!8002984))

(assert (=> bs!1918190 m!8002878))

(assert (=> b!7338001 d!2278354))

(declare-fun b!7338135 () Bool)

(declare-fun e!4394125 () Bool)

(assert (=> b!7338135 (= e!4394125 (nullable!8191 (regOne!38700 r1!2370)))))

(declare-fun bm!669376 () Bool)

(declare-fun call!669382 () (Set Context!16068))

(declare-fun call!669385 () (Set Context!16068))

(assert (=> bm!669376 (= call!669382 call!669385)))

(declare-fun bm!669377 () Bool)

(declare-fun call!669386 () (Set Context!16068))

(declare-fun call!669381 () List!71590)

(declare-fun c!1362937 () Bool)

(assert (=> bm!669377 (= call!669386 (derivationStepZipperDown!2920 (ite c!1362937 (regTwo!38701 r1!2370) (regOne!38700 r1!2370)) (ite c!1362937 ct1!282 (Context!16069 call!669381)) c!10362))))

(declare-fun b!7338136 () Bool)

(declare-fun e!4394126 () (Set Context!16068))

(assert (=> b!7338136 (= e!4394126 (set.insert ct1!282 (as set.empty (Set Context!16068))))))

(declare-fun b!7338137 () Bool)

(declare-fun c!1362934 () Bool)

(assert (=> b!7338137 (= c!1362934 e!4394125)))

(declare-fun res!2964872 () Bool)

(assert (=> b!7338137 (=> (not res!2964872) (not e!4394125))))

(assert (=> b!7338137 (= res!2964872 (is-Concat!27939 r1!2370))))

(declare-fun e!4394124 () (Set Context!16068))

(declare-fun e!4394127 () (Set Context!16068))

(assert (=> b!7338137 (= e!4394124 e!4394127)))

(declare-fun b!7338138 () Bool)

(declare-fun c!1362935 () Bool)

(assert (=> b!7338138 (= c!1362935 (is-Star!19094 r1!2370))))

(declare-fun e!4394128 () (Set Context!16068))

(declare-fun e!4394129 () (Set Context!16068))

(assert (=> b!7338138 (= e!4394128 e!4394129)))

(declare-fun bm!669378 () Bool)

(declare-fun call!669383 () (Set Context!16068))

(assert (=> bm!669378 (= call!669383 call!669382)))

(declare-fun b!7338139 () Bool)

(assert (=> b!7338139 (= e!4394128 call!669383)))

(declare-fun b!7338140 () Bool)

(assert (=> b!7338140 (= e!4394127 (set.union call!669386 call!669382))))

(declare-fun b!7338141 () Bool)

(assert (=> b!7338141 (= e!4394124 (set.union call!669385 call!669386))))

(declare-fun b!7338142 () Bool)

(assert (=> b!7338142 (= e!4394129 (as set.empty (Set Context!16068)))))

(declare-fun b!7338143 () Bool)

(assert (=> b!7338143 (= e!4394126 e!4394124)))

(assert (=> b!7338143 (= c!1362937 (is-Union!19094 r1!2370))))

(declare-fun b!7338144 () Bool)

(assert (=> b!7338144 (= e!4394129 call!669383)))

(declare-fun call!669384 () List!71590)

(declare-fun c!1362936 () Bool)

(declare-fun bm!669379 () Bool)

(assert (=> bm!669379 (= call!669385 (derivationStepZipperDown!2920 (ite c!1362937 (regOne!38701 r1!2370) (ite c!1362934 (regTwo!38700 r1!2370) (ite c!1362936 (regOne!38700 r1!2370) (reg!19423 r1!2370)))) (ite (or c!1362937 c!1362934) ct1!282 (Context!16069 call!669384)) c!10362))))

(declare-fun bm!669380 () Bool)

(declare-fun $colon$colon!3098 (List!71590 Regex!19094) List!71590)

(assert (=> bm!669380 (= call!669381 ($colon$colon!3098 (exprs!8534 ct1!282) (ite (or c!1362934 c!1362936) (regTwo!38700 r1!2370) r1!2370)))))

(declare-fun d!2278356 () Bool)

(declare-fun c!1362938 () Bool)

(assert (=> d!2278356 (= c!1362938 (and (is-ElementMatch!19094 r1!2370) (= (c!1362910 r1!2370) c!10362)))))

(assert (=> d!2278356 (= (derivationStepZipperDown!2920 r1!2370 ct1!282 c!10362) e!4394126)))

(declare-fun b!7338145 () Bool)

(assert (=> b!7338145 (= e!4394127 e!4394128)))

(assert (=> b!7338145 (= c!1362936 (is-Concat!27939 r1!2370))))

(declare-fun bm!669381 () Bool)

(assert (=> bm!669381 (= call!669384 call!669381)))

(assert (= (and d!2278356 c!1362938) b!7338136))

(assert (= (and d!2278356 (not c!1362938)) b!7338143))

(assert (= (and b!7338143 c!1362937) b!7338141))

(assert (= (and b!7338143 (not c!1362937)) b!7338137))

(assert (= (and b!7338137 res!2964872) b!7338135))

(assert (= (and b!7338137 c!1362934) b!7338140))

(assert (= (and b!7338137 (not c!1362934)) b!7338145))

(assert (= (and b!7338145 c!1362936) b!7338139))

(assert (= (and b!7338145 (not c!1362936)) b!7338138))

(assert (= (and b!7338138 c!1362935) b!7338144))

(assert (= (and b!7338138 (not c!1362935)) b!7338142))

(assert (= (or b!7338139 b!7338144) bm!669381))

(assert (= (or b!7338139 b!7338144) bm!669378))

(assert (= (or b!7338140 bm!669378) bm!669376))

(assert (= (or b!7338140 bm!669381) bm!669380))

(assert (= (or b!7338141 b!7338140) bm!669377))

(assert (= (or b!7338141 bm!669376) bm!669379))

(declare-fun m!8003004 () Bool)

(assert (=> bm!669377 m!8003004))

(declare-fun m!8003006 () Bool)

(assert (=> bm!669379 m!8003006))

(declare-fun m!8003008 () Bool)

(assert (=> bm!669380 m!8003008))

(declare-fun m!8003010 () Bool)

(assert (=> b!7338135 m!8003010))

(assert (=> b!7338136 m!8002894))

(assert (=> b!7338006 d!2278356))

(declare-fun d!2278362 () Bool)

(declare-fun res!2964877 () Bool)

(declare-fun e!4394134 () Bool)

(assert (=> d!2278362 (=> res!2964877 e!4394134)))

(assert (=> d!2278362 (= res!2964877 (is-Nil!71466 (exprs!8534 cWitness!61)))))

(assert (=> d!2278362 (= (forall!17928 (exprs!8534 cWitness!61) lambda!455352) e!4394134)))

(declare-fun b!7338150 () Bool)

(declare-fun e!4394135 () Bool)

(assert (=> b!7338150 (= e!4394134 e!4394135)))

(declare-fun res!2964878 () Bool)

(assert (=> b!7338150 (=> (not res!2964878) (not e!4394135))))

(declare-fun dynLambda!29441 (Int Regex!19094) Bool)

(assert (=> b!7338150 (= res!2964878 (dynLambda!29441 lambda!455352 (h!77914 (exprs!8534 cWitness!61))))))

(declare-fun b!7338151 () Bool)

(assert (=> b!7338151 (= e!4394135 (forall!17928 (t!385985 (exprs!8534 cWitness!61)) lambda!455352))))

(assert (= (and d!2278362 (not res!2964877)) b!7338150))

(assert (= (and b!7338150 res!2964878) b!7338151))

(declare-fun b_lambda!283797 () Bool)

(assert (=> (not b_lambda!283797) (not b!7338150)))

(declare-fun m!8003012 () Bool)

(assert (=> b!7338150 m!8003012))

(declare-fun m!8003014 () Bool)

(assert (=> b!7338151 m!8003014))

(assert (=> b!7338002 d!2278362))

(declare-fun d!2278364 () Bool)

(declare-fun res!2964879 () Bool)

(declare-fun e!4394136 () Bool)

(assert (=> d!2278364 (=> res!2964879 e!4394136)))

(assert (=> d!2278364 (= res!2964879 (is-Nil!71466 (exprs!8534 ct2!378)))))

(assert (=> d!2278364 (= (forall!17928 (exprs!8534 ct2!378) lambda!455352) e!4394136)))

(declare-fun b!7338152 () Bool)

(declare-fun e!4394137 () Bool)

(assert (=> b!7338152 (= e!4394136 e!4394137)))

(declare-fun res!2964880 () Bool)

(assert (=> b!7338152 (=> (not res!2964880) (not e!4394137))))

(assert (=> b!7338152 (= res!2964880 (dynLambda!29441 lambda!455352 (h!77914 (exprs!8534 ct2!378))))))

(declare-fun b!7338153 () Bool)

(assert (=> b!7338153 (= e!4394137 (forall!17928 (t!385985 (exprs!8534 ct2!378)) lambda!455352))))

(assert (= (and d!2278364 (not res!2964879)) b!7338152))

(assert (= (and b!7338152 res!2964880) b!7338153))

(declare-fun b_lambda!283799 () Bool)

(assert (=> (not b_lambda!283799) (not b!7338152)))

(declare-fun m!8003016 () Bool)

(assert (=> b!7338152 m!8003016))

(declare-fun m!8003018 () Bool)

(assert (=> b!7338153 m!8003018))

(assert (=> b!7338003 d!2278364))

(declare-fun b!7338154 () Bool)

(declare-fun e!4394139 () Bool)

(assert (=> b!7338154 (= e!4394139 (nullable!8191 (regOne!38700 r1!2370)))))

(declare-fun bm!669382 () Bool)

(declare-fun call!669388 () (Set Context!16068))

(declare-fun call!669391 () (Set Context!16068))

(assert (=> bm!669382 (= call!669388 call!669391)))

(declare-fun call!669387 () List!71590)

(declare-fun bm!669383 () Bool)

(declare-fun call!669392 () (Set Context!16068))

(declare-fun c!1362942 () Bool)

(assert (=> bm!669383 (= call!669392 (derivationStepZipperDown!2920 (ite c!1362942 (regTwo!38701 r1!2370) (regOne!38700 r1!2370)) (ite c!1362942 lt!2609518 (Context!16069 call!669387)) c!10362))))

(declare-fun b!7338155 () Bool)

(declare-fun e!4394140 () (Set Context!16068))

(assert (=> b!7338155 (= e!4394140 (set.insert lt!2609518 (as set.empty (Set Context!16068))))))

(declare-fun b!7338156 () Bool)

(declare-fun c!1362939 () Bool)

(assert (=> b!7338156 (= c!1362939 e!4394139)))

(declare-fun res!2964881 () Bool)

(assert (=> b!7338156 (=> (not res!2964881) (not e!4394139))))

(assert (=> b!7338156 (= res!2964881 (is-Concat!27939 r1!2370))))

(declare-fun e!4394138 () (Set Context!16068))

(declare-fun e!4394141 () (Set Context!16068))

(assert (=> b!7338156 (= e!4394138 e!4394141)))

(declare-fun b!7338157 () Bool)

(declare-fun c!1362940 () Bool)

(assert (=> b!7338157 (= c!1362940 (is-Star!19094 r1!2370))))

(declare-fun e!4394142 () (Set Context!16068))

(declare-fun e!4394143 () (Set Context!16068))

(assert (=> b!7338157 (= e!4394142 e!4394143)))

(declare-fun bm!669384 () Bool)

(declare-fun call!669389 () (Set Context!16068))

(assert (=> bm!669384 (= call!669389 call!669388)))

(declare-fun b!7338158 () Bool)

(assert (=> b!7338158 (= e!4394142 call!669389)))

(declare-fun b!7338159 () Bool)

(assert (=> b!7338159 (= e!4394141 (set.union call!669392 call!669388))))

(declare-fun b!7338160 () Bool)

(assert (=> b!7338160 (= e!4394138 (set.union call!669391 call!669392))))

(declare-fun b!7338161 () Bool)

(assert (=> b!7338161 (= e!4394143 (as set.empty (Set Context!16068)))))

(declare-fun b!7338162 () Bool)

(assert (=> b!7338162 (= e!4394140 e!4394138)))

(assert (=> b!7338162 (= c!1362942 (is-Union!19094 r1!2370))))

(declare-fun b!7338163 () Bool)

(assert (=> b!7338163 (= e!4394143 call!669389)))

(declare-fun call!669390 () List!71590)

(declare-fun bm!669385 () Bool)

(declare-fun c!1362941 () Bool)

(assert (=> bm!669385 (= call!669391 (derivationStepZipperDown!2920 (ite c!1362942 (regOne!38701 r1!2370) (ite c!1362939 (regTwo!38700 r1!2370) (ite c!1362941 (regOne!38700 r1!2370) (reg!19423 r1!2370)))) (ite (or c!1362942 c!1362939) lt!2609518 (Context!16069 call!669390)) c!10362))))

(declare-fun bm!669386 () Bool)

(assert (=> bm!669386 (= call!669387 ($colon$colon!3098 (exprs!8534 lt!2609518) (ite (or c!1362939 c!1362941) (regTwo!38700 r1!2370) r1!2370)))))

(declare-fun d!2278366 () Bool)

(declare-fun c!1362943 () Bool)

(assert (=> d!2278366 (= c!1362943 (and (is-ElementMatch!19094 r1!2370) (= (c!1362910 r1!2370) c!10362)))))

(assert (=> d!2278366 (= (derivationStepZipperDown!2920 r1!2370 lt!2609518 c!10362) e!4394140)))

(declare-fun b!7338164 () Bool)

(assert (=> b!7338164 (= e!4394141 e!4394142)))

(assert (=> b!7338164 (= c!1362941 (is-Concat!27939 r1!2370))))

(declare-fun bm!669387 () Bool)

(assert (=> bm!669387 (= call!669390 call!669387)))

(assert (= (and d!2278366 c!1362943) b!7338155))

(assert (= (and d!2278366 (not c!1362943)) b!7338162))

(assert (= (and b!7338162 c!1362942) b!7338160))

(assert (= (and b!7338162 (not c!1362942)) b!7338156))

(assert (= (and b!7338156 res!2964881) b!7338154))

(assert (= (and b!7338156 c!1362939) b!7338159))

(assert (= (and b!7338156 (not c!1362939)) b!7338164))

(assert (= (and b!7338164 c!1362941) b!7338158))

(assert (= (and b!7338164 (not c!1362941)) b!7338157))

(assert (= (and b!7338157 c!1362940) b!7338163))

(assert (= (and b!7338157 (not c!1362940)) b!7338161))

(assert (= (or b!7338158 b!7338163) bm!669387))

(assert (= (or b!7338158 b!7338163) bm!669384))

(assert (= (or b!7338159 bm!669384) bm!669382))

(assert (= (or b!7338159 bm!669387) bm!669386))

(assert (= (or b!7338160 b!7338159) bm!669383))

(assert (= (or b!7338160 bm!669382) bm!669385))

(declare-fun m!8003020 () Bool)

(assert (=> bm!669383 m!8003020))

(declare-fun m!8003022 () Bool)

(assert (=> bm!669385 m!8003022))

(declare-fun m!8003024 () Bool)

(assert (=> bm!669386 m!8003024))

(assert (=> b!7338154 m!8003010))

(assert (=> b!7338155 m!8002896))

(assert (=> b!7338008 d!2278366))

(declare-fun b!7338166 () Bool)

(declare-fun e!4394145 () List!71590)

(assert (=> b!7338166 (= e!4394145 (Cons!71466 (h!77914 (exprs!8534 ct1!282)) (++!16912 (t!385985 (exprs!8534 ct1!282)) (exprs!8534 ct2!378))))))

(declare-fun d!2278368 () Bool)

(declare-fun e!4394144 () Bool)

(assert (=> d!2278368 e!4394144))

(declare-fun res!2964882 () Bool)

(assert (=> d!2278368 (=> (not res!2964882) (not e!4394144))))

(declare-fun lt!2609555 () List!71590)

(assert (=> d!2278368 (= res!2964882 (= (content!15013 lt!2609555) (set.union (content!15013 (exprs!8534 ct1!282)) (content!15013 (exprs!8534 ct2!378)))))))

(assert (=> d!2278368 (= lt!2609555 e!4394145)))

(declare-fun c!1362944 () Bool)

(assert (=> d!2278368 (= c!1362944 (is-Nil!71466 (exprs!8534 ct1!282)))))

(assert (=> d!2278368 (= (++!16912 (exprs!8534 ct1!282) (exprs!8534 ct2!378)) lt!2609555)))

(declare-fun b!7338165 () Bool)

(assert (=> b!7338165 (= e!4394145 (exprs!8534 ct2!378))))

(declare-fun b!7338168 () Bool)

(assert (=> b!7338168 (= e!4394144 (or (not (= (exprs!8534 ct2!378) Nil!71466)) (= lt!2609555 (exprs!8534 ct1!282))))))

(declare-fun b!7338167 () Bool)

(declare-fun res!2964883 () Bool)

(assert (=> b!7338167 (=> (not res!2964883) (not e!4394144))))

(assert (=> b!7338167 (= res!2964883 (= (size!41992 lt!2609555) (+ (size!41992 (exprs!8534 ct1!282)) (size!41992 (exprs!8534 ct2!378)))))))

(assert (= (and d!2278368 c!1362944) b!7338165))

(assert (= (and d!2278368 (not c!1362944)) b!7338166))

(assert (= (and d!2278368 res!2964882) b!7338167))

(assert (= (and b!7338167 res!2964883) b!7338168))

(declare-fun m!8003026 () Bool)

(assert (=> b!7338166 m!8003026))

(declare-fun m!8003028 () Bool)

(assert (=> d!2278368 m!8003028))

(declare-fun m!8003030 () Bool)

(assert (=> d!2278368 m!8003030))

(assert (=> d!2278368 m!8002974))

(declare-fun m!8003032 () Bool)

(assert (=> b!7338167 m!8003032))

(declare-fun m!8003034 () Bool)

(assert (=> b!7338167 m!8003034))

(assert (=> b!7338167 m!8002980))

(assert (=> b!7338008 d!2278368))

(assert (=> b!7338008 d!2278350))

(declare-fun b!7338179 () Bool)

(declare-fun e!4394148 () Bool)

(assert (=> b!7338179 (= e!4394148 tp_is_empty!48433)))

(assert (=> b!7338004 (= tp!2083337 e!4394148)))

(declare-fun b!7338181 () Bool)

(declare-fun tp!2083382 () Bool)

(assert (=> b!7338181 (= e!4394148 tp!2083382)))

(declare-fun b!7338180 () Bool)

(declare-fun tp!2083381 () Bool)

(declare-fun tp!2083378 () Bool)

(assert (=> b!7338180 (= e!4394148 (and tp!2083381 tp!2083378))))

(declare-fun b!7338182 () Bool)

(declare-fun tp!2083380 () Bool)

(declare-fun tp!2083379 () Bool)

(assert (=> b!7338182 (= e!4394148 (and tp!2083380 tp!2083379))))

(assert (= (and b!7338004 (is-ElementMatch!19094 (regOne!38700 r1!2370))) b!7338179))

(assert (= (and b!7338004 (is-Concat!27939 (regOne!38700 r1!2370))) b!7338180))

(assert (= (and b!7338004 (is-Star!19094 (regOne!38700 r1!2370))) b!7338181))

(assert (= (and b!7338004 (is-Union!19094 (regOne!38700 r1!2370))) b!7338182))

(declare-fun b!7338183 () Bool)

(declare-fun e!4394149 () Bool)

(assert (=> b!7338183 (= e!4394149 tp_is_empty!48433)))

(assert (=> b!7338004 (= tp!2083341 e!4394149)))

(declare-fun b!7338185 () Bool)

(declare-fun tp!2083387 () Bool)

(assert (=> b!7338185 (= e!4394149 tp!2083387)))

(declare-fun b!7338184 () Bool)

(declare-fun tp!2083386 () Bool)

(declare-fun tp!2083383 () Bool)

(assert (=> b!7338184 (= e!4394149 (and tp!2083386 tp!2083383))))

(declare-fun b!7338186 () Bool)

(declare-fun tp!2083385 () Bool)

(declare-fun tp!2083384 () Bool)

(assert (=> b!7338186 (= e!4394149 (and tp!2083385 tp!2083384))))

(assert (= (and b!7338004 (is-ElementMatch!19094 (regTwo!38700 r1!2370))) b!7338183))

(assert (= (and b!7338004 (is-Concat!27939 (regTwo!38700 r1!2370))) b!7338184))

(assert (= (and b!7338004 (is-Star!19094 (regTwo!38700 r1!2370))) b!7338185))

(assert (= (and b!7338004 (is-Union!19094 (regTwo!38700 r1!2370))) b!7338186))

(declare-fun b!7338191 () Bool)

(declare-fun e!4394152 () Bool)

(declare-fun tp!2083392 () Bool)

(declare-fun tp!2083393 () Bool)

(assert (=> b!7338191 (= e!4394152 (and tp!2083392 tp!2083393))))

(assert (=> b!7338005 (= tp!2083342 e!4394152)))

(assert (= (and b!7338005 (is-Cons!71466 (exprs!8534 cWitness!61))) b!7338191))

(declare-fun b!7338192 () Bool)

(declare-fun e!4394153 () Bool)

(assert (=> b!7338192 (= e!4394153 tp_is_empty!48433)))

(assert (=> b!7338011 (= tp!2083338 e!4394153)))

(declare-fun b!7338194 () Bool)

(declare-fun tp!2083398 () Bool)

(assert (=> b!7338194 (= e!4394153 tp!2083398)))

(declare-fun b!7338193 () Bool)

(declare-fun tp!2083397 () Bool)

(declare-fun tp!2083394 () Bool)

(assert (=> b!7338193 (= e!4394153 (and tp!2083397 tp!2083394))))

(declare-fun b!7338195 () Bool)

(declare-fun tp!2083396 () Bool)

(declare-fun tp!2083395 () Bool)

(assert (=> b!7338195 (= e!4394153 (and tp!2083396 tp!2083395))))

(assert (= (and b!7338011 (is-ElementMatch!19094 (regOne!38701 r1!2370))) b!7338192))

(assert (= (and b!7338011 (is-Concat!27939 (regOne!38701 r1!2370))) b!7338193))

(assert (= (and b!7338011 (is-Star!19094 (regOne!38701 r1!2370))) b!7338194))

(assert (= (and b!7338011 (is-Union!19094 (regOne!38701 r1!2370))) b!7338195))

(declare-fun b!7338196 () Bool)

(declare-fun e!4394154 () Bool)

(assert (=> b!7338196 (= e!4394154 tp_is_empty!48433)))

(assert (=> b!7338011 (= tp!2083343 e!4394154)))

(declare-fun b!7338198 () Bool)

(declare-fun tp!2083403 () Bool)

(assert (=> b!7338198 (= e!4394154 tp!2083403)))

(declare-fun b!7338197 () Bool)

(declare-fun tp!2083402 () Bool)

(declare-fun tp!2083399 () Bool)

(assert (=> b!7338197 (= e!4394154 (and tp!2083402 tp!2083399))))

(declare-fun b!7338199 () Bool)

(declare-fun tp!2083401 () Bool)

(declare-fun tp!2083400 () Bool)

(assert (=> b!7338199 (= e!4394154 (and tp!2083401 tp!2083400))))

(assert (= (and b!7338011 (is-ElementMatch!19094 (regTwo!38701 r1!2370))) b!7338196))

(assert (= (and b!7338011 (is-Concat!27939 (regTwo!38701 r1!2370))) b!7338197))

(assert (= (and b!7338011 (is-Star!19094 (regTwo!38701 r1!2370))) b!7338198))

(assert (= (and b!7338011 (is-Union!19094 (regTwo!38701 r1!2370))) b!7338199))

(declare-fun b!7338202 () Bool)

(declare-fun e!4394155 () Bool)

(declare-fun tp!2083404 () Bool)

(declare-fun tp!2083405 () Bool)

(assert (=> b!7338202 (= e!4394155 (and tp!2083404 tp!2083405))))

(assert (=> b!7338000 (= tp!2083340 e!4394155)))

(assert (= (and b!7338000 (is-Cons!71466 (exprs!8534 ct1!282))) b!7338202))

(declare-fun b!7338203 () Bool)

(declare-fun e!4394156 () Bool)

(declare-fun tp!2083406 () Bool)

(declare-fun tp!2083407 () Bool)

(assert (=> b!7338203 (= e!4394156 (and tp!2083406 tp!2083407))))

(assert (=> b!7338007 (= tp!2083339 e!4394156)))

(assert (= (and b!7338007 (is-Cons!71466 (exprs!8534 ct2!378))) b!7338203))

(declare-fun b!7338204 () Bool)

(declare-fun e!4394157 () Bool)

(assert (=> b!7338204 (= e!4394157 tp_is_empty!48433)))

(assert (=> b!7338009 (= tp!2083336 e!4394157)))

(declare-fun b!7338208 () Bool)

(declare-fun tp!2083412 () Bool)

(assert (=> b!7338208 (= e!4394157 tp!2083412)))

(declare-fun b!7338206 () Bool)

(declare-fun tp!2083411 () Bool)

(declare-fun tp!2083408 () Bool)

(assert (=> b!7338206 (= e!4394157 (and tp!2083411 tp!2083408))))

(declare-fun b!7338209 () Bool)

(declare-fun tp!2083410 () Bool)

(declare-fun tp!2083409 () Bool)

(assert (=> b!7338209 (= e!4394157 (and tp!2083410 tp!2083409))))

(assert (= (and b!7338009 (is-ElementMatch!19094 (reg!19423 r1!2370))) b!7338204))

(assert (= (and b!7338009 (is-Concat!27939 (reg!19423 r1!2370))) b!7338206))

(assert (= (and b!7338009 (is-Star!19094 (reg!19423 r1!2370))) b!7338208))

(assert (= (and b!7338009 (is-Union!19094 (reg!19423 r1!2370))) b!7338209))

(declare-fun b_lambda!283801 () Bool)

(assert (= b_lambda!283799 (or b!7338008 b_lambda!283801)))

(declare-fun bs!1918192 () Bool)

(declare-fun d!2278370 () Bool)

(assert (= bs!1918192 (and d!2278370 b!7338008)))

(assert (=> bs!1918192 (= (dynLambda!29441 lambda!455352 (h!77914 (exprs!8534 ct2!378))) (validRegex!9690 (h!77914 (exprs!8534 ct2!378))))))

(declare-fun m!8003036 () Bool)

(assert (=> bs!1918192 m!8003036))

(assert (=> b!7338152 d!2278370))

(declare-fun b_lambda!283803 () Bool)

(assert (= b_lambda!283797 (or b!7338008 b_lambda!283803)))

(declare-fun bs!1918193 () Bool)

(declare-fun d!2278372 () Bool)

(assert (= bs!1918193 (and d!2278372 b!7338008)))

(assert (=> bs!1918193 (= (dynLambda!29441 lambda!455352 (h!77914 (exprs!8534 cWitness!61))) (validRegex!9690 (h!77914 (exprs!8534 cWitness!61))))))

(declare-fun m!8003038 () Bool)

(assert (=> bs!1918193 m!8003038))

(assert (=> b!7338150 d!2278372))

(push 1)

(assert (not bs!1918192))

(assert (not bm!669362))

(assert (not b_lambda!283803))

(assert (not d!2278346))

(assert (not d!2278350))

(assert (not b!7338202))

(assert tp_is_empty!48433)

(assert (not d!2278354))

(assert (not bs!1918193))

(assert (not b!7338197))

(assert (not b!7338209))

(assert (not b!7338135))

(assert (not b!7338208))

(assert (not b!7338194))

(assert (not b!7338167))

(assert (not bm!669383))

(assert (not b!7338184))

(assert (not bm!669386))

(assert (not d!2278348))

(assert (not b!7338193))

(assert (not b!7338191))

(assert (not b!7338151))

(assert (not b!7338166))

(assert (not d!2278342))

(assert (not b!7338181))

(assert (not b!7338182))

(assert (not b!7338195))

(assert (not b!7338107))

(assert (not b_lambda!283801))

(assert (not bm!669379))

(assert (not d!2278352))

(assert (not b!7338199))

(assert (not b!7338154))

(assert (not b!7338186))

(assert (not b!7338083))

(assert (not d!2278368))

(assert (not b!7338198))

(assert (not b!7338106))

(assert (not b!7338180))

(assert (not bm!669361))

(assert (not b!7338185))

(assert (not bm!669377))

(assert (not b!7338203))

(assert (not b!7338206))

(assert (not bm!669385))

(assert (not b!7338153))

(assert (not bm!669380))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

