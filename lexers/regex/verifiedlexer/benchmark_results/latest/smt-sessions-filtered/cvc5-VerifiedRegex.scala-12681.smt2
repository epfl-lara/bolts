; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!701182 () Bool)

(assert start!701182)

(declare-fun res!2933160 () Bool)

(declare-fun e!4333847 () Bool)

(assert (=> start!701182 (=> (not res!2933160) (not e!4333847))))

(declare-datatypes ((C!37214 0))(
  ( (C!37215 (val!28555 Int)) )
))
(declare-datatypes ((Regex!18470 0))(
  ( (ElementMatch!18470 (c!1341247 C!37214)) (Concat!27315 (regOne!37452 Regex!18470) (regTwo!37452 Regex!18470)) (EmptyExpr!18470) (Star!18470 (reg!18799 Regex!18470)) (EmptyLang!18470) (Union!18470 (regOne!37453 Regex!18470) (regTwo!37453 Regex!18470)) )
))
(declare-datatypes ((List!70028 0))(
  ( (Nil!69904) (Cons!69904 (h!76352 Regex!18470) (t!384077 List!70028)) )
))
(declare-datatypes ((Context!14820 0))(
  ( (Context!14821 (exprs!7910 List!70028)) )
))
(declare-fun lt!2572601 () (Set Context!14820))

(declare-datatypes ((List!70029 0))(
  ( (Nil!69905) (Cons!69905 (h!76353 C!37214) (t!384078 List!70029)) )
))
(declare-fun s1!1971 () List!70029)

(declare-fun matchZipper!3380 ((Set Context!14820) List!70029) Bool)

(assert (=> start!701182 (= res!2933160 (matchZipper!3380 lt!2572601 s1!1971))))

(declare-fun ct1!232 () Context!14820)

(assert (=> start!701182 (= lt!2572601 (set.insert ct1!232 (as set.empty (Set Context!14820))))))

(assert (=> start!701182 e!4333847))

(declare-fun e!4333845 () Bool)

(declare-fun inv!89186 (Context!14820) Bool)

(assert (=> start!701182 (and (inv!89186 ct1!232) e!4333845)))

(declare-fun e!4333848 () Bool)

(assert (=> start!701182 e!4333848))

(declare-fun e!4333844 () Bool)

(assert (=> start!701182 e!4333844))

(declare-fun ct2!328 () Context!14820)

(declare-fun e!4333842 () Bool)

(assert (=> start!701182 (and (inv!89186 ct2!328) e!4333842)))

(declare-fun b!7229574 () Bool)

(declare-fun e!4333843 () Bool)

(assert (=> b!7229574 (= e!4333847 e!4333843)))

(declare-fun res!2933158 () Bool)

(assert (=> b!7229574 (=> (not res!2933158) (not e!4333843))))

(assert (=> b!7229574 (= res!2933158 (is-Nil!69904 (exprs!7910 ct1!232)))))

(declare-fun lt!2572600 () List!70028)

(declare-fun ++!16248 (List!70028 List!70028) List!70028)

(assert (=> b!7229574 (= lt!2572600 (++!16248 (exprs!7910 ct1!232) (exprs!7910 ct2!328)))))

(declare-datatypes ((Unit!163475 0))(
  ( (Unit!163476) )
))
(declare-fun lt!2572599 () Unit!163475)

(declare-fun lambda!438958 () Int)

(declare-fun lemmaConcatPreservesForall!1279 (List!70028 List!70028 Int) Unit!163475)

(assert (=> b!7229574 (= lt!2572599 (lemmaConcatPreservesForall!1279 (exprs!7910 ct1!232) (exprs!7910 ct2!328) lambda!438958))))

(declare-fun b!7229575 () Bool)

(declare-fun res!2933159 () Bool)

(assert (=> b!7229575 (=> (not res!2933159) (not e!4333847))))

(declare-fun s2!1849 () List!70029)

(assert (=> b!7229575 (= res!2933159 (matchZipper!3380 (set.insert ct2!328 (as set.empty (Set Context!14820))) s2!1849))))

(declare-fun b!7229576 () Bool)

(declare-fun e!4333846 () Bool)

(declare-fun forall!17296 (List!70028 Int) Bool)

(assert (=> b!7229576 (= e!4333846 (forall!17296 (exprs!7910 ct2!328) lambda!438958))))

