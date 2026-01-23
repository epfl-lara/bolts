; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!668244 () Bool)

(assert start!668244)

(declare-fun b!6966102 () Bool)

(declare-fun e!4187950 () Bool)

(declare-fun tp!1921249 () Bool)

(declare-fun tp!1921251 () Bool)

(assert (=> b!6966102 (= e!4187950 (and tp!1921249 tp!1921251))))

(declare-fun b!6966103 () Bool)

(declare-fun e!4187949 () Bool)

(declare-fun tp_is_empty!43457 () Bool)

(assert (=> b!6966103 (= e!4187949 tp_is_empty!43457)))

(declare-fun b!6966104 () Bool)

(declare-fun tp!1921252 () Bool)

(assert (=> b!6966104 (= e!4187949 tp!1921252)))

(declare-fun b!6966105 () Bool)

(declare-fun tp!1921250 () Bool)

(declare-fun tp!1921246 () Bool)

(assert (=> b!6966105 (= e!4187949 (and tp!1921250 tp!1921246))))

(declare-fun b!6966106 () Bool)

(declare-fun e!4187951 () Bool)

(declare-fun tp!1921248 () Bool)

(assert (=> b!6966106 (= e!4187951 (and tp_is_empty!43457 tp!1921248))))

(declare-fun b!6966107 () Bool)

(declare-fun e!4187952 () Bool)

(declare-datatypes ((C!34502 0))(
  ( (C!34503 (val!26953 Int)) )
))
(declare-datatypes ((Regex!17116 0))(
  ( (ElementMatch!17116 (c!1291556 C!34502)) (Concat!25961 (regOne!34744 Regex!17116) (regTwo!34744 Regex!17116)) (EmptyExpr!17116) (Star!17116 (reg!17445 Regex!17116)) (EmptyLang!17116) (Union!17116 (regOne!34745 Regex!17116) (regTwo!34745 Regex!17116)) )
))
(declare-datatypes ((List!66913 0))(
  ( (Nil!66789) (Cons!66789 (h!73237 Regex!17116) (t!380656 List!66913)) )
))
(declare-fun l!9142 () List!66913)

(declare-fun isEmpty!38994 (List!66913) Bool)

(assert (=> b!6966107 (= e!4187952 (not (isEmpty!38994 l!9142)))))

(declare-fun b!6966108 () Bool)

(declare-fun e!4187953 () Bool)

(assert (=> b!6966108 (= e!4187953 (not e!4187952))))

(declare-fun res!2842092 () Bool)

(assert (=> b!6966108 (=> res!2842092 e!4187952)))

(declare-fun r!13765 () Regex!17116)

(assert (=> b!6966108 (= res!2842092 (not (is-Union!17116 r!13765)))))

(declare-datatypes ((List!66914 0))(
  ( (Nil!66790) (Cons!66790 (h!73238 C!34502) (t!380657 List!66914)) )
))
(declare-fun s!9351 () List!66914)

(declare-fun matchR!9218 (Regex!17116 List!66914) Bool)

(declare-fun matchRSpec!4133 (Regex!17116 List!66914) Bool)

(assert (=> b!6966108 (= (matchR!9218 r!13765 s!9351) (matchRSpec!4133 r!13765 s!9351))))

(declare-datatypes ((Unit!160884 0))(
  ( (Unit!160885) )
))
(declare-fun lt!2479384 () Unit!160884)

(declare-fun mainMatchTheorem!4127 (Regex!17116 List!66914) Unit!160884)

(assert (=> b!6966108 (= lt!2479384 (mainMatchTheorem!4127 r!13765 s!9351))))

(declare-fun b!6966109 () Bool)

(declare-fun res!2842093 () Bool)

(assert (=> b!6966109 (=> (not res!2842093) (not e!4187953))))

(declare-fun generalisedUnion!2591 (List!66913) Regex!17116)

(assert (=> b!6966109 (= res!2842093 (= r!13765 (generalisedUnion!2591 l!9142)))))

(declare-fun b!6966110 () Bool)

(declare-fun tp!1921247 () Bool)

(declare-fun tp!1921253 () Bool)

(assert (=> b!6966110 (= e!4187949 (and tp!1921247 tp!1921253))))

(declare-fun res!2842091 () Bool)

(assert (=> start!668244 (=> (not res!2842091) (not e!4187953))))

(declare-fun lambda!397497 () Int)

(declare-fun forall!15987 (List!66913 Int) Bool)

(assert (=> start!668244 (= res!2842091 (forall!15987 l!9142 lambda!397497))))

(assert (=> start!668244 e!4187953))

(assert (=> start!668244 e!4187950))

(assert (=> start!668244 e!4187949))

(assert (=> start!668244 e!4187951))

