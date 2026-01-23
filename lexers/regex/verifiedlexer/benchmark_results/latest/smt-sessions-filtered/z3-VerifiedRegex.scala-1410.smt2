; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!74078 () Bool)

(assert start!74078)

(declare-fun res!381653 () Bool)

(declare-fun e!547892 () Bool)

(assert (=> start!74078 (=> (not res!381653) (not e!547892))))

(declare-datatypes ((C!4728 0))(
  ( (C!4729 (val!2612 Int)) )
))
(declare-datatypes ((Regex!2079 0))(
  ( (ElementMatch!2079 (c!135560 C!4728)) (Concat!3810 (regOne!4670 Regex!2079) (regTwo!4670 Regex!2079)) (EmptyExpr!2079) (Star!2079 (reg!2408 Regex!2079)) (EmptyLang!2079) (Union!2079 (regOne!4671 Regex!2079) (regTwo!4671 Regex!2079)) )
))
(declare-fun r!27177 () Regex!2079)

(declare-fun validRegex!632 (Regex!2079) Bool)

(assert (=> start!74078 (= res!381653 (validRegex!632 r!27177))))

(assert (=> start!74078 e!547892))

(declare-fun e!547893 () Bool)

(assert (=> start!74078 e!547893))

(declare-fun tp_is_empty!3881 () Bool)

(assert (=> start!74078 tp_is_empty!3881))

(declare-fun b!831973 () Bool)

(declare-fun tp!260612 () Bool)

(declare-fun tp!260611 () Bool)

(assert (=> b!831973 (= e!547893 (and tp!260612 tp!260611))))

(declare-fun b!831974 () Bool)

(assert (=> b!831974 (= e!547892 (not (validRegex!632 (regTwo!4670 r!27177))))))

(declare-fun b!831975 () Bool)

(declare-fun tp!260610 () Bool)

(declare-fun tp!260613 () Bool)

(assert (=> b!831975 (= e!547893 (and tp!260610 tp!260613))))

(declare-fun b!831976 () Bool)

(declare-fun res!381655 () Bool)

(assert (=> b!831976 (=> (not res!381655) (not e!547892))))

(get-info :version)

(assert (=> b!831976 (= res!381655 (and (not ((_ is EmptyExpr!2079) r!27177)) (not ((_ is EmptyLang!2079) r!27177)) (not ((_ is ElementMatch!2079) r!27177)) (not ((_ is Star!2079) r!27177)) (not ((_ is Union!2079) r!27177))))))

(declare-fun b!831977 () Bool)

(declare-fun res!381657 () Bool)

(assert (=> b!831977 (=> (not res!381657) (not e!547892))))

(declare-fun c!13916 () C!4728)

(declare-datatypes ((List!8905 0))(
  ( (Nil!8889) (Cons!8889 (h!14290 C!4728) (t!93197 List!8905)) )
))
(declare-fun contains!1670 (List!8905 C!4728) Bool)

(declare-fun firstChars!50 (Regex!2079) List!8905)

(assert (=> b!831977 (= res!381657 (contains!1670 (firstChars!50 r!27177) c!13916))))

(declare-fun b!831978 () Bool)

(declare-fun tp!260614 () Bool)

(assert (=> b!831978 (= e!547893 tp!260614)))

(declare-fun b!831979 () Bool)

(declare-fun res!381656 () Bool)

(assert (=> b!831979 (=> (not res!381656) (not e!547892))))

(assert (=> b!831979 (= res!381656 (not (contains!1670 (firstChars!50 (regOne!4670 r!27177)) c!13916)))))

(declare-fun b!831980 () Bool)

(declare-fun res!381654 () Bool)

(assert (=> b!831980 (=> (not res!381654) (not e!547892))))

(declare-fun nullable!530 (Regex!2079) Bool)

(assert (=> b!831980 (= res!381654 (nullable!530 (regOne!4670 r!27177)))))

(declare-fun b!831981 () Bool)

(assert (=> b!831981 (= e!547893 tp_is_empty!3881)))

(assert (= (and start!74078 res!381653) b!831977))

(assert (= (and b!831977 res!381657) b!831976))

(assert (= (and b!831976 res!381655) b!831980))

(assert (= (and b!831980 res!381654) b!831979))

(assert (= (and b!831979 res!381656) b!831974))

(assert (= (and start!74078 ((_ is ElementMatch!2079) r!27177)) b!831981))

