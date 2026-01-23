; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!715228 () Bool)

(assert start!715228)

(declare-fun b!7326864 () Bool)

(declare-fun res!2961373 () Bool)

(declare-fun e!4387160 () Bool)

(assert (=> b!7326864 (=> (not res!2961373) (not e!4387160))))

(declare-datatypes ((C!38278 0))(
  ( (C!38279 (val!29499 Int)) )
))
(declare-datatypes ((Regex!19002 0))(
  ( (ElementMatch!19002 (c!1360071 C!38278)) (Concat!27847 (regOne!38516 Regex!19002) (regTwo!38516 Regex!19002)) (EmptyExpr!19002) (Star!19002 (reg!19331 Regex!19002)) (EmptyLang!19002) (Union!19002 (regOne!38517 Regex!19002) (regTwo!38517 Regex!19002)) )
))
(declare-datatypes ((List!71498 0))(
  ( (Nil!71374) (Cons!71374 (h!77822 Regex!19002) (t!385883 List!71498)) )
))
(declare-fun lt!2606443 () List!71498)

(declare-fun isEmpty!40920 (List!71498) Bool)

(assert (=> b!7326864 (= res!2961373 (not (isEmpty!40920 lt!2606443)))))

(declare-fun b!7326866 () Bool)

(declare-fun res!2961371 () Bool)

(declare-fun e!4387159 () Bool)

(assert (=> b!7326866 (=> (not res!2961371) (not e!4387159))))

(declare-datatypes ((Context!15884 0))(
  ( (Context!15885 (exprs!8442 List!71498)) )
))
(declare-fun ct1!256 () Context!15884)

(assert (=> b!7326866 (= res!2961371 (not (isEmpty!40920 (exprs!8442 ct1!256))))))

(declare-fun b!7326867 () Bool)

(declare-fun e!4387163 () Bool)

(declare-fun tp!2080638 () Bool)

(assert (=> b!7326867 (= e!4387163 tp!2080638)))

(declare-fun b!7326868 () Bool)

(declare-fun e!4387161 () Bool)

(declare-fun tp!2080636 () Bool)

(assert (=> b!7326868 (= e!4387161 tp!2080636)))

(declare-fun b!7326869 () Bool)

(declare-fun e!4387162 () Bool)

(assert (=> b!7326869 (= e!4387162 e!4387159)))

(declare-fun res!2961376 () Bool)

(assert (=> b!7326869 (=> (not res!2961376) (not e!4387159))))

(assert (=> b!7326869 (= res!2961376 (is-Cons!71374 (exprs!8442 ct1!256)))))

(declare-fun ct2!352 () Context!15884)

(declare-fun ++!16826 (List!71498 List!71498) List!71498)

(assert (=> b!7326869 (= lt!2606443 (++!16826 (exprs!8442 ct1!256) (exprs!8442 ct2!352)))))

(declare-datatypes ((Unit!164969 0))(
  ( (Unit!164970) )
))
(declare-fun lt!2606446 () Unit!164969)

(declare-fun lambda!454177 () Int)

(declare-fun lemmaConcatPreservesForall!1683 (List!71498 List!71498 Int) Unit!164969)

(assert (=> b!7326869 (= lt!2606446 (lemmaConcatPreservesForall!1683 (exprs!8442 ct1!256) (exprs!8442 ct2!352) lambda!454177))))

(declare-fun b!7326870 () Bool)

(assert (=> b!7326870 (= e!4387159 e!4387160)))

(declare-fun res!2961372 () Bool)

(assert (=> b!7326870 (=> (not res!2961372) (not e!4387160))))

(declare-fun nullable!8106 (Regex!19002) Bool)

(assert (=> b!7326870 (= res!2961372 (not (nullable!8106 (h!77822 (exprs!8442 ct1!256)))))))

(declare-fun lt!2606444 () (Set Context!15884))

(declare-fun c!10305 () C!38278)

(declare-fun derivationStepZipperDown!2833 (Regex!19002 Context!15884 C!38278) (Set Context!15884))

(declare-fun tail!14691 (List!71498) List!71498)

(assert (=> b!7326870 (= lt!2606444 (derivationStepZipperDown!2833 (h!77822 (exprs!8442 ct1!256)) (Context!15885 (tail!14691 (exprs!8442 ct1!256))) c!10305))))

(declare-fun b!7326865 () Bool)

(declare-fun validRegex!9639 (Regex!19002) Bool)

(assert (=> b!7326865 (= e!4387160 (not (validRegex!9639 (h!77822 (exprs!8442 ct1!256)))))))

(declare-fun res!2961374 () Bool)

(assert (=> start!715228 (=> (not res!2961374) (not e!4387162))))

(declare-fun cWitness!35 () Context!15884)

(declare-fun lt!2606445 () (Set Context!15884))

(assert (=> start!715228 (= res!2961374 (set.member cWitness!35 lt!2606445))))

(declare-fun derivationStepZipperUp!2682 (Context!15884 C!38278) (Set Context!15884))

(assert (=> start!715228 (= lt!2606445 (derivationStepZipperUp!2682 ct1!256 c!10305))))

(assert (=> start!715228 e!4387162))

(declare-fun tp_is_empty!48249 () Bool)

(assert (=> start!715228 tp_is_empty!48249))

(declare-fun inv!90846 (Context!15884) Bool)

(assert (=> start!715228 (and (inv!90846 cWitness!35) e!4387161)))

(declare-fun e!4387158 () Bool)

(assert (=> start!715228 (and (inv!90846 ct1!256) e!4387158)))

(assert (=> start!715228 (and (inv!90846 ct2!352) e!4387163)))

(declare-fun b!7326871 () Bool)

(declare-fun res!2961375 () Bool)

(assert (=> b!7326871 (=> (not res!2961375) (not e!4387160))))

(assert (=> b!7326871 (= res!2961375 (and (= lt!2606445 lt!2606444) (set.member cWitness!35 lt!2606444)))))

(declare-fun b!7326872 () Bool)

(declare-fun tp!2080637 () Bool)

(assert (=> b!7326872 (= e!4387158 tp!2080637)))

(assert (= (and start!715228 res!2961374) b!7326869))

(assert (= (and b!7326869 res!2961376) b!7326866))

(assert (= (and b!7326866 res!2961371) b!7326870))

(assert (= (and b!7326870 res!2961372) b!7326871))

(assert (= (and b!7326871 res!2961375) b!7326864))

(assert (= (and b!7326864 res!2961373) b!7326865))

(assert (= start!715228 b!7326868))

(assert (= start!715228 b!7326872))

(assert (= start!715228 b!7326867))

(declare-fun m!7992804 () Bool)

(assert (=> b!7326869 m!7992804))

(declare-fun m!7992806 () Bool)

(assert (=> b!7326869 m!7992806))

(declare-fun m!7992808 () Bool)

(assert (=> b!7326870 m!7992808))

(declare-fun m!7992810 () Bool)

(assert (=> b!7326870 m!7992810))

(declare-fun m!7992812 () Bool)

(assert (=> b!7326870 m!7992812))

(declare-fun m!7992814 () Bool)

(assert (=> start!715228 m!7992814))

(declare-fun m!7992816 () Bool)

(assert (=> start!715228 m!7992816))

(declare-fun m!7992818 () Bool)

(assert (=> start!715228 m!7992818))

(declare-fun m!7992820 () Bool)

(assert (=> start!715228 m!7992820))

(declare-fun m!7992822 () Bool)

(assert (=> start!715228 m!7992822))

(declare-fun m!7992824 () Bool)

(assert (=> b!7326871 m!7992824))

(declare-fun m!7992826 () Bool)

(assert (=> b!7326865 m!7992826))

(declare-fun m!7992828 () Bool)

(assert (=> b!7326866 m!7992828))

(declare-fun m!7992830 () Bool)

(assert (=> b!7326864 m!7992830))

(push 1)

(assert tp_is_empty!48249)

(assert (not b!7326866))

(assert (not b!7326869))

(assert (not b!7326868))

(assert (not start!715228))

(assert (not b!7326865))

(assert (not b!7326864))

(assert (not b!7326870))

(assert (not b!7326872))

(assert (not b!7326867))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!2275304 () Bool)

(assert (=> d!2275304 (= (isEmpty!40920 (exprs!8442 ct1!256)) (is-Nil!71374 (exprs!8442 ct1!256)))))

(assert (=> b!7326866 d!2275304))

(declare-fun d!2275306 () Bool)

(assert (=> d!2275306 (= (isEmpty!40920 lt!2606443) (is-Nil!71374 lt!2606443))))

(assert (=> b!7326864 d!2275306))

(declare-fun d!2275308 () Bool)

(declare-fun nullableFct!3219 (Regex!19002) Bool)

(assert (=> d!2275308 (= (nullable!8106 (h!77822 (exprs!8442 ct1!256))) (nullableFct!3219 (h!77822 (exprs!8442 ct1!256))))))

(declare-fun bs!1916800 () Bool)

(assert (= bs!1916800 d!2275308))

(declare-fun m!7992860 () Bool)

(assert (=> bs!1916800 m!7992860))

(assert (=> b!7326870 d!2275308))

(declare-fun bm!666913 () Bool)

(declare-fun call!666923 () (Set Context!15884))

(declare-fun call!666922 () (Set Context!15884))

(assert (=> bm!666913 (= call!666923 call!666922)))

(declare-fun d!2275310 () Bool)

(declare-fun c!1360084 () Bool)

(assert (=> d!2275310 (= c!1360084 (and (is-ElementMatch!19002 (h!77822 (exprs!8442 ct1!256))) (= (c!1360071 (h!77822 (exprs!8442 ct1!256))) c!10305)))))

(declare-fun e!4387194 () (Set Context!15884))

(assert (=> d!2275310 (= (derivationStepZipperDown!2833 (h!77822 (exprs!8442 ct1!256)) (Context!15885 (tail!14691 (exprs!8442 ct1!256))) c!10305) e!4387194)))

(declare-fun b!7326922 () Bool)

(declare-fun e!4387195 () (Set Context!15884))

(assert (=> b!7326922 (= e!4387194 e!4387195)))

(declare-fun c!1360085 () Bool)

(assert (=> b!7326922 (= c!1360085 (is-Union!19002 (h!77822 (exprs!8442 ct1!256))))))

(declare-fun bm!666914 () Bool)

(declare-fun c!1360087 () Bool)

(declare-fun call!666919 () List!71498)

(declare-fun c!1360083 () Bool)

(assert (=> bm!666914 (= call!666922 (derivationStepZipperDown!2833 (ite c!1360085 (regTwo!38517 (h!77822 (exprs!8442 ct1!256))) (ite c!1360087 (regTwo!38516 (h!77822 (exprs!8442 ct1!256))) (ite c!1360083 (regOne!38516 (h!77822 (exprs!8442 ct1!256))) (reg!19331 (h!77822 (exprs!8442 ct1!256)))))) (ite (or c!1360085 c!1360087) (Context!15885 (tail!14691 (exprs!8442 ct1!256))) (Context!15885 call!666919)) c!10305))))

(declare-fun b!7326923 () Bool)

(declare-fun e!4387196 () (Set Context!15884))

(declare-fun call!666920 () (Set Context!15884))

(assert (=> b!7326923 (= e!4387196 call!666920)))

(declare-fun bm!666915 () Bool)

(declare-fun call!666921 () List!71498)

(declare-fun $colon$colon!3035 (List!71498 Regex!19002) List!71498)

(assert (=> bm!666915 (= call!666921 ($colon$colon!3035 (exprs!8442 (Context!15885 (tail!14691 (exprs!8442 ct1!256)))) (ite (or c!1360087 c!1360083) (regTwo!38516 (h!77822 (exprs!8442 ct1!256))) (h!77822 (exprs!8442 ct1!256)))))))

(declare-fun b!7326924 () Bool)

(declare-fun e!4387198 () (Set Context!15884))

(assert (=> b!7326924 (= e!4387198 call!666920)))

(declare-fun b!7326925 () Bool)

(declare-fun e!4387199 () Bool)

(assert (=> b!7326925 (= e!4387199 (nullable!8106 (regOne!38516 (h!77822 (exprs!8442 ct1!256)))))))

(declare-fun call!666918 () (Set Context!15884))

(declare-fun bm!666916 () Bool)

(assert (=> bm!666916 (= call!666918 (derivationStepZipperDown!2833 (ite c!1360085 (regOne!38517 (h!77822 (exprs!8442 ct1!256))) (regOne!38516 (h!77822 (exprs!8442 ct1!256)))) (ite c!1360085 (Context!15885 (tail!14691 (exprs!8442 ct1!256))) (Context!15885 call!666921)) c!10305))))

(declare-fun b!7326926 () Bool)

(assert (=> b!7326926 (= e!4387194 (set.insert (Context!15885 (tail!14691 (exprs!8442 ct1!256))) (as set.empty (Set Context!15884))))))

(declare-fun b!7326927 () Bool)

(declare-fun e!4387197 () (Set Context!15884))

(assert (=> b!7326927 (= e!4387197 e!4387198)))

(assert (=> b!7326927 (= c!1360083 (is-Concat!27847 (h!77822 (exprs!8442 ct1!256))))))

(declare-fun bm!666917 () Bool)

(assert (=> bm!666917 (= call!666919 call!666921)))

(declare-fun b!7326928 () Bool)

(assert (=> b!7326928 (= e!4387195 (set.union call!666918 call!666922))))

(declare-fun b!7326929 () Bool)

(declare-fun c!1360086 () Bool)

(assert (=> b!7326929 (= c!1360086 (is-Star!19002 (h!77822 (exprs!8442 ct1!256))))))

(assert (=> b!7326929 (= e!4387198 e!4387196)))

(declare-fun b!7326930 () Bool)

(assert (=> b!7326930 (= e!4387196 (as set.empty (Set Context!15884)))))

(declare-fun b!7326931 () Bool)

(assert (=> b!7326931 (= e!4387197 (set.union call!666918 call!666923))))

(declare-fun bm!666918 () Bool)

(assert (=> bm!666918 (= call!666920 call!666923)))

