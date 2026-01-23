; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!722996 () Bool)

(assert start!722996)

(declare-fun b!7445247 () Bool)

(assert (=> b!7445247 true))

(declare-fun b!7445245 () Bool)

(declare-fun e!4445252 () Bool)

(declare-fun tp!2154573 () Bool)

(assert (=> b!7445245 (= e!4445252 tp!2154573)))

(declare-fun b!7445246 () Bool)

(declare-fun e!4445251 () Bool)

(declare-fun tp_is_empty!49191 () Bool)

(declare-fun tp!2154572 () Bool)

(assert (=> b!7445246 (= e!4445251 (and tp_is_empty!49191 tp!2154572))))

(declare-fun e!4445250 () Bool)

(declare-datatypes ((C!39206 0))(
  ( (C!39207 (val!29977 Int)) )
))
(declare-datatypes ((List!72160 0))(
  ( (Nil!72036) (Cons!72036 (h!78484 C!39206) (t!386725 List!72160)) )
))
(declare-fun s!7951 () List!72160)

(declare-fun size!42184 (List!72160) Int)

(assert (=> b!7445247 (= e!4445250 (not (< (size!42184 (t!386725 s!7951)) (size!42184 s!7951))))))

(declare-datatypes ((Regex!19466 0))(
  ( (ElementMatch!19466 (c!1377395 C!39206)) (Concat!28311 (regOne!39444 Regex!19466) (regTwo!39444 Regex!19466)) (EmptyExpr!19466) (Star!19466 (reg!19795 Regex!19466)) (EmptyLang!19466) (Union!19466 (regOne!39445 Regex!19466) (regTwo!39445 Regex!19466)) )
))
(declare-datatypes ((List!72161 0))(
  ( (Nil!72037) (Cons!72037 (h!78485 Regex!19466) (t!386726 List!72161)) )
))
(declare-datatypes ((Context!16812 0))(
  ( (Context!16813 (exprs!8906 List!72161)) )
))
(declare-fun z!3503 () (Set Context!16812))

(declare-fun lambda!460572 () Int)

(declare-fun flatMap!3242 ((Set Context!16812) Int) (Set Context!16812))

(assert (=> b!7445247 (= (flatMap!3242 z!3503 lambda!460572) (as set.empty (Set Context!16812)))))

(declare-datatypes ((Unit!165775 0))(
  ( (Unit!165776) )
))
(declare-fun lt!2619522 () Unit!165775)

(declare-fun lemmaFlatMapOnEmptySetIsEmpty!15 ((Set Context!16812) Int) Unit!165775)

(assert (=> b!7445247 (= lt!2619522 (lemmaFlatMapOnEmptySetIsEmpty!15 z!3503 lambda!460572))))

(declare-fun setIsEmpty!56672 () Bool)

(declare-fun setRes!56672 () Bool)

(assert (=> setIsEmpty!56672 setRes!56672))

(declare-fun tp!2154571 () Bool)

(declare-fun setElem!56672 () Context!16812)

(declare-fun setNonEmpty!56672 () Bool)

(declare-fun inv!92027 (Context!16812) Bool)

(assert (=> setNonEmpty!56672 (= setRes!56672 (and tp!2154571 (inv!92027 setElem!56672) e!4445252))))

(declare-fun setRest!56672 () (Set Context!16812))

(assert (=> setNonEmpty!56672 (= z!3503 (set.union (set.insert setElem!56672 (as set.empty (Set Context!16812))) setRest!56672))))

(declare-fun res!2987168 () Bool)

(assert (=> start!722996 (=> (not res!2987168) (not e!4445250))))

(assert (=> start!722996 (= res!2987168 (and (= z!3503 (as set.empty (Set Context!16812))) (is-Cons!72036 s!7951)))))

(assert (=> start!722996 e!4445250))

(declare-fun condSetEmpty!56672 () Bool)

(assert (=> start!722996 (= condSetEmpty!56672 (= z!3503 (as set.empty (Set Context!16812))))))

(assert (=> start!722996 setRes!56672))

