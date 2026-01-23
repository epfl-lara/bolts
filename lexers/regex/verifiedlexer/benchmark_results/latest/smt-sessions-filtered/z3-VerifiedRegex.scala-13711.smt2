; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!733364 () Bool)

(assert start!733364)

(declare-fun b!7610076 () Bool)

(declare-fun res!3046880 () Bool)

(declare-fun e!4526192 () Bool)

(assert (=> b!7610076 (=> (not res!3046880) (not e!4526192))))

(declare-datatypes ((C!40760 0))(
  ( (C!40761 (val!30820 Int)) )
))
(declare-datatypes ((Regex!20217 0))(
  ( (ElementMatch!20217 (c!1403186 C!40760)) (Concat!29062 (regOne!40946 Regex!20217) (regTwo!40946 Regex!20217)) (EmptyExpr!20217) (Star!20217 (reg!20546 Regex!20217)) (EmptyLang!20217) (Union!20217 (regOne!40947 Regex!20217) (regTwo!40947 Regex!20217)) )
))
(declare-fun r!19218 () Regex!20217)

(declare-fun nullable!8838 (Regex!20217) Bool)

(assert (=> b!7610076 (= res!3046880 (not (nullable!8838 (regOne!40947 r!19218))))))

(declare-fun b!7610077 () Bool)

(declare-fun e!4526193 () Bool)

(declare-fun tp!2220566 () Bool)

(declare-fun tp!2220568 () Bool)

(assert (=> b!7610077 (= e!4526193 (and tp!2220566 tp!2220568))))

(declare-fun b!7610078 () Bool)

(declare-fun res!3046876 () Bool)

(assert (=> b!7610078 (=> (not res!3046876) (not e!4526192))))

(get-info :version)

(assert (=> b!7610078 (= res!3046876 (and (not ((_ is ElementMatch!20217) r!19218)) (not ((_ is Star!20217) r!19218)) ((_ is Union!20217) r!19218)))))

(declare-fun b!7610079 () Bool)

(declare-fun res!3046877 () Bool)

(assert (=> b!7610079 (=> (not res!3046877) (not e!4526192))))

(declare-fun validRegex!10639 (Regex!20217) Bool)

(assert (=> b!7610079 (= res!3046877 (validRegex!10639 (regTwo!40947 r!19218)))))

(declare-fun b!7610080 () Bool)

(declare-fun tp!2220567 () Bool)

(declare-fun tp!2220565 () Bool)

(assert (=> b!7610080 (= e!4526193 (and tp!2220567 tp!2220565))))

(declare-fun b!7610081 () Bool)

(declare-fun tp!2220569 () Bool)

(assert (=> b!7610081 (= e!4526193 tp!2220569)))

(declare-fun res!3046875 () Bool)

(assert (=> start!733364 (=> (not res!3046875) (not e!4526192))))

(assert (=> start!733364 (= res!3046875 (validRegex!10639 r!19218))))

(assert (=> start!733364 e!4526192))

(assert (=> start!733364 e!4526193))

(declare-fun b!7610082 () Bool)

(declare-fun tp_is_empty!50789 () Bool)

(assert (=> b!7610082 (= e!4526193 tp_is_empty!50789)))

(declare-fun b!7610083 () Bool)

(declare-fun res!3046878 () Bool)

(assert (=> b!7610083 (=> (not res!3046878) (not e!4526192))))

(assert (=> b!7610083 (= res!3046878 (nullable!8838 (regTwo!40947 r!19218)))))

(declare-fun b!7610084 () Bool)

(declare-fun res!3046879 () Bool)

(assert (=> b!7610084 (=> (not res!3046879) (not e!4526192))))

(assert (=> b!7610084 (= res!3046879 (nullable!8838 r!19218))))

(declare-fun b!7610085 () Bool)

(declare-fun regexDepth!473 (Regex!20217) Int)

(assert (=> b!7610085 (= e!4526192 (>= (regexDepth!473 (regTwo!40947 r!19218)) (regexDepth!473 r!19218)))))

(assert (= (and start!733364 res!3046875) b!7610084))

(assert (= (and b!7610084 res!3046879) b!7610078))

(assert (= (and b!7610078 res!3046876) b!7610076))

(assert (= (and b!7610076 res!3046880) b!7610079))

(assert (= (and b!7610079 res!3046877) b!7610083))

(assert (= (and b!7610083 res!3046878) b!7610085))

(assert (= (and start!733364 ((_ is ElementMatch!20217) r!19218)) b!7610082))

(assert (= (and start!733364 ((_ is Concat!29062) r!19218)) b!7610077))

(assert (= (and start!733364 ((_ is Star!20217) r!19218)) b!7610081))

(assert (= (and start!733364 ((_ is Union!20217) r!19218)) b!7610080))

(declare-fun m!8147860 () Bool)

(assert (=> b!7610076 m!8147860))

(declare-fun m!8147862 () Bool)

(assert (=> start!733364 m!8147862))

(declare-fun m!8147864 () Bool)

(assert (=> b!7610085 m!8147864))

(declare-fun m!8147866 () Bool)

(assert (=> b!7610085 m!8147866))

