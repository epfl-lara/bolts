; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!696986 () Bool)

(assert start!696986)

(declare-fun b!7148195 () Bool)

(assert (=> b!7148195 true))

(declare-fun b!7148188 () Bool)

(declare-fun res!2916055 () Bool)

(declare-fun e!4295409 () Bool)

(assert (=> b!7148188 (=> (not res!2916055) (not e!4295409))))

(declare-datatypes ((C!36722 0))(
  ( (C!36723 (val!28309 Int)) )
))
(declare-datatypes ((Regex!18224 0))(
  ( (ElementMatch!18224 (c!1332867 C!36722)) (Concat!27069 (regOne!36960 Regex!18224) (regTwo!36960 Regex!18224)) (EmptyExpr!18224) (Star!18224 (reg!18553 Regex!18224)) (EmptyLang!18224) (Union!18224 (regOne!36961 Regex!18224) (regTwo!36961 Regex!18224)) )
))
(declare-datatypes ((List!69526 0))(
  ( (Nil!69402) (Cons!69402 (h!75850 Regex!18224) (t!383543 List!69526)) )
))
(declare-datatypes ((Context!14436 0))(
  ( (Context!14437 (exprs!7718 List!69526)) )
))
(declare-datatypes ((List!69527 0))(
  ( (Nil!69403) (Cons!69403 (h!75851 Context!14436) (t!383544 List!69527)) )
))
(declare-fun zl!333 () List!69527)

(assert (=> b!7148188 (= res!2916055 (not (is-Cons!69403 zl!333)))))

(declare-fun e!4295410 () Bool)

(declare-fun b!7148189 () Bool)

(declare-fun tp!1972968 () Bool)

(declare-fun e!4295411 () Bool)

(declare-fun inv!88625 (Context!14436) Bool)

(assert (=> b!7148189 (= e!4295411 (and (inv!88625 (h!75851 zl!333)) e!4295410 tp!1972968))))

(declare-fun b!7148190 () Bool)

(declare-fun e!4295412 () Bool)

(declare-fun tp!1972966 () Bool)

(declare-fun tp!1972963 () Bool)

(assert (=> b!7148190 (= e!4295412 (and tp!1972966 tp!1972963))))

(declare-fun b!7148191 () Bool)

(declare-fun tp!1972965 () Bool)

(assert (=> b!7148191 (= e!4295410 tp!1972965)))

(declare-fun res!2916054 () Bool)

(assert (=> start!696986 (=> (not res!2916054) (not e!4295409))))

(declare-fun r!7278 () Regex!18224)

(declare-fun contains!20656 (List!69526 Regex!18224) Bool)

(declare-fun unfocusZipperList!2265 (List!69527) List!69526)

(assert (=> start!696986 (= res!2916054 (contains!20656 (unfocusZipperList!2265 zl!333) r!7278))))

(assert (=> start!696986 e!4295409))

(assert (=> start!696986 e!4295411))

(assert (=> start!696986 e!4295412))

(declare-fun b!7148192 () Bool)

(declare-fun tp_is_empty!46085 () Bool)

(assert (=> b!7148192 (= e!4295412 tp_is_empty!46085)))

(declare-fun b!7148193 () Bool)

(declare-fun tp!1972967 () Bool)

(assert (=> b!7148193 (= e!4295412 tp!1972967)))

(declare-fun b!7148194 () Bool)

(declare-fun tp!1972964 () Bool)

(declare-fun tp!1972962 () Bool)

(assert (=> b!7148194 (= e!4295412 (and tp!1972964 tp!1972962))))

(declare-fun lambda!435939 () Int)

(declare-fun exists!4044 (List!69527 Int) Bool)

(assert (=> b!7148195 (= e!4295409 (not (exists!4044 zl!333 lambda!435939)))))

(assert (= (and start!696986 res!2916054) b!7148188))

(assert (= (and b!7148188 res!2916055) b!7148195))

(assert (= b!7148189 b!7148191))

(assert (= (and start!696986 (is-Cons!69403 zl!333)) b!7148189))

(assert (= (and start!696986 (is-ElementMatch!18224 r!7278)) b!7148192))

(assert (= (and start!696986 (is-Concat!27069 r!7278)) b!7148194))

(assert (= (and start!696986 (is-Star!18224 r!7278)) b!7148193))

(assert (= (and start!696986 (is-Union!18224 r!7278)) b!7148190))

(declare-fun m!7860198 () Bool)

(assert (=> b!7148189 m!7860198))

(declare-fun m!7860200 () Bool)

(assert (=> start!696986 m!7860200))

(assert (=> start!696986 m!7860200))

(declare-fun m!7860202 () Bool)

(assert (=> start!696986 m!7860202))

(declare-fun m!7860204 () Bool)