(declare-fun b!7229577 () Bool)

(declare-fun tp_is_empty!46405 () Bool)

(declare-fun tp!2033380 () Bool)

(assert (=> b!7229577 (= e!4333848 (and tp_is_empty!46405 tp!2033380))))

(declare-fun b!7229578 () Bool)

(declare-fun tp!2033377 () Bool)

(assert (=> b!7229578 (= e!4333845 tp!2033377)))

(declare-fun b!7229579 () Bool)

(declare-fun tp!2033378 () Bool)

(assert (=> b!7229579 (= e!4333844 (and tp_is_empty!46405 tp!2033378))))

(declare-fun b!7229580 () Bool)

(assert (=> b!7229580 (= e!4333843 (not e!4333846))))

(declare-fun res!2933157 () Bool)

(assert (=> b!7229580 (=> res!2933157 e!4333846)))

(assert (=> b!7229580 (= res!2933157 (not (forall!17296 (exprs!7910 ct1!232) lambda!438958)))))

(declare-fun isEmpty!40304 (List!70029) Bool)

(assert (=> b!7229580 (isEmpty!40304 s1!1971)))

(declare-fun lt!2572598 () Unit!163475)

(declare-fun lemmaZipperOfEmptyContextMatchesEmptyString!37 ((Set Context!14820) List!70029) Unit!163475)

(assert (=> b!7229580 (= lt!2572598 (lemmaZipperOfEmptyContextMatchesEmptyString!37 lt!2572601 s1!1971))))

(declare-fun b!7229581 () Bool)

(declare-fun tp!2033379 () Bool)

(assert (=> b!7229581 (= e!4333842 tp!2033379)))

(assert (= (and start!701182 res!2933160) b!7229575))

(assert (= (and b!7229575 res!2933159) b!7229574))

(assert (= (and b!7229574 res!2933158) b!7229580))

(assert (= (and b!7229580 (not res!2933157)) b!7229576))

(assert (= start!701182 b!7229578))

(assert (= (and start!701182 (is-Cons!69905 s1!1971)) b!7229577))

(assert (= (and start!701182 (is-Cons!69905 s2!1849)) b!7229579))

(assert (= start!701182 b!7229581))

(declare-fun m!7897658 () Bool)

(assert (=> b!7229580 m!7897658))

(declare-fun m!7897660 () Bool)

(assert (=> b!7229580 m!7897660))

(declare-fun m!7897662 () Bool)

(assert (=> b!7229580 m!7897662))

(declare-fun m!7897664 () Bool)

(assert (=> start!701182 m!7897664))

(declare-fun m!7897666 () Bool)

(assert (=> start!701182 m!7897666))

(declare-fun m!7897668 () Bool)

(assert (=> start!701182 m!7897668))

(declare-fun m!7897670 () Bool)

(assert (=> start!701182 m!7897670))

(declare-fun m!7897672 () Bool)

(assert (=> b!7229576 m!7897672))

(declare-fun m!7897674 () Bool)

(assert (=> b!7229575 m!7897674))

(assert (=> b!7229575 m!7897674))

(declare-fun m!7897676 () Bool)

(assert (=> b!7229575 m!7897676))

(declare-fun m!7897678 () Bool)

(assert (=> b!7229574 m!7897678))

(declare-fun m!7897680 () Bool)

(assert (=> b!7229574 m!7897680))

(push 1)

(assert tp_is_empty!46405)

(assert (not b!7229577))

(assert (not b!7229579))

(assert (not b!7229581))

(assert (not start!701182))

(assert (not b!7229574))

(assert (not b!7229576))

(assert (not b!7229578))

(assert (not b!7229575))

(assert (not b!7229580))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!2245176 () Bool)

(declare-fun res!2933177 () Bool)

(declare-fun e!4333874 () Bool)

(assert (=> d!2245176 (=> res!2933177 e!4333874)))

(assert (=> d!2245176 (= res!2933177 (is-Nil!69904 (exprs!7910 ct2!328)))))

(assert (=> d!2245176 (= (forall!17296 (exprs!7910 ct2!328) lambda!438958) e!4333874)))

(declare-fun b!7229610 () Bool)

(declare-fun e!4333875 () Bool)

(assert (=> b!7229610 (= e!4333874 e!4333875)))

(declare-fun res!2933178 () Bool)

(assert (=> b!7229610 (=> (not res!2933178) (not e!4333875))))

