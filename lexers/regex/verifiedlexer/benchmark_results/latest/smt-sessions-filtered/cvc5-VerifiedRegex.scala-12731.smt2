; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!703840 () Bool)

(assert start!703840)

(declare-fun b!7242236 () Bool)

(declare-fun e!4342150 () Bool)

(declare-fun e!4342148 () Bool)

(assert (=> b!7242236 (= e!4342150 e!4342148)))

(declare-fun res!2937893 () Bool)

(assert (=> b!7242236 (=> (not res!2937893) (not e!4342148))))

(declare-datatypes ((C!37414 0))(
  ( (C!37415 (val!28655 Int)) )
))
(declare-datatypes ((Regex!18570 0))(
  ( (ElementMatch!18570 (c!1344972 C!37414)) (Concat!27415 (regOne!37652 Regex!18570) (regTwo!37652 Regex!18570)) (EmptyExpr!18570) (Star!18570 (reg!18899 Regex!18570)) (EmptyLang!18570) (Union!18570 (regOne!37653 Regex!18570) (regTwo!37653 Regex!18570)) )
))
(declare-datatypes ((List!70309 0))(
  ( (Nil!70185) (Cons!70185 (h!76633 Regex!18570) (t!384360 List!70309)) )
))
(declare-datatypes ((Context!15020 0))(
  ( (Context!15021 (exprs!8010 List!70309)) )
))
(declare-fun ct1!232 () Context!15020)

(declare-datatypes ((List!70310 0))(
  ( (Nil!70186) (Cons!70186 (h!76634 C!37414) (t!384361 List!70310)) )
))
(declare-fun s1!1971 () List!70310)

(assert (=> b!7242236 (= res!2937893 (and (not (is-Nil!70185 (exprs!8010 ct1!232))) (is-Cons!70186 s1!1971)))))

(declare-fun lt!2580463 () List!70309)

(declare-fun ct2!328 () Context!15020)

(declare-fun ++!16428 (List!70309 List!70309) List!70309)

(assert (=> b!7242236 (= lt!2580463 (++!16428 (exprs!8010 ct1!232) (exprs!8010 ct2!328)))))

(declare-datatypes ((Unit!163726 0))(
  ( (Unit!163727) )
))
(declare-fun lt!2580461 () Unit!163726)

(declare-fun lambda!442185 () Int)

(declare-fun lemmaConcatPreservesForall!1379 (List!70309 List!70309 Int) Unit!163726)

(assert (=> b!7242236 (= lt!2580461 (lemmaConcatPreservesForall!1379 (exprs!8010 ct1!232) (exprs!8010 ct2!328) lambda!442185))))

(declare-fun res!2937895 () Bool)

(assert (=> start!703840 (=> (not res!2937895) (not e!4342150))))

(declare-fun lt!2580462 () (Set Context!15020))

(declare-fun matchZipper!3480 ((Set Context!15020) List!70310) Bool)

(assert (=> start!703840 (= res!2937895 (matchZipper!3480 lt!2580462 s1!1971))))

(assert (=> start!703840 (= lt!2580462 (set.insert ct1!232 (as set.empty (Set Context!15020))))))

(assert (=> start!703840 e!4342150))

(declare-fun e!4342149 () Bool)

(declare-fun inv!89436 (Context!15020) Bool)

(assert (=> start!703840 (and (inv!89436 ct1!232) e!4342149)))

(declare-fun e!4342146 () Bool)

(assert (=> start!703840 e!4342146))

(declare-fun e!4342147 () Bool)

(assert (=> start!703840 e!4342147))

(declare-fun e!4342151 () Bool)

(assert (=> start!703840 (and (inv!89436 ct2!328) e!4342151)))

(declare-fun b!7242237 () Bool)

(declare-fun tp!2035571 () Bool)

(assert (=> b!7242237 (= e!4342151 tp!2035571)))

(declare-fun b!7242238 () Bool)

(declare-fun derivationStepZipper!3358 ((Set Context!15020) C!37414) (Set Context!15020))

(assert (=> b!7242238 (= e!4342148 (not (matchZipper!3480 (derivationStepZipper!3358 lt!2580462 (h!76634 s1!1971)) (t!384361 s1!1971))))))

(declare-fun b!7242239 () Bool)

(declare-fun tp_is_empty!46605 () Bool)

(declare-fun tp!2035572 () Bool)

(assert (=> b!7242239 (= e!4342147 (and tp_is_empty!46605 tp!2035572))))

(declare-fun b!7242240 () Bool)

(declare-fun tp!2035570 () Bool)

(assert (=> b!7242240 (= e!4342149 tp!2035570)))

(declare-fun b!7242241 () Bool)

(declare-fun tp!2035569 () Bool)

(assert (=> b!7242241 (= e!4342146 (and tp_is_empty!46605 tp!2035569))))

(declare-fun b!7242242 () Bool)

(declare-fun res!2937894 () Bool)

(assert (=> b!7242242 (=> (not res!2937894) (not e!4342150))))

(declare-fun s2!1849 () List!70310)

(assert (=> b!7242242 (= res!2937894 (matchZipper!3480 (set.insert ct2!328 (as set.empty (Set Context!15020))) s2!1849))))

(assert (= (and start!703840 res!2937895) b!7242242))

(assert (= (and b!7242242 res!2937894) b!7242236))

(assert (= (and b!7242236 res!2937893) b!7242238))

(assert (= start!703840 b!7242240))

(assert (= (and start!703840 (is-Cons!70186 s1!1971)) b!7242241))

(assert (= (and start!703840 (is-Cons!70186 s2!1849)) b!7242239))

(assert (= start!703840 b!7242237))

(declare-fun m!7917004 () Bool)

(assert (=> b!7242236 m!7917004))

(declare-fun m!7917006 () Bool)

(assert (=> b!7242236 m!7917006))

(declare-fun m!7917008 () Bool)

(assert (=> start!703840 m!7917008))

(declare-fun m!7917010 () Bool)

(assert (=> start!703840 m!7917010))

(declare-fun m!7917012 () Bool)

(assert (=> start!703840 m!7917012))

(declare-fun m!7917014 () Bool)

(assert (=> start!703840 m!7917014))

(declare-fun m!7917016 () Bool)

(assert (=> b!7242238 m!7917016))

(assert (=> b!7242238 m!7917016))

(declare-fun m!7917018 () Bool)

(assert (=> b!7242238 m!7917018))

(declare-fun m!7917020 () Bool)

(assert (=> b!7242242 m!7917020))

(assert (=> b!7242242 m!7917020))

(declare-fun m!7917022 () Bool)

(assert (=> b!7242242 m!7917022))

(push 1)

(assert (not b!7242240))

(assert (not b!7242242))

(assert (not start!703840))

(assert (not b!7242237))

(assert (not b!7242239))

(assert (not b!7242238))

(assert tp_is_empty!46605)

(assert (not b!7242241))

(assert (not b!7242236))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!2250150 () Bool)

(declare-fun c!1344976 () Bool)

(declare-fun isEmpty!40439 (List!70310) Bool)

(assert (=> d!2250150 (= c!1344976 (isEmpty!40439 (t!384361 s1!1971)))))

(declare-fun e!4342172 () Bool)

(assert (=> d!2250150 (= (matchZipper!3480 (derivationStepZipper!3358 lt!2580462 (h!76634 s1!1971)) (t!384361 s1!1971)) e!4342172)))

(declare-fun b!7242268 () Bool)

(declare-fun nullableZipper!2862 ((Set Context!15020)) Bool)

(assert (=> b!7242268 (= e!4342172 (nullableZipper!2862 (derivationStepZipper!3358 lt!2580462 (h!76634 s1!1971))))))

(declare-fun b!7242269 () Bool)

(declare-fun head!14849 (List!70310) C!37414)

