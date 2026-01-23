; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!214560 () Bool)

(assert start!214560)

(declare-fun tp!685939 () Bool)

(declare-fun setRes!19203 () Bool)

(declare-fun e!1409449 () Bool)

(declare-datatypes ((C!12698 0))(
  ( (C!12699 (val!7335 Int)) )
))
(declare-datatypes ((Regex!6276 0))(
  ( (ElementMatch!6276 (c!352383 C!12698)) (Concat!10578 (regOne!13064 Regex!6276) (regTwo!13064 Regex!6276)) (EmptyExpr!6276) (Star!6276 (reg!6605 Regex!6276)) (EmptyLang!6276) (Union!6276 (regOne!13065 Regex!6276) (regTwo!13065 Regex!6276)) )
))
(declare-datatypes ((List!25857 0))(
  ( (Nil!25773) (Cons!25773 (h!31174 Regex!6276) (t!198501 List!25857)) )
))
(declare-datatypes ((Context!3692 0))(
  ( (Context!3693 (exprs!2346 List!25857)) )
))
(declare-fun setElem!19203 () Context!3692)

(declare-fun setNonEmpty!19203 () Bool)

(declare-fun inv!34762 (Context!3692) Bool)

(assert (=> setNonEmpty!19203 (= setRes!19203 (and tp!685939 (inv!34762 setElem!19203) e!1409449))))

(declare-fun z!3888 () (Set Context!3692))

(declare-fun setRest!19203 () (Set Context!3692))

(assert (=> setNonEmpty!19203 (= z!3888 (set.union (set.insert setElem!19203 (as set.empty (Set Context!3692))) setRest!19203))))

(declare-fun b!2206224 () Bool)

(declare-fun e!1409447 () Bool)

(declare-fun lastNullablePos!161 () Int)

(declare-fun from!1082 () Int)

(assert (=> b!2206224 (= e!1409447 (= lastNullablePos!161 (- from!1082 1)))))

(declare-fun b!2206225 () Bool)

(declare-fun res!948310 () Bool)

(declare-fun e!1409445 () Bool)

(assert (=> b!2206225 (=> (not res!948310) (not e!1409445))))

(declare-fun lostCauseZipper!372 ((Set Context!3692)) Bool)

(assert (=> b!2206225 (= res!948310 (not (lostCauseZipper!372 z!3888)))))

(declare-fun b!2206226 () Bool)

(declare-fun e!1409448 () Int)

(assert (=> b!2206226 (= e!1409448 from!1082)))

(declare-fun b!2206227 () Bool)

(declare-fun e!1409450 () Bool)

(declare-fun e!1409444 () Bool)

(assert (=> b!2206227 (= e!1409450 e!1409444)))

(declare-fun res!948307 () Bool)

(assert (=> b!2206227 (=> (not res!948307) (not e!1409444))))

(declare-fun knownSize!10 () Int)

(declare-fun lt!824985 () Int)

(assert (=> b!2206227 (= res!948307 (and (<= from!1082 lt!824985) (>= knownSize!10 0) (<= knownSize!10 (- lt!824985 from!1082))))))

(declare-datatypes ((List!25858 0))(
  ( (Nil!25774) (Cons!25774 (h!31175 C!12698) (t!198502 List!25858)) )
))
(declare-datatypes ((IArray!16829 0))(
  ( (IArray!16830 (innerList!8472 List!25858)) )
))
(declare-datatypes ((Conc!8412 0))(
  ( (Node!8412 (left!19809 Conc!8412) (right!20139 Conc!8412) (csize!17054 Int) (cheight!8623 Int)) (Leaf!12318 (xs!11354 IArray!16829) (csize!17055 Int)) (Empty!8412) )
))
(declare-datatypes ((BalanceConc!16586 0))(
  ( (BalanceConc!16587 (c!352384 Conc!8412)) )
))
(declare-fun totalInput!891 () BalanceConc!16586)

(declare-fun size!20083 (BalanceConc!16586) Int)

(assert (=> b!2206227 (= lt!824985 (size!20083 totalInput!891))))

(declare-fun b!2206228 () Bool)

(declare-fun tp!685941 () Bool)

(assert (=> b!2206228 (= e!1409449 tp!685941)))

(declare-fun b!2206229 () Bool)

(assert (=> b!2206229 (= e!1409444 e!1409445)))

(declare-fun res!948309 () Bool)

(assert (=> b!2206229 (=> (not res!948309) (not e!1409445))))

(declare-fun lt!824987 () List!25858)

(declare-fun matchZipper!362 ((Set Context!3692) List!25858) Bool)

(declare-fun take!454 (List!25858 Int) List!25858)

(declare-fun drop!1464 (List!25858 Int) List!25858)

(assert (=> b!2206229 (= res!948309 (matchZipper!362 z!3888 (take!454 (drop!1464 lt!824987 from!1082) knownSize!10)))))

(declare-fun list!9958 (BalanceConc!16586) List!25858)

(assert (=> b!2206229 (= lt!824987 (list!9958 totalInput!891))))

(declare-fun b!2206230 () Bool)

(declare-fun res!948306 () Bool)

(assert (=> b!2206230 (=> (not res!948306) (not e!1409445))))

(assert (=> b!2206230 (= res!948306 (and (>= lastNullablePos!161 (- 1)) (< lastNullablePos!161 from!1082)))))

(declare-fun b!2206232 () Bool)

(assert (=> b!2206232 (= e!1409448 lastNullablePos!161)))

(declare-fun res!948312 () Bool)

(assert (=> start!214560 (=> (not res!948312) (not e!1409450))))

