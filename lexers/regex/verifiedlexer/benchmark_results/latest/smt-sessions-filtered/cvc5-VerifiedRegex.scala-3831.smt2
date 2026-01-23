; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!212572 () Bool)

(assert start!212572)

(declare-fun b!2192196 () Bool)

(declare-fun e!1400958 () Bool)

(declare-datatypes ((C!12402 0))(
  ( (C!12403 (val!7187 Int)) )
))
(declare-datatypes ((List!25529 0))(
  ( (Nil!25445) (Cons!25445 (h!30846 C!12402) (t!198127 List!25529)) )
))
(declare-datatypes ((IArray!16533 0))(
  ( (IArray!16534 (innerList!8324 List!25529)) )
))
(declare-datatypes ((Conc!8264 0))(
  ( (Node!8264 (left!19523 Conc!8264) (right!19853 Conc!8264) (csize!16758 Int) (cheight!8475 Int)) (Leaf!12096 (xs!11206 IArray!16533) (csize!16759 Int)) (Empty!8264) )
))
(declare-datatypes ((BalanceConc!16290 0))(
  ( (BalanceConc!16291 (c!348670 Conc!8264)) )
))
(declare-fun totalInput!923 () BalanceConc!16290)

(declare-fun tp!683245 () Bool)

(declare-fun inv!33978 (Conc!8264) Bool)

(assert (=> b!2192196 (= e!1400958 (and (inv!33978 (c!348670 totalInput!923)) tp!683245))))

(declare-fun res!942474 () Bool)

(declare-fun e!1400959 () Bool)

(assert (=> start!212572 (=> (not res!942474) (not e!1400959))))

(declare-fun from!1114 () Int)

(assert (=> start!212572 (= res!942474 (>= from!1114 0))))

(assert (=> start!212572 e!1400959))

(assert (=> start!212572 true))

(declare-fun inv!33979 (BalanceConc!16290) Bool)

(assert (=> start!212572 (and (inv!33979 totalInput!923) e!1400958)))

(declare-fun condSetEmpty!18609 () Bool)

(declare-datatypes ((Regex!6128 0))(
  ( (ElementMatch!6128 (c!348671 C!12402)) (Concat!10430 (regOne!12768 Regex!6128) (regTwo!12768 Regex!6128)) (EmptyExpr!6128) (Star!6128 (reg!6457 Regex!6128)) (EmptyLang!6128) (Union!6128 (regOne!12769 Regex!6128) (regTwo!12769 Regex!6128)) )
))
(declare-datatypes ((List!25530 0))(
  ( (Nil!25446) (Cons!25446 (h!30847 Regex!6128) (t!198128 List!25530)) )
))
(declare-datatypes ((Context!3396 0))(
  ( (Context!3397 (exprs!2198 List!25530)) )
))
(declare-fun z!3955 () (Set Context!3396))

(assert (=> start!212572 (= condSetEmpty!18609 (= z!3955 (as set.empty (Set Context!3396))))))

(declare-fun setRes!18609 () Bool)

(assert (=> start!212572 setRes!18609))

(declare-fun setIsEmpty!18609 () Bool)

(assert (=> setIsEmpty!18609 setRes!18609))

(declare-fun b!2192197 () Bool)

(declare-fun e!1400957 () Bool)

(declare-fun lastNullablePos!193 () Int)

(assert (=> b!2192197 (= e!1400957 (= lastNullablePos!193 (- from!1114 1)))))

(declare-fun b!2192198 () Bool)

(declare-fun res!942472 () Bool)

(declare-fun e!1400954 () Bool)

(assert (=> b!2192198 (=> (not res!942472) (not e!1400954))))

(declare-fun e!1400955 () Bool)

(assert (=> b!2192198 (= res!942472 e!1400955)))

(declare-fun res!942477 () Bool)

(assert (=> b!2192198 (=> res!942477 e!1400955)))

(declare-fun lt!819587 () Int)

(assert (=> b!2192198 (= res!942477 (= from!1114 lt!819587))))

(declare-fun b!2192199 () Bool)

(declare-fun e!1400956 () Bool)

(declare-fun tp!683243 () Bool)

(assert (=> b!2192199 (= e!1400956 tp!683243)))

