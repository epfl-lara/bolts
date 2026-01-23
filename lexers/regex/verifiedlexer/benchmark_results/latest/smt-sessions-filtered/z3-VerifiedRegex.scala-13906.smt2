; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!738888 () Bool)

(assert start!738888)

(declare-fun b!7750078 () Bool)

(declare-fun e!4594496 () Bool)

(declare-fun tp!2273781 () Bool)

(declare-fun tp!2273777 () Bool)

(assert (=> b!7750078 (= e!4594496 (and tp!2273781 tp!2273777))))

(declare-fun res!3090321 () Bool)

(declare-fun e!4594497 () Bool)

(assert (=> start!738888 (=> (not res!3090321) (not e!4594497))))

(declare-datatypes ((C!41540 0))(
  ( (C!41541 (val!31210 Int)) )
))
(declare-datatypes ((Regex!20607 0))(
  ( (ElementMatch!20607 (c!1429388 C!41540)) (Concat!29452 (regOne!41726 Regex!20607) (regTwo!41726 Regex!20607)) (EmptyExpr!20607) (Star!20607 (reg!20936 Regex!20607)) (EmptyLang!20607) (Union!20607 (regOne!41727 Regex!20607) (regTwo!41727 Regex!20607)) )
))
(declare-fun lt!2669336 () Regex!20607)

(declare-fun validRegex!11025 (Regex!20607) Bool)

(assert (=> start!738888 (= res!3090321 (validRegex!11025 lt!2669336))))

(declare-fun r!25892 () Regex!20607)

(assert (=> start!738888 (= lt!2669336 (Star!20607 r!25892))))

(assert (=> start!738888 e!4594497))

(assert (=> start!738888 e!4594496))

(declare-fun e!4594498 () Bool)

(assert (=> start!738888 e!4594498))

(declare-fun e!4594499 () Bool)

(assert (=> start!738888 e!4594499))

(declare-fun b!7750079 () Bool)

(declare-fun res!3090323 () Bool)

(assert (=> b!7750079 (=> (not res!3090323) (not e!4594497))))

(declare-datatypes ((List!73452 0))(
  ( (Nil!73328) (Cons!73328 (h!79776 C!41540) (t!388187 List!73452)) )
))
(declare-fun s2!3963 () List!73452)

(declare-fun matchR!10097 (Regex!20607 List!73452) Bool)

(assert (=> b!7750079 (= res!3090323 (matchR!10097 lt!2669336 s2!3963))))

(declare-fun b!7750080 () Bool)

(declare-fun tp_is_empty!51569 () Bool)

(declare-fun tp!2273779 () Bool)

(assert (=> b!7750080 (= e!4594499 (and tp_is_empty!51569 tp!2273779))))

(declare-fun b!7750081 () Bool)

(assert (=> b!7750081 (= e!4594497 (not (validRegex!11025 r!25892)))))

(declare-fun b!7750082 () Bool)

(declare-fun tp!2273775 () Bool)

(assert (=> b!7750082 (= e!4594496 tp!2273775)))

(declare-fun b!7750083 () Bool)

(declare-fun tp!2273780 () Bool)

(assert (=> b!7750083 (= e!4594498 (and tp_is_empty!51569 tp!2273780))))

(declare-fun b!7750084 () Bool)

(declare-fun res!3090324 () Bool)

(assert (=> b!7750084 (=> (not res!3090324) (not e!4594497))))

(declare-fun s1!4391 () List!73452)

(get-info :version)

(assert (=> b!7750084 (= res!3090324 ((_ is Cons!73328) s1!4391))))

(declare-fun b!7750085 () Bool)

(assert (=> b!7750085 (= e!4594496 tp_is_empty!51569)))

(declare-fun b!7750086 () Bool)

(declare-fun tp!2273778 () Bool)

(declare-fun tp!2273776 () Bool)

(assert (=> b!7750086 (= e!4594496 (and tp!2273778 tp!2273776))))

(declare-fun b!7750087 () Bool)

(declare-fun res!3090322 () Bool)

(assert (=> b!7750087 (=> (not res!3090322) (not e!4594497))))

(assert (=> b!7750087 (= res!3090322 (matchR!10097 r!25892 s1!4391))))

(assert (= (and start!738888 res!3090321) b!7750087))

(assert (= (and b!7750087 res!3090322) b!7750079))

(assert (= (and b!7750079 res!3090323) b!7750084))

(assert (= (and b!7750084 res!3090324) b!7750081))

(assert (= (and start!738888 ((_ is ElementMatch!20607) r!25892)) b!7750085))

(assert (= (and start!738888 ((_ is Concat!29452) r!25892)) b!7750078))

(assert (= (and start!738888 ((_ is Star!20607) r!25892)) b!7750082))

