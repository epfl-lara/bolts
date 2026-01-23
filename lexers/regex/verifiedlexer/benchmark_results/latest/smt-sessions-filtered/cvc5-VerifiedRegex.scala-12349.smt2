; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!692262 () Bool)

(assert start!692262)

(declare-fun b!7111855 () Bool)

(declare-fun e!4273942 () Bool)

(declare-fun tp_is_empty!45113 () Bool)

(assert (=> b!7111855 (= e!4273942 tp_is_empty!45113)))

(declare-fun b!7111856 () Bool)

(declare-fun e!4273944 () Bool)

(declare-fun tp!1956474 () Bool)

(assert (=> b!7111856 (= e!4273944 tp!1956474)))

(declare-fun b!7111857 () Bool)

(declare-fun tp!1956472 () Bool)

(declare-fun tp!1956473 () Bool)

(assert (=> b!7111857 (= e!4273942 (and tp!1956472 tp!1956473))))

(declare-fun b!7111858 () Bool)

(declare-fun e!4273941 () Bool)

(declare-datatypes ((C!36150 0))(
  ( (C!36151 (val!27781 Int)) )
))
(declare-datatypes ((Regex!17940 0))(
  ( (ElementMatch!17940 (c!1327311 C!36150)) (Concat!26785 (regOne!36392 Regex!17940) (regTwo!36392 Regex!17940)) (EmptyExpr!17940) (Star!17940 (reg!18269 Regex!17940)) (EmptyLang!17940) (Union!17940 (regOne!36393 Regex!17940) (regTwo!36393 Regex!17940)) )
))
(declare-fun r!11554 () Regex!17940)

(declare-fun nullable!7577 (Regex!17940) Bool)

(assert (=> b!7111858 (= e!4273941 (not (nullable!7577 (regOne!36392 r!11554))))))

(declare-fun b!7111859 () Bool)

(declare-fun res!2902159 () Bool)

(declare-fun e!4273945 () Bool)

(assert (=> b!7111859 (=> (not res!2902159) (not e!4273945))))

(declare-fun a!1901 () C!36150)

(assert (=> b!7111859 (= res!2902159 (and (or (not (is-ElementMatch!17940 r!11554)) (not (= (c!1327311 r!11554) a!1901))) (not (is-Union!17940 r!11554))))))

(declare-fun b!7111860 () Bool)

(declare-fun e!4273943 () Bool)

(declare-fun tp!1956471 () Bool)

(assert (=> b!7111860 (= e!4273943 tp!1956471)))

(declare-fun b!7111861 () Bool)

(declare-fun res!2902158 () Bool)

(assert (=> b!7111861 (=> (not res!2902158) (not e!4273945))))

(assert (=> b!7111861 (= res!2902158 (is-Concat!26785 r!11554))))

(declare-fun res!2902157 () Bool)

(assert (=> start!692262 (=> (not res!2902157) (not e!4273945))))

(declare-fun validRegex!9213 (Regex!17940) Bool)

(assert (=> start!692262 (= res!2902157 (validRegex!9213 r!11554))))

(assert (=> start!692262 e!4273945))

(assert (=> start!692262 e!4273942))

(assert (=> start!692262 tp_is_empty!45113))

(declare-datatypes ((List!68901 0))(
  ( (Nil!68777) (Cons!68777 (h!75225 Regex!17940) (t!382736 List!68901)) )
))
(declare-datatypes ((Context!13868 0))(
  ( (Context!13869 (exprs!7434 List!68901)) )
))
(declare-fun c!9994 () Context!13868)

(declare-fun inv!87714 (Context!13868) Bool)

(assert (=> start!692262 (and (inv!87714 c!9994) e!4273944)))

(declare-fun auxCtx!45 () Context!13868)

(assert (=> start!692262 (and (inv!87714 auxCtx!45) e!4273943)))

(declare-fun b!7111862 () Bool)

(declare-fun tp!1956475 () Bool)

(assert (=> b!7111862 (= e!4273942 tp!1956475)))

(declare-fun b!7111863 () Bool)