(assert (=> start!214560 (= res!948312 (>= from!1082 0))))

(assert (=> start!214560 e!1409450))

(assert (=> start!214560 true))

(declare-fun e!1409446 () Bool)

(declare-fun inv!34763 (BalanceConc!16586) Bool)

(assert (=> start!214560 (and (inv!34763 totalInput!891) e!1409446)))

(declare-fun condSetEmpty!19203 () Bool)

(assert (=> start!214560 (= condSetEmpty!19203 (= z!3888 (as set.empty (Set Context!3692))))))

(assert (=> start!214560 setRes!19203))

(declare-fun b!2206231 () Bool)

(declare-fun res!948311 () Bool)

(assert (=> b!2206231 (=> (not res!948311) (not e!1409445))))

(assert (=> b!2206231 (= res!948311 e!1409447)))

(declare-fun res!948313 () Bool)

(assert (=> b!2206231 (=> res!948313 e!1409447)))

(declare-fun nullableZipper!556 ((Set Context!3692)) Bool)

(assert (=> b!2206231 (= res!948313 (not (nullableZipper!556 z!3888)))))

(declare-fun b!2206233 () Bool)

(declare-fun lt!824989 () Int)

(assert (=> b!2206233 (= e!1409445 (and (< from!1082 lt!824989) (or (< (- knownSize!10 1) 0) (> (- knownSize!10 1) (- (- lt!824989 from!1082) 1)))))))

(declare-fun size!20084 (List!25858) Int)

(assert (=> b!2206233 (= lt!824989 (size!20084 lt!824987))))

(declare-fun lt!824988 () (Set Context!3692))

(declare-fun lt!824986 () Int)

(declare-fun furthestNullablePosition!410 ((Set Context!3692) Int BalanceConc!16586 Int Int) Int)

(assert (=> b!2206233 (= lt!824986 (furthestNullablePosition!410 lt!824988 (+ 1 from!1082) totalInput!891 lt!824985 e!1409448))))

(declare-fun c!352382 () Bool)

(assert (=> b!2206233 (= c!352382 (nullableZipper!556 lt!824988))))

(declare-fun derivationStepZipper!308 ((Set Context!3692) C!12698) (Set Context!3692))

(declare-fun apply!6352 (BalanceConc!16586 Int) C!12698)

(assert (=> b!2206233 (= lt!824988 (derivationStepZipper!308 z!3888 (apply!6352 totalInput!891 from!1082)))))

(declare-fun setIsEmpty!19203 () Bool)

(assert (=> setIsEmpty!19203 setRes!19203))

(declare-fun b!2206234 () Bool)

(declare-fun res!948314 () Bool)

(assert (=> b!2206234 (=> (not res!948314) (not e!1409445))))

(declare-fun isEmpty!14747 (BalanceConc!16586) Bool)

(assert (=> b!2206234 (= res!948314 (not (isEmpty!14747 totalInput!891)))))

(declare-fun b!2206235 () Bool)

(declare-fun res!948308 () Bool)

(assert (=> b!2206235 (=> (not res!948308) (not e!1409445))))

(assert (=> b!2206235 (= res!948308 (and (not (= knownSize!10 0)) (> knownSize!10 0) (not (= from!1082 lt!824985))))))

(declare-fun b!2206236 () Bool)

(declare-fun tp!685940 () Bool)

(declare-fun inv!34764 (Conc!8412) Bool)

(assert (=> b!2206236 (= e!1409446 (and (inv!34764 (c!352384 totalInput!891)) tp!685940))))

(assert (= (and start!214560 res!948312) b!2206227))

(assert (= (and b!2206227 res!948307) b!2206229))

(assert (= (and b!2206229 res!948309) b!2206230))

(assert (= (and b!2206230 res!948306) b!2206231))

(assert (= (and b!2206231 (not res!948313)) b!2206224))

(assert (= (and b!2206231 res!948311) b!2206234))

(assert (= (and b!2206234 res!948314) b!2206235))

(assert (= (and b!2206235 res!948308) b!2206225))

(assert (= (and b!2206225 res!948310) b!2206233))

(assert (= (and b!2206233 c!352382) b!2206226))

(assert (= (and b!2206233 (not c!352382)) b!2206232))

(assert (= start!214560 b!2206236))

(assert (= (and start!214560 condSetEmpty!19203) setIsEmpty!19203))

(assert (= (and start!214560 (not condSetEmpty!19203)) setNonEmpty!19203))

(assert (= setNonEmpty!19203 b!2206228))

(declare-fun m!2647895 () Bool)

(assert (=> b!2206236 m!2647895))

(declare-fun m!2647897 () Bool)

(assert (=> b!2206227 m!2647897))

(declare-fun m!2647899 () Bool)

(assert (=> b!2206225 m!2647899))

(declare-fun m!2647901 () Bool)

(assert (=> b!2206229 m!2647901))

(assert (=> b!2206229 m!2647901))

(declare-fun m!2647903 () Bool)

(assert (=> b!2206229 m!2647903))

(assert (=> b!2206229 m!2647903))

(declare-fun m!2647905 () Bool)

(assert (=> b!2206229 m!2647905))

(declare-fun m!2647907 () Bool)

(assert (=> b!2206229 m!2647907))

(declare-fun m!2647909 () Bool)

(assert (=> start!214560 m!2647909))

(declare-fun m!2647911 () Bool)

(assert (=> setNonEmpty!19203 m!2647911))

(declare-fun m!2647913 () Bool)

(assert (=> b!2206233 m!2647913))