(declare-fun setNonEmpty!18609 () Bool)

(declare-fun setElem!18609 () Context!3396)

(declare-fun tp!683244 () Bool)

(declare-fun inv!33980 (Context!3396) Bool)

(assert (=> setNonEmpty!18609 (= setRes!18609 (and tp!683244 (inv!33980 setElem!18609) e!1400956))))

(declare-fun setRest!18609 () (Set Context!3396))

(assert (=> setNonEmpty!18609 (= z!3955 (set.union (set.insert setElem!18609 (as set.empty (Set Context!3396))) setRest!18609))))

(declare-fun b!2192200 () Bool)

(declare-fun lostCauseZipper!246 ((Set Context!3396)) Bool)

(assert (=> b!2192200 (= e!1400955 (lostCauseZipper!246 z!3955))))

(declare-fun b!2192201 () Bool)

(declare-fun res!942473 () Bool)

(assert (=> b!2192201 (=> (not res!942473) (not e!1400954))))

(assert (=> b!2192201 (= res!942473 e!1400957)))

(declare-fun res!942476 () Bool)

(assert (=> b!2192201 (=> res!942476 e!1400957)))

(declare-fun nullableZipper!408 ((Set Context!3396)) Bool)

(assert (=> b!2192201 (= res!942476 (not (nullableZipper!408 z!3955)))))

(declare-fun b!2192202 () Bool)

(assert (=> b!2192202 (= e!1400959 e!1400954)))

(declare-fun res!942475 () Bool)

(assert (=> b!2192202 (=> (not res!942475) (not e!1400954))))

(assert (=> b!2192202 (= res!942475 (and (<= from!1114 lt!819587) (>= lastNullablePos!193 (- 1)) (< lastNullablePos!193 from!1114)))))

(declare-fun size!19848 (BalanceConc!16290) Int)

(assert (=> b!2192202 (= lt!819587 (size!19848 totalInput!923))))

(declare-fun b!2192203 () Bool)

(declare-fun furthestNullablePosition!298 ((Set Context!3396) Int BalanceConc!16290 Int Int) Int)

(assert (=> b!2192203 (= e!1400954 (not (= (furthestNullablePosition!298 z!3955 from!1114 totalInput!923 lt!819587 lastNullablePos!193) lastNullablePos!193)))))

(assert (= (and start!212572 res!942474) b!2192202))

(assert (= (and b!2192202 res!942475) b!2192201))

(assert (= (and b!2192201 (not res!942476)) b!2192197))

(assert (= (and b!2192201 res!942473) b!2192198))

(assert (= (and b!2192198 (not res!942477)) b!2192200))

(assert (= (and b!2192198 res!942472) b!2192203))

(assert (= start!212572 b!2192196))

(assert (= (and start!212572 condSetEmpty!18609) setIsEmpty!18609))

(assert (= (and start!212572 (not condSetEmpty!18609)) setNonEmpty!18609))

(assert (= setNonEmpty!18609 b!2192199))

(declare-fun m!2634947 () Bool)

(assert (=> b!2192202 m!2634947))

(declare-fun m!2634949 () Bool)

(assert (=> b!2192200 m!2634949))

(declare-fun m!2634951 () Bool)

(assert (=> start!212572 m!2634951))

(declare-fun m!2634953 () Bool)

(assert (=> b!2192196 m!2634953))

(declare-fun m!2634955 () Bool)

(assert (=> b!2192203 m!2634955))

(declare-fun m!2634957 () Bool)

(assert (=> b!2192201 m!2634957))

(declare-fun m!2634959 () Bool)

(assert (=> setNonEmpty!18609 m!2634959))

(push 1)

(assert (not b!2192202))

(assert (not start!212572))

(assert (not b!2192199))

(assert (not setNonEmpty!18609))

(assert (not b!2192203))

(assert (not b!2192201))

(assert (not b!2192200))

(assert (not b!2192196))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!656200 () Bool)

(declare-fun c!348678 () Bool)

(assert (=> d!656200 (= c!348678 (is-Node!8264 (c!348670 totalInput!923)))))

(declare-fun e!1400986 () Bool)

(assert (=> d!656200 (= (inv!33978 (c!348670 totalInput!923)) e!1400986)))

(declare-fun b!2192240 () Bool)