(assert (= (and start!74078 ((_ is Concat!3810) r!27177)) b!831975))

(assert (= (and start!74078 ((_ is Star!2079) r!27177)) b!831978))

(assert (= (and start!74078 ((_ is Union!2079) r!27177)) b!831973))

(declare-fun m!1068211 () Bool)

(assert (=> b!831979 m!1068211))

(assert (=> b!831979 m!1068211))

(declare-fun m!1068213 () Bool)

(assert (=> b!831979 m!1068213))

(declare-fun m!1068215 () Bool)

(assert (=> b!831980 m!1068215))

(declare-fun m!1068217 () Bool)

(assert (=> start!74078 m!1068217))

(declare-fun m!1068219 () Bool)

(assert (=> b!831974 m!1068219))

(declare-fun m!1068221 () Bool)

(assert (=> b!831977 m!1068221))

(assert (=> b!831977 m!1068221))

(declare-fun m!1068223 () Bool)

(assert (=> b!831977 m!1068223))

(check-sat (not b!831974) (not start!74078) (not b!831975) (not b!831973) (not b!831979) (not b!831978) (not b!831980) tp_is_empty!3881 (not b!831977))
(check-sat)
(get-model)

(declare-fun d!260335 () Bool)

(declare-fun lt!317770 () Bool)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!1317 (List!8905) (InoxSet C!4728))

(assert (=> d!260335 (= lt!317770 (select (content!1317 (firstChars!50 (regOne!4670 r!27177))) c!13916))))

(declare-fun e!547898 () Bool)

(assert (=> d!260335 (= lt!317770 e!547898)))

(declare-fun res!381662 () Bool)

(assert (=> d!260335 (=> (not res!381662) (not e!547898))))

(assert (=> d!260335 (= res!381662 ((_ is Cons!8889) (firstChars!50 (regOne!4670 r!27177))))))

(assert (=> d!260335 (= (contains!1670 (firstChars!50 (regOne!4670 r!27177)) c!13916) lt!317770)))

(declare-fun b!831986 () Bool)

(declare-fun e!547899 () Bool)

(assert (=> b!831986 (= e!547898 e!547899)))

(declare-fun res!381663 () Bool)

(assert (=> b!831986 (=> res!381663 e!547899)))

(assert (=> b!831986 (= res!381663 (= (h!14290 (firstChars!50 (regOne!4670 r!27177))) c!13916))))

(declare-fun b!831987 () Bool)

(assert (=> b!831987 (= e!547899 (contains!1670 (t!93197 (firstChars!50 (regOne!4670 r!27177))) c!13916))))

(assert (= (and d!260335 res!381662) b!831986))

(assert (= (and b!831986 (not res!381663)) b!831987))

(assert (=> d!260335 m!1068211))

(declare-fun m!1068225 () Bool)

(assert (=> d!260335 m!1068225))

(declare-fun m!1068227 () Bool)

(assert (=> d!260335 m!1068227))

(declare-fun m!1068229 () Bool)

(assert (=> b!831987 m!1068229))

(assert (=> b!831979 d!260335))

(declare-fun b!832034 () Bool)

(declare-fun e!547930 () List!8905)

(declare-fun e!547928 () List!8905)

(assert (=> b!832034 (= e!547930 e!547928)))

(declare-fun c!135584 () Bool)

(assert (=> b!832034 (= c!135584 ((_ is ElementMatch!2079) (regOne!4670 r!27177)))))

(declare-fun bm!49229 () Bool)

(declare-fun call!49234 () List!8905)

(declare-fun c!135585 () Bool)

(assert (=> bm!49229 (= call!49234 (firstChars!50 (ite c!135585 (regTwo!4671 (regOne!4670 r!27177)) (regOne!4670 (regOne!4670 r!27177)))))))

(declare-fun bm!49230 () Bool)

(declare-fun call!49238 () List!8905)

(declare-fun call!49235 () List!8905)

(assert (=> bm!49230 (= call!49238 call!49235)))

(declare-fun call!49237 () List!8905)

(declare-fun bm!49231 () Bool)

(declare-fun call!49236 () List!8905)

(declare-fun ++!2305 (List!8905 List!8905) List!8905)

(assert (=> bm!49231 (= call!49237 (++!2305 (ite c!135585 call!49238 call!49236) (ite c!135585 call!49234 call!49238)))))

(declare-fun b!832035 () Bool)

(declare-fun e!547926 () List!8905)

(assert (=> b!832035 (= e!547926 call!49237)))

