; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!720090 () Bool)

(assert start!720090)

(declare-fun b!7381550 () Bool)

(declare-fun e!4418493 () Bool)

(declare-fun e!4418490 () Bool)

(assert (=> b!7381550 (= e!4418493 e!4418490)))

(declare-fun res!2977206 () Bool)

(assert (=> b!7381550 (=> (not res!2977206) (not e!4418490))))

(declare-datatypes ((C!38930 0))(
  ( (C!38931 (val!29825 Int)) )
))
(declare-datatypes ((Regex!19328 0))(
  ( (ElementMatch!19328 (c!1372016 C!38930)) (Concat!28173 (regOne!39168 Regex!19328) (regTwo!39168 Regex!19328)) (EmptyExpr!19328) (Star!19328 (reg!19657 Regex!19328)) (EmptyLang!19328) (Union!19328 (regOne!39169 Regex!19328) (regTwo!39169 Regex!19328)) )
))
(declare-fun r1!2370 () Regex!19328)

(declare-datatypes ((List!71824 0))(
  ( (Nil!71700) (Cons!71700 (h!78148 Regex!19328) (t!386317 List!71824)) )
))
(declare-datatypes ((Context!16536 0))(
  ( (Context!16537 (exprs!8768 List!71824)) )
))
(declare-fun lt!2616992 () Context!16536)

(declare-fun lt!2616988 () (Set Context!16536))

(declare-fun c!10362 () C!38930)

(declare-fun derivationStepZipperDown!3154 (Regex!19328 Context!16536 C!38930) (Set Context!16536))

(assert (=> b!7381550 (= res!2977206 (= lt!2616988 (derivationStepZipperDown!3154 (reg!19657 r1!2370) lt!2616992 c!10362)))))

(declare-fun lt!2616995 () List!71824)

(assert (=> b!7381550 (= lt!2616992 (Context!16537 lt!2616995))))

(declare-fun ct1!282 () Context!16536)

(declare-fun lt!2616996 () Regex!19328)

(declare-fun $colon$colon!3306 (List!71824 Regex!19328) List!71824)

(assert (=> b!7381550 (= lt!2616995 ($colon$colon!3306 (exprs!8768 ct1!282) lt!2616996))))

(declare-fun b!7381551 () Bool)

(declare-fun e!4418489 () Bool)

(declare-fun tp!2099651 () Bool)

(assert (=> b!7381551 (= e!4418489 tp!2099651)))

(declare-fun b!7381552 () Bool)

(declare-fun e!4418488 () Bool)

(declare-fun tp!2099648 () Bool)

(declare-fun tp!2099655 () Bool)

(assert (=> b!7381552 (= e!4418488 (and tp!2099648 tp!2099655))))

(declare-fun b!7381553 () Bool)

(declare-fun lt!2616991 () Context!16536)

(declare-fun inv!91661 (Context!16536) Bool)

(assert (=> b!7381553 (= e!4418490 (not (inv!91661 lt!2616991)))))

(declare-fun cWitness!61 () Context!16536)

(declare-fun lambda!458566 () Int)

(declare-fun ct2!378 () Context!16536)

(declare-datatypes ((Unit!165605 0))(
  ( (Unit!165606) )
))
(declare-fun lt!2616994 () Unit!165605)

(declare-fun lemmaConcatPreservesForall!2001 (List!71824 List!71824 Int) Unit!165605)

(assert (=> b!7381553 (= lt!2616994 (lemmaConcatPreservesForall!2001 (exprs!8768 cWitness!61) (exprs!8768 ct2!378) lambda!458566))))

(declare-fun ++!17144 (List!71824 List!71824) List!71824)

(assert (=> b!7381553 (set.member lt!2616991 (derivationStepZipperDown!3154 (reg!19657 r1!2370) (Context!16537 (++!17144 lt!2616995 (exprs!8768 ct2!378))) c!10362))))

(assert (=> b!7381553 (= lt!2616991 (Context!16537 (++!17144 (exprs!8768 cWitness!61) (exprs!8768 ct2!378))))))

(declare-fun lt!2616986 () Unit!165605)

(assert (=> b!7381553 (= lt!2616986 (lemmaConcatPreservesForall!2001 lt!2616995 (exprs!8768 ct2!378) lambda!458566))))

(declare-fun lt!2616989 () Unit!165605)

(assert (=> b!7381553 (= lt!2616989 (lemmaConcatPreservesForall!2001 (exprs!8768 cWitness!61) (exprs!8768 ct2!378) lambda!458566))))

(declare-fun lt!2616990 () Unit!165605)

(declare-fun lemmaDerivContainsCtxtThenConcatDerivContainsConcatCtxDerivDown!153 (Regex!19328 Context!16536 Context!16536 Context!16536 C!38930) Unit!165605)

(assert (=> b!7381553 (= lt!2616990 (lemmaDerivContainsCtxtThenConcatDerivContainsConcatCtxDerivDown!153 (reg!19657 r1!2370) lt!2616992 ct2!378 cWitness!61 c!10362))))

(declare-fun b!7381554 () Bool)

(declare-fun e!4418495 () Bool)

(declare-fun e!4418487 () Bool)

(assert (=> b!7381554 (= e!4418495 e!4418487)))

(declare-fun res!2977202 () Bool)

(assert (=> b!7381554 (=> (not res!2977202) (not e!4418487))))

(assert (=> b!7381554 (= res!2977202 (and (or (not (is-ElementMatch!19328 r1!2370)) (not (= c!10362 (c!1372016 r1!2370)))) (not (is-Union!19328 r1!2370))))))

(declare-fun lt!2616993 () (Set Context!16536))

(assert (=> b!7381554 (= lt!2616993 (derivationStepZipperDown!3154 r1!2370 (Context!16537 (++!17144 (exprs!8768 ct1!282) (exprs!8768 ct2!378))) c!10362))))

(declare-fun lt!2616987 () Unit!165605)

(assert (=> b!7381554 (= lt!2616987 (lemmaConcatPreservesForall!2001 (exprs!8768 ct1!282) (exprs!8768 ct2!378) lambda!458566))))

(declare-fun b!7381555 () Bool)

(declare-fun tp!2099653 () Bool)

(assert (=> b!7381555 (= e!4418488 tp!2099653)))

(declare-fun b!7381556 () Bool)

(declare-fun e!4418492 () Bool)

(declare-fun nullable!8402 (Regex!19328) Bool)

(assert (=> b!7381556 (= e!4418492 (not (nullable!8402 (regOne!39168 r1!2370))))))

(declare-fun b!7381557 () Bool)

(declare-fun tp_is_empty!48901 () Bool)

(assert (=> b!7381557 (= e!4418488 tp_is_empty!48901)))

(declare-fun b!7381558 () Bool)

(declare-fun tp!2099649 () Bool)

(declare-fun tp!2099650 () Bool)

(assert (=> b!7381558 (= e!4418488 (and tp!2099649 tp!2099650))))

(declare-fun b!7381559 () Bool)

(declare-fun res!2977200 () Bool)

(assert (=> b!7381559 (=> (not res!2977200) (not e!4418487))))

(assert (=> b!7381559 (= res!2977200 (and (not (is-Concat!28173 r1!2370)) (is-Star!19328 r1!2370)))))

(declare-fun res!2977199 () Bool)

(declare-fun e!4418491 () Bool)

(assert (=> start!720090 (=> (not res!2977199) (not e!4418491))))

(declare-fun validRegex!9924 (Regex!19328) Bool)

(assert (=> start!720090 (= res!2977199 (validRegex!9924 r1!2370))))

(assert (=> start!720090 e!4418491))

(assert (=> start!720090 tp_is_empty!48901))

(declare-fun e!4418496 () Bool)

(assert (=> start!720090 (and (inv!91661 cWitness!61) e!4418496)))

(declare-fun e!4418494 () Bool)

(assert (=> start!720090 (and (inv!91661 ct1!282) e!4418494)))

(assert (=> start!720090 e!4418488))

(assert (=> start!720090 (and (inv!91661 ct2!378) e!4418489)))

(declare-fun b!7381560 () Bool)

(assert (=> b!7381560 (= e!4418491 e!4418495)))

(declare-fun res!2977205 () Bool)

(assert (=> b!7381560 (=> (not res!2977205) (not e!4418495))))

(assert (=> b!7381560 (= res!2977205 (set.member cWitness!61 lt!2616988))))

(assert (=> b!7381560 (= lt!2616988 (derivationStepZipperDown!3154 r1!2370 ct1!282 c!10362))))

(declare-fun b!7381561 () Bool)

(declare-fun res!2977203 () Bool)

(assert (=> b!7381561 (=> (not res!2977203) (not e!4418487))))

(assert (=> b!7381561 (= res!2977203 e!4418492)))

(declare-fun res!2977204 () Bool)

(assert (=> b!7381561 (=> res!2977204 e!4418492)))

(assert (=> b!7381561 (= res!2977204 (not (is-Concat!28173 r1!2370)))))

(declare-fun b!7381562 () Bool)

(declare-fun tp!2099652 () Bool)

(assert (=> b!7381562 (= e!4418494 tp!2099652)))

(declare-fun b!7381563 () Bool)

(declare-fun tp!2099654 () Bool)

(assert (=> b!7381563 (= e!4418496 tp!2099654)))

(declare-fun b!7381564 () Bool)

(assert (=> b!7381564 (= e!4418487 e!4418493)))

(declare-fun res!2977201 () Bool)

(assert (=> b!7381564 (=> (not res!2977201) (not e!4418493))))

(assert (=> b!7381564 (= res!2977201 (validRegex!9924 lt!2616996))))

(assert (=> b!7381564 (= lt!2616996 (Star!19328 (reg!19657 r1!2370)))))

(assert (= (and start!720090 res!2977199) b!7381560))