(assert (= (and start!738888 ((_ is Union!20607) r!25892)) b!7750086))

(assert (= (and start!738888 ((_ is Cons!73328) s1!4391)) b!7750083))

(assert (= (and start!738888 ((_ is Cons!73328) s2!3963)) b!7750080))

(declare-fun m!8216350 () Bool)

(assert (=> start!738888 m!8216350))

(declare-fun m!8216352 () Bool)

(assert (=> b!7750079 m!8216352))

(declare-fun m!8216354 () Bool)

(assert (=> b!7750081 m!8216354))

(declare-fun m!8216356 () Bool)

(assert (=> b!7750087 m!8216356))

(check-sat (not b!7750083) (not b!7750082) tp_is_empty!51569 (not b!7750081) (not start!738888) (not b!7750080) (not b!7750078) (not b!7750079) (not b!7750086) (not b!7750087))
(check-sat)
(get-model)

(declare-fun b!7750134 () Bool)

(declare-fun e!4594533 () Bool)

(declare-fun lt!2669339 () Bool)

(assert (=> b!7750134 (= e!4594533 (not lt!2669339))))

(declare-fun b!7750135 () Bool)

(declare-fun res!3090352 () Bool)

(declare-fun e!4594532 () Bool)

(assert (=> b!7750135 (=> (not res!3090352) (not e!4594532))))

(declare-fun isEmpty!42021 (List!73452) Bool)

(declare-fun tail!15370 (List!73452) List!73452)

(assert (=> b!7750135 (= res!3090352 (isEmpty!42021 (tail!15370 s1!4391)))))

(declare-fun d!2342647 () Bool)

(declare-fun e!4594529 () Bool)

(assert (=> d!2342647 e!4594529))

(declare-fun c!1429401 () Bool)

(assert (=> d!2342647 (= c!1429401 ((_ is EmptyExpr!20607) r!25892))))

(declare-fun e!4594534 () Bool)

(assert (=> d!2342647 (= lt!2669339 e!4594534)))

(declare-fun c!1429399 () Bool)

(assert (=> d!2342647 (= c!1429399 (isEmpty!42021 s1!4391))))

(assert (=> d!2342647 (validRegex!11025 r!25892)))

(assert (=> d!2342647 (= (matchR!10097 r!25892 s1!4391) lt!2669339)))

(declare-fun b!7750136 () Bool)

(declare-fun e!4594531 () Bool)

(declare-fun e!4594528 () Bool)

(assert (=> b!7750136 (= e!4594531 e!4594528)))

(declare-fun res!3090355 () Bool)

(assert (=> b!7750136 (=> res!3090355 e!4594528)))

(declare-fun call!718241 () Bool)

(assert (=> b!7750136 (= res!3090355 call!718241)))

(declare-fun b!7750137 () Bool)

(declare-fun derivativeStep!6030 (Regex!20607 C!41540) Regex!20607)

(declare-fun head!15830 (List!73452) C!41540)

(assert (=> b!7750137 (= e!4594534 (matchR!10097 (derivativeStep!6030 r!25892 (head!15830 s1!4391)) (tail!15370 s1!4391)))))

(declare-fun bm!718236 () Bool)

(assert (=> bm!718236 (= call!718241 (isEmpty!42021 s1!4391))))

(declare-fun b!7750138 () Bool)

(declare-fun res!3090354 () Bool)

(assert (=> b!7750138 (=> (not res!3090354) (not e!4594532))))

(assert (=> b!7750138 (= res!3090354 (not call!718241))))

(declare-fun b!7750139 () Bool)

(assert (=> b!7750139 (= e!4594529 e!4594533)))

(declare-fun c!1429400 () Bool)

(assert (=> b!7750139 (= c!1429400 ((_ is EmptyLang!20607) r!25892))))

(declare-fun b!7750140 () Bool)

(assert (=> b!7750140 (= e!4594532 (= (head!15830 s1!4391) (c!1429388 r!25892)))))

(declare-fun b!7750141 () Bool)

(declare-fun res!3090358 () Bool)

(declare-fun e!4594530 () Bool)

(assert (=> b!7750141 (=> res!3090358 e!4594530)))

(assert (=> b!7750141 (= res!3090358 (not ((_ is ElementMatch!20607) r!25892)))))

(assert (=> b!7750141 (= e!4594533 e!4594530)))

(declare-fun b!7750142 () Bool)

(declare-fun nullable!9073 (Regex!20607) Bool)

(assert (=> b!7750142 (= e!4594534 (nullable!9073 r!25892))))

(declare-fun b!7750143 () Bool)

(declare-fun res!3090357 () Bool)

(assert (=> b!7750143 (=> res!3090357 e!4594530)))