(declare-fun b!832036 () Bool)

(assert (=> b!832036 (= e!547930 Nil!8889)))

(declare-fun b!832037 () Bool)

(declare-fun e!547929 () List!8905)

(assert (=> b!832037 (= e!547929 call!49237)))

(declare-fun b!832039 () Bool)

(declare-fun e!547927 () List!8905)

(assert (=> b!832039 (= e!547927 call!49235)))

(declare-fun b!832040 () Bool)

(declare-fun c!135582 () Bool)

(assert (=> b!832040 (= c!135582 (nullable!530 (regOne!4670 (regOne!4670 r!27177))))))

(assert (=> b!832040 (= e!547926 e!547929)))

(declare-fun b!832041 () Bool)

(assert (=> b!832041 (= e!547927 e!547926)))

(assert (=> b!832041 (= c!135585 ((_ is Union!2079) (regOne!4670 r!27177)))))

(declare-fun c!135581 () Bool)

(declare-fun bm!49232 () Bool)

(assert (=> bm!49232 (= call!49235 (firstChars!50 (ite c!135581 (reg!2408 (regOne!4670 r!27177)) (ite c!135585 (regOne!4671 (regOne!4670 r!27177)) (regTwo!4670 (regOne!4670 r!27177))))))))

(declare-fun b!832042 () Bool)

(assert (=> b!832042 (= e!547929 call!49236)))

(declare-fun b!832043 () Bool)

(assert (=> b!832043 (= e!547928 (Cons!8889 (c!135560 (regOne!4670 r!27177)) Nil!8889))))

(declare-fun bm!49233 () Bool)

(assert (=> bm!49233 (= call!49236 call!49234)))

(declare-fun d!260339 () Bool)

(declare-fun c!135583 () Bool)

(assert (=> d!260339 (= c!135583 (or ((_ is EmptyExpr!2079) (regOne!4670 r!27177)) ((_ is EmptyLang!2079) (regOne!4670 r!27177))))))

(assert (=> d!260339 (= (firstChars!50 (regOne!4670 r!27177)) e!547930)))

(declare-fun b!832038 () Bool)

(assert (=> b!832038 (= c!135581 ((_ is Star!2079) (regOne!4670 r!27177)))))

(assert (=> b!832038 (= e!547928 e!547927)))

(assert (= (and d!260339 c!135583) b!832036))

(assert (= (and d!260339 (not c!135583)) b!832034))

(assert (= (and b!832034 c!135584) b!832043))

(assert (= (and b!832034 (not c!135584)) b!832038))

(assert (= (and b!832038 c!135581) b!832039))

(assert (= (and b!832038 (not c!135581)) b!832041))

(assert (= (and b!832041 c!135585) b!832035))

(assert (= (and b!832041 (not c!135585)) b!832040))

(assert (= (and b!832040 c!135582) b!832037))

(assert (= (and b!832040 (not c!135582)) b!832042))

(assert (= (or b!832037 b!832042) bm!49233))

(assert (= (or b!832035 bm!49233) bm!49229))

(assert (= (or b!832035 b!832037) bm!49230))

(assert (= (or b!832035 b!832037) bm!49231))

(assert (= (or b!832039 bm!49230) bm!49232))

(declare-fun m!1068237 () Bool)

(assert (=> bm!49229 m!1068237))

(declare-fun m!1068239 () Bool)

(assert (=> bm!49231 m!1068239))

(declare-fun m!1068241 () Bool)

(assert (=> b!832040 m!1068241))

(declare-fun m!1068243 () Bool)

(assert (=> bm!49232 m!1068243))

(assert (=> b!831979 d!260339))

(declare-fun b!832102 () Bool)

(declare-fun e!547974 () Bool)

(declare-fun call!49261 () Bool)

(assert (=> b!832102 (= e!547974 call!49261)))

(declare-fun b!832103 () Bool)

(declare-fun e!547972 () Bool)

(declare-fun call!49260 () Bool)

(assert (=> b!832103 (= e!547972 call!49260)))

(declare-fun b!832104 () Bool)

(declare-fun res!381693 () Bool)

(assert (=> b!832104 (=> (not res!381693) (not e!547972))))

(declare-fun call!49259 () Bool)

(assert (=> b!832104 (= res!381693 call!49259)))

(declare-fun e!547977 () Bool)

(assert (=> b!832104 (= e!547977 e!547972)))

(declare-fun bm!49254 () Bool)

