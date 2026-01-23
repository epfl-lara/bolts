; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!663792 () Bool)

(assert start!663792)

(declare-fun b!6880047 () Bool)

(assert (=> b!6880047 true))

(assert (=> b!6880047 true))

(assert (=> b!6880047 true))

(declare-fun lambda!389400 () Int)

(declare-fun lambda!389399 () Int)

(assert (=> b!6880047 (not (= lambda!389400 lambda!389399))))

(assert (=> b!6880047 true))

(assert (=> b!6880047 true))

(assert (=> b!6880047 true))

(declare-fun b!6880038 () Bool)

(declare-fun e!4146180 () Bool)

(declare-fun tp_is_empty!42741 () Bool)

(assert (=> b!6880038 (= e!4146180 tp_is_empty!42741)))

(declare-fun b!6880039 () Bool)

(declare-fun e!4146178 () Bool)

(declare-fun tp!1891901 () Bool)

(assert (=> b!6880039 (= e!4146178 (and tp_is_empty!42741 tp!1891901))))

(declare-fun b!6880040 () Bool)

(declare-fun tp!1891900 () Bool)

(assert (=> b!6880040 (= e!4146180 tp!1891900)))

(declare-fun b!6880041 () Bool)

(declare-fun res!2804624 () Bool)

(declare-fun e!4146177 () Bool)

(assert (=> b!6880041 (=> (not res!2804624) (not e!4146177))))

(declare-datatypes ((C!33786 0))(
  ( (C!33787 (val!26595 Int)) )
))
(declare-datatypes ((Regex!16758 0))(
  ( (ElementMatch!16758 (c!1279976 C!33786)) (Concat!25603 (regOne!34028 Regex!16758) (regTwo!34028 Regex!16758)) (EmptyExpr!16758) (Star!16758 (reg!17087 Regex!16758)) (EmptyLang!16758) (Union!16758 (regOne!34029 Regex!16758) (regTwo!34029 Regex!16758)) )
))
(declare-fun r2!6280 () Regex!16758)

(declare-fun validRegex!8466 (Regex!16758) Bool)

(assert (=> b!6880041 (= res!2804624 (validRegex!8466 r2!6280))))

(declare-fun b!6880042 () Bool)

(declare-fun e!4146176 () Bool)

(declare-fun tp!1891902 () Bool)

(assert (=> b!6880042 (= e!4146176 tp!1891902)))

(declare-fun b!6880044 () Bool)

(declare-fun tp!1891896 () Bool)

(declare-fun tp!1891905 () Bool)

(assert (=> b!6880044 (= e!4146180 (and tp!1891896 tp!1891905))))

(declare-fun b!6880045 () Bool)

(declare-fun e!4146175 () Bool)

(declare-fun tp!1891898 () Bool)

(declare-fun tp!1891897 () Bool)

(assert (=> b!6880045 (= e!4146175 (and tp!1891898 tp!1891897))))

(declare-fun b!6880046 () Bool)

(declare-fun tp!1891910 () Bool)

(declare-fun tp!1891911 () Bool)

(assert (=> b!6880046 (= e!4146180 (and tp!1891910 tp!1891911))))

(declare-fun e!4146179 () Bool)

(declare-fun lt!2459553 () Regex!16758)

(assert (=> b!6880047 (= e!4146179 (validRegex!8466 lt!2459553))))

(declare-fun Exists!3770 (Int) Bool)

(assert (=> b!6880047 (= (Exists!3770 lambda!389399) (Exists!3770 lambda!389400))))

(declare-fun r3!135 () Regex!16758)

(declare-datatypes ((Unit!160236 0))(
  ( (Unit!160237) )
))
(declare-fun lt!2459554 () Unit!160236)

(declare-datatypes ((List!66515 0))(
  ( (Nil!66391) (Cons!66391 (h!72839 C!33786) (t!380258 List!66515)) )
))
(declare-fun s!14361 () List!66515)

(declare-fun lemmaExistCutMatchRandMatchRSpecEquivalent!2249 (Regex!16758 Regex!16758 List!66515) Unit!160236)

(assert (=> b!6880047 (= lt!2459554 (lemmaExistCutMatchRandMatchRSpecEquivalent!2249 lt!2459553 r3!135 s!14361))))

(declare-datatypes ((tuple2!67262 0))(
  ( (tuple2!67263 (_1!36934 List!66515) (_2!36934 List!66515)) )
))
(declare-datatypes ((Option!16543 0))(
  ( (None!16542) (Some!16542 (v!52814 tuple2!67262)) )
))
(declare-fun isDefined!13246 (Option!16543) Bool)

(declare-fun findConcatSeparation!2957 (Regex!16758 Regex!16758 List!66515 List!66515 List!66515) Option!16543)

(assert (=> b!6880047 (= (isDefined!13246 (findConcatSeparation!2957 lt!2459553 r3!135 Nil!66391 s!14361 s!14361)) (Exists!3770 lambda!389399))))

(declare-fun lt!2459555 () Unit!160236)

(declare-fun lemmaFindConcatSeparationEquivalentToExists!2721 (Regex!16758 Regex!16758 List!66515) Unit!160236)

(assert (=> b!6880047 (= lt!2459555 (lemmaFindConcatSeparationEquivalentToExists!2721 lt!2459553 r3!135 s!14361))))

(declare-fun b!6880048 () Bool)

(declare-fun tp!1891907 () Bool)

(assert (=> b!6880048 (= e!4146175 tp!1891907)))

(declare-fun b!6880049 () Bool)

(assert (=> b!6880049 (= e!4146175 tp_is_empty!42741)))

(declare-fun b!6880050 () Bool)

(assert (=> b!6880050 (= e!4146177 (not e!4146179))))

(declare-fun res!2804623 () Bool)

(assert (=> b!6880050 (=> res!2804623 e!4146179)))

(declare-fun lt!2459557 () Bool)

(assert (=> b!6880050 (= res!2804623 (not lt!2459557))))

(declare-fun lt!2459552 () Regex!16758)

(declare-fun matchR!8903 (Regex!16758 List!66515) Bool)

(declare-fun matchRSpec!3821 (Regex!16758 List!66515) Bool)

(assert (=> b!6880050 (= (matchR!8903 lt!2459552 s!14361) (matchRSpec!3821 lt!2459552 s!14361))))

(declare-fun lt!2459556 () Unit!160236)

(declare-fun mainMatchTheorem!3821 (Regex!16758 List!66515) Unit!160236)

(assert (=> b!6880050 (= lt!2459556 (mainMatchTheorem!3821 lt!2459552 s!14361))))

(declare-fun lt!2459559 () Regex!16758)

(assert (=> b!6880050 (= lt!2459557 (matchRSpec!3821 lt!2459559 s!14361))))

(assert (=> b!6880050 (= lt!2459557 (matchR!8903 lt!2459559 s!14361))))

(declare-fun lt!2459558 () Unit!160236)

(assert (=> b!6880050 (= lt!2459558 (mainMatchTheorem!3821 lt!2459559 s!14361))))

(declare-fun r1!6342 () Regex!16758)

(assert (=> b!6880050 (= lt!2459552 (Concat!25603 r1!6342 (Concat!25603 r2!6280 r3!135)))))

(assert (=> b!6880050 (= lt!2459559 (Concat!25603 lt!2459553 r3!135))))

(assert (=> b!6880050 (= lt!2459553 (Concat!25603 r1!6342 r2!6280))))

(declare-fun b!6880051 () Bool)

(declare-fun res!2804622 () Bool)

(assert (=> b!6880051 (=> (not res!2804622) (not e!4146177))))

(assert (=> b!6880051 (= res!2804622 (validRegex!8466 r3!135))))

(declare-fun b!6880052 () Bool)

(declare-fun tp!1891906 () Bool)

(declare-fun tp!1891909 () Bool)

(assert (=> b!6880052 (= e!4146176 (and tp!1891906 tp!1891909))))

(declare-fun b!6880043 () Bool)

(assert (=> b!6880043 (= e!4146176 tp_is_empty!42741)))

(declare-fun res!2804621 () Bool)

(assert (=> start!663792 (=> (not res!2804621) (not e!4146177))))

(assert (=> start!663792 (= res!2804621 (validRegex!8466 r1!6342))))

(assert (=> start!663792 e!4146177))

(assert (=> start!663792 e!4146175))

(assert (=> start!663792 e!4146180))

(assert (=> start!663792 e!4146176))

(assert (=> start!663792 e!4146178))

(declare-fun b!6880053 () Bool)

(declare-fun tp!1891899 () Bool)

(declare-fun tp!1891904 () Bool)

(assert (=> b!6880053 (= e!4146176 (and tp!1891899 tp!1891904))))

(declare-fun b!6880054 () Bool)

(declare-fun tp!1891908 () Bool)

(declare-fun tp!1891903 () Bool)

(assert (=> b!6880054 (= e!4146175 (and tp!1891908 tp!1891903))))

(assert (= (and start!663792 res!2804621) b!6880041))

(assert (= (and b!6880041 res!2804624) b!6880051))

(assert (= (and b!6880051 res!2804622) b!6880050))

(assert (= (and b!6880050 (not res!2804623)) b!6880047))

(assert (= (and start!663792 (is-ElementMatch!16758 r1!6342)) b!6880049))

(assert (= (and start!663792 (is-Concat!25603 r1!6342)) b!6880054))

(assert (= (and start!663792 (is-Star!16758 r1!6342)) b!6880048))

(assert (= (and start!663792 (is-Union!16758 r1!6342)) b!6880045))

(assert (= (and start!663792 (is-ElementMatch!16758 r2!6280)) b!6880038))

(assert (= (and start!663792 (is-Concat!25603 r2!6280)) b!6880044))

(assert (= (and start!663792 (is-Star!16758 r2!6280)) b!6880040))

(assert (= (and start!663792 (is-Union!16758 r2!6280)) b!6880046))

(assert (= (and start!663792 (is-ElementMatch!16758 r3!135)) b!6880043))

(assert (= (and start!663792 (is-Concat!25603 r3!135)) b!6880052))

(assert (= (and start!663792 (is-Star!16758 r3!135)) b!6880042))

(assert (= (and start!663792 (is-Union!16758 r3!135)) b!6880053))

(assert (= (and start!663792 (is-Cons!66391 s!14361)) b!6880039))

(declare-fun m!7605932 () Bool)

(assert (=> b!6880041 m!7605932))

(declare-fun m!7605934 () Bool)

(assert (=> start!663792 m!7605934))

(declare-fun m!7605936 () Bool)

(assert (=> b!6880050 m!7605936))

(declare-fun m!7605938 () Bool)

(assert (=> b!6880050 m!7605938))

(declare-fun m!7605940 () Bool)

(assert (=> b!6880050 m!7605940))

(declare-fun m!7605942 () Bool)

(assert (=> b!6880050 m!7605942))

(declare-fun m!7605944 () Bool)

(assert (=> b!6880050 m!7605944))

(declare-fun m!7605946 () Bool)

(assert (=> b!6880050 m!7605946))

(declare-fun m!7605948 () Bool)

(assert (=> b!6880051 m!7605948))

(declare-fun m!7605950 () Bool)

(assert (=> b!6880047 m!7605950))

(declare-fun m!7605952 () Bool)

(assert (=> b!6880047 m!7605952))

(declare-fun m!7605954 () Bool)

(assert (=> b!6880047 m!7605954))

(assert (=> b!6880047 m!7605950))

(declare-fun m!7605956 () Bool)

(assert (=> b!6880047 m!7605956))

(declare-fun m!7605958 () Bool)

(assert (=> b!6880047 m!7605958))

(declare-fun m!7605960 () Bool)

(assert (=> b!6880047 m!7605960))

(assert (=> b!6880047 m!7605954))

(declare-fun m!7605962 () Bool)

(assert (=> b!6880047 m!7605962))

(push 1)

(assert (not b!6880045))

(assert (not b!6880044))

(assert (not b!6880040))

(assert (not b!6880050))

(assert (not b!6880054))

(assert (not b!6880048))