(declare-fun res!2902156 () Bool)

(assert (=> b!7111863 (=> (not res!2902156) (not e!4273945))))

(assert (=> b!7111863 (= res!2902156 e!4273941)))

(declare-fun res!2902155 () Bool)

(assert (=> b!7111863 (=> res!2902155 e!4273941)))

(assert (=> b!7111863 (= res!2902155 (not (is-Concat!26785 r!11554)))))

(declare-fun b!7111864 () Bool)

(declare-fun tp!1956477 () Bool)

(declare-fun tp!1956476 () Bool)

(assert (=> b!7111864 (= e!4273942 (and tp!1956477 tp!1956476))))

(declare-fun b!7111865 () Bool)

(assert (=> b!7111865 (= e!4273945 (not (validRegex!9213 (regTwo!36392 r!11554))))))

(declare-fun lt!2560159 () List!68901)

(declare-fun ++!16092 (List!68901 List!68901) List!68901)

(assert (=> b!7111865 (= lt!2560159 (++!16092 (exprs!7434 c!9994) (exprs!7434 auxCtx!45)))))

(declare-datatypes ((Unit!162551 0))(
  ( (Unit!162552) )
))
(declare-fun lt!2560157 () Unit!162551)

(declare-fun lambda!432106 () Int)

(declare-fun lemmaConcatPreservesForall!1225 (List!68901 List!68901 Int) Unit!162551)

(assert (=> b!7111865 (= lt!2560157 (lemmaConcatPreservesForall!1225 (exprs!7434 c!9994) (exprs!7434 auxCtx!45) lambda!432106))))

(declare-fun lt!2560158 () Unit!162551)

(assert (=> b!7111865 (= lt!2560158 (lemmaConcatPreservesForall!1225 (exprs!7434 c!9994) (exprs!7434 auxCtx!45) lambda!432106))))

(assert (= (and start!692262 res!2902157) b!7111859))

(assert (= (and b!7111859 res!2902159) b!7111863))

(assert (= (and b!7111863 (not res!2902155)) b!7111858))

(assert (= (and b!7111863 res!2902156) b!7111861))

(assert (= (and b!7111861 res!2902158) b!7111865))

(assert (= (and start!692262 (is-ElementMatch!17940 r!11554)) b!7111855))

(assert (= (and start!692262 (is-Concat!26785 r!11554)) b!7111857))

(assert (= (and start!692262 (is-Star!17940 r!11554)) b!7111862))

(assert (= (and start!692262 (is-Union!17940 r!11554)) b!7111864))

(assert (= start!692262 b!7111856))

(assert (= start!692262 b!7111860))

(declare-fun m!7832884 () Bool)

(assert (=> b!7111858 m!7832884))

(declare-fun m!7832886 () Bool)

(assert (=> start!692262 m!7832886))

(declare-fun m!7832888 () Bool)

(assert (=> start!692262 m!7832888))

(declare-fun m!7832890 () Bool)

(assert (=> start!692262 m!7832890))

(declare-fun m!7832892 () Bool)

(assert (=> b!7111865 m!7832892))

(declare-fun m!7832894 () Bool)

(assert (=> b!7111865 m!7832894))

(declare-fun m!7832896 () Bool)

(assert (=> b!7111865 m!7832896))

(assert (=> b!7111865 m!7832896))

(push 1)

(assert tp_is_empty!45113)

(assert (not b!7111865))

(assert (not b!7111862))

(assert (not b!7111857))

(assert (not b!7111860))

(assert (not b!7111856))

(assert (not start!692262))

(assert (not b!7111858))

(assert (not b!7111864))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!2220428 () Bool)

(declare-fun nullableFct!2930 (Regex!17940) Bool)

(assert (=> d!2220428 (= (nullable!7577 (regOne!36392 r!11554)) (nullableFct!2930 (regOne!36392 r!11554)))))

(declare-fun bs!1885267 () Bool)

(assert (= bs!1885267 d!2220428))

(declare-fun m!7832912 () Bool)

(assert (=> bs!1885267 m!7832912))