(assert (=> b!7750143 (= res!3090357 e!4594532)))

(declare-fun res!3090356 () Bool)

(assert (=> b!7750143 (=> (not res!3090356) (not e!4594532))))

(assert (=> b!7750143 (= res!3090356 lt!2669339)))

(declare-fun b!7750144 () Bool)

(assert (=> b!7750144 (= e!4594528 (not (= (head!15830 s1!4391) (c!1429388 r!25892))))))

(declare-fun b!7750145 () Bool)

(assert (=> b!7750145 (= e!4594530 e!4594531)))

(declare-fun res!3090353 () Bool)

(assert (=> b!7750145 (=> (not res!3090353) (not e!4594531))))

(assert (=> b!7750145 (= res!3090353 (not lt!2669339))))

(declare-fun b!7750146 () Bool)

(assert (=> b!7750146 (= e!4594529 (= lt!2669339 call!718241))))

(declare-fun b!7750147 () Bool)

(declare-fun res!3090351 () Bool)

(assert (=> b!7750147 (=> res!3090351 e!4594528)))

(assert (=> b!7750147 (= res!3090351 (not (isEmpty!42021 (tail!15370 s1!4391))))))

(assert (= (and d!2342647 c!1429399) b!7750142))

(assert (= (and d!2342647 (not c!1429399)) b!7750137))

(assert (= (and d!2342647 c!1429401) b!7750146))

(assert (= (and d!2342647 (not c!1429401)) b!7750139))

(assert (= (and b!7750139 c!1429400) b!7750134))

(assert (= (and b!7750139 (not c!1429400)) b!7750141))

(assert (= (and b!7750141 (not res!3090358)) b!7750143))

(assert (= (and b!7750143 res!3090356) b!7750138))

(assert (= (and b!7750138 res!3090354) b!7750135))

(assert (= (and b!7750135 res!3090352) b!7750140))

(assert (= (and b!7750143 (not res!3090357)) b!7750145))

(assert (= (and b!7750145 res!3090353) b!7750136))

(assert (= (and b!7750136 (not res!3090355)) b!7750147))

(assert (= (and b!7750147 (not res!3090351)) b!7750144))

(assert (= (or b!7750146 b!7750136 b!7750138) bm!718236))

(declare-fun m!8216358 () Bool)

(assert (=> b!7750135 m!8216358))

(assert (=> b!7750135 m!8216358))

(declare-fun m!8216360 () Bool)

(assert (=> b!7750135 m!8216360))

(declare-fun m!8216362 () Bool)

(assert (=> bm!718236 m!8216362))

(assert (=> d!2342647 m!8216362))

(assert (=> d!2342647 m!8216354))

(declare-fun m!8216364 () Bool)

(assert (=> b!7750142 m!8216364))

(assert (=> b!7750147 m!8216358))

(assert (=> b!7750147 m!8216358))

(assert (=> b!7750147 m!8216360))

(declare-fun m!8216366 () Bool)

(assert (=> b!7750140 m!8216366))

(assert (=> b!7750144 m!8216366))

(assert (=> b!7750137 m!8216366))

(assert (=> b!7750137 m!8216366))

(declare-fun m!8216368 () Bool)

(assert (=> b!7750137 m!8216368))

(assert (=> b!7750137 m!8216358))

(assert (=> b!7750137 m!8216368))

(assert (=> b!7750137 m!8216358))

(declare-fun m!8216370 () Bool)

(assert (=> b!7750137 m!8216370))

(assert (=> b!7750087 d!2342647))

(declare-fun b!7750184 () Bool)

(declare-fun e!4594564 () Bool)

(declare-fun call!718255 () Bool)

(assert (=> b!7750184 (= e!4594564 call!718255)))

(declare-fun b!7750185 () Bool)

(declare-fun e!4594565 () Bool)

(declare-fun e!4594568 () Bool)

(assert (=> b!7750185 (= e!4594565 e!4594568)))

(declare-fun res!3090380 () Bool)

(assert (=> b!7750185 (=> (not res!3090380) (not e!4594568))))

(declare-fun call!718256 () Bool)

(assert (=> b!7750185 (= res!3090380 call!718256)))

(declare-fun bm!718249 () Bool)

(assert (=> bm!718249 (= call!718256 call!718255)))

(declare-fun b!7750186 () Bool)

(declare-fun e!4594566 () Bool)

(declare-fun call!718254 () Bool)

(assert (=> b!7750186 (= e!4594566 call!718254)))

(declare-fun d!2342651 () Bool)

(declare-fun res!3090382 () Bool)

(declare-fun e!4594569 () Bool)

(assert (=> d!2342651 (=> res!3090382 e!4594569)))

(assert (=> d!2342651 (= res!3090382 ((_ is ElementMatch!20607) lt!2669336))))