(assert (not b!6880046))

(assert (not start!663792))

(assert tp_is_empty!42741)

(assert (not b!6880047))

(assert (not b!6880051))

(assert (not b!6880042))

(assert (not b!6880041))

(assert (not b!6880053))

(assert (not b!6880039))

(assert (not b!6880052))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun bs!1838002 () Bool)

(declare-fun b!6880163 () Bool)

(assert (= bs!1838002 (and b!6880163 b!6880047)))

(declare-fun lambda!389413 () Int)

(assert (=> bs!1838002 (not (= lambda!389413 lambda!389399))))

(assert (=> bs!1838002 (not (= lambda!389413 lambda!389400))))

(assert (=> b!6880163 true))

(assert (=> b!6880163 true))

(declare-fun bs!1838003 () Bool)

(declare-fun b!6880158 () Bool)

(assert (= bs!1838003 (and b!6880158 b!6880047)))

(declare-fun lambda!389414 () Int)

(assert (=> bs!1838003 (not (= lambda!389414 lambda!389399))))

(assert (=> bs!1838003 (= (and (= (regOne!34028 lt!2459559) lt!2459553) (= (regTwo!34028 lt!2459559) r3!135)) (= lambda!389414 lambda!389400))))

(declare-fun bs!1838004 () Bool)

(assert (= bs!1838004 (and b!6880158 b!6880163)))

(assert (=> bs!1838004 (not (= lambda!389414 lambda!389413))))

(assert (=> b!6880158 true))

(assert (=> b!6880158 true))

(declare-fun e!4146225 () Bool)

(declare-fun call!626372 () Bool)

(assert (=> b!6880158 (= e!4146225 call!626372)))

(declare-fun b!6880159 () Bool)

(declare-fun e!4146223 () Bool)

(declare-fun e!4146224 () Bool)

(assert (=> b!6880159 (= e!4146223 e!4146224)))

(declare-fun res!2804667 () Bool)

(assert (=> b!6880159 (= res!2804667 (matchRSpec!3821 (regOne!34029 lt!2459559) s!14361))))

(assert (=> b!6880159 (=> res!2804667 e!4146224)))

(declare-fun d!2159951 () Bool)

(declare-fun c!1279989 () Bool)

(assert (=> d!2159951 (= c!1279989 (is-EmptyExpr!16758 lt!2459559))))

(declare-fun e!4146226 () Bool)

(assert (=> d!2159951 (= (matchRSpec!3821 lt!2459559 s!14361) e!4146226)))

(declare-fun b!6880160 () Bool)

(declare-fun e!4146229 () Bool)

(assert (=> b!6880160 (= e!4146229 (= s!14361 (Cons!66391 (c!1279976 lt!2459559) Nil!66391)))))

(declare-fun b!6880161 () Bool)

(declare-fun c!1279988 () Bool)

(assert (=> b!6880161 (= c!1279988 (is-Union!16758 lt!2459559))))

(assert (=> b!6880161 (= e!4146229 e!4146223)))

(declare-fun b!6880162 () Bool)

(assert (=> b!6880162 (= e!4146223 e!4146225)))

(declare-fun c!1279986 () Bool)

(assert (=> b!6880162 (= c!1279986 (is-Star!16758 lt!2459559))))

(declare-fun e!4146228 () Bool)

(assert (=> b!6880163 (= e!4146228 call!626372)))

(declare-fun b!6880164 () Bool)

(declare-fun res!2804666 () Bool)

(assert (=> b!6880164 (=> res!2804666 e!4146228)))

(declare-fun call!626373 () Bool)

(assert (=> b!6880164 (= res!2804666 call!626373)))

(assert (=> b!6880164 (= e!4146225 e!4146228)))

(declare-fun bm!626367 () Bool)

(assert (=> bm!626367 (= call!626372 (Exists!3770 (ite c!1279986 lambda!389413 lambda!389414)))))

(declare-fun b!6880165 () Bool)

(declare-fun c!1279987 () Bool)

(assert (=> b!6880165 (= c!1279987 (is-ElementMatch!16758 lt!2459559))))

(declare-fun e!4146227 () Bool)

(assert (=> b!6880165 (= e!4146227 e!4146229)))

(declare-fun b!6880166 () Bool)

(assert (=> b!6880166 (= e!4146226 e!4146227)))

(declare-fun res!2804665 () Bool)

(assert (=> b!6880166 (= res!2804665 (not (is-EmptyLang!16758 lt!2459559)))))

(assert (=> b!6880166 (=> (not res!2804665) (not e!4146227))))

(declare-fun b!6880167 () Bool)

(assert (=> b!6880167 (= e!4146226 call!626373)))

(declare-fun bm!626368 () Bool)

(declare-fun isEmpty!38662 (List!66515) Bool)

(assert (=> bm!626368 (= call!626373 (isEmpty!38662 s!14361))))

(declare-fun b!6880168 () Bool)

(assert (=> b!6880168 (= e!4146224 (matchRSpec!3821 (regTwo!34029 lt!2459559) s!14361))))

(assert (= (and d!2159951 c!1279989) b!6880167))

(assert (= (and d!2159951 (not c!1279989)) b!6880166))

(assert (= (and b!6880166 res!2804665) b!6880165))

(assert (= (and b!6880165 c!1279987) b!6880160))

(assert (= (and b!6880165 (not c!1279987)) b!6880161))

(assert (= (and b!6880161 c!1279988) b!6880159))

(assert (= (and b!6880161 (not c!1279988)) b!6880162))

(assert (= (and b!6880159 (not res!2804667)) b!6880168))

(assert (= (and b!6880162 c!1279986) b!6880164))

(assert (= (and b!6880162 (not c!1279986)) b!6880158))

(assert (= (and b!6880164 (not res!2804666)) b!6880163))

(assert (= (or b!6880163 b!6880158) bm!626367))

(assert (= (or b!6880167 b!6880164) bm!626368))

(declare-fun m!7605996 () Bool)

(assert (=> b!6880159 m!7605996))

(declare-fun m!7605998 () Bool)

(assert (=> bm!626367 m!7605998))

(declare-fun m!7606000 () Bool)

(assert (=> bm!626368 m!7606000))

(declare-fun m!7606002 () Bool)

(assert (=> b!6880168 m!7606002))

(assert (=> b!6880050 d!2159951))

(declare-fun b!6880215 () Bool)

(declare-fun e!4146259 () Bool)

(declare-fun lt!2459586 () Bool)

(assert (=> b!6880215 (= e!4146259 (not lt!2459586))))

(declare-fun b!6880216 () Bool)

(declare-fun res!2804697 () Bool)

(declare-fun e!4146262 () Bool)

(assert (=> b!6880216 (=> res!2804697 e!4146262)))

(assert (=> b!6880216 (= res!2804697 (not (is-ElementMatch!16758 lt!2459559)))))

(assert (=> b!6880216 (= e!4146259 e!4146262)))

(declare-fun b!6880217 () Bool)

(declare-fun e!4146264 () Bool)

(assert (=> b!6880217 (= e!4146262 e!4146264)))

(declare-fun res!2804696 () Bool)

(assert (=> b!6880217 (=> (not res!2804696) (not e!4146264))))

(assert (=> b!6880217 (= res!2804696 (not lt!2459586))))

(declare-fun bm!626377 () Bool)

(declare-fun call!626382 () Bool)

(assert (=> bm!626377 (= call!626382 (isEmpty!38662 s!14361))))

(declare-fun b!6880218 () Bool)

(declare-fun res!2804701 () Bool)

(assert (=> b!6880218 (=> res!2804701 e!4146262)))

(declare-fun e!4146258 () Bool)

(assert (=> b!6880218 (= res!2804701 e!4146258)))

(declare-fun res!2804698 () Bool)

(assert (=> b!6880218 (=> (not res!2804698) (not e!4146258))))

(assert (=> b!6880218 (= res!2804698 lt!2459586)))

(declare-fun b!6880219 () Bool)

(declare-fun e!4146261 () Bool)

(assert (=> b!6880219 (= e!4146264 e!4146261)))

(declare-fun res!2804699 () Bool)

(assert (=> b!6880219 (=> res!2804699 e!4146261)))

(assert (=> b!6880219 (= res!2804699 call!626382)))

(declare-fun b!6880220 () Bool)

(declare-fun res!2804700 () Bool)

(assert (=> b!6880220 (=> (not res!2804700) (not e!4146258))))

(declare-fun tail!12856 (List!66515) List!66515)

(assert (=> b!6880220 (= res!2804700 (isEmpty!38662 (tail!12856 s!14361)))))

(declare-fun b!6880221 () Bool)

(declare-fun e!4146260 () Bool)

(declare-fun derivativeStep!5351 (Regex!16758 C!33786) Regex!16758)

(declare-fun head!13804 (List!66515) C!33786)

(assert (=> b!6880221 (= e!4146260 (matchR!8903 (derivativeStep!5351 lt!2459559 (head!13804 s!14361)) (tail!12856 s!14361)))))

(declare-fun b!6880222 () Bool)

(declare-fun e!4146263 () Bool)

(assert (=> b!6880222 (= e!4146263 (= lt!2459586 call!626382))))

(declare-fun b!6880223 () Bool)

(assert (=> b!6880223 (= e!4146261 (not (= (head!13804 s!14361) (c!1279976 lt!2459559))))))

(declare-fun d!2159955 () Bool)

(assert (=> d!2159955 e!4146263))

(declare-fun c!1280000 () Bool)

(assert (=> d!2159955 (= c!1280000 (is-EmptyExpr!16758 lt!2459559))))

(assert (=> d!2159955 (= lt!2459586 e!4146260)))

(declare-fun c!1280001 () Bool)

(assert (=> d!2159955 (= c!1280001 (isEmpty!38662 s!14361))))

(assert (=> d!2159955 (validRegex!8466 lt!2459559)))

(assert (=> d!2159955 (= (matchR!8903 lt!2459559 s!14361) lt!2459586)))

(declare-fun b!6880224 () Bool)

(assert (=> b!6880224 (= e!4146263 e!4146259)))

(declare-fun c!1280002 () Bool)

(assert (=> b!6880224 (= c!1280002 (is-EmptyLang!16758 lt!2459559))))

(declare-fun b!6880225 () Bool)

(declare-fun nullable!6671 (Regex!16758) Bool)

(assert (=> b!6880225 (= e!4146260 (nullable!6671 lt!2459559))))

(declare-fun b!6880226 () Bool)

(declare-fun res!2804695 () Bool)

(assert (=> b!6880226 (=> (not res!2804695) (not e!4146258))))

(assert (=> b!6880226 (= res!2804695 (not call!626382))))

(declare-fun b!6880227 () Bool)

(declare-fun res!2804694 () Bool)

(assert (=> b!6880227 (=> res!2804694 e!4146261)))

(assert (=> b!6880227 (= res!2804694 (not (isEmpty!38662 (tail!12856 s!14361))))))

(declare-fun b!6880228 () Bool)

(assert (=> b!6880228 (= e!4146258 (= (head!13804 s!14361) (c!1279976 lt!2459559)))))

(assert (= (and d!2159955 c!1280001) b!6880225))

(assert (= (and d!2159955 (not c!1280001)) b!6880221))

(assert (= (and d!2159955 c!1280000) b!6880222))

(assert (= (and d!2159955 (not c!1280000)) b!6880224))

(assert (= (and b!6880224 c!1280002) b!6880215))

(assert (= (and b!6880224 (not c!1280002)) b!6880216))

(assert (= (and b!6880216 (not res!2804697)) b!6880218))

(assert (= (and b!6880218 res!2804698) b!6880226))

(assert (= (and b!6880226 res!2804695) b!6880220))

(assert (= (and b!6880220 res!2804700) b!6880228))

(assert (= (and b!6880218 (not res!2804701)) b!6880217))

(assert (= (and b!6880217 res!2804696) b!6880219))

(assert (= (and b!6880219 (not res!2804699)) b!6880227))

(assert (= (and b!6880227 (not res!2804694)) b!6880223))

