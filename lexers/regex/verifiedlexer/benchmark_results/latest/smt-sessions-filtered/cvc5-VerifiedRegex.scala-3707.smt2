; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!208768 () Bool)

(assert start!208768)

(assert (=> start!208768 true))

(declare-fun b!2152067 () Bool)

(declare-fun res!927967 () Bool)

(declare-fun e!1376346 () Bool)

(assert (=> b!2152067 (=> (not res!927967) (not e!1376346))))

(declare-fun res1!7 () Int)

(declare-fun res2!7 () Int)

(assert (=> b!2152067 (= res!927967 (= res1!7 res2!7))))

(declare-fun tp!669008 () Bool)

(declare-fun setRes!17311 () Bool)

(declare-fun setNonEmpty!17311 () Bool)

(declare-fun e!1376347 () Bool)

(declare-datatypes ((C!11906 0))(
  ( (C!11907 (val!6939 Int)) )
))
(declare-datatypes ((Regex!5880 0))(
  ( (ElementMatch!5880 (c!341325 C!11906)) (Concat!10182 (regOne!12272 Regex!5880) (regTwo!12272 Regex!5880)) (EmptyExpr!5880) (Star!5880 (reg!6209 Regex!5880)) (EmptyLang!5880) (Union!5880 (regOne!12273 Regex!5880) (regTwo!12273 Regex!5880)) )
))
(declare-datatypes ((List!24809 0))(
  ( (Nil!24725) (Cons!24725 (h!30126 Regex!5880) (t!197357 List!24809)) )
))
(declare-datatypes ((Context!2900 0))(
  ( (Context!2901 (exprs!1950 List!24809)) )
))
(declare-fun setElem!17311 () Context!2900)

(declare-fun inv!32613 (Context!2900) Bool)

(assert (=> setNonEmpty!17311 (= setRes!17311 (and tp!669008 (inv!32613 setElem!17311) e!1376347))))

(declare-datatypes ((List!24810 0))(
  ( (Nil!24726) (Cons!24726 (h!30127 C!11906) (t!197358 List!24810)) )
))
(declare-datatypes ((IArray!16037 0))(
  ( (IArray!16038 (innerList!8076 List!24810)) )
))
(declare-datatypes ((Conc!8016 0))(
  ( (Node!8016 (left!19005 Conc!8016) (right!19335 Conc!8016) (csize!16262 Int) (cheight!8227 Int)) (Leaf!11724 (xs!10958 IArray!16037) (csize!16263 Int)) (Empty!8016) )
))
(declare-datatypes ((BalanceConc!15794 0))(
  ( (BalanceConc!15795 (c!341326 Conc!8016)) )
))
(declare-datatypes ((StackFrame!294 0))(
  ( (StackFrame!295 (z!5949 (Set Context!2900)) (from!2792 Int) (lastNullablePos!479 Int) (res!927969 Int) (totalInput!3281 BalanceConc!15794)) )
))
(declare-datatypes ((List!24811 0))(
  ( (Nil!24727) (Cons!24727 (h!30128 StackFrame!294) (t!197359 List!24811)) )
))
(declare-fun s!7978 () List!24811)

(declare-fun setRest!17311 () (Set Context!2900))

(assert (=> setNonEmpty!17311 (= (z!5949 (h!30128 s!7978)) (set.union (set.insert setElem!17311 (as set.empty (Set Context!2900))) setRest!17311))))

(declare-fun res!927968 () Bool)

(assert (=> start!208768 (=> (not res!927968) (not e!1376346))))

(declare-fun lambda!81043 () Int)

(declare-fun forall!5054 (List!24811 Int) Bool)

(assert (=> start!208768 (= res!927968 (forall!5054 s!7978 lambda!81043))))

(assert (=> start!208768 e!1376346))

(declare-fun e!1376345 () Bool)

(assert (=> start!208768 e!1376345))

(assert (=> start!208768 true))

(declare-fun setIsEmpty!17311 () Bool)

(assert (=> setIsEmpty!17311 setRes!17311))