(assert (=> d!2342651 (= (validRegex!11025 lt!2669336) e!4594569)))

(declare-fun c!1429410 () Bool)

(declare-fun bm!718250 () Bool)

(declare-fun c!1429411 () Bool)

(assert (=> bm!718250 (= call!718255 (validRegex!11025 (ite c!1429410 (reg!20936 lt!2669336) (ite c!1429411 (regOne!41727 lt!2669336) (regOne!41726 lt!2669336)))))))

(declare-fun b!7750187 () Bool)

(declare-fun res!3090383 () Bool)

(assert (=> b!7750187 (=> res!3090383 e!4594565)))

(assert (=> b!7750187 (= res!3090383 (not ((_ is Concat!29452) lt!2669336)))))

(declare-fun e!4594567 () Bool)

(assert (=> b!7750187 (= e!4594567 e!4594565)))

(declare-fun b!7750188 () Bool)

(declare-fun res!3090379 () Bool)

(assert (=> b!7750188 (=> (not res!3090379) (not e!4594566))))

(assert (=> b!7750188 (= res!3090379 call!718256)))

(assert (=> b!7750188 (= e!4594567 e!4594566)))

(declare-fun b!7750189 () Bool)

(declare-fun e!4594563 () Bool)

(assert (=> b!7750189 (= e!4594563 e!4594567)))

(assert (=> b!7750189 (= c!1429411 ((_ is Union!20607) lt!2669336))))

(declare-fun b!7750190 () Bool)

(assert (=> b!7750190 (= e!4594569 e!4594563)))

(assert (=> b!7750190 (= c!1429410 ((_ is Star!20607) lt!2669336))))

(declare-fun bm!718251 () Bool)

(assert (=> bm!718251 (= call!718254 (validRegex!11025 (ite c!1429411 (regTwo!41727 lt!2669336) (regTwo!41726 lt!2669336))))))

(declare-fun b!7750191 () Bool)

(assert (=> b!7750191 (= e!4594563 e!4594564)))

(declare-fun res!3090381 () Bool)

(assert (=> b!7750191 (= res!3090381 (not (nullable!9073 (reg!20936 lt!2669336))))))

(assert (=> b!7750191 (=> (not res!3090381) (not e!4594564))))

(declare-fun b!7750192 () Bool)

(assert (=> b!7750192 (= e!4594568 call!718254)))

(assert (= (and d!2342651 (not res!3090382)) b!7750190))

(assert (= (and b!7750190 c!1429410) b!7750191))

(assert (= (and b!7750190 (not c!1429410)) b!7750189))

(assert (= (and b!7750191 res!3090381) b!7750184))

(assert (= (and b!7750189 c!1429411) b!7750188))

(assert (= (and b!7750189 (not c!1429411)) b!7750187))

(assert (= (and b!7750188 res!3090379) b!7750186))

(assert (= (and b!7750187 (not res!3090383)) b!7750185))

(assert (= (and b!7750185 res!3090380) b!7750192))

(assert (= (or b!7750188 b!7750185) bm!718249))

(assert (= (or b!7750186 b!7750192) bm!718251))

(assert (= (or b!7750184 bm!718249) bm!718250))

(declare-fun m!8216384 () Bool)

(assert (=> bm!718250 m!8216384))

(declare-fun m!8216386 () Bool)

(assert (=> bm!718251 m!8216386))

(declare-fun m!8216388 () Bool)

(assert (=> b!7750191 m!8216388))

(assert (=> start!738888 d!2342651))

(declare-fun b!7750193 () Bool)

(declare-fun e!4594571 () Bool)

(declare-fun call!718258 () Bool)

(assert (=> b!7750193 (= e!4594571 call!718258)))

(declare-fun b!7750194 () Bool)

(declare-fun e!4594572 () Bool)

(declare-fun e!4594575 () Bool)

(assert (=> b!7750194 (= e!4594572 e!4594575)))

(declare-fun res!3090385 () Bool)

(assert (=> b!7750194 (=> (not res!3090385) (not e!4594575))))

(declare-fun call!718259 () Bool)

(assert (=> b!7750194 (= res!3090385 call!718259)))

(declare-fun bm!718252 () Bool)

(assert (=> bm!718252 (= call!718259 call!718258)))

(declare-fun b!7750195 () Bool)

(declare-fun e!4594573 () Bool)

(declare-fun call!718257 () Bool)

(assert (=> b!7750195 (= e!4594573 call!718257)))

(declare-fun d!2342657 () Bool)

(declare-fun res!3090387 () Bool)

(declare-fun e!4594576 () Bool)

(assert (=> d!2342657 (=> res!3090387 e!4594576)))

(assert (=> d!2342657 (= res!3090387 ((_ is ElementMatch!20607) r!25892))))