(assert (= (and b!7381560 res!2977205) b!7381554))

(assert (= (and b!7381554 res!2977202) b!7381561))

(assert (= (and b!7381561 (not res!2977204)) b!7381556))

(assert (= (and b!7381561 res!2977203) b!7381559))

(assert (= (and b!7381559 res!2977200) b!7381564))

(assert (= (and b!7381564 res!2977201) b!7381550))

(assert (= (and b!7381550 res!2977206) b!7381553))

(assert (= start!720090 b!7381563))

(assert (= start!720090 b!7381562))

(assert (= (and start!720090 (is-ElementMatch!19328 r1!2370)) b!7381557))

(assert (= (and start!720090 (is-Concat!28173 r1!2370)) b!7381552))

(assert (= (and start!720090 (is-Star!19328 r1!2370)) b!7381555))

(assert (= (and start!720090 (is-Union!19328 r1!2370)) b!7381558))

(assert (= start!720090 b!7381551))

(declare-fun m!8031222 () Bool)

(assert (=> b!7381550 m!8031222))

(declare-fun m!8031224 () Bool)

(assert (=> b!7381550 m!8031224))

(declare-fun m!8031226 () Bool)

(assert (=> b!7381554 m!8031226))

(declare-fun m!8031228 () Bool)

(assert (=> b!7381554 m!8031228))

(declare-fun m!8031230 () Bool)

(assert (=> b!7381554 m!8031230))

(declare-fun m!8031232 () Bool)

(assert (=> b!7381564 m!8031232))

(declare-fun m!8031234 () Bool)

(assert (=> b!7381556 m!8031234))

(declare-fun m!8031236 () Bool)

(assert (=> b!7381560 m!8031236))

(declare-fun m!8031238 () Bool)

(assert (=> b!7381560 m!8031238))

(declare-fun m!8031240 () Bool)

(assert (=> start!720090 m!8031240))

(declare-fun m!8031242 () Bool)

(assert (=> start!720090 m!8031242))

(declare-fun m!8031244 () Bool)

(assert (=> start!720090 m!8031244))

(declare-fun m!8031246 () Bool)

(assert (=> start!720090 m!8031246))

(declare-fun m!8031248 () Bool)

(assert (=> b!7381553 m!8031248))

(declare-fun m!8031250 () Bool)

(assert (=> b!7381553 m!8031250))

(declare-fun m!8031252 () Bool)

(assert (=> b!7381553 m!8031252))

(declare-fun m!8031254 () Bool)

(assert (=> b!7381553 m!8031254))

(declare-fun m!8031256 () Bool)

(assert (=> b!7381553 m!8031256))

(assert (=> b!7381553 m!8031248))

(declare-fun m!8031258 () Bool)

(assert (=> b!7381553 m!8031258))

(declare-fun m!8031260 () Bool)

(assert (=> b!7381553 m!8031260))

(declare-fun m!8031262 () Bool)

(assert (=> b!7381553 m!8031262))

(push 1)

(assert (not b!7381563))

(assert (not b!7381562))

(assert tp_is_empty!48901)

(assert (not b!7381555))

(assert (not b!7381560))

(assert (not b!7381550))

(assert (not b!7381564))

(assert (not b!7381556))

(assert (not b!7381553))

(assert (not start!720090))

(assert (not b!7381551))

(assert (not b!7381552))

(assert (not b!7381554))

(assert (not b!7381558))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun b!7381646 () Bool)

(declare-fun e!4418559 () Bool)

(declare-fun call!679194 () Bool)

(assert (=> b!7381646 (= e!4418559 call!679194)))

(declare-fun b!7381647 () Bool)

(declare-fun e!4418557 () Bool)

(declare-fun e!4418555 () Bool)

(assert (=> b!7381647 (= e!4418557 e!4418555)))

(declare-fun res!2977254 () Bool)

(assert (=> b!7381647 (=> (not res!2977254) (not e!4418555))))

(declare-fun call!679195 () Bool)

(assert (=> b!7381647 (= res!2977254 call!679195)))

(declare-fun b!7381648 () Bool)

(declare-fun call!679196 () Bool)

(assert (=> b!7381648 (= e!4418555 call!679196)))

(declare-fun d!2285669 () Bool)

(declare-fun res!2977251 () Bool)

(declare-fun e!4418556 () Bool)

(assert (=> d!2285669 (=> res!2977251 e!4418556)))

(assert (=> d!2285669 (= res!2977251 (is-ElementMatch!19328 lt!2616996))))

(assert (=> d!2285669 (= (validRegex!9924 lt!2616996) e!4418556)))

(declare-fun b!7381649 () Bool)

(declare-fun res!2977252 () Bool)

(assert (=> b!7381649 (=> res!2977252 e!4418557)))

(assert (=> b!7381649 (= res!2977252 (not (is-Concat!28173 lt!2616996)))))

(declare-fun e!4418560 () Bool)

(assert (=> b!7381649 (= e!4418560 e!4418557)))

(declare-fun bm!679189 () Bool)

(declare-fun c!1372027 () Bool)

(declare-fun c!1372026 () Bool)

(assert (=> bm!679189 (= call!679194 (validRegex!9924 (ite c!1372027 (reg!19657 lt!2616996) (ite c!1372026 (regOne!39169 lt!2616996) (regTwo!39168 lt!2616996)))))))

(declare-fun bm!679190 () Bool)

(assert (=> bm!679190 (= call!679195 (validRegex!9924 (ite c!1372026 (regTwo!39169 lt!2616996) (regOne!39168 lt!2616996))))))

(declare-fun b!7381650 () Bool)

(declare-fun e!4418561 () Bool)

(assert (=> b!7381650 (= e!4418561 e!4418559)))

(declare-fun res!2977255 () Bool)

(assert (=> b!7381650 (= res!2977255 (not (nullable!8402 (reg!19657 lt!2616996))))))

(assert (=> b!7381650 (=> (not res!2977255) (not e!4418559))))

(declare-fun b!7381651 () Bool)

(declare-fun res!2977253 () Bool)

(declare-fun e!4418558 () Bool)

(assert (=> b!7381651 (=> (not res!2977253) (not e!4418558))))

(assert (=> b!7381651 (= res!2977253 call!679196)))

(assert (=> b!7381651 (= e!4418560 e!4418558)))

(declare-fun b!7381652 () Bool)

(assert (=> b!7381652 (= e!4418558 call!679195)))

(declare-fun b!7381653 () Bool)

(assert (=> b!7381653 (= e!4418561 e!4418560)))

(assert (=> b!7381653 (= c!1372026 (is-Union!19328 lt!2616996))))

(declare-fun bm!679191 () Bool)

(assert (=> bm!679191 (= call!679196 call!679194)))

(declare-fun b!7381654 () Bool)

(assert (=> b!7381654 (= e!4418556 e!4418561)))

(assert (=> b!7381654 (= c!1372027 (is-Star!19328 lt!2616996))))

(assert (= (and d!2285669 (not res!2977251)) b!7381654))

(assert (= (and b!7381654 c!1372027) b!7381650))

(assert (= (and b!7381654 (not c!1372027)) b!7381653))

(assert (= (and b!7381650 res!2977255) b!7381646))

(assert (= (and b!7381653 c!1372026) b!7381651))

(assert (= (and b!7381653 (not c!1372026)) b!7381649))

(assert (= (and b!7381651 res!2977253) b!7381652))

(assert (= (and b!7381649 (not res!2977252)) b!7381647))

(assert (= (and b!7381647 res!2977254) b!7381648))

(assert (= (or b!7381651 b!7381648) bm!679191))

(assert (= (or b!7381652 b!7381647) bm!679190))

(assert (= (or b!7381646 bm!679191) bm!679189))

(declare-fun m!8031306 () Bool)

(assert (=> bm!679189 m!8031306))

(declare-fun m!8031308 () Bool)

(assert (=> bm!679190 m!8031308))

(declare-fun m!8031310 () Bool)

(assert (=> b!7381650 m!8031310))

(assert (=> b!7381564 d!2285669))

(declare-fun bs!1921610 () Bool)

(declare-fun d!2285671 () Bool)

(assert (= bs!1921610 (and d!2285671 b!7381554)))

(declare-fun lambda!458580 () Int)

(assert (=> bs!1921610 (= lambda!458580 lambda!458566)))

(assert (=> d!2285671 (set.member (Context!16537 (++!17144 (exprs!8768 cWitness!61) (exprs!8768 ct2!378))) (derivationStepZipperDown!3154 (reg!19657 r1!2370) (Context!16537 (++!17144 (exprs!8768 lt!2616992) (exprs!8768 ct2!378))) c!10362))))

(declare-fun lt!2617038 () Unit!165605)

(assert (=> d!2285671 (= lt!2617038 (lemmaConcatPreservesForall!2001 (exprs!8768 lt!2616992) (exprs!8768 ct2!378) lambda!458580))))

(declare-fun lt!2617037 () Unit!165605)

(assert (=> d!2285671 (= lt!2617037 (lemmaConcatPreservesForall!2001 (exprs!8768 cWitness!61) (exprs!8768 ct2!378) lambda!458580))))

(declare-fun lt!2617036 () Unit!165605)

(declare-fun choose!57346 (Regex!19328 Context!16536 Context!16536 Context!16536 C!38930) Unit!165605)

(assert (=> d!2285671 (= lt!2617036 (choose!57346 (reg!19657 r1!2370) lt!2616992 ct2!378 cWitness!61 c!10362))))

(assert (=> d!2285671 (validRegex!9924 (reg!19657 r1!2370))))

(assert (=> d!2285671 (= (lemmaDerivContainsCtxtThenConcatDerivContainsConcatCtxDerivDown!153 (reg!19657 r1!2370) lt!2616992 ct2!378 cWitness!61 c!10362) lt!2617036)))