(assert (= (and start!668244 res!2842091) b!6966109))

(assert (= (and b!6966109 res!2842093) b!6966108))

(assert (= (and b!6966108 (not res!2842092)) b!6966107))

(assert (= (and start!668244 (is-Cons!66789 l!9142)) b!6966102))

(assert (= (and start!668244 (is-ElementMatch!17116 r!13765)) b!6966103))

(assert (= (and start!668244 (is-Concat!25961 r!13765)) b!6966110))

(assert (= (and start!668244 (is-Star!17116 r!13765)) b!6966104))

(assert (= (and start!668244 (is-Union!17116 r!13765)) b!6966105))

(assert (= (and start!668244 (is-Cons!66790 s!9351)) b!6966106))

(declare-fun m!7658048 () Bool)

(assert (=> b!6966107 m!7658048))

(declare-fun m!7658050 () Bool)

(assert (=> b!6966108 m!7658050))

(declare-fun m!7658052 () Bool)

(assert (=> b!6966108 m!7658052))

(declare-fun m!7658054 () Bool)

(assert (=> b!6966108 m!7658054))

(declare-fun m!7658056 () Bool)

(assert (=> b!6966109 m!7658056))

(declare-fun m!7658058 () Bool)

(assert (=> start!668244 m!7658058))

(push 1)

(assert (not b!6966104))

(assert (not b!6966108))

(assert (not b!6966106))

(assert (not b!6966109))

(assert tp_is_empty!43457)

(assert (not b!6966102))

(assert (not b!6966107))

(assert (not start!668244))

(assert (not b!6966110))

(assert (not b!6966105))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun b!6966166 () Bool)

(declare-fun res!2842126 () Bool)

(declare-fun e!4187984 () Bool)

(assert (=> b!6966166 (=> (not res!2842126) (not e!4187984))))

(declare-fun isEmpty!38996 (List!66914) Bool)

(declare-fun tail!13075 (List!66914) List!66914)

(assert (=> b!6966166 (= res!2842126 (isEmpty!38996 (tail!13075 s!9351)))))

(declare-fun bm!632371 () Bool)

(declare-fun call!632376 () Bool)

(assert (=> bm!632371 (= call!632376 (isEmpty!38996 s!9351))))

(declare-fun b!6966167 () Bool)

(declare-fun res!2842122 () Bool)

(assert (=> b!6966167 (=> (not res!2842122) (not e!4187984))))

(assert (=> b!6966167 (= res!2842122 (not call!632376))))

(declare-fun b!6966168 () Bool)

(declare-fun res!2842125 () Bool)

(declare-fun e!4187988 () Bool)

(assert (=> b!6966168 (=> res!2842125 e!4187988)))

(assert (=> b!6966168 (= res!2842125 e!4187984)))

(declare-fun res!2842120 () Bool)

(assert (=> b!6966168 (=> (not res!2842120) (not e!4187984))))

(declare-fun lt!2479390 () Bool)

(assert (=> b!6966168 (= res!2842120 lt!2479390)))

(declare-fun d!2170540 () Bool)

(declare-fun e!4187983 () Bool)

(assert (=> d!2170540 e!4187983))

(declare-fun c!1291564 () Bool)

(assert (=> d!2170540 (= c!1291564 (is-EmptyExpr!17116 r!13765))))

(declare-fun e!4187985 () Bool)

(assert (=> d!2170540 (= lt!2479390 e!4187985)))

(declare-fun c!1291566 () Bool)

(assert (=> d!2170540 (= c!1291566 (isEmpty!38996 s!9351))))

(declare-fun validRegex!8800 (Regex!17116) Bool)

(assert (=> d!2170540 (validRegex!8800 r!13765)))

(assert (=> d!2170540 (= (matchR!9218 r!13765 s!9351) lt!2479390)))

(declare-fun b!6966169 () Bool)

(declare-fun res!2842123 () Bool)

(assert (=> b!6966169 (=> res!2842123 e!4187988)))

(assert (=> b!6966169 (= res!2842123 (not (is-ElementMatch!17116 r!13765)))))

(declare-fun e!4187987 () Bool)

(assert (=> b!6966169 (= e!4187987 e!4187988)))

(declare-fun b!6966170 () Bool)

(assert (=> b!6966170 (= e!4187983 e!4187987)))

(declare-fun c!1291565 () Bool)

(assert (=> b!6966170 (= c!1291565 (is-EmptyLang!17116 r!13765))))

(declare-fun b!6966171 () Bool)

(declare-fun e!4187986 () Bool)

(assert (=> b!6966171 (= e!4187988 e!4187986)))

(declare-fun res!2842124 () Bool)

(assert (=> b!6966171 (=> (not res!2842124) (not e!4187986))))

