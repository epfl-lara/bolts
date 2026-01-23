; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!230452 () Bool)

(assert start!230452)

(declare-fun res!995909 () Bool)

(declare-fun e!1494884 () Bool)

(assert (=> start!230452 (=> (not res!995909) (not e!1494884))))

(declare-datatypes ((C!13852 0))(
  ( (C!13853 (val!8086 Int)) )
))
(declare-datatypes ((Regex!6847 0))(
  ( (ElementMatch!6847 (c!370927 C!13852)) (Concat!11469 (regOne!14206 Regex!6847) (regTwo!14206 Regex!6847)) (EmptyExpr!6847) (Star!6847 (reg!7176 Regex!6847)) (EmptyLang!6847) (Union!6847 (regOne!14207 Regex!6847) (regTwo!14207 Regex!6847)) )
))
(declare-fun r!26197 () Regex!6847)

(declare-fun validRegex!2592 (Regex!6847) Bool)

(assert (=> start!230452 (= res!995909 (validRegex!2592 r!26197))))

(assert (=> start!230452 e!1494884))

(declare-fun e!1494883 () Bool)

(assert (=> start!230452 e!1494883))

(declare-fun tp_is_empty!11005 () Bool)

(assert (=> start!230452 tp_is_empty!11005))

(declare-fun b!2334165 () Bool)

(declare-fun res!995907 () Bool)

(assert (=> b!2334165 (=> (not res!995907) (not e!1494884))))

(declare-fun nullable!1926 (Regex!6847) Bool)

(assert (=> b!2334165 (= res!995907 (not (nullable!1926 r!26197)))))

(declare-fun b!2334166 () Bool)

(declare-fun tp!740109 () Bool)

(declare-fun tp!740111 () Bool)

(assert (=> b!2334166 (= e!1494883 (and tp!740109 tp!740111))))

(declare-fun b!2334167 () Bool)

(declare-fun res!995908 () Bool)

(assert (=> b!2334167 (=> (not res!995908) (not e!1494884))))

(get-info :version)

(assert (=> b!2334167 (= res!995908 (and (not ((_ is EmptyExpr!6847) r!26197)) ((_ is EmptyLang!6847) r!26197)))))

(declare-fun b!2334168 () Bool)

(declare-fun res!995906 () Bool)

(assert (=> b!2334168 (=> (not res!995906) (not e!1494884))))

(declare-fun c!13498 () C!13852)

(declare-fun derivativeStep!1586 (Regex!6847 C!13852) Regex!6847)

(assert (=> b!2334168 (= res!995906 (nullable!1926 (derivativeStep!1586 r!26197 c!13498)))))

(declare-fun b!2334169 () Bool)

(declare-datatypes ((List!27932 0))(
  ( (Nil!27834) (Cons!27834 (h!33235 C!13852) (t!207791 List!27932)) )
))
(declare-fun contains!4813 (List!27932 C!13852) Bool)

(declare-fun usedCharacters!432 (Regex!6847) List!27932)

(assert (=> b!2334169 (= e!1494884 (not (contains!4813 (usedCharacters!432 r!26197) c!13498)))))

(declare-fun b!2334170 () Bool)

(declare-fun tp!740110 () Bool)

(declare-fun tp!740108 () Bool)

(assert (=> b!2334170 (= e!1494883 (and tp!740110 tp!740108))))

(declare-fun b!2334171 () Bool)

(declare-fun tp!740107 () Bool)

(assert (=> b!2334171 (= e!1494883 tp!740107)))

(declare-fun b!2334172 () Bool)

(assert (=> b!2334172 (= e!1494883 tp_is_empty!11005)))

(assert (= (and start!230452 res!995909) b!2334165))

(assert (= (and b!2334165 res!995907) b!2334168))

(assert (= (and b!2334168 res!995906) b!2334167))

(assert (= (and b!2334167 res!995908) b!2334169))

(assert (= (and start!230452 ((_ is ElementMatch!6847) r!26197)) b!2334172))

(assert (= (and start!230452 ((_ is Concat!11469) r!26197)) b!2334166))

(assert (= (and start!230452 ((_ is Star!6847) r!26197)) b!2334171))

