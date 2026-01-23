; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!236622 () Bool)

(assert start!236622)

(declare-fun b!2415187 () Bool)

(declare-fun e!1537100 () Bool)

(declare-fun tp!768149 () Bool)

(declare-fun tp!768148 () Bool)

(assert (=> b!2415187 (= e!1537100 (and tp!768149 tp!768148))))

(declare-fun b!2415188 () Bool)

(declare-fun tp!768145 () Bool)

(assert (=> b!2415188 (= e!1537100 tp!768145)))

(declare-fun b!2415189 () Bool)

(declare-fun tp!768146 () Bool)

(declare-fun tp!768151 () Bool)

(assert (=> b!2415189 (= e!1537100 (and tp!768146 tp!768151))))

(declare-fun b!2415190 () Bool)

(declare-fun e!1537102 () Bool)

(declare-fun e!1537097 () Bool)

(assert (=> b!2415190 (= e!1537102 e!1537097)))

(declare-fun res!1025728 () Bool)

(assert (=> b!2415190 (=> res!1025728 e!1537097)))

(declare-datatypes ((C!14354 0))(
  ( (C!14355 (val!8419 Int)) )
))
(declare-datatypes ((Regex!7098 0))(
  ( (ElementMatch!7098 (c!384823 C!14354)) (Concat!11734 (regOne!14708 Regex!7098) (regTwo!14708 Regex!7098)) (EmptyExpr!7098) (Star!7098 (reg!7427 Regex!7098)) (EmptyLang!7098) (Union!7098 (regOne!14709 Regex!7098) (regTwo!14709 Regex!7098)) )
))
(declare-datatypes ((List!28434 0))(
  ( (Nil!28336) (Cons!28336 (h!33737 Regex!7098) (t!208411 List!28434)) )
))
(declare-fun lt!874134 () List!28434)

(declare-fun isEmpty!16341 (List!28434) Bool)

(assert (=> b!2415190 (= res!1025728 (not (isEmpty!16341 lt!874134)))))

(declare-fun l!9164 () List!28434)

(declare-fun tail!3680 (List!28434) List!28434)

(assert (=> b!2415190 (= lt!874134 (tail!3680 l!9164))))

(declare-fun b!2415191 () Bool)

(declare-fun res!1025732 () Bool)

(assert (=> b!2415191 (=> res!1025732 e!1537102)))

(assert (=> b!2415191 (= res!1025732 (isEmpty!16341 l!9164))))

(declare-fun b!2415192 () Bool)

(declare-datatypes ((Unit!41467 0))(
  ( (Unit!41468) )
))
(declare-fun e!1537103 () Unit!41467)

(declare-fun Unit!41469 () Unit!41467)

(assert (=> b!2415192 (= e!1537103 Unit!41469)))

(declare-datatypes ((List!28435 0))(
  ( (Nil!28337) (Cons!28337 (h!33738 C!14354) (t!208412 List!28435)) )
))
(declare-datatypes ((tuple2!27976 0))(
  ( (tuple2!27977 (_1!16529 List!28435) (_2!16529 List!28435)) )
))
(declare-fun lt!874127 () tuple2!27976)

(declare-datatypes ((Option!5599 0))(
  ( (None!5598) (Some!5598 (v!31006 tuple2!27976)) )
))
(declare-fun lt!874131 () Option!5599)

(declare-fun get!8700 (Option!5599) tuple2!27976)

(assert (=> b!2415192 (= lt!874127 (get!8700 lt!874131))))

(declare-fun s!9460 () List!28435)

(declare-fun lt!874132 () Regex!7098)

(declare-fun lt!874128 () Unit!41467)

(declare-fun lemmaFindSeparationIsDefinedThenConcatMatches!47 (Regex!7098 Regex!7098 List!28435 List!28435 List!28435) Unit!41467)

(assert (=> b!2415192 (= lt!874128 (lemmaFindSeparationIsDefinedThenConcatMatches!47 lt!874132 EmptyExpr!7098 (_1!16529 lt!874127) (_2!16529 lt!874127) s!9460))))

(declare-fun res!1025729 () Bool)

(declare-fun matchR!3215 (Regex!7098 List!28435) Bool)

(declare-fun ++!7019 (List!28435 List!28435) List!28435)

(assert (=> b!2415192 (= res!1025729 (matchR!3215 (Concat!11734 lt!874132 EmptyExpr!7098) (++!7019 (_1!16529 lt!874127) (_2!16529 lt!874127))))))

(declare-fun e!1537104 () Bool)

(assert (=> b!2415192 (=> (not res!1025729) (not e!1537104))))

(assert (=> b!2415192 e!1537104))

(declare-fun b!2415193 () Bool)

(assert (=> b!2415193 (= e!1537104 false)))

(declare-fun b!2415195 () Bool)

(declare-fun res!1025727 () Bool)

(declare-fun e!1537098 () Bool)

(assert (=> b!2415195 (=> (not res!1025727) (not e!1537098))))

(declare-fun r!13927 () Regex!7098)

(declare-fun generalisedConcat!199 (List!28434) Regex!7098)

(assert (=> b!2415195 (= res!1025727 (= r!13927 (generalisedConcat!199 l!9164)))))

(declare-fun b!2415196 () Bool)

(assert (=> b!2415196 (= e!1537098 (not e!1537102))))

(declare-fun res!1025725 () Bool)

(assert (=> b!2415196 (=> res!1025725 e!1537102)))

(assert (=> b!2415196 (= res!1025725 (or (is-Concat!11734 r!13927) (is-EmptyExpr!7098 r!13927)))))

(declare-fun matchRSpec!947 (Regex!7098 List!28435) Bool)

(assert (=> b!2415196 (= (matchR!3215 r!13927 s!9460) (matchRSpec!947 r!13927 s!9460))))

(declare-fun lt!874129 () Unit!41467)

(declare-fun mainMatchTheorem!947 (Regex!7098 List!28435) Unit!41467)

(assert (=> b!2415196 (= lt!874129 (mainMatchTheorem!947 r!13927 s!9460))))

(declare-fun b!2415197 () Bool)

(declare-fun Unit!41470 () Unit!41467)

(assert (=> b!2415197 (= e!1537103 Unit!41470)))

(declare-fun b!2415198 () Bool)

(declare-fun tp_is_empty!11609 () Bool)

(assert (=> b!2415198 (= e!1537100 tp_is_empty!11609)))

(declare-fun res!1025730 () Bool)

(assert (=> start!236622 (=> (not res!1025730) (not e!1537098))))

(declare-fun lambda!90950 () Int)

(declare-fun forall!5732 (List!28434 Int) Bool)

(assert (=> start!236622 (= res!1025730 (forall!5732 l!9164 lambda!90950))))

(assert (=> start!236622 e!1537098))

(declare-fun e!1537105 () Bool)

(assert (=> start!236622 e!1537105))

(assert (=> start!236622 e!1537100))

(declare-fun e!1537101 () Bool)

(assert (=> start!236622 e!1537101))

(declare-fun b!2415194 () Bool)

(declare-fun res!1025731 () Bool)

(assert (=> b!2415194 (=> res!1025731 e!1537097)))

(assert (=> b!2415194 (= res!1025731 (not (= (generalisedConcat!199 lt!874134) EmptyExpr!7098)))))

(declare-fun b!2415199 () Bool)

(declare-fun e!1537099 () Bool)

(assert (=> b!2415199 (= e!1537099 (not (= l!9164 Nil!28336)))))

(declare-fun lt!874133 () Bool)

(assert (=> b!2415199 (not lt!874133)))

(declare-fun lt!874130 () Unit!41467)

(assert (=> b!2415199 (= lt!874130 e!1537103)))

(declare-fun c!384822 () Bool)

(assert (=> b!2415199 (= c!384822 lt!874133)))

(declare-fun isDefined!4425 (Option!5599) Bool)

(assert (=> b!2415199 (= lt!874133 (isDefined!4425 lt!874131))))

(declare-fun findConcatSeparation!707 (Regex!7098 Regex!7098 List!28435 List!28435 List!28435) Option!5599)

(assert (=> b!2415199 (= lt!874131 (findConcatSeparation!707 lt!874132 EmptyExpr!7098 Nil!28337 s!9460 s!9460))))

(declare-fun b!2415200 () Bool)

(assert (=> b!2415200 (= e!1537097 e!1537099)))

(declare-fun res!1025726 () Bool)

(assert (=> b!2415200 (=> res!1025726 e!1537099)))

(assert (=> b!2415200 (= res!1025726 (matchR!3215 lt!874132 s!9460))))

(declare-fun head!5408 (List!28434) Regex!7098)

(assert (=> b!2415200 (= lt!874132 (head!5408 l!9164))))

(declare-fun b!2415201 () Bool)

(declare-fun tp!768144 () Bool)

(declare-fun tp!768150 () Bool)

(assert (=> b!2415201 (= e!1537105 (and tp!768144 tp!768150))))

(declare-fun b!2415202 () Bool)

(declare-fun tp!768147 () Bool)

(assert (=> b!2415202 (= e!1537101 (and tp_is_empty!11609 tp!768147))))

(assert (= (and start!236622 res!1025730) b!2415195))

(assert (= (and b!2415195 res!1025727) b!2415196))

(assert (= (and b!2415196 (not res!1025725)) b!2415191))

(assert (= (and b!2415191 (not res!1025732)) b!2415190))