(assert (=> b!7111858 d!2220428))

(declare-fun b!7111917 () Bool)

(declare-fun e!4273980 () Bool)

(declare-fun call!649088 () Bool)

(assert (=> b!7111917 (= e!4273980 call!649088)))

(declare-fun bm!649083 () Bool)

(declare-fun call!649089 () Bool)

(assert (=> bm!649083 (= call!649088 call!649089)))

(declare-fun b!7111918 () Bool)

(declare-fun res!2902188 () Bool)

(assert (=> b!7111918 (=> (not res!2902188) (not e!4273980))))

(declare-fun call!649090 () Bool)

(assert (=> b!7111918 (= res!2902188 call!649090)))

(declare-fun e!4273975 () Bool)

(assert (=> b!7111918 (= e!4273975 e!4273980)))

(declare-fun b!7111919 () Bool)

(declare-fun e!4273977 () Bool)

(assert (=> b!7111919 (= e!4273977 call!649089)))

(declare-fun b!7111920 () Bool)

(declare-fun e!4273979 () Bool)

(assert (=> b!7111920 (= e!4273979 call!649090)))

(declare-fun b!7111921 () Bool)

(declare-fun res!2902187 () Bool)

(declare-fun e!4273976 () Bool)

(assert (=> b!7111921 (=> res!2902187 e!4273976)))

(assert (=> b!7111921 (= res!2902187 (not (is-Concat!26785 (regTwo!36392 r!11554))))))

(assert (=> b!7111921 (= e!4273975 e!4273976)))

(declare-fun b!7111922 () Bool)

(declare-fun e!4273981 () Bool)

(declare-fun e!4273978 () Bool)

(assert (=> b!7111922 (= e!4273981 e!4273978)))

(declare-fun c!1327318 () Bool)

(assert (=> b!7111922 (= c!1327318 (is-Star!17940 (regTwo!36392 r!11554)))))

(declare-fun b!7111923 () Bool)

(assert (=> b!7111923 (= e!4273978 e!4273977)))

(declare-fun res!2902189 () Bool)

(assert (=> b!7111923 (= res!2902189 (not (nullable!7577 (reg!18269 (regTwo!36392 r!11554)))))))

(assert (=> b!7111923 (=> (not res!2902189) (not e!4273977))))

(declare-fun d!2220430 () Bool)

(declare-fun res!2902185 () Bool)

(assert (=> d!2220430 (=> res!2902185 e!4273981)))

(assert (=> d!2220430 (= res!2902185 (is-ElementMatch!17940 (regTwo!36392 r!11554)))))

(assert (=> d!2220430 (= (validRegex!9213 (regTwo!36392 r!11554)) e!4273981)))

(declare-fun bm!649084 () Bool)

(declare-fun c!1327317 () Bool)

(assert (=> bm!649084 (= call!649089 (validRegex!9213 (ite c!1327318 (reg!18269 (regTwo!36392 r!11554)) (ite c!1327317 (regTwo!36393 (regTwo!36392 r!11554)) (regOne!36392 (regTwo!36392 r!11554))))))))

(declare-fun b!7111924 () Bool)

(assert (=> b!7111924 (= e!4273978 e!4273975)))

(assert (=> b!7111924 (= c!1327317 (is-Union!17940 (regTwo!36392 r!11554)))))

(declare-fun b!7111925 () Bool)

(assert (=> b!7111925 (= e!4273976 e!4273979)))

(declare-fun res!2902186 () Bool)

(assert (=> b!7111925 (=> (not res!2902186) (not e!4273979))))

(assert (=> b!7111925 (= res!2902186 call!649088)))

(declare-fun bm!649085 () Bool)

(assert (=> bm!649085 (= call!649090 (validRegex!9213 (ite c!1327317 (regOne!36393 (regTwo!36392 r!11554)) (regTwo!36392 (regTwo!36392 r!11554)))))))

(assert (= (and d!2220430 (not res!2902185)) b!7111922))

(assert (= (and b!7111922 c!1327318) b!7111923))

(assert (= (and b!7111922 (not c!1327318)) b!7111924))