(assert (= (and start!230452 ((_ is Union!6847) r!26197)) b!2334170))

(declare-fun m!2762071 () Bool)

(assert (=> start!230452 m!2762071))

(declare-fun m!2762073 () Bool)

(assert (=> b!2334165 m!2762073))

(declare-fun m!2762075 () Bool)

(assert (=> b!2334168 m!2762075))

(assert (=> b!2334168 m!2762075))

(declare-fun m!2762077 () Bool)

(assert (=> b!2334168 m!2762077))

(declare-fun m!2762079 () Bool)

(assert (=> b!2334169 m!2762079))

(assert (=> b!2334169 m!2762079))

(declare-fun m!2762081 () Bool)

(assert (=> b!2334169 m!2762081))

(check-sat tp_is_empty!11005 (not b!2334169) (not b!2334170) (not start!230452) (not b!2334168) (not b!2334166) (not b!2334165) (not b!2334171))
(check-sat)
(get-model)

(declare-fun d!690313 () Bool)

(declare-fun nullableFct!483 (Regex!6847) Bool)

(assert (=> d!690313 (= (nullable!1926 (derivativeStep!1586 r!26197 c!13498)) (nullableFct!483 (derivativeStep!1586 r!26197 c!13498)))))

(declare-fun bs!459885 () Bool)

(assert (= bs!459885 d!690313))

(assert (=> bs!459885 m!2762075))

(declare-fun m!2762083 () Bool)

(assert (=> bs!459885 m!2762083))

(assert (=> b!2334168 d!690313))

(declare-fun d!690315 () Bool)

(declare-fun lt!862385 () Regex!6847)

(assert (=> d!690315 (validRegex!2592 lt!862385)))

(declare-fun e!1494933 () Regex!6847)

(assert (=> d!690315 (= lt!862385 e!1494933)))

(declare-fun c!370956 () Bool)

(assert (=> d!690315 (= c!370956 (or ((_ is EmptyExpr!6847) r!26197) ((_ is EmptyLang!6847) r!26197)))))

(assert (=> d!690315 (validRegex!2592 r!26197)))

(assert (=> d!690315 (= (derivativeStep!1586 r!26197 c!13498) lt!862385)))

(declare-fun b!2334242 () Bool)

(declare-fun e!1494934 () Regex!6847)

(declare-fun e!1494931 () Regex!6847)

(assert (=> b!2334242 (= e!1494934 e!1494931)))

(declare-fun c!370955 () Bool)

(assert (=> b!2334242 (= c!370955 ((_ is Star!6847) r!26197))))

(declare-fun b!2334243 () Bool)

(declare-fun call!139734 () Regex!6847)

(declare-fun call!139737 () Regex!6847)

(assert (=> b!2334243 (= e!1494934 (Union!6847 call!139734 call!139737))))

(declare-fun b!2334244 () Bool)

(declare-fun e!1494930 () Regex!6847)

(assert (=> b!2334244 (= e!1494933 e!1494930)))

(declare-fun c!370953 () Bool)

(assert (=> b!2334244 (= c!370953 ((_ is ElementMatch!6847) r!26197))))

(declare-fun b!2334245 () Bool)

(declare-fun call!139736 () Regex!6847)

(assert (=> b!2334245 (= e!1494931 (Concat!11469 call!139736 r!26197))))

(declare-fun b!2334246 () Bool)

(assert (=> b!2334246 (= e!1494933 EmptyLang!6847)))

(declare-fun bm!139729 () Bool)

(declare-fun c!370954 () Bool)

(assert (=> bm!139729 (= call!139734 (derivativeStep!1586 (ite c!370954 (regOne!14207 r!26197) (regTwo!14206 r!26197)) c!13498))))

(declare-fun b!2334247 () Bool)

(declare-fun e!1494932 () Regex!6847)

(declare-fun call!139735 () Regex!6847)

(assert (=> b!2334247 (= e!1494932 (Union!6847 (Concat!11469 call!139735 (regTwo!14206 r!26197)) EmptyLang!6847))))

(declare-fun b!2334248 () Bool)

(assert (=> b!2334248 (= c!370954 ((_ is Union!6847) r!26197))))