(assert (= (and b!2415190 (not res!1025728)) b!2415194))

(assert (= (and b!2415194 (not res!1025731)) b!2415200))

(assert (= (and b!2415200 (not res!1025726)) b!2415199))

(assert (= (and b!2415199 c!384822) b!2415192))

(assert (= (and b!2415199 (not c!384822)) b!2415197))

(assert (= (and b!2415192 res!1025729) b!2415193))

(assert (= (and start!236622 (is-Cons!28336 l!9164)) b!2415201))

(assert (= (and start!236622 (is-ElementMatch!7098 r!13927)) b!2415198))

(assert (= (and start!236622 (is-Concat!11734 r!13927)) b!2415187))

(assert (= (and start!236622 (is-Star!7098 r!13927)) b!2415188))

(assert (= (and start!236622 (is-Union!7098 r!13927)) b!2415189))

(assert (= (and start!236622 (is-Cons!28337 s!9460)) b!2415202))

(declare-fun m!2804315 () Bool)

(assert (=> b!2415200 m!2804315))

(declare-fun m!2804317 () Bool)

(assert (=> b!2415200 m!2804317))

(declare-fun m!2804319 () Bool)

(assert (=> b!2415196 m!2804319))

(declare-fun m!2804321 () Bool)

(assert (=> b!2415196 m!2804321))

(declare-fun m!2804323 () Bool)

(assert (=> b!2415196 m!2804323))

(declare-fun m!2804325 () Bool)

(assert (=> b!2415192 m!2804325))

(declare-fun m!2804327 () Bool)

(assert (=> b!2415192 m!2804327))

(declare-fun m!2804329 () Bool)

(assert (=> b!2415192 m!2804329))

(assert (=> b!2415192 m!2804329))

(declare-fun m!2804331 () Bool)

(assert (=> b!2415192 m!2804331))

(declare-fun m!2804333 () Bool)

(assert (=> b!2415199 m!2804333))

(declare-fun m!2804335 () Bool)

(assert (=> b!2415199 m!2804335))

(declare-fun m!2804337 () Bool)

(assert (=> b!2415191 m!2804337))

(declare-fun m!2804339 () Bool)

(assert (=> b!2415194 m!2804339))

(declare-fun m!2804341 () Bool)

(assert (=> b!2415190 m!2804341))

(declare-fun m!2804343 () Bool)

(assert (=> b!2415190 m!2804343))

(declare-fun m!2804345 () Bool)

(assert (=> b!2415195 m!2804345))

(declare-fun m!2804347 () Bool)

(assert (=> start!236622 m!2804347))

(push 1)

(assert (not b!2415192))

(assert (not b!2415190))

(assert (not b!2415195))

(assert tp_is_empty!11609)

(assert (not b!2415191))

(assert (not b!2415200))

(assert (not b!2415201))

(assert (not b!2415196))

(assert (not b!2415202))

(assert (not start!236622))

(assert (not b!2415187))

(assert (not b!2415194))

(assert (not b!2415199))

(assert (not b!2415188))

(assert (not b!2415189))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!701086 () Bool)

(assert (=> d!701086 (= (isEmpty!16341 l!9164) (is-Nil!28336 l!9164))))

(assert (=> b!2415191 d!701086))

(declare-fun bm!147468 () Bool)

(declare-fun call!147473 () Bool)

(declare-fun isEmpty!16343 (List!28435) Bool)

(assert (=> bm!147468 (= call!147473 (isEmpty!16343 s!9460))))

(declare-fun b!2415279 () Bool)

(declare-fun e!1537147 () Bool)

(declare-fun lt!874161 () Bool)

(assert (=> b!2415279 (= e!1537147 (= lt!874161 call!147473))))

(declare-fun b!2415280 () Bool)

(declare-fun res!1025773 () Bool)

(declare-fun e!1537153 () Bool)

(assert (=> b!2415280 (=> (not res!1025773) (not e!1537153))))

(assert (=> b!2415280 (= res!1025773 (not call!147473))))

(declare-fun b!2415281 () Bool)

(declare-fun e!1537151 () Bool)

(declare-fun e!1537150 () Bool)

(assert (=> b!2415281 (= e!1537151 e!1537150)))

(declare-fun res!1025776 () Bool)

(assert (=> b!2415281 (=> res!1025776 e!1537150)))

(assert (=> b!2415281 (= res!1025776 call!147473)))

(declare-fun b!2415282 () Bool)

(declare-fun e!1537152 () Bool)

(assert (=> b!2415282 (= e!1537147 e!1537152)))

(declare-fun c!384836 () Bool)

(assert (=> b!2415282 (= c!384836 (is-EmptyLang!7098 r!13927))))

(declare-fun b!2415283 () Bool)

(declare-fun res!1025775 () Bool)

(assert (=> b!2415283 (=> res!1025775 e!1537150)))

(declare-fun tail!3682 (List!28435) List!28435)

(assert (=> b!2415283 (= res!1025775 (not (isEmpty!16343 (tail!3682 s!9460))))))

(declare-fun d!701088 () Bool)

(assert (=> d!701088 e!1537147))

(declare-fun c!384835 () Bool)

(assert (=> d!701088 (= c!384835 (is-EmptyExpr!7098 r!13927))))

(declare-fun e!1537148 () Bool)

(assert (=> d!701088 (= lt!874161 e!1537148)))

(declare-fun c!384834 () Bool)

(assert (=> d!701088 (= c!384834 (isEmpty!16343 s!9460))))

(declare-fun validRegex!2818 (Regex!7098) Bool)

(assert (=> d!701088 (validRegex!2818 r!13927)))

(assert (=> d!701088 (= (matchR!3215 r!13927 s!9460) lt!874161)))

(declare-fun b!2415284 () Bool)

(declare-fun head!5410 (List!28435) C!14354)

(assert (=> b!2415284 (= e!1537150 (not (= (head!5410 s!9460) (c!384823 r!13927))))))

(declare-fun b!2415285 () Bool)

(assert (=> b!2415285 (= e!1537153 (= (head!5410 s!9460) (c!384823 r!13927)))))

(declare-fun b!2415286 () Bool)

(declare-fun derivativeStep!1790 (Regex!7098 C!14354) Regex!7098)

(assert (=> b!2415286 (= e!1537148 (matchR!3215 (derivativeStep!1790 r!13927 (head!5410 s!9460)) (tail!3682 s!9460)))))

(declare-fun b!2415287 () Bool)

(declare-fun res!1025780 () Bool)

(declare-fun e!1537149 () Bool)

(assert (=> b!2415287 (=> res!1025780 e!1537149)))

(assert (=> b!2415287 (= res!1025780 e!1537153)))

(declare-fun res!1025779 () Bool)

(assert (=> b!2415287 (=> (not res!1025779) (not e!1537153))))

(assert (=> b!2415287 (= res!1025779 lt!874161)))

(declare-fun b!2415288 () Bool)

(declare-fun res!1025777 () Bool)

(assert (=> b!2415288 (=> (not res!1025777) (not e!1537153))))

(assert (=> b!2415288 (= res!1025777 (isEmpty!16343 (tail!3682 s!9460)))))

(declare-fun b!2415289 () Bool)

(assert (=> b!2415289 (= e!1537149 e!1537151)))

(declare-fun res!1025774 () Bool)

(assert (=> b!2415289 (=> (not res!1025774) (not e!1537151))))

(assert (=> b!2415289 (= res!1025774 (not lt!874161))))

(declare-fun b!2415290 () Bool)

(declare-fun nullable!2133 (Regex!7098) Bool)

(assert (=> b!2415290 (= e!1537148 (nullable!2133 r!13927))))

(declare-fun b!2415291 () Bool)

(declare-fun res!1025778 () Bool)

(assert (=> b!2415291 (=> res!1025778 e!1537149)))

(assert (=> b!2415291 (= res!1025778 (not (is-ElementMatch!7098 r!13927)))))

(assert (=> b!2415291 (= e!1537152 e!1537149)))

(declare-fun b!2415292 () Bool)

(assert (=> b!2415292 (= e!1537152 (not lt!874161))))

(assert (= (and d!701088 c!384834) b!2415290))

(assert (= (and d!701088 (not c!384834)) b!2415286))

(assert (= (and d!701088 c!384835) b!2415279))

(assert (= (and d!701088 (not c!384835)) b!2415282))

(assert (= (and b!2415282 c!384836) b!2415292))

(assert (= (and b!2415282 (not c!384836)) b!2415291))

(assert (= (and b!2415291 (not res!1025778)) b!2415287))

(assert (= (and b!2415287 res!1025779) b!2415280))

(assert (= (and b!2415280 res!1025773) b!2415288))

(assert (= (and b!2415288 res!1025777) b!2415285))

(assert (= (and b!2415287 (not res!1025780)) b!2415289))

(assert (= (and b!2415289 res!1025774) b!2415281))

(assert (= (and b!2415281 (not res!1025776)) b!2415283))

(assert (= (and b!2415283 (not res!1025775)) b!2415284))

(assert (= (or b!2415279 b!2415280 b!2415281) bm!147468))

(declare-fun m!2804383 () Bool)

(assert (=> bm!147468 m!2804383))

(declare-fun m!2804385 () Bool)

(assert (=> b!2415283 m!2804385))

(assert (=> b!2415283 m!2804385))

(declare-fun m!2804387 () Bool)

(assert (=> b!2415283 m!2804387))