(declare-fun b!7326932 () Bool)

(assert (=> b!7326932 (= c!1360087 e!4387199)))

(declare-fun res!2961397 () Bool)

(assert (=> b!7326932 (=> (not res!2961397) (not e!4387199))))

(assert (=> b!7326932 (= res!2961397 (is-Concat!27847 (h!77822 (exprs!8442 ct1!256))))))

(assert (=> b!7326932 (= e!4387195 e!4387197)))

(assert (= (and d!2275310 c!1360084) b!7326926))

(assert (= (and d!2275310 (not c!1360084)) b!7326922))

(assert (= (and b!7326922 c!1360085) b!7326928))

(assert (= (and b!7326922 (not c!1360085)) b!7326932))

(assert (= (and b!7326932 res!2961397) b!7326925))

(assert (= (and b!7326932 c!1360087) b!7326931))

(assert (= (and b!7326932 (not c!1360087)) b!7326927))

(assert (= (and b!7326927 c!1360083) b!7326924))

(assert (= (and b!7326927 (not c!1360083)) b!7326929))

(assert (= (and b!7326929 c!1360086) b!7326923))

(assert (= (and b!7326929 (not c!1360086)) b!7326930))

(assert (= (or b!7326924 b!7326923) bm!666917))

(assert (= (or b!7326924 b!7326923) bm!666918))

(assert (= (or b!7326931 bm!666918) bm!666913))

(assert (= (or b!7326931 bm!666917) bm!666915))

(assert (= (or b!7326928 bm!666913) bm!666914))

(assert (= (or b!7326928 b!7326931) bm!666916))

(declare-fun m!7992862 () Bool)

(assert (=> bm!666914 m!7992862))

(declare-fun m!7992864 () Bool)

(assert (=> b!7326925 m!7992864))

(declare-fun m!7992866 () Bool)

(assert (=> b!7326926 m!7992866))

(declare-fun m!7992868 () Bool)

(assert (=> bm!666915 m!7992868))

(declare-fun m!7992870 () Bool)

(assert (=> bm!666916 m!7992870))

(assert (=> b!7326870 d!2275310))

(declare-fun d!2275314 () Bool)

(assert (=> d!2275314 (= (tail!14691 (exprs!8442 ct1!256)) (t!385883 (exprs!8442 ct1!256)))))

(assert (=> b!7326870 d!2275314))

(declare-fun b!7326959 () Bool)

(declare-fun e!4387219 () Bool)

(declare-fun call!666931 () Bool)

(assert (=> b!7326959 (= e!4387219 call!666931)))

(declare-fun b!7326960 () Bool)

(declare-fun e!4387224 () Bool)

(assert (=> b!7326960 (= e!4387224 e!4387219)))

(declare-fun res!2961416 () Bool)

(assert (=> b!7326960 (=> (not res!2961416) (not e!4387219))))

(declare-fun call!666932 () Bool)

(assert (=> b!7326960 (= res!2961416 call!666932)))

(declare-fun b!7326961 () Bool)

(declare-fun res!2961415 () Bool)

(declare-fun e!4387221 () Bool)

(assert (=> b!7326961 (=> (not res!2961415) (not e!4387221))))

(assert (=> b!7326961 (= res!2961415 call!666931)))

(declare-fun e!4387223 () Bool)

(assert (=> b!7326961 (= e!4387223 e!4387221)))

(declare-fun b!7326962 () Bool)

(declare-fun res!2961413 () Bool)

(assert (=> b!7326962 (=> res!2961413 e!4387224)))

(assert (=> b!7326962 (= res!2961413 (not (is-Concat!27847 (h!77822 (exprs!8442 ct1!256)))))))

(assert (=> b!7326962 (= e!4387223 e!4387224)))

(declare-fun b!7326963 () Bool)

(declare-fun e!4387220 () Bool)

(assert (=> b!7326963 (= e!4387220 e!4387223)))

(declare-fun c!1360094 () Bool)

(assert (=> b!7326963 (= c!1360094 (is-Union!19002 (h!77822 (exprs!8442 ct1!256))))))

(declare-fun b!7326964 () Bool)

(declare-fun e!4387218 () Bool)

(declare-fun call!666930 () Bool)

(assert (=> b!7326964 (= e!4387218 call!666930)))

(declare-fun b!7326965 () Bool)

(declare-fun e!4387222 () Bool)

(assert (=> b!7326965 (= e!4387222 e!4387220)))

(declare-fun c!1360095 () Bool)

(assert (=> b!7326965 (= c!1360095 (is-Star!19002 (h!77822 (exprs!8442 ct1!256))))))

(declare-fun bm!666925 () Bool)

(assert (=> bm!666925 (= call!666931 call!666930)))

(declare-fun bm!666926 () Bool)

(assert (=> bm!666926 (= call!666930 (validRegex!9639 (ite c!1360095 (reg!19331 (h!77822 (exprs!8442 ct1!256))) (ite c!1360094 (regOne!38517 (h!77822 (exprs!8442 ct1!256))) (regTwo!38516 (h!77822 (exprs!8442 ct1!256)))))))))

(declare-fun b!7326966 () Bool)

(assert (=> b!7326966 (= e!4387220 e!4387218)))

(declare-fun res!2961414 () Bool)

(assert (=> b!7326966 (= res!2961414 (not (nullable!8106 (reg!19331 (h!77822 (exprs!8442 ct1!256))))))))

(assert (=> b!7326966 (=> (not res!2961414) (not e!4387218))))

(declare-fun d!2275316 () Bool)

(declare-fun res!2961412 () Bool)

(assert (=> d!2275316 (=> res!2961412 e!4387222)))

(assert (=> d!2275316 (= res!2961412 (is-ElementMatch!19002 (h!77822 (exprs!8442 ct1!256))))))

(assert (=> d!2275316 (= (validRegex!9639 (h!77822 (exprs!8442 ct1!256))) e!4387222)))

(declare-fun bm!666927 () Bool)

(assert (=> bm!666927 (= call!666932 (validRegex!9639 (ite c!1360094 (regTwo!38517 (h!77822 (exprs!8442 ct1!256))) (regOne!38516 (h!77822 (exprs!8442 ct1!256))))))))

(declare-fun b!7326967 () Bool)

(assert (=> b!7326967 (= e!4387221 call!666932)))

(assert (= (and d!2275316 (not res!2961412)) b!7326965))

(assert (= (and b!7326965 c!1360095) b!7326966))

(assert (= (and b!7326965 (not c!1360095)) b!7326963))

(assert (= (and b!7326966 res!2961414) b!7326964))

(assert (= (and b!7326963 c!1360094) b!7326961))

(assert (= (and b!7326963 (not c!1360094)) b!7326962))

(assert (= (and b!7326961 res!2961415) b!7326967))

(assert (= (and b!7326962 (not res!2961413)) b!7326960))

(assert (= (and b!7326960 res!2961416) b!7326959))

(assert (= (or b!7326967 b!7326960) bm!666927))

(assert (= (or b!7326961 b!7326959) bm!666925))

(assert (= (or b!7326964 bm!666925) bm!666926))

(declare-fun m!7992872 () Bool)

(assert (=> bm!666926 m!7992872))

(declare-fun m!7992874 () Bool)

(assert (=> b!7326966 m!7992874))

(declare-fun m!7992876 () Bool)

(assert (=> bm!666927 m!7992876))

(assert (=> b!7326865 d!2275316))

(declare-fun b!7326982 () Bool)

(declare-fun e!4387235 () (Set Context!15884))

(declare-fun call!666935 () (Set Context!15884))

(assert (=> b!7326982 (= e!4387235 call!666935)))

(declare-fun b!7326983 () Bool)

(declare-fun e!4387234 () Bool)

(assert (=> b!7326983 (= e!4387234 (nullable!8106 (h!77822 (exprs!8442 ct1!256))))))

(declare-fun b!7326984 () Bool)

(declare-fun e!4387233 () (Set Context!15884))

(assert (=> b!7326984 (= e!4387233 (set.union call!666935 (derivationStepZipperUp!2682 (Context!15885 (t!385883 (exprs!8442 ct1!256))) c!10305)))))

(declare-fun b!7326985 () Bool)

(assert (=> b!7326985 (= e!4387233 e!4387235)))

(declare-fun c!1360101 () Bool)

(assert (=> b!7326985 (= c!1360101 (is-Cons!71374 (exprs!8442 ct1!256)))))

(declare-fun b!7326986 () Bool)

(assert (=> b!7326986 (= e!4387235 (as set.empty (Set Context!15884)))))

(declare-fun d!2275318 () Bool)

(declare-fun c!1360102 () Bool)

(assert (=> d!2275318 (= c!1360102 e!4387234)))

(declare-fun res!2961421 () Bool)

(assert (=> d!2275318 (=> (not res!2961421) (not e!4387234))))

(assert (=> d!2275318 (= res!2961421 (is-Cons!71374 (exprs!8442 ct1!256)))))

(assert (=> d!2275318 (= (derivationStepZipperUp!2682 ct1!256 c!10305) e!4387233)))

(declare-fun bm!666930 () Bool)

(assert (=> bm!666930 (= call!666935 (derivationStepZipperDown!2833 (h!77822 (exprs!8442 ct1!256)) (Context!15885 (t!385883 (exprs!8442 ct1!256))) c!10305))))

(assert (= (and d!2275318 res!2961421) b!7326983))

(assert (= (and d!2275318 c!1360102) b!7326984))

(assert (= (and d!2275318 (not c!1360102)) b!7326985))

(assert (= (and b!7326985 c!1360101) b!7326982))

(assert (= (and b!7326985 (not c!1360101)) b!7326986))

(assert (= (or b!7326984 b!7326982) bm!666930))

(assert (=> b!7326983 m!7992808))

(declare-fun m!7992892 () Bool)

(assert (=> b!7326984 m!7992892))

(declare-fun m!7992894 () Bool)

(assert (=> bm!666930 m!7992894))

(assert (=> start!715228 d!2275318))

(declare-fun bs!1916801 () Bool)

(declare-fun d!2275322 () Bool)

(assert (= bs!1916801 (and d!2275322 b!7326869)))

(declare-fun lambda!454183 () Int)

(assert (=> bs!1916801 (= lambda!454183 lambda!454177)))

(declare-fun forall!17853 (List!71498 Int) Bool)

(assert (=> d!2275322 (= (inv!90846 cWitness!35) (forall!17853 (exprs!8442 cWitness!35) lambda!454183))))

(declare-fun bs!1916802 () Bool)

(assert (= bs!1916802 d!2275322))

(declare-fun m!7992896 () Bool)

(assert (=> bs!1916802 m!7992896))

(assert (=> start!715228 d!2275322))

(declare-fun bs!1916803 () Bool)

(declare-fun d!2275324 () Bool)

(assert (= bs!1916803 (and d!2275324 b!7326869)))

(declare-fun lambda!454184 () Int)

(assert (=> bs!1916803 (= lambda!454184 lambda!454177)))

(declare-fun bs!1916804 () Bool)

(assert (= bs!1916804 (and d!2275324 d!2275322)))

(assert (=> bs!1916804 (= lambda!454184 lambda!454183)))

(assert (=> d!2275324 (= (inv!90846 ct1!256) (forall!17853 (exprs!8442 ct1!256) lambda!454184))))

(declare-fun bs!1916805 () Bool)

(assert (= bs!1916805 d!2275324))

(declare-fun m!7992898 () Bool)

(assert (=> bs!1916805 m!7992898))

(assert (=> start!715228 d!2275324))

(declare-fun bs!1916806 () Bool)

(declare-fun d!2275326 () Bool)

(assert (= bs!1916806 (and d!2275326 b!7326869)))

(declare-fun lambda!454185 () Int)

(assert (=> bs!1916806 (= lambda!454185 lambda!454177)))

(declare-fun bs!1916807 () Bool)

(assert (= bs!1916807 (and d!2275326 d!2275322)))

(assert (=> bs!1916807 (= lambda!454185 lambda!454183)))

(declare-fun bs!1916808 () Bool)

(assert (= bs!1916808 (and d!2275326 d!2275324)))

(assert (=> bs!1916808 (= lambda!454185 lambda!454184)))

(assert (=> d!2275326 (= (inv!90846 ct2!352) (forall!17853 (exprs!8442 ct2!352) lambda!454185))))

(declare-fun bs!1916809 () Bool)

(assert (= bs!1916809 d!2275326))

(declare-fun m!7992900 () Bool)

(assert (=> bs!1916809 m!7992900))

(assert (=> start!715228 d!2275326))

(declare-fun e!4387240 () Bool)

(declare-fun lt!2606467 () List!71498)

(declare-fun b!7326998 () Bool)

(assert (=> b!7326998 (= e!4387240 (or (not (= (exprs!8442 ct2!352) Nil!71374)) (= lt!2606467 (exprs!8442 ct1!256))))))

(declare-fun d!2275328 () Bool)

(assert (=> d!2275328 e!4387240))

(declare-fun res!2961426 () Bool)

(assert (=> d!2275328 (=> (not res!2961426) (not e!4387240))))

(declare-fun content!14945 (List!71498) (Set Regex!19002))

(assert (=> d!2275328 (= res!2961426 (= (content!14945 lt!2606467) (set.union (content!14945 (exprs!8442 ct1!256)) (content!14945 (exprs!8442 ct2!352)))))))

(declare-fun e!4387241 () List!71498)

(assert (=> d!2275328 (= lt!2606467 e!4387241)))

(declare-fun c!1360105 () Bool)

(assert (=> d!2275328 (= c!1360105 (is-Nil!71374 (exprs!8442 ct1!256)))))

(assert (=> d!2275328 (= (++!16826 (exprs!8442 ct1!256) (exprs!8442 ct2!352)) lt!2606467)))

(declare-fun b!7326997 () Bool)

(declare-fun res!2961427 () Bool)

(assert (=> b!7326997 (=> (not res!2961427) (not e!4387240))))

(declare-fun size!41922 (List!71498) Int)

(assert (=> b!7326997 (= res!2961427 (= (size!41922 lt!2606467) (+ (size!41922 (exprs!8442 ct1!256)) (size!41922 (exprs!8442 ct2!352)))))))

