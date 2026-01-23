; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!690822 () Bool)

(assert start!690822)

(declare-fun b!7096883 () Bool)

(declare-fun e!4265965 () Bool)

(declare-datatypes ((C!35950 0))(
  ( (C!35951 (val!27681 Int)) )
))
(declare-datatypes ((Regex!17840 0))(
  ( (ElementMatch!17840 (c!1324359 C!35950)) (Concat!26685 (regOne!36192 Regex!17840) (regTwo!36192 Regex!17840)) (EmptyExpr!17840) (Star!17840 (reg!18169 Regex!17840)) (EmptyLang!17840) (Union!17840 (regOne!36193 Regex!17840) (regTwo!36193 Regex!17840)) )
))
(declare-datatypes ((List!68803 0))(
  ( (Nil!68679) (Cons!68679 (h!75127 Regex!17840) (t!382606 List!68803)) )
))
(declare-datatypes ((Context!13672 0))(
  ( (Context!13673 (exprs!7336 List!68803)) )
))
(declare-fun auxCtx!45 () Context!13672)

(declare-fun lambda!430560 () Int)

(declare-fun forall!16760 (List!68803 Int) Bool)

(assert (=> b!7096883 (= e!4265965 (not (forall!16760 (exprs!7336 auxCtx!45) lambda!430560)))))

(declare-fun res!2898013 () Bool)

(declare-fun e!4265966 () Bool)

(assert (=> start!690822 (=> (not res!2898013) (not e!4265966))))

(declare-fun r!11554 () Regex!17840)

(declare-fun validRegex!9115 (Regex!17840) Bool)

(assert (=> start!690822 (= res!2898013 (validRegex!9115 r!11554))))

(assert (=> start!690822 e!4265966))

(declare-fun e!4265967 () Bool)

(assert (=> start!690822 e!4265967))

(declare-fun tp_is_empty!44913 () Bool)

(assert (=> start!690822 tp_is_empty!44913))

(declare-fun c!9994 () Context!13672)

(declare-fun e!4265968 () Bool)

(declare-fun inv!87466 (Context!13672) Bool)

(assert (=> start!690822 (and (inv!87466 c!9994) e!4265968)))

(declare-fun e!4265970 () Bool)

(assert (=> start!690822 (and (inv!87466 auxCtx!45) e!4265970)))

(declare-fun b!7096884 () Bool)

(declare-fun tp!1950302 () Bool)

(assert (=> b!7096884 (= e!4265968 tp!1950302)))

(declare-fun b!7096885 () Bool)

(assert (=> b!7096885 (= e!4265967 tp_is_empty!44913)))

(declare-fun b!7096886 () Bool)

(assert (=> b!7096886 (= e!4265966 e!4265965)))

(declare-fun res!2898012 () Bool)

(assert (=> b!7096886 (=> (not res!2898012) (not e!4265965))))

(assert (=> b!7096886 (= res!2898012 (forall!16760 (exprs!7336 c!9994) lambda!430560))))

(declare-fun b!7096887 () Bool)

(declare-fun tp!1950301 () Bool)

(assert (=> b!7096887 (= e!4265967 tp!1950301)))

(declare-fun b!7096888 () Bool)

(declare-fun e!4265969 () Bool)

(declare-fun nullable!7480 (Regex!17840) Bool)

(assert (=> b!7096888 (= e!4265969 (not (nullable!7480 (regOne!36192 r!11554))))))

(declare-fun b!7096889 () Bool)

(declare-fun res!2898009 () Bool)

(assert (=> b!7096889 (=> (not res!2898009) (not e!4265966))))

(declare-fun a!1901 () C!35950)

(assert (=> b!7096889 (= res!2898009 (and (or (not (is-ElementMatch!17840 r!11554)) (not (= (c!1324359 r!11554) a!1901))) (not (is-Union!17840 r!11554))))))

(declare-fun b!7096890 () Bool)

(declare-fun res!2898014 () Bool)

(assert (=> b!7096890 (=> (not res!2898014) (not e!4265966))))

(assert (=> b!7096890 (= res!2898014 (and (not (is-Concat!26685 r!11554)) (is-Star!17840 r!11554)))))

(declare-fun b!7096891 () Bool)

(declare-fun res!2898011 () Bool)

(assert (=> b!7096891 (=> (not res!2898011) (not e!4265966))))

(assert (=> b!7096891 (= res!2898011 e!4265969)))

(declare-fun res!2898010 () Bool)