(assert (=> b!2415288 m!2804385))

(assert (=> b!2415288 m!2804385))

(assert (=> b!2415288 m!2804387))

(assert (=> d!701088 m!2804383))

(declare-fun m!2804389 () Bool)

(assert (=> d!701088 m!2804389))

(declare-fun m!2804391 () Bool)

(assert (=> b!2415285 m!2804391))

(assert (=> b!2415286 m!2804391))

(assert (=> b!2415286 m!2804391))

(declare-fun m!2804393 () Bool)

(assert (=> b!2415286 m!2804393))

(assert (=> b!2415286 m!2804385))

(assert (=> b!2415286 m!2804393))

(assert (=> b!2415286 m!2804385))

(declare-fun m!2804395 () Bool)

(assert (=> b!2415286 m!2804395))

(assert (=> b!2415284 m!2804391))

(declare-fun m!2804397 () Bool)

(assert (=> b!2415290 m!2804397))

(assert (=> b!2415196 d!701088))

(declare-fun b!2415334 () Bool)

(assert (=> b!2415334 true))

(assert (=> b!2415334 true))

(declare-fun bs!463548 () Bool)

(declare-fun b!2415326 () Bool)

(assert (= bs!463548 (and b!2415326 b!2415334)))

(declare-fun lambda!90959 () Int)

(declare-fun lambda!90958 () Int)

(assert (=> bs!463548 (not (= lambda!90959 lambda!90958))))

(assert (=> b!2415326 true))

(assert (=> b!2415326 true))

(declare-fun b!2415325 () Bool)

(declare-fun c!384847 () Bool)

(assert (=> b!2415325 (= c!384847 (is-Union!7098 r!13927))))

(declare-fun e!1537175 () Bool)

(declare-fun e!1537173 () Bool)

(assert (=> b!2415325 (= e!1537175 e!1537173)))

(declare-fun e!1537174 () Bool)

(declare-fun call!147479 () Bool)

(assert (=> b!2415326 (= e!1537174 call!147479)))

(declare-fun b!2415327 () Bool)

(declare-fun c!384846 () Bool)

(assert (=> b!2415327 (= c!384846 (is-ElementMatch!7098 r!13927))))

(declare-fun e!1537177 () Bool)

(assert (=> b!2415327 (= e!1537177 e!1537175)))

(declare-fun bm!147473 () Bool)

(declare-fun c!384845 () Bool)

(declare-fun Exists!1140 (Int) Bool)

(assert (=> bm!147473 (= call!147479 (Exists!1140 (ite c!384845 lambda!90958 lambda!90959)))))

(declare-fun b!2415329 () Bool)

(declare-fun e!1537176 () Bool)

(assert (=> b!2415329 (= e!1537173 e!1537176)))

(declare-fun res!1025799 () Bool)

(assert (=> b!2415329 (= res!1025799 (matchRSpec!947 (regOne!14709 r!13927) s!9460))))

(assert (=> b!2415329 (=> res!1025799 e!1537176)))

(declare-fun b!2415330 () Bool)

(assert (=> b!2415330 (= e!1537173 e!1537174)))

(assert (=> b!2415330 (= c!384845 (is-Star!7098 r!13927))))

(declare-fun b!2415331 () Bool)

(assert (=> b!2415331 (= e!1537175 (= s!9460 (Cons!28337 (c!384823 r!13927) Nil!28337)))))

(declare-fun b!2415332 () Bool)

(declare-fun res!1025798 () Bool)

(declare-fun e!1537178 () Bool)

(assert (=> b!2415332 (=> res!1025798 e!1537178)))

(declare-fun call!147478 () Bool)

(assert (=> b!2415332 (= res!1025798 call!147478)))

(assert (=> b!2415332 (= e!1537174 e!1537178)))

(declare-fun b!2415333 () Bool)

(declare-fun e!1537172 () Bool)

(assert (=> b!2415333 (= e!1537172 call!147478)))

(declare-fun bm!147474 () Bool)

(assert (=> bm!147474 (= call!147478 (isEmpty!16343 s!9460))))

(declare-fun b!2415328 () Bool)

(assert (=> b!2415328 (= e!1537176 (matchRSpec!947 (regTwo!14709 r!13927) s!9460))))

(declare-fun d!701094 () Bool)

(declare-fun c!384848 () Bool)

(assert (=> d!701094 (= c!384848 (is-EmptyExpr!7098 r!13927))))

(assert (=> d!701094 (= (matchRSpec!947 r!13927 s!9460) e!1537172)))

(assert (=> b!2415334 (= e!1537178 call!147479)))

(declare-fun b!2415335 () Bool)

(assert (=> b!2415335 (= e!1537172 e!1537177)))

(declare-fun res!1025797 () Bool)

(assert (=> b!2415335 (= res!1025797 (not (is-EmptyLang!7098 r!13927)))))

(assert (=> b!2415335 (=> (not res!1025797) (not e!1537177))))

(assert (= (and d!701094 c!384848) b!2415333))

(assert (= (and d!701094 (not c!384848)) b!2415335))

(assert (= (and b!2415335 res!1025797) b!2415327))

(assert (= (and b!2415327 c!384846) b!2415331))

(assert (= (and b!2415327 (not c!384846)) b!2415325))

(assert (= (and b!2415325 c!384847) b!2415329))

(assert (= (and b!2415325 (not c!384847)) b!2415330))

(assert (= (and b!2415329 (not res!1025799)) b!2415328))

(assert (= (and b!2415330 c!384845) b!2415332))

(assert (= (and b!2415330 (not c!384845)) b!2415326))

(assert (= (and b!2415332 (not res!1025798)) b!2415334))

(assert (= (or b!2415334 b!2415326) bm!147473))

(assert (= (or b!2415333 b!2415332) bm!147474))

(declare-fun m!2804403 () Bool)

(assert (=> bm!147473 m!2804403))

(declare-fun m!2804405 () Bool)

(assert (=> b!2415329 m!2804405))

(assert (=> bm!147474 m!2804383))

(declare-fun m!2804407 () Bool)

(assert (=> b!2415328 m!2804407))

(assert (=> b!2415196 d!701094))

(declare-fun d!701098 () Bool)

(assert (=> d!701098 (= (matchR!3215 r!13927 s!9460) (matchRSpec!947 r!13927 s!9460))))

(declare-fun lt!874167 () Unit!41467)

(declare-fun choose!14281 (Regex!7098 List!28435) Unit!41467)

(assert (=> d!701098 (= lt!874167 (choose!14281 r!13927 s!9460))))

(assert (=> d!701098 (validRegex!2818 r!13927)))

(assert (=> d!701098 (= (mainMatchTheorem!947 r!13927 s!9460) lt!874167)))

(declare-fun bs!463549 () Bool)

(assert (= bs!463549 d!701098))

(assert (=> bs!463549 m!2804319))

(assert (=> bs!463549 m!2804321))

(declare-fun m!2804409 () Bool)

(assert (=> bs!463549 m!2804409))

(assert (=> bs!463549 m!2804389))

(assert (=> b!2415196 d!701098))

(declare-fun d!701100 () Bool)

(assert (=> d!701100 (= (isEmpty!16341 lt!874134) (is-Nil!28336 lt!874134))))

(assert (=> b!2415190 d!701100))

(declare-fun d!701102 () Bool)

(assert (=> d!701102 (= (tail!3680 l!9164) (t!208411 l!9164))))

(assert (=> b!2415190 d!701102))

(declare-fun d!701104 () Bool)

(assert (=> d!701104 (= (get!8700 lt!874131) (v!31006 lt!874131))))

(assert (=> b!2415192 d!701104))

(declare-fun d!701106 () Bool)

(assert (=> d!701106 (matchR!3215 (Concat!11734 lt!874132 EmptyExpr!7098) (++!7019 (_1!16529 lt!874127) (_2!16529 lt!874127)))))

(declare-fun lt!874172 () Unit!41467)

(declare-fun choose!14282 (Regex!7098 Regex!7098 List!28435 List!28435 List!28435) Unit!41467)

(assert (=> d!701106 (= lt!874172 (choose!14282 lt!874132 EmptyExpr!7098 (_1!16529 lt!874127) (_2!16529 lt!874127) s!9460))))

(assert (=> d!701106 (validRegex!2818 lt!874132)))

(assert (=> d!701106 (= (lemmaFindSeparationIsDefinedThenConcatMatches!47 lt!874132 EmptyExpr!7098 (_1!16529 lt!874127) (_2!16529 lt!874127) s!9460) lt!874172)))

(declare-fun bs!463550 () Bool)

(assert (= bs!463550 d!701106))

(assert (=> bs!463550 m!2804329))

(assert (=> bs!463550 m!2804329))

(assert (=> bs!463550 m!2804331))

(declare-fun m!2804411 () Bool)

(assert (=> bs!463550 m!2804411))

(declare-fun m!2804413 () Bool)

(assert (=> bs!463550 m!2804413))

(assert (=> b!2415192 d!701106))

(declare-fun bm!147475 () Bool)

(declare-fun call!147480 () Bool)

(assert (=> bm!147475 (= call!147480 (isEmpty!16343 (++!7019 (_1!16529 lt!874127) (_2!16529 lt!874127))))))

(declare-fun b!2415368 () Bool)

(declare-fun e!1537193 () Bool)

(declare-fun lt!874173 () Bool)

