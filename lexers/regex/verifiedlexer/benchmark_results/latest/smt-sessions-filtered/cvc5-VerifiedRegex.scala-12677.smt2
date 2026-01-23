; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!701114 () Bool)

(assert start!701114)

(declare-fun b!7229230 () Bool)

(declare-fun res!2933041 () Bool)

(declare-fun e!4333585 () Bool)

(assert (=> b!7229230 (=> (not res!2933041) (not e!4333585))))

(declare-datatypes ((C!37198 0))(
  ( (C!37199 (val!28547 Int)) )
))
(declare-datatypes ((Regex!18462 0))(
  ( (ElementMatch!18462 (c!1341209 C!37198)) (Concat!27307 (regOne!37436 Regex!18462) (regTwo!37436 Regex!18462)) (EmptyExpr!18462) (Star!18462 (reg!18791 Regex!18462)) (EmptyLang!18462) (Union!18462 (regOne!37437 Regex!18462) (regTwo!37437 Regex!18462)) )
))
(declare-datatypes ((List!70012 0))(
  ( (Nil!69888) (Cons!69888 (h!76336 Regex!18462) (t!384061 List!70012)) )
))
(declare-datatypes ((Context!14804 0))(
  ( (Context!14805 (exprs!7902 List!70012)) )
))
(declare-fun ct2!328 () Context!14804)

(declare-datatypes ((List!70013 0))(
  ( (Nil!69889) (Cons!69889 (h!76337 C!37198) (t!384062 List!70013)) )
))
(declare-fun s2!1849 () List!70013)

(declare-fun matchZipper!3372 ((Set Context!14804) List!70013) Bool)

(assert (=> b!7229230 (= res!2933041 (matchZipper!3372 (set.insert ct2!328 (as set.empty (Set Context!14804))) s2!1849))))

(declare-fun b!7229231 () Bool)

(declare-fun e!4333583 () Bool)

(declare-fun tp_is_empty!46389 () Bool)

(declare-fun tp!2033210 () Bool)

(assert (=> b!7229231 (= e!4333583 (and tp_is_empty!46389 tp!2033210))))

(declare-fun b!7229232 () Bool)

(declare-fun ct1!232 () Context!14804)

(declare-fun lambda!438904 () Int)

(declare-fun forall!17290 (List!70012 Int) Bool)

(assert (=> b!7229232 (= e!4333585 (not (forall!17290 (exprs!7902 ct1!232) lambda!438904)))))

(declare-fun res!2933042 () Bool)

(assert (=> start!701114 (=> (not res!2933042) (not e!4333585))))

(declare-fun s1!1971 () List!70013)

(assert (=> start!701114 (= res!2933042 (matchZipper!3372 (set.insert ct1!232 (as set.empty (Set Context!14804))) s1!1971))))

(assert (=> start!701114 e!4333585))

(declare-fun e!4333586 () Bool)

(declare-fun inv!89166 (Context!14804) Bool)

(assert (=> start!701114 (and (inv!89166 ct1!232) e!4333586)))

(assert (=> start!701114 e!4333583))

(declare-fun e!4333582 () Bool)

(assert (=> start!701114 (and (inv!89166 ct2!328) e!4333582)))

(declare-fun e!4333584 () Bool)

(assert (=> start!701114 e!4333584))

(declare-fun b!7229233 () Bool)

(declare-fun tp!2033209 () Bool)

(assert (=> b!7229233 (= e!4333586 tp!2033209)))

(declare-fun b!7229234 () Bool)

(declare-fun tp!2033212 () Bool)

(assert (=> b!7229234 (= e!4333584 (and tp_is_empty!46389 tp!2033212))))

(declare-fun b!7229235 () Bool)

(declare-fun tp!2033211 () Bool)

(assert (=> b!7229235 (= e!4333582 tp!2033211)))

(assert (= (and start!701114 res!2933042) b!7229230))