(declare-fun tail!14232 (List!70310) List!70310)

(assert (=> b!7242269 (= e!4342172 (matchZipper!3480 (derivationStepZipper!3358 (derivationStepZipper!3358 lt!2580462 (h!76634 s1!1971)) (head!14849 (t!384361 s1!1971))) (tail!14232 (t!384361 s1!1971))))))

(assert (= (and d!2250150 c!1344976) b!7242268))

(assert (= (and d!2250150 (not c!1344976)) b!7242269))

(declare-fun m!7917044 () Bool)

(assert (=> d!2250150 m!7917044))

(assert (=> b!7242268 m!7917016))

(declare-fun m!7917046 () Bool)

(assert (=> b!7242268 m!7917046))

(declare-fun m!7917048 () Bool)

(assert (=> b!7242269 m!7917048))

(assert (=> b!7242269 m!7917016))

(assert (=> b!7242269 m!7917048))

(declare-fun m!7917050 () Bool)

(assert (=> b!7242269 m!7917050))

(declare-fun m!7917052 () Bool)

(assert (=> b!7242269 m!7917052))

(assert (=> b!7242269 m!7917050))

(assert (=> b!7242269 m!7917052))

(declare-fun m!7917054 () Bool)

(assert (=> b!7242269 m!7917054))

(assert (=> b!7242238 d!2250150))

(declare-fun d!2250152 () Bool)

(assert (=> d!2250152 true))

(declare-fun lambda!442191 () Int)

(declare-fun flatMap!2760 ((Set Context!15020) Int) (Set Context!15020))

(assert (=> d!2250152 (= (derivationStepZipper!3358 lt!2580462 (h!76634 s1!1971)) (flatMap!2760 lt!2580462 lambda!442191))))

(declare-fun bs!1904374 () Bool)

(assert (= bs!1904374 d!2250152))

(declare-fun m!7917056 () Bool)

(assert (=> bs!1904374 m!7917056))

(assert (=> b!7242238 d!2250152))

(declare-fun d!2250154 () Bool)

(declare-fun c!1344979 () Bool)

(assert (=> d!2250154 (= c!1344979 (isEmpty!40439 s1!1971))))

(declare-fun e!4342173 () Bool)

(assert (=> d!2250154 (= (matchZipper!3480 lt!2580462 s1!1971) e!4342173)))

(declare-fun b!7242272 () Bool)

(assert (=> b!7242272 (= e!4342173 (nullableZipper!2862 lt!2580462))))

(declare-fun b!7242273 () Bool)

(assert (=> b!7242273 (= e!4342173 (matchZipper!3480 (derivationStepZipper!3358 lt!2580462 (head!14849 s1!1971)) (tail!14232 s1!1971)))))

(assert (= (and d!2250154 c!1344979) b!7242272))

(assert (= (and d!2250154 (not c!1344979)) b!7242273))

(declare-fun m!7917058 () Bool)

(assert (=> d!2250154 m!7917058))

(declare-fun m!7917060 () Bool)

(assert (=> b!7242272 m!7917060))

(declare-fun m!7917062 () Bool)

(assert (=> b!7242273 m!7917062))

(assert (=> b!7242273 m!7917062))

(declare-fun m!7917064 () Bool)

(assert (=> b!7242273 m!7917064))

(declare-fun m!7917066 () Bool)

(assert (=> b!7242273 m!7917066))

(assert (=> b!7242273 m!7917064))

(assert (=> b!7242273 m!7917066))

(declare-fun m!7917068 () Bool)

(assert (=> b!7242273 m!7917068))

(assert (=> start!703840 d!2250154))

(declare-fun bs!1904375 () Bool)

(declare-fun d!2250156 () Bool)

(assert (= bs!1904375 (and d!2250156 b!7242236)))

(declare-fun lambda!442194 () Int)

(assert (=> bs!1904375 (= lambda!442194 lambda!442185)))

(declare-fun forall!17409 (List!70309 Int) Bool)

(assert (=> d!2250156 (= (inv!89436 ct1!232) (forall!17409 (exprs!8010 ct1!232) lambda!442194))))

(declare-fun bs!1904376 () Bool)

(assert (= bs!1904376 d!2250156))

(declare-fun m!7917070 () Bool)

(assert (=> bs!1904376 m!7917070))

(assert (=> start!703840 d!2250156))

(declare-fun bs!1904377 () Bool)

(declare-fun d!2250158 () Bool)

(assert (= bs!1904377 (and d!2250158 b!7242236)))

(declare-fun lambda!442195 () Int)

(assert (=> bs!1904377 (= lambda!442195 lambda!442185)))

(declare-fun bs!1904378 () Bool)

(assert (= bs!1904378 (and d!2250158 d!2250156)))

(assert (=> bs!1904378 (= lambda!442195 lambda!442194)))

(assert (=> d!2250158 (= (inv!89436 ct2!328) (forall!17409 (exprs!8010 ct2!328) lambda!442195))))

(declare-fun bs!1904379 () Bool)

(assert (= bs!1904379 d!2250158))

(declare-fun m!7917072 () Bool)

(assert (=> bs!1904379 m!7917072))

(assert (=> start!703840 d!2250158))

(declare-fun d!2250160 () Bool)

(declare-fun c!1344980 () Bool)

(assert (=> d!2250160 (= c!1344980 (isEmpty!40439 s2!1849))))

(declare-fun e!4342174 () Bool)

(assert (=> d!2250160 (= (matchZipper!3480 (set.insert ct2!328 (as set.empty (Set Context!15020))) s2!1849) e!4342174)))

(declare-fun b!7242274 () Bool)

(assert (=> b!7242274 (= e!4342174 (nullableZipper!2862 (set.insert ct2!328 (as set.empty (Set Context!15020)))))))

(declare-fun b!7242275 () Bool)

(assert (=> b!7242275 (= e!4342174 (matchZipper!3480 (derivationStepZipper!3358 (set.insert ct2!328 (as set.empty (Set Context!15020))) (head!14849 s2!1849)) (tail!14232 s2!1849)))))

(assert (= (and d!2250160 c!1344980) b!7242274))

(assert (= (and d!2250160 (not c!1344980)) b!7242275))

(declare-fun m!7917074 () Bool)

(assert (=> d!2250160 m!7917074))

(assert (=> b!7242274 m!7917020))

(declare-fun m!7917076 () Bool)

(assert (=> b!7242274 m!7917076))

(declare-fun m!7917078 () Bool)

(assert (=> b!7242275 m!7917078))

(assert (=> b!7242275 m!7917020))

(assert (=> b!7242275 m!7917078))

(declare-fun m!7917080 () Bool)

(assert (=> b!7242275 m!7917080))

(declare-fun m!7917082 () Bool)

(assert (=> b!7242275 m!7917082))

(assert (=> b!7242275 m!7917080))

(assert (=> b!7242275 m!7917082))

(declare-fun m!7917084 () Bool)

(assert (=> b!7242275 m!7917084))

(assert (=> b!7242242 d!2250160))

(declare-fun e!4342179 () Bool)

(declare-fun b!7242287 () Bool)

(declare-fun lt!2580475 () List!70309)

(assert (=> b!7242287 (= e!4342179 (or (not (= (exprs!8010 ct2!328) Nil!70185)) (= lt!2580475 (exprs!8010 ct1!232))))))

(declare-fun b!7242285 () Bool)

(declare-fun e!4342180 () List!70309)

(assert (=> b!7242285 (= e!4342180 (Cons!70185 (h!76633 (exprs!8010 ct1!232)) (++!16428 (t!384360 (exprs!8010 ct1!232)) (exprs!8010 ct2!328))))))

(declare-fun b!7242284 () Bool)

(assert (=> b!7242284 (= e!4342180 (exprs!8010 ct2!328))))

(declare-fun d!2250162 () Bool)