(assert (= (or b!6880222 b!6880226 b!6880219) bm!626377))

(declare-fun m!7606004 () Bool)

(assert (=> b!6880220 m!7606004))

(assert (=> b!6880220 m!7606004))

(declare-fun m!7606006 () Bool)

(assert (=> b!6880220 m!7606006))

(declare-fun m!7606008 () Bool)

(assert (=> b!6880225 m!7606008))

(declare-fun m!7606010 () Bool)

(assert (=> b!6880223 m!7606010))

(assert (=> b!6880221 m!7606010))

(assert (=> b!6880221 m!7606010))

(declare-fun m!7606012 () Bool)

(assert (=> b!6880221 m!7606012))

(assert (=> b!6880221 m!7606004))

(assert (=> b!6880221 m!7606012))

(assert (=> b!6880221 m!7606004))

(declare-fun m!7606014 () Bool)

(assert (=> b!6880221 m!7606014))

(assert (=> bm!626377 m!7606000))

(assert (=> b!6880228 m!7606010))

(assert (=> b!6880227 m!7606004))

(assert (=> b!6880227 m!7606004))

(assert (=> b!6880227 m!7606006))

(assert (=> d!2159955 m!7606000))

(declare-fun m!7606016 () Bool)

(assert (=> d!2159955 m!7606016))

(assert (=> b!6880050 d!2159955))

(declare-fun b!6880238 () Bool)

(declare-fun e!4146273 () Bool)

(declare-fun lt!2459587 () Bool)

(assert (=> b!6880238 (= e!4146273 (not lt!2459587))))

(declare-fun b!6880239 () Bool)

(declare-fun res!2804710 () Bool)

(declare-fun e!4146276 () Bool)

(assert (=> b!6880239 (=> res!2804710 e!4146276)))

(assert (=> b!6880239 (= res!2804710 (not (is-ElementMatch!16758 lt!2459552)))))

(assert (=> b!6880239 (= e!4146273 e!4146276)))

(declare-fun b!6880240 () Bool)

(declare-fun e!4146278 () Bool)

(assert (=> b!6880240 (= e!4146276 e!4146278)))

(declare-fun res!2804709 () Bool)

(assert (=> b!6880240 (=> (not res!2804709) (not e!4146278))))

(assert (=> b!6880240 (= res!2804709 (not lt!2459587))))

(declare-fun bm!626381 () Bool)

(declare-fun call!626386 () Bool)

(assert (=> bm!626381 (= call!626386 (isEmpty!38662 s!14361))))

(declare-fun b!6880241 () Bool)

(declare-fun res!2804714 () Bool)

(assert (=> b!6880241 (=> res!2804714 e!4146276)))

(declare-fun e!4146272 () Bool)

(assert (=> b!6880241 (= res!2804714 e!4146272)))

(declare-fun res!2804711 () Bool)

(assert (=> b!6880241 (=> (not res!2804711) (not e!4146272))))

(assert (=> b!6880241 (= res!2804711 lt!2459587)))

(declare-fun b!6880242 () Bool)

(declare-fun e!4146275 () Bool)

(assert (=> b!6880242 (= e!4146278 e!4146275)))

(declare-fun res!2804712 () Bool)

(assert (=> b!6880242 (=> res!2804712 e!4146275)))

(assert (=> b!6880242 (= res!2804712 call!626386)))

(declare-fun b!6880243 () Bool)

(declare-fun res!2804713 () Bool)

(assert (=> b!6880243 (=> (not res!2804713) (not e!4146272))))

(assert (=> b!6880243 (= res!2804713 (isEmpty!38662 (tail!12856 s!14361)))))

(declare-fun b!6880244 () Bool)

(declare-fun e!4146274 () Bool)

(assert (=> b!6880244 (= e!4146274 (matchR!8903 (derivativeStep!5351 lt!2459552 (head!13804 s!14361)) (tail!12856 s!14361)))))

(declare-fun b!6880245 () Bool)

(declare-fun e!4146277 () Bool)

(assert (=> b!6880245 (= e!4146277 (= lt!2459587 call!626386))))

(declare-fun b!6880246 () Bool)

(assert (=> b!6880246 (= e!4146275 (not (= (head!13804 s!14361) (c!1279976 lt!2459552))))))

(declare-fun d!2159957 () Bool)

(assert (=> d!2159957 e!4146277))

(declare-fun c!1280005 () Bool)

(assert (=> d!2159957 (= c!1280005 (is-EmptyExpr!16758 lt!2459552))))

(assert (=> d!2159957 (= lt!2459587 e!4146274)))

(declare-fun c!1280006 () Bool)

(assert (=> d!2159957 (= c!1280006 (isEmpty!38662 s!14361))))

(assert (=> d!2159957 (validRegex!8466 lt!2459552)))

(assert (=> d!2159957 (= (matchR!8903 lt!2459552 s!14361) lt!2459587)))

(declare-fun b!6880247 () Bool)

(assert (=> b!6880247 (= e!4146277 e!4146273)))

(declare-fun c!1280007 () Bool)

(assert (=> b!6880247 (= c!1280007 (is-EmptyLang!16758 lt!2459552))))

(declare-fun b!6880248 () Bool)

(assert (=> b!6880248 (= e!4146274 (nullable!6671 lt!2459552))))

(declare-fun b!6880249 () Bool)

(declare-fun res!2804708 () Bool)

(assert (=> b!6880249 (=> (not res!2804708) (not e!4146272))))

(assert (=> b!6880249 (= res!2804708 (not call!626386))))

(declare-fun b!6880250 () Bool)

(declare-fun res!2804707 () Bool)

(assert (=> b!6880250 (=> res!2804707 e!4146275)))

(assert (=> b!6880250 (= res!2804707 (not (isEmpty!38662 (tail!12856 s!14361))))))

(declare-fun b!6880251 () Bool)

(assert (=> b!6880251 (= e!4146272 (= (head!13804 s!14361) (c!1279976 lt!2459552)))))

(assert (= (and d!2159957 c!1280006) b!6880248))

(assert (= (and d!2159957 (not c!1280006)) b!6880244))

(assert (= (and d!2159957 c!1280005) b!6880245))

(assert (= (and d!2159957 (not c!1280005)) b!6880247))

(assert (= (and b!6880247 c!1280007) b!6880238))

(assert (= (and b!6880247 (not c!1280007)) b!6880239))

(assert (= (and b!6880239 (not res!2804710)) b!6880241))

(assert (= (and b!6880241 res!2804711) b!6880249))

(assert (= (and b!6880249 res!2804708) b!6880243))

(assert (= (and b!6880243 res!2804713) b!6880251))

(assert (= (and b!6880241 (not res!2804714)) b!6880240))

(assert (= (and b!6880240 res!2804709) b!6880242))

(assert (= (and b!6880242 (not res!2804712)) b!6880250))

(assert (= (and b!6880250 (not res!2804707)) b!6880246))

(assert (= (or b!6880245 b!6880249 b!6880242) bm!626381))

(assert (=> b!6880243 m!7606004))

(assert (=> b!6880243 m!7606004))

(assert (=> b!6880243 m!7606006))

(declare-fun m!7606020 () Bool)

(assert (=> b!6880248 m!7606020))

(assert (=> b!6880246 m!7606010))

(assert (=> b!6880244 m!7606010))

(assert (=> b!6880244 m!7606010))

(declare-fun m!7606024 () Bool)

(assert (=> b!6880244 m!7606024))

(assert (=> b!6880244 m!7606004))

(assert (=> b!6880244 m!7606024))

(assert (=> b!6880244 m!7606004))

(declare-fun m!7606026 () Bool)

(assert (=> b!6880244 m!7606026))

(assert (=> bm!626381 m!7606000))

(assert (=> b!6880251 m!7606010))

(assert (=> b!6880250 m!7606004))

(assert (=> b!6880250 m!7606004))

(assert (=> b!6880250 m!7606006))

(assert (=> d!2159957 m!7606000))

(declare-fun m!7606030 () Bool)

(assert (=> d!2159957 m!7606030))

(assert (=> b!6880050 d!2159957))

(declare-fun d!2159961 () Bool)

(assert (=> d!2159961 (= (matchR!8903 lt!2459559 s!14361) (matchRSpec!3821 lt!2459559 s!14361))))

(declare-fun lt!2459590 () Unit!160236)

(declare-fun choose!51238 (Regex!16758 List!66515) Unit!160236)

(assert (=> d!2159961 (= lt!2459590 (choose!51238 lt!2459559 s!14361))))

(assert (=> d!2159961 (validRegex!8466 lt!2459559)))

(assert (=> d!2159961 (= (mainMatchTheorem!3821 lt!2459559 s!14361) lt!2459590)))

(declare-fun bs!1838005 () Bool)

(assert (= bs!1838005 d!2159961))

(assert (=> bs!1838005 m!7605936))

(assert (=> bs!1838005 m!7605944))

(declare-fun m!7606032 () Bool)

(assert (=> bs!1838005 m!7606032))

(assert (=> bs!1838005 m!7606016))

(assert (=> b!6880050 d!2159961))

(declare-fun d!2159963 () Bool)

(assert (=> d!2159963 (= (matchR!8903 lt!2459552 s!14361) (matchRSpec!3821 lt!2459552 s!14361))))

(declare-fun lt!2459591 () Unit!160236)

(assert (=> d!2159963 (= lt!2459591 (choose!51238 lt!2459552 s!14361))))

(assert (=> d!2159963 (validRegex!8466 lt!2459552)))

(assert (=> d!2159963 (= (mainMatchTheorem!3821 lt!2459552 s!14361) lt!2459591)))

(declare-fun bs!1838006 () Bool)

(assert (= bs!1838006 d!2159963))

(assert (=> bs!1838006 m!7605940))

(assert (=> bs!1838006 m!7605946))

(declare-fun m!7606034 () Bool)

(assert (=> bs!1838006 m!7606034))

(assert (=> bs!1838006 m!7606030))

(assert (=> b!6880050 d!2159963))

(declare-fun bs!1838007 () Bool)

(declare-fun b!6880257 () Bool)

(assert (= bs!1838007 (and b!6880257 b!6880047)))

(declare-fun lambda!389415 () Int)

(assert (=> bs!1838007 (not (= lambda!389415 lambda!389399))))

(assert (=> bs!1838007 (not (= lambda!389415 lambda!389400))))

(declare-fun bs!1838008 () Bool)

(assert (= bs!1838008 (and b!6880257 b!6880163)))

(assert (=> bs!1838008 (= (and (= (reg!17087 lt!2459552) (reg!17087 lt!2459559)) (= lt!2459552 lt!2459559)) (= lambda!389415 lambda!389413))))

(declare-fun bs!1838009 () Bool)

(assert (= bs!1838009 (and b!6880257 b!6880158)))

(assert (=> bs!1838009 (not (= lambda!389415 lambda!389414))))

(assert (=> b!6880257 true))

(assert (=> b!6880257 true))

(declare-fun bs!1838010 () Bool)

(declare-fun b!6880252 () Bool)

(assert (= bs!1838010 (and b!6880252 b!6880163)))

(declare-fun lambda!389416 () Int)

(assert (=> bs!1838010 (not (= lambda!389416 lambda!389413))))

(declare-fun bs!1838011 () Bool)

(assert (= bs!1838011 (and b!6880252 b!6880047)))

(assert (=> bs!1838011 (not (= lambda!389416 lambda!389399))))

(declare-fun bs!1838012 () Bool)

(assert (= bs!1838012 (and b!6880252 b!6880257)))

(assert (=> bs!1838012 (not (= lambda!389416 lambda!389415))))

(declare-fun bs!1838013 () Bool)

(assert (= bs!1838013 (and b!6880252 b!6880158)))

(assert (=> bs!1838013 (= (and (= (regOne!34028 lt!2459552) (regOne!34028 lt!2459559)) (= (regTwo!34028 lt!2459552) (regTwo!34028 lt!2459559))) (= lambda!389416 lambda!389414))))

(assert (=> bs!1838011 (= (and (= (regOne!34028 lt!2459552) lt!2459553) (= (regTwo!34028 lt!2459552) r3!135)) (= lambda!389416 lambda!389400))))