(declare-fun m!8147868 () Bool)

(assert (=> b!7610083 m!8147868))

(declare-fun m!8147870 () Bool)

(assert (=> b!7610084 m!8147870))

(declare-fun m!8147872 () Bool)

(assert (=> b!7610079 m!8147872))

(check-sat (not b!7610085) (not b!7610080) (not b!7610079) tp_is_empty!50789 (not b!7610076) (not start!733364) (not b!7610077) (not b!7610081) (not b!7610083) (not b!7610084))
(check-sat)
(get-model)

(declare-fun bm!698898 () Bool)

(declare-fun call!698908 () Int)

(declare-fun call!698905 () Int)

(assert (=> bm!698898 (= call!698908 call!698905)))

(declare-fun b!7610234 () Bool)

(declare-fun e!4526290 () Int)

(assert (=> b!7610234 (= e!4526290 1)))

(declare-fun bm!698899 () Bool)

(declare-fun c!1403237 () Bool)

(declare-fun c!1403241 () Bool)

(assert (=> bm!698899 (= call!698905 (regexDepth!473 (ite c!1403237 (reg!20546 (regTwo!40947 r!19218)) (ite c!1403241 (regTwo!40947 (regTwo!40947 r!19218)) (regTwo!40946 (regTwo!40947 r!19218))))))))

(declare-fun b!7610235 () Bool)

(declare-fun e!4526288 () Bool)

(declare-fun lt!2654981 () Int)

(declare-fun call!698903 () Int)

(assert (=> b!7610235 (= e!4526288 (> lt!2654981 call!698903))))

(declare-fun bm!698900 () Bool)

(declare-fun call!698907 () Int)

(declare-fun call!698909 () Int)

(declare-fun maxBigInt!0 (Int Int) Int)

(assert (=> bm!698900 (= call!698907 (maxBigInt!0 call!698909 call!698908))))

(declare-fun b!7610236 () Bool)

(declare-fun res!3046921 () Bool)

(declare-fun e!4526292 () Bool)

(assert (=> b!7610236 (=> (not res!3046921) (not e!4526292))))

(assert (=> b!7610236 (= res!3046921 (> lt!2654981 call!698903))))

(declare-fun e!4526287 () Bool)

(assert (=> b!7610236 (= e!4526287 e!4526292)))

(declare-fun c!1403243 () Bool)

(declare-fun c!1403238 () Bool)

(declare-fun bm!698901 () Bool)

(declare-fun call!698906 () Int)

(assert (=> bm!698901 (= call!698906 (regexDepth!473 (ite c!1403243 (regTwo!40947 (regTwo!40947 r!19218)) (ite c!1403238 (regOne!40946 (regTwo!40947 r!19218)) (reg!20546 (regTwo!40947 r!19218))))))))

(declare-fun b!7610237 () Bool)

(declare-fun e!4526284 () Bool)

(declare-fun e!4526289 () Bool)

(assert (=> b!7610237 (= e!4526284 e!4526289)))

(assert (=> b!7610237 (= c!1403243 ((_ is Union!20217) (regTwo!40947 r!19218)))))

(declare-fun b!7610238 () Bool)

(assert (=> b!7610238 (= c!1403241 ((_ is Union!20217) (regTwo!40947 r!19218)))))

(declare-fun e!4526291 () Int)

(declare-fun e!4526293 () Int)

(assert (=> b!7610238 (= e!4526291 e!4526293)))

(declare-fun b!7610239 () Bool)

(declare-fun call!698904 () Int)

(assert (=> b!7610239 (= e!4526292 (> lt!2654981 call!698904))))

(declare-fun b!7610240 () Bool)

(assert (=> b!7610240 (= e!4526288 (= lt!2654981 1))))

(declare-fun d!2322194 () Bool)

(assert (=> d!2322194 e!4526284))

(declare-fun res!3046919 () Bool)

(assert (=> d!2322194 (=> (not res!3046919) (not e!4526284))))

(assert (=> d!2322194 (= res!3046919 (> lt!2654981 0))))

(assert (=> d!2322194 (= lt!2654981 e!4526290)))

(declare-fun c!1403242 () Bool)

(assert (=> d!2322194 (= c!1403242 ((_ is ElementMatch!20217) (regTwo!40947 r!19218)))))

(assert (=> d!2322194 (= (regexDepth!473 (regTwo!40947 r!19218)) lt!2654981)))

(declare-fun b!7610241 () Bool)

(assert (=> b!7610241 (= e!4526291 (+ 1 call!698905))))

(declare-fun b!7610242 () Bool)

(assert (=> b!7610242 (= e!4526293 (+ 1 call!698907))))

(declare-fun b!7610243 () Bool)

(declare-fun c!1403239 () Bool)

(assert (=> b!7610243 (= c!1403239 ((_ is Star!20217) (regTwo!40947 r!19218)))))

(assert (=> b!7610243 (= e!4526287 e!4526288)))

(declare-fun b!7610244 () Bool)

(assert (=> b!7610244 (= e!4526289 e!4526287)))

(assert (=> b!7610244 (= c!1403238 ((_ is Concat!29062) (regTwo!40947 r!19218)))))