(assert (=> d!2250162 e!4342179))

(declare-fun res!2937910 () Bool)

(assert (=> d!2250162 (=> (not res!2937910) (not e!4342179))))

(declare-fun content!14501 (List!70309) (Set Regex!18570))

(assert (=> d!2250162 (= res!2937910 (= (content!14501 lt!2580475) (set.union (content!14501 (exprs!8010 ct1!232)) (content!14501 (exprs!8010 ct2!328)))))))

(assert (=> d!2250162 (= lt!2580475 e!4342180)))

(declare-fun c!1344983 () Bool)

(assert (=> d!2250162 (= c!1344983 (is-Nil!70185 (exprs!8010 ct1!232)))))

(assert (=> d!2250162 (= (++!16428 (exprs!8010 ct1!232) (exprs!8010 ct2!328)) lt!2580475)))

(declare-fun b!7242286 () Bool)

(declare-fun res!2937909 () Bool)

(assert (=> b!7242286 (=> (not res!2937909) (not e!4342179))))

(declare-fun size!41637 (List!70309) Int)

(assert (=> b!7242286 (= res!2937909 (= (size!41637 lt!2580475) (+ (size!41637 (exprs!8010 ct1!232)) (size!41637 (exprs!8010 ct2!328)))))))

(assert (= (and d!2250162 c!1344983) b!7242284))

(assert (= (and d!2250162 (not c!1344983)) b!7242285))

(assert (= (and d!2250162 res!2937910) b!7242286))

(assert (= (and b!7242286 res!2937909) b!7242287))

(declare-fun m!7917086 () Bool)

(assert (=> b!7242285 m!7917086))

(declare-fun m!7917088 () Bool)

(assert (=> d!2250162 m!7917088))

(declare-fun m!7917090 () Bool)

(assert (=> d!2250162 m!7917090))

(declare-fun m!7917092 () Bool)

(assert (=> d!2250162 m!7917092))

(declare-fun m!7917094 () Bool)

(assert (=> b!7242286 m!7917094))

(declare-fun m!7917096 () Bool)

(assert (=> b!7242286 m!7917096))

(declare-fun m!7917098 () Bool)

(assert (=> b!7242286 m!7917098))

(assert (=> b!7242236 d!2250162))

(declare-fun d!2250166 () Bool)

(assert (=> d!2250166 (forall!17409 (++!16428 (exprs!8010 ct1!232) (exprs!8010 ct2!328)) lambda!442185)))

(declare-fun lt!2580478 () Unit!163726)

(declare-fun choose!55803 (List!70309 List!70309 Int) Unit!163726)

(assert (=> d!2250166 (= lt!2580478 (choose!55803 (exprs!8010 ct1!232) (exprs!8010 ct2!328) lambda!442185))))

(assert (=> d!2250166 (forall!17409 (exprs!8010 ct1!232) lambda!442185)))

(assert (=> d!2250166 (= (lemmaConcatPreservesForall!1379 (exprs!8010 ct1!232) (exprs!8010 ct2!328) lambda!442185) lt!2580478)))

(declare-fun bs!1904380 () Bool)

(assert (= bs!1904380 d!2250166))

(assert (=> bs!1904380 m!7917004))

(assert (=> bs!1904380 m!7917004))

(declare-fun m!7917100 () Bool)

(assert (=> bs!1904380 m!7917100))

(declare-fun m!7917102 () Bool)

(assert (=> bs!1904380 m!7917102))

(declare-fun m!7917104 () Bool)

(assert (=> bs!1904380 m!7917104))

(assert (=> b!7242236 d!2250166))

(declare-fun b!7242292 () Bool)

(declare-fun e!4342183 () Bool)

(declare-fun tp!2035587 () Bool)

(assert (=> b!7242292 (= e!4342183 (and tp_is_empty!46605 tp!2035587))))

(assert (=> b!7242239 (= tp!2035572 e!4342183)))

(assert (= (and b!7242239 (is-Cons!70186 (t!384361 s2!1849))) b!7242292))

(declare-fun b!7242297 () Bool)

(declare-fun e!4342186 () Bool)

(declare-fun tp!2035592 () Bool)

(declare-fun tp!2035593 () Bool)

(assert (=> b!7242297 (= e!4342186 (and tp!2035592 tp!2035593))))

(assert (=> b!7242237 (= tp!2035571 e!4342186)))

(assert (= (and b!7242237 (is-Cons!70185 (exprs!8010 ct2!328))) b!7242297))

(declare-fun b!7242298 () Bool)

(declare-fun e!4342187 () Bool)

(declare-fun tp!2035594 () Bool)

(assert (=> b!7242298 (= e!4342187 (and tp_is_empty!46605 tp!2035594))))

(assert (=> b!7242241 (= tp!2035569 e!4342187)))

(assert (= (and b!7242241 (is-Cons!70186 (t!384361 s1!1971))) b!7242298))

(declare-fun b!7242299 () Bool)

(declare-fun e!4342188 () Bool)

(declare-fun tp!2035595 () Bool)

(declare-fun tp!2035596 () Bool)

(assert (=> b!7242299 (= e!4342188 (and tp!2035595 tp!2035596))))

(assert (=> b!7242240 (= tp!2035570 e!4342188)))

(assert (= (and b!7242240 (is-Cons!70185 (exprs!8010 ct1!232))) b!7242299))

(push 1)

(assert (not b!7242298))

(assert (not b!7242286))

(assert (not d!2250152))

(assert (not d!2250166))

(assert (not b!7242272))

(assert (not d!2250154))

(assert (not b!7242297))

(assert (not d!2250162))

(assert (not d!2250158))

(assert (not b!7242275))

(assert tp_is_empty!46605)

(assert (not d!2250150))

(assert (not d!2250160))

(assert (not d!2250156))

(assert (not b!7242292))

(assert (not b!7242285))

(assert (not b!7242269))

(assert (not b!7242274))

(assert (not b!7242273))

(assert (not b!7242268))

(assert (not b!7242299))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!2250182 () Bool)

(declare-fun choose!55804 ((Set Context!15020) Int) (Set Context!15020))

(assert (=> d!2250182 (= (flatMap!2760 lt!2580462 lambda!442191) (choose!55804 lt!2580462 lambda!442191))))

(declare-fun bs!1904388 () Bool)

(assert (= bs!1904388 d!2250182))

(declare-fun m!7917168 () Bool)

(assert (=> bs!1904388 m!7917168))

(assert (=> d!2250152 d!2250182))

(declare-fun d!2250184 () Bool)

(assert (=> d!2250184 (= (isEmpty!40439 s2!1849) (is-Nil!70186 s2!1849))))

(assert (=> d!2250160 d!2250184))

(declare-fun d!2250186 () Bool)

(declare-fun res!2937921 () Bool)

(declare-fun e!4342212 () Bool)

(assert (=> d!2250186 (=> res!2937921 e!4342212)))

(assert (=> d!2250186 (= res!2937921 (is-Nil!70185 (exprs!8010 ct1!232)))))

(assert (=> d!2250186 (= (forall!17409 (exprs!8010 ct1!232) lambda!442194) e!4342212)))

(declare-fun b!7242340 () Bool)

(declare-fun e!4342213 () Bool)

(assert (=> b!7242340 (= e!4342212 e!4342213)))

(declare-fun res!2937922 () Bool)

(assert (=> b!7242340 (=> (not res!2937922) (not e!4342213))))

(declare-fun dynLambda!28649 (Int Regex!18570) Bool)

(assert (=> b!7242340 (= res!2937922 (dynLambda!28649 lambda!442194 (h!76633 (exprs!8010 ct1!232))))))

(declare-fun b!7242341 () Bool)

(assert (=> b!7242341 (= e!4342213 (forall!17409 (t!384360 (exprs!8010 ct1!232)) lambda!442194))))