(assert (=> b!2334248 (= e!1494930 e!1494934)))

(declare-fun b!2334249 () Bool)

(assert (=> b!2334249 (= e!1494930 (ite (= c!13498 (c!370927 r!26197)) EmptyExpr!6847 EmptyLang!6847))))

(declare-fun b!2334250 () Bool)

(declare-fun c!370952 () Bool)

(assert (=> b!2334250 (= c!370952 (nullable!1926 (regOne!14206 r!26197)))))

(assert (=> b!2334250 (= e!1494931 e!1494932)))

(declare-fun bm!139730 () Bool)

(assert (=> bm!139730 (= call!139736 call!139737)))

(declare-fun bm!139731 () Bool)

(assert (=> bm!139731 (= call!139735 call!139736)))

(declare-fun b!2334251 () Bool)

(assert (=> b!2334251 (= e!1494932 (Union!6847 (Concat!11469 call!139735 (regTwo!14206 r!26197)) call!139734))))

(declare-fun bm!139732 () Bool)

(assert (=> bm!139732 (= call!139737 (derivativeStep!1586 (ite c!370954 (regTwo!14207 r!26197) (ite c!370955 (reg!7176 r!26197) (regOne!14206 r!26197))) c!13498))))

(assert (= (and d!690315 c!370956) b!2334246))

(assert (= (and d!690315 (not c!370956)) b!2334244))

(assert (= (and b!2334244 c!370953) b!2334249))

(assert (= (and b!2334244 (not c!370953)) b!2334248))

(assert (= (and b!2334248 c!370954) b!2334243))

(assert (= (and b!2334248 (not c!370954)) b!2334242))

(assert (= (and b!2334242 c!370955) b!2334245))

(assert (= (and b!2334242 (not c!370955)) b!2334250))

(assert (= (and b!2334250 c!370952) b!2334251))

(assert (= (and b!2334250 (not c!370952)) b!2334247))

(assert (= (or b!2334251 b!2334247) bm!139731))

(assert (= (or b!2334245 bm!139731) bm!139730))

(assert (= (or b!2334243 bm!139730) bm!139732))

(assert (= (or b!2334243 b!2334251) bm!139729))

(declare-fun m!2762099 () Bool)

(assert (=> d!690315 m!2762099))

(assert (=> d!690315 m!2762071))

(declare-fun m!2762105 () Bool)

(assert (=> bm!139729 m!2762105))

(declare-fun m!2762109 () Bool)

(assert (=> b!2334250 m!2762109))

(declare-fun m!2762111 () Bool)

(assert (=> bm!139732 m!2762111))

(assert (=> b!2334168 d!690315))

(declare-fun d!690325 () Bool)

(declare-fun lt!862388 () Bool)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!3767 (List!27932) (InoxSet C!13852))

(assert (=> d!690325 (= lt!862388 (select (content!3767 (usedCharacters!432 r!26197)) c!13498))))

(declare-fun e!1494943 () Bool)

(assert (=> d!690325 (= lt!862388 e!1494943)))

(declare-fun res!995935 () Bool)

(assert (=> d!690325 (=> (not res!995935) (not e!1494943))))

(assert (=> d!690325 (= res!995935 ((_ is Cons!27834) (usedCharacters!432 r!26197)))))

(assert (=> d!690325 (= (contains!4813 (usedCharacters!432 r!26197) c!13498) lt!862388)))

(declare-fun b!2334264 () Bool)

(declare-fun e!1494944 () Bool)

(assert (=> b!2334264 (= e!1494943 e!1494944)))

(declare-fun res!995936 () Bool)

(assert (=> b!2334264 (=> res!995936 e!1494944)))

(assert (=> b!2334264 (= res!995936 (= (h!33235 (usedCharacters!432 r!26197)) c!13498))))

(declare-fun b!2334265 () Bool)

(assert (=> b!2334265 (= e!1494944 (contains!4813 (t!207791 (usedCharacters!432 r!26197)) c!13498))))

(assert (= (and d!690325 res!995935) b!2334264))

(assert (= (and b!2334264 (not res!995936)) b!2334265))

(assert (=> d!690325 m!2762079))

