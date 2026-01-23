; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!235402 () Bool)

(assert start!235402)

(declare-fun b!2399105 () Bool)

(declare-fun e!1528617 () Bool)

(declare-fun tp!763528 () Bool)

(assert (=> b!2399105 (= e!1528617 tp!763528)))

(declare-fun b!2399106 () Bool)

(declare-fun res!1019409 () Bool)

(declare-fun e!1528618 () Bool)

(assert (=> b!2399106 (=> (not res!1019409) (not e!1528618))))

(declare-datatypes ((C!14214 0))(
  ( (C!14215 (val!8349 Int)) )
))
(declare-datatypes ((Regex!7028 0))(
  ( (ElementMatch!7028 (c!381940 C!14214)) (Concat!11664 (regOne!14568 Regex!7028) (regTwo!14568 Regex!7028)) (EmptyExpr!7028) (Star!7028 (reg!7357 Regex!7028)) (EmptyLang!7028) (Union!7028 (regOne!14569 Regex!7028) (regTwo!14569 Regex!7028)) )
))
(declare-fun r!13927 () Regex!7028)

(declare-datatypes ((List!28294 0))(
  ( (Nil!28196) (Cons!28196 (h!33597 Regex!7028) (t!208271 List!28294)) )
))
(declare-fun l!9164 () List!28294)

(declare-fun generalisedConcat!129 (List!28294) Regex!7028)

(assert (=> b!2399106 (= res!1019409 (= r!13927 (generalisedConcat!129 l!9164)))))

(declare-fun b!2399107 () Bool)

(declare-fun tp!763531 () Bool)

(declare-fun tp!763529 () Bool)

(assert (=> b!2399107 (= e!1528617 (and tp!763531 tp!763529))))

(declare-fun b!2399108 () Bool)

(declare-fun tp_is_empty!11469 () Bool)

(assert (=> b!2399108 (= e!1528617 tp_is_empty!11469)))

(declare-fun b!2399109 () Bool)

(declare-fun e!1528615 () Bool)

(declare-fun validRegex!2753 (Regex!7028) Bool)

(assert (=> b!2399109 (= e!1528615 (validRegex!2753 r!13927))))

(declare-fun b!2399110 () Bool)

(declare-fun e!1528619 () Bool)

(declare-fun tp!763527 () Bool)

(assert (=> b!2399110 (= e!1528619 (and tp_is_empty!11469 tp!763527))))

(declare-fun res!1019408 () Bool)

(assert (=> start!235402 (=> (not res!1019408) (not e!1528618))))

(declare-fun lambda!90136 () Int)

(declare-fun forall!5662 (List!28294 Int) Bool)

(assert (=> start!235402 (= res!1019408 (forall!5662 l!9164 lambda!90136))))

(assert (=> start!235402 e!1528618))

(declare-fun e!1528616 () Bool)

(assert (=> start!235402 e!1528616))

(assert (=> start!235402 e!1528617))

(assert (=> start!235402 e!1528619))

(declare-fun b!2399111 () Bool)

(assert (=> b!2399111 (= e!1528618 (not e!1528615))))

(declare-fun res!1019407 () Bool)

(assert (=> b!2399111 (=> res!1019407 e!1528615)))

(assert (=> b!2399111 (= res!1019407 (or (is-Concat!11664 r!13927) (not (is-EmptyExpr!7028 r!13927)) (not (is-Cons!28196 l!9164))))))

(declare-datatypes ((List!28295 0))(
  ( (Nil!28197) (Cons!28197 (h!33598 C!14214) (t!208272 List!28295)) )
))
(declare-fun s!9460 () List!28295)

(declare-fun matchR!3145 (Regex!7028 List!28295) Bool)

(declare-fun matchRSpec!877 (Regex!7028 List!28295) Bool)

(assert (=> b!2399111 (= (matchR!3145 r!13927 s!9460) (matchRSpec!877 r!13927 s!9460))))

(declare-datatypes ((Unit!41327 0))(
  ( (Unit!41328) )
))
(declare-fun lt!872431 () Unit!41327)

(declare-fun mainMatchTheorem!877 (Regex!7028 List!28295) Unit!41327)

(assert (=> b!2399111 (= lt!872431 (mainMatchTheorem!877 r!13927 s!9460))))

(declare-fun b!2399112 () Bool)

(declare-fun tp!763530 () Bool)

(declare-fun tp!763526 () Bool)

(assert (=> b!2399112 (= e!1528616 (and tp!763530 tp!763526))))

(declare-fun b!2399113 () Bool)

(declare-fun tp!763524 () Bool)

(declare-fun tp!763525 () Bool)

(assert (=> b!2399113 (= e!1528617 (and tp!763524 tp!763525))))

(assert (= (and start!235402 res!1019408) b!2399106))

(assert (= (and b!2399106 res!1019409) b!2399111))

(assert (= (and b!2399111 (not res!1019407)) b!2399109))

(assert (= (and start!235402 (is-Cons!28196 l!9164)) b!2399112))

(assert (= (and start!235402 (is-ElementMatch!7028 r!13927)) b!2399108))

(assert (= (and start!235402 (is-Concat!11664 r!13927)) b!2399107))