(assert (=> b!2415368 (= e!1537193 (= lt!874173 call!147480))))

(declare-fun b!2415369 () Bool)

(declare-fun res!1025816 () Bool)

(declare-fun e!1537199 () Bool)

(assert (=> b!2415369 (=> (not res!1025816) (not e!1537199))))

(assert (=> b!2415369 (= res!1025816 (not call!147480))))

(declare-fun b!2415370 () Bool)

(declare-fun e!1537197 () Bool)

(declare-fun e!1537196 () Bool)

(assert (=> b!2415370 (= e!1537197 e!1537196)))

(declare-fun res!1025819 () Bool)

(assert (=> b!2415370 (=> res!1025819 e!1537196)))

(assert (=> b!2415370 (= res!1025819 call!147480)))

(declare-fun b!2415371 () Bool)

(declare-fun e!1537198 () Bool)

(assert (=> b!2415371 (= e!1537193 e!1537198)))

(declare-fun c!384857 () Bool)

(assert (=> b!2415371 (= c!384857 (is-EmptyLang!7098 (Concat!11734 lt!874132 EmptyExpr!7098)))))

(declare-fun b!2415372 () Bool)

(declare-fun res!1025818 () Bool)

(assert (=> b!2415372 (=> res!1025818 e!1537196)))

(assert (=> b!2415372 (= res!1025818 (not (isEmpty!16343 (tail!3682 (++!7019 (_1!16529 lt!874127) (_2!16529 lt!874127))))))))

(declare-fun d!701108 () Bool)

(assert (=> d!701108 e!1537193))

(declare-fun c!384856 () Bool)

(assert (=> d!701108 (= c!384856 (is-EmptyExpr!7098 (Concat!11734 lt!874132 EmptyExpr!7098)))))

(declare-fun e!1537194 () Bool)

(assert (=> d!701108 (= lt!874173 e!1537194)))

(declare-fun c!384855 () Bool)

(assert (=> d!701108 (= c!384855 (isEmpty!16343 (++!7019 (_1!16529 lt!874127) (_2!16529 lt!874127))))))

(assert (=> d!701108 (validRegex!2818 (Concat!11734 lt!874132 EmptyExpr!7098))))

(assert (=> d!701108 (= (matchR!3215 (Concat!11734 lt!874132 EmptyExpr!7098) (++!7019 (_1!16529 lt!874127) (_2!16529 lt!874127))) lt!874173)))

(declare-fun b!2415373 () Bool)

(assert (=> b!2415373 (= e!1537196 (not (= (head!5410 (++!7019 (_1!16529 lt!874127) (_2!16529 lt!874127))) (c!384823 (Concat!11734 lt!874132 EmptyExpr!7098)))))))

(declare-fun b!2415374 () Bool)

(assert (=> b!2415374 (= e!1537199 (= (head!5410 (++!7019 (_1!16529 lt!874127) (_2!16529 lt!874127))) (c!384823 (Concat!11734 lt!874132 EmptyExpr!7098))))))

(declare-fun b!2415375 () Bool)

(assert (=> b!2415375 (= e!1537194 (matchR!3215 (derivativeStep!1790 (Concat!11734 lt!874132 EmptyExpr!7098) (head!5410 (++!7019 (_1!16529 lt!874127) (_2!16529 lt!874127)))) (tail!3682 (++!7019 (_1!16529 lt!874127) (_2!16529 lt!874127)))))))

(declare-fun b!2415376 () Bool)

(declare-fun res!1025823 () Bool)

(declare-fun e!1537195 () Bool)

(assert (=> b!2415376 (=> res!1025823 e!1537195)))

(assert (=> b!2415376 (= res!1025823 e!1537199)))

(declare-fun res!1025822 () Bool)

(assert (=> b!2415376 (=> (not res!1025822) (not e!1537199))))

(assert (=> b!2415376 (= res!1025822 lt!874173)))

(declare-fun b!2415377 () Bool)

(declare-fun res!1025820 () Bool)

(assert (=> b!2415377 (=> (not res!1025820) (not e!1537199))))

(assert (=> b!2415377 (= res!1025820 (isEmpty!16343 (tail!3682 (++!7019 (_1!16529 lt!874127) (_2!16529 lt!874127)))))))

(declare-fun b!2415378 () Bool)

(assert (=> b!2415378 (= e!1537195 e!1537197)))

(declare-fun res!1025817 () Bool)

(assert (=> b!2415378 (=> (not res!1025817) (not e!1537197))))

(assert (=> b!2415378 (= res!1025817 (not lt!874173))))

(declare-fun b!2415379 () Bool)

(assert (=> b!2415379 (= e!1537194 (nullable!2133 (Concat!11734 lt!874132 EmptyExpr!7098)))))

(declare-fun b!2415380 () Bool)

(declare-fun res!1025821 () Bool)

(assert (=> b!2415380 (=> res!1025821 e!1537195)))

(assert (=> b!2415380 (= res!1025821 (not (is-ElementMatch!7098 (Concat!11734 lt!874132 EmptyExpr!7098))))))

(assert (=> b!2415380 (= e!1537198 e!1537195)))

(declare-fun b!2415381 () Bool)

(assert (=> b!2415381 (= e!1537198 (not lt!874173))))

(assert (= (and d!701108 c!384855) b!2415379))

(assert (= (and d!701108 (not c!384855)) b!2415375))

(assert (= (and d!701108 c!384856) b!2415368))

(assert (= (and d!701108 (not c!384856)) b!2415371))

(assert (= (and b!2415371 c!384857) b!2415381))

(assert (= (and b!2415371 (not c!384857)) b!2415380))

(assert (= (and b!2415380 (not res!1025821)) b!2415376))

(assert (= (and b!2415376 res!1025822) b!2415369))

(assert (= (and b!2415369 res!1025816) b!2415377))

(assert (= (and b!2415377 res!1025820) b!2415374))

(assert (= (and b!2415376 (not res!1025823)) b!2415378))

(assert (= (and b!2415378 res!1025817) b!2415370))

(assert (= (and b!2415370 (not res!1025819)) b!2415372))

(assert (= (and b!2415372 (not res!1025818)) b!2415373))

(assert (= (or b!2415368 b!2415369 b!2415370) bm!147475))

(assert (=> bm!147475 m!2804329))

(declare-fun m!2804415 () Bool)

(assert (=> bm!147475 m!2804415))

(assert (=> b!2415372 m!2804329))

(declare-fun m!2804417 () Bool)

(assert (=> b!2415372 m!2804417))

(assert (=> b!2415372 m!2804417))

(declare-fun m!2804419 () Bool)

(assert (=> b!2415372 m!2804419))

(assert (=> b!2415377 m!2804329))

(assert (=> b!2415377 m!2804417))

(assert (=> b!2415377 m!2804417))

(assert (=> b!2415377 m!2804419))

(assert (=> d!701108 m!2804329))

(assert (=> d!701108 m!2804415))

(declare-fun m!2804421 () Bool)

(assert (=> d!701108 m!2804421))

(assert (=> b!2415374 m!2804329))

(declare-fun m!2804423 () Bool)

(assert (=> b!2415374 m!2804423))

(assert (=> b!2415375 m!2804329))

(assert (=> b!2415375 m!2804423))

(assert (=> b!2415375 m!2804423))

(declare-fun m!2804425 () Bool)

(assert (=> b!2415375 m!2804425))

(assert (=> b!2415375 m!2804329))

(assert (=> b!2415375 m!2804417))

(assert (=> b!2415375 m!2804425))

(assert (=> b!2415375 m!2804417))

(declare-fun m!2804427 () Bool)

(assert (=> b!2415375 m!2804427))

(assert (=> b!2415373 m!2804329))

(assert (=> b!2415373 m!2804423))

(declare-fun m!2804429 () Bool)

(assert (=> b!2415379 m!2804429))

(assert (=> b!2415192 d!701108))

(declare-fun b!2415390 () Bool)

(declare-fun e!1537204 () List!28435)

(assert (=> b!2415390 (= e!1537204 (_2!16529 lt!874127))))

(declare-fun b!2415392 () Bool)

(declare-fun res!1025829 () Bool)

(declare-fun e!1537205 () Bool)

(assert (=> b!2415392 (=> (not res!1025829) (not e!1537205))))

(declare-fun lt!874176 () List!28435)

(declare-fun size!22223 (List!28435) Int)

(assert (=> b!2415392 (= res!1025829 (= (size!22223 lt!874176) (+ (size!22223 (_1!16529 lt!874127)) (size!22223 (_2!16529 lt!874127)))))))

(declare-fun d!701110 () Bool)

(assert (=> d!701110 e!1537205))

(declare-fun res!1025828 () Bool)

(assert (=> d!701110 (=> (not res!1025828) (not e!1537205))))

(declare-fun content!3885 (List!28435) (Set C!14354))

(assert (=> d!701110 (= res!1025828 (= (content!3885 lt!874176) (set.union (content!3885 (_1!16529 lt!874127)) (content!3885 (_2!16529 lt!874127)))))))

(assert (=> d!701110 (= lt!874176 e!1537204)))

(declare-fun c!384860 () Bool)

(assert (=> d!701110 (= c!384860 (is-Nil!28337 (_1!16529 lt!874127)))))

(assert (=> d!701110 (= (++!7019 (_1!16529 lt!874127) (_2!16529 lt!874127)) lt!874176)))

(declare-fun b!2415391 () Bool)