(assert (=> b!7148195 m!7860204))

(push 1)

(assert (not b!7148190))

(assert (not b!7148194))

(assert (not b!7148189))

(assert (not b!7148193))

(assert (not b!7148195))

(assert (not b!7148191))

(assert (not start!696986))

(assert tp_is_empty!46085)

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun bs!1889386 () Bool)

(declare-fun d!2228481 () Bool)

(assert (= bs!1889386 (and d!2228481 b!7148195)))

(declare-fun lambda!435945 () Int)

(assert (=> bs!1889386 (not (= lambda!435945 lambda!435939))))

(assert (=> d!2228481 true))

(declare-fun order!28619 () Int)

(declare-fun dynLambda!28272 (Int Int) Int)

(assert (=> d!2228481 (< (dynLambda!28272 order!28619 lambda!435939) (dynLambda!28272 order!28619 lambda!435945))))

(declare-fun forall!17064 (List!69527 Int) Bool)

(assert (=> d!2228481 (= (exists!4044 zl!333 lambda!435939) (not (forall!17064 zl!333 lambda!435945)))))

(declare-fun bs!1889387 () Bool)

(assert (= bs!1889387 d!2228481))

(declare-fun m!7860214 () Bool)

(assert (=> bs!1889387 m!7860214))

(assert (=> b!7148195 d!2228481))

(declare-fun d!2228483 () Bool)

(declare-fun lambda!435948 () Int)

(declare-fun forall!17065 (List!69526 Int) Bool)

(assert (=> d!2228483 (= (inv!88625 (h!75851 zl!333)) (forall!17065 (exprs!7718 (h!75851 zl!333)) lambda!435948))))

(declare-fun bs!1889388 () Bool)

(assert (= bs!1889388 d!2228483))

(declare-fun m!7860216 () Bool)

(assert (=> bs!1889388 m!7860216))

(assert (=> b!7148189 d!2228483))

(declare-fun d!2228485 () Bool)

(declare-fun lt!2569007 () Bool)

(declare-fun content!14245 (List!69526) (Set Regex!18224))

(assert (=> d!2228485 (= lt!2569007 (set.member r!7278 (content!14245 (unfocusZipperList!2265 zl!333))))))

(declare-fun e!4295430 () Bool)

(assert (=> d!2228485 (= lt!2569007 e!4295430)))

(declare-fun res!2916067 () Bool)

(assert (=> d!2228485 (=> (not res!2916067) (not e!4295430))))

(assert (=> d!2228485 (= res!2916067 (is-Cons!69402 (unfocusZipperList!2265 zl!333)))))

(assert (=> d!2228485 (= (contains!20656 (unfocusZipperList!2265 zl!333) r!7278) lt!2569007)))

(declare-fun b!7148230 () Bool)

(declare-fun e!4295429 () Bool)

(assert (=> b!7148230 (= e!4295430 e!4295429)))

(declare-fun res!2916066 () Bool)

(assert (=> b!7148230 (=> res!2916066 e!4295429)))

(assert (=> b!7148230 (= res!2916066 (= (h!75850 (unfocusZipperList!2265 zl!333)) r!7278))))

(declare-fun b!7148231 () Bool)

(assert (=> b!7148231 (= e!4295429 (contains!20656 (t!383543 (unfocusZipperList!2265 zl!333)) r!7278))))

(assert (= (and d!2228485 res!2916067) b!7148230))

(assert (= (and b!7148230 (not res!2916066)) b!7148231))

(assert (=> d!2228485 m!7860200))

(declare-fun m!7860218 () Bool)

(assert (=> d!2228485 m!7860218))

(declare-fun m!7860220 () Bool)

(assert (=> d!2228485 m!7860220))

(declare-fun m!7860222 () Bool)

(assert (=> b!7148231 m!7860222))

(assert (=> start!696986 d!2228485))

(declare-fun bs!1889389 () Bool)

(declare-fun d!2228487 () Bool)

(assert (= bs!1889389 (and d!2228487 d!2228483)))

(declare-fun lambda!435951 () Int)

(assert (=> bs!1889389 (= lambda!435951 lambda!435948)))

(declare-fun lt!2569010 () List!69526)

(assert (=> d!2228487 (forall!17065 lt!2569010 lambda!435951)))

(declare-fun e!4295433 () List!69526)

(assert (=> d!2228487 (= lt!2569010 e!4295433)))

(declare-fun c!1332873 () Bool)

(assert (=> d!2228487 (= c!1332873 (is-Cons!69403 zl!333))))

(assert (=> d!2228487 (= (unfocusZipperList!2265 zl!333) lt!2569010)))

(declare-fun b!7148236 () Bool)

(declare-fun generalisedConcat!2400 (List!69526) Regex!18224)

