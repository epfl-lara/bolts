; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!291726 () Bool)

(assert start!291726)

(declare-fun b!3053084 () Bool)

(declare-fun e!1912529 () Bool)

(declare-fun tp!965967 () Bool)

(assert (=> b!3053084 (= e!1912529 tp!965967)))

(declare-fun b!3053085 () Bool)

(declare-fun tp!965966 () Bool)

(declare-fun tp!965963 () Bool)

(assert (=> b!3053085 (= e!1912529 (and tp!965966 tp!965963))))

(declare-fun b!3053086 () Bool)

(declare-fun e!1912528 () Bool)

(declare-fun e!1912531 () Bool)

(assert (=> b!3053086 (= e!1912528 (not e!1912531))))

(declare-fun res!1254119 () Bool)

(assert (=> b!3053086 (=> res!1254119 e!1912531)))

(declare-fun lt!1048664 () Bool)

(declare-datatypes ((C!19110 0))(
  ( (C!19111 (val!11591 Int)) )
))
(declare-datatypes ((Regex!9462 0))(
  ( (ElementMatch!9462 (c!506096 C!19110)) (Concat!14783 (regOne!19436 Regex!9462) (regTwo!19436 Regex!9462)) (EmptyExpr!9462) (Star!9462 (reg!9791 Regex!9462)) (EmptyLang!9462) (Union!9462 (regOne!19437 Regex!9462) (regTwo!19437 Regex!9462)) )
))
(declare-fun r!17423 () Regex!9462)

(assert (=> b!3053086 (= res!1254119 (or (not lt!1048664) (is-Concat!14783 r!17423) (is-Union!9462 r!17423) (is-Star!9462 r!17423)))))

(declare-datatypes ((List!35327 0))(
  ( (Nil!35203) (Cons!35203 (h!40623 C!19110) (t!234392 List!35327)) )
))
(declare-fun s!11993 () List!35327)

(declare-fun matchRSpec!1599 (Regex!9462 List!35327) Bool)

(assert (=> b!3053086 (= lt!1048664 (matchRSpec!1599 r!17423 s!11993))))

(declare-fun matchR!4344 (Regex!9462 List!35327) Bool)

(assert (=> b!3053086 (= lt!1048664 (matchR!4344 r!17423 s!11993))))

(declare-datatypes ((Unit!49363 0))(
  ( (Unit!49364) )
))
(declare-fun lt!1048663 () Unit!49363)

(declare-fun mainMatchTheorem!1599 (Regex!9462 List!35327) Unit!49363)

(assert (=> b!3053086 (= lt!1048663 (mainMatchTheorem!1599 r!17423 s!11993))))

(declare-fun b!3053087 () Bool)

(declare-fun tp!965964 () Bool)

(declare-fun tp!965962 () Bool)

(assert (=> b!3053087 (= e!1912529 (and tp!965964 tp!965962))))

(declare-fun b!3053088 () Bool)

(declare-fun simplify!417 (Regex!9462) Regex!9462)

(assert (=> b!3053088 (= e!1912531 (matchR!4344 (simplify!417 r!17423) s!11993))))

(declare-fun b!3053089 () Bool)

(declare-fun e!1912530 () Bool)

(declare-fun tp_is_empty!16487 () Bool)

(declare-fun tp!965965 () Bool)

(assert (=> b!3053089 (= e!1912530 (and tp_is_empty!16487 tp!965965))))

(declare-fun b!3053090 () Bool)

(assert (=> b!3053090 (= e!1912529 tp_is_empty!16487)))

(declare-fun res!1254120 () Bool)

(assert (=> start!291726 (=> (not res!1254120) (not e!1912528))))

(declare-fun validRegex!4195 (Regex!9462) Bool)

(assert (=> start!291726 (= res!1254120 (validRegex!4195 r!17423))))

(assert (=> start!291726 e!1912528))

(assert (=> start!291726 e!1912529))

(assert (=> start!291726 e!1912530))

(assert (= (and start!291726 res!1254120) b!3053086))

(assert (= (and b!3053086 (not res!1254119)) b!3053088))

(assert (= (and start!291726 (is-ElementMatch!9462 r!17423)) b!3053090))

(assert (= (and start!291726 (is-Concat!14783 r!17423)) b!3053085))

(assert (= (and start!291726 (is-Star!9462 r!17423)) b!3053084))

(assert (= (and start!291726 (is-Union!9462 r!17423)) b!3053087))

(assert (= (and start!291726 (is-Cons!35203 s!11993)) b!3053089))

(declare-fun m!3378949 () Bool)

(assert (=> b!3053086 m!3378949))

(declare-fun m!3378951 () Bool)

(assert (=> b!3053086 m!3378951))

(declare-fun m!3378953 () Bool)

(assert (=> b!3053086 m!3378953))

(declare-fun m!3378955 () Bool)

(assert (=> b!3053088 m!3378955))

(assert (=> b!3053088 m!3378955))

(declare-fun m!3378957 () Bool)

(assert (=> b!3053088 m!3378957))

(declare-fun m!3378959 () Bool)

(assert (=> start!291726 m!3378959))

(push 1)

(assert (not b!3053089))

(assert (not b!3053087))

(assert (not b!3053086))

(assert tp_is_empty!16487)

(assert (not b!3053085))

(assert (not b!3053088))

(assert (not b!3053084))

(assert (not start!291726))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun b!3053140 () Bool)

(declare-fun res!1254146 () Bool)

(declare-fun e!1912559 () Bool)

(assert (=> b!3053140 (=> res!1254146 e!1912559)))

(assert (=> b!3053140 (= res!1254146 (not (is-ElementMatch!9462 (simplify!417 r!17423))))))

(declare-fun e!1912564 () Bool)

(assert (=> b!3053140 (= e!1912564 e!1912559)))

(declare-fun b!3053141 () Bool)

(declare-fun e!1912563 () Bool)

(assert (=> b!3053141 (= e!1912563 e!1912564)))

(declare-fun c!506105 () Bool)

(assert (=> b!3053141 (= c!506105 (is-EmptyLang!9462 (simplify!417 r!17423)))))

(declare-fun b!3053142 () Bool)

(declare-fun e!1912562 () Bool)

(declare-fun nullable!3108 (Regex!9462) Bool)