(declare-fun bs!1921611 () Bool)

(assert (= bs!1921611 d!2285671))

(declare-fun m!8031324 () Bool)

(assert (=> bs!1921611 m!8031324))

(declare-fun m!8031326 () Bool)

(assert (=> bs!1921611 m!8031326))

(assert (=> bs!1921611 m!8031254))

(declare-fun m!8031328 () Bool)

(assert (=> bs!1921611 m!8031328))

(declare-fun m!8031330 () Bool)

(assert (=> bs!1921611 m!8031330))

(declare-fun m!8031332 () Bool)

(assert (=> bs!1921611 m!8031332))

(declare-fun m!8031334 () Bool)

(assert (=> bs!1921611 m!8031334))

(declare-fun m!8031336 () Bool)

(assert (=> bs!1921611 m!8031336))

(assert (=> b!7381553 d!2285671))

(declare-fun b!7381683 () Bool)

(declare-fun res!2977271 () Bool)

(declare-fun e!4418581 () Bool)

(assert (=> b!7381683 (=> (not res!2977271) (not e!4418581))))

(declare-fun lt!2617041 () List!71824)

(declare-fun size!42165 (List!71824) Int)

(assert (=> b!7381683 (= res!2977271 (= (size!42165 lt!2617041) (+ (size!42165 (exprs!8768 cWitness!61)) (size!42165 (exprs!8768 ct2!378)))))))

(declare-fun b!7381682 () Bool)

(declare-fun e!4418580 () List!71824)

(assert (=> b!7381682 (= e!4418580 (Cons!71700 (h!78148 (exprs!8768 cWitness!61)) (++!17144 (t!386317 (exprs!8768 cWitness!61)) (exprs!8768 ct2!378))))))

(declare-fun b!7381681 () Bool)

(assert (=> b!7381681 (= e!4418580 (exprs!8768 ct2!378))))

(declare-fun d!2285677 () Bool)

(assert (=> d!2285677 e!4418581))

(declare-fun res!2977270 () Bool)

(assert (=> d!2285677 (=> (not res!2977270) (not e!4418581))))

(declare-fun content!15187 (List!71824) (Set Regex!19328))

(assert (=> d!2285677 (= res!2977270 (= (content!15187 lt!2617041) (set.union (content!15187 (exprs!8768 cWitness!61)) (content!15187 (exprs!8768 ct2!378)))))))

(assert (=> d!2285677 (= lt!2617041 e!4418580)))

(declare-fun c!1372035 () Bool)

(assert (=> d!2285677 (= c!1372035 (is-Nil!71700 (exprs!8768 cWitness!61)))))

(assert (=> d!2285677 (= (++!17144 (exprs!8768 cWitness!61) (exprs!8768 ct2!378)) lt!2617041)))

(declare-fun b!7381684 () Bool)

(assert (=> b!7381684 (= e!4418581 (or (not (= (exprs!8768 ct2!378) Nil!71700)) (= lt!2617041 (exprs!8768 cWitness!61))))))

(assert (= (and d!2285677 c!1372035) b!7381681))

(assert (= (and d!2285677 (not c!1372035)) b!7381682))

(assert (= (and d!2285677 res!2977270) b!7381683))

(assert (= (and b!7381683 res!2977271) b!7381684))

(declare-fun m!8031344 () Bool)

(assert (=> b!7381683 m!8031344))

(declare-fun m!8031346 () Bool)

(assert (=> b!7381683 m!8031346))

(declare-fun m!8031348 () Bool)

(assert (=> b!7381683 m!8031348))

(declare-fun m!8031350 () Bool)

(assert (=> b!7381682 m!8031350))

(declare-fun m!8031352 () Bool)

(assert (=> d!2285677 m!8031352))

(declare-fun m!8031354 () Bool)

(assert (=> d!2285677 m!8031354))

(declare-fun m!8031356 () Bool)

(assert (=> d!2285677 m!8031356))

(assert (=> b!7381553 d!2285677))

(declare-fun b!7381729 () Bool)

(declare-fun e!4418607 () (Set Context!16536))

(declare-fun call!679220 () (Set Context!16536))

(declare-fun call!679217 () (Set Context!16536))

(assert (=> b!7381729 (= e!4418607 (set.union call!679220 call!679217))))

(declare-fun b!7381730 () Bool)

(declare-fun c!1372060 () Bool)

(assert (=> b!7381730 (= c!1372060 (is-Star!19328 (reg!19657 r1!2370)))))

(declare-fun e!4418611 () (Set Context!16536))

(declare-fun e!4418606 () (Set Context!16536))

(assert (=> b!7381730 (= e!4418611 e!4418606)))

(declare-fun b!7381731 () Bool)

(declare-fun call!679219 () (Set Context!16536))

(assert (=> b!7381731 (= e!4418611 call!679219)))

(declare-fun b!7381732 () Bool)

(declare-fun c!1372059 () Bool)

(declare-fun e!4418609 () Bool)

(assert (=> b!7381732 (= c!1372059 e!4418609)))

(declare-fun res!2977276 () Bool)

(assert (=> b!7381732 (=> (not res!2977276) (not e!4418609))))

(assert (=> b!7381732 (= res!2977276 (is-Concat!28173 (reg!19657 r1!2370)))))

(declare-fun e!4418610 () (Set Context!16536))

(assert (=> b!7381732 (= e!4418610 e!4418607)))

(declare-fun b!7381733 () Bool)

(declare-fun e!4418608 () (Set Context!16536))

(assert (=> b!7381733 (= e!4418608 (set.insert (Context!16537 (++!17144 lt!2616995 (exprs!8768 ct2!378))) (as set.empty (Set Context!16536))))))

(declare-fun b!7381734 () Bool)

(assert (=> b!7381734 (= e!4418606 call!679219)))

(declare-fun call!679221 () List!71824)

(declare-fun bm!679210 () Bool)

(declare-fun c!1372058 () Bool)

(assert (=> bm!679210 (= call!679221 ($colon$colon!3306 (exprs!8768 (Context!16537 (++!17144 lt!2616995 (exprs!8768 ct2!378)))) (ite (or c!1372059 c!1372058) (regTwo!39168 (reg!19657 r1!2370)) (reg!19657 r1!2370))))))

(declare-fun c!1372057 () Bool)

(declare-fun bm!679211 () Bool)

(declare-fun call!679222 () List!71824)

(declare-fun call!679218 () (Set Context!16536))

(assert (=> bm!679211 (= call!679218 (derivationStepZipperDown!3154 (ite c!1372057 (regTwo!39169 (reg!19657 r1!2370)) (ite c!1372059 (regTwo!39168 (reg!19657 r1!2370)) (ite c!1372058 (regOne!39168 (reg!19657 r1!2370)) (reg!19657 (reg!19657 r1!2370))))) (ite (or c!1372057 c!1372059) (Context!16537 (++!17144 lt!2616995 (exprs!8768 ct2!378))) (Context!16537 call!679222)) c!10362))))

(declare-fun b!7381735 () Bool)

(assert (=> b!7381735 (= e!4418606 (as set.empty (Set Context!16536)))))

(declare-fun bm!679212 () Bool)

(assert (=> bm!679212 (= call!679220 (derivationStepZipperDown!3154 (ite c!1372057 (regOne!39169 (reg!19657 r1!2370)) (regOne!39168 (reg!19657 r1!2370))) (ite c!1372057 (Context!16537 (++!17144 lt!2616995 (exprs!8768 ct2!378))) (Context!16537 call!679221)) c!10362))))

(declare-fun d!2285685 () Bool)

(declare-fun c!1372056 () Bool)

(assert (=> d!2285685 (= c!1372056 (and (is-ElementMatch!19328 (reg!19657 r1!2370)) (= (c!1372016 (reg!19657 r1!2370)) c!10362)))))

(assert (=> d!2285685 (= (derivationStepZipperDown!3154 (reg!19657 r1!2370) (Context!16537 (++!17144 lt!2616995 (exprs!8768 ct2!378))) c!10362) e!4418608)))

(declare-fun bm!679213 () Bool)

(assert (=> bm!679213 (= call!679219 call!679217)))

(declare-fun b!7381736 () Bool)

(assert (=> b!7381736 (= e!4418609 (nullable!8402 (regOne!39168 (reg!19657 r1!2370))))))

(declare-fun bm!679214 () Bool)

(assert (=> bm!679214 (= call!679222 call!679221)))

(declare-fun b!7381737 () Bool)

(assert (=> b!7381737 (= e!4418610 (set.union call!679220 call!679218))))

(declare-fun b!7381738 () Bool)

(assert (=> b!7381738 (= e!4418607 e!4418611)))

(assert (=> b!7381738 (= c!1372058 (is-Concat!28173 (reg!19657 r1!2370)))))

(declare-fun b!7381739 () Bool)

(assert (=> b!7381739 (= e!4418608 e!4418610)))

(assert (=> b!7381739 (= c!1372057 (is-Union!19328 (reg!19657 r1!2370)))))

(declare-fun bm!679215 () Bool)

(assert (=> bm!679215 (= call!679217 call!679218)))

(assert (= (and d!2285685 c!1372056) b!7381733))

(assert (= (and d!2285685 (not c!1372056)) b!7381739))

(assert (= (and b!7381739 c!1372057) b!7381737))

(assert (= (and b!7381739 (not c!1372057)) b!7381732))

(assert (= (and b!7381732 res!2977276) b!7381736))

(assert (= (and b!7381732 c!1372059) b!7381729))

(assert (= (and b!7381732 (not c!1372059)) b!7381738))

(assert (= (and b!7381738 c!1372058) b!7381731))

(assert (= (and b!7381738 (not c!1372058)) b!7381730))

(assert (= (and b!7381730 c!1372060) b!7381734))

(assert (= (and b!7381730 (not c!1372060)) b!7381735))