(declare-fun m!2762115 () Bool)

(assert (=> d!690325 m!2762115))

(declare-fun m!2762117 () Bool)

(assert (=> d!690325 m!2762117))

(declare-fun m!2762119 () Bool)

(assert (=> b!2334265 m!2762119))

(assert (=> b!2334169 d!690325))

(declare-fun b!2334312 () Bool)

(declare-fun e!1494968 () List!27932)

(declare-fun call!139765 () List!27932)

(assert (=> b!2334312 (= e!1494968 call!139765)))

(declare-fun bm!139757 () Bool)

(declare-fun call!139763 () List!27932)

(declare-fun call!139764 () List!27932)

(assert (=> bm!139757 (= call!139763 call!139764)))

(declare-fun d!690329 () Bool)

(declare-fun c!370986 () Bool)

(assert (=> d!690329 (= c!370986 (or ((_ is EmptyExpr!6847) r!26197) ((_ is EmptyLang!6847) r!26197)))))

(declare-fun e!1494970 () List!27932)

(assert (=> d!690329 (= (usedCharacters!432 r!26197) e!1494970)))

(declare-fun b!2334313 () Bool)

(assert (=> b!2334313 (= e!1494968 call!139765)))

(declare-fun bm!139758 () Bool)

(declare-fun call!139762 () List!27932)

(declare-fun c!370984 () Bool)

(assert (=> bm!139758 (= call!139762 (usedCharacters!432 (ite c!370984 (regOne!14207 r!26197) (regOne!14206 r!26197))))))

(declare-fun b!2334314 () Bool)

(declare-fun e!1494969 () List!27932)

(assert (=> b!2334314 (= e!1494969 (Cons!27834 (c!370927 r!26197) Nil!27834))))

(declare-fun b!2334315 () Bool)

(assert (=> b!2334315 (= e!1494970 e!1494969)))

(declare-fun c!370985 () Bool)

(assert (=> b!2334315 (= c!370985 ((_ is ElementMatch!6847) r!26197))))

(declare-fun c!370987 () Bool)

(declare-fun bm!139759 () Bool)

(assert (=> bm!139759 (= call!139764 (usedCharacters!432 (ite c!370987 (reg!7176 r!26197) (ite c!370984 (regTwo!14207 r!26197) (regTwo!14206 r!26197)))))))

(declare-fun b!2334316 () Bool)

(declare-fun e!1494971 () List!27932)

(assert (=> b!2334316 (= e!1494971 call!139764)))

(declare-fun b!2334317 () Bool)

(assert (=> b!2334317 (= c!370987 ((_ is Star!6847) r!26197))))

(assert (=> b!2334317 (= e!1494969 e!1494971)))

(declare-fun b!2334318 () Bool)

(assert (=> b!2334318 (= e!1494970 Nil!27834)))

(declare-fun b!2334319 () Bool)

(assert (=> b!2334319 (= e!1494971 e!1494968)))

(assert (=> b!2334319 (= c!370984 ((_ is Union!6847) r!26197))))

(declare-fun bm!139760 () Bool)

(declare-fun ++!6858 (List!27932 List!27932) List!27932)

(assert (=> bm!139760 (= call!139765 (++!6858 call!139762 call!139763))))

(assert (= (and d!690329 c!370986) b!2334318))

(assert (= (and d!690329 (not c!370986)) b!2334315))

(assert (= (and b!2334315 c!370985) b!2334314))

(assert (= (and b!2334315 (not c!370985)) b!2334317))

(assert (= (and b!2334317 c!370987) b!2334316))

(assert (= (and b!2334317 (not c!370987)) b!2334319))

(assert (= (and b!2334319 c!370984) b!2334312))

(assert (= (and b!2334319 (not c!370984)) b!2334313))

(assert (= (or b!2334312 b!2334313) bm!139757))

(assert (= (or b!2334312 b!2334313) bm!139758))

(assert (= (or b!2334312 b!2334313) bm!139760))

(assert (= (or b!2334316 bm!139757) bm!139759))

(declare-fun m!2762129 () Bool)

(assert (=> bm!139758 m!2762129))

(declare-fun m!2762131 () Bool)