(assert (=> b!6966171 (= res!2842124 (not lt!2479390))))

(declare-fun b!6966172 () Bool)

(assert (=> b!6966172 (= e!4187987 (not lt!2479390))))

(declare-fun b!6966173 () Bool)

(declare-fun e!4187989 () Bool)

(assert (=> b!6966173 (= e!4187986 e!4187989)))

(declare-fun res!2842121 () Bool)

(assert (=> b!6966173 (=> res!2842121 e!4187989)))

(assert (=> b!6966173 (= res!2842121 call!632376)))

(declare-fun b!6966174 () Bool)

(declare-fun head!14008 (List!66914) C!34502)

(assert (=> b!6966174 (= e!4187989 (not (= (head!14008 s!9351) (c!1291556 r!13765))))))

(declare-fun b!6966175 () Bool)

(assert (=> b!6966175 (= e!4187983 (= lt!2479390 call!632376))))

(declare-fun b!6966176 () Bool)

(declare-fun derivativeStep!5529 (Regex!17116 C!34502) Regex!17116)

(assert (=> b!6966176 (= e!4187985 (matchR!9218 (derivativeStep!5529 r!13765 (head!14008 s!9351)) (tail!13075 s!9351)))))

(declare-fun b!6966177 () Bool)

(assert (=> b!6966177 (= e!4187984 (= (head!14008 s!9351) (c!1291556 r!13765)))))

(declare-fun b!6966178 () Bool)

(declare-fun nullable!6904 (Regex!17116) Bool)

(assert (=> b!6966178 (= e!4187985 (nullable!6904 r!13765))))

(declare-fun b!6966179 () Bool)

(declare-fun res!2842119 () Bool)

(assert (=> b!6966179 (=> res!2842119 e!4187989)))

(assert (=> b!6966179 (= res!2842119 (not (isEmpty!38996 (tail!13075 s!9351))))))

(assert (= (and d!2170540 c!1291566) b!6966178))

(assert (= (and d!2170540 (not c!1291566)) b!6966176))

(assert (= (and d!2170540 c!1291564) b!6966175))

(assert (= (and d!2170540 (not c!1291564)) b!6966170))

(assert (= (and b!6966170 c!1291565) b!6966172))

(assert (= (and b!6966170 (not c!1291565)) b!6966169))

(assert (= (and b!6966169 (not res!2842123)) b!6966168))

(assert (= (and b!6966168 res!2842120) b!6966167))

(assert (= (and b!6966167 res!2842122) b!6966166))

(assert (= (and b!6966166 res!2842126) b!6966177))

(assert (= (and b!6966168 (not res!2842125)) b!6966171))

(assert (= (and b!6966171 res!2842124) b!6966173))

(assert (= (and b!6966173 (not res!2842121)) b!6966179))

(assert (= (and b!6966179 (not res!2842119)) b!6966174))

(assert (= (or b!6966175 b!6966167 b!6966173) bm!632371))

(declare-fun m!7658072 () Bool)

(assert (=> b!6966178 m!7658072))

(declare-fun m!7658074 () Bool)

(assert (=> b!6966179 m!7658074))

(assert (=> b!6966179 m!7658074))

(declare-fun m!7658076 () Bool)

(assert (=> b!6966179 m!7658076))

(declare-fun m!7658078 () Bool)

(assert (=> b!6966176 m!7658078))

(assert (=> b!6966176 m!7658078))

(declare-fun m!7658080 () Bool)

(assert (=> b!6966176 m!7658080))

(assert (=> b!6966176 m!7658074))

(assert (=> b!6966176 m!7658080))

(assert (=> b!6966176 m!7658074))

(declare-fun m!7658082 () Bool)

(assert (=> b!6966176 m!7658082))

(assert (=> b!6966174 m!7658078))

(assert (=> b!6966166 m!7658074))

(assert (=> b!6966166 m!7658074))

(assert (=> b!6966166 m!7658076))

(declare-fun m!7658084 () Bool)

(assert (=> bm!632371 m!7658084))

(assert (=> d!2170540 m!7658084))

(declare-fun m!7658086 () Bool)

(assert (=> d!2170540 m!7658086))

(assert (=> b!6966177 m!7658078))

(assert (=> b!6966108 d!2170540))

(declare-fun b!6966244 () Bool)

(assert (=> b!6966244 true))

(assert (=> b!6966244 true))

(declare-fun bs!1858663 () Bool)

(declare-fun b!6966245 () Bool)

(assert (= bs!1858663 (and b!6966245 b!6966244)))

(declare-fun lambda!397509 () Int)

(declare-fun lambda!397508 () Int)

(assert (=> bs!1858663 (not (= lambda!397509 lambda!397508))))

(assert (=> b!6966245 true))