(assert (=> b!7096891 (=> res!2898010 e!4265969)))

(assert (=> b!7096891 (= res!2898010 (not (is-Concat!26685 r!11554)))))

(declare-fun b!7096892 () Bool)

(declare-fun tp!1950303 () Bool)

(declare-fun tp!1950306 () Bool)

(assert (=> b!7096892 (= e!4265967 (and tp!1950303 tp!1950306))))

(declare-fun b!7096893 () Bool)

(declare-fun tp!1950305 () Bool)

(declare-fun tp!1950304 () Bool)

(assert (=> b!7096893 (= e!4265967 (and tp!1950305 tp!1950304))))

(declare-fun b!7096894 () Bool)

(declare-fun tp!1950307 () Bool)

(assert (=> b!7096894 (= e!4265970 tp!1950307)))

(assert (= (and start!690822 res!2898013) b!7096889))

(assert (= (and b!7096889 res!2898009) b!7096891))

(assert (= (and b!7096891 (not res!2898010)) b!7096888))

(assert (= (and b!7096891 res!2898011) b!7096890))

(assert (= (and b!7096890 res!2898014) b!7096886))

(assert (= (and b!7096886 res!2898012) b!7096883))

(assert (= (and start!690822 (is-ElementMatch!17840 r!11554)) b!7096885))

(assert (= (and start!690822 (is-Concat!26685 r!11554)) b!7096893))

(assert (= (and start!690822 (is-Star!17840 r!11554)) b!7096887))

(assert (= (and start!690822 (is-Union!17840 r!11554)) b!7096892))

(assert (= start!690822 b!7096884))

(assert (= start!690822 b!7096894))

(declare-fun m!7824144 () Bool)

(assert (=> b!7096883 m!7824144))

(declare-fun m!7824146 () Bool)

(assert (=> start!690822 m!7824146))

(declare-fun m!7824148 () Bool)

(assert (=> start!690822 m!7824148))

(declare-fun m!7824150 () Bool)

(assert (=> start!690822 m!7824150))

(declare-fun m!7824152 () Bool)

(assert (=> b!7096886 m!7824152))

(declare-fun m!7824154 () Bool)

(assert (=> b!7096888 m!7824154))

(push 1)

(assert (not start!690822))

(assert (not b!7096883))

(assert (not b!7096886))

(assert (not b!7096894))

(assert (not b!7096893))

(assert tp_is_empty!44913)

(assert (not b!7096884))

(assert (not b!7096892))

(assert (not b!7096887))

(assert (not b!7096888))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!2217954 () Bool)

(declare-fun res!2898037 () Bool)

(declare-fun e!4265993 () Bool)

(assert (=> d!2217954 (=> res!2898037 e!4265993)))

(assert (=> d!2217954 (= res!2898037 (is-Nil!68679 (exprs!7336 auxCtx!45)))))

(assert (=> d!2217954 (= (forall!16760 (exprs!7336 auxCtx!45) lambda!430560) e!4265993)))

(declare-fun b!7096935 () Bool)

(declare-fun e!4265994 () Bool)

(assert (=> b!7096935 (= e!4265993 e!4265994)))

(declare-fun res!2898038 () Bool)

(assert (=> b!7096935 (=> (not res!2898038) (not e!4265994))))

(declare-fun dynLambda!28025 (Int Regex!17840) Bool)

(assert (=> b!7096935 (= res!2898038 (dynLambda!28025 lambda!430560 (h!75127 (exprs!7336 auxCtx!45))))))

(declare-fun b!7096936 () Bool)

(assert (=> b!7096936 (= e!4265994 (forall!16760 (t!382606 (exprs!7336 auxCtx!45)) lambda!430560))))

(assert (= (and d!2217954 (not res!2898037)) b!7096935))

(assert (= (and b!7096935 res!2898038) b!7096936))

(declare-fun b_lambda!271177 () Bool)

(assert (=> (not b_lambda!271177) (not b!7096935)))

(declare-fun m!7824168 () Bool)

(assert (=> b!7096935 m!7824168))

(declare-fun m!7824170 () Bool)

(assert (=> b!7096936 m!7824170))

(assert (=> b!7096883 d!2217954))

(declare-fun d!2217958 () Bool)

(declare-fun nullableFct!2877 (Regex!17840) Bool)

(assert (=> d!2217958 (= (nullable!7480 (regOne!36192 r!11554)) (nullableFct!2877 (regOne!36192 r!11554)))))

(declare-fun bs!1883983 () Bool)