(assert (=> bm!49254 (= call!49260 call!49261)))

(declare-fun b!832105 () Bool)

(declare-fun e!547973 () Bool)

(assert (=> b!832105 (= e!547973 e!547974)))

(declare-fun res!381695 () Bool)

(assert (=> b!832105 (= res!381695 (not (nullable!530 (reg!2408 (regTwo!4670 r!27177)))))))

(assert (=> b!832105 (=> (not res!381695) (not e!547974))))

(declare-fun b!832106 () Bool)

(declare-fun e!547976 () Bool)

(assert (=> b!832106 (= e!547976 e!547973)))

(declare-fun c!135605 () Bool)

(assert (=> b!832106 (= c!135605 ((_ is Star!2079) (regTwo!4670 r!27177)))))

(declare-fun b!832107 () Bool)

(declare-fun e!547971 () Bool)

(declare-fun e!547975 () Bool)

(assert (=> b!832107 (= e!547971 e!547975)))

(declare-fun res!381692 () Bool)

(assert (=> b!832107 (=> (not res!381692) (not e!547975))))

(assert (=> b!832107 (= res!381692 call!49260)))

(declare-fun b!832108 () Bool)

(assert (=> b!832108 (= e!547975 call!49259)))

(declare-fun c!135604 () Bool)

(declare-fun bm!49255 () Bool)

(assert (=> bm!49255 (= call!49261 (validRegex!632 (ite c!135605 (reg!2408 (regTwo!4670 r!27177)) (ite c!135604 (regTwo!4671 (regTwo!4670 r!27177)) (regOne!4670 (regTwo!4670 r!27177))))))))

(declare-fun b!832110 () Bool)

(assert (=> b!832110 (= e!547973 e!547977)))

(assert (=> b!832110 (= c!135604 ((_ is Union!2079) (regTwo!4670 r!27177)))))

(declare-fun bm!49256 () Bool)

(assert (=> bm!49256 (= call!49259 (validRegex!632 (ite c!135604 (regOne!4671 (regTwo!4670 r!27177)) (regTwo!4670 (regTwo!4670 r!27177)))))))

(declare-fun d!260343 () Bool)

(declare-fun res!381696 () Bool)

(assert (=> d!260343 (=> res!381696 e!547976)))

(assert (=> d!260343 (= res!381696 ((_ is ElementMatch!2079) (regTwo!4670 r!27177)))))

(assert (=> d!260343 (= (validRegex!632 (regTwo!4670 r!27177)) e!547976)))

(declare-fun b!832109 () Bool)

(declare-fun res!381694 () Bool)

(assert (=> b!832109 (=> res!381694 e!547971)))

(assert (=> b!832109 (= res!381694 (not ((_ is Concat!3810) (regTwo!4670 r!27177))))))

(assert (=> b!832109 (= e!547977 e!547971)))

(assert (= (and d!260343 (not res!381696)) b!832106))

(assert (= (and b!832106 c!135605) b!832105))

(assert (= (and b!832106 (not c!135605)) b!832110))

(assert (= (and b!832105 res!381695) b!832102))

(assert (= (and b!832110 c!135604) b!832104))

(assert (= (and b!832110 (not c!135604)) b!832109))

(assert (= (and b!832104 res!381693) b!832103))

(assert (= (and b!832109 (not res!381694)) b!832107))

(assert (= (and b!832107 res!381692) b!832108))

(assert (= (or b!832104 b!832108) bm!49256))

(assert (= (or b!832103 b!832107) bm!49254))

(assert (= (or b!832102 bm!49254) bm!49255))

(declare-fun m!1068265 () Bool)

(assert (=> b!832105 m!1068265))

(declare-fun m!1068267 () Bool)

(assert (=> bm!49255 m!1068267))

(declare-fun m!1068269 () Bool)

(assert (=> bm!49256 m!1068269))

(assert (=> b!831974 d!260343))

(declare-fun d!260351 () Bool)

(declare-fun lt!317775 () Bool)

(assert (=> d!260351 (= lt!317775 (select (content!1317 (firstChars!50 r!27177)) c!13916))))

(declare-fun e!547978 () Bool)

(assert (=> d!260351 (= lt!317775 e!547978)))

(declare-fun res!381697 () Bool)

(assert (=> d!260351 (=> (not res!381697) (not e!547978))))

(assert (=> d!260351 (= res!381697 ((_ is Cons!8889) (firstChars!50 r!27177)))))