(declare-fun b!2152068 () Bool)

(declare-fun e!1376348 () Bool)

(declare-fun tp!669010 () Bool)

(declare-fun inv!32614 (Conc!8016) Bool)

(assert (=> b!2152068 (= e!1376348 (and (inv!32614 (c!341326 (totalInput!3281 (h!30128 s!7978)))) tp!669010))))

(declare-fun b!2152069 () Bool)

(declare-fun e!1376349 () Bool)

(declare-fun inv!32615 (BalanceConc!15794) Bool)

(assert (=> b!2152069 (= e!1376349 (and setRes!17311 (inv!32615 (totalInput!3281 (h!30128 s!7978))) e!1376348))))

(declare-fun condSetEmpty!17311 () Bool)

(assert (=> b!2152069 (= condSetEmpty!17311 (= (z!5949 (h!30128 s!7978)) (as set.empty (Set Context!2900))))))

(declare-fun tp!669011 () Bool)

(declare-fun b!2152070 () Bool)

(declare-fun inv!32616 (StackFrame!294) Bool)

(assert (=> b!2152070 (= e!1376345 (and (inv!32616 (h!30128 s!7978)) e!1376349 tp!669011))))

(declare-fun b!2152071 () Bool)

(declare-fun tp!669009 () Bool)

(assert (=> b!2152071 (= e!1376347 tp!669009)))

(declare-fun b!2152072 () Bool)

(declare-fun size!19343 (List!24811) Int)

(assert (=> b!2152072 (= e!1376346 (< (size!19343 s!7978) 0))))

(assert (= (and start!208768 res!927968) b!2152067))

(assert (= (and b!2152067 res!927967) b!2152072))

(assert (= (and b!2152069 condSetEmpty!17311) setIsEmpty!17311))

(assert (= (and b!2152069 (not condSetEmpty!17311)) setNonEmpty!17311))

(assert (= setNonEmpty!17311 b!2152071))

(assert (= b!2152069 b!2152068))

(assert (= b!2152070 b!2152069))

(assert (= (and start!208768 (is-Cons!24727 s!7978)) b!2152070))

(declare-fun m!2594446 () Bool)

(assert (=> start!208768 m!2594446))

(declare-fun m!2594448 () Bool)

(assert (=> setNonEmpty!17311 m!2594448))

(declare-fun m!2594450 () Bool)

(assert (=> b!2152069 m!2594450))

(declare-fun m!2594452 () Bool)

(assert (=> b!2152070 m!2594452))

(declare-fun m!2594454 () Bool)

(assert (=> b!2152068 m!2594454))

(declare-fun m!2594456 () Bool)

(assert (=> b!2152072 m!2594456))

(push 1)

(assert (not b!2152068))

(assert (not b!2152072))

(assert (not setNonEmpty!17311))

(assert (not b!2152071))

(assert (not start!208768))

(assert (not b!2152069))

(assert (not b!2152070))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!645842 () Bool)

(declare-fun c!341331 () Bool)

(assert (=> d!645842 (= c!341331 (is-Node!8016 (c!341326 (totalInput!3281 (h!30128 s!7978)))))))

(declare-fun e!1376369 () Bool)

(assert (=> d!645842 (= (inv!32614 (c!341326 (totalInput!3281 (h!30128 s!7978)))) e!1376369)))

(declare-fun b!2152101 () Bool)

(declare-fun inv!32621 (Conc!8016) Bool)

(assert (=> b!2152101 (= e!1376369 (inv!32621 (c!341326 (totalInput!3281 (h!30128 s!7978)))))))

(declare-fun b!2152102 () Bool)

(declare-fun e!1376370 () Bool)

(assert (=> b!2152102 (= e!1376369 e!1376370)))

(declare-fun res!927979 () Bool)

(assert (=> b!2152102 (= res!927979 (not (is-Leaf!11724 (c!341326 (totalInput!3281 (h!30128 s!7978))))))))

(assert (=> b!2152102 (=> res!927979 e!1376370)))

(declare-fun b!2152103 () Bool)