(assert (=> b!6880252 true))

(assert (=> b!6880252 true))

(declare-fun e!4146281 () Bool)

(declare-fun call!626387 () Bool)

(assert (=> b!6880252 (= e!4146281 call!626387)))

(declare-fun b!6880253 () Bool)

(declare-fun e!4146279 () Bool)

(declare-fun e!4146280 () Bool)

(assert (=> b!6880253 (= e!4146279 e!4146280)))

(declare-fun res!2804717 () Bool)

(assert (=> b!6880253 (= res!2804717 (matchRSpec!3821 (regOne!34029 lt!2459552) s!14361))))

(assert (=> b!6880253 (=> res!2804717 e!4146280)))

(declare-fun d!2159965 () Bool)

(declare-fun c!1280011 () Bool)

(assert (=> d!2159965 (= c!1280011 (is-EmptyExpr!16758 lt!2459552))))

(declare-fun e!4146282 () Bool)

(assert (=> d!2159965 (= (matchRSpec!3821 lt!2459552 s!14361) e!4146282)))

(declare-fun b!6880254 () Bool)

(declare-fun e!4146285 () Bool)

(assert (=> b!6880254 (= e!4146285 (= s!14361 (Cons!66391 (c!1279976 lt!2459552) Nil!66391)))))

(declare-fun b!6880255 () Bool)

(declare-fun c!1280010 () Bool)

(assert (=> b!6880255 (= c!1280010 (is-Union!16758 lt!2459552))))

(assert (=> b!6880255 (= e!4146285 e!4146279)))

(declare-fun b!6880256 () Bool)

(assert (=> b!6880256 (= e!4146279 e!4146281)))

(declare-fun c!1280008 () Bool)

(assert (=> b!6880256 (= c!1280008 (is-Star!16758 lt!2459552))))

(declare-fun e!4146284 () Bool)

(assert (=> b!6880257 (= e!4146284 call!626387)))

(declare-fun b!6880258 () Bool)

(declare-fun res!2804716 () Bool)

(assert (=> b!6880258 (=> res!2804716 e!4146284)))

(declare-fun call!626388 () Bool)

(assert (=> b!6880258 (= res!2804716 call!626388)))

(assert (=> b!6880258 (= e!4146281 e!4146284)))

(declare-fun bm!626382 () Bool)

(assert (=> bm!626382 (= call!626387 (Exists!3770 (ite c!1280008 lambda!389415 lambda!389416)))))

(declare-fun b!6880259 () Bool)

(declare-fun c!1280009 () Bool)

(assert (=> b!6880259 (= c!1280009 (is-ElementMatch!16758 lt!2459552))))

(declare-fun e!4146283 () Bool)

(assert (=> b!6880259 (= e!4146283 e!4146285)))

(declare-fun b!6880260 () Bool)

(assert (=> b!6880260 (= e!4146282 e!4146283)))

(declare-fun res!2804715 () Bool)

(assert (=> b!6880260 (= res!2804715 (not (is-EmptyLang!16758 lt!2459552)))))

(assert (=> b!6880260 (=> (not res!2804715) (not e!4146283))))

(declare-fun b!6880261 () Bool)

(assert (=> b!6880261 (= e!4146282 call!626388)))

(declare-fun bm!626383 () Bool)

(assert (=> bm!626383 (= call!626388 (isEmpty!38662 s!14361))))

(declare-fun b!6880262 () Bool)

(assert (=> b!6880262 (= e!4146280 (matchRSpec!3821 (regTwo!34029 lt!2459552) s!14361))))

(assert (= (and d!2159965 c!1280011) b!6880261))

(assert (= (and d!2159965 (not c!1280011)) b!6880260))

(assert (= (and b!6880260 res!2804715) b!6880259))

(assert (= (and b!6880259 c!1280009) b!6880254))

(assert (= (and b!6880259 (not c!1280009)) b!6880255))

(assert (= (and b!6880255 c!1280010) b!6880253))

(assert (= (and b!6880255 (not c!1280010)) b!6880256))

(assert (= (and b!6880253 (not res!2804717)) b!6880262))

(assert (= (and b!6880256 c!1280008) b!6880258))

(assert (= (and b!6880256 (not c!1280008)) b!6880252))

(assert (= (and b!6880258 (not res!2804716)) b!6880257))

(assert (= (or b!6880257 b!6880252) bm!626382))

(assert (= (or b!6880261 b!6880258) bm!626383))

(declare-fun m!7606036 () Bool)

(assert (=> b!6880253 m!7606036))

(declare-fun m!7606038 () Bool)

(assert (=> bm!626382 m!7606038))

(assert (=> bm!626383 m!7606000))

(declare-fun m!7606040 () Bool)

(assert (=> b!6880262 m!7606040))

(assert (=> b!6880050 d!2159965))

(declare-fun b!6880309 () Bool)

(declare-fun e!4146310 () Option!16543)

(declare-fun e!4146313 () Option!16543)

(assert (=> b!6880309 (= e!4146310 e!4146313)))

(declare-fun c!1280022 () Bool)

(assert (=> b!6880309 (= c!1280022 (is-Nil!66391 s!14361))))

(declare-fun b!6880310 () Bool)

(declare-fun res!2804745 () Bool)

(declare-fun e!4146312 () Bool)

(assert (=> b!6880310 (=> (not res!2804745) (not e!4146312))))

(declare-fun lt!2459600 () Option!16543)

(declare-fun get!23103 (Option!16543) tuple2!67262)

(assert (=> b!6880310 (= res!2804745 (matchR!8903 r3!135 (_2!36934 (get!23103 lt!2459600))))))

(declare-fun b!6880311 () Bool)

(declare-fun e!4146311 () Bool)

(assert (=> b!6880311 (= e!4146311 (not (isDefined!13246 lt!2459600)))))

(declare-fun b!6880312 () Bool)

(declare-fun e!4146314 () Bool)

(assert (=> b!6880312 (= e!4146314 (matchR!8903 r3!135 s!14361))))

(declare-fun b!6880313 () Bool)

(declare-fun lt!2459601 () Unit!160236)

(declare-fun lt!2459602 () Unit!160236)

(assert (=> b!6880313 (= lt!2459601 lt!2459602)))

(declare-fun ++!14854 (List!66515 List!66515) List!66515)

(assert (=> b!6880313 (= (++!14854 (++!14854 Nil!66391 (Cons!66391 (h!72839 s!14361) Nil!66391)) (t!380258 s!14361)) s!14361)))

(declare-fun lemmaMoveElementToOtherListKeepsConcatEq!2763 (List!66515 C!33786 List!66515 List!66515) Unit!160236)

(assert (=> b!6880313 (= lt!2459602 (lemmaMoveElementToOtherListKeepsConcatEq!2763 Nil!66391 (h!72839 s!14361) (t!380258 s!14361) s!14361))))

(assert (=> b!6880313 (= e!4146313 (findConcatSeparation!2957 lt!2459553 r3!135 (++!14854 Nil!66391 (Cons!66391 (h!72839 s!14361) Nil!66391)) (t!380258 s!14361) s!14361))))

(declare-fun d!2159967 () Bool)

(assert (=> d!2159967 e!4146311))

(declare-fun res!2804747 () Bool)

(assert (=> d!2159967 (=> res!2804747 e!4146311)))

(assert (=> d!2159967 (= res!2804747 e!4146312)))

(declare-fun res!2804746 () Bool)

(assert (=> d!2159967 (=> (not res!2804746) (not e!4146312))))

(assert (=> d!2159967 (= res!2804746 (isDefined!13246 lt!2459600))))

(assert (=> d!2159967 (= lt!2459600 e!4146310)))

(declare-fun c!1280023 () Bool)

(assert (=> d!2159967 (= c!1280023 e!4146314)))

(declare-fun res!2804744 () Bool)

(assert (=> d!2159967 (=> (not res!2804744) (not e!4146314))))

(assert (=> d!2159967 (= res!2804744 (matchR!8903 lt!2459553 Nil!66391))))

(assert (=> d!2159967 (validRegex!8466 lt!2459553)))

(assert (=> d!2159967 (= (findConcatSeparation!2957 lt!2459553 r3!135 Nil!66391 s!14361 s!14361) lt!2459600)))

(declare-fun b!6880314 () Bool)

(assert (=> b!6880314 (= e!4146310 (Some!16542 (tuple2!67263 Nil!66391 s!14361)))))

(declare-fun b!6880315 () Bool)

(assert (=> b!6880315 (= e!4146313 None!16542)))

(declare-fun b!6880316 () Bool)

(declare-fun res!2804748 () Bool)

(assert (=> b!6880316 (=> (not res!2804748) (not e!4146312))))

(assert (=> b!6880316 (= res!2804748 (matchR!8903 lt!2459553 (_1!36934 (get!23103 lt!2459600))))))

(declare-fun b!6880317 () Bool)

(assert (=> b!6880317 (= e!4146312 (= (++!14854 (_1!36934 (get!23103 lt!2459600)) (_2!36934 (get!23103 lt!2459600))) s!14361))))

(assert (= (and d!2159967 res!2804744) b!6880312))

(assert (= (and d!2159967 c!1280023) b!6880314))

(assert (= (and d!2159967 (not c!1280023)) b!6880309))

(assert (= (and b!6880309 c!1280022) b!6880315))

(assert (= (and b!6880309 (not c!1280022)) b!6880313))

(assert (= (and d!2159967 res!2804746) b!6880316))

(assert (= (and b!6880316 res!2804748) b!6880310))

(assert (= (and b!6880310 res!2804745) b!6880317))

(assert (= (and d!2159967 (not res!2804747)) b!6880311))

(declare-fun m!7606042 () Bool)

(assert (=> b!6880312 m!7606042))

(declare-fun m!7606044 () Bool)

(assert (=> d!2159967 m!7606044))

(declare-fun m!7606046 () Bool)

(assert (=> d!2159967 m!7606046))

(assert (=> d!2159967 m!7605958))

(declare-fun m!7606048 () Bool)

(assert (=> b!6880316 m!7606048))

(declare-fun m!7606050 () Bool)

(assert (=> b!6880316 m!7606050))

(declare-fun m!7606052 () Bool)

(assert (=> b!6880313 m!7606052))

(assert (=> b!6880313 m!7606052))

(declare-fun m!7606054 () Bool)

(assert (=> b!6880313 m!7606054))

(declare-fun m!7606056 () Bool)

(assert (=> b!6880313 m!7606056))

(assert (=> b!6880313 m!7606052))

(declare-fun m!7606058 () Bool)

(assert (=> b!6880313 m!7606058))

(assert (=> b!6880317 m!7606048))

(declare-fun m!7606060 () Bool)

(assert (=> b!6880317 m!7606060))

(assert (=> b!6880311 m!7606044))

(assert (=> b!6880310 m!7606048))

(declare-fun m!7606062 () Bool)

(assert (=> b!6880310 m!7606062))

(assert (=> b!6880047 d!2159967))

(declare-fun bs!1838014 () Bool)

(declare-fun d!2159969 () Bool)

(assert (= bs!1838014 (and d!2159969 b!6880163)))

(declare-fun lambda!389421 () Int)

(assert (=> bs!1838014 (not (= lambda!389421 lambda!389413))))

(declare-fun bs!1838015 () Bool)

(assert (= bs!1838015 (and d!2159969 b!6880252)))

(assert (=> bs!1838015 (not (= lambda!389421 lambda!389416))))

(declare-fun bs!1838016 () Bool)

(assert (= bs!1838016 (and d!2159969 b!6880047)))

(assert (=> bs!1838016 (= lambda!389421 lambda!389399)))

(declare-fun bs!1838017 () Bool)

(assert (= bs!1838017 (and d!2159969 b!6880257)))

(assert (=> bs!1838017 (not (= lambda!389421 lambda!389415))))

(declare-fun bs!1838018 () Bool)

(assert (= bs!1838018 (and d!2159969 b!6880158)))