(assert (= bs!1883983 d!2217958))

(declare-fun m!7824172 () Bool)

(assert (=> bs!1883983 m!7824172))

(assert (=> b!7096888 d!2217958))

(declare-fun d!2217960 () Bool)

(declare-fun res!2898039 () Bool)

(declare-fun e!4265995 () Bool)

(assert (=> d!2217960 (=> res!2898039 e!4265995)))

(assert (=> d!2217960 (= res!2898039 (is-Nil!68679 (exprs!7336 c!9994)))))

(assert (=> d!2217960 (= (forall!16760 (exprs!7336 c!9994) lambda!430560) e!4265995)))

(declare-fun b!7096937 () Bool)

(declare-fun e!4265996 () Bool)

(assert (=> b!7096937 (= e!4265995 e!4265996)))

(declare-fun res!2898040 () Bool)

(assert (=> b!7096937 (=> (not res!2898040) (not e!4265996))))

(assert (=> b!7096937 (= res!2898040 (dynLambda!28025 lambda!430560 (h!75127 (exprs!7336 c!9994))))))

(declare-fun b!7096938 () Bool)

(assert (=> b!7096938 (= e!4265996 (forall!16760 (t!382606 (exprs!7336 c!9994)) lambda!430560))))

(assert (= (and d!2217960 (not res!2898039)) b!7096937))

(assert (= (and b!7096937 res!2898040) b!7096938))

(declare-fun b_lambda!271179 () Bool)

(assert (=> (not b_lambda!271179) (not b!7096937)))

(declare-fun m!7824174 () Bool)

(assert (=> b!7096937 m!7824174))

(declare-fun m!7824178 () Bool)

(assert (=> b!7096938 m!7824178))

(assert (=> b!7096886 d!2217960))

(declare-fun c!1324366 () Bool)

(declare-fun bm!645925 () Bool)

(declare-fun c!1324365 () Bool)

(declare-fun call!645931 () Bool)

(assert (=> bm!645925 (= call!645931 (validRegex!9115 (ite c!1324366 (reg!18169 r!11554) (ite c!1324365 (regTwo!36193 r!11554) (regOne!36192 r!11554)))))))

(declare-fun b!7096963 () Bool)

(declare-fun e!4266020 () Bool)

(assert (=> b!7096963 (= e!4266020 call!645931)))

(declare-fun b!7096964 () Bool)

(declare-fun e!4266023 () Bool)

(assert (=> b!7096964 (= e!4266023 e!4266020)))

(declare-fun res!2898057 () Bool)

(assert (=> b!7096964 (= res!2898057 (not (nullable!7480 (reg!18169 r!11554))))))

(assert (=> b!7096964 (=> (not res!2898057) (not e!4266020))))

(declare-fun b!7096965 () Bool)

(declare-fun e!4266017 () Bool)

(assert (=> b!7096965 (= e!4266023 e!4266017)))

(assert (=> b!7096965 (= c!1324365 (is-Union!17840 r!11554))))

(declare-fun b!7096966 () Bool)

(declare-fun e!4266019 () Bool)

(declare-fun call!645932 () Bool)

(assert (=> b!7096966 (= e!4266019 call!645932)))

(declare-fun bm!645926 () Bool)

(assert (=> bm!645926 (= call!645932 (validRegex!9115 (ite c!1324365 (regOne!36193 r!11554) (regTwo!36192 r!11554))))))

(declare-fun b!7096967 () Bool)

(declare-fun e!4266018 () Bool)

(assert (=> b!7096967 (= e!4266018 e!4266019)))

(declare-fun res!2898060 () Bool)

(assert (=> b!7096967 (=> (not res!2898060) (not e!4266019))))

(declare-fun call!645930 () Bool)

(assert (=> b!7096967 (= res!2898060 call!645930)))

(declare-fun bm!645927 () Bool)

(assert (=> bm!645927 (= call!645930 call!645931)))

(declare-fun b!7096968 () Bool)

(declare-fun e!4266021 () Bool)

(assert (=> b!7096968 (= e!4266021 e!4266023)))

(assert (=> b!7096968 (= c!1324366 (is-Star!17840 r!11554))))

(declare-fun b!7096969 () Bool)

(declare-fun res!2898058 () Bool)

(assert (=> b!7096969 (=> res!2898058 e!4266018)))

(assert (=> b!7096969 (= res!2898058 (not (is-Concat!26685 r!11554)))))

(assert (=> b!7096969 (= e!4266017 e!4266018)))