(assert (=> b!6966245 true))

(declare-fun b!6966242 () Bool)

(declare-fun c!1291590 () Bool)

(assert (=> b!6966242 (= c!1291590 (is-Union!17116 r!13765))))

(declare-fun e!4188032 () Bool)

(declare-fun e!4188029 () Bool)

(assert (=> b!6966242 (= e!4188032 e!4188029)))

(declare-fun b!6966243 () Bool)

(declare-fun res!2842151 () Bool)

(declare-fun e!4188030 () Bool)

(assert (=> b!6966243 (=> res!2842151 e!4188030)))

(declare-fun call!632382 () Bool)

(assert (=> b!6966243 (= res!2842151 call!632382)))

(declare-fun e!4188028 () Bool)

(assert (=> b!6966243 (= e!4188028 e!4188030)))

(declare-fun call!632381 () Bool)

(assert (=> b!6966244 (= e!4188030 call!632381)))

(assert (=> b!6966245 (= e!4188028 call!632381)))

(declare-fun c!1291588 () Bool)

(declare-fun bm!632376 () Bool)

(declare-fun Exists!4082 (Int) Bool)

(assert (=> bm!632376 (= call!632381 (Exists!4082 (ite c!1291588 lambda!397508 lambda!397509)))))

(declare-fun bm!632377 () Bool)

(assert (=> bm!632377 (= call!632382 (isEmpty!38996 s!9351))))

(declare-fun d!2170546 () Bool)

(declare-fun c!1291589 () Bool)

(assert (=> d!2170546 (= c!1291589 (is-EmptyExpr!17116 r!13765))))

(declare-fun e!4188026 () Bool)

(assert (=> d!2170546 (= (matchRSpec!4133 r!13765 s!9351) e!4188026)))

(declare-fun b!6966246 () Bool)

(assert (=> b!6966246 (= e!4188032 (= s!9351 (Cons!66790 (c!1291556 r!13765) Nil!66790)))))

(declare-fun b!6966247 () Bool)

(assert (=> b!6966247 (= e!4188026 call!632382)))

(declare-fun b!6966248 () Bool)

(assert (=> b!6966248 (= e!4188029 e!4188028)))

(assert (=> b!6966248 (= c!1291588 (is-Star!17116 r!13765))))

(declare-fun b!6966249 () Bool)

(declare-fun e!4188027 () Bool)

(assert (=> b!6966249 (= e!4188027 (matchRSpec!4133 (regTwo!34745 r!13765) s!9351))))

(declare-fun b!6966250 () Bool)

(declare-fun c!1291587 () Bool)

(assert (=> b!6966250 (= c!1291587 (is-ElementMatch!17116 r!13765))))

(declare-fun e!4188031 () Bool)

(assert (=> b!6966250 (= e!4188031 e!4188032)))

(declare-fun b!6966251 () Bool)

(assert (=> b!6966251 (= e!4188029 e!4188027)))

(declare-fun res!2842149 () Bool)

(assert (=> b!6966251 (= res!2842149 (matchRSpec!4133 (regOne!34745 r!13765) s!9351))))

(assert (=> b!6966251 (=> res!2842149 e!4188027)))

(declare-fun b!6966252 () Bool)

(assert (=> b!6966252 (= e!4188026 e!4188031)))

(declare-fun res!2842150 () Bool)

(assert (=> b!6966252 (= res!2842150 (not (is-EmptyLang!17116 r!13765)))))

(assert (=> b!6966252 (=> (not res!2842150) (not e!4188031))))

(assert (= (and d!2170546 c!1291589) b!6966247))

(assert (= (and d!2170546 (not c!1291589)) b!6966252))

(assert (= (and b!6966252 res!2842150) b!6966250))

(assert (= (and b!6966250 c!1291587) b!6966246))

(assert (= (and b!6966250 (not c!1291587)) b!6966242))

(assert (= (and b!6966242 c!1291590) b!6966251))

(assert (= (and b!6966242 (not c!1291590)) b!6966248))

(assert (= (and b!6966251 (not res!2842149)) b!6966249))

(assert (= (and b!6966248 c!1291588) b!6966243))

(assert (= (and b!6966248 (not c!1291588)) b!6966245))

(assert (= (and b!6966243 (not res!2842151)) b!6966244))

(assert (= (or b!6966244 b!6966245) bm!632376))

(assert (= (or b!6966247 b!6966243) bm!632377))

(declare-fun m!7658102 () Bool)

(assert (=> bm!632376 m!7658102))

(assert (=> bm!632377 m!7658084))

(declare-fun m!7658106 () Bool)

(assert (=> b!6966249 m!7658106))

(declare-fun m!7658110 () Bool)

(assert (=> b!6966251 m!7658110))

