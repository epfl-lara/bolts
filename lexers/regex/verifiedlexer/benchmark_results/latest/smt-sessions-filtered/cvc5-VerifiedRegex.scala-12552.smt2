; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!696770 () Bool)

(assert start!696770)

(declare-fun b!7146086 () Bool)

(declare-fun e!4294382 () Bool)

(declare-fun tp_is_empty!46061 () Bool)

(assert (=> b!7146086 (= e!4294382 tp_is_empty!46061)))

(declare-fun e!4294380 () Bool)

(declare-fun e!4294379 () Bool)

(declare-datatypes ((C!36698 0))(
  ( (C!36699 (val!28297 Int)) )
))
(declare-datatypes ((Regex!18212 0))(
  ( (ElementMatch!18212 (c!1332597 C!36698)) (Concat!27057 (regOne!36936 Regex!18212) (regTwo!36936 Regex!18212)) (EmptyExpr!18212) (Star!18212 (reg!18541 Regex!18212)) (EmptyLang!18212) (Union!18212 (regOne!36937 Regex!18212) (regTwo!36937 Regex!18212)) )
))
(declare-datatypes ((List!69502 0))(
  ( (Nil!69378) (Cons!69378 (h!75826 Regex!18212) (t!383519 List!69502)) )
))
(declare-datatypes ((Context!14412 0))(
  ( (Context!14413 (exprs!7706 List!69502)) )
))
(declare-datatypes ((List!69503 0))(
  ( (Nil!69379) (Cons!69379 (h!75827 Context!14412) (t!383520 List!69503)) )
))
(declare-fun zl!333 () List!69503)

(declare-fun tp!1971589 () Bool)

(declare-fun b!7146087 () Bool)

(declare-fun inv!88595 (Context!14412) Bool)

(assert (=> b!7146087 (= e!4294379 (and (inv!88595 (h!75827 zl!333)) e!4294380 tp!1971589))))

(declare-fun b!7146088 () Bool)

(declare-fun res!2915619 () Bool)

(declare-fun e!4294383 () Bool)

(assert (=> b!7146088 (=> (not res!2915619) (not e!4294383))))

(declare-fun r!7278 () Regex!18212)

(declare-fun generalisedConcat!2389 (List!69502) Regex!18212)

(assert (=> b!7146088 (= res!2915619 (= (generalisedConcat!2389 (exprs!7706 (h!75827 zl!333))) r!7278))))

(declare-fun b!7146089 () Bool)

(declare-fun res!2915618 () Bool)

(assert (=> b!7146089 (=> (not res!2915618) (not e!4294383))))

(assert (=> b!7146089 (= res!2915618 (is-Cons!69379 zl!333))))

(declare-fun b!7146090 () Bool)

(declare-fun tp!1971584 () Bool)

(assert (=> b!7146090 (= e!4294382 tp!1971584)))

(declare-fun b!7146091 () Bool)

(declare-fun c!101 () Context!14412)

(declare-fun lambda!435757 () Int)

(declare-fun forall!17048 (List!69502 Int) Bool)

(assert (=> b!7146091 (= e!4294383 (not (forall!17048 (exprs!7706 c!101) lambda!435757)))))

(declare-fun res!2915620 () Bool)

(assert (=> start!696770 (=> (not res!2915620) (not e!4294383))))

(declare-fun contains!20644 (List!69502 Regex!18212) Bool)

(declare-fun unfocusZipperList!2253 (List!69503) List!69502)

(assert (=> start!696770 (= res!2915620 (contains!20644 (unfocusZipperList!2253 zl!333) r!7278))))

(assert (=> start!696770 e!4294383))

(assert (=> start!696770 e!4294379))

(assert (=> start!696770 e!4294382))

(declare-fun e!4294381 () Bool)

(assert (=> start!696770 (and (inv!88595 c!101) e!4294381)))

(declare-fun b!7146092 () Bool)

(declare-fun tp!1971588 () Bool)

(declare-fun tp!1971591 () Bool)

(assert (=> b!7146092 (= e!4294382 (and tp!1971588 tp!1971591))))

(declare-fun b!7146093 () Bool)

(declare-fun tp!1971587 () Bool)

(assert (=> b!7146093 (= e!4294381 tp!1971587)))

(declare-fun b!7146094 () Bool)