(declare-fun b!7610245 () Bool)

(declare-fun e!4526286 () Bool)

(assert (=> b!7610245 (= e!4526286 (> lt!2654981 call!698906))))

(declare-fun b!7610246 () Bool)

(declare-fun e!4526285 () Int)

(assert (=> b!7610246 (= e!4526285 1)))

(declare-fun b!7610247 () Bool)

(assert (=> b!7610247 (= e!4526290 e!4526291)))

(assert (=> b!7610247 (= c!1403237 ((_ is Star!20217) (regTwo!40947 r!19218)))))

(declare-fun b!7610248 () Bool)

(assert (=> b!7610248 (= e!4526285 (+ 1 call!698907))))

(declare-fun bm!698902 () Bool)

(assert (=> bm!698902 (= call!698909 (regexDepth!473 (ite c!1403241 (regOne!40947 (regTwo!40947 r!19218)) (regOne!40946 (regTwo!40947 r!19218)))))))

(declare-fun bm!698903 () Bool)

(assert (=> bm!698903 (= call!698904 (regexDepth!473 (ite c!1403243 (regOne!40947 (regTwo!40947 r!19218)) (regTwo!40946 (regTwo!40947 r!19218)))))))

(declare-fun b!7610249 () Bool)

(assert (=> b!7610249 (= e!4526289 e!4526286)))

(declare-fun res!3046920 () Bool)

(assert (=> b!7610249 (= res!3046920 (> lt!2654981 call!698904))))

(assert (=> b!7610249 (=> (not res!3046920) (not e!4526286))))

(declare-fun b!7610250 () Bool)

(assert (=> b!7610250 (= e!4526293 e!4526285)))

(declare-fun c!1403240 () Bool)

(assert (=> b!7610250 (= c!1403240 ((_ is Concat!29062) (regTwo!40947 r!19218)))))

(declare-fun bm!698904 () Bool)

(assert (=> bm!698904 (= call!698903 call!698906)))

(assert (= (and d!2322194 c!1403242) b!7610234))

(assert (= (and d!2322194 (not c!1403242)) b!7610247))

(assert (= (and b!7610247 c!1403237) b!7610241))

(assert (= (and b!7610247 (not c!1403237)) b!7610238))

(assert (= (and b!7610238 c!1403241) b!7610242))

(assert (= (and b!7610238 (not c!1403241)) b!7610250))

(assert (= (and b!7610250 c!1403240) b!7610248))

(assert (= (and b!7610250 (not c!1403240)) b!7610246))

(assert (= (or b!7610242 b!7610248) bm!698898))

(assert (= (or b!7610242 b!7610248) bm!698902))

(assert (= (or b!7610242 b!7610248) bm!698900))

(assert (= (or b!7610241 bm!698898) bm!698899))

(assert (= (and d!2322194 res!3046919) b!7610237))

(assert (= (and b!7610237 c!1403243) b!7610249))

(assert (= (and b!7610237 (not c!1403243)) b!7610244))

(assert (= (and b!7610249 res!3046920) b!7610245))

(assert (= (and b!7610244 c!1403238) b!7610236))

(assert (= (and b!7610244 (not c!1403238)) b!7610243))

(assert (= (and b!7610236 res!3046921) b!7610239))

(assert (= (and b!7610243 c!1403239) b!7610235))

(assert (= (and b!7610243 (not c!1403239)) b!7610240))

(assert (= (or b!7610236 b!7610235) bm!698904))

(assert (= (or b!7610245 bm!698904) bm!698901))

(assert (= (or b!7610249 b!7610239) bm!698903))

(declare-fun m!8147912 () Bool)

(assert (=> bm!698901 m!8147912))

(declare-fun m!8147914 () Bool)

(assert (=> bm!698903 m!8147914))

(declare-fun m!8147916 () Bool)

(assert (=> bm!698900 m!8147916))

(declare-fun m!8147918 () Bool)

(assert (=> bm!698902 m!8147918))

(declare-fun m!8147920 () Bool)

(assert (=> bm!698899 m!8147920))

(assert (=> b!7610085 d!2322194))

(declare-fun bm!698905 () Bool)

(declare-fun call!698915 () Int)

(declare-fun call!698912 () Int)

(assert (=> bm!698905 (= call!698915 call!698912)))

(declare-fun b!7610271 () Bool)

(declare-fun e!4526305 () Int)

(assert (=> b!7610271 (= e!4526305 1)))

(declare-fun bm!698906 () Bool)

(declare-fun c!1403248 () Bool)

(declare-fun c!1403244 () Bool)

(assert (=> bm!698906 (= call!698912 (regexDepth!473 (ite c!1403244 (reg!20546 r!19218) (ite c!1403248 (regTwo!40947 r!19218) (regTwo!40946 r!19218)))))))

(declare-fun b!7610272 () Bool)

(declare-fun e!4526303 () Bool)

(declare-fun lt!2654982 () Int)

(declare-fun call!698910 () Int)

(assert (=> b!7610272 (= e!4526303 (> lt!2654982 call!698910))))

(declare-fun bm!698907 () Bool)

(declare-fun call!698914 () Int)