(assert (=> bm!139759 m!2762131))

(declare-fun m!2762133 () Bool)

(assert (=> bm!139760 m!2762133))

(assert (=> b!2334169 d!690329))

(declare-fun d!690331 () Bool)

(assert (=> d!690331 (= (nullable!1926 r!26197) (nullableFct!483 r!26197))))

(declare-fun bs!459888 () Bool)

(assert (= bs!459888 d!690331))

(declare-fun m!2762135 () Bool)

(assert (=> bs!459888 m!2762135))

(assert (=> b!2334165 d!690331))

(declare-fun b!2334368 () Bool)

(declare-fun e!1494998 () Bool)

(declare-fun e!1494996 () Bool)

(assert (=> b!2334368 (= e!1494998 e!1494996)))

(declare-fun c!370993 () Bool)

(assert (=> b!2334368 (= c!370993 ((_ is Star!6847) r!26197))))

(declare-fun b!2334369 () Bool)

(declare-fun e!1494995 () Bool)

(declare-fun e!1494994 () Bool)

(assert (=> b!2334369 (= e!1494995 e!1494994)))

(declare-fun res!995949 () Bool)

(assert (=> b!2334369 (=> (not res!995949) (not e!1494994))))

(declare-fun call!139772 () Bool)

(assert (=> b!2334369 (= res!995949 call!139772)))

(declare-fun b!2334370 () Bool)

(declare-fun call!139773 () Bool)

(assert (=> b!2334370 (= e!1494994 call!139773)))

(declare-fun call!139774 () Bool)

(declare-fun bm!139767 () Bool)

(declare-fun c!370992 () Bool)

(assert (=> bm!139767 (= call!139774 (validRegex!2592 (ite c!370993 (reg!7176 r!26197) (ite c!370992 (regTwo!14207 r!26197) (regTwo!14206 r!26197)))))))

(declare-fun bm!139768 () Bool)

(assert (=> bm!139768 (= call!139772 (validRegex!2592 (ite c!370992 (regOne!14207 r!26197) (regOne!14206 r!26197))))))

(declare-fun bm!139769 () Bool)

(assert (=> bm!139769 (= call!139773 call!139774)))

(declare-fun b!2334371 () Bool)

(declare-fun e!1494993 () Bool)

(assert (=> b!2334371 (= e!1494996 e!1494993)))

(assert (=> b!2334371 (= c!370992 ((_ is Union!6847) r!26197))))

(declare-fun b!2334372 () Bool)

(declare-fun e!1494999 () Bool)

(assert (=> b!2334372 (= e!1494999 call!139773)))

(declare-fun d!690333 () Bool)

(declare-fun res!995948 () Bool)

(assert (=> d!690333 (=> res!995948 e!1494998)))

(assert (=> d!690333 (= res!995948 ((_ is ElementMatch!6847) r!26197))))

(assert (=> d!690333 (= (validRegex!2592 r!26197) e!1494998)))

(declare-fun b!2334373 () Bool)

(declare-fun e!1494997 () Bool)

(assert (=> b!2334373 (= e!1494996 e!1494997)))

(declare-fun res!995951 () Bool)

(assert (=> b!2334373 (= res!995951 (not (nullable!1926 (reg!7176 r!26197))))))

(assert (=> b!2334373 (=> (not res!995951) (not e!1494997))))

(declare-fun b!2334374 () Bool)

(declare-fun res!995947 () Bool)

(assert (=> b!2334374 (=> res!995947 e!1494995)))

(assert (=> b!2334374 (= res!995947 (not ((_ is Concat!11469) r!26197)))))

(assert (=> b!2334374 (= e!1494993 e!1494995)))

(declare-fun b!2334375 () Bool)

(assert (=> b!2334375 (= e!1494997 call!139774)))

(declare-fun b!2334376 () Bool)

(declare-fun res!995950 () Bool)

(assert (=> b!2334376 (=> (not res!995950) (not e!1494999))))

(assert (=> b!2334376 (= res!995950 call!139772)))

(assert (=> b!2334376 (= e!1494993 e!1494999)))

(assert (= (and d!690333 (not res!995948)) b!2334368))