(assert (= (and b!7111923 res!2902189) b!7111919))

(assert (= (and b!7111924 c!1327317) b!7111918))

(assert (= (and b!7111924 (not c!1327317)) b!7111921))

(assert (= (and b!7111918 res!2902188) b!7111917))

(assert (= (and b!7111921 (not res!2902187)) b!7111925))

(assert (= (and b!7111925 res!2902186) b!7111920))

(assert (= (or b!7111918 b!7111920) bm!649085))

(assert (= (or b!7111917 b!7111925) bm!649083))

(assert (= (or b!7111919 bm!649083) bm!649084))

(declare-fun m!7832914 () Bool)

(assert (=> b!7111923 m!7832914))

(declare-fun m!7832916 () Bool)

(assert (=> bm!649084 m!7832916))

(declare-fun m!7832918 () Bool)

(assert (=> bm!649085 m!7832918))

(assert (=> b!7111865 d!2220430))

(declare-fun b!7111936 () Bool)

(declare-fun res!2902194 () Bool)

(declare-fun e!4273986 () Bool)

(assert (=> b!7111936 (=> (not res!2902194) (not e!4273986))))

(declare-fun lt!2560171 () List!68901)

(declare-fun size!41399 (List!68901) Int)

(assert (=> b!7111936 (= res!2902194 (= (size!41399 lt!2560171) (+ (size!41399 (exprs!7434 c!9994)) (size!41399 (exprs!7434 auxCtx!45)))))))

(declare-fun d!2220432 () Bool)

(assert (=> d!2220432 e!4273986))

(declare-fun res!2902195 () Bool)

(assert (=> d!2220432 (=> (not res!2902195) (not e!4273986))))

(declare-fun content!14024 (List!68901) (Set Regex!17940))

(assert (=> d!2220432 (= res!2902195 (= (content!14024 lt!2560171) (set.union (content!14024 (exprs!7434 c!9994)) (content!14024 (exprs!7434 auxCtx!45)))))))

(declare-fun e!4273987 () List!68901)

(assert (=> d!2220432 (= lt!2560171 e!4273987)))

(declare-fun c!1327321 () Bool)

(assert (=> d!2220432 (= c!1327321 (is-Nil!68777 (exprs!7434 c!9994)))))

(assert (=> d!2220432 (= (++!16092 (exprs!7434 c!9994) (exprs!7434 auxCtx!45)) lt!2560171)))

(declare-fun b!7111937 () Bool)

(assert (=> b!7111937 (= e!4273986 (or (not (= (exprs!7434 auxCtx!45) Nil!68777)) (= lt!2560171 (exprs!7434 c!9994))))))

(declare-fun b!7111935 () Bool)

(assert (=> b!7111935 (= e!4273987 (Cons!68777 (h!75225 (exprs!7434 c!9994)) (++!16092 (t!382736 (exprs!7434 c!9994)) (exprs!7434 auxCtx!45))))))

(declare-fun b!7111934 () Bool)

(assert (=> b!7111934 (= e!4273987 (exprs!7434 auxCtx!45))))

(assert (= (and d!2220432 c!1327321) b!7111934))

(assert (= (and d!2220432 (not c!1327321)) b!7111935))

(assert (= (and d!2220432 res!2902195) b!7111936))

(assert (= (and b!7111936 res!2902194) b!7111937))

(declare-fun m!7832920 () Bool)

(assert (=> b!7111936 m!7832920))

(declare-fun m!7832922 () Bool)

(assert (=> b!7111936 m!7832922))

(declare-fun m!7832924 () Bool)

(assert (=> b!7111936 m!7832924))

(declare-fun m!7832926 () Bool)

(assert (=> d!2220432 m!7832926))

(declare-fun m!7832928 () Bool)

(assert (=> d!2220432 m!7832928))

(declare-fun m!7832930 () Bool)

(assert (=> d!2220432 m!7832930))

(declare-fun m!7832932 () Bool)

(assert (=> b!7111935 m!7832932))

(assert (=> b!7111865 d!2220432))