(declare-fun b!7096970 () Bool)

(declare-fun res!2898061 () Bool)

(declare-fun e!4266022 () Bool)

(assert (=> b!7096970 (=> (not res!2898061) (not e!4266022))))

(assert (=> b!7096970 (= res!2898061 call!645932)))

(assert (=> b!7096970 (= e!4266017 e!4266022)))

(declare-fun b!7096971 () Bool)

(assert (=> b!7096971 (= e!4266022 call!645930)))

(declare-fun d!2217962 () Bool)

(declare-fun res!2898059 () Bool)

(assert (=> d!2217962 (=> res!2898059 e!4266021)))

(assert (=> d!2217962 (= res!2898059 (is-ElementMatch!17840 r!11554))))

(assert (=> d!2217962 (= (validRegex!9115 r!11554) e!4266021)))

(assert (= (and d!2217962 (not res!2898059)) b!7096968))

(assert (= (and b!7096968 c!1324366) b!7096964))

(assert (= (and b!7096968 (not c!1324366)) b!7096965))

(assert (= (and b!7096964 res!2898057) b!7096963))

(assert (= (and b!7096965 c!1324365) b!7096970))

(assert (= (and b!7096965 (not c!1324365)) b!7096969))

(assert (= (and b!7096970 res!2898061) b!7096971))

(assert (= (and b!7096969 (not res!2898058)) b!7096967))

(assert (= (and b!7096967 res!2898060) b!7096966))

(assert (= (or b!7096970 b!7096966) bm!645926))

(assert (= (or b!7096971 b!7096967) bm!645927))

(assert (= (or b!7096963 bm!645927) bm!645925))

(declare-fun m!7824184 () Bool)

(assert (=> bm!645925 m!7824184))

(declare-fun m!7824186 () Bool)

(assert (=> b!7096964 m!7824186))

(declare-fun m!7824188 () Bool)

(assert (=> bm!645926 m!7824188))

(assert (=> start!690822 d!2217962))

(declare-fun bs!1883985 () Bool)

(declare-fun d!2217968 () Bool)

(assert (= bs!1883985 (and d!2217968 b!7096886)))

(declare-fun lambda!430566 () Int)

(assert (=> bs!1883985 (= lambda!430566 lambda!430560)))

(assert (=> d!2217968 (= (inv!87466 c!9994) (forall!16760 (exprs!7336 c!9994) lambda!430566))))

(declare-fun bs!1883986 () Bool)

(assert (= bs!1883986 d!2217968))

(declare-fun m!7824194 () Bool)

(assert (=> bs!1883986 m!7824194))

(assert (=> start!690822 d!2217968))

(declare-fun bs!1883987 () Bool)

(declare-fun d!2217972 () Bool)

(assert (= bs!1883987 (and d!2217972 b!7096886)))

(declare-fun lambda!430567 () Int)

(assert (=> bs!1883987 (= lambda!430567 lambda!430560)))

(declare-fun bs!1883988 () Bool)

(assert (= bs!1883988 (and d!2217972 d!2217968)))

(assert (=> bs!1883988 (= lambda!430567 lambda!430566)))

(assert (=> d!2217972 (= (inv!87466 auxCtx!45) (forall!16760 (exprs!7336 auxCtx!45) lambda!430567))))

(declare-fun bs!1883989 () Bool)

(assert (= bs!1883989 d!2217972))

(declare-fun m!7824196 () Bool)

(assert (=> bs!1883989 m!7824196))

(assert (=> start!690822 d!2217972))

(declare-fun b!7096984 () Bool)

(declare-fun e!4266028 () Bool)

(assert (=> b!7096984 (= e!4266028 tp_is_empty!44913)))

(declare-fun b!7096986 () Bool)

(declare-fun tp!1950343 () Bool)

(assert (=> b!7096986 (= e!4266028 tp!1950343)))

(declare-fun b!7096985 () Bool)

(declare-fun tp!1950339 () Bool)

(declare-fun tp!1950342 () Bool)

(assert (=> b!7096985 (= e!4266028 (and tp!1950339 tp!1950342))))

(declare-fun b!7096987 () Bool)

(declare-fun tp!1950341 () Bool)

(declare-fun tp!1950340 () Bool)

(assert (=> b!7096987 (= e!4266028 (and tp!1950341 tp!1950340))))

(assert (=> b!7096893 (= tp!1950305 e!4266028)))