(assert (=> b!3053142 (= e!1912562 (nullable!3108 (simplify!417 r!17423)))))

(declare-fun b!3053143 () Bool)

(declare-fun e!1912560 () Bool)

(assert (=> b!3053143 (= e!1912559 e!1912560)))

(declare-fun res!1254143 () Bool)

(assert (=> b!3053143 (=> (not res!1254143) (not e!1912560))))

(declare-fun lt!1048673 () Bool)

(assert (=> b!3053143 (= res!1254143 (not lt!1048673))))

(declare-fun b!3053144 () Bool)

(declare-fun e!1912561 () Bool)

(declare-fun head!6764 (List!35327) C!19110)

(assert (=> b!3053144 (= e!1912561 (= (head!6764 s!11993) (c!506096 (simplify!417 r!17423))))))

(declare-fun bm!210350 () Bool)

(declare-fun call!210355 () Bool)

(declare-fun isEmpty!19518 (List!35327) Bool)

(assert (=> bm!210350 (= call!210355 (isEmpty!19518 s!11993))))

(declare-fun b!3053145 () Bool)

(declare-fun res!1254147 () Bool)

(assert (=> b!3053145 (=> (not res!1254147) (not e!1912561))))

(declare-fun tail!4990 (List!35327) List!35327)

(assert (=> b!3053145 (= res!1254147 (isEmpty!19518 (tail!4990 s!11993)))))

(declare-fun b!3053146 () Bool)

(declare-fun e!1912558 () Bool)

(assert (=> b!3053146 (= e!1912560 e!1912558)))

(declare-fun res!1254150 () Bool)

(assert (=> b!3053146 (=> res!1254150 e!1912558)))

(assert (=> b!3053146 (= res!1254150 call!210355)))

(declare-fun b!3053147 () Bool)

(assert (=> b!3053147 (= e!1912564 (not lt!1048673))))

(declare-fun b!3053148 () Bool)

(declare-fun res!1254149 () Bool)

(assert (=> b!3053148 (=> res!1254149 e!1912559)))

(assert (=> b!3053148 (= res!1254149 e!1912561)))

(declare-fun res!1254145 () Bool)

(assert (=> b!3053148 (=> (not res!1254145) (not e!1912561))))

(assert (=> b!3053148 (= res!1254145 lt!1048673)))

(declare-fun b!3053150 () Bool)

(declare-fun res!1254148 () Bool)

(assert (=> b!3053150 (=> res!1254148 e!1912558)))

(assert (=> b!3053150 (= res!1254148 (not (isEmpty!19518 (tail!4990 s!11993))))))

(declare-fun b!3053151 () Bool)

(declare-fun derivativeStep!2705 (Regex!9462 C!19110) Regex!9462)

(assert (=> b!3053151 (= e!1912562 (matchR!4344 (derivativeStep!2705 (simplify!417 r!17423) (head!6764 s!11993)) (tail!4990 s!11993)))))

(declare-fun b!3053152 () Bool)

(declare-fun res!1254144 () Bool)

(assert (=> b!3053152 (=> (not res!1254144) (not e!1912561))))

(assert (=> b!3053152 (= res!1254144 (not call!210355))))

(declare-fun b!3053153 () Bool)

(assert (=> b!3053153 (= e!1912563 (= lt!1048673 call!210355))))

(declare-fun b!3053149 () Bool)

(assert (=> b!3053149 (= e!1912558 (not (= (head!6764 s!11993) (c!506096 (simplify!417 r!17423)))))))

(declare-fun d!854651 () Bool)

(assert (=> d!854651 e!1912563))

(declare-fun c!506106 () Bool)

(assert (=> d!854651 (= c!506106 (is-EmptyExpr!9462 (simplify!417 r!17423)))))

(assert (=> d!854651 (= lt!1048673 e!1912562)))

(declare-fun c!506104 () Bool)

(assert (=> d!854651 (= c!506104 (isEmpty!19518 s!11993))))

(assert (=> d!854651 (validRegex!4195 (simplify!417 r!17423))))

(assert (=> d!854651 (= (matchR!4344 (simplify!417 r!17423) s!11993) lt!1048673)))

(assert (= (and d!854651 c!506104) b!3053142))

(assert (= (and d!854651 (not c!506104)) b!3053151))

(assert (= (and d!854651 c!506106) b!3053153))

(assert (= (and d!854651 (not c!506106)) b!3053141))

(assert (= (and b!3053141 c!506105) b!3053147))

(assert (= (and b!3053141 (not c!506105)) b!3053140))

(assert (= (and b!3053140 (not res!1254146)) b!3053148))

(assert (= (and b!3053148 res!1254145) b!3053152))

(assert (= (and b!3053152 res!1254144) b!3053145))

(assert (= (and b!3053145 res!1254147) b!3053144))

(assert (= (and b!3053148 (not res!1254149)) b!3053143))

(assert (= (and b!3053143 res!1254143) b!3053146))

(assert (= (and b!3053146 (not res!1254150)) b!3053150))

(assert (= (and b!3053150 (not res!1254148)) b!3053149))

(assert (= (or b!3053153 b!3053152 b!3053146) bm!210350))

(declare-fun m!3378973 () Bool)

(assert (=> b!3053151 m!3378973))

(assert (=> b!3053151 m!3378955))

(assert (=> b!3053151 m!3378973))

(declare-fun m!3378975 () Bool)

(assert (=> b!3053151 m!3378975))

(declare-fun m!3378977 () Bool)

(assert (=> b!3053151 m!3378977))

(assert (=> b!3053151 m!3378975))

(assert (=> b!3053151 m!3378977))

(declare-fun m!3378979 () Bool)

(assert (=> b!3053151 m!3378979))

(assert (=> b!3053142 m!3378955))

(declare-fun m!3378981 () Bool)

(assert (=> b!3053142 m!3378981))

(assert (=> b!3053149 m!3378973))

(assert (=> b!3053145 m!3378977))

(assert (=> b!3053145 m!3378977))

(declare-fun m!3378983 () Bool)

(assert (=> b!3053145 m!3378983))

(assert (=> b!3053150 m!3378977))

(assert (=> b!3053150 m!3378977))

(assert (=> b!3053150 m!3378983))

(declare-fun m!3378985 () Bool)