(assert (=> start!722996 e!4445251))

(assert (= (and start!722996 res!2987168) b!7445247))

(assert (= (and start!722996 condSetEmpty!56672) setIsEmpty!56672))

(assert (= (and start!722996 (not condSetEmpty!56672)) setNonEmpty!56672))

(assert (= setNonEmpty!56672 b!7445245))

(assert (= (and start!722996 (is-Cons!72036 s!7951)) b!7445246))

(declare-fun m!8054838 () Bool)

(assert (=> b!7445247 m!8054838))

(declare-fun m!8054840 () Bool)

(assert (=> b!7445247 m!8054840))

(declare-fun m!8054842 () Bool)

(assert (=> b!7445247 m!8054842))

(declare-fun m!8054844 () Bool)

(assert (=> b!7445247 m!8054844))

(declare-fun m!8054846 () Bool)

(assert (=> setNonEmpty!56672 m!8054846))

(push 1)

(assert (not b!7445246))

(assert (not b!7445245))

(assert (not setNonEmpty!56672))

(assert tp_is_empty!49191)

(assert (not b!7445247))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!2296253 () Bool)

(declare-fun lambda!460578 () Int)

(declare-fun forall!18240 (List!72161 Int) Bool)

(assert (=> d!2296253 (= (inv!92027 setElem!56672) (forall!18240 (exprs!8906 setElem!56672) lambda!460578))))

(declare-fun bs!1926620 () Bool)

(assert (= bs!1926620 d!2296253))

(declare-fun m!8054858 () Bool)

(assert (=> bs!1926620 m!8054858))

(assert (=> setNonEmpty!56672 d!2296253))

(declare-fun d!2296257 () Bool)

(declare-fun lt!2619528 () Int)

(assert (=> d!2296257 (>= lt!2619528 0)))

(declare-fun e!4445264 () Int)

(assert (=> d!2296257 (= lt!2619528 e!4445264)))

(declare-fun c!1377401 () Bool)

(assert (=> d!2296257 (= c!1377401 (is-Nil!72036 (t!386725 s!7951)))))

(assert (=> d!2296257 (= (size!42184 (t!386725 s!7951)) lt!2619528)))

(declare-fun b!7445265 () Bool)

(assert (=> b!7445265 (= e!4445264 0)))

(declare-fun b!7445266 () Bool)

(assert (=> b!7445266 (= e!4445264 (+ 1 (size!42184 (t!386725 (t!386725 s!7951)))))))

(assert (= (and d!2296257 c!1377401) b!7445265))

(assert (= (and d!2296257 (not c!1377401)) b!7445266))

(declare-fun m!8054860 () Bool)

(assert (=> b!7445266 m!8054860))

(assert (=> b!7445247 d!2296257))

(declare-fun d!2296259 () Bool)

(declare-fun lt!2619529 () Int)

(assert (=> d!2296259 (>= lt!2619529 0)))

(declare-fun e!4445265 () Int)

(assert (=> d!2296259 (= lt!2619529 e!4445265)))

(declare-fun c!1377402 () Bool)

(assert (=> d!2296259 (= c!1377402 (is-Nil!72036 s!7951))))

(assert (=> d!2296259 (= (size!42184 s!7951) lt!2619529)))

(declare-fun b!7445267 () Bool)

(assert (=> b!7445267 (= e!4445265 0)))

(declare-fun b!7445268 () Bool)

(assert (=> b!7445268 (= e!4445265 (+ 1 (size!42184 (t!386725 s!7951))))))

(assert (= (and d!2296259 c!1377402) b!7445267))

(assert (= (and d!2296259 (not c!1377402)) b!7445268))

(assert (=> b!7445268 m!8054838))

(assert (=> b!7445247 d!2296259))

(declare-fun d!2296261 () Bool)

(declare-fun choose!57539 ((Set Context!16812) Int) (Set Context!16812))

(assert (=> d!2296261 (= (flatMap!3242 z!3503 lambda!460572) (choose!57539 z!3503 lambda!460572))))