(declare-fun m!2647915 () Bool)

(assert (=> b!2206233 m!2647915))

(declare-fun m!2647917 () Bool)

(assert (=> b!2206233 m!2647917))

(declare-fun m!2647919 () Bool)

(assert (=> b!2206233 m!2647919))

(declare-fun m!2647921 () Bool)

(assert (=> b!2206233 m!2647921))

(assert (=> b!2206233 m!2647915))

(declare-fun m!2647923 () Bool)

(assert (=> b!2206231 m!2647923))

(declare-fun m!2647925 () Bool)

(assert (=> b!2206234 m!2647925))

(push 1)

(assert (not setNonEmpty!19203))

(assert (not b!2206234))

(assert (not b!2206236))

(assert (not b!2206228))

(assert (not b!2206227))

(assert (not start!214560))

(assert (not b!2206231))

(assert (not b!2206225))

(assert (not b!2206233))

(assert (not b!2206229))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!659556 () Bool)

(declare-fun c!352392 () Bool)

(assert (=> d!659556 (= c!352392 (is-Node!8412 (c!352384 totalInput!891)))))

(declare-fun e!1409476 () Bool)

(assert (=> d!659556 (= (inv!34764 (c!352384 totalInput!891)) e!1409476)))

(declare-fun b!2206282 () Bool)

(declare-fun inv!34768 (Conc!8412) Bool)

(assert (=> b!2206282 (= e!1409476 (inv!34768 (c!352384 totalInput!891)))))

(declare-fun b!2206283 () Bool)

(declare-fun e!1409477 () Bool)

(assert (=> b!2206283 (= e!1409476 e!1409477)))

(declare-fun res!948344 () Bool)

(assert (=> b!2206283 (= res!948344 (not (is-Leaf!12318 (c!352384 totalInput!891))))))

(assert (=> b!2206283 (=> res!948344 e!1409477)))

(declare-fun b!2206284 () Bool)

(declare-fun inv!34769 (Conc!8412) Bool)

(assert (=> b!2206284 (= e!1409477 (inv!34769 (c!352384 totalInput!891)))))

(assert (= (and d!659556 c!352392) b!2206282))

(assert (= (and d!659556 (not c!352392)) b!2206283))

(assert (= (and b!2206283 (not res!948344)) b!2206284))

(declare-fun m!2647959 () Bool)

(assert (=> b!2206282 m!2647959))

(declare-fun m!2647961 () Bool)

(assert (=> b!2206284 m!2647961))

(assert (=> b!2206236 d!659556))

(declare-fun d!659560 () Bool)

(declare-fun lt!825007 () Int)

(assert (=> d!659560 (= lt!825007 (size!20084 (list!9958 totalInput!891)))))

(declare-fun size!20087 (Conc!8412) Int)

(assert (=> d!659560 (= lt!825007 (size!20087 (c!352384 totalInput!891)))))

(assert (=> d!659560 (= (size!20083 totalInput!891) lt!825007)))

(declare-fun bs!451053 () Bool)

(assert (= bs!451053 d!659560))

(assert (=> bs!451053 m!2647907))

(assert (=> bs!451053 m!2647907))

(declare-fun m!2647963 () Bool)

(assert (=> bs!451053 m!2647963))

(declare-fun m!2647965 () Bool)

(assert (=> bs!451053 m!2647965))

(assert (=> b!2206227 d!659560))

(declare-fun bs!451054 () Bool)

(declare-fun b!2206289 () Bool)

(declare-fun d!659562 () Bool)

(assert (= bs!451054 (and b!2206289 d!659562)))

(declare-fun lambda!83295 () Int)

(declare-fun lambda!83294 () Int)

(assert (=> bs!451054 (not (= lambda!83295 lambda!83294))))

(declare-fun bs!451055 () Bool)

(declare-fun b!2206290 () Bool)

(assert (= bs!451055 (and b!2206290 d!659562)))

(declare-fun lambda!83296 () Int)

(assert (=> bs!451055 (not (= lambda!83296 lambda!83294))))

(declare-fun bs!451056 () Bool)

(assert (= bs!451056 (and b!2206290 b!2206289)))

(assert (=> bs!451056 (= lambda!83296 lambda!83295)))

(declare-fun lt!825030 () Bool)

(declare-datatypes ((Option!5037 0))(
  ( (None!5036) (Some!5036 (v!29435 List!25858)) )
))
(declare-fun isEmpty!14749 (Option!5037) Bool)

(declare-fun getLanguageWitness!161 ((Set Context!3692)) Option!5037)

(assert (=> d!659562 (= lt!825030 (isEmpty!14749 (getLanguageWitness!161 z!3888)))))

(declare-fun forall!5273 ((Set Context!3692) Int) Bool)

(assert (=> d!659562 (= lt!825030 (forall!5273 z!3888 lambda!83294))))

(declare-datatypes ((Unit!38863 0))(
  ( (Unit!38864) )
))
(declare-fun lt!825029 () Unit!38863)

(declare-fun e!1409484 () Unit!38863)

(assert (=> d!659562 (= lt!825029 e!1409484)))

(declare-fun c!352403 () Bool)

(assert (=> d!659562 (= c!352403 (not (forall!5273 z!3888 lambda!83294)))))

(assert (=> d!659562 (= (lostCauseZipper!372 z!3888) lt!825030)))

(declare-fun call!132268 () Bool)

(declare-fun bm!132262 () Bool)

(declare-datatypes ((List!25861 0))(
  ( (Nil!25777) (Cons!25777 (h!31178 Context!3692) (t!198505 List!25861)) )
))
(declare-fun lt!825024 () List!25861)