(assert (=> bm!210350 m!3378985))

(assert (=> d!854651 m!3378985))

(assert (=> d!854651 m!3378955))

(declare-fun m!3378987 () Bool)

(assert (=> d!854651 m!3378987))

(assert (=> b!3053144 m!3378973))

(assert (=> b!3053088 d!854651))

(declare-fun b!3053231 () Bool)

(declare-fun e!1912627 () Regex!9462)

(assert (=> b!3053231 (= e!1912627 r!17423)))

(declare-fun b!3053232 () Bool)

(declare-fun e!1912616 () Regex!9462)

(declare-fun lt!1048687 () Regex!9462)

(assert (=> b!3053232 (= e!1912616 lt!1048687)))

(declare-fun b!3053233 () Bool)

(declare-fun e!1912623 () Regex!9462)

(declare-fun e!1912624 () Regex!9462)

(assert (=> b!3053233 (= e!1912623 e!1912624)))

(declare-fun c!506141 () Bool)

(assert (=> b!3053233 (= c!506141 (is-Star!9462 r!17423))))

(declare-fun b!3053234 () Bool)

(declare-fun e!1912626 () Regex!9462)

(declare-fun lt!1048686 () Regex!9462)

(assert (=> b!3053234 (= e!1912626 (Star!9462 lt!1048686))))

(declare-fun b!3053235 () Bool)

(declare-fun c!506142 () Bool)

(declare-fun lt!1048690 () Regex!9462)

(declare-fun isEmptyExpr!519 (Regex!9462) Bool)

(assert (=> b!3053235 (= c!506142 (isEmptyExpr!519 lt!1048690))))

(declare-fun e!1912619 () Regex!9462)

(declare-fun e!1912614 () Regex!9462)

(assert (=> b!3053235 (= e!1912619 e!1912614)))

(declare-fun call!210383 () Bool)

(declare-fun lt!1048688 () Regex!9462)

(declare-fun c!506145 () Bool)

(declare-fun bm!210374 () Bool)

(declare-fun isEmptyLang!513 (Regex!9462) Bool)

(assert (=> bm!210374 (= call!210383 (isEmptyLang!513 (ite c!506145 lt!1048687 lt!1048688)))))

(declare-fun b!3053236 () Bool)

(declare-fun e!1912625 () Regex!9462)

(assert (=> b!3053236 (= e!1912625 e!1912627)))

(declare-fun c!506137 () Bool)

(assert (=> b!3053236 (= c!506137 (is-ElementMatch!9462 r!17423))))

(declare-fun b!3053237 () Bool)

(declare-fun e!1912618 () Bool)

(declare-fun call!210384 () Bool)

(assert (=> b!3053237 (= e!1912618 call!210384)))

(declare-fun b!3053238 () Bool)

(declare-fun e!1912615 () Regex!9462)

(assert (=> b!3053238 (= e!1912615 lt!1048690)))

(declare-fun b!3053240 () Bool)

(declare-fun e!1912620 () Regex!9462)

(declare-fun lt!1048689 () Regex!9462)

(assert (=> b!3053240 (= e!1912620 lt!1048689)))

(declare-fun b!3053241 () Bool)

(assert (=> b!3053241 (= e!1912614 lt!1048688)))

(declare-fun bm!210375 () Bool)

(declare-fun call!210382 () Regex!9462)

(declare-fun call!210381 () Regex!9462)

(assert (=> bm!210375 (= call!210382 call!210381)))

(declare-fun b!3053242 () Bool)

(assert (=> b!3053242 (= e!1912616 (Union!9462 lt!1048687 lt!1048689))))

(declare-fun b!3053243 () Bool)

(declare-fun e!1912621 () Bool)

(assert (=> b!3053243 (= e!1912621 call!210383)))

(declare-fun b!3053244 () Bool)

(declare-fun e!1912617 () Regex!9462)

(assert (=> b!3053244 (= e!1912617 e!1912620)))

(declare-fun call!210379 () Regex!9462)

(assert (=> b!3053244 (= lt!1048687 call!210379)))

(assert (=> b!3053244 (= lt!1048689 call!210382)))

(declare-fun c!506144 () Bool)

(assert (=> b!3053244 (= c!506144 call!210383)))

(declare-fun bm!210376 () Bool)

(assert (=> bm!210376 (= call!210384 (isEmptyExpr!519 (ite c!506141 lt!1048686 lt!1048688)))))

(declare-fun b!3053245 () Bool)

(assert (=> b!3053245 (= c!506145 (is-Union!9462 r!17423))))

(assert (=> b!3053245 (= e!1912624 e!1912617)))

(declare-fun b!3053246 () Bool)

(declare-fun c!506138 () Bool)

(declare-fun call!210385 () Bool)

(assert (=> b!3053246 (= c!506138 call!210385)))

(assert (=> b!3053246 (= e!1912620 e!1912616)))

(declare-fun bm!210377 () Bool)

(declare-fun call!210380 () Bool)

(assert (=> bm!210377 (= call!210380 (isEmptyLang!513 (ite c!506141 lt!1048686 (ite c!506145 lt!1048689 lt!1048690))))))

(declare-fun bm!210378 () Bool)

(assert (=> bm!210378 (= call!210379 (simplify!417 (ite c!506145 (regOne!19437 r!17423) (regTwo!19436 r!17423))))))

(declare-fun bm!210379 () Bool)

(assert (=> bm!210379 (= call!210385 call!210380)))

(declare-fun bm!210380 () Bool)

(assert (=> bm!210380 (= call!210381 (simplify!417 (ite c!506141 (reg!9791 r!17423) (ite c!506145 (regTwo!19437 r!17423) (regOne!19436 r!17423)))))))

(declare-fun d!854655 () Bool)

(declare-fun e!1912622 () Bool)

(assert (=> d!854655 e!1912622))

(declare-fun res!1254173 () Bool)

(assert (=> d!854655 (=> (not res!1254173) (not e!1912622))))

(declare-fun lt!1048691 () Regex!9462)

(assert (=> d!854655 (= res!1254173 (validRegex!4195 lt!1048691))))

(assert (=> d!854655 (= lt!1048691 e!1912625)))

(declare-fun c!506143 () Bool)

(assert (=> d!854655 (= c!506143 (is-EmptyLang!9462 r!17423))))