(declare-fun tp!1971590 () Bool)

(declare-fun tp!1971585 () Bool)

(assert (=> b!7146094 (= e!4294382 (and tp!1971590 tp!1971585))))

(declare-fun b!7146095 () Bool)

(declare-fun tp!1971586 () Bool)

(assert (=> b!7146095 (= e!4294380 tp!1971586)))

(assert (= (and start!696770 res!2915620) b!7146089))

(assert (= (and b!7146089 res!2915618) b!7146088))

(assert (= (and b!7146088 res!2915619) b!7146091))

(assert (= b!7146087 b!7146095))

(assert (= (and start!696770 (is-Cons!69379 zl!333)) b!7146087))

(assert (= (and start!696770 (is-ElementMatch!18212 r!7278)) b!7146086))

(assert (= (and start!696770 (is-Concat!27057 r!7278)) b!7146094))

(assert (= (and start!696770 (is-Star!18212 r!7278)) b!7146090))

(assert (= (and start!696770 (is-Union!18212 r!7278)) b!7146092))

(assert (= start!696770 b!7146093))

(declare-fun m!7859210 () Bool)

(assert (=> b!7146087 m!7859210))

(declare-fun m!7859212 () Bool)

(assert (=> b!7146088 m!7859212))

(declare-fun m!7859214 () Bool)

(assert (=> b!7146091 m!7859214))

(declare-fun m!7859216 () Bool)

(assert (=> start!696770 m!7859216))

(assert (=> start!696770 m!7859216))

(declare-fun m!7859218 () Bool)

(assert (=> start!696770 m!7859218))

(declare-fun m!7859220 () Bool)

(assert (=> start!696770 m!7859220))

(push 1)

(assert (not start!696770))

(assert (not b!7146087))

(assert (not b!7146092))

(assert tp_is_empty!46061)

(assert (not b!7146095))

(assert (not b!7146090))

(assert (not b!7146088))

(assert (not b!7146091))

(assert (not b!7146094))

(assert (not b!7146093))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!2228105 () Bool)

(declare-fun res!2915634 () Bool)

(declare-fun e!4294403 () Bool)

(assert (=> d!2228105 (=> res!2915634 e!4294403)))

(assert (=> d!2228105 (= res!2915634 (is-Nil!69378 (exprs!7706 c!101)))))

(assert (=> d!2228105 (= (forall!17048 (exprs!7706 c!101) lambda!435757) e!4294403)))

(declare-fun b!7146130 () Bool)

(declare-fun e!4294404 () Bool)

(assert (=> b!7146130 (= e!4294403 e!4294404)))

(declare-fun res!2915635 () Bool)

(assert (=> b!7146130 (=> (not res!2915635) (not e!4294404))))

(declare-fun dynLambda!28257 (Int Regex!18212) Bool)

(assert (=> b!7146130 (= res!2915635 (dynLambda!28257 lambda!435757 (h!75826 (exprs!7706 c!101))))))

(declare-fun b!7146131 () Bool)

(assert (=> b!7146131 (= e!4294404 (forall!17048 (t!383519 (exprs!7706 c!101)) lambda!435757))))

(assert (= (and d!2228105 (not res!2915634)) b!7146130))

(assert (= (and b!7146130 res!2915635) b!7146131))

(declare-fun b_lambda!272749 () Bool)

(assert (=> (not b_lambda!272749) (not b!7146130)))

(declare-fun m!7859234 () Bool)

(assert (=> b!7146130 m!7859234))

(declare-fun m!7859236 () Bool)

(assert (=> b!7146131 m!7859236))

(assert (=> b!7146091 d!2228105))

(declare-fun bs!1889143 () Bool)

(declare-fun d!2228107 () Bool)

(assert (= bs!1889143 (and d!2228107 b!7146091)))

(declare-fun lambda!435763 () Int)

(assert (=> bs!1889143 (= lambda!435763 lambda!435757)))

(declare-fun b!7146152 () Bool)

(declare-fun e!4294420 () Regex!18212)

(assert (=> b!7146152 (= e!4294420 (Concat!27057 (h!75826 (exprs!7706 (h!75827 zl!333))) (generalisedConcat!2389 (t!383519 (exprs!7706 (h!75827 zl!333))))))))

(declare-fun b!7146153 () Bool)