(declare-fun d!2220436 () Bool)

(declare-fun forall!16839 (List!68901 Int) Bool)

(assert (=> d!2220436 (forall!16839 (++!16092 (exprs!7434 c!9994) (exprs!7434 auxCtx!45)) lambda!432106)))

(declare-fun lt!2560174 () Unit!162551)

(declare-fun choose!54868 (List!68901 List!68901 Int) Unit!162551)

(assert (=> d!2220436 (= lt!2560174 (choose!54868 (exprs!7434 c!9994) (exprs!7434 auxCtx!45) lambda!432106))))

(assert (=> d!2220436 (forall!16839 (exprs!7434 c!9994) lambda!432106)))

(assert (=> d!2220436 (= (lemmaConcatPreservesForall!1225 (exprs!7434 c!9994) (exprs!7434 auxCtx!45) lambda!432106) lt!2560174)))

(declare-fun bs!1885269 () Bool)

(assert (= bs!1885269 d!2220436))

(assert (=> bs!1885269 m!7832894))

(assert (=> bs!1885269 m!7832894))

(declare-fun m!7832936 () Bool)

(assert (=> bs!1885269 m!7832936))

(declare-fun m!7832938 () Bool)

(assert (=> bs!1885269 m!7832938))

(declare-fun m!7832940 () Bool)

(assert (=> bs!1885269 m!7832940))

(assert (=> b!7111865 d!2220436))

(declare-fun b!7111938 () Bool)

(declare-fun e!4273993 () Bool)

(declare-fun call!649091 () Bool)

(assert (=> b!7111938 (= e!4273993 call!649091)))

(declare-fun bm!649086 () Bool)

(declare-fun call!649092 () Bool)

(assert (=> bm!649086 (= call!649091 call!649092)))

(declare-fun b!7111939 () Bool)

(declare-fun res!2902199 () Bool)

(assert (=> b!7111939 (=> (not res!2902199) (not e!4273993))))

(declare-fun call!649093 () Bool)

(assert (=> b!7111939 (= res!2902199 call!649093)))

(declare-fun e!4273988 () Bool)

(assert (=> b!7111939 (= e!4273988 e!4273993)))

(declare-fun b!7111940 () Bool)

(declare-fun e!4273990 () Bool)

(assert (=> b!7111940 (= e!4273990 call!649092)))

(declare-fun b!7111941 () Bool)

(declare-fun e!4273992 () Bool)

(assert (=> b!7111941 (= e!4273992 call!649093)))

(declare-fun b!7111942 () Bool)

(declare-fun res!2902198 () Bool)

(declare-fun e!4273989 () Bool)

(assert (=> b!7111942 (=> res!2902198 e!4273989)))

(assert (=> b!7111942 (= res!2902198 (not (is-Concat!26785 r!11554)))))

(assert (=> b!7111942 (= e!4273988 e!4273989)))

(declare-fun b!7111943 () Bool)

(declare-fun e!4273994 () Bool)

(declare-fun e!4273991 () Bool)

(assert (=> b!7111943 (= e!4273994 e!4273991)))

(declare-fun c!1327323 () Bool)

(assert (=> b!7111943 (= c!1327323 (is-Star!17940 r!11554))))

(declare-fun b!7111944 () Bool)

(assert (=> b!7111944 (= e!4273991 e!4273990)))

(declare-fun res!2902200 () Bool)

(assert (=> b!7111944 (= res!2902200 (not (nullable!7577 (reg!18269 r!11554))))))

(assert (=> b!7111944 (=> (not res!2902200) (not e!4273990))))

(declare-fun d!2220440 () Bool)

(declare-fun res!2902196 () Bool)

(assert (=> d!2220440 (=> res!2902196 e!4273994)))

(assert (=> d!2220440 (= res!2902196 (is-ElementMatch!17940 r!11554))))

(assert (=> d!2220440 (= (validRegex!9213 r!11554) e!4273994)))

(declare-fun bm!649087 () Bool)

(declare-fun c!1327322 () Bool)