(declare-fun call!698916 () Int)

(assert (=> bm!698907 (= call!698914 (maxBigInt!0 call!698916 call!698915))))

(declare-fun b!7610273 () Bool)

(declare-fun res!3046924 () Bool)

(declare-fun e!4526307 () Bool)

(assert (=> b!7610273 (=> (not res!3046924) (not e!4526307))))

(assert (=> b!7610273 (= res!3046924 (> lt!2654982 call!698910))))

(declare-fun e!4526302 () Bool)

(assert (=> b!7610273 (= e!4526302 e!4526307)))

(declare-fun c!1403250 () Bool)

(declare-fun bm!698908 () Bool)

(declare-fun c!1403245 () Bool)

(declare-fun call!698913 () Int)

(assert (=> bm!698908 (= call!698913 (regexDepth!473 (ite c!1403250 (regTwo!40947 r!19218) (ite c!1403245 (regOne!40946 r!19218) (reg!20546 r!19218)))))))

(declare-fun b!7610274 () Bool)

(declare-fun e!4526299 () Bool)

(declare-fun e!4526304 () Bool)

(assert (=> b!7610274 (= e!4526299 e!4526304)))

(assert (=> b!7610274 (= c!1403250 ((_ is Union!20217) r!19218))))

(declare-fun b!7610275 () Bool)

(assert (=> b!7610275 (= c!1403248 ((_ is Union!20217) r!19218))))

(declare-fun e!4526306 () Int)

(declare-fun e!4526308 () Int)

(assert (=> b!7610275 (= e!4526306 e!4526308)))

(declare-fun b!7610276 () Bool)

(declare-fun call!698911 () Int)

(assert (=> b!7610276 (= e!4526307 (> lt!2654982 call!698911))))

(declare-fun b!7610277 () Bool)

(assert (=> b!7610277 (= e!4526303 (= lt!2654982 1))))

(declare-fun d!2322204 () Bool)

(assert (=> d!2322204 e!4526299))

(declare-fun res!3046922 () Bool)

(assert (=> d!2322204 (=> (not res!3046922) (not e!4526299))))

(assert (=> d!2322204 (= res!3046922 (> lt!2654982 0))))

(assert (=> d!2322204 (= lt!2654982 e!4526305)))

(declare-fun c!1403249 () Bool)

(assert (=> d!2322204 (= c!1403249 ((_ is ElementMatch!20217) r!19218))))

(assert (=> d!2322204 (= (regexDepth!473 r!19218) lt!2654982)))

(declare-fun b!7610278 () Bool)

(assert (=> b!7610278 (= e!4526306 (+ 1 call!698912))))

(declare-fun b!7610279 () Bool)

(assert (=> b!7610279 (= e!4526308 (+ 1 call!698914))))

(declare-fun b!7610280 () Bool)

(declare-fun c!1403246 () Bool)

(assert (=> b!7610280 (= c!1403246 ((_ is Star!20217) r!19218))))

(assert (=> b!7610280 (= e!4526302 e!4526303)))

(declare-fun b!7610281 () Bool)

(assert (=> b!7610281 (= e!4526304 e!4526302)))

(assert (=> b!7610281 (= c!1403245 ((_ is Concat!29062) r!19218))))

(declare-fun b!7610282 () Bool)

(declare-fun e!4526301 () Bool)

(assert (=> b!7610282 (= e!4526301 (> lt!2654982 call!698913))))

(declare-fun b!7610283 () Bool)

(declare-fun e!4526300 () Int)

(assert (=> b!7610283 (= e!4526300 1)))

(declare-fun b!7610284 () Bool)

(assert (=> b!7610284 (= e!4526305 e!4526306)))

(assert (=> b!7610284 (= c!1403244 ((_ is Star!20217) r!19218))))

(declare-fun b!7610285 () Bool)

(assert (=> b!7610285 (= e!4526300 (+ 1 call!698914))))

(declare-fun bm!698909 () Bool)

(assert (=> bm!698909 (= call!698916 (regexDepth!473 (ite c!1403248 (regOne!40947 r!19218) (regOne!40946 r!19218))))))

(declare-fun bm!698910 () Bool)

(assert (=> bm!698910 (= call!698911 (regexDepth!473 (ite c!1403250 (regOne!40947 r!19218) (regTwo!40946 r!19218))))))

(declare-fun b!7610286 () Bool)

(assert (=> b!7610286 (= e!4526304 e!4526301)))

(declare-fun res!3046923 () Bool)

(assert (=> b!7610286 (= res!3046923 (> lt!2654982 call!698911))))

(assert (=> b!7610286 (=> (not res!3046923) (not e!4526301))))

(declare-fun b!7610287 () Bool)

(assert (=> b!7610287 (= e!4526308 e!4526300)))

(declare-fun c!1403247 () Bool)

(assert (=> b!7610287 (= c!1403247 ((_ is Concat!29062) r!19218))))

(declare-fun bm!698911 () Bool)

(assert (=> bm!698911 (= call!698910 call!698913)))

(assert (= (and d!2322204 c!1403249) b!7610271))

(assert (= (and d!2322204 (not c!1403249)) b!7610284))