(assert (=> b!7146153 (= e!4294420 EmptyExpr!18212)))

(declare-fun b!7146155 () Bool)

(declare-fun e!4294419 () Bool)

(declare-fun e!4294422 () Bool)

(assert (=> b!7146155 (= e!4294419 e!4294422)))

(declare-fun c!1332607 () Bool)

(declare-fun isEmpty!40087 (List!69502) Bool)

(assert (=> b!7146155 (= c!1332607 (isEmpty!40087 (exprs!7706 (h!75827 zl!333))))))

(declare-fun b!7146156 () Bool)

(declare-fun e!4294421 () Bool)

(declare-fun lt!2568857 () Regex!18212)

(declare-fun head!14528 (List!69502) Regex!18212)

(assert (=> b!7146156 (= e!4294421 (= lt!2568857 (head!14528 (exprs!7706 (h!75827 zl!333)))))))

(declare-fun b!7146157 () Bool)

(declare-fun isConcat!1571 (Regex!18212) Bool)

(assert (=> b!7146157 (= e!4294421 (isConcat!1571 lt!2568857))))

(declare-fun b!7146158 () Bool)

(declare-fun e!4294418 () Regex!18212)

(assert (=> b!7146158 (= e!4294418 (h!75826 (exprs!7706 (h!75827 zl!333))))))

(declare-fun b!7146159 () Bool)

(assert (=> b!7146159 (= e!4294422 e!4294421)))

(declare-fun c!1332609 () Bool)

(declare-fun tail!13998 (List!69502) List!69502)

(assert (=> b!7146159 (= c!1332609 (isEmpty!40087 (tail!13998 (exprs!7706 (h!75827 zl!333)))))))

(declare-fun b!7146154 () Bool)

(declare-fun e!4294417 () Bool)

(assert (=> b!7146154 (= e!4294417 (isEmpty!40087 (t!383519 (exprs!7706 (h!75827 zl!333)))))))

(assert (=> d!2228107 e!4294419))

(declare-fun res!2915640 () Bool)

(assert (=> d!2228107 (=> (not res!2915640) (not e!4294419))))

(declare-fun validRegex!9376 (Regex!18212) Bool)

(assert (=> d!2228107 (= res!2915640 (validRegex!9376 lt!2568857))))

(assert (=> d!2228107 (= lt!2568857 e!4294418)))

(declare-fun c!1332608 () Bool)

(assert (=> d!2228107 (= c!1332608 e!4294417)))

(declare-fun res!2915641 () Bool)

(assert (=> d!2228107 (=> (not res!2915641) (not e!4294417))))

(assert (=> d!2228107 (= res!2915641 (is-Cons!69378 (exprs!7706 (h!75827 zl!333))))))

(assert (=> d!2228107 (forall!17048 (exprs!7706 (h!75827 zl!333)) lambda!435763)))

(assert (=> d!2228107 (= (generalisedConcat!2389 (exprs!7706 (h!75827 zl!333))) lt!2568857)))

(declare-fun b!7146160 () Bool)

(declare-fun isEmptyExpr!2048 (Regex!18212) Bool)

(assert (=> b!7146160 (= e!4294422 (isEmptyExpr!2048 lt!2568857))))

(declare-fun b!7146161 () Bool)

(assert (=> b!7146161 (= e!4294418 e!4294420)))

(declare-fun c!1332610 () Bool)

(assert (=> b!7146161 (= c!1332610 (is-Cons!69378 (exprs!7706 (h!75827 zl!333))))))

(assert (= (and d!2228107 res!2915641) b!7146154))

(assert (= (and d!2228107 c!1332608) b!7146158))

(assert (= (and d!2228107 (not c!1332608)) b!7146161))

(assert (= (and b!7146161 c!1332610) b!7146152))

(assert (= (and b!7146161 (not c!1332610)) b!7146153))

(assert (= (and d!2228107 res!2915640) b!7146155))

(assert (= (and b!7146155 c!1332607) b!7146160))

(assert (= (and b!7146155 (not c!1332607)) b!7146159))

(assert (= (and b!7146159 c!1332609) b!7146156))

(assert (= (and b!7146159 (not c!1332609)) b!7146157))

(declare-fun m!7859238 () Bool)

(assert (=> b!7146159 m!7859238))

(assert (=> b!7146159 m!7859238))