(assert (= (and start!235402 (is-Star!7028 r!13927)) b!2399105))

(assert (= (and start!235402 (is-Union!7028 r!13927)) b!2399113))

(assert (= (and start!235402 (is-Cons!28197 s!9460)) b!2399110))

(declare-fun m!2797275 () Bool)

(assert (=> b!2399106 m!2797275))

(declare-fun m!2797277 () Bool)

(assert (=> b!2399109 m!2797277))

(declare-fun m!2797279 () Bool)

(assert (=> start!235402 m!2797279))

(declare-fun m!2797281 () Bool)

(assert (=> b!2399111 m!2797281))

(declare-fun m!2797283 () Bool)

(assert (=> b!2399111 m!2797283))

(declare-fun m!2797285 () Bool)

(assert (=> b!2399111 m!2797285))

(push 1)

(assert (not b!2399105))

(assert (not b!2399107))

(assert (not start!235402))

(assert (not b!2399112))

(assert (not b!2399111))

(assert (not b!2399110))

(assert (not b!2399106))

(assert tp_is_empty!11469)

(assert (not b!2399109))

(assert (not b!2399113))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun bs!463101 () Bool)

(declare-fun d!699523 () Bool)

(assert (= bs!463101 (and d!699523 start!235402)))

(declare-fun lambda!90142 () Int)

(assert (=> bs!463101 (= lambda!90142 lambda!90136)))

(declare-fun b!2399161 () Bool)

(declare-fun e!1528649 () Bool)

(declare-fun e!1528647 () Bool)

(assert (=> b!2399161 (= e!1528649 e!1528647)))

(declare-fun c!381953 () Bool)

(declare-fun isEmpty!16193 (List!28294) Bool)

(assert (=> b!2399161 (= c!381953 (isEmpty!16193 l!9164))))

(declare-fun b!2399162 () Bool)

(declare-fun e!1528648 () Regex!7028)

(assert (=> b!2399162 (= e!1528648 (h!33597 l!9164))))

(declare-fun b!2399163 () Bool)

(declare-fun e!1528650 () Bool)

(assert (=> b!2399163 (= e!1528647 e!1528650)))

(declare-fun c!381952 () Bool)

(declare-fun tail!3558 (List!28294) List!28294)

(assert (=> b!2399163 (= c!381952 (isEmpty!16193 (tail!3558 l!9164)))))

(declare-fun b!2399164 () Bool)

(declare-fun e!1528652 () Bool)

(assert (=> b!2399164 (= e!1528652 (isEmpty!16193 (t!208271 l!9164)))))

(declare-fun b!2399165 () Bool)

(declare-fun e!1528651 () Regex!7028)

(assert (=> b!2399165 (= e!1528651 EmptyExpr!7028)))

(declare-fun b!2399166 () Bool)

(declare-fun lt!872437 () Regex!7028)

(declare-fun isConcat!98 (Regex!7028) Bool)

(assert (=> b!2399166 (= e!1528650 (isConcat!98 lt!872437))))

(declare-fun b!2399167 () Bool)

(declare-fun isEmptyExpr!98 (Regex!7028) Bool)

(assert (=> b!2399167 (= e!1528647 (isEmptyExpr!98 lt!872437))))

(declare-fun b!2399168 () Bool)

(assert (=> b!2399168 (= e!1528648 e!1528651)))

(declare-fun c!381951 () Bool)

(assert (=> b!2399168 (= c!381951 (is-Cons!28196 l!9164))))

(assert (=> d!699523 e!1528649))

(declare-fun res!1019423 () Bool)

(assert (=> d!699523 (=> (not res!1019423) (not e!1528649))))

(assert (=> d!699523 (= res!1019423 (validRegex!2753 lt!872437))))

(assert (=> d!699523 (= lt!872437 e!1528648)))

(declare-fun c!381950 () Bool)

(assert (=> d!699523 (= c!381950 e!1528652)))

(declare-fun res!1019424 () Bool)

(assert (=> d!699523 (=> (not res!1019424) (not e!1528652))))

(assert (=> d!699523 (= res!1019424 (is-Cons!28196 l!9164))))

(assert (=> d!699523 (forall!5662 l!9164 lambda!90142)))

(assert (=> d!699523 (= (generalisedConcat!129 l!9164) lt!872437)))

(declare-fun b!2399169 () Bool)

(declare-fun head!5288 (List!28294) Regex!7028)

(assert (=> b!2399169 (= e!1528650 (= lt!872437 (head!5288 l!9164)))))

(declare-fun b!2399170 () Bool)

(assert (=> b!2399170 (= e!1528651 (Concat!11664 (h!33597 l!9164) (generalisedConcat!129 (t!208271 l!9164))))))

(assert (= (and d!699523 res!1019424) b!2399164))

(assert (= (and d!699523 c!381950) b!2399162))

(assert (= (and d!699523 (not c!381950)) b!2399168))

(assert (= (and b!2399168 c!381951) b!2399170))

(assert (= (and b!2399168 (not c!381951)) b!2399165))

(assert (= (and d!699523 res!1019423) b!2399161))

(assert (= (and b!2399161 c!381953) b!2399167))

(assert (= (and b!2399161 (not c!381953)) b!2399163))

(assert (= (and b!2399163 c!381952) b!2399169))

