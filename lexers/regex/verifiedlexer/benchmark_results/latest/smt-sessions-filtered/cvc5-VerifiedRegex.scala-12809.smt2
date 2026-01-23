; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!707844 () Bool)

(assert start!707844)

(declare-fun b!7262264 () Bool)

(declare-fun res!2944471 () Bool)

(declare-fun e!4354932 () Bool)

(assert (=> b!7262264 (=> res!2944471 e!4354932)))

(declare-datatypes ((C!37726 0))(
  ( (C!37727 (val!28811 Int)) )
))
(declare-datatypes ((Regex!18726 0))(
  ( (ElementMatch!18726 (c!1351034 C!37726)) (Concat!27571 (regOne!37964 Regex!18726) (regTwo!37964 Regex!18726)) (EmptyExpr!18726) (Star!18726 (reg!19055 Regex!18726)) (EmptyLang!18726) (Union!18726 (regOne!37965 Regex!18726) (regTwo!37965 Regex!18726)) )
))
(declare-datatypes ((List!70757 0))(
  ( (Nil!70633) (Cons!70633 (h!77081 Regex!18726) (t!384823 List!70757)) )
))
(declare-datatypes ((Context!15332 0))(
  ( (Context!15333 (exprs!8166 List!70757)) )
))
(declare-fun lt!2591216 () (Set Context!15332))

(declare-datatypes ((List!70758 0))(
  ( (Nil!70634) (Cons!70634 (h!77082 C!37726) (t!384824 List!70758)) )
))
(declare-fun s!7887 () List!70758)

(declare-fun matchZipper!3630 ((Set Context!15332) List!70758) Bool)

(assert (=> b!7262264 (= res!2944471 (not (matchZipper!3630 lt!2591216 s!7887)))))

(declare-datatypes ((List!70759 0))(
  ( (Nil!70635) (Cons!70635 (h!77083 Context!15332) (t!384825 List!70759)) )
))
(declare-fun zl!1658 () List!70759)

(declare-fun b!7262265 () Bool)

(declare-fun e!4354933 () Bool)

(declare-fun e!4354928 () Bool)

(declare-fun tp!2039532 () Bool)

(declare-fun inv!89826 (Context!15332) Bool)

(assert (=> b!7262265 (= e!4354933 (and (inv!89826 (h!77083 zl!1658)) e!4354928 tp!2039532))))

(declare-fun b!7262266 () Bool)

(declare-fun e!4354931 () Bool)

(assert (=> b!7262266 (= e!4354931 (not e!4354932))))

(declare-fun res!2944473 () Bool)

(assert (=> b!7262266 (=> res!2944473 e!4354932)))

(declare-fun lt!2591218 () Bool)

(declare-fun lt!2591221 () Bool)

(assert (=> b!7262266 (= res!2944473 (or (not lt!2591218) lt!2591221))))

(declare-fun lt!2591217 () Bool)

(assert (=> b!7262266 (= lt!2591217 lt!2591218)))

(declare-fun e!4354930 () Bool)

(assert (=> b!7262266 (= lt!2591218 e!4354930)))

(declare-fun res!2944474 () Bool)

(assert (=> b!7262266 (=> res!2944474 e!4354930)))

(assert (=> b!7262266 (= res!2944474 lt!2591221)))

(declare-fun lt!2591219 () (Set Context!15332))

(assert (=> b!7262266 (= lt!2591217 (matchZipper!3630 (set.union lt!2591219 lt!2591216) s!7887))))

(assert (=> b!7262266 (= lt!2591221 (matchZipper!3630 lt!2591219 s!7887))))

(declare-datatypes ((Unit!164074 0))(
  ( (Unit!164075) )
))
(declare-fun lt!2591220 () Unit!164074)

(declare-fun lemmaZipperConcatMatchesSameAsBothZippers!1767 ((Set Context!15332) (Set Context!15332) List!70758) Unit!164074)