(declare-fun m!7859240 () Bool)

(assert (=> b!7146159 m!7859240))

(declare-fun m!7859242 () Bool)

(assert (=> b!7146160 m!7859242))

(declare-fun m!7859244 () Bool)

(assert (=> d!2228107 m!7859244))

(declare-fun m!7859246 () Bool)

(assert (=> d!2228107 m!7859246))

(declare-fun m!7859248 () Bool)

(assert (=> b!7146156 m!7859248))

(declare-fun m!7859250 () Bool)

(assert (=> b!7146154 m!7859250))

(declare-fun m!7859252 () Bool)

(assert (=> b!7146155 m!7859252))

(declare-fun m!7859254 () Bool)

(assert (=> b!7146157 m!7859254))

(declare-fun m!7859256 () Bool)

(assert (=> b!7146152 m!7859256))

(assert (=> b!7146088 d!2228107))

(declare-fun d!2228111 () Bool)

(declare-fun lt!2568862 () Bool)

(declare-fun content!14234 (List!69502) (Set Regex!18212))

(assert (=> d!2228111 (= lt!2568862 (set.member r!7278 (content!14234 (unfocusZipperList!2253 zl!333))))))

(declare-fun e!4294431 () Bool)

(assert (=> d!2228111 (= lt!2568862 e!4294431)))

(declare-fun res!2915650 () Bool)

(assert (=> d!2228111 (=> (not res!2915650) (not e!4294431))))

(assert (=> d!2228111 (= res!2915650 (is-Cons!69378 (unfocusZipperList!2253 zl!333)))))

(assert (=> d!2228111 (= (contains!20644 (unfocusZipperList!2253 zl!333) r!7278) lt!2568862)))

(declare-fun b!7146170 () Bool)

(declare-fun e!4294432 () Bool)

(assert (=> b!7146170 (= e!4294431 e!4294432)))

(declare-fun res!2915651 () Bool)

(assert (=> b!7146170 (=> res!2915651 e!4294432)))

(assert (=> b!7146170 (= res!2915651 (= (h!75826 (unfocusZipperList!2253 zl!333)) r!7278))))

(declare-fun b!7146171 () Bool)

(assert (=> b!7146171 (= e!4294432 (contains!20644 (t!383519 (unfocusZipperList!2253 zl!333)) r!7278))))

(assert (= (and d!2228111 res!2915650) b!7146170))

(assert (= (and b!7146170 (not res!2915651)) b!7146171))

(assert (=> d!2228111 m!7859216))

(declare-fun m!7859258 () Bool)

(assert (=> d!2228111 m!7859258))

(declare-fun m!7859260 () Bool)

(assert (=> d!2228111 m!7859260))

(declare-fun m!7859262 () Bool)

(assert (=> b!7146171 m!7859262))

(assert (=> start!696770 d!2228111))

(declare-fun bs!1889144 () Bool)

(declare-fun d!2228113 () Bool)

(assert (= bs!1889144 (and d!2228113 b!7146091)))

(declare-fun lambda!435766 () Int)

(assert (=> bs!1889144 (= lambda!435766 lambda!435757)))

(declare-fun bs!1889145 () Bool)

(assert (= bs!1889145 (and d!2228113 d!2228107)))

(assert (=> bs!1889145 (= lambda!435766 lambda!435763)))

(declare-fun lt!2568866 () List!69502)

(assert (=> d!2228113 (forall!17048 lt!2568866 lambda!435766)))

(declare-fun e!4294437 () List!69502)

(assert (=> d!2228113 (= lt!2568866 e!4294437)))

(declare-fun c!1332613 () Bool)

(assert (=> d!2228113 (= c!1332613 (is-Cons!69379 zl!333))))

(assert (=> d!2228113 (= (unfocusZipperList!2253 zl!333) lt!2568866)))

(declare-fun b!7146178 () Bool)

(assert (=> b!7146178 (= e!4294437 (Cons!69378 (generalisedConcat!2389 (exprs!7706 (h!75827 zl!333))) (unfocusZipperList!2253 (t!383520 zl!333))))))

(declare-fun b!7146179 () Bool)

(assert (=> b!7146179 (= e!4294437 Nil!69378)))

(assert (= (and d!2228113 c!1332613) b!7146178))

(assert (= (and d!2228113 (not c!1332613)) b!7146179))