(assert (= (and b!2399163 (not c!381952)) b!2399166))

(declare-fun m!2797299 () Bool)

(assert (=> b!2399163 m!2797299))

(assert (=> b!2399163 m!2797299))

(declare-fun m!2797301 () Bool)

(assert (=> b!2399163 m!2797301))

(declare-fun m!2797303 () Bool)

(assert (=> b!2399166 m!2797303))

(declare-fun m!2797305 () Bool)

(assert (=> b!2399169 m!2797305))

(declare-fun m!2797307 () Bool)

(assert (=> b!2399170 m!2797307))

(declare-fun m!2797309 () Bool)

(assert (=> d!699523 m!2797309))

(declare-fun m!2797311 () Bool)

(assert (=> d!699523 m!2797311))

(declare-fun m!2797313 () Bool)

(assert (=> b!2399167 m!2797313))

(declare-fun m!2797315 () Bool)

(assert (=> b!2399161 m!2797315))

(declare-fun m!2797317 () Bool)

(assert (=> b!2399164 m!2797317))

(assert (=> b!2399106 d!699523))

(declare-fun b!2399199 () Bool)

(declare-fun res!1019447 () Bool)

(declare-fun e!1528673 () Bool)

(assert (=> b!2399199 (=> res!1019447 e!1528673)))

(declare-fun e!1528668 () Bool)

(assert (=> b!2399199 (= res!1019447 e!1528668)))

(declare-fun res!1019446 () Bool)

(assert (=> b!2399199 (=> (not res!1019446) (not e!1528668))))

(declare-fun lt!872440 () Bool)

(assert (=> b!2399199 (= res!1019446 lt!872440)))

(declare-fun b!2399200 () Bool)

(declare-fun e!1528670 () Bool)

(assert (=> b!2399200 (= e!1528670 (not lt!872440))))

(declare-fun bm!146532 () Bool)

(declare-fun call!146537 () Bool)

(declare-fun isEmpty!16194 (List!28295) Bool)

(assert (=> bm!146532 (= call!146537 (isEmpty!16194 s!9460))))

(declare-fun b!2399201 () Bool)

(declare-fun e!1528669 () Bool)

(assert (=> b!2399201 (= e!1528673 e!1528669)))

(declare-fun res!1019448 () Bool)

(assert (=> b!2399201 (=> (not res!1019448) (not e!1528669))))

(assert (=> b!2399201 (= res!1019448 (not lt!872440))))

(declare-fun b!2399203 () Bool)

(declare-fun e!1528671 () Bool)

(declare-fun head!5289 (List!28295) C!14214)

(assert (=> b!2399203 (= e!1528671 (not (= (head!5289 s!9460) (c!381940 r!13927))))))

(declare-fun b!2399204 () Bool)

(assert (=> b!2399204 (= e!1528669 e!1528671)))

(declare-fun res!1019444 () Bool)

(assert (=> b!2399204 (=> res!1019444 e!1528671)))

(assert (=> b!2399204 (= res!1019444 call!146537)))

(declare-fun b!2399205 () Bool)

(declare-fun e!1528667 () Bool)

(assert (=> b!2399205 (= e!1528667 (= lt!872440 call!146537))))

(declare-fun b!2399206 () Bool)

(declare-fun res!1019443 () Bool)

(assert (=> b!2399206 (=> (not res!1019443) (not e!1528668))))

(declare-fun tail!3559 (List!28295) List!28295)

(assert (=> b!2399206 (= res!1019443 (isEmpty!16194 (tail!3559 s!9460)))))

(declare-fun b!2399207 () Bool)

(declare-fun res!1019445 () Bool)

(assert (=> b!2399207 (=> (not res!1019445) (not e!1528668))))

(assert (=> b!2399207 (= res!1019445 (not call!146537))))

(declare-fun b!2399208 () Bool)

(assert (=> b!2399208 (= e!1528668 (= (head!5289 s!9460) (c!381940 r!13927)))))

(declare-fun b!2399209 () Bool)

(declare-fun res!1019442 () Bool)

(assert (=> b!2399209 (=> res!1019442 e!1528673)))

(assert (=> b!2399209 (= res!1019442 (not (is-ElementMatch!7028 r!13927)))))

(assert (=> b!2399209 (= e!1528670 e!1528673)))

(declare-fun b!2399210 () Bool)

(declare-fun e!1528672 () Bool)

(declare-fun nullable!2077 (Regex!7028) Bool)

(assert (=> b!2399210 (= e!1528672 (nullable!2077 r!13927))))

(declare-fun b!2399211 () Bool)

(assert (=> b!2399211 (= e!1528667 e!1528670)))

(declare-fun c!381960 () Bool)

(assert (=> b!2399211 (= c!381960 (is-EmptyLang!7028 r!13927))))

(declare-fun b!2399212 () Bool)

(declare-fun res!1019441 () Bool)

(assert (=> b!2399212 (=> res!1019441 e!1528671)))

(assert (=> b!2399212 (= res!1019441 (not (isEmpty!16194 (tail!3559 s!9460))))))

(declare-fun d!699525 () Bool)

(assert (=> d!699525 e!1528667))

(declare-fun c!381962 () Bool)