(declare-fun dynLambda!28492 (Int Regex!18470) Bool)

(assert (=> b!7229610 (= res!2933178 (dynLambda!28492 lambda!438958 (h!76352 (exprs!7910 ct2!328))))))

(declare-fun b!7229611 () Bool)

(assert (=> b!7229611 (= e!4333875 (forall!17296 (t!384077 (exprs!7910 ct2!328)) lambda!438958))))

(assert (= (and d!2245176 (not res!2933177)) b!7229610))

(assert (= (and b!7229610 res!2933178) b!7229611))

(declare-fun b_lambda!276955 () Bool)

(assert (=> (not b_lambda!276955) (not b!7229610)))

(declare-fun m!7897706 () Bool)

(assert (=> b!7229610 m!7897706))

(declare-fun m!7897708 () Bool)

(assert (=> b!7229611 m!7897708))

(assert (=> b!7229576 d!2245176))

(declare-fun d!2245178 () Bool)

(declare-fun c!1341251 () Bool)

(assert (=> d!2245178 (= c!1341251 (isEmpty!40304 s2!1849))))

(declare-fun e!4333878 () Bool)

(assert (=> d!2245178 (= (matchZipper!3380 (set.insert ct2!328 (as set.empty (Set Context!14820))) s2!1849) e!4333878)))

(declare-fun b!7229616 () Bool)

(declare-fun nullableZipper!2795 ((Set Context!14820)) Bool)

(assert (=> b!7229616 (= e!4333878 (nullableZipper!2795 (set.insert ct2!328 (as set.empty (Set Context!14820)))))))

(declare-fun b!7229617 () Bool)

(declare-fun derivationStepZipper!3264 ((Set Context!14820) C!37214) (Set Context!14820))

(declare-fun head!14781 (List!70029) C!37214)

(declare-fun tail!14096 (List!70029) List!70029)

(assert (=> b!7229617 (= e!4333878 (matchZipper!3380 (derivationStepZipper!3264 (set.insert ct2!328 (as set.empty (Set Context!14820))) (head!14781 s2!1849)) (tail!14096 s2!1849)))))

(assert (= (and d!2245178 c!1341251) b!7229616))

(assert (= (and d!2245178 (not c!1341251)) b!7229617))

(declare-fun m!7897710 () Bool)

(assert (=> d!2245178 m!7897710))

(assert (=> b!7229616 m!7897674))

(declare-fun m!7897712 () Bool)

(assert (=> b!7229616 m!7897712))

(declare-fun m!7897714 () Bool)

(assert (=> b!7229617 m!7897714))

(assert (=> b!7229617 m!7897674))

(assert (=> b!7229617 m!7897714))

(declare-fun m!7897716 () Bool)

(assert (=> b!7229617 m!7897716))

(declare-fun m!7897718 () Bool)

(assert (=> b!7229617 m!7897718))

(assert (=> b!7229617 m!7897716))

(assert (=> b!7229617 m!7897718))

(declare-fun m!7897720 () Bool)

(assert (=> b!7229617 m!7897720))

(assert (=> b!7229575 d!2245178))

(declare-fun d!2245182 () Bool)

(declare-fun res!2933179 () Bool)

(declare-fun e!4333879 () Bool)

(assert (=> d!2245182 (=> res!2933179 e!4333879)))

(assert (=> d!2245182 (= res!2933179 (is-Nil!69904 (exprs!7910 ct1!232)))))

(assert (=> d!2245182 (= (forall!17296 (exprs!7910 ct1!232) lambda!438958) e!4333879)))

(declare-fun b!7229618 () Bool)

(declare-fun e!4333880 () Bool)

(assert (=> b!7229618 (= e!4333879 e!4333880)))

(declare-fun res!2933180 () Bool)

(assert (=> b!7229618 (=> (not res!2933180) (not e!4333880))))

(assert (=> b!7229618 (= res!2933180 (dynLambda!28492 lambda!438958 (h!76352 (exprs!7910 ct1!232))))))

(declare-fun b!7229619 () Bool)

(assert (=> b!7229619 (= e!4333880 (forall!17296 (t!384077 (exprs!7910 ct1!232)) lambda!438958))))

(assert (= (and d!2245182 (not res!2933179)) b!7229618))

(assert (= (and b!7229618 res!2933180) b!7229619))