(declare-fun m!7859270 () Bool)

(assert (=> d!2228113 m!7859270))

(assert (=> b!7146178 m!7859212))

(declare-fun m!7859272 () Bool)

(assert (=> b!7146178 m!7859272))

(assert (=> start!696770 d!2228113))

(declare-fun bs!1889146 () Bool)

(declare-fun d!2228117 () Bool)

(assert (= bs!1889146 (and d!2228117 b!7146091)))

(declare-fun lambda!435769 () Int)

(assert (=> bs!1889146 (= lambda!435769 lambda!435757)))

(declare-fun bs!1889147 () Bool)

(assert (= bs!1889147 (and d!2228117 d!2228107)))

(assert (=> bs!1889147 (= lambda!435769 lambda!435763)))

(declare-fun bs!1889148 () Bool)

(assert (= bs!1889148 (and d!2228117 d!2228113)))

(assert (=> bs!1889148 (= lambda!435769 lambda!435766)))

(assert (=> d!2228117 (= (inv!88595 c!101) (forall!17048 (exprs!7706 c!101) lambda!435769))))

(declare-fun bs!1889149 () Bool)

(assert (= bs!1889149 d!2228117))

(declare-fun m!7859274 () Bool)

(assert (=> bs!1889149 m!7859274))

(assert (=> start!696770 d!2228117))

(declare-fun bs!1889150 () Bool)

(declare-fun d!2228119 () Bool)

(assert (= bs!1889150 (and d!2228119 b!7146091)))

(declare-fun lambda!435770 () Int)

(assert (=> bs!1889150 (= lambda!435770 lambda!435757)))

(declare-fun bs!1889151 () Bool)

(assert (= bs!1889151 (and d!2228119 d!2228107)))

(assert (=> bs!1889151 (= lambda!435770 lambda!435763)))

(declare-fun bs!1889152 () Bool)

(assert (= bs!1889152 (and d!2228119 d!2228113)))

(assert (=> bs!1889152 (= lambda!435770 lambda!435766)))

(declare-fun bs!1889153 () Bool)

(assert (= bs!1889153 (and d!2228119 d!2228117)))

(assert (=> bs!1889153 (= lambda!435770 lambda!435769)))

(assert (=> d!2228119 (= (inv!88595 (h!75827 zl!333)) (forall!17048 (exprs!7706 (h!75827 zl!333)) lambda!435770))))

(declare-fun bs!1889154 () Bool)

(assert (= bs!1889154 d!2228119))

(declare-fun m!7859276 () Bool)

(assert (=> bs!1889154 m!7859276))

(assert (=> b!7146087 d!2228119))

(declare-fun e!4294442 () Bool)

(assert (=> b!7146090 (= tp!1971584 e!4294442)))

(declare-fun b!7146197 () Bool)

(declare-fun tp!1971626 () Bool)

(declare-fun tp!1971628 () Bool)

(assert (=> b!7146197 (= e!4294442 (and tp!1971626 tp!1971628))))

(declare-fun b!7146195 () Bool)

(declare-fun tp!1971627 () Bool)

(declare-fun tp!1971629 () Bool)

(assert (=> b!7146195 (= e!4294442 (and tp!1971627 tp!1971629))))

(declare-fun b!7146194 () Bool)

(assert (=> b!7146194 (= e!4294442 tp_is_empty!46061)))

(declare-fun b!7146196 () Bool)

(declare-fun tp!1971630 () Bool)

(assert (=> b!7146196 (= e!4294442 tp!1971630)))

(assert (= (and b!7146090 (is-ElementMatch!18212 (reg!18541 r!7278))) b!7146194))

(assert (= (and b!7146090 (is-Concat!27057 (reg!18541 r!7278))) b!7146195))

(assert (= (and b!7146090 (is-Star!18212 (reg!18541 r!7278))) b!7146196))

(assert (= (and b!7146090 (is-Union!18212 (reg!18541 r!7278))) b!7146197))

(declare-fun b!7146202 () Bool)

(declare-fun e!4294445 () Bool)

(declare-fun tp!1971635 () Bool)

(declare-fun tp!1971636 () Bool)

(assert (=> b!7146202 (= e!4294445 (and tp!1971635 tp!1971636))))

(assert (=> b!7146095 (= tp!1971586 e!4294445)))