(declare-fun inv!33984 (Conc!8264) Bool)

(assert (=> b!2192240 (= e!1400986 (inv!33984 (c!348670 totalInput!923)))))

(declare-fun b!2192241 () Bool)

(declare-fun e!1400987 () Bool)

(assert (=> b!2192241 (= e!1400986 e!1400987)))

(declare-fun res!942500 () Bool)

(assert (=> b!2192241 (= res!942500 (not (is-Leaf!12096 (c!348670 totalInput!923))))))

(assert (=> b!2192241 (=> res!942500 e!1400987)))

(declare-fun b!2192242 () Bool)

(declare-fun inv!33985 (Conc!8264) Bool)

(assert (=> b!2192242 (= e!1400987 (inv!33985 (c!348670 totalInput!923)))))

(assert (= (and d!656200 c!348678) b!2192240))

(assert (= (and d!656200 (not c!348678)) b!2192241))

(assert (= (and b!2192241 (not res!942500)) b!2192242))

(declare-fun m!2634975 () Bool)

(assert (=> b!2192240 m!2634975))

(declare-fun m!2634977 () Bool)

(assert (=> b!2192242 m!2634977))

(assert (=> b!2192196 d!656200))

(declare-fun bs!448392 () Bool)

(declare-fun b!2192265 () Bool)

(declare-fun d!656202 () Bool)

(assert (= bs!448392 (and b!2192265 d!656202)))

(declare-fun lambda!82187 () Int)

(declare-fun lambda!82186 () Int)

(assert (=> bs!448392 (not (= lambda!82187 lambda!82186))))

(declare-fun bs!448393 () Bool)

(declare-fun b!2192266 () Bool)

(assert (= bs!448393 (and b!2192266 d!656202)))

(declare-fun lambda!82188 () Int)

(assert (=> bs!448393 (not (= lambda!82188 lambda!82186))))

(declare-fun bs!448394 () Bool)

(assert (= bs!448394 (and b!2192266 b!2192265)))

(assert (=> bs!448394 (= lambda!82188 lambda!82187)))

(declare-datatypes ((Unit!38559 0))(
  ( (Unit!38560) )
))
(declare-fun e!1401005 () Unit!38559)

(declare-fun Unit!38561 () Unit!38559)

(assert (=> b!2192266 (= e!1401005 Unit!38561)))

(declare-datatypes ((List!25533 0))(
  ( (Nil!25449) (Cons!25449 (h!30850 Context!3396) (t!198131 List!25533)) )
))
(declare-fun lt!819620 () List!25533)

(declare-fun call!131836 () List!25533)

(assert (=> b!2192266 (= lt!819620 call!131836)))

(declare-fun lt!819616 () Unit!38559)

(declare-fun lemmaForallThenNotExists!32 (List!25533 Int) Unit!38559)

(assert (=> b!2192266 (= lt!819616 (lemmaForallThenNotExists!32 lt!819620 lambda!82186))))

(declare-fun call!131835 () Bool)

(assert (=> b!2192266 (not call!131835)))

(declare-fun lt!819619 () Unit!38559)

(assert (=> b!2192266 (= lt!819619 lt!819616)))

(declare-fun bm!131831 () Bool)

(declare-fun toList!1243 ((Set Context!3396)) List!25533)

(assert (=> bm!131831 (= call!131836 (toList!1243 z!3955))))

(declare-fun lt!819621 () Bool)

(declare-datatypes ((Option!5007 0))(
  ( (None!5006) (Some!5006 (v!29401 List!25529)) )
))
(declare-fun isEmpty!14559 (Option!5007) Bool)

(declare-fun getLanguageWitness!124 ((Set Context!3396)) Option!5007)

(assert (=> d!656202 (= lt!819621 (isEmpty!14559 (getLanguageWitness!124 z!3955)))))

(declare-fun forall!5196 ((Set Context!3396) Int) Bool)

(assert (=> d!656202 (= lt!819621 (forall!5196 z!3955 lambda!82186))))

(declare-fun lt!819618 () Unit!38559)

(assert (=> d!656202 (= lt!819618 e!1401005)))

(declare-fun c!348698 () Bool)

(assert (=> d!656202 (= c!348698 (not (forall!5196 z!3955 lambda!82186)))))