(assert (= (and b!7229230 res!2933041) b!7229232))

(assert (= start!701114 b!7229233))

(assert (= (and start!701114 (is-Cons!69889 s1!1971)) b!7229231))

(assert (= start!701114 b!7229235))

(assert (= (and start!701114 (is-Cons!69889 s2!1849)) b!7229234))

(declare-fun m!7897276 () Bool)

(assert (=> b!7229230 m!7897276))

(assert (=> b!7229230 m!7897276))

(declare-fun m!7897278 () Bool)

(assert (=> b!7229230 m!7897278))

(declare-fun m!7897280 () Bool)

(assert (=> b!7229232 m!7897280))

(declare-fun m!7897282 () Bool)

(assert (=> start!701114 m!7897282))

(assert (=> start!701114 m!7897282))

(declare-fun m!7897284 () Bool)

(assert (=> start!701114 m!7897284))

(declare-fun m!7897286 () Bool)

(assert (=> start!701114 m!7897286))

(declare-fun m!7897288 () Bool)

(assert (=> start!701114 m!7897288))

(push 1)

(assert (not b!7229232))

(assert (not b!7229234))

(assert tp_is_empty!46389)

(assert (not b!7229235))

(assert (not b!7229230))

(assert (not b!7229231))

(assert (not b!7229233))

(assert (not start!701114))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!2245078 () Bool)

(declare-fun c!1341213 () Bool)

(declare-fun isEmpty!40299 (List!70013) Bool)

(assert (=> d!2245078 (= c!1341213 (isEmpty!40299 s2!1849))))

(declare-fun e!4333604 () Bool)

(assert (=> d!2245078 (= (matchZipper!3372 (set.insert ct2!328 (as set.empty (Set Context!14804))) s2!1849) e!4333604)))

(declare-fun b!7229258 () Bool)

(declare-fun nullableZipper!2790 ((Set Context!14804)) Bool)

(assert (=> b!7229258 (= e!4333604 (nullableZipper!2790 (set.insert ct2!328 (as set.empty (Set Context!14804)))))))

(declare-fun b!7229259 () Bool)

(declare-fun derivationStepZipper!3259 ((Set Context!14804) C!37198) (Set Context!14804))

(declare-fun head!14776 (List!70013) C!37198)

(declare-fun tail!14091 (List!70013) List!70013)

(assert (=> b!7229259 (= e!4333604 (matchZipper!3372 (derivationStepZipper!3259 (set.insert ct2!328 (as set.empty (Set Context!14804))) (head!14776 s2!1849)) (tail!14091 s2!1849)))))

(assert (= (and d!2245078 c!1341213) b!7229258))

(assert (= (and d!2245078 (not c!1341213)) b!7229259))

(declare-fun m!7897304 () Bool)

(assert (=> d!2245078 m!7897304))

(assert (=> b!7229258 m!7897276))

(declare-fun m!7897306 () Bool)

(assert (=> b!7229258 m!7897306))

(declare-fun m!7897308 () Bool)

(assert (=> b!7229259 m!7897308))

(assert (=> b!7229259 m!7897276))

(assert (=> b!7229259 m!7897308))

(declare-fun m!7897310 () Bool)

(assert (=> b!7229259 m!7897310))

(declare-fun m!7897312 () Bool)

(assert (=> b!7229259 m!7897312))

(assert (=> b!7229259 m!7897310))

(assert (=> b!7229259 m!7897312))

(declare-fun m!7897314 () Bool)

(assert (=> b!7229259 m!7897314))

(assert (=> b!7229230 d!2245078))

(declare-fun d!2245080 () Bool)

(declare-fun c!1341214 () Bool)

(assert (=> d!2245080 (= c!1341214 (isEmpty!40299 s1!1971))))

(declare-fun e!4333605 () Bool)

(assert (=> d!2245080 (= (matchZipper!3372 (set.insert ct1!232 (as set.empty (Set Context!14804))) s1!1971) e!4333605)))