(declare-fun inv!32622 (Conc!8016) Bool)

(assert (=> b!2152103 (= e!1376370 (inv!32622 (c!341326 (totalInput!3281 (h!30128 s!7978)))))))

(assert (= (and d!645842 c!341331) b!2152101))

(assert (= (and d!645842 (not c!341331)) b!2152102))

(assert (= (and b!2152102 (not res!927979)) b!2152103))

(declare-fun m!2594470 () Bool)

(assert (=> b!2152101 m!2594470))

(declare-fun m!2594472 () Bool)

(assert (=> b!2152103 m!2594472))

(assert (=> b!2152068 d!645842))

(declare-fun d!645846 () Bool)

(declare-fun res!927984 () Bool)

(declare-fun e!1376375 () Bool)

(assert (=> d!645846 (=> res!927984 e!1376375)))

(assert (=> d!645846 (= res!927984 (is-Nil!24727 s!7978))))

(assert (=> d!645846 (= (forall!5054 s!7978 lambda!81043) e!1376375)))

(declare-fun b!2152108 () Bool)

(declare-fun e!1376376 () Bool)

(assert (=> b!2152108 (= e!1376375 e!1376376)))

(declare-fun res!927985 () Bool)

(assert (=> b!2152108 (=> (not res!927985) (not e!1376376))))

(declare-fun dynLambda!11399 (Int StackFrame!294) Bool)

(assert (=> b!2152108 (= res!927985 (dynLambda!11399 lambda!81043 (h!30128 s!7978)))))

(declare-fun b!2152109 () Bool)

(assert (=> b!2152109 (= e!1376376 (forall!5054 (t!197359 s!7978) lambda!81043))))

(assert (= (and d!645846 (not res!927984)) b!2152108))

(assert (= (and b!2152108 res!927985) b!2152109))

(declare-fun b_lambda!70849 () Bool)

(assert (=> (not b_lambda!70849) (not b!2152108)))

(declare-fun m!2594474 () Bool)

(assert (=> b!2152108 m!2594474))

(declare-fun m!2594476 () Bool)

(assert (=> b!2152109 m!2594476))

(assert (=> start!208768 d!645846))

(declare-fun d!645848 () Bool)

(declare-fun isBalanced!2485 (Conc!8016) Bool)

(assert (=> d!645848 (= (inv!32615 (totalInput!3281 (h!30128 s!7978))) (isBalanced!2485 (c!341326 (totalInput!3281 (h!30128 s!7978)))))))

(declare-fun bs!445669 () Bool)

(assert (= bs!445669 d!645848))

(declare-fun m!2594478 () Bool)

(assert (=> bs!445669 m!2594478))

(assert (=> b!2152069 d!645848))

(declare-fun b!2152132 () Bool)

(declare-fun res!928014 () Bool)

(declare-fun e!1376385 () Bool)

(assert (=> b!2152132 (=> (not res!928014) (not e!1376385))))

(declare-fun e!1376386 () Bool)

(assert (=> b!2152132 (= res!928014 e!1376386)))

(declare-fun res!928013 () Bool)

(assert (=> b!2152132 (=> res!928013 e!1376386)))

(declare-fun nullableZipper!204 ((Set Context!2900)) Bool)

(assert (=> b!2152132 (= res!928013 (not (nullableZipper!204 (z!5949 (h!30128 s!7978)))))))

(declare-fun b!2152134 () Bool)

(assert (=> b!2152134 (= e!1376386 (= (lastNullablePos!479 (h!30128 s!7978)) (- (from!2792 (h!30128 s!7978)) 1)))))

(declare-fun b!2152135 () Bool)

(declare-fun res!928012 () Bool)

(assert (=> b!2152135 (=> (not res!928012) (not e!1376385))))

(declare-fun size!19345 (BalanceConc!15794) Int)

(assert (=> b!2152135 (= res!928012 (= (size!19345 (totalInput!3281 (h!30128 s!7978))) (size!19345 (totalInput!3281 (h!30128 s!7978)))))))

(declare-fun b!2152136 () Bool)