(assert (= (and b!2334368 c!370993) b!2334373))

(assert (= (and b!2334368 (not c!370993)) b!2334371))

(assert (= (and b!2334373 res!995951) b!2334375))

(assert (= (and b!2334371 c!370992) b!2334376))

(assert (= (and b!2334371 (not c!370992)) b!2334374))

(assert (= (and b!2334376 res!995950) b!2334372))

(assert (= (and b!2334374 (not res!995947)) b!2334369))

(assert (= (and b!2334369 res!995949) b!2334370))

(assert (= (or b!2334372 b!2334370) bm!139769))

(assert (= (or b!2334376 b!2334369) bm!139768))

(assert (= (or b!2334375 bm!139769) bm!139767))

(declare-fun m!2762137 () Bool)

(assert (=> bm!139767 m!2762137))

(declare-fun m!2762139 () Bool)

(assert (=> bm!139768 m!2762139))

(declare-fun m!2762141 () Bool)

(assert (=> b!2334373 m!2762141))

(assert (=> start!230452 d!690333))

(declare-fun b!2334390 () Bool)

(declare-fun e!1495002 () Bool)

(declare-fun tp!740159 () Bool)

(declare-fun tp!740157 () Bool)

(assert (=> b!2334390 (= e!1495002 (and tp!740159 tp!740157))))

(declare-fun b!2334388 () Bool)

(declare-fun tp!740160 () Bool)

(declare-fun tp!740158 () Bool)

(assert (=> b!2334388 (= e!1495002 (and tp!740160 tp!740158))))

(declare-fun b!2334389 () Bool)

(declare-fun tp!740161 () Bool)

(assert (=> b!2334389 (= e!1495002 tp!740161)))

(assert (=> b!2334170 (= tp!740110 e!1495002)))

(declare-fun b!2334387 () Bool)

(assert (=> b!2334387 (= e!1495002 tp_is_empty!11005)))

(assert (= (and b!2334170 ((_ is ElementMatch!6847) (regOne!14207 r!26197))) b!2334387))

(assert (= (and b!2334170 ((_ is Concat!11469) (regOne!14207 r!26197))) b!2334388))

(assert (= (and b!2334170 ((_ is Star!6847) (regOne!14207 r!26197))) b!2334389))

(assert (= (and b!2334170 ((_ is Union!6847) (regOne!14207 r!26197))) b!2334390))

(declare-fun b!2334394 () Bool)

(declare-fun e!1495003 () Bool)

(declare-fun tp!740164 () Bool)

(declare-fun tp!740162 () Bool)

(assert (=> b!2334394 (= e!1495003 (and tp!740164 tp!740162))))

(declare-fun b!2334392 () Bool)

(declare-fun tp!740165 () Bool)

(declare-fun tp!740163 () Bool)

(assert (=> b!2334392 (= e!1495003 (and tp!740165 tp!740163))))

(declare-fun b!2334393 () Bool)

(declare-fun tp!740166 () Bool)

(assert (=> b!2334393 (= e!1495003 tp!740166)))

(assert (=> b!2334170 (= tp!740108 e!1495003)))

(declare-fun b!2334391 () Bool)

(assert (=> b!2334391 (= e!1495003 tp_is_empty!11005)))

(assert (= (and b!2334170 ((_ is ElementMatch!6847) (regTwo!14207 r!26197))) b!2334391))

(assert (= (and b!2334170 ((_ is Concat!11469) (regTwo!14207 r!26197))) b!2334392))

(assert (= (and b!2334170 ((_ is Star!6847) (regTwo!14207 r!26197))) b!2334393))

(assert (= (and b!2334170 ((_ is Union!6847) (regTwo!14207 r!26197))) b!2334394))

(declare-fun b!2334398 () Bool)

(declare-fun e!1495004 () Bool)

(declare-fun tp!740169 () Bool)

(declare-fun tp!740167 () Bool)

(assert (=> b!2334398 (= e!1495004 (and tp!740169 tp!740167))))

(declare-fun b!2334396 () Bool)

(declare-fun tp!740170 () Bool)

(declare-fun tp!740168 () Bool)

(assert (=> b!2334396 (= e!1495004 (and tp!740170 tp!740168))))