(assert (= (or b!7381731 b!7381734) bm!679214))

(assert (= (or b!7381731 b!7381734) bm!679213))

(assert (= (or b!7381729 bm!679213) bm!679215))

(assert (= (or b!7381729 bm!679214) bm!679210))

(assert (= (or b!7381737 bm!679215) bm!679211))

(assert (= (or b!7381737 b!7381729) bm!679212))

(declare-fun m!8031358 () Bool)

(assert (=> b!7381733 m!8031358))

(declare-fun m!8031360 () Bool)

(assert (=> b!7381736 m!8031360))

(declare-fun m!8031362 () Bool)

(assert (=> bm!679212 m!8031362))

(declare-fun m!8031364 () Bool)

(assert (=> bm!679210 m!8031364))

(declare-fun m!8031366 () Bool)

(assert (=> bm!679211 m!8031366))

(assert (=> b!7381553 d!2285685))

(declare-fun d!2285687 () Bool)

(declare-fun forall!18114 (List!71824 Int) Bool)

(assert (=> d!2285687 (forall!18114 (++!17144 (exprs!8768 cWitness!61) (exprs!8768 ct2!378)) lambda!458566)))

(declare-fun lt!2617044 () Unit!165605)

(declare-fun choose!57347 (List!71824 List!71824 Int) Unit!165605)

(assert (=> d!2285687 (= lt!2617044 (choose!57347 (exprs!8768 cWitness!61) (exprs!8768 ct2!378) lambda!458566))))

(assert (=> d!2285687 (forall!18114 (exprs!8768 cWitness!61) lambda!458566)))

(assert (=> d!2285687 (= (lemmaConcatPreservesForall!2001 (exprs!8768 cWitness!61) (exprs!8768 ct2!378) lambda!458566) lt!2617044)))

(declare-fun bs!1921621 () Bool)

(assert (= bs!1921621 d!2285687))

(assert (=> bs!1921621 m!8031254))

(assert (=> bs!1921621 m!8031254))

(declare-fun m!8031368 () Bool)

(assert (=> bs!1921621 m!8031368))

(declare-fun m!8031370 () Bool)

(assert (=> bs!1921621 m!8031370))

(declare-fun m!8031372 () Bool)

(assert (=> bs!1921621 m!8031372))

(assert (=> b!7381553 d!2285687))

(declare-fun d!2285689 () Bool)

(assert (=> d!2285689 (forall!18114 (++!17144 lt!2616995 (exprs!8768 ct2!378)) lambda!458566)))

(declare-fun lt!2617045 () Unit!165605)

(assert (=> d!2285689 (= lt!2617045 (choose!57347 lt!2616995 (exprs!8768 ct2!378) lambda!458566))))

(assert (=> d!2285689 (forall!18114 lt!2616995 lambda!458566)))

(assert (=> d!2285689 (= (lemmaConcatPreservesForall!2001 lt!2616995 (exprs!8768 ct2!378) lambda!458566) lt!2617045)))

(declare-fun bs!1921622 () Bool)

(assert (= bs!1921622 d!2285689))

(assert (=> bs!1921622 m!8031260))

(assert (=> bs!1921622 m!8031260))

(declare-fun m!8031374 () Bool)

(assert (=> bs!1921622 m!8031374))

(declare-fun m!8031376 () Bool)

(assert (=> bs!1921622 m!8031376))

(declare-fun m!8031378 () Bool)

(assert (=> bs!1921622 m!8031378))

(assert (=> b!7381553 d!2285689))

(declare-fun b!7381742 () Bool)

(declare-fun res!2977278 () Bool)

(declare-fun e!4418613 () Bool)

(assert (=> b!7381742 (=> (not res!2977278) (not e!4418613))))

(declare-fun lt!2617046 () List!71824)

(assert (=> b!7381742 (= res!2977278 (= (size!42165 lt!2617046) (+ (size!42165 lt!2616995) (size!42165 (exprs!8768 ct2!378)))))))

(declare-fun b!7381741 () Bool)

(declare-fun e!4418612 () List!71824)

(assert (=> b!7381741 (= e!4418612 (Cons!71700 (h!78148 lt!2616995) (++!17144 (t!386317 lt!2616995) (exprs!8768 ct2!378))))))

(declare-fun b!7381740 () Bool)

(assert (=> b!7381740 (= e!4418612 (exprs!8768 ct2!378))))

(declare-fun d!2285691 () Bool)

(assert (=> d!2285691 e!4418613))

(declare-fun res!2977277 () Bool)

(assert (=> d!2285691 (=> (not res!2977277) (not e!4418613))))

(assert (=> d!2285691 (= res!2977277 (= (content!15187 lt!2617046) (set.union (content!15187 lt!2616995) (content!15187 (exprs!8768 ct2!378)))))))

(assert (=> d!2285691 (= lt!2617046 e!4418612)))

(declare-fun c!1372061 () Bool)

(assert (=> d!2285691 (= c!1372061 (is-Nil!71700 lt!2616995))))

(assert (=> d!2285691 (= (++!17144 lt!2616995 (exprs!8768 ct2!378)) lt!2617046)))

(declare-fun b!7381743 () Bool)

(assert (=> b!7381743 (= e!4418613 (or (not (= (exprs!8768 ct2!378) Nil!71700)) (= lt!2617046 lt!2616995)))))

(assert (= (and d!2285691 c!1372061) b!7381740))

(assert (= (and d!2285691 (not c!1372061)) b!7381741))

(assert (= (and d!2285691 res!2977277) b!7381742))

(assert (= (and b!7381742 res!2977278) b!7381743))

(declare-fun m!8031380 () Bool)

(assert (=> b!7381742 m!8031380))

(declare-fun m!8031382 () Bool)

(assert (=> b!7381742 m!8031382))

(assert (=> b!7381742 m!8031348))

(declare-fun m!8031384 () Bool)

(assert (=> b!7381741 m!8031384))

(declare-fun m!8031386 () Bool)

(assert (=> d!2285691 m!8031386))

(declare-fun m!8031388 () Bool)

(assert (=> d!2285691 m!8031388))

(assert (=> d!2285691 m!8031356))

(assert (=> b!7381553 d!2285691))

(declare-fun bs!1921623 () Bool)

(declare-fun d!2285693 () Bool)

(assert (= bs!1921623 (and d!2285693 b!7381554)))

(declare-fun lambda!458588 () Int)

(assert (=> bs!1921623 (= lambda!458588 lambda!458566)))

(declare-fun bs!1921624 () Bool)

(assert (= bs!1921624 (and d!2285693 d!2285671)))

(assert (=> bs!1921624 (= lambda!458588 lambda!458580)))

(assert (=> d!2285693 (= (inv!91661 lt!2616991) (forall!18114 (exprs!8768 lt!2616991) lambda!458588))))

(declare-fun bs!1921625 () Bool)

(assert (= bs!1921625 d!2285693))

(declare-fun m!8031390 () Bool)

(assert (=> bs!1921625 m!8031390))

(assert (=> b!7381553 d!2285693))

(declare-fun b!7381744 () Bool)

(declare-fun e!4418615 () (Set Context!16536))

(declare-fun call!679236 () (Set Context!16536))

(declare-fun call!679233 () (Set Context!16536))

(assert (=> b!7381744 (= e!4418615 (set.union call!679236 call!679233))))

(declare-fun b!7381745 () Bool)

(declare-fun c!1372066 () Bool)

(assert (=> b!7381745 (= c!1372066 (is-Star!19328 r1!2370))))

(declare-fun e!4418619 () (Set Context!16536))

(declare-fun e!4418614 () (Set Context!16536))

(assert (=> b!7381745 (= e!4418619 e!4418614)))

(declare-fun b!7381746 () Bool)

(declare-fun call!679235 () (Set Context!16536))

(assert (=> b!7381746 (= e!4418619 call!679235)))

(declare-fun b!7381747 () Bool)

(declare-fun c!1372065 () Bool)

(declare-fun e!4418617 () Bool)

(assert (=> b!7381747 (= c!1372065 e!4418617)))

(declare-fun res!2977279 () Bool)

(assert (=> b!7381747 (=> (not res!2977279) (not e!4418617))))

(assert (=> b!7381747 (= res!2977279 (is-Concat!28173 r1!2370))))

(declare-fun e!4418618 () (Set Context!16536))

(assert (=> b!7381747 (= e!4418618 e!4418615)))

(declare-fun b!7381748 () Bool)

(declare-fun e!4418616 () (Set Context!16536))

(assert (=> b!7381748 (= e!4418616 (set.insert (Context!16537 (++!17144 (exprs!8768 ct1!282) (exprs!8768 ct2!378))) (as set.empty (Set Context!16536))))))

(declare-fun b!7381749 () Bool)

(assert (=> b!7381749 (= e!4418614 call!679235)))

(declare-fun c!1372064 () Bool)

(declare-fun bm!679228 () Bool)

(declare-fun call!679237 () List!71824)

(assert (=> bm!679228 (= call!679237 ($colon$colon!3306 (exprs!8768 (Context!16537 (++!17144 (exprs!8768 ct1!282) (exprs!8768 ct2!378)))) (ite (or c!1372065 c!1372064) (regTwo!39168 r1!2370) r1!2370)))))

(declare-fun bm!679229 () Bool)

(declare-fun c!1372063 () Bool)

(declare-fun call!679238 () List!71824)

(declare-fun call!679234 () (Set Context!16536))

(assert (=> bm!679229 (= call!679234 (derivationStepZipperDown!3154 (ite c!1372063 (regTwo!39169 r1!2370) (ite c!1372065 (regTwo!39168 r1!2370) (ite c!1372064 (regOne!39168 r1!2370) (reg!19657 r1!2370)))) (ite (or c!1372063 c!1372065) (Context!16537 (++!17144 (exprs!8768 ct1!282) (exprs!8768 ct2!378))) (Context!16537 call!679238)) c!10362))))