(assert (=> b!7262266 (= lt!2591220 (lemmaZipperConcatMatchesSameAsBothZippers!1767 lt!2591219 lt!2591216 s!7887))))

(declare-fun content!14720 (List!70759) (Set Context!15332))

(assert (=> b!7262266 (= lt!2591216 (content!14720 (t!384825 zl!1658)))))

(assert (=> b!7262266 (= lt!2591219 (set.insert (h!77083 zl!1658) (as set.empty (Set Context!15332))))))

(declare-fun res!2944472 () Bool)

(assert (=> start!707844 (=> (not res!2944472) (not e!4354931))))

(assert (=> start!707844 (= res!2944472 (matchZipper!3630 (content!14720 zl!1658) s!7887))))

(assert (=> start!707844 e!4354931))

(assert (=> start!707844 e!4354933))

(declare-fun e!4354929 () Bool)

(assert (=> start!707844 e!4354929))

(declare-fun b!7262267 () Bool)

(declare-fun res!2944470 () Bool)

(assert (=> b!7262267 (=> (not res!2944470) (not e!4354931))))

(assert (=> b!7262267 (= res!2944470 (is-Cons!70635 zl!1658))))

(declare-fun b!7262268 () Bool)

(declare-fun tp!2039533 () Bool)

(assert (=> b!7262268 (= e!4354928 tp!2039533)))

(declare-fun b!7262269 () Bool)

(assert (=> b!7262269 (= e!4354930 (matchZipper!3630 lt!2591216 s!7887))))

(declare-fun b!7262270 () Bool)

(declare-fun tp_is_empty!46917 () Bool)

(declare-fun tp!2039531 () Bool)

(assert (=> b!7262270 (= e!4354929 (and tp_is_empty!46917 tp!2039531))))

(declare-fun b!7262271 () Bool)

(declare-fun size!41776 (List!70759) Int)

(assert (=> b!7262271 (= e!4354932 (< (size!41776 (t!384825 zl!1658)) (size!41776 zl!1658)))))

(assert (= (and start!707844 res!2944472) b!7262267))

(assert (= (and b!7262267 res!2944470) b!7262266))

(assert (= (and b!7262266 (not res!2944474)) b!7262269))

(assert (= (and b!7262266 (not res!2944473)) b!7262264))

(assert (= (and b!7262264 (not res!2944471)) b!7262271))

(assert (= b!7262265 b!7262268))

(assert (= (and start!707844 (is-Cons!70635 zl!1658)) b!7262265))

(assert (= (and start!707844 (is-Cons!70634 s!7887)) b!7262270))

(declare-fun m!7946798 () Bool)

(assert (=> b!7262269 m!7946798))

(declare-fun m!7946800 () Bool)

(assert (=> b!7262265 m!7946800))

(declare-fun m!7946802 () Bool)

(assert (=> b!7262266 m!7946802))

(declare-fun m!7946804 () Bool)

(assert (=> b!7262266 m!7946804))

(declare-fun m!7946806 () Bool)

(assert (=> b!7262266 m!7946806))

(declare-fun m!7946808 () Bool)

(assert (=> b!7262266 m!7946808))

(declare-fun m!7946810 () Bool)

(assert (=> b!7262266 m!7946810))

(declare-fun m!7946812 () Bool)

(assert (=> start!707844 m!7946812))

(assert (=> start!707844 m!7946812))

(declare-fun m!7946814 () Bool)

(assert (=> start!707844 m!7946814))

(assert (=> b!7262264 m!7946798))

(declare-fun m!7946816 () Bool)

(assert (=> b!7262271 m!7946816))

(declare-fun m!7946818 () Bool)

(assert (=> b!7262271 m!7946818))

(push 1)

(assert (not b!7262264))

(assert (not start!707844))

(assert (not b!7262270))

(assert tp_is_empty!46917)

(assert (not b!7262265))