(assert (=> bm!649087 (= call!649092 (validRegex!9213 (ite c!1327323 (reg!18269 r!11554) (ite c!1327322 (regTwo!36393 r!11554) (regOne!36392 r!11554)))))))

(declare-fun b!7111945 () Bool)

(assert (=> b!7111945 (= e!4273991 e!4273988)))

(assert (=> b!7111945 (= c!1327322 (is-Union!17940 r!11554))))

(declare-fun b!7111946 () Bool)

(assert (=> b!7111946 (= e!4273989 e!4273992)))

(declare-fun res!2902197 () Bool)

(assert (=> b!7111946 (=> (not res!2902197) (not e!4273992))))

(assert (=> b!7111946 (= res!2902197 call!649091)))

(declare-fun bm!649088 () Bool)

(assert (=> bm!649088 (= call!649093 (validRegex!9213 (ite c!1327322 (regOne!36393 r!11554) (regTwo!36392 r!11554))))))

(assert (= (and d!2220440 (not res!2902196)) b!7111943))

(assert (= (and b!7111943 c!1327323) b!7111944))

(assert (= (and b!7111943 (not c!1327323)) b!7111945))

(assert (= (and b!7111944 res!2902200) b!7111940))

(assert (= (and b!7111945 c!1327322) b!7111939))

(assert (= (and b!7111945 (not c!1327322)) b!7111942))

(assert (= (and b!7111939 res!2902199) b!7111938))

(assert (= (and b!7111942 (not res!2902198)) b!7111946))

(assert (= (and b!7111946 res!2902197) b!7111941))

(assert (= (or b!7111939 b!7111941) bm!649088))

(assert (= (or b!7111938 b!7111946) bm!649086))

(assert (= (or b!7111940 bm!649086) bm!649087))

(declare-fun m!7832942 () Bool)

(assert (=> b!7111944 m!7832942))

(declare-fun m!7832944 () Bool)

(assert (=> bm!649087 m!7832944))

(declare-fun m!7832946 () Bool)

(assert (=> bm!649088 m!7832946))

(assert (=> start!692262 d!2220440))

(declare-fun bs!1885270 () Bool)

(declare-fun d!2220442 () Bool)

(assert (= bs!1885270 (and d!2220442 b!7111865)))

(declare-fun lambda!432114 () Int)

(assert (=> bs!1885270 (= lambda!432114 lambda!432106)))

(assert (=> d!2220442 (= (inv!87714 c!9994) (forall!16839 (exprs!7434 c!9994) lambda!432114))))

(declare-fun bs!1885271 () Bool)

(assert (= bs!1885271 d!2220442))

(declare-fun m!7832948 () Bool)

(assert (=> bs!1885271 m!7832948))

(assert (=> start!692262 d!2220442))

(declare-fun bs!1885272 () Bool)

(declare-fun d!2220444 () Bool)

(assert (= bs!1885272 (and d!2220444 b!7111865)))

(declare-fun lambda!432115 () Int)

(assert (=> bs!1885272 (= lambda!432115 lambda!432106)))

(declare-fun bs!1885273 () Bool)

(assert (= bs!1885273 (and d!2220444 d!2220442)))

(assert (=> bs!1885273 (= lambda!432115 lambda!432114)))

(assert (=> d!2220444 (= (inv!87714 auxCtx!45) (forall!16839 (exprs!7434 auxCtx!45) lambda!432115))))

(declare-fun bs!1885274 () Bool)

(assert (= bs!1885274 d!2220444))

(declare-fun m!7832950 () Bool)

(assert (=> bs!1885274 m!7832950))

(assert (=> start!692262 d!2220444))

(declare-fun b!7111963 () Bool)

(declare-fun e!4273999 () Bool)

(declare-fun tp!1956510 () Bool)

(assert (=> b!7111963 (= e!4273999 tp!1956510)))

(declare-fun b!7111962 () Bool)

(declare-fun tp!1956511 () Bool)

(declare-fun tp!1956509 () Bool)

(assert (=> b!7111962 (= e!4273999 (and tp!1956511 tp!1956509))))