(declare-fun b!7381750 () Bool)

(assert (=> b!7381750 (= e!4418614 (as set.empty (Set Context!16536)))))

(declare-fun bm!679230 () Bool)

(assert (=> bm!679230 (= call!679236 (derivationStepZipperDown!3154 (ite c!1372063 (regOne!39169 r1!2370) (regOne!39168 r1!2370)) (ite c!1372063 (Context!16537 (++!17144 (exprs!8768 ct1!282) (exprs!8768 ct2!378))) (Context!16537 call!679237)) c!10362))))

(declare-fun d!2285695 () Bool)

(declare-fun c!1372062 () Bool)

(assert (=> d!2285695 (= c!1372062 (and (is-ElementMatch!19328 r1!2370) (= (c!1372016 r1!2370) c!10362)))))

(assert (=> d!2285695 (= (derivationStepZipperDown!3154 r1!2370 (Context!16537 (++!17144 (exprs!8768 ct1!282) (exprs!8768 ct2!378))) c!10362) e!4418616)))

(declare-fun bm!679231 () Bool)

(assert (=> bm!679231 (= call!679235 call!679233)))

(declare-fun b!7381751 () Bool)

(assert (=> b!7381751 (= e!4418617 (nullable!8402 (regOne!39168 r1!2370)))))

(declare-fun bm!679232 () Bool)

(assert (=> bm!679232 (= call!679238 call!679237)))

(declare-fun b!7381752 () Bool)

(assert (=> b!7381752 (= e!4418618 (set.union call!679236 call!679234))))

(declare-fun b!7381753 () Bool)

(assert (=> b!7381753 (= e!4418615 e!4418619)))

(assert (=> b!7381753 (= c!1372064 (is-Concat!28173 r1!2370))))

(declare-fun b!7381754 () Bool)

(assert (=> b!7381754 (= e!4418616 e!4418618)))

(assert (=> b!7381754 (= c!1372063 (is-Union!19328 r1!2370))))

(declare-fun bm!679233 () Bool)

(assert (=> bm!679233 (= call!679233 call!679234)))

(assert (= (and d!2285695 c!1372062) b!7381748))

(assert (= (and d!2285695 (not c!1372062)) b!7381754))

(assert (= (and b!7381754 c!1372063) b!7381752))

(assert (= (and b!7381754 (not c!1372063)) b!7381747))

(assert (= (and b!7381747 res!2977279) b!7381751))

(assert (= (and b!7381747 c!1372065) b!7381744))

(assert (= (and b!7381747 (not c!1372065)) b!7381753))

(assert (= (and b!7381753 c!1372064) b!7381746))

(assert (= (and b!7381753 (not c!1372064)) b!7381745))

(assert (= (and b!7381745 c!1372066) b!7381749))

(assert (= (and b!7381745 (not c!1372066)) b!7381750))

(assert (= (or b!7381746 b!7381749) bm!679232))

(assert (= (or b!7381746 b!7381749) bm!679231))

(assert (= (or b!7381744 bm!679231) bm!679233))

(assert (= (or b!7381744 bm!679232) bm!679228))

(assert (= (or b!7381752 bm!679233) bm!679229))

(assert (= (or b!7381752 b!7381744) bm!679230))

(declare-fun m!8031392 () Bool)

(assert (=> b!7381748 m!8031392))

(assert (=> b!7381751 m!8031234))

(declare-fun m!8031394 () Bool)

(assert (=> bm!679230 m!8031394))

(declare-fun m!8031396 () Bool)

(assert (=> bm!679228 m!8031396))

(declare-fun m!8031398 () Bool)

(assert (=> bm!679229 m!8031398))

(assert (=> b!7381554 d!2285695))

(declare-fun b!7381757 () Bool)

(declare-fun res!2977281 () Bool)

(declare-fun e!4418621 () Bool)

(assert (=> b!7381757 (=> (not res!2977281) (not e!4418621))))

(declare-fun lt!2617047 () List!71824)

(assert (=> b!7381757 (= res!2977281 (= (size!42165 lt!2617047) (+ (size!42165 (exprs!8768 ct1!282)) (size!42165 (exprs!8768 ct2!378)))))))

(declare-fun b!7381756 () Bool)

(declare-fun e!4418620 () List!71824)

(assert (=> b!7381756 (= e!4418620 (Cons!71700 (h!78148 (exprs!8768 ct1!282)) (++!17144 (t!386317 (exprs!8768 ct1!282)) (exprs!8768 ct2!378))))))

(declare-fun b!7381755 () Bool)

(assert (=> b!7381755 (= e!4418620 (exprs!8768 ct2!378))))

(declare-fun d!2285697 () Bool)

(assert (=> d!2285697 e!4418621))

(declare-fun res!2977280 () Bool)

(assert (=> d!2285697 (=> (not res!2977280) (not e!4418621))))

(assert (=> d!2285697 (= res!2977280 (= (content!15187 lt!2617047) (set.union (content!15187 (exprs!8768 ct1!282)) (content!15187 (exprs!8768 ct2!378)))))))

(assert (=> d!2285697 (= lt!2617047 e!4418620)))

(declare-fun c!1372067 () Bool)

(assert (=> d!2285697 (= c!1372067 (is-Nil!71700 (exprs!8768 ct1!282)))))

(assert (=> d!2285697 (= (++!17144 (exprs!8768 ct1!282) (exprs!8768 ct2!378)) lt!2617047)))

(declare-fun b!7381758 () Bool)

(assert (=> b!7381758 (= e!4418621 (or (not (= (exprs!8768 ct2!378) Nil!71700)) (= lt!2617047 (exprs!8768 ct1!282))))))

(assert (= (and d!2285697 c!1372067) b!7381755))

(assert (= (and d!2285697 (not c!1372067)) b!7381756))

(assert (= (and d!2285697 res!2977280) b!7381757))

(assert (= (and b!7381757 res!2977281) b!7381758))

(declare-fun m!8031400 () Bool)

(assert (=> b!7381757 m!8031400))

(declare-fun m!8031402 () Bool)

(assert (=> b!7381757 m!8031402))

(assert (=> b!7381757 m!8031348))

(declare-fun m!8031404 () Bool)

(assert (=> b!7381756 m!8031404))

(declare-fun m!8031406 () Bool)

(assert (=> d!2285697 m!8031406))

(declare-fun m!8031408 () Bool)

(assert (=> d!2285697 m!8031408))

(assert (=> d!2285697 m!8031356))

(assert (=> b!7381554 d!2285697))

(declare-fun d!2285699 () Bool)

(assert (=> d!2285699 (forall!18114 (++!17144 (exprs!8768 ct1!282) (exprs!8768 ct2!378)) lambda!458566)))

(declare-fun lt!2617048 () Unit!165605)

(assert (=> d!2285699 (= lt!2617048 (choose!57347 (exprs!8768 ct1!282) (exprs!8768 ct2!378) lambda!458566))))

(assert (=> d!2285699 (forall!18114 (exprs!8768 ct1!282) lambda!458566)))

(assert (=> d!2285699 (= (lemmaConcatPreservesForall!2001 (exprs!8768 ct1!282) (exprs!8768 ct2!378) lambda!458566) lt!2617048)))

(declare-fun bs!1921626 () Bool)

(assert (= bs!1921626 d!2285699))

(assert (=> bs!1921626 m!8031226))

(assert (=> bs!1921626 m!8031226))

(declare-fun m!8031410 () Bool)

(assert (=> bs!1921626 m!8031410))

(declare-fun m!8031412 () Bool)

(assert (=> bs!1921626 m!8031412))

(declare-fun m!8031414 () Bool)

(assert (=> bs!1921626 m!8031414))

(assert (=> b!7381554 d!2285699))

(declare-fun b!7381759 () Bool)

(declare-fun e!4418623 () (Set Context!16536))

(declare-fun call!679242 () (Set Context!16536))

(declare-fun call!679239 () (Set Context!16536))

(assert (=> b!7381759 (= e!4418623 (set.union call!679242 call!679239))))

(declare-fun b!7381760 () Bool)

(declare-fun c!1372072 () Bool)

(assert (=> b!7381760 (= c!1372072 (is-Star!19328 r1!2370))))

(declare-fun e!4418627 () (Set Context!16536))

(declare-fun e!4418622 () (Set Context!16536))

(assert (=> b!7381760 (= e!4418627 e!4418622)))

(declare-fun b!7381761 () Bool)

(declare-fun call!679241 () (Set Context!16536))

(assert (=> b!7381761 (= e!4418627 call!679241)))

(declare-fun b!7381762 () Bool)

(declare-fun c!1372071 () Bool)

(declare-fun e!4418625 () Bool)

(assert (=> b!7381762 (= c!1372071 e!4418625)))

(declare-fun res!2977282 () Bool)

(assert (=> b!7381762 (=> (not res!2977282) (not e!4418625))))

(assert (=> b!7381762 (= res!2977282 (is-Concat!28173 r1!2370))))

(declare-fun e!4418626 () (Set Context!16536))

(assert (=> b!7381762 (= e!4418626 e!4418623)))

(declare-fun b!7381763 () Bool)

(declare-fun e!4418624 () (Set Context!16536))

(assert (=> b!7381763 (= e!4418624 (set.insert ct1!282 (as set.empty (Set Context!16536))))))

(declare-fun b!7381764 () Bool)

(assert (=> b!7381764 (= e!4418622 call!679241)))

(declare-fun bm!679234 () Bool)

(declare-fun call!679243 () List!71824)

(declare-fun c!1372070 () Bool)

(assert (=> bm!679234 (= call!679243 ($colon$colon!3306 (exprs!8768 ct1!282) (ite (or c!1372071 c!1372070) (regTwo!39168 r1!2370) r1!2370)))))