(assert (=> b!6966108 d!2170546))

(declare-fun d!2170548 () Bool)

(assert (=> d!2170548 (= (matchR!9218 r!13765 s!9351) (matchRSpec!4133 r!13765 s!9351))))

(declare-fun lt!2479396 () Unit!160884)

(declare-fun choose!51897 (Regex!17116 List!66914) Unit!160884)

(assert (=> d!2170548 (= lt!2479396 (choose!51897 r!13765 s!9351))))

(assert (=> d!2170548 (validRegex!8800 r!13765)))

(assert (=> d!2170548 (= (mainMatchTheorem!4127 r!13765 s!9351) lt!2479396)))

(declare-fun bs!1858664 () Bool)

(assert (= bs!1858664 d!2170548))

(assert (=> bs!1858664 m!7658050))

(assert (=> bs!1858664 m!7658052))

(declare-fun m!7658112 () Bool)

(assert (=> bs!1858664 m!7658112))

(assert (=> bs!1858664 m!7658086))

(assert (=> b!6966108 d!2170548))

(declare-fun bs!1858665 () Bool)

(declare-fun d!2170552 () Bool)

(assert (= bs!1858665 (and d!2170552 start!668244)))

(declare-fun lambda!397512 () Int)

(assert (=> bs!1858665 (= lambda!397512 lambda!397497)))

(declare-fun b!6966283 () Bool)

(declare-fun e!4188053 () Bool)

(declare-fun lt!2479399 () Regex!17116)

(declare-fun head!14009 (List!66913) Regex!17116)

(assert (=> b!6966283 (= e!4188053 (= lt!2479399 (head!14009 l!9142)))))

(declare-fun b!6966284 () Bool)

(declare-fun e!4188052 () Regex!17116)

(declare-fun e!4188051 () Regex!17116)

(assert (=> b!6966284 (= e!4188052 e!4188051)))

(declare-fun c!1291600 () Bool)

(assert (=> b!6966284 (= c!1291600 (is-Cons!66789 l!9142))))

(declare-fun b!6966285 () Bool)

(declare-fun e!4188055 () Bool)

(declare-fun isEmptyLang!2056 (Regex!17116) Bool)

(assert (=> b!6966285 (= e!4188055 (isEmptyLang!2056 lt!2479399))))

(declare-fun b!6966286 () Bool)

(declare-fun isUnion!1484 (Regex!17116) Bool)

(assert (=> b!6966286 (= e!4188053 (isUnion!1484 lt!2479399))))

(declare-fun b!6966287 () Bool)

(declare-fun e!4188056 () Bool)

(assert (=> b!6966287 (= e!4188056 (isEmpty!38994 (t!380656 l!9142)))))

(declare-fun b!6966288 () Bool)

(declare-fun e!4188054 () Bool)

(assert (=> b!6966288 (= e!4188054 e!4188055)))

(declare-fun c!1291601 () Bool)

(assert (=> b!6966288 (= c!1291601 (isEmpty!38994 l!9142))))

(assert (=> d!2170552 e!4188054))

(declare-fun res!2842163 () Bool)

(assert (=> d!2170552 (=> (not res!2842163) (not e!4188054))))

(assert (=> d!2170552 (= res!2842163 (validRegex!8800 lt!2479399))))

(assert (=> d!2170552 (= lt!2479399 e!4188052)))

(declare-fun c!1291599 () Bool)

(assert (=> d!2170552 (= c!1291599 e!4188056)))

(declare-fun res!2842162 () Bool)

(assert (=> d!2170552 (=> (not res!2842162) (not e!4188056))))

(assert (=> d!2170552 (= res!2842162 (is-Cons!66789 l!9142))))

(assert (=> d!2170552 (forall!15987 l!9142 lambda!397512)))

(assert (=> d!2170552 (= (generalisedUnion!2591 l!9142) lt!2479399)))

(declare-fun b!6966289 () Bool)

(assert (=> b!6966289 (= e!4188051 EmptyLang!17116)))

(declare-fun b!6966290 () Bool)

(assert (=> b!6966290 (= e!4188055 e!4188053)))

(declare-fun c!1291602 () Bool)

(declare-fun tail!13076 (List!66913) List!66913)

(assert (=> b!6966290 (= c!1291602 (isEmpty!38994 (tail!13076 l!9142)))))

(declare-fun b!6966291 () Bool)

(assert (=> b!6966291 (= e!4188051 (Union!17116 (h!73237 l!9142) (generalisedUnion!2591 (t!380656 l!9142))))))

(declare-fun b!6966292 () Bool)

(assert (=> b!6966292 (= e!4188052 (h!73237 l!9142))))

(assert (= (and d!2170552 res!2842162) b!6966287))