(assert (not b!7262266))

(assert (not b!7262268))

(assert (not b!7262269))

(assert (not b!7262271))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!2259292 () Bool)

(declare-fun c!1351046 () Bool)

(declare-fun isEmpty!40619 (List!70758) Bool)

(assert (=> d!2259292 (= c!1351046 (isEmpty!40619 s!7887))))

(declare-fun e!4354962 () Bool)

(assert (=> d!2259292 (= (matchZipper!3630 (set.union lt!2591219 lt!2591216) s!7887) e!4354962)))

(declare-fun b!7262316 () Bool)

(declare-fun nullableZipper!2953 ((Set Context!15332)) Bool)

(assert (=> b!7262316 (= e!4354962 (nullableZipper!2953 (set.union lt!2591219 lt!2591216)))))

(declare-fun b!7262317 () Bool)

(declare-fun derivationStepZipper!3479 ((Set Context!15332) C!37726) (Set Context!15332))

(declare-fun head!14952 (List!70758) C!37726)

(declare-fun tail!14411 (List!70758) List!70758)

(assert (=> b!7262317 (= e!4354962 (matchZipper!3630 (derivationStepZipper!3479 (set.union lt!2591219 lt!2591216) (head!14952 s!7887)) (tail!14411 s!7887)))))

(assert (= (and d!2259292 c!1351046) b!7262316))

(assert (= (and d!2259292 (not c!1351046)) b!7262317))

(declare-fun m!7946854 () Bool)

(assert (=> d!2259292 m!7946854))

(declare-fun m!7946856 () Bool)

(assert (=> b!7262316 m!7946856))

(declare-fun m!7946858 () Bool)

(assert (=> b!7262317 m!7946858))

(assert (=> b!7262317 m!7946858))

(declare-fun m!7946860 () Bool)

(assert (=> b!7262317 m!7946860))

(declare-fun m!7946862 () Bool)

(assert (=> b!7262317 m!7946862))

(assert (=> b!7262317 m!7946860))

(assert (=> b!7262317 m!7946862))

(declare-fun m!7946864 () Bool)

(assert (=> b!7262317 m!7946864))

(assert (=> b!7262266 d!2259292))

(declare-fun d!2259298 () Bool)

(declare-fun c!1351047 () Bool)

(assert (=> d!2259298 (= c!1351047 (isEmpty!40619 s!7887))))

(declare-fun e!4354963 () Bool)

(assert (=> d!2259298 (= (matchZipper!3630 lt!2591219 s!7887) e!4354963)))

(declare-fun b!7262318 () Bool)

(assert (=> b!7262318 (= e!4354963 (nullableZipper!2953 lt!2591219))))

(declare-fun b!7262319 () Bool)

(assert (=> b!7262319 (= e!4354963 (matchZipper!3630 (derivationStepZipper!3479 lt!2591219 (head!14952 s!7887)) (tail!14411 s!7887)))))

(assert (= (and d!2259298 c!1351047) b!7262318))

(assert (= (and d!2259298 (not c!1351047)) b!7262319))

(assert (=> d!2259298 m!7946854))

(declare-fun m!7946866 () Bool)

(assert (=> b!7262318 m!7946866))

(assert (=> b!7262319 m!7946858))

(assert (=> b!7262319 m!7946858))

(declare-fun m!7946868 () Bool)

(assert (=> b!7262319 m!7946868))

(assert (=> b!7262319 m!7946862))

(assert (=> b!7262319 m!7946868))

(assert (=> b!7262319 m!7946862))

(declare-fun m!7946870 () Bool)

(assert (=> b!7262319 m!7946870))

(assert (=> b!7262266 d!2259298))

(declare-fun d!2259300 () Bool)

(declare-fun e!4354969 () Bool)

(assert (=> d!2259300 (= (matchZipper!3630 (set.union lt!2591219 lt!2591216) s!7887) e!4354969)))