(declare-fun call!679244 () List!71824)

(declare-fun call!679240 () (Set Context!16536))

(declare-fun bm!679235 () Bool)

(declare-fun c!1372069 () Bool)

(assert (=> bm!679235 (= call!679240 (derivationStepZipperDown!3154 (ite c!1372069 (regTwo!39169 r1!2370) (ite c!1372071 (regTwo!39168 r1!2370) (ite c!1372070 (regOne!39168 r1!2370) (reg!19657 r1!2370)))) (ite (or c!1372069 c!1372071) ct1!282 (Context!16537 call!679244)) c!10362))))

(declare-fun b!7381765 () Bool)

(assert (=> b!7381765 (= e!4418622 (as set.empty (Set Context!16536)))))

(declare-fun bm!679236 () Bool)

(assert (=> bm!679236 (= call!679242 (derivationStepZipperDown!3154 (ite c!1372069 (regOne!39169 r1!2370) (regOne!39168 r1!2370)) (ite c!1372069 ct1!282 (Context!16537 call!679243)) c!10362))))

(declare-fun d!2285701 () Bool)

(declare-fun c!1372068 () Bool)

(assert (=> d!2285701 (= c!1372068 (and (is-ElementMatch!19328 r1!2370) (= (c!1372016 r1!2370) c!10362)))))

(assert (=> d!2285701 (= (derivationStepZipperDown!3154 r1!2370 ct1!282 c!10362) e!4418624)))

(declare-fun bm!679237 () Bool)

(assert (=> bm!679237 (= call!679241 call!679239)))

(declare-fun b!7381766 () Bool)

(assert (=> b!7381766 (= e!4418625 (nullable!8402 (regOne!39168 r1!2370)))))

(declare-fun bm!679238 () Bool)

(assert (=> bm!679238 (= call!679244 call!679243)))

(declare-fun b!7381767 () Bool)

(assert (=> b!7381767 (= e!4418626 (set.union call!679242 call!679240))))

(declare-fun b!7381768 () Bool)

(assert (=> b!7381768 (= e!4418623 e!4418627)))

(assert (=> b!7381768 (= c!1372070 (is-Concat!28173 r1!2370))))

(declare-fun b!7381769 () Bool)

(assert (=> b!7381769 (= e!4418624 e!4418626)))

(assert (=> b!7381769 (= c!1372069 (is-Union!19328 r1!2370))))

(declare-fun bm!679239 () Bool)

(assert (=> bm!679239 (= call!679239 call!679240)))

(assert (= (and d!2285701 c!1372068) b!7381763))

(assert (= (and d!2285701 (not c!1372068)) b!7381769))

(assert (= (and b!7381769 c!1372069) b!7381767))

(assert (= (and b!7381769 (not c!1372069)) b!7381762))

(assert (= (and b!7381762 res!2977282) b!7381766))

(assert (= (and b!7381762 c!1372071) b!7381759))

(assert (= (and b!7381762 (not c!1372071)) b!7381768))

(assert (= (and b!7381768 c!1372070) b!7381761))

(assert (= (and b!7381768 (not c!1372070)) b!7381760))

(assert (= (and b!7381760 c!1372072) b!7381764))

(assert (= (and b!7381760 (not c!1372072)) b!7381765))

(assert (= (or b!7381761 b!7381764) bm!679238))

(assert (= (or b!7381761 b!7381764) bm!679237))

(assert (= (or b!7381759 bm!679237) bm!679239))

(assert (= (or b!7381759 bm!679238) bm!679234))

(assert (= (or b!7381767 bm!679239) bm!679235))

(assert (= (or b!7381767 b!7381759) bm!679236))

(declare-fun m!8031416 () Bool)

(assert (=> b!7381763 m!8031416))

(assert (=> b!7381766 m!8031234))

(declare-fun m!8031418 () Bool)

(assert (=> bm!679236 m!8031418))

(declare-fun m!8031420 () Bool)

(assert (=> bm!679234 m!8031420))

(declare-fun m!8031422 () Bool)

(assert (=> bm!679235 m!8031422))

(assert (=> b!7381560 d!2285701))

(declare-fun b!7381770 () Bool)

(declare-fun e!4418629 () (Set Context!16536))

(declare-fun call!679248 () (Set Context!16536))

(declare-fun call!679245 () (Set Context!16536))

(assert (=> b!7381770 (= e!4418629 (set.union call!679248 call!679245))))

(declare-fun b!7381771 () Bool)

(declare-fun c!1372077 () Bool)

(assert (=> b!7381771 (= c!1372077 (is-Star!19328 (reg!19657 r1!2370)))))

(declare-fun e!4418633 () (Set Context!16536))

(declare-fun e!4418628 () (Set Context!16536))

(assert (=> b!7381771 (= e!4418633 e!4418628)))

(declare-fun b!7381772 () Bool)

(declare-fun call!679247 () (Set Context!16536))

(assert (=> b!7381772 (= e!4418633 call!679247)))

(declare-fun b!7381773 () Bool)

(declare-fun c!1372076 () Bool)

(declare-fun e!4418631 () Bool)

(assert (=> b!7381773 (= c!1372076 e!4418631)))

(declare-fun res!2977283 () Bool)

(assert (=> b!7381773 (=> (not res!2977283) (not e!4418631))))

(assert (=> b!7381773 (= res!2977283 (is-Concat!28173 (reg!19657 r1!2370)))))

(declare-fun e!4418632 () (Set Context!16536))

(assert (=> b!7381773 (= e!4418632 e!4418629)))

(declare-fun b!7381774 () Bool)

(declare-fun e!4418630 () (Set Context!16536))

(assert (=> b!7381774 (= e!4418630 (set.insert lt!2616992 (as set.empty (Set Context!16536))))))

(declare-fun b!7381775 () Bool)

(assert (=> b!7381775 (= e!4418628 call!679247)))

(declare-fun call!679249 () List!71824)

(declare-fun bm!679240 () Bool)

(declare-fun c!1372075 () Bool)

(assert (=> bm!679240 (= call!679249 ($colon$colon!3306 (exprs!8768 lt!2616992) (ite (or c!1372076 c!1372075) (regTwo!39168 (reg!19657 r1!2370)) (reg!19657 r1!2370))))))

(declare-fun call!679246 () (Set Context!16536))

(declare-fun c!1372074 () Bool)

(declare-fun bm!679241 () Bool)

(declare-fun call!679250 () List!71824)

(assert (=> bm!679241 (= call!679246 (derivationStepZipperDown!3154 (ite c!1372074 (regTwo!39169 (reg!19657 r1!2370)) (ite c!1372076 (regTwo!39168 (reg!19657 r1!2370)) (ite c!1372075 (regOne!39168 (reg!19657 r1!2370)) (reg!19657 (reg!19657 r1!2370))))) (ite (or c!1372074 c!1372076) lt!2616992 (Context!16537 call!679250)) c!10362))))

(declare-fun b!7381776 () Bool)

(assert (=> b!7381776 (= e!4418628 (as set.empty (Set Context!16536)))))

(declare-fun bm!679242 () Bool)

(assert (=> bm!679242 (= call!679248 (derivationStepZipperDown!3154 (ite c!1372074 (regOne!39169 (reg!19657 r1!2370)) (regOne!39168 (reg!19657 r1!2370))) (ite c!1372074 lt!2616992 (Context!16537 call!679249)) c!10362))))

(declare-fun d!2285703 () Bool)

(declare-fun c!1372073 () Bool)

(assert (=> d!2285703 (= c!1372073 (and (is-ElementMatch!19328 (reg!19657 r1!2370)) (= (c!1372016 (reg!19657 r1!2370)) c!10362)))))

(assert (=> d!2285703 (= (derivationStepZipperDown!3154 (reg!19657 r1!2370) lt!2616992 c!10362) e!4418630)))

(declare-fun bm!679243 () Bool)

(assert (=> bm!679243 (= call!679247 call!679245)))

(declare-fun b!7381777 () Bool)

(assert (=> b!7381777 (= e!4418631 (nullable!8402 (regOne!39168 (reg!19657 r1!2370))))))

(declare-fun bm!679244 () Bool)

(assert (=> bm!679244 (= call!679250 call!679249)))

(declare-fun b!7381778 () Bool)

(assert (=> b!7381778 (= e!4418632 (set.union call!679248 call!679246))))

(declare-fun b!7381779 () Bool)

(assert (=> b!7381779 (= e!4418629 e!4418633)))

(assert (=> b!7381779 (= c!1372075 (is-Concat!28173 (reg!19657 r1!2370)))))

(declare-fun b!7381780 () Bool)

(assert (=> b!7381780 (= e!4418630 e!4418632)))

(assert (=> b!7381780 (= c!1372074 (is-Union!19328 (reg!19657 r1!2370)))))

(declare-fun bm!679245 () Bool)

(assert (=> bm!679245 (= call!679245 call!679246)))

(assert (= (and d!2285703 c!1372073) b!7381774))

(assert (= (and d!2285703 (not c!1372073)) b!7381780))

(assert (= (and b!7381780 c!1372074) b!7381778))

(assert (= (and b!7381780 (not c!1372074)) b!7381773))

(assert (= (and b!7381773 res!2977283) b!7381777))

(assert (= (and b!7381773 c!1372076) b!7381770))

(assert (= (and b!7381773 (not c!1372076)) b!7381779))

(assert (= (and b!7381779 c!1372075) b!7381772))

(assert (= (and b!7381779 (not c!1372075)) b!7381771))

(assert (= (and b!7381771 c!1372077) b!7381775))

(assert (= (and b!7381771 (not c!1372077)) b!7381776))

(assert (= (or b!7381772 b!7381775) bm!679244))

(assert (= (or b!7381772 b!7381775) bm!679243))