(assert (= (and d!2170552 c!1291599) b!6966292))

(assert (= (and d!2170552 (not c!1291599)) b!6966284))

(assert (= (and b!6966284 c!1291600) b!6966291))

(assert (= (and b!6966284 (not c!1291600)) b!6966289))

(assert (= (and d!2170552 res!2842163) b!6966288))

(assert (= (and b!6966288 c!1291601) b!6966285))

(assert (= (and b!6966288 (not c!1291601)) b!6966290))

(assert (= (and b!6966290 c!1291602) b!6966283))

(assert (= (and b!6966290 (not c!1291602)) b!6966286))

(declare-fun m!7658118 () Bool)

(assert (=> b!6966283 m!7658118))

(declare-fun m!7658120 () Bool)

(assert (=> b!6966290 m!7658120))

(assert (=> b!6966290 m!7658120))

(declare-fun m!7658122 () Bool)

(assert (=> b!6966290 m!7658122))

(declare-fun m!7658124 () Bool)

(assert (=> b!6966286 m!7658124))

(declare-fun m!7658126 () Bool)

(assert (=> d!2170552 m!7658126))

(declare-fun m!7658128 () Bool)

(assert (=> d!2170552 m!7658128))

(declare-fun m!7658130 () Bool)

(assert (=> b!6966285 m!7658130))

(assert (=> b!6966288 m!7658048))

(declare-fun m!7658132 () Bool)

(assert (=> b!6966291 m!7658132))

(declare-fun m!7658134 () Bool)

(assert (=> b!6966287 m!7658134))

(assert (=> b!6966109 d!2170552))

(declare-fun d!2170556 () Bool)

(assert (=> d!2170556 (= (isEmpty!38994 l!9142) (is-Nil!66789 l!9142))))

(assert (=> b!6966107 d!2170556))

(declare-fun d!2170558 () Bool)

(declare-fun res!2842168 () Bool)

(declare-fun e!4188061 () Bool)

(assert (=> d!2170558 (=> res!2842168 e!4188061)))

(assert (=> d!2170558 (= res!2842168 (is-Nil!66789 l!9142))))

(assert (=> d!2170558 (= (forall!15987 l!9142 lambda!397497) e!4188061)))

(declare-fun b!6966297 () Bool)

(declare-fun e!4188062 () Bool)

(assert (=> b!6966297 (= e!4188061 e!4188062)))

(declare-fun res!2842169 () Bool)

(assert (=> b!6966297 (=> (not res!2842169) (not e!4188062))))

(declare-fun dynLambda!26630 (Int Regex!17116) Bool)

(assert (=> b!6966297 (= res!2842169 (dynLambda!26630 lambda!397497 (h!73237 l!9142)))))

(declare-fun b!6966298 () Bool)

(assert (=> b!6966298 (= e!4188062 (forall!15987 (t!380656 l!9142) lambda!397497))))

(assert (= (and d!2170558 (not res!2842168)) b!6966297))

(assert (= (and b!6966297 res!2842169) b!6966298))

(declare-fun b_lambda!260659 () Bool)

(assert (=> (not b_lambda!260659) (not b!6966297)))

(declare-fun m!7658136 () Bool)

(assert (=> b!6966297 m!7658136))

(declare-fun m!7658138 () Bool)

(assert (=> b!6966298 m!7658138))

(assert (=> start!668244 d!2170558))

(declare-fun b!6966309 () Bool)

(declare-fun e!4188065 () Bool)

(assert (=> b!6966309 (= e!4188065 tp_is_empty!43457)))

(declare-fun b!6966312 () Bool)

(declare-fun tp!1921288 () Bool)

(declare-fun tp!1921290 () Bool)

(assert (=> b!6966312 (= e!4188065 (and tp!1921288 tp!1921290))))

(declare-fun b!6966311 () Bool)

(declare-fun tp!1921292 () Bool)

(assert (=> b!6966311 (= e!4188065 tp!1921292)))

(declare-fun b!6966310 () Bool)

(declare-fun tp!1921289 () Bool)

(declare-fun tp!1921291 () Bool)

(assert (=> b!6966310 (= e!4188065 (and tp!1921289 tp!1921291))))

(assert (=> b!6966104 (= tp!1921252 e!4188065)))

(assert (= (and b!6966104 (is-ElementMatch!17116 (reg!17445 r!13765))) b!6966309))

(assert (= (and b!6966104 (is-Concat!25961 (reg!17445 r!13765))) b!6966310))

(assert (= (and b!6966104 (is-Star!17116 (reg!17445 r!13765))) b!6966311))

(assert (= (and b!6966104 (is-Union!17116 (reg!17445 r!13765))) b!6966312))

(declare-fun b!6966313 () Bool)

(declare-fun e!4188066 () Bool)