(assert (=> d!260351 (= (contains!1670 (firstChars!50 r!27177) c!13916) lt!317775)))

(declare-fun b!832111 () Bool)

(declare-fun e!547979 () Bool)

(assert (=> b!832111 (= e!547978 e!547979)))

(declare-fun res!381698 () Bool)

(assert (=> b!832111 (=> res!381698 e!547979)))

(assert (=> b!832111 (= res!381698 (= (h!14290 (firstChars!50 r!27177)) c!13916))))

(declare-fun b!832112 () Bool)

(assert (=> b!832112 (= e!547979 (contains!1670 (t!93197 (firstChars!50 r!27177)) c!13916))))

(assert (= (and d!260351 res!381697) b!832111))

(assert (= (and b!832111 (not res!381698)) b!832112))

(assert (=> d!260351 m!1068221))

(declare-fun m!1068271 () Bool)

(assert (=> d!260351 m!1068271))

(declare-fun m!1068273 () Bool)

(assert (=> d!260351 m!1068273))

(declare-fun m!1068275 () Bool)

(assert (=> b!832112 m!1068275))

(assert (=> b!831977 d!260351))

(declare-fun b!832113 () Bool)

(declare-fun e!547984 () List!8905)

(declare-fun e!547982 () List!8905)

(assert (=> b!832113 (= e!547984 e!547982)))

(declare-fun c!135609 () Bool)

(assert (=> b!832113 (= c!135609 ((_ is ElementMatch!2079) r!27177))))

(declare-fun bm!49259 () Bool)

(declare-fun call!49264 () List!8905)

(declare-fun c!135610 () Bool)

(assert (=> bm!49259 (= call!49264 (firstChars!50 (ite c!135610 (regTwo!4671 r!27177) (regOne!4670 r!27177))))))

(declare-fun bm!49260 () Bool)

(declare-fun call!49268 () List!8905)

(declare-fun call!49265 () List!8905)

(assert (=> bm!49260 (= call!49268 call!49265)))

(declare-fun call!49266 () List!8905)

(declare-fun bm!49261 () Bool)

(declare-fun call!49267 () List!8905)

(assert (=> bm!49261 (= call!49267 (++!2305 (ite c!135610 call!49268 call!49266) (ite c!135610 call!49264 call!49268)))))

(declare-fun b!832114 () Bool)

(declare-fun e!547980 () List!8905)

(assert (=> b!832114 (= e!547980 call!49267)))

(declare-fun b!832115 () Bool)

(assert (=> b!832115 (= e!547984 Nil!8889)))

(declare-fun b!832116 () Bool)

(declare-fun e!547983 () List!8905)

(assert (=> b!832116 (= e!547983 call!49267)))

(declare-fun b!832118 () Bool)

(declare-fun e!547981 () List!8905)

(assert (=> b!832118 (= e!547981 call!49265)))

(declare-fun b!832119 () Bool)

(declare-fun c!135607 () Bool)

(assert (=> b!832119 (= c!135607 (nullable!530 (regOne!4670 r!27177)))))

(assert (=> b!832119 (= e!547980 e!547983)))

(declare-fun b!832120 () Bool)

(assert (=> b!832120 (= e!547981 e!547980)))

(assert (=> b!832120 (= c!135610 ((_ is Union!2079) r!27177))))

(declare-fun c!135606 () Bool)

(declare-fun bm!49262 () Bool)

(assert (=> bm!49262 (= call!49265 (firstChars!50 (ite c!135606 (reg!2408 r!27177) (ite c!135610 (regOne!4671 r!27177) (regTwo!4670 r!27177)))))))

(declare-fun b!832121 () Bool)

(assert (=> b!832121 (= e!547983 call!49266)))

(declare-fun b!832122 () Bool)

(assert (=> b!832122 (= e!547982 (Cons!8889 (c!135560 r!27177) Nil!8889))))

(declare-fun bm!49263 () Bool)

(assert (=> bm!49263 (= call!49266 call!49264)))

(declare-fun d!260353 () Bool)

(declare-fun c!135608 () Bool)

(assert (=> d!260353 (= c!135608 (or ((_ is EmptyExpr!2079) r!27177) ((_ is EmptyLang!2079) r!27177)))))

(assert (=> d!260353 (= (firstChars!50 r!27177) e!547984)))

(declare-fun b!832117 () Bool)

(assert (=> b!832117 (= c!135606 ((_ is Star!2079) r!27177))))