(assert (=> d!854655 (validRegex!4195 r!17423)))

(assert (=> d!854655 (= (simplify!417 r!17423) lt!1048691)))

(declare-fun b!3053239 () Bool)

(assert (=> b!3053239 (= e!1912622 (= (nullable!3108 lt!1048691) (nullable!3108 r!17423)))))

(declare-fun b!3053247 () Bool)

(declare-fun c!506139 () Bool)

(assert (=> b!3053247 (= c!506139 (is-EmptyExpr!9462 r!17423))))

(assert (=> b!3053247 (= e!1912627 e!1912623)))

(declare-fun b!3053248 () Bool)

(assert (=> b!3053248 (= e!1912617 e!1912619)))

(assert (=> b!3053248 (= lt!1048690 call!210382)))

(assert (=> b!3053248 (= lt!1048688 call!210379)))

(declare-fun res!1254172 () Bool)

(assert (=> b!3053248 (= res!1254172 call!210385)))

(assert (=> b!3053248 (=> res!1254172 e!1912621)))

(declare-fun c!506135 () Bool)

(assert (=> b!3053248 (= c!506135 e!1912621)))

(declare-fun b!3053249 () Bool)

(declare-fun c!506140 () Bool)

(assert (=> b!3053249 (= c!506140 e!1912618)))

(declare-fun res!1254174 () Bool)

(assert (=> b!3053249 (=> res!1254174 e!1912618)))

(assert (=> b!3053249 (= res!1254174 call!210380)))

(assert (=> b!3053249 (= lt!1048686 call!210381)))

(assert (=> b!3053249 (= e!1912624 e!1912626)))

(declare-fun b!3053250 () Bool)

(assert (=> b!3053250 (= e!1912619 EmptyLang!9462)))

(declare-fun b!3053251 () Bool)

(assert (=> b!3053251 (= e!1912626 EmptyExpr!9462)))

(declare-fun b!3053252 () Bool)

(assert (=> b!3053252 (= e!1912623 EmptyExpr!9462)))

(declare-fun b!3053253 () Bool)

(assert (=> b!3053253 (= e!1912615 (Concat!14783 lt!1048690 lt!1048688))))

(declare-fun b!3053254 () Bool)

(assert (=> b!3053254 (= e!1912614 e!1912615)))

(declare-fun c!506136 () Bool)

(assert (=> b!3053254 (= c!506136 call!210384)))

(declare-fun b!3053255 () Bool)

(assert (=> b!3053255 (= e!1912625 EmptyLang!9462)))

(assert (= (and d!854655 c!506143) b!3053255))

(assert (= (and d!854655 (not c!506143)) b!3053236))

(assert (= (and b!3053236 c!506137) b!3053231))

(assert (= (and b!3053236 (not c!506137)) b!3053247))

(assert (= (and b!3053247 c!506139) b!3053252))

(assert (= (and b!3053247 (not c!506139)) b!3053233))

(assert (= (and b!3053233 c!506141) b!3053249))

(assert (= (and b!3053233 (not c!506141)) b!3053245))

(assert (= (and b!3053249 (not res!1254174)) b!3053237))

(assert (= (and b!3053249 c!506140) b!3053251))

(assert (= (and b!3053249 (not c!506140)) b!3053234))

(assert (= (and b!3053245 c!506145) b!3053244))

(assert (= (and b!3053245 (not c!506145)) b!3053248))

(assert (= (and b!3053244 c!506144) b!3053240))

(assert (= (and b!3053244 (not c!506144)) b!3053246))

(assert (= (and b!3053246 c!506138) b!3053232))

(assert (= (and b!3053246 (not c!506138)) b!3053242))

(assert (= (and b!3053248 (not res!1254172)) b!3053243))

(assert (= (and b!3053248 c!506135) b!3053250))

(assert (= (and b!3053248 (not c!506135)) b!3053235))

(assert (= (and b!3053235 c!506142) b!3053241))

(assert (= (and b!3053235 (not c!506142)) b!3053254))

(assert (= (and b!3053254 c!506136) b!3053238))

(assert (= (and b!3053254 (not c!506136)) b!3053253))

(assert (= (or b!3053244 b!3053248) bm!210378))

(assert (= (or b!3053244 b!3053248) bm!210375))

(assert (= (or b!3053246 b!3053248) bm!210379))

(assert (= (or b!3053244 b!3053243) bm!210374))

(assert (= (or b!3053237 b!3053254) bm!210376))

(assert (= (or b!3053249 bm!210375) bm!210380))

(assert (= (or b!3053249 bm!210379) bm!210377))

(assert (= (and d!854655 res!1254173) b!3053239))

(declare-fun m!3378995 () Bool)

(assert (=> b!3053235 m!3378995))

(declare-fun m!3378997 () Bool)

(assert (=> bm!210377 m!3378997))

(declare-fun m!3378999 () Bool)

(assert (=> bm!210378 m!3378999))

(declare-fun m!3379001 () Bool)

(assert (=> d!854655 m!3379001))

(assert (=> d!854655 m!3378959))

(declare-fun m!3379003 () Bool)

(assert (=> bm!210374 m!3379003))

(declare-fun m!3379005 () Bool)

(assert (=> bm!210380 m!3379005))

(declare-fun m!3379007 () Bool)

(assert (=> b!3053239 m!3379007))

(declare-fun m!3379009 () Bool)

(assert (=> b!3053239 m!3379009))

(declare-fun m!3379011 () Bool)

(assert (=> bm!210376 m!3379011))

(assert (=> b!3053088 d!854655))

(declare-fun b!3053274 () Bool)

(declare-fun e!1912647 () Bool)

(declare-fun e!1912648 () Bool)

(assert (=> b!3053274 (= e!1912647 e!1912648)))

(declare-fun res!1254186 () Bool)

(assert (=> b!3053274 (=> (not res!1254186) (not e!1912648))))

(declare-fun call!210394 () Bool)

(assert (=> b!3053274 (= res!1254186 call!210394)))

(declare-fun d!854659 () Bool)

(declare-fun res!1254188 () Bool)

(declare-fun e!1912642 () Bool)

(assert (=> d!854659 (=> res!1254188 e!1912642)))