(declare-fun lt!825031 () List!25861)

(declare-fun exists!859 (List!25861 Int) Bool)

(assert (=> bm!132262 (= call!132268 (exists!859 (ite c!352403 lt!825024 lt!825031) (ite c!352403 lambda!83295 lambda!83296)))))

(declare-fun Unit!38865 () Unit!38863)

(assert (=> b!2206289 (= e!1409484 Unit!38865)))

(declare-fun call!132267 () List!25861)

(assert (=> b!2206289 (= lt!825024 call!132267)))

(declare-fun lt!825025 () Unit!38863)

(declare-fun lemmaNotForallThenExists!62 (List!25861 Int) Unit!38863)

(assert (=> b!2206289 (= lt!825025 (lemmaNotForallThenExists!62 lt!825024 lambda!83294))))

(assert (=> b!2206289 call!132268))

(declare-fun lt!825028 () Unit!38863)

(assert (=> b!2206289 (= lt!825028 lt!825025)))

(declare-fun bm!132263 () Bool)

(declare-fun toList!1275 ((Set Context!3692)) List!25861)

(assert (=> bm!132263 (= call!132267 (toList!1275 z!3888))))

(declare-fun Unit!38866 () Unit!38863)

(assert (=> b!2206290 (= e!1409484 Unit!38866)))

(assert (=> b!2206290 (= lt!825031 call!132267)))

(declare-fun lt!825027 () Unit!38863)

(declare-fun lemmaForallThenNotExists!62 (List!25861 Int) Unit!38863)

(assert (=> b!2206290 (= lt!825027 (lemmaForallThenNotExists!62 lt!825031 lambda!83294))))

(assert (=> b!2206290 (not call!132268)))

(declare-fun lt!825026 () Unit!38863)

(assert (=> b!2206290 (= lt!825026 lt!825027)))

(assert (= (and d!659562 c!352403) b!2206289))

(assert (= (and d!659562 (not c!352403)) b!2206290))

(assert (= (or b!2206289 b!2206290) bm!132262))

(assert (= (or b!2206289 b!2206290) bm!132263))

(declare-fun m!2647967 () Bool)

(assert (=> b!2206290 m!2647967))

(declare-fun m!2647969 () Bool)

(assert (=> bm!132262 m!2647969))

(declare-fun m!2647971 () Bool)

(assert (=> bm!132263 m!2647971))

(declare-fun m!2647973 () Bool)

(assert (=> b!2206289 m!2647973))

(declare-fun m!2647975 () Bool)

(assert (=> d!659562 m!2647975))

(assert (=> d!659562 m!2647975))

(declare-fun m!2647977 () Bool)

(assert (=> d!659562 m!2647977))

(declare-fun m!2647979 () Bool)

(assert (=> d!659562 m!2647979))

(assert (=> d!659562 m!2647979))

(assert (=> b!2206225 d!659562))

(declare-fun bs!451057 () Bool)

(declare-fun d!659564 () Bool)

(assert (= bs!451057 (and d!659564 d!659562)))

(declare-fun lambda!83299 () Int)

(assert (=> bs!451057 (not (= lambda!83299 lambda!83294))))

(declare-fun bs!451058 () Bool)

(assert (= bs!451058 (and d!659564 b!2206289)))

(assert (=> bs!451058 (not (= lambda!83299 lambda!83295))))

(declare-fun bs!451059 () Bool)

(assert (= bs!451059 (and d!659564 b!2206290)))

(assert (=> bs!451059 (not (= lambda!83299 lambda!83296))))

(declare-fun exists!860 ((Set Context!3692) Int) Bool)

(assert (=> d!659564 (= (nullableZipper!556 z!3888) (exists!860 z!3888 lambda!83299))))

(declare-fun bs!451060 () Bool)

(assert (= bs!451060 d!659564))

(declare-fun m!2647981 () Bool)

(assert (=> bs!451060 m!2647981))

(assert (=> b!2206231 d!659564))

(declare-fun d!659566 () Bool)

(declare-fun c!352408 () Bool)

(declare-fun isEmpty!14750 (List!25858) Bool)

(assert (=> d!659566 (= c!352408 (isEmpty!14750 (take!454 (drop!1464 lt!824987 from!1082) knownSize!10)))))

(declare-fun e!1409487 () Bool)

(assert (=> d!659566 (= (matchZipper!362 z!3888 (take!454 (drop!1464 lt!824987 from!1082) knownSize!10)) e!1409487)))

(declare-fun b!2206295 () Bool)

(assert (=> b!2206295 (= e!1409487 (nullableZipper!556 z!3888))))

(declare-fun b!2206296 () Bool)

(declare-fun head!4715 (List!25858) C!12698)

(declare-fun tail!3195 (List!25858) List!25858)

(assert (=> b!2206296 (= e!1409487 (matchZipper!362 (derivationStepZipper!308 z!3888 (head!4715 (take!454 (drop!1464 lt!824987 from!1082) knownSize!10))) (tail!3195 (take!454 (drop!1464 lt!824987 from!1082) knownSize!10))))))

(assert (= (and d!659566 c!352408) b!2206295))

(assert (= (and d!659566 (not c!352408)) b!2206296))

(assert (=> d!659566 m!2647903))

(declare-fun m!2647983 () Bool)

(assert (=> d!659566 m!2647983))

(assert (=> b!2206295 m!2647923))

(assert (=> b!2206296 m!2647903))

(declare-fun m!2647985 () Bool)

(assert (=> b!2206296 m!2647985))