(assert (=> d!2342657 (= (validRegex!11025 r!25892) e!4594576)))

(declare-fun c!1429413 () Bool)

(declare-fun bm!718253 () Bool)

(declare-fun c!1429412 () Bool)

(assert (=> bm!718253 (= call!718258 (validRegex!11025 (ite c!1429412 (reg!20936 r!25892) (ite c!1429413 (regOne!41727 r!25892) (regOne!41726 r!25892)))))))

(declare-fun b!7750196 () Bool)

(declare-fun res!3090388 () Bool)

(assert (=> b!7750196 (=> res!3090388 e!4594572)))

(assert (=> b!7750196 (= res!3090388 (not ((_ is Concat!29452) r!25892)))))

(declare-fun e!4594574 () Bool)

(assert (=> b!7750196 (= e!4594574 e!4594572)))

(declare-fun b!7750197 () Bool)

(declare-fun res!3090384 () Bool)

(assert (=> b!7750197 (=> (not res!3090384) (not e!4594573))))

(assert (=> b!7750197 (= res!3090384 call!718259)))

(assert (=> b!7750197 (= e!4594574 e!4594573)))

(declare-fun b!7750198 () Bool)

(declare-fun e!4594570 () Bool)

(assert (=> b!7750198 (= e!4594570 e!4594574)))

(assert (=> b!7750198 (= c!1429413 ((_ is Union!20607) r!25892))))

(declare-fun b!7750199 () Bool)

(assert (=> b!7750199 (= e!4594576 e!4594570)))

(assert (=> b!7750199 (= c!1429412 ((_ is Star!20607) r!25892))))

(declare-fun bm!718254 () Bool)

(assert (=> bm!718254 (= call!718257 (validRegex!11025 (ite c!1429413 (regTwo!41727 r!25892) (regTwo!41726 r!25892))))))

(declare-fun b!7750200 () Bool)

(assert (=> b!7750200 (= e!4594570 e!4594571)))

(declare-fun res!3090386 () Bool)

(assert (=> b!7750200 (= res!3090386 (not (nullable!9073 (reg!20936 r!25892))))))

(assert (=> b!7750200 (=> (not res!3090386) (not e!4594571))))

(declare-fun b!7750201 () Bool)

(assert (=> b!7750201 (= e!4594575 call!718257)))

(assert (= (and d!2342657 (not res!3090387)) b!7750199))

(assert (= (and b!7750199 c!1429412) b!7750200))

(assert (= (and b!7750199 (not c!1429412)) b!7750198))

(assert (= (and b!7750200 res!3090386) b!7750193))

(assert (= (and b!7750198 c!1429413) b!7750197))

(assert (= (and b!7750198 (not c!1429413)) b!7750196))

(assert (= (and b!7750197 res!3090384) b!7750195))

(assert (= (and b!7750196 (not res!3090388)) b!7750194))

(assert (= (and b!7750194 res!3090385) b!7750201))

(assert (= (or b!7750197 b!7750194) bm!718252))

(assert (= (or b!7750195 b!7750201) bm!718254))

(assert (= (or b!7750193 bm!718252) bm!718253))

(declare-fun m!8216390 () Bool)

(assert (=> bm!718253 m!8216390))

(declare-fun m!8216392 () Bool)

(assert (=> bm!718254 m!8216392))

(declare-fun m!8216394 () Bool)

(assert (=> b!7750200 m!8216394))

(assert (=> b!7750081 d!2342657))

(declare-fun b!7750202 () Bool)

(declare-fun e!4594582 () Bool)

(declare-fun lt!2669340 () Bool)

(assert (=> b!7750202 (= e!4594582 (not lt!2669340))))

(declare-fun b!7750203 () Bool)

(declare-fun res!3090390 () Bool)

(declare-fun e!4594581 () Bool)

(assert (=> b!7750203 (=> (not res!3090390) (not e!4594581))))

(assert (=> b!7750203 (= res!3090390 (isEmpty!42021 (tail!15370 s2!3963)))))

(declare-fun d!2342659 () Bool)

(declare-fun e!4594578 () Bool)

(assert (=> d!2342659 e!4594578))

(declare-fun c!1429416 () Bool)

(assert (=> d!2342659 (= c!1429416 ((_ is EmptyExpr!20607) lt!2669336))))

(declare-fun e!4594583 () Bool)

(assert (=> d!2342659 (= lt!2669340 e!4594583)))

(declare-fun c!1429414 () Bool)

(assert (=> d!2342659 (= c!1429414 (isEmpty!42021 s2!3963))))

(assert (=> d!2342659 (validRegex!11025 lt!2669336)))

(assert (=> d!2342659 (= (matchR!10097 lt!2669336 s2!3963) lt!2669340)))