(declare-fun b_lambda!276957 () Bool)

(assert (=> (not b_lambda!276957) (not b!7229618)))

(declare-fun m!7897722 () Bool)

(assert (=> b!7229618 m!7897722))

(declare-fun m!7897724 () Bool)

(assert (=> b!7229619 m!7897724))

(assert (=> b!7229580 d!2245182))

(declare-fun d!2245184 () Bool)

(assert (=> d!2245184 (= (isEmpty!40304 s1!1971) (is-Nil!69905 s1!1971))))

(assert (=> b!7229580 d!2245184))

(declare-fun d!2245186 () Bool)

(assert (=> d!2245186 (= (matchZipper!3380 lt!2572601 s1!1971) (isEmpty!40304 s1!1971))))

(declare-fun lt!2572616 () Unit!163475)

(declare-fun choose!55474 ((Set Context!14820) List!70029) Unit!163475)

(assert (=> d!2245186 (= lt!2572616 (choose!55474 lt!2572601 s1!1971))))

(assert (=> d!2245186 (= lt!2572601 (set.singleton (Context!14821 Nil!69904)))))

(assert (=> d!2245186 (= (lemmaZipperOfEmptyContextMatchesEmptyString!37 lt!2572601 s1!1971) lt!2572616)))

(declare-fun bs!1902305 () Bool)

(assert (= bs!1902305 d!2245186))

(assert (=> bs!1902305 m!7897664))

(assert (=> bs!1902305 m!7897660))

(declare-fun m!7897726 () Bool)

(assert (=> bs!1902305 m!7897726))

(assert (=> b!7229580 d!2245186))

(declare-fun d!2245188 () Bool)

(declare-fun e!4333889 () Bool)

(assert (=> d!2245188 e!4333889))

(declare-fun res!2933185 () Bool)

(assert (=> d!2245188 (=> (not res!2933185) (not e!4333889))))

(declare-fun lt!2572619 () List!70028)

(declare-fun content!14346 (List!70028) (Set Regex!18470))

(assert (=> d!2245188 (= res!2933185 (= (content!14346 lt!2572619) (set.union (content!14346 (exprs!7910 ct1!232)) (content!14346 (exprs!7910 ct2!328)))))))

(declare-fun e!4333890 () List!70028)

(assert (=> d!2245188 (= lt!2572619 e!4333890)))

(declare-fun c!1341258 () Bool)

(assert (=> d!2245188 (= c!1341258 (is-Nil!69904 (exprs!7910 ct1!232)))))

(assert (=> d!2245188 (= (++!16248 (exprs!7910 ct1!232) (exprs!7910 ct2!328)) lt!2572619)))

(declare-fun b!7229638 () Bool)

(declare-fun res!2933186 () Bool)

(assert (=> b!7229638 (=> (not res!2933186) (not e!4333889))))

(declare-fun size!41528 (List!70028) Int)

(assert (=> b!7229638 (= res!2933186 (= (size!41528 lt!2572619) (+ (size!41528 (exprs!7910 ct1!232)) (size!41528 (exprs!7910 ct2!328)))))))

(declare-fun b!7229639 () Bool)

(assert (=> b!7229639 (= e!4333889 (or (not (= (exprs!7910 ct2!328) Nil!69904)) (= lt!2572619 (exprs!7910 ct1!232))))))

(declare-fun b!7229637 () Bool)

(assert (=> b!7229637 (= e!4333890 (Cons!69904 (h!76352 (exprs!7910 ct1!232)) (++!16248 (t!384077 (exprs!7910 ct1!232)) (exprs!7910 ct2!328))))))

(declare-fun b!7229636 () Bool)

(assert (=> b!7229636 (= e!4333890 (exprs!7910 ct2!328))))

(assert (= (and d!2245188 c!1341258) b!7229636))

(assert (= (and d!2245188 (not c!1341258)) b!7229637))

(assert (= (and d!2245188 res!2933185) b!7229638))

(assert (= (and b!7229638 res!2933186) b!7229639))

(declare-fun m!7897750 () Bool)

(assert (=> d!2245188 m!7897750))

(declare-fun m!7897752 () Bool)

(assert (=> d!2245188 m!7897752))

(declare-fun m!7897754 () Bool)

(assert (=> d!2245188 m!7897754))

(declare-fun m!7897756 () Bool)