(assert (= (or b!7381770 bm!679243) bm!679245))

(assert (= (or b!7381770 bm!679244) bm!679240))

(assert (= (or b!7381778 bm!679245) bm!679241))

(assert (= (or b!7381778 b!7381770) bm!679242))

(declare-fun m!8031424 () Bool)

(assert (=> b!7381774 m!8031424))

(assert (=> b!7381777 m!8031360))

(declare-fun m!8031426 () Bool)

(assert (=> bm!679242 m!8031426))

(declare-fun m!8031428 () Bool)

(assert (=> bm!679240 m!8031428))

(declare-fun m!8031430 () Bool)

(assert (=> bm!679241 m!8031430))

(assert (=> b!7381550 d!2285703))

(declare-fun d!2285705 () Bool)

(assert (=> d!2285705 (= ($colon$colon!3306 (exprs!8768 ct1!282) lt!2616996) (Cons!71700 lt!2616996 (exprs!8768 ct1!282)))))

(assert (=> b!7381550 d!2285705))

(declare-fun d!2285707 () Bool)

(declare-fun nullableFct!3371 (Regex!19328) Bool)

(assert (=> d!2285707 (= (nullable!8402 (regOne!39168 r1!2370)) (nullableFct!3371 (regOne!39168 r1!2370)))))

(declare-fun bs!1921627 () Bool)

(assert (= bs!1921627 d!2285707))

(declare-fun m!8031432 () Bool)

(assert (=> bs!1921627 m!8031432))

(assert (=> b!7381556 d!2285707))

(declare-fun b!7381781 () Bool)

(declare-fun e!4418638 () Bool)

(declare-fun call!679251 () Bool)

(assert (=> b!7381781 (= e!4418638 call!679251)))

(declare-fun b!7381782 () Bool)

(declare-fun e!4418636 () Bool)

(declare-fun e!4418634 () Bool)

(assert (=> b!7381782 (= e!4418636 e!4418634)))

(declare-fun res!2977287 () Bool)

(assert (=> b!7381782 (=> (not res!2977287) (not e!4418634))))

(declare-fun call!679252 () Bool)

(assert (=> b!7381782 (= res!2977287 call!679252)))

(declare-fun b!7381783 () Bool)

(declare-fun call!679253 () Bool)

(assert (=> b!7381783 (= e!4418634 call!679253)))

(declare-fun d!2285709 () Bool)

(declare-fun res!2977284 () Bool)

(declare-fun e!4418635 () Bool)

(assert (=> d!2285709 (=> res!2977284 e!4418635)))

(assert (=> d!2285709 (= res!2977284 (is-ElementMatch!19328 r1!2370))))

(assert (=> d!2285709 (= (validRegex!9924 r1!2370) e!4418635)))

(declare-fun b!7381784 () Bool)

(declare-fun res!2977285 () Bool)

(assert (=> b!7381784 (=> res!2977285 e!4418636)))

(assert (=> b!7381784 (= res!2977285 (not (is-Concat!28173 r1!2370)))))

(declare-fun e!4418639 () Bool)

(assert (=> b!7381784 (= e!4418639 e!4418636)))

(declare-fun c!1372078 () Bool)

(declare-fun bm!679246 () Bool)

(declare-fun c!1372079 () Bool)

(assert (=> bm!679246 (= call!679251 (validRegex!9924 (ite c!1372079 (reg!19657 r1!2370) (ite c!1372078 (regOne!39169 r1!2370) (regTwo!39168 r1!2370)))))))

(declare-fun bm!679247 () Bool)

(assert (=> bm!679247 (= call!679252 (validRegex!9924 (ite c!1372078 (regTwo!39169 r1!2370) (regOne!39168 r1!2370))))))

(declare-fun b!7381785 () Bool)

(declare-fun e!4418640 () Bool)

(assert (=> b!7381785 (= e!4418640 e!4418638)))

(declare-fun res!2977288 () Bool)

(assert (=> b!7381785 (= res!2977288 (not (nullable!8402 (reg!19657 r1!2370))))))

(assert (=> b!7381785 (=> (not res!2977288) (not e!4418638))))

(declare-fun b!7381786 () Bool)

(declare-fun res!2977286 () Bool)

(declare-fun e!4418637 () Bool)

(assert (=> b!7381786 (=> (not res!2977286) (not e!4418637))))

(assert (=> b!7381786 (= res!2977286 call!679253)))

(assert (=> b!7381786 (= e!4418639 e!4418637)))

(declare-fun b!7381787 () Bool)

(assert (=> b!7381787 (= e!4418637 call!679252)))

(declare-fun b!7381788 () Bool)

(assert (=> b!7381788 (= e!4418640 e!4418639)))

(assert (=> b!7381788 (= c!1372078 (is-Union!19328 r1!2370))))

(declare-fun bm!679248 () Bool)

(assert (=> bm!679248 (= call!679253 call!679251)))

(declare-fun b!7381789 () Bool)

(assert (=> b!7381789 (= e!4418635 e!4418640)))

(assert (=> b!7381789 (= c!1372079 (is-Star!19328 r1!2370))))

(assert (= (and d!2285709 (not res!2977284)) b!7381789))

(assert (= (and b!7381789 c!1372079) b!7381785))

(assert (= (and b!7381789 (not c!1372079)) b!7381788))

(assert (= (and b!7381785 res!2977288) b!7381781))

(assert (= (and b!7381788 c!1372078) b!7381786))

(assert (= (and b!7381788 (not c!1372078)) b!7381784))

(assert (= (and b!7381786 res!2977286) b!7381787))

(assert (= (and b!7381784 (not res!2977285)) b!7381782))

(assert (= (and b!7381782 res!2977287) b!7381783))

(assert (= (or b!7381786 b!7381783) bm!679248))

(assert (= (or b!7381787 b!7381782) bm!679247))

(assert (= (or b!7381781 bm!679248) bm!679246))

(declare-fun m!8031434 () Bool)

(assert (=> bm!679246 m!8031434))

(declare-fun m!8031436 () Bool)

(assert (=> bm!679247 m!8031436))

(declare-fun m!8031438 () Bool)

(assert (=> b!7381785 m!8031438))

(assert (=> start!720090 d!2285709))

(declare-fun bs!1921628 () Bool)

(declare-fun d!2285711 () Bool)

(assert (= bs!1921628 (and d!2285711 b!7381554)))

(declare-fun lambda!458589 () Int)

(assert (=> bs!1921628 (= lambda!458589 lambda!458566)))

(declare-fun bs!1921629 () Bool)

(assert (= bs!1921629 (and d!2285711 d!2285671)))

(assert (=> bs!1921629 (= lambda!458589 lambda!458580)))

(declare-fun bs!1921630 () Bool)

(assert (= bs!1921630 (and d!2285711 d!2285693)))

(assert (=> bs!1921630 (= lambda!458589 lambda!458588)))

(assert (=> d!2285711 (= (inv!91661 cWitness!61) (forall!18114 (exprs!8768 cWitness!61) lambda!458589))))

(declare-fun bs!1921631 () Bool)

(assert (= bs!1921631 d!2285711))

(declare-fun m!8031440 () Bool)

(assert (=> bs!1921631 m!8031440))

(assert (=> start!720090 d!2285711))

(declare-fun bs!1921632 () Bool)

(declare-fun d!2285713 () Bool)

(assert (= bs!1921632 (and d!2285713 b!7381554)))

(declare-fun lambda!458590 () Int)

(assert (=> bs!1921632 (= lambda!458590 lambda!458566)))

(declare-fun bs!1921633 () Bool)

(assert (= bs!1921633 (and d!2285713 d!2285671)))

(assert (=> bs!1921633 (= lambda!458590 lambda!458580)))

(declare-fun bs!1921634 () Bool)

(assert (= bs!1921634 (and d!2285713 d!2285693)))

(assert (=> bs!1921634 (= lambda!458590 lambda!458588)))

(declare-fun bs!1921635 () Bool)

(assert (= bs!1921635 (and d!2285713 d!2285711)))

(assert (=> bs!1921635 (= lambda!458590 lambda!458589)))

(assert (=> d!2285713 (= (inv!91661 ct1!282) (forall!18114 (exprs!8768 ct1!282) lambda!458590))))

(declare-fun bs!1921636 () Bool)

(assert (= bs!1921636 d!2285713))

(declare-fun m!8031442 () Bool)

(assert (=> bs!1921636 m!8031442))

(assert (=> start!720090 d!2285713))

(declare-fun bs!1921637 () Bool)

(declare-fun d!2285715 () Bool)

(assert (= bs!1921637 (and d!2285715 d!2285693)))

(declare-fun lambda!458591 () Int)

(assert (=> bs!1921637 (= lambda!458591 lambda!458588)))

(declare-fun bs!1921638 () Bool)

(assert (= bs!1921638 (and d!2285715 d!2285671)))

(assert (=> bs!1921638 (= lambda!458591 lambda!458580)))

(declare-fun bs!1921639 () Bool)

(assert (= bs!1921639 (and d!2285715 d!2285713)))

(assert (=> bs!1921639 (= lambda!458591 lambda!458590)))

(declare-fun bs!1921640 () Bool)

(assert (= bs!1921640 (and d!2285715 d!2285711)))

(assert (=> bs!1921640 (= lambda!458591 lambda!458589)))

(declare-fun bs!1921641 () Bool)

(assert (= bs!1921641 (and d!2285715 b!7381554)))

(assert (=> bs!1921641 (= lambda!458591 lambda!458566)))

(assert (=> d!2285715 (= (inv!91661 ct2!378) (forall!18114 (exprs!8768 ct2!378) lambda!458591))))

(declare-fun bs!1921642 () Bool)

(assert (= bs!1921642 d!2285715))

(declare-fun m!8031444 () Bool)

(assert (=> bs!1921642 m!8031444))