(declare-fun b!7750204 () Bool)

(declare-fun e!4594580 () Bool)

(declare-fun e!4594577 () Bool)

(assert (=> b!7750204 (= e!4594580 e!4594577)))

(declare-fun res!3090393 () Bool)

(assert (=> b!7750204 (=> res!3090393 e!4594577)))

(declare-fun call!718260 () Bool)

(assert (=> b!7750204 (= res!3090393 call!718260)))

(declare-fun b!7750205 () Bool)

(assert (=> b!7750205 (= e!4594583 (matchR!10097 (derivativeStep!6030 lt!2669336 (head!15830 s2!3963)) (tail!15370 s2!3963)))))

(declare-fun bm!718255 () Bool)

(assert (=> bm!718255 (= call!718260 (isEmpty!42021 s2!3963))))

(declare-fun b!7750206 () Bool)

(declare-fun res!3090392 () Bool)

(assert (=> b!7750206 (=> (not res!3090392) (not e!4594581))))

(assert (=> b!7750206 (= res!3090392 (not call!718260))))

(declare-fun b!7750207 () Bool)

(assert (=> b!7750207 (= e!4594578 e!4594582)))

(declare-fun c!1429415 () Bool)

(assert (=> b!7750207 (= c!1429415 ((_ is EmptyLang!20607) lt!2669336))))

(declare-fun b!7750208 () Bool)

(assert (=> b!7750208 (= e!4594581 (= (head!15830 s2!3963) (c!1429388 lt!2669336)))))

(declare-fun b!7750209 () Bool)

(declare-fun res!3090396 () Bool)

(declare-fun e!4594579 () Bool)

(assert (=> b!7750209 (=> res!3090396 e!4594579)))

(assert (=> b!7750209 (= res!3090396 (not ((_ is ElementMatch!20607) lt!2669336)))))

(assert (=> b!7750209 (= e!4594582 e!4594579)))

(declare-fun b!7750210 () Bool)

(assert (=> b!7750210 (= e!4594583 (nullable!9073 lt!2669336))))

(declare-fun b!7750211 () Bool)

(declare-fun res!3090395 () Bool)

(assert (=> b!7750211 (=> res!3090395 e!4594579)))

(assert (=> b!7750211 (= res!3090395 e!4594581)))

(declare-fun res!3090394 () Bool)

(assert (=> b!7750211 (=> (not res!3090394) (not e!4594581))))

(assert (=> b!7750211 (= res!3090394 lt!2669340)))

(declare-fun b!7750212 () Bool)

(assert (=> b!7750212 (= e!4594577 (not (= (head!15830 s2!3963) (c!1429388 lt!2669336))))))

(declare-fun b!7750213 () Bool)

(assert (=> b!7750213 (= e!4594579 e!4594580)))

(declare-fun res!3090391 () Bool)

(assert (=> b!7750213 (=> (not res!3090391) (not e!4594580))))

(assert (=> b!7750213 (= res!3090391 (not lt!2669340))))

(declare-fun b!7750214 () Bool)

(assert (=> b!7750214 (= e!4594578 (= lt!2669340 call!718260))))

(declare-fun b!7750215 () Bool)

(declare-fun res!3090389 () Bool)

(assert (=> b!7750215 (=> res!3090389 e!4594577)))

(assert (=> b!7750215 (= res!3090389 (not (isEmpty!42021 (tail!15370 s2!3963))))))

(assert (= (and d!2342659 c!1429414) b!7750210))

(assert (= (and d!2342659 (not c!1429414)) b!7750205))

(assert (= (and d!2342659 c!1429416) b!7750214))

(assert (= (and d!2342659 (not c!1429416)) b!7750207))

(assert (= (and b!7750207 c!1429415) b!7750202))

(assert (= (and b!7750207 (not c!1429415)) b!7750209))

(assert (= (and b!7750209 (not res!3090396)) b!7750211))

(assert (= (and b!7750211 res!3090394) b!7750206))

(assert (= (and b!7750206 res!3090392) b!7750203))

(assert (= (and b!7750203 res!3090390) b!7750208))

(assert (= (and b!7750211 (not res!3090395)) b!7750213))

(assert (= (and b!7750213 res!3090391) b!7750204))

(assert (= (and b!7750204 (not res!3090393)) b!7750215))

(assert (= (and b!7750215 (not res!3090389)) b!7750212))

(assert (= (or b!7750214 b!7750204 b!7750206) bm!718255))

(declare-fun m!8216396 () Bool)

(assert (=> b!7750203 m!8216396))

(assert (=> b!7750203 m!8216396))

(declare-fun m!8216398 () Bool)

(assert (=> b!7750203 m!8216398))

(declare-fun m!8216400 () Bool)