(assert (=> b!7229638 m!7897756))

(declare-fun m!7897758 () Bool)

(assert (=> b!7229638 m!7897758))

(declare-fun m!7897760 () Bool)

(assert (=> b!7229638 m!7897760))

(declare-fun m!7897762 () Bool)

(assert (=> b!7229637 m!7897762))

(assert (=> b!7229574 d!2245188))

(declare-fun d!2245194 () Bool)

(assert (=> d!2245194 (forall!17296 (++!16248 (exprs!7910 ct1!232) (exprs!7910 ct2!328)) lambda!438958)))

(declare-fun lt!2572622 () Unit!163475)

(declare-fun choose!55475 (List!70028 List!70028 Int) Unit!163475)

(assert (=> d!2245194 (= lt!2572622 (choose!55475 (exprs!7910 ct1!232) (exprs!7910 ct2!328) lambda!438958))))

(assert (=> d!2245194 (forall!17296 (exprs!7910 ct1!232) lambda!438958)))

(assert (=> d!2245194 (= (lemmaConcatPreservesForall!1279 (exprs!7910 ct1!232) (exprs!7910 ct2!328) lambda!438958) lt!2572622)))

(declare-fun bs!1902308 () Bool)

(assert (= bs!1902308 d!2245194))

(assert (=> bs!1902308 m!7897678))

(assert (=> bs!1902308 m!7897678))

(declare-fun m!7897766 () Bool)

(assert (=> bs!1902308 m!7897766))

(declare-fun m!7897768 () Bool)

(assert (=> bs!1902308 m!7897768))

(assert (=> bs!1902308 m!7897658))

(assert (=> b!7229574 d!2245194))

(declare-fun d!2245198 () Bool)

(declare-fun c!1341259 () Bool)

(assert (=> d!2245198 (= c!1341259 (isEmpty!40304 s1!1971))))

(declare-fun e!4333891 () Bool)

(assert (=> d!2245198 (= (matchZipper!3380 lt!2572601 s1!1971) e!4333891)))

(declare-fun b!7229640 () Bool)

(assert (=> b!7229640 (= e!4333891 (nullableZipper!2795 lt!2572601))))

(declare-fun b!7229641 () Bool)

(assert (=> b!7229641 (= e!4333891 (matchZipper!3380 (derivationStepZipper!3264 lt!2572601 (head!14781 s1!1971)) (tail!14096 s1!1971)))))

(assert (= (and d!2245198 c!1341259) b!7229640))

(assert (= (and d!2245198 (not c!1341259)) b!7229641))

(assert (=> d!2245198 m!7897660))

(declare-fun m!7897770 () Bool)

(assert (=> b!7229640 m!7897770))

(declare-fun m!7897772 () Bool)

(assert (=> b!7229641 m!7897772))

(assert (=> b!7229641 m!7897772))

(declare-fun m!7897774 () Bool)

(assert (=> b!7229641 m!7897774))

(declare-fun m!7897776 () Bool)

(assert (=> b!7229641 m!7897776))

(assert (=> b!7229641 m!7897774))

(assert (=> b!7229641 m!7897776))

(declare-fun m!7897778 () Bool)

(assert (=> b!7229641 m!7897778))

(assert (=> start!701182 d!2245198))

(declare-fun bs!1902312 () Bool)

(declare-fun d!2245200 () Bool)

(assert (= bs!1902312 (and d!2245200 b!7229574)))

(declare-fun lambda!438970 () Int)

(assert (=> bs!1902312 (= lambda!438970 lambda!438958)))

(assert (=> d!2245200 (= (inv!89186 ct1!232) (forall!17296 (exprs!7910 ct1!232) lambda!438970))))

(declare-fun bs!1902313 () Bool)

(assert (= bs!1902313 d!2245200))

(declare-fun m!7897782 () Bool)

(assert (=> bs!1902313 m!7897782))

(assert (=> start!701182 d!2245200))

(declare-fun bs!1902314 () Bool)

(declare-fun d!2245204 () Bool)

(assert (= bs!1902314 (and d!2245204 b!7229574)))

(declare-fun lambda!438971 () Int)

(assert (=> bs!1902314 (= lambda!438971 lambda!438958)))

(declare-fun bs!1902315 () Bool)

(assert (= bs!1902315 (and d!2245204 d!2245200)))

(assert (=> bs!1902315 (= lambda!438971 lambda!438970)))