(assert (=> d!699525 (= c!381962 (is-EmptyExpr!7028 r!13927))))

(assert (=> d!699525 (= lt!872440 e!1528672)))

(declare-fun c!381961 () Bool)

(assert (=> d!699525 (= c!381961 (isEmpty!16194 s!9460))))

(assert (=> d!699525 (validRegex!2753 r!13927)))

(assert (=> d!699525 (= (matchR!3145 r!13927 s!9460) lt!872440)))

(declare-fun b!2399202 () Bool)

(declare-fun derivativeStep!1735 (Regex!7028 C!14214) Regex!7028)

(assert (=> b!2399202 (= e!1528672 (matchR!3145 (derivativeStep!1735 r!13927 (head!5289 s!9460)) (tail!3559 s!9460)))))

(assert (= (and d!699525 c!381961) b!2399210))

(assert (= (and d!699525 (not c!381961)) b!2399202))

(assert (= (and d!699525 c!381962) b!2399205))

(assert (= (and d!699525 (not c!381962)) b!2399211))

(assert (= (and b!2399211 c!381960) b!2399200))

(assert (= (and b!2399211 (not c!381960)) b!2399209))

(assert (= (and b!2399209 (not res!1019442)) b!2399199))

(assert (= (and b!2399199 res!1019446) b!2399207))

(assert (= (and b!2399207 res!1019445) b!2399206))

(assert (= (and b!2399206 res!1019443) b!2399208))

(assert (= (and b!2399199 (not res!1019447)) b!2399201))

(assert (= (and b!2399201 res!1019448) b!2399204))

(assert (= (and b!2399204 (not res!1019444)) b!2399212))

(assert (= (and b!2399212 (not res!1019441)) b!2399203))

(assert (= (or b!2399205 b!2399204 b!2399207) bm!146532))

(declare-fun m!2797319 () Bool)

(assert (=> b!2399212 m!2797319))

(assert (=> b!2399212 m!2797319))

(declare-fun m!2797321 () Bool)

(assert (=> b!2399212 m!2797321))

(declare-fun m!2797323 () Bool)

(assert (=> b!2399202 m!2797323))

(assert (=> b!2399202 m!2797323))

(declare-fun m!2797325 () Bool)

(assert (=> b!2399202 m!2797325))

(assert (=> b!2399202 m!2797319))

(assert (=> b!2399202 m!2797325))

(assert (=> b!2399202 m!2797319))

(declare-fun m!2797327 () Bool)

(assert (=> b!2399202 m!2797327))

(assert (=> b!2399208 m!2797323))

(assert (=> b!2399206 m!2797319))

(assert (=> b!2399206 m!2797319))

(assert (=> b!2399206 m!2797321))

(declare-fun m!2797329 () Bool)

(assert (=> b!2399210 m!2797329))

(declare-fun m!2797331 () Bool)

(assert (=> d!699525 m!2797331))

(assert (=> d!699525 m!2797277))

(assert (=> b!2399203 m!2797323))

(assert (=> bm!146532 m!2797331))

(assert (=> b!2399111 d!699525))

(declare-fun b!2399273 () Bool)

(assert (=> b!2399273 true))

(assert (=> b!2399273 true))

(declare-fun bs!463102 () Bool)

(declare-fun b!2399278 () Bool)

(assert (= bs!463102 (and b!2399278 b!2399273)))

(declare-fun lambda!90148 () Int)

(declare-fun lambda!90147 () Int)

(assert (=> bs!463102 (not (= lambda!90148 lambda!90147))))

(assert (=> b!2399278 true))

(assert (=> b!2399278 true))

(declare-fun d!699529 () Bool)

(declare-fun c!381978 () Bool)

(assert (=> d!699529 (= c!381978 (is-EmptyExpr!7028 r!13927))))

(declare-fun e!1528707 () Bool)

(assert (=> d!699529 (= (matchRSpec!877 r!13927 s!9460) e!1528707)))

(declare-fun e!1528710 () Bool)

(declare-fun call!146544 () Bool)

(assert (=> b!2399273 (= e!1528710 call!146544)))

(declare-fun b!2399274 () Bool)

(declare-fun e!1528709 () Bool)

(declare-fun e!1528706 () Bool)

(assert (=> b!2399274 (= e!1528709 e!1528706)))

(declare-fun c!381980 () Bool)

(assert (=> b!2399274 (= c!381980 (is-Star!7028 r!13927))))

(declare-fun b!2399275 () Bool)

(declare-fun e!1528708 () Bool)

(assert (=> b!2399275 (= e!1528709 e!1528708)))

(declare-fun res!1019481 () Bool)

(assert (=> b!2399275 (= res!1019481 (matchRSpec!877 (regOne!14569 r!13927) s!9460))))

(assert (=> b!2399275 (=> res!1019481 e!1528708)))

(declare-fun bm!146539 () Bool)

(declare-fun Exists!1090 (Int) Bool)

(assert (=> bm!146539 (= call!146544 (Exists!1090 (ite c!381980 lambda!90147 lambda!90148)))))

(declare-fun b!2399276 () Bool)

(declare-fun e!1528711 () Bool)

(assert (=> b!2399276 (= e!1528711 (= s!9460 (Cons!28197 (c!381940 r!13927) Nil!28197)))))