(assert (= (and d!2250186 (not res!2937921)) b!7242340))

(assert (= (and b!7242340 res!2937922) b!7242341))

(declare-fun b_lambda!277871 () Bool)

(assert (=> (not b_lambda!277871) (not b!7242340)))

(declare-fun m!7917170 () Bool)

(assert (=> b!7242340 m!7917170))

(declare-fun m!7917172 () Bool)

(assert (=> b!7242341 m!7917172))

(assert (=> d!2250156 d!2250186))

(declare-fun d!2250188 () Bool)

(declare-fun res!2937923 () Bool)

(declare-fun e!4342214 () Bool)

(assert (=> d!2250188 (=> res!2937923 e!4342214)))

(assert (=> d!2250188 (= res!2937923 (is-Nil!70185 (++!16428 (exprs!8010 ct1!232) (exprs!8010 ct2!328))))))

(assert (=> d!2250188 (= (forall!17409 (++!16428 (exprs!8010 ct1!232) (exprs!8010 ct2!328)) lambda!442185) e!4342214)))

(declare-fun b!7242342 () Bool)

(declare-fun e!4342215 () Bool)

(assert (=> b!7242342 (= e!4342214 e!4342215)))

(declare-fun res!2937924 () Bool)

(assert (=> b!7242342 (=> (not res!2937924) (not e!4342215))))

(assert (=> b!7242342 (= res!2937924 (dynLambda!28649 lambda!442185 (h!76633 (++!16428 (exprs!8010 ct1!232) (exprs!8010 ct2!328)))))))

(declare-fun b!7242343 () Bool)

(assert (=> b!7242343 (= e!4342215 (forall!17409 (t!384360 (++!16428 (exprs!8010 ct1!232) (exprs!8010 ct2!328))) lambda!442185))))

(assert (= (and d!2250188 (not res!2937923)) b!7242342))

(assert (= (and b!7242342 res!2937924) b!7242343))

(declare-fun b_lambda!277873 () Bool)

(assert (=> (not b_lambda!277873) (not b!7242342)))

(declare-fun m!7917174 () Bool)

(assert (=> b!7242342 m!7917174))

(declare-fun m!7917176 () Bool)

(assert (=> b!7242343 m!7917176))

(assert (=> d!2250166 d!2250188))

(assert (=> d!2250166 d!2250162))

(declare-fun d!2250190 () Bool)

(assert (=> d!2250190 (forall!17409 (++!16428 (exprs!8010 ct1!232) (exprs!8010 ct2!328)) lambda!442185)))

(assert (=> d!2250190 true))

(declare-fun _$78!735 () Unit!163726)

(assert (=> d!2250190 (= (choose!55803 (exprs!8010 ct1!232) (exprs!8010 ct2!328) lambda!442185) _$78!735)))

(declare-fun bs!1904389 () Bool)

(assert (= bs!1904389 d!2250190))

(assert (=> bs!1904389 m!7917004))

(assert (=> bs!1904389 m!7917004))

(assert (=> bs!1904389 m!7917100))

(assert (=> d!2250166 d!2250190))

(declare-fun d!2250192 () Bool)

(declare-fun res!2937925 () Bool)

(declare-fun e!4342216 () Bool)

(assert (=> d!2250192 (=> res!2937925 e!4342216)))

(assert (=> d!2250192 (= res!2937925 (is-Nil!70185 (exprs!8010 ct1!232)))))

(assert (=> d!2250192 (= (forall!17409 (exprs!8010 ct1!232) lambda!442185) e!4342216)))

(declare-fun b!7242344 () Bool)

(declare-fun e!4342217 () Bool)

(assert (=> b!7242344 (= e!4342216 e!4342217)))

(declare-fun res!2937926 () Bool)

(assert (=> b!7242344 (=> (not res!2937926) (not e!4342217))))

(assert (=> b!7242344 (= res!2937926 (dynLambda!28649 lambda!442185 (h!76633 (exprs!8010 ct1!232))))))

(declare-fun b!7242345 () Bool)

(assert (=> b!7242345 (= e!4342217 (forall!17409 (t!384360 (exprs!8010 ct1!232)) lambda!442185))))

(assert (= (and d!2250192 (not res!2937925)) b!7242344))

(assert (= (and b!7242344 res!2937926) b!7242345))

(declare-fun b_lambda!277875 () Bool)

(assert (=> (not b_lambda!277875) (not b!7242344)))

(declare-fun m!7917178 () Bool)

(assert (=> b!7242344 m!7917178))

(declare-fun m!7917180 () Bool)

(assert (=> b!7242345 m!7917180))

(assert (=> d!2250166 d!2250192))

(declare-fun d!2250194 () Bool)

(assert (=> d!2250194 (= (isEmpty!40439 s1!1971) (is-Nil!70186 s1!1971))))

(assert (=> d!2250154 d!2250194))

(declare-fun d!2250196 () Bool)

(declare-fun c!1344994 () Bool)

(assert (=> d!2250196 (= c!1344994 (isEmpty!40439 (tail!14232 (t!384361 s1!1971))))))

(declare-fun e!4342218 () Bool)

(assert (=> d!2250196 (= (matchZipper!3480 (derivationStepZipper!3358 (derivationStepZipper!3358 lt!2580462 (h!76634 s1!1971)) (head!14849 (t!384361 s1!1971))) (tail!14232 (t!384361 s1!1971))) e!4342218)))

(declare-fun b!7242346 () Bool)

(assert (=> b!7242346 (= e!4342218 (nullableZipper!2862 (derivationStepZipper!3358 (derivationStepZipper!3358 lt!2580462 (h!76634 s1!1971)) (head!14849 (t!384361 s1!1971)))))))

(declare-fun b!7242347 () Bool)

(assert (=> b!7242347 (= e!4342218 (matchZipper!3480 (derivationStepZipper!3358 (derivationStepZipper!3358 (derivationStepZipper!3358 lt!2580462 (h!76634 s1!1971)) (head!14849 (t!384361 s1!1971))) (head!14849 (tail!14232 (t!384361 s1!1971)))) (tail!14232 (tail!14232 (t!384361 s1!1971)))))))

(assert (= (and d!2250196 c!1344994) b!7242346))

(assert (= (and d!2250196 (not c!1344994)) b!7242347))

(assert (=> d!2250196 m!7917052))

(declare-fun m!7917182 () Bool)

(assert (=> d!2250196 m!7917182))

(assert (=> b!7242346 m!7917050))

(declare-fun m!7917184 () Bool)

(assert (=> b!7242346 m!7917184))

(assert (=> b!7242347 m!7917052))

(declare-fun m!7917186 () Bool)

(assert (=> b!7242347 m!7917186))

(assert (=> b!7242347 m!7917050))

(assert (=> b!7242347 m!7917186))

(declare-fun m!7917188 () Bool)

(assert (=> b!7242347 m!7917188))

(assert (=> b!7242347 m!7917052))

(declare-fun m!7917190 () Bool)

(assert (=> b!7242347 m!7917190))

(assert (=> b!7242347 m!7917188))

(assert (=> b!7242347 m!7917190))

(declare-fun m!7917192 () Bool)

(assert (=> b!7242347 m!7917192))

(assert (=> b!7242269 d!2250196))

(declare-fun bs!1904390 () Bool)

(declare-fun d!2250198 () Bool)

(assert (= bs!1904390 (and d!2250198 d!2250152)))

(declare-fun lambda!442203 () Int)

(assert (=> bs!1904390 (= (= (head!14849 (t!384361 s1!1971)) (h!76634 s1!1971)) (= lambda!442203 lambda!442191))))

(assert (=> d!2250198 true))

(assert (=> d!2250198 (= (derivationStepZipper!3358 (derivationStepZipper!3358 lt!2580462 (h!76634 s1!1971)) (head!14849 (t!384361 s1!1971))) (flatMap!2760 (derivationStepZipper!3358 lt!2580462 (h!76634 s1!1971)) lambda!442203))))