(declare-fun b!7111964 () Bool)

(declare-fun tp!1956512 () Bool)

(declare-fun tp!1956513 () Bool)

(assert (=> b!7111964 (= e!4273999 (and tp!1956512 tp!1956513))))

(declare-fun b!7111961 () Bool)

(assert (=> b!7111961 (= e!4273999 tp_is_empty!45113)))

(assert (=> b!7111864 (= tp!1956477 e!4273999)))

(assert (= (and b!7111864 (is-ElementMatch!17940 (regOne!36393 r!11554))) b!7111961))

(assert (= (and b!7111864 (is-Concat!26785 (regOne!36393 r!11554))) b!7111962))

(assert (= (and b!7111864 (is-Star!17940 (regOne!36393 r!11554))) b!7111963))

(assert (= (and b!7111864 (is-Union!17940 (regOne!36393 r!11554))) b!7111964))

(declare-fun b!7111969 () Bool)

(declare-fun e!4274002 () Bool)

(declare-fun tp!1956515 () Bool)

(assert (=> b!7111969 (= e!4274002 tp!1956515)))

(declare-fun b!7111968 () Bool)

(declare-fun tp!1956516 () Bool)

(declare-fun tp!1956514 () Bool)

(assert (=> b!7111968 (= e!4274002 (and tp!1956516 tp!1956514))))

(declare-fun b!7111970 () Bool)

(declare-fun tp!1956517 () Bool)

(declare-fun tp!1956518 () Bool)

(assert (=> b!7111970 (= e!4274002 (and tp!1956517 tp!1956518))))

(declare-fun b!7111967 () Bool)

(assert (=> b!7111967 (= e!4274002 tp_is_empty!45113)))

(assert (=> b!7111864 (= tp!1956476 e!4274002)))

(assert (= (and b!7111864 (is-ElementMatch!17940 (regTwo!36393 r!11554))) b!7111967))

(assert (= (and b!7111864 (is-Concat!26785 (regTwo!36393 r!11554))) b!7111968))

(assert (= (and b!7111864 (is-Star!17940 (regTwo!36393 r!11554))) b!7111969))

(assert (= (and b!7111864 (is-Union!17940 (regTwo!36393 r!11554))) b!7111970))

(declare-fun b!7111987 () Bool)

(declare-fun e!4274015 () Bool)

(declare-fun tp!1956523 () Bool)

(declare-fun tp!1956524 () Bool)

(assert (=> b!7111987 (= e!4274015 (and tp!1956523 tp!1956524))))

(assert (=> b!7111860 (= tp!1956471 e!4274015)))

(assert (= (and b!7111860 (is-Cons!68777 (exprs!7434 auxCtx!45))) b!7111987))

(declare-fun b!7111988 () Bool)

(declare-fun e!4274016 () Bool)

(declare-fun tp!1956525 () Bool)

(declare-fun tp!1956526 () Bool)

(assert (=> b!7111988 (= e!4274016 (and tp!1956525 tp!1956526))))

(assert (=> b!7111856 (= tp!1956474 e!4274016)))

(assert (= (and b!7111856 (is-Cons!68777 (exprs!7434 c!9994))) b!7111988))

(declare-fun b!7111991 () Bool)

(declare-fun e!4274017 () Bool)

(declare-fun tp!1956528 () Bool)

(assert (=> b!7111991 (= e!4274017 tp!1956528)))

(declare-fun b!7111990 () Bool)

(declare-fun tp!1956529 () Bool)

(declare-fun tp!1956527 () Bool)

(assert (=> b!7111990 (= e!4274017 (and tp!1956529 tp!1956527))))

(declare-fun b!7111992 () Bool)

(declare-fun tp!1956530 () Bool)

(declare-fun tp!1956531 () Bool)

(assert (=> b!7111992 (= e!4274017 (and tp!1956530 tp!1956531))))

(declare-fun b!7111989 () Bool)

(assert (=> b!7111989 (= e!4274017 tp_is_empty!45113)))

(assert (=> b!7111857 (= tp!1956472 e!4274017)))