(assert (=> d!2245204 (= (inv!89186 ct2!328) (forall!17296 (exprs!7910 ct2!328) lambda!438971))))

(declare-fun bs!1902316 () Bool)

(assert (= bs!1902316 d!2245204))

(declare-fun m!7897784 () Bool)

(assert (=> bs!1902316 m!7897784))

(assert (=> start!701182 d!2245204))

(declare-fun b!7229650 () Bool)

(declare-fun e!4333898 () Bool)

(declare-fun tp!2033395 () Bool)

(assert (=> b!7229650 (= e!4333898 (and tp_is_empty!46405 tp!2033395))))

(assert (=> b!7229577 (= tp!2033380 e!4333898)))

(assert (= (and b!7229577 (is-Cons!69905 (t!384078 s1!1971))) b!7229650))

(declare-fun b!7229655 () Bool)

(declare-fun e!4333901 () Bool)

(declare-fun tp!2033400 () Bool)

(declare-fun tp!2033401 () Bool)

(assert (=> b!7229655 (= e!4333901 (and tp!2033400 tp!2033401))))

(assert (=> b!7229581 (= tp!2033379 e!4333901)))

(assert (= (and b!7229581 (is-Cons!69904 (exprs!7910 ct2!328))) b!7229655))

(declare-fun b!7229656 () Bool)

(declare-fun e!4333902 () Bool)

(declare-fun tp!2033402 () Bool)

(assert (=> b!7229656 (= e!4333902 (and tp_is_empty!46405 tp!2033402))))

(assert (=> b!7229579 (= tp!2033378 e!4333902)))

(assert (= (and b!7229579 (is-Cons!69905 (t!384078 s2!1849))) b!7229656))

(declare-fun b!7229657 () Bool)

(declare-fun e!4333903 () Bool)

(declare-fun tp!2033403 () Bool)

(declare-fun tp!2033404 () Bool)

(assert (=> b!7229657 (= e!4333903 (and tp!2033403 tp!2033404))))

(assert (=> b!7229578 (= tp!2033377 e!4333903)))

(assert (= (and b!7229578 (is-Cons!69904 (exprs!7910 ct1!232))) b!7229657))

(declare-fun b_lambda!276959 () Bool)

(assert (= b_lambda!276955 (or b!7229574 b_lambda!276959)))

(declare-fun bs!1902317 () Bool)

(declare-fun d!2245206 () Bool)

(assert (= bs!1902317 (and d!2245206 b!7229574)))

(declare-fun validRegex!9500 (Regex!18470) Bool)

(assert (=> bs!1902317 (= (dynLambda!28492 lambda!438958 (h!76352 (exprs!7910 ct2!328))) (validRegex!9500 (h!76352 (exprs!7910 ct2!328))))))

(declare-fun m!7897786 () Bool)

(assert (=> bs!1902317 m!7897786))

(assert (=> b!7229610 d!2245206))

(declare-fun b_lambda!276961 () Bool)

(assert (= b_lambda!276957 (or b!7229574 b_lambda!276961)))

(declare-fun bs!1902318 () Bool)

(declare-fun d!2245208 () Bool)

(assert (= bs!1902318 (and d!2245208 b!7229574)))

(assert (=> bs!1902318 (= (dynLambda!28492 lambda!438958 (h!76352 (exprs!7910 ct1!232))) (validRegex!9500 (h!76352 (exprs!7910 ct1!232))))))

(declare-fun m!7897788 () Bool)

(assert (=> bs!1902318 m!7897788))

(assert (=> b!7229618 d!2245208))

(push 1)

(assert (not b!7229650))

(assert (not bs!1902318))

(assert (not b_lambda!276959))

(assert (not b!7229655))

(assert (not b!7229637))

(assert (not b!7229656))

(assert (not d!2245188))

(assert (not b!7229619))

(assert (not b!7229657))

(assert (not b!7229640))

(assert tp_is_empty!46405)

(assert (not bs!1902317))

(assert (not d!2245204))

(assert (not b!7229641))

(assert (not d!2245186))

(assert (not b!7229617))

(assert (not d!2245198))

(assert (not b_lambda!276961))

(assert (not d!2245200))

(assert (not b!7229638))

(assert (not d!2245178))

(assert (not b!7229616))

(assert (not d!2245194))

(assert (not b!7229611))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