(declare-fun bs!1904391 () Bool)

(assert (= bs!1904391 d!2250198))

(assert (=> bs!1904391 m!7917016))

(declare-fun m!7917194 () Bool)

(assert (=> bs!1904391 m!7917194))

(assert (=> b!7242269 d!2250198))

(declare-fun d!2250200 () Bool)

(assert (=> d!2250200 (= (head!14849 (t!384361 s1!1971)) (h!76634 (t!384361 s1!1971)))))

(assert (=> b!7242269 d!2250200))

(declare-fun d!2250202 () Bool)

(assert (=> d!2250202 (= (tail!14232 (t!384361 s1!1971)) (t!384361 (t!384361 s1!1971)))))

(assert (=> b!7242269 d!2250202))

(declare-fun d!2250204 () Bool)

(declare-fun lambda!442206 () Int)

(declare-fun exists!4262 ((Set Context!15020) Int) Bool)

(assert (=> d!2250204 (= (nullableZipper!2862 (derivationStepZipper!3358 lt!2580462 (h!76634 s1!1971))) (exists!4262 (derivationStepZipper!3358 lt!2580462 (h!76634 s1!1971)) lambda!442206))))

(declare-fun bs!1904392 () Bool)

(assert (= bs!1904392 d!2250204))

(assert (=> bs!1904392 m!7917016))

(declare-fun m!7917196 () Bool)

(assert (=> bs!1904392 m!7917196))

(assert (=> b!7242268 d!2250204))

(declare-fun d!2250206 () Bool)

(declare-fun c!1344999 () Bool)

(assert (=> d!2250206 (= c!1344999 (is-Nil!70185 lt!2580475))))

(declare-fun e!4342221 () (Set Regex!18570))

(assert (=> d!2250206 (= (content!14501 lt!2580475) e!4342221)))

(declare-fun b!7242352 () Bool)

(assert (=> b!7242352 (= e!4342221 (as set.empty (Set Regex!18570)))))

(declare-fun b!7242353 () Bool)

(assert (=> b!7242353 (= e!4342221 (set.union (set.insert (h!76633 lt!2580475) (as set.empty (Set Regex!18570))) (content!14501 (t!384360 lt!2580475))))))

(assert (= (and d!2250206 c!1344999) b!7242352))

(assert (= (and d!2250206 (not c!1344999)) b!7242353))

(declare-fun m!7917198 () Bool)

(assert (=> b!7242353 m!7917198))

(declare-fun m!7917200 () Bool)

(assert (=> b!7242353 m!7917200))

(assert (=> d!2250162 d!2250206))

(declare-fun d!2250208 () Bool)

(declare-fun c!1345000 () Bool)

(assert (=> d!2250208 (= c!1345000 (is-Nil!70185 (exprs!8010 ct1!232)))))

(declare-fun e!4342222 () (Set Regex!18570))

(assert (=> d!2250208 (= (content!14501 (exprs!8010 ct1!232)) e!4342222)))

(declare-fun b!7242354 () Bool)

(assert (=> b!7242354 (= e!4342222 (as set.empty (Set Regex!18570)))))

(declare-fun b!7242355 () Bool)

(assert (=> b!7242355 (= e!4342222 (set.union (set.insert (h!76633 (exprs!8010 ct1!232)) (as set.empty (Set Regex!18570))) (content!14501 (t!384360 (exprs!8010 ct1!232)))))))

(assert (= (and d!2250208 c!1345000) b!7242354))

(assert (= (and d!2250208 (not c!1345000)) b!7242355))

(declare-fun m!7917202 () Bool)

(assert (=> b!7242355 m!7917202))

(declare-fun m!7917204 () Bool)

(assert (=> b!7242355 m!7917204))

(assert (=> d!2250162 d!2250208))

(declare-fun d!2250210 () Bool)

(declare-fun c!1345001 () Bool)

(assert (=> d!2250210 (= c!1345001 (is-Nil!70185 (exprs!8010 ct2!328)))))

(declare-fun e!4342223 () (Set Regex!18570))

(assert (=> d!2250210 (= (content!14501 (exprs!8010 ct2!328)) e!4342223)))

(declare-fun b!7242356 () Bool)

(assert (=> b!7242356 (= e!4342223 (as set.empty (Set Regex!18570)))))

(declare-fun b!7242357 () Bool)

(assert (=> b!7242357 (= e!4342223 (set.union (set.insert (h!76633 (exprs!8010 ct2!328)) (as set.empty (Set Regex!18570))) (content!14501 (t!384360 (exprs!8010 ct2!328)))))))

(assert (= (and d!2250210 c!1345001) b!7242356))

(assert (= (and d!2250210 (not c!1345001)) b!7242357))

(declare-fun m!7917206 () Bool)

(assert (=> b!7242357 m!7917206))

(declare-fun m!7917208 () Bool)

(assert (=> b!7242357 m!7917208))

(assert (=> d!2250162 d!2250210))

(declare-fun d!2250212 () Bool)

(declare-fun c!1345002 () Bool)

(assert (=> d!2250212 (= c!1345002 (isEmpty!40439 (tail!14232 s1!1971)))))

(declare-fun e!4342224 () Bool)

(assert (=> d!2250212 (= (matchZipper!3480 (derivationStepZipper!3358 lt!2580462 (head!14849 s1!1971)) (tail!14232 s1!1971)) e!4342224)))

(declare-fun b!7242358 () Bool)

(assert (=> b!7242358 (= e!4342224 (nullableZipper!2862 (derivationStepZipper!3358 lt!2580462 (head!14849 s1!1971))))))

(declare-fun b!7242359 () Bool)

(assert (=> b!7242359 (= e!4342224 (matchZipper!3480 (derivationStepZipper!3358 (derivationStepZipper!3358 lt!2580462 (head!14849 s1!1971)) (head!14849 (tail!14232 s1!1971))) (tail!14232 (tail!14232 s1!1971))))))

(assert (= (and d!2250212 c!1345002) b!7242358))

(assert (= (and d!2250212 (not c!1345002)) b!7242359))

(assert (=> d!2250212 m!7917066))

(declare-fun m!7917210 () Bool)

(assert (=> d!2250212 m!7917210))

(assert (=> b!7242358 m!7917064))

(declare-fun m!7917212 () Bool)

(assert (=> b!7242358 m!7917212))

(assert (=> b!7242359 m!7917066))

(declare-fun m!7917214 () Bool)

(assert (=> b!7242359 m!7917214))

(assert (=> b!7242359 m!7917064))

(assert (=> b!7242359 m!7917214))

(declare-fun m!7917216 () Bool)

(assert (=> b!7242359 m!7917216))

(assert (=> b!7242359 m!7917066))

(declare-fun m!7917218 () Bool)

(assert (=> b!7242359 m!7917218))

(assert (=> b!7242359 m!7917216))

(assert (=> b!7242359 m!7917218))

(declare-fun m!7917220 () Bool)

(assert (=> b!7242359 m!7917220))

(assert (=> b!7242273 d!2250212))

(declare-fun bs!1904393 () Bool)

(declare-fun d!2250214 () Bool)

(assert (= bs!1904393 (and d!2250214 d!2250152)))

(declare-fun lambda!442207 () Int)

(assert (=> bs!1904393 (= (= (head!14849 s1!1971) (h!76634 s1!1971)) (= lambda!442207 lambda!442191))))

(declare-fun bs!1904394 () Bool)

(assert (= bs!1904394 (and d!2250214 d!2250198)))

(assert (=> bs!1904394 (= (= (head!14849 s1!1971) (head!14849 (t!384361 s1!1971))) (= lambda!442207 lambda!442203))))

(assert (=> d!2250214 true))