(assert (=> d!656202 (= (lostCauseZipper!246 z!3955) lt!819621)))

(declare-fun Unit!38562 () Unit!38559)

(assert (=> b!2192265 (= e!1401005 Unit!38562)))

(declare-fun lt!819623 () List!25533)

(assert (=> b!2192265 (= lt!819623 call!131836)))

(declare-fun lt!819622 () Unit!38559)

(declare-fun lemmaNotForallThenExists!32 (List!25533 Int) Unit!38559)

(assert (=> b!2192265 (= lt!819622 (lemmaNotForallThenExists!32 lt!819623 lambda!82186))))

(assert (=> b!2192265 call!131835))

(declare-fun lt!819617 () Unit!38559)

(assert (=> b!2192265 (= lt!819617 lt!819622)))

(declare-fun bm!131830 () Bool)

(declare-fun exists!785 (List!25533 Int) Bool)

(assert (=> bm!131830 (= call!131835 (exists!785 (ite c!348698 lt!819623 lt!819620) (ite c!348698 lambda!82187 lambda!82188)))))

(assert (= (and d!656202 c!348698) b!2192265))

(assert (= (and d!656202 (not c!348698)) b!2192266))

(assert (= (or b!2192265 b!2192266) bm!131830))

(assert (= (or b!2192265 b!2192266) bm!131831))

(declare-fun m!2634997 () Bool)

(assert (=> d!656202 m!2634997))

(assert (=> d!656202 m!2634997))

(declare-fun m!2634999 () Bool)

(assert (=> d!656202 m!2634999))

(declare-fun m!2635001 () Bool)

(assert (=> d!656202 m!2635001))

(assert (=> d!656202 m!2635001))

(declare-fun m!2635003 () Bool)

(assert (=> bm!131831 m!2635003))

(declare-fun m!2635005 () Bool)

(assert (=> b!2192266 m!2635005))

(declare-fun m!2635007 () Bool)

(assert (=> bm!131830 m!2635007))

(declare-fun m!2635009 () Bool)

(assert (=> b!2192265 m!2635009))

(assert (=> b!2192200 d!656202))

(declare-fun d!656210 () Bool)

(declare-fun isBalanced!2549 (Conc!8264) Bool)

(assert (=> d!656210 (= (inv!33979 totalInput!923) (isBalanced!2549 (c!348670 totalInput!923)))))

(declare-fun bs!448395 () Bool)

(assert (= bs!448395 d!656210))

(declare-fun m!2635011 () Bool)

(assert (=> bs!448395 m!2635011))

(assert (=> start!212572 d!656210))

(declare-fun d!656212 () Bool)

(declare-fun lambda!82191 () Int)

(declare-fun forall!5197 (List!25530 Int) Bool)

(assert (=> d!656212 (= (inv!33980 setElem!18609) (forall!5197 (exprs!2198 setElem!18609) lambda!82191))))

(declare-fun bs!448396 () Bool)

(assert (= bs!448396 d!656212))

(declare-fun m!2635013 () Bool)

(assert (=> bs!448396 m!2635013))

(assert (=> setNonEmpty!18609 d!656212))

(declare-fun d!656214 () Bool)

(declare-fun lt!819626 () Int)

(declare-fun size!19850 (List!25529) Int)

(declare-fun list!9775 (BalanceConc!16290) List!25529)

(assert (=> d!656214 (= lt!819626 (size!19850 (list!9775 totalInput!923)))))

(declare-fun size!19851 (Conc!8264) Int)

(assert (=> d!656214 (= lt!819626 (size!19851 (c!348670 totalInput!923)))))

(assert (=> d!656214 (= (size!19848 totalInput!923) lt!819626)))

(declare-fun bs!448397 () Bool)

(assert (= bs!448397 d!656214))

(declare-fun m!2635015 () Bool)

(assert (=> bs!448397 m!2635015))

(assert (=> bs!448397 m!2635015))

(declare-fun m!2635017 () Bool)

(assert (=> bs!448397 m!2635017))

(declare-fun m!2635019 () Bool)

(assert (=> bs!448397 m!2635019))

(assert (=> b!2192202 d!656214))

(declare-fun b!2192277 () Bool)