(assert (=> b!2415391 (= e!1537204 (Cons!28337 (h!33738 (_1!16529 lt!874127)) (++!7019 (t!208412 (_1!16529 lt!874127)) (_2!16529 lt!874127))))))

(declare-fun b!2415393 () Bool)

(assert (=> b!2415393 (= e!1537205 (or (not (= (_2!16529 lt!874127) Nil!28337)) (= lt!874176 (_1!16529 lt!874127))))))

(assert (= (and d!701110 c!384860) b!2415390))

(assert (= (and d!701110 (not c!384860)) b!2415391))

(assert (= (and d!701110 res!1025828) b!2415392))

(assert (= (and b!2415392 res!1025829) b!2415393))

(declare-fun m!2804431 () Bool)

(assert (=> b!2415392 m!2804431))

(declare-fun m!2804433 () Bool)

(assert (=> b!2415392 m!2804433))

(declare-fun m!2804435 () Bool)

(assert (=> b!2415392 m!2804435))

(declare-fun m!2804437 () Bool)

(assert (=> d!701110 m!2804437))

(declare-fun m!2804439 () Bool)

(assert (=> d!701110 m!2804439))

(declare-fun m!2804441 () Bool)

(assert (=> d!701110 m!2804441))

(declare-fun m!2804443 () Bool)

(assert (=> b!2415391 m!2804443))

(assert (=> b!2415192 d!701110))

(declare-fun d!701112 () Bool)

(declare-fun res!1025834 () Bool)

(declare-fun e!1537210 () Bool)

(assert (=> d!701112 (=> res!1025834 e!1537210)))

(assert (=> d!701112 (= res!1025834 (is-Nil!28336 l!9164))))

(assert (=> d!701112 (= (forall!5732 l!9164 lambda!90950) e!1537210)))

(declare-fun b!2415398 () Bool)

(declare-fun e!1537211 () Bool)

(assert (=> b!2415398 (= e!1537210 e!1537211)))

(declare-fun res!1025835 () Bool)

(assert (=> b!2415398 (=> (not res!1025835) (not e!1537211))))

(declare-fun dynLambda!12196 (Int Regex!7098) Bool)

(assert (=> b!2415398 (= res!1025835 (dynLambda!12196 lambda!90950 (h!33737 l!9164)))))

(declare-fun b!2415399 () Bool)

(assert (=> b!2415399 (= e!1537211 (forall!5732 (t!208411 l!9164) lambda!90950))))

(assert (= (and d!701112 (not res!1025834)) b!2415398))

(assert (= (and b!2415398 res!1025835) b!2415399))

(declare-fun b_lambda!74555 () Bool)

(assert (=> (not b_lambda!74555) (not b!2415398)))

(declare-fun m!2804445 () Bool)

(assert (=> b!2415398 m!2804445))

(declare-fun m!2804447 () Bool)

(assert (=> b!2415399 m!2804447))

(assert (=> start!236622 d!701112))

(declare-fun d!701114 () Bool)

(declare-fun isEmpty!16344 (Option!5599) Bool)

(assert (=> d!701114 (= (isDefined!4425 lt!874131) (not (isEmpty!16344 lt!874131)))))

(declare-fun bs!463551 () Bool)

(assert (= bs!463551 d!701114))

(declare-fun m!2804449 () Bool)

(assert (=> bs!463551 m!2804449))

(assert (=> b!2415199 d!701114))

(declare-fun b!2415440 () Bool)

(declare-fun e!1537235 () Bool)

(declare-fun lt!874187 () Option!5599)

(assert (=> b!2415440 (= e!1537235 (not (isDefined!4425 lt!874187)))))

(declare-fun b!2415442 () Bool)

(declare-fun res!1025861 () Bool)

(declare-fun e!1537237 () Bool)

(assert (=> b!2415442 (=> (not res!1025861) (not e!1537237))))

(assert (=> b!2415442 (= res!1025861 (matchR!3215 EmptyExpr!7098 (_2!16529 (get!8700 lt!874187))))))

(declare-fun b!2415443 () Bool)

(assert (=> b!2415443 (= e!1537237 (= (++!7019 (_1!16529 (get!8700 lt!874187)) (_2!16529 (get!8700 lt!874187))) s!9460))))

(declare-fun b!2415444 () Bool)

(declare-fun e!1537233 () Option!5599)

(assert (=> b!2415444 (= e!1537233 None!5598)))

(declare-fun b!2415445 () Bool)

(declare-fun e!1537236 () Bool)

(assert (=> b!2415445 (= e!1537236 (matchR!3215 EmptyExpr!7098 s!9460))))

(declare-fun b!2415446 () Bool)

(declare-fun e!1537234 () Option!5599)

(assert (=> b!2415446 (= e!1537234 e!1537233)))

(declare-fun c!384870 () Bool)

(assert (=> b!2415446 (= c!384870 (is-Nil!28337 s!9460))))

(declare-fun b!2415447 () Bool)

(assert (=> b!2415447 (= e!1537234 (Some!5598 (tuple2!27977 Nil!28337 s!9460)))))

(declare-fun b!2415448 () Bool)

(declare-fun res!1025862 () Bool)

(assert (=> b!2415448 (=> (not res!1025862) (not e!1537237))))

(assert (=> b!2415448 (= res!1025862 (matchR!3215 lt!874132 (_1!16529 (get!8700 lt!874187))))))

(declare-fun d!701116 () Bool)

(assert (=> d!701116 e!1537235))

(declare-fun res!1025859 () Bool)

(assert (=> d!701116 (=> res!1025859 e!1537235)))

(assert (=> d!701116 (= res!1025859 e!1537237)))

(declare-fun res!1025860 () Bool)

(assert (=> d!701116 (=> (not res!1025860) (not e!1537237))))

(assert (=> d!701116 (= res!1025860 (isDefined!4425 lt!874187))))

(assert (=> d!701116 (= lt!874187 e!1537234)))

(declare-fun c!384871 () Bool)

(assert (=> d!701116 (= c!384871 e!1537236)))

(declare-fun res!1025858 () Bool)

(assert (=> d!701116 (=> (not res!1025858) (not e!1537236))))

(assert (=> d!701116 (= res!1025858 (matchR!3215 lt!874132 Nil!28337))))

(assert (=> d!701116 (validRegex!2818 lt!874132)))

(assert (=> d!701116 (= (findConcatSeparation!707 lt!874132 EmptyExpr!7098 Nil!28337 s!9460 s!9460) lt!874187)))

(declare-fun b!2415441 () Bool)

(declare-fun lt!874186 () Unit!41467)

(declare-fun lt!874188 () Unit!41467)

(assert (=> b!2415441 (= lt!874186 lt!874188)))

(assert (=> b!2415441 (= (++!7019 (++!7019 Nil!28337 (Cons!28337 (h!33738 s!9460) Nil!28337)) (t!208412 s!9460)) s!9460)))

(declare-fun lemmaMoveElementToOtherListKeepsConcatEq!647 (List!28435 C!14354 List!28435 List!28435) Unit!41467)

(assert (=> b!2415441 (= lt!874188 (lemmaMoveElementToOtherListKeepsConcatEq!647 Nil!28337 (h!33738 s!9460) (t!208412 s!9460) s!9460))))

(assert (=> b!2415441 (= e!1537233 (findConcatSeparation!707 lt!874132 EmptyExpr!7098 (++!7019 Nil!28337 (Cons!28337 (h!33738 s!9460) Nil!28337)) (t!208412 s!9460) s!9460))))

(assert (= (and d!701116 res!1025858) b!2415445))

(assert (= (and d!701116 c!384871) b!2415447))

(assert (= (and d!701116 (not c!384871)) b!2415446))

(assert (= (and b!2415446 c!384870) b!2415444))

(assert (= (and b!2415446 (not c!384870)) b!2415441))

(assert (= (and d!701116 res!1025860) b!2415448))

(assert (= (and b!2415448 res!1025862) b!2415442))

(assert (= (and b!2415442 res!1025861) b!2415443))

(assert (= (and d!701116 (not res!1025859)) b!2415440))

(declare-fun m!2804467 () Bool)

(assert (=> b!2415445 m!2804467))

(declare-fun m!2804471 () Bool)

(assert (=> b!2415441 m!2804471))

(assert (=> b!2415441 m!2804471))

(declare-fun m!2804475 () Bool)

(assert (=> b!2415441 m!2804475))

(declare-fun m!2804479 () Bool)

(assert (=> b!2415441 m!2804479))

(assert (=> b!2415441 m!2804471))

(declare-fun m!2804485 () Bool)

(assert (=> b!2415441 m!2804485))

(declare-fun m!2804489 () Bool)

(assert (=> b!2415442 m!2804489))

(declare-fun m!2804491 () Bool)

(assert (=> b!2415442 m!2804491))

(assert (=> b!2415443 m!2804489))

(declare-fun m!2804495 () Bool)

(assert (=> b!2415443 m!2804495))

(declare-fun m!2804497 () Bool)

(assert (=> d!701116 m!2804497))

(declare-fun m!2804499 () Bool)

(assert (=> d!701116 m!2804499))

(assert (=> d!701116 m!2804413))

(assert (=> b!2415440 m!2804497))

(assert (=> b!2415448 m!2804489))

(declare-fun m!2804501 () Bool)

(assert (=> b!2415448 m!2804501))

(assert (=> b!2415199 d!701116))