(declare-fun res!2944492 () Bool)

(assert (=> d!2259300 (=> res!2944492 e!4354969)))

(assert (=> d!2259300 (= res!2944492 (matchZipper!3630 lt!2591219 s!7887))))

(declare-fun lt!2591246 () Unit!164074)

(declare-fun choose!56241 ((Set Context!15332) (Set Context!15332) List!70758) Unit!164074)

(assert (=> d!2259300 (= lt!2591246 (choose!56241 lt!2591219 lt!2591216 s!7887))))

(assert (=> d!2259300 (= (lemmaZipperConcatMatchesSameAsBothZippers!1767 lt!2591219 lt!2591216 s!7887) lt!2591246)))

(declare-fun b!7262328 () Bool)

(assert (=> b!7262328 (= e!4354969 (matchZipper!3630 lt!2591216 s!7887))))

(assert (= (and d!2259300 (not res!2944492)) b!7262328))

(assert (=> d!2259300 m!7946808))

(assert (=> d!2259300 m!7946804))

(declare-fun m!7946880 () Bool)

(assert (=> d!2259300 m!7946880))

(assert (=> b!7262328 m!7946798))

(assert (=> b!7262266 d!2259300))

(declare-fun d!2259308 () Bool)

(declare-fun c!1351053 () Bool)

(assert (=> d!2259308 (= c!1351053 (is-Nil!70635 (t!384825 zl!1658)))))

(declare-fun e!4354972 () (Set Context!15332))

(assert (=> d!2259308 (= (content!14720 (t!384825 zl!1658)) e!4354972)))

(declare-fun b!7262333 () Bool)

(assert (=> b!7262333 (= e!4354972 (as set.empty (Set Context!15332)))))

(declare-fun b!7262334 () Bool)

(assert (=> b!7262334 (= e!4354972 (set.union (set.insert (h!77083 (t!384825 zl!1658)) (as set.empty (Set Context!15332))) (content!14720 (t!384825 (t!384825 zl!1658)))))))

(assert (= (and d!2259308 c!1351053) b!7262333))

(assert (= (and d!2259308 (not c!1351053)) b!7262334))

(declare-fun m!7946882 () Bool)

(assert (=> b!7262334 m!7946882))

(declare-fun m!7946884 () Bool)

(assert (=> b!7262334 m!7946884))

(assert (=> b!7262266 d!2259308))

(declare-fun d!2259310 () Bool)

(declare-fun lt!2591249 () Int)

(assert (=> d!2259310 (>= lt!2591249 0)))

(declare-fun e!4354975 () Int)

(assert (=> d!2259310 (= lt!2591249 e!4354975)))

(declare-fun c!1351056 () Bool)

(assert (=> d!2259310 (= c!1351056 (is-Nil!70635 (t!384825 zl!1658)))))

(assert (=> d!2259310 (= (size!41776 (t!384825 zl!1658)) lt!2591249)))

(declare-fun b!7262339 () Bool)

(assert (=> b!7262339 (= e!4354975 0)))

(declare-fun b!7262340 () Bool)

(assert (=> b!7262340 (= e!4354975 (+ 1 (size!41776 (t!384825 (t!384825 zl!1658)))))))

(assert (= (and d!2259310 c!1351056) b!7262339))

(assert (= (and d!2259310 (not c!1351056)) b!7262340))

(declare-fun m!7946886 () Bool)

(assert (=> b!7262340 m!7946886))

(assert (=> b!7262271 d!2259310))

(declare-fun d!2259312 () Bool)

(declare-fun lt!2591250 () Int)

(assert (=> d!2259312 (>= lt!2591250 0)))

(declare-fun e!4354976 () Int)

(assert (=> d!2259312 (= lt!2591250 e!4354976)))

(declare-fun c!1351057 () Bool)

(assert (=> d!2259312 (= c!1351057 (is-Nil!70635 zl!1658))))