(declare-fun bs!1926621 () Bool)

(assert (= bs!1926621 d!2296261))

(declare-fun m!8054862 () Bool)

(assert (=> bs!1926621 m!8054862))

(assert (=> b!7445247 d!2296261))

(declare-fun d!2296263 () Bool)

(assert (=> d!2296263 (= (flatMap!3242 z!3503 lambda!460572) (as set.empty (Set Context!16812)))))

(declare-fun lt!2619532 () Unit!165775)

(declare-fun choose!57540 ((Set Context!16812) Int) Unit!165775)

(assert (=> d!2296263 (= lt!2619532 (choose!57540 z!3503 lambda!460572))))

(assert (=> d!2296263 (= z!3503 (as set.empty (Set Context!16812)))))

(assert (=> d!2296263 (= (lemmaFlatMapOnEmptySetIsEmpty!15 z!3503 lambda!460572) lt!2619532)))

(declare-fun bs!1926622 () Bool)

(assert (= bs!1926622 d!2296263))

(assert (=> bs!1926622 m!8054842))

(declare-fun m!8054864 () Bool)

(assert (=> bs!1926622 m!8054864))

(assert (=> b!7445247 d!2296263))

(declare-fun condSetEmpty!56678 () Bool)

(assert (=> setNonEmpty!56672 (= condSetEmpty!56678 (= setRest!56672 (as set.empty (Set Context!16812))))))

(declare-fun setRes!56678 () Bool)

(assert (=> setNonEmpty!56672 (= tp!2154571 setRes!56678)))

(declare-fun setIsEmpty!56678 () Bool)

(assert (=> setIsEmpty!56678 setRes!56678))

(declare-fun setNonEmpty!56678 () Bool)

(declare-fun e!4445268 () Bool)

(declare-fun tp!2154587 () Bool)

(declare-fun setElem!56678 () Context!16812)

(assert (=> setNonEmpty!56678 (= setRes!56678 (and tp!2154587 (inv!92027 setElem!56678) e!4445268))))

(declare-fun setRest!56678 () (Set Context!16812))

(assert (=> setNonEmpty!56678 (= setRest!56672 (set.union (set.insert setElem!56678 (as set.empty (Set Context!16812))) setRest!56678))))

(declare-fun b!7445273 () Bool)

(declare-fun tp!2154588 () Bool)

(assert (=> b!7445273 (= e!4445268 tp!2154588)))

(assert (= (and setNonEmpty!56672 condSetEmpty!56678) setIsEmpty!56678))

(assert (= (and setNonEmpty!56672 (not condSetEmpty!56678)) setNonEmpty!56678))

(assert (= setNonEmpty!56678 b!7445273))

(declare-fun m!8054866 () Bool)

(assert (=> setNonEmpty!56678 m!8054866))

(declare-fun b!7445278 () Bool)

(declare-fun e!4445271 () Bool)

(declare-fun tp!2154593 () Bool)

(declare-fun tp!2154594 () Bool)

(assert (=> b!7445278 (= e!4445271 (and tp!2154593 tp!2154594))))

(assert (=> b!7445245 (= tp!2154573 e!4445271)))

(assert (= (and b!7445245 (is-Cons!72037 (exprs!8906 setElem!56672))) b!7445278))

(declare-fun b!7445283 () Bool)

(declare-fun e!4445274 () Bool)

(declare-fun tp!2154597 () Bool)

(assert (=> b!7445283 (= e!4445274 (and tp_is_empty!49191 tp!2154597))))

(assert (=> b!7445246 (= tp!2154572 e!4445274)))

(assert (= (and b!7445246 (is-Cons!72036 (t!386725 s!7951))) b!7445283))

(push 1)

(assert (not b!7445278))

(assert tp_is_empty!49191)

(assert (not b!7445268))

(assert (not b!7445273))

(assert (not d!2296253))

(assert (not b!7445266))

(assert (not d!2296261))

(assert (not d!2296263))

(assert (not setNonEmpty!56678))

(assert (not b!7445283))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