(declare-fun res!928011 () Bool)

(assert (=> b!2152136 (=> (not res!928011) (not e!1376385))))

(assert (=> b!2152136 (= res!928011 (<= (from!2792 (h!30128 s!7978)) (size!19345 (totalInput!3281 (h!30128 s!7978)))))))

(declare-fun b!2152137 () Bool)

(declare-fun res!928010 () Bool)

(assert (=> b!2152137 (=> (not res!928010) (not e!1376385))))

(assert (=> b!2152137 (= res!928010 (and (>= (lastNullablePos!479 (h!30128 s!7978)) (- 1)) (< (lastNullablePos!479 (h!30128 s!7978)) (from!2792 (h!30128 s!7978)))))))

(declare-fun d!645850 () Bool)

(declare-fun res!928015 () Bool)

(assert (=> d!645850 (=> (not res!928015) (not e!1376385))))

(assert (=> d!645850 (= res!928015 (>= (from!2792 (h!30128 s!7978)) 0))))

(assert (=> d!645850 (= (inv!32616 (h!30128 s!7978)) e!1376385)))

(declare-fun b!2152133 () Bool)

(declare-fun furthestNullablePosition!113 ((Set Context!2900) Int BalanceConc!15794 Int Int) Int)

(assert (=> b!2152133 (= e!1376385 (= (res!927969 (h!30128 s!7978)) (furthestNullablePosition!113 (z!5949 (h!30128 s!7978)) (from!2792 (h!30128 s!7978)) (totalInput!3281 (h!30128 s!7978)) (size!19345 (totalInput!3281 (h!30128 s!7978))) (lastNullablePos!479 (h!30128 s!7978)))))))

(assert (= (and d!645850 res!928015) b!2152136))

(assert (= (and b!2152136 res!928011) b!2152135))

(assert (= (and b!2152135 res!928012) b!2152137))

(assert (= (and b!2152137 res!928010) b!2152132))

(assert (= (and b!2152132 (not res!928013)) b!2152134))

(assert (= (and b!2152132 res!928014) b!2152133))

(declare-fun m!2594480 () Bool)

(assert (=> b!2152132 m!2594480))

(declare-fun m!2594482 () Bool)

(assert (=> b!2152135 m!2594482))

(assert (=> b!2152136 m!2594482))

(assert (=> b!2152133 m!2594482))

(assert (=> b!2152133 m!2594482))

(declare-fun m!2594484 () Bool)

(assert (=> b!2152133 m!2594484))

(assert (=> b!2152070 d!645850))

(declare-fun d!645852 () Bool)

(declare-fun lambda!81049 () Int)

(declare-fun forall!5056 (List!24809 Int) Bool)

(assert (=> d!645852 (= (inv!32613 setElem!17311) (forall!5056 (exprs!1950 setElem!17311) lambda!81049))))

(declare-fun bs!445671 () Bool)

(assert (= bs!445671 d!645852))

(declare-fun m!2594504 () Bool)

(assert (=> bs!445671 m!2594504))

(assert (=> setNonEmpty!17311 d!645852))

(declare-fun d!645864 () Bool)

(declare-fun lt!801258 () Int)

(assert (=> d!645864 (>= lt!801258 0)))

(declare-fun e!1376406 () Int)

(assert (=> d!645864 (= lt!801258 e!1376406)))

(declare-fun c!341340 () Bool)

(assert (=> d!645864 (= c!341340 (is-Nil!24727 s!7978))))

(assert (=> d!645864 (= (size!19343 s!7978) lt!801258)))

(declare-fun b!2152171 () Bool)

(assert (=> b!2152171 (= e!1376406 0)))

(declare-fun b!2152172 () Bool)

(assert (=> b!2152172 (= e!1376406 (+ 1 (size!19343 (t!197359 s!7978))))))

(assert (= (and d!645864 c!341340) b!2152171))

(assert (= (and d!645864 (not c!341340)) b!2152172))

(declare-fun m!2594506 () Bool)

(assert (=> b!2152172 m!2594506))