(assert (=> bs!1838018 (not (= lambda!389421 lambda!389414))))

(assert (=> bs!1838016 (not (= lambda!389421 lambda!389400))))

(assert (=> d!2159969 true))

(assert (=> d!2159969 true))

(assert (=> d!2159969 true))

(declare-fun lambda!389422 () Int)

(assert (=> bs!1838014 (not (= lambda!389422 lambda!389413))))

(assert (=> bs!1838015 (= (and (= lt!2459553 (regOne!34028 lt!2459552)) (= r3!135 (regTwo!34028 lt!2459552))) (= lambda!389422 lambda!389416))))

(declare-fun bs!1838019 () Bool)

(assert (= bs!1838019 d!2159969))

(assert (=> bs!1838019 (not (= lambda!389422 lambda!389421))))

(assert (=> bs!1838016 (not (= lambda!389422 lambda!389399))))

(assert (=> bs!1838017 (not (= lambda!389422 lambda!389415))))

(assert (=> bs!1838018 (= (and (= lt!2459553 (regOne!34028 lt!2459559)) (= r3!135 (regTwo!34028 lt!2459559))) (= lambda!389422 lambda!389414))))

(assert (=> bs!1838016 (= lambda!389422 lambda!389400)))

(assert (=> d!2159969 true))

(assert (=> d!2159969 true))

(assert (=> d!2159969 true))

(assert (=> d!2159969 (= (Exists!3770 lambda!389421) (Exists!3770 lambda!389422))))

(declare-fun lt!2459606 () Unit!160236)

(declare-fun choose!51239 (Regex!16758 Regex!16758 List!66515) Unit!160236)

(assert (=> d!2159969 (= lt!2459606 (choose!51239 lt!2459553 r3!135 s!14361))))

(assert (=> d!2159969 (validRegex!8466 lt!2459553)))

(assert (=> d!2159969 (= (lemmaExistCutMatchRandMatchRSpecEquivalent!2249 lt!2459553 r3!135 s!14361) lt!2459606)))

(declare-fun m!7606080 () Bool)

(assert (=> bs!1838019 m!7606080))

(declare-fun m!7606082 () Bool)

(assert (=> bs!1838019 m!7606082))

(declare-fun m!7606084 () Bool)

(assert (=> bs!1838019 m!7606084))

(assert (=> bs!1838019 m!7605958))

(assert (=> b!6880047 d!2159969))

(declare-fun b!6880358 () Bool)

(declare-fun e!4146346 () Bool)

(declare-fun call!626398 () Bool)

(assert (=> b!6880358 (= e!4146346 call!626398)))

(declare-fun b!6880359 () Bool)

(declare-fun e!4146343 () Bool)

(declare-fun e!4146345 () Bool)

(assert (=> b!6880359 (= e!4146343 e!4146345)))

(declare-fun res!2804777 () Bool)

(assert (=> b!6880359 (=> (not res!2804777) (not e!4146345))))

(declare-fun call!626400 () Bool)

(assert (=> b!6880359 (= res!2804777 call!626400)))

(declare-fun b!6880360 () Bool)

(declare-fun res!2804779 () Bool)

(assert (=> b!6880360 (=> res!2804779 e!4146343)))

(assert (=> b!6880360 (= res!2804779 (not (is-Concat!25603 lt!2459553)))))

(declare-fun e!4146342 () Bool)

(assert (=> b!6880360 (= e!4146342 e!4146343)))

(declare-fun b!6880361 () Bool)

(declare-fun res!2804775 () Bool)

(declare-fun e!4146341 () Bool)

(assert (=> b!6880361 (=> (not res!2804775) (not e!4146341))))

(declare-fun call!626399 () Bool)

(assert (=> b!6880361 (= res!2804775 call!626399)))

(assert (=> b!6880361 (= e!4146342 e!4146341)))

(declare-fun bm!626393 () Bool)

(declare-fun c!1280032 () Bool)

(declare-fun c!1280031 () Bool)

(assert (=> bm!626393 (= call!626398 (validRegex!8466 (ite c!1280031 (reg!17087 lt!2459553) (ite c!1280032 (regTwo!34029 lt!2459553) (regOne!34028 lt!2459553)))))))

(declare-fun b!6880362 () Bool)

(declare-fun e!4146340 () Bool)

(assert (=> b!6880362 (= e!4146340 e!4146342)))

(assert (=> b!6880362 (= c!1280032 (is-Union!16758 lt!2459553))))

(declare-fun b!6880363 () Bool)

(assert (=> b!6880363 (= e!4146345 call!626399)))

(declare-fun b!6880364 () Bool)

(assert (=> b!6880364 (= e!4146340 e!4146346)))

(declare-fun res!2804778 () Bool)

(assert (=> b!6880364 (= res!2804778 (not (nullable!6671 (reg!17087 lt!2459553))))))

(assert (=> b!6880364 (=> (not res!2804778) (not e!4146346))))

(declare-fun bm!626395 () Bool)

(assert (=> bm!626395 (= call!626400 call!626398)))

(declare-fun b!6880365 () Bool)

(assert (=> b!6880365 (= e!4146341 call!626400)))

(declare-fun b!6880366 () Bool)

(declare-fun e!4146344 () Bool)

(assert (=> b!6880366 (= e!4146344 e!4146340)))

(assert (=> b!6880366 (= c!1280031 (is-Star!16758 lt!2459553))))

(declare-fun bm!626394 () Bool)

(assert (=> bm!626394 (= call!626399 (validRegex!8466 (ite c!1280032 (regOne!34029 lt!2459553) (regTwo!34028 lt!2459553))))))

(declare-fun d!2159973 () Bool)

(declare-fun res!2804776 () Bool)

(assert (=> d!2159973 (=> res!2804776 e!4146344)))

(assert (=> d!2159973 (= res!2804776 (is-ElementMatch!16758 lt!2459553))))

(assert (=> d!2159973 (= (validRegex!8466 lt!2459553) e!4146344)))

(assert (= (and d!2159973 (not res!2804776)) b!6880366))

(assert (= (and b!6880366 c!1280031) b!6880364))

(assert (= (and b!6880366 (not c!1280031)) b!6880362))

(assert (= (and b!6880364 res!2804778) b!6880358))

(assert (= (and b!6880362 c!1280032) b!6880361))

(assert (= (and b!6880362 (not c!1280032)) b!6880360))

(assert (= (and b!6880361 res!2804775) b!6880365))

(assert (= (and b!6880360 (not res!2804779)) b!6880359))

(assert (= (and b!6880359 res!2804777) b!6880363))

(assert (= (or b!6880361 b!6880363) bm!626394))

(assert (= (or b!6880365 b!6880359) bm!626395))

(assert (= (or b!6880358 bm!626395) bm!626393))

(declare-fun m!7606092 () Bool)

(assert (=> bm!626393 m!7606092))

(declare-fun m!7606094 () Bool)

(assert (=> b!6880364 m!7606094))

(declare-fun m!7606096 () Bool)

(assert (=> bm!626394 m!7606096))

(assert (=> b!6880047 d!2159973))

(declare-fun d!2159979 () Bool)

(declare-fun choose!51240 (Int) Bool)

(assert (=> d!2159979 (= (Exists!3770 lambda!389399) (choose!51240 lambda!389399))))

(declare-fun bs!1838022 () Bool)

(assert (= bs!1838022 d!2159979))

(declare-fun m!7606098 () Bool)

(assert (=> bs!1838022 m!7606098))

(assert (=> b!6880047 d!2159979))

(declare-fun d!2159981 () Bool)

(declare-fun isEmpty!38663 (Option!16543) Bool)

(assert (=> d!2159981 (= (isDefined!13246 (findConcatSeparation!2957 lt!2459553 r3!135 Nil!66391 s!14361 s!14361)) (not (isEmpty!38663 (findConcatSeparation!2957 lt!2459553 r3!135 Nil!66391 s!14361 s!14361))))))

(declare-fun bs!1838023 () Bool)

(assert (= bs!1838023 d!2159981))

(assert (=> bs!1838023 m!7605950))

(declare-fun m!7606100 () Bool)

(assert (=> bs!1838023 m!7606100))

(assert (=> b!6880047 d!2159981))

(declare-fun d!2159983 () Bool)

(assert (=> d!2159983 (= (Exists!3770 lambda!389400) (choose!51240 lambda!389400))))

(declare-fun bs!1838024 () Bool)

(assert (= bs!1838024 d!2159983))

(declare-fun m!7606102 () Bool)

(assert (=> bs!1838024 m!7606102))

(assert (=> b!6880047 d!2159983))

(declare-fun bs!1838025 () Bool)

(declare-fun d!2159985 () Bool)

(assert (= bs!1838025 (and d!2159985 d!2159969)))

(declare-fun lambda!389425 () Int)

(assert (=> bs!1838025 (not (= lambda!389425 lambda!389422))))

(declare-fun bs!1838026 () Bool)

(assert (= bs!1838026 (and d!2159985 b!6880163)))

(assert (=> bs!1838026 (not (= lambda!389425 lambda!389413))))

(declare-fun bs!1838027 () Bool)

(assert (= bs!1838027 (and d!2159985 b!6880252)))

(assert (=> bs!1838027 (not (= lambda!389425 lambda!389416))))

(assert (=> bs!1838025 (= lambda!389425 lambda!389421)))

(declare-fun bs!1838028 () Bool)

(assert (= bs!1838028 (and d!2159985 b!6880047)))

(assert (=> bs!1838028 (= lambda!389425 lambda!389399)))

(declare-fun bs!1838029 () Bool)

(assert (= bs!1838029 (and d!2159985 b!6880257)))

(assert (=> bs!1838029 (not (= lambda!389425 lambda!389415))))

(declare-fun bs!1838030 () Bool)

(assert (= bs!1838030 (and d!2159985 b!6880158)))

(assert (=> bs!1838030 (not (= lambda!389425 lambda!389414))))

(assert (=> bs!1838028 (not (= lambda!389425 lambda!389400))))

(assert (=> d!2159985 true))

(assert (=> d!2159985 true))

(assert (=> d!2159985 true))

(assert (=> d!2159985 (= (isDefined!13246 (findConcatSeparation!2957 lt!2459553 r3!135 Nil!66391 s!14361 s!14361)) (Exists!3770 lambda!389425))))

(declare-fun lt!2459613 () Unit!160236)

(declare-fun choose!51241 (Regex!16758 Regex!16758 List!66515) Unit!160236)

(assert (=> d!2159985 (= lt!2459613 (choose!51241 lt!2459553 r3!135 s!14361))))

(assert (=> d!2159985 (validRegex!8466 lt!2459553)))

(assert (=> d!2159985 (= (lemmaFindConcatSeparationEquivalentToExists!2721 lt!2459553 r3!135 s!14361) lt!2459613)))

(declare-fun bs!1838031 () Bool)

(assert (= bs!1838031 d!2159985))

(assert (=> bs!1838031 m!7605958))

(declare-fun m!7606104 () Bool)

(assert (=> bs!1838031 m!7606104))

(declare-fun m!7606106 () Bool)

(assert (=> bs!1838031 m!7606106))

(assert (=> bs!1838031 m!7605950))

(assert (=> bs!1838031 m!7605952))

(assert (=> bs!1838031 m!7605950))

(assert (=> b!6880047 d!2159985))

(declare-fun b!6880393 () Bool)

(declare-fun e!4146369 () Bool)

(declare-fun call!626401 () Bool)

(assert (=> b!6880393 (= e!4146369 call!626401)))

(declare-fun b!6880394 () Bool)

(declare-fun e!4146366 () Bool)

(declare-fun e!4146368 () Bool)

(assert (=> b!6880394 (= e!4146366 e!4146368)))

(declare-fun res!2804792 () Bool)

(assert (=> b!6880394 (=> (not res!2804792) (not e!4146368))))

(declare-fun call!626403 () Bool)

(assert (=> b!6880394 (= res!2804792 call!626403)))

(declare-fun b!6880395 () Bool)

(declare-fun res!2804794 () Bool)