(assert (=> b!2206296 m!2647985))

(declare-fun m!2647987 () Bool)

(assert (=> b!2206296 m!2647987))

(assert (=> b!2206296 m!2647903))

(declare-fun m!2647989 () Bool)

(assert (=> b!2206296 m!2647989))

(assert (=> b!2206296 m!2647987))

(assert (=> b!2206296 m!2647989))

(declare-fun m!2647991 () Bool)

(assert (=> b!2206296 m!2647991))

(assert (=> b!2206229 d!659566))

(declare-fun b!2206311 () Bool)

(declare-fun e!1409499 () List!25858)

(assert (=> b!2206311 (= e!1409499 (Cons!25774 (h!31175 (drop!1464 lt!824987 from!1082)) (take!454 (t!198502 (drop!1464 lt!824987 from!1082)) (- knownSize!10 1))))))

(declare-fun b!2206313 () Bool)

(declare-fun e!1409497 () Bool)

(declare-fun lt!825034 () List!25858)

(declare-fun e!1409498 () Int)

(assert (=> b!2206313 (= e!1409497 (= (size!20084 lt!825034) e!1409498))))

(declare-fun c!352415 () Bool)

(assert (=> b!2206313 (= c!352415 (<= knownSize!10 0))))

(declare-fun b!2206314 () Bool)

(assert (=> b!2206314 (= e!1409498 0)))

(declare-fun b!2206315 () Bool)

(declare-fun e!1409496 () Int)

(assert (=> b!2206315 (= e!1409498 e!1409496)))

(declare-fun c!352417 () Bool)

(assert (=> b!2206315 (= c!352417 (>= knownSize!10 (size!20084 (drop!1464 lt!824987 from!1082))))))

(declare-fun b!2206316 () Bool)

(assert (=> b!2206316 (= e!1409496 (size!20084 (drop!1464 lt!824987 from!1082)))))

(declare-fun b!2206317 () Bool)

(assert (=> b!2206317 (= e!1409496 knownSize!10)))

(declare-fun d!659568 () Bool)

(assert (=> d!659568 e!1409497))

(declare-fun res!948347 () Bool)

(assert (=> d!659568 (=> (not res!948347) (not e!1409497))))

(declare-fun content!3502 (List!25858) (Set C!12698))

(assert (=> d!659568 (= res!948347 (set.subset (content!3502 lt!825034) (content!3502 (drop!1464 lt!824987 from!1082))))))

(assert (=> d!659568 (= lt!825034 e!1409499)))

(declare-fun c!352416 () Bool)

(assert (=> d!659568 (= c!352416 (or (is-Nil!25774 (drop!1464 lt!824987 from!1082)) (<= knownSize!10 0)))))

(assert (=> d!659568 (= (take!454 (drop!1464 lt!824987 from!1082) knownSize!10) lt!825034)))

(declare-fun b!2206312 () Bool)

(assert (=> b!2206312 (= e!1409499 Nil!25774)))

(assert (= (and d!659568 c!352416) b!2206312))

(assert (= (and d!659568 (not c!352416)) b!2206311))

(assert (= (and d!659568 res!948347) b!2206313))

(assert (= (and b!2206313 c!352415) b!2206314))

(assert (= (and b!2206313 (not c!352415)) b!2206315))

(assert (= (and b!2206315 c!352417) b!2206316))

(assert (= (and b!2206315 (not c!352417)) b!2206317))

(declare-fun m!2647993 () Bool)

(assert (=> b!2206313 m!2647993))

(assert (=> b!2206315 m!2647901))

(declare-fun m!2647995 () Bool)

(assert (=> b!2206315 m!2647995))

(assert (=> b!2206316 m!2647901))

(assert (=> b!2206316 m!2647995))

(declare-fun m!2647997 () Bool)

(assert (=> b!2206311 m!2647997))

(declare-fun m!2647999 () Bool)

(assert (=> d!659568 m!2647999))

(assert (=> d!659568 m!2647901))

(declare-fun m!2648001 () Bool)

(assert (=> d!659568 m!2648001))

(assert (=> b!2206229 d!659568))

(declare-fun b!2206336 () Bool)

(declare-fun e!1409512 () Int)

(declare-fun call!132271 () Int)

(assert (=> b!2206336 (= e!1409512 (- call!132271 from!1082))))

(declare-fun d!659570 () Bool)

(declare-fun e!1409514 () Bool)

(assert (=> d!659570 e!1409514))

(declare-fun res!948350 () Bool)

(assert (=> d!659570 (=> (not res!948350) (not e!1409514))))

(declare-fun lt!825037 () List!25858)

(assert (=> d!659570 (= res!948350 (set.subset (content!3502 lt!825037) (content!3502 lt!824987)))))

(declare-fun e!1409513 () List!25858)

(assert (=> d!659570 (= lt!825037 e!1409513)))

(declare-fun c!352429 () Bool)

(assert (=> d!659570 (= c!352429 (is-Nil!25774 lt!824987))))

(assert (=> d!659570 (= (drop!1464 lt!824987 from!1082) lt!825037)))

(declare-fun b!2206337 () Bool)

(declare-fun e!1409510 () Int)

(assert (=> b!2206337 (= e!1409510 e!1409512)))

(declare-fun c!352428 () Bool)

(assert (=> b!2206337 (= c!352428 (>= from!1082 call!132271))))

(declare-fun b!2206338 () Bool)

(declare-fun e!1409511 () List!25858)

(assert (=> b!2206338 (= e!1409511 (drop!1464 (t!198502 lt!824987) (- from!1082 1)))))