(assert (=> b!6966313 (= e!4188066 tp_is_empty!43457)))

(declare-fun b!6966316 () Bool)

(declare-fun tp!1921293 () Bool)

(declare-fun tp!1921295 () Bool)

(assert (=> b!6966316 (= e!4188066 (and tp!1921293 tp!1921295))))

(declare-fun b!6966315 () Bool)

(declare-fun tp!1921297 () Bool)

(assert (=> b!6966315 (= e!4188066 tp!1921297)))

(declare-fun b!6966314 () Bool)

(declare-fun tp!1921294 () Bool)

(declare-fun tp!1921296 () Bool)

(assert (=> b!6966314 (= e!4188066 (and tp!1921294 tp!1921296))))

(assert (=> b!6966105 (= tp!1921250 e!4188066)))

(assert (= (and b!6966105 (is-ElementMatch!17116 (regOne!34745 r!13765))) b!6966313))

(assert (= (and b!6966105 (is-Concat!25961 (regOne!34745 r!13765))) b!6966314))

(assert (= (and b!6966105 (is-Star!17116 (regOne!34745 r!13765))) b!6966315))

(assert (= (and b!6966105 (is-Union!17116 (regOne!34745 r!13765))) b!6966316))

(declare-fun b!6966320 () Bool)

(declare-fun e!4188067 () Bool)

(assert (=> b!6966320 (= e!4188067 tp_is_empty!43457)))

(declare-fun b!6966324 () Bool)

(declare-fun tp!1921298 () Bool)

(declare-fun tp!1921300 () Bool)

(assert (=> b!6966324 (= e!4188067 (and tp!1921298 tp!1921300))))

(declare-fun b!6966323 () Bool)

(declare-fun tp!1921302 () Bool)

(assert (=> b!6966323 (= e!4188067 tp!1921302)))

(declare-fun b!6966322 () Bool)

(declare-fun tp!1921299 () Bool)

(declare-fun tp!1921301 () Bool)

(assert (=> b!6966322 (= e!4188067 (and tp!1921299 tp!1921301))))

(assert (=> b!6966105 (= tp!1921246 e!4188067)))

(assert (= (and b!6966105 (is-ElementMatch!17116 (regTwo!34745 r!13765))) b!6966320))

(assert (= (and b!6966105 (is-Concat!25961 (regTwo!34745 r!13765))) b!6966322))

(assert (= (and b!6966105 (is-Star!17116 (regTwo!34745 r!13765))) b!6966323))

(assert (= (and b!6966105 (is-Union!17116 (regTwo!34745 r!13765))) b!6966324))

(declare-fun b!6966325 () Bool)

(declare-fun e!4188070 () Bool)

(assert (=> b!6966325 (= e!4188070 tp_is_empty!43457)))

(declare-fun b!6966328 () Bool)

(declare-fun tp!1921303 () Bool)

(declare-fun tp!1921305 () Bool)

(assert (=> b!6966328 (= e!4188070 (and tp!1921303 tp!1921305))))

(declare-fun b!6966327 () Bool)

(declare-fun tp!1921307 () Bool)

(assert (=> b!6966327 (= e!4188070 tp!1921307)))

(declare-fun b!6966326 () Bool)

(declare-fun tp!1921304 () Bool)

(declare-fun tp!1921306 () Bool)

(assert (=> b!6966326 (= e!4188070 (and tp!1921304 tp!1921306))))

(assert (=> b!6966110 (= tp!1921247 e!4188070)))

(assert (= (and b!6966110 (is-ElementMatch!17116 (regOne!34744 r!13765))) b!6966325))

(assert (= (and b!6966110 (is-Concat!25961 (regOne!34744 r!13765))) b!6966326))

(assert (= (and b!6966110 (is-Star!17116 (regOne!34744 r!13765))) b!6966327))

(assert (= (and b!6966110 (is-Union!17116 (regOne!34744 r!13765))) b!6966328))

(declare-fun b!6966329 () Bool)

(declare-fun e!4188071 () Bool)

(assert (=> b!6966329 (= e!4188071 tp_is_empty!43457)))

(declare-fun b!6966332 () Bool)

(declare-fun tp!1921308 () Bool)

(declare-fun tp!1921310 () Bool)

(assert (=> b!6966332 (= e!4188071 (and tp!1921308 tp!1921310))))

(declare-fun b!6966331 () Bool)

(declare-fun tp!1921312 () Bool)

(assert (=> b!6966331 (= e!4188071 tp!1921312)))

(declare-fun b!6966330 () Bool)

(declare-fun tp!1921309 () Bool)

(declare-fun tp!1921311 () Bool)

(assert (=> b!6966330 (= e!4188071 (and tp!1921309 tp!1921311))))