(assert (=> b!2152072 d!645864))

(declare-fun e!1376411 () Bool)

(declare-fun tp!669032 () Bool)

(declare-fun b!2152181 () Bool)

(declare-fun tp!669030 () Bool)

(assert (=> b!2152181 (= e!1376411 (and (inv!32614 (left!19005 (c!341326 (totalInput!3281 (h!30128 s!7978))))) tp!669030 (inv!32614 (right!19335 (c!341326 (totalInput!3281 (h!30128 s!7978))))) tp!669032))))

(declare-fun b!2152183 () Bool)

(declare-fun e!1376412 () Bool)

(declare-fun tp!669031 () Bool)

(assert (=> b!2152183 (= e!1376412 tp!669031)))

(declare-fun b!2152182 () Bool)

(declare-fun inv!32623 (IArray!16037) Bool)

(assert (=> b!2152182 (= e!1376411 (and (inv!32623 (xs!10958 (c!341326 (totalInput!3281 (h!30128 s!7978))))) e!1376412))))

(assert (=> b!2152068 (= tp!669010 (and (inv!32614 (c!341326 (totalInput!3281 (h!30128 s!7978)))) e!1376411))))

(assert (= (and b!2152068 (is-Node!8016 (c!341326 (totalInput!3281 (h!30128 s!7978))))) b!2152181))

(assert (= b!2152182 b!2152183))

(assert (= (and b!2152068 (is-Leaf!11724 (c!341326 (totalInput!3281 (h!30128 s!7978))))) b!2152182))

(declare-fun m!2594508 () Bool)

(assert (=> b!2152181 m!2594508))

(declare-fun m!2594510 () Bool)

(assert (=> b!2152181 m!2594510))

(declare-fun m!2594512 () Bool)

(assert (=> b!2152182 m!2594512))

(assert (=> b!2152068 m!2594454))

(declare-fun e!1376424 () Bool)

(assert (=> b!2152070 (= tp!669011 e!1376424)))

(declare-fun b!2152194 () Bool)

(declare-fun e!1376423 () Bool)

(declare-fun tp!669043 () Bool)

(assert (=> b!2152194 (= e!1376423 (and (inv!32614 (c!341326 (totalInput!3281 (h!30128 (t!197359 s!7978))))) tp!669043))))

(declare-fun setRes!17317 () Bool)

(declare-fun setElem!17317 () Context!2900)

(declare-fun setNonEmpty!17317 () Bool)

(declare-fun tp!669042 () Bool)

(declare-fun e!1376421 () Bool)

(assert (=> setNonEmpty!17317 (= setRes!17317 (and tp!669042 (inv!32613 setElem!17317) e!1376421))))

(declare-fun setRest!17317 () (Set Context!2900))

(assert (=> setNonEmpty!17317 (= (z!5949 (h!30128 (t!197359 s!7978))) (set.union (set.insert setElem!17317 (as set.empty (Set Context!2900))) setRest!17317))))

(declare-fun b!2152195 () Bool)

(declare-fun tp!669044 () Bool)

(assert (=> b!2152195 (= e!1376421 tp!669044)))

(declare-fun e!1376422 () Bool)

(declare-fun b!2152196 () Bool)

(declare-fun tp!669041 () Bool)

(assert (=> b!2152196 (= e!1376424 (and (inv!32616 (h!30128 (t!197359 s!7978))) e!1376422 tp!669041))))

(declare-fun b!2152197 () Bool)

(assert (=> b!2152197 (= e!1376422 (and setRes!17317 (inv!32615 (totalInput!3281 (h!30128 (t!197359 s!7978)))) e!1376423))))

(declare-fun condSetEmpty!17317 () Bool)

(assert (=> b!2152197 (= condSetEmpty!17317 (= (z!5949 (h!30128 (t!197359 s!7978))) (as set.empty (Set Context!2900))))))

(declare-fun setIsEmpty!17317 () Bool)

(assert (=> setIsEmpty!17317 setRes!17317))

(assert (= (and b!2152197 condSetEmpty!17317) setIsEmpty!17317))