(assert (=> d!854659 (= res!1254188 (is-ElementMatch!9462 r!17423))))

(assert (=> d!854659 (= (validRegex!4195 r!17423) e!1912642)))

(declare-fun bm!210387 () Bool)

(declare-fun c!506151 () Bool)

(declare-fun c!506150 () Bool)

(declare-fun call!210392 () Bool)

(assert (=> bm!210387 (= call!210392 (validRegex!4195 (ite c!506151 (reg!9791 r!17423) (ite c!506150 (regTwo!19437 r!17423) (regOne!19436 r!17423)))))))

(declare-fun b!3053275 () Bool)

(declare-fun res!1254187 () Bool)

(declare-fun e!1912644 () Bool)

(assert (=> b!3053275 (=> (not res!1254187) (not e!1912644))))

(declare-fun call!210393 () Bool)

(assert (=> b!3053275 (= res!1254187 call!210393)))

(declare-fun e!1912646 () Bool)

(assert (=> b!3053275 (= e!1912646 e!1912644)))

(declare-fun bm!210388 () Bool)

(assert (=> bm!210388 (= call!210394 call!210392)))

(declare-fun b!3053276 () Bool)

(declare-fun res!1254189 () Bool)

(assert (=> b!3053276 (=> res!1254189 e!1912647)))

(assert (=> b!3053276 (= res!1254189 (not (is-Concat!14783 r!17423)))))

(assert (=> b!3053276 (= e!1912646 e!1912647)))

(declare-fun b!3053277 () Bool)

(declare-fun e!1912645 () Bool)

(assert (=> b!3053277 (= e!1912642 e!1912645)))

(assert (=> b!3053277 (= c!506151 (is-Star!9462 r!17423))))

(declare-fun b!3053278 () Bool)

(declare-fun e!1912643 () Bool)

(assert (=> b!3053278 (= e!1912645 e!1912643)))

(declare-fun res!1254185 () Bool)

(assert (=> b!3053278 (= res!1254185 (not (nullable!3108 (reg!9791 r!17423))))))

(assert (=> b!3053278 (=> (not res!1254185) (not e!1912643))))

(declare-fun b!3053279 () Bool)

(assert (=> b!3053279 (= e!1912644 call!210394)))

(declare-fun b!3053280 () Bool)

(assert (=> b!3053280 (= e!1912643 call!210392)))

(declare-fun b!3053281 () Bool)

(assert (=> b!3053281 (= e!1912648 call!210393)))

(declare-fun b!3053282 () Bool)

(assert (=> b!3053282 (= e!1912645 e!1912646)))

(assert (=> b!3053282 (= c!506150 (is-Union!9462 r!17423))))

(declare-fun bm!210389 () Bool)

(assert (=> bm!210389 (= call!210393 (validRegex!4195 (ite c!506150 (regOne!19437 r!17423) (regTwo!19436 r!17423))))))

(assert (= (and d!854659 (not res!1254188)) b!3053277))

(assert (= (and b!3053277 c!506151) b!3053278))

(assert (= (and b!3053277 (not c!506151)) b!3053282))

(assert (= (and b!3053278 res!1254185) b!3053280))

(assert (= (and b!3053282 c!506150) b!3053275))

(assert (= (and b!3053282 (not c!506150)) b!3053276))

(assert (= (and b!3053275 res!1254187) b!3053279))

(assert (= (and b!3053276 (not res!1254189)) b!3053274))

(assert (= (and b!3053274 res!1254186) b!3053281))

(assert (= (or b!3053275 b!3053281) bm!210389))

(assert (= (or b!3053279 b!3053274) bm!210388))

(assert (= (or b!3053280 bm!210388) bm!210387))

(declare-fun m!3379013 () Bool)

(assert (=> bm!210387 m!3379013))

(declare-fun m!3379015 () Bool)

(assert (=> b!3053278 m!3379015))

(declare-fun m!3379017 () Bool)

(assert (=> bm!210389 m!3379017))

(assert (=> start!291726 d!854659))

(declare-fun b!3053339 () Bool)

(assert (=> b!3053339 true))

(assert (=> b!3053339 true))

(declare-fun bs!532370 () Bool)

(declare-fun b!3053345 () Bool)

(assert (= bs!532370 (and b!3053345 b!3053339)))

(declare-fun lambda!113736 () Int)

(declare-fun lambda!113735 () Int)

(assert (=> bs!532370 (not (= lambda!113736 lambda!113735))))

(assert (=> b!3053345 true))

(assert (=> b!3053345 true))

(declare-fun b!3053337 () Bool)

(declare-fun e!1912684 () Bool)

(assert (=> b!3053337 (= e!1912684 (= s!11993 (Cons!35203 (c!506096 r!17423) Nil!35203)))))

(declare-fun b!3053338 () Bool)

(declare-fun c!506170 () Bool)

(assert (=> b!3053338 (= c!506170 (is-ElementMatch!9462 r!17423))))

(declare-fun e!1912682 () Bool)

(assert (=> b!3053338 (= e!1912682 e!1912684)))

(declare-fun e!1912683 () Bool)

(declare-fun call!210399 () Bool)

(assert (=> b!3053339 (= e!1912683 call!210399)))

(declare-fun d!854661 () Bool)

(declare-fun c!506171 () Bool)

(assert (=> d!854661 (= c!506171 (is-EmptyExpr!9462 r!17423))))

(declare-fun e!1912685 () Bool)

(assert (=> d!854661 (= (matchRSpec!1599 r!17423 s!11993) e!1912685)))

(declare-fun bm!210394 () Bool)

(declare-fun call!210400 () Bool)

(assert (=> bm!210394 (= call!210400 (isEmpty!19518 s!11993))))

(declare-fun b!3053340 () Bool)

(declare-fun e!1912687 () Bool)

(declare-fun e!1912686 () Bool)

(assert (=> b!3053340 (= e!1912687 e!1912686)))

(declare-fun c!506168 () Bool)

(assert (=> b!3053340 (= c!506168 (is-Star!9462 r!17423))))

(declare-fun b!3053341 () Bool)

(declare-fun e!1912681 () Bool)

(assert (=> b!3053341 (= e!1912687 e!1912681)))

(declare-fun res!1254213 () Bool)

(assert (=> b!3053341 (= res!1254213 (matchRSpec!1599 (regOne!19437 r!17423) s!11993))))