(declare-fun b!7229260 () Bool)

(assert (=> b!7229260 (= e!4333605 (nullableZipper!2790 (set.insert ct1!232 (as set.empty (Set Context!14804)))))))

(declare-fun b!7229261 () Bool)

(assert (=> b!7229261 (= e!4333605 (matchZipper!3372 (derivationStepZipper!3259 (set.insert ct1!232 (as set.empty (Set Context!14804))) (head!14776 s1!1971)) (tail!14091 s1!1971)))))

(assert (= (and d!2245080 c!1341214) b!7229260))

(assert (= (and d!2245080 (not c!1341214)) b!7229261))

(declare-fun m!7897316 () Bool)

(assert (=> d!2245080 m!7897316))

(assert (=> b!7229260 m!7897282))

(declare-fun m!7897318 () Bool)

(assert (=> b!7229260 m!7897318))

(declare-fun m!7897320 () Bool)

(assert (=> b!7229261 m!7897320))

(assert (=> b!7229261 m!7897282))

(assert (=> b!7229261 m!7897320))

(declare-fun m!7897322 () Bool)

(assert (=> b!7229261 m!7897322))

(declare-fun m!7897324 () Bool)

(assert (=> b!7229261 m!7897324))

(assert (=> b!7229261 m!7897322))

(assert (=> b!7229261 m!7897324))

(declare-fun m!7897326 () Bool)

(assert (=> b!7229261 m!7897326))

(assert (=> start!701114 d!2245080))

(declare-fun bs!1902256 () Bool)

(declare-fun d!2245082 () Bool)

(assert (= bs!1902256 (and d!2245082 b!7229232)))

(declare-fun lambda!438910 () Int)

(assert (=> bs!1902256 (= lambda!438910 lambda!438904)))

(assert (=> d!2245082 (= (inv!89166 ct1!232) (forall!17290 (exprs!7902 ct1!232) lambda!438910))))

(declare-fun bs!1902257 () Bool)

(assert (= bs!1902257 d!2245082))

(declare-fun m!7897328 () Bool)

(assert (=> bs!1902257 m!7897328))

(assert (=> start!701114 d!2245082))

(declare-fun bs!1902258 () Bool)

(declare-fun d!2245084 () Bool)

(assert (= bs!1902258 (and d!2245084 b!7229232)))

(declare-fun lambda!438911 () Int)

(assert (=> bs!1902258 (= lambda!438911 lambda!438904)))

(declare-fun bs!1902259 () Bool)

(assert (= bs!1902259 (and d!2245084 d!2245082)))

(assert (=> bs!1902259 (= lambda!438911 lambda!438910)))

(assert (=> d!2245084 (= (inv!89166 ct2!328) (forall!17290 (exprs!7902 ct2!328) lambda!438911))))

(declare-fun bs!1902260 () Bool)

(assert (= bs!1902260 d!2245084))

(declare-fun m!7897330 () Bool)

(assert (=> bs!1902260 m!7897330))

(assert (=> start!701114 d!2245084))

(declare-fun d!2245086 () Bool)

(declare-fun res!2933053 () Bool)

(declare-fun e!4333610 () Bool)

(assert (=> d!2245086 (=> res!2933053 e!4333610)))

(assert (=> d!2245086 (= res!2933053 (is-Nil!69888 (exprs!7902 ct1!232)))))

(assert (=> d!2245086 (= (forall!17290 (exprs!7902 ct1!232) lambda!438904) e!4333610)))

(declare-fun b!7229266 () Bool)

(declare-fun e!4333611 () Bool)

(assert (=> b!7229266 (= e!4333610 e!4333611)))

(declare-fun res!2933054 () Bool)

(assert (=> b!7229266 (=> (not res!2933054) (not e!4333611))))

(declare-fun dynLambda!28487 (Int Regex!18462) Bool)