(declare-fun b!7326996 () Bool)

(assert (=> b!7326996 (= e!4387241 (Cons!71374 (h!77822 (exprs!8442 ct1!256)) (++!16826 (t!385883 (exprs!8442 ct1!256)) (exprs!8442 ct2!352))))))

(declare-fun b!7326995 () Bool)

(assert (=> b!7326995 (= e!4387241 (exprs!8442 ct2!352))))

(assert (= (and d!2275328 c!1360105) b!7326995))

(assert (= (and d!2275328 (not c!1360105)) b!7326996))

(assert (= (and d!2275328 res!2961426) b!7326997))

(assert (= (and b!7326997 res!2961427) b!7326998))

(declare-fun m!7992908 () Bool)

(assert (=> d!2275328 m!7992908))

(declare-fun m!7992910 () Bool)

(assert (=> d!2275328 m!7992910))

(declare-fun m!7992912 () Bool)

(assert (=> d!2275328 m!7992912))

(declare-fun m!7992914 () Bool)

(assert (=> b!7326997 m!7992914))

(declare-fun m!7992916 () Bool)

(assert (=> b!7326997 m!7992916))

(declare-fun m!7992918 () Bool)

(assert (=> b!7326997 m!7992918))

(declare-fun m!7992920 () Bool)

(assert (=> b!7326996 m!7992920))

(assert (=> b!7326869 d!2275328))

(declare-fun d!2275334 () Bool)

(assert (=> d!2275334 (forall!17853 (++!16826 (exprs!8442 ct1!256) (exprs!8442 ct2!352)) lambda!454177)))

(declare-fun lt!2606470 () Unit!164969)

(declare-fun choose!56982 (List!71498 List!71498 Int) Unit!164969)

(assert (=> d!2275334 (= lt!2606470 (choose!56982 (exprs!8442 ct1!256) (exprs!8442 ct2!352) lambda!454177))))

(assert (=> d!2275334 (forall!17853 (exprs!8442 ct1!256) lambda!454177)))

(assert (=> d!2275334 (= (lemmaConcatPreservesForall!1683 (exprs!8442 ct1!256) (exprs!8442 ct2!352) lambda!454177) lt!2606470)))

(declare-fun bs!1916811 () Bool)

(assert (= bs!1916811 d!2275334))

(assert (=> bs!1916811 m!7992804))

(assert (=> bs!1916811 m!7992804))

(declare-fun m!7992922 () Bool)

(assert (=> bs!1916811 m!7992922))

(declare-fun m!7992924 () Bool)

(assert (=> bs!1916811 m!7992924))

(declare-fun m!7992926 () Bool)

(assert (=> bs!1916811 m!7992926))

(assert (=> b!7326869 d!2275334))

(declare-fun b!7327021 () Bool)

(declare-fun e!4387258 () Bool)

(declare-fun tp!2080652 () Bool)

(declare-fun tp!2080653 () Bool)

(assert (=> b!7327021 (= e!4387258 (and tp!2080652 tp!2080653))))

(assert (=> b!7326868 (= tp!2080636 e!4387258)))

(assert (= (and b!7326868 (is-Cons!71374 (exprs!8442 cWitness!35))) b!7327021))

(declare-fun b!7327022 () Bool)

(declare-fun e!4387259 () Bool)

(declare-fun tp!2080654 () Bool)

(declare-fun tp!2080655 () Bool)

(assert (=> b!7327022 (= e!4387259 (and tp!2080654 tp!2080655))))

(assert (=> b!7326872 (= tp!2080637 e!4387259)))

(assert (= (and b!7326872 (is-Cons!71374 (exprs!8442 ct1!256))) b!7327022))

(declare-fun b!7327023 () Bool)

(declare-fun e!4387260 () Bool)

(declare-fun tp!2080656 () Bool)

(declare-fun tp!2080657 () Bool)

(assert (=> b!7327023 (= e!4387260 (and tp!2080656 tp!2080657))))

(assert (=> b!7326867 (= tp!2080638 e!4387260)))

(assert (= (and b!7326867 (is-Cons!71374 (exprs!8442 ct2!352))) b!7327023))

(push 1)

(assert (not d!2275328))

(assert tp_is_empty!48249)

(assert (not d!2275326))

(assert (not bm!666927))

(assert (not b!7326996))

(assert (not b!7327021))

(assert (not bm!666916))

(assert (not d!2275334))

(assert (not d!2275308))

(assert (not d!2275324))

(assert (not bm!666914))

(assert (not b!7326984))

(assert (not b!7326997))

(assert (not bm!666915))

(assert (not b!7326983))

(assert (not b!7326966))

(assert (not b!7327022))

(assert (not bm!666930))

(assert (not b!7327023))

(assert (not b!7326925))

(assert (not d!2275322))

(assert (not bm!666926))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!2275352 () Bool)

(declare-fun c!1360135 () Bool)

(assert (=> d!2275352 (= c!1360135 (is-Nil!71374 lt!2606467))))

(declare-fun e!4387302 () (Set Regex!19002))

(assert (=> d!2275352 (= (content!14945 lt!2606467) e!4387302)))

(declare-fun b!7327092 () Bool)

(assert (=> b!7327092 (= e!4387302 (as set.empty (Set Regex!19002)))))

(declare-fun b!7327093 () Bool)

(assert (=> b!7327093 (= e!4387302 (set.union (set.insert (h!77822 lt!2606467) (as set.empty (Set Regex!19002))) (content!14945 (t!385883 lt!2606467))))))

(assert (= (and d!2275352 c!1360135) b!7327092))

(assert (= (and d!2275352 (not c!1360135)) b!7327093))

(declare-fun m!7992956 () Bool)

(assert (=> b!7327093 m!7992956))

(declare-fun m!7992958 () Bool)

(assert (=> b!7327093 m!7992958))

(assert (=> d!2275328 d!2275352))

(declare-fun d!2275354 () Bool)

(declare-fun c!1360136 () Bool)

(assert (=> d!2275354 (= c!1360136 (is-Nil!71374 (exprs!8442 ct1!256)))))

(declare-fun e!4387303 () (Set Regex!19002))

(assert (=> d!2275354 (= (content!14945 (exprs!8442 ct1!256)) e!4387303)))

(declare-fun b!7327094 () Bool)

(assert (=> b!7327094 (= e!4387303 (as set.empty (Set Regex!19002)))))

(declare-fun b!7327095 () Bool)

(assert (=> b!7327095 (= e!4387303 (set.union (set.insert (h!77822 (exprs!8442 ct1!256)) (as set.empty (Set Regex!19002))) (content!14945 (t!385883 (exprs!8442 ct1!256)))))))

(assert (= (and d!2275354 c!1360136) b!7327094))

(assert (= (and d!2275354 (not c!1360136)) b!7327095))

(declare-fun m!7992960 () Bool)

(assert (=> b!7327095 m!7992960))

(declare-fun m!7992962 () Bool)

(assert (=> b!7327095 m!7992962))

(assert (=> d!2275328 d!2275354))

(declare-fun d!2275356 () Bool)

(declare-fun c!1360137 () Bool)

(assert (=> d!2275356 (= c!1360137 (is-Nil!71374 (exprs!8442 ct2!352)))))

(declare-fun e!4387304 () (Set Regex!19002))

(assert (=> d!2275356 (= (content!14945 (exprs!8442 ct2!352)) e!4387304)))

(declare-fun b!7327096 () Bool)

(assert (=> b!7327096 (= e!4387304 (as set.empty (Set Regex!19002)))))

(declare-fun b!7327097 () Bool)

(assert (=> b!7327097 (= e!4387304 (set.union (set.insert (h!77822 (exprs!8442 ct2!352)) (as set.empty (Set Regex!19002))) (content!14945 (t!385883 (exprs!8442 ct2!352)))))))

(assert (= (and d!2275356 c!1360137) b!7327096))

(assert (= (and d!2275356 (not c!1360137)) b!7327097))

(declare-fun m!7992964 () Bool)

(assert (=> b!7327097 m!7992964))

(declare-fun m!7992966 () Bool)

(assert (=> b!7327097 m!7992966))

(assert (=> d!2275328 d!2275356))

(declare-fun bm!666961 () Bool)

(declare-fun call!666971 () (Set Context!15884))

(declare-fun call!666970 () (Set Context!15884))

(assert (=> bm!666961 (= call!666971 call!666970)))

(declare-fun c!1360139 () Bool)

(declare-fun d!2275358 () Bool)

(assert (=> d!2275358 (= c!1360139 (and (is-ElementMatch!19002 (ite c!1360085 (regTwo!38517 (h!77822 (exprs!8442 ct1!256))) (ite c!1360087 (regTwo!38516 (h!77822 (exprs!8442 ct1!256))) (ite c!1360083 (regOne!38516 (h!77822 (exprs!8442 ct1!256))) (reg!19331 (h!77822 (exprs!8442 ct1!256))))))) (= (c!1360071 (ite c!1360085 (regTwo!38517 (h!77822 (exprs!8442 ct1!256))) (ite c!1360087 (regTwo!38516 (h!77822 (exprs!8442 ct1!256))) (ite c!1360083 (regOne!38516 (h!77822 (exprs!8442 ct1!256))) (reg!19331 (h!77822 (exprs!8442 ct1!256))))))) c!10305)))))

(declare-fun e!4387305 () (Set Context!15884))

(assert (=> d!2275358 (= (derivationStepZipperDown!2833 (ite c!1360085 (regTwo!38517 (h!77822 (exprs!8442 ct1!256))) (ite c!1360087 (regTwo!38516 (h!77822 (exprs!8442 ct1!256))) (ite c!1360083 (regOne!38516 (h!77822 (exprs!8442 ct1!256))) (reg!19331 (h!77822 (exprs!8442 ct1!256)))))) (ite (or c!1360085 c!1360087) (Context!15885 (tail!14691 (exprs!8442 ct1!256))) (Context!15885 call!666919)) c!10305) e!4387305)))

(declare-fun b!7327098 () Bool)

(declare-fun e!4387306 () (Set Context!15884))

(assert (=> b!7327098 (= e!4387305 e!4387306)))

(declare-fun c!1360140 () Bool)

(assert (=> b!7327098 (= c!1360140 (is-Union!19002 (ite c!1360085 (regTwo!38517 (h!77822 (exprs!8442 ct1!256))) (ite c!1360087 (regTwo!38516 (h!77822 (exprs!8442 ct1!256))) (ite c!1360083 (regOne!38516 (h!77822 (exprs!8442 ct1!256))) (reg!19331 (h!77822 (exprs!8442 ct1!256))))))))))

(declare-fun c!1360142 () Bool)

(declare-fun c!1360138 () Bool)

(declare-fun call!666967 () List!71498)

(declare-fun bm!666962 () Bool)

(assert (=> bm!666962 (= call!666970 (derivationStepZipperDown!2833 (ite c!1360140 (regTwo!38517 (ite c!1360085 (regTwo!38517 (h!77822 (exprs!8442 ct1!256))) (ite c!1360087 (regTwo!38516 (h!77822 (exprs!8442 ct1!256))) (ite c!1360083 (regOne!38516 (h!77822 (exprs!8442 ct1!256))) (reg!19331 (h!77822 (exprs!8442 ct1!256))))))) (ite c!1360142 (regTwo!38516 (ite c!1360085 (regTwo!38517 (h!77822 (exprs!8442 ct1!256))) (ite c!1360087 (regTwo!38516 (h!77822 (exprs!8442 ct1!256))) (ite c!1360083 (regOne!38516 (h!77822 (exprs!8442 ct1!256))) (reg!19331 (h!77822 (exprs!8442 ct1!256))))))) (ite c!1360138 (regOne!38516 (ite c!1360085 (regTwo!38517 (h!77822 (exprs!8442 ct1!256))) (ite c!1360087 (regTwo!38516 (h!77822 (exprs!8442 ct1!256))) (ite c!1360083 (regOne!38516 (h!77822 (exprs!8442 ct1!256))) (reg!19331 (h!77822 (exprs!8442 ct1!256))))))) (reg!19331 (ite c!1360085 (regTwo!38517 (h!77822 (exprs!8442 ct1!256))) (ite c!1360087 (regTwo!38516 (h!77822 (exprs!8442 ct1!256))) (ite c!1360083 (regOne!38516 (h!77822 (exprs!8442 ct1!256))) (reg!19331 (h!77822 (exprs!8442 ct1!256)))))))))) (ite (or c!1360140 c!1360142) (ite (or c!1360085 c!1360087) (Context!15885 (tail!14691 (exprs!8442 ct1!256))) (Context!15885 call!666919)) (Context!15885 call!666967)) c!10305))))

(declare-fun b!7327099 () Bool)

(declare-fun e!4387307 () (Set Context!15884))

(declare-fun call!666968 () (Set Context!15884))

(assert (=> b!7327099 (= e!4387307 call!666968)))

(declare-fun bm!666963 () Bool)

(declare-fun call!666969 () List!71498)

(assert (=> bm!666963 (= call!666969 ($colon$colon!3035 (exprs!8442 (ite (or c!1360085 c!1360087) (Context!15885 (tail!14691 (exprs!8442 ct1!256))) (Context!15885 call!666919))) (ite (or c!1360142 c!1360138) (regTwo!38516 (ite c!1360085 (regTwo!38517 (h!77822 (exprs!8442 ct1!256))) (ite c!1360087 (regTwo!38516 (h!77822 (exprs!8442 ct1!256))) (ite c!1360083 (regOne!38516 (h!77822 (exprs!8442 ct1!256))) (reg!19331 (h!77822 (exprs!8442 ct1!256))))))) (ite c!1360085 (regTwo!38517 (h!77822 (exprs!8442 ct1!256))) (ite c!1360087 (regTwo!38516 (h!77822 (exprs!8442 ct1!256))) (ite c!1360083 (regOne!38516 (h!77822 (exprs!8442 ct1!256))) (reg!19331 (h!77822 (exprs!8442 ct1!256)))))))))))

(declare-fun b!7327100 () Bool)