(declare-fun b!2399277 () Bool)

(declare-fun res!1019482 () Bool)

(assert (=> b!2399277 (=> res!1019482 e!1528710)))

(declare-fun call!146545 () Bool)

(assert (=> b!2399277 (= res!1019482 call!146545)))

(assert (=> b!2399277 (= e!1528706 e!1528710)))

(declare-fun bm!146540 () Bool)

(assert (=> bm!146540 (= call!146545 (isEmpty!16194 s!9460))))

(assert (=> b!2399278 (= e!1528706 call!146544)))

(declare-fun b!2399279 () Bool)

(declare-fun c!381977 () Bool)

(assert (=> b!2399279 (= c!381977 (is-ElementMatch!7028 r!13927))))

(declare-fun e!1528712 () Bool)

(assert (=> b!2399279 (= e!1528712 e!1528711)))

(declare-fun b!2399280 () Bool)

(assert (=> b!2399280 (= e!1528707 call!146545)))

(declare-fun b!2399281 () Bool)

(assert (=> b!2399281 (= e!1528707 e!1528712)))

(declare-fun res!1019483 () Bool)

(assert (=> b!2399281 (= res!1019483 (not (is-EmptyLang!7028 r!13927)))))

(assert (=> b!2399281 (=> (not res!1019483) (not e!1528712))))

(declare-fun b!2399282 () Bool)

(assert (=> b!2399282 (= e!1528708 (matchRSpec!877 (regTwo!14569 r!13927) s!9460))))

(declare-fun b!2399283 () Bool)

(declare-fun c!381979 () Bool)

(assert (=> b!2399283 (= c!381979 (is-Union!7028 r!13927))))

(assert (=> b!2399283 (= e!1528711 e!1528709)))

(assert (= (and d!699529 c!381978) b!2399280))

(assert (= (and d!699529 (not c!381978)) b!2399281))

(assert (= (and b!2399281 res!1019483) b!2399279))

(assert (= (and b!2399279 c!381977) b!2399276))

(assert (= (and b!2399279 (not c!381977)) b!2399283))

(assert (= (and b!2399283 c!381979) b!2399275))

(assert (= (and b!2399283 (not c!381979)) b!2399274))

(assert (= (and b!2399275 (not res!1019481)) b!2399282))

(assert (= (and b!2399274 c!381980) b!2399277))

(assert (= (and b!2399274 (not c!381980)) b!2399278))

(assert (= (and b!2399277 (not res!1019482)) b!2399273))

(assert (= (or b!2399273 b!2399278) bm!146539))

(assert (= (or b!2399280 b!2399277) bm!146540))

(declare-fun m!2797333 () Bool)

(assert (=> b!2399275 m!2797333))

(declare-fun m!2797335 () Bool)

(assert (=> bm!146539 m!2797335))

(assert (=> bm!146540 m!2797331))

(declare-fun m!2797337 () Bool)

(assert (=> b!2399282 m!2797337))

(assert (=> b!2399111 d!699529))

(declare-fun d!699531 () Bool)

(assert (=> d!699531 (= (matchR!3145 r!13927 s!9460) (matchRSpec!877 r!13927 s!9460))))

(declare-fun lt!872446 () Unit!41327)

(declare-fun choose!14209 (Regex!7028 List!28295) Unit!41327)

(assert (=> d!699531 (= lt!872446 (choose!14209 r!13927 s!9460))))

(assert (=> d!699531 (validRegex!2753 r!13927)))

(assert (=> d!699531 (= (mainMatchTheorem!877 r!13927 s!9460) lt!872446)))

(declare-fun bs!463103 () Bool)

(assert (= bs!463103 d!699531))

(assert (=> bs!463103 m!2797281))

(assert (=> bs!463103 m!2797283))

(declare-fun m!2797339 () Bool)

(assert (=> bs!463103 m!2797339))

(assert (=> bs!463103 m!2797277))

(assert (=> b!2399111 d!699531))

(declare-fun d!699533 () Bool)

(declare-fun res!1019496 () Bool)

(declare-fun e!1528724 () Bool)

(assert (=> d!699533 (=> res!1019496 e!1528724)))

(assert (=> d!699533 (= res!1019496 (is-Nil!28196 l!9164))))

(assert (=> d!699533 (= (forall!5662 l!9164 lambda!90136) e!1528724)))

(declare-fun b!2399306 () Bool)

(declare-fun e!1528725 () Bool)

(assert (=> b!2399306 (= e!1528724 e!1528725)))

(declare-fun res!1019497 () Bool)

(assert (=> b!2399306 (=> (not res!1019497) (not e!1528725))))

(declare-fun dynLambda!12143 (Int Regex!7028) Bool)

(assert (=> b!2399306 (= res!1019497 (dynLambda!12143 lambda!90136 (h!33597 l!9164)))))

(declare-fun b!2399307 () Bool)

(assert (=> b!2399307 (= e!1528725 (forall!5662 (t!208271 l!9164) lambda!90136))))

(assert (= (and d!699533 (not res!1019496)) b!2399306))

(assert (= (and b!2399306 res!1019497) b!2399307))

(declare-fun b_lambda!74283 () Bool)