(declare-fun e!1401013 () Bool)

(assert (=> b!2192277 (= e!1401013 (lostCauseZipper!246 z!3955))))

(declare-fun b!2192278 () Bool)

(declare-fun e!1401014 () Int)

(assert (=> b!2192278 (= e!1401014 lastNullablePos!193)))

(declare-fun lt!819632 () Int)

(declare-fun d!656216 () Bool)

(assert (=> d!656216 (and (>= lt!819632 (- 1)) (< lt!819632 lt!819587) (>= lt!819632 lastNullablePos!193) (or (= lt!819632 lastNullablePos!193) (>= lt!819632 from!1114)))))

(assert (=> d!656216 (= lt!819632 e!1401014)))

(declare-fun c!348703 () Bool)

(assert (=> d!656216 (= c!348703 e!1401013)))

(declare-fun res!942507 () Bool)

(assert (=> d!656216 (=> res!942507 e!1401013)))

(assert (=> d!656216 (= res!942507 (= from!1114 lt!819587))))

(assert (=> d!656216 (and (>= from!1114 0) (<= from!1114 lt!819587))))

(assert (=> d!656216 (= (furthestNullablePosition!298 z!3955 from!1114 totalInput!923 lt!819587 lastNullablePos!193) lt!819632)))

(declare-fun b!2192279 () Bool)

(declare-fun e!1401012 () Int)

(assert (=> b!2192279 (= e!1401012 lastNullablePos!193)))

(declare-fun b!2192280 () Bool)

(assert (=> b!2192280 (= e!1401012 from!1114)))

(declare-fun lt!819631 () (Set Context!3396))

(declare-fun b!2192281 () Bool)

(assert (=> b!2192281 (= e!1401014 (furthestNullablePosition!298 lt!819631 (+ from!1114 1) totalInput!923 lt!819587 e!1401012))))

(declare-fun derivationStepZipper!205 ((Set Context!3396) C!12402) (Set Context!3396))

(declare-fun apply!6173 (BalanceConc!16290 Int) C!12402)

(assert (=> b!2192281 (= lt!819631 (derivationStepZipper!205 z!3955 (apply!6173 totalInput!923 from!1114)))))

(declare-fun c!348704 () Bool)

(assert (=> b!2192281 (= c!348704 (nullableZipper!408 lt!819631))))

(assert (= (and d!656216 (not res!942507)) b!2192277))

(assert (= (and d!656216 c!348703) b!2192278))

(assert (= (and d!656216 (not c!348703)) b!2192281))

(assert (= (and b!2192281 c!348704) b!2192280))

(assert (= (and b!2192281 (not c!348704)) b!2192279))

(assert (=> b!2192277 m!2634949))

(declare-fun m!2635021 () Bool)

(assert (=> b!2192281 m!2635021))

(declare-fun m!2635023 () Bool)

(assert (=> b!2192281 m!2635023))

(assert (=> b!2192281 m!2635023))

(declare-fun m!2635025 () Bool)

(assert (=> b!2192281 m!2635025))

(declare-fun m!2635027 () Bool)

(assert (=> b!2192281 m!2635027))

(assert (=> b!2192203 d!656216))

(declare-fun bs!448398 () Bool)

(declare-fun d!656218 () Bool)

(assert (= bs!448398 (and d!656218 d!656202)))

(declare-fun lambda!82194 () Int)

(assert (=> bs!448398 (not (= lambda!82194 lambda!82186))))

(declare-fun bs!448399 () Bool)

(assert (= bs!448399 (and d!656218 b!2192265)))

(assert (=> bs!448399 (not (= lambda!82194 lambda!82187))))

(declare-fun bs!448400 () Bool)

(assert (= bs!448400 (and d!656218 b!2192266)))

(assert (=> bs!448400 (not (= lambda!82194 lambda!82188))))

(declare-fun exists!786 ((Set Context!3396) Int) Bool)

(assert (=> d!656218 (= (nullableZipper!408 z!3955) (exists!786 z!3955 lambda!82194))))

(declare-fun bs!448401 () Bool)

(assert (= bs!448401 d!656218))

(declare-fun m!2635029 () Bool)

(assert (=> bs!448401 m!2635029))

(assert (=> b!2192201 d!656218))