(assert (=> bm!718255 m!8216400))

(assert (=> d!2342659 m!8216400))

(assert (=> d!2342659 m!8216350))

(declare-fun m!8216402 () Bool)

(assert (=> b!7750210 m!8216402))

(assert (=> b!7750215 m!8216396))

(assert (=> b!7750215 m!8216396))

(assert (=> b!7750215 m!8216398))

(declare-fun m!8216404 () Bool)

(assert (=> b!7750208 m!8216404))

(assert (=> b!7750212 m!8216404))

(assert (=> b!7750205 m!8216404))

(assert (=> b!7750205 m!8216404))

(declare-fun m!8216406 () Bool)

(assert (=> b!7750205 m!8216406))

(assert (=> b!7750205 m!8216396))

(assert (=> b!7750205 m!8216406))

(assert (=> b!7750205 m!8216396))

(declare-fun m!8216408 () Bool)

(assert (=> b!7750205 m!8216408))

(assert (=> b!7750079 d!2342659))

(declare-fun e!4594586 () Bool)

(assert (=> b!7750086 (= tp!2273778 e!4594586)))

(declare-fun b!7750227 () Bool)

(declare-fun tp!2273792 () Bool)

(declare-fun tp!2273796 () Bool)

(assert (=> b!7750227 (= e!4594586 (and tp!2273792 tp!2273796))))

(declare-fun b!7750228 () Bool)

(declare-fun tp!2273794 () Bool)

(assert (=> b!7750228 (= e!4594586 tp!2273794)))

(declare-fun b!7750226 () Bool)

(assert (=> b!7750226 (= e!4594586 tp_is_empty!51569)))

(declare-fun b!7750229 () Bool)

(declare-fun tp!2273793 () Bool)

(declare-fun tp!2273795 () Bool)

(assert (=> b!7750229 (= e!4594586 (and tp!2273793 tp!2273795))))

(assert (= (and b!7750086 ((_ is ElementMatch!20607) (regOne!41727 r!25892))) b!7750226))

(assert (= (and b!7750086 ((_ is Concat!29452) (regOne!41727 r!25892))) b!7750227))

(assert (= (and b!7750086 ((_ is Star!20607) (regOne!41727 r!25892))) b!7750228))

(assert (= (and b!7750086 ((_ is Union!20607) (regOne!41727 r!25892))) b!7750229))

(declare-fun e!4594587 () Bool)

(assert (=> b!7750086 (= tp!2273776 e!4594587)))

(declare-fun b!7750231 () Bool)

(declare-fun tp!2273797 () Bool)

(declare-fun tp!2273801 () Bool)

(assert (=> b!7750231 (= e!4594587 (and tp!2273797 tp!2273801))))

(declare-fun b!7750232 () Bool)

(declare-fun tp!2273799 () Bool)

(assert (=> b!7750232 (= e!4594587 tp!2273799)))

(declare-fun b!7750230 () Bool)

(assert (=> b!7750230 (= e!4594587 tp_is_empty!51569)))

(declare-fun b!7750233 () Bool)

(declare-fun tp!2273798 () Bool)

(declare-fun tp!2273800 () Bool)

(assert (=> b!7750233 (= e!4594587 (and tp!2273798 tp!2273800))))

(assert (= (and b!7750086 ((_ is ElementMatch!20607) (regTwo!41727 r!25892))) b!7750230))

(assert (= (and b!7750086 ((_ is Concat!29452) (regTwo!41727 r!25892))) b!7750231))

(assert (= (and b!7750086 ((_ is Star!20607) (regTwo!41727 r!25892))) b!7750232))

(assert (= (and b!7750086 ((_ is Union!20607) (regTwo!41727 r!25892))) b!7750233))

(declare-fun b!7750238 () Bool)

(declare-fun e!4594590 () Bool)

(declare-fun tp!2273804 () Bool)

(assert (=> b!7750238 (= e!4594590 (and tp_is_empty!51569 tp!2273804))))

(assert (=> b!7750083 (= tp!2273780 e!4594590)))

(assert (= (and b!7750083 ((_ is Cons!73328) (t!388187 s1!4391))) b!7750238))

(declare-fun e!4594591 () Bool)

(assert (=> b!7750082 (= tp!2273775 e!4594591)))

(declare-fun b!7750240 () Bool)

(declare-fun tp!2273805 () Bool)

(declare-fun tp!2273809 () Bool)

(assert (=> b!7750240 (= e!4594591 (and tp!2273805 tp!2273809))))

(declare-fun b!7750241 () Bool)

(declare-fun tp!2273807 () Bool)

(assert (=> b!7750241 (= e!4594591 tp!2273807)))

(declare-fun b!7750239 () Bool)