(declare-fun e!4387309 () (Set Context!15884))

(assert (=> b!7327100 (= e!4387309 call!666968)))

(declare-fun b!7327101 () Bool)

(declare-fun e!4387310 () Bool)

(assert (=> b!7327101 (= e!4387310 (nullable!8106 (regOne!38516 (ite c!1360085 (regTwo!38517 (h!77822 (exprs!8442 ct1!256))) (ite c!1360087 (regTwo!38516 (h!77822 (exprs!8442 ct1!256))) (ite c!1360083 (regOne!38516 (h!77822 (exprs!8442 ct1!256))) (reg!19331 (h!77822 (exprs!8442 ct1!256)))))))))))

(declare-fun call!666966 () (Set Context!15884))

(declare-fun bm!666964 () Bool)

(assert (=> bm!666964 (= call!666966 (derivationStepZipperDown!2833 (ite c!1360140 (regOne!38517 (ite c!1360085 (regTwo!38517 (h!77822 (exprs!8442 ct1!256))) (ite c!1360087 (regTwo!38516 (h!77822 (exprs!8442 ct1!256))) (ite c!1360083 (regOne!38516 (h!77822 (exprs!8442 ct1!256))) (reg!19331 (h!77822 (exprs!8442 ct1!256))))))) (regOne!38516 (ite c!1360085 (regTwo!38517 (h!77822 (exprs!8442 ct1!256))) (ite c!1360087 (regTwo!38516 (h!77822 (exprs!8442 ct1!256))) (ite c!1360083 (regOne!38516 (h!77822 (exprs!8442 ct1!256))) (reg!19331 (h!77822 (exprs!8442 ct1!256)))))))) (ite c!1360140 (ite (or c!1360085 c!1360087) (Context!15885 (tail!14691 (exprs!8442 ct1!256))) (Context!15885 call!666919)) (Context!15885 call!666969)) c!10305))))

(declare-fun b!7327102 () Bool)

(assert (=> b!7327102 (= e!4387305 (set.insert (ite (or c!1360085 c!1360087) (Context!15885 (tail!14691 (exprs!8442 ct1!256))) (Context!15885 call!666919)) (as set.empty (Set Context!15884))))))

(declare-fun b!7327103 () Bool)

(declare-fun e!4387308 () (Set Context!15884))

(assert (=> b!7327103 (= e!4387308 e!4387309)))

(assert (=> b!7327103 (= c!1360138 (is-Concat!27847 (ite c!1360085 (regTwo!38517 (h!77822 (exprs!8442 ct1!256))) (ite c!1360087 (regTwo!38516 (h!77822 (exprs!8442 ct1!256))) (ite c!1360083 (regOne!38516 (h!77822 (exprs!8442 ct1!256))) (reg!19331 (h!77822 (exprs!8442 ct1!256))))))))))

(declare-fun bm!666965 () Bool)

(assert (=> bm!666965 (= call!666967 call!666969)))

(declare-fun b!7327104 () Bool)

(assert (=> b!7327104 (= e!4387306 (set.union call!666966 call!666970))))

(declare-fun b!7327105 () Bool)

(declare-fun c!1360141 () Bool)

(assert (=> b!7327105 (= c!1360141 (is-Star!19002 (ite c!1360085 (regTwo!38517 (h!77822 (exprs!8442 ct1!256))) (ite c!1360087 (regTwo!38516 (h!77822 (exprs!8442 ct1!256))) (ite c!1360083 (regOne!38516 (h!77822 (exprs!8442 ct1!256))) (reg!19331 (h!77822 (exprs!8442 ct1!256))))))))))

(assert (=> b!7327105 (= e!4387309 e!4387307)))

(declare-fun b!7327106 () Bool)

(assert (=> b!7327106 (= e!4387307 (as set.empty (Set Context!15884)))))

(declare-fun b!7327107 () Bool)

(assert (=> b!7327107 (= e!4387308 (set.union call!666966 call!666971))))

(declare-fun bm!666966 () Bool)

(assert (=> bm!666966 (= call!666968 call!666971)))

(declare-fun b!7327108 () Bool)

(assert (=> b!7327108 (= c!1360142 e!4387310)))

(declare-fun res!2961449 () Bool)

(assert (=> b!7327108 (=> (not res!2961449) (not e!4387310))))

(assert (=> b!7327108 (= res!2961449 (is-Concat!27847 (ite c!1360085 (regTwo!38517 (h!77822 (exprs!8442 ct1!256))) (ite c!1360087 (regTwo!38516 (h!77822 (exprs!8442 ct1!256))) (ite c!1360083 (regOne!38516 (h!77822 (exprs!8442 ct1!256))) (reg!19331 (h!77822 (exprs!8442 ct1!256))))))))))

(assert (=> b!7327108 (= e!4387306 e!4387308)))

(assert (= (and d!2275358 c!1360139) b!7327102))

(assert (= (and d!2275358 (not c!1360139)) b!7327098))

(assert (= (and b!7327098 c!1360140) b!7327104))

(assert (= (and b!7327098 (not c!1360140)) b!7327108))

(assert (= (and b!7327108 res!2961449) b!7327101))

(assert (= (and b!7327108 c!1360142) b!7327107))

(assert (= (and b!7327108 (not c!1360142)) b!7327103))

(assert (= (and b!7327103 c!1360138) b!7327100))

(assert (= (and b!7327103 (not c!1360138)) b!7327105))

(assert (= (and b!7327105 c!1360141) b!7327099))

(assert (= (and b!7327105 (not c!1360141)) b!7327106))

(assert (= (or b!7327100 b!7327099) bm!666965))

(assert (= (or b!7327100 b!7327099) bm!666966))

(assert (= (or b!7327107 bm!666966) bm!666961))

(assert (= (or b!7327107 bm!666965) bm!666963))

(assert (= (or b!7327104 bm!666961) bm!666962))

(assert (= (or b!7327104 b!7327107) bm!666964))

(declare-fun m!7992968 () Bool)

(assert (=> bm!666962 m!7992968))

(declare-fun m!7992970 () Bool)

(assert (=> b!7327101 m!7992970))

(declare-fun m!7992972 () Bool)

(assert (=> b!7327102 m!7992972))

(declare-fun m!7992974 () Bool)

(assert (=> bm!666963 m!7992974))

(declare-fun m!7992976 () Bool)

(assert (=> bm!666964 m!7992976))

(assert (=> bm!666914 d!2275358))

(declare-fun d!2275360 () Bool)

(declare-fun res!2961454 () Bool)

(declare-fun e!4387315 () Bool)

(assert (=> d!2275360 (=> res!2961454 e!4387315)))

(assert (=> d!2275360 (= res!2961454 (is-Nil!71374 (++!16826 (exprs!8442 ct1!256) (exprs!8442 ct2!352))))))

(assert (=> d!2275360 (= (forall!17853 (++!16826 (exprs!8442 ct1!256) (exprs!8442 ct2!352)) lambda!454177) e!4387315)))

(declare-fun b!7327113 () Bool)

(declare-fun e!4387316 () Bool)

(assert (=> b!7327113 (= e!4387315 e!4387316)))

(declare-fun res!2961455 () Bool)

(assert (=> b!7327113 (=> (not res!2961455) (not e!4387316))))

(declare-fun dynLambda!29410 (Int Regex!19002) Bool)

(assert (=> b!7327113 (= res!2961455 (dynLambda!29410 lambda!454177 (h!77822 (++!16826 (exprs!8442 ct1!256) (exprs!8442 ct2!352)))))))

(declare-fun b!7327114 () Bool)

(assert (=> b!7327114 (= e!4387316 (forall!17853 (t!385883 (++!16826 (exprs!8442 ct1!256) (exprs!8442 ct2!352))) lambda!454177))))

(assert (= (and d!2275360 (not res!2961454)) b!7327113))

(assert (= (and b!7327113 res!2961455) b!7327114))

(declare-fun b_lambda!283379 () Bool)

(assert (=> (not b_lambda!283379) (not b!7327113)))

(declare-fun m!7992978 () Bool)

(assert (=> b!7327113 m!7992978))

(declare-fun m!7992980 () Bool)

(assert (=> b!7327114 m!7992980))

(assert (=> d!2275334 d!2275360))

(assert (=> d!2275334 d!2275328))

(declare-fun d!2275362 () Bool)

(assert (=> d!2275362 (forall!17853 (++!16826 (exprs!8442 ct1!256) (exprs!8442 ct2!352)) lambda!454177)))

(assert (=> d!2275362 true))

(declare-fun _$78!888 () Unit!164969)

(assert (=> d!2275362 (= (choose!56982 (exprs!8442 ct1!256) (exprs!8442 ct2!352) lambda!454177) _$78!888)))

(declare-fun bs!1916822 () Bool)

(assert (= bs!1916822 d!2275362))

(assert (=> bs!1916822 m!7992804))

(assert (=> bs!1916822 m!7992804))

(assert (=> bs!1916822 m!7992922))

(assert (=> d!2275334 d!2275362))

(declare-fun d!2275364 () Bool)

(declare-fun res!2961456 () Bool)

(declare-fun e!4387317 () Bool)

(assert (=> d!2275364 (=> res!2961456 e!4387317)))

(assert (=> d!2275364 (= res!2961456 (is-Nil!71374 (exprs!8442 ct1!256)))))

(assert (=> d!2275364 (= (forall!17853 (exprs!8442 ct1!256) lambda!454177) e!4387317)))

(declare-fun b!7327115 () Bool)

(declare-fun e!4387318 () Bool)

(assert (=> b!7327115 (= e!4387317 e!4387318)))

(declare-fun res!2961457 () Bool)

(assert (=> b!7327115 (=> (not res!2961457) (not e!4387318))))

(assert (=> b!7327115 (= res!2961457 (dynLambda!29410 lambda!454177 (h!77822 (exprs!8442 ct1!256))))))

(declare-fun b!7327116 () Bool)

(assert (=> b!7327116 (= e!4387318 (forall!17853 (t!385883 (exprs!8442 ct1!256)) lambda!454177))))

(assert (= (and d!2275364 (not res!2961456)) b!7327115))

(assert (= (and b!7327115 res!2961457) b!7327116))

(declare-fun b_lambda!283381 () Bool)

(assert (=> (not b_lambda!283381) (not b!7327115)))

(declare-fun m!7992982 () Bool)

(assert (=> b!7327115 m!7992982))

(declare-fun m!7992984 () Bool)

(assert (=> b!7327116 m!7992984))

(assert (=> d!2275334 d!2275364))

(declare-fun b!7327131 () Bool)

(declare-fun e!4387336 () Bool)

(declare-fun call!666977 () Bool)

(assert (=> b!7327131 (= e!4387336 call!666977)))

(declare-fun bm!666971 () Bool)

(declare-fun call!666976 () Bool)

(declare-fun c!1360145 () Bool)

(assert (=> bm!666971 (= call!666976 (nullable!8106 (ite c!1360145 (regTwo!38517 (h!77822 (exprs!8442 ct1!256))) (regOne!38516 (h!77822 (exprs!8442 ct1!256))))))))

(declare-fun d!2275366 () Bool)

(declare-fun res!2961472 () Bool)

(declare-fun e!4387335 () Bool)

(assert (=> d!2275366 (=> res!2961472 e!4387335)))

(assert (=> d!2275366 (= res!2961472 (is-EmptyExpr!19002 (h!77822 (exprs!8442 ct1!256))))))

(assert (=> d!2275366 (= (nullableFct!3219 (h!77822 (exprs!8442 ct1!256))) e!4387335)))

(declare-fun b!7327132 () Bool)

(declare-fun e!4387333 () Bool)

(declare-fun e!4387332 () Bool)

(assert (=> b!7327132 (= e!4387333 e!4387332)))

(declare-fun res!2961471 () Bool)

(assert (=> b!7327132 (=> res!2961471 e!4387332)))

(assert (=> b!7327132 (= res!2961471 (is-Star!19002 (h!77822 (exprs!8442 ct1!256))))))

(declare-fun b!7327133 () Bool)

(declare-fun e!4387331 () Bool)

(assert (=> b!7327133 (= e!4387332 e!4387331)))

(assert (=> b!7327133 (= c!1360145 (is-Union!19002 (h!77822 (exprs!8442 ct1!256))))))

(declare-fun b!7327134 () Bool)

(declare-fun e!4387334 () Bool)

(assert (=> b!7327134 (= e!4387334 call!666976)))

(declare-fun b!7327135 () Bool)

(assert (=> b!7327135 (= e!4387331 e!4387336)))

(declare-fun res!2961469 () Bool)

(assert (=> b!7327135 (= res!2961469 call!666976)))

(assert (=> b!7327135 (=> (not res!2961469) (not e!4387336))))

(declare-fun b!7327136 () Bool)

(assert (=> b!7327136 (= e!4387331 e!4387334)))

(declare-fun res!2961468 () Bool)

(assert (=> b!7327136 (= res!2961468 call!666977)))

(assert (=> b!7327136 (=> res!2961468 e!4387334)))

(declare-fun b!7327137 () Bool)

(assert (=> b!7327137 (= e!4387335 e!4387333)))

(declare-fun res!2961470 () Bool)

(assert (=> b!7327137 (=> (not res!2961470) (not e!4387333))))

(assert (=> b!7327137 (= res!2961470 (and (not (is-EmptyLang!19002 (h!77822 (exprs!8442 ct1!256)))) (not (is-ElementMatch!19002 (h!77822 (exprs!8442 ct1!256))))))))

(declare-fun bm!666972 () Bool)

(assert (=> bm!666972 (= call!666977 (nullable!8106 (ite c!1360145 (regOne!38517 (h!77822 (exprs!8442 ct1!256))) (regTwo!38516 (h!77822 (exprs!8442 ct1!256))))))))

(assert (= (and d!2275366 (not res!2961472)) b!7327137))

(assert (= (and b!7327137 res!2961470) b!7327132))

(assert (= (and b!7327132 (not res!2961471)) b!7327133))

(assert (= (and b!7327133 c!1360145) b!7327136))

(assert (= (and b!7327133 (not c!1360145)) b!7327135))