(assert (=> b!832117 (= e!547982 e!547981)))

(assert (= (and d!260353 c!135608) b!832115))

(assert (= (and d!260353 (not c!135608)) b!832113))

(assert (= (and b!832113 c!135609) b!832122))

(assert (= (and b!832113 (not c!135609)) b!832117))

(assert (= (and b!832117 c!135606) b!832118))

(assert (= (and b!832117 (not c!135606)) b!832120))

(assert (= (and b!832120 c!135610) b!832114))

(assert (= (and b!832120 (not c!135610)) b!832119))

(assert (= (and b!832119 c!135607) b!832116))

(assert (= (and b!832119 (not c!135607)) b!832121))

(assert (= (or b!832116 b!832121) bm!49263))

(assert (= (or b!832114 bm!49263) bm!49259))

(assert (= (or b!832114 b!832116) bm!49260))

(assert (= (or b!832114 b!832116) bm!49261))

(assert (= (or b!832118 bm!49260) bm!49262))

(declare-fun m!1068277 () Bool)

(assert (=> bm!49259 m!1068277))

(declare-fun m!1068279 () Bool)

(assert (=> bm!49261 m!1068279))

(assert (=> b!832119 m!1068215))

(declare-fun m!1068281 () Bool)

(assert (=> bm!49262 m!1068281))

(assert (=> b!831977 d!260353))

(declare-fun d!260355 () Bool)

(declare-fun nullableFct!167 (Regex!2079) Bool)

(assert (=> d!260355 (= (nullable!530 (regOne!4670 r!27177)) (nullableFct!167 (regOne!4670 r!27177)))))

(declare-fun bs!229668 () Bool)

(assert (= bs!229668 d!260355))

(declare-fun m!1068283 () Bool)

(assert (=> bs!229668 m!1068283))

(assert (=> b!831980 d!260355))

(declare-fun b!832123 () Bool)

(declare-fun e!547988 () Bool)

(declare-fun call!49271 () Bool)

(assert (=> b!832123 (= e!547988 call!49271)))

(declare-fun b!832124 () Bool)

(declare-fun e!547986 () Bool)

(declare-fun call!49270 () Bool)

(assert (=> b!832124 (= e!547986 call!49270)))

(declare-fun b!832125 () Bool)

(declare-fun res!381700 () Bool)

(assert (=> b!832125 (=> (not res!381700) (not e!547986))))

(declare-fun call!49269 () Bool)

(assert (=> b!832125 (= res!381700 call!49269)))

(declare-fun e!547991 () Bool)

(assert (=> b!832125 (= e!547991 e!547986)))

(declare-fun bm!49264 () Bool)

(assert (=> bm!49264 (= call!49270 call!49271)))

(declare-fun b!832126 () Bool)

(declare-fun e!547987 () Bool)

(assert (=> b!832126 (= e!547987 e!547988)))

(declare-fun res!381702 () Bool)

(assert (=> b!832126 (= res!381702 (not (nullable!530 (reg!2408 r!27177))))))

(assert (=> b!832126 (=> (not res!381702) (not e!547988))))

(declare-fun b!832127 () Bool)

(declare-fun e!547990 () Bool)

(assert (=> b!832127 (= e!547990 e!547987)))

(declare-fun c!135612 () Bool)

(assert (=> b!832127 (= c!135612 ((_ is Star!2079) r!27177))))

(declare-fun b!832128 () Bool)

(declare-fun e!547985 () Bool)

(declare-fun e!547989 () Bool)

(assert (=> b!832128 (= e!547985 e!547989)))

(declare-fun res!381699 () Bool)

(assert (=> b!832128 (=> (not res!381699) (not e!547989))))

(assert (=> b!832128 (= res!381699 call!49270)))

(declare-fun b!832129 () Bool)

(assert (=> b!832129 (= e!547989 call!49269)))

(declare-fun bm!49265 () Bool)

(declare-fun c!135611 () Bool)

(assert (=> bm!49265 (= call!49271 (validRegex!632 (ite c!135612 (reg!2408 r!27177) (ite c!135611 (regTwo!4671 r!27177) (regOne!4670 r!27177)))))))

(declare-fun b!832131 () Bool)

(assert (=> b!832131 (= e!547987 e!547991)))

(assert (=> b!832131 (= c!135611 ((_ is Union!2079) r!27177))))

(declare-fun bm!49266 () Bool)