(declare-fun e!1401020 () Bool)

(declare-fun tp!683261 () Bool)

(declare-fun b!2192290 () Bool)

(declare-fun tp!683263 () Bool)

(assert (=> b!2192290 (= e!1401020 (and (inv!33978 (left!19523 (c!348670 totalInput!923))) tp!683263 (inv!33978 (right!19853 (c!348670 totalInput!923))) tp!683261))))

(declare-fun b!2192292 () Bool)

(declare-fun e!1401019 () Bool)

(declare-fun tp!683262 () Bool)

(assert (=> b!2192292 (= e!1401019 tp!683262)))

(declare-fun b!2192291 () Bool)

(declare-fun inv!33986 (IArray!16533) Bool)

(assert (=> b!2192291 (= e!1401020 (and (inv!33986 (xs!11206 (c!348670 totalInput!923))) e!1401019))))

(assert (=> b!2192196 (= tp!683245 (and (inv!33978 (c!348670 totalInput!923)) e!1401020))))

(assert (= (and b!2192196 (is-Node!8264 (c!348670 totalInput!923))) b!2192290))

(assert (= b!2192291 b!2192292))

(assert (= (and b!2192196 (is-Leaf!12096 (c!348670 totalInput!923))) b!2192291))

(declare-fun m!2635031 () Bool)

(assert (=> b!2192290 m!2635031))

(declare-fun m!2635033 () Bool)

(assert (=> b!2192290 m!2635033))

(declare-fun m!2635035 () Bool)

(assert (=> b!2192291 m!2635035))

(assert (=> b!2192196 m!2634953))

(declare-fun b!2192297 () Bool)

(declare-fun e!1401023 () Bool)

(declare-fun tp!683268 () Bool)

(declare-fun tp!683269 () Bool)

(assert (=> b!2192297 (= e!1401023 (and tp!683268 tp!683269))))

(assert (=> b!2192199 (= tp!683243 e!1401023)))

(assert (= (and b!2192199 (is-Cons!25446 (exprs!2198 setElem!18609))) b!2192297))

(declare-fun condSetEmpty!18615 () Bool)

(assert (=> setNonEmpty!18609 (= condSetEmpty!18615 (= setRest!18609 (as set.empty (Set Context!3396))))))

(declare-fun setRes!18615 () Bool)

(assert (=> setNonEmpty!18609 (= tp!683244 setRes!18615)))

(declare-fun setIsEmpty!18615 () Bool)

(assert (=> setIsEmpty!18615 setRes!18615))

(declare-fun e!1401026 () Bool)

(declare-fun setElem!18615 () Context!3396)

(declare-fun tp!683274 () Bool)

(declare-fun setNonEmpty!18615 () Bool)

(assert (=> setNonEmpty!18615 (= setRes!18615 (and tp!683274 (inv!33980 setElem!18615) e!1401026))))

(declare-fun setRest!18615 () (Set Context!3396))

(assert (=> setNonEmpty!18615 (= setRest!18609 (set.union (set.insert setElem!18615 (as set.empty (Set Context!3396))) setRest!18615))))

(declare-fun b!2192302 () Bool)

(declare-fun tp!683275 () Bool)

(assert (=> b!2192302 (= e!1401026 tp!683275)))

(assert (= (and setNonEmpty!18609 condSetEmpty!18615) setIsEmpty!18615))

(assert (= (and setNonEmpty!18609 (not condSetEmpty!18615)) setNonEmpty!18615))

(assert (= setNonEmpty!18615 b!2192302))

(declare-fun m!2635037 () Bool)

(assert (=> setNonEmpty!18615 m!2635037))

(push 1)

(assert (not d!656214))

(assert (not b!2192290))

(assert (not b!2192281))

(assert (not b!2192291))

(assert (not bm!131831))

(assert (not d!656202))

(assert (not d!656212))

(assert (not b!2192242))

(assert (not d!656210))

(assert (not b!2192265))

(assert (not b!2192277))

(assert (not b!2192297))

(assert (not b!2192196))

(assert (not b!2192292))

(assert (not b!2192240))

(assert (not b!2192266))

(assert (not d!656218))

(assert (not bm!131830))

(assert (not b!2192302))

(assert (not setNonEmpty!18615))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