(assert (=> b!6880395 (=> res!2804794 e!4146366)))

(assert (=> b!6880395 (= res!2804794 (not (is-Concat!25603 r3!135)))))

(declare-fun e!4146365 () Bool)

(assert (=> b!6880395 (= e!4146365 e!4146366)))

(declare-fun b!6880396 () Bool)

(declare-fun res!2804790 () Bool)

(declare-fun e!4146364 () Bool)

(assert (=> b!6880396 (=> (not res!2804790) (not e!4146364))))

(declare-fun call!626402 () Bool)

(assert (=> b!6880396 (= res!2804790 call!626402)))

(assert (=> b!6880396 (= e!4146365 e!4146364)))

(declare-fun bm!626396 () Bool)

(declare-fun c!1280041 () Bool)

(declare-fun c!1280042 () Bool)

(assert (=> bm!626396 (= call!626401 (validRegex!8466 (ite c!1280041 (reg!17087 r3!135) (ite c!1280042 (regTwo!34029 r3!135) (regOne!34028 r3!135)))))))

(declare-fun b!6880397 () Bool)

(declare-fun e!4146363 () Bool)

(assert (=> b!6880397 (= e!4146363 e!4146365)))

(assert (=> b!6880397 (= c!1280042 (is-Union!16758 r3!135))))

(declare-fun b!6880398 () Bool)

(assert (=> b!6880398 (= e!4146368 call!626402)))

(declare-fun b!6880399 () Bool)

(assert (=> b!6880399 (= e!4146363 e!4146369)))

(declare-fun res!2804793 () Bool)

(assert (=> b!6880399 (= res!2804793 (not (nullable!6671 (reg!17087 r3!135))))))

(assert (=> b!6880399 (=> (not res!2804793) (not e!4146369))))

(declare-fun bm!626398 () Bool)

(assert (=> bm!626398 (= call!626403 call!626401)))

(declare-fun b!6880400 () Bool)

(assert (=> b!6880400 (= e!4146364 call!626403)))

(declare-fun b!6880401 () Bool)

(declare-fun e!4146367 () Bool)

(assert (=> b!6880401 (= e!4146367 e!4146363)))

(assert (=> b!6880401 (= c!1280041 (is-Star!16758 r3!135))))

(declare-fun bm!626397 () Bool)

(assert (=> bm!626397 (= call!626402 (validRegex!8466 (ite c!1280042 (regOne!34029 r3!135) (regTwo!34028 r3!135))))))

(declare-fun d!2159987 () Bool)

(declare-fun res!2804791 () Bool)

(assert (=> d!2159987 (=> res!2804791 e!4146367)))

(assert (=> d!2159987 (= res!2804791 (is-ElementMatch!16758 r3!135))))

(assert (=> d!2159987 (= (validRegex!8466 r3!135) e!4146367)))

(assert (= (and d!2159987 (not res!2804791)) b!6880401))

(assert (= (and b!6880401 c!1280041) b!6880399))

(assert (= (and b!6880401 (not c!1280041)) b!6880397))

(assert (= (and b!6880399 res!2804793) b!6880393))

(assert (= (and b!6880397 c!1280042) b!6880396))

(assert (= (and b!6880397 (not c!1280042)) b!6880395))

(assert (= (and b!6880396 res!2804790) b!6880400))

(assert (= (and b!6880395 (not res!2804794)) b!6880394))

(assert (= (and b!6880394 res!2804792) b!6880398))

(assert (= (or b!6880396 b!6880398) bm!626397))

(assert (= (or b!6880400 b!6880394) bm!626398))

(assert (= (or b!6880393 bm!626398) bm!626396))

(declare-fun m!7606108 () Bool)

(assert (=> bm!626396 m!7606108))

(declare-fun m!7606110 () Bool)

(assert (=> b!6880399 m!7606110))

(declare-fun m!7606112 () Bool)

(assert (=> bm!626397 m!7606112))

(assert (=> b!6880051 d!2159987))

(declare-fun b!6880406 () Bool)

(declare-fun e!4146378 () Bool)

(declare-fun call!626404 () Bool)

(assert (=> b!6880406 (= e!4146378 call!626404)))

(declare-fun b!6880407 () Bool)

(declare-fun e!4146375 () Bool)

(declare-fun e!4146377 () Bool)

(assert (=> b!6880407 (= e!4146375 e!4146377)))

(declare-fun res!2804803 () Bool)

(assert (=> b!6880407 (=> (not res!2804803) (not e!4146377))))

(declare-fun call!626406 () Bool)

(assert (=> b!6880407 (= res!2804803 call!626406)))

(declare-fun b!6880408 () Bool)

(declare-fun res!2804805 () Bool)

(assert (=> b!6880408 (=> res!2804805 e!4146375)))

(assert (=> b!6880408 (= res!2804805 (not (is-Concat!25603 r2!6280)))))

(declare-fun e!4146374 () Bool)

(assert (=> b!6880408 (= e!4146374 e!4146375)))

(declare-fun b!6880409 () Bool)

(declare-fun res!2804801 () Bool)

(declare-fun e!4146373 () Bool)

(assert (=> b!6880409 (=> (not res!2804801) (not e!4146373))))

(declare-fun call!626405 () Bool)

(assert (=> b!6880409 (= res!2804801 call!626405)))

(assert (=> b!6880409 (= e!4146374 e!4146373)))

(declare-fun c!1280044 () Bool)

(declare-fun bm!626399 () Bool)

(declare-fun c!1280043 () Bool)

(assert (=> bm!626399 (= call!626404 (validRegex!8466 (ite c!1280043 (reg!17087 r2!6280) (ite c!1280044 (regTwo!34029 r2!6280) (regOne!34028 r2!6280)))))))

(declare-fun b!6880410 () Bool)

(declare-fun e!4146372 () Bool)

(assert (=> b!6880410 (= e!4146372 e!4146374)))

(assert (=> b!6880410 (= c!1280044 (is-Union!16758 r2!6280))))

(declare-fun b!6880411 () Bool)

(assert (=> b!6880411 (= e!4146377 call!626405)))

(declare-fun b!6880412 () Bool)

(assert (=> b!6880412 (= e!4146372 e!4146378)))

(declare-fun res!2804804 () Bool)

(assert (=> b!6880412 (= res!2804804 (not (nullable!6671 (reg!17087 r2!6280))))))

(assert (=> b!6880412 (=> (not res!2804804) (not e!4146378))))

(declare-fun bm!626401 () Bool)

(assert (=> bm!626401 (= call!626406 call!626404)))

(declare-fun b!6880414 () Bool)

(assert (=> b!6880414 (= e!4146373 call!626406)))

(declare-fun b!6880416 () Bool)

(declare-fun e!4146376 () Bool)

(assert (=> b!6880416 (= e!4146376 e!4146372)))

(assert (=> b!6880416 (= c!1280043 (is-Star!16758 r2!6280))))

(declare-fun bm!626400 () Bool)

(assert (=> bm!626400 (= call!626405 (validRegex!8466 (ite c!1280044 (regOne!34029 r2!6280) (regTwo!34028 r2!6280))))))

(declare-fun d!2159989 () Bool)

(declare-fun res!2804802 () Bool)

(assert (=> d!2159989 (=> res!2804802 e!4146376)))

(assert (=> d!2159989 (= res!2804802 (is-ElementMatch!16758 r2!6280))))

(assert (=> d!2159989 (= (validRegex!8466 r2!6280) e!4146376)))

(assert (= (and d!2159989 (not res!2804802)) b!6880416))

(assert (= (and b!6880416 c!1280043) b!6880412))

(assert (= (and b!6880416 (not c!1280043)) b!6880410))

(assert (= (and b!6880412 res!2804804) b!6880406))

(assert (= (and b!6880410 c!1280044) b!6880409))

(assert (= (and b!6880410 (not c!1280044)) b!6880408))

(assert (= (and b!6880409 res!2804801) b!6880414))

(assert (= (and b!6880408 (not res!2804805)) b!6880407))

(assert (= (and b!6880407 res!2804803) b!6880411))

(assert (= (or b!6880409 b!6880411) bm!626400))

(assert (= (or b!6880414 b!6880407) bm!626401))

(assert (= (or b!6880406 bm!626401) bm!626399))

(declare-fun m!7606114 () Bool)

(assert (=> bm!626399 m!7606114))

(declare-fun m!7606116 () Bool)

(assert (=> b!6880412 m!7606116))

(declare-fun m!7606118 () Bool)

(assert (=> bm!626400 m!7606118))

(assert (=> b!6880041 d!2159989))

(declare-fun b!6880417 () Bool)

(declare-fun e!4146385 () Bool)

(declare-fun call!626407 () Bool)

(assert (=> b!6880417 (= e!4146385 call!626407)))

(declare-fun b!6880418 () Bool)

(declare-fun e!4146382 () Bool)

(declare-fun e!4146384 () Bool)

(assert (=> b!6880418 (= e!4146382 e!4146384)))

(declare-fun res!2804808 () Bool)

(assert (=> b!6880418 (=> (not res!2804808) (not e!4146384))))

(declare-fun call!626409 () Bool)

(assert (=> b!6880418 (= res!2804808 call!626409)))

(declare-fun b!6880419 () Bool)

(declare-fun res!2804810 () Bool)

(assert (=> b!6880419 (=> res!2804810 e!4146382)))

(assert (=> b!6880419 (= res!2804810 (not (is-Concat!25603 r1!6342)))))

(declare-fun e!4146381 () Bool)

(assert (=> b!6880419 (= e!4146381 e!4146382)))

(declare-fun b!6880420 () Bool)

(declare-fun res!2804806 () Bool)

(declare-fun e!4146380 () Bool)

(assert (=> b!6880420 (=> (not res!2804806) (not e!4146380))))

(declare-fun call!626408 () Bool)

(assert (=> b!6880420 (= res!2804806 call!626408)))

(assert (=> b!6880420 (= e!4146381 e!4146380)))

(declare-fun c!1280046 () Bool)

(declare-fun bm!626402 () Bool)

(declare-fun c!1280045 () Bool)

(assert (=> bm!626402 (= call!626407 (validRegex!8466 (ite c!1280045 (reg!17087 r1!6342) (ite c!1280046 (regTwo!34029 r1!6342) (regOne!34028 r1!6342)))))))

(declare-fun b!6880421 () Bool)

(declare-fun e!4146379 () Bool)

(assert (=> b!6880421 (= e!4146379 e!4146381)))

(assert (=> b!6880421 (= c!1280046 (is-Union!16758 r1!6342))))

(declare-fun b!6880422 () Bool)

(assert (=> b!6880422 (= e!4146384 call!626408)))

(declare-fun b!6880423 () Bool)

(assert (=> b!6880423 (= e!4146379 e!4146385)))

(declare-fun res!2804809 () Bool)

(assert (=> b!6880423 (= res!2804809 (not (nullable!6671 (reg!17087 r1!6342))))))

(assert (=> b!6880423 (=> (not res!2804809) (not e!4146385))))

(declare-fun bm!626404 () Bool)

(assert (=> bm!626404 (= call!626409 call!626407)))

(declare-fun b!6880424 () Bool)

(assert (=> b!6880424 (= e!4146380 call!626409)))

(declare-fun b!6880425 () Bool)

(declare-fun e!4146383 () Bool)

(assert (=> b!6880425 (= e!4146383 e!4146379)))

(assert (=> b!6880425 (= c!1280045 (is-Star!16758 r1!6342))))

(declare-fun bm!626403 () Bool)

(assert (=> bm!626403 (= call!626408 (validRegex!8466 (ite c!1280046 (regOne!34029 r1!6342) (regTwo!34028 r1!6342))))))

(declare-fun d!2159991 () Bool)

(declare-fun res!2804807 () Bool)

(assert (=> d!2159991 (=> res!2804807 e!4146383)))

(assert (=> d!2159991 (= res!2804807 (is-ElementMatch!16758 r1!6342))))

(assert (=> d!2159991 (= (validRegex!8466 r1!6342) e!4146383)))

(assert (= (and d!2159991 (not res!2804807)) b!6880425))