(assert (=> (not b_lambda!74283) (not b!2399306)))

(declare-fun m!2797355 () Bool)

(assert (=> b!2399306 m!2797355))

(declare-fun m!2797357 () Bool)

(assert (=> b!2399307 m!2797357))

(assert (=> start!235402 d!699533))

(declare-fun bm!146548 () Bool)

(declare-fun call!146555 () Bool)

(declare-fun c!381988 () Bool)

(assert (=> bm!146548 (= call!146555 (validRegex!2753 (ite c!381988 (regTwo!14569 r!13927) (regOne!14568 r!13927))))))

(declare-fun b!2399326 () Bool)

(declare-fun res!1019510 () Bool)

(declare-fun e!1528744 () Bool)

(assert (=> b!2399326 (=> (not res!1019510) (not e!1528744))))

(declare-fun call!146554 () Bool)

(assert (=> b!2399326 (= res!1019510 call!146554)))

(declare-fun e!1528745 () Bool)

(assert (=> b!2399326 (= e!1528745 e!1528744)))

(declare-fun d!699537 () Bool)

(declare-fun res!1019512 () Bool)

(declare-fun e!1528746 () Bool)

(assert (=> d!699537 (=> res!1019512 e!1528746)))

(assert (=> d!699537 (= res!1019512 (is-ElementMatch!7028 r!13927))))

(assert (=> d!699537 (= (validRegex!2753 r!13927) e!1528746)))

(declare-fun b!2399327 () Bool)

(declare-fun e!1528743 () Bool)

(declare-fun e!1528742 () Bool)

(assert (=> b!2399327 (= e!1528743 e!1528742)))

(declare-fun res!1019509 () Bool)

(assert (=> b!2399327 (=> (not res!1019509) (not e!1528742))))

(assert (=> b!2399327 (= res!1019509 call!146555)))

(declare-fun bm!146549 () Bool)

(declare-fun c!381989 () Bool)

(declare-fun call!146553 () Bool)

(assert (=> bm!146549 (= call!146553 (validRegex!2753 (ite c!381989 (reg!7357 r!13927) (ite c!381988 (regOne!14569 r!13927) (regTwo!14568 r!13927)))))))

(declare-fun b!2399328 () Bool)

(declare-fun res!1019508 () Bool)

(assert (=> b!2399328 (=> res!1019508 e!1528743)))

(assert (=> b!2399328 (= res!1019508 (not (is-Concat!11664 r!13927)))))

(assert (=> b!2399328 (= e!1528745 e!1528743)))

(declare-fun bm!146550 () Bool)

(assert (=> bm!146550 (= call!146554 call!146553)))

(declare-fun b!2399329 () Bool)

(declare-fun e!1528741 () Bool)

(assert (=> b!2399329 (= e!1528741 call!146553)))

(declare-fun b!2399330 () Bool)

(assert (=> b!2399330 (= e!1528742 call!146554)))

(declare-fun b!2399331 () Bool)

(declare-fun e!1528740 () Bool)

(assert (=> b!2399331 (= e!1528746 e!1528740)))

(assert (=> b!2399331 (= c!381989 (is-Star!7028 r!13927))))

(declare-fun b!2399332 () Bool)

(assert (=> b!2399332 (= e!1528740 e!1528741)))

(declare-fun res!1019511 () Bool)

(assert (=> b!2399332 (= res!1019511 (not (nullable!2077 (reg!7357 r!13927))))))

(assert (=> b!2399332 (=> (not res!1019511) (not e!1528741))))

(declare-fun b!2399333 () Bool)

(assert (=> b!2399333 (= e!1528740 e!1528745)))

(assert (=> b!2399333 (= c!381988 (is-Union!7028 r!13927))))

(declare-fun b!2399334 () Bool)

(assert (=> b!2399334 (= e!1528744 call!146555)))

(assert (= (and d!699537 (not res!1019512)) b!2399331))

(assert (= (and b!2399331 c!381989) b!2399332))

(assert (= (and b!2399331 (not c!381989)) b!2399333))

(assert (= (and b!2399332 res!1019511) b!2399329))

(assert (= (and b!2399333 c!381988) b!2399326))

(assert (= (and b!2399333 (not c!381988)) b!2399328))

(assert (= (and b!2399326 res!1019510) b!2399334))

(assert (= (and b!2399328 (not res!1019508)) b!2399327))

(assert (= (and b!2399327 res!1019509) b!2399330))

(assert (= (or b!2399326 b!2399330) bm!146550))

(assert (= (or b!2399334 b!2399327) bm!146548))

(assert (= (or b!2399329 bm!146550) bm!146549))

(declare-fun m!2797359 () Bool)

(assert (=> bm!146548 m!2797359))

(declare-fun m!2797361 () Bool)

(assert (=> bm!146549 m!2797361))

(declare-fun m!2797363 () Bool)

(assert (=> b!2399332 m!2797363))

(assert (=> b!2399109 d!699537))

(declare-fun b!2399345 () Bool)

(declare-fun e!1528749 () Bool)

(assert (=> b!2399345 (= e!1528749 tp_is_empty!11469)))

(declare-fun b!2399348 () Bool)

(declare-fun tp!763569 () Bool)