(assert (=> d!2250214 (= (derivationStepZipper!3358 lt!2580462 (head!14849 s1!1971)) (flatMap!2760 lt!2580462 lambda!442207))))

(declare-fun bs!1904395 () Bool)

(assert (= bs!1904395 d!2250214))

(declare-fun m!7917222 () Bool)

(assert (=> bs!1904395 m!7917222))

(assert (=> b!7242273 d!2250214))

(declare-fun d!2250216 () Bool)

(assert (=> d!2250216 (= (head!14849 s1!1971) (h!76634 s1!1971))))

(assert (=> b!7242273 d!2250216))

(declare-fun d!2250218 () Bool)

(assert (=> d!2250218 (= (tail!14232 s1!1971) (t!384361 s1!1971))))

(assert (=> b!7242273 d!2250218))

(declare-fun d!2250220 () Bool)

(declare-fun c!1345003 () Bool)

(assert (=> d!2250220 (= c!1345003 (isEmpty!40439 (tail!14232 s2!1849)))))

(declare-fun e!4342225 () Bool)

(assert (=> d!2250220 (= (matchZipper!3480 (derivationStepZipper!3358 (set.insert ct2!328 (as set.empty (Set Context!15020))) (head!14849 s2!1849)) (tail!14232 s2!1849)) e!4342225)))

(declare-fun b!7242360 () Bool)

(assert (=> b!7242360 (= e!4342225 (nullableZipper!2862 (derivationStepZipper!3358 (set.insert ct2!328 (as set.empty (Set Context!15020))) (head!14849 s2!1849))))))

(declare-fun b!7242361 () Bool)

(assert (=> b!7242361 (= e!4342225 (matchZipper!3480 (derivationStepZipper!3358 (derivationStepZipper!3358 (set.insert ct2!328 (as set.empty (Set Context!15020))) (head!14849 s2!1849)) (head!14849 (tail!14232 s2!1849))) (tail!14232 (tail!14232 s2!1849))))))

(assert (= (and d!2250220 c!1345003) b!7242360))

(assert (= (and d!2250220 (not c!1345003)) b!7242361))

(assert (=> d!2250220 m!7917082))

(declare-fun m!7917224 () Bool)

(assert (=> d!2250220 m!7917224))

(assert (=> b!7242360 m!7917080))

(declare-fun m!7917226 () Bool)

(assert (=> b!7242360 m!7917226))

(assert (=> b!7242361 m!7917082))

(declare-fun m!7917228 () Bool)

(assert (=> b!7242361 m!7917228))

(assert (=> b!7242361 m!7917080))

(assert (=> b!7242361 m!7917228))

(declare-fun m!7917230 () Bool)

(assert (=> b!7242361 m!7917230))

(assert (=> b!7242361 m!7917082))

(declare-fun m!7917232 () Bool)

(assert (=> b!7242361 m!7917232))

(assert (=> b!7242361 m!7917230))

(assert (=> b!7242361 m!7917232))

(declare-fun m!7917234 () Bool)

(assert (=> b!7242361 m!7917234))

(assert (=> b!7242275 d!2250220))

(declare-fun bs!1904396 () Bool)

(declare-fun d!2250222 () Bool)

(assert (= bs!1904396 (and d!2250222 d!2250152)))

(declare-fun lambda!442208 () Int)

(assert (=> bs!1904396 (= (= (head!14849 s2!1849) (h!76634 s1!1971)) (= lambda!442208 lambda!442191))))

(declare-fun bs!1904397 () Bool)

(assert (= bs!1904397 (and d!2250222 d!2250198)))

(assert (=> bs!1904397 (= (= (head!14849 s2!1849) (head!14849 (t!384361 s1!1971))) (= lambda!442208 lambda!442203))))

(declare-fun bs!1904398 () Bool)

(assert (= bs!1904398 (and d!2250222 d!2250214)))

(assert (=> bs!1904398 (= (= (head!14849 s2!1849) (head!14849 s1!1971)) (= lambda!442208 lambda!442207))))

(assert (=> d!2250222 true))

(assert (=> d!2250222 (= (derivationStepZipper!3358 (set.insert ct2!328 (as set.empty (Set Context!15020))) (head!14849 s2!1849)) (flatMap!2760 (set.insert ct2!328 (as set.empty (Set Context!15020))) lambda!442208))))

(declare-fun bs!1904399 () Bool)

(assert (= bs!1904399 d!2250222))

(assert (=> bs!1904399 m!7917020))

(declare-fun m!7917236 () Bool)

(assert (=> bs!1904399 m!7917236))

(assert (=> b!7242275 d!2250222))

(declare-fun d!2250224 () Bool)

(assert (=> d!2250224 (= (head!14849 s2!1849) (h!76634 s2!1849))))

(assert (=> b!7242275 d!2250224))

(declare-fun d!2250226 () Bool)

(assert (=> d!2250226 (= (tail!14232 s2!1849) (t!384361 s2!1849))))

(assert (=> b!7242275 d!2250226))

(declare-fun d!2250228 () Bool)

(assert (=> d!2250228 (= (isEmpty!40439 (t!384361 s1!1971)) (is-Nil!70186 (t!384361 s1!1971)))))

(assert (=> d!2250150 d!2250228))

(declare-fun bs!1904400 () Bool)

(declare-fun d!2250230 () Bool)

(assert (= bs!1904400 (and d!2250230 d!2250204)))

(declare-fun lambda!442209 () Int)

(assert (=> bs!1904400 (= lambda!442209 lambda!442206)))

(assert (=> d!2250230 (= (nullableZipper!2862 lt!2580462) (exists!4262 lt!2580462 lambda!442209))))

(declare-fun bs!1904401 () Bool)

(assert (= bs!1904401 d!2250230))

(declare-fun m!7917238 () Bool)

(assert (=> bs!1904401 m!7917238))

(assert (=> b!7242272 d!2250230))

(declare-fun d!2250232 () Bool)

(declare-fun lt!2580487 () Int)

(assert (=> d!2250232 (>= lt!2580487 0)))

(declare-fun e!4342228 () Int)

(assert (=> d!2250232 (= lt!2580487 e!4342228)))

(declare-fun c!1345006 () Bool)

(assert (=> d!2250232 (= c!1345006 (is-Nil!70185 lt!2580475))))

(assert (=> d!2250232 (= (size!41637 lt!2580475) lt!2580487)))

(declare-fun b!7242366 () Bool)

(assert (=> b!7242366 (= e!4342228 0)))

(declare-fun b!7242367 () Bool)

(assert (=> b!7242367 (= e!4342228 (+ 1 (size!41637 (t!384360 lt!2580475))))))

(assert (= (and d!2250232 c!1345006) b!7242366))

(assert (= (and d!2250232 (not c!1345006)) b!7242367))

(declare-fun m!7917240 () Bool)

(assert (=> b!7242367 m!7917240))

(assert (=> b!7242286 d!2250232))

(declare-fun d!2250234 () Bool)

(declare-fun lt!2580488 () Int)

(assert (=> d!2250234 (>= lt!2580488 0)))

(declare-fun e!4342229 () Int)

(assert (=> d!2250234 (= lt!2580488 e!4342229)))

(declare-fun c!1345007 () Bool)

(assert (=> d!2250234 (= c!1345007 (is-Nil!70185 (exprs!8010 ct1!232)))))

(assert (=> d!2250234 (= (size!41637 (exprs!8010 ct1!232)) lt!2580488)))

(declare-fun b!7242368 () Bool)

(assert (=> b!7242368 (= e!4342229 0)))

(declare-fun b!7242369 () Bool)

(assert (=> b!7242369 (= e!4342229 (+ 1 (size!41637 (t!384360 (exprs!8010 ct1!232)))))))

(assert (= (and d!2250234 c!1345007) b!7242368))