(assert (= (and b!7610284 c!1403244) b!7610278))

(assert (= (and b!7610284 (not c!1403244)) b!7610275))

(assert (= (and b!7610275 c!1403248) b!7610279))

(assert (= (and b!7610275 (not c!1403248)) b!7610287))

(assert (= (and b!7610287 c!1403247) b!7610285))

(assert (= (and b!7610287 (not c!1403247)) b!7610283))

(assert (= (or b!7610279 b!7610285) bm!698905))

(assert (= (or b!7610279 b!7610285) bm!698909))

(assert (= (or b!7610279 b!7610285) bm!698907))

(assert (= (or b!7610278 bm!698905) bm!698906))

(assert (= (and d!2322204 res!3046922) b!7610274))

(assert (= (and b!7610274 c!1403250) b!7610286))

(assert (= (and b!7610274 (not c!1403250)) b!7610281))

(assert (= (and b!7610286 res!3046923) b!7610282))

(assert (= (and b!7610281 c!1403245) b!7610273))

(assert (= (and b!7610281 (not c!1403245)) b!7610280))

(assert (= (and b!7610273 res!3046924) b!7610276))

(assert (= (and b!7610280 c!1403246) b!7610272))

(assert (= (and b!7610280 (not c!1403246)) b!7610277))

(assert (= (or b!7610273 b!7610272) bm!698911))

(assert (= (or b!7610282 bm!698911) bm!698908))

(assert (= (or b!7610286 b!7610276) bm!698910))

(declare-fun m!8147922 () Bool)

(assert (=> bm!698908 m!8147922))

(declare-fun m!8147924 () Bool)

(assert (=> bm!698910 m!8147924))

(declare-fun m!8147926 () Bool)

(assert (=> bm!698907 m!8147926))

(declare-fun m!8147928 () Bool)

(assert (=> bm!698909 m!8147928))

(declare-fun m!8147930 () Bool)

(assert (=> bm!698906 m!8147930))

(assert (=> b!7610085 d!2322204))

(declare-fun d!2322206 () Bool)

(declare-fun nullableFct!3522 (Regex!20217) Bool)

(assert (=> d!2322206 (= (nullable!8838 r!19218) (nullableFct!3522 r!19218))))

(declare-fun bs!1942838 () Bool)

(assert (= bs!1942838 d!2322206))

(declare-fun m!8147932 () Bool)

(assert (=> bs!1942838 m!8147932))

(assert (=> b!7610084 d!2322206))

(declare-fun bm!698918 () Bool)

(declare-fun call!698924 () Bool)

(declare-fun c!1403256 () Bool)

(assert (=> bm!698918 (= call!698924 (validRegex!10639 (ite c!1403256 (regTwo!40947 (regTwo!40947 r!19218)) (regTwo!40946 (regTwo!40947 r!19218)))))))

(declare-fun b!7610306 () Bool)

(declare-fun e!4526327 () Bool)

(declare-fun call!698923 () Bool)

(assert (=> b!7610306 (= e!4526327 call!698923)))

(declare-fun b!7610307 () Bool)

(declare-fun e!4526325 () Bool)

(assert (=> b!7610307 (= e!4526325 call!698924)))

(declare-fun b!7610308 () Bool)

(declare-fun e!4526328 () Bool)

(assert (=> b!7610308 (= e!4526328 e!4526327)))

(declare-fun res!3046935 () Bool)

(assert (=> b!7610308 (= res!3046935 (not (nullable!8838 (reg!20546 (regTwo!40947 r!19218)))))))

(assert (=> b!7610308 (=> (not res!3046935) (not e!4526327))))

(declare-fun b!7610309 () Bool)

(declare-fun e!4526323 () Bool)

(assert (=> b!7610309 (= e!4526328 e!4526323)))

(assert (=> b!7610309 (= c!1403256 ((_ is Union!20217) (regTwo!40947 r!19218)))))

(declare-fun b!7610310 () Bool)

(declare-fun res!3046936 () Bool)

(declare-fun e!4526324 () Bool)

(assert (=> b!7610310 (=> (not res!3046936) (not e!4526324))))

(declare-fun call!698925 () Bool)

(assert (=> b!7610310 (= res!3046936 call!698925)))

(assert (=> b!7610310 (= e!4526323 e!4526324)))

(declare-fun bm!698919 () Bool)

(assert (=> bm!698919 (= call!698925 call!698923)))

(declare-fun b!7610311 () Bool)

(assert (=> b!7610311 (= e!4526324 call!698924)))

(declare-fun c!1403255 () Bool)

(declare-fun bm!698920 () Bool)

(assert (=> bm!698920 (= call!698923 (validRegex!10639 (ite c!1403255 (reg!20546 (regTwo!40947 r!19218)) (ite c!1403256 (regOne!40947 (regTwo!40947 r!19218)) (regOne!40946 (regTwo!40947 r!19218))))))))

(declare-fun d!2322208 () Bool)

(declare-fun res!3046938 () Bool)

(declare-fun e!4526326 () Bool)

(assert (=> d!2322208 (=> res!3046938 e!4526326)))