(declare-fun tp!763570 () Bool)

(assert (=> b!2399348 (= e!1528749 (and tp!763569 tp!763570))))

(assert (=> b!2399113 (= tp!763524 e!1528749)))

(declare-fun b!2399346 () Bool)

(declare-fun tp!763566 () Bool)

(declare-fun tp!763567 () Bool)

(assert (=> b!2399346 (= e!1528749 (and tp!763566 tp!763567))))

(declare-fun b!2399347 () Bool)

(declare-fun tp!763568 () Bool)

(assert (=> b!2399347 (= e!1528749 tp!763568)))

(assert (= (and b!2399113 (is-ElementMatch!7028 (regOne!14569 r!13927))) b!2399345))

(assert (= (and b!2399113 (is-Concat!11664 (regOne!14569 r!13927))) b!2399346))

(assert (= (and b!2399113 (is-Star!7028 (regOne!14569 r!13927))) b!2399347))

(assert (= (and b!2399113 (is-Union!7028 (regOne!14569 r!13927))) b!2399348))

(declare-fun b!2399349 () Bool)

(declare-fun e!1528750 () Bool)

(assert (=> b!2399349 (= e!1528750 tp_is_empty!11469)))

(declare-fun b!2399352 () Bool)

(declare-fun tp!763574 () Bool)

(declare-fun tp!763575 () Bool)

(assert (=> b!2399352 (= e!1528750 (and tp!763574 tp!763575))))

(assert (=> b!2399113 (= tp!763525 e!1528750)))

(declare-fun b!2399350 () Bool)

(declare-fun tp!763571 () Bool)

(declare-fun tp!763572 () Bool)

(assert (=> b!2399350 (= e!1528750 (and tp!763571 tp!763572))))

(declare-fun b!2399351 () Bool)

(declare-fun tp!763573 () Bool)

(assert (=> b!2399351 (= e!1528750 tp!763573)))

(assert (= (and b!2399113 (is-ElementMatch!7028 (regTwo!14569 r!13927))) b!2399349))

(assert (= (and b!2399113 (is-Concat!11664 (regTwo!14569 r!13927))) b!2399350))

(assert (= (and b!2399113 (is-Star!7028 (regTwo!14569 r!13927))) b!2399351))

(assert (= (and b!2399113 (is-Union!7028 (regTwo!14569 r!13927))) b!2399352))

(declare-fun b!2399353 () Bool)

(declare-fun e!1528751 () Bool)

(assert (=> b!2399353 (= e!1528751 tp_is_empty!11469)))

(declare-fun b!2399356 () Bool)

(declare-fun tp!763579 () Bool)

(declare-fun tp!763580 () Bool)

(assert (=> b!2399356 (= e!1528751 (and tp!763579 tp!763580))))

(assert (=> b!2399107 (= tp!763531 e!1528751)))

(declare-fun b!2399354 () Bool)

(declare-fun tp!763576 () Bool)

(declare-fun tp!763577 () Bool)

(assert (=> b!2399354 (= e!1528751 (and tp!763576 tp!763577))))

(declare-fun b!2399355 () Bool)

(declare-fun tp!763578 () Bool)

(assert (=> b!2399355 (= e!1528751 tp!763578)))

(assert (= (and b!2399107 (is-ElementMatch!7028 (regOne!14568 r!13927))) b!2399353))

(assert (= (and b!2399107 (is-Concat!11664 (regOne!14568 r!13927))) b!2399354))

(assert (= (and b!2399107 (is-Star!7028 (regOne!14568 r!13927))) b!2399355))

(assert (= (and b!2399107 (is-Union!7028 (regOne!14568 r!13927))) b!2399356))

(declare-fun b!2399357 () Bool)

(declare-fun e!1528752 () Bool)

(assert (=> b!2399357 (= e!1528752 tp_is_empty!11469)))

(declare-fun b!2399360 () Bool)

(declare-fun tp!763584 () Bool)

(declare-fun tp!763585 () Bool)

(assert (=> b!2399360 (= e!1528752 (and tp!763584 tp!763585))))

(assert (=> b!2399107 (= tp!763529 e!1528752)))

(declare-fun b!2399358 () Bool)

(declare-fun tp!763581 () Bool)

(declare-fun tp!763582 () Bool)

(assert (=> b!2399358 (= e!1528752 (and tp!763581 tp!763582))))

(declare-fun b!2399359 () Bool)

(declare-fun tp!763583 () Bool)

(assert (=> b!2399359 (= e!1528752 tp!763583)))

(assert (= (and b!2399107 (is-ElementMatch!7028 (regTwo!14568 r!13927))) b!2399357))

(assert (= (and b!2399107 (is-Concat!11664 (regTwo!14568 r!13927))) b!2399358))

(assert (= (and b!2399107 (is-Star!7028 (regTwo!14568 r!13927))) b!2399359))

(assert (= (and b!2399107 (is-Union!7028 (regTwo!14568 r!13927))) b!2399360))

(declare-fun b!2399361 () Bool)

(declare-fun e!1528753 () Bool)

(assert (=> b!2399361 (= e!1528753 tp_is_empty!11469)))

(declare-fun b!2399364 () Bool)

(declare-fun tp!763589 () Bool)