(assert (= (and d!2250234 (not c!1345007)) b!7242369))

(declare-fun m!7917242 () Bool)

(assert (=> b!7242369 m!7917242))

(assert (=> b!7242286 d!2250234))

(declare-fun d!2250236 () Bool)

(declare-fun lt!2580489 () Int)

(assert (=> d!2250236 (>= lt!2580489 0)))

(declare-fun e!4342230 () Int)

(assert (=> d!2250236 (= lt!2580489 e!4342230)))

(declare-fun c!1345008 () Bool)

(assert (=> d!2250236 (= c!1345008 (is-Nil!70185 (exprs!8010 ct2!328)))))

(assert (=> d!2250236 (= (size!41637 (exprs!8010 ct2!328)) lt!2580489)))

(declare-fun b!7242370 () Bool)

(assert (=> b!7242370 (= e!4342230 0)))

(declare-fun b!7242371 () Bool)

(assert (=> b!7242371 (= e!4342230 (+ 1 (size!41637 (t!384360 (exprs!8010 ct2!328)))))))

(assert (= (and d!2250236 c!1345008) b!7242370))

(assert (= (and d!2250236 (not c!1345008)) b!7242371))

(declare-fun m!7917244 () Bool)

(assert (=> b!7242371 m!7917244))

(assert (=> b!7242286 d!2250236))

(declare-fun d!2250238 () Bool)

(declare-fun res!2937927 () Bool)

(declare-fun e!4342231 () Bool)

(assert (=> d!2250238 (=> res!2937927 e!4342231)))

(assert (=> d!2250238 (= res!2937927 (is-Nil!70185 (exprs!8010 ct2!328)))))

(assert (=> d!2250238 (= (forall!17409 (exprs!8010 ct2!328) lambda!442195) e!4342231)))

(declare-fun b!7242372 () Bool)

(declare-fun e!4342232 () Bool)

(assert (=> b!7242372 (= e!4342231 e!4342232)))

(declare-fun res!2937928 () Bool)

(assert (=> b!7242372 (=> (not res!2937928) (not e!4342232))))

(assert (=> b!7242372 (= res!2937928 (dynLambda!28649 lambda!442195 (h!76633 (exprs!8010 ct2!328))))))

(declare-fun b!7242373 () Bool)

(assert (=> b!7242373 (= e!4342232 (forall!17409 (t!384360 (exprs!8010 ct2!328)) lambda!442195))))

(assert (= (and d!2250238 (not res!2937927)) b!7242372))

(assert (= (and b!7242372 res!2937928) b!7242373))

(declare-fun b_lambda!277877 () Bool)

(assert (=> (not b_lambda!277877) (not b!7242372)))

(declare-fun m!7917246 () Bool)

(assert (=> b!7242372 m!7917246))

(declare-fun m!7917248 () Bool)

(assert (=> b!7242373 m!7917248))

(assert (=> d!2250158 d!2250238))

(declare-fun lt!2580490 () List!70309)

(declare-fun b!7242377 () Bool)

(declare-fun e!4342233 () Bool)

(assert (=> b!7242377 (= e!4342233 (or (not (= (exprs!8010 ct2!328) Nil!70185)) (= lt!2580490 (t!384360 (exprs!8010 ct1!232)))))))

(declare-fun b!7242375 () Bool)

(declare-fun e!4342234 () List!70309)

(assert (=> b!7242375 (= e!4342234 (Cons!70185 (h!76633 (t!384360 (exprs!8010 ct1!232))) (++!16428 (t!384360 (t!384360 (exprs!8010 ct1!232))) (exprs!8010 ct2!328))))))

(declare-fun b!7242374 () Bool)

(assert (=> b!7242374 (= e!4342234 (exprs!8010 ct2!328))))

(declare-fun d!2250240 () Bool)

(assert (=> d!2250240 e!4342233))

(declare-fun res!2937930 () Bool)

(assert (=> d!2250240 (=> (not res!2937930) (not e!4342233))))

(assert (=> d!2250240 (= res!2937930 (= (content!14501 lt!2580490) (set.union (content!14501 (t!384360 (exprs!8010 ct1!232))) (content!14501 (exprs!8010 ct2!328)))))))

(assert (=> d!2250240 (= lt!2580490 e!4342234)))

(declare-fun c!1345009 () Bool)

(assert (=> d!2250240 (= c!1345009 (is-Nil!70185 (t!384360 (exprs!8010 ct1!232))))))

(assert (=> d!2250240 (= (++!16428 (t!384360 (exprs!8010 ct1!232)) (exprs!8010 ct2!328)) lt!2580490)))

(declare-fun b!7242376 () Bool)

(declare-fun res!2937929 () Bool)

(assert (=> b!7242376 (=> (not res!2937929) (not e!4342233))))

(assert (=> b!7242376 (= res!2937929 (= (size!41637 lt!2580490) (+ (size!41637 (t!384360 (exprs!8010 ct1!232))) (size!41637 (exprs!8010 ct2!328)))))))

(assert (= (and d!2250240 c!1345009) b!7242374))

(assert (= (and d!2250240 (not c!1345009)) b!7242375))

(assert (= (and d!2250240 res!2937930) b!7242376))

(assert (= (and b!7242376 res!2937929) b!7242377))

(declare-fun m!7917250 () Bool)

(assert (=> b!7242375 m!7917250))

(declare-fun m!7917252 () Bool)

(assert (=> d!2250240 m!7917252))

(assert (=> d!2250240 m!7917204))

(assert (=> d!2250240 m!7917092))

(declare-fun m!7917254 () Bool)

(assert (=> b!7242376 m!7917254))

(assert (=> b!7242376 m!7917242))

(assert (=> b!7242376 m!7917098))

(assert (=> b!7242285 d!2250240))

(declare-fun bs!1904402 () Bool)

(declare-fun d!2250242 () Bool)

(assert (= bs!1904402 (and d!2250242 d!2250204)))

(declare-fun lambda!442210 () Int)

(assert (=> bs!1904402 (= lambda!442210 lambda!442206)))

(declare-fun bs!1904403 () Bool)

(assert (= bs!1904403 (and d!2250242 d!2250230)))

(assert (=> bs!1904403 (= lambda!442210 lambda!442209)))

(assert (=> d!2250242 (= (nullableZipper!2862 (set.insert ct2!328 (as set.empty (Set Context!15020)))) (exists!4262 (set.insert ct2!328 (as set.empty (Set Context!15020))) lambda!442210))))

(declare-fun bs!1904404 () Bool)

(assert (= bs!1904404 d!2250242))

(assert (=> bs!1904404 m!7917020))

(declare-fun m!7917256 () Bool)

(assert (=> bs!1904404 m!7917256))

(assert (=> b!7242274 d!2250242))

(declare-fun b!7242378 () Bool)

(declare-fun e!4342235 () Bool)

(declare-fun tp!2035609 () Bool)

(assert (=> b!7242378 (= e!4342235 (and tp_is_empty!46605 tp!2035609))))

(assert (=> b!7242298 (= tp!2035594 e!4342235)))

(assert (= (and b!7242298 (is-Cons!70186 (t!384361 (t!384361 s1!1971)))) b!7242378))

(declare-fun b!7242392 () Bool)

(declare-fun e!4342238 () Bool)

(declare-fun tp!2035624 () Bool)

(declare-fun tp!2035621 () Bool)

(assert (=> b!7242392 (= e!4342238 (and tp!2035624 tp!2035621))))

(declare-fun b!7242389 () Bool)

(assert (=> b!7242389 (= e!4342238 tp_is_empty!46605)))

(assert (=> b!7242299 (= tp!2035595 e!4342238)))

(declare-fun b!7242390 () Bool)

(declare-fun tp!2035622 () Bool)

(declare-fun tp!2035620 () Bool)