(assert (= (and b!7096893 (is-ElementMatch!17840 (regOne!36192 r!11554))) b!7096984))

(assert (= (and b!7096893 (is-Concat!26685 (regOne!36192 r!11554))) b!7096985))

(assert (= (and b!7096893 (is-Star!17840 (regOne!36192 r!11554))) b!7096986))

(assert (= (and b!7096893 (is-Union!17840 (regOne!36192 r!11554))) b!7096987))

(declare-fun b!7096988 () Bool)

(declare-fun e!4266029 () Bool)

(assert (=> b!7096988 (= e!4266029 tp_is_empty!44913)))

(declare-fun b!7096990 () Bool)

(declare-fun tp!1950348 () Bool)

(assert (=> b!7096990 (= e!4266029 tp!1950348)))

(declare-fun b!7096989 () Bool)

(declare-fun tp!1950344 () Bool)

(declare-fun tp!1950347 () Bool)

(assert (=> b!7096989 (= e!4266029 (and tp!1950344 tp!1950347))))

(declare-fun b!7096991 () Bool)

(declare-fun tp!1950346 () Bool)

(declare-fun tp!1950345 () Bool)

(assert (=> b!7096991 (= e!4266029 (and tp!1950346 tp!1950345))))

(assert (=> b!7096893 (= tp!1950304 e!4266029)))

(assert (= (and b!7096893 (is-ElementMatch!17840 (regTwo!36192 r!11554))) b!7096988))

(assert (= (and b!7096893 (is-Concat!26685 (regTwo!36192 r!11554))) b!7096989))

(assert (= (and b!7096893 (is-Star!17840 (regTwo!36192 r!11554))) b!7096990))

(assert (= (and b!7096893 (is-Union!17840 (regTwo!36192 r!11554))) b!7096991))

(declare-fun b!7096992 () Bool)

(declare-fun e!4266030 () Bool)

(assert (=> b!7096992 (= e!4266030 tp_is_empty!44913)))

(declare-fun b!7096994 () Bool)

(declare-fun tp!1950353 () Bool)

(assert (=> b!7096994 (= e!4266030 tp!1950353)))

(declare-fun b!7096993 () Bool)

(declare-fun tp!1950349 () Bool)

(declare-fun tp!1950352 () Bool)

(assert (=> b!7096993 (= e!4266030 (and tp!1950349 tp!1950352))))

(declare-fun b!7096995 () Bool)

(declare-fun tp!1950351 () Bool)

(declare-fun tp!1950350 () Bool)

(assert (=> b!7096995 (= e!4266030 (and tp!1950351 tp!1950350))))

(assert (=> b!7096887 (= tp!1950301 e!4266030)))

(assert (= (and b!7096887 (is-ElementMatch!17840 (reg!18169 r!11554))) b!7096992))

(assert (= (and b!7096887 (is-Concat!26685 (reg!18169 r!11554))) b!7096993))

(assert (= (and b!7096887 (is-Star!17840 (reg!18169 r!11554))) b!7096994))

(assert (= (and b!7096887 (is-Union!17840 (reg!18169 r!11554))) b!7096995))

(declare-fun b!7096996 () Bool)

(declare-fun e!4266031 () Bool)

(assert (=> b!7096996 (= e!4266031 tp_is_empty!44913)))

(declare-fun b!7096998 () Bool)

(declare-fun tp!1950358 () Bool)

(assert (=> b!7096998 (= e!4266031 tp!1950358)))

(declare-fun b!7096997 () Bool)

(declare-fun tp!1950354 () Bool)

(declare-fun tp!1950357 () Bool)

(assert (=> b!7096997 (= e!4266031 (and tp!1950354 tp!1950357))))

(declare-fun b!7096999 () Bool)

(declare-fun tp!1950356 () Bool)

(declare-fun tp!1950355 () Bool)

(assert (=> b!7096999 (= e!4266031 (and tp!1950356 tp!1950355))))

(assert (=> b!7096892 (= tp!1950303 e!4266031)))

(assert (= (and b!7096892 (is-ElementMatch!17840 (regOne!36193 r!11554))) b!7096996))

(assert (= (and b!7096892 (is-Concat!26685 (regOne!36193 r!11554))) b!7096997))

(assert (= (and b!7096892 (is-Star!17840 (regOne!36193 r!11554))) b!7096998))

(assert (= (and b!7096892 (is-Union!17840 (regOne!36193 r!11554))) b!7096999))

(declare-fun b!7097000 () Bool)

(declare-fun e!4266032 () Bool)