(assert (=> b!3053341 (=> res!1254213 e!1912681)))

(declare-fun b!3053342 () Bool)

(assert (=> b!3053342 (= e!1912681 (matchRSpec!1599 (regTwo!19437 r!17423) s!11993))))

(declare-fun b!3053343 () Bool)

(declare-fun res!1254212 () Bool)

(assert (=> b!3053343 (=> res!1254212 e!1912683)))

(assert (=> b!3053343 (= res!1254212 call!210400)))

(assert (=> b!3053343 (= e!1912686 e!1912683)))

(declare-fun bm!210395 () Bool)

(declare-fun Exists!1726 (Int) Bool)

(assert (=> bm!210395 (= call!210399 (Exists!1726 (ite c!506168 lambda!113735 lambda!113736)))))

(declare-fun b!3053344 () Bool)

(assert (=> b!3053344 (= e!1912685 call!210400)))

(assert (=> b!3053345 (= e!1912686 call!210399)))

(declare-fun b!3053346 () Bool)

(declare-fun c!506169 () Bool)

(assert (=> b!3053346 (= c!506169 (is-Union!9462 r!17423))))

(assert (=> b!3053346 (= e!1912684 e!1912687)))

(declare-fun b!3053347 () Bool)

(assert (=> b!3053347 (= e!1912685 e!1912682)))

(declare-fun res!1254214 () Bool)

(assert (=> b!3053347 (= res!1254214 (not (is-EmptyLang!9462 r!17423)))))

(assert (=> b!3053347 (=> (not res!1254214) (not e!1912682))))

(assert (= (and d!854661 c!506171) b!3053344))

(assert (= (and d!854661 (not c!506171)) b!3053347))

(assert (= (and b!3053347 res!1254214) b!3053338))

(assert (= (and b!3053338 c!506170) b!3053337))

(assert (= (and b!3053338 (not c!506170)) b!3053346))

(assert (= (and b!3053346 c!506169) b!3053341))

(assert (= (and b!3053346 (not c!506169)) b!3053340))

(assert (= (and b!3053341 (not res!1254213)) b!3053342))

(assert (= (and b!3053340 c!506168) b!3053343))

(assert (= (and b!3053340 (not c!506168)) b!3053345))

(assert (= (and b!3053343 (not res!1254212)) b!3053339))

(assert (= (or b!3053339 b!3053345) bm!210395))

(assert (= (or b!3053344 b!3053343) bm!210394))

(assert (=> bm!210394 m!3378985))

(declare-fun m!3379019 () Bool)

(assert (=> b!3053341 m!3379019))

(declare-fun m!3379021 () Bool)

(assert (=> b!3053342 m!3379021))

(declare-fun m!3379023 () Bool)

(assert (=> bm!210395 m!3379023))

(assert (=> b!3053086 d!854661))

(declare-fun b!3053352 () Bool)

(declare-fun res!1254218 () Bool)

(declare-fun e!1912689 () Bool)

(assert (=> b!3053352 (=> res!1254218 e!1912689)))

(assert (=> b!3053352 (= res!1254218 (not (is-ElementMatch!9462 r!17423)))))

(declare-fun e!1912694 () Bool)

(assert (=> b!3053352 (= e!1912694 e!1912689)))

(declare-fun b!3053353 () Bool)

(declare-fun e!1912693 () Bool)

(assert (=> b!3053353 (= e!1912693 e!1912694)))

(declare-fun c!506173 () Bool)

(assert (=> b!3053353 (= c!506173 (is-EmptyLang!9462 r!17423))))

(declare-fun b!3053354 () Bool)

(declare-fun e!1912692 () Bool)

(assert (=> b!3053354 (= e!1912692 (nullable!3108 r!17423))))

(declare-fun b!3053355 () Bool)

(declare-fun e!1912690 () Bool)

(assert (=> b!3053355 (= e!1912689 e!1912690)))

(declare-fun res!1254215 () Bool)

(assert (=> b!3053355 (=> (not res!1254215) (not e!1912690))))

(declare-fun lt!1048692 () Bool)

(assert (=> b!3053355 (= res!1254215 (not lt!1048692))))

(declare-fun b!3053356 () Bool)

(declare-fun e!1912691 () Bool)

(assert (=> b!3053356 (= e!1912691 (= (head!6764 s!11993) (c!506096 r!17423)))))

(declare-fun bm!210396 () Bool)

(declare-fun call!210401 () Bool)

(assert (=> bm!210396 (= call!210401 (isEmpty!19518 s!11993))))

(declare-fun b!3053357 () Bool)

(declare-fun res!1254219 () Bool)

(assert (=> b!3053357 (=> (not res!1254219) (not e!1912691))))

(assert (=> b!3053357 (= res!1254219 (isEmpty!19518 (tail!4990 s!11993)))))

(declare-fun b!3053358 () Bool)

(declare-fun e!1912688 () Bool)

(assert (=> b!3053358 (= e!1912690 e!1912688)))

(declare-fun res!1254222 () Bool)

(assert (=> b!3053358 (=> res!1254222 e!1912688)))

(assert (=> b!3053358 (= res!1254222 call!210401)))

(declare-fun b!3053359 () Bool)

(assert (=> b!3053359 (= e!1912694 (not lt!1048692))))

(declare-fun b!3053360 () Bool)

(declare-fun res!1254221 () Bool)

(assert (=> b!3053360 (=> res!1254221 e!1912689)))

(assert (=> b!3053360 (= res!1254221 e!1912691)))

(declare-fun res!1254217 () Bool)

(assert (=> b!3053360 (=> (not res!1254217) (not e!1912691))))

(assert (=> b!3053360 (= res!1254217 lt!1048692)))

(declare-fun b!3053362 () Bool)

(declare-fun res!1254220 () Bool)

(assert (=> b!3053362 (=> res!1254220 e!1912688)))

(assert (=> b!3053362 (= res!1254220 (not (isEmpty!19518 (tail!4990 s!11993))))))

(declare-fun b!3053363 () Bool)

(assert (=> b!3053363 (= e!1912692 (matchR!4344 (derivativeStep!2705 r!17423 (head!6764 s!11993)) (tail!4990 s!11993)))))