(assert (=> b!7242390 (= e!4342238 (and tp!2035622 tp!2035620))))

(declare-fun b!7242391 () Bool)

(declare-fun tp!2035623 () Bool)

(assert (=> b!7242391 (= e!4342238 tp!2035623)))

(assert (= (and b!7242299 (is-ElementMatch!18570 (h!76633 (exprs!8010 ct1!232)))) b!7242389))

(assert (= (and b!7242299 (is-Concat!27415 (h!76633 (exprs!8010 ct1!232)))) b!7242390))

(assert (= (and b!7242299 (is-Star!18570 (h!76633 (exprs!8010 ct1!232)))) b!7242391))

(assert (= (and b!7242299 (is-Union!18570 (h!76633 (exprs!8010 ct1!232)))) b!7242392))

(declare-fun b!7242393 () Bool)

(declare-fun e!4342239 () Bool)

(declare-fun tp!2035625 () Bool)

(declare-fun tp!2035626 () Bool)

(assert (=> b!7242393 (= e!4342239 (and tp!2035625 tp!2035626))))

(assert (=> b!7242299 (= tp!2035596 e!4342239)))

(assert (= (and b!7242299 (is-Cons!70185 (t!384360 (exprs!8010 ct1!232)))) b!7242393))

(declare-fun b!7242397 () Bool)

(declare-fun e!4342240 () Bool)

(declare-fun tp!2035631 () Bool)

(declare-fun tp!2035628 () Bool)

(assert (=> b!7242397 (= e!4342240 (and tp!2035631 tp!2035628))))

(declare-fun b!7242394 () Bool)

(assert (=> b!7242394 (= e!4342240 tp_is_empty!46605)))

(assert (=> b!7242297 (= tp!2035592 e!4342240)))

(declare-fun b!7242395 () Bool)

(declare-fun tp!2035629 () Bool)

(declare-fun tp!2035627 () Bool)

(assert (=> b!7242395 (= e!4342240 (and tp!2035629 tp!2035627))))

(declare-fun b!7242396 () Bool)

(declare-fun tp!2035630 () Bool)

(assert (=> b!7242396 (= e!4342240 tp!2035630)))

(assert (= (and b!7242297 (is-ElementMatch!18570 (h!76633 (exprs!8010 ct2!328)))) b!7242394))

(assert (= (and b!7242297 (is-Concat!27415 (h!76633 (exprs!8010 ct2!328)))) b!7242395))

(assert (= (and b!7242297 (is-Star!18570 (h!76633 (exprs!8010 ct2!328)))) b!7242396))

(assert (= (and b!7242297 (is-Union!18570 (h!76633 (exprs!8010 ct2!328)))) b!7242397))

(declare-fun b!7242398 () Bool)

(declare-fun e!4342241 () Bool)

(declare-fun tp!2035632 () Bool)

(declare-fun tp!2035633 () Bool)

(assert (=> b!7242398 (= e!4342241 (and tp!2035632 tp!2035633))))

(assert (=> b!7242297 (= tp!2035593 e!4342241)))

(assert (= (and b!7242297 (is-Cons!70185 (t!384360 (exprs!8010 ct2!328)))) b!7242398))

(declare-fun b!7242399 () Bool)

(declare-fun e!4342242 () Bool)

(declare-fun tp!2035634 () Bool)

(assert (=> b!7242399 (= e!4342242 (and tp_is_empty!46605 tp!2035634))))

(assert (=> b!7242292 (= tp!2035587 e!4342242)))

(assert (= (and b!7242292 (is-Cons!70186 (t!384361 (t!384361 s2!1849)))) b!7242399))

(declare-fun b_lambda!277879 () Bool)

(assert (= b_lambda!277873 (or b!7242236 b_lambda!277879)))

(declare-fun bs!1904405 () Bool)

(declare-fun d!2250244 () Bool)

(assert (= bs!1904405 (and d!2250244 b!7242236)))

(declare-fun validRegex!9536 (Regex!18570) Bool)

(assert (=> bs!1904405 (= (dynLambda!28649 lambda!442185 (h!76633 (++!16428 (exprs!8010 ct1!232) (exprs!8010 ct2!328)))) (validRegex!9536 (h!76633 (++!16428 (exprs!8010 ct1!232) (exprs!8010 ct2!328)))))))

(declare-fun m!7917258 () Bool)

(assert (=> bs!1904405 m!7917258))

(assert (=> b!7242342 d!2250244))

(declare-fun b_lambda!277881 () Bool)

(assert (= b_lambda!277875 (or b!7242236 b_lambda!277881)))

(declare-fun bs!1904406 () Bool)

(declare-fun d!2250246 () Bool)

(assert (= bs!1904406 (and d!2250246 b!7242236)))

(assert (=> bs!1904406 (= (dynLambda!28649 lambda!442185 (h!76633 (exprs!8010 ct1!232))) (validRegex!9536 (h!76633 (exprs!8010 ct1!232))))))

(declare-fun m!7917260 () Bool)

(assert (=> bs!1904406 m!7917260))

(assert (=> b!7242344 d!2250246))

(declare-fun b_lambda!277883 () Bool)

(assert (= b_lambda!277871 (or d!2250156 b_lambda!277883)))

(declare-fun bs!1904407 () Bool)

(declare-fun d!2250248 () Bool)

(assert (= bs!1904407 (and d!2250248 d!2250156)))

(assert (=> bs!1904407 (= (dynLambda!28649 lambda!442194 (h!76633 (exprs!8010 ct1!232))) (validRegex!9536 (h!76633 (exprs!8010 ct1!232))))))

(assert (=> bs!1904407 m!7917260))

(assert (=> b!7242340 d!2250248))

(declare-fun b_lambda!277885 () Bool)

(assert (= b_lambda!277877 (or d!2250158 b_lambda!277885)))

(declare-fun bs!1904408 () Bool)

(declare-fun d!2250250 () Bool)

(assert (= bs!1904408 (and d!2250250 d!2250158)))

(assert (=> bs!1904408 (= (dynLambda!28649 lambda!442195 (h!76633 (exprs!8010 ct2!328))) (validRegex!9536 (h!76633 (exprs!8010 ct2!328))))))

(declare-fun m!7917262 () Bool)

(assert (=> bs!1904408 m!7917262))

(assert (=> b!7242372 d!2250250))

(push 1)

(assert (not b!7242396))

(assert (not b!7242346))

(assert (not b!7242357))

(assert (not b_lambda!277881))

(assert (not b!7242375))

(assert (not b!7242398))

(assert (not b_lambda!277885))

(assert (not b!7242355))

(assert (not d!2250240))

(assert (not b!7242341))

(assert (not d!2250242))

(assert (not b!7242367))

(assert (not b!7242353))

(assert (not b!7242376))

(assert (not b_lambda!277883))

(assert (not b!7242397))

(assert (not bs!1904407))

(assert (not d!2250190))

(assert (not b!7242378))

(assert (not b!7242347))

(assert (not d!2250204))

(assert (not b!7242343))

(assert (not b!7242361))

(assert (not d!2250214))

(assert (not d!2250230))

(assert (not b!7242392))

(assert (not d!2250196))

(assert (not b_lambda!277879))

(assert (not bs!1904406))

(assert (not d!2250182))

(assert (not b!7242393))

(assert (not d!2250212))

(assert (not b!7242391))

(assert (not b!7242390))

(assert (not b!7242358))

(assert (not b!7242360))

(assert tp_is_empty!46605)

(assert (not b!7242359))

(assert (not b!7242371))

(assert (not b!7242399))

(assert (not bs!1904408))

(assert (not bs!1904405))

(assert (not d!2250220))

(assert (not b!7242373))

(assert (not b!7242369))

(assert (not b!7242345))

(assert (not d!2250222))

(assert (not b!7242395))

(assert (not d!2250198))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