(assert (=> bm!49266 (= call!49269 (validRegex!632 (ite c!135611 (regOne!4671 r!27177) (regTwo!4670 r!27177))))))

(declare-fun d!260357 () Bool)

(declare-fun res!381703 () Bool)

(assert (=> d!260357 (=> res!381703 e!547990)))

(assert (=> d!260357 (= res!381703 ((_ is ElementMatch!2079) r!27177))))

(assert (=> d!260357 (= (validRegex!632 r!27177) e!547990)))

(declare-fun b!832130 () Bool)

(declare-fun res!381701 () Bool)

(assert (=> b!832130 (=> res!381701 e!547985)))

(assert (=> b!832130 (= res!381701 (not ((_ is Concat!3810) r!27177)))))

(assert (=> b!832130 (= e!547991 e!547985)))

(assert (= (and d!260357 (not res!381703)) b!832127))

(assert (= (and b!832127 c!135612) b!832126))

(assert (= (and b!832127 (not c!135612)) b!832131))

(assert (= (and b!832126 res!381702) b!832123))

(assert (= (and b!832131 c!135611) b!832125))

(assert (= (and b!832131 (not c!135611)) b!832130))

(assert (= (and b!832125 res!381700) b!832124))

(assert (= (and b!832130 (not res!381701)) b!832128))

(assert (= (and b!832128 res!381699) b!832129))

(assert (= (or b!832125 b!832129) bm!49266))

(assert (= (or b!832124 b!832128) bm!49264))

(assert (= (or b!832123 bm!49264) bm!49265))

(declare-fun m!1068285 () Bool)

(assert (=> b!832126 m!1068285))

(declare-fun m!1068287 () Bool)

(assert (=> bm!49265 m!1068287))

(declare-fun m!1068289 () Bool)

(assert (=> bm!49266 m!1068289))

(assert (=> start!74078 d!260357))

(declare-fun b!832160 () Bool)

(declare-fun e!548008 () Bool)

(assert (=> b!832160 (= e!548008 tp_is_empty!3881)))

(assert (=> b!831973 (= tp!260612 e!548008)))

(declare-fun b!832161 () Bool)

(declare-fun tp!260625 () Bool)

(declare-fun tp!260627 () Bool)

(assert (=> b!832161 (= e!548008 (and tp!260625 tp!260627))))

(declare-fun b!832162 () Bool)

(declare-fun tp!260626 () Bool)

(assert (=> b!832162 (= e!548008 tp!260626)))

(declare-fun b!832163 () Bool)

(declare-fun tp!260629 () Bool)

(declare-fun tp!260628 () Bool)

(assert (=> b!832163 (= e!548008 (and tp!260629 tp!260628))))

(assert (= (and b!831973 ((_ is ElementMatch!2079) (regOne!4671 r!27177))) b!832160))

(assert (= (and b!831973 ((_ is Concat!3810) (regOne!4671 r!27177))) b!832161))

(assert (= (and b!831973 ((_ is Star!2079) (regOne!4671 r!27177))) b!832162))

(assert (= (and b!831973 ((_ is Union!2079) (regOne!4671 r!27177))) b!832163))

(declare-fun b!832164 () Bool)

(declare-fun e!548009 () Bool)

(assert (=> b!832164 (= e!548009 tp_is_empty!3881)))

(assert (=> b!831973 (= tp!260611 e!548009)))

(declare-fun b!832165 () Bool)

(declare-fun tp!260630 () Bool)

(declare-fun tp!260632 () Bool)

(assert (=> b!832165 (= e!548009 (and tp!260630 tp!260632))))

(declare-fun b!832166 () Bool)

(declare-fun tp!260631 () Bool)

(assert (=> b!832166 (= e!548009 tp!260631)))

(declare-fun b!832167 () Bool)

(declare-fun tp!260634 () Bool)

(declare-fun tp!260633 () Bool)

(assert (=> b!832167 (= e!548009 (and tp!260634 tp!260633))))

(assert (= (and b!831973 ((_ is ElementMatch!2079) (regTwo!4671 r!27177))) b!832164))

(assert (= (and b!831973 ((_ is Concat!3810) (regTwo!4671 r!27177))) b!832165))

(assert (= (and b!831973 ((_ is Star!2079) (regTwo!4671 r!27177))) b!832166))

(assert (= (and b!831973 ((_ is Union!2079) (regTwo!4671 r!27177))) b!832167))

(declare-fun b!832168 () Bool)