(assert (=> b!7229266 (= res!2933054 (dynLambda!28487 lambda!438904 (h!76336 (exprs!7902 ct1!232))))))

(declare-fun b!7229267 () Bool)

(assert (=> b!7229267 (= e!4333611 (forall!17290 (t!384061 (exprs!7902 ct1!232)) lambda!438904))))

(assert (= (and d!2245086 (not res!2933053)) b!7229266))

(assert (= (and b!7229266 res!2933054) b!7229267))

(declare-fun b_lambda!276927 () Bool)

(assert (=> (not b_lambda!276927) (not b!7229266)))

(declare-fun m!7897332 () Bool)

(assert (=> b!7229266 m!7897332))

(declare-fun m!7897334 () Bool)

(assert (=> b!7229267 m!7897334))

(assert (=> b!7229232 d!2245086))

(declare-fun b!7229272 () Bool)

(declare-fun e!4333614 () Bool)

(declare-fun tp!2033229 () Bool)

(declare-fun tp!2033230 () Bool)

(assert (=> b!7229272 (= e!4333614 (and tp!2033229 tp!2033230))))

(assert (=> b!7229235 (= tp!2033211 e!4333614)))

(assert (= (and b!7229235 (is-Cons!69888 (exprs!7902 ct2!328))) b!7229272))

(declare-fun b!7229277 () Bool)

(declare-fun e!4333617 () Bool)

(declare-fun tp!2033233 () Bool)

(assert (=> b!7229277 (= e!4333617 (and tp_is_empty!46389 tp!2033233))))

(assert (=> b!7229231 (= tp!2033210 e!4333617)))

(assert (= (and b!7229231 (is-Cons!69889 (t!384062 s1!1971))) b!7229277))

(declare-fun b!7229278 () Bool)

(declare-fun e!4333618 () Bool)

(declare-fun tp!2033234 () Bool)

(assert (=> b!7229278 (= e!4333618 (and tp_is_empty!46389 tp!2033234))))

(assert (=> b!7229234 (= tp!2033212 e!4333618)))

(assert (= (and b!7229234 (is-Cons!69889 (t!384062 s2!1849))) b!7229278))

(declare-fun b!7229279 () Bool)

(declare-fun e!4333619 () Bool)

(declare-fun tp!2033235 () Bool)

(declare-fun tp!2033236 () Bool)

(assert (=> b!7229279 (= e!4333619 (and tp!2033235 tp!2033236))))

(assert (=> b!7229233 (= tp!2033209 e!4333619)))

(assert (= (and b!7229233 (is-Cons!69888 (exprs!7902 ct1!232))) b!7229279))

(declare-fun b_lambda!276929 () Bool)

(assert (= b_lambda!276927 (or b!7229232 b_lambda!276929)))

(declare-fun bs!1902261 () Bool)

(declare-fun d!2245090 () Bool)

(assert (= bs!1902261 (and d!2245090 b!7229232)))

(declare-fun validRegex!9497 (Regex!18462) Bool)

(assert (=> bs!1902261 (= (dynLambda!28487 lambda!438904 (h!76336 (exprs!7902 ct1!232))) (validRegex!9497 (h!76336 (exprs!7902 ct1!232))))))

(declare-fun m!7897336 () Bool)

(assert (=> bs!1902261 m!7897336))

(assert (=> b!7229266 d!2245090))

(push 1)

(assert (not b_lambda!276929))

(assert tp_is_empty!46389)

(assert (not bs!1902261))

(assert (not b!7229279))

(assert (not b!7229277))

(assert (not b!7229258))

(assert (not d!2245084))

(assert (not b!7229261))

(assert (not d!2245082))

(assert (not b!7229260))

(assert (not b!7229272))

(assert (not d!2245080))

(assert (not b!7229267))

(assert (not b!7229278))

(assert (not d!2245078))

(assert (not b!7229259))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