(assert (=> d!2322208 (= res!3046938 ((_ is ElementMatch!20217) (regTwo!40947 r!19218)))))

(assert (=> d!2322208 (= (validRegex!10639 (regTwo!40947 r!19218)) e!4526326)))

(declare-fun b!7610312 () Bool)

(declare-fun res!3046937 () Bool)

(declare-fun e!4526329 () Bool)

(assert (=> b!7610312 (=> res!3046937 e!4526329)))

(assert (=> b!7610312 (= res!3046937 (not ((_ is Concat!29062) (regTwo!40947 r!19218))))))

(assert (=> b!7610312 (= e!4526323 e!4526329)))

(declare-fun b!7610313 () Bool)

(assert (=> b!7610313 (= e!4526326 e!4526328)))

(assert (=> b!7610313 (= c!1403255 ((_ is Star!20217) (regTwo!40947 r!19218)))))

(declare-fun b!7610314 () Bool)

(assert (=> b!7610314 (= e!4526329 e!4526325)))

(declare-fun res!3046939 () Bool)

(assert (=> b!7610314 (=> (not res!3046939) (not e!4526325))))

(assert (=> b!7610314 (= res!3046939 call!698925)))

(assert (= (and d!2322208 (not res!3046938)) b!7610313))

(assert (= (and b!7610313 c!1403255) b!7610308))

(assert (= (and b!7610313 (not c!1403255)) b!7610309))

(assert (= (and b!7610308 res!3046935) b!7610306))

(assert (= (and b!7610309 c!1403256) b!7610310))

(assert (= (and b!7610309 (not c!1403256)) b!7610312))

(assert (= (and b!7610310 res!3046936) b!7610311))

(assert (= (and b!7610312 (not res!3046937)) b!7610314))

(assert (= (and b!7610314 res!3046939) b!7610307))

(assert (= (or b!7610310 b!7610314) bm!698919))

(assert (= (or b!7610311 b!7610307) bm!698918))

(assert (= (or b!7610306 bm!698919) bm!698920))

(declare-fun m!8147934 () Bool)

(assert (=> bm!698918 m!8147934))

(declare-fun m!8147936 () Bool)

(assert (=> b!7610308 m!8147936))

(declare-fun m!8147938 () Bool)

(assert (=> bm!698920 m!8147938))

(assert (=> b!7610079 d!2322208))

(declare-fun d!2322210 () Bool)

(assert (=> d!2322210 (= (nullable!8838 (regOne!40947 r!19218)) (nullableFct!3522 (regOne!40947 r!19218)))))

(declare-fun bs!1942839 () Bool)

(assert (= bs!1942839 d!2322210))

(declare-fun m!8147940 () Bool)

(assert (=> bs!1942839 m!8147940))

(assert (=> b!7610076 d!2322210))

(declare-fun bm!698921 () Bool)

(declare-fun call!698927 () Bool)

(declare-fun c!1403258 () Bool)

(assert (=> bm!698921 (= call!698927 (validRegex!10639 (ite c!1403258 (regTwo!40947 r!19218) (regTwo!40946 r!19218))))))

(declare-fun b!7610315 () Bool)

(declare-fun e!4526334 () Bool)

(declare-fun call!698926 () Bool)

(assert (=> b!7610315 (= e!4526334 call!698926)))

(declare-fun b!7610316 () Bool)

(declare-fun e!4526332 () Bool)

(assert (=> b!7610316 (= e!4526332 call!698927)))

(declare-fun b!7610317 () Bool)

(declare-fun e!4526335 () Bool)

(assert (=> b!7610317 (= e!4526335 e!4526334)))

(declare-fun res!3046940 () Bool)

(assert (=> b!7610317 (= res!3046940 (not (nullable!8838 (reg!20546 r!19218))))))

(assert (=> b!7610317 (=> (not res!3046940) (not e!4526334))))

(declare-fun b!7610318 () Bool)

(declare-fun e!4526330 () Bool)

(assert (=> b!7610318 (= e!4526335 e!4526330)))

(assert (=> b!7610318 (= c!1403258 ((_ is Union!20217) r!19218))))

(declare-fun b!7610319 () Bool)

(declare-fun res!3046941 () Bool)

(declare-fun e!4526331 () Bool)

(assert (=> b!7610319 (=> (not res!3046941) (not e!4526331))))

(declare-fun call!698928 () Bool)

(assert (=> b!7610319 (= res!3046941 call!698928)))

(assert (=> b!7610319 (= e!4526330 e!4526331)))

(declare-fun bm!698922 () Bool)

(assert (=> bm!698922 (= call!698928 call!698926)))

(declare-fun b!7610320 () Bool)

(assert (=> b!7610320 (= e!4526331 call!698927)))

(declare-fun bm!698923 () Bool)

(declare-fun c!1403257 () Bool)

(assert (=> bm!698923 (= call!698926 (validRegex!10639 (ite c!1403257 (reg!20546 r!19218) (ite c!1403258 (regOne!40947 r!19218) (regOne!40946 r!19218)))))))

(declare-fun d!2322212 () Bool)

(declare-fun res!3046943 () Bool)

(declare-fun e!4526333 () Bool)