(declare-fun tp!763590 () Bool)

(assert (=> b!2399364 (= e!1528753 (and tp!763589 tp!763590))))

(assert (=> b!2399112 (= tp!763530 e!1528753)))

(declare-fun b!2399362 () Bool)

(declare-fun tp!763586 () Bool)

(declare-fun tp!763587 () Bool)

(assert (=> b!2399362 (= e!1528753 (and tp!763586 tp!763587))))

(declare-fun b!2399363 () Bool)

(declare-fun tp!763588 () Bool)

(assert (=> b!2399363 (= e!1528753 tp!763588)))

(assert (= (and b!2399112 (is-ElementMatch!7028 (h!33597 l!9164))) b!2399361))

(assert (= (and b!2399112 (is-Concat!11664 (h!33597 l!9164))) b!2399362))

(assert (= (and b!2399112 (is-Star!7028 (h!33597 l!9164))) b!2399363))

(assert (= (and b!2399112 (is-Union!7028 (h!33597 l!9164))) b!2399364))

(declare-fun b!2399369 () Bool)

(declare-fun e!1528756 () Bool)

(declare-fun tp!763595 () Bool)

(declare-fun tp!763596 () Bool)

(assert (=> b!2399369 (= e!1528756 (and tp!763595 tp!763596))))

(assert (=> b!2399112 (= tp!763526 e!1528756)))

(assert (= (and b!2399112 (is-Cons!28196 (t!208271 l!9164))) b!2399369))

(declare-fun b!2399370 () Bool)

(declare-fun e!1528757 () Bool)

(assert (=> b!2399370 (= e!1528757 tp_is_empty!11469)))

(declare-fun b!2399373 () Bool)

(declare-fun tp!763600 () Bool)

(declare-fun tp!763601 () Bool)

(assert (=> b!2399373 (= e!1528757 (and tp!763600 tp!763601))))

(assert (=> b!2399105 (= tp!763528 e!1528757)))

(declare-fun b!2399371 () Bool)

(declare-fun tp!763597 () Bool)

(declare-fun tp!763598 () Bool)

(assert (=> b!2399371 (= e!1528757 (and tp!763597 tp!763598))))

(declare-fun b!2399372 () Bool)

(declare-fun tp!763599 () Bool)

(assert (=> b!2399372 (= e!1528757 tp!763599)))

(assert (= (and b!2399105 (is-ElementMatch!7028 (reg!7357 r!13927))) b!2399370))

(assert (= (and b!2399105 (is-Concat!11664 (reg!7357 r!13927))) b!2399371))

(assert (= (and b!2399105 (is-Star!7028 (reg!7357 r!13927))) b!2399372))

(assert (= (and b!2399105 (is-Union!7028 (reg!7357 r!13927))) b!2399373))

(declare-fun b!2399378 () Bool)

(declare-fun e!1528760 () Bool)

(declare-fun tp!763604 () Bool)

(assert (=> b!2399378 (= e!1528760 (and tp_is_empty!11469 tp!763604))))

(assert (=> b!2399110 (= tp!763527 e!1528760)))

(assert (= (and b!2399110 (is-Cons!28197 (t!208272 s!9460))) b!2399378))

(declare-fun b_lambda!74285 () Bool)

(assert (= b_lambda!74283 (or start!235402 b_lambda!74285)))

(declare-fun bs!463104 () Bool)

(declare-fun d!699539 () Bool)

(assert (= bs!463104 (and d!699539 start!235402)))

(assert (=> bs!463104 (= (dynLambda!12143 lambda!90136 (h!33597 l!9164)) (validRegex!2753 (h!33597 l!9164)))))

(declare-fun m!2797365 () Bool)

(assert (=> bs!463104 m!2797365))

(assert (=> b!2399306 d!699539))

(push 1)

(assert (not b!2399346))

(assert (not b!2399356))

(assert (not b!2399164))

(assert (not b!2399364))

(assert (not b!2399202))

(assert (not b!2399332))

(assert (not b!2399203))

(assert (not b!2399275))

(assert (not b!2399206))

(assert (not bs!463104))

(assert (not b_lambda!74285))

(assert (not b!2399372))

(assert (not bm!146549))

(assert (not b!2399359))

(assert (not bm!146548))

(assert (not bm!146532))

(assert (not b!2399348))

(assert (not b!2399166))

(assert (not b!2399350))

(assert (not b!2399167))

(assert (not bm!146540))

(assert (not b!2399358))

(assert (not b!2399282))

(assert (not b!2399378))

(assert (not d!699525))

(assert (not b!2399212))

(assert (not d!699531))

(assert (not b!2399210))

(assert (not b!2399355))

(assert (not b!2399354))

(assert (not b!2399369))

(assert (not b!2399362))

(assert (not b!2399307))

(assert (not b!2399373))

(assert (not b!2399170))

(assert (not b!2399208))

(assert (not b!2399371))

(assert (not b!2399363))

(assert (not b!2399161))

(assert (not b!2399347))

(assert (not b!2399351))

(assert (not b!2399352))

(assert (not b!2399169))

(assert tp_is_empty!11469)

(assert (not d!699523))

(assert (not bm!146539))

(assert (not b!2399360))

(assert (not b!2399163))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