(declare-fun b!2206339 () Bool)

(assert (=> b!2206339 (= e!1409510 call!132271)))

(declare-fun b!2206340 () Bool)

(assert (=> b!2206340 (= e!1409513 Nil!25774)))

(declare-fun b!2206341 () Bool)

(assert (=> b!2206341 (= e!1409511 lt!824987)))

(declare-fun bm!132266 () Bool)

(assert (=> bm!132266 (= call!132271 (size!20084 lt!824987))))

(declare-fun b!2206342 () Bool)

(assert (=> b!2206342 (= e!1409512 0)))

(declare-fun b!2206343 () Bool)

(assert (=> b!2206343 (= e!1409513 e!1409511)))

(declare-fun c!352426 () Bool)

(assert (=> b!2206343 (= c!352426 (<= from!1082 0))))

(declare-fun b!2206344 () Bool)

(assert (=> b!2206344 (= e!1409514 (= (size!20084 lt!825037) e!1409510))))

(declare-fun c!352427 () Bool)

(assert (=> b!2206344 (= c!352427 (<= from!1082 0))))

(assert (= (and d!659570 c!352429) b!2206340))

(assert (= (and d!659570 (not c!352429)) b!2206343))

(assert (= (and b!2206343 c!352426) b!2206341))

(assert (= (and b!2206343 (not c!352426)) b!2206338))

(assert (= (and d!659570 res!948350) b!2206344))

(assert (= (and b!2206344 c!352427) b!2206339))

(assert (= (and b!2206344 (not c!352427)) b!2206337))

(assert (= (and b!2206337 c!352428) b!2206342))

(assert (= (and b!2206337 (not c!352428)) b!2206336))

(assert (= (or b!2206339 b!2206337 b!2206336) bm!132266))

(declare-fun m!2648003 () Bool)

(assert (=> d!659570 m!2648003))

(declare-fun m!2648005 () Bool)

(assert (=> d!659570 m!2648005))

(declare-fun m!2648007 () Bool)

(assert (=> b!2206338 m!2648007))

(assert (=> bm!132266 m!2647919))

(declare-fun m!2648009 () Bool)

(assert (=> b!2206344 m!2648009))

(assert (=> b!2206229 d!659570))

(declare-fun d!659572 () Bool)

(declare-fun list!9960 (Conc!8412) List!25858)

(assert (=> d!659572 (= (list!9958 totalInput!891) (list!9960 (c!352384 totalInput!891)))))

(declare-fun bs!451061 () Bool)

(assert (= bs!451061 d!659572))

(declare-fun m!2648011 () Bool)

(assert (=> bs!451061 m!2648011))

(assert (=> b!2206229 d!659572))

(declare-fun d!659574 () Bool)

(declare-fun lt!825040 () Bool)

(assert (=> d!659574 (= lt!825040 (isEmpty!14750 (list!9958 totalInput!891)))))

(declare-fun isEmpty!14751 (Conc!8412) Bool)

(assert (=> d!659574 (= lt!825040 (isEmpty!14751 (c!352384 totalInput!891)))))

(assert (=> d!659574 (= (isEmpty!14747 totalInput!891) lt!825040)))

(declare-fun bs!451062 () Bool)

(assert (= bs!451062 d!659574))

(assert (=> bs!451062 m!2647907))

(assert (=> bs!451062 m!2647907))

(declare-fun m!2648013 () Bool)

(assert (=> bs!451062 m!2648013))

(declare-fun m!2648015 () Bool)

(assert (=> bs!451062 m!2648015))

(assert (=> b!2206234 d!659574))

(declare-fun d!659576 () Bool)

(declare-fun isBalanced!2589 (Conc!8412) Bool)

(assert (=> d!659576 (= (inv!34763 totalInput!891) (isBalanced!2589 (c!352384 totalInput!891)))))

(declare-fun bs!451063 () Bool)

(assert (= bs!451063 d!659576))

(declare-fun m!2648017 () Bool)

(assert (=> bs!451063 m!2648017))

(assert (=> start!214560 d!659576))

(declare-fun d!659578 () Bool)

(declare-fun lt!825043 () Int)

(assert (=> d!659578 (>= lt!825043 0)))

(declare-fun e!1409517 () Int)

(assert (=> d!659578 (= lt!825043 e!1409517)))

(declare-fun c!352432 () Bool)

(assert (=> d!659578 (= c!352432 (is-Nil!25774 lt!824987))))

(assert (=> d!659578 (= (size!20084 lt!824987) lt!825043)))

(declare-fun b!2206349 () Bool)

(assert (=> b!2206349 (= e!1409517 0)))

(declare-fun b!2206350 () Bool)

(assert (=> b!2206350 (= e!1409517 (+ 1 (size!20084 (t!198502 lt!824987))))))

(assert (= (and d!659578 c!352432) b!2206349))

(assert (= (and d!659578 (not c!352432)) b!2206350))

(declare-fun m!2648019 () Bool)

(assert (=> b!2206350 m!2648019))

(assert (=> b!2206233 d!659578))

(declare-fun d!659580 () Bool)

(assert (=> d!659580 true))

(declare-fun lambda!83302 () Int)

(declare-fun flatMap!169 ((Set Context!3692) Int) (Set Context!3692))

(assert (=> d!659580 (= (derivationStepZipper!308 z!3888 (apply!6352 totalInput!891 from!1082)) (flatMap!169 z!3888 lambda!83302))))

(declare-fun bs!451064 () Bool)

(assert (= bs!451064 d!659580))

(declare-fun m!2648021 () Bool)