(assert (=> b!7148236 (= e!4295433 (Cons!69402 (generalisedConcat!2400 (exprs!7718 (h!75851 zl!333))) (unfocusZipperList!2265 (t!383544 zl!333))))))

(declare-fun b!7148237 () Bool)

(assert (=> b!7148237 (= e!4295433 Nil!69402)))

(assert (= (and d!2228487 c!1332873) b!7148236))

(assert (= (and d!2228487 (not c!1332873)) b!7148237))

(declare-fun m!7860224 () Bool)

(assert (=> d!2228487 m!7860224))

(declare-fun m!7860226 () Bool)

(assert (=> b!7148236 m!7860226))

(declare-fun m!7860228 () Bool)

(assert (=> b!7148236 m!7860228))

(assert (=> start!696986 d!2228487))

(declare-fun b!7148249 () Bool)

(declare-fun e!4295436 () Bool)

(declare-fun tp!1973000 () Bool)

(declare-fun tp!1973001 () Bool)

(assert (=> b!7148249 (= e!4295436 (and tp!1973000 tp!1973001))))

(declare-fun b!7148248 () Bool)

(assert (=> b!7148248 (= e!4295436 tp_is_empty!46085)))

(assert (=> b!7148193 (= tp!1972967 e!4295436)))

(declare-fun b!7148251 () Bool)

(declare-fun tp!1973003 () Bool)

(declare-fun tp!1973004 () Bool)

(assert (=> b!7148251 (= e!4295436 (and tp!1973003 tp!1973004))))

(declare-fun b!7148250 () Bool)

(declare-fun tp!1973002 () Bool)

(assert (=> b!7148250 (= e!4295436 tp!1973002)))

(assert (= (and b!7148193 (is-ElementMatch!18224 (reg!18553 r!7278))) b!7148248))

(assert (= (and b!7148193 (is-Concat!27069 (reg!18553 r!7278))) b!7148249))

(assert (= (and b!7148193 (is-Star!18224 (reg!18553 r!7278))) b!7148250))

(assert (= (and b!7148193 (is-Union!18224 (reg!18553 r!7278))) b!7148251))

(declare-fun b!7148253 () Bool)

(declare-fun e!4295437 () Bool)

(declare-fun tp!1973005 () Bool)

(declare-fun tp!1973006 () Bool)

(assert (=> b!7148253 (= e!4295437 (and tp!1973005 tp!1973006))))

(declare-fun b!7148252 () Bool)

(assert (=> b!7148252 (= e!4295437 tp_is_empty!46085)))

(assert (=> b!7148194 (= tp!1972964 e!4295437)))

(declare-fun b!7148255 () Bool)

(declare-fun tp!1973008 () Bool)

(declare-fun tp!1973009 () Bool)

(assert (=> b!7148255 (= e!4295437 (and tp!1973008 tp!1973009))))

(declare-fun b!7148254 () Bool)

(declare-fun tp!1973007 () Bool)

(assert (=> b!7148254 (= e!4295437 tp!1973007)))

(assert (= (and b!7148194 (is-ElementMatch!18224 (regOne!36960 r!7278))) b!7148252))

(assert (= (and b!7148194 (is-Concat!27069 (regOne!36960 r!7278))) b!7148253))

(assert (= (and b!7148194 (is-Star!18224 (regOne!36960 r!7278))) b!7148254))

(assert (= (and b!7148194 (is-Union!18224 (regOne!36960 r!7278))) b!7148255))

(declare-fun b!7148257 () Bool)

(declare-fun e!4295438 () Bool)

(declare-fun tp!1973010 () Bool)

(declare-fun tp!1973011 () Bool)

(assert (=> b!7148257 (= e!4295438 (and tp!1973010 tp!1973011))))

(declare-fun b!7148256 () Bool)

(assert (=> b!7148256 (= e!4295438 tp_is_empty!46085)))

(assert (=> b!7148194 (= tp!1972962 e!4295438)))

(declare-fun b!7148259 () Bool)

(declare-fun tp!1973013 () Bool)

(declare-fun tp!1973014 () Bool)

(assert (=> b!7148259 (= e!4295438 (and tp!1973013 tp!1973014))))

(declare-fun b!7148258 () Bool)

(declare-fun tp!1973012 () Bool)

(assert (=> b!7148258 (= e!4295438 tp!1973012)))

(assert (= (and b!7148194 (is-ElementMatch!18224 (regTwo!36960 r!7278))) b!7148256))

(assert (= (and b!7148194 (is-Concat!27069 (regTwo!36960 r!7278))) b!7148257))

(assert (= (and b!7148194 (is-Star!18224 (regTwo!36960 r!7278))) b!7148258))

(assert (= (and b!7148194 (is-Union!18224 (regTwo!36960 r!7278))) b!7148259))