(declare-fun b!3053364 () Bool)

(declare-fun res!1254216 () Bool)

(assert (=> b!3053364 (=> (not res!1254216) (not e!1912691))))

(assert (=> b!3053364 (= res!1254216 (not call!210401))))

(declare-fun b!3053365 () Bool)

(assert (=> b!3053365 (= e!1912693 (= lt!1048692 call!210401))))

(declare-fun b!3053361 () Bool)

(assert (=> b!3053361 (= e!1912688 (not (= (head!6764 s!11993) (c!506096 r!17423))))))

(declare-fun d!854663 () Bool)

(assert (=> d!854663 e!1912693))

(declare-fun c!506174 () Bool)

(assert (=> d!854663 (= c!506174 (is-EmptyExpr!9462 r!17423))))

(assert (=> d!854663 (= lt!1048692 e!1912692)))

(declare-fun c!506172 () Bool)

(assert (=> d!854663 (= c!506172 (isEmpty!19518 s!11993))))

(assert (=> d!854663 (validRegex!4195 r!17423)))

(assert (=> d!854663 (= (matchR!4344 r!17423 s!11993) lt!1048692)))

(assert (= (and d!854663 c!506172) b!3053354))

(assert (= (and d!854663 (not c!506172)) b!3053363))

(assert (= (and d!854663 c!506174) b!3053365))

(assert (= (and d!854663 (not c!506174)) b!3053353))

(assert (= (and b!3053353 c!506173) b!3053359))

(assert (= (and b!3053353 (not c!506173)) b!3053352))

(assert (= (and b!3053352 (not res!1254218)) b!3053360))

(assert (= (and b!3053360 res!1254217) b!3053364))

(assert (= (and b!3053364 res!1254216) b!3053357))

(assert (= (and b!3053357 res!1254219) b!3053356))

(assert (= (and b!3053360 (not res!1254221)) b!3053355))

(assert (= (and b!3053355 res!1254215) b!3053358))

(assert (= (and b!3053358 (not res!1254222)) b!3053362))

(assert (= (and b!3053362 (not res!1254220)) b!3053361))

(assert (= (or b!3053365 b!3053364 b!3053358) bm!210396))

(assert (=> b!3053363 m!3378973))

(assert (=> b!3053363 m!3378973))

(declare-fun m!3379025 () Bool)

(assert (=> b!3053363 m!3379025))

(assert (=> b!3053363 m!3378977))

(assert (=> b!3053363 m!3379025))

(assert (=> b!3053363 m!3378977))

(declare-fun m!3379027 () Bool)

(assert (=> b!3053363 m!3379027))

(assert (=> b!3053354 m!3379009))

(assert (=> b!3053361 m!3378973))

(assert (=> b!3053357 m!3378977))

(assert (=> b!3053357 m!3378977))

(assert (=> b!3053357 m!3378983))

(assert (=> b!3053362 m!3378977))

(assert (=> b!3053362 m!3378977))

(assert (=> b!3053362 m!3378983))

(assert (=> bm!210396 m!3378985))

(assert (=> d!854663 m!3378985))

(assert (=> d!854663 m!3378959))

(assert (=> b!3053356 m!3378973))

(assert (=> b!3053086 d!854663))

(declare-fun d!854665 () Bool)

(assert (=> d!854665 (= (matchR!4344 r!17423 s!11993) (matchRSpec!1599 r!17423 s!11993))))

(declare-fun lt!1048695 () Unit!49363)

(declare-fun choose!18093 (Regex!9462 List!35327) Unit!49363)

(assert (=> d!854665 (= lt!1048695 (choose!18093 r!17423 s!11993))))

(assert (=> d!854665 (validRegex!4195 r!17423)))

(assert (=> d!854665 (= (mainMatchTheorem!1599 r!17423 s!11993) lt!1048695)))

(declare-fun bs!532371 () Bool)

(assert (= bs!532371 d!854665))

(assert (=> bs!532371 m!3378951))

(assert (=> bs!532371 m!3378949))

(declare-fun m!3379029 () Bool)

(assert (=> bs!532371 m!3379029))

(assert (=> bs!532371 m!3378959))

(assert (=> b!3053086 d!854665))

(declare-fun b!3053370 () Bool)

(declare-fun e!1912697 () Bool)

(declare-fun tp!965988 () Bool)

(assert (=> b!3053370 (= e!1912697 (and tp_is_empty!16487 tp!965988))))

(assert (=> b!3053089 (= tp!965965 e!1912697)))

(assert (= (and b!3053089 (is-Cons!35203 (t!234392 s!11993))) b!3053370))

(declare-fun b!3053382 () Bool)

(declare-fun e!1912700 () Bool)

(declare-fun tp!966003 () Bool)

(declare-fun tp!966002 () Bool)

(assert (=> b!3053382 (= e!1912700 (and tp!966003 tp!966002))))

(declare-fun b!3053384 () Bool)

(declare-fun tp!966001 () Bool)

(declare-fun tp!965999 () Bool)

(assert (=> b!3053384 (= e!1912700 (and tp!966001 tp!965999))))

(declare-fun b!3053381 () Bool)

(assert (=> b!3053381 (= e!1912700 tp_is_empty!16487)))

(declare-fun b!3053383 () Bool)

(declare-fun tp!966000 () Bool)

(assert (=> b!3053383 (= e!1912700 tp!966000)))

(assert (=> b!3053084 (= tp!965967 e!1912700)))

(assert (= (and b!3053084 (is-ElementMatch!9462 (reg!9791 r!17423))) b!3053381))

(assert (= (and b!3053084 (is-Concat!14783 (reg!9791 r!17423))) b!3053382))

(assert (= (and b!3053084 (is-Star!9462 (reg!9791 r!17423))) b!3053383))

(assert (= (and b!3053084 (is-Union!9462 (reg!9791 r!17423))) b!3053384))

(declare-fun b!3053386 () Bool)

(declare-fun e!1912701 () Bool)

(declare-fun tp!966008 () Bool)

(declare-fun tp!966007 () Bool)

(assert (=> b!3053386 (= e!1912701 (and tp!966008 tp!966007))))

(declare-fun b!3053388 () Bool)

(declare-fun tp!966006 () Bool)

(declare-fun tp!966004 () Bool)