(assert (=> b!7097000 (= e!4266032 tp_is_empty!44913)))

(declare-fun b!7097002 () Bool)

(declare-fun tp!1950363 () Bool)

(assert (=> b!7097002 (= e!4266032 tp!1950363)))

(declare-fun b!7097001 () Bool)

(declare-fun tp!1950359 () Bool)

(declare-fun tp!1950362 () Bool)

(assert (=> b!7097001 (= e!4266032 (and tp!1950359 tp!1950362))))

(declare-fun b!7097003 () Bool)

(declare-fun tp!1950361 () Bool)

(declare-fun tp!1950360 () Bool)

(assert (=> b!7097003 (= e!4266032 (and tp!1950361 tp!1950360))))

(assert (=> b!7096892 (= tp!1950306 e!4266032)))

(assert (= (and b!7096892 (is-ElementMatch!17840 (regTwo!36193 r!11554))) b!7097000))

(assert (= (and b!7096892 (is-Concat!26685 (regTwo!36193 r!11554))) b!7097001))

(assert (= (and b!7096892 (is-Star!17840 (regTwo!36193 r!11554))) b!7097002))

(assert (= (and b!7096892 (is-Union!17840 (regTwo!36193 r!11554))) b!7097003))

(declare-fun b!7097012 () Bool)

(declare-fun e!4266037 () Bool)

(declare-fun tp!1950368 () Bool)

(declare-fun tp!1950369 () Bool)

(assert (=> b!7097012 (= e!4266037 (and tp!1950368 tp!1950369))))

(assert (=> b!7096884 (= tp!1950302 e!4266037)))

(assert (= (and b!7096884 (is-Cons!68679 (exprs!7336 c!9994))) b!7097012))

(declare-fun b!7097013 () Bool)

(declare-fun e!4266038 () Bool)

(declare-fun tp!1950370 () Bool)

(declare-fun tp!1950371 () Bool)

(assert (=> b!7097013 (= e!4266038 (and tp!1950370 tp!1950371))))

(assert (=> b!7096894 (= tp!1950307 e!4266038)))

(assert (= (and b!7096894 (is-Cons!68679 (exprs!7336 auxCtx!45))) b!7097013))

(declare-fun b_lambda!271185 () Bool)

(assert (= b_lambda!271179 (or b!7096886 b_lambda!271185)))

(declare-fun bs!1883990 () Bool)

(declare-fun d!2217974 () Bool)

(assert (= bs!1883990 (and d!2217974 b!7096886)))

(assert (=> bs!1883990 (= (dynLambda!28025 lambda!430560 (h!75127 (exprs!7336 c!9994))) (validRegex!9115 (h!75127 (exprs!7336 c!9994))))))

(declare-fun m!7824198 () Bool)

(assert (=> bs!1883990 m!7824198))

(assert (=> b!7096937 d!2217974))

(declare-fun b_lambda!271187 () Bool)

(assert (= b_lambda!271177 (or b!7096886 b_lambda!271187)))

(declare-fun bs!1883991 () Bool)

(declare-fun d!2217976 () Bool)

(assert (= bs!1883991 (and d!2217976 b!7096886)))

(assert (=> bs!1883991 (= (dynLambda!28025 lambda!430560 (h!75127 (exprs!7336 auxCtx!45))) (validRegex!9115 (h!75127 (exprs!7336 auxCtx!45))))))

(declare-fun m!7824200 () Bool)

(assert (=> bs!1883991 m!7824200))

(assert (=> b!7096935 d!2217976))

(push 1)

(assert (not b!7096993))

(assert (not b!7097012))

(assert (not d!2217972))

(assert (not b!7097002))

(assert (not b!7097013))

(assert (not b!7096994))

(assert (not b!7096938))

(assert (not b!7096990))

(assert (not d!2217968))

(assert (not b_lambda!271185))

(assert (not bm!645926))

(assert (not b!7096995))

(assert (not b!7097003))

(assert (not b!7097001))

(assert (not b!7096999))

(assert (not b!7096936))

(assert (not b!7096991))

(assert (not bs!1883991))

(assert (not b!7096997))

(assert (not b!7096985))

(assert (not b!7096989))

(assert (not b!7096998))

(assert (not b!7096987))

(assert (not b!7096986))

(assert (not d!2217958))

(assert (not b!7096964))

(assert tp_is_empty!44913)

(assert (not bs!1883990))

(assert (not bm!645925))

(assert (not b_lambda!271187))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