(declare-fun b!7148267 () Bool)

(declare-fun e!4295444 () Bool)

(declare-fun tp!1973019 () Bool)

(assert (=> b!7148267 (= e!4295444 tp!1973019)))

(declare-fun tp!1973020 () Bool)

(declare-fun b!7148266 () Bool)

(declare-fun e!4295443 () Bool)

(assert (=> b!7148266 (= e!4295443 (and (inv!88625 (h!75851 (t!383544 zl!333))) e!4295444 tp!1973020))))

(assert (=> b!7148189 (= tp!1972968 e!4295443)))

(assert (= b!7148266 b!7148267))

(assert (= (and b!7148189 (is-Cons!69403 (t!383544 zl!333))) b!7148266))

(declare-fun m!7860230 () Bool)

(assert (=> b!7148266 m!7860230))

(declare-fun b!7148272 () Bool)

(declare-fun e!4295447 () Bool)

(declare-fun tp!1973025 () Bool)

(declare-fun tp!1973026 () Bool)

(assert (=> b!7148272 (= e!4295447 (and tp!1973025 tp!1973026))))

(assert (=> b!7148191 (= tp!1972965 e!4295447)))

(assert (= (and b!7148191 (is-Cons!69402 (exprs!7718 (h!75851 zl!333)))) b!7148272))

(declare-fun b!7148274 () Bool)

(declare-fun e!4295448 () Bool)

(declare-fun tp!1973027 () Bool)

(declare-fun tp!1973028 () Bool)

(assert (=> b!7148274 (= e!4295448 (and tp!1973027 tp!1973028))))

(declare-fun b!7148273 () Bool)

(assert (=> b!7148273 (= e!4295448 tp_is_empty!46085)))

(assert (=> b!7148190 (= tp!1972966 e!4295448)))

(declare-fun b!7148276 () Bool)

(declare-fun tp!1973030 () Bool)

(declare-fun tp!1973031 () Bool)

(assert (=> b!7148276 (= e!4295448 (and tp!1973030 tp!1973031))))

(declare-fun b!7148275 () Bool)

(declare-fun tp!1973029 () Bool)

(assert (=> b!7148275 (= e!4295448 tp!1973029)))

(assert (= (and b!7148190 (is-ElementMatch!18224 (regOne!36961 r!7278))) b!7148273))

(assert (= (and b!7148190 (is-Concat!27069 (regOne!36961 r!7278))) b!7148274))

(assert (= (and b!7148190 (is-Star!18224 (regOne!36961 r!7278))) b!7148275))

(assert (= (and b!7148190 (is-Union!18224 (regOne!36961 r!7278))) b!7148276))

(declare-fun b!7148278 () Bool)

(declare-fun e!4295449 () Bool)

(declare-fun tp!1973032 () Bool)

(declare-fun tp!1973033 () Bool)

(assert (=> b!7148278 (= e!4295449 (and tp!1973032 tp!1973033))))

(declare-fun b!7148277 () Bool)

(assert (=> b!7148277 (= e!4295449 tp_is_empty!46085)))

(assert (=> b!7148190 (= tp!1972963 e!4295449)))

(declare-fun b!7148280 () Bool)

(declare-fun tp!1973035 () Bool)

(declare-fun tp!1973036 () Bool)

(assert (=> b!7148280 (= e!4295449 (and tp!1973035 tp!1973036))))

(declare-fun b!7148279 () Bool)

(declare-fun tp!1973034 () Bool)

(assert (=> b!7148279 (= e!4295449 tp!1973034)))

(assert (= (and b!7148190 (is-ElementMatch!18224 (regTwo!36961 r!7278))) b!7148277))

(assert (= (and b!7148190 (is-Concat!27069 (regTwo!36961 r!7278))) b!7148278))

(assert (= (and b!7148190 (is-Star!18224 (regTwo!36961 r!7278))) b!7148279))

(assert (= (and b!7148190 (is-Union!18224 (regTwo!36961 r!7278))) b!7148280))

(push 1)

(assert (not b!7148272))

(assert (not b!7148255))

(assert (not b!7148267))

(assert (not d!2228487))

(assert (not b!7148236))

(assert (not b!7148254))

(assert (not b!7148249))

(assert (not b!7148266))

(assert tp_is_empty!46085)

(assert (not b!7148250))

(assert (not d!2228485))

(assert (not b!7148231))

(assert (not b!7148274))

(assert (not b!7148278))

(assert (not b!7148279))

(assert (not b!7148251))

(assert (not b!7148275))

(assert (not b!7148257))

(assert (not b!7148258))

(assert (not b!7148259))

(assert (not b!7148280))

(assert (not d!2228481))

(assert (not b!7148276))

(assert (not b!7148253))

(assert (not d!2228483))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