(assert (=> b!3053388 (= e!1912701 (and tp!966006 tp!966004))))

(declare-fun b!3053385 () Bool)

(assert (=> b!3053385 (= e!1912701 tp_is_empty!16487)))

(declare-fun b!3053387 () Bool)

(declare-fun tp!966005 () Bool)

(assert (=> b!3053387 (= e!1912701 tp!966005)))

(assert (=> b!3053085 (= tp!965966 e!1912701)))

(assert (= (and b!3053085 (is-ElementMatch!9462 (regOne!19436 r!17423))) b!3053385))

(assert (= (and b!3053085 (is-Concat!14783 (regOne!19436 r!17423))) b!3053386))

(assert (= (and b!3053085 (is-Star!9462 (regOne!19436 r!17423))) b!3053387))

(assert (= (and b!3053085 (is-Union!9462 (regOne!19436 r!17423))) b!3053388))

(declare-fun b!3053390 () Bool)

(declare-fun e!1912702 () Bool)

(declare-fun tp!966013 () Bool)

(declare-fun tp!966012 () Bool)

(assert (=> b!3053390 (= e!1912702 (and tp!966013 tp!966012))))

(declare-fun b!3053392 () Bool)

(declare-fun tp!966011 () Bool)

(declare-fun tp!966009 () Bool)

(assert (=> b!3053392 (= e!1912702 (and tp!966011 tp!966009))))

(declare-fun b!3053389 () Bool)

(assert (=> b!3053389 (= e!1912702 tp_is_empty!16487)))

(declare-fun b!3053391 () Bool)

(declare-fun tp!966010 () Bool)

(assert (=> b!3053391 (= e!1912702 tp!966010)))

(assert (=> b!3053085 (= tp!965963 e!1912702)))

(assert (= (and b!3053085 (is-ElementMatch!9462 (regTwo!19436 r!17423))) b!3053389))

(assert (= (and b!3053085 (is-Concat!14783 (regTwo!19436 r!17423))) b!3053390))

(assert (= (and b!3053085 (is-Star!9462 (regTwo!19436 r!17423))) b!3053391))

(assert (= (and b!3053085 (is-Union!9462 (regTwo!19436 r!17423))) b!3053392))

(declare-fun b!3053394 () Bool)

(declare-fun e!1912703 () Bool)

(declare-fun tp!966018 () Bool)

(declare-fun tp!966017 () Bool)

(assert (=> b!3053394 (= e!1912703 (and tp!966018 tp!966017))))

(declare-fun b!3053396 () Bool)

(declare-fun tp!966016 () Bool)

(declare-fun tp!966014 () Bool)

(assert (=> b!3053396 (= e!1912703 (and tp!966016 tp!966014))))

(declare-fun b!3053393 () Bool)

(assert (=> b!3053393 (= e!1912703 tp_is_empty!16487)))

(declare-fun b!3053395 () Bool)

(declare-fun tp!966015 () Bool)

(assert (=> b!3053395 (= e!1912703 tp!966015)))

(assert (=> b!3053087 (= tp!965964 e!1912703)))

(assert (= (and b!3053087 (is-ElementMatch!9462 (regOne!19437 r!17423))) b!3053393))

(assert (= (and b!3053087 (is-Concat!14783 (regOne!19437 r!17423))) b!3053394))

(assert (= (and b!3053087 (is-Star!9462 (regOne!19437 r!17423))) b!3053395))

(assert (= (and b!3053087 (is-Union!9462 (regOne!19437 r!17423))) b!3053396))

(declare-fun b!3053398 () Bool)

(declare-fun e!1912704 () Bool)

(declare-fun tp!966023 () Bool)

(declare-fun tp!966022 () Bool)

(assert (=> b!3053398 (= e!1912704 (and tp!966023 tp!966022))))

(declare-fun b!3053400 () Bool)

(declare-fun tp!966021 () Bool)

(declare-fun tp!966019 () Bool)

(assert (=> b!3053400 (= e!1912704 (and tp!966021 tp!966019))))

(declare-fun b!3053397 () Bool)

(assert (=> b!3053397 (= e!1912704 tp_is_empty!16487)))

(declare-fun b!3053399 () Bool)

(declare-fun tp!966020 () Bool)

(assert (=> b!3053399 (= e!1912704 tp!966020)))

(assert (=> b!3053087 (= tp!965962 e!1912704)))

(assert (= (and b!3053087 (is-ElementMatch!9462 (regTwo!19437 r!17423))) b!3053397))

(assert (= (and b!3053087 (is-Concat!14783 (regTwo!19437 r!17423))) b!3053398))

(assert (= (and b!3053087 (is-Star!9462 (regTwo!19437 r!17423))) b!3053399))

(assert (= (and b!3053087 (is-Union!9462 (regTwo!19437 r!17423))) b!3053400))

(push 1)

(assert (not bm!210389))

(assert (not bm!210374))

(assert (not b!3053395))

(assert (not bm!210396))

(assert (not d!854663))

(assert (not bm!210395))

(assert (not b!3053363))

(assert (not bm!210394))

(assert (not b!3053384))

(assert (not b!3053398))

(assert (not b!3053342))

(assert (not b!3053362))

(assert (not b!3053142))

(assert (not b!3053278))

(assert (not b!3053145))

(assert (not b!3053354))

(assert (not bm!210350))

(assert (not d!854665))

(assert (not b!3053394))

(assert (not b!3053390))

(assert (not b!3053356))

(assert (not d!854651))

(assert (not bm!210380))

(assert (not b!3053382))

(assert (not b!3053239))

(assert (not b!3053151))

(assert (not b!3053383))

(assert (not b!3053149))

(assert (not b!3053386))

(assert tp_is_empty!16487)

(assert (not b!3053396))

(assert (not b!3053388))

(assert (not b!3053370))

(assert (not bm!210378))

(assert (not b!3053400))

(assert (not b!3053387))

(assert (not b!3053361))

(assert (not b!3053235))

(assert (not b!3053391))

(assert (not bm!210377))

(assert (not d!854655))

(assert (not b!3053144))

(assert (not b!3053150))

(assert (not b!3053399))

(assert (not bm!210387))

(assert (not b!3053341))

(assert (not b!3053392))

(assert (not bm!210376))

(assert (not b!3053357))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