(declare-fun bs!463552 () Bool)

(declare-fun d!701122 () Bool)

(assert (= bs!463552 (and d!701122 start!236622)))

(declare-fun lambda!90962 () Int)

(assert (=> bs!463552 (= lambda!90962 lambda!90950)))

(declare-fun e!1537256 () Bool)

(assert (=> d!701122 e!1537256))

(declare-fun res!1025870 () Bool)

(assert (=> d!701122 (=> (not res!1025870) (not e!1537256))))

(declare-fun lt!874192 () Regex!7098)

(assert (=> d!701122 (= res!1025870 (validRegex!2818 lt!874192))))

(declare-fun e!1537255 () Regex!7098)

(assert (=> d!701122 (= lt!874192 e!1537255)))

(declare-fun c!384883 () Bool)

(declare-fun e!1537253 () Bool)

(assert (=> d!701122 (= c!384883 e!1537253)))

(declare-fun res!1025869 () Bool)

(assert (=> d!701122 (=> (not res!1025869) (not e!1537253))))

(assert (=> d!701122 (= res!1025869 (is-Cons!28336 l!9164))))

(assert (=> d!701122 (forall!5732 l!9164 lambda!90962)))

(assert (=> d!701122 (= (generalisedConcat!199 l!9164) lt!874192)))

(declare-fun b!2415473 () Bool)

(assert (=> b!2415473 (= e!1537253 (isEmpty!16341 (t!208411 l!9164)))))

(declare-fun b!2415474 () Bool)

(declare-fun e!1537254 () Bool)

(assert (=> b!2415474 (= e!1537256 e!1537254)))

(declare-fun c!384884 () Bool)

(assert (=> b!2415474 (= c!384884 (isEmpty!16341 l!9164))))

(declare-fun b!2415475 () Bool)

(declare-fun isEmptyExpr!153 (Regex!7098) Bool)

(assert (=> b!2415475 (= e!1537254 (isEmptyExpr!153 lt!874192))))

(declare-fun b!2415476 () Bool)

(declare-fun e!1537257 () Bool)

(declare-fun isConcat!153 (Regex!7098) Bool)

(assert (=> b!2415476 (= e!1537257 (isConcat!153 lt!874192))))

(declare-fun b!2415477 () Bool)

(declare-fun e!1537252 () Regex!7098)

(assert (=> b!2415477 (= e!1537252 (Concat!11734 (h!33737 l!9164) (generalisedConcat!199 (t!208411 l!9164))))))

(declare-fun b!2415478 () Bool)

(assert (=> b!2415478 (= e!1537252 EmptyExpr!7098)))

(declare-fun b!2415479 () Bool)

(assert (=> b!2415479 (= e!1537255 e!1537252)))

(declare-fun c!384881 () Bool)

(assert (=> b!2415479 (= c!384881 (is-Cons!28336 l!9164))))

(declare-fun b!2415480 () Bool)

(assert (=> b!2415480 (= e!1537254 e!1537257)))

(declare-fun c!384882 () Bool)

(assert (=> b!2415480 (= c!384882 (isEmpty!16341 (tail!3680 l!9164)))))

(declare-fun b!2415481 () Bool)

(assert (=> b!2415481 (= e!1537255 (h!33737 l!9164))))

(declare-fun b!2415482 () Bool)

(assert (=> b!2415482 (= e!1537257 (= lt!874192 (head!5408 l!9164)))))

(assert (= (and d!701122 res!1025869) b!2415473))

(assert (= (and d!701122 c!384883) b!2415481))

(assert (= (and d!701122 (not c!384883)) b!2415479))

(assert (= (and b!2415479 c!384881) b!2415477))

(assert (= (and b!2415479 (not c!384881)) b!2415478))

(assert (= (and d!701122 res!1025870) b!2415474))

(assert (= (and b!2415474 c!384884) b!2415475))

(assert (= (and b!2415474 (not c!384884)) b!2415480))

(assert (= (and b!2415480 c!384882) b!2415482))

(assert (= (and b!2415480 (not c!384882)) b!2415476))

(declare-fun m!2804503 () Bool)

(assert (=> b!2415476 m!2804503))

(declare-fun m!2804505 () Bool)

(assert (=> b!2415477 m!2804505))

(assert (=> b!2415480 m!2804343))

(assert (=> b!2415480 m!2804343))

(declare-fun m!2804507 () Bool)

(assert (=> b!2415480 m!2804507))

(declare-fun m!2804509 () Bool)

(assert (=> d!701122 m!2804509))

(declare-fun m!2804511 () Bool)

(assert (=> d!701122 m!2804511))

(assert (=> b!2415482 m!2804317))

(declare-fun m!2804513 () Bool)

(assert (=> b!2415473 m!2804513))

(assert (=> b!2415474 m!2804337))

(declare-fun m!2804515 () Bool)

(assert (=> b!2415475 m!2804515))

(assert (=> b!2415195 d!701122))

(declare-fun bm!147479 () Bool)

(declare-fun call!147484 () Bool)

(assert (=> bm!147479 (= call!147484 (isEmpty!16343 s!9460))))

(declare-fun b!2415483 () Bool)

(declare-fun e!1537258 () Bool)

(declare-fun lt!874193 () Bool)

(assert (=> b!2415483 (= e!1537258 (= lt!874193 call!147484))))

(declare-fun b!2415484 () Bool)

(declare-fun res!1025871 () Bool)

(declare-fun e!1537264 () Bool)

(assert (=> b!2415484 (=> (not res!1025871) (not e!1537264))))

(assert (=> b!2415484 (= res!1025871 (not call!147484))))

(declare-fun b!2415485 () Bool)

(declare-fun e!1537262 () Bool)

(declare-fun e!1537261 () Bool)

(assert (=> b!2415485 (= e!1537262 e!1537261)))

(declare-fun res!1025874 () Bool)

(assert (=> b!2415485 (=> res!1025874 e!1537261)))

(assert (=> b!2415485 (= res!1025874 call!147484)))

(declare-fun b!2415486 () Bool)

(declare-fun e!1537263 () Bool)

(assert (=> b!2415486 (= e!1537258 e!1537263)))

(declare-fun c!384887 () Bool)

(assert (=> b!2415486 (= c!384887 (is-EmptyLang!7098 lt!874132))))

(declare-fun b!2415487 () Bool)

(declare-fun res!1025873 () Bool)

(assert (=> b!2415487 (=> res!1025873 e!1537261)))

(assert (=> b!2415487 (= res!1025873 (not (isEmpty!16343 (tail!3682 s!9460))))))

(declare-fun d!701124 () Bool)

(assert (=> d!701124 e!1537258))

(declare-fun c!384886 () Bool)

(assert (=> d!701124 (= c!384886 (is-EmptyExpr!7098 lt!874132))))

(declare-fun e!1537259 () Bool)

(assert (=> d!701124 (= lt!874193 e!1537259)))

(declare-fun c!384885 () Bool)

(assert (=> d!701124 (= c!384885 (isEmpty!16343 s!9460))))

(assert (=> d!701124 (validRegex!2818 lt!874132)))

(assert (=> d!701124 (= (matchR!3215 lt!874132 s!9460) lt!874193)))

(declare-fun b!2415488 () Bool)

(assert (=> b!2415488 (= e!1537261 (not (= (head!5410 s!9460) (c!384823 lt!874132))))))

(declare-fun b!2415489 () Bool)

(assert (=> b!2415489 (= e!1537264 (= (head!5410 s!9460) (c!384823 lt!874132)))))

(declare-fun b!2415490 () Bool)

(assert (=> b!2415490 (= e!1537259 (matchR!3215 (derivativeStep!1790 lt!874132 (head!5410 s!9460)) (tail!3682 s!9460)))))

(declare-fun b!2415491 () Bool)

(declare-fun res!1025878 () Bool)

(declare-fun e!1537260 () Bool)

(assert (=> b!2415491 (=> res!1025878 e!1537260)))

(assert (=> b!2415491 (= res!1025878 e!1537264)))

(declare-fun res!1025877 () Bool)

(assert (=> b!2415491 (=> (not res!1025877) (not e!1537264))))

(assert (=> b!2415491 (= res!1025877 lt!874193)))

(declare-fun b!2415492 () Bool)

(declare-fun res!1025875 () Bool)

(assert (=> b!2415492 (=> (not res!1025875) (not e!1537264))))

(assert (=> b!2415492 (= res!1025875 (isEmpty!16343 (tail!3682 s!9460)))))

(declare-fun b!2415493 () Bool)

(assert (=> b!2415493 (= e!1537260 e!1537262)))

(declare-fun res!1025872 () Bool)

(assert (=> b!2415493 (=> (not res!1025872) (not e!1537262))))

(assert (=> b!2415493 (= res!1025872 (not lt!874193))))

(declare-fun b!2415494 () Bool)

(assert (=> b!2415494 (= e!1537259 (nullable!2133 lt!874132))))

(declare-fun b!2415495 () Bool)

(declare-fun res!1025876 () Bool)

(assert (=> b!2415495 (=> res!1025876 e!1537260)))

(assert (=> b!2415495 (= res!1025876 (not (is-ElementMatch!7098 lt!874132)))))

(assert (=> b!2415495 (= e!1537263 e!1537260)))

(declare-fun b!2415496 () Bool)

(assert (=> b!2415496 (= e!1537263 (not lt!874193))))

(assert (= (and d!701124 c!384885) b!2415494))