(assert (=> d!2259312 (= (size!41776 zl!1658) lt!2591250)))

(declare-fun b!7262341 () Bool)

(assert (=> b!7262341 (= e!4354976 0)))

(declare-fun b!7262342 () Bool)

(assert (=> b!7262342 (= e!4354976 (+ 1 (size!41776 (t!384825 zl!1658))))))

(assert (= (and d!2259312 c!1351057) b!7262341))

(assert (= (and d!2259312 (not c!1351057)) b!7262342))

(assert (=> b!7262342 m!7946816))

(assert (=> b!7262271 d!2259312))

(declare-fun d!2259314 () Bool)

(declare-fun c!1351058 () Bool)

(assert (=> d!2259314 (= c!1351058 (isEmpty!40619 s!7887))))

(declare-fun e!4354977 () Bool)

(assert (=> d!2259314 (= (matchZipper!3630 lt!2591216 s!7887) e!4354977)))

(declare-fun b!7262343 () Bool)

(assert (=> b!7262343 (= e!4354977 (nullableZipper!2953 lt!2591216))))

(declare-fun b!7262344 () Bool)

(assert (=> b!7262344 (= e!4354977 (matchZipper!3630 (derivationStepZipper!3479 lt!2591216 (head!14952 s!7887)) (tail!14411 s!7887)))))

(assert (= (and d!2259314 c!1351058) b!7262343))

(assert (= (and d!2259314 (not c!1351058)) b!7262344))

(assert (=> d!2259314 m!7946854))

(declare-fun m!7946888 () Bool)

(assert (=> b!7262343 m!7946888))

(assert (=> b!7262344 m!7946858))

(assert (=> b!7262344 m!7946858))

(declare-fun m!7946890 () Bool)

(assert (=> b!7262344 m!7946890))

(assert (=> b!7262344 m!7946862))

(assert (=> b!7262344 m!7946890))

(assert (=> b!7262344 m!7946862))

(declare-fun m!7946892 () Bool)

(assert (=> b!7262344 m!7946892))

(assert (=> b!7262264 d!2259314))

(assert (=> b!7262269 d!2259314))

(declare-fun d!2259316 () Bool)

(declare-fun c!1351059 () Bool)

(assert (=> d!2259316 (= c!1351059 (isEmpty!40619 s!7887))))

(declare-fun e!4354978 () Bool)

(assert (=> d!2259316 (= (matchZipper!3630 (content!14720 zl!1658) s!7887) e!4354978)))

(declare-fun b!7262345 () Bool)

(assert (=> b!7262345 (= e!4354978 (nullableZipper!2953 (content!14720 zl!1658)))))

(declare-fun b!7262346 () Bool)

(assert (=> b!7262346 (= e!4354978 (matchZipper!3630 (derivationStepZipper!3479 (content!14720 zl!1658) (head!14952 s!7887)) (tail!14411 s!7887)))))

(assert (= (and d!2259316 c!1351059) b!7262345))

(assert (= (and d!2259316 (not c!1351059)) b!7262346))

(assert (=> d!2259316 m!7946854))

(assert (=> b!7262345 m!7946812))

(declare-fun m!7946894 () Bool)

(assert (=> b!7262345 m!7946894))

(assert (=> b!7262346 m!7946858))

(assert (=> b!7262346 m!7946812))

(assert (=> b!7262346 m!7946858))

(declare-fun m!7946896 () Bool)

(assert (=> b!7262346 m!7946896))

(assert (=> b!7262346 m!7946862))

(assert (=> b!7262346 m!7946896))

(assert (=> b!7262346 m!7946862))

(declare-fun m!7946898 () Bool)

(assert (=> b!7262346 m!7946898))

(assert (=> start!707844 d!2259316))

(declare-fun d!2259318 () Bool)

(declare-fun c!1351060 () Bool)

(assert (=> d!2259318 (= c!1351060 (is-Nil!70635 zl!1658))))