(declare-fun e!548010 () Bool)

(assert (=> b!832168 (= e!548010 tp_is_empty!3881)))

(assert (=> b!831978 (= tp!260614 e!548010)))

(declare-fun b!832169 () Bool)

(declare-fun tp!260635 () Bool)

(declare-fun tp!260637 () Bool)

(assert (=> b!832169 (= e!548010 (and tp!260635 tp!260637))))

(declare-fun b!832170 () Bool)

(declare-fun tp!260636 () Bool)

(assert (=> b!832170 (= e!548010 tp!260636)))

(declare-fun b!832171 () Bool)

(declare-fun tp!260639 () Bool)

(declare-fun tp!260638 () Bool)

(assert (=> b!832171 (= e!548010 (and tp!260639 tp!260638))))

(assert (= (and b!831978 ((_ is ElementMatch!2079) (reg!2408 r!27177))) b!832168))

(assert (= (and b!831978 ((_ is Concat!3810) (reg!2408 r!27177))) b!832169))

(assert (= (and b!831978 ((_ is Star!2079) (reg!2408 r!27177))) b!832170))

(assert (= (and b!831978 ((_ is Union!2079) (reg!2408 r!27177))) b!832171))

(declare-fun b!832172 () Bool)

(declare-fun e!548011 () Bool)

(assert (=> b!832172 (= e!548011 tp_is_empty!3881)))

(assert (=> b!831975 (= tp!260610 e!548011)))

(declare-fun b!832173 () Bool)

(declare-fun tp!260640 () Bool)

(declare-fun tp!260642 () Bool)

(assert (=> b!832173 (= e!548011 (and tp!260640 tp!260642))))

(declare-fun b!832174 () Bool)

(declare-fun tp!260641 () Bool)

(assert (=> b!832174 (= e!548011 tp!260641)))

(declare-fun b!832175 () Bool)

(declare-fun tp!260644 () Bool)

(declare-fun tp!260643 () Bool)

(assert (=> b!832175 (= e!548011 (and tp!260644 tp!260643))))

(assert (= (and b!831975 ((_ is ElementMatch!2079) (regOne!4670 r!27177))) b!832172))

(assert (= (and b!831975 ((_ is Concat!3810) (regOne!4670 r!27177))) b!832173))

(assert (= (and b!831975 ((_ is Star!2079) (regOne!4670 r!27177))) b!832174))

(assert (= (and b!831975 ((_ is Union!2079) (regOne!4670 r!27177))) b!832175))

(declare-fun b!832180 () Bool)

(declare-fun e!548014 () Bool)

(assert (=> b!832180 (= e!548014 tp_is_empty!3881)))

(assert (=> b!831975 (= tp!260613 e!548014)))

(declare-fun b!832181 () Bool)

(declare-fun tp!260645 () Bool)

(declare-fun tp!260647 () Bool)

(assert (=> b!832181 (= e!548014 (and tp!260645 tp!260647))))

(declare-fun b!832182 () Bool)

(declare-fun tp!260646 () Bool)

(assert (=> b!832182 (= e!548014 tp!260646)))

(declare-fun b!832183 () Bool)

(declare-fun tp!260649 () Bool)

(declare-fun tp!260648 () Bool)

(assert (=> b!832183 (= e!548014 (and tp!260649 tp!260648))))

(assert (= (and b!831975 ((_ is ElementMatch!2079) (regTwo!4670 r!27177))) b!832180))

(assert (= (and b!831975 ((_ is Concat!3810) (regTwo!4670 r!27177))) b!832181))

(assert (= (and b!831975 ((_ is Star!2079) (regTwo!4670 r!27177))) b!832182))

(assert (= (and b!831975 ((_ is Union!2079) (regTwo!4670 r!27177))) b!832183))

(check-sat (not b!832183) (not b!832182) (not bm!49229) (not b!832162) (not b!832163) (not b!832171) (not b!832126) (not bm!49231) (not b!832040) (not bm!49232) (not bm!49256) (not b!832112) (not bm!49265) (not bm!49266) (not b!831987) (not bm!49255) (not bm!49261) (not d!260335) (not b!832161) (not b!832167) (not b!832181) (not b!832175) (not b!832119) (not b!832166) (not b!832174) (not d!260351) (not bm!49262) (not b!832169) (not d!260355) (not b!832173) (not b!832105) tp_is_empty!3881 (not bm!49259) (not b!832170) (not b!832165))
(check-sat)