(assert (= (and b!2152197 (not condSetEmpty!17317)) setNonEmpty!17317))

(assert (= setNonEmpty!17317 b!2152195))

(assert (= b!2152197 b!2152194))

(assert (= b!2152196 b!2152197))

(assert (= (and b!2152070 (is-Cons!24727 (t!197359 s!7978))) b!2152196))

(declare-fun m!2594514 () Bool)

(assert (=> b!2152194 m!2594514))

(declare-fun m!2594516 () Bool)

(assert (=> setNonEmpty!17317 m!2594516))

(declare-fun m!2594518 () Bool)

(assert (=> b!2152196 m!2594518))

(declare-fun m!2594520 () Bool)

(assert (=> b!2152197 m!2594520))

(declare-fun b!2152202 () Bool)

(declare-fun e!1376427 () Bool)

(declare-fun tp!669049 () Bool)

(declare-fun tp!669050 () Bool)

(assert (=> b!2152202 (= e!1376427 (and tp!669049 tp!669050))))

(assert (=> b!2152071 (= tp!669009 e!1376427)))

(assert (= (and b!2152071 (is-Cons!24725 (exprs!1950 setElem!17311))) b!2152202))

(declare-fun condSetEmpty!17320 () Bool)

(assert (=> setNonEmpty!17311 (= condSetEmpty!17320 (= setRest!17311 (as set.empty (Set Context!2900))))))

(declare-fun setRes!17320 () Bool)

(assert (=> setNonEmpty!17311 (= tp!669008 setRes!17320)))

(declare-fun setIsEmpty!17320 () Bool)

(assert (=> setIsEmpty!17320 setRes!17320))

(declare-fun e!1376430 () Bool)

(declare-fun tp!669056 () Bool)

(declare-fun setNonEmpty!17320 () Bool)

(declare-fun setElem!17320 () Context!2900)

(assert (=> setNonEmpty!17320 (= setRes!17320 (and tp!669056 (inv!32613 setElem!17320) e!1376430))))

(declare-fun setRest!17320 () (Set Context!2900))

(assert (=> setNonEmpty!17320 (= setRest!17311 (set.union (set.insert setElem!17320 (as set.empty (Set Context!2900))) setRest!17320))))

(declare-fun b!2152207 () Bool)

(declare-fun tp!669055 () Bool)

(assert (=> b!2152207 (= e!1376430 tp!669055)))

(assert (= (and setNonEmpty!17311 condSetEmpty!17320) setIsEmpty!17320))

(assert (= (and setNonEmpty!17311 (not condSetEmpty!17320)) setNonEmpty!17320))

(assert (= setNonEmpty!17320 b!2152207))

(declare-fun m!2594522 () Bool)

(assert (=> setNonEmpty!17320 m!2594522))

(declare-fun b_lambda!70853 () Bool)

(assert (= b_lambda!70849 (or start!208768 b_lambda!70853)))

(declare-fun bs!445672 () Bool)

(declare-fun d!645866 () Bool)

(assert (= bs!445672 (and d!645866 start!208768)))

(assert (=> bs!445672 (= (dynLambda!11399 lambda!81043 (h!30128 s!7978)) (= (res!927969 (h!30128 s!7978)) res1!7))))

(assert (=> b!2152108 d!645866))

(push 1)

(assert (not b!2152133))

(assert (not b!2152183))

(assert (not b!2152109))

(assert (not b!2152103))

(assert (not setNonEmpty!17317))

(assert (not b!2152207))

(assert (not b!2152135))

(assert (not b!2152195))

(assert (not b!2152181))

(assert (not b!2152194))

(assert (not setNonEmpty!17320))

(assert (not d!645848))

(assert (not b!2152182))

(assert (not b_lambda!70853))

(assert (not b!2152132))

(assert (not b!2152136))

(assert (not b!2152197))

(assert (not b!2152068))

(assert (not b!2152196))

(assert (not b!2152101))

(assert (not b!2152172))

(assert (not d!645852))

(assert (not b!2152202))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