(assert (=> bs!451064 m!2648021))

(assert (=> b!2206233 d!659580))

(declare-fun d!659582 () Bool)

(declare-fun lt!825046 () C!12698)

(declare-fun apply!6354 (List!25858 Int) C!12698)

(assert (=> d!659582 (= lt!825046 (apply!6354 (list!9958 totalInput!891) from!1082))))

(declare-fun apply!6355 (Conc!8412 Int) C!12698)

(assert (=> d!659582 (= lt!825046 (apply!6355 (c!352384 totalInput!891) from!1082))))

(declare-fun e!1409520 () Bool)

(assert (=> d!659582 e!1409520))

(declare-fun res!948353 () Bool)

(assert (=> d!659582 (=> (not res!948353) (not e!1409520))))

(assert (=> d!659582 (= res!948353 (<= 0 from!1082))))

(assert (=> d!659582 (= (apply!6352 totalInput!891 from!1082) lt!825046)))

(declare-fun b!2206355 () Bool)

(assert (=> b!2206355 (= e!1409520 (< from!1082 (size!20083 totalInput!891)))))

(assert (= (and d!659582 res!948353) b!2206355))

(assert (=> d!659582 m!2647907))

(assert (=> d!659582 m!2647907))

(declare-fun m!2648023 () Bool)

(assert (=> d!659582 m!2648023))

(declare-fun m!2648025 () Bool)

(assert (=> d!659582 m!2648025))

(assert (=> b!2206355 m!2647897))

(assert (=> b!2206233 d!659582))

(declare-fun bs!451065 () Bool)

(declare-fun d!659584 () Bool)

(assert (= bs!451065 (and d!659584 d!659562)))

(declare-fun lambda!83303 () Int)

(assert (=> bs!451065 (not (= lambda!83303 lambda!83294))))

(declare-fun bs!451066 () Bool)

(assert (= bs!451066 (and d!659584 b!2206289)))

(assert (=> bs!451066 (not (= lambda!83303 lambda!83295))))

(declare-fun bs!451067 () Bool)

(assert (= bs!451067 (and d!659584 b!2206290)))

(assert (=> bs!451067 (not (= lambda!83303 lambda!83296))))

(declare-fun bs!451068 () Bool)

(assert (= bs!451068 (and d!659584 d!659564)))

(assert (=> bs!451068 (= lambda!83303 lambda!83299)))

(assert (=> d!659584 (= (nullableZipper!556 lt!824988) (exists!860 lt!824988 lambda!83303))))

(declare-fun bs!451069 () Bool)

(assert (= bs!451069 d!659584))

(declare-fun m!2648027 () Bool)

(assert (=> bs!451069 m!2648027))

(assert (=> b!2206233 d!659584))

(declare-fun d!659586 () Bool)

(declare-fun lt!825051 () Int)

(assert (=> d!659586 (and (>= lt!825051 (- 1)) (< lt!825051 lt!824985) (>= lt!825051 e!1409448) (or (= lt!825051 e!1409448) (>= lt!825051 (+ 1 from!1082))))))

(declare-fun e!1409528 () Int)

(assert (=> d!659586 (= lt!825051 e!1409528)))

(declare-fun c!352440 () Bool)

(declare-fun e!1409529 () Bool)

(assert (=> d!659586 (= c!352440 e!1409529)))

(declare-fun res!948356 () Bool)

(assert (=> d!659586 (=> res!948356 e!1409529)))

(assert (=> d!659586 (= res!948356 (= (+ 1 from!1082) lt!824985))))

(assert (=> d!659586 (and (>= (+ 1 from!1082) 0) (<= (+ 1 from!1082) lt!824985))))

(assert (=> d!659586 (= (furthestNullablePosition!410 lt!824988 (+ 1 from!1082) totalInput!891 lt!824985 e!1409448) lt!825051)))

(declare-fun b!2206366 () Bool)

(assert (=> b!2206366 (= e!1409529 (lostCauseZipper!372 lt!824988))))

(declare-fun lt!825052 () (Set Context!3692))

(declare-fun e!1409527 () Int)

(declare-fun b!2206367 () Bool)

(assert (=> b!2206367 (= e!1409528 (furthestNullablePosition!410 lt!825052 (+ 1 from!1082 1) totalInput!891 lt!824985 e!1409527))))

(assert (=> b!2206367 (= lt!825052 (derivationStepZipper!308 lt!824988 (apply!6352 totalInput!891 (+ 1 from!1082))))))

(declare-fun c!352439 () Bool)

(assert (=> b!2206367 (= c!352439 (nullableZipper!556 lt!825052))))

(declare-fun b!2206368 () Bool)

(assert (=> b!2206368 (= e!1409527 e!1409448)))

(declare-fun b!2206369 () Bool)

(assert (=> b!2206369 (= e!1409528 e!1409448)))

(declare-fun b!2206370 () Bool)

(assert (=> b!2206370 (= e!1409527 (+ 1 from!1082))))

(assert (= (and d!659586 (not res!948356)) b!2206366))

(assert (= (and d!659586 c!352440) b!2206369))

(assert (= (and d!659586 (not c!352440)) b!2206367))

(assert (= (and b!2206367 c!352439) b!2206370))

(assert (= (and b!2206367 (not c!352439)) b!2206368))

(declare-fun m!2648031 () Bool)

(assert (=> b!2206366 m!2648031))

(declare-fun m!2648033 () Bool)

(assert (=> b!2206367 m!2648033))

(declare-fun m!2648035 () Bool)

(assert (=> b!2206367 m!2648035))