(assert (= (and d!701124 (not c!384885)) b!2415490))

(assert (= (and d!701124 c!384886) b!2415483))

(assert (= (and d!701124 (not c!384886)) b!2415486))

(assert (= (and b!2415486 c!384887) b!2415496))

(assert (= (and b!2415486 (not c!384887)) b!2415495))

(assert (= (and b!2415495 (not res!1025876)) b!2415491))

(assert (= (and b!2415491 res!1025877) b!2415484))

(assert (= (and b!2415484 res!1025871) b!2415492))

(assert (= (and b!2415492 res!1025875) b!2415489))

(assert (= (and b!2415491 (not res!1025878)) b!2415493))

(assert (= (and b!2415493 res!1025872) b!2415485))

(assert (= (and b!2415485 (not res!1025874)) b!2415487))

(assert (= (and b!2415487 (not res!1025873)) b!2415488))

(assert (= (or b!2415483 b!2415484 b!2415485) bm!147479))

(assert (=> bm!147479 m!2804383))

(assert (=> b!2415487 m!2804385))

(assert (=> b!2415487 m!2804385))

(assert (=> b!2415487 m!2804387))

(assert (=> b!2415492 m!2804385))

(assert (=> b!2415492 m!2804385))

(assert (=> b!2415492 m!2804387))

(assert (=> d!701124 m!2804383))

(assert (=> d!701124 m!2804413))

(assert (=> b!2415489 m!2804391))

(assert (=> b!2415490 m!2804391))

(assert (=> b!2415490 m!2804391))

(declare-fun m!2804517 () Bool)

(assert (=> b!2415490 m!2804517))

(assert (=> b!2415490 m!2804385))

(assert (=> b!2415490 m!2804517))

(assert (=> b!2415490 m!2804385))

(declare-fun m!2804519 () Bool)

(assert (=> b!2415490 m!2804519))

(assert (=> b!2415488 m!2804391))

(declare-fun m!2804521 () Bool)

(assert (=> b!2415494 m!2804521))

(assert (=> b!2415200 d!701124))

(declare-fun d!701126 () Bool)

(assert (=> d!701126 (= (head!5408 l!9164) (h!33737 l!9164))))

(assert (=> b!2415200 d!701126))

(declare-fun bs!463553 () Bool)

(declare-fun d!701128 () Bool)

(assert (= bs!463553 (and d!701128 start!236622)))

(declare-fun lambda!90965 () Int)

(assert (=> bs!463553 (= lambda!90965 lambda!90950)))

(declare-fun bs!463554 () Bool)

(assert (= bs!463554 (and d!701128 d!701122)))

(assert (=> bs!463554 (= lambda!90965 lambda!90962)))

(declare-fun e!1537275 () Bool)

(assert (=> d!701128 e!1537275))

(declare-fun res!1025882 () Bool)

(assert (=> d!701128 (=> (not res!1025882) (not e!1537275))))

(declare-fun lt!874196 () Regex!7098)

(assert (=> d!701128 (= res!1025882 (validRegex!2818 lt!874196))))

(declare-fun e!1537274 () Regex!7098)

(assert (=> d!701128 (= lt!874196 e!1537274)))

(declare-fun c!384894 () Bool)

(declare-fun e!1537272 () Bool)

(assert (=> d!701128 (= c!384894 e!1537272)))

(declare-fun res!1025881 () Bool)

(assert (=> d!701128 (=> (not res!1025881) (not e!1537272))))

(assert (=> d!701128 (= res!1025881 (is-Cons!28336 lt!874134))))

(assert (=> d!701128 (forall!5732 lt!874134 lambda!90965)))

(assert (=> d!701128 (= (generalisedConcat!199 lt!874134) lt!874196)))

(declare-fun b!2415507 () Bool)

(assert (=> b!2415507 (= e!1537272 (isEmpty!16341 (t!208411 lt!874134)))))

(declare-fun b!2415508 () Bool)

(declare-fun e!1537273 () Bool)

(assert (=> b!2415508 (= e!1537275 e!1537273)))

(declare-fun c!384895 () Bool)

(assert (=> b!2415508 (= c!384895 (isEmpty!16341 lt!874134))))

(declare-fun b!2415509 () Bool)

(assert (=> b!2415509 (= e!1537273 (isEmptyExpr!153 lt!874196))))

(declare-fun b!2415510 () Bool)

(declare-fun e!1537276 () Bool)

(assert (=> b!2415510 (= e!1537276 (isConcat!153 lt!874196))))

(declare-fun b!2415511 () Bool)

(declare-fun e!1537271 () Regex!7098)

(assert (=> b!2415511 (= e!1537271 (Concat!11734 (h!33737 lt!874134) (generalisedConcat!199 (t!208411 lt!874134))))))

(declare-fun b!2415512 () Bool)

(assert (=> b!2415512 (= e!1537271 EmptyExpr!7098)))

(declare-fun b!2415513 () Bool)

(assert (=> b!2415513 (= e!1537274 e!1537271)))

(declare-fun c!384892 () Bool)

(assert (=> b!2415513 (= c!384892 (is-Cons!28336 lt!874134))))

(declare-fun b!2415514 () Bool)

(assert (=> b!2415514 (= e!1537273 e!1537276)))

(declare-fun c!384893 () Bool)

(assert (=> b!2415514 (= c!384893 (isEmpty!16341 (tail!3680 lt!874134)))))

(declare-fun b!2415515 () Bool)

(assert (=> b!2415515 (= e!1537274 (h!33737 lt!874134))))

(declare-fun b!2415516 () Bool)

(assert (=> b!2415516 (= e!1537276 (= lt!874196 (head!5408 lt!874134)))))

(assert (= (and d!701128 res!1025881) b!2415507))

(assert (= (and d!701128 c!384894) b!2415515))

(assert (= (and d!701128 (not c!384894)) b!2415513))

(assert (= (and b!2415513 c!384892) b!2415511))

(assert (= (and b!2415513 (not c!384892)) b!2415512))

(assert (= (and d!701128 res!1025882) b!2415508))

(assert (= (and b!2415508 c!384895) b!2415509))

(assert (= (and b!2415508 (not c!384895)) b!2415514))

(assert (= (and b!2415514 c!384893) b!2415516))

(assert (= (and b!2415514 (not c!384893)) b!2415510))

(declare-fun m!2804523 () Bool)

(assert (=> b!2415510 m!2804523))

(declare-fun m!2804525 () Bool)

(assert (=> b!2415511 m!2804525))

(declare-fun m!2804527 () Bool)

(assert (=> b!2415514 m!2804527))

(assert (=> b!2415514 m!2804527))

(declare-fun m!2804529 () Bool)

(assert (=> b!2415514 m!2804529))

(declare-fun m!2804531 () Bool)

(assert (=> d!701128 m!2804531))

(declare-fun m!2804533 () Bool)

(assert (=> d!701128 m!2804533))

(declare-fun m!2804535 () Bool)

(assert (=> b!2415516 m!2804535))

(declare-fun m!2804537 () Bool)

(assert (=> b!2415507 m!2804537))

(assert (=> b!2415508 m!2804341))

(declare-fun m!2804539 () Bool)

(assert (=> b!2415509 m!2804539))

(assert (=> b!2415194 d!701128))

(declare-fun b!2415538 () Bool)

(declare-fun e!1537285 () Bool)

(declare-fun tp!768186 () Bool)

(declare-fun tp!768188 () Bool)

(assert (=> b!2415538 (= e!1537285 (and tp!768186 tp!768188))))

(declare-fun b!2415539 () Bool)

(declare-fun tp!768190 () Bool)

(assert (=> b!2415539 (= e!1537285 tp!768190)))

(declare-fun b!2415540 () Bool)

(declare-fun tp!768189 () Bool)

(declare-fun tp!768187 () Bool)

(assert (=> b!2415540 (= e!1537285 (and tp!768189 tp!768187))))

(assert (=> b!2415201 (= tp!768144 e!1537285)))

(declare-fun b!2415537 () Bool)

(assert (=> b!2415537 (= e!1537285 tp_is_empty!11609)))

(assert (= (and b!2415201 (is-ElementMatch!7098 (h!33737 l!9164))) b!2415537))

(assert (= (and b!2415201 (is-Concat!11734 (h!33737 l!9164))) b!2415538))

(assert (= (and b!2415201 (is-Star!7098 (h!33737 l!9164))) b!2415539))

(assert (= (and b!2415201 (is-Union!7098 (h!33737 l!9164))) b!2415540))

(declare-fun b!2415545 () Bool)

(declare-fun e!1537288 () Bool)

(declare-fun tp!768195 () Bool)

(declare-fun tp!768196 () Bool)

(assert (=> b!2415545 (= e!1537288 (and tp!768195 tp!768196))))

(assert (=> b!2415201 (= tp!768150 e!1537288)))

(assert (= (and b!2415201 (is-Cons!28336 (t!208411 l!9164))) b!2415545))

(declare-fun b!2415547 () Bool)

(declare-fun e!1537289 () Bool)

(declare-fun tp!768197 () Bool)

(declare-fun tp!768199 () Bool)

(assert (=> b!2415547 (= e!1537289 (and tp!768197 tp!768199))))

(declare-fun b!2415548 () Bool)

(declare-fun tp!768201 () Bool)

(assert (=> b!2415548 (= e!1537289 tp!768201)))