(assert (=> b!6966110 (= tp!1921253 e!4188071)))

(assert (= (and b!6966110 (is-ElementMatch!17116 (regTwo!34744 r!13765))) b!6966329))

(assert (= (and b!6966110 (is-Concat!25961 (regTwo!34744 r!13765))) b!6966330))

(assert (= (and b!6966110 (is-Star!17116 (regTwo!34744 r!13765))) b!6966331))

(assert (= (and b!6966110 (is-Union!17116 (regTwo!34744 r!13765))) b!6966332))

(declare-fun b!6966333 () Bool)

(declare-fun e!4188072 () Bool)

(assert (=> b!6966333 (= e!4188072 tp_is_empty!43457)))

(declare-fun b!6966336 () Bool)

(declare-fun tp!1921313 () Bool)

(declare-fun tp!1921315 () Bool)

(assert (=> b!6966336 (= e!4188072 (and tp!1921313 tp!1921315))))

(declare-fun b!6966335 () Bool)

(declare-fun tp!1921317 () Bool)

(assert (=> b!6966335 (= e!4188072 tp!1921317)))

(declare-fun b!6966334 () Bool)

(declare-fun tp!1921314 () Bool)

(declare-fun tp!1921316 () Bool)

(assert (=> b!6966334 (= e!4188072 (and tp!1921314 tp!1921316))))

(assert (=> b!6966102 (= tp!1921249 e!4188072)))

(assert (= (and b!6966102 (is-ElementMatch!17116 (h!73237 l!9142))) b!6966333))

(assert (= (and b!6966102 (is-Concat!25961 (h!73237 l!9142))) b!6966334))

(assert (= (and b!6966102 (is-Star!17116 (h!73237 l!9142))) b!6966335))

(assert (= (and b!6966102 (is-Union!17116 (h!73237 l!9142))) b!6966336))

(declare-fun b!6966345 () Bool)

(declare-fun e!4188077 () Bool)

(declare-fun tp!1921322 () Bool)

(declare-fun tp!1921323 () Bool)

(assert (=> b!6966345 (= e!4188077 (and tp!1921322 tp!1921323))))

(assert (=> b!6966102 (= tp!1921251 e!4188077)))

(assert (= (and b!6966102 (is-Cons!66789 (t!380656 l!9142))) b!6966345))

(declare-fun b!6966356 () Bool)

(declare-fun e!4188084 () Bool)

(declare-fun tp!1921326 () Bool)

(assert (=> b!6966356 (= e!4188084 (and tp_is_empty!43457 tp!1921326))))

(assert (=> b!6966106 (= tp!1921248 e!4188084)))

(assert (= (and b!6966106 (is-Cons!66790 (t!380657 s!9351))) b!6966356))

(declare-fun b_lambda!260661 () Bool)

(assert (= b_lambda!260659 (or start!668244 b_lambda!260661)))

(declare-fun bs!1858666 () Bool)

(declare-fun d!2170560 () Bool)

(assert (= bs!1858666 (and d!2170560 start!668244)))

(assert (=> bs!1858666 (= (dynLambda!26630 lambda!397497 (h!73237 l!9142)) (validRegex!8800 (h!73237 l!9142)))))

(declare-fun m!7658140 () Bool)

(assert (=> bs!1858666 m!7658140))

(assert (=> b!6966297 d!2170560))

(push 1)

(assert (not b!6966335))

(assert (not b!6966288))

(assert (not b!6966322))

(assert (not b!6966285))

(assert (not bm!632377))

(assert (not b!6966312))

(assert (not b!6966286))

(assert (not b!6966310))

(assert (not d!2170552))

(assert (not b!6966314))

(assert (not bm!632371))

(assert (not b!6966283))

(assert (not b!6966327))

(assert (not b!6966356))

(assert (not b!6966330))

(assert tp_is_empty!43457)

(assert (not b!6966178))

(assert (not b!6966316))

(assert (not b!6966251))

(assert (not b!6966336))

(assert (not b!6966328))

(assert (not d!2170540))

(assert (not b!6966332))

(assert (not b!6966177))

(assert (not b!6966174))

(assert (not b!6966166))

(assert (not b!6966323))

(assert (not b!6966315))

(assert (not b!6966179))

(assert (not b!6966331))

(assert (not bs!1858666))

(assert (not b!6966176))

(assert (not b!6966345))

(assert (not b!6966298))

(assert (not b!6966287))

(assert (not b!6966326))

(assert (not d!2170548))

(assert (not b_lambda!260661))

(assert (not bm!632376))

(assert (not b!6966334))

(assert (not b!6966324))

(assert (not b!6966311))

(assert (not b!6966290))

(assert (not b!6966291))

(assert (not b!6966249))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