(assert (= (and b!6880425 c!1280045) b!6880423))

(assert (= (and b!6880425 (not c!1280045)) b!6880421))

(assert (= (and b!6880423 res!2804809) b!6880417))

(assert (= (and b!6880421 c!1280046) b!6880420))

(assert (= (and b!6880421 (not c!1280046)) b!6880419))

(assert (= (and b!6880420 res!2804806) b!6880424))

(assert (= (and b!6880419 (not res!2804810)) b!6880418))

(assert (= (and b!6880418 res!2804808) b!6880422))

(assert (= (or b!6880420 b!6880422) bm!626403))

(assert (= (or b!6880424 b!6880418) bm!626404))

(assert (= (or b!6880417 bm!626404) bm!626402))

(declare-fun m!7606120 () Bool)

(assert (=> bm!626402 m!7606120))

(declare-fun m!7606122 () Bool)

(assert (=> b!6880423 m!7606122))

(declare-fun m!7606124 () Bool)

(assert (=> bm!626403 m!7606124))

(assert (=> start!663792 d!2159991))

(declare-fun b!6880430 () Bool)

(declare-fun e!4146388 () Bool)

(declare-fun tp!1891962 () Bool)

(assert (=> b!6880430 (= e!4146388 (and tp_is_empty!42741 tp!1891962))))

(assert (=> b!6880039 (= tp!1891901 e!4146388)))

(assert (= (and b!6880039 (is-Cons!66391 (t!380258 s!14361))) b!6880430))

(declare-fun b!6880442 () Bool)

(declare-fun e!4146391 () Bool)

(declare-fun tp!1891976 () Bool)

(declare-fun tp!1891974 () Bool)

(assert (=> b!6880442 (= e!4146391 (and tp!1891976 tp!1891974))))

(declare-fun b!6880443 () Bool)

(declare-fun tp!1891973 () Bool)

(assert (=> b!6880443 (= e!4146391 tp!1891973)))

(declare-fun b!6880444 () Bool)

(declare-fun tp!1891975 () Bool)

(declare-fun tp!1891977 () Bool)

(assert (=> b!6880444 (= e!4146391 (and tp!1891975 tp!1891977))))

(assert (=> b!6880045 (= tp!1891898 e!4146391)))

(declare-fun b!6880441 () Bool)

(assert (=> b!6880441 (= e!4146391 tp_is_empty!42741)))

(assert (= (and b!6880045 (is-ElementMatch!16758 (regOne!34029 r1!6342))) b!6880441))

(assert (= (and b!6880045 (is-Concat!25603 (regOne!34029 r1!6342))) b!6880442))

(assert (= (and b!6880045 (is-Star!16758 (regOne!34029 r1!6342))) b!6880443))

(assert (= (and b!6880045 (is-Union!16758 (regOne!34029 r1!6342))) b!6880444))

(declare-fun b!6880446 () Bool)

(declare-fun e!4146392 () Bool)

(declare-fun tp!1891981 () Bool)

(declare-fun tp!1891979 () Bool)

(assert (=> b!6880446 (= e!4146392 (and tp!1891981 tp!1891979))))

(declare-fun b!6880447 () Bool)

(declare-fun tp!1891978 () Bool)

(assert (=> b!6880447 (= e!4146392 tp!1891978)))

(declare-fun b!6880448 () Bool)

(declare-fun tp!1891980 () Bool)

(declare-fun tp!1891982 () Bool)

(assert (=> b!6880448 (= e!4146392 (and tp!1891980 tp!1891982))))

(assert (=> b!6880045 (= tp!1891897 e!4146392)))

(declare-fun b!6880445 () Bool)

(assert (=> b!6880445 (= e!4146392 tp_is_empty!42741)))

(assert (= (and b!6880045 (is-ElementMatch!16758 (regTwo!34029 r1!6342))) b!6880445))

(assert (= (and b!6880045 (is-Concat!25603 (regTwo!34029 r1!6342))) b!6880446))

(assert (= (and b!6880045 (is-Star!16758 (regTwo!34029 r1!6342))) b!6880447))

(assert (= (and b!6880045 (is-Union!16758 (regTwo!34029 r1!6342))) b!6880448))

(declare-fun b!6880450 () Bool)

(declare-fun e!4146393 () Bool)

(declare-fun tp!1891986 () Bool)

(declare-fun tp!1891984 () Bool)

(assert (=> b!6880450 (= e!4146393 (and tp!1891986 tp!1891984))))

(declare-fun b!6880451 () Bool)

(declare-fun tp!1891983 () Bool)

(assert (=> b!6880451 (= e!4146393 tp!1891983)))

(declare-fun b!6880452 () Bool)

(declare-fun tp!1891985 () Bool)

(declare-fun tp!1891987 () Bool)

(assert (=> b!6880452 (= e!4146393 (and tp!1891985 tp!1891987))))

(assert (=> b!6880040 (= tp!1891900 e!4146393)))

(declare-fun b!6880449 () Bool)

(assert (=> b!6880449 (= e!4146393 tp_is_empty!42741)))

(assert (= (and b!6880040 (is-ElementMatch!16758 (reg!17087 r2!6280))) b!6880449))

(assert (= (and b!6880040 (is-Concat!25603 (reg!17087 r2!6280))) b!6880450))

(assert (= (and b!6880040 (is-Star!16758 (reg!17087 r2!6280))) b!6880451))

(assert (= (and b!6880040 (is-Union!16758 (reg!17087 r2!6280))) b!6880452))

(declare-fun b!6880454 () Bool)

(declare-fun e!4146394 () Bool)

(declare-fun tp!1891991 () Bool)

(declare-fun tp!1891989 () Bool)

(assert (=> b!6880454 (= e!4146394 (and tp!1891991 tp!1891989))))

(declare-fun b!6880455 () Bool)

(declare-fun tp!1891988 () Bool)

(assert (=> b!6880455 (= e!4146394 tp!1891988)))

(declare-fun b!6880456 () Bool)

(declare-fun tp!1891990 () Bool)

(declare-fun tp!1891992 () Bool)

(assert (=> b!6880456 (= e!4146394 (and tp!1891990 tp!1891992))))

(assert (=> b!6880054 (= tp!1891908 e!4146394)))

(declare-fun b!6880453 () Bool)

(assert (=> b!6880453 (= e!4146394 tp_is_empty!42741)))

(assert (= (and b!6880054 (is-ElementMatch!16758 (regOne!34028 r1!6342))) b!6880453))

(assert (= (and b!6880054 (is-Concat!25603 (regOne!34028 r1!6342))) b!6880454))

(assert (= (and b!6880054 (is-Star!16758 (regOne!34028 r1!6342))) b!6880455))

(assert (= (and b!6880054 (is-Union!16758 (regOne!34028 r1!6342))) b!6880456))

(declare-fun b!6880458 () Bool)

(declare-fun e!4146395 () Bool)

(declare-fun tp!1891996 () Bool)

(declare-fun tp!1891994 () Bool)

(assert (=> b!6880458 (= e!4146395 (and tp!1891996 tp!1891994))))

(declare-fun b!6880459 () Bool)

(declare-fun tp!1891993 () Bool)

(assert (=> b!6880459 (= e!4146395 tp!1891993)))

(declare-fun b!6880460 () Bool)

(declare-fun tp!1891995 () Bool)

(declare-fun tp!1891997 () Bool)

(assert (=> b!6880460 (= e!4146395 (and tp!1891995 tp!1891997))))

(assert (=> b!6880054 (= tp!1891903 e!4146395)))

(declare-fun b!6880457 () Bool)

(assert (=> b!6880457 (= e!4146395 tp_is_empty!42741)))

(assert (= (and b!6880054 (is-ElementMatch!16758 (regTwo!34028 r1!6342))) b!6880457))

(assert (= (and b!6880054 (is-Concat!25603 (regTwo!34028 r1!6342))) b!6880458))

(assert (= (and b!6880054 (is-Star!16758 (regTwo!34028 r1!6342))) b!6880459))

(assert (= (and b!6880054 (is-Union!16758 (regTwo!34028 r1!6342))) b!6880460))

(declare-fun b!6880462 () Bool)

(declare-fun e!4146396 () Bool)

(declare-fun tp!1892001 () Bool)

(declare-fun tp!1891999 () Bool)

(assert (=> b!6880462 (= e!4146396 (and tp!1892001 tp!1891999))))

(declare-fun b!6880463 () Bool)

(declare-fun tp!1891998 () Bool)

(assert (=> b!6880463 (= e!4146396 tp!1891998)))

(declare-fun b!6880464 () Bool)

(declare-fun tp!1892000 () Bool)

(declare-fun tp!1892002 () Bool)

(assert (=> b!6880464 (= e!4146396 (and tp!1892000 tp!1892002))))

(assert (=> b!6880044 (= tp!1891896 e!4146396)))

(declare-fun b!6880461 () Bool)

(assert (=> b!6880461 (= e!4146396 tp_is_empty!42741)))

(assert (= (and b!6880044 (is-ElementMatch!16758 (regOne!34028 r2!6280))) b!6880461))

(assert (= (and b!6880044 (is-Concat!25603 (regOne!34028 r2!6280))) b!6880462))

(assert (= (and b!6880044 (is-Star!16758 (regOne!34028 r2!6280))) b!6880463))

(assert (= (and b!6880044 (is-Union!16758 (regOne!34028 r2!6280))) b!6880464))

(declare-fun b!6880466 () Bool)

(declare-fun e!4146397 () Bool)

(declare-fun tp!1892006 () Bool)

(declare-fun tp!1892004 () Bool)

(assert (=> b!6880466 (= e!4146397 (and tp!1892006 tp!1892004))))

(declare-fun b!6880467 () Bool)

(declare-fun tp!1892003 () Bool)

(assert (=> b!6880467 (= e!4146397 tp!1892003)))

(declare-fun b!6880468 () Bool)

(declare-fun tp!1892005 () Bool)

(declare-fun tp!1892007 () Bool)

(assert (=> b!6880468 (= e!4146397 (and tp!1892005 tp!1892007))))

(assert (=> b!6880044 (= tp!1891905 e!4146397)))

(declare-fun b!6880465 () Bool)

(assert (=> b!6880465 (= e!4146397 tp_is_empty!42741)))

(assert (= (and b!6880044 (is-ElementMatch!16758 (regTwo!34028 r2!6280))) b!6880465))

(assert (= (and b!6880044 (is-Concat!25603 (regTwo!34028 r2!6280))) b!6880466))

(assert (= (and b!6880044 (is-Star!16758 (regTwo!34028 r2!6280))) b!6880467))

(assert (= (and b!6880044 (is-Union!16758 (regTwo!34028 r2!6280))) b!6880468))

(declare-fun b!6880470 () Bool)

(declare-fun e!4146398 () Bool)

(declare-fun tp!1892011 () Bool)

(declare-fun tp!1892009 () Bool)

(assert (=> b!6880470 (= e!4146398 (and tp!1892011 tp!1892009))))

(declare-fun b!6880471 () Bool)

(declare-fun tp!1892008 () Bool)

(assert (=> b!6880471 (= e!4146398 tp!1892008)))

(declare-fun b!6880472 () Bool)

(declare-fun tp!1892010 () Bool)

(declare-fun tp!1892012 () Bool)

(assert (=> b!6880472 (= e!4146398 (and tp!1892010 tp!1892012))))

(assert (=> b!6880042 (= tp!1891902 e!4146398)))

(declare-fun b!6880469 () Bool)

(assert (=> b!6880469 (= e!4146398 tp_is_empty!42741)))

(assert (= (and b!6880042 (is-ElementMatch!16758 (reg!17087 r3!135))) b!6880469))

(assert (= (and b!6880042 (is-Concat!25603 (reg!17087 r3!135))) b!6880470))

(assert (= (and b!6880042 (is-Star!16758 (reg!17087 r3!135))) b!6880471))

(assert (= (and b!6880042 (is-Union!16758 (reg!17087 r3!135))) b!6880472))

(declare-fun b!6880474 () Bool)