(assert (= (and b!7327136 (not res!2961468)) b!7327134))

(assert (= (and b!7327135 res!2961469) b!7327131))

(assert (= (or b!7327136 b!7327131) bm!666972))

(assert (= (or b!7327134 b!7327135) bm!666971))

(declare-fun m!7992986 () Bool)

(assert (=> bm!666971 m!7992986))

(declare-fun m!7992988 () Bool)

(assert (=> bm!666972 m!7992988))

(assert (=> d!2275308 d!2275366))

(declare-fun b!7327138 () Bool)

(declare-fun e!4387338 () Bool)

(declare-fun call!666979 () Bool)

(assert (=> b!7327138 (= e!4387338 call!666979)))

(declare-fun b!7327139 () Bool)

(declare-fun e!4387343 () Bool)

(assert (=> b!7327139 (= e!4387343 e!4387338)))

(declare-fun res!2961477 () Bool)

(assert (=> b!7327139 (=> (not res!2961477) (not e!4387338))))

(declare-fun call!666980 () Bool)

(assert (=> b!7327139 (= res!2961477 call!666980)))

(declare-fun b!7327140 () Bool)

(declare-fun res!2961476 () Bool)

(declare-fun e!4387340 () Bool)

(assert (=> b!7327140 (=> (not res!2961476) (not e!4387340))))

(assert (=> b!7327140 (= res!2961476 call!666979)))

(declare-fun e!4387342 () Bool)

(assert (=> b!7327140 (= e!4387342 e!4387340)))

(declare-fun b!7327141 () Bool)

(declare-fun res!2961474 () Bool)

(assert (=> b!7327141 (=> res!2961474 e!4387343)))

(assert (=> b!7327141 (= res!2961474 (not (is-Concat!27847 (ite c!1360095 (reg!19331 (h!77822 (exprs!8442 ct1!256))) (ite c!1360094 (regOne!38517 (h!77822 (exprs!8442 ct1!256))) (regTwo!38516 (h!77822 (exprs!8442 ct1!256))))))))))

(assert (=> b!7327141 (= e!4387342 e!4387343)))

(declare-fun b!7327142 () Bool)

(declare-fun e!4387339 () Bool)

(assert (=> b!7327142 (= e!4387339 e!4387342)))

(declare-fun c!1360146 () Bool)

(assert (=> b!7327142 (= c!1360146 (is-Union!19002 (ite c!1360095 (reg!19331 (h!77822 (exprs!8442 ct1!256))) (ite c!1360094 (regOne!38517 (h!77822 (exprs!8442 ct1!256))) (regTwo!38516 (h!77822 (exprs!8442 ct1!256)))))))))

(declare-fun b!7327143 () Bool)

(declare-fun e!4387337 () Bool)

(declare-fun call!666978 () Bool)

(assert (=> b!7327143 (= e!4387337 call!666978)))

(declare-fun b!7327144 () Bool)

(declare-fun e!4387341 () Bool)

(assert (=> b!7327144 (= e!4387341 e!4387339)))

(declare-fun c!1360147 () Bool)

(assert (=> b!7327144 (= c!1360147 (is-Star!19002 (ite c!1360095 (reg!19331 (h!77822 (exprs!8442 ct1!256))) (ite c!1360094 (regOne!38517 (h!77822 (exprs!8442 ct1!256))) (regTwo!38516 (h!77822 (exprs!8442 ct1!256)))))))))

(declare-fun bm!666973 () Bool)

(assert (=> bm!666973 (= call!666979 call!666978)))

(declare-fun bm!666974 () Bool)

(assert (=> bm!666974 (= call!666978 (validRegex!9639 (ite c!1360147 (reg!19331 (ite c!1360095 (reg!19331 (h!77822 (exprs!8442 ct1!256))) (ite c!1360094 (regOne!38517 (h!77822 (exprs!8442 ct1!256))) (regTwo!38516 (h!77822 (exprs!8442 ct1!256)))))) (ite c!1360146 (regOne!38517 (ite c!1360095 (reg!19331 (h!77822 (exprs!8442 ct1!256))) (ite c!1360094 (regOne!38517 (h!77822 (exprs!8442 ct1!256))) (regTwo!38516 (h!77822 (exprs!8442 ct1!256)))))) (regTwo!38516 (ite c!1360095 (reg!19331 (h!77822 (exprs!8442 ct1!256))) (ite c!1360094 (regOne!38517 (h!77822 (exprs!8442 ct1!256))) (regTwo!38516 (h!77822 (exprs!8442 ct1!256))))))))))))

(declare-fun b!7327145 () Bool)

(assert (=> b!7327145 (= e!4387339 e!4387337)))

(declare-fun res!2961475 () Bool)

(assert (=> b!7327145 (= res!2961475 (not (nullable!8106 (reg!19331 (ite c!1360095 (reg!19331 (h!77822 (exprs!8442 ct1!256))) (ite c!1360094 (regOne!38517 (h!77822 (exprs!8442 ct1!256))) (regTwo!38516 (h!77822 (exprs!8442 ct1!256)))))))))))

(assert (=> b!7327145 (=> (not res!2961475) (not e!4387337))))

(declare-fun d!2275368 () Bool)

(declare-fun res!2961473 () Bool)

(assert (=> d!2275368 (=> res!2961473 e!4387341)))

(assert (=> d!2275368 (= res!2961473 (is-ElementMatch!19002 (ite c!1360095 (reg!19331 (h!77822 (exprs!8442 ct1!256))) (ite c!1360094 (regOne!38517 (h!77822 (exprs!8442 ct1!256))) (regTwo!38516 (h!77822 (exprs!8442 ct1!256)))))))))

(assert (=> d!2275368 (= (validRegex!9639 (ite c!1360095 (reg!19331 (h!77822 (exprs!8442 ct1!256))) (ite c!1360094 (regOne!38517 (h!77822 (exprs!8442 ct1!256))) (regTwo!38516 (h!77822 (exprs!8442 ct1!256)))))) e!4387341)))

(declare-fun bm!666975 () Bool)

(assert (=> bm!666975 (= call!666980 (validRegex!9639 (ite c!1360146 (regTwo!38517 (ite c!1360095 (reg!19331 (h!77822 (exprs!8442 ct1!256))) (ite c!1360094 (regOne!38517 (h!77822 (exprs!8442 ct1!256))) (regTwo!38516 (h!77822 (exprs!8442 ct1!256)))))) (regOne!38516 (ite c!1360095 (reg!19331 (h!77822 (exprs!8442 ct1!256))) (ite c!1360094 (regOne!38517 (h!77822 (exprs!8442 ct1!256))) (regTwo!38516 (h!77822 (exprs!8442 ct1!256)))))))))))

(declare-fun b!7327146 () Bool)

(assert (=> b!7327146 (= e!4387340 call!666980)))

(assert (= (and d!2275368 (not res!2961473)) b!7327144))

(assert (= (and b!7327144 c!1360147) b!7327145))

(assert (= (and b!7327144 (not c!1360147)) b!7327142))

(assert (= (and b!7327145 res!2961475) b!7327143))

(assert (= (and b!7327142 c!1360146) b!7327140))

(assert (= (and b!7327142 (not c!1360146)) b!7327141))

(assert (= (and b!7327140 res!2961476) b!7327146))

(assert (= (and b!7327141 (not res!2961474)) b!7327139))

(assert (= (and b!7327139 res!2961477) b!7327138))

(assert (= (or b!7327146 b!7327139) bm!666975))

(assert (= (or b!7327140 b!7327138) bm!666973))

(assert (= (or b!7327143 bm!666973) bm!666974))

(declare-fun m!7992990 () Bool)

(assert (=> bm!666974 m!7992990))

(declare-fun m!7992992 () Bool)

(assert (=> b!7327145 m!7992992))

(declare-fun m!7992994 () Bool)

(assert (=> bm!666975 m!7992994))

(assert (=> bm!666926 d!2275368))

(declare-fun d!2275370 () Bool)

(declare-fun res!2961478 () Bool)

(declare-fun e!4387344 () Bool)

(assert (=> d!2275370 (=> res!2961478 e!4387344)))

(assert (=> d!2275370 (= res!2961478 (is-Nil!71374 (exprs!8442 ct2!352)))))

(assert (=> d!2275370 (= (forall!17853 (exprs!8442 ct2!352) lambda!454185) e!4387344)))

(declare-fun b!7327147 () Bool)

(declare-fun e!4387345 () Bool)

(assert (=> b!7327147 (= e!4387344 e!4387345)))

(declare-fun res!2961479 () Bool)

(assert (=> b!7327147 (=> (not res!2961479) (not e!4387345))))

(assert (=> b!7327147 (= res!2961479 (dynLambda!29410 lambda!454185 (h!77822 (exprs!8442 ct2!352))))))

(declare-fun b!7327148 () Bool)

(assert (=> b!7327148 (= e!4387345 (forall!17853 (t!385883 (exprs!8442 ct2!352)) lambda!454185))))

(assert (= (and d!2275370 (not res!2961478)) b!7327147))

(assert (= (and b!7327147 res!2961479) b!7327148))

(declare-fun b_lambda!283383 () Bool)

(assert (=> (not b_lambda!283383) (not b!7327147)))

(declare-fun m!7992996 () Bool)

(assert (=> b!7327147 m!7992996))

(declare-fun m!7992998 () Bool)

(assert (=> b!7327148 m!7992998))

(assert (=> d!2275326 d!2275370))

(declare-fun d!2275372 () Bool)

(assert (=> d!2275372 (= ($colon$colon!3035 (exprs!8442 (Context!15885 (tail!14691 (exprs!8442 ct1!256)))) (ite (or c!1360087 c!1360083) (regTwo!38516 (h!77822 (exprs!8442 ct1!256))) (h!77822 (exprs!8442 ct1!256)))) (Cons!71374 (ite (or c!1360087 c!1360083) (regTwo!38516 (h!77822 (exprs!8442 ct1!256))) (h!77822 (exprs!8442 ct1!256))) (exprs!8442 (Context!15885 (tail!14691 (exprs!8442 ct1!256))))))))

(assert (=> bm!666915 d!2275372))

(declare-fun bm!666976 () Bool)

(declare-fun call!666986 () (Set Context!15884))

(declare-fun call!666985 () (Set Context!15884))

(assert (=> bm!666976 (= call!666986 call!666985)))

(declare-fun c!1360149 () Bool)

(declare-fun d!2275374 () Bool)

(assert (=> d!2275374 (= c!1360149 (and (is-ElementMatch!19002 (ite c!1360085 (regOne!38517 (h!77822 (exprs!8442 ct1!256))) (regOne!38516 (h!77822 (exprs!8442 ct1!256))))) (= (c!1360071 (ite c!1360085 (regOne!38517 (h!77822 (exprs!8442 ct1!256))) (regOne!38516 (h!77822 (exprs!8442 ct1!256))))) c!10305)))))

(declare-fun e!4387346 () (Set Context!15884))

(assert (=> d!2275374 (= (derivationStepZipperDown!2833 (ite c!1360085 (regOne!38517 (h!77822 (exprs!8442 ct1!256))) (regOne!38516 (h!77822 (exprs!8442 ct1!256)))) (ite c!1360085 (Context!15885 (tail!14691 (exprs!8442 ct1!256))) (Context!15885 call!666921)) c!10305) e!4387346)))

(declare-fun b!7327149 () Bool)

(declare-fun e!4387347 () (Set Context!15884))

(assert (=> b!7327149 (= e!4387346 e!4387347)))

(declare-fun c!1360150 () Bool)

(assert (=> b!7327149 (= c!1360150 (is-Union!19002 (ite c!1360085 (regOne!38517 (h!77822 (exprs!8442 ct1!256))) (regOne!38516 (h!77822 (exprs!8442 ct1!256))))))))

(declare-fun c!1360148 () Bool)

(declare-fun bm!666977 () Bool)

(declare-fun c!1360152 () Bool)

(declare-fun call!666982 () List!71498)

(assert (=> bm!666977 (= call!666985 (derivationStepZipperDown!2833 (ite c!1360150 (regTwo!38517 (ite c!1360085 (regOne!38517 (h!77822 (exprs!8442 ct1!256))) (regOne!38516 (h!77822 (exprs!8442 ct1!256))))) (ite c!1360152 (regTwo!38516 (ite c!1360085 (regOne!38517 (h!77822 (exprs!8442 ct1!256))) (regOne!38516 (h!77822 (exprs!8442 ct1!256))))) (ite c!1360148 (regOne!38516 (ite c!1360085 (regOne!38517 (h!77822 (exprs!8442 ct1!256))) (regOne!38516 (h!77822 (exprs!8442 ct1!256))))) (reg!19331 (ite c!1360085 (regOne!38517 (h!77822 (exprs!8442 ct1!256))) (regOne!38516 (h!77822 (exprs!8442 ct1!256)))))))) (ite (or c!1360150 c!1360152) (ite c!1360085 (Context!15885 (tail!14691 (exprs!8442 ct1!256))) (Context!15885 call!666921)) (Context!15885 call!666982)) c!10305))))

(declare-fun b!7327150 () Bool)

(declare-fun e!4387348 () (Set Context!15884))

(declare-fun call!666983 () (Set Context!15884))

(assert (=> b!7327150 (= e!4387348 call!666983)))

(declare-fun call!666984 () List!71498)

(declare-fun bm!666978 () Bool)

(assert (=> bm!666978 (= call!666984 ($colon$colon!3035 (exprs!8442 (ite c!1360085 (Context!15885 (tail!14691 (exprs!8442 ct1!256))) (Context!15885 call!666921))) (ite (or c!1360152 c!1360148) (regTwo!38516 (ite c!1360085 (regOne!38517 (h!77822 (exprs!8442 ct1!256))) (regOne!38516 (h!77822 (exprs!8442 ct1!256))))) (ite c!1360085 (regOne!38517 (h!77822 (exprs!8442 ct1!256))) (regOne!38516 (h!77822 (exprs!8442 ct1!256)))))))))

(declare-fun b!7327151 () Bool)

(declare-fun e!4387350 () (Set Context!15884))