(assert (=> b!7750239 (= e!4594591 tp_is_empty!51569)))

(declare-fun b!7750242 () Bool)

(declare-fun tp!2273806 () Bool)

(declare-fun tp!2273808 () Bool)

(assert (=> b!7750242 (= e!4594591 (and tp!2273806 tp!2273808))))

(assert (= (and b!7750082 ((_ is ElementMatch!20607) (reg!20936 r!25892))) b!7750239))

(assert (= (and b!7750082 ((_ is Concat!29452) (reg!20936 r!25892))) b!7750240))

(assert (= (and b!7750082 ((_ is Star!20607) (reg!20936 r!25892))) b!7750241))

(assert (= (and b!7750082 ((_ is Union!20607) (reg!20936 r!25892))) b!7750242))

(declare-fun e!4594592 () Bool)

(assert (=> b!7750078 (= tp!2273781 e!4594592)))

(declare-fun b!7750244 () Bool)

(declare-fun tp!2273810 () Bool)

(declare-fun tp!2273814 () Bool)

(assert (=> b!7750244 (= e!4594592 (and tp!2273810 tp!2273814))))

(declare-fun b!7750245 () Bool)

(declare-fun tp!2273812 () Bool)

(assert (=> b!7750245 (= e!4594592 tp!2273812)))

(declare-fun b!7750243 () Bool)

(assert (=> b!7750243 (= e!4594592 tp_is_empty!51569)))

(declare-fun b!7750246 () Bool)

(declare-fun tp!2273811 () Bool)

(declare-fun tp!2273813 () Bool)

(assert (=> b!7750246 (= e!4594592 (and tp!2273811 tp!2273813))))

(assert (= (and b!7750078 ((_ is ElementMatch!20607) (regOne!41726 r!25892))) b!7750243))

(assert (= (and b!7750078 ((_ is Concat!29452) (regOne!41726 r!25892))) b!7750244))

(assert (= (and b!7750078 ((_ is Star!20607) (regOne!41726 r!25892))) b!7750245))

(assert (= (and b!7750078 ((_ is Union!20607) (regOne!41726 r!25892))) b!7750246))

(declare-fun e!4594593 () Bool)

(assert (=> b!7750078 (= tp!2273777 e!4594593)))

(declare-fun b!7750248 () Bool)

(declare-fun tp!2273815 () Bool)

(declare-fun tp!2273819 () Bool)

(assert (=> b!7750248 (= e!4594593 (and tp!2273815 tp!2273819))))

(declare-fun b!7750249 () Bool)

(declare-fun tp!2273817 () Bool)

(assert (=> b!7750249 (= e!4594593 tp!2273817)))

(declare-fun b!7750247 () Bool)

(assert (=> b!7750247 (= e!4594593 tp_is_empty!51569)))

(declare-fun b!7750250 () Bool)

(declare-fun tp!2273816 () Bool)

(declare-fun tp!2273818 () Bool)

(assert (=> b!7750250 (= e!4594593 (and tp!2273816 tp!2273818))))

(assert (= (and b!7750078 ((_ is ElementMatch!20607) (regTwo!41726 r!25892))) b!7750247))

(assert (= (and b!7750078 ((_ is Concat!29452) (regTwo!41726 r!25892))) b!7750248))

(assert (= (and b!7750078 ((_ is Star!20607) (regTwo!41726 r!25892))) b!7750249))

(assert (= (and b!7750078 ((_ is Union!20607) (regTwo!41726 r!25892))) b!7750250))

(declare-fun b!7750251 () Bool)

(declare-fun e!4594594 () Bool)

(declare-fun tp!2273820 () Bool)

(assert (=> b!7750251 (= e!4594594 (and tp_is_empty!51569 tp!2273820))))

(assert (=> b!7750080 (= tp!2273779 e!4594594)))

(assert (= (and b!7750080 ((_ is Cons!73328) (t!388187 s2!3963))) b!7750251))

(check-sat (not bm!718250) (not b!7750142) (not bm!718255) (not b!7750208) (not bm!718253) (not d!2342659) (not b!7750232) (not b!7750147) tp_is_empty!51569 (not b!7750245) (not b!7750241) (not b!7750249) (not b!7750240) (not b!7750251) (not bm!718254) (not b!7750205) (not b!7750228) (not b!7750246) (not b!7750238) (not b!7750227) (not b!7750231) (not b!7750140) (not b!7750242) (not d!2342647) (not b!7750229) (not bm!718236) (not b!7750200) (not b!7750250) (not b!7750244) (not b!7750203) (not bm!718251) (not b!7750210) (not b!7750135) (not b!7750191) (not b!7750137) (not b!7750233) (not b!7750212) (not b!7750215) (not b!7750248) (not b!7750144))
(check-sat)