(declare-fun e!4146399 () Bool)

(declare-fun tp!1892016 () Bool)

(declare-fun tp!1892014 () Bool)

(assert (=> b!6880474 (= e!4146399 (and tp!1892016 tp!1892014))))

(declare-fun b!6880475 () Bool)

(declare-fun tp!1892013 () Bool)

(assert (=> b!6880475 (= e!4146399 tp!1892013)))

(declare-fun b!6880476 () Bool)

(declare-fun tp!1892015 () Bool)

(declare-fun tp!1892017 () Bool)

(assert (=> b!6880476 (= e!4146399 (and tp!1892015 tp!1892017))))

(assert (=> b!6880053 (= tp!1891899 e!4146399)))

(declare-fun b!6880473 () Bool)

(assert (=> b!6880473 (= e!4146399 tp_is_empty!42741)))

(assert (= (and b!6880053 (is-ElementMatch!16758 (regOne!34029 r3!135))) b!6880473))

(assert (= (and b!6880053 (is-Concat!25603 (regOne!34029 r3!135))) b!6880474))

(assert (= (and b!6880053 (is-Star!16758 (regOne!34029 r3!135))) b!6880475))

(assert (= (and b!6880053 (is-Union!16758 (regOne!34029 r3!135))) b!6880476))

(declare-fun b!6880478 () Bool)

(declare-fun e!4146400 () Bool)

(declare-fun tp!1892021 () Bool)

(declare-fun tp!1892019 () Bool)

(assert (=> b!6880478 (= e!4146400 (and tp!1892021 tp!1892019))))

(declare-fun b!6880479 () Bool)

(declare-fun tp!1892018 () Bool)

(assert (=> b!6880479 (= e!4146400 tp!1892018)))

(declare-fun b!6880480 () Bool)

(declare-fun tp!1892020 () Bool)

(declare-fun tp!1892022 () Bool)

(assert (=> b!6880480 (= e!4146400 (and tp!1892020 tp!1892022))))

(assert (=> b!6880053 (= tp!1891904 e!4146400)))

(declare-fun b!6880477 () Bool)

(assert (=> b!6880477 (= e!4146400 tp_is_empty!42741)))

(assert (= (and b!6880053 (is-ElementMatch!16758 (regTwo!34029 r3!135))) b!6880477))

(assert (= (and b!6880053 (is-Concat!25603 (regTwo!34029 r3!135))) b!6880478))

(assert (= (and b!6880053 (is-Star!16758 (regTwo!34029 r3!135))) b!6880479))

(assert (= (and b!6880053 (is-Union!16758 (regTwo!34029 r3!135))) b!6880480))

(declare-fun b!6880482 () Bool)

(declare-fun e!4146401 () Bool)

(declare-fun tp!1892026 () Bool)

(declare-fun tp!1892024 () Bool)

(assert (=> b!6880482 (= e!4146401 (and tp!1892026 tp!1892024))))

(declare-fun b!6880483 () Bool)

(declare-fun tp!1892023 () Bool)

(assert (=> b!6880483 (= e!4146401 tp!1892023)))

(declare-fun b!6880484 () Bool)

(declare-fun tp!1892025 () Bool)

(declare-fun tp!1892027 () Bool)

(assert (=> b!6880484 (= e!4146401 (and tp!1892025 tp!1892027))))

(assert (=> b!6880048 (= tp!1891907 e!4146401)))

(declare-fun b!6880481 () Bool)

(assert (=> b!6880481 (= e!4146401 tp_is_empty!42741)))

(assert (= (and b!6880048 (is-ElementMatch!16758 (reg!17087 r1!6342))) b!6880481))

(assert (= (and b!6880048 (is-Concat!25603 (reg!17087 r1!6342))) b!6880482))

(assert (= (and b!6880048 (is-Star!16758 (reg!17087 r1!6342))) b!6880483))

(assert (= (and b!6880048 (is-Union!16758 (reg!17087 r1!6342))) b!6880484))

(declare-fun b!6880486 () Bool)

(declare-fun e!4146402 () Bool)

(declare-fun tp!1892031 () Bool)

(declare-fun tp!1892029 () Bool)

(assert (=> b!6880486 (= e!4146402 (and tp!1892031 tp!1892029))))

(declare-fun b!6880487 () Bool)

(declare-fun tp!1892028 () Bool)

(assert (=> b!6880487 (= e!4146402 tp!1892028)))

(declare-fun b!6880488 () Bool)

(declare-fun tp!1892030 () Bool)

(declare-fun tp!1892032 () Bool)

(assert (=> b!6880488 (= e!4146402 (and tp!1892030 tp!1892032))))

(assert (=> b!6880046 (= tp!1891910 e!4146402)))

(declare-fun b!6880485 () Bool)

(assert (=> b!6880485 (= e!4146402 tp_is_empty!42741)))

(assert (= (and b!6880046 (is-ElementMatch!16758 (regOne!34029 r2!6280))) b!6880485))

(assert (= (and b!6880046 (is-Concat!25603 (regOne!34029 r2!6280))) b!6880486))

(assert (= (and b!6880046 (is-Star!16758 (regOne!34029 r2!6280))) b!6880487))

(assert (= (and b!6880046 (is-Union!16758 (regOne!34029 r2!6280))) b!6880488))

(declare-fun b!6880490 () Bool)

(declare-fun e!4146403 () Bool)

(declare-fun tp!1892036 () Bool)

(declare-fun tp!1892034 () Bool)

(assert (=> b!6880490 (= e!4146403 (and tp!1892036 tp!1892034))))

(declare-fun b!6880491 () Bool)

(declare-fun tp!1892033 () Bool)

(assert (=> b!6880491 (= e!4146403 tp!1892033)))

(declare-fun b!6880492 () Bool)

(declare-fun tp!1892035 () Bool)

(declare-fun tp!1892037 () Bool)

(assert (=> b!6880492 (= e!4146403 (and tp!1892035 tp!1892037))))

(assert (=> b!6880046 (= tp!1891911 e!4146403)))

(declare-fun b!6880489 () Bool)

(assert (=> b!6880489 (= e!4146403 tp_is_empty!42741)))

(assert (= (and b!6880046 (is-ElementMatch!16758 (regTwo!34029 r2!6280))) b!6880489))

(assert (= (and b!6880046 (is-Concat!25603 (regTwo!34029 r2!6280))) b!6880490))

(assert (= (and b!6880046 (is-Star!16758 (regTwo!34029 r2!6280))) b!6880491))

(assert (= (and b!6880046 (is-Union!16758 (regTwo!34029 r2!6280))) b!6880492))

(declare-fun b!6880494 () Bool)

(declare-fun e!4146404 () Bool)

(declare-fun tp!1892041 () Bool)

(declare-fun tp!1892039 () Bool)

(assert (=> b!6880494 (= e!4146404 (and tp!1892041 tp!1892039))))

(declare-fun b!6880495 () Bool)

(declare-fun tp!1892038 () Bool)

(assert (=> b!6880495 (= e!4146404 tp!1892038)))

(declare-fun b!6880496 () Bool)

(declare-fun tp!1892040 () Bool)

(declare-fun tp!1892042 () Bool)

(assert (=> b!6880496 (= e!4146404 (and tp!1892040 tp!1892042))))

(assert (=> b!6880052 (= tp!1891906 e!4146404)))

(declare-fun b!6880493 () Bool)

(assert (=> b!6880493 (= e!4146404 tp_is_empty!42741)))

(assert (= (and b!6880052 (is-ElementMatch!16758 (regOne!34028 r3!135))) b!6880493))

(assert (= (and b!6880052 (is-Concat!25603 (regOne!34028 r3!135))) b!6880494))

(assert (= (and b!6880052 (is-Star!16758 (regOne!34028 r3!135))) b!6880495))

(assert (= (and b!6880052 (is-Union!16758 (regOne!34028 r3!135))) b!6880496))

(declare-fun b!6880498 () Bool)

(declare-fun e!4146405 () Bool)

(declare-fun tp!1892046 () Bool)

(declare-fun tp!1892044 () Bool)

(assert (=> b!6880498 (= e!4146405 (and tp!1892046 tp!1892044))))

(declare-fun b!6880499 () Bool)

(declare-fun tp!1892043 () Bool)

(assert (=> b!6880499 (= e!4146405 tp!1892043)))

(declare-fun b!6880500 () Bool)

(declare-fun tp!1892045 () Bool)

(declare-fun tp!1892047 () Bool)

(assert (=> b!6880500 (= e!4146405 (and tp!1892045 tp!1892047))))

(assert (=> b!6880052 (= tp!1891909 e!4146405)))

(declare-fun b!6880497 () Bool)

(assert (=> b!6880497 (= e!4146405 tp_is_empty!42741)))

(assert (= (and b!6880052 (is-ElementMatch!16758 (regTwo!34028 r3!135))) b!6880497))

(assert (= (and b!6880052 (is-Concat!25603 (regTwo!34028 r3!135))) b!6880498))

(assert (= (and b!6880052 (is-Star!16758 (regTwo!34028 r3!135))) b!6880499))

(assert (= (and b!6880052 (is-Union!16758 (regTwo!34028 r3!135))) b!6880500))

(push 1)

(assert (not bm!626402))

(assert (not b!6880498))

(assert (not b!6880474))

(assert (not b!6880452))

(assert (not b!6880483))

(assert (not bm!626397))

(assert (not b!6880262))

(assert (not bm!626393))

(assert (not b!6880442))

(assert (not b!6880480))

(assert (not b!6880159))

(assert (not b!6880466))

(assert (not bm!626383))

(assert (not b!6880248))

(assert (not b!6880220))

(assert (not b!6880462))

(assert (not b!6880456))

(assert (not b!6880468))

(assert (not b!6880253))

(assert (not b!6880458))

(assert (not b!6880492))

(assert (not b!6880491))

(assert (not b!6880460))

(assert (not b!6880463))

(assert (not b!6880444))

(assert (not b!6880455))

(assert (not b!6880476))

(assert (not b!6880487))

(assert (not b!6880494))

(assert (not d!2159983))

(assert (not d!2159961))

(assert (not b!6880250))

(assert (not b!6880495))

(assert (not b!6880467))

(assert (not b!6880312))

(assert (not d!2159979))

(assert (not b!6880484))

(assert (not b!6880446))

(assert (not b!6880475))

(assert (not d!2159981))

(assert (not b!6880470))

(assert (not b!6880316))

(assert (not b!6880227))

(assert (not b!6880499))

(assert (not b!6880450))

(assert (not b!6880448))

(assert (not b!6880246))

(assert (not bm!626368))

(assert (not d!2159985))

(assert (not b!6880412))

(assert (not b!6880310))

(assert (not bm!626400))

(assert (not bm!626367))

(assert (not b!6880500))

(assert (not b!6880221))

(assert (not b!6880168))

(assert (not b!6880313))

(assert (not b!6880225))

(assert (not b!6880451))

(assert (not bm!626396))

(assert (not b!6880488))

(assert (not bm!626377))

(assert (not b!6880478))

(assert (not b!6880486))

(assert (not b!6880454))

(assert (not b!6880443))

(assert (not d!2159967))

(assert (not b!6880479))

(assert (not bm!626399))

(assert (not b!6880228))

(assert (not bm!626403))

(assert (not d!2159969))

(assert tp_is_empty!42741)

(assert (not d!2159957))

(assert (not b!6880251))

(assert (not b!6880490))

(assert (not b!6880364))

(assert (not b!6880496))

(assert (not b!6880471))

(assert (not b!6880472))

(assert (not b!6880243))

(assert (not bm!626381))

(assert (not b!6880447))

(assert (not b!6880459))

(assert (not b!6880311))

(assert (not d!2159955))

(assert (not b!6880317))

(assert (not b!6880244))

(assert (not d!2159963))

(assert (not b!6880482))

(assert (not b!6880464))

(assert (not bm!626394))

(assert (not b!6880223))

(assert (not b!6880399))

(assert (not b!6880430))

(assert (not bm!626382))

(assert (not b!6880423))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