(assert (=> b!7327151 (= e!4387350 call!666983)))

(declare-fun b!7327152 () Bool)

(declare-fun e!4387351 () Bool)

(assert (=> b!7327152 (= e!4387351 (nullable!8106 (regOne!38516 (ite c!1360085 (regOne!38517 (h!77822 (exprs!8442 ct1!256))) (regOne!38516 (h!77822 (exprs!8442 ct1!256)))))))))

(declare-fun call!666981 () (Set Context!15884))

(declare-fun bm!666979 () Bool)

(assert (=> bm!666979 (= call!666981 (derivationStepZipperDown!2833 (ite c!1360150 (regOne!38517 (ite c!1360085 (regOne!38517 (h!77822 (exprs!8442 ct1!256))) (regOne!38516 (h!77822 (exprs!8442 ct1!256))))) (regOne!38516 (ite c!1360085 (regOne!38517 (h!77822 (exprs!8442 ct1!256))) (regOne!38516 (h!77822 (exprs!8442 ct1!256)))))) (ite c!1360150 (ite c!1360085 (Context!15885 (tail!14691 (exprs!8442 ct1!256))) (Context!15885 call!666921)) (Context!15885 call!666984)) c!10305))))

(declare-fun b!7327153 () Bool)

(assert (=> b!7327153 (= e!4387346 (set.insert (ite c!1360085 (Context!15885 (tail!14691 (exprs!8442 ct1!256))) (Context!15885 call!666921)) (as set.empty (Set Context!15884))))))

(declare-fun b!7327154 () Bool)

(declare-fun e!4387349 () (Set Context!15884))

(assert (=> b!7327154 (= e!4387349 e!4387350)))

(assert (=> b!7327154 (= c!1360148 (is-Concat!27847 (ite c!1360085 (regOne!38517 (h!77822 (exprs!8442 ct1!256))) (regOne!38516 (h!77822 (exprs!8442 ct1!256))))))))

(declare-fun bm!666980 () Bool)

(assert (=> bm!666980 (= call!666982 call!666984)))

(declare-fun b!7327155 () Bool)

(assert (=> b!7327155 (= e!4387347 (set.union call!666981 call!666985))))

(declare-fun b!7327156 () Bool)

(declare-fun c!1360151 () Bool)

(assert (=> b!7327156 (= c!1360151 (is-Star!19002 (ite c!1360085 (regOne!38517 (h!77822 (exprs!8442 ct1!256))) (regOne!38516 (h!77822 (exprs!8442 ct1!256))))))))

(assert (=> b!7327156 (= e!4387350 e!4387348)))

(declare-fun b!7327157 () Bool)

(assert (=> b!7327157 (= e!4387348 (as set.empty (Set Context!15884)))))

(declare-fun b!7327158 () Bool)

(assert (=> b!7327158 (= e!4387349 (set.union call!666981 call!666986))))

(declare-fun bm!666981 () Bool)

(assert (=> bm!666981 (= call!666983 call!666986)))

(declare-fun b!7327159 () Bool)

(assert (=> b!7327159 (= c!1360152 e!4387351)))

(declare-fun res!2961480 () Bool)

(assert (=> b!7327159 (=> (not res!2961480) (not e!4387351))))

(assert (=> b!7327159 (= res!2961480 (is-Concat!27847 (ite c!1360085 (regOne!38517 (h!77822 (exprs!8442 ct1!256))) (regOne!38516 (h!77822 (exprs!8442 ct1!256))))))))

(assert (=> b!7327159 (= e!4387347 e!4387349)))

(assert (= (and d!2275374 c!1360149) b!7327153))

(assert (= (and d!2275374 (not c!1360149)) b!7327149))

(assert (= (and b!7327149 c!1360150) b!7327155))

(assert (= (and b!7327149 (not c!1360150)) b!7327159))

(assert (= (and b!7327159 res!2961480) b!7327152))

(assert (= (and b!7327159 c!1360152) b!7327158))

(assert (= (and b!7327159 (not c!1360152)) b!7327154))

(assert (= (and b!7327154 c!1360148) b!7327151))

(assert (= (and b!7327154 (not c!1360148)) b!7327156))

(assert (= (and b!7327156 c!1360151) b!7327150))

(assert (= (and b!7327156 (not c!1360151)) b!7327157))

(assert (= (or b!7327151 b!7327150) bm!666980))

(assert (= (or b!7327151 b!7327150) bm!666981))

(assert (= (or b!7327158 bm!666981) bm!666976))

(assert (= (or b!7327158 bm!666980) bm!666978))

(assert (= (or b!7327155 bm!666976) bm!666977))

(assert (= (or b!7327155 b!7327158) bm!666979))

(declare-fun m!7993000 () Bool)

(assert (=> bm!666977 m!7993000))

(declare-fun m!7993002 () Bool)

(assert (=> b!7327152 m!7993002))

(declare-fun m!7993004 () Bool)

(assert (=> b!7327153 m!7993004))

(declare-fun m!7993006 () Bool)

(assert (=> bm!666978 m!7993006))

(declare-fun m!7993008 () Bool)

(assert (=> bm!666979 m!7993008))

(assert (=> bm!666916 d!2275374))

(assert (=> b!7326983 d!2275308))

(declare-fun d!2275376 () Bool)

(declare-fun lt!2606473 () Int)

(assert (=> d!2275376 (>= lt!2606473 0)))

(declare-fun e!4387354 () Int)

(assert (=> d!2275376 (= lt!2606473 e!4387354)))

(declare-fun c!1360155 () Bool)

(assert (=> d!2275376 (= c!1360155 (is-Nil!71374 lt!2606467))))

(assert (=> d!2275376 (= (size!41922 lt!2606467) lt!2606473)))

(declare-fun b!7327164 () Bool)

(assert (=> b!7327164 (= e!4387354 0)))

(declare-fun b!7327165 () Bool)

(assert (=> b!7327165 (= e!4387354 (+ 1 (size!41922 (t!385883 lt!2606467))))))

(assert (= (and d!2275376 c!1360155) b!7327164))

(assert (= (and d!2275376 (not c!1360155)) b!7327165))

(declare-fun m!7993010 () Bool)

(assert (=> b!7327165 m!7993010))

(assert (=> b!7326997 d!2275376))

(declare-fun d!2275378 () Bool)

(declare-fun lt!2606474 () Int)

(assert (=> d!2275378 (>= lt!2606474 0)))

(declare-fun e!4387355 () Int)

(assert (=> d!2275378 (= lt!2606474 e!4387355)))

(declare-fun c!1360156 () Bool)

(assert (=> d!2275378 (= c!1360156 (is-Nil!71374 (exprs!8442 ct1!256)))))

(assert (=> d!2275378 (= (size!41922 (exprs!8442 ct1!256)) lt!2606474)))

(declare-fun b!7327166 () Bool)

(assert (=> b!7327166 (= e!4387355 0)))

(declare-fun b!7327167 () Bool)

(assert (=> b!7327167 (= e!4387355 (+ 1 (size!41922 (t!385883 (exprs!8442 ct1!256)))))))

(assert (= (and d!2275378 c!1360156) b!7327166))

(assert (= (and d!2275378 (not c!1360156)) b!7327167))

(declare-fun m!7993012 () Bool)

(assert (=> b!7327167 m!7993012))

(assert (=> b!7326997 d!2275378))

(declare-fun d!2275380 () Bool)

(declare-fun lt!2606475 () Int)

(assert (=> d!2275380 (>= lt!2606475 0)))

(declare-fun e!4387356 () Int)

(assert (=> d!2275380 (= lt!2606475 e!4387356)))

(declare-fun c!1360157 () Bool)

(assert (=> d!2275380 (= c!1360157 (is-Nil!71374 (exprs!8442 ct2!352)))))

(assert (=> d!2275380 (= (size!41922 (exprs!8442 ct2!352)) lt!2606475)))

(declare-fun b!7327168 () Bool)

(assert (=> b!7327168 (= e!4387356 0)))

(declare-fun b!7327169 () Bool)

(assert (=> b!7327169 (= e!4387356 (+ 1 (size!41922 (t!385883 (exprs!8442 ct2!352)))))))

(assert (= (and d!2275380 c!1360157) b!7327168))

(assert (= (and d!2275380 (not c!1360157)) b!7327169))

(declare-fun m!7993014 () Bool)

(assert (=> b!7327169 m!7993014))

(assert (=> b!7326997 d!2275380))

(declare-fun b!7327170 () Bool)

(declare-fun e!4387358 () Bool)

(declare-fun call!666988 () Bool)

(assert (=> b!7327170 (= e!4387358 call!666988)))

(declare-fun b!7327171 () Bool)

(declare-fun e!4387363 () Bool)

(assert (=> b!7327171 (= e!4387363 e!4387358)))

(declare-fun res!2961485 () Bool)

(assert (=> b!7327171 (=> (not res!2961485) (not e!4387358))))

(declare-fun call!666989 () Bool)

(assert (=> b!7327171 (= res!2961485 call!666989)))

(declare-fun b!7327172 () Bool)

(declare-fun res!2961484 () Bool)

(declare-fun e!4387360 () Bool)

(assert (=> b!7327172 (=> (not res!2961484) (not e!4387360))))

(assert (=> b!7327172 (= res!2961484 call!666988)))

(declare-fun e!4387362 () Bool)

(assert (=> b!7327172 (= e!4387362 e!4387360)))

(declare-fun b!7327173 () Bool)

(declare-fun res!2961482 () Bool)

(assert (=> b!7327173 (=> res!2961482 e!4387363)))

(assert (=> b!7327173 (= res!2961482 (not (is-Concat!27847 (ite c!1360094 (regTwo!38517 (h!77822 (exprs!8442 ct1!256))) (regOne!38516 (h!77822 (exprs!8442 ct1!256)))))))))

(assert (=> b!7327173 (= e!4387362 e!4387363)))

(declare-fun b!7327174 () Bool)

(declare-fun e!4387359 () Bool)

(assert (=> b!7327174 (= e!4387359 e!4387362)))

(declare-fun c!1360158 () Bool)

(assert (=> b!7327174 (= c!1360158 (is-Union!19002 (ite c!1360094 (regTwo!38517 (h!77822 (exprs!8442 ct1!256))) (regOne!38516 (h!77822 (exprs!8442 ct1!256))))))))

(declare-fun b!7327175 () Bool)

(declare-fun e!4387357 () Bool)

(declare-fun call!666987 () Bool)

(assert (=> b!7327175 (= e!4387357 call!666987)))

(declare-fun b!7327176 () Bool)

(declare-fun e!4387361 () Bool)

(assert (=> b!7327176 (= e!4387361 e!4387359)))

(declare-fun c!1360159 () Bool)

(assert (=> b!7327176 (= c!1360159 (is-Star!19002 (ite c!1360094 (regTwo!38517 (h!77822 (exprs!8442 ct1!256))) (regOne!38516 (h!77822 (exprs!8442 ct1!256))))))))

(declare-fun bm!666982 () Bool)

(assert (=> bm!666982 (= call!666988 call!666987)))

(declare-fun bm!666983 () Bool)

(assert (=> bm!666983 (= call!666987 (validRegex!9639 (ite c!1360159 (reg!19331 (ite c!1360094 (regTwo!38517 (h!77822 (exprs!8442 ct1!256))) (regOne!38516 (h!77822 (exprs!8442 ct1!256))))) (ite c!1360158 (regOne!38517 (ite c!1360094 (regTwo!38517 (h!77822 (exprs!8442 ct1!256))) (regOne!38516 (h!77822 (exprs!8442 ct1!256))))) (regTwo!38516 (ite c!1360094 (regTwo!38517 (h!77822 (exprs!8442 ct1!256))) (regOne!38516 (h!77822 (exprs!8442 ct1!256)))))))))))

(declare-fun b!7327177 () Bool)

(assert (=> b!7327177 (= e!4387359 e!4387357)))

(declare-fun res!2961483 () Bool)

(assert (=> b!7327177 (= res!2961483 (not (nullable!8106 (reg!19331 (ite c!1360094 (regTwo!38517 (h!77822 (exprs!8442 ct1!256))) (regOne!38516 (h!77822 (exprs!8442 ct1!256))))))))))

(assert (=> b!7327177 (=> (not res!2961483) (not e!4387357))))

(declare-fun d!2275382 () Bool)

(declare-fun res!2961481 () Bool)

(assert (=> d!2275382 (=> res!2961481 e!4387361)))

(assert (=> d!2275382 (= res!2961481 (is-ElementMatch!19002 (ite c!1360094 (regTwo!38517 (h!77822 (exprs!8442 ct1!256))) (regOne!38516 (h!77822 (exprs!8442 ct1!256))))))))

(assert (=> d!2275382 (= (validRegex!9639 (ite c!1360094 (regTwo!38517 (h!77822 (exprs!8442 ct1!256))) (regOne!38516 (h!77822 (exprs!8442 ct1!256))))) e!4387361)))

(declare-fun bm!666984 () Bool)

(assert (=> bm!666984 (= call!666989 (validRegex!9639 (ite c!1360158 (regTwo!38517 (ite c!1360094 (regTwo!38517 (h!77822 (exprs!8442 ct1!256))) (regOne!38516 (h!77822 (exprs!8442 ct1!256))))) (regOne!38516 (ite c!1360094 (regTwo!38517 (h!77822 (exprs!8442 ct1!256))) (regOne!38516 (h!77822 (exprs!8442 ct1!256))))))))))

(declare-fun b!7327178 () Bool)

(assert (=> b!7327178 (= e!4387360 call!666989)))

(assert (= (and d!2275382 (not res!2961481)) b!7327176))

(assert (= (and b!7327176 c!1360159) b!7327177))

(assert (= (and b!7327176 (not c!1360159)) b!7327174))

(assert (= (and b!7327177 res!2961483) b!7327175))

(assert (= (and b!7327174 c!1360158) b!7327172))

(assert (= (and b!7327174 (not c!1360158)) b!7327173))

(assert (= (and b!7327172 res!2961484) b!7327178))

(assert (= (and b!7327173 (not res!2961482)) b!7327171))