(declare-fun e!4354979 () (Set Context!15332))

(assert (=> d!2259318 (= (content!14720 zl!1658) e!4354979)))

(declare-fun b!7262347 () Bool)

(assert (=> b!7262347 (= e!4354979 (as set.empty (Set Context!15332)))))

(declare-fun b!7262348 () Bool)

(assert (=> b!7262348 (= e!4354979 (set.union (set.insert (h!77083 zl!1658) (as set.empty (Set Context!15332))) (content!14720 (t!384825 zl!1658))))))

(assert (= (and d!2259318 c!1351060) b!7262347))

(assert (= (and d!2259318 (not c!1351060)) b!7262348))

(assert (=> b!7262348 m!7946802))

(assert (=> b!7262348 m!7946806))

(assert (=> start!707844 d!2259318))

(declare-fun d!2259320 () Bool)

(declare-fun lambda!446754 () Int)

(declare-fun forall!17567 (List!70757 Int) Bool)

(assert (=> d!2259320 (= (inv!89826 (h!77083 zl!1658)) (forall!17567 (exprs!8166 (h!77083 zl!1658)) lambda!446754))))

(declare-fun bs!1909507 () Bool)

(assert (= bs!1909507 d!2259320))

(declare-fun m!7946900 () Bool)

(assert (=> bs!1909507 m!7946900))

(assert (=> b!7262265 d!2259320))

(declare-fun b!7262353 () Bool)

(declare-fun e!4354982 () Bool)

(declare-fun tp!2039547 () Bool)

(declare-fun tp!2039548 () Bool)

(assert (=> b!7262353 (= e!4354982 (and tp!2039547 tp!2039548))))

(assert (=> b!7262268 (= tp!2039533 e!4354982)))

(assert (= (and b!7262268 (is-Cons!70633 (exprs!8166 (h!77083 zl!1658)))) b!7262353))

(declare-fun b!7262361 () Bool)

(declare-fun e!4354988 () Bool)

(declare-fun tp!2039553 () Bool)

(assert (=> b!7262361 (= e!4354988 tp!2039553)))

(declare-fun e!4354987 () Bool)

(declare-fun tp!2039554 () Bool)

(declare-fun b!7262360 () Bool)

(assert (=> b!7262360 (= e!4354987 (and (inv!89826 (h!77083 (t!384825 zl!1658))) e!4354988 tp!2039554))))

(assert (=> b!7262265 (= tp!2039532 e!4354987)))

(assert (= b!7262360 b!7262361))

(assert (= (and b!7262265 (is-Cons!70635 (t!384825 zl!1658))) b!7262360))

(declare-fun m!7946902 () Bool)

(assert (=> b!7262360 m!7946902))

(declare-fun b!7262366 () Bool)

(declare-fun e!4354991 () Bool)

(declare-fun tp!2039557 () Bool)

(assert (=> b!7262366 (= e!4354991 (and tp_is_empty!46917 tp!2039557))))

(assert (=> b!7262270 (= tp!2039531 e!4354991)))

(assert (= (and b!7262270 (is-Cons!70634 (t!384824 s!7887))) b!7262366))

(push 1)

(assert (not b!7262319))

(assert (not d!2259320))

(assert (not b!7262328))

(assert (not b!7262346))

(assert (not b!7262318))

(assert (not b!7262343))

(assert (not b!7262353))

(assert (not b!7262317))

(assert (not b!7262344))

(assert (not b!7262334))

(assert (not b!7262342))

(assert (not b!7262340))

(assert tp_is_empty!46917)

(assert (not b!7262345))

(assert (not b!7262366))

(assert (not d!2259314))

(assert (not d!2259300))

(assert (not b!7262316))

(assert (not b!7262348))

(assert (not d!2259316))

(assert (not b!7262361))

(assert (not d!2259298))

(assert (not d!2259292))

(assert (not b!7262360))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