(declare-fun b!2415549 () Bool)

(declare-fun tp!768200 () Bool)

(declare-fun tp!768198 () Bool)

(assert (=> b!2415549 (= e!1537289 (and tp!768200 tp!768198))))

(assert (=> b!2415187 (= tp!768149 e!1537289)))

(declare-fun b!2415546 () Bool)

(assert (=> b!2415546 (= e!1537289 tp_is_empty!11609)))

(assert (= (and b!2415187 (is-ElementMatch!7098 (regOne!14708 r!13927))) b!2415546))

(assert (= (and b!2415187 (is-Concat!11734 (regOne!14708 r!13927))) b!2415547))

(assert (= (and b!2415187 (is-Star!7098 (regOne!14708 r!13927))) b!2415548))

(assert (= (and b!2415187 (is-Union!7098 (regOne!14708 r!13927))) b!2415549))

(declare-fun b!2415551 () Bool)

(declare-fun e!1537290 () Bool)

(declare-fun tp!768202 () Bool)

(declare-fun tp!768204 () Bool)

(assert (=> b!2415551 (= e!1537290 (and tp!768202 tp!768204))))

(declare-fun b!2415552 () Bool)

(declare-fun tp!768206 () Bool)

(assert (=> b!2415552 (= e!1537290 tp!768206)))

(declare-fun b!2415553 () Bool)

(declare-fun tp!768205 () Bool)

(declare-fun tp!768203 () Bool)

(assert (=> b!2415553 (= e!1537290 (and tp!768205 tp!768203))))

(assert (=> b!2415187 (= tp!768148 e!1537290)))

(declare-fun b!2415550 () Bool)

(assert (=> b!2415550 (= e!1537290 tp_is_empty!11609)))

(assert (= (and b!2415187 (is-ElementMatch!7098 (regTwo!14708 r!13927))) b!2415550))

(assert (= (and b!2415187 (is-Concat!11734 (regTwo!14708 r!13927))) b!2415551))

(assert (= (and b!2415187 (is-Star!7098 (regTwo!14708 r!13927))) b!2415552))

(assert (= (and b!2415187 (is-Union!7098 (regTwo!14708 r!13927))) b!2415553))

(declare-fun b!2415558 () Bool)

(declare-fun e!1537293 () Bool)

(declare-fun tp!768209 () Bool)

(assert (=> b!2415558 (= e!1537293 (and tp_is_empty!11609 tp!768209))))

(assert (=> b!2415202 (= tp!768147 e!1537293)))

(assert (= (and b!2415202 (is-Cons!28337 (t!208412 s!9460))) b!2415558))

(declare-fun b!2415560 () Bool)

(declare-fun e!1537294 () Bool)

(declare-fun tp!768210 () Bool)

(declare-fun tp!768212 () Bool)

(assert (=> b!2415560 (= e!1537294 (and tp!768210 tp!768212))))

(declare-fun b!2415561 () Bool)

(declare-fun tp!768214 () Bool)

(assert (=> b!2415561 (= e!1537294 tp!768214)))

(declare-fun b!2415562 () Bool)

(declare-fun tp!768213 () Bool)

(declare-fun tp!768211 () Bool)

(assert (=> b!2415562 (= e!1537294 (and tp!768213 tp!768211))))

(assert (=> b!2415188 (= tp!768145 e!1537294)))

(declare-fun b!2415559 () Bool)

(assert (=> b!2415559 (= e!1537294 tp_is_empty!11609)))

(assert (= (and b!2415188 (is-ElementMatch!7098 (reg!7427 r!13927))) b!2415559))

(assert (= (and b!2415188 (is-Concat!11734 (reg!7427 r!13927))) b!2415560))

(assert (= (and b!2415188 (is-Star!7098 (reg!7427 r!13927))) b!2415561))

(assert (= (and b!2415188 (is-Union!7098 (reg!7427 r!13927))) b!2415562))

(declare-fun b!2415564 () Bool)

(declare-fun e!1537295 () Bool)

(declare-fun tp!768215 () Bool)

(declare-fun tp!768217 () Bool)

(assert (=> b!2415564 (= e!1537295 (and tp!768215 tp!768217))))

(declare-fun b!2415565 () Bool)

(declare-fun tp!768219 () Bool)

(assert (=> b!2415565 (= e!1537295 tp!768219)))

(declare-fun b!2415566 () Bool)

(declare-fun tp!768218 () Bool)

(declare-fun tp!768216 () Bool)

(assert (=> b!2415566 (= e!1537295 (and tp!768218 tp!768216))))

(assert (=> b!2415189 (= tp!768146 e!1537295)))

(declare-fun b!2415563 () Bool)

(assert (=> b!2415563 (= e!1537295 tp_is_empty!11609)))

(assert (= (and b!2415189 (is-ElementMatch!7098 (regOne!14709 r!13927))) b!2415563))

(assert (= (and b!2415189 (is-Concat!11734 (regOne!14709 r!13927))) b!2415564))

(assert (= (and b!2415189 (is-Star!7098 (regOne!14709 r!13927))) b!2415565))

(assert (= (and b!2415189 (is-Union!7098 (regOne!14709 r!13927))) b!2415566))

(declare-fun b!2415568 () Bool)

(declare-fun e!1537296 () Bool)

(declare-fun tp!768220 () Bool)

(declare-fun tp!768222 () Bool)

(assert (=> b!2415568 (= e!1537296 (and tp!768220 tp!768222))))

(declare-fun b!2415569 () Bool)

(declare-fun tp!768224 () Bool)

(assert (=> b!2415569 (= e!1537296 tp!768224)))

(declare-fun b!2415570 () Bool)

(declare-fun tp!768223 () Bool)

(declare-fun tp!768221 () Bool)

(assert (=> b!2415570 (= e!1537296 (and tp!768223 tp!768221))))

(assert (=> b!2415189 (= tp!768151 e!1537296)))

(declare-fun b!2415567 () Bool)

(assert (=> b!2415567 (= e!1537296 tp_is_empty!11609)))

(assert (= (and b!2415189 (is-ElementMatch!7098 (regTwo!14709 r!13927))) b!2415567))

(assert (= (and b!2415189 (is-Concat!11734 (regTwo!14709 r!13927))) b!2415568))

(assert (= (and b!2415189 (is-Star!7098 (regTwo!14709 r!13927))) b!2415569))

(assert (= (and b!2415189 (is-Union!7098 (regTwo!14709 r!13927))) b!2415570))

(declare-fun b_lambda!74557 () Bool)

(assert (= b_lambda!74555 (or start!236622 b_lambda!74557)))

(declare-fun bs!463555 () Bool)

(declare-fun d!701130 () Bool)

(assert (= bs!463555 (and d!701130 start!236622)))

(assert (=> bs!463555 (= (dynLambda!12196 lambda!90950 (h!33737 l!9164)) (validRegex!2818 (h!33737 l!9164)))))

(declare-fun m!2804541 () Bool)

(assert (=> bs!463555 m!2804541))

(assert (=> b!2415398 d!701130))

(push 1)

(assert (not b!2415476))

(assert (not d!701128))

(assert (not b!2415373))

(assert (not b!2415392))

(assert (not b!2415399))

(assert (not b!2415547))

(assert (not b!2415441))

(assert (not b!2415445))

(assert (not b!2415488))

(assert (not b!2415564))

(assert (not b!2415548))

(assert (not bm!147475))

(assert (not bm!147474))

(assert (not b!2415477))

(assert (not d!701124))

(assert (not b!2415442))

(assert (not b!2415379))

(assert (not b!2415391))

(assert (not b!2415551))

(assert (not b!2415511))

(assert (not b!2415565))

(assert (not b!2415377))

(assert (not b!2415285))

(assert (not bm!147468))

(assert (not b!2415372))

(assert (not b!2415568))

(assert (not b!2415553))

(assert (not b!2415560))

(assert (not b!2415475))

(assert (not d!701122))

(assert (not d!701116))

(assert (not b!2415510))

(assert (not b!2415474))

(assert (not b!2415540))

(assert (not b!2415549))

(assert (not b!2415482))

(assert (not b!2415473))

(assert (not b!2415514))

(assert (not b!2415494))

(assert (not bs!463555))

(assert (not b!2415490))

(assert (not b!2415566))

(assert (not b!2415286))

(assert (not b!2415288))

(assert (not b!2415492))

(assert (not b!2415561))

(assert tp_is_empty!11609)

(assert (not b_lambda!74557))

(assert (not b!2415290))

(assert (not b!2415440))

(assert (not b!2415443))

(assert (not b!2415516))

(assert (not b!2415545))

(assert (not b!2415507))

(assert (not b!2415569))

(assert (not b!2415509))

(assert (not b!2415375))

(assert (not b!2415480))

(assert (not d!701098))

(assert (not d!701088))

(assert (not d!701108))

(assert (not d!701114))

(assert (not b!2415489))

(assert (not bm!147479))

(assert (not b!2415448))

(assert (not b!2415283))

(assert (not b!2415374))

(assert (not b!2415570))

(assert (not b!2415539))

(assert (not d!701106))

(assert (not b!2415538))

(assert (not b!2415487))

(assert (not b!2415328))

(assert (not b!2415558))

(assert (not b!2415552))

(assert (not b!2415508))

(assert (not b!2415562))

(assert (not bm!147473))

(assert (not d!701110))

(assert (not b!2415329))

(assert (not b!2415284))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