(assert (= (and b!7327171 res!2961485) b!7327170))

(assert (= (or b!7327178 b!7327171) bm!666984))

(assert (= (or b!7327172 b!7327170) bm!666982))

(assert (= (or b!7327175 bm!666982) bm!666983))

(declare-fun m!7993016 () Bool)

(assert (=> bm!666983 m!7993016))

(declare-fun m!7993018 () Bool)

(assert (=> b!7327177 m!7993018))

(declare-fun m!7993020 () Bool)

(assert (=> bm!666984 m!7993020))

(assert (=> bm!666927 d!2275382))

(declare-fun d!2275384 () Bool)

(declare-fun res!2961486 () Bool)

(declare-fun e!4387364 () Bool)

(assert (=> d!2275384 (=> res!2961486 e!4387364)))

(assert (=> d!2275384 (= res!2961486 (is-Nil!71374 (exprs!8442 cWitness!35)))))

(assert (=> d!2275384 (= (forall!17853 (exprs!8442 cWitness!35) lambda!454183) e!4387364)))

(declare-fun b!7327179 () Bool)

(declare-fun e!4387365 () Bool)

(assert (=> b!7327179 (= e!4387364 e!4387365)))

(declare-fun res!2961487 () Bool)

(assert (=> b!7327179 (=> (not res!2961487) (not e!4387365))))

(assert (=> b!7327179 (= res!2961487 (dynLambda!29410 lambda!454183 (h!77822 (exprs!8442 cWitness!35))))))

(declare-fun b!7327180 () Bool)

(assert (=> b!7327180 (= e!4387365 (forall!17853 (t!385883 (exprs!8442 cWitness!35)) lambda!454183))))

(assert (= (and d!2275384 (not res!2961486)) b!7327179))

(assert (= (and b!7327179 res!2961487) b!7327180))

(declare-fun b_lambda!283385 () Bool)

(assert (=> (not b_lambda!283385) (not b!7327179)))

(declare-fun m!7993022 () Bool)

(assert (=> b!7327179 m!7993022))

(declare-fun m!7993024 () Bool)

(assert (=> b!7327180 m!7993024))

(assert (=> d!2275322 d!2275384))

(declare-fun d!2275386 () Bool)

(declare-fun res!2961488 () Bool)

(declare-fun e!4387366 () Bool)

(assert (=> d!2275386 (=> res!2961488 e!4387366)))

(assert (=> d!2275386 (= res!2961488 (is-Nil!71374 (exprs!8442 ct1!256)))))

(assert (=> d!2275386 (= (forall!17853 (exprs!8442 ct1!256) lambda!454184) e!4387366)))

(declare-fun b!7327181 () Bool)

(declare-fun e!4387367 () Bool)

(assert (=> b!7327181 (= e!4387366 e!4387367)))

(declare-fun res!2961489 () Bool)

(assert (=> b!7327181 (=> (not res!2961489) (not e!4387367))))

(assert (=> b!7327181 (= res!2961489 (dynLambda!29410 lambda!454184 (h!77822 (exprs!8442 ct1!256))))))

(declare-fun b!7327182 () Bool)

(assert (=> b!7327182 (= e!4387367 (forall!17853 (t!385883 (exprs!8442 ct1!256)) lambda!454184))))

(assert (= (and d!2275386 (not res!2961488)) b!7327181))

(assert (= (and b!7327181 res!2961489) b!7327182))

(declare-fun b_lambda!283387 () Bool)

(assert (=> (not b_lambda!283387) (not b!7327181)))

(declare-fun m!7993026 () Bool)

(assert (=> b!7327181 m!7993026))

(declare-fun m!7993028 () Bool)

(assert (=> b!7327182 m!7993028))

(assert (=> d!2275324 d!2275386))

(declare-fun e!4387368 () Bool)

(declare-fun b!7327186 () Bool)

(declare-fun lt!2606476 () List!71498)

(assert (=> b!7327186 (= e!4387368 (or (not (= (exprs!8442 ct2!352) Nil!71374)) (= lt!2606476 (t!385883 (exprs!8442 ct1!256)))))))

(declare-fun d!2275388 () Bool)

(assert (=> d!2275388 e!4387368))

(declare-fun res!2961490 () Bool)

(assert (=> d!2275388 (=> (not res!2961490) (not e!4387368))))

(assert (=> d!2275388 (= res!2961490 (= (content!14945 lt!2606476) (set.union (content!14945 (t!385883 (exprs!8442 ct1!256))) (content!14945 (exprs!8442 ct2!352)))))))

(declare-fun e!4387369 () List!71498)

(assert (=> d!2275388 (= lt!2606476 e!4387369)))

(declare-fun c!1360160 () Bool)

(assert (=> d!2275388 (= c!1360160 (is-Nil!71374 (t!385883 (exprs!8442 ct1!256))))))

(assert (=> d!2275388 (= (++!16826 (t!385883 (exprs!8442 ct1!256)) (exprs!8442 ct2!352)) lt!2606476)))

(declare-fun b!7327185 () Bool)

(declare-fun res!2961491 () Bool)

(assert (=> b!7327185 (=> (not res!2961491) (not e!4387368))))

(assert (=> b!7327185 (= res!2961491 (= (size!41922 lt!2606476) (+ (size!41922 (t!385883 (exprs!8442 ct1!256))) (size!41922 (exprs!8442 ct2!352)))))))

(declare-fun b!7327184 () Bool)

(assert (=> b!7327184 (= e!4387369 (Cons!71374 (h!77822 (t!385883 (exprs!8442 ct1!256))) (++!16826 (t!385883 (t!385883 (exprs!8442 ct1!256))) (exprs!8442 ct2!352))))))

(declare-fun b!7327183 () Bool)

(assert (=> b!7327183 (= e!4387369 (exprs!8442 ct2!352))))

(assert (= (and d!2275388 c!1360160) b!7327183))

(assert (= (and d!2275388 (not c!1360160)) b!7327184))

(assert (= (and d!2275388 res!2961490) b!7327185))

(assert (= (and b!7327185 res!2961491) b!7327186))

(declare-fun m!7993030 () Bool)

(assert (=> d!2275388 m!7993030))

(assert (=> d!2275388 m!7992962))

(assert (=> d!2275388 m!7992912))

(declare-fun m!7993032 () Bool)

(assert (=> b!7327185 m!7993032))

(assert (=> b!7327185 m!7993012))

(assert (=> b!7327185 m!7992918))

(declare-fun m!7993034 () Bool)

(assert (=> b!7327184 m!7993034))

(assert (=> b!7326996 d!2275388))

(declare-fun d!2275390 () Bool)

(assert (=> d!2275390 (= (nullable!8106 (regOne!38516 (h!77822 (exprs!8442 ct1!256)))) (nullableFct!3219 (regOne!38516 (h!77822 (exprs!8442 ct1!256)))))))

(declare-fun bs!1916823 () Bool)

(assert (= bs!1916823 d!2275390))

(declare-fun m!7993036 () Bool)

(assert (=> bs!1916823 m!7993036))

(assert (=> b!7326925 d!2275390))

(declare-fun b!7327187 () Bool)

(declare-fun e!4387372 () (Set Context!15884))

(declare-fun call!666990 () (Set Context!15884))

(assert (=> b!7327187 (= e!4387372 call!666990)))

(declare-fun b!7327188 () Bool)

(declare-fun e!4387371 () Bool)

(assert (=> b!7327188 (= e!4387371 (nullable!8106 (h!77822 (exprs!8442 (Context!15885 (t!385883 (exprs!8442 ct1!256)))))))))

(declare-fun e!4387370 () (Set Context!15884))

(declare-fun b!7327189 () Bool)

(assert (=> b!7327189 (= e!4387370 (set.union call!666990 (derivationStepZipperUp!2682 (Context!15885 (t!385883 (exprs!8442 (Context!15885 (t!385883 (exprs!8442 ct1!256)))))) c!10305)))))

(declare-fun b!7327190 () Bool)

(assert (=> b!7327190 (= e!4387370 e!4387372)))

(declare-fun c!1360161 () Bool)

(assert (=> b!7327190 (= c!1360161 (is-Cons!71374 (exprs!8442 (Context!15885 (t!385883 (exprs!8442 ct1!256))))))))

(declare-fun b!7327191 () Bool)

(assert (=> b!7327191 (= e!4387372 (as set.empty (Set Context!15884)))))

(declare-fun d!2275392 () Bool)

(declare-fun c!1360162 () Bool)

(assert (=> d!2275392 (= c!1360162 e!4387371)))

(declare-fun res!2961492 () Bool)

(assert (=> d!2275392 (=> (not res!2961492) (not e!4387371))))

(assert (=> d!2275392 (= res!2961492 (is-Cons!71374 (exprs!8442 (Context!15885 (t!385883 (exprs!8442 ct1!256))))))))

(assert (=> d!2275392 (= (derivationStepZipperUp!2682 (Context!15885 (t!385883 (exprs!8442 ct1!256))) c!10305) e!4387370)))

(declare-fun bm!666985 () Bool)

(assert (=> bm!666985 (= call!666990 (derivationStepZipperDown!2833 (h!77822 (exprs!8442 (Context!15885 (t!385883 (exprs!8442 ct1!256))))) (Context!15885 (t!385883 (exprs!8442 (Context!15885 (t!385883 (exprs!8442 ct1!256)))))) c!10305))))

(assert (= (and d!2275392 res!2961492) b!7327188))

(assert (= (and d!2275392 c!1360162) b!7327189))

(assert (= (and d!2275392 (not c!1360162)) b!7327190))

(assert (= (and b!7327190 c!1360161) b!7327187))

(assert (= (and b!7327190 (not c!1360161)) b!7327191))

(assert (= (or b!7327189 b!7327187) bm!666985))

(declare-fun m!7993038 () Bool)

(assert (=> b!7327188 m!7993038))

(declare-fun m!7993040 () Bool)

(assert (=> b!7327189 m!7993040))

(declare-fun m!7993042 () Bool)

(assert (=> bm!666985 m!7993042))

(assert (=> b!7326984 d!2275392))

(declare-fun d!2275394 () Bool)

(assert (=> d!2275394 (= (nullable!8106 (reg!19331 (h!77822 (exprs!8442 ct1!256)))) (nullableFct!3219 (reg!19331 (h!77822 (exprs!8442 ct1!256)))))))

(declare-fun bs!1916824 () Bool)

(assert (= bs!1916824 d!2275394))

(declare-fun m!7993044 () Bool)

(assert (=> bs!1916824 m!7993044))

(assert (=> b!7326966 d!2275394))

(declare-fun bm!666986 () Bool)

(declare-fun call!666996 () (Set Context!15884))

(declare-fun call!666995 () (Set Context!15884))

(assert (=> bm!666986 (= call!666996 call!666995)))

(declare-fun d!2275396 () Bool)

(declare-fun c!1360164 () Bool)

(assert (=> d!2275396 (= c!1360164 (and (is-ElementMatch!19002 (h!77822 (exprs!8442 ct1!256))) (= (c!1360071 (h!77822 (exprs!8442 ct1!256))) c!10305)))))

(declare-fun e!4387373 () (Set Context!15884))

(assert (=> d!2275396 (= (derivationStepZipperDown!2833 (h!77822 (exprs!8442 ct1!256)) (Context!15885 (t!385883 (exprs!8442 ct1!256))) c!10305) e!4387373)))

(declare-fun b!7327192 () Bool)

(declare-fun e!4387374 () (Set Context!15884))

(assert (=> b!7327192 (= e!4387373 e!4387374)))

(declare-fun c!1360165 () Bool)

(assert (=> b!7327192 (= c!1360165 (is-Union!19002 (h!77822 (exprs!8442 ct1!256))))))

(declare-fun c!1360167 () Bool)

(declare-fun c!1360163 () Bool)

(declare-fun bm!666987 () Bool)

(declare-fun call!666992 () List!71498)

(assert (=> bm!666987 (= call!666995 (derivationStepZipperDown!2833 (ite c!1360165 (regTwo!38517 (h!77822 (exprs!8442 ct1!256))) (ite c!1360167 (regTwo!38516 (h!77822 (exprs!8442 ct1!256))) (ite c!1360163 (regOne!38516 (h!77822 (exprs!8442 ct1!256))) (reg!19331 (h!77822 (exprs!8442 ct1!256)))))) (ite (or c!1360165 c!1360167) (Context!15885 (t!385883 (exprs!8442 ct1!256))) (Context!15885 call!666992)) c!10305))))

(declare-fun b!7327193 () Bool)

(declare-fun e!4387375 () (Set Context!15884))

(declare-fun call!666993 () (Set Context!15884))

(assert (=> b!7327193 (= e!4387375 call!666993)))

(declare-fun call!666994 () List!71498)

(declare-fun bm!666988 () Bool)

(assert (=> bm!666988 (= call!666994 ($colon$colon!3035 (exprs!8442 (Context!15885 (t!385883 (exprs!8442 ct1!256)))) (ite (or c!1360167 c!1360163) (regTwo!38516 (h!77822 (exprs!8442 ct1!256))) (h!77822 (exprs!8442 ct1!256)))))))

(declare-fun b!7327194 () Bool)

(declare-fun e!4387377 () (Set Context!15884))

(assert (=> b!7327194 (= e!4387377 call!666993)))

(declare-fun b!7327195 () Bool)

(declare-fun e!4387378 () Bool)

(assert (=> b!7327195 (= e!4387378 (nullable!8106 (regOne!38516 (h!77822 (exprs!8442 ct1!256)))))))

(declare-fun bm!666989 () Bool)

(declare-fun call!666991 () (Set Context!15884))

(assert (=> bm!666989 (= call!666991 (derivationStepZipperDown!2833 (ite c!1360165 (regOne!38517 (h!77822 (exprs!8442 ct1!256))) (regOne!38516 (h!77822 (exprs!8442 ct1!256)))) (ite c!1360165 (Context!15885 (t!385883 (exprs!8442 ct1!256))) (Context!15885 call!666994)) c!10305))))

(declare-fun b!7327196 () Bool)