(assert (=> b!2206367 m!2648035))

(declare-fun m!2648037 () Bool)

(assert (=> b!2206367 m!2648037))

(declare-fun m!2648039 () Bool)

(assert (=> b!2206367 m!2648039))

(assert (=> b!2206233 d!659586))

(declare-fun d!659590 () Bool)

(declare-fun lambda!83312 () Int)

(declare-fun forall!5274 (List!25857 Int) Bool)

(assert (=> d!659590 (= (inv!34762 setElem!19203) (forall!5274 (exprs!2346 setElem!19203) lambda!83312))))

(declare-fun bs!451072 () Bool)

(assert (= bs!451072 d!659590))

(declare-fun m!2648043 () Bool)

(assert (=> bs!451072 m!2648043))

(assert (=> setNonEmpty!19203 d!659590))

(declare-fun tp!685959 () Bool)

(declare-fun b!2206379 () Bool)

(declare-fun tp!685958 () Bool)

(declare-fun e!1409535 () Bool)

(assert (=> b!2206379 (= e!1409535 (and (inv!34764 (left!19809 (c!352384 totalInput!891))) tp!685959 (inv!34764 (right!20139 (c!352384 totalInput!891))) tp!685958))))

(declare-fun b!2206381 () Bool)

(declare-fun e!1409534 () Bool)

(declare-fun tp!685957 () Bool)

(assert (=> b!2206381 (= e!1409534 tp!685957)))

(declare-fun b!2206380 () Bool)

(declare-fun inv!34770 (IArray!16829) Bool)

(assert (=> b!2206380 (= e!1409535 (and (inv!34770 (xs!11354 (c!352384 totalInput!891))) e!1409534))))

(assert (=> b!2206236 (= tp!685940 (and (inv!34764 (c!352384 totalInput!891)) e!1409535))))

(assert (= (and b!2206236 (is-Node!8412 (c!352384 totalInput!891))) b!2206379))

(assert (= b!2206380 b!2206381))

(assert (= (and b!2206236 (is-Leaf!12318 (c!352384 totalInput!891))) b!2206380))

(declare-fun m!2648045 () Bool)

(assert (=> b!2206379 m!2648045))

(declare-fun m!2648047 () Bool)

(assert (=> b!2206379 m!2648047))

(declare-fun m!2648049 () Bool)

(assert (=> b!2206380 m!2648049))

(assert (=> b!2206236 m!2647895))

(declare-fun b!2206386 () Bool)

(declare-fun e!1409538 () Bool)

(declare-fun tp!685964 () Bool)

(declare-fun tp!685965 () Bool)

(assert (=> b!2206386 (= e!1409538 (and tp!685964 tp!685965))))

(assert (=> b!2206228 (= tp!685941 e!1409538)))

(assert (= (and b!2206228 (is-Cons!25773 (exprs!2346 setElem!19203))) b!2206386))

(declare-fun condSetEmpty!19209 () Bool)

(assert (=> setNonEmpty!19203 (= condSetEmpty!19209 (= setRest!19203 (as set.empty (Set Context!3692))))))

(declare-fun setRes!19209 () Bool)

(assert (=> setNonEmpty!19203 (= tp!685939 setRes!19209)))

(declare-fun setIsEmpty!19209 () Bool)

(assert (=> setIsEmpty!19209 setRes!19209))

(declare-fun setElem!19209 () Context!3692)

(declare-fun setNonEmpty!19209 () Bool)

(declare-fun e!1409541 () Bool)

(declare-fun tp!685971 () Bool)

(assert (=> setNonEmpty!19209 (= setRes!19209 (and tp!685971 (inv!34762 setElem!19209) e!1409541))))

(declare-fun setRest!19209 () (Set Context!3692))

(assert (=> setNonEmpty!19209 (= setRest!19203 (set.union (set.insert setElem!19209 (as set.empty (Set Context!3692))) setRest!19209))))

(declare-fun b!2206391 () Bool)

(declare-fun tp!685970 () Bool)

(assert (=> b!2206391 (= e!1409541 tp!685970)))

(assert (= (and setNonEmpty!19203 condSetEmpty!19209) setIsEmpty!19209))

(assert (= (and setNonEmpty!19203 (not condSetEmpty!19209)) setNonEmpty!19209))

(assert (= setNonEmpty!19209 b!2206391))

(declare-fun m!2648051 () Bool)

(assert (=> setNonEmpty!19209 m!2648051))

(push 1)

(assert (not b!2206386))

(assert (not d!659580))

(assert (not b!2206355))

(assert (not b!2206381))

(assert (not d!659570))

(assert (not b!2206284))

(assert (not b!2206391))

(assert (not d!659582))

(assert (not b!2206316))

(assert (not d!659584))

(assert (not b!2206367))

(assert (not b!2206295))

(assert (not bm!132266))

(assert (not b!2206296))

(assert (not setNonEmpty!19209))

(assert (not d!659564))

(assert (not bm!132262))

(assert (not d!659574))

(assert (not b!2206350))

(assert (not d!659568))

(assert (not b!2206282))

(assert (not b!2206379))

(assert (not b!2206338))

(assert (not b!2206236))

(assert (not bm!132263))

(assert (not b!2206366))

(assert (not b!2206289))

(assert (not b!2206313))

(assert (not d!659560))

(assert (not d!659576))

(assert (not d!659572))

(assert (not b!2206290))

(assert (not b!2206344))

(assert (not b!2206315))

(assert (not d!659562))

(assert (not b!2206311))

(assert (not d!659590))

(assert (not d!659566))

(assert (not b!2206380))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