(assert (= (and b!7111857 (is-ElementMatch!17940 (regOne!36392 r!11554))) b!7111989))

(assert (= (and b!7111857 (is-Concat!26785 (regOne!36392 r!11554))) b!7111990))

(assert (= (and b!7111857 (is-Star!17940 (regOne!36392 r!11554))) b!7111991))

(assert (= (and b!7111857 (is-Union!17940 (regOne!36392 r!11554))) b!7111992))

(declare-fun b!7111995 () Bool)

(declare-fun e!4274018 () Bool)

(declare-fun tp!1956533 () Bool)

(assert (=> b!7111995 (= e!4274018 tp!1956533)))

(declare-fun b!7111994 () Bool)

(declare-fun tp!1956534 () Bool)

(declare-fun tp!1956532 () Bool)

(assert (=> b!7111994 (= e!4274018 (and tp!1956534 tp!1956532))))

(declare-fun b!7111996 () Bool)

(declare-fun tp!1956535 () Bool)

(declare-fun tp!1956536 () Bool)

(assert (=> b!7111996 (= e!4274018 (and tp!1956535 tp!1956536))))

(declare-fun b!7111993 () Bool)

(assert (=> b!7111993 (= e!4274018 tp_is_empty!45113)))

(assert (=> b!7111857 (= tp!1956473 e!4274018)))

(assert (= (and b!7111857 (is-ElementMatch!17940 (regTwo!36392 r!11554))) b!7111993))

(assert (= (and b!7111857 (is-Concat!26785 (regTwo!36392 r!11554))) b!7111994))

(assert (= (and b!7111857 (is-Star!17940 (regTwo!36392 r!11554))) b!7111995))

(assert (= (and b!7111857 (is-Union!17940 (regTwo!36392 r!11554))) b!7111996))

(declare-fun b!7111999 () Bool)

(declare-fun e!4274019 () Bool)

(declare-fun tp!1956538 () Bool)

(assert (=> b!7111999 (= e!4274019 tp!1956538)))

(declare-fun b!7111998 () Bool)

(declare-fun tp!1956539 () Bool)

(declare-fun tp!1956537 () Bool)

(assert (=> b!7111998 (= e!4274019 (and tp!1956539 tp!1956537))))

(declare-fun b!7112000 () Bool)

(declare-fun tp!1956540 () Bool)

(declare-fun tp!1956541 () Bool)

(assert (=> b!7112000 (= e!4274019 (and tp!1956540 tp!1956541))))

(declare-fun b!7111997 () Bool)

(assert (=> b!7111997 (= e!4274019 tp_is_empty!45113)))

(assert (=> b!7111862 (= tp!1956475 e!4274019)))

(assert (= (and b!7111862 (is-ElementMatch!17940 (reg!18269 r!11554))) b!7111997))

(assert (= (and b!7111862 (is-Concat!26785 (reg!18269 r!11554))) b!7111998))

(assert (= (and b!7111862 (is-Star!17940 (reg!18269 r!11554))) b!7111999))

(assert (= (and b!7111862 (is-Union!17940 (reg!18269 r!11554))) b!7112000))

(push 1)

(assert (not b!7111988))

(assert (not d!2220436))

(assert (not d!2220444))

(assert (not b!7111936))

(assert (not b!7111998))

(assert (not b!7111999))

(assert (not b!7111991))

(assert (not b!7111990))

(assert (not b!7111996))

(assert (not b!7111962))

(assert (not b!7111969))

(assert tp_is_empty!45113)

(assert (not d!2220432))

(assert (not b!7111944))

(assert (not b!7111968))

(assert (not d!2220442))

(assert (not b!7111963))

(assert (not b!7111987))

(assert (not b!7111992))

(assert (not b!7111923))

(assert (not d!2220428))

(assert (not b!7112000))

(assert (not b!7111995))

(assert (not b!7111964))

(assert (not bm!649087))

(assert (not bm!649084))

(assert (not b!7111994))

(assert (not b!7111935))

(assert (not bm!649088))

(assert (not b!7111970))

(assert (not bm!649085))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