(assert (= (and b!7146095 (is-Cons!69378 (exprs!7706 (h!75827 zl!333)))) b!7146202))

(declare-fun e!4294446 () Bool)

(assert (=> b!7146092 (= tp!1971588 e!4294446)))

(declare-fun b!7146206 () Bool)

(declare-fun tp!1971637 () Bool)

(declare-fun tp!1971639 () Bool)

(assert (=> b!7146206 (= e!4294446 (and tp!1971637 tp!1971639))))

(declare-fun b!7146204 () Bool)

(declare-fun tp!1971638 () Bool)

(declare-fun tp!1971640 () Bool)

(assert (=> b!7146204 (= e!4294446 (and tp!1971638 tp!1971640))))

(declare-fun b!7146203 () Bool)

(assert (=> b!7146203 (= e!4294446 tp_is_empty!46061)))

(declare-fun b!7146205 () Bool)

(declare-fun tp!1971641 () Bool)

(assert (=> b!7146205 (= e!4294446 tp!1971641)))

(assert (= (and b!7146092 (is-ElementMatch!18212 (regOne!36937 r!7278))) b!7146203))

(assert (= (and b!7146092 (is-Concat!27057 (regOne!36937 r!7278))) b!7146204))

(assert (= (and b!7146092 (is-Star!18212 (regOne!36937 r!7278))) b!7146205))

(assert (= (and b!7146092 (is-Union!18212 (regOne!36937 r!7278))) b!7146206))

(declare-fun e!4294447 () Bool)

(assert (=> b!7146092 (= tp!1971591 e!4294447)))

(declare-fun b!7146210 () Bool)

(declare-fun tp!1971642 () Bool)

(declare-fun tp!1971644 () Bool)

(assert (=> b!7146210 (= e!4294447 (and tp!1971642 tp!1971644))))

(declare-fun b!7146208 () Bool)

(declare-fun tp!1971643 () Bool)

(declare-fun tp!1971645 () Bool)

(assert (=> b!7146208 (= e!4294447 (and tp!1971643 tp!1971645))))

(declare-fun b!7146207 () Bool)

(assert (=> b!7146207 (= e!4294447 tp_is_empty!46061)))

(declare-fun b!7146209 () Bool)

(declare-fun tp!1971646 () Bool)

(assert (=> b!7146209 (= e!4294447 tp!1971646)))

(assert (= (and b!7146092 (is-ElementMatch!18212 (regTwo!36937 r!7278))) b!7146207))

(assert (= (and b!7146092 (is-Concat!27057 (regTwo!36937 r!7278))) b!7146208))

(assert (= (and b!7146092 (is-Star!18212 (regTwo!36937 r!7278))) b!7146209))

(assert (= (and b!7146092 (is-Union!18212 (regTwo!36937 r!7278))) b!7146210))

(declare-fun b!7146211 () Bool)

(declare-fun e!4294448 () Bool)

(declare-fun tp!1971647 () Bool)

(declare-fun tp!1971648 () Bool)

(assert (=> b!7146211 (= e!4294448 (and tp!1971647 tp!1971648))))

(assert (=> b!7146093 (= tp!1971587 e!4294448)))

(assert (= (and b!7146093 (is-Cons!69378 (exprs!7706 c!101))) b!7146211))

(declare-fun b!7146219 () Bool)

(declare-fun e!4294454 () Bool)

(declare-fun tp!1971653 () Bool)

(assert (=> b!7146219 (= e!4294454 tp!1971653)))

(declare-fun tp!1971654 () Bool)

(declare-fun e!4294453 () Bool)

(declare-fun b!7146218 () Bool)

(assert (=> b!7146218 (= e!4294453 (and (inv!88595 (h!75827 (t!383520 zl!333))) e!4294454 tp!1971654))))

(assert (=> b!7146087 (= tp!1971589 e!4294453)))

(assert (= b!7146218 b!7146219))

(assert (= (and b!7146087 (is-Cons!69379 (t!383520 zl!333))) b!7146218))

(declare-fun m!7859278 () Bool)

(assert (=> b!7146218 m!7859278))

(declare-fun e!4294455 () Bool)

(assert (=> b!7146094 (= tp!1971590 e!4294455)))

(declare-fun b!7146223 () Bool)