(assert (=> d!2322212 (=> res!3046943 e!4526333)))

(assert (=> d!2322212 (= res!3046943 ((_ is ElementMatch!20217) r!19218))))

(assert (=> d!2322212 (= (validRegex!10639 r!19218) e!4526333)))

(declare-fun b!7610321 () Bool)

(declare-fun res!3046942 () Bool)

(declare-fun e!4526336 () Bool)

(assert (=> b!7610321 (=> res!3046942 e!4526336)))

(assert (=> b!7610321 (= res!3046942 (not ((_ is Concat!29062) r!19218)))))

(assert (=> b!7610321 (= e!4526330 e!4526336)))

(declare-fun b!7610322 () Bool)

(assert (=> b!7610322 (= e!4526333 e!4526335)))

(assert (=> b!7610322 (= c!1403257 ((_ is Star!20217) r!19218))))

(declare-fun b!7610323 () Bool)

(assert (=> b!7610323 (= e!4526336 e!4526332)))

(declare-fun res!3046944 () Bool)

(assert (=> b!7610323 (=> (not res!3046944) (not e!4526332))))

(assert (=> b!7610323 (= res!3046944 call!698928)))

(assert (= (and d!2322212 (not res!3046943)) b!7610322))

(assert (= (and b!7610322 c!1403257) b!7610317))

(assert (= (and b!7610322 (not c!1403257)) b!7610318))

(assert (= (and b!7610317 res!3046940) b!7610315))

(assert (= (and b!7610318 c!1403258) b!7610319))

(assert (= (and b!7610318 (not c!1403258)) b!7610321))

(assert (= (and b!7610319 res!3046941) b!7610320))

(assert (= (and b!7610321 (not res!3046942)) b!7610323))

(assert (= (and b!7610323 res!3046944) b!7610316))

(assert (= (or b!7610319 b!7610323) bm!698922))

(assert (= (or b!7610320 b!7610316) bm!698921))

(assert (= (or b!7610315 bm!698922) bm!698923))

(declare-fun m!8147942 () Bool)

(assert (=> bm!698921 m!8147942))

(declare-fun m!8147944 () Bool)

(assert (=> b!7610317 m!8147944))

(declare-fun m!8147946 () Bool)

(assert (=> bm!698923 m!8147946))

(assert (=> start!733364 d!2322212))

(declare-fun d!2322214 () Bool)

(assert (=> d!2322214 (= (nullable!8838 (regTwo!40947 r!19218)) (nullableFct!3522 (regTwo!40947 r!19218)))))

(declare-fun bs!1942840 () Bool)

(assert (= bs!1942840 d!2322214))

(declare-fun m!8147948 () Bool)

(assert (=> bs!1942840 m!8147948))

(assert (=> b!7610083 d!2322214))

(declare-fun e!4526339 () Bool)

(assert (=> b!7610081 (= tp!2220569 e!4526339)))

(declare-fun b!7610334 () Bool)

(assert (=> b!7610334 (= e!4526339 tp_is_empty!50789)))

(declare-fun b!7610336 () Bool)

(declare-fun tp!2220619 () Bool)

(assert (=> b!7610336 (= e!4526339 tp!2220619)))

(declare-fun b!7610335 () Bool)

(declare-fun tp!2220618 () Bool)

(declare-fun tp!2220617 () Bool)

(assert (=> b!7610335 (= e!4526339 (and tp!2220618 tp!2220617))))

(declare-fun b!7610337 () Bool)

(declare-fun tp!2220615 () Bool)

(declare-fun tp!2220616 () Bool)

(assert (=> b!7610337 (= e!4526339 (and tp!2220615 tp!2220616))))

(assert (= (and b!7610081 ((_ is ElementMatch!20217) (reg!20546 r!19218))) b!7610334))

(assert (= (and b!7610081 ((_ is Concat!29062) (reg!20546 r!19218))) b!7610335))

(assert (= (and b!7610081 ((_ is Star!20217) (reg!20546 r!19218))) b!7610336))

(assert (= (and b!7610081 ((_ is Union!20217) (reg!20546 r!19218))) b!7610337))

(declare-fun e!4526340 () Bool)

(assert (=> b!7610080 (= tp!2220567 e!4526340)))

(declare-fun b!7610338 () Bool)

(assert (=> b!7610338 (= e!4526340 tp_is_empty!50789)))

(declare-fun b!7610340 () Bool)

(declare-fun tp!2220624 () Bool)

(assert (=> b!7610340 (= e!4526340 tp!2220624)))

(declare-fun b!7610339 () Bool)

(declare-fun tp!2220623 () Bool)

(declare-fun tp!2220622 () Bool)

(assert (=> b!7610339 (= e!4526340 (and tp!2220623 tp!2220622))))

(declare-fun b!7610341 () Bool)

(declare-fun tp!2220620 () Bool)

(declare-fun tp!2220621 () Bool)

(assert (=> b!7610341 (= e!4526340 (and tp!2220620 tp!2220621))))

(assert (= (and b!7610080 ((_ is ElementMatch!20217) (regOne!40947 r!19218))) b!7610338))