(assert (=> start!720090 d!2285715))

(declare-fun b!7381800 () Bool)

(declare-fun e!4418643 () Bool)

(assert (=> b!7381800 (= e!4418643 tp_is_empty!48901)))

(declare-fun b!7381802 () Bool)

(declare-fun tp!2099693 () Bool)

(assert (=> b!7381802 (= e!4418643 tp!2099693)))

(declare-fun b!7381801 () Bool)

(declare-fun tp!2099691 () Bool)

(declare-fun tp!2099690 () Bool)

(assert (=> b!7381801 (= e!4418643 (and tp!2099691 tp!2099690))))

(declare-fun b!7381803 () Bool)

(declare-fun tp!2099692 () Bool)

(declare-fun tp!2099694 () Bool)

(assert (=> b!7381803 (= e!4418643 (and tp!2099692 tp!2099694))))

(assert (=> b!7381558 (= tp!2099649 e!4418643)))

(assert (= (and b!7381558 (is-ElementMatch!19328 (regOne!39169 r1!2370))) b!7381800))

(assert (= (and b!7381558 (is-Concat!28173 (regOne!39169 r1!2370))) b!7381801))

(assert (= (and b!7381558 (is-Star!19328 (regOne!39169 r1!2370))) b!7381802))

(assert (= (and b!7381558 (is-Union!19328 (regOne!39169 r1!2370))) b!7381803))

(declare-fun b!7381813 () Bool)

(declare-fun e!4418650 () Bool)

(assert (=> b!7381813 (= e!4418650 tp_is_empty!48901)))

(declare-fun b!7381816 () Bool)

(declare-fun tp!2099698 () Bool)

(assert (=> b!7381816 (= e!4418650 tp!2099698)))

(declare-fun b!7381815 () Bool)

(declare-fun tp!2099696 () Bool)

(declare-fun tp!2099695 () Bool)

(assert (=> b!7381815 (= e!4418650 (and tp!2099696 tp!2099695))))

(declare-fun b!7381818 () Bool)

(declare-fun tp!2099697 () Bool)

(declare-fun tp!2099699 () Bool)

(assert (=> b!7381818 (= e!4418650 (and tp!2099697 tp!2099699))))

(assert (=> b!7381558 (= tp!2099650 e!4418650)))

(assert (= (and b!7381558 (is-ElementMatch!19328 (regTwo!39169 r1!2370))) b!7381813))

(assert (= (and b!7381558 (is-Concat!28173 (regTwo!39169 r1!2370))) b!7381815))

(assert (= (and b!7381558 (is-Star!19328 (regTwo!39169 r1!2370))) b!7381816))

(assert (= (and b!7381558 (is-Union!19328 (regTwo!39169 r1!2370))) b!7381818))

(declare-fun b!7381823 () Bool)

(declare-fun e!4418653 () Bool)

(declare-fun tp!2099704 () Bool)

(declare-fun tp!2099705 () Bool)

(assert (=> b!7381823 (= e!4418653 (and tp!2099704 tp!2099705))))

(assert (=> b!7381563 (= tp!2099654 e!4418653)))

(assert (= (and b!7381563 (is-Cons!71700 (exprs!8768 cWitness!61))) b!7381823))

(declare-fun b!7381824 () Bool)

(declare-fun e!4418654 () Bool)

(assert (=> b!7381824 (= e!4418654 tp_is_empty!48901)))

(declare-fun b!7381826 () Bool)

(declare-fun tp!2099709 () Bool)

(assert (=> b!7381826 (= e!4418654 tp!2099709)))

(declare-fun b!7381825 () Bool)

(declare-fun tp!2099707 () Bool)

(declare-fun tp!2099706 () Bool)

(assert (=> b!7381825 (= e!4418654 (and tp!2099707 tp!2099706))))

(declare-fun b!7381827 () Bool)

(declare-fun tp!2099708 () Bool)

(declare-fun tp!2099710 () Bool)

(assert (=> b!7381827 (= e!4418654 (and tp!2099708 tp!2099710))))

(assert (=> b!7381555 (= tp!2099653 e!4418654)))

(assert (= (and b!7381555 (is-ElementMatch!19328 (reg!19657 r1!2370))) b!7381824))

(assert (= (and b!7381555 (is-Concat!28173 (reg!19657 r1!2370))) b!7381825))

(assert (= (and b!7381555 (is-Star!19328 (reg!19657 r1!2370))) b!7381826))

(assert (= (and b!7381555 (is-Union!19328 (reg!19657 r1!2370))) b!7381827))

(declare-fun b!7381828 () Bool)

(declare-fun e!4418655 () Bool)

(declare-fun tp!2099711 () Bool)

(declare-fun tp!2099712 () Bool)

(assert (=> b!7381828 (= e!4418655 (and tp!2099711 tp!2099712))))

(assert (=> b!7381562 (= tp!2099652 e!4418655)))

(assert (= (and b!7381562 (is-Cons!71700 (exprs!8768 ct1!282))) b!7381828))

(declare-fun b!7381829 () Bool)

(declare-fun e!4418656 () Bool)

(declare-fun tp!2099713 () Bool)

(declare-fun tp!2099714 () Bool)

(assert (=> b!7381829 (= e!4418656 (and tp!2099713 tp!2099714))))

(assert (=> b!7381551 (= tp!2099651 e!4418656)))

(assert (= (and b!7381551 (is-Cons!71700 (exprs!8768 ct2!378))) b!7381829))

(declare-fun b!7381830 () Bool)

(declare-fun e!4418657 () Bool)

(assert (=> b!7381830 (= e!4418657 tp_is_empty!48901)))

(declare-fun b!7381832 () Bool)

(declare-fun tp!2099718 () Bool)

(assert (=> b!7381832 (= e!4418657 tp!2099718)))

(declare-fun b!7381831 () Bool)

(declare-fun tp!2099716 () Bool)

(declare-fun tp!2099715 () Bool)

(assert (=> b!7381831 (= e!4418657 (and tp!2099716 tp!2099715))))

(declare-fun b!7381833 () Bool)

(declare-fun tp!2099717 () Bool)

(declare-fun tp!2099719 () Bool)

(assert (=> b!7381833 (= e!4418657 (and tp!2099717 tp!2099719))))

(assert (=> b!7381552 (= tp!2099648 e!4418657)))

(assert (= (and b!7381552 (is-ElementMatch!19328 (regOne!39168 r1!2370))) b!7381830))

(assert (= (and b!7381552 (is-Concat!28173 (regOne!39168 r1!2370))) b!7381831))

(assert (= (and b!7381552 (is-Star!19328 (regOne!39168 r1!2370))) b!7381832))

(assert (= (and b!7381552 (is-Union!19328 (regOne!39168 r1!2370))) b!7381833))

(declare-fun b!7381834 () Bool)

(declare-fun e!4418658 () Bool)

(assert (=> b!7381834 (= e!4418658 tp_is_empty!48901)))

(declare-fun b!7381836 () Bool)

(declare-fun tp!2099723 () Bool)

(assert (=> b!7381836 (= e!4418658 tp!2099723)))

(declare-fun b!7381835 () Bool)

(declare-fun tp!2099721 () Bool)

(declare-fun tp!2099720 () Bool)

(assert (=> b!7381835 (= e!4418658 (and tp!2099721 tp!2099720))))

(declare-fun b!7381837 () Bool)

(declare-fun tp!2099722 () Bool)

(declare-fun tp!2099724 () Bool)

(assert (=> b!7381837 (= e!4418658 (and tp!2099722 tp!2099724))))

(assert (=> b!7381552 (= tp!2099655 e!4418658)))

(assert (= (and b!7381552 (is-ElementMatch!19328 (regTwo!39168 r1!2370))) b!7381834))

(assert (= (and b!7381552 (is-Concat!28173 (regTwo!39168 r1!2370))) b!7381835))

(assert (= (and b!7381552 (is-Star!19328 (regTwo!39168 r1!2370))) b!7381836))

(assert (= (and b!7381552 (is-Union!19328 (regTwo!39168 r1!2370))) b!7381837))

(push 1)

(assert (not bm!679246))

(assert (not b!7381837))

(assert (not b!7381650))

(assert (not b!7381741))

(assert (not b!7381736))

(assert (not b!7381816))

(assert (not d!2285689))

(assert (not b!7381803))

(assert (not b!7381835))

(assert (not bm!679229))

(assert (not b!7381831))

(assert (not d!2285693))

(assert (not bm!679240))

(assert (not b!7381836))

(assert (not d!2285687))

(assert (not bm!679235))

(assert tp_is_empty!48901)

(assert (not b!7381801))

(assert (not b!7381815))

(assert (not d!2285711))

(assert (not bm!679241))

(assert (not d!2285699))

(assert (not bm!679234))

(assert (not b!7381823))

(assert (not b!7381833))

(assert (not bm!679247))

(assert (not b!7381832))

(assert (not d!2285697))

(assert (not b!7381826))

(assert (not bm!679211))

(assert (not b!7381756))

(assert (not b!7381828))

(assert (not b!7381827))

(assert (not bm!679189))

(assert (not b!7381683))

(assert (not bm!679210))

(assert (not bm!679228))

(assert (not bm!679236))

(assert (not b!7381802))

(assert (not d!2285691))

(assert (not b!7381682))

(assert (not d!2285671))

(assert (not b!7381829))

(assert (not b!7381751))

(assert (not b!7381818))

(assert (not d!2285715))

(assert (not b!7381766))

(assert (not d!2285707))

(assert (not d!2285677))

(assert (not d!2285713))

(assert (not b!7381785))

(assert (not bm!679230))

(assert (not b!7381757))

(assert (not b!7381742))

(assert (not bm!679212))

(assert (not bm!679242))

(assert (not bm!679190))

(assert (not b!7381825))

(assert (not b!7381777))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