(declare-fun tp!1971655 () Bool)

(declare-fun tp!1971657 () Bool)

(assert (=> b!7146223 (= e!4294455 (and tp!1971655 tp!1971657))))

(declare-fun b!7146221 () Bool)

(declare-fun tp!1971656 () Bool)

(declare-fun tp!1971658 () Bool)

(assert (=> b!7146221 (= e!4294455 (and tp!1971656 tp!1971658))))

(declare-fun b!7146220 () Bool)

(assert (=> b!7146220 (= e!4294455 tp_is_empty!46061)))

(declare-fun b!7146222 () Bool)

(declare-fun tp!1971659 () Bool)

(assert (=> b!7146222 (= e!4294455 tp!1971659)))

(assert (= (and b!7146094 (is-ElementMatch!18212 (regOne!36936 r!7278))) b!7146220))

(assert (= (and b!7146094 (is-Concat!27057 (regOne!36936 r!7278))) b!7146221))

(assert (= (and b!7146094 (is-Star!18212 (regOne!36936 r!7278))) b!7146222))

(assert (= (and b!7146094 (is-Union!18212 (regOne!36936 r!7278))) b!7146223))

(declare-fun e!4294456 () Bool)

(assert (=> b!7146094 (= tp!1971585 e!4294456)))

(declare-fun b!7146227 () Bool)

(declare-fun tp!1971660 () Bool)

(declare-fun tp!1971662 () Bool)

(assert (=> b!7146227 (= e!4294456 (and tp!1971660 tp!1971662))))

(declare-fun b!7146225 () Bool)

(declare-fun tp!1971661 () Bool)

(declare-fun tp!1971663 () Bool)

(assert (=> b!7146225 (= e!4294456 (and tp!1971661 tp!1971663))))

(declare-fun b!7146224 () Bool)

(assert (=> b!7146224 (= e!4294456 tp_is_empty!46061)))

(declare-fun b!7146226 () Bool)

(declare-fun tp!1971664 () Bool)

(assert (=> b!7146226 (= e!4294456 tp!1971664)))

(assert (= (and b!7146094 (is-ElementMatch!18212 (regTwo!36936 r!7278))) b!7146224))

(assert (= (and b!7146094 (is-Concat!27057 (regTwo!36936 r!7278))) b!7146225))

(assert (= (and b!7146094 (is-Star!18212 (regTwo!36936 r!7278))) b!7146226))

(assert (= (and b!7146094 (is-Union!18212 (regTwo!36936 r!7278))) b!7146227))

(declare-fun b_lambda!272751 () Bool)

(assert (= b_lambda!272749 (or b!7146091 b_lambda!272751)))

(declare-fun bs!1889155 () Bool)

(declare-fun d!2228121 () Bool)

(assert (= bs!1889155 (and d!2228121 b!7146091)))

(assert (=> bs!1889155 (= (dynLambda!28257 lambda!435757 (h!75826 (exprs!7706 c!101))) (validRegex!9376 (h!75826 (exprs!7706 c!101))))))

(declare-fun m!7859280 () Bool)

(assert (=> bs!1889155 m!7859280))

(assert (=> b!7146130 d!2228121))

(push 1)

(assert (not b_lambda!272751))

(assert (not b!7146196))

(assert (not d!2228117))

(assert (not b!7146178))

(assert (not b!7146171))

(assert (not b!7146154))

(assert (not d!2228107))

(assert (not b!7146221))

(assert (not bs!1889155))

(assert (not b!7146156))

(assert (not b!7146155))

(assert (not b!7146204))

(assert (not b!7146205))

(assert (not b!7146226))

(assert (not b!7146206))

(assert (not b!7146211))

(assert (not b!7146223))

(assert (not b!7146159))

(assert (not b!7146197))

(assert (not b!7146209))

(assert (not b!7146157))

(assert (not b!7146131))

(assert tp_is_empty!46061)

(assert (not b!7146195))

(assert (not b!7146227))

(assert (not b!7146218))

(assert (not d!2228113))

(assert (not b!7146225))

(assert (not b!7146219))

(assert (not b!7146160))

(assert (not d!2228111))

(assert (not d!2228119))

(assert (not b!7146222))

(assert (not b!7146202))

(assert (not b!7146152))

(assert (not b!7146208))

(assert (not b!7146210))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