(assert (= (and b!7610080 ((_ is Concat!29062) (regOne!40947 r!19218))) b!7610339))

(assert (= (and b!7610080 ((_ is Star!20217) (regOne!40947 r!19218))) b!7610340))

(assert (= (and b!7610080 ((_ is Union!20217) (regOne!40947 r!19218))) b!7610341))

(declare-fun e!4526341 () Bool)

(assert (=> b!7610080 (= tp!2220565 e!4526341)))

(declare-fun b!7610342 () Bool)

(assert (=> b!7610342 (= e!4526341 tp_is_empty!50789)))

(declare-fun b!7610344 () Bool)

(declare-fun tp!2220629 () Bool)

(assert (=> b!7610344 (= e!4526341 tp!2220629)))

(declare-fun b!7610343 () Bool)

(declare-fun tp!2220628 () Bool)

(declare-fun tp!2220627 () Bool)

(assert (=> b!7610343 (= e!4526341 (and tp!2220628 tp!2220627))))

(declare-fun b!7610345 () Bool)

(declare-fun tp!2220625 () Bool)

(declare-fun tp!2220626 () Bool)

(assert (=> b!7610345 (= e!4526341 (and tp!2220625 tp!2220626))))

(assert (= (and b!7610080 ((_ is ElementMatch!20217) (regTwo!40947 r!19218))) b!7610342))

(assert (= (and b!7610080 ((_ is Concat!29062) (regTwo!40947 r!19218))) b!7610343))

(assert (= (and b!7610080 ((_ is Star!20217) (regTwo!40947 r!19218))) b!7610344))

(assert (= (and b!7610080 ((_ is Union!20217) (regTwo!40947 r!19218))) b!7610345))

(declare-fun e!4526342 () Bool)

(assert (=> b!7610077 (= tp!2220566 e!4526342)))

(declare-fun b!7610346 () Bool)

(assert (=> b!7610346 (= e!4526342 tp_is_empty!50789)))

(declare-fun b!7610348 () Bool)

(declare-fun tp!2220634 () Bool)

(assert (=> b!7610348 (= e!4526342 tp!2220634)))

(declare-fun b!7610347 () Bool)

(declare-fun tp!2220633 () Bool)

(declare-fun tp!2220632 () Bool)

(assert (=> b!7610347 (= e!4526342 (and tp!2220633 tp!2220632))))

(declare-fun b!7610349 () Bool)

(declare-fun tp!2220630 () Bool)

(declare-fun tp!2220631 () Bool)

(assert (=> b!7610349 (= e!4526342 (and tp!2220630 tp!2220631))))

(assert (= (and b!7610077 ((_ is ElementMatch!20217) (regOne!40946 r!19218))) b!7610346))

(assert (= (and b!7610077 ((_ is Concat!29062) (regOne!40946 r!19218))) b!7610347))

(assert (= (and b!7610077 ((_ is Star!20217) (regOne!40946 r!19218))) b!7610348))

(assert (= (and b!7610077 ((_ is Union!20217) (regOne!40946 r!19218))) b!7610349))

(declare-fun e!4526343 () Bool)

(assert (=> b!7610077 (= tp!2220568 e!4526343)))

(declare-fun b!7610350 () Bool)

(assert (=> b!7610350 (= e!4526343 tp_is_empty!50789)))

(declare-fun b!7610352 () Bool)

(declare-fun tp!2220639 () Bool)

(assert (=> b!7610352 (= e!4526343 tp!2220639)))

(declare-fun b!7610351 () Bool)

(declare-fun tp!2220638 () Bool)

(declare-fun tp!2220637 () Bool)

(assert (=> b!7610351 (= e!4526343 (and tp!2220638 tp!2220637))))

(declare-fun b!7610353 () Bool)

(declare-fun tp!2220635 () Bool)

(declare-fun tp!2220636 () Bool)

(assert (=> b!7610353 (= e!4526343 (and tp!2220635 tp!2220636))))

(assert (= (and b!7610077 ((_ is ElementMatch!20217) (regTwo!40946 r!19218))) b!7610350))

(assert (= (and b!7610077 ((_ is Concat!29062) (regTwo!40946 r!19218))) b!7610351))

(assert (= (and b!7610077 ((_ is Star!20217) (regTwo!40946 r!19218))) b!7610352))

(assert (= (and b!7610077 ((_ is Union!20217) (regTwo!40946 r!19218))) b!7610353))

(check-sat (not bm!698908) (not d!2322210) (not b!7610351) (not b!7610349) (not bm!698902) (not b!7610317) (not bm!698920) (not bm!698906) (not b!7610308) (not bm!698899) (not b!7610347) (not b!7610348) (not bm!698903) (not bm!698921) tp_is_empty!50789 (not bm!698918) (not b!7610336) (not bm!698901) (not b!7610344) (not b!7610353) (not bm!698907) (not bm!698910) (not b!7610343) (not b!7610340) (not d!2322206) (not b!7610345) (not d!2322214) (not bm!698923) (not b!7610335) (not b!7610337) (not b!7610352) (not bm!698909) (not b!7610341) (not b!7610339) (not bm!698900))
(check-sat)