(declare-fun b!2334397 () Bool)

(declare-fun tp!740171 () Bool)

(assert (=> b!2334397 (= e!1495004 tp!740171)))

(assert (=> b!2334166 (= tp!740109 e!1495004)))

(declare-fun b!2334395 () Bool)

(assert (=> b!2334395 (= e!1495004 tp_is_empty!11005)))

(assert (= (and b!2334166 ((_ is ElementMatch!6847) (regOne!14206 r!26197))) b!2334395))

(assert (= (and b!2334166 ((_ is Concat!11469) (regOne!14206 r!26197))) b!2334396))

(assert (= (and b!2334166 ((_ is Star!6847) (regOne!14206 r!26197))) b!2334397))

(assert (= (and b!2334166 ((_ is Union!6847) (regOne!14206 r!26197))) b!2334398))

(declare-fun b!2334402 () Bool)

(declare-fun e!1495005 () Bool)

(declare-fun tp!740174 () Bool)

(declare-fun tp!740172 () Bool)

(assert (=> b!2334402 (= e!1495005 (and tp!740174 tp!740172))))

(declare-fun b!2334400 () Bool)

(declare-fun tp!740175 () Bool)

(declare-fun tp!740173 () Bool)

(assert (=> b!2334400 (= e!1495005 (and tp!740175 tp!740173))))

(declare-fun b!2334401 () Bool)

(declare-fun tp!740176 () Bool)

(assert (=> b!2334401 (= e!1495005 tp!740176)))

(assert (=> b!2334166 (= tp!740111 e!1495005)))

(declare-fun b!2334399 () Bool)

(assert (=> b!2334399 (= e!1495005 tp_is_empty!11005)))

(assert (= (and b!2334166 ((_ is ElementMatch!6847) (regTwo!14206 r!26197))) b!2334399))

(assert (= (and b!2334166 ((_ is Concat!11469) (regTwo!14206 r!26197))) b!2334400))

(assert (= (and b!2334166 ((_ is Star!6847) (regTwo!14206 r!26197))) b!2334401))

(assert (= (and b!2334166 ((_ is Union!6847) (regTwo!14206 r!26197))) b!2334402))

(declare-fun b!2334406 () Bool)

(declare-fun e!1495006 () Bool)

(declare-fun tp!740179 () Bool)

(declare-fun tp!740177 () Bool)

(assert (=> b!2334406 (= e!1495006 (and tp!740179 tp!740177))))

(declare-fun b!2334404 () Bool)

(declare-fun tp!740180 () Bool)

(declare-fun tp!740178 () Bool)

(assert (=> b!2334404 (= e!1495006 (and tp!740180 tp!740178))))

(declare-fun b!2334405 () Bool)

(declare-fun tp!740181 () Bool)

(assert (=> b!2334405 (= e!1495006 tp!740181)))

(assert (=> b!2334171 (= tp!740107 e!1495006)))

(declare-fun b!2334403 () Bool)

(assert (=> b!2334403 (= e!1495006 tp_is_empty!11005)))

(assert (= (and b!2334171 ((_ is ElementMatch!6847) (reg!7176 r!26197))) b!2334403))

(assert (= (and b!2334171 ((_ is Concat!11469) (reg!7176 r!26197))) b!2334404))

(assert (= (and b!2334171 ((_ is Star!6847) (reg!7176 r!26197))) b!2334405))

(assert (= (and b!2334171 ((_ is Union!6847) (reg!7176 r!26197))) b!2334406))

(check-sat (not b!2334405) (not b!2334265) (not b!2334390) (not b!2334397) (not b!2334400) (not d!690313) (not b!2334402) (not b!2334250) (not d!690331) (not b!2334388) (not b!2334393) (not bm!139758) (not d!690325) tp_is_empty!11005 (not bm!139732) (not bm!139729) (not b!2334392) (not d!690315) (not b!2334389) (not b!2334373) (not bm!139767) (not b!2334404) (not bm!139768) (not bm!139760) (not b!2334406) (not b!2334396) (not b!2334394) (not bm!139759) (not b!2334401) (not b!2334398))
(check-sat)