(assert (=> b!7327196 (= e!4387373 (set.insert (Context!15885 (t!385883 (exprs!8442 ct1!256))) (as set.empty (Set Context!15884))))))

(declare-fun b!7327197 () Bool)

(declare-fun e!4387376 () (Set Context!15884))

(assert (=> b!7327197 (= e!4387376 e!4387377)))

(assert (=> b!7327197 (= c!1360163 (is-Concat!27847 (h!77822 (exprs!8442 ct1!256))))))

(declare-fun bm!666990 () Bool)

(assert (=> bm!666990 (= call!666992 call!666994)))

(declare-fun b!7327198 () Bool)

(assert (=> b!7327198 (= e!4387374 (set.union call!666991 call!666995))))

(declare-fun b!7327199 () Bool)

(declare-fun c!1360166 () Bool)

(assert (=> b!7327199 (= c!1360166 (is-Star!19002 (h!77822 (exprs!8442 ct1!256))))))

(assert (=> b!7327199 (= e!4387377 e!4387375)))

(declare-fun b!7327200 () Bool)

(assert (=> b!7327200 (= e!4387375 (as set.empty (Set Context!15884)))))

(declare-fun b!7327201 () Bool)

(assert (=> b!7327201 (= e!4387376 (set.union call!666991 call!666996))))

(declare-fun bm!666991 () Bool)

(assert (=> bm!666991 (= call!666993 call!666996)))

(declare-fun b!7327202 () Bool)

(assert (=> b!7327202 (= c!1360167 e!4387378)))

(declare-fun res!2961493 () Bool)

(assert (=> b!7327202 (=> (not res!2961493) (not e!4387378))))

(assert (=> b!7327202 (= res!2961493 (is-Concat!27847 (h!77822 (exprs!8442 ct1!256))))))

(assert (=> b!7327202 (= e!4387374 e!4387376)))

(assert (= (and d!2275396 c!1360164) b!7327196))

(assert (= (and d!2275396 (not c!1360164)) b!7327192))

(assert (= (and b!7327192 c!1360165) b!7327198))

(assert (= (and b!7327192 (not c!1360165)) b!7327202))

(assert (= (and b!7327202 res!2961493) b!7327195))

(assert (= (and b!7327202 c!1360167) b!7327201))

(assert (= (and b!7327202 (not c!1360167)) b!7327197))

(assert (= (and b!7327197 c!1360163) b!7327194))

(assert (= (and b!7327197 (not c!1360163)) b!7327199))

(assert (= (and b!7327199 c!1360166) b!7327193))

(assert (= (and b!7327199 (not c!1360166)) b!7327200))

(assert (= (or b!7327194 b!7327193) bm!666990))

(assert (= (or b!7327194 b!7327193) bm!666991))

(assert (= (or b!7327201 bm!666991) bm!666986))

(assert (= (or b!7327201 bm!666990) bm!666988))

(assert (= (or b!7327198 bm!666986) bm!666987))

(assert (= (or b!7327198 b!7327201) bm!666989))

(declare-fun m!7993046 () Bool)

(assert (=> bm!666987 m!7993046))

(assert (=> b!7327195 m!7992864))

(declare-fun m!7993048 () Bool)

(assert (=> b!7327196 m!7993048))

(declare-fun m!7993050 () Bool)

(assert (=> bm!666988 m!7993050))

(declare-fun m!7993052 () Bool)

(assert (=> bm!666989 m!7993052))

(assert (=> bm!666930 d!2275396))

(declare-fun b!7327214 () Bool)

(declare-fun e!4387381 () Bool)

(declare-fun tp!2080678 () Bool)

(declare-fun tp!2080681 () Bool)

(assert (=> b!7327214 (= e!4387381 (and tp!2080678 tp!2080681))))

(declare-fun b!7327216 () Bool)

(declare-fun tp!2080680 () Bool)

(declare-fun tp!2080679 () Bool)

(assert (=> b!7327216 (= e!4387381 (and tp!2080680 tp!2080679))))

(declare-fun b!7327215 () Bool)

(declare-fun tp!2080682 () Bool)

(assert (=> b!7327215 (= e!4387381 tp!2080682)))

(declare-fun b!7327213 () Bool)

(assert (=> b!7327213 (= e!4387381 tp_is_empty!48249)))

(assert (=> b!7327023 (= tp!2080656 e!4387381)))

(assert (= (and b!7327023 (is-ElementMatch!19002 (h!77822 (exprs!8442 ct2!352)))) b!7327213))

(assert (= (and b!7327023 (is-Concat!27847 (h!77822 (exprs!8442 ct2!352)))) b!7327214))

(assert (= (and b!7327023 (is-Star!19002 (h!77822 (exprs!8442 ct2!352)))) b!7327215))

(assert (= (and b!7327023 (is-Union!19002 (h!77822 (exprs!8442 ct2!352)))) b!7327216))

(declare-fun b!7327217 () Bool)

(declare-fun e!4387382 () Bool)

(declare-fun tp!2080683 () Bool)

(declare-fun tp!2080684 () Bool)

(assert (=> b!7327217 (= e!4387382 (and tp!2080683 tp!2080684))))

(assert (=> b!7327023 (= tp!2080657 e!4387382)))

(assert (= (and b!7327023 (is-Cons!71374 (t!385883 (exprs!8442 ct2!352)))) b!7327217))

(declare-fun b!7327219 () Bool)

(declare-fun e!4387383 () Bool)

(declare-fun tp!2080685 () Bool)

(declare-fun tp!2080688 () Bool)

(assert (=> b!7327219 (= e!4387383 (and tp!2080685 tp!2080688))))

(declare-fun b!7327221 () Bool)

(declare-fun tp!2080687 () Bool)

(declare-fun tp!2080686 () Bool)

(assert (=> b!7327221 (= e!4387383 (and tp!2080687 tp!2080686))))

(declare-fun b!7327220 () Bool)

(declare-fun tp!2080689 () Bool)

(assert (=> b!7327220 (= e!4387383 tp!2080689)))

(declare-fun b!7327218 () Bool)

(assert (=> b!7327218 (= e!4387383 tp_is_empty!48249)))

(assert (=> b!7327022 (= tp!2080654 e!4387383)))

(assert (= (and b!7327022 (is-ElementMatch!19002 (h!77822 (exprs!8442 ct1!256)))) b!7327218))

(assert (= (and b!7327022 (is-Concat!27847 (h!77822 (exprs!8442 ct1!256)))) b!7327219))

(assert (= (and b!7327022 (is-Star!19002 (h!77822 (exprs!8442 ct1!256)))) b!7327220))

(assert (= (and b!7327022 (is-Union!19002 (h!77822 (exprs!8442 ct1!256)))) b!7327221))

(declare-fun b!7327222 () Bool)

(declare-fun e!4387384 () Bool)

(declare-fun tp!2080690 () Bool)

(declare-fun tp!2080691 () Bool)

(assert (=> b!7327222 (= e!4387384 (and tp!2080690 tp!2080691))))

(assert (=> b!7327022 (= tp!2080655 e!4387384)))

(assert (= (and b!7327022 (is-Cons!71374 (t!385883 (exprs!8442 ct1!256)))) b!7327222))

(declare-fun b!7327224 () Bool)

(declare-fun e!4387385 () Bool)

(declare-fun tp!2080692 () Bool)

(declare-fun tp!2080695 () Bool)

(assert (=> b!7327224 (= e!4387385 (and tp!2080692 tp!2080695))))

(declare-fun b!7327226 () Bool)

(declare-fun tp!2080694 () Bool)

(declare-fun tp!2080693 () Bool)

(assert (=> b!7327226 (= e!4387385 (and tp!2080694 tp!2080693))))

(declare-fun b!7327225 () Bool)

(declare-fun tp!2080696 () Bool)

(assert (=> b!7327225 (= e!4387385 tp!2080696)))

(declare-fun b!7327223 () Bool)

(assert (=> b!7327223 (= e!4387385 tp_is_empty!48249)))

(assert (=> b!7327021 (= tp!2080652 e!4387385)))

(assert (= (and b!7327021 (is-ElementMatch!19002 (h!77822 (exprs!8442 cWitness!35)))) b!7327223))

(assert (= (and b!7327021 (is-Concat!27847 (h!77822 (exprs!8442 cWitness!35)))) b!7327224))

(assert (= (and b!7327021 (is-Star!19002 (h!77822 (exprs!8442 cWitness!35)))) b!7327225))

(assert (= (and b!7327021 (is-Union!19002 (h!77822 (exprs!8442 cWitness!35)))) b!7327226))

(declare-fun b!7327227 () Bool)

(declare-fun e!4387386 () Bool)

(declare-fun tp!2080697 () Bool)

(declare-fun tp!2080698 () Bool)

(assert (=> b!7327227 (= e!4387386 (and tp!2080697 tp!2080698))))

(assert (=> b!7327021 (= tp!2080653 e!4387386)))

(assert (= (and b!7327021 (is-Cons!71374 (t!385883 (exprs!8442 cWitness!35)))) b!7327227))

(declare-fun b_lambda!283389 () Bool)

(assert (= b_lambda!283385 (or d!2275322 b_lambda!283389)))

(declare-fun bs!1916825 () Bool)

(declare-fun d!2275398 () Bool)

(assert (= bs!1916825 (and d!2275398 d!2275322)))

(assert (=> bs!1916825 (= (dynLambda!29410 lambda!454183 (h!77822 (exprs!8442 cWitness!35))) (validRegex!9639 (h!77822 (exprs!8442 cWitness!35))))))

(declare-fun m!7993054 () Bool)

(assert (=> bs!1916825 m!7993054))

(assert (=> b!7327179 d!2275398))

(declare-fun b_lambda!283391 () Bool)

(assert (= b_lambda!283383 (or d!2275326 b_lambda!283391)))

(declare-fun bs!1916826 () Bool)

(declare-fun d!2275400 () Bool)

(assert (= bs!1916826 (and d!2275400 d!2275326)))

(assert (=> bs!1916826 (= (dynLambda!29410 lambda!454185 (h!77822 (exprs!8442 ct2!352))) (validRegex!9639 (h!77822 (exprs!8442 ct2!352))))))

(declare-fun m!7993056 () Bool)

(assert (=> bs!1916826 m!7993056))

(assert (=> b!7327147 d!2275400))

(declare-fun b_lambda!283393 () Bool)

(assert (= b_lambda!283381 (or b!7326869 b_lambda!283393)))

(declare-fun bs!1916827 () Bool)

(declare-fun d!2275402 () Bool)

(assert (= bs!1916827 (and d!2275402 b!7326869)))

(assert (=> bs!1916827 (= (dynLambda!29410 lambda!454177 (h!77822 (exprs!8442 ct1!256))) (validRegex!9639 (h!77822 (exprs!8442 ct1!256))))))

(assert (=> bs!1916827 m!7992826))

(assert (=> b!7327115 d!2275402))

(declare-fun b_lambda!283395 () Bool)

(assert (= b_lambda!283387 (or d!2275324 b_lambda!283395)))

(declare-fun bs!1916828 () Bool)

(declare-fun d!2275404 () Bool)

(assert (= bs!1916828 (and d!2275404 d!2275324)))

(assert (=> bs!1916828 (= (dynLambda!29410 lambda!454184 (h!77822 (exprs!8442 ct1!256))) (validRegex!9639 (h!77822 (exprs!8442 ct1!256))))))

(assert (=> bs!1916828 m!7992826))

(assert (=> b!7327181 d!2275404))

(declare-fun b_lambda!283397 () Bool)

(assert (= b_lambda!283379 (or b!7326869 b_lambda!283397)))

(declare-fun bs!1916829 () Bool)

(declare-fun d!2275406 () Bool)

(assert (= bs!1916829 (and d!2275406 b!7326869)))

(assert (=> bs!1916829 (= (dynLambda!29410 lambda!454177 (h!77822 (++!16826 (exprs!8442 ct1!256) (exprs!8442 ct2!352)))) (validRegex!9639 (h!77822 (++!16826 (exprs!8442 ct1!256) (exprs!8442 ct2!352)))))))

(declare-fun m!7993058 () Bool)

(assert (=> bs!1916829 m!7993058))

(assert (=> b!7327113 d!2275406))

(push 1)

(assert (not d!2275394))

(assert (not b!7327116))

(assert (not bm!666975))

(assert (not b_lambda!283397))

(assert (not b!7327189))

(assert (not bm!666983))

(assert (not b_lambda!283395))

(assert (not b!7327152))

(assert (not b_lambda!283389))

(assert (not b!7327225))

(assert (not d!2275388))

(assert (not b!7327169))

(assert (not b!7327101))

(assert tp_is_empty!48249)

(assert (not b!7327182))

(assert (not b!7327195))

(assert (not b!7327226))

(assert (not b!7327224))

(assert (not bm!666978))

(assert (not b!7327219))

(assert (not bm!666987))

(assert (not b!7327184))

(assert (not b!7327165))

(assert (not b!7327148))

(assert (not b!7327177))

(assert (not d!2275362))

(assert (not bs!1916827))

(assert (not bs!1916829))

(assert (not bm!666989))

(assert (not b!7327217))

(assert (not b!7327093))

(assert (not b!7327185))

(assert (not bs!1916828))

(assert (not b!7327097))

(assert (not bm!666979))

(assert (not bm!666962))

(assert (not d!2275390))

(assert (not b!7327214))

(assert (not b!7327215))

(assert (not bs!1916825))

(assert (not b!7327221))

(assert (not b!7327220))

(assert (not b!7327227))

(assert (not bm!666984))

(assert (not b!7327167))

(assert (not b!7327216))

(assert (not bm!666963))

(assert (not b_lambda!283393))

(assert (not bm!666985))

(assert (not b!7327114))

(assert (not b!7327188))

(assert (not b!7327095))

(assert (not bm!666971))

(assert (not bm!666964))

(assert (not b_lambda!283391))

(assert (not bm!666977))

(assert (not bm!666972))

(assert (not b!7327180))

(assert (not bm!666974))

(assert (not b!7327145))

(assert (not b!7327222))

(assert (not bs!1916826))

(assert (not bm!666988))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

